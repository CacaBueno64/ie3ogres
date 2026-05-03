#include "audioplayer.hpp"            // for AudioPlayer
#include "CFileIO.hpp"                // for CFileIO
#include "CLogicThink.hpp"            // for CLogicThink, gLogicThink
#include "allocator.hpp"              // for CAllocator, gAllocator
#include "cnvdat.h"                   // for SSoundRecordData
#include "filesystem.hpp"             // for FindFileIdx, GetFile, IsFileBusy, OpenArchiveDirect, ReadFileByIdx, ReadFileByIdxDeferred, SetNextArena, archandle_t, filekey_t
#include "graphics.hpp"               // for gDeltaTime
#include "movieplayer.hpp"            // for MoviePlayer, gMoviePlayer
#include <DSE.h>                      // for DSE_SsdIsPlayStream, DSE_SsdIsPlaySequence, DSE_SsdAddWaveData, DSE_SsdRemoveWaveData, DSE_SsdSetStreamPlayPositionByTime, DSE_SsdIsOpenStream, DSE_SsdPlayStream, DSE_SsdStopSequence, DSE_SsdStopStream, DSE_SsdAddEffectData, DSE_SsdAddSequenceData, DSE_SsdCloseStream, DSE_SsdGetStreamSizeByTime, DSE_SsdInit, DSE_SsdInitSsdInitData, DSE_SsdInitStream, DSE_SsdInitStreamInitRec, DSE_SsdIsPlayEffect, DSE_SsdOpenStreamByFile, DSE_SsdPlayEffectParam, DSE_SsdPlaySequence, DSE_SsdQuit, DSE_SsdRemoveEffectData, DSE_SsdRemoveSequenceData, DSE_SsdResume, DSE_SsdSetEffectPolyMax, DSE_SsdSetInitDataMainThread, DSE_SsdSetInitDataRomThread, DSE_SsdSetInitDataSoundHeap, DSE_SsdSetInitDataVoiceRange, DSE_SsdSetMonoToStereo, DSE_SsdSetSequenceParam, DSE_SsdSetStreamInitDataThreadPriority, DSE_SsdSetStreamInitIOBufferSize, DSE_SsdSetStreamInitMaxOpen, DSE_SsdSetStreamInitReadThreadPriority, DSE_SsdSetStreamInitRomAccessSize, DSE_SsdSetStreamInitVoiceRange, DSE_SsdSetStreamParam, DSE_SsdStopEffect, DSE_SsdStopEffectAll, DSE_SsdStopEffectByDataID, DSESsdInitDataRec
#include <cstdio>                     // for NULL, sprintf
#include <cstring>                    // for strrchr
#include <nitro/fs/file.h>            // for FS_ConvertPathToFileID
#include <nitro/fs/types.h>           // for FSFileID
#include <nitro/mi/memory.h>          // for MI_CpuClear8
#include <nitro/os/common/thread.h>   // for OS_Sleep
#include <nitro/snd/ARM9/interface.h> // for SND_LockChannel
#include <nitro/snd/common/main.h>    // for SND_Init
#include <nitro/std/string.h>         // for STD_CompareString, STD_TSPrintf, STD_CopyString, STD_ConcatenateString
#include <nitro/types.h>              // for s32, FALSE, BOOL, u32, TRUE, u16, u8, s8, u64

/*
#include "init/arm9_init.hpp"

static char *unk_0208FA48[] = {
    "",
    "SR_000.SMW",
    "J06.SMW",
    "SR_001.SMW",
    "SR_002.SMW",
    "P01.SMW",
    "TITLE.SAD",
    "J02.SAD",
    "J06.SAD",
    "PB01.SMW",
};
*/
extern char *unk_0208FA48[];

static int sUnkIdx;
static archandle_t sArcKey;

BOOL AudioPlayer::FUN_0202b330(s32 fileIdx, void **data, BOOL withHandle, int param3, filekey_t *keyOut) {
    if (!*data) {
        if ((param3 == 2) && (sUnkIdx >= 1)) {
            gAllocator.setNextArena(258);
        } else {
            gAllocator.setNextArena(2);
        }
    }

    if (withHandle) {
        s32 size = FileSystem::ReadFileByIdxDeferred(data, sArcKey, fileIdx, keyOut);
        if (size < 0) {
            return FALSE;
        } else {
            return TRUE;
        }
    } else {
        s32 size = FileSystem::ReadFileByIdx(data, sArcKey, fileIdx);
        if (size < 0) {
            return FALSE;
        } else {
            return TRUE;
        }
    }
}

AudioPlayer::AudioPlayer() {}

AudioPlayer::~AudioPlayer() {
    for (int i = 0; i < 2; i++) {
        this->FUN_0202d08c(i);
    }
    for (int i = 0; i < 2; i++) {
        this->FUN_0202cf00(i);
    }
    this->FUN_0202d774(0, 0);
    this->FUN_0202d578(0);
}

void AudioPlayer::initDSE(CAllocator *allocator) {
    DSESsdInitDataRec init;

    this->allocator = allocator;

    SND_Init();
    SND_LockChannel(0xFFFF, 0);

    void *heap = this->allocator->allocate(0x1000F, 4, 1);
    DSE_SsdInitSsdInitData(&init);
    DSE_SsdSetInitDataSoundHeap(
        &init, reinterpret_cast<void *>((reinterpret_cast<u32>(heap) + 15) & ~15), 0x10000);
    DSE_SsdSetInitDataMainThread(&init, 0, 4);
    DSE_SsdSetInitDataRomThread(&init, 5);
    DSE_SsdSetInitDataVoiceRange(&init, 0, 15);
    DSE_SsdInit(&init);
    DSE_SsdSetEffectPolyMax(4, 4);
    DSE_SsdInitStreamInitRec(&this->streamInit);
    DSE_SsdSetStreamInitDataThreadPriority(&this->streamInit, 6);
    DSE_SsdSetStreamInitReadThreadPriority(&this->streamInit, 20);
    DSE_SsdSetStreamInitMaxOpen(&this->streamInit, 1);
    DSE_SsdSetStreamInitVoiceRange(&this->streamInit, 8, 15);
    DSE_SsdSetStreamInitIOBufferSize(&this->streamInit, 0x1000);
    DSE_SsdSetStreamInitRomAccessSize(&this->streamInit, 0x1000);
    DSE_SsdInitStream(&this->streamInit);

    this->unk258 = 0x7F;
    this->bgmVolume = 0x7F;
    this->effectVolume = 0x7F;
    this->bgmGain = 1000;
    this->effetGain = 1000;

    MI_CpuClear8(&this->unk58, sizeof(this->unk58));

    for (int i = 0; i < 5; i++) {
        this->unk58[i].unk4 = -1;
    }

    MI_CpuClear8(&this->unkBC, sizeof(this->unkBC));
    MI_CpuClear8(&this->unkC0, sizeof(this->unkC0));

    for (int i = 0; i < 2; i++) {
        this->unkC0[i].unk0 = -1;
    }

    MI_CpuClear8(&this->streamParam, sizeof(this->streamParam));
    MI_CpuClear8(&this->unk108, sizeof(this->unk108));
    MI_CpuClear8(&this->unk140, sizeof(this->unk140));
    MI_CpuClear8(&this->unk178, sizeof(this->unk178));
    MI_CpuClear8(&this->unk1B0, sizeof(this->unk1B0));
    MI_CpuClear8(&this->unk1E8, sizeof(this->unk1E8));
    MI_CpuClear8(&this->unk220, sizeof(this->unk220));

    for (int i = 0; i < 2; i++) {
        this->unk108[i].idx = -1;
        this->unk140[i].idx = -1;
        this->unk178[i].idx = -1;
        this->unk1B0[i].idx = -1;
        this->unk1E8[i].idx = -1;
        this->unk220[i].idx = -1;
    }

    for (int i = 0; i < 2; i++) {
        this->unkC0[i].unk3 = -1;
    }

    this->unk58[0].unk7 = 4;
    void *data = this->allocator->allocate(0x64010, 4, 1);
    this->unk58[0].data = data;
    this->unk58[1].data = data;
    this->unk58[1].unk7 = 5;

    FileSystem::SetNextArena(2);
    sArcKey = FileSystem::OpenArchiveDirect(NULL, "sound/sound");

    this->unk264 = 0;
}

void AudioPlayer::wakeUp(void) {
    DSE_SsdResume(0);

    if (this->streamParam[0].unk26 & 0x4) {
        DSE_SsdStopStream(this->streamParam[0].streamID, 0);
        this->streamParam[0].unk26 &= 0xFFFB;
    }
}

void AudioPlayer::quit(void) { DSE_SsdQuit(1); }

void AudioPlayer::FUN_0202b768(void) {
    this->FUN_0202c5e8();
    this->FUN_0202d228();
    this->FUN_0202d7ec();

    for (int i = 0; i < 2; i++) {
        if (this->unkBC[i].unk1) {
            this->FUN_0202cc34(this->unkBC[i].unk0);
        }
    }
}

BOOL AudioPlayer::FUN_0202b7b4(void) {
    this->FUN_0202d228();

    for (int i = 0; i < 2; i++) {
        if (this->unkC0[i].unk4 & 0x11) {
            return FALSE;
        }
    }

    return TRUE;
}

BOOL AudioPlayer::FUN_0202b7f0(void) {
    for (int i = 0; i < 2; i++) {
        if (this->unkBC[i].unk1) {
            if (!this->FUN_0202cc34(this->unkBC[i].unk0)) {
                return FALSE;
            }
        }
    }

    return TRUE;
}

BOOL AudioPlayer::FUN_0202b838(int param1, int param2, int param3) {
    int prev = this->unk264;

    if (this->unk264 != param1) {
        this->FUN_0202bad8();
    }

    this->unk264 = param1;

    switch (param1) {
    case 0:
        break;
    case 1:
        break;
    case 2:
        if (!this->FUN_0202cdd4(0, "SY_001")) {
            return FALSE;
        }
        break;
    case 3:
        BOOL v0;
        if (gLogicThink.FUN_020731a4()) {
            v0 = this->FUN_0202cdd4(0, "SY_000");
        } else {
            v0 = this->FUN_0202cdd4(0, "SY_002");
        }
        if (!v0) {
            return FALSE;
        }
        break;
    case 4:
        if (!this->FUN_0202cdd4(2, "3D_900")) {
            return FALSE;
        }
        break;
    case 5:
        this->FUN_0202bea4(0, 6);
        if (!this->FUN_0202cdd4(2, "3D_901")) {
            return FALSE;
        }
        break;
    case 7:
        if (!this->FUN_0202cdd4(1, "2D_001")) {
            return FALSE;
        }
        break;
    case 6:
        this->FUN_0202cdd4(1, "2D_002");
        if (prev == 5) {
            for (int i = 0; i < 2; i++) {
                this->FUN_0202c364(i, 0, 0);
                this->FUN_0202be18(&this->unk1E8[i]);
            }
        }
        break;
    case 8:
        char v1[32];
        if (param2) {
            sprintf(v1, "P%02d", param2);
            this->FUN_0202bec0(0, v1, 1);
        } else {
            this->FUN_0202bea4(0, 0);
        }

        if (param3) {
            sprintf(v1, "SR_%03d", param3);
            this->FUN_0202bec0(1, v1, 1);
        } else {
            this->FUN_0202bea4(1, 0);
        }
        break;
    case 9:
        BOOL v2;
        this->sleep(4);
        v2 = this->FUN_0202cdd4(1, "2D_000");
        this->sleep(4);
        if (!v2) {
            return FALSE;
        }
        break;
    case 10:
        break;
    case 11:
        break;
    }

    return TRUE;
}

void AudioPlayer::FUN_0202bad8(void) {
    switch (this->unk264) {
    case 0:
        break;
    case 1:
        break;
    case 2:
        break;
    case 3:
        break;
    case 4:
        this->FUN_0202cf00(2);
        break;
    case 5:
        this->FUN_0202cf00(2);
        break;
    case 7:
        this->FUN_0202cf00(1);
        break;
    case 6:
        this->FUN_0202cf00(1);
        this->FUN_0202cf00(2);
        break;
    case 8:
        break;
    case 9:
        this->FUN_0202cf00(1);
        break;
    case 10:
        this->FUN_0202cf00(1);
        this->FUN_0202cf00(2);
        break;
    case 11:
        break;
    default:
        break;
    }

    this->unk264 = 0;
}

void AudioPlayer::setBgmVolume(u16 volume) {
    this->bgmVolume = volume;
    this->updateBgmVolume(this->bgmGain);
}

void AudioPlayer::setBgmGain(u16 gain) {
    this->bgmGain = gain;
    this->updateBgmVolume(this->bgmGain);
}

u16 AudioPlayer::getBgmVolume(void) { return this->bgmVolume; }

void AudioPlayer::setEffectVolume(u16 volume) { this->effectVolume = volume; }

u16 AudioPlayer::getEffectVolume(void) { return this->effectVolume; }

void AudioPlayer::updateBgmVolume(u16 gain) {
    this->setPlayParamVolume(((this->bgmVolume * gain * this->unk258) >> 7) / 1000, 1000);

    for (int i = 0; i < 2; i++) {
        if (this->unkC0[i].unk6 & 2) {
            DSE_SsdSetSequenceParam(this->unk58[this->unkC0[i].unk3].sequence, &this->playParam);
        }
    }
    if (this->streamParam[0].unk26 & 2) {
        DSE_SsdSetStreamParam(this->streamParam[0].streamID, &this->playParam);
    }
}

void AudioPlayer::setPlayParamVolume(s8 target, u32 ms) {
    if (!target) {
        ms = 0;
    }

    *reinterpret_cast<u32 *>(&this->playParam.flags) = 4;
    *reinterpret_cast<u32 *>(&this->playParam.volumeTarget) = target + (u16)ms * 65536;
    *reinterpret_cast<u32 *>(&this->playParam.flags) = 4;
}

void AudioPlayer::FUN_0202bc6c(void) {
    this->FUN_0202c470(0);
    this->stopAllEffects(0);
}

void AudioPlayer::FUN_0202bc90(SSoundRecordData *record, AudioPlayer_108 *param2) {
    record->bgmidx = param2->idx + 1;
    record->resume = param2->resume;
    record->fade = param2->fade;
}

void AudioPlayer::getSoundRecordData(SSoundRecordData *record) {
    for (int i = 0; i < 2; i++) {
        if (this->unkBC[i].unk1) {
            record->effidx[i] = this->unk58[this->unkBC[i].unk0].unk4 + 1;
        } else {
            record->effidx[i] = 0;
        }
    }

    if (this->unk220[0].unk12 != 0) {
        this->FUN_0202bc90(record, this->unk220);
    } else if (this->unk178[0].unk12 != 0) {
        this->FUN_0202bc90(record, this->unk178);
    } else if (this->unk140[0].unk12 != 0) {
        this->FUN_0202bc90(record, this->unk140);
    } else {
        this->FUN_0202bc90(record, this->unk1E8);
    }
}

void AudioPlayer::loadSoundRecordData(SSoundRecordData *record) {
    for (int i = 0; i < 2; i++) {
        if ((record->effidx[i] > 0) && (FileSystem::GetFile(sArcKey, record->effidx[i] - 1))) {
            this->FUN_0202cd48(i, record->effidx[i] - 1);
        }
    }

    STD_TSPrintf(this->unk1E8[0].name, "<%3d>", record->bgmidx);

    if (FileSystem::GetFile(sArcKey, record->bgmidx - 1)) {
        this->unk1E8[0].idx = record->bgmidx - 1;
    } else {
        this->unk1E8[0].idx = -1;
    }
    this->unk1E8[0].unk12 = 1;
    this->unk1E8[0].resume = record->resume;
    this->unk1E8[0].fade = record->fade;
}

void AudioPlayer::FUN_0202be18(AudioPlayer_108 *param1) {
    MI_CpuClear8(param1, sizeof(*param1));
    param1->idx = -1;
}

void AudioPlayer::FUN_0202be40(AudioPlayer_108 *param1, const char *name) {
    char filename[128];

    STD_CopyString(param1->name, name);

    if (param1->unk12 == 1) {
        STD_TSPrintf(filename, "%s.SMW", name);
        param1->idx = FileSystem::FindFileIdx(sArcKey, filename);
    }
}

void AudioPlayer::FUN_0202bea4(int param1, int param2) {
    this->FUN_0202bec0(param1, unk_0208FA48[param2], 0);
}

void AudioPlayer::FUN_0202bec0(int param1, char *param2, s32 param3) {
    int v0 = 1;
    char *extension = std::strrchr(param2, '.');
    if ((extension) && ((STD_CompareString(extension, ".SAD") == 0) ||
                        (STD_CompareString(extension, ".sad") == 0))) {
        v0 = 2;
    }

    this->unk108[param1].unk12 = v0;

    this->FUN_0202be40(&this->unk108[param1], param2);
    if (v0 == 1) {
        if (this->unk140[param1].unk12 != 1) {
            this->FUN_0202d020(param1, this->unk108[param1].idx);
        } else if ((this->unkC0[param1].unk0 != this->unk108[param1].idx) && (param3 != 0)) {
            this->FUN_0202c44c(param1, param3);
            this->FUN_0202d020(param1, this->unk108[param1].idx);
        }
    }
}

void AudioPlayer::FUN_0202bfb8(int param1, char *param2, s32 param3) {
    int v0 = 1;
    char *extension = std::strrchr(param2, '.');
    if ((extension) && ((STD_CompareString(extension, ".SAD") == 0) ||
                        (STD_CompareString(extension, ".sad") == 0))) {
        v0 = 2;
    }

    this->unk1E8[param1].unk12 = v0;

    this->FUN_0202be40(&this->unk1E8[param1], param2);
    if (v0 == 1) {
        if (this->unk140[param1].unk12 != 1) {
            this->FUN_0202d020(param1, this->unk1E8[param1].idx);
        } else if ((this->unkC0[param1].unk0 != this->unk1E8[param1].idx) && (param3 != 0)) {
            this->FUN_0202c44c(param1, param3);
            this->FUN_0202d020(param1, this->unk1E8[param1].idx);
        }
    }
}

void AudioPlayer::FUN_0202c0b0(int param1, int param2, s32 param3, s32 param4) {
    if (param3 < 0) {
        if (this->unk178[param1].unk12 != 0) {
            this->unk220[param1].unk12 = 1;
            this->unk220[param1].fade = param4;
            this->unk220[param1].idx = param2;
            STD_TSPrintf(this->unk220[param1].name, "s<%d>", param2);
            return;
        }
    }

    if (param2 == this->unk140[param1].idx) {
        this->updateBgmVolume(this->bgmGain);
        return;
    }

    if (param3 < 0) {
        param3 = 0;
        if (this->unk140[param1].fade > 0) {
            param3 = this->unk140[param1].fade;
        }
    }

    this->unk140[param1].fade = param3;
    this->unk178[param1].unk12 = 1;
    this->unk178[param1].fade = param4;
    this->unk178[param1].idx = param2;

    STD_TSPrintf(this->unk178[param1].name, "n<%d>", param2);
}

void AudioPlayer::FUN_0202c184(int param1, int param2, s32 param3, s32 param4) {
    this->FUN_0202c1a4(param1, unk_0208FA48[param2], param3, param4);
}

void AudioPlayer::FUN_0202c1a4(int param1, char *param2, s32 param3, s32 param4) {
    if (*param2 == '\0') {
        return;
    }

    int v0 = 1;
    char *extension = std::strrchr(param2, '.');
    if ((extension) && ((STD_CompareString(extension, ".SAD") == 0) ||
                        (STD_CompareString(extension, ".sad") == 0))) {
        v0 = 2;
    }

    if (v0 == 1) {
        this->FUN_0202c0b0(param1, FileSystem::FindFileIdx(sArcKey, param2), param3, param4);
        return;
    }

    if (param3 < 0) {
        if (this->unk178[param1].unk12 != 0) {
            this->unk220[param1].unk12 = v0;
            this->unk220[param1].fade = param4;
            this->FUN_0202be40(&this->unk220[param1], param2);
            return;
        }
    }

    if (STD_CompareString(this->unk140[param1].name, param2) == 0) {
        this->updateBgmVolume(this->bgmGain);
        return;
    }

    if (param3 < 0) {
        param3 = 0;
        if (this->unk140[param1].fade > 0) {
            param3 = this->unk140[param1].fade;
        }
    }

    this->unk140[param1].fade = param3;
    this->unk178[param1].unk12 = v0;
    this->unk178[param1].fade = param4;

    this->FUN_0202be40(&this->unk178[param1], param2);
}

void AudioPlayer::FUN_0202c314(int param1, s32 param2, s32 param3) {
    if (this->unk108[param1].unk12 == 1) {
        this->FUN_0202c0b0(param1, this->unk108[param1].idx, param2, param3);
    } else {
        this->FUN_0202c1a4(param1, this->unk108[param1].name, param2, param3);
    }
}

void AudioPlayer::FUN_0202c364(int param1, s32 param2, s32 param3) {
    if (this->unk1E8[param1].unk12 == 1) {
        this->FUN_0202c0b0(param1, this->unk1E8[param1].idx, param2, param3);
    } else {
        this->FUN_0202c1a4(param1, this->unk1E8[param1].name, param2, param3);
    }
}

void AudioPlayer::FUN_0202c3b4(int param1, s32 param2) { this->FUN_0202c314(param1, 0, param2); }

void AudioPlayer::FUN_0202c3c8(int param1, int param2, s32 param3) {
    this->FUN_0202c3e0(param1, unk_0208FA48[param2], param3);
}

void AudioPlayer::FUN_0202c3e0(int param1, char *param2, s32 param3) {
    char filename[64];

    if (!std::strrchr(param2, '.')) {
        STD_TSPrintf(filename, "%s.SMW", param2);
    } else {
        STD_CopyString(filename, param2);
    }

    this->FUN_0202c1a4(param1, filename, 0, param3);
}

void AudioPlayer::FUN_0202c44c(int param1, s32 param2) {
    this->unk140[param1].fade = param2;
    this->unk178[param1].unk12 = -1;
    this->unk178[param1].fade = 0;
}

void AudioPlayer::FUN_0202c470(s32 param1) {
    for (int i = 0; i < 2; i++) {
        this->FUN_0202c44c(i, param1);
    }
}

void AudioPlayer::FUN_0202c4a0(s32 param1) { this->FUN_0202c470(param1); }

void AudioPlayer::FUN_0202c4ac(int param1, s32 param2) {
#ifndef VSCODE_INTELLISENSE
    this->unk178[param1].name = this->unk1B0[param1].name;
#endif
    this->unk178[param1].idx = this->unk1B0[param1].idx;
    this->unk178[param1].unk12 = this->unk1B0[param1].unk12;
    this->unk178[param1].resume = this->unk1B0[param1].resume;
    this->unk178[param1].fade = this->unk1B0[param1].fade;
    this->unk178[param1].resume = 1;
    this->unk178[param1].fade = param2;

    this->FUN_0202be18(&this->unk1B0[param1]);
}

void AudioPlayer::FUN_0202c530(s32 param1) {
    for (int i = 0; i < 2; i++) {
        this->FUN_0202c4ac(i, param1);
    }
}

BOOL AudioPlayer::FUN_0202c560(int param1) {
    switch (this->unk140[param1].unk12) {
    case 1:
        return this->FUN_0202d184(param1);
    case 2:
        return this->FUN_0202d6c4(0);
    default:
        return FALSE;
    }
}

BOOL AudioPlayer::FUN_0202c5a4(int param1) {
    if (STD_CompareString(this->unk140[param1].name, this->unk108[param1].name) == 0) {
        return this->FUN_0202c560(param1);
    }

    return FALSE;
}

void AudioPlayer::FUN_0202c5e8(void) {
    for (int i = 0; i < 2; i++) {
        if (this->unk178[i].unk12 == 0) {
            continue;
        }

        if (this->unk140[i].idx >= 0) {
            if (this->unk58[this->unkC0[i].unk3].unk6 == 1) {
                OS_Sleep(1);
                continue;
            }

#ifndef VSCODE_INTELLISENSE
            this->unk1B0[i].name = this->unk140[i].name;
#endif
            this->unk1B0[i].idx = this->unk140[i].idx;
            this->unk1B0[i].unk12 = this->unk140[i].unk12;
            this->unk1B0[i].resume = this->unk140[i].resume;
            this->unk1B0[i].fade = this->unk140[i].fade;
            this->unk140[i].idx = -1;
            this->unk140[i].name[0] = '\0';
        }

        if (this->unk140[i].unk12 == 1) {
            if ((this->unkC0[i].unk6 & 2)) {
                if (this->unk140[i].fade >= 0) {
                    this->FUN_0202d1ec(i, this->unk140[i].fade);
                }
                continue;
            }
            if (this->unkC0[i].unk6 & 4) {
                continue;
            }
        } else if (this->unk140[i].unk12 == 2) {
            if (this->streamParam[0].unk26 & 2) {
                if (this->unk140[i].fade >= 0) {
                    this->FUN_0202d774(0, this->unk140[i].fade);
                }
                continue;
            }
            if (this->streamParam[0].unk26 & 4) {
                continue;
            }
        }

        switch (this->unk178[i].unk12) {
        case 1:
            this->FUN_0202d020(i, this->unk178[i].idx);
            if (this->unk178[i].resume) {
                this->FUN_0202d148(i, this->unk178[i].fade);
            } else {
                this->FUN_0202d10c(i, this->unk178[i].fade);
            }
            break;
        case 2:
            if (this->unk178[i].resume) {
                this->FUN_0202d5d4(0, 0);
            } else {
                this->FUN_0202d594(0, this->unk178[i].name);
            }
            break;
        case -1:
            this->unk178[i].unk12 = this->unk140[i].unk12;
            break;
        default:
            this->FUN_0202be18(&this->unk178[i]);
            break;
        }

#ifndef VSCODE_INTELLISENSE
        this->unk140[i].name = this->unk178[i].name;
#endif
        this->unk140[i].idx = this->unk178[i].idx;
        this->unk140[i].unk12 = this->unk178[i].unk12;
        this->unk140[i].resume = this->unk178[i].resume;
        this->unk140[i].fade = this->unk178[i].fade;

        this->FUN_0202be18(&this->unk178[i]);

        if (this->unk220[i].unk12 == 0) {
            continue;
        }

        this->unk140[i].fade = -1;

#ifndef VSCODE_INTELLISENSE
        this->unk178[i].name = this->unk220[i].name;
#endif
        this->unk178[i].idx = this->unk220[i].idx;
        this->unk178[i].unk12 = this->unk220[i].unk12;
        this->unk178[i].resume = this->unk220[i].resume;
        this->unk178[i].fade = this->unk220[i].fade;

        this->FUN_0202be18(&this->unk220[i]);
    }
}

s8 AudioPlayer::FUN_0202c8e4(int param1) {
    for (int i = 0; i < 5; i++) {
        if ((param1 != 4) && (param1 != 5)) {
            if ((this->unk58[i].unk7 != 4) && (this->unk58[i].unk7 != 5)) {
                if (this->unk58[i].unk6 == 0)
                    return i;
            }
        } else {
            if (param1 == this->unk58[i].unk7) {
                return i;
            }
        }
    }

    return -1;
}

int AudioPlayer::FUN_0202c958(int param1, int param2) {
    int v0 = this->FUN_0202c8e4(param1);
    if (v0 < 0) {
        return v0;
    }

    switch (this->unk58[v0].unk6) {
    case 1:
    case 2:
        if (param2 != this->unk58[v0].unk4) {
            /* fallthrough */
        case 0:
            this->unk58[v0].unk4 = param2;
            int ret = this->FUN_0202b330(param2, &this->unk58[v0].data, FALSE, param1, NULL);
            if (ret <= 0) {
                return -1;
            }
            this->unk58[v0].unk6 = 2;
        }
        break;
    }

    this->unk58[v0].unk7 = param1;
    this->FUN_0202cc34(v0);

    return v0;
}

void AudioPlayer::FUN_0202ca14(int param1) {
    if (!this->unk58[param1].unk6) {
        return;
    }

    if (this->unk58[param1].unk6 == 3) {
        switch (this->unk58[param1].unk7) {
        case 1:
        case 4:
            DSE_SsdRemoveWaveData(this->unk58[param1].sequence);
            break;
        case 2:
            DSE_SsdStopEffectByDataID(this->unk58[param1].sequence);
            DSE_SsdRemoveWaveData(this->unk58[param1].bank);
            DSE_SsdRemoveEffectData(this->unk58[param1].sequence);
            break;
        case 3:
        case 5:
            DSE_SsdRemoveWaveData(this->unk58[param1].bank);
            DSE_SsdRemoveSequenceData(this->unk58[param1].sequence);
            break;
        }
    }

    if ((this->unk58[param1].unk7 != 4) && (this->unk58[param1].unk7 != 5)) {
        if (this->unk58[param1].unk6 == 1) {
            void *data = this->unk58[param1].data;
            if (this->allocator->fileIO) {
                this->allocator->fileIO->close(data, FALSE);
            }
        }

        this->allocator->deallocate(this->unk58[param1].data);
        MI_CpuClear8(&this->unk58[param1], sizeof(this->unk58[param1]));
        this->unk58[param1].unk4 = -1;
    } else {
        this->unk58[param1].unk6 = 2;
        if (this->unk58[param1].unk7 == 4) {
            this->unk58[1].data = NULL;
        }
    }
}

int AudioPlayer::FUN_0202cb64(int param1, int param2) {
    int v0 = this->FUN_0202c8e4(param1);
    if (v0 < 0) {
        return v0;
    }

    switch (this->unk58[v0].unk6) {
    case 1:
    case 2:
        void *data;

        if (param2 != this->unk58[v0].unk4) {
            data = this->unk58[v0].data;
            if (this->allocator->fileIO) {
                this->allocator->fileIO->close(data, FALSE);
            }
            /* fallthrough */
        case 0:
            this->unk58[v0].unk4 = param2;
            int ret = this->FUN_0202b330(param2, &this->unk58[v0].data, TRUE, param1,
                                         &this->unk58[v0].fileKey);
            if (ret <= 0) {
                return -1;
            }
            this->unk58[v0].unk6 = 1;
        }
        break;
    }

    this->unk58[v0].unk7 = param1;

    return v0;
}

BOOL AudioPlayer::FUN_0202cc34(int param1) {
    switch (this->unk58[param1].unk6) {
    case 1:
        if (FileSystem::IsFileBusy(this->unk58[param1].fileKey)) {
            return FALSE;
        }
        this->unk58[param1].unk6 = 2;
        break;
    case 2:
        break;
    case 3:
        return TRUE;
    default:
        return FALSE;
    }

    u8 *data;
    u32 *offsets;
    switch (this->unk58[param1].unk7) {
    case 1:
    case 4:
        this->unk58[param1].sequence = DSE_SsdAddWaveData(this->unk58[param1].data, 0, NULL);
        break;
    case 2:
        offsets = reinterpret_cast<u32 *>(this->unk58[param1].data);
        data = reinterpret_cast<u8 *>(this->unk58[param1].data) + offsets[0];
        this->unk58[param1].sequence = DSE_SsdAddEffectData(data);
        data = reinterpret_cast<u8 *>(this->unk58[param1].data) + offsets[2];
        this->unk58[param1].bank = DSE_SsdAddWaveData(data, 0, NULL);
        break;
    case 3:
    case 5:
        offsets = reinterpret_cast<u32 *>(this->unk58[param1].data);
        data = reinterpret_cast<u8 *>(this->unk58[param1].data) + offsets[0];
        this->unk58[param1].sequence = DSE_SsdAddSequenceData(data);
        data = reinterpret_cast<u8 *>(this->unk58[param1].data) + offsets[2];
        this->unk58[param1].bank = DSE_SsdAddWaveData(data, 0, NULL);
        break;
    }

    this->unk58[param1].unk6 = 3;

    return TRUE;
}

BOOL AudioPlayer::FUN_0202cd48(int param1, int param2) {
    if (param1 >= 2) {
        param1 = 1;
    }

    sUnkIdx = param1;

    if (param2 != this->unk58[this->unkBC[param1].unk0].unk4) {
        if (this->unkBC[param1].unk1) {
            this->FUN_0202ca14(this->unkBC[param1].unk0);
        }

        this->unkBC[param1].unk0 = this->FUN_0202c958(2, param2);
        if (this->unkBC[param1].unk0 < 0) {
            return FALSE;
        }
    }

    this->unkBC[param1].unk1 = 1;

    return TRUE;
}

BOOL AudioPlayer::FUN_0202cdd4(int param1, const char *param2) {
    char filename[128];

    STD_TSPrintf(filename, "%s.SEW", param2);

    return this->FUN_0202cd48(param1, FileSystem::FindFileIdx(sArcKey, filename));
}

BOOL AudioPlayer::FUN_0202ce24(int param1, int param2) {
    if (param1 >= 2) {
        param1 = 1;
    }

    sUnkIdx = param1;

    if (param2 != this->unk58[this->unkBC[param1].unk0].unk4) {
        if (this->unkBC[param1].unk1) {
            this->FUN_0202ca14(this->unkBC[param1].unk0);
        }

        this->unkBC[param1].unk0 = this->FUN_0202cb64(2, param2);
        if (this->unkBC[param1].unk0 < 0) {
            return FALSE;
        }
    }

    this->unkBC[param1].unk1 = 1;

    return TRUE;
}

BOOL AudioPlayer::FUN_0202ceb0(int param1, const char *param2) {
    char filename[128];

    STD_TSPrintf(filename, "%s.SEW", param2);

    return this->FUN_0202ce24(param1, FileSystem::FindFileIdx(sArcKey, filename));
}

void AudioPlayer::FUN_0202cf00(int param1) {
    if (param1 >= 2) {
        param1 = 1;
    }

    if (this->unkBC[param1].unk1) {
        this->FUN_0202ca14(this->unkBC[param1].unk0);
        this->unkBC[param1].unk1 = 0;
    }
}

s32 AudioPlayer::FUN_0202cf40(int param1) {
    int v0 = param1 >> 14;

    if (v0 >= 2) {
        v0 = 1;
    }

    return this->unk58[this->unkBC[v0].unk0].sequence + ((u32)(param1 << 18) >> 2);
}

void AudioPlayer::playEffect(int param1) {
    this->setPlayParamVolume((this->effectVolume * this->effetGain * this->unk258 >> 7) / 1000, 0);
    DSE_SsdPlayEffectParam(this->FUN_0202cf40(param1), 0, &this->playParam);
}

void AudioPlayer::stopEffect(int param1, u32 fadeTime) {
    DSE_SsdStopEffect(this->FUN_0202cf40(param1), 0, fadeTime);
}

void AudioPlayer::stopAllEffects(u32 fadeTime) { DSE_SsdStopEffectAll(fadeTime); }

int AudioPlayer::isPlayingEffect(int param1) {
    return DSE_SsdIsPlayEffect(this->FUN_0202cf40(param1), 0);
}

void AudioPlayer::FUN_0202d020(int param1, int param2) {
    if (param2 != this->unkC0[param1].unk0) {
        this->unkC0[param1].unk0 = param2;
        this->unkC0[param1].unk4 |= 0xC;
        if (param2 >= 0) {
            this->unkC0[param1].unk4 |= 0x10;
        }
    }
}

BOOL AudioPlayer::FUN_0202d060(int param1) {
    if (this->unkC0[param1].unk4 & 0x10) {
        return FALSE;
    }

    if (this->unkC0[param1].unk6 & 0x1) {
        return TRUE;
    }

    return FALSE;
}

void AudioPlayer::FUN_0202d08c(int param1) {
    if (!this->unkC0[param1].unk6) {
        return;
    }

    s32 id = this->unk58[this->unkC0[param1].unk3].sequence;
    if (DSE_SsdIsPlaySequence(id) > 0) {
        DSE_SsdStopSequence(id, 0);
    }

    this->FUN_0202ca14(this->unkC0[param1].unk3);
    this->unkC0[param1].unk3 = -1;
    this->unkC0[param1].unk6 &= 0xFFFC;
}

void AudioPlayer::FUN_0202d10c(int param1, s32 param2) {
    this->unkC0[param1].unk4 &= 0xFFFB;
    this->unkC0[param1].unk4 |= 0x2;
    this->unkC0[param1].fadeTime = param2;
}

void AudioPlayer::FUN_0202d148(int param1, s32 param2) {
    this->unkC0[param1].unk4 &= 0xFFFB;
    this->unkC0[param1].unk4 |= 0x82;
    this->unkC0[param1].fadeTime = param2;
}

BOOL AudioPlayer::FUN_0202d184(int param1) {
    if (this->unkC0[param1].unk6 & 0x4) {
        return FALSE;
    }

    if ((this->unkC0[param1].unk6 & 0x2) &&
        (DSE_SsdIsPlaySequence(this->unk58[this->unkC0[param1].unk3].sequence) > 0)) {
        return TRUE;
    }

    this->unkC0[param1].unk6 &= 0xFFFD;

    return FALSE;
}

void AudioPlayer::FUN_0202d1ec(int param1, s32 param2) {
    this->unkC0[param1].unk4 &= 0xFF7D;
    this->unkC0[param1].unk4 |= 0x4;
    this->unkC0[param1].fadeTime = param2;
}

void AudioPlayer::FUN_0202d228(void) {
    s32 id;

    for (int i = 0; i < 2; i++) {
        id = this->unk58[this->unkC0[i].unk3].sequence;

        if (this->unkC0[i].unk4 & 0x4) {
            if (DSE_SsdIsPlaySequence(id) > 0) {
                DSE_SsdStopSequence(id, this->unkC0[i].fadeTime);
                this->unkC0[i].unk6 |= 0x4;
                this->unkC0[i].unk6 &= 0xFFFD;
            }
            this->unkC0[i].fadeTime = 0;
            this->unkC0[i].unk4 &= 0xFFFB;
        }
        if (this->unkC0[i].unk6 & 0x4) {
            if (DSE_SsdIsPlaySequence(id) > 0) {
                break;
            }
            this->unkC0[i].unk6 &= 0xFFFB;
        }
        if (this->unkC0[i].unk4 & 0x8) {
            if (this->unkC0[i].unk6 & 0x1) {
                this->FUN_0202d08c(i);
            }
            this->unkC0[i].unk6 &= 0xFFFE;
            this->unkC0[i].unk4 &= 0xFFF7;
        }
        if (this->unkC0[i].unk4 & 0x10) {
            this->unkC0[i].unk4 &= 0xFFEF;

            if (i == 0) {
                this->unkC0[i].unk3 = this->FUN_0202cb64(5, this->unkC0[i].unk0);
            } else {
                this->unkC0[i].unk3 = this->FUN_0202cb64(3, this->unkC0[i].unk0);
            }

            if (this->unkC0[i].unk3 < 0) {
                continue;
            }

            this->unkC0[i].unk6 |= 0x10;
            this->unkC0[i].unk4 |= 0x1;
        }
        if (this->unkC0[i].unk4 & 0x1) {
            if (!this->FUN_0202cc34(this->unkC0[i].unk3)) {
                continue;
            }

            id = this->unk58[this->unkC0[i].unk3].sequence;

            this->unkC0[i].unk4 &= 0xFFFE;
            this->unkC0[i].unk6 |= 0x1;
        }
        if (this->unkC0[i].unk4 & 0x2) {
            if (this->unkC0[i].unk6 & 0x1) {
                if ((this->unkC0[i].unk6 & 0x2) == FALSE) {
                    s8 v1 = 1;
                    if (this->unkC0[i].unk4 & 0x80) {
                        v1 = 0;
                    }
                    this->setPlayParamVolume(
                        ((this->bgmVolume * this->bgmGain * this->unk258) >> 7) / 1000,
                        this->unkC0[i].fadeTime);
                    DSE_SsdPlaySequence(id, &this->playParam, v1);
                }
                this->unkC0[i].fadeTime = 0;
                this->unkC0[i].unk6 |= 0x2;
            }
            this->unkC0[i].unk4 &= 0xFF7D;
        }
    }
}

BOOL AudioPlayer::FUN_0202d4c4(int param1, const char *filename, s8 param3) {
    FSFileID fileID;
    char path[32];

    STD_CopyString(path, "/data_iz/sound/");
    STD_ConcatenateString(path, filename);

    if (!FS_ConvertPathToFileID(&fileID, path)) {
        return FALSE;
    }

    if (STD_CompareString(this->streamParam[param1].name, filename) != 0) {
        this->FUN_0202d578(param1);
    }

    STD_CopyString(this->streamParam[param1].name, filename);

    this->streamParam[param1].unk21 = param3;
    this->streamParam[param1].unk24 |= 0x1;

    return TRUE;
}

void AudioPlayer::FUN_0202d578(int param1) { this->streamParam[param1].unk24 |= 0xC; }

void AudioPlayer::FUN_0202d594(int param1, const char *filename) {
    if ((!filename) || (this->FUN_0202d4c4(param1, filename, 0))) {
        this->streamParam[param1].unk24 |= 0x2;
    }
}

BOOL AudioPlayer::FUN_0202d5d4(int param1, int param2) {
    u32 fps = gMoviePlayer.getVideoFps();

    if (param2 > 0) {
        if (DSE_SsdGetStreamSizeByTime(this->streamParam[param1].streamID, 1000) < 0x22140) {
            u32 time = ((u64)16777216000 * (gMoviePlayer.currentFrame + gMoviePlayer.unk198)) / fps;
            DSE_SsdSetStreamPlayPositionByTime(this->streamParam[param1].streamID, time);
        } else {
            u32 time = ((u64)16777216000 * (gMoviePlayer.currentFrame + gMoviePlayer.unk198)) / fps;
            time = (s32)time / 30;
            DSE_SsdSetStreamPlayPositionByTime(this->streamParam[param1].streamID, time);
        }
    } else {
        DSE_SsdSetStreamPlayPositionByTime(this->streamParam[param1].streamID, 0);
    }

    this->streamParam[param1].unk24 |= 0x82;

    return TRUE;
}

BOOL AudioPlayer::FUN_0202d6c4(int param1) {
    if (this->streamParam[param1].unk24 & 0x4) {
        return FALSE;
    }

    if (this->streamParam[param1].unk26 & 0x2) {
        if (DSE_SsdIsPlayStream(this->streamParam[param1].streamID) > 0) {
            return TRUE;
        }
    }

    this->streamParam[param1].unk26 &= 0xFFFD;

    return FALSE;
}

BOOL AudioPlayer::FUN_0202d724(const char *name) {
    for (int i = 0; i < 1; i++) {
        if (STD_CompareString(this->streamParam[i].name, name) == 0) {
            return this->FUN_0202d6c4(i);
        }
    }

    return FALSE;
}

void AudioPlayer::FUN_0202d774(int param1, s32 param2) {
    this->streamParam[param1].unk2C = param2;
    this->streamParam[param1].unk24 |= 0x4;
}

void AudioPlayer::FUN_0202d798(const char *name, s32 param2) {
    for (int i = 0; i < 1; i++) {
        if (STD_CompareString(this->streamParam[i].name, name) == 0) {
            this->FUN_0202d774(i, param2);
            return;
        }
    }
}

void AudioPlayer::FUN_0202d7ec(void) {
    s32 id;

    for (int i = 0; i < 1; i++) {
        id = this->streamParam[i].streamID;

        if (this->streamParam[i].unk20) {
            this->streamParam[i].unk20 -= gDeltaTime;

            if (this->streamParam[i].unk20 < 0) {
                this->streamParam[i].unk20 = 0;
            }
        }

        if (this->streamParam[i].unk24 & 0x4) {
            this->streamParam[i].unk24 &= 0xFFFB;

            if (DSE_SsdIsPlayStream(id) > 0) {
                DSE_SsdStopStream(id, this->streamParam[i].unk2C);
            }

            this->streamParam[i].unk26 |= 0x4;
            this->streamParam[i].unk26 &= 0xFFFD;
            this->streamParam[i].unk2C = 0;
        }

        if (this->streamParam[i].unk26 & 0x4) {
            if (DSE_SsdIsPlayStream(id) > 0) {
                return;
            }

            this->streamParam[i].unk26 &= 0xFFFB;
            this->streamParam[i].unk20 = 0;
        }

        if ((this->streamParam[i].unk24 & 0x8) && ((this->streamParam[i].unk26 & 0x4) == FALSE)) {
            if (this->streamParam[i].unk26 & 0x1) {
                DSE_SsdCloseStream(id);
                this->streamParam[i].unk26 |= 0x8;
            }

            this->streamParam[i].unk26 &= 0xFFDE;
            this->streamParam[i].unk24 &= 0xFFF7;
        }

        if (this->streamParam[i].unk26 & 0x8) {
            if (DSE_SsdIsOpenStream(id) > 0) {
                return;
            }

            this->streamParam[i].unk26 &= 0xFFF7;
            this->streamParam[i].unk20 = 0;
        }

        if (this->streamParam[i].unk24 & 0x1) {
            this->streamParam[i].unk24 &= 0xFFFE;

            if ((this->streamParam[i].unk26 & 0x1) == FALSE) {
                char path[64];
                STD_CopyString(path, "/data_iz/sound/");
                STD_ConcatenateString(path, this->streamParam[i].name);

                DSE_SsdSetMonoToStereo(this->streamParam[i].unk21 != 0);

                this->streamParam[i].unk21 = 0;

                s32 newId = DSE_SsdOpenStreamByFile(path, 0x2000, 1);
                if (newId < 0) {
                    continue;
                }
                this->streamParam[i].streamID = newId;

                id = this->streamParam[i].streamID;
            }

            this->streamParam[i].unk26 |= 0x1;
        }

        if ((this->streamParam[i].unk24 & 0x2) && (this->streamParam[i].unk20 == 0)) {
            if (this->streamParam[i].unk26 & 0x1) {
                if (DSE_SsdIsOpenStream(id) <= 0) {
                    return;
                }

                if ((this->streamParam[i].unk26 & 0x20) == FALSE) {
                    this->streamParam[i].unk26 |= 0x20;
                    return;
                }

                if (!this->FUN_0202d6c4(i)) {
                    int v0 = ((this->bgmVolume * this->bgmGain * this->unk258) >> 7) / 1000;
                    this->setPlayParamVolume(v0, this->streamParam[i].unk2C);
                    if ((this->streamParam[i].unk24 & 0x80) == FALSE) {
                        DSE_SsdPlayStream(id, &this->playParam, TRUE);
                    } else {
                        DSE_SsdPlayStream(id, &this->playParam, FALSE);
                    }
                }
                this->streamParam[i].unk26 |= 2;
            }
            this->streamParam[i].unk24 &= 0xFF7D;
        }

        if (this->streamParam[i].unk26 & 0x2) {
            if (DSE_SsdIsPlayStream(id) == 0) {
                this->FUN_0202d578(i);
            }
        }
    }
}

void AudioPlayer::sleep(u32 msec) {
    if ((this->streamParam[0].unk24 | this->streamParam[0].unk26) & 0x3) {
        if (DSE_SsdIsPlayStream(this->streamParam[0].streamID) != 0) {
            OS_Sleep(msec);
        }
    }
}

u32 AudioPlayer::FUN_0202dbd0(int param1) {
    u32 v0 = (this->streamParam[param1].unk26 | (this->streamParam[param1].unk24 << 0x10));

    if (this->streamParam[param1].unk24 & 0xC) {
        v0 = 0;
    }
    if (this->streamParam[param1].unk26 & 0xC) {
        v0 = 0;
    }

    return v0;
}
