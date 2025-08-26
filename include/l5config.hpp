#ifndef IE3OGRES_L5CONFIG_H
#define IE3OGRES_L5CONFIG_H

#pragma once

extern "C" {
#include <nitro.h>
}

class L5Config {
    public:
        typedef struct {
            u32 crc32;
            int value;
        } Struct_ParamEntry;

        L5Config();
        ~L5Config();
        void clear();
        BOOL openFile(char *filename);
        int getParam(char *param);
        void init(void);
        int getParamPosition(char *param);
        BOOL readFileParam(char *file, Struct_ParamEntry *param);
    private:
    Struct_ParamEntry *paramEntry;
    s32 paramCount;
};

extern L5Config gL5Config;

#endif //IE3OGRES_L5CONFIG_H
