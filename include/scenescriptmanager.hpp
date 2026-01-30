#ifndef IE3OGRES_SCENESCRIPTMANAGER_H
#define IE3OGRES_SCENESCRIPTMANAGER_H

#pragma once

#include <nitro.h>
#include <stdlib.h>

#include "cnvdat.h"
#include "unitmanager.hpp"
#include "allocator.hpp"
#include "fileio.hpp"
#include "movie.hpp"
#include "scenescriptdata.hpp"
#include "screenmanager.hpp"

class CSceneDirection;
class CSceneScriptManager;
class CSceneScriptThread;

typedef union {
    s32 i;
    u32 u;
    char *s;
    s32 *p;
} SScriptVariable;

typedef struct SScriptEvent {
    void *data;
    SScriptEvent *next;
    s8 unk8;
    s8 unk9;
    s8 complete;
    s8 state;
    SScriptVariable variable[8];
} SScriptEvent;

typedef struct SScriptFunction {
    void *data;
    SScriptEvent *event;
    u32 unk8;
    void *start;
    CSceneScriptThread *thread;
    u32 unk14;
    int fileIdx;
    int functionNo;
    u32 unk20;
    u32 unk24;
    u32 unk28;
} SScriptFunction;

class CSceneScriptFileContext {
    public:
        /* 0x02048c5c */ CSceneScriptFileContext();
        /* 0x02048c80 */ ~CSceneScriptFileContext();
        /* 0x02048c98 */ void linkManager(CSceneScriptManager *manager);
        /* 0x02048cac */ size_t openScript(int idx, u32 id, void *mainPKH, void *textPKH, int param5);
        /* 0x02049038 */ int loadScript(int idx, s32 type, s32 code, void *mainPKH, void *textPKH, int param6);
        /* 0x0204912c */ void reset(void);
        /* 0x02049178 */ BOOL compareTypeAndCode(s32 type, s32 code);
        /* 0x02049194 */ void getTypeAndCode(s32 *type, s32 *code);
        BOOL FUN_020491b0(void);
        /* 0x0204927c */ BOOL getScriptFileName(char *dst);
        /* 0x0204930c */ BOOL saveScriptFileState(SScriptFileRecordData *fileRecordData);
        /* 0x02049354 */ BOOL loadScriptFileState(int idx, SScriptFileRecordData *fileRecordData, void *mainPKH, void *textPKH);
        /* 0x020493dc */ s32 *getVariable(int idx);
        /* 0x020493f0 */ ScriptInstruction *next(ScriptInstruction *cur);
        /* 0x02049400 */ ScriptInstruction *findFunctionStart(ScriptInstruction *cur, s16 num);
    
    private:
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

class CSceneScriptManager {
    public:
        /* 0x02047a7c */ CSceneScriptManager();
        /* 0x02047ad4 */ ~CSceneScriptManager();
        /* 0x02047af8 */ void init(void);
        /* 0x02047bc4 */ void resetHard(void);
        /* 0x02047c30 */ void *callocate(int size);
        /* 0x02047c68 */ void free(void *ptr);
        /* 0x02047c7c */ BOOL saveScriptData(SScriptRecordData *recordData);
        /* 0x02047cdc */ BOOL loadScriptData(SScriptRecordData *recordData);
        /* 0x02047e20 */ s32 *getVariable(int idx);
        /* 0x02047e30 */ void loadPkhFiles(void);
        /* 0x02047f80 */ CSceneScriptFileContext *getFileContext(int idx);
        int FUN_02047f8c(int idx, s32 type, s32 code, int param4);
        BOOL FUN_02048068(int param1, s32 type, s32 code, int param4);
        BOOL FUN_02048178(int idx);
        int FUN_020481c8(int idx, char *identifier, int param3);
        /* 0x02048278 */ s32 getFileCode(int idx);
        BOOL FUN_02048288(int idx);
        BOOL FUN_0204836c(int idx);
        BOOL FUN_020483e4(s32 type, s32 code);
        /* 0x0204847c */ void resetSoft(void);
        BOOL FUN_020484a4(void);
        u32 FUN_02048508(void);
        /* 0x020485d0 */ CSceneScriptThread *getThread(int threadIdx, int fileIdx);
        /* 0x02048674 */ void *initFunction(void *start, int idx, int functionNo, s32 *argv);
        BOOL FUN_020486f0(CSceneDirection *sceneDirection, int idx, void *start, s32 *argv);
        BOOL FUN_02048748(void);
        SScriptEvent *FUN_02048b4c(int contextIdx, SScriptEvent *event, s32 loopCount);
        void FUN_02048be4(SScriptFunction *func);
    
    CSceneScriptFileContext fileContext[16];
    CSceneDirection *direction;
    CScreenManager *manager;
    CSceneScriptThread *thread[11];
    u32 unk1BB4;
    CSceneScriptThread *thread1BB8;
    s8 unk1BBC[16];
    struct {
        int idx;
        s32 type;
        s32 code;
        u32 unkC;
    } unk1BCC[16];
    void *scriptPKH[6];
    void *textPKH[6];
    s32 variable[64];
    s32 loopCount[3];
    SScriptFunction function[3];
    u8 unk1E8C;
    s32 unk1E90;
};

class CSceneScriptThread {
    public:
        /* ov16 0x020fe4f4 */ CSceneScriptThread();
        /* ov16 0x020fe51c */ void init(CSceneScriptManager *manager);
        void FUN_ov16_020fe530(int idx);
        /* ov16 0x020fe584 */ BOOL checkFunctionCondition(void *start, s32 *argv);
        /* ov16 0x020fe6e8 */ void executeScope(CSceneDirection *direction, void *start, s32 *argv);
        /* ov16 0x020fe8b0 */ u32 resetEvents(void);
        void FUN_ov16_020fe904(void);
        void FUN_ov16_020fe918(void);
        BOOL FUN_ov16_020fe92c(void);
        /* ov16 0x020fe9a4 */ SScriptEvent *getEvents(void);
        /* ov16 0x020fe9ac */ int getFirstEvent(void);
        /* ov16 0x020fe9b4 */ void setFirstEvent(SScriptEvent *event);
        void FUN_ov16_020fe9bc(int param1);
        /* ov16 0x020fe9c4 */ void *callocate(size_t size);
        /* ov16 0x020fe9d4 */ void free(void *ptr);
        /* ov16 0x020fe9e4 */ ScriptInstruction *next(ScriptInstruction *cur);
        /* ov16 0x020fe9f4 */ void getFunctionArguments(ScriptInstruction *inst, s32 *argv);
        /* ov16 0x020fea74 */ SScriptEvent *findEvent(SScriptEvent *start, u16 id);
        /* ov16 0x020feb00 */ SScriptEvent *findEventReverse(SScriptEvent *start, u16 id);
        /* ov16 0x020feb9c */ SScriptEvent *findPreviousEventByID(SScriptEvent *start, u16 id);
        /* ov16 0x020febf8 */ SScriptEvent *getArguments(SScriptEvent *event, s32 *argv);
        /* ov16 0x020fed6c */ SScriptEvent *getArgumentsClear(SScriptEvent *event, s32 *argv);
        void FUN_ov16__020feda4(SScriptEvent *event);
        /* 0v16 0x020fedc8 */ SScriptEvent *executeRange(SScriptEvent *event, SScriptEvent *last);
        /* ov16 0x020feeb8 */ void processEvent(SScriptEvent *event, u32 *result);
    
    CSceneDirection *direction;
    CSceneScriptManager *manager;
    CSceneScriptFileContext *fileContext;
    ScriptInstruction *scopeStart;
    s32 variable[64];
    SScriptEvent *firstEvent;
    SScriptEvent *unkEvent[8];
    SScriptEvent *events;
    int evCount;
    u32 unk13C;
    int fileIdx;
    int functionID;
    BOOL unk148;
    u32 unk14C;
    u32 unk150;
    u32 unk154;
    u32 unk158;
    u32 unk15C;
    int argc;
    int returnVal;
    u8 unk168[0x8C];
    st_unit_base unitbase;
    SMovieInfo movieInfo;
    u32 unk290;
    u8 unitMan[0x28]; // CUnitMan
};

#endif //IE3OGRES_SCENESCRIPTMANAGER_H
