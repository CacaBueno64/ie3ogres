#ifndef IE3OGRES_AUDIOPLAYER_H
#define IE3OGRES_AUDIOPLAYER_H

#pragma once

#include <nitro.h>
#include <DSE.h>

#include "movieplayer.hpp"
#include "allocator.hpp"
#include "filesystem.hpp"
#include "graphics.hpp"
#include "logicthink.hpp"
#include "cnvdat.h"

class AudioPlayer {
    public:
        typedef struct {
            void *data;
            u32 unk4;
            u32 unk8;
        } AudioPlayer_58_Data;

        typedef struct {
            void *data;
            s16 unk4;
            u8 unk6;
            u8 unk7;
            filekey_t fileKey;
            u8 pad9;
            u8 padA;
            u8 padB;
            s32 sequence;
            s32 bank;
        } AudioPlayer_58;

        typedef struct {
            s8 unk0;
            u8 unk1;
        } AudioPlayer_BC;

        typedef struct {
            s16 unk0;
            u8 unk2;
            s8 unk3;
            u16 unk4;
            u16 unk6;
            u32 fadeTime;
        } AudioPlayer_C0;

        typedef struct {
            char name[32];
            s8 unk20;
            s8 unk21;
            u8 unk22;
            u8 unk23;
            u16 unk24;
            u16 unk26;
            s32 streamID;
            s32 unk2C;
        } StreamParam;

        typedef struct {
            char name[16];
            s16 idx;
            s16 unk12;
            s16 resume;
            u8 pad16;
            u8 pad17;
            s32 fade;
        } AudioPlayer_108;

        static BOOL FUN_0202b330(s32 fileIdx, void **data, BOOL withHandle, int param3, filekey_t *keyOut);

        /* 0x0202b3dc */ AudioPlayer();
        /* 0x0202b3e0 */ ~AudioPlayer();

        /* 0x0202b448 */ void initDSE(Allocator *allocator);
        /* 0x0202b714 */ void wakeUp(void);
        /* 0x0202b758 */ void quit(void);
        /* 0x0202b768 */ void FUN_0202b768(void);
        BOOL FUN_0202b7b4(void);
        BOOL FUN_0202b7f0(void);
        BOOL FUN_0202b838(int param1, int param2, int param3);
        void FUN_0202bad8(void);
        /* 0x0202bb58 */ void setBgmVolume(u16 volume);
        /* 0x0202bb70 */ void setBgmGain(u16 gain);
        /* 0x0202bb88 */ u16 getBgmVolume(void);
        /* 0x0202bb94 */ void setEffectVolume(u16 volume);
        /* 0x0202bba0 */ u16 getEffectVolume(void);
        /* 0x0202bbac */ void updateBgmVolume(u16 gain);
        /* 0x0202bc48 */ void setPlayParamVolume(s8 target, u32 ms);
        void FUN_0202bc6c(void);
        void FUN_0202bc90(SSoundRecordData *record, AudioPlayer_108 *param2);
        /* 0x0202bcb0 */ void getSoundRecordData(SSoundRecordData *record);
        /* 0x0202bd54 */ void loadSoundRecordData(SSoundRecordData *record);
        void FUN_0202be18(AudioPlayer_108 *param1);
        void FUN_0202be40(AudioPlayer_108 *param1, const char *name);
        void FUN_0202bea4(int param1, int param2);
        void FUN_0202bec0(int param1, char *param2, s32 param3);
        void FUN_0202bfb8(int param1, char *param2, s32 param3);
        void FUN_0202c0b0(int param1, int param2, s32 param3, s32 param4);
        void FUN_0202c184(int param1, int param2, s32 param3, s32 param4);
        void FUN_0202c1a4(int param1, char *param2, s32 param3, s32 param4);
        void FUN_0202c314(int param1, s32 param2, s32 param3);
        void FUN_0202c364(int param1, s32 param2, s32 param3);
        void FUN_0202c3b4(int param1, s32 param2);
        void FUN_0202c3c8(int param1, int param2, s32 param3);
        void FUN_0202c3e0(int param1, char *param2, s32 param3);
        void FUN_0202c44c(int param1, s32 param2);
        void FUN_0202c470(s32 param1);
        void FUN_0202c4a0(s32 param1);
        void FUN_0202c4ac(int param1, s32 param2);
        void FUN_0202c530(s32 param1);
        BOOL FUN_0202c560(int param1);
        BOOL FUN_0202c5a4(int param1);
        void FUN_0202c5e8(void);
        s8 FUN_0202c8e4(int param1);
        int FUN_0202c958(int param1, int param2);
        void FUN_0202ca14(int param1);
        int FUN_0202cb64(int param1, int param2);
        BOOL FUN_0202cc34(int param1);
        BOOL FUN_0202cd48(int param1, int param2);
        BOOL FUN_0202cdd4(int param1, const char *param2);
        BOOL FUN_0202ce24(int param1, int param2);
        BOOL FUN_0202ceb0(int param1, const char *param2);
        void FUN_0202cf00(int param1);
        s32 FUN_0202cf40(int param1);
        /* 0x0202cf6c */ void playEffect(int param1);
        /* 0x0202cfd8 */ void stopEffect(int param1, u32 fadeTime);
        /* 0x0202cff8 */ void stopAllEffects(u32 fadeTime);
        /* 0x0202d00c */ int isPlayingEffect(int param1);
        void FUN_0202d020(int param1, int param2);
        BOOL FUN_0202d060(int param1);
        void FUN_0202d08c(int param1);
        void FUN_0202d10c(int param1, s32 param2);
        void FUN_0202d148(int param1, s32 param2);
        BOOL FUN_0202d184(int param1);
        void FUN_0202d1ec(int param1, s32 param2);
        void FUN_0202d228(void);
        BOOL FUN_0202d4c4(int param1, const char *filename, s8 param3);
        void FUN_0202d578(int param1);
        void FUN_0202d594(int param1, const char *filename);
        BOOL FUN_0202d5d4(int param1, int param2);
        BOOL FUN_0202d6c4(int param1);
        BOOL FUN_0202d724(const char *name);
        void FUN_0202d774(int param1, s32 param2);
        void FUN_0202d798(const char *name, s32 param2);
        void FUN_0202d7ec(void);
        /* 0x0202db98 */ void sleep(u32 msec);
        u32 FUN_0202dbd0(int param1);

    Allocator *allocator;
    DSESsdStreamInitDataRec streamInit;
    u8 unk28[0x1C];
    DSESsdPlayNormalParamRecord playParam;
    AudioPlayer_58 unk58[5];
    AudioPlayer_BC unkBC[2];
    AudioPlayer_C0 unkC0[2];
    StreamParam streamParam[1];
    AudioPlayer_108 unk108[2];
    AudioPlayer_108 unk140[2];
    AudioPlayer_108 unk178[2];
    AudioPlayer_108 unk1B0[2];
    AudioPlayer_108 unk1E8[2];
    AudioPlayer_108 unk220[2];
    u16 unk258;
    u16 bgmVolume;
    u16 effectVolume;
    u16 bgmGain;
    u16 effetGain;
    u8 pad262;
    u8 pad263;
    int unk264;
};

extern AudioPlayer gAudioPlayer;

#endif //IE3OGRES_AUDIOPLAYER_H
