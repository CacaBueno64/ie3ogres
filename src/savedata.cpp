#include "savedata.hpp"
#include <nitro.h>

#ifdef __cplusplus
extern "C" {
#endif

#define	CARD_BACKUP_TYPE_DEVICE_UNK 4
#define CARD_BACKUP_TYPE_UNK (CARDBackupType)CARD_BACKUP_TYPE_DEFINE(UNK, 16, 0) // 0x1004

BOOL SaveData_CardBackupType(UnkStruct_BackupCtx *ctx, CARDBackupType backupType) {
    CARD_Init();
    ctx->lock_id = OS_GetLockID();
    if (backupType == CARD_BACKUP_TYPE_NOT_USE) {
        backupType = CARD_BACKUP_TYPE_EEPROM_512KBITS;
    }
    ctx->backupType = backupType;
    if (backupType == CARD_BACKUP_TYPE_UNK) {
        return TRUE;
    }
    CARD_LockBackup(ctx->lock_id);
    BOOL identified = CARD_IdentifyBackup(ctx->backupType);
    CARD_UnlockBackup(ctx->lock_id);
    
    return identified;
}

BOOL SaveData_ReadBuffer(UnkStruct_BackupCtx *ctx)
{
    u32 buffer;
    BOOL result = SaveData_ReadBackup(ctx, 0, sizeof(buffer), &buffer);
    if (result) {
        return TRUE;
    } else {
        return FALSE;
    }
}

BOOL SaveData_TryWaitBackupAsync(void)
{
    if (CARD_TryWaitBackupAsync()) {
        return TRUE;
    } else {
        return FALSE;
    }
}

BOOL SaveData_ReadBackup(UnkStruct_BackupCtx *ctx, u32 src, u32 len, void *dst)
{
    CARD_LockBackup(ctx->lock_id);
    
    switch ((u8)ctx->backupType) {
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

    ctx->result = CARD_GetResultCode();
    CARD_UnlockBackup(ctx->lock_id);

    if (ctx->result == CARD_RESULT_SUCCESS) {
        return TRUE;
    } else {
        return FALSE;
    }
}

BOOL SaveData_WriteBackup(UnkStruct_BackupCtx *ctx, u32 dst, u32 len, void *src)
{
    CARD_LockBackup(ctx->lock_id);
    
    switch ((u8)ctx->backupType) {
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

    ctx->result = CARD_GetResultCode();
    CARD_UnlockBackup(ctx->lock_id);

    if (ctx->result == CARD_RESULT_SUCCESS) {
        return TRUE;
    } else {
        return FALSE;
    }
}

#ifdef __cplusplus
} /* extern "C" */
#endif
