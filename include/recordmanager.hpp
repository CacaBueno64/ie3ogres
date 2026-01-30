#ifndef IE3OGRES_RECORDMANAGER_H
#define IE3OGRES_RECORDMANAGER_H

#pragma once

#include <nitro.h>

#include "cnvdat.h"
#include "cardcontroller.hpp"

typedef struct {
    u16 type_idx; /* 15: unk, 14: bitfield, 13: dummy, 12-0: type index  */
    u16 name_idx;
    u16 array_len;
    u8 type_info; /* 8: signed, 7-0: alignment/size (in bits); if 0xff then struct */
    u8 loaded_size;
} CNVDAT_Entry;

typedef struct {
    u32 mode;
    u8 unk4[0x4];
    void *mem_file_pos;
    void *unkC;
    u32 unk10;
    CNVDAT_Entry *entry_table;
    s32 entry_table_size;
    u16 *str_off_table;
    char *str_table;
    u32 str_off_table_size;
    void *buffer;
    void *mem_file;
    int cur_value;
    int shift;
    size_t loaded_size;
    char path[128];
} CNVDAT_Context;

typedef struct {
    CNVDAT_Context ctx;
    CNVDAT_Context ctxBC;
} UnkStruct_020B5C60;

class CRecordManager {
    public:
        /* 0x020617d8 */ s32 verifySave(void);

    private:
    SRecordInfo recordInfo;
    u32 version;
    SRecordWork *save;
    u32 unk48;
    CardController cardController;
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

#endif //IE3OGRES_RECORDMANAGER_H
