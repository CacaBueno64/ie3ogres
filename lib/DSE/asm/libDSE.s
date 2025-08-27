
	.include "asm/macros/function.inc"
	.include "libDSE.inc"

    .text
	arm_func_start FUN_02074a6c
FUN_02074a6c: ; 0x02074A6C
	mov r0, #0
	mov r2, r1
	ldr r12, _02074A80 ; =OS_AllocFromHeap
	sub r1, r0, #1
	bx r12
_02074A80: .word OS_AllocFromHeap
	arm_func_end FUN_02074a6c

	arm_func_start FUN_02074a84
FUN_02074a84: ; 0x02074A84
	stmfd sp!, {r4, lr}
	mov r4, r1
	mov r0, #0
	mov r2, r4
	sub r1, r0, #1
	bl OS_FreeToHeap
	mov r0, r4
	ldmfd sp!, {r4, pc}
	arm_func_end FUN_02074a84

	arm_func_start FUN_02074aa4
FUN_02074aa4: ; 0x02074AA4
	bx lr
	arm_func_end FUN_02074aa4

	arm_func_start FUN_02074aa8
FUN_02074aa8: ; 0x02074AA8
	stmfd sp!, {r4, r5, r6, lr}
	ldr r1, _02074B30 ; =0x020B9FD8
	mov r2, #1
	movs r4, r0
	strb r2, [r1, #0x45]
	subeq r0, r2, #0x100
	ldmeqfd sp!, {r4, r5, r6, pc}
	mov r1, #0x40
	bl DseMem_Clear
	mov r0, #0
	ldr r1, _02074B34 ; =FUN_02074aa4
	mov r12, #4
	ldr r3, _02074B38 ; =FUN_02074a6c
	ldr r2, _02074B3C ; =FUN_02074a84
	mov r6, #8
	mov r5, #0xf
	mov lr, #0x14
	str r0, [r4, #4]
	str r0, [r4, #8]
	str r0, [r4, #0xc]
	strb r6, [r4, #0x10]
	strb r0, [r4, #0x11]
	strh r0, [r4, #0x14]
	strh r5, [r4, #0x16]
	strb lr, [r4, #0x12]
	strh r12, [r4, #0x18]
	strh r12, [r4, #0x1a]
	str r3, [r4, #0x1c]
	str r2, [r4, #0x20]
	str r0, [r4, #0x24]
	str r1, [r4, #0x28]
	str r1, [r4, #0x2c]
	str r0, [r4, #0x30]
	ldmfd sp!, {r4, r5, r6, pc}
_02074B30: .word unk_020B9FD8
_02074B34: .word FUN_02074aa4
_02074B38: .word FUN_02074a6c
_02074B3C: .word FUN_02074a84
	arm_func_end FUN_02074aa8

	arm_func_start FUN_02074b40
FUN_02074b40: ; 0x02074B40
	stmfd sp!, {r3, r4, r5, lr}
	movs r4, r0
	bne _02074B64
	mov r1, #0
	mov r2, r1
	mvn r0, #0x17
	bl Dse_SetError
	mov r0, #2
	ldmfd sp!, {r3, r4, r5, pc}
_02074B64:
	tst r4, #3
	beq _02074B84
	mov r1, #0
	mov r2, r1
	mvn r0, #0x17
	bl Dse_SetError
	mov r0, #2
	ldmfd sp!, {r3, r4, r5, pc}
_02074B84:
	ldr r0, [r4, #8]
	mov r5, #0
	cmp r0, #0
	beq _02074B9C
	tst r0, #0xf
	beq _02074BA0
_02074B9C:
	orr r5, r5, #4
_02074BA0:
	ldr r0, [r4, #0xc]
	cmp r0, #0
	beq _02074BB4
	tst r0, #0xf
	beq _02074BB8
_02074BB4:
	orr r5, r5, #8
_02074BB8:
	ldrb r0, [r4, #0x11]
	ldrb r1, [r4, #0x10]
	cmp r0, #0
	cmpne r0, #1
	orrne r5, r5, #0x100
	cmp r1, #4
	ldrb r0, [r4, #0x12]
	orrlo r5, r5, #0x200
	cmp r0, r1
	ldrsh r1, [r4, #0x14]
	orrls r5, r5, #0x400
	ldrsh r0, [r4, #0x16]
	cmp r1, #0
	orrne r5, r5, #0x4000
	cmp r0, #0x10
	orrge r5, r5, #0x8000
	cmp r1, r0
	orrgt r5, r5, #0xc000
	cmp r5, #0
	beq _02074C18
	mov r1, r5
	mvn r0, #0x17
	mov r2, #0
	bl Dse_SetError
_02074C18:
	mov r0, r5
	str r5, [r4]
	ldmfd sp!, {r3, r4, r5, pc}
	arm_func_end FUN_02074b40

	arm_func_start FUN_02074c24
FUN_02074c24: ; 0x02074C24
	stmfd sp!, {r4, lr}
	cmp r0, #0
	strne r1, [r0, #8]
	strne r2, [r0, #0xc]
	movne r0, #0
	ldmnefd sp!, {r4, pc}
	mvn r4, #0x17
	mov r1, #0
	mov r0, r4
	mov r2, r1
	bl Dse_SetError
	mov r0, r4
	ldmfd sp!, {r4, pc}
	arm_func_end FUN_02074c24

	arm_func_start FUN_02074c58
FUN_02074c58: ; 0x02074C58
	stmfd sp!, {r4, lr}
	cmp r0, #0
	strneb r1, [r0, #0x11]
	strneb r2, [r0, #0x10]
	movne r0, #0
	ldmnefd sp!, {r4, pc}
	mvn r4, #0x17
	mov r1, #0
	mov r0, r4
	mov r2, r1
	bl Dse_SetError
	mov r0, r4
	ldmfd sp!, {r4, pc}
	arm_func_end FUN_02074c58

	arm_func_start FUN_02074c8c
FUN_02074c8c: ; 0x02074C8C
	stmfd sp!, {r4, lr}
	cmp r0, #0
	strneb r1, [r0, #0x12]
	movne r0, #0
	ldmnefd sp!, {r4, pc}
	mvn r4, #0x17
	mov r1, #0
	mov r0, r4
	mov r2, r1
	bl Dse_SetError
	mov r0, r4
	ldmfd sp!, {r4, pc}
	arm_func_end FUN_02074c8c

	arm_func_start FUN_02074cbc
FUN_02074cbc: ; 0x02074CBC
	stmfd sp!, {r4, lr}
	cmp r0, #0
	bne _02074CE4
	mvn r4, #0x17
	mov r1, #0
	mov r0, r4
	mov r2, r1
	bl Dse_SetError
	mov r0, r4
	ldmfd sp!, {r4, pc}
_02074CE4:
	cmp r1, #0
	movlt r1, #0
	cmp r2, #0
	movlt r2, #0xf
	strh r1, [r0, #0x14]
	strh r2, [r0, #0x16]
	mov r0, #0
	ldmfd sp!, {r4, pc}
	arm_func_end FUN_02074cbc

	arm_func_start FUN_02074d04
FUN_02074d04: ; 0x02074D04
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, lr}
	ldr r4, _02074EF8 ; =0x020B9FD8
	mov r7, r0
	ldrsb r1, [r4]
	mov r5, #0
	cmp r1, #1
	bne _02074D3C
	mvn r4, #0xbf
	mov r1, r5
	mov r0, r4
	mov r2, r1
	bl Dse_SetError
	mov r0, r4
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
_02074D3C:
	bl FUN_02074b40
	movs r1, r0
	beq _02074D60
	mvn r4, #0x1d
	mov r0, r4
	mov r2, r5
	bl Dse_SetError
	mov r0, r4
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
_02074D60:
	bl OS_InitTick
	mov r0, r5
	mov r1, r0
	bl OS_SetTick
	bl OS_InitAlarm
	ldrb r0, [r7, #0x11]
	ldr r9, _02074EF8 ; =0x020B9FD8
	mov r6, #0
	cmp r0, #0
	ldreq r1, _02074EFC ; =0x00002710
	moveq r0, #0x64
	ldrne r1, _02074F00 ; =0x0000414B
	movne r0, #0x3c
	strh r1, [r4, #0x28]
	str r0, [r4, #0x30]
	strh r6, [r9, #2]
	str r6, [r9, #4]
	str r6, [r9, #0x10]
	mov r0, #0xff
	mov r4, #1
	strb r0, [r9, #0x44]
	strb r4, [r9, #0x45]
	rsb r0, r4, #0x1000
	strh r0, [r9, #0x46]
	ldr r0, _02074F04 ; =0x00BC614E
	str r6, [r9, #0x2c]
	str r0, [r9, #0x3c]
	ldrb r0, [r7, #0x11]
	ldr r8, _02074F08 ; =0x020BAFD8
	strb r0, [r8, #0xde4]
	bl FUN_02075104
	strb r4, [r9, #0x40]
	mov r1, #2
	ldr r0, _02074F0C ; =0x02091F94
	strb r1, [r9, #0x41]
	str r0, [r8, #0xee0]
	str r6, [r9, #0x728]
	str r6, [r9, #0x72c]
	str r6, [r9, #0x730]
	str r6, [r9, #0x734]
	ldrb r0, [r7, #0x10]
	strb r0, [r8, #0xd1c]
_02074E08:
	add r0, r9, r6
	add r6, r6, #1
	strb r5, [r0, #0x680]
	cmp r6, #0x80
	blt _02074E08
	ldr r4, _02074EF8 ; =0x020B9FD8
	mov r0, #0x64
	strb r0, [r4, #0x687]
	mov r0, #0x7f
	strb r0, [r4, #0x68b]
	mov r0, #0x40
	strb r0, [r4, #0x68a]
	add r0, r7, #0x28
	ldr r3, _02074F10 ; =0x020B9FF4
	ldmia r0, {r0, r1, r2}
	stmia r3, {r0, r1, r2}
	mov r6, #1
	ldrsh r3, [r4, #0x28]
	ldr r1, _02074F08 ; =0x020BAFD8
	ldr r0, _02074F14 ; =0x020BBDD8
	str r5, [r1, #0xed4]
	str r6, [r1, #0xed8]
	str r5, [r1, #0xec8]
	str r5, [r1, #0xecc]
	sub r2, r6, #2
	strh r2, [r0, #0xd0]
	strh r3, [r0, #0xd2]
	strb r5, [r1, #0xedc]
	ldr r0, [r7, #8]
	ldr r1, [r7, #0xc]
	add r2, r7, #0x1c
	bl DseMem_Init
	ldrsh r0, [r7, #0x16]
	add r0, r0, #1
	mov r0, r0, lsl #0x10
	mov r0, r0, asr #0x10
	bl FUN_0207b070
	bl Dse_ResetAllVoices
	bl FUN_02084b48
	bl FUN_0207c4a8
	bl DseMidi_Init
	mov r1, #0x7f
_02074EB0:
	add r0, r4, r6
	add r6, r6, #1
	strb r1, [r0, #0x48]
	cmp r6, #0x10
	blt _02074EB0
	ldr r4, _02074EF8 ; =0x020B9FD8
	strb r5, [r4, #0x48]
	bl DseDriver_StartMainThread
	ldrb r0, [r7, #0x12]
	bl DseSwd_SysInit
	mov r0, #1
	strb r0, [r4]
	strb r5, [r4, #1]
	ldrh r0, [r7, #0x18]
	ldrh r1, [r7, #0x1a]
	bl DseSe_SysReset
	mov r0, r5
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
_02074EF8: .word unk_020B9FD8
_02074EFC: .word 0x00002710
_02074F00: .word 0x0000414B
_02074F04: .word 0x00BC614E
_02074F08: .word unk_020BAFD8
_02074F0C: .word unk_02091F94
_02074F10: .word unk_020B9FF4
_02074F14: .word unk_020BBDD8
	arm_func_end FUN_02074d04

	arm_func_start FUN_02074F18
FUN_02074F18: ; 0x02074F18
	stmfd sp!, {r3, r4, r5, lr}
	ldr r4, _02074F7C ; =0x020B9FD8
	ldrsb r0, [r4]
	cmp r0, #0
	mvneq r0, #0xc0
	ldmeqfd sp!, {r3, r4, r5, pc}
	bl DseSwd_SysQuit
	mov r5, #0
	mov r0, r5
	bl FUN_020750e4
	bl FUN_0207c82c
	bl FUN_02084b80
	bl FUN_02084b70
	bl DseDriver_CleanupMainThread
	bl Dse_ResetAllVoices
	bl DseMem_Quit
	bl FUN_02075104
	strb r5, [r4]
	strb r5, [r4, #1]
	str r5, [r4, #0x2c]
	str r5, [r4, #4]
	str r5, [r4, #0x10]
	mov r0, r5
	strh r5, [r4, #2]
	ldmfd sp!, {r3, r4, r5, pc}
_02074F7C: .word unk_020B9FD8
	arm_func_end FUN_02074F18

	arm_func_start FUN_02074f80
FUN_02074f80: ; 0x02074F80
	stmfd sp!, {r4, lr}
	ldr r0, _02074FB4 ; =0x020B9FD8
	ldrsb r1, [r0]
	cmp r1, #0
	ldrnesb r0, [r0, #1]
	ldmnefd sp!, {r4, pc}
	mvn r4, #0xc0
	mov r1, #0
	mov r0, r4
	mov r2, r1
	bl Dse_SetError
	mov r0, r4
	ldmfd sp!, {r4, pc}
_02074FB4: .word unk_020B9FD8
	arm_func_end FUN_02074f80

	arm_func_start FUN_02074fb8
FUN_02074fb8: ; 0x02074FB8
	stmfd sp!, {r3, r4, r5, lr}
	ldr r4, _02075048 ; =0x020B9FD8
	ldrsb r0, [r4]
	cmp r0, #0
	bne _02074FE8
	mvn r4, #0xc0
	mov r1, #0
	mov r0, r4
	mov r2, r1
	bl Dse_SetError
	mov r0, r4
	ldmfd sp!, {r3, r4, r5, pc}
_02074FE8:
	ldrsb r0, [r4, #1]
	cmp r0, #1
	moveq r0, #0
	ldmeqfd sp!, {r3, r4, r5, pc}
	mov r0, #1
	strb r0, [r4, #1]
	bl DseDriver_ResetSoundState
	mov r5, #0
	ldr r0, [r4, #0x670]
	mov r1, r5
	bl DseSequence_PauseList
	ldr r0, [r4, #0x674]
	mov r1, r5
	bl DseSequence_PauseList
	mov r0, r5
	bl FUN_0207c8b4
	mov r0, r5
	bl FUN_02084bb0
	mov r0, r5
	bl FUN_0207b070
	mov r1, #2
	mov r0, r5
	strb r1, [r4, #0x40]
	ldmfd sp!, {r3, r4, r5, pc}
_02075048: .word unk_020B9FD8
	arm_func_end FUN_02074fb8

	arm_func_start FUN_0207504c
FUN_0207504c: ; 0x0207504C
	stmfd sp!, {r3, r4, r5, lr}
	ldr r1, _020750E0 ; =0x020B9FD8
	mov r4, r0
	ldrsb r0, [r1, #1]
	cmp r0, #0
	moveq r0, #0
	ldmeqfd sp!, {r3, r4, r5, pc}
	mov r2, #1
	strb r2, [r1, #0x40]
	ldrh r0, [r1, #0x46]
	ldr r5, _020750E0 ; =0x020B9FD8
	mov r1, r4
	tst r0, #0xf
	moveq r2, #0
	mov r2, r2, lsl #0x18
	ldr r0, [r5, #0x670]
	mov r2, r2, asr #0x18
	bl FUN_02076424
	ldrh r0, [r5, #0x46]
	ldr r5, _020750E0 ; =0x020B9FD8
	mov r1, r4
	tst r0, #0xf0
	movne r0, #1
	moveq r0, #0
	mov r2, r0, lsl #0x18
	ldr r0, [r5, #0x674]
	mov r2, r2, asr #0x18
	bl FUN_02076424
	mov r0, r4
	bl FUN_0207c928
	mov r0, r4
	bl FUN_02084bd0
	mov r4, #0
	strb r4, [r5, #1]
	bl DseDriver_StartTickTimer
	mov r0, r4
	ldmfd sp!, {r3, r4, r5, pc}
_020750E0: .word unk_020B9FD8
	arm_func_end FUN_0207504c

	arm_func_start FUN_020750e4
FUN_020750e4: ; 0x020750E4
	stmfd sp!, {r4, lr}
	mov r4, r0
	bl DseBgm_StopAll
	mov r0, r4
	bl DseSe_StopAll
	mov r0, r4
	bl FUN_0207d17c
	ldmfd sp!, {r4, pc}
	arm_func_end FUN_020750e4

	arm_func_start FUN_02075104
FUN_02075104: ; 0x02075104
	ldr r1, _02075138 ; =0x020B9FD8
	mov r2, #0
	str r2, [r1, #0x65c]
	str r2, [r1, #0x660]
	ldr r0, _0207513C ; =0x020BAFD8
	str r2, [r1, #0x664]
	str r2, [r0, #0xde8]
	str r2, [r1, #0x66c]
	str r2, [r1, #0x670]
	str r2, [r1, #0x674]
	ldr r12, _02075140 ; =Dse_SysSetupNoteList
	str r2, [r1, #0x678]
	bx r12
_02075138: .word unk_020B9FD8
_0207513C: .word unk_020BAFD8
_02075140: .word Dse_SysSetupNoteList
	arm_func_end FUN_02075104

	arm_func_start Dse_SetError
Dse_SetError: ; 0x02075144
	stmfd sp!, {r3, lr}
	ldr r3, _02075174 ; =0x020B9FD8
	stmib r3, {r0, r1}
	str r2, [r3, #0xc]
	ldr r12, [r3, #0x1c]
	cmp r12, #0
	ldmeqfd sp!, {r3, pc}
	mov r1, #0
	ldr r2, _02075178 ; =0x020B9FDC
	mov r3, r1
	blx r12
	ldmfd sp!, {r3, pc}
_02075174: .word unk_020B9FD8
_02075178: .word unk_020B9FDC
	arm_func_end Dse_SetError

	arm_func_start Dse_SetError2
Dse_SetError2: ; 0x0207517C
	stmfd sp!, {r3, lr}
	ldr r3, _020751B0 ; =0x020B9FD8
	str r0, [r3, #0x10]
	str r1, [r3, #0x14]
	str r2, [r3, #0x18]
	ldr r12, [r3, #0x20]
	cmp r12, #0
	ldmeqfd sp!, {r3, pc}
	mov r1, #0
	ldr r2, _020751B4 ; =0x020B9FE8
	mov r3, r1
	blx r12
	ldmfd sp!, {r3, pc}
_020751B0: .word unk_020B9FD8
_020751B4: .word unk_020B9FE8
	arm_func_end Dse_SetError2

	arm_func_start DseUtil_ByteSwap32
DseUtil_ByteSwap32: ; 0x020751B8
	mov r3, r0, lsr #0x18
	mov r2, r0, lsr #8
	mov r1, r0, lsl #8
	mov r0, r0, lsl #0x18
	and r3, r3, #0xff
	and r2, r2, #0xff00
	orr r2, r3, r2
	and r1, r1, #0xff0000
	orr r1, r2, r1
	and r0, r0, #0xff000000
	orr r0, r1, r0
	bx lr
	arm_func_end DseUtil_ByteSwap32

	arm_func_start DseUtil_GetRandomNumber
DseUtil_GetRandomNumber: ; 0x020751E8
	ldr r1, _02075208 ; =0x020B9FD8
	ldr r0, _0207520C ; =0x00007FFF
	ldr r2, [r1, #0x3c]
	eor r2, r2, r2, lsl #17
	eor r2, r2, r2, asr #15
	str r2, [r1, #0x3c]
	and r0, r2, r0
	bx lr
_02075208: .word unk_020B9FD8
_0207520C: .word 0x00007FFF
	arm_func_end DseUtil_GetRandomNumber

	arm_func_start DseMem_Init
DseMem_Init: ; 0x02075210
	mov r12, r1
	tst r0, #0xf
	bicne r0, r0, #0xf
	ldr r1, _02075274 ; =0x020B9FD8
	addne r0, r0, #0x10
	subne r12, r12, #0x10
	add r3, r0, r12
	str r0, [r1, #0x700]
	str r3, [r1, #0x704]
	str r12, [r1, #0x708]
	ldr r3, _02075278 ; =0x74647373
	mov r1, #0x82
	str r3, [r0]
	strb r1, [r0, #4]
	mov r3, #0
	strb r3, [r0, #5]
	add r1, r0, #0x10
	str r1, [r0, #8]
	str r3, [r0, #0xc]
	strb r3, [r0, #6]
	ldr r3, _0207527C ; =0x020BA6E4
	ldmia r2, {r0, r1, r2}
	stmia r3, {r0, r1, r2}
	mov r0, r12
	bx lr
_02075274: .word unk_020B9FD8
_02075278: .word 0x74647373
_0207527C: .word unk_020BA6E4
	arm_func_end DseMem_Init

	arm_func_start DseMem_Quit
DseMem_Quit: ; 0x02075280
	ldr r0, _02075298 ; =0x020B9FD8
	mov r1, #0
	str r1, [r0, #0x700]
	str r1, [r0, #0x704]
	str r1, [r0, #0x708]
	bx lr
_02075298: .word unk_020B9FD8
	arm_func_end DseMem_Quit

	arm_func_start DseMem_AllocateUser
DseMem_AllocateUser: ; 0x0207529C
	ldr r2, _020752A8 ; =0x72657375
	ldr r12, _020752AC ; =DseMem_AllocateFirstFit
	bx r12
_020752A8: .word 0x72657375
_020752AC: .word DseMem_AllocateFirstFit
	arm_func_end DseMem_AllocateUser

	arm_func_start DseMem_AllocateFirstFit
DseMem_AllocateFirstFit: ; 0x020752B0
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	ldr r3, _020753B0 ; =0x020B9FD8
	mov lr, r0
	ldr r0, [r3, #0x700]
	cmp r0, #0
	moveq r0, #0
	ldmeqfd sp!, {r3, r4, r5, r6, r7, pc}
	ldr r4, _020753B4 ; =0x04000208
	cmp r1, #0
	ldrh r12, [r4]
	moveq r1, #0x10
	mov r0, #0
	sub r5, r1, #1
	strh r0, [r4]
	ldr r3, _020753B0 ; =0x020B9FD8
	mvn r0, r5
	add r4, lr, r5
	and r4, r0, r4
	ldr r3, [r3, #0x700]
	add r6, r4, #0x10
_02075300:
	ldr r4, [r3, #0xc]
	cmp r4, #0
	ldreq r4, _020753B0 ; =0x020B9FD8
	ldreq r7, [r3, #8]
	ldreq r4, [r4, #0x704]
	subeq r5, r4, r7
	beq _02075330
	ldr r7, [r3, #8]
	sub r5, r4, r7
	cmp r5, r6
	movlt r3, r4
	blt _02075300
_02075330:
	cmp r5, r6
	ldrlt r2, _020753B4 ; =0x04000208
	movlt r0, #0
	ldrlth r1, [r2]
	strlth r12, [r2]
	ldmltfd sp!, {r3, r4, r5, r6, r7, pc}
	add r4, r7, #0x10
	sub r1, r1, #1
	add r1, r4, r1
	and r1, r0, r1
	sub r6, r1, #0x10
	add r4, r6, #0x10
	add r0, r4, lr
	str r0, [r6, #8]
	str r2, [r1, #-0x10]
	mov r0, #2
	strb r0, [r6, #4]
	mov r0, #0
	strb r0, [r6, #5]
	ldr r1, [r3, #0xc]
	ldr r5, _020753B4 ; =0x04000208
	str r1, [r6, #0xc]
	str r6, [r3, #0xc]
	strb r0, [r6, #6]
	strb r0, [r3, #6]
	ldrh r1, [r5]
	mov r1, r4
	mov r2, lr
	strh r12, [r5]
	bl MIi_CpuClearFast
	mov r0, r4
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_020753B0: .word unk_020B9FD8
_020753B4: .word 0x04000208
	arm_func_end DseMem_AllocateFirstFit

	arm_func_start DseMem_AllocateLastFit
DseMem_AllocateLastFit: ; 0x020753B8
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, lr}
	ldr r3, _020754F4 ; =0x020B9FD8
	mov r6, r0
	ldr r0, [r3, #0x700]
	mov r5, r1
	cmp r0, #0
	bne _020753EC
	mov r1, r6
	mov r2, r5
	mvn r0, #0xc1
	bl Dse_SetError
	mov r0, #0
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
_020753EC:
	ldr r3, _020754F8 ; =0x04000208
	cmp r5, #0
	ldrh r12, [r3]
	moveq r5, #0x10
	sub r4, r5, #1
	mov r1, #0
	strh r1, [r3]
	ldr r0, _020754F4 ; =0x020B9FD8
	mvn lr, r4
	add r3, r6, r4
	and r3, lr, r3
	ldr r0, [r0, #0x700]
	mov r4, r1
	add r3, r3, #0x10
_02075424:
	ldr r8, [r0, #0xc]
	cmp r8, #0
	bne _02075450
	ldr r7, _020754F4 ; =0x020B9FD8
	ldr r8, [r0, #8]
	ldr r9, [r7, #0x704]
	sub r7, r9, r8
	cmp r7, r3
	movge r1, r0
	movge r4, r9
	b _0207546C
_02075450:
	ldr r7, [r0, #8]
	sub r7, r8, r7
	cmp r7, r3
	movge r1, r0
	movge r4, r8
	mov r0, r8
	b _02075424
_0207546C:
	cmp r1, #0
	ldreq r2, _020754F8 ; =0x04000208
	moveq r0, #0
	ldreqh r1, [r2]
	streqh r12, [r2]
	ldmeqfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
	sub r0, r4, r3
	add r3, r0, #0x10
	sub r0, r5, #1
	add r0, r3, r0
	and r0, lr, r0
	str r2, [r0, #-0x10]
	sub r7, r0, #0x10
	add r4, r7, #0x10
	mov r0, #0x22
	strb r0, [r7, #4]
	mov r0, #0
	strb r0, [r7, #5]
	strb r5, [r7, #7]
	add r2, r4, r6
	str r2, [r7, #8]
	ldr r2, [r1, #0xc]
	ldr r3, _020754F8 ; =0x04000208
	str r2, [r7, #0xc]
	str r7, [r1, #0xc]
	strb r0, [r7, #6]
	strb r0, [r1, #6]
	ldrh r1, [r3]
	mov r1, r4
	mov r2, r6
	strh r12, [r3]
	bl MIi_CpuClearFast
	mov r0, r4
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
_020754F4: .word unk_020B9FD8
_020754F8: .word 0x04000208
	arm_func_end DseMem_AllocateLastFit

	arm_func_start DseMem_Free
DseMem_Free: ; 0x020754FC
	stmfd sp!, {r4, lr}
	ldr r2, _020755A4 ; =0x020B9FD8
	mov r1, r0
	ldr r0, [r2, #0x700]
	cmp r0, #0
	bne _0207552C
	mvn r4, #0xc1
	mov r0, r4
	mov r2, #0
	bl Dse_SetError
	mov r0, r4
	ldmfd sp!, {r4, pc}
_0207552C:
	ldr r0, _020755A8 ; =0x04000208
	mov r4, #0
	ldrh r3, [r0]
	sub r12, r1, #0x10
	strh r4, [r0]
	ldr r0, [r2, #0x700]
	cmp r0, r12
	beq _0207555C
_0207554C:
	mov r4, r0
	ldr r0, [r0, #0xc]
	cmp r0, r12
	bne _0207554C
_0207555C:
	cmp r4, #0
	beq _02075580
	ldr r0, [r12, #0xc]
	ldr r1, _020755A8 ; =0x04000208
	str r0, [r4, #0xc]
	ldrh r0, [r1]
	mov r4, #0
	strh r3, [r1]
	b _0207559C
_02075580:
	ldr r12, _020755A8 ; =0x04000208
	mvn r4, #0x8b
	ldrh r0, [r12]
	mov r0, r4
	mov r2, #0
	strh r3, [r12]
	bl Dse_SetError
_0207559C:
	mov r0, r4
	ldmfd sp!, {r4, pc}
_020755A4: .word unk_020B9FD8
_020755A8: .word 0x04000208
	arm_func_end DseMem_Free

	arm_func_start FUN_020755ac
FUN_020755ac: ; 0x020755AC
	stmfd sp!, {r3, lr}
	ldr r2, _02075630 ; =0x04000208
	mov r3, #0
	ldrh r12, [r2]
	ldr r1, _02075634 ; =0x020B9FD8
	mov r0, #1
	strh r3, [r2]
	ldr r2, [r1, #0x700]
	cmp r2, #0
	beq _02075618
_020755D4:
	ldr r1, [r2, #8]
	cmp r1, r2
	movle r3, #1
	ble _02075618
	ldr lr, [r2, #0xc]
	cmp lr, #0
	cmpne lr, r1
	movlt r3, #1
	blt _02075618
	ldrb r1, [r2, #6]
	cmp r1, #0
	movne r3, #1
	bne _02075618
	mov r2, lr
	cmp lr, #0
	add r0, r0, #1
	bne _020755D4
_02075618:
	ldr r2, _02075630 ; =0x04000208
	cmp r3, #1
	ldrh r1, [r2]
	movne r0, #0
	strh r12, [r2]
	ldmfd sp!, {r3, pc}
_02075630: .word 0x04000208
_02075634: .word unk_020B9FD8
	arm_func_end FUN_020755ac

	arm_func_start DseMem_Clear
DseMem_Clear: ; 0x02075638
	cmp r1, #0x10
	blt _02075660
	mov r2, #0
_02075644:
	str r2, [r0, #0xc]
	str r2, [r0, #8]
	sub r1, r1, #0x10
	str r2, [r0, #4]
	cmp r1, #0x10
	str r2, [r0], #0x10
	bge _02075644
_02075660:
	cmp r1, #4
	blt _0207567C
	mov r2, #0
_0207566C:
	sub r1, r1, #4
	cmp r1, #4
	str r2, [r0], #4
	bge _0207566C
_0207567C:
	cmp r1, #0
	bxle lr
	mov r2, #0
_02075688:
	strb r2, [r0], #1
	subs r1, r1, #1
	bne _02075688
	bx lr
	arm_func_end DseMem_Clear

	arm_func_start FUN_02075698
FUN_02075698: ; 0x02075698
	stmfd sp!, {r4, lr}
	movs r2, r0
	beq _020756AC
	cmp r2, #7
	bls _020756C4
_020756AC:
	mvn r4, #0x17
	mov r0, r4
	mov r1, #0
	bl Dse_SetError
	mov r0, r4
	ldmfd sp!, {r4, pc}
_020756C4:
	ldr r0, _0207570C ; =0x020B9FD8
	cmp r2, #1
	strb r2, [r0, #0x41]
	beq _020756E0
	cmp r2, #7
	beq _020756E8
	b _020756F0
_020756E0:
	ldr r1, _02075710 ; =0x02091E94
	b _020756F4
_020756E8:
	ldr r1, _02075714 ; =0x02091F14
	b _020756F4
_020756F0:
	ldr r1, _02075718 ; =0x02091F94
_020756F4:
	ldr r0, _0207571C ; =0x020BAFD8
	str r1, [r0, #0xee0]
	mov r0, r2
	bl FUN_0207db04
	mov r0, #0
	ldmfd sp!, {r4, pc}
_0207570C: .word unk_020B9FD8
_02075710: .word unk_02091E94
_02075714: .word unk_02091F14
_02075718: .word unk_02091F94
_0207571C: .word unk_020BAFD8
	arm_func_end FUN_02075698

	arm_func_start DseFile_CheckHeader
DseFile_CheckHeader: ; 0x02075720
	stmfd sp!, {r4, r5, r6, lr}
	ldr r3, _0207579C ; =0x020B9FD8
	mov r6, r0
	ldrsb r0, [r3]
	mov r4, r2
	mov r5, r1
	cmp r0, #0
	mvneq r4, #0xc0
	beq _02075784
	cmp r6, #0
	mvneq r4, #0x17
	beq _02075784
	beq _02075784
	ldr r0, [r6]
	bl DseUtil_ByteSwap32
	cmp r5, r0
	mvnne r4, #0x10
	bne _02075784
	cmp r4, #0
	ldrneh r0, [r6, #0xc]
	cmpne r0, r4
	mvnne r4, #0x12
	bne _02075784
	ldrh r0, [r6, #0xe]
	ldmfd sp!, {r4, r5, r6, pc}
_02075784:
	mov r0, r4
	mov r1, r6
	mov r2, #0
	bl Dse_SetError
	mov r0, r4
	ldmfd sp!, {r4, r5, r6, pc}
_0207579C: .word unk_020B9FD8
	arm_func_end DseFile_CheckHeader

	arm_func_start DseSwd_SysInit
DseSwd_SysInit: ; 0x020757A0
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	sub sp, sp, #8
	ldr r4, _0207581C ; =0x020BAFD8
	mov r1, #0x4000
	str r1, [r4, #0xdec]
	mov r6, #0
	str r6, [r4, #0xdf0]
	mov r7, r0
	str r6, [r4, #0xdf4]
	strb r7, [r4, #0xdf8]
	strb r6, [r4, #0xdf9]
	strb r6, [r4, #0xdfa]
	mov r5, #0x800
	ldr r2, _02075820 ; =0x72727473
	mov r0, r5
	strb r6, [r4, #0xdfb]
	mov r1, #0x10
	bl DseMem_AllocateLastFit
	str r0, [r4, #0xebc]
	stmia sp, {r5, r7}
	ldr r3, [r4, #0xebc]
	ldr r4, _02075824 ; =0x020BBDD4
	ldr r1, _02075828 ; =DseSwd_SampleLoaderMain
	mov r0, r4
	mov r2, r6
	add r3, r3, #0x800
	bl OS_CreateThread
	mov r0, r4
	bl OS_WakeupThreadDirect
	add sp, sp, #8
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_0207581C: .word unk_020BAFD8
_02075820: .word 0x72727473
_02075824: .word unk_020BBDD4
_02075828: .word DseSwd_SampleLoaderMain
	arm_func_end DseSwd_SysInit

	arm_func_start DseSwd_SysQuit
DseSwd_SysQuit: ; 0x0207582C
	stmfd sp!, {r3, r4, r5, lr}
	ldr r5, _02075864 ; =0x020BBDD4
	ldr r4, _02075868 ; =0x020BAFD8
	mov r1, #0
	mov r0, r5
	strb r1, [r4, #0xdf9]
	mov r1, #1
	strb r1, [r4, #0xdfa]
	bl OS_WakeupThreadDirect
	mov r0, r5
	bl OS_JoinThread
	ldr r0, [r4, #0xebc]
	bl DseMem_Free
	ldmfd sp!, {r3, r4, r5, pc}
_02075864: .word unk_020BBDD4
_02075868: .word unk_020BAFD8
	arm_func_end DseSwd_SysQuit

	arm_func_start DseSwd_SampleLoaderMain
DseSwd_SampleLoaderMain: ; 0x0207586C
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	ldr r5, _020758C0 ; =0x020BAFD8
	mov r7, #1
	add r4, r5, #0xd00
	mov r6, #0
_02075880:
	mov r0, r6
	strb r7, [r5, #0xdfb]
	bl OS_SleepThread
	strb r6, [r5, #0xdfb]
	ldrsb r0, [r4, #0xfa]
	cmp r0, #1
	ldmeqfd sp!, {r3, r4, r5, r6, r7, pc}
	ldr r0, [r5, #0xec0]
	cmp r0, #0
	beq _02075880
	ldr r1, [r5, #0xec4]
	bl DseBank_LoadWavesInternal
	str r6, [r5, #0xec0]
	str r6, [r5, #0xec4]
	b _02075880
	arm_func_end DseSwd_SampleLoaderMain

	arm_func_start FUN_020758bc
FUN_020758bc: ; 0x020758BC
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_020758C0: .word unk_020BAFD8
	arm_func_end FUN_020758bc

	arm_func_start DseSwd_LoadBank
DseSwd_LoadBank: ; 0x020758C4
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, lr}
	str r2, [sp]
	mov r5, #4
	ldr r1, _02075B1C ; =0x7377646C
	ldr r2, _02075B20 ; =0x00000415
	mov r3, r5
	mov r10, r0
	mov r4, #0
	bl DseFile_CheckHeader
	movs r6, r0
	ldmmifd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
	mov r0, r6, lsl #0x10
	mov r0, r0, lsr #0x10
	bl DseSwd_GetBankById
	cmp r0, #0
	beq _02075920
	sub r4, r5, #0x4c
	mov r0, r4
	mov r1, r6
	mov r2, #0
	bl Dse_SetError
	mov r0, r4
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_02075920:
	mov r5, #0x10
	ldr r2, _02075B24 ; =0x69766177
	mov r1, r5
	mov r0, #0x28
	bl DseMem_AllocateFirstFit
	movs r9, r0
	bne _02075958
	sub r4, r5, #0x90
	mov r1, #0
	mov r0, r4
	mov r2, r1
	bl Dse_SetError
	mov r0, r4
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_02075958:
	str r10, [r9]
	strh r6, [r9, #4]
	strh r4, [r9, #6]
	ldrsh r0, [r10, #0x46]
	add r8, r10, #0x50
	strh r0, [r9, #8]
	ldrsh r0, [r10, #0x48]
	strh r0, [r9, #0xa]
	ldrb r0, [r10, #0x4a]
	strb r0, [r9, #0xc]
	ldrb r0, [r10, #0x4b]
	strb r0, [r9, #0xd]
	str r4, [r9, #0x10]
	str r4, [r9, #0x14]
	str r4, [r9, #0x18]
	str r4, [r9, #0x1c]
	str r4, [r9, #0x20]
	str r4, [r9, #0x24]
	ldr r0, [r10, #0x50]
	bl DseUtil_ByteSwap32
	ldr r7, _02075B28 ; =0x656F6420
	cmp r0, r7
	beq _02075A40
	ldr r11, _02075B2C ; =0x77617669
	ldr r4, _02075B30 ; =0x70726769
	ldr r6, _02075B34 ; =0x70636D64
	ldr r5, _02075B38 ; =0x6B677270
_020759C4:
	ldr r0, [r8]
	bl DseUtil_ByteSwap32
	cmp r0, r6
	bhi _020759E8
	bhs _02075A0C
	cmp r0, r5
	addeq r0, r8, #0x10
	streq r0, [r9, #0x18]
	b _02075A14
_020759E8:
	cmp r0, r4
	bhi _020759FC
	addeq r0, r8, #0x10
	streq r0, [r9, #0x14]
	b _02075A14
_020759FC:
	cmp r0, r11
	addeq r0, r8, #0x10
	streq r0, [r9, #0x10]
	b _02075A14
_02075A0C:
	add r0, r8, #0x10
	str r0, [r9, #0x1c]
_02075A14:
	ldrb r1, [r8, #8]
	ldr r0, [r8, #0xc]
	sub r2, r1, #1
	add r0, r0, #0x10
	mvn r1, r2
	add r0, r0, r2
	and r0, r1, r0
	ldr r0, [r8, r0]!
	bl DseUtil_ByteSwap32
	cmp r0, r7
	bne _020759C4
_02075A40:
	ldrb r1, [r10, #0x4b]
	mov r0, #0
	mov r4, r0
	cmp r1, #0
	beq _02075A60
	cmp r1, #1
	subeq r4, r4, #0x96
	b _02075A84
_02075A60:
	ldr r1, [r9, #0x10]
	cmp r1, #0
	ldr r1, [r9, #0x14]
	subeq r4, r4, #1
	cmp r1, #0
	ldr r1, [r9, #0x1c]
	mvneq r4, #0
	cmp r1, #0
	mvneq r4, #0
_02075A84:
	cmp r4, #0
	beq _02075AAC
	mov r1, #0
	mov r0, r4
	mov r2, r1
	bl Dse_SetError
	mov r0, r9
	bl DseMem_Free
	mov r0, r4
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_02075AAC:
	ldr r1, _02075B3C ; =0x04000208
	ldr r2, _02075B40 ; =0x020BA644
	ldrh r3, [r1]
	strh r0, [r1]
	ldr r0, [r2]
	cmp r0, #0
	beq _02075AD8
_02075AC8:
	add r2, r0, #0x24
	ldr r0, [r0, #0x24]
	cmp r0, #0
	bne _02075AC8
_02075AD8:
	ldr r1, _02075B3C ; =0x04000208
	str r9, [r2]
	ldrh r0, [r1]
	strh r3, [r1]
	ldrb r0, [r10, #0x4b]
	cmp r0, #2
	bne _02075B14
	ldrh r1, [r10, #0x40]
	ldr r0, [sp]
	cmp r0, #0
	strh r1, [r9, #6]
	beq _02075B14
	ldrh r0, [r9, #4]
	ldr r1, [sp]
	bl DseBank_LoadWaves
_02075B14:
	ldrh r0, [r9, #4]
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_02075B1C: .word 0x7377646C
_02075B20: .word 0x00000415
_02075B24: .word 0x69766177
_02075B28: .word 0x656F6420
_02075B2C: .word 0x77617669
_02075B30: .word 0x70726769
_02075B34: .word 0x70636D64
_02075B38: .word 0x6B677270
_02075B3C: .word 0x04000208
_02075B40: .word unk_020BA644
	arm_func_end DseSwd_LoadBank

	arm_func_start DseBank_LoadWaves
DseBank_LoadWaves: ; 0x02075B44
	stmfd sp!, {r4, r5, r6, lr}
	mov r5, r0
	mov r6, r1
	bl DseSwd_GetBankById
	movs r4, r0
	bne _02075B78
	mvn r4, #0x40
	mov r0, r4
	mov r1, r5
	mov r2, #0
	bl Dse_SetError
	mov r0, r4
	ldmfd sp!, {r4, r5, r6, pc}
_02075B78:
	ldrb r0, [r4, #0xd]
	cmp r0, #2
	mvnne r0, #0x4c
	ldmnefd sp!, {r4, r5, r6, pc}
	ldrh r0, [r4, #6]
	bl DseSwd_GetMainBankById
	cmp r0, #0
	bne _02075BB4
	mvn r4, #0x4b
	mov r1, #0
	mov r0, r4
	mov r2, r1
	bl Dse_SetError
	mov r0, r4
	ldmfd sp!, {r4, r5, r6, pc}
_02075BB4:
	ldr r5, [r4, #0x20]
	cmp r5, #0
	bne _02075BD0
	mov r0, r4
	mov r1, #0
	bl DseBank_LoadWavesInternal
	mov r5, r0
_02075BD0:
	cmp r6, #0
	beq _02075BEC
	ldr r1, _02075BF4 ; =0x020BAFD8
	ldr r0, _02075BF8 ; =0x020BBDD4
	str r4, [r1, #0xec0]
	str r6, [r1, #0xec4]
	bl OS_WakeupThreadDirect
_02075BEC:
	mov r0, r5
	ldmfd sp!, {r4, r5, r6, pc}
_02075BF4: .word unk_020BAFD8
_02075BF8: .word unk_020BBDD4
	arm_func_end DseBank_LoadWaves

	arm_func_start DseBank_LoadWavesInternal
DseBank_LoadWavesInternal: ; 0x02075BFC
	stmfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, lr}
	sub sp, sp, #0x1c
	mov r10, r0
	ldrh r0, [r10, #6]
	mov r9, r1
	bl DseSwd_GetMainBankById
	movs r4, r0
	bne _02075C3C
	mvn r4, #0x4b
	mov r1, #0
	mov r0, r4
	mov r2, r1
	bl Dse_SetError
	add sp, sp, #0x1c
	mov r0, r4
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
_02075C3C:
	mov r6, #0
	str r6, [sp, #8]
	ldr r0, [r10, #0x20]
	mov r5, r9
	str r0, [sp, #4]
	ldrsh r0, [r10, #8]
	mov r7, r6
	str r0, [sp, #0x14]
	cmp r0, #0
	ble _02075CF4
	add r11, sp, #4
_02075C68:
	mov r1, r7, lsl #0x10
	mov r0, r10
	mov r1, r1, asr #0x10
	bl DseBank_GetWaviEntry
	cmp r0, #0
	strne r5, [r0, #0x24]
	ldrne r2, [r4, #8]
	movne r1, r7, lsl #1
	ldrneh r1, [r2, r1]
	cmpne r1, #0
	beq _02075CE4
	add r2, r7, #1
	str r2, [sp, #0x18]
	ldr r2, [r0, #0x2c]
	ldr r0, [r0, #0x28]
	cmp r9, #0
	add r0, r2, r0
	mov r8, r0, lsl #2
	beq _02075CDC
	str r11, [sp]
	ldr r0, [r4, #8]
	ldr r3, [r4, #4]
	add r0, r0, r1
	ldr r12, [r0, #0x24]
	mov r1, r5
	mov r2, r8
	add r0, r4, #0x14
	add r3, r12, r3
	bl DseSwd_ReadMainBank
_02075CDC:
	add r6, r6, r8
	add r5, r5, r8
_02075CE4:
	ldrsh r0, [r10, #8]
	add r7, r7, #1
	cmp r7, r0
	blt _02075C68
_02075CF4:
	mov r0, r6
	str r6, [r10, #0x20]
	add sp, sp, #0x1c
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
	arm_func_end DseBank_LoadWavesInternal

	arm_func_start DseBank_UnloadById
DseBank_UnloadById: ; 0x02075D04
	stmfd sp!, {r4, lr}
	ldr r2, _02075D74 ; =0x04000208
	mov r1, #0
	ldrh r12, [r2]
	mov r4, r0
	ldr r3, _02075D78 ; =0x020BA644
	strh r1, [r2]
	b _02075D28
_02075D24:
	add r3, r0, #0x24
_02075D28:
	ldr r0, [r3]
	cmp r0, #0
	beq _02075D40
	ldrh r1, [r0, #4]
	cmp r1, r4
	bne _02075D24
_02075D40:
	ldr r2, _02075D74 ; =0x04000208
	cmp r0, #0
	ldreqh r1, [r2]
	mvneq r0, #0x40
	streqh r12, [r2]
	ldmeqfd sp!, {r4, pc}
	ldr r1, [r0, #0x24]
	str r1, [r3]
	ldrh r1, [r2]
	strh r12, [r2]
	bl DseMem_Free
	mov r0, r4
	ldmfd sp!, {r4, pc}
_02075D74: .word 0x04000208
_02075D78: .word unk_020BA644
	arm_func_end DseBank_UnloadById

	arm_func_start DseBank_GetWaviEntry
DseBank_GetWaviEntry: ; 0x02075D7C
	ldr r2, [r0, #0x10]
	cmp r2, #0
	moveq r0, #0
	bxeq lr
	ldrsh r0, [r0, #8]
	cmp r0, r1
	movle r0, #0
	bxle lr
	mov r0, r1, lsl #1
	ldrh r0, [r2, r0]
	cmp r0, #0
	moveq r0, #0
	addne r0, r2, r0
	bx lr
	arm_func_end DseBank_GetWaviEntry

	arm_func_start DseBank_GetProgram
DseBank_GetProgram: ; 0x02075DB4
	ldr r2, [r0, #0x14]
	cmp r2, #0
	moveq r0, #0
	bxeq lr
	ldrsh r0, [r0, #0xa]
	cmp r0, r1
	movle r0, #0
	bxle lr
	mov r0, r1, lsl #1
	ldrh r0, [r2, r0]
	cmp r0, #0
	moveq r0, #0
	addne r0, r2, r0
	bx lr
	arm_func_end DseBank_GetProgram

	arm_func_start DseProgram_GetNextSplitInRange
DseProgram_GetNextSplitInRange: ; 0x02075DEC
	stmfd sp!, {r3, lr}
	ldrb lr, [r0, #2]
	cmp lr, #0
	moveq r0, #0
	ldmeqfd sp!, {r3, pc}
	cmp r1, #0
	addeq r1, r0, #0x60
	beq _02075E24
	ldrb r12, [r1, #1]
	sub r0, lr, #1
	cmp r12, r0
	movge r0, #0
	ldmgefd sp!, {r3, pc}
	add r1, r1, #0x30
_02075E24:
	sub r0, lr, #1
_02075E28:
	ldrb r12, [r1, #4]
	cmp r2, r12
	blo _02075E5C
	ldrb r12, [r1, #5]
	cmp r2, r12
	bhi _02075E5C
	ldrb r12, [r1, #8]
	cmp r3, r12
	blt _02075E5C
	ldrb r12, [r1, #9]
	cmp r3, r12
	movle r0, r1
	ldmlefd sp!, {r3, pc}
_02075E5C:
	ldrb r12, [r1, #1]
	cmp r12, r0
	addlt r1, r1, #0x30
	blt _02075E28
	mov r0, #0
	ldmfd sp!, {r3, pc}
	arm_func_end DseProgram_GetNextSplitInRange

	arm_func_start DseSwd_GetMainBankById
DseSwd_GetMainBankById: ; 0x02075E74
	ldr r3, _02075EC0 ; =0x04000208
	mov r2, #0
	ldrh r12, [r3]
	ldr r1, _02075EC4 ; =0x020BAFD8
	strh r2, [r3]
	ldr r3, [r1, #0xde8]
	cmp r3, #0
	beq _02075EAC
_02075E94:
	ldrh r1, [r3]
	cmp r1, r0
	beq _02075EAC
	ldr r3, [r3, #0x5c]
	cmp r3, #0
	bne _02075E94
_02075EAC:
	ldr r2, _02075EC0 ; =0x04000208
	mov r0, r3
	ldrh r1, [r2]
	strh r12, [r2]
	bx lr
_02075EC0: .word 0x04000208
_02075EC4: .word unk_020BAFD8
	arm_func_end DseSwd_GetMainBankById

	arm_func_start DseSwd_GetBankById
DseSwd_GetBankById: ; 0x02075EC8
	ldr r3, _02075F14 ; =0x04000208
	mov r2, #0
	ldrh r12, [r3]
	ldr r1, _02075F18 ; =0x020B9FD8
	strh r2, [r3]
	ldr r3, [r1, #0x66c]
	cmp r3, #0
	beq _02075F00
_02075EE8:
	ldrh r1, [r3, #4]
	cmp r1, r0
	beq _02075F00
	ldr r3, [r3, #0x24]
	cmp r3, #0
	bne _02075EE8
_02075F00:
	ldr r2, _02075F14 ; =0x04000208
	mov r0, r3
	ldrh r1, [r2]
	strh r12, [r2]
	bx lr
_02075F14: .word 0x04000208
_02075F18: .word unk_020B9FD8
	arm_func_end DseSwd_GetBankById

	arm_func_start DseSwd_ReadMainBank
DseSwd_ReadMainBank: ; 0x02075F1C
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, lr}
	ldr r7, [sp, #0x28]
	mov r9, r1
	mov r4, #0
	mov r8, r2
	mov r1, r3
	mov r2, r4
	mov r10, r0
	bl FS_SeekFile
	str r8, [r7, #8]
	str r4, [r7, #0xc]
	cmp r8, #0
	ble _02075FD0
	ldr r5, _02075FD8 ; =0x04000006
	ldr r11, _02075FDC ; =0x020BAFD8
	mov r4, #2
_02075F5C:
	ldr r6, [r11, #0xdec]
	cmp r8, r6
	movlt r6, r8
_02075F68:
	ldrh r0, [r5]
	cmp r0, #0xb4
	blt _02075F80
	mov r0, r4
	bl OS_Sleep
	b _02075F68
_02075F80:
	mov r0, r10
	mov r1, r9
	mov r2, r6
	bl FS_ReadFileAsync
	mov r0, r10
	bl FS_WaitAsync
	ldr r1, [r7, #0xc]
	mov r0, r7
	add r1, r1, r6
	str r1, [r7, #0xc]
	ldr r1, [r7, #4]
	sub r8, r8, r6
	add r1, r1, r6
	str r1, [r7, #4]
	add r9, r9, r6
	ldr r1, [r11, #0xdf4]
	ldr r2, [r11, #0xdf0]
	blx r2
	cmp r8, #0
	bgt _02075F5C
_02075FD0:
	mov r0, #0
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_02075FD8: .word 0x04000006
_02075FDC: .word unk_020BAFD8
	arm_func_end DseSwd_ReadMainBank

	arm_func_start Dse_DefaultSequenceSignalCallback
Dse_DefaultSequenceSignalCallback: ; 0x02075FE0
	mov r0, #0
	bx lr
	arm_func_end Dse_DefaultSequenceSignalCallback

	arm_func_start DseBgm_Load
DseBgm_Load: ; 0x02075FE8
	stmfd sp!, {r4, r5, r6, r7, r8, lr}
	mov r4, #4
	ldr r1, _020760E8 ; =0x736D646C
	ldr r2, _020760EC ; =0x00000415
	mov r3, r4
	mov r8, r0
	bl DseFile_CheckHeader
	cmp r0, #0
	ldmltfd sp!, {r4, r5, r6, r7, r8, pc}
	add r7, r0, #0x10000
	mov r0, r7
	bl DseBgm_GetSequenceById
	cmp r0, #0
	beq _0207603C
	sub r4, r4, #0x4d
	mov r0, r4
	mov r1, r7
	mov r2, #0
	bl Dse_SetError
	mov r0, r4
	ldmfd sp!, {r4, r5, r6, r7, r8, pc}
_0207603C:
	mov r6, #1
	mov r0, r8
	mov r1, r6
	bl Dse_FindSmdlSongChunk
	movs r5, r0
	bne _02076070
	sub r4, r6, #0x44
	mov r0, r4
	mov r1, r8
	mov r2, #0
	bl Dse_SetError
	mov r0, r4
	ldmfd sp!, {r4, r5, r6, r7, r8, pc}
_02076070:
	ldrb r0, [r5, #6]
	ldrb r1, [r5, #7]
	ldr r2, _020760F0 ; =0x7165736D
	bl DseSequence_AllocateNew
	movs r4, r0
	subeq r0, r6, #0x81
	ldmeqfd sp!, {r4, r5, r6, r7, r8, pc}
	str r7, [r4, #0x28]
	mov r1, r5
	str r8, [r4, #0x1c]
	bl DseSequence_LoadSong
	mov r1, #0
	ldr r0, _020760F4 ; =0x04000208
	strb r1, [r4, #0xa]
	ldrh r3, [r0]
	ldr r2, _020760F8 ; =0x020BA648
	strh r1, [r0]
	ldr r0, [r2]
	cmp r0, #0
	beq _020760D0
_020760C0:
	add r2, r0, #0xa4
	ldr r0, [r0, #0xa4]
	cmp r0, #0
	bne _020760C0
_020760D0:
	ldr r1, _020760F4 ; =0x04000208
	str r4, [r2]
	ldrh r0, [r1]
	strh r3, [r1]
	ldr r0, [r4, #0x28]
	ldmfd sp!, {r4, r5, r6, r7, r8, pc}
_020760E8: .word 0x736D646C
_020760EC: .word 0x00000415
_020760F0: .word 0x7165736D
_020760F4: .word 0x04000208
_020760F8: .word unk_020BA648
	arm_func_end DseBgm_Load

	arm_func_start DseBgm_Unload
DseBgm_Unload: ; 0x020760FC
	stmfd sp!, {r3, r4, r5, lr}
	mov r5, r0
	bl DseBgm_GetSequenceById
	cmp r0, #0
	bne _0207612C
	mvn r4, #0x41
	mov r0, r4
	mov r1, r5
	mov r2, #0
	bl Dse_SetError
	mov r0, r4
	ldmfd sp!, {r3, r4, r5, pc}
_0207612C:
	bl DseSequence_Unload
	mov r0, r5
	ldmfd sp!, {r3, r4, r5, pc}
	arm_func_end DseBgm_Unload

	arm_func_start DseBgm_IsPlaying
DseBgm_IsPlaying: ; 0x02076138
	stmfd sp!, {r3, lr}
	bl DseBgm_GetSequenceById
	cmp r0, #0
	mvneq r0, #0x41
	ldrnesb r0, [r0, #4]
	ldmfd sp!, {r3, pc}
	arm_func_end DseBgm_IsPlaying

	arm_func_start DseBgm_Resume
DseBgm_Resume: ; 0x02076150
	stmfd sp!, {r4, r5, r6, r7, r8, lr}
	mov r7, r0
	mov r6, r1
	mov r5, r2
	mov r8, #0
	bl DseBgm_GetSequenceById
	movs r4, r0
	bne _0207618C
	mvn r4, #0x41
	mov r0, r4
	mov r1, r7
	mov r2, r8
	bl Dse_SetError
	mov r0, r4
	ldmfd sp!, {r4, r5, r6, r7, r8, pc}
_0207618C:
	ldrsb r0, [r4, #1]
	cmp r0, #1
	bne _020761B4
	mvn r4, #0x3d
	mov r0, r4
	mov r1, r7
	mov r2, r8
	bl Dse_SetError
	mov r0, r4
	ldmfd sp!, {r4, r5, r6, r7, r8, pc}
_020761B4:
	ldrsb r0, [r4]
	cmp r0, #0
	moveq r5, #1
	cmp r5, #1
	bne _020761F0
	ldrsb r0, [r4, #4]
	cmp r0, #1
	bne _020761E0
	mov r0, r7
	mov r1, #0
	bl DseBgm_Stop
_020761E0:
	mov r0, r4
	bl DseSequence_Reset
	cmp r0, #0
	ldmltfd sp!, {r4, r5, r6, r7, r8, pc}
_020761F0:
	str r8, [r4, #0x68]
	strh r8, [r4, #0x74]
	strb r5, [r4, #2]
	bl FUN_02074f80
	cmp r0, #0
	ldrnesb r0, [r4, #9]
	mov r1, r8
	mov r2, r8
	cmpne r0, #0
	movne r5, #1
	moveq r5, #0
	mov r0, r4
	mov r3, r6
	strb r5, [r4, #8]
	bl DseSequence_Start
	cmp r0, #0
	movge r0, r8
	ldmfd sp!, {r4, r5, r6, r7, r8, pc}
	arm_func_end DseBgm_Resume

	arm_func_start DseBgm_Stop
DseBgm_Stop: ; 0x02076238
	stmfd sp!, {r4, r5, r6, lr}
	mov r6, r0
	mov r5, r1
	bl DseBgm_GetSequenceById
	cmp r0, #0
	bne _0207626C
	mvn r4, #0x41
	mov r0, r4
	mov r1, r6
	mov r2, #0
	bl Dse_SetError
	mov r0, r4
	ldmfd sp!, {r4, r5, r6, pc}
_0207626C:
	mov r4, #0
	mov r1, r5
	mov r2, r4
	bl DseSequence_Stop
	mov r0, r4
	ldmfd sp!, {r4, r5, r6, pc}
	arm_func_end DseBgm_Stop

	arm_func_start DseBgm_StopAll
DseBgm_StopAll: ; 0x02076284
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	ldr r3, _020762DC ; =0x04000208
	mov r2, #0
	ldrh r4, [r3]
	ldr r1, _020762E0 ; =0x020B9FD8
	mov r7, r0
	strh r2, [r3]
	ldr r6, [r1, #0x670]
	cmp r6, #0
	beq _020762CC
	mov r5, r2
_020762B0:
	mov r0, r6
	mov r1, r7
	mov r2, r5
	bl DseSequence_Stop
	ldr r6, [r6, #0xa4]
	cmp r6, #0
	bne _020762B0
_020762CC:
	ldr r1, _020762DC ; =0x04000208
	ldrh r0, [r1]
	strh r4, [r1]
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_020762DC: .word 0x04000208
_020762E0: .word unk_020B9FD8
	arm_func_end DseBgm_StopAll

	arm_func_start DseBgm_SetFades
DseBgm_SetFades: ; 0x020762E4
	stmfd sp!, {r3, r4, r5, lr}
	mov r5, r0
	mov r4, r1
	bl DseBgm_GetSequenceById
	cmp r0, #0
	bne _02076318
	mvn r4, #0x41
	mov r0, r4
	mov r1, r5
	mov r2, #0
	bl Dse_SetError
	mov r0, r4
	ldmfd sp!, {r3, r4, r5, pc}
_02076318:
	mov r1, r4
	bl DseSequence_SetFades
	mov r0, #0
	ldmfd sp!, {r3, r4, r5, pc}
	arm_func_end DseBgm_SetFades

	arm_func_start DseSequence_Start
DseSequence_Start: ; 0x02076328
	stmfd sp!, {r3, r4, r5, lr}
	mov r4, r0
	mov r5, r3
	strh r1, [r4, #0x2c]
	strb r2, [r4, #0x14]
	ldrsh r2, [r5, #2]
	cmp r2, #0
	mvnlt r0, #0
	blt _02076360
	ldr r1, _020763B4 ; =0x020B9FD8
	mov r0, #0x3e8
	ldrsh r1, [r1, #0x28]
	smulbb r0, r2, r0
	bl _s32_div_f
_02076360:
	mov r2, #0
	strh r0, [r4, #0x1a]
	mov r0, r4
	mov r1, r5
	strb r2, [r4, #2]
	strb r2, [r4, #7]
	bl DseSequence_SetFades
	ldrsb r0, [r4, #8]
	cmp r0, #0
	bne _020763A4
	ldrsb r0, [r4, #2]
	cmp r0, #0
	bne _0207639C
	ldr r0, [r4, #0x24]
	bl DseSynth_RestoreHeldNotes
_0207639C:
	mov r0, #1
	strb r0, [r4, #5]
_020763A4:
	mov r0, #1
	strb r0, [r4, #4]
	mov r0, #0
	ldmfd sp!, {r3, r4, r5, pc}
_020763B4: .word unk_020B9FD8
	arm_func_end DseSequence_Start

	arm_func_start DseSequence_PauseList
DseSequence_PauseList: ; 0x020763B8
	stmfd sp!, {r4, r5, r6, r7, r8, lr}
	movs r4, r0
	beq _02076418
	ldr r7, _02076420 ; =0x04000208
	mov r8, #0
	mov r5, #1
_020763D0:
	ldrsb r0, [r4, #4]
	cmp r0, #1
	ldreqsb r0, [r4, #6]
	cmpeq r0, #0
	ldreqsb r0, [r4, #9]
	cmpeq r0, #1
	bne _0207640C
	strb r8, [r4, #5]
	ldrh r6, [r7]
	strh r8, [r7]
	ldr r0, [r4, #0x24]
	bl DseSynth_StopChannels
	ldrh r0, [r7]
	strh r6, [r7]
	strb r5, [r4, #8]
_0207640C:
	ldr r4, [r4, #0xa4]
	cmp r4, #0
	bne _020763D0
_02076418:
	mov r0, #0
	ldmfd sp!, {r4, r5, r6, r7, r8, pc}
_02076420: .word 0x04000208
	arm_func_end DseSequence_PauseList

	arm_func_start FUN_02076424
FUN_02076424: ; 0x02076424
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, lr}
	movs r10, r0
	mov r9, r1
	mov r8, r2
	mov r4, #0
	beq _0207650C
	mov r0, #0x3e8
	mul r11, r9, r0
_02076444:
	ldrsb r0, [r10, #8]
	cmp r0, #1
	bne _02076500
	cmp r8, #1
	bne _02076470
	str r4, [r10, #0x68]
	strh r4, [r10, #0x74]
	strb r4, [r10, #6]
	ldr r0, [r10, #0x24]
	mov r1, r4
	bl DseSynth_UpdateVoicesTimerAndVolume
_02076470:
	cmp r9, #0
	ldrsb r5, [r10, #0x98]
	moveq r7, r4
	beq _0207649C
	ldr r0, _02076514 ; =0x020B9FD8
	ldrsh r1, [r0, #0x28]
	mov r0, r11
	bl _u32_div_f
	mov r0, r0, lsl #0x10
	movs r7, r0, lsr #0x10
	moveq r7, #1
_0207649C:
	mov r1, r5, lsl #0x10
	str r1, [r10, #0x70]
	cmp r7, #0
	mov r6, r7
	streq r1, [r10, #0x68]
	beq _020764D0
	ldr r0, [r10, #0x68]
	subs r0, r1, r0
	moveq r6, r4
	beq _020764D0
	mov r1, r7
	bl _s32_div_f
	str r0, [r10, #0x6c]
_020764D0:
	strh r6, [r10, #0x74]
	cmp r7, #0
	ldrneb r0, [r10, #0xc]
	orrne r0, r0, #4
	strneb r0, [r10, #0xc]
	bne _020764F4
	ldr r0, [r10, #0x24]
	mov r1, r5
	bl DseSynth_SetVolume
_020764F4:
	mov r0, #1
	strb r0, [r10, #5]
	strb r4, [r10, #8]
_02076500:
	ldr r10, [r10, #0xa4]
	cmp r10, #0
	bne _02076444
_0207650C:
	mov r0, #0
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_02076514: .word unk_020B9FD8
	arm_func_end FUN_02076424

	arm_func_start DseSequence_SetFades
DseSequence_SetFades: ; 0x02076518
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, lr}
	mov r4, r1
	ldrb r1, [r4]
	mov r5, r0
	mov r6, #0
	tst r1, #1
	beq _020765E4
	ldrsh r7, [r4, #4]
	ldrh r1, [r4, #6]
	cmp r7, #0
	moveq r7, #0x100
	cmp r1, #0
	moveq r8, #0
	beq _02076570
	mov r0, #0x3e8
	mul r0, r1, r0
	ldr r1, _02076804 ; =0x020B9FD8
	ldrsh r1, [r1, #0x28]
	bl _u32_div_f
	mov r0, r0, lsl #0x10
	movs r8, r0, lsr #0x10
	moveq r8, #1
_02076570:
	mov r1, r7, lsl #0x10
	cmp r8, #0
	mov r7, r8
	str r1, [r5, #0x50]
	streq r1, [r5, #0x48]
	beq _020765A4
	ldr r0, [r5, #0x48]
	subs r0, r1, r0
	moveq r7, #0
	beq _020765A4
	mov r1, r8
	bl _s32_div_f
	str r0, [r5, #0x4c]
_020765A4:
	strh r7, [r5, #0x54]
	cmp r8, #0
	bne _020765D8
	ldr r1, [r5, #0x48]
	ldrb r0, [r5, #0x17]
	mov r1, r1, asr #0x10
	smulbb r0, r1, r0
	movs r1, r0, lsr #8
	ldr r0, _02076808 ; =0x03938700
	moveq r1, #1
	bl _u32_div_f
	str r0, [r5, #0x44]
	b _020765E4
_020765D8:
	ldrb r0, [r5, #0xc]
	orr r0, r0, #1
	strb r0, [r5, #0xc]
_020765E4:
	ldrb r0, [r4]
	tst r0, #2
	beq _02076688
	ldrh r1, [r4, #0xa]
	ldrsh r7, [r4, #8]
	cmp r1, #0
	moveq r8, #0
	beq _02076624
	mov r0, #0x3e8
	mul r0, r1, r0
	ldr r1, _02076804 ; =0x020B9FD8
	ldrsh r1, [r1, #0x28]
	bl _u32_div_f
	mov r0, r0, lsl #0x10
	movs r8, r0, lsr #0x10
	moveq r8, #1
_02076624:
	mov r1, r7, lsl #0x10
	cmp r8, #0
	mov r7, r8
	str r1, [r5, #0x60]
	streq r1, [r5, #0x58]
	beq _02076658
	ldr r0, [r5, #0x58]
	subs r0, r1, r0
	moveq r7, #0
	beq _02076658
	mov r1, r8
	bl _s32_div_f
	str r0, [r5, #0x5c]
_02076658:
	cmp r8, #0
	ldrneb r0, [r5, #0xc]
	strh r7, [r5, #0x64]
	orrne r0, r0, #2
	strneb r0, [r5, #0xc]
	bne _02076688
	ldr r1, [r5, #0x58]
	ldr r0, [r5, #0x24]
	mov r1, r1, asr #0x10
	mov r1, r1, lsl #0x10
	mov r1, r1, asr #0x10
	bl DseSynth_SetBend
_02076688:
	ldrb r0, [r4]
	tst r0, #4
	beq _02076744
	ldrsb r0, [r5, #8]
	ldrsh r7, [r4, #0xc]
	ldrsh r1, [r4, #0xe]
	cmp r0, #1
	strb r7, [r5, #0x98]
	moveq r7, #0
	moveq r1, r7
	mov r0, r1, lsl #0x10
	movs r1, r0, lsr #0x10
	moveq r9, #0
	beq _020766E0
	mov r0, #0x3e8
	mul r0, r1, r0
	ldr r1, _02076804 ; =0x020B9FD8
	ldrsh r1, [r1, #0x28]
	bl _u32_div_f
	mov r0, r0, lsl #0x10
	movs r9, r0, lsr #0x10
	moveq r9, #1
_020766E0:
	mov r0, r7, lsl #0x18
	mov r0, r0, asr #0x18
	mov r1, r0, lsl #0x10
	cmp r9, #0
	mov r8, r9
	str r1, [r5, #0x70]
	streq r1, [r5, #0x68]
	beq _0207671C
	ldr r0, [r5, #0x68]
	subs r0, r1, r0
	moveq r8, #0
	beq _0207671C
	mov r1, r9
	bl _s32_div_f
	str r0, [r5, #0x6c]
_0207671C:
	cmp r9, #0
	ldrneb r0, [r5, #0xc]
	strh r8, [r5, #0x74]
	orrne r0, r0, #4
	strneb r0, [r5, #0xc]
	bne _02076744
	mov r1, r7, lsl #0x18
	ldr r0, [r5, #0x24]
	mov r1, r1, asr #0x18
	bl DseSynth_SetVolume
_02076744:
	ldrb r0, [r4]
	tst r0, #8
	beq _020767F4
	ldrh r0, [r4, #0x10]
	ldrh r1, [r4, #0x12]
	mov r0, r0, lsl #0x18
	cmp r1, #0
	mov r4, r0, asr #0x18
	moveq r7, #0
	beq _0207678C
	mov r0, #0x3e8
	mul r0, r1, r0
	ldr r1, _02076804 ; =0x020B9FD8
	ldrsh r1, [r1, #0x28]
	bl _u32_div_f
	mov r0, r0, lsl #0x10
	movs r7, r0, lsr #0x10
	moveq r7, #1
_0207678C:
	mov r1, r4, lsl #0x10
	cmp r7, #0
	mov r4, r7
	str r1, [r5, #0x80]
	streq r1, [r5, #0x78]
	beq _020767C0
	ldr r0, [r5, #0x78]
	subs r0, r1, r0
	moveq r4, #0
	beq _020767C0
	mov r1, r7
	bl _s32_div_f
	str r0, [r5, #0x7c]
_020767C0:
	cmp r7, #0
	ldrneb r0, [r5, #0xc]
	strh r4, [r5, #0x84]
	orrne r0, r0, #0x10
	strneb r0, [r5, #0xc]
	bne _020767F4
	ldr r1, [r5, #0x78]
	ldr r0, [r5, #0x24]
	mov r1, r1, asr #0x10
	mov r1, r1, lsl #0x18
	mov r1, r1, asr #0x18
	and r1, r1, #0xff
	bl DseSynth_SetPan
_020767F4:
	ldrsh r0, [r5, #0x1a]
	cmp r0, #0
	strlth r6, [r5, #0x1a]
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
_02076804: .word unk_020B9FD8
_02076808: .word 0x03938700
	arm_func_end DseSequence_SetFades

	arm_func_start DseSequence_Reset
DseSequence_Reset: ; 0x0207680C
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	mov r5, r0
	mov r4, #0
	ldr r0, [r5, #0x24]
	ldr r2, [r5, #0x28]
	mov r1, r4
	bl DseSynth_ResetAndSetBankAndSequence
	ldrb r1, [r5, #0x13]
	ldr r0, [r5, #0x24]
	mov r2, r4
	bl DseSynth_SetGlobalVolumeIndex
	mov r3, #1
	ldrb r2, [r5, #0x15]
	ldr r0, _0207695C ; =0x020B9FD8
	ldrb r1, [r5, #0xf]
	str r4, [r5, #4]
	strb r4, [r5, #3]
	strb r3, [r5, #9]
	strb r4, [r5, #0xd]
	ldr r6, [r0, #0x2c]
	mov r3, #0x78
	str r6, [r5, #0x30]
	str r4, [r5, #0x34]
	str r4, [r5, #0x38]
	strb r3, [r5, #0x17]
	str r4, [r5, #0x3c]
	ldrsh r0, [r0, #0x28]
	mov r2, r2, lsl #3
	ldr r7, _02076960 ; =0x0007A120
	mul r12, r2, r0
	mov r6, #0x1000000
	mov r3, #0x7f0000
	mov r2, #0x400000
	mov r0, #0x7f
	str r12, [r5, #0x40]
	str r7, [r5, #0x44]
	strb r4, [r5, #0xc]
	str r6, [r5, #0x48]
	strh r4, [r5, #0x54]
	str r4, [r5, #0x58]
	strh r4, [r5, #0x64]
	str r3, [r5, #0x68]
	strh r4, [r5, #0x74]
	str r2, [r5, #0x78]
	strh r4, [r5, #0x84]
	strb r0, [r5, #0x98]
	cmp r1, #0
	add r12, r5, #0xa8
	ble _0207694C
	mov r1, r0
	mov r3, #1
	mov r2, r4
	mov r0, #4
	mov lr, #0xc4
_020768E4:
	ldr r6, [r12, #0x18]
	cmp r6, #0
	beq _0207692C
	strb r3, [r12, #2]
	strh r2, [r12, #0xa]
	ldr r6, [r12, #0x18]
	str r6, [r12, #0x1c]
	str r2, [r12, #0xc]
	str r2, [r12, #0x14]
	strb r1, [r12, #5]
	strb r0, [r12, #4]
	strb r2, [r12, #6]
	str r2, [r12, #0x20]
	ldr r7, [r5, #0x24]
	ldrb r6, [r12, #3]
	add r7, r7, #0x10
	mla r7, r6, lr, r7
	str r7, [r12, #0x54]
_0207692C:
	ldrb r7, [r5, #0xd]
	ldrb r6, [r5, #0xf]
	add r4, r4, #1
	add r7, r7, #1
	strb r7, [r5, #0xd]
	cmp r4, r6
	add r12, r12, #0x5c
	blt _020768E4
_0207694C:
	mov r0, #1
	strb r0, [r5]
	mov r0, #0
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_0207695C: .word unk_020B9FD8
_02076960: .word 0x0007A120
	arm_func_end DseSequence_Reset

	arm_func_start DseSequence_Stop
DseSequence_Stop: ; 0x02076964
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	mov r6, r0
	ldrsb r0, [r6, #1]
	mov r5, r2
	mov r4, #0
	cmp r0, #1
	moveq r0, r4
	ldmeqfd sp!, {r3, r4, r5, r6, r7, pc}
	ldrsb r0, [r6, #4]
	cmp r0, #0
	moveq r0, r4
	ldmeqfd sp!, {r3, r4, r5, r6, r7, pc}
	cmp r1, #0
	beq _02076A38
	ldr r0, [r6, #0x68]
	movs r0, r0, asr #0x10
	beq _02076A38
	mov r5, #1
	mov r7, r4
	strb r5, [r6, #7]
	strb r7, [r6, #0x98]
	cmp r1, #0
	beq _020769E0
	mov r0, #0x3e8
	mul r0, r1, r0
	ldr r1, _02076A78 ; =0x020B9FD8
	ldrsh r1, [r1, #0x28]
	bl _u32_div_f
	mov r0, r0, lsl #0x10
	movs r7, r0, lsr #0x10
	moveq r7, r5
_020769E0:
	cmp r7, #0
	mov r5, r7
	str r4, [r6, #0x70]
	streq r4, [r6, #0x68]
	beq _02076A10
	ldr r0, [r6, #0x68]
	rsbs r0, r0, #0
	moveq r5, r4
	beq _02076A10
	mov r1, r7
	bl _s32_div_f
	str r0, [r6, #0x6c]
_02076A10:
	cmp r7, #0
	ldrneb r0, [r6, #0xc]
	strh r5, [r6, #0x74]
	orrne r0, r0, #4
	strneb r0, [r6, #0xc]
	bne _02076A70
	ldr r0, [r6, #0x24]
	mov r1, #0
	bl DseSynth_SetVolume
	b _02076A70
_02076A38:
	ldr r0, _02076A7C ; =0x04000208
	str r4, [r6, #4]
	strb r4, [r6, #8]
	ldrh r7, [r0]
	strh r4, [r0]
	ldr r0, [r6, #0x24]
	bl DseSynth_StopChannels
	cmp r5, #1
	bne _02076A64
	ldr r0, [r6, #0x24]
	bl DseSynth_ClearHeldNotes
_02076A64:
	ldr r1, _02076A7C ; =0x04000208
	ldrh r0, [r1]
	strh r7, [r1]
_02076A70:
	mov r0, #0
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_02076A78: .word unk_020B9FD8
_02076A7C: .word 0x04000208
	arm_func_end DseSequence_Stop

	arm_func_start Dse_FindSmdlSongChunk
Dse_FindSmdlSongChunk: ; 0x02076A80
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	ldr r6, _02076AE4 ; =0x736F6E67
	ldr r7, _02076AE8 ; =0x656F6420
	mov r5, r1
	add r4, r0, #0x40
_02076A94:
	ldr r0, [r4]
	bl DseUtil_ByteSwap32
	cmp r0, r7
	moveq r0, #0
	ldmeqfd sp!, {r3, r4, r5, r6, r7, pc}
	cmp r0, r6
	ldreqsh r1, [r4, #0x10]
	addeq r0, r4, #0x10
	cmpeq r1, r5
	ldmeqfd sp!, {r3, r4, r5, r6, r7, pc}
	ldrb r1, [r4, #8]
	ldr r0, [r4, #0xc]
	sub r2, r1, #1
	add r0, r0, #0x10
	mvn r1, r2
	add r0, r0, r2
	and r0, r1, r0
	add r4, r4, r0
	b _02076A94
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_02076AE4: .word 0x736F6E67
_02076AE8: .word 0x656F6420
	arm_func_end Dse_FindSmdlSongChunk

	arm_func_start DseSequence_LoadSong
DseSequence_LoadSong: ; 0x02076AEC
	stmfd sp!, {r4, r5, r6, r7, r8, r9, r10, lr}
	mov r7, r0
	mov r6, r1
	ldrb r1, [r6, #6]
	ldrb r0, [r7, #0xe]
	cmp r1, r0
	mvnhi r0, #0
	ldmhifd sp!, {r4, r5, r6, r7, r8, r9, r10, pc}
	ldrh r0, [r6, #2]
	add r4, r6, #0x30
	add r5, r7, #0xa8
	mov r0, r0, asr #3
	strb r0, [r7, #0x15]
	ldrb r0, [r6, #4]
	strb r0, [r7, #0x11]
	ldrb r0, [r6, #6]
	strb r0, [r7, #0xf]
	ldrb r0, [r6, #7]
	strb r0, [r7, #0x10]
	ldrb r0, [r6, #0x1b]
	strb r0, [r7, #0x12]
	ldrb r0, [r6, #0x19]
	strb r0, [r7, #0x13]
	ldrb r0, [r6, #0x1a]
	strb r0, [r7, #0x14]
	ldrb r0, [r6, #0x18]
	tst r0, #0x80
	movne r0, #1
	moveq r0, #0
	strb r0, [r7, #0xb]
	ldr r0, [r6, #0x30]
	bl DseUtil_ByteSwap32
	ldr r9, _02076BE0 ; =0x74726B20
	ldr r10, _02076BE4 ; =0x626E6B6C
	ldr r8, _02076BE8 ; =0x656F6320
	b _02076BCC
_02076B7C:
	cmp r0, r10
	beq _02076BA8
	cmp r0, r9
	bne _02076BA8
	add r0, r4, #0x14
	str r0, [r5, #0x18]
	ldrb r0, [r4, #0x10]
	strh r0, [r5]
	ldrb r0, [r4, #0x11]
	strb r0, [r5, #3]
	add r5, r5, #0x5c
_02076BA8:
	ldrb r1, [r4, #8]
	ldr r0, [r4, #0xc]
	sub r2, r1, #1
	add r0, r0, #0x10
	mvn r1, r2
	add r0, r0, r2
	and r0, r1, r0
	ldr r0, [r4, r0]!
	bl DseUtil_ByteSwap32
_02076BCC:
	cmp r0, r8
	bne _02076B7C
	str r6, [r7, #0x20]
	mov r0, #0
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, pc}
_02076BE0: .word 0x74726B20
_02076BE4: .word 0x626E6B6C
_02076BE8: .word 0x656F6320
	arm_func_end DseSequence_LoadSong

	arm_func_start DseBgm_GetSequenceById
DseBgm_GetSequenceById: ; 0x02076BEC
	ldr r3, _02076C34 ; =0x04000208
	ldr r1, _02076C38 ; =0x020B9FD8
	ldrh r12, [r3]
	mov r2, #0
	strh r2, [r3]
	ldr r3, [r1, #0x670]
	b _02076C0C
_02076C08:
	ldr r3, [r3, #0xa4]
_02076C0C:
	cmp r3, #0
	beq _02076C20
	ldr r1, [r3, #0x28]
	cmp r1, r0
	bne _02076C08
_02076C20:
	ldr r2, _02076C34 ; =0x04000208
	mov r0, r3
	ldrh r1, [r2]
	strh r12, [r2]
	bx lr
_02076C34: .word 0x04000208
_02076C38: .word unk_020B9FD8
	arm_func_end DseBgm_GetSequenceById

	arm_func_start DseSequence_AllocateNew
DseSequence_AllocateNew: ; 0x02076C3C
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, lr}
	mov r9, r0
	mov r0, #0x5c
	mul r0, r9, r0
	mov r5, #0x10
	mov r8, r1
	mov r1, r5
	add r0, r0, #0xa8
	mov r7, r2
	bl DseMem_AllocateFirstFit
	movs r6, r0
	bne _02076C88
	mov r4, #0
	mov r1, r4
	mov r2, r4
	sub r0, r5, #0x94
	bl Dse_SetError
	mov r0, r4
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
_02076C88:
	mov r5, #0
	str r5, [r6]
	str r5, [r6, #4]
	str r5, [r6, #8]
	strb r5, [r6, #0x16]
	str r5, [r6, #0x30]
	str r5, [r6, #0x28]
	strh r5, [r6, #0x2c]
	mov r4, #6
	strb r4, [r6, #0x15]
	strb r5, [r6, #0xd]
	and r0, r9, #0xff
	strb r0, [r6, #0xe]
	strb r0, [r6, #0xf]
	strb r8, [r6, #0x10]
	strb r5, [r6, #0x11]
	strb r5, [r6, #0x12]
	strb r5, [r6, #0x13]
	str r5, [r6, #0x1c]
	ldr r1, _02076D64 ; =0x76656400
	and r2, r7, #0xff
	mov r0, r8
	str r5, [r6, #0x20]
	orr r1, r2, r1
	bl DseSynth_AllocateNew
	str r0, [r6, #0x24]
	cmp r0, #0
	bne _02076D18
	mov r0, r6
	bl DseMem_Free
	mov r1, r5
	mov r2, r5
	sub r0, r4, #0x8c
	bl Dse_SetError
	mov r0, r5
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
_02076D18:
	mov r0, #0x78
	strb r0, [r6, #0x17]
	str r5, [r6, #0x3c]
	ldr r0, _02076D68 ; =0x020B9FD8
	ldrb r2, [r6, #0x15]
	ldrsh r0, [r0, #0x28]
	ldr r1, _02076D6C ; =0x0007A120
	mov r2, r2, lsl #3
	mul r0, r2, r0
	str r0, [r6, #0x40]
	ldr r0, _02076D70 ; =Dse_DefaultSequenceSignalCallback
	str r1, [r6, #0x44]
	str r0, [r6, #0x9c]
	str r5, [r6, #0xa0]
	mov r0, r6
	str r5, [r6, #0xa4]
	bl DseSequence_InitTracks
	mov r0, r6
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
_02076D64: .word 0x76656400
_02076D68: .word unk_020B9FD8
_02076D6C: .word 0x0007A120
_02076D70: .word Dse_DefaultSequenceSignalCallback
	arm_func_end DseSequence_AllocateNew

	arm_func_start DseSequence_Unload
DseSequence_Unload: ; 0x02076D74
	stmfd sp!, {r4, lr}
	mov r4, r0
	ldrsb r1, [r4, #4]
	cmp r1, #1
	bne _02076D94
	mov r1, #0
	mov r2, r1
	bl DseSequence_Stop
_02076D94:
	ldr r1, _02076DF4 ; =0x04000208
	mov r0, #0
	ldrh r3, [r1]
	ldr r2, _02076DF8 ; =0x020BA648
	strh r0, [r1]
	b _02076DB0
_02076DAC:
	add r2, r0, #0xa4
_02076DB0:
	ldr r0, [r2]
	cmp r0, #0
	beq _02076DC4
	cmp r0, r4
	bne _02076DAC
_02076DC4:
	cmp r0, #0
	ldrne r0, [r4, #0xa4]
	ldr r1, _02076DF4 ; =0x04000208
	strne r0, [r2]
	ldrh r0, [r1]
	strh r3, [r1]
	ldr r0, [r4, #0x24]
	bl DseSynth_Unload
	mov r0, r4
	bl DseMem_Free
	mov r0, #0
	ldmfd sp!, {r4, pc}
_02076DF4: .word 0x04000208
_02076DF8: .word unk_020BA648
	arm_func_end DseSequence_Unload

	arm_func_start DseSequence_InitTracks
DseSequence_InitTracks: ; 0x02076DFC
	ldrb r1, [r0, #0xf]
	add r3, r0, #0xa8
	mov r12, #0
	cmp r1, #0
	bxle lr
	mov r2, r12
_02076E14:
	strb r2, [r3, #2]
	strh r12, [r3]
	strb r12, [r3, #3]
	strh r2, [r3, #0xa]
	str r2, [r3, #0x18]
	str r2, [r3, #0x1c]
	str r2, [r3, #0x20]
	str r2, [r3, #0x54]
	ldrb r1, [r0, #0xf]
	add r12, r12, #1
	add r3, r3, #0x5c
	cmp r12, r1
	blt _02076E14
	bx lr
	arm_func_end DseSequence_InitTracks

	arm_func_start Dse_SysSetupNoteList
Dse_SysSetupNoteList: ; 0x02076E4C
	stmfd sp!, {r4, r5, r6, lr}
	ldr r2, _02076EC0 ; =0x020B9FD8
	mov r4, #0
	mvn r3, #0
	mov r0, #0xc
_02076E60:
	mla r1, r4, r0, r2
	add r4, r4, #1
	str r3, [r1, #0x5c]
	cmp r4, #0x80
	blt _02076E60
	mov r0, #0xc
	ldr r4, _02076EC4 ; =0x020BA030
	ldr r3, _02076EC0 ; =0x020B9FD8
	mov r6, #0
	mov r1, r0
_02076E88:
	add r12, r6, #1
	mul lr, r12, r0
	mla r2, r6, r1, r3
	add r5, r4, lr
	mov r6, r12
	str r5, [r2, #0x60]
	cmp r12, #0x7f
	blt _02076E88
	ldr r1, _02076EC8 ; =0x020BA038
	mov r2, #0
	ldr r0, _02076EC0 ; =0x020B9FD8
	str r2, [r1, lr]
	str r4, [r0, #0x658]
	ldmfd sp!, {r4, r5, r6, pc}
_02076EC0: .word unk_020B9FD8
_02076EC4: .word unk_020BA030
_02076EC8: .word unk_020BA038
	arm_func_end Dse_SysSetupNoteList

	arm_func_start DseSe_SysReset
DseSe_SysReset: ; 0x02076ECC
	stmfd sp!, {r4, r5, r6, r7, r8, r9, r10, lr}
	ldr r2, _02076FB8 ; =0x020B9FD8
	mov r9, r0
	ldrsb r0, [r2]
	mov r8, r1
	mov r1, #0
	cmp r0, #0
	bne _02076F04
	mvn r4, #0xc0
	mov r0, r4
	mov r2, r1
	bl Dse_SetError
	mov r0, r4
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, pc}
_02076F04:
	ldr r4, [r2, #0x674]
	ldr r0, _02076FBC ; =0x04000208
	str r1, [r2, #0x674]
	ldrh r5, [r0]
	cmp r4, #0
	strh r1, [r0]
	beq _02076F34
_02076F20:
	mov r0, r4
	ldr r4, [r4, #0xa4]
	bl DseSequence_Unload
	cmp r4, #0
	bne _02076F20
_02076F34:
	ldr r1, _02076FBC ; =0x04000208
	mov r6, #0
	ldrh r0, [r1]
	ldr r0, _02076FB8 ; =0x020B9FD8
	mov r4, r6
	strh r5, [r1]
	strb r9, [r0, #0x42]
	strb r8, [r0, #0x43]
	ldrh r7, [r1]
	cmp r9, #0
	ldr r5, _02076FC0 ; =0x020BA64C
	strh r6, [r1]
	ble _02076FA4
	mov r0, r8, lsl #0x10
	ldr r8, _02076FC4 ; =0x71657365
	mov r10, r0, lsr #0x10
_02076F74:
	mov r0, r10
	mov r1, r10
	mov r2, r8
	bl DseSequence_AllocateNew
	cmp r0, #0
	mvneq r6, #0x83
	beq _02076FA4
	add r4, r4, #1
	str r0, [r5]
	cmp r4, r9
	add r5, r0, #0xa4
	blt _02076F74
_02076FA4:
	ldr r2, _02076FBC ; =0x04000208
	mov r0, r6
	ldrh r1, [r2]
	strh r7, [r2]
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, pc}
_02076FB8: .word unk_020B9FD8
_02076FBC: .word 0x04000208
_02076FC0: .word unk_020BA64C
_02076FC4: .word 0x71657365
	arm_func_end DseSe_SysReset

	arm_func_start DseSe_Load
DseSe_Load: ; 0x02076FC8
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, lr}
	mov r6, #4
	ldr r1, _02077164 ; =0x7365646C
	ldr r2, _02077168 ; =0x00000415
	mov r3, r6
	mov r5, r0
	mov r7, #0
	bl DseFile_CheckHeader
	movs r4, r0
	ldmmifd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
	mov r0, r4, lsl #0x10
	mov r0, r0, lsr #0x10
	bl DseSe_GetById
	cmp r0, #0
	beq _02077020
	sub r5, r6, #0x4e
	mov r0, r5
	mov r1, r4
	mov r2, r7
	bl Dse_SetError
	mov r0, r5
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_02077020:
	mov r6, #0x10
	ldr r2, _0207716C ; =0x66646573
	mov r1, r6
	mov r0, #0x1c
	bl DseMem_AllocateFirstFit
	movs r10, r0
	bne _02077058
	sub r5, r6, #0x90
	mov r0, r5
	mov r1, r4
	mov r2, r7
	bl Dse_SetError
	mov r0, r5
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_02077058:
	str r5, [r10]
	ldrsh r1, [r5, #0x30]
	mov r0, #1
	strh r1, [r10, #4]
	strh r4, [r10, #6]
	str r7, [r10, #8]
	str r7, [r10, #0xc]
	str r7, [r10, #0x10]
	str r7, [r10, #0x14]
	strb r0, [r10, #0x18]
	ldrb r0, [r5, #0x35]
	cmp r0, #0
	beq _0207711C
	add r8, r5, #0x40
	ldr r11, _02077170 ; =0x73657120
	ldr r6, _02077174 ; =0x656F6420
	ldr r5, _02077178 ; =0x626E6B6C
	ldr r4, _0207717C ; =0x6D63726C
_020770A0:
	ldr r0, [r8]
	mov r9, r7
	bl DseUtil_ByteSwap32
	cmp r0, r6
	bhi _020770C8
	bhs _020770EC
	cmp r0, r5
	addeq r0, r8, #0x10
	streq r0, [r10, #0x14]
	b _020770F0
_020770C8:
	cmp r0, r4
	bhi _020770DC
	addeq r0, r8, #0x10
	streq r0, [r10, #0x10]
	b _020770F0
_020770DC:
	cmp r0, r11
	addeq r0, r8, #0x10
	streq r0, [r10, #0xc]
	b _020770F0
_020770EC:
	mov r9, #1
_020770F0:
	cmp r9, #1
	beq _0207711C
	ldrb r1, [r8, #8]
	ldr r0, [r8, #0xc]
	sub r2, r1, #1
	add r0, r0, #0x10
	mvn r1, r2
	add r0, r0, r2
	and r0, r1, r0
	add r8, r8, r0
	b _020770A0
_0207711C:
	ldr r1, _02077180 ; =0x04000208
	mov r0, #0
	ldrh r3, [r1]
	ldr r2, _02077184 ; =0x020BA650
	strh r0, [r1]
	ldr r0, [r2]
	cmp r0, #0
	beq _0207714C
_0207713C:
	add r2, r0, #8
	ldr r0, [r0, #8]
	cmp r0, #0
	bne _0207713C
_0207714C:
	ldr r1, _02077180 ; =0x04000208
	str r10, [r2]
	ldrh r0, [r1]
	strh r3, [r1]
	ldrh r0, [r10, #6]
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_02077164: .word 0x7365646C
_02077168: .word 0x00000415
_0207716C: .word 0x66646573
_02077170: .word 0x73657120
_02077174: .word 0x656F6420
_02077178: .word 0x626E6B6C
_0207717C: .word 0x6D63726C
_02077180: .word 0x04000208
_02077184: .word unk_020BA650
	arm_func_end DseSe_Load

	arm_func_start DseSe_Unload
DseSe_Unload: ; 0x02077188
	stmfd sp!, {r3, r4, r5, lr}
	mov r4, r0
	bl DseSe_StopSeq
	ldr r1, _02077218 ; =0x04000208
	mov r0, #0
	ldrh r3, [r1]
	ldr r5, _0207721C ; =0x020BA650
	strh r0, [r1]
	b _020771B0
_020771AC:
	add r5, r0, #8
_020771B0:
	ldr r0, [r5]
	cmp r0, #0
	beq _020771C8
	ldrh r1, [r0, #6]
	cmp r1, r4
	bne _020771AC
_020771C8:
	cmp r0, #0
	bne _020771F8
	ldr r12, _02077218 ; =0x04000208
	mvn r5, #0x43
	ldrh r0, [r12]
	mov r1, r4
	mov r2, #0
	mov r0, r5
	strh r3, [r12]
	bl Dse_SetError
	mov r0, r5
	ldmfd sp!, {r3, r4, r5, pc}
_020771F8:
	ldr r1, [r0, #8]
	ldr r2, _02077218 ; =0x04000208
	str r1, [r5]
	ldrh r1, [r2]
	strh r3, [r2]
	bl DseMem_Free
	mov r0, #0
	ldmfd sp!, {r3, r4, r5, pc}
_02077218: .word 0x04000208
_0207721C: .word unk_020BA650
	arm_func_end DseSe_Unload

	arm_func_start DseSe_HasPlayingInstances
DseSe_HasPlayingInstances: ; 0x02077220
	cmn r0, #1
	beq _02077298
	ldr r2, _020772E4 ; =0x020B9FD8
	ldr r3, [r2, #0x674]
	cmp r3, #0
	beq _020772DC
_02077238:
	ldrsb r2, [r3, #4]
	cmp r2, #1
	ldreq r2, [r3, #0x28]
	cmpeq r2, r0
	bne _02077288
	cmp r1, #0
	bne _02077268
	ldrsb r0, [r3, #6]
	cmp r0, #0
	moveq r0, #1
	movne r0, #2
	bx lr
_02077268:
	ldrh r2, [r3, #0x2c]
	cmp r2, r1
	bne _02077288
	ldrsb r0, [r3, #6]
	cmp r0, #0
	moveq r0, #1
	movne r0, #2
	bx lr
_02077288:
	ldr r3, [r3, #0xa4]
	cmp r3, #0
	bne _02077238
	b _020772DC
_02077298:
	ldr r0, _020772E4 ; =0x020B9FD8
	ldr r2, [r0, #0x674]
	cmp r2, #0
	beq _020772DC
_020772A8:
	ldrsb r0, [r2, #4]
	cmp r0, #1
	ldreqh r0, [r2, #0x2c]
	cmpeq r0, r1
	bne _020772D0
	ldrsb r0, [r2, #6]
	cmp r0, #0
	moveq r0, #1
	movne r0, #2
	bx lr
_020772D0:
	ldr r2, [r2, #0xa4]
	cmp r2, #0
	bne _020772A8
_020772DC:
	mov r0, #0
	bx lr
_020772E4: .word unk_020B9FD8
	arm_func_end DseSe_HasPlayingInstances

	arm_func_start DseSe_Play
DseSe_Play: ; 0x020772E8
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, lr}
	mov r10, r0
	mov r0, r10, lsl #0x10
	mov r5, r0, lsr #0x10
	mov r0, r5
	mov r11, r1
	mov r9, r2
	bl DseSe_GetById
	movs r4, r0
	bne _0207732C
	mvn r4, #0x43
	mov r0, r4
	mov r1, r5
	mov r2, #0
	bl Dse_SetError
	mov r0, r4
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_0207732C:
	mov r0, r10, asr #0x10
	mov r1, r0, lsl #0x10
	ldr r5, [r4]
	ldr r2, [r4, #0xc]
	mov r0, r5
	mov r1, r1, asr #0x10
	bl DseSe_GetEffectSong
	movs r6, r0
	bne _0207736C
	mvn r4, #0x44
	mov r0, r4
	mov r1, r10
	mov r2, #0
	bl Dse_SetError2
	mov r0, r4
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_0207736C:
	ldrb r0, [r6, #0x18]
	ldrb r1, [r9]
	ldrb r8, [r6, #0x1a]
	tst r0, #1
	moveq r0, #1
	movne r0, #0
	mov r0, r0, lsl #0x18
	mov r2, r0, asr #0x18
	tst r1, #0x40
	bne _020773B8
	cmp r8, #0
	ldrb r1, [r6, #0x1c]
	bne _020773AC
	mov r0, r10
	bl DseSe_CheckTooManyInstances
	b _020773C4
_020773AC:
	mov r0, r8
	bl DseSe_CheckTooManyInstancesInGroup
	b _020773C4
_020773B8:
	mov r0, r11
	mov r1, r2
	bl FUN_020776f4
_020773C4:
	and r0, r0, #0xff
	cmp r0, #0
	movne r0, #0
	ldmnefd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
	ldrb r0, [r6, #0x1b]
	ldrb r1, [r6, #0x19]
	ldrb r2, [r6, #0x1c]
	bl DseSe_GetBestSeqAllocation
	movs r7, r0
	moveq r0, #0
	ldmeqfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
	ldrsb r1, [r7, #4]
	cmp r1, #1
	bne _02077408
	mov r1, #0
	mov r2, #1
	bl DseSequence_Stop
_02077408:
	str r10, [r7, #0x28]
	str r5, [r7, #0x1c]
	mov r0, r7
	mov r5, #0
	bl DseSequence_InitTracks
	mov r0, r7
	mov r1, r6
	bl DseSequence_LoadSong
	movs r1, r0
	bpl _02077448
	mvn r4, #0x4e
	mov r0, r4
	mov r2, r10
	bl Dse_SetError
	mov r0, r4
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_02077448:
	mov r0, r7
	bl DseSequence_Reset
	str r5, [r7, #0x68]
	strh r5, [r7, #0x74]
	mov r6, #1
	strb r6, [r7, #2]
	ldrsb r0, [r4, #0x18]
	strb r0, [r7, #9]
	bl FUN_02074f80
	ldrsb r3, [r4, #0x18]
	mov r1, r11
	mov r2, r8
	and r0, r3, r0
	strb r0, [r7, #8]
	mov r0, r7
	mov r3, r9
	strb r6, [r7, #0xa]
	bl DseSequence_Start
	cmp r0, #0
	movge r0, r5
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
	arm_func_end DseSe_Play

	arm_func_start DseSe_GetEffectSong
DseSe_GetEffectSong: ; 0x0207749C
	cmp r1, #0
	movlt r0, #0
	bxlt lr
	ldrsh r3, [r0, #0x30]
	cmp r3, r1
	movle r0, #0
	bxle lr
	ldrb r3, [r0, #0x35]
	cmp r3, #0
	moveq r2, r0
	addeq r3, r0, #0x40
	movne r3, r2
	mov r0, r1, lsl #1
	ldrh r0, [r3, r0]
	cmp r0, #0
	moveq r0, #0
	addne r0, r2, r0
	bx lr
	arm_func_end DseSe_GetEffectSong

	arm_func_start DseSe_CheckTooManyInstances
DseSe_CheckTooManyInstances: ; 0x020774E4
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, lr}
	mov r10, r0
	movs r9, r1
	mov r0, #0
	ldmeqfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
	ldr r3, _020775E4 ; =0x04000208
	cmp r2, #1
	ldrh r1, [r3]
	str r1, [sp]
	strh r0, [r3]
	bne _02077598
	ldr r4, _020775E8 ; =0x020B9FD8
	mov r11, r0
	mov r6, r0
	mvn r5, #0x80000000
_02077520:
	ldr r1, [r4, #0x674]
	mov r7, r6
	mov r2, r5
	cmp r1, #0
	beq _02077568
_02077534:
	ldrsb r0, [r1, #4]
	cmp r0, #1
	ldreq r0, [r1, #0x28]
	cmpeq r0, r10
	bne _0207755C
	ldr r0, [r1, #0x30]
	add r7, r7, #1
	cmp r2, r0
	movhi r2, r0
	movhi r8, r1
_0207755C:
	ldr r1, [r1, #0xa4]
	cmp r1, #0
	bne _02077534
_02077568:
	cmp r7, r9
	blt _02077588
	cmp r8, #0
	beq _02077588
	mov r0, r8
	mov r1, r11
	mov r2, #1
	bl DseSequence_Stop
_02077588:
	cmp r7, r9
	bgt _02077520
	mov r0, #0
	b _020775D0
_02077598:
	ldr r1, _020775E8 ; =0x020B9FD8
	ldr r2, [r1, #0x674]
	cmp r2, #0
	beq _020775C8
_020775A8:
	ldrsb r1, [r2, #4]
	cmp r1, #1
	ldreq r1, [r2, #0x28]
	ldr r2, [r2, #0xa4]
	cmpeq r1, r10
	addeq r0, r0, #1
	cmp r2, #0
	bne _020775A8
_020775C8:
	cmp r0, r9
	movlt r0, #0
_020775D0:
	ldr r2, _020775E4 ; =0x04000208
	ldrh r1, [r2]
	ldr r1, [sp]
	strh r1, [r2]
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_020775E4: .word 0x04000208
_020775E8: .word unk_020B9FD8
	arm_func_end DseSe_CheckTooManyInstances

	arm_func_start DseSe_CheckTooManyInstancesInGroup
DseSe_CheckTooManyInstancesInGroup: ; 0x020775EC
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, lr}
	mov r10, r0
	movs r9, r1
	mov r0, #0
	ldmeqfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
	ldr r3, _020776EC ; =0x04000208
	cmp r2, #1
	ldrh r1, [r3]
	str r1, [sp]
	strh r0, [r3]
	bne _020776A0
	ldr r4, _020776F0 ; =0x020B9FD8
	mov r11, r0
	mov r6, r0
	mvn r5, #0x80000000
_02077628:
	ldr r1, [r4, #0x674]
	mov r7, r6
	mov r2, r5
	cmp r1, #0
	beq _02077670
_0207763C:
	ldrsb r0, [r1, #4]
	cmp r0, #1
	ldreqb r0, [r1, #0x14]
	cmpeq r0, r10
	bne _02077664
	ldr r0, [r1, #0x30]
	add r7, r7, #1
	cmp r2, r0
	movhi r2, r0
	movhi r8, r1
_02077664:
	ldr r1, [r1, #0xa4]
	cmp r1, #0
	bne _0207763C
_02077670:
	cmp r7, r9
	blt _02077690
	cmp r8, #0
	beq _02077690
	mov r0, r8
	mov r1, r11
	mov r2, #1
	bl DseSequence_Stop
_02077690:
	cmp r7, r9
	bgt _02077628
	mov r0, #0
	b _020776D8
_020776A0:
	ldr r1, _020776F0 ; =0x020B9FD8
	ldr r2, [r1, #0x674]
	cmp r2, #0
	beq _020776D0
_020776B0:
	ldrsb r1, [r2, #4]
	cmp r1, #1
	ldreqb r1, [r2, #0x14]
	ldr r2, [r2, #0xa4]
	cmpeq r1, r10
	addeq r0, r0, #1
	cmp r2, #0
	bne _020776B0
_020776D0:
	cmp r0, r9
	movlt r0, #0
_020776D8:
	ldr r2, _020776EC ; =0x04000208
	ldrh r1, [r2]
	ldr r1, [sp]
	strh r1, [r2]
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_020776EC: .word 0x04000208
_020776F0: .word unk_020B9FD8
	arm_func_end DseSe_CheckTooManyInstancesInGroup

	arm_func_start FUN_020776f4
FUN_020776f4: ; 0x020776F4
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, lr}
	ldr r2, _020777A8 ; =0x04000208
	mov r4, #0
	ldrh r6, [r2]
	mov r7, r0
	cmp r1, #1
	strh r4, [r2]
	bne _02077760
	ldr r0, _020777AC ; =0x020B9FD8
	ldr r5, [r0, #0x674]
	cmp r5, #0
	beq _02077794
	mov r9, r4
	mov r8, #1
_0207772C:
	ldrsb r0, [r5, #4]
	cmp r0, #1
	ldreqh r0, [r5, #0x2c]
	cmpeq r0, r7
	bne _02077750
	mov r0, r5
	mov r1, r9
	mov r2, r8
	bl DseSequence_Stop
_02077750:
	ldr r5, [r5, #0xa4]
	cmp r5, #0
	bne _0207772C
	b _02077794
_02077760:
	ldr r0, _020777AC ; =0x020B9FD8
	ldr r1, [r0, #0x674]
	cmp r1, #0
	beq _02077794
_02077770:
	ldrsb r0, [r1, #4]
	cmp r0, #1
	ldreqh r0, [r1, #0x2c]
	cmpeq r0, r7
	moveq r4, #1
	beq _02077794
	ldr r1, [r1, #0xa4]
	cmp r1, #0
	bne _02077770
_02077794:
	ldr r2, _020777A8 ; =0x04000208
	mov r0, r4
	ldrh r1, [r2]
	strh r6, [r2]
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
_020777A8: .word 0x04000208
_020777AC: .word unk_020B9FD8
	arm_func_end FUN_020776f4

	arm_func_start DseSe_GetBestSeqAllocation
DseSe_GetBestSeqAllocation: ; 0x020777B0
	stmfd sp!, {r3, lr}
	ldr r2, _02077824 ; =0x04000208
	mov r3, #0
	ldrh lr, [r2]
	ldr r1, _02077828 ; =0x020B9FD8
	sub r12, r3, #1
	strh r3, [r2]
	ldr r2, [r1, #0x674]
	cmp r2, #0
	beq _02077810
_020777D8:
	ldrsb r1, [r2, #4]
	cmp r1, #0
	moveq r3, r2
	beq _02077810
	ldrb r1, [r2, #0x12]
	cmp r1, r0
	blo _02077804
	ldr r1, [r2, #0x30]
	cmp r12, r1
	movhi r12, r1
	movhi r3, r2
_02077804:
	ldr r2, [r2, #0xa4]
	cmp r2, #0
	bne _020777D8
_02077810:
	ldr r2, _02077824 ; =0x04000208
	mov r0, r3
	ldrh r1, [r2]
	strh lr, [r2]
	ldmfd sp!, {r3, pc}
_02077824: .word 0x04000208
_02077828: .word unk_020B9FD8
	arm_func_end DseSe_GetBestSeqAllocation

	arm_func_start DseSe_GetById
DseSe_GetById: ; 0x0207782C
	ldr r3, _02077874 ; =0x04000208
	ldr r1, _02077878 ; =0x020B9FD8
	ldrh r12, [r3]
	mov r2, #0
	strh r2, [r3]
	ldr r3, [r1, #0x678]
	b _0207784C
_02077848:
	ldr r3, [r3, #8]
_0207784C:
	cmp r3, #0
	beq _02077860
	ldrh r1, [r3, #6]
	cmp r1, r0
	bne _02077848
_02077860:
	ldr r2, _02077874 ; =0x04000208
	mov r0, r3
	ldrh r1, [r2]
	strh r12, [r2]
	bx lr
_02077874: .word 0x04000208
_02077878: .word unk_020B9FD8
	arm_func_end DseSe_GetById

	arm_func_start DseSe_Stop
DseSe_Stop: ; 0x0207787C
	stmfd sp!, {r4, r5, r6, r7, r8, r9, r10, lr}
	mov r6, r0
	mov r5, r1
	mov r4, r2
	cmn r6, #1
	ldr r7, _020779B0 ; =0x04000208
	mov r1, #0
	beq _02077954
	cmp r5, #0
	bne _020778FC
	ldrh r8, [r7]
	ldr r0, _020779B4 ; =0x020B9FD8
	strh r1, [r7]
	ldr r5, [r0, #0x674]
	cmp r5, #0
	beq _020778F0
	mov r9, #1
_020778C0:
	ldrsb r0, [r5, #4]
	cmp r0, #1
	ldreq r0, [r5, #0x28]
	cmpeq r0, r6
	bne _020778E4
	mov r0, r5
	mov r1, r4
	mov r2, r9
	bl DseSequence_Stop
_020778E4:
	ldr r5, [r5, #0xa4]
	cmp r5, #0
	bne _020778C0
_020778F0:
	ldrh r0, [r7]
	strh r8, [r7]
	b _020779A8
_020778FC:
	ldrh r8, [r7]
	ldr r0, _020779B4 ; =0x020B9FD8
	strh r1, [r7]
	ldr r9, [r0, #0x674]
	cmp r9, #0
	beq _02077950
	mov r10, #1
_02077918:
	ldrsb r0, [r9, #4]
	cmp r0, #1
	ldreq r0, [r9, #0x28]
	cmpeq r0, r6
	ldreqh r0, [r9, #0x2c]
	cmpeq r0, r5
	bne _02077944
	mov r0, r9
	mov r1, r4
	mov r2, r10
	bl DseSequence_Stop
_02077944:
	ldr r9, [r9, #0xa4]
	cmp r9, #0
	bne _02077918
_02077950:
	b _020778F0
_02077954:
	ldrh r6, [r7]
	ldr r0, _020779B4 ; =0x020B9FD8
	strh r1, [r7]
	ldr r8, [r0, #0x674]
	cmp r8, #0
	beq _020779A0
	mov r9, #1
_02077970:
	ldrsb r0, [r8, #4]
	cmp r0, #1
	ldreqh r0, [r8, #0x2c]
	cmpeq r0, r5
	bne _02077994
	mov r0, r8
	mov r1, r4
	mov r2, r9
	bl DseSequence_Stop
_02077994:
	ldr r8, [r8, #0xa4]
	cmp r8, #0
	bne _02077970
_020779A0:
	ldrh r0, [r7]
	strh r6, [r7]
_020779A8:
	mov r0, #0
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, pc}
_020779B0: .word 0x04000208
_020779B4: .word unk_020B9FD8
	arm_func_end DseSe_Stop

	arm_func_start DseSe_StopAll
DseSe_StopAll: ; 0x020779B8
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	ldr r3, _02077A1C ; =0x04000208
	mov r2, #0
	ldrh r4, [r3]
	ldr r1, _02077A20 ; =0x020B9FD8
	mov r5, r0
	strh r2, [r3]
	ldr r7, [r1, #0x674]
	cmp r7, #0
	beq _02077A0C
	mov r6, #1
_020779E4:
	ldrsb r0, [r7, #4]
	cmp r0, #1
	bne _02077A00
	mov r0, r7
	mov r1, r5
	mov r2, r6
	bl DseSequence_Stop
_02077A00:
	ldr r7, [r7, #0xa4]
	cmp r7, #0
	bne _020779E4
_02077A0C:
	ldr r1, _02077A1C ; =0x04000208
	ldrh r0, [r1]
	strh r4, [r1]
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_02077A1C: .word 0x04000208
_02077A20: .word unk_020B9FD8
	arm_func_end DseSe_StopAll

	arm_func_start DseSe_StopSeq
DseSe_StopSeq: ; 0x02077A24
	stmfd sp!, {r4, r5, r6, r7, r8, lr}
	ldr r3, _02077A98 ; =0x04000208
	mov r2, #0
	ldrh r5, [r3]
	ldr r1, _02077A9C ; =0x020B9FD8
	mov r6, r0
	strh r2, [r3]
	ldr r4, [r1, #0x674]
	cmp r4, #0
	beq _02077A88
	mov r8, r2
	mov r7, #1
_02077A54:
	ldrsb r0, [r4, #4]
	cmp r0, #1
	ldreq r0, [r4, #0x28]
	moveq r0, r0, lsl #0x10
	cmpeq r6, r0, lsr #16
	bne _02077A7C
	mov r0, r4
	mov r1, r8
	mov r2, r7
	bl DseSequence_Stop
_02077A7C:
	ldr r4, [r4, #0xa4]
	cmp r4, #0
	bne _02077A54
_02077A88:
	ldr r1, _02077A98 ; =0x04000208
	ldrh r0, [r1]
	strh r5, [r1]
	ldmfd sp!, {r4, r5, r6, r7, r8, pc}
_02077A98: .word 0x04000208
_02077A9C: .word unk_020B9FD8
	arm_func_end DseSe_StopSeq

	arm_func_start DseDriver_StartMainThread
DseDriver_StartMainThread: ; 0x02077AA0
	stmfd sp!, {r4, r5, r6, lr}
	sub sp, sp, #8
	ldr r0, _02077B30 ; =0x020B9FD8
	mov r4, #0
	str r4, [r0, #0x34]
	ldr r5, _02077B34 ; =0x020BAFD8
	str r4, [r0, #0x38]
	ldrb r0, [r5, #0xd1c]
	cmp r0, #0
	beq _02077B24
	strb r4, [r5, #0xd1e]
	mov r0, #1
	strb r0, [r5, #0xd1d]
	mov r6, #0x800
	ldr r2, _02077B38 ; =0x72637473
	mov r0, r6
	strb r4, [r5, #0xd1f]
	mov r1, #0x10
	bl DseMem_AllocateLastFit
	str r0, [r5, #0xde0]
	str r6, [sp]
	ldrb r0, [r5, #0xd1c]
	ldr r6, _02077B3C ; =0x020BBCF8
	ldr r1, _02077B40 ; =DseDriver_Main
	str r0, [sp, #4]
	ldr r3, [r5, #0xde0]
	mov r0, r6
	mov r2, r4
	add r3, r3, #0x800
	bl OS_CreateThread
	mov r0, r6
	bl OS_WakeupThreadDirect
	bl DseDriver_StartTickTimer
_02077B24:
	mov r0, #0
	add sp, sp, #8
	ldmfd sp!, {r4, r5, r6, pc}
_02077B30: .word unk_020B9FD8
_02077B34: .word unk_020BAFD8
_02077B38: .word 0x72637473
_02077B3C: .word unk_020BBCF8
_02077B40: .word DseDriver_Main
	arm_func_end DseDriver_StartMainThread

	arm_func_start DseDriver_CleanupMainThread
DseDriver_CleanupMainThread: ; 0x02077B44
	stmfd sp!, {r3, r4, r5, lr}
	bl DseDriver_ResetSoundState
	ldr r5, _02077B78 ; =0x020BBCF8
	ldr r4, _02077B7C ; =0x020BAFD8
	mov r1, #0
	mov r0, r5
	strb r1, [r4, #0xd1d]
	bl OS_WakeupThreadDirect
	mov r0, r5
	bl OS_JoinThread
	ldr r0, [r4, #0xde0]
	bl DseMem_Free
	ldmfd sp!, {r3, r4, r5, pc}
_02077B78: .word unk_020BBCF8
_02077B7C: .word unk_020BAFD8
	arm_func_end DseDriver_CleanupMainThread

	arm_func_start DseDriver_StartTickTimer
DseDriver_StartTickTimer: ; 0x02077B80
	stmfd sp!, {r3, r4, r5, lr}
	ldr r0, _02077BE4 ; =0x020BAFD8
	ldrb r0, [r0, #0xde4]
	cmp r0, #0
	bne _02077BDC
	ldr r1, _02077BE8 ; =0x00001474
	ldr r4, _02077BEC ; =0x020B9FD8
	mov r5, #0
	ldr r3, _02077BF0 ; =DseDriver_NotifyTick
	mov r0, r5
	mov r2, r1
	str r4, [sp]
	bl SND_SetupAlarm
	mov r4, #1
	mov r0, r5
	mov r1, r5
	mov r2, r4
	mov r3, r5
	bl SND_StartTimer
	mov r0, r4
	bl SND_FlushCommand
	mov r0, r4
	bl SND_RecvCommandReply
_02077BDC:
	mov r0, #0
	ldmfd sp!, {r3, r4, r5, pc}
_02077BE4: .word unk_020BAFD8
_02077BE8: .word 0x00001474
_02077BEC: .word unk_020B9FD8
_02077BF0: .word DseDriver_NotifyTick
	arm_func_end DseDriver_StartTickTimer

	arm_func_start DseDriver_ResetSoundState
DseDriver_ResetSoundState: ; 0x02077BF4
	stmfd sp!, {r3, r4, lr}
	sub sp, sp, #4
	mov r4, #0
	ldr r0, _02077C78 ; =0x0000FFFF
	mov r1, r4
	mov r3, r4
	mov r2, #1
	bl SND_StopTimer
	ldr r0, _02077C7C ; =0x020BAFD8
	ldrb r0, [r0, #0xde4]
	cmp r0, #0
	bne _02077C3C
	mov r0, r4
	mov r1, r4
	mov r2, r4
	mov r3, r4
	str r4, [sp]
	bl SND_SetupAlarm
_02077C3C:
	mov r4, #1
	mov r0, r4
	bl SND_FlushCommand
	mov r0, r4
	bl SND_RecvCommandReply
	ldr r2, _02077C80 ; =0x020BA6D8
	mov r0, #0
	strh r0, [r2, #0x3c]
	strh r0, [r2, #0x40]
	ldr r1, _02077C84 ; =0x020B9FD8
	strh r0, [r2, #0x3e]
	strb r0, [r1, #0x745]
	strb r0, [r1, #0x744]
	add sp, sp, #4
	ldmfd sp!, {r3, r4, pc}
_02077C78: .word 0x0000FFFF
_02077C7C: .word unk_020BAFD8
_02077C80: .word unk_020BA6D8
_02077C84: .word unk_020B9FD8
	arm_func_end DseDriver_ResetSoundState

	arm_func_start DseDriver_NotifyTick
DseDriver_NotifyTick: ; 0x02077C88
	stmfd sp!, {r3, lr}
	ldr r2, _02077CD0 ; =0x020B9FD8
	ldr r1, _02077CD4 ; =0x020BAFD8
	ldr r3, [r2, #0x34]
	add r0, r1, #0xd00
	add r3, r3, #1
	str r3, [r2, #0x34]
	ldrsb r0, [r0, #0x1d]
	cmp r0, #0
	ldmeqfd sp!, {r3, pc}
	mov r0, #0
	strb r0, [r1, #0xd1f]
	ldr r1, [r2, #0x38]
	ldr r0, _02077CD8 ; =0x020BBCF8
	add r1, r1, #1
	str r1, [r2, #0x38]
	bl OS_WakeupThreadDirect
	ldmfd sp!, {r3, pc}
_02077CD0: .word unk_020B9FD8
_02077CD4: .word unk_020BAFD8
_02077CD8: .word unk_020BBCF8
	arm_func_end DseDriver_NotifyTick

	arm_func_start DseDriver_Main
DseDriver_Main: ; 0x02077CDC
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, lr}
	ldr r8, _02077E1C ; =0x020BAFD8
	ldr r7, _02077E20 ; =0x020BBDD8
	ldr r6, _02077E24 ; =0x020B9FD8
	add r4, r8, #0xd00
	add r5, r8, #0xe00
	mov r11, #0
_02077CF8:
	mov r1, #1
	mov r0, r11
	strb r1, [r8, #0xd1f]
	bl OS_SleepThread
	strb r11, [r8, #0xd1f]
	ldrsb r0, [r5, #0xdc]
	cmp r0, #1
	bne _02077DA0
	bl OS_GetTickLo
	ldr r2, [r8, #0xed4]
	ldr r1, [r8, #0xed8]
	sub r10, r0, r2
	cmp r1, r2
	sub r1, r1, r2
	addlo r1, r1, #0x10000
	str r0, [r8, #0xed4]
	mov r0, r1
	bl _ffltu
	mov r9, r0
	mov r0, r10
	bl _ffltu
	mov r1, r0
	mov r0, r9
	bl _fdiv
	mov r1, r0
	ldr r0, _02077E28 ; =0x42C80000
	bl _fmul
	mov r9, r0
	ldrsh r0, [r7, #0xd0]
	mov r1, r9
	cmp r0, #0
	movlt r0, #0
	strlt r0, [r8, #0xecc]
	str r9, [r8, #0xec8]
	ldr r0, [r8, #0xecc]
	bl _fls
	strlo r9, [r8, #0xecc]
	movlo r0, #0x64
	strloh r0, [r7, #0xd0]
	ldrsh r0, [r7, #0xd0]
	sub r0, r0, #1
	strh r0, [r7, #0xd0]
_02077DA0:
	ldrsb r0, [r4, #0x1d]
	cmp r0, #0
	ldmeqfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
	mov r0, #0
	bl SND_RecvCommandReply
	ldr r0, [r6, #0x2c]
	add r0, r0, #1
	str r0, [r6, #0x2c]
	ldr r0, [r6, #0x670]
	bl DseSequence_UpdateTracks
	ldr r0, [r6, #0x674]
	bl DseSequence_UpdateTracks
	bl FUN_0207d780
	ldr r0, _02077E2C ; =0x020BBEBC
	ldr r0, [r0]
	cmp r0, #0
	beq _02077DE8
	bl DseMidi_ProcessEvent
_02077DE8:
	bl Dse_UpdateChannels
	bl Dse_UpdateVoiceParameters
	bl DseVoice_UpdateHardware
	bl Dse_CleanupVoices
	mov r0, #0
	bl SND_FlushCommand
	ldrsb r0, [r5, #0xdc]
	cmp r0, #1
	bne _02077CF8
	bl OS_GetTickLo
	str r0, [r8, #0xed8]
	b _02077CF8
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_02077E1C: .word unk_020BAFD8
_02077E20: .word unk_020BBDD8
_02077E24: .word unk_020B9FD8
_02077E28: .word 0x42C80000
_02077E2C: .word unk_020BBEBC
	arm_func_end DseDriver_Main

	arm_func_start DseSequence_TickNotes
DseSequence_TickNotes: ; 0x02077E30
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, lr}
	ldr r1, [r0, #0x24]
	ldrb r0, [r1, #1]
	add r7, r1, #0x10
	str r0, [sp]
	cmp r0, #0
	ldmeqfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
	mov r11, #0
	mvn r6, #0
	mov r5, r11
_02077E58:
	ldr r8, [r7, #0xb4]
	add r10, r7, #0xb4
	cmp r8, #0
	beq _02077ED0
	ldr r4, _02077EF0 ; =0x020B9FD8
_02077E6C:
	ldmib r8, {r0, r9}
	sub r1, r0, #1
	cmp r1, #0
	bgt _02077EB0
	ldrb r0, [r7, #4]
	tst r0, #3
	movne r1, r11
	bne _02077EB0
	mov r0, r7
	mov r1, r8
	bl DseChannel_ReleaseVoiceByNote
	ldr r0, [r4, #0x658]
	mov r1, r6
	str r0, [r8, #8]
	str r8, [r4, #0x658]
	str r6, [r8, #4]
	strb r5, [r8, #1]
_02077EB0:
	str r1, [r8, #4]
	cmp r1, #0
	strge r1, [r8, #4]
	strge r8, [r10]
	addge r10, r8, #8
	mov r8, r9
	cmp r9, #0
	bne _02077E6C
_02077ED0:
	mov r0, #0
	str r0, [r10]
	ldr r0, [sp]
	add r7, r7, #0xc4
	subs r0, r0, #1
	str r0, [sp]
	bne _02077E58
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_02077EF0: .word unk_020B9FD8
	arm_func_end DseSequence_TickNotes

	arm_func_start DseSequence_ParseEvent
DseSequence_ParseEvent: ; 0x02077EF4
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, lr}
	sub sp, sp, #8
	mov r7, r1
	ldr r1, [r7, #0xc]
	mov r8, r0
	cmp r1, #0
	ldr r6, [r7, #0x1c]
	ldr r5, [r7, #0x54]
	bne _02078098
_02077F18:
	ldrb r3, [r6]
	add r0, r6, #1
	mov r6, r0
	cmp r3, #0x80
	blo _02077F70
	cmp r3, #0x90
	blo _02077F58
	ldr r2, _020780B0 ; =DSE_TRACK_EVENT_TABLE
	mov r1, r8
	add r2, r2, r3, lsl #2
	ldr r4, [r2, #-0x240]
	mov r2, r7
	mov r3, r5
	blx r4
	mov r6, r0
	b _02078080
_02077F58:
	ldr r0, _020780B4 ; =0x02091780
	add r0, r0, r3
	ldrb r0, [r0, #-0x80]
	str r0, [r7, #0x10]
	str r0, [r7, #0xc]
	b _02078080
_02077F70:
	strb r3, [sp, #3]
	ldrb r1, [r0]
	ldrb r4, [r7, #4]
	mov r3, #0xc
	mov r2, r1, lsl #0x14
	mov r2, r2, asr #0x18
	and r2, r2, #3
	sub r2, r2, #2
	mov r2, r2, lsl #0x18
	add r2, r4, r2, asr #24
	mov r2, r2, lsl #0x18
	mov r4, r2, asr #0x18
	and r2, r1, #0xf
	smlabb r2, r4, r3, r2
	strb r2, [sp, #2]
	mov r1, r1, asr #6
	ands r1, r1, #0xff
	strb r4, [r7, #4]
	add r6, r0, #1
	ldreq r2, [r7, #0x14]
	beq _02077FE8
	cmp r1, #0
	mov r2, #0
	beq _02077FE4
_02077FD0:
	ldrb r0, [r6], #1
	sub r1, r1, #1
	ands r1, r1, #0xff
	add r2, r0, r2, lsl #8
	bne _02077FD0
_02077FE4:
	str r2, [r7, #0x14]
_02077FE8:
	ldrb r1, [r7, #5]
	mov r4, #0
	ldr r0, _020780B8 ; =0x02040811
	mul r1, r2, r1
	umull r0, r2, r1, r0
	sub r0, r1, r2
	add r2, r2, r0, lsr #1
	mov r2, r2, lsr #6
	str r2, [sp, #4]
	strb r4, [sp]
	ldrsb r0, [r7, #8]
	cmp r0, #0
	bne _0207806C
	ldrb r0, [r5, #4]
	tst r0, #2
	beq _0207803C
	ldrb r2, [r7, #7]
	add r1, sp, #0
	mov r0, r5
	bl DseChannel_ChangeNote
	b _0207806C
_0207803C:
	add r9, sp, #0
	mov r0, r5
	mov r1, r9
	bl DseChannel_ReleaseNote
	mov r0, r5
	mov r1, r9
	str r4, [r5, #0x1c]
	bl DseChannel_AllocateNote
	movs r1, r0
	beq _0207806C
	mov r0, r5
	bl DseChannel_PlayNote
_0207806C:
	ldrb r0, [sp, #2]
	strb r0, [r7, #7]
	ldrb r0, [r5, #4]
	and r0, r0, #0xfd
	strb r0, [r5, #4]
_02078080:
	ldrsb r0, [r7, #2]
	cmp r0, #0
	beq _02078098
	ldr r0, [r7, #0xc]
	cmp r0, #0
	beq _02077F18
_02078098:
	ldr r0, [r7, #0xc]
	str r6, [r7, #0x1c]
	sub r0, r0, #1
	str r0, [r7, #0xc]
	add sp, sp, #8
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
_020780B0: .word DSE_TRACK_EVENT_TABLE
_020780B4: .word DSE_DELAY_TABLE
_020780B8: .word 0x02040811
	arm_func_end DseSequence_ParseEvent

	arm_func_start DseSequence_UpdateTracks
DseSequence_UpdateTracks: ; 0x020780BC
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, lr}
	movs r4, r0
	mov r6, #0
	cmpne r4, #0
	ldmeqfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
_020780D0:
	ldrsb r0, [r4, #5]
	cmp r0, #1
	bne _02078420
	ldrsh r0, [r4, #0x1a]
	cmp r0, #0
	beq _020780F4
	subgt r0, r0, #1
	strgth r0, [r4, #0x1a]
	b _02078420
_020780F4:
	ldr r0, [r4, #0x34]
	add r0, r0, #1
	str r0, [r4, #0x34]
	ldrb r0, [r4, #0xc]
	cmp r0, #0
	beq _02078114
	mov r0, r4
	bl DseSequence_TickFades
_02078114:
	ldr r1, [r4, #0x3c]
	ldr r0, [r4, #0x40]
	add r1, r1, r0
	str r1, [r4, #0x3c]
	ldr r0, [r4, #0x44]
	cmp r1, r0
	ble _0207836C
	ldr r7, _02078430 ; =0x04000208
	ldr r5, _02078434 ; =0x82061029
_02078138:
	mov r0, r4
	bl DseSequence_TickNotes
	ldr r2, [r4, #0x24]
	ldrb r0, [r2, #1]
	add r1, r2, #0x10
	cmp r0, #0
	beq _020782EC
_02078154:
	ldrh r3, [r1, #0x28]
	sub r0, r0, #1
	cmp r3, #0
	beq _020781D4
	sub r3, r3, #1
	strh r3, [r1, #0x28]
	ldrh r3, [r1, #0x28]
	cmp r3, #0
	ldrne r8, [r1, #0x1c]
	ldrne r3, [r1, #0x20]
	addne r3, r8, r3
	ldreq r3, [r1, #0x24]
	str r3, [r1, #0x1c]
	ldrsh r3, [r1, #0x50]
	ldr r8, [r1, #0x1c]
	ldrsh r9, [r2, #4]
	add r3, r3, r8, asr #16
	add r3, r9, r3
	strh r3, [r1, #0x16]
	ldrh r9, [r7]
	strh r6, [r7]
	ldr r8, [r1, #0xb0]
	cmp r8, #0
	beq _020781CC
_020781B4:
	ldrh r3, [r8, #6]
	orr r3, r3, #0x10
	strh r3, [r8, #6]
	ldr r8, [r8, #0x154]
	cmp r8, #0
	bne _020781B4
_020781CC:
	ldrh r3, [r7]
	strh r9, [r7]
_020781D4:
	ldrh r3, [r1, #0x38]
	cmp r3, #0
	beq _02078264
	sub r3, r3, #1
	strh r3, [r1, #0x38]
	ldrh r3, [r1, #0x38]
	cmp r3, #0
	ldrne r8, [r1, #0x2c]
	ldrne r3, [r1, #0x30]
	addne r3, r8, r3
	ldreq r3, [r1, #0x34]
	str r3, [r1, #0x2c]
	mov r8, r3
	ldrb r3, [r1, #0x4c]
	mov r8, r8, asr #0x10
	ldrsb r9, [r2, #8]
	mul r3, r8, r3
	mul r8, r9, r3
	smull r3, r9, r5, r8
	add r9, r8, r9
	mov r3, r8, lsr #0x1f
	add r9, r3, r9, asr #13
	strh r9, [r1, #0x18]
	ldrh r9, [r7]
	strh r6, [r7]
	ldr r8, [r1, #0xb0]
	cmp r8, #0
	beq _0207825C
_02078244:
	ldrh r3, [r8, #6]
	orr r3, r3, #0x20
	strh r3, [r8, #6]
	ldr r8, [r8, #0x154]
	cmp r8, #0
	bne _02078244
_0207825C:
	ldrh r3, [r7]
	strh r9, [r7]
_02078264:
	ldrh r3, [r1, #0x48]
	cmp r3, #0
	beq _020782E0
	sub r3, r3, #1
	strh r3, [r1, #0x48]
	ldrh r3, [r1, #0x48]
	cmp r3, #0
	ldrne r8, [r1, #0x3c]
	ldrne r3, [r1, #0x40]
	addne r3, r8, r3
	ldreq r3, [r1, #0x44]
	str r3, [r1, #0x3c]
	ldr r3, [r1, #0xc0]
	ldr r8, [r1, #0x3c]
	ldrsb r3, [r3, #7]
	sub r3, r3, #0x40
	add r3, r3, r8, asr #16
	strh r3, [r1, #0x1a]
	ldrh r9, [r7]
	strh r6, [r7]
	ldr r8, [r1, #0xb0]
	cmp r8, #0
	beq _020782D8
_020782C0:
	ldrh r3, [r8, #6]
	orr r3, r3, #0x40
	strh r3, [r8, #6]
	ldr r8, [r8, #0x154]
	cmp r8, #0
	bne _020782C0
_020782D8:
	ldrh r3, [r7]
	strh r9, [r7]
_020782E0:
	cmp r0, #0
	add r1, r1, #0xc4
	bne _02078154
_020782EC:
	strb r6, [r4, #0xd]
	ldrb r0, [r4, #0xf]
	mov r9, r6
	add r8, r4, #0xa8
	cmp r0, #0
	ble _02078344
_02078304:
	ldrsb r0, [r8, #2]
	cmp r0, #1
	bne _02078330
	mov r0, r4
	mov r1, r8
	bl DseSequence_ParseEvent
	ldrsb r0, [r8, #2]
	cmp r0, #1
	ldreqb r0, [r4, #0xd]
	addeq r0, r0, #1
	streqb r0, [r4, #0xd]
_02078330:
	ldrb r0, [r4, #0xf]
	add r9, r9, #1
	add r8, r8, #0x5c
	cmp r9, r0
	blt _02078304
_02078344:
	ldr r0, [r4, #0x38]
	add r0, r0, #1
	str r0, [r4, #0x38]
	ldr r1, [r4, #0x3c]
	ldr r0, [r4, #0x44]
	sub r1, r1, r0
	str r1, [r4, #0x3c]
	ldr r0, [r4, #0x44]
	cmp r1, r0
	bgt _02078138
_0207836C:
	ldrb r0, [r4, #0xd]
	mov r5, #0
	cmp r0, #0
	bne _020783A4
	str r5, [r4, #4]
	ldr r0, [r4, #0x24]
	bl DseSynth_ClearHeldNotes
	ldr r0, [r4, #0x28]
	ldr r3, [r4, #0xa0]
	ldr r7, [r4, #0x9c]
	mov r2, r5
	mov r1, #1
	blx r7
	b _02078420
_020783A4:
	ldrsb r1, [r4, #7]
	cmp r1, #0
	beq _02078420
	ldr r0, [r4, #0x68]
	cmp r0, #0
	bne _02078420
	cmp r1, #1
	bne _020783F8
	str r5, [r4, #4]
	ldr r0, [r4, #0x24]
	bl DseSynth_StopChannels
	ldr r0, [r4, #0x28]
	ldr r3, [r4, #0xa0]
	ldr r7, [r4, #0x9c]
	mov r2, r5
	mov r1, #2
	blx r7
	ldrsb r0, [r4, #0xa]
	cmp r0, #1
	streqb r5, [r4, #0xd]
	b _02078420
_020783F8:
	mov r1, #1
	strb r1, [r4, #6]
	ldr r0, [r4, #0x24]
	bl DseSynth_UpdateVoicesTimerAndVolume
	ldr r0, [r4, #0x28]
	ldr r3, [r4, #0xa0]
	ldr r5, [r4, #0x9c]
	mov r1, #3
	mov r2, #0
	blx r5
_02078420:
	ldr r4, [r4, #0xa4]
	cmp r4, #0
	bne _020780D0
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
_02078430: .word 0x04000208
_02078434: .word 0x82061029
	arm_func_end DseSequence_UpdateTracks

	arm_func_start DseSequence_TickFades
DseSequence_TickFades: ; 0x02078438
	stmfd sp!, {r4, lr}
	mov r4, r0
	ldrh r0, [r4, #0x54]
	cmp r0, #0
	beq _020784A8
	sub r0, r0, #1
	strh r0, [r4, #0x54]
	ldrh r0, [r4, #0x54]
	cmp r0, #0
	ldrne r1, [r4, #0x48]
	ldrne r0, [r4, #0x4c]
	addne r0, r1, r0
	ldreq r0, [r4, #0x50]
	mov r1, r0
	str r0, [r4, #0x48]
	ldrb r0, [r4, #0x17]
	mov r1, r1, asr #0x10
	mul r0, r1, r0
	movs r1, r0, lsr #8
	ldr r0, _020785BC ; =0x03938700
	moveq r1, #1
	bl _u32_div_f
	ldrh r1, [r4, #0x54]
	str r0, [r4, #0x44]
	cmp r1, #0
	ldreqb r0, [r4, #0xc]
	andeq r0, r0, #0xfe
	streqb r0, [r4, #0xc]
_020784A8:
	ldrh r0, [r4, #0x64]
	cmp r0, #0
	beq _02078504
	sub r0, r0, #1
	strh r0, [r4, #0x64]
	ldrh r0, [r4, #0x64]
	cmp r0, #0
	ldrne r1, [r4, #0x58]
	ldrne r0, [r4, #0x5c]
	addne r0, r1, r0
	ldreq r0, [r4, #0x60]
	mov r1, r0
	mov r1, r1, asr #0x10
	str r0, [r4, #0x58]
	mov r1, r1, lsl #0x10
	ldr r0, [r4, #0x24]
	mov r1, r1, asr #0x10
	bl DseSynth_SetBend
	ldrh r0, [r4, #0x64]
	cmp r0, #0
	ldreqb r0, [r4, #0xc]
	andeq r0, r0, #0xfd
	streqb r0, [r4, #0xc]
_02078504:
	ldrh r0, [r4, #0x74]
	cmp r0, #0
	beq _02078560
	sub r0, r0, #1
	strh r0, [r4, #0x74]
	ldrh r0, [r4, #0x74]
	cmp r0, #0
	ldrne r1, [r4, #0x68]
	ldrne r0, [r4, #0x6c]
	addne r0, r1, r0
	ldreq r0, [r4, #0x70]
	mov r1, r0
	mov r1, r1, asr #0x10
	str r0, [r4, #0x68]
	mov r1, r1, lsl #0x18
	ldr r0, [r4, #0x24]
	mov r1, r1, asr #0x18
	bl DseSynth_SetVolume
	ldrh r0, [r4, #0x74]
	cmp r0, #0
	ldreqb r0, [r4, #0xc]
	andeq r0, r0, #0xfb
	streqb r0, [r4, #0xc]
_02078560:
	ldrh r0, [r4, #0x84]
	cmp r0, #0
	ldmeqfd sp!, {r4, pc}
	sub r0, r0, #1
	strh r0, [r4, #0x84]
	ldrh r0, [r4, #0x84]
	cmp r0, #0
	ldrne r1, [r4, #0x78]
	ldrne r0, [r4, #0x7c]
	addne r0, r1, r0
	ldreq r0, [r4, #0x80]
	mov r1, r0
	str r0, [r4, #0x78]
	mov r1, r1, asr #0x10
	ldr r0, [r4, #0x24]
	and r1, r1, #0xff
	bl DseSynth_SetPan
	ldrh r0, [r4, #0x84]
	cmp r0, #0
	ldreqb r0, [r4, #0xc]
	andeq r0, r0, #0xef
	streqb r0, [r4, #0xc]
	ldmfd sp!, {r4, pc}
_020785BC: .word 0x03938700
	arm_func_end DseSequence_TickFades

	arm_func_start DseTrackEvent_Invalid
DseTrackEvent_Invalid: ; 0x020785C0
	mov r1, #0
	strb r1, [r2, #2]
	bx lr
	arm_func_end DseTrackEvent_Invalid

	arm_func_start DseTrackEvent_WaitSame
DseTrackEvent_WaitSame: ; 0x020785CC
	ldr r1, [r2, #0x10]
	str r1, [r2, #0xc]
	bx lr
	arm_func_end DseTrackEvent_WaitSame

	arm_func_start DseTrackEvent_WaitDelta
DseTrackEvent_WaitDelta: ; 0x020785D8
	ldrsb r1, [r0], #1
	ldr r3, [r2, #0x10]
	add r1, r3, r1
	str r1, [r2, #0x10]
	str r1, [r2, #0xc]
	bx lr
	arm_func_end DseTrackEvent_WaitDelta

	arm_func_start DseTrackEvent_Wait8
DseTrackEvent_Wait8: ; 0x020785F0
	ldrb r1, [r0], #1
	str r1, [r2, #0x10]
	str r1, [r2, #0xc]
	bx lr
	arm_func_end DseTrackEvent_Wait8

	arm_func_start DseTrackEvent_Wait16
DseTrackEvent_Wait16: ; 0x02078600
	ldrb r3, [r0]
	ldrb r1, [r0, #1]
	add r0, r0, #2
	add r1, r3, r1, lsl #8
	str r1, [r2, #0x10]
	str r1, [r2, #0xc]
	bx lr
	arm_func_end DseTrackEvent_Wait16

	arm_func_start DseTrackEvent_Wait24
DseTrackEvent_Wait24: ; 0x0207861C
	ldrb r3, [r0]
	ldrb r1, [r0, #1]
	ldrb r12, [r0, #2]
	add r0, r0, #3
	add r1, r3, r1, lsl #8
	add r1, r1, r12, lsl #16
	str r1, [r2, #0x10]
	str r1, [r2, #0xc]
	bx lr
	arm_func_end DseTrackEvent_Wait24

	arm_func_start DseTrackEvent_WaitUntilFadeout
DseTrackEvent_WaitUntilFadeout: ; 0x02078640
	stmfd sp!, {r3, r4, r5, lr}
	mov r5, r0
	mov r0, r3
	mov r4, r2
	bl DseVoice_CountNumActiveInChannel
	cmp r0, #0
	ldrgtb r0, [r5], #-1
	addle r5, r5, #1
	strgt r0, [r4, #0xc]
	mov r0, r5
	ldmfd sp!, {r3, r4, r5, pc}
	arm_func_end DseTrackEvent_WaitUntilFadeout

	arm_func_start DseTrackEvent_EndTrack
DseTrackEvent_EndTrack: ; 0x0207866C
	stmfd sp!, {r4, lr}
	ldr r12, [r2, #0x20]
	mov r4, r0
	cmp r12, #0
	bne _02078698
	mov r1, #0
	mov r0, r3
	strb r1, [r2, #2]
	sub r4, r4, #1
	bl DseChannel_DeallocateVoices
	b _020786E8
_02078698:
	ldrh r0, [r2, #0xa]
	mov r3, #1
	add r0, r0, #1
	strh r0, [r2, #0xa]
	ldrsb r0, [r1, #0xa]
	strb r3, [r1, #3]
	ldr r4, [r2, #0x20]
	cmp r0, #0
	ldreqh r0, [r2]
	cmpeq r0, #0
	bne _020786E8
	ldrh r2, [r1, #0x18]
	ldr r0, [r1, #0x28]
	ldr r3, [r1, #0xa0]
	add r2, r2, #1
	strh r2, [r1, #0x18]
	ldrh r2, [r1, #0x18]
	ldr r12, [r1, #0x9c]
	mov r1, #5
	blx r12
_020786E8:
	mov r0, r4
	ldmfd sp!, {r4, pc}
	arm_func_end DseTrackEvent_EndTrack

	arm_func_start DseTrackEvent_MainLoopBegin
DseTrackEvent_MainLoopBegin: ; 0x020786F0
	stmfd sp!, {r4, lr}
	mov r4, r0
	str r4, [r2, #0x20]
	ldrsb r0, [r1, #0xa]
	cmp r0, #0
	ldreqh r0, [r2]
	cmpeq r0, #0
	bne _02078728
	ldr r0, [r1, #0x28]
	ldr r3, [r1, #0xa0]
	ldr r12, [r1, #0x9c]
	mov r1, #4
	mov r2, #0
	blx r12
_02078728:
	mov r0, r4
	ldmfd sp!, {r4, pc}
	arm_func_end DseTrackEvent_MainLoopBegin

	arm_func_start DseTrackEvent_SubLoopBegin
DseTrackEvent_SubLoopBegin: ; 0x02078730
	stmfd sp!, {r4, lr}
	ldrb r4, [r2, #6]
	mov r1, #0xc
	ldrb lr, [r0], #1
	smulbb r1, r4, r1
	add r3, r2, #0x24
	str r0, [r3, r1]
	add r12, r3, r1
	mov r1, #0
	str r1, [r12, #4]
	strb lr, [r12, #8]
	ldrb r3, [r2, #4]
	add r1, r4, #1
	strb r3, [r12, #9]
	strb r1, [r2, #6]
	ldmfd sp!, {r4, pc}
	arm_func_end DseTrackEvent_SubLoopBegin

	arm_func_start DseTrackEvent_SubLoopEnd
DseTrackEvent_SubLoopEnd: ; 0x02078770
	ldrb r12, [r2, #6]
	add r3, r2, #0x24
	mov r1, #0xc
	sub r12, r12, #1
	mla r3, r12, r1, r3
	ldrb r1, [r3, #8]
	subs r1, r1, #1
	streqb r12, [r2, #6]
	strne r0, [r3, #4]
	strneb r1, [r3, #8]
	ldrneb r0, [r3, #9]
	strneb r0, [r2, #4]
	ldrne r0, [r3]
	bx lr
	arm_func_end DseTrackEvent_SubLoopEnd

	arm_func_start DseTrackEvent_SubLoopBreakOnLastIteration
DseTrackEvent_SubLoopBreakOnLastIteration: ; 0x020787A8
	ldrb r12, [r2, #6]
	add r3, r2, #0x24
	mov r1, #0xc
	sub r12, r12, #1
	mla r3, r12, r1, r3
	ldrb r1, [r3, #8]
	subs r1, r1, #1
	ldreq r0, [r3, #4]
	streqb r12, [r2, #6]
	bx lr
	arm_func_end DseTrackEvent_SubLoopBreakOnLastIteration

	arm_func_start DseTrackEvent_SetOctave
DseTrackEvent_SetOctave: ; 0x020787D0
	ldrb r1, [r0], #1
	strb r1, [r2, #4]
	bx lr
	arm_func_end DseTrackEvent_SetOctave

	arm_func_start DseTrackEvent_OctaveDelta
DseTrackEvent_OctaveDelta: ; 0x020787DC
	ldrsb r1, [r0], #1
	ldrb r3, [r2, #4]
	and r1, r1, #0xff
	add r1, r3, r1
	strb r1, [r2, #4]
	bx lr
	arm_func_end DseTrackEvent_OctaveDelta

	arm_func_start DseTrackEvent_SetBpm
DseTrackEvent_SetBpm: ; 0x020787F4
	stmfd sp!, {r4, r5, r6, lr}
	mov r6, r0
	mov r5, r1
	ldr r0, [r5, #0x48]
	ldrb r4, [r6]
	mov r0, r0, asr #0x10
	mul r1, r0, r4
	movs r1, r1, lsr #8
	ldr r0, _02078830 ; =0x03938700
	moveq r1, #1
	bl _u32_div_f
	str r0, [r5, #0x44]
	strb r4, [r5, #0x17]
	add r0, r6, #1
	ldmfd sp!, {r4, r5, r6, pc}
_02078830: .word 0x03938700
	arm_func_end DseTrackEvent_SetBpm

	arm_func_start DseTrackEvent_SetBpm2
DseTrackEvent_SetBpm2: ; 0x02078834
	stmfd sp!, {r4, r5, r6, lr}
	mov r6, r0
	mov r5, r1
	ldr r0, [r5, #0x48]
	ldrb r4, [r6]
	mov r0, r0, asr #0x10
	mul r1, r0, r4
	movs r1, r1, lsr #8
	ldr r0, _02078870 ; =0x03938700
	moveq r1, #1
	bl _u32_div_f
	str r0, [r5, #0x44]
	strb r4, [r5, #0x17]
	add r0, r6, #1
	ldmfd sp!, {r4, r5, r6, pc}
_02078870: .word 0x03938700
	arm_func_end DseTrackEvent_SetBpm2

	arm_func_start DseTrackEvent_SetBank
DseTrackEvent_SetBank: ; 0x02078874
	stmfd sp!, {r4, lr}
	mov r4, r0
	ldrb r2, [r4]
	ldrb r1, [r4, #1]
	mov r0, r3
	add r1, r1, r2, lsl #8
	mov r1, r1, lsl #0x10
	mov r1, r1, lsr #0x10
	bl DseChannel_SetBank
	add r0, r4, #2
	ldmfd sp!, {r4, pc}
	arm_func_end DseTrackEvent_SetBank

	arm_func_start DseTrackEvent_SetBankMsb
DseTrackEvent_SetBankMsb: ; 0x020788A0
	stmfd sp!, {r4, lr}
	mov r4, r0
	ldrh r1, [r3, #0xe]
	ldrb r2, [r4]
	mov r0, r3
	and r1, r1, #0xff
	add r1, r1, r2, lsl #8
	mov r1, r1, lsl #0x10
	mov r1, r1, lsr #0x10
	bl DseChannel_SetBank
	add r0, r4, #1
	ldmfd sp!, {r4, pc}
	arm_func_end DseTrackEvent_SetBankMsb

	arm_func_start DseTrackEvent_SetBankLsb
DseTrackEvent_SetBankLsb: ; 0x020788D0
	stmfd sp!, {r4, lr}
	mov r4, r0
	ldrh r2, [r3, #0xe]
	ldrb r1, [r4]
	mov r0, r3
	bic r2, r2, #0xff
	add r1, r2, r1
	mov r1, r1, lsl #0x10
	mov r1, r1, lsr #0x10
	bl DseChannel_SetBank
	add r0, r4, #1
	ldmfd sp!, {r4, pc}
	arm_func_end DseTrackEvent_SetBankLsb

	arm_func_start DseTrackEvent_Dummy1Byte
DseTrackEvent_Dummy1Byte: ; 0x02078900
	add r0, r0, #1
	bx lr
	arm_func_end DseTrackEvent_Dummy1Byte

	arm_func_start DseTrackEvent_SetProgram
DseTrackEvent_SetProgram: ; 0x02078908
	stmfd sp!, {r4, r5, r6, lr}
	mov r6, r0
	mov r5, r1
	mov r4, r3
	ldrb r1, [r6]
	mov r0, r4
	bl DseChannel_SetProgram
	movs r2, r0
	bpl _02078948
	ldrh r1, [r4, #0xe]
	ldr r0, [r5, #0x28]
	ldr r3, [r5, #0xa0]
	ldr r12, [r5, #0x9c]
	rsb r2, r2, r1, lsl #16
	mvn r1, #0xcb
	blx r12
_02078948:
	add r0, r6, #1
	ldmfd sp!, {r4, r5, r6, pc}
	arm_func_end DseTrackEvent_SetProgram

	arm_func_start DseTrackEvent_SongVolumeFade
DseTrackEvent_SongVolumeFade: ; 0x02078950
	stmfd sp!, {r4, r5, r6, lr}
	mov r5, r0
	ldrb r2, [r5]
	ldrb r0, [r5, #1]
	mov r4, r1
	add r0, r2, r0, lsl #8
	mov r0, r0, lsl #0x10
	movs r1, r0, lsr #0x10
	moveq r6, #0
	beq _02078998
	mov r0, #0x3e8
	mul r0, r1, r0
	ldr r1, _020789D8 ; =0x020B9FD8
	ldrsh r1, [r1, #0x28]
	bl _u32_div_f
	mov r0, r0, lsl #0x10
	movs r6, r0, lsr #0x10
	moveq r6, #1
_02078998:
	ldrb r0, [r5, #2]
	cmp r6, #0
	mov r1, r0, lsl #0x10
	str r1, [r4, #0x70]
	streq r1, [r4, #0x68]
	beq _020789CC
	ldr r0, [r4, #0x68]
	subs r0, r1, r0
	moveq r6, #0
	beq _020789CC
	mov r1, r6
	bl _s32_div_f
	str r0, [r4, #0x6c]
_020789CC:
	strh r6, [r4, #0x74]
	add r0, r5, #3
	ldmfd sp!, {r4, r5, r6, pc}
_020789D8: .word unk_020B9FD8
	arm_func_end DseTrackEvent_SongVolumeFade

	arm_func_start DseTrackEvent_RestoreEnvelopeDefaults
DseTrackEvent_RestoreEnvelopeDefaults: ; 0x020789DC
	stmfd sp!, {r4, lr}
	mov r4, r0
	add r0, r3, #0x60
	bl DseEnvelopeParameters_Reset
	mov r0, r4
	ldmfd sp!, {r4, pc}
	arm_func_end DseTrackEvent_RestoreEnvelopeDefaults

	arm_func_start DseTrackEvent_SetEnvelopeAttackBegin
DseTrackEvent_SetEnvelopeAttackBegin: ; 0x020789F4
	stmfd sp!, {r4, lr}
	mov r4, r0
	ldrb r1, [r4]
	add r0, r3, #0x60
	strb r1, [r3, #0x68]
	bl DseEnvelopeParameters_CheckValidity
	add r0, r4, #1
	ldmfd sp!, {r4, pc}
	arm_func_end DseTrackEvent_SetEnvelopeAttackBegin

	arm_func_start DseTrackEvent_SetEnvelopeAttackTime
DseTrackEvent_SetEnvelopeAttackTime: ; 0x02078A14
	stmfd sp!, {r4, lr}
	mov r4, r0
	ldrb r1, [r4]
	add r0, r3, #0x60
	strb r1, [r3, #0x69]
	bl DseEnvelopeParameters_CheckValidity
	add r0, r4, #1
	ldmfd sp!, {r4, pc}
	arm_func_end DseTrackEvent_SetEnvelopeAttackTime

	arm_func_start DseTrackEvent_SetEnvelopeHoldTime
DseTrackEvent_SetEnvelopeHoldTime: ; 0x02078A34
	stmfd sp!, {r4, lr}
	mov r4, r0
	ldrb r1, [r4]
	add r0, r3, #0x60
	strb r1, [r3, #0x6c]
	bl DseEnvelopeParameters_CheckValidity
	add r0, r4, #1
	ldmfd sp!, {r4, pc}
	arm_func_end DseTrackEvent_SetEnvelopeHoldTime

	arm_func_start DseTrackEvent_SetEnvelopeDecayTimeAndSustainLevel
DseTrackEvent_SetEnvelopeDecayTimeAndSustainLevel: ; 0x02078A54
	stmfd sp!, {r4, lr}
	mov r4, r0
	ldrb r0, [r4]
	cmp r0, #0xff
	strneb r0, [r3, #0x6a]
	ldrb r0, [r4, #1]
	cmp r0, #0xff
	strneb r0, [r3, #0x6b]
	add r0, r3, #0x60
	bl DseEnvelopeParameters_CheckValidity
	add r0, r4, #2
	ldmfd sp!, {r4, pc}
	arm_func_end DseTrackEvent_SetEnvelopeDecayTimeAndSustainLevel

	arm_func_start DseTrackEvent_SetEnvelopeSustainTime
DseTrackEvent_SetEnvelopeSustainTime: ; 0x02078A84
	stmfd sp!, {r4, lr}
	mov r4, r0
	ldrb r1, [r4]
	add r0, r3, #0x60
	strb r1, [r3, #0x6d]
	bl DseEnvelopeParameters_CheckValidity
	add r0, r4, #1
	ldmfd sp!, {r4, pc}
	arm_func_end DseTrackEvent_SetEnvelopeSustainTime

	arm_func_start DseTrackEvent_SetEnvelopeReleaseTime
DseTrackEvent_SetEnvelopeReleaseTime: ; 0x02078AA4
	stmfd sp!, {r4, lr}
	mov r4, r0
	ldrb r1, [r4]
	add r0, r3, #0x60
	strb r1, [r3, #0x6e]
	bl DseEnvelopeParameters_CheckValidity
	add r0, r4, #1
	ldmfd sp!, {r4, pc}
	arm_func_end DseTrackEvent_SetEnvelopeReleaseTime

	arm_func_start DseTrackEvent_SetNoteDurationMultiplier
DseTrackEvent_SetNoteDurationMultiplier: ; 0x02078AC4
	ldrb r1, [r0], #1
	strb r1, [r2, #5]
	bx lr
	arm_func_end DseTrackEvent_SetNoteDurationMultiplier

	arm_func_start DseTrackEvent_SetModulationDepth
DseTrackEvent_SetModulationDepth: ; 0x02078AD0
	stmfd sp!, {r4, lr}
	mov r4, r0
	ldrsb r1, [r4]
	mov r0, r3
	bl DseChannel_SetModulationDepth
	add r0, r4, #1
	ldmfd sp!, {r4, pc}
	arm_func_end DseTrackEvent_SetModulationDepth

	arm_func_start DseTrackEvent_SetHoldNotes
DseTrackEvent_SetHoldNotes: ; 0x02078AEC
	stmfd sp!, {r4, lr}
	mov r4, r0
	ldrb r1, [r4]
	ldr r0, [r2, #0x54]
	cmp r1, #0x40
	ldrb r1, [r0, #4]
	orrhs r1, r1, #1
	strhsb r1, [r0, #4]
	bhs _02078B1C
	and r1, r1, #0xfe
	strb r1, [r0, #4]
	bl DseChannel_ReleaseHeld
_02078B1C:
	add r0, r4, #1
	ldmfd sp!, {r4, pc}
	arm_func_end DseTrackEvent_SetHoldNotes

	arm_func_start DseTrackEvent_SetFlagBit1Unknown
DseTrackEvent_SetFlagBit1Unknown: ; 0x02078B24
	ldrb r1, [r3, #4]
	orr r1, r1, #2
	strb r1, [r3, #4]
	bx lr
	arm_func_end DseTrackEvent_SetFlagBit1Unknown

	arm_func_start DseTrackEvent_SetOptionalVolume
DseTrackEvent_SetOptionalVolume: ; 0x02078B34
	ldrb r1, [r0], #1
	strb r1, [r3, #0x54]
	bx lr
	arm_func_end DseTrackEvent_SetOptionalVolume

	arm_func_start DseTrackEvent_Dummy2Bytes
DseTrackEvent_Dummy2Bytes: ; 0x02078B40
	add r0, r0, #2
	bx lr
	arm_func_end DseTrackEvent_Dummy2Bytes

	arm_func_start DseTrackEvent_SetTuning
DseTrackEvent_SetTuning: ; 0x02078B48
	stmfd sp!, {r3, lr}
	ldrsb r1, [r0]
	ldr r2, [r3, #0x1c]
	ldr r12, [r3, #0xc0]
	mov r1, r1, lsl #0x18
	mov lr, r1, asr #0x10
	strh lr, [r3, #0x50]
	mov r1, r2, asr #0x10
	mov r1, r1, lsl #0x10
	ldrsh r12, [r12, #4]
	add r1, lr, r1, asr #16
	ldr r2, _02078BC4 ; =0x04000208
	add r1, r12, r1
	strh r1, [r3, #0x16]
	ldrh r12, [r2]
	mov r1, #0
	strh r1, [r2]
	ldr r2, [r3, #0xb0]
	cmp r2, #0
	beq _02078BB0
_02078B98:
	ldrh r1, [r2, #6]
	orr r1, r1, #0x10
	strh r1, [r2, #6]
	ldr r2, [r2, #0x154]
	cmp r2, #0
	bne _02078B98
_02078BB0:
	ldr r2, _02078BC4 ; =0x04000208
	add r0, r0, #1
	ldrh r1, [r2]
	strh r12, [r2]
	ldmfd sp!, {r3, pc}
_02078BC4: .word 0x04000208
	arm_func_end DseTrackEvent_SetTuning

	arm_func_start DseTrackEvent_TuningDeltaCoarse
DseTrackEvent_TuningDeltaCoarse: ; 0x02078BC8
	stmfd sp!, {r3, lr}
	ldrsb lr, [r0]
	ldrsh r1, [r3, #0x50]
	ldr r2, [r3, #0x1c]
	ldr r12, [r3, #0xc0]
	add r1, r1, lr, lsl #8
	mov r1, r1, lsl #0x10
	mov lr, r1, asr #0x10
	strh lr, [r3, #0x50]
	mov r1, r2, asr #0x10
	mov r1, r1, lsl #0x10
	ldrsh r12, [r12, #4]
	add r1, lr, r1, asr #16
	ldr r2, _02078C4C ; =0x04000208
	add r1, r12, r1
	strh r1, [r3, #0x16]
	ldrh r12, [r2]
	mov r1, #0
	strh r1, [r2]
	ldr r2, [r3, #0xb0]
	cmp r2, #0
	beq _02078C38
_02078C20:
	ldrh r1, [r2, #6]
	orr r1, r1, #0x10
	strh r1, [r2, #6]
	ldr r2, [r2, #0x154]
	cmp r2, #0
	bne _02078C20
_02078C38:
	ldr r2, _02078C4C ; =0x04000208
	add r0, r0, #1
	ldrh r1, [r2]
	strh r12, [r2]
	ldmfd sp!, {r3, pc}
_02078C4C: .word 0x04000208
	arm_func_end DseTrackEvent_TuningDeltaCoarse

	arm_func_start DseTrackEvent_TuningDeltaFine
DseTrackEvent_TuningDeltaFine: ; 0x02078C50
	stmfd sp!, {r3, lr}
	ldrsb lr, [r0]
	ldrsh r1, [r3, #0x50]
	ldr r2, [r3, #0x1c]
	ldr r12, [r3, #0xc0]
	add r1, r1, lr, lsl #2
	mov r1, r1, lsl #0x10
	mov lr, r1, asr #0x10
	strh lr, [r3, #0x50]
	mov r1, r2, asr #0x10
	mov r1, r1, lsl #0x10
	ldrsh r12, [r12, #4]
	add r1, lr, r1, asr #16
	ldr r2, _02078CD4 ; =0x04000208
	add r1, r12, r1
	strh r1, [r3, #0x16]
	ldrh r12, [r2]
	mov r1, #0
	strh r1, [r2]
	ldr r2, [r3, #0xb0]
	cmp r2, #0
	beq _02078CC0
_02078CA8:
	ldrh r1, [r2, #6]
	orr r1, r1, #0x10
	strh r1, [r2, #6]
	ldr r2, [r2, #0x154]
	cmp r2, #0
	bne _02078CA8
_02078CC0:
	ldr r2, _02078CD4 ; =0x04000208
	add r0, r0, #1
	ldrh r1, [r2]
	strh r12, [r2]
	ldmfd sp!, {r3, pc}
_02078CD4: .word 0x04000208
	arm_func_end DseTrackEvent_TuningDeltaFine

	arm_func_start DseTrackEvent_TuningDeltaFull
DseTrackEvent_TuningDeltaFull: ; 0x02078CD8
	stmfd sp!, {r3, lr}
	ldrb r12, [r0]
	ldrb r1, [r0, #1]
	ldrsh lr, [r3, #0x50]
	ldr r2, [r3, #0x1c]
	add r1, r12, r1, lsl #8
	add r1, lr, r1
	mov r1, r1, lsl #0x10
	mov lr, r1, asr #0x10
	mov r1, r2, asr #0x10
	mov r1, r1, lsl #0x10
	ldr r2, [r3, #0xc0]
	strh lr, [r3, #0x50]
	ldrsh r12, [r2, #4]
	add r1, lr, r1, asr #16
	ldr r2, _02078D64 ; =0x04000208
	add r1, r12, r1
	strh r1, [r3, #0x16]
	ldrh r12, [r2]
	mov r1, #0
	strh r1, [r2]
	ldr r2, [r3, #0xb0]
	cmp r2, #0
	beq _02078D50
_02078D38:
	ldrh r1, [r2, #6]
	orr r1, r1, #0x10
	strh r1, [r2, #6]
	ldr r2, [r2, #0x154]
	cmp r2, #0
	bne _02078D38
_02078D50:
	ldr r2, _02078D64 ; =0x04000208
	add r0, r0, #2
	ldrh r1, [r2]
	strh r12, [r2]
	ldmfd sp!, {r3, pc}
_02078D64: .word 0x04000208
	arm_func_end DseTrackEvent_TuningDeltaFull

	arm_func_start DseTrackEvent_TuningFade
DseTrackEvent_TuningFade: ; 0x02078D68
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	mov r6, r3
	mov r7, r0
	ldrb r1, [r6, #4]
	ldrb r4, [r7]
	ldrb r0, [r7, #1]
	tst r1, #2
	ldrb r2, [r7, #2]
	add r0, r4, r0, lsl #8
	moveq r1, #0
	streq r1, [r6, #0x1c]
	mov r0, r0, lsl #0x10
	mov r5, r0, lsr #0x10
	ldr r1, [r6, #0x1c]
	mov r0, r2, lsl #0x18
	mov r2, r1, asr #0x10
	add r0, r2, r0, lsr #16
	mov r0, r0, lsl #0x10
	mov r0, r0, lsr #0x10
	mov r0, r0, lsl #0x10
	cmp r5, #0
	ldr r4, [r6, #0xc0]
	str r0, [r6, #0x24]
	streq r0, [r6, #0x1c]
	beq _02078DE4
	subs r0, r0, r1
	moveq r5, #0
	beq _02078DE4
	mov r1, r5
	bl _s32_div_f
	str r0, [r6, #0x20]
_02078DE4:
	ldr r0, [r6, #0x1c]
	strh r5, [r6, #0x28]
	mov r0, r0, asr #0x10
	ldrsh r1, [r6, #0x50]
	mov r0, r0, lsl #0x10
	ldrsh r2, [r4, #4]
	add r0, r1, r0, lsr #16
	ldr r1, _02078E50 ; =0x04000208
	add r0, r2, r0
	strh r0, [r6, #0x16]
	ldrh r3, [r1]
	mov r0, #0
	strh r0, [r1]
	ldr r1, [r6, #0xb0]
	cmp r1, #0
	beq _02078E3C
_02078E24:
	ldrh r0, [r1, #6]
	orr r0, r0, #0x10
	strh r0, [r1, #6]
	ldr r1, [r1, #0x154]
	cmp r1, #0
	bne _02078E24
_02078E3C:
	ldr r2, _02078E50 ; =0x04000208
	add r0, r7, #3
	ldrh r1, [r2]
	strh r3, [r2]
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_02078E50: .word 0x04000208
	arm_func_end DseTrackEvent_TuningFade

	arm_func_start DseTrackEvent_SetNoteRandomRegion
DseTrackEvent_SetNoteRandomRegion: ; 0x02078E54
	ldrb r1, [r0]
	ldrb r12, [r0, #1]
	add r0, r0, #2
	mov r2, r1
	cmp r1, r12
	movhi r2, r12
	movhi r12, r1
	strb r2, [r3, #0xc]
	strb r12, [r3, #0xd]
	bx lr
	arm_func_end DseTrackEvent_SetNoteRandomRegion

	arm_func_start DseTrackEvent_SetTuningJitterAmplitude
DseTrackEvent_SetTuningJitterAmplitude: ; 0x02078E7C
	ldrb r2, [r0]
	ldrb r1, [r0, #1]
	add r0, r0, #2
	add r1, r2, r1, lsl #8
	strh r1, [r3, #0xa]
	bx lr
	arm_func_end DseTrackEvent_SetTuningJitterAmplitude

	arm_func_start DseTrackEvent_SetKeyBend
DseTrackEvent_SetKeyBend: ; 0x02078E94
	stmfd sp!, {r4, lr}
	mov r4, r0
	ldrb r2, [r4]
	ldrb r1, [r4, #1]
	mov r0, r3
	add r1, r1, r2, lsl #8
	mov r1, r1, lsl #0x10
	mov r1, r1, asr #0x10
	bl DseChannel_SetKeyBend
	add r0, r4, #2
	ldmfd sp!, {r4, pc}
	arm_func_end DseTrackEvent_SetKeyBend

	arm_func_start DseTrackEvent_SetUnknown2
DseTrackEvent_SetUnknown2: ; 0x02078EC0
	ldrb r2, [r0]
	ldrb r1, [r0, #1]
	add r0, r0, #2
	add r1, r1, r2, lsl #8
	strh r1, [r3, #0x52]
	bx lr
	arm_func_end DseTrackEvent_SetUnknown2

	arm_func_start DseTrackEvent_SetKeyBendRange
DseTrackEvent_SetKeyBendRange: ; 0x02078ED8
	ldrb r1, [r0], #1
	strb r1, [r3, #0x55]
	bx lr
	arm_func_end DseTrackEvent_SetKeyBendRange

	arm_func_start DseTrackEvent_SetupKeyBendLfo
DseTrackEvent_SetupKeyBendLfo: ; 0x02078EE4
	stmfd sp!, {r4, r5, r6, lr}
	ldrb r6, [r0]
	ldrb r1, [r0, #1]
	ldrb r5, [r0, #2]
	ldrb r4, [r0, #3]
	ldrb lr, [r0, #4]
	mov r2, #0
	mov r12, #1
	add r1, r6, r1, lsl #8
	mov r1, r1, lsl #0x10
	mov r6, r1, asr #0x10
	add r1, r5, r4, lsl #8
	strb r12, [r3, #0x71]
	strb r12, [r3, #0x72]
	strb lr, [r3, #0x73]
	str r6, [r3, #0x74]
	strh r1, [r3, #0x78]
	strh r2, [r3, #0x7a]
	strh r2, [r3, #0x7c]
	strb r2, [r3, #0x7e]
	add r0, r0, #5
	ldmfd sp!, {r4, r5, r6, pc}
	arm_func_end DseTrackEvent_SetupKeyBendLfo

	arm_func_start DseTrackEvent_SetupKeyBendLfoEnvelope
DseTrackEvent_SetupKeyBendLfoEnvelope: ; 0x02078F3C
	ldrb r2, [r0]
	ldrb r1, [r0, #1]
	add r1, r2, r1, lsl #8
	strh r1, [r3, #0x7a]
	ldrb r2, [r0, #2]
	ldrb r1, [r0, #3]
	add r0, r0, #4
	add r1, r2, r1, lsl #8
	strh r1, [r3, #0x7c]
	bx lr
	arm_func_end DseTrackEvent_SetupKeyBendLfoEnvelope

	arm_func_start DseTrackEvent_UseKeyBendLfo
DseTrackEvent_UseKeyBendLfo: ; 0x02078F64
	ldrb r1, [r0]
	add r0, r0, #1
	cmp r1, #2
	moveq r1, #1
	strb r1, [r3, #0x71]
	cmp r1, #0
	moveq r1, #0
	movne r1, #1
	strb r1, [r3, #0x72]
	bx lr
	arm_func_end DseTrackEvent_UseKeyBendLfo

	arm_func_start DseTrackEvent_SetVolume
DseTrackEvent_SetVolume: ; 0x02078F8C
	stmfd sp!, {r3, r4, r5, lr}
	ldrsb r12, [r0]
	ldrb r1, [r3, #0x4c]
	mov r5, #0
	mov r4, r12, lsl #0x10
	ldr r2, [r3, #0xc0]
	str r4, [r3, #0x34]
	str r4, [r3, #0x2c]
	strh r5, [r3, #0x38]
	ldrsb r2, [r2, #8]
	smulbb r1, r12, r1
	mul lr, r2, r1
	ldr r12, _02079018 ; =0x82061029
	mov r1, lr, lsr #0x1f
	smull r2, r4, r12, lr
	add r4, lr, r4
	add r4, r1, r4, asr #13
	ldr r1, _0207901C ; =0x04000208
	strh r4, [r3, #0x18]
	ldrh r4, [r1]
	strh r5, [r1]
	ldr r2, [r3, #0xb0]
	cmp r2, #0
	beq _02079004
_02078FEC:
	ldrh r1, [r2, #6]
	orr r1, r1, #0x20
	strh r1, [r2, #6]
	ldr r2, [r2, #0x154]
	cmp r2, #0
	bne _02078FEC
_02079004:
	ldr r2, _0207901C ; =0x04000208
	add r0, r0, #1
	ldrh r1, [r2]
	strh r4, [r2]
	ldmfd sp!, {r3, r4, r5, pc}
_02079018: .word 0x82061029
_0207901C: .word 0x04000208
	arm_func_end DseTrackEvent_SetVolume

	arm_func_start DseTrackEvent_VolumeDelta
DseTrackEvent_VolumeDelta: ; 0x02079020
	stmfd sp!, {r3, r4, r5, lr}
	ldrsb r2, [r0]
	ldr r1, [r3, #0x2c]
	add r2, r2, r1, asr #16
	cmp r2, #0x7f
	movgt r2, #0x7f
	bgt _02079044
	cmp r2, #0
	movlt r2, #0
_02079044:
	ldrb r1, [r3, #0x4c]
	mov r4, r2, lsl #0x10
	mov r5, #0
	mul r1, r2, r1
	ldr r2, [r3, #0xc0]
	str r4, [r3, #0x34]
	str r4, [r3, #0x2c]
	strh r5, [r3, #0x38]
	ldrsb lr, [r2, #8]
	ldr r2, _020790C8 ; =0x82061029
	ldr r12, _020790CC ; =0x04000208
	mul r4, lr, r1
	smull r1, lr, r2, r4
	add lr, r4, lr
	mov r1, r4, lsr #0x1f
	add lr, r1, lr, asr #13
	strh lr, [r3, #0x18]
	ldrh r4, [r12]
	strh r5, [r12]
	ldr r2, [r3, #0xb0]
	cmp r2, #0
	beq _020790B4
_0207909C:
	ldrh r1, [r2, #6]
	orr r1, r1, #0x20
	strh r1, [r2, #6]
	ldr r2, [r2, #0x154]
	cmp r2, #0
	bne _0207909C
_020790B4:
	ldr r2, _020790CC ; =0x04000208
	add r0, r0, #1
	ldrh r1, [r2]
	strh r4, [r2]
	ldmfd sp!, {r3, r4, r5, pc}
_020790C8: .word 0x82061029
_020790CC: .word 0x04000208
	arm_func_end DseTrackEvent_VolumeDelta

	arm_func_start DseTrackEvent_VolumeFade
DseTrackEvent_VolumeFade: ; 0x020790D0
	stmfd sp!, {r4, r5, r6, lr}
	mov r5, r0
	ldrb r2, [r5]
	ldrb r0, [r5, #1]
	ldrsb r1, [r5, #2]
	mov r4, r3
	add r0, r2, r0, lsl #8
	mov r0, r0, lsl #0x10
	mov r1, r1, lsl #0x10
	movs r6, r0, lsr #0x10
	str r1, [r4, #0x34]
	streq r1, [r4, #0x2c]
	beq _02079120
	ldr r0, [r4, #0x2c]
	subs r0, r1, r0
	moveq r6, #0
	beq _02079120
	mov r1, r6
	bl _s32_div_f
	str r0, [r4, #0x30]
_02079120:
	strh r6, [r4, #0x38]
	add r0, r5, #3
	ldmfd sp!, {r4, r5, r6, pc}
	arm_func_end DseTrackEvent_VolumeFade

	arm_func_start DseTrackEvent_SetExpression
DseTrackEvent_SetExpression: ; 0x0207912C
	stmfd sp!, {r4, lr}
	ldrb r4, [r0]
	ldr r1, [r3, #0x2c]
	ldr r2, [r3, #0xc0]
	mov r1, r1, asr #0x10
	mul lr, r1, r4
	strb r4, [r3, #0x4c]
	ldrsb r1, [r2, #8]
	ldr r2, _020791B0 ; =0x82061029
	ldr r12, _020791B4 ; =0x04000208
	mul lr, r1, lr
	smull r1, r4, r2, lr
	add r4, lr, r4
	mov r1, lr, lsr #0x1f
	add r4, r1, r4, asr #13
	strh r4, [r3, #0x18]
	ldrh r4, [r12]
	mov r1, #0
	strh r1, [r12]
	ldr r2, [r3, #0xb0]
	cmp r2, #0
	beq _0207919C
_02079184:
	ldrh r1, [r2, #6]
	orr r1, r1, #0x20
	strh r1, [r2, #6]
	ldr r2, [r2, #0x154]
	cmp r2, #0
	bne _02079184
_0207919C:
	ldr r2, _020791B4 ; =0x04000208
	add r0, r0, #1
	ldrh r1, [r2]
	strh r4, [r2]
	ldmfd sp!, {r4, pc}
_020791B0: .word 0x82061029
_020791B4: .word 0x04000208
	arm_func_end DseTrackEvent_SetExpression

	arm_func_start DseTrackEvent_SetupVolumeLfo
DseTrackEvent_SetupVolumeLfo: ; 0x020791B8
	stmfd sp!, {r3, r4, r5, lr}
	ldrb r5, [r0]
	ldrb r1, [r0, #1]
	ldrb r4, [r0, #2]
	ldrb r12, [r0, #3]
	ldrb lr, [r0, #4]
	mov r2, #0
	add r1, r5, r1, lsl #8
	mov r1, r1, lsl #0x10
	mov r5, r1, asr #0x10
	add r4, r4, r12, lsl #8
	mov r12, #1
	mov r1, #2
	strb r12, [r3, #0x81]
	strb r1, [r3, #0x82]
	strb lr, [r3, #0x83]
	str r5, [r3, #0x84]
	strh r4, [r3, #0x88]
	strh r2, [r3, #0x8a]
	strh r2, [r3, #0x8c]
	strb r2, [r3, #0x8e]
	add r0, r0, #5
	ldmfd sp!, {r3, r4, r5, pc}
	arm_func_end DseTrackEvent_SetupVolumeLfo

	arm_func_start DseTrackEvent_SetupVolumeLfoEnvelope
DseTrackEvent_SetupVolumeLfoEnvelope: ; 0x02079214
	ldrb r2, [r0]
	ldrb r1, [r0, #1]
	add r1, r2, r1, lsl #8
	strh r1, [r3, #0x8a]
	ldrb r2, [r0, #2]
	ldrb r1, [r0, #3]
	add r0, r0, #4
	add r1, r2, r1, lsl #8
	strh r1, [r3, #0x8c]
	bx lr
	arm_func_end DseTrackEvent_SetupVolumeLfoEnvelope

	arm_func_start DseTrackEvent_UseVolumeLfo
DseTrackEvent_UseVolumeLfo: ; 0x0207923C
	ldrb r1, [r0]
	add r0, r0, #1
	cmp r1, #2
	moveq r1, #1
	strb r1, [r3, #0x81]
	cmp r1, #0
	moveq r1, #0
	movne r1, #2
	strb r1, [r3, #0x82]
	bx lr
	arm_func_end DseTrackEvent_UseVolumeLfo

	arm_func_start DseTrackEvent_SetPan
DseTrackEvent_SetPan: ; 0x02079264
	stmfd sp!, {r3, lr}
	ldrb lr, [r0]
	mov r12, #0
	ldr r1, [r3, #0xc0]
	cmp lr, #0x7f
	movgt lr, #0x7f
	mov r2, lr, lsl #0x10
	strh r12, [r3, #0x48]
	str r2, [r3, #0x44]
	str r2, [r3, #0x3c]
	ldrsb r2, [r1, #7]
	ldr r1, _020792E0 ; =0x04000208
	sub r2, r2, #0x40
	add r2, lr, r2
	strh r2, [r3, #0x1a]
	ldrh lr, [r1]
	strh r12, [r1]
	ldr r2, [r3, #0xb0]
	cmp r2, #0
	beq _020792CC
_020792B4:
	ldrh r1, [r2, #6]
	orr r1, r1, #0x40
	strh r1, [r2, #6]
	ldr r2, [r2, #0x154]
	cmp r2, #0
	bne _020792B4
_020792CC:
	ldr r2, _020792E0 ; =0x04000208
	add r0, r0, #1
	ldrh r1, [r2]
	strh lr, [r2]
	ldmfd sp!, {r3, pc}
_020792E0: .word 0x04000208
	arm_func_end DseTrackEvent_SetPan

	arm_func_start DseTrackEvent_PanDelta
DseTrackEvent_PanDelta: ; 0x020792E4
	stmfd sp!, {r3, lr}
	ldrsb r2, [r0]
	ldr r1, [r3, #0x3c]
	add lr, r2, r1, asr #16
	cmp lr, #0x7f
	movgt lr, #0x7f
	bgt _02079308
	cmp lr, #0
	movlt lr, #0
_02079308:
	mov r2, lr, lsl #0x10
	mov r12, #0
	ldr r1, [r3, #0xc0]
	str r2, [r3, #0x44]
	str r2, [r3, #0x3c]
	strh r12, [r3, #0x48]
	ldrsb r2, [r1, #7]
	ldr r1, _02079374 ; =0x04000208
	sub r2, r2, #0x40
	add r2, lr, r2
	strh r2, [r3, #0x1a]
	ldrh lr, [r1]
	strh r12, [r1]
	ldr r2, [r3, #0xb0]
	cmp r2, #0
	beq _02079360
_02079348:
	ldrh r1, [r2, #6]
	orr r1, r1, #0x40
	strh r1, [r2, #6]
	ldr r2, [r2, #0x154]
	cmp r2, #0
	bne _02079348
_02079360:
	ldr r2, _02079374 ; =0x04000208
	add r0, r0, #1
	ldrh r1, [r2]
	strh lr, [r2]
	ldmfd sp!, {r3, pc}
_02079374: .word 0x04000208
	arm_func_end DseTrackEvent_PanDelta

	arm_func_start DseTrackEvent_PanFade
DseTrackEvent_PanFade: ; 0x02079378
	stmfd sp!, {r4, r5, r6, lr}
	mov r5, r0
	ldrb r2, [r5]
	ldrb r0, [r5, #1]
	ldrsb r1, [r5, #2]
	mov r4, r3
	add r0, r2, r0, lsl #8
	mov r0, r0, lsl #0x10
	mov r1, r1, lsl #0x10
	movs r6, r0, lsr #0x10
	str r1, [r4, #0x44]
	streq r1, [r4, #0x3c]
	beq _020793C8
	ldr r0, [r4, #0x3c]
	subs r0, r1, r0
	moveq r6, #0
	beq _020793C8
	mov r1, r6
	bl _s32_div_f
	str r0, [r4, #0x40]
_020793C8:
	strh r6, [r4, #0x48]
	add r0, r5, #3
	ldmfd sp!, {r4, r5, r6, pc}
	arm_func_end DseTrackEvent_PanFade

	arm_func_start DseTrackEvent_SetupPanLfo
DseTrackEvent_SetupPanLfo: ; 0x020793D4
	stmfd sp!, {r3, r4, r5, lr}
	ldrb r5, [r0]
	ldrb r1, [r0, #1]
	ldrb r4, [r0, #2]
	ldrb r12, [r0, #3]
	ldrb lr, [r0, #4]
	mov r2, #0
	add r1, r5, r1, lsl #8
	mov r1, r1, lsl #0x10
	mov r5, r1, asr #0x10
	add r4, r4, r12, lsl #8
	mov r12, #1
	mov r1, #3
	strb r12, [r3, #0x91]
	strb r1, [r3, #0x92]
	strb lr, [r3, #0x93]
	str r5, [r3, #0x94]
	strh r4, [r3, #0x98]
	strh r2, [r3, #0x9a]
	strh r2, [r3, #0x9c]
	strb r2, [r3, #0x9e]
	add r0, r0, #5
	ldmfd sp!, {r3, r4, r5, pc}
	arm_func_end DseTrackEvent_SetupPanLfo

	arm_func_start DseTrackEvent_SetupPanLfoEnvelope
DseTrackEvent_SetupPanLfoEnvelope: ; 0x02079430
	ldrb r2, [r0]
	ldrb r1, [r0, #1]
	add r1, r2, r1, lsl #8
	strh r1, [r3, #0x9a]
	ldrb r2, [r0, #2]
	ldrb r1, [r0, #3]
	add r0, r0, #4
	add r1, r2, r1, lsl #8
	strh r1, [r3, #0x9c]
	bx lr
	arm_func_end DseTrackEvent_SetupPanLfoEnvelope

	arm_func_start DseTrackEvent_UsePanLfo
DseTrackEvent_UsePanLfo: ; 0x02079458
	ldrb r1, [r0]
	add r0, r0, #1
	cmp r1, #2
	moveq r1, #1
	strb r1, [r3, #0x91]
	cmp r1, #0
	moveq r1, #0
	movne r1, #3
	strb r1, [r3, #0x92]
	bx lr
	arm_func_end DseTrackEvent_UsePanLfo

	arm_func_start DseTrackEvent_SetupLfo
DseTrackEvent_SetupLfo: ; 0x02079480
	stmfd sp!, {r4, lr}
	ldrb r2, [r0]
	ldrb r1, [r0, #1]
	ldrb r12, [r3, #0x5d]
	add r3, r3, #0x70
	add r1, r2, r1, lsl #8
	mov r1, r1, lsl #0x10
	ldrb r4, [r0, #2]
	ldrb lr, [r0, #3]
	ldrb r2, [r0, #4]
	add r3, r3, r12, lsl #4
	mov r1, r1, asr #0x10
	strb r2, [r3, #3]
	str r1, [r3, #4]
	add r1, r4, lr, lsl #8
	strh r1, [r3, #8]
	mov r1, #0
	strh r1, [r3, #0xa]
	strh r1, [r3, #0xc]
	strb r1, [r3, #0xe]
	add r0, r0, #5
	ldmfd sp!, {r4, pc}
	arm_func_end DseTrackEvent_SetupLfo

	arm_func_start DseTrackEvent_SetupLfoEnvelope
DseTrackEvent_SetupLfoEnvelope: ; 0x020794D8
	ldrb r12, [r3, #0x5d]
	ldrb r2, [r0]
	ldrb r1, [r0, #1]
	add r3, r3, #0x70
	add r3, r3, r12, lsl #4
	add r1, r2, r1, lsl #8
	strh r1, [r3, #0xa]
	ldrb r2, [r0, #2]
	ldrb r1, [r0, #3]
	add r0, r0, #4
	add r1, r2, r1, lsl #8
	strh r1, [r3, #0xc]
	bx lr
	arm_func_end DseTrackEvent_SetupLfoEnvelope

	arm_func_start DseTrackEvent_SetLfoParameter
DseTrackEvent_SetLfoParameter: ; 0x0207950C
	ldrb r1, [r3, #0x5d]
	ldrb r12, [r0]
	add r2, r3, #0x70
	add r1, r2, r1, lsl #4
	ldrb r2, [r0, #1]
	cmp r12, #0xa
	addls pc, pc, r12, lsl #2
	b _02079614
_0207952C: ; jump table
	b _02079614 ; case 0
	b _02079558 ; case 1
	b _02079560 ; case 2
	b _02079568 ; case 3
	b _02079570 ; case 4
	b _02079578 ; case 5
	b _020795C8 ; case 6
	b _020795D4 ; case 7
	b _020795E4 ; case 8
	b _020795F8 ; case 9
	b _02079608 ; case 10
_02079558:
	strb r2, [r3, #0x5d]
	b _02079614
_02079560:
	strb r2, [r1, #1]
	b _02079614
_02079568:
	strb r2, [r1, #2]
	b _02079614
_02079570:
	strb r2, [r1, #3]
	b _02079614
_02079578:
	ldrb r3, [r1, #2]
	cmp r3, #4
	addls pc, pc, r3, lsl #2
	b _020795B4
_02079588: ; jump table
	b _020795B4 ; case 0
	b _0207959C ; case 1
	b _020795A4 ; case 2
	b _020795AC ; case 3
	b _020795B0 ; case 4
_0207959C:
	mov r3, #0xa
	b _020795B8
_020795A4:
	mvn r3, #0x13
	b _020795B8
_020795AC:
	b _020795B4
_020795B0:
	b _0207959C
_020795B4:
	mov r3, #0x14
_020795B8:
	mul r3, r2, r3
	mov r2, r3
	str r2, [r1, #4]
	b _02079614
_020795C8:
	add r2, r2, r2, lsl #2
	strh r2, [r1, #8]
	b _02079614
_020795D4:
	mov r3, #0x14
	mul r3, r2, r3
	strh r3, [r1, #0xa]
	b _02079614
_020795E4:
	ldrh r3, [r1, #0xa]
	and r3, r3, #0xff00
	orr r2, r3, r2
_020795F0:
	strh r2, [r1, #0xa]
	b _02079614
_020795F8:
	ldrh r3, [r1, #0xa]
	and r3, r3, #0xff
	orr r2, r3, r2, lsl #8
	b _020795F0
_02079608:
	mov r3, #0x14
	mul r3, r2, r3
	strh r3, [r1, #0xc]
_02079614:
	add r0, r0, #2
	bx lr
	arm_func_end DseTrackEvent_SetLfoParameter

	arm_func_start DseTrackEvent_UseLfo
DseTrackEvent_UseLfo: ; 0x0207961C
	stmfd sp!, {r3, lr}
	ldrb r12, [r0, #1]
	ldrb r2, [r0]
	ldrb lr, [r0, #2]
	add r1, r3, #0x70
	cmp r12, #2
	strb r2, [r3, #0x5d]
	add r1, r1, r2, lsl #4
	moveq r12, #1
	strb r12, [r1, #1]
	strb lr, [r1, #2]
	add r0, r0, #3
	ldmfd sp!, {r3, pc}
	arm_func_end DseTrackEvent_UseLfo

	arm_func_start DseTrackEvent_Signal
DseTrackEvent_Signal: ; 0x02079650
	stmfd sp!, {r4, lr}
	mov r4, r0
	mov lr, r1
	ldrb r2, [r4]
	ldr r0, [lr, #0x28]
	ldr r3, [lr, #0xa0]
	ldr r12, [lr, #0x9c]
	mov r1, #8
	strb r2, [lr, #0x16]
	blx r12
	add r0, r4, #1
	ldmfd sp!, {r4, pc}
	arm_func_end DseTrackEvent_Signal

	arm_func_start DseTrackEvent_Dummy2Bytes2
DseTrackEvent_Dummy2Bytes2: ; 0x02079680
	add r0, r0, #2
	bx lr
	arm_func_end DseTrackEvent_Dummy2Bytes2

	arm_func_start DseMidi_Init
DseMidi_Init: ; 0x02079688
	ldr r0, _02079698 ; =0x020BBEBC
	mov r1, #0
	str r1, [r0]
	bx lr
_02079698: .word unk_020BBEBC
	arm_func_end DseMidi_Init

	arm_func_start DseMidi_GetEvent
DseMidi_GetEvent: ; 0x0207969C
	stmfd sp!, {r4, r5, r6, r7, r8, lr}
	sub sp, sp, #8
	ldr r5, _02079818 ; =DSE_MIDI_EVENT_LENGTHS
	add r4, sp, #0
	mov r12, #0
	mov r3, #4
_020796B4:
	ldrb r1, [r5, #1]
	ldrb r2, [r5], #2
	subs r3, r3, #1
	strb r1, [r4, #1]
	strb r2, [r4], #2
	bne _020796B4
	ldr r6, _0207981C ; =0x020BBEBC
	ldr r1, [r6]
	ldrb r4, [r1, #0x206]
	cmp r4, #0
	addeq sp, sp, #8
	moveq r0, #0
	ldmeqfd sp!, {r4, r5, r6, r7, r8, pc}
	cmp r4, #0
	ldrb lr, [r1, #0x205]
	mov r5, #0
	beq _020797F8
	mov r2, #1
	add r3, sp, #0
_02079700:
	ldr r8, [r6]
	sub r4, r4, #1
	add r1, r8, lr
	ldrb r1, [r1, #4]
	add r7, lr, #1
	and lr, r7, #0xff
	cmp lr, #0x200
	moveq lr, r12
	and r4, r4, #0xff
	cmp r1, #0x80
	blo _02079778
	cmp r1, #0xf0
	strhsb r2, [r8, #0x20a]
	ldrhs r1, [r6]
	strhsb r12, [r1, #0x207]
	bhs _020797F0
	and r7, r1, #0xf0
	strb r7, [r8, #0x20b]
	and r8, r1, #0xf
	ldr r7, [r6]
	add r1, r3, r1, asr #4
	strb r8, [r7, #0x20c]
	ldrb r7, [r1, #-8]
	ldr r1, [r6]
	strb r7, [r1, #0x207]
	ldr r1, [r6]
	strb r12, [r1, #0x208]
	ldr r1, [r6]
	strb r12, [r1, #0x20a]
	b _020797F0
_02079778:
	ldrb r7, [r8, #0x20a]
	cmp r7, #0
	bne _020797F0
	ldr r8, [r6]
	ldrb r7, [r8, #0x208]
	add r7, r8, r7
	strb r1, [r7, #0x20d]
	ldr r7, [r6]
	ldrb r1, [r7, #0x208]
	add r1, r1, #1
	strb r1, [r7, #0x208]
	ldr r1, [r6]
	ldrb r8, [r1, #0x208]
	ldrb r7, [r1, #0x207]
	cmp r8, r7
	bne _020797F0
	ldrb r6, [r1, #0x20b]
	ldrb r5, [r1, #0x20c]
	ldr r2, _0207981C ; =0x020BBEBC
	mov r3, #0
	strb r6, [r0]
	strb r5, [r0, #1]
	ldrb r6, [r1, #0x20d]
	ldrb r1, [r1, #0x20e]
	mov r5, #1
	strb r6, [r0, #2]
	strb r1, [r0, #3]
	ldr r0, [r2]
	strb r3, [r0, #0x208]
	b _020797F8
_020797F0:
	cmp r4, #0
	bne _02079700
_020797F8:
	ldr r1, _0207981C ; =0x020BBEBC
	mov r0, r5
	ldr r2, [r1]
	strb r4, [r2, #0x206]
	ldr r1, [r1]
	strb lr, [r1, #0x205]
	add sp, sp, #8
	ldmfd sp!, {r4, r5, r6, r7, r8, pc}
_02079818: .word DSE_MIDI_EVENT_LENGTHS
_0207981C: .word unk_020BBEBC
	arm_func_end DseMidi_GetEvent

	arm_func_start DseMidi_ProcessEvent
DseMidi_ProcessEvent: ; 0x02079820
	stmfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, lr}
	sub sp, sp, #0xc
	ldr r0, _020799EC ; =0x020BBEBC
	ldr r0, [r0]
	ldr r4, [r0]
	cmp r4, #0
	addeq sp, sp, #0xc
	ldmeqfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
	add r0, sp, #8
	bl DseMidi_GetEvent
	cmp r0, #0
	addeq sp, sp, #0xc
	ldmeqfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
	add r9, r4, #0x10
	mov r4, #0
	ldr r11, _020799F0 ; =0x02091954
	mvn r6, #0x80000000
	add r7, sp, #0
	mov r5, #1
	mov r8, r4
_02079870:
	ldrb r2, [sp, #9]
	mov r0, #0xc4
	ldrb r1, [sp, #8]
	mla r10, r2, r0, r9
	cmp r1, #0xc0
	bgt _020798B8
	bge _020799A4
	cmp r1, #0x90
	bgt _020798A4
	bge _02079924
	cmp r1, #0x80
	beq _020798F0
	b _020799D4
_020798A4:
	cmp r1, #0xa0
	ble _020799D4
	cmp r1, #0xb0
	beq _02079984
	b _020799D4
_020798B8:
	cmp r1, #0xf0
	bgt _020798D8
	bge _020799D4
	cmp r1, #0xd0
	ble _020799D4
	cmp r1, #0xe0
	beq _020799B4
	b _020799D4
_020798D8:
	cmp r1, #0xf7
	ble _020799D4
	cmp r1, #0xff
	bgt _020799D4
	cmp r1, #0xfe
	b _020799D4
_020798F0:
	ldrb r1, [sp, #0xa]
	ldrb r0, [sp, #0xb]
	str r8, [sp, #4]
	strb r1, [sp, #2]
	strb r0, [sp, #3]
	strb r8, [sp]
	ldrb r0, [r10, #4]
	tst r0, #1
	bne _020799D4
_02079914:
	mov r0, r10
	mov r1, r7
	bl DseChannel_ReleaseNoteInternal
	b _020799D4
_02079924:
	ldrb r0, [sp, #0xb]
	ldrb r1, [sp, #0xa]
	str r6, [sp, #4]
	strb r0, [sp, #3]
	strb r1, [sp, #2]
	tst r0, #0xff
	beq _02079970
	mov r0, r10
	mov r1, r7
	strb r5, [sp]
	bl DseChannel_ReleaseNote
	mov r0, r10
	mov r1, r7
	bl DseChannel_AllocateNote
	movs r1, r0
	beq _020799D4
	mov r0, r10
	bl DseChannel_PlayNote
	b _020799D4
_02079970:
	strb r4, [sp]
	ldrb r0, [r10, #4]
	tst r0, #1
	bne _020799D4
	b _02079914
_02079984:
	ldrb r0, [sp, #0xa]
	ldr r2, [r11, r0, lsl #2]
	cmp r2, #0
	beq _020799D4
	ldrb r1, [sp, #0xb]
	mov r0, r10
	blx r2
	b _020799D4
_020799A4:
	ldrb r1, [sp, #0xa]
	mov r0, r10
	bl DseChannel_SetProgram
	b _020799D4
_020799B4:
	ldrb r2, [sp, #0xa]
	ldrb r1, [sp, #0xb]
	mov r0, r10
	add r1, r2, r1, lsl #7
	sub r1, r1, #0x2000
	mov r1, r1, lsl #0x10
	mov r1, r1, asr #0x10
	bl DseChannel_SetKeyBend
_020799D4:
	add r0, sp, #8
	bl DseMidi_GetEvent
	cmp r0, #0
	bne _02079870
	add sp, sp, #0xc
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
_020799EC: .word unk_020BBEBC
_020799F0: .word DSE_MIDI_CC_TABLE
	arm_func_end DseMidi_ProcessEvent

	arm_func_start DseMidiCC_BankSelectMSB
DseMidiCC_BankSelectMSB: ; 0x020799F4
	ldrh r2, [r0, #0xe]
	ldr r12, _02079A10 ; =DseChannel_SetBank
	and r2, r2, #0xff
	add r1, r2, r1, lsl #8
	strh r1, [r0, #0xe]
	ldrh r1, [r0, #0xe]
	bx r12
_02079A10: .word DseChannel_SetBank
	arm_func_end DseMidiCC_BankSelectMSB

	arm_func_start DseMidiCC_BankSelectLSB
DseMidiCC_BankSelectLSB: ; 0x02079A14
	ldrh r2, [r0, #0xe]
	ldr r12, _02079A30 ; =DseChannel_SetBank
	bic r2, r2, #0xff
	add r1, r2, r1
	mov r1, r1, lsl #0x10
	mov r1, r1, lsr #0x10
	bx r12
_02079A30: .word DseChannel_SetBank
	arm_func_end DseMidiCC_BankSelectLSB

	arm_func_start DseMidiCC_ModulationDepth
DseMidiCC_ModulationDepth: ; 0x02079A34
	mov r1, r1, lsl #0x18
	mov r1, r1, asr #0x18
	ldr r12, _02079A48 ; =DseChannel_SetModulationDepth
	strb r1, [r0, #0x4d]
	bx r12
_02079A48: .word DseChannel_SetModulationDepth
	arm_func_end DseMidiCC_ModulationDepth

	arm_func_start DseMidiCC_MaybePortamentoTime
DseMidiCC_MaybePortamentoTime: ; 0x02079A4C
	mov r2, #0xa
	mul r2, r1, r2
	strh r2, [r0, #0x52]
	bx lr
	arm_func_end DseMidiCC_MaybePortamentoTime

	arm_func_start DseMidiCC_ChannelVolume
DseMidiCC_ChannelVolume: ; 0x02079a5c
	stmfd sp!, {r4, lr}
	ldrb r2, [r0, #0x4c]
	mov r3, r1, lsl #0x10
	mov r4, #0
	mul r12, r1, r2
	ldr r1, [r0, #0xc0]
	str r3, [r0, #0x34]
	str r3, [r0, #0x2c]
	strh r4, [r0, #0x38]
	ldrsb r1, [r1, #8]
	ldr r2, _02079AE0 ; =0x82061029
	ldr r3, _02079AE4 ; =0x04000208
	mul r12, r1, r12
	smull r1, lr, r2, r12
	add lr, r12, lr
	mov r1, r12, lsr #0x1f
	add lr, r1, lr, asr #13
	strh lr, [r0, #0x18]
	ldrh r2, [r3]
	strh r4, [r3]
	ldr r1, [r0, #0xb0]
	cmp r1, #0
	beq _02079AD0
_02079AB8:
	ldrh r0, [r1, #6]
	orr r0, r0, #0x20
	strh r0, [r1, #6]
	ldr r1, [r1, #0x154]
	cmp r1, #0
	bne _02079AB8
_02079AD0:
	ldr r1, _02079AE4 ; =0x04000208
	ldrh r0, [r1]
	strh r2, [r1]
	ldmfd sp!, {r4, pc}
_02079AE0: .word 0x82061029
_02079AE4: .word 0x04000208
	arm_func_end DseMidiCC_ChannelVolume

	arm_func_start DseMidiCC_Pan
DseMidiCC_Pan: ; 0x02079AE8
	mov r2, r1, lsl #0x10
	mov r12, #0
	ldr r3, [r0, #0xc0]
	str r2, [r0, #0x44]
	str r2, [r0, #0x3c]
	strh r12, [r0, #0x48]
	ldrsb r3, [r3, #7]
	ldr r2, _02079B50 ; =0x04000208
	sub r3, r3, #0x40
	add r1, r1, r3
	strh r1, [r0, #0x1a]
	ldrh r3, [r2]
	strh r12, [r2]
	ldr r1, [r0, #0xb0]
	cmp r1, #0
	beq _02079B40
_02079B28:
	ldrh r0, [r1, #6]
	orr r0, r0, #0x40
	strh r0, [r1, #6]
	ldr r1, [r1, #0x154]
	cmp r1, #0
	bne _02079B28
_02079B40:
	ldr r1, _02079B50 ; =0x04000208
	ldrh r0, [r1]
	strh r3, [r1]
	bx lr
_02079B50: .word 0x04000208
	arm_func_end DseMidiCC_Pan

	arm_func_start DseMidiCC_Expression
DseMidiCC_Expression: ; 0x02079B54
	stmfd sp!, {r3, lr}
	ldr r2, [r0, #0x2c]
	ldr r3, [r0, #0xc0]
	mov r2, r2, asr #0x10
	mul r12, r2, r1
	strb r1, [r0, #0x4c]
	ldrsb r1, [r3, #8]
	ldr r2, _02079BD0 ; =0x82061029
	ldr r3, _02079BD4 ; =0x04000208
	mul r12, r1, r12
	smull r1, lr, r2, r12
	add lr, r12, lr
	mov r1, r12, lsr #0x1f
	add lr, r1, lr, asr #13
	strh lr, [r0, #0x18]
	ldrh r2, [r3]
	mov r1, #0
	strh r1, [r3]
	ldr r1, [r0, #0xb0]
	cmp r1, #0
	beq _02079BC0
_02079BA8:
	ldrh r0, [r1, #6]
	orr r0, r0, #0x20
	strh r0, [r1, #6]
	ldr r1, [r1, #0x154]
	cmp r1, #0
	bne _02079BA8
_02079BC0:
	ldr r1, _02079BD4 ; =0x04000208
	ldrh r0, [r1]
	strh r2, [r1]
	ldmfd sp!, {r3, pc}
_02079BD0: .word 0x82061029
_02079BD4: .word 0x04000208
	arm_func_end DseMidiCC_Expression

	arm_func_start DseMidiCC_OptionalVolume
DseMidiCC_OptionalVolume: ; 0x02079BD8
	strb r1, [r0, #0x54]
	bx lr
	arm_func_end DseMidiCC_OptionalVolume

	arm_func_start DseMidiCC_Hold1
DseMidiCC_Hold1: ; 0x02079BE0
	stmfd sp!, {r3, lr}
	cmp r1, #0x40
	ldrb r1, [r0, #4]
	orrhs r1, r1, #1
	strhsb r1, [r0, #4]
	ldmhsfd sp!, {r3, pc}
	and r1, r1, #0xfe
	strb r1, [r0, #4]
	bl DseChannel_ReleaseHeld
	ldmfd sp!, {r3, pc}
	arm_func_end DseMidiCC_Hold1

	arm_func_start DseMidiCC_Stub65
DseMidiCC_Stub65: ; 0x02079C08
	bx lr
	arm_func_end DseMidiCC_Stub65

	arm_func_start DseMidiCC_Stub84
DseMidiCC_Stub84: ; 0x02079C0C
	bx lr
	arm_func_end DseMidiCC_Stub84

	arm_func_start DseMidiCC_Stub91
DseMidiCC_Stub91: ; 0x02079C10
	bx lr
	arm_func_end DseMidiCC_Stub91

	arm_func_start DseMidiCC_Stub93
DseMidiCC_Stub93: ; 0x02079C14
	bx lr
	arm_func_end DseMidiCC_Stub93

	arm_func_start DseMidiCC_MaybeRPN
DseMidiCC_MaybeRPN: ; 0x02079C18
	mov r2, #1
	strb r1, [r0, #0x58]
	strb r2, [r0, #0x5c]
	bx lr
	arm_func_end DseMidiCC_MaybeRPN

	arm_func_start DseMidiCC_MaybeNRPNLSB
DseMidiCC_MaybeNRPNLSB: ; 0x02079C28
	mov r2, #0
	strb r1, [r0, #0x56]
	strb r2, [r0, #0x5c]
	bx lr
	arm_func_end DseMidiCC_MaybeNRPNLSB

	arm_func_start DseMidiCC_MaybeNRPNMSB
DseMidiCC_MaybeNRPNMSB: ; 0x02079C38
	mov r2, #0
	strb r1, [r0, #0x57]
	strb r2, [r0, #0x5c]
	bx lr
	arm_func_end DseMidiCC_MaybeNRPNMSB

	arm_func_start DseMidiCC_Stub6
DseMidiCC_Stub6: ; 0x02079C48
	bx lr
	arm_func_end DseMidiCC_Stub6

	arm_func_start DseMidiCC_Stub111
DseMidiCC_Stub111: ; 0x02079C4C
	bx lr
	arm_func_end DseMidiCC_Stub111

	arm_func_start DseMidiCC_UnkAllSoundsOffGlobal
DseMidiCC_UnkAllSoundsOffGlobal: ; 0x02079C50
	stmfd sp!, {r4, lr}
	ldr r4, _02079C74 ; =0x020BBEBC
	ldr r0, [r4]
	ldr r0, [r0]
	bl DseSynth_StopChannels
	ldr r0, [r4]
	ldr r0, [r0]
	bl DseSynth_ClearHeldNotes
	ldmfd sp!, {r4, pc}
_02079C74: .word unk_020BBEBC
	arm_func_end DseMidiCC_UnkAllSoundsOffGlobal

	arm_func_start DseMidiCC_ResetAllControllers
DseMidiCC_ResetAllControllers: ; 0x02079C78
	ldr r0, _02079C94 ; =0x020BBEBC
	mov r1, #0
	ldr r0, [r0]
	ldr r12, _02079C98 ; =DseSynth_SetBankAndSequence
	ldr r0, [r0]
	mov r2, r1
	bx r12
_02079C94: .word unk_020BBEBC
_02079C98: .word DseSynth_SetBankAndSequence
	arm_func_end DseMidiCC_ResetAllControllers

	arm_func_start DseMidiCC_AllNotesOff
DseMidiCC_AllNotesOff: ; 0x02079C9C
	stmfd sp!, {r3, r4, r5, lr}
	mov r4, r0
	bl DseChannel_DeallocateVoices
	ldr r1, _02079D14 ; =0x04000208
	mov r0, #0
	ldrh r5, [r1]
	strh r0, [r1]
	ldr lr, [r4, #0xb4]
	cmp lr, #0
	ldreqh r0, [r1]
	streqh r5, [r1]
	ldmeqfd sp!, {r3, r4, r5, pc}
	mov r12, lr
	mvn r1, #0
	mov r3, r0
_02079CD8:
	str r1, [lr, #4]
	strb r3, [r12, #1]
	ldr r0, [r12, #8]
	cmp r0, #0
	movne r12, r0
	bne _02079CD8
	ldr r0, _02079D18 ; =0x020B9FD8
	ldr r1, _02079D14 ; =0x04000208
	ldr r2, [r0, #0x658]
	str r2, [r12, #8]
	str lr, [r0, #0x658]
	str r3, [r4, #0xb4]
	ldrh r0, [r1]
	strh r5, [r1]
	ldmfd sp!, {r3, r4, r5, pc}
_02079D14: .word 0x04000208
_02079D18: .word unk_020B9FD8
	arm_func_end DseMidiCC_AllNotesOff

	arm_func_start DseMidiCC_MaybeMono
DseMidiCC_MaybeMono: ; 0x02079D1C
	mov r1, #0
	strb r1, [r0, #7]
	bx lr
	arm_func_end DseMidiCC_MaybeMono

	arm_func_start DseMidiCC_MaybePoly
DseMidiCC_MaybePoly: ; 0x02079D28
	mov r1, #1
	strb r1, [r0, #7]
	bx lr
	arm_func_end DseMidiCC_MaybePoly

	arm_func_start DseMidiCC_ReleaseTime
DseMidiCC_ReleaseTime: ; 0x02079D34
	ldr r12, _02079D44 ; =DseEnvelopeParameters_CheckValidity
	strb r1, [r0, #0x6e]
	add r0, r0, #0x60
	bx r12
_02079D44: .word DseEnvelopeParameters_CheckValidity
	arm_func_end DseMidiCC_ReleaseTime

	arm_func_start DseMidiCC_AttackTime
DseMidiCC_AttackTime: ; 0x02079D48
	ldr r12, _02079D58 ; =DseEnvelopeParameters_CheckValidity
	strb r1, [r0, #0x69]
	add r0, r0, #0x60
	bx r12
_02079D58: .word DseEnvelopeParameters_CheckValidity
	arm_func_end DseMidiCC_AttackTime

	arm_func_start DseMidiCC_DecayTime
DseMidiCC_DecayTime: ; 0x02079D5C
	ldr r12, _02079D6C ; =DseEnvelopeParameters_CheckValidity
	strb r1, [r0, #0x6a]
	add r0, r0, #0x60
	bx r12
_02079D6C: .word DseEnvelopeParameters_CheckValidity
	arm_func_end DseMidiCC_DecayTime

	arm_func_start DseMidiCC_SustainLevel
DseMidiCC_SustainLevel: ; 0x02079D70
	ldr r12, _02079D80 ; =DseEnvelopeParameters_CheckValidity
	strb r1, [r0, #0x6b]
	add r0, r0, #0x60
	bx r12
_02079D80: .word DseEnvelopeParameters_CheckValidity
	arm_func_end DseMidiCC_SustainLevel

	arm_func_start DseMidiCC_AutoReleaseTime
DseMidiCC_AutoReleaseTime: ; 0x02079D84
	ldr r12, _02079D94 ; =DseEnvelopeParameters_CheckValidity
	strb r1, [r0, #0x6d]
	add r0, r0, #0x60
	bx r12
_02079D94: .word DseEnvelopeParameters_CheckValidity
	arm_func_end DseMidiCC_AutoReleaseTime

	arm_func_start DseMidiCC_HoldTime
DseMidiCC_HoldTime: ; 0x02079D98
	ldr r12, _02079DA8 ; =DseEnvelopeParameters_CheckValidity
	strb r1, [r0, #0x6c]
	add r0, r0, #0x60
	bx r12
_02079DA8: .word DseEnvelopeParameters_CheckValidity
	arm_func_end DseMidiCC_HoldTime

	arm_func_start DseMidiCC_EnvelopeReset
DseMidiCC_EnvelopeReset: ; 0x02079DAC
	ldr r12, _02079DB8 ; =DseEnvelopeParameters_Reset
	add r0, r0, #0x60
	bx r12
_02079DB8: .word DseEnvelopeParameters_Reset
	arm_func_end DseMidiCC_EnvelopeReset

	arm_func_start DseMidiCC_LfoRate
DseMidiCC_LfoRate: ; 0x02079DBC
	ldrb r2, [r0, #0x5d]
	add r1, r1, r1, lsl #2
	add r0, r0, r2, lsl #4
	strh r1, [r0, #0x78]
	bx lr
	arm_func_end DseMidiCC_LfoRate

	arm_func_start DseMidiCC_UnkLfoType
DseMidiCC_UnkLfoType: ; 0x02079DD0
	and r3, r1, #2
	add r2, r0, #0x70
	strb r3, [r0, #0x5d]
	add r2, r2, r3, lsl #4
	mov r0, r1, asr #2
	strb r0, [r2, #1]
	add r0, r3, #1
	strb r0, [r2, #2]
	bx lr
	arm_func_end DseMidiCC_UnkLfoType

	arm_func_start DseMidiCC_UnkLfoWaveType
DseMidiCC_UnkLfoWaveType: ; 0x02079DF4
	ldrb r2, [r0, #0x5d]
	add r0, r0, r2, lsl #4
	strb r1, [r0, #0x73]
	bx lr
	arm_func_end DseMidiCC_UnkLfoWaveType

	arm_func_start DseMidiCC_LfoDepth
DseMidiCC_LfoDepth: ; 0x02079E04
	ldrb r2, [r0, #0x5d]
	add r0, r0, #0x70
	add r0, r0, r2, lsl #4
	ldrb r2, [r0, #2]
	cmp r2, #4
	addls pc, pc, r2, lsl #2
	b _02079E4C
_02079E20: ; jump table
	b _02079E4C ; case 0
	b _02079E34 ; case 1
	b _02079E3C ; case 2
	b _02079E44 ; case 3
	b _02079E48 ; case 4
_02079E34:
	mov r2, #0xa
	b _02079E50
_02079E3C:
	mvn r2, #0x13
	b _02079E50
_02079E44:
	b _02079E4C
_02079E48:
	b _02079E34
_02079E4C:
	mov r2, #0x14
_02079E50:
	mul r2, r1, r2
	mov r1, r2, lsl #0x10
	mov r1, r1, asr #0x10
	str r1, [r0, #4]
	bx lr
	arm_func_end DseMidiCC_LfoDepth

	arm_func_start DseMidiCC_MaybeLfoDelay
DseMidiCC_MaybeLfoDelay: ; 0x02079E64
	mov r2, #0x14
	mul r2, r1, r2
	ldrb r1, [r0, #0x5d]
	add r0, r0, r1, lsl #4
	strh r2, [r0, #0x7a]
	bx lr
	arm_func_end DseMidiCC_MaybeLfoDelay

	arm_func_start DseMidiCC_UnkLfoParam
DseMidiCC_UnkLfoParam: ; 0x02079E7C
	mov r2, #0x14
	mul r2, r1, r2
	ldrb r1, [r0, #0x5d]
	add r0, r0, r1, lsl #4
	strh r2, [r0, #0x7c]
	bx lr
	arm_func_end DseMidiCC_UnkLfoParam

	arm_func_start DseMidiCC_BendRange
DseMidiCC_BendRange: ; 0x02079E94
	strb r1, [r0, #0x55]
	bx lr
	arm_func_end DseMidiCC_BendRange

	arm_func_start DseMidiCC_Stub25
DseMidiCC_Stub25: ; 0x02079E9C
	bx lr
	arm_func_end DseMidiCC_Stub25

	arm_func_start DseMidiCC_Stub26
DseMidiCC_Stub26: ; 0x02079EA0
	bx lr
	arm_func_end DseMidiCC_Stub26

	arm_func_start DseMidiCC_Stub27
DseMidiCC_Stub27: ; 0x02079EA4
	bx lr
	arm_func_end DseMidiCC_Stub27

	arm_func_start DseSynth_Reset
DseSynth_Reset: ; 0x02079EA8
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	ldr r1, _02079F14 ; =0x020B9FD8
	mov r4, #0x7f
	ldrsb r7, [r1, #0x49]
	mov r5, #0
	mov r6, #1
	and r1, r7, #0xff
	smulbb r3, r1, r4
	ldr r2, _02079F18 ; =0x81020409
	mov lr, #0x40
	smull r1, r12, r2, r3
	add r12, r3, r12
	mov r1, r3, lsr #0x1f
	add r12, r1, r12, asr #6
	ldr r1, _02079F1C ; =0x020BA6D8
	strb r7, [r0, #2]
	strb r6, [r0, #3]
	strh r5, [r0, #4]
	strb r4, [r0, #6]
	strb lr, [r0, #7]
	strb r12, [r0, #8]
	strb r5, [r0, #9]
	strb r5, [r0, #0xa]
	ldrh r1, [r1, #0x3a]
	strb r1, [r0, #0xb]
	str r5, [r0, #0xc]
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_02079F14: .word unk_020B9FD8
_02079F18: .word 0x81020409
_02079F1C: .word unk_020BA6D8
	arm_func_end DseSynth_Reset

	arm_func_start DseSynth_AllocateNew
DseSynth_AllocateNew: ; 0x02079F20
	stmfd sp!, {r4, r5, r6, lr}
	mov r6, r0
	mov r0, #0xc4
	mul r0, r6, r0
	mov r2, r1
	add r0, r0, #0x10
	mov r1, #0x10
	bl DseMem_AllocateFirstFit
	movs r4, r0
	moveq r0, #0
	ldmeqfd sp!, {r4, r5, r6, pc}
	mov r5, #0
	strb r5, [r4]
	strb r6, [r4, #1]
	str r5, [r4, #0xc]
	bl DseSynth_Reset
	cmp r6, #0
	add r1, r4, #0x10
	ble _02079F9C
	mov r0, r5
_02079F70:
	str r0, [r1]
	strb r5, [r1, #5]
	str r0, [r1, #0xb0]
	str r0, [r1, #0xb4]
	str r0, [r1, #0xb8]
	str r0, [r1, #0xbc]
	add r5, r5, #1
	str r4, [r1, #0xc0]
	cmp r5, r6
	add r1, r1, #0xc4
	blt _02079F70
_02079F9C:
	ldr r1, _02079FE4 ; =0x04000208
	mov r0, #0
	ldrh r3, [r1]
	ldr r2, _02079FE8 ; =0x020BA638
	strh r0, [r1]
	ldr r0, [r2]
	cmp r0, #0
	beq _02079FCC
_02079FBC:
	add r2, r0, #0xc
	ldr r0, [r0, #0xc]
	cmp r0, #0
	bne _02079FBC
_02079FCC:
	ldr r1, _02079FE4 ; =0x04000208
	str r4, [r2]
	ldrh r0, [r1]
	mov r0, r4
	strh r3, [r1]
	ldmfd sp!, {r4, r5, r6, pc}
_02079FE4: .word 0x04000208
_02079FE8: .word unk_020BA638
	arm_func_end DseSynth_AllocateNew

	arm_func_start DseSynth_Unload
DseSynth_Unload: ; 0x02079FEC
	stmfd sp!, {r3, r4, r5, lr}
	mov r5, r0
	bl DseSynth_StopChannels
	ldr r2, _0207A054 ; =0x04000208
	mov r0, r5
	ldrh r4, [r2]
	mov r1, #0
	strh r1, [r2]
	bl DseSynth_ClearHeldNotes
	ldr r1, _0207A058 ; =0x020BA638
	b _0207A01C
_0207A018:
	add r1, r0, #0xc
_0207A01C:
	ldr r0, [r1]
	cmp r0, #0
	beq _0207A030
	cmp r0, r5
	bne _0207A018
_0207A030:
	cmp r0, r5
	ldreq r0, [r5, #0xc]
	ldr r2, _0207A054 ; =0x04000208
	streq r0, [r1]
	ldrh r1, [r2]
	mov r0, r5
	strh r4, [r2]
	bl DseMem_Free
	ldmfd sp!, {r3, r4, r5, pc}
_0207A054: .word 0x04000208
_0207A058: .word unk_020BA638
	arm_func_end DseSynth_Unload

	arm_func_start DseSynth_ClearHeldNotes
DseSynth_ClearHeldNotes: ; 0x0207A05C
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, lr}
	ldrb r3, [r0, #1]
	add r1, r0, #0x10
	mov r2, #0
	cmp r3, #0
	ldmlefd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
	ldr r7, _0207A0F0 ; =0x04000208
	ldr r12, _0207A0F4 ; =0x020B9FD8
	mvn r5, #0
	mov r4, r2
	mov r6, r2
_0207A088:
	ldrh r3, [r7]
	strh r6, [r7]
	ldr r9, [r1, #0xb4]
	cmp r9, #0
	ldreqh lr, [r7]
	streqh r3, [r7]
	beq _0207A0D8
	mov r8, r9
_0207A0A8:
	str r5, [r9, #4]
	strb r4, [r8, #1]
	ldr lr, [r8, #8]
	cmp lr, #0
	movne r8, lr
	bne _0207A0A8
	ldr lr, [r12, #0x658]
	str lr, [r8, #8]
	str r9, [r12, #0x658]
	str r4, [r1, #0xb4]
	ldrh lr, [r7]
	strh r3, [r7]
_0207A0D8:
	ldrb r3, [r0, #1]
	add r2, r2, #1
	add r1, r1, #0xc4
	cmp r2, r3
	blt _0207A088
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
_0207A0F0: .word 0x04000208
_0207A0F4: .word unk_020B9FD8
	arm_func_end DseSynth_ClearHeldNotes

	arm_func_start DseSynth_ResetAndSetBankAndSequence
DseSynth_ResetAndSetBankAndSequence: ; 0x0207A0F8
	stmfd sp!, {r4, r5, r6, lr}
	mov r6, r0
	mov r5, r1
	mov r4, r2
	bl DseSynth_Reset
	mov r0, r6
	mov r1, r5
	mov r2, r4
	bl DseSynth_SetBankAndSequence
	ldmfd sp!, {r4, r5, r6, pc}
	arm_func_end DseSynth_ResetAndSetBankAndSequence

	arm_func_start DseSynth_StopChannels
DseSynth_StopChannels: ; 0x0207A120
	stmfd sp!, {r3, r4, r5, lr}
	ldrb r5, [r0, #1]
	add r4, r0, #0x10
	cmp r5, #0
	ldmeqfd sp!, {r3, r4, r5, pc}
_0207A134:
	mov r0, r4
	bl DseChannel_DeallocateVoices
	subs r5, r5, #1
	add r4, r4, #0xc4
	bne _0207A134
	ldmfd sp!, {r3, r4, r5, pc}
	arm_func_end DseSynth_StopChannels

	arm_func_start DseSynth_UpdateVoicesTimerAndVolume
DseSynth_UpdateVoicesTimerAndVolume: ; 0x0207A14C
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	ldr r3, _0207A1A0 ; =0x04000208
	mov r2, #0
	ldrh r6, [r3]
	mov r7, r1
	add r4, r0, #0x10
	strh r2, [r3]
	ldrb r5, [r0, #1]
	strb r7, [r0, #9]
	cmp r5, #0
	beq _0207A190
_0207A178:
	mov r0, r4
	mov r1, r7
	bl DseChannel_UpdateVoicesTimerAndVolume
	subs r5, r5, #1
	add r4, r4, #0xc4
	bne _0207A178
_0207A190:
	ldr r1, _0207A1A0 ; =0x04000208
	ldrh r0, [r1]
	strh r6, [r1]
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_0207A1A0: .word 0x04000208
	arm_func_end DseSynth_UpdateVoicesTimerAndVolume

	arm_func_start DseSynth_RestoreHeldNotes
DseSynth_RestoreHeldNotes: ; 0x0207A1A4
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	ldr r2, _0207A208 ; =0x04000208
	ldrb r6, [r0, #1]
	ldrh r4, [r2]
	mov r1, #0
	cmp r6, #0
	strh r1, [r2]
	add r5, r0, #0x10
	beq _0207A1F8
_0207A1C8:
	ldr r7, [r5, #0xb4]
	cmp r7, #0
	beq _0207A1EC
_0207A1D4:
	mov r0, r5
	mov r1, r7
	bl DseChannel_PlayNote
	ldr r7, [r7, #8]
	cmp r7, #0
	bne _0207A1D4
_0207A1EC:
	subs r6, r6, #1
	add r5, r5, #0xc4
	bne _0207A1C8
_0207A1F8:
	ldr r1, _0207A208 ; =0x04000208
	ldrh r0, [r1]
	strh r4, [r1]
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_0207A208: .word 0x04000208
	arm_func_end DseSynth_RestoreHeldNotes

	arm_func_start DseSynth_SetGlobalVolumeIndex
DseSynth_SetGlobalVolumeIndex: ; 0x0207A20C
	stmfd sp!, {r4, r5, r6, r7, r8, lr}
	ldr r3, _0207A2E4 ; =0x020BA020
	ldrb r5, [r0, #1]
	ldrsb r8, [r3, r1]
	ldrsb r3, [r0, #6]
	ldr r4, _0207A2E8 ; =0x81020409
	and r6, r8, #0xff
	smulbb r6, r6, r3
	smull r3, r7, r4, r6
	add r7, r6, r7
	mov r3, r6, lsr #0x1f
	add r7, r3, r7, asr #6
	strb r1, [r0, #3]
	strb r8, [r0, #2]
	strb r7, [r0, #8]
	cmp r5, #0
	add r1, r0, #0x10
	mov r3, #0
	ldmlefd sp!, {r4, r5, r6, r7, r8, pc}
	ldr r6, _0207A2EC ; =0x04000208
	mov r5, r3
_0207A260:
	ldr r12, [r1, #0x2c]
	ldrb r4, [r1, #0x4c]
	mov r12, r12, asr #0x10
	ldrsb lr, [r0, #8]
	mul r4, r12, r4
	mul r7, lr, r4
	ldr r4, _0207A2F0 ; =0x82061029
	mov r12, r7, lsr #0x1f
	smull lr, r8, r4, r7
	add r8, r7, r8
	add r8, r12, r8, asr #13
	strh r8, [r1, #0x18]
	cmp r2, #1
	bne _0207A2CC
	ldrh r8, [r6]
	strh r5, [r6]
	ldr r7, [r1, #0xb0]
	cmp r7, #0
	beq _0207A2C4
_0207A2AC:
	ldrh r4, [r7, #6]
	orr r4, r4, #0x20
	strh r4, [r7, #6]
	ldr r7, [r7, #0x154]
	cmp r7, #0
	bne _0207A2AC
_0207A2C4:
	ldrh r4, [r6]
	strh r8, [r6]
_0207A2CC:
	ldrb r4, [r0, #1]
	add r3, r3, #1
	add r1, r1, #0xc4
	cmp r3, r4
	blt _0207A260
	ldmfd sp!, {r4, r5, r6, r7, r8, pc}
_0207A2E4: .word unk_020BA020
_0207A2E8: .word 0x81020409
_0207A2EC: .word 0x04000208
_0207A2F0: .word 0x82061029
	arm_func_end DseSynth_SetGlobalVolumeIndex

	arm_func_start DseSynth_SetBend
DseSynth_SetBend: ; 0x0207A2F4
	stmfd sp!, {r3, r4, r5, lr}
	ldrb r2, [r0, #1]
	strh r1, [r0, #4]
	add r1, r0, #0x10
	cmp r2, #0
	mov r2, #0
	ldmlefd sp!, {r3, r4, r5, pc}
	ldr lr, _0207A384 ; =0x04000208
	mov r12, r2
_0207A318:
	ldr r3, [r1, #0x1c]
	ldrsh r4, [r1, #0x50]
	mov r3, r3, asr #0x10
	mov r3, r3, lsl #0x10
	ldrsh r5, [r0, #4]
	add r3, r4, r3, asr #16
	add r3, r5, r3
	strh r3, [r1, #0x16]
	ldrh r5, [lr]
	strh r12, [lr]
	ldr r4, [r1, #0xb0]
	cmp r4, #0
	beq _0207A364
_0207A34C:
	ldrh r3, [r4, #6]
	orr r3, r3, #0x10
	strh r3, [r4, #6]
	ldr r4, [r4, #0x154]
	cmp r4, #0
	bne _0207A34C
_0207A364:
	ldrh r3, [lr]
	add r2, r2, #1
	add r1, r1, #0xc4
	strh r5, [lr]
	ldrb r3, [r0, #1]
	cmp r2, r3
	blt _0207A318
	ldmfd sp!, {r3, r4, r5, pc}
_0207A384: .word 0x04000208
	arm_func_end DseSynth_SetBend

	arm_func_start DseSynth_SetVolume
DseSynth_SetVolume: ; 0x0207A388
	stmfd sp!, {r4, r5, r6, lr}
	strb r1, [r0, #6]
	ldrb r4, [r0, #2]
	ldrsb r1, [r0, #6]
	ldr r2, _0207A44C ; =0x81020409
	ldrb r3, [r0, #1]
	smulbb r4, r4, r1
	smull r1, r5, r2, r4
	add r5, r4, r5
	mov r1, r4, lsr #0x1f
	add r5, r1, r5, asr #6
	strb r5, [r0, #8]
	cmp r3, #0
	add r1, r0, #0x10
	mov r2, #0
	ldmlefd sp!, {r4, r5, r6, pc}
	ldr r4, _0207A450 ; =0x04000208
	ldr r12, _0207A454 ; =0x82061029
	mov lr, r2
_0207A3D4:
	ldr r5, [r1, #0x2c]
	ldrb r3, [r1, #0x4c]
	mov r5, r5, asr #0x10
	ldrsb r6, [r0, #8]
	mul r3, r5, r3
	mul r5, r6, r3
	smull r3, r6, r12, r5
	add r6, r5, r6
	mov r3, r5, lsr #0x1f
	add r6, r3, r6, asr #13
	strh r6, [r1, #0x18]
	ldrh r6, [r4]
	strh lr, [r4]
	ldr r5, [r1, #0xb0]
	cmp r5, #0
	beq _0207A42C
_0207A414:
	ldrh r3, [r5, #6]
	orr r3, r3, #0x20
	strh r3, [r5, #6]
	ldr r5, [r5, #0x154]
	cmp r5, #0
	bne _0207A414
_0207A42C:
	ldrh r3, [r4]
	add r2, r2, #1
	add r1, r1, #0xc4
	strh r6, [r4]
	ldrb r3, [r0, #1]
	cmp r2, r3
	blt _0207A3D4
	ldmfd sp!, {r4, r5, r6, pc}
_0207A44C: .word 0x81020409
_0207A450: .word 0x04000208
_0207A454: .word 0x82061029
	arm_func_end DseSynth_SetVolume

	arm_func_start DseSynth_SetPan
DseSynth_SetPan: ; 0x0207A458
	stmfd sp!, {r3, r4, r5, lr}
	ldrb r2, [r0, #1]
	strb r1, [r0, #7]
	add r1, r0, #0x10
	cmp r2, #0
	mov r2, #0
	ldmlefd sp!, {r3, r4, r5, pc}
	ldr lr, _0207A4E8 ; =0x04000208
	mov r12, r2
_0207A47C:
	ldr r3, [r1, #0xc0]
	ldr r4, [r1, #0x3c]
	ldrsb r3, [r3, #7]
	mov r4, r4, asr #0x10
	and r4, r4, #0xff
	sub r3, r3, #0x40
	add r3, r4, r3
	strh r3, [r1, #0x1a]
	ldrh r5, [lr]
	strh r12, [lr]
	ldr r4, [r1, #0xb0]
	cmp r4, #0
	beq _0207A4C8
_0207A4B0:
	ldrh r3, [r4, #6]
	orr r3, r3, #0x40
	strh r3, [r4, #6]
	ldr r4, [r4, #0x154]
	cmp r4, #0
	bne _0207A4B0
_0207A4C8:
	ldrh r3, [lr]
	add r2, r2, #1
	add r1, r1, #0xc4
	strh r5, [lr]
	ldrb r3, [r0, #1]
	cmp r2, r3
	blt _0207A47C
	ldmfd sp!, {r3, r4, r5, pc}
_0207A4E8: .word 0x04000208
	arm_func_end DseSynth_SetPan

	arm_func_start DseSynth_SetBankAndSequence
DseSynth_SetBankAndSequence: ; 0x0207A4EC
	stmfd sp!, {r4, r5, r6, r7, r8, r9, r10, lr}
	ldr r3, _0207A578 ; =0x020B9FD8
	mov r10, r0
	ldrsb r6, [r3, #0x45]
	mov r7, #0
	mov r9, r1
	strb r7, [r3, #0x45]
	ldrb r0, [r10, #1]
	mov r8, r2
	add r5, r10, #0x10
	cmp r0, #0
	ble _0207A56C
	mov r0, r9, lsl #0x10
	mov r4, r0, lsr #0x10
_0207A524:
	mov r0, r5
	bl DseChannel_DeallocateVoices
	mov r0, r5
	mov r1, r8
	bl DseChannel_Init
	cmp r9, #0
	blt _0207A558
	mov r0, r5
	mov r1, r4
	bl DseChannel_SetBank
	mov r0, r5
	mov r1, r4
	bl DseChannel_SetProgram
_0207A558:
	ldrb r0, [r10, #1]
	add r7, r7, #1
	add r5, r5, #0xc4
	cmp r7, r0
	blt _0207A524
_0207A56C:
	ldr r0, _0207A578 ; =0x020B9FD8
	strb r6, [r0, #0x45]
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, pc}
_0207A578: .word unk_020B9FD8
	arm_func_end DseSynth_SetBankAndSequence

	arm_func_start DseChannel_Init
DseChannel_Init: ; 0x0207A57C
	stmfd sp!, {r3, r4, r5, lr}
	mov r4, r0
	mov r0, #0
	mov r5, #1
	ldr r3, _0207A71C ; =0x020BA6D8
	str r1, [r4]
	ldr r2, _0207A720 ; =0x020B9FD8
	strb r0, [r4, #4]
	add r1, r2, #0x600
	strb r0, [r4, #6]
	strb r5, [r4, #7]
	strb r0, [r4, #8]
	ldrh r3, [r3, #0x3a]
	mov r2, #0x7f
	strb r3, [r4, #9]
	strh r0, [r4, #0xa]
	strb r0, [r4, #0xc]
	strb r0, [r4, #0xd]
	ldrsb r5, [r1, #0x80]
	ldrsb r3, [r1, #0xa0]
	add r3, r3, r5, lsl #8
	strh r0, [r4, #0x10]
	strh r0, [r4, #0x14]
	str r0, [r4, #0x1c]
	strh r0, [r4, #0x28]
	strh r3, [r4, #0xe]
	ldrsb r3, [r1, #0x87]
	mov r5, r0
	mov r3, r3, lsl #0x10
	strh r0, [r4, #0x38]
	str r3, [r4, #0x2c]
	ldrsb r3, [r1, #0x8a]
	mov r3, r3, lsl #0x10
	strh r0, [r4, #0x48]
	strh r0, [r4, #0x50]
	str r3, [r4, #0x3c]
	ldrsb r3, [r1, #0x8b]
	strb r3, [r4, #0x4c]
	ldrsb r1, [r1, #0x81]
	strb r1, [r4, #0x4d]
	strh r0, [r4, #0x4e]
	strh r0, [r4, #0x52]
	strb r2, [r4, #0x54]
	strb r0, [r4, #0x55]
	strb r0, [r4, #0x56]
	strb r0, [r4, #0x57]
	strb r0, [r4, #0x58]
	strb r0, [r4, #0x59]
	strb r0, [r4, #0x5a]
	strb r0, [r4, #0x5b]
	strb r0, [r4, #0x5c]
_0207A648:
	add r1, r4, r0, lsl #4
	strb r5, [r1, #0x71]
	add r0, r0, #1
	strb r5, [r1, #0x72]
	cmp r0, #4
	blt _0207A648
	add r0, r4, #0x60
	bl DseEnvelopeParameters_Reset
	ldr r1, _0207A724 ; =0x04000208
	str r5, [r4, #0xb0]
	ldrh lr, [r1]
	strh r5, [r1]
	ldr r12, [r4, #0xb4]
	cmp r12, #0
	ldreqh r0, [r1]
	streqh lr, [r1]
	beq _0207A6D0
	mov r5, r12
	mvn r1, #0
	mov r3, #0
_0207A698:
	str r1, [r12, #4]
	strb r3, [r5, #1]
	ldr r0, [r5, #8]
	cmp r0, #0
	movne r5, r0
	bne _0207A698
	ldr r0, _0207A720 ; =0x020B9FD8
	ldr r1, _0207A724 ; =0x04000208
	ldr r2, [r0, #0x658]
	str r2, [r5, #8]
	str r12, [r0, #0x658]
	str r3, [r4, #0xb4]
	ldrh r0, [r1]
	strh lr, [r1]
_0207A6D0:
	ldr r0, _0207A720 ; =0x020B9FD8
	mov r1, #0
	str r1, [r4, #0xb8]
	str r1, [r4, #0xbc]
	strh r1, [r4, #0x16]
	add r0, r0, #0x600
	ldrsb r3, [r0, #0x87]
	ldrsb r0, [r0, #0x8b]
	ldr r1, _0207A728 ; =0x82061029
	mov r2, #0x40
	smulbb r0, r3, r0
	rsb r3, r0, r0, lsl #7
	smull r0, r12, r1, r3
	add r12, r3, r12
	mov r0, r3, lsr #0x1f
	add r12, r0, r12, asr #13
	strh r12, [r4, #0x18]
	strh r2, [r4, #0x1a]
	ldmfd sp!, {r3, r4, r5, pc}
_0207A71C: .word unk_020BA6D8
_0207A720: .word unk_020B9FD8
_0207A724: .word 0x04000208
_0207A728: .word 0x82061029
	arm_func_end DseChannel_Init

	arm_func_start DseChannel_DeallocateVoices
DseChannel_DeallocateVoices: ; 0x0207A72C
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	ldr r5, [r0, #0xb0]
	mov r1, #0
	str r1, [r0, #0xb0]
	cmp r5, #0
	ldmeqfd sp!, {r3, r4, r5, r6, r7, pc}
	ldr r7, _0207A7AC ; =0x020BA6D8
	mov r4, r1
_0207A74C:
	ldr r6, [r5, #0x154]
	add r0, r5, #0x3c
	strh r4, [r5, #4]
	str r4, [r5, #0x158]
	str r4, [r5, #0x154]
	bl DseEnvelope_Stop
	ldr r0, [r5, #0x14c]
	cmp r6, #0
	and r0, r0, #0xff
	str r0, [r5, #0x14c]
	str r4, [r5]
	strh r4, [r5, #0x1a]
	ldrh r2, [r5, #0xa]
	ldrh r1, [r7, #0x3e]
	mov r5, r6
	mvn r0, r2
	mov r0, r0, lsl #0x10
	and r0, r1, r0, lsr #16
	strh r0, [r7, #0x3e]
	ldrh r0, [r7, #0x42]
	orr r0, r0, r2
	strh r0, [r7, #0x42]
	bne _0207A74C
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_0207A7AC: .word unk_020BA6D8
	arm_func_end DseChannel_DeallocateVoices

	arm_func_start DseChannel_UpdateVoicesTimerAndVolume
DseChannel_UpdateVoicesTimerAndVolume: ; 0x0207A7B0
	cmp r1, #1
	bne _0207A7F8
	ldrb r1, [r0, #4]
	ldr r2, [r0, #0xb0]
	orr r1, r1, #0x40
	strb r1, [r0, #4]
	cmp r2, #0
	bxeq lr
	mov r1, #0
_0207A7D4:
	str r1, [r2, #0x13c]
	str r1, [r2, #0x140]
	ldrh r0, [r2, #6]
	orr r0, r0, #0x30
	strh r0, [r2, #6]
	ldr r2, [r2, #0x154]
	cmp r2, #0
	bne _0207A7D4
	bx lr
_0207A7F8:
	ldr r2, [r0, #0xb0]
	cmp r2, #0
	beq _0207A81C
_0207A804:
	ldrh r1, [r2, #6]
	orr r1, r1, #0x30
	strh r1, [r2, #6]
	ldr r2, [r2, #0x154]
	cmp r2, #0
	bne _0207A804
_0207A81C:
	ldrb r1, [r0, #4]
	and r1, r1, #0xbf
	strb r1, [r0, #4]
	bx lr
	arm_func_end DseChannel_UpdateVoicesTimerAndVolume

	arm_func_start DseChannel_SetBank
DseChannel_SetBank: ; 0x0207A82C
	stmfd sp!, {r4, lr}
	mov r4, r0
	mov r0, r1
	strh r1, [r4, #0xe]
	bl DseSwd_GetBankById
	str r0, [r4, #0xb8]
	cmp r0, #0
	moveq r0, #0
	streq r0, [r4, #0xbc]
	ldmeqfd sp!, {r4, pc}
	ldrh r1, [r4, #0x10]
	mov r0, r4
	bl DseChannel_SetProgram
	ldmfd sp!, {r4, pc}
	arm_func_end DseChannel_SetBank

	arm_func_start DseChannel_SetProgram
DseChannel_SetProgram: ; 0x0207A864
	stmfd sp!, {r4, r5, r6, r7, r8, lr}
	mov r5, r0
	ldr r0, [r5, #0xb8]
	mov r4, r1
	cmp r0, #0
	moveq r0, #0
	streq r0, [r5, #0xbc]
	streqh r0, [r5, #0x10]
	beq _0207A8E0
	mov r1, r4, lsl #0x10
	mov r1, r1, asr #0x10
	strh r1, [r5, #0x10]
	bl DseBank_GetProgram
	movs lr, r0
	beq _0207A8DC
	mov r6, #0
	strb r6, [r5, #0x55]
	add r7, lr, #0x10
	add r8, r5, #0x70
	mov r12, r6
_0207A8B4:
	ldrb r0, [r7, #1]
	add r6, r6, #1
	cmp r0, #0
	ldmneia r7, {r0, r1, r2, r3}
	stmneia r8, {r0, r1, r2, r3}
	streqb r12, [r8, #1]
	cmp r6, #4
	add r7, r7, #0x10
	add r8, r8, #0x10
	blt _0207A8B4
_0207A8DC:
	str lr, [r5, #0xbc]
_0207A8E0:
	add r0, r5, #0x60
	bl DseEnvelopeParameters_Reset
	mov r0, r4
	ldmfd sp!, {r4, r5, r6, r7, r8, pc}
	arm_func_end DseChannel_SetProgram

	arm_func_start DseChannel_SetModulationDepth
DseChannel_SetModulationDepth: ; 0x0207A8F0
	stmfd sp!, {r3, r4, r5, lr}
	ldr r4, [r0, #0xb0]
	mov r5, r1
	strb r5, [r0, #0x4d]
	cmp r4, #0
	ldmeqfd sp!, {r3, r4, r5, pc}
_0207A908:
	mov r1, r5
	add r0, r4, #0x5c
	bl DseLfoBank_SetModulationDepth
	ldr r4, [r4, #0x154]
	cmp r4, #0
	bne _0207A908
	ldmfd sp!, {r3, r4, r5, pc}
	arm_func_end DseChannel_SetModulationDepth

	arm_func_start DseChannel_SetKeyBend
DseChannel_SetKeyBend: ; 0x0207A924
	ldr r2, [r0, #0xb0]
	strh r1, [r0, #0x4e]
	cmp r2, #0
	bxeq lr
	mov r3, r1, lsl #8
_0207A938:
	ldrb r0, [r2, #0x10]
	mul r1, r0, r3
	mov r0, r1, asr #0xc
	add r0, r1, r0, lsr #19
	mov r0, r0, asr #0xd
	strh r0, [r2, #0x12]
	ldrh r0, [r2, #6]
	orr r0, r0, #0x10
	strh r0, [r2, #6]
	ldr r2, [r2, #0x154]
	cmp r2, #0
	bne _0207A938
	bx lr
	arm_func_end DseChannel_SetKeyBend

	arm_func_start DseChannel_AllocateNote
DseChannel_AllocateNote: ; 0x0207A96C
	stmfd sp!, {r4, r5, r6, lr}
	mov r5, r0
	ldrb r2, [r5, #0xd]
	mov r4, r1
	cmp r2, #0
	beq _0207A9AC
	ldrb r0, [r5, #0xc]
	sub r0, r2, r0
	add r6, r0, #1
	bl DseUtil_GetRandomNumber
	mul r1, r6, r0
	mov r0, r1, asr #0xe
	ldrb r2, [r5, #0xc]
	add r0, r1, r0, lsr #17
	add r0, r2, r0, asr #15
	strb r0, [r4, #2]
_0207A9AC:
	ldr r1, _0207A9F8 ; =0x020B9FD8
	ldr r0, [r1, #0x658]
	cmp r0, #0
	moveq r0, #0
	ldrne r2, [r0, #8]
	strne r2, [r1, #0x658]
	cmp r0, #0
	moveq r0, #0
	ldmeqfd sp!, {r4, r5, r6, pc}
	ldr r3, [r4]
	ldr r2, [r4, #4]
	mov r1, #1
	str r3, [r0]
	str r2, [r0, #4]
	strb r1, [r0, #1]
	ldr r1, [r5, #0xb4]
	str r1, [r0, #8]
	str r0, [r5, #0xb4]
	ldmfd sp!, {r4, r5, r6, pc}
_0207A9F8: .word unk_020B9FD8
	arm_func_end DseChannel_AllocateNote

	arm_func_start DseChannel_ReleaseNoteInternal
DseChannel_ReleaseNoteInternal: ; 0x0207A9FC
	stmfd sp!, {r4, r5, r6, r7, r8, lr}
	mov r7, r0
	ldr r4, [r7, #0xb4]
	mov r6, r1
	cmp r4, #0
	add r5, r7, #0xb4
	beq _0207AA78
	ldrb r1, [r6, #2]
_0207AA1C:
	ldrb r0, [r4, #2]
	cmp r0, r1
	bne _0207AA68
	ldr r8, [r7, #0xb0]
	cmp r8, #0
	beq _0207AA5C
_0207AA34:
	ldrb r1, [r8, #0xd]
	ldrb r0, [r6, #2]
	cmp r1, r0
	bne _0207AA50
	mov r0, r7
	mov r1, r8
	bl DseChannel_ReleaseVoice
_0207AA50:
	ldr r8, [r8, #0x154]
	cmp r8, #0
	bne _0207AA34
_0207AA5C:
	ldr r0, [r4, #8]
	str r0, [r5]
	b _0207AA78
_0207AA68:
	add r5, r4, #8
	ldr r4, [r4, #8]
	cmp r4, #0
	bne _0207AA1C
_0207AA78:
	cmp r4, #0
	beq _0207AAA0
	ldr r0, _0207AAA8 ; =0x020B9FD8
	mvn r2, #0
	ldr r3, [r0, #0x658]
	mov r1, #0
	str r3, [r4, #8]
	str r4, [r0, #0x658]
	str r2, [r4, #4]
	strb r1, [r4, #1]
_0207AAA0:
	mov r0, r4
	ldmfd sp!, {r4, r5, r6, r7, r8, pc}
_0207AAA8: .word unk_020B9FD8
	arm_func_end DseChannel_ReleaseNoteInternal

	arm_func_start DseChannel_ChangeNote
DseChannel_ChangeNote: ; 0x0207AAAC
	stmfd sp!, {r4, lr}
	ldr r4, [r0, #0xb4]
	cmp r4, #0
	beq _0207AAF0
_0207AABC:
	ldrb r3, [r4, #2]
	cmp r3, r2
	bne _0207AAE4
	ldr lr, [r1]
	ldr r12, [r1, #4]
	mov r3, #1
	str lr, [r4]
	str r12, [r4, #4]
	strb r3, [r4, #1]
	b _0207AAF0
_0207AAE4:
	ldr r4, [r4, #8]
	cmp r4, #0
	bne _0207AABC
_0207AAF0:
	ldr r12, [r0, #0xb0]
	cmp r12, #0
	ldmeqfd sp!, {r4, pc}
_0207AAFC:
	ldrb r0, [r12, #0xd]
	cmp r0, r2
	bne _0207AB2C
	ldrb r0, [r1, #2]
	strb r0, [r12, #0xd]
	ldrb r3, [r1, #2]
	ldrsh r0, [r12, #0x16]
	add r0, r0, r3, lsl #8
	strh r0, [r12, #0x14]
	ldrh r0, [r12, #6]
	orr r0, r0, #0x10
	strh r0, [r12, #6]
_0207AB2C:
	ldr r12, [r12, #0x154]
	cmp r12, #0
	bne _0207AAFC
	ldmfd sp!, {r4, pc}
	arm_func_end DseChannel_ChangeNote

	arm_func_start DseChannel_ReleaseNote
DseChannel_ReleaseNote: ; 0x0207AB3C
	stmfd sp!, {r3, lr}
	ldr r2, [r0, #0xb4]
	cmp r2, #0
	ldmeqfd sp!, {r3, pc}
	ldrb r3, [r1, #2]
_0207AB50:
	ldrb r1, [r2, #2]
	cmp r1, r3
	bne _0207AB68
	mov r1, r2
	bl DseChannel_ReleaseNoteInternal
	ldmfd sp!, {r3, pc}
_0207AB68:
	ldr r2, [r2, #8]
	cmp r2, #0
	bne _0207AB50
	ldmfd sp!, {r3, pc}
	arm_func_end DseChannel_ReleaseNote

	arm_func_start DseChannel_PlayNote
DseChannel_PlayNote: ; 0x0207AB78
	stmfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, lr}
	sub sp, sp, #0xc
	mov r10, r0
	ldrsh r4, [r10, #0xa]
	mov r9, r1
	cmp r4, #0
	moveq r0, #0
	streq r0, [sp]
	beq _0207ABC4
	bl DseUtil_GetRandomNumber
	mov r1, r4, lsl #1
	mul r2, r1, r0
	mov r0, r2, asr #0xe
	ldrsh r1, [r10, #0xa]
	add r0, r2, r0, lsr #17
	rsb r0, r1, r0, asr #15
	mov r0, r0, lsl #0x10
	mov r0, r0, asr #0x10
	str r0, [sp]
_0207ABC4:
	ldr r6, [r10, #0xbc]
	cmp r6, #0
	addeq sp, sp, #0xc
	ldmeqfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
	ldr r7, [r10, #0xb8]
	mov r5, #0
_0207ABDC:
	ldrb r2, [r9, #2]
	ldrsb r3, [r9, #3]
	mov r0, r6
	mov r1, r5
	bl DseProgram_GetNextSplitInRange
	movs r5, r0
	addeq sp, sp, #0xc
	ldmeqfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
	ldrb r3, [r5, #0x1a]
	ldrb r0, [r7, #0xc]
	ldr r2, [r7, #0x18]
	cmp r3, r0
	movge r3, #0
	add r1, r2, r3, lsl #3
	ldr r2, [r1]
	ldr r1, [r1, #4]
	mov r0, r7
	str r2, [sp, #4]
	str r1, [sp, #8]
	ldrsh r1, [r5, #0x12]
	bl DseBank_GetWaviEntry
	movs r11, r0
	beq _0207ABDC
	ldrb r3, [r10, #5]
	ldrb r2, [r5, #0x1a]
	mov r0, r10
	add r1, sp, #4
	add r8, r2, r3, lsl #8
	mov r2, r8
	bl DseChannel_AllocateVoice
	movs r4, r0
	beq _0207ABDC
	mov r0, #0
	strh r0, [r4, #4]
	ldr r0, [r10]
	add r11, r11, #0x10
	str r0, [r4]
	strh r8, [r4, #0x1a]
	ldrsh r0, [r5, #0x12]
	add r12, r4, #0x1c
	strh r0, [r4, #0xe]
	ldmia r11!, {r0, r1, r2, r3}
	stmia r12!, {r0, r1, r2, r3}
	ldmia r11, {r0, r1, r2, r3}
	stmia r12, {r0, r1, r2, r3}
	ldr r1, [r4, #0x30]
	ldr r0, [r7, #0x1c]
	add r0, r1, r0
	str r0, [r4, #0x30]
	ldrb r0, [r9, #2]
	strb r0, [r4, #0xd]
	ldrsb r1, [r5, #0x17]
	ldrsh r0, [r5, #0x14]
	add r1, r0, r1, lsl #8
	ldr r0, [sp]
	add r0, r0, r1
	strh r0, [r4, #0x16]
	ldrb r1, [r9, #2]
	ldrsh r0, [r4, #0x16]
	add r0, r0, r1, lsl #8
	strh r0, [r4, #0x14]
	ldrb r0, [r5, #0x19]
	strb r0, [r4, #0x19]
	ldr r0, _0207ADDC ; =0x020B9FD8
	ldrb r0, [r0, #0x41]
	cmp r0, #7
	bne _0207AD1C
	ldrb r1, [r10, #0x54]
	ldrb r0, [r9, #3]
	ldrb r2, [r6, #4]
	ldrb r3, [r5, #0x18]
	smulbb r0, r1, r0
	mul r0, r2, r0
	mul r2, r3, r0
	ldr r0, _0207ADE0 ; =0x4186143D
	smull r1, r3, r0, r2
	mov r0, r2, lsr #0x1f
	add r3, r0, r3, asr #19
	strb r3, [r4, #0x18]
	b _0207AD48
_0207AD1C:
	ldrb r1, [r9, #3]
	ldrb r0, [r6, #4]
	ldrb r2, [r5, #0x18]
	smulbb r0, r1, r0
	mul r3, r2, r0
	ldr r0, _0207ADE4 ; =0x82061029
	smull r1, r2, r0, r3
	add r2, r3, r2
	mov r0, r3, lsr #0x1f
	add r2, r0, r2, asr #13
	strb r2, [r4, #0x18]
_0207AD48:
	ldrb r2, [r10, #0x55]
	ldrsh r3, [r10, #0x4e]
	add r0, r4, #0x5c
	cmp r2, #0
	ldreqb r2, [r5, #2]
	mov r3, r3, lsl #8
	add r1, r10, #0x70
	mul r8, r2, r3
	mov r3, r8, asr #0xc
	add r3, r8, r3, lsr #19
	mov r3, r3, asr #0xd
	strh r3, [r4, #0x12]
	strb r2, [r4, #0x10]
	ldrh r2, [r4, #6]
	orr r2, r2, #0xff0
	strh r2, [r4, #6]
	ldrsb r2, [r10, #0x4d]
	bl DseLfoBank_Set
	add r0, r5, #0x20
	add r8, r4, #0x3c
	ldmia r0, {r0, r1, r2, r3}
	stmia r8, {r0, r1, r2, r3}
	mov r0, #1
	strb r0, [r4, #0x3c]
	ldrb r0, [r10, #0x60]
	cmp r0, #0
	beq _0207ADC0
	mov r0, r8
	add r1, r10, #0x60
	bl DseEnvelope_SetParameters
_0207ADC0:
	mov r1, r4
	mov r0, r10
	ldrb r2, [sp, #7]
	bl DseChannel_StartVoice
	b _0207ABDC
_0207ADD4:
	add sp, sp, #0xc
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
_0207ADDC: .word unk_020B9FD8
_0207ADE0: .word 0x4186143D
_0207ADE4: .word 0x82061029
	arm_func_end DseChannel_PlayNote

	arm_func_start DseChannel_ReleaseVoiceByNote
DseChannel_ReleaseVoiceByNote: ; 0x0207ADE8
	stmfd sp!, {r4, r5, r6, lr}
	mov r6, r0
	ldr r4, [r6, #0xb0]
	mov r5, r1
	cmp r4, #0
	ldmeqfd sp!, {r4, r5, r6, pc}
_0207AE00:
	ldrb r1, [r4, #0xd]
	ldrb r0, [r5, #2]
	cmp r1, r0
	bne _0207AE1C
	mov r0, r6
	mov r1, r4
	bl DseChannel_ReleaseVoice
_0207AE1C:
	ldr r4, [r4, #0x154]
	cmp r4, #0
	bne _0207AE00
	ldmfd sp!, {r4, r5, r6, pc}
	arm_func_end DseChannel_ReleaseVoiceByNote

	arm_func_start Dse_UpdateVoiceParameters
Dse_UpdateVoiceParameters: ; 0x0207AE2C
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, lr}
	ldr r11, _0207AFAC ; =0x020BA6D8
	ldr r7, _0207AFB0 ; =0x020BA720
	ldrh r0, [r11, #0x3a]
	mov r9, #0
	cmp r0, #0
	ldmlefd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
	ldr r6, _0207AFB4 ; =0x02092014
	ldr r5, _0207AFB8 ; =0x02092098
	ldr r4, _0207AFBC ; =0x00FFB0FF
_0207AE54:
	ldr r8, [r7, #0x158]
	cmp r8, #0
	beq _0207AF94
	ldrh r10, [r7, #6]
	cmp r10, #0
	beq _0207AF90
	tst r10, #0x10
	beq _0207AEF4
	ldrh r2, [r8, #0x16]
	ldrsh r1, [r7, #0x14]
	ldrsh r3, [r7, #0x12]
	ldrsh r0, [r7, #0x5e]
	add r1, r2, r1
	add r1, r3, r1
	add r0, r0, r1
	mov r0, r0, lsl #0x10
	mov r1, r0, lsr #0x10
	mov r0, r1, asr #8
	and r0, r0, #0x7f
	ldrb r0, [r6, r0]
	and r2, r1, #0xff
	mov r1, r0, lsl #0x1c
	add r1, r2, r1, lsr #20
	mov r1, r1, lsl #1
	mov r0, r0, asr #4
	ldrh r1, [r5, r1]
	rsbs r0, r0, #4
	movpl r1, r1, lsr r0
	rsbmi r0, r0, #0
	movmi r1, r1, lsl r0
	ldrb r0, [r7, #0x1f]
	cmp r0, #3
	mov r0, r4
	blo _0207AEEC
	mov r2, r1, asr #3
	add r1, r1, r2, lsr #28
	mov r1, r1, asr #4
	b _0207AEEC
_0207AEEC:
	bl _s32_div_f
	str r0, [r7, #0x13c]
_0207AEF4:
	tst r10, #0x20
	beq _0207AF54
	ldrb r1, [r7, #0x18]
	ldrsh r0, [r7, #0x60]
	add r1, r1, r0, asr #6
	cmp r1, #0x7f
	movgt r1, #0x7f
	bgt _0207AF1C
	cmp r1, #0
	movlt r1, #0
_0207AF1C:
	ldrh r0, [r8, #0x18]
	ldrb r2, [r7, #0x14c]
	mul r1, r0, r1
	mul r3, r2, r1
	ldr r0, _0207AFC0 ; =0x828CBFBF
	smull r1, r2, r0, r3
	add r2, r3, r2
	mov r0, r3, lsr #0x1f
	add r2, r0, r2, asr #12
	mul r1, r2, r2
	mov r0, r1, asr #8
	add r0, r1, r0, lsr #23
	mov r0, r0, asr #9
	str r0, [r7, #0x140]
_0207AF54:
	tst r10, #0x40
	beq _0207AF90
	ldrsb r1, [r7, #0x19]
	ldrsh r2, [r8, #0x1a]
	ldrsh r0, [r7, #0x62]
	sub r1, r1, #0x40
	add r1, r2, r1
	adds r1, r1, r0, asr #6
	ldr r0, _0207AFC4 ; =0x020BAFD8
	movmi r1, #0
	cmp r1, #0x7f
	ldr r0, [r0, #0xee0]
	movgt r1, #0x7f
	ldrb r0, [r0, r1]
	str r0, [r7, #0x144]
_0207AF90:
	strh r10, [r7, #6]
_0207AF94:
	ldrh r0, [r11, #0x3a]
	add r9, r9, #1
	add r7, r7, #0x15c
	cmp r9, r0
	blt _0207AE54
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_0207AFAC: .word unk_020BA6D8
_0207AFB0: .word unk_020BA720
_0207AFB4: .word unk_02092014
_0207AFB8: .word unk_02092098
_0207AFBC: .word 0x00FFB0FF
_0207AFC0: .word 0x828CBFBF
_0207AFC4: .word unk_020BAFD8
	arm_func_end Dse_UpdateVoiceParameters

	arm_func_start Dse_ResetAllVoices
Dse_ResetAllVoices: ; 0x0207AFC8
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, lr}
	ldr r4, _0207B064 ; =0x020BA6D8
	mov r9, #0
	ldrh r0, [r4, #0x3a]
	cmp r0, #0
	ble _0207B054
	ldr r8, _0207B068 ; =0x020BA720
	mov r7, r9
	mov r6, #1
	mov r5, #0x40
	mov r11, #0x15c
_0207AFF4:
	mul r1, r9, r11
	add r10, r8, r1
	strh r7, [r10, #4]
	strh r7, [r10, #6]
	mov r0, r6, lsl r9
	strh r9, [r10, #8]
	strh r0, [r10, #0xa]
	str r7, [r8, r1]
	str r7, [r10, #0x14c]
	strb r7, [r10, #0xd]
	strh r7, [r10, #0xe]
	strh r7, [r10, #0x14]
	strb r7, [r10, #0x18]
	add r0, r10, #0x3c
	strb r5, [r10, #0x19]
	bl DseEnvelope_Reset
	add r0, r10, #0x5c
	bl DseLfoBank_Reset
	str r7, [r10, #0x154]
	str r7, [r10, #0x158]
	ldrh r0, [r4, #0x3a]
	add r9, r9, #1
	cmp r9, r0
	blt _0207AFF4
_0207B054:
	ldr r0, _0207B06C ; =0x020B9FD8
	mov r1, #0
	str r1, [r0, #0x65c]
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_0207B064: .word unk_020BA6D8
_0207B068: .word unk_020BA720
_0207B06C: .word unk_020B9FD8
	arm_func_end Dse_ResetAllVoices

	arm_func_start FUN_0207b070
FUN_0207b070: ; 0x0207B070
	stmfd sp!, {r4, lr}
	cmp r0, #0
	ble _0207B0A8
	ldr r1, _0207B114 ; =0x020BA6D8
	mov r2, #0x10
	strh r2, [r1, #0x38]
	cmp r0, #0x10
	movgt r0, r2, lsl #0x10
	ldr r2, _0207B114 ; =0x020BA6D8
	movgt r0, r0, asr #0x10
	strh r0, [r2, #0x3a]
	ldr r1, _0207B118 ; =0x020BAFD8
	mov r0, #0
	strb r0, [r1, #0xd18]
_0207B0A8:
	ldr r1, _0207B114 ; =0x020BA6D8
	mov r4, #0
	strh r4, [r1, #0x3e]
	strh r4, [r1, #0x40]
	ldr r0, _0207B11C ; =0x020B9FD8
	strh r4, [r1, #0x42]
	strb r4, [r0, #0x744]
	strb r4, [r0, #0x745]
	ldr r12, _0207B118 ; =0x020BAFD8
	strh r4, [r1, #0x3c]
	str r4, [r12, #0xd08]
	str r4, [r12, #0xd0c]
	sub r1, r4, #1
	str r1, [r12, #0xd10]
	ldrsh lr, [r0, #0x28]
	mov r0, r4
	mov r1, r4
	mov r2, r4
	mov r3, r4
	str lr, [r12, #0xd14]
	bl SND_StartTimer
	ldr r0, _0207B120 ; =0x0000FFFF
	mov r3, r4
	mov r1, r0
	mov r2, r0
	bl SND_StopTimer
	ldmfd sp!, {r4, pc}
_0207B114: .word unk_020BA6D8
_0207B118: .word unk_020BAFD8
_0207B11C: .word unk_020B9FD8
_0207B120: .word 0x0000FFFF
	arm_func_end FUN_0207b070

	arm_func_start Dse_UpdateChannels
Dse_UpdateChannels: ; 0x0207B124
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, lr}
	ldr r9, _0207B204 ; =0x020BA6D8
	mov r7, #0
	ldrh r0, [r9, #0x3a]
	mov r6, r7
	ldr r5, _0207B208 ; =0x020BA720
	cmp r0, #0
	ble _0207B1C0
	mov r4, #2
_0207B148:
	add r0, r5, #0x3c
	bl DseEnvelope_Tick
	ldrsb r1, [r5, #0x5a]
	mov r8, r0
	cmp r1, #1
	bne _0207B1A8
	add r0, r5, #0x5c
	bl DseLfoBank_Tick
	ldrh r1, [r5, #6]
	orr r0, r1, r0
	strh r0, [r5, #6]
	ldrb r0, [r5, #0x58]
	cmp r0, #8
	streqb r4, [r5, #0x58]
	ldreqh r0, [r5, #6]
	orreq r0, r0, #2
	streqh r0, [r5, #6]
	ldrb r0, [r5, #0x14c]
	cmp r0, r8
	ldrneh r0, [r5, #6]
	orrne r0, r0, #0x20
	strneh r0, [r5, #6]
	cmp r8, #0
	addgt r7, r7, #1
_0207B1A8:
	strb r8, [r5, #0x14c]
	ldrh r0, [r9, #0x3a]
	add r6, r6, #1
	add r5, r5, #0x15c
	cmp r6, r0
	blt _0207B148
_0207B1C0:
	ldr r0, _0207B20C ; =0x020BAFD8
	ldr r1, [r0, #0xd10]
	cmp r1, #0
	movlt r1, #0
	strlt r1, [r0, #0xd0c]
	ldr r0, _0207B20C ; =0x020BAFD8
	str r7, [r0, #0xd08]
	ldr r1, [r0, #0xd0c]
	cmp r1, r7
	strlt r7, [r0, #0xd0c]
	movlt r1, #0x64
	strlt r1, [r0, #0xd10]
	ldr r0, _0207B20C ; =0x020BAFD8
	ldr r1, [r0, #0xd10]
	sub r1, r1, #1
	str r1, [r0, #0xd10]
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
_0207B204: .word unk_020BA6D8
_0207B208: .word unk_020BA720
_0207B20C: .word unk_020BAFD8
	arm_func_end Dse_UpdateChannels

	arm_func_start Dse_CleanupVoices
Dse_CleanupVoices: ; 0x0207B210
	stmfd sp!, {r4, r5, r6, r7, r8, lr}
	ldr r6, _0207B2A4 ; =0x020BA720
	bl SND_GetChannelStatus
	ldr r4, _0207B2A8 ; =0x020BA6D8
	mov r0, r0, lsl #0x10
	ldrh r2, [r4, #0x3c]
	ldrh r1, [r4, #0x3a]
	mov r7, #0
	orr r0, r2, r0, lsr #16
	mov r0, r0, lsl #0x10
	mov r8, r0, lsr #0x10
	cmp r1, #0
	ldmlefd sp!, {r4, r5, r6, r7, r8, pc}
	mov r5, r7
_0207B248:
	ldrsb r0, [r6, #0x5a]
	cmp r0, #1
	bne _0207B270
	tst r8, #1
	bne _0207B284
	add r0, r6, #0x3c
	bl DseEnvelope_Stop2
	add r0, r6, #0x100
	strh r5, [r0, #0x4c]
	b _0207B284
_0207B270:
	and r0, r8, #1
	cmp r0, #1
	bne _0207B284
	mov r0, r6
	bl DseVoice_FlagForDeactivation
_0207B284:
	ldrh r1, [r4, #0x3a]
	mov r0, r8, lsl #0xf
	add r7, r7, #1
	cmp r7, r1
	mov r8, r0, lsr #0x10
	add r6, r6, #0x15c
	blt _0207B248
	ldmfd sp!, {r4, r5, r6, r7, r8, pc}
_0207B2A4: .word unk_020BA720
_0207B2A8: .word unk_020BA6D8
	arm_func_end Dse_CleanupVoices

	arm_func_start DseChannel_AllocateVoice
DseChannel_AllocateVoice: ; 0x0207B2AC
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, lr}
	ldrb r6, [r1, #3]
	ldr r3, _0207B400 ; =0x020BA6D8
	ldrb r4, [r1, #5]
	ldrh r5, [r3, #0x3a]
	mov r3, r6, lsl #0x10
	add r3, r3, #0xff
	add r8, r3, #0x100
	sub r5, r5, #1
	cmp r4, r5
	ldrb r3, [r0, #7]
	movgt r4, r5
	ldrb r7, [r1, #4]
	mov r6, #0
	cmp r3, #0
	beq _0207B2F8
	cmp r3, #1
	beq _0207B304
	b _0207B3F8
_0207B2F8:
	ldr r6, [r0, #0xb0]
	cmp r6, #0
	bne _0207B3F8
_0207B304:
	ldrb r3, [r1]
	cmp r3, #0
	beq _0207B398
	ldr r5, _0207B404 ; =0x020BA720
	mov r3, #0x15c
	mla r3, r7, r3, r5
	mov r12, r7
	mov lr, r4
	mov r5, r8
	cmp r7, r4
	mov r6, #0
	bgt _0207B37C
	ldr r0, [r0]
_0207B338:
	ldr r9, [r3]
	cmp r9, r0
	ldreqh r9, [r3, #0x1a]
	cmpeq r9, r2
	bne _0207B36C
	ldr r9, [r3, #0x14c]
	add r6, r6, #1
	cmp r5, r9
	movhi r5, r9
	ldrb r9, [r1, #2]
	movhi lr, r12
	cmp r6, r9
	bge _0207B37C
_0207B36C:
	add r12, r12, #1
	cmp r12, r4
	add r3, r3, #0x15c
	ble _0207B338
_0207B37C:
	ldrb r0, [r1, #2]
	cmp r6, r0
	blt _0207B398
	ldr r1, _0207B404 ; =0x020BA720
	mov r0, #0x15c
	mla r6, lr, r0, r1
	b _0207B3F0
_0207B398:
	cmp r7, r4
	add r3, r4, #1
	bgt _0207B3D8
	ldr r2, _0207B408 ; =0x020B9FD8
	mov r0, #0x15c
_0207B3AC:
	mla r1, r7, r0, r2
	ldr r1, [r1, #0x894]
	cmp r8, r1
	bls _0207B3CC
	mov r3, r7
	cmp r1, #0
	beq _0207B3D8
	mov r8, r1
_0207B3CC:
	add r7, r7, #1
	cmp r7, r4
	ble _0207B3AC
_0207B3D8:
	cmp r3, r4
	movgt r6, #0
	bgt _0207B3F8
	ldr r1, _0207B404 ; =0x020BA720
	mov r0, #0x15c
	mla r6, r3, r0, r1
_0207B3F0:
	mov r0, r6
	bl DseVoice_Deallocate
_0207B3F8:
	mov r0, r6
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
_0207B400: .word unk_020BA6D8
_0207B404: .word unk_020BA720
_0207B408: .word unk_020B9FD8
	arm_func_end DseChannel_AllocateVoice

	arm_func_start FUN_0207b40c
FUN_0207b40c: ; 0x0207B40C
	stmfd sp!, {r4, lr}
	ldr r1, _0207B4A4 ; =0x020BA6D8
	ldrb r2, [r0, #5]
	ldrh r3, [r1, #0x3a]
	ldrb r4, [r0, #4]
	ldrb r0, [r0, #3]
	sub r3, r3, #1
	add r1, r2, #1
	mov r0, r0, lsl #0x10
	cmp r2, r3
	movgt r2, r3
	add r0, r0, #0xff
	cmp r4, r2
	add lr, r0, #0x100
	bgt _0207B47C
	ldr r12, _0207B4A8 ; =0x020B9FD8
	mov r0, #0x15c
_0207B450:
	mla r3, r4, r0, r12
	ldr r3, [r3, #0x894]
	cmp lr, r3
	bls _0207B470
	mov r1, r4
	cmp r3, #0
	beq _0207B47C
	mov lr, r3
_0207B470:
	add r4, r4, #1
	cmp r4, r2
	ble _0207B450
_0207B47C:
	cmp r1, r2
	movgt r4, #0
	bgt _0207B49C
	ldr r2, _0207B4AC ; =0x020BA720
	mov r0, #0x15c
	mla r4, r1, r0, r2
	mov r0, r4
	bl DseVoice_Deallocate
_0207B49C:
	mov r0, r4
	ldmfd sp!, {r4, pc}
_0207B4A4: .word unk_020BA6D8
_0207B4A8: .word unk_020B9FD8
_0207B4AC: .word unk_020BA720
	arm_func_end FUN_0207b40c

	arm_func_start DseChannel_StartVoice
DseChannel_StartVoice: ; 0x0207B4B0
	stmfd sp!, {r3, r4, r5, lr}
	mov r4, r1
	mov r1, r2, lsl #0x10
	ldrh r3, [r4, #6]
	add r1, r1, #0xff
	ldr r2, [r4, #0x14c]
	add r1, r1, #0x100
	orr r2, r2, r1
	orr r3, r3, #1
	mov r5, r0
	ldr r1, _0207B510 ; =0x0000FFFD
	mov r0, r3, lsl #0x10
	and r1, r1, r0, lsr #16
	add r0, r4, #0x3c
	strh r1, [r4, #6]
	str r2, [r4, #0x14c]
	bl DseEnvelope_Start
	ldr r0, [r4, #0x158]
	cmp r0, r5
	ldrne r0, [r5, #0xb0]
	strne r0, [r4, #0x154]
	strne r4, [r5, #0xb0]
	strne r5, [r4, #0x158]
	ldmfd sp!, {r3, r4, r5, pc}
_0207B510: .word 0x0000FFFD
	arm_func_end DseChannel_StartVoice

	arm_func_start DseChannel_ReleaseHeld
DseChannel_ReleaseHeld: ; 0x0207B514
	stmfd sp!, {r4, r5, r6, lr}
	mov r6, r0
	ldrb r0, [r6, #4]
	tst r0, #3
	ldmnefd sp!, {r4, r5, r6, pc}
	ldr r1, [r6, #0xb4]
	add r5, r6, #0xb4
	cmp r1, #0
	beq _0207B560
_0207B538:
	ldmib r1, {r0, r4}
	cmp r0, #0
	strgt r1, [r5]
	addgt r5, r1, #8
	bgt _0207B554
	mov r0, r6
	bl DseChannel_ReleaseNoteInternal
_0207B554:
	mov r1, r4
	cmp r4, #0
	bne _0207B538
_0207B560:
	mov r0, #0
	str r0, [r5]
	ldmfd sp!, {r4, r5, r6, pc}
	arm_func_end DseChannel_ReleaseHeld

	arm_func_start DseChannel_ReleaseVoice
DseChannel_ReleaseVoice: ; 0x0207B56C
	stmfd sp!, {r4, lr}
	mov r4, r1
	ldrh r1, [r4, #4]
	orr r1, r1, #2
	strh r1, [r4, #4]
	ldrb r0, [r0, #4]
	tst r0, #1
	ldmnefd sp!, {r4, pc}
	ldr r1, [r4, #0x14c]
	add r0, r4, #0x3c
	and r1, r1, #0xff
	str r1, [r4, #0x14c]
	bl DseEnvelope_Release
	ldrh r1, [r4, #6]
	ldr r0, _0207B5B4 ; =0x0000FFFE
	and r0, r1, r0
	strh r0, [r4, #6]
	ldmfd sp!, {r4, pc}
_0207B5B4: .word 0x0000FFFE
	arm_func_end DseChannel_ReleaseVoice

	arm_func_start DseVoice_Deallocate
DseVoice_Deallocate: ; 0x0207B5B8
	stmfd sp!, {r3, r4, r5, lr}
	mov r4, r0
	ldr r1, [r4, #0x158]
	cmp r1, #0
	beq _0207B660
	ldr r2, [r1, #0xb0]
	cmp r2, r4
	ldreq r0, [r4, #0x154]
	streq r0, [r1, #0xb0]
	beq _0207B608
	cmp r2, #0
	beq _0207B608
_0207B5E8:
	ldr r0, [r2, #0x154]
	cmp r0, r4
	ldreq r0, [r4, #0x154]
	streq r0, [r2, #0x154]
	beq _0207B608
	mov r2, r0
	cmp r0, #0
	bne _0207B5E8
_0207B608:
	mov r5, #0
	add r0, r4, #0x3c
	strh r5, [r4, #4]
	str r5, [r4, #0x158]
	str r5, [r4, #0x154]
	bl DseEnvelope_Stop
	ldr r1, [r4, #0x14c]
	ldrh r0, [r4, #0xa]
	and r3, r1, #0xff
	ldr r2, _0207B6B8 ; =0x020BA6D8
	mvn r1, r0
	str r5, [r4]
	strh r5, [r4, #0x1a]
	str r3, [r4, #0x14c]
	ldrh r3, [r2, #0x3e]
	mov r1, r1, lsl #0x10
	and r1, r3, r1, lsr #16
	strh r1, [r2, #0x3e]
	ldrh r1, [r2, #0x42]
	orr r1, r1, r0
	strh r1, [r2, #0x42]
	ldmfd sp!, {r3, r4, r5, pc}
_0207B660:
	mov r5, #0
	add r0, r4, #0x3c
	strh r5, [r4, #4]
	str r5, [r4, #0x158]
	str r5, [r4, #0x154]
	bl DseEnvelope_Stop
	ldr r1, [r4, #0x14c]
	ldrh r0, [r4, #0xa]
	and r3, r1, #0xff
	ldr r2, _0207B6B8 ; =0x020BA6D8
	mvn r1, r0
	str r5, [r4]
	strh r5, [r4, #0x1a]
	str r3, [r4, #0x14c]
	ldrh r3, [r2, #0x3e]
	mov r1, r1, lsl #0x10
	and r1, r3, r1, lsr #16
	strh r1, [r2, #0x3e]
	ldrh r1, [r2, #0x42]
	orr r1, r1, r0
	strh r1, [r2, #0x42]
	ldmfd sp!, {r3, r4, r5, pc}
_0207B6B8: .word unk_020BA6D8
	arm_func_end DseVoice_Deallocate

	arm_func_start DseVoice_FlagForActivation
DseVoice_FlagForActivation: ; 0x0207B6BC
	stmfd sp!, {r3, lr}
	ldr r1, [r0, #0x14c]
	ldrh r12, [r0, #0xa]
	orr r2, r1, #0xff
	orr r2, r2, #0x100
	mov lr, #0xff0
	ldr r1, _0207B710 ; =0x020BA6D8
	mvn r3, r12
	strh lr, [r0, #6]
	str r2, [r0, #0x14c]
	ldrh r2, [r1, #0x40]
	mov r0, r3, lsl #0x10
	and r2, r2, r0, lsr #16
	strh r2, [r1, #0x40]
	ldrh r2, [r1, #0x42]
	and r0, r2, r0, lsr #16
	strh r0, [r1, #0x42]
	ldrh r0, [r1, #0x3e]
	orr r0, r0, r12
	strh r0, [r1, #0x3e]
	ldmfd sp!, {r3, pc}
_0207B710: .word unk_020BA6D8
	arm_func_end DseVoice_FlagForActivation

	arm_func_start DseVoice_FlagForDeactivation
DseVoice_FlagForDeactivation: ; 0x0207B714
	ldr r1, [r0, #0x14c]
	ldrh r3, [r0, #0xa]
	bic r2, r1, #0xff00
	ldr r1, _0207B74C ; =0x020BA6D8
	str r2, [r0, #0x14c]
	mvn r0, r3
	ldrh r2, [r1, #0x3e]
	mov r0, r0, lsl #0x10
	and r0, r2, r0, lsr #16
	strh r0, [r1, #0x3e]
	ldrh r0, [r1, #0x40]
	orr r0, r0, r3
	strh r0, [r1, #0x40]
	bx lr
_0207B74C: .word unk_020BA6D8
	arm_func_end DseVoice_FlagForDeactivation

	arm_func_start DseVoice_CountNumActiveInChannel
DseVoice_CountNumActiveInChannel: ; 0x0207B750
	ldr r2, [r0, #0xb0]
	mov r0, #0
	cmp r2, #0
	bxeq lr
_0207B760:
	ldrb r1, [r2, #0x14c]
	ldr r2, [r2, #0x154]
	cmp r1, #0
	addne r0, r0, #1
	cmp r2, #0
	bne _0207B760
	bx lr
	arm_func_end DseVoice_CountNumActiveInChannel

	arm_func_start DseVoice_UpdateHardware
DseVoice_UpdateHardware: ; 0x0207B77C
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, lr}
	sub sp, sp, #0x18
	ldr r4, _0207B9A4 ; =0x020BA6D8
	mov r6, #0
	ldrh r0, [r4, #0x3a]
	mov r5, r6
	ldr r7, _0207B9A8 ; =0x020BA720
	cmp r0, #0
	mov r8, r6
	ble _0207B8EC
	mov r11, #2
	mov r10, #1
_0207B7AC:
	ldrh r9, [r7, #6]
	cmp r9, #0
	beq _0207B8D8
	tst r9, #1
	beq _0207B880
	ldrsb r0, [r7, #0x21]
	ldrb r1, [r7, #0x1f]
	mov r3, r10
	cmp r0, #0
	moveq r3, r11
	cmp r1, #4
	addls pc, pc, r1, lsl #2
	b _0207B874
_0207B7E0: ; jump table
	b _0207B7F4 ; case 0
	b _0207B7F4 ; case 1
	b _0207B7F4 ; case 2
	b _0207B830 ; case 3
	b _0207B858 ; case 4
_0207B7F4:
	ldr r0, [r7, #0x34]
	str r0, [sp]
	ldr r0, [r7, #0x38]
	str r0, [sp, #4]
	ldr r0, [r7, #0x140]
	str r0, [sp, #8]
	str r6, [sp, #0xc]
	ldr r0, [r7, #0x13c]
	str r0, [sp, #0x10]
	ldr r0, [r7, #0x144]
	str r0, [sp, #0x14]
	ldrh r0, [r7, #8]
	ldr r2, [r7, #0x30]
	bl SND_SetupChannelPcm
	b _0207B874
_0207B830:
	ldr r0, [r7, #0x13c]
	mov r3, #0
	str r0, [sp]
	ldr r0, [r7, #0x144]
	str r0, [sp, #4]
	ldrh r0, [r7, #8]
	ldrb r1, [r7, #0x25]
	ldr r2, [r7, #0x140]
	bl SND_SetupChannelPsg
	b _0207B874
_0207B858:
	ldr r0, [r7, #0x144]
	mov r2, #0
	str r0, [sp]
	ldrh r0, [r7, #8]
	ldr r1, [r7, #0x140]
	ldr r3, [r7, #0x13c]
	bl SND_SetupChannelNoise
_0207B874:
	mov r0, r7
	bl DseVoice_FlagForActivation
	b _0207B8D4
_0207B880:
	tst r9, #2
	beq _0207B894
	mov r0, r7
	bl DseVoice_FlagForDeactivation
	mov r9, #0
_0207B894:
	tst r9, #0x10
	beq _0207B8A8
	ldrh r0, [r7, #0xa]
	ldr r1, [r7, #0x13c]
	bl SND_SetChannelTimer
_0207B8A8:
	tst r9, #0x20
	beq _0207B8C0
	ldrh r0, [r7, #0xa]
	ldr r1, [r7, #0x140]
	mov r2, #0
	bl SND_SetChannelVolume
_0207B8C0:
	tst r9, #0x40
	beq _0207B8D4
	ldrh r0, [r7, #0xa]
	ldr r1, [r7, #0x144]
	bl SND_SetChannelPan
_0207B8D4:
	strh r5, [r7, #6]
_0207B8D8:
	ldrh r0, [r4, #0x3a]
	add r8, r8, #1
	add r7, r7, #0x15c
	cmp r8, r0
	blt _0207B7AC
_0207B8EC:
	ldr r6, _0207B9A4 ; =0x020BA6D8
	ldr r0, _0207B9AC ; =0x020B9FD8
	ldrh r1, [r6, #0x3e]
	mov r4, #0
	strh r1, [r6, #0x3c]
	ldrb r2, [r0, #0x744]
	cmp r2, #0
	cmpeq r1, #0
	ldreqb r0, [r0, #0x746]
	cmpeq r0, #0
	beq _0207B93C
	ldr r5, _0207B9AC ; =0x020B9FD8
	ldrh r0, [r6, #0x3e]
	ldrb r1, [r5, #0x746]
	mov r3, r4
	bl SND_StartTimer
	and r0, r4, #0xff
	strb r4, [r5, #0x744]
	strb r0, [r5, #0x746]
	strh r0, [r6, #0x3e]
_0207B93C:
	ldr r0, _0207B9AC ; =0x020B9FD8
	ldrb r2, [r0, #0x745]
	cmp r2, #0
	ldreqb r0, [r0, #0x747]
	cmpeq r0, #0
	ldreqh r0, [r6, #0x40]
	cmpeq r0, #0
	ldreqh r0, [r6, #0x42]
	cmpeq r0, #0
	addeq sp, sp, #0x18
	ldmeqfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
	ldr r5, _0207B9AC ; =0x020B9FD8
	ldrh r7, [r6, #0x40]
	ldrh r0, [r6, #0x42]
	ldrb r1, [r5, #0x747]
	mov r3, r4
	orr r0, r7, r0
	bl SND_StopTimer
	and r0, r4, #0xff
	strb r4, [r5, #0x745]
	strb r0, [r5, #0x747]
	strh r0, [r6, #0x42]
	ldrh r0, [r6, #0x42]
	strh r0, [r6, #0x40]
	add sp, sp, #0x18
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_0207B9A4: .word unk_020BA6D8
_0207B9A8: .word unk_020BA720
_0207B9AC: .word unk_020B9FD8
	arm_func_end DseVoice_UpdateHardware

	arm_func_start DseEnvelope_Reset
DseEnvelope_Reset: ; 0x0207B9B0
	mov r1, #0
	strb r1, [r0]
	strb r1, [r0, #0x1c]
	str r1, [r0, #0x10]
	bx lr
	arm_func_end DseEnvelope_Reset

	arm_func_start DseEnvelopeParameters_Reset
DseEnvelopeParameters_Reset: ; 0x0207B9C4
	mvn r2, #0xff
	add r1, r2, #0xff
	str r2, [r0]
	str r1, [r0, #4]
	str r1, [r0, #8]
	str r1, [r0, #0xc]
	bx lr
	arm_func_end DseEnvelopeParameters_Reset

	arm_func_start DseEnvelopeParameters_CheckValidity
DseEnvelopeParameters_CheckValidity: ; 0x0207B9E0
	ldrb r1, [r0, #1]
	mov r2, #1
	strb r2, [r0]
	cmp r1, #0x7f
	ldrhib r1, [r0, #8]
	cmphi r1, #0x7f
	ldrhib r1, [r0, #9]
	cmphi r1, #0x7f
	ldrhib r1, [r0, #0xa]
	cmphi r1, #0x7f
	ldrhib r1, [r0, #0xb]
	cmphi r1, #0x7f
	ldrhib r1, [r0, #0xc]
	cmphi r1, #0x7f
	ldrhib r1, [r0, #0xd]
	cmphi r1, #0x7f
	ldrhib r1, [r0, #0xe]
	cmphi r1, #0x7f
	movhi r1, #0
	strhib r1, [r0]
	bx lr
	arm_func_end DseEnvelopeParameters_CheckValidity

	arm_func_start DseEnvelope_SetParameters
DseEnvelope_SetParameters: ; 0x0207BA34
	ldrb r2, [r1, #1]
	cmp r2, #0x7f
	strlsb r2, [r0, #1]
	ldrb r2, [r1, #8]
	cmp r2, #0x7f
	strlsb r2, [r0, #8]
	ldrb r2, [r1, #9]
	cmp r2, #0x7f
	strlsb r2, [r0, #9]
	ldrb r2, [r1, #0xa]
	cmp r2, #0x7f
	strlsb r2, [r0, #0xa]
	ldrb r2, [r1, #0xb]
	cmp r2, #0x7f
	strlsb r2, [r0, #0xb]
	ldrb r2, [r1, #0xc]
	cmp r2, #0x7f
	strlsb r2, [r0, #0xc]
	ldrb r2, [r1, #0xd]
	cmp r2, #0x7f
	strlsb r2, [r0, #0xd]
	ldrb r1, [r1, #0xe]
	cmp r1, #0x7f
	strlsb r1, [r0, #0xe]
	bx lr
	arm_func_end DseEnvelope_SetParameters

	arm_func_start DseEnvelope_SetSlide
DseEnvelope_SetSlide: ; 0x0207BA98
	stmfd sp!, {r3, r4, r5, lr}
	mov r4, r1
	cmp r2, #0x7f
	moveq r1, #0
	mov r5, r0
	subeq r0, r1, #0x80000001
	streq r1, [r5, #0x14]
	streq r0, [r5, #0x18]
	ldmeqfd sp!, {r3, r4, r5, pc}
	ldrb r3, [r5, #1]
	strb r4, [r5, #0x1d]
	cmp r3, #0
	bne _0207BAEC
	ldr r0, _0207BB38 ; =0x02091C54
	ldr r1, _0207BB3C ; =0x020B9FD8
	ldr r2, [r0, r2, lsl #2]
	mov r0, #0x3e8
	mul r0, r2, r0
	ldrsh r1, [r1, #0x28]
	bl _u32_div_f
	b _0207BB10
_0207BAEC:
	ldr r0, _0207BB40 ; =0x02091B54
	mov r1, r2, lsl #1
	ldrh r2, [r0, r1]
	ldr r1, _0207BB3C ; =0x020B9FD8
	mov r0, #0x3e8
	mul r2, r3, r2
	mul r0, r2, r0
	ldrsh r1, [r1, #0x28]
	bl _s32_div_f
_0207BB10:
	str r0, [r5, #0x18]
	movs r1, r0
	moveq r0, #0
	streq r0, [r5, #0x14]
	ldmeqfd sp!, {r3, r4, r5, pc}
	ldr r0, [r5, #0x10]
	rsb r0, r0, r4, lsl #23
	bl _s32_div_f
	str r0, [r5, #0x14]
	ldmfd sp!, {r3, r4, r5, pc}
_0207BB38: .word DSE_MUSIC_DURATION_LOOKUP_TABLE_2
_0207BB3C: .word unk_020B9FD8
_0207BB40: .word DSE_MUSIC_DURATION_LOOKUP_TABLE_1
	arm_func_end DseEnvelope_SetSlide

	arm_func_start DseEnvelope_Start
DseEnvelope_Start: ; 0x0207BB44
	stmfd sp!, {r4, lr}
	mov r4, r0
	ldrb r1, [r4]
	cmp r1, #0
	beq _0207BBE4
	ldrb r2, [r4, #9]
	cmp r2, #0
	beq _0207BB84
	ldrb r12, [r4, #8]
	mov r3, #3
	mov r1, #0x7f
	mov r12, r12, lsl #0x17
	str r12, [r4, #0x10]
	strb r3, [r4, #0x1c]
	bl DseEnvelope_SetSlide
	b _0207BBD8
_0207BB84:
	ldrb r2, [r4, #0xc]
	mov r1, #0x3f800000
	str r1, [r4, #0x10]
	cmp r2, #0
	beq _0207BBA8
	mov r1, #0x7f
	bl DseEnvelope_SetSlide
	mov r0, #4
	b _0207BBD4
_0207BBA8:
	ldrb r2, [r4, #0xa]
	cmp r2, #0
	beq _0207BBC4
	ldrsb r1, [r4, #0xb]
	bl DseEnvelope_SetSlide
	mov r0, #5
	b _0207BBD4
_0207BBC4:
	ldrb r2, [r4, #0xd]
	mov r1, #0
	bl DseEnvelope_SetSlide
	mov r0, #6
_0207BBD4:
	strb r0, [r4, #0x1c]
_0207BBD8:
	mov r0, #1
	strb r0, [r4, #0x1e]
	ldmfd sp!, {r4, pc}
_0207BBE4:
	ldrb r0, [r4, #0x1c]
	cmp r0, #1
	movne r1, #0
	movne r0, #0x3f800000
	strneb r1, [r4, #0x1c]
	strne r0, [r4, #0x10]
	ldmfd sp!, {r4, pc}
	arm_func_end DseEnvelope_Start

	arm_func_start DseEnvelope_Release
DseEnvelope_Release: ; 0x0207BC00
	stmfd sp!, {r4, lr}
	mov r4, r0
	ldrb r1, [r4, #0x1c]
	cmp r1, #0
	ldmeqfd sp!, {r4, pc}
	ldrb r2, [r4, #0xe]
	mov r1, #0
	bl DseEnvelope_SetSlide
	mov r0, #7
	strb r0, [r4, #0x1c]
	ldmfd sp!, {r4, pc}
	arm_func_end DseEnvelope_Release

	arm_func_start DseEnvelope_Stop
DseEnvelope_Stop: ; 0x0207BC2C
	mov r1, #0
	strb r1, [r0, #0x1c]
	str r1, [r0, #0x10]
	str r1, [r0, #0x18]
	strb r1, [r0, #0x1e]
	bx lr
	arm_func_end DseEnvelope_Stop

	arm_func_start DseEnvelope_ForceVolume
DseEnvelope_ForceVolume: ; 0x0207BC44
	mov r3, #0
	mov r2, #1
	strb r3, [r0]
	strb r2, [r0, #0x1c]
	str r1, [r0, #0x10]
	str r3, [r0, #0x18]
	strb r2, [r0, #0x1e]
	bx lr
	arm_func_end DseEnvelope_ForceVolume

	arm_func_start DseEnvelope_Stop2
DseEnvelope_Stop2: ; 0x0207BC64
	mov r1, #0
	strb r1, [r0, #0x1c]
	str r1, [r0, #0x10]
	str r1, [r0, #0x18]
	strb r1, [r0, #0x1e]
	bx lr
	arm_func_end DseEnvelope_Stop2

	arm_func_start DseEnvelope_Tick
DseEnvelope_Tick: ; 0x0207BC7C
	stmfd sp!, {r4, lr}
	mov r4, r0
	ldrb r2, [r4, #0x1c]
	cmp r2, #2
	bls _0207BD9C
	ldr r1, [r4, #0x18]
	cmp r1, #0
	bne _0207BD6C
	ldrb r1, [r4, #0x1d]
	cmp r2, #7
	mov r1, r1, lsl #0x17
	str r1, [r4, #0x10]
	addls pc, pc, r2, lsl #2
	b _0207BD9C
_0207BCB4: ; jump table
	b _0207BD9C ; case 0
	b _0207BD9C ; case 1
	b _0207BD9C ; case 2
	b _0207BCD4 ; case 3
	b _0207BCF4 ; case 4
	b _0207BD20 ; case 5
	b _0207BD40 ; case 6
	b _0207BD58 ; case 7
_0207BCD4:
	ldrb r2, [r4, #0xc]
	cmp r2, #0
	beq _0207BCF4
	mov r1, #0x7f
	bl DseEnvelope_SetSlide
	mov r0, #4
_0207BCEC:
	strb r0, [r4, #0x1c]
	b _0207BD9C
_0207BCF4:
	ldrb r2, [r4, #0xa]
	cmp r2, #0
	beq _0207BD14
	ldrsb r1, [r4, #0xb]
	mov r0, r4
	bl DseEnvelope_SetSlide
	mov r0, #5
	b _0207BCEC
_0207BD14:
	ldrb r0, [r4, #0xb]
	mov r0, r0, lsl #0x17
	str r0, [r4, #0x10]
_0207BD20:
	ldrb r2, [r4, #0xd]
	cmp r2, #0
	beq _0207BD40
	mov r0, r4
	mov r1, #0
	bl DseEnvelope_SetSlide
	mov r0, #6
	b _0207BCEC
_0207BD40:
	mov r1, #0
	mov r0, r4
	mov r2, r1
	bl DseEnvelope_SetSlide
	mov r0, #2
	b _0207BCEC
_0207BD58:
	mov r0, #0
	mov r1, #8
	strb r1, [r4, #0x1c]
	str r0, [r4, #0x10]
	b _0207BD98
_0207BD6C:
	ldr r2, [r4, #0x10]
	ldr r1, [r4, #0x14]
	mvn r0, #0xc0000000
	add r1, r2, r1
	cmp r1, r0
	movgt r1, r0
	ldr r0, [r4, #0x18]
	cmp r1, #0
	movlt r1, #0
	str r1, [r4, #0x10]
	sub r0, r0, #1
_0207BD98:
	str r0, [r4, #0x18]
_0207BD9C:
	ldr r0, [r4, #0x10]
	mov r0, r0, asr #0x17
	mov r0, r0, lsl #0x18
	mov r0, r0, asr #0x18
	ldmfd sp!, {r4, pc}
	arm_func_end DseEnvelope_Tick

	arm_func_start DseLfoBank_Reset
DseLfoBank_Reset: ; 0x0207BDB0
	mov r1, #0
	str r1, [r0]
	str r1, [r0, #4]
	str r1, [r0, #8]
	str r1, [r0, #0xc]
	bx lr
	arm_func_end DseLfoBank_Reset

	arm_func_start DseLfoBank_Set
DseLfoBank_Set: ; 0x0207BDC8
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, lr}
	sub sp, sp, #0x20
	mov r10, r0
	ldr r8, _0207BF88 ; =DSE_LFO_OUTPUT_VOICE_UPDATE_FLAGS
	add r4, sp, #0
	mov r9, r1
	add r5, r10, #0xc
	add r6, r10, #0x10
	mov r7, #0
	mov r3, #4
_0207BDF0:
	ldrh r0, [r8, #2]
	ldrh r1, [r8], #4
	subs r3, r3, #1
	strh r0, [r4, #2]
	strh r1, [r4], #4
	bne _0207BDF0
	ldr r1, _0207BF8C ; =0x81020409
	mov r3, r2, lsl #8
	smull r0, r4, r1, r3
	add r4, r4, r2, lsl #8
	mov r0, r3, lsr #0x1f
	add r4, r0, r4, asr #6
	mov r8, r4, lsl #0x10
_0207BE24:
	ldrb r11, [r9, #1]
	cmp r11, #0
	beq _0207BF64
	add r4, sp, #0
	add r3, sp, #0x10
	mov r2, #4
_0207BE3C:
	ldrh r0, [r4, #2]
	ldrh r1, [r4], #4
	subs r2, r2, #1
	strh r0, [r3, #2]
	strh r1, [r3], #4
	bne _0207BE3C
	strb r11, [r6, #1]
	mov r4, #0
	strb r4, [r6]
	str r4, [r6, #8]
	ldrb r0, [r9, #1]
	cmp r0, #1
	bne _0207BEC8
	ldrh r1, [r9, #0xa]
	mov r0, #0x3e8
	ldr r11, _0207BF90 ; =0x020B9FD8
	mul r0, r1, r0
	ldrsh r1, [r11, #0x28]
	bl _s32_div_f
	strh r0, [r6, #0x1a]
	ldrh r2, [r9, #0xc]
	mov r0, #0x3e8
	ldrsh r1, [r11, #0x28]
	mul r0, r2, r0
	bl _s32_div_f
	movs r1, r0
	strh r1, [r6, #0x1e]
	mov r0, #0x1000000
	streq r0, [r6, #0x20]
	streq r4, [r6, #0x24]
	beq _0207BED4
	str r4, [r6, #0x20]
	bl _s32_div_f
	str r0, [r6, #0x24]
	b _0207BED4
_0207BEC8:
	strh r4, [r6, #0x1a]
	strh r4, [r6, #0x1e]
	str r8, [r6, #0x20]
_0207BED4:
	mov r4, #0
	strh r4, [r6, #6]
	str r4, [r6, #0x14]
	ldrh r1, [r9, #8]
	cmp r1, #0
	streqh r4, [r6, #6]
	streqh r4, [r6, #4]
	beq _0207BF2C
	mov r0, #0x3e8
	mul r0, r1, r0
	ldr r1, _0207BF90 ; =0x020B9FD8
	ldrsh r1, [r1, #0x28]
	bl _s32_div_f
	movs r1, r0
	addeq r1, r1, #1
	strh r1, [r6, #4]
	strh r4, [r6, #6]
	ldr r0, [r9, #4]
	mov r0, r0, lsl #0xa
	str r0, [r6, #0xc]
	bl _s32_div_f
	str r0, [r6, #0x14]
_0207BF2C:
	ldrb r2, [r9, #3]
	ldr r1, _0207BF94 ; =0x02091E54
	add r0, sp, #0x10
	ldr r1, [r1, r2, lsl #2]
	str r1, [r6, #0x2c]
	ldrb r1, [r9, #2]
	add r1, r10, r1, lsl #1
	str r1, [r6, #0x28]
	ldrb r1, [r9, #2]
	mov r1, r1, lsl #1
	ldrh r0, [r0, r1]
	strh r0, [r6, #2]
	str r6, [r5]
	add r5, r6, #0x30
_0207BF64:
	add r7, r7, #1
	cmp r7, #4
	add r9, r9, #0x10
	add r6, r6, #0x34
	blt _0207BE24
	mov r0, #0
	str r0, [r5]
	add sp, sp, #0x20
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_0207BF88: .word DSE_LFO_OUTPUT_VOICE_UPDATE_FLAGS
_0207BF8C: .word 0x81020409
_0207BF90: .word unk_020B9FD8
_0207BF94: .word DSE_LFO_WAVEFORM_CALLBACKS
	arm_func_end DseLfoBank_Set

	arm_func_start DseLfoBank_SetModulationDepth
DseLfoBank_SetModulationDepth: ; 0x0207BF98
	stmfd sp!, {r3, lr}
	ldr lr, [r0, #0xc]
	cmp lr, #0
	ldmeqfd sp!, {r3, pc}
	ldr r2, _0207BFE0 ; =0x81020409
	mov r3, r1, lsl #8
	smull r0, r12, r2, r3
	add r12, r12, r1, lsl #8
	mov r0, r3, lsr #0x1f
	add r12, r0, r12, asr #6
	mov r1, r12, lsl #0x10
_0207BFC4:
	ldrb r0, [lr, #1]
	cmp r0, #3
	streq r1, [lr, #0x20]
	ldr lr, [lr, #0x30]
	cmp lr, #0
	bne _0207BFC4
	ldmfd sp!, {r3, pc}
_0207BFE0: .word 0x81020409
	arm_func_end DseLfoBank_SetModulationDepth

	arm_func_start DseLfoBank_Tick
DseLfoBank_Tick: ; 0x0207BFE4
	stmfd sp!, {r4, r5, r6, lr}
	ldr r5, [r0, #0xc]
	mov r6, #0
	str r6, [r0]
	str r6, [r0, #4]
	str r6, [r0, #8]
	cmp r5, #0
	beq _0207C094
	mov r4, #0x1000000
_0207C008:
	ldrh r0, [r5, #0x1a]
	cmp r0, #0
	subne r0, r0, #1
	strneh r0, [r5, #0x1a]
	bne _0207C088
	ldr r1, [r5, #0x2c]
	mov r0, r5
	blx r1
	ldrh r1, [r5, #0x1e]
	mov r0, r0, asr #8
	cmp r1, #0
	beq _0207C05C
	sub r1, r1, #1
	strh r1, [r5, #0x1e]
	ldrh r1, [r5, #0x1e]
	cmp r1, #0
	ldrne r2, [r5, #0x20]
	ldrne r1, [r5, #0x24]
	addne r1, r2, r1
	strne r1, [r5, #0x20]
	streq r4, [r5, #0x20]
_0207C05C:
	ldr r1, [r5, #0x20]
	ldr r2, [r5, #0x28]
	mov r1, r1, lsr #8
	mul r1, r0, r1
	mov r0, r1, asr #0x10
	ldrsh r1, [r2]
	mov r0, r0, lsl #0x10
	add r0, r1, r0, asr #16
	strh r0, [r2]
	ldrh r0, [r5, #2]
	orr r6, r6, r0
_0207C088:
	ldr r5, [r5, #0x30]
	cmp r5, #0
	bne _0207C008
_0207C094:
	mov r0, r6
	ldmfd sp!, {r4, r5, r6, pc}
	arm_func_end DseLfoBank_Tick

	arm_func_start DseLfoWave_Invalid
DseLfoWave_Invalid: ; 0x0207C09C
	mov r1, #0
	strb r1, [r0]
	strb r1, [r0, #1]
	mov r0, r1
	bx lr
	arm_func_end DseLfoWave_Invalid

	arm_func_start DseLfoWave_HalfSquareFunc
DseLfoWave_HalfSquareFunc: ; 0x0207C0B0
	ldrh r1, [r0, #6]
	cmp r1, #0
	bne _0207C0D8
	ldr r1, [r0, #8]
	ldrh r2, [r0, #4]
	cmp r1, #0
	movne r1, #0
	ldreq r1, [r0, #0xc]
	strh r2, [r0, #6]
	str r1, [r0, #8]
_0207C0D8:
	ldrh r1, [r0, #6]
	sub r1, r1, #1
	strh r1, [r0, #6]
	ldr r0, [r0, #8]
	bx lr
	arm_func_end DseLfoWave_HalfSquareFunc

	arm_func_start DseLfoWave_FullSquareFunc
DseLfoWave_FullSquareFunc: ; 0x0207C0EC
	ldrh r1, [r0, #6]
	cmp r1, #0
	bne _0207C124
	ldrb r1, [r0]
	ldrh r2, [r0, #4]
	tst r1, #2
	ldrne r1, [r0, #0xc]
	strh r2, [r0, #6]
	rsbne r2, r1, #0
	ldrb r1, [r0]
	ldreq r2, [r0, #0xc]
	eor r1, r1, #2
	str r2, [r0, #8]
	strb r1, [r0]
_0207C124:
	ldrh r1, [r0, #6]
	sub r1, r1, #1
	strh r1, [r0, #6]
	ldr r0, [r0, #8]
	bx lr
	arm_func_end DseLfoWave_FullSquareFunc

	arm_func_start DseLfoWave_HalfTriangleFunc
DseLfoWave_HalfTriangleFunc: ; 0x0207C138
	ldrh r1, [r0, #6]
	cmp r1, #0
	bne _0207C168
	ldrb r2, [r0]
	ldrh r1, [r0, #4]
	tst r2, #1
	strh r1, [r0, #6]
	ldrne r1, [r0, #0x14]
	rsbne r1, r1, #0
	strne r1, [r0, #0x14]
	orr r1, r2, #1
	strb r1, [r0]
_0207C168:
	ldrh r3, [r0, #6]
	ldr r2, [r0, #8]
	ldr r1, [r0, #0x14]
	sub r3, r3, #1
	add r1, r2, r1
	strh r3, [r0, #6]
	str r1, [r0, #8]
	mov r0, r1
	bx lr
	arm_func_end DseLfoWave_HalfTriangleFunc

	arm_func_start DseLfoWave_FullTriangleFunc
DseLfoWave_FullTriangleFunc: ; 0x0207C18C
	ldrh r3, [r0, #6]
	cmp r3, #0
	bne _0207C1CC
	ldrb r2, [r0]
	ldrh r3, [r0, #4]
	tst r2, #1
	ldrne r1, [r0, #0x14]
	rsbne r1, r1, #0
	strne r1, [r0, #0x14]
	bne _0207C1C4
	mov r1, r3, lsl #0xf
	mov r3, r1, lsr #0x10
	cmp r3, #1
	movlo r3, #1
_0207C1C4:
	orr r1, r2, #1
	strb r1, [r0]
_0207C1CC:
	ldr r2, [r0, #8]
	ldr r1, [r0, #0x14]
	sub r3, r3, #1
	add r1, r2, r1
	strh r3, [r0, #6]
	str r1, [r0, #8]
	mov r0, r1
	bx lr
	arm_func_end DseLfoWave_FullTriangleFunc

	arm_func_start DseLfoWave_SawFunc
DseLfoWave_SawFunc: ; 0x0207C1EC
	ldrh r1, [r0, #6]
	cmp r1, #0
	ldreqh r2, [r0, #4]
	moveq r1, #0
	streq r1, [r0, #8]
	streqh r2, [r0, #6]
	ldrne r2, [r0, #8]
	ldrne r1, [r0, #0x14]
	addne r1, r2, r1
	strne r1, [r0, #8]
	ldrh r1, [r0, #6]
	sub r1, r1, #1
	strh r1, [r0, #6]
	ldr r0, [r0, #8]
	bx lr
	arm_func_end DseLfoWave_SawFunc

	arm_func_start DseLfoWave_ReverseSawFunc
DseLfoWave_ReverseSawFunc: ; 0x0207C228
	ldrh r1, [r0, #6]
	cmp r1, #0
	ldreqh r2, [r0, #4]
	ldreq r1, [r0, #0xc]
	streqh r2, [r0, #6]
	ldrne r2, [r0, #8]
	ldrne r1, [r0, #0x14]
	subne r1, r2, r1
	str r1, [r0, #8]
	ldrh r1, [r0, #6]
	sub r1, r1, #1
	strh r1, [r0, #6]
	ldr r0, [r0, #8]
	bx lr
	arm_func_end DseLfoWave_ReverseSawFunc

	arm_func_start DseLfoWave_HalfNoiseFunc
DseLfoWave_HalfNoiseFunc: ; 0x0207C260
	stmfd sp!, {r4, lr}
	mov r4, r0
	ldrh r0, [r4, #6]
	cmp r0, #0
	bne _0207C290
	ldrh r0, [r4, #4]
	strh r0, [r4, #6]
	bl DseUtil_GetRandomNumber
	ldr r1, [r4, #0xc]
	mov r1, r1, asr #0x10
	mul r0, r1, r0
	str r0, [r4, #8]
_0207C290:
	ldrh r1, [r4, #6]
	ldr r0, [r4, #8]
	sub r1, r1, #1
	strh r1, [r4, #6]
	ldmfd sp!, {r4, pc}
	arm_func_end DseLfoWave_HalfNoiseFunc

	arm_func_start DseLfoWave_FullNoiseFunc
DseLfoWave_FullNoiseFunc: ; 0x0207C2A4
	stmfd sp!, {r3, r4, r5, lr}
	mov r4, r0
	ldrh r0, [r4, #6]
	cmp r0, #0
	bne _0207C2D8
	ldrh r0, [r4, #4]
	ldr r5, [r4, #0xc]
	strh r0, [r4, #6]
	bl DseUtil_GetRandomNumber
	mov r1, r5, asr #0xf
	mul r0, r1, r0
	sub r0, r0, r5, asr #1
	str r0, [r4, #8]
_0207C2D8:
	ldrh r1, [r4, #6]
	ldr r0, [r4, #8]
	sub r1, r1, #1
	strh r1, [r4, #6]
	ldmfd sp!, {r3, r4, r5, pc}
	arm_func_end DseLfoWave_FullNoiseFunc

	arm_func_start FUN_0207c2ec
FUN_0207c2ec: ; 0x0207C2EC
	stmfd sp!, {r3, r4, r5, lr}
	mov r4, #0
	mov r1, r4
	mov r2, #0x40
	mov r5, r0
	bl MI_CpuFill8
	ldr r0, _0207C344 ; =0x020BAFD8
	mov r12, #0x14
	ldrb r0, [r0, #0xd1c]
	mov r3, #1
	mov r2, #2
	add lr, r0, #1
	mov r1, #0x1000
	mov r0, #0x800
	strb lr, [r5]
	strb r12, [r5, #1]
	strb r3, [r5, #2]
	strb r2, [r5, #3]
	strb r4, [r5, #4]
	str r1, [r5, #0x10]
	str r0, [r5, #0x20]
	ldmfd sp!, {r3, r4, r5, pc}
_0207C344: .word unk_020BAFD8
	arm_func_end FUN_0207c2ec

	arm_func_start FUN_0207c348
FUN_0207c348: ; 0x0207C348
	ldr r2, _0207C364 ; =0x020BAFD8
	ldrb r2, [r2, #0xd1c]
	cmp r1, r2
	mvnls r0, #0x19
	strhib r1, [r0]
	movhi r0, #0
	bx lr
_0207C364: .word unk_020BAFD8
	arm_func_end FUN_0207c348

	arm_func_start FUN_0207c368
FUN_0207c368: ; 0x0207C368
	ldr r2, _0207C384 ; =0x020BAFD8
	ldrb r2, [r2, #0xd1c]
	cmp r1, r2
	mvnls r0, #0x19
	strhib r1, [r0, #1]
	movhi r0, #0
	bx lr
_0207C384: .word unk_020BAFD8
	arm_func_end FUN_0207c368

	arm_func_start FUN_0207c388
FUN_0207c388: ; 0x0207C388
	stmfd sp!, {r4, lr}
	cmp r1, #1
	streqb r1, [r0, #2]
	moveq r0, #0
	ldmeqfd sp!, {r4, pc}
	mvn r4, #0x17
	mov r1, #0
	mov r0, r4
	mov r2, r1
	bl Dse_SetError
	mov r0, r4
	ldmfd sp!, {r4, pc}
	arm_func_end FUN_0207c388

	arm_func_start FUN_0207c3b8
FUN_0207c3b8: ; 0x0207C3B8
	cmp r1, #0x10
	cmplo r2, #0x10
	mvnhs r0, #0x17
	bxhs lr
	cmp r1, r2
	movhi r3, r2
	movhi r2, r1
	movhi r1, r3
	orr r3, r1, #0x80
	orr r1, r2, #0x80
	strb r3, [r0, #4]
	strb r1, [r0, #3]
	mov r0, #0
	bx lr
	arm_func_end FUN_0207c3b8

	arm_func_start FUN_0207c3f0
FUN_0207c3f0: ; 0x0207C3F0
	stmfd sp!, {r4, lr}
	cmp r1, #0
	moveq r1, #0x1000
	beq _0207C424
	cmp r1, #0x400
	bge _0207C424
	mvn r4, #0x17
	mov r1, #0
	mov r0, r4
	mov r2, r1
	bl Dse_SetError
	mov r0, r4
	ldmfd sp!, {r4, pc}
_0207C424:
	str r1, [r0, #0x10]
	mov r0, #0
	ldmfd sp!, {r4, pc}
	arm_func_end FUN_0207c3f0

	arm_func_start FUN_0207c430
FUN_0207c430: ; 0x0207C430
	stmfd sp!, {r4, lr}
	cmp r1, #0
	moveq r1, #0x800
	beq _0207C464
	cmp r1, #0x400
	bge _0207C464
	mvn r4, #0x17
	mov r1, #0
	mov r0, r4
	mov r2, r1
	bl Dse_SetError
	mov r0, r4
	ldmfd sp!, {r4, pc}
_0207C464:
	str r1, [r0, #0x20]
	mov r0, #0
	ldmfd sp!, {r4, pc}
	arm_func_end FUN_0207c430

	arm_func_start FUN_0207c470
FUN_0207c470: ; 0x0207C470
	ldr r2, _0207C484 ; =0x66627473
	mov r0, r1
	ldr r12, _0207C488 ; =DseMem_AllocateFirstFit
	mov r1, #0x20
	bx r12
_0207C484: .word 0x66627473
_0207C488: .word DseMem_AllocateFirstFit
	arm_func_end FUN_0207c470

	arm_func_start FUN_0207c48c
FUN_0207c48c: ; 0x0207C48C
	stmfd sp!, {r4, lr}
	mov r4, r1
	bl FUN_020755ac
	mov r0, r4
	bl DseMem_Free
	mov r0, r4
	ldmfd sp!, {r4, pc}
	arm_func_end FUN_0207c48c

	arm_func_start FUN_0207c4a8
FUN_0207c4a8: ; 0x0207C4A8
	ldr r0, _0207C4C4 ; =0x020BBEC0
	mov r2, #0
	strb r2, [r0, #4]
	mov r1, #1
	str r1, [r0]
	strb r2, [r0, #9]
	bx lr
_0207C4C4: .word unk_020BBEC0
	arm_func_end FUN_0207c4a8

	arm_func_start FUN_0207c4c8
FUN_0207c4c8: ; 0x0207C4C8
	stmfd sp!, {r4, r5, r6, r7, r8, r9, r10, lr}
	mov r10, r0
	cmp r10, #0
	ldr r8, _0207C530 ; =0x020BC088
	mov r9, #0
	ble _0207C528
	ldr r5, _0207C534 ; =0x696D7473
	mov r4, r9
	mov r7, #0x35c
	mov r6, #0x10
_0207C4F0:
	mov r0, r7
	mov r1, r6
	mov r2, r5
	bl DseMem_AllocateFirstFit
	cmp r0, #0
	mvneq r0, #0x7f
	ldmeqfd sp!, {r4, r5, r6, r7, r8, r9, r10, pc}
	str r4, [r0]
	strb r4, [r0, #4]
	add r9, r9, #1
	str r0, [r8]
	cmp r9, r10
	add r8, r0, #0x358
	blt _0207C4F0
_0207C528:
	mov r0, #0
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, pc}
_0207C530: .word unk_020BC088
_0207C534: .word 0x696D7473
	arm_func_end FUN_0207c4c8

	arm_func_start FUN_0207c538
FUN_0207c538: ; 0x0207C538
	stmfd sp!, {r4, r5, r6, lr}
	ldr r4, _0207C5BC ; =0x020BBEC0
	mov r5, #0
	ldr r0, [r4, #0x1c8]
	cmp r0, #0
	beq _0207C564
_0207C550:
	ldr r6, [r0, #0x358]
	bl DseMem_Free
	mov r0, r6
	cmp r6, #0
	bne _0207C550
_0207C564:
	str r5, [r4, #0x1c8]
	ldr r0, [r4, #0xe8]
	cmp r0, #0
	beq _0207C578
	bl DseMem_Free
_0207C578:
	str r5, [r4, #0xe8]
	ldr r0, [r4, #0x1b4]
	cmp r0, #0
	beq _0207C58C
	bl DseMem_Free
_0207C58C:
	str r5, [r4, #0x1b4]
	ldr r0, [r4, #0x18]
	cmp r0, #0
	beq _0207C5A0
	bl FUN_0207dc70
_0207C5A0:
	str r5, [r4, #0x18]
	ldr r0, [r4, #0x1c]
	cmp r0, #0
	beq _0207C5B4
	bl FUN_0207dc70
_0207C5B4:
	str r5, [r4, #0x1c]
	ldmfd sp!, {r4, r5, r6, pc}
_0207C5BC: .word unk_020BBEC0
	arm_func_end FUN_0207c538

	arm_func_start FUN_0207c5c0
FUN_0207c5c0: ; 0x0207C5C0
	stmfd sp!, {r4, r5, r6, lr}
	ldr r1, _0207C80C ; =0x020B9FD8
	mov r5, r0
	ldrsb r0, [r1]
	ldr r4, _0207C810 ; =0x020BBEC0
	mov r3, #0
	cmp r0, #0
	bne _0207C5FC
	mvn r4, #0xc1
	mov r1, r3
	mov r0, r4
	mov r2, r1
	bl Dse_SetError
	mov r0, r4
	ldmfd sp!, {r4, r5, r6, pc}
_0207C5FC:
	ldrsb r0, [r4, #4]
	cmp r0, #1
	moveq r0, r3
	ldmeqfd sp!, {r4, r5, r6, pc}
	cmp r5, #0
	bne _0207C630
	mvn r4, #0x17
	mov r1, r3
	mov r0, r4
	mov r2, r1
	bl Dse_SetError
	mov r0, r4
	ldmfd sp!, {r4, r5, r6, pc}
_0207C630:
	ldrb r2, [r5, #3]
	tst r2, #0x80
	beq _0207C658
	mov r0, #1
	strb r0, [r4, #6]
	ldrb r1, [r5, #4]
	and r0, r2, #0x7f
	and r1, r1, #0x7f
	strb r1, [r4, #7]
	b _0207C684
_0207C658:
	cmp r2, #0
	ldreq r0, _0207C814 ; =0x020BA6D8
	strb r3, [r4, #6]
	ldreqb r1, [r5, #4]
	ldreqh r0, [r0, #0x3a]
	subeq r0, r0, r1
	ldrb r1, [r5, #4]
	andeq r2, r0, #0xff
	sub r0, r2, #1
	strb r1, [r4, #7]
	add r0, r1, r0
_0207C684:
	strb r0, [r4, #8]
	ldrb r0, [r5, #1]
	strb r0, [r4, #0xf0]
	ldrb r0, [r5, #2]
	strb r0, [r4, #5]
	ldr r0, [r5, #8]
	str r0, [r4, #0xc]
	ldr r0, [r5, #0x14]
	cmp r0, #0
	addne r0, r5, #0x14
	ldrne r6, _0207C818 ; =0x020BC07C
	ldmneia r0, {r0, r1, r2}
	stmneia r6, {r0, r1, r2}
	ldreq r1, _0207C81C ; =FUN_0207c470
	ldreq r0, _0207C820 ; =FUN_0207c48c
	streq r1, [r4, #0x1bc]
	streq r0, [r4, #0x1c0]
	streq r4, [r4, #0x1c4]
	ldr r1, [r5, #0x10]
	str r1, [r4, #0x20]
	str r3, [r4, #0x10]
	ldr r0, [r5, #0x20]
	str r0, [r4, #0x14]
	str r3, [r4, #0x1c8]
	ldrsb r0, [r5, #5]
	strb r0, [r4, #0x1e0]
	ldrsb r0, [r5, #6]
	strb r0, [r4, #0xa]
	str r3, [r4, #0xec]
	str r3, [r4, #0x1b8]
	cmp r0, #1
	bne _0207C710
	cmp r1, #0x1000
	movlt r0, #0x1000
	strlt r0, [r4, #0x20]
_0207C710:
	ldr r0, [r4, #0x20]
	ldr r1, _0207C824 ; =0x61746164
	add r0, r0, r0, lsr #31
	mov r0, r0, asr #1
	bl FUN_0207dbf4
	str r0, [r4, #0x18]
	cmp r0, #0
	bne _0207C750
	bl FUN_0207c538
	mvn r4, #0x7f
	mov r1, #0
	mov r0, r4
	mov r2, r1
	bl Dse_SetError
	mov r0, r4
	ldmfd sp!, {r4, r5, r6, pc}
_0207C750:
	ldr r0, [r4, #0x14]
	ldr r1, _0207C828 ; =0x656C6966
	bl FUN_0207dbf4
	str r0, [r4, #0x1c]
	cmp r0, #0
	bne _0207C788
	bl FUN_0207c538
	mvn r4, #0x7f
	mov r1, #0
	mov r0, r4
	mov r2, r1
	bl Dse_SetError
	mov r0, r4
	ldmfd sp!, {r4, r5, r6, pc}
_0207C788:
	ldrb r0, [r5, #2]
	bl FUN_0207c4c8
	movs r6, r0
	bpl _0207C7B4
	bl FUN_0207c538
	mov r1, #0
	mov r0, r6
	mov r2, r1
	bl Dse_SetError
	mov r0, r6
	ldmfd sp!, {r4, r5, r6, pc}
_0207C7B4:
	bl FUN_0207f8c8
	ldrsb r0, [r5, #6]
	cmp r0, #1
	bne _0207C7C8
	bl FUN_0207f5b4
_0207C7C8:
	ldrb r0, [r5]
	strb r0, [r4, #0x24]
	ldrb r0, [r5, #1]
	strb r0, [r4, #0xf0]
	bl FUN_0207df40
	movs r5, r0
	movpl r0, #1
	strplb r0, [r4, #4]
	movpl r0, #0
	ldmplfd sp!, {r4, r5, r6, pc}
	bl FUN_0207c538
	mov r1, #0
	mov r0, r5
	mov r2, r1
	bl Dse_SetError
	mov r0, r5
	ldmfd sp!, {r4, r5, r6, pc}
_0207C80C: .word unk_020B9FD8
_0207C810: .word unk_020BBEC0
_0207C814: .word unk_020BA6D8
_0207C818: .word unk_020BC07C
_0207C81C: .word FUN_0207c470
_0207C820: .word FUN_0207c48c
_0207C824: .word 0x61746164
_0207C828: .word 0x656C6966
	arm_func_end FUN_0207c5c0

	arm_func_start FUN_0207c82c
FUN_0207c82c: ; 0x0207C82C
	stmfd sp!, {r4, lr}
	ldr r4, _0207C860 ; =0x020BBEC0
	ldrsb r0, [r4, #4]
	cmp r0, #0
	mvneq r0, #0x59
	ldmeqfd sp!, {r4, pc}
	bl FUN_0207cde4
	bl FUN_0207e040
	bl FUN_0207f600
	bl FUN_0207c538
	mov r0, #0
	strb r0, [r4, #4]
	ldmfd sp!, {r4, pc}
_0207C860: .word unk_020BBEC0
	arm_func_end FUN_0207c82c

	arm_func_start FUN_0207c864
FUN_0207c864: ; 0x0207C864
	ldr r2, _0207C8AC ; =0x04000208
	mov r1, #0
	ldrh r3, [r2]
	ldr r0, _0207C8B0 ; =0x020BBEC0
	strh r1, [r2]
	ldr r0, [r0, #0x1c8]
	cmp r0, #0
	beq _0207C89C
_0207C884:
	ldr r1, [r0]
	cmp r1, #0
	beq _0207C89C
	ldr r0, [r0, #0x358]
	cmp r0, #0
	bne _0207C884
_0207C89C:
	ldr r2, _0207C8AC ; =0x04000208
	ldrh r1, [r2]
	strh r3, [r2]
	bx lr
_0207C8AC: .word 0x04000208
_0207C8B0: .word unk_020BBEC0
	arm_func_end FUN_0207c864

	arm_func_start FUN_0207c8b4
FUN_0207c8b4: ; 0x0207C8B4
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	ldr r2, _0207C920 ; =0x04000208
	ldr r1, _0207C924 ; =0x020BBEC0
	ldrh r4, [r2]
	ldr r6, [r1, #0x1c8]
	mov r1, #0
	mov r7, r0
	strh r1, [r2]
	cmp r6, #0
	beq _0207C90C
	mov r5, #1
_0207C8E0:
	ldrsb r0, [r6, #0xa]
	cmp r0, #1
	bne _0207C900
	mov r0, r6
	mov r1, r5
	mov r2, r7
	bl FUN_0207d2c4
	strb r5, [r6, #0x12]
_0207C900:
	ldr r6, [r6, #0x358]
	cmp r6, #0
	bne _0207C8E0
_0207C90C:
	ldr r2, _0207C920 ; =0x04000208
	mov r0, #0
	ldrh r1, [r2]
	strh r4, [r2]
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_0207C920: .word 0x04000208
_0207C924: .word unk_020BBEC0
	arm_func_end FUN_0207c8b4

	arm_func_start FUN_0207c928
FUN_0207c928: ; 0x0207C928
	stmfd sp!, {r4, r5, r6, lr}
	ldr r1, _0207C978 ; =0x020BBEC0
	mov r6, r0
	ldr r5, [r1, #0x1c8]
	cmp r5, #0
	beq _0207C970
	mov r4, #0
_0207C944:
	ldrsb r0, [r5, #0x12]
	cmp r0, #1
	bne _0207C964
	mov r0, r5
	mov r1, r4
	mov r2, r6
	strb r4, [r5, #0x12]
	bl FUN_0207d2c4
_0207C964:
	ldr r5, [r5, #0x358]
	cmp r5, #0
	bne _0207C944
_0207C970:
	mov r0, #0
	ldmfd sp!, {r4, r5, r6, pc}
_0207C978: .word unk_020BBEC0
	arm_func_end FUN_0207c928

	arm_func_start FUN_0207c97c
FUN_0207c97c: ; 0x0207C97C
	ldr r1, _0207C98C ; =0x020BBEC0
	strb r0, [r1, #9]
	mov r0, #0
	bx lr
_0207C98C: .word unk_020BBEC0
	arm_func_end FUN_0207c97c

	arm_func_start FUN_0207c990
FUN_0207c990: ; 0x0207C990
	stmfd sp!, {r3, lr}
	ldr r1, _0207C9E0 ; =0x020BBEC0
	ldrsb r1, [r1, #4]
	cmp r1, #0
	mvneq r0, #0x59
	ldmeqfd sp!, {r3, pc}
	bl FUN_0207da9c
	cmp r0, #0
	mvneq r0, #0xb0
	ldmeqfd sp!, {r3, pc}
	ldr r1, [r0, #0x18]
	cmp r1, #0
	bne _0207C9D8
	ldrsb r1, [r0, #4]
	cmp r1, #0
	moveq r0, #0
	ldrne r0, [r0]
	ldmfd sp!, {r3, pc}
_0207C9D8:
	mvn r0, #0xb0
	ldmfd sp!, {r3, pc}
_0207C9E0: .word unk_020BBEC0
	arm_func_end FUN_0207c990

	arm_func_start FUN_0207c9e4
FUN_0207c9e4: ; 0x0207C9E4
	stmfd sp!, {r3, r4, r5, lr}
	ldr r1, _0207CA20 ; =0x020BBEC0
	mov r5, r0
	ldrsb r0, [r1, #4]
	cmp r0, #0
	mvneq r0, #0x59
	ldmeqfd sp!, {r3, r4, r5, pc}
	bl FUN_0207c864
	movs r4, r0
	mvneq r0, #0xb4
	ldmeqfd sp!, {r3, r4, r5, pc}
	bl FUN_0207cb7c
	str r4, [r5]
	mov r0, #0
	ldmfd sp!, {r3, r4, r5, pc}
_0207CA20: .word unk_020BBEC0
	arm_func_end FUN_0207c9e4

	arm_func_start FUN_0207ca24
FUN_0207ca24: ; 0x0207CA24
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	movs r6, r0
	mov r5, r1
	mov r4, r2
	bne _0207CA54
	mvn r4, #0x17
	mov r0, r4
	mov r2, r5
	mov r1, #0
	bl Dse_SetError
	mov r0, r4
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_0207CA54:
	add r0, sp, #0
	bl FUN_0207c9e4
	movs r7, r0
	beq _0207CA78
	mov r1, #0
	mov r2, r1
	bl Dse_SetError
	mov r0, r7
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_0207CA78:
	ldr r0, [sp]
	add r1, r0, #0x140
_0207CA80:
	ldrsb r0, [r6], #1
	mov r2, r1
	strb r0, [r1], #1
	ldrsb r0, [r2]
	cmp r0, #0
	bne _0207CA80
	cmp r5, #0
	moveq r5, #0x1000
	ldr r0, [sp]
	mov r1, r5
	bl FUN_0207cf50
	movs r5, r0
	bpl _0207CAD8
	ldr r0, [sp]
	bl FUN_0207cd18
	mvn r4, #0xae
	mov r0, r4
	mov r2, r5
	mov r1, #0
	bl Dse_SetError
	mov r0, r4
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_0207CAD8:
	ldr r0, [sp]
	ldr r1, _0207CB60 ; =FUN_0207d734
	mov r2, #0
	str r1, [r0, #0x210]
	ldr r0, [sp]
	ldr r1, _0207CB64 ; =FUN_0207dafc
	str r2, [r0, #0x214]
	ldr r0, [sp]
	ldr r2, _0207CB68 ; =FUN_0207d75c
	str r1, [r0, #0x218]
	ldr r0, [sp]
	ldr r1, _0207CB6C ; =FUN_0207f864
	str r2, [r0, #0x21c]
	ldr r0, [sp]
	ldr r2, _0207CB70 ; =FUN_0207ed28
	str r1, [r0, #0x220]
	ldr r0, [sp]
	ldr r1, _0207CB74 ; =FUN_0207ed94
	str r2, [r0, #0x228]
	ldr r0, [sp]
	ldr r2, _0207CB78 ; =FUN_0207ee04
	str r1, [r0, #0x22c]
	ldr r0, [sp]
	mov r1, #1
	str r2, [r0, #0x230]
	ldr r0, [sp]
	strb r4, [r0, #0x16]
	ldr r0, [sp]
	strb r1, [r0, #0x1e]
	ldr r0, [sp]
	strb r1, [r0, #0x2f]
	ldr r0, [sp]
	ldr r0, [r0]
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_0207CB60: .word FUN_0207d734
_0207CB64: .word FUN_0207dafc
_0207CB68: .word FUN_0207d75c
_0207CB6C: .word FUN_0207f864
_0207CB70: .word FUN_0207ed28
_0207CB74: .word FUN_0207ed94
_0207CB78: .word FUN_0207ee04
	arm_func_end FUN_0207ca24

	arm_func_start FUN_0207cb7c
FUN_0207cb7c: ; 0x0207CB7C
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, lr}
	mov r5, r0
	mov r0, #0
	mov r4, #1
	ldr r2, _0207CCF8 ; =0x0000BB80
	str r0, [r5, #0x10]
	str r0, [r5, #0x14]
	mov r3, #2
	strb r3, [r5, #0x1d]
	ldr r1, _0207CCFC ; =0x020B9FD8
	str r0, [r5, #4]
	str r0, [r5, #8]
	str r0, [r5, #0xc]
	strb r4, [r5, #0x10]
	strb r4, [r5, #0x14]
	str r0, [r5, #0x18]
	strb r0, [r5, #0x22]
	strb r0, [r5, #0x23]
	strb r4, [r5, #0x1f]
	strb r4, [r5, #0x25]
	strb r0, [r5, #0x20]
	str r2, [r5, #0x40]
	ldrsb r2, [r1, #0x49]
	ldr r1, _0207CD00 ; =0x020BBEC0
	ldr r4, _0207CD04 ; =FUN_0207d734
	strb r2, [r5, #0x26]
	strb r0, [r5, #0x2e]
	strb r0, [r5, #0x2f]
	str r0, [r5, #0xf8]
	str r0, [r5, #0xe4]
	str r0, [r5, #0xe8]
	str r0, [r5, #0x48]
	str r0, [r5, #0x4c]
	str r0, [r5, #0x50]
	str r0, [r5, #0x54]
	str r0, [r5, #0x58]
	str r0, [r5, #0x5c]
	strh r0, [r5, #0x60]
	str r0, [r5, #0x1c0]
	str r0, [r5, #0x1c4]
	str r0, [r5, #0x1c8]
	str r0, [r5, #0x1d4]
	ldr r6, [r1, #0x18]
	ldr r3, _0207CD08 ; =FUN_0207d73c
	ldr r2, _0207CD0C ; =FUN_0207d744
	ldr r1, _0207CD10 ; =FUN_0207f864
	str r2, [r5, #0x21c]
	str r6, [r5, #0x1f8]
	str r0, [r5, #0x30]
	strh r0, [r5, #0x3c]
	str r4, [r5, #0x210]
	str r0, [r5, #0x214]
	str r3, [r5, #0x218]
	str r0, [r5, #0x224]
	str r1, [r5, #0x220]
	mov r2, r0
_0207CC5C:
	add r1, r5, r0, lsl #2
	add r0, r0, #1
	str r2, [r1, #0x1f0]
	cmp r0, #2
	blt _0207CC5C
	mov r4, #0
_0207CC74:
	add r0, r5, r2, lsl #2
	add r0, r0, #0x200
	strh r4, [r0, #0x34]
	add r2, r2, #1
	strh r4, [r0, #0x36]
	cmp r2, #2
	blt _0207CC74
	add r9, r5, #0x23c
	mov r8, #0
	mov r7, #0x10
	mov r6, #0x2c
_0207CCA0:
	mla r0, r4, r6, r9
	mov r1, r8
	mov r2, r7
	bl MI_CpuFill8
	add r4, r4, #1
	cmp r4, #2
	blt _0207CCA0
	ldr r1, _0207CD00 ; =0x020BBEC0
	strb r8, [r5, #0x29]
	strb r8, [r5, #0x2a]
	ldr r2, [r1]
	ldr r0, _0207CD14 ; =0x0000FFFF
	mov r2, r2, lsl #0x10
	str r2, [r5]
	ldr r2, [r1]
	add r2, r2, #1
	cmp r2, r0
	str r2, [r1]
	movhs r0, #1
	strhs r0, [r1]
	mov r0, r5
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
_0207CCF8: .word 0x0000BB80
_0207CCFC: .word unk_020B9FD8
_0207CD00: .word unk_020BBEC0
_0207CD04: .word FUN_0207d734
_0207CD08: .word FUN_0207d73c
_0207CD0C: .word FUN_0207d744
_0207CD10: .word FUN_0207f864
_0207CD14: .word 0x0000FFFF
	arm_func_end FUN_0207cb7c

	arm_func_start FUN_0207cd18
FUN_0207cd18: ; 0x0207CD18
	stmfd sp!, {r4, r5, r6, r7, r8, lr}
	ldr r1, _0207CDDC ; =0x04000208
	mov r8, r0
	ldrh r4, [r1]
	ldr r7, [r8]
	mov r5, #0
	strh r5, [r1]
	strb r5, [r8, #4]
	strb r5, [r8, #0xa]
	strb r5, [r8, #9]
	strb r5, [r8, #0x11]
	strb r5, [r8, #0x1e]
	strb r5, [r8, #0x2f]
_0207CD4C:
	add r0, r8, r5, lsl #2
	ldr r0, [r0, #0x1f0]
	cmp r0, #0
	beq _0207CD60
	bl DseVoice_Deallocate
_0207CD60:
	add r5, r5, #1
	cmp r5, #2
	blt _0207CD4C
	ldr r2, _0207CDDC ; =0x04000208
	mov r0, r8
	ldrh r1, [r2]
	strh r4, [r2]
	bl FUN_0207cf80
	ldr r0, [r8, #0x1d4]
	cmp r0, #0
	beq _0207CD98
	bl FUN_0207dc70
	mov r0, #0
	str r0, [r8, #0x1d4]
_0207CD98:
	ldr r6, _0207CDDC ; =0x04000208
	mov r4, #0
	ldrh r5, [r6]
	mov r0, r7
	mov r2, r4
	strh r4, [r6]
	ldr r3, [r8, #0x214]
	ldr r7, [r8, #0x210]
	mov r1, #2
	blx r7
	ldr r0, _0207CDE0 ; =FUN_0207d734
	str r4, [r8]
	str r0, [r8, #0x210]
	ldrh r0, [r6]
	mov r0, r4
	strh r5, [r6]
	ldmfd sp!, {r4, r5, r6, r7, r8, pc}
_0207CDDC: .word 0x04000208
_0207CDE0: .word FUN_0207d734
	arm_func_end FUN_0207cd18

	arm_func_start FUN_0207cde4
FUN_0207cde4: ; 0x0207CDE4
	stmfd sp!, {r4, lr}
	ldr r0, _0207CE18 ; =0x020BBEC0
	ldr r4, [r0, #0x1c8]
	cmp r4, #0
	ldmeqfd sp!, {r4, pc}
_0207CDF8:
	ldr r0, [r4]
	cmp r0, #0
	ble _0207CE08
	bl FUN_0207ce1c
_0207CE08:
	ldr r4, [r4, #0x358]
	cmp r4, #0
	bne _0207CDF8
	ldmfd sp!, {r4, pc}
_0207CE18: .word unk_020BBEC0
	arm_func_end FUN_0207cde4

	arm_func_start FUN_0207ce1c
FUN_0207ce1c: ; 0x0207CE1C
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	ldr r1, _0207CF48 ; =0x020BBEC0
	mov r6, r0
	ldrsb r1, [r1, #4]
	mov r4, #0
	cmp r1, #0
	mvneq r0, #0x59
	ldmeqfd sp!, {r3, r4, r5, r6, r7, pc}
	bl FUN_0207da9c
	movs r5, r0
	bne _0207CE64
	mvn r4, #0x3f
	mov r0, r4
	mov r1, r6
	mov r2, #0
	bl Dse_SetError
	mov r0, r4
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_0207CE64:
	strb r4, [r5, #0x2f]
	ldr r0, _0207CF4C ; =0x04000208
	strb r4, [r5, #9]
	ldrh r3, [r0]
	ldr r1, _0207CF4C ; =0x04000208
	strh r4, [r0]
	ldrsb r2, [r5, #6]
	cmp r2, #0
	moveq r0, #1
	streqb r0, [r5, #6]
	ldrh r0, [r1]
	cmp r2, #0
	strh r3, [r1]
	bne _0207CF40
	mov r1, #0
	strb r1, [r5, #0x13]
	ldrsb r0, [r5, #0xa]
	cmp r0, #1
	bne _0207CEE4
	mov r0, r6
	bl FUN_0207d1c4
	mov r0, r6
	bl FUN_0207cf94
	cmp r0, #0
	ble _0207CEE4
	mov r7, #4
_0207CECC:
	mov r0, r7
	bl OS_Sleep
	mov r0, r6
	bl FUN_0207cf94
	cmp r0, #0
	bgt _0207CECC
_0207CEE4:
	ldrsb r0, [r5, #0x11]
	cmp r0, #1
	bne _0207CEF8
	mov r0, r5
	bl FUN_0207e80c
_0207CEF8:
	mov r1, #1
	strb r1, [r5, #5]
	strb r1, [r5, #0x10]
	strb r4, [r5, #0x12]
	ldrb r0, [r5, #0x1e]
	cmp r0, #2
	mov r0, r6
	streqb r1, [r5, #7]
	bl FUN_0207c990
	cmp r0, #0
	blt _0207CF40
	mov r4, #4
_0207CF28:
	mov r0, r4
	bl OS_Sleep
	mov r0, r6
	bl FUN_0207c990
	cmp r0, #0
	bge _0207CF28
_0207CF40:
	mov r0, #0
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_0207CF48: .word unk_020BBEC0
_0207CF4C: .word 0x04000208
	arm_func_end FUN_0207ce1c

	arm_func_start FUN_0207cf50
FUN_0207cf50: ; 0x0207CF50
	stmfd sp!, {r3, r4, r5, lr}
	mov r5, r0
	add r0, r5, #0xe4
	mov r4, r1
	bl FUN_0208578c
	cmp r0, #0
	ldrgt r1, _0207CF7C ; =FUN_0207d75c
	mvnle r0, #0
	movgt r0, r4
	strgt r1, [r5, #0x21c]
	ldmfd sp!, {r3, r4, r5, pc}
_0207CF7C: .word FUN_0207d75c
	arm_func_end FUN_0207cf50

	arm_func_start FUN_0207cf80
FUN_0207cf80: ; 0x0207CF80
	stmfd sp!, {r3, lr}
	add r0, r0, #0xe4
	bl FUN_020857cc
	mov r0, #0
	ldmfd sp!, {r3, pc}
	arm_func_end FUN_0207cf80

	arm_func_start FUN_0207cf94
FUN_0207cf94: ; 0x0207CF94
	stmfd sp!, {r3, lr}
	ldr r1, _0207CFE0 ; =0x020BBEC0
	ldrsb r1, [r1, #4]
	cmp r1, #0
	mvneq r0, #0x59
	ldmeqfd sp!, {r3, pc}
	bl FUN_0207da9c
	cmp r0, #0
	mvneq r0, #0x3f
	ldmeqfd sp!, {r3, pc}
	ldrsb r1, [r0, #0xa]
	ldrsb r0, [r0, #0xd]
	mov r2, #0
	cmp r1, #1
	orreq r2, r2, #1
	cmp r0, #1
	orreq r2, r2, #2
	mov r0, r2
	ldmfd sp!, {r3, pc}
_0207CFE0: .word unk_020BBEC0
	arm_func_end FUN_0207cf94

	arm_func_start FUN_0207cfe4
FUN_0207cfe4: ; 0x0207CFE4
	stmfd sp!, {r4, r5, r6, r7, r8, lr}
	ldr r3, _0207D170 ; =0x020BBEC0
	mov r8, r0
	ldrsb r3, [r3, #4]
	mov r7, r1
	mov r6, r2
	cmp r3, #0
	mov r4, #0
	mvneq r0, #0x59
	ldmeqfd sp!, {r4, r5, r6, r7, r8, pc}
	bl FUN_0207da9c
	movs r5, r0
	bne _0207D034
	mvn r4, #0x3f
	mov r0, r4
	mov r1, r8
	mov r2, #0
	bl Dse_SetError
	mov r0, r4
	ldmfd sp!, {r4, r5, r6, r7, r8, pc}
_0207D034:
	ldrsb r0, [r5, #0xa]
	cmp r0, #1
	ldreqsb r0, [r5, #0xb]
	cmpeq r0, #1
	bne _0207D080
	ldr r0, _0207D174 ; =0x04000208
	ldrh r6, [r0]
	strh r4, [r0]
	ldrsb r0, [r5, #0x12]
	cmp r0, #0
	streqb r4, [r5, #0x13]
	ldrh r1, [r7, #0xc]
	ldrh r2, [r7, #0xe]
	mov r0, r5
	bl FUN_0207d42c
	ldr r1, _0207D174 ; =0x04000208
	ldrh r0, [r1]
	strh r6, [r1]
	b _0207D168
_0207D080:
	str r4, [r5, #0x44]
	ldrb r0, [r7, #1]
	strb r0, [r5, #0x1c]
	strb r4, [r5, #0x13]
	ldrh r0, [r7, #0xc]
	strb r0, [r5, #0x2e]
	bl FUN_02074f80
	strb r0, [r5, #0x12]
	str r4, [r5, #0x30]
	strh r4, [r5, #0x3c]
	cmp r6, #1
	ldreqsb r0, [r5, #0xb]
	cmpeq r0, #1
	bne _0207D0C4
	mov r0, r8
	mov r1, r4
	bl FUN_0207d4ec
_0207D0C4:
	ldrsb r0, [r5, #0x12]
	cmp r0, #0
	bne _0207D168
	ldrsb r0, [r5, #8]
	cmp r0, #1
	bne _0207D14C
	ldrh r2, [r7, #0xe]
	mov r0, #0x3e8
	ldr r1, _0207D178 ; =0x020B9FD8
	mul r0, r2, r0
	ldrsh r1, [r1, #0x28]
	bl _s32_div_f
	ldrh r1, [r7, #0xc]
	mov r0, r0, lsl #0x10
	movs r6, r0, lsr #0x10
	mov r1, r1, lsl #0x10
	str r1, [r5, #0x38]
	streq r1, [r5, #0x30]
	beq _0207D12C
	ldr r0, [r5, #0x30]
	subs r0, r1, r0
	moveq r6, #0
	beq _0207D12C
	mov r1, r6
	bl _s32_div_f
	str r0, [r5, #0x34]
_0207D12C:
	mov r0, r5
	strh r6, [r5, #0x3c]
	bl FUN_0207e590
	mov r0, #1
	strb r0, [r5, #0xb]
	mov r0, #6
	strb r0, [r5, #0x2f]
	b _0207D15C
_0207D14C:
	ldrh r0, [r7, #0xc]
	strb r0, [r5, #0x2e]
	ldrh r0, [r7, #0xe]
	strh r0, [r5, #0x2c]
_0207D15C:
	mov r0, #1
	strb r0, [r5, #0xa]
	strb r4, [r5, #0xd]
_0207D168:
	mov r0, #0
	ldmfd sp!, {r4, r5, r6, r7, r8, pc}
_0207D170: .word unk_020BBEC0
_0207D174: .word 0x04000208
_0207D178: .word unk_020B9FD8
	arm_func_end FUN_0207cfe4

	arm_func_start FUN_0207d17c
FUN_0207d17c: ; 0x0207D17C
	stmfd sp!, {r3, r4, r5, lr}
	ldr r1, _0207D1C0 ; =0x020BBEC0
	mov r5, r0
	ldr r4, [r1, #0x1c8]
	cmp r4, #0
	beq _0207D1B8
_0207D194:
	ldrsb r0, [r4, #0xa]
	cmp r0, #1
	bne _0207D1AC
	ldr r0, [r4]
	mov r1, r5
	bl FUN_0207d1c4
_0207D1AC:
	ldr r4, [r4, #0x358]
	cmp r4, #0
	bne _0207D194
_0207D1B8:
	mov r0, #0
	ldmfd sp!, {r3, r4, r5, pc}
_0207D1C0: .word unk_020BBEC0
	arm_func_end FUN_0207d17c

	arm_func_start FUN_0207d1c4
FUN_0207d1c4: ; 0x0207D1C4
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	ldr r2, _0207D2BC ; =0x020BBEC0
	mov r6, r0
	ldrsb r2, [r2, #4]
	mov r7, r1
	mov r4, #0
	cmp r2, #0
	mvneq r0, #0x59
	ldmeqfd sp!, {r3, r4, r5, r6, r7, pc}
	bl FUN_0207da9c
	movs r5, r0
	bne _0207D210
	mvn r4, #0x3f
	mov r0, r4
	mov r1, r6
	mov r2, #0
	bl Dse_SetError
	mov r0, r4
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_0207D210:
	mov r6, r4
	strb r6, [r5, #0x2e]
	cmp r7, #0
	beq _0207D240
	mov r0, #0x3e8
	mul r0, r7, r0
	ldr r1, _0207D2C0 ; =0x020B9FD8
	ldrsh r1, [r1, #0x28]
	bl _u32_div_f
	mov r0, r0, lsl #0x10
	movs r6, r0, lsr #0x10
	moveq r6, #1
_0207D240:
	cmp r6, #0
	bne _0207D280
	strb r4, [r5, #0x13]
	strb r4, [r5, #0xa]
	mov r0, r5
	strb r4, [r5, #0xd]
	bl FUN_0207e80c
	str r4, [r5, #0x30]
	strh r4, [r5, #0x3c]
	ldr r0, [r5]
	ldr r3, [r5, #0x214]
	ldr r12, [r5, #0x210]
	mov r2, r4
	mov r1, #9
	blx r12
	b _0207D2B4
_0207D280:
	mov r0, #1
	strb r0, [r5, #0x13]
	str r4, [r5, #0x38]
	streq r4, [r5, #0x30]
	beq _0207D2B0
	ldr r0, [r5, #0x30]
	rsbs r0, r0, #0
	moveq r6, r4
	beq _0207D2B0
	mov r1, r6
	bl _s32_div_f
	str r0, [r5, #0x34]
_0207D2B0:
	strh r6, [r5, #0x3c]
_0207D2B4:
	mov r0, #0
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_0207D2BC: .word unk_020BBEC0
_0207D2C0: .word unk_020B9FD8
	arm_func_end FUN_0207d1c4

	arm_func_start FUN_0207d2c4
FUN_0207d2c4: ; 0x0207D2C4
	stmfd sp!, {r4, r5, r6, lr}
	mov r3, #0x3e8
	mov r5, r0
	mul r0, r2, r3
	ldr r2, _0207D3E0 ; =0x020B9FD8
	mov r6, r1
	ldrsh r1, [r2, #0x28]
	mov r4, #0
	bl _s32_div_f
	ldrsb r1, [r5, #0x12]
	cmp r1, #1
	moveq r0, r4
	ldmeqfd sp!, {r4, r5, r6, pc}
	cmp r6, #1
	bne _0207D378
	cmp r0, #0
	bne _0207D338
	ldrsb r0, [r5, #8]
	cmp r0, #1
	bne _0207D3D8
	mov r0, r5
	bl FUN_0207e80c
	ldr r0, [r5]
	ldr r3, [r5, #0x214]
	ldr r4, [r5, #0x210]
	mov r1, #9
	mov r2, #0
	blx r4
	b _0207D3D8
_0207D338:
	mov r0, r0, lsl #0x10
	mov r1, #1
	movs r6, r0, lsr #0x10
	strb r1, [r5, #0x13]
	str r4, [r5, #0x38]
	streq r4, [r5, #0x30]
	beq _0207D370
	ldr r0, [r5, #0x30]
	rsbs r0, r0, #0
	moveq r6, r4
	beq _0207D370
	mov r1, r6
	bl _s32_div_f
	str r0, [r5, #0x34]
_0207D370:
	strh r6, [r5, #0x3c]
	b _0207D3D8
_0207D378:
	ldrsb r1, [r5, #0x2e]
	mov r0, r0, lsl #0x10
	movs r6, r0, lsr #0x10
	mov r1, r1, lsl #0x10
	str r1, [r5, #0x38]
	streq r1, [r5, #0x30]
	beq _0207D3B0
	ldr r0, [r5, #0x30]
	subs r0, r1, r0
	moveq r6, r4
	beq _0207D3B0
	mov r1, r6
	bl _s32_div_f
	str r0, [r5, #0x34]
_0207D3B0:
	ldrsb r0, [r5, #8]
	mov r1, #1
	strh r6, [r5, #0x3c]
	strb r4, [r5, #0x13]
	strb r1, [r5, #0xa]
	cmp r0, #1
	bne _0207D3D8
	mov r0, r5
	strb r1, [r5, #0x14]
	bl FUN_0207e590
_0207D3D8:
	mov r0, #0
	ldmfd sp!, {r4, r5, r6, pc}
_0207D3E0: .word unk_020B9FD8
	arm_func_end FUN_0207d2c4

	arm_func_start FUN_0207d3e4
FUN_0207d3e4: ; 0x0207D3E4
	stmfd sp!, {r3, r4, r5, lr}
	mov r5, r0
	mov r4, r1
	bl FUN_0207da9c
	cmp r0, #0
	bne _0207D418
	mvn r4, #0x3f
	mov r0, r4
	mov r1, r5
	mov r2, #0
	bl Dse_SetError
	mov r0, r4
	ldmfd sp!, {r3, r4, r5, pc}
_0207D418:
	ldrh r1, [r4, #0xc]
	ldrh r2, [r4, #0xe]
	bl FUN_0207d42c
	mov r0, #0
	ldmfd sp!, {r3, r4, r5, pc}
	arm_func_end FUN_0207d3e4

	arm_func_start FUN_0207d42c
FUN_0207d42c: ; 0x0207D42C
	stmfd sp!, {r4, r5, r6, lr}
	mov r4, r0
	ldrsb r0, [r4, #0x12]
	mov r6, r1
	strb r6, [r4, #0x2e]
	cmp r0, #0
	ldmnefd sp!, {r4, r5, r6, pc}
	cmp r2, #0
	moveq r5, #0
	beq _0207D474
	mov r0, #0x3e8
	mul r0, r2, r0
	ldr r1, _0207D4BC ; =0x020B9FD8
	ldrsh r1, [r1, #0x28]
	bl _u32_div_f
	mov r0, r0, lsl #0x10
	movs r5, r0, lsr #0x10
	moveq r5, #1
_0207D474:
	mov r1, r6, lsl #0x10
	cmp r5, #0
	str r1, [r4, #0x38]
	streq r1, [r4, #0x30]
	beq _0207D4A4
	ldr r0, [r4, #0x30]
	subs r0, r1, r0
	moveq r5, #0
	beq _0207D4A4
	mov r1, r5
	bl _s32_div_f
	str r0, [r4, #0x34]
_0207D4A4:
	strh r5, [r4, #0x3c]
	cmp r5, #0
	ldmnefd sp!, {r4, r5, r6, pc}
	mov r0, r4
	bl FUN_0207d9f4
	ldmfd sp!, {r4, r5, r6, pc}
_0207D4BC: .word unk_020B9FD8
	arm_func_end FUN_0207d42c

	arm_func_start FUN_0207d4c0
FUN_0207d4c0: ; 0x0207D4C0
	stmfd sp!, {r4, lr}
	mov r4, r0
	bl FUN_0207d690
	movs r1, r0
	bmi _0207D4E4
	mov r0, r4
	bic r1, r1, #0xff
	bl FUN_0207d4ec
	mov r1, r0
_0207D4E4:
	mov r0, r1
	ldmfd sp!, {r4, pc}
	arm_func_end FUN_0207d4c0

	arm_func_start FUN_0207d4ec
FUN_0207d4ec: ; 0x0207D4EC
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	mov r7, r0
	mov r6, r1
	mov r4, #0
	bl FUN_0207da9c
	movs r5, r0
	bne _0207D524
	mvn r4, #0x3f
	mov r0, r4
	mov r1, r7
	mov r2, #0
	bl Dse_SetError
	mov r0, r4
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_0207D524:
	tst r6, #0xff
	beq _0207D540
	mov r1, r6
	mvn r0, #0x17
	mov r2, r4
	bl Dse_SetError2
	bic r6, r6, #0xff
_0207D540:
	cmp r6, #0
	beq _0207D570
	ldrsb r0, [r5, #0x27]
	cmp r0, #0
	bne _0207D570
	mvn r4, #0xb5
	mov r0, r4
	mov r1, r7
	mov r2, #0
	bl Dse_SetError
	mov r0, r4
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_0207D570:
	mov r1, #1
	add r0, r5, #0xe4
	strb r1, [r5, #0x14]
	bl FUN_020857f4
	cmp r6, #0
	movlt r6, #0
	blt _0207D5A0
	ldr r1, [r5, #0xa4]
	ldr r0, [r5, #0x4c]
	sub r0, r1, r0
	cmp r6, r0
	movgt r6, r0
_0207D5A0:
	ldr r3, _0207D68C ; =0x04000208
	mov r0, #0
	ldrh r1, [r3]
	mov r2, #1
	strh r0, [r3]
	ldr r3, [r5, #0x4c]
	add r3, r6, r3
	str r3, [r5, #0x50]
	str r3, [r5, #0x54]
	strb r0, [r5, #0xe]
	strb r0, [r5, #0xf]
	strb r2, [r5, #9]
	ldrb r2, [r5, #0x21]
	and r2, r2, #0xf0
	cmp r2, #0x70
	bne _0207D63C
	ldrsb r2, [r5, #0x27]
	cmp r2, #0
	mov r2, #0x2c
	bne _0207D620
_0207D5F0:
	mla r12, r0, r2, r5
	add r3, r5, r0, lsl #4
	add r3, r3, #0x200
	add r0, r0, #1
	ldrh r6, [r3, #0x94]
	ldrh r4, [r3, #0x96]
	add r3, r12, #0x200
	cmp r0, #2
	strh r6, [r3, #0x3c]
	strh r4, [r3, #0x3e]
	blt _0207D5F0
	b _0207D678
_0207D620:
	mov r4, #1
_0207D624:
	mla r3, r0, r2, r5
	add r0, r0, #1
	strb r4, [r3, #0x23f]
	cmp r0, #2
	blt _0207D624
	b _0207D678
_0207D63C:
	ldrb r2, [r5, #0x22]
	cmp r2, #0
	ble _0207D678
	mov r2, #0x2c
_0207D64C:
	mla r12, r0, r2, r5
	mov r6, r4
_0207D654:
	add r3, r12, r6, lsl #2
	add r6, r6, #1
	str r4, [r3, #0x23c]
	cmp r6, #4
	blt _0207D654
	ldrb r3, [r5, #0x22]
	add r0, r0, #1
	cmp r0, r3
	blt _0207D64C
_0207D678:
	ldr r3, _0207D68C ; =0x04000208
	mov r0, #0
	ldrh r2, [r3]
	strh r1, [r3]
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_0207D68C: .word 0x04000208
	arm_func_end FUN_0207d4ec

	arm_func_start FUN_0207d690
FUN_0207d690: ; 0x0207D690
	stmfd sp!, {r4, r5, r6, lr}
	mov r6, r0
	mov r5, r1
	bl FUN_0207da9c
	movs r4, r0
	bne _0207D6C4
	mvn r4, #0x3f
	mov r0, r4
	mov r1, r6
	mov r2, #0
	bl Dse_SetError
	mov r0, r4
	ldmfd sp!, {r4, r5, r6, pc}
_0207D6C4:
	ldrb r0, [r4, #0x21]
	and r0, r0, #0xf
	cmp r0, #2
	beq _0207D6E0
	cmp r0, #4
	beq _0207D6E8
	b _0207D6F0
_0207D6E0:
	ldr r0, _0207D728 ; =0x00003FEC
	b _0207D6F4
_0207D6E8:
	ldr r0, _0207D72C ; =0x00007FD8
	b _0207D6F4
_0207D6F0:
	ldr r0, _0207D730 ; =0x0000BB80
_0207D6F4:
	smull r0, r1, r5, r0
	mov r2, #0x3e8
	mov r3, #0
	bl _ll_sdiv
	ldrh r2, [r4, #0x9e]
	ldrh r1, [r4, #0xa0]
	mul r2, r0, r2
	mov r0, r2
	bl _s32_div_f
	ldrb r1, [r4, #0x22]
	mul r1, r0, r1
	bic r0, r1, #0x8000000f
	ldmfd sp!, {r4, r5, r6, pc}
_0207D728: .word 0x00003FEC
_0207D72C: .word 0x00007FD8
_0207D730: .word 0x0000BB80
	arm_func_end FUN_0207d690

	arm_func_start FUN_0207d734
FUN_0207d734: ; 0x0207D734
	mov r0, #0
	bx lr
	arm_func_end FUN_0207d734

	arm_func_start FUN_0207d73c
FUN_0207d73c: ; 0x0207D73C
	mov r0, #0
	bx lr
	arm_func_end FUN_0207d73c

	arm_func_start FUN_0207d744
FUN_0207d744: ; 0x0207D744
	stmfd sp!, {r4, lr}
	mov r4, #0
	mov r0, r4
	bl MIi_CpuClearFast
	mov r0, r4
	ldmfd sp!, {r4, pc}
	arm_func_end FUN_0207d744

	arm_func_start FUN_0207d75c
FUN_0207d75c: ; 0x0207D75C
	stmfd sp!, {r3, lr}
	ldrsb r3, [r0, #8]
	cmp r3, #0
	moveq r0, #0
	ldmeqfd sp!, {r3, pc}
	add r0, r0, #0xe4
	mov r3, #0
	bl FUN_020858bc
	ldmfd sp!, {r3, pc}
	arm_func_end FUN_0207d75c

	arm_func_start FUN_0207d780
FUN_0207d780: ; 0x0207D780
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	ldr r0, _0207D830 ; =0x020BBEC0
	ldr r4, [r0, #0x1c8]
	cmp r4, #0
	ldmeqfd sp!, {r3, r4, r5, r6, r7, pc}
	mov r6, #0
	mov r5, #9
_0207D79C:
	ldrsb r0, [r4, #0xa]
	cmp r0, #0
	ldrnesb r0, [r4, #8]
	cmpne r0, #0
	ldrneh r0, [r4, #0x3c]
	cmpne r0, #0
	beq _0207D820
	sub r0, r0, #1
	strh r0, [r4, #0x3c]
	ldrh r0, [r4, #0x3c]
	cmp r0, #0
	ldrne r1, [r4, #0x30]
	ldrne r0, [r4, #0x34]
	addne r0, r1, r0
	ldreq r0, [r4, #0x38]
	str r0, [r4, #0x30]
	ldrh r7, [r4, #0x3c]
	mov r0, r4
	bl FUN_0207d9f4
	cmp r7, #0
	ldreqsb r0, [r4, #0x13]
	cmpeq r0, #1
	bne _0207D820
	strb r6, [r4, #0xa]
	mov r0, r4
	strb r6, [r4, #0x13]
	bl FUN_0207e80c
	ldr r0, [r4]
	ldr r3, [r4, #0x214]
	ldr r12, [r4, #0x210]
	mov r1, r5
	mov r2, r6
	blx r12
_0207D820:
	ldr r4, [r4, #0x358]
	cmp r4, #0
	bne _0207D79C
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_0207D830: .word unk_020BBEC0
	arm_func_end FUN_0207d780

	arm_func_start FUN_0207d834
FUN_0207d834: ; 0x0207D834
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, lr}
	sub sp, sp, #8
	mov r10, r0
	ldrb r0, [r10, #0x23]
	mov r8, #0
	mov r2, #2
	cmp r0, #1
	ldreq r0, _0207D908 ; =0x020BBEC0
	mov r1, #0x10
	ldreqsb r0, [r0, #9]
	mov r9, r8
	cmpeq r0, #1
	moveq r0, #2
	streqb r0, [r10, #0x23]
	ldr r0, _0207D908 ; =0x020BBEC0
	strb r8, [sp]
	ldrb r4, [r0, #7]
	ldrb r3, [r0, #8]
	ldr r0, _0207D90C ; =0x04000208
	strb r4, [sp, #4]
	strb r3, [sp, #5]
	strb r2, [sp, #2]
	strb r1, [sp, #3]
	ldrh r11, [r0]
	strh r8, [r0]
	ldrb r0, [r10, #0x23]
	cmp r0, #0
	ble _0207D8F4
	mov r5, r8
	mov r4, r1
	add r7, sp, #0
_0207D8B0:
	mov r0, r7
	bl FUN_0207b40c
	movs r6, r0
	beq _0207D8E4
	bl DseVoice_Deallocate
	strh r5, [r6, #6]
	add r0, r10, r8, lsl #2
	strb r4, [r6, #0x14e]
	str r6, [r0, #0x1f0]
	ldrb r0, [r10, #0x23]
	add r8, r8, #1
	cmp r8, r0
	bge _0207D8F4
_0207D8E4:
	ldrb r0, [r10, #0x23]
	add r9, r9, #1
	cmp r9, r0
	blt _0207D8B0
_0207D8F4:
	ldr r1, _0207D90C ; =0x04000208
	ldrh r0, [r1]
	strh r11, [r1]
	add sp, sp, #8
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_0207D908: .word unk_020BBEC0
_0207D90C: .word 0x04000208
	arm_func_end FUN_0207d834

	arm_func_start FUN_0207d910
FUN_0207d910: ; 0x0207D910
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, lr}
	ldrb r8, [r0, #0x22]
	ldr r5, [r0, #0x1c0]
	str r0, [sp]
	add r4, r0, #0x1c0
	mov r0, r5
	mov r1, r8
	bl _s32_div_f
	mov r6, r0
	ldr r0, [sp]
	add r1, r6, r6, lsr #31
	ldr r0, [r0, #0x204]
	mov r10, r1, asr #1
	add r7, r0, r1, asr #1
	add r0, r10, r10, lsr #31
	mov r0, r0, asr #1
	str r0, [r4, #0xc]
	mul r11, r7, r8
	ldr r1, _0207D9F0 ; =0x6F697473
	stmib r4, {r6, r10}
	mov r9, #0
	add r0, r5, r11
	str r9, [r4, #0x10]
	bl FUN_0207dbf4
	movs r1, r0
	str r1, [r4, #0x14]
	bne _0207D998
	sub r4, r9, #0x81
	mov r0, r4
	mov r1, r9
	mov r2, r9
	bl Dse_SetError
	mov r0, r4
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_0207D998:
	mov r0, r9
	add r2, r5, r11
	bl MIi_CpuClearFast
	ldr r3, [r4, #0x14]
	cmp r8, #0
	add r5, r3, r5
	ble _0207D9DC
_0207D9B4:
	mla r1, r6, r9, r3
	add r2, r4, r9, lsl #2
	mla r0, r7, r9, r5
	add r9, r9, #1
	str r1, [r2, #0x18]
	add r1, r1, r10
	str r1, [r2, #0x20]
	str r0, [r2, #0x28]
	cmp r9, r8
	blt _0207D9B4
_0207D9DC:
	ldr r0, [sp]
	mov r1, #1
	strb r1, [r0, #0x14]
	mov r0, #0
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_0207D9F0: .word 0x6F697473
	arm_func_end FUN_0207d910

	arm_func_start FUN_0207d9f4
FUN_0207d9f4: ; 0x0207D9F4
	stmfd sp!, {r4, r5, r6, lr}
	ldr r1, [r0, #0x30]
	ldrb r2, [r0, #0xc4]
	mov r1, r1, asr #0x10
	ldr r4, _0207DA90 ; =0x04000208
	mul r1, r2, r1
	ldrb r5, [r0, #0x26]
	ldr r3, _0207DA94 ; =0x82061029
	ldrh r2, [r4]
	mul r12, r5, r1
	smull r1, lr, r3, r12
	mov r1, #0
	strh r1, [r4]
	ldrb r4, [r0, #0x23]
	add lr, r12, lr
	mov r3, r12, lsr #0x1f
	add lr, r3, lr, asr #13
	mul r5, lr, lr
	ldr lr, _0207DA98 ; =0x81020409
	mov r3, r5, lsr #0x1f
	smull r12, r6, lr, r5
	add r6, r5, r6
	cmp r4, #0
	add r6, r3, r6, asr #6
	ble _0207DA80
_0207DA58:
	add r3, r0, r1, lsl #2
	ldr r12, [r3, #0x1f0]
	add r1, r1, #1
	str r6, [r12, #0x140]
	ldrh r3, [r12, #6]
	orr r3, r3, #0x20
	strh r3, [r12, #6]
	ldrb r3, [r0, #0x23]
	cmp r1, r3
	blt _0207DA58
_0207DA80:
	ldr r1, _0207DA90 ; =0x04000208
	ldrh r0, [r1]
	strh r2, [r1]
	ldmfd sp!, {r4, r5, r6, pc}
_0207DA90: .word 0x04000208
_0207DA94: .word 0x82061029
_0207DA98: .word 0x81020409
	arm_func_end FUN_0207d9f4

	arm_func_start FUN_0207da9c
FUN_0207da9c: ; 0x0207DA9C
	cmp r0, #0
	moveq r0, #0
	bxeq lr
	ldr r3, _0207DAF4 ; =0x04000208
	mov r2, #0
	ldrh r12, [r3]
	ldr r1, _0207DAF8 ; =0x020BBEC0
	strh r2, [r3]
	ldr r3, [r1, #0x1c8]
	cmp r3, #0
	beq _0207DAE0
_0207DAC8:
	ldr r1, [r3]
	cmp r1, r0
	beq _0207DAE0
	ldr r3, [r3, #0x358]
	cmp r3, #0
	bne _0207DAC8
_0207DAE0:
	ldr r2, _0207DAF4 ; =0x04000208
	mov r0, r3
	ldrh r1, [r2]
	strh r12, [r2]
	bx lr
_0207DAF4: .word 0x04000208
_0207DAF8: .word unk_020BBEC0
	arm_func_end FUN_0207da9c

	arm_func_start FUN_0207dafc
FUN_0207dafc: ; 0x0207DAFC
	mov r0, #0
	bx lr
	arm_func_end FUN_0207dafc

	arm_func_start FUN_0207db04
FUN_0207db04: ; 0x0207DB04
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	ldr r0, _0207DBE4 ; =0x020BBEC0
	ldr r0, [r0, #0x1c8]
	cmp r0, #0
	ldmeqfd sp!, {r3, r4, r5, r6, r7, pc}
_0207DB18:
	ldrsb r1, [r0, #0x11]
	cmp r1, #1
	bne _0207DBD4
	ldr r1, [r0, #0x30]
	ldrb r2, [r0, #0xc4]
	mov r1, r1, asr #0x10
	ldrb r4, [r0, #0x22]
	mul r1, r2, r1
	ldrb r5, [r0, #0x26]
	ldr r2, _0207DBE8 ; =0x82061029
	ldr r3, _0207DBEC ; =0x81020409
	mul r12, r5, r1
	smull r1, lr, r2, r12
	add lr, r12, lr
	mov r1, r12, lsr #0x1f
	add lr, r1, lr, asr #13
	mul r5, lr, lr
	smull r2, r1, r3, r5
	add r1, r5, r1
	mov r2, r5, lsr #0x1f
	cmp r4, #0
	add r1, r2, r1, asr #6
	mov r6, #0
	ble _0207DBD4
	ldr r2, _0207DBF0 ; =0x020B9FD8
	mov lr, #0x7f
	mov r4, r6
	mov r5, #0x40
	mov r12, #0x60
_0207DB8C:
	add r3, r0, r6, lsl #2
	ldr r7, [r3, #0x1f0]
	str r1, [r7, #0x140]
	ldrb r3, [r0, #0x22]
	cmp r3, #1
	ldrneb r3, [r2, #0x41]
	cmpne r3, #1
	streq r5, [r7, #0x144]
	beq _0207DBC0
	tst r6, #1
	moveq r3, r4
	movne r3, lr
	str r3, [r7, #0x144]
_0207DBC0:
	strh r12, [r7, #6]
	ldrb r3, [r0, #0x22]
	add r6, r6, #1
	cmp r6, r3
	blt _0207DB8C
_0207DBD4:
	ldr r0, [r0, #0x358]
	cmp r0, #0
	bne _0207DB18
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_0207DBE4: .word unk_020BBEC0
_0207DBE8: .word 0x82061029
_0207DBEC: .word 0x81020409
_0207DBF0: .word unk_020B9FD8
	arm_func_end FUN_0207db04

	arm_func_start FUN_0207dbf4
FUN_0207dbf4: ; 0x0207DBF4
	stmfd sp!, {r3, r4, r5, lr}
	mov r5, r0
	add r0, r5, #0x1f
	ldr r2, _0207DC60 ; =0x020BBEC0
	bic r3, r0, #0x1f
	ldr r0, [r2, #0x1c4]
	mov r4, r1
	ldr r2, [r2, #0x1bc]
	add r1, r3, #0x20
	blx r2
	cmp r0, #0
	moveq r0, #0
	ldmeqfd sp!, {r3, r4, r5, pc}
	ldr r2, _0207DC64 ; =0x6D727473
	ldr r1, _0207DC68 ; =0x00007074
	stmia r0, {r2, r4, r5}
	strh r1, [r0, #0xc]
	mov r3, #0
	strh r3, [r0, #0xe]
	add r0, r0, #0x10
	str r2, [r0, r5]
	add r2, r0, r5
	ldr r1, _0207DC6C ; =0x00007462
	stmib r2, {r4, r5}
	strh r1, [r2, #0xc]
	strh r3, [r2, #0xe]
	ldmfd sp!, {r3, r4, r5, pc}
_0207DC60: .word unk_020BBEC0
_0207DC64: .word 0x6D727473
_0207DC68: .word 0x00007074
_0207DC6C: .word 0x00007462
	arm_func_end FUN_0207dbf4

	arm_func_start FUN_0207dc70
FUN_0207dc70: ; 0x0207DC70
	stmfd sp!, {r4, lr}
	ldr r1, _0207DC94 ; =0x020BBEC0
	mov r4, r0
	ldr r0, [r1, #0x1c4]
	ldr r2, [r1, #0x1c0]
	sub r1, r4, #0x10
	blx r2
	mov r0, r4
	ldmfd sp!, {r4, pc}
_0207DC94: .word unk_020BBEC0
	arm_func_end FUN_0207dc70

	arm_func_start FUN_0207dc98
FUN_0207dc98: ; 0x0207DC98
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, lr}
	sub sp, sp, #0x100
	str r2, [sp]
	sub r2, r2, #1
	mov r4, r0
	mov r0, r1
	ldr r1, [sp, #0x128]
	add r2, r2, r2, lsr #31
	mov r6, r3
	mov r9, r2, asr #1
	str r1, [sp, #0x128]
	mov r8, #0
	bl _dflt
	mov r5, r0
	mov r7, r1
	mov r0, r4
	bl _dflt
	mov r2, r0
	mov r3, r1
	mov r0, r5
	mov r1, r7
	bl _ddiv
	mov r2, r0
	mov r11, #0x40000000
	mov r3, r1
	mov r0, r8
	mov r1, r11
	bl _dmul
	mov r3, r1
	mov r2, r0
	ldr r1, _0207DED0 ; =0x400921FB
	mov r0, #0x60000000
	bl _dmul
	mov r10, r0
	mov r0, r4
	mov r7, r1
	mov r5, r10
	mov r4, r7
	bl _dflt
	mov r2, r0
	mov r3, r1
	sub r1, r11, #0x100000
	mov r0, r8
	bl _ddiv
	cmp r9, #0
	ble _0207DE40
	ldr r0, [sp]
	add r11, sp, #8
	sub r0, r0, #1
	str r0, [sp, #4]
_0207DD60:
	cmp r6, #0
	beq _0207DD74
	cmp r6, #1
	beq _0207DD9C
	b _0207DE14
_0207DD74:
	sub r10, r8, r9
	mov r0, r10
	bl _dflt
	mov r2, r0
	mov r3, r1
	mov r0, r5
	mov r1, r4
	bl _dmul
	bl sin
	b _0207DDD4
_0207DD9C:
	sub r10, r8, r9
	mov r0, r10
	bl _dflt
	mov r2, r0
	mov r3, r1
	mov r0, r5
	mov r1, r4
	bl _dmul
	bl sin
	mov r2, r0
	mov r0, #0
	mov r3, r1
	mov r1, r0
	bl _dsub
_0207DDD4:
	mov r7, r0
	mov r0, r10
	mov r10, r1
	bl _dflt
	mov r3, r1
	mov r2, r0
	ldr r1, _0207DED0 ; =0x400921FB
	mov r0, #0x60000000
	bl _dmul
	mov r2, r0
	mov r3, r1
	mov r0, r7
	mov r1, r10
	bl _ddiv
	mov r10, r0
	mov r7, r1
_0207DE14:
	str r10, [r11, r8, lsl #3]
	add r0, r11, r8, lsl #3
	str r7, [r0, #4]
	ldr r0, [sp, #4]
	sub r0, r0, r8
	str r10, [r11, r0, lsl #3]
	add r0, r11, r0, lsl #3
	add r8, r8, #1
	str r7, [r0, #4]
	cmp r8, r9
	blt _0207DD60
_0207DE40:
	ldr r3, _0207DED0 ; =0x400921FB
	mov r0, r5
	mov r1, r4
	mov r2, #0x60000000
	bl _ddiv
	ldr r2, [sp]
	add r6, sp, #8
	cmp r2, #0
	str r0, [r6, r9, lsl #3]
	add r0, r6, r9, lsl #3
	mov r7, #0
	addle sp, sp, #0x100
	str r1, [r0, #4]
	ldmlefd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
	ldr r4, _0207DED4 ; =0x40E00000
	mov r5, r7
	sub r8, r4, #0x1000000
_0207DE84:
	add r0, r6, r7, lsl #3
	ldmia r0, {r2, r3}
	mov r0, r5
	mov r1, r4
	bl _dmul
	mov r2, r0
	mov r3, r1
	mov r0, r5
	mov r1, r8
	bl _dadd
	bl _dfix
	ldr r1, [sp, #0x128]
	str r0, [r1, r7, lsl #2]
	ldr r0, [sp]
	add r7, r7, #1
	cmp r7, r0
	blt _0207DE84
	add sp, sp, #0x100
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_0207DED0: .word 0x400921FB
_0207DED4: .word 0x40E00000
	arm_func_end FUN_0207dc98

	arm_func_start FUN_0207ded8
FUN_0207ded8: ; 0x0207DED8
	stmfd sp!, {r3, lr}
	ldr r3, _0207DF0C ; =0x020BBEC0
	cmp r1, #0
	str r1, [r3, #0x274]
	mov lr, #0
	ldmlefd sp!, {r3, pc}
_0207DEF0:
	ldr r12, [r0, lr, lsl #2]
	add r2, r3, lr, lsl #2
	add lr, lr, #1
	str r12, [r2, #0x1f8]
	cmp lr, r1
	blt _0207DEF0
	ldmfd sp!, {r3, pc}
_0207DF0C: .word unk_020BBEC0
	arm_func_end FUN_0207ded8

	arm_func_start FUN_0207df10
FUN_0207df10: ; 0x0207DF10
	stmfd sp!, {r3, lr}
	ldr r0, _0207DF38 ; =0x020BBEC0
	ldrsb r1, [r0, #0x26]
	cmp r1, #1
	ldrnesb r0, [r0, #0xf1]
	cmpne r0, #0
	ldmeqfd sp!, {r3, pc}
	ldr r0, _0207DF3C ; =0x020BBEE8
	bl OS_WakeupThreadDirect
	ldmfd sp!, {r3, pc}
_0207DF38: .word unk_020BBEC0
_0207DF3C: .word unk_020BBEE8
	arm_func_end FUN_0207df10

	arm_func_start FUN_0207df40
FUN_0207df40: ; 0x0207DF40
	stmfd sp!, {r4, r5, r6, r7, r8, lr}
	sub sp, sp, #8
	ldr r7, _0207E028 ; =0x64737473
	mov r5, #0x1000
	mov r8, #0x10
	mov r0, r5
	mov r1, r8
	mov r2, r7
	bl DseMem_AllocateLastFit
	ldr r6, _0207E02C ; =0x020BBEC0
	cmp r0, #0
	str r0, [r6, #0xe8]
	addeq sp, sp, #8
	subeq r0, r8, #0x90
	ldmeqfd sp!, {r4, r5, r6, r7, r8, pc}
	mov r4, #0
	strb r4, [r6, #0x25]
	strb r4, [r6, #0x26]
	mov r0, r5
	mov r1, r8
	sub r2, r7, #0xf2000000
	strb r4, [r6, #0x27]
	bl DseMem_AllocateLastFit
	cmp r0, #0
	str r0, [r6, #0x1b4]
	addeq sp, sp, #8
	subeq r0, r4, #0x80
	ldmeqfd sp!, {r4, r5, r6, r7, r8, pc}
	strb r4, [r6, #0xf1]
	strb r4, [r6, #0xf2]
	strb r4, [r6, #0xf3]
	str r5, [sp]
	ldrb r0, [r6, #0x24]
	ldr r7, _0207E030 ; =0x020BBEE8
	ldr r1, _0207E034 ; =FUN_0207e0b8
	str r0, [sp, #4]
	ldr r3, [r6, #0xe8]
	mov r0, r7
	mov r2, r4
	add r3, r3, #0x1000
	bl OS_CreateThread
	mov r0, r7
	bl OS_WakeupThreadDirect
	str r5, [sp]
	ldrb r0, [r6, #0xf0]
	ldr r5, _0207E038 ; =0x020BBFB4
	ldr r1, _0207E03C ; =FUN_0207e23c
	str r0, [sp, #4]
	ldr r3, [r6, #0x1b4]
	mov r0, r5
	mov r2, r4
	add r3, r3, #0x1000
	bl OS_CreateThread
	mov r0, r5
	bl OS_WakeupThreadDirect
	mov r0, r4
	add sp, sp, #8
	ldmfd sp!, {r4, r5, r6, r7, r8, pc}
_0207E028: .word 0x64737473
_0207E02C: .word unk_020BBEC0
_0207E030: .word unk_020BBEE8
_0207E034: .word FUN_0207e0b8
_0207E038: .word unk_020BBFB4
_0207E03C: .word FUN_0207e23c
	arm_func_end FUN_0207df40

	arm_func_start FUN_0207e040
FUN_0207e040: ; 0x0207E040
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	ldr r1, _0207E0A8 ; =0x020B9FD8
	ldr r5, _0207E0AC ; =0x020BBEE8
	ldrb r0, [r1, #0x744]
	ldr r4, _0207E0B0 ; =0x020BBEC0
	mov r7, #0
	and r0, r0, #0xf9
	strb r0, [r1, #0x744]
	ldrb r2, [r1, #0x745]
	mov r0, r5
	strb r7, [r4, #0x25]
	orr r2, r2, #6
	mov r6, #1
	strb r2, [r1, #0x745]
	strb r6, [r4, #0x26]
	bl OS_WakeupThreadDirect
	mov r0, r5
	bl OS_JoinThread
	ldr r5, _0207E0B4 ; =0x020BBFB4
	strb r7, [r4, #0xf1]
	mov r0, r5
	strb r6, [r4, #0xf2]
	bl OS_WakeupThreadDirect
	mov r0, r5
	bl OS_JoinThread
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_0207E0A8: .word unk_020B9FD8
_0207E0AC: .word unk_020BBEE8
_0207E0B0: .word unk_020BBEC0
_0207E0B4: .word unk_020BBFB4
	arm_func_end FUN_0207e040

	arm_func_start FUN_0207e0b8
FUN_0207e0b8: ; 0x0207E0B8
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, lr}
	ldr r4, _0207E238 ; =0x020BBEC0
	add r0, r4, #0x100
	ldrsb r0, [r0, #0xe0]
	cmp r0, #1
	bne _0207E0D8
	bl OS_GetTick
	str r0, [r4, #0x1e4]
_0207E0D8:
	mov r0, #0
	str r0, [r4, #0x1e8]
	mov r0, #1
	strb r0, [r4, #0x25]
_0207E0E8:
	mov r5, #0
	mov r1, #1
	mov r0, r5
	strb r1, [r4, #0x27]
	bl OS_SleepThread
	strb r5, [r4, #0x27]
	add r0, r4, #0x100
	ldrsb r0, [r0, #0xe0]
	cmp r0, #1
	bne _0207E118
	bl OS_GetTick
	mov r11, r0
_0207E118:
	ldrsb r0, [r4, #0x26]
	cmp r0, #1
	ldmeqfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
	ldr r0, [r4, #0xec]
	add r0, r0, #1
	str r0, [r4, #0xec]
	ldr r8, [r4, #0x1c8]
	cmp r8, #0
	beq _0207E1FC
	mov r7, #0
	mov r5, r7
_0207E144:
	ldr r0, [r8]
	cmp r0, #0
	ble _0207E1F0
	ldrsb r0, [r8, #0x11]
	cmp r0, #1
	bne _0207E1F0
	ldrb r1, [r8, #0x1fc]
	mov r0, r8
	strb r1, [r8, #0x1fd]
	eor r1, r1, #1
	strb r1, [r8, #0x1fc]
	ldr r1, [r8, #0x218]
	blx r1
	ldrsb r0, [r8, #0x15]
	ldrb r1, [r8, #0x1fd]
	add r2, r8, #0x1d8
	cmp r0, #1
	add r10, r2, r1, lsl #3
	bne _0207E1C4
	ldrb r0, [r8, #0x22]
	mov r9, r7
	cmp r0, #0
	ble _0207E1C4
	add r6, r8, #0x234
_0207E1A4:
	ldr r1, [r10, r9, lsl #2]
	ldr r2, [r8, #0x1c8]
	add r0, r6, r9, lsl #2
	bl FUN_0207f55c
	ldrb r0, [r8, #0x22]
	add r9, r9, #1
	cmp r9, r0
	blt _0207E1A4
_0207E1C4:
	ldrb r0, [r8, #0x22]
	mov r6, r5
	cmp r0, #0
	ble _0207E1F0
_0207E1D4:
	ldr r0, [r10, r6, lsl #2]
	ldr r1, [r8, #0x1c8]
	bl DC_FlushRange
	ldrb r0, [r8, #0x22]
	add r6, r6, #1
	cmp r6, r0
	blt _0207E1D4
_0207E1F0:
	ldr r8, [r8, #0x358]
	cmp r8, #0
	bne _0207E144
_0207E1FC:
	ldr r5, _0207E238 ; =0x020BBEC0
	add r0, r5, #0x100
	ldrsb r0, [r0, #0xe0]
	cmp r0, #1
	bne _0207E0E8
	bl OS_GetTick
	ldr r2, [r5, #0x1e4]
	sub r1, r0, r11
	sub r0, r0, r2
	str r0, [r5, #0x1ec]
	ldr r0, [r5, #0x1e8]
	add r0, r0, r1
	str r0, [r5, #0x1e8]
	b _0207E0E8
	arm_func_end FUN_0207e0b8

	arm_func_start FUN_0207e234
FUN_0207e234: ; 0x0207E234
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_0207E238: .word unk_020BBEC0
	arm_func_end FUN_0207e234

	arm_func_start FUN_0207e23c
FUN_0207e23c: ; 0x0207E23C
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, lr}
	ldr r8, _0207E2DC ; =0x020BBEC0
	mov r0, #1
	strb r0, [r8, #0xf1]
	mov r9, #0
	mov r6, r0
	mov r5, #8
	mov r4, r9
_0207E25C:
	mov r0, r5
	strb r6, [r8, #0xf3]
	bl OS_Sleep
	strb r4, [r8, #0xf3]
	ldrsb r0, [r8, #0xf2]
	cmp r0, #1
	ldmeqfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
	ldr r0, [r8, #0x1b8]
	add r0, r0, #1
	str r0, [r8, #0x1b8]
	ldr r7, [r8, #0x1c8]
	cmp r7, #0
	beq _0207E25C
_0207E290:
	ldr r0, [r7]
	cmp r0, #0
	ble _0207E2C8
	ldrb r0, [r7, #0x1e]
	cmp r0, #1
	bne _0207E2B0
	mov r0, r7
	bl FUN_0207e2e0
_0207E2B0:
	ldrsb r0, [r7, #7]
	cmp r0, #1
	bne _0207E2C8
	mov r0, r7
	strb r9, [r7, #7]
	bl FUN_0207cd18
_0207E2C8:
	ldr r7, [r7, #0x358]
	cmp r7, #0
	bne _0207E290
	b _0207E25C
	arm_func_end FUN_0207e23c

	arm_func_start FUN_0207e2d8
FUN_0207e2d8: ; 0x0207E2D8
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
_0207E2DC: .word unk_020BBEC0
	arm_func_end FUN_0207e2d8

	arm_func_start FUN_0207e2e0
FUN_0207e2e0: ; 0x0207E2E0
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, lr}
	mov r6, r0
	ldrsb r1, [r6, #0x10]
	mov r4, #1
	mov r5, #0
	cmp r1, #0
	ldmeqfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
	ldrsb r1, [r6, #5]
	cmp r1, #1
	bne _0207E320
	ldr r1, [r6, #0x22c]
	strb r5, [r6, #0x2f]
	strb r5, [r6, #5]
	blx r1
	strb r4, [r6, #7]
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
_0207E320:
	ldrb r1, [r6, #0x2f]
	cmp r1, #6
	addls pc, pc, r1, lsl #2
	b _0207E470
_0207E330: ; jump table
	b _0207E470 ; case 0
	b _0207E34C ; case 1
	b _0207E470 ; case 2
	b _0207E34C ; case 3
	b _0207E34C ; case 4
	b _0207E3D8 ; case 5
	b _0207E470 ; case 6
_0207E34C:
	ldr r1, [r6, #0x228]
	blx r1
	cmp r0, #0
	strltb r4, [r6, #5]
	strltb r5, [r6, #0x2f]
	blt _0207E470
	ldr r7, _0207E584 ; =0x020BBEC0
	ldr r8, [r6, #0x230]
	ldr r1, [r7, #0x18]
	mov r0, r6
	mov r3, r5
	mov r2, #0x100
	blx r8
	cmp r0, #0
	strltb r5, [r6, #0x2f]
	blt _0207E470
	ldr r1, [r7, #0x18]
	mov r0, r6
	bl FUN_0207e89c
	cmp r0, #0
	strneb r5, [r6, #0x2f]
	bne _0207E470
	ldr r1, [r7, #0x18]
	mov r0, r6
	add r1, r1, #0x80
	bl FUN_0207ebe4
	mov r8, #5
	ldr r0, [r6]
	ldr r3, [r6, #0x214]
	ldr r7, [r6, #0x210]
	mov r2, r5
	mov r1, #3
	strb r8, [r6, #0x2f]
	blx r7
	b _0207E470
_0207E3D8:
	ldrsb r0, [r6, #0x12]
	cmp r0, #0
	ldreqsb r0, [r6, #0xa]
	cmpeq r0, #1
	ldreqsb r0, [r6, #0x11]
	cmpeq r0, #0
	bne _0207E470
	ldrh r1, [r6, #0x2c]
	cmp r1, #0
	moveq r7, r5
	beq _0207E424
	mov r0, #0x3e8
	mul r0, r1, r0
	ldr r1, _0207E588 ; =0x020B9FD8
	ldrsh r1, [r1, #0x28]
	bl _u32_div_f
	mov r0, r0, lsl #0x10
	movs r7, r0, lsr #0x10
	moveq r7, r4
_0207E424:
	ldrsb r0, [r6, #0x2e]
	cmp r7, #0
	mov r1, r0, lsl #0x10
	str r1, [r6, #0x38]
	streq r1, [r6, #0x30]
	beq _0207E458
	ldr r0, [r6, #0x30]
	subs r0, r1, r0
	moveq r7, #0
	beq _0207E458
	mov r1, r7
	bl _s32_div_f
	str r0, [r6, #0x34]
_0207E458:
	mov r0, r6
	strh r7, [r6, #0x3c]
	bl FUN_0207e590
	mov r0, #6
	strb r4, [r6, #0xb]
	strb r0, [r6, #0x2f]
_0207E470:
	ldrsb r0, [r6, #9]
	cmp r0, #0
	ldrnesb r0, [r6, #6]
	cmpne r0, #1
	ldmeqfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
	ldr r3, [r6, #0x50]
	ldr r0, [r6, #0x5c]
	sub r9, r0, r3
	cmp r9, #0
	ble _0207E534
	ldr r8, _0207E58C ; =0x04000208
	sub r0, r5, #0x200
	ldrh r7, [r8]
	strh r5, [r8]
	ldrh r1, [r8]
	ldr r4, [r6, #0xe8]
	ldr r2, [r6, #0xec]
	sub r1, r4, r2
	and r4, r1, r0
	strh r7, [r8]
	cmp r4, #0x200
	ldmltfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
	ldr r0, _0207E584 ; =0x020BBEC0
	ldr r7, _0207E584 ; =0x020BBEC0
	ldr r0, [r0, #0x14]
	cmp r4, r9
	movgt r4, r9
	cmp r4, r0
	movgt r4, r0
	ldr r8, [r6, #0x230]
	ldr r1, [r7, #0x1c]
	mov r0, r6
	mov r2, r4
	blx r8
	cmp r0, #0
	ldmlefd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
	ldr r9, _0207E58C ; =0x04000208
	mov r2, r4
	ldrh r8, [r9]
	add r0, r6, #0xe4
	strh r5, [r9]
	ldr r1, [r7, #0x1c]
	bl FUN_02085810
	ldrh r0, [r9]
	strh r8, [r9]
	ldr r0, [r6, #0x50]
	add r0, r0, r4
	str r0, [r6, #0x50]
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
_0207E534:
	ldrsb r0, [r6, #0xc]
	mov r2, #0
	cmp r0, #1
	bne _0207E564
	ldr r5, [r6, #0x58]
	ldr r0, [r6]
	ldr r3, [r6, #0x214]
	ldr r4, [r6, #0x210]
	mov r1, #0xf
	str r5, [r6, #0x50]
	blx r4
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
_0207E564:
	ldr r0, [r6]
	ldr r3, [r6, #0x214]
	ldr r5, [r6, #0x210]
	mov r1, #0x10
	strb r4, [r6, #0xe]
	strb r2, [r6, #9]
	blx r5
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
_0207E584: .word unk_020BBEC0
_0207E588: .word unk_020B9FD8
_0207E58C: .word 0x04000208
	arm_func_end FUN_0207e2e0

	arm_func_start FUN_0207e590
FUN_0207e590: ; 0x0207E590
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, lr}
	sub sp, sp, #8
	mov r10, r0
	ldrsb r0, [r10, #0x11]
	mov r4, #0
	cmp r0, #1
	addeq sp, sp, #8
	moveq r0, r4
	ldmeqfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
	ldrsb r0, [r10, #0x14]
	add r5, r10, #0x1c0
	cmp r0, #1
	bne _0207E61C
	mov r6, r4
	ldr r1, [r5, #0x14]
	ldr r2, [r5]
	mov r0, r6
	bl MIi_CpuClearFast
	ldr r0, [r5, #0x14]
	ldr r1, [r5]
	bl DC_FlushRange
	ldrb r0, [r10, #0x22]
	str r6, [r5, #0x10]
	cmp r0, #0
	ble _0207E614
	mov r0, #0x2c
_0207E5F8:
	mla r1, r6, r0, r10
	add r1, r1, #0x200
	strh r4, [r1, #0x4c]
	ldrb r1, [r10, #0x22]
	add r6, r6, #1
	cmp r6, r1
	blt _0207E5F8
_0207E614:
	bl FUN_0207f640
	strb r4, [r10, #0x14]
_0207E61C:
	mov r8, #0
	mov r0, r10
	strb r8, [r5, #0x3c]
	bl FUN_0207d834
	ldr r1, [r10, #0x40]
	ldr r0, _0207E7F0 ; =0x00FFB0FF
	bl _u32_div_f
	mov r4, r0
	ldr r1, [r5, #8]
	ldr r0, _0207E7F4 ; =0x020BBEC0
	mul r1, r4, r1
	mov r1, r1, lsr #6
	str r0, [sp]
	ldr r3, _0207E7F8 ; =FUN_0207df10
	mov r0, #2
	mov r2, r1
	bl SND_SetupAlarm
	ldr r0, [r10, #0x30]
	ldrb r1, [r10, #0xc4]
	mov r0, r0, asr #0x10
	ldrb r2, [r10, #0x26]
	mul r0, r1, r0
	mul r3, r2, r0
	ldr r2, _0207E7FC ; =0x82061029
	mov r0, r3, lsr #0x1f
	smull r1, r6, r2, r3
	add r6, r3, r6
	add r6, r0, r6, asr #13
	mul r3, r6, r6
	ldr r2, _0207E800 ; =0x81020409
	mov r0, r3, lsr #0x1f
	smull r1, r9, r2, r3
	add r9, r3, r9
	add r9, r0, r9, asr #6
	ldr r0, [r5, #4]
	ldr r1, _0207E804 ; =0x04000208
	mov r7, r0, lsr #2
	ldrh r0, [r1]
	strh r8, [r1]
	str r0, [sp, #4]
	ldrb r0, [r10, #0x23]
	cmp r0, #0
	ble _0207E77C
	mvn r11, #0xc0000000
_0207E6CC:
	add r0, r5, r8, lsl #2
	ldr r6, [r0, #0x30]
	mov r0, #0x1000
	strh r0, [r6, #4]
	mov r0, #1
	strb r0, [r6, #0xc]
	strb r0, [r6, #0x1f]
	ldrb r0, [r10, #0x22]
	cmp r0, #1
	moveq r0, #0
	movne r0, r8
	add r0, r5, r0, lsl #2
	ldr r0, [r0, #0x18]
	str r0, [r6, #0x30]
	mov r0, #0
	str r0, [r6, #0x34]
	str r7, [r6, #0x38]
	mov r0, #1
	strb r0, [r6, #0x21]
	str r4, [r6, #0x13c]
	str r9, [r6, #0x140]
	ldrb r0, [r10, #0x22]
	cmp r0, #1
	ldrne r0, _0207E808 ; =0x020B9FD8
	ldrneb r0, [r0, #0x41]
	cmpne r0, #1
	moveq r0, #0x40
	streq r0, [r6, #0x144]
	beq _0207E750
	tst r8, #1
	moveq r0, #0
	movne r0, #0x7f
	str r0, [r6, #0x144]
_0207E750:
	add r0, r6, #0x3c
	mov r1, r11
	bl DseEnvelope_ForceVolume
	add r0, r6, #0x5c
	bl DseLfoBank_Reset
	mov r0, #1
	strh r0, [r6, #6]
	ldrb r0, [r10, #0x23]
	add r8, r8, #1
	cmp r8, r0
	blt _0207E6CC
_0207E77C:
	ldr r1, _0207E808 ; =0x020B9FD8
	ldr r4, _0207E804 ; =0x04000208
	ldrb r0, [r1, #0x745]
	mov r3, #1
	mov r2, #0
	and r0, r0, #0xfb
	strb r0, [r1, #0x745]
	ldrb r5, [r1, #0x744]
	mov r0, r2
	orr r5, r5, #4
	strb r5, [r1, #0x744]
	ldrh r1, [r4]
	ldr r1, [sp, #4]
	strh r1, [r4]
	ldrb r1, [r10, #0x22]
	strb r3, [r10, #0x11]
	cmp r1, #0
	ble _0207E7E4
_0207E7C4:
	add r1, r10, r0, lsl #2
	add r1, r1, #0x200
	strh r2, [r1, #0x34]
	strh r2, [r1, #0x36]
	ldrb r1, [r10, #0x22]
	add r0, r0, #1
	cmp r0, r1
	blt _0207E7C4
_0207E7E4:
	mov r0, #0
	add sp, sp, #8
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_0207E7F0: .word 0x00FFB0FF
_0207E7F4: .word unk_020BBEC0
_0207E7F8: .word FUN_0207df10
_0207E7FC: .word 0x82061029
_0207E800: .word 0x81020409
_0207E804: .word 0x04000208
_0207E808: .word unk_020B9FD8
	arm_func_end FUN_0207e590

	arm_func_start FUN_0207e80c
FUN_0207e80c: ; 0x0207E80C
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	ldr r1, _0207E894 ; =0x04000208
	mov r4, #0
	ldrh r5, [r1]
	mov r6, r0
	strh r4, [r1]
	ldrsb r0, [r6, #0x11]
	cmp r0, #0
	ldreqh r0, [r1]
	moveq r0, r4
	streqh r5, [r1]
	ldmeqfd sp!, {r3, r4, r5, r6, r7, pc}
	ldrb r0, [r6, #0x23]
	strb r4, [r6, #0x11]
	cmp r0, #0
	ble _0207E870
	mov r7, #2
_0207E850:
	add r0, r6, r4, lsl #2
	ldr r0, [r0, #0x1f0]
	strh r7, [r0, #6]
	bl DseVoice_Deallocate
	ldrb r0, [r6, #0x23]
	add r4, r4, #1
	cmp r4, r0
	blt _0207E850
_0207E870:
	ldr r1, _0207E898 ; =0x020B9FD8
	ldr r2, _0207E894 ; =0x04000208
	ldrb r3, [r1, #0x745]
	mov r0, #0
	orr r3, r3, #4
	strb r3, [r1, #0x745]
	ldrh r1, [r2]
	strh r5, [r2]
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_0207E894: .word 0x04000208
_0207E898: .word unk_020B9FD8
	arm_func_end FUN_0207e80c

	arm_func_start FUN_0207e89c
FUN_0207e89c: ; 0x0207E89C
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	sub sp, sp, #0x10
	mov r4, #0x80
	mov r6, r0
	mov r5, r1
	mov r0, r5
	mov r2, r4
	add r1, r6, #0x64
	mov r7, #0
	bl MIi_CpuCopyFast
	ldrb r0, [r5, #0x32]
	ldr r1, _0207EBA8 ; =0x020BA020
	ldr r2, _0207EBAC ; =0x00007FD8
	strb r0, [r6, #0x22]
	ldrb r3, [r5, #0x32]
	mov r0, #1
	strb r3, [r6, #0x23]
	ldrb r3, [r5, #0x35]
	strb r3, [r6, #0x20]
	ldrb r3, [r5, #0x62]
	strb r3, [r6, #0x25]
	ldrb r3, [r5, #0x62]
	ldrsb r1, [r1, r3]
	strb r1, [r6, #0x26]
	ldrb r3, [r5, #0x33]
	strb r3, [r6, #0x21]
	ldrb r1, [r5, #0x65]
	cmp r3, #0xb4
	strb r1, [r6, #0x27]
	ldr r1, [r5, #0x68]
	str r2, [r6, #0x40]
	strb r0, [r6, #0x1f]
	bgt _0207E954
	cmp r3, #0xb4
	bge _0207E9D0
	cmp r3, #0x74
	bgt _0207E948
	cmp r3, #0x72
	blt _0207EA34
	beq _0207E99C
	cmp r3, #0x74
	beq _0207E970
	b _0207EA34
_0207E948:
	cmp r3, #0xb2
	beq _0207E9F0
	b _0207EA34
_0207E954:
	cmp r3, #0xc1
	bgt _0207E964
	beq _0207EA2C
	b _0207EA34
_0207E964:
	cmp r3, #0xc2
	beq _0207EA10
	b _0207EA34
_0207E970:
	ldrsb r0, [r6, #0x27]
	cmp r0, #0
	bne _0207E98C
	ldr r3, _0207EBB0 ; =FUN_0207f934
	mov r2, #0x20
	mov r0, #0x40
_0207E988:
	b _0207EA1C
_0207E98C:
	ldr r3, _0207EBB4 ; =FUN_0207fa78
	mov r2, #0x1e
	mov r0, #0x3c
	b _0207E988
_0207E99C:
	ldrsb r0, [r6, #0x27]
	cmp r0, #0
	bne _0207E9C0
	ldr r2, _0207EBB8 ; =FUN_0207fbd8
	mov r0, #0x40
	str r2, [r6, #0x220]
	str r0, [r6, #0x200]
	str r4, [r6, #0x204]
	b _0207EA40
_0207E9C0:
	ldr r3, _0207EBBC ; =FUN_0207fd6c
	mov r2, #0x3c
	mov r0, #0x78
	b _0207E988
_0207E9D0:
	ldr r2, _0207EBC0 ; =FUN_0207ff60
	mov r1, #0x1e
	mov r0, #0x3c
	str r1, [r6, #0x200]
	str r2, [r6, #0x220]
	str r0, [r6, #0x204]
	mov r1, r7
	b _0207EA40
_0207E9F0:
	ldr r2, _0207EBC4 ; =FUN_0208012c
	mov r1, #0x3c
	mov r0, #0x78
	str r2, [r6, #0x220]
	str r1, [r6, #0x200]
	str r0, [r6, #0x204]
	ldr r1, _0207EBC8 ; =0x00001770
	b _0207EA40
_0207EA10:
	ldr r3, _0207EBCC ; =FUN_0207f710
_0207EA14:
	mov r2, #0x280
	mov r0, #0x500
_0207EA1C:
	str r3, [r6, #0x220]
	str r2, [r6, #0x200]
	str r0, [r6, #0x204]
	b _0207EA40
_0207EA2C:
	ldr r3, _0207EBD0 ; =FUN_0207f85c
	b _0207EA14
_0207EA34:
	add sp, sp, #0x10
	mvn r0, #0
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_0207EA40:
	ldrb r0, [r6, #0x1d]
	ldr r2, [r6, #0xac]
	str r2, [r6, #0x4c]
	str r2, [r6, #0x50]
	str r2, [r6, #0x54]
	cmp r0, #0
	beq _0207EA74
	cmp r0, #1
	beq _0207EA7C
	cmp r0, #2
	ldreqb r0, [r6, #0x95]
	streqb r0, [r6, #0xc]
	b _0207EA84
_0207EA74:
	strb r7, [r6, #0xc]
	b _0207EA84
_0207EA7C:
	mov r0, #1
	strb r0, [r6, #0xc]
_0207EA84:
	ldrb r0, [r6, #0x21]
	and r0, r0, #0xf0
	cmp r0, #0xc0
	bne _0207EB04
	ldr r0, _0207EBD4 ; =0x020BBEC0
	ldr r3, [r6, #0x204]
	ldrsb r2, [r0, #0xa]
	mov r3, r3, lsl #1
	cmp r2, #0
	bne _0207EACC
	mvn r4, #0xfe
	ldr r1, [r6, #0x1c0]
	mov r0, r4
	mov r2, #0
	bl Dse_SetError
	add sp, sp, #0x10
	mov r0, r4
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_0207EACC:
	ldr r0, [r0, #0x20]
	cmp r0, r3
	bge _0207EAF8
	mvn r4, #0xfe
	ldr r1, [r6, #0x1c0]
	mov r0, r4
	mov r2, #0
	bl Dse_SetError
	add sp, sp, #0x10
	mov r0, r4
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_0207EAF8:
	ldr r0, _0207EBD8 ; =FUN_0207f3e0
	str r3, [r6, #0x1c0]
	b _0207EB20
_0207EB04:
	ldr r0, _0207EBD4 ; =0x020BBEC0
	ldrsb r2, [r6, #0xc]
	ldr r0, [r0, #0x20]
	str r0, [r6, #0x1c0]
	ldr r0, _0207EBDC ; =FUN_0207eed4
	cmp r2, #1
	ldrne r0, _0207EBE0 ; =FUN_0207f160
_0207EB20:
	str r0, [r6, #0x218]
	ldrb r0, [r6, #0x95]
	cmp r0, #0
	ldreq r0, [r6, #0xa4]
	ldreq r2, [r6, #0xac]
	ldrne r0, [r6, #0xbc]
	ldrne r2, [r6, #0xb8]
	str r0, [r6, #0x5c]
	ldrb r0, [r6, #0xc4]
	str r2, [r6, #0x58]
	cmp r0, #0
	moveq r0, #0x7f
	streqb r0, [r6, #0xc4]
	ldrb r0, [r6, #0xc5]
	cmp r0, #0
	moveq r0, #0x40
	streqb r0, [r6, #0xc5]
	cmp r1, #0
	beq _0207EB94
	mov r4, #3
	add r5, sp, #4
	ldr r0, _0207EBAC ; =0x00007FD8
	mov r2, r4
	mov r3, #0
	str r5, [sp]
	bl FUN_0207dc98
	mov r0, r5
	mov r1, r4
	bl FUN_0207ded8
_0207EB94:
	mov r0, r6
	bl FUN_0207d910
	mov r0, #0
	add sp, sp, #0x10
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_0207EBA8: .word unk_020BA020
_0207EBAC: .word 0x00007FD8
_0207EBB0: .word FUN_0207f934
_0207EBB4: .word FUN_0207fa78
_0207EBB8: .word FUN_0207fbd8
_0207EBBC: .word FUN_0207fd6c
_0207EBC0: .word FUN_0207ff60
_0207EBC4: .word FUN_0208012c
_0207EBC8: .word 0x00001770
_0207EBCC: .word FUN_0207f710
_0207EBD0: .word FUN_0207f85c
_0207EBD4: .word unk_020BBEC0
_0207EBD8: .word FUN_0207f3e0
_0207EBDC: .word FUN_0207eed4
_0207EBE0: .word FUN_0207f160
	arm_func_end FUN_0207e89c

	arm_func_start FUN_0207ebe4
FUN_0207ebe4: ; 0x0207EBE4
	stmfd sp!, {r3, r4, r5, lr}
	mov lr, r0
	ldrb r0, [lr, #0x21]
	mov r12, r1
	mov r2, #0
	and r0, r0, #0xf0
	cmp r0, #0x70
	beq _0207EC14
	cmp r0, #0xb0
	cmpne r0, #0xe0
	beq _0207ECA0
	b _0207ECD8
_0207EC14:
	ldrb r1, [lr, #0x22]
	mov r5, r2
	cmp r1, #0
	ble _0207EC64
	mov r0, #0x2c
_0207EC28:
	ldrh r4, [r12, #2]
	add r1, lr, r5, lsl #4
	mla r3, r5, r0, lr
	ldrh r2, [r12], #4
	add r1, r1, #0x200
	add r5, r5, #1
	strh r2, [r1, #0x94]
	strh r4, [r1, #0x96]
	ldrh r2, [r1, #0x94]
	add r1, r3, #0x200
	strh r2, [r1, #0x3c]
	strh r4, [r1, #0x3e]
	ldrb r1, [lr, #0x22]
	cmp r5, r1
	blt _0207EC28
_0207EC64:
	cmp r1, #0
	mov r3, #0
	ble _0207ED18
_0207EC70:
	ldrh r2, [r12]
	add r0, lr, r3, lsl #4
	ldrh r1, [r12, #2]
	add r0, r0, #0x200
	add r3, r3, #1
	strh r2, [r0, #0xb4]
	strh r1, [r0, #0xb6]
	ldrb r0, [lr, #0x22]
	add r12, r12, #4
	cmp r3, r0
	blt _0207EC70
	b _0207ED18
_0207ECA0:
	ldrb r0, [lr, #0x22]
	mov r5, #0
	cmp r0, #0
	ble _0207ED18
_0207ECB0:
	add r0, lr, r5, lsl #4
	add r4, r0, #0x2b4
	ldmia r12, {r0, r1, r2, r3}
	stmia r4, {r0, r1, r2, r3}
	ldrb r0, [lr, #0x22]
	add r5, r5, #1
	add r12, r12, #0x10
	cmp r5, r0
	blt _0207ECB0
	b _0207ED18
_0207ECD8:
	ldrb r0, [lr, #0x22]
	mov r5, r2
	cmp r0, #0
	ble _0207ED18
	mov r0, #0x2c
_0207ECEC:
	mla r4, r5, r0, lr
	mov r3, r2
_0207ECF4:
	add r1, r4, r3, lsl #2
	add r3, r3, #1
	str r2, [r1, #0x23c]
	cmp r3, #4
	blt _0207ECF4
	ldrb r1, [lr, #0x22]
	add r5, r5, #1
	cmp r5, r1
	blt _0207ECEC
_0207ED18:
	mov r0, #1
	strb r0, [lr, #8]
	mov r0, #0
	ldmfd sp!, {r3, r4, r5, pc}
	arm_func_end FUN_0207ebe4

	arm_func_start FUN_0207ed28
FUN_0207ed28: ; 0x0207ED28
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	mov r7, r0
	add r0, r7, #0xf8
	bl FS_InitFile
	add r0, r7, #0xf8
	add r1, r7, #0x140
	bl FS_OpenFile
	movs r6, r0
	movne r0, #1
	strneb r0, [r7, #4]
	strneb r0, [r7, #9]
	movne r0, #0
	ldmnefd sp!, {r3, r4, r5, r6, r7, pc}
	mov r4, #0
	mvn r5, #0xb2
	mov r0, r5
	mov r1, r4
	mov r2, r4
	bl Dse_SetError
	ldr r0, [r7]
	ldr r3, [r7, #0x214]
	ldr r12, [r7, #0x210]
	mov r2, r6
	sub r1, r4, #4
	blx r12
	mov r0, r5
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
	arm_func_end FUN_0207ed28

	arm_func_start FUN_0207ed94
FUN_0207ed94: ; 0x0207ED94
	stmfd sp!, {r4, r5, r6, lr}
	mov r6, r0
	ldrsb r0, [r6, #4]
	cmp r0, #0
	moveq r0, #0
	ldmeqfd sp!, {r4, r5, r6, pc}
	mov r4, #0
	add r0, r6, #0xf8
	strb r4, [r6, #9]
	bl FS_CloseFile
	movs r5, r0
	bne _0207EDDC
	ldr r0, [r6]
	ldr r3, [r6, #0x214]
	ldr r12, [r6, #0x210]
	mov r2, r5
	sub r1, r4, #5
	blx r12
_0207EDDC:
	ldr r0, [r6]
	mov lr, #0
	ldr r3, [r6, #0x214]
	ldr r12, [r6, #0x210]
	mov r2, r5
	mov r1, #4
	strb lr, [r6, #4]
	blx r12
	mov r0, r5
	ldmfd sp!, {r4, r5, r6, pc}
	arm_func_end FUN_0207ed94

	arm_func_start FUN_0207ee04
FUN_0207ee04: ; 0x0207EE04
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	mov r7, r0
	mov r6, r1
	mov r4, #0
	mov r5, r2
	mov r1, r3
	mov r2, r4
	add r0, r7, #0xf8
	bl FS_SeekFile
	movs r2, r0
	bne _0207EE4C
	ldr r0, [r7]
	ldr r3, [r7, #0x214]
	ldr r12, [r7, #0x210]
	sub r1, r4, #2
	blx r12
	sub r0, r4, #1
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_0207EE4C:
	mov r1, r6
	mov r2, r5
	add r0, r7, #0xf8
	bl FS_ReadFileAsync
	movs r2, r0
	bpl _0207EE80
	ldr r0, [r7]
	ldr r3, [r7, #0x214]
	ldr r12, [r7, #0x210]
	sub r1, r4, #2
	blx r12
	sub r0, r4, #1
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_0207EE80:
	cmp r2, r5
	beq _0207EEA4
	ldr r0, [r7]
	ldr r3, [r7, #0x214]
	ldr r12, [r7, #0x210]
	sub r1, r4, #2
	blx r12
	sub r0, r4, #1
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_0207EEA4:
	add r0, r7, #0xf8
	bl FS_WaitAsync
	movs r2, r0
	movne r0, r5
	ldmnefd sp!, {r3, r4, r5, r6, r7, pc}
	ldr r0, [r7]
	ldr r3, [r7, #0x214]
	ldr r12, [r7, #0x210]
	sub r1, r4, #2
	blx r12
	sub r0, r4, #1
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
	arm_func_end FUN_0207ee04

	arm_func_start FUN_0207eed4
FUN_0207eed4: ; 0x0207EED4
	stmfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, lr}
	sub sp, sp, #0xc
	mov r10, r0
	add r4, r10, #0x1c0
	ldrb r3, [r4, #0x3d]
	ldr r2, [r4, #0xc]
	ldr r0, [r4, #0x10]
	add r5, r4, #0x18
	sub r0, r2, r0
	add r2, r5, r3, lsl #3
	str r2, [sp, #4]
	ldr r2, [r10, #0x54]
	ldr r1, [r10, #0x200]
	str r2, [sp, #8]
	bl _s32_div_f
	add r2, r0, #1
	ldrh r0, [r10, #0x9e]
	ldrb r3, [r10, #0x22]
	ldr r1, [r10, #0x1f8]
	mul r0, r2, r0
	mul r11, r3, r0
	ldr r5, [r10, #0x21c]
	ldr r3, [sp, #8]
	mov r0, r10
	mov r2, r11
	blx r5
	cmp r0, #0
	bne _0207EFA8
	mov r5, #0
	ldr r0, [r10]
	ldr r3, [r10, #0x214]
	ldr r7, [r10, #0x210]
	mov r2, r5
	mov r1, #0xc
	mov r6, r5
	blx r7
	mov r1, r5
	mov r2, r5
	sub r0, r5, #0xb8
	bl Dse_SetError2
	ldrb r0, [r10, #0x22]
	cmp r0, #0
	ble _0207F154
_0207EF80:
	ldr r0, [sp, #4]
	ldr r2, [r4, #8]
	ldr r1, [r0, r5, lsl #2]
	mov r0, r6
	bl MIi_CpuClearFast
	ldrb r0, [r10, #0x22]
	add r5, r5, #1
	cmp r5, r0
	blt _0207EF80
	b _0207F154
_0207EFA8:
	ldrb r1, [r10, #0x22]
	mov r0, r11
	ldr r8, [r4, #0x10]
	bl _s32_div_f
	ldrh r1, [r10, #0x9e]
	bl _s32_div_f
	ldr r2, [r10, #0x200]
	ldr r1, [r4, #0xc]
	mla r0, r2, r0, r8
	sub r0, r0, r1
	cmp r11, #0
	str r0, [sp]
	ldr r6, [r4, #0x38]
	ble _0207F0EC
_0207EFE0:
	ldr r1, [r10, #0x5c]
	ldr r0, [sp, #8]
	ldrb r9, [r10, #0x22]
	sub r7, r1, r0
	cmp r11, r7
	movle r7, r11
	mov r0, r7
	mov r1, r9
	bl _s32_div_f
	cmp r9, #0
	mov r5, r0
	mov r9, #0
	ble _0207F048
_0207F014:
	add r0, r4, r9, lsl #2
	ldr r1, [r0, #0x28]
	ldr r12, [r10, #0x220]
	mov r0, r10
	add r1, r1, r8, lsl #1
	strb r9, [r10, #0x28]
	mov r2, r6
	mov r3, r5
	blx r12
	ldrb r0, [r10, #0x22]
	add r9, r9, #1
	cmp r9, r0
	blt _0207F014
_0207F048:
	ldr r1, [r10, #0x54]
	ldr r0, [r10, #0x5c]
	add r1, r1, r7
	str r1, [r10, #0x54]
	cmp r1, r0
	add r6, r6, r7
	blt _0207F0CC
	ldrb r0, [r10, #0x22]
	ldr r1, [r10, #0x58]
	mov r12, #0
	str r1, [r10, #0x54]
	cmp r0, #0
	ble _0207F0A8
	mov lr, #0x2c
_0207F080:
	mla r1, r12, lr, r10
	add r0, r10, r12, lsl #4
	add r0, r0, #0x2b4
	add r9, r1, #0x23c
	add r12, r12, #1
	ldmia r0, {r0, r1, r2, r3}
	stmia r9, {r0, r1, r2, r3}
	ldrb r0, [r10, #0x22]
	cmp r12, r0
	blt _0207F080
_0207F0A8:
	ldrh r1, [r10, #0x60]
	ldr r0, [r10]
	ldr r3, [r10, #0x214]
	add r1, r1, #1
	strh r1, [r10, #0x60]
	ldrh r2, [r10, #0x60]
	ldr r9, [r10, #0x210]
	mov r1, #0xd
	blx r9
_0207F0CC:
	ldrh r1, [r10, #0x9e]
	mov r0, r5
	sub r11, r11, r7
	bl _s32_div_f
	ldr r1, [r10, #0x200]
	cmp r11, #0
	mla r8, r1, r0, r8
	bgt _0207EFE0
_0207F0EC:
	ldrb r1, [r10, #0x22]
	ldr r0, [sp]
	mov r6, #0
	str r0, [r4, #0x10]
	cmp r1, #0
	ble _0207F154
	mov r5, r0, lsl #1
_0207F108:
	ldr r1, [sp, #4]
	add r0, r4, r6, lsl #2
	ldr r0, [r0, #0x28]
	ldr r1, [r1, r6, lsl #2]
	ldr r2, [r4, #8]
	bl MIi_CpuCopyFast
	ldr r0, [sp]
	cmp r0, #0
	ble _0207F144
	add r0, r4, r6, lsl #2
	ldr r1, [r0, #0x28]
	ldr r0, [r4, #0xc]
	mov r2, r5
	add r0, r1, r0, lsl #1
	bl MIi_CpuCopyFast
_0207F144:
	ldrb r0, [r10, #0x22]
	add r6, r6, #1
	cmp r6, r0
	blt _0207F108
_0207F154:
	mov r0, #0
	add sp, sp, #0xc
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
	arm_func_end FUN_0207eed4

	arm_func_start FUN_0207f160
FUN_0207f160: ; 0x0207F160
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, lr}
	mov r10, r0
	add r4, r10, #0x1c0
	ldrb r1, [r4, #0x3d]
	ldr r7, [r10, #0x54]
	ldr r0, [r10, #0x5c]
	add r2, r4, #0x18
	add r5, r2, r1, lsl #3
	subs r11, r0, r7
	mov r6, #0
	beq _0207F36C
	ldr r1, [r4, #0xc]
	ldr r0, [r4, #0x10]
	ldr r9, [r10, #0x200]
	sub r0, r1, r0
	str r0, [sp]
	mov r1, r9
	bl _s32_div_f
	mov r8, r0
	ldr r0, [sp]
	mov r1, r9
	bl _s32_div_f
	cmp r1, #0
	ldrh r0, [r10, #0x9e]
	addne r8, r8, #1
	ldrb r1, [r10, #0x22]
	mul r0, r8, r0
	mul r0, r1, r0
	cmp r0, r11
	movle r11, r0
	ldr r1, [r10, #0x1f8]
	ldr r8, [r10, #0x21c]
	mov r0, r10
	mov r2, r11
	mov r3, r7
	blx r8
	cmp r0, #0
	bne _0207F254
	mov r7, #0
	ldr r0, [r10]
	ldr r3, [r10, #0x214]
	ldr r8, [r10, #0x210]
	mov r2, r7
	mov r1, #0xc
	blx r8
	ldrb r0, [r10, #0x22]
	cmp r0, #0
	ble _0207F240
_0207F220:
	ldr r1, [r5, r7, lsl #2]
	ldr r2, [r4, #8]
	mov r0, r6
	bl MIi_CpuClearFast
	ldrb r0, [r10, #0x22]
	add r7, r7, #1
	cmp r7, r0
	blt _0207F220
_0207F240:
	mov r1, #0
	mov r2, r1
	mvn r0, #0xb7
	bl Dse_SetError2
	b _0207F3D8
_0207F254:
	ldrb r7, [r10, #0x22]
	mov r0, r11
	mov r1, r7
	bl _s32_div_f
	ldrh r1, [r10, #0x9e]
	mov r6, r0
	bl _u32_div_f
	ldr r3, [r10, #0x200]
	ldr r2, [r4, #0x10]
	ldr r1, [r4, #0xc]
	mla r0, r3, r0, r2
	cmp r7, #0
	sub r9, r0, r1
	mov r8, #0
	ble _0207F300
	mov r7, r9, lsl #1
_0207F294:
	add r0, r4, r8, lsl #2
	ldr lr, [r0, #0x28]
	ldr r1, [r4, #0x10]
	ldr r2, [r4, #0x38]
	ldr r12, [r10, #0x220]
	mov r0, r10
	mov r3, r6
	add r1, lr, r1, lsl #1
	strb r8, [r10, #0x28]
	blx r12
	add r0, r4, r8, lsl #2
	ldr r0, [r0, #0x28]
	ldr r1, [r5, r8, lsl #2]
	ldr r2, [r4, #8]
	bl MIi_CpuCopyFast
	cmp r9, #0
	ble _0207F2F0
	add r0, r4, r8, lsl #2
	ldr r1, [r0, #0x28]
	ldr r0, [r4, #0xc]
	mov r2, r7
	add r0, r1, r0, lsl #1
	bl MIi_CpuCopyFast
_0207F2F0:
	ldrb r0, [r10, #0x22]
	add r8, r8, #1
	cmp r8, r0
	blt _0207F294
_0207F300:
	ldr r0, [r10, #0x54]
	cmp r9, #0
	add r0, r0, r11
	str r0, [r10, #0x54]
	mov r6, #0
	bge _0207F364
	rsb r1, r9, #0
	movs r8, r1, lsl #1
	ldr r0, [r4, #8]
	movne r9, r6
	sub r1, r0, r8
	ldrneb r0, [r10, #0x22]
	cmpne r0, #0
	ble _0207F360
	bic r7, r1, #1
_0207F33C:
	ldr r1, [r5, r9, lsl #2]
	mov r0, r6
	mov r2, r8
	add r1, r1, r7
	bl MIi_CpuClearFast
	ldrb r0, [r10, #0x22]
	add r9, r9, #1
	cmp r9, r0
	blt _0207F33C
_0207F360:
	mov r9, #0
_0207F364:
	str r9, [r4, #0x10]
	b _0207F3D8
_0207F36C:
	ldrb r0, [r10, #0x22]
	mov r7, r6
	cmp r0, #0
	ble _0207F39C
_0207F37C:
	ldr r1, [r5, r7, lsl #2]
	ldr r2, [r4, #8]
	mov r0, r6
	bl MIi_CpuClearFast
	ldrb r0, [r10, #0x22]
	add r7, r7, #1
	cmp r7, r0
	blt _0207F37C
_0207F39C:
	ldrsb r0, [r10, #0xf]
	cmp r0, #1
	movne r0, #1
	strneb r0, [r10, #0xf]
	bne _0207F3D8
	mov r0, r10
	strb r6, [r10, #0xa]
	strb r6, [r10, #0x13]
	bl FUN_0207e80c
	ldr r0, [r10]
	ldr r3, [r10, #0x214]
	ldr r4, [r10, #0x210]
	mov r2, r6
	mov r1, #8
	blx r4
_0207F3D8:
	mov r0, #0
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
	arm_func_end FUN_0207f160

	arm_func_start FUN_0207f3e0
FUN_0207f3e0: ; 0x0207F3E0
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, lr}
	mov r7, r0
	ldrb r1, [r7, #0x1fd]
	ldr r3, [r7, #0x54]
	ldr r0, [r7, #0x5c]
	add r2, r7, #0x1d8
	add r5, r2, r1, lsl #3
	subs r6, r0, r3
	mov r4, #0
	beq _0207F4E8
	ldrh r0, [r7, #0x9e]
	ldr r1, [r7, #0x1f8]
	ldr r12, [r7, #0x21c]
	cmp r0, r6
	movle r6, r0
	mov r0, r7
	mov r2, r6
	blx r12
	cmp r0, #0
	bne _0207F48C
	mov r8, #0
	ldr r0, [r7]
	ldr r3, [r7, #0x214]
	ldr r6, [r7, #0x210]
	mov r2, r8
	mov r1, #0xc
	blx r6
	ldrb r0, [r7, #0x22]
	cmp r0, #0
	ble _0207F478
_0207F458:
	ldr r1, [r5, r8, lsl #2]
	ldr r2, [r7, #0x1c8]
	mov r0, r4
	bl MIi_CpuClearFast
	ldrb r0, [r7, #0x22]
	add r8, r8, #1
	cmp r8, r0
	blt _0207F458
_0207F478:
	mov r1, #0
	mov r2, r1
	mvn r0, #0xb7
	bl Dse_SetError2
	b _0207F554
_0207F48C:
	ldrb r4, [r7, #0x22]
	mov r0, r6
	mov r1, r4
	bl _s32_div_f
	mov r8, r0
	cmp r4, #0
	mov r9, #0
	ble _0207F4D8
_0207F4AC:
	strb r9, [r7, #0x28]
	ldr r1, [r5, r9, lsl #2]
	ldr r2, [r7, #0x1f8]
	ldr r4, [r7, #0x220]
	mov r0, r7
	mov r3, r8
	blx r4
	ldrb r0, [r7, #0x22]
	add r9, r9, #1
	cmp r9, r0
	blt _0207F4AC
_0207F4D8:
	ldr r0, [r7, #0x54]
	add r0, r0, r6
	str r0, [r7, #0x54]
	b _0207F554
_0207F4E8:
	ldrb r0, [r7, #0x22]
	mov r6, r4
	cmp r0, #0
	ble _0207F518
_0207F4F8:
	ldr r1, [r5, r6, lsl #2]
	ldr r2, [r7, #0x1c8]
	mov r0, r4
	bl MIi_CpuClearFast
	ldrb r0, [r7, #0x22]
	add r6, r6, #1
	cmp r6, r0
	blt _0207F4F8
_0207F518:
	ldrsb r0, [r7, #0xf]
	cmp r0, #1
	movne r0, #1
	strneb r0, [r7, #0xf]
	bne _0207F554
	mov r0, r7
	strb r4, [r7, #0xa]
	strb r4, [r7, #0x13]
	bl FUN_0207e80c
	ldr r0, [r7]
	ldr r3, [r7, #0x214]
	ldr r5, [r7, #0x210]
	mov r2, r4
	mov r1, #8
	blx r5
_0207F554:
	mov r0, #0
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
	arm_func_end FUN_0207f3e0

	arm_func_start FUN_0207f55c
FUN_0207f55c: ; 0x0207F55C
	stmfd sp!, {r4, lr}
	add r2, r2, r2, lsr #31
	mov r4, r2, asr #1
	mov r3, #0x8000
	cmp r4, #0
	rsb r3, r3, #0
	ldr r2, _0207F5B0 ; =0x00007FFF
	mov r12, #0
	ble _0207F5A0
_0207F580:
	ldrsh lr, [r1], #2
	add r12, r12, #1
	cmp r2, lr
	movgt r2, lr
	cmp r3, lr
	movlt r3, lr
	cmp r12, r4
	blt _0207F580
_0207F5A0:
	strh r2, [r0]
	strh r3, [r0, #2]
	sub r0, r3, r2
	ldmfd sp!, {r4, pc}
_0207F5B0: .word 0x00007FFF
	arm_func_end FUN_0207f55c

	arm_func_start FUN_0207f5b4
FUN_0207f5b4: ; 0x0207F5B4
	stmfd sp!, {r3, r4, r5, lr}
	mov r5, #0x5500
	ldr r1, _0207F5F8 ; =0x38646F63
	mov r0, r5
	bl FUN_0207dbf4
	mov r1, r0
	ldr r4, _0207F5FC ; =0x020BC138
	sub r2, r5, #0x280
	str r1, [r4]
	mov r0, #0
	bl MIi_CpuClearFast
	ldr r1, [r4]
	add r0, r1, #0x1280
	add r0, r0, #0x4000
	str r0, [r1, #0x27c]
	bl FUN_0207f640
	ldmfd sp!, {r3, r4, r5, pc}
_0207F5F8: .word 0x38646F63
_0207F5FC: .word unk_020BC138
	arm_func_end FUN_0207f5b4

	arm_func_start FUN_0207f600
FUN_0207f600: ; 0x0207F600
	stmfd sp!, {r4, lr}
	ldr r4, _0207F63C ; =0x020BC138
	ldr r0, [r4]
	cmp r0, #0
	ldmeqfd sp!, {r4, pc}
	add r0, r0, #0x260
	bl FUN_0208490c
	ldr r0, [r4]
	ldr r0, [r0]
	bl FUN_02083da8
	ldr r0, [r4]
	bl FUN_0207dc70
	mov r0, #0
	str r0, [r4]
	ldmfd sp!, {r4, pc}
_0207F63C: .word unk_020BC138
	arm_func_end FUN_0207f600

	arm_func_start FUN_0207f640
FUN_0207f640: ; 0x0207F640
	stmfd sp!, {r3, r4, r5, r6, lr}
	sub sp, sp, #4
	ldr r5, _0207F708 ; =0x020BC138
	ldr r1, [r5]
	cmp r1, #0
	addeq sp, sp, #4
	ldmeqfd sp!, {r3, r4, r5, r6, pc}
	mov r4, #0
	mov r0, r4
	add r1, r1, #0x280
	mov r2, #0x800
	bl MIi_CpuClearFast
	ldr r1, [r5]
	mov r0, r4
	add r1, r1, #0xa80
	mov r2, #0x4800
	bl MIi_CpuClearFast
	ldr r2, [r5]
	ldr r0, _0207F70C ; =0x0208E96C
	add r1, r2, #0x280
	str r1, [r2, #0x68]
	ldr r2, [r5]
	add r1, r2, #0xa80
	str r1, [r2, #0x25c]
	ldr r1, [r5]
	add r1, r1, #4
	bl FUN_02083c60
	ldr r1, [r5]
	add r6, sp, #0
	str r0, [r1]
	mov r1, #1
	str r1, [sp]
	ldr r0, [r5]
	mov r1, r4
	ldr r0, [r0]
	mov r2, r6
	bl FUN_02084ad0
	ldr r0, [r5]
	str r4, [sp]
	ldr r0, [r0]
	mov r2, r6
	mov r1, #0x2c
	bl FUN_02084ad0
	ldr r0, [r5]
	mov r1, r4
	add r0, r0, #0x260
	mov r2, #0x80
	bl FUN_020848e4
	add sp, sp, #4
	ldmfd sp!, {r3, r4, r5, r6, pc}
_0207F708: .word unk_020BC138
_0207F70C: .word unk_0208E96C
	arm_func_end FUN_0207f640

	arm_func_start FUN_0207f710
FUN_0207f710: ; 0x0207F710
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, lr}
	mov r11, r0
	ldrh r7, [r11, #0x9e]
	ldrb r6, [r11, #0x28]
	mov r8, r2
	mov r9, r1
	mla r8, r6, r7, r8
	mov r1, #0x2c
	mov r0, r3
	str r3, [sp]
	cmp r0, #0
	add r5, r11, #0x23c
	smulbb r4, r6, r1
	add r9, r9, r6, lsl #1
	mov r6, #0
	ble _0207F84C
_0207F750:
	ldr r0, _0207F854 ; =0x020BC138
	ldrh r2, [r11, #0xd0]
	ldr r0, [r0]
	mov r1, #0
	str r8, [r0, #0x260]
	mov r2, r2, lsr #2
	str r8, [r0, #0x264]
	mov r2, r2, lsl #5
	str r2, [r0, #0x268]
	str r1, [r0, #0x26c]
	mov r10, r8
	str r1, [r0, #0x274]
	cmp r7, #0
	ble _0207F7A4
	ldr r2, _0207F858 ; =0x88888888
_0207F78C:
	ldr r3, [r10]
	add r1, r1, #4
	eor r3, r3, r2
	str r3, [r10], #4
	cmp r1, r7
	blt _0207F78C
_0207F7A4:
	ldr r10, _0207F854 ; =0x020BC138
	add r1, r0, #0x260
	ldr r2, [r10]
	ldr r0, [r2]
	ldr r2, [r2, #0x27c]
	bl FUN_02083db8
	ldr r0, [r10]
	ldrsh r10, [r5, r4]
	ldr r12, [r0, #0x27c]
	mov r0, #0x8000
	rsb r0, r0, #0
	mov r2, #0
	mov r1, r0, lsr #0x11
_0207F7D8:
	mov r3, r2, lsl #1
	ldrsh r3, [r12, r3]
	add r10, r3, r10
	add r10, r10, r10, lsr #31
	mov r10, r10, asr #1
	add lr, r10, #0x20
	cmp lr, r0, lsr #17
	movgt lr, r1
	bgt _0207F804
	cmp lr, r0
	movlt lr, r0
_0207F804:
	add r10, r3, #0x20
	cmp r10, r0, lsr #17
	movgt r10, r1
	bgt _0207F81C
	cmp r10, r0
	movlt r10, r0
_0207F81C:
	strh r10, [r9, #2]
	strh lr, [r9], #4
	add r2, r2, #1
	cmp r2, #0x140
	mov r10, r3
	blt _0207F7D8
	ldr r0, [sp]
	add r6, r6, r7
	strh r3, [r5, r4]
	cmp r6, r0
	add r8, r8, r7
	blt _0207F750
_0207F84C:
	mov r0, #0
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_0207F854: .word unk_020BC138
_0207F858: .word 0x88888888
	arm_func_end FUN_0207f710

	arm_func_start FUN_0207f85c
FUN_0207f85c: ; 0x0207F85C
	mov r0, #0
	bx lr
	arm_func_end FUN_0207f85c

	arm_func_start FUN_0207f864
FUN_0207f864: ; 0x0207F864
	stmfd sp!, {r3, lr}
	ldrh lr, [r0, #0x9e]
	ldrb r12, [r0, #0x22]
	ldrb r0, [r0, #0x28]
	cmp r3, #0
	mul r12, lr, r12
	mla lr, r0, lr, r2
	mov r2, r12, asr #2
	mov r12, #0
	ble _0207F8C0
_0207F88C:
	ldr r0, [lr]
	add r12, r12, #0x10
	str r0, [r1]
	ldr r0, [lr, #4]
	cmp r12, r3
	str r0, [r1, #4]
	ldr r0, [lr, #8]
	str r0, [r1, #8]
	ldr r0, [lr, #0xc]
	add lr, lr, r2, lsl #2
	str r0, [r1, #0xc]
	add r1, r1, #0x10
	blt _0207F88C
_0207F8C0:
	mov r0, r3
	ldmfd sp!, {r3, pc}
	arm_func_end FUN_0207f864

	arm_func_start FUN_0207f8c8
FUN_0207f8c8: ; 0x0207F8C8
	stmfd sp!, {r4, r5, r6, lr}
	mov r5, #0
	ldr r1, _0207F930 ; =0x020BC13C
	mvn lr, #0
	mov r2, #0x58
	mov r3, r5
	mov r4, r5
_0207F8E4:
	mov r6, r4
	add r0, r1, r5, lsl #3
_0207F8EC:
	cmp r6, #4
	movlt r12, lr
	movge r12, r6, lsl #1
	subge r12, r12, #6
	adds r12, r5, r12
	movmi r12, r3
	bmi _0207F910
	cmp r12, #0x58
	movgt r12, r2
_0207F910:
	strb r12, [r6, r0]
	add r6, r6, #1
	cmp r6, #8
	blt _0207F8EC
	add r5, r5, #1
	cmp r5, #0x58
	ble _0207F8E4
	ldmfd sp!, {r4, r5, r6, pc}
_0207F930: .word unk_020BC13C
	arm_func_end FUN_0207f8c8

	arm_func_start FUN_0207f934
FUN_0207f934: ; 0x0207F934
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, lr}
	sub sp, sp, #0x18
	ldrh r4, [r0, #0x9e]
	ldrb r5, [r0, #0x22]
	ldrb r7, [r0, #0x28]
	mov r6, #0x2c
	mul r5, r4, r5
	str r4, [sp, #0xc]
	str r5, [sp]
	smulbb r4, r7, r6
	add r5, r0, #0x23c
	add r0, r5, r4
	str r0, [sp, #0x14]
	ldr r0, [sp, #0xc]
	ldrsh r4, [r5, r4]
	mla r2, r7, r0, r2
	ldr r0, [sp, #0x14]
	cmp r3, #0
	ldrb r5, [r0, #2]
	ldrsh r0, [r0, #0x10]
	str r0, [sp, #0x10]
	mov r0, #0
	str r0, [sp, #8]
	ble _0207FA4C
_0207F994:
	mov r0, #0
	mov r9, #0x8000
	ldr r8, _0207FA6C ; =0x00007FDF
	ldr r12, _0207FA70 ; =0x0208C544
	ldr r11, _0207FA74 ; =0x020BC13C
	str r0, [sp, #4]
	rsb r9, r9, #0
_0207F9B0:
	ldr r0, [sp, #4]
	mov r7, #0
	ldr r6, [r2, r0, lsl #2]
_0207F9BC:
	mov r0, r5, lsl #1
	and lr, r6, #7
	mov r10, lr, lsl #1
	ldrsh r0, [r12, r0]
	add r10, r10, #1
	tst r6, #8
	mul r10, r0, r10
	add r0, r11, r5, lsl #3
	ldrb r5, [lr, r0]
	beq _0207F9F4
	sub r4, r4, r10, asr #3
	cmp r4, r9
	movlt r4, r9
	b _0207FA00
_0207F9F4:
	add r4, r4, r10, asr #3
	cmp r4, r8
	movgt r4, r8
_0207FA00:
	add r0, r4, #0x20
	strh r0, [r1], #2
	mov r6, r6, lsr #4
	add r7, r7, #1
	cmp r7, #8
	blt _0207F9BC
	ldr r0, [sp, #4]
	add r0, r0, #1
	str r0, [sp, #4]
	cmp r0, #4
	blt _0207F9B0
	ldr r6, [sp, #8]
	ldr r0, [sp, #0xc]
	add r0, r6, r0
	str r0, [sp, #8]
	cmp r0, r3
	ldr r0, [sp]
	add r2, r2, r0
	blt _0207F994
_0207FA4C:
	ldr r0, [sp, #0x14]
	ldr r1, [sp, #0x10]
	strh r4, [r0]
	strb r5, [r0, #2]
	strh r1, [r0, #0x10]
	mov r0, #0
	add sp, sp, #0x18
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_0207FA6C: .word 0x00007FDF
_0207FA70: .word unk_0208C544
_0207FA74: .word unk_020BC13C
	arm_func_end FUN_0207f934

	arm_func_start FUN_0207fa78
FUN_0207fa78: ; 0x0207FA78
	stmfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, lr}
	sub sp, sp, #0x14
	ldrb r4, [r0, #0x28]
	add r6, r0, #0x23c
	mov r5, #0x2c
	mla r5, r4, r5, r6
	ldrb r6, [r5, #3]
	str r5, [sp, #0x10]
	ldrh r5, [r0, #0x9e]
	cmp r6, #1
	ldreqb r7, [r2, #0xf]
	str r5, [sp, #0xc]
	ldrb r5, [r0, #0x22]
	ldr r0, [sp, #0xc]
	moveq r6, #0
	mul r5, r0, r5
	ldreq r0, [sp, #0x10]
	str r5, [sp]
	streqb r6, [r0, #3]
	ldrne r0, [sp, #0x10]
	ldrnesh r6, [r0]
	ldrneb r7, [r0, #2]
	ldr r0, [sp, #0xc]
	cmp r3, #0
	mla r2, r4, r0, r2
	mov r0, #0
	str r0, [sp, #8]
	ble _0207FBB4
_0207FAE8:
	mov r0, #0
	str r0, [sp, #4]
	mov r12, #0x8000
	ldr r0, _0207FBCC ; =0x00007FDF
	ldr r11, _0207FBD0 ; =0x0208C544
	rsb r12, r12, #0
_0207FB00:
	ldr r4, [sp, #4]
	mov r9, #0
	cmp r4, #3
	moveq r10, #6
	movne r10, #8
	ldr r8, [r2, r4, lsl #2]
	cmp r10, #0
	ble _0207FB80
_0207FB20:
	mov r4, r7, lsl #1
	and r5, r8, #7
	ldrsh lr, [r11, r4]
	mov r4, r5, lsl #1
	add r4, r4, #1
	mul r4, lr, r4
	ldr lr, _0207FBD4 ; =0x020BC13C
	tst r8, #8
	add r7, lr, r7, lsl #3
	ldrb r7, [r5, r7]
	beq _0207FB5C
	sub r6, r6, r4, asr #3
	cmp r6, r12
	movlt r6, r12
	b _0207FB68
_0207FB5C:
	add r6, r6, r4, asr #3
	cmp r6, r0
	movgt r6, r0
_0207FB68:
	add r4, r6, #0x20
	strh r4, [r1], #2
	mov r8, r8, lsr #4
	add r9, r9, #1
	cmp r9, r10
	blt _0207FB20
_0207FB80:
	ldr r4, [sp, #4]
	add r4, r4, #1
	str r4, [sp, #4]
	cmp r4, #4
	blt _0207FB00
	ldr r4, [sp, #8]
	ldr r0, [sp, #0xc]
	add r0, r4, r0
	str r0, [sp, #8]
	cmp r0, r3
	ldr r0, [sp]
	add r2, r2, r0
	blt _0207FAE8
_0207FBB4:
	ldr r0, [sp, #0x10]
	strh r6, [r0]
	strb r7, [r0, #2]
	mov r0, #0
	add sp, sp, #0x14
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
_0207FBCC: .word 0x00007FDF
_0207FBD0: .word unk_0208C544
_0207FBD4: .word unk_020BC13C
	arm_func_end FUN_0207fa78

	arm_func_start FUN_0207fbd8
FUN_0207fbd8: ; 0x0207FBD8
	stmfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, lr}
	sub sp, sp, #0x14
	ldrh r5, [r0, #0x9e]
	ldrb r4, [r0, #0x28]
	add r7, r0, #0x23c
	str r5, [sp, #0xc]
	mov r5, #0x2c
	smulbb r6, r4, r5
	add r5, r7, r6
	str r5, [sp, #0x10]
	ldr r5, [sp, #0xc]
	ldrsh r6, [r7, r6]
	ldrb r8, [r0, #0x22]
	mla r2, r4, r5, r2
	mul r7, r5, r8
	ldr r4, [sp, #0x10]
	str r7, [sp]
	ldrb r8, [r4, #2]
	ldrsh r7, [r4, #0x10]
	mov r4, #0
	mov r11, r6
	cmp r3, #0
	str r4, [sp, #8]
	ble _0207FD44
_0207FC38:
	mov r4, #0
	mov r12, #0x8000
	str r4, [sp, #4]
	rsb r12, r12, #0
_0207FC48:
	ldr r4, [sp, #4]
	mov r10, #0
	ldr r9, [r2, r4, lsl #2]
_0207FC54:
	ldr r4, _0207FD60 ; =0x0208C544
	mov lr, r8, lsl #1
	and r5, r9, #7
	ldrsh lr, [r4, lr]
	mov r4, r5, lsl #1
	add r4, r4, #1
	mul r4, lr, r4
	ldr lr, _0207FD64 ; =0x020BC13C
	tst r9, #8
	add r8, lr, r8, lsl #3
	ldrb r8, [r5, r8]
	beq _0207FC94
	sub r6, r6, r4, asr #3
	cmp r6, r12
	movlt r6, r12
	b _0207FCA4
_0207FC94:
	add r6, r6, r4, asr #3
	ldr r4, _0207FD68 ; =0x00007FFF
	cmp r6, r4
	movgt r6, r4
_0207FCA4:
	mov r9, r9, lsr #4
	ldr r5, [r0, #0x2d8]
	ldr r4, [r0, #0x2d4]
	add r11, r6, r11
	add r11, r11, r11, lsr #31
	mov r11, r11, asr #1
	mul r7, r5, r7
	mla r11, r4, r11, r7
	mov r7, r11, asr #7
	add r7, r11, r7, lsr #24
	mov r7, r7, lsl #8
	mov r7, r7, asr #0x10
	mul r11, r5, r7
	mla r5, r4, r6, r11
	add r4, r7, #0x20
	strh r4, [r1]
	mov r4, r5, asr #7
	add r4, r5, r4, lsr #24
	mov r4, r4, lsl #8
	mov r7, r4, asr #0x10
	add r4, r7, #0x20
	strh r4, [r1, #2]
	add r1, r1, #4
	mov r11, r6
	add r10, r10, #1
	cmp r10, #8
	blt _0207FC54
	ldr r4, [sp, #4]
	add r4, r4, #1
	str r4, [sp, #4]
	cmp r4, #4
	blt _0207FC48
	ldr r5, [sp, #8]
	ldr r4, [sp, #0xc]
	add r4, r5, r4
	str r4, [sp, #8]
	cmp r4, r3
	ldr r4, [sp]
	add r2, r2, r4
	blt _0207FC38
_0207FD44:
	ldr r0, [sp, #0x10]
	strh r6, [r0]
	strb r8, [r0, #2]
	strh r7, [r0, #0x10]
	mov r0, #0
	add sp, sp, #0x14
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
_0207FD60: .word unk_0208C544
_0207FD64: .word unk_020BC13C
_0207FD68: .word 0x00007FFF
	arm_func_end FUN_0207fbd8

	arm_func_start FUN_0207fd6c
FUN_0207fd6c: ; 0x0207FD6C
	stmfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, lr}
	sub sp, sp, #0x1c
	ldrh r4, [r0, #0x9e]
	ldrb r7, [r0, #0x28]
	add r5, r0, #0x23c
	str r4, [sp, #0x10]
	mov r4, #0x2c
	mla r4, r7, r4, r5
	ldrb r6, [r4, #3]
	str r4, [sp, #0x18]
	ldr r4, [sp, #0x10]
	ldrb r5, [r0, #0x22]
	mla r2, r7, r4, r2
	mul r5, r4, r5
	cmp r6, #1
	ldrne r4, [sp, #0x18]
	str r5, [sp, #4]
	ldrnesh r12, [r4]
	ldrneb lr, [r4, #2]
	ldrnesh r5, [r4, #0x10]
	bne _0207FDD4
	ldrb lr, [r2, #0xf]
	ldr r4, [sp, #0x18]
	mov r12, #0
	mov r5, r12
	strb r12, [r4, #3]
_0207FDD4:
	mov r4, #0
	str r12, [sp, #0x14]
	cmp r3, #0
	str r4, [sp, #0xc]
	ble _0207FF38
_0207FDE8:
	mov r4, #0
	mov r10, #0x8000
	ldr r9, _0207FF54 ; =0x00007FFF
	str r4, [sp, #8]
	rsb r10, r10, #0
_0207FDFC:
	ldr r4, [sp, #8]
	mov r11, #0
	cmp r4, #3
	moveq r6, #6
	streq r6, [sp]
	movne r6, #8
	strne r6, [sp]
	ldr r6, [sp]
	ldr r4, [r2, r4, lsl #2]
	cmp r6, #0
	ble _0207FF04
_0207FE28:
	ldr r6, _0207FF58 ; =0x0208C544
	mov r7, lr, lsl #1
	and r8, r4, #7
	ldrsh r6, [r6, r7]
	mov r7, r8, lsl #1
	add r7, r7, #1
	mul r7, r6, r7
	ldr r6, _0207FF5C ; =0x020BC13C
	tst r4, #8
	add r6, r6, lr, lsl #3
	ldrb lr, [r8, r6]
	beq _0207FE68
	sub r12, r12, r7, asr #3
	cmp r12, r10
	movlt r12, r10
	b _0207FE74
_0207FE68:
	add r12, r12, r7, asr #3
	cmp r12, r9
	movgt r12, r9
_0207FE74:
	ldr r8, [r0, #0x2d8]
	ldr r6, [sp, #0x14]
	mul r5, r8, r5
	add r6, r12, r6
	add r6, r6, r6, lsr #31
	ldr r7, [r0, #0x2d4]
	mov r6, r6, asr #1
	mla r6, r7, r6, r5
	mov r5, r6, asr #7
	add r5, r6, r5, lsr #24
	mov r6, r5, asr #8
	mul r5, r8, r6
	mla r5, r7, r12, r5
	mov r7, r5, asr #7
	add r6, r6, #0x20
	add r5, r5, r7, lsr #24
	cmp r6, r9
	mov r4, r4, lsr #4
	mov r5, r5, asr #8
	movgt r6, r9
	bgt _0207FED0
	cmp r6, r10
	movlt r6, r10
_0207FED0:
	add r7, r5, #0x20
	cmp r7, r9
	movgt r7, r9
	bgt _0207FEE8
	cmp r7, r10
	movlt r7, r10
_0207FEE8:
	strh r7, [r1, #2]
	strh r6, [r1], #4
	ldr r6, [sp]
	add r11, r11, #1
	str r12, [sp, #0x14]
	cmp r11, r6
	blt _0207FE28
_0207FF04:
	ldr r4, [sp, #8]
	add r4, r4, #1
	str r4, [sp, #8]
	cmp r4, #4
	blt _0207FDFC
	ldr r6, [sp, #0xc]
	ldr r4, [sp, #0x10]
	add r4, r6, r4
	str r4, [sp, #0xc]
	cmp r4, r3
	ldr r4, [sp, #4]
	add r2, r2, r4
	blt _0207FDE8
_0207FF38:
	ldr r0, [sp, #0x18]
	strh r12, [r0]
	strb lr, [r0, #2]
	strh r5, [r0, #0x10]
	mov r0, #0
	add sp, sp, #0x1c
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
_0207FF54: .word 0x00007FFF
_0207FF58: .word unk_0208C544
_0207FF5C: .word unk_020BC13C
	arm_func_end FUN_0207fd6c

	arm_func_start FUN_0207ff60
FUN_0207ff60: ; 0x0207FF60
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, lr}
	sub sp, sp, #0x20
	ldrh r4, [r0, #0x9e]
	ldrb r7, [r0, #0x28]
	add r6, r0, #0x23c
	str r4, [sp, #0x14]
	ldrb r4, [r0, #0x22]
	ldr r0, [sp, #0x14]
	mov r5, #0x2c
	mul r4, r0, r4
	mla r0, r7, r5, r6
	str r0, [sp, #0x18]
	ldr r0, [sp, #0x14]
	str r4, [sp]
	mla r2, r7, r0, r2
	mov r0, #0
	cmp r3, #0
	str r0, [sp, #0x10]
	ble _02080118
_0207FFAC:
	ldrb r0, [r2, #0xf]
	mov r8, r1
	str r2, [sp, #0xc]
	eor r0, r0, #0x80
	and r0, r0, #0xff
	mov r4, r0, asr #4
	and r0, r0, #0xf
	rsb r0, r0, #0xc
	cmp r4, #4
	str r0, [sp, #4]
	movgt r4, #0
	ldr r0, _02080124 ; =0x0208C5F8
	mov r4, r4, lsl #1
	ldrh r4, [r0, r4]
	ldr r0, [sp, #0x18]
	ldr r7, [r0]
	ldr r6, [r0, #4]
	mvn r0, r4
	mov r0, r0, lsl #0x10
	mov r0, r0, lsr #0x10
	mov r4, r0, asr #8
	mov r0, r0, lsl #0x18
	mov r5, r0, asr #0x18
	mov r0, r4, lsl #0x18
	mov r11, r0, asr #0x18
	mov r0, #0
	str r0, [sp, #8]
	mov r0, #0x8000
	rsb r0, r0, #0
	mov r4, r0, lsr #0x11
	str r4, [sp, #0x1c]
_02080028:
	ldr r4, [sp, #8]
	mov lr, #0
	cmp r4, #3
	ldr r4, [sp, #0xc]
	ldr r9, [r4], #4
	str r4, [sp, #0xc]
	ldr r4, _02080128 ; =0x80808080
	eor r4, r9, r4
	moveq r9, #6
	movne r9, #8
	and r9, r9, #0xff
	cmp r9, #0
	ble _020800CC
_0208005C:
	mov r10, r4, lsl #0x1c
	mov r10, r10, lsr #0x10
	mov r10, r10, lsl #0x10
	ldr r12, [sp, #4]
	mov r10, r10, asr #0x10
	mov r12, r10, asr r12
	mul r10, r6, r11
	mla r10, r7, r5, r10
	mov r6, r10, asr #5
	add r6, r10, r6, lsr #26
	mov r6, r6, asr #6
	add r10, r6, r12, lsl #6
	mov r6, r7
	mov r12, r10, asr #5
	mov r7, r10
	add r10, r10, r12, lsr #26
	mov r10, r10, asr #6
	add r10, r10, #0x20
	cmp r10, r0, lsr #17
	ldrgt r10, [sp, #0x1c]
	bgt _020800B8
	cmp r10, r0
	movlt r10, r0
_020800B8:
	strh r10, [r8], #2
	mov r4, r4, lsr #4
	add lr, lr, #1
	cmp lr, r9
	blt _0208005C
_020800CC:
	ldr r4, [sp, #8]
	add r4, r4, #1
	str r4, [sp, #8]
	cmp r4, #4
	blt _02080028
	ldr r0, [sp, #0x18]
	ldr r4, [sp, #0x10]
	str r7, [r0]
	ldr r0, [sp, #0x14]
	add r1, r1, #0x3c
	add r0, r4, r0
	str r0, [sp, #0x10]
	ldr r0, [sp, #0x18]
	str r6, [r0, #4]
	ldr r0, [sp, #0x10]
	cmp r0, r3
	ldr r0, [sp]
	add r2, r2, r0
	blt _0207FFAC
_02080118:
	mov r0, #0
	add sp, sp, #0x20
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_02080124: .word unk_0208C5F8
_02080128: .word 0x80808080
	arm_func_end FUN_0207ff60

	arm_func_start FUN_0208012c
FUN_0208012c: ; 0x0208012C
	stmfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, lr}
	sub sp, sp, #0x24
	ldrh r4, [r0, #0x9e]
	ldrb r7, [r0, #0x28]
	add r6, r0, #0x23c
	str r4, [sp, #0x1c]
	ldrb r4, [r0, #0x22]
	ldr r0, [sp, #0x1c]
	mov r5, #0x2c
	mul r4, r0, r4
	mla r0, r7, r5, r6
	str r0, [sp, #0x20]
	ldr r0, [sp, #0x1c]
	str r4, [sp]
	mla r2, r7, r0, r2
	mov r0, #0
	cmp r3, #0
	str r0, [sp, #0x18]
	ble _02080344
_02080178:
	ldrb r0, [r2, #0xf]
	mov r8, r1
	str r2, [sp, #0x14]
	eor r0, r0, #0x80
	and r0, r0, #0xff
	mov r4, r0, asr #4
	and r0, r0, #0xf
	rsb r0, r0, #0xc
	cmp r4, #4
	str r0, [sp, #0xc]
	movgt r4, #0
	ldr r0, _02080350 ; =0x0208C5F8
	mov r4, r4, lsl #1
	ldrh r5, [r0, r4]
	ldr r4, [sp, #0x20]
	ldr r0, [sp, #0x20]
	ldr lr, [r4]
	mvn r4, r5
	mov r4, r4, lsl #0x10
	mov r4, r4, lsr #0x10
	mov r5, r4, asr #8
	mov r4, r4, lsl #0x18
	mov r4, r4, asr #0x18
	str r4, [sp, #4]
	mov r4, r5, lsl #0x18
	mov r4, r4, asr #0x18
	str r4, [sp, #8]
	ldr r4, [sp, #0x20]
	ldrsh r0, [r0, #8]
	ldr r12, [r4, #4]
	ldr r7, [r4, #0x18]
	ldr r6, [r4, #0x1c]
	mov r4, #0
	str r4, [sp, #0x10]
	mov r4, #0x8000
	rsb r4, r4, #0
	mov r5, r4, lsr #0x11
_0208020C:
	ldr r9, [sp, #0x10]
	ldr r10, [sp, #0x14]
	cmp r9, #3
	ldr r9, [r10], #4
	str r10, [sp, #0x14]
	ldr r10, _02080354 ; =0x80808080
	eor r10, r9, r10
	moveq r9, #6
	movne r9, #8
	and r11, r9, #0xff
	cmp r11, #0
	mov r9, #0
	ble _020802E8
_02080240:
	mov r6, r10, lsl #0x1c
	mov r6, r6, lsr #0x10
	mov r6, r6, lsl #0x10
	mov r7, r6, asr #0x10
	ldr r6, [sp, #0xc]
	mov r7, r7, asr r6
	ldr r6, [sp, #8]
	mul r6, r12, r6
	ldr r12, [sp, #4]
	mla r12, lr, r12, r6
	mov r6, r12, asr #5
	add r6, r12, r6, lsr #26
	mov r6, r6, asr #6
	add r7, r6, r7, lsl #6
	mov r6, r7, asr #5
	add r6, r7, r6, lsr #26
	add r0, r0, r6, asr #6
	mov r12, lr
	add r0, r0, r0, lsr #31
	mov lr, r7
	mov r7, r0, asr #1
	cmp r7, r4, lsr #17
	mov r6, r6, asr #6
	movgt r0, r5
	bgt _020802B0
	mov r0, r4
	cmp r7, r4
	movge r0, r7
_020802B0:
	strh r0, [r8]
	cmp r6, r4, lsr #17
	movgt r0, r5
	bgt _020802CC
	mov r0, r4
	cmp r6, r4
	movge r0, r6
_020802CC:
	strh r0, [r8, #2]
	mov r0, r6
	add r8, r8, #4
	mov r10, r10, lsr #4
	add r9, r9, #1
	cmp r9, r11
	blt _02080240
_020802E8:
	ldr r9, [sp, #0x10]
	add r9, r9, #1
	str r9, [sp, #0x10]
	cmp r9, #4
	blt _0208020C
	ldr r4, [sp, #0x20]
	add r1, r1, #0x78
	str lr, [r4]
	str r12, [r4, #4]
	strh r0, [r4, #8]
	mov r0, r4
	str r7, [r0, #0x18]
	ldr r4, [sp, #0x18]
	ldr r0, [sp, #0x1c]
	add r0, r4, r0
	str r0, [sp, #0x18]
	ldr r0, [sp, #0x20]
	str r6, [r0, #0x1c]
	ldr r0, [sp, #0x18]
	cmp r0, r3
	ldr r0, [sp]
	add r2, r2, r0
	blt _02080178
_02080344:
	mov r0, #0
	add sp, sp, #0x24
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
_02080350: .word unk_0208C5F8
_02080354: .word 0x80808080
	arm_func_end FUN_0208012c

	arm_func_start FUN_02080358
FUN_02080358: ; 0x02080358
	stmfd sp!, {r4, lr}
	ldr r1, [r0, #0xc]
	ldr r4, [r0, #4]
	and r3, r1, #0x1f
	rsb r2, r3, #0x20
	ldr lr, [r4]
	add r1, r1, #4
	str r1, [r0, #0xc]
	cmp r2, #4
	movgt r1, lr, lsl r3
	movgt r2, r1, lsr #0x1c
	bgt _020803B4
	add r1, r4, #4
	str r1, [r0, #4]
	mov r1, #1
	mov r1, r1, lsl r2
	rsb r3, r2, #4
	sub r12, r1, #1
	ldr r2, [r4, #4]
	rsb r1, r3, #0x20
	mov r1, r2, lsr r1
	and r2, lr, r12
	orr r2, r1, r2, lsl r3
_020803B4:
	ldr r1, [r0, #0xc]
	mov r2, r2, lsl #3
	add r3, r2, #5
	and r2, r1, #0x1f
	add r2, r2, r3
	add r1, r1, r3
	ldr r3, [r0, #4]
	mov r2, r2, asr #5
	add r2, r3, r2, lsl #2
	str r2, [r0, #4]
	str r1, [r0, #0xc]
	mov r0, #0
	ldmfd sp!, {r4, pc}
	arm_func_end FUN_02080358

	arm_func_start FUN_020803e8
FUN_020803e8: ; 0x020803E8
	mov r1, r0
	cmp r0, #0x10000
	mov r2, #0
	movhs r1, r0, lsr #0x10
	addhs r2, r2, #8
	cmp r1, #0x100
	movhs r1, r1, lsr #8
	addhs r2, r2, #4
	cmp r1, #0x10
	movhs r1, r1, lsr #4
	addhs r2, r2, #2
	cmp r1, #4
	addhs r2, r2, #1
	mov r1, r2, lsl #0x10
	mov r1, r1, asr #0x10
	sub r1, r1, #6
	mov r2, r1, lsl #1
	cmp r2, #0
	movgt r12, r0, asr r2
	rsble r2, r2, #0
	movle r12, r0, lsl r2
	mov r0, r12, lsl #0x10
	ldr r2, _020804A8 ; =0x0000106C
	mov r3, r0, asr #0x10
	mul r0, r3, r2
	ldr r2, _020804AC ; =0xFFFFCEAD
	mov r0, r0, lsl #2
	add r0, r2, r0, asr #16
	smulbb r0, r12, r0
	mov r0, r0, lsl #2
	mov r0, r0, asr #0x10
	add r0, r0, #0xb5
	add r0, r0, #0x5200
	smulbb r0, r12, r0
	mov r0, r0, lsl #2
	mov r0, r0, asr #0x10
	add r0, r0, #0x32
	add r0, r0, #0xe00
	mov r0, r0, lsl #0x10
	rsb r1, r1, #7
	mov r2, r0, asr #0x10
	cmp r1, #0
	movgt r0, r2, asr r1
	rsble r0, r1, #0
	movle r0, r2, lsl r0
	mov r0, r0, lsl #0x10
	mov r0, r0, asr #0x10
	bx lr
_020804A8: .word 0x0000106C
_020804AC: .word 0xFFFFCEAD
	arm_func_end FUN_020803e8

	arm_func_start FUN_020804b0
FUN_020804b0: ; 0x020804B0
	stmfd sp!, {r4, lr}
	cmp r3, #0
	mov lr, #0
	ldmlefd sp!, {r4, pc}
	mov r12, lr
_020804C4:
	ldr r4, [r0, lr, lsl #2]
	cmp r4, r1
	blt _020804D8
	cmp r4, r2
	ble _020804F0
_020804D8:
	cmp r4, r1
	strlt r1, [r0, lr, lsl #2]
	blt _020804F0
	cmp r4, r2
	strgt r2, [r0, lr, lsl #2]
	strle r12, [r0, lr, lsl #2]
_020804F0:
	add lr, lr, #1
	cmp lr, r3
	blt _020804C4
	ldmfd sp!, {r4, pc}
	arm_func_end FUN_020804b0

	arm_func_start FUN_02080500
FUN_02080500: ; 0x02080500
	stmfd sp!, {r3, r4, r5, lr}
	cmp r3, #0
	mov r12, #0
	ldmlefd sp!, {r3, r4, r5, pc}
	ldr lr, _02080558 ; =0x00003FFF
	mov r4, r2, lsl #2
	and r2, r2, lr
	mov r2, r2, lsl #0x10
	mov lr, r2, asr #0x10
	mov r5, r4, asr #0x10
_02080528:
	ldr r2, [r0, r12, lsl #2]
	mov r2, r2, lsl #9
	mov r2, r2, asr #0x10
	mul r4, r5, r2
	mul r2, lr, r2
	add r2, r4, r2, asr #14
	mov r2, r2, lsl #7
	str r2, [r1, r12, lsl #2]
	add r12, r12, #1
	cmp r12, r3
	blt _02080528
	ldmfd sp!, {r3, r4, r5, pc}
_02080558: .word 0x00003FFF
	arm_func_end FUN_02080500

	arm_func_start FUN_0208055c
FUN_0208055c: ; 0x0208055C
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	cmp r1, #0
	mov r5, #0xa
	mov r3, #0
	ble _02080598
_02080570:
	mov r2, r3, lsl #1
	ldrsh r2, [r0, r2]
	add r3, r3, #1
	cmp r2, #0
	rsblt r2, r2, #0
	cmp r2, r5
	movgt r2, r2, lsl #0x10
	movgt r5, r2, asr #0x10
	cmp r3, r1
	blt _02080570
_02080598:
	ldr r2, _020806BC ; =0x00003FFF
	cmp r5, r2
	mov r2, #0
	ble _02080614
	mov r3, r2
	cmp r1, #0
	ble _020805FC
_020805B4:
	add r7, r0, r3, lsl #1
	ldrsh r4, [r7, #2]
	mov r5, r3, lsl #1
	ldrsh r5, [r0, r5]
	mov r4, r4, asr #1
	smulbb r4, r4, r4
	mov r5, r5, asr #1
	mla r6, r5, r5, r4
	ldrsh r5, [r7, #4]
	ldrsh r4, [r7, #6]
	add r3, r3, #4
	mov r5, r5, asr #1
	mla r6, r5, r5, r6
	mov r5, r4, asr #1
	mla r4, r5, r5, r6
	cmp r3, r1
	add r2, r2, r4, asr #6
	blt _020805B4
_020805FC:
	mov r0, r2
	bl _s32_div_f
	bl FUN_020803e8
	mov r0, r0, lsl #0x14
	mov r0, r0, asr #0x10
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_02080614:
	mov r4, r2
	cmp r5, #0x2000
	movlt r4, #1
	cmp r5, #0x1000
	movlt r4, #2
	cmp r5, #0x800
	movlt r4, #3
	cmp r1, #0
	mov r3, #0
	ble _0208069C
_0208063C:
	add r7, r0, r3, lsl #1
	mov r5, r3, lsl #1
	ldrsh r12, [r0, r5]
	ldrsh r6, [r7, #2]
	ldrsh r5, [r7, #4]
	mov r12, r12, lsl r4
	mov r6, r6, lsl r4
	mov r12, r12, lsl #0x10
	mov r5, r5, lsl r4
	mov lr, r5, lsl #0x10
	ldrsh r5, [r7, #6]
	smulbb r6, r6, r6
	mov r7, r12, asr #0x10
	mov r5, r5, lsl r4
	mov r12, r5, lsl #0x10
	mla r5, r7, r7, r6
	mov lr, lr, asr #0x10
	add r3, r3, #4
	mla r5, lr, lr, r5
	mov lr, r12, asr #0x10
	mla r12, lr, lr, r5
	cmp r3, r1
	add r2, r2, r12, asr #6
	blt _0208063C
_0208069C:
	mov r0, r2
	bl _s32_div_f
	bl FUN_020803e8
	rsb r1, r4, #3
	mov r0, r0, lsl r1
	mov r0, r0, lsl #0x10
	mov r0, r0, asr #0x10
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_020806BC: .word 0x00003FFF
	arm_func_end FUN_0208055c

	arm_func_start FUN_020806c0
FUN_020806c0: ; 0x020806C0
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, lr}
	ldr r4, [sp, #0x28]
	ldr r8, [sp, #0x30]
	str r4, [sp, #0x28]
	ldr r4, [sp, #0x2c]
	mov r7, #0
	str r4, [sp, #0x2c]
	ldr r4, [sp, #0x28]
	cmp r4, #0
	ldmlefd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
	ldr r4, [sp, #0x2c]
	sub r11, r4, #1
_020806F0:
	mov r5, r7, lsl #1
	ldr r4, [r8]
	ldrsh r6, [r0, r5]
	add r4, r4, #0x1000
	ldr r5, _020807B0 ; =0x00007FFF
	add r9, r6, r4, asr #13
	cmp r9, r5
	movgt r9, r5
	bgt _02080720
	rsb r4, r5, #0
	cmp r9, r4
	movlt r9, r4
_02080720:
	mov r4, r9, lsl #0x10
	mov r4, r4, asr #0x10
	str r4, [sp]
	rsb r4, r4, #0
	mov r5, r4, lsl #0x10
	ldr r4, [sp, #0x2c]
	mov r5, r5, asr #0x10
	sub lr, r4, #1
	cmp lr, #0
	mov r4, #0
	ble _02080778
_0208074C:
	add r9, r8, r4, lsl #2
	ldr r12, [r9, #4]
	mov r9, r4, lsl #1
	ldrsh r10, [r1, r9]
	ldrsh r9, [r2, r9]
	mla r10, r6, r10, r12
	mla r9, r5, r9, r10
	str r9, [r8, r4, lsl #2]
	add r4, r4, #1
	cmp r4, lr
	blt _0208074C
_02080778:
	mov r9, r11, lsl #1
	ldrsh r4, [r2, r9]
	ldrsh r10, [r1, r9]
	mov r9, r7, lsl #1
	smulbb r4, r5, r4
	smlabb r4, r6, r10, r4
	str r4, [r8, r11, lsl #2]
	ldr r4, [sp]
	add r7, r7, #1
	strh r4, [r3, r9]
	ldr r4, [sp, #0x28]
	cmp r7, r4
	blt _020806F0
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_020807B0: .word 0x00007FFF
	arm_func_end FUN_020806c0

	arm_func_start FUN_020807b4
FUN_020807b4: ; 0x020807B4
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, lr}
	ldr r10, [sp, #0x28]
	ldr r9, [sp, #0x2c]
	mov r8, #0
	cmp r3, #0
	ldmlefd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
	sub r6, r10, #1
_020807D0:
	mov r4, r8, lsl #1
	ldr r5, [r9]
	ldrsh r4, [r0, r4]
	add r7, r5, #0x1000
	ldr r5, _02080870 ; =0x00007FFF
	add r7, r4, r7, asr #13
	cmp r7, r5
	movgt r7, r5
	bgt _02080800
	rsb r4, r5, #0
	cmp r7, r4
	movlt r7, r4
_02080800:
	mov r4, r7, lsl #0x10
	mov r5, r4, asr #0x10
	rsb r4, r5, #0
	mov r4, r4, lsl #0x10
	sub lr, r10, #1
	cmp lr, #0
	mov r7, r4, asr #0x10
	mov r4, #0
	ble _02080848
_02080824:
	mov r11, r4, lsl #1
	add r12, r9, r4, lsl #2
	ldr r12, [r12, #4]
	ldrsh r11, [r1, r11]
	mla r11, r7, r11, r12
	str r11, [r9, r4, lsl #2]
	add r4, r4, #1
	cmp r4, lr
	blt _02080824
_02080848:
	mov r4, r6, lsl #1
	ldrsh r12, [r1, r4]
	mov r4, r8, lsl #1
	add r8, r8, #1
	smulbb r7, r7, r12
	str r7, [r9, r6, lsl #2]
	strh r5, [r2, r4]
	cmp r8, r3
	blt _020807D0
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_02080870: .word 0x00007FFF
	arm_func_end FUN_020807b4

	arm_func_start FUN_02080874
FUN_02080874: ; 0x02080874
	stmfd sp!, {r4, r5, r6, r7, r8, lr}
	sub sp, sp, #0x10
	ldr r5, [sp, #0x34]
	ldr r6, [sp, #0x30]
	rsb r4, r5, #4
	and r4, r4, #3
	add r4, r5, r4
	add r5, r4, r6, lsl #2
	mov r8, r2
	mov r7, r3
	cmp r6, #0
	sub r4, r5, r6, lsl #2
	mov r3, #0
	ble _020808C0
	mov r2, r3
_020808B0:
	str r2, [r4, r3, lsl #2]
	add r3, r3, #1
	cmp r3, r6
	blt _020808B0
_020808C0:
	ldr r2, [sp, #0x28]
	str r6, [sp]
	ldr r3, [sp, #0x2c]
	stmib sp, {r4, r5}
	bl FUN_020807b4
	cmp r6, #0
	mov r1, #0
	ble _020808F4
	mov r0, r1
_020808E4:
	str r0, [r4, r1, lsl #2]
	add r1, r1, #1
	cmp r1, r6
	blt _020808E4
_020808F4:
	ldr r1, [sp, #0x2c]
	ldr r0, [sp, #0x28]
	stmia sp, {r1, r6}
	str r4, [sp, #8]
	mov r1, r8
	mov r2, r7
	mov r3, r0
	str r5, [sp, #0xc]
	bl FUN_020806c0
	add sp, sp, #0x10
	ldmfd sp!, {r4, r5, r6, r7, r8, pc}
	arm_func_end FUN_02080874

	arm_func_start FUN_02080920
FUN_02080920: ; 0x02080920
	stmfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, lr}
	sub sp, sp, #0x24
	ldr r7, [sp, #0x58]
	ldr r4, [sp, #0x4c]
	rsb r6, r7, #2
	mov r4, r4, asr #1
	str r4, [sp, #0x10]
	and r4, r6, #1
	add r6, r7, r4
	ldr r5, [sp, #0x48]
	ldr r4, [sp, #0x10]
	add r4, r4, r5, asr #1
	add r7, r6, r4, lsl #1
	mov r5, r5, asr #1
	rsb r6, r7, #2
	and r6, r6, #1
	add r6, r7, r6
	add r6, r6, r4, lsl #1
	str r5, [sp, #0xc]
	cmp r5, #0
	sub r11, r7, r4, lsl #1
	sub r5, r6, r4, lsl #1
	ldr r4, [sp, #0x50]
	str r4, [sp, #0x50]
	ldr r4, [sp, #0x54]
	str r4, [sp, #0x54]
	mov r4, #0
	ble _020809BC
	ldr r6, [sp, #0xc]
	sub r8, r6, #1
_02080998:
	sub r6, r8, r4
	mov r6, r6, lsl #1
	ldrsh r7, [r0, r6]
	mov r6, r4, lsl #1
	add r4, r4, #1
	strh r7, [r11, r6]
	ldr r6, [sp, #0xc]
	cmp r4, r6
	blt _02080998
_020809BC:
	ldr r0, [sp, #0x10]
	mov r8, #0
	cmp r0, #0
	ble _020809F8
	ldr r0, [sp, #0xc]
	add r4, r11, r0, lsl #1
_020809D4:
	ldr r0, [sp, #0x50]
	mov r7, r8, lsl #1
	add r0, r0, r7, lsl #1
	ldrsh r6, [r0, #2]
	ldr r0, [sp, #0x10]
	add r8, r8, #1
	cmp r8, r0
	strh r6, [r7, r4]
	blt _020809D4
_020809F8:
	ldr r0, [sp, #0xc]
	mov r7, #0
	cmp r0, #0
	ble _02080A30
	sub r6, r0, #1
_02080A0C:
	sub r0, r6, r7
	mov r0, r0, lsl #1
	ldrsh r4, [r1, r0]
	mov r0, r7, lsl #1
	add r7, r7, #1
	strh r4, [r5, r0]
	ldr r0, [sp, #0xc]
	cmp r7, r0
	blt _02080A0C
_02080A30:
	ldr r0, [sp, #0x10]
	mov r7, #0
	cmp r0, #0
	ble _02080A6C
	ldr r0, [sp, #0xc]
	add r1, r5, r0, lsl #1
_02080A48:
	ldr r0, [sp, #0x54]
	mov r6, r7, lsl #1
	add r0, r0, r6, lsl #1
	ldrsh r4, [r0, #2]
	ldr r0, [sp, #0x10]
	add r7, r7, #1
	cmp r7, r0
	strh r4, [r6, r1]
	blt _02080A48
_02080A6C:
	ldr r0, [sp, #0xc]
	mov r8, #0
	cmp r0, #0
	ble _02080C7C
_02080A7C:
	ldr r0, [sp, #0xc]
	sub r0, r0, #2
	sub r1, r0, r8
	mov r0, #0
	mov r4, r1, lsl #1
	str r0, [sp, #8]
	str r0, [sp, #4]
	str r0, [sp]
	mov r1, r0
	ldr r0, [sp, #0x10]
	ldrsh r6, [r11, r4]
	ldrsh r7, [r5, r4]
	cmp r0, #0
	ldr r4, [sp, #8]
	ble _02080BAC
	ldr r0, [sp, #0xc]
	sub r0, r0, #1
	str r0, [sp, #0x18]
_02080AC4:
	mov r9, r4, lsl #1
	mov r0, r9, lsl #1
	ldrsh r10, [r2, r0]
	add r0, r2, r9, lsl #1
	ldr r9, [sp, #0x18]
	str r0, [sp, #0x14]
	add r9, r9, r4
	sub r9, r9, r8
	mov r9, r9, lsl #1
	ldrsh r12, [r11, r9]
	ldrsh lr, [r5, r9]
	rsb r9, r10, #0
	mla r1, r10, r12, r1
	mov r9, r9, lsl #0x10
	mov r9, r9, asr #0x10
	mla r1, r9, lr, r1
	str r1, [sp, #0x1c]
	ldr r1, [sp, #4]
	ldrsh r0, [r0, #2]
	mla r1, r10, r6, r1
	mla r1, r9, r7, r1
	ldr r9, [sp]
	ldr r10, [sp, #0x1c]
	mla r9, r0, r12, r9
	mla r9, r0, lr, r9
	str r9, [sp, #0x20]
	ldr r9, [sp, #8]
	mla r6, r0, r6, r9
	mla r6, r0, r7, r6
	ldr r7, [sp, #0x14]
	ldr r0, [sp, #0x14]
	ldrsh r9, [r7, #6]
	ldr r7, [sp, #0xc]
	ldrsh r0, [r0, #4]
	add r7, r7, r4
	mla r6, r9, r12, r6
	mla r6, r9, lr, r6
	sub r7, r7, r8
	mla r1, r0, r12, r1
	mov r7, r7, lsl #1
	str r6, [sp, #8]
	ldrsh r6, [r11, r7]
	rsb r12, r0, #0
	ldrsh r7, [r5, r7]
	mla r10, r0, r6, r10
	mov r0, r12, lsl #0x10
	mov r0, r0, asr #0x10
	mla r1, r0, lr, r1
	str r1, [sp, #4]
	mla r1, r0, r7, r10
	ldr r0, [sp, #0x20]
	add r4, r4, #2
	mla r0, r9, r6, r0
	mla r0, r9, r7, r0
	str r0, [sp]
	ldr r0, [sp, #0x10]
	cmp r4, r0
	blt _02080AC4
_02080BAC:
	add r0, r1, #0x4000
	ldr r4, _02080CF0 ; =0x00007FFF
	mov r6, r0, asr #0xf
	cmp r4, r0, asr #15
	movlt r6, r4
	blt _02080BD0
	rsb r0, r4, #0
	cmp r6, r0
	movlt r6, r0
_02080BD0:
	ldr r1, [sp]
	mov r0, r8, lsl #1
	add r4, r1, #0x4000
	mov r1, r0, lsl #1
	strh r6, [r3, r1]
	ldr r6, _02080CF0 ; =0x00007FFF
	mov r1, r4, asr #0xf
	cmp r6, r4, asr #15
	movlt r1, r6
	blt _02080C04
	rsb r4, r6, #0
	cmp r1, r4
	movlt r1, r4
_02080C04:
	ldr r4, [sp, #4]
	ldr r6, _02080CF0 ; =0x00007FFF
	add r4, r4, #0x4000
	cmp r6, r4, asr #15
	mov r4, r4, asr #0xf
	add r7, r3, r0, lsl #1
	strh r1, [r7, #2]
	movlt r4, r6
	blt _02080C34
	rsb r1, r6, #0
	cmp r4, r1
	movlt r4, r1
_02080C34:
	ldr r1, [sp, #8]
	add r7, r3, r0, lsl #1
	ldr r6, _02080CF0 ; =0x00007FFF
	add r1, r1, #0x4000
	strh r4, [r7, #4]
	mov r4, r1, asr #0xf
	cmp r6, r1, asr #15
	movlt r4, r6
	blt _02080C64
	rsb r1, r6, #0
	cmp r4, r1
	movlt r4, r1
_02080C64:
	add r0, r3, r0, lsl #1
	strh r4, [r0, #6]
	ldr r0, [sp, #0xc]
	add r8, r8, #2
	cmp r8, r0
	blt _02080A7C
_02080C7C:
	ldr r0, [sp, #0x10]
	mov r3, #0
	cmp r0, #0
	ble _02080CB0
_02080C8C:
	mov r2, r3, lsl #1
	ldr r0, [sp, #0x50]
	ldrsh r1, [r11, r2]
	add r0, r0, r2, lsl #1
	add r3, r3, #1
	strh r1, [r0, #2]
	ldr r0, [sp, #0x10]
	cmp r3, r0
	blt _02080C8C
_02080CB0:
	ldr r0, [sp, #0x10]
	mov r3, #0
	cmp r0, #0
	addle sp, sp, #0x24
	ldmlefd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
_02080CC4:
	mov r2, r3, lsl #1
	ldr r0, [sp, #0x54]
	ldrsh r1, [r5, r2]
	add r0, r0, r2, lsl #1
	add r3, r3, #1
	strh r1, [r0, #2]
	ldr r0, [sp, #0x10]
	cmp r3, r0
	blt _02080CC4
	add sp, sp, #0x24
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
_02080CF0: .word 0x00007FFF
	arm_func_end FUN_02080920

	arm_func_start FUN_02080cf4
FUN_02080cf4: ; 0x02080CF4
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, lr}
	sub sp, sp, #0x80
	str r1, [sp, #4]
	str r0, [sp]
	mov r1, r0
	mov r0, r2
	sub r0, r1, r0, lsl #1
	str r2, [sp, #8]
	str r3, [sp, #0xc]
	mov r6, #0
	sub r5, r0, #6
	add r4, sp, #0x10
_02080D24:
	ldr r0, [sp]
	ldr r2, [sp, #0xc]
	add r1, r5, r6, lsl #1
	bl FUN_020819f0
	str r0, [r4, r6, lsl #2]
	add r6, r6, #1
	cmp r6, #7
	blt _02080D24
	mov r2, #0
	mov r11, r2
_02080D4C:
	ldr r4, _02080EF0 ; =0x0208D2C4
	mov r0, #0xe
	add r3, sp, #0x10
	mov r1, #0x1c
	mla r6, r11, r0, r4
	mla r7, r11, r1, r3
	ldr r8, _02080EF4 ; =0x00007FFF
	mov r12, #0
_02080D6C:
	rsbs lr, r12, #3
	rsb r4, r12, #0xa
	movmi lr, r2
	cmp r4, #7
	movgt r4, #7
	mov r5, r2
	cmp lr, r4
	bge _02080DC4
	add r1, r3, r12, lsl #2
_02080D90:
	add r0, r1, lr, lsl #2
	ldr r9, [r0, #-0xc]
	mov r0, lr, lsl #1
	ldrsh r0, [r6, r0]
	mov r10, r9, asr #0xf
	and r9, r9, r8
	smulbb r10, r0, r10
	smulbb r0, r0, r9
	add r0, r10, r0, asr #15
	add r5, r5, r0
	add lr, lr, #1
	cmp lr, r4
	blt _02080D90
_02080DC4:
	add r0, r7, r12, lsl #2
	str r5, [r0, #0x1c]
	add r12, r12, #1
	cmp r12, #7
	blt _02080D6C
	add r11, r11, #1
	cmp r11, #3
	mov r5, #0
	blt _02080D4C
	mov r2, r5
	ldr r6, [sp, #0x10]
	mov r1, r2
	mov r8, r2
	add r4, sp, #0x10
	mov r0, #0x1c
_02080E00:
	mla r7, r8, r0, r4
	mov r9, r5
_02080E08:
	ldr r3, [r7, r9, lsl #2]
	cmp r3, r6
	movgt r2, r9
	add r9, r9, #1
	movgt r6, r3
	movgt r1, r8
	cmp r9, #7
	blt _02080E08
	add r8, r8, #1
	cmp r8, #4
	blt _02080E00
	ldr r0, [sp, #0xc]
	cmp r0, #0
	mov r0, #0
	mov r7, r0
	ble _02080EDC
	ldr r4, _02080EF0 ; =0x0208D2C4
	sub r5, r1, #1
	mov r3, #0xe
	mla r4, r5, r3, r4
	ldr r3, [sp, #8]
	sub r3, r3, r2
	add r5, r3, #6
	add r6, r3, #3
_02080E68:
	mov r3, r0
	cmp r1, #0
	ble _02080EA4
	ldr r9, [sp]
	sub r10, r7, r5
	mov r8, r0
	add r11, r9, r10, lsl #1
_02080E84:
	mov r9, r8, lsl #1
	ldrsh r10, [r9, r11]
	ldrsh r9, [r4, r9]
	add r8, r8, #1
	smlabb r3, r10, r9, r3
	cmp r8, #7
	blt _02080E84
	b _02080EB8
_02080EA4:
	sub r3, r7, r6
	mov r8, r3, lsl #1
	ldr r3, [sp]
	ldrsh r3, [r3, r8]
	mov r3, r3, lsl #0xf
_02080EB8:
	add r3, r3, #0x4000
	mov r9, r3, asr #0xf
	mov r8, r7, lsl #1
	ldr r3, [sp, #4]
	add r7, r7, #1
	strh r9, [r3, r8]
	ldr r3, [sp, #0xc]
	cmp r7, r3
	blt _02080E68
_02080EDC:
	ldr r0, [sp, #8]
	sub r0, r0, r2
	add r0, r0, #3
	add sp, sp, #0x80
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_02080EF0: .word unk_0208D2C4
_02080EF4: .word 0x00007FFF
	arm_func_end FUN_02080cf4

	arm_func_start FUN_02080ef8
FUN_02080ef8: ; 0x02080EF8
	stmfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, lr}
	sub sp, sp, #0x1c
	ldr r3, [sp, #0x50]
	ldr r8, [sp, #0x40]
	rsb r2, r3, #2
	and r2, r2, #1
	add r2, r3, r2
	mov r6, r8, lsl #1
	add r2, r2, r6, lsl #1
	mov r5, #0x50
	mov r11, #0
	ldr r7, [sp, #0x44]
	sub r4, r2, r6, lsl #1
	mov r9, r1
	mov r1, r4
	mov r2, r7
	mov r3, r5
	mov r10, r0
	str r11, [sp, #0xc]
	bl FUN_02080cf4
	ldr r0, [sp, #0x48]
	mov r3, r5
	cmp r7, r0
	mov r0, r10
	add r1, r4, r8, lsl #1
	ble _02080F68
	mov r2, r7, lsl #1
	b _02080F6C
_02080F68:
	rsb r2, r7, #0
_02080F6C:
	bl FUN_02080cf4
	cmp r8, #0
	mov r2, #0
	ble _02080FAC
	ldr r0, _02081418 ; =0x00003FFF
_02080F80:
	mov r1, r2, lsl #1
	ldrsh r1, [r10, r1]
	cmp r1, #0
	rsblt r1, r1, #0
	cmp r1, r0
	movgt r0, #1
	strgt r0, [sp, #0xc]
	bgt _02080FAC
	add r2, r2, #1
	cmp r2, r8
	blt _02080F80
_02080FAC:
	ldr r0, [sp, #0xc]
	cmp r0, #0
	beq _02081014
	cmp r8, #0
	mov r2, #0
	ble _02080FEC
_02080FC4:
	mov r1, r2, lsl #1
	ldrsh r0, [r10, r1]
	add r2, r2, #1
	cmp r2, r8
	mov r0, r0, asr #1
	strh r0, [r10, r1]
	ldrsh r0, [r4, r1]
	mov r0, r0, asr #1
	strh r0, [r4, r1]
	blt _02080FC4
_02080FEC:
	mov r2, r8
	cmp r8, r6
	bge _02081014
_02080FF8:
	mov r1, r2, lsl #1
	ldrsh r0, [r4, r1]
	add r2, r2, #1
	cmp r2, r6
	mov r0, r0, asr #1
	strh r0, [r4, r1]
	blt _02080FF8
_02081014:
	mov r0, r4
	mov r1, r4
	mov r2, r8
	bl FUN_020819f0
	add r0, r0, #0x3e8
	bl FUN_020803e8
	add r1, r4, r8, lsl #1
	mov r11, r0
	mov r0, r1
	mov r2, r8
	str r1, [sp, #8]
	bl FUN_020819f0
	add r0, r0, #0x3e8
	bl FUN_020803e8
	mov r5, r0
	mov r0, r10
	mov r1, r10
	mov r2, r8
	bl FUN_020819f0
	add r0, r0, #1
	bl FUN_020803e8
	mov r6, r0
	mov r0, r4
	mov r1, r10
	mov r2, r8
	bl FUN_020819f0
	str r0, [sp, #0x18]
	cmp r0, #0
	movlt r0, #0
	strlt r0, [sp, #0x18]
	ldr r0, [sp, #8]
	mov r1, r10
	mov r2, r8
	bl FUN_020819f0
	str r0, [sp, #0x14]
	cmp r0, #0
	movlt r0, #0
	strlt r0, [sp, #0x14]
	cmp r6, r11, lsl #6
	ble _020810CC
	add r0, r6, #0x20
	mov r0, r0, lsl #0xa
	mov r0, r0, asr #0x10
	add r0, r0, #1
	mov r0, r0, lsl #0x10
	mov r11, r0, asr #0x10
_020810CC:
	cmp r6, r5, lsl #6
	ble _020810EC
	add r0, r6, #0x20
	mov r0, r0, lsl #0xa
	mov r0, r0, asr #0x10
	add r0, r0, #1
	mov r0, r0, lsl #0x10
	mov r5, r0, asr #0x10
_020810EC:
	mul r1, r11, r6
	ldr r0, [sp, #0x18]
	cmp r0, r1
	movgt r0, #0x4000
	strgt r0, [sp, #4]
	bgt _0208112C
	mov r1, r6
	add r0, r0, r6, asr #1
	bl _s32_div_f
	mov r0, r0, lsl #0xe
	mov r1, r11
	add r0, r0, r11, asr #1
	bl _s32_div_f
	mov r0, r0, lsl #0x10
	mov r0, r0, asr #0x10
	str r0, [sp, #4]
_0208112C:
	mul r1, r5, r6
	ldr r0, [sp, #0x14]
	cmp r0, r1
	movgt r0, #0x4000
	strgt r0, [sp]
	bgt _0208116C
	mov r1, r6
	add r0, r0, r6, asr #1
	bl _s32_div_f
	mov r0, r0, lsl #0xe
	mov r1, r5
	add r0, r0, r5, asr #1
	bl _s32_div_f
	mov r0, r0, lsl #0x10
	mov r0, r0, asr #0x10
	str r0, [sp]
_0208116C:
	mov r0, r11, asr #1
	mov r1, r11
	add r0, r0, r6, lsl #8
	bl _s32_div_f
	mov r2, r0, lsl #0x10
	mov r0, r5, asr #1
	mov r2, r2, asr #0x10
	add r0, r0, r6, lsl #8
	mov r1, r5
	str r2, [sp, #0x10]
	bl _s32_div_f
	ldrsh r2, [sp, #0x4c]
	mov r0, r0, lsl #0x10
	mov r11, r0, asr #0x10
	cmp r2, #0
	movle r3, #0
	movle r5, r3
	ble _020811F0
	ldr r0, _0208141C ; =0x00003333
	ldr r1, _02081420 ; =0xFFFFF70A
	smulbb r0, r2, r0
	mov r0, r0, asr #0xf
	add r0, r0, #0xf6
	add r0, r0, #0x800
	mov r0, r0, lsl #0x10
	ldr r2, _02081424 ; =0x00006E14
	add r1, r1, r0, asr #16
	smulbb r1, r1, r2
	mov r1, r1, asr #0xe
	add r1, r1, #0x4000
	mov r1, r1, lsl #0x10
	mov r5, r0, asr #0x10
	mov r3, r1, asr #0x10
_020811F0:
	ldr r0, [sp, #4]
	mul r2, r3, r0
	ldr r0, [sp]
	mul r1, r3, r0
	mov r0, r2, lsl #1
	mov r3, r0, asr #0x10
	ldr r0, [sp, #4]
	mov r1, r1, lsl #1
	mul r3, r0, r3
	mov r2, r1, asr #0x10
	ldr r0, [sp]
	ldr r1, _02081428 ; =0x00007FFF
	mul r2, r0, r2
	sub r0, r1, r3, asr #13
	mov r0, r0, lsl #0x10
	sub r1, r1, r2, asr #13
	mov r2, r1, lsl #0x10
	mov r1, r0, asr #0x10
	cmp r5, r0, asr #16
	movgt r1, r5
	mov r6, r2, asr #0x10
	mov r0, r1, asr #1
	cmp r6, r5
	movlt r6, r5
	add r0, r0, r5, lsl #14
	bl _s32_div_f
	mov r2, r0, lsl #0x10
	mov r0, r6, asr #1
	add r0, r0, r5, lsl #14
	mov r1, r6
	mov r5, r2, asr #0x10
	bl _s32_div_f
	ldr r1, [sp, #0x48]
	mov r0, r0, lsl #0x10
	cmp r7, r1
	mov r3, r0, asr #0x10
	ble _020812BC
	ldr r0, [sp, #0x10]
	smulbb r2, r3, r11
	smulbb r1, r5, r0
	ldr r0, _0208142C ; =0x0000599A
	mov r1, r1, asr #0xe
	smulbb r1, r1, r0
	mov r2, r2, asr #0xe
	rsb r0, r0, #0x8000
	smulbb r0, r2, r0
	mov r1, r1, lsl #1
	mov r0, r0, lsl #1
	mov r2, r1, asr #0x10
	mov r1, r0, asr #0x10
	b _020812EC
_020812BC:
	ldr r0, [sp, #0x10]
	smulbb r1, r3, r11
	smulbb r2, r5, r0
	ldr r0, _02081430 ; =0x00004CCD
	mov r2, r2, asr #0xe
	mov r1, r1, asr #0xe
	smulbb r1, r1, r0
	smulbb r2, r2, r0
	mov r0, r2, lsl #1
	mov r1, r1, lsl #1
	mov r2, r0, asr #0x10
	mov r1, r1, asr #0x10
_020812EC:
	cmp r8, #0
	mov r3, #0
	ble _02081330
	add r6, r4, r8, lsl #1
_020812FC:
	mov r0, r3, lsl #1
	ldrsh r5, [r0, r6]
	add r3, r3, #1
	ldrsh r7, [r4, r0]
	mul r5, r1, r5
	mla r5, r2, r7, r5
	add r5, r5, #0x80
	ldrsh r7, [r10, r0]
	mov r5, r5, lsl #8
	cmp r3, r8
	add r5, r7, r5, asr #16
	strh r5, [r9, r0]
	blt _020812FC
_02081330:
	mov r0, r9
	mov r1, r8
	bl FUN_0208055c
	mov r4, r0
	mov r0, r10
	mov r1, r8
	bl FUN_0208055c
	cmp r0, #1
	movlt r0, #1
	cmp r4, #1
	movlt r4, #1
	cmp r0, r4
	movgt r0, r4
	mov r2, r4, asr #1
	mov r1, r4
	add r0, r2, r0, lsl #14
	bl _s32_div_f
	mov r0, r0, lsl #0x10
	cmp r8, #0
	mov r2, r0, asr #0x10
	mov r3, #0
	ble _020813A8
_02081388:
	mov r1, r3, lsl #1
	ldrsh r0, [r9, r1]
	add r3, r3, #1
	cmp r3, r8
	mul r0, r2, r0
	mov r0, r0, asr #0xe
	strh r0, [r9, r1]
	blt _02081388
_020813A8:
	ldr r0, [sp, #0xc]
	cmp r0, #0
	addeq sp, sp, #0x1c
	ldmeqfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
	cmp r8, #0
	mov r4, #0
	addle sp, sp, #0x1c
	ldmlefd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
	ldr r2, _02081434 ; =0xFFFFC001
	mov r3, r2, lsr #0x12
_020813D0:
	mov r1, r4, lsl #1
	ldrsh r0, [r10, r1]
	mov r0, r0, lsl #1
	strh r0, [r10, r1]
	ldrsh r1, [r9, r1]
	cmp r1, r2, lsr #18
	movgt r1, r3
	bgt _020813F8
	cmp r1, r2
	movlt r1, r2
_020813F8:
	mov r0, r4, lsl #1
	mov r1, r1, lsl #1
	add r4, r4, #1
	strh r1, [r9, r0]
	cmp r4, r8
	blt _020813D0
	add sp, sp, #0x1c
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
_02081418: .word 0x00003FFF
_0208141C: .word 0x00003333
_02081420: .word 0xFFFFF70A
_02081424: .word 0x00006E14
_02081428: .word 0x00007FFF
_0208142C: .word 0x0000599A
_02081430: .word 0x00004CCD
_02081434: .word 0xFFFFC001
	arm_func_end FUN_02080ef8

	arm_func_start FUN_02081438
FUN_02081438: ; 0x02081438
	ldr r1, _020814F4 ; =0x00003244
	cmp r0, r1
	bge _02081498
	mul r1, r0, r0
	add r0, r1, #0x1000
	mov r2, r0, asr #0xd
	mov r0, r2, lsl #0x10
	mov r1, r0, asr #0x10
	mvn r0, #9
	mul r0, r1, r0
	add r0, r0, #0x1000
	mov r0, r0, asr #0xd
	add r0, r0, #0x154
	smulbb r0, r2, r0
	add r0, r0, #0x1000
	mov r0, r0, asr #0xd
	sub r0, r0, #0x1000
	smulbb r0, r2, r0
	add r0, r0, #0x1000
	mov r0, r0, asr #0xd
	add r0, r0, #0x2000
	mov r0, r0, lsl #0x10
	mov r0, r0, asr #0x10
	bx lr
_02081498:
	rsb r0, r0, r1, lsl #1
	smulbb r0, r0, r0
	add r0, r0, #0x1000
	mov r2, r0, asr #0xd
	mov r0, r2, lsl #0x10
	mov r1, r0, asr #0x10
	mvn r0, #9
	mul r0, r1, r0
	add r0, r0, #0x1000
	mov r0, r0, asr #0xd
	add r0, r0, #0x154
	smulbb r0, r2, r0
	add r0, r0, #0x1000
	mov r0, r0, asr #0xd
	sub r0, r0, #0x1000
	smulbb r1, r2, r0
	mov r0, #0x2000
	add r1, r1, #0x1000
	rsb r0, r0, #0
	sub r0, r0, r1, asr #13
	mov r0, r0, lsl #0x10
	mov r0, r0, asr #0x10
	bx lr
_020814F4: .word 0x00003244
	arm_func_end FUN_02081438

	arm_func_start FUN_020814f8
FUN_020814f8: ; 0x020814F8
	stmfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, lr}
	sub sp, sp, #0x1c
	str r2, [sp, #4]
	movs r2, r2, asr #1
	str r2, [sp, #8]
	rsb r2, r3, #4
	and r4, r2, #3
	ldr r2, [sp, #8]
	mov r7, r0
	add r9, r2, #1
	ldr r2, [sp, #4]
	str r1, [sp]
	add r6, r2, #3
	add r2, r3, r4
	add r4, r2, r9, lsl #2
	rsb r2, r4, #4
	and r2, r2, #3
	add r2, r4, r2
	mul r8, r9, r6
	add r5, r2, r8, lsl #2
	rsb r2, r5, #4
	and r2, r2, #3
	add r2, r5, r2
	add r2, r2, r9, lsl #2
	rsb r3, r2, #4
	and r3, r3, #3
	add r3, r2, r3
	sub r0, r5, r8, lsl #2
	add r3, r3, r8, lsl #2
	sub r4, r4, r9, lsl #2
	sub r5, r2, r9, lsl #2
	sub r9, r3, r8, lsl #2
	mov r8, #0
	bmi _020815A4
_02081580:
	mul r2, r8, r6
	add r1, r0, r2, lsl #2
	str r1, [r4, r8, lsl #2]
	add r1, r9, r2, lsl #2
	str r1, [r5, r8, lsl #2]
	ldr r1, [sp, #8]
	add r8, r8, #1
	cmp r8, r1
	ble _02081580
_020815A4:
	rsb r0, r3, #2
	and r0, r0, #1
	add r1, r3, r0
	ldr r0, [sp, #4]
	mov r8, #0
	add r1, r1, r0, lsl #1
	cmp r0, #0
	sub r6, r1, r0, lsl #1
	ble _020815F0
_020815C8:
	mov r0, r8, lsl #1
	ldrsh r0, [r7, r0]
	bl FUN_02081438
	mov r1, r8, lsl #1
	mov r0, r0, lsl #2
	strh r0, [r6, r1]
	ldr r0, [sp, #4]
	add r8, r8, #1
	cmp r8, r0
	blt _020815C8
_020815F0:
	ldr r0, [sp, #8]
	mov r1, #0
	cmp r0, #0
	mov r2, r1
	blt _02081654
	mov r0, #0x100000
_02081608:
	ldr r3, [r4, r2, lsl #2]
	mov r7, r2, lsl #1
	str r1, [r3, #4]
	ldr r3, [r4, r2, lsl #2]
	str r0, [r3, #8]
	ldr r3, [r4, r2, lsl #2]
	add r3, r3, r7, lsl #2
	str r0, [r3, #8]
	ldr r3, [r5, r2, lsl #2]
	str r1, [r3, #4]
	ldr r3, [r5, r2, lsl #2]
	str r0, [r3, #8]
	ldr r3, [r5, r2, lsl #2]
	add r2, r2, #1
	add r3, r3, r7, lsl #2
	str r0, [r3, #8]
	ldr r3, [sp, #8]
	cmp r2, r3
	ble _02081608
_02081654:
	ldr r1, [r4]
	mov r0, #0
	str r0, [sp, #0xc]
	ldr r1, [r1, #8]
	ldr r0, _020818C8 ; =0x00003FFF
	mov r2, r1, asr #0xe
	ldrsh r3, [r6]
	and r1, r1, r0
	smulbb r2, r3, r2
	smulbb r1, r3, r1
	add r2, r2, r1, asr #14
	ldr r1, [r4, #4]
	rsb r2, r2, #0
	str r2, [r1, #0xc]
	ldr r1, [r5]
	ldrsh r3, [r6, #2]
	ldr r7, [r1, #8]
	ldr r1, [r5, #4]
	mov r2, r7, asr #0xe
	and r0, r7, r0
	smulbb r2, r3, r2
	smulbb r0, r3, r0
	add r0, r2, r0, asr #14
	rsb r2, r0, #0
	ldr r0, [sp, #0xc]
	str r2, [r1, #0xc]
	str r0, [sp, #0x10]
	ldr r0, [sp, #8]
	mov r3, #1
	cmp r0, #1
	ble _02081838
_020816D0:
	add r0, r3, #1
	mov r0, r0, lsl #1
	sub r2, r0, #1
	cmp r2, #1
	mov r1, #1
	ble _020817A0
	mov r7, r3, lsl #1
	mov r0, r7, lsl #1
	add r7, r6, r7, lsl #1
	str r7, [sp, #0x18]
	add r7, r5, r3, lsl #2
	add r11, r4, r3, lsl #2
	str r7, [sp, #0x14]
_02081704:
	ldr r7, [r4, r3, lsl #2]
	ldrsh r10, [r6, r0]
	add r8, r7, r1, lsl #2
	ldr lr, [r8, #4]
	ldr r12, _020818C8 ; =0x00003FFF
	mov r9, lr, asr #0xe
	and r12, lr, r12
	smulbb r9, r10, r9
	smulbb r10, r10, r12
	ldr r8, [r8, #8]
	add r9, r9, r10, asr #14
	ldr r7, [r7, r1, lsl #2]
	sub r8, r8, r9
	add r8, r8, r7
	ldr r7, [r11, #4]
	ldr r12, _020818C8 ; =0x00003FFF
	add r7, r7, r1, lsl #2
	str r8, [r7, #8]
	ldr r8, [r5, r3, lsl #2]
	ldr r7, [sp, #0x18]
	ldr lr, [r8, r1, lsl #2]
	ldrsh r9, [r7, #2]
	add r7, r8, r1, lsl #2
	ldr r10, [r7, #4]
	ldr r8, [r7, #8]
	mov r7, r10, asr #0xe
	and r10, r10, r12
	smulbb r7, r9, r7
	smulbb r9, r9, r10
	add r7, r7, r9, asr #14
	sub r7, r8, r7
	add r8, r7, lr
	ldr r7, [sp, #0x14]
	ldr r7, [r7, #4]
	add r7, r7, r1, lsl #2
	add r1, r1, #1
	str r8, [r7, #8]
	cmp r1, r2
	blt _02081704
_020817A0:
	ldr r9, [r4, r3, lsl #2]
	mov r8, r3, lsl #1
	add r2, r9, r1, lsl #2
	ldr r11, [r9, r1, lsl #2]
	mov r0, r8, lsl #1
	ldr r7, [r2, #4]
	ldrsh r2, [r6, r0]
	add r9, r6, r8, lsl #1
	mov r0, r7, asr #0xe
	ldr r8, _020818C8 ; =0x00003FFF
	smulbb r0, r2, r0
	and r7, r7, r8
	smulbb r2, r2, r7
	add r0, r0, r2, asr #14
	add r10, r4, r3, lsl #2
	ldr r2, [r10, #4]
	sub r7, r11, r0
	add r2, r2, r1, lsl #2
	str r7, [r2, #8]
	add r0, r5, r3, lsl #2
	ldr r10, [r5, r3, lsl #2]
	ldr r7, [r0, #4]
	add r0, r10, r1, lsl #2
	ldrsh r2, [r9, #2]
	ldr r9, [r0, #4]
	ldr r0, [r10, r1, lsl #2]
	add r1, r7, r1, lsl #2
	and r7, r9, r8
	mov r8, r9, asr #0xe
	smulbb r8, r2, r8
	smulbb r2, r2, r7
	add r2, r8, r2, asr #14
	sub r0, r0, r2
	str r0, [r1, #8]
	ldr r0, [sp, #8]
	add r3, r3, #1
	cmp r3, r0
	blt _020816D0
_02081838:
	ldr r0, [sp, #4]
	cmp r0, #1
	addlt sp, sp, #0x1c
	mov r0, #1
	ldmltfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
	ldr r3, _020818CC ; =0xFFFF8001
	mov r2, r3, lsr #0x11
_02081854:
	ldr r1, [sp, #8]
	ldr r6, [r4, r1, lsl #2]
	ldr r7, [r5, r1, lsl #2]
	add r1, r6, r0, lsl #2
	add r6, r7, r0, lsl #2
	ldr r7, [r1, #8]
	ldr r1, [sp, #0x10]
	ldr r8, [r6, #8]
	add r1, r1, r7
	add r6, r1, r8
	ldr r1, [sp, #0xc]
	str r7, [sp, #0x10]
	sub r1, r6, r1
	add r1, r1, #0x80
	cmp r3, r1, asr #8
	mov r6, r1, asr #8
	ldr r1, [sp]
	movgt r6, r3
	cmp r6, r3, lsr #17
	add r1, r1, r0, lsl #1
	movgt r6, r2
	strh r6, [r1, #-2]
	ldr r1, [sp, #4]
	add r0, r0, #1
	str r8, [sp, #0xc]
	cmp r0, r1
	ble _02081854
	add sp, sp, #0x1c
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
_020818C8: .word 0x00003FFF
_020818CC: .word 0xFFFF8001
	arm_func_end FUN_020814f8

	arm_func_start FUN_020818d0
FUN_020818d0: ; 0x020818D0
	stmfd sp!, {r4, lr}
	ldr r3, _02081964 ; =0x00006488
	ldrsh r4, [r0]
	sub r3, r3, r2
	mov r3, r3, lsl #0x10
	mov r12, r3, asr #0x10
	sub r3, r1, #1
	cmp r4, r2
	strlth r2, [r0]
	mov r4, r3, lsl #1
	ldrsh r3, [r0, r4]
	sub r1, r1, #1
	cmp r3, r12
	strgth r12, [r0, r4]
	cmp r1, #1
	mov r3, #1
	ldmlefd sp!, {r4, pc}
_02081914:
	add r4, r0, r3, lsl #1
	ldrsh r12, [r4, #-2]
	mov lr, r3, lsl #1
	ldrsh r4, [r0, lr]
	add r12, r2, r12
	cmp r4, r12
	strlth r12, [r0, lr]
	add r12, r0, r3, lsl #1
	mov r4, r3, lsl #1
	ldrsh r12, [r12, #2]
	ldrsh lr, [r0, r4]
	add r3, r3, #1
	sub r12, r12, r2
	cmp lr, r12
	movgt r12, r12, asr #1
	addgt r12, r12, lr, asr #1
	strgth r12, [r0, r4]
	cmp r3, r1
	blt _02081914
	ldmfd sp!, {r4, pc}
_02081964: .word 0x00006488
	arm_func_end FUN_020818d0

	arm_func_start FUN_02081968
FUN_02081968: ; 0x02081968
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	ldr r5, [sp, #0x18]
	ldr r4, [sp, #0x1c]
	add r5, r5, #1
	mov r7, r0
	mov r0, r5, lsl #0xe
	mov r4, r4, lsl #0x10
	mov r6, r1
	mov r1, r4, asr #0x10
	mov r5, r2
	mov r4, r3
	bl _s32_div_f
	mov r0, r0, lsl #0x10
	mov r1, r0, asr #0x10
	rsb r0, r1, #0x4000
	mov r0, r0, lsl #0x10
	mov r2, r0, asr #0x10
	cmp r4, #0
	mov r0, #0
	ldmlefd sp!, {r3, r4, r5, r6, r7, pc}
_020819B8:
	mov lr, r0, lsl #1
	ldrsh r3, [r6, lr]
	ldrsh r12, [r7, lr]
	add r0, r0, #1
	mul r3, r1, r3
	mul r12, r2, r12
	add r3, r3, #0x2000
	add r12, r12, #0x2000
	mov r3, r3, asr #0xe
	add r3, r3, r12, asr #14
	strh r3, [r5, lr]
	cmp r0, r4
	blt _020819B8
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
	arm_func_end FUN_02081968

	arm_func_start FUN_020819f0
FUN_020819f0: ; 0x020819F0
	stmfd sp!, {r4, r5, r6, r7, r8, lr}
	movs r2, r2, asr #2
	sub r2, r2, #1
	mov r3, #0
	beq _02081A4C
_02081A04:
	ldrsh r5, [r0, #2]
	ldrsh r4, [r1, #2]
	ldrsh r8, [r0]
	ldrsh r7, [r1]
	smulbb lr, r5, r4
	smlabb r7, r8, r7, lr
	ldrsh r5, [r1, #4]
	ldrsh r6, [r0, #4]
	ldrsh lr, [r0, #6]
	ldrsh r12, [r1, #6]
	smlabb r4, r6, r5, r7
	smlabb r12, lr, r12, r4
	cmp r2, #0
	add r1, r1, #8
	add r0, r0, #8
	add r3, r3, r12, asr #6
	sub r2, r2, #1
	bne _02081A04
_02081A4C:
	mov r0, r3
	ldmfd sp!, {r4, r5, r6, r7, r8, pc}
	arm_func_end FUN_020819f0

	arm_func_start FUN_02081a54
FUN_02081a54: ; 0x02081A54
	stmfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, lr}
	sub sp, sp, #0xc
	ldr r3, [sp, #0x34]
	ldr r12, [sp, #0x44]
	ldr r5, [r3, #4]
	mov r4, #1
	mov r5, r4, lsl r5
	ldr r11, [r12, #0xc]
	mov r7, r0
	and r6, r11, #0x1f
	mov r0, r5, lsl #2
	ldr r4, [r12, #4]
	ldr r10, [r3]
	ldr r9, [sp, #0x58]
	ldr r8, [r3, #8]
	mla r0, r9, r0, r10
	ldr r9, [r4]
	rsb lr, r6, #0x20
	str r6, [sp]
	mov r6, r1
	add r1, r11, r8
	str r1, [r12, #0xc]
	cmp lr, r8
	ldrgt r1, [sp]
	ldr r5, [sp, #0x38]
	movgt r9, r9, lsl r1
	rsbgt r1, r8, #0x20
	ldr r4, [sp, #0x40]
	movgt r8, r9, lsr r1
	bgt _02081AFC
	ldr r10, [r12, #4]
	mov r1, #1
	add r10, r10, #4
	str r10, [r12, #4]
	mov r1, r1, lsl lr
	sub r1, r1, #1
	sub r8, r8, lr
	ldr r11, [r10]
	rsb r10, r8, #0x20
	mov r10, r11, lsr r10
	and r1, r9, r1
	orr r8, r10, r1, lsl r8
_02081AFC:
	ldr r10, [r12, #4]
	ldr r9, [r12, #0xc]
	ldr r1, [r3, #4]
	and r11, r9, #0x1f
	rsb r3, r11, #0x20
	ldr r10, [r10]
	add r9, r9, r1
	cmp r3, r1
	add r8, r8, r2
	movgt r2, r10, lsl r11
	rsbgt r1, r1, #0x20
	str r9, [r12, #0xc]
	movgt r1, r2, lsr r1
	bgt _02081B64
	ldr r2, [r12, #4]
	mov r9, #1
	add r2, r2, #4
	str r2, [r12, #4]
	mov r9, r9, lsl r3
	sub r3, r1, r3
	sub r9, r9, #1
	ldr r2, [r2]
	rsb r1, r3, #0x20
	mov r1, r2, lsr r1
	and r2, r10, r9
	orr r1, r1, r2, lsl r3
_02081B64:
	mov r3, r1, lsl #2
	add r2, r3, #1
	add r1, r3, #2
	ldrsb r3, [r0, r3]
	ldrsb r2, [r0, r2]
	ldrsb r0, [r0, r1]
	ldr r1, [sp, #0x4c]
	add r3, r3, #0x20
	add r0, r0, #0x20
	add r2, r2, #0x20
	strh r0, [sp, #8]
	cmp r1, #0
	ldrne r0, [sp, #0x50]
	strh r3, [sp, #4]
	strh r2, [sp, #6]
	cmpne r8, r0
	ble _02081C44
	cmp r1, #4
	ldrltsh r0, [sp, #0x54]
	ldrsh r1, [sp, #4]
	ldrsh r3, [sp, #6]
	ldrgesh r0, [sp, #0x54]
	ldrsh r9, [sp, #8]
	movge r0, r0, asr #1
	mov r0, r0, lsl #0x10
	mov r2, r0, asr #0x10
	cmp r2, #0x3e
	movgt r2, #0x3e
	cmp r1, #0
	movle r0, r1, asr #1
	rsble r1, r0, #0
	cmp r3, #0
	rsblt r3, r3, #0
	cmp r9, #0
	movle r0, r9, asr #1
	rsble r9, r0, #0
	add r0, r3, r1
	add r0, r9, r0
	mov r0, r0, lsl #0x10
	cmp r2, r0, asr #16
	mov r1, r0, asr #0x10
	bge _02081C44
	mov r0, r2, lsl #0xe
	mov r9, #0
	bl _s32_div_f
	mov r0, r0, lsl #0x10
	mov r3, r0, asr #0x10
	add r1, sp, #4
_02081C24:
	mov r2, r9, lsl #1
	ldrsh r0, [r1, r2]
	add r9, r9, #1
	cmp r9, #3
	mul r0, r3, r0
	mov r0, r0, asr #0xe
	strh r0, [r1, r2]
	blt _02081C24
_02081C44:
	ldr r2, [sp, #0x3c]
	ldrsh r1, [sp, #4]
	ldrsh r0, [sp, #6]
	ldrsh r12, [sp, #8]
	str r8, [r2]
	strh r1, [r4]
	mov r9, #0
	strh r0, [r4, #2]
	mov r11, r1, lsl #7
	mov r10, r0, lsl #7
	mov r3, r12, lsl #7
	mov r0, r9
	mov r1, r6
	mov r2, r5, lsl #2
	strh r12, [r4, #4]
	strh r11, [sp, #4]
	strh r10, [sp, #6]
	strh r3, [sp, #8]
	bl MIi_CpuClear32
_02081C90:
	add r0, r8, #1
	sub r1, r0, r9
	mov r3, r5
	cmp r5, r1
	movgt r3, r1
	cmp r3, #0
	mov r0, #0
	ble _02081CE4
	rsb r4, r9, #2
	add r2, sp, #4
	mov r4, r4, lsl #1
	ldrsh r10, [r2, r4]
_02081CC0:
	sub r2, r0, r1
	mov r2, r2, lsl #1
	ldrsh r2, [r7, r2]
	ldr r4, [r6, r0, lsl #2]
	mla r2, r10, r2, r4
	str r2, [r6, r0, lsl #2]
	add r0, r0, #1
	cmp r0, r3
	blt _02081CC0
_02081CE4:
	add r2, r1, r8
	mov r0, r5
	cmp r5, r2
	movgt r0, r2
	cmp r3, r0
	bge _02081D34
	rsb r4, r9, #2
	add r2, sp, #4
	mov r4, r4, lsl #1
	ldrsh r2, [r2, r4]
_02081D0C:
	sub r4, r3, r1
	sub r4, r4, r8
	mov r4, r4, lsl #1
	ldrsh r4, [r7, r4]
	ldr r10, [r6, r3, lsl #2]
	mla r4, r2, r4, r10
	str r4, [r6, r3, lsl #2]
	add r3, r3, #1
	cmp r3, r0
	blt _02081D0C
_02081D34:
	add r9, r9, #1
	cmp r9, #3
	blt _02081C90
	add sp, sp, #0xc
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
	arm_func_end FUN_02081a54

	arm_func_start FUN_02081d48
FUN_02081d48: ; 0x02081D48
	stmfd sp!, {r4, r5, r6, r7, r8, r9, r10, lr}
	sub sp, sp, #0x10
	ldrsh r1, [sp, #0x44]
	ldr lr, [sp, #0x54]
	mov r6, r0
	cmp r1, #0x3f
	movgt r0, #0x3f
	strgth r0, [sp, #0x44]
	rsb r4, lr, #2
	and r5, r4, #1
	ldrsh r9, [sp, #0x44]
	ldr r4, [sp, #0x4c]
	add r5, lr, r5
	add lr, r5, r4, lsl #1
	mov r0, r9, lsl #0x17
	sub r7, lr, r4, lsl #1
	ldr r8, [sp, #0x34]
	ldr r5, [sp, #0x3c]
	ldr r10, [sp, #0x58]
	mov r1, #0
	mov r0, r0, asr #0x10
	b _02081DB8
_02081DA0:
	sub r12, r1, r5
	mov r12, r12, lsl #1
	ldrsh r12, [r10, r12]
	mul r12, r0, r12
	str r12, [r8, r1, lsl #2]
	add r1, r1, #1
_02081DB8:
	cmp r1, r4
	bge _02081DC8
	cmp r1, r5
	blt _02081DA0
_02081DC8:
	cmp r1, r4
	bge _02081E14
	mov r0, r9, lsl #0x19
	ldr r9, _02081EC4 ; =0x00007FFF
	mov r12, r0, asr #0x10
_02081DDC:
	sub r0, r1, r5
	ldr r0, [r8, r0, lsl #2]
	and r10, r0, r9
	mov r0, r0, lsl #1
	mov r10, r10, lsl #0x10
	mov r0, r0, asr #0x10
	mov r10, r10, asr #0x10
	mul r0, r12, r0
	mul r10, r12, r10
	add r0, r0, r10, asr #15
	str r0, [r8, r1, lsl #2]
	add r1, r1, #1
	cmp r1, r4
	blt _02081DDC
_02081E14:
	cmp r4, #0
	mov r9, #0
	ble _02081E40
_02081E20:
	ldr r1, [r8, r9, lsl #2]
	mov r0, r9, lsl #1
	add r1, r1, #0x1000
	mov r1, r1, asr #0xd
	add r9, r9, #1
	strh r1, [r7, r0]
	cmp r9, r4
	blt _02081E20
_02081E40:
	str r7, [sp]
	mov r1, r2
	mov r2, r3
	ldr r0, [sp, #0x48]
	str r4, [sp, #4]
	str r0, [sp, #8]
	ldr r3, [sp, #0x30]
	mov r0, r7
	str lr, [sp, #0xc]
	bl FUN_02080874
	cmp r4, #0
	mov r9, #0
	ble _02081EB8
	ldr r2, _02081EC8 ; =0xFFFF8044
	rsb r3, r2, #0
	mov r0, r3
_02081E80:
	mov r1, r9, lsl #1
	ldrsh r8, [r6, r1]
	ldrsh r1, [r7, r1]
	sub r8, r8, r1
	cmp r8, r0
	movgt r8, r3
	bgt _02081EA4
	cmp r8, r2
	movlt r8, r2
_02081EA4:
	mov r1, r9, lsl #1
	add r9, r9, #1
	strh r8, [r6, r1]
	cmp r9, r4
	blt _02081E80
_02081EB8:
	mov r0, r5
	add sp, sp, #0x10
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, pc}
_02081EC4: .word 0x00007FFF
_02081EC8: .word 0xFFFF8044
	arm_func_end FUN_02081d48

	arm_func_start FUN_02081ecc
FUN_02081ecc: ; 0x02081ECC
	stmfd sp!, {r4, r5, r6, r7, r8, lr}
	ldr r5, [sp, #0x18]
	ldr r4, [sp, #0x20]
	cmp r5, #0x3f
	movgt r5, #0x3f
	ldr lr, [sp, #0x28]
	cmp r4, #0
	mov r3, #0
	ble _02081F28
	mov r12, r5, lsl #0x17
	mov r12, r12, asr #0x10
_02081EF8:
	sub r6, r3, r2
	mov r6, r6, lsl #1
	ldrsh r7, [r0, r6]
	mov r6, r3, lsl #1
	mul r8, r12, r7
	add r7, r8, #0x1000
	str r8, [r1, r3, lsl #2]
	mov r7, r7, asr #0xd
	add r3, r3, #1
	strh r7, [r0, r6]
	cmp r3, r4
	blt _02081EF8
_02081F28:
	ldr r1, [sp, #0x24]
	mov r0, #0
	str r2, [r1]
	strh r0, [lr, #4]
	strh r0, [lr]
	strh r5, [lr, #2]
	ldmfd sp!, {r4, r5, r6, r7, r8, pc}
	arm_func_end FUN_02081ecc

	arm_func_start FUN_02081f44
FUN_02081f44: ; 0x02081F44
	cmp r1, #0
	beq _02081F58
	cmp r1, #1
	beq _02081F68
	b _02081F9C
_02081F58:
	ldr r0, [r0, #4]
	mov r0, r0, lsl #1
	str r0, [r2]
	b _02081FA4
_02081F68:
	ldr r1, [r2]
	cmp r1, #0
	moveq r0, #4
	streq r0, [r2]
	beq _02081FA4
	add r0, r0, r1, lsl #2
	ldr r0, [r0, #0x18]
	cmp r0, #0
	mvneq r0, #0
	streq r0, [r2]
	ldrne r0, [r0, #0x34]
	strne r0, [r2]
	b _02081FA4
_02081F9C:
	mvn r0, #0
	bx lr
_02081FA4:
	mov r0, #0
	bx lr
	arm_func_end FUN_02081f44

	arm_func_start FUN_02081fac
FUN_02081fac: ; 0x02081FAC
	mov r1, r0
	cmp r0, #0x10000
	mov r2, #0
	movhs r1, r0, lsr #0x10
	addhs r2, r2, #8
	cmp r1, #0x100
	movhs r1, r1, lsr #8
	addhs r2, r2, #4
	cmp r1, #0x10
	movhs r1, r1, lsr #4
	addhs r2, r2, #2
	cmp r1, #4
	addhs r2, r2, #1
	mov r1, r2, lsl #0x10
	mov r1, r1, asr #0x10
	sub r1, r1, #6
	mov r2, r1, lsl #1
	cmp r2, #0
	movgt r12, r0, asr r2
	rsble r2, r2, #0
	movle r12, r0, lsl r2
	mov r0, r12, lsl #0x10
	ldr r2, _0208206C ; =0x0000106C
	mov r3, r0, asr #0x10
	mul r0, r3, r2
	ldr r2, _02082070 ; =0xFFFFCEAD
	mov r0, r0, lsl #2
	add r0, r2, r0, asr #16
	smulbb r0, r12, r0
	mov r0, r0, lsl #2
	mov r0, r0, asr #0x10
	add r0, r0, #0xb5
	add r0, r0, #0x5200
	smulbb r0, r12, r0
	mov r0, r0, lsl #2
	mov r0, r0, asr #0x10
	add r0, r0, #0x32
	add r0, r0, #0xe00
	mov r0, r0, lsl #0x10
	rsb r1, r1, #7
	mov r2, r0, asr #0x10
	cmp r1, #0
	movgt r0, r2, asr r1
	rsble r0, r1, #0
	movle r0, r2, lsl r0
	mov r0, r0, lsl #0x10
	mov r0, r0, asr #0x10
	bx lr
_0208206C: .word 0x0000106C
_02082070: .word 0xFFFFCEAD
	arm_func_end FUN_02081fac

	arm_func_start FUN_02082074
FUN_02082074: ; 0x02082074
	stmfd sp!, {r4, r5, r6, r7, r8, lr}
	mov r6, r1
	mov r4, #1
	str r4, [r6, #0x70]
	ldr r5, [r0]
	stmia r6, {r0, r4}
	ldr r0, [r5]
	str r0, [r6, #0xc]
	ldmia r5, {r0, r1}
	bl _s32_div_f
	str r0, [r6, #0x14]
	ldr r7, [r5, #4]
	mov r0, r0, lsl #2
	str r7, [r6, #0x10]
	ldr r8, [r5, #8]
	ldr r12, [r6, #0xc]
	str r8, [r6, #0x18]
	ldr r2, [r5, #0xc]
	mov r1, r8, lsl #1
	add r1, r1, #0xf
	str r2, [r6, #0x1c]
	bic r3, r1, #0xf
	mov r1, r8, lsl #2
	ldr lr, [r5, #0x10]
	add r1, r1, #0xf
	bic r2, r1, #0xf
	add r1, r5, #0x1c
	str r1, [r6, #0x74]
	str lr, [r6, #0x20]
	ldr r5, [r5, #0x5c]
	ldr r1, [r6, #0x1f0]
	str r4, [r6, #0x7c]
	add r4, r12, lr, lsl #1
	add r4, r7, r4
	add r4, r4, #0xc
	mov r4, r4, lsl #1
	add r4, r4, #0xf
	bic r4, r4, #0xf
	add r8, r1, r4
	str r5, [r6, #0x78]
	add r5, r12, lr
	add r12, r8, r3
	add r0, r0, #0xf
	add r4, r1, lr, lsl #2
	str r8, [r6, #0x3c]
	add r8, r12, r3
	add r7, r4, r7, lsl #1
	add lr, r8, r2
	add r3, r7, #0xc
	bic r0, r0, #0xf
	str r12, [r6, #0x38]
	add r12, lr, r0
	mov r4, #0
	mov r0, r4
	mov r2, r5, lsl #1
	str r8, [r6, #0x40]
	str r1, [r6, #0x30]
	str lr, [r6, #0x4c]
	str r12, [r6, #0x2c]
	str r3, [r6, #0x34]
	bl MIi_CpuClear32
	ldr r0, _020821F0 ; =FUN_02080358
	mov r3, #0x28
	mov r2, #0x3e8
	mov r1, #0x1f40
	str r0, [r6, #0x1c4]
	str r3, [r6, #0x5c]
	str r4, [r6, #8]
	strh r4, [r6, #0x66]
	strh r4, [r6, #0x64]
	strh r4, [r6, #0x62]
	str r4, [r6, #0x68]
	str r2, [r6, #0x6c]
	str r1, [r6, #0x24]
	strh r4, [r6, #0x28]
	str r4, [r6, #0x1c8]
	mov r5, r4
	mov r0, #0x14
_020821AC:
	mla r1, r4, r0, r6
	add r4, r4, #1
	str r5, [r1, #0x84]
	cmp r4, #0x10
	blt _020821AC
	add r1, r6, #0x100
	strh r5, [r1, #0xdc]
	ldrsh r3, [r1, #0xdc]
	mov r2, #1
	mov r0, r6
	str r3, [r6, #0x1d8]
	strh r3, [r1, #0xd4]
	str r5, [r6, #0x1e0]
	str r5, [r6, #0x1e4]
	str r5, [r6, #0x1e8]
	str r2, [r6, #0x1ec]
	ldmfd sp!, {r4, r5, r6, r7, r8, pc}
_020821F0: .word FUN_02080358
	arm_func_end FUN_02082074

	arm_func_start FUN_020821F4
FUN_020821F4: ; 0x020821F4
	bx lr
	arm_func_end FUN_020821F4

	arm_func_start FUN_020821f8
FUN_020821f8: ; 0x020821F8
	stmfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, lr}
	sub sp, sp, #0x8c
	mov r3, #0
	mov r10, r0
	mov r0, r3
	str r0, [sp, #0x68]
	str r0, [sp, #0x30]
	str r0, [sp, #0x5c]
	ldr r0, [r10, #0x2c]
	str r3, [sp, #0x6c]
	str r0, [sp, #0x60]
	mov r0, #0x28
	movs r9, r1
	str r2, [sp, #0x2c]
	str r0, [sp, #0x64]
	bne _0208224C
	ldr r0, [r10, #0x1e4]
	cmp r0, #0
	movne r0, r3
	strne r0, [r10, #0x78]
	bne _020822E0
_0208224C:
	ldr r0, [r10, #0x70]
	cmp r0, #0
	beq _020822E0
	mov r3, #1
_0208225C:
	ldr r0, [r9, #0xc]
	ldr r1, [r9, #0xc]
	and r0, r0, #0x1f
	cmp r0, #0x1f
	ldreq r0, [r9, #4]
	add r5, r1, #1
	addeq r0, r0, #4
	streq r0, [r9, #4]
	and r1, r5, #0x1f
	rsb r2, r1, #0x20
	ldr r0, [r9, #4]
	str r5, [r9, #0xc]
	ldr r4, [r0]
	add r0, r5, #4
	str r0, [r9, #0xc]
	cmp r2, #4
	movgt r0, r4, lsl r1
	movgt r0, r0, lsr #0x1c
	bgt _020822D4
	ldr r0, [r9, #4]
	mov r1, r3, lsl r2
	sub r1, r1, #1
	and r4, r4, r1
	add r1, r0, #4
	str r1, [r9, #4]
	rsb r2, r2, #4
	ldr r1, [r0, #4]
	rsb r0, r2, #0x20
	mov r0, r1, lsr r0
	orr r0, r0, r4, lsl r2
_020822D4:
	cmp r0, #8
	bgt _0208225C
	str r0, [r10, #0x78]
_020822E0:
	ldr r2, [r10, #0x10]
	ldr r0, [r10, #0x20]
	ldr r1, [r10, #0x30]
	add r0, r2, r0, lsl #1
	add r2, r0, #0xc
	ldr r3, [r10, #0xc]
	mov r2, r2, lsl #1
	add r0, r1, r3, lsl #1
	bl MIi_CpuCopyFast
	ldr r0, [sp, #0x60]
	ldr r4, [r10, #0x74]
	rsb r0, r0, #2
	and r1, r0, #1
	ldr r0, [sp, #0x60]
	ldr r3, [r10, #0x78]
	add r0, r0, r1
	ldr r1, [r10, #0x18]
	ldr r3, [r4, r3, lsl #2]
	add r0, r0, r1, lsl #1
	str r0, [sp, #0x60]
	sub r0, r0, r1, lsl #1
	ldr r3, [r3, #0x14]
	mov r2, r9
	str r0, [sp, #0x4c]
	blx r3
	ldr r0, [r10, #8]
	cmp r0, #0
	beq _02082398
	ldr r1, [r10, #0x18]
	ldr r0, [r10, #0x40]
	cmp r1, #0
	mov r6, #0
	ble _02082398
	ldr r2, _02083178 ; =0x00004CCD
	ldr r1, _0208317C ; =0x00007FFF
_0208236C:
	ldr r5, [r0]
	add r6, r6, #1
	mov r3, r5, asr #0xf
	smulbb r4, r3, r2
	and r3, r5, r1
	smulbb r3, r3, r2
	add r3, r4, r3, asr #15
	str r3, [r0], #4
	ldr r3, [r10, #0x18]
	cmp r6, r3
	blt _0208236C
_02082398:
	ldr r0, [r10, #4]
	cmp r0, #0
	bne _020823B0
	ldr r0, [r10, #8]
	cmp r0, #0
	beq _020823E4
_020823B0:
	ldr r0, [r10, #0x18]
	mov r3, #0
	cmp r0, #0
	ble _020823E4
_020823C0:
	ldr r0, [sp, #0x4c]
	mov r2, r3, lsl #1
	ldrsh r1, [r0, r2]
	ldr r0, [r10, #0x38]
	add r3, r3, #1
	strh r1, [r0, r2]
	ldr r0, [r10, #0x18]
	cmp r3, r0
	blt _020823C0
_020823E4:
	ldr r1, [r10, #0x74]
	ldr r0, [r10, #0x78]
	ldr r0, [r1, r0, lsl #2]
	ldr r0, [r0]
	cmn r0, #1
	beq _02082460
	ldr r1, [r9, #0xc]
	ldr r5, [r9, #4]
	and r3, r1, #0x1f
	rsb r2, r3, #0x20
	ldr r0, [r5]
	cmp r2, #7
	add r1, r1, #7
	movgt r0, r0, lsl r3
	str r1, [r9, #0xc]
	movgt r1, r0, lsr #0x19
	bgt _02082454
	add r1, r5, #4
	str r1, [r9, #4]
	mov r1, #1
	mov r1, r1, lsl r2
	rsb r3, r2, #7
	sub r4, r1, #1
	ldr r2, [r5, #4]
	rsb r1, r3, #0x20
	and r4, r0, r4
	mov r0, r2, lsr r1
	orr r1, r0, r4, lsl r3
_02082454:
	ldr r0, [r10, #0x1c]
	add r0, r0, r1
	str r0, [sp, #0x6c]
_02082460:
	ldr r1, [r10, #0x74]
	ldr r0, [r10, #0x78]
	ldr r0, [r1, r0, lsl #2]
	ldr r0, [r0, #4]
	cmp r0, #0
	beq _020824EC
	ldr r1, [r9, #0xc]
	ldr r5, [r9, #4]
	and r3, r1, #0x1f
	rsb r2, r3, #0x20
	ldr r0, [r5]
	cmp r2, #4
	add r1, r1, #4
	movgt r0, r0, lsl r3
	str r1, [r9, #0xc]
	movgt r1, r0, lsr #0x1c
	bgt _020824D0
	add r1, r5, #4
	str r1, [r9, #4]
	mov r1, #1
	mov r1, r1, lsl r2
	rsb r3, r2, #4
	sub r4, r1, #1
	ldr r2, [r5, #4]
	rsb r1, r3, #0x20
	and r4, r0, r4
	mov r0, r2, lsr r1
	orr r1, r0, r4, lsl r3
_020824D0:
	ldr r0, _02083180 ; =0x00000889
	mov r1, r1, lsl #6
	smulbb r0, r1, r0
	add r0, r0, #0x4000
	mov r0, r0, lsl #1
	mov r0, r0, asr #0x10
	str r0, [sp, #0x68]
_020824EC:
	ldr r1, [r9, #0xc]
	ldr r0, [r9, #4]
	and r3, r1, #0x1f
	rsb r2, r3, #0x20
	ldr r4, [r0]
	cmp r2, #5
	add r1, r1, #5
	movgt r0, r4, lsl r3
	str r1, [r9, #0xc]
	movgt r1, r0, lsr #0x1b
	bgt _02082544
	add r1, r0, #4
	str r1, [r9, #4]
	mov r1, #1
	mov r1, r1, lsl r2
	sub r1, r1, #1
	and r3, r4, r1
	rsb r2, r2, #5
	ldr r1, [r0, #4]
	rsb r0, r2, #0x20
	mov r0, r1, lsr r0
	orr r1, r0, r3, lsl r2
_02082544:
	ldr r0, [sp, #0x60]
	ldr r4, _02083184 ; =0x0208EA40
	rsb r0, r0, #2
	and r2, r0, #1
	ldr r0, [sp, #0x60]
	ldr r3, [r10, #0x18]
	add r0, r0, r2
	add r2, r0, r3, lsl #1
	rsb r0, r2, #4
	and r0, r0, #3
	sub r5, r2, r3, lsl #1
	add r2, r2, r0
	ldr r0, [r10, #0x10]
	ldr r7, [r4, r1, lsl #2]
	add r3, r2, r0, lsl #2
	ldr r2, _02083188 ; =0x00006EF6
	mov r1, r7, asr #0xf
	smulbb r6, r1, r2
	ldr r1, _0208317C ; =0x00007FFF
	sub r4, r3, r0, lsl #2
	and r1, r7, r1
	smulbb r1, r1, r2
	add r1, r6, r1, asr #15
	str r1, [sp, #0x70]
	rsb r1, r3, #4
	and r1, r1, #3
	add r1, r3, r1
	add r1, r1, r0, lsl #2
	sub r0, r1, r0, lsl #2
	str r0, [sp, #0x58]
	ldr r0, [r10, #0x78]
	str r1, [sp, #0x60]
	cmp r0, #1
	bne _02082638
	ldr r0, [r9, #4]
	ldr r1, [r9, #0xc]
	ldr r6, [r0]
	and r3, r1, #0x1f
	rsb r2, r3, #0x20
	cmp r2, #4
	movgt r0, r6, lsl r3
	add r1, r1, #4
	str r1, [r9, #0xc]
	movgt r0, r0, lsr #0x1c
	bgt _02082624
	mov r1, #1
	mov r1, r1, lsl r2
	sub r1, r1, #1
	and r3, r6, r1
	rsb r2, r2, #4
	add r1, r0, #4
	str r1, [r9, #4]
	ldr r1, [r0, #4]
	rsb r0, r2, #0x20
	mov r0, r1, lsr r0
	orr r0, r0, r3, lsl r2
_02082624:
	cmp r0, #0xf
	moveq r0, #1
	streq r0, [r10, #0x1e4]
	movne r0, #0
	strne r0, [r10, #0x1e4]
_02082638:
	ldr r0, [r10, #0x78]
	cmp r0, #1
	movgt r0, #0
	strgt r0, [r10, #0x1e4]
	mov r0, #0
	str r0, [sp, #0x74]
	ldr r0, [r10, #0x14]
	cmp r0, #0
	ble _02082DD4
	ldr r0, [sp, #0x70]
	ldr r1, _0208318C ; =0x00003FFF
	mov r2, r0, lsl #2
	and r0, r0, r1
	mov r0, r0, lsl #0x10
	mov r0, r0, asr #0x10
	str r0, [sp, #0x48]
	mov r0, r2, asr #0x10
	str r0, [sp, #0x44]
	ldr r0, [sp, #0x68]
	sub r1, r0, #0xd
	mov r0, #0x6000
	smulbb r0, r1, r0
	add r0, r0, #0x2000
	mov r0, r0, asr #0xe
	str r0, [sp, #0x40]
	ldr r0, [sp, #0x6c]
	mov r0, r0, lsl #0x10
	mov r0, r0, asr #0xf
	str r0, [sp, #0x3c]
	ldr r0, [sp, #0x70]
	add r0, r0, #0x2000
	mov r0, r0, lsl #2
	mov r0, r0, asr #0x10
	str r0, [sp, #0x38]
_020826C0:
	ldr r2, [r10, #0x10]
	ldr r0, [sp, #0x74]
	ldr r1, [r10, #0x34]
	mul r7, r2, r0
	ldr r0, [r10, #0x50]
	add r6, r1, r7, lsl #1
	mov r11, #0
	cmp r0, #0
	mov r8, #0
	addne r11, r0, r7, lsl #1
	mov r2, r2, lsl #1
	mov r0, r8
	mov r1, r6
	bl MIi_CpuClear32
	ldr r2, [r10, #0x74]
	ldr r0, [r10, #0x78]
	sub r1, r8, #1
	ldr r8, [r2, r0, lsl #2]
	ldr r0, [r8]
	cmp r0, r1
	beq _02082758
	cmp r0, #0
	beq _0208274C
	ldr r1, [sp, #0x6c]
	sub r1, r1, r0
	add r2, r1, #1
	ldr r1, [r10, #0x1c]
	cmp r2, r1
	movlt r2, r1
	ldr r1, [sp, #0x6c]
	add r3, r1, r0
	ldr r0, [r10, #0x20]
	cmp r3, r0
	movgt r3, r0
	b _02082760
_0208274C:
	ldr r3, [sp, #0x6c]
	mov r2, r3
	b _02082760
_02082758:
	ldr r2, [r10, #0x1c]
	ldr r3, [r10, #0x20]
_02082760:
	ldr r0, [sp, #0x68]
	add r1, sp, #0x88
	str r0, [sp]
	ldr r0, [r8, #0x20]
	str r0, [sp, #4]
	ldr r12, [r10, #0x10]
	add r0, sp, #0x80
	str r12, [sp, #8]
	str r1, [sp, #0xc]
	str r0, [sp, #0x10]
	ldr r0, [sp, #0x60]
	str r9, [sp, #0x14]
	str r0, [sp, #0x18]
	ldr r0, [r10, #8]
	ldr r1, [sp, #0x58]
	str r0, [sp, #0x1c]
	str r7, [sp, #0x20]
	ldrsh r7, [r10, #0x60]
	mov r0, r6
	str r7, [sp, #0x24]
	mov r7, #0
	str r7, [sp, #0x28]
	ldr r7, [r8, #0x1c]
	blx r7
	mov r0, #0
	sub r1, r0, #0xfa00000
	ldr r0, [sp, #0x58]
	ldr r3, [r10, #0x10]
	mov r2, #0xfa00000
	bl FUN_020804b0
	ldrsh r1, [sp, #0x80]
	ldrsh r2, [sp, #0x82]
	ldrsh r3, [sp, #0x84]
	cmp r1, #0
	movle r0, r1, asr #1
	rsble r1, r0, #0
	cmp r2, #0
	rsblt r2, r2, #0
	cmp r3, #0
	movle r0, r3, asr #1
	rsble r3, r0, #0
	add r0, r2, r1
	add r0, r3, r0
	mov r2, r0, lsl #0x10
	ldr r1, [sp, #0x5c]
	ldr r0, [sp, #0x30]
	add r1, r1, r2, asr #16
	mov r1, r1, lsl #0x10
	mov r1, r1, asr #0x10
	cmp r0, r2, asr #16
	mov r0, r2, asr #0x10
	str r1, [sp, #0x5c]
	bge _02082878
	ldr r1, [sp, #0x88]
	ldr r2, [sp, #0x64]
	rsbs r2, r1, r2, lsl #1
	rsbmi r2, r2, #0
	cmp r2, #3
	blt _02082878
	ldr r2, [sp, #0x64]
	add r2, r2, r2, lsl #1
	subs r2, r2, r1
	rsbmi r2, r2, #0
	cmp r2, #4
	blt _02082878
	ldr r2, [sp, #0x64]
	rsbs r2, r1, r2, lsl #2
	rsbmi r2, r2, #0
	cmp r2, #5
	bge _02082928
_02082878:
	ldr r2, _02083178 ; =0x00004CCD
	ldr r1, [sp, #0x30]
	mul r2, r1, r2
	cmp r0, r2, asr #15
	ble _020828D0
	ldr r1, [sp, #0x88]
	ldr r2, [sp, #0x64]
	subs r2, r2, r1, lsl #1
	rsbmi r2, r2, #0
	cmp r2, #3
	blt _02082928
	ldr r2, [sp, #0x64]
	add r3, r1, r1, lsl #1
	subs r2, r2, r3
	rsbmi r2, r2, #0
	cmp r2, #4
	blt _02082928
	ldr r2, [sp, #0x64]
	subs r2, r2, r1, lsl #2
	rsbmi r2, r2, #0
	cmp r2, #5
	blt _02082928
_020828D0:
	ldr r1, _02083190 ; =0x000055C3
	mul r2, r0, r1
	ldr r1, [sp, #0x30]
	cmp r1, r2, asr #15
	bge _02082938
	ldr r1, [sp, #0x88]
	ldr r2, [sp, #0x64]
	rsbs r2, r1, r2, lsl #1
	rsbmi r2, r2, #0
	cmp r2, #3
	blt _02082928
	ldr r2, [sp, #0x64]
	add r2, r2, r2, lsl #1
	subs r2, r2, r1
	rsbmi r2, r2, #0
	cmp r2, #4
	blt _02082928
	ldr r2, [sp, #0x64]
	rsbs r2, r1, r2, lsl #2
	rsbmi r2, r2, #0
	cmp r2, #5
	bge _02082938
_02082928:
	str r1, [sp, #0x64]
	ldr r1, [sp, #0x30]
	cmp r0, r1
	strgt r0, [sp, #0x30]
_02082938:
	mov r0, #0
	mov r1, r4
	ldr r2, [r10, #0x10]
	mov r2, r2, lsl #2
	bl MIi_CpuClear32
	ldr r1, [r10, #0x74]
	ldr r0, [r10, #0x78]
	ldr r0, [r1, r0, lsl #2]
	ldr r0, [r0, #8]
	cmp r0, #3
	bne _020829E0
	ldr r1, [r9, #4]
	ldr r2, [r9, #0xc]
	ldr r0, [r1]
	and r3, r2, #0x1f
	rsb r7, r3, #0x20
	cmp r7, #3
	movgt r0, r0, lsl r3
	add r2, r2, #3
	str r2, [r9, #0xc]
	movgt r0, r0, lsr #0x1d
	bgt _020829BC
	mov r2, #1
	mov r2, r2, lsl r7
	sub r2, r2, #1
	and r3, r0, r2
	rsb r2, r7, #3
	add r0, r1, #4
	str r0, [r9, #4]
	ldr r1, [r1, #4]
	rsb r0, r2, #0x20
	mov r0, r1, lsr r0
	orr r0, r0, r3, lsl r2
_020829BC:
	mov r1, r0, lsl #1
	ldr r0, _02083194 ; =0x0208EA30
	ldrsh r1, [r0, r1]
_020829C8:
	ldr r0, [sp, #0x44]
	mul r2, r0, r1
	ldr r0, [sp, #0x48]
	mul r1, r0, r1
	add r0, r2, r1, asr #14
	b _02082A30
_020829E0:
	cmp r0, #1
	bne _02082A2C
	ldr r0, [r9, #0xc]
	ldr r2, [r9, #4]
	and r0, r0, #0x1f
	cmp r0, #0x1f
	ldr r1, [r2]
	rsb r0, r0, #0x1f
	mov r0, r1, lsr r0
	and r1, r0, #1
	addeq r0, r2, #4
	ldr r2, [r9, #0xc]
	streq r0, [r9, #4]
	add r2, r2, #1
	ldr r0, _02083198 ; =0x0208EA2C
	mov r1, r1, lsl #1
	ldrsh r1, [r0, r1]
	str r2, [r9, #0xc]
	b _020829C8
_02082A2C:
	ldr r0, [sp, #0x70]
_02082A30:
	str r0, [sp, #0x54]
	ldr r1, [r10, #0x74]
	ldr r0, [r10, #0x78]
	add r2, r10, #0x6c
	ldr r3, [r1, r0, lsl #2]
	ldr r1, [sp, #0x60]
	mov r0, r4
	stmia sp, {r1, r2}
	ldr r1, [r3, #0x2c]
	ldr r7, [r3, #0x28]
	ldr r2, [r10, #0x10]
	mov r3, r9
	blx r7
	ldr r2, [sp, #0x54]
	ldr r3, [r10, #0x10]
	mov r0, r4
	mov r1, r4
	bl FUN_02080500
	ldr r1, [r10, #0x74]
	ldr r0, [r10, #0x78]
	ldr r0, [r1, r0, lsl #2]
	ldr r0, [r0, #0xc]
	cmp r0, #0
	beq _02082B64
	ldr r0, [sp, #0x60]
	mov r8, #0
	str r0, [sp, #0x50]
	rsb r0, r0, #4
	and r1, r0, #3
	ldr r0, [sp, #0x60]
	add r0, r0, r1
	ldr r1, [r10, #0x10]
	add r0, r0, r1, lsl #2
	sub r7, r0, r1, lsl #2
	str r0, [sp, #0x60]
	mov r2, r1, lsl #2
	mov r0, r8
	mov r1, r7
	bl MIi_CpuClear32
	ldr r1, [r10, #0x74]
	ldr r0, [r10, #0x78]
	add r2, r10, #0x6c
	ldr r3, [r1, r0, lsl #2]
	ldr r1, [sp, #0x60]
	mov r0, r7
	stmia sp, {r1, r2}
	ldr r1, [r3, #0x2c]
	ldr r12, [r3, #0x28]
	ldr r2, [r10, #0x10]
	mov r3, r9
	blx r12
	ldr r2, [sp, #0x54]
	ldr r3, _0208319C ; =0x00003A2F
	mov r2, r2, asr #0xf
	smulbb r12, r2, r3
	ldr lr, _0208317C ; =0x00007FFF
	ldr r2, [sp, #0x54]
	mov r0, r7
	and r2, r2, lr
	smulbb r2, r2, r3
	ldr r3, [r10, #0x10]
	mov r1, r7
	add r2, r12, r2, asr #15
	bl FUN_02080500
	ldr r0, [r10, #0x10]
	cmp r0, #0
	ble _02082B5C
_02082B3C:
	ldr r1, [r4, r8, lsl #2]
	ldr r0, [r7, r8, lsl #2]
	add r0, r1, r0
	str r0, [r4, r8, lsl #2]
	add r8, r8, #1
	ldr r0, [r10, #0x10]
	cmp r8, r0
	blt _02082B3C
_02082B5C:
	ldr r0, [sp, #0x50]
	str r0, [sp, #0x60]
_02082B64:
	mov r1, #0
	ldr r0, [r10, #0x10]
	cmp r0, #0
	ble _02082BC0
	ldr r2, _020831A0 ; =0xFFFF8001
	mov r3, r2, lsr #0x11
_02082B7C:
	ldr r0, [sp, #0x58]
	ldr r7, [r0, r1, lsl #2]
	ldr r0, [r4, r1, lsl #2]
	add r0, r0, r7, lsl #1
	add r0, r0, #0x2000
	mov r7, r0, asr #0xe
	cmp r7, r2, lsr #17
	movgt r7, r3
	bgt _02082BA8
	cmp r7, r2
	movlt r7, r2
_02082BA8:
	mov r0, r1, lsl #1
	strh r7, [r6, r0]
	add r1, r1, #1
	ldr r0, [r10, #0x10]
	cmp r1, r0
	blt _02082B7C
_02082BC0:
	cmp r11, #0
	beq _02082BF8
	cmp r0, #0
	mov r2, #0
	ble _02082BF8
_02082BD4:
	ldr r1, [r4, r2, lsl #2]
	mov r0, r2, lsl #1
	add r1, r1, #0x2000
	mov r1, r1, asr #0xe
	strh r1, [r11, r0]
	add r2, r2, #1
	ldr r0, [r10, #0x10]
	cmp r2, r0
	blt _02082BD4
_02082BF8:
	ldr r1, [r10, #0x78]
	cmp r1, #1
	bne _02082DBC
	ldr r1, [sp, #0x40]
	mov r2, r0, lsl #1
	mov r1, r1, lsl #0x10
	movs r7, r1, asr #0x10
	movmi r7, #0
	cmp r7, #0x40
	mov r0, #0
	mov r1, r6
	movgt r7, #0x40
	bl MIi_CpuClear32
	ldr r2, [r10, #0x10]
	ldr r1, [r10, #0x1e0]
	cmp r1, r2
	bge _02082C8C
	ldr r0, [sp, #0x38]
	mul r0, r7, r0
	add r0, r0, #0x20
	mov r0, r0, lsl #0xa
	mov r8, r0, asr #0x10
_02082C50:
	cmp r1, #0
	blt _02082C70
	ldr r0, [sp, #0x3c]
	bl FUN_02081fac
	mul r1, r8, r0
	ldr r0, [r10, #0x1e0]
	mov r0, r0, lsl #1
	strh r1, [r6, r0]
_02082C70:
	ldr r1, [r10, #0x1e0]
	ldr r0, [sp, #0x6c]
	ldr r2, [r10, #0x10]
	add r1, r1, r0
	str r1, [r10, #0x1e0]
	cmp r1, r2
	blt _02082C50
_02082C8C:
	ldr r0, [r10, #0x1e0]
	mov r3, #0
	sub r0, r0, r2
	str r0, [r10, #0x1e0]
	ldr r0, [r10, #0x10]
	cmp r0, #0
	ble _02082DBC
	mov r1, #0x4d
	mul r0, r7, r1
	mov r0, r0, lsl #0x10
	mov r0, r0, asr #0x10
	str r0, [sp, #0x34]
	rsb r0, r1, #0x200
	mul r1, r7, r0
	ldr r0, _0208317C ; =0x00007FFF
	sub r0, r0, r1
	ldr r1, _020831A4 ; =0x0000599A
	mov r0, r0, lsl #0x10
	rsb r1, r1, #0x8000
	str r1, [sp, #0x7c]
	ldr r1, _020831A4 ; =0x0000599A
	mov r2, r0, asr #0x10
	rsb r1, r1, #0xc000
	str r1, [sp, #0x78]
	ldr r1, _020831A4 ; =0x0000599A
	add r0, r10, #0x100
	sub lr, r1, #0x4000
_02082CF8:
	ldrsh r1, [r6]
	ldr r7, _020831A4 ; =0x0000599A
	ldrsh r12, [r0, #0xd4]
	smulbb r7, r1, r7
	mov r8, r7, lsl #1
	ldr r7, [sp, #0x7c]
	ldr r11, [r4]
	smulbb r7, r12, r7
	mov r7, r7, lsl #1
	mov r7, r7, asr #0x10
	add r7, r7, r8, asr #16
	mov r8, r7, lsl #0x10
	add r7, r11, #0x2000
	mov r7, r7, lsl #2
	mov r7, r7, asr #0x10
	mul r11, r7, r2
	ldr r7, [r10, #0x1d8]
	mov r11, r11, lsl #1
	add r7, r7, #0x2000
	mov r7, r7, lsl #2
	mov r12, r7, asr #0x10
	ldr r7, [sp, #0x34]
	add r3, r3, #1
	mul r7, r12, r7
	mov r7, r7, lsl #1
	mov r7, r7, asr #0x10
	rsb r7, r7, r11, asr #16
	mov r7, r7, lsl #0x10
	mov r7, r7, asr #0x10
	add r7, r7, r8, asr #16
	strh r7, [r6]
	strh r1, [r0, #0xd4]
	ldr r1, [r4]
	ldrsh r8, [r0, #0xdc]
	str r1, [r10, #0x1d8]
	ldrsh r1, [r6]
	smulbb r7, r1, lr
	ldr r1, [sp, #0x78]
	smlabb r1, r8, r1, r7
	add r1, r1, #0x4000
	mov r1, r1, asr #0xf
	strh r1, [r0, #0xdc]
	ldrsh r7, [r6]
	ldrsh r1, [r0, #0xdc]
	sub r1, r7, r1
	strh r1, [r6], #2
	ldr r1, [r10, #0x10]
	cmp r3, r1
	blt _02082CF8
_02082DBC:
	ldr r0, [sp, #0x74]
	ldr r1, [r10, #0x14]
	add r0, r0, #1
	str r0, [sp, #0x74]
	cmp r0, r1
	blt _020826C0
_02082DD4:
	ldr r0, [sp, #0x60]
	ldr r1, [r10, #0x7c]
	rsb r0, r0, #2
	and r2, r0, #1
	ldr r0, [sp, #0x60]
	ldr r3, [r10, #0x18]
	add r0, r0, r2
	add r0, r0, r3, lsl #1
	cmp r1, #0
	str r0, [sp, #0x60]
	sub r6, r0, r3, lsl #1
	ldrne r1, [r10, #0x74]
	ldrne r0, [r10, #0x78]
	ldrne r0, [r1, r0, lsl #2]
	ldrnesh r2, [r0, #0x30]
	cmpne r2, #0
	ble _02082EAC
	ldr r0, [r10, #8]
	cmp r0, #0
	bne _02082EAC
	ldr r1, [r10, #0x10]
	mov r4, #0x28
	mov r0, r1, lsl #1
	str r0, [sp]
	ldr r0, [sp, #0x64]
	stmib sp, {r0, r4}
	ldr r0, [sp, #0x60]
	str r2, [sp, #0xc]
	str r0, [sp, #0x10]
	ldr r0, [r10, #0x34]
	ldr r2, [r10, #0x3c]
	sub r0, r0, r1, lsl #1
	ldr r1, [sp, #0x2c]
	bl FUN_02080ef8
	ldr r0, [r10, #0x10]
	ldr r1, [sp, #0x2c]
	mov r2, r0, lsl #1
	str r2, [sp]
	add r1, r1, r2, lsl #1
	ldr r2, [sp, #0x64]
	stmib sp, {r2, r4}
	ldr r3, [r10, #0x74]
	ldr r2, [r10, #0x78]
	ldr r2, [r3, r2, lsl #2]
	ldrsh r2, [r2, #0x30]
	str r2, [sp, #0xc]
	ldr r2, [sp, #0x60]
	str r2, [sp, #0x10]
	ldr r3, [r10, #0x34]
	ldr r2, [r10, #0x3c]
	add r0, r3, r0, lsl #1
	ldr r3, [r10, #0x18]
	bl FUN_02080ef8
	b _02082ECC
_02082EAC:
	ldr r0, [r10, #0x10]
	ldr r2, [r10, #0xc]
	ldr r3, [r10, #0x34]
	rsb r0, r0, #0
	ldr r1, [sp, #0x2c]
	add r0, r3, r0, lsl #1
	mov r2, r2, lsl #1
	bl MI_CpuCopy8
_02082ECC:
	ldr r0, [r10, #8]
	cmp r0, #0
	beq _02082F64
	ldr r0, [r10, #0x34]
	ldr r1, [r10, #0xc]
	bl FUN_0208055c
	add r0, r0, #1
	mov r0, r0, lsl #0x10
	mov r1, r0, asr #0x10
	ldr r0, [sp, #0x70]
	add r0, r0, r1, asr #1
	bl _s32_div_f
	ldr r1, _0208317C ; =0x00007FFF
	cmp r0, r1
	movgt r0, r1
	ldr r1, [r10, #0xc]
	mov r0, r0, lsl #0x10
	cmp r1, #0
	mov r0, r0, asr #0x10
	mov r1, #0
	ble _02082F64
_02082F20:
	ldr r3, [r10, #0x34]
	mov r4, r1, lsl #1
	ldrsh r2, [r3, r4]
	mul r2, r0, r2
	mov r2, r2, asr #0xe
	strh r2, [r3, r4]
	ldr r2, [r10, #0x10]
	ldr r3, [r10, #0x34]
	sub r2, r1, r2
	mov r2, r2, lsl #1
	ldrsh r3, [r3, r2]
	ldr r2, [sp, #0x2c]
	add r1, r1, #1
	strh r3, [r2, r4]
	ldr r2, [r10, #0xc]
	cmp r1, r2
	blt _02082F20
_02082F64:
	ldr r2, [r10, #0x14]
	mov r7, #0
	cmp r2, #0
	ble _02083070
_02082F74:
	ldr r0, [r10, #0x10]
	ldr r1, [sp, #0x4c]
	mul r4, r0, r7
	str r7, [sp]
	str r2, [sp, #4]
	ldr r2, [sp, #0x2c]
	ldr r0, [r10, #0x38]
	add r4, r2, r4, lsl #1
	ldr r3, [r10, #0x18]
	mov r2, r6
	bl FUN_02081968
	ldr r1, [r10, #0x18]
	mov r0, r6
	mov r2, #0x10
	bl FUN_020818d0
	ldr r2, [r10, #0x18]
	ldr r3, [sp, #0x60]
	mov r0, r6
	mov r1, r5
	bl FUN_020814f8
	ldr r3, [r10, #0x18]
	mov r2, #0x2000
	mov r8, #0
	cmp r3, #0
	ble _02082FFC
_02082FD8:
	mov r0, r8, lsl #1
	ldrsh r0, [r5, r0]
	add r1, r5, r8, lsl #1
	ldrsh r1, [r1, #2]
	add r8, r8, #2
	cmp r8, r3
	sub r0, r1, r0
	add r2, r2, r0
	blt _02082FD8
_02082FFC:
	ldr r1, [r10, #0x4c]
	mov r0, r4
	str r2, [r1, r7, lsl #2]
	ldr r1, [r10, #0x18]
	mov r2, r4
	str r1, [sp]
	ldr r1, [r10, #0x40]
	str r1, [sp, #4]
	ldr r1, [sp, #0x60]
	str r1, [sp, #8]
	ldr r1, [r10, #0x3c]
	ldr r3, [r10, #0x10]
	bl FUN_020807b4
	ldr r0, [r10, #0x18]
	mov r3, #0
	cmp r0, #0
	ble _02083060
_02083040:
	mov r2, r3, lsl #1
	ldrsh r1, [r5, r2]
	ldr r0, [r10, #0x3c]
	add r3, r3, #1
	strh r1, [r0, r2]
	ldr r0, [r10, #0x18]
	cmp r3, r0
	blt _02083040
_02083060:
	ldr r2, [r10, #0x14]
	add r7, r7, #1
	cmp r7, r2
	blt _02082F74
_02083070:
	ldr r0, [sp, #0x70]
	ldrsh r2, [r10, #0x56]
	add r0, r0, #0x2000
	mov r0, r0, asr #0xe
	add r0, r0, #1
	strh r0, [r10, #0x54]
	ldr r0, _020831A8 ; =0x00007EB8
	ldrsh r1, [r10, #0x54]
	smulbb r0, r2, r0
	mov r4, r0, asr #0xf
	cmp r1, r0, asr #15
	movge r4, r1
	ldrsh r3, [r10, #0x58]
	ldr r1, _020831AC ; =0x000040A4
	ldrsh r2, [r10, #0x54]
	smulbb r1, r3, r1
	mov r1, r1, lsl #2
	mov r1, r1, asr #0x10
	add r1, r1, #1
	mov r1, r1, lsl #0x10
	cmp r2, r1, asr #16
	mov r1, r1, asr #0x10
	movle r1, r2
	strh r1, [r10, #0x58]
	strh r4, [r10, #0x56]
	ldrsh r2, [r10, #0x58]
	ldrsh r1, [r10, #0x56]
	mov r0, #0
	add r2, r2, #1
	cmp r1, r2
	ldr r1, [r10, #0x18]
	strlth r2, [r10, #0x56]
	cmp r1, #0
	mov r4, #0
	ble _02083120
_020830FC:
	ldr r1, [sp, #0x4c]
	mov r3, r4, lsl #1
	ldrsh r2, [r1, r3]
	ldr r1, [r10, #0x38]
	add r4, r4, #1
	strh r2, [r1, r3]
	ldr r1, [r10, #0x18]
	cmp r4, r1
	blt _020830FC
_02083120:
	ldr r1, [sp, #0x5c]
	ldr r4, [r10, #0x68]
	add r1, r1, #2
	mov r1, r1, asr #2
	strh r1, [r10, #0x60]
	ldr r1, [sp, #0x64]
	add r3, r4, #1
	str r1, [r10, #0x5c]
	ldrsh r2, [r10, #0x60]
	str r0, [r10, #4]
	str r0, [r10, #8]
	str r3, [r10, #0x68]
	add r1, r10, r4, lsl #1
	strh r2, [r1, #0x62]
	ldr r1, [r10, #0x68]
	cmp r1, #2
	strgt r0, [r10, #0x68]
	ldr r0, [sp, #0x70]
	strh r0, [r10, #0x28]
	mov r0, #0
	add sp, sp, #0x8c
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
_02083178: .word 0x00004CCD
_0208317C: .word 0x00007FFF
_02083180: .word 0x00000889
_02083184: .word unk_0208EA40
_02083188: .word 0x00006EF6
_0208318C: .word 0x00003FFF
_02083190: .word 0x000055C3
_02083194: .word unk_0208EA30
_02083198: .word unk_0208EA2C
_0208319C: .word 0x00003A2F
_020831A0: .word 0xFFFF8001
_020831A4: .word 0x0000599A
_020831A8: .word 0x00007EB8
_020831AC: .word 0x000040A4
	arm_func_end FUN_020821f8

	arm_func_start FUN_020831b0
FUN_020831b0: ; 0x020831B0
	stmfd sp!, {r4, r5, r6, r7, r8, lr}
	mov r6, r0
	mov r5, r2
	cmp r1, #0x2f
	mov r4, #0
	bgt _0208328C
	cmp r1, #0x2f
	bge _02083448
	cmp r1, #0x25
	bgt _02083268
	bge _02083424
	cmp r1, #0x1a
	bgt _0208325C
	cmp r1, #0
	addge pc, pc, r1, lsl #2
	b _02083560
_020831F0: ; jump table
	b _020832EC ; case 0
	b _020832F8 ; case 1
	b _02083560 ; case 2
	b _02083300 ; case 3
	b _02083560 ; case 4
	b _02083560 ; case 5
	b _020832D8 ; case 6
	b _020832E4 ; case 7
	b _020832D8 ; case 8
	b _020832E4 ; case 9
	b _02083560 ; case 10
	b _02083560 ; case 11
	b _02083560 ; case 12
	b _02083560 ; case 13
	b _02083560 ; case 14
	b _02083560 ; case 15
	b _02083560 ; case 16
	b _02083560 ; case 17
	b _02083560 ; case 18
	b _02083308 ; case 19
	b _02083358 ; case 20
	b _02083560 ; case 21
	b _0208338C ; case 22
	b _02083560 ; case 23
	b _02083344 ; case 24
	b _02083350 ; case 25
	b _020833A8 ; case 26
_0208325C:
	cmp r1, #0x24
	beq _02083418
	b _02083560
_02083268:
	cmp r1, #0x2c
	bgt _02083280
	bge _02083434
	cmp r1, #0x27
	beq _0208342C
	b _02083560
_02083280:
	cmp r1, #0x2d
	beq _02083440
	b _02083560
_0208328C:
	cmp r1, #0x67
	bgt _020832B4
	bge _0208353C
	cmp r1, #0x64
	bgt _020832A8
	beq _020834D0
	b _02083560
_020832A8:
	cmp r1, #0x65
	beq _02083500
	b _02083560
_020832B4:
	cmp r1, #0x69
	bgt _020832CC
	bge _0208354C
	cmp r1, #0x68
	beq _02083544
	b _02083560
_020832CC:
	cmp r1, #0x6a
	beq _02083558
	b _02083560
_020832D8:
	ldr r0, [r5]
	str r0, [r6, #0x78]
	b _02083568
_020832E4:
	ldr r0, [r6, #0x78]
	b _020834C8
_020832EC:
	ldr r0, [r5]
	str r0, [r6, #0x7c]
	b _02083568
_020832F8:
	ldr r0, [r6, #0x7c]
	b _020834C8
_02083300:
	ldr r0, [r6, #0xc]
	b _020834C8
_02083308:
	ldr r1, [r6, #0x74]
	ldr r0, [r6, #0x78]
	ldr r0, [r1, r0, lsl #2]
	cmp r0, #0
	beq _02083330
	ldr r2, [r6, #0x24]
	ldr r0, [r0, #0x34]
	ldr r1, [r6, #0xc]
	mul r0, r2, r0
	b _0208333C
_02083330:
	ldr r0, [r6, #0x24]
	ldr r1, [r6, #0xc]
	add r0, r0, r0, lsl #2
_0208333C:
	bl _s32_div_f
	b _020834C8
_02083344:
	ldr r0, [r5]
	str r0, [r6, #0x24]
	b _02083568
_02083350:
	ldr r0, [r6, #0x24]
	b _020834C8
_02083358:
	ldr r2, [r5]
	mov r0, #0x14
	mla r1, r2, r0, r6
	ldr r2, [r5, #4]
	str r2, [r1, #0x84]
	ldr r2, [r5]
	ldr r3, [r5, #8]
	mla r1, r2, r0, r6
	str r3, [r1, #0x88]
	ldr r1, [r5]
	mla r0, r1, r0, r6
	str r1, [r0, #0x80]
	b _02083568
_0208338C:
	ldr r0, [r5, #4]
	str r0, [r6, #0x1c4]
	ldr r0, [r5, #8]
	str r0, [r6, #0x1c8]
	ldr r0, [r5]
	str r0, [r6, #0x1c0]
	b _02083568
_020833A8:
	ldr r0, [r6, #0x18]
	mov r1, r4
	cmp r0, #0
	ble _020833D0
_020833B8:
	ldr r0, [r6, #0x40]
	str r4, [r0, r1, lsl #2]
	ldr r0, [r6, #0x18]
	add r1, r1, #1
	cmp r1, r0
	blt _020833B8
_020833D0:
	ldr r1, [r6, #0xc]
	ldr r0, [r6, #0x20]
	mov r2, #0
	add r0, r1, r0
	add r0, r0, #1
	cmp r0, #0
	ble _02083568
_020833EC:
	ldr r1, [r6, #0x30]
	mov r0, r2, lsl #1
	strh r4, [r1, r0]
	ldr r1, [r6, #0xc]
	ldr r0, [r6, #0x20]
	add r2, r2, #1
	add r0, r1, r0
	add r0, r0, #1
	cmp r2, r0
	blt _020833EC
	b _02083568
_02083418:
	ldr r0, [r5]
	str r0, [r6, #0x70]
	b _02083568
_02083424:
	ldr r0, [r6, #0x70]
	b _020834C8
_0208342C:
	ldr r0, [r6, #0x10]
	b _020834C8
_02083434:
	ldr r0, [r5]
	str r0, [r6, #0x1ec]
	b _02083568
_02083440:
	ldr r0, [r6, #0x1ec]
	b _020834C8
_02083448:
	ldrsh r8, [r6, #0x58]
	ldrsh r0, [r6, #0x54]
	mov r1, r8
	bl _s32_div_f
	bl _dflt
	bl log
	mov r7, r0
	ldrsh r0, [r6, #0x56]
	mov r6, r1
	mov r1, r8
	bl _s32_div_f
	bl _dflt
	bl log
	mov r2, r0
	mov r3, r1
	mov r0, r7
	mov r1, r6
	bl _ddiv
	bl _d2f
	mov r6, #0x3f800000
	mov r7, r0
	mov r1, r6
	bl _fgr
	movhi r7, r6
	mov r0, r7
	mov r1, r4
	bl _fgr
	movls r7, r4
	ldr r0, _02083570 ; =0x42C80000
	mov r1, r7
	bl _fmul
	bl _ffix
_020834C8:
	str r0, [r5]
	b _02083568
_020834D0:
	ldr r0, [r6, #0x14]
	mov r1, r4
	cmp r0, #0
	ble _02083568
_020834E0:
	ldr r0, [r6, #0x4c]
	ldr r0, [r0, r1, lsl #2]
	str r0, [r5, r1, lsl #2]
	ldr r0, [r6, #0x14]
	add r1, r1, #1
	cmp r1, r0
	blt _020834E0
	b _02083568
_02083500:
	ldr r0, [r6, #0x14]
	cmp r0, #0
	ble _02083568
_0208350C:
	ldr r1, [r6, #0x10]
	ldr r2, [r6, #0x34]
	mul r0, r4, r1
	add r0, r2, r0, lsl #1
	bl FUN_0208055c
	mov r1, r4, lsl #1
	strh r0, [r5, r1]
	ldr r0, [r6, #0x14]
	add r4, r4, #1
	cmp r4, r0
	blt _0208350C
	b _02083568
_0208353C:
	ldr r0, [r6, #0x1e4]
	b _020834C8
_02083544:
	str r5, [r6, #0x50]
	b _02083568
_0208354C:
	ldr r0, [r5]
	str r0, [r6, #0x1e8]
	b _02083568
_02083558:
	ldr r0, [r6, #0x2c]
	b _020834C8
_02083560:
	mvn r0, #0
	ldmfd sp!, {r4, r5, r6, r7, r8, pc}
_02083568:
	mov r0, #0
	ldmfd sp!, {r4, r5, r6, r7, r8, pc}
_02083570: .word 0x42C80000
	arm_func_end FUN_020831b0

	arm_func_start FUN_02083574
FUN_02083574: ; 0x02083574
	stmfd sp!, {r4, r5, r6, lr}
	cmp r1, #0
	mov r3, #1
	mov r12, #0
	ble _020835A4
_02083588:
	add r5, r12, #1
	mov r4, r12, lsl #1
	mov r6, r5, lsl #0xb
	mov r12, r5
	strh r6, [r0, r4]
	cmp r5, r1
	blt _02083588
_020835A4:
	ldr r4, [r2, #0xc]
	ldr lr, [r2, #4]
	and r6, r4, #0x1f
	rsb r5, r6, #0x20
	ldr r1, [lr]
	cmp r5, #6
	movgt r1, r1, lsl r6
	add r4, r4, #6
	str r4, [r2, #0xc]
	movgt r5, r1, lsr #0x1a
	bgt _020835F8
	add r4, lr, #4
	str r4, [r2, #4]
	mov r4, r3, lsl r5
	rsb r6, r5, #6
	sub r12, r4, #1
	ldr r5, [lr, #4]
	rsb r4, r6, #0x20
	mov r4, r5, lsr r4
	and r1, r1, r12
	orr r5, r4, r1, lsl r6
_020835F8:
	ldr r4, _02083840 ; =0x0208E3B0
	mov r1, #0xa
	mla r6, r5, r1, r4
	mov r12, #0
_02083608:
	mov r5, r12, lsl #1
	ldrsb r1, [r6, r12]
	ldrsh r4, [r0, r5]
	add r12, r12, #1
	cmp r12, #0xa
	add r1, r4, r1, lsl #5
	strh r1, [r0, r5]
	blt _02083608
	ldr r4, [r2, #0xc]
	ldr lr, [r2, #4]
	and r6, r4, #0x1f
	rsb r5, r6, #0x20
	ldr r1, [lr]
	cmp r5, #6
	movgt r1, r1, lsl r6
	add r4, r4, #6
	str r4, [r2, #0xc]
	movgt r1, r1, lsr #0x1a
	bgt _0208367C
	add r4, lr, #4
	str r4, [r2, #4]
	mov r4, r3, lsl r5
	rsb r6, r5, #6
	sub r12, r4, #1
	ldr r5, [lr, #4]
	rsb r4, r6, #0x20
	mov r4, r5, lsr r4
	and r1, r1, r12
	orr r1, r4, r1, lsl r6
_0208367C:
	ldr r4, _02083844 ; =0x0208E130
	add r1, r1, r1, lsl #2
	add r6, r4, r1
	mov r12, #0
_0208368C:
	mov r5, r12, lsl #1
	ldrsb r1, [r6, r12]
	ldrsh r4, [r0, r5]
	add r12, r12, #1
	mov r1, r1, lsl #0x14
	add r1, r4, r1, asr #16
	strh r1, [r0, r5]
	cmp r12, #5
	blt _0208368C
	ldr r4, [r2, #0xc]
	ldr lr, [r2, #4]
	and r6, r4, #0x1f
	rsb r5, r6, #0x20
	ldr r1, [lr]
	cmp r5, #6
	movgt r1, r1, lsl r6
	add r4, r4, #6
	str r4, [r2, #0xc]
	movgt r1, r1, lsr #0x1a
	bgt _02083704
	add r4, lr, #4
	str r4, [r2, #4]
	mov r4, r3, lsl r5
	rsb r6, r5, #6
	sub r12, r4, #1
	ldr r5, [lr, #4]
	rsb r4, r6, #0x20
	mov r4, r5, lsr r4
	and r1, r1, r12
	orr r1, r4, r1, lsl r6
_02083704:
	ldr r4, _02083848 ; =0x0208DFF0
	add r1, r1, r1, lsl #2
	add r6, r4, r1
	mov r12, #0
_02083714:
	mov r5, r12, lsl #1
	ldrsb r1, [r6, r12]
	ldrsh r4, [r0, r5]
	add r12, r12, #1
	cmp r12, #5
	add r1, r4, r1, lsl #3
	strh r1, [r0, r5]
	blt _02083714
	ldr r4, [r2, #0xc]
	ldr r6, [r2, #4]
	and r12, r4, #0x1f
	rsb r5, r12, #0x20
	ldr r1, [r6]
	cmp r5, #6
	movgt r1, r1, lsl r12
	add r4, r4, #6
	str r4, [r2, #0xc]
	movgt r1, r1, lsr #0x1a
	bgt _02083788
	add r4, r6, #4
	str r4, [r2, #4]
	mov r4, r3, lsl r5
	rsb r12, r5, #6
	sub lr, r4, #1
	ldr r5, [r6, #4]
	rsb r4, r12, #0x20
	mov r4, r5, lsr r4
	and r1, r1, lr
	orr r1, r4, r1, lsl r12
_02083788:
	ldr r4, _0208384C ; =0x0208E270
	add r1, r1, r1, lsl #2
	add r6, r4, r1
	mov r12, #0
_02083798:
	add r5, r0, r12, lsl #1
	ldrsb r1, [r6, r12]
	ldrsh r4, [r5, #0xa]
	add r12, r12, #1
	cmp r12, #5
	add r1, r4, r1, lsl #4
	strh r1, [r5, #0xa]
	blt _02083798
	ldr r12, [r2, #0xc]
	ldr r5, [r2, #4]
	and r4, r12, #0x1f
	rsb lr, r4, #0x20
	ldr r1, [r5]
	cmp lr, #6
	movgt r1, r1, lsl r4
	add r12, r12, #6
	str r12, [r2, #0xc]
	movgt r1, r1, lsr #0x1a
	bgt _0208380C
	add r12, r5, #4
	str r12, [r2, #4]
	mov r2, r3, lsl lr
	rsb r12, lr, #6
	sub lr, r2, #1
	ldr r3, [r5, #4]
	rsb r2, r12, #0x20
	mov r2, r3, lsr r2
	and r1, r1, lr
	orr r1, r2, r1, lsl r12
_0208380C:
	ldr r2, _02083850 ; =0x0208DEB0
	add r1, r1, r1, lsl #2
	add r4, r2, r1
	mov r5, #0
_0208381C:
	add r3, r0, r5, lsl #1
	ldrsb r1, [r4, r5]
	ldrsh r2, [r3, #0xa]
	add r5, r5, #1
	cmp r5, #5
	add r1, r2, r1, lsl #3
	strh r1, [r3, #0xa]
	blt _0208381C
	ldmfd sp!, {r4, r5, r6, pc}
_02083840: .word unk_0208E3B0
_02083844: .word unk_0208E130
_02083848: .word unk_0208DFF0
_0208384C: .word unk_0208E270
_02083850: .word unk_0208DEB0
	arm_func_end FUN_02083574

	arm_func_start FUN_02083854
FUN_02083854: ; 0x02083854
	stmfd sp!, {r3, r4, r5, lr}
	cmp r1, #0
	mov r12, #0
	ble _02083880
_02083864:
	add r4, r12, #1
	mov r3, r12, lsl #1
	mov r5, r4, lsl #0xb
	mov r12, r4
	strh r5, [r0, r3]
	cmp r4, r1
	blt _02083864
_02083880:
	ldr r3, [r2, #0xc]
	ldr lr, [r2, #4]
	and r5, r3, #0x1f
	rsb r4, r5, #0x20
	ldr r1, [lr]
	cmp r4, #6
	movgt r1, r1, lsl r5
	add r3, r3, #6
	str r3, [r2, #0xc]
	movgt r4, r1, lsr #0x1a
	bgt _020838D8
	add r3, lr, #4
	str r3, [r2, #4]
	mov r3, #1
	mov r3, r3, lsl r4
	rsb r5, r4, #6
	sub r12, r3, #1
	ldr r4, [lr, #4]
	rsb r3, r5, #0x20
	mov r3, r4, lsr r3
	and r1, r1, r12
	orr r4, r3, r1, lsl r5
_020838D8:
	ldr r3, _02083A28 ; =0x0208E3B0
	mov r1, #0xa
	mla r5, r4, r1, r3
	mov r12, #0
_020838E8:
	mov r4, r12, lsl #1
	ldrsb r1, [r5, r12]
	ldrsh r3, [r0, r4]
	add r12, r12, #1
	mov r1, r1, lsl #0x15
	add r1, r3, r1, asr #16
	strh r1, [r0, r4]
	cmp r12, #0xa
	blt _020838E8
	ldr r3, [r2, #0xc]
	ldr r5, [r2, #4]
	and r12, r3, #0x1f
	rsb r4, r12, #0x20
	ldr r1, [r5]
	cmp r4, #6
	movgt r1, r1, lsl r12
	add r3, r3, #6
	str r3, [r2, #0xc]
	movgt r1, r1, lsr #0x1a
	bgt _02083964
	add r3, r5, #4
	str r3, [r2, #4]
	mov r3, #1
	mov r3, r3, lsl r4
	rsb r12, r4, #6
	sub lr, r3, #1
	ldr r4, [r5, #4]
	rsb r3, r12, #0x20
	mov r3, r4, lsr r3
	and r1, r1, lr
	orr r1, r3, r1, lsl r12
_02083964:
	ldr r3, _02083A2C ; =0x0208E130
	add r1, r1, r1, lsl #2
	add r5, r3, r1
	mov r12, #0
_02083974:
	mov r4, r12, lsl #1
	ldrsb r1, [r5, r12]
	ldrsh r3, [r0, r4]
	add r12, r12, #1
	mov r1, r1, lsl #0x14
	add r1, r3, r1, asr #16
	strh r1, [r0, r4]
	cmp r12, #5
	blt _02083974
	ldr r3, [r2, #0xc]
	ldr r4, [r2, #4]
	and lr, r3, #0x1f
	rsb r12, lr, #0x20
	ldr r1, [r4]
	cmp r12, #6
	movgt r1, r1, lsl lr
	add r3, r3, #6
	str r3, [r2, #0xc]
	movgt r1, r1, lsr #0x1a
	bgt _020839F0
	add r3, r4, #4
	str r3, [r2, #4]
	mov r2, #1
	mov r2, r2, lsl r12
	rsb r12, r12, #6
	sub lr, r2, #1
	ldr r3, [r4, #4]
	rsb r2, r12, #0x20
	mov r2, r3, lsr r2
	and r1, r1, lr
	orr r1, r2, r1, lsl r12
_020839F0:
	ldr r2, _02083A30 ; =0x0208E270
	add r1, r1, r1, lsl #2
	add r4, r2, r1
	mov r5, #0
_02083A00:
	add r3, r0, r5, lsl #1
	ldrsb r1, [r4, r5]
	ldrsh r2, [r3, #0xa]
	add r5, r5, #1
	mov r1, r1, lsl #0x14
	add r1, r2, r1, asr #16
	strh r1, [r3, #0xa]
	cmp r5, #5
	blt _02083A00
	ldmfd sp!, {r3, r4, r5, pc}
_02083A28: .word unk_0208E3B0
_02083A2C: .word unk_0208E130
_02083A30: .word unk_0208E270
	arm_func_end FUN_02083854

	arm_func_start FUN_02083a34
FUN_02083a34: ; 0x02083A34
	stmfd sp!, {r4, r5, r6, lr}
	cmp r1, #0
	mov r6, #0
	ble _02083A6C
	mov r3, #0xa00
_02083A48:
	smulbb r4, r6, r3
	mov r12, r4, lsl #0x10
	mov r5, r12, asr #0x10
	mov r4, r6, lsl #1
	add r5, r5, #0x1800
	add r6, r6, #1
	strh r5, [r0, r4]
	cmp r6, r1
	blt _02083A48
_02083A6C:
	ldr r4, [r2, #0xc]
	ldr r6, [r2, #4]
	and r12, r4, #0x1f
	rsb r5, r12, #0x20
	ldr r3, [r6]
	cmp r5, #6
	add r4, r4, #6
	movgt r3, r3, lsl r12
	str r4, [r2, #0xc]
	movgt r4, r3, lsr #0x1a
	bgt _02083AC4
	add r4, r6, #4
	str r4, [r2, #4]
	mov r4, #1
	mov r4, r4, lsl r5
	rsb r12, r5, #6
	sub lr, r4, #1
	ldr r5, [r6, #4]
	rsb r4, r12, #0x20
	mov r4, r5, lsr r4
	and r3, r3, lr
	orr r4, r4, r3, lsl r12
_02083AC4:
	cmp r1, #0
	mov r12, #0
	ble _02083AFC
	ldr r3, _02083B90 ; =0x0208DAB0
	mla r6, r4, r1, r3
_02083AD8:
	mov r5, r12, lsl #1
	ldrsb r3, [r6, r12]
	ldrsh r4, [r0, r5]
	add r12, r12, #1
	mov r3, r3, lsl #0x15
	add r3, r4, r3, asr #16
	strh r3, [r0, r5]
	cmp r12, r1
	blt _02083AD8
_02083AFC:
	ldr r12, [r2, #0xc]
	ldr r5, [r2, #4]
	and lr, r12, #0x1f
	rsb r4, lr, #0x20
	ldr r3, [r5]
	add r12, r12, #6
	str r12, [r2, #0xc]
	cmp r4, #6
	movgt r2, r3, lsl lr
	movgt r3, r2, lsr #0x1a
	bgt _02083B54
	add r12, r5, #4
	str r12, [r2, #4]
	mov r2, #1
	mov r2, r2, lsl r4
	rsb lr, r4, #6
	sub r4, r2, #1
	ldr r12, [r5, #4]
	rsb r2, lr, #0x20
	mov r2, r12, lsr r2
	and r3, r3, r4
	orr r3, r2, r3, lsl lr
_02083B54:
	mov r5, #0
	cmp r1, #0
	ldmlefd sp!, {r4, r5, r6, pc}
	ldr r2, _02083B94 ; =0x0208DCB0
	mla r4, r3, r1, r2
_02083B68:
	mov r12, r5, lsl #1
	ldrsb r2, [r4, r5]
	ldrsh r3, [r0, r12]
	add r5, r5, #1
	mov r2, r2, lsl #0x14
	add r2, r3, r2, asr #16
	strh r2, [r0, r12]
	cmp r5, r1
	blt _02083B68
	ldmfd sp!, {r4, r5, r6, pc}
_02083B90: .word unk_0208DAB0
_02083B94: .word unk_0208DCB0
	arm_func_end FUN_02083a34

	arm_func_start FUN_02083b98
FUN_02083b98: ; 0x02083B98
	mov r1, r0
	cmp r0, #0x10000
	mov r2, #0
	movhs r1, r0, lsr #0x10
	addhs r2, r2, #8
	cmp r1, #0x100
	movhs r1, r1, lsr #8
	addhs r2, r2, #4
	cmp r1, #0x10
	movhs r1, r1, lsr #4
	addhs r2, r2, #2
	cmp r1, #4
	addhs r2, r2, #1
	mov r1, r2, lsl #0x10
	mov r1, r1, asr #0x10
	sub r1, r1, #6
	mov r2, r1, lsl #1
	cmp r2, #0
	movgt r12, r0, asr r2
	rsble r2, r2, #0
	movle r12, r0, lsl r2
	mov r0, r12, lsl #0x10
	ldr r2, _02083C58 ; =0x0000106C
	mov r3, r0, asr #0x10
	mul r0, r3, r2
	ldr r2, _02083C5C ; =0xFFFFCEAD
	mov r0, r0, lsl #2
	add r0, r2, r0, asr #16
	smulbb r0, r12, r0
	mov r0, r0, lsl #2
	mov r0, r0, asr #0x10
	add r0, r0, #0xb5
	add r0, r0, #0x5200
	smulbb r0, r12, r0
	mov r0, r0, lsl #2
	mov r0, r0, asr #0x10
	add r0, r0, #0x32
	add r0, r0, #0xe00
	mov r0, r0, lsl #0x10
	rsb r1, r1, #7
	mov r2, r0, asr #0x10
	cmp r1, #0
	movgt r0, r2, asr r1
	rsble r0, r1, #0
	movle r0, r2, lsl r0
	mov r0, r0, lsl #0x10
	mov r0, r0, asr #0x10
	bx lr
_02083C58: .word 0x0000106C
_02083C5C: .word 0xFFFFCEAD
	arm_func_end FUN_02083b98

	arm_func_start FUN_02083c60
FUN_02083c60: ; 0x02083C60
	stmfd sp!, {r3, r4, r5, r6, lr}
	sub sp, sp, #4
	mov r6, r1
	mov r4, #1
	ldr r5, [r0]
	str r4, [r6, #0x58]
	str r0, [r6]
	ldr r0, [r5]
	add r1, r6, #0x68
	bl FUN_02082074
	str r0, [r6, #4]
	add r2, r6, #0x28
	mov r1, #0x6a
	bl FUN_02084ad0
	ldr r0, [r5, #4]
	mov r0, r0, lsl #1
	str r0, [r6, #8]
	ldr r0, [r5, #4]
	str r0, [r6, #0xc]
	ldr r0, [r5, #8]
	str r0, [r6, #0x10]
	ldmib r5, {r0, r1}
	bl _s32_div_f
	str r0, [r6, #0x14]
	ldr r1, [r5, #0xc]
	ldr r0, [r6, #4]
	str r1, [r6, #0x18]
	mov r1, #0x19
	add r2, r6, #0x20
	bl FUN_02084ad0
	ldr r0, [r6, #0x20]
	mov r1, #0x69
	mov r0, r0, lsl #1
	str r0, [r6, #0x20]
	str r4, [sp]
	ldr r0, [r6, #4]
	add r2, sp, #0
	bl FUN_02084ad0
	add r0, r5, #0x18
	str r0, [r6, #0x5c]
	ldr r0, [r5, #0x38]
	ldr r1, [r6, #0x64]
	str r0, [r6, #0x60]
	add r0, r1, #0x80
	add r2, r1, #0x100
	str r1, [r6, #0x2c]
	ldr r1, [r6, #0x10]
	str r0, [r6, #0x30]
	ldr r0, [r6, #0x18]
	mov r1, r1, lsl #1
	add r1, r1, #0xf
	mov r0, r0, lsl #1
	bic r1, r1, #0xf
	add r0, r0, #0xf
	add r1, r2, r1
	bic r0, r0, #0xf
	str r1, [r6, #0x38]
	add r1, r1, r0
	str r2, [r6, #0x34]
	add r2, r1, r0
	mov r0, #0
	str r1, [r6, #0x3c]
	ldr r1, [r6, #0x14]
	str r0, [r6, #0x4c]
	str r0, [r6, #0x24]
	mov r0, r1, lsl #2
	add r0, r0, #0xf
	bic r0, r0, #0xf
	str r2, [r6, #0x44]
	add r2, r2, r0
	mov r0, r1, lsl #1
	add r0, r0, #0xf
	bic r0, r0, #0xf
	add r0, r2, r0
	str r0, [r6, #0x40]
	mov r0, #0x3e8
	str r0, [r6, #0x54]
	str r4, [r6, #0x1c]
	str r2, [r6, #0x48]
	mov r0, r6
	add sp, sp, #4
	ldmfd sp!, {r3, r4, r5, r6, pc}
	arm_func_end FUN_02083c60

	arm_func_start FUN_02083da8
FUN_02083da8: ; 0x02083DA8
	ldr r0, [r0, #4]
	ldr r12, _02083DB4 ; =FUN_020821F4
	bx r12
_02083DB4: .word FUN_020821F4
	arm_func_end FUN_02083da8

	arm_func_start FUN_02083db8
FUN_02083db8: ; 0x02083DB8
	stmfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, lr}
	sub sp, sp, #0x44
	mov r10, r0
	ldr r3, [r10, #0xc]
	str r1, [sp, #0x14]
	ldr r0, [r10, #4]
	mov r1, r2
	str r2, [sp, #0x18]
	add r2, r1, r3, lsl #1
	mov r5, #0
	mov r3, r5
	mov r1, #0x68
	ldr r4, [r10, #0x28]
	str r3, [sp, #0x30]
	bl FUN_02084ad0
	ldr r0, [r10, #4]
	ldr r1, [sp, #0x14]
	ldr r2, [sp, #0x18]
	bl FUN_020821f8
	ldr r0, [r10, #4]
	mov r1, #0x67
	add r2, sp, #0x40
	bl FUN_02084ad0
	ldr r0, [r10, #0x58]
	cmp r0, #0
	beq _02083F30
	ldr r0, [sp, #0x14]
	ldr r2, [r0, #0xc]
	ldr r0, [r0, #8]
	sub r0, r0, r2
	cmp r0, #0
	ble _02083E58
	ldr r0, [sp, #0x14]
	ldr r1, [r0, #4]
	and r0, r2, #0x1f
	ldr r1, [r1]
	rsb r0, r0, #0x1f
	mov r0, r1, lsr r0
	and r6, r0, #1
	b _02083E60
_02083E58:
	ldr r6, [sp, #0x30]
	bl OS_Terminate
_02083E60:
	cmp r6, #0
	beq _02083EFC
	ldr r0, [sp, #0x14]
	ldr r0, [r0, #0xc]
	and r0, r0, #0x1f
	cmp r0, #0x1f
	ldreq r0, [sp, #0x14]
	ldreq r0, [r0, #4]
	addeq r1, r0, #4
	ldreq r0, [sp, #0x14]
	streq r1, [r0, #4]
	ldr r0, [sp, #0x14]
	ldr r2, [r0, #0xc]
	ldr r1, [r0, #4]
	add r2, r2, #1
	str r2, [r0, #0xc]
	and r6, r2, #0x1f
	rsb r5, r6, #0x20
	add r3, r2, #3
	ldr r0, [r1]
	ldr r2, [sp, #0x14]
	cmp r5, #3
	movgt r0, r0, lsl r6
	str r3, [r2, #0xc]
	movgt r0, r0, lsr #0x1d
	bgt _02083EF4
	add r3, r1, #4
	str r3, [r2, #4]
	mov r2, #1
	mov r2, r2, lsl r5
	rsb r3, r5, #3
	sub r5, r2, #1
	ldr r2, [r1, #4]
	rsb r1, r3, #0x20
	mov r1, r2, lsr r1
	and r0, r0, r5
	orr r0, r1, r0, lsl r3
_02083EF4:
	str r0, [r10, #0x60]
	b _02083F04
_02083EFC:
	str r5, [r10, #0x60]
	bl OS_Terminate
_02083F04:
	ldr r1, [r10, #0x60]
	cmp r1, #0
	beq _02083F30
	ldr r0, [r10, #0x5c]
	ldr r0, [r0, r1, lsl #2]
	cmp r0, #0
	bne _02083F30
	bl OS_Terminate
	add sp, sp, #0x44
	mvn r0, #1
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
_02083F30:
	rsb r0, r4, #4
	and r0, r0, #3
	ldr r3, [r10, #0x14]
	add r0, r4, r0
	add r2, r0, r3, lsl #2
	rsb r0, r2, #2
	and r1, r0, #1
	sub r0, r2, r3, lsl #2
	str r0, [sp, #0x24]
	add r0, r2, r1
	add r4, r0, r3, lsl #1
	sub r3, r4, r3, lsl #1
	ldr r0, [r10, #4]
	ldr r2, [sp, #0x24]
	mov r1, #0x64
	str r3, [sp, #0x20]
	bl FUN_02084ad0
	ldr r0, [r10, #4]
	ldr r2, [sp, #0x20]
	mov r1, #0x65
	bl FUN_02084ad0
	rsb r0, r4, #2
	and r0, r0, #1
	ldr r1, [r10, #0x18]
	add r0, r4, r0
	add r3, r0, r1, lsl #1
	sub r0, r3, r1, lsl #1
	str r0, [sp, #0x1c]
	rsb r0, r3, #2
	and r0, r0, #1
	add r0, r3, r0
	add r4, r0, r1, lsl #1
	sub r0, r4, r1, lsl #1
	str r0, [sp, #0x34]
	ldr r5, [r10, #0x5c]
	ldr r3, [r10, #0x60]
	ldr r2, [sp, #0x14]
	ldr r3, [r5, r3, lsl #2]
	ldr r0, [sp, #0x1c]
	ldr r3, [r3, #0x14]
	blx r3
	ldr r0, [r10, #0x1c]
	cmp r0, #0
	ldrne r0, [r10, #0x18]
	movne r3, #0
	cmpne r0, #0
	ble _02084010
_02083FEC:
	ldr r0, [sp, #0x1c]
	mov r2, r3, lsl #1
	ldrsh r1, [r0, r2]
	ldr r0, [r10, #0x38]
	add r3, r3, #1
	strh r1, [r0, r2]
	ldr r0, [r10, #0x18]
	cmp r3, r0
	blt _02083FEC
_02084010:
	rsb r0, r4, #2
	and r2, r0, #1
	ldr r0, [r10, #0x14]
	ldr r1, [r10, #0x18]
	add r2, r4, r2
	add r4, r2, r1, lsl #1
	cmp r0, #0
	sub r5, r4, r1, lsl #1
	mov r8, #0
	ble _02084488
_02084038:
	ldr r1, [r10, #0x10]
	rsb r2, r4, #4
	mul r0, r1, r8
	mov r0, r0, lsl #1
	str r0, [sp, #0x3c]
	and r0, r2, #3
	add r0, r4, r0
	add r4, r0, r1, lsl #2
	mov r0, #0
	ldr r3, [r10, #0xc]
	ldr r2, [sp, #0x18]
	mov r11, r0
	add r2, r2, r3, lsl #1
	ldr r3, [r10, #0x4c]
	sub r6, r4, r1, lsl #2
	str r2, [sp, #0x38]
	cmp r3, #0
	beq _02084094
	ldr r2, [sp, #0x3c]
	add r11, r3, r2, lsl #1
	mov r2, r1, lsl #2
	mov r1, r11
	bl MIi_CpuClear32
_02084094:
	str r8, [sp]
	ldr r0, [r10, #0x14]
	ldr r1, [sp, #0x1c]
	str r0, [sp, #4]
	ldr r0, [r10, #0x38]
	ldr r2, [sp, #0x34]
	ldr r3, [r10, #0x18]
	bl FUN_02081968
	ldr r0, [sp, #0x34]
	ldr r1, [r10, #0x18]
	ldr r2, _02084518 ; =0x0000019A
	bl FUN_020818d0
	ldr r0, [sp, #0x34]
	ldr r2, [r10, #0x18]
	mov r1, r5
	mov r3, r4
	bl FUN_020814f8
	ldr r2, [r10, #0x44]
	mov r0, #0x2000
	str r0, [r2, r8, lsl #2]
	ldr r2, [r10, #0x18]
	mov r1, #0
	cmp r2, #0
	ble _02084130
_020840F4:
	mov r2, r1, lsl #1
	ldrsh r9, [r5, r2]
	add r2, r5, r1, lsl #1
	ldrsh r2, [r2, #2]
	ldr r7, [r10, #0x44]
	add r1, r1, #2
	sub r3, r2, r9
	add r2, r9, r2
	add r0, r0, r3
	ldr r3, [r7, r8, lsl #2]
	add r2, r3, r2
	str r2, [r7, r8, lsl #2]
	ldr r2, [r10, #0x18]
	cmp r1, r2
	blt _020840F4
_02084130:
	add r1, r0, #0x52
	ldr r0, [sp, #0x24]
	ldr r2, [r0, r8, lsl #2]
	mov r0, r1, lsl #0x10
	add r2, r2, #0x52
	mov r0, r0, asr #0x11
	add r0, r0, r2, lsl #7
	bl _s32_div_f
	ldr r2, _0208451C ; =0x00007FFF
	cmp r0, r2
	movgt r0, r2
	bgt _0208416C
	rsb r1, r2, #0
	cmp r0, r1
	movlt r0, r1
_0208416C:
	ldr r2, [r10, #0x10]
	mov r0, r0, lsl #0x10
	mov r9, r0, asr #0x10
	mov r0, #0
	mov r1, r6
	mov r2, r2, lsl #2
	bl MIi_CpuClear32
	ldr r0, [sp, #0x14]
	ldr r3, [r0, #4]
	ldr r0, [r0, #0xc]
	ldr r2, [r3]
	and r1, r0, #0x1f
	add r7, r0, #4
	ldr r0, [sp, #0x14]
	str r7, [r0, #0xc]
	rsb r0, r1, #0x20
	cmp r0, #4
	movgt r0, r2, lsl r1
	movgt r0, r0, lsr #0x1c
	bgt _020841EC
	mov r1, #1
	mov r1, r1, lsl r0
	sub r1, r1, #1
	and r1, r2, r1
	ldr r2, [sp, #0x14]
	add r7, r3, #4
	str r7, [r2, #4]
	rsb r0, r0, #4
	ldr r3, [r3, #4]
	rsb r2, r0, #0x20
	mov r2, r3, lsr r2
	orr r0, r2, r1, lsl r0
_020841EC:
	ldr r2, _02084520 ; =0x0208EAC0
	mov r3, r0, lsl #1
	ldr r0, [sp, #0x20]
	mov r1, r8, lsl #1
	ldrsh r0, [r0, r1]
	ldrsh r2, [r2, r3]
	ldr r1, _02084524 ; =0x00006FD2
	ldr r7, [r10, #0x10]
	smulbb r1, r2, r1
	mov r1, r1, lsl #1
	mov r2, r1, asr #0x10
	cmp r7, #0x50
	ldreq r1, _02084528 ; =0x00005A82
	smulbbeq r1, r2, r1
	addeq r1, r1, #0x2000
	moveq r1, r1, lsl #2
	moveq r2, r1, asr #0x10
	smulbb r0, r2, r0
	mov r0, r0, lsl #3
	add r0, r0, r9, asr #1
	mov r1, r9
	bl _s32_div_f
	mov r0, r0, lsl #0xb
	str r0, [sp, #0x2c]
	ldr r3, [r10, #0x5c]
	ldr r0, [r10, #0x60]
	add r1, r10, #0x54
	ldr r3, [r3, r0, lsl #2]
	mov r2, r7
	str r4, [sp]
	str r1, [sp, #4]
	ldr r1, [r3, #0x2c]
	ldr r7, [r3, #0x28]
	ldr r3, [sp, #0x14]
	mov r0, r6
	blx r7
	ldr r2, [sp, #0x2c]
	ldr r3, [r10, #0x10]
	mov r0, r6
	mov r1, r6
	bl FUN_02080500
	ldr r1, [r10, #0x5c]
	ldr r0, [r10, #0x60]
	ldr r0, [r1, r0, lsl #2]
	ldr r0, [r0, #0xc]
	cmp r0, #0
	beq _02084370
	rsb r0, r4, #4
	and r0, r0, #3
	add r1, r4, r0
	ldr r0, [r10, #0x10]
	str r4, [sp, #0x28]
	add r4, r1, r0, lsl #2
	sub r7, r4, r0, lsl #2
	mov r9, #0
	mov r2, r0, lsl #2
	mov r0, r9
	mov r1, r7
	bl MIi_CpuClear32
	ldr r2, [r10, #0x5c]
	ldr r0, [r10, #0x60]
	add r1, r10, #0x54
	ldr r2, [r2, r0, lsl #2]
	ldr r3, [sp, #0x14]
	str r4, [sp]
	str r1, [sp, #4]
	ldr r1, [r2, #0x2c]
	ldr r4, [r2, #0x28]
	ldr r2, [r10, #0x10]
	mov r0, r7
	blx r4
	ldr r2, [sp, #0x2c]
	ldr r4, _0208451C ; =0x00007FFF
	ldr r3, [sp, #0x2c]
	ldr r12, _0208452C ; =0x00003333
	and r3, r3, r4
	mov r2, r2, asr #0xf
	smulbb r3, r3, r12
	smulbb r2, r2, r12
	add r3, r3, #0x4000
	add r2, r2, r3, asr #15
	ldr r3, [r10, #0x10]
	mov r0, r7
	mov r1, r7
	bl FUN_02080500
	ldr r0, [r10, #0x10]
	cmp r0, #0
	ble _0208436C
_0208434C:
	ldr r1, [r6, r9, lsl #2]
	ldr r0, [r7, r9, lsl #2]
	add r0, r1, r0
	str r0, [r6, r9, lsl #2]
	add r9, r9, #1
	ldr r0, [r10, #0x10]
	cmp r9, r0
	blt _0208434C
_0208436C:
	ldr r4, [sp, #0x28]
_02084370:
	ldr r0, [r10, #0x4c]
	cmp r0, #0
	ldrne r0, [r10, #0x10]
	movne r2, #0
	cmpne r0, #0
	ble _020843AC
_02084388:
	ldr r1, [r6, r2, lsl #2]
	mov r0, r2, lsl #2
	add r1, r1, #0x2000
	mov r1, r1, asr #0xe
	strh r1, [r11, r0]
	add r2, r2, #1
	ldr r0, [r10, #0x10]
	cmp r2, r0
	blt _02084388
_020843AC:
	ldr r1, [sp, #0x38]
	ldr r0, [sp, #0x3c]
	add r2, r1, r0
	ldr r0, [r10, #0x18]
	str r0, [sp]
	ldr r0, [r10, #0x40]
	stmib sp, {r0, r4}
	ldr r0, [r10, #0x34]
	ldr r1, [r10, #0x3c]
	ldr r3, [r10, #0x10]
	bl FUN_020807b4
	ldr r0, [r10, #0x10]
	mov r3, #0
	cmp r0, #0
	ble _02084410
_020843E8:
	ldr r0, [r6, r3, lsl #2]
	ldr r1, [r10, #0x34]
	add r0, r0, #0x2000
	mov r2, r0, asr #0xe
	mov r0, r3, lsl #1
	strh r2, [r1, r0]
	ldr r0, [r10, #0x10]
	add r3, r3, #1
	cmp r3, r0
	blt _020843E8
_02084410:
	ldr r0, [r10, #0x18]
	mov r3, #0
	cmp r0, #0
	ble _02084440
_02084420:
	mov r2, r3, lsl #1
	ldrsh r1, [r5, r2]
	ldr r0, [r10, #0x3c]
	add r3, r3, #1
	strh r1, [r0, r2]
	ldr r0, [r10, #0x18]
	cmp r3, r0
	blt _02084420
_02084440:
	ldr r0, [r10, #0x34]
	ldr r1, [r10, #0x10]
	bl FUN_0208055c
	ldr r2, [r10, #0x48]
	mov r1, r8, lsl #1
	strh r0, [r2, r1]
	ldr r0, [r10, #0x48]
	ldr r6, [r10, #0x14]
	ldrsh r0, [r0, r1]
	mov r1, r6
	smulbb r0, r0, r0
	bl _s32_div_f
	ldr r1, [sp, #0x30]
	add r8, r8, #1
	add r0, r1, r0
	str r0, [sp, #0x30]
	cmp r8, r6
	blt _02084038
_02084488:
	ldr r0, [sp, #0x30]
	bl FUN_02083b98
	strh r0, [r10, #0x50]
	ldr r1, [r10, #8]
	mov r0, #0x40
	str r1, [sp]
	str r0, [sp, #4]
	ldr r0, [r10, #0x2c]
	ldr r2, _02084530 ; =0x0208EAE0
	str r0, [sp, #8]
	ldr r1, [r10, #0x30]
	ldr r0, [sp, #0x18]
	str r1, [sp, #0xc]
	str r4, [sp, #0x10]
	ldr r4, [r10, #0xc]
	mov r1, r0
	mov r3, r0
	add r1, r1, r4, lsl #1
	bl FUN_02080920
	ldr r0, [r10, #0x18]
	mov r3, #0
	cmp r0, #0
	ble _02084508
_020844E4:
	ldr r0, [sp, #0x1c]
	mov r2, r3, lsl #1
	ldrsh r1, [r0, r2]
	ldr r0, [r10, #0x38]
	add r3, r3, #1
	strh r1, [r0, r2]
	ldr r0, [r10, #0x18]
	cmp r3, r0
	blt _020844E4
_02084508:
	mov r0, #0
	str r0, [r10, #0x1c]
	add sp, sp, #0x44
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
_02084518: .word 0x0000019A
_0208451C: .word 0x00007FFF
_02084520: .word unk_0208EAC0
_02084524: .word 0x00006FD2
_02084528: .word 0x00005A82
_0208452C: .word 0x00003333
_02084530: .word unk_0208EAE0
	arm_func_end FUN_02083db8

	arm_func_start FUN_02084534
FUN_02084534: ; 0x02084534
	stmfd sp!, {r3, r4, r5, lr}
	sub sp, sp, #8
	mov r5, r0
	mov r4, r2
	cmp r1, #0x67
	mov r3, #0
	bgt _0208463C
	cmp r1, #0x67
	bge _020848A4
	cmp r1, #0x64
	bgt _02084630
	bge _02084840
	cmp r1, #0x2f
	addls pc, pc, r1, lsl #2
	b _020848CC
_02084570: ; jump table
	b _02084690 ; case 0
	b _020846A4 ; case 1
	b _020848CC ; case 2
	b _02084684 ; case 3
	b _020846AC ; case 4
	b _020848CC ; case 5
	b _020846AC ; case 6
	b _020848CC ; case 7
	b _0208466C ; case 8
	b _02084678 ; case 9
	b _02084660 ; case 10
	b _020848CC ; case 11
	b _020848CC ; case 12
	b _020848CC ; case 13
	b _020848CC ; case 14
	b _020848CC ; case 15
	b _020848CC ; case 16
	b _020848CC ; case 17
	b _020848CC ; case 18
	b _020846F8 ; case 19
	b _02084770 ; case 20
	b _020848CC ; case 21
	b _0208477C ; case 22
	b _020848CC ; case 23
	b _02084744 ; case 24
	b _02084768 ; case 25
	b _02084788 ; case 26
	b _020848CC ; case 27
	b _020848CC ; case 28
	b _020848CC ; case 29
	b _020848CC ; case 30
	b _020848CC ; case 31
	b _020848CC ; case 32
	b _020848CC ; case 33
	b _020848CC ; case 34
	b _020848CC ; case 35
	b _020847E8 ; case 36
	b _020847FC ; case 37
	b _020848CC ; case 38
	b _02084804 ; case 39
	b _020848CC ; case 40
	b _020848CC ; case 41
	b _020848CC ; case 42
	b _020848CC ; case 43
	b _0208481C ; case 44
	b _02084828 ; case 45
	b _020848CC ; case 46
	b _02084834 ; case 47
_02084630:
	cmp r1, #0x65
	beq _02084870
	b _020848CC
_0208463C:
	cmp r1, #0x69
	bgt _02084654
	bge _020848B8
	cmp r1, #0x68
	beq _020848B0
	b _020848CC
_02084654:
	cmp r1, #0x6a
	beq _020848C4
	b _020848CC
_02084660:
	ldr r0, [r4]
	str r0, [r5, #0x60]
	b _020848D8
_0208466C:
	ldr r0, [r5, #4]
	mov r1, #8
	b _020846F0
_02084678:
	ldr r0, [r5, #4]
	mov r1, #9
	b _020846F0
_02084684:
	ldr r0, [r5, #8]
_02084688:
	str r0, [r4]
	b _020848D8
_02084690:
	ldr r0, [r5, #4]
	bl FUN_02084ad0
	ldr r0, [r4]
	str r0, [r5, #0x24]
	b _020848D8
_020846A4:
	ldr r0, [r5, #0x24]
	b _02084688
_020846AC:
	ldr r4, [r4]
	add r2, sp, #4
	cmp r4, #0
	movlt r4, r3
	ldr r3, [r5]
	cmp r4, #0xa
	ldr r0, [r3]
	movgt r4, #0xa
	add r0, r0, r4, lsl #2
	ldr r0, [r0, #0x68]
	mov r1, #6
	str r0, [r5, #0x60]
	ldr r0, [r3]
	add r0, r0, r4, lsl #2
	ldr r0, [r0, #0x3c]
	str r0, [sp, #4]
_020846EC:
	ldr r0, [r5, #4]
_020846F0:
	bl FUN_02084ad0
	b _020848D8
_020846F8:
	ldr r0, [r5, #4]
	bl FUN_02084ad0
	ldr r1, [r5, #0x5c]
	ldr r0, [r5, #0x60]
	ldr r0, [r1, r0, lsl #2]
	cmp r0, #0
	beq _02084728
	ldr r2, [r5, #0x20]
	ldr r0, [r0, #0x34]
	ldr r1, [r5, #8]
	mul r0, r2, r0
	b _02084734
_02084728:
	ldr r0, [r5, #0x20]
	ldr r1, [r5, #8]
	mov r0, r0, lsl #2
_02084734:
	bl _s32_div_f
	ldr r1, [r4]
	add r0, r1, r0
	b _02084688
_02084744:
	ldr r0, [r4]
	add r2, sp, #0
	str r0, [sp]
	str r0, [r5, #0x20]
	ldr r0, [sp]
	mov r1, #0x18
	mov r0, r0, asr #1
	str r0, [sp]
	b _020846EC
_02084768:
	ldr r0, [r5, #0x20]
	b _02084688
_02084770:
	ldr r0, [r5, #4]
	mov r1, #0x14
	b _020846F0
_0208477C:
	ldr r0, [r5, #4]
	mov r1, #0x16
	b _020846F0
_02084788:
	ldr r0, [r5, #0x18]
	mov r1, r3
	mov r0, r0, lsl #1
	cmp r0, #0
	ble _020847B4
_0208479C:
	ldr r0, [r5, #0x40]
	str r3, [r0, r1, lsl #2]
	ldr r0, [r5, #0x18]
	add r1, r1, #1
	cmp r1, r0, lsl #1
	blt _0208479C
_020847B4:
	mov r4, #0
_020847B8:
	ldr r0, [r5, #0x30]
	mov r2, r4, lsl #1
	strh r3, [r0, r2]
	ldr r0, [r5, #0x30]
	add r4, r4, #1
	ldrsh r1, [r0, r2]
	ldr r0, [r5, #0x2c]
	cmp r4, #0x40
	strh r1, [r0, r2]
	blt _020847B8
	strh r3, [r5, #0x50]
	b _020848D8
_020847E8:
	ldr r3, [r4]
	ldr r0, [r5, #4]
	mov r1, #0x24
	str r3, [r5, #0x58]
	b _020846F0
_020847FC:
	ldr r0, [r5, #0x58]
	b _02084688
_02084804:
	ldr r0, [r5, #4]
	mov r1, #0x27
	bl FUN_02084ad0
	ldr r0, [r4]
	mov r0, r0, lsl #1
	b _02084688
_0208481C:
	ldr r0, [r5, #4]
	mov r1, #0x2c
	b _020846F0
_02084828:
	ldr r0, [r5, #4]
	mov r1, #0x2d
	b _020846F0
_02084834:
	ldr r0, [r5, #4]
	mov r1, #0x2f
	b _020846F0
_02084840:
	ldr r0, [r5, #0x14]
	mov r1, r3
	cmp r0, #0
	ble _020848D8
_02084850:
	ldr r0, [r5, #0x44]
	ldr r0, [r0, r1, lsl #2]
	str r0, [r4, r1, lsl #2]
	ldr r0, [r5, #0x14]
	add r1, r1, #1
	cmp r1, r0
	blt _02084850
	b _020848D8
_02084870:
	ldr r0, [r5, #0x14]
	mov r2, #0
	cmp r0, #0
	ble _020848D8
_02084880:
	ldr r0, [r5, #0x48]
	mov r1, r2, lsl #1
	ldrsh r0, [r0, r1]
	add r2, r2, #1
	strh r0, [r4, r1]
	ldr r0, [r5, #0x14]
	cmp r2, r0
	blt _02084880
	b _020848D8
_020848A4:
	ldr r0, [r5, #4]
	mov r1, #0x67
	b _020846F0
_020848B0:
	str r4, [r5, #0x4c]
	b _020848D8
_020848B8:
	ldr r0, [r5, #4]
	mov r1, #0x69
	b _020846F0
_020848C4:
	ldr r0, [r5, #0x28]
	b _02084688
_020848CC:
	add sp, sp, #8
	mvn r0, #0
	ldmfd sp!, {r3, r4, r5, pc}
_020848D8:
	mov r0, #0
	add sp, sp, #8
	ldmfd sp!, {r3, r4, r5, pc}
	arm_func_end FUN_02084534

	arm_func_start FUN_020848e4
FUN_020848e4: ; 0x020848E4
	mov r3, #0
	mov r1, #1
	str r3, [r0]
	str r2, [r0, #0x18]
	str r1, [r0, #0x10]
	str r3, [r0, #4]
	str r3, [r0, #8]
	str r3, [r0, #0xc]
	str r3, [r0, #0x14]
	bx lr
	arm_func_end FUN_020848e4

	arm_func_start FUN_0208490c
FUN_0208490c: ; 0x0208490C
	bx lr
	arm_func_end FUN_0208490c

	arm_func_start FUN_02084910
FUN_02084910: ; 0x02084910
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, lr}
	ldr r4, [sp, #0x28]
	ldr r9, [r1, #4]
	rsb r2, r4, #4
	and r2, r2, #3
	add r2, r4, r2
	add r4, r2, r9, lsl #2
	rsb r2, r4, #4
	and r2, r2, #3
	add r2, r4, r2
	add r2, r2, r9, lsl #2
	sub r6, r2, r9, lsl #2
	ldr r2, [r1, #0x10]
	cmp r9, #0
	sub r5, r4, r9, lsl #2
	ldr r8, [r1]
	ldr r7, [r1, #8]
	str r2, [sp]
	mov r10, #0
	ble _02084A28
_02084960:
	ldr r2, [sp]
	cmp r2, #0
	beq _020849A8
	ldr r4, [r3, #0xc]
	ldr r2, [r3, #4]
	and r11, r4, #0x1f
	ldr r4, [r2]
	rsb r2, r11, #0x1f
	mov r2, r4, lsr r2
	cmp r11, #0x1f
	ldreq r4, [r3, #4]
	and r2, r2, #1
	addeq r4, r4, #4
	streq r4, [r3, #4]
	ldr r4, [r3, #0xc]
	add r4, r4, #1
	str r4, [r3, #0xc]
	b _020849AC
_020849A8:
	mov r2, #0
_020849AC:
	str r2, [r6, r10, lsl #2]
	ldr r2, [r3, #4]
	ldr r4, [r3, #0xc]
	ldr r2, [r2]
	and lr, r4, #0x1f
	ldr r4, [r1, #0xc]
	ldr r12, [r3, #0xc]
	rsb r11, lr, #0x20
	cmp r11, r4
	movgt r11, r2, lsl lr
	add r12, r12, r4
	rsbgt r2, r4, #0x20
	str r12, [r3, #0xc]
	movgt r2, r11, lsr r2
	bgt _02084A18
	sub lr, r4, r11
	mov r4, #1
	mov r4, r4, lsl r11
	sub r4, r4, #1
	and r4, r2, r4
	ldr r2, [r3, #4]
	rsb r11, lr, #0x20
	add r12, r2, #4
	str r12, [r3, #4]
	ldr r2, [r2, #4]
	mov r2, r2, lsr r11
	orr r2, r2, r4, lsl lr
_02084A18:
	str r2, [r5, r10, lsl #2]
	add r10, r10, #1
	cmp r10, r9
	blt _02084960
_02084A28:
	cmp r9, #0
	mov r2, #0
	ldmlefd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_02084A34:
	ldr r1, [r6, r2, lsl #2]
	mov r3, #1
	cmp r1, #0
	subne r3, r3, #2
	cmp r3, #1
	mov r1, #0
	bne _02084A88
	cmp r8, #0
	ble _02084AC0
	mul r3, r8, r2
	add r3, r0, r3, lsl #2
_02084A60:
	ldr r10, [r5, r2, lsl #2]
	add r4, r7, r1
	mul r10, r8, r10
	ldrsb r4, [r10, r4]
	mov r4, r4, lsl #9
	str r4, [r3, r1, lsl #2]
	add r1, r1, #1
	cmp r1, r8
	blt _02084A60
	b _02084AC0
_02084A88:
	cmp r8, #0
	ble _02084AC0
	mul r3, r8, r2
	add r3, r0, r3, lsl #2
_02084A98:
	ldr r10, [r5, r2, lsl #2]
	add r4, r7, r1
	mul r10, r8, r10
	ldrsb r4, [r10, r4]
	mov r4, r4, lsl #9
	rsb r4, r4, #0
	str r4, [r3, r1, lsl #2]
	add r1, r1, #1
	cmp r1, r8
	blt _02084A98
_02084AC0:
	add r2, r2, #1
	cmp r2, r9
	blt _02084A34
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
	arm_func_end FUN_02084910

	arm_func_start FUN_02084ad0
FUN_02084ad0: ; 0x02084AD0
	stmfd sp!, {r3, lr}
	ldr r3, [r0]
	ldr r3, [r3, #0x24]
	blx r3
	ldmfd sp!, {r3, pc}
	arm_func_end FUN_02084ad0

	arm_func_start FUN_02084ae4
FUN_02084ae4: ; 0x02084AE4
	cmp r1, #0
	beq _02084AF8
	cmp r1, #1
	beq _02084B04
	b _02084B38
_02084AF8:
	ldr r0, [r0]
	str r0, [r2]
	b _02084B40
_02084B04:
	ldr r1, [r2]
	cmp r1, #0
	moveq r0, #5
	streq r0, [r2]
	beq _02084B40
	add r0, r0, r1, lsl #2
	ldr r0, [r0, #0x1c]
	cmp r0, #0
	mvneq r0, #0
	streq r0, [r2]
	ldrne r0, [r0, #0x34]
	strne r0, [r2]
	b _02084B40
_02084B38:
	mvn r0, #0
	bx lr
_02084B40:
	mov r0, #0
	bx lr
	arm_func_end FUN_02084ae4

	arm_func_start FUN_02084b48
FUN_02084b48: ; 0x02084B48
	stmfd sp!, {r4, lr}
	ldr r0, _02084B6C ; =0x020B9FD8
	mov r4, #0
	add r0, r0, #0x700
	strh r4, [r0, #0x1a]
	strh r4, [r0, #0x1c]
	bl FUN_02084c18
	mov r0, r4
	ldmfd sp!, {r4, pc}
_02084B6C: .word unk_020B9FD8
	arm_func_end FUN_02084b48

	arm_func_start FUN_02084b70
FUN_02084b70: ; 0x02084B70
	stmfd sp!, {r3, lr}
	bl FUN_02084cac
	mov r0, #0
	ldmfd sp!, {r3, pc}
	arm_func_end FUN_02084b70

	arm_func_start FUN_02084b80
FUN_02084b80: ; 0x02084B80
	stmfd sp!, {r3, lr}
	ldr r0, _02084BAC ; =0x020BA6D8
	ldrh r0, [r0, #0x1a]
	cmp r0, #0
	beq _02084BA4
	mov r0, #0
	mov r1, r0
	mov r2, r0
	bl FUN_02084d14
_02084BA4:
	mov r0, #0
	ldmfd sp!, {r3, pc}
_02084BAC: .word unk_020BA6D8
	arm_func_end FUN_02084b80

	arm_func_start FUN_02084bb0
FUN_02084bb0: ; 0x02084BB0
	stmfd sp!, {r3, lr}
	ldr r0, _02084BCC ; =0x020BC404
	ldrsb r1, [r0, #0x24]
	cmp r1, #0
	ldmeqfd sp!, {r3, pc}
	bl FUN_02085278
	ldmfd sp!, {r3, pc}
_02084BCC: .word unk_020BC404
	arm_func_end FUN_02084bb0

	arm_func_start FUN_02084bd0
FUN_02084bd0: ; 0x02084BD0
	stmfd sp!, {r3, r4, r5, lr}
	ldr r5, _02084C14 ; =0x020BC404
	ldrsb r0, [r5, #0x24]
	cmp r0, #0
	ldmeqfd sp!, {r3, r4, r5, pc}
	mov r4, #1
	mov r0, r5
	mov r2, r4
	mov r1, #0
	bl FUN_02085018
	mov r0, r5
	mov r1, r4
	mov r2, #3
	bl FUN_02085018
	mov r0, r5
	bl FUN_02085084
	ldmfd sp!, {r3, r4, r5, pc}
_02084C14: .word unk_020BC404
	arm_func_end FUN_02084bd0

	arm_func_start FUN_02084c18
FUN_02084c18: ; 0x02084C18
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	sub sp, sp, #8
	ldr r5, _02084C98 ; =0x020BC404
	mov r4, #0
	str r4, [r5]
	str r4, [r5, #8]
	strb r4, [r5, #0x24]
	strb r4, [r5, #0x25]
	mov r7, #0x400
	ldr r2, _02084C9C ; =0x78667473
	mov r0, r7
	strb r4, [r5, #0x26]
	mov r1, #0x10
	bl DseMem_AllocateLastFit
	str r0, [r5, #0x34]
	ldr r6, _02084CA0 ; =0x020BC43C
	ldr r0, _02084CA4 ; =0x020BAFD8
	str r7, [sp]
	ldrb r2, [r0, #0xd1c]
	ldr r1, _02084CA8 ; =FUN_02085324
	mov r0, r6
	add r2, r2, #1
	str r2, [sp, #4]
	ldr r3, [r5, #0x34]
	mov r2, r4
	add r3, r3, #0x400
	bl OS_CreateThread
	mov r0, r6
	bl OS_WakeupThreadDirect
	mov r0, r4
	add sp, sp, #8
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_02084C98: .word unk_020BC404
_02084C9C: .word 0x78667473
_02084CA0: .word unk_020BC43C
_02084CA4: .word unk_020BAFD8
_02084CA8: .word FUN_02085324
	arm_func_end FUN_02084c18

	arm_func_start FUN_02084cac
FUN_02084cac: ; 0x02084CAC
	stmfd sp!, {r4, r5, r6, r7, r8, lr}
	mov r8, #0
	mov r0, r8
	mov r1, r8
	mov r2, r8
	bl FUN_02084d14
	ldr r5, _02084D08 ; =0x020BC43C
	ldr r4, _02084D0C ; =0x020BC404
	mov r0, #1
	ldr r7, _02084D10 ; =0x04000208
	strb r0, [r4, #0x26]
	ldrh r6, [r7]
	mov r0, r5
	strh r8, [r7]
	bl OS_WakeupThreadDirect
	ldrh r0, [r7]
	mov r0, r5
	strh r6, [r7]
	bl OS_JoinThread
	ldr r0, [r4, #0x34]
	bl DseMem_Free
	mov r0, r8
	ldmfd sp!, {r4, r5, r6, r7, r8, pc}
_02084D08: .word unk_020BC43C
_02084D0C: .word unk_020BC404
_02084D10: .word 0x04000208
	arm_func_end FUN_02084cac

	arm_func_start FUN_02084d14
FUN_02084d14: ; 0x02084D14
	stmfd sp!, {r4, r5, r6, r7, r8, r9, r10, lr}
	ldr r3, _02084FF0 ; =0x0000FFFF
	mov r7, r1
	ldr r8, _02084FF4 ; =0x020BC404
	mov r10, #0
	cmp r7, r3
	moveq r0, r10
	ldmeqfd sp!, {r4, r5, r6, r7, r8, r9, r10, pc}
	cmp r7, #0
	ldreqh r1, [r8, #0x1c]
	cmpeq r1, #0
	moveq r0, r10
	ldmeqfd sp!, {r4, r5, r6, r7, r8, r9, r10, pc}
	cmp r7, #0
	beq _02084D98
	cmp r0, #1
	blo _02084D74
	mvn r4, #0x17
	mov r1, #0
	mov r0, r4
	mov r2, r1
	bl Dse_SetError
	mov r0, r4
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, pc}
_02084D74:
	tst r7, #0xff00
	bne _02084D98
	mvn r4, #0x17
	mov r1, #0
	mov r0, r4
	mov r2, r1
	bl Dse_SetError
	mov r0, r4
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, pc}
_02084D98:
	mov r1, #0xc
	mul r1, r0, r1
	cmp r2, #0
	ldrneb r6, [r2, #2]
	ldrneb r4, [r2]
	ldrneb r5, [r2, #1]
	moveq r6, #0
	ldr r0, _02084FF8 ; =0x020BA6F2
	moveq r4, r6
	strh r7, [r0, r1]
	add r1, r0, r1
	moveq r5, r6
	strh r4, [r1, #2]
	strh r5, [r1, #8]
	mov r0, r8
	strh r6, [r1, #0xa]
	bl FUN_02085278
	strb r10, [r8, #0x24]
	ldr r0, [r8]
	cmp r0, #0
	beq _02084DF4
	bl DseMem_Free
	str r10, [r8]
_02084DF4:
	ldr r8, _02084FF4 ; =0x020BC404
	ldr r0, [r8, #8]
	cmp r0, #0
	beq _02084E0C
	bl DseMem_Free
	str r10, [r8, #8]
_02084E0C:
	cmp r7, #0
	mov r10, #1
	mov r1, #0x7f
	bgt _02084E28
	cmp r7, #0
	beq _02084EDC
	b _02084ED4
_02084E28:
	sub r0, r7, #0x300
	cmp r0, #5
	addls pc, pc, r0, lsl #2
	b _02084ED4
_02084E38: ; jump table
	b _02084E50 ; case 0
	b _02084E6C ; case 1
	b _02084E80 ; case 2
	b _02084E94 ; case 3
	b _02084EA0 ; case 4
	b _02084EB4 ; case 5
_02084E50:
	ldr r0, _02084FFC ; =FUN_020853c4
	cmp r5, #0
	moveq r7, #0
	strb r4, [r8, #0x1e]
_02084E60:
	str r0, [r8, #0x30]
	mov r9, #0
	b _02084EDC
_02084E6C:
	cmp r5, #0
	moveq r7, #0
	strb r1, [r8, #0x1e]
	ldr r0, _02085000 ; =FUN_0208541c
	b _02084EC4
_02084E80:
	cmp r5, #0
	moveq r7, #0
	strb r1, [r8, #0x1e]
	ldr r0, _02085004 ; =FUN_020854f4
	b _02084EC4
_02084E94:
	ldr r0, _02085008 ; =FUN_020855b0
	strb r1, [r8, #0x1e]
	b _02084E60
_02084EA0:
	cmp r5, #0
	moveq r7, #0
	strb r1, [r8, #0x1e]
	ldr r0, _0208500C ; =FUN_020855d8
	b _02084EC4
_02084EB4:
	ldr r0, _02085010 ; =FUN_020856c4
	cmp r5, #0
	moveq r7, #0
	strb r1, [r8, #0x1e]
_02084EC4:
	strb r4, [r8, #0x21]
	str r0, [r8, #0x30]
	mov r9, #1
	b _02084EDC
_02084ED4:
	mvn r0, #0x5f
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, pc}
_02084EDC:
	cmp r7, #0
	beq _02084FE8
	mov r0, #0xc0
	mul r3, r6, r0
	mov r0, r5, lsl #8
	add r1, r0, r0, lsr #31
	mov r4, r1, asr #1
	str r0, [r8, #0x10]
	add r1, r4, r4, lsr #31
	ldr r2, _02085014 ; =0x81020409
	str r4, [r8, #0x14]
	mov r1, r1, asr #1
	str r1, [r8, #0x18]
	smull r1, r4, r2, r3
	strh r7, [r8, #0x1c]
	add r4, r3, r4
	mov r1, r3, lsr #0x1f
	add r4, r1, r4, asr #6
	strb r6, [r8, #0x1f]
	add r1, r4, #0x40
	strh r1, [r8, #0x22]
	ldr r1, [r8]
	cmp r1, #0
	bne _02084F58
	mov r4, #0x20
	mov r1, r4
	bl DseMem_AllocateUser
	movs r1, r0
	str r1, [r8]
	subeq r0, r4, #0xa0
	ldmeqfd sp!, {r4, r5, r6, r7, r8, r9, r10, pc}
_02084F58:
	ldr r0, [r8, #0x14]
	cmp r9, #1
	add r0, r1, r0
	str r0, [r8, #4]
	bne _02084FB8
	ldr r0, [r8, #0x10]
	mov r1, #0x20
	bl DseMem_AllocateUser
	str r0, [r8, #8]
	cmp r0, #0
	bne _02084FAC
	ldr r0, [r8]
	bl DseMem_Free
	mov r1, #0
	sub r4, r1, #0x80
	mov r0, r4
	mov r2, r1
	str r1, [r8]
	bl Dse_SetError
	mov r0, r4
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, pc}
_02084FAC:
	ldr r1, [r8, #0x14]
	add r0, r0, r1
	str r0, [r8, #0xc]
_02084FB8:
	mov r1, #0
	mov r0, r8
	mov r2, r10
	strb r1, [r8, #0x20]
	bl FUN_02085018
	mov r0, r8
	mov r1, r10
	mov r2, #3
	bl FUN_02085018
	mov r0, r8
	bl FUN_02085084
	strb r10, [r8, #0x24]
_02084FE8:
	mov r0, #0
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, pc}
_02084FF0: .word 0x0000FFFF
_02084FF4: .word unk_020BC404
_02084FF8: .word unk_020BA6F2
_02084FFC: .word FUN_020853c4
_02085000: .word FUN_0208541c
_02085004: .word FUN_020854f4
_02085008: .word FUN_020855b0
_0208500C: .word FUN_020855d8
_02085010: .word FUN_020856c4
_02085014: .word 0x81020409
	arm_func_end FUN_02084d14

	arm_func_start FUN_02085018
FUN_02085018: ; 0x02085018
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, lr}
	ldr r12, _0208507C ; =0x020BA720
	mov r3, #0x15c
	mla r7, r2, r3, r12
	ldr r6, _02085080 ; =0x04000208
	mov r9, r0
	ldrh r5, [r6]
	mov r4, #0
	mov r0, r7
	mov r8, r1
	strh r4, [r6]
	bl DseVoice_Deallocate
	add r0, r7, #0x3c
	sub r1, r4, #0xc0000001
	bl DseEnvelope_ForceVolume
	add r0, r7, #0x5c
	bl DseLfoBank_Reset
	strh r4, [r7, #6]
	mov r0, #0x10
	strb r0, [r7, #0x14e]
	add r0, r9, r8, lsl #2
	str r7, [r0, #0x28]
	ldrh r0, [r6]
	strh r5, [r6]
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
_0208507C: .word unk_020BA720
_02085080: .word 0x04000208
	arm_func_end FUN_02085018

	arm_func_start FUN_02085084
FUN_02085084: ; 0x02085084
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, lr}
	sub sp, sp, #0x10
	mov r4, r0
	ldr r6, [r4, #0x18]
	ldrh r3, [r4, #0x1c]
	add r5, r6, #0x20
	mov r6, r6, lsr #1
	sub r3, r3, #0x300
	mov r7, #0
	mov r5, r5, lsr #1
	mov r8, r6, lsl #9
	mov r6, r5, lsl #9
	mov r5, r8, lsr #5
	strb r7, [r4, #0x20]
	cmp r3, #7
	mov r6, r6, lsr #5
	mov r8, #1
	addls pc, pc, r3, lsl #2
	b _02085110
_020850D0: ; jump table
	b _020850F0 ; case 0
	b _02085100 ; case 1
	b _02085100 ; case 2
	b _02085104 ; case 3
	b _02085104 ; case 4
	b _02085104 ; case 5
	b _02085104 ; case 6
	b _02085104 ; case 7
_020850F0:
	mov r0, r7
	mov r1, r7
	mov r2, r7
	b _02085110
_02085100:
	b _02085104
_02085104:
	mov r0, r8
	mov r2, r0
	mov r1, #2
_02085110:
	mov r3, r2
	bl SND_SetOutputSelector
	mov r9, #0
	stmia sp, {r8, r9}
	str r9, [sp, #8]
	ldr r3, [r4, #0x14]
	ldr r2, [r4]
	mov r0, r9
	mov r1, r9
	mov r3, r3, lsr #2
	bl SND_SetupCapture
	stmia sp, {r8, r9}
	str r9, [sp, #8]
	ldr r1, [r4, #0x14]
	ldr r2, [r4, #4]
	mov r3, r1, lsr #2
	mov r0, r8
	mov r1, r9
	bl SND_SetupCapture
	ldr r3, _02085268 ; =FUN_02085310
	mov r1, r6
	mov r2, r5
	mov r0, #4
	str r4, [sp]
	bl SND_SetupAlarm
	ldr r1, _0208526C ; =0x04000208
	ldrh r0, [r1]
	str r0, [sp, #0xc]
	strh r9, [r1]
	mov r7, r9
	mvn r6, #0xc0000000
	mov r5, #1
	mov r11, #0x1000
_02085194:
	add r0, r4, r9, lsl #2
	ldr r10, [r0, #0x28]
	cmp r9, #0
	strh r11, [r10, #4]
	strb r8, [r10, #0xc]
	strb r8, [r10, #0x1f]
	ldreq r0, [r4]
	mov r1, r6
	ldrne r0, [r4, #4]
	tst r9, #1
	str r0, [r10, #0x30]
	str r7, [r10, #0x34]
	ldr r0, [r4, #0x14]
	mov r0, r0, lsr #2
	str r0, [r10, #0x38]
	mov r0, #1
	strb r0, [r10, #0x21]
	mov r0, #0x200
	str r0, [r10, #0x13c]
	ldrb r0, [r4, #0x1e]
	str r0, [r10, #0x140]
	moveq r0, r7
	movne r0, #0x7f
	str r0, [r10, #0x144]
	add r0, r10, #0x3c
	bl DseEnvelope_ForceVolume
	add r0, r10, #0x5c
	bl DseLfoBank_Reset
	add r9, r9, #1
	strh r5, [r10, #6]
	cmp r9, #2
	blt _02085194
	ldr r1, _02085270 ; =0x020B9FD8
	ldr r0, _02085274 ; =0x020BC404
	ldrb r3, [r1, #0x745]
	strb r5, [r0, #0x25]
	ldr r2, _0208526C ; =0x04000208
	and r0, r3, #0xef
	strb r0, [r1, #0x745]
	ldrb r0, [r1, #0x747]
	and r0, r0, #0xfc
	strb r0, [r1, #0x747]
	ldrb r0, [r1, #0x744]
	orr r0, r0, #0x10
	strb r0, [r1, #0x744]
	ldrb r0, [r1, #0x746]
	orr r0, r0, #3
	strb r0, [r1, #0x746]
	ldrh r0, [r2]
	ldr r0, [sp, #0xc]
	strh r0, [r2]
	add sp, sp, #0x10
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_02085268: .word FUN_02085310
_0208526C: .word 0x04000208
_02085270: .word unk_020B9FD8
_02085274: .word unk_020BC404
	arm_func_end FUN_02085084

	arm_func_start FUN_02085278
FUN_02085278: ; 0x02085278
	stmfd sp!, {r4, r5, r6, lr}
	ldr r1, _02085304 ; =0x020BC404
	mov r6, r0
	ldrsb r0, [r1, #0x25]
	cmp r0, #0
	ldmeqfd sp!, {r4, r5, r6, pc}
	mov r5, #0
	ldr r0, _02085308 ; =0x04000208
	strb r5, [r1, #0x25]
	ldrh r4, [r0]
	strh r5, [r0]
_020852A4:
	add r0, r6, r5, lsl #2
	ldr r0, [r0, #0x28]
	cmp r0, #0
	beq _020852B8
	bl DseVoice_Deallocate
_020852B8:
	add r5, r5, #1
	cmp r5, #2
	blt _020852A4
	ldr r12, _0208530C ; =0x020B9FD8
	mov r0, #0
	ldrb r2, [r12, #0x745]
	ldr lr, _02085308 ; =0x04000208
	mov r1, r0
	orr r2, r2, #0x10
	strb r2, [r12, #0x745]
	ldrb r5, [r12, #0x747]
	mov r2, r0
	mov r3, r0
	orr r5, r5, #3
	strb r5, [r12, #0x747]
	ldrh r12, [lr]
	strh r4, [lr]
	bl SND_SetOutputSelector
	ldmfd sp!, {r4, r5, r6, pc}
_02085304: .word unk_020BC404
_02085308: .word 0x04000208
_0208530C: .word unk_020B9FD8
	arm_func_end FUN_02085278

	arm_func_start FUN_02085310
FUN_02085310: ; 0x02085310
	ldr r0, _0208531C ; =0x020BC43C
	ldr r12, _02085320 ; =OS_WakeupThreadDirect
	bx r12
_0208531C: .word unk_020BC43C
_02085320: .word OS_WakeupThreadDirect
	arm_func_end FUN_02085310

	arm_func_start FUN_02085324
FUN_02085324: ; 0x02085324
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, lr}
	mov r11, #0
	ldr r5, _020853C0 ; =0x020BC404
	mov r4, #1
	mov r6, r11
_02085338:
	mov r0, r6
	bl OS_SleepThread
	ldrsb r0, [r5, #0x26]
	cmp r0, #1
	ldmeqfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
	ldrsb r0, [r5, #0x25]
	cmp r0, #1
	bne _02085338
	ldrb r7, [r5, #0x20]
	ldr r10, [r5, #0x18]
	ldr r9, [r5]
	cmp r7, #1
	ldr r8, [r5, #4]
	addeq r9, r9, r10
	addeq r8, r8, r10
	ldr r12, [r5, #0x30]
	mov r0, r5
	mov r1, r9
	mov r2, r8
	mov r3, r10
	blx r12
	mov r0, r9
	mov r1, r10
	bl DC_FlushRange
	mov r0, r8
	mov r1, r10
	bl DC_FlushRange
	bl DC_WaitWriteBufferEmpty
	mov r0, r4
	cmp r7, #0
	movne r0, r11
	strb r0, [r5, #0x20]
	b _02085338
	arm_func_end FUN_02085324

	arm_func_start FUN_020853bc
FUN_020853bc: ; 0x020853BC
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_020853C0: .word unk_020BC404
	arm_func_end FUN_020853bc

	arm_func_start FUN_020853c4
FUN_020853c4: ; 0x020853C4
	stmfd sp!, {r3, lr}
	ldrb r0, [r0, #0x1f]
	mov r12, r3, asr #1
	cmp r12, #0
	add lr, r0, #0x80
	ldmlefd sp!, {r3, pc}
_020853DC:
	ldrsh r0, [r1]
	sub r12, r12, #1
	cmp r12, #0
	mul r3, r0, lr
	mov r0, r3, asr #7
	add r0, r3, r0, lsr #24
	mov r0, r0, asr #8
	strh r0, [r1], #2
	ldrsh r0, [r2]
	mul r3, r0, lr
	mov r0, r3, asr #7
	add r0, r3, r0, lsr #24
	mov r0, r0, asr #8
	strh r0, [r2], #2
	bgt _020853DC
	ldmfd sp!, {r3, pc}
	arm_func_end FUN_020853c4

	arm_func_start FUN_0208541c
FUN_0208541c: ; 0x0208541C
	stmfd sp!, {r4, r5, r6, r7, r8, r9, r10, lr}
	ldrb r5, [r0, #0x20]
	ldr lr, [r0, #8]
	ldr r4, [r0, #0xc]
	cmp r5, #1
	biceq r5, r3, #1
	ldrh r6, [r0, #0x22]
	ldrb r7, [r0, #0x21]
	addeq lr, lr, r5
	addeq r4, r4, r5
	mov r5, r3, asr #1
	cmp r5, #0
	ldmlefd sp!, {r4, r5, r6, r7, r8, r9, r10, pc}
	mov r3, #0x8000
	rsb r3, r3, #0
	mov r12, r3, lsr #0x11
_0208545C:
	ldrsh r8, [lr]
	ldrsh r0, [r1]
	sub r5, r5, #1
	mul r10, r8, r6
	mul r9, r10, r7
	mov r8, r10, asr #7
	add r8, r10, r8, lsr #24
	mov r8, r8, asr #8
	add r8, r8, r0, asr #8
	add r0, r0, r9, asr #7
	cmp r0, r3, lsr #17
	strh r8, [lr]
	movgt r0, r12
	bgt _0208549C
	cmp r0, r3
	movlt r0, r3
_0208549C:
	strh r0, [r1], #2
	ldrsh r8, [r4]
	ldrsh r0, [r2]
	add lr, lr, #2
	mul r10, r8, r6
	mul r9, r10, r7
	mov r8, r10, asr #7
	add r8, r10, r8, lsr #24
	mov r8, r8, asr #8
	add r8, r8, r0, asr #8
	add r0, r0, r9, asr #7
	cmp r0, r3, lsr #17
	strh r8, [r4]
	movgt r0, r12
	bgt _020854E0
	cmp r0, r3
	movlt r0, r3
_020854E0:
	cmp r5, #0
	strh r0, [r2], #2
	add r4, r4, #2
	bgt _0208545C
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, pc}
	arm_func_end FUN_0208541c

	arm_func_start FUN_020854f4
FUN_020854f4: ; 0x020854F4
	stmfd sp!, {r4, r5, r6, r7, r8, r9, r10, lr}
	ldrb r4, [r0, #0x20]
	ldr lr, [r0, #8]
	ldrh r5, [r0, #0x22]
	cmp r4, #1
	biceq r4, r3, #1
	addeq lr, lr, r4
	mov r4, r3, asr #1
	ldrb r6, [r0, #0x21]
	cmp r4, #0
	ldmlefd sp!, {r4, r5, r6, r7, r8, r9, r10, pc}
	mov r0, #0x8000
	rsb r0, r0, #0
	mov r3, r0, lsr #0x11
_0208552C:
	ldrsh r8, [lr]
	ldrsh r12, [r1]
	ldrsh r7, [r2]
	mul r9, r8, r5
	mul r10, r9, r6
	mov r8, r9, asr #7
	add r9, r9, r8, lsr #24
	mov r8, r10, asr #6
	add r10, r10, r8, lsr #25
	add r8, r12, r10, asr #7
	cmp r8, r0, lsr #17
	add r12, r12, r7
	mov r9, r9, asr #8
	add r9, r9, r12, asr #9
	strh r9, [lr]
	sub r4, r4, #1
	movgt r8, r3
	bgt _0208557C
	cmp r8, r0
	movlt r8, r0
_0208557C:
	add r7, r7, r10, asr #7
	cmp r7, r0, lsr #17
	strh r8, [r1]
	movgt r7, r3
	bgt _02085598
	cmp r7, r0
	movlt r7, r0
_02085598:
	cmp r4, #0
	strh r7, [r2], #2
	add r1, r1, #2
	add lr, lr, #2
	bgt _0208552C
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, pc}
	arm_func_end FUN_020854f4

	arm_func_start FUN_020855b0
FUN_020855b0: ; 0x020855B0
	mov r2, r3, asr #1
	cmp r2, #0
	bxle lr
_020855BC:
	ldrsh r0, [r1]
	sub r2, r2, #1
	cmp r2, #0
	rsb r0, r0, #0
	strh r0, [r1], #2
	bgt _020855BC
	bx lr
	arm_func_end FUN_020855b0

	arm_func_start FUN_020855d8
FUN_020855d8: ; 0x020855D8
	stmfd sp!, {r4, r5, r6, r7, r8, r9, r10, lr}
	ldrb r5, [r0, #0x20]
	ldr lr, [r0, #8]
	ldr r4, [r0, #0xc]
	cmp r5, #1
	biceq r5, r3, #1
	ldrh r6, [r0, #0x22]
	ldrb r7, [r0, #0x21]
	addeq lr, lr, r5
	addeq r4, r4, r5
	mov r5, r3, asr #1
	cmp r5, #0
	ldmlefd sp!, {r4, r5, r6, r7, r8, r9, r10, pc}
	mov r3, #0x8000
	rsb r3, r3, #0
	mov r12, r3, lsr #0x11
_02085618:
	ldrsh r8, [lr]
	ldrsh r0, [r1]
	sub r5, r5, #1
	mul r10, r8, r6
	mul r9, r10, r7
	mov r8, r10, asr #7
	add r8, r10, r8, lsr #24
	mov r8, r8, asr #8
	add r8, r8, r0, asr #8
	add r0, r0, r9, asr #7
	cmp r0, r3, lsr #17
	strh r8, [lr]
	movgt r0, r12
	bgt _02085658
	cmp r0, r3
	movlt r0, r3
_02085658:
	strh r0, [r1], #2
	ldrsh r8, [r4]
	ldrsh r0, [r2]
	add lr, lr, #2
	mul r10, r8, r6
	mul r9, r10, r7
	mov r8, r10, asr #7
	add r8, r10, r8, lsr #24
	mov r8, r8, asr #8
	add r8, r8, r0, asr #8
	add r0, r0, r9, asr #7
	cmp r0, r3, lsr #17
	strh r8, [r4]
	movgt r0, r12
	bgt _0208569C
	cmp r0, r3
	movlt r0, r3
_0208569C:
	mov r0, r0, lsl #0x10
	mov r0, r0, lsr #0x10
	mov r0, r0, lsl #0x10
	mov r0, r0, asr #0x10
	rsb r0, r0, #0
	cmp r5, #0
	strh r0, [r2], #2
	add r4, r4, #2
	bgt _02085618
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, pc}
	arm_func_end FUN_020855d8

	arm_func_start FUN_020856c4
FUN_020856c4: ; 0x020856C4
	stmfd sp!, {r4, r5, r6, r7, r8, r9, r10, lr}
	ldrb r4, [r0, #0x20]
	ldr lr, [r0, #8]
	ldrh r5, [r0, #0x22]
	cmp r4, #1
	biceq r4, r3, #1
	addeq lr, lr, r4
	mov r4, r3, asr #1
	ldrb r6, [r0, #0x21]
	cmp r4, #0
	ldmlefd sp!, {r4, r5, r6, r7, r8, r9, r10, pc}
	mov r0, #0x8000
	rsb r0, r0, #0
	mov r3, r0, lsr #0x11
_020856FC:
	ldrsh r8, [lr]
	ldrsh r12, [r1]
	ldrsh r7, [r2]
	mul r9, r8, r5
	mul r10, r9, r6
	mov r8, r9, asr #7
	add r9, r9, r8, lsr #24
	add r8, r12, r10, asr #7
	cmp r8, r0, lsr #17
	add r12, r12, r7
	mov r9, r9, asr #8
	add r9, r9, r12, asr #9
	strh r9, [lr]
	sub r4, r4, #1
	movgt r8, r3
	bgt _02085744
	cmp r8, r0
	movlt r8, r0
_02085744:
	add r7, r7, r10, asr #7
	cmp r7, r0, lsr #17
	strh r8, [r1]
	movgt r7, r3
	bgt _02085760
	cmp r7, r0
	movlt r7, r0
_02085760:
	mov r7, r7, lsl #0x10
	mov r7, r7, lsr #0x10
	mov r7, r7, lsl #0x10
	mov r7, r7, asr #0x10
	rsb r7, r7, #0
	cmp r4, #0
	strh r7, [r2], #2
	add lr, lr, #2
	add r1, r1, #2
	bgt _020856FC
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, pc}
	arm_func_end FUN_020856c4

	arm_func_start FUN_0208578c
FUN_0208578c: ; 0x0208578C
	stmfd sp!, {r3, r4, r5, lr}
	mov r4, r1
	mov r5, r0
	ldr r1, _020857C8 ; =0x6F666966
	mov r0, r4
	bl FUN_0207dbf4
	cmp r0, #0
	mvneq r0, #0
	ldmeqfd sp!, {r3, r4, r5, pc}
	str r0, [r5]
	mov r0, r5
	str r4, [r5, #4]
	bl FUN_020857f4
	mov r0, r4
	ldmfd sp!, {r3, r4, r5, pc}
_020857C8: .word 0x6F666966
	arm_func_end FUN_0208578c

	arm_func_start FUN_020857cc
FUN_020857cc: ; 0x020857CC
	stmfd sp!, {r4, lr}
	mov r4, r0
	ldr r0, [r4]
	cmp r0, #0
	ldmeqfd sp!, {r4, pc}
	bl FUN_0207dc70
	mov r0, #0
	str r0, [r4]
	str r0, [r4, #4]
	ldmfd sp!, {r4, pc}
	arm_func_end FUN_020857cc

	arm_func_start FUN_020857f4
FUN_020857f4: ; 0x020857F4
	ldr r1, [r0]
	cmp r1, #0
	movne r1, #0
	strne r1, [r0, #0xc]
	strne r1, [r0, #0x10]
	strne r1, [r0, #8]
	bx lr
	arm_func_end FUN_020857f4

	arm_func_start FUN_02085810
FUN_02085810: ; 0x02085810
	stmfd sp!, {r4, r5, r6, r7, r8, lr}
	mov r6, r2
	mov r8, r0
	cmp r6, #0
	mov r7, r1
	movle r0, #0
	ldmlefd sp!, {r4, r5, r6, r7, r8, pc}
	ldr r1, [r8, #4]
	ldr r0, [r8, #8]
	sub r3, r1, r0
	cmp r3, r6
	movlt r0, #0
	ldmltfd sp!, {r4, r5, r6, r7, r8, pc}
	ldr r3, [r8, #0xc]
	add r0, r0, r6
	sub r4, r1, r3
	str r0, [r8, #8]
	mov r5, r6
	cmp r4, r6
	ldr r1, [r8]
	mov r0, r7
	bge _02085890
	mov r2, r4
	add r1, r1, r3
	bl MIi_CpuCopyFast
	sub r6, r6, r4
	ldr r1, [r8]
	mov r2, r6
	add r0, r7, r4
	bl MIi_CpuCopyFast
	str r6, [r8, #0xc]
	b _020858B4
_02085890:
	add r1, r1, r3
	bl MIi_CpuCopyFast
	ldr r1, [r8, #0xc]
	ldr r0, [r8, #4]
	add r1, r1, r6
	cmp r1, r0
	str r1, [r8, #0xc]
	moveq r0, #0
	streq r0, [r8, #0xc]
_020858B4:
	mov r0, r5
	ldmfd sp!, {r4, r5, r6, r7, r8, pc}
	arm_func_end FUN_02085810

	arm_func_start FUN_020858bc
FUN_020858bc: ; 0x020858BC
	stmfd sp!, {r4, r5, r6, r7, r8, lr}
	mov r8, r0
	ldr r0, [r8, #8]
	mov r6, r2
	mov r7, r1
	cmp r0, r6
	bge _020858EC
	cmp r0, #0
	cmpne r3, #0
	moveq r0, #0
	ldmeqfd sp!, {r4, r5, r6, r7, r8, pc}
	mov r6, r0
_020858EC:
	ldr r3, [r8, #0x10]
	ldmib r8, {r0, r1}
	sub r4, r0, r3
	sub r1, r1, r6
	str r1, [r8, #8]
	mov r5, r6
	cmp r4, r6
	ldr r0, [r8]
	mov r1, r7
	bge _0208593C
	mov r2, r4
	add r0, r0, r3
	bl MIi_CpuCopyFast
	sub r6, r6, r4
	ldr r0, [r8]
	mov r2, r6
	add r1, r7, r4
	bl MIi_CpuCopyFast
	str r6, [r8, #0x10]
	b _02085964
_0208593C:
	mov r2, r6
	add r0, r0, r3
	bl MIi_CpuCopyFast
	ldr r1, [r8, #0x10]
	ldr r0, [r8, #4]
	add r1, r1, r6
	cmp r1, r0
	str r1, [r8, #0x10]
	moveq r0, #0
	streq r0, [r8, #0x10]
_02085964:
	mov r0, r5
	ldmfd sp!, {r4, r5, r6, r7, r8, pc}
	arm_func_end FUN_020858bc

    .rodata
	.global DSE_MIDI_EVENT_LENGTHS
DSE_MIDI_EVENT_LENGTHS:
	.byte 0x02, 0x02, 0x02, 0x02, 0x01, 0x01, 0x02, 0x00
	.global DSE_LFO_OUTPUT_VOICE_UPDATE_FLAGS
DSE_LFO_OUTPUT_VOICE_UPDATE_FLAGS:
	.byte 0x00, 0x00, 0x10, 0x00, 0x20, 0x00, 0x40, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.global unk_0208C544
unk_0208C544:
	.byte 0x07, 0x00, 0x08, 0x00, 0x09, 0x00, 0x0A, 0x00, 0x0B, 0x00, 0x0C, 0x00
	.byte 0x0D, 0x00, 0x0E, 0x00, 0x10, 0x00, 0x11, 0x00, 0x13, 0x00, 0x15, 0x00, 0x17, 0x00, 0x19, 0x00
	.byte 0x1C, 0x00, 0x1F, 0x00, 0x22, 0x00, 0x25, 0x00, 0x29, 0x00, 0x2D, 0x00, 0x32, 0x00, 0x37, 0x00
	.byte 0x3C, 0x00, 0x42, 0x00, 0x49, 0x00, 0x50, 0x00, 0x58, 0x00, 0x61, 0x00, 0x6B, 0x00, 0x76, 0x00
	.byte 0x82, 0x00, 0x8F, 0x00, 0x9D, 0x00, 0xAD, 0x00, 0xBE, 0x00, 0xD1, 0x00, 0xE6, 0x00, 0xFD, 0x00
	.byte 0x17, 0x01, 0x33, 0x01, 0x51, 0x01, 0x73, 0x01, 0x98, 0x01, 0xC1, 0x01, 0xEE, 0x01, 0x20, 0x02
	.byte 0x56, 0x02, 0x92, 0x02, 0xD4, 0x02, 0x1C, 0x03, 0x6C, 0x03, 0xC3, 0x03, 0x24, 0x04, 0x8E, 0x04
	.byte 0x02, 0x05, 0x83, 0x05, 0x10, 0x06, 0xAB, 0x06, 0x56, 0x07, 0x12, 0x08, 0xE0, 0x08, 0xC3, 0x09
	.byte 0xBD, 0x0A, 0xD0, 0x0B, 0xFF, 0x0C, 0x4C, 0x0E, 0xBA, 0x0F, 0x4C, 0x11, 0x07, 0x13, 0xEE, 0x14
	.byte 0x06, 0x17, 0x54, 0x19, 0xDC, 0x1B, 0xA5, 0x1E, 0xB6, 0x21, 0x15, 0x25, 0xCA, 0x28, 0xDF, 0x2C
	.byte 0x5B, 0x31, 0x4B, 0x36, 0xB9, 0x3B, 0xB2, 0x41, 0x44, 0x48, 0x7E, 0x4F, 0x71, 0x57, 0x2F, 0x60
	.byte 0xCE, 0x69, 0x62, 0x74, 0xFF, 0x7F, 0x00, 0x00
	.global unk_0208C5F8
unk_0208C5F8:
	.byte 0xFF, 0xFF, 0xC3, 0xFF, 0x8C, 0x33, 0x9D, 0x36
	.byte 0x85, 0x3B, 0x00, 0x00, 0x01, 0x05, 0xF1, 0x31, 0xBE, 0xD0, 0xFC, 0x32, 0xD4, 0x07, 0x25, 0x10
	.byte 0xEE, 0x19, 0xE6, 0xE6, 0xF1, 0x13, 0x13, 0xE5, 0xD1, 0x1C, 0x39, 0x05, 0xEF, 0xE0, 0xD7, 0x44
	.byte 0x15, 0xFE, 0x40, 0x38, 0x08, 0xF0, 0xF3, 0xE6, 0xF7, 0xF0, 0x0B, 0x06, 0xD9, 0x19, 0xED, 0x16
	.byte 0xE1, 0x14, 0xD3, 0x37, 0xD5, 0x0A, 0xF0, 0x2F, 0xD8, 0x28, 0xEC, 0xCD, 0x03, 0xEF, 0xF2, 0xF1
	.byte 0xE8, 0x35, 0xEC, 0xD2, 0x2E, 0x1B, 0xBC, 0x20, 0x03, 0xEE, 0xFB, 0x09, 0xE1, 0x10, 0xF7, 0xF6
	.byte 0xFF, 0xE9, 0x30, 0x5F, 0x2F, 0x19, 0xD7, 0xE0, 0xFD, 0x0F, 0xE7, 0xC9, 0x24, 0x29, 0xE5, 0x14
	.byte 0x05, 0x0D, 0x0E, 0xEA, 0x05, 0x02, 0xE9, 0x12, 0x2E, 0xF1, 0x11, 0xEE, 0xDE, 0xFB, 0xF8, 0x1B
	.byte 0xC9, 0x49, 0x10, 0x02, 0xFF, 0xEF, 0x28, 0xB2, 0x21, 0x00, 0x02, 0x13, 0x04, 0x35, 0xF0, 0xF1
	.byte 0xF0, 0xE4, 0xFD, 0xF3, 0x31, 0x08, 0xF9, 0xE3, 0x1B, 0xF3, 0x20, 0x14, 0x20, 0xC3, 0x10, 0x0E
	.byte 0x29, 0x2C, 0x28, 0x18, 0x14, 0x07, 0x04, 0x30, 0xC4, 0xB3, 0x11, 0xFA, 0xD0, 0x41, 0xF1, 0x20
	.byte 0xE2, 0xB9, 0xF6, 0xFD, 0xFA, 0x0A, 0xFE, 0xF9, 0xE3, 0xC8, 0x43, 0xE2, 0x07, 0xFB, 0x56, 0xFA
	.byte 0xF6, 0x00, 0x05, 0xE1, 0x3C, 0x22, 0xDA, 0xFD, 0x18, 0x0A, 0xFE, 0x1E, 0x17, 0x18, 0xD7, 0x0C
	.byte 0x46, 0xD5, 0x0F, 0xEF, 0x06, 0x0D, 0x10, 0xF3, 0x08, 0x1E, 0xF1, 0xF8, 0x05, 0x17, 0xDE, 0x9E
	.byte 0xFC, 0xF3, 0x0D, 0xD0, 0xE1, 0x46, 0x0C, 0x1F, 0x19, 0x18, 0xE8, 0x1A, 0xF9, 0x21, 0xF0, 0x08
	.byte 0x05, 0xF5, 0xF2, 0xF8, 0xBF, 0x0D, 0x0A, 0xFE, 0xF7, 0x00, 0xFD, 0xBC, 0x05, 0x23, 0x07, 0x00
	.byte 0xE1, 0xFF, 0xEF, 0xF7, 0xF7, 0x10, 0xDB, 0xEE, 0xFF, 0x45, 0xD0, 0xE4, 0x16, 0xEB, 0xF5, 0x05
	.byte 0x31, 0x37, 0x17, 0xAA, 0xDC, 0x10, 0x02, 0x0D, 0x3F, 0xCD, 0x1E, 0xF5, 0x0D, 0x18, 0xEE, 0xFA
	.byte 0x0E, 0xED, 0x01, 0x29, 0x09, 0xFB, 0x1B, 0xDC, 0xD4, 0xDE, 0xDB, 0xEB, 0xE6, 0x1F, 0xD9, 0x0F
	.byte 0x2B, 0x05, 0xF8, 0x1D, 0x14, 0xF8, 0xEC, 0xCC, 0xE4, 0xFF, 0x0D, 0x1A, 0xDE, 0xF6, 0xF7, 0x1B
	.byte 0xF8, 0x08, 0x1B, 0xBE, 0x04, 0x0C, 0xEA, 0x31, 0x0A, 0xB3, 0x20, 0xEE, 0x03, 0xDA, 0x0C, 0xFD
	.byte 0xFF, 0x02, 0x02, 0x00, 0xF8, 0xDB, 0x05, 0xD5, 0x05, 0x49, 0x3D, 0x27, 0x0C, 0xFD, 0xC3, 0xE0
	.byte 0x02, 0x2A, 0x1E, 0xFD, 0x11, 0xE5, 0x09, 0x22, 0x14, 0xFF, 0xFB, 0x02, 0x17, 0xF9, 0xD2, 0x1A
	.byte 0x35, 0xD1, 0x14, 0xFE, 0xDF, 0xA7, 0xCD, 0xC0, 0x1B, 0x0B, 0x0F, 0xDE, 0xFB, 0xC8, 0x19, 0xF7
	.byte 0xFF, 0xE3, 0x01, 0x28, 0x43, 0xE9, 0xF0, 0x10, 0x21, 0x13, 0x07, 0x0E, 0x55, 0x16, 0xF6, 0xF6
	.byte 0xF4, 0xF9, 0xFF, 0x34, 0x59, 0x1D, 0x0B, 0xEC, 0xDB, 0xD2, 0xF1, 0x11, 0xE8, 0xE4, 0x18, 0x02
	.byte 0x01, 0x00, 0x17, 0x9B, 0x17, 0x0E, 0xFF, 0xE9, 0xEE, 0x09, 0x05, 0xF3, 0x26, 0x01, 0xE4, 0xE4
	.byte 0x04, 0x1B, 0x33, 0xE6, 0x22, 0xD8, 0x23, 0x2F, 0x36, 0x26, 0xCA, 0xE6, 0xFA, 0x2A, 0xE7, 0x0D
	.byte 0xE2, 0xDC, 0x12, 0x29, 0xFC, 0xDF, 0x17, 0xE0, 0xF9, 0xFC, 0x33, 0xFD, 0x11, 0xCC, 0x38, 0xD1
	.byte 0x24, 0xFE, 0xEB, 0x24, 0x0A, 0x08, 0xDF, 0x1F, 0x13, 0x09, 0xFB, 0xD8, 0x0A, 0xF7, 0xEB, 0x13
	.byte 0x12, 0xB2, 0xEE, 0xFB, 0x00, 0xE6, 0xDC, 0xD1, 0xCD, 0xD4, 0x12, 0x28, 0x1B, 0xFE, 0x1D, 0x31
	.byte 0xE6, 0x02, 0x20, 0xCA, 0x1E, 0xB7, 0x36, 0x03, 0xFB, 0x24, 0x16, 0x35, 0x0A, 0xFF, 0xAC, 0xCB
	.byte 0xE3, 0xFB, 0x03, 0xD4, 0x35, 0xCD, 0x04, 0x16, 0x47, 0xDD, 0xFF, 0x21, 0xFB, 0xE5, 0xF9, 0x24
	.byte 0x11, 0xE9, 0xD9, 0x10, 0xF7, 0xC9, 0xF1, 0xEC, 0x27, 0xDD, 0x06, 0xD9, 0xF2, 0x12, 0x30, 0xC0
	.byte 0xEF, 0xF1, 0x09, 0x27, 0x51, 0x25, 0xBC, 0x25, 0x2F, 0xEB, 0xFA, 0x98, 0x0D, 0x06, 0x09, 0xFE
	.byte 0x23, 0x08, 0xE9, 0x12, 0x2A, 0x2D, 0x15, 0x21, 0xFB, 0xCF, 0x09, 0xFA, 0xD5, 0xC8, 0x27, 0x02
	.byte 0xF0, 0xE7, 0x57, 0x01, 0xFD, 0xF7, 0x11, 0xE7, 0xF5, 0xF7, 0xFF, 0x0A, 0x02, 0xF2, 0xF2, 0x04
	.byte 0xFF, 0xF6, 0x1C, 0xE9, 0x28, 0xE0, 0x1A, 0xF7, 0x1A, 0x04, 0xE5, 0xE9, 0x03, 0x2A, 0xC4, 0x01
	.byte 0x31, 0xFD, 0x1B, 0x0A, 0xCC, 0xD8, 0xFE, 0x12, 0x2D, 0xE9, 0x11, 0xD4, 0x03, 0xFD, 0x11, 0xD2
	.byte 0x34, 0xD8, 0xD1, 0x19, 0x4B, 0x1F, 0xCF, 0x35, 0x1E, 0xE2, 0xE0, 0xDC, 0x26, 0xFA, 0xF1, 0xF0
	.byte 0x36, 0xE5, 0xD0, 0x03, 0x26, 0xE3, 0xE0, 0xEA, 0xF2, 0xFC, 0xE9, 0xF3, 0x20, 0xD9, 0x09, 0x08
	.byte 0xD3, 0xF3, 0x22, 0xF0, 0x31, 0x28, 0x20, 0x1F, 0x1C, 0x17, 0x17, 0x20, 0x2F, 0x3B, 0xBC, 0x08
	.byte 0x3E, 0x2C, 0x19, 0xF2, 0xE8, 0xBF, 0xF0, 0x24, 0x43, 0xE7, 0xDA, 0xEB, 0x04, 0xDF, 0xFE, 0x2A
	.byte 0x05, 0xC1, 0x28, 0x0B, 0x1A, 0xD6, 0xE9, 0xC3, 0x4F, 0xE1, 0x17, 0xEC, 0x0A, 0xE0, 0x35, 0xE7
	.byte 0xDC, 0x0A, 0xE6, 0xFB, 0x03, 0x00, 0xB9, 0x05, 0xF6, 0xDB, 0x01, 0xE8, 0x15, 0xCA, 0xEF, 0x01
	.byte 0xE3, 0xE7, 0xF1, 0xE5, 0x20, 0x44, 0x2D, 0xF0, 0xDB, 0xEE, 0xFB, 0x01, 0x00, 0xB3, 0x47, 0xFA
	.byte 0x03, 0xEC, 0x47, 0xBD, 0x1D, 0xDD, 0x0A, 0xE2, 0x13, 0x04, 0x10, 0x11, 0x05, 0x00, 0xF2, 0x13
	.byte 0x02, 0x1C, 0x1A, 0x3B, 0x03, 0x02, 0x18, 0x27, 0x37, 0xCE, 0xD3, 0xEE, 0xEF, 0x21, 0xDD, 0x0E
	.byte 0xFF, 0x01, 0x08, 0x57, 0xDD, 0xE3, 0x00, 0xE5, 0x0D, 0xF9, 0x17, 0xF3, 0x25, 0xD8, 0x32, 0xDD
	.byte 0x0E, 0x13, 0xF9, 0xF2, 0x31, 0x36, 0xFB, 0x16, 0xFE, 0xE3, 0xF8, 0xE5, 0x26, 0x0D, 0x1B, 0x30
	.byte 0x0C, 0xD7, 0xEB, 0xF1, 0x1C, 0x07, 0xF0, 0xE8, 0xED, 0xEC, 0x0B, 0xEC, 0x09, 0x02, 0x0D, 0x17
	.byte 0xEC, 0x0B, 0x1B, 0xE5, 0x47, 0xBB, 0x08, 0x02, 0xFA, 0x16, 0x0C, 0x10, 0x10, 0x09, 0xF0, 0xF8
	.byte 0xEF, 0x01, 0x19, 0x01, 0x28, 0xDB, 0xDF, 0x42, 0x5E, 0x35, 0x04, 0xEA, 0xE7, 0xD7, 0xD6, 0x19
	.byte 0x23, 0xF0, 0xF1, 0x39, 0x1F, 0xE3, 0xE0, 0x15, 0x10, 0xC4, 0x2D, 0x0F, 0xFF, 0x07, 0x39, 0xE6
	.byte 0xD1, 0xE3, 0x0B, 0x08, 0x0F, 0x13, 0x97, 0xF8, 0x36, 0x1B, 0x0A, 0xEF, 0x06, 0xF4, 0xFF, 0xF6
	.byte 0x04, 0x00, 0x17, 0xF6, 0x1F, 0x0D, 0x0B, 0x0A, 0x0C, 0xC0, 0x17, 0xFD, 0xF8, 0xED, 0x10, 0x34
	.byte 0x18, 0xD8, 0x10, 0x0A, 0x28, 0x05, 0x09, 0x00, 0xF3, 0xF9, 0xEB, 0xF8, 0xFA, 0xF9, 0xEB, 0x3B
	.byte 0x10, 0xCB, 0x12, 0xC4, 0x0B, 0xD1, 0x0E, 0xEE, 0x19, 0xF3, 0xE8, 0x04, 0xD9, 0x10, 0xE4, 0x36
	.byte 0x1A, 0xBD, 0x1E, 0x1B, 0xEC, 0xCC, 0x14, 0xF4, 0x37, 0x0C, 0x12, 0xF0, 0x27, 0xF2, 0xFA, 0xE6
	.byte 0x38, 0xA8, 0xC9, 0x0C, 0x19, 0x1A, 0xDB, 0x06, 0x4B, 0x00, 0xDE, 0xAF, 0x36, 0xE2, 0x01, 0xF9
	.byte 0x31, 0xE9, 0xF2, 0x15, 0x0A, 0xC2, 0xC6, 0xC7, 0xD1, 0xDE, 0x0F, 0xFC, 0x22, 0xB2, 0x1F, 0x19
	.byte 0xF5, 0x07, 0x32, 0xF6, 0x2A, 0xC1, 0x0E, 0xDC, 0xFC, 0x39, 0x37, 0x39, 0x35, 0x2A, 0xD6, 0xFF
	.byte 0x0F, 0x28, 0x25, 0x0F, 0x19, 0xF5, 0x06, 0x01, 0x1F, 0xFE, 0xFA, 0xFF, 0xF9, 0xC0, 0x22, 0x1C
	.byte 0x1E, 0xFF, 0x03, 0x15, 0x00, 0xA8, 0xF4, 0xC8, 0x19, 0xE4, 0x28, 0x08, 0xE4, 0xF2, 0x09, 0x0C
	.byte 0x02, 0xFA, 0xEF, 0x16, 0x31, 0xFA, 0xE6, 0x0E, 0x1C, 0xEC, 0x04, 0xF4, 0x32, 0x23, 0x28, 0x0D
	.byte 0xDA, 0xC6, 0xE3, 0x11, 0x1E, 0x16, 0x3C, 0x1A, 0xCA, 0xD9, 0xF4, 0x3A, 0xE4, 0xC1, 0x0A, 0xEB
	.byte 0xF8, 0xF4, 0x1A, 0xC2, 0x06, 0xF6, 0xF5, 0xEA, 0xFA, 0xF9, 0x04, 0x01, 0x12, 0x02, 0xBA, 0x0B
	.byte 0x0E, 0x04, 0x0D, 0x13, 0xE8, 0xDE, 0x18, 0x43, 0x11, 0x33, 0xEB, 0x0D, 0x17, 0x36, 0xE2, 0x30
	.byte 0x01, 0xF3, 0x50, 0x1A, 0xF0, 0xFE, 0x0D, 0xFC, 0x06, 0xE2, 0x1D, 0xE8, 0x49, 0xC6, 0x1E, 0xE5
	.byte 0x14, 0xFE, 0xEB, 0x29, 0x2D, 0x1E, 0xE5, 0xFD, 0xFB, 0xEE, 0xEC, 0xCF, 0xFD, 0xDD, 0x0A, 0x2A
	.byte 0xED, 0xBD, 0xCB, 0xF5, 0x09, 0x0D, 0xF1, 0xDF, 0xCD, 0xE2, 0x0F, 0x07, 0x19, 0xE2, 0x04, 0x1C
	.byte 0xEA, 0xDE, 0x36, 0xE3, 0x27, 0xD2, 0x14, 0x10, 0x22, 0xFC, 0x2F, 0x4B, 0x01, 0xD4, 0xC9, 0xE8
	.byte 0x07, 0xFF, 0x09, 0xD6, 0x32, 0xF8, 0xDC, 0x29, 0x44, 0x00, 0xFC, 0xF6, 0xE9, 0xF1, 0xCE, 0x40
	.byte 0x24, 0xF7, 0xE5, 0x0C, 0x19, 0xDA, 0xD1, 0xDB, 0x20, 0xCF, 0x33, 0xDC, 0x02, 0xFC, 0x45, 0xE6
	.byte 0x13, 0x07, 0x2D, 0x43, 0x2E, 0x0D, 0xC1, 0x2E, 0x0F, 0xD1, 0x04, 0xD7, 0x0D, 0xFA, 0x05, 0xEB
	.byte 0x25, 0x1A, 0xC9, 0xF9, 0x21, 0xFF, 0xE4, 0x0A, 0xEF, 0xC0, 0xF2, 0x00, 0xDC, 0xEF, 0x5D, 0xFD
	.byte 0xF7, 0xBE, 0x2C, 0xEB, 0x03, 0xF4, 0x26, 0xFA, 0xF3, 0xF4, 0x13, 0x0D, 0x2B, 0xD5, 0xF6, 0xF4
	.byte 0x06, 0xFB, 0x09, 0xCF, 0x20, 0xFB, 0x02, 0x04, 0x05, 0x0F, 0xF0, 0x0A, 0xEB, 0x08, 0xC2, 0xF8
	.byte 0x40, 0x08, 0x4F, 0xFF, 0xBE, 0xCF, 0xEE, 0x05, 0x28, 0xFB, 0xE2, 0xD3, 0x01, 0xFA, 0x15, 0xE0
	.byte 0x5D, 0xEE, 0xE2, 0xEB, 0x20, 0x15, 0xEE, 0x16, 0x08, 0x05, 0xD7, 0xCA, 0x50, 0x16, 0xF6, 0xF9
	.byte 0xF8, 0xE9, 0xC0, 0x42, 0x38, 0xF2, 0xE2, 0xD7, 0xD2, 0xF2, 0xE3, 0xDB, 0x1B, 0xF2, 0x2A, 0xFE
	.byte 0xF7, 0xE3, 0x22, 0x0E, 0x21, 0xF2, 0x16, 0x04, 0x0A, 0x1A, 0x1A, 0x1C, 0x20, 0x17, 0xB8, 0xE0
	.byte 0x03, 0x00, 0xF2, 0x23, 0xD6, 0xB2, 0xE0, 0x06, 0x1D, 0xEE, 0xD3, 0xFB, 0x07, 0xDF, 0xD3, 0xFD
	.byte 0xEA, 0xDE, 0x08, 0xF8, 0x04, 0xCD, 0xE7, 0xF7, 0x3B, 0xB2, 0x15, 0xFB, 0xE7, 0xD0, 0x42, 0xF1
	.byte 0xEF, 0xE8, 0xCF, 0xF3, 0x19, 0xE9, 0xC0, 0xFA, 0x28, 0xE8, 0xED, 0xF5, 0x39, 0xDF, 0xF8, 0x01
	.byte 0x0A, 0xCC, 0xCA, 0x1C, 0x27, 0x31, 0x22, 0xF5, 0xC3, 0xD7, 0xD5, 0x0A, 0x0F, 0xF1, 0x33, 0x1E
	.byte 0x0F, 0xCD, 0x20, 0xDE, 0xFE, 0xDE, 0x0E, 0x12, 0x10, 0x01, 0x01, 0xFD, 0xFD, 0x01, 0x01, 0xEE
	.byte 0x06, 0x10, 0x30, 0x0C, 0xFB, 0xD6, 0x07, 0x24, 0x30, 0x07, 0xEC, 0xF6, 0x07, 0x0C, 0x02, 0x36
	.byte 0x27, 0xDA, 0x25, 0x36, 0x04, 0xF5, 0xF8, 0xD2, 0xF6, 0x05, 0xF6, 0xDE, 0x2E, 0xF4, 0x1D, 0xDB
	.byte 0x27, 0x24, 0xF5, 0x18, 0x38, 0x11, 0x0E, 0x14, 0x19, 0x00, 0xE7, 0xE4, 0x37, 0xF9, 0xFB, 0x1B
	.byte 0x03, 0x09, 0xE6, 0xF8, 0x06, 0xE8, 0xF6, 0xE2, 0xE1, 0xDE, 0x12, 0x04, 0x16, 0x15, 0x28, 0xFF
	.byte 0xE3, 0xDB, 0xF8, 0xEB, 0x5C, 0xE3, 0x0B, 0xFD, 0x0B, 0x49, 0x17, 0x16, 0x07, 0x04, 0xD4, 0xF7
	.byte 0xF5, 0x15, 0xF3, 0x0B, 0x09, 0xB2, 0xFF, 0x2F, 0x72, 0xF4, 0xDB, 0xED, 0xFB, 0xF5, 0xEA, 0x13
	.byte 0x0C, 0xE2, 0x07, 0x26, 0x2D, 0xEB, 0xF8, 0xF7, 0x37, 0xD3, 0x38, 0xEB, 0x07, 0x11, 0x2E, 0xC7
	.byte 0xA9, 0xFA, 0x1B, 0x1F, 0x1F, 0x07, 0xC8, 0xF4, 0x2E, 0x15, 0xFB, 0xF4, 0x24, 0x03, 0x03, 0xEB
	.byte 0x2B, 0x13, 0x0C, 0xF9, 0x09, 0xF2, 0x00, 0xF7, 0xDF, 0xA5, 0x07, 0x1A, 0x03, 0xF5, 0x40, 0x53
	.byte 0xE1, 0xD2, 0x19, 0x02, 0x09, 0x05, 0x02, 0x02, 0xFF, 0x14, 0xEF, 0x0A, 0xFB, 0xE5, 0xF8, 0x14
	.byte 0x08, 0xED, 0x10, 0xEB, 0xF3, 0xE1, 0x05, 0x05, 0x2A, 0x18, 0x09, 0x22, 0xEC, 0x1C, 0xC3, 0x16
	.byte 0x0B, 0xD9, 0x40, 0xEC, 0xFF, 0xE2, 0xF7, 0xEC, 0x18, 0xE7, 0xE8, 0xE3, 0x16, 0xC4, 0x06, 0xFB
	.byte 0x29, 0xF7, 0xA9, 0x0E, 0x22, 0x0F, 0xC7, 0x34, 0x45, 0x0F, 0xFD, 0x9A, 0x3A, 0x10, 0x03, 0x06
	.byte 0x3C, 0xB5, 0xE0, 0x1A, 0x07, 0xC7, 0xE5, 0xE0, 0xE8, 0xEB, 0xE3, 0xF0, 0x3E, 0xD2, 0x1F, 0x1E
	.byte 0xE5, 0xF1, 0x07, 0x0F, 0xF2, 0x09, 0x0D, 0xE0, 0x02, 0xF6, 0x1F, 0xF6, 0xF8, 0xF8, 0x06, 0xFC
	.byte 0xFF, 0x0A, 0xC0, 0x17, 0x06, 0x14, 0x0D, 0x06, 0x08, 0xEA, 0x10, 0x22, 0x07, 0x2A, 0xCF, 0xE4
	.byte 0x05, 0x1A, 0x04, 0xF1, 0x29, 0x22, 0x29, 0x20, 0x21, 0x18, 0x17, 0x0E, 0x08, 0x28, 0x22, 0x04
	.byte 0xE8, 0xD7, 0xED, 0xF1, 0x0D, 0xF3, 0x21, 0xCA, 0x18, 0x1B, 0xD4, 0x21, 0x1B, 0xF1, 0xF1, 0x18
	.byte 0xED, 0x0E, 0xDC, 0x0E, 0xF7, 0x18, 0xF4, 0xFC, 0x25, 0xFB, 0x10, 0xDE, 0x05, 0x0A, 0x21, 0xF1
	.byte 0xCA, 0xF0, 0x0C, 0x19, 0x0C, 0x01, 0x02, 0x00, 0x03, 0xFF, 0xFC, 0xFC, 0x0B, 0x02, 0xC8, 0x36
	.byte 0x1B, 0xEC, 0x0D, 0xFA, 0xD2, 0xD7, 0xDF, 0xF5, 0xFB, 0x07, 0x0C, 0x0E, 0xF2, 0xFB, 0x08, 0x14
	.byte 0x06, 0x03, 0x04, 0xF8, 0xFB, 0xD6, 0x0B, 0x08, 0xF2, 0x19, 0xFE, 0x02, 0x0D, 0x0B, 0xEA, 0x27
	.byte 0xF7, 0x09, 0x05, 0xD3, 0xF7, 0x07, 0xF7, 0x0C, 0xF9, 0x22, 0xEF, 0x9A, 0x07, 0x02, 0xD6, 0x12
	.byte 0x23, 0xF7, 0xDE, 0x0B, 0xFB, 0xFE, 0x03, 0x16, 0x2E, 0xCC, 0xE7, 0xF7, 0xA2, 0x08, 0x0B, 0xFB
	.byte 0xFB, 0xFB, 0x04, 0xF9, 0xDD, 0xF9, 0x36, 0x05, 0xE0, 0x03, 0x18, 0xF7, 0xEA, 0x08, 0x41, 0x25
	.byte 0xFF, 0xF4, 0xE9, 0xFA, 0xF7, 0xE4, 0x37, 0xDF, 0x0E, 0xFD, 0x02, 0x12, 0xC4, 0x29, 0xEF, 0x08
	.byte 0xF0, 0x11, 0xF5, 0x00, 0xF5, 0x1D, 0xE4, 0x25, 0x09, 0xCB, 0x21, 0xF2, 0xF7, 0x07, 0xE7, 0xF9
	.byte 0xF5, 0x1A, 0xE0, 0xF8, 0x18, 0xEB, 0x16, 0xED, 0x13, 0xF6, 0x1D, 0xF2, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0xFB, 0xCC, 0x0A, 0x29, 0x06, 0xE2, 0xFC, 0x10, 0x20, 0x16, 0xE5, 0xEA
	.byte 0x20, 0xFD, 0xE4, 0xFD, 0x03, 0xDD, 0x06, 0x11, 0x17, 0x15, 0x08, 0x02, 0x04, 0xD3, 0xEF, 0x0E
	.byte 0x17, 0xFC, 0xE1, 0xF5, 0xFD, 0x0E, 0x01, 0x13, 0xF5, 0x02, 0x3D, 0xF8, 0x09, 0xF4, 0x07, 0xF6
	.byte 0x0C, 0xFD, 0xE8, 0x63, 0xD0, 0x17, 0x32, 0xDB, 0xFB, 0xE9, 0x00, 0x08, 0xF2, 0x23, 0xC0, 0xFB
	.byte 0x2E, 0xE7, 0x0D, 0xFF, 0xCF, 0xED, 0xF1, 0x09, 0x22, 0x32, 0x19, 0x0B, 0xFA, 0xF7, 0xF0, 0xEC
	.byte 0xE0, 0xDF, 0xE0, 0xE5, 0x0A, 0xF8, 0x0C, 0xF1, 0x38, 0xF2, 0xE0, 0x21, 0x03, 0xF7, 0x01, 0x41
	.byte 0xF7, 0xF7, 0xF6, 0xFE, 0xFA, 0xE9, 0x09, 0x11, 0x03, 0xE4, 0x0D, 0xE0, 0x04, 0xFE, 0xF6, 0x04
	.byte 0xF0, 0x4C, 0x0C, 0xCC, 0x06, 0x0D, 0x21, 0xFA, 0x04, 0xF2, 0xF7, 0xFD, 0x01, 0xF1, 0xF0, 0x1C
	.byte 0x01, 0xF1, 0x0B, 0x10, 0x09, 0x04, 0xEB, 0xDB, 0xD8, 0xFA, 0x16, 0x0C, 0xF1, 0xE9, 0xF2, 0xEF
	.byte 0xF0, 0xF7, 0xF6, 0xF7, 0x0D, 0xD9, 0x29, 0x05, 0xF7, 0x10, 0xDA, 0x19, 0x2E, 0xD1, 0x04, 0x31
	.byte 0xF2, 0x11, 0xFE, 0x06, 0x12, 0x05, 0xFA, 0xDF, 0xEA, 0x2C, 0x32, 0xFE, 0x01, 0x03, 0xFA, 0x07
	.byte 0x07, 0xFD, 0xEB, 0x26, 0xEE, 0x22, 0xF2, 0xD7, 0x3C, 0xF3, 0x06, 0x10, 0xE8, 0x23, 0x13, 0xF3
	.byte 0xDC, 0x18, 0x03, 0xEF, 0xF2, 0xF6, 0x24, 0x2C, 0xD4, 0xE3, 0xFD, 0x03, 0xCA, 0xF8, 0x0C, 0x37
	.byte 0x1A, 0x04, 0xFE, 0xFB, 0x02, 0xF5, 0x16, 0xE9, 0x02, 0x16, 0x01, 0xE7, 0xD9, 0x42, 0xCF, 0x15
	.byte 0xF8, 0xFE, 0x0A, 0xF2, 0xC4, 0x19, 0x06, 0x0A, 0x1B, 0xE7, 0x10, 0x05, 0xFE, 0xF7, 0x1A, 0xF3
	.byte 0xEC, 0x3A, 0xFE, 0x07, 0x34, 0xF7, 0x02, 0x05, 0xFC, 0xF1, 0x17, 0xFF, 0xDA, 0x17, 0x08, 0x1B
	.byte 0xFA, 0x00, 0xE5, 0xF9, 0x27, 0xF6, 0xF2, 0x1A, 0x0B, 0xD3, 0xF4, 0x09, 0xFB, 0x22, 0x04, 0xDD
	.byte 0x0A, 0x2B, 0xEA, 0xF5, 0x38, 0xF9, 0x14, 0x01, 0x0A, 0x01, 0xE6, 0x09, 0x5E, 0x0B, 0xE5, 0xF2
	.byte 0xF3, 0x01, 0xF5, 0x00, 0x0E, 0xFB, 0xFA, 0xF6, 0xFC, 0xF1, 0xF8, 0xD7, 0x15, 0xFB, 0x01, 0xE4
	.byte 0xF8, 0x16, 0xF7, 0x21, 0xE9, 0xFC, 0xFC, 0xF4, 0x27, 0x04, 0xF9, 0x03, 0xC4, 0x50, 0x08, 0xEF
	.byte 0x02, 0xFA, 0x0C, 0xFB, 0x01, 0x09, 0x0F, 0x1B, 0x1F, 0x1E, 0x1B, 0x17, 0x3D, 0x2F, 0x1A, 0x0A
	.byte 0xFB, 0xF8, 0xF4, 0xF3, 0x05, 0xEE, 0x19, 0xF1, 0xFC, 0xF1, 0xF5, 0x0C, 0xFE, 0xFE, 0xF0, 0xFE
	.byte 0xFA, 0x18, 0x0C, 0x0B, 0xFC, 0x09, 0x01, 0xF7, 0x0E, 0xD3, 0x39, 0x0C, 0x14, 0xDD, 0x1A, 0x0B
	.byte 0xC0, 0x20, 0xF6, 0xF6, 0x2A, 0xFC, 0xF7, 0xF0, 0x20, 0x18, 0x07, 0x0A, 0x34, 0xF5, 0xC7, 0x1D
	.byte 0x00, 0x08, 0x00, 0xFA, 0x11, 0xEF, 0xC8, 0xD8, 0x07, 0x14, 0x12, 0x0C, 0xFA, 0x10, 0x05, 0x07
	.byte 0xFF, 0x09, 0x01, 0x0A, 0x1D, 0x0C, 0x10, 0x0D, 0xFE, 0x17, 0x07, 0x09, 0xFD, 0xFC, 0xFB, 0x12
	.byte 0xC0, 0x0D, 0x37, 0xE7, 0x09, 0xF7, 0x18, 0x0E, 0xE7, 0x0F, 0xF5, 0xD8, 0xE2, 0x25, 0x01, 0xED
	.byte 0x16, 0xFB, 0xE1, 0x0D, 0xFE, 0x00, 0x07, 0xFC, 0x10, 0xBD, 0x0C, 0x42, 0xDC, 0x18, 0xF8, 0x12
	.byte 0xF1, 0xE9, 0x13, 0x00, 0xD3, 0xF9, 0x04, 0x03, 0xF3, 0x0D, 0x23, 0x05, 0x0D, 0x21, 0x0A, 0x1B
	.byte 0x17, 0x00, 0xF9, 0xF5, 0x2B, 0xB6, 0x24, 0xF4, 0x02, 0x05, 0xF8, 0x06, 0xDF, 0x0B, 0xF0, 0xF2
	.byte 0xFB, 0xF9, 0xFD, 0x11, 0xDE, 0x1B, 0xF0, 0x0B, 0xF7, 0x0F, 0x21, 0xE1, 0x08, 0xF0, 0x07, 0xFA
	.byte 0xF9, 0x3F, 0xC9, 0xEF, 0x0B, 0xFF, 0x14, 0xD2, 0x22, 0xE2, 0x06, 0x09, 0x13, 0x1C, 0xF7, 0x05
	.byte 0xE8, 0xF8, 0xE9, 0xFE, 0x1F, 0xED, 0xF0, 0xFB, 0xF1, 0xEE, 0x00, 0x1A, 0x12, 0x25, 0xFB, 0xF1
	.byte 0xFE, 0x11, 0x05, 0xE5, 0x15, 0xDF, 0x2C, 0x0C, 0xE5, 0xF7, 0x11, 0x0B, 0x19, 0xEB, 0xE1, 0xF9
	.byte 0x0D, 0x21, 0xF8, 0xE7, 0xF9, 0x07, 0xF6, 0x04, 0xFA, 0xF7, 0x30, 0xAE, 0xE9, 0xF8, 0x06, 0x0B
	.byte 0xE9, 0x03, 0xFD, 0x31, 0xE3, 0x19, 0x1F, 0x04, 0x0E, 0x10, 0x09, 0xFC, 0xEE, 0x0A, 0xE6, 0x03
	.byte 0x05, 0xD4, 0xF7, 0x09, 0xD1, 0xC9, 0x0F, 0x09, 0x1C, 0x01, 0x04, 0xFD, 0x2E, 0x06, 0xFA, 0xDA
	.byte 0xE3, 0xE1, 0xF1, 0xFA, 0x03, 0x00, 0x0E, 0xFA, 0x08, 0xCA, 0xCE, 0x21, 0xFB, 0x01, 0xF2, 0x21
	.byte 0xD0, 0x1A, 0xFC, 0xFB, 0xFD, 0xFB, 0xFD, 0xFB, 0xE4, 0xEA, 0x4D, 0x37, 0xFF, 0x02, 0x0A, 0x0A
	.byte 0xF7, 0xF2, 0xBE, 0xCF, 0x0B, 0xDC, 0xFA, 0xEC, 0x0A, 0xF6, 0x10, 0x0C, 0x04, 0xFF, 0xF0, 0x2D
	.byte 0xD4, 0xCE, 0x1F, 0xFE, 0x19, 0x2A, 0x17, 0xE0, 0xEA, 0x00, 0x0B, 0x14, 0xD8, 0xDD, 0xD8, 0xDC
	.byte 0xE0, 0xE6, 0xEB, 0xF3, 0x34, 0xEA, 0x06, 0xE8, 0xEC, 0x11, 0xFB, 0xF8, 0x24, 0xE7, 0xF5, 0x15
	.byte 0xE6, 0x06, 0x22, 0xF8, 0x07, 0x14, 0xFD, 0x05, 0xE7, 0xF8, 0x12, 0xFB, 0xF7, 0xFC, 0x01, 0xF7
	.byte 0x14, 0x14, 0x27, 0x30, 0xE8, 0x09, 0x05, 0xBF, 0x16, 0x1D, 0x04, 0x03, 0xD5, 0xF5, 0x20, 0xFA
	.byte 0x09, 0x13, 0xE5, 0xF6, 0xD1, 0xF2, 0x18, 0x0A, 0xF9, 0xDC, 0xF9, 0xFF, 0xFC, 0xFB, 0xFB, 0x10
	.byte 0x35, 0x19, 0xE6, 0xE3, 0xFC, 0xF4, 0x2D, 0xC6, 0xDE, 0x21, 0xFB, 0x02, 0xFF, 0x1B, 0xD0, 0x1F
	.byte 0xF1, 0x16, 0xFB, 0x04, 0x07, 0x07, 0xE7, 0xFD, 0x0B, 0xEA, 0x10, 0xF4, 0x08, 0xFD, 0x07, 0xF5
	.byte 0x2D, 0x0E, 0xB7, 0xED, 0x38, 0xD2, 0x18, 0xEC, 0x1C, 0xF4, 0xFE, 0xFF, 0xDC, 0xFD, 0xDF, 0x13
	.byte 0xFA, 0x07, 0x02, 0xF1, 0x05, 0xE1, 0xD3, 0x08, 0x23, 0x0D, 0x14, 0x00, 0xF7, 0x30, 0xF3, 0xD5
	.byte 0xFD, 0xF3, 0x02, 0xFB, 0x48, 0xBC, 0xE5, 0x02, 0x01, 0xFE, 0xF9, 0x05, 0x24, 0x21, 0xD8, 0xF4
	.byte 0xFC, 0xFB, 0x17, 0x13, 0x0C, 0x20, 0x19, 0x2E, 0x24, 0x21, 0x09, 0x0E, 0xFD, 0x06, 0x01, 0xF8
	.byte 0x00, 0xF6, 0xFB, 0xF9, 0xF9, 0xF9, 0xFB, 0xFB, 0x1F, 0xE5, 0x18, 0xE0, 0xFC, 0x0A, 0xF5, 0x15
	.byte 0xFD, 0x13, 0x17, 0xF7, 0x16, 0x18, 0xF6, 0xFF, 0xF6, 0xF3, 0xF9, 0xF5, 0x2A, 0xDF, 0x1F, 0x13
	.byte 0xF8, 0x00, 0xF6, 0xF0, 0x01, 0xEB, 0xEF, 0x0A, 0xF8, 0x0E, 0x08, 0x04, 0x0B, 0xFE, 0x05, 0xFE
	.byte 0xDF, 0x0B, 0xF0, 0x21, 0x0B, 0xFC, 0x09, 0xFC, 0x0B, 0x02, 0x06, 0xFB, 0x08, 0xFB, 0x0B, 0xFC
	.byte 0xFA, 0x1A, 0xDC, 0xF0, 0x00, 0x04, 0xFE, 0xF8, 0x0C, 0x06, 0xFF, 0x22, 0xD2, 0xEA, 0x09, 0x09
	.byte 0x15, 0x09, 0x05, 0xBE, 0xFB, 0x1A, 0x02, 0x0A, 0x0D, 0x02, 0x13, 0x09, 0x0C, 0xAF, 0x03, 0x0D
	.byte 0x0D, 0x00, 0xF2, 0x16, 0xDD, 0x06, 0xF9, 0xFC, 0x06, 0xFA, 0x0A, 0xFA, 0xE1, 0x26, 0xDF, 0x00
	.byte 0xF6, 0xF5, 0x05, 0xF4, 0x0C, 0xEF, 0x05, 0x00, 0xFA, 0x0D, 0xF7, 0x0A, 0x08, 0x19, 0x21, 0x02
	.byte 0xF4, 0x08, 0xFA, 0x0A, 0xFE, 0x15, 0x07, 0x11, 0x2B, 0x05, 0x0B, 0xF9, 0xF7, 0xEC, 0xDC, 0xEC
	.byte 0xE9, 0xFC, 0xFC, 0xFD, 0x1B, 0xF7, 0xF7, 0xCF, 0xD9, 0xDA, 0xF5, 0xF7, 0x06, 0x05, 0x17, 0x19
	.byte 0x05, 0x03, 0x03, 0x04, 0x01, 0x02, 0xFD, 0xFF, 0x57, 0x27, 0x11, 0xEB, 0xF7, 0xED, 0xF7, 0xF1
	.byte 0xF3, 0xF2, 0xEF, 0xF5, 0xF6, 0xF5, 0xF8, 0xFA, 0xFF, 0xFD, 0xFD, 0xFF, 0xCA, 0xDE, 0xE5, 0xF8
	.byte 0xF5, 0xFC, 0xFB, 0x00, 0x00, 0x04, 0x08, 0x06, 0x09, 0x07, 0x09, 0x07, 0x06, 0x05, 0x05, 0x05
	.byte 0x30, 0x0A, 0x13, 0xF6, 0x0C, 0xFF, 0x09, 0xFD, 0x02, 0x05, 0xFD, 0x02, 0xFE, 0xFE, 0x00, 0xFE
	.byte 0xE6, 0x06, 0x09, 0xF9, 0xF0, 0xF7, 0x02, 0x07, 0x07, 0xFB, 0xD5, 0x0B, 0x16, 0xF5, 0xF7, 0x22
	.byte 0x25, 0xF1, 0xF3, 0xFA, 0x01, 0xFF, 0x01, 0x01, 0xC0, 0x38, 0x34, 0xF5, 0xE5, 0x05, 0x04, 0x03
	.byte 0x01, 0x02, 0x01, 0x03, 0xFF, 0xFC, 0xFC, 0xF6, 0xF9, 0xFC, 0xFC, 0x02, 0xFF, 0xF9, 0xF9, 0xF4
	.byte 0xF6, 0xF1, 0xF7, 0xFB, 0xFB, 0xF5, 0xF0, 0xF3, 0x06, 0x10, 0x04, 0xF3, 0xF0, 0xF6, 0xFC, 0x02
	.byte 0xD1, 0xF3, 0x19, 0x2F, 0x13, 0xF2, 0xEC, 0xF8, 0xEF, 0x00, 0xFD, 0xF3, 0x01, 0x06, 0xEF, 0xF2
	.byte 0x0F, 0x01, 0x0A, 0x06, 0xE8, 0x00, 0xF6, 0x13, 0xBB, 0xF8, 0x0E, 0x31, 0x11, 0xFB, 0x21, 0xE3
	.byte 0x03, 0xFC, 0x00, 0x02, 0xF8, 0x05, 0xFA, 0x02, 0x78, 0xC8, 0xF4, 0xD1, 0x17, 0xF7, 0x06, 0xFB
	.byte 0x01, 0x02, 0xFB, 0x01, 0xF6, 0x04, 0xFF, 0xFF, 0x04, 0xFF, 0x00, 0xFD, 0x1E, 0xCC, 0xBD, 0x1E
	.byte 0x16, 0x0B, 0xFF, 0xFC, 0x03, 0x00, 0x07, 0x02, 0x00, 0x01, 0xF6, 0xFC, 0xF8, 0xF3, 0x05, 0x01
	.byte 0x01, 0xFF, 0x05, 0x0D, 0xF7, 0xFD, 0xF6, 0xC2, 0x16, 0x30, 0xFC, 0xFA, 0x02, 0x03, 0x05, 0x01
	.byte 0x01, 0x04, 0x01, 0x0D, 0x03, 0xEC, 0x0A, 0xF7, 0x0D, 0xFE, 0xFC, 0x09, 0xEC, 0x2C, 0xFF, 0x14
	.byte 0xE0, 0xBD, 0x13, 0x00, 0x1C, 0x0B, 0x08, 0x02, 0xF5, 0x0F, 0xED, 0xCB, 0x1F, 0x02, 0x22, 0x0A
	.byte 0x06, 0xFC, 0xC6, 0x08, 0x0A, 0x0D, 0x0E, 0x01, 0x0C, 0x02, 0x00, 0x00, 0x80, 0x25, 0xF8, 0x2C
	.byte 0xF7, 0x1A, 0xFD, 0x12, 0x02, 0x06, 0x0B, 0xFF, 0x09, 0x01, 0x05, 0x03, 0x00, 0x01, 0x01, 0x02
	.byte 0x0C, 0x03, 0xFE, 0xFD, 0x07, 0x19, 0x09, 0x12, 0xFA, 0xDB, 0x03, 0xF8, 0xF0, 0x03, 0xF6, 0xF9
	.byte 0x11, 0xDE, 0xD4, 0x0B, 0x11, 0xF1, 0xFD, 0xF0, 0xFF, 0xF3, 0x0B, 0xD2, 0xBF, 0xFE, 0x08, 0x0D
	.byte 0x02, 0x04, 0x04, 0x05, 0x0F, 0x05, 0x09, 0x06, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0xF7, 0x13, 0xF4, 0x0C
	.byte 0xE4, 0x26, 0x1D, 0xFF, 0x0C, 0x02, 0x05, 0x17, 0xF6, 0x03, 0x04, 0xF1, 0x15, 0xFC, 0x03, 0x03
	.byte 0x06, 0x11, 0xF7, 0xFC, 0xF8, 0xEC, 0x1A, 0x05, 0xF6, 0x06, 0x01, 0xED, 0x12, 0xF1, 0xF4, 0x2F
	.byte 0xFA, 0xFE, 0xF9, 0xF7, 0xFF, 0xEF, 0xFE, 0xFE, 0xF2, 0x1E, 0xF2, 0x02, 0xF9, 0xFC, 0xFF, 0xF4
	.byte 0x0B, 0xE7, 0x10, 0xFD, 0xF4, 0x0B, 0xF9, 0x07, 0xEF, 0x01, 0x13, 0xE4, 0x1F, 0xF9, 0xF6, 0x07
	.byte 0xF6, 0x03, 0x0C, 0x05, 0xF0, 0x06, 0x18, 0x29, 0xE3, 0xCA, 0x00, 0x01, 0x07, 0xFF, 0x05, 0xFA
	.byte 0x0D, 0x0A, 0xFC, 0xF8, 0x08, 0xF7, 0xE5, 0xCB, 0xDA, 0xFF, 0x0A, 0x13, 0x11, 0x10, 0x0C, 0x0C
	.byte 0x00, 0x03, 0xF9, 0xFC, 0x0D, 0x0C, 0xE1, 0xF2, 0x06, 0xFB, 0x03, 0x05, 0x11, 0x2B, 0x32, 0x19
	.byte 0x0A, 0x01, 0xFA, 0xFE
	.global unk_0208D2C4
unk_0208D2C4:
	.byte 0x7A, 0xFE, 0x04, 0x06, 0x7F, 0xEC, 0x9B, 0x4E, 0x9B, 0x4E, 0x7F, 0xEC
	.byte 0x04, 0x06, 0xD8, 0xFB, 0x01, 0x0B, 0xDA, 0xE5, 0x65, 0x7B, 0xB5, 0x1A, 0x22, 0xFC, 0x2F, 0xFF
	.byte 0x2F, 0xFF, 0x22, 0xFC, 0xB5, 0x1A, 0x65, 0x7B, 0xDA, 0xE5, 0x01, 0x0B, 0xD8, 0xFB, 0x00, 0x00
	.byte 0xE0, 0xE0, 0xE0, 0x00, 0xE4, 0xBD, 0xFB, 0x21, 0xD6, 0xFA, 0xE0, 0x12, 0xC7, 0xF6, 0xCA, 0x23
	.byte 0xF0, 0x1B, 0xD7, 0x2A, 0x13, 0xED, 0xD8, 0x24, 0xD3, 0x18, 0xEB, 0x28, 0xF8, 0xF2, 0xEE, 0x1C
	.byte 0x01, 0x0E, 0xC6, 0x35, 0xEE, 0xA8, 0xD9, 0x27, 0xDA, 0x15, 0xEE, 0x25, 0xED, 0x14, 0xD5, 0x26
	.byte 0x0A, 0x11, 0xD0, 0x36, 0xCC, 0xC6, 0xF3, 0x21, 0xD4, 0xFF, 0xF5, 0x20, 0xF4, 0xF5, 0xDE, 0x16
	.byte 0x0E, 0x00, 0xD2, 0x2E, 0xDB, 0xDD, 0xDE, 0x05, 0xE7, 0x2C, 0xE2, 0x2B, 0x06, 0xFC, 0xC1, 0x31
	.byte 0xE1, 0x2B, 0xD7, 0x2B, 0xE9, 0x1E, 0xD5, 0x29, 0xD5, 0x1A, 0xF2, 0x2C, 0xDF, 0x01, 0xF3, 0x1B
	.byte 0xF3, 0x12, 0xDB, 0x25, 0xD2, 0xB7, 0xD3, 0x22, 0xDC, 0x18, 0xE7, 0x22, 0xDC, 0xF5, 0xEC, 0x13
	.byte 0xE7, 0x0C, 0xEE, 0x21, 0xDC, 0xBB, 0xC5, 0x22, 0xD3, 0x06, 0x08, 0x2E, 0xEA, 0xF2, 0xE8, 0x12
	.byte 0xFF, 0x0D, 0xD4, 0x2C, 0xD9, 0xD0, 0xE6, 0x0F, 0xE0, 0x1F, 0xDB, 0x22, 0xDF, 0x0F, 0xD2, 0x1F
	.byte 0xE8, 0x1E, 0xDC, 0x25, 0xD7, 0x1F, 0xE9, 0x29, 0xCE, 0x16, 0xFC, 0x32, 0xEA, 0x02, 0xEB, 0x1C
	.byte 0xEF, 0x1E, 0xDE, 0x28, 0xF9, 0xC4, 0xE4, 0x1D, 0xDA, 0x2A, 0xE4, 0x2A, 0xD4, 0xF5, 0x15, 0x2B
	.byte 0xF0, 0x08, 0xD4, 0x22, 0xD9, 0xC9, 0xD5, 0x15, 0xF5, 0xDD, 0x1A, 0x29, 0xF7, 0x00, 0xDE, 0x1D
	.byte 0xF8, 0x79, 0xAF, 0x71, 0x07, 0xF0, 0xEA, 0x21, 0xDB, 0x21, 0xE1, 0x24, 0xE5, 0xF9, 0xDC, 0x11
	.byte 0xDE, 0x46, 0xC7, 0x41, 0xDB, 0xF5, 0xD0, 0x15, 0xD8, 0x11, 0xFF, 0x2C, 0xDF, 0x06, 0xFA, 0x21
	.byte 0xF7, 0x00, 0xEC, 0x22, 0xEB, 0x45, 0xDF, 0x39, 0xE3, 0x21, 0xE1, 0x23, 0xC9, 0x0C, 0xFF, 0x31
	.byte 0xDF, 0x1B, 0xEA, 0x23, 0xCE, 0xDF, 0xD1, 0x11, 0xCE, 0x36, 0x33, 0x5E, 0xFF, 0xFB, 0xD4, 0x23
	.byte 0xFC, 0x16, 0xD8, 0x2D, 0xD9, 0xBE, 0xE7, 0x18, 0xDF, 0x01, 0xE6, 0x14, 0xE8, 0xE9, 0xE7, 0x0C
	.byte 0xF5, 0x15, 0xD3, 0x2C, 0xE7, 0xD3, 0xED, 0x11, 0xD5, 0x69, 0xF0, 0x52, 0x05, 0xEB, 0x01, 0x29
	.byte 0xF0, 0x0B, 0xDF, 0x1E, 0xF3, 0x9D, 0xFC, 0x39, 0xDB, 0x21, 0xF1, 0x2C, 0xE7, 0x25, 0xC1, 0x36
	.byte 0xDC, 0x18, 0xE1, 0x1F, 0xCB, 0xC8, 0xDA, 0x1A, 0xD7, 0xFC, 0x04, 0x25, 0xDF, 0x0D, 0xE2, 0x18
	.byte 0x31, 0x34, 0xA2, 0x72, 0xFB, 0xE2, 0xF1, 0x17, 0x01, 0x26, 0xD8, 0x38, 0xE9, 0x0C, 0xDC, 0x1D
	.byte 0xEF, 0x28, 0xD1, 0x33, 0xDB, 0xD7, 0xD9, 0x0B, 0xCF, 0x22, 0x00, 0x3A, 0xEE, 0xF9, 0xFC, 0x22
	.byte 0xF0, 0x11, 0xE5, 0x23, 0x1E, 0x05, 0xC2, 0x41, 0x04, 0x30, 0xBC, 0x4C, 0xD5, 0x0B, 0xF5, 0x26
	.byte 0xEE, 0x13, 0xF1, 0x29, 0xE9, 0xC2, 0xD9, 0x17, 0xD6, 0x0A, 0xFE, 0x29, 0xEB, 0xF3, 0xF3, 0x19
	.byte 0xF7, 0x0D, 0xD1, 0x2A, 0xE9, 0xC2, 0xE8, 0x18, 0xD4, 0x3C, 0xEB, 0x3A, 0xEE, 0xFD, 0xCC, 0x20
	.byte 0xEA, 0x16, 0xDC, 0x22, 0xB5, 0x39, 0x10, 0x5A, 0xED, 0x03, 0x0A, 0x2D, 0xE3, 0x17, 0xDA, 0x20
	.byte 0xFB, 0xC2, 0xCD, 0x26, 0xCD, 0x28, 0xEE, 0x35, 0xD6, 0x0D, 0xE8, 0x20, 0xDE, 0x0E, 0xEC, 0x1E
	.byte 0xC8, 0xB5, 0xE6, 0x25, 0xE6, 0x20, 0x0F, 0x3B, 0xE6, 0x11, 0xE3, 0x1D, 0xF9, 0x1C, 0xCC, 0x35
	.byte 0xF4, 0xE2, 0x05, 0x1E, 0xFB, 0xD0, 0xFB, 0x23, 0x02, 0x02, 0xD5, 0x28, 0x15, 0x10, 0x10, 0x4B
	.byte 0xE7, 0xD3, 0xE0, 0x0A, 0xD5, 0x12, 0xF6, 0x2A, 0x09, 0x00, 0xFF, 0x34, 0xFF, 0x07, 0xE2, 0x24
	.byte 0x13, 0xD0, 0xFC, 0x30, 0xE4, 0x19, 0xE3, 0x20, 0xEA, 0x00, 0xE1, 0x16, 0xE0, 0x11, 0xF6, 0x24
	.byte 0xC0, 0xD7, 0xC2, 0x24, 0xCC, 0x0F, 0x10, 0x3A, 0xE2, 0xEA, 0xE0, 0x06, 0xF9, 0x09, 0xDA, 0x24
	.byte 0xE0, 0xE0, 0xE0, 0x00, 0xE1, 0xC6, 0xF0, 0x16, 0xD7, 0xE8, 0xD5, 0x0E, 0xC8, 0xEA, 0xC9, 0x1D
	.byte 0xF3, 0x21, 0xD7, 0x2F, 0xFC, 0xD9, 0xF7, 0x1D, 0xD7, 0x0F, 0xF4, 0x26, 0xF8, 0xF1, 0xF4, 0x1F
	.byte 0x01, 0x02, 0xD4, 0x28, 0xEA, 0xBE, 0xD6, 0x1B, 0xDA, 0x1C, 0xE9, 0x26, 0xEB, 0x0E, 0xDB, 0x1F
	.byte 0x00, 0x15, 0xCE, 0x34, 0xCB, 0xB9, 0xE5, 0x21, 0xDB, 0xFF, 0xED, 0x19, 0xED, 0xFB, 0xE4, 0x16
	.byte 0x06, 0x41, 0xD4, 0x4A, 0xDF, 0xD0, 0xDF, 0x09, 0xD8, 0x39, 0xF2, 0x3A, 0xEF, 0x04, 0xD3, 0x20
	.byte 0xE1, 0x26, 0xDF, 0x24, 0xE9, 0x1C, 0xD8, 0x27, 0xD5, 0x1D, 0xF4, 0x2E, 0xDE, 0x0D, 0xE9, 0x1C
	.byte 0xF0, 0x0F, 0xE5, 0x22, 0xF2, 0xAE, 0xF1, 0x2B, 0xE1, 0x19, 0xE0, 0x1D, 0xEB, 0x05, 0xFB, 0x26
	.byte 0xD1, 0xC1, 0xCD, 0x21, 0xD2, 0x0C, 0x03, 0x2F, 0xE4, 0xEF, 0xE3, 0x0B, 0xF6, 0x0E, 0xD8, 0x26
	.byte 0xFD, 0xFE, 0xFF, 0x00, 0xFC, 0x05, 0x23, 0xD8, 0xF7, 0x0D, 0xD4, 0x05, 0xE5, 0xFF, 0xF9, 0x06
	.byte 0xF5, 0x07, 0xF8, 0x07, 0x13, 0xF2, 0x0F, 0xFC, 0x09, 0xF6, 0x0A, 0xF8, 0x0A, 0xF7, 0xFF, 0x01
	.byte 0x00, 0x00, 0x02, 0x05, 0xEE, 0x16, 0xCB, 0x32, 0x01, 0xE9, 0x32, 0xDC, 0x0F, 0x03, 0xF3, 0x0E
	.byte 0xF6, 0x06, 0x01, 0x05, 0xFD, 0x04, 0xFE, 0x05, 0xE0, 0x19, 0x05, 0xFE, 0xFF, 0xFC, 0x01, 0x0B
	.byte 0xE3, 0x1A, 0xFA, 0xF1, 0x1E, 0xEE, 0x00, 0x0F, 0xEF, 0x28, 0xD7, 0x03, 0x09, 0xFE, 0xFE, 0x03
	.byte 0xFD, 0xFF, 0xFB, 0x02, 0x15, 0xFA, 0xF0, 0xEB, 0x17, 0x02, 0x3C, 0x0F, 0x10, 0xF0, 0xF7, 0x0E
	.byte 0x09, 0xFF, 0x07, 0xF7, 0x00, 0x01, 0x01, 0x00, 0xFF, 0xFA, 0x11, 0xE4, 0x36, 0xD3, 0xFF, 0x01
	.byte 0xFF, 0xFA, 0xFA, 0x02, 0x0B, 0x1A, 0xE3, 0xFE, 0x2E, 0xEB, 0x22, 0x0C, 0xE9, 0x20, 0xE9, 0x10
	.byte 0xF6, 0x03, 0x42, 0x13, 0xEC, 0x18, 0x07, 0x0B, 0xFD, 0x00, 0xFD, 0xFF, 0xCE, 0xD2, 0x02, 0xEE
	.byte 0xFD, 0x04, 0xFF, 0xFE, 0x03, 0xFD, 0xED, 0x29, 0xDC, 0x09, 0x0B, 0xE8, 0x15, 0xF0, 0x09, 0xFD
	.byte 0xE7, 0xFD, 0x0A, 0x12, 0xF7, 0xFE, 0xFB, 0xFF, 0xFB, 0x06, 0xFC, 0xFD, 0x02, 0xE6, 0x15, 0xED
	.byte 0x23, 0xF1, 0x07, 0xF3, 0x11, 0xED, 0x27, 0xD5, 0x30, 0xE1, 0x10, 0xF7, 0x07, 0xFE, 0xFB, 0x03
	.byte 0xFC, 0x09, 0xED, 0x1B, 0xC9, 0x3F, 0xDD, 0x0A, 0x1A, 0xD4, 0xFE, 0x09, 0x04, 0x01, 0xFA, 0x08
	.byte 0xF7, 0x05, 0xF8, 0xFF, 0xFD, 0xF0, 0x2D, 0xD6, 0x05, 0x0F, 0xF0, 0x0A, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0xF0, 0x18, 0xC9, 0x2F, 0xDA, 0x1B, 0xED, 0x07, 0xFD, 0x01
	.byte 0x10, 0x1B, 0x14, 0xED, 0x12, 0x05, 0xF9, 0x01, 0xFB, 0x02, 0xFA, 0x08, 0xEA, 0x00, 0xFD, 0xFD
	.byte 0x08, 0xFF, 0x07, 0xF8, 0x01, 0xFD, 0x05, 0x00, 0x11, 0xD0, 0x3A, 0xCC, 0x1D, 0xF9, 0xFE, 0x03
	.byte 0xF6, 0x06, 0xE6, 0x3A, 0xE1, 0x01, 0xFA, 0x03, 0x5D, 0xE3, 0x27, 0x03, 0x11, 0x05, 0x06, 0xFF
	.byte 0xFF, 0xFF, 0x1B, 0x0D, 0x0A, 0x13, 0xF9, 0xDE, 0x0C, 0x0A, 0xFC, 0x09, 0xB4, 0x09, 0x08, 0xE4
	.byte 0xFE, 0xF5, 0x02, 0xFF, 0x03, 0x01, 0xAD, 0x26, 0xD9, 0x04, 0xF0, 0xFA, 0xFE, 0xFB, 0x05, 0xFE
	.byte 0xE8, 0x15, 0xEC, 0x05, 0xFB, 0xF9, 0x0E, 0xF6, 0x02, 0xE5, 0x10, 0xEC, 0x00, 0xE0, 0x1A, 0x13
	.byte 0x08, 0xF5, 0xD7, 0x1F, 0x1C, 0xE5, 0xE0, 0x22, 0x2A, 0x22, 0xEF, 0x16, 0xF6, 0x0D, 0xE3, 0x12
	.byte 0xF4, 0xE6, 0xE8, 0x0B, 0x16, 0x05, 0xFB, 0xFB, 0x36, 0xBC, 0xD5, 0x39, 0xE7, 0x18, 0x04, 0x04
	.byte 0x1A, 0xF8, 0xF4, 0xEF, 0x36, 0x1E, 0xD3, 0x01, 0x0A, 0xF1, 0x12, 0xD7, 0x0B, 0x44, 0xBD, 0x25
	.byte 0xF0, 0xE8, 0xF0, 0x26, 0xEA, 0x06, 0xE3, 0x1E, 0x42, 0xE5, 0x05, 0x07, 0xF0, 0x0D, 0x02, 0xF4
	.byte 0xF9, 0xFD, 0xEC, 0x24, 0x04, 0xE4, 0x09, 0x03, 0x20, 0x30, 0x1A, 0x27, 0x03, 0x00, 0x07, 0xEB
	.byte 0xF3, 0x05, 0xAE, 0xF9, 0x49, 0xEC, 0x22, 0xF7, 0xFB, 0x01, 0xFF, 0x0A, 0xFB, 0xF6, 0xFF, 0x09
	.byte 0x01, 0xF7, 0x0A, 0x00, 0xF2, 0x0B, 0xFF, 0xFE, 0xFF, 0x0B, 0x14, 0x60, 0xAF, 0xEA, 0xF4, 0xF7
	.byte 0xC6, 0x09, 0x18, 0xE2, 0x1A, 0xDD, 0x1B, 0xF4, 0x0D, 0xEE, 0x38, 0xC5, 0x0F, 0xF9, 0x17, 0xF1
	.byte 0xFF, 0x06, 0xE7, 0x0E, 0xEA, 0xEC, 0x2F, 0xF5, 0x10, 0x02, 0x26, 0xE9, 0xED, 0xE2, 0xF7, 0x28
	.byte 0xF5, 0x05, 0x04, 0xFA, 0x08, 0x1A, 0xEB, 0xF5, 0x7F, 0x04, 0x01, 0x06, 0xF7, 0x02, 0xF9, 0xFE
	.byte 0xFD, 0x07, 0xFB, 0x0A, 0xED, 0x07, 0x96, 0x5B, 0xFD, 0x09, 0xFC, 0x15, 0xF8, 0x1A, 0xB0, 0x08
	.byte 0x01, 0xFE, 0xF6, 0xEF, 0xEF, 0xE5, 0x20, 0x47, 0x06, 0xE3, 0x0B, 0xE9, 0x36, 0xDA, 0x1D, 0xEA
	.byte 0x27, 0x57, 0xE1, 0xF4, 0xEC, 0x03, 0xFE, 0xFE, 0x02, 0x14, 0x00, 0xFF, 0xDD, 0x1B, 0x09, 0xFA
	.byte 0xF4, 0x03, 0xF4, 0xFA, 0x0D, 0x01, 0x0E, 0xEA, 0xC5, 0xF1, 0xEF, 0xE7, 0x0D, 0xF9, 0x07, 0x03
	.byte 0x00, 0x01, 0xF9, 0x06, 0xFD, 0x3D, 0xDB, 0xE9, 0xE9, 0xE3, 0x26, 0xE1, 0x1B, 0x01, 0xF8, 0x02
	.byte 0xE5, 0x17, 0xE6, 0x24, 0xDE, 0x05, 0x18, 0xE8, 0xFA, 0x07, 0x03, 0xC5, 0x4E, 0xC2, 0x2C, 0xF0
	.byte 0x01, 0x06, 0x00, 0x11, 0x08, 0x2D, 0x00, 0x92, 0x06, 0x0E, 0xFE, 0x20, 0xB3, 0xC8, 0x3E, 0xFD
	.byte 0x03, 0xF3, 0x04, 0xF0, 0x66, 0xF1, 0xDC, 0xFF, 0x09, 0x8F, 0x06, 0x17, 0x00, 0x09, 0x09, 0x05
	.byte 0xF8, 0xFF, 0xF2, 0x05, 0xF4, 0x79, 0xCB, 0xE5, 0xF8, 0xF7, 0x16, 0xF3, 0x03, 0x02, 0xFD, 0x01
	.byte 0xFE, 0xB9, 0x5F, 0x26, 0xED, 0x0F, 0xF0, 0xFB, 0x47, 0x0A, 0x02, 0xE0, 0xF3, 0xFB, 0x0F, 0xFF
	.byte 0xFE, 0xF2, 0xAB, 0x1E, 0x1D, 0x06, 0x03, 0x02, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x02, 0xBF, 0xC8, 0xF7, 0x12, 0x12, 0x17, 0xF2, 0xFE, 0x00, 0x0C, 0xE3, 0x1A, 0xF4, 0x01, 0x02
	.byte 0xF4, 0xC0, 0x5A, 0xFA, 0x04, 0x01, 0x05, 0xFB, 0x92, 0xFD, 0xE1, 0x16, 0xE3, 0x09, 0x00, 0x08
	.byte 0xD8, 0xFB, 0x15, 0xFB, 0xFB, 0x0D, 0x0A, 0xEE, 0x28, 0x01, 0x23, 0xEC, 0x1E, 0xE4, 0x0B, 0xFA
	.byte 0x13, 0x07, 0x0E, 0x12, 0xC0, 0x09, 0xFA, 0x10, 0x33, 0x44, 0x08, 0x10, 0x0C, 0xF8, 0x00, 0xF7
	.byte 0x14, 0xEA, 0x19, 0x07, 0xFC, 0xF3, 0x29, 0xDD, 0x5D, 0xEE, 0xCA, 0x0B, 0xFF, 0x01, 0xF7, 0x04
	.byte 0xBE, 0x42, 0xE1, 0x14, 0xEA, 0x19, 0xE9, 0x0B, 0x0A, 0x09, 0x13, 0x0F, 0x0B, 0xFB, 0xE1, 0xF6
	.byte 0xE9, 0xE4, 0xFA, 0xFA, 0xFD, 0xFC, 0x05, 0x03, 0xE4, 0x16, 0xF5, 0xD6, 0x19, 0xE7, 0xF0, 0x29
	.byte 0x22, 0x2F, 0xFA, 0x02, 0x2A, 0xED, 0xEA, 0x05, 0xD9, 0x20, 0x06, 0xDD, 0x16, 0x11, 0xE2, 0x08
	.byte 0xE6, 0xF5, 0xF5, 0x03, 0xF4, 0x21, 0x21, 0xDB, 0x15, 0xFF, 0x06, 0xFC, 0x03, 0x00, 0xFB, 0x05
	.byte 0x0C, 0xF4, 0x39, 0x1B, 0xC3, 0xFD, 0x14, 0xEF, 0x02, 0x00, 0x04, 0x00, 0xFE, 0xDF, 0xC6, 0x51
	.byte 0xE9, 0x27, 0xF6, 0xFB, 0x02, 0x06, 0xF9, 0x05, 0x04, 0xFD, 0xFE, 0xF3, 0xE9, 0xB8, 0x6B, 0x0F
	.byte 0xFB, 0x00, 0xF9, 0xFD, 0xFA, 0x05, 0xFC, 0x0F, 0x2F, 0x0C, 0xE1, 0x19, 0xF0, 0x08, 0x16, 0xE7
	.byte 0xC2, 0xC8, 0xEE, 0x0E, 0x1C, 0x0C, 0x02, 0xF5, 0x4A, 0xBE, 0x29, 0xEC, 0xF9, 0x10, 0xEC, 0x10
	.byte 0xF8, 0x00, 0xF0, 0x04, 0xED, 0x5C, 0x0C, 0xC5, 0xF2, 0xD9, 0x31, 0xE7, 0xF0, 0x17, 0xE5, 0x13
	.byte 0xFD, 0xDF, 0x13, 0x55, 0xE3, 0x06, 0xF9, 0xF6, 0x10, 0xF9, 0xF4, 0x01, 0xFA, 0x02, 0x04, 0xFE
	.byte 0x40, 0x0A, 0xE7, 0x29, 0xFE, 0xE1, 0x0F, 0x00, 0x6E, 0x32, 0x45, 0x23, 0x1C, 0x13, 0xF6, 0x02
	.byte 0xD5, 0xCF, 0xC8, 0xF1, 0xF0, 0x0A, 0x03, 0x0C, 0xFF, 0xF8, 0x01, 0x1A, 0xF4, 0xFF, 0x07, 0xF5
	.byte 0xE5, 0x29, 0x19, 0x01, 0xF5, 0xEE, 0x16, 0xF9, 0xFF, 0xD1, 0xF8, 0x17, 0xFD, 0xEF, 0xF9, 0x12
	.byte 0x83, 0x3B, 0xFB, 0x03, 0x12, 0x01, 0x02, 0x03, 0x1B, 0xDD, 0x41, 0xCB, 0x32, 0xD2, 0x25, 0xEB
	.byte 0xE4, 0x07, 0x0E, 0xDB, 0xFB, 0xFB, 0x0C, 0x05, 0xF8, 0x4E, 0xED, 0x15, 0xFA, 0xF0, 0x08, 0xF9
	.byte 0x05, 0x02, 0x07, 0x02, 0x0A, 0xFA, 0x0C, 0xC4, 0x2C, 0x0B, 0xDC, 0xE0, 0x1F, 0x00, 0x02, 0xFE
	.byte 0x02, 0x01, 0xFD, 0x07, 0xF6, 0x11, 0xEB, 0x0A, 0x06, 0xFE, 0x13, 0xFE, 0x3B, 0xDA, 0xAA, 0x26
	.byte 0x08, 0xD7, 0xE2, 0xD3, 0xDF, 0x07, 0x0F, 0x1C, 0x1D, 0xF9, 0x18, 0xD8, 0x07, 0x07, 0x05, 0xFE
	.byte 0x09, 0x18, 0xE9, 0xEE, 0x06, 0xE3, 0x1E, 0x02, 0x1C, 0x31, 0xF5, 0xD2, 0x0A, 0x2B, 0xF3, 0xF7
	.byte 0xFF, 0xFD, 0xF9, 0xF9, 0xEF, 0xFA, 0x61, 0xDF, 0xEB, 0x03, 0x05, 0x01, 0x0C, 0xD5, 0xF8, 0x1C
	.byte 0x07, 0xD5, 0xF9, 0x11, 0xEC, 0x13, 0xFF, 0x02, 0xF3, 0x09, 0x36, 0x22, 0x09, 0xE4, 0xF5, 0xF7
	.byte 0xEF, 0x6E, 0xC5, 0x2C, 0xE6, 0x00, 0x03, 0xF4, 0xD1, 0x49, 0xDE, 0xD5, 0x26, 0xDF, 0x10, 0xFB
	.byte 0xD2, 0xFC, 0xFA, 0xFE, 0xE7, 0x13, 0xE3, 0x1C, 0xF3, 0x05, 0x0E, 0x1B, 0xD8, 0xD5, 0x04, 0x20
	.byte 0xF3, 0xFE, 0xDD, 0xFC, 0x70, 0xD6, 0x09, 0xF4, 0x25, 0xE4, 0x11, 0x0E, 0xED, 0x23, 0xD9, 0x17
	.byte 0x03, 0xF2, 0xFF, 0xC7, 0xFB, 0x5E, 0xF7, 0x03, 0xD9, 0x05, 0x1E, 0xF6, 0xE0, 0x2A, 0xF3, 0xF2
	.byte 0x9F, 0xC1, 0x1E, 0xF7, 0x01, 0xF9, 0x0C, 0x05, 0x14, 0x11, 0xF7, 0xDC, 0xE2, 0x19, 0x2F, 0xF7
	.byte 0xF1, 0x0C, 0xEA, 0x62, 0xF8, 0xCE, 0x0F, 0xE5, 0x15, 0xF0, 0xF5, 0x02, 0x0C, 0xF6, 0x0A, 0xFD
	.byte 0x21, 0x24, 0xA0, 0x00, 0xEF, 0x1F, 0xF7, 0x09, 0x03, 0xEC, 0x0D, 0xF5, 0x08, 0xFC, 0x0A, 0xF6
	.byte 0x09, 0x01, 0x70, 0xBA, 0xE5, 0x05, 0xEB, 0x02, 0xC7, 0xFD, 0xE3, 0x0A, 0x13, 0xEB, 0x15, 0xF6
	.byte 0xBE, 0xFD, 0x5B, 0xDD, 0x1E, 0xF4, 0x00, 0xF9, 0x3B, 0xE4, 0x1A, 0x02, 0x0E, 0xEE, 0x01, 0x01
	.byte 0x0B, 0x11, 0x14, 0xCA, 0xC5, 0x1B, 0x04, 0x1D, 0x20, 0x05, 0x13, 0x0C, 0xFC, 0x01, 0x07, 0xF6
	.byte 0x05, 0xFE, 0x0A, 0x00, 0x17, 0xFB, 0x1C, 0x98, 0x2E, 0x0B, 0x10, 0x03, 0x1D, 0x01, 0xF8, 0xF2
	.byte 0x01, 0x07, 0xCE, 0x58, 0xC2, 0x1A, 0x08, 0xEF, 0xF2, 0x32, 0x00, 0x20, 0xF4, 0xFD, 0xE5, 0x12
	.byte 0xF8, 0xFB, 0x08, 0x03, 0xEC, 0xF5, 0x25, 0xF4, 0x09, 0x21, 0x2E, 0x9B, 0xFF, 0xFC, 0x01, 0x06
	.byte 0xFF, 0x1C, 0xD6, 0xF1, 0x10, 0x05, 0xFF, 0xFE, 0xC9, 0x55, 0x26, 0xF7, 0xFC, 0x0B, 0xFE, 0xF7
	.byte 0xFA, 0x03, 0xEC, 0xF6, 0xB3, 0x59, 0x18, 0xFD, 0x98, 0xC7, 0xE6, 0xE1, 0xEC, 0xFA, 0xF7, 0x0E
	.byte 0x14, 0xE9, 0x2E, 0xF1, 0xE1, 0x1C, 0x01, 0xF1, 0xFE, 0x06, 0xFE, 0x1F, 0x2D, 0xB4, 0x17, 0xE7
	.global unk_0208DAB0
unk_0208DAB0:
	.byte 0x27, 0x0C, 0xF2, 0xEC, 0xE3, 0xC3, 0xBD, 0xB4, 0xE0, 0xB9, 0xBD, 0x44, 0x4D, 0x2E, 0x22, 0x05
	.byte 0xF3, 0xD0, 0xD2, 0xB8, 0xAF, 0xAC, 0xC4, 0xC6, 0xD8, 0xE4, 0x52, 0x5D, 0x44, 0x2D, 0x1D, 0x03
	.byte 0xED, 0xD1, 0xE4, 0xD5, 0xDD, 0xE2, 0xF8, 0xF3, 0xD9, 0xA5, 0xA5, 0x85, 0xA0, 0x0A, 0x0A, 0xFA
	.byte 0xEE, 0xC9, 0xC4, 0xA5, 0xC8, 0xDC, 0xE5, 0xF0, 0xD0, 0xB5, 0x28, 0x1C, 0xF6, 0xE4, 0x23, 0x09
	.byte 0x25, 0x13, 0x01, 0xEC, 0xE1, 0xD7, 0xEE, 0xE7, 0xDD, 0xBC, 0xB0, 0x2D, 0x1B, 0xFF, 0x2F, 0x0D
	.byte 0x00, 0xE3, 0xDD, 0xC7, 0xCE, 0xB1, 0xB7, 0xDA, 0xED, 0x05, 0x23, 0x0E, 0xF6, 0xE9, 0x10, 0xF8
	.byte 0x05, 0xE8, 0xD8, 0xC2, 0xE9, 0xE5, 0xEA, 0xF0, 0xEE, 0xD2, 0xB8, 0xB3, 0x2B, 0x15, 0x21, 0x01
	.byte 0xB0, 0xBA, 0xBA, 0xC0, 0xC8, 0xCC, 0xD9, 0xDF, 0xE1, 0xDA, 0xED, 0xED, 0xF1, 0x20, 0x21, 0xFE
	.byte 0x07, 0xF1, 0xF1, 0xE8, 0xE9, 0xDF, 0xD7, 0xC8, 0xE8, 0xC7, 0x05, 0x59, 0x40, 0x29, 0x1B, 0x05
	.byte 0xF7, 0xD1, 0xC4, 0x9F, 0x9F, 0x84, 0xEC, 0xF7, 0xD4, 0xB7, 0x1F, 0x1D, 0xFC, 0x40, 0x30, 0x07
	.byte 0xDD, 0xC7, 0x00, 0xFD, 0xE6, 0xD1, 0xFD, 0xFA, 0xD8, 0xB4, 0xB1, 0xD0, 0x0C, 0x51, 0x37, 0x0A
	.byte 0x09, 0xE8, 0xD5, 0xB7, 0xC7, 0xBB, 0x10, 0x05, 0xE4, 0xCB, 0x12, 0x1D, 0x14, 0x00, 0xFC, 0xF5
	.byte 0x06, 0xF3, 0x17, 0x07, 0xEF, 0xDD, 0xDB, 0xDB, 0xE2, 0xBC, 0xC1, 0x06, 0x18, 0xF7, 0xF2, 0x03
	.byte 0x15, 0xF3, 0xE5, 0xC7, 0xCF, 0xB0, 0xE8, 0xD7, 0xFB, 0xF0, 0xFB, 0x01, 0x2D, 0x19, 0x0C, 0xF9
	.byte 0x03, 0xF1, 0xFA, 0xF0, 0xF1, 0xF8, 0x06, 0xF3, 0xD6, 0xAF, 0xB0, 0xA9, 0x0E, 0x01, 0xF6, 0xFD
	.byte 0xD5, 0xBB, 0xD2, 0xE8, 0xE4, 0xE3, 0x24, 0x06, 0xD5, 0xC8, 0xF4, 0x0C, 0x36, 0x4F, 0x2B, 0x09
	.byte 0x36, 0x16, 0x02, 0x08, 0xF4, 0xD5, 0xD2, 0xCC, 0xDA, 0xBB, 0xA7, 0xFB, 0x4B, 0x26, 0x21, 0x05
	.byte 0xF3, 0xCB, 0xC2, 0xA9, 0xA7, 0x8F, 0x9D, 0xC9, 0xDE, 0xDB, 0x3E, 0x37, 0x21, 0x10, 0x15, 0xFE
	.byte 0xEF, 0xD2, 0xE3, 0xDA, 0xDA, 0xD0, 0xD9, 0xD6, 0xDC, 0xB5, 0xB8, 0xA8, 0xD0, 0xE2, 0x15, 0x02
	.byte 0xF1, 0xC7, 0xC0, 0x9E, 0xAC, 0xB4, 0x19, 0x01, 0xD2, 0xB0, 0xF4, 0x12, 0xF9, 0x03, 0x22, 0x06
	.byte 0x26, 0x1F, 0x17, 0x04, 0xFF, 0x14, 0x0E, 0xF1, 0xD5, 0xB2, 0xA5, 0xE8, 0x0E, 0xFD, 0x36, 0x10
	.byte 0x00, 0xE5, 0xE4, 0xD4, 0xC8, 0xAD, 0xA4, 0xA7, 0xFD, 0x22, 0x38, 0x29, 0x24, 0x16, 0x14, 0xF8
	.byte 0xF9, 0xDD, 0xD6, 0xC2, 0xCF, 0x03, 0x0C, 0xF6, 0xCE, 0xA9, 0xA0, 0xBE, 0x5C, 0x46, 0x26, 0x09
	.byte 0xBA, 0xB9, 0xC2, 0xD6, 0xD9, 0xD5, 0xF5, 0xF9, 0xCE, 0xB1, 0xC6, 0xCE, 0xE1, 0x20, 0x1F, 0xFA
	.byte 0xFC, 0xE7, 0x07, 0xEF, 0xDA, 0xBA, 0xC6, 0xE5, 0xD5, 0xAD, 0xE4, 0x3B, 0x24, 0x14, 0x1F, 0x02
	.byte 0xE5, 0xB9, 0xB0, 0x93, 0x9E, 0xB5, 0xDF, 0xE0, 0xE1, 0xFE, 0x21, 0x0F, 0xFA, 0x2B, 0x21, 0xFB
	.byte 0x00, 0xEA, 0xF6, 0xE5, 0xDE, 0xCF, 0xF5, 0xEC, 0xD7, 0xA5, 0x9C, 0x87, 0xD9, 0x39, 0x29, 0x0A
	.byte 0xED, 0xCE, 0xDA, 0xC5, 0xC4, 0xBA, 0xEE, 0xEC, 0xF8, 0xE1, 0xF8, 0xF1, 0x01, 0xF2, 0xE6, 0xE7
	.byte 0x21, 0x15, 0x20, 0x11, 0x01, 0xED, 0xED, 0xE6, 0xC6, 0xAF, 0xDD, 0xEA, 0x2D, 0x1E, 0x0B, 0xF5
	.byte 0x03, 0xE6, 0xD0, 0xA9, 0xBD, 0xAD, 0xC6, 0x03, 0xFF, 0xE6, 0xEC, 0x2C, 0x0A, 0x19, 0x27, 0x05
	.byte 0xF7, 0xDD, 0xE5, 0xDA, 0x07, 0x0A, 0x04, 0xF7, 0xD6, 0xAB, 0x9A, 0x81, 0x34, 0x2C, 0x1C, 0x0A
	.byte 0xD1, 0xC3, 0xD8, 0xD9, 0xEF, 0xFF, 0xF6, 0xDF, 0xD6, 0xB6, 0xD0, 0x15, 0xFC, 0x46, 0x34, 0x0A
	.global unk_0208DCB0
unk_0208DCB0:
	.byte 0xDC, 0xC2, 0x06, 0xF7, 0xF6, 0xF2, 0xC8, 0x17, 0x01, 0xE6, 0x17, 0xD0, 0xEF, 0x0C, 0x08, 0xF9
	.byte 0x17, 0x1D, 0xDC, 0xE4, 0xFA, 0xE3, 0xEF, 0xFB, 0x28, 0x17, 0x0A, 0x0A, 0xD2, 0xF3, 0x24, 0x06
	.byte 0x04, 0xE2, 0xE3, 0x3E, 0x20, 0xE0, 0xFF, 0x16, 0xF2, 0x01, 0xFC, 0xEA, 0xD3, 0x02, 0x36, 0x04
	.byte 0xE2, 0xC7, 0xC5, 0xF4, 0x1B, 0xFD, 0xE1, 0x08, 0xF7, 0x05, 0x0A, 0xF2, 0x20, 0x42, 0x13, 0x09
	.byte 0x02, 0xE7, 0xDB, 0x17, 0xF1, 0x12, 0xDA, 0xE1, 0x05, 0xF7, 0xEB, 0x0F, 0x00, 0x16, 0x3E, 0x1E
	.byte 0x0F, 0xF4, 0xF2, 0xD2, 0x4D, 0x15, 0x21, 0x03, 0x22, 0x1D, 0xED, 0x32, 0x02, 0x0B, 0x09, 0xDA
	.byte 0xF4, 0xDB, 0x3E, 0x01, 0xF1, 0x36, 0x20, 0x06, 0x02, 0xE8, 0x14, 0x23, 0xEB, 0x02, 0x13, 0x18
	.byte 0xF3, 0x37, 0x04, 0x09, 0x27, 0xED, 0x1E, 0xFF, 0xEB, 0x49, 0x36, 0x21, 0x08, 0x12, 0x03, 0x0F
	.byte 0x06, 0xED, 0xD1, 0x06, 0xFD, 0xD0, 0xCE, 0x01, 0x1A, 0x14, 0x08, 0xE9, 0xCE, 0x41, 0xF2, 0xC9
	.byte 0xEF, 0xE1, 0xDB, 0xE4, 0x35, 0xFF, 0xEF, 0xCB, 0x01, 0x39, 0x0B, 0xF8, 0xE7, 0xE2, 0xDB, 0x40
	.byte 0x05, 0xCC, 0xD3, 0x0F, 0x17, 0x1F, 0x0F, 0x0E, 0xE7, 0x18, 0x21, 0xFE, 0xD4, 0xC8, 0xEE, 0x06
	.byte 0xEB, 0xD5, 0x04, 0xF4, 0x11, 0xDB, 0x14, 0xF6, 0x22, 0x0F, 0x02, 0x0F, 0x37, 0x15, 0xF5, 0xE1
	.byte 0xFA, 0x2E, 0x19, 0x10, 0xF7, 0xE7, 0xF8, 0xC2, 0x1C, 0x11, 0x14, 0xE0, 0xE3, 0x1A, 0x1E, 0x19
	.byte 0xED, 0x02, 0xF0, 0xEF, 0x1A, 0xCD, 0x02, 0x32, 0x2A, 0x13, 0xBE, 0x17, 0x1D, 0xFE, 0x03, 0x13
	.byte 0xED, 0xDB, 0x20, 0x0F, 0x06, 0x1E, 0xDE, 0x0D, 0x0B, 0xFB, 0x28, 0x1F, 0x0A, 0xD6, 0x04, 0xF7
	.byte 0x1A, 0xF7, 0xBA, 0x11, 0xFE, 0xE9, 0x14, 0xEA, 0xC9, 0x33, 0xE8, 0xE1, 0x16, 0xEA, 0x0F, 0xF3
	.byte 0x03, 0xF6, 0xE4, 0xF0, 0x38, 0x04, 0xC1, 0x0B, 0xEE, 0xF1, 0xEE, 0xDA, 0xDD, 0x10, 0xF9, 0x22
	.byte 0xFF, 0xEB, 0xCF, 0xD1, 0x09, 0xDB, 0x07, 0x08, 0x45, 0x37, 0x14, 0x06, 0xDF, 0xD3, 0xF6, 0xF7
	.byte 0x06, 0xF7, 0x0C, 0x47, 0x0F, 0xFD, 0xD6, 0xF9, 0xE8, 0x20, 0xDD, 0xFE, 0xD6, 0xEF, 0xFB, 0x00
	.byte 0xFE, 0xDF, 0xCA, 0x0D, 0xF4, 0xDE, 0x2F, 0x17, 0x13, 0x37, 0x07, 0xF8, 0x4A, 0x1F, 0x0E, 0x10
	.byte 0xE9, 0xE6, 0x13, 0x0C, 0xEE, 0xCF, 0xE4, 0xE1, 0xEC, 0x02, 0xF2, 0xEC, 0xD1, 0x4E, 0x28, 0x0D
	.byte 0xE9, 0xF5, 0x15, 0xFA, 0x12, 0x01, 0x2F, 0x05, 0x26, 0x23, 0x20, 0x2E, 0x16, 0x08, 0x0D, 0x10
	.byte 0xF2, 0x12, 0x33, 0x13, 0x28, 0x27, 0x0B, 0xE6, 0xFF, 0xEF, 0x2F, 0x02, 0xCB, 0xF1, 0x1F, 0xEA
	.byte 0x26, 0x15, 0xF1, 0xF0, 0x05, 0xDF, 0x35, 0x0F, 0xDA, 0x56, 0x0B, 0xFD, 0xE8, 0x31, 0x0D, 0xFC
	.byte 0xF5, 0xEE, 0x1C, 0x14, 0xF4, 0xE5, 0xE6, 0x23, 0xE7, 0xDD, 0xFD, 0xEC, 0xC3, 0x1E, 0x0A, 0xC9
	.byte 0xF4, 0xEA, 0xCC, 0xCA, 0xF2, 0x13, 0xE0, 0xF4, 0x2D, 0x0F, 0xF8, 0xD0, 0xF7, 0x0B, 0xE0, 0x08
	.byte 0xF0, 0xDE, 0xF3, 0x33, 0x12, 0x26, 0xFE, 0xE0, 0xEF, 0x16, 0xFE, 0xEE, 0xE4, 0xBA, 0x3B, 0x1B
	.byte 0xE4, 0xED, 0xF6, 0xEC, 0xF7, 0xF7, 0xF8, 0xEB, 0x15, 0xF8, 0x23, 0xFE, 0x2D, 0xFD, 0xF7, 0x0C
	.byte 0x00, 0x1E, 0x07, 0xD9, 0x2B, 0x1B, 0xDA, 0xA5, 0x1E, 0x1A, 0x13, 0xC9, 0xFC, 0x3F, 0x0E, 0xEF
	.byte 0x0D, 0x09, 0x0D, 0x02, 0x07, 0x04, 0x06, 0x3D, 0x48, 0xFF, 0xEF, 0x1D, 0xFF, 0xEA, 0xEF, 0x08
	.byte 0xE4, 0xDB, 0x3F, 0x2C, 0x29, 0x03, 0x02, 0x0E, 0x09, 0xFA, 0x4B, 0xF8, 0xF9, 0xF4, 0xF1, 0xF4
	.byte 0x0D, 0x09, 0xFC, 0x1E, 0xEA, 0xBF, 0x0F, 0x00, 0xD3, 0x04, 0xFC, 0x01, 0x05, 0x16, 0x0B, 0x17
	.global unk_0208DEB0
unk_0208DEB0:
	.byte 0x0B, 0x2F, 0x10, 0xF7, 0xD2, 0xE0, 0x1A, 0xC0, 0x22, 0xFB, 0x26, 0xF9, 0x2F, 0x14, 0x02, 0xB7
	.byte 0x9D, 0xFD, 0xD3, 0x14, 0x46, 0xCC, 0x0F, 0xFA, 0xF9, 0xAE, 0x1F, 0x15, 0x2F, 0x33, 0x27, 0xFD
	.byte 0x09, 0x00, 0xD7, 0xF9, 0xF1, 0xCA, 0x02, 0x00, 0x1B, 0xE1, 0x09, 0xD3, 0xEA, 0xDA, 0xE8, 0xE8
	.byte 0x08, 0xDF, 0x17, 0x05, 0x32, 0xDC, 0xEF, 0xEE, 0xCD, 0xFE, 0x0D, 0x13, 0x2B, 0x0C, 0xF1, 0xF4
	.byte 0x3D, 0x26, 0x26, 0x07, 0x0D, 0x00, 0x06, 0xFF, 0x03, 0x3E, 0x09, 0x1B, 0x16, 0xDF, 0x26, 0xDD
	.byte 0xF7, 0x1E, 0xD5, 0xF7, 0xE0, 0xFF, 0x04, 0xFC, 0x01, 0xFB, 0xF5, 0xF8, 0x26, 0x1F, 0x0B, 0xF6
	.byte 0xD6, 0xEB, 0xDB, 0x01, 0x2B, 0x0F, 0xF3, 0xDD, 0xED, 0xEE, 0x0F, 0x17, 0xE6, 0x3B, 0x01, 0xEB
	.byte 0x35, 0x08, 0xD7, 0xCE, 0xF2, 0xE4, 0x04, 0x15, 0x19, 0xE4, 0xD8, 0x05, 0xD8, 0xD7, 0x04, 0x33
	.byte 0xDF, 0xF8, 0xF8, 0x01, 0x11, 0xC4, 0x0C, 0x19, 0xD7, 0x11, 0x22, 0x2B, 0x13, 0x2D, 0x07, 0xDB
	.byte 0x18, 0xF1, 0x38, 0xFE, 0x23, 0xF6, 0x30, 0x04, 0xD1, 0xFE, 0x05, 0xFB, 0xCA, 0x05, 0xFD, 0xDF
	.byte 0xF6, 0x1E, 0xFE, 0xD4, 0xE8, 0xDA, 0x09, 0xF7, 0x2A, 0x04, 0x06, 0xC8, 0x2C, 0xF0, 0x09, 0xD8
	.byte 0xE6, 0x12, 0xEC, 0x0A, 0x1C, 0xD7, 0xEB, 0xFC, 0x0D, 0xEE, 0x20, 0xE2, 0xFD, 0x25, 0x0F, 0x16
	.byte 0x1C, 0x32, 0xD8, 0x03, 0xE3, 0xC0, 0x07, 0x33, 0xED, 0xF5, 0x11, 0xE5, 0xD8, 0xC0, 0x18, 0xF4
	.byte 0xF9, 0xE5, 0x03, 0x25, 0x30, 0xFF, 0x02, 0xF7, 0xDA, 0xDE, 0x2E, 0x01, 0x1B, 0xFA, 0x13, 0xF3
	.byte 0x1A, 0x0A, 0x22, 0x14, 0x19, 0x28, 0x32, 0xFA, 0xF9, 0x1E, 0x09, 0xE8, 0x00, 0xE9, 0x47, 0xC3
	.byte 0x16, 0x3A, 0xDE, 0xFC, 0x02, 0xCF, 0xDF, 0x19, 0x1E, 0xF8, 0xFA, 0xF0, 0x4D, 0x02, 0x26, 0xF8
	.byte 0xDD, 0xFA, 0xE2, 0x38, 0x4E, 0x1F, 0x21, 0xEC, 0x0D, 0xD9, 0x14, 0x16, 0x04, 0x15, 0xF8, 0x04
	.byte 0xFA, 0x0A, 0xAD, 0xD7, 0x09, 0xE7, 0xD5, 0x0F, 0xF9, 0xF4, 0xDE, 0xD9, 0xDB, 0xDF, 0x13, 0x1E
	.byte 0x10, 0xDF, 0x2A, 0xE7, 0x19, 0xBC, 0x2C, 0xF1, 0xF5, 0xFC, 0x17, 0x32, 0x0E, 0x04, 0xD9, 0xD5
	.byte 0x14, 0xE2, 0x3C, 0x09, 0xEC, 0x07, 0x10, 0x13, 0xDF, 0x25, 0x1D, 0x10, 0xDD, 0x07, 0x26, 0xE5
	.global unk_0208DFF0
unk_0208DFF0:
	.byte 0xFA, 0x35, 0xEB, 0xE8, 0x04, 0x1A, 0x11, 0xFC, 0xDB, 0x19, 0x11, 0xDC, 0xF3, 0x1F, 0x03, 0xFA
	.byte 0x1B, 0x0F, 0xF6, 0x1F, 0x1C, 0x1A, 0xF6, 0xF6, 0xD8, 0x10, 0xF9, 0x0F, 0x0D, 0x29, 0xF7, 0x00
	.byte 0xFC, 0x32, 0xFA, 0xF9, 0x0E, 0x26, 0x16, 0x00, 0xD0, 0x02, 0x01, 0xF3, 0xED, 0x20, 0xFD, 0xC4
	.byte 0x0B, 0xEF, 0xFF, 0xE8, 0xDE, 0xFF, 0x23, 0xFB, 0xE5, 0x1C, 0x2C, 0x0D, 0x19, 0x0F, 0x2A, 0xF5
	.byte 0x0F, 0x33, 0x23, 0xDC, 0x14, 0x08, 0xFC, 0xF4, 0xE3, 0x13, 0xD1, 0x31, 0xF1, 0xFC, 0x10, 0xE3
	.byte 0xD9, 0x0E, 0xE2, 0x04, 0x19, 0xF7, 0xFB, 0xCD, 0xF2, 0xFD, 0xD8, 0xE0, 0x26, 0x05, 0xF7, 0xF8
	.byte 0xFC, 0xFF, 0xEA, 0x47, 0xFD, 0x0E, 0x1A, 0xEE, 0xEA, 0x18, 0xD7, 0xE7, 0xE8, 0x06, 0x17, 0x13
	.byte 0xF6, 0x27, 0xE6, 0xE5, 0x41, 0x2D, 0x02, 0xF9, 0xE6, 0xF8, 0x16, 0xF4, 0x10, 0x0F, 0x10, 0xDD
	.byte 0xFB, 0x21, 0xEB, 0xF8, 0x00, 0x17, 0x21, 0x22, 0x06, 0x15, 0x24, 0x06, 0xF9, 0xEA, 0x08, 0xDB
	.byte 0xF2, 0x1F, 0x26, 0x0B, 0xFC, 0xFD, 0xD9, 0xE0, 0xF8, 0x20, 0xE9, 0xFA, 0xF4, 0x10, 0x14, 0xE4
	.byte 0xFC, 0x17, 0x0D, 0xCC, 0xFF, 0x16, 0x06, 0xDF, 0xD8, 0xFA, 0x04, 0xC2, 0x0D, 0x05, 0xE6, 0x23
	.byte 0x27, 0x0B, 0x02, 0x39, 0xF5, 0x09, 0xEC, 0xE4, 0xDF, 0x34, 0xFB, 0xFA, 0xFE, 0x16, 0xF2, 0xF0
	.byte 0xD0, 0x23, 0x01, 0xC6, 0x14, 0x0D, 0x21, 0xFF, 0xB6, 0x38, 0xEE, 0xEA, 0xE1, 0x0C, 0x06, 0xF2
	.byte 0x04, 0xFE, 0xF7, 0xD1, 0x0A, 0xFD, 0x1D, 0xEF, 0xFB, 0x3D, 0x0E, 0x2F, 0xF4, 0x02, 0x48, 0xD9
	.byte 0xEF, 0x5C, 0x40, 0xCB, 0xCD, 0xF1, 0xE2, 0xDA, 0xD7, 0xE3, 0xE4, 0x1B, 0x09, 0x24, 0x09, 0xDD
	.byte 0xD6, 0x51, 0xEB, 0x14, 0x19, 0xF0, 0xFB, 0xEF, 0xDD, 0x15, 0x0F, 0xE4, 0x30, 0x02, 0xFE, 0x09
	.byte 0xED, 0x1D, 0xD8, 0x1E, 0xEE, 0xEE, 0x12, 0xF0, 0xC7, 0x0F, 0xEC, 0xF4, 0xF1, 0xDB, 0xF1, 0x21
	.byte 0xD9, 0x15, 0xEA, 0xF3, 0x23, 0x0B, 0x0D, 0xDA, 0xC1, 0x1D, 0x17, 0xE5, 0x20, 0x12, 0x03, 0xE6
	.byte 0x2A, 0x21, 0xC0, 0xBE, 0xEF, 0x10, 0x38, 0x02, 0x24, 0x03, 0x1F, 0x15, 0xD7, 0xD9, 0x08, 0xC7
	.byte 0x0E, 0x25, 0xFE, 0x13, 0xDC, 0xED, 0xE9, 0xE3, 0xF0, 0x01, 0xFD, 0xF8, 0xF6, 0x1F, 0x40, 0xBF
	.global unk_0208E130
unk_0208E130:
	.byte 0xDE, 0xCC, 0xF1, 0x2D, 0x02, 0x17, 0x15, 0x34, 0x18, 0xDF, 0xF7, 0xFF, 0x09, 0xD4, 0xD7, 0xF3
	.byte 0xEF, 0x2C, 0x16, 0xEF, 0xFA, 0xFC, 0xFF, 0x16, 0x26, 0x1A, 0x10, 0x02, 0x32, 0x1B, 0xDD, 0xDE
	.byte 0xF7, 0xD7, 0x06, 0x00, 0xF0, 0xDE, 0x33, 0x08, 0xF2, 0xE1, 0xCF, 0x0F, 0xDF, 0x2D, 0x31, 0x21
	.byte 0xF5, 0xDB, 0xC2, 0xCA, 0x2D, 0x0B, 0xFB, 0xB8, 0x0B, 0xFF, 0xF4, 0xF5, 0x18, 0x1B, 0xF5, 0xD5
	.byte 0x2E, 0x2B, 0x21, 0xF4, 0xF7, 0xFF, 0x01, 0xFC, 0xE9, 0xC7, 0xB9, 0x0B, 0x08, 0x10, 0x11, 0xF8
	.byte 0xEC, 0xE1, 0xD7, 0x35, 0x30, 0xF0, 0x03, 0x41, 0xE8, 0xF8, 0xE9, 0xE0, 0xDB, 0xE0, 0xCF, 0xF6
	.byte 0xEF, 0x06, 0x26, 0x05, 0xF7, 0xEF, 0xD2, 0x08, 0x34, 0x03, 0x06, 0x2D, 0x28, 0x27, 0xF9, 0xFA
	.byte 0xDE, 0xB6, 0x1F, 0x08, 0x01, 0xF0, 0x2B, 0x44, 0xF5, 0xED, 0xE1, 0x04, 0x06, 0x00, 0xFA, 0xEF
	.byte 0xF0, 0xDA, 0xF0, 0xE2, 0x02, 0x09, 0xD9, 0xF0, 0xFF, 0x2B, 0xF6, 0x30, 0x03, 0x03, 0xF0, 0xE1
	.byte 0xFD, 0x3E, 0x44, 0x2B, 0x0D, 0x03, 0xF6, 0x08, 0x14, 0xC8, 0x0C, 0x0C, 0xFE, 0xEE, 0x16, 0xF1
	.byte 0xD8, 0xDC, 0x01, 0x07, 0x29, 0x00, 0x01, 0x2E, 0xFA, 0xC2, 0xFC, 0xF4, 0xFE, 0xF5, 0xAD, 0xF3
	.byte 0xFE, 0x5B, 0x21, 0xF6, 0x00, 0x04, 0xF5, 0xF0, 0x4F, 0x20, 0x25, 0x0E, 0x09, 0x33, 0xEB, 0xE4
	.byte 0xC8, 0xDE, 0x00, 0x15, 0x09, 0xE6, 0x0B, 0x1C, 0xD6, 0xCA, 0xE9, 0xFE, 0xF1, 0x1F, 0x1E, 0x08
	.byte 0xD9, 0xBE, 0xD9, 0xDC, 0x1F, 0xE4, 0xD8, 0xD2, 0x23, 0x28, 0x16, 0x18, 0x21, 0x30, 0x17, 0xDE
	.byte 0x0E, 0x28, 0x20, 0x11, 0x1B, 0xFD, 0x19, 0x1A, 0xF3, 0xC3, 0xEF, 0x0B, 0x04, 0x1F, 0x3C, 0xFA
	.byte 0xE6, 0xD7, 0xC0, 0x0D, 0x10, 0xE6, 0x36, 0x1F, 0xF5, 0xE9, 0xF7, 0xF5, 0xDE, 0xB9, 0xEB, 0xDE
	.byte 0xDD, 0x37, 0x32, 0x1D, 0xEA, 0xE5, 0xCE, 0xDA, 0x39, 0x21, 0x2A, 0x39, 0x30, 0x1A, 0x0B, 0x00
	.byte 0xCF, 0xE1, 0x1A, 0xFC, 0xF2, 0x05, 0x4E, 0x25, 0x11, 0x00, 0xCF, 0xF4, 0xE9, 0x1A, 0x0E, 0x02
	.byte 0x02, 0xD5, 0xEF, 0xF4, 0x0A, 0xF8, 0xFC, 0x08, 0x12, 0x0C, 0xFA, 0x14, 0xF4, 0xFA, 0xF3, 0xE7
	.byte 0x22, 0x0F, 0x28, 0x31, 0x07, 0x08, 0x0D, 0x14, 0x14, 0xED, 0xEA, 0xFE, 0xF8, 0x02, 0x33, 0xCD
	.global unk_0208E270
unk_0208E270:
	.byte 0xE6, 0xF8, 0x1D, 0x15, 0x04, 0x13, 0xD9, 0x21, 0xF9, 0xDC, 0x38, 0x36, 0x30, 0x28, 0x1D, 0xFC
	.byte 0xE8, 0xD6, 0xBE, 0xD5, 0xC4, 0x13, 0xFE, 0x25, 0x29, 0xF6, 0xDB, 0xC4, 0xC0, 0x12, 0xEA, 0x4D
	.byte 0x49, 0x28, 0x19, 0x04, 0x13, 0xED, 0xBE, 0xFE, 0x0B, 0x05, 0x15, 0x0E, 0x1A, 0xE7, 0xAA, 0xFC
	.byte 0x12, 0x01, 0x1A, 0xDB, 0x0A, 0x25, 0xFF, 0x18, 0xF4, 0xC5, 0xF5, 0x14, 0xFA, 0x22, 0xF0, 0xF0
	.byte 0x2A, 0x13, 0xE4, 0xCD, 0x35, 0x20, 0x04, 0x0A, 0x3E, 0x15, 0xF4, 0xDE, 0x1B, 0x04, 0xD0, 0xD0
	.byte 0xCE, 0xCF, 0x1F, 0xF9, 0xEB, 0xD6, 0xE7, 0xFC, 0xD5, 0xEA, 0x3B, 0x02, 0x1B, 0x0C, 0xF7, 0xFA
	.byte 0xF0, 0xF8, 0xE0, 0xC6, 0xF0, 0xE3, 0xFB, 0x29, 0x17, 0xE2, 0xDF, 0xD2, 0xF3, 0xF6, 0xDA, 0x34
	.byte 0x34, 0x01, 0xEF, 0xF7, 0x0A, 0x1A, 0xE7, 0xFA, 0x21, 0xEC, 0x35, 0x37, 0x19, 0xE0, 0xFB, 0xD6
	.byte 0x17, 0x15, 0x42, 0x05, 0xE4, 0x14, 0x09, 0x4B, 0x1D, 0xF9, 0xD6, 0xD9, 0x0F, 0x03, 0xE9, 0x15
	.byte 0x06, 0x0B, 0x01, 0xE3, 0x0E, 0x3F, 0x0A, 0x36, 0x1A, 0xE8, 0xCD, 0xCF, 0x07, 0xE9, 0xCD, 0x0F
	.byte 0xBE, 0x01, 0x3C, 0x19, 0x0A, 0x00, 0xE2, 0xFC, 0xF1, 0x11, 0x13, 0x3B, 0x28, 0x04, 0xFB, 0x21
	.byte 0x06, 0xEA, 0xC6, 0xBA, 0xFB, 0x17, 0xFA, 0x3C, 0x2C, 0xE3, 0xF0, 0xD1, 0xE3, 0x34, 0xED, 0x32
	.byte 0x1C, 0x10, 0x23, 0x1F, 0x24, 0x00, 0xEB, 0x06, 0x15, 0x1B, 0x16, 0x2A, 0x07, 0xBE, 0xD8, 0xF8
	.byte 0x07, 0x13, 0x2E, 0x00, 0xFC, 0x3C, 0x24, 0x2D, 0xF9, 0xE3, 0xFA, 0xE0, 0xD9, 0x02, 0x06, 0xF7
	.byte 0x21, 0x14, 0xCD, 0xDE, 0x12, 0xFA, 0x13, 0x06, 0x0B, 0x05, 0xED, 0xE3, 0xFE, 0x2A, 0xF5, 0xD3
	.byte 0xEB, 0xC9, 0x39, 0x25, 0x02, 0xF2, 0xBD, 0xF0, 0xE5, 0xDA, 0x45, 0x30, 0x13, 0x02, 0xEF, 0x14
	.byte 0xEC, 0xF0, 0xDE, 0xEF, 0xE7, 0xC3, 0x0A, 0x49, 0x2D, 0x10, 0xD8, 0xC0, 0xEF, 0xE3, 0xEA, 0x38
	.byte 0x11, 0xD9, 0x08, 0xF5, 0x08, 0xE7, 0xEE, 0xF3, 0xED, 0x08, 0x36, 0x39, 0x24, 0xEF, 0xE6, 0xFC
	.byte 0x06, 0xEB, 0x28, 0x2A, 0xFC, 0x14, 0x1F, 0x35, 0x0A, 0xDE, 0xCB, 0x1F, 0xEF, 0x23, 0x00, 0x0F
	.byte 0xFA, 0xEC, 0xC1, 0xB7, 0x16, 0x19, 0x1D, 0x11, 0x08, 0xE3, 0xD9, 0xBB, 0x12, 0x0F, 0xF1, 0xFB
	.global unk_0208E3B0
unk_0208E3B0:
	.byte 0x1E, 0x13, 0x26, 0x22, 0x28, 0x20, 0x2E, 0x2B, 0x3A, 0x2B, 0x05, 0xEE, 0xE7, 0xD8, 0xDF, 0xC9
	.byte 0xCC, 0x14, 0x22, 0x1C, 0xEC, 0xC1, 0x9F, 0xA4, 0x3D, 0x35, 0x2F, 0x31, 0x35, 0x4B, 0xF2, 0xCB
	.byte 0xB3, 0xB1, 0x00, 0xFD, 0xFB, 0x13, 0x16, 0x1A, 0xF7, 0xCB, 0xC9, 0x42, 0x5A, 0x48, 0x55, 0x44
	.byte 0x4A, 0x34, 0xFC, 0xD7, 0xC6, 0xE1, 0xEE, 0xE1, 0x1B, 0x20, 0x1E, 0x12, 0x18, 0x03, 0x08, 0x05
	.byte 0xF4, 0xFD, 0x1A, 0x1C, 0x4A, 0x3F, 0xFE, 0xD9, 0xBD, 0xB3, 0x96, 0xB6, 0x3B, 0x3B, 0x49, 0x41
	.byte 0x2C, 0x28, 0x47, 0x48, 0x52, 0x53, 0x62, 0x58, 0x59, 0x3C, 0xFA, 0xE1, 0xD1, 0xD0, 0xF3, 0xD9
	.byte 0xF7, 0x07, 0x02, 0x4F, 0xFF, 0xD9, 0xC4, 0xEF, 0x57, 0x51, 0x41, 0x32, 0x2D, 0x13, 0xEB, 0xBD
	.byte 0xA5, 0xA9, 0xD7, 0xCE, 0x07, 0x12, 0x27, 0x4A, 0x0A, 0xE1, 0xE4, 0x27, 0x18, 0x0D, 0x17, 0x05
	.byte 0x38, 0x2D, 0x1D, 0x0A, 0xFB, 0xF3, 0xF5, 0xDD, 0xEE, 0xF8, 0xF6, 0xF8, 0xE7, 0xB9, 0xB3, 0xEB
	.byte 0x02, 0x10, 0x32, 0x3F, 0x57, 0x57, 0x05, 0xE0, 0xD8, 0xCD, 0xBC, 0x00, 0x0C, 0x06, 0x36, 0x22
	.byte 0x05, 0xF4, 0x20, 0x34, 0x44, 0x40, 0x45, 0x3B, 0x41, 0x2D, 0x0E, 0xF0, 0xE1, 0xD8, 0xBF, 0xBD
	.byte 0x29, 0x31, 0x2F, 0x25, 0xF5, 0xCC, 0xB5, 0xAC, 0xFC, 0x39, 0x30, 0x2A, 0x2A, 0x21, 0xF5, 0xCD
	.byte 0xBC, 0xFA, 0x0D, 0x00, 0x08, 0xF8, 0x1A, 0x20, 0xE9, 0xCB, 0x00, 0x24, 0x38, 0x4C, 0x61, 0x69
	.byte 0x6F, 0x61, 0xFF, 0xE4, 0xD9, 0xD8, 0xD5, 0xCA, 0xD4, 0xD8, 0xEE, 0x23, 0x10, 0xEC, 0xED, 0xE4
	.byte 0xD6, 0x1D, 0x2F, 0x26, 0x4A, 0x2D, 0x03, 0xE3, 0xD0, 0xC2, 0xB0, 0x98, 0xDF, 0x38, 0x3B, 0x3B
	.byte 0x0A, 0x11, 0x2E, 0x48, 0x54, 0x65, 0x75, 0x7B, 0x7B, 0x6A, 0xF9, 0xDF, 0xCF, 0xCD, 0xBA, 0xBD
	.byte 0xE5, 0xE1, 0x46, 0x43, 0xF0, 0xC2, 0xAB, 0xEC, 0x52, 0x47, 0x56, 0x50, 0x55, 0x4A, 0xED, 0xC6
	.byte 0xB5, 0xD3, 0xE3, 0xDF, 0xEE, 0xE7, 0x2D, 0x39, 0xF4, 0xD6, 0xFB, 0x0C, 0x1C, 0x24, 0x34, 0x40
	.byte 0x51, 0x52, 0x0D, 0xF7, 0xE5, 0xE4, 0x16, 0x03, 0x02, 0x16, 0x1A, 0x06, 0xFA, 0xD4, 0xCD, 0x02
	.byte 0x0F, 0x0A, 0x30, 0x2B, 0x31, 0x22, 0xED, 0xC2, 0xAC, 0xA7, 0x9A, 0xE8, 0x08, 0x11, 0x3D, 0x44
	.byte 0x27, 0x18, 0x17, 0x13, 0x10, 0xFB, 0x0C, 0x0F, 0x1B, 0x0F, 0xF8, 0xD4, 0xCF, 0xC4, 0xEE, 0xE0
	.byte 0xE4, 0x34, 0x36, 0x3E, 0xF8, 0xD0, 0xB3, 0xBA, 0x42, 0x65, 0x53, 0x3F, 0x3D, 0x25, 0xF4, 0xCE
	.byte 0xB5, 0xC0, 0x21, 0x11, 0x0D, 0x19, 0x0F, 0x4D, 0x01, 0xD6, 0xE3, 0x48, 0x40, 0x2E, 0x31, 0x1F
	.byte 0x3D, 0x2C, 0xF8, 0xD1, 0xCA, 0xD2, 0xE2, 0x13, 0x14, 0xFF, 0xF0, 0x00, 0x10, 0xF4, 0xEE, 0xF7
	.byte 0xE6, 0xE5, 0xF6, 0xEA, 0x35, 0x2D, 0xF6, 0xD1, 0xB5, 0xAE, 0x97, 0x93, 0x08, 0x19, 0x31, 0x4D
	.byte 0x32, 0x41, 0x72, 0x75, 0x7C, 0x76, 0x73, 0x60, 0x5A, 0x3D, 0xF7, 0xD3, 0xC1, 0xC4, 0xB5, 0xC7
	.byte 0x08, 0x0B, 0x14, 0x1D, 0x00, 0xDD, 0xCF, 0xD5, 0x28, 0x2F, 0x23, 0x28, 0x37, 0x26, 0xE8, 0xB4
	.byte 0x99, 0x90, 0xE5, 0x03, 0x17, 0x22, 0x34, 0x4B, 0x08, 0xE3, 0xD5, 0x0C, 0x3F, 0x26, 0x23, 0x1D
	.byte 0x18, 0x08, 0x19, 0x0B, 0x01, 0xF1, 0xEE, 0xD5, 0xF9, 0x25, 0x28, 0x15, 0xEC, 0xC8, 0xED, 0xED
	.byte 0xFC, 0xFE, 0x0B, 0x1D, 0x33, 0x3F, 0xFE, 0xD4, 0xC2, 0xB5, 0xA7, 0x1E, 0x39, 0x33, 0x4A, 0x33
	.byte 0x32, 0x2E, 0x44, 0x40, 0x41, 0x34, 0x3F, 0x37, 0x41, 0x2B, 0x12, 0xF7, 0xE6, 0xDD, 0xC9, 0xBB
	.byte 0x03, 0x06, 0x08, 0x11, 0xF1, 0xC3, 0xAA, 0x9F, 0x01, 0x56, 0x5D, 0x4A, 0x4E, 0x43, 0xFF, 0xDA
	.byte 0xBE, 0xD0, 0x30, 0x27, 0x1D, 0x19, 0x11, 0xFF, 0x0D, 0x0D, 0x1D, 0x27, 0x32, 0x33, 0x45, 0x52
	.byte 0x61, 0x62, 0xFE, 0xDC, 0xD2, 0xE5, 0xF0, 0xE2, 0xF3, 0xFC, 0xF9, 0xFC, 0x19, 0xFB, 0xF5, 0xFA
	.byte 0xE7, 0xEB, 0x21, 0x0C, 0x1F, 0x1D, 0xF8, 0xDA, 0xCC, 0xC1, 0xBC, 0xA7, 0xDF, 0xFF, 0x0A, 0x4A
	.byte 0xFE, 0xF1, 0x3B, 0x5B, 0x69, 0x69, 0x65, 0x57, 0x54, 0x3E, 0xF9, 0xDF, 0xCE, 0xDD, 0xCA, 0xD1
	.byte 0x19, 0x11, 0x52, 0x51, 0xF3, 0xC8, 0xAD, 0x15, 0x3A, 0x1F, 0x2A, 0x19, 0x48, 0x41, 0xE8, 0xBE
	.byte 0xA5, 0xC8, 0x09, 0xFE, 0x15, 0x0A, 0x45, 0x4B, 0x02, 0xE8, 0x0B, 0x16, 0x19, 0x1C, 0x26, 0x22
	.byte 0x30, 0x21, 0x07, 0xE3, 0xE6, 0x11, 0x0F, 0xFF, 0x0E, 0x00, 0xFE, 0x00, 0xFA, 0xD7, 0xBD, 0x06
	.byte 0xFE, 0xF7, 0x13, 0x02, 0x55, 0x4A, 0xEA, 0xBD, 0xAC, 0xB9, 0xCE, 0x03, 0x0B, 0xF7, 0x02, 0x3E
	.byte 0xF0, 0xD2, 0x08, 0x02, 0x07, 0x00, 0x00, 0x00, 0x07, 0x00, 0x00, 0x00, 0xF0, 0xD4, 0x08, 0x02
	.byte 0x05, 0x00, 0x00, 0x00, 0x07, 0x00, 0x00, 0x00, 0x05, 0x00, 0x00, 0x00, 0x08, 0x00, 0x00, 0x00
	.byte 0x04, 0xC6, 0x08, 0x02, 0x06, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x08, 0x00, 0x00, 0x00
	.byte 0x05, 0x00, 0x00, 0x00, 0x44, 0xCC, 0x08, 0x02, 0x07, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x05, 0x00, 0x00, 0x00, 0x08, 0x00, 0x00, 0x00, 0x44, 0xC7, 0x08, 0x02, 0x08, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x14, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x44, 0xD0, 0x08, 0x02
	.byte 0x05, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0xFF, 0xFF, 0xFF, 0xFF, 0x00, 0x00, 0x00, 0x00
	.byte 0x03, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x74, 0x35, 0x08, 0x02
	.byte 0x00, 0x00, 0x00, 0x00, 0x54, 0x1A, 0x08, 0x02, 0x30, 0xE6, 0x08, 0x02, 0x00, 0x00, 0x00, 0x00
	.byte 0x10, 0x49, 0x08, 0x02, 0x48, 0xE6, 0x08, 0x02, 0x66, 0x26, 0x00, 0x00, 0x2C, 0x01, 0x00, 0x00
	.byte 0xFF, 0xFF, 0xFF, 0xFF, 0x00, 0x00, 0x00, 0x00, 0x03, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x74, 0x35, 0x08, 0x02, 0x00, 0x00, 0x00, 0x00, 0x54, 0x1A, 0x08, 0x02
	.byte 0x30, 0xE6, 0x08, 0x02, 0x00, 0x00, 0x00, 0x00, 0x10, 0x49, 0x08, 0x02, 0x70, 0xE6, 0x08, 0x02
	.byte 0x9A, 0x19, 0x00, 0x00, 0x6C, 0x01, 0x00, 0x00, 0xFF, 0xFF, 0xFF, 0xFF, 0x00, 0x00, 0x00, 0x00
	.byte 0x03, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x74, 0x35, 0x08, 0x02
	.byte 0x00, 0x00, 0x00, 0x00, 0x54, 0x1A, 0x08, 0x02, 0x30, 0xE6, 0x08, 0x02, 0x00, 0x00, 0x00, 0x00
	.byte 0x10, 0x49, 0x08, 0x02, 0x48, 0xE6, 0x08, 0x02, 0xCD, 0x0C, 0x00, 0x00, 0xEC, 0x01, 0x00, 0x00
	.byte 0xFF, 0xFF, 0xFF, 0xFF, 0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x54, 0x38, 0x08, 0x02, 0x00, 0x00, 0x00, 0x00, 0x54, 0x1A, 0x08, 0x02
	.byte 0x3C, 0xE6, 0x08, 0x02, 0x00, 0x00, 0x00, 0x00, 0x10, 0x49, 0x08, 0x02, 0x5C, 0xE6, 0x08, 0x02
	.byte 0x9A, 0x39, 0x00, 0x00, 0xDC, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x54, 0x38, 0x08, 0x02
	.byte 0x48, 0x1D, 0x08, 0x02, 0xCC, 0x1E, 0x08, 0x02, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x10, 0x49, 0x08, 0x02, 0x84, 0xE6, 0x08, 0x02, 0x00, 0x40, 0x00, 0x00, 0x4F, 0x00, 0x00, 0x00
	.byte 0xD8, 0xE7, 0x08, 0x02, 0xE4, 0x4A, 0x08, 0x02, 0x98, 0x38, 0x09, 0x02, 0x00, 0x00, 0x00, 0x00
	.byte 0x04, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0xB0, 0x31, 0x08, 0x02, 0xA0, 0x00, 0x00, 0x00, 0x28, 0x00, 0x00, 0x00
	.byte 0x0A, 0x00, 0x00, 0x00, 0x11, 0x00, 0x00, 0x00, 0x90, 0x00, 0x00, 0x00, 0x33, 0x73, 0xCD, 0x4C
	.byte 0x07, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x40, 0xE7, 0x08, 0x02, 0x98, 0xE6, 0x08, 0x02, 0xD0, 0xE6, 0x08, 0x02
	.byte 0x08, 0xE7, 0x08, 0x02, 0x78, 0xE7, 0x08, 0x02, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x05, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x08, 0x00, 0x00, 0x00
	.byte 0x02, 0x00, 0x00, 0x00, 0x03, 0x00, 0x00, 0x00, 0x03, 0x00, 0x00, 0x00, 0x04, 0x00, 0x00, 0x00
	.byte 0x04, 0x00, 0x00, 0x00, 0x05, 0x00, 0x00, 0x00, 0x05, 0x00, 0x00, 0x00, 0x06, 0x00, 0x00, 0x00
	.byte 0x07, 0x00, 0x00, 0x00, 0x08, 0x00, 0x00, 0x00, 0x05, 0x00, 0x00, 0x00, 0xB0, 0xD6, 0x08, 0x02
	.byte 0x07, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x0A, 0x00, 0x00, 0x00, 0x04, 0x00, 0x00, 0x00
	.byte 0x70, 0xD5, 0x08, 0x02, 0x05, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x34, 0x3A, 0x08, 0x02, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x10, 0x49, 0x08, 0x02, 0x78, 0xE8, 0x08, 0x02, 0xFF, 0xFF, 0x00, 0x00
	.byte 0x70, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x34, 0x3A, 0x08, 0x02, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0x24, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x34, 0x3A, 0x08, 0x02, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x10, 0x49, 0x08, 0x02, 0x64, 0xE8, 0x08, 0x02, 0xFF, 0xFF, 0x00, 0x00
	.byte 0xC0, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00
	.byte 0x01, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x34, 0x3A, 0x08, 0x02, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x10, 0x49, 0x08, 0x02
	.byte 0x64, 0xE8, 0x08, 0x02, 0xFF, 0xFF, 0x00, 0x00, 0x60, 0x01, 0x00, 0x00
	.global unk_0208E96C
unk_0208E96C:
	.byte 0x94, 0xE9, 0x08, 0x02
	.byte 0x44, 0x1F, 0x08, 0x02, 0x9C, 0x38, 0x09, 0x02, 0x01, 0x00, 0x00, 0x00, 0x04, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x34, 0x45, 0x08, 0x02, 0xB0, 0xE7, 0x08, 0x02, 0xA0, 0x00, 0x00, 0x00, 0x28, 0x00, 0x00, 0x00
	.byte 0x08, 0x00, 0x00, 0x00, 0x33, 0x73, 0xCD, 0x4C, 0x07, 0x00, 0x33, 0x73, 0x00, 0x00, 0x00, 0x00
	.byte 0xC4, 0xE8, 0x08, 0x02, 0x8C, 0xE8, 0x08, 0x02, 0xFC, 0xE8, 0x08, 0x02, 0x34, 0xE9, 0x08, 0x02
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x03, 0x00, 0x00, 0x00
	.byte 0x01, 0x00, 0x00, 0x00, 0x08, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x03, 0x00, 0x00, 0x00
	.byte 0x04, 0x00, 0x00, 0x00, 0x05, 0x00, 0x00, 0x00, 0x05, 0x00, 0x00, 0x00, 0x06, 0x00, 0x00, 0x00
	.byte 0x06, 0x00, 0x00, 0x00, 0x07, 0x00, 0x00, 0x00, 0x07, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00
	.byte 0x01, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00
	.byte 0x01, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x03, 0x00, 0x00, 0x00
	.byte 0x03, 0x00, 0x00, 0x00, 0x04, 0x00, 0x00, 0x00, 0x05, 0x00, 0x00, 0x00
	.global unk_0208EA2C
unk_0208EA2C:
	.byte 0x1A, 0x2D, 0x48, 0x43
	.global unk_0208EA30
unk_0208EA30:
	.byte 0xEA, 0x03, 0x78, 0x0A, 0xDE, 0x13, 0x68, 0x1B, 0x94, 0x23, 0x05, 0x2E, 0x14, 0x3C, 0xEC, 0x54
	.global unk_0208EA40
unk_0208EA40:
	.byte 0xD4, 0x49, 0x00, 0x00, 0x3E, 0x62, 0x00, 0x00, 0xBC, 0x82, 0x00, 0x00, 0xF8, 0xAD, 0x00, 0x00
	.byte 0x81, 0xE7, 0x00, 0x00, 0x11, 0x34, 0x01, 0x00, 0xF2, 0x99, 0x01, 0x00, 0x85, 0x21, 0x02, 0x00
	.byte 0xEE, 0xD5, 0x02, 0x00, 0x01, 0xC6, 0x03, 0x00, 0x79, 0x05, 0x05, 0x00, 0x99, 0xAE, 0x06, 0x00
	.byte 0x50, 0xE4, 0x08, 0x00, 0x1E, 0xD5, 0x0B, 0x00, 0xE2, 0xBE, 0x0F, 0x00, 0xF1, 0xF3, 0x14, 0x00
	.byte 0xDD, 0xE1, 0x1B, 0x00, 0x71, 0x1A, 0x25, 0x00, 0xB1, 0x5F, 0x31, 0x00, 0xCB, 0xB3, 0x41, 0x00
	.byte 0x4E, 0x6E, 0x57, 0x00, 0x68, 0x58, 0x74, 0x00, 0x79, 0xD2, 0x9A, 0x00, 0x13, 0x06, 0xCE, 0x00
	.byte 0x86, 0x28, 0x12, 0x01, 0x66, 0xD3, 0x6C, 0x01, 0x66, 0x7A, 0xE5, 0x01, 0x1A, 0x08, 0x86, 0x02
	.byte 0xA4, 0xAE, 0x5B, 0x03, 0x55, 0xFD, 0x77, 0x04, 0x26, 0x52, 0xF2, 0x05, 0x5F, 0xC5, 0xE9, 0x07
	.global unk_0208EAC0
unk_0208EAC0:
	.byte 0x7D, 0x00, 0xA4, 0x00, 0xD7, 0x00, 0x1A, 0x01, 0x72, 0x01, 0xE4, 0x01, 0x7B, 0x02, 0x40, 0x03
	.byte 0x42, 0x04, 0x94, 0x05, 0x4F, 0x07, 0x94, 0x09, 0x8D, 0x0C, 0x72, 0x10, 0x8C, 0x15, 0x3C, 0x1C
	.global unk_0208EAE0
unk_0208EAE0:
	.byte 0x02, 0x00, 0xF9, 0xFF, 0xF9, 0xFF, 0x12, 0x00, 0x0F, 0x00, 0xD9, 0xFF, 0xE7, 0xFF, 0x4B, 0x00
	.byte 0x23, 0x00, 0x7E, 0xFF, 0xD7, 0xFF, 0xD4, 0x00, 0x26, 0x00, 0xB9, 0xFE, 0xEF, 0xFF, 0xE3, 0x01
	.byte 0xE0, 0xFF, 0x4F, 0xFD, 0x7C, 0x00, 0xBC, 0x03, 0xE5, 0xFE, 0xE5, 0xFA, 0x1F, 0x02, 0xF4, 0x06
	.byte 0x33, 0xFC, 0x5D, 0xF6, 0xC5, 0x06, 0x31, 0x0E, 0xF5, 0xF2, 0xF7, 0xE6, 0x63, 0x23, 0xC9, 0x75
	.byte 0xC9, 0x75, 0x63, 0x23, 0xF7, 0xE6, 0xF5, 0xF2, 0x31, 0x0E, 0xC5, 0x06, 0x5D, 0xF6, 0x33, 0xFC
	.byte 0xF4, 0x06, 0x1F, 0x02, 0xE5, 0xFA, 0xE5, 0xFE, 0xBC, 0x03, 0x7C, 0x00, 0x4F, 0xFD, 0xE0, 0xFF
	.byte 0xE3, 0x01, 0xEF, 0xFF, 0xB9, 0xFE, 0x26, 0x00, 0xD4, 0x00, 0xD7, 0xFF, 0x7E, 0xFF, 0x23, 0x00
	.byte 0x4B, 0x00, 0xE7, 0xFF, 0xD9, 0xFF, 0x0F, 0x00, 0x12, 0x00, 0xF9, 0xFF, 0xF9, 0xFF, 0x02, 0x00

    .data
	.global DSE_DELAY_TABLE
DSE_DELAY_TABLE:
	.byte 0x60, 0x48, 0x40, 0x30, 0x24, 0x20, 0x18, 0x12, 0x10, 0x0C, 0x09, 0x08, 0x06, 0x04, 0x03, 0x02
	.byte 0x00, 0x00, 0x00, 0x00
	.global DSE_TRACK_EVENT_TABLE
DSE_TRACK_EVENT_TABLE:
	.word DseTrackEvent_WaitSame
	.word DseTrackEvent_WaitDelta
	.word DseTrackEvent_Wait8
	.word DseTrackEvent_Wait16
	.word DseTrackEvent_Wait24
	.word DseTrackEvent_WaitUntilFadeout
	.word DseTrackEvent_Invalid
	.word DseTrackEvent_Invalid
	.word DseTrackEvent_EndTrack
	.word DseTrackEvent_MainLoopBegin
	.word DseTrackEvent_Invalid
	.word DseTrackEvent_Invalid
	.word DseTrackEvent_SubLoopBegin
	.word DseTrackEvent_SubLoopEnd
	.word DseTrackEvent_SubLoopBreakOnLastIteration
	.word DseTrackEvent_Invalid
	.word DseTrackEvent_SetOctave
	.word DseTrackEvent_OctaveDelta
	.word DseTrackEvent_Invalid
	.word DseTrackEvent_Invalid
	.word DseTrackEvent_SetBpm
	.word DseTrackEvent_SetBpm2
	.word DseTrackEvent_Invalid
	.word DseTrackEvent_Invalid
	.word DseTrackEvent_SetBank
	.word DseTrackEvent_SetBankMsb
	.word DseTrackEvent_SetBankLsb
	.word DseTrackEvent_Dummy1Byte
	.word DseTrackEvent_SetProgram
	.word DseTrackEvent_Invalid
	.word DseTrackEvent_Invalid
	.word DseTrackEvent_SongVolumeFade
	.word DseTrackEvent_RestoreEnvelopeDefaults
	.word DseTrackEvent_SetEnvelopeAttackBegin
	.word DseTrackEvent_SetEnvelopeAttackTime
	.word DseTrackEvent_SetEnvelopeHoldTime
	.word DseTrackEvent_SetEnvelopeDecayTimeAndSustainLevel
	.word DseTrackEvent_SetEnvelopeSustainTime
	.word DseTrackEvent_SetEnvelopeReleaseTime
	.word DseTrackEvent_Invalid
	.word DseTrackEvent_Invalid
	.word DseTrackEvent_Invalid
	.word DseTrackEvent_Invalid
	.word DseTrackEvent_Invalid
	.word DseTrackEvent_SetNoteDurationMultiplier
	.word DseTrackEvent_Invalid
	.word DseTrackEvent_SetModulationDepth
	.word DseTrackEvent_SetHoldNotes
	.word DseTrackEvent_SetFlagBit1Unknown
	.word DseTrackEvent_Invalid
	.word DseTrackEvent_Invalid
	.word DseTrackEvent_SetOptionalVolume
	.word DseTrackEvent_Invalid
	.word DseTrackEvent_Invalid
	.word DseTrackEvent_Invalid
	.word DseTrackEvent_Invalid
	.word DseTrackEvent_Invalid
	.word DseTrackEvent_Invalid
	.word DseTrackEvent_Invalid
	.word DseTrackEvent_Dummy2Bytes
	.word DseTrackEvent_Invalid
	.word DseTrackEvent_Invalid
	.word DseTrackEvent_Invalid
	.word DseTrackEvent_Invalid
	.word DseTrackEvent_SetTuning
	.word DseTrackEvent_TuningDeltaCoarse
	.word DseTrackEvent_TuningDeltaFine
	.word DseTrackEvent_TuningDeltaFull
	.word DseTrackEvent_TuningFade
	.word DseTrackEvent_SetNoteRandomRegion
	.word DseTrackEvent_SetTuningJitterAmplitude
	.word DseTrackEvent_SetKeyBend
	.word DseTrackEvent_SetUnknown2
	.word DseTrackEvent_Invalid
	.word DseTrackEvent_Invalid
	.word DseTrackEvent_SetKeyBendRange
	.word DseTrackEvent_SetupKeyBendLfo
	.word DseTrackEvent_SetupKeyBendLfoEnvelope
	.word DseTrackEvent_Invalid
	.word DseTrackEvent_UseKeyBendLfo
	.word DseTrackEvent_SetVolume
	.word DseTrackEvent_VolumeDelta
	.word DseTrackEvent_VolumeFade
	.word DseTrackEvent_SetExpression
	.word DseTrackEvent_SetupVolumeLfo
	.word DseTrackEvent_SetupVolumeLfoEnvelope
	.word DseTrackEvent_Invalid
	.word DseTrackEvent_UseVolumeLfo
	.word DseTrackEvent_SetPan
	.word DseTrackEvent_PanDelta
	.word DseTrackEvent_PanFade
	.word DseTrackEvent_Invalid
	.word DseTrackEvent_SetupPanLfo
	.word DseTrackEvent_SetupPanLfoEnvelope
	.word DseTrackEvent_Invalid
	.word DseTrackEvent_UsePanLfo
	.word DseTrackEvent_SetupLfo
	.word DseTrackEvent_SetupLfoEnvelope
	.word DseTrackEvent_SetLfoParameter
	.word DseTrackEvent_UseLfo
	.word DseTrackEvent_Invalid
	.word DseTrackEvent_Invalid
	.word DseTrackEvent_Signal
	.word DseTrackEvent_Invalid
	.word DseTrackEvent_Dummy2Bytes2
	.word DseTrackEvent_Invalid
	.word DseTrackEvent_Invalid
	.word DseTrackEvent_Invalid
	.word DseTrackEvent_Invalid
	.word DseTrackEvent_Invalid
	.word DseTrackEvent_Invalid
	.word DseTrackEvent_Invalid
	.global DSE_MIDI_CC_TABLE
DSE_MIDI_CC_TABLE:
	.word DseMidiCC_BankSelectMSB
	.word DseMidiCC_ModulationDepth
	.word 0
	.word 0
	.word 0
	.word DseMidiCC_MaybePortamentoTime
	.word DseMidiCC_Stub6
	.word DseMidiCC_ChannelVolume
	.word 0
	.word 0
	.word DseMidiCC_Pan
	.word DseMidiCC_Expression
	.word 0
	.word 0
	.word 0
	.word 0
	.word 0
	.word 0
	.word 0
	.word 0
	.word DseMidiCC_BendRange
	.word 0
	.word 0
	.word 0
	.word 0
	.word DseMidiCC_Stub25
	.word DseMidiCC_Stub26
	.word DseMidiCC_Stub27
	.word 0
	.word 0
	.word 0
	.word 0
	.word DseMidiCC_BankSelectLSB
	.word 0
	.word 0
	.word 0
	.word 0
	.word 0
	.word 0
	.word 0
	.word 0
	.word 0
	.word 0
	.word 0
	.word 0
	.word 0
	.word 0
	.word 0
	.word 0
	.word 0
	.word 0
	.word 0
	.word 0
	.word 0
	.word 0
	.word 0
	.word 0
	.word 0
	.word 0
	.word 0
	.word 0
	.word 0
	.word 0
	.word 0
	.word DseMidiCC_Hold1
	.word DseMidiCC_Stub65
	.word 0
	.word 0
	.word 0
	.word 0
	.word 0
	.word 0
	.word DseMidiCC_ReleaseTime
	.word DseMidiCC_AttackTime
	.word 0
	.word DseMidiCC_DecayTime
	.word DseMidiCC_LfoRate
	.word DseMidiCC_LfoDepth
	.word DseMidiCC_MaybeLfoDelay
	.word DseMidiCC_UnkLfoType
	.word 0
	.word 0
	.word 0
	.word 0
	.word DseMidiCC_Stub84
	.word DseMidiCC_AttackTime
	.word DseMidiCC_DecayTime
	.word DseMidiCC_SustainLevel
	.word DseMidiCC_ReleaseTime
	.word DseMidiCC_UnkLfoParam
	.word DseMidiCC_UnkLfoWaveType
	.word DseMidiCC_Stub91
	.word 0
	.word DseMidiCC_Stub93
	.word 0
	.word 0
	.word 0
	.word 0
	.word DseMidiCC_MaybeNRPNLSB
	.word DseMidiCC_MaybeNRPNMSB
	.word DseMidiCC_MaybeRPN
	.word DseMidiCC_MaybeRPN
	.word DseMidiCC_EnvelopeReset
	.word DseMidiCC_AttackTime
	.word DseMidiCC_HoldTime
	.word DseMidiCC_DecayTime
	.word DseMidiCC_SustainLevel
	.word DseMidiCC_AutoReleaseTime
	.word DseMidiCC_ReleaseTime
	.word 0
	.word DseMidiCC_OptionalVolume
	.word DseMidiCC_Stub111
	.word 0
	.word 0
	.word 0
	.word 0
	.word 0
	.word 0
	.word 0
	.word 0
	.word DseMidiCC_UnkAllSoundsOffGlobal
	.word DseMidiCC_ResetAllControllers
	.word 0
	.word DseMidiCC_AllNotesOff
	.word 0
	.word 0
	.word DseMidiCC_MaybeMono
	.word DseMidiCC_MaybePoly
	.global DSE_MUSIC_DURATION_LOOKUP_TABLE_1
DSE_MUSIC_DURATION_LOOKUP_TABLE_1:
	.byte 0x00, 0x00, 0x01, 0x00, 0x02, 0x00, 0x03, 0x00, 0x04, 0x00, 0x05, 0x00
	.byte 0x06, 0x00, 0x07, 0x00, 0x08, 0x00, 0x09, 0x00, 0x0A, 0x00, 0x0B, 0x00, 0x0C, 0x00, 0x0D, 0x00
	.byte 0x0E, 0x00, 0x0F, 0x00, 0x10, 0x00, 0x11, 0x00, 0x12, 0x00, 0x13, 0x00, 0x14, 0x00, 0x15, 0x00
	.byte 0x16, 0x00, 0x17, 0x00, 0x18, 0x00, 0x19, 0x00, 0x1A, 0x00, 0x1B, 0x00, 0x1C, 0x00, 0x1D, 0x00
	.byte 0x1E, 0x00, 0x1F, 0x00, 0x20, 0x00, 0x23, 0x00, 0x28, 0x00, 0x2D, 0x00, 0x33, 0x00, 0x39, 0x00
	.byte 0x40, 0x00, 0x48, 0x00, 0x50, 0x00, 0x58, 0x00, 0x62, 0x00, 0x6D, 0x00, 0x78, 0x00, 0x83, 0x00
	.byte 0x90, 0x00, 0x9E, 0x00, 0xAC, 0x00, 0xBC, 0x00, 0xCC, 0x00, 0xDE, 0x00, 0xF0, 0x00, 0x04, 0x01
	.byte 0x19, 0x01, 0x2F, 0x01, 0x47, 0x01, 0x60, 0x01, 0x7A, 0x01, 0x96, 0x01, 0xB3, 0x01, 0xD2, 0x01
	.byte 0xF2, 0x01, 0x14, 0x02, 0x38, 0x02, 0x5E, 0x02, 0x85, 0x02, 0xAE, 0x02, 0xD9, 0x02, 0x07, 0x03
	.byte 0x36, 0x03, 0x67, 0x03, 0x9B, 0x03, 0xD1, 0x03, 0x06, 0x04, 0x42, 0x04, 0x7E, 0x04, 0xC4, 0x04
	.byte 0x00, 0x05, 0x46, 0x05, 0x8C, 0x05, 0x22, 0x06, 0x72, 0x06, 0xCC, 0x06, 0x1C, 0x07, 0x76, 0x07
	.byte 0xDA, 0x07, 0x34, 0x08, 0x98, 0x08, 0x06, 0x09, 0x6A, 0x09, 0xD8, 0x09, 0x50, 0x0A, 0xBE, 0x0A
	.byte 0x40, 0x0B, 0xB8, 0x0B, 0x3A, 0x0C, 0xBC, 0x0C, 0x48, 0x0D, 0xDE, 0x0D, 0x6A, 0x0E, 0x00, 0x0F
	.byte 0xA0, 0x0F, 0x40, 0x10, 0xEA, 0x10, 0x94, 0x11, 0x3E, 0x12, 0xF2, 0x12, 0xB0, 0x13, 0x6E, 0x14
	.byte 0x36, 0x15, 0xFE, 0x15, 0xD0, 0x16, 0xA2, 0x17, 0x7E, 0x18, 0x5A, 0x19, 0x40, 0x1A, 0x30, 0x1B
	.byte 0x20, 0x1C, 0x1A, 0x1D, 0x1E, 0x1E, 0x22, 0x1F, 0x30, 0x20, 0x48, 0x21, 0x60, 0x22, 0x82, 0x23
	.byte 0x10, 0x27, 0xFF, 0x7F
	.global DSE_MUSIC_DURATION_LOOKUP_TABLE_2
DSE_MUSIC_DURATION_LOOKUP_TABLE_2:
	.byte 0x00, 0x00, 0x00, 0x00, 0x04, 0x00, 0x00, 0x00, 0x07, 0x00, 0x00, 0x00
	.byte 0x0A, 0x00, 0x00, 0x00, 0x0F, 0x00, 0x00, 0x00, 0x15, 0x00, 0x00, 0x00, 0x1C, 0x00, 0x00, 0x00
	.byte 0x24, 0x00, 0x00, 0x00, 0x2E, 0x00, 0x00, 0x00, 0x3A, 0x00, 0x00, 0x00, 0x48, 0x00, 0x00, 0x00
	.byte 0x57, 0x00, 0x00, 0x00, 0x68, 0x00, 0x00, 0x00, 0x7B, 0x00, 0x00, 0x00, 0x91, 0x00, 0x00, 0x00
	.byte 0xA8, 0x00, 0x00, 0x00, 0x85, 0x01, 0x00, 0x00, 0xBE, 0x01, 0x00, 0x00, 0xFC, 0x01, 0x00, 0x00
	.byte 0x3F, 0x02, 0x00, 0x00, 0x88, 0x02, 0x00, 0x00, 0xD6, 0x02, 0x00, 0x00, 0x2A, 0x03, 0x00, 0x00
	.byte 0x85, 0x03, 0x00, 0x00, 0xE5, 0x03, 0x00, 0x00, 0x4C, 0x04, 0x00, 0x00, 0xBA, 0x04, 0x00, 0x00
	.byte 0x2E, 0x05, 0x00, 0x00, 0xA9, 0x05, 0x00, 0x00, 0x2C, 0x06, 0x00, 0x00, 0xB5, 0x06, 0x00, 0x00
	.byte 0x46, 0x07, 0x00, 0x00, 0xCF, 0x0B, 0x00, 0x00, 0xC0, 0x0C, 0x00, 0x00, 0xBD, 0x0D, 0x00, 0x00
	.byte 0xC6, 0x0E, 0x00, 0x00, 0xDC, 0x0F, 0x00, 0x00, 0xFF, 0x10, 0x00, 0x00, 0x2F, 0x12, 0x00, 0x00
	.byte 0x6C, 0x13, 0x00, 0x00, 0xB6, 0x14, 0x00, 0x00, 0x0F, 0x16, 0x00, 0x00, 0x75, 0x17, 0x00, 0x00
	.byte 0xEA, 0x18, 0x00, 0x00, 0x6D, 0x1A, 0x00, 0x00, 0xFF, 0x1B, 0x00, 0x00, 0xA0, 0x1D, 0x00, 0x00
	.byte 0x51, 0x1F, 0x00, 0x00, 0x16, 0x2C, 0x00, 0x00, 0x80, 0x2E, 0x00, 0x00, 0x00, 0x31, 0x00, 0x00
	.byte 0x95, 0x33, 0x00, 0x00, 0x41, 0x36, 0x00, 0x00, 0x02, 0x39, 0x00, 0x00, 0xDB, 0x3B, 0x00, 0x00
	.byte 0xCA, 0x3E, 0x00, 0x00, 0xD0, 0x41, 0x00, 0x00, 0xEE, 0x44, 0x00, 0x00, 0x24, 0x48, 0x00, 0x00
	.byte 0x73, 0x4B, 0x00, 0x00, 0xD9, 0x4E, 0x00, 0x00, 0x59, 0x52, 0x00, 0x00, 0xF2, 0x55, 0x00, 0x00
	.byte 0xA4, 0x59, 0x00, 0x00, 0xCC, 0x74, 0x00, 0x00, 0xAB, 0x79, 0x00, 0x00, 0xAC, 0x7E, 0x00, 0x00
	.byte 0xCE, 0x83, 0x00, 0x00, 0x11, 0x89, 0x00, 0x00, 0x77, 0x8E, 0x00, 0x00, 0xFF, 0x93, 0x00, 0x00
	.byte 0xAA, 0x99, 0x00, 0x00, 0x78, 0x9F, 0x00, 0x00, 0x6A, 0xA5, 0x00, 0x00, 0x80, 0xAB, 0x00, 0x00
	.byte 0xBB, 0xB1, 0x00, 0x00, 0x1A, 0xB8, 0x00, 0x00, 0x9E, 0xBE, 0x00, 0x00, 0x47, 0xC5, 0x00, 0x00
	.byte 0x17, 0xCC, 0x00, 0x00, 0x42, 0xFD, 0x00, 0x00, 0xCB, 0x05, 0x01, 0x00, 0x82, 0x0E, 0x01, 0x00
	.byte 0x68, 0x17, 0x01, 0x00, 0x7E, 0x20, 0x01, 0x00, 0xC4, 0x29, 0x01, 0x00, 0x3B, 0x33, 0x01, 0x00
	.byte 0xE2, 0x3C, 0x01, 0x00, 0xBB, 0x46, 0x01, 0x00, 0xC5, 0x50, 0x01, 0x00, 0x02, 0x5B, 0x01, 0x00
	.byte 0x72, 0x65, 0x01, 0x00, 0x15, 0x70, 0x01, 0x00, 0xEB, 0x7A, 0x01, 0x00, 0xF5, 0x85, 0x01, 0x00
	.byte 0x33, 0x91, 0x01, 0x00, 0x6D, 0xE1, 0x01, 0x00, 0x07, 0xEF, 0x01, 0x00, 0xE0, 0xFC, 0x01, 0x00
	.byte 0xF7, 0x0A, 0x02, 0x00, 0x4F, 0x19, 0x02, 0x00, 0xE6, 0x27, 0x02, 0x00, 0xBE, 0x36, 0x02, 0x00
	.byte 0xD7, 0x45, 0x02, 0x00, 0x32, 0x55, 0x02, 0x00, 0xCF, 0x64, 0x02, 0x00, 0xAE, 0x74, 0x02, 0x00
	.byte 0xD0, 0x84, 0x02, 0x00, 0x36, 0x95, 0x02, 0x00, 0xE0, 0xA5, 0x02, 0x00, 0xCE, 0xB6, 0x02, 0x00
	.byte 0x02, 0xC8, 0x02, 0x00, 0xB0, 0x41, 0x03, 0x00, 0xF8, 0x55, 0x03, 0x00, 0x90, 0x6A, 0x03, 0x00
	.byte 0x79, 0x7F, 0x03, 0x00, 0xB4, 0x94, 0x03, 0x00, 0x41, 0xAA, 0x03, 0x00, 0x21, 0xC0, 0x03, 0x00
	.byte 0x54, 0xD6, 0x03, 0x00, 0xDA, 0xEC, 0x03, 0x00, 0xB5, 0x03, 0x04, 0x00, 0xE5, 0x1A, 0x04, 0x00
	.byte 0x6A, 0x32, 0x04, 0x00, 0x45, 0x4A, 0x04, 0x00, 0x77, 0x62, 0x04, 0x00, 0x00, 0x7B, 0x04, 0x00
	.byte 0xFF, 0xFF, 0xFF, 0x7F
	.global DSE_LFO_WAVEFORM_CALLBACKS
DSE_LFO_WAVEFORM_CALLBACKS:
	.word DseLfoWave_HalfSquareFunc
	.word DseLfoWave_FullSquareFunc
	.word DseLfoWave_HalfTriangleFunc
	.word DseLfoWave_FullTriangleFunc
	.word DseLfoWave_SawFunc
	.word DseLfoWave_ReverseSawFunc
	.word DseLfoWave_HalfNoiseFunc
	.word DseLfoWave_FullNoiseFunc
	.word DseLfoWave_Invalid
	.word DseLfoWave_Invalid
	.word DseLfoWave_Invalid
	.word DseLfoWave_Invalid
	.word DseLfoWave_Invalid
	.word DseLfoWave_Invalid
	.word DseLfoWave_Invalid
	.word DseLfoWave_Invalid
	.global unk_02091E94
unk_02091E94:
	.byte 0x40, 0x40, 0x40, 0x40, 0x40, 0x40, 0x40, 0x40, 0x40, 0x40, 0x40, 0x40
	.byte 0x40, 0x40, 0x40, 0x40, 0x40, 0x40, 0x40, 0x40, 0x40, 0x40, 0x40, 0x40, 0x40, 0x40, 0x40, 0x40
	.byte 0x40, 0x40, 0x40, 0x40, 0x40, 0x40, 0x40, 0x40, 0x40, 0x40, 0x40, 0x40, 0x40, 0x40, 0x40, 0x40
	.byte 0x40, 0x40, 0x40, 0x40, 0x40, 0x40, 0x40, 0x40, 0x40, 0x40, 0x40, 0x40, 0x40, 0x40, 0x40, 0x40
	.byte 0x40, 0x40, 0x40, 0x40, 0x40, 0x40, 0x40, 0x40, 0x40, 0x40, 0x40, 0x40, 0x40, 0x40, 0x40, 0x40
	.byte 0x40, 0x40, 0x40, 0x40, 0x40, 0x40, 0x40, 0x40, 0x40, 0x40, 0x40, 0x40, 0x40, 0x40, 0x40, 0x40
	.byte 0x40, 0x40, 0x40, 0x40, 0x40, 0x40, 0x40, 0x40, 0x40, 0x40, 0x40, 0x40, 0x40, 0x40, 0x40, 0x40
	.byte 0x40, 0x40, 0x40, 0x40, 0x40, 0x40, 0x40, 0x40, 0x40, 0x40, 0x40, 0x40, 0x40, 0x40, 0x40, 0x40
	.byte 0x40, 0x40, 0x40, 0x40
	.global unk_02091F14
unk_02091F14:
	.byte 0x10, 0x11, 0x12, 0x12, 0x13, 0x14, 0x15, 0x15, 0x16, 0x17, 0x18, 0x18
	.byte 0x19, 0x1A, 0x1B, 0x1B, 0x1C, 0x1D, 0x1E, 0x1E, 0x1F, 0x20, 0x21, 0x21, 0x22, 0x23, 0x24, 0x24
	.byte 0x25, 0x26, 0x27, 0x27, 0x28, 0x29, 0x2A, 0x2A, 0x2B, 0x2C, 0x2D, 0x2D, 0x2E, 0x2F, 0x30, 0x30
	.byte 0x31, 0x32, 0x33, 0x33, 0x34, 0x35, 0x36, 0x36, 0x37, 0x38, 0x39, 0x39, 0x3A, 0x3B, 0x3C, 0x3C
	.byte 0x3D, 0x3E, 0x3F, 0x3F, 0x40, 0x41, 0x42, 0x42, 0x43, 0x44, 0x45, 0x45, 0x46, 0x47, 0x48, 0x48
	.byte 0x49, 0x4A, 0x4B, 0x4B, 0x4C, 0x4D, 0x4E, 0x4E, 0x4F, 0x50, 0x51, 0x51, 0x52, 0x53, 0x54, 0x54
	.byte 0x55, 0x56, 0x57, 0x57, 0x58, 0x59, 0x5A, 0x5A, 0x5B, 0x5C, 0x5D, 0x5D, 0x5E, 0x5F, 0x60, 0x60
	.byte 0x61, 0x62, 0x63, 0x63, 0x64, 0x65, 0x66, 0x66, 0x67, 0x68, 0x69, 0x69, 0x6A, 0x6B, 0x6C, 0x6C
	.byte 0x6D, 0x6E, 0x6F, 0x6F
	.global unk_02091F94
unk_02091F94:
	.byte 0x00, 0x01, 0x02, 0x03, 0x04, 0x05, 0x06, 0x07, 0x08, 0x09, 0x0A, 0x0B
	.byte 0x0C, 0x0D, 0x0E, 0x0F, 0x10, 0x11, 0x12, 0x13, 0x14, 0x15, 0x16, 0x17, 0x18, 0x19, 0x1A, 0x1B
	.byte 0x1C, 0x1D, 0x1E, 0x1F, 0x20, 0x21, 0x22, 0x23, 0x24, 0x25, 0x26, 0x27, 0x28, 0x29, 0x2A, 0x2B
	.byte 0x2C, 0x2D, 0x2E, 0x2F, 0x30, 0x31, 0x32, 0x33, 0x34, 0x35, 0x36, 0x37, 0x38, 0x39, 0x3A, 0x3B
	.byte 0x3C, 0x3D, 0x3E, 0x3F, 0x40, 0x41, 0x42, 0x43, 0x44, 0x45, 0x46, 0x47, 0x48, 0x49, 0x4A, 0x4B
	.byte 0x4C, 0x4D, 0x4E, 0x4F, 0x50, 0x51, 0x52, 0x53, 0x54, 0x55, 0x56, 0x57, 0x58, 0x59, 0x5A, 0x5B
	.byte 0x5C, 0x5D, 0x5E, 0x5F, 0x60, 0x61, 0x62, 0x63, 0x64, 0x65, 0x66, 0x67, 0x68, 0x69, 0x6A, 0x6B
	.byte 0x6C, 0x6D, 0x6E, 0x6F, 0x70, 0x71, 0x72, 0x73, 0x74, 0x75, 0x76, 0x77, 0x78, 0x79, 0x7A, 0x7B
	.byte 0x7C, 0x7D, 0x7E, 0x7F
	.global unk_02092014
unk_02092014:
	.byte 0x00, 0x01, 0x02, 0x03, 0x04, 0x05, 0x06, 0x07, 0x08, 0x09, 0x0A, 0x0B
	.byte 0x10, 0x11, 0x12, 0x13, 0x14, 0x15, 0x16, 0x17, 0x18, 0x19, 0x1A, 0x1B, 0x20, 0x21, 0x22, 0x23
	.byte 0x24, 0x25, 0x26, 0x27, 0x28, 0x29, 0x2A, 0x2B, 0x30, 0x31, 0x32, 0x33, 0x34, 0x35, 0x36, 0x37
	.byte 0x38, 0x39, 0x3A, 0x3B, 0x40, 0x41, 0x42, 0x43, 0x44, 0x45, 0x46, 0x47, 0x48, 0x49, 0x4A, 0x4B
	.byte 0x50, 0x51, 0x52, 0x53, 0x54, 0x55, 0x56, 0x57, 0x58, 0x59, 0x5A, 0x5B, 0x60, 0x61, 0x62, 0x63
	.byte 0x64, 0x65, 0x66, 0x67, 0x68, 0x69, 0x6A, 0x6B, 0x70, 0x71, 0x72, 0x73, 0x74, 0x75, 0x76, 0x77
	.byte 0x78, 0x79, 0x7A, 0x7B, 0x80, 0x81, 0x82, 0x83, 0x84, 0x85, 0x86, 0x87, 0x88, 0x89, 0x8A, 0x8B
	.byte 0x90, 0x91, 0x92, 0x93, 0x94, 0x95, 0x96, 0x97, 0x98, 0x00, 0x00, 0x00, 0x00, 0x01, 0x02, 0x03
	.byte 0x04, 0x05, 0x06, 0x07, 0x08, 0x00, 0x00, 0x00
	.global unk_02092098
unk_02092098:
	.byte 0xEC, 0x3F, 0xF0, 0x3F, 0xF3, 0x3F, 0xF7, 0x3F
	.byte 0xFB, 0x3F, 0xFE, 0x3F, 0x02, 0x40, 0x06, 0x40, 0x0A, 0x40, 0x0D, 0x40, 0x11, 0x40, 0x15, 0x40
	.byte 0x18, 0x40, 0x1C, 0x40, 0x20, 0x40, 0x23, 0x40, 0x27, 0x40, 0x2B, 0x40, 0x2F, 0x40, 0x32, 0x40
	.byte 0x36, 0x40, 0x3A, 0x40, 0x3D, 0x40, 0x41, 0x40, 0x45, 0x40, 0x49, 0x40, 0x4C, 0x40, 0x50, 0x40
	.byte 0x54, 0x40, 0x57, 0x40, 0x5B, 0x40, 0x5F, 0x40, 0x63, 0x40, 0x66, 0x40, 0x6A, 0x40, 0x6E, 0x40
	.byte 0x71, 0x40, 0x75, 0x40, 0x79, 0x40, 0x7D, 0x40, 0x80, 0x40, 0x84, 0x40, 0x88, 0x40, 0x8C, 0x40
	.byte 0x8F, 0x40, 0x93, 0x40, 0x97, 0x40, 0x9A, 0x40, 0x9E, 0x40, 0xA2, 0x40, 0xA6, 0x40, 0xA9, 0x40
	.byte 0xAD, 0x40, 0xB1, 0x40, 0xB5, 0x40, 0xB8, 0x40, 0xBC, 0x40, 0xC0, 0x40, 0xC4, 0x40, 0xC7, 0x40
	.byte 0xCB, 0x40, 0xCF, 0x40, 0xD3, 0x40, 0xD6, 0x40, 0xDA, 0x40, 0xDE, 0x40, 0xE2, 0x40, 0xE5, 0x40
	.byte 0xE9, 0x40, 0xED, 0x40, 0xF1, 0x40, 0xF4, 0x40, 0xF8, 0x40, 0xFC, 0x40, 0x00, 0x41, 0x03, 0x41
	.byte 0x07, 0x41, 0x0B, 0x41, 0x0F, 0x41, 0x12, 0x41, 0x16, 0x41, 0x1A, 0x41, 0x1E, 0x41, 0x21, 0x41
	.byte 0x25, 0x41, 0x29, 0x41, 0x2D, 0x41, 0x30, 0x41, 0x34, 0x41, 0x38, 0x41, 0x3C, 0x41, 0x3F, 0x41
	.byte 0x43, 0x41, 0x47, 0x41, 0x4B, 0x41, 0x4F, 0x41, 0x52, 0x41, 0x56, 0x41, 0x5A, 0x41, 0x5E, 0x41
	.byte 0x61, 0x41, 0x65, 0x41, 0x69, 0x41, 0x6D, 0x41, 0x71, 0x41, 0x74, 0x41, 0x78, 0x41, 0x7C, 0x41
	.byte 0x80, 0x41, 0x83, 0x41, 0x87, 0x41, 0x8B, 0x41, 0x8F, 0x41, 0x93, 0x41, 0x96, 0x41, 0x9A, 0x41
	.byte 0x9E, 0x41, 0xA2, 0x41, 0xA6, 0x41, 0xA9, 0x41, 0xAD, 0x41, 0xB1, 0x41, 0xB5, 0x41, 0xB9, 0x41
	.byte 0xBC, 0x41, 0xC0, 0x41, 0xC4, 0x41, 0xC8, 0x41, 0xCC, 0x41, 0xCF, 0x41, 0xD3, 0x41, 0xD7, 0x41
	.byte 0xDB, 0x41, 0xDF, 0x41, 0xE2, 0x41, 0xE6, 0x41, 0xEA, 0x41, 0xEE, 0x41, 0xF2, 0x41, 0xF5, 0x41
	.byte 0xF9, 0x41, 0xFD, 0x41, 0x01, 0x42, 0x05, 0x42, 0x08, 0x42, 0x0C, 0x42, 0x10, 0x42, 0x14, 0x42
	.byte 0x18, 0x42, 0x1C, 0x42, 0x1F, 0x42, 0x23, 0x42, 0x27, 0x42, 0x2B, 0x42, 0x2F, 0x42, 0x32, 0x42
	.byte 0x36, 0x42, 0x3A, 0x42, 0x3E, 0x42, 0x42, 0x42, 0x46, 0x42, 0x49, 0x42, 0x4D, 0x42, 0x51, 0x42
	.byte 0x55, 0x42, 0x59, 0x42, 0x5D, 0x42, 0x60, 0x42, 0x64, 0x42, 0x68, 0x42, 0x6C, 0x42, 0x70, 0x42
	.byte 0x74, 0x42, 0x77, 0x42, 0x7B, 0x42, 0x7F, 0x42, 0x83, 0x42, 0x87, 0x42, 0x8B, 0x42, 0x8E, 0x42
	.byte 0x92, 0x42, 0x96, 0x42, 0x9A, 0x42, 0x9E, 0x42, 0xA2, 0x42, 0xA6, 0x42, 0xA9, 0x42, 0xAD, 0x42
	.byte 0xB1, 0x42, 0xB5, 0x42, 0xB9, 0x42, 0xBD, 0x42, 0xC0, 0x42, 0xC4, 0x42, 0xC8, 0x42, 0xCC, 0x42
	.byte 0xD0, 0x42, 0xD4, 0x42, 0xD8, 0x42, 0xDC, 0x42, 0xDF, 0x42, 0xE3, 0x42, 0xE7, 0x42, 0xEB, 0x42
	.byte 0xEF, 0x42, 0xF3, 0x42, 0xF7, 0x42, 0xFA, 0x42, 0xFE, 0x42, 0x02, 0x43, 0x06, 0x43, 0x0A, 0x43
	.byte 0x0E, 0x43, 0x12, 0x43, 0x16, 0x43, 0x19, 0x43, 0x1D, 0x43, 0x21, 0x43, 0x25, 0x43, 0x29, 0x43
	.byte 0x2D, 0x43, 0x31, 0x43, 0x35, 0x43, 0x38, 0x43, 0x3C, 0x43, 0x40, 0x43, 0x44, 0x43, 0x48, 0x43
	.byte 0x4C, 0x43, 0x50, 0x43, 0x54, 0x43, 0x58, 0x43, 0x5B, 0x43, 0x5F, 0x43, 0x63, 0x43, 0x67, 0x43
	.byte 0x6B, 0x43, 0x6F, 0x43, 0x73, 0x43, 0x77, 0x43, 0x7B, 0x43, 0x7E, 0x43, 0x82, 0x43, 0x86, 0x43
	.byte 0x8A, 0x43, 0x8E, 0x43, 0x92, 0x43, 0x96, 0x43, 0x9A, 0x43, 0x9E, 0x43, 0xA2, 0x43, 0xA6, 0x43
	.byte 0xA9, 0x43, 0xAD, 0x43, 0xB1, 0x43, 0xB5, 0x43, 0xB9, 0x43, 0xBD, 0x43, 0xC1, 0x43, 0xC5, 0x43
	.byte 0xC9, 0x43, 0xCD, 0x43, 0xD1, 0x43, 0xD4, 0x43, 0xD8, 0x43, 0xDC, 0x43, 0xE0, 0x43, 0xE4, 0x43
	.byte 0xE8, 0x43, 0xEC, 0x43, 0xF0, 0x43, 0xF4, 0x43, 0xF8, 0x43, 0xFC, 0x43, 0x00, 0x44, 0x04, 0x44
	.byte 0x07, 0x44, 0x0B, 0x44, 0x0F, 0x44, 0x13, 0x44, 0x17, 0x44, 0x1B, 0x44, 0x1F, 0x44, 0x23, 0x44
	.byte 0x27, 0x44, 0x2B, 0x44, 0x2F, 0x44, 0x33, 0x44, 0x37, 0x44, 0x3B, 0x44, 0x3F, 0x44, 0x43, 0x44
	.byte 0x46, 0x44, 0x4A, 0x44, 0x4E, 0x44, 0x52, 0x44, 0x56, 0x44, 0x5A, 0x44, 0x5E, 0x44, 0x62, 0x44
	.byte 0x66, 0x44, 0x6A, 0x44, 0x6E, 0x44, 0x72, 0x44, 0x76, 0x44, 0x7A, 0x44, 0x7E, 0x44, 0x82, 0x44
	.byte 0x86, 0x44, 0x8A, 0x44, 0x8E, 0x44, 0x92, 0x44, 0x96, 0x44, 0x99, 0x44, 0x9D, 0x44, 0xA1, 0x44
	.byte 0xA5, 0x44, 0xA9, 0x44, 0xAD, 0x44, 0xB1, 0x44, 0xB5, 0x44, 0xB9, 0x44, 0xBD, 0x44, 0xC1, 0x44
	.byte 0xC5, 0x44, 0xC9, 0x44, 0xCD, 0x44, 0xD1, 0x44, 0xD5, 0x44, 0xD9, 0x44, 0xDD, 0x44, 0xE1, 0x44
	.byte 0xE5, 0x44, 0xE9, 0x44, 0xED, 0x44, 0xF1, 0x44, 0xF5, 0x44, 0xF9, 0x44, 0xFD, 0x44, 0x01, 0x45
	.byte 0x05, 0x45, 0x09, 0x45, 0x0D, 0x45, 0x11, 0x45, 0x15, 0x45, 0x19, 0x45, 0x1D, 0x45, 0x21, 0x45
	.byte 0x25, 0x45, 0x29, 0x45, 0x2D, 0x45, 0x31, 0x45, 0x35, 0x45, 0x39, 0x45, 0x3D, 0x45, 0x41, 0x45
	.byte 0x45, 0x45, 0x49, 0x45, 0x4D, 0x45, 0x51, 0x45, 0x55, 0x45, 0x59, 0x45, 0x5D, 0x45, 0x61, 0x45
	.byte 0x65, 0x45, 0x69, 0x45, 0x6D, 0x45, 0x71, 0x45, 0x75, 0x45, 0x79, 0x45, 0x7D, 0x45, 0x81, 0x45
	.byte 0x85, 0x45, 0x89, 0x45, 0x8D, 0x45, 0x91, 0x45, 0x95, 0x45, 0x99, 0x45, 0x9D, 0x45, 0xA1, 0x45
	.byte 0xA5, 0x45, 0xA9, 0x45, 0xAD, 0x45, 0xB1, 0x45, 0xB5, 0x45, 0xB9, 0x45, 0xBD, 0x45, 0xC1, 0x45
	.byte 0xC5, 0x45, 0xC9, 0x45, 0xCD, 0x45, 0xD1, 0x45, 0xD5, 0x45, 0xD9, 0x45, 0xDD, 0x45, 0xE1, 0x45
	.byte 0xE5, 0x45, 0xE9, 0x45, 0xEE, 0x45, 0xF2, 0x45, 0xF6, 0x45, 0xFA, 0x45, 0xFE, 0x45, 0x02, 0x46
	.byte 0x06, 0x46, 0x0A, 0x46, 0x0E, 0x46, 0x12, 0x46, 0x16, 0x46, 0x1A, 0x46, 0x1E, 0x46, 0x22, 0x46
	.byte 0x26, 0x46, 0x2A, 0x46, 0x2E, 0x46, 0x32, 0x46, 0x36, 0x46, 0x3A, 0x46, 0x3E, 0x46, 0x43, 0x46
	.byte 0x47, 0x46, 0x4B, 0x46, 0x4F, 0x46, 0x53, 0x46, 0x57, 0x46, 0x5B, 0x46, 0x5F, 0x46, 0x63, 0x46
	.byte 0x67, 0x46, 0x6B, 0x46, 0x6F, 0x46, 0x73, 0x46, 0x77, 0x46, 0x7B, 0x46, 0x80, 0x46, 0x84, 0x46
	.byte 0x88, 0x46, 0x8C, 0x46, 0x90, 0x46, 0x94, 0x46, 0x98, 0x46, 0x9C, 0x46, 0xA0, 0x46, 0xA4, 0x46
	.byte 0xA8, 0x46, 0xAC, 0x46, 0xB0, 0x46, 0xB5, 0x46, 0xB9, 0x46, 0xBD, 0x46, 0xC1, 0x46, 0xC5, 0x46
	.byte 0xC9, 0x46, 0xCD, 0x46, 0xD1, 0x46, 0xD5, 0x46, 0xD9, 0x46, 0xDD, 0x46, 0xE2, 0x46, 0xE6, 0x46
	.byte 0xEA, 0x46, 0xEE, 0x46, 0xF2, 0x46, 0xF6, 0x46, 0xFA, 0x46, 0xFE, 0x46, 0x02, 0x47, 0x06, 0x47
	.byte 0x0B, 0x47, 0x0F, 0x47, 0x13, 0x47, 0x17, 0x47, 0x1B, 0x47, 0x1F, 0x47, 0x23, 0x47, 0x27, 0x47
	.byte 0x2B, 0x47, 0x2F, 0x47, 0x34, 0x47, 0x38, 0x47, 0x3C, 0x47, 0x40, 0x47, 0x44, 0x47, 0x48, 0x47
	.byte 0x4C, 0x47, 0x50, 0x47, 0x55, 0x47, 0x59, 0x47, 0x5D, 0x47, 0x61, 0x47, 0x65, 0x47, 0x69, 0x47
	.byte 0x6D, 0x47, 0x71, 0x47, 0x76, 0x47, 0x7A, 0x47, 0x7E, 0x47, 0x82, 0x47, 0x86, 0x47, 0x8A, 0x47
	.byte 0x8E, 0x47, 0x92, 0x47, 0x97, 0x47, 0x9B, 0x47, 0x9F, 0x47, 0xA3, 0x47, 0xA7, 0x47, 0xAB, 0x47
	.byte 0xAF, 0x47, 0xB4, 0x47, 0xB8, 0x47, 0xBC, 0x47, 0xC0, 0x47, 0xC4, 0x47, 0xC8, 0x47, 0xCC, 0x47
	.byte 0xD1, 0x47, 0xD5, 0x47, 0xD9, 0x47, 0xDD, 0x47, 0xE1, 0x47, 0xE5, 0x47, 0xE9, 0x47, 0xEE, 0x47
	.byte 0xF2, 0x47, 0xF6, 0x47, 0xFA, 0x47, 0xFE, 0x47, 0x02, 0x48, 0x07, 0x48, 0x0B, 0x48, 0x0F, 0x48
	.byte 0x13, 0x48, 0x17, 0x48, 0x1B, 0x48, 0x20, 0x48, 0x24, 0x48, 0x28, 0x48, 0x2C, 0x48, 0x30, 0x48
	.byte 0x34, 0x48, 0x39, 0x48, 0x3D, 0x48, 0x41, 0x48, 0x45, 0x48, 0x49, 0x48, 0x4D, 0x48, 0x52, 0x48
	.byte 0x56, 0x48, 0x5A, 0x48, 0x5E, 0x48, 0x62, 0x48, 0x66, 0x48, 0x6B, 0x48, 0x6F, 0x48, 0x73, 0x48
	.byte 0x77, 0x48, 0x7B, 0x48, 0x80, 0x48, 0x84, 0x48, 0x88, 0x48, 0x8C, 0x48, 0x90, 0x48, 0x95, 0x48
	.byte 0x99, 0x48, 0x9D, 0x48, 0xA1, 0x48, 0xA5, 0x48, 0xAA, 0x48, 0xAE, 0x48, 0xB2, 0x48, 0xB6, 0x48
	.byte 0xBA, 0x48, 0xBF, 0x48, 0xC3, 0x48, 0xC7, 0x48, 0xCB, 0x48, 0xCF, 0x48, 0xD4, 0x48, 0xD8, 0x48
	.byte 0xDC, 0x48, 0xE0, 0x48, 0xE4, 0x48, 0xE9, 0x48, 0xED, 0x48, 0xF1, 0x48, 0xF5, 0x48, 0xF9, 0x48
	.byte 0xFE, 0x48, 0x02, 0x49, 0x06, 0x49, 0x0A, 0x49, 0x0F, 0x49, 0x13, 0x49, 0x17, 0x49, 0x1B, 0x49
	.byte 0x1F, 0x49, 0x24, 0x49, 0x28, 0x49, 0x2C, 0x49, 0x30, 0x49, 0x35, 0x49, 0x39, 0x49, 0x3D, 0x49
	.byte 0x41, 0x49, 0x45, 0x49, 0x4A, 0x49, 0x4E, 0x49, 0x52, 0x49, 0x56, 0x49, 0x5B, 0x49, 0x5F, 0x49
	.byte 0x63, 0x49, 0x67, 0x49, 0x6C, 0x49, 0x70, 0x49, 0x74, 0x49, 0x78, 0x49, 0x7D, 0x49, 0x81, 0x49
	.byte 0x85, 0x49, 0x89, 0x49, 0x8E, 0x49, 0x92, 0x49, 0x96, 0x49, 0x9A, 0x49, 0x9F, 0x49, 0xA3, 0x49
	.byte 0xA7, 0x49, 0xAB, 0x49, 0xB0, 0x49, 0xB4, 0x49, 0xB8, 0x49, 0xBC, 0x49, 0xC1, 0x49, 0xC5, 0x49
	.byte 0xC9, 0x49, 0xCD, 0x49, 0xD2, 0x49, 0xD6, 0x49, 0xDA, 0x49, 0xDE, 0x49, 0xE3, 0x49, 0xE7, 0x49
	.byte 0xEB, 0x49, 0xF0, 0x49, 0xF4, 0x49, 0xF8, 0x49, 0xFC, 0x49, 0x01, 0x4A, 0x05, 0x4A, 0x09, 0x4A
	.byte 0x0D, 0x4A, 0x12, 0x4A, 0x16, 0x4A, 0x1A, 0x4A, 0x1F, 0x4A, 0x23, 0x4A, 0x27, 0x4A, 0x2B, 0x4A
	.byte 0x30, 0x4A, 0x34, 0x4A, 0x38, 0x4A, 0x3D, 0x4A, 0x41, 0x4A, 0x45, 0x4A, 0x49, 0x4A, 0x4E, 0x4A
	.byte 0x52, 0x4A, 0x56, 0x4A, 0x5B, 0x4A, 0x5F, 0x4A, 0x63, 0x4A, 0x67, 0x4A, 0x6C, 0x4A, 0x70, 0x4A
	.byte 0x74, 0x4A, 0x79, 0x4A, 0x7D, 0x4A, 0x81, 0x4A, 0x86, 0x4A, 0x8A, 0x4A, 0x8E, 0x4A, 0x93, 0x4A
	.byte 0x97, 0x4A, 0x9B, 0x4A, 0x9F, 0x4A, 0xA4, 0x4A, 0xA8, 0x4A, 0xAC, 0x4A, 0xB1, 0x4A, 0xB5, 0x4A
	.byte 0xB9, 0x4A, 0xBE, 0x4A, 0xC2, 0x4A, 0xC6, 0x4A, 0xCB, 0x4A, 0xCF, 0x4A, 0xD3, 0x4A, 0xD8, 0x4A
	.byte 0xDC, 0x4A, 0xE0, 0x4A, 0xE5, 0x4A, 0xE9, 0x4A, 0xED, 0x4A, 0xF2, 0x4A, 0xF6, 0x4A, 0xFA, 0x4A
	.byte 0xFF, 0x4A, 0x03, 0x4B, 0x07, 0x4B, 0x0C, 0x4B, 0x10, 0x4B, 0x14, 0x4B, 0x19, 0x4B, 0x1D, 0x4B
	.byte 0x21, 0x4B, 0x26, 0x4B, 0x2A, 0x4B, 0x2E, 0x4B, 0x33, 0x4B, 0x37, 0x4B, 0x3B, 0x4B, 0x40, 0x4B
	.byte 0x44, 0x4B, 0x48, 0x4B, 0x4D, 0x4B, 0x51, 0x4B, 0x55, 0x4B, 0x5A, 0x4B, 0x5E, 0x4B, 0x62, 0x4B
	.byte 0x67, 0x4B, 0x6B, 0x4B, 0x6F, 0x4B, 0x74, 0x4B, 0x78, 0x4B, 0x7D, 0x4B, 0x81, 0x4B, 0x85, 0x4B
	.byte 0x8A, 0x4B, 0x8E, 0x4B, 0x92, 0x4B, 0x97, 0x4B, 0x9B, 0x4B, 0x9F, 0x4B, 0xA4, 0x4B, 0xA8, 0x4B
	.byte 0xAD, 0x4B, 0xB1, 0x4B, 0xB5, 0x4B, 0xBA, 0x4B, 0xBE, 0x4B, 0xC2, 0x4B, 0xC7, 0x4B, 0xCB, 0x4B
	.byte 0xD0, 0x4B, 0xD4, 0x4B, 0xD8, 0x4B, 0xDD, 0x4B, 0xE1, 0x4B, 0xE5, 0x4B, 0xEA, 0x4B, 0xEE, 0x4B
	.byte 0xF3, 0x4B, 0xF7, 0x4B, 0xFB, 0x4B, 0x00, 0x4C, 0x04, 0x4C, 0x09, 0x4C, 0x0D, 0x4C, 0x11, 0x4C
	.byte 0x16, 0x4C, 0x1A, 0x4C, 0x1F, 0x4C, 0x23, 0x4C, 0x27, 0x4C, 0x2C, 0x4C, 0x30, 0x4C, 0x35, 0x4C
	.byte 0x39, 0x4C, 0x3D, 0x4C, 0x42, 0x4C, 0x46, 0x4C, 0x4B, 0x4C, 0x4F, 0x4C, 0x53, 0x4C, 0x58, 0x4C
	.byte 0x5C, 0x4C, 0x61, 0x4C, 0x65, 0x4C, 0x69, 0x4C, 0x6E, 0x4C, 0x72, 0x4C, 0x77, 0x4C, 0x7B, 0x4C
	.byte 0x80, 0x4C, 0x84, 0x4C, 0x88, 0x4C, 0x8D, 0x4C, 0x91, 0x4C, 0x96, 0x4C, 0x9A, 0x4C, 0x9E, 0x4C
	.byte 0xA3, 0x4C, 0xA7, 0x4C, 0xAC, 0x4C, 0xB0, 0x4C, 0xB5, 0x4C, 0xB9, 0x4C, 0xBD, 0x4C, 0xC2, 0x4C
	.byte 0xC6, 0x4C, 0xCB, 0x4C, 0xCF, 0x4C, 0xD4, 0x4C, 0xD8, 0x4C, 0xDD, 0x4C, 0xE1, 0x4C, 0xE5, 0x4C
	.byte 0xEA, 0x4C, 0xEE, 0x4C, 0xF3, 0x4C, 0xF7, 0x4C, 0xFC, 0x4C, 0x00, 0x4D, 0x05, 0x4D, 0x09, 0x4D
	.byte 0x0D, 0x4D, 0x12, 0x4D, 0x16, 0x4D, 0x1B, 0x4D, 0x1F, 0x4D, 0x24, 0x4D, 0x28, 0x4D, 0x2D, 0x4D
	.byte 0x31, 0x4D, 0x36, 0x4D, 0x3A, 0x4D, 0x3E, 0x4D, 0x43, 0x4D, 0x47, 0x4D, 0x4C, 0x4D, 0x50, 0x4D
	.byte 0x55, 0x4D, 0x59, 0x4D, 0x5E, 0x4D, 0x62, 0x4D, 0x67, 0x4D, 0x6B, 0x4D, 0x70, 0x4D, 0x74, 0x4D
	.byte 0x79, 0x4D, 0x7D, 0x4D, 0x81, 0x4D, 0x86, 0x4D, 0x8A, 0x4D, 0x8F, 0x4D, 0x93, 0x4D, 0x98, 0x4D
	.byte 0x9C, 0x4D, 0xA1, 0x4D, 0xA5, 0x4D, 0xAA, 0x4D, 0xAE, 0x4D, 0xB3, 0x4D, 0xB7, 0x4D, 0xBC, 0x4D
	.byte 0xC0, 0x4D, 0xC5, 0x4D, 0xC9, 0x4D, 0xCE, 0x4D, 0xD2, 0x4D, 0xD7, 0x4D, 0xDB, 0x4D, 0xE0, 0x4D
	.byte 0xE4, 0x4D, 0xE9, 0x4D, 0xED, 0x4D, 0xF2, 0x4D, 0xF6, 0x4D, 0xFB, 0x4D, 0xFF, 0x4D, 0x04, 0x4E
	.byte 0x08, 0x4E, 0x0D, 0x4E, 0x11, 0x4E, 0x16, 0x4E, 0x1A, 0x4E, 0x1F, 0x4E, 0x23, 0x4E, 0x28, 0x4E
	.byte 0x2C, 0x4E, 0x31, 0x4E, 0x35, 0x4E, 0x3A, 0x4E, 0x3E, 0x4E, 0x43, 0x4E, 0x47, 0x4E, 0x4C, 0x4E
	.byte 0x50, 0x4E, 0x55, 0x4E, 0x5A, 0x4E, 0x5E, 0x4E, 0x63, 0x4E, 0x67, 0x4E, 0x6C, 0x4E, 0x70, 0x4E
	.byte 0x75, 0x4E, 0x79, 0x4E, 0x7E, 0x4E, 0x82, 0x4E, 0x87, 0x4E, 0x8B, 0x4E, 0x90, 0x4E, 0x94, 0x4E
	.byte 0x99, 0x4E, 0x9E, 0x4E, 0xA2, 0x4E, 0xA7, 0x4E, 0xAB, 0x4E, 0xB0, 0x4E, 0xB4, 0x4E, 0xB9, 0x4E
	.byte 0xBD, 0x4E, 0xC2, 0x4E, 0xC6, 0x4E, 0xCB, 0x4E, 0xD0, 0x4E, 0xD4, 0x4E, 0xD9, 0x4E, 0xDD, 0x4E
	.byte 0xE2, 0x4E, 0xE6, 0x4E, 0xEB, 0x4E, 0xEF, 0x4E, 0xF4, 0x4E, 0xF9, 0x4E, 0xFD, 0x4E, 0x02, 0x4F
	.byte 0x06, 0x4F, 0x0B, 0x4F, 0x0F, 0x4F, 0x14, 0x4F, 0x19, 0x4F, 0x1D, 0x4F, 0x22, 0x4F, 0x26, 0x4F
	.byte 0x2B, 0x4F, 0x2F, 0x4F, 0x34, 0x4F, 0x39, 0x4F, 0x3D, 0x4F, 0x42, 0x4F, 0x46, 0x4F, 0x4B, 0x4F
	.byte 0x4F, 0x4F, 0x54, 0x4F, 0x59, 0x4F, 0x5D, 0x4F, 0x62, 0x4F, 0x66, 0x4F, 0x6B, 0x4F, 0x70, 0x4F
	.byte 0x74, 0x4F, 0x79, 0x4F, 0x7D, 0x4F, 0x82, 0x4F, 0x86, 0x4F, 0x8B, 0x4F, 0x90, 0x4F, 0x94, 0x4F
	.byte 0x99, 0x4F, 0x9D, 0x4F, 0xA2, 0x4F, 0xA7, 0x4F, 0xAB, 0x4F, 0xB0, 0x4F, 0xB4, 0x4F, 0xB9, 0x4F
	.byte 0xBE, 0x4F, 0xC2, 0x4F, 0xC7, 0x4F, 0xCB, 0x4F, 0xD0, 0x4F, 0xD5, 0x4F, 0xD9, 0x4F, 0xDE, 0x4F
	.byte 0xE3, 0x4F, 0xE7, 0x4F, 0xEC, 0x4F, 0xF0, 0x4F, 0xF5, 0x4F, 0xFA, 0x4F, 0xFE, 0x4F, 0x03, 0x50
	.byte 0x08, 0x50, 0x0C, 0x50, 0x11, 0x50, 0x15, 0x50, 0x1A, 0x50, 0x1F, 0x50, 0x23, 0x50, 0x28, 0x50
	.byte 0x2D, 0x50, 0x31, 0x50, 0x36, 0x50, 0x3A, 0x50, 0x3F, 0x50, 0x44, 0x50, 0x48, 0x50, 0x4D, 0x50
	.byte 0x52, 0x50, 0x56, 0x50, 0x5B, 0x50, 0x60, 0x50, 0x64, 0x50, 0x69, 0x50, 0x6D, 0x50, 0x72, 0x50
	.byte 0x77, 0x50, 0x7B, 0x50, 0x80, 0x50, 0x85, 0x50, 0x89, 0x50, 0x8E, 0x50, 0x93, 0x50, 0x97, 0x50
	.byte 0x9C, 0x50, 0xA1, 0x50, 0xA5, 0x50, 0xAA, 0x50, 0xAF, 0x50, 0xB3, 0x50, 0xB8, 0x50, 0xBD, 0x50
	.byte 0xC1, 0x50, 0xC6, 0x50, 0xCB, 0x50, 0xCF, 0x50, 0xD4, 0x50, 0xD9, 0x50, 0xDD, 0x50, 0xE2, 0x50
	.byte 0xE7, 0x50, 0xEB, 0x50, 0xF0, 0x50, 0xF5, 0x50, 0xF9, 0x50, 0xFE, 0x50, 0x03, 0x51, 0x07, 0x51
	.byte 0x0C, 0x51, 0x11, 0x51, 0x15, 0x51, 0x1A, 0x51, 0x1F, 0x51, 0x23, 0x51, 0x28, 0x51, 0x2D, 0x51
	.byte 0x32, 0x51, 0x36, 0x51, 0x3B, 0x51, 0x40, 0x51, 0x44, 0x51, 0x49, 0x51, 0x4E, 0x51, 0x52, 0x51
	.byte 0x57, 0x51, 0x5C, 0x51, 0x60, 0x51, 0x65, 0x51, 0x6A, 0x51, 0x6F, 0x51, 0x73, 0x51, 0x78, 0x51
	.byte 0x7D, 0x51, 0x81, 0x51, 0x86, 0x51, 0x8B, 0x51, 0x90, 0x51, 0x94, 0x51, 0x99, 0x51, 0x9E, 0x51
	.byte 0xA2, 0x51, 0xA7, 0x51, 0xAC, 0x51, 0xB1, 0x51, 0xB5, 0x51, 0xBA, 0x51, 0xBF, 0x51, 0xC3, 0x51
	.byte 0xC8, 0x51, 0xCD, 0x51, 0xD2, 0x51, 0xD6, 0x51, 0xDB, 0x51, 0xE0, 0x51, 0xE4, 0x51, 0xE9, 0x51
	.byte 0xEE, 0x51, 0xF3, 0x51, 0xF7, 0x51, 0xFC, 0x51, 0x01, 0x52, 0x06, 0x52, 0x0A, 0x52, 0x0F, 0x52
	.byte 0x14, 0x52, 0x19, 0x52, 0x1D, 0x52, 0x22, 0x52, 0x27, 0x52, 0x2C, 0x52, 0x30, 0x52, 0x35, 0x52
	.byte 0x3A, 0x52, 0x3F, 0x52, 0x43, 0x52, 0x48, 0x52, 0x4D, 0x52, 0x52, 0x52, 0x56, 0x52, 0x5B, 0x52
	.byte 0x60, 0x52, 0x65, 0x52, 0x69, 0x52, 0x6E, 0x52, 0x73, 0x52, 0x78, 0x52, 0x7C, 0x52, 0x81, 0x52
	.byte 0x86, 0x52, 0x8B, 0x52, 0x8F, 0x52, 0x94, 0x52, 0x99, 0x52, 0x9E, 0x52, 0xA3, 0x52, 0xA7, 0x52
	.byte 0xAC, 0x52, 0xB1, 0x52, 0xB6, 0x52, 0xBA, 0x52, 0xBF, 0x52, 0xC4, 0x52, 0xC9, 0x52, 0xCE, 0x52
	.byte 0xD2, 0x52, 0xD7, 0x52, 0xDC, 0x52, 0xE1, 0x52, 0xE5, 0x52, 0xEA, 0x52, 0xEF, 0x52, 0xF4, 0x52
	.byte 0xF9, 0x52, 0xFD, 0x52, 0x02, 0x53, 0x07, 0x53, 0x0C, 0x53, 0x11, 0x53, 0x15, 0x53, 0x1A, 0x53
	.byte 0x1F, 0x53, 0x24, 0x53, 0x29, 0x53, 0x2D, 0x53, 0x32, 0x53, 0x37, 0x53, 0x3C, 0x53, 0x41, 0x53
	.byte 0x45, 0x53, 0x4A, 0x53, 0x4F, 0x53, 0x54, 0x53, 0x59, 0x53, 0x5E, 0x53, 0x62, 0x53, 0x67, 0x53
	.byte 0x6C, 0x53, 0x71, 0x53, 0x76, 0x53, 0x7A, 0x53, 0x7F, 0x53, 0x84, 0x53, 0x89, 0x53, 0x8E, 0x53
	.byte 0x93, 0x53, 0x97, 0x53, 0x9C, 0x53, 0xA1, 0x53, 0xA6, 0x53, 0xAB, 0x53, 0xB0, 0x53, 0xB4, 0x53
	.byte 0xB9, 0x53, 0xBE, 0x53, 0xC3, 0x53, 0xC8, 0x53, 0xCD, 0x53, 0xD1, 0x53, 0xD6, 0x53, 0xDB, 0x53
	.byte 0xE0, 0x53, 0xE5, 0x53, 0xEA, 0x53, 0xEE, 0x53, 0xF3, 0x53, 0xF8, 0x53, 0xFD, 0x53, 0x02, 0x54
	.byte 0x07, 0x54, 0x0C, 0x54, 0x10, 0x54, 0x15, 0x54, 0x1A, 0x54, 0x1F, 0x54, 0x24, 0x54, 0x29, 0x54
	.byte 0x2E, 0x54, 0x32, 0x54, 0x37, 0x54, 0x3C, 0x54, 0x41, 0x54, 0x46, 0x54, 0x4B, 0x54, 0x50, 0x54
	.byte 0x55, 0x54, 0x59, 0x54, 0x5E, 0x54, 0x63, 0x54, 0x68, 0x54, 0x6D, 0x54, 0x72, 0x54, 0x77, 0x54
	.byte 0x7C, 0x54, 0x80, 0x54, 0x85, 0x54, 0x8A, 0x54, 0x8F, 0x54, 0x94, 0x54, 0x99, 0x54, 0x9E, 0x54
	.byte 0xA3, 0x54, 0xA7, 0x54, 0xAC, 0x54, 0xB1, 0x54, 0xB6, 0x54, 0xBB, 0x54, 0xC0, 0x54, 0xC5, 0x54
	.byte 0xCA, 0x54, 0xCF, 0x54, 0xD4, 0x54, 0xD8, 0x54, 0xDD, 0x54, 0xE2, 0x54, 0xE7, 0x54, 0xEC, 0x54
	.byte 0xF1, 0x54, 0xF6, 0x54, 0xFB, 0x54, 0x00, 0x55, 0x05, 0x55, 0x0A, 0x55, 0x0E, 0x55, 0x13, 0x55
	.byte 0x18, 0x55, 0x1D, 0x55, 0x22, 0x55, 0x27, 0x55, 0x2C, 0x55, 0x31, 0x55, 0x36, 0x55, 0x3B, 0x55
	.byte 0x40, 0x55, 0x45, 0x55, 0x49, 0x55, 0x4E, 0x55, 0x53, 0x55, 0x58, 0x55, 0x5D, 0x55, 0x62, 0x55
	.byte 0x67, 0x55, 0x6C, 0x55, 0x71, 0x55, 0x76, 0x55, 0x7B, 0x55, 0x80, 0x55, 0x85, 0x55, 0x8A, 0x55
	.byte 0x8F, 0x55, 0x93, 0x55, 0x98, 0x55, 0x9D, 0x55, 0xA2, 0x55, 0xA7, 0x55, 0xAC, 0x55, 0xB1, 0x55
	.byte 0xB6, 0x55, 0xBB, 0x55, 0xC0, 0x55, 0xC5, 0x55, 0xCA, 0x55, 0xCF, 0x55, 0xD4, 0x55, 0xD9, 0x55
	.byte 0xDE, 0x55, 0xE3, 0x55, 0xE8, 0x55, 0xED, 0x55, 0xF2, 0x55, 0xF7, 0x55, 0xFC, 0x55, 0x01, 0x56
	.byte 0x05, 0x56, 0x0A, 0x56, 0x0F, 0x56, 0x14, 0x56, 0x19, 0x56, 0x1E, 0x56, 0x23, 0x56, 0x28, 0x56
	.byte 0x2D, 0x56, 0x32, 0x56, 0x37, 0x56, 0x3C, 0x56, 0x41, 0x56, 0x46, 0x56, 0x4B, 0x56, 0x50, 0x56
	.byte 0x55, 0x56, 0x5A, 0x56, 0x5F, 0x56, 0x64, 0x56, 0x69, 0x56, 0x6E, 0x56, 0x73, 0x56, 0x78, 0x56
	.byte 0x7D, 0x56, 0x82, 0x56, 0x87, 0x56, 0x8C, 0x56, 0x91, 0x56, 0x96, 0x56, 0x9B, 0x56, 0xA0, 0x56
	.byte 0xA5, 0x56, 0xAA, 0x56, 0xAF, 0x56, 0xB4, 0x56, 0xB9, 0x56, 0xBE, 0x56, 0xC3, 0x56, 0xC8, 0x56
	.byte 0xCD, 0x56, 0xD2, 0x56, 0xD7, 0x56, 0xDC, 0x56, 0xE1, 0x56, 0xE6, 0x56, 0xEB, 0x56, 0xF0, 0x56
	.byte 0xF5, 0x56, 0xFA, 0x56, 0xFF, 0x56, 0x04, 0x57, 0x09, 0x57, 0x0E, 0x57, 0x13, 0x57, 0x18, 0x57
	.byte 0x1D, 0x57, 0x23, 0x57, 0x28, 0x57, 0x2D, 0x57, 0x32, 0x57, 0x37, 0x57, 0x3C, 0x57, 0x41, 0x57
	.byte 0x46, 0x57, 0x4B, 0x57, 0x50, 0x57, 0x55, 0x57, 0x5A, 0x57, 0x5F, 0x57, 0x64, 0x57, 0x69, 0x57
	.byte 0x6E, 0x57, 0x73, 0x57, 0x78, 0x57, 0x7D, 0x57, 0x82, 0x57, 0x87, 0x57, 0x8C, 0x57, 0x92, 0x57
	.byte 0x97, 0x57, 0x9C, 0x57, 0xA1, 0x57, 0xA6, 0x57, 0xAB, 0x57, 0xB0, 0x57, 0xB5, 0x57, 0xBA, 0x57
	.byte 0xBF, 0x57, 0xC4, 0x57, 0xC9, 0x57, 0xCE, 0x57, 0xD3, 0x57, 0xD8, 0x57, 0xDE, 0x57, 0xE3, 0x57
	.byte 0xE8, 0x57, 0xED, 0x57, 0xF2, 0x57, 0xF7, 0x57, 0xFC, 0x57, 0x01, 0x58, 0x06, 0x58, 0x0B, 0x58
	.byte 0x10, 0x58, 0x15, 0x58, 0x1B, 0x58, 0x20, 0x58, 0x25, 0x58, 0x2A, 0x58, 0x2F, 0x58, 0x34, 0x58
	.byte 0x39, 0x58, 0x3E, 0x58, 0x43, 0x58, 0x48, 0x58, 0x4D, 0x58, 0x53, 0x58, 0x58, 0x58, 0x5D, 0x58
	.byte 0x62, 0x58, 0x67, 0x58, 0x6C, 0x58, 0x71, 0x58, 0x76, 0x58, 0x7B, 0x58, 0x81, 0x58, 0x86, 0x58
	.byte 0x8B, 0x58, 0x90, 0x58, 0x95, 0x58, 0x9A, 0x58, 0x9F, 0x58, 0xA4, 0x58, 0xA9, 0x58, 0xAF, 0x58
	.byte 0xB4, 0x58, 0xB9, 0x58, 0xBE, 0x58, 0xC3, 0x58, 0xC8, 0x58, 0xCD, 0x58, 0xD2, 0x58, 0xD8, 0x58
	.byte 0xDD, 0x58, 0xE2, 0x58, 0xE7, 0x58, 0xEC, 0x58, 0xF1, 0x58, 0xF6, 0x58, 0xFC, 0x58, 0x01, 0x59
	.byte 0x06, 0x59, 0x0B, 0x59, 0x10, 0x59, 0x15, 0x59, 0x1A, 0x59, 0x20, 0x59, 0x25, 0x59, 0x2A, 0x59
	.byte 0x2F, 0x59, 0x34, 0x59, 0x39, 0x59, 0x3E, 0x59, 0x44, 0x59, 0x49, 0x59, 0x4E, 0x59, 0x53, 0x59
	.byte 0x58, 0x59, 0x5D, 0x59, 0x63, 0x59, 0x68, 0x59, 0x6D, 0x59, 0x72, 0x59, 0x77, 0x59, 0x7C, 0x59
	.byte 0x82, 0x59, 0x87, 0x59, 0x8C, 0x59, 0x91, 0x59, 0x96, 0x59, 0x9B, 0x59, 0xA1, 0x59, 0xA6, 0x59
	.byte 0xAB, 0x59, 0xB0, 0x59, 0xB5, 0x59, 0xBB, 0x59, 0xC0, 0x59, 0xC5, 0x59, 0xCA, 0x59, 0xCF, 0x59
	.byte 0xD4, 0x59, 0xDA, 0x59, 0xDF, 0x59, 0xE4, 0x59, 0xE9, 0x59, 0xEE, 0x59, 0xF4, 0x59, 0xF9, 0x59
	.byte 0xFE, 0x59, 0x03, 0x5A, 0x08, 0x5A, 0x0E, 0x5A, 0x13, 0x5A, 0x18, 0x5A, 0x1D, 0x5A, 0x22, 0x5A
	.byte 0x28, 0x5A, 0x2D, 0x5A, 0x32, 0x5A, 0x37, 0x5A, 0x3C, 0x5A, 0x42, 0x5A, 0x47, 0x5A, 0x4C, 0x5A
	.byte 0x51, 0x5A, 0x57, 0x5A, 0x5C, 0x5A, 0x61, 0x5A, 0x66, 0x5A, 0x6B, 0x5A, 0x71, 0x5A, 0x76, 0x5A
	.byte 0x7B, 0x5A, 0x80, 0x5A, 0x86, 0x5A, 0x8B, 0x5A, 0x90, 0x5A, 0x95, 0x5A, 0x9A, 0x5A, 0xA0, 0x5A
	.byte 0xA5, 0x5A, 0xAA, 0x5A, 0xAF, 0x5A, 0xB5, 0x5A, 0xBA, 0x5A, 0xBF, 0x5A, 0xC4, 0x5A, 0xCA, 0x5A
	.byte 0xCF, 0x5A, 0xD4, 0x5A, 0xD9, 0x5A, 0xDF, 0x5A, 0xE4, 0x5A, 0xE9, 0x5A, 0xEE, 0x5A, 0xF4, 0x5A
	.byte 0xF9, 0x5A, 0xFE, 0x5A, 0x03, 0x5B, 0x09, 0x5B, 0x0E, 0x5B, 0x13, 0x5B, 0x18, 0x5B, 0x1E, 0x5B
	.byte 0x23, 0x5B, 0x28, 0x5B, 0x2D, 0x5B, 0x33, 0x5B, 0x38, 0x5B, 0x3D, 0x5B, 0x43, 0x5B, 0x48, 0x5B
	.byte 0x4D, 0x5B, 0x52, 0x5B, 0x58, 0x5B, 0x5D, 0x5B, 0x62, 0x5B, 0x67, 0x5B, 0x6D, 0x5B, 0x72, 0x5B
	.byte 0x77, 0x5B, 0x7D, 0x5B, 0x82, 0x5B, 0x87, 0x5B, 0x8C, 0x5B, 0x92, 0x5B, 0x97, 0x5B, 0x9C, 0x5B
	.byte 0xA2, 0x5B, 0xA7, 0x5B, 0xAC, 0x5B, 0xB2, 0x5B, 0xB7, 0x5B, 0xBC, 0x5B, 0xC1, 0x5B, 0xC7, 0x5B
	.byte 0xCC, 0x5B, 0xD1, 0x5B, 0xD7, 0x5B, 0xDC, 0x5B, 0xE1, 0x5B, 0xE7, 0x5B, 0xEC, 0x5B, 0xF1, 0x5B
	.byte 0xF6, 0x5B, 0xFC, 0x5B, 0x01, 0x5C, 0x06, 0x5C, 0x0C, 0x5C, 0x11, 0x5C, 0x16, 0x5C, 0x1C, 0x5C
	.byte 0x21, 0x5C, 0x26, 0x5C, 0x2C, 0x5C, 0x31, 0x5C, 0x36, 0x5C, 0x3C, 0x5C, 0x41, 0x5C, 0x46, 0x5C
	.byte 0x4C, 0x5C, 0x51, 0x5C, 0x56, 0x5C, 0x5C, 0x5C, 0x61, 0x5C, 0x66, 0x5C, 0x6C, 0x5C, 0x71, 0x5C
	.byte 0x76, 0x5C, 0x7C, 0x5C, 0x81, 0x5C, 0x86, 0x5C, 0x8C, 0x5C, 0x91, 0x5C, 0x96, 0x5C, 0x9C, 0x5C
	.byte 0xA1, 0x5C, 0xA6, 0x5C, 0xAC, 0x5C, 0xB1, 0x5C, 0xB6, 0x5C, 0xBC, 0x5C, 0xC1, 0x5C, 0xC7, 0x5C
	.byte 0xCC, 0x5C, 0xD1, 0x5C, 0xD7, 0x5C, 0xDC, 0x5C, 0xE1, 0x5C, 0xE7, 0x5C, 0xEC, 0x5C, 0xF1, 0x5C
	.byte 0xF7, 0x5C, 0xFC, 0x5C, 0x02, 0x5D, 0x07, 0x5D, 0x0C, 0x5D, 0x12, 0x5D, 0x17, 0x5D, 0x1C, 0x5D
	.byte 0x22, 0x5D, 0x27, 0x5D, 0x2D, 0x5D, 0x32, 0x5D, 0x37, 0x5D, 0x3D, 0x5D, 0x42, 0x5D, 0x48, 0x5D
	.byte 0x4D, 0x5D, 0x52, 0x5D, 0x58, 0x5D, 0x5D, 0x5D, 0x62, 0x5D, 0x68, 0x5D, 0x6D, 0x5D, 0x73, 0x5D
	.byte 0x78, 0x5D, 0x7D, 0x5D, 0x83, 0x5D, 0x88, 0x5D, 0x8E, 0x5D, 0x93, 0x5D, 0x98, 0x5D, 0x9E, 0x5D
	.byte 0xA3, 0x5D, 0xA9, 0x5D, 0xAE, 0x5D, 0xB4, 0x5D, 0xB9, 0x5D, 0xBE, 0x5D, 0xC4, 0x5D, 0xC9, 0x5D
	.byte 0xCF, 0x5D, 0xD4, 0x5D, 0xD9, 0x5D, 0xDF, 0x5D, 0xE4, 0x5D, 0xEA, 0x5D, 0xEF, 0x5D, 0xF5, 0x5D
	.byte 0xFA, 0x5D, 0xFF, 0x5D, 0x05, 0x5E, 0x0A, 0x5E, 0x10, 0x5E, 0x15, 0x5E, 0x1B, 0x5E, 0x20, 0x5E
	.byte 0x25, 0x5E, 0x2B, 0x5E, 0x30, 0x5E, 0x36, 0x5E, 0x3B, 0x5E, 0x41, 0x5E, 0x46, 0x5E, 0x4C, 0x5E
	.byte 0x51, 0x5E, 0x56, 0x5E, 0x5C, 0x5E, 0x61, 0x5E, 0x67, 0x5E, 0x6C, 0x5E, 0x72, 0x5E, 0x77, 0x5E
	.byte 0x7D, 0x5E, 0x82, 0x5E, 0x88, 0x5E, 0x8D, 0x5E, 0x92, 0x5E, 0x98, 0x5E, 0x9D, 0x5E, 0xA3, 0x5E
	.byte 0xA8, 0x5E, 0xAE, 0x5E, 0xB3, 0x5E, 0xB9, 0x5E, 0xBE, 0x5E, 0xC4, 0x5E, 0xC9, 0x5E, 0xCF, 0x5E
	.byte 0xD4, 0x5E, 0xDA, 0x5E, 0xDF, 0x5E, 0xE5, 0x5E, 0xEA, 0x5E, 0xEF, 0x5E, 0xF5, 0x5E, 0xFA, 0x5E
	.byte 0x00, 0x5F, 0x05, 0x5F, 0x0B, 0x5F, 0x10, 0x5F, 0x16, 0x5F, 0x1B, 0x5F, 0x21, 0x5F, 0x26, 0x5F
	.byte 0x2C, 0x5F, 0x31, 0x5F, 0x37, 0x5F, 0x3C, 0x5F, 0x42, 0x5F, 0x47, 0x5F, 0x4D, 0x5F, 0x52, 0x5F
	.byte 0x58, 0x5F, 0x5D, 0x5F, 0x63, 0x5F, 0x68, 0x5F, 0x6E, 0x5F, 0x73, 0x5F, 0x79, 0x5F, 0x7E, 0x5F
	.byte 0x84, 0x5F, 0x8A, 0x5F, 0x8F, 0x5F, 0x95, 0x5F, 0x9A, 0x5F, 0xA0, 0x5F, 0xA5, 0x5F, 0xAB, 0x5F
	.byte 0xB0, 0x5F, 0xB6, 0x5F, 0xBB, 0x5F, 0xC1, 0x5F, 0xC6, 0x5F, 0xCC, 0x5F, 0xD1, 0x5F, 0xD7, 0x5F
	.byte 0xDC, 0x5F, 0xE2, 0x5F, 0xE8, 0x5F, 0xED, 0x5F, 0xF3, 0x5F, 0xF8, 0x5F, 0xFE, 0x5F, 0x03, 0x60
	.byte 0x09, 0x60, 0x0E, 0x60, 0x14, 0x60, 0x19, 0x60, 0x1F, 0x60, 0x25, 0x60, 0x2A, 0x60, 0x30, 0x60
	.byte 0x35, 0x60, 0x3B, 0x60, 0x40, 0x60, 0x46, 0x60, 0x4B, 0x60, 0x51, 0x60, 0x57, 0x60, 0x5C, 0x60
	.byte 0x62, 0x60, 0x67, 0x60, 0x6D, 0x60, 0x72, 0x60, 0x78, 0x60, 0x7E, 0x60, 0x83, 0x60, 0x89, 0x60
	.byte 0x8E, 0x60, 0x94, 0x60, 0x99, 0x60, 0x9F, 0x60, 0xA5, 0x60, 0xAA, 0x60, 0xB0, 0x60, 0xB5, 0x60
	.byte 0xBB, 0x60, 0xC1, 0x60, 0xC6, 0x60, 0xCC, 0x60, 0xD1, 0x60, 0xD7, 0x60, 0xDC, 0x60, 0xE2, 0x60
	.byte 0xE8, 0x60, 0xED, 0x60, 0xF3, 0x60, 0xF8, 0x60, 0xFE, 0x60, 0x04, 0x61, 0x09, 0x61, 0x0F, 0x61
	.byte 0x14, 0x61, 0x1A, 0x61, 0x20, 0x61, 0x25, 0x61, 0x2B, 0x61, 0x31, 0x61, 0x36, 0x61, 0x3C, 0x61
	.byte 0x41, 0x61, 0x47, 0x61, 0x4D, 0x61, 0x52, 0x61, 0x58, 0x61, 0x5D, 0x61, 0x63, 0x61, 0x69, 0x61
	.byte 0x6E, 0x61, 0x74, 0x61, 0x7A, 0x61, 0x7F, 0x61, 0x85, 0x61, 0x8B, 0x61, 0x90, 0x61, 0x96, 0x61
	.byte 0x9B, 0x61, 0xA1, 0x61, 0xA7, 0x61, 0xAC, 0x61, 0xB2, 0x61, 0xB8, 0x61, 0xBD, 0x61, 0xC3, 0x61
	.byte 0xC9, 0x61, 0xCE, 0x61, 0xD4, 0x61, 0xDA, 0x61, 0xDF, 0x61, 0xE5, 0x61, 0xEA, 0x61, 0xF0, 0x61
	.byte 0xF6, 0x61, 0xFB, 0x61, 0x01, 0x62, 0x07, 0x62, 0x0C, 0x62, 0x12, 0x62, 0x18, 0x62, 0x1D, 0x62
	.byte 0x23, 0x62, 0x29, 0x62, 0x2E, 0x62, 0x34, 0x62, 0x3A, 0x62, 0x3F, 0x62, 0x45, 0x62, 0x4B, 0x62
	.byte 0x50, 0x62, 0x56, 0x62, 0x5C, 0x62, 0x62, 0x62, 0x67, 0x62, 0x6D, 0x62, 0x73, 0x62, 0x78, 0x62
	.byte 0x7E, 0x62, 0x84, 0x62, 0x89, 0x62, 0x8F, 0x62, 0x95, 0x62, 0x9A, 0x62, 0xA0, 0x62, 0xA6, 0x62
	.byte 0xAC, 0x62, 0xB1, 0x62, 0xB7, 0x62, 0xBD, 0x62, 0xC2, 0x62, 0xC8, 0x62, 0xCE, 0x62, 0xD3, 0x62
	.byte 0xD9, 0x62, 0xDF, 0x62, 0xE5, 0x62, 0xEA, 0x62, 0xF0, 0x62, 0xF6, 0x62, 0xFB, 0x62, 0x01, 0x63
	.byte 0x07, 0x63, 0x0D, 0x63, 0x12, 0x63, 0x18, 0x63, 0x1E, 0x63, 0x23, 0x63, 0x29, 0x63, 0x2F, 0x63
	.byte 0x35, 0x63, 0x3A, 0x63, 0x40, 0x63, 0x46, 0x63, 0x4C, 0x63, 0x51, 0x63, 0x57, 0x63, 0x5D, 0x63
	.byte 0x63, 0x63, 0x68, 0x63, 0x6E, 0x63, 0x74, 0x63, 0x7A, 0x63, 0x7F, 0x63, 0x85, 0x63, 0x8B, 0x63
	.byte 0x91, 0x63, 0x96, 0x63, 0x9C, 0x63, 0xA2, 0x63, 0xA8, 0x63, 0xAD, 0x63, 0xB3, 0x63, 0xB9, 0x63
	.byte 0xBF, 0x63, 0xC4, 0x63, 0xCA, 0x63, 0xD0, 0x63, 0xD6, 0x63, 0xDB, 0x63, 0xE1, 0x63, 0xE7, 0x63
	.byte 0xED, 0x63, 0xF2, 0x63, 0xF8, 0x63, 0xFE, 0x63, 0x04, 0x64, 0x0A, 0x64, 0x0F, 0x64, 0x15, 0x64
	.byte 0x1B, 0x64, 0x21, 0x64, 0x27, 0x64, 0x2C, 0x64, 0x32, 0x64, 0x38, 0x64, 0x3E, 0x64, 0x43, 0x64
	.byte 0x49, 0x64, 0x4F, 0x64, 0x55, 0x64, 0x5B, 0x64, 0x60, 0x64, 0x66, 0x64, 0x6C, 0x64, 0x72, 0x64
	.byte 0x78, 0x64, 0x7D, 0x64, 0x83, 0x64, 0x89, 0x64, 0x8F, 0x64, 0x95, 0x64, 0x9A, 0x64, 0xA0, 0x64
	.byte 0xA6, 0x64, 0xAC, 0x64, 0xB2, 0x64, 0xB8, 0x64, 0xBD, 0x64, 0xC3, 0x64, 0xC9, 0x64, 0xCF, 0x64
	.byte 0xD5, 0x64, 0xDA, 0x64, 0xE0, 0x64, 0xE6, 0x64, 0xEC, 0x64, 0xF2, 0x64, 0xF8, 0x64, 0xFD, 0x64
	.byte 0x03, 0x65, 0x09, 0x65, 0x0F, 0x65, 0x15, 0x65, 0x1B, 0x65, 0x20, 0x65, 0x26, 0x65, 0x2C, 0x65
	.byte 0x32, 0x65, 0x38, 0x65, 0x3E, 0x65, 0x44, 0x65, 0x49, 0x65, 0x4F, 0x65, 0x55, 0x65, 0x5B, 0x65
	.byte 0x61, 0x65, 0x67, 0x65, 0x6D, 0x65, 0x72, 0x65, 0x78, 0x65, 0x7E, 0x65, 0x84, 0x65, 0x8A, 0x65
	.byte 0x90, 0x65, 0x96, 0x65, 0x9B, 0x65, 0xA1, 0x65, 0xA7, 0x65, 0xAD, 0x65, 0xB3, 0x65, 0xB9, 0x65
	.byte 0xBF, 0x65, 0xC5, 0x65, 0xCA, 0x65, 0xD0, 0x65, 0xD6, 0x65, 0xDC, 0x65, 0xE2, 0x65, 0xE8, 0x65
	.byte 0xEE, 0x65, 0xF4, 0x65, 0xF9, 0x65, 0xFF, 0x65, 0x05, 0x66, 0x0B, 0x66, 0x11, 0x66, 0x17, 0x66
	.byte 0x1D, 0x66, 0x23, 0x66, 0x29, 0x66, 0x2F, 0x66, 0x34, 0x66, 0x3A, 0x66, 0x40, 0x66, 0x46, 0x66
	.byte 0x4C, 0x66, 0x52, 0x66, 0x58, 0x66, 0x5E, 0x66, 0x64, 0x66, 0x6A, 0x66, 0x70, 0x66, 0x75, 0x66
	.byte 0x7B, 0x66, 0x81, 0x66, 0x87, 0x66, 0x8D, 0x66, 0x93, 0x66, 0x99, 0x66, 0x9F, 0x66, 0xA5, 0x66
	.byte 0xAB, 0x66, 0xB1, 0x66, 0xB7, 0x66, 0xBD, 0x66, 0xC3, 0x66, 0xC8, 0x66, 0xCE, 0x66, 0xD4, 0x66
	.byte 0xDA, 0x66, 0xE0, 0x66, 0xE6, 0x66, 0xEC, 0x66, 0xF2, 0x66, 0xF8, 0x66, 0xFE, 0x66, 0x04, 0x67
	.byte 0x0A, 0x67, 0x10, 0x67, 0x16, 0x67, 0x1C, 0x67, 0x22, 0x67, 0x28, 0x67, 0x2E, 0x67, 0x34, 0x67
	.byte 0x3A, 0x67, 0x3F, 0x67, 0x45, 0x67, 0x4B, 0x67, 0x51, 0x67, 0x57, 0x67, 0x5D, 0x67, 0x63, 0x67
	.byte 0x69, 0x67, 0x6F, 0x67, 0x75, 0x67, 0x7B, 0x67, 0x81, 0x67, 0x87, 0x67, 0x8D, 0x67, 0x93, 0x67
	.byte 0x99, 0x67, 0x9F, 0x67, 0xA5, 0x67, 0xAB, 0x67, 0xB1, 0x67, 0xB7, 0x67, 0xBD, 0x67, 0xC3, 0x67
	.byte 0xC9, 0x67, 0xCF, 0x67, 0xD5, 0x67, 0xDB, 0x67, 0xE1, 0x67, 0xE7, 0x67, 0xED, 0x67, 0xF3, 0x67
	.byte 0xF9, 0x67, 0xFF, 0x67, 0x05, 0x68, 0x0B, 0x68, 0x11, 0x68, 0x17, 0x68, 0x1D, 0x68, 0x23, 0x68
	.byte 0x29, 0x68, 0x2F, 0x68, 0x35, 0x68, 0x3B, 0x68, 0x41, 0x68, 0x47, 0x68, 0x4D, 0x68, 0x53, 0x68
	.byte 0x59, 0x68, 0x5F, 0x68, 0x65, 0x68, 0x6B, 0x68, 0x71, 0x68, 0x77, 0x68, 0x7D, 0x68, 0x83, 0x68
	.byte 0x8A, 0x68, 0x90, 0x68, 0x96, 0x68, 0x9C, 0x68, 0xA2, 0x68, 0xA8, 0x68, 0xAE, 0x68, 0xB4, 0x68
	.byte 0xBA, 0x68, 0xC0, 0x68, 0xC6, 0x68, 0xCC, 0x68, 0xD2, 0x68, 0xD8, 0x68, 0xDE, 0x68, 0xE4, 0x68
	.byte 0xEA, 0x68, 0xF0, 0x68, 0xF6, 0x68, 0xFD, 0x68, 0x03, 0x69, 0x09, 0x69, 0x0F, 0x69, 0x15, 0x69
	.byte 0x1B, 0x69, 0x21, 0x69, 0x27, 0x69, 0x2D, 0x69, 0x33, 0x69, 0x39, 0x69, 0x3F, 0x69, 0x45, 0x69
	.byte 0x4B, 0x69, 0x52, 0x69, 0x58, 0x69, 0x5E, 0x69, 0x64, 0x69, 0x6A, 0x69, 0x70, 0x69, 0x76, 0x69
	.byte 0x7C, 0x69, 0x82, 0x69, 0x88, 0x69, 0x8E, 0x69, 0x95, 0x69, 0x9B, 0x69, 0xA1, 0x69, 0xA7, 0x69
	.byte 0xAD, 0x69, 0xB3, 0x69, 0xB9, 0x69, 0xBF, 0x69, 0xC5, 0x69, 0xCB, 0x69, 0xD2, 0x69, 0xD8, 0x69
	.byte 0xDE, 0x69, 0xE4, 0x69, 0xEA, 0x69, 0xF0, 0x69, 0xF6, 0x69, 0xFC, 0x69, 0x03, 0x6A, 0x09, 0x6A
	.byte 0x0F, 0x6A, 0x15, 0x6A, 0x1B, 0x6A, 0x21, 0x6A, 0x27, 0x6A, 0x2D, 0x6A, 0x34, 0x6A, 0x3A, 0x6A
	.byte 0x40, 0x6A, 0x46, 0x6A, 0x4C, 0x6A, 0x52, 0x6A, 0x58, 0x6A, 0x5F, 0x6A, 0x65, 0x6A, 0x6B, 0x6A
	.byte 0x71, 0x6A, 0x77, 0x6A, 0x7D, 0x6A, 0x83, 0x6A, 0x8A, 0x6A, 0x90, 0x6A, 0x96, 0x6A, 0x9C, 0x6A
	.byte 0xA2, 0x6A, 0xA8, 0x6A, 0xAF, 0x6A, 0xB5, 0x6A, 0xBB, 0x6A, 0xC1, 0x6A, 0xC7, 0x6A, 0xCD, 0x6A
	.byte 0xD4, 0x6A, 0xDA, 0x6A, 0xE0, 0x6A, 0xE6, 0x6A, 0xEC, 0x6A, 0xF2, 0x6A, 0xF9, 0x6A, 0xFF, 0x6A
	.byte 0x05, 0x6B, 0x0B, 0x6B, 0x11, 0x6B, 0x17, 0x6B, 0x1E, 0x6B, 0x24, 0x6B, 0x2A, 0x6B, 0x30, 0x6B
	.byte 0x36, 0x6B, 0x3D, 0x6B, 0x43, 0x6B, 0x49, 0x6B, 0x4F, 0x6B, 0x55, 0x6B, 0x5C, 0x6B, 0x62, 0x6B
	.byte 0x68, 0x6B, 0x6E, 0x6B, 0x74, 0x6B, 0x7B, 0x6B, 0x81, 0x6B, 0x87, 0x6B, 0x8D, 0x6B, 0x93, 0x6B
	.byte 0x9A, 0x6B, 0xA0, 0x6B, 0xA6, 0x6B, 0xAC, 0x6B, 0xB3, 0x6B, 0xB9, 0x6B, 0xBF, 0x6B, 0xC5, 0x6B
	.byte 0xCB, 0x6B, 0xD2, 0x6B, 0xD8, 0x6B, 0xDE, 0x6B, 0xE4, 0x6B, 0xEB, 0x6B, 0xF1, 0x6B, 0xF7, 0x6B
	.byte 0xFD, 0x6B, 0x04, 0x6C, 0x0A, 0x6C, 0x10, 0x6C, 0x16, 0x6C, 0x1D, 0x6C, 0x23, 0x6C, 0x29, 0x6C
	.byte 0x2F, 0x6C, 0x36, 0x6C, 0x3C, 0x6C, 0x42, 0x6C, 0x48, 0x6C, 0x4F, 0x6C, 0x55, 0x6C, 0x5B, 0x6C
	.byte 0x61, 0x6C, 0x68, 0x6C, 0x6E, 0x6C, 0x74, 0x6C, 0x7A, 0x6C, 0x81, 0x6C, 0x87, 0x6C, 0x8D, 0x6C
	.byte 0x93, 0x6C, 0x9A, 0x6C, 0xA0, 0x6C, 0xA6, 0x6C, 0xAD, 0x6C, 0xB3, 0x6C, 0xB9, 0x6C, 0xBF, 0x6C
	.byte 0xC6, 0x6C, 0xCC, 0x6C, 0xD2, 0x6C, 0xD9, 0x6C, 0xDF, 0x6C, 0xE5, 0x6C, 0xEB, 0x6C, 0xF2, 0x6C
	.byte 0xF8, 0x6C, 0xFE, 0x6C, 0x05, 0x6D, 0x0B, 0x6D, 0x11, 0x6D, 0x17, 0x6D, 0x1E, 0x6D, 0x24, 0x6D
	.byte 0x2A, 0x6D, 0x31, 0x6D, 0x37, 0x6D, 0x3D, 0x6D, 0x44, 0x6D, 0x4A, 0x6D, 0x50, 0x6D, 0x57, 0x6D
	.byte 0x5D, 0x6D, 0x63, 0x6D, 0x69, 0x6D, 0x70, 0x6D, 0x76, 0x6D, 0x7C, 0x6D, 0x83, 0x6D, 0x89, 0x6D
	.byte 0x8F, 0x6D, 0x96, 0x6D, 0x9C, 0x6D, 0xA2, 0x6D, 0xA9, 0x6D, 0xAF, 0x6D, 0xB5, 0x6D, 0xBC, 0x6D
	.byte 0xC2, 0x6D, 0xC8, 0x6D, 0xCF, 0x6D, 0xD5, 0x6D, 0xDB, 0x6D, 0xE2, 0x6D, 0xE8, 0x6D, 0xEF, 0x6D
	.byte 0xF5, 0x6D, 0xFB, 0x6D, 0x02, 0x6E, 0x08, 0x6E, 0x0E, 0x6E, 0x15, 0x6E, 0x1B, 0x6E, 0x21, 0x6E
	.byte 0x28, 0x6E, 0x2E, 0x6E, 0x34, 0x6E, 0x3B, 0x6E, 0x41, 0x6E, 0x48, 0x6E, 0x4E, 0x6E, 0x54, 0x6E
	.byte 0x5B, 0x6E, 0x61, 0x6E, 0x67, 0x6E, 0x6E, 0x6E, 0x74, 0x6E, 0x7B, 0x6E, 0x81, 0x6E, 0x87, 0x6E
	.byte 0x8E, 0x6E, 0x94, 0x6E, 0x9B, 0x6E, 0xA1, 0x6E, 0xA7, 0x6E, 0xAE, 0x6E, 0xB4, 0x6E, 0xBA, 0x6E
	.byte 0xC1, 0x6E, 0xC7, 0x6E, 0xCE, 0x6E, 0xD4, 0x6E, 0xDA, 0x6E, 0xE1, 0x6E, 0xE7, 0x6E, 0xEE, 0x6E
	.byte 0xF4, 0x6E, 0xFA, 0x6E, 0x01, 0x6F, 0x07, 0x6F, 0x0E, 0x6F, 0x14, 0x6F, 0x1B, 0x6F, 0x21, 0x6F
	.byte 0x27, 0x6F, 0x2E, 0x6F, 0x34, 0x6F, 0x3B, 0x6F, 0x41, 0x6F, 0x48, 0x6F, 0x4E, 0x6F, 0x54, 0x6F
	.byte 0x5B, 0x6F, 0x61, 0x6F, 0x68, 0x6F, 0x6E, 0x6F, 0x75, 0x6F, 0x7B, 0x6F, 0x81, 0x6F, 0x88, 0x6F
	.byte 0x8E, 0x6F, 0x95, 0x6F, 0x9B, 0x6F, 0xA2, 0x6F, 0xA8, 0x6F, 0xAF, 0x6F, 0xB5, 0x6F, 0xBB, 0x6F
	.byte 0xC2, 0x6F, 0xC8, 0x6F, 0xCF, 0x6F, 0xD5, 0x6F, 0xDC, 0x6F, 0xE2, 0x6F, 0xE9, 0x6F, 0xEF, 0x6F
	.byte 0xF6, 0x6F, 0xFC, 0x6F, 0x03, 0x70, 0x09, 0x70, 0x0F, 0x70, 0x16, 0x70, 0x1C, 0x70, 0x23, 0x70
	.byte 0x29, 0x70, 0x30, 0x70, 0x36, 0x70, 0x3D, 0x70, 0x43, 0x70, 0x4A, 0x70, 0x50, 0x70, 0x57, 0x70
	.byte 0x5D, 0x70, 0x64, 0x70, 0x6A, 0x70, 0x71, 0x70, 0x77, 0x70, 0x7E, 0x70, 0x84, 0x70, 0x8B, 0x70
	.byte 0x91, 0x70, 0x98, 0x70, 0x9E, 0x70, 0xA5, 0x70, 0xAB, 0x70, 0xB2, 0x70, 0xB8, 0x70, 0xBF, 0x70
	.byte 0xC5, 0x70, 0xCC, 0x70, 0xD2, 0x70, 0xD9, 0x70, 0xDF, 0x70, 0xE6, 0x70, 0xEC, 0x70, 0xF3, 0x70
	.byte 0xF9, 0x70, 0x00, 0x71, 0x07, 0x71, 0x0D, 0x71, 0x14, 0x71, 0x1A, 0x71, 0x21, 0x71, 0x27, 0x71
	.byte 0x2E, 0x71, 0x34, 0x71, 0x3B, 0x71, 0x41, 0x71, 0x48, 0x71, 0x4E, 0x71, 0x55, 0x71, 0x5C, 0x71
	.byte 0x62, 0x71, 0x69, 0x71, 0x6F, 0x71, 0x76, 0x71, 0x7C, 0x71, 0x83, 0x71, 0x89, 0x71, 0x90, 0x71
	.byte 0x96, 0x71, 0x9D, 0x71, 0xA4, 0x71, 0xAA, 0x71, 0xB1, 0x71, 0xB7, 0x71, 0xBE, 0x71, 0xC4, 0x71
	.byte 0xCB, 0x71, 0xD2, 0x71, 0xD8, 0x71, 0xDF, 0x71, 0xE5, 0x71, 0xEC, 0x71, 0xF2, 0x71, 0xF9, 0x71
	.byte 0x00, 0x72, 0x06, 0x72, 0x0D, 0x72, 0x13, 0x72, 0x1A, 0x72, 0x21, 0x72, 0x27, 0x72, 0x2E, 0x72
	.byte 0x34, 0x72, 0x3B, 0x72, 0x42, 0x72, 0x48, 0x72, 0x4F, 0x72, 0x55, 0x72, 0x5C, 0x72, 0x63, 0x72
	.byte 0x69, 0x72, 0x70, 0x72, 0x76, 0x72, 0x7D, 0x72, 0x84, 0x72, 0x8A, 0x72, 0x91, 0x72, 0x98, 0x72
	.byte 0x9E, 0x72, 0xA5, 0x72, 0xAB, 0x72, 0xB2, 0x72, 0xB9, 0x72, 0xBF, 0x72, 0xC6, 0x72, 0xCD, 0x72
	.byte 0xD3, 0x72, 0xDA, 0x72, 0xE0, 0x72, 0xE7, 0x72, 0xEE, 0x72, 0xF4, 0x72, 0xFB, 0x72, 0x02, 0x73
	.byte 0x08, 0x73, 0x0F, 0x73, 0x16, 0x73, 0x1C, 0x73, 0x23, 0x73, 0x29, 0x73, 0x30, 0x73, 0x37, 0x73
	.byte 0x3D, 0x73, 0x44, 0x73, 0x4B, 0x73, 0x51, 0x73, 0x58, 0x73, 0x5F, 0x73, 0x65, 0x73, 0x6C, 0x73
	.byte 0x73, 0x73, 0x79, 0x73, 0x80, 0x73, 0x87, 0x73, 0x8D, 0x73, 0x94, 0x73, 0x9B, 0x73, 0xA1, 0x73
	.byte 0xA8, 0x73, 0xAF, 0x73, 0xB6, 0x73, 0xBC, 0x73, 0xC3, 0x73, 0xCA, 0x73, 0xD0, 0x73, 0xD7, 0x73
	.byte 0xDE, 0x73, 0xE4, 0x73, 0xEB, 0x73, 0xF2, 0x73, 0xF8, 0x73, 0xFF, 0x73, 0x06, 0x74, 0x0D, 0x74
	.byte 0x13, 0x74, 0x1A, 0x74, 0x21, 0x74, 0x27, 0x74, 0x2E, 0x74, 0x35, 0x74, 0x3B, 0x74, 0x42, 0x74
	.byte 0x49, 0x74, 0x50, 0x74, 0x56, 0x74, 0x5D, 0x74, 0x64, 0x74, 0x6B, 0x74, 0x71, 0x74, 0x78, 0x74
	.byte 0x7F, 0x74, 0x85, 0x74, 0x8C, 0x74, 0x93, 0x74, 0x9A, 0x74, 0xA0, 0x74, 0xA7, 0x74, 0xAE, 0x74
	.byte 0xB5, 0x74, 0xBB, 0x74, 0xC2, 0x74, 0xC9, 0x74, 0xD0, 0x74, 0xD6, 0x74, 0xDD, 0x74, 0xE4, 0x74
	.byte 0xEB, 0x74, 0xF1, 0x74, 0xF8, 0x74, 0xFF, 0x74, 0x06, 0x75, 0x0C, 0x75, 0x13, 0x75, 0x1A, 0x75
	.byte 0x21, 0x75, 0x27, 0x75, 0x2E, 0x75, 0x35, 0x75, 0x3C, 0x75, 0x42, 0x75, 0x49, 0x75, 0x50, 0x75
	.byte 0x57, 0x75, 0x5E, 0x75, 0x64, 0x75, 0x6B, 0x75, 0x72, 0x75, 0x79, 0x75, 0x80, 0x75, 0x86, 0x75
	.byte 0x8D, 0x75, 0x94, 0x75, 0x9B, 0x75, 0xA1, 0x75, 0xA8, 0x75, 0xAF, 0x75, 0xB6, 0x75, 0xBD, 0x75
	.byte 0xC3, 0x75, 0xCA, 0x75, 0xD1, 0x75, 0xD8, 0x75, 0xDF, 0x75, 0xE5, 0x75, 0xEC, 0x75, 0xF3, 0x75
	.byte 0xFA, 0x75, 0x01, 0x76, 0x08, 0x76, 0x0E, 0x76, 0x15, 0x76, 0x1C, 0x76, 0x23, 0x76, 0x2A, 0x76
	.byte 0x30, 0x76, 0x37, 0x76, 0x3E, 0x76, 0x45, 0x76, 0x4C, 0x76, 0x53, 0x76, 0x59, 0x76, 0x60, 0x76
	.byte 0x67, 0x76, 0x6E, 0x76, 0x75, 0x76, 0x7C, 0x76, 0x83, 0x76, 0x89, 0x76, 0x90, 0x76, 0x97, 0x76
	.byte 0x9E, 0x76, 0xA5, 0x76, 0xAC, 0x76, 0xB2, 0x76, 0xB9, 0x76, 0xC0, 0x76, 0xC7, 0x76, 0xCE, 0x76
	.byte 0xD5, 0x76, 0xDC, 0x76, 0xE3, 0x76, 0xE9, 0x76, 0xF0, 0x76, 0xF7, 0x76, 0xFE, 0x76, 0x05, 0x77
	.byte 0x0C, 0x77, 0x13, 0x77, 0x19, 0x77, 0x20, 0x77, 0x27, 0x77, 0x2E, 0x77, 0x35, 0x77, 0x3C, 0x77
	.byte 0x43, 0x77, 0x4A, 0x77, 0x51, 0x77, 0x57, 0x77, 0x5E, 0x77, 0x65, 0x77, 0x6C, 0x77, 0x73, 0x77
	.byte 0x7A, 0x77, 0x81, 0x77, 0x88, 0x77, 0x8F, 0x77, 0x96, 0x77, 0x9C, 0x77, 0xA3, 0x77, 0xAA, 0x77
	.byte 0xB1, 0x77, 0xB8, 0x77, 0xBF, 0x77, 0xC6, 0x77, 0xCD, 0x77, 0xD4, 0x77, 0xDB, 0x77, 0xE2, 0x77
	.byte 0xE9, 0x77, 0xEF, 0x77, 0xF6, 0x77, 0xFD, 0x77, 0x04, 0x78, 0x0B, 0x78, 0x12, 0x78, 0x19, 0x78
	.byte 0x20, 0x78, 0x27, 0x78, 0x2E, 0x78, 0x35, 0x78, 0x3C, 0x78, 0x43, 0x78, 0x4A, 0x78, 0x51, 0x78
	.byte 0x58, 0x78, 0x5F, 0x78, 0x65, 0x78, 0x6C, 0x78, 0x73, 0x78, 0x7A, 0x78, 0x81, 0x78, 0x88, 0x78
	.byte 0x8F, 0x78, 0x96, 0x78, 0x9D, 0x78, 0xA4, 0x78, 0xAB, 0x78, 0xB2, 0x78, 0xB9, 0x78, 0xC0, 0x78
	.byte 0xC7, 0x78, 0xCE, 0x78, 0xD5, 0x78, 0xDC, 0x78, 0xE3, 0x78, 0xEA, 0x78, 0xF1, 0x78, 0xF8, 0x78
	.byte 0xFF, 0x78, 0x06, 0x79, 0x0D, 0x79, 0x14, 0x79, 0x1B, 0x79, 0x22, 0x79, 0x29, 0x79, 0x30, 0x79
	.byte 0x37, 0x79, 0x3E, 0x79, 0x45, 0x79, 0x4C, 0x79, 0x53, 0x79, 0x5A, 0x79, 0x61, 0x79, 0x68, 0x79
	.byte 0x6F, 0x79, 0x76, 0x79, 0x7D, 0x79, 0x84, 0x79, 0x8B, 0x79, 0x92, 0x79, 0x99, 0x79, 0xA0, 0x79
	.byte 0xA7, 0x79, 0xAE, 0x79, 0xB5, 0x79, 0xBC, 0x79, 0xC3, 0x79, 0xCA, 0x79, 0xD1, 0x79, 0xD8, 0x79
	.byte 0xDF, 0x79, 0xE6, 0x79, 0xED, 0x79, 0xF4, 0x79, 0xFC, 0x79, 0x03, 0x7A, 0x0A, 0x7A, 0x11, 0x7A
	.byte 0x18, 0x7A, 0x1F, 0x7A, 0x26, 0x7A, 0x2D, 0x7A, 0x34, 0x7A, 0x3B, 0x7A, 0x42, 0x7A, 0x49, 0x7A
	.byte 0x50, 0x7A, 0x57, 0x7A, 0x5E, 0x7A, 0x65, 0x7A, 0x6C, 0x7A, 0x74, 0x7A, 0x7B, 0x7A, 0x82, 0x7A
	.byte 0x89, 0x7A, 0x90, 0x7A, 0x97, 0x7A, 0x9E, 0x7A, 0xA5, 0x7A, 0xAC, 0x7A, 0xB3, 0x7A, 0xBA, 0x7A
	.byte 0xC1, 0x7A, 0xC9, 0x7A, 0xD0, 0x7A, 0xD7, 0x7A, 0xDE, 0x7A, 0xE5, 0x7A, 0xEC, 0x7A, 0xF3, 0x7A
	.byte 0xFA, 0x7A, 0x01, 0x7B, 0x08, 0x7B, 0x10, 0x7B, 0x17, 0x7B, 0x1E, 0x7B, 0x25, 0x7B, 0x2C, 0x7B
	.byte 0x33, 0x7B, 0x3A, 0x7B, 0x41, 0x7B, 0x48, 0x7B, 0x50, 0x7B, 0x57, 0x7B, 0x5E, 0x7B, 0x65, 0x7B
	.byte 0x6C, 0x7B, 0x73, 0x7B, 0x7A, 0x7B, 0x81, 0x7B, 0x89, 0x7B, 0x90, 0x7B, 0x97, 0x7B, 0x9E, 0x7B
	.byte 0xA5, 0x7B, 0xAC, 0x7B, 0xB3, 0x7B, 0xBB, 0x7B, 0xC2, 0x7B, 0xC9, 0x7B, 0xD0, 0x7B, 0xD7, 0x7B
	.byte 0xDE, 0x7B, 0xE5, 0x7B, 0xED, 0x7B, 0xF4, 0x7B, 0xFB, 0x7B, 0x02, 0x7C, 0x09, 0x7C, 0x10, 0x7C
	.byte 0x18, 0x7C, 0x1F, 0x7C, 0x26, 0x7C, 0x2D, 0x7C, 0x34, 0x7C, 0x3B, 0x7C, 0x43, 0x7C, 0x4A, 0x7C
	.byte 0x51, 0x7C, 0x58, 0x7C, 0x5F, 0x7C, 0x67, 0x7C, 0x6E, 0x7C, 0x75, 0x7C, 0x7C, 0x7C, 0x83, 0x7C
	.byte 0x8B, 0x7C, 0x92, 0x7C, 0x99, 0x7C, 0xA0, 0x7C, 0xA7, 0x7C, 0xAE, 0x7C, 0xB6, 0x7C, 0xBD, 0x7C
	.byte 0xC4, 0x7C, 0xCB, 0x7C, 0xD3, 0x7C, 0xDA, 0x7C, 0xE1, 0x7C, 0xE8, 0x7C, 0xEF, 0x7C, 0xF7, 0x7C
	.byte 0xFE, 0x7C, 0x05, 0x7D, 0x0C, 0x7D, 0x13, 0x7D, 0x1B, 0x7D, 0x22, 0x7D, 0x29, 0x7D, 0x30, 0x7D
	.byte 0x38, 0x7D, 0x3F, 0x7D, 0x46, 0x7D, 0x4D, 0x7D, 0x55, 0x7D, 0x5C, 0x7D, 0x63, 0x7D, 0x6A, 0x7D
	.byte 0x72, 0x7D, 0x79, 0x7D, 0x80, 0x7D, 0x87, 0x7D, 0x8F, 0x7D, 0x96, 0x7D, 0x9D, 0x7D, 0xA4, 0x7D
	.byte 0xAC, 0x7D, 0xB3, 0x7D, 0xBA, 0x7D, 0xC1, 0x7D, 0xC9, 0x7D, 0xD0, 0x7D, 0xD7, 0x7D, 0xDE, 0x7D
	.byte 0xE6, 0x7D, 0xED, 0x7D, 0xF4, 0x7D, 0xFC, 0x7D, 0x03, 0x7E, 0x0A, 0x7E, 0x11, 0x7E, 0x19, 0x7E
	.byte 0x20, 0x7E, 0x27, 0x7E, 0x2E, 0x7E, 0x36, 0x7E, 0x3D, 0x7E, 0x44, 0x7E, 0x4C, 0x7E, 0x53, 0x7E
	.byte 0x5A, 0x7E, 0x62, 0x7E, 0x69, 0x7E, 0x70, 0x7E, 0x77, 0x7E, 0x7F, 0x7E, 0x86, 0x7E, 0x8D, 0x7E
	.byte 0x95, 0x7E, 0x9C, 0x7E, 0xA3, 0x7E, 0xAB, 0x7E, 0xB2, 0x7E, 0xB9, 0x7E, 0xC1, 0x7E, 0xC8, 0x7E
	.byte 0xCF, 0x7E, 0xD7, 0x7E, 0xDE, 0x7E, 0xE5, 0x7E, 0xED, 0x7E, 0xF4, 0x7E, 0xFB, 0x7E, 0x03, 0x7F
	.byte 0x0A, 0x7F, 0x11, 0x7F, 0x19, 0x7F, 0x20, 0x7F, 0x27, 0x7F, 0x2F, 0x7F, 0x36, 0x7F, 0x3D, 0x7F
	.byte 0x45, 0x7F, 0x4C, 0x7F, 0x53, 0x7F, 0x5B, 0x7F, 0x62, 0x7F, 0x69, 0x7F, 0x71, 0x7F, 0x78, 0x7F
	.byte 0x80, 0x7F, 0x87, 0x7F, 0x8E, 0x7F, 0x96, 0x7F, 0x9D, 0x7F, 0xA4, 0x7F, 0xAC, 0x7F, 0xB3, 0x7F
	.byte 0xBA, 0x7F, 0xC2, 0x7F, 0xC9, 0x7F, 0xD1, 0x7F, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00

    .bss
	.global unk_020B9FD8
unk_020B9FD8:
	.space 0x04
	.global unk_020B9FDC
unk_020B9FDC:
	.space 0x0C
	.global unk_020B9FE8
unk_020B9FE8:
	.space 0x0C
	.global unk_020B9FF4
unk_020B9FF4:
	.space 0x2C
	.global unk_020BA020
unk_020BA020:
	.space 0x10
	.global unk_020BA030
unk_020BA030:
	.space 0x08
	.global unk_020BA038
unk_020BA038:
	.space 0x600
	.global unk_020BA638
unk_020BA638:
	.space 0x0C
	.global unk_020BA644
unk_020BA644:
	.space 0x04
	.global unk_020BA648
unk_020BA648:
	.space 0x04
	.global unk_020BA64C
unk_020BA64C:
	.space 0x04
	.global unk_020BA650
unk_020BA650:
	.space 0x88
	.global unk_020BA6D8
unk_020BA6D8:
	.space 0x0C
	.global unk_020BA6E4
unk_020BA6E4:
	.space 0x0E
	.global unk_020BA6F2
unk_020BA6F2:
	.space 0x2E
	.global unk_020BA720
unk_020BA720:
	.space 0x8B8
	.global unk_020BAFD8
unk_020BAFD8:
	.space 0xD20
	.global unk_020BBCF8
unk_020BBCF8:
	.space 0xDC
	.global unk_020BBDD4
unk_020BBDD4:
	.space 0x04
	.global unk_020BBDD8
unk_020BBDD8:
	.space 0xE4
	.global unk_020BBEBC
unk_020BBEBC:
	.space 0x04
	.global unk_020BBEC0
unk_020BBEC0:
	.space 0x28
	.global unk_020BBEE8
unk_020BBEE8:
	.space 0xCC
	.global unk_020BBFB4
unk_020BBFB4:
	.space 0xC8
	.global unk_020BC07C
unk_020BC07C:
	.space 0x0C
	.global unk_020BC088
unk_020BC088:
	.space 0xB0
	.global unk_020BC138
unk_020BC138:
	.space 0x04
	.global unk_020BC13C
unk_020BC13C:
	.space 0x2C8
	.global unk_020BC404
unk_020BC404:
	.space 0x38
	.global unk_020BC43C
unk_020BC43C:
	.space 0xC8
