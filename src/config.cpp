#include "config.hpp"

Config::Config() { this->clear(); }

Config::~Config() {
    if (this->paramEntry != NULL) {
        FileSystem::Deallocate(this->paramEntry);
    }
    this->paramEntry = NULL;
}

void Config::clear(void) { this->paramEntry = NULL; }

BOOL Config::openFile(char *filepath) {
    char *file = NULL;
    char *line_start;
    char *curr;

    s32 file_size = FileSystem::ReadFile(reinterpret_cast<void **>(&file), filepath, 0, 0);
    if (file_size <= 0) {
        return FALSE;
    }

    line_start = curr = file;

    while (curr < (file + file_size)) {
        if ((*curr == '\n') || (*curr == '\r')) {
            *curr = 0;
            if (strlen(line_start) != 0) {
                if (this->readFileParam(line_start, &this->paramEntry[this->paramCount])) {
                    this->paramCount++;
                }
            }
            line_start = curr + 1;
        }
        curr++;
    }

    FileSystem::Deallocate(file);
    return TRUE;
}

int Config::getParam(char *str) {
    int idx = this->getParamIdx(str);

    if ((idx < 0) || (this->paramEntry == NULL)) {
        return 0;
    }

    ParamEntry *paramEntry = &this->paramEntry[idx];

    return paramEntry->value;
}

void Config::init(void) {
    if (this->paramEntry == NULL) {
        this->paramEntry = static_cast<ParamEntry *>(FileSystem::AllocateClear(sizeof(*this->paramEntry) * CONFIG_MAX_ENTRIES, -1));
    }
    this->paramCount = 0;
}

int Config::getParamIdx(char *str) {
    ParamEntry *paramEntry = this->paramEntry;

    if (paramEntry == NULL) {
        return -1;
    }

    u32 len   = STD_GetStringLength(str);
    u32 crc32 = FileSystem::CalcCRC32(str, len);

    for (int pos = 0; pos < this->paramCount; pos++) {
        if (paramEntry->crc32 == crc32) {
            return pos;
        }
        paramEntry++;
    }

    return -1;
}

BOOL Config::readFileParam(char *file, ParamEntry *param) {

    BOOL empty_file   = TRUE;
    BOOL read_key     = FALSE;
    BOOL awaiting_key = TRUE;

    if (param == NULL) {
        return FALSE;
    }

    char *key_start;
    char *curr = file;
    while (*curr != '\0') {
        if (*curr == ' ' || *curr == '\t') {
            curr++;
            if (awaiting_key) {
                key_start = curr;
            }
            continue;
        } else if (*curr == ';' && empty_file) {
            return FALSE;
        } else if (*curr == '=' && !read_key) {
            if (curr == key_start) {
                return FALSE;
            }

            char *key_end = curr;
            while (key_end[-1] == ' ' || key_end[-1] == '\t') {
                key_end--;
            }

            int len      = key_end - key_start;
            param->crc32 = FileSystem::CalcCRC32(key_start, len);
            read_key     = TRUE;
            curr++;
            key_start    = curr;
            awaiting_key = TRUE;
            continue;
        } else {
            empty_file   = FALSE;
            awaiting_key = FALSE;
            curr++;
        }
    }

    if (read_key) {
        char *key_end = curr;
        while (key_end[-1] == ' ' || key_end[-1] == '\t') {
            key_end--;
        }

        int len = key_end - key_start;
        if (len > 0) {
            char strbuf[32];
            strncpy(strbuf, key_start, len);
            strbuf[len]  = '\0';
            param->value = atoi(strbuf);
            return TRUE;
        }
    }

    return FALSE;
}
