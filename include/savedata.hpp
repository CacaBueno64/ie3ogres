#include <nitro.h>

#ifdef __cplusplus
extern "C" {
#endif

typedef struct {
    CARDBackupType backupType;
    u16 lock_id;
    u16 unk06; // padding?
    CARDResult result;
} UnkStruct_BackupCtx;

typedef struct {
    u8 unk[0x4C];
    UnkStruct_BackupCtx backupCtx;
} UnkStruct_0209A5D0;

BOOL SaveData_CardBackupType(UnkStruct_BackupCtx *ctx, CARDBackupType backupType);
BOOL SaveData_ReadBuffer(UnkStruct_BackupCtx *ctx);
BOOL SaveData_TryWaitBackupAsync(void);
BOOL SaveData_ReadBackup(UnkStruct_BackupCtx *ctx, u32 src, u32 len, void *dst);
BOOL SaveData_WriteBackup(UnkStruct_BackupCtx *ctx, u32 dst, u32 len, void *src);

#ifdef __cplusplus
} /* extern "C" */
#endif
