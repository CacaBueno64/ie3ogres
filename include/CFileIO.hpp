#pragma once

// clang-format off
#include <nitro.h>
// clang-format on

class CAllocator;

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

typedef struct FileRequest {
    MICompressionHeader compHeader;
    CAllocator *allocator;
    char path[64];
    void *data;
    int offset;
    int size;
    FileRequestState state;
    FSFileID file_id;
    FileRequest *prev;
    FileRequest *next;
} FileRequest;

class CFileIO
{
public:
    CFileIO();
    virtual ~CFileIO();
    static void FUN_0202ede8(void);
    void init(int max_requests, CAllocator *allocator);
    void start(int max_requests);
    int getFreeRequestIdx(void);
    int getRequestIdx(void *data);
    void *allocate(size_t size);
    void deallocate(void *ptr);
    size_t getFileLength(const char *path);
    size_t readDirect(const char *path, void **dest, CAllocator *allocator, s32 offset, size_t size, BOOL compressed, u8 strategy);
    size_t readDeferred(const char *path, void **dest, CAllocator *allocator, s32 offset, size_t size, BOOL compressed, u8 strategy);
    size_t readRaw(FSFileID *fileID, void **dest, BOOL compressed, s32 offset, size_t size);
    BOOL convertPathToFileID(FSFileID *fileID, const char *path);
    int tryFinalize(void *data);
    int tryFinalize(int idx);
    BOOL isBusy(void);
    BOOL close(void *data, BOOL deallocate);
    BOOL close(int idx, BOOL deallocate);
    void wakeUp(void);
    static void processRequests(void *arg);
    BOOL getDestSize(FileRequest *request, FSFile *file, size_t *out_size);
    void processUncompRequest(FileRequest *request);
    void uncompress(void *src, FileRequest *request);
    size_t readFromSFP(char *filename, void **dst, char *file);

private:
    CAllocator *defaultAllocator;
    OSMutex mutex;
    s32 nRequests;
    FileRequest *requests;
    FSFile currentFile;
    OSThread thread;
    char stack[2048];
    void *buffers[2];
    u32 bufIdx;
    void *table;
    FileRequest *pendingHead;
    FileRequest *pendingTail;
    FileRequest *currentUncomp;
};

extern CFileIO gFileIO;
