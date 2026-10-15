
.public OS_InitMutex
.public _ZN10FileSystem13AllocateClearEii
.public _ZN10FileSystem10DeallocateEPv
.public MIi_CpuClearFast
.public FUN_020538b0
.public _ZN10FileSystem9CalcCRC32EPKvm
.public OS_LockMutex
.public _ZN10FileSystem22ReadFileByNameDeferredEPPviPKcPa
.public _ZN10FileSystem14ReadFileByNameEPPviPKc
.public OS_UnlockMutex
.public _ZN7CFileIO12readDeferredEPKcPPvP10CAllocatorlmih
.public _ZN7CFileIO10readDirectEPKcPPvP10CAllocatorlmih
.public gAllocator
.public strlen
.public _ZN10FileSystem10IsFileBusyEa
.public _ZN7CFileIO11tryFinalizeEPv
.public _ZN10FileSystem5PanicEv
.public _ZN7CFileIO5closeEPvi
.public _ZN10CAllocator10deallocateEPv
.public FUN_02051b84
.public g3DVramMan
.public FUN_02051b58
.public PAC_GetPtr
.public PAC_GetSize
.public FUN_02051b28
.public _ZdlPv
.public FX_Sqrt

	.include "/macros/function.inc"

	.text
	arm_func_start FUN_ov16_020fc8f0
FUN_ov16_020fc8f0: ; 0x020FC8F0
	ldr r2, [r0, #0x28]
	add r1, r2, r1
	str r1, [r0, #0x28]
	bx lr
	arm_func_end FUN_ov16_020fc8f0

	arm_func_start FUN_ov16_020fc900
FUN_ov16_020fc900: ; 0x020FC900
	ldr r2, [r0, #0x28]
	subs r1, r2, r1
	str r1, [r0, #0x28]
	movmi r1, #0
	strmi r1, [r0, #0x28]
	bx lr
	arm_func_end FUN_ov16_020fc900

	arm_func_start FUN_ov16_020fc918
FUN_ov16_020fc918: ; 0x020FC918
	stmfd sp!, {r4, lr}
	cmp r1, #0
	ldr lr, [r0, #4]
	mvneq r0, #0
	ldmeqfd sp!, {r4, pc}
	ldr r4, [r0, #8]
	mov r0, #0
	cmp r4, #0
	ble _020FC978
_020FC93C:
	ldr r12, [lr, #4]
	cmp r12, #0
	beq _020FC968
	ldrh r3, [lr, #0x10]
	tst r3, #1
	beq _020FC968
	cmp r12, r1
	bne _020FC968
	cmp r2, #0
	strne lr, [r2]
	ldmfd sp!, {r4, pc}
_020FC968:
	add r0, r0, #1
	cmp r0, r4
	add lr, lr, #0x18
	blt _020FC93C
_020FC978:
	mvn r0, #0
	ldmfd sp!, {r4, pc}
	arm_func_end FUN_ov16_020fc918

	arm_func_start FUN_ov16_020fc980
FUN_ov16_020fc980: ; 0x020FC980
	ldrb r0, [r1, #0xc]
	cmp r0, #6
	bxne lr
	ldr r2, [r1, #4]
	ldrsb r3, [r2]
	cmp r3, #0x42
	ldreqsb r0, [r2, #1]
	cmpeq r0, #0x43
	ldreqsb r0, [r2, #2]
	cmpeq r0, #0x41
	moveq r0, #7
	streqb r0, [r1, #0xc]
	bxeq lr
	cmp r3, #0x42
	ldreqsb r0, [r2, #1]
	cmpeq r0, #0x4d
	ldreqsb r0, [r2, #2]
	cmpeq r0, #0x41
	moveq r0, #8
	streqb r0, [r1, #0xc]
	bxeq lr
	cmp r3, #0x42
	ldreqsb r0, [r2, #1]
	cmpeq r0, #0x54
	ldreqsb r0, [r2, #2]
	cmpeq r0, #0x41
	moveq r0, #9
	streqb r0, [r1, #0xc]
	bx lr
	arm_func_end FUN_ov16_020fc980

	arm_func_start _ZN15CNsbResourceMan4initEi
_ZN15CNsbResourceMan4initEi: ; 0x020FC9F4
	stmfd sp!, {r4, r5, r6, lr}
	mov r6, r0
	mov r4, #0
	mov r5, r1
	add r0, r6, #0x10
	str r4, [r6, #4]
	str r4, [r6, #8]
	str r4, [r6, #0xc]
	str r4, [r6, #0x28]
	bl OS_InitMutex
	cmp r5, #0
	movle r0, r4
	ldmlefd sp!, {r4, r5, r6, pc}
	mov r1, #0x18
	mul r0, r5, r1
	sub r1, r1, #0x19
	bl _ZN10FileSystem13AllocateClearEii
	cmp r0, #0
	str r0, [r6, #4]
	moveq r0, r4
	strne r5, [r6, #8]
	strne r4, [r6, #0xc]
	movne r0, #1
	ldmfd sp!, {r4, r5, r6, pc}
	arm_func_end _ZN15CNsbResourceMan4initEi

	arm_func_start FUN_ov16_020fca54
FUN_ov16_020fca54: ; 0x020FCA54
	stmfd sp!, {r4, lr}
	mov r4, r0
	bl FUN_ov16_020fd39c
	ldr r0, [r4, #4]
	cmp r0, #0
	beq _020FCA70
	bl _ZN10FileSystem10DeallocateEPv
_020FCA70:
	mov r0, #0
	str r0, [r4, #4]
	str r0, [r4, #8]
	str r0, [r4, #0xc]
	str r0, [r4, #0x28]
	ldmfd sp!, {r4, pc}
	arm_func_end FUN_ov16_020fca54

	arm_func_start FUN_ov16_020fca88
FUN_ov16_020fca88: ; 0x020FCA88
	stmfd sp!, {r3, r4, r5, r6, r7, r8, lr}
	sub sp, sp, #0x2c
	add r5, sp, #0
	mov r8, r1
	mov r4, #0x2c
	mov r7, r2
	mov r1, r5
	mov r2, r4
	mov r0, #0
	mov r6, r3
	bl MIi_CpuClearFast
	mov r0, r5
	mov r1, r8
	mov r2, #0x20
	bl FUN_020538b0
	ldr r2, [sp, #0x48]
	mov r0, r5
	mov r1, r4
	str r7, [sp, #0x20]
	str r6, [sp, #0x24]
	str r2, [sp, #0x28]
	bl _ZN10FileSystem9CalcCRC32EPKvm
	add sp, sp, #0x2c
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, pc}
	arm_func_end FUN_ov16_020fca88

	arm_func_start FUN_ov16_020fcae8
FUN_ov16_020fcae8: ; 0x020FCAE8
	stmfd sp!, {r3, r4, lr}
	sub sp, sp, #4
	mov r4, r1
	mov r1, r2
	mov r2, r3
	ldr r12, [sp, #0x14]
	ldr r3, [sp, #0x10]
	str r12, [sp]
	bl FUN_ov16_020fca88
	str r0, [r4]
	add sp, sp, #4
	ldmfd sp!, {r3, r4, pc}
	arm_func_end FUN_ov16_020fcae8

	arm_func_start FUN_ov16_020fcb18
FUN_ov16_020fcb18: ; 0x020FCB18
	stmfd sp!, {r3, r4, r5, lr}
	mov r5, r0
	ldr r4, [r5, #4]
	ldr r12, [sp, #0x10]
	str r12, [sp]
	bl FUN_ov16_020fca88
	ldr r3, [r5, #8]
	mov r2, #0
	cmp r3, #0
	ble _020FCB68
_020FCB40:
	ldrh r1, [r4, #0x10]
	tst r1, #0x30
	ldreq r1, [r4]
	cmpeq r0, r1
	moveq r0, r4
	ldmeqfd sp!, {r3, r4, r5, pc}
	add r2, r2, #1
	cmp r2, r3
	add r4, r4, #0x18
	blt _020FCB40
_020FCB68:
	mov r0, #0
	ldmfd sp!, {r3, r4, r5, pc}
	arm_func_end FUN_ov16_020fcb18

	arm_func_start FUN_ov16_020fcb70
FUN_ov16_020fcb70: ; 0x020FCB70
	stmfd sp!, {r4, r5, r6, r7, r8, r9, r10, lr}
	sub sp, sp, #0x10
	mov r6, #0
	mov r8, r3
	mov r9, r2
	mov r10, r1
	mov r1, r9
	mov r2, r6
	mov r3, r6
	mov r4, r0
	str r8, [sp]
	mov r5, r6
	bl FUN_ov16_020fcb18
	movs r7, r0
	beq _020FCBC0
	mov r0, r4
	mov r1, r7
	bl FUN_ov16_020fd21c
	add sp, sp, #0x10
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, pc}
_020FCBC0:
	ldr r12, [r4, #8]
	cmp r12, #0
	ble _020FCC04
	ldr r3, [r4, #4]
	mov r1, #1
	mov r0, #0x18
_020FCBD8:
	mla lr, r6, r0, r3
	ldrh r2, [lr, #0x10]
	tst r2, #1
	movne r2, r1
	moveq r2, r5
	cmp r2, #0
	moveq r7, lr
	beq _020FCC08
	add r6, r6, #1
	cmp r6, r12
	blt _020FCBD8
_020FCC04:
	mvn r6, #0
_020FCC08:
	cmp r6, #0
	mov r5, #0
	addlt sp, sp, #0x10
	mov r0, r5
	ldmltfd sp!, {r4, r5, r6, r7, r8, r9, r10, pc}
	mov r1, r7
	mov r2, #0x18
	bl MIi_CpuClearFast
	add r0, r4, #0x10
	bl OS_LockMutex
	ldr r0, [sp, #0x30]
	str r5, [sp, #0xc]
	cmp r0, #0
	add r0, sp, #0xc
	beq _020FCC58
	add r3, sp, #8
	mov r1, r10
	mov r2, r9
	bl _ZN10FileSystem22ReadFileByNameDeferredEPPviPKcPa
	b _020FCC64
_020FCC58:
	mov r1, r10
	mov r2, r9
	bl _ZN10FileSystem14ReadFileByNameEPPviPKc
_020FCC64:
	mov r5, r0
	cmp r5, #0
	ble _020FCCEC
	mov r3, #0
	stmia sp, {r3, r8}
	mov r0, r4
	mov r1, r7
	mov r2, r9
	bl FUN_ov16_020fcae8
	ldr r1, [sp, #0xc]
	ldr r0, [sp, #0x30]
	stmib r7, {r1, r5}
	strb r8, [r7, #0xc]
	ldrh r2, [r7, #0x10]
	cmp r0, #0
	mov r1, #1
	orr r0, r2, #1
	strh r0, [r7, #0x10]
	strh r1, [r7, #0x12]
	strneb r1, [r7, #0xd]
	ldrnesb r0, [sp, #8]
	strneb r0, [r7, #0xf]
	bne _020FCCD4
	mov r2, #2
	mov r0, r4
	mov r1, r7
	strb r2, [r7, #0xd]
	bl FUN_ov16_020fc980
_020FCCD4:
	ldr r1, [r4, #0xc]
	mov r0, r4
	add r2, r1, #1
	mov r1, r5
	str r2, [r4, #0xc]
	bl FUN_ov16_020fc8f0
_020FCCEC:
	add r0, r4, #0x10
	bl OS_UnlockMutex
	cmp r5, #0
	movlt r7, #0
	mov r0, r7
	add sp, sp, #0x10
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, pc}
	arm_func_end FUN_ov16_020fcb70

	arm_func_start FUN_ov16_020fcd08
FUN_ov16_020fcd08: ; 0x020FCD08
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, lr}
	sub sp, sp, #0x18
	ldr r6, [sp, #0x40]
	ldr r5, [sp, #0x44]
	mov r7, r2
	mov r11, r3
	mov r2, r6
	mov r3, r5
	mov r8, r0
	str r1, [sp, #0x10]
	str r7, [sp]
	bl FUN_ov16_020fcb18
	movs r4, r0
	beq _020FCD54
	mov r0, r8
	mov r1, r4
	bl FUN_ov16_020fd21c
	add sp, sp, #0x18
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_020FCD54:
	ldr r9, [r8, #8]
	mov r12, #0
	cmp r9, #0
	ble _020FCDA0
	ldr lr, [r8, #4]
	mov r1, r12
	mov r2, #1
	mov r0, #0x18
_020FCD74:
	mla r10, r12, r0, lr
	ldrh r3, [r10, #0x10]
	tst r3, #1
	movne r3, r2
	moveq r3, r1
	cmp r3, #0
	moveq r4, r10
	beq _020FCDA4
	add r12, r12, #1
	cmp r12, r9
	blt _020FCD74
_020FCDA0:
	mvn r12, #0
_020FCDA4:
	cmp r12, #0
	mov r9, #0
	addlt sp, sp, #0x18
	mov r0, r9
	ldmltfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
	mov r1, r4
	mov r2, #0x18
	bl MIi_CpuClearFast
	add r0, r8, #0x10
	bl OS_LockMutex
	cmp r6, #0
	cmpeq r5, #0
	streqb r9, [sp, #0x48]
	mov r9, #0
	str r9, [sp, #0x14]
	cmp r11, #0
	beq _020FCE20
	ldr r3, _020FCEF4 ; =gAllocator
	ldr r0, [r3]
	cmp r0, #0
	beq _020FCE58
	ldrb r1, [sp, #0x48]
	str r6, [sp]
	str r5, [sp, #4]
	str r1, [sp, #8]
	ldrb r9, [sp, #0x4c]
	ldr r1, [sp, #0x10]
	add r2, sp, #0x14
	str r9, [sp, #0xc]
	bl _ZN7CFileIO12readDeferredEPKcPPvP10CAllocatorlmih
	b _020FCE54
_020FCE20:
	ldr r3, _020FCEF4 ; =gAllocator
	ldr r0, [r3]
	cmp r0, #0
	beq _020FCE58
	ldrb r1, [sp, #0x48]
	str r6, [sp]
	str r5, [sp, #4]
	str r1, [sp, #8]
	ldrb r9, [sp, #0x4c]
	ldr r1, [sp, #0x10]
	add r2, sp, #0x14
	str r9, [sp, #0xc]
	bl _ZN7CFileIO10readDirectEPKcPPvP10CAllocatorlmih
_020FCE54:
	mov r9, r0
_020FCE58:
	cmp r9, #0
	beq _020FCED8
	ldr r2, [sp, #0x10]
	stmia sp, {r5, r7}
	mov r0, r8
	mov r1, r4
	mov r3, r6
	bl FUN_ov16_020fcae8
	ldr r1, [sp, #0x14]
	mov r0, #1
	stmib r4, {r1, r9}
	strb r7, [r4, #0xc]
	ldrh r1, [r4, #0x10]
	cmp r11, #0
	orr r1, r1, #1
	strh r1, [r4, #0x10]
	strh r0, [r4, #0x12]
	strneb r0, [r4, #0xd]
	subne r0, r0, #2
	strneb r0, [r4, #0xf]
	bne _020FCEC0
	mov r2, #2
	mov r0, r8
	mov r1, r4
	strb r2, [r4, #0xd]
	bl FUN_ov16_020fc980
_020FCEC0:
	ldr r1, [r8, #0xc]
	mov r0, r8
	add r2, r1, #1
	mov r1, r9
	str r2, [r8, #0xc]
	bl FUN_ov16_020fc8f0
_020FCED8:
	add r0, r8, #0x10
	bl OS_UnlockMutex
	cmp r9, #0
	moveq r4, #0
	mov r0, r4
	add sp, sp, #0x18
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_020FCEF4: .word gAllocator
	arm_func_end FUN_ov16_020fcd08

	arm_func_start FUN_ov16_020fcef8
FUN_ov16_020fcef8: ; 0x020FCEF8
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, lr}
	sub sp, sp, #0x18
	ldr r6, [sp, #0x44]
	mov r7, r2
	str r1, [sp, #0x10]
	mov r11, r3
	ldr r5, [sp, #0x48]
	mov r1, r7
	mov r2, r6
	mov r3, r5
	mov r8, r0
	str r11, [sp]
	bl FUN_ov16_020fcb18
	movs r4, r0
	beq _020FCF48
	mov r0, r8
	mov r1, r4
	bl FUN_ov16_020fd21c
	add sp, sp, #0x18
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_020FCF48:
	ldr r9, [r8, #8]
	mov r12, #0
	cmp r9, #0
	ble _020FCF94
	ldr lr, [r8, #4]
	mov r1, r12
	mov r2, #1
	mov r0, #0x18
_020FCF68:
	mla r10, r12, r0, lr
	ldrh r3, [r10, #0x10]
	tst r3, #1
	movne r3, r2
	moveq r3, r1
	cmp r3, #0
	moveq r4, r10
	beq _020FCF98
	add r12, r12, #1
	cmp r12, r9
	blt _020FCF68
_020FCF94:
	mvn r12, #0
_020FCF98:
	cmp r12, #0
	addlt sp, sp, #0x18
	movlt r0, #0
	ldmltfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
	mov r9, #0
	mov r0, r9
	mov r1, r4
	mov r2, #0x18
	bl MIi_CpuClearFast
	add r0, r8, #0x10
	bl OS_LockMutex
	mov r0, r7
	bl strlen
	sub r0, r0, #1
	ldrsb r0, [r7, r0]
	mov r10, #0
	cmp r0, #0x5f
	ldr r0, [sp, #0x40]
	moveq r9, #1
	str r10, [sp, #0x14]
	cmp r0, #0
	beq _020FD020
	ldr r3, _020FD0F0 ; =gAllocator
	ldr r0, [r3]
	cmp r0, #0
	beq _020FD050
	str r6, [sp]
	ldrb r10, [sp, #0x4c]
	stmib sp, {r5, r9}
	ldr r1, [sp, #0x10]
	add r2, sp, #0x14
	str r10, [sp, #0xc]
	bl _ZN7CFileIO12readDeferredEPKcPPvP10CAllocatorlmih
	b _020FD04C
_020FD020:
	ldr r3, _020FD0F0 ; =gAllocator
	ldr r0, [r3]
	cmp r0, #0
	beq _020FD050
	str r6, [sp]
	ldrb r10, [sp, #0x4c]
	stmib sp, {r5, r9}
	ldr r1, [sp, #0x10]
	add r2, sp, #0x14
	str r10, [sp, #0xc]
	bl _ZN7CFileIO10readDirectEPKcPPvP10CAllocatorlmih
_020FD04C:
	mov r10, r0
_020FD050:
	cmp r10, #0
	beq _020FD0D4
	stmia sp, {r5, r11}
	mov r0, r8
	mov r1, r4
	mov r2, r7
	mov r3, r6
	bl FUN_ov16_020fcae8
	ldr r1, [sp, #0x14]
	ldr r0, [sp, #0x40]
	stmib r4, {r1, r10}
	strb r11, [r4, #0xc]
	ldrh r2, [r4, #0x10]
	cmp r0, #0
	mov r1, #1
	orr r0, r2, #1
	strh r0, [r4, #0x10]
	strh r1, [r4, #0x12]
	strneb r1, [r4, #0xd]
	subne r0, r1, #2
	strneb r0, [r4, #0xf]
	bne _020FD0BC
	mov r2, #2
	mov r0, r8
	mov r1, r4
	strb r2, [r4, #0xd]
	bl FUN_ov16_020fc980
_020FD0BC:
	ldr r1, [r8, #0xc]
	mov r0, r8
	add r2, r1, #1
	mov r1, r10
	str r2, [r8, #0xc]
	bl FUN_ov16_020fc8f0
_020FD0D4:
	add r0, r8, #0x10
	bl OS_UnlockMutex
	cmp r10, #0
	moveq r4, #0
	mov r0, r4
	add sp, sp, #0x18
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_020FD0F0: .word gAllocator
	arm_func_end FUN_ov16_020fcef8

	arm_func_start FUN_ov16_020fd0f4
FUN_ov16_020fd0f4: ; 0x020FD0F4
	stmfd sp!, {r3, lr}
	sub sp, sp, #0x10
	mov r3, #0
	str r3, [sp]
	str r3, [sp, #4]
	str r3, [sp, #8]
	mov r3, #1
	str r3, [sp, #0xc]
	bl FUN_ov16_020fcd08
	add sp, sp, #0x10
	ldmfd sp!, {r3, pc}
	arm_func_end FUN_ov16_020fd0f4

	arm_func_start FUN_ov16_020fd120
FUN_ov16_020fd120: ; 0x020FD120
	stmfd sp!, {r4, r5, r6, r7, r8, r9, r10, lr}
	mov r8, r0
	ldr r0, [r8, #8]
	mov r4, #0
	mov r6, r2
	mov r7, r1
	mov r5, r3
	mov lr, r4
	cmp r0, #0
	mov r2, r4
	ble _020FD184
	ldr r9, [r8, #4]
	mov r3, #1
	mov r1, #0x18
_020FD158:
	mla r10, lr, r1, r9
	ldrh r12, [r10, #0x10]
	tst r12, #1
	movne r12, r3
	moveq r12, r2
	cmp r12, #0
	moveq r4, r10
	beq _020FD188
	add lr, lr, #1
	cmp lr, r0
	blt _020FD158
_020FD184:
	mvn lr, #0
_020FD188:
	cmp lr, #0
	mov r0, #0
	ldmltfd sp!, {r4, r5, r6, r7, r8, r9, r10, pc}
	mov r1, r4
	mov r2, #0x18
	bl MIi_CpuClearFast
	add r0, r8, #0x10
	bl OS_LockMutex
	cmp r6, #0
	cmpne r7, #0
	beq _020FD200
	str r7, [r4, #4]
	str r6, [r4, #8]
	strb r5, [r4, #0xc]
	ldrh r1, [r4, #0x10]
	mov r0, #2
	mov r2, #1
	orr r1, r1, #0x11
	strh r1, [r4, #0x10]
	strb r0, [r4, #0xd]
	mov r0, r8
	mov r1, r4
	strh r2, [r4, #0x12]
	bl FUN_ov16_020fc980
	ldr r1, [r8, #0xc]
	mov r0, r8
	add r2, r1, #1
	mov r1, r6
	str r2, [r8, #0xc]
	bl FUN_ov16_020fc8f0
_020FD200:
	add r0, r8, #0x10
	bl OS_UnlockMutex
	cmp r6, #0
	cmpne r7, #0
	moveq r4, #0
	mov r0, r4
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, pc}
	arm_func_end FUN_ov16_020fd120

	arm_func_start FUN_ov16_020fd21c
FUN_ov16_020fd21c: ; 0x020FD21C
	stmfd sp!, {r3, r4, r5, lr}
	mov r4, r1
	ldrh r1, [r4, #0x10]
	mov r5, r0
	tst r1, #1
	moveq r0, #1
	movne r0, #0
	cmp r0, #0
	movne r0, #0
	ldmnefd sp!, {r3, r4, r5, pc}
	add r0, r5, #0x10
	bl OS_LockMutex
	add r0, r5, #0x10
	bl OS_LockMutex
	ldrh r1, [r4, #0x12]
	add r0, r5, #0x10
	add r1, r1, #1
	strh r1, [r4, #0x12]
	bl OS_UnlockMutex
	add r0, r5, #0x10
	bl OS_UnlockMutex
	mov r0, r4
	ldmfd sp!, {r3, r4, r5, pc}
	arm_func_end FUN_ov16_020fd21c

	arm_func_start FUN_ov16_020fd278
FUN_ov16_020fd278: ; 0x020FD278
	stmfd sp!, {r4, r5, r6, lr}
	mov r6, r0
	mov r5, r1
	add r0, r6, #0x10
	bl OS_LockMutex
	cmp r5, #0
	ldrne r1, [r5, #4]
	cmpne r1, #0
	beq _020FD2A8
	ldrh r0, [r5, #0x10]
	tst r0, #1
	bne _020FD2B0
_020FD2A8:
	mvn r4, #0
	b _020FD33C
_020FD2B0:
	ldrb r0, [r5, #0xd]
	cmp r0, #0
	beq _020FD2D0
	cmp r0, #1
	beq _020FD2DC
	cmp r0, #2
	beq _020FD2D4
	b _020FD32C
_020FD2D0:
	b _020FD2A8
_020FD2D4:
	mov r4, #0
	b _020FD33C
_020FD2DC:
	ldrsb r0, [r5, #0xf]
	cmp r0, #0
	blt _020FD2F0
	bl _ZN10FileSystem10IsFileBusyEa
	b _020FD308
_020FD2F0:
	ldr r0, _020FD34C ; =gAllocator
	ldr r0, [r0]
	cmp r0, #0
	mvneq r4, #0
	beq _020FD30C
	bl _ZN7CFileIO11tryFinalizeEPv
_020FD308:
	mov r4, r0
_020FD30C:
	cmp r4, #0
	bne _020FD33C
	mov r2, #2
	mov r0, r6
	mov r1, r5
	strb r2, [r5, #0xd]
	bl FUN_ov16_020fc980
	b _020FD33C
_020FD32C:
	add r0, r6, #0x10
	bl OS_UnlockMutex
	mvn r0, #0
	ldmfd sp!, {r4, r5, r6, pc}
_020FD33C:
	add r0, r6, #0x10
	bl OS_UnlockMutex
	mov r0, r4
	ldmfd sp!, {r4, r5, r6, pc}
_020FD34C: .word gAllocator
	arm_func_end FUN_ov16_020fd278

	arm_func_start FUN_ov16_020fd350
FUN_ov16_020fd350: ; 0x020FD350
	stmfd sp!, {r3, r4, r5, lr}
	movs r4, r1
	mov r5, r0
	ldmeqfd sp!, {r3, r4, r5, pc}
	add r0, r5, #0x10
	bl OS_LockMutex
	ldrh r1, [r4, #0x12]
	add r0, r5, #0x10
	add r1, r1, #0xff
	add r1, r1, #0xff00
	strh r1, [r4, #0x12]
	bl OS_UnlockMutex
	ldrh r0, [r4, #0x12]
	cmp r0, #0
	ldmnefd sp!, {r3, r4, r5, pc}
	mov r0, r5
	mov r1, r4
	bl FUN_ov16_020fd3e0
	ldmfd sp!, {r3, r4, r5, pc}
	arm_func_end FUN_ov16_020fd350

	arm_func_start FUN_ov16_020fd39c
FUN_ov16_020fd39c: ; 0x020FD39C
	stmfd sp!, {r4, r5, r6, lr}
	mov r6, r0
	ldr r0, [r6, #8]
	ldr r4, [r6, #4]
	cmp r0, #0
	mov r5, #0
	cmpgt r0, #0
	ldmlefd sp!, {r4, r5, r6, pc}
_020FD3BC:
	mov r0, r6
	mov r1, r4
	bl FUN_ov16_020fd3e0
	ldr r0, [r6, #8]
	add r5, r5, #1
	cmp r5, r0
	add r4, r4, #0x18
	blt _020FD3BC
	ldmfd sp!, {r4, r5, r6, pc}
	arm_func_end FUN_ov16_020fd39c

	arm_func_start FUN_ov16_020fd3e0
FUN_ov16_020fd3e0: ; 0x020FD3E0
	stmfd sp!, {r3, r4, r5, lr}
	movs r4, r1
	mov r5, r0
	ldmeqfd sp!, {r3, r4, r5, pc}
	bl FUN_ov16_020fd5ec
	ldr r0, [r4, #4]
	cmp r0, #0
	beq _020FD490
	ldrh r0, [r4, #0x10]
	tst r0, #0x20
	beq _020FD41C
	ldr r1, [r4, #0x14]
	mov r0, r5
	bl FUN_ov16_020fd350
	b _020FD484
_020FD41C:
	tst r0, #0x10
	ldr r1, [r4, #8]
	mov r0, r5
	beq _020FD434
	bl FUN_ov16_020fc900
	b _020FD484
_020FD434:
	bl FUN_ov16_020fc900
	ldrb r0, [r4, #0xd]
	cmp r0, #1
	bne _020FD478
	ldrsb r0, [r4, #0xf]
	cmp r0, #0
	blt _020FD458
	bl _ZN10FileSystem5PanicEv
	b _020FD484
_020FD458:
	ldr r0, _020FD4A4 ; =gAllocator
	ldr r1, [r4, #4]
	ldr r0, [r0]
	cmp r0, #0
	beq _020FD484
	mov r2, #1
	bl _ZN7CFileIO5closeEPvi
	b _020FD484
_020FD478:
	ldr r1, [r4, #4]
	ldr r0, _020FD4A4 ; =gAllocator
	bl _ZN10CAllocator10deallocateEPv
_020FD484:
	ldr r0, [r5, #0xc]
	sub r0, r0, #1
	str r0, [r5, #0xc]
_020FD490:
	mov r1, r4
	mov r0, #0
	mov r2, #0x18
	bl MIi_CpuClearFast
	ldmfd sp!, {r3, r4, r5, pc}
_020FD4A4: .word gAllocator
	arm_func_end FUN_ov16_020fd3e0

	arm_func_start _ZN15CNsbResourceManC1Ev
_ZN15CNsbResourceManC1Ev: ; 0x020FD4A8
	ldr r2, _020FD4C8 ; =_ZTV15CNsbResourceMan+0x8
	mov r1, #0
	str r2, [r0]
	str r1, [r0, #4]
	str r1, [r0, #8]
	str r1, [r0, #0xc]
	str r1, [r0, #0x28]
	bx lr
_020FD4C8: .word _ZTV15CNsbResourceMan+0x8
	arm_func_end _ZN15CNsbResourceManC1Ev

	arm_func_start FUN_ov16_020fd4cc
FUN_ov16_020fd4cc: ; 0x020FD4CC
	stmfd sp!, {r4, r5, r6, lr}
	movs r5, r1
	mov r6, r0
	moveq r0, #0
	ldmeqfd sp!, {r4, r5, r6, pc}
	ldr r0, [r5, #4]
	cmp r0, #0
	moveq r0, #0
	ldmeqfd sp!, {r4, r5, r6, pc}
	add r0, r6, #0x10
	bl OS_LockMutex
	ldrb r0, [r5, #0xe]
	mov r4, #1
	cmp r0, #0
	addne r0, r0, #1
	strneb r0, [r5, #0xe]
	bne _020FD550
	ldrb r0, [r5, #0xc]
	mov r1, #0
	cmp r0, #3
	blo _020FD528
	cmp r0, #0xb
	movlo r1, r4
_020FD528:
	cmp r1, #0
	beq _020FD550
	ldr r0, _020FD560 ; =g3DVramMan
	ldr r1, [r5, #4]
	ldr r0, [r0]
	bl FUN_02051b84
	cmp r0, #0
	movne r0, #1
	moveq r4, #0
	strneb r0, [r5, #0xe]
_020FD550:
	add r0, r6, #0x10
	bl OS_UnlockMutex
	mov r0, r4
	ldmfd sp!, {r4, r5, r6, pc}
_020FD560: .word g3DVramMan
	arm_func_end FUN_ov16_020fd4cc

	arm_func_start FUN_ov16_020fd564
FUN_ov16_020fd564: ; 0x020FD564
	stmfd sp!, {r3, r4, r5, lr}
	movs r4, r1
	ldrne r2, [r4, #4]
	mov r5, r0
	cmpne r2, #0
	ldmeqfd sp!, {r3, r4, r5, pc}
	bl FUN_ov16_020fd660
	cmp r0, #0
	ldmeqfd sp!, {r3, r4, r5, pc}
	add r0, r5, #0x10
	bl OS_LockMutex
	ldrb r0, [r4, #0xc]
	mov r1, #0
	cmp r0, #3
	blo _020FD5A8
	cmp r0, #0xb
	movlo r1, #1
_020FD5A8:
	cmp r1, #0
	beq _020FD5DC
	ldrb r0, [r4, #0xe]
	sub r0, r0, #1
	ands r0, r0, #0xff
	strb r0, [r4, #0xe]
	bne _020FD5DC
	ldr r0, _020FD5E8 ; =g3DVramMan
	ldr r1, [r4, #4]
	ldr r0, [r0]
	bl FUN_02051b58
	mov r0, #0
	strb r0, [r4, #0xe]
_020FD5DC:
	add r0, r5, #0x10
	bl OS_UnlockMutex
	ldmfd sp!, {r3, r4, r5, pc}
_020FD5E8: .word g3DVramMan
	arm_func_end FUN_ov16_020fd564

	arm_func_start FUN_ov16_020fd5ec
FUN_ov16_020fd5ec: ; 0x020FD5EC
	stmfd sp!, {r3, r4, r5, lr}
	movs r4, r1
	ldrne r2, [r4, #4]
	mov r5, r0
	cmpne r2, #0
	ldmeqfd sp!, {r3, r4, r5, pc}
	bl FUN_ov16_020fd660
	cmp r0, #0
	ldmeqfd sp!, {r3, r4, r5, pc}
	add r0, r5, #0x10
	bl OS_LockMutex
	ldrb r0, [r4, #0xc]
	mov r1, #0
	cmp r0, #3
	blo _020FD630
	cmp r0, #0xb
	movlo r1, #1
_020FD630:
	cmp r1, #0
	beq _020FD648
	ldr r0, _020FD65C ; =g3DVramMan
	ldr r1, [r4, #4]
	ldr r0, [r0]
	bl FUN_02051b58
_020FD648:
	mov r1, #0
	add r0, r5, #0x10
	strb r1, [r4, #0xe]
	bl OS_UnlockMutex
	ldmfd sp!, {r3, r4, r5, pc}
_020FD65C: .word g3DVramMan
	arm_func_end FUN_ov16_020fd5ec

	arm_func_start FUN_ov16_020fd660
FUN_ov16_020fd660: ; 0x020FD660
	stmfd sp!, {r3, r4, r5, lr}
	movs r4, r1
	mov r5, r0
	moveq r0, #0
	ldmeqfd sp!, {r3, r4, r5, pc}
	add r0, r5, #0x10
	bl OS_LockMutex
	ldrb r0, [r4, #0xe]
	mov r4, #1
	cmp r0, #0
	add r0, r5, #0x10
	moveq r4, #0
	bl OS_UnlockMutex
	mov r0, r4
	ldmfd sp!, {r3, r4, r5, pc}
	arm_func_end FUN_ov16_020fd660

	arm_func_start FUN_ov16_020fd69c
FUN_ov16_020fd69c: ; 0x020FD69C
	ldrb r1, [r1, #0xc]
	mov r0, #0
	cmp r1, #0xc
	bxlo lr
	cmp r1, #0x10
	movlo r0, #1
	bx lr
	arm_func_end FUN_ov16_020fd69c

	arm_func_start FUN_ov16_020fd6b8
FUN_ov16_020fd6b8: ; 0x020FD6B8
	stmfd sp!, {r4, lr}
	mov r4, r1
	bl FUN_ov16_020fd69c
	cmp r0, #0
	ldrne r0, [r4, #4]
	ldrne r0, [r0]
	mvneq r0, #0
	ldmfd sp!, {r4, pc}
	arm_func_end FUN_ov16_020fd6b8

	arm_func_start FUN_ov16_020fd6d8
FUN_ov16_020fd6d8: ; 0x020FD6D8
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, lr}
	sub sp, sp, #4
	mov r6, r2
	mov r10, r0
	mov r9, r1
	mov r8, r3
	mov r4, #0
	bl FUN_ov16_020fd6b8
	cmp r6, r0
	addge sp, sp, #4
	movge r0, r4
	ldmgefd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, pc}
	mov r7, r4
	mov r0, r10
	mov r1, r9
	str r7, [sp]
	bl FUN_ov16_020fd278
	cmp r0, #0
	addne sp, sp, #4
	movne r0, r7
	ldmnefd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, pc}
	ldr r0, [r9, #4]
	mov r1, r6
	bl PAC_GetPtr
	mov r5, r0
	ldr r0, [r9, #4]
	mov r1, r6
	bl PAC_GetSize
	mov r6, r0
	cmp r5, #0
	cmpne r6, #0
	addeq sp, sp, #4
	moveq r0, #0
	ldmeqfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, pc}
	add r2, sp, #0
	mov r0, r10
	mov r1, r5
	bl FUN_ov16_020fc918
	cmp r0, #0
	blt _020FD78C
	ldr r1, [sp]
	mov r0, r10
	bl FUN_ov16_020fd21c
	add sp, sp, #4
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, pc}
_020FD78C:
	ldr r12, [r10, #8]
	cmp r12, #0
	ble _020FD7D0
	ldr r3, [r10, #4]
	mov r1, #1
	mov r0, #0x18
_020FD7A4:
	mla lr, r7, r0, r3
	ldrh r2, [lr, #0x10]
	tst r2, #1
	movne r2, r1
	moveq r2, r4
	cmp r2, #0
	streq lr, [sp]
	beq _020FD7D4
	add r7, r7, #1
	cmp r7, r12
	blt _020FD7A4
_020FD7D0:
	mvn r7, #0
_020FD7D4:
	cmp r7, #0
	addlt sp, sp, #4
	mov r0, #0
	ldmltfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, pc}
	ldr r1, [sp]
	mov r2, #0x18
	bl MIi_CpuClearFast
	add r0, r10, #0x10
	bl OS_LockMutex
	ldr r0, [sp]
	mov r4, #2
	str r5, [r0, #4]
	ldr r0, [sp]
	mov r3, #1
	str r6, [r0, #8]
	ldr r1, [sp]
	mov r0, r10
	strb r8, [r1, #0xc]
	ldr r5, [sp]
	mov r1, r9
	ldrh r2, [r5, #0x10]
	orr r2, r2, #0x21
	strh r2, [r5, #0x10]
	ldr r2, [sp]
	strb r4, [r2, #0xd]
	ldr r2, [sp]
	strh r3, [r2, #0x12]
	ldr r2, [sp]
	str r9, [r2, #0x14]
	bl FUN_ov16_020fd21c
	ldr r1, [sp]
	mov r0, r10
	bl FUN_ov16_020fc980
	ldr r1, [r10, #0xc]
	add r0, r10, #0x10
	add r1, r1, #1
	str r1, [r10, #0xc]
	bl OS_UnlockMutex
	ldr r0, [sp]
	add sp, sp, #4
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, pc}
	arm_func_end FUN_ov16_020fd6d8

	arm_func_start FUN_ov16_020fd878
FUN_ov16_020fd878: ; 0x020FD878
	stmfd sp!, {r3, r4, r5, lr}
	movs r4, r1
	mov r5, r0
	moveq r0, #0
	ldmeqfd sp!, {r3, r4, r5, pc}
	ldr r0, [r4, #4]
	cmp r0, #0
	moveq r0, #0
	ldmeqfd sp!, {r3, r4, r5, pc}
	add r0, r5, #0x10
	bl OS_LockMutex
	ldrb r0, [r4, #0xe]
	cmp r0, #0
	beq _020FD8D8
	ldrh r0, [r4, #0x10]
	tst r0, #0x100
	bne _020FD8D8
	ldr r0, _020FD8E8 ; =g3DVramMan
	ldr r1, [r4, #4]
	ldr r0, [r0]
	bl FUN_02051b58
	ldrh r0, [r4, #0x10]
	orr r0, r0, #0x100
	strh r0, [r4, #0x10]
_020FD8D8:
	add r0, r5, #0x10
	bl OS_UnlockMutex
	mov r0, #1
	ldmfd sp!, {r3, r4, r5, pc}
_020FD8E8: .word g3DVramMan
	arm_func_end FUN_ov16_020fd878

	arm_func_start FUN_ov16_020fd8ec
FUN_ov16_020fd8ec: ; 0x020FD8EC
	stmfd sp!, {r3, r4, r5, lr}
	movs r4, r1
	mov r5, r0
	moveq r0, #0
	ldmeqfd sp!, {r3, r4, r5, pc}
	ldr r0, [r4, #4]
	cmp r0, #0
	moveq r0, #0
	ldmeqfd sp!, {r3, r4, r5, pc}
	add r0, r5, #0x10
	bl OS_LockMutex
	ldrb r0, [r4, #0xe]
	cmp r0, #0
	beq _020FD950
	ldrh r0, [r4, #0x10]
	tst r0, #0x100
	beq _020FD950
	ldr r0, _020FD960 ; =g3DVramMan
	ldr r1, [r4, #4]
	ldr r0, [r0]
	bl FUN_02051b28
	ldrh r1, [r4, #0x10]
	ldr r0, _020FD964 ; =0x0000FEFF
	and r0, r1, r0
	strh r0, [r4, #0x10]
_020FD950:
	add r0, r5, #0x10
	bl OS_UnlockMutex
	mov r0, #1
	ldmfd sp!, {r3, r4, r5, pc}
_020FD960: .word g3DVramMan
_020FD964: .word 0x0000FEFF
	arm_func_end FUN_ov16_020fd8ec

	arm_func_start FUN_ov16_020fd968
FUN_ov16_020fd968: ; 0x020FD968
	stmfd sp!, {r4, lr}
	ldr r1, _020FD98C ; =_ZTV15CNsbResourceMan+0x8
	mov r4, r0
	str r1, [r4]
	bl FUN_ov16_020fca54
	mov r0, r4
	bl _ZdlPv
	mov r0, r4
	ldmfd sp!, {r4, pc}
_020FD98C: .word _ZTV15CNsbResourceMan+0x8
	arm_func_end FUN_ov16_020fd968

	arm_func_start FUN_ov16_020fd990
FUN_ov16_020fd990: ; 0x020FD990
	stmfd sp!, {r4, lr}
	ldr r1, _020FD9AC ; =_ZTV15CNsbResourceMan+0x8
	mov r4, r0
	str r1, [r4]
	bl FUN_ov16_020fca54
	mov r0, r4
	ldmfd sp!, {r4, pc}
_020FD9AC: .word _ZTV15CNsbResourceMan+0x8
	arm_func_end FUN_ov16_020fd990

	.section .init, 4
	arm_func_start __sinit_CNsbResourceMan.cpp
__sinit_CNsbResourceMan.cpp: ; 0x0211800C
	stmfd sp!, {r3, r4, r5, lr}
	mov r5, #0x2000
	mov r0, r5
	bl FX_Sqrt
	ldr r4, _02118054 ; =0x02118904
	str r0, [r4, #0x14]
	ldr r0, _02118058 ; =0x00009CCD
	bl FX_Sqrt
	mov r1, #0x800
	str r0, [r4, #0x10]
	ldr r0, _0211805C ; =0x0000EA3C
	str r1, [r4, #0xc]
	str r0, [r4, #8]
	add r0, r5, #0x4e0000
	str r0, [r4, #4]
	add r0, r1, #0x840000
	str r0, [r4]
	ldmfd sp!, {r3, r4, r5, pc}
_02118054: .word ov16_02118904
_02118058: .word 0x00009CCD
_0211805C: .word 0x0000EA3C
	arm_func_end __sinit_CNsbResourceMan.cpp

	.section .ctor, 4
#pragma force_active on
	.word __sinit_CNsbResourceMan.cpp

	.data
	.global ov16_02118904
ov16_02118904:
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.global _ZTV15CNsbResourceMan
_ZTV15CNsbResourceMan:
	.byte 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00
	.word FUN_ov16_020fd990
	.word FUN_ov16_020fd968
