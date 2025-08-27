#include <string.h>

#include "l5common.h"

#include "l5config.hpp"

extern "C" {
    extern void *FUN_0208670c(u32 size, int unk); // alloc
    extern void FUN_02086738(void *ptr); // free
    extern s32 FUN_02085bbc(void *dst, const char *filename, u32 pos, u32 len); // read file
    extern int atoi(const char* s);
}

L5Config::L5Config()
{
    this->clear();
}

L5Config::~L5Config()
{
    if (this->paramEntry != NULL) {
        FUN_02086738(this->paramEntry);
    }
    this->paramEntry = NULL;
}

void L5Config::clear(void)
{
    this->paramEntry = NULL;
}

BOOL L5Config::openFile(char *filename)
{
    char *file = NULL;
    char *r5;
    char *r6;
    s32 len = FUN_02085bbc(&file, filename, 0, 0);
    if (len <= 0) {
        return FALSE;
    }

    r5 = r6 = file;

    if (file < (file + len)) {
        do {
            if ((*r6 == '\n') || (*r6 == '\r')) {
                *r6 = 0;
                s32 len = strlen(r5);
                if (len != 0) {
                    BOOL result = this->readFileParam(r5, &this->paramEntry[this->paramCount]);
                    if (result) {
                        this->paramCount++;
                    }
                }
                r5 = r6 + 1;
            }
            r6++;
        } while (r6 < (file + len));
    }

    FUN_02086738(file);

    return TRUE;
}

int L5Config::getParam(char *param)
{
    int pos = this->getParamPosition(param);
    if ((pos < 0) || (this->paramEntry == NULL)) {
        return 0;
    }
    Struct_ParamEntry *paramEntry = &this->paramEntry[pos];
    return paramEntry->value;
}

void L5Config::init(void)
{
    if (this->paramEntry == NULL) {
        Struct_ParamEntry *allocated = (Struct_ParamEntry *)FUN_0208670c(0x300, -1);
        this->paramEntry = allocated;
    }
    this->paramCount = 0;
}

int L5Config::getParamPosition(char *param)
{
    Struct_ParamEntry *paramEntry = this->paramEntry;
    if (paramEntry == NULL) {
        return -1;
    }
    u32 len = STD_GetStringLength(param);
    u32 crc32 = Common_CalcCRC32(param, len);
    int pos = 0;
    if (this->paramCount > 0) {
        do {
            if (paramEntry->crc32 == crc32) {
                return pos;
            }
            pos++;
            paramEntry++;
        } while (pos < this->paramCount);
    }
    return -1;
}

BOOL L5Config::readFileParam(char *file, Struct_ParamEntry *param)
{
    BOOL empty_file = TRUE;
    BOOL read_key = FALSE;
    BOOL awaiting_key = TRUE;

    if (param == NULL) {
        return FALSE;
    }

    char* key_start;
    char* curr = file;
    while (*curr != '\0') {
        if (*curr == ' ' || *curr == '\t') {
            curr++;
            if (awaiting_key) {
                key_start = curr;
            }
            continue;
        }
        else if (*curr == ';' && empty_file) {
            return FALSE;
        }
        else if (*curr == '=' && !read_key) {
            if (curr == key_start) {
                return FALSE;
            }

            char* key_end = curr;
            while (key_end[-1] == ' ' || key_end[-1] == '\t') {
                key_end--;
            }

            int len = key_end - key_start;
            param->crc32 = Common_CalcCRC32(key_start, len);
            read_key = TRUE;
            curr++;
            key_start = curr;
            awaiting_key = TRUE;
            continue;
        }
        else {
            empty_file = FALSE;
            awaiting_key = FALSE;
            curr++;
        }
    }

    if (read_key) {
        char* key_end = curr;
        while (key_end[-1] == ' ' || key_end[-1] == '\t') {
            key_end--;
        }

        int len = key_end - key_start;
        if (len > 0) {
            char strbuf[32];
            strncpy(strbuf, key_start, len);
            strbuf[len] = '\0';
            param->value = atoi(strbuf);
            return TRUE;
        }
    }

    return FALSE;
}
