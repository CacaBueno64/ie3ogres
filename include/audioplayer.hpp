#ifndef IE3OGRES_AUDIOPLAYER_H
#define IE3OGRES_AUDIOPLAYER_H

#pragma once

#include <nitro.h>

class AudioPlayer {
    public:
        AudioPlayer();
        ~AudioPlayer();
        BOOL FUN_0202b7b4(void);
        BOOL FUN_0202b7f0(void);
        void FUN_0202b838(int, int, int);
        void FUN_0202c44c(int, int);
        /* 0x0202d4c4 */ BOOL openSAD(void *param1, char *filename, u8 param3);
        BOOL FUN_0202c4a0(u32 param1);
        void FUN_0202cf00(s32 param1);
        void FUN_0202cf6c(u32 param1);
        void FUN_0202cff8(u16 param1);
        void FUN_0202d08c(s32 param1);
        void FUN_0202d578(int idx);
        void FUN_0202d594(int idx, const char *filename);
        void FUN_0202d5d4(u32 param1, u32 param2);
        BOOL FUN_0202d6c4(u32 param1);
        BOOL FUN_0202d724(char *);
        void FUN_0202d774(u32 param1, u32 param2);
        void FUN_0202d798(char *, int);
};
extern AudioPlayer gAudioPlayer;

#endif //IE3OGRES_AUDIOPLAYER_H
