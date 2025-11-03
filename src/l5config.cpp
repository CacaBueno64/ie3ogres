#include "l5config.hpp"

L5Config::L5Config() { this->clear(); }

L5Config::~L5Config() {
    if (this->paramEntry != NULL) {
        L5FS_Deallocate(this->paramEntry);
    }
    this->paramEntry = NULL;
}

void L5Config::clear(void) { this->paramEntry = NULL; }

BOOL L5Config::openFile(char *filepath) {
    char *file = NULL;
    char *r5;
    char *r6;
    s32 len = L5FS_ReadFile((void **)&file, filepath, 0, 0);
    if (len <= 0) {
        return FALSE;
    }

    r5 = r6 = file;

    while (r6 < (file + len)) {
        if ((*r6 == '\n') || (*r6 == '\r')) {
            *r6 = 0;
            if (strlen(r5) != 0) {
                if (this->readFileParam(r5, &this->paramEntry[this->paramCount])) {
                    this->paramCount++;
                }
            }
            r5 = r6 + 1;
        }
        r6++;
    }

    L5FS_Deallocate(file);

    return TRUE;
}

int L5Config::getParam(char *str) {
    int pos = this->getParamPosition(str);

    if ((pos < 0) || (this->paramEntry == NULL)) {
        return 0;
    }

    Config_ParamEntry *paramEntry = &this->paramEntry[pos];

    return paramEntry->value;
}

void L5Config::init(void) {
    if (this->paramEntry == NULL) {
        this->paramEntry = (Config_ParamEntry *)L5FS_AllocateClear(0x300, -1);
    }
    this->paramCount = 0;
}

int L5Config::getParamPosition(char *str) {
    Config_ParamEntry *paramEntry = this->paramEntry;

    if (paramEntry == NULL) {
        return -1;
    }

    u32 len   = STD_GetStringLength(str);
    u32 crc32 = L5FS_CalcCRC32(str, len);

    for (int pos = 0; pos < this->paramCount; pos++) {
        if (paramEntry->crc32 == crc32) {
            return pos;
        }
        paramEntry++;
    }

    return -1;
}

BOOL L5Config::readFileParam(char *file, Config_ParamEntry *param) {

    BOOL empty_file   = TRUE;
    BOOL read_key     = FALSE;
    BOOL awaiting_key = TRUE;

    if (param == NULL) {
        return FALSE;
    }

    char *key_start;
    char *curr = file;
    while (*curr != '\0') {
        if (*curr == ' ' || *curr == '\t') {
            curr++;
            if (awaiting_key) {
                key_start = curr;
            }
            continue;
        } else if (*curr == ';' && empty_file) {
            return FALSE;
        } else if (*curr == '=' && !read_key) {
            if (curr == key_start) {
                return FALSE;
            }

            char *key_end = curr;
            while (key_end[-1] == ' ' || key_end[-1] == '\t') {
                key_end--;
            }

            int len      = key_end - key_start;
            param->crc32 = L5FS_CalcCRC32(key_start, len);
            read_key     = TRUE;
            curr++;
            key_start    = curr;
            awaiting_key = TRUE;
            continue;
        } else {
            empty_file   = FALSE;
            awaiting_key = FALSE;
            curr++;
        }
    }

    if (read_key) {
        char *key_end = curr;
        while (key_end[-1] == ' ' || key_end[-1] == '\t') {
            key_end--;
        }

        int len = key_end - key_start;
        if (len > 0) {
            char strbuf[32];
            strncpy(strbuf, key_start, len);
            strbuf[len]  = '\0';
            param->value = atoi(strbuf);
            return TRUE;
        }
    }

    return FALSE;
}
