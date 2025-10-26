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
    // Script_InstructionEntry Instructions[InstructionsCount];
    // Script_StringEntry Strings[StringsCount];
} Script_FileHeader;

typedef enum u8
{
    SCRIPT_ARGTYPE_UNK1 = 0x01,
    SCRIPT_ARGTYPE_UNK2 = 0x02,
    SCRIPT_ARGTYPE_UNK3 = 0x03,
    SCRIPT_ARGTYPE_UNK4 = 0x04,
    SCRIPT_ARGTYPE_UNK5 = 0x05,
    SCRIPT_ARGTYPE_UNK6 = 0x06
} Script_ArgType;

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
    SCRIPT_TYPE_EVENT  = 0x01,
    SCRIPT_TYPE_MATCH  = 0x02,
    SCRIPT_TYPE_ACTION = 0x03,
    SCRIPT_TYPE_HELP   = 0x04,
} ScriptType;

#endif //IE3OGRES_SCRIPT_H
