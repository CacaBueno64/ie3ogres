
	.include "asm/macros/function.inc"
	.public DWC_AllocEx
	.public DWC_Base64Encode
	.public DWC_Free
	.public DWC_GetLastError
	.public DWC_SVLGetTokenAsync
	.public DWC_SVLProcess
	.public DWCi_IsError
	.public DWCi_NdCancelAsync
	.public DWCi_NdCleanupAsync
	.public DWCi_NdGetFileAsync
	.public DWCi_NdGetFileListAsync
	.public DWCi_NdGetFileListNumAsync
	.public DWCi_NdGetProgress
	.public DWCi_NdSetAttr
	.public DWCi_NdSetError
	.public DWCi_NdStartup
	.public DWCi_SetError
	.public MI_CpuFill8
	.public OS_CreateThread
	.public OS_InitMutex
	.public OS_JoinThread
	.public OS_LockMutex
	.public OS_SNPrintf
	.public OS_Sleep
	.public OS_UnlockMutex
	.public OS_WakeupThreadDirect
	.public strlen
	.public strncpy

	.text
	arm_static_func_start DWCi_NdAlloc
DWCi_NdAlloc: ; 0x020CC940
	ldr r12, _020CC954 ; =DWC_AllocEx
	mov r2, r1
	mov r1, r0
	mov r0, #0xa
	bx r12
_020CC954: .word DWC_AllocEx
	arm_func_end DWCi_NdAlloc

	arm_static_func_start DWCi_NdFree
DWCi_NdFree: ; 0x020CC958
	ldr r12, _020CC96C ; =DWC_Free
	mov r1, r0
	mov r0, #0xa
	mov r2, #0
	bx r12
_020CC96C: .word DWC_Free
	arm_func_end DWCi_NdFree

	arm_static_func_start DWCi_NdCleanupCallback
DWCi_NdCleanupCallback: ; 0x020CC970
	stmfd sp!, {r3, r4, r5, lr}
	ldr r4, _020CC9C0 ; =s_userCallback
	ldr r0, [r4, #0x18]
	add r0, r0, #0x1b8
	add r0, r0, #0x800
	bl OS_JoinThread
	ldr r0, [r4, #0x18]
	bl DWCi_NdFree
	ldr r5, _020CC9C4 ; =s_dwcnd_mutexState
	mov r1, #0
	mov r0, r5
	str r1, [r4, #0x18]
	bl OS_LockMutex
	mov r1, #3
	mov r0, r5
	str r1, [r4, #0x14]
	mov r1, #4
	str r1, [r4, #0x10]
	bl OS_UnlockMutex
	ldmfd sp!, {r3, r4, r5, pc}
_020CC9C0: .word s_userCallback
_020CC9C4: .word s_dwcnd_mutexState
	arm_func_end DWCi_NdCleanupCallback

	arm_static_func_start DWCi_SVLTokenWaitThread
DWCi_SVLTokenWaitThread: ; 0x020CC9C8
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	sub sp, sp, #0x2a0
	mov r4, #0x64
_020CC9D4:
	bl DWC_SVLProcess
	cmp r0, #3
	beq _020CC9F4
	cmp r0, #4
	beq _020CCAFC
	cmp r0, #5
	beq _020CCB28
	b _020CCB40
_020CC9F4:
	ldr r4, _020CCB54 ; =s_userCallback
	ldr r7, [r4, #0x18]
	add r0, r7, #0x48
	bl strlen
	mov r5, r0
	ldr r0, _020CCB58 ; =0x020E56CC
	bl strlen
	add r0, r5, r0
	cmp r0, #0xff
	bls _020CCA34
	mov r1, #8
	sub r2, r1, #9
	mov r0, #0
	bl NdCallback
	add sp, sp, #0x2a0
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_020CCA34:
	add r6, sp, #0x1a0
	ldr r2, _020CCB5C ; =0x020E56E0
	mov r0, r6
	add r3, r7, #0x48
	mov r1, #0x100
	bl OS_SNPrintf
	ldr r7, [r4, #0x18]
	add r0, r7, #0x89
	bl strlen
	add r5, sp, #0x10
	mov r1, r0
	mov r2, r5
	add r0, r7, #0x89
	mov r3, #0x190
	bl DWC_Base64Encode
	cmp r0, #0
	bge _020CCA90
	mov r1, #8
	sub r2, r1, #9
	mov r0, #0
	bl NdCallback
	add sp, sp, #0x2a0
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_020CCA90:
	ldr r0, [r4, #0x18]
	ldr r12, _020CCB60 ; =NdCallback
	str r0, [sp]
	add r0, r0, #0x20
	str r0, [sp, #4]
	ldr r0, _020CCB64 ; =DWCi_NdAlloc
	ldr r1, _020CCB68 ; =DWCi_NdFree
	mov r2, r6
	mov r3, r5
	str r12, [sp, #8]
	bl DWCi_NdStartup
	cmp r0, #0
	mov r0, #0
	bne _020CCADC
	mov r1, #8
	sub r2, r1, #9
	bl NdCallback
	add sp, sp, #0x2a0
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_020CCADC:
	ldr r3, [r4, #0x18]
	mov r4, #1
	mov r1, r0
	sub r2, r0, #1
	str r4, [r3, #0x40]
	bl NdCallback
	add sp, sp, #0x2a0
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_020CCAFC:
	add r0, sp, #0xc
	bl DWC_GetLastError
	ldr r1, [sp, #0xc]
	mov r0, #0xd
	bl DWCi_SetError
	mov r1, #3
	sub r2, r1, #4
	mov r0, #0
	bl NdCallback
	add sp, sp, #0x2a0
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_020CCB28:
	mov r1, #6
	sub r2, r1, #7
	mov r0, #0
	bl NdCallback
	add sp, sp, #0x2a0
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_020CCB40:
	mov r0, r4
	bl OS_Sleep
	b _020CC9D4
	add sp, sp, #0x2a0
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_020CCB54: .word s_userCallback
_020CCB58: .word ov15_020E56CC
_020CCB5C: .word ov15_020E56E0
_020CCB60: .word NdCallback
_020CCB64: .word DWCi_NdAlloc
_020CCB68: .word DWCi_NdFree
	arm_func_end DWCi_SVLTokenWaitThread

	arm_static_func_start NdCallback
NdCallback: ; 0x020CCB6C
	stmfd sp!, {r4, r5, r6, lr}
	movs r5, r1
	mov r6, r0
	mov r4, r2
	beq _020CCB8C
	mov r0, r5
	mov r1, r4
	bl DWCi_NdSetError
_020CCB8C:
	ldr r0, _020CCBC4 ; =s_dwcnd_mutexState
	bl OS_LockMutex
	ldr r0, _020CCBC8 ; =s_userCallback
	mov r1, #3
	str r1, [r0, #0x14]
	str r6, [r0, #0x10]
	str r5, [r0, #0xc]
	cmp r5, #0
	str r4, [r0, #8]
	movne r1, #4
	strne r1, [r0, #0x14]
	ldr r0, _020CCBC4 ; =s_dwcnd_mutexState
	bl OS_UnlockMutex
	ldmfd sp!, {r4, r5, r6, pc}
_020CCBC4: .word s_dwcnd_mutexState
_020CCBC8: .word s_userCallback
	arm_func_end NdCallback

	arm_func_start DWC_NdInitAsync
DWC_NdInitAsync: ; 0x020CCBCC
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, lr}
	sub sp, sp, #8
	mov r7, r0
	mov r6, r1
	mov r5, r2
	bl DWCi_IsError
	cmp r0, #0
	addne sp, sp, #8
	movne r0, #0
	ldmnefd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
	ldr r4, _020CCD48 ; =s_dwcnd_mutexState
	mov r0, r4
	bl OS_InitMutex
	mov r0, r4
	bl OS_LockMutex
	ldr r8, _020CCD4C ; =s_userCallback
	ldr r0, [r8, #0x14]
	cmp r0, #0
	beq _020CCC3C
	mov r5, #0
	mov r1, r5
	mov r0, #2
	bl DWCi_NdSetError
	mov r0, r4
	bl OS_UnlockMutex
	add sp, sp, #8
	mov r0, r5
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
_020CCC3C:
	mov r1, #2
	mov r0, r4
	str r1, [r8, #0x14]
	bl OS_UnlockMutex
	mov r4, #0
	str r4, [r8, #0x10]
	str r4, [r8, #0xc]
	str r4, [r8, #8]
	ldr r9, _020CCD50 ; =0x00000A78
	str r7, [r8]
	mov r0, r9
	str r4, [r8, #4]
	mov r1, #0x20
	bl DWCi_NdAlloc
	str r0, [r8, #0x18]
	cmp r0, #0
	mov r1, r4
	bne _020CCC98
	mov r0, #1
	bl DWCi_NdSetError
	add sp, sp, #8
	mov r0, r4
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
_020CCC98:
	mov r2, r9
	bl MI_CpuFill8
	ldr r0, [r8, #0x18]
	mov r7, #0x1f
	str r4, [r0, #0x40]
	ldr r0, [r8, #0x18]
	mov r1, r6
	mov r2, r7
	bl strncpy
	ldr r0, [r8, #0x18]
	mov r1, r5
	mov r2, r7
	add r0, r0, #0x20
	bl strncpy
	ldr r1, [r8, #0x18]
	ldr r0, _020CCD54 ; =0x020E56F4
	add r1, r1, #0x44
	bl DWC_SVLGetTokenAsync
	cmp r0, #0
	bne _020CCD00
	ldr r0, [r8, #0x18]
	bl DWCi_NdFree
	add sp, sp, #8
	mov r0, r4
	str r4, [r8, #0x18]
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
_020CCD00:
	ldr r1, [r8, #0x18]
	mov r0, #0x800
	add r3, r1, #0x1b8
	str r0, [sp]
	mov r0, #0x10
	ldr r1, _020CCD58 ; =DWCi_SVLTokenWaitThread
	mov r2, r4
	str r0, [sp, #4]
	add r0, r3, #0x800
	add r3, r3, #0x800
	bl OS_CreateThread
	ldr r0, [r8, #0x18]
	add r0, r0, #0x1b8
	add r0, r0, #0x800
	bl OS_WakeupThreadDirect
	mov r0, #1
	add sp, sp, #8
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
_020CCD48: .word s_dwcnd_mutexState
_020CCD4C: .word s_userCallback
_020CCD50: .word 0x00000A78
_020CCD54: .word ov15_020E56F4
_020CCD58: .word DWCi_SVLTokenWaitThread
	arm_func_end DWC_NdInitAsync

	arm_func_start DWC_NdProcess
DWC_NdProcess: ; 0x020CCD5C
	stmfd sp!, {r3, r4, r5, lr}
	ldr r0, _020CCE1C ; =s_dwcnd_mutexState
	mov r4, #0
	mov r5, r4
	bl OS_LockMutex
	ldr r0, _020CCE20 ; =s_userCallback
	ldr r2, [r0, #0x10]
	cmp r2, #0
	ldreq r1, [r0, #0x14]
	cmpeq r1, #4
	bne _020CCD9C
	ldr r1, [r0, #4]
	cmp r1, #0
	moveq r4, #1
	streq r4, [r0, #4]
	b _020CCDB4
_020CCD9C:
	ldr r0, _020CCE20 ; =s_userCallback
	ldr r1, [r0, #0x14]
	sub r1, r1, #3
	cmp r1, #1
	movls r4, #1
	strls r4, [r0, #0x14]
_020CCDB4:
	cmp r2, #4
	ldreq r0, _020CCE20 ; =s_userCallback
	moveq r1, #0
	streq r1, [r0, #0x14]
	streq r1, [r0, #0x10]
	ldr r0, _020CCE1C ; =s_dwcnd_mutexState
	moveq r5, #1
	bl OS_UnlockMutex
	ldr r2, _020CCE20 ; =s_userCallback
	ldr r3, [r2]
	cmp r3, #0
	ldmeqfd sp!, {r3, r4, r5, pc}
	cmp r5, #0
	beq _020CCE00
	mov r1, #0
	sub r2, r1, #1
	mov r0, #4
	blx r3
	ldmfd sp!, {r3, r4, r5, pc}
_020CCE00:
	cmp r4, #0
	ldmeqfd sp!, {r3, r4, r5, pc}
	ldr r0, [r2, #0x10]
	ldr r1, [r2, #0xc]
	ldr r2, [r2, #8]
	blx r3
	ldmfd sp!, {r3, r4, r5, pc}
_020CCE1C: .word s_dwcnd_mutexState
_020CCE20: .word s_userCallback
	arm_func_end DWC_NdProcess

	arm_func_start DWC_NdCleanupAsync
DWC_NdCleanupAsync: ; 0x020CCE24
	stmfd sp!, {r3, r4, r5, lr}
	ldr r4, _020CCE9C ; =s_userCallback
	ldr r0, [r4, #0x14]
	cmp r0, #0
	moveq r0, #0
	ldmeqfd sp!, {r3, r4, r5, pc}
	ldr r5, _020CCEA0 ; =s_dwcnd_mutexState
	mov r0, r5
	bl OS_LockMutex
	ldr r0, [r4, #0x14]
	cmp r0, #0
	bne _020CCE64
	mov r0, r5
	bl OS_UnlockMutex
	mov r0, #0
	ldmfd sp!, {r3, r4, r5, pc}
_020CCE64:
	mov r1, #2
	mov r0, r5
	str r1, [r4, #0x14]
	bl OS_UnlockMutex
	ldr r0, [r4, #0x18]
	ldr r0, [r0, #0x40]
	cmp r0, #0
	bne _020CCE8C
	bl DWCi_NdCleanupCallback
	b _020CCE94
_020CCE8C:
	ldr r0, _020CCEA4 ; =DWCi_NdCleanupCallback
	bl DWCi_NdCleanupAsync
_020CCE94:
	mov r0, #1
	ldmfd sp!, {r3, r4, r5, pc}
_020CCE9C: .word s_userCallback
_020CCEA0: .word s_dwcnd_mutexState
_020CCEA4: .word DWCi_NdCleanupCallback
	arm_func_end DWC_NdCleanupAsync

	arm_func_start DWC_NdSetAttr
DWC_NdSetAttr: ; 0x020CCEA8
	stmfd sp!, {r4, r5, r6, lr}
	mov r6, r0
	mov r5, r1
	mov r4, r2
	bl DWCi_IsError
	cmp r0, #0
	movne r0, #0
	ldmnefd sp!, {r4, r5, r6, pc}
	mov r0, r6
	mov r1, r5
	mov r2, r4
	bl DWCi_NdSetAttr
	ldmfd sp!, {r4, r5, r6, pc}
	arm_func_end DWC_NdSetAttr

	arm_func_start DWC_NdGetFileListNumAsync
DWC_NdGetFileListNumAsync: ; 0x020CCEDC
	stmfd sp!, {r4, r5, r6, lr}
	mov r6, r0
	bl DWCi_IsError
	cmp r0, #0
	movne r0, #0
	ldmnefd sp!, {r4, r5, r6, pc}
	ldr r5, _020CCF74 ; =s_dwcnd_mutexState
	mov r0, r5
	bl OS_LockMutex
	ldr r4, _020CCF78 ; =s_userCallback
	ldr r0, [r4, #0x14]
	cmp r0, #1
	beq _020CCF30
	mov r4, #0
	mov r1, r4
	mov r0, #2
	bl DWCi_NdSetError
	mov r0, r5
	bl OS_UnlockMutex
	mov r0, r4
	ldmfd sp!, {r4, r5, r6, pc}
_020CCF30:
	mov r1, #2
	mov r0, r5
	str r1, [r4, #0x14]
	bl OS_UnlockMutex
	mov r0, r6
	bl DWCi_NdGetFileListNumAsync
	cmp r0, #0
	movne r0, #1
	ldmnefd sp!, {r4, r5, r6, pc}
	mov r0, r5
	bl OS_LockMutex
	mov r1, #1
	mov r0, r5
	str r1, [r4, #0x14]
	bl OS_UnlockMutex
	mov r0, #0
	ldmfd sp!, {r4, r5, r6, pc}
_020CCF74: .word s_dwcnd_mutexState
_020CCF78: .word s_userCallback
	arm_func_end DWC_NdGetFileListNumAsync

	arm_func_start DWC_NdGetFileListAsync
DWC_NdGetFileListAsync: ; 0x020CCF7C
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, lr}
	mov r8, r0
	mov r7, r1
	mov r6, r2
	bl DWCi_IsError
	cmp r0, #0
	movne r0, #0
	ldmnefd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
	ldr r5, _020CD038 ; =s_dwcnd_mutexState
	mov r0, r5
	bl OS_LockMutex
	ldr r9, _020CD03C ; =s_userCallback
	mov r4, #0
	ldr r0, [r9, #0x14]
	cmp r0, #1
	beq _020CCFD8
	mov r1, r4
	mov r0, #2
	bl DWCi_NdSetError
	mov r0, r5
	bl OS_UnlockMutex
	mov r0, r4
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
_020CCFD8:
	mov r1, #2
	mov r0, r5
	str r1, [r9, #0x14]
	bl OS_UnlockMutex
	mov r0, #0xb0
	mul r2, r6, r0
	mov r0, r8
	mov r1, r4
	bl MI_CpuFill8
	mov r0, r8
	mov r1, r7
	mov r2, r6
	bl DWCi_NdGetFileListAsync
	cmp r0, #0
	movne r0, #1
	ldmnefd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
	mov r0, r5
	bl OS_LockMutex
	mov r1, #1
	mov r0, r5
	str r1, [r9, #0x14]
	bl OS_UnlockMutex
	mov r0, r4
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
_020CD038: .word s_dwcnd_mutexState
_020CD03C: .word s_userCallback
	arm_func_end DWC_NdGetFileListAsync

	arm_func_start DWC_NdGetFileAsync
DWC_NdGetFileAsync: ; 0x020CD040
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, lr}
	mov r7, r0
	mov r6, r1
	mov r5, r2
	bl DWCi_IsError
	cmp r0, #0
	movne r0, #0
	ldmnefd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
	ldr r4, _020CD0F0 ; =s_dwcnd_mutexState
	mov r0, r4
	bl OS_LockMutex
	ldr r8, _020CD0F4 ; =s_userCallback
	ldr r0, [r8, #0x14]
	cmp r0, #1
	beq _020CD09C
	mov r5, #0
	mov r1, r5
	mov r0, #2
	bl DWCi_NdSetError
	mov r0, r4
	bl OS_UnlockMutex
	mov r0, r5
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
_020CD09C:
	mov r1, #2
	mov r0, r4
	str r1, [r8, #0x14]
	bl OS_UnlockMutex
	mov r9, #0
	mov r0, r7
	mov r1, r6
	mov r2, r5
	mov r3, r9
	bl DWCi_NdGetFileAsync
	cmp r0, #0
	movne r0, #1
	ldmnefd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
	mov r0, r4
	bl OS_LockMutex
	mov r1, #1
	mov r0, r4
	str r1, [r8, #0x14]
	bl OS_UnlockMutex
	mov r0, r9
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
_020CD0F0: .word s_dwcnd_mutexState
_020CD0F4: .word s_userCallback
	arm_func_end DWC_NdGetFileAsync

	arm_func_start DWC_NdCancelAsync
DWC_NdCancelAsync: ; 0x020CD0F8
	stmfd sp!, {r4, lr}
	bl DWCi_IsError
	cmp r0, #0
	movne r0, #0
	ldmnefd sp!, {r4, pc}
	ldr r4, _020CD150 ; =s_dwcnd_mutexState
	mov r0, r4
	bl OS_LockMutex
	ldr r0, _020CD154 ; =s_userCallback
	ldr r0, [r0, #0x14]
	cmp r0, #2
	mov r0, r4
	beq _020CD138
	bl OS_UnlockMutex
	mov r0, #0
	ldmfd sp!, {r4, pc}
_020CD138:
	bl OS_UnlockMutex
	bl DWCi_NdCancelAsync
	cmp r0, #0
	movne r0, #1
	moveq r0, #0
	ldmfd sp!, {r4, pc}
_020CD150: .word s_dwcnd_mutexState
_020CD154: .word s_userCallback
	arm_func_end DWC_NdCancelAsync

	arm_func_start DWC_NdGetProgress
DWC_NdGetProgress: ; 0x020CD158
	stmfd sp!, {r4, r5, r6, lr}
	mov r6, r0
	mov r5, r1
	bl DWCi_IsError
	cmp r0, #0
	movne r0, #0
	ldmnefd sp!, {r4, r5, r6, pc}
	ldr r4, _020CD1B4 ; =s_dwcnd_mutexState
	mov r0, r4
	bl OS_LockMutex
	ldr r0, _020CD1B8 ; =s_userCallback
	ldr r0, [r0, #0x14]
	cmp r0, #2
	mov r0, r4
	beq _020CD1A0
	bl OS_UnlockMutex
	mov r0, #0
	ldmfd sp!, {r4, r5, r6, pc}
_020CD1A0:
	bl OS_UnlockMutex
	mov r0, r6
	mov r1, r5
	bl DWCi_NdGetProgress
	ldmfd sp!, {r4, r5, r6, pc}
_020CD1B4: .word s_dwcnd_mutexState
_020CD1B8: .word s_userCallback
	arm_func_end DWC_NdGetProgress

    .data
ov15_020E56CC:
	.asciz "https:///download"
	.balign 4, 0
ov15_020E56E0:
	.asciz "https://%s/download"
	.balign 4, 0
ov15_020E56F4:
	.asciz "9000"

	.bss
	.global s_userCallback
s_userCallback:
	.space 0x04
	.global s_initializeError
s_initializeError:
	.space 0x04
	.global s_servererror
s_servererror:
	.space 0x04
	.global s_error
s_error:
	.space 0x04
	.global s_dwcnd_reason
s_dwcnd_reason:
	.space 0x04
	.global s_dwcnd_state
s_dwcnd_state:
	.space 0x04
	.global dwcndcnt
dwcndcnt:
	.space 0x04
	.global s_dwcnd_mutexState
s_dwcnd_mutexState:
	.space 0x18