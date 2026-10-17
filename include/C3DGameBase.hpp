#pragma once

#include <nitro/types.h>

#include "CModel.hpp"
#include "archive.hpp"

class C3DGameBase
{
public:
    C3DGameBase();

    virtual const char *getPkhPath(int type) = 0;
    virtual const char *getPkbPath(int type) = 0;
    virtual bool getFileKeys(const char *path, int *outIdx, s32 *outCode) = 0;
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
