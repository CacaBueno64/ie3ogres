#ifndef DSE_H
#define DSE_H

#include <nitro.h>

#ifdef __cplusplus
extern "C" {
#endif

typedef struct {
    void *unusedAlloc;
    void *unusedFree;
    void *unusedAllocatorArg;
} DSEAllocDataRec;

typedef struct {
    u32 validity;
    char *licenseCode; /* from 3ds debug prints */
    void *heapStart;
    u32 heapSize;
    u8 mainThreadPriority; /* from 3ds debug prints */
    u8 mainThreadMode; /* from 3ds debug prints */
    u8 romThreadPriority; /* from 3ds debug prints */
    u8 pad13;
    s16 voiceLow; /* from 3ds debug prints */
    s16 voiceHigh; /* from 3ds debug prints */
    u16 nSequences;
    u16 nChannels;
    DSEAllocDataRec allocData;
    void *errorConsoleCallback;
    void *warningConsoleCallback;
    u32 unk30;
    u8 unk34[0xC];
} DSESsdInitDataRec;

typedef struct {
    u8 dataThreadPriority;
    u8 readThreadPriority;
    u8 maxOpen;
    u8 numChannel; /* from 3ds symbols */
    u8 voiceNumber; /* from 3ds symbols */
    s8 unk5;
    s8 unk6;
    u8 pad7;
    u32 unk8;
    u32 unkC;
    s32 ioBufferSize;
    void *allocFunc;
    void *freeFunc;
    void *allocArg;
    s32 romAccessSize;
} DSESsdStreamInitDataRec;

typedef struct {
    u8 flags;
    u8 unk1;
    s16 unk2;
    s16 tpqnTarget;
    u16 tpqnMs;
    s16 bendTarget;
    u16 bendMs;
    u16 volumeTarget;
    u16 volumeMs;
    u16 panTarget;
    u16 panMs;
} DSESsdPlayNormalParamRecord;

int DSE_SsdInit(DSESsdInitDataRec *init);
int DSE_SsdResume(u16 fadeTime);
int DSE_SsdStopStream(s32 id, u16 fadeTime);
int DSE_SsdQuit(u8 arg);
int DSE_SsdSetSequenceParam(s32 id, DSESsdPlayNormalParamRecord *params);
void DSE_SsdStopEffectByDataID(u16 id);
int DSE_SsdRemoveWaveData(u16 id);
int DSE_SsdRemoveEffectData(u16 id);
s32 DSE_SsdRemoveSequenceData(s32 id);
int DSE_SsdPlayEffectParam(s32 id, u16 param1, DSESsdPlayNormalParamRecord *params);
int DSE_SsdStopEffect(s32 id, u16 param1, u16 fadeTime);
void DSE_SsdStopEffectAll(u16 fadeTime);
int DSE_SsdIsPlayEffect(s32 id, u16 param1);
int DSE_SsdIsPlaySequence(s32 id);
int DSE_SsdStopSequence(s32 id, u16 fadeTime);
int DSE_SsdPlaySequence(s32 id, DSESsdPlayNormalParamRecord *params, s8 param2);
s32 DSE_SsdGetStreamSizeByTime(s32 id, u32 ms);
s32 DSE_SsdSetStreamPlayPositionByTime(int id, u32 ms);
int DSE_SsdIsPlayStream(s32 id);
int DSE_SsdCloseStream(s32 id);
int DSE_SsdIsOpenStream(s32 id);
int DSE_SsdSetMonoToStereo(s8 param0);
int DSE_SsdOpenStreamByFile(const char *path, s32 fifoSize, s8 param2);
int DSE_SsdPlayStream(s32 id, DSESsdPlayNormalParamRecord *params, BOOL param2);
int DSE_SsdSetStreamParam(s32 id, DSESsdPlayNormalParamRecord *params);

void DSE_SsdInitSsdInitData(DSESsdInitDataRec *init);
int DSE_SsdSetInitDataSoundHeap(DSESsdInitDataRec *init, void *start, u32 size);
int DSE_SsdSetInitDataMainThread(DSESsdInitDataRec *init, u8 mode, u8 prio);
int DSE_SsdSetInitDataRomThread(DSESsdInitDataRec *init, u8 prio);
int DSE_SsdSetInitDataVoiceRange(DSESsdInitDataRec *init, s16 low, s16 high);
int DSE_SsdSetEffectPolyMax(int n_sequences, int n_channels);

void DSE_SsdInitStreamInitRec(DSESsdStreamInitDataRec *init);
int DSE_SsdSetStreamInitDataThreadPriority(DSESsdStreamInitDataRec *init, u8 prio);
int DSE_SsdSetStreamInitReadThreadPriority(DSESsdStreamInitDataRec *init, u8 prio);
int DSE_SsdSetStreamInitMaxOpen(DSESsdStreamInitDataRec *init, u8 max);
int DSE_SsdSetStreamInitVoiceRange(DSESsdStreamInitDataRec *init, u8 low, u8 high);
int DSE_SsdSetStreamInitIOBufferSize(DSESsdStreamInitDataRec *init, s32 size);
int DSE_SsdSetStreamInitRomAccessSize(DSESsdStreamInitDataRec *init, s32 size);
int DSE_SsdInitStream(DSESsdStreamInitDataRec *init);

s32 DSE_SsdAddEffectData(void *sedl);
s32 DSE_SsdAddSequenceData(void *smdl);
s32 DSE_SsdAddWaveData(void *swdl, int param1, void *param2);

#ifdef __cplusplus
} /* extern "C" */
#endif

#endif //DSE_H