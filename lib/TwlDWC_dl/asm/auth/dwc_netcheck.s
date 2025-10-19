
	.include "asm/macros/function.inc"
	.public DWC_Auth_Abort
	.public DWC_Auth_Create
	.public DWC_Auth_Destroy
	.public DWC_Auth_GetCalInfoFromNVRAM
	.public DWC_Auth_GetError
	.public DWC_Auth_GetResult
	.public DWC_Auth_Join
	.public DWC_Auth_SetCalInfoToHttp
	.public DWC_Http_Abort
	.public DWC_Http_Add_Body
	.public DWC_Http_Add_PostBase64Item
	.public DWC_Http_Create
	.public DWC_Http_Destroy
	.public DWC_Http_FinishHeader
	.public DWC_Http_GetBase64DecodedResult
	.public DWC_Http_GetResult
	.public DWC_Http_ParseResult
	.public DWC_Http_StartThread
	.public DWCauthhttpparam
	.public DWCi_BM_GetWiFiInfo
	.public MI_CpuFill8
	.public OS_CreateThread
	.public OS_GetThreadPriority
	.public OS_InitMutex
	.public OS_IsThreadTerminated
	.public OS_JoinThread
	.public OS_LockMutex
	.public OS_Sleep
	.public OS_UnlockMutex
	.public OS_WakeupThreadDirect
	.public OSi_ThreadInfo
	.public atoi
	.public errno
	.public strcmp
	.public strlen
	.public strncpy

	.text
	arm_func_start DWC_Netcheck_Create
DWC_Netcheck_Create: ; 0x020C9304
	stmfd sp!, {r4, r5, r6, r7, r8, lr}
	ldr r7, _020C93C4 ; =DWChttp
	mov r6, r0
	ldr r0, [r7, #4]
	ldr r5, [r6]
	cmp r0, #0
	movne r0, #4
	ldmnefd sp!, {r4, r5, r6, r7, r8, pc}
	ldr r8, _020C93C8 ; =0x000011F4
	mov r4, #0
	mov r0, r4
	mov r1, r8
	blx r5
	str r0, [r7, #4]
	cmp r0, #0
	moveq r0, #4
	ldmeqfd sp!, {r4, r5, r6, r7, r8, pc}
	mov r1, r4
	mov r2, r8
	bl MI_CpuFill8
	ldr r0, [r7, #4]
	ldr r1, _020C93CC ; =0xFFFE7961
	add r0, r0, #0x1000
	str r1, [r0, #4]
	ldr r3, [r7, #4]
	ldmia r6, {r0, r1, r2}
	add r3, r3, #0x108
	add r3, r3, #0x1000
	stmia r3, {r0, r1, r2}
	ldr r0, [r7]
	cmp r0, #0
	movne r0, #4
	ldmnefd sp!, {r4, r5, r6, r7, r8, pc}
	ldr r1, _020C93D0 ; =0x00001C50
	mov r0, r4
	blx r5
	str r0, [r7]
	cmp r0, #0
	moveq r0, #4
	ldmeqfd sp!, {r4, r5, r6, r7, r8, pc}
	str r4, [r7, #0x14]
	ldr r0, [r7, #4]
	add r0, r0, #0x1dc
	add r0, r0, #0x1000
	bl OS_InitMutex
	bl DWCi_Netcheck_StartThread
	mov r0, r4
	ldmfd sp!, {r4, r5, r6, r7, r8, pc}
_020C93C4: .word DWChttp
_020C93C8: .word 0x000011F4
_020C93CC: .word 0xFFFE7961
_020C93D0: .word 0x00001C50
	arm_func_end DWC_Netcheck_Create

	arm_func_start DWC_Netcheck_Destroy
DWC_Netcheck_Destroy: ; 0x020C93D4
	stmfd sp!, {r4, r5, r6, lr}
	ldr r5, _020C94A0 ; =DWChttp
	ldmia r5, {r0, r1}
	add r1, r1, #0x1000
	cmp r0, #0
	ldr r4, [r1, #0x10c]
	beq _020C940C
	bl DWC_Http_Destroy
	mov r6, #0
	ldr r1, [r5]
	mov r0, r6
	mov r2, r6
	blx r4
	str r6, [r5]
_020C940C:
	bl DWC_Auth_Destroy
	ldr r5, _020C94A0 ; =DWChttp
	ldr r0, [r5, #4]
	cmp r0, #0
	ldmeqfd sp!, {r4, r5, r6, pc}
	add r0, r0, #0x1000
	ldr r1, [r0, #0x114]
	cmp r1, #0
	beq _020C944C
	mov r6, #0
	mov r0, r6
	mov r2, r6
	blx r4
	ldr r0, [r5, #4]
	add r0, r0, #0x1000
	str r6, [r0, #0x114]
_020C944C:
	ldr r5, _020C94A0 ; =DWChttp
	ldr r0, [r5, #4]
	add r0, r0, #0x1000
	ldr r1, [r0, #0x118]
	cmp r1, #0
	beq _020C9480
	mov r6, #0
	mov r0, r6
	mov r2, r6
	blx r4
	ldr r0, [r5, #4]
	add r0, r0, #0x1000
	str r6, [r0, #0x118]
_020C9480:
	ldr r5, _020C94A0 ; =DWChttp
	mov r6, #0
	ldr r1, [r5, #4]
	mov r0, r6
	mov r2, r6
	blx r4
	str r6, [r5, #4]
	ldmfd sp!, {r4, r5, r6, pc}
_020C94A0: .word DWChttp
	arm_func_end DWC_Netcheck_Destroy

	arm_func_start DWC_Netcheck_Abort
DWC_Netcheck_Abort: ; 0x020C94A4
	stmfd sp!, {r4, lr}
	ldr r0, _020C9520 ; =DWChttp
	ldr r1, [r0, #4]
	cmp r1, #0
	ldmeqfd sp!, {r4, pc}
	ldr r0, [r0]
	cmp r0, #0
	beq _020C94C8
	bl DWC_Http_Abort
_020C94C8:
	bl DWC_Auth_Abort
	ldr r4, _020C9520 ; =DWChttp
	ldr r1, [r4, #4]
	add r0, r1, #0x1000
	ldr r0, [r0, #0x188]
	cmp r0, #0
	beq _020C9508
	add r0, r1, #0x11c
	add r0, r0, #0x1000
	bl OS_IsThreadTerminated
	cmp r0, #0
	bne _020C9508
	ldr r0, [r4, #4]
	add r0, r0, #0x11c
	add r0, r0, #0x1000
	bl OS_JoinThread
_020C9508:
	ldr r0, _020C9520 ; =DWChttp
	mvn r1, #6
	ldr r0, [r0, #4]
	add r0, r0, #0x1000
	str r1, [r0, #4]
	ldmfd sp!, {r4, pc}
_020C9520: .word DWChttp
	arm_func_end DWC_Netcheck_Abort

	arm_func_start DWC_Netcheck_GetError
DWC_Netcheck_GetError: ; 0x020C9524
	stmfd sp!, {r4, lr}
	ldr r4, _020C955C ; =DWChttp
	ldr r0, [r4, #4]
	add r0, r0, #0x1dc
	add r0, r0, #0x1000
	bl OS_LockMutex
	ldr r1, [r4, #4]
	add r0, r1, #0x1dc
	add r1, r1, #0x1000
	add r0, r0, #0x1000
	ldr r4, [r1]
	bl OS_UnlockMutex
	mov r0, r4
	ldmfd sp!, {r4, pc}
_020C955C: .word DWChttp
	arm_func_end DWC_Netcheck_GetError

	arm_func_start DWC_Netcheck_GetReturnCode
DWC_Netcheck_GetReturnCode: ; 0x020C9560
	ldr r0, _020C9574 ; =DWChttp
	ldr r0, [r0, #4]
	add r0, r0, #0x1000
	ldr r0, [r0, #4]
	bx lr
_020C9574: .word DWChttp
	arm_func_end DWC_Netcheck_GetReturnCode

	arm_static_func_start DWCi_Netcheck_StartThread
DWCi_Netcheck_StartThread: ; 0x020C9578
	stmfd sp!, {r4, lr}
	sub sp, sp, #8
	ldr r0, _020C95F4 ; =DWChttp
	ldr r1, [r0, #4]
	add r0, r1, #0x1000
	ldr r0, [r0, #0x188]
	cmp r0, #0
	beq _020C95B0
	add r0, r1, #0x11c
	add r0, r0, #0x1000
	bl OS_IsThreadTerminated
	cmp r0, #0
	addeq sp, sp, #8
	ldmeqfd sp!, {r4, pc}
_020C95B0:
	ldr r4, _020C95F4 ; =DWChttp
	mov r0, #0x1000
	ldr r2, [r4, #4]
	mov r3, #0x10
	str r0, [sp]
	add r0, r2, #0x11c
	ldr r1, _020C95F8 ; =DWCi_Netcheck_Thread
	str r3, [sp, #4]
	add r0, r0, #0x1000
	add r3, r2, #0x1000
	bl OS_CreateThread
	ldr r0, [r4, #4]
	add r0, r0, #0x11c
	add r0, r0, #0x1000
	bl OS_WakeupThreadDirect
	add sp, sp, #8
	ldmfd sp!, {r4, pc}
_020C95F4: .word DWChttp
_020C95F8: .word DWCi_Netcheck_Thread
	arm_func_end DWCi_Netcheck_StartThread

	arm_static_func_start DWCi_Netcheck_Thread
DWCi_Netcheck_Thread: ; 0x020C95FC
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, lr}
	sub sp, sp, #0x290
	ldr r4, _020CA20C ; =DWChttp
	mov r7, #0
	ldr r0, [r4, #4]
	mov r8, r7
	add r0, r0, #0x1000
	ldr r5, [r0, #0x108]
	ldr r6, [r0, #0x10c]
	mvn r0, #2
	str r0, [sp, #0x14]
	sub r0, r0, #1
	str r0, [sp, #0x18]
	ldr r0, [sp, #0x14]
	mov r9, r7
	sub r0, r0, #2
	str r0, [sp, #0x1c]
	ldr r0, _020CA210 ; =0x00009C40
	mov r0, r0, lsr #1
	str r0, [sp, #0xc]
	ldr r0, [sp, #0x14]
	add r0, r0, #1
	str r0, [sp, #0x10]
_020C9658:
	ldr r0, _020CA214 ; =_ZZ23DWC_SimpleNetcheckAsynciE6bFirst_0
	ldr r1, _020CA218 ; =DWCnetcheckhttpparam
	ldr r0, [r0, #4]
	str r0, [r4, #0x30]
	mov r0, #1
	str r0, [r4, #0x34]
	mov r0, #0x1000
	str r0, [r4, #0x38]
	str r5, [r4, #0x3c]
	ldr r0, [sp, #0xc]
	str r6, [r4, #0x40]
	str r0, [r4, #0x48]
	ldr r0, [r4, #4]
	add r2, r0, #0x1000
	ldr r0, [sp, #0x10]
	str r0, [r2, #4]
	ldr r0, [r4]
	bl DWC_Http_Create
	cmp r0, #0
	beq _020C96BC
_020C96A8:
	ldr r0, _020CA20C ; =DWChttp
	ldr r0, [r0]
	bl DWC_Http_Destroy
	mov r0, #1
	b _020C9A54
_020C96BC:
	ldr r0, [r4]
	bl DWC_Http_FinishHeader
	cmp r0, #0
	beq _020C96D0
	b _020C96A8
_020C96D0:
	ldr r0, _020CA21C ; =OSi_ThreadInfo
	ldr r0, [r0, #4]
	bl OS_GetThreadPriority
	sub r1, r0, #1
	ldr r0, [r4]
	bl DWC_Http_StartThread
	ldr r1, [r4]
	add r0, r1, #0x1000
	ldr r0, [r0, #0xbe0]
	cmp r0, #0
	beq _020C9720
	add r0, r1, #0x374
	add r0, r0, #0x1800
	bl OS_IsThreadTerminated
	cmp r0, #0
	bne _020C9720
	ldr r0, [r4]
	add r0, r0, #0x374
	add r0, r0, #0x1800
	bl OS_JoinThread
_020C9720:
	ldr r0, [r4]
	add r1, r0, #0x1000
	ldr r1, [r1, #0x20]
	cmp r1, #2
	beq _020C9740
	cmp r1, #8
	beq _020C9764
	b _020C9754
_020C9740:
	ldr r0, _020CA20C ; =DWChttp
	mvn r1, #0
	ldr r0, [r0, #4]
	add r0, r0, #0x1000
	str r1, [r0, #4]
_020C9754:
	ldr r0, _020CA20C ; =DWChttp
	ldr r0, [r0]
	bl DWC_Http_Destroy
	b _020C99E0
_020C9764:
	mov r1, #0
	bl DWC_Http_ParseResult
	cmp r0, #1
	beq _020C9784
_020C9774:
	ldr r0, _020CA20C ; =DWChttp
	ldr r0, [r0]
_020C977C:
	bl DWC_Http_Destroy
	b _020C97A8
_020C9784:
	ldr r0, [r4]
	ldr r1, _020CA220 ; =0x020E47C4
	bl DWC_Http_GetResult
	bl atoi
	mov r10, r0
	ldr r0, _020CA224 ; =errno
	ldr r0, [r0]
	cmp r0, #0x22
	bne _020C97B0
_020C97A8:
	mov r0, #2
	b _020C9A54
_020C97B0:
	cmp r10, #0xc8
	beq _020C97CC
	ldr r0, _020CA228 ; =0x0000012E
	cmp r10, r0
	beq _020C97E0
	ldr r0, _020CA20C ; =DWChttp
	b _020C9A7C
_020C97CC:
	ldr r0, [r4]
	add r0, r0, #0x1000
	ldr r0, [r0, #0x12c]
	str r0, [r4, #0xc]
	b _020C9A8C
_020C97E0:
	mov r0, #1
	str r0, [r4, #0x14]
	ldr r0, [r4, #4]
	add r0, r0, #0x1000
	ldr r1, [r0, #0x118]
	cmp r1, #0
	beq _020C99F4
	ldr r10, _020CA20C ; =DWChttp
	mvn r1, #5
	str r1, [r0, #4]
	ldr r0, [r10]
	bl DWC_Http_Destroy
	ldr r0, _020CA22C ; =DWCauthhttpparam
	mov r1, #0
	ldr r0, [r0]
	mov r3, #0x200
	str r0, [r10, #0x30]
	str r1, [r10, #0x34]
	str r3, [r10, #0x38]
	str r5, [r10, #0x3c]
	ldr r2, _020CA230 ; =0x00004E20
	str r6, [r10, #0x40]
	ldr r1, _020CA234 ; =0x020E47D0
	str r2, [r10, #0x48]
	bl strcmp
	cmp r0, #0
	movne r0, #1
	strne r0, [r10, #0x44]
	ldr r0, [r10]
	ldr r1, _020CA218 ; =DWCnetcheckhttpparam
	mov r5, #1
	bl DWC_Http_Create
	cmp r0, #0
	beq _020C9878
_020C9868:
	ldr r0, [r10]
	bl DWC_Http_Destroy
	mov r0, r5
_020C9874:
	b _020C9A54
_020C9878:
	add r4, sp, #0x38
	mov r0, r4
	bl DWC_Auth_GetCalInfoFromNVRAM
	cmp r0, #0
	beq _020C98A4
	ldr r0, [r10]
	mov r1, r4
	mov r2, r5
	bl DWC_Auth_SetCalInfoToHttp
	cmp r0, #0
	bne _020C98B4
_020C98A4:
	ldr r0, [r10]
	bl DWC_Http_Destroy
	mov r0, #8
	b _020C9874
_020C98B4:
	ldr r0, [r10]
	ldr r1, _020CA238 ; =0x020E47F0
	ldr r2, _020CA23C ; =0x020E47F8
	mov r3, #7
	bl DWC_Http_Add_PostBase64Item
	cmp r0, #0
	bne _020C9900
	ldr r0, [r10, #4]
	add r0, r0, #0x1000
	ldr r4, [r0, #0x118]
	mov r0, r4
	bl strlen
	mov r3, r0
	ldr r0, [r10]
	ldr r1, _020CA240 ; =0x020E4800
	mov r2, r4
	bl DWC_Http_Add_PostBase64Item
	cmp r0, #0
	beq _020C9914
_020C9900:
	ldr r0, _020CA20C ; =DWChttp
	ldr r0, [r0]
	bl DWC_Http_Destroy
	mov r0, #8
	b _020C9A54
_020C9914:
	ldr r0, [r10, #4]
	mov r4, #0
	add r0, r0, #0x1000
	ldr r1, [r0, #0x118]
	mov r0, r4
	mov r2, r4
	blx r6
	ldr r0, [r10, #4]
	add r0, r0, #0x1000
	str r4, [r0, #0x118]
	ldr r0, [r10]
	bl DWC_Http_FinishHeader
	cmp r0, #0
	beq _020C9950
	b _020C9868
_020C9950:
	ldr r0, _020CA21C ; =OSi_ThreadInfo
	mvn r5, #0
	ldr r0, [r0, #4]
	ldr r4, _020CA20C ; =DWChttp
	bl OS_GetThreadPriority
	mov r1, r0
	ldr r0, [r10]
	sub r1, r1, #1
	bl DWC_Http_StartThread
	ldr r1, [r10]
	add r0, r1, #0x1000
	ldr r0, [r0, #0xbe0]
	cmp r0, #0
	beq _020C99AC
	add r0, r1, #0x374
	add r0, r0, #0x1800
	bl OS_IsThreadTerminated
	cmp r0, #0
	bne _020C99AC
	ldr r0, [r10]
	add r0, r0, #0x374
	add r0, r0, #0x1800
	bl OS_JoinThread
_020C99AC:
	ldr r0, [r4]
	add r1, r0, #0x1000
	ldr r1, [r1, #0x20]
	cmp r1, #2
	beq _020C99CC
	cmp r1, #8
	beq _020C99E8
	b _020C99D8
_020C99CC:
	ldr r0, [r4, #4]
	add r0, r0, #0x1000
	str r5, [r0, #4]
_020C99D8:
	ldr r0, [r4]
	bl DWC_Http_Destroy
_020C99E0:
	mov r0, #3
	b _020C9A54
_020C99E8:
	bl DWC_Http_Destroy
	mov r0, #7
	b _020C9874
_020C99F4:
	ldr r0, [r4]
	add r1, r0, #0x1000
	ldr r11, [r1, #0xa44]
	cmp r11, #0
	bne _020C9A0C
	b _020C977C
_020C9A0C:
	mov r0, r11
	bl strlen
	add r1, r0, #1
	mov r0, #0
	blx r5
	ldr r1, [r4, #4]
	add r1, r1, #0x1000
	str r0, [r1, #0x114]
	ldr r0, [r4, #4]
	add r0, r0, #0x1000
	ldr r0, [r0, #0x114]
	str r0, [sp, #4]
	cmp r0, #0
	bne _020C9A5C
_020C9A44:
	ldr r0, _020CA20C ; =DWChttp
	ldr r0, [r0]
	bl DWC_Http_Destroy
	mov r0, #4
_020C9A54:
	bl DWCi_Netcheck_SetError
	b _020CA1B8
_020C9A5C:
	mov r0, r11
	bl strlen
	mov r2, r0
	ldr r0, [sp, #4]
	mov r1, r11
	add r2, r2, #1
	bl strncpy
	b _020C9A8C
_020C9A7C:
	ldr r0, [r0]
	bl DWC_Http_Destroy
	mov r0, #0xa
	b _020C9874
_020C9A8C:
	ldr r0, [r4]
	bl DWC_Http_Destroy
	add r0, sp, #0x24
	bl DWCi_BM_GetWiFiInfo
	ldr r1, [sp, #0x28]
	ldr r0, [sp, #0x24]
	cmp r1, #0
	cmpeq r0, #0
	bne _020C9BA4
	ldr r1, [r4, #4]
	ldr r0, _020CA244 ; =DWCnetcheckauthparam
	add r2, r1, #0x1000
	ldr r1, [sp, #0x14]
	str r1, [r2, #4]
	mov r2, #0
	mov r1, r0
	strh r2, [r1]
	strb r2, [r1, #0x34]
	ldr r1, [r4, #4]
	add r2, r1, #0x1000
	ldr r3, [r2, #0x108]
	mov r1, r0
	str r3, [r1, #0x40]
	ldr r2, [r2, #0x10c]
	str r2, [r1, #0x44]
	ldr r1, [r4]
	bl DWC_Auth_Create
	cmp r0, #0
	beq _020C9B08
	mov r0, #5
	b _020C9874
_020C9B08:
	bl DWC_Auth_Join
	bl DWC_Auth_GetError
	cmp r0, #0x15
	beq _020C9BA0
	ldr r4, _020CA20C ; =DWChttp
	mvn r10, #0
	mov r5, #0
	bl DWC_Auth_GetError
	cmp r0, #9
	ldreq r0, [r4, #4]
	addeq r0, r0, #0x1000
	streq r10, [r0, #4]
	beq _020C9B94
	add r0, sp, #0xcc
	bl DWC_Auth_GetResult
	ldr r0, [r4, #0x10]
	cmp r0, #1
	bne _020C9B84
	ldr r1, [sp, #0xcc]
	ldr r0, _020CA248 ; =0xFFFFA4FA
	cmp r1, r0
	beq _020C9B6C
	bl DWC_Auth_GetError
	cmp r0, #0xb
	bne _020C9B84
_020C9B6C:
	ldr r0, [r4, #4]
	add r0, r0, #0x1000
	str r5, [r0, #4]
	bl DWC_Auth_Destroy
	mov r0, #0xb
	b _020C9874
_020C9B84:
	ldr r0, [r4, #4]
	ldr r1, [sp, #0xcc]
	add r0, r0, #0x1000
	str r1, [r0, #4]
_020C9B94:
	bl DWC_Auth_Destroy
_020C9B98:
	mov r0, #6
	b _020C9A54
_020C9BA0:
	bl DWC_Auth_Destroy
_020C9BA4:
	cmp r10, #0xc8
	bne _020C9BC8
	ldr r0, _020CA20C ; =DWChttp
	mov r2, #0
	ldr r1, [r0, #4]
	mov r0, #0xb
	add r1, r1, #0x1000
	str r2, [r1, #4]
	b _020C9874
_020C9BC8:
	ldr r0, [r4, #4]
	ldr r1, _020CA234 ; =0x020E47D0
	add r2, r0, #0x1000
	ldr r0, [sp, #0x18]
	str r0, [r2, #4]
	ldr r0, _020CA22C ; =DWCauthhttpparam
	mov r2, #0
	ldr r0, [r0]
	str r0, [r4, #0x30]
	str r2, [r4, #0x34]
	mov r2, #0x1000
	str r2, [r4, #0x38]
	str r5, [r4, #0x3c]
	ldr r2, _020CA210 ; =0x00009C40
	str r6, [r4, #0x40]
	str r2, [r4, #0x48]
	bl strcmp
	cmp r0, #0
	movne r0, #1
	strne r0, [r4, #0x44]
	ldr r0, [r4]
	ldr r1, _020CA218 ; =DWCnetcheckhttpparam
	bl DWC_Http_Create
	cmp r0, #0
	beq _020C9C30
	b _020C96A8
_020C9C30:
	add r0, sp, #0x38
	bl DWC_Auth_GetCalInfoFromNVRAM
	cmp r0, #0
	beq _020C9C58
	ldr r0, [r4]
	add r1, sp, #0x38
	mov r2, #1
	bl DWC_Auth_SetCalInfoToHttp
	cmp r0, #0
	bne _020C9C5C
_020C9C58:
	b _020C9900
_020C9C5C:
	ldr r0, [r4]
	ldr r1, _020CA238 ; =0x020E47F0
	ldr r2, _020CA24C ; =0x020E4810
	mov r3, #5
	bl DWC_Http_Add_PostBase64Item
	cmp r0, #0
	bne _020C9CA8
	ldr r0, [r4, #4]
	add r0, r0, #0x1000
	ldr r10, [r0, #0x114]
	mov r0, r10
	bl strlen
	mov r3, r0
	ldr r0, [r4]
	ldr r1, _020CA250 ; =0x020E4818
	mov r2, r10
	bl DWC_Http_Add_PostBase64Item
	cmp r0, #0
	beq _020C9CAC
_020C9CA8:
	b _020C9900
_020C9CAC:
	ldr r1, [r4, #4]
	mov r0, #0
	add r1, r1, #0x1000
	ldr r1, [r1, #0x114]
	mov r2, r0
	blx r6
	ldr r0, [r4, #4]
	add r1, r0, #0x1000
	mov r0, #0
	str r0, [r1, #0x114]
	ldr r0, [r4]
	bl DWC_Http_FinishHeader
	cmp r0, #0
	beq _020C9CE8
	b _020C96A8
_020C9CE8:
	ldr r0, _020CA21C ; =OSi_ThreadInfo
	ldr r0, [r0, #4]
	bl OS_GetThreadPriority
	sub r1, r0, #1
	ldr r0, [r4]
	bl DWC_Http_StartThread
	ldr r1, [r4]
	add r0, r1, #0x1000
	ldr r0, [r0, #0xbe0]
	cmp r0, #0
	beq _020C9D38
	add r0, r1, #0x374
	add r0, r0, #0x1800
	bl OS_IsThreadTerminated
	cmp r0, #0
	bne _020C9D38
	ldr r0, [r4]
	add r0, r0, #0x374
	add r0, r0, #0x1800
	bl OS_JoinThread
_020C9D38:
	ldr r0, [r4]
	add r1, r0, #0x1000
	ldr r1, [r1, #0x20]
	cmp r1, #2
	beq _020C9D90
	cmp r1, #3
	beq _020C9D60
	cmp r1, #8
	beq _020C9DA8
	b _020C9DA4
_020C9D60:
	mov r4, #0
	bl DWC_Http_Destroy
	ldr r0, _020CA20C ; =DWChttp
	ldr r1, [r0, #0x10]
	cmp r1, #1
	bne _020C9D8C
	ldr r0, [r0, #4]
	add r1, r0, #0x1000
	mov r0, #0xb
	str r4, [r1, #4]
	b _020C9874
_020C9D8C:
	b _020C99E0
_020C9D90:
	ldr r0, _020CA20C ; =DWChttp
	mvn r1, #0
	ldr r0, [r0, #4]
	add r0, r0, #0x1000
	str r1, [r0, #4]
_020C9DA4:
	b _020C9754
_020C9DA8:
	mov r1, #0
	bl DWC_Http_ParseResult
	cmp r0, #1
	beq _020C9DBC
	b _020C9774
_020C9DBC:
	ldr r0, [r4]
	ldr r1, _020CA220 ; =0x020E47C4
	bl DWC_Http_GetResult
	bl atoi
	mov r10, r0
	ldr r0, _020CA224 ; =errno
	ldr r0, [r0]
	cmp r0, #0x22
	bne _020C9DE4
	b _020C9774
_020C9DE4:
	cmp r10, #0xc8
	beq _020C9E28
	ldr r4, _020CA20C ; =DWChttp
	ldr r0, [r4]
	bl DWC_Http_Destroy
	ldr r0, [r4, #0x10]
	cmp r0, #1
	ldreq r0, _020CA228 ; =0x0000012E
	cmpeq r10, r0
	bne _020C9E24
	ldr r1, [r4, #4]
	mov r0, #0xb
_020C9E14:
	add r2, r1, #0x1000
	mov r1, #0
	str r1, [r2, #4]
	b _020C9A54
_020C9E24:
	b _020C97A8
_020C9E28:
	ldr r0, [r4]
	ldr r1, _020CA254 ; =0x020E4820
	add r2, sp, #0x20
	mov r3, #4
	bl DWC_Http_GetBase64DecodedResult
	cmp r0, #0
	bgt _020C9E58
_020C9E44:
	ldr r0, _020CA20C ; =DWChttp
	ldr r0, [r0]
	bl DWC_Http_Destroy
	mov r0, #9
	b _020C9A54
_020C9E58:
	add r0, sp, #0x20
	bl atoi
	ldr r1, _020CA224 ; =errno
	ldr r1, [r1]
	cmp r1, #0x22
	bne _020C9E74
	b _020C9E44
_020C9E74:
	ldr r1, [r4, #0x10]
	cmp r1, #1
	cmpeq r0, #0x72
	bne _020C9E94
	ldr r1, _020CA20C ; =DWChttp
	mov r0, #0xb
	ldr r1, [r1, #4]
	b _020C9E14
_020C9E94:
	cmp r0, #0x64
	blt _020C9EAC
	ldr r0, _020CA20C ; =DWChttp
	ldr r0, [r0]
	bl DWC_Http_Destroy
	b _020C9B98
_020C9EAC:
	mov r2, #0
	ldr r0, [r4]
	ldr r1, _020CA258 ; =0x020E482C
	mov r3, r2
	bl DWC_Http_GetBase64DecodedResult
	str r0, [sp, #8]
	cmp r0, #0
	bgt _020C9ED0
	b _020C9E44
_020C9ED0:
	mov r2, #0
	ldr r0, [r4]
	ldr r1, _020CA25C ; =0x020E4830
	mov r3, r2
	bl DWC_Http_GetBase64DecodedResult
	mov r11, r0
	cmp r11, #0
	bgt _020C9EF4
	b _020C9E44
_020C9EF4:
	mov r2, #0
	ldr r0, [r4]
	ldr r1, _020CA260 ; =0x020E4838
	mov r3, r2
	bl DWC_Http_GetBase64DecodedResult
	ldr r1, [sp, #8]
	mov r10, r0
	mov r0, #0
	add r1, r1, #1
	blx r5
	movs r7, r0
	bne _020C9F28
	b _020C9A44
_020C9F28:
	mov r0, #0
	add r1, r11, #1
	blx r5
	movs r8, r0
	bne _020C9F40
	b _020C9A44
_020C9F40:
	cmp r10, #0
	ble _020C9F60
	mov r0, #0
	add r1, r10, #1
	blx r5
	movs r9, r0
	bne _020C9F60
	b _020C9A44
_020C9F60:
	ldr r0, [sp, #8]
	ldr r1, _020CA258 ; =0x020E482C
	add r3, r0, #1
	ldr r0, [r4]
	mov r2, r7
	bl DWC_Http_GetBase64DecodedResult
	cmp r0, #0
	bge _020C9F84
	b _020C9E44
_020C9F84:
	mov r1, #0
	strb r1, [r7, r0]
	ldr r0, [r4]
	ldr r1, _020CA25C ; =0x020E4830
	add r3, r11, #1
	mov r2, r8
	bl DWC_Http_GetBase64DecodedResult
	cmp r0, #0
	bge _020C9FAC
	b _020C9E44
_020C9FAC:
	mov r1, #0
	strb r1, [r8, r0]
	cmp r10, #0
	mov r11, r1
	ble _020CA018
	ldr r0, [r4]
	ldr r1, _020CA260 ; =0x020E4838
	add r3, r10, #1
	mov r2, r9
	bl DWC_Http_GetBase64DecodedResult
	cmp r0, #0
	bge _020C9FE0
	b _020C9E44
_020C9FE0:
	mov r1, r11
	strb r1, [r9, r0]
	mov r0, r9
	bl atoi
	ldr r1, _020CA224 ; =errno
	ldr r1, [r1]
	cmp r1, #0x22
	bne _020CA004
	b _020C9E44
_020CA004:
	mov r1, #0x3e8
	mul r11, r0, r1
	ldr r0, _020CA264 ; =0x0002BF20
	cmp r11, r0
	movgt r11, r0
_020CA018:
	ldr r0, [r4]
	bl DWC_Http_Destroy
	ldr r0, [r4, #4]
	ldr r1, _020CA218 ; =DWCnetcheckhttpparam
	add r2, r0, #0x1000
	ldr r0, [sp, #0x1c]
	str r0, [r2, #4]
	str r7, [r4, #0x30]
	mov r0, #0
	str r0, [r4, #0x34]
	mov r0, #0x1000
	str r0, [r4, #0x38]
	str r5, [r4, #0x3c]
	ldr r0, _020CA268 ; =0x0001D4C0
	str r6, [r4, #0x40]
	str r0, [r4, #0x48]
	ldr r0, [r4]
	bl DWC_Http_Create
	cmp r0, #0
	beq _020CA06C
	b _020C96A8
_020CA06C:
	ldr r0, [r4]
	mov r1, r8
	bl DWC_Http_Add_Body
	cmp r0, #0
	beq _020CA084
	b _020C9900
_020CA084:
	ldr r0, [r4]
	bl DWC_Http_FinishHeader
	cmp r0, #0
	beq _020CA098
	b _020C96A8
_020CA098:
	ldr r0, _020CA21C ; =OSi_ThreadInfo
	ldr r0, [r0, #4]
	bl OS_GetThreadPriority
	sub r1, r0, #1
	ldr r0, [r4]
	bl DWC_Http_StartThread
	ldr r1, [r4]
	add r0, r1, #0x1000
	ldr r0, [r0, #0xbe0]
	cmp r0, #0
	beq _020CA0E8
	add r0, r1, #0x374
	add r0, r0, #0x1800
	bl OS_IsThreadTerminated
	cmp r0, #0
	bne _020CA0E8
	ldr r0, [r4]
	add r0, r0, #0x374
	add r0, r0, #0x1800
	bl OS_JoinThread
_020CA0E8:
	ldr r0, [r4]
	add r1, r0, #0x1000
	ldr r1, [r1, #0x20]
	cmp r1, #2
	beq _020CA108
	cmp r1, #8
	beq _020CA120
	b _020CA11C
_020CA108:
	ldr r0, _020CA20C ; =DWChttp
	mvn r1, #0
	ldr r0, [r0, #4]
	add r0, r0, #0x1000
	str r1, [r0, #4]
_020CA11C:
	b _020C9754
_020CA120:
	mov r1, #1
	bl DWC_Http_ParseResult
	cmp r0, #1
	beq _020CA134
	b _020C9774
_020CA134:
	ldr r0, [r4]
	add r1, r0, #0x1000
	ldr r10, [r1, #0xa44]
	cmp r10, #0
	bne _020CA14C
	b _020C977C
_020CA14C:
	mov r0, r10
	bl strlen
	add r1, r0, #1
	mov r0, #0
	blx r5
	ldr r1, [r4, #4]
	add r1, r1, #0x1000
	str r0, [r1, #0x118]
	ldr r0, [r4, #4]
	add r0, r0, #0x1000
	ldr r0, [r0, #0x118]
	str r0, [sp]
	cmp r0, #0
	bne _020CA188
	b _020C9A44
_020CA188:
	mov r0, r10
	bl strlen
	mov r2, r0
	ldr r0, [sp]
	mov r1, r10
	add r2, r2, #1
	bl strncpy
	ldr r0, [r4]
	bl DWC_Http_Destroy
	mov r0, r11
	bl OS_Sleep
	b _020C9658
_020CA1B8:
	cmp r7, #0
	beq _020CA1D0
	mov r0, #0
	mov r1, r7
	mov r2, r0
	blx r6
_020CA1D0:
	cmp r8, #0
	beq _020CA1E8
	mov r0, #0
	mov r1, r8
	mov r2, r0
	blx r6
_020CA1E8:
	cmp r9, #0
	addeq sp, sp, #0x290
	ldmeqfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
	mov r0, #0
	mov r1, r9
	mov r2, r0
	blx r6
	add sp, sp, #0x290
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_020CA20C: .word DWChttp
_020CA210: .word 0x00009C40
_020CA214: .word _ZZ23DWC_SimpleNetcheckAsynciE6bFirst_0
_020CA218: .word DWCnetcheckhttpparam
_020CA21C: .word OSi_ThreadInfo
_020CA220: .word ov15_020E47C4
_020CA224: .word errno
_020CA228: .word 0x0000012E
_020CA22C: .word DWCauthhttpparam
_020CA230: .word 0x00004E20
_020CA234: .word ov15_020E47D0
_020CA238: .word ov15_020E47F0
_020CA23C: .word ov15_020E47F8
_020CA240: .word ov15_020E4800
_020CA244: .word DWCnetcheckauthparam
_020CA248: .word 0xFFFFA4FA
_020CA24C: .word ov15_020E4810
_020CA250: .word ov15_020E4818
_020CA254: .word ov15_020E4820
_020CA258: .word ov15_020E482C
_020CA25C: .word ov15_020E4830
_020CA260: .word ov15_020E4838
_020CA264: .word 0x0002BF20
_020CA268: .word 0x0001D4C0
	arm_func_end DWCi_Netcheck_Thread

	arm_static_func_start DWCi_Netcheck_SetError
DWCi_Netcheck_SetError: ; 0x020CA26C
	stmfd sp!, {r3, r4, r5, lr}
	ldr r4, _020CA2A8 ; =DWChttp
	mov r5, r0
	ldr r0, [r4, #4]
	add r0, r0, #0x1dc
	add r0, r0, #0x1000
	bl OS_LockMutex
	ldr r0, [r4, #4]
	add r0, r0, #0x1000
	str r5, [r0]
	ldr r0, [r4, #4]
	add r0, r0, #0x1dc
	add r0, r0, #0x1000
	bl OS_UnlockMutex
	ldmfd sp!, {r3, r4, r5, pc}
_020CA2A8: .word DWChttp
	arm_func_end DWCi_Netcheck_SetError

	.data
_ZZ23DWC_SimpleNetcheckAsynciE6bFirst_0:
	.word 1
DWCnetcheckblurl:
	.word ov15_020E47A0
ov15_020E47A0:
	.asciz "http://conntest.nintendowifi.net/"
	.balign 4, 0
ov15_020E47C4:
	.asciz "httpresult"
	.balign 4, 0
ov15_020E47D0:
	.asciz "https://nas.nintendowifi.net/ac"
	.balign 4, 0
ov15_020E47F0:
	.asciz "action"
	.balign 4, 0
ov15_020E47F8:
	.asciz "message"
	.balign 4, 0
ov15_020E4800:
	.asciz "HotSpotResponse"
	.balign 4, 0
ov15_020E4810:
	.asciz "parse"
	.balign 4, 0
ov15_020E4818:
	.asciz "HTML"
	.balign 4, 0
ov15_020E4820:
	.asciz "returncd"
	.balign 4, 0
ov15_020E482C:
	.asciz "url"
	.balign 4, 0
ov15_020E4830:
	.asciz "data"
	.balign 4, 0
ov15_020E4838:
	.asciz "wait"

	.bss
	.global DWChttp
DWChttp:
	.space 0x04
	.global DWCnetcheck
DWCnetcheck:
	.space 0x04
	.global DWCsimplecheckwork
DWCsimplecheckwork:
	.space 0x04
	.global DWCconntestip
DWCconntestip:
	.space 0x04
	.global DWCallow302
DWCallow302:
	.space 0x04
	.global DWCishotspot
DWCishotspot:
	.space 0x1C
	.global DWCnetcheckhttpparam
DWCnetcheckhttpparam:
	.space 0x1C
	.global DWCnetcheckauthparam
DWCnetcheckauthparam:
	.space 0x48