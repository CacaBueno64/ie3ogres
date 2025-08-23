#include "savedata.hpp"

#define CARD_BACKUP_TYPE_DEVICE_DUMMY 4
#define CARD_BACKUP_TYPE_DUMMY CARD_BACKUP_TYPE_DEFINE(DUMMY, 16, 0) // 0x1004

L5CardController::L5CardController() {};
L5CardController::~L5CardController() {};

BOOL L5CardController::init(CARDBackupType type) {
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
    BOOL identified = CARD_IdentifyBackup(this->type);
    CARD_UnlockBackup(this->lock_id);

    return identified;
}

BOOL L5CardController::test(void) {
    u32 buffer;
    return read(0, sizeof(buffer), &buffer) != FALSE;
}

BOOL L5CardController::ready(void) { return CARD_TryWaitBackupAsync() != FALSE; }

BOOL L5CardController::read(u32 src, u32 len, void *dst) {
    CARD_LockBackup(this->lock_id);

    switch (this->type & CARD_BACKUP_TYPE_DEVICE_MASK) {
    case CARD_BACKUP_TYPE_DEVICE_EEPROM: (void)CARD_ReadEeprom(src, dst, len); break;
    case CARD_BACKUP_TYPE_DEVICE_FLASH: (void)CARD_ReadFlash(src, dst, len); break;
    case CARD_BACKUP_TYPE_DEVICE_FRAM: (void)CARD_ReadFram(src, dst, len); break;
    }

    this->result = CARD_GetResultCode();
    CARD_UnlockBackup(this->lock_id);

    return this->result == CARD_RESULT_SUCCESS;
}

BOOL L5CardController::write(u32 dst, u32 len, void *src) {
    CARD_LockBackup(this->lock_id);

    switch (this->type & CARD_BACKUP_TYPE_DEVICE_MASK) {
    case CARD_BACKUP_TYPE_DEVICE_EEPROM: (void)CARD_WriteAndVerifyEeprom(dst, src, len); break;
    case CARD_BACKUP_TYPE_DEVICE_FLASH: (void)CARD_WriteAndVerifyFlash(dst, src, len); break;
    case CARD_BACKUP_TYPE_DEVICE_FRAM: (void)CARD_WriteAndVerifyFram(dst, src, len); break;
    }

    this->result = CARD_GetResultCode();
    CARD_UnlockBackup(this->lock_id);

    return this->result == CARD_RESULT_SUCCESS;
}