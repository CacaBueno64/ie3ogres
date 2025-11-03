#ifndef IE3OGRES_L5MOVIE_H
#define IE3OGRES_L5MOVIE_H

#pragma once

#include <nitro.h>
#include <Mobiclip.h>

#include "l5sound.hpp"
#include "l5allocator.hpp"

#define MOVIE_STACK_SIZE 1024
#define ALARM_COUNT( x ) (u32)(OS_MicroSecondsToTicks( x ))

#define MOVIE_HAS_SOUND 0x100
#define MOVIE_HAS_NOT_SOUND 0x200

FS_EXTERN_OVERLAY(overlay126);
FS_EXTERN_OVERLAY(overlay127);

typedef struct {
    L5Allocator *allocator;
    s8 unk4;
    s8 unk5;
    s8 unk6;
    s8 unk7; //pad?
    u16 *unk8[2];
    u16 *unk10[2];
    u8 unk18[0x08];
    void *unk20;
    void *unk24;
} UnkStruct_020B5B80;
extern UnkStruct_020B5B80 unk_020B5B80;

class L5Movie {
    public:
        L5Movie();
        ~L5Movie();
        void init(L5Allocator *allocator);
        void FUN_0202e4cc(u16 *ofbPtr0, u16 *ofbPtr1, u16 *ofbPtr2, u16 *ofbPtr3);
        u32 FUN_0202e4ec();
        BOOL playMovie(char *name, u32 param2, u32 param3, u8 param4);
        u32 FUN_0202e784(void);
        BOOL FUN_0202e78c(void);
        void FUN_0202e958(void);
        void FUN_0202e978(void);
        void FUN_0202e9c8(void);
        BOOL FUN_0202ea50(void);
        void stopMovie(u32 param1);

    FSFile file;
    u8 pad[0x48];
    MOHandle handle;
    MOHandle handle_94;
    MOHandle handle_98;
    OSAlarm alarm;
    OSThread thread;
    void *unk188;
    u32 flags;
    u32 unk190;
    s32 unk194;
    s32 unk198;
    s32 unk19C;
    s32 unk1A0;
    s32 unk1A4;
};

extern "C" {
    void FUN_0202ec08(void *arg);
    u32 Movie_GetVideoFps(L5Movie *arg);
    BOOL FUN_0202ec4c(MOHandle handle0, MOHandle handle1);
    void Movie_AlarmIntr(void *arg);

    void *Movie_Malloc(int size);
    void Movie_Free(void *ptr);
}

extern L5Movie gL5Movie;

#endif //IE3OGRES_L5MOVIE_H
