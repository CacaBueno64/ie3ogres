#include "movieplayer.hpp"

MoviePlayer::MoviePlayer()
{
    this->flags = 0;
}

MoviePlayer::~MoviePlayer()
{
    if (this->flags) {
        this->flags |= 0x20;
        this->closeMovie(TRUE);
    }
}

void MoviePlayer::init(Allocator *allocator)
{
    if (allocator) {
        unk_020B5B80.allocator = allocator;
        OS_InitTick();
    }
}

void MoviePlayer::setBGScreens(u16 *CurFrameMain, u16 *NextFrameMain, u16 *CurFrameSub, u16 *NextFrameSub)
{
    unk_020B5B80.BGScrMain[0] = CurFrameMain;
    unk_020B5B80.BGScrMain[1] = NextFrameMain;
    unk_020B5B80.BGScrSub[0] = CurFrameSub;
    unk_020B5B80.BGScrSub[1] = NextFrameSub;
}

int MoviePlayer::flipBuffer(void)
{
    if (!unk_020B5B80.frameDisplayed) {
        unk_020B5B80.frameDisplayed = TRUE;
        unk_020B5B80.currentBG ^= 1;
    }

    return unk_020B5B80.currentBG ^ 1;
}

BOOL MoviePlayer::playMovie(const char *name, SMovieInfo *movieInfo, BOOL hasNoSound, u8 loadOverlay)
{
    char filepath[64];

    if (loadOverlay) {
        FS_UnloadOverlay(MI_PROCESSOR_ARM9, FS_OVERLAY_ID(overlay126));
        FS_LoadOverlay(MI_PROCESSOR_ARM9, FS_OVERLAY_ID(overlay127));
    }

    this->handle_98 = NULL;
    this->handleSub = NULL;
    this->handleMain = NULL;

    if (name) {
        STD_TSPrintf(filepath, "/data_iz/movie/%s.mods", name);
        FS_InitFile(&this->fileMain);
        if (!FS_OpenFile(&this->fileMain, filepath)) {
            return FALSE;
        }
    }

    if (movieInfo) {
        OS_Terminate();
    }

    if (name) {
        this->handleMain = MO_OpenMovie(&this->fileMain, MO_NB_BUFFERED_FRAME_MIN);
    }
    if (this->handleMain == MO_INVALID_HANDLE) {
        return FALSE;
    }

    this->handle_98 = this->handleMain;

    this->flags = 0;
    
    if (hasNoSound) {
        this->flags |= MOVIE_HAS_NO_SOUND;
    }
    
    this->unk194 = 0;
    this->unk198 = 0;
    this->unk19C = 0;
    this->currentFrame = 0;
    this->frameCount = MO_GetNbFrame(this->handle_98);

    unk_020B5B80.currentBG = 1;
    unk_020B5B80.frameDisplayed = TRUE;

    STD_TSPrintf(filepath, "%s.sad", name);
    if (((this->flags & MOVIE_HAS_NO_SOUND) == 0) && (gAudioPlayer.FUN_0202d4c4(0, filepath, 0))) {
        this->flags |= MOVIE_HAS_SOUND;
    }

    OS_CreateAlarm(&this->alarm);
    OS_SetPeriodicAlarm(
        &this->alarm,
        OS_GetTick() + ALARM_COUNT( 10 ),
        ALARM_COUNT( (u64)16777216000000 / (u64)MO_GetVideoFps(this->handle_98) ),
        &this->alarmIntr,
        NULL
    );

    for (int i = 0; i < 6; i++) {
        (void)this->FUN_0202ea50();
    }

    this->stack = static_cast<char *>(MO_Malloc(MOVIE_STACK_SIZE));

    OS_CreateThread(
        &this->thread,
        &this->threadIntr,
        this,
        this->stack + MOVIE_STACK_SIZE,
        MOVIE_STACK_SIZE,
        27
    );

    if ((this->flags & 0x200) == 0) {
        gAudioPlayer.FUN_0202c4a0(0);
    }

    this->flags |= 1;

    return TRUE;
}

u32 MoviePlayer::FUN_0202e784(void)
{
    return this->flags;
}

BOOL MoviePlayer::FUN_0202e78c(void)
{
    if ((this->flags & 1) == 0) {
        return FALSE;
    }
    if (this->handle_98 == MO_INVALID_HANDLE) {
        return FALSE;
    }
    if ((this->flags & 4) != 0) {
        return FALSE;
    }
    if ((this->flags & 0x20) != 0) {
        if ((this->flags & 0x8000) != 0) {
            return TRUE;
        } else {
            return FALSE;
        }
    }
    if ((this->flags & 0x10) != 0) {
        return TRUE;
    }
    if ((this->flags & 2) == 0) {
        unk_020B5B80.unk5 = 1;
    }
    if ((this->flags & MOVIE_HAS_SOUND) != 0) {
        if ((this->flags & 8) == 0) {
            gAudioPlayer.FUN_0202d594(0, NULL);
            this->flags |= 0x408;
        }
        if (!gAudioPlayer.FUN_0202d6c4(0)) {
            if ((this->flags & 0x400) != 0) {
                unk_020B5B80.unk5 = 0;
                return TRUE;
            } else {
                this->flags &= ~0x108;
            }
        } else {
            this->flags &= ~0x400;
        }
    }
    this->flags |= 2;
    this->unk198 += unk_020B5B80.unk5;
    unk_020B5B80.unk5 = 0;
    if (this->unk198 != 0) {
        while ((this->unk198 > 1) && (this->unk194 > 1)) {
            (void)MO_SkipFrameImage(this->handleMain);
            (void)MO_SkipFrameImage(this->handleSub);
            this->currentFrame++;
            this->unk194--;
            this->unk198--;
        }
        if (this->unk194 != 0) {
            if (this->blitFrameImage(this->handleMain, this->handleSub)) {
                this->currentFrame++;
                this->unk194--;
                this->unk198--;
            }
        }
    }

    OS_WakeupThreadDirect(&this->thread);

    if (this->currentFrame >= this->frameCount) {
        this->flags |= 4;
        return FALSE;
    }

    return TRUE;
}

void MoviePlayer::FUN_0202e958(void)
{
    if ((this->flags & 2) != 0) {
        this->flags |= 0x20;
        this->sleep();
    }
}

void MoviePlayer::sleep(void)
{
    if ((this->flags & 2) != 0) {
        this->flags |= 0x10;
        this->unk198 += unk_020B5B80.unk5;
        if ((this->flags & 8) != 0) {
            gAudioPlayer.FUN_0202d774(0, 0x12C);
        }
    }
}

void MoviePlayer::wakeUp(void)
{
    if ((this->flags & 0x10) != 0) {
        u32 flag = this->flags & ~0x10;
        this->flags = flag;
        unk_020B5B80.unk5 = 0;
        if ((flag & 8) != 0) {
            (void)gAudioPlayer.FUN_0202d5d4(0, ((u64)16777216000 / (u64)MO_GetVideoFps(this->handle_98)) * (this->currentFrame + this->unk198 + 1));
            this->flags |= 0x400;
        }
    }
}

BOOL MoviePlayer::FUN_0202ea50(void)
{
    if (this->unk194 >= 6) {
        return FALSE;
    }
    if ((this->flags & 0x20) != 0) {
        return FALSE;
    }
    
    this->flags |= 0x8000;

    (void)OS_GetTick();

    if ((this->handleMain) && ((this->flags & 0x1000) == 0)) {
        if (!MO_ReadFrame(this->handleMain)) {
            this->flags |= 0x1000;
        } else {
            (void)MO_UnpackFrameImage(this->handleMain);
        }
    }

    (void)OS_GetTick();

    this->flags &= ~0x8000;
    if (((this->flags & 0x1000) != 0) && ((this->flags & 0x2000) != 0)) {
        return FALSE;
    }

    this->unk19C++;
    this->unk194++;

    return TRUE;
}

void MoviePlayer::closeMovie(u8 unloadOverlay)
{
    if (!this->flags) {
        return;
    }

    while ((this->flags & 0x8000) != 0) {
        OS_Sleep(50);
    }

    if ((this->flags & 0x20) == 0) {
        for (int i = 0; i < this->unk194; i++) {  
            (void)MO_SkipFrameImage(this->handleMain);
            (void)MO_SkipFrameImage(this->handleSub);
        }
    }

    if ((this->flags & 0x08) != 0) {
        gAudioPlayer.FUN_0202d578(0);
    }
    
    OS_CancelAlarm(&this->alarm);
    
    MO_Free(unk_020B5B80.unk20);
    MO_Free(unk_020B5B80.unk24);

    if (this->handleMain != MO_INVALID_HANDLE) {
        MO_CloseMovie(this->handleMain);
        (void)FS_CloseFile(&this->fileMain);
    }

    OS_DestroyThread(&this->thread);

    MO_Free(this->stack);

    this->flags = 0;

    if (unloadOverlay) {
        FS_UnloadOverlay(MI_PROCESSOR_ARM9, FS_OVERLAY_ID(overlay127));
        FS_LoadOverlay(MI_PROCESSOR_ARM9, FS_OVERLAY_ID(overlay126));
    }

}

void MoviePlayer::threadIntr(void *arg)
{
    MoviePlayer *player = static_cast<MoviePlayer *>(arg);

    while (TRUE) {
        if (!player->FUN_0202ea50()) {
            OS_SleepThread(NULL);
        }
    }
}

u32 MoviePlayer::getVideoFps(void)
{
    if (!this->handle_98) {
        return 0;
    }

    return MO_GetVideoFps(this->handle_98);
}

BOOL MoviePlayer::blitFrameImage(MOHandle handleMain, MOHandle handleSub)
{
    if (!unk_020B5B80.frameDisplayed) {
        return FALSE;
    }

    if (handleMain) {
        u16 *frameBuffer = unk_020B5B80.BGScrMain[unk_020B5B80.currentBG];
        if (frameBuffer != NULL) {
            (void)MO_BlitFrameImage(handleMain, frameBuffer, 256, MO_QUALITY_ENHANCEMENT_NONE);
        }
    }
    if (handleSub) {
        u16 *frameBuffer = unk_020B5B80.BGScrSub[unk_020B5B80.currentBG];
        if (frameBuffer != NULL) {
            (void)MO_BlitFrameImage(handleSub, frameBuffer, 256, MO_QUALITY_ENHANCEMENT_NONE);
        }
    }

    unk_020B5B80.frameDisplayed = FALSE;

    return TRUE;
}

void MoviePlayer::alarmIntr(void *arg)
{
    #pragma unused(arg)

    unk_020B5B80.unk5++;
}

void *MoviePlayer::malloc(size_t size)
{
    return unk_020B5B80.allocator->allocate(size, 5, 0);
}

void MoviePlayer::free(void *ptr)
{
    unk_020B5B80.allocator->deallocate(ptr);
}

void *MO_Malloc(u32 size)
{
    return gMoviePlayer.malloc(size);
}

void MO_Free(void *mem_p)
{
    gMoviePlayer.free(mem_p);
}
