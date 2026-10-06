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
    virtual bool closeModels(void);
    virtual bool setupModels(void);

    void initFiles(int count);
    void closeFiles(void);
    int openFile(int idx, bool defer);
    int detachFile(int idx);
    void closeFile(int idx);

    int fileCount;
    SFileData *files;
    int modelCount;
    CModel *models;
};
