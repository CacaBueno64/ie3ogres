#include "savedata.hpp"
#include <nitro.h>

#ifdef __cplusplus
extern "C" {
#endif

#define CARD_BACKUP_TYPE_UNK (CARDBackupType)CARD_BACKUP_TYPE_DEFINE(UNK, 16, 0) // 0x1004

BOOL FUN_02063408(UnkStruct_BackupCtx *ctx, CARDBackupType backupType) {
    CARD_Init();
    ctx->lock_id = OS_GetLockID();
    if (backupType == CARD_BACKUP_TYPE_NOT_USE) {
        backupType = CARD_BACKUP_TYPE_EEPROM_512KBITS;
    }
    ctx->backupType = backupType;
    if (backupType == (CARDBackupType)0x1004) { // CARD_BACKUP_TYPE_UNK
        return TRUE;
    }
    CARD_LockBackup(ctx->lock_id);
    BOOL identified = CARD_IdentifyBackup(ctx->backupType);
    CARD_UnlockBackup(ctx->lock_id);
    
    return identified;
}

BOOL FUN_02063468(UnkStruct_BackupCtx *ctx)
{
    u32 *tmp;
    BOOL result = FUN_020634b0(ctx, 0, 4, (u32)&tmp);
    if (result) {
        return TRUE;
    } else {
        return FALSE;
    }
}

BOOL FUN_02063498(void)
{
    if (CARD_TryWaitBackupAsync()) {
        return TRUE;
    } else {
        return FALSE;
    }
}

BOOL FUN_020634b0(UnkStruct_BackupCtx *ctx, u32 src, u32 len, u32 dst)
{
    CARD_LockBackup(ctx->lock_id);
    
    switch ((u8)ctx->backupType) {
        case CARD_BACKUP_TYPE_DEVICE_EEPROM:
            (void)CARDi_RequestStreamCommand(src, dst, len,
                                             NULL, NULL, FALSE,
                                             CARD_REQ_READ_BACKUP, 1, CARD_REQUEST_MODE_RECV);
            break;
        case CARD_BACKUP_TYPE_DEVICE_FLASH:
            (void)CARDi_RequestStreamCommand(src, dst, len,
                                             NULL, NULL, FALSE,
                                             CARD_REQ_READ_BACKUP, 1, CARD_REQUEST_MODE_RECV);
            break;
        case CARD_BACKUP_TYPE_DEVICE_FRAM:
            (void)CARDi_RequestStreamCommand(src, dst, len,
                                             NULL, NULL, FALSE,
                                             CARD_REQ_READ_BACKUP, 1, CARD_REQUEST_MODE_RECV);
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

BOOL FUN_02063554(UnkStruct_BackupCtx *ctx, u32 dst, u32 len, u32 src)
{
    CARD_LockBackup(ctx->lock_id);
    
    switch ((u8)ctx->backupType) {
        case CARD_BACKUP_TYPE_DEVICE_EEPROM:
            (void)CARDi_RequestStreamCommand(src, dst, len,
                                             NULL, NULL, FALSE,
                                             CARD_REQ_PROGRAM_BACKUP, 10, CARD_REQUEST_MODE_SEND_VERIFY);
            break;
        case CARD_BACKUP_TYPE_DEVICE_FLASH:
            (void)CARDi_RequestStreamCommand(src, dst, len,
                                             NULL, NULL, FALSE,
                                             CARD_REQ_WRITE_BACKUP, 10, CARD_REQUEST_MODE_SEND_VERIFY);
            break;
        case CARD_BACKUP_TYPE_DEVICE_FRAM:
            (void)CARDi_RequestStreamCommand(src, dst, len,
                                             NULL, NULL, FALSE,
                                             CARD_REQ_PROGRAM_BACKUP, 10, CARD_REQUEST_MODE_SEND_VERIFY);
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
