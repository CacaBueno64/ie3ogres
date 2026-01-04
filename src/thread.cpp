#include "thread.hpp"

namespace Thread {

static void *sMainThreadStack;
static int sCurrentThreadIdx;
static void *sThreadStackTable[THREAD_STACK_TABLE_COUNT];
static void (*sThreadFunctionTable[THREAD_FUNCTION_TABLE_COUNT])(void *args);

void Init(void)
{
    for (int i = 0; i < THREAD_STACK_TABLE_COUNT; i++) {
        sThreadStackTable[i] = NULL;
    }
}

asm void Exit(void)
{
    ldr r2, =sCurrentThreadIdx
    ldr r0, [r2] // r0 = thread index
    add r0, r0, r0
    add r0, r0, r0

    ldr r2, =sThreadStackTable
    add r2, r2, r0
    mov r0, NULL
    str r0, [r2] // sThreadStackTable[index] = NULL

    ldr r2, =sMainThreadStack
    ldr sp, [r2]

    ldr lr, [sp], #4
    mov pc, lr
}

asm void ReturnStack(void)
{
    str lr, [sp, #-4]! // push {lr}
    
    ldr r2, =sCurrentThreadIdx
    ldr r0, [r2] // r0 = thead index
    add r0, r0, r0
    add r0, r0, r0

    ldr r2, =sThreadStackTable
    add r2, r2, r0
    str sp, [r2]

    ldr r2, =sMainThreadStack
    ldr sp, [r2]

    ldr lr, [sp], #4 // pop {lr}
    mov pc, lr
}

asm void Yield(void)
{
    str lr, [sp, #-4]!
    str r11, [sp, #-4]!
    str r10, [sp, #-4]!
    str r9, [sp, #-4]!
    str r8, [sp, #-4]!
    str r7, [sp, #-4]!
    str r6, [sp, #-4]!
    str r5, [sp, #-4]!
    str r4, [sp, #-4]!
    str r3, [sp, #-4]!
    str r2, [sp, #-4]!
    str r1, [sp, #-4]!
    str r0, [sp, #-4]!
    bl ReturnStack
    b LoadContext
}

asm void LoadContext(void)
{
    ldr r0, [sp], #0x4
    ldr r1, [sp], #0x4
    ldr r2, [sp], #0x4
    ldr r3, [sp], #0x4
    ldr r4, [sp], #0x4
    ldr r5, [sp], #0x4
    ldr r6, [sp], #0x4
    ldr r7, [sp], #0x4
    ldr r8, [sp], #0x4
    ldr r9, [sp], #0x4
    ldr r10, [sp], #0x4
    ldr r11, [sp], #0x4
    ldr r2, [sp], #0x4
    mov pc, r2
}

void Sleep(int frames)
{
    for (int i = 0; i < frames; i++) {
        Yield();
    }
}

void Starter(void *args)
{
    sThreadFunctionTable[sCurrentThreadIdx](args);
    Exit();
}

asm threadkey_t InitStack(register void (*starter)(void *args), register void *args, register void *stackBottom)
{
    str starter, [stackBottom, #-4]!
    str r11, [stackBottom, #-4]!
    str r10, [stackBottom, #-4]!
    str r9, [stackBottom, #-4]!
    str r8, [stackBottom, #-4]!
    str r7, [stackBottom, #-4]!
    str r6, [stackBottom, #-4]!
    str r5, [stackBottom, #-4]!
    str r4, [stackBottom, #-4]!
    str r3, [stackBottom, #-4]!
    str r2, [stackBottom, #-4]!
    str r1, [stackBottom, #-4]!
    str args, [stackBottom, #-4]!
    ldr r0, =LoadContext
    str r0, [stackBottom, #-4]!

    mov r3, #0 // r3 = idx
    ldr r12, =sThreadStackTable
@loop:
    ldr r0, [r12]
    tst r0, r0
    beq @loop_end

    add r12, r12, #4
    add r3, r3, #1
    
    cmp r3, THREAD_STACK_TABLE_COUNT
    bne @loop

    mov r0, #0 // r0 = result
    sub r0, r0, #1
    b @return // return -1
    
@loop_end:
    str stackBottom, [r12]
    mov r0, r3 // return index
    
@return:
    mov pc, lr
}

int Create(void (*function)(void *), void *args, void *stackBottom)
{
    threadkey_t idx = InitStack(&Starter, args, stackBottom);
    sThreadFunctionTable[idx] = function;

    return idx;
}

void Destroy(threadkey_t idx)
{
    sThreadStackTable[idx] = NULL;
}

asm void WakeUp(void)
{
    str lr, [sp, #-4]! // push {lr}

    ldr r2, =sMainThreadStack
    str sp, [r2]

    ldr r2, =sCurrentThreadIdx
    ldr r1, [r2] // r1 = thread index
    add r1, r1, r1
    add r1, r1, r1

    ldr r2, =sThreadStackTable;
    add r2, r2, r1
    ldr sp, [r2] // sThreadStackTable[index] = sp

    ldr r1, [sp], #4 // pop {r1}
    mov pc, r1
}

asm void WakeUpAll(void)
{
    mov r1, #0 // r1 = index
    ldr r2, =sThreadStackTable
@loop:
    ldr r0, =sCurrentThreadIdx
    str r1, [r0] // sCurrentThreadIdx = index
    ldr r0, [r2] // r0 = thread stack
    tst r0, r0
    beq @iter

    str lr, [sp, #-4]!
    str r11, [sp, #-4]!
    str r10, [sp, #-4]!
    str r9, [sp, #-4]!
    str r8, [sp, #-4]!
    str r7, [sp, #-4]!
    str r6, [sp, #-4]!
    str r5, [sp, #-4]!
    str r4, [sp, #-4]!
    str r3, [sp, #-4]!
    str r2, [sp, #-4]!
    str r1, [sp, #-4]!
    str r0, [sp, #-4]!
    bl WakeUp
    ldr r0, [sp], #0x4
    ldr r1, [sp], #0x4
    ldr r2, [sp], #0x4
    ldr r3, [sp], #0x4
    ldr r4, [sp], #0x4
    ldr r5, [sp], #0x4
    ldr r6, [sp], #0x4
    ldr r7, [sp], #0x4
    ldr r8, [sp], #0x4
    ldr r9, [sp], #0x4
    ldr r10, [sp], #0x4
    ldr r11, [sp], #0x4
    ldr lr, [sp], #0x4
    
@iter:
    add r2, r2, #4
    add r1, r1, #1
    cmp r1, THREAD_STACK_TABLE_COUNT
    bne @loop

@return:
    mov pc, lr
}

} /* namespace Thread */
