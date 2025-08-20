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

BOOL FUN_02063408(UnkStruct_BackupCtx *ctx, CARDBackupType backupType);
BOOL FUN_02063468(UnkStruct_BackupCtx *ctx);
BOOL FUN_02063498(void);
BOOL FUN_020634b0(UnkStruct_BackupCtx *ctx, u32 src, u32 len, u32 dst);
BOOL FUN_02063554(UnkStruct_BackupCtx *ctx, u32 dst, u32 len, u32 src);

#ifdef __cplusplus
} /* extern "C" */
#endif
