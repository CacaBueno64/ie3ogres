#pragma once

#include <nitro/gx/gxcommon.h>
#include <nitro/types.h>

#include "C3DSprFile.hpp"

/* TODO: Move to CFontManager */
typedef struct {
    s16 x;
    s16 y;
    s16 w;
    s16 h;
} SGlyphBounds;

typedef int pskey_t;

typedef enum {
    PLANE_FLAG_ACTIVE = 0x1,
    PLANE_FLAG_VISIBLE = 0x2,
    PLANE_FLAG_FLIP_S = 0x4,
    PLANE_FLAG_FLIP_T = 0x8,
    PLANE_FLAG_10 = 0x10,
    PLANE_FLAG_20 = 0x20,
    PLANE_FLAG_COLOR_0 = 0x40,
    PLANE_FLAG_BACKGROUND = 0x80,
    PLANE_FLAG_1000 = 0x1000,
    PLANE_FLAG_2000 = 0x2000,
    PLANE_FLAG_4000 = 0x4000,
    PLANE_FLAG_8000 = 0x8000,
    PLANE_FLAG_3C = PLANE_FLAG_FLIP_S | PLANE_FLAG_FLIP_T | PLANE_FLAG_10 | PLANE_FLAG_20,
    PLANE_FLAG_SET_ALL = PLANE_FLAG_ACTIVE | PLANE_FLAG_VISIBLE | PLANE_FLAG_1000 | PLANE_FLAG_2000 | PLANE_FLAG_4000,
    PLANE_FLAG_PART_ALL = PLANE_FLAG_ACTIVE | PLANE_FLAG_VISIBLE | PLANE_FLAG_FLIP_S | PLANE_FLAG_FLIP_T |
                          PLANE_FLAG_10 | PLANE_FLAG_20 | PLANE_FLAG_COLOR_0 | PLANE_FLAG_BACKGROUND | PLANE_FLAG_1000 |
                          PLANE_FLAG_2000 | PLANE_FLAG_4000 | PLANE_FLAG_8000,
} E3DPlaneFlag;

typedef enum {
    PLANE_UPDATE_FLAG_1 = 1,
    PLANE_UPDATE_FLAG_TEXCOORD = 2,
    PLANE_UPDATE_FLAG_POS_CENTER = 4,
    PLANE_UPDATE_FLAG_ROT_CENTER = 8,
    PLANE_UPDATE_FLAG_ALL = 0xFF,
} E3DPlaneUpdateFlag;

typedef struct {
    sfkey_char_t texSheet;
    sfkey_char_t plttSheet;
    u16 flags;
    u8 alpha;
    u8 polygonID;
    GXRgb colorMask;
    s16 texWidth;
    s16 texHeight;
    s16 texS;
    s16 texT;
    s16 scalePctX;
    s16 scalePctY;
    u16 rotation;
    u8 unk_16[2];
    u8 rotCenterPctX;
    u8 rotCenterPctY;
    u8 posCenterPctX;
    u8 posCenterPctY;
    VecFx32 offset;
    fx32 unk_28;
    fx32 unk_2c;
    u8 unk_30[4];
    u8 plttIdx;
    u8 updateFlags;
    u8 unk_36;
    u8 graphicIdx;
    fx32 width;
    fx32 height;
    fx32 s0;
    fx32 s1;
    fx32 t0;
    fx32 t1;
    fx32 posCenterX;
    fx32 posCenterY;
    fx32 rotCenterX;
    fx32 rotCenterY;
} S3DPlanePart;

typedef struct S3DPlaneSet S3DPlaneSet;
struct S3DPlaneSet {
    S3DPlanePart *parts;
    u16 flags;
    u8 partCount;
    u8 alpha;
    VecFx32 pos;
    GXRgb colorMask;
    u8 priority;
    u8 pad_17[1];
    S3DPlaneSet *prev;
    S3DPlaneSet *next;
};

class C3DPlaneCtrl
{
public:
    void *FUN_ov16__021113cc(sfkey_t key);
    void *FUN_ov16__021113f0(sfkey_t key);
    void *FUN_ov16__02111414(sfkey_t key);
    s32 getTexWidth(sfkey_t key);
    s32 getTexHeight(sfkey_t key);
    void setUpdateFlag(S3DPlanePart *p, u8 mask);
    bool init(int texCount, int setCount);
    void finalize();
    bool acquire();
    void release();
    void draw(bool foreground);
    void drawForeground();
    void drawMidground();
    pskey_t create(int partCount, bool insert);
    void destroy(pskey_t set);

    void setTexAll(pskey_t set, sfkey_char_t file);
    void setPlttAll(pskey_t set, sfkey_char_t file);
    void setPlttIdxAll(pskey_t set, u8 idx);
    void setDepthAll(pskey_t set, unsigned depth);
    void setDepthStepAll(pskey_t set, int depth, int step);
    void setAlphaAll(pskey_t set, u8 alpha);
    void setColorMaskAll(pskey_t set, GXRgb color);
    void setPosAll(pskey_t set, s16 x, s16 y);
    void setTexScaleAll(pskey_t set, s16 pctX, s16 pctY);
    void setTexWHAll(pskey_t set, s16 width, s16 height);
    void setTexSTAll(pskey_t set, s16 s, s16 t);
    void setFlagAll(pskey_t set, u16 mask, bool enable);
    void clearFlagAll(pskey_t set, u16 mask);
    void setGraphicIdxAll(pskey_t set, u8 idx, bool async);
    void setPosAnchorAll(pskey_t set, u8 pctX, u8 pctY);
    void setBounds(pskey_t set, SGlyphBounds *bounds, int count);
    void setPolygonID(pskey_t set, u8 polygonID);

    void setTex(pskey_t set, int part, sfkey_char_t file);
    void setPltt(pskey_t set, int part, sfkey_char_t file);
    void setPlttIdx(pskey_t set, int part, u8 idx);
    void setDepth(pskey_t set, int part, unsigned depth);
    void setAlpha(pskey_t set, int part, u8 alpha);
    void setColorMask(pskey_t set, int part, u16 mask);
    void setPos(pskey_t set, int part, s16 x, s16 y);
    void setTexScale(pskey_t set, int part, s16 pctX, s16 pctY);
    void setTexWH(pskey_t set, int part, s16 width, s16 height);
    void setTexST(pskey_t set, int part, s16 texS, s16 texT);
    void setRotation(pskey_t set, int part, u16 rot);
    void setFlag(pskey_t set, int part, u16 mask, bool enable);
    void clearFlag(pskey_t set, int part, u16 mask);
    void setGraphicIdx(pskey_t set, int part, u8 idx, bool async);
    void setRotAnchor(pskey_t set, int part, u8 pctX, u8 pctY);
    void setPosAnchor(pskey_t set, int part, u8 pctX, u8 pctY);

    void setColorMask(pskey_t set, GXRgb color);
    void setPos(pskey_t set, s16 x, s16 y);
    void setFlag(pskey_t set, u16 mask, bool enable);
    void clearFlag(pskey_t set, u16 mask);

    S3DPlanePart *getPartExt(pskey_t set, int part);
    S3DPlaneSet *getSetExt(pskey_t set);
    void getDimensions(pskey_t set, int part, int *widthOut, int *heightOut);
    u8 getAlpha(pskey_t set, int part);
    u8 getAnchorPctX(pskey_t set, int part);
    u8 getAnchorPctY(pskey_t set, int part);

    void convertTilesToTex(sfkey_t key);
    void convertTilesToTex(sfkey_t key, int width, GXTexFmt fmt);

private:
    bool getResKeyAddresses(C3DSprSheet *sheet, u32 *texOut, u32 *plttOut);
    bool isFree(S3DPlaneSet *s);
    pskey_t getFree();
    void insertNode(S3DPlaneSet **head, S3DPlaneSet **tail, S3DPlaneSet *node);
    void removeNode(S3DPlaneSet **head, S3DPlaneSet **tail, S3DPlaneSet *node);
    void uploadMaterial();
    void uploadColor(S3DPlaneSet *s, S3DPlanePart *p);
    bool uploadTexture(S3DPlaneSet *s, S3DPlanePart *p);
    bool uploadMatrix(S3DPlaneSet *s, S3DPlanePart *p, bool foreground);
    void uploadMesh(S3DPlaneSet *s, S3DPlanePart *p);
    void updateAnchors(S3DPlanePart *p);
    void updateTexCoords(S3DPlanePart *p);
    void setTex(S3DPlanePart *p, sfkey_char_t sheet);
    void setPltt(S3DPlanePart *p, sfkey_char_t sheet);
    void setTexWH(S3DPlanePart *p, s16 width, s16 height);
    void setGraphicIdx(S3DPlanePart *p, u8 idx, bool async);

    inline S3DPlaneSet *getSet(pskey_t set)
    {
        if (!this->list || this->count <= 0) return NULL;
        if (set <= 0 || set > this->count) return NULL;
        return this->list + (set + -1);
    }

    inline S3DPlanePart *getPart(S3DPlaneSet *s, int part)
    {
        if (!s || !s->parts || part <= 0 || part > s->partCount) {
            return NULL;
        }
        return s->parts + (part - 1);
    }

    C3DSprFile file;
    S3DPlaneSet *list;
    s32 count;
    S3DPlaneSet *head;
    S3DPlaneSet *tail;
};

extern C3DPlaneCtrl *g3DPlaneCtrl;
