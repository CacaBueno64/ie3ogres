#pragma once

// clang-format off
#include <nitro/types.h>  // for BOOL, s32, u32
// clang-format on

#define CONFIG_MAX_ENTRIES 96

class CConfig
{
public:
    typedef struct {
        u32 crc32;
        int value;
    } ParamEntry;

    CConfig();
    ~CConfig();
    void clear(void);
    BOOL openFile(const char *filename);
    int getParam(const char *param);
    void init(void);
    int getParamIdx(const char *param);
    BOOL readFileParam(const char *file, ParamEntry *param);

private:
    ParamEntry *paramEntry;
    s32 paramCount;
};

extern CConfig gConfig;
