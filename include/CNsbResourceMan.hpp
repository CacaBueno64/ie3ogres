#pragma once

#include <nitro.h>

#include "filesystem.hpp"

typedef struct SNsbResource {
    u32 hash;
    void *data;
    size_t size;
    u8 type; /* 6: auto, 7: bca, 8: bma, 9: bta */
    u8 state;
    u8 inUse;
    filekey_t fileKey;
    u16 flags; /* 5: linked, 0: loaded */
    u16 refCount;
    SNsbResource *next;
} SNsbResource;

class CNsbResourceMan
{
public:
    virtual ~CNsbResourceMan()
    {
        this->destroy();
    }

    void increase(size_t size);
    void decrease(size_t size);
    int getFromData(void *data, SNsbResource **out);
    void updateType(SNsbResource *res);
    bool init(int resCount);
    void destroy(void);
    u32 calcHash(const char *str, size_t offset, size_t size, u32 type);
    void getHash(SNsbResource *res, const char *str, size_t offset, size_t size, u32 type);
    SNsbResource *getFromName(const char *name, size_t offset, size_t size, u32 type);
    SNsbResource *getFromDir(archandle_t arcKey, const char *name, u8 type, BOOL async);
    SNsbResource *getFromPathEx(const char *path, u8 type, BOOL async, size_t offset, size_t size, bool compressed, u8 strategy);
    SNsbResource *getFromContainer(const char *path, const char *name, u8 type, BOOL async, size_t offset, size_t size, u8 strategy);
    SNsbResource *getFromPath(const char *path, u8 type);
    SNsbResource *allocate(void *data, size_t size, u8 type);
    SNsbResource *aquire(SNsbResource *res);
    int tryFinalize(SNsbResource *res);
    void release(SNsbResource *res);
    void freeAll(void);
    void free(SNsbResource *res);
    CNsbResourceMan();
    bool load(SNsbResource *res);
    void unload(SNsbResource *res);
    void releaseData(SNsbResource *res);
    bool isLoaded(SNsbResource *res);
    bool isPac(SNsbResource *res);
    int getPacCount(SNsbResource *res);
    SNsbResource *initPacResource(SNsbResource *res, int part, u8 type);
    bool close(SNsbResource *res);
    bool setup(SNsbResource *res);

    inline BOOL isUsed(SNsbResource *res)
    {
        return (res->flags & 1) ? TRUE : FALSE;
    }

    inline BOOL isFree(SNsbResource *res)
    {
        return (res->flags & 1) ? FALSE : TRUE;
    }

    inline int getFree(SNsbResource **out)
    {
        for (int i = 0; i < this->cap; i++) {
            if (!this->isUsed(&this->resources[i])) {
                *out = &this->resources[i];
                return i;
            }
        }

        return -1;
    }

    SNsbResource *resources;
    int cap;
    int cur;
    OSMutex mutex;
    size_t totalSize;
};

extern CNsbResourceMan *gNsbResourceMan;
