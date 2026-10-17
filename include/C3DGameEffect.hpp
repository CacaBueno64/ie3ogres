#pragma once

#include <nitro.h>

#include "C3DGameBase.hpp"
#include "CModelCfg.hpp"
#include "CNsbResourceMan.hpp"

typedef struct SEffectInstance {
    s32 code;
    int target;
    u16 flags;
    u8 posMode; // 0: none, 1: absolute, 2: relative to g3DGameMap, 3: attached to a character
    u8 loadState; // 0: free, 1: loading, 2: file loaded, 3: ready
    VecFx32 trans;
    VecFx32 rot;
    VecFx32 scale;
    CModel *model;
    CModelCfg *modelCfg;
    SNsbResource *nsbRes;
} SEffectInstance;

class C3DGameEffect : public C3DGameBase
{
public:
    C3DGameEffect()
    {
        this->reset();
    }
    virtual const char *getPkhPath(int type);
    virtual const char *getPkbPath(int type);
    virtual bool getFileKeys(const char *path, int *outIdx, s32 *outCode);
    virtual ~C3DGameEffect();

    void reset(void);
    int makeHandle(s32 code, int slot);
    int handleToSlot(int handle);
    int getSlot(int handle, SEffectInstance **out);
    int findFreeSlot(SEffectInstance **out);
    void releaseSlot(SEffectInstance *effect);
    int updateSlotLoad(SEffectInstance *effect);
    bool setupSlotModel(SEffectInstance *effect);
    bool applySlotTransform(SEffectInstance *effect);
    bool init(int);
    void destroy(void);
    void update(int step);
    void drawWorld(void);
    void drawOverlay(void);
    int loadEffect(s32 code, bool async);
    int loadEffect(s32 code);
    bool startEffect(int handle);
    void releaseEffect(int handle);
    void releaseAll(void);
    int updateEffectLoad(int handle);
    int updateAllLoads(void);
    void setVisible(int handle, bool visible);
    void setPosMode(int handle, u8 posMode);
    void setTranslation(int handle, fx32 x, fx32 y, fx32 z);
    void setRotation(int handle, fx32 x, fx32 y, fx32 z);
    void setScale(int handle, fx32 x, fx32 y, fx32 z);
    VecFx32 getTranslation(int handle);
    VecFx32 getRotation(int handle);
    bool playAnim(int handle, const char *animName, u8 endMode);
    bool isAnimFinished(int handle);
    void setTarget(int handle, int target);
    void setFlags(int handle, u32 flags, bool set);
    void clearFlags(int handle, u32 flags);
    u16 getFlags(int handle);

    inline SEffectInstance *getEffectAt(SEffectInstance *arr, int idx)
    {
        if ((idx < 0) || (idx >= this->modelCount) || (!arr)) {
            return NULL;
        }

        return &arr[idx];
    }

    inline SEffectInstance *getEffect(int idx)
    {
        if ((idx < 0) || (idx >= this->modelCount) || (!this->effects)) {
            return NULL;
        }

        return &this->effects[idx];
    }

    SEffectInstance *effects;
    CModelCfg *modelCfgs;
};

extern C3DGameEffect *g3DGameEffect;
