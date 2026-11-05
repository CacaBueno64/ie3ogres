// clang-format off
#include "Shadow.hpp"

#include <nitro.h>
#include <nnsys.h>

#include "CAllocator.hpp"
// clang-format on

namespace Shadow {

 VecFx16 *sCircleVertexArray;
 int sNCircleVertices;
 u8 *sCircleVertexIndexArray;
 int sNCircleVertexIndices;

void Initialize(int n)
{
    int i;
    VecFx16 *vtxArray;
    u8 *idxArray;
    
    sNCircleVertices = n;
    sNCircleVertexIndices = n;
    sCircleVertexArray = static_cast<VecFx16 *>(gAllocator.allocate(sizeof(*sCircleVertexArray) * n));
    sCircleVertexIndexArray = static_cast<u8 *>(gAllocator.allocate(sNCircleVertexIndices));

    vtxArray = sCircleVertexArray;
    for (i = 0; i < n; i++) {
        u16 idx = ((i * 65536) / n);
        
        vtxArray->x = FX_SinIdx(idx);
        vtxArray->y = FX16_CONST(0.0998); // value, fresh from my ass
        vtxArray->z = FX_CosIdx(idx);

        vtxArray++;
    }

    idxArray = sCircleVertexIndexArray;
    idxArray[0] = 0;
    for (i = 1; i < n; i++) {
        if (i & 1) {
            idxArray[i] = (i / 2) + 1;
        } else {
            idxArray[i] = n - (i / 2);
        }
    }
}

void Draw(u8 alpha, int polygonID)
{
    NNS_G3dGeMaterialColorDiffAmb(0, 0, FALSE);
    NNS_G3dGeMaterialColorSpecEmi(0, 0, FALSE);
    NNS_G3dGeTexImageParam(GX_TEXFMT_NONE, GX_TEXGEN_NONE, GX_TEXSIZE_S8, GX_TEXSIZE_T8,
                           GX_TEXREPEAT_NONE, GX_TEXFLIP_NONE, GX_TEXPLTTCOLOR0_USE, 0);
    NNS_G3dGePolygonAttr(GX_LIGHTMASK_NONE, GX_POLYGONMODE_MODULATE, GX_CULL_ALL, polygonID, alpha, 193);
    NNS_G3dGeColor(0);
    DrawVertices();
}

void DrawVertices(void)
{
    VecFx16 *vtx = sCircleVertexArray;
    u8 *vtxIdx = sCircleVertexIndexArray;
    
    NNS_G3dGeBegin(GX_BEGIN_TRIANGLE_STRIP);

    int n = sNCircleVertexIndices;
    for (int i = 0; i < n; i++) {
        int idx = *vtxIdx;
        NNS_G3dGeVtx(vtx[idx].x, vtx[idx].y, vtx[idx].z);
        vtxIdx++;
    }

    NNS_G3dGeEnd();
}

} /* namespace Shadow */
