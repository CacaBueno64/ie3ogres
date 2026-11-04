#pragma once

#include <nitro.h>

#include "cnvdat.h"

typedef struct {
    char unk0[16];
    u8 pad10[0x14];
    u16 unitNo;
    u8 unk26;
    u8 unk27;
    u8 unk28;
    u8 unk29;
    u8 scoutType;
    u8 unk2b;
} SLogicThink_7EC;

class CLogicThink
{
public:
    BOOL FUN_0204ec3c(void);
    void FUN_0204eba0(void);
    void FUN_0206f1e0(void);
    void FUN_0206f244(void);
    /* 0x0206f77c */ void initLiveTalk(void);
    /* 0x020715b4 */ void readUnitNo(void);
    /* 0x0207249c */ st_team_info *getTeamInfo(int teamIdx);
    /* 0x020724b8 */ void updateKeys(u16 pressed, u16 held);
    BOOL FUN_020731a4(void);
    /* 0x02074854 */ u16 calcCRC16(void *data, u32 size);

    /* 0x02074784 */ static void SetRightHand(st_save_user *saveUser, u8 rightHand);
    /* 0x0207478c */ static void SetRpgTitleIdx(st_save_user *saveUser, s8 idx);

    u8 pad0[0x7EC];
    SLogicThink_7EC *unk7EC;
    u8 pad7F0[0x78];
    s16 unk868;
    u16 unk86A;
};

extern CLogicThink gLogicThink;
