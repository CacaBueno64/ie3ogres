#pragma once

typedef int threadhandle_t;

namespace Thread {

#define THREAD_STACK_TABLE_COUNT 16
#define THREAD_FUNCTION_TABLE_COUNT 16

void Init(void);
void Exit(void);
void ReturnStack(void);
void Yield(void);
void LoadContext(void);
void Sleep(int frames);
void Starter(void *args);
threadhandle_t InitStack(void (*starter)(void *args), void *args, void *stackBottom);
threadhandle_t Create(void (*function)(void *), void *args, void *stackBottom);
void Destroy(threadhandle_t idx);
void WakeUp(void);
void WakeUpAll(void);

} /* namespace Thread */
