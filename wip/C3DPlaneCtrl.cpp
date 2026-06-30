#include "C3DPlaneCtrl.hpp"

#include <cstdint>

#include <nitro/fx/fx.h>
#include <nitro/gx/g3.h>
#include <nitro/gx/gxcommon.h>
#include <nitro/types.h>
#include <nnsys/g3d/gecom.h>
#include <nnsys/g3d/glbstate.h>

#include "allocator.hpp"
#include "pac.hpp"
#include "init/arm9_init.hpp"// IWYU pragma: keep

/* TODO: Create Header */ extern "C" s32 FUN_02053a5c(s32);
/* TODO: Create Header */ extern "C" void WorldToMatchCamera(s32 worldX, s32 worldY, s32 *matchX, s32 *matchY);

void *C3DPlaneCtrl::FUN_ov16__021113cc(sfkey_t key)
{
    C3DSprSheet *sheet = this->file.getSpriteSheet(key);
    if (!sheet) return NULL;
    return PAC_GetPtr(sheet->data, 0);
}

void *C3DPlaneCtrl::FUN_ov16__021113f0(sfkey_t key)
{
    C3DSprSheet *sheet = this->file.getSpriteSheet(key);
    if (!sheet) return NULL;
    return PAC_GetPtr(sheet->data, 1);
}

void *C3DPlaneCtrl::FUN_ov16__02111414(sfkey_t key)
{
    C3DSprSheet *sheet = this->file.getSpriteSheet(key);
    if (!sheet) return NULL;
    return PAC_GetPtr(sheet->data, 2);
}

s32 C3DPlaneCtrl::getTexWidth(sfkey_t key)
{
    C3DSprSheet *sheet = this->file.getSpriteSheet(key);
    if (!sheet) return 0;
    return 8 << sheet->s;
}

s32 C3DPlaneCtrl::getTexHeight(sfkey_t key)
{
    C3DSprSheet *sheet = this->file.getSpriteSheet(key);
    if (!sheet) return 0;
    return 8 << sheet->t;
}

bool C3DPlaneCtrl::getResKeyAddresses(C3DSprSheet *sheet, u32 *texAddr, u32 *plttAddr)
{
    return this->file.getResKeyAddresses(sheet, texAddr, plttAddr);
}

bool C3DPlaneCtrl::isFree(S3DPlaneSet *s)
{
    if (!s) return false;
    if (s->flags & PLANE_FLAG_ACTIVE) return false;
    return true;
}

pskey_t C3DPlaneCtrl::getFree()
{
    S3DPlaneSet *begin = this->list;
    if (!begin || this->count <= 0) {
        begin = NULL;
    } else if (this->count < 1) {
        begin = NULL;
    }
    if (!begin) return (pskey_t)0;
    for (int i = 1; i < this->count; ++i) {
        S3DPlaneSet *s = this->getSet(i);
        if (this->isFree(s)) {
            return (pskey_t)i;
        }
    }
    return (pskey_t)0;
}

void C3DPlaneCtrl::insertNode(S3DPlaneSet **head, S3DPlaneSet **tail, S3DPlaneSet *node)
{
    if (*head == NULL || *tail == NULL) {
        *head = node;
        *tail = node;
        return;
    }
    S3DPlaneSet *cur = *head;
    while (cur) {
        if (node->priority > cur->priority) break;
        cur = cur->next;
    }
    if (!cur) {
        (*tail)->next = node;
        node->next = NULL;
        node->prev = *tail;
        *tail = node;
    } else {
        if (cur == *head) {
            *head = node;
        }
        node->next = cur;
        node->prev = cur->prev;
        cur->prev = node;
    }
}

void C3DPlaneCtrl::removeNode(S3DPlaneSet **head, S3DPlaneSet **tail, S3DPlaneSet *node)
{
    if (node == *head) {
        *head = node->next;
    }
    if (node == *tail) {
        *tail = node->prev;
    }
    if (node->prev) {
        node->prev->next = node->next;
    }
    if (node->next) {
        node->next->prev = node->prev;
    }
    node->prev = NULL;
    node->next = NULL;
}

void C3DPlaneCtrl::uploadMaterial()
{
    NNS_G3dGeMaterialColorDiffAmb(GX_RGB(22, 22, 22), GX_RGB(8, 8, 8), true);
    NNS_G3dGeMaterialColorSpecEmi(GX_RGB(31, 31, 31), GX_RGB(8, 8, 8), true);
}

void C3DPlaneCtrl::uploadColor(S3DPlaneSet *s, S3DPlanePart *p)
{
    GXPolygonMode polyMode;
    if (p->flags & PLANE_FLAG_4000 || s->flags & PLANE_FLAG_4000) {
        polyMode = GX_POLYGONMODE_TOON;
        NNS_G3dGeColor(0x10);
    } else {
        polyMode = GX_POLYGONMODE_MODULATE;
        NNS_G3dGeColor(s->colorMask & p->colorMask);
    }
    NNS_G3dGePolygonAttr(0, polyMode, GX_CULL_BACK, p->polygonID, s->alpha < p->alpha ? s->alpha : p->alpha, GX_POLYGON_ATTR_MISC_NONE);
}

bool C3DPlaneCtrl::uploadTexture(S3DPlaneSet *s, S3DPlanePart *p)
{
    int pltt0;
    int flip;
    C3DSprSheet *texSheet;
    C3DSprSheet *plttSheet;
    texSheet = this->file.getSpriteSheet(p->texSheet);
    plttSheet = this->file.getSpriteSheet(p->plttSheet);
    pltt0 = (p->flags & PLANE_FLAG_COLOR_0) ? GX_TEXPLTTCOLOR0_USE : GX_TEXPLTTCOLOR0_TRNS;
    flip = GX_TEXFLIP_NONE;
    if (p->flags & PLANE_FLAG_FLIP_S) {
        flip &= 0xFF;
        flip |= GX_TEXFLIP_S;
    }
    if (p->flags & PLANE_FLAG_FLIP_T) {
        flip &= 0xFF;
        flip |= GX_TEXFLIP_T;
    }
    if (s->flags & PLANE_FLAG_8000 || p->flags & PLANE_FLAG_8000) {
        NNS_G3dGeTexPlttBase(0, GX_TEXFMT_NONE);
        NNS_G3dGeTexImageParam(GX_TEXFMT_NONE, GX_TEXGEN_NONE, GX_TEXSIZE_S8, GX_TEXSIZE_T8, GX_TEXREPEAT_NONE, GX_TEXFLIP_NONE, GX_TEXPLTTCOLOR0_USE, 0);
    } else {
        u32 texAddr;
        u32 plttAddr;
        if (!this->getResKeyAddresses(texSheet, &texAddr, NULL) ||
            !this->getResKeyAddresses(plttSheet, NULL, &plttAddr)) {
            return false;
        }
        u32 plttSize;
        u32 plttMaxCount = 0;
        if (plttSheet && this->file.getPaletteData(plttSheet, &plttSize)) {
            plttMaxCount = plttSize / this->file.getPaletteSizeSingle(plttSheet);
        }
        plttMaxCount &= 0xFF;
        u32 plttIdx = (p->plttIdx > plttMaxCount ? 0 : p->plttIdx) & 0xFF;
        plttAddr = this->file.getPaletteSizeSingle(plttSheet) * plttIdx + plttAddr;

        NNS_G3dGeTexPlttBase(plttAddr, (GXTexFmt)texSheet->format);
        NNS_G3dGeTexImageParam((GXTexFmt)texSheet->format, GX_TEXGEN_TEXCOORD, (GXTexSizeS)texSheet->s, (GXTexSizeT)texSheet->t, GX_TEXREPEAT_ST, (GXTexFlip)flip, (GXTexPlttColor0)pltt0, texAddr);
    }
    return true;
}

bool C3DPlaneCtrl::uploadMatrix(S3DPlaneSet *s, S3DPlanePart *p, bool foreground)
{
    this->updateAnchors(p);
    u16 rot = p->rotation;
    fx32 px = s->pos.x + p->offset.x - p->posCenterX;
    fx32 pz = s->pos.z + p->offset.z;
    fx32 py = s->pos.y + p->offset.y - p->posCenterY;
    VecFx32 pos = {px, py, pz};
    if (foreground) {
        if (p->flags & PLANE_FLAG_1000) {
            if (p->flags & PLANE_FLAG_2000) {
                pos.z -= FX_F32_TO_FX32(FUN_02053a5c((pos.y / FX32_ONE) + p->texHeight));
            }
            s32 matchX, matchY;
            WorldToMatchCamera(pos.x / FX32_ONE, pos.y / FX32_ONE, &matchX, &matchY);
            pos.x = FX_F32_TO_FX32(matchX);
            pos.y = FX_F32_TO_FX32(matchY);
        }
        if (rot % 0x4000 == 0) {
            if (pos.x >= FX32_CONST(255) || pos.y >= FX32_CONST(191) || pos.x + p->width < 0 || pos.y + p->height < 0) {
                return false;
            }
        }
        pos.y = -pos.y;
    }
    NNS_G3dGeTranslateVec(&pos);
    if (rot != 0 || !foreground) {
        NNS_G3dGeTranslate(p->rotCenterX, -p->rotCenterY, 0);
        MtxFx43 mtx;
        if (!foreground) {
            mtx = *NNS_G3dGlbGetCameraMtx();
            mtx._32 = 0;
            mtx._31 = 0;
            mtx._30 = 0;
            MTX_Inverse43(&mtx, &mtx);
            NNS_G3dGeMultMtx43(&mtx);
        }
        if (rot != 0) {
            MTX_RotZ43(&mtx, FX_SinIdx(rot), FX_CosIdx(rot));
            NNS_G3dGeMultMtx43(&mtx);
        }
        NNS_G3dGeTranslate(-p->rotCenterX, p->rotCenterY, 0);
    }
    pos.x = p->unk_28;
    pos.y = -p->unk_2c;
    if (foreground) {
        pos.y = -pos.y;
    }
    NNS_G3dGeTranslate(pos.x, pos.y, 0);
    NNS_G3dGeScale(p->width, p->height, FX32_CONST(1));
    return true;
}

void C3DPlaneCtrl::uploadMesh(S3DPlaneSet *s, S3DPlanePart *p)
{
    this->updateTexCoords(p);
    NNS_G3dGeTexCoord(p->s0, p->t0);
    NNS_G3dGeVtx(0, 0, 0);
    NNS_G3dGeTexCoord(p->s0, p->t1);
    NNS_G3dGeVtxXY(0, FX16_CONST(15));
    NNS_G3dGeTexCoord(p->s1, p->t1);
    NNS_G3dGeVtxXY(FX16_ONE, FX16_CONST(15));
    NNS_G3dGeTexCoord(p->s1, p->t0);
    NNS_G3dGeVtxXY(FX16_ONE, 0);
}

void C3DPlaneCtrl::setUpdateFlag(S3DPlanePart *p, u8 mask)
{
    p->updateFlags |= mask;
}

void C3DPlaneCtrl::updateAnchors(S3DPlanePart *p)
{
    if (!(p->updateFlags & (PLANE_UPDATE_FLAG_ROT_CENTER | PLANE_UPDATE_FLAG_POS_CENTER | PLANE_UPDATE_FLAG_1))) {
        return;
    }
    s32 pctX = p->scalePctX == 0 ? 100 : p->scalePctX;
    s32 pctY = p->scalePctY == 0 ? 100 : p->scalePctY;
    s32 width = p->texWidth * pctX / 100;
    s32 height = p->texHeight * pctY / 100;
    p->width = FX_F32_TO_FX32(width);
    p->height = FX_F32_TO_FX32(height);
    if (p->updateFlags & PLANE_UPDATE_FLAG_POS_CENTER) {
        p->posCenterX = p->width * p->posCenterPctX / 100;
        p->posCenterY = p->height * p->posCenterPctY / 100;
    }
    if (p->updateFlags & PLANE_UPDATE_FLAG_ROT_CENTER) {
        p->rotCenterX = p->width * p->rotCenterPctX / 100;
        p->rotCenterY = p->height * p->rotCenterPctY / 100;
    }
    p->updateFlags &= ~(PLANE_UPDATE_FLAG_ROT_CENTER | PLANE_UPDATE_FLAG_POS_CENTER | PLANE_UPDATE_FLAG_1);
}

void C3DPlaneCtrl::updateTexCoords(S3DPlanePart *p)
{
    if (p->updateFlags & PLANE_UPDATE_FLAG_TEXCOORD) {
        p->updateFlags &= ~PLANE_UPDATE_FLAG_TEXCOORD;
        fx32 left;
        fx32 top;
        fx32 right;
        fx32 bottom;
        left = FX_F32_TO_FX32(p->texS);
        top = FX_F32_TO_FX32(p->texT);
        if (p->flags & PLANE_FLAG_FLIP_S) {
            right = left + p->width;
        } else {
            right = FX_F32_TO_FX32(p->texS + p->texWidth);
        }
        if (p->flags & PLANE_FLAG_FLIP_T) {
            bottom = top + p->height;
        } else {
            bottom = FX_F32_TO_FX32(p->texT + p->texHeight);
        }
        s32 pctX = p->scalePctX == 0 ? 100 : p->scalePctX;
        s32 pctY = p->scalePctY == 0 ? 100 : p->scalePctY;
        fx32 offX = FX_Div(FX32_CONST(50), FX_F32_TO_FX32(pctX));
        fx32 offY = FX_Div(FX32_CONST(50), FX_F32_TO_FX32(pctY));
        if (p->flags & PLANE_FLAG_10) {
            fx32 temp = left;
            left = right - offX;
            right = temp - offX;
        }
        if (p->flags & PLANE_FLAG_20) {
            fx32 temp = top;
            top = bottom - offY;
            bottom = temp - offY;
        }
        fx32 unk_6;
        u16 rot = p->rotation;
        fx32 unk_14;
        if (rot != 0) {
            if (rot >= 0xE000) {
                unk_6 = 0;
                unk_14 = 0;
            } else if (rot >= 0xC000) {
                unk_6 = 0;
                unk_14 = FX_CosIdx((rot - 0xC000) * 2);
            } else if (rot >= 0xA000) {
                unk_6 = 0;
                unk_14 = FX32_ONE;
            } else if (rot >= 0x8000) {
                unk_6 = FX_CosIdx((rot - 0x8000) * 2);
                unk_14 = FX32_ONE;
            } else if (rot >= 0x6000) {
                unk_6 = FX32_ONE;
                unk_14 = FX_SinIdx((rot - 0x6000) * 2);
            } else if (rot >= 0x4000) {
                unk_6 = FX32_ONE;
                unk_14 = 0;
            } else if (rot >= 0x2000) {
                unk_6 = FX_SinIdx((rot - 0x2000) * 2);
                unk_14 = 0;
            } else {
                unk_6 = 0;
                unk_14 = 0;
            }
            if (p->flags & PLANE_FLAG_10) {
                unk_6 = -unk_6;
            }
            if (p->flags & PLANE_FLAG_20) {
                unk_14 = -unk_14;
            }
            fx32 unk1 = FX_Mul(unk_6, offX);
            fx32 unk2 = FX_Mul(unk_14, offY);
            left -= unk1;
            right -= unk1;
            top -= unk2;
            bottom -= unk2;
        }
        p->s0 = left;
        p->s1 = right;
        p->t0 = top;
        p->t1 = bottom;
    }
}

bool C3DPlaneCtrl::init(int texCount, int setCount)
{
    this->list = NULL;
    this->count = 0;
    this->head = NULL;
    this->tail = NULL;
    if (texCount <= 0 || setCount <= 0) {
        return false;
    }
    this->file.init(texCount);
    this->list = static_cast<S3DPlaneSet *>(gAllocator.allocate(setCount * sizeof(S3DPlaneSet)));
    if (!this->list) {
        this->release();
        return false;
    }
    MIi_CpuClearFast(0, this->list, setCount * sizeof(S3DPlaneSet));
    this->count = setCount;
    return true;
}

void C3DPlaneCtrl::finalize()
{
    if (this->list) {
        for (int i = this->count; i >= 1; --i) {
            this->destroy((pskey_t)i);
        }
        gAllocator.deallocate(this->list);
    }
    this->file.finalize();
    this->list = NULL;
    this->count = 0;
    this->head = NULL;
    this->tail = NULL;
}

bool C3DPlaneCtrl::acquire()
{
    this->file.acquire();
    return true;
}

void C3DPlaneCtrl::release()
{
    this->file.release(false);
}

void C3DPlaneCtrl::draw(bool foreground)
{
    if (!this->head) return;
    NNS_G3dGeBufferOP_N(G3OP_MTX_IDENTITY, NULL, 0);
    NNS_G3dGlbFlushP();
    int i;
    S3DPlaneSet *s = this->head;
    do {
        if (s->parts) {
            if (s->flags & PLANE_FLAG_VISIBLE && s->alpha != 0) {
                for (i = 1; i <= s->partCount; ++i) {
                    S3DPlanePart *p = this->getPart(s, i);
                    if (!p) continue;
                    if (p->unk_36 != 0) {
                        if (!this->file.FUN_02059004(p->texSheet)) continue;
                        this->setGraphicIdx(p, p->graphicIdx, false);
                    }
                    if (p->flags & PLANE_FLAG_VISIBLE && p->texWidth > 0 && p->texHeight > 0 && p->alpha != 0 &&
                        (foreground && !(p->flags & PLANE_FLAG_BACKGROUND) ||
                         foreground == 0 && p->flags & PLANE_FLAG_BACKGROUND)) {
                        this->uploadMaterial();
                        this->uploadColor(s, p);
                        NNS_G3dGePushMtx();
                        NNS_G3dGeBegin(GX_BEGIN_QUADS);
                        if (this->uploadMatrix(s, p, foreground) && this->uploadTexture(s, p)) {
                            this->uploadMesh(s, p);
                        }
                        NNS_G3dGeEnd();
                        NNS_G3dGePopMtx(1);
                    }
                }
            }
        }
        s = s->next;
    } while (s);
}

void C3DPlaneCtrl::setTex(S3DPlanePart *p, sfkey_char_t sheet)
{
    if (!p) return;
    p->texSheet = sheet;
    this->setPltt(p, sheet);
}

void C3DPlaneCtrl::setPltt(S3DPlanePart *p, sfkey_char_t sheet)
{
    if (!p) return;
    p->plttSheet = sheet;
}

void C3DPlaneCtrl::setTexWH(S3DPlanePart *p, s16 width, s16 height)
{
    if (!p) return;
    if (p->texWidth != width || p->texHeight != height) {
        p->texWidth = width;
        p->texHeight = height;
        this->setUpdateFlag(p, PLANE_UPDATE_FLAG_ALL);
    }
}

void C3DPlaneCtrl::setGraphicIdx(S3DPlanePart *p, u8 idx, bool async)
{
    if (!p) return;
    p->unk_36 = 0;
    C3DSprSheet *sheet = this->file.getSpriteSheet(p->texSheet);
    if (sheet == NULL || sheet->data == NULL) {
        return;
    }
    PAC_METADATA_MULTI_HEADER *psVar2 = static_cast<PAC_METADATA_MULTI_HEADER *>(this->file.FUN_02059bb4(sheet, NULL));
    if (async) {
        p->unk_36 = 1;
        p->graphicIdx = idx;
        return;
    }
    if (!psVar2 || idx >= psVar2->count) {
        return;
    }
    p->unk_36 = 0;
    PAC_METADATA_MULTI_CHUNK *chunk = &reinterpret_cast<PAC_METADATA_MULTI_CHUNK *>(psVar2 + 1)[idx];
    if (p->texS != chunk->s || p->texT != chunk->t || p->texWidth != chunk->w || p->texHeight != chunk->h) {
        p->texS = chunk->s;
        p->texT = chunk->t;
        p->texWidth = chunk->w;
        p->texHeight = chunk->h;
        this->setUpdateFlag(p, PLANE_UPDATE_FLAG_ALL);
        p->unk_36 = 0;
    }
}

void C3DPlaneCtrl::drawForeground()
{
    this->draw(true);
}

void C3DPlaneCtrl::drawMidground()
{
    this->draw(false);
}

pskey_t C3DPlaneCtrl::create(int partCount, bool insert)
{
    if (partCount <= 0 || partCount >= 254) {
        return (pskey_t)0;
    }
    pskey_t set = this->getFree();
    S3DPlaneSet *s = this->getSet(set);
    if (!s) return (pskey_t)0;
    MI_CpuFillFast(s, 0, sizeof(S3DPlaneSet));
    s->alpha = 31;
    s->colorMask = GX_RGB(31, 31, 31);
    S3DPlanePart *parts = static_cast<S3DPlanePart *>(gAllocator.allocate(partCount * sizeof(S3DPlanePart)));
    if (parts == NULL) {
        return 0;
    }
    MI_CpuFillFast(parts, 0, partCount * sizeof(S3DPlanePart));
    s->parts = parts;
    s->partCount = (u8)partCount;
    s->flags = s->flags | (PLANE_FLAG_VISIBLE | PLANE_FLAG_ACTIVE);
    if (insert) {
        this->insertNode(&this->head, &this->tail, s);
    }
    for (int i = s->partCount; i >= 1; --i) {
        S3DPlanePart *p = getPart(s, i);
        if (!p) continue;
        MI_CpuFillFast(p, 0, sizeof(*p));
        p->alpha = 31;
        p->colorMask = GX_RGB(31, 31, 31);
        p->polygonID = 63;
        p->rotCenterPctX = 50;
        p->rotCenterPctY = 50;
        p->posCenterPctX = 0;
        p->posCenterPctY = 0;
        p->flags |= PLANE_FLAG_VISIBLE | PLANE_FLAG_ACTIVE;
    }
    return set;
}

void C3DPlaneCtrl::destroy(pskey_t set)
{
    S3DPlaneSet *s = this->getSet(set);
    if (!s) return;
    if (s->flags & PLANE_FLAG_ACTIVE) {
        this->removeNode(&this->head, &this->tail, s);
    }
    if (s->parts) {
        gAllocator.deallocate(s->parts);
    }
    MI_CpuFillFast(s, 0, sizeof(*s));
}

void C3DPlaneCtrl::setTexAll(pskey_t set, sfkey_char_t file)
{
    C3DSprSheet *sheet = this->file.getSpriteSheet(file);
    if (file) {
        if (sheet == NULL) return;
        if (sheet->isIdle()) return;
    }
    S3DPlaneSet *s = this->getSet(set);
    if (!s || !s->parts) return;
    for (int i = s->partCount; i >= 1; --i) {
        S3DPlanePart *p = this->getPart(s, i);
        if (!p) continue;
        this->setTex(p, file);
    }
}

void C3DPlaneCtrl::setPlttAll(pskey_t set, sfkey_char_t file)
{
    S3DPlaneSet *s = this->getSet(set);
    if (!s || !s->parts) return;
    for (int i = s->partCount; i >= 1; --i) {
        S3DPlanePart *p = this->getPart(s, i);
        if (!p) continue;
        this->setPltt(p, file);
    }
}

void C3DPlaneCtrl::setPlttIdxAll(pskey_t set, u8 idx)
{
    S3DPlaneSet *s = this->getSet(set);
    if (!s || !s->parts) return;
    for (int i = s->partCount; i >= 1; --i) {
        S3DPlanePart *p = this->getPart(s, i);
        if (!p) continue;
        p->plttIdx = idx;
    }
}

void C3DPlaneCtrl::setDepthAll(pskey_t set, unsigned depth)
{
    if (depth > 0x7FFF) {
        depth = 0x7FFF;
    }
    S3DPlaneSet *s = this->getSet(set);
    if (!s || !s->parts) return;
    for (int i = s->partCount; i >= 1; --i) {
        S3DPlanePart *p = this->getPart(s, i);
        if (!p) continue;
        p->offset.z = FX_F32_TO_FX32(-(s32)depth);
    }
}

void C3DPlaneCtrl::setDepthStepAll(pskey_t set, int depth, int step)
{
    if (depth < 0) {
        depth = 0;
    } else if (depth > 0x7FFF) {
        depth = 0x7FFF;
    }
    S3DPlaneSet *s = this->getSet(set);
    if (!s || !s->parts) return;
    for (int i = 0; i <= s->partCount; ++i) {
        S3DPlanePart *p = this->getPart(s, i);
        if (!p) continue;
        p->offset.z = FX_F32_TO_FX32(-depth);
        depth += step;
        if (depth < 0) {
            depth = 0;
        } else if (0x7FFF < depth) {
            depth = 0x7FFF;
        }
    }
}

void C3DPlaneCtrl::setAlphaAll(pskey_t set, u8 alpha)
{
    if (alpha > 31) {
        alpha = 31;
    }
    S3DPlaneSet *s = this->getSet(set);
    if (!s || !s->parts) return;
    for (int i = s->partCount; i >= 1; --i) {
        S3DPlanePart *p = this->getPart(s, i);
        if (!p) continue;
        p->alpha = alpha;
    }
}

void C3DPlaneCtrl::setColorMaskAll(pskey_t set, GXRgb color)
{
    S3DPlaneSet *s = this->getSet(set);
    if (!s || !s->parts) return;
    for (int i = s->partCount; i >= 1; --i) {
        S3DPlanePart *p = this->getPart(s, i);
        if (!p) continue;
        p->colorMask = color;
    }
}

void C3DPlaneCtrl::setPosAll(pskey_t set, s16 x, s16 y)
{
    S3DPlaneSet *s = this->getSet(set);
    if (!s || !s->parts) return;
    for (int i = s->partCount; i >= 1; --i) {
        S3DPlanePart *p = this->getPart(s, i);
        if (!p) continue;
        p->offset.x = FX_F32_TO_FX32(x);
        p->offset.y = FX_F32_TO_FX32(y);
    }
}

void C3DPlaneCtrl::setTexScaleAll(pskey_t set, s16 pctX, s16 pctY)
{
    S3DPlaneSet *s = this->getSet(set);
    if (!s || !s->parts) return;
    for (int i = s->partCount; i >= 1; --i) {
        S3DPlanePart *p = this->getPart(s, i);
        if (!p) continue;
        if (p->scalePctX != pctX || p->scalePctY != pctY) {
            p->scalePctX = pctX;
            p->scalePctY = pctY;
            this->setUpdateFlag(p, PLANE_UPDATE_FLAG_ROT_CENTER | PLANE_UPDATE_FLAG_POS_CENTER | PLANE_UPDATE_FLAG_1);
        }
    }
}

void C3DPlaneCtrl::setTexWHAll(pskey_t set, s16 width, s16 height)
{
    S3DPlaneSet *s = this->getSet(set);
    if (!s || !s->parts) return;
    for (int i = s->partCount; i >= 1; --i) {
        S3DPlanePart *p = this->getPart(s, i);
        this->setTexWH(p, width, height);
    }
}

void C3DPlaneCtrl::setTexSTAll(pskey_t set, s16 texS, s16 texT)
{
    S3DPlaneSet *s = this->getSet(set);
    if (!s || !s->parts) return;
    for (int i = s->partCount; i >= 1; --i) {
        S3DPlanePart *p = this->getPart(s, i);
        if (!p) continue;
        if (p->texS != texS || p->texT != texT) {
            p->texS = texS;
            p->texT = texT;
            this->setUpdateFlag(p, PLANE_UPDATE_FLAG_TEXCOORD);
        }
    }
}

void C3DPlaneCtrl::setFlagAll(pskey_t set, u16 mask, bool enable)
{
    if (!enable) {
        this->clearFlagAll(set, mask);
        return;
    }
    S3DPlaneSet *s = this->getSet(set);
    if (!s || !s->parts) return;
    for (int i = s->partCount; i >= 1; --i) {
        S3DPlanePart *p = this->getPart(s, i);
        if (!p) continue;
        p->flags |= mask & PLANE_FLAG_PART_ALL;
        if (mask & PLANE_FLAG_3C) {
            this->setUpdateFlag(p, PLANE_UPDATE_FLAG_TEXCOORD);
        }
    }
}

void C3DPlaneCtrl::clearFlagAll(pskey_t set, u16 mask)
{
    S3DPlaneSet *s = this->getSet(set);
    if (!s || !s->parts) return;
    for (int i = s->partCount; i >= 1; --i) {
        S3DPlanePart *p = this->getPart(s, i);
        if (!p) continue;
        p->flags &= ~mask;
        if (mask & PLANE_FLAG_3C) {
            this->setUpdateFlag(p, PLANE_UPDATE_FLAG_TEXCOORD);
        }
    }
}

void C3DPlaneCtrl::setGraphicIdxAll(pskey_t set, u8 idx, bool async)
{
    S3DPlaneSet *s = this->getSet(set);
    if (!s || !s->parts) return;
    for (int i = s->partCount; i >= 1; --i) {
        S3DPlanePart *p = this->getPart(s, i);
        this->setGraphicIdx(p, idx, async);
    }
}

void C3DPlaneCtrl::setPosAnchorAll(pskey_t set, u8 pctX, u8 pctY)
{
    S3DPlaneSet *s = this->getSet(set);
    if (!s || !s->parts) return;
    if (pctX > 100) {
        pctX = 100;
    }
    if (pctY > 100) {
        pctY = 100;
    }
    for (int i = s->partCount; i >= 1; --i) {
        S3DPlanePart *p = this->getPart(s, i);
        if (!p) continue;
        if (p->posCenterPctX != pctX || p->posCenterPctY != pctY) {
            p->posCenterPctX = pctX;
            p->posCenterPctY = pctY;
            this->setUpdateFlag(p, PLANE_UPDATE_FLAG_POS_CENTER);
        }
    }
}

void C3DPlaneCtrl::setBounds(pskey_t set, SGlyphBounds *bounds, int count)
{
    S3DPlaneSet *s = this->getSet(set);
    if (!s || !s->parts) return;
    int i = s->partCount;
    bounds = bounds + (s->partCount - 1);
    for (; i >= 1; --i, --bounds) {
        S3DPlanePart *p = this->getPart(s, i);
        if (!p) continue;
        if (p->texS != bounds->x || p->texT != bounds->y || p->texWidth != bounds->w || p->texHeight != bounds->h) {
            p->texS = bounds->x;
            p->texT = bounds->y;
            p->texWidth = bounds->w;
            p->texHeight = bounds->h;
            this->setUpdateFlag(p, PLANE_UPDATE_FLAG_ALL);
        }
    }
}

void C3DPlaneCtrl::setPolygonID(pskey_t set, u8 polygonID)
{
    S3DPlaneSet *s = this->getSet(set);
    if (!s || !s->parts) return;
    for (int i = s->partCount; i >= 1; --i) {
        S3DPlanePart *p = this->getPart(s, i);
        if (!p) continue;
        p->polygonID = polygonID;
    }
}

void C3DPlaneCtrl::setTex(pskey_t set, int part, sfkey_char_t file)
{
    C3DSprSheet *sheet = this->file.getSpriteSheet(file);
    if (file) {
        if (sheet == NULL) return;
        if (sheet->isIdle()) return;
    }
    S3DPlaneSet *s = this->getSet(set);
    S3DPlanePart *p = this->getPart(s, part);
    this->setTex(p, file);
}

void C3DPlaneCtrl::setPltt(pskey_t set, int part, sfkey_char_t file)
{
    C3DSprSheet *sheet = this->file.getSpriteSheet(file);
    if (file) {
        if (sheet == NULL) return;
        if (sheet->isIdle()) return;
    }
    S3DPlaneSet *s = this->getSet(set);
    S3DPlanePart *p = this->getPart(s, part);
    this->setPltt(p, file);
}

void C3DPlaneCtrl::setPlttIdx(pskey_t set, int part, u8 idx)
{
    S3DPlaneSet *s = this->getSet(set);
    S3DPlanePart *p = this->getPart(s, part);
    if (!p) return;
    p->plttIdx = idx;
}

void C3DPlaneCtrl::setDepth(pskey_t set, int part, unsigned depth)
{
    if (depth > 0x7FFF) {
        depth = 0x7FFF;
    }
    S3DPlaneSet *s = this->getSet(set);
    S3DPlanePart *p = this->getPart(s, part);
    if (!p) return;
    p->offset.z = FX_F32_TO_FX32(-(s32)depth);
}

void C3DPlaneCtrl::setAlpha(pskey_t set, int part, u8 alpha)
{
    if (alpha > 31) {
        alpha = 31;
    }
    S3DPlaneSet *s = this->getSet(set);
    S3DPlanePart *p = this->getPart(s, part);
    if (!p) return;
    p->alpha = alpha;
}

void C3DPlaneCtrl::setColorMask(pskey_t set, int part, u16 mask)
{
    S3DPlaneSet *s = this->getSet(set);
    S3DPlanePart *p = this->getPart(s, part);
    if (!p) return;
    p->colorMask = mask;
}

void C3DPlaneCtrl::setPos(pskey_t set, int part, s16 x, s16 y)
{
    S3DPlaneSet *s = this->getSet(set);
    S3DPlanePart *p = this->getPart(s, part);
    if (!p) return;
    p->offset.x = FX_F32_TO_FX32(x);
    p->offset.y = FX_F32_TO_FX32(y);
}

void C3DPlaneCtrl::setTexScale(pskey_t set, int part, s16 pctX, s16 pctY)
{
    S3DPlaneSet *s = this->getSet(set);
    S3DPlanePart *p = this->getPart(s, part);
    if (!p) return;
    if (p->scalePctX != pctX || p->scalePctY != pctY) {
        p->scalePctX = pctX;
        p->scalePctY = pctY;
        this->setUpdateFlag(p, PLANE_UPDATE_FLAG_ROT_CENTER | PLANE_UPDATE_FLAG_POS_CENTER | PLANE_UPDATE_FLAG_1);
    }
}

void C3DPlaneCtrl::setTexWH(pskey_t set, int part, s16 width, s16 height)
{
    S3DPlaneSet *s = this->getSet(set);
    S3DPlanePart *p = this->getPart(s, part);
    this->setTexWH(p, width, height);
}

void C3DPlaneCtrl::setTexST(pskey_t set, int part, s16 texS, short texT)
{
    S3DPlaneSet *s = this->getSet(set);
    S3DPlanePart *p = this->getPart(s, part);
    if (!p) return;
    if (p->texS != texS || p->texT != texT) {
        p->texS = texS;
        p->texT = texT;
        this->setUpdateFlag(p, PLANE_UPDATE_FLAG_TEXCOORD);
    }
}

void C3DPlaneCtrl::setRotation(pskey_t set, int part, u16 rot)
{
    S3DPlaneSet *s = this->getSet(set);
    S3DPlanePart *p = this->getPart(s, part);
    if (!p) return;
    if (p->rotation != rot) {
        p->rotation = rot;
        this->setUpdateFlag(p, PLANE_UPDATE_FLAG_TEXCOORD);
    }
}

void C3DPlaneCtrl::setFlag(pskey_t set, int part, u16 mask, bool on)
{
    if (!on) {
        this->clearFlag(set, part, mask);
        return;
    }
    S3DPlaneSet *s = this->getSet(set);
    S3DPlanePart *p = this->getPart(s, part);
    if (!p) return;
    p->flags |= mask & PLANE_FLAG_PART_ALL;
    if (mask & PLANE_FLAG_3C) {
        this->setUpdateFlag(p, PLANE_UPDATE_FLAG_TEXCOORD);
    }
}

void C3DPlaneCtrl::clearFlag(pskey_t set, int part, u16 mask)
{
    S3DPlaneSet *s = this->getSet(set);
    S3DPlanePart *p = this->getPart(s, part);
    if (!p) return;
    p->flags &= ~mask;
    if (mask & PLANE_FLAG_3C) {
        this->setUpdateFlag(p, PLANE_UPDATE_FLAG_TEXCOORD);
    }
}

void C3DPlaneCtrl::setGraphicIdx(pskey_t set, int part, u8 idx, bool async)
{
    S3DPlaneSet *s = this->getSet(set);
    S3DPlanePart *p = this->getPart(s, part);
    this->setGraphicIdx(p, idx, async);
}

void C3DPlaneCtrl::setRotAnchor(pskey_t set, int part, u8 pctX, u8 pctY)
{
    S3DPlaneSet *s = this->getSet(set);
    S3DPlanePart *p = this->getPart(s, part);
    if (!p) return;
    if (pctX > 100) {
        pctX = 100;
    }
    if (pctY > 100) {
        pctY = 100;
    }
    if (p->rotCenterPctX != pctX || p->rotCenterPctY != pctY) {
        p->rotCenterPctX = pctX;
        p->rotCenterPctY = pctY;
        this->setUpdateFlag(p, PLANE_UPDATE_FLAG_ROT_CENTER);
    }
}

void C3DPlaneCtrl::setPosAnchor(pskey_t set, int part, u8 pctX, u8 pctY)
{
    S3DPlaneSet *s = this->getSet(set);
    S3DPlanePart *p = this->getPart(s, part);
    if (!p) return;
    if (pctX > 100) {
        pctX = 100;
    }
    if (pctY > 100) {
        pctY = 100;
    }
    if (p->posCenterPctX != pctX || p->posCenterPctY != pctY) {
        p->posCenterPctX = pctX;
        p->posCenterPctY = pctY;
        this->setUpdateFlag(p, PLANE_UPDATE_FLAG_POS_CENTER);
    }
}

void C3DPlaneCtrl::setColorMask(pskey_t set, GXRgb color)
{
    S3DPlaneSet *s = this->getSet(set);
    if (!s) return;
    s->colorMask = color;
}

void C3DPlaneCtrl::setPos(pskey_t set, s16 x, s16 y)
{
    S3DPlaneSet *s = this->getSet(set);
    if (!s) return;
    s->pos.x = FX_F32_TO_FX32(x);
    s->pos.y = FX_F32_TO_FX32(y);
}

void C3DPlaneCtrl::setFlag(pskey_t set, u16 mask, bool enable)
{
    if (!enable) {
        this->clearFlag(set, mask);
        return;
    }
    S3DPlaneSet *s = this->getSet(set);
    if (!s) return;
    s->flags |= mask & PLANE_FLAG_SET_ALL;
}

void C3DPlaneCtrl::clearFlag(pskey_t set, u16 mask)
{
    S3DPlaneSet *s = this->getSet(set);
    if (!s) return;
    s->flags &= ~(mask & PLANE_FLAG_SET_ALL);
}

S3DPlanePart *C3DPlaneCtrl::getPartExt(pskey_t set, int part)
{
    return this->getPart(this->getSet(set), part);
}

S3DPlaneSet *C3DPlaneCtrl::getSetExt(pskey_t set)
{
    return this->getSet(set);
}

void C3DPlaneCtrl::getDimensions(pskey_t set, int part, int *widthOut, int *heightOut)
{
    S3DPlaneSet *s = this->getSet(set);
    S3DPlanePart *p = this->getPart(s, part);
    if (p) {
        if (widthOut) *widthOut = p->texWidth;
        if (heightOut) *heightOut = p->texHeight;
    } else {
        if (widthOut) *widthOut = 0;
        if (heightOut) *heightOut = 0;
    }
}

u8 C3DPlaneCtrl::getAlpha(pskey_t set, int part)
{
    S3DPlaneSet *s = this->getSet(set);
    S3DPlanePart *p = this->getPart(s, part);
    if (!p) return 0;
    return p->alpha;
}

u8 C3DPlaneCtrl::getAnchorPctX(pskey_t set, int part)
{
    S3DPlaneSet *s = this->getSet(set);
    S3DPlanePart *p = this->getPart(s, part);
    if (!p) return 0;
    return p->posCenterPctX;
}

u8 C3DPlaneCtrl::getAnchorPctY(pskey_t set, int part)
{
    S3DPlaneSet *s = this->getSet(set);
    S3DPlanePart *p = this->getPart(s, part);
    if (!p) return 0;
    return p->posCenterPctY;
}
void C3DPlaneCtrl::convertTilesToTex(sfkey_t key)
{
    u32 scrnSize;
    C3DSprSheet *sheet;
    PAC_METADATA_SINGLE *meta;
    u8 *chara;
    PAC_HEADER_IPM *pac_tex;
    u32 tileSizeX;
    int width;
    u16 *screen;
    int height;
    void *pac_tile;
    void *pltt;
    int ppby;
    u32 tempSize;
    u32 plttSize;
    u32 metaSize;
    u8 *destTex;
    int y;
    int x;
    int r;
    sheet = this->file.getSpriteSheet(key);
    if (!sheet || !sheet->data) {
        return;
    }
    pac_tile = sheet->data;
    if (PAC_GetFileCount(pac_tile) == 3) {
        return;
    }
    meta = static_cast<PAC_METADATA_SINGLE *>(PAC_PSCM_GetMetaPtr(pac_tile));
    screen = static_cast<u16 *>(PAC_PSCM_GetScreenPtr(pac_tile));
    chara = static_cast<u8 *>(PAC_PSCM_GetCharacterPtr(pac_tile));
    pltt = PAC_PSCM_GetPalettePtr(pac_tile);
    ppby = 1;
    if (meta->fmt == GX_TEXFMT_PLTT16) {
        ppby = 2;
    }
    scrnSize = ((8 << meta->wExp) * (8 << meta->hExp)) / ppby;
    tempSize = sizeof(PAC_HEADER_IPM) + scrnSize;
    plttSize = PAC_PSCM_GetPaletteSize(pac_tile);
    metaSize = PAC_PSCM_GetMetaSize(pac_tile);
    pac_tex =
        static_cast<PAC_HEADER_IPM *>(gAllocator.allocate(sizeof(PAC_HEADER_IPM) + scrnSize + plttSize + metaSize));
    pac_tex->s.nFiles = 3;
    pac_tex->img.offs = sizeof(PAC_HEADER_IPM);
    pac_tex->img.size = scrnSize;
    pac_tex->plt.offs = pac_tex->img.offs + pac_tex->img.size;
    pac_tex->plt.size = PAC_PSCM_GetPaletteSize(pac_tile);
    pac_tex->met.offs = pac_tex->plt.offs + pac_tex->plt.size;
    pac_tex->met.size = PAC_PSCM_GetMetaSize(pac_tile);
    pac_tex->e.unk_0 = sizeof(PAC_HEADER_IPM) + pac_tex->img.size + pac_tex->plt.size + pac_tex->met.size;
    destTex = static_cast<u8 *>(PAC_IPM_GetImagePtr(pac_tex));
    tileSizeX = 8 / ppby;
    width = (8 << meta->wExp) / 8;
    height = (8 << meta->hExp) / 8;
    for (y = 0; y < height; ++y) {
        for (x = 0; x < width; ++x) {
            u32 tileSize = tileSizeX * 8;
            u16 charIdx = screen[y * width + x];
            u8 *base = chara + tileSize * charIdx;
            for (r = 0; r < 8; ++r) {
                MI_CpuCopy8(base + r * tileSizeX, destTex + tileSizeX * ((r + y * 8) * width + x), tileSizeX);
            };
        }
    }
    MI_CpuCopy8(pltt, PAC_IPM_GetPalettePtr(pac_tex), pac_tex->plt.size);
    MI_CpuCopy8(meta, PAC_IPM_GetMetaPtr(pac_tex), pac_tex->met.size);
    DC_FlushRange(pac_tex, tempSize + pac_tex->plt.size + pac_tex->met.size);
    gAllocator.deallocate(sheet->data);
    sheet->data = pac_tex;
}

void C3DPlaneCtrl::convertTilesToTex(sfkey_t key, /* r11 */ int width, /* 0x00 */ GXTexFmt fmt)
{
    /* 0x10 */ C3DSprSheet *sheet;
    /* 0x0c */ void *pac_tile;
    /* 0x2c */ u16 *screen;
    /* 0x28 */ u8 *chara;
    /* 0x34 */ void *pltt;
    /* 0x20 */ int hExp;
    /* 0x1c */ int wExp;
    /* 0x24 */ int height;
    /* r5 */ int hTex;
    /* r0 */ int wTex;
    /* r6 */ s32 ppby;
    /* 0x08 */ int texWidth;
    /* 0x04 */ int texHeight;
    u32 scrnSize;
    u32 plttSize;
    u32 totalSize;
    /* 0x04 */ PAC_HEADER_IPM *pac_tex;
    u8 *destImg;

    sheet = this->file.getSpriteSheet(key);
    if (!sheet || !sheet->data) {
        return;
    }
    pac_tile = sheet->data;
    if (PAC_GetFileCount(pac_tile) < 3) {
        return;
    }
    if (sheet->unk_32 != 0) {
        return;
    }
    screen = static_cast<u16 *>(PAC_PSC_GetScreenPtr(pac_tile));
    chara = static_cast<u8 *>(PAC_PSC_GetCharacterPtr(pac_tile));
    pltt = PAC_PSC_GetPalettePtr(pac_tile);

    ppby = 2;
    if (fmt != GX_TEXFMT_PLTT16) {
        ppby = 1;
    }
    height = PAC_PSC_GetScreenSize(pac_tile) / width / 2;
    texWidth = width * 8;
    texHeight = height * 8;
    hTex = 4;
    wTex = 4;
    hExp = 0;
    wExp = 0;
    while (wTex < 0x400) {
        wTex *= 2;
        if (texWidth <= wTex) break;
        ++wExp;
    }
    while (hTex < 0x400) {
        hTex *= 2;
        if (texHeight <= hTex) break;
        ++hExp;
    }
    scrnSize = (wTex * hTex) / ppby;

    plttSize = PAC_PSC_GetPaletteSize(pac_tile);
    totalSize = sizeof(PAC_HEADER_IPM) + sizeof(PAC_METADATA_SINGLE) + scrnSize + plttSize;
    pac_tex = static_cast<PAC_HEADER_IPM *>(gAllocator.allocate(totalSize));
    pac_tex->s.nFiles = 3;
    pac_tex->img.offs = sizeof(PAC_HEADER_IPM);
    pac_tex->img.size = scrnSize;
    int plttOffs = sizeof(PAC_HEADER_IPM) + pac_tex->img.size;
    pac_tex->plt.offs = plttOffs;
    pac_tex->plt.size = PAC_PSC_GetPaletteSize(pac_tile);
    pac_tex->met.offs = plttOffs + pac_tex->plt.size;
    pac_tex->met.size = sizeof(PAC_METADATA_SINGLE);
    pac_tex->e.unk_0 = totalSize;
    destImg = static_cast<u8 *>(PAC_IPM_GetImagePtr(pac_tex));

    u32 tileSizeX;
    u32 tileCountW;
    /* r6 */ int y;
    /* r7 */ int x;
    /* r8 */ int r;
    u32 tileSize;
    u16 charIdx;
    u8 *src;
    u32 unk1;
    u32 unk2;
    tileSizeX = 8 / ppby;
    tileCountW = wTex / 8;
    for (y = 0; y < height; ++y) {
        for (x = 0; x < width; ++x) {
            tileSize = tileSizeX * 8;
            charIdx = screen[y * width + x];
            src = chara + tileSize * charIdx;
            for (r = 0; r < 8; ++r) {
                unk1 = (r + y * 8);
                unk2 = unk1 * tileCountW + x;
                MI_CpuCopy8(src + r * tileSizeX, destImg + tileSizeX * unk2, tileSizeX);
            }
        }
    }
    PAC_METADATA_SINGLE *meta;
    MI_CpuCopy8(pltt, PAC_IPM_GetPalettePtr(pac_tex), PAC_IPM_GetPaletteSize(pac_tex));
    meta = static_cast<PAC_METADATA_SINGLE *>(PAC_IPM_GetMetaPtr(pac_tex));
    meta->unk_0 = 1;
    meta->wExp = wExp;
    meta->hExp = hExp;
    meta->fmt = fmt;
    meta->unk_8 = 0;
    meta->unk_a = 0;
    meta->width = width * 8;
    meta->height = height * 8;
    DC_FlushRange(pac_tex, totalSize);
    gAllocator.deallocate(sheet->data);
    sheet->data = static_cast<void *>(pac_tex);
    sheet->unk_32 = 1;
}
