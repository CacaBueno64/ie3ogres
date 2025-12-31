#ifndef IE3OGRES_CARDCONTROLLER_H
#define IE3OGRES_CARDCONTROLLER_H

#pragma once

#include <nitro.h>

#define CARD_BACKUP_TYPE_DEVICE_DUMMY 4
#define CARD_BACKUP_TYPE_DUMMY CARD_BACKUP_TYPE_DEFINE(DUMMY, 16, 0) // 0x1004

class CardController {
    public:
        CardController();
        ~CardController();
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

extern CardController gCardController;

#endif //IE3OGRES_CARDCONTROLLER_H
