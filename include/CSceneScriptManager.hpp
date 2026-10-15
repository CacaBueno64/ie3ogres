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
    CSceneScriptManager();
    ~CSceneScriptManager();
    
    void init(void);
    void resetHard(void);
    void *callocate(size_t size);
    void free(void *ptr);
    BOOL saveScriptData(SScriptRecordData *recordData);
    BOOL loadScriptData(SScriptRecordData *recordData);
    s32 *getGlobalVariable(int idx);
    void loadPkhFiles(void);
    CSceneScriptFileContext *getFileContext(int idx);
    int loadScript(int slot, s32 type, s32 code, int step);
    BOOL requestLoad(int slot, s32 type, s32 code, int step);
    BOOL isScriptReady(int slot);
    int loadRawScript(int slot, void *data, int step);
    s32 getFileCode(int idx);
    BOOL unloadScript(int slot);
    BOOL requestUnloadSlot(int slot);
    BOOL requestUnload(s32 type, s32 code);
    void resetSoft(void);
    BOOL arePKHsLoaded(void);
    u32 processRequests(void);
    CSceneScriptThread *getThread(int threadIdx, int fileIdx);
    SScriptInstruction *findFunction(SScriptInstruction *start, int idx, int functionNo, s32 *argv);
    BOOL startFunction(CSceneDirection *direction, int idx, SScriptInstruction *start, s32 *argv);
    BOOL update(void);
    void stopActiveThread(void);
    void fastForwardActiveThread(void);
    void skipActiveThread(void);
    void setAdventureScreenManager(CScreenManager *manager);
    void setDirection(CSceneDirection *direction);
    void stopFunctionSlot(int slot);
    SScriptEvent *getFunctionSlot(int slot, s32 *outCount);
    SScriptEvent *setFunctionSlot(int slot, SScriptEvent *event, s32 loopCount);
    void clearFunctionSlot(SScriptEvent *slot);
    s32 getCurFunctionSlot(void);
    void clearFunctionSlotMask(void);
    u8 getFunctionSlotMask(void);

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
