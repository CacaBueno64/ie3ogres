#pragma once

#include <nitro/card/backup.h>
#include <nitro/card/types.h>
#include <nitro/types.h>

#define CARD_BACKUP_TYPE_DEVICE_DUMMY 4
#define CARD_BACKUP_TYPE_DUMMY CARD_BACKUP_TYPE_DEFINE(DUMMY, 16, 0) // 0x1004

class CCardCtrl
{
public:
    CCardCtrl();
    ~CCardCtrl();
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

extern CCardCtrl gCardCtrl;
