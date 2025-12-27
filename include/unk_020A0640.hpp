#ifndef IE3OGRES_UNK_020A0640_H
#define IE3OGRES_UNK_020A0640_H

#pragma once

#include <nitro.h>

#include "cnvdat.h"

class UnkClass_020A0640 {
    public:
        /* 0x020630e8 */ void loadPassData(SRecordPass *recordPass);
        /* 0x02063248 */ void getPassData(st_save_pass_short *savePassShort);
    private:
    u32 unk0;
    u32 unk4;
    u32 unk8;
    u32 unkC;
    u32 unk10;
    u32 unk14;
    u8 unk18;
    u8 unk19;
    u8 unk1A;
    u8 unk1B;
    u8 unk1C;
    u8 unk1D;
    u8 unk1E;
    u8 unk1F;
    u32 unk20[4];
    u8 unk30[2];
    u8 unk32[4];
    u16 unk36[2][16];
    u8 unk76;
    u8 unk77;
    u32 unk78;
    u16 unk7C[4];
    u8 unk84;
    u8 unk85;
    u8 unk86;
    u8 unk87;
    u8 unk88;
    u8 superLinkNumber; //0: ie2, 1: ie3
    u8 unk8A;
    u8 unk8B;
    u8 unk8C;
    u8 unk8D;
    u8 unk8E;
    u8 unk8F;
    u8 unk90;
    u8 unk91;
    u16 unk92[2];
    u8 unk96[2];
    u8 unk98[2];
    u8 home_team;
    u8 unk9B;
    u8 unk9C;
    u8 unk9D;
    u16 unk9E;
    u16 unkA0;
    u16 unkA2;
    u16 unkA4;
    u8 unkA6;
    u8 unkA7;
    u8 unkA8;
    u8 unkA9;
    u8 unkAA;
    u8 unkAB;
    s8 unkAC;
    u8 unkAD;
    u8 unkAE;
    u8 unkAF;
    u32 unkB0;
    u32 unkB4;
    u32 unkB8;
    u32 unkBC;
    st_save_game_data saveGameData;
    st_save_practice savePractice;
    u8 unk11AC;
    u8 unk11AD;
    u8 unk11AE;
    u8 unk11AF;
    SRecordHeader saveHeader;
    st_save_pass *savePassData;
    u8 unk1234;
    u8 unk1235;
    u8 unk1236;
    u8 unk1237;
    u32 unk1238;
    u32 unk123C;
    u32 unk1240;
    u8 unk1244;
    u8 unk1245;
    u8 passTeamIdx;
    u8 unk1247;
    u32 unk1248;
};

extern UnkClass_020A0640 unk_020A0640;

#endif //IE3OGRES_UNK_020A0640_H
