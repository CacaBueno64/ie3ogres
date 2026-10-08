#pragma once

#include <nitro.h>
#include <string.h>

#include "archive.hpp"
#include "CLogicThink.hpp"

class CPhonePassword
{
public:
    CPhonePassword();
    virtual ~CPhonePassword();
    void readFile(u32 key);
    void closeFile(void);
    u16 decode(char *username, char *password);
    u8 getKanaIdx(char *c);

private:
    SFileData file;
    MATHRandContext32 ctx;
    u32 key;
};
