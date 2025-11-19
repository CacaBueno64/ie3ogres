#ifndef IE3OGRES_L5SOUND_H
#define IE3OGRES_L5SOUND_H

#pragma once

#include <nitro.h>

class L5Sound {
    public:
        L5Sound();
        ~L5Sound();
        BOOL FUN_0202b7b4(void);
        BOOL FUN_0202b7f0(void);
        void FUN_0202b838(int, int, int);
        BOOL openSAD(void *param1, char *filename, u8 param3);
        BOOL FUN_0202c4a0(u32 param1);
        void FUN_0202cf00(s32 param1);
        void FUN_0202cf6c(u32 param1);
        void FUN_0202d08c(s32 param1);
        void FUN_0202d578(u32 param1);
        void FUN_0202d594(u32 param1, u32 param2);
        void FUN_0202d5d4(u32 param1, u32 param2);
        BOOL FUN_0202d6c4(u32 param1);
        void FUN_0202d774(u32 param1, u32 param2);
};
extern L5Sound gL5Sound;

#endif //IE3OGRES_L5SOUND_H
