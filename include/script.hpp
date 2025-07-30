#ifndef IE3OGRES_SCRIPT_H
#define IE3OGRES_SCRIPT_H

#include <nitro.h>

typedef struct {
    u8 identifier[4]; // SSD\0
    u32 Revision; // 0x20001 is unknown
    u32 TotalSize;
    s16 InstructionsCount;
    s16 StringsCount;
    u32 CodeSize;
    u32 TextSize;
    u32 pad0;
    u32 pad1;
    // Scirpt_InstructionEntry Instructions[InstructionsCount];
    // Script_StringEntry Strings[StringsCount];
} Script_FileHeader;

typedef enum u8
{
    UNK1 = 0x01,
    UNK2 = 0x02,
    UNK3 = 0x03,
    UNK4 = 0x04,
    UNK5 = 0x05,
    UNK6 = 0x06
} ArgType;

typedef struct {
    u16 Id;
    s16 Size;
    u16 Type;
    u8 ArgsCount;
    u8 Unk;
    u8 argTypes[4];
    // u32 Arg[ArgsCount];
} Script_InstructionEntry;

typedef struct {
    u16 Id;
    u8 Arg;
    u8 Size;
    // u8 String[Size];
} Script_StringEntry;

typedef enum u32
{
    EVENT  = 0x01,
    MATCH  = 0x02,
    ACTION = 0x03,
    HELP   = 0x04,
} ScriptType;

#endif //IE3OGRES_SCRIPT_H
