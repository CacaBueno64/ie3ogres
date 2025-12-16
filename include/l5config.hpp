#ifndef IE3OGRES_L5CONFIG_H
#define IE3OGRES_L5CONFIG_H

#pragma once

#include <nitro.h>
#include <string.h>
#include <stdlib.h>

#include "l5fs.hpp"

#define CONFIG_MAX_ENTRIES 96

typedef struct {
    u32 crc32;
    int value;
} Config_ParamEntry;

class L5Config {
    public:
        L5Config();
        ~L5Config();
        void clear();
        BOOL openFile(char *filename);
        int getParam(char *param);
        void init(void);
        int getParamPosition(char *param);
        BOOL readFileParam(char *file, Config_ParamEntry *param);
    private:
    Config_ParamEntry *paramEntry;
    s32 paramCount;
};

extern L5Config gL5Config;

#endif //IE3OGRES_L5CONFIG_H
