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
    /* ov16 0x020fe4f4 */ CSceneScriptThread();
    /* ov16 0x020fe51c */ void init(CSceneScriptManager *manager);
    /* ov16 0x020fe530 */ BOOL attach(int idx);
    /* ov16 0x020fe56c */ void detach(void);
    /* ov16 0x020fe584 */ BOOL evaluateCondition(SScriptInstruction *function, s32 *argv);
    /* ov16 0x020fe6e8 */ void start(CSceneDirection *direction, SScriptInstruction *function, s32 *argv);
    /* ov16 0x020fe8b0 */ s32 stop(void);
    /* ov16 0x020fe904 */ void requestFastForward(void);
    /* ov16 0x020fe918 */ void requestSkip(void);
    /* ov16 0x020fe92c */ BOOL update(void);
    /* ov16 0x020fe9a4 */ SScriptEvent *getEvents(void);
    /* ov16 0x020fe9ac */ int getEventCount(void);
    /* ov16 0x020fe9b4 */ void setCurEvent(SScriptEvent *event);
    /* ov16 0x020fe9bc */ void setRunning(BOOL running);
    /* ov16 0x020fe9c4 */ void *callocate(size_t size);
    /* ov16 0x020fe9d4 */ void free(void *ptr);
    /* ov16 0x020fe9e4 */ SScriptInstruction *next(SScriptInstruction *cur);
    /* ov16 0x020fe9f4 */ void setFunctionArguments(SScriptInstruction *function, s32 *argv);
    /* ov16 0x020fea74 */ SScriptEvent *findEventByNum(SScriptEvent *start, s32 num);
    /* ov16 0x020feb00 */ SScriptEvent *findEventReverseByNum(SScriptEvent *start, s32 num);
    /* ov16 0x020feb9c */ SScriptEvent *findPreviousEventByID(SScriptEvent *start, u16 id);
    /* ov16 0x020febf8 */ SScriptEvent *evaluateArguments(SScriptEvent *event, UScriptVariable *argv);
    /* ov16 0x020fed6c */ SScriptEvent *evaluateArgumentsClear(SScriptEvent *event, UScriptVariable *argv);
    /* ov16 0x020feda4 */ void registerLabel(SScriptEvent *event);
    /* 0v16 0x020fedc8 */ SScriptEvent *executeEvents(SScriptEvent *first, SScriptEvent *last);
    /* ov16 0x020feeb8 */ BOOL executeEvent(SScriptEvent *event, s32 *result);

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
