#pragma once

#include <nitro.h>

#include "CSceneScriptData.hpp"
#include "CSceneScriptFileContext.hpp"
#include "CSceneScriptThread.hpp"
#include "cnvdat.h"

class CSceneDirection;
class CScreenManager;

class CSceneScriptManager
{
public:
    /* 0x02047a7c */ CSceneScriptManager();
    /* 0x02047ad4 */ ~CSceneScriptManager();
    
    /* 0x02047af8 */ void init(void);
    /* 0x02047bc4 */ void resetHard(void);
    /* 0x02047c30 */ void *callocate(size_t size);
    /* 0x02047c68 */ void free(void *ptr);
    /* 0x02047c7c */ BOOL saveScriptData(SScriptRecordData *recordData);
    /* 0x02047cdc */ BOOL loadScriptData(SScriptRecordData *recordData);
    /* 0x02047e20 */ s32 *getGlobalVariable(int idx);
    /* 0x02047e30 */ void loadPkhFiles(void);
    /* 0x02047f80 */ CSceneScriptFileContext *getFileContext(int idx);
    /* 0x02047f8c */ int loadScript(int slot, s32 type, s32 code, int step);
    /* 0x02048068 */ BOOL requestLoad(int slot, s32 type, s32 code, int step);
    /* 0x02048178 */ BOOL isScriptReady(int slot);
    /* 0x020481c8 */ int loadRawScript(int slot, void *data, int step);
    /* 0x02048278 */ s32 getFileCode(int idx);
    /* 0x02048288 */ BOOL unloadScript(int slot);
    /* 0x0204836c */ BOOL requestUnloadSlot(int slot);
    /* 0x020483e4 */ BOOL requestUnload(s32 type, s32 code);
    /* 0x0204847c */ void resetSoft(void);
    /* 0x020484a4 */ BOOL arePKHsLoaded(void);
    /* 0x02048508 */ u32 processRequests(void);
    /* 0x020485d0 */ CSceneScriptThread *getThread(int threadIdx, int fileIdx);
    /* 0x02048674 */ SScriptInstruction *findFunction(SScriptInstruction *start, int idx, int functionNo, s32 *argv);
    /* 0x020486f0 */ BOOL startFunction(CSceneDirection *direction, int idx, SScriptInstruction *start, s32 *argv);
    /* 0x02048748 */ BOOL update(void);
    /* 0x02048a04 */ void stopActiveThread(void);
    /* 0x02048a4c */ void fastForwardActiveThread(void);
    /* 0x02048a68 */ void skipActiveThread(void);
    /* 0x02048a94 */ void setAdventureScreenManager(CScreenManager *manager);
    /* 0x02048aa0 */ void setDirection(CSceneDirection *direction);
    /* 0x02048aac */ void stopFunctionSlot(int slot);
    /* 0x02048b10 */ SScriptEvent *getFunctionSlot(int slot, s32 *outCount);
    /* 0x02048b4c */ SScriptEvent *setFunctionSlot(int slot, SScriptEvent *event, s32 loopCount);
    /* 0x02048be4 */ void clearFunctionSlot(SScriptEvent *slot);
    /* 0x02048c34 */ s32 getCurFunctionSlot(void);
    /* 0x02048c40 */ void clearFunctionSlotMask(void);
    /* 0x02048c50 */ u8 getFunctionSlotMask(void);

    CSceneScriptFileContext fileContexts[16];
    CSceneDirection *direction;
    CScreenManager *adventureScreenManager; /* CAdventureScreenManager */
    CSceneScriptThread *threads[11];
    u32 unk1BB4; // unused?
    CSceneScriptThread *activeThread;
    s8 unloadQueue[16];
    struct {
        int idx;
        s32 type;
        s32 code;
        int step;
    } loadQueue[16];
    void *scriptPKH[6];
    void *textPKH[6];
    s32 globalVariables[64];
    s32 loopCount[3];
    SScriptEvent functionSlots[3];
    u8 functionSlotMask;
    int curFunctionSlot;
};
