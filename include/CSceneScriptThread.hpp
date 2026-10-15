#pragma once

#include <nitro.h>

#include "CSceneScriptData.hpp"
#include "CUnitMan.hpp"
#include "movieplayer.hpp"

class CSceneDirection;
class CSceneScriptFileContext;
class CSceneScriptManager;
class CSceneScriptThread;

typedef union {
    s32 i;
    u32 u;
    fx32 fx;
    char *c;
    s32 *p;
    struct SScriptEvent *event;
} UScriptVariable;

typedef struct SScriptEvent {
    SScriptInstruction *inst;
    SScriptEvent *next;
    s8 unk8;
    s8 wait;
    s8 complete;
    s8 state;
    union {
        UScriptVariable variable[8];
        struct {
            SScriptInstruction *start;
            CSceneScriptThread *thread;
            s32 unk14;
            s32 fileIdx;
            s32 functionNo;
            s32 unk20;
            s32 unk24;
            s32 unk28;
        } call;
    };
} SScriptEvent;

class CSceneScriptThread
{
public:
    CSceneScriptThread();
    void init(CSceneScriptManager *manager);
    BOOL attach(int idx);
    void detach(void);
    BOOL evaluateCondition(SScriptInstruction *function, s32 *argv);
    void start(CSceneDirection *direction, SScriptInstruction *function, s32 *argv);
    s32 stop(void);
    void requestFastForward(void);
    void requestSkip(void);
    BOOL update(void);
    SScriptEvent *getEvents(void);
    int getEventCount(void);
    void setCurEvent(SScriptEvent *event);
    void setRunning(BOOL running);
    void *callocate(size_t size);
    void free(void *ptr);
    SScriptInstruction *next(SScriptInstruction *cur);
    void setFunctionArguments(SScriptInstruction *function, s32 *argv);
    SScriptEvent *findEventByNum(SScriptEvent *start, s32 num);
    SScriptEvent *findEventReverseByNum(SScriptEvent *start, s32 num);
    SScriptEvent *findPreviousEventByID(SScriptEvent *start, u16 id);
    SScriptEvent *evaluateArguments(SScriptEvent *event, UScriptVariable *argv);
    SScriptEvent *evaluateArgumentsClear(SScriptEvent *event, UScriptVariable *argv);
    void registerLabel(SScriptEvent *event);
    SScriptEvent *executeEvents(SScriptEvent *from, SScriptEvent *end);
    BOOL executeEvent(SScriptEvent *event, s32 *result);

    BOOL event_6xxx(SScriptEvent *event, s32 *result);
    BOOL event_3xxx(SScriptEvent *event, s32 *result);
    BOOL event_4xxx(SScriptEvent *event, s32 *result);
    BOOL event_7xxx(SScriptEvent *event, s32 *result);
    BOOL event_default(SScriptEvent *event, s32 *result);
    BOOL event_1xxx_2xxx(SScriptEvent *event, s32 *result);

    CSceneDirection *direction;
    CSceneScriptManager *manager;
    CSceneScriptFileContext *fileContext;
    SScriptInstruction *bodyStart;
    s32 localVariables[64];
    SScriptEvent *curEvent;
    SScriptEvent *labels[8];
    SScriptEvent *events;
    int eventCount;
    s32 unk13C;
    int fileIdx;
    int functionNo;
    BOOL running;
    BOOL fastForward;
    BOOL skip;
    u32 unk154;
    BOOL skipLocked;
    BOOL unk15C;
    int argc;
    s32 returnValue;
    u32 elapsedTime;
    u32 unk16C;
    u8 unk170[0x8];
    u32 deltaTime;
    int labelCount;
    u32 unk180;
    SScriptEvent *blockEnd;
    s32 loopCount;
    u8 unk18C[0x68]; // st_unit_base?
    st_unit_base unitbase;
    SMovieInfo movieInfo;
    u32 unk290;
    CUnitMan unitMan;
};
