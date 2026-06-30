#pragma once

#include <nitro/types.h>

#include "CModel.hpp"
#include "CModelCfg.hpp"
#include "archive.hpp"

typedef struct {
    u32 unitNo;
    int idx;
    u32 unk8;
    u8 unkC;
    u8 unkD;
    u8 layer;
    u8 unkF;
    CompositeModel *instance;
    CModelCfg *modelCfg;
    SNsbResource *nsbRes;
} CharacterModel;

class C3DGameChar_Base
{
public:
    /* 0x0205244c */ virtual BOOL close(void);
    /* 0x020524a0 */ virtual BOOL setup(void);

    s32 charCount;
    CompositeModel *models;
};

class C3DGameChar : public C3DGameChar_Base
{
public:
    C3DGameChar()
    {
        this->reset();
    }
    virtual ~C3DGameChar(); // should be inlined

    /* 0x02059fcc */ void reset(void);
    /* 0x0205a1bc */ void init(int char_count);

    CharacterModel *chars;
    CModelCfg *modelCfg;
    u8 unk14;
    SFileData modelData[10];
    u32 unk90;
};

extern C3DGameChar *g3DGameChar;
