// clang-format off
#include "CCardCtrl.hpp"

#include <nitro/card/backup.h>         // for CARD_LockBackup, CARD_UnlockBackup, CARDBackupType, CARD_BACKUP_TYPE_DEVICE_EEPROM, CARD_BACKUP_TYPE_DEVICE_FLASH, CARD_BACKUP_TYPE_DEVICE_FRAM, CARD_BACKUP_TYPE_DEVICE_MASK, CARD_IdentifyBackup, CARD_TryWaitBackupAsync
#include <nitro/card/common.h>         // for CARD_GetResultCode, CARD_Init
#include <nitro/card/eeprom.h>         // for CARD_ReadEeprom, CARD_WriteAndVerifyEeprom
#include <nitro/card/flash.h>          // for CARD_ReadFlash, CARD_WriteAndVerifyFlash
#include <nitro/card/fram.h>           // for CARD_ReadFram, CARD_WriteAndVerifyFram
#include <nitro/card/types.h>          // for CARDResult
#include <nitro/os/common/spinLock.h>  // for OS_GetLockID
#include <nitro/types.h>               // for BOOL, u32, FALSE, TRUE
// clang-format on

CCardCtrl::CCardCtrl()
{
}

CCardCtrl::~CCardCtrl()
{
}

BOOL CCardCtrl::init(CARDBackupType type)
{
    CARD_Init();
    this->lock_id = OS_GetLockID();
    if (type == CARD_BACKUP_TYPE_NOT_USE) {
        type = CARD_BACKUP_TYPE_EEPROM_512KBITS;
    }
    this->type = type;
    if (type == CARD_BACKUP_TYPE_DUMMY) {
        return TRUE;
    }
    CARD_LockBackup(this->lock_id);
    BOOL result = CARD_IdentifyBackup(this->type);
    CARD_UnlockBackup(this->lock_id);

    return result;
}

BOOL CCardCtrl::test(void)
{
    u32 buffer;
    return this->read(0, sizeof(buffer), &buffer) != FALSE;
}

BOOL CCardCtrl::ready(void)
{
    return CARD_TryWaitBackupAsync() != FALSE;
}

BOOL CCardCtrl::read(u32 src, u32 len, void *dst)
{
    CARD_LockBackup(this->lock_id);

    switch (this->type & CARD_BACKUP_TYPE_DEVICE_MASK) {
    case CARD_BACKUP_TYPE_DEVICE_EEPROM:
        (void)CARD_ReadEeprom(src, dst, len);
        break;
    case CARD_BACKUP_TYPE_DEVICE_FLASH:
        (void)CARD_ReadFlash(src, dst, len);
        break;
    case CARD_BACKUP_TYPE_DEVICE_FRAM:
        (void)CARD_ReadFram(src, dst, len);
        break;
    }

    this->result = CARD_GetResultCode();
    CARD_UnlockBackup(this->lock_id);

    return this->result == CARD_RESULT_SUCCESS;
}

BOOL CCardCtrl::write(u32 dst, u32 len, void *src)
{
    CARD_LockBackup(this->lock_id);

    switch (this->type & CARD_BACKUP_TYPE_DEVICE_MASK) {
    case CARD_BACKUP_TYPE_DEVICE_EEPROM:
        (void)CARD_WriteAndVerifyEeprom(dst, src, len);
        break;
    case CARD_BACKUP_TYPE_DEVICE_FLASH:
        (void)CARD_WriteAndVerifyFlash(dst, src, len);
        break;
    case CARD_BACKUP_TYPE_DEVICE_FRAM:
        (void)CARD_WriteAndVerifyFram(dst, src, len);
        break;
    }

    this->result = CARD_GetResultCode();
    CARD_UnlockBackup(this->lock_id);

    return this->result == CARD_RESULT_SUCCESS;
}
