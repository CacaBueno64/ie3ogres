// clang-format off
#include "C3DGameBase.hpp"

#include <nitro/mi/memory.h>

#include "allocator.hpp"
// clang-format on

C3DGameBase::C3DGameBase()
{
    this->fileCount = 0;
    this->files = NULL;
    this->modelCount = 0;
    this->models = NULL;
}

void C3DGameBase::initFiles(int count)
{
    this->fileCount = count;
    this->files = static_cast<SFileData *>(gAllocator.allocate(sizeof(*this->files) * count));
    MI_CpuClear8(this->files, sizeof(*this->files) * count);
}

void C3DGameBase::closeFiles(void)
{
    if (this->files) {
        gAllocator.deallocate(this->files);
    }
    this->files = NULL;
    this->fileCount = 0;
}

int C3DGameBase::openFile(int idx, bool defer)
{
    if (idx >= this->fileCount) {
        return false;
    }

    if (idx < 0) {
        for (idx = 0; idx < this->fileCount; idx++) {
            char *path = this->vFUN_00(idx);
            if (defer) {
                Archive::RequestNewRead(path, &this->files[idx]);
            } else {
                Archive::ReadNewUncompress(path, &this->files[idx]);
            }
        }

        return this->modelCount;
    }

    char *path = this->vFUN_00(idx);
    if (defer) {
        Archive::RequestNewRead(path, &this->files[idx]);
    } else {
        Archive::ReadNewUncompress(path, &this->files[idx]);
    }

    return 1;
}

int C3DGameBase::detachFile(int idx)
{
    if (idx >= this->fileCount) {
        return -1;
    }

    if (idx < 0) {
        if (Archive::TryFinalize(this->files, this->fileCount)) {
            return 0;
        }
    } else {
        if (Archive::TryFinalize(&this->files[idx], 1)) {
            return 0;
        }
    }

    return 1;
}

void C3DGameBase::closeFile(int idx)
{
    if (idx >= this->fileCount) {
        return;
    }

    if (idx < 0) {
        for (idx = 0; idx < this->fileCount; idx++) {
            SFileData *file = &this->files[idx];
            Archive::Close(file, 1);
            Archive::Deallocate(file);
            file->data = NULL;
            file->size = 0;
            file->available = false;
            file->unk_9 = 0;
            file->unk_a = 0;
        }
    } else {
        SFileData *file = &this->files[idx];
        Archive::Close(file, 1);
        Archive::Deallocate(file);
        file->data = NULL;
        file->size = 0;
        file->available = false;
        file->unk_9 = 0;
        file->unk_a = 0;
    }
}

bool C3DGameBase::closeModels(void)
{
    if (!this->models) {
        return false;
    }

    for (int i = 0; i < this->modelCount; i++) {
        this->models[i].close();
    }

    return true;
}

bool C3DGameBase::setupModels(void)
{
    if (!this->models) {
        return false;
    }

    for (int i = 0; i < this->modelCount; i++) {
        this->models[i].setup();
    }

    return true;
}


