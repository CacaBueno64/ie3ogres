#ifndef ARCHIVE_HPP
#define ARCHIVE_HPP

#include "compression.hpp"

#include <cstdint>
#include <cstdio>

#define countof(x) (sizeof(x) / sizeof(*x))

namespace Archive {

class PackBinary
{
public:
    typedef enum {
        PACK_TYPE_COS,
        PACK_TYPE_CO,
        PACK_TYPE_CS,
        PACK_TYPE_C,
        PACK_TYPE_HOSC,
        PACK_TYPE_NULL = -1,
    } Type;

    typedef struct {
        char packNum[16];
        uint16_t fileSize; // "PackNum 20080626"
        uint16_t type; // interpret as `Type`
        uint16_t unk14;
        uint16_t entryCount;
        uint32_t unk18;
        uint32_t entrySize;
        uint32_t mask;
        uint16_t maxNameLen;
        uint16_t unk26;
        uint8_t unk28[0x8]; // pad?
    } Header;

    typedef struct {
        uint32_t code;
        uint32_t offset;
        uint32_t size;
    } HeaderEntry_COS;

    typedef struct {
        uint32_t code;
        uint32_t offset;
    } HeaderEntry_CO;

    typedef struct {
        uint32_t code;
        uint32_t size;
    } HeaderEntry_CS;

    typedef struct {
        uint32_t code;
    } HeaderEntry_C;

    typedef struct {
        uint32_t hash;
        uint32_t offset;
        uint32_t size;
        CompressionHeader compHeader;
    } HeaderEntry_HOSC;

    typedef struct {
        char *name;
        void *data;
        size_t size;
    } Entry;

    bool GetConfig(void);
    char *GetExtension(void);
    char *GetName(uint32_t code);
    char *GetName(size_t idx);
    uint32_t GetCode(const char *filename);
    size_t GetHeaderSize(void);
    size_t GetHeaderEntrySize(void);
    bool Check(void);

    bool SetEntry(const char *path, void *data, size_t size);

    /*
    @brief Reads `PackBinary::pkh` and `PackBinary::pkb` and stores the informations to a new `PackBinary::entries`
    @returns `true` on success
    */
    bool ReadAllEntries(void);

    /*
    @brief Reads `PackBinary::entries` and stores the informations to a new `PackBinary::pkh` and `PackBinary::pkb`
    @returns `true` on success
    */
    bool WriteAllEntries(void);

    /*
    @brief Exports the entry to a folder
    @param path relative path to an existing folder
    @param entry pointer to the entry to export

    example: `"./path/to/my/folder"`
    @returns `true` on success
    */
    bool ExportEntry(const char *path, Entry *entry);
    bool ExportEntry(const char *path, const char *filename);

    /*
    @brief Exports all the entries to a folder
    @param path relative path to an existing folder

    example: `"./path/to/my/folder"`
    @returns `true` on success
    */
    bool ExportAll(const char *path);

    /*
    @brief Opens and reads a pair of `*.pkh` and `*.pkb` files from `path`
    @param path relative path to the archive (excluding the extension)

    example: `"./data_iz/script/evet"`
    @returns `true` on success
    */
    bool Open(const char *path);

    /*
    @brief Writes a pair of `*.pkh` and `*.pkb` files to `path`
    @param path relative path to an existing folder

    example: `"./path/to/my/folder"`
    @returns `true` on success
    */
    bool Write(const char *path);

    /*
    @brief Opens and reads all the files in a folder and stores the informations into a new `PackBinary::entries`
    @param path relative path to the folder that contains the files to pack

    example: `"./path/to/my/folder"`
    @returns `true` on success
    */
    bool Pack(const char *path);
    bool Close(void);

    Type type;
    char *name;
    void *pkb;
    size_t pkbSize;
    void *pkh;
    size_t pkhSize;
    size_t count;
    Entry *entries;
};

class SFP
{
public:
    typedef enum {
        SFP_TYPE_PAIR,
        SFP_TYPE_SINGLE,
        SFP_TYPE_NULL = -1,
    } Type;

    typedef struct {
        char magic[4]; // "SFP\0"
        uint32_t unk4;
        uint32_t unk8;
        uint32_t chunkSize;
        uint32_t size;
        uint32_t unk14;
        uint32_t unk18;
        uint32_t unk1C;
        /* HeaderEntry *entries; */
    } Header;

    typedef struct {
        uint32_t fntOffset;
        uint32_t size;
        uint32_t offset;
        uint32_t unkC;
    } HeaderEntry;

    typedef struct {
        char *name;
        void *data;
        size_t size;
    } Entry;

    bool Check(void);
    bool ReadAllEntries(void);
    bool WriteAllEntries(void);
    Entry *GetEntry(const char *filename);
    bool SetEntry(const char *filename, void *data, size_t size);
    bool ExportEntry(const char *path, const char *filename);
    bool ExportEntry(const char *path, Entry *entry);
    bool ExportAll(const char *path);
    bool Open(const char *path);
    bool Write(const char *path);
    bool Pack(const char *path, Type type);
    bool Close(void);

    Type type;
    char *name;
    void *sfp;
    size_t sfpSize;
    void *spd;
    size_t spdSize;
    void *spl;
    size_t splSize;
    size_t count;
    Entry *entries;
};

uint32_t HashDefault(PackBinary *pack, const char *filename);
uint32_t HashMapName(PackBinary *pack, const char *filename);

} /* namespace Archive */

#endif // ARCHIVE_HPP
