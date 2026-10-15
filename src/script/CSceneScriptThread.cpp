#include "CSceneScriptThread.hpp"

#include <nitro.h>

#include "CAllocator.hpp"
#include "CSceneScriptData.hpp"
#include "CSceneScriptFileContext.hpp"
#include "CSceneScriptManager.hpp"
#include "graphics.hpp"

CSceneScriptThread::CSceneScriptThread()
{
    this->manager = NULL;
    this->running = FALSE;
    this->unk290 = 0;
}

void CSceneScriptThread::init(CSceneScriptManager *manager)
{
    this->manager = manager;
    this->events = NULL;
    this->running = FALSE;
}

BOOL CSceneScriptThread::attach(int idx)
{
    if (!this->manager) {
        return FALSE;
    }
    if (this->running) {
        return FALSE;
    }
    
    this->fileIdx = idx;
    this->fileContext = this->manager->getFileContext(idx);

    return TRUE;
}

void CSceneScriptThread::detach(void)
{
    this->stop();
    this->fileContext = NULL;
}

BOOL CSceneScriptThread::evaluateCondition(SScriptInstruction *function, s32 *argv)
{
    int num = 0;
    
    if (!function) {
        return FALSE;
    }

    this->bodyStart = function;
    this->running = TRUE;

    this->setFunctionArguments(function, argv);

    int typeWords = CSceneScriptData::getArgTypeWords(function);
    SScriptInstruction *v0 = this->next(function);
    if (v0->id != 0x6012) {
        this->running = FALSE;
        return CSceneScriptData::getArgs(function, typeWords)[0];
    }

    function = this->next(function);
    while (function) {
        if (function->id == 0x6001) {
            break;
        }
        num++;
        function = this->next(function);
    }
    if (!function) {
        this->running = FALSE;
        return FALSE;
    }

    this->eventCount = num;
    this->events = static_cast<SScriptEvent *>(this->callocate(sizeof(*this->events) * this->eventCount));
    if (!this->events) {
        return FALSE;
    }
    
    for (int i = 0; i < this->eventCount; i++) {
        this->events[i].inst = v0;
        v0 = this->next(v0);
    }

    s32 result;
    this->executeEvent(this->events, &result);

    gAllocator.deallocate(this->events);
    this->events = NULL;
    this->eventCount = 0;
    this->running = FALSE;

    if (result) {
        return CSceneScriptData::getArgs(this->bodyStart, typeWords)[0];
    }

    return FALSE;
}

void CSceneScriptThread::start(CSceneDirection *direction, SScriptInstruction *function, s32 *argv)
{
    this->setFunctionArguments(function, argv);
    MI_CpuClear8(&this->labels, sizeof(this->labels));
    if (function->id == 0x3001) {
        this->functionNo = CSceneScriptData::getArgs(function)[0];
    }

    function = this->next(function);
    while (function) {
        if (function->id == 0x6001) {
            break;
        }

        function = this->next(function);
    }
    if (!function) {
        return;
    }

    this->bodyStart = function;
    
    int num = 1;
    SScriptInstruction *cur = this->next(function);
    while (cur) {
        num++;
        if ((cur->id == 0x6002) && (CSceneScriptData::getShortArgs(cur)[0] == 0)) {
            break;
        }
        cur = this->next(cur);
    }
    if (!cur) {
        return;
    }

    s32 type, code;
    this->fileContext->getTypeAndCode(&type, &code);

    this->eventCount = num;
    this->events = static_cast<SScriptEvent *>(this->callocate(sizeof(*this->events) * this->eventCount));
    if (!this->events) {
        return;
    }

    cur = this->bodyStart;
    for (int i = 0; i < this->eventCount; i++) {
        this->events[i].inst = cur;
        this->events[i].wait = cur->wait;

        cur = this->next(cur);
    }

    this->direction = direction;
    this->curEvent = this->events;
    this->unk180 = 0;
    this->elapsedTime = 0;
    this->fastForward = FALSE;
    this->skip = FALSE;
    this->unk154 = 0;
    this->skipLocked = FALSE;
    this->unk15C = FALSE;
    this->running = TRUE;
    this->returnValue = 0;
    
}

s32 CSceneScriptThread::stop(void)
{
    this->running = FALSE;

    if (this->events) {
        s32 type, code;
        this->fileContext->getTypeAndCode(&type, &code);
        
        this->free(this->events);
    }

    this->events = NULL;
    this->eventCount = 0;

    return this->returnValue;
}

void CSceneScriptThread::requestFastForward(void)
{
    if (!this->skipLocked) {
        this->fastForward = TRUE;
    }
}

void CSceneScriptThread::requestSkip(void)
{
    if (!this->skipLocked) {
        this->skip = TRUE;
    }
}

BOOL CSceneScriptThread::update(void)
{
    if (this->running == FALSE) {
        return FALSE;
    }

    u32 t = this->elapsedTime + gDeltaTime;
    this->deltaTime = gDeltaTime;
    this->elapsedTime = t;

    SScriptEvent *ev = this->executeEvents(this->curEvent, &this->events[this->eventCount - 1]);
    this->curEvent = ev;
    if (ev >= &this->events[this->eventCount - 1]) {
        this->running = FALSE;
        return FALSE;
    }

    return TRUE;
}

SScriptEvent *CSceneScriptThread::getEvents(void)
{
    return this->events;
}

int CSceneScriptThread::getEventCount(void)
{
    return this->eventCount;
}

void CSceneScriptThread::setCurEvent(SScriptEvent *event)
{
    this->curEvent = event;
}

void CSceneScriptThread::setRunning(BOOL running)
{
    this->running = running;
}

void *CSceneScriptThread::callocate(size_t size)
{
    return this->manager->callocate(size);
}

void CSceneScriptThread::free(void *ptr)
{
    this->manager->free(ptr);
}

SScriptInstruction *CSceneScriptThread::next(SScriptInstruction *cur)
{
    return this->fileContext->next(cur);
}

void CSceneScriptThread::setFunctionArguments(SScriptInstruction *function, s32 *argv)
{
    MI_CpuClear8(&this->localVariables, sizeof(this->localVariables));

    if (!argv) {
        return;
    }

    s32 typeWords = CSceneScriptData::getArgTypeWords(function);
    for (int i = 2; i < function->argc; i++) {
        this->localVariables[CSceneScriptData::getArg(function, typeWords, i)] = argv[i - 2];
    }

    this->argc = function->argc - 2;
}

SScriptEvent *CSceneScriptThread::findEventByNum(SScriptEvent *start, s32 num)
{
    if (!start) {
        start = this->events;
    }

    int i;
    int idx = ((int)start - (int)this->events) / sizeof(*start);

    SScriptEvent *cur = start;
    for (i = idx; i < this->eventCount; i++) {
        if (cur->inst->num == num) {
            return cur;
        }

        cur++;
    }

    cur = start - 1;
    for (i = idx; i > 0; i--) {
        if (cur->inst->num == num) {
            return cur;
        }

        cur--;
    }

    return NULL;
}

SScriptEvent *CSceneScriptThread::findEventReverseByNum(SScriptEvent *start, s32 num)
{
    if (!start) {
        start = &this->events[this->eventCount - 1];
    }

    int idx = ((int)start - (int)this->events) / sizeof(*start);

    SScriptEvent *cur = start;
    int i;
    for (i = idx; i >= 0; i--) {
        if (cur->inst->num == num) {
            return cur;
        }

        cur--;
    }

    cur = start + 1;
    for (i = idx + 1; i < this->eventCount; i++) {
        if (cur->inst->num == num) {
            return cur;
        }

        cur++;
    }

    return NULL;
}

SScriptEvent *CSceneScriptThread::findPreviousEventByID(SScriptEvent *start, u16 id)
{
    if (!start) {
        start = &this->events[this->eventCount - 1];
    }

    int idx = ((int)start - (int)this->events) / sizeof(*start);
    while (idx >= 0) {
        if (start->inst->id == id) {
            return start;
        }

        start--;
        idx--;
    }

    return NULL;
}


SScriptEvent *CSceneScriptThread::evaluateArguments(SScriptEvent *event, UScriptVariable *argv)
{
    SScriptEvent *next = event;
    SScriptInstruction *inst = next->inst;
    next++;

    s32 typeWords = CSceneScriptData::getArgTypeWords(inst);
    for (int i = 0; i < inst->argc; i++)
    {
        switch (CSceneScriptData::getArgType(inst, i)) {
        case SCRIPT_ARGTYPE_INT:
        case SCRIPT_ARGTYPE_FIX:
            argv[i].fx = static_cast<fx32>(CSceneScriptData::getArg(inst, typeWords, i));
            break;
        case SCRIPT_ARGTYPE_STRING:
            argv[i].c = reinterpret_cast<char *>(CSceneScriptData::getArg(inst, typeWords, i));
            break;
        case SCRIPT_ARGTYPE_EXPR:
        {
            SScriptEvent *ev = this->findEventByNum(next, CSceneScriptData::getArg(inst, typeWords, i));

            s32 result;
            this->executeEvent(ev, &result);
            
            next = ev->next;
            if (!next) {
                next = ++ev;
            }
            
            argv[i].i = result;
            break;
        }
        case SCRIPT_ARGTYPE_VAR:
        {
            s32 arg = CSceneScriptData::getArg(inst, typeWords, i);
            u16 idx = static_cast<u16>(arg);

            if (arg & SCRIPT_VAR_GLOBAL) {
                argv[i].i = *this->manager->getGlobalVariable(idx);
            } else if (arg & SCRIPT_VAR_FILE) {
                argv[i].i = *this->fileContext->getVariable(idx);
            } else {
                argv[i].i = this->localVariables[idx];
            }
            break;
        }
        case SCRIPT_ARGTYPE_PTR:
        {
            s32 arg = CSceneScriptData::getArg(inst, typeWords, i);
            u16 idx = static_cast<u16>(arg);

            if (arg & SCRIPT_VAR_GLOBAL) {
                argv[i].p = this->manager->getGlobalVariable(idx);
            } else if (arg & SCRIPT_VAR_FILE) {
                argv[i].p = this->fileContext->getVariable(idx);
            } else {
                argv[i].p = &this->localVariables[idx];
            }
            break;
        }
        case SCRIPT_ARGTYPE_NONE:
        default:
            break;
        }
    }

    return next;
}

SScriptEvent *CSceneScriptThread::evaluateArgumentsClear(SScriptEvent *event, UScriptVariable *argv)
{
    MI_CpuClearFast(argv, sizeof(argv) * 32);
    event->next = this->evaluateArguments(event, argv);
    return event->next;
}

void CSceneScriptThread::registerLabel(SScriptEvent *event)
{
    s32 idx = event->variable[0].event->variable[0].i;
    this->labelCount = idx;
    this->labels[idx] = event;
    this->labelCount++;
}

SScriptEvent *CSceneScriptThread::executeEvents(SScriptEvent *from, SScriptEvent *end)
{
    s32 result; // unused

    SScriptEvent *cur = from;

    while (cur < end) {
        if (cur->complete) {
            if (cur->next) {
                cur = cur->next;
            } else {
                cur++;
            }
            continue;
        }

        if ((this->skip) && (CSceneScriptData::getCategory(cur->inst) == 3)) {
            if (cur->inst->id != 0x3003) {
                cur->complete = TRUE;
            }
        }

        this->executeEvent(cur, &result);

        SScriptEvent *next = cur->next;
        if ((next < from) && (next)) {
            from = next;
        }

        if (!cur->complete && cur->wait) {
            break;
        }

        cur = next;
        if (!cur) {
            break;
        }
    }

    while (from->complete) {
        from++;
    }

    return from;
}

BOOL CSceneScriptThread::executeEvent(SScriptEvent *event, s32 *result)
{
    BOOL ret;
    s32 v0;

    switch (CSceneScriptData::getCategory(event->inst)) {
    case 1:
    case 2:
        ret = this->event_1xxx_2xxx(event, &v0);
        break;
    case 3:
        ret = this->event_3xxx(event, &v0);
        break;
    case 4:
        ret = this->event_4xxx(event, &v0);
        break;
    case 6:
        ret = this->event_6xxx(event, &v0);
        break;
    case 7:
        ret = this->event_7xxx(event, &v0);
        break;
    case 0:
    case 5:
    default:
        ret = this->event_default(event, &v0);
        break;
    }

    if (result) {
        *result = v0;
    }

    return ret;
}
