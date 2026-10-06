#pragma once

// clang-format off
#include <nitro/types.h>  // for BOOL, s32, u32
#include <nitro/fx/fx.h>
// clang-format on

#define CONFIG_MAX_ENTRIES 96

typedef struct {
    fx32 defaultScaleChar;
    fx32 defaultScaleEffect;
    fx32 unkDefaultScale;
    fx32 defaultScaleMapObject;
    fx32 defaultScaleCamera;
    fx32 scaleChar;
    fx32 scaleEffect;
    fx32 scaleMap;
    fx32 scaleMapObject;
    fx32 scaleCamera;
    fx32 defaultFieldWidth;
    fx32 defaultFieldHeight;
    fx32 defaultFieldMarginW;
    fx32 defaultFieldMarginH;
} UnkStruct_0208F6F0;
extern UnkStruct_0208F6F0 unk_0208F6F0;

typedef struct {
    u8 izType; // 0: Ogre, 1: Bomber (or Spark idk)
    u8 geometryUnderflowCheck;
    u8 menuMovieMax;
    u32 rpgMoveAccelUp;
    u32 rpgMoveAccelDown;
    u32 rpgMoveSpeed;
    u32 rpgStandDist;
    u32 rpgGiveupMoveDist;
    u16 rpgMinimapScrollVelocity;
} UnkStruct_0209A1A8;
extern UnkStruct_0209A1A8 unk_0209A1A8;

class CConfig
{
public:
    typedef struct {
        u32 crc32;
        int value;
    } ParamEntry;

    CConfig();
    ~CConfig();
    void clear(void);
    BOOL openFile(const char *filename);
    int getParam(const char *param);
    void init(void);
    int getParamIdx(const char *param);
    BOOL readFileParam(const char *file, ParamEntry *param);

private:
    ParamEntry *paramEntry;
    s32 paramCount;
};

extern CConfig gConfig;
