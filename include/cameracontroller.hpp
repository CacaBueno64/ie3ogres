#ifndef IE3OGRES_CAMERACONTROLLER_H
#define IE3OGRES_CAMERACONTROLLER_H

#pragma once

#include <nitro.h>

typedef struct {
    VecFx32 pos;
    VecFx32 target;
    s32 unk18;
    VecFx32 rot;
} CameraTransform;

typedef struct {
    s32 mode;
    s32 cur;
    s32 max;
} CameraBlend;

typedef struct {
    s32 unk0;
    VecFx32 unk4;
    s32 speed;
    s32 unk14;
    s32 cur;
    fx32 unk1C;
} Camera_10C;

typedef struct {
    fx32 fovySin;
    fx32 fovyCos;
    fx32 aspect;
    fx32 near;
    fx32 far;
    fx32 top;
    fx32 bottom;
    fx32 left;
    fx32 right;
    fx32 orthoNear;
    fx32 orthoFar;
    VecFx32 camUp;
    u16 unk38;
    u16 blendFlags; /* 4: unk, 3: rotation, 2: target, 1:pos */
    CameraTransform final;
    CameraTransform base;
    CameraTransform end;
    CameraTransform start;
    CameraBlend posBlend;
    CameraBlend targetBlend;
    CameraBlend rotBlend;
    CameraBlend unk100;
    Camera_10C unk10C;
} Camera;

class CameraController {
    public:
        /* ov16 0x020f7374 */ void init(void);

    Camera cameras[5];
    int cameraIdx;
    int backupIdx;
};

extern CameraController *gCameraController;

#endif //IE3OGRES_CAMERACONTROLLER_H
