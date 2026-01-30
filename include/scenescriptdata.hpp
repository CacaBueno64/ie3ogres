#ifndef IE3OGRES_SCENESCRIPTDATA_H
#define IE3OGRES_SCENESCRIPTDATA_H

#pragma once

#include <nitro.h>

// unused
typedef struct {
    char identifier[4]; // `"SSD\0"`
    u32 version;
    u32 size;
    s16 instCount;
    s16 textCount;
} ScriptHeader2;

typedef struct {
    char identifier[4]; // `"SSD\0"`
    u32 version;
    u32 size;
    s16 instCount;
    s16 textCount;
    u32 instSize;
    u32 textSize;
    u32 pad0;
    u32 pad1;
    // ScriptInstruction instEntries[instCount];
    // ScriptString textEntries[textCount];
} ScriptHeader3;

typedef enum {
    SCRIPT_ARGTYPE_UNK1 = 0x01,
    SCRIPT_ARGTYPE_UNK2 = 0x02,
    SCRIPT_ARGTYPE_UNK3 = 0x03,
    SCRIPT_ARGTYPE_UNK4 = 0x04,
    SCRIPT_ARGTYPE_UNK5 = 0x05,
    SCRIPT_ARGTYPE_UNK6 = 0x06
} ScriptArgType;

typedef struct {
    s16 num;
    s16 size;
    u16 id;
    u8 argsCount;
    u8 unk;
    // u8 argTypes[4*ceil(argsCount/8)];
    // u32 args[argsCount];
} ScriptInstruction;

typedef struct {
    s16 num;
    u8 arg;
    u8 size;
    char string[];
} ScriptString;

typedef enum {
    SCRIPT_TYPE_NONE,
    SCRIPT_TYPE_EVENT,
    SCRIPT_TYPE_MATCH,
    SCRIPT_TYPE_ACTION,
    SCRIPT_TYPE_HELP,
} ScriptType;

class CSceneScriptData {
    public:
        /* 0x0202fd38 */ CSceneScriptData();
        /* 0x0202fd44 */ ~CSceneScriptData();
        /* 0x0202fd48 */ BOOL initFile(void *data, const char *identifier);
        /* 0x0202ff34 */ ScriptInstruction *next(ScriptInstruction *cur);
        /* 0x0202ff60 */ void *findInstructionID(u16 id);

        static inline u32 *getArgumentsPtr(ScriptInstruction *inst) {
            return reinterpret_cast<u32 *>(
                reinterpret_cast<u32>(inst) + (sizeof(u32) * MATH_DIVUP(inst->argsCount, (int)sizeof(*inst)))
            );
        }

    private:
    ScriptHeader3 *header;
    ScriptInstruction *instStart;
    int instSize;
    int strCount;
    int strSize;
    ScriptString *strStart;
};

#endif //IE3OGRES_SCENESCRIPTDATA_H
