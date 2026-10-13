#pragma once

#include <nitro.h>

#include "CSceneScriptData.hpp"
#include "cnvdat.h"

class CSceneScriptManager;

typedef enum {
    SCRIPT_TYPE_NONE,
    SCRIPT_TYPE_EVENT,
    SCRIPT_TYPE_MATCH,
    SCRIPT_TYPE_ACTION,
    SCRIPT_TYPE_HELP,
    SCRIPT_TYPE_RAW,

    SCRIPT_TYPE_COUNT = 6,
} EScriptType;

class CSceneScriptFileContext
{
public:
    /* 0x02048c5c */ CSceneScriptFileContext();
    /* 0x02048c80 */ ~CSceneScriptFileContext();
    /* 0x02048c98 */ void linkManager(CSceneScriptManager *manager);
    /* 0x02048cac */ size_t openScript(int idx, u32 id, void *mainPKH, void *textPKH, int param5);
    /* 0x02049038 */ int loadScript(int idx, s32 type, s32 code, void *mainPKH, void *textPKH, void *data);
    /* 0x0204912c */ void reset(void);
    /* 0x02049178 */ BOOL compareTypeAndCode(s32 type, s32 code);
    /* 0x02049194 */ void getTypeAndCode(s32 *type, s32 *code);
    BOOL FUN_020491b0(void);
    /* 0x0204927c */ BOOL getScriptFileName(char *dst);
    /* 0x0204930c */ BOOL saveScriptFileState(SScriptFileRecordData *fileRecordData);
    /* 0x02049354 */ BOOL loadScriptFileState(int idx, SScriptFileRecordData *fileRecordData, void *mainPKH, void *textPKH);
    /* 0x020493dc */ s32 *getVariable(int idx);
    /* 0x020493f0 */ SScriptInstruction *next(SScriptInstruction *cur);
    /* 0x02049400 */ SScriptInstruction *findFunctionStart(SScriptInstruction *cur, int num);

    CSceneScriptManager *manager;
    CSceneScriptData loader;
    void *data;
    int instCount;
    s32 type;
    s32 code;
    s32 variable[16];
    s8 unk[256];
    FSFileID textFileID;
    int textOffset;
    char sstPath[64];
};
