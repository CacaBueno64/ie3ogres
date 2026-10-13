#pragma once

#include <nitro/types.h>

#include "CNsbResourceMan.hpp"
#include "CSceneScriptData.hpp"

typedef struct {
    fx32 frame;
    int nextAnim;
    int curAnim;
    fx32 startFrame;
    fx32 endFrame;
    fx32 speed;
    fx32 baseSpeed;
    u8 finished;
    u8 endMode;
    u8 pad[0x2];
} SAnimState;

class CModelCfg
{
public:
    virtual ~CModelCfg() {}
    virtual void reset(void);
    virtual void init(SNsbResource *param1);
    virtual void vFUN_10(void);
    virtual void vFUN_14(void);
    virtual void vFUN_18(void);
    virtual void vFUN_1C(void);
    virtual void destroy(void);
    virtual void vFUN_24(int param1);

    bool FUN_ov16_020fb02c(void);
    bool FUN_ov16_020fb048(void);

    SNsbResource *res;
    bool scriptLoaded;
    CSceneScriptData script;
    SAnimState animState;
    int unk44;
    u8 unk48[0x44];
    u8 unk8C[0x44];
    u8 unkD0[0x44];
};
