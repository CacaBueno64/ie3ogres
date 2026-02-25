#include "overlay.hpp"

namespace Overlay {

s32 Read(FSFile *file, u8 *ramAddr, s32 size);

s32 Read(FSFile *file, u8 *ramAddr, s32 size)
{
    #define CHUNK_SIZE 0x4000

    u32 result = 0;
    
    while (TRUE)
    {
        s32 chunk_size = size;
        if (size >= CHUNK_SIZE) {
            chunk_size = CHUNK_SIZE;
        }

        if (FS_ReadFile(file, ramAddr, chunk_size) != chunk_size) {
            return -1;
        }

        ramAddr += chunk_size;
        result += chunk_size;
        size -= chunk_size;
        
        if (size == 0) {
            break;
        }

        OS_Sleep(1);
    }
    
    return result;
}

BOOL Load(FSOverlayID ovID)
{
    FSFile file;
    FSOverlayInfo ovInfo;

    BOOL result = FALSE;

    if (!FS_LoadOverlayInfo(&ovInfo, MI_PROCESSOR_ARM9, ovID)) {
        return FALSE;
    }
    
    FS_InitFile(&file);
    
    if (FS_OpenFileFast(&file, FS_GetOverlayFileID(&ovInfo)))
    {
        s32 size;
        u8 *ramAddr = ovInfo.header.ram_address;
        
        if ((ovInfo.header.flag & 1) != 0) {
            size = ovInfo.header.compressed;
        } else {
            size = ovInfo.header.ram_size;
        }

        FS_ClearOverlayImage(&ovInfo);
        
        if (Read(&file, ramAddr, size) == size) {
            result = TRUE;
            FS_StartOverlay(&ovInfo);
        }

        FS_CloseFile(&file);
    }

    return result;
}

} /* namespace Overlay */
