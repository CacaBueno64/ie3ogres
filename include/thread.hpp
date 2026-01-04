#ifndef IE3OGRES_THREAD_H
#define IE3OGRES_THREAD_H

#pragma once

#include <nitro.h>

typedef int threadkey_t;

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
threadkey_t InitStack(register void (*starter)(void *args), register void *args, register void *stackBottom);
threadkey_t Create(void (*function)(void *), void *args, void *stackBottom);
void Destroy(threadkey_t idx);
void WakeUp(void);
void WakeUpAll(void);

} /* namespace Thread */

#endif //IE3OGRES_THREAD_H
