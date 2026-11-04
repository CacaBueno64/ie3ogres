#pragma once

#include <nitro.h>

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
