#ifndef IE3OGRES_THREAD_H
#define IE3OGRES_THREAD_H

#pragma once

#include <nitro.h>

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
int InitStack(register void (*starter)(void *args), register void *args, register void *stackBottom);
int Create(void (*function)(void *), void *args, void *stackBottom);
void Destroy(int idx);
void WakeUp(void);
void WakeUpAll(void);

} /* namespace Thread */

#endif //IE3OGRES_THREAD_H
