#ifndef IE3OGRES_3DGAMEBASE_H
#define IE3OGRES_3DGAMEBASE_H

#pragma once

#include <nitro.h>

#include "model.hpp"
#include "filesystem.hpp"

class C3DGameBase {
    public:
        /* 0x02052144 */ C3DGameBase();
        virtual char *vFUN_00(int param1) = 0;
        virtual char *vFUN_04(int param1) = 0;
        virtual BOOL vFUN_08(char *param1, int *param2, int *param3) = 0;
        /* 0x020523ac */ virtual BOOL vFUN_0C(void);
        /* 0x020523fc */ virtual BOOL vFUN_10(void);
    
    s32 fileCount;
    SFileData *files;
    s32 n_10;
    CModel *model;
};

#endif //IE3OGRES_3DGAMEBASE_H
