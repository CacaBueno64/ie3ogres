#include <nitro/mi/memory.h>       // for MI_CpuClear8, MI_CpuCopy8
#include <nitro/std/string.h>      // for STD_CopyString, STD_ConcatenateString, STD_GetStringLength
#include <nitro/types.h>           // for TRUE, s32, FALSE, BOOL, u32, s16, u8
#include <cstdio>                  // for sprintf, NULL, size_t
#include "CFileIO.hpp"             // for CFileIO, gFileIO
#include "CSceneScriptData.hpp"    // for ScriptInstruction, CSceneScriptData, SCRIPT_TYPE_ACTION, SCRIPT_TYPE_EVENT, SCRIPT_TYPE_HELP, SCRIPT_TYPE_MATCH, SCRIPT_TYPE_NONE
#include "CSceneScriptManager.hpp" // for CSceneScriptFileContext, CSceneScriptManager (ptr only)
#include "allocator.hpp"           // for gAllocator, CAllocator
#include "archive.hpp"             // for PackHeaderGetOffsetAndSize
#include "cnvdat.h"                // for SScriptFileRecordData
#include "init/arm9_init.hpp"      // IWYU pragma: keep

CSceneScriptFileContext::CSceneScriptFileContext() {
    this->type = 0;
    this->code = 0;
}

CSceneScriptFileContext::~CSceneScriptFileContext() {}

void CSceneScriptFileContext::linkManager(CSceneScriptManager *manager) {
    this->manager = manager;
    this->type = 0;
    this->code = 0;
}

size_t CSceneScriptFileContext::openScript(int idx, u32 id, void *mainPKH, void *textPKH, int param5) {
    size_t result;

    char filename[64];
    char scriptpath[64];
    char textpath[64];

    u8 strategy;
    if ((idx == 9) || (idx == 10)) {
        strategy = 0;
    } else {
        strategy = 1;
    }

    if (mainPKH) {
        const char *script_files[5] = {
            "",
            "eve.pkb",
            "mch.pkb",
            "act.pkb",
            "help.pkb",
        };
        const char *text_files[5] = {
            "",
            "evet.pkb",
            "mcht.pkb",
            NULL,
            NULL,
        };

        void *test;
        u32 unk;

        s32 offset;
        size_t size;
        if (!Archive::PackHeaderGetOffsetAndSize(mainPKH, id, &offset, &size)) {
            this->type = 0;
            this->code = 0;
            return -1;
        }

        STD_CopyString(scriptpath, "/data_iz/script/");
        STD_ConcatenateString(scriptpath, script_files[this->type]);

        test = &unk;
        gFileIO.readDirect(scriptpath, &test, NULL, offset, sizeof(unk), FALSE, 1);

        gAllocator.setNextArena(4);
        this->data = gAllocator.allocate(unk / 0x100, 1, strategy);

        switch (param5) {
        case 0:
            result = gFileIO.readDirect(scriptpath, &this->data, NULL, offset, size, TRUE, 1);
            break;
        default:
            result = gFileIO.readDeferred(scriptpath, &this->data, NULL, offset, size, TRUE, 1);
            break;
        }
        if (!result) {
            this->type = 0;
            this->code = 0;
            return -1;
        }

        if ((textPKH) && (text_files[this->type])) {
            sprintf(textpath, "/data_iz/script/%s", text_files[this->type]);
            gFileIO.convertPathToFileID(&this->textFileID, textpath);
            if (Archive::PackHeaderGetOffsetAndSize(textPKH, id, &offset, &size)) {
                this->textOffset = offset;
            } else {
                this->textOffset = -1;
            }
        }

        this->getScriptFileName(filename);
        STD_CopyString(this->sstPath, "/data_iz/script/");
        STD_ConcatenateString(this->sstPath, filename);
        int pathLen = STD_GetStringLength(this->sstPath);
        STD_CopyString(&this->sstPath[pathLen - 5], ".sst"); // ".ssd" -> ".sst"
    } else {
        this->getScriptFileName(filename);
        STD_CopyString(scriptpath, "/data_iz/script/");
        STD_ConcatenateString(scriptpath, filename);

        gAllocator.setNextArena(4);

        switch (param5) {
        default:
            if (gAllocator.fileIO) {
                result = gAllocator.fileIO->readDeferred(scriptpath, &this->data, &gAllocator, 0, 0,
                                                         TRUE, strategy);
            } else {
                result = 0;
            }
            break;
        case 0:
            if (gAllocator.fileIO) {
                result = gAllocator.fileIO->readDirect(scriptpath, &this->data, &gAllocator, 0, 0,
                                                       TRUE, strategy);
            } else {
                result = 0;
            }
            break;
        }
        if (!result) {
            this->type = 0;
            this->code = 0;
            return -1;
        }

        STD_CopyString(this->sstPath, "/data_iz/script/");
        STD_ConcatenateString(this->sstPath, filename);
        int pathLen = STD_GetStringLength(this->sstPath);
        STD_CopyString(&this->sstPath[pathLen - 5], ".sst"); // ".ssd" -> ".sst"
        gFileIO.convertPathToFileID(&this->textFileID, this->sstPath);
    }

    return result;
}

int CSceneScriptFileContext::loadScript(int idx, s32 type, s32 code, void *mainPKH, void *textPKH, void *data) {
    if (this->data) {
        return FALSE;
    }

    this->type = type;
    this->code = code;

    if (data) {
        this->data = data;
    } else {
        int size = this->openScript(idx, code, mainPKH, textPKH, 0);
        if (size < 0) {
            return -1;
        }
    }

    char filename[64];
    if (!this->loader.initFile(this->data, "SSD")) {
        this->getScriptFileName(filename);
    }

    this->instCount = 0;

    ScriptInstruction *inst = NULL;
    while (TRUE) {
        inst = this->next(inst);
        if (!inst) {
            break;
        }

        if (inst->id == 0x3001) {
            this->instCount++;
        }
    }

    MI_CpuClear8(&this->variable, sizeof(this->variable));
    MI_CpuClear8(&this->unk, sizeof(this->unk));

    return TRUE;
}

void CSceneScriptFileContext::reset(void) {
    if (this->data) {
        this->loader.initFile(NULL, NULL);
        gAllocator.deallocate(this->data);
        this->type = 0;
        this->code = 0;
        this->instCount = 0;
        this->data = NULL;
    }
}

BOOL CSceneScriptFileContext::compareTypeAndCode(s32 type, s32 code) {
    if ((this->type == type) && (this->code == code)) {
        return TRUE;
    }
    return FALSE;
}

void CSceneScriptFileContext::getTypeAndCode(s32 *type, s32 *code) {
    if (type) {
        *type = this->type;
    }
    if (code) {
        *code = this->code;
    }
}

BOOL CSceneScriptFileContext::FUN_020491b0(void) {
    if (!this->data) {
        return TRUE;
    }
    if (this->instCount) {
        return TRUE;
    }

    int result;
    if (gAllocator.fileIO) {
        result = gAllocator.fileIO->tryFinalize(this->data);
    } else {
        result = -1;
    }
    if (result) {
        return FALSE;
    }

    char filename[64];
    if (!this->loader.initFile(this->data, "SSD")) {
        this->getScriptFileName(filename);
    }

    this->instCount = 0;

    ScriptInstruction *inst = NULL;
    while (TRUE) {
        inst = this->next(inst);
        if (!inst) {
            break;
        }
        if (inst->id == 0x3001) {
            this->instCount++;
        }
    }

    return TRUE;
}

BOOL CSceneScriptFileContext::getScriptFileName(char *dst) {
    switch (this->type) {
    case SCRIPT_TYPE_EVENT:
        sprintf(dst, "eve%08d.ssd_", (int)this->code);
        break;
    case SCRIPT_TYPE_MATCH:
        sprintf(dst, "mch%08d.ssd_", (int)this->code);
        break;
    case SCRIPT_TYPE_ACTION:
        sprintf(dst, "act%06d.ssd_", (int)this->code);
        break;
    case SCRIPT_TYPE_HELP:
        sprintf(dst, "help%06d.ssd_", (int)this->code);
        break;
    case SCRIPT_TYPE_NONE:
    default:
        return FALSE;
    }

    return TRUE;
}

BOOL CSceneScriptFileContext::saveScriptFileState(SScriptFileRecordData *fileRecordData) {
    fileRecordData->code = 0;
    fileRecordData->type = 0;

    if (!this->data) {
        return FALSE;
    }

    fileRecordData->type = this->type;
    fileRecordData->code = this->code;
    MI_CpuCopy8(&this->variable, &fileRecordData->variable, sizeof(fileRecordData->variable));

    return TRUE;
}

BOOL CSceneScriptFileContext::loadScriptFileState(int idx, SScriptFileRecordData *fileRecordData, void *mainPKH, void *textPKH) {
    if ((fileRecordData->type == 0) && (fileRecordData->code == 0)) {
        return TRUE;
    }

    if (!this->loadScript(idx, fileRecordData->type, fileRecordData->code, mainPKH, textPKH, 0)) {
        return FALSE;
    }

    MI_CpuCopy8(fileRecordData->variable, this->variable, sizeof(this->variable));
    MI_CpuClear8(this->unk, sizeof(this->unk));

    return TRUE;
}

s32 *CSceneScriptFileContext::getVariable(int idx) {
    if (idx >= 16) {
        idx = 0;
    }

    return &this->variable[idx];
}

ScriptInstruction *CSceneScriptFileContext::next(ScriptInstruction *cur) {
    return this->loader.next(cur);
}

ScriptInstruction *CSceneScriptFileContext::findFunctionStart(ScriptInstruction *cur, s16 num) {
    if (!this->data) {
        return NULL;
    }

    while (TRUE) {
        cur = this->next(cur);
        if (!cur) {
            break;
        }

        if (cur->id == 0x3001) {
            u32 *args = this->loader.getArgumentsPtr(cur);
            if (this->unk[args[2]] == 0) {
                if (num == args[3]) {
                    break;
                }
            }
        }
    }

    return cur;
}
