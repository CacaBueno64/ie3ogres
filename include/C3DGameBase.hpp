#pragma once

#include <nitro/types.h>

#include "CModel.hpp"
#include "archive.hpp"

class C3DGameBase
{
public:
    /* 0x02052144 */ C3DGameBase();

    virtual char *vFUN_00(int idx) = 0;
    virtual char *vFUN_04(int idx) = 0;
    virtual bool vFUN_08(char *path, int *outIdx, u32 *outCode) = 0;
    /* 0x020523ac */ virtual bool closeModels(void);
    /* 0x020523fc */ virtual bool setupModels(void);
    
    /* 0x02052168 */ void initFiles(int count);
    /* 0x020521a0 */ void closeFiles(void);
    /* 0x020521d0 */ int openFile(int idx, bool defer);
    /* 0x0205228c */ int detachFile(int idx);
    /* 0x020522ec */ void closeFile(int idx);

    int fileCount;
    SFileData *files;
    int modelCount;
    CModel *models;
};
