#include "archive.hpp"
#include "archiveconfig.hpp"
#include "compression.hpp"

#include <cstdlib>
#include <cstdint>
#include <cstring>
#include <string>
#include <filesystem>
#include <zlib.h>
#include <regex>

#define ALIGN(size, align) (((size) + (align) - 1) & ~((align) - 1))

static bool read_file(const char *path, void **dst, size_t *outSize)
{
    FILE *file = fopen(path, "rb");
    if (file == NULL) {
        return false;
    }

    fseek(file, 0, SEEK_END);
    size_t size = ftell(file);
    fseek(file, 0, SEEK_SET);

    *dst = malloc(size);
    if (!*dst) {
        return false;
    }
    fread(*dst, size, 1, file);

    fclose(file);

    if (outSize) {
        *outSize = size;
    }

    return true;
}

static bool write_file(const char *path, void *data, size_t size)
{
    FILE *out = fopen(path, "wb");
    if (out == NULL) {
        return false;
    }
    
    fwrite(data, size, 1, out);
    
    fclose(out);
    return true;
}

static void print_hex(unsigned char *data, size_t size)
{
    printf("size: %04lX\n", size);
    for (size_t i = 0, j = 0; i < size; i++, j++) {
        if (j == 0) {
            printf("0x%08lX: ", i);
        }
        if (j == 16) {
            printf("\n0x%08lX: ", i);
            j = 0;
        }
        printf("%02X ", data[i]);
    }
}

static uint32_t calc_crc32(void *data, size_t size)
{
    uint32_t crc = crc32(0L, Z_NULL, 0);
    return crc32(crc, static_cast<const Bytef *>(data), size);
}

namespace Archive {

static const Config *config = NULL;

static bool inline IsCompressed(const char *filename) {
    return (filename[strlen(filename) - 1] == '_');
}

uint32_t HashDefault(PackBinary *unused, const char *filename)
{
    char *name = new char[128];
    uint32_t hash = -1;

    for (size_t i = 0; i < 128; i++) {
        char c = *filename++;

        name[i] = tolower(c);

        if (c == '\0') {
            hash = calc_crc32(name, i);
            break;
        }
    }

    delete name;
    return hash;
}

uint32_t HashMapName(PackBinary *pack, const char *filename)
{
    if (!filename) {
        return -1;
    }
    if (!pack->pkh) {
        return -1;
    }
    if (!strrchr(filename, '.')) {
        return -1;
    }

    char *name = new char[16];
    if (strncmp(filename, "mv", 2) == 0) {
        strncpy(name, filename + 2, 5);
    }
    else if (strncmp(filename, "mf", 2) == 0) {
        filename += 2;
        strncpy(name, filename, strrchr(filename, '.') - filename);
    }
    else {
        if (strncmp(filename, "ball", 4) == 0) {
            filename += 4;
        }
        else if (strncmp(filename, "bal", 3) == 0) {
            filename += 3;
        }
        else if (strncmp(filename, "mo", 2) == 0) {
            filename += 2;
        }
        else if (strncmp(filename, "gol", 3) == 0) {
            filename += 3;
        }
        else {
            delete name;
            return HashDefault(NULL, filename);
        }
        strncpy(name, filename, strrchr(filename, '.') - filename);

        delete name;
        return atoi(name);
    }

    size_t len = strlen(name);
    size_t maxNameLen = static_cast<PackBinary::Header *>(pack->pkh)->maxNameLen;
    if (len > maxNameLen) {
        delete name;
        return -1;
    }

    uint32_t mask = static_cast<PackBinary::Header *>(pack->pkh)->mask;
    uint32_t result = 0;

    for (size_t i = 0; i < maxNameLen; i++) {
        if (i < len) {
            if (mask & 1) {
                result = result * 36;
            } else {
                result = result * 10;
            }

            char c = *name;

            int digit;
            if ((c >= '0') && (c <= '9')) {
                digit = c - '0';
                result += digit;
            } else if ((c >= 'a') && (c <= 'z')) {
                digit = (c - 'a') + 10;
                result += digit;
            } else if ((c >= 'A') && (c <= 'Z')) {
                digit = (c - 'A') + 10;
                result += digit;
            } else {
                digit = 0;
            }

            name++;
        }

        mask >>= 1;
    }

    delete name;
    return result;
}

bool PackBinary::GetConfig(void)
{
    this->count = 0;
    
    for (size_t i = 0; i < countof(configs); i++) {
        if (strcmp(configs[i].name, this->name) == 0) {
            config = &configs[i];
            this->type = config->type;
            if (config->filenames) {
                for (size_t j = 0; config->filenames[j].name != NULL; j++) {
                    this->count++;
                }
            } else {
                this->count = 0;
            }
            return true;
        }
    }

    return false;
}

char *PackBinary::GetExtension(void)
{
    char *extension = new char[8];

    if (config->format) {
        if (strrchr(config->format, '.')) {
            strcpy(extension, strrchr(config->format, '.'));
            return extension;
        }
    }

    delete extension;
    return NULL;
}

char *PackBinary::GetName(uint32_t code)
{
    char *filename = new char[128];

    if (config->func) {
        for (size_t i = 0; config->filenames[i].name != NULL; i++) {
            if (config->func(this, config->filenames[i].name) == code) {
                strcpy(filename, config->filenames[i].name);
                return filename;
            }
        }

        delete filename;
        return NULL;
    }

    sprintf(filename, config->format, this->name, code);

    return filename;
}

uint32_t PackBinary::GetCode(const char *filename)
{
    if (config->func) {
        return config->func(this, filename);
    }

    char *temp = new char[128];
    const char *extension = strrchr(filename, '.');
    size_t size;
    if (extension) {
        size = extension - filename;
    } else {
        size = strlen(filename);
    }
    strncpy(temp, &filename[strlen(this->name)], size);
    uint32_t code = atoi(temp);
    delete temp;

    return code;
}

size_t PackBinary::GetHeaderSize(void)
{
    switch (this->type) {
    case PACK_TYPE_COS:
    case PACK_TYPE_CO:
    case PACK_TYPE_CS:
    case PACK_TYPE_C:
        return sizeof(Header);
    case PACK_TYPE_HOSC:
        return 0;
    default:
        return -1;
    }
}

size_t PackBinary::GetHeaderEntrySize(void)
{
    switch (this->type) {
    case PACK_TYPE_COS:
        return sizeof(HeaderEntry_COS);
    case PACK_TYPE_CO:
        return sizeof(HeaderEntry_CO);
    case PACK_TYPE_CS:
        return sizeof(HeaderEntry_CS);
    case PACK_TYPE_C:
        return sizeof(HeaderEntry_C);
    case PACK_TYPE_HOSC:
        return sizeof(HeaderEntry_HOSC);
    default:
        return 0;
    }
}

bool PackBinary::Check(void)
{
    if (this->type == PACK_TYPE_HOSC) {
        if (this->count != (this->pkhSize / sizeof(HeaderEntry_HOSC))) {
            return false;
        }
    } else {
        if (this->count <= 0) {
            this->count = static_cast<Header *>(this->pkh)->entryCount;
        }

        if (this->type != static_cast<Header *>(this->pkh)->type) {
            return false;
        }
        if (strncmp(static_cast<Header *>(this->pkh)->packNum, "PackNum 20080626", sizeof(Header::packNum)) != 0) {
            return false;
        }
        if (ALIGN(sizeof(Header) + this->GetHeaderEntrySize() * this->count, 16) != this->pkhSize) {
            return false;
        }
    }

    void *headerEntryStart = static_cast<uint8_t *>(this->pkh) + this->GetHeaderSize();
    size_t maxSize = 0;
    size_t maxOffset = 0;
    for (size_t i = 0; i < this->count; i++) {
        void *headerEntry = NULL;
        size_t size = 0;
        size_t offset = 0;

        switch (this->type) {
        case PACK_TYPE_COS:
            headerEntry = static_cast<HeaderEntry_COS *>(headerEntryStart) + i;
            offset = static_cast<HeaderEntry_COS *>(headerEntry)->offset;
            size = static_cast<HeaderEntry_COS *>(headerEntry)->size;
            break;
        case PACK_TYPE_CO:
            headerEntry = static_cast<HeaderEntry_CO *>(headerEntryStart) + i;
            offset = static_cast<HeaderEntry_CO *>(headerEntry)->offset;
            size = static_cast<Header *>(this->pkh)->entrySize;
            break;
        case PACK_TYPE_CS:
            headerEntry = static_cast<HeaderEntry_CS *>(headerEntryStart) + i;
            offset = static_cast<Header *>(this->pkh)->entrySize * i;
            size = static_cast<HeaderEntry_CS *>(headerEntry)->size;
            break;
        case PACK_TYPE_C:
            headerEntry = static_cast<HeaderEntry_C *>(headerEntryStart) + i;
            offset = static_cast<Header *>(this->pkh)->entrySize * i;
            size = static_cast<Header *>(this->pkh)->entrySize;
            break;
        case PACK_TYPE_HOSC:
            headerEntry = static_cast<HeaderEntry_HOSC *>(headerEntryStart) + i;
            offset = static_cast<HeaderEntry_HOSC *>(headerEntry)->offset;
            size = static_cast<HeaderEntry_HOSC *>(headerEntry)->size;
            break;
        }

        if (size > maxSize) {
            maxOffset = offset;
            maxSize = size;
        }
    }

    if (ALIGN(maxOffset + maxSize, 16) > this->pkbSize) {
        return false;
    }

    return true;
}

bool PackBinary::ReadAllEntries(void)
{
    this->entries = static_cast<Entry *>(malloc(sizeof(*this->entries) * this->count));
    if (!this->entries) {
        return false;
    }

    void *headerEntries = static_cast<uint8_t *>(this->pkh) + this->GetHeaderSize();

    for (size_t i = 0; i < this->count; i++) {
        void *headerEntry = NULL;
        uint32_t code = 0;
        size_t size = 0;
        size_t offset = 0;

        switch (this->type) {
        case PACK_TYPE_COS:
            headerEntry = static_cast<HeaderEntry_COS *>(headerEntries) + i;
            code = static_cast<HeaderEntry_COS *>(headerEntry)->code;
            offset = static_cast<HeaderEntry_COS *>(headerEntry)->offset;
            size = static_cast<HeaderEntry_COS *>(headerEntry)->size;
            break;
        case PACK_TYPE_CO:
            headerEntry = static_cast<HeaderEntry_CO *>(headerEntries) + i;
            code = static_cast<HeaderEntry_CO *>(headerEntry)->code;
            offset = static_cast<HeaderEntry_CO *>(headerEntry)->offset;
            size = static_cast<Header *>(this->pkh)->entrySize;
            break;
        case PACK_TYPE_CS:
            headerEntry = static_cast<HeaderEntry_CS *>(headerEntries) + i;
            code = static_cast<HeaderEntry_CS *>(headerEntry)->code;
            offset = i * static_cast<Header *>(this->pkh)->entrySize;
            size = static_cast<HeaderEntry_CS *>(headerEntry)->size;
            break;
        case PACK_TYPE_C:
            headerEntry = static_cast<HeaderEntry_C *>(headerEntries) + i;
            code = static_cast<HeaderEntry_C *>(headerEntry)->code;
            offset = i * static_cast<Header *>(this->pkh)->entrySize;
            size = static_cast<Header *>(this->pkh)->entrySize;
            break;
        case PACK_TYPE_HOSC:
            headerEntry = static_cast<HeaderEntry_HOSC *>(headerEntries) + i;
            code = static_cast<HeaderEntry_HOSC *>(headerEntry)->hash;
            offset = static_cast<HeaderEntry_HOSC *>(headerEntry)->offset;
            size = static_cast<HeaderEntry_HOSC *>(headerEntry)->size;
            break;
        }

        void *data = static_cast<uint8_t *>(this->pkb) + offset;

        this->entries[i].name = this->GetName(code);
        if (IsCompressed(this->entries[i].name)) {
            this->entries[i].size = GetUncompressedSize(data);
            this->entries[i].data = malloc(this->entries[i].size);
            if (!this->entries[i].data) {
                return false;
            }
            if (!Uncompress(this->entries[i].data, data)) {
                fprintf(stderr, "archive: unable to uncompress %s\n", this->entries[i].name);
                return false;
            }
        } else {
            this->entries[i].size = size;
            this->entries[i].data = malloc(size);
            if (!this->entries[i].data) {
                return false;
            }
            memcpy(this->entries[i].data, data, size);
        }
    }

    return true;
}

bool PackBinary::WriteAllEntries(void)
{
    if (this->pkh) {
        free(this->pkh);
    }
    if (this->pkb) {
        free(this->pkb);
    }
    this->pkhSize = 0;
    this->pkbSize = 0;

    Entry *newEntries = static_cast<Entry *>(malloc(sizeof(*newEntries) * this->count));
    if (!newEntries) {
        return false;
    }
    memcpy(newEntries, this->entries, sizeof(*newEntries) * this->count);
    for (size_t i = 0; i < this->count; i++) {
        if (IsCompressed(newEntries[i].name)) {
            newEntries[i].data = Compress(this->entries[i].data, this->entries[i].size, COMPRESSION_LZ, &newEntries[i].size);
        }
    }

    this->pkhSize = ALIGN(this->GetHeaderSize() + (this->GetHeaderEntrySize() * this->count), 16);
    size_t maxSize = 0;
    switch (this->type) {
    case PACK_TYPE_COS:
    case PACK_TYPE_HOSC:
        for (size_t i = 0; i < this->count; i++) {
            this->pkbSize += ALIGN(newEntries[i].size, 16);
        }
        break;
    case PACK_TYPE_CO:
    case PACK_TYPE_CS:
    case PACK_TYPE_C:
        for (size_t i = 0; i < this->count; i++) {
            if (newEntries[i].size > maxSize) {
                maxSize = ALIGN(newEntries[i].size, 16);
            }
        }
        this->pkbSize = maxSize * this->count;
        break;
    }

    this->pkh = malloc(this->pkhSize);
    if (!this->pkh) {
        return false;
    }
    memset(this->pkh, 0xFF, this->pkhSize);
    this->pkb = malloc(this->pkbSize);
    if (!this->pkb) {
        return false;
    }
    memset(this->pkb, 0xFF, this->pkbSize);

    if (this->type != PACK_TYPE_HOSC) {
        Header *header = static_cast<Header *>(this->pkh);
        strncpy(header->packNum, "PackNum 20080626", sizeof(header->packNum));
        header->fileSize = this->pkhSize;
        header->type = this->type;
        header->unk14 = 1;
        header->entryCount = this->count;
        header->unk18 = 16;
        if ((maxSize > 0) && (config->entrySize <= 0)) {
            header->entrySize = maxSize;
        } else {
            header->entrySize = config->entrySize;
        }
        if (config->func == HashMapName) {
            header->mask = 4;
            header->maxNameLen = 5;
        } else {
            header->mask = 0;
            header->maxNameLen = 0;
        }
        header->unk26 = 0;
        memset(header->unk28, 0, sizeof(header->unk28));
    }

    void *headerEntries = static_cast<uint8_t *>(this->pkh) + this->GetHeaderSize();
    uint8_t *data = static_cast<uint8_t *>(this->pkb);
    uint32_t offset = 0;
    if (this->type != PACK_TYPE_HOSC) {
        for (size_t i = 0; i < this->count; i++) {
            void *headerEntry;

            switch (this->type) {
            case PACK_TYPE_COS:
                headerEntry = static_cast<HeaderEntry_COS *>(headerEntries) + i;
                static_cast<HeaderEntry_COS *>(headerEntry)->code = this->GetCode(newEntries[i].name);
                static_cast<HeaderEntry_COS *>(headerEntry)->offset = offset;
                static_cast<HeaderEntry_COS *>(headerEntry)->size = newEntries[i].size;
                break;
            case PACK_TYPE_CO:
                headerEntry = static_cast<HeaderEntry_CO *>(headerEntries) + i;
                static_cast<HeaderEntry_CO *>(headerEntry)->code = this->GetCode(newEntries[i].name);
                static_cast<HeaderEntry_CO *>(headerEntry)->offset = offset;
                break;
            case PACK_TYPE_CS:
                headerEntry = static_cast<HeaderEntry_CS *>(headerEntries) + i;
                static_cast<HeaderEntry_CS *>(headerEntry)->code = this->GetCode(newEntries[i].name);
                static_cast<HeaderEntry_CS *>(headerEntry)->size = newEntries[i].size;
                break;
            case PACK_TYPE_C:
                headerEntry = static_cast<HeaderEntry_C *>(headerEntries) + i;
                static_cast<HeaderEntry_C *>(headerEntry)->code = this->GetCode(newEntries[i].name);
                break;
            }

            memcpy(data + offset, newEntries[i].data, newEntries[i].size);
            if (maxSize > 0) {
                offset += maxSize;
            } else {
                offset += ALIGN(newEntries[i].size, 16);
            }
        }
    } else {
        // i think i might be too dumb but i don't see how i can optimize this thing
        for (size_t i = 0; i < this->count; i++) {
            for (size_t j = 0; j < this->count; j++) {
                if (i == config->filenames[j].idx) {
                    for (size_t k = 0; k < this->count; k++) {
                        if (strcmp(newEntries[k].name, config->filenames[j].name) == 0) {
                            HeaderEntry_HOSC *headerEntry = static_cast<HeaderEntry_HOSC *>(headerEntries) + j;
                            headerEntry->hash = this->GetCode(newEntries[k].name);
                            headerEntry->offset = offset;
                            headerEntry->size = newEntries[k].size;
                            if (IsCompressed(newEntries[k].name)) {
                                memcpy(&headerEntry->compHeader, newEntries[k].data, sizeof(headerEntry->compHeader));
                            } else {
                                memset(&headerEntry->compHeader, 0, sizeof(headerEntry->compHeader));
                            }
                            memcpy(data + offset, newEntries[k].data, newEntries[k].size);
                            offset += ALIGN(newEntries[k].size, 16);
                        }
                    }
                }
            }
        }
    }

    for (size_t i = 0; i < this->count; i++) {
        if (IsCompressed(newEntries[i].name) && (newEntries[i].data)) {
            free(newEntries[i].data);
        }
    }
    free(newEntries);

    return true;
}

bool PackBinary::SetEntry(const char *filename, void *data, size_t size)
{
    for (size_t i = 0; i < this->count; i++) {
        if (strcmp(filename, this->entries[i].name) == 0) {
            free(this->entries[i].data);

            if (IsCompressed(this->entries[i].name)) {
                this->entries[i].data = Compress(data, size, COMPRESSION_LZ, &this->entries[i].size);
            } else {
                this->entries[i].size = size;
                this->entries[i].data = malloc(size);
                if (!this->entries[i].data) {
                    return false;
                }
                memcpy(this->entries[i].data, data, size);
            }

            return true;
        }
    }

    return false;
}

bool PackBinary::ExportEntry(const char *path, const char *filename)
{
    for (size_t i = 0; i < this->count; i++) {
        if (strcmp(filename, this->entries[i].name)) {
            if (!this->ExportEntry(path, &this->entries[i])) {
                fprintf(stderr, "archive: could not export file %s\n", this->entries[i].name);
                return false;
            }
        }
    }

    return true;
}

bool PackBinary::ExportEntry(const char *path, Entry *entry)
{
    if (!std::filesystem::is_directory(path) || !std::filesystem::exists(path)) {
        fprintf(stderr, "archive: %s is not a valid directory\n", path);
        return false;
    }

    char *outpath = new char[strlen(path) + 128];
    sprintf(outpath, "%s/%s", path, entry->name);

    if (!write_file(outpath, entry->data, entry->size)) {
        fprintf(stderr, "archive: could not write %s\n", outpath);
        return false;
    }

    delete outpath;
    return true;
}

bool PackBinary::ExportAll(const char *path)
{
    for (size_t i = 0; i < this->count; i++) {
        if (!this->ExportEntry(path, &this->entries[i])) {
            fprintf(stderr, "archive: could not export file %s\n", this->entries[i].name);
            return false;
        }
    }

    return true;
}

bool PackBinary::Open(const char *path)
{
    this->name = new char[strlen(std::filesystem::path(path).filename().c_str())];
    strcpy(this->name, std::filesystem::path(path).filename().c_str());

    if (!this->GetConfig()) {
        fprintf(stderr, "archive: could not find the config for %s\n", path);
        return false;
    }

    // Read PKH file
    {
        char *pkhPath = new char[strlen(path) + 8];
        sprintf(pkhPath, "%s.pkh", path);

        if (!read_file(pkhPath, &this->pkh, &this->pkhSize)) {
            fprintf(stderr, "archive: could not read %s\n", pkhPath);
            return false;
        }

        delete pkhPath;
    }
    // Read PKB file
    {
        char *pkbPath = new char[strlen(path) + 8];
        sprintf(pkbPath, "%s.pkb", path);

        if (!read_file(pkbPath, &this->pkb, &this->pkbSize)) {
            fprintf(stderr, "archive: could not read %s\n", pkbPath);
            return false;
        }

        delete pkbPath;
    }

    if (!this->Check()) {
        fprintf(stderr, "achive: not a valid file %s\n", path);
        return false;
    }

    if (!this->ReadAllEntries()) {
        fprintf(stderr, "achive: unable to get all entries %s\n", path);
        return false;
    }

    return true;
}

bool PackBinary::Write(const char *path)
{
    if (!std::filesystem::is_directory(path) || !std::filesystem::exists(path)) {
        fprintf(stderr, "archive: %s is not a valid directory\n", path);
        return false;
    }

    // Write PKH file
    {
        char *pkhPath = new char[strlen(path) + 128];
        sprintf(pkhPath, "%s/%s.pkh", path, this->name);

        if (!write_file(pkhPath, this->pkh, this->pkhSize)) {
            fprintf(stderr, "archive: could not write %s\n", pkhPath);
            return false;
        }

        delete pkhPath;
    }
    // Write PKB file
    {
        char *pkbPath = new char[strlen(path) + 128];
        sprintf(pkbPath, "%s/%s.pkb", path, this->name);

        if (!write_file(pkbPath, this->pkb, this->pkbSize)) {
            fprintf(stderr, "archive: could not write %s\n", pkbPath);
            return false;
        }

        delete pkbPath;
    }

    return true;
}

bool PackBinary::Pack(const char *path)
{
    if (!std::filesystem::is_directory(path) || !std::filesystem::exists(path)) {
        fprintf(stderr, "archive: %s is not a valid directory\n", path);
        return false;
    }

    this->name = new char[strlen(std::filesystem::path(path).filename().c_str())];
    strcpy(this->name, std::filesystem::path(path).filename().c_str());

    this->pkh = NULL;
    this->pkb = NULL;

    if (!this->GetConfig()) {
        fprintf(stderr, "archive: could not find the config for %s\n", path);
        return false;
    }
    
    if (!config->filenames) {
        for (auto &entry : std::filesystem::directory_iterator(path)) {
            this->count++;
        }
    }

    this->entries = static_cast<Entry *>(malloc(sizeof(*this->entries) * this->count));

    size_t i = 0;
    for (auto &entry : std::filesystem::directory_iterator(path)) {
        if (!read_file(entry.path().c_str(), &this->entries[i].data, &this->entries[i].size)) {
            fprintf(stderr, "archive: could not read %s\n", entry.path().c_str());
            return false;
        }
        this->entries[i].name = new char[strlen(entry.path().filename().c_str())];
        strcpy(this->entries[i].name, entry.path().filename().c_str());

        i++;
    }

    return true;
}

bool PackBinary::Close(void)
{
    if (this->name) {
        delete this->name;
    }
    if (this->pkh) {
        free(this->pkh);
    }
    if (this->pkb) {
        free(this->pkb);
    }
    if (this->entries) {
        for (size_t i = 0; i < this->count; i++) {
            if (this->entries[i].name) {
                delete this->entries[i].name;
            }
            if (this->entries[i].data) {
                free(this->entries[i].data);
            }
        }
        free(this->entries);
    }

    return true;
}

bool SFP::Check(void)
{
    switch (this->type) {
    case SFP_TYPE_SINGLE:
        if (strncmp(static_cast<char *>(this->sfp), "SFP", sizeof("SFP")) == 0) {
            return true;
        }
        break;
    case SFP_TYPE_PAIR:
        if (strncmp(static_cast<char *>(this->spd), "SFP", sizeof("SFP")) != 0) {
            break;
        }
        if (strncmp(static_cast<char *>(this->spl), "SFP", sizeof("SFP")) != 0) {
            break;
        }
        return true;
    case SFP_TYPE_NULL:
    default:
        break;
    }

    return false;
}

bool SFP::ReadAllEntries(void)
{
    Header *header;
    HeaderEntry *hEntries;
    Header *dataHeader;

    switch (this->type) {
    case SFP_TYPE_SINGLE:
        header = static_cast<Header *>(this->sfp);
        hEntries = reinterpret_cast<HeaderEntry *>(static_cast<uint8_t *>(this->sfp) + sizeof(*header));
        dataHeader = reinterpret_cast<Header *>(static_cast<uint8_t *>(this->sfp) + header->size);
        break;
    case SFP_TYPE_PAIR:
        header = static_cast<Header *>(this->spl);
        hEntries = reinterpret_cast<HeaderEntry *>(static_cast<uint8_t *>(this->spl) + sizeof(*header));
        dataHeader = static_cast<Header *>(this->spd);
        break;
    case SFP_TYPE_NULL:
    default:
        return false;
    }

    this->count = (hEntries->fntOffset - sizeof(*header)) / sizeof(*hEntries);
    this->entries = static_cast<Entry *>(malloc(sizeof(*this->entries) * this->count));

    for (size_t i = 0; i < this->count; i++) {
        char *str = reinterpret_cast<char *>(header) + hEntries[i].fntOffset;
        this->entries[i].name = new char[strlen(str)];
        strcpy(this->entries[i].name, str);

        if (IsCompressed(this->entries[i].name)) {
            void *data = reinterpret_cast<uint8_t *>(dataHeader) + dataHeader->chunkSize * hEntries[i].offset;
            this->entries[i].size = GetUncompressedSize(data);
            this->entries[i].data = malloc(this->entries[i].size);
            if (!Uncompress(this->entries[i].data, data)) {
                fprintf(stderr, "archive: unable to uncompress %s\n", str);
                return false;
            }
        } else {
            this->entries[i].size = hEntries[i].size;
            this->entries[i].data = malloc(this->entries[i].size);
            if (!this->entries[i].data) {
                return false;
            }
            memcpy(
                this->entries[i].data,
                reinterpret_cast<uint8_t *>(dataHeader) + dataHeader->chunkSize * hEntries[i].offset,
                this->entries[i].size);
        }
    }

    return true;
}

bool SFP::WriteAllEntries(void)
{
    switch (this->type) {
    case SFP_TYPE_SINGLE:
        if (this->sfp) {
            free(this->sfp);
        }
        break;
    case SFP_TYPE_PAIR:
        if (this->spl) {
            free(this->spl);
        }
        if (this->spd) {
            free(this->spd);
        }
        break;
    case SFP_TYPE_NULL:
    default:
        return false;
    }

    size_t fntSize = 0;
    Entry *newEntries = static_cast<Entry *>(malloc(sizeof(Entry) * this->count));
    if (!newEntries) {
        return false;
    }
    memcpy(newEntries, this->entries, sizeof(*newEntries) * this->count);
    for (size_t i = 0; i < this->count; i++) {
        if (IsCompressed(newEntries[i].name)) {
            newEntries[i].data = Compress(this->entries[i].data, this->entries[i].size, COMPRESSION_LZ, &newEntries[i].size);
        }

        fntSize += strlen(newEntries[i].name) + 1;
    }

    size_t headerSize;
    if (this->type == SFP_TYPE_SINGLE) {
        headerSize = ALIGN(sizeof(Header) + (sizeof(HeaderEntry) * this->count) + fntSize, 16);
    } else {
        headerSize = sizeof(Header) + (sizeof(HeaderEntry) * this->count) + fntSize;
    }
    size_t dataSize = 0x400;
    for (size_t i = 0; i < this->count; i++) {
        dataSize += ALIGN(newEntries[i].size, 16);
    }
    if (this->type == SFP_TYPE_SINGLE) {        
        this->sfpSize = headerSize + dataSize;
        this->sfp = malloc(this->sfpSize);
        if (!this->sfp) {
            return false;
        }
        memset(this->sfp, 0, this->sfpSize);
    } else {
        this->splSize = headerSize;
        this->spl = malloc(this->splSize);
        if (!this->spl) {
            return false;
        }
        memset(this->spl, 0, this->splSize);

        this->spdSize = dataSize;
        this->spd = malloc(this->spdSize);
        if (!this->spd) {
            return false;
        }
        memset(this->spd, 0, this->spdSize);
    }

    Header *header;
    if (this->type == SFP_TYPE_SINGLE) {
        header = static_cast<Header *>(this->sfp);
    } else {
        header = static_cast<Header *>(this->spl);
    }
    strcpy(header->magic, "SFP");
    header->unk8 = 5;
    header->chunkSize = 0x20;
    header->size = headerSize;

    Header *dataHeader;
    if (this->type == SFP_TYPE_SINGLE) {
        dataHeader = reinterpret_cast<Header *>(static_cast<uint8_t *>(this->sfp) + headerSize);
    } else {
        dataHeader = reinterpret_cast<Header *>(this->spd);
    }
    strcpy(dataHeader->magic, "SFP");
    dataHeader->unk8 = 5;
    dataHeader->chunkSize = 0x20;
    dataHeader->size = dataSize;

    HeaderEntry *headerEntries = reinterpret_cast<HeaderEntry *>(reinterpret_cast<uint8_t *>(header) + sizeof(Header));
    char *fnt = reinterpret_cast<char *>(headerEntries + this->count);
    uint8_t *data = reinterpret_cast<uint8_t *>(dataHeader) + 0x400;
    uint32_t dataOffset = 0x400;
    uint32_t fntOffset = sizeof(Header) + (sizeof(HeaderEntry) * this->count);
    for (size_t i = 0; i < this->count; i++) {
        headerEntries[i].fntOffset = fntOffset;
        headerEntries[i].offset = dataOffset / dataHeader->chunkSize;
        headerEntries[i].size = newEntries[i].size;
        headerEntries[i].unkC = 0;

        strcpy(fnt, newEntries[i].name);
        fntOffset += strlen(fnt) + 1;
        fnt += strlen(fnt) + 1;

        memcpy(data, newEntries[i].data, newEntries[i].size);
        data += ALIGN(newEntries[i].size, 16);
        dataOffset += ALIGN(newEntries[i].size, 16);
    }
    
    for (size_t i = 0; i < this->count; i++) {
        if (IsCompressed(newEntries[i].name) && (newEntries[i].data)) {
            free(newEntries[i].data);
        }
    }
    free(newEntries);

    return true;
}

SFP::Entry *SFP::GetEntry(const char *filename)
{
    for (size_t i = 0; i < this->count; i++) {
        if (strcmp(this->entries[i].name, filename) == 0) {
            return &this->entries[i];
        }
    }
    return NULL;
}

bool SFP::SetEntry(const char *filename, void *data, size_t size)
{
    Entry *entry = this->GetEntry(filename);
    if (!entry) {
        return false;
    }
    
    free(entry->data);

    if (IsCompressed(entry->name)) {
        entry->data = Compress(data, size, COMPRESSION_LZ, &entry->size);
    } else {
        entry->size = size;
        entry->data = malloc(size);
        if (!entry->data) {
            return false;
        }
        memcpy(entry->data, data, size);
    }

    return true;
}

bool SFP::ExportEntry(const char *path, const char *filename)
{
    return this->ExportEntry(path, this->GetEntry(filename));
}

bool SFP::ExportEntry(const char *path, Entry *entry)
{
    if (!entry) {
        return false;
    }

    if (!std::filesystem::is_directory(path) || !std::filesystem::exists(path)) {
        fprintf(stderr, "archive: %s is not a valid directory\n", path);
        return false;
    }

    char *outpath = new char[strlen(path) + 128];
    sprintf(outpath, "%s/%s", path, entry->name);

    if (!write_file(outpath, entry->data, entry->size)) {
        fprintf(stderr, "archive: could not write %s\n", outpath);
        return false;
    }

    delete outpath;
    return true;
}

bool SFP::ExportAll(const char *path)
{
    for (size_t i = 0; i < this->count; i++) {
        if (!this->ExportEntry(path, &this->entries[i])) {
            fprintf(stderr, "archive: could not export file %s\n", this->entries[i].name);
            return false;
        }
    }

    return true;
}

bool SFP::Open(const char *path)
{
    this->type = SFP_TYPE_NULL;

    char *temp = new char[strlen(path) + 128];
    sprintf(temp, "%s.SPD", path);
    if (std::filesystem::is_directory(temp) || std::filesystem::exists(temp)) {
        this->type = SFP_TYPE_PAIR;
    } else {
        sprintf(temp, "%s.SPF_", path);
        if (std::filesystem::is_directory(temp) || std::filesystem::exists(temp)) {
            this->type = SFP_TYPE_SINGLE;
        }
    }
    if (this->type == SFP_TYPE_NULL) {
        fprintf(stderr, "archive: %s is not a valid path\n", path);
        return false;
    }
    delete temp;

    this->name = new char[strlen(std::filesystem::path(path).filename().c_str())];
    strcpy(this->name, std::filesystem::path(path).filename().c_str());

    switch (this->type) {
    case SFP_TYPE_SINGLE:
    {
        this->spd = NULL;
        this->spl = NULL;

        char *filepath = new char[strlen(path) + 8];
        sprintf(filepath, "%s.SPF_", path);

        void *data = NULL;
        if (!read_file(filepath, &data, NULL)) {
            fprintf(stderr, "archive: could not read %s\n", filepath);
            return false;
        }

        this->sfpSize = GetUncompressedSize(data);
        this->sfp = malloc(this->sfpSize);
        if (!Uncompress(this->sfp, data)) {
            fprintf(stderr, "archive: unable to uncompress %s\n", filepath);
            return false;
        }

        free(data);
        delete filepath;
        break;
    }
    case SFP_TYPE_PAIR:
    {
        this->sfp = NULL;

        // Read SPD file
        {
            char *filepath = new char[strlen(path) + 8];
            sprintf(filepath, "%s.SPD", path);

            if (!read_file(filepath, &this->spd, &this->spdSize)) {
                fprintf(stderr, "archive: could not read %s\n", filepath);
                return false;
            }

            delete filepath;
        }
        // Read SPL file
        {
            char *filepath = new char[strlen(path) + 8];
            sprintf(filepath, "%s.SPL", path);

            if (!read_file(filepath, &this->spl, &this->splSize)) {
                fprintf(stderr, "archive: could not read %s\n", filepath);
                return false;
            }

            delete filepath;
        }
        break;
    }
    case SFP_TYPE_NULL:
    default:
        return false;
    }

    if (!this->Check()) {
        fprintf(stderr, "achive: not a valid file %s\n", path);
        return false;
    }

    if (!this->ReadAllEntries()) {
        fprintf(stderr, "achive: unable to get all entries %s\n", path);
        return false;
    }

    return true;
}

bool SFP::Write(const char *path)
{
    if (!std::filesystem::is_directory(path) || !std::filesystem::exists(path)) {
        fprintf(stderr, "archive: %s is not a valid directory\n", path);
        return false;
    }

    switch (this->type) {
    case SFP_TYPE_SINGLE:
    {
        char *sfpPath = new char[strlen(path) + 128];
        sprintf(sfpPath, "%s/%s.SFP_", path, this->name);

        size_t size;
        void *data = Compress(this->sfp, this->sfpSize, COMPRESSION_LZ, &size);

        if (!write_file(sfpPath, data, size)) {
            fprintf(stderr, "archive: could not write %s\n", sfpPath);
            return false;
        }

        free(data);
        delete sfpPath;
        break;
    }
    case SFP_TYPE_PAIR:
    {
        // Write SPL file
        {
            char *splPath = new char[strlen(path) + 128];
            sprintf(splPath, "%s/%s.SPL", path, this->name);

            if (!write_file(splPath, this->spl, this->splSize)) {
                fprintf(stderr, "archive: could not write %s\n", splPath);
                return false;
            }

            delete splPath;
        }
        // Write SPD file
        {
            char *spdPath = new char[strlen(path) + 128];
            sprintf(spdPath, "%s/%s.SPD", path, this->name);

            if (!write_file(spdPath, this->spd, this->spdSize)) {
                fprintf(stderr, "archive: could not write %s\n", spdPath);
                return false;
            }

            delete spdPath;
        }
        break;
    }
    case SFP_TYPE_NULL:
    default:
        return false;
    }

    return true;
}

bool SFP::Pack(const char *path, Type type)
{
    if (!std::filesystem::is_directory(path) || !std::filesystem::exists(path)) {
        fprintf(stderr, "archive: %s is not a valid directory\n", path);
        return false;
    }

    this->name = new char[strlen(std::filesystem::path(path).filename().c_str())];
    strcpy(this->name, std::filesystem::path(path).filename().c_str());

    this->type = type;
    this->sfp = NULL;
    this->spl = NULL;
    this->spd = NULL;
    this->count = 0;

    for (auto &entry : std::filesystem::directory_iterator(path)) {
        this->count++;
    }

    this->entries = static_cast<Entry *>(malloc(sizeof(*this->entries) * this->count));
    if (!this->entries) {
        return false;
    }

    size_t i = 0;
    for (auto &entry : std::filesystem::directory_iterator(path)) {
        if (!read_file(entry.path().c_str(), &this->entries[i].data, &this->entries[i].size)) {
            fprintf(stderr, "archive: could not read %s\n", entry.path().c_str());
            return false;
        }
        this->entries[i].name = new char[strlen(entry.path().filename().c_str())];
        strcpy(this->entries[i].name, entry.path().filename().c_str());

        i++;
    }

    return true;
}

bool SFP::Close(void)
{
    if (this->name) {
        delete this->name;
    }
    if (this->sfp) {
        free(this->sfp);
    }
    if (this->spd) {
        free(this->spd);
    }
    if (this->spl) {
        free(this->spl);
    }
    if (this->entries) {
        for (size_t i = 0; i < this->count; i++) {
            if (this->entries[i].name) {
                delete this->entries[i].name;
            }
            if (this->entries[i].data) {
                free(this->entries[i].data);
            }
        }
        free(this->entries);
    }

    return true;
}

} /* namespace Archive */

// g++ -g ./tools/ie3tools/archive.cpp ./tools/ie3tools/compression.cpp -std=c++20 -lz -o ./tools/ie3tools/archive && ./tools/ie3tools/archive
int main(int argc, char **argv)
{
    if (strcmp("-h", argv[1]) == 0) {
        fprintf(stderr, "usage: archive [-d] [-c] [-e] [-r] [-t]\n");
        fprintf(stderr, "\noptions:\n");
        fprintf(stderr, "\t[-d] Unpack.\n");
        fprintf(stderr, "\t[-c] Pack.\n");
        fprintf(stderr, "\t[-e] Export entry.\n");
        fprintf(stderr, "\t[-r] Replace entry.\n");
        fprintf(stderr, "\t[-t] Archive type (PKB | SFP | SPD).\n");
        fprintf(stderr, "\t[-h] Show this message\n");
        return 0;
    } else if (strcmp("-t", argv[1]) == 0) {
        if (strcmp("PKB", argv[2]) == 0) {
            Archive::PackBinary *pack = new Archive::PackBinary();
            if (strcmp("-d", argv[3]) == 0) {
                if (!pack->Open(argv[4])) {
                    pack->Close();
                    exit(-1);
                }
                if (!pack->ExportAll(argv[5])) {
                    pack->Close();
                    exit(-1);
                }
                pack->Close();
                return 0;
            } else if (strcmp("-c", argv[3]) == 0) {
                if (!pack->Pack(argv[4])) {
                    pack->Close();
                    exit(-1);
                }
                if (!pack->WriteAllEntries()) {
                    pack->Close();
                    exit(-1);
                }
                if (!pack->Write(argv[5])) {
                    pack->Close();
                    exit(-1);
                }
                pack->Close();
                return 0;
            } else {
                exit(-1);
            }
        } else if ((strcmp("SPF", argv[2]) == 0) || (strcmp("SPD", argv[2]) == 0)) {
            Archive::SFP *pack = new Archive::SFP();
            if (strcmp("-d", argv[3]) == 0) {
                if (!pack->Open(argv[4])) {
                    pack->Close();
                    exit(-1);
                }
                if (!pack->ExportAll(argv[5])) {
                    pack->Close();
                    exit(-1);
                }
                pack->Close();
                return 0;
            } else if (strcmp("-c", argv[3]) == 0) {
                Archive::SFP::Type type;
                if (strcmp("SPD", argv[2]) == 0) {
                    type == Archive::SFP::Type::SFP_TYPE_PAIR;
                } else if (strcmp("SPF", argv[2]) == 0) {
                    type == Archive::SFP::Type::SFP_TYPE_SINGLE;
                } else {
                    fprintf(stderr, "archive: unknown SFP type %s\n", argv[2]);
                    exit(-1);
                }
                if (!pack->Pack(argv[4], type) == 0) {
                    pack->Close();
                    exit(-1);
                }
                if (!pack->WriteAllEntries()) {
                    pack->Close();
                    exit(-1);
                }
                if (!pack->Write(argv[5])) {
                    pack->Close();
                    exit(-1);
                }
                pack->Close();
                return 0;
            } else {
                exit(-1);
            }
        } else {
            fprintf(stderr, "archive: unknown archive type %s\n", argv[2]);
            exit(-1);
        }
    } else {
        exit(-1);
    }
}
