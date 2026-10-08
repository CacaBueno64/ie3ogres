#include <nitro.h>
#include "CSceneScriptManager.hpp"
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
    this->thread1BB8 = NULL;
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
    MI_CpuClear8(&this->functions, sizeof(this->functions));
    this->unk1E8C = 0;
    this->loadPkhFiles();
}

void CSceneScriptManager::resetHard(void)
{
    MI_CpuClear8(&this->variable, sizeof(this->variable));
    MI_CpuClear8(&this->unk1BBC, sizeof(this->unk1BBC));
    MI_CpuClear8(&this->unk1BCC, sizeof(this->unk1BCC));
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
    MI_CpuCopy8(this->variable, data->variable, sizeof(this->variable));
    MI_CpuCopy8(this->loopCount, data->LoopCount, sizeof(this->loopCount));

    for (int i = 0; i < 16; i++) {
        this->fileContexts[i].saveScriptFileState(&data->file[i]);
    }
    
    return TRUE;
}

BOOL CSceneScriptManager::loadScriptData(SScriptRecordData *recordData)
{
    SScriptEvent v0;
    
    MI_CpuCopy8(recordData->variable, this->variable, sizeof(recordData->variable));
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
                SScriptEvent *event = this->FUN_02048b4c(v1, &v0, this->loopCount[v1]);
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

s32 *CSceneScriptManager::getVariable(int idx)
{
    return &this->variable[idx];
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
int CSceneScriptManager::FUN_02047f8c(int idx, s32 type, s32 code, int param4)
{
    u32 v0 = param4;
    if (this->fileContexts[idx].loadScript(idx, type, code, this->scriptPKH[type], this->textPKH[type], NULL)) {
        return idx;
    }
    if (v0 == 0) {
        return -1;
    }

    for (u32 i = idx + v0; i < 16; i += param4) {
        if (this->fileContexts[i].loadScript(idx, type, code, this->scriptPKH[type], this->textPKH[type], NULL)) {
            return i;
        }
    }
    
    return -1;
}
#pragma opt_rotateloops reset

BOOL CSceneScriptManager::FUN_02048068(int param1, s32 type, s32 code, int param4)
{
    int i, v0;
    
    if (param4 == 0) {
        for (i = 0; i < 16; i++) {
            v0 = param1 + 1;
            if (v0 == this->unk1BCC[i].idx) {
                if (code == this->unk1BCC[i].code) {
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
                if (i + 1 == this->unk1BBC[j]) {
                    this->unk1BBC[j] = 0;
                }
            }
            return TRUE;
        }
    }
    for (i = 0; i < 16; i++) {
        if (this->unk1BCC[i].idx == 0) {
            v0 = param1 + 1;
            this->unk1BCC[i].idx = v0;
            this->unk1BCC[i].type = type;
            this->unk1BCC[i].code = code;
            this->unk1BCC[i].unkC = param4;
            return TRUE;
        }
    }
    return FALSE;
}

BOOL CSceneScriptManager::FUN_02048178(int idx)
{
    if (idx < 0) {
        for (int i = 0; i < 16; i++) {
            if (!this->fileContexts[i].FUN_020491b0()) {
                return FALSE;
            }
        }
        return TRUE;
    }
    return this->fileContexts[idx].FUN_020491b0();
}

#pragma opt_rotateloops off
int CSceneScriptManager::FUN_020481c8(int idx, void *data, int param3)
{
    if (this->fileContexts[idx].loadScript(idx, 5, 0, NULL, NULL, data)) {
        return idx;
    }
    if (!param3) {
        return -1;
    }
    
    for (u32 i = idx + param3; i < 16; i += param3) {
        if (this->fileContexts[i].loadScript(idx, 5, 0, NULL, NULL, data)) {
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

BOOL CSceneScriptManager::FUN_02048288(int idx)
{
    this->fileContexts[idx].reset();
    
    if ((unk_02099E91) && (unk_02099E90)) {
        unk_02099E90 = 0;
        if (!this->thread1BB8) {
            return FALSE;
        }
        this->threads[2]->resetEvents();
        this->threads[2]->reset();
        this->thread1BB8 = NULL;
        return TRUE;
    }
    for (int i = 0; i < 3; i++) {
        if ((idx == this->functions[i].fileIdx) && (this->functions[i].thread)) {
            this->functions[i].thread->resetEvents();
            this->functions[i].thread->reset();
            this->FUN_02048be4(&this->functions[i]);
        }
    }
    return TRUE;
}

BOOL CSceneScriptManager::FUN_0204836c(int idx)
{
    for (int i = 0; i < 16; i++) {
        if (static_cast<s8>(idx + 1) == this->unk1BBC[i]) {
            return TRUE;
        }
    }
    for (int i = 0; i < 16; i++) {
        if (this->unk1BBC[i] == 0) {
            this->unk1BBC[i] = idx + 1;
            return TRUE;
        }
    }
    return FALSE;
}

BOOL CSceneScriptManager::FUN_020483e4(s32 type, s32 code)
{
    for (int i = 0; i < 16; i++) {
        if ((this->unk1BCC[i].idx != 0) && (type == this->unk1BCC[i].type) && (code == this->unk1BCC[i].code)) {
            this->unk1BCC[i].idx = 0;
            return TRUE;
        }
    }
    for (int i = 0; i < 16; i++) {
        if (this->fileContexts[i].compareTypeAndCode(type, code)) {
            return FUN_0204836c(i);
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

BOOL CSceneScriptManager::FUN_020484a4(void)
{
    int i = 1;
    
    while (i < 6)
    {
        if (this->scriptPKH[i])
        {
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

        i++;
    }
    
    if (i != 6) {
        return FALSE;
    }

    return TRUE;
}

u32 CSceneScriptManager::FUN_02048508(void)
{
    for (int i = 0; i < 16; i++) {
        if (this->unk1BBC[i] != 0) {
            this->fileContexts[this->unk1BBC[i] - 1].reset();
        }
    }
    
    MI_CpuClear8(&this->unk1BBC, sizeof(this->unk1BBC));

    u32 flag = 0;
    for (int i = 0; i < 16; i++) {
        if (this->unk1BCC[i].idx != 0) {
            this->FUN_02047f8c(this->unk1BCC[i].idx - 1, this->unk1BCC[i].type, this->unk1BCC[i].code, this->unk1BCC[i].unkC);
            flag |= 1 << this->unk1BCC[i].idx - 1;
        }
    }

    MI_CpuClear8(&this->unk1BCC, sizeof(this->unk1BCC));

    return flag;
}

CSceneScriptThread *CSceneScriptManager::getThread(int threadIdx, int fileIdx)
{
    if (threadIdx >= 0) {
        return this->threads[threadIdx];
    }

    if (fileIdx < 13) {
        for (int i = 0; i < 8; i++) {
            if (this->threads[i]->FUN_ov16_020fe530(fileIdx)) {
                return this->threads[i];
            }
        }
    } else {
        for (int i = 8; i < 11; i++) {
            if (this->threads[i]->FUN_ov16_020fe530(fileIdx)) {
                return this->threads[i];
            }
        }
    }

    return NULL;
}

ScriptInstruction *CSceneScriptManager::initFunction(ScriptInstruction *start, int idx, s16 functionNo, s32 *argv)
{
    CSceneScriptThread *thread = this->getThread(-1, idx);
    if (!thread) {
        return NULL;
    }

    do {
        start = this->fileContexts[idx].findFunctionStart(start, functionNo);
        if (!start) {
            break;
        }
    } while (!thread->checkFunctionCondition(start, argv));

    if (thread) {
        thread->reset();
    }

    return start;
}

BOOL CSceneScriptManager::FUN_020486f0(CSceneDirection *direction, int idx, ScriptInstruction *start, s32 *argv)
{
    if (this->thread1BB8 != NULL) {
        return FALSE;
    }

    CSceneScriptThread *thread = this->getThread(-1, idx);
    if (thread == NULL) {
        return FALSE;
    }

    thread->executeScope(direction, start, argv);

    this->thread1BB8 = thread;

    return TRUE;
}

#pragma opt_rotateloops off
BOOL CSceneScriptManager::update(void)
{
    for (this->unk1E90 = 0; this->unk1E90 < 3; this->unk1E90++) {
        int i = this->unk1E90;
        if (!this->functions[this->unk1E90].thread && this->functions[this->unk1E90].fileIdx != 0 && this->adventureScreenManager && this->direction &&
            (this->adventureScreenManager->getCurSceneSub() == SCENE_ADVENTURE_MAP)) {
            
            s32 fades[3] = {FADE_NONE, FADE_FROM_BLACK, FADE_FROM_WHITE};
            fades[0] = gScreenFades[ENGINE_MAIN].type;

            if (256 - gScreenFades[ENGINE_MAIN].delta == abs(gScreenFades[ENGINE_MAIN].brightness) &&
                (fades[0] == fades[1] || fades[0] == fades[2]) &&
                (this->FUN_02048178(this->functions[i].fileIdx))) {
                s32 argv[1] = {0};
                this->functions[i].start = this->initFunction(this->functions[i].start, this->functions[i].fileIdx, this->functions[i].functionNo, argv);
                if (this->functions[i].start == NULL) {
                    this->FUN_02048288(this->functions[i].fileIdx);
                } else {
                    this->functions[i].thread = this->getThread(-1, this->functions[i].fileIdx);
                    this->functions[i].thread->executeScope(this->direction, this->functions[i].start, argv);
                }
            }
        }
        else if (GetCurrentMode() == GAME_MODE_ADVENTURE && !this->functions[i].thread->FUN_ov16_020fe92c() && this->loopCount[i] != 0) {
            this->loopCount[i]--;
            if (this->loopCount[i] == 0) {
                this->functions[i].thread->resetEvents();
                this->functions[i].thread->reset();
                this->FUN_02048288(this->functions[i].fileIdx);
                this->FUN_02048be4(&this->functions[i]);
            } else {
                if (this->loopCount[i] < 0) {
                    this->loopCount[i] = -1;
                }
                int eventCount = this->functions[i].thread->getEventCount();
                SScriptEvent *event = this->functions[i].thread->getEvent();
                this->functions[i].thread->setFirstEvent(event);
                this->functions[i].thread->FUN_ov16_020fe9bc(TRUE);
                for (int j = 0; j < eventCount; j++) {
                    event->state    = 0;
                    event->complete = 0;
                    event++;
                }
            }
        }
    }

    if (this->thread1BB8 != NULL) {
        return this->thread1BB8->FUN_ov16_020fe92c();
    }

    return FALSE;
}
#pragma opt_rotateloops reset

void CSceneScriptManager::FUN_02048a04(void)
{
    if (this->thread1BB8) {
        for (int i = 0; i < 8; i++) {
            this->threads[i]->resetEvents();
        }

        this->thread1BB8 = NULL;
    }
}

void CSceneScriptManager::FUN_02048a4c(void)
{
    if (this->thread1BB8) {
        this->thread1BB8->FUN_ov16_020fe904();
    }
}

void CSceneScriptManager::FUN_02048a68(void)
{
    if (this->thread1BB8) {
        this->thread1BB8->FUN_ov16_020fe918();
        gAudioPlayer.stopAllEffects(100);
    }
}

void CSceneScriptManager::FUN_02048a94(CScreenManager *manager)
{
    this->adventureScreenManager = manager;
}

void CSceneScriptManager::FUN_02048aa0(CSceneDirection *direction)
{
    this->direction = direction;
}

void CSceneScriptManager::FUN_02048aac(int idx)
{
    if (this->functions[idx].thread) {
        this->functions[idx].thread->resetEvents();
        this->functions[idx].thread->reset();
        this->FUN_02048288(this->functions[idx].fileIdx);
    }

    this->FUN_02048be4(&this->functions[idx]);
}

SScriptFunction *CSceneScriptManager::FUN_02048b10(int idx, s32 *outCount)
{
    SScriptFunction *function = NULL;

    if ((idx >= 0) && (idx < 3)) {
        function = &this->functions[idx];
        *outCount = this->loopCount[idx];
    }

    return function;
}

SScriptEvent *CSceneScriptManager::FUN_02048b4c(int idx, SScriptEvent *event, s32 count)
{
    SScriptEvent *ev = NULL;

    if ((idx >= 0) && (idx < 3)) {
        this->FUN_02048aac(idx);
        
        // MATCH:
        // I'm assuming that `this->functions[idx].data` is typeof `SScriptEvent`
        // (it's not impossible that `this->functions` could be typeof `SScriptEvent`, or an union).
        ev = reinterpret_cast<SScriptEvent *>(&this->functions[idx].data);
        reinterpret_cast<SScriptEvent *>(&this->functions[idx].data)->data = event->data;
        
        ev->next = event->next;
        ev->unk8 = event->unk8;
        ev->unk9 = event->unk9;
        ev->complete = event->complete;
        ev->state = event->state;
    #ifndef VSCODE_INTELLISENSE
        ev->variable = event->variable;
    #endif
        this->loopCount[idx] = count;
    }

    return ev;
}

void CSceneScriptManager::FUN_02048be4(SScriptFunction *func)
{
    for (int i = 0; i < 3; i++) {
        if (&this->functions[i] == func) {
            this->loopCount[i] = 0;
            MI_CpuClear8(&this->functions[i], sizeof(this->functions[i]));
            break;
        }
    }
}

s32 CSceneScriptManager::FUN_02048c34(void)
{
    return this->unk1E90;
}

void CSceneScriptManager::FUN_02048c40(void)
{
    this->unk1E8C = 0;
}

u8 CSceneScriptManager::FUN_02048c50(void)
{
    return this->unk1E8C;
}

