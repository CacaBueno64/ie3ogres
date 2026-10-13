#pragma once

#include <nitro.h>

#include "CCardCtrl.hpp"
#include "cnvdat.h"

typedef struct {
    u16 typeIdx; /* 15: unk, 14: bitfield, 13: dummy, 12-0: type index  */
    u16 nameIdx;
    u16 arrayLen;
    u8 typeInfo; /* 8: signed, 7-0: alignment/size (in bits); if 0xff then struct */
    u8 loadedSize;
} CNVDAT_Entry;

typedef struct {
    u32 mode;
    u8 unk4[0x4];
    void *memFilePos;
    void *unkC;
    u32 unk10;
    CNVDAT_Entry *entryTable;
    s32 entryTableSize;
    u16 *strOffTable;
    char *strTable;
    u32 strOffTableSize;
    void *buffer;
    void *memFile;
    int curValue;
    int shift;
    size_t loadedSize;
    char path[128];
} CNVDAT_Context;

typedef struct {
    CNVDAT_Context unk0;
    CNVDAT_Context unkBC;
} UnkStruct_020B5C60;

class CRecordManager
{
public:
    CRecordManager();
    ~CRecordManager();

    /* 0x0205ffb0 */ static void saveEncryption(BOOL write, void *data, size_t size);
    /* 0x020603c4 */ static u32 alignOffset(u32 offset, int bits);
    static int FUN_0206040c(CNVDAT_Context *ctx, const char *param1);
    
    /* 0x020617d8 */ s32 verifySave(void);
    /* 0x02062800 */ bool getRecordHeader(SRecordHeader *dst);

private:
    SRecordInfo recordInfo;
    u32 version;
    SRecordWork *save;
    u32 unk48;
    CCardCtrl CCardCtrl;
    u8 unk58[0x10];
    OSThread thread;
    char *stack;
    u32 unk12C;
    u8 unk130;
    u8 unk131;
    u8 unk132;
    u8 unk133;
};

extern CRecordManager gRecordManager;
