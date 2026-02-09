#ifndef IE3OGRES_MOVIEPLAYER_H
#define IE3OGRES_MOVIEPLAYER_H

#pragma once

#include <nitro.h>
#include <Mobiclip.h>

#include "allocator.hpp"
#include "audioplayer.hpp"
#include "graphics.hpp"
#include "thread.hpp"

#define MOVIE_STACK_SIZE 1024
#define ALARM_COUNT( x ) (u32)(OS_MicroSecondsToTicks( x ))

#define MOVIE_HAS_SOUND 0x100
#define MOVIE_HAS_NO_SOUND 0x200

FS_EXTERN_OVERLAY(overlay126);
FS_EXTERN_OVERLAY(overlay127);

typedef enum {
    MOVIE_STATUS_NONE,
    MOVIE_STATUS_PLAYING,
} EMovieStatus;

typedef struct {
    s32 startMs;
    s32 endMs;
    unsigned char text[];
} SMovieTxtEntry;

typedef struct {
    char name[32];
    char *stack;
    s32 startMs;
    s32 endMs;
    char *text;
    s32 curMs;
} SMovieInfo;

typedef struct {
    Allocator *allocator;
    s8 currentBG;
    s8 unk5;
    s8 frameDisplayed;
    s8 pad7;
    u16 *BGScrMain[2];
    u16 *BGScrSub[2];
    u8 pad18[0x08]; // pad?
    void *unk20; // never used
    void *unk24; // never used
} UnkStruct_020B5B80;
extern UnkStruct_020B5B80 unk_020B5B80;

class MoviePlayer {
    public:
        MoviePlayer();
        ~MoviePlayer();
        void init(Allocator *allocator);
        void setBGScreens(u16 *CurFrameMain, u16 *NextFrameMain, u16 *CurFrameSub, u16 *NextFrameSub);
        int flipBuffer(void);
        BOOL playMovie(const char *name, SMovieInfo *movieInfo, BOOL hasNotSound, u8 loadOverlay);
        u32 FUN_0202e784(void);
        BOOL FUN_0202e78c(void);
        void FUN_0202e958(void);
        void sleep(void);
        void wakeUp(void);
        BOOL FUN_0202ea50(void);
        void closeMovie(u8 unloadOverlay);
        static void threadIntr(void *arg);
        u32 getVideoFps(void);
        static BOOL blitFrameImage(MOHandle handleMain, MOHandle handleSub);
        static void alarmIntr(void *arg);
        static void *malloc(size_t size);
        static void free(void *ptr);

    FSFile fileMain;
    FSFile fileSub;
    MOHandle handleMain;
    MOHandle handleSub;
    MOHandle handle_98;
    OSAlarm alarm;
    OSThread thread;
    char *stack;
    u32 flags;
    u32 unk190;
    s32 unk194;
    s32 unk198;
    s32 unk19C;
    s32 currentFrame;
    s32 frameCount;
};

extern MoviePlayer gMoviePlayer;

namespace Movie {

#define MOVIE_THREAD_STACK_SIZE 0x4000

void Init(void);
void Play(void *arg);
void Start(SMovieInfo *info, const char *name);
void FUN_ov16_020f2a74(SMovieInfo *info);
EMovieStatus GetStatus(void);
void Update(void);

} /* namespace Movie */

#endif //IE3OGRES_MOVIEPLAYER_H
