#include "CSceneScriptManager.hpp"

#include <cstdio>
#include <stdlib.h>

#include <nitro.h>

#include "CAllocator.hpp"
#include "CFileIO.hpp"
#include "CScreenManager.hpp"
#include "CSceneScriptFileContext.hpp"
#include "CSceneScriptThread.hpp"
#include "audioplayer.hpp"
#include "gamemodes.hpp"
#include "graphics.hpp"
#include "init/arm9_init.hpp"

CSceneScriptManager::CSceneScriptManager()
{
    for (int i = 0; i < 8; i++) {
        this->threads[i] = NULL;
    }
}

CSceneScriptManager::~CSceneScriptManager() { }

void CSceneScriptManager::init(void)
{
    this->activeThread = NULL;
    for (int i = 0; i < 6; i++) {
        this->scriptPKH[i] = NULL;
        this->textPKH[i] = NULL;
    }
    for (int i = 0; i < 16; i++) {
        this->fileContexts[i].linkManager(this);
    }
    for (int i = 0; i < 11; i++) {
        this->threads[i] = new CSceneScriptThread();
        this->threads[i]->init(this);
    }
    MI_CpuClear8(&this->loopCount, sizeof(this->loopCount));
    MI_CpuClear8(&this->functionSlots, sizeof(this->functionSlots));
    this->functionSlotMask = 0;
    this->loadPkhFiles();
}

void CSceneScriptManager::resetHard(void)
{
    MI_CpuClear8(&this->globalVariables, sizeof(this->globalVariables));
    MI_CpuClear8(&this->unloadQueue, sizeof(this->unloadQueue));
    MI_CpuClear8(&this->loadQueue, sizeof(this->loadQueue));
    for (int i = 1; i < 11; i++) {
        this->fileContexts[i].reset();
    }
}

void *CSceneScriptManager::callocate(size_t size)
{
    void *ptr = gAllocator.allocate(size, 2, 1);
    
    if (ptr != NULL) {
        MI_CpuClear8(ptr, size);
    }
    
    return ptr;
}

void CSceneScriptManager::free(void *ptr)
{
    gAllocator.deallocate(ptr);
}

BOOL CSceneScriptManager::saveScriptData(SScriptRecordData *data)
{
    MI_CpuCopy8(this->globalVariables, data->variable, sizeof(this->globalVariables));
    MI_CpuCopy8(this->loopCount, data->LoopCount, sizeof(this->loopCount));

    for (int i = 0; i < 16; i++) {
        this->fileContexts[i].saveScriptFileState(&data->file[i]);
    }
    
    return TRUE;
}

BOOL CSceneScriptManager::loadScriptData(SScriptRecordData *recordData)
{
    SScriptEvent v0;
    
    MI_CpuCopy8(recordData->variable, this->globalVariables, sizeof(recordData->variable));
    MI_CpuCopy8(recordData->LoopCount, this->loopCount, sizeof(recordData->LoopCount));

    for (int i = 0; i < 16; i++)
    {
        if (i < 13)
        {
            int type = recordData->file[i].type;
            this->fileContexts[i].reset();
            this->fileContexts[i].loadScriptFileState(i, &recordData->file[i], this->scriptPKH[type], this->textPKH[type]);
        }
        else
        {
            int v1 = i - 13;
            s32 type = recordData->file[i].type;
            s32 code = recordData->file[i].code;
            if ((type != 0) || (code != 0)) {
                MI_CpuClear8(&v0, sizeof(v0));
                SScriptEvent *event = this->setFunctionSlot(v1, &v0, this->loopCount[v1]);
                if (event != NULL) {
                    event->variable[3].i = i;
                    if (this->fileContexts[i].loadScript(i, type, code, this->scriptPKH[type], this->textPKH[type], NULL)) {
                        event->variable[4].i = 0x2000;
                        event->variable[0].i = 0;
                    }
                }
            }
        }
    }

    return TRUE;
}

s32 *CSceneScriptManager::getGlobalVariable(int idx)
{
    return &this->globalVariables[idx];
}

void CSceneScriptManager::loadPkhFiles(void)
{
    char *script_files[5] = {
        "",
        "eve.pkh",
        "mch.pkh",
        "act.pkh",
        "help.pkh",
    };
    char *text_files[5] = {
        NULL,
        "evet.pkh",
        "mcht.pkh",
        NULL,
        NULL,
    };
    char path[64];

    for (int i = 1; i <= 4; i++) {
        if (this->scriptPKH[i] == NULL) {
            sprintf(path, "/data_iz/script/%s", script_files[i]);
            gAllocator.setNextArena(4);
            if (gAllocator.fileIO != NULL) {
                gAllocator.fileIO->readDirect(path, &this->scriptPKH[i], &gAllocator, 0, 0, FALSE, 1);
            }
        }
        if ((this->textPKH[i] == NULL) && (text_files[i] != NULL)) {
            sprintf(path, "/data_iz/script/%s", text_files[i]);
            gAllocator.setNextArena(4);
            if (gAllocator.fileIO != NULL) {
                gAllocator.fileIO->readDirect(path, &this->textPKH[i], &gAllocator, 0, 0, FALSE, 1);
            }
        }
    }
}

CSceneScriptFileContext *CSceneScriptManager::getFileContext(int idx)
{
    return &this->fileContexts[idx];
}

#pragma opt_rotateloops off
int CSceneScriptManager::loadScript(int slot, s32 type, s32 code, int step)
{
    u32 v0 = step;
    if (this->fileContexts[slot].loadScript(slot, type, code, this->scriptPKH[type], this->textPKH[type], NULL)) {
        return slot;
    }
    if (v0 == 0) {
        return -1;
    }

    for (u32 i = slot + v0; i < 16; i += step) {
        if (this->fileContexts[i].loadScript(slot, type, code, this->scriptPKH[type], this->textPKH[type], NULL)) {
            return i;
        }
    }
    
    return -1;
}
#pragma opt_rotateloops reset

BOOL CSceneScriptManager::requestLoad(int slot, s32 type, s32 code, int step)
{
    int i, v0;
    
    if (step == 0) {
        for (i = 0; i < 16; i++) {
            v0 = slot + 1;
            if (v0 == this->loadQueue[i].idx) {
                if (code == this->loadQueue[i].code) {
                    return TRUE;
                } else {
                    return FALSE;
                }
            }
        }
    }
    for (i = 0; i < 16; i++) {
        if (this->fileContexts[i].compareTypeAndCode(type, code)) {
            for (int j = 0; j < 16; j++) {
                if (i + 1 == this->unloadQueue[j]) {
                    this->unloadQueue[j] = 0;
                }
            }
            return TRUE;
        }
    }
    for (i = 0; i < 16; i++) {
        if (this->loadQueue[i].idx == 0) {
            v0 = slot + 1;
            this->loadQueue[i].idx = v0;
            this->loadQueue[i].type = type;
            this->loadQueue[i].code = code;
            this->loadQueue[i].step = step;
            return TRUE;
        }
    }
    return FALSE;
}

BOOL CSceneScriptManager::isScriptReady(int slot)
{
    if (slot < 0) {
        for (int i = 0; i < 16; i++) {
            if (!this->fileContexts[i].FUN_020491b0()) {
                return FALSE;
            }
        }
        return TRUE;
    }
    return this->fileContexts[slot].FUN_020491b0();
}

#pragma opt_rotateloops off
int CSceneScriptManager::loadRawScript(int slot, void *data, int step)
{
    if (this->fileContexts[slot].loadScript(slot, 5, 0, NULL, NULL, data)) {
        return slot;
    }
    if (!step) {
        return -1;
    }
    
    for (u32 i = slot + step; i < 16; i += step) {
        if (this->fileContexts[i].loadScript(slot, 5, 0, NULL, NULL, data)) {
            return i;
        }
    }
    return -1;
}
#pragma opt_rotateloops reset

s32 CSceneScriptManager::getFileCode(int idx)
{
    return this->getFileContext(idx)->code;
}

extern "C" {
extern u8 unk_02099E91;
extern u8 unk_02099E90;
}

BOOL CSceneScriptManager::unloadScript(int slot)
{
    this->fileContexts[slot].reset();
    
    if ((unk_02099E91) && (unk_02099E90)) {
        unk_02099E90 = 0;
        if (!this->activeThread) {
            return FALSE;
        }
        this->threads[2]->stop();
        this->threads[2]->detach();
        this->activeThread = NULL;
        return TRUE;
    }
    for (int i = 0; i < 3; i++) {
        if ((slot == this->functionSlots[i].call.fileIdx) && (this->functionSlots[i].call.thread)) {
            this->functionSlots[i].call.thread->stop();
            this->functionSlots[i].call.thread->detach();
            this->clearFunctionSlot(&this->functionSlots[i]);
        }
    }
    return TRUE;
}

BOOL CSceneScriptManager::requestUnloadSlot(int slot)
{
    for (int i = 0; i < 16; i++) {
        if (static_cast<s8>(slot + 1) == this->unloadQueue[i]) {
            return TRUE;
        }
    }
    for (int i = 0; i < 16; i++) {
        if (this->unloadQueue[i] == 0) {
            this->unloadQueue[i] = slot + 1;
            return TRUE;
        }
    }
    return FALSE;
}

BOOL CSceneScriptManager::requestUnload(s32 type, s32 code)
{
    for (int i = 0; i < 16; i++) {
        if ((this->loadQueue[i].idx != 0) && (type == this->loadQueue[i].type) && (code == this->loadQueue[i].code)) {
            this->loadQueue[i].idx = 0;
            return TRUE;
        }
    }
    for (int i = 0; i < 16; i++) {
        if (this->fileContexts[i].compareTypeAndCode(type, code)) {
            return requestUnloadSlot(i);
        }
    }

    return FALSE;
}

void CSceneScriptManager::resetSoft(void)
{
    for (int i = 1; i < 11; i++) {
        this->fileContexts[i].reset();
    }
}

BOOL CSceneScriptManager::arePKHsLoaded(void)
{
    int i = 1;
    
    for (; i < 6; i++) {
        if (this->scriptPKH[i]) {
            int result;
            
            if (gAllocator.fileIO) {
                result = gAllocator.fileIO->tryFinalize(this->scriptPKH[i]);
            } else {
                result = -1;
            }
            if (result > 0) {
                break;
            }
        }
    }

    if (i != 6) {
        return FALSE;
    }

    return TRUE;
}

u32 CSceneScriptManager::processRequests(void)
{
    for (int i = 0; i < 16; i++) {
        if (this->unloadQueue[i] != 0) {
            this->fileContexts[this->unloadQueue[i] - 1].reset();
        }
    }
    
    MI_CpuClear8(&this->unloadQueue, sizeof(this->unloadQueue));

    u32 flag = 0;
    for (int i = 0; i < 16; i++) {
        if (this->loadQueue[i].idx != 0) {
            this->loadScript(this->loadQueue[i].idx - 1, this->loadQueue[i].type, this->loadQueue[i].code, this->loadQueue[i].step);
            flag |= 1 << this->loadQueue[i].idx - 1;
        }
    }

    MI_CpuClear8(&this->loadQueue, sizeof(this->loadQueue));

    return flag;
}

CSceneScriptThread *CSceneScriptManager::getThread(int threadIdx, int fileIdx)
{
    if (threadIdx >= 0) {
        return this->threads[threadIdx];
    }

    if (fileIdx < 13) {
        for (int i = 0; i < 8; i++) {
            if (this->threads[i]->attach(fileIdx)) {
                return this->threads[i];
            }
        }
    } else {
        for (int i = 8; i < 11; i++) {
            if (this->threads[i]->attach(fileIdx)) {
                return this->threads[i];
            }
        }
    }

    return NULL;
}

SScriptInstruction *CSceneScriptManager::findFunction(SScriptInstruction *start, int slot, int functionNo, s32 *argv)
{
    CSceneScriptThread *thread = this->getThread(-1, slot);
    if (!thread) {
        return NULL;
    }

    do {
        start = this->fileContexts[slot].findFunctionStart(start, functionNo);
        if (!start) {
            break;
        }
    } while (!thread->evaluateCondition(start, argv));

    if (thread) {
        thread->detach();
    }

    return start;
}

BOOL CSceneScriptManager::startFunction(CSceneDirection *direction, int slot, SScriptInstruction *start, s32 *argv)
{
    if (this->activeThread != NULL) {
        return FALSE;
    }

    CSceneScriptThread *thread = this->getThread(-1, slot);
    if (thread == NULL) {
        return FALSE;
    }

    thread->start(direction, start, argv);

    this->activeThread = thread;

    return TRUE;
}

// this is the most ugliest shit i've seen so far (claude did it)
#pragma push
#pragma opt_loop_invariants off
#pragma opt_common_subs off
#pragma opt_rotateloops off
BOOL CSceneScriptManager::update(void)
{
    for (this->curFunctionSlot = 0; this->curFunctionSlot < 3; this->curFunctionSlot++) {
        int i = this->curFunctionSlot;
        if (this->functionSlots[i].call.thread == NULL) {
            if (this->functionSlots[i].call.fileIdx != 0 && this->adventureScreenManager && this->direction &&
                this->adventureScreenManager->getCurSceneSub() == SCENE_ADVENTURE_MAP)
            {
                s32 fades[3] = {FADE_NONE, FADE_FROM_BLACK, FADE_FROM_WHITE};
                fades[0] = gScreenFades[ENGINE_MAIN].type;

                if (256 - gScreenFades[ENGINE_MAIN].delta == abs(gScreenFades[ENGINE_MAIN].brightness) &&
                    (fades[0] == fades[1] || fades[0] == fades[2]) &&
                    this->isScriptReady(this->functionSlots[i].call.fileIdx))
                {
                    s32 argv[1];
                    argv[0] = 0;
                    this->functionSlots[i].call.start = findFunction(
                        this->functionSlots[i].call.start,
                        this->functionSlots[i].call.fileIdx,
                        this->functionSlots[i].call.functionNo,
                        argv
                    );
                    if (this->functionSlots[i].call.start == NULL) {
                        this->unloadScript(this->functionSlots[i].call.fileIdx);
                    } else {
                        this->functionSlots[i].call.thread = this->getThread(-1, this->functionSlots[i].call.fileIdx);
                        this->functionSlots[i].call.thread->start(this->direction, this->functionSlots[i].call.start, argv);
                    }
                }
            }
        } else if (GetCurrentMode() == GAME_MODE_ADVENTURE &&
                   !this->functionSlots[i].call.thread->update() && 
                   this->loopCount[i] != 0)
        {
            s32 *count = this->loopCount;
            if (--count[i] == 0) {
                this->functionSlots[i].call.thread->stop();
                this->functionSlots[i].call.thread->detach();
                this->unloadScript(this->functionSlots[i].call.fileIdx);
                this->clearFunctionSlot(&this->functionSlots[i]);
            } else {
                if (this->loopCount[i] < 0) {
                    this->loopCount[i] = -1;
                }
                int eventCount = this->functionSlots[i].call.thread->getEventCount();
                SScriptEvent *event = this->functionSlots[i].call.thread->getEvents();
                this->functionSlots[i].call.thread->setCurEvent(event);
                this->functionSlots[i].call.thread->setRunning(TRUE);
                for (int j = 0; j < eventCount; j++) {
                    event->state = 0;
                    event->complete = 0;
                    event++;
                }
            }
        }
    }

    if (this->activeThread != NULL) {
        return this->activeThread->update();
    }

    return FALSE;
}
#pragma opt_rotateloops reset
#pragma pop

void CSceneScriptManager::stopActiveThread(void)
{
    if (this->activeThread) {
        for (int i = 0; i < 8; i++) {
            this->threads[i]->stop();
        }

        this->activeThread = NULL;
    }
}

void CSceneScriptManager::fastForwardActiveThread(void)
{
    if (this->activeThread) {
        this->activeThread->requestFastForward();
    }
}

void CSceneScriptManager::skipActiveThread(void)
{
    if (this->activeThread) {
        this->activeThread->requestSkip();
        gAudioPlayer.stopAllEffects(100);
    }
}

void CSceneScriptManager::setAdventureScreenManager(CScreenManager *manager)
{
    this->adventureScreenManager = manager;
}

void CSceneScriptManager::setDirection(CSceneDirection *direction)
{
    this->direction = direction;
}

void CSceneScriptManager::stopFunctionSlot(int slot)
{
    if (this->functionSlots[slot].call.thread) {
        this->functionSlots[slot].call.thread->stop();
        this->functionSlots[slot].call.thread->detach();
        this->unloadScript(this->functionSlots[slot].call.fileIdx);
    }

    this->clearFunctionSlot(&this->functionSlots[slot]);
}

SScriptEvent *CSceneScriptManager::getFunctionSlot(int slot, s32 *outCount)
{
    SScriptEvent *function = NULL;

    if ((slot >= 0) && (slot < 3)) {
        function = &this->functionSlots[slot];
        *outCount = this->loopCount[slot];
    }

    return function;
}

SScriptEvent *CSceneScriptManager::setFunctionSlot(int slot, SScriptEvent *event, s32 count)
{
    SScriptEvent *ev = NULL;

    if ((slot >= 0) && (slot < 3)) {
        this->stopFunctionSlot(slot);
        
        ev = &this->functionSlots[slot];

        ev->inst = event->inst;
        ev->next = event->next;
        ev->unk8 = event->unk8;
        ev->wait = event->wait;
        ev->complete = event->complete;
        ev->state = event->state;
#ifndef VSCODE_INTELLISENSE
        ev->variable = event->variable;
#endif // VSCODE_INTELLISENSE
        this->loopCount[slot] = count;
    }

    return ev;
}

void CSceneScriptManager::clearFunctionSlot(SScriptEvent *slot)
{
    for (int i = 0; i < 3; i++) {
        if (&this->functionSlots[i] == slot) {
            this->loopCount[i] = 0;
            MI_CpuClear8(&this->functionSlots[i], sizeof(this->functionSlots[i]));
            break;
        }
    }
}

s32 CSceneScriptManager::getCurFunctionSlot(void)
{
    return this->curFunctionSlot;
}

void CSceneScriptManager::clearFunctionSlotMask(void)
{
    this->functionSlotMask = 0;
}

u8 CSceneScriptManager::getFunctionSlotMask(void)
{
    return this->functionSlotMask;
}
