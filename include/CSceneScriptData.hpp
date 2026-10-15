#pragma once

#include <nitro.h>

typedef enum {
    SCRIPT_VERSION_2 = 0x20000, // unused
    SCRIPT_VERSION_3 = 0x30000,
    SCRIPT_VERSION_MASK = 0xFFFF0000,
} EScriptVersion;

typedef enum {
    SCRIPT_ARGTYPE_NONE   = 0,
    SCRIPT_ARGTYPE_INT    = 1,
    SCRIPT_ARGTYPE_FIX    = 2,
    SCRIPT_ARGTYPE_STRING = 3,
    SCRIPT_ARGTYPE_EXPR   = 4,
    SCRIPT_ARGTYPE_VAR    = 5,
    SCRIPT_ARGTYPE_PTR    = 6,
} EScriptArgType;

typedef enum {
    SCRIPT_VAR_GLOBAL     = 0x10000,
    SCRIPT_VAR_FILE       = 0x20000,
    SCRIPT_VAR_INDEX_MASK = 0xFFFF,
} EScriptVarFlags;

typedef struct {
    char identifier[4]; // `"SSD\0"`
    u32 version;
    u32 fileSize;
    s16 instCount;
    s16 strCount;
} SScriptHeaderV2;

typedef struct {
    char magic[4]; // `"SSD\0"`
    u32 version;
    u32 fileSize;
    s16 instCount;
    s16 strCount;
    u32 instSize;
    u32 strSize;
    u32 pad[2];
    // ScriptInstruction instEntries[instCount];
    // ScriptString textEntries[textCount];
} SScriptHeaderV3;

typedef struct {
    u16 num;
    s16 size;
    u16 id;
    u8 argc;
    u8 wait;
    // u32 argTypes[(argc + 7) / 8];
    // u32 args[argc];
} SScriptInstruction;

typedef struct {
    s16 num;
    u8 slot;
    u8 size;
    char string[];
} SScriptString;

class CSceneScriptData
{
public:
    CSceneScriptData();
    ~CSceneScriptData();
    
    BOOL initFile(void *data, const char *magic);
    SScriptInstruction *next(SScriptInstruction *cur);
    SScriptInstruction *getInstructionByID(s32 id);

    static inline u32 *getArgTypes(SScriptInstruction *i)
    {
        return (u32 *)(i + 1);
    }
    static inline s32 getArgTypeWords(SScriptInstruction *i)
    {
        return (i->argc + 7) / 8;
    }
    static inline s32 *getArgs(SScriptInstruction *i, int typeWords)
    {
        return (s32 *)((u32 *)i + typeWords + sizeof(*i) / sizeof(u32));
    }
    static inline s32 *getArgs(SScriptInstruction *i)
    {
        return getArgs(i, getArgTypeWords(i));
    }
    static inline s32 getArg(SScriptInstruction *i, int typeWords, int n)
    {
        return ((s32 *)i + typeWords)[n + sizeof(*i) / sizeof(u32)];
    }
    static inline s32 *getShortArgs(SScriptInstruction *i)
    {
        return (s32 *)(getArgTypes(i) + 1);
    }
    static inline int getArgType(SScriptInstruction *i, int n)
    {
        return (((s32 *)getArgTypes(i))[n / 8] >> ((n & 7) * 4)) & 0xF;
    }
    static inline int getCategory(SScriptInstruction *i)
    {
        return i->id >> 12;
    }

private:
    SScriptHeaderV3 *header;
    SScriptInstruction *instStart;
    int instSize;
    int strCount;
    int strSize;
    SScriptString *strStart;
};
