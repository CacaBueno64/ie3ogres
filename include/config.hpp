#ifndef IE3OGRES_CONFIG_H
#define IE3OGRES_CONFIG_H

#pragma once

#include <nitro.h>
#include <string.h>
#include <stdlib.h>

#include "filesystem.hpp"

#define CONFIG_MAX_ENTRIES 96

class Config {
    public:
        typedef struct {
            u32 crc32;
            int value;
        } ParamEntry;

        Config();
        ~Config();
        void clear(void);
        BOOL openFile(char *filename);
        int getParam(char *param);
        void init(void);
        int getParamIdx(char *param);
        BOOL readFileParam(char *file, ParamEntry *param);
    private:
    ParamEntry *paramEntry;
    s32 paramCount;
};

extern Config gConfig;

#endif //IE3OGRES_CONFIG_H
