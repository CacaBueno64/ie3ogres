#pragma once

extern "C" {
#include <nitro.h>
}

class L5CardController {
    public:
        L5CardController();
        ~L5CardController();
        BOOL init(CARDBackupType type);
        BOOL test(void);
        BOOL ready(void);
        BOOL read(u32 src, u32 len, void *dst);
        BOOL write(u32 dst, u32 len, void *src);
    private:
    CARDBackupType type;
    u16 lock_id;
    u16 pad_; // padding
    CARDResult result;
};

typedef struct {
    u8 unk[0x4C];
    L5CardController backupCtx;
} UnkStruct_0209A5D0;