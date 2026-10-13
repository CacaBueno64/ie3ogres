#include "CSceneScriptData.hpp"

CSceneScriptData::CSceneScriptData()
{
    this->header = NULL;
}

CSceneScriptData::~CSceneScriptData() { }

BOOL CSceneScriptData::initFile(void *data, const char *magic)
{
    SScriptInstruction *inst;
    SScriptString *str;
    int i, j;

    this->header = (SScriptHeaderV3 *)data;
    if (!data) {
        return FALSE;
    }

    if (magic) {
        STD_CompareString((const char *)data, magic);
        // drunk devs
    }

    u32 version = this->header->version & SCRIPT_VERSION_MASK;
    
    if (version == SCRIPT_VERSION_2)
    {
        this->instStart = (SScriptInstruction *)(this->header + 1) - 2;
        this->instSize = 0;
        inst = this->instStart;
        for (i = 0; i < this->header->instCount; i++) {
            this->instSize += inst->size;
            inst = (SScriptInstruction *)((u8 *)inst + inst->size);
        }

        this->strCount = *(s32 *)((u8 *)this->instStart + this->instSize);
        this->strStart = (SScriptString *)((u8 *)this->instStart + this->instSize + 4);
        this->strSize = this->strStart->size;

        inst = this->instStart;
        str = this->strStart;
        for (i = 0, j = 0; i < this->header->instCount; i++) {
            while (s16(inst->num) == str->num) {
                j++;

                ((char **)getArgTypes(inst))[str->slot] = str->string;
                
                if (j >= this->strCount) {
                    break;
                }
                
                str = (SScriptString *)((u8 *)str + str->size);
                this->strSize += str->size;
            }
            inst = (SScriptInstruction *)((u8 *)inst + inst->size);
        }
    }
    else if (version == SCRIPT_VERSION_3)
    {
        this->instStart = (SScriptInstruction *)(this->header + 1);
        this->instSize = this->header->instSize;
        this->strCount = this->header->strCount;
        this->strSize = this->header->strSize;
        this->strStart = (SScriptString *)((u8 *)this->instStart + this->instSize);

        inst = this->instStart;
        str = this->strStart;
        for (i = 0, j = 0; i < this->header->instCount && j < this->strCount; i++) {
            while ((s16)inst->num == str->num) {
                j++;
                
                ((char **)getArgTypes(inst))[str->slot] = str->string;
                
                str = (SScriptString *)((u8 *)str + str->size);
                
                if (j >= this->strCount) {
                    break;
                }
            }

            inst = (SScriptInstruction *)((u8 *)inst + inst->size);
        }
    }

    return TRUE;
}

SScriptInstruction *CSceneScriptData::next(SScriptInstruction *cur)
{
    if (!cur) {
        return this->instStart;
    }

    SScriptInstruction *next = (SScriptInstruction *)((u8 *)cur + cur->size);

    if (((int)next - (int)this->instStart) >= this->header->instSize) {
        return NULL;
    }

    return next;
}

SScriptInstruction *CSceneScriptData::getInstructionByID(s32 id)
{
    SScriptInstruction *cur = this->instStart;
    int count = this->header->instCount;
    int i = 0;

    for (; i < this->header->instCount; i++) {
        if (s16(cur->id) == id) {
            break;
        }

        cur = (SScriptInstruction *)((u8 *)cur + cur->size);
    }

    if (i == count) {
        return NULL;
    }

    return cur;
}
