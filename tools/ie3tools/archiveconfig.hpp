#include "archive.hpp"

#include <cstdint>

namespace Archive {

typedef struct {
    const char *name;
    size_t idx;
} ConfigFilenames;

typedef struct {
    const char *name;
    PackBinary::Type type;
    bool comp;
    uint32_t (*func)(Archive::PackBinary *pack, const char *name);
    const char *format;
    uint32_t entrySize; // cannot not hardcode this value
    const ConfigFilenames *filenames;
} Config;

const Config config_fac = {
    .name = "fac",
    .type = PackBinary::Type::PACK_TYPE_COS,
    .comp = true,
    .func = NULL,
    .format = "%s%08u.pac_", // fac00000100.pac_
    .entrySize = 0x770,
    .filenames = NULL
};

const Config config_fab = {
    .name = "fab",
    .type = PackBinary::Type::PACK_TYPE_COS,
    .comp = true,
    .func = NULL,
    .format = "%s%08u.pac_", // fab01010000.pac_
    .entrySize = 0x4F0,
    .filenames = NULL
};

const ConfigFilenames config_efct_filenames[] = {
    {"ef_c011a.pac", 12},
    {"ef_c005a.PLT", 7},
    {"ef_c018a.PLT", 21},
    {"ef_c002a.PLT", 3},
    {"ef_c016a.pac", 18},
    {"ef_c002a.pac", 2},
    {"ef_c016a.PLT", 19},
    {"ef_c011a.PLT", 13},
    {"ef_c007a.PLT", 9},
    {"ef_c014a.PLT", 16},
    {"ef_c013a.PLT", 15},
    {"ef_c009a.PLT", 11},
    {"ef_c006a.PLT", 8},
    {"ef_c001a.PLT", 1},
    {"ef_c001a.pac", 0},
    {"ef_c015a.PLT", 17},
    {"ef_c012a.PLT", 14},
    {"ef_c008a.PLT", 10},
    {"ef_c004a.PLT", 6},
    {"ef_c020a.PLT", 23},
    {"ef_c019a.PLT", 22},
    {"ef_c003a.PLT", 5},
    {"ef_c017a.PLT", 20},
    {"ef_c003a.pac", 4},
    {NULL, 0}
};

const Config config_efct = {
    .name = "efct",
    .type = PackBinary::Type::PACK_TYPE_HOSC,
    .comp = false,
    .func = HashDefault,
    .format = NULL,
    .entrySize = 0,
    .filenames = config_efct_filenames
};

const Config configs[] = {
    config_fac,
    config_fab,
    config_efct,
};

} /* namespace Archive */
