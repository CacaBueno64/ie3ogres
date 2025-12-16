#ifndef IE3OGRES_FILEIO_H
#define IE3OGRES_FILEIO_H

#pragma once

#include <nitro.h>
#include <string.h>

#include "l5allocator.hpp"
#include "archive.hpp"

typedef enum {
    STATE_IDLE,
    STATE_NEW,
    STATE_PREPARING,
    STATE_PENDING,
    STATE_READING,
    STATE_READ_SUCCESS,
    STATE_UNCOMPRESSING,
    STATE_COMPLETE,
    STATE_CLOSED,
    STATE_CANCELLED,
    STATE_ERROR
} FileRequestState;

struct FileRequest {
    MICompressionHeader compHeader;
    L5Allocator *allocator;
    char path[64];
    void *data;
    int offset;
    int size;
    FileRequestState state;
    FSFileID file_id;
    FileRequest *prev;
    FileRequest *next;
};

class CFileIO {
    public:
        CFileIO();
        virtual ~CFileIO();
        static void FUN_0202ede8(void);
        /* 0x0202edec */ void init(int max_requests, L5Allocator *allocator);
        /* 0x0202ee10 */ void start(int max_requests);
        /* 0x0202eedc */ int getFreeRequestIdx(void);
        /* 0x0202ef20 */ int getRequestIdx(void *data);
        /* 0x0202ef74 */ void *allocate(size_t size);
        /* 0x0202ef8c */ void deallocate(void *ptr);
        /* 0x0202ef9c */ size_t getFileLength(const char *path);
        /* 0x0202eff0 */ size_t readDirect(const char *path, void **dest, L5Allocator *allocator, int offset, size_t size, BOOL compressed, u8 strategy);
        /* 0x0202f294 */ size_t readDeferred(const char *path, void **dest, L5Allocator *allocator, int offset, size_t size, BOOL compressed, u8 strategy);
        /* 0x0202f500 */ size_t readRaw(FSFileID *fileID, void **dest, BOOL compressed, int offset, size_t size);
        /* 0x0202f568 */ BOOL convertPathToFileID(FSFileID *fileID, const char *path);
        /* 0x0202f57c */ int tryFinalize(void *data);
        /* 0x0202f598 */ int tryFinalize(int idx);
        /* 0x0202f634 */ BOOL isBusy(void);
        /* 0x0202f678 */ BOOL close(void *data, BOOL deallocate);
        /* 0x0202f69c */ BOOL close(int idx, BOOL deallocate);
        /* 0x0202f794 */ void wakeUp(void);
        /* 0x0202f7a4 */ static void processRequests(void *arg);
        /* 0x0202fa88 */ BOOL getDestSize(FileRequest *request, FSFile *file, size_t *out_size);
        /* 0x0202fb58 */ void processUncompRequest(FileRequest *request);
        /* 0x0202fbe8 */ void uncompress(void *src, FileRequest *request);
        /* 0x0202fc4c */ size_t readFromSFP(char *filename, void **dst, void *file);

    private:
    L5Allocator *defaultAllocator;
    OSMutex mutex;
    s32 nRequests;
    FileRequest *requests;
    FSFile currentFile;
    OSThread thread;
    u8 stack[2048];
    void *buffers[2];
    u32 bufIdx;
    void *table;
    FileRequest *pendingHead;
    FileRequest *pendingTail;
    FileRequest *currentUncomp;
};

extern CFileIO gFileIO;

extern "C" {
    extern void FUN_02053914(char *dst, const char *src); //lowercase to uppercase
}

#endif //IE3OGRES_FILEIO_H