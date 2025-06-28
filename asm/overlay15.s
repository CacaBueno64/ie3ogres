
	.include "/macros/function.inc"
	.include "/include/overlay15.inc"

	.text
	arm_func_start FUN_ov15_020bcb40
FUN_ov15_020bcb40: ; 0x020BCB40
	ldr r1, _020BCB4C ; =0x020E6D40
	str r0, [r1, #0x48]
	bx lr
_020BCB4C: .word ov15_020E6D40
	arm_func_end FUN_ov15_020bcb40

	arm_func_start FUN_ov15_020bcb50
FUN_ov15_020bcb50: ; 0x020BCB50
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, lr}
	ldr r1, _020BCC40 ; =0x020E6D40
	ldr r2, _020BCC40 ; =0x020E6D40
	ldr r1, [r1, #0x50]
	str r0, [r2, #0x4c]
	cmp r1, #0
	mov r1, #0
	str r1, [r2, #0x50]
	str r1, [r2, #0x10]
	str r1, [r2, #0x2c]
	str r1, [r2, #0x70]
	str r1, [r2, #0x74]
	mov r5, #0
	mov r3, #1
	moveq r3, r5
	str r1, [r2, #0x1c]
	cmp r3, #0
	ldmeqfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
	ldr r0, _020BCC44 ; =0x020E6E58
	mov r2, #0x60
	bl MI_CpuFill8
	ldr r0, _020BCC48 ; =0x020939a4
	ldr r4, [r0, #8]
	cmp r4, #0
	beq _020BCBFC
_020BCBB4:
	ldr r1, [r4, #0xa4]
	cmp r1, #0
	ldrne r0, [r1]
	cmpne r0, #0
	beq _020BCBF0
	ldrb r0, [r1, #8]
	cmp r0, #0xa
	cmpne r0, #0xb
	strneb r5, [r1, #8]
	ldr r0, [r1, #4]
	cmp r0, #0
	beq _020BCBF0
	str r5, [r1, #4]
	ldr r0, [r1]
	bl OS_WakeupThreadDirect
_020BCBF0:
	ldr r4, [r4, #0x68]
	cmp r4, #0
	bne _020BCBB4
_020BCBFC:
	ldr r4, _020BCC4C ; =0x020E7538
	ldr r9, _020BCC40 ; =0x020E6D40
	mov r6, #0
	mov r8, #0x38
_020BCC0C:
	mla r7, r6, r8, r4
	ldrh r0, [r7, #4]
	cmp r0, #0
	beq _020BCC2C
	ldr r0, [r7, #0x34]
	ldr r1, [r9, #0x44]
	blx r1
	strh r5, [r7, #4]
_020BCC2C:
	add r6, r6, #1
	cmp r6, #8
	blt _020BCC0C
	bl FUN_ov15_020da7e4
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
_020BCC40: .word ov15_020E6D40
_020BCC44: .word ov15_020E6E58
_020BCC48: .word 0x020939a4
_020BCC4C: .word ov15_020E7538
	arm_func_end FUN_ov15_020bcb50

	arm_func_start FUN_ov15_020bcc50
FUN_ov15_020bcc50: ; 0x020BCC50
	stmfd sp!, {r3, lr}
	ldr r0, _020BCC74 ; =0x020E6D40
	ldr r0, [r0, #0x24]
	cmp r0, #0
	bne _020BCC6C
	bl OS_YieldThread
	ldmfd sp!, {r3, pc}
_020BCC6C:
	bl OS_Sleep
	ldmfd sp!, {r3, pc}
_020BCC74: .word ov15_020E6D40
	arm_func_end FUN_ov15_020bcc50

	arm_func_start FUN_ov15_020bcc78
FUN_ov15_020bcc78: ; 0x020BCC78
	bx lr
	arm_func_end FUN_ov15_020bcc78

	arm_func_start FUN_ov15_020bcc7c
FUN_ov15_020bcc7c: ; 0x020BCC7C
	mov r0, #1
	bx lr
	arm_func_end FUN_ov15_020bcc7c

	arm_func_start FUN_ov15_020bcc84
FUN_ov15_020bcc84: ; 0x020BCC84
	stmfd sp!, {r4, r5, r6, r7, r8, lr}
	sub sp, sp, #8
	mov r4, r0
	ldr r0, _020BCE48 ; =_version_UBIQUITOUS_CPS
	ldr r5, _020BCE4C ; =0x020E6D40
	bl OSi_ReferSymbol
	ldr r1, [r4, #0x18]
	ldr r0, [r4, #0x14]
	cmp r1, #0
	cmpeq r0, #0
	mov r6, #0
	bne _020BCCB8
	bl FUN_02003410
_020BCCB8:
	str r0, [r5, #0x78]
	str r1, [r5, #0x7c]
	ldr r0, _020BCE50 ; =0x6C078965
	ldr r1, _020BCE54 ; =0x5D588B65
	str r0, [r5, #0x80]
	ldr r0, _020BCE58 ; =0x00269EC3
	str r1, [r5, #0x84]
	str r0, [r5, #0x88]
	str r6, [r5, #0x8c]
	ldr r1, [r4, #4]
	cmp r1, #0
	ldrne r0, [r4, #8]
	cmpne r0, #0
	strne r1, [r5, #0x14]
	strne r0, [r5, #0x44]
	ldreq r0, _020BCE5C ; =FUN_ov15_020bcc78
	streq r0, [r5, #0x14]
	streq r0, [r5, #0x44]
	ldr r0, [r4]
	str r0, [r5, #0xc]
	ldr r0, [r4, #0x24]
	cmp r0, #0
	ldreq r0, _020BCE60 ; =0x000005B4
	strh r0, [r5, #4]
	ldr r0, [r4, #0x28]
	str r0, [r5, #0x38]
	ldr r0, [r4, #0x2c]
	str r0, [r5, #0x24]
	ldr r0, [r4, #0xc]
	cmp r0, #0
	ldreq r0, _020BCE5C ; =FUN_ov15_020bcc78
	str r0, [r5, #0x28]
	ldr r0, [r4, #0x10]
	cmp r0, #0
	ldreq r0, _020BCE64 ; =FUN_ov15_020bcc7c
	str r0, [r5, #0x18]
	ldr r0, [r4, #0x1c]
	str r0, [r5, #0x20]
	ldr r0, [r4, #0x20]
	mov r4, #0
	str r0, [r5, #0x5c]
	str r4, [r5, #0x64]
	str r4, [r5, #0x60]
	ldr r2, [r5, #0x80]
	ldr r0, [r5, #0x78]
	ldr r1, [r5, #0x7c]
	umull r6, r3, r2, r0
	mla r3, r2, r1, r3
	ldr r1, [r5, #0x84]
	ldr r2, [r5, #0x88]
	mla r3, r1, r0, r3
	ldr r1, [r5, #0x8c]
	adds r6, r2, r6
	ldr r0, _020BCE68 ; =0x00000F88
	adc r2, r1, r3
	umull r0, r1, r2, r0
	str r6, [r5, #0x78]
	str r2, [r5, #0x7c]
	add r1, r1, #0x400
	ldr r0, _020BCE6C ; =0x020E6DA8
	strh r1, [r5, #6]
	bl FUN_02003f38
	strb r4, [r5, #1]
	mov r8, #0x800
	ldr r7, _020BCE70 ; =0x020E7178
	ldr r5, _020BCE74 ; =0x020E4340
	str r8, [sp]
	ldr r2, [r5]
	ldr r1, _020BCE78 ; =FUN_ov15_020c0178
	str r2, [sp, #4]
	ldr r3, _020BCE7C ; =0x020E8F00
	mov r0, r7
	mov r2, r4
	bl OS_CreateThread
	str r8, [sp]
	ldr r0, [r5]
	ldr r6, _020BCE80 ; =0x020E70B8
	str r0, [sp, #4]
	ldr r1, _020BCE84 ; =FUN_ov15_020c0ef4
	ldr r3, _020BCE88 ; =0x020E8700
	mov r0, r6
	mov r2, r4
	bl OS_CreateThread
	mov r0, r7
	bl OS_WakeupThreadDirect
	mov r0, r6
	bl OS_WakeupThreadDirect
	ldr r0, _020BCE8C ; =0x020E6DD0
	bl OS_CreateAlarm
	str r8, [sp]
	ldr r0, [r5]
	ldr r1, _020BCE90 ; =FUN_ov15_020c1428
	sub r0, r0, #1
	str r0, [sp, #4]
	ldr r0, _020BCE94 ; =0x020E6FF8
	ldr r3, _020BCE98 ; =0x020E7F00
	mov r2, r4
	bl OS_CreateThread
	add sp, sp, #8
	ldmfd sp!, {r4, r5, r6, r7, r8, pc}
_020BCE48: .word _version_UBIQUITOUS_CPS
_020BCE4C: .word ov15_020E6D40
_020BCE50: .word 0x6C078965
_020BCE54: .word 0x5D588B65
_020BCE58: .word 0x00269EC3
_020BCE5C: .word FUN_ov15_020bcc78
_020BCE60: .word 0x000005B4
_020BCE64: .word FUN_ov15_020bcc7c
_020BCE68: .word 0x00000F88
_020BCE6C: .word ov15_020E6DA8
_020BCE70: .word ov15_020E7178
_020BCE74: .word ov15_020E4340
_020BCE78: .word FUN_ov15_020c0178
_020BCE7C: .word ov15_020E8F00
_020BCE80: .word ov15_020E70B8
_020BCE84: .word FUN_ov15_020c0ef4
_020BCE88: .word ov15_020E8700
_020BCE8C: .word ov15_020E6DD0
_020BCE90: .word FUN_ov15_020c1428
_020BCE94: .word ov15_020E6FF8
_020BCE98: .word ov15_020E7F00
	arm_func_end FUN_ov15_020bcc84

	arm_func_start FUN_ov15_020bce9c
FUN_ov15_020bce9c: ; 0x020BCE9C
	stmfd sp!, {r4, r5, r6, lr}
	bl OS_DisableInterrupts
	ldr r4, _020BCEE8 ; =0x020E70B8
	mov r5, r0
	mov r0, r4
	bl OS_IsThreadTerminated
	movs r6, r0
	ldreq r1, _020BCEEC ; =0x020E6D40
	ldreq r0, [r1, #0x58]
	cmpeq r0, #0
	bne _020BCED8
	mov r2, #1
	mov r0, r4
	str r2, [r1, #0x58]
	bl OS_WakeupThreadDirect
_020BCED8:
	mov r0, r5
	bl OS_RestoreInterrupts
	mov r0, r6
	ldmfd sp!, {r4, r5, r6, pc}
_020BCEE8: .word ov15_020E70B8
_020BCEEC: .word ov15_020E6D40
	arm_func_end FUN_ov15_020bce9c

	arm_func_start FUN_ov15_020bcef0
FUN_ov15_020bcef0: ; 0x020BCEF0
	ldr r1, _020BCEFC ; =0x020E6D40
	str r0, [r1, #0x34]
	bx lr
_020BCEFC: .word ov15_020E6D40
	arm_func_end FUN_ov15_020bcef0

	arm_func_start FUN_ov15_020bcf00
FUN_ov15_020bcf00: ; 0x020BCF00
	stmfd sp!, {r3, r4, r5, lr}
	bl FUN_ov15_020bce9c
	ldr r0, _020BCF74 ; =0x020E70B8
	bl OS_JoinThread
	ldr r0, _020BCF78 ; =0x020E7178
	bl OS_DestroyThread
	ldr r0, _020BCF7C ; =0x020E6DD0
	bl OS_CancelAlarm
	bl OS_DisableInterrupts
	ldr r4, _020BCF80 ; =0x020E6FF8
	mov r5, r0
	mov r0, r4
	bl OS_IsThreadTerminated
	cmp r0, #0
	bne _020BCF44
	mov r0, r4
	bl OS_WakeupThreadDirect
_020BCF44:
	mov r0, r5
	bl OS_RestoreInterrupts
	ldr r0, _020BCF80 ; =0x020E6FF8
	bl OS_JoinThread
	mov r5, #0
	ldr r4, _020BCF84 ; =0x020E6D40
	mov r0, r5
	str r5, [r4, #0x54]
	bl FUN_ov15_020bcb50
	str r5, [r4, #0x20]
	str r5, [r4, #0x5c]
	ldmfd sp!, {r3, r4, r5, pc}
_020BCF74: .word ov15_020E70B8
_020BCF78: .word ov15_020E7178
_020BCF7C: .word ov15_020E6DD0
_020BCF80: .word ov15_020E6FF8
_020BCF84: .word ov15_020E6D40
	arm_func_end FUN_ov15_020bcf00

	arm_func_start FUN_ov15_020bcf88
FUN_ov15_020bcf88: ; 0x020BCF88
	stmfd sp!, {r4, lr}
	mov r4, r0
	ldr r2, _020BCFB4 ; =0x020E4340
	ldr r0, _020BCFB8 ; =0x020E7178
	mov r1, r4
	str r4, [r2]
	bl OS_SetThreadPriority
	ldr r0, _020BCFBC ; =0x020E70B8
	mov r1, r4
	bl OS_SetThreadPriority
	ldmfd sp!, {r4, pc}
_020BCFB4: .word ov15_020E4340
_020BCFB8: .word ov15_020E7178
_020BCFBC: .word ov15_020E70B8
	arm_func_end FUN_ov15_020bcf88

	arm_func_start FUN_ov15_020bcfc0
FUN_ov15_020bcfc0: ; 0x020BCFC0
	stmfd sp!, {r4, lr}
	ands lr, r0, #3
	mov r4, #0
	beq _020BD030
	bic r3, r0, #3
	cmp lr, #1
	add r0, r3, #4
	ldr r12, [r3]
	beq _020BCFF0
	cmp lr, #2
	beq _020BD008
	b _020BD024
_020BCFF0:
	cmp r1, #3
	bic r3, r12, #0xff
	addlo r1, r1, #1
	blo _020BD064
	sub r1, r1, #3
	b _020BD02C
_020BD008:
	sub r3, r4, #0x10000
	cmp r1, #2
	and r3, r12, r3
	addlo r1, r1, #2
	blo _020BD064
	sub r1, r1, #2
	b _020BD02C
_020BD024:
	and r3, r12, #0xff000000
	sub r1, r1, #1
_020BD02C:
	mov r4, r3
_020BD030:
	cmp r1, #4
	blo _020BD058
_020BD038:
	ldr r3, [r0]
	sub r1, r1, #4
	add r4, r4, r3
	cmp r4, r3
	addlo r4, r4, #1
	cmp r1, #4
	add r0, r0, #4
	bhs _020BD038
_020BD058:
	cmp r1, #0
	beq _020BD08C
	ldr r3, [r0]
_020BD064:
	cmp r1, #1
	andeq r3, r3, #0xff
	beq _020BD080
	cmp r1, #2
	moveq r0, r3, lsl #0x10
	moveq r3, r0, lsr #0x10
	bicne r3, r3, #0xff000000
_020BD080:
	add r4, r4, r3
	cmp r4, r3
	addlo r4, r4, #1
_020BD08C:
	mov r0, r4, lsl #0x10
	mov r1, r4, lsr #0x10
	add r1, r1, r0, lsr #16
	mov r0, r1, lsl #0x10
	mov r1, r1, lsr #0x10
	add r1, r1, r0, lsr #16
	tst lr, #1
	moveq r0, r1, lsl #8
	andeq r0, r0, #0xff00
	addeq r1, r0, r1, lsr #8
	add r1, r1, r2
	mov r0, r1, lsl #0x10
	mov r1, r1, lsr #0x10
	add r0, r1, r0, lsr #16
	ldmfd sp!, {r4, pc}
	arm_func_end FUN_ov15_020bcfc0

	arm_func_start FUN_ov15_020bd0c8
FUN_ov15_020bd0c8: ; 0x020BD0C8
	ldr r1, _020BD0D8 ; =0x0000FFFF
	eors r0, r0, r1
	moveq r0, r1
	bx lr
_020BD0D8: .word 0x0000FFFF
	arm_func_end FUN_ov15_020bd0c8

	arm_func_start FUN_ov15_020bd0dc
FUN_ov15_020bd0dc: ; 0x020BD0DC
	stmfd sp!, {r3, lr}
	mov r2, #0
	bl FUN_ov15_020bcfc0
	mov r0, r0, lsl #0x10
	mov r0, r0, lsr #0x10
	bl FUN_ov15_020bd0c8
	ldmfd sp!, {r3, pc}
	arm_func_end FUN_ov15_020bd0dc

	arm_func_start FUN_ov15_020bd0f8
FUN_ov15_020bd0f8: ; 0x020BD0F8
	stmfd sp!, {r3, r4, r5, lr}
	mov r4, r2
	mov r2, r3
	mov r5, r1
	bl FUN_ov15_020bcfc0
	mov r2, r0
	add r0, r4, #0xc
	mov r1, #8
	bl FUN_ov15_020bcfc0
	add r1, r0, r5
	tst r1, #0x10000
	addne r0, r1, #1
	movne r0, r0, lsl #0x10
	movne r1, r0, lsr #0x10
	ldr r0, _020BD144 ; =0x0000FFFF
	cmp r1, r0
	movne r0, #1
	moveq r0, #0
	ldmfd sp!, {r3, r4, r5, pc}
_020BD144: .word 0x0000FFFF
	arm_func_end FUN_ov15_020bd0f8

	arm_func_start FUN_ov15_020bd148
FUN_ov15_020bd148: ; 0x020BD148
	mov r12, #1
	sub r1, r12, #2
	cmp r0, r1
	subne r1, r12, #0x81000000
	cmpne r0, r1
	beq _020BD17C
	ldr r1, _020BD184 ; =0x020E6D40
	ldr r3, [r1, #0x10]
	ldr r1, [r1, #0x50]
	and r2, r0, r3
	and r0, r1, r3
	cmp r2, r0
	movne r12, #0
_020BD17C:
	mov r0, r12
	bx lr
_020BD184: .word ov15_020E6D40
	arm_func_end FUN_ov15_020bd148

	arm_func_start FUN_ov15_020bd188
FUN_ov15_020bd188: ; 0x020BD188
	stmfd sp!, {r4, lr}
	mov r4, r0
	bl FUN_ov15_020bd148
	cmp r0, #0
	ldreq r0, _020BD1A8 ; =0x020E6D40
	ldreq r4, [r0, #0x2c]
	mov r0, r4
	ldmfd sp!, {r4, pc}
_020BD1A8: .word ov15_020E6D40
	arm_func_end FUN_ov15_020bd188

	arm_func_start FUN_ov15_020bd1ac
FUN_ov15_020bd1ac: ; 0x020BD1AC
	stmfd sp!, {r3, r4, r5, lr}
	mov r5, r0
	mov r4, #0
	bl FUN_ov15_020bd148
	cmp r0, #0
	beq _020BD1DC
	ldr r0, _020BD1E4 ; =0x020E6D40
	ldr r0, [r0, #0x10]
	mvn r1, r0
	and r0, r1, r5
	cmp r1, r0
	moveq r4, #1
_020BD1DC:
	mov r0, r4
	ldmfd sp!, {r3, r4, r5, pc}
_020BD1E4: .word ov15_020E6D40
	arm_func_end FUN_ov15_020bd1ac

	arm_func_start FUN_ov15_020bd1e8
FUN_ov15_020bd1e8: ; 0x020BD1E8
	and r0, r0, #0xf0000000
	cmp r0, #0xe0000000
	moveq r0, #1
	movne r0, #0
	bx lr
	arm_func_end FUN_ov15_020bd1e8

	arm_func_start FUN_ov15_020bd1fc
FUN_ov15_020bd1fc: ; 0x020BD1FC
	stmfd sp!, {r4, r5, r6, lr}
	ldr r1, _020BD274 ; =0x020E6D40
	mov r4, #1
	ldr r1, [r1, #0x50]
	mov r6, r0
	cmp r1, #0
	mov r0, r4
	cmpne r6, r1
	movne r0, #0
	mov r5, r4
	mov r2, r4
	cmp r0, #0
	bne _020BD23C
	ldr r0, _020BD278 ; =0x7F000001
	cmp r6, r0
	movne r2, #0
_020BD23C:
	cmp r2, #0
	bne _020BD254
	mov r0, r6
	bl FUN_ov15_020bd1ac
	cmp r0, #0
	moveq r5, #0
_020BD254:
	cmp r5, #0
	bne _020BD26C
	mov r0, r6
	bl FUN_ov15_020bd1e8
	cmp r0, #0
	moveq r4, #0
_020BD26C:
	mov r0, r4
	ldmfd sp!, {r4, r5, r6, pc}
_020BD274: .word ov15_020E6D40
_020BD278: .word 0x7F000001
	arm_func_end FUN_ov15_020bd1fc

	arm_func_start FUN_ov15_020bd27c
FUN_ov15_020bd27c: ; 0x020BD27C
	mov r12, #0
_020BD280:
	ldrh r3, [r0], #2
	ldrh r2, [r1], #2
	cmp r3, r2
	movne r0, #1
	bxne lr
	add r12, r12, #1
	cmp r12, #3
	blt _020BD280
	mov r0, #0
	bx lr
	arm_func_end FUN_ov15_020bd27c

	arm_func_start FUN_ov15_020bd2a8
FUN_ov15_020bd2a8: ; 0x020BD2A8
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	mov r7, r0
	mov r6, r1
	mov r5, r2
	ldr r0, _020BD2FC ; =0x020E4368
	add r1, r7, #6
	mov r2, #6
	mov r4, r3
	bl FUN_02007c60
	mov r0, r7
	mov r3, r5
	add r1, r7, #6
	sub r2, r6, #6
	str r4, [sp]
	bl FUN_ov15_020dda04
	cmp r0, #0
	mov r1, #1
	ldr r0, _020BD300 ; =0x020E6D40
	movge r1, #0
	strb r1, [r0]
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_020BD2FC: .word ov15_020E4368
_020BD300: .word ov15_020E6D40
	arm_func_end FUN_ov15_020bd2a8

	arm_func_start FUN_ov15_020bd304
FUN_ov15_020bd304: ; 0x020BD304
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, lr}
	ldr r12, _020BD4DC ; =0x020E6D40
	mov r6, r0
	ldr r7, [r12, #0x20]
	mov r5, r2
	cmp r7, #0
	ldrne r0, [r12, #0x5c]
	mov r4, r3
	cmpne r0, #0
	ldmeqfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
	ldr r0, [sp, #0x24]
	add r0, r4, r0
	cmp r0, #8
	ldmlofd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
	ldr r2, _020BD4E0 ; =0x000005E4
	cmp r0, r2
	ldmhifd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
	ldr r2, _020BD4E4 ; =0x020E4368
	ldrb r8, [r5]
	ldrb r3, [r2]
	cmp r8, r3
	ldreqb r8, [r5, #1]
	ldreqb r3, [r2, #1]
	cmpeq r8, r3
	ldreqb r3, [r5, #2]
	ldreqb r2, [r2, #2]
	cmpeq r3, r2
	ldreqb r2, [r5, #6]
	cmpeq r2, #8
	ldmnefd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
	ldrb r2, [r5, #7]
	cmp r2, #0
	beq _020BD390
	cmp r2, #6
	ldmnefd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
_020BD390:
	add r0, r0, #9
	bic r0, r0, #1
	ldr r9, [r12, #0x60]
	ldr r8, [r12, #0x60]
	ldr r3, [r12, #0x64]
	mov r0, r0, lsl #0x10
	cmp r8, r3
	mov r2, r0, lsr #0x10
	add r8, r9, r0, lsr #16
	bhs _020BD3C4
	ldr r0, [r12, #0x64]
	cmp r0, r8
	ldmlsfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
_020BD3C4:
	ldr r0, _020BD4DC ; =0x020E6D40
	ldr r3, [r0, #0x5c]
	cmp r8, r3
	bne _020BD3E8
	ldr r3, [r0, #0x64]
	mov r8, #0
	cmp r3, #0
	bne _020BD404
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
_020BD3E8:
	ldr r3, [r0, #0x5c]
	cmp r8, r3
	bls _020BD404
	ldr r3, [r0, #0x64]
	mov r8, r2
	cmp r3, r2
	ldmlsfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
_020BD404:
	ldr r9, [r0, #0x60]
	ldr r3, [r0, #0x5c]
	add r9, r9, r2
	cmp r9, r3
	bls _020BD440
	ldr r9, [r0, #0x5c]
	ldr r3, [r0, #0x60]
	sub r3, r9, r3
	cmp r3, #2
	ldrhs r0, [r0, #0x60]
	movhs r3, #0
	strhsh r3, [r7, r0]
	ldr r0, _020BD4DC ; =0x020E6D40
	mov r3, #0
	str r3, [r0, #0x60]
_020BD440:
	ldr r9, _020BD4DC ; =0x020E6D40
	mov r0, r1
	ldr r12, [r9, #0x20]
	ldr r3, [r9, #0x60]
	mov r7, #6
	strh r2, [r12, r3]
	ldr r3, [r9, #0x20]
	ldr r1, [r9, #0x60]
	mov r2, r7
	add r1, r3, r1
	add r1, r1, #2
	bl FUN_02007c60
	ldr r2, [r9, #0x20]
	ldr r1, [r9, #0x60]
	mov r0, r6
	add r1, r2, r1
	mov r2, r7
	add r1, r1, #8
	bl FUN_02007c60
	ldr r2, [r9, #0x20]
	ldr r1, [r9, #0x60]
	add r0, r5, #6
	add r1, r2, r1
	add r1, r1, #0xe
	sub r2, r4, #6
	bl FUN_02007c60
	ldr r0, [sp, #0x20]
	cmp r0, #0
	ldrne r2, [sp, #0x24]
	cmpne r2, #0
	beq _020BD4D4
	ldr r3, [r9, #0x20]
	ldr r1, [r9, #0x60]
	add r1, r3, r1
	add r1, r1, #8
	add r1, r1, r4
	bl FUN_02007c60
_020BD4D4:
	str r8, [r9, #0x60]
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
_020BD4DC: .word ov15_020E6D40
_020BD4E0: .word 0x000005E4
_020BD4E4: .word ov15_020E4368
	arm_func_end FUN_ov15_020bd304

	arm_func_start FUN_ov15_020bd4e8
FUN_ov15_020bd4e8: ; 0x020BD4E8
	stmfd sp!, {r4, lr}
	sub sp, sp, #8
	mov r4, #0
	str r4, [sp]
	str r4, [sp, #4]
	bl FUN_ov15_020bd304
	ldr r4, _020BD538 ; =0x020E6D40
	ldr r0, [r4, #0x54]
	cmp r0, #0
	addeq sp, sp, #8
	ldmeqfd sp!, {r4, pc}
	ldr r0, [r4, #0x54]
	bl OS_IsThreadTerminated
	cmp r0, #0
	addne sp, sp, #8
	ldmnefd sp!, {r4, pc}
	ldr r0, [r4, #0x54]
	bl OS_WakeupThreadDirect
	add sp, sp, #8
	ldmfd sp!, {r4, pc}
_020BD538: .word ov15_020E6D40
	arm_func_end FUN_ov15_020bd4e8

	arm_func_start FUN_ov15_020bd53c
FUN_ov15_020bd53c: ; 0x020BD53C
	stmfd sp!, {r3, r4, r5, r6, r7, r8, lr}
	sub sp, sp, #4
	mov r5, r0
	bl OS_DisableInterrupts
	ldr r7, _020BD600 ; =0x020E6D40
	mov r4, r0
	ldr r1, [r7, #0x64]
	ldr r0, [r7, #0x60]
	cmp r1, r0
	bne _020BD598
	ldr r6, _020BD604 ; =0x020939a4
	mov r8, #0
_020BD56C:
	ldr r1, [r6, #4]
	mov r0, r8
	str r1, [sp]
	ldr r1, [sp]
	str r1, [r7, #0x54]
	bl OS_SleepThread
	str r8, [r7, #0x54]
	ldr r1, [r7, #0x64]
	ldr r0, [r7, #0x60]
	cmp r1, r0
	beq _020BD56C
_020BD598:
	mov r0, r4
	bl OS_RestoreInterrupts
	ldr r0, _020BD600 ; =0x020E6D40
	mov r3, #0
	ldr r6, [r0, #0x20]
	mov r1, r3
_020BD5B0:
	ldr r4, [r0, #0x5c]
	ldr r2, [r0, #0x64]
	sub r2, r4, r2
	cmp r2, #2
	strlo r3, [r0, #0x64]
	ldr r2, [r0, #0x64]
	ldrh r2, [r6, r2]
	cmp r2, #0
	streq r1, [r0, #0x64]
	cmp r2, #0
	beq _020BD5B0
	sub r1, r2, #2
	ldr r0, _020BD600 ; =0x020E6D40
	str r1, [r5]
	ldr r1, [r0, #0x20]
	ldr r0, [r0, #0x64]
	add r0, r1, r0
	add r0, r0, #2
	add sp, sp, #4
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, pc}
_020BD600: .word ov15_020E6D40
_020BD604: .word 0x020939a4
	arm_func_end FUN_ov15_020bd53c

	arm_func_start FUN_ov15_020bd608
FUN_ov15_020bd608: ; 0x020BD608
	stmfd sp!, {r3, lr}
	bl OS_DisableInterrupts
	ldr r1, _020BD648 ; =0x020E6D40
	ldr r12, [r1, #0x64]
	ldr r3, [r1, #0x20]
	ldr r2, [r1, #0x64]
	ldrh r2, [r3, r2]
	add r2, r12, r2
	str r2, [r1, #0x64]
	ldr r3, [r1, #0x64]
	ldr r2, [r1, #0x5c]
	cmp r3, r2
	movhs r2, #0
	strhs r2, [r1, #0x64]
	bl OS_RestoreInterrupts
	ldmfd sp!, {r3, pc}
_020BD648: .word ov15_020E6D40
	arm_func_end FUN_ov15_020bd608

	arm_func_start FUN_ov15_020bd64c
FUN_ov15_020bd64c: ; 0x020BD64C
	stmfd sp!, {r4, r5, r6, r7, r8, lr}
	mov r8, r0
	bl OS_DisableInterrupts
	ldr r1, _020BD6FC ; =0x7F000001
	mov r5, r0
	cmp r8, r1
	ldrne r0, _020BD700 ; =0x020E6D40
	mov r4, #0
	ldrne r0, [r0, #0x50]
	cmpne r8, r0
	ldreq r4, _020BD704 ; =0x020E6DA8
	beq _020BD6EC
	mov r0, r8
	bl FUN_ov15_020bd1ac
	cmp r0, #0
	bne _020BD69C
	mov r0, r8
	bl FUN_ov15_020bd1e8
	cmp r0, #0
	beq _020BD6A4
_020BD69C:
	ldr r4, _020BD708 ; =0x020E4349
	b _020BD6EC
_020BD6A4:
	ldr r2, _020BD70C ; =0x020E6E58
	mov r3, r4
	mov r0, #0xc
_020BD6B0:
	mul r7, r3, r0
	ldr r1, [r2, r7]
	add r6, r2, r7
	cmp r8, r1
	bne _020BD6E0
	bl FUN_02003410
	mov r2, r0, lsr #0x10
	ldr r0, _020BD710 ; =0x020E6E62
	orr r2, r2, r1, lsl #16
	strh r2, [r0, r7]
	add r4, r6, #4
	b _020BD6EC
_020BD6E0:
	add r3, r3, #1
	cmp r3, #8
	blo _020BD6B0
_020BD6EC:
	mov r0, r5
	bl OS_RestoreInterrupts
	mov r0, r4
	ldmfd sp!, {r4, r5, r6, r7, r8, pc}
_020BD6FC: .word 0x7F000001
_020BD700: .word ov15_020E6D40
_020BD704: .word ov15_020E6DA8
_020BD708: .word ov15_020E4349
_020BD70C: .word ov15_020E6E58
_020BD710: .word ov15_020E6E62
	arm_func_end FUN_ov15_020bd64c

	arm_func_start FUN_ov15_020bd714
FUN_ov15_020bd714: ; 0x020BD714
	stmfd sp!, {r4, r5, r6, r7, r8, r9, lr}
	sub sp, sp, #0x2c
	mov r6, #0
	mov r5, #0x2a
	add r7, sp, #0
	mov r8, r0
	mov r0, r7
	mov r1, r6
	mov r2, r5
	bl MI_CpuFill8
	mov r4, #6
	mov r0, r7
	mov r2, r4
	mov r1, #0xff
	bl MI_CpuFill8
	ldr r9, _020BD814 ; =0x020E6DA8
	add r1, sp, #6
	mov r0, r9
	mov r2, r4
	bl FUN_02007c60
	mov r1, #1
	ldr r2, _020BD818 ; =0x00000608
	strb r1, [sp, #0xf]
	strb r1, [sp, #0x15]
	mov r1, #8
	strb r1, [sp, #0x10]
	add r1, r4, #0x400
	strh r2, [sp, #0xc]
	strh r1, [sp, #0x12]
	mov r0, r9
	mov r2, r4
	add r1, sp, #0x16
	bl FUN_02007c60
	ldr r2, _020BD81C ; =0x020E6D40
	mov r1, r5
	mov r3, r8, lsr #0x10
	ldr r5, [r2, #0x50]
	mov r2, r3, lsl #0x10
	mov r4, r2, lsr #0x10
	mov r2, r8, lsl #0x10
	mov r3, r2, lsr #0x10
	mov r2, r5, lsr #0x10
	mov r2, r2, lsl #0x10
	mov r0, r7
	mov r7, r2, lsr #0x10
	mov r2, r5, lsl #0x10
	mov r5, r2, lsr #0x10
	mov r2, r7, lsl #8
	orr r2, r2, r7, asr #8
	strh r2, [sp, #0x1c]
	mov r2, r5, lsl #8
	orr r2, r2, r5, asr #8
	strh r2, [sp, #0x1e]
	mov r2, r4, lsl #8
	orr r2, r2, r4, asr #8
	strh r2, [sp, #0x26]
	mov r2, r3, lsl #8
	orr r2, r2, r3, asr #8
	strh r2, [sp, #0x28]
	mov r2, r6
	mov r3, r6
	bl FUN_ov15_020bd2a8
	add sp, sp, #0x2c
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, pc}
_020BD814: .word ov15_020E6DA8
_020BD818: .word 0x00000608
_020BD81C: .word ov15_020E6D40
	arm_func_end FUN_ov15_020bd714

	arm_func_start FUN_ov15_020bd820
FUN_ov15_020bd820: ; 0x020BD820
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, lr}
	mov r8, #0
	ldr r7, _020BD8AC ; =0x020E4350
	ldr r4, _020BD8B0 ; =0x51EB851F
	ldr r5, _020BD8B4 ; =0x020E6D40
	mov r10, r0
	mov r6, #0x64
	mov r11, r8
_020BD840:
	mov r0, r10
	bl FUN_ov15_020bd714
	ldr r1, [r7, r8, lsl #2]
	mov r9, r11
	umull r0, r2, r1, r4
	movs r2, r2, lsr #5
	beq _020BD898
_020BD85C:
	ldr r0, [r5, #0x50]
	cmp r0, #0
	moveq r0, #0
	ldmeqfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
	mov r0, r6
	bl OS_Sleep
	mov r0, r10
	bl FUN_ov15_020bd64c
	cmp r0, #0
	ldmnefd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
	ldr r1, [r7, r8, lsl #2]
	add r9, r9, #1
	umull r0, r2, r1, r4
	cmp r9, r2, lsr #5
	blo _020BD85C
_020BD898:
	add r8, r8, #1
	cmp r8, #6
	blo _020BD840
	mov r0, #0
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_020BD8AC: .word ov15_020E4350
_020BD8B0: .word 0x51EB851F
_020BD8B4: .word ov15_020E6D40
	arm_func_end FUN_ov15_020bd820

	arm_func_start FUN_ov15_020bd8b8
FUN_ov15_020bd8b8: ; 0x020BD8B8
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	ldr r3, _020BD9E4 ; =0x7F000001
	mov r4, r1
	mov r5, r0
	cmp r4, r3
	ldrne r0, _020BD9E8 ; =0x020E6D40
	mov r7, r2
	ldrne r0, [r0, #0x50]
	cmpne r4, r0
	ldmeqfd sp!, {r3, r4, r5, r6, r7, pc}
	mov r0, r4
	bl FUN_ov15_020bd148
	cmp r0, #0
	ldmeqfd sp!, {r3, r4, r5, r6, r7, pc}
	mov r0, r4
	bl FUN_ov15_020bd1e8
	cmp r0, #0
	ldmnefd sp!, {r3, r4, r5, r6, r7, pc}
	bl FUN_02003410
	mov r0, r0, lsr #0x10
	orr r0, r0, r1, lsl #16
	mov r0, r0, lsl #0x10
	mov r6, r0, lsr #0x10
	ldr r2, _020BD9EC ; =0x020E6E58
	mov r3, #0
	mov r0, #0xc
_020BD920:
	mul lr, r3, r0
	ldr r1, [r2, lr]
	add r12, r2, lr
	cmp r4, r1
	bne _020BD950
	ldr r3, _020BD9F0 ; =0x020E6E62
	mov r0, r5
	add r1, r12, #4
	mov r2, #6
	strh r6, [r3, lr]
	bl FUN_02007c60
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_020BD950:
	add r3, r3, #1
	cmp r3, #8
	blo _020BD920
	cmp r7, #0
	ldmeqfd sp!, {r3, r4, r5, r6, r7, pc}
	mov r1, #0
	ldr lr, _020BD9EC ; =0x020E6E58
	mov r0, r1
	mov r2, r1
	mov r7, #0xc
_020BD978:
	mul r12, r2, r7
	ldr r3, [lr, r12]
	add r12, lr, r12
	cmp r3, #0
	moveq r0, r2
	beq _020BD9B4
	ldrh r3, [r12, #0xa]
	sub r3, r6, r3
	mov r3, r3, lsl #0x10
	cmp r1, r3, asr #16
	movlt r0, r2
	add r2, r2, #1
	movlt r1, r3, lsr #0x10
	cmp r2, #8
	blo _020BD978
_020BD9B4:
	mov r1, #0xc
	mul r7, r0, r1
	ldr r3, _020BD9EC ; =0x020E6E58
	mov r0, r5
	add r1, r3, r7
	add r1, r1, #4
	mov r2, #6
	str r4, [r3, r7]
	bl FUN_02007c60
	ldr r0, _020BD9F0 ; =0x020E6E62
	strh r6, [r0, r7]
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_020BD9E4: .word 0x7F000001
_020BD9E8: .word ov15_020E6D40
_020BD9EC: .word ov15_020E6E58
_020BD9F0: .word ov15_020E6E62
	arm_func_end FUN_ov15_020bd8b8

	arm_func_start FUN_ov15_020bd9f4
FUN_ov15_020bd9f4: ; 0x020BD9F4
	stmfd sp!, {r4, r5, r6, r7, r8, lr}
	ldrh r5, [sp, #0x1c]
	ldr r4, [sp, #0x18]
	mov r8, r0
	mov r0, r5, lsl #8
	orr r12, r0, r5, asr #8
	mov r0, r4
	mov r7, r1
	mov r6, r2
	mov r5, r3
	strh r12, [r8, #-2]
	bl FUN_ov15_020bd1e8
	cmp r0, #0
	bne _020BDA68
	mov r0, r4
	bl FUN_ov15_020bd188
	movs r4, r0
	ldmeqfd sp!, {r4, r5, r6, r7, r8, pc}
	bl FUN_ov15_020bd64c
	cmp r0, #0
	bne _020BDA50
	mov r0, r4
	bl FUN_ov15_020bd820
_020BDA50:
	cmp r0, #0
	ldmeqfd sp!, {r4, r5, r6, r7, r8, pc}
	sub r1, r8, #0xe
	mov r2, #6
	bl FUN_02007c60
	b _020BDA98
_020BDA68:
	mov r0, r4, lsr #0x10
	and r1, r0, #0x7f
	mov r0, r4, lsr #8
	mov r12, #1
	mov r3, #0
	mov r2, #0x5e
	strb r12, [r8, #-0xe]
	strb r3, [r8, #-0xd]
	strb r2, [r8, #-0xc]
	strb r1, [r8, #-0xb]
	strb r0, [r8, #-0xa]
	strb r4, [r8, #-9]
_020BDA98:
	ldr r0, _020BDAC0 ; =0x020E6DA8
	sub r1, r8, #8
	mov r2, #6
	bl FUN_02007c60
	mov r2, r6
	mov r3, r5
	sub r0, r8, #0xe
	add r1, r7, #0xe
	bl FUN_ov15_020bd2a8
	ldmfd sp!, {r4, r5, r6, r7, r8, pc}
_020BDAC0: .word ov15_020E6DA8
	arm_func_end FUN_ov15_020bd9f4

	arm_func_start FUN_ov15_020bdac4
FUN_ov15_020bdac4: ; 0x020BDAC4
	stmfd sp!, {r4, r5, r6, r7, r8, lr}
	sub sp, sp, #8
	mov r7, r1
	ldr r4, [sp, #0x24]
	mov r5, r3
	add r1, r7, #0x14
	add r1, r1, r5
	mov r1, r1, lsl #0x10
	mov r3, r4, lsl #0x10
	mov r4, r1, lsr #0x10
	mov r1, r3, lsr #0x10
	mov r8, r0
	mov r3, r4, lsl #8
	orr r12, r3, r4, asr #8
	mov r0, r1, lsl #8
	orr r4, r0, r1, asr #8
	mov r3, #0
	strh r4, [r8, #-0xe]
	sub r0, r8, #0x14
	mov r1, #0x14
	mov r6, r2
	strh r12, [r8, #-0x12]
	strh r3, [r8, #-0xa]
	ldr r4, [sp, #0x20]
	bl FUN_ov15_020bd0dc
	mov r2, r0, lsl #8
	ldr r1, _020BDBDC ; =0x7F000001
	orr r0, r2, r0, asr #8
	strh r0, [r8, #-0xa]
	cmp r4, r1
	ldrne r0, _020BDBE0 ; =0x020E6D40
	ldrne r0, [r0, #0x50]
	cmpne r4, r0
	beq _020BDB6C
	mov r2, r6
	mov r3, r5
	str r4, [sp]
	mov r12, #0x800
	sub r0, r8, #0x14
	add r1, r7, #0x14
	str r12, [sp, #4]
	bl FUN_ov15_020bd9f4
_020BDB6C:
	ldr r0, _020BDBDC ; =0x7F000001
	cmp r4, r0
	ldrne r0, _020BDBE0 ; =0x020E6D40
	ldrne r0, [r0, #0x50]
	cmpne r4, r0
	beq _020BDB98
	mov r0, r4
	bl FUN_ov15_020bd1e8
	cmp r0, #0
	addeq sp, sp, #8
	ldmeqfd sp!, {r4, r5, r6, r7, r8, pc}
_020BDB98:
	ldr r0, _020BDBE4 ; =0x020E4368
	sub r1, r8, #0x1c
	mov r2, #8
	bl FUN_02007c60
	bl OS_DisableInterrupts
	mov r4, r0
	ldr r0, _020BDBE8 ; =0x020E6DA8
	str r6, [sp]
	mov r1, r0
	str r5, [sp, #4]
	sub r2, r8, #0x1c
	add r3, r7, #0x1c
	bl FUN_ov15_020bd304
	mov r0, r4
	bl OS_RestoreInterrupts
	add sp, sp, #8
	ldmfd sp!, {r4, r5, r6, r7, r8, pc}
_020BDBDC: .word 0x7F000001
_020BDBE0: .word ov15_020E6D40
_020BDBE4: .word ov15_020E4368
_020BDBE8: .word ov15_020E6DA8
	arm_func_end FUN_ov15_020bdac4

	arm_func_start FUN_ov15_020bdbec
FUN_ov15_020bdbec: ; 0x020BDBEC
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, lr}
	sub sp, sp, #8
	mov r10, r0
	mov r4, #0
	mov r0, #0x45
	ldr r7, _020BDDDC ; =0x020E6D40
	strb r4, [r10, #-0x13]
	strb r0, [r10, #-0x14]
	ldrh r0, [r7, #2]
	ldrb r5, [sp, #0x34]
	ldr r6, [sp, #0x30]
	add r0, r0, #1
	strh r0, [r7, #2]
	ldrh r11, [r7, #2]
	mov r8, #0x80
	mov r0, r6, lsr #0x10
	mov r9, r11, lsl #8
	orr r9, r9, r11, asr #8
	strb r5, [r10, #-0xb]
	mov r5, r0, lsl #0x10
	strh r9, [r10, #-0x10]
	strb r8, [r10, #-0xc]
	ldr r8, [r7, #0x50]
	mov r11, r5, lsr #0x10
	mov r0, r8, lsr #0x10
	mov r0, r0, lsl #0x10
	mov r8, r0, lsr #0x10
	mov r0, r8, lsl #8
	orr r0, r0, r8, asr #8
	strh r0, [r10, #-8]
	ldr r0, [r7, #0x50]
	mov r7, r6, lsl #0x10
	mov r0, r0, lsl #0x10
	mov r0, r0, lsr #0x10
	mov r8, r7, lsr #0x10
	mov r5, r0, lsl #8
	mov r7, r8, lsl #8
	orr r12, r7, r8, asr #8
	orr r5, r5, r0, asr #8
	mov r9, r11, lsl #8
	orr r0, r9, r11, asr #8
	ldr r11, _020BDDE0 ; =0x000005C8
	mov r9, r1
	mov r8, r2
	mov r7, r3
	strh r5, [r10, #-6]
	strh r0, [r10, #-4]
	strh r12, [r10, #-2]
	cmp r9, r11
	bls _020BDD58
	mov r5, r10
	bls _020BDCFC
_020BDCBC:
	mov r0, r10
	mov r1, #0
	mov r2, r5
	mov r3, r11
	str r6, [sp]
	orr r12, r4, #0x2000
	str r12, [sp, #4]
	bl FUN_ov15_020bdac4
	add r1, r4, #0xb9
	add r0, r5, #0x1c8
	sub r9, r9, r11
	mov r1, r1, lsl #0x10
	cmp r9, r11
	add r5, r0, #0x400
	mov r4, r1, lsr #0x10
	bhi _020BDCBC
_020BDCFC:
	cmp r9, #0
	beq _020BDD58
	cmp r7, #0
	mov r1, #0
	beq _020BDD2C
	mov r2, r5
	str r6, [sp]
	orr r5, r4, #0x2000
	mov r0, r10
	mov r3, r9
	str r5, [sp, #4]
	b _020BDD40
_020BDD2C:
	str r6, [sp]
	mov r0, r10
	mov r2, r5
	mov r3, r9
	str r4, [sp, #4]
_020BDD40:
	bl FUN_ov15_020bdac4
	mov r0, r9, lsl #0xd
	add r0, r4, r0, lsr #16
	mov r0, r0, lsl #0x10
	mov r4, r0, lsr #0x10
	mov r9, #0
_020BDD58:
	ldr r11, _020BDDE0 ; =0x000005C8
	add r0, r9, r7
	cmp r0, r11
	bls _020BDDAC
_020BDD68:
	sub r5, r11, r9
	mov r1, r9
	mov r0, r10
	mov r2, r8
	mov r3, r5
	str r6, [sp]
	orr r9, r4, #0x2000
	str r9, [sp, #4]
	bl FUN_ov15_020bdac4
	add r0, r4, #0xb9
	sub r7, r7, r5
	mov r0, r0, lsl #0x10
	mov r9, #0
	cmp r7, r11
	add r8, r8, r5
	mov r4, r0, lsr #0x10
	bhi _020BDD68
_020BDDAC:
	adds r0, r9, r7
	addeq sp, sp, #8
	ldmeqfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
	str r6, [sp]
	mov r0, r10
	mov r1, r9
	mov r2, r8
	mov r3, r7
	str r4, [sp, #4]
	bl FUN_ov15_020bdac4
	add sp, sp, #8
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_020BDDDC: .word ov15_020E6D40
_020BDDE0: .word 0x000005C8
	arm_func_end FUN_ov15_020bdbec

	arm_func_start FUN_ov15_020bdde4
FUN_ov15_020bdde4: ; 0x020BDDE4
	stmfd sp!, {r4, r5, r6, r7, r8, lr}
	sub sp, sp, #8
	mov r6, r2
	ldr r5, [r6, #0x58]
	mov r4, #8
	ldr r3, _020BDE90 ; =0x020E6D40
	ldr r2, _020BDE94 ; =0x020939a4
	strh r4, [r5, #0x22]
	ldr r2, [r2, #4]
	ldrh lr, [r3, #8]
	mov r8, r0
	mov r7, r1
	add r12, lr, #1
	strh r2, [r5, #0x26]
	mov r2, #0
	strh r2, [r5, #0x24]
	strh lr, [r6, #0xa]
	mov r1, r4
	add r0, r5, #0x22
	strh r12, [r3, #8]
	strh lr, [r5, #0x28]
	bl FUN_ov15_020bcfc0
	mov r2, r0
	mov r0, r8
	mov r1, r7
	bl FUN_ov15_020bcfc0
	mov r0, r0, lsl #0x10
	mov r0, r0, lsr #0x10
	bl FUN_ov15_020bd0c8
	mov r1, r4
	mov r2, r8
	mov r3, r7
	mov r4, r0, lsl #8
	orr r0, r4, r0, asr #8
	strh r0, [r5, #0x24]
	ldr r4, [r6, #0x1c]
	add r0, r5, #0x22
	str r4, [sp]
	mov r4, #1
	str r4, [sp, #4]
	bl FUN_ov15_020bdbec
	add sp, sp, #8
	ldmfd sp!, {r4, r5, r6, r7, r8, pc}
_020BDE90: .word ov15_020E6D40
_020BDE94: .word 0x020939a4
	arm_func_end FUN_ov15_020bdde4

	arm_func_start FUN_ov15_020bde98
FUN_ov15_020bde98: ; 0x020BDE98
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	sub sp, sp, #8
	ldr r7, _020BDFD0 ; =0x020E6D40
	mov r5, r2
	ldr r2, [r7, #0x50]
	mov r6, r1
	mov r1, r2, lsr #0x10
	mov r1, r1, lsl #0x10
	mov r2, r1, lsr #0x10
	ldr r3, [r5, #0x58]
	mov r1, r2, lsl #8
	add r4, r3, #0x22
	orr r1, r1, r2, asr #8
	strh r1, [r4, #-0xc]
	ldr r1, [r7, #0x50]
	add r2, r6, #8
	mov r1, r1, lsl #0x10
	mov r7, r1, lsr #0x10
	mov r1, r7, lsl #8
	orr r1, r1, r7, asr #8
	strh r1, [r4, #-0xa]
	ldr r1, [r5, #0x1c]
	mov r2, r2, lsl #0x10
	mov r1, r1, lsr #0x10
	mov r1, r1, lsl #0x10
	mov r7, r1, lsr #0x10
	mov r1, r7, lsl #8
	orr r1, r1, r7, asr #8
	strh r1, [r4, #-8]
	ldr r1, [r5, #0x1c]
	mov r2, r2, lsr #0x10
	mov r1, r1, lsl #0x10
	mov r7, r1, lsr #0x10
	mov r1, r7, lsl #8
	orr r7, r1, r7, asr #8
	mov r1, r2, lsl #8
	strh r7, [r4, #-6]
	mov r7, #0x1100
	strh r7, [r4, #-4]
	orr r1, r1, r2, asr #8
	strh r1, [r4, #4]
	ldrh r1, [r4, #4]
	mov r7, r0
	sub r0, r4, #0xc
	strh r1, [r4, #-2]
	ldrh lr, [r5, #0x18]
	mov r2, #0
	mov r1, #0x14
	mov r12, lr, lsl #8
	orr r12, r12, lr, asr #8
	strh r12, [r4, #2]
	ldrh lr, [r5, #0xa]
	mov r12, lr, lsl #8
	orr r12, r12, lr, asr #8
	strh r12, [r3, #0x22]
	strh r2, [r4, #6]
	bl FUN_ov15_020bcfc0
	mov r2, r0
	mov r0, r7
	mov r1, r6
	bl FUN_ov15_020bcfc0
	mov r0, r0, lsl #0x10
	mov r0, r0, lsr #0x10
	bl FUN_ov15_020bd0c8
	mov r2, r7
	mov r3, r6
	mov r1, r0, lsl #8
	orr r0, r1, r0, asr #8
	strh r0, [r4, #6]
	ldr r1, [r5, #0x1c]
	mov r0, r4
	str r1, [sp]
	mov r1, #0x11
	str r1, [sp, #4]
	mov r1, #8
	bl FUN_ov15_020bdbec
	add sp, sp, #8
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_020BDFD0: .word ov15_020E6D40
	arm_func_end FUN_ov15_020bde98

	arm_func_start FUN_ov15_020bdfd4
FUN_ov15_020bdfd4: ; 0x020BDFD4
	stmfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, lr}
	sub sp, sp, #0x14
	mov r11, r3
	mov r8, r2
	str r0, [sp, #8]
	tst r11, #5
	ldreqb r0, [r8, #8]
	str r1, [sp, #0xc]
	cmpeq r0, #0
	addeq sp, sp, #0x14
	moveq r0, r1
	ldmeqfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
	ldr r0, _020BE460 ; =0x020939a4
	ldr r1, _020BE464 ; =0x020E7178
	ldr r0, [r0, #4]
	cmp r0, r1
	ldreq r7, _020BE468 ; =0x020E6E1E
	ldrne r0, [r8, #0x58]
	addne r7, r0, #0x22
	ands r0, r11, #2
	str r0, [sp, #0x10]
	movne r4, #0x1c
	bne _020BE214
	tst r11, #0x10
	ldrneb r0, [r8, #0x33]
	cmpne r0, #0
	ldrne r0, [r8, #0x70]
	cmpne r0, #0
	beq _020BE210
	mvn r4, #0
	mov r5, r4
	mov r6, #0
	bl OS_DisableInterrupts
_020BE058:
	mov r1, #0xc
	mla r9, r4, r1, r8
	mov lr, #0
	mov r2, r1
	b _020BE0A8
_020BE06C:
	cmp r5, #0
	blt _020BE088
	mla r3, r5, r2, r8
	ldr r12, [r3, #0x78]
	ldr r3, [r10, #0x78]
	cmp r12, r3
	bhs _020BE0A4
_020BE088:
	cmp r4, #0
	blt _020BE0A0
	ldr r10, [r10, #0x78]
	ldr r3, [r9, #0x78]
	cmp r10, r3
	bhs _020BE0A4
_020BE0A0:
	mov r5, lr
_020BE0A4:
	add lr, lr, #1
_020BE0A8:
	cmp lr, #4
	bge _020BE0C0
	mla r10, lr, r1, r8
	ldr r3, [r10, #0x70]
	cmp r3, #0
	bne _020BE06C
_020BE0C0:
	cmp r5, #0
	blt _020BE19C
	mov r3, #0xc
	mla r2, r5, r3, r8
	ldr r9, [r8, #0x24]
	ldr r4, [r2, #0x70]
	ldr r1, [r8, #0x50]
	add r4, r9, r4
	sub r1, r4, r1
	mov r1, r1, lsr #0x10
	mov r1, r1, lsl #0x10
	mov r9, r1, lsr #0x10
	mov r4, r9, lsl #8
	add r1, r7, r6, lsl #3
	orr r4, r4, r9, asr #8
	strh r4, [r1, #0x18]
	ldr r10, [r8, #0x24]
	ldr r9, [r2, #0x70]
	ldr r4, [r8, #0x50]
	add r9, r10, r9
	sub r4, r9, r4
	mov r4, r4, lsl #0x10
	mov r9, r4, lsr #0x10
	mov r4, r9, lsl #8
	orr r4, r4, r9, asr #8
	strh r4, [r1, #0x1a]
	ldr r10, [r8, #0x24]
	ldr r9, [r2, #0x70]
	ldr r4, [r8, #0x50]
	add r9, r10, r9
	sub r9, r9, r4
	ldr r4, [r2, #0x74]
	add r6, r6, #1
	add r4, r9, r4
	mov r4, r4, lsr #0x10
	mov r4, r4, lsl #0x10
	mov r9, r4, lsr #0x10
	mov r4, r9, lsl #8
	orr r4, r4, r9, asr #8
	strh r4, [r1, #0x1c]
	ldr r9, [r8, #0x24]
	ldr r4, [r2, #0x70]
	ldr r2, [r2, #0x74]
	add r10, r9, r4
	ldr r9, [r8, #0x50]
	mov r4, r5
	sub r5, r10, r9
	add r2, r5, r2
	mov r2, r2, lsl #0x10
	mov r9, r2, lsr #0x10
	sub r5, r3, #0xd
	mov r2, r9, lsl #8
	orr r2, r2, r9, asr #8
	strh r2, [r1, #0x1e]
	b _020BE058
_020BE19C:
	bl OS_RestoreInterrupts
	mov r0, r6, lsl #3
	ldr r1, _020BE46C ; =0x01010500
	add r2, r0, #2
	orr r2, r2, r1
	mov r1, r2, lsr #0x10
	mov r1, r1, lsl #0x10
	mov r4, r1, lsr #0x10
	mov r1, r2, lsl #0x10
	mov r3, r4, lsl #8
	orr r3, r3, r4, asr #8
	mov r2, r1, lsr #0x10
	mov r1, r2, lsl #8
	strh r3, [r7, #0x14]
	orr r1, r1, r2, asr #8
	strh r1, [r7, #0x16]
	ldr r1, _020BE470 ; =0x020E6D40
	ldrh r2, [r8, #0x3a]
	ldrh r1, [r1, #4]
	add r4, r0, #0x18
	cmp r2, r1
	movhs r2, r1
	sub r1, r2, #4
	sub r1, r1, r0
	ldr r0, [sp, #0xc]
	cmp r0, r1
	bichi r0, r1, #1
	strhi r0, [sp, #0xc]
	b _020BE214
_020BE210:
	mov r4, #0x14
_020BE214:
	ldr r0, _020BE470 ; =0x020E6D40
	ldr r1, [sp, #0xc]
	ldr r3, [r0, #0x50]
	add r1, r4, r1
	mov r2, r1, lsl #0x10
	mov r1, r3, lsr #0x10
	mov r1, r1, lsl #0x10
	mov r3, r1, lsr #0x10
	mov r1, r3, lsl #8
	orr r1, r1, r3, asr #8
	strh r1, [r7, #-0xc]
	ldr r1, [r0, #0x50]
	mov r3, r2, lsr #0x10
	mov r1, r1, lsl #0x10
	mov r2, r1, lsr #0x10
	mov r1, r2, lsl #8
	orr r1, r1, r2, asr #8
	strh r1, [r7, #-0xa]
	ldr r1, [r8, #0x1c]
	mov r2, r3, lsl #8
	mov r1, r1, lsr #0x10
	mov r1, r1, lsl #0x10
	mov r5, r1, lsr #0x10
	mov r1, r5, lsl #8
	orr r1, r1, r5, asr #8
	strh r1, [r7, #-8]
	ldr r1, [r8, #0x1c]
	mov r5, #0x600
	mov r1, r1, lsl #0x10
	mov r6, r1, lsr #0x10
	mov r1, r6, lsl #8
	orr r1, r1, r6, asr #8
	strh r1, [r7, #-6]
	orr r1, r2, r3, asr #8
	strh r5, [r7, #-4]
	strh r1, [r7, #-2]
	ldrh r5, [r8, #0xa]
	mov r3, r4, lsl #2
	mov r2, #0
	mov r1, r5, lsl #8
	orr r1, r1, r5, asr #8
	strh r1, [r7]
	ldr r1, [sp, #0x10]
	ldrh r5, [r8, #0x18]
	cmp r1, #0
	mov r1, r5, lsl #8
	orr r1, r1, r5, asr #8
	strh r1, [r7, #2]
	ldr r1, [r8, #0x34]
	mov r1, r1, lsr #0x10
	mov r1, r1, lsl #0x10
	mov r5, r1, lsr #0x10
	mov r1, r5, lsl #8
	orr r1, r1, r5, asr #8
	strh r1, [r7, #4]
	ldr r1, [r8, #0x34]
	mov r1, r1, lsl #0x10
	mov r5, r1, lsr #0x10
	mov r1, r5, lsl #8
	orr r1, r1, r5, asr #8
	strh r1, [r7, #6]
	ldr r6, [r8, #0x24]
	mov r1, r6, lsr #0x10
	mov r1, r1, lsl #0x10
	mov r5, r1, lsr #0x10
	mov r1, r5, lsl #8
	str r6, [r8, #0x28]
	orr r1, r1, r5, asr #8
	strh r1, [r7, #8]
	ldr r6, [r8, #0x24]
	mov r1, r6, lsl #0x10
	mov r5, r1, lsr #0x10
	mov r1, r5, lsl #8
	str r6, [r8, #0x28]
	orr r1, r1, r5, asr #8
	strh r1, [r7, #0xa]
	strb r3, [r7, #0xc]
	strb r11, [r7, #0xd]
	ldr r3, [r8, #0x48]
	ldr r1, [r8, #0x50]
	sub r1, r3, r1
	strh r1, [r8, #0x30]
	ldrh r3, [r8, #0x30]
	mov r1, r3, lsl #8
	orr r1, r1, r3, asr #8
	strh r1, [r7, #0xe]
	strh r2, [r7, #0x10]
	strh r2, [r7, #0x12]
	beq _020BE3C4
	ldrh r1, [r0, #4]
	ldr r3, _020BE474 ; =0x00000101
	mov r2, #0x204
	add r1, r1, #0x2040000
	mov r1, r1, lsr #0x10
	mov r1, r1, lsl #0x10
	mov r5, r1, lsr #0x10
	mov r1, r5, lsl #8
	orr r1, r1, r5, asr #8
	strh r1, [r7, #0x14]
	ldrh r0, [r0, #4]
	add r0, r0, #0x2040000
	mov r0, r0, lsl #0x10
	mov r1, r0, lsr #0x10
	mov r0, r1, lsl #8
	orr r0, r0, r1, asr #8
	strh r0, [r7, #0x16]
	strh r3, [r7, #0x18]
	strh r2, [r7, #0x1a]
_020BE3C4:
	tst r11, #0x10
	mov r0, #0
	beq _020BE3DC
	strb r0, [r8, #0x32]
	bl FUN_02003410
	str r0, [r8, #0x2c]
_020BE3DC:
	sub r0, r7, #0xc
	add r1, r4, #0xc
	mov r2, #0
	bl FUN_ov15_020bcfc0
	mov r2, r0
	ldr r0, [sp, #8]
	ldr r1, [sp, #0xc]
	bl FUN_ov15_020bcfc0
	mov r0, r0, lsl #0x10
	mov r0, r0, lsr #0x10
	bl FUN_ov15_020bd0c8
	mov r1, r0, lsl #8
	orr r0, r1, r0, asr #8
	strh r0, [r7, #0x10]
	ldr r1, [r8, #0x34]
	ldr r0, [sp, #0xc]
	tst r11, #3
	add r0, r1, r0
	str r0, [r8, #0x34]
	addne r0, r0, #1
	strne r0, [r8, #0x34]
	ldr r5, [r8, #0x1c]
	mov r1, r4
	ldr r2, [sp, #8]
	ldr r3, [sp, #0xc]
	mov r0, r7
	str r5, [sp]
	mov r4, #6
	str r4, [sp, #4]
	bl FUN_ov15_020bdbec
	ldr r0, [sp, #0xc]
	add sp, sp, #0x14
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
_020BE460: .word 0x020939a4
_020BE464: .word ov15_020E7178
_020BE468: .word ov15_020E6E1E
_020BE46C: .word 0x01010500
_020BE470: .word ov15_020E6D40
_020BE474: .word 0x00000101
	arm_func_end FUN_ov15_020bdfd4

	arm_func_start FUN_ov15_020be478
FUN_ov15_020be478: ; 0x020BE478
	stmfd sp!, {r4, r5, r6, lr}
	mov r6, r0
	mov r3, #0x200
	add r0, r6, #8
	add r1, r6, #0x12
	mov r2, #0xa
	strh r3, [r6, #6]
	bl FUN_02007c60
	ldr r5, _020BE520 ; =0x020E6DA8
	mov r4, #6
	mov r0, r5
	mov r2, r4
	add r1, r6, #8
	bl FUN_02007c60
	ldr r3, _020BE524 ; =0x020E6D40
	mov r2, r4
	ldr r1, [r3, #0x50]
	add r0, r6, #0x12
	mov r1, r1, lsr #0x10
	mov r1, r1, lsl #0x10
	mov r12, r1, lsr #0x10
	mov r1, r12, lsl #8
	orr r1, r1, r12, asr #8
	strh r1, [r6, #0xe]
	ldr r3, [r3, #0x50]
	sub r1, r6, #0xe
	mov r3, r3, lsl #0x10
	mov r12, r3, lsr #0x10
	mov r3, r12, lsl #8
	orr r3, r3, r12, asr #8
	strh r3, [r6, #0x10]
	bl FUN_02007c60
	mov r0, r5
	mov r2, r4
	sub r1, r6, #8
	bl FUN_02007c60
	sub r0, r6, #0xe
	mov r1, #0x2a
	mov r2, #0
	mov r3, r2
	bl FUN_ov15_020bd2a8
	ldmfd sp!, {r4, r5, r6, pc}
_020BE520: .word ov15_020E6DA8
_020BE524: .word ov15_020E6D40
	arm_func_end FUN_ov15_020be478

	arm_func_start FUN_ov15_020be528
FUN_ov15_020be528: ; 0x020BE528
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	mov r6, r0
	cmp r1, #0x1c
	ldmlofd sp!, {r3, r4, r5, r6, r7, pc}
	ldr r1, _020BE664 ; =0x020E6DA8
	add r0, r6, #8
	bl FUN_ov15_020bd27c
	cmp r0, #0
	ldrne r0, _020BE668 ; =0x020E6D40
	ldrne r0, [r0, #0x50]
	cmpne r0, #0
	ldmeqfd sp!, {r3, r4, r5, r6, r7, pc}
	ldrh r0, [r6]
	cmp r0, #0x100
	ldreqh r0, [r6, #2]
	cmpeq r0, #8
	ldreqh r1, [r6, #4]
	ldreq r0, _020BE66C ; =0x00000406
	cmpeq r1, r0
	ldmnefd sp!, {r3, r4, r5, r6, r7, pc}
	ldrh r1, [r6, #6]
	mov r0, r1, lsl #8
	orr r0, r0, r1, asr #8
	mov r0, r0, lsl #0x10
	mov r4, r0, lsr #0x10
	cmp r4, #1
	beq _020BE59C
	cmp r4, #2
	ldmnefd sp!, {r3, r4, r5, r6, r7, pc}
_020BE59C:
	ldrh r5, [r6, #0x10]
	ldrh r3, [r6, #0xe]
	ldrh lr, [r6, #0x1a]
	mov r0, r5, lsl #8
	mov r1, r3, lsl #8
	orr r3, r1, r3, asr #8
	orr r1, r0, r5, asr #8
	mov r0, r3, lsl #0x10
	mov r1, r1, lsl #0x10
	ldrh r12, [r6, #0x18]
	ldr r2, _020BE668 ; =0x020E6D40
	mov r3, r0, lsr #0x10
	mov r1, r1, lsr #0x10
	ldr r0, [r2, #0x50]
	orr r1, r1, r3, lsl #16
	mov r3, r12, lsl #8
	mov r2, lr, lsl #8
	orr r12, r3, r12, asr #8
	orr r3, r2, lr, asr #8
	mov r2, r12, lsl #0x10
	mov r3, r3, lsl #0x10
	mov r12, r2, lsr #0x10
	mov r2, r3, lsr #0x10
	mov r5, #1
	cmp r1, r0
	movne r5, #0
	orr r2, r2, r12, lsl #16
	mov r7, #1
	cmp r0, r2
	movne r7, #0
	cmp r5, #0
	bne _020BE628
	mov r2, r7
	add r0, r6, #8
	bl FUN_ov15_020bd8b8
_020BE628:
	cmp r4, #1
	bne _020BE644
	cmp r7, #0
	beq _020BE644
	mov r0, r6
	bl FUN_ov15_020be478
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_020BE644:
	cmp r4, #2
	ldmnefd sp!, {r3, r4, r5, r6, r7, pc}
	cmp r7, #0
	cmpne r5, #0
	ldrne r0, _020BE668 ; =0x020E6D40
	movne r1, #1
	strneb r1, [r0, #1]
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_020BE664: .word ov15_020E6DA8
_020BE668: .word ov15_020E6D40
_020BE66C: .word 0x00000406
	arm_func_end FUN_ov15_020be528

	arm_func_start FUN_ov15_020be670
FUN_ov15_020be670: ; 0x020BE670
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	sub sp, sp, #8
	mov r6, r0
	ldrh r4, [r6, #0xe]
	ldrh r3, [r6, #0xc]
	mov r5, r1
	mov r0, r4, lsl #8
	mov r1, r3, lsl #8
	orr r3, r1, r3, asr #8
	orr r1, r0, r4, asr #8
	mov r0, r3, lsl #0x10
	mov r1, r1, lsl #0x10
	mov r3, r0, lsr #0x10
	mov r0, r1, lsr #0x10
	orr r0, r0, r3, lsl #16
	mov r4, r2
	bl FUN_ov15_020bd188
	movs r7, r0
	addeq sp, sp, #8
	ldmeqfd sp!, {r3, r4, r5, r6, r7, pc}
	bl FUN_ov15_020bd64c
	cmp r0, #0
	bne _020BE6DC
	mov r0, r7
	bl FUN_ov15_020bd714
	add sp, sp, #8
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_020BE6DC:
	ldrh r0, [r5, #2]
	mov r2, #0
	strb r2, [r5]
	add r0, r0, #8
	add r0, r0, r0, lsr #16
	strh r0, [r5, #2]
	ldrh r12, [r6, #0xe]
	ldrh r6, [r6, #0xc]
	mov r0, r5
	mov r1, r12, lsl #8
	mov r3, r6, lsl #8
	orr r5, r3, r6, asr #8
	orr r3, r1, r12, asr #8
	mov r1, r5, lsl #0x10
	mov r3, r3, lsl #0x10
	mov r5, r1, lsr #0x10
	mov r1, r3, lsr #0x10
	orr r5, r1, r5, lsl #16
	mov r1, r4
	mov r3, r2
	str r5, [sp]
	mov r4, #1
	str r4, [sp, #4]
	bl FUN_ov15_020bdbec
	add sp, sp, #8
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
	arm_func_end FUN_ov15_020be670

	arm_func_start FUN_ov15_020be744
FUN_ov15_020be744: ; 0x020BE744
	stmfd sp!, {r4, r5, r6, r7, r8, lr}
	mov r8, r0
	mov r7, r1
	mov r6, r2
	bl OS_DisableInterrupts
	ldr r1, _020BE840 ; =0x020939a4
	mov r5, r0
	ldr r1, [r1, #8]
	cmp r1, #0
	beq _020BE834
_020BE76C:
	ldr r4, [r1, #0xa4]
	cmp r4, #0
	ldrne r3, [r4]
	cmpne r3, #0
	beq _020BE828
	ldrb r0, [r4, #8]
	cmp r0, #0xb
	ldreqh r2, [r7, #4]
	moveq r0, r3, lsl #0x10
	cmpeq r2, r0, lsr #16
	ldreqh r2, [r4, #0xa]
	ldreqh r0, [r7, #6]
	cmpeq r2, r0
	ldreq r0, [r4, #0x50]
	cmpeq r0, #0
	bne _020BE828
	ldrh lr, [r8, #0xe]
	ldrh r12, [r8, #0xc]
	ldr r0, [r4, #0x1c]
	mov r2, lr, lsl #8
	mov r3, r12, lsl #8
	orr r12, r3, r12, asr #8
	orr r3, r2, lr, asr #8
	mov r2, r12, lsl #0x10
	mov r3, r3, lsl #0x10
	mov r12, r2, lsr #0x10
	mov r2, r3, lsr #0x10
	orr r2, r2, r12, lsl #16
	cmp r0, r2
	bne _020BE828
	ldr r1, [r4, #0x48]
	sub r0, r6, #8
	cmp r0, r1
	strhi r1, [r4, #0x50]
	strls r0, [r4, #0x50]
	ldr r1, [r4, #0x4c]
	ldr r2, [r4, #0x50]
	add r0, r7, #8
	bl FUN_02007c60
	ldr r0, [r4, #4]
	cmp r0, #3
	bne _020BE834
	mov r0, #0
	str r0, [r4, #4]
	ldr r0, [r4]
	bl OS_WakeupThreadDirect
	b _020BE834
_020BE828:
	ldr r1, [r1, #0x68]
	cmp r1, #0
	bne _020BE76C
_020BE834:
	mov r0, r5
	bl OS_RestoreInterrupts
	ldmfd sp!, {r4, r5, r6, r7, r8, pc}
_020BE840: .word 0x020939a4
	arm_func_end FUN_ov15_020be744

	arm_func_start FUN_ov15_020be844
FUN_ov15_020be844: ; 0x020BE844
	stmfd sp!, {r3, r4, r5, lr}
	movs r5, r0
	mov r4, r1
	beq _020BE89C
	bl FUN_ov15_020bd1ac
	cmp r0, #0
	bne _020BE89C
	mov r0, r5
	bl FUN_ov15_020bd1e8
	cmp r0, #0
	bne _020BE89C
	cmp r4, #0
	beq _020BE89C
	mov r0, r4
	bl FUN_ov15_020bd1ac
	cmp r0, #0
	bne _020BE89C
	mov r0, r4
	bl FUN_ov15_020bd1e8
	cmp r0, #0
	moveq r0, #1
	ldmeqfd sp!, {r3, r4, r5, pc}
_020BE89C:
	mov r0, #0
	ldmfd sp!, {r3, r4, r5, pc}
	arm_func_end FUN_ov15_020be844

	arm_func_start FUN_ov15_020be8a4
FUN_ov15_020be8a4: ; 0x020BE8A4
	stmfd sp!, {r4, r5, r6, r7, r8, lr}
	mov r4, r2
	mov r6, r0
	mov r5, r1
	cmp r4, #8
	ldmlofd sp!, {r4, r5, r6, r7, r8, pc}
	mov r0, r5
	mov r1, r4
	bl FUN_ov15_020bd0dc
	ldr r1, _020BE978 ; =0x0000FFFF
	cmp r0, r1
	ldmnefd sp!, {r4, r5, r6, r7, r8, pc}
	ldrh r0, [r6, #0x12]
	ldrh r8, [r6, #0x10]
	ldrh r7, [r6, #0xe]
	ldrh lr, [r6, #0xc]
	mov r2, r8, lsl #8
	orr r2, r2, r8, asr #8
	mov r12, lr, lsl #8
	mov r2, r2, lsl #0x10
	mov r3, r7, lsl #8
	orr lr, r12, lr, asr #8
	mov r1, r0, lsl #8
	orr r12, r3, r7, asr #8
	orr r3, r1, r0, asr #8
	mov r0, lr, lsl #0x10
	mov r1, r12, lsl #0x10
	mov r12, r0, lsr #0x10
	mov r0, r1, lsr #0x10
	mov r3, r3, lsl #0x10
	mov r2, r2, lsr #0x10
	mov r1, r3, lsr #0x10
	orr r0, r0, r12, lsl #16
	orr r1, r1, r2, lsl #16
	bl FUN_ov15_020be844
	cmp r0, #0
	ldmeqfd sp!, {r4, r5, r6, r7, r8, pc}
	ldrb r0, [r5]
	cmp r0, #0
	beq _020BE950
	cmp r0, #8
	beq _020BE964
	ldmfd sp!, {r4, r5, r6, r7, r8, pc}
_020BE950:
	mov r0, r6
	mov r1, r5
	mov r2, r4
	bl FUN_ov15_020be744
	ldmfd sp!, {r4, r5, r6, r7, r8, pc}
_020BE964:
	mov r0, r6
	mov r1, r5
	mov r2, r4
	bl FUN_ov15_020be670
	ldmfd sp!, {r4, r5, r6, r7, r8, pc}
_020BE978: .word 0x0000FFFF
	arm_func_end FUN_ov15_020be8a4

	arm_func_start FUN_ov15_020be97c
FUN_ov15_020be97c: ; 0x020BE97C
	stmfd sp!, {r4, r5, r6, lr}
	ldr r2, _020BEA4C ; =0x020939a4
	ldr r12, [r2, #8]
	cmp r12, #0
	beq _020BEA44
_020BE990:
	ldr r3, [r12, #0xa4]
	cmp r3, #0
	ldrne r2, [r3]
	cmpne r2, #0
	beq _020BEA38
	ldrb r2, [r3, #8]
	cmp r2, #1
	bne _020BEA38
	ldrh r5, [r1, #2]
	ldrh r4, [r3, #0xa]
	mov r2, r5, lsl #8
	orr r2, r2, r5, asr #8
	mov r2, r2, lsl #0x10
	cmp r4, r2, lsr #16
	bne _020BEA38
	ldrh r5, [r3, #0x18]
	cmp r5, #0
	beq _020BE9F0
	ldrh r4, [r1]
	mov r2, r4, lsl #8
	orr r2, r2, r4, asr #8
	mov r2, r2, lsl #0x10
	cmp r5, r2, lsr #16
	bne _020BEA38
_020BE9F0:
	ldr r2, [r3, #0x1c]
	cmp r2, #0
	beq _020BEA30
	ldrh r6, [r0, #0xe]
	ldrh r5, [r0, #0xc]
	mov r4, r6, lsl #8
	mov lr, r5, lsl #8
	orr lr, lr, r5, asr #8
	orr r4, r4, r6, asr #8
	mov lr, lr, lsl #0x10
	mov r4, r4, lsl #0x10
	mov lr, lr, lsr #0x10
	mov r4, r4, lsr #0x10
	orr r4, r4, lr, lsl #16
	cmp r2, r4
	bne _020BEA38
_020BEA30:
	mov r0, r3
	ldmfd sp!, {r4, r5, r6, pc}
_020BEA38:
	ldr r12, [r12, #0x68]
	cmp r12, #0
	bne _020BE990
_020BEA44:
	mov r0, #0
	ldmfd sp!, {r4, r5, r6, pc}
_020BEA4C: .word 0x020939a4
	arm_func_end FUN_ov15_020be97c

	arm_func_start FUN_ov15_020bea50
FUN_ov15_020bea50: ; 0x020BEA50
	stmfd sp!, {r4, r5, r6, lr}
	ldrb r4, [r2, #8]
	mov r3, #0
	mov r5, r3
	cmp r4, #0xa
	cmpne r4, #0xb
	movne r5, #1
	mov r12, r3
	mov r6, r3
	cmp r5, #0
	beq _020BEA98
	ldrh lr, [r1, #2]
	ldrh r5, [r2, #0xa]
	mov r4, lr, lsl #8
	orr r4, r4, lr, asr #8
	mov lr, r4, lsl #0x10
	cmp r5, lr, lsr #16
	moveq r6, #1
_020BEA98:
	cmp r6, #0
	beq _020BEABC
	ldrh lr, [r1]
	ldrh r4, [r2, #0x18]
	mov r1, lr, lsl #8
	orr r1, r1, lr, asr #8
	mov r1, r1, lsl #0x10
	cmp r4, r1, lsr #16
	moveq r12, #1
_020BEABC:
	cmp r12, #0
	beq _020BEAFC
	ldrh lr, [r0, #0xc]
	ldrh r4, [r0, #0xe]
	ldr r12, [r2, #0x1c]
	mov r1, lr, lsl #8
	mov r0, r4, lsl #8
	orr r2, r1, lr, asr #8
	orr r1, r0, r4, asr #8
	mov r0, r2, lsl #0x10
	mov r1, r1, lsl #0x10
	mov r2, r0, lsr #0x10
	mov r0, r1, lsr #0x10
	orr r0, r0, r2, lsl #16
	cmp r12, r0
	moveq r3, #1
_020BEAFC:
	mov r0, r3
	ldmfd sp!, {r4, r5, r6, pc}
	arm_func_end FUN_ov15_020bea50

	arm_func_start FUN_ov15_020beb04
FUN_ov15_020beb04: ; 0x020BEB04
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	ldr r2, _020BEB64 ; =0x020939a4
	mov r7, r0
	ldr r5, [r2, #8]
	mov r6, r1
	cmp r5, #0
	beq _020BEB5C
_020BEB20:
	ldr r4, [r5, #0xa4]
	cmp r4, #0
	ldrne r0, [r4]
	cmpne r0, #0
	beq _020BEB50
	mov r0, r7
	mov r1, r6
	mov r2, r4
	bl FUN_ov15_020bea50
	cmp r0, #0
	movne r0, r4
	ldmnefd sp!, {r3, r4, r5, r6, r7, pc}
_020BEB50:
	ldr r5, [r5, #0x68]
	cmp r5, #0
	bne _020BEB20
_020BEB5C:
	mov r0, #0
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_020BEB64: .word 0x020939a4
	arm_func_end FUN_ov15_020beb04

	arm_func_start FUN_ov15_020beb68
FUN_ov15_020beb68: ; 0x020BEB68
	stmfd sp!, {r3, lr}
	mov r2, #0x218
	strh r2, [r1, #0x3a]
	ldrb r2, [r0, #0xc]
	add r0, r0, #0x14
	and r3, r2, #0xf0
	mov r2, r3, asr #1
	add r2, r3, r2, lsr #30
	mov r2, r2, asr #2
	sub r2, r2, #0x14
	cmp r2, #0
	sub lr, r2, #1
	ldmlefd sp!, {r3, pc}
	mov r3, #1
_020BEBA0:
	ldrb r2, [r0], #1
	cmp r2, #4
	addls pc, pc, r2, lsl #2
	b _020BEC1C
_020BEBB0: ; jump table
	b _020BEBC4 ; case 0
	b _020BEC3C ; case 1
	b _020BEBC8 ; case 2
	b _020BEC1C ; case 3
	b _020BEBF8 ; case 4
_020BEBC4:
	ldmfd sp!, {r3, pc}
_020BEBC8:
	cmp lr, #2
	ldmlefd sp!, {r3, pc}
	ldrb r2, [r0]
	cmp r2, #4
	ldmnefd sp!, {r3, pc}
	ldrb r12, [r0, #1]
	ldrb r2, [r0, #2]
	add r0, r0, #3
	sub lr, lr, #3
	orr r2, r2, r12, lsl #8
	strh r2, [r1, #0x3a]
	b _020BEC3C
_020BEBF8:
	cmp lr, #0
	ldmlefd sp!, {r3, pc}
	ldrb r2, [r0]
	cmp r2, #2
	ldmnefd sp!, {r3, pc}
	strb r3, [r1, #0x33]
	add r0, r0, #1
	sub lr, lr, #1
	b _020BEC3C
_020BEC1C:
	cmp lr, #0
	ldmlefd sp!, {r3, pc}
	ldrb r2, [r0]
	cmp r2, #2
	ldmlofd sp!, {r3, pc}
	sub r2, r2, #1
	sub lr, lr, r2
	add r0, r0, r2
_020BEC3C:
	cmp lr, #0
	sub lr, lr, #1
	bgt _020BEBA0
	ldmfd sp!, {r3, pc}
	arm_func_end FUN_ov15_020beb68

	arm_func_start FUN_ov15_020bec4c
FUN_ov15_020bec4c: ; 0x020BEC4C
	stmfd sp!, {r3, lr}
	bl FUN_ov15_020bd188
	cmp r0, #0
	moveq r0, #1
	ldmeqfd sp!, {r3, pc}
	bl FUN_ov15_020bd64c
	ldmfd sp!, {r3, pc}
	arm_func_end FUN_ov15_020bec4c

	arm_func_start FUN_ov15_020bec68
FUN_ov15_020bec68: ; 0x020BEC68
	stmfd sp!, {r3, r4, r5, lr}
	mov r5, r0
	ldr r0, [r5, #0x1c]
	mov r4, r1
	bl FUN_ov15_020bec4c
	cmp r0, #0
	ldreq r0, _020BECBC ; =0x020939a4
	ldreq r1, _020BECC0 ; =0x020E7178
	ldreq r0, [r0, #4]
	cmpeq r0, r1
	beq _020BECAC
	mov r0, #0
	mov r1, r0
	mov r2, r5
	mov r3, r4
	bl FUN_ov15_020bdfd4
	ldmfd sp!, {r3, r4, r5, pc}
_020BECAC:
	ldr r0, [r5, #0x1c]
	bl FUN_ov15_020bd188
	bl FUN_ov15_020bd714
	ldmfd sp!, {r3, r4, r5, pc}
_020BECBC: .word 0x020939a4
_020BECC0: .word ov15_020E7178
	arm_func_end FUN_ov15_020bec68

	arm_func_start FUN_ov15_020becc4
FUN_ov15_020becc4: ; 0x020BECC4
	stmfd sp!, {r4, lr}
	mov r4, r0
	cmp r1, #2
	beq _020BED40
	ldr r2, [r4, #0x28]
	ldr r0, [r4, #0x24]
	cmp r2, r0
	bne _020BED00
	ldr r2, [r4, #0x48]
	ldr r0, [r4, #0x50]
	ldrh r3, [r4, #0x30]
	sub r0, r2, r0
	mov r0, r0, lsl #0x10
	cmp r3, r0, lsr #16
	ldmeqfd sp!, {r4, pc}
_020BED00:
	cmp r1, #1
	beq _020BED40
	ldrb r0, [r4, #0x32]
	add r1, r0, #1
	and r0, r1, #0xff
	strb r1, [r4, #0x32]
	cmp r0, #2
	bhs _020BED40
	bl FUN_02003410
	ldr r2, [r4, #0x2c]
	ldr r1, _020BED50 ; =0x0001991B
	sub r0, r0, r2
	cmp r0, r1
	bhs _020BED40
	bl FUN_ov15_020c1338
	ldmfd sp!, {r4, pc}
_020BED40:
	mov r0, r4
	mov r1, #0x10
	bl FUN_ov15_020bec68
	ldmfd sp!, {r4, pc}
_020BED50: .word 0x0001991B
	arm_func_end FUN_ov15_020becc4

	arm_func_start FUN_ov15_020bed54
FUN_ov15_020bed54: ; 0x020BED54
	ldr r12, _020BED60 ; =FUN_ov15_020bec68
	mov r1, #0x11
	bx r12
_020BED60: .word FUN_ov15_020bec68
	arm_func_end FUN_ov15_020bed54

	arm_func_start FUN_ov15_020bed64
FUN_ov15_020bed64: ; 0x020BED64
	stmfd sp!, {r4, r5, r6, r7, r8, lr}
	ldr r5, _020BEE7C ; =0x020E6F58
	mov r4, #0
	mov r8, r0
	mov r7, r1
	mov r6, r2
	mov r0, r5
	mov r1, r4
	mov r2, #0xa0
	bl MI_CpuFill8
	ldrh r1, [r7, #2]
	mov r0, r1, lsl #8
	orr r0, r0, r1, asr #8
	strh r0, [r5, #0xa]
	ldrh r1, [r7]
	mov r0, r1, lsl #8
	orr r0, r0, r1, asr #8
	strh r0, [r5, #0x18]
	ldrh r3, [r8, #0xe]
	ldrh r2, [r8, #0xc]
	mov r0, r3, lsl #8
	mov r1, r2, lsl #8
	orr r2, r1, r2, asr #8
	orr r1, r0, r3, asr #8
	mov r0, r2, lsl #0x10
	mov r1, r1, lsl #0x10
	mov r2, r0, lsr #0x10
	mov r0, r1, lsr #0x10
	orr r0, r0, r2, lsl #16
	str r0, [r5, #0x1c]
	ldrb r0, [r7, #0xd]
	tst r0, #0x10
	beq _020BEE28
	ldrh r4, [r7, #0xa]
	ldrh r3, [r7, #8]
	mov r0, r5
	mov r1, r4, lsl #8
	mov r2, r3, lsl #8
	orr r3, r2, r3, asr #8
	orr r2, r1, r4, asr #8
	mov r1, r3, lsl #0x10
	mov r2, r2, lsl #0x10
	mov r3, r1, lsr #0x10
	mov r1, r2, lsr #0x10
	orr r2, r1, r3, lsl #16
	mov r1, #4
	str r2, [r5, #0x34]
	bl FUN_ov15_020bec68
	ldmfd sp!, {r4, r5, r6, r7, r8, pc}
_020BEE28:
	str r4, [r5, #0x34]
	ldrh r2, [r7, #4]
	ldrh r3, [r7, #6]
	tst r0, #3
	mov r1, r2, lsl #8
	mov r0, r3, lsl #8
	orr r2, r1, r2, asr #8
	orr r1, r0, r3, asr #8
	mov r0, r2, lsl #0x10
	mov r1, r1, lsl #0x10
	mov r2, r0, lsr #0x10
	mov r0, r1, lsr #0x10
	orr r0, r0, r2, lsl #16
	add r0, r6, r0
	str r0, [r5, #0x24]
	addne r0, r0, #1
	strne r0, [r5, #0x24]
	mov r0, r5
	mov r1, #0x14
	bl FUN_ov15_020bec68
	ldmfd sp!, {r4, r5, r6, r7, r8, pc}
_020BEE7C: .word ov15_020E6F58
	arm_func_end FUN_ov15_020bed64

	arm_func_start FUN_ov15_020bee80
FUN_ov15_020bee80: ; 0x020BEE80
	stmfd sp!, {r4, r5, r6, lr}
	mov r4, r2
	mov r2, #3
	mov r6, r0
	mov r5, r1
	strb r2, [r4, #8]
	bl FUN_02003410
	mov r0, r0, lsr #0x10
	orr r0, r0, r1, lsl #16
	str r0, [r4, #0x10]
	ldrh r12, [r6, #0x12]
	ldrh r3, [r6, #0x10]
	mov r0, r5
	mov r1, r12, lsl #8
	mov r2, r3, lsl #8
	orr r3, r2, r3, asr #8
	orr r2, r1, r12, asr #8
	mov r1, r3, lsl #0x10
	mov r2, r2, lsl #0x10
	mov r3, r1, lsr #0x10
	mov r1, r2, lsr #0x10
	orr r1, r1, r3, lsl #16
	str r1, [r4, #0x14]
	ldrh r3, [r5]
	mov r1, r4
	mov r2, r3, lsl #8
	orr r2, r2, r3, asr #8
	strh r2, [r4, #0x18]
	ldrh r12, [r6, #0xe]
	ldrh r6, [r6, #0xc]
	mov r2, r12, lsl #8
	mov r3, r6, lsl #8
	orr r6, r3, r6, asr #8
	orr r3, r2, r12, asr #8
	mov r2, r6, lsl #0x10
	mov r3, r3, lsl #0x10
	mov r6, r2, lsr #0x10
	mov r2, r3, lsr #0x10
	orr r2, r2, r6, lsl #16
	str r2, [r4, #0x1c]
	ldrh r6, [r5, #6]
	ldrh r5, [r5, #4]
	mov r2, r6, lsl #8
	mov r3, r5, lsl #8
	orr r5, r3, r5, asr #8
	orr r3, r2, r6, asr #8
	mov r2, r5, lsl #0x10
	mov r3, r3, lsl #0x10
	mov r5, r2, lsr #0x10
	mov r2, r3, lsr #0x10
	orr r2, r2, r5, lsl #16
	add r2, r2, #1
	str r2, [r4, #0x24]
	bl FUN_ov15_020beb68
	mov r0, r4
	mov r1, #0x12
	bl FUN_ov15_020bec68
	ldmfd sp!, {r4, r5, r6, pc}
	arm_func_end FUN_ov15_020bee80

	arm_func_start FUN_ov15_020bef68
FUN_ov15_020bef68: ; 0x020BEF68
	stmfd sp!, {r4, r5, r6, lr}
	mov r6, r0
	mov r5, r1
	mov r4, r2
	bl FUN_ov15_020beb04
	movs r2, r0
	beq _020BEFD8
	ldrb r0, [r2, #8]
	cmp r0, #1
	bne _020BEFA0
	mov r0, r6
	mov r1, r5
_020BEF98:
	bl FUN_ov15_020bee80
	b _020BEFD0
_020BEFA0:
	cmp r0, #3
	bne _020BEFC0
	ldr r1, [r2, #0x34]
	mov r0, r6
	sub r3, r1, #1
	mov r1, r5
	str r3, [r2, #0x34]
	b _020BEF98
_020BEFC0:
	mov r0, r6
	mov r1, r5
	mov r2, r4
	bl FUN_ov15_020bed64
_020BEFD0:
	mov r0, #1
	ldmfd sp!, {r4, r5, r6, pc}
_020BEFD8:
	mov r0, #0
	ldmfd sp!, {r4, r5, r6, pc}
	arm_func_end FUN_ov15_020bef68

	arm_func_start FUN_ov15_020befe0
FUN_ov15_020befe0: ; 0x020BEFE0
	stmfd sp!, {r4, r5, r6, r7, r8, lr}
	mov r4, r0
	ldrh r0, [r4, #0x12]
	ldrh r8, [r4, #0x10]
	ldrh r7, [r4, #0xe]
	ldrh r6, [r4, #0xc]
	mov r12, r8, lsl #8
	orr r12, r12, r8, asr #8
	mov r5, r6, lsl #8
	mov r12, r12, lsl #0x10
	mov lr, r7, lsl #8
	orr r6, r5, r6, asr #8
	mov r3, r0, lsl #8
	orr r5, lr, r7, asr #8
	orr lr, r3, r0, asr #8
	mov r0, r6, lsl #0x10
	mov r3, r5, lsl #0x10
	mov r5, r0, lsr #0x10
	mov r0, r3, lsr #0x10
	mov lr, lr, lsl #0x10
	orr r0, r0, r5, lsl #16
	mov r12, r12, lsr #0x10
	mov r3, lr, lsr #0x10
	mov r6, r1
	orr r1, r3, r12, lsl #16
	mov r5, r2
	bl FUN_ov15_020be844
	cmp r0, #0
	ldmeqfd sp!, {r4, r5, r6, r7, r8, pc}
	mov r0, r4
	mov r1, r6
	mov r2, r5
	bl FUN_ov15_020bef68
	cmp r0, #0
	ldmnefd sp!, {r4, r5, r6, r7, r8, pc}
	mov r0, r4
	mov r1, r6
	bl FUN_ov15_020be97c
	movs r2, r0
	beq _020BF090
	mov r0, r4
	mov r1, r6
	bl FUN_ov15_020bee80
	ldmfd sp!, {r4, r5, r6, r7, r8, pc}
_020BF090:
	bl OS_YieldThread
	mov r0, r4
	mov r1, r6
	bl FUN_ov15_020be97c
	movs r2, r0
	ldmeqfd sp!, {r4, r5, r6, r7, r8, pc}
	mov r0, r4
	mov r1, r6
	bl FUN_ov15_020bee80
	ldmfd sp!, {r4, r5, r6, r7, r8, pc}
	arm_func_end FUN_ov15_020befe0

	arm_func_start FUN_ov15_020bf0b8
FUN_ov15_020bf0b8: ; 0x020BF0B8
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	mov r7, r0
	mov r5, r1
	mov r6, r2
	bl FUN_ov15_020beb04
	movs r4, r0
	beq _020BF0E0
	ldrb r0, [r4, #8]
	cmp r0, #2
	beq _020BF0F4
_020BF0E0:
	mov r0, r7
	mov r1, r5
	mov r2, r6
	bl FUN_ov15_020bed64
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_020BF0F4:
	bl OS_YieldThread
	ldrh r12, [r5, #6]
	ldrh r3, [r5, #4]
	mov r0, r5
	mov r1, r12, lsl #8
	mov r2, r3, lsl #8
	orr r3, r2, r3, asr #8
	orr r2, r1, r12, asr #8
	mov r1, r3, lsl #0x10
	mov r2, r2, lsl #0x10
	mov r3, r1, lsr #0x10
	mov r1, r2, lsr #0x10
	orr r1, r1, r3, lsl #16
	add r1, r1, #1
	str r1, [r4, #0x24]
	ldrh lr, [r5, #0xa]
	ldrh r12, [r5, #8]
	mov r1, r4
	mov r2, lr, lsl #8
	mov r3, r12, lsl #8
	orr r12, r3, r12, asr #8
	orr r3, r2, lr, asr #8
	mov r2, r12, lsl #0x10
	mov r3, r3, lsl #0x10
	mov r12, r2, lsr #0x10
	mov r2, r3, lsr #0x10
	orr r2, r2, r12, lsl #16
	str r2, [r4, #0x3c]
	ldrh r3, [r5, #0xe]
	mov r2, r3, lsl #8
	orr r2, r2, r3, asr #8
	strh r2, [r4, #0x38]
	bl FUN_ov15_020beb68
	mov r0, r4
	mov r1, #2
	bl FUN_ov15_020becc4
	mov r0, #4
	strb r0, [r4, #8]
	ldr r0, [r4, #4]
	cmp r0, #1
	ldmnefd sp!, {r3, r4, r5, r6, r7, pc}
	mov r0, #0
	str r0, [r4, #4]
	ldr r0, [r4]
	bl OS_WakeupThreadDirect
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
	arm_func_end FUN_ov15_020bf0b8

	arm_func_start FUN_ov15_020bf1ac
FUN_ov15_020bf1ac: ; 0x020BF1AC
	stmfd sp!, {r4, lr}
	mov lr, #0
	mov r12, lr
	mov r2, #0xc
	b _020BF1D0
_020BF1C0:
	ldr r3, [r4, #0x78]
	add r12, r12, #1
	cmp lr, r3
	movlo lr, r3
_020BF1D0:
	cmp r12, #3
	bge _020BF1E8
	mla r4, r12, r2, r0
	ldr r3, [r4, #0x70]
	cmp r3, #0
	bne _020BF1C0
_020BF1E8:
	mov r2, #0xc
	mla r0, r1, r2, r0
	add r1, lr, #1
	str r1, [r0, #0x78]
	ldmfd sp!, {r4, pc}
	arm_func_end FUN_ov15_020bf1ac

	arm_func_start FUN_ov15_020bf1fc
FUN_ov15_020bf1fc: ; 0x020BF1FC
	stmfd sp!, {r4, lr}
	mov r4, r0
_020BF204:
	ldr r2, [r4, #0x70]
	cmp r2, #0
	beq _020BF248
	ldr r12, [r4, #0x50]
	cmp r12, r2
	blo _020BF248
	ldr r0, [r4, #0x74]
	mov r1, #0
	add r2, r2, r0
	ldr r3, [r4, #0x24]
	sub r0, r2, r12
	add r3, r3, r0
	mov r0, r4
	str r3, [r4, #0x24]
	str r2, [r4, #0x50]
	str r1, [r4, #0x70]
	bl FUN_ov15_020bf2ac
_020BF248:
	mov lr, #0
	mov r0, #0xc
_020BF250:
	mla r12, lr, r0, r4
	ldr r3, [r12, #0x70]
	cmp r3, #0
	ldrne r2, [r12, #0x7c]
	cmpne r2, #0
	beq _020BF29C
	ldr r1, [r12, #0x74]
	add r1, r3, r1
	cmp r1, r2
	blo _020BF29C
	ldr r1, [r12, #0x80]
	mov r0, r4
	add r1, r2, r1
	sub r1, r1, r3
	str r1, [r12, #0x74]
	mov r1, #0
	str r1, [r12, #0x7c]
	bl FUN_ov15_020bf2ac
	b _020BF204
_020BF29C:
	add lr, lr, #1
	cmp lr, #3
	blt _020BF250
	ldmfd sp!, {r4, pc}
	arm_func_end FUN_ov15_020bf1fc

	arm_func_start FUN_ov15_020bf2ac
FUN_ov15_020bf2ac: ; 0x020BF2AC
	stmfd sp!, {r4, r5, r6, lr}
	mov r5, #0
	mov r6, r0
	mov r12, r5
	mov r3, #0xc
_020BF2C0:
	mla r4, r5, r3, r6
	ldr r0, [r4, #0x70]
	add r5, r5, #1
	cmp r0, #0
	addeq r0, r4, #0x7c
	addeq lr, r4, #0x70
	ldmeqia r0, {r0, r1, r2}
	stmeqia lr, {r0, r1, r2}
	streq r12, [r4, #0x7c]
	cmp r5, #3
	blt _020BF2C0
	ldmfd sp!, {r4, r5, r6, pc}
	arm_func_end FUN_ov15_020bf2ac

	arm_func_start FUN_ov15_020bf2f0
FUN_ov15_020bf2f0: ; 0x020BF2F0
	stmfd sp!, {r3, r4, r5, lr}
	mov r4, r1
	mov r5, r0
	cmp r4, #2
	mov lr, #2
	bgt _020BF32C
	mov r3, #0xc
_020BF30C:
	mla r1, lr, r3, r5
	add r0, r1, #0x70
	sub lr, lr, #1
	add r12, r1, #0x7c
	ldmia r0, {r0, r1, r2}
	stmia r12, {r0, r1, r2}
	cmp lr, r4
	bge _020BF30C
_020BF32C:
	mov r0, #0xc
	mla r0, r4, r0, r5
	mov r1, #0
	str r1, [r0, #0x70]
	ldmfd sp!, {r3, r4, r5, pc}
	arm_func_end FUN_ov15_020bf2f0

	arm_func_start FUN_ov15_020bf340
FUN_ov15_020bf340: ; 0x020BF340
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, lr}
	mov r10, r0
	mov r5, r1
	mov r4, r2
	mov r7, #0
	bl FUN_ov15_020beb04
	movs r6, r0
	bne _020BF374
	mov r0, r10
	mov r1, r5
	mov r2, r4
	bl FUN_ov15_020bed64
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_020BF374:
	ldrh r8, [r5, #0xa]
	ldrh r3, [r5, #8]
	ldr r2, [r6, #0x3c]
	mov r0, r8, lsl #8
	mov r1, r3, lsl #8
	orr r3, r1, r3, asr #8
	orr r1, r0, r8, asr #8
	mov r0, r3, lsl #0x10
	mov r1, r1, lsl #0x10
	mov r3, r0, lsr #0x10
	mov r0, r1, lsr #0x10
	orr r1, r0, r3, lsl #16
	sub r0, r1, r2
	ldrb r8, [r5, #0xd]
	cmp r0, #0
	strgt r1, [r6, #0x3c]
	ldrh r3, [r5, #6]
	ldrh r2, [r5, #4]
	mov r0, r3, lsl #8
	mov r1, r2, lsl #8
	orr r2, r1, r2, asr #8
	orr r1, r0, r3, asr #8
	mov r0, r2, lsl #0x10
	mov r1, r1, lsl #0x10
	mov r2, r0, lsr #0x10
	mov r0, r1, lsr #0x10
	orr r9, r0, r2, lsl #16
	bl OS_DisableInterrupts
	ldrb r1, [r6, #8]
	str r0, [sp]
	cmp r1, #4
	bne _020BF5A0
	ldr r2, [r6, #0x24]
	cmp r2, r9
	beq _020BF5A0
	ldr r1, [r6, #0x50]
	add r0, r1, r9
	sub r7, r0, r2
	cmp r1, r7
	ldrlo r0, [r6, #0x48]
	cmplo r7, r0
	bhs _020BF588
	sub r0, r0, r7
	cmp r4, r0
	movhi r4, r0
	cmp r4, #0
	beq _020BF588
	add r9, r7, r4
	mov r8, #0
_020BF438:
	mov r0, #0xc
	mul r11, r8, r0
	add r10, r6, r11
_020BF444:
	ldr r2, [r10, #0x70]
	cmp r2, #0
	bne _020BF490
	ldrb r0, [r5, #0xc]
	ldr r1, [r6, #0x4c]
	mov r2, r4
	and r0, r0, #0xf0
	add r0, r5, r0, lsr #2
	add r1, r1, r7
	bl FUN_02007c60
	add r2, r6, r11
	str r7, [r2, #0x70]
	mov r0, r6
	mov r1, r8
	str r4, [r2, #0x74]
_020BF480:
	bl FUN_ov15_020bf1ac
	mov r0, r6
	bl FUN_ov15_020bf1fc
	b _020BF588
_020BF490:
	ldr r0, [r10, #0x74]
	cmp r7, r2
	add r1, r2, r0
	bhs _020BF4F4
	cmp r2, r9
	bhi _020BF4F4
	ldrb r0, [r5, #0xc]
	add r4, r6, #0x70
	ldr r1, [r6, #0x4c]
	ldr r2, [r4, r11]
	and r0, r0, #0xf0
	add r0, r5, r0, lsr #2
	add r1, r1, r7
	sub r2, r2, r7
	bl FUN_02007c60
	add r2, r6, #0x74
	ldr r0, [r4, r11]
	ldr r1, [r2, r11]
	sub r0, r0, r7
	add r0, r1, r0
	str r0, [r2, r11]
	mov r0, r6
	mov r1, r8
	str r7, [r4, r11]
	b _020BF480
_020BF4F4:
	cmp r7, r1
	bhi _020BF554
	cmp r1, r9
	bhs _020BF554
	ldrb r0, [r5, #0xc]
	ldr r3, [r6, #0x4c]
	sub r4, r9, r1
	and r0, r0, #0xf0
	add r0, r5, r0, lsr #2
	add r0, r0, r1
	mov r2, r4
	sub r0, r0, r7
	add r1, r3, r1
	bl FUN_02007c60
	add r2, r6, #0x74
	ldr r1, [r2, r11]
	mov r0, r6
	add r1, r1, r4
	str r1, [r2, r11]
	bl FUN_ov15_020bf1fc
	mov r0, r6
	mov r1, r8
	bl FUN_ov15_020bf1ac
	b _020BF588
_020BF554:
	cmp r2, r7
	bhi _020BF564
	cmp r9, r1
	bls _020BF588
_020BF564:
	cmp r7, r2
	bhs _020BF57C
	mov r0, r6
	mov r1, r8
	bl FUN_ov15_020bf2f0
	b _020BF444
_020BF57C:
	add r8, r8, #1
	cmp r8, #4
	blt _020BF438
_020BF588:
	ldr r0, [sp]
	bl OS_RestoreInterrupts
	mov r0, r6
	mov r1, #2
	bl FUN_ov15_020becc4
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_020BF5A0:
	ldrh r1, [r5, #0xe]
	mov r0, r1, lsl #8
	orr r0, r0, r1, asr #8
	strh r0, [r6, #0x38]
	ldrb r0, [r6, #8]
	cmp r0, #9
	addls pc, pc, r0, lsl #2
	b _020BF834
_020BF5C0: ; jump table
	b _020BF5E8 ; case 0
	b _020BF834 ; case 1
	b _020BF5E8 ; case 2
	b _020BF604 ; case 3
	b _020BF638 ; case 4
	b _020BF834 ; case 5
	b _020BF818 ; case 6
	b _020BF7A8 ; case 7
	b _020BF7A8 ; case 8
	b _020BF818 ; case 9
_020BF5E8:
	ldr r0, [sp]
	bl OS_RestoreInterrupts
	mov r0, r10
	mov r1, r5
	mov r2, r4
	bl FUN_ov15_020bed64
	b _020BF858
_020BF604:
	mov r0, #4
	strb r0, [r6, #8]
	ldr r0, [r6, #4]
	cmp r0, #1
	bne _020BF624
	str r7, [r6, #4]
	ldr r0, [r6]
	bl OS_WakeupThreadDirect
_020BF624:
	cmp r4, #0
	bne _020BF638
	ldr r0, [sp]
	bl OS_RestoreInterrupts
	b _020BF858
_020BF638:
	ldr r0, [r6, #0x40]
	add r0, r0, #1
	str r0, [r6, #0x40]
	ldr r1, [r6, #0x50]
	ldr r0, [r6, #0x48]
	sub r0, r0, r1
	cmp r4, r0
	movhi r9, #0
	movhi r4, r0
	movls r9, #1
	cmp r4, #0
	beq _020BF738
	ldr r2, [r6, #0x70]
	cmp r2, #0
	beq _020BF6E0
	add r0, r1, r4
	cmp r2, r0
	bhi _020BF6E0
	tst r8, #1
	ldrb r0, [r5, #0xc]
	ldr r3, [r6, #0x4c]
	bne _020BF6BC
	and r0, r0, #0xf0
	sub r2, r2, r1
	add r0, r5, r0, lsr #2
	add r1, r3, r1
	bl FUN_02007c60
	ldr r2, [r6, #0x70]
	ldr r1, [r6, #0x74]
	ldr r0, [r6, #0x50]
	add r1, r2, r1
	sub r4, r1, r0
	b _020BF6D0
_020BF6BC:
	and r0, r0, #0xf0
	mov r2, r4
	add r0, r5, r0, lsr #2
	add r1, r3, r1
	bl FUN_02007c60
_020BF6D0:
	mov r0, r6
	str r7, [r6, #0x70]
	bl FUN_ov15_020bf2ac
	b _020BF6FC
_020BF6E0:
	ldrb r0, [r5, #0xc]
	ldr r3, [r6, #0x4c]
	mov r2, r4
	and r0, r0, #0xf0
	add r0, r5, r0, lsr #2
	add r1, r3, r1
	bl FUN_02007c60
_020BF6FC:
	ldr r1, [r6, #0x50]
	mov r0, r6
	add r1, r1, r4
	str r1, [r6, #0x50]
	ldr r1, [r6, #0x24]
	mov r5, #0
	add r1, r1, r4
	str r1, [r6, #0x24]
	bl FUN_ov15_020bf1fc
	ldr r0, [r6, #4]
	cmp r0, #2
	bne _020BF738
	str r5, [r6, #4]
	ldr r0, [r6]
	bl OS_WakeupThreadDirect
_020BF738:
	cmp r9, #0
	beq _020BF78C
	tst r8, #1
	beq _020BF78C
	ldr r1, [r6, #0x24]
	ldr r0, [sp]
	add r1, r1, #1
	str r1, [r6, #0x24]
	mov r1, #6
	strb r1, [r6, #8]
	bl OS_RestoreInterrupts
	mov r0, r6
	bl FUN_ov15_020bed54
	cmp r4, #0
	ldreq r0, [r6, #4]
	cmpeq r0, #2
	bne _020BF858
_020BF77C:
	str r7, [r6, #4]
	ldr r0, [r6]
	bl OS_WakeupThreadDirect
	b _020BF858
_020BF78C:
	ldr r0, [sp]
	bl OS_RestoreInterrupts
	cmp r4, #0
	beq _020BF858
	mov r0, r6
	mov r1, #0
	b _020BF854
_020BF7A8:
	tst r8, #1
	beq _020BF7E8
	ldr r1, [r6, #0x24]
	add r0, r4, #1
	add r1, r1, r0
	ldr r0, [sp]
	str r1, [r6, #0x24]
	bl OS_RestoreInterrupts
	mov r0, r6
	mov r1, #2
	bl FUN_ov15_020becc4
	strb r7, [r6, #8]
	ldr r0, [r6, #4]
	cmp r0, #2
	bne _020BF858
	b _020BF77C
_020BF7E8:
	ldr r0, [sp]
	mov r1, #8
	strb r1, [r6, #8]
	bl OS_RestoreInterrupts
	cmp r4, #0
	beq _020BF858
	ldr r1, [r6, #0x24]
	mov r0, r6
	add r2, r1, r4
	mov r1, #2
	str r2, [r6, #0x24]
	b _020BF854
_020BF818:
	ldr r0, [sp]
	strb r7, [r6, #8]
	bl OS_RestoreInterrupts
	ldr r0, [r6, #4]
	cmp r0, #2
	bne _020BF858
	b _020BF77C
_020BF834:
	ldr r0, [sp]
	bl OS_RestoreInterrupts
	tst r8, #1
	ldrne r0, [r6, #0x24]
	mov r1, #2
	addne r0, r0, #1
	strne r0, [r6, #0x24]
	mov r0, r6
_020BF854:
	bl FUN_ov15_020becc4
_020BF858:
	bl OS_YieldThread
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
	arm_func_end FUN_ov15_020bf340

	arm_func_start FUN_ov15_020bf860
FUN_ov15_020bf860: ; 0x020BF860
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	mov r7, r0
	mov r6, r1
	mov r5, r2
	bl FUN_ov15_020beb04
	movs r4, r0
	ldmeqfd sp!, {r3, r4, r5, r6, r7, pc}
	bl OS_DisableInterrupts
	ldrb r1, [r4, #8]
	cmp r1, #4
	beq _020BF908
	cmp r1, #7
	beq _020BF8A0
	cmp r1, #8
	beq _020BF8C8
	b _020BF92C
_020BF8A0:
	ldr r2, [r4, #0x24]
	mov r1, #9
	add r2, r2, #1
	str r2, [r4, #0x24]
	strb r1, [r4, #8]
	bl OS_RestoreInterrupts
	mov r0, r4
	mov r1, #2
	bl FUN_ov15_020becc4
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_020BF8C8:
	ldr r1, [r4, #0x24]
	add r1, r1, #1
	str r1, [r4, #0x24]
	bl OS_RestoreInterrupts
	mov r0, r4
	mov r1, #2
	bl FUN_ov15_020becc4
	mov r1, #0
	strb r1, [r4, #8]
	ldr r0, [r4, #4]
	cmp r0, #2
	ldmnefd sp!, {r3, r4, r5, r6, r7, pc}
	str r1, [r4, #4]
	ldr r0, [r4]
	bl OS_WakeupThreadDirect
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_020BF908:
	ldr r2, [r4, #0x24]
	mov r1, #6
	add r2, r2, #1
	str r2, [r4, #0x24]
	strb r1, [r4, #8]
	bl OS_RestoreInterrupts
	mov r0, r4
	bl FUN_ov15_020bed54
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_020BF92C:
	bl OS_RestoreInterrupts
	mov r0, r7
	mov r1, r6
	mov r2, r5
	bl FUN_ov15_020bed64
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
	arm_func_end FUN_ov15_020bf860

	arm_func_start FUN_ov15_020bf944
FUN_ov15_020bf944: ; 0x020BF944
	stmfd sp!, {r4, lr}
	bl FUN_ov15_020beb04
	movs r4, r0
	ldmeqfd sp!, {r4, pc}
	bl OS_YieldThread
	mov r1, #0
	strb r1, [r4, #8]
	ldr r0, [r4, #4]
	sub r0, r0, #1
	cmp r0, #1
	ldmhifd sp!, {r4, pc}
	str r1, [r4, #4]
	ldr r0, [r4]
	bl OS_WakeupThreadDirect
	ldmfd sp!, {r4, pc}
	arm_func_end FUN_ov15_020bf944

	arm_func_start FUN_ov15_020bf980
FUN_ov15_020bf980: ; 0x020BF980
	stmfd sp!, {r4, r5, r6, lr}
	mov r4, r2
	mov r6, r0
	mov r5, r1
	cmp r4, #0x14
	ldmlofd sp!, {r4, r5, r6, pc}
	ldrb r0, [r5, #0xc]
	and r0, r0, #0xf0
	cmp r0, #0x50
	ldmltfd sp!, {r4, r5, r6, pc}
	cmp r4, r0, lsr #2
	ldmlofd sp!, {r4, r5, r6, pc}
	mov r0, r5
	mov r1, r4
	mov r2, r6
	mov r3, #6
	bl FUN_ov15_020bd0f8
	cmp r0, #0
	ldmnefd sp!, {r4, r5, r6, pc}
	ldrb r0, [r5, #0xc]
	ldrb r2, [r5, #0xd]
	and r1, r0, #0xf0
	and r0, r2, #0x17
	cmp r0, #0x10
	sub r4, r4, r1, lsr #2
	bgt _020BFA10
	cmp r0, #0x10
	bge _020BFA68
	cmp r0, #2
	bgt _020BFA90
	cmp r0, #1
	blt _020BFA90
	beq _020BFA7C
	cmp r0, #2
	beq _020BFA30
	b _020BFA90
_020BFA10:
	cmp r0, #0x12
	bgt _020BFA90
	cmp r0, #0x11
	blt _020BFA90
	beq _020BFA68
	cmp r0, #0x12
	beq _020BFA4C
	b _020BFA90
_020BFA30:
	tst r2, #0x28
	ldmnefd sp!, {r4, r5, r6, pc}
	mov r0, r6
	mov r1, r5
	mov r2, r4
	bl FUN_ov15_020befe0
	ldmfd sp!, {r4, r5, r6, pc}
_020BFA4C:
	tst r2, #0x28
	ldmnefd sp!, {r4, r5, r6, pc}
	mov r0, r6
	mov r1, r5
	mov r2, r4
	bl FUN_ov15_020bf0b8
	ldmfd sp!, {r4, r5, r6, pc}
_020BFA68:
	mov r0, r6
	mov r1, r5
	mov r2, r4
	bl FUN_ov15_020bf340
	ldmfd sp!, {r4, r5, r6, pc}
_020BFA7C:
	mov r0, r6
	mov r1, r5
	mov r2, r4
	bl FUN_ov15_020bf860
	ldmfd sp!, {r4, r5, r6, pc}
_020BFA90:
	tst r2, #4
	mov r0, r6
	mov r1, r5
	beq _020BFAA8
	bl FUN_ov15_020bf944
	ldmfd sp!, {r4, r5, r6, pc}
_020BFAA8:
	mov r2, r4
	bl FUN_ov15_020bed64
	ldmfd sp!, {r4, r5, r6, pc}
	arm_func_end FUN_ov15_020bf980

	arm_func_start FUN_ov15_020bfab4
FUN_ov15_020bfab4: ; 0x020BFAB4
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, lr}
	mov r6, r2
	mov r8, r0
	mov r7, r1
	cmp r6, #8
	ldmlofd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
	ldrh r0, [r7, #6]
	cmp r0, #0
	beq _020BFAF4
	mov r0, r7
	mov r1, r6
	mov r2, r8
	mov r3, #0x11
	bl FUN_ov15_020bd0f8
	cmp r0, #0
	ldmnefd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
_020BFAF4:
	bl OS_DisableInterrupts
	ldr r1, _020BFCC4 ; =0x020939a4
	mov r5, r0
	ldr r1, [r1, #8]
	cmp r1, #0
	beq _020BFCB8
	mvn r12, #0
_020BFB10:
	ldr r4, [r1, #0xa4]
	cmp r4, #0
	ldrne r0, [r4]
	cmpne r0, #0
	beq _020BFCAC
	ldrb r0, [r4, #8]
	cmp r0, #0xa
	bne _020BFCAC
	ldrh r3, [r7, #2]
	ldrh r2, [r4, #0xa]
	mov r0, r3, lsl #8
	orr r0, r0, r3, asr #8
	mov r0, r0, lsl #0x10
	cmp r2, r0, lsr #16
	bne _020BFCAC
	ldrh r3, [r4, #0x18]
	cmp r3, #0
	beq _020BFB70
	ldrh r2, [r7]
	mov r0, r2, lsl #8
	orr r0, r0, r2, asr #8
	mov r0, r0, lsl #0x10
	cmp r3, r0, lsr #16
	bne _020BFCAC
_020BFB70:
	ldr r0, [r4, #0x1c]
	cmp r0, #0
	cmpne r0, r12
	beq _020BFBB4
	ldrh r9, [r8, #0xe]
	ldrh lr, [r8, #0xc]
	mov r2, r9, lsl #8
	mov r3, lr, lsl #8
	orr lr, r3, lr, asr #8
	orr r3, r2, r9, asr #8
	mov r2, lr, lsl #0x10
	mov r3, r3, lsl #0x10
	mov lr, r2, lsr #0x10
	mov r2, r3, lsr #0x10
	orr r2, r2, lr, lsl #16
	cmp r0, r2
	bne _020BFCAC
_020BFBB4:
	ldrh r3, [r8, #0x12]
	ldrh r2, [r8, #0x10]
	mov r0, r3, lsl #8
	mov r1, r2, lsl #8
	orr r2, r1, r2, asr #8
	orr r1, r0, r3, asr #8
	mov r0, r2, lsl #0x10
	mov r1, r1, lsl #0x10
	mov r2, r0, lsr #0x10
	mov r0, r1, lsr #0x10
	orr r0, r0, r2, lsl #16
	str r0, [r4, #0x14]
	ldr r0, [r4, #0x1c]
	cmp r0, #0
	bne _020BFC30
	ldrh r3, [r8, #0xe]
	ldrh r2, [r8, #0xc]
	mov r0, r3, lsl #8
	mov r1, r2, lsl #8
	orr r2, r1, r2, asr #8
	orr r1, r0, r3, asr #8
	mov r0, r2, lsl #0x10
	mov r1, r1, lsl #0x10
	mov r2, r0, lsr #0x10
	mov r0, r1, lsr #0x10
	orr r0, r0, r2, lsl #16
	str r0, [r4, #0x1c]
	ldrh r1, [r7]
	mov r0, r1, lsl #8
	orr r0, r0, r1, asr #8
	strh r0, [r4, #0x18]
_020BFC30:
	ldr r0, [r4, #0x50]
	cmp r0, #0
	bne _020BFCB8
	ldr r1, [r4, #0x48]
	sub r0, r6, #8
	cmp r0, r1
	strhi r1, [r4, #0x50]
	strls r0, [r4, #0x50]
	ldr r1, [r4, #0x4c]
	ldr r2, [r4, #0x50]
	add r0, r7, #8
	bl FUN_02007c60
	ldr r0, [r4, #4]
	cmp r0, #3
	bne _020BFC80
	mov r0, #0
	str r0, [r4, #4]
	ldr r0, [r4]
	bl OS_WakeupThreadDirect
	b _020BFCB8
_020BFC80:
	ldr r3, [r4, #0x44]
	cmp r3, #0
	beq _020BFCB8
	ldr r0, [r4, #0x4c]
	ldr r1, [r4, #0x50]
	mov r2, r4
	blx r3
	cmp r0, #0
	movne r0, #0
	strne r0, [r4, #0x50]
	b _020BFCB8
_020BFCAC:
	ldr r1, [r1, #0x68]
	cmp r1, #0
	bne _020BFB10
_020BFCB8:
	mov r0, r5
	bl OS_RestoreInterrupts
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
_020BFCC4: .word 0x020939a4
	arm_func_end FUN_ov15_020bfab4

	arm_func_start FUN_ov15_020bfcc8
FUN_ov15_020bfcc8: ; 0x020BFCC8
	stmfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, lr}
	sub sp, sp, #0xc
	mov r6, #0
	mov r10, r0
	str r6, [r1]
	ldrh r3, [r10, #6]
	str r1, [sp]
	ldr r2, _020BFF84 ; =0x00003FFF
	mov r1, r3, lsl #8
	orr r1, r1, r3, asr #8
	mov r1, r1, lsl #0x10
	mov r1, r1, lsr #0x10
	str r1, [sp, #8]
	tst r1, r2
	addeq sp, sp, #0xc
	ldmeqfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
	ldrh r3, [r10, #0xe]
	ldrh r2, [r10, #0xc]
	ldrb r4, [r10]
	mov r0, r3, lsl #8
	mov r1, r2, lsl #8
	orr r2, r1, r2, asr #8
	orr r1, r0, r3, asr #8
	mov r3, r4, lsl #0x1c
	mov r0, r2, lsl #0x10
	mov r1, r1, lsl #0x10
	mov r2, r0, lsr #0x10
	mov r1, r1, lsr #0x10
	ldrh r4, [r10, #4]
	ldr r7, _020BFF88 ; =0x020E7538
	mov r0, r6
	mov r5, r3, lsr #0x1a
	orr r9, r1, r2, lsl #16
_020BFD4C:
	ldrh r2, [r7, #4]
	cmp r2, #0
	beq _020BFD70
	ldr r1, [r7]
	cmp r1, r9
	bne _020BFD70
	ldrh r1, [r7, #6]
	cmp r1, r4
	beq _020BFD8C
_020BFD70:
	add r0, r0, #1
	cmp r2, #0
	cmpeq r6, #0
	moveq r6, r7
	cmp r0, #8
	add r7, r7, #0x38
	blo _020BFD4C
_020BFD8C:
	ldrh r2, [r10, #2]
	cmp r0, #8
	ldr r1, _020BFF8C ; =0x00001FFF
	mov r0, r2, lsl #8
	orr r0, r0, r2, asr #8
	mov r0, r0, lsl #0x10
	rsb r0, r5, r0, lsr #16
	str r0, [sp, #4]
	ldr r0, [sp, #8]
	and r11, r0, r1
	ldr r0, [sp, #4]
	add r8, r0, r11, lsl #3
	bne _020BFE48
	cmp r6, #0
	beq _020BFDD0
	cmp r8, #0x1000
	bls _020BFDDC
_020BFDD0:
	add sp, sp, #0xc
	mov r0, #0
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
_020BFDDC:
	ldr r1, _020BFF90 ; =0x020E6D40
	add r0, r5, #0xe
	ldr r1, [r1, #0x14]
	add r0, r0, #0x1000
	mov r7, r6
	blx r1
	cmp r0, #0
	str r0, [r6, #0x34]
	addeq sp, sp, #0xc
	mov r0, #0
	ldmeqfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
	str r9, [r6]
	strh r4, [r6, #6]
	strh r0, [r6, #8]
	bl FUN_02003410
	mov r0, r0, lsr #0x10
	orr r0, r0, r1, lsl #16
	str r0, [r6, #0x2c]
	ldr r1, [r6, #0x34]
	mov r0, r10
	add r1, r1, #0xe
	add r1, r1, r5
	str r1, [r6, #0x30]
	ldr r1, [r6, #0x34]
	mov r2, r5
	add r1, r1, #0xe
	bl FUN_02007c60
_020BFE48:
	ldrh r0, [r7, #4]
	mov r6, #0
	cmp r0, #8
	beq _020BFE64
	cmp r8, #0x1000
	mov r4, r6
	bls _020BFE84
_020BFE64:
	ldr r1, _020BFF90 ; =0x020E6D40
	strh r6, [r7, #4]
	ldr r0, [r7, #0x34]
	ldr r1, [r1, #0x44]
	blx r1
	add sp, sp, #0xc
	mov r0, r6
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
_020BFE84:
	ldr r0, [sp, #4]
	ldr r2, [sp, #4]
	add r1, r0, #7
	ldr r0, [sp, #8]
	add r3, r11, r1, lsr #3
	tst r0, #0x2000
	streqh r8, [r7, #0xa]
	streqh r3, [r7, #8]
	ldrh r1, [r7, #4]
	add r0, r10, r5
	add r1, r7, r1, lsl #1
	strh r11, [r1, #0xc]
	ldrh r1, [r7, #4]
	add r1, r7, r1, lsl #1
	strh r3, [r1, #0x1c]
	ldrh r1, [r7, #4]
	add r1, r1, #1
	strh r1, [r7, #4]
	ldr r1, [r7, #0x30]
	add r1, r1, r11, lsl #3
	bl FUN_02007c60
	ldrh r3, [r7, #8]
	cmp r3, #0
	addeq sp, sp, #0xc
	moveq r0, #0
	ldmeqfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
	ldrh r2, [r7, #4]
	mov r6, #0
	mov r5, r6
	cmp r2, #0
	bls _020BFF30
_020BFF00:
	add r1, r7, r5, lsl #1
	ldrh r0, [r1, #0xc]
	cmp r0, r6
	bhi _020BFF24
	ldrh r0, [r1, #0x1c]
	cmp r6, r0
	movlo r6, r0
	movlo r5, r4
	blo _020BFF28
_020BFF24:
	add r5, r5, #1
_020BFF28:
	cmp r5, r2
	blo _020BFF00
_020BFF30:
	cmp r6, r3
	addlo sp, sp, #0xc
	movlo r0, #0
	ldmlofd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
	ldr r3, [r7, #0x34]
	ldrh r2, [r7, #0xa]
	ldrb r0, [r3, #0xe]
	mov r1, #1
	mov r0, r0, lsl #0x1c
	add r0, r2, r0, lsr #26
	mov r0, r0, lsl #0x10
	mov r2, r0, lsr #0x10
	mov r0, r2, lsl #8
	orr r0, r0, r2, asr #8
	strh r0, [r3, #0x10]
	ldr r0, [sp]
	strh r4, [r7, #4]
	str r1, [r0]
	add r0, r3, #0xe
	add sp, sp, #0xc
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
_020BFF84: .word 0x00003FFF
_020BFF88: .word ov15_020E7538
_020BFF8C: .word 0x00001FFF
_020BFF90: .word ov15_020E6D40
	arm_func_end FUN_ov15_020bfcc8

	arm_func_start FUN_ov15_020bff94
FUN_ov15_020bff94: ; 0x020BFF94
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	mov r4, r0
	ldrh r7, [r4, #0xe]
	ldrh r6, [r4, #0xc]
	ldrh lr, [r4, #0x12]
	ldrh r5, [r4, #0x10]
	mov r2, r6, lsl #8
	mov r3, lr, lsl #8
	mov r12, r5, lsl #8
	mov r0, r7, lsl #8
	orr r5, r12, r5, asr #8
	orr lr, r3, lr, asr #8
	orr r3, r2, r6, asr #8
	orr r12, r0, r7, asr #8
	mov r0, r5, lsl #0x10
	mov r2, lr, lsl #0x10
	mov r3, r3, lsl #0x10
	mov r12, r12, lsl #0x10
	mov lr, r0, lsr #0x10
	mov r0, r2, lsr #0x10
	mov r3, r3, lsr #0x10
	mov r2, r12, lsr #0x10
	orr r0, r0, lr, lsl #16
	orr r2, r2, r3, lsl #16
	cmp r0, r2
	beq _020C00D8
	cmp r1, #0x14
	ldmlofd sp!, {r3, r4, r5, r6, r7, pc}
	ldrb r2, [r4]
	and r12, r2, #0xf
	cmp r12, #5
	ldmltfd sp!, {r3, r4, r5, r6, r7, pc}
	ldrh r3, [r4, #2]
	mov r2, r3, lsl #8
	orr r2, r2, r3, asr #8
	mov r2, r2, lsl #0x10
	mov r2, r2, lsr #0x10
	cmp r2, r12, lsl #2
	ldmltfd sp!, {r3, r4, r5, r6, r7, pc}
	cmp r1, r2
	ldmlofd sp!, {r3, r4, r5, r6, r7, pc}
	bl FUN_ov15_020bd1fc
	cmp r0, #0
	ldmeqfd sp!, {r3, r4, r5, r6, r7, pc}
	ldrb r1, [r4]
	mov r0, r4
	mov r1, r1, lsl #0x1c
	mov r1, r1, lsr #0x1a
	bl FUN_ov15_020bd0dc
	ldr r1, _020C0170 ; =0x0000FFFF
	cmp r0, r1
	ldmnefd sp!, {r3, r4, r5, r6, r7, pc}
	ldrh r12, [r4, #0x12]
	ldrh r3, [r4, #0x10]
	ldr r2, _020C0174 ; =0x020E6D40
	mov r0, r12, lsl #8
	mov r1, r3, lsl #8
	orr r3, r1, r3, asr #8
	orr r1, r0, r12, asr #8
	mov r0, r3, lsl #0x10
	mov r1, r1, lsl #0x10
	mov r3, r0, lsr #0x10
	mov r0, r1, lsr #0x10
	ldr r1, [r2, #0x50]
	orr r0, r0, r3, lsl #16
	cmp r1, r0
	bne _020C00D8
	ldrh r12, [r4, #0xe]
	ldrh r3, [r4, #0xc]
	sub r0, r4, #8
	mov r1, r12, lsl #8
	mov r2, r3, lsl #8
	orr r3, r2, r3, asr #8
	orr r2, r1, r12, asr #8
	mov r1, r3, lsl #0x10
	mov r2, r2, lsl #0x10
	mov r3, r1, lsr #0x10
	mov r1, r2, lsr #0x10
	orr r1, r1, r3, lsl #16
	mov r2, #1
	bl FUN_ov15_020bd8b8
_020C00D8:
	add r1, sp, #0
	mov r0, r4
	bl FUN_ov15_020bfcc8
	movs r4, r0
	ldmeqfd sp!, {r3, r4, r5, r6, r7, pc}
	ldrh r2, [r4, #2]
	ldrb r3, [r4]
	ldrb r12, [r4, #9]
	mov r1, r2, lsl #8
	orr r1, r1, r2, asr #8
	mov r1, r1, lsl #0x10
	mov r3, r3, lsl #0x1c
	mov r2, r1, lsr #0x10
	cmp r12, #0x11
	add r1, r4, r3, lsr #26
	sub r2, r2, r3, lsr #26
	bne _020C0124
	bl FUN_ov15_020bfab4
	b _020C0150
_020C0124:
	ldr r3, _020C0174 ; =0x020E6D40
	ldr r3, [r3, #0x50]
	cmp r3, #0
	beq _020C0150
	cmp r12, #1
	bne _020C0144
	bl FUN_ov15_020be8a4
	b _020C0150
_020C0144:
	cmp r12, #6
	bne _020C0150
	bl FUN_ov15_020bf980
_020C0150:
	ldr r0, [sp]
	cmp r0, #0
	ldmeqfd sp!, {r3, r4, r5, r6, r7, pc}
	ldr r1, _020C0174 ; =0x020E6D40
	sub r0, r4, #0xe
	ldr r1, [r1, #0x44]
	blx r1
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_020C0170: .word 0x0000FFFF
_020C0174: .word ov15_020E6D40
	arm_func_end FUN_ov15_020bff94

	arm_func_start FUN_ov15_020c0178
FUN_ov15_020c0178: ; 0x020C0178
	stmfd sp!, {r3, r4, r5, lr}
	ldr r5, _020C01E4 ; =0x00000806
	add r4, sp, #0
_020C0184:
	mov r0, r4
	bl FUN_ov15_020bd53c
	ldr r3, [sp]
	cmp r3, #0x22
	bls _020C01DC
	ldrh r2, [r0, #0xc]
	mov r1, r2, lsl #8
	orr r1, r1, r2, asr #8
	mov r1, r1, lsl #0x10
	mov r1, r1, lsr #0x10
	cmp r1, #0x800
	beq _020C01C0
	cmp r1, r5
	beq _020C01D0
	b _020C01DC
_020C01C0:
	add r0, r0, #0xe
	sub r1, r3, #0xe
	bl FUN_ov15_020bff94
	b _020C01DC
_020C01D0:
	add r0, r0, #0xe
	sub r1, r3, #0xe
	bl FUN_ov15_020be528
_020C01DC:
	bl FUN_ov15_020bd608
	b _020C0184
_020C01E4: .word 0x00000806
	arm_func_end FUN_ov15_020c0178

	arm_func_start FUN_ov15_020c01e8
FUN_ov15_020c01e8: ; 0x020C01E8
	stmfd sp!, {r4, r5, r6, r7, r8, lr}
	ldr r0, _020C0284 ; =0x020939a4
	ldr r2, _020C0288 ; =0x020E6D40
	ldr r0, [r0, #8]
	ldr r1, _020C028C ; =0x00001388
	mov r4, #0x400
	mov r3, #1
	mov r5, #0
_020C0208:
	ldrh r12, [r2, #6]
	mov r6, r5
	add r12, r12, #1
	strh r12, [r2, #6]
	ldrh r12, [r2, #6]
	cmp r12, #0x400
	blo _020C022C
	cmp r12, r1
	blo _020C0230
_020C022C:
	strh r4, [r2, #6]
_020C0230:
	mov r7, r0
	cmp r0, #0
	beq _020C0270
	ldrh r8, [r2, #6]
_020C0240:
	ldr lr, [r7, #0xa4]
	cmp lr, #0
	ldrne r12, [lr]
	cmpne r12, #0
	beq _020C0264
	ldrh r12, [lr, #0xa]
	cmp r12, r8
	moveq r6, r3
	beq _020C0270
_020C0264:
	ldr r7, [r7, #0x68]
	cmp r7, #0
	bne _020C0240
_020C0270:
	cmp r6, #0
	bne _020C0208
	ldr r0, _020C0288 ; =0x020E6D40
	ldrh r0, [r0, #6]
	ldmfd sp!, {r4, r5, r6, r7, r8, pc}
_020C0284: .word 0x020939a4
_020C0288: .word ov15_020E6D40
_020C028C: .word 0x00001388
	arm_func_end FUN_ov15_020c01e8

	arm_func_start FUN_ov15_020c0290
FUN_ov15_020c0290: ; 0x020C0290
	stmfd sp!, {r3, lr}
	ldr r1, _020C02D0 ; =0x020E6D40
	ldr r12, [r1, #0x80]
	ldr r0, [r1, #0x78]
	ldr r2, [r1, #0x7c]
	umull lr, r3, r12, r0
	mla r3, r12, r2, r3
	ldr r2, [r1, #0x84]
	ldr r12, [r1, #0x88]
	mla r3, r2, r0, r3
	ldr r0, [r1, #0x8c]
	adds r2, r12, lr
	str r2, [r1, #0x78]
	adc r0, r0, r3
	str r0, [r1, #0x7c]
	ldmfd sp!, {r3, pc}
_020C02D0: .word ov15_020E6D40
	arm_func_end FUN_ov15_020c0290

	arm_func_start FUN_ov15_020c02d4
FUN_ov15_020c02d4: ; 0x020C02D4
	ldr r1, _020C02E4 ; =0x020939a4
	ldr r1, [r1, #4]
	str r0, [r1, #0xa4]
	bx lr
_020C02E4: .word 0x020939a4
	arm_func_end FUN_ov15_020c02d4

	arm_func_start FUN_ov15_020c02e8
FUN_ov15_020c02e8: ; 0x020C02E8
	ldr r0, _020C02FC ; =0x020939a4
	mov r1, #0
	ldr r0, [r0, #4]
	str r1, [r0, #0xa4]
	bx lr
_020C02FC: .word 0x020939a4
	arm_func_end FUN_ov15_020c02e8

	arm_func_start FUN_ov15_020c0300
FUN_ov15_020c0300: ; 0x020C0300
	ldr r0, _020C0324 ; =0x020939a4
	ldr r0, [r0, #4]
	ldr r1, [r0, #0xa4]
	cmp r1, #0
	movne r0, #0xa
	strneb r0, [r1, #8]
	movne r0, #0
	strne r0, [r1, #0x50]
	bx lr
_020C0324: .word 0x020939a4
	arm_func_end FUN_ov15_020c0300

	arm_func_start FUN_ov15_020c0328
FUN_ov15_020c0328: ; 0x020C0328
	stmfd sp!, {r4, lr}
	ldr r3, _020C037C ; =0x020939a4
	ldr r3, [r3, #4]
	ldr r4, [r3, #0xa4]
	cmp r4, #0
	ldmeqfd sp!, {r4, pc}
	ldr r3, _020C0380 ; =0x7F000001
	cmp r2, r3
	ldreq r2, _020C0384 ; =0x020E6D40
	ldreq r2, [r2, #0x50]
	cmp r0, #0
	strh r1, [r4, #0x1a]
	ldrh r1, [r4, #0x1a]
	strh r1, [r4, #0x18]
	str r2, [r4, #0x20]
	str r2, [r4, #0x1c]
	strneh r0, [r4, #0xa]
	ldmnefd sp!, {r4, pc}
	bl FUN_ov15_020c01e8
	strh r0, [r4, #0xa]
	ldmfd sp!, {r4, pc}
_020C037C: .word 0x020939a4
_020C0380: .word 0x7F000001
_020C0384: .word ov15_020E6D40
	arm_func_end FUN_ov15_020c0328

	arm_func_start FUN_ov15_020c0388
FUN_ov15_020c0388: ; 0x020C0388
	stmfd sp!, {r3, r4, r5, lr}
	ldr r0, _020C03D0 ; =0x020939a4
	ldr r0, [r0, #4]
	ldr r5, [r0, #0xa4]
	cmp r5, #0
	ldmeqfd sp!, {r3, r4, r5, pc}
	mov r4, #0
	str r0, [r5]
	strb r4, [r5, #8]
	mov r1, r4
	str r4, [r5, #0x50]
	add r0, r5, #0x70
	mov r2, #0x30
	bl MI_CpuFill8
	str r4, [r5, #0x6c]
	str r4, [r5, #0x44]
	strb r4, [r5, #0x33]
	ldmfd sp!, {r3, r4, r5, pc}
_020C03D0: .word 0x020939a4
	arm_func_end FUN_ov15_020c0388

	arm_func_start FUN_ov15_020c03d4
FUN_ov15_020c03d4: ; 0x020C03D4
	ldr r0, _020C03F0 ; =0x020939a4
	ldr r0, [r0, #4]
	ldr r1, [r0, #0xa4]
	cmp r1, #0
	movne r0, #0
	strne r0, [r1]
	bx lr
_020C03F0: .word 0x020939a4
	arm_func_end FUN_ov15_020c03d4

	arm_func_start FUN_ov15_020c03f4
FUN_ov15_020c03f4: ; 0x020C03F4
	ldr r1, _020C0408 ; =0x020939a4
	ldr r1, [r1, #4]
	ldr r1, [r1, #0xa4]
	str r1, [r0, #0xa4]
	bx lr
_020C0408: .word 0x020939a4
	arm_func_end FUN_ov15_020c03f4

	arm_func_start FUN_ov15_020c040c
FUN_ov15_020c040c: ; 0x020C040C
	ldr r1, _020C0424 ; =0x020939a4
	ldr r1, [r1, #4]
	ldr r1, [r1, #0xa4]
	cmp r1, #0
	strne r0, [r1, #0x44]
	bx lr
_020C0424: .word 0x020939a4
	arm_func_end FUN_ov15_020c040c

	arm_func_start FUN_ov15_020c0428
FUN_ov15_020c0428: ; 0x020C0428
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, lr}
	mov r10, r0
	bl FUN_ov15_020c0290
	mov r7, #0
	ldr r4, _020C04D4 ; =0x020E6D40
	mov r8, r0
	mov r5, #1
	mov r11, r7
	mov r6, #2
_020C044C:
	str r8, [r10, #0x34]
	strb r6, [r10, #8]
	bl FUN_02003410
	mov r2, r0, lsr #0x10
	orr r2, r2, r1, lsl #16
	mov r0, r10
	mov r1, r6
	str r2, [r10, #0x10]
	bl FUN_ov15_020bec68
	bl OS_DisableInterrupts
	ldrb r1, [r10, #8]
	mov r9, r0
	cmp r1, #2
	bne _020C049C
	ldr r0, [r4, #0x50]
	cmp r0, #0
	beq _020C049C
	mov r0, r11
	str r5, [r10, #4]
	bl OS_SleepThread
_020C049C:
	mov r0, r9
	bl OS_RestoreInterrupts
	ldrb r0, [r10, #8]
	cmp r0, #4
	moveq r0, #0
	ldmeqfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
	ldr r0, [r4, #0x50]
	cmp r0, #0
	beq _020C04CC
	add r7, r7, #1
	cmp r7, #3
	blo _020C044C
_020C04CC:
	mov r0, #1
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_020C04D4: .word ov15_020E6D40
	arm_func_end FUN_ov15_020c0428

	arm_func_start FUN_ov15_020c04d8
FUN_ov15_020c04d8: ; 0x020C04D8
	stmfd sp!, {r3, lr}
	ldr r0, _020C0514 ; =0x020939a4
	ldr r0, [r0, #4]
	ldr r0, [r0, #0xa4]
	cmp r0, #0
	beq _020C050C
	ldrb r1, [r0, #9]
	cmp r1, #0
	beq _020C0504
	bl FUN_ov15_020da1a8
	ldmfd sp!, {r3, pc}
_020C0504:
	bl FUN_ov15_020c0428
	ldmfd sp!, {r3, pc}
_020C050C:
	mov r0, #1
	ldmfd sp!, {r3, pc}
_020C0514: .word 0x020939a4
	arm_func_end FUN_ov15_020c04d8

	arm_func_start FUN_ov15_020c0518
FUN_ov15_020c0518: ; 0x020C0518
	stmfd sp!, {r4, lr}
	mov r4, r0
	bl OS_YieldThread
	bl OS_DisableInterrupts
	ldrb r2, [r4, #8]
	add r1, r2, #0xfd
	and r1, r1, #0xff
	cmp r1, #1
	bhi _020C0554
	mov r1, #7
	strb r1, [r4, #8]
	bl OS_RestoreInterrupts
	mov r0, r4
	bl FUN_ov15_020bed54
	ldmfd sp!, {r4, pc}
_020C0554:
	cmp r2, #0
	beq _020C0570
	bl OS_RestoreInterrupts
	mov r0, r4
	mov r1, #2
	bl FUN_ov15_020becc4
	ldmfd sp!, {r4, pc}
_020C0570:
	bl OS_RestoreInterrupts
	ldmfd sp!, {r4, pc}
	arm_func_end FUN_ov15_020c0518

	arm_func_start FUN_ov15_020c0578
FUN_ov15_020c0578: ; 0x020C0578
	stmfd sp!, {r4, lr}
	ldr r0, _020C05B0 ; =0x020939a4
	ldr r0, [r0, #4]
	ldr r4, [r0, #0xa4]
	cmp r4, #0
	ldmeqfd sp!, {r4, pc}
	ldrb r0, [r4, #9]
	cmp r0, #0
	beq _020C05A4
	mov r0, r4
	bl FUN_ov15_020da618
_020C05A4:
	mov r0, r4
	bl FUN_ov15_020c0518
	ldmfd sp!, {r4, pc}
_020C05B0: .word 0x020939a4
	arm_func_end FUN_ov15_020c0578

	arm_func_start FUN_ov15_020c05b4
FUN_ov15_020c05b4: ; 0x020C05B4
	stmfd sp!, {r4, r5, r6, lr}
	ldr r0, _020C0634 ; =0x020939a4
	ldr r0, [r0, #4]
	ldr r4, [r0, #0xa4]
	cmp r4, #0
	ldmeqfd sp!, {r4, r5, r6, pc}
	ldrb r0, [r4, #9]
	cmp r0, #0
	beq _020C05E0
	mov r0, r4
	bl FUN_ov15_020da69c
_020C05E0:
	bl FUN_02003410
	mov r6, r0, lsr #0x10
	orr r6, r6, r1, lsl #16
	ldr r5, _020C0638 ; =0x020E6D40
	b _020C05F8
_020C05F4:
	bl FUN_ov15_020bcc50
_020C05F8:
	ldr r0, [r5, #0x18]
	blx r0
	cmp r0, #0
	ldrneb r0, [r4, #8]
	cmpne r0, #0
	beq _020C0628
	bl FUN_02003410
	mov r0, r0, lsr #0x10
	orr r0, r0, r1, lsl #16
	sub r0, r0, r6
	cmp r0, #0x27
	blt _020C05F4
_020C0628:
	mov r0, #0
	strb r0, [r4, #8]
	ldmfd sp!, {r4, r5, r6, pc}
_020C0634: .word 0x020939a4
_020C0638: .word ov15_020E6D40
	arm_func_end FUN_ov15_020c05b4

	arm_func_start FUN_ov15_020c063c
FUN_ov15_020c063c: ; 0x020C063C
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, lr}
	mov r8, r1
	mov r9, r0
	bl OS_DisableInterrupts
	ldr r6, [r8, #0x50]
	mov r7, r0
	cmp r6, #0
	bne _020C067C
	mov r5, #3
	mov r4, #0
_020C0664:
	mov r0, r4
	str r5, [r8, #4]
	bl OS_SleepThread
	ldr r6, [r8, #0x50]
	cmp r6, #0
	beq _020C0664
_020C067C:
	mov r0, r7
	bl OS_RestoreInterrupts
	str r6, [r9]
	ldr r0, [r8, #0x4c]
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
	arm_func_end FUN_ov15_020c063c

	arm_func_start FUN_ov15_020c0690
FUN_ov15_020c0690: ; 0x020C0690
	stmfd sp!, {r4, r5, r6, r7, r8, lr}
	mov r4, r1
	ldrb r1, [r4, #8]
	mov r5, r0
	cmp r1, #4
	bne _020C06B4
	mov r0, r4
	mov r1, #1
	bl FUN_ov15_020becc4
_020C06B4:
	ldr r0, [r4, #0x50]
	cmp r0, #0
	ldreqb r0, [r4, #8]
	cmpeq r0, #4
	bne _020C070C
	bl OS_DisableInterrupts
	mov r8, r0
	mov r7, #2
	mov r6, #0
	b _020C06E8
_020C06DC:
	mov r0, r6
	str r7, [r4, #4]
	bl OS_SleepThread
_020C06E8:
	ldr r0, [r4, #0x50]
	cmp r0, #0
	bne _020C0700
	ldrb r0, [r4, #8]
	cmp r0, #4
	beq _020C06DC
_020C0700:
	mov r0, r8
	bl OS_RestoreInterrupts
	b _020C0710
_020C070C:
	bl OS_YieldThread
_020C0710:
	ldr r0, [r4, #0x50]
	str r0, [r5]
	cmp r0, #0
	ldrne r0, [r4, #0x4c]
	moveq r0, #0
	ldmfd sp!, {r4, r5, r6, r7, r8, pc}
	arm_func_end FUN_ov15_020c0690

	arm_func_start FUN_ov15_020c0728
FUN_ov15_020c0728: ; 0x020C0728
	stmfd sp!, {r3, lr}
	ldr r1, _020C0788 ; =0x020939a4
	ldr r1, [r1, #4]
	ldr r1, [r1, #0xa4]
	cmp r1, #0
	beq _020C0778
	ldrb r2, [r1, #8]
	add r2, r2, #0xf6
	and r2, r2, #0xff
	cmp r2, #1
	bhi _020C075C
	bl FUN_ov15_020c063c
	ldmfd sp!, {r3, pc}
_020C075C:
	ldrb r2, [r1, #9]
	cmp r2, #0
	beq _020C0770
	bl FUN_ov15_020da1fc
	ldmfd sp!, {r3, pc}
_020C0770:
	bl FUN_ov15_020c0690
	ldmfd sp!, {r3, pc}
_020C0778:
	mov r1, #0
	str r1, [r0]
	mov r0, r1
	ldmfd sp!, {r3, pc}
_020C0788: .word 0x020939a4
	arm_func_end FUN_ov15_020c0728

	arm_func_start FUN_ov15_020c078c
FUN_ov15_020c078c: ; 0x020C078C
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, lr}
	mov r7, r1
	mov r9, r0
	mov r8, #0
	bl OS_DisableInterrupts
	ldr r6, [r7, #0x50]
	ldr r1, [r7, #0x48]
	mov r4, r0
	cmp r6, r1
	mov r5, r8
	bne _020C07C0
	cmp r9, #0
	movne r5, #1
_020C07C0:
	cmp r9, r6
	strhs r8, [r7, #0x50]
	bhs _020C07E0
	ldr r1, [r7, #0x4c]
	sub r2, r6, r9
	add r0, r1, r9
	str r2, [r7, #0x50]
	bl FUN_02007f50
_020C07E0:
	ldr r2, [r7, #0x70]
	cmp r2, #0
	beq _020C08A0
	ldr r0, [r7, #0x50]
	subs r6, r6, r0
	beq _020C08A0
	mov r3, #0
	mov r0, #0xc
	b _020C0808
_020C0804:
	add r3, r3, #1
_020C0808:
	cmp r3, #4
	bge _020C0820
	mla r1, r3, r0, r7
	ldr r1, [r1, #0x70]
	cmp r1, #0
	bne _020C0804
_020C0820:
	cmp r2, r6
	bls _020C088C
	sub r1, r3, #1
	mov r0, #0xc
	mla r0, r1, r0, r7
	ldr r12, [r7, #0x4c]
	ldr r3, [r0, #0x70]
	ldr r1, [r0, #0x74]
	add r0, r12, r2
	add r3, r3, r1
	sub r1, r0, r6
	sub r2, r3, r2
	bl FUN_02007f50
	mov r3, #0
	mov r0, #0xc
	b _020C0870
_020C0860:
	ldr r1, [r2, #0x70]
	add r3, r3, #1
	sub r1, r1, r6
	str r1, [r2, #0x70]
_020C0870:
	cmp r3, #4
	bge _020C08A0
	mla r2, r3, r0, r7
	ldr r1, [r2, #0x70]
	cmp r1, #0
	bne _020C0860
	b _020C08A0
_020C088C:
	add r0, r7, #0x70
	mov r1, #0
	mov r2, #0x30
	bl MI_CpuFill8
	bl OS_Terminate
_020C08A0:
	mov r0, r4
	bl OS_RestoreInterrupts
	ldrb r0, [r7, #8]
	cmp r0, #0xa
	cmpne r0, #0xb
	ldmeqfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
	ldr r0, [r7, #0x50]
	cmp r0, #0
	beq _020C08CC
	cmp r5, #0
	ldmeqfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
_020C08CC:
	mov r0, r7
	mov r1, #0
	bl FUN_ov15_020becc4
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
	arm_func_end FUN_ov15_020c078c

	arm_func_start FUN_ov15_020c08dc
FUN_ov15_020c08dc: ; 0x020C08DC
	stmfd sp!, {r3, lr}
	ldr r1, _020C0910 ; =0x020939a4
	ldr r1, [r1, #4]
	ldr r1, [r1, #0xa4]
	cmp r1, #0
	ldmeqfd sp!, {r3, pc}
	ldrb r2, [r1, #9]
	cmp r2, #0
	beq _020C0908
	bl FUN_ov15_020da2d4
	ldmfd sp!, {r3, pc}
_020C0908:
	bl FUN_ov15_020c078c
	ldmfd sp!, {r3, pc}
_020C0910: .word 0x020939a4
	arm_func_end FUN_ov15_020c08dc

	arm_func_start FUN_ov15_020c0914
FUN_ov15_020c0914: ; 0x020C0914
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, lr}
	mov r8, r2
	ldr r6, [r8, #0x40]
	movs r11, r3
	mov r10, r0
	movne r5, #1
	mov r0, r6, lsl #1
	mov r9, r1
	ldreqh r5, [r8, #0x38]
	add r7, r0, #4
	b _020C09B4
_020C0940:
	ldr r0, _020C09D0 ; =0x020E6D40
	ldrh r4, [r8, #0x3a]
	ldrh r0, [r0, #4]
	ldr r1, [r8, #0x40]
	cmp r4, r5
	movhs r4, r5
	cmp r0, r4
	movlo r4, r0
	cmp r11, #0
	biceq r4, r4, #1
	cmp r9, r4
	sub r0, r1, r6
	movlo r4, r9
	adds r0, r7, r0
	moveq r4, #0
	mov r6, r1
	sub r7, r0, #1
	cmp r4, #0
	beq _020C09C8
	mov r0, r10
	mov r1, r4
	mov r2, r8
	mov r3, #0x18
	bl FUN_ov15_020bdfd4
	mov r4, r0
	bl OS_YieldThread
	sub r5, r5, r4
	add r10, r10, r4
	sub r9, r9, r4
_020C09B4:
	cmp r9, #0
	beq _020C09C8
	ldrb r0, [r8, #8]
	cmp r0, #4
	beq _020C0940
_020C09C8:
	mov r0, r4
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_020C09D0: .word ov15_020E6D40
	arm_func_end FUN_ov15_020c0914

	arm_func_start FUN_ov15_020c09d4
FUN_ov15_020c09d4: ; 0x020C09D4
	stmfd sp!, {r3, r4, r5, lr}
	mov r5, r2
	mov r4, r3
	ldr r2, [sp, #0x10]
	ldr r3, [sp, #0x14]
	bl FUN_ov15_020c0914
	cmp r0, #0
	cmpne r4, #0
	ldmeqfd sp!, {r3, r4, r5, pc}
	ldr r2, [sp, #0x10]
	mov r0, r5
	mov r1, r4
	mov r3, #0
	bl FUN_ov15_020c0914
	ldmfd sp!, {r3, r4, r5, pc}
	arm_func_end FUN_ov15_020c09d4

	arm_func_start FUN_ov15_020c0a10
FUN_ov15_020c0a10: ; 0x020C0A10
	stmfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, lr}
	sub sp, sp, #0x14
	mov r4, #0
	mov r11, r0
	ldr r8, [sp, #0x38]
	mov r0, r4
	str r4, [sp, #0x10]
	mov r10, r1
	mov r9, r2
	str r3, [sp, #8]
	mov r6, r4
	str r0, [r8, #0x40]
	bl FUN_02003410
	mov r0, r0, lsr #0x10
	orr r0, r0, r1, lsl #16
	str r0, [sp, #0xc]
	b _020C0BC8
_020C0A54:
	ldr r7, [r8, #0x34]
	ldr r3, [sp, #8]
	str r8, [sp]
	mov r0, r11
	mov r1, r10
	mov r2, r9
	str r6, [sp, #4]
	bl FUN_ov15_020c09d4
	bl FUN_02003410
	mov r5, r0, lsr #0x10
	ldr r4, _020C0C14 ; =0x020E6D40
	orr r5, r5, r1, lsl #16
_020C0A84:
	bl FUN_ov15_020bcc50
	ldr r0, [r4, #0x18]
	blx r0
	cmp r0, #0
	beq _020C0ADC
	ldrb r0, [r8, #8]
	cmp r0, #4
	bne _020C0ADC
	ldr r1, [r8, #0x34]
	ldr r0, [r8, #0x3c]
	cmp r1, r0
	beq _020C0ADC
	bl FUN_02003410
	mov r0, r0, lsr #0x10
	orr r0, r0, r1, lsl #16
	sub r0, r0, r5
	cmp r0, #0xf
	bge _020C0ADC
	cmp r6, #0
	ldrneh r0, [r8, #0x38]
	cmpne r0, #0
	beq _020C0A84
_020C0ADC:
	ldr r1, [r8, #0x3c]
	ldr r0, [r8, #0x34]
	sub r5, r1, r7
	sub r0, r0, r7
	cmp r5, r0
	movhi r5, #0
	ldr r0, [sp, #0x10]
	cmp r5, #0
	add r0, r0, r5
	str r0, [sp, #0x10]
	beq _020C0B18
	bl FUN_02003410
	mov r0, r0, lsr #0x10
	orr r0, r0, r1, lsl #16
	str r0, [sp, #0xc]
_020C0B18:
	ldr r0, [r8, #0x3c]
	str r0, [r8, #0x34]
	ldrb r0, [r8, #8]
	cmp r0, #4
	ldreqh r0, [r8, #0x38]
	cmpeq r0, #0
	cmpeq r5, #0
	bne _020C0B9C
	cmp r6, #0
	bne _020C0BA0
	bl FUN_02003410
	mov r7, r0, lsr #0x10
	orr r7, r7, r1, lsl #16
	ldr r4, _020C0C14 ; =0x020E6D40
	b _020C0B64
_020C0B54:
	bl FUN_ov15_020bcc50
	ldrh r0, [r8, #0x38]
	cmp r0, #0
	bne _020C0B8C
_020C0B64:
	ldr r0, [r4, #0x18]
	blx r0
	cmp r0, #0
	beq _020C0B8C
	bl FUN_02003410
	mov r0, r0, lsr #0x10
	orr r0, r0, r1, lsl #16
	sub r0, r0, r7
	cmp r0, #0xf
	blt _020C0B54
_020C0B8C:
	ldrh r0, [r8, #0x38]
	cmp r0, #0
	moveq r6, #1
	b _020C0BA0
_020C0B9C:
	mov r6, #0
_020C0BA0:
	cmp r5, r10
	addlo r11, r11, r5
	sublo r10, r10, r5
	blo _020C0BC8
	sub r1, r5, r10
	ldr r0, [sp, #8]
	add r11, r9, r1
	mov r9, #0
	sub r10, r0, r1
	str r9, [sp, #8]
_020C0BC8:
	ldr r0, _020C0C14 ; =0x020E6D40
	ldr r0, [r0, #0x18]
	blx r0
	cmp r0, #0
	cmpne r10, #0
	beq _020C0C08
	ldrb r0, [r8, #8]
	cmp r0, #4
	bne _020C0C08
	bl FUN_02003410
	mov r2, r0, lsr #0x10
	ldr r0, [sp, #0xc]
	orr r2, r2, r1, lsl #16
	sub r0, r2, r0
	cmp r0, #0x9f
	blt _020C0A54
_020C0C08:
	ldr r0, [sp, #0x10]
	add sp, sp, #0x14
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
_020C0C14: .word ov15_020E6D40
	arm_func_end FUN_ov15_020c0a10

	arm_func_start FUN_ov15_020c0c18
FUN_ov15_020c0c18: ; 0x020C0C18
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	ldr r12, _020C0CE0 ; =0x020939a4
	mov r7, r1
	ldr r12, [r12, #4]
	mov r6, r2
	ldr r4, [r12, #0xa4]
	mov r5, r3
	cmp r4, #0
	beq _020C0CD8
	ldrb r12, [r4, #8]
	cmp r12, #0xa
	bne _020C0C78
	cmp r7, #0
	beq _020C0C58
	mov r2, r4
	bl FUN_ov15_020bde98
_020C0C58:
	cmp r5, #0
	beq _020C0C70
	mov r0, r6
	mov r1, r5
	mov r2, r4
	bl FUN_ov15_020bde98
_020C0C70:
	add r0, r7, r5
	b _020C0CC8
_020C0C78:
	cmp r12, #0xb
	bne _020C0CAC
	cmp r7, #0
	beq _020C0C90
	mov r2, r4
	bl FUN_ov15_020bdde4
_020C0C90:
	cmp r5, #0
	beq _020C0CA8
	mov r0, r6
	mov r1, r5
	mov r2, r4
	bl FUN_ov15_020bdde4
_020C0CA8:
	b _020C0C70
_020C0CAC:
	ldrb r12, [r4, #9]
	cmp r12, #0
	str r4, [sp]
	beq _020C0CC4
	bl FUN_ov15_020da4e0
	b _020C0CC8
_020C0CC4:
	bl FUN_ov15_020c0a10
_020C0CC8:
	ldr r1, _020C0CE4 ; =0x020E6D40
	ldrb r1, [r1]
	cmp r1, #0
	ldmeqfd sp!, {r3, r4, r5, r6, r7, pc}
_020C0CD8:
	mov r0, #0
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_020C0CE0: .word 0x020939a4
_020C0CE4: .word ov15_020E6D40
	arm_func_end FUN_ov15_020c0c18

	arm_func_start FUN_ov15_020c0ce8
FUN_ov15_020c0ce8: ; 0x020C0CE8
	stmfd sp!, {r3, r4, r5, lr}
	ldr r3, _020C0D78 ; =0x020939a4
	mov r2, r0
	ldr r4, [r3, #4]
	mov r3, r1
	ldr r5, [r4, #0xa4]
	cmp r5, #0
	beq _020C0D70
	ldr r4, [r5, #0x6c]
	cmp r4, #0
	beq _020C0D60
	ldr r0, [r5, #0x68]
	mov r1, r4
	bl FUN_ov15_020c0c18
	ldr r2, [r5, #0x6c]
	mov r4, r0
	cmp r4, r2
	movhs r0, #0
	strhs r0, [r5, #0x6c]
	subhs r0, r4, r2
	ldmhsfd sp!, {r3, r4, r5, pc}
	ldr r1, [r5, #0x68]
	sub r2, r2, r4
	add r0, r1, r4
	bl FUN_02007f50
	ldr r1, [r5, #0x6c]
	mov r0, #0
	sub r1, r1, r4
	str r1, [r5, #0x6c]
	ldmfd sp!, {r3, r4, r5, pc}
_020C0D60:
	mov r2, #0
	mov r3, r2
	bl FUN_ov15_020c0c18
	ldmfd sp!, {r3, r4, r5, pc}
_020C0D70:
	mov r0, #0
	ldmfd sp!, {r3, r4, r5, pc}
_020C0D78: .word 0x020939a4
	arm_func_end FUN_ov15_020c0ce8

	arm_func_start FUN_ov15_020c0d7c
FUN_ov15_020c0d7c: ; 0x020C0D7C
	stmfd sp!, {r4, lr}
	ldr r0, _020C0DF8 ; =0x020939a4
	ldr r0, [r0, #4]
	ldr r4, [r0, #0xa4]
	cmp r4, #0
	beq _020C0DF0
	ldrb r0, [r4, #8]
	cmp r0, #4
	bne _020C0DAC
	mov r0, r4
	mov r1, #1
	bl FUN_ov15_020becc4
_020C0DAC:
	ldrb r0, [r4, #9]
	cmp r0, #0
	beq _020C0DC4
	mov r0, r4
	bl FUN_ov15_020da468
	ldmfd sp!, {r4, pc}
_020C0DC4:
	ldr r0, [r4, #0x50]
	cmp r0, #0
	ldmnefd sp!, {r4, pc}
	ldrb r1, [r4, #8]
	cmp r1, #4
	ldmeqfd sp!, {r4, pc}
	add r1, r1, #0xf6
	and r1, r1, #0xff
	cmp r1, #1
	mvnhi r0, #0
	ldmfd sp!, {r4, pc}
_020C0DF0:
	mov r0, #0
	ldmfd sp!, {r4, pc}
_020C0DF8: .word 0x020939a4
	arm_func_end FUN_ov15_020c0d7c

	arm_func_start FUN_ov15_020c0dfc
FUN_ov15_020c0dfc: ; 0x020C0DFC
	stmfd sp!, {r3, r4, r5, lr}
	ldr r0, _020C0E38 ; =0x020939a4
	ldr r0, [r0, #4]
	ldr r5, [r0, #0xa4]
	cmp r5, #0
	ldrne r1, [r5, #0x6c]
	cmpne r1, #0
	ldmeqfd sp!, {r3, r4, r5, pc}
	mov r4, #0
	ldr r0, [r5, #0x68]
	mov r2, r4
	mov r3, r4
	bl FUN_ov15_020c0c18
	str r4, [r5, #0x6c]
	ldmfd sp!, {r3, r4, r5, pc}
_020C0E38: .word 0x020939a4
	arm_func_end FUN_ov15_020c0dfc

	arm_func_start FUN_ov15_020c0e3c
FUN_ov15_020c0e3c: ; 0x020C0E3C
	stmfd sp!, {r4, r5, r6, lr}
	ldr r4, _020C0EB8 ; =0x020E6D40
	ldr r0, [r4, #0x50]
	bl FUN_ov15_020bd714
	mov r0, #0x64
	bl OS_Sleep
	ldr r0, [r4, #0x50]
	bl FUN_ov15_020bd714
	bl FUN_02003410
	mov r6, r0, lsr #0x10
	orr r6, r6, r1, lsl #16
	mov r5, #0x64
	b _020C0E88
_020C0E70:
	ldrb r0, [r4, #1]
	cmp r0, #0
	movne r0, #0
	ldmnefd sp!, {r4, r5, r6, pc}
	mov r0, r5
	bl OS_Sleep
_020C0E88:
	ldr r0, [r4, #0x18]
	blx r0
	cmp r0, #0
	beq _020C0EB0
	bl FUN_02003410
	mov r0, r0, lsr #0x10
	orr r0, r0, r1, lsl #16
	sub r0, r0, r6
	cmp r0, #0x17
	blt _020C0E70
_020C0EB0:
	mov r0, #1
	ldmfd sp!, {r4, r5, r6, pc}
_020C0EB8: .word ov15_020E6D40
	arm_func_end FUN_ov15_020c0e3c

	arm_func_start FUN_ov15_020c0ebc
FUN_ov15_020c0ebc: ; 0x020C0EBC
	stmfd sp!, {r4, lr}
	ldr r4, _020C0EF0 ; =0x020E6D40
	ldr r0, [r4, #0x28]
	blx r0
	ldr r0, [r4, #0x50]
	cmp r0, #0
	ldmeqfd sp!, {r4, pc}
	bl FUN_ov15_020c0e3c
	cmp r0, #0
	ldmnefd sp!, {r4, pc}
	mov r0, #4
	bl FUN_ov15_020bcb50
	ldmfd sp!, {r4, pc}
_020C0EF0: .word ov15_020E6D40
	arm_func_end FUN_ov15_020c0ebc

	arm_func_start FUN_ov15_020c0ef4
FUN_ov15_020c0ef4: ; 0x020C0EF4
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, lr}
	sub sp, sp, #8
	ldr r4, _020C1318 ; =0x020E6EB8
	mov r5, #0
	ldr r3, _020C131C ; =0x020E6D40
	mov r0, r4
	mov r1, r5
	mov r2, #0xa0
	str r5, [r3, #0x58]
	bl MI_CpuFill8
	mov r2, #0x180
	ldr r0, _020C1320 ; =0x020E73B8
	str r2, [r4, #0x48]
	str r0, [r4, #0x4c]
	ldr r1, _020C1324 ; =0x020E7238
	str r2, [r4, #0x54]
	mov r0, r4
	str r1, [r4, #0x58]
	bl FUN_ov15_020c02d4
	mov r6, #1
	ldr r0, _020C131C ; =0x020E6D40
	str r6, [sp, #4]
	str r6, [sp]
	str r6, [r0, #0x4c]
_020C0F54:
	mov r0, #0x3e8
	bl OS_Sleep
	ldr r0, _020C131C ; =0x020E6D40
	ldr r0, [r0, #0x58]
	cmp r0, #0
	bne _020C12F0
	bl FUN_02003410
	mov r7, r0, lsr #0x10
	ldr r0, _020C131C ; =0x020E6D40
	orr r7, r7, r1, lsl #16
	ldr r0, [r0, #0x18]
	blx r0
	cmp r0, #0
	beq _020C1154
	ldr r0, [sp, #4]
	subs r0, r0, #1
	str r0, [sp, #4]
	bne _020C1168
	ldr r0, _020C131C ; =0x020E6D40
	ldr r0, [r0, #0xc]
	tst r0, #1
	beq _020C0FC0
	cmp r5, #0
	bne _020C1168
	bl FUN_ov15_020c0ebc
	mov r5, #1
	b _020C1168
_020C0FC0:
	cmp r5, #3
	addls pc, pc, r5, lsl #2
	b _020C1168
_020C0FCC: ; jump table
	b _020C0FDC ; case 0
	b _020C1074 ; case 1
	b _020C10DC ; case 2
	b _020C1168 ; case 3
_020C0FDC:
	ldr r0, [sp]
	cmp r0, #0
	ldrne r0, _020C131C ; =0x020E6D40
	movne r1, #2
	strne r1, [r0, #0x4c]
	movne r0, #0
	strne r0, [sp]
	bl FUN_ov15_020c1b64
	cmp r0, #0
	beq _020C101C
	mov r4, #0
	add r0, sp, #4
	mov r1, r4
	bl FUN_ov15_020c1bbc
	cmp r0, #0
	bne _020C1020
_020C101C:
	b _020C104C
_020C1020:
	ldr r0, _020C131C ; =0x020E6D40
	ldr r0, [r0, #0x48]
	cmp r0, #0
	beq _020C103C
	blx r0
	cmp r0, #0
	moveq r4, #1
_020C103C:
	cmp r4, #0
	beq _020C1058
_020C1044:
	mov r0, #5
	bl FUN_ov15_020bcb50
_020C104C:
	bl FUN_ov15_020c0ebc
_020C1050:
	mov r5, #3
	b _020C1168
_020C1058:
	mov r5, #1
	bl FUN_ov15_020c0e3c
	cmp r0, #0
	bne _020C1168
_020C1068:
	mov r0, #4
	bl FUN_ov15_020bcb50
	b _020C1050
_020C1074:
	add r0, sp, #4
	mov r1, #1
	bl FUN_ov15_020c1bbc
	cmp r0, #0
	bne _020C1098
	ldr r0, [sp, #4]
	cmp r0, #0x3c
	movlo r5, #2
	blo _020C1168
_020C1098:
	ldr r0, _020C131C ; =0x020E6D40
	ldr r0, [r0, #0x48]
	cmp r0, #0
	beq _020C10BC
	blx r0
	cmp r0, #0
	moveq r0, #1
	movne r0, #0
	b _020C10C0
_020C10BC:
	mov r0, #0
_020C10C0:
	cmp r0, #0
	beq _020C10CC
	b _020C1044
_020C10CC:
	bl FUN_ov15_020c0e3c
	cmp r0, #0
	bne _020C1168
	b _020C1068
_020C10DC:
	add r0, sp, #4
	mov r1, #2
	bl FUN_ov15_020c1bbc
	cmp r0, #0
	beq _020C1138
	ldr r0, _020C131C ; =0x020E6D40
	ldr r0, [r0, #0x48]
	cmp r0, #0
	beq _020C1114
	blx r0
	cmp r0, #0
	moveq r0, #1
	movne r0, #0
	b _020C1118
_020C1114:
	mov r0, #0
_020C1118:
	cmp r0, #0
	beq _020C1124
	b _020C1044
_020C1124:
	mov r5, #1
	bl FUN_ov15_020c0e3c
	cmp r0, #0
	bne _020C1168
	b _020C1068
_020C1138:
	ldr r0, [sp, #4]
	cmp r0, #0x3c
	bhs _020C1168
	mov r0, #3
	bl FUN_ov15_020bcb50
	mov r6, #1
	b _020C1160
_020C1154:
	mov r6, #1
	mov r0, r6
	bl FUN_ov15_020bcb50
_020C1160:
	str r6, [sp, #4]
	mov r5, #0
_020C1168:
	ldr r0, _020C1328 ; =0x020E6E58
	ldr r4, _020C132C ; =0x000003BD
	mov r2, #0
	mov r8, #0xc
_020C1178:
	mul r1, r2, r8
	ldr r3, [r0, r1]
	add r1, r0, r1
	cmp r3, #0
	ldrneh r3, [r1, #0xa]
	add r2, r2, #1
	subne r3, r7, r3
	movne r3, r3, lsl #0x10
	cmpne r4, r3, asr #16
	movlt r3, #0
	strlt r3, [r1]
	cmp r2, #8
	blt _020C1178
	ldr r0, _020C131C ; =0x020E6D40
	mov r9, #1
	ldr r0, [r0, #0x2c]
	mov r8, #0
	cmp r0, #0
	beq _020C11D4
	subs r6, r6, #1
	bne _020C11D4
	bl FUN_ov15_020bd714
	mov r6, #0x69
_020C11D4:
	ldr r0, _020C1330 ; =0x020939a4
	ldr r4, [r0, #8]
	cmp r4, #0
	beq _020C1284
_020C11E4:
	ldr r0, [r4, #0xa4]
	cmp r0, #0
	ldrne r1, [r0]
	cmpne r1, #0
	beq _020C1278
	ldrb r2, [r0, #8]
	cmp r2, #3
	bne _020C122C
	ldr r1, [r0, #0x10]
	sub r1, r7, r1
	cmp r1, #0x27
	ble _020C122C
	strb r9, [r0, #8]
	ldrh r1, [r0, #0x1a]
	strh r1, [r0, #0x18]
	ldr r1, [r0, #0x20]
	str r1, [r0, #0x1c]
	b _020C1278
_020C122C:
	cmp r2, #2
	bne _020C1258
	ldr r1, [r0, #0x10]
	sub r1, r7, r1
	cmp r1, #0x27
	ble _020C1258
	ldr r1, [r0, #4]
	cmp r1, #1
	bne _020C1278
	strb r8, [r0, #8]
	b _020C126C
_020C1258:
	cmp r2, #4
	beq _020C1278
	ldr r1, [r0, #4]
	cmp r1, #2
	bne _020C1278
_020C126C:
	str r8, [r0, #4]
	ldr r0, [r0]
	bl OS_WakeupThreadDirect
_020C1278:
	ldr r4, [r4, #0x68]
	cmp r4, #0
	bne _020C11E4
_020C1284:
	mov r10, #0
	ldr r11, _020C131C ; =0x020E6D40
	ldr r4, _020C1334 ; =0x020E7538
	mov r9, r10
_020C1294:
	mov r0, #0x38
	mla r8, r9, r0, r4
	ldrh r0, [r8, #4]
	cmp r0, #0
	ldrne r0, [r8, #0x2c]
	subne r0, r7, r0
	cmpne r0, #0xef
	ble _020C12C4
	ldr r0, [r8, #0x34]
	ldr r1, [r11, #0x44]
	blx r1
	strh r10, [r8, #4]
_020C12C4:
	add r9, r9, #1
	cmp r9, #8
	blt _020C1294
	mov r0, r7
	bl FUN_ov15_020da704
	ldr r0, _020C131C ; =0x020E6D40
	ldr r0, [r0, #0x34]
	cmp r0, #0
	beq _020C0F54
	blx r0
	b _020C0F54
_020C12F0:
	ldr r0, _020C131C ; =0x020E6D40
	ldr r0, [r0, #0xc]
	tst r0, #1
	bne _020C130C
	cmp r5, #3
	beq _020C130C
	bl FUN_ov15_020c1cb8
_020C130C:
	bl FUN_ov15_020c02e8
	add sp, sp, #8
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_020C1318: .word ov15_020E6EB8
_020C131C: .word ov15_020E6D40
_020C1320: .word ov15_020E73B8
_020C1324: .word ov15_020E7238
_020C1328: .word ov15_020E6E58
_020C132C: .word 0x000003BD
_020C1330: .word 0x020939a4
_020C1334: .word ov15_020E7538
	arm_func_end FUN_ov15_020c0ef4

	arm_func_start FUN_ov15_020c1338
FUN_ov15_020c1338: ; 0x020C1338
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, lr}
	sub sp, sp, #4
	mvn r5, #0
	bl OS_DisableInterrupts
	mov r7, r0
	bl FUN_02003410
	ldr r1, _020C1418 ; =0x020939a4
	mov r8, r0
	ldr r6, [r1, #8]
	cmp r6, #0
	beq _020C13D8
	ldr r10, _020C141C ; =0x0001991B
	mov r4, #1
	mov r9, #0
_020C1370:
	ldr r0, [r6, #0xa4]
	cmp r0, #0
	ldrne r1, [r0]
	cmpne r1, #0
	beq _020C13CC
	ldrb r1, [r0, #8]
	cmp r1, #4
	bne _020C13CC
	ldrb r1, [r0, #0x32]
	cmp r1, #0
	beq _020C13CC
	ldr r1, [r0, #0x2c]
	sub r2, r8, r1
	cmp r2, r10
	blo _020C13B8
	mov r1, r4
	bl FUN_ov15_020becc4
	b _020C13CC
_020C13B8:
	subs r1, r10, r2
	rsc r0, r9, #0
	cmp r0, #0
	cmpeq r1, r5
	sublo r5, r10, r2
_020C13CC:
	ldr r6, [r6, #0x68]
	cmp r6, #0
	bne _020C1370
_020C13D8:
	cmn r5, #1
	beq _020C1408
	ldr r6, _020C1420 ; =0x020E6DD0
	mov r0, r6
	bl OS_CancelAlarm
	mov r4, #0
	ldr r3, _020C1424 ; =FUN_ov15_020c1468
	mov r0, r6
	mov r1, r5
	mov r2, #0
	str r4, [sp]
	bl OS_SetAlarm
_020C1408:
	mov r0, r7
	bl OS_RestoreInterrupts
	add sp, sp, #4
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, pc}
_020C1418: .word 0x020939a4
_020C141C: .word 0x0001991B
_020C1420: .word ov15_020E6DD0
_020C1424: .word FUN_ov15_020c1468
	arm_func_end FUN_ov15_020c1338

	arm_func_start FUN_ov15_020c1428
FUN_ov15_020c1428: ; 0x020C1428
	stmfd sp!, {r3, r4, r5, lr}
	ldr r5, _020C1464 ; =0x020E70B8
	mov r0, r5
	bl OS_IsThreadTerminated
	cmp r0, #0
	ldmnefd sp!, {r3, r4, r5, pc}
	mov r4, #0
_020C1444:
	bl FUN_ov15_020c1338
	mov r0, r4
	bl OS_SleepThread
	mov r0, r5
	bl OS_IsThreadTerminated
	cmp r0, #0
	beq _020C1444
	ldmfd sp!, {r3, r4, r5, pc}
_020C1464: .word ov15_020E70B8
	arm_func_end FUN_ov15_020c1428

	arm_func_start FUN_ov15_020c1468
FUN_ov15_020c1468: ; 0x020C1468
	ldr r0, _020C1474 ; =0x020E6FF8
	ldr r12, _020C1478 ; =OS_WakeupThreadDirect
	bx r12
_020C1474: .word ov15_020E6FF8
_020C1478: .word OS_WakeupThreadDirect
	arm_func_end FUN_ov15_020c1468

	arm_func_start FUN_ov15_020c147c
FUN_ov15_020c147c: ; 0x020C147C
	stmfd sp!, {r4, r5, r6, r7, r8, lr}
	mov r6, #0xec
	mov r7, r1
	mov r2, r6
	mov r1, #0
	mov r8, r0
	bl MI_CpuFill8
	mov r5, #6
	add r0, r6, #0x15
	ldr r3, _020C15B0 ; =0x020E6D40
	strh r0, [r8]
	strb r5, [r8, #2]
	ldr r0, [r3, #0x30]
	ldr r4, _020C15B4 ; =0x020E6DA8
	mov r0, r0, lsr #0x10
	mov r0, r0, lsl #0x10
	mov r1, r0, lsr #0x10
	mov r0, r1, lsl #8
	orr r0, r0, r1, asr #8
	strh r0, [r8, #4]
	ldr r1, [r3, #0x30]
	mov r0, r4
	mov r1, r1, lsl #0x10
	mov r2, r1, lsr #0x10
	mov r1, r2, lsl #8
	orr r1, r1, r2, asr #8
	strh r1, [r8, #6]
	ldr r1, [r3, #0x50]
	mov r2, r5
	mov r1, r1, lsr #0x10
	mov r1, r1, lsl #0x10
	mov r12, r1, lsr #0x10
	mov r1, r12, lsl #8
	orr r1, r1, r12, asr #8
	strh r1, [r8, #0xc]
	ldr r3, [r3, #0x50]
	add r1, r8, #0x1c
	mov r3, r3, lsl #0x10
	mov r12, r3, lsr #0x10
	mov r3, r12, lsl #8
	orr r3, r3, r12, asr #8
	strh r3, [r8, #0xe]
	bl FUN_02007c60
	ldr r0, _020C15B8 ; =0x00008263
	ldr r2, _020C15BC ; =0x00006353
	strh r0, [r8, #0xec]
	add r0, r6, #0x49
	mov r1, #0x3d
	strh r2, [r8, #0xee]
	mov r3, #7
	strh r0, [r8, #0xf0]
	mov r6, #1
	strb r7, [r8, #0xf2]
	mov r0, r4
	mov r2, r5
	strb r1, [r8, #0xf3]
	add r1, r8, #0xf6
	strb r3, [r8, #0xf4]
	strb r6, [r8, #0xf5]
	bl FUN_02007c60
	mov r0, #0xc
	strb r0, [r8, #0xfc]
	mov r2, #0xa
	strb r2, [r8, #0xfd]
	ldr r0, _020C15C0 ; =0x020E4374
	add r1, r8, #0xfe
	bl FUN_02007c60
	strb r6, [r8, #0x10a]
	mov r1, #3
	strb r5, [r8, #0x10c]
	add r0, r8, #0xd
	add r0, r0, #0x100
	strb r1, [r8, #0x109]
	strb r1, [r8, #0x10b]
	mov r1, #0x37
	strb r1, [r8, #0x108]
	ldmfd sp!, {r4, r5, r6, r7, r8, pc}
_020C15B0: .word ov15_020E6D40
_020C15B4: .word ov15_020E6DA8
_020C15B8: .word 0x00008263
_020C15BC: .word 0x00006353
_020C15C0: .word ov15_020E4374
	arm_func_end FUN_ov15_020c147c

	arm_func_start FUN_ov15_020c15c4
FUN_ov15_020c15c4: ; 0x020C15C4
	stmfd sp!, {r3, r4, r5, lr}
	mov r12, r0
	mov r5, r2
	cmp r3, r1
	bhs _020C15F0
	sub r4, r1, r3
	mov r0, r5
	mov r1, r12
	mov r2, r4
	bl MI_CpuFill8
	add r5, r5, r4
_020C15F0:
	mov r0, r5
	ldmfd sp!, {r3, r4, r5, pc}
	arm_func_end FUN_ov15_020c15c4

	arm_func_start FUN_ov15_020c15f8
FUN_ov15_020c15f8: ; 0x020C15F8
	stmfd sp!, {r3, r4, r5, lr}
	ldr r5, _020C16E4 ; =0x020E6D40
	ldr r4, _020C16E8 ; =0x020E7262
	ldr r2, [r5, #0x80]
	ldr r0, [r5, #0x78]
	ldr r1, [r5, #0x7c]
	umull r12, r3, r2, r0
	mla r3, r2, r1, r3
	ldr r1, [r5, #0x84]
	ldr r2, [r5, #0x88]
	mla r3, r1, r0, r3
	ldr r0, [r5, #0x8c]
	adds r2, r2, r12
	str r2, [r5, #0x78]
	adc r1, r0, r3
	str r1, [r5, #0x7c]
	mov r0, r4
	str r1, [r5, #0x30]
	mov r1, #1
	bl FUN_ov15_020c147c
	ldr r1, [r5, #0x38]
	mov r12, r0
	cmp r1, #0
	beq _020C16AC
	mov r0, #0x32
	strb r0, [r12]
	mov r0, #4
	strb r0, [r12, #1]
	ldr r0, [r5, #0x38]
	mov r0, r0, lsr #0x10
	mov r0, r0, lsl #0x10
	mov r0, r0, lsr #0x10
	mov r0, r0, asr #8
	strb r0, [r12, #2]
	ldr r0, [r5, #0x38]
	mov r0, r0, lsr #0x10
	strb r0, [r12, #3]
	ldr r0, [r5, #0x38]
	mov r0, r0, lsl #0x10
	mov r0, r0, lsr #0x10
	mov r0, r0, asr #8
	strb r0, [r12, #4]
	ldr r0, [r5, #0x38]
	strb r0, [r12, #5]
	add r12, r12, #6
_020C16AC:
	add r2, r12, #1
	mov r5, #0xff
	sub r3, r2, r4
	mov r0, #0
	mov r1, #0x12c
	strb r5, [r12]
	bl FUN_ov15_020c15c4
	mov r1, r0
	mov r0, r4
	sub r1, r1, r4
	bl FUN_ov15_020c0ce8
	ldr r0, _020C16E4 ; =0x020E6D40
	ldr r0, [r0, #0x30]
	ldmfd sp!, {r3, r4, r5, pc}
_020C16E4: .word ov15_020E6D40
_020C16E8: .word ov15_020E7262
	arm_func_end FUN_ov15_020c15f8

	arm_func_start FUN_ov15_020c16ec
FUN_ov15_020c16ec: ; 0x020C16EC
	stmfd sp!, {r3, r4, r5, lr}
	ldr r4, _020C17EC ; =0x020E7262
	mov r5, r0
	mov r0, r4
	mov r1, #3
	bl FUN_ov15_020c147c
	mov r12, r0
	cmp r5, #0
	bne _020C17B4
	mov r0, #0x32
	strb r0, [r12]
	mov r0, #4
	ldr r2, _020C17F0 ; =0x020E6D40
	strb r0, [r12, #1]
	ldr r1, [r2, #0x38]
	mov r3, #0x36
	mov r1, r1, lsr #0x10
	mov r1, r1, lsl #0x10
	mov r1, r1, lsr #0x10
	mov r1, r1, asr #8
	strb r1, [r12, #2]
	ldr r1, [r2, #0x38]
	mov r1, r1, lsr #0x10
	strb r1, [r12, #3]
	ldr r1, [r2, #0x38]
	mov r1, r1, lsl #0x10
	mov r1, r1, lsr #0x10
	mov r1, r1, asr #8
	strb r1, [r12, #4]
	ldr r1, [r2, #0x38]
	strb r1, [r12, #5]
	strb r3, [r12, #6]
	strb r0, [r12, #7]
	ldr r0, [r2, #0x1c]
	mov r0, r0, lsr #0x10
	mov r0, r0, lsl #0x10
	mov r0, r0, lsr #0x10
	mov r0, r0, asr #8
	strb r0, [r12, #8]
	ldr r0, [r2, #0x1c]
	mov r0, r0, lsr #0x10
	strb r0, [r12, #9]
	ldr r0, [r2, #0x1c]
	mov r0, r0, lsl #0x10
	mov r0, r0, lsr #0x10
	mov r0, r0, asr #8
	strb r0, [r12, #0xa]
	ldr r0, [r2, #0x1c]
	strb r0, [r12, #0xb]
	add r12, r12, #0xc
_020C17B4:
	add r2, r12, #1
	mov lr, #0xff
	sub r3, r2, r4
	mov r0, #0
	mov r1, #0x12c
	strb lr, [r12]
	bl FUN_ov15_020c15c4
	mov r1, r0
	mov r0, r4
	sub r1, r1, r4
	bl FUN_ov15_020c0ce8
	ldr r0, _020C17F0 ; =0x020E6D40
	ldr r0, [r0, #0x30]
	ldmfd sp!, {r3, r4, r5, pc}
_020C17EC: .word ov15_020E7262
_020C17F0: .word ov15_020E6D40
	arm_func_end FUN_ov15_020c16ec

	arm_func_start FUN_ov15_020c17f4
FUN_ov15_020c17f4: ; 0x020C17F4
	stmfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, lr}
	sub sp, sp, #0xc
	ldr r2, _020C1B58 ; =0x020E4344
	str r0, [sp]
	ldrb r0, [r2, r1]
	rsb r0, r0, r0, lsl #3
	str r0, [sp, #4]
	bl FUN_02003410
	mov r11, r0, lsr #0x10
	orr r11, r11, r1, lsl #16
	mov r4, #0
	b _020C1B14
_020C1824:
	bl FUN_ov15_020c0d7c
	cmp r0, #0
	bne _020C1838
	bl FUN_ov15_020bcc50
	b _020C1B14
_020C1838:
	add r0, sp, #8
	bl FUN_ov15_020c0728
	ldr r1, [sp, #8]
	mov r5, r0
	cmp r1, #0xf0
	bls _020C1B0C
	ldrb r0, [r5]
	cmp r0, #2
	bne _020C1B0C
	ldrh r3, [r5, #6]
	ldrh r2, [r5, #4]
	mov r0, r3, lsl #8
	mov r1, r2, lsl #8
	orr r2, r1, r2, asr #8
	orr r1, r0, r3, asr #8
	mov r0, r2, lsl #0x10
	mov r1, r1, lsl #0x10
	mov r2, r0, lsr #0x10
	mov r0, r1, lsr #0x10
	orr r1, r0, r2, lsl #16
	ldr r0, [sp]
	cmp r0, r1
	bne _020C1B0C
	ldr r1, _020C1B5C ; =0x020E6DA8
	add r0, r5, #0x1c
	bl FUN_ov15_020bd27c
	cmp r0, #0
	bne _020C1B0C
	ldrb r3, [r5, #0x10]
	ldrb r2, [r5, #0x11]
	ldrb r1, [r5, #0x12]
	ldrb r0, [r5, #0x13]
	orr r3, r2, r3, lsl #8
	ldrb r2, [r5, #0xec]
	orr r1, r0, r1, lsl #8
	mov r0, r3, lsl #0x10
	mov r1, r1, lsl #0x10
	mov r4, r0, lsr #0x10
	mov r0, r1, lsr #0x10
	cmp r2, #0x63
	orr r2, r0, r4, lsl #16
	ldreqb r0, [r5, #0xed]
	ldr r3, [sp, #8]
	mov r4, #3
	cmpeq r0, #0x82
	ldreqb r0, [r5, #0xee]
	add r1, r5, r3
	cmpeq r0, #0x53
	ldreqb r0, [r5, #0xef]
	addeq r3, r5, #0xf0
	cmpeq r0, #0x63
	bne _020C1B0C
	ldr lr, _020C1B60 ; =0x020E6D40
	mov r9, #2
	ldr r0, [lr, #0xc]
	mov r10, #1
	and r12, r0, #2
	mov r0, #0
	b _020C1AF8
_020C1924:
	cmp r5, #0
	beq _020C1AF8
	cmp r5, #0x33
	bgt _020C1960
	bge _020C1A60
	cmp r5, #6
	bgt _020C1AEC
	cmp r5, #1
	blt _020C1AEC
	beq _020C197C
	cmp r5, #3
	beq _020C19B0
	cmp r5, #6
	beq _020C19E4
	b _020C1AEC
_020C1960:
	cmp r5, #0x35
	bgt _020C1970
	beq _020C1A94
	b _020C1AEC
_020C1970:
	cmp r5, #0x36
	beq _020C1ABC
	b _020C1AEC
_020C197C:
	ldrb r8, [r3, #1]
	ldrb r7, [r3, #2]
	ldrb r6, [r3, #3]
	ldrb r5, [r3, #4]
	orr r7, r7, r8, lsl #8
	mov r7, r7, lsl #0x10
	orr r6, r5, r6, lsl #8
	mov r5, r7, lsr #0x10
	mov r6, r6, lsl #0x10
	mov r6, r6, lsr #0x10
	orr r5, r6, r5, lsl #16
	str r5, [lr, #0x10]
	b _020C1AEC
_020C19B0:
	ldrb r8, [r3, #1]
	ldrb r7, [r3, #2]
	ldrb r6, [r3, #3]
	ldrb r5, [r3, #4]
	orr r7, r7, r8, lsl #8
	mov r7, r7, lsl #0x10
	orr r6, r5, r6, lsl #8
	mov r5, r7, lsr #0x10
	mov r6, r6, lsl #0x10
	mov r6, r6, lsr #0x10
	orr r5, r6, r5, lsl #16
	str r5, [lr, #0x2c]
	b _020C1AEC
_020C19E4:
	cmp r12, #0
	bne _020C1AEC
	ldrb r5, [r3]
	cmp r5, #8
	strlo r0, [lr, #0x74]
	blo _020C1A2C
	ldrb r8, [r3, #5]
	ldrb r7, [r3, #6]
	ldrb r6, [r3, #7]
	ldrb r5, [r3, #8]
	orr r7, r7, r8, lsl #8
	mov r7, r7, lsl #0x10
	orr r6, r5, r6, lsl #8
	mov r5, r7, lsr #0x10
	mov r6, r6, lsl #0x10
	mov r6, r6, lsr #0x10
	orr r5, r6, r5, lsl #16
	str r5, [lr, #0x74]
_020C1A2C:
	ldrb r8, [r3, #1]
	ldrb r7, [r3, #2]
	ldrb r6, [r3, #3]
	ldrb r5, [r3, #4]
	orr r7, r7, r8, lsl #8
	mov r7, r7, lsl #0x10
	orr r6, r5, r6, lsl #8
	mov r5, r7, lsr #0x10
	mov r6, r6, lsl #0x10
	mov r6, r6, lsr #0x10
	orr r5, r6, r5, lsl #16
	str r5, [lr, #0x70]
	b _020C1AEC
_020C1A60:
	ldrb r8, [r3, #1]
	ldrb r7, [r3, #2]
	ldrb r6, [r3, #3]
	ldrb r5, [r3, #4]
	orr r7, r7, r8, lsl #8
	mov r7, r7, lsl #0x10
	orr r6, r5, r6, lsl #8
	mov r5, r7, lsr #0x10
	mov r6, r6, lsl #0x10
	mov r6, r6, lsr #0x10
	orr r5, r6, r5, lsl #16
	str r5, [lr, #0x3c]
	b _020C1AEC
_020C1A94:
	ldrb r5, [r3, #1]
	cmp r5, #2
	beq _020C1AB0
	cmp r5, #5
	moveq r4, r9
	streq r2, [lr, #0x50]
	b _020C1AEC
_020C1AB0:
	mov r4, r10
	str r2, [lr, #0x38]
	b _020C1AEC
_020C1ABC:
	ldrb r8, [r3, #1]
	ldrb r7, [r3, #2]
	ldrb r6, [r3, #3]
	ldrb r5, [r3, #4]
	orr r7, r7, r8, lsl #8
	mov r7, r7, lsl #0x10
	orr r6, r5, r6, lsl #8
	mov r5, r7, lsr #0x10
	mov r6, r6, lsl #0x10
	mov r6, r6, lsr #0x10
	orr r5, r6, r5, lsl #16
	str r5, [lr, #0x1c]
_020C1AEC:
	ldrb r5, [r3]
	add r5, r5, #1
	add r3, r3, r5
_020C1AF8:
	cmp r3, r1
	bhs _020C1B0C
	ldrb r5, [r3], #1
	cmp r5, #0xff
	bne _020C1924
_020C1B0C:
	ldr r0, [sp, #8]
	bl FUN_ov15_020c08dc
_020C1B14:
	ldr r0, _020C1B60 ; =0x020E6D40
	ldr r0, [r0, #0x18]
	blx r0
	cmp r0, #0
	beq _020C1B4C
	cmp r4, #0
	bne _020C1B4C
	bl FUN_02003410
	mov r0, r0, lsr #0x10
	orr r0, r0, r1, lsl #16
	sub r1, r0, r11
	ldr r0, [sp, #4]
	cmp r1, r0
	blt _020C1824
_020C1B4C:
	mov r0, r4
	add sp, sp, #0xc
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
_020C1B58: .word ov15_020E4344
_020C1B5C: .word ov15_020E6DA8
_020C1B60: .word ov15_020E6D40
	arm_func_end FUN_ov15_020c17f4

	arm_func_start FUN_ov15_020c1b64
FUN_ov15_020c1b64: ; 0x020C1B64
	stmfd sp!, {r3, r4, r5, lr}
	bl FUN_ov15_020c0388
	bl FUN_ov15_020c0300
	mov r1, #0x43
	sub r2, r1, #0x44
	mov r0, #0x44
	bl FUN_ov15_020c0328
	mov r5, #0
_020C1B84:
	bl FUN_ov15_020c15f8
	mov r1, r5
	bl FUN_ov15_020c17f4
	mov r4, r0
	cmp r4, #1
	beq _020C1BA8
	add r5, r5, #1
	cmp r5, #5
	blt _020C1B84
_020C1BA8:
	bl FUN_ov15_020c03d4
	mov r0, #1
	cmp r4, #1
	movne r0, #0
	ldmfd sp!, {r3, r4, r5, pc}
	arm_func_end FUN_ov15_020c1b64

	arm_func_start FUN_ov15_020c1bbc
FUN_ov15_020c1bbc: ; 0x020C1BBC
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	mov r4, r1
	mov r5, r0
	bl FUN_ov15_020c0388
	bl FUN_ov15_020c0300
	cmp r4, #1
	mov r0, #0x44
	bne _020C1BEC
	ldr r1, _020C1CB4 ; =0x020E6D40
	ldr r2, [r1, #0x1c]
	mov r1, #0x43
	b _020C1BF4
_020C1BEC:
	mov r1, #0x43
	sub r2, r1, #0x44
_020C1BF4:
	bl FUN_ov15_020c0328
	mov r7, #0
_020C1BFC:
	mov r0, r4
	bl FUN_ov15_020c16ec
	mov r1, r7
	bl FUN_ov15_020c17f4
	movs r6, r0
	cmpne r6, #1
	bne _020C1C24
	add r7, r7, #1
	cmp r7, #5
	blt _020C1BFC
_020C1C24:
	bl FUN_ov15_020c03d4
	cmp r6, #2
	bne _020C1C58
	ldr r1, _020C1CB4 ; =0x020E6D40
	mov r0, #1
	ldr r2, [r1, #0x3c]
	mov r2, r2, lsr #1
	str r2, [r5]
	ldr r2, [r1, #0x3c]
	add r2, r2, r2, lsl #1
	mov r2, r2, lsr #3
	str r2, [r1, #0x40]
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_020C1C58:
	ldr r0, _020C1CB4 ; =0x020E6D40
	cmp r4, #1
	ldr r1, [r0, #0x40]
	mov r1, r1, lsr #1
	str r1, [r0, #0x40]
	str r1, [r5]
	beq _020C1C80
	cmp r4, #2
	beq _020C1CA0
	b _020C1CAC
_020C1C80:
	cmp r1, #0x3c
	bhs _020C1CAC
	mov r1, #1
	str r1, [r5]
	ldr r1, [r0, #0x3c]
	mov r1, r1, lsr #3
	str r1, [r0, #0x40]
	b _020C1CAC
_020C1CA0:
	cmp r1, #0x3c
	movlo r0, #1
	strlo r0, [r5]
_020C1CAC:
	mov r0, #0
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_020C1CB4: .word ov15_020E6D40
	arm_func_end FUN_ov15_020c1bbc

	arm_func_start FUN_ov15_020c1cb8
FUN_ov15_020c1cb8: ; 0x020C1CB8
	stmfd sp!, {r4, lr}
	bl FUN_ov15_020c0388
	bl FUN_ov15_020c0300
	ldr r1, _020C1D18 ; =0x020E6D40
	mov r0, #0x44
	ldr r2, [r1, #0x1c]
	mov r1, #0x43
	bl FUN_ov15_020c0328
	ldr r4, _020C1D1C ; =0x020E7262
	mov r1, #7
	mov r0, r4
	bl FUN_ov15_020c147c
	mov r1, #0xff
	add r2, r0, #1
	strb r1, [r0]
	mov r0, #0
	mov r1, #0x12c
	sub r3, r2, r4
	bl FUN_ov15_020c15c4
	sub r1, r0, r4
	mov r0, r4
	bl FUN_ov15_020c0ce8
	bl FUN_ov15_020c03d4
	ldmfd sp!, {r4, pc}
_020C1D18: .word ov15_020E6D40
_020C1D1C: .word ov15_020E7262
	arm_func_end FUN_ov15_020c1cb8

	arm_func_start FUN_ov15_020c1d20
FUN_ov15_020c1d20: ; 0x020C1D20
	ldrb r2, [r0], #1
	cmp r2, #0
	bxeq lr
_020C1D2C:
	and r1, r2, #0xc0
	cmp r1, #0xc0
	addeq r0, r0, #1
	bxeq lr
	add r0, r0, r2
	ldrb r2, [r0], #1
	cmp r2, #0
	bne _020C1D2C
	bx lr
	arm_func_end FUN_ov15_020c1d20

	arm_func_start FUN_ov15_020c1d50
FUN_ov15_020c1d50: ; 0x020C1D50
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, lr}
	sub sp, sp, #0x48
	mov r9, r2
	mov r2, r9, lsl #8
	mov r10, r1
	orr r1, r2, r9, asr #8
	strh r1, [sp, #4]
	cmp r10, #0x20
	mov r6, #0
	movne r1, #1
	strneh r1, [sp, #6]
	ldreq r1, _020C1FF0 ; =0x00001001
	add r7, sp, #0x10
	streqh r1, [sp, #6]
	mov r1, #0x100
	strh r1, [sp, #8]
	strh r6, [sp, #0xa]
	strh r6, [sp, #0xc]
	strh r6, [sp, #0xe]
	str r6, [sp]
	ldrb r12, [r0], #1
	mov r11, r3
	ldr r8, [sp, #0x70]
	mov r1, r6
	add r2, r7, #1
	cmp r12, #0
	beq _020C1E1C
	mov r3, r6
	add r4, sp, #4
_020C1DC4:
	sub r5, r2, r4
	cmp r5, #0x3c
	addgt sp, sp, #0x48
	mvngt r0, #0
	ldmgtfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
	cmp r12, #0x2e
	addne r6, r6, #1
	movne r1, r6
	strne r6, [sp]
	strneb r12, [r2], #1
	bne _020C1E10
	cmp r6, #0
	beq _020C1E10
	strb r6, [r7]
	mov r7, r2
	mov r1, r3
	mov r6, r3
	str r3, [sp]
	add r2, r2, #1
_020C1E10:
	ldrb r12, [r0], #1
	cmp r12, #0
	bne _020C1DC4
_020C1E1C:
	strb r1, [r7]
	mov r4, #0
	strb r4, [r2]
	mov r0, r10, lsr #8
	strb r0, [r2, #1]
	strb r10, [r2, #2]
	add r0, sp, #4
	add r1, r2, #5
	strb r4, [r2, #3]
	mov r3, #1
	sub r1, r1, r0
	strb r3, [r2, #4]
	bl FUN_ov15_020c0ce8
	bl FUN_02003410
	mov r5, r0, lsr #0x10
	orr r5, r5, r1, lsl #16
	b _020C1FB0
_020C1E60:
	bl FUN_ov15_020c0d7c
	cmp r0, #0
	bne _020C1E78
	mov r0, #0xa
	bl OS_Sleep
	b _020C1FB0
_020C1E78:
	add r0, sp, #0
	bl FUN_ov15_020c0728
	ldr r1, [sp]
	cmp r1, #0xc
	bls _020C1FA8
	ldrh r3, [r0]
	mov r2, r3, lsl #8
	orr r2, r2, r3, asr #8
	mov r2, r2, lsl #0x10
	cmp r9, r2, lsr #16
	bne _020C1FA8
	ldrb r2, [r0, #3]
	and r2, r2, #0xf
	cmp r2, #3
	mvneq r4, #0
	beq _020C1FA8
	cmp r2, #0
	bne _020C1FA8
	ldrb r3, [r0, #4]
	ldrb r2, [r0, #5]
	add r6, r0, r1
	add r0, r0, #0xc
	orr r1, r2, r3, lsl #8
	mov r1, r1, lsl #0x10
	movs r1, r1, lsr #0x10
	sub r7, r1, #1
	beq _020C1EF8
_020C1EE4:
	bl FUN_ov15_020c1d20
	cmp r7, #0
	add r0, r0, #4
	sub r7, r7, #1
	bne _020C1EE4
_020C1EF8:
	cmp r0, r6
	bhs _020C1FA8
_020C1F00:
	bl FUN_ov15_020c1d20
	ldrb r7, [r0, #8]
	ldrb r1, [r0, #9]
	ldrb r3, [r0]
	ldrb r2, [r0, #1]
	orr r1, r1, r7, lsl #8
	mov r1, r1, lsl #0x10
	orr r2, r2, r3, lsl #8
	mov r2, r2, lsl #0x10
	cmp r10, r2, lsr #16
	mov r2, r1, lsr #0x10
	bne _020C1F98
	cmp r10, #0xc
	beq _020C1F78
	add r4, r0, #8
	add r0, r0, #6
	add r6, r4, r2
	add r1, r0, r2
	ldrb r3, [r0, r2]
	ldrb r0, [r1, #1]
	ldrb r2, [r4, r2]
	ldrb r1, [r6, #1]
	orr r0, r0, r3, lsl #8
	mov r0, r0, lsl #0x10
	orr r1, r1, r2, lsl #8
	mov r1, r1, lsl #0x10
	mov r2, r0, lsr #0x10
	mov r0, r1, lsr #0x10
	orr r4, r0, r2, lsl #16
	b _020C1FA8
_020C1F78:
	cmp r2, r8
	movhi r4, #2
	bhi _020C1FA8
	mov r1, r11
	add r0, r0, #0xa
	bl FUN_02007c60
	mov r4, #1
	b _020C1FA8
_020C1F98:
	add r1, r2, #0xa
	add r0, r0, r1
	cmp r0, r6
	blo _020C1F00
_020C1FA8:
	ldr r0, [sp]
	bl FUN_ov15_020c08dc
_020C1FB0:
	ldr r0, _020C1FF4 ; =0x020E6D40
	ldr r0, [r0, #0x18]
	blx r0
	cmp r0, #0
	beq _020C1FE4
	cmp r4, #0
	bne _020C1FE4
	bl FUN_02003410
	mov r0, r0, lsr #0x10
	orr r0, r0, r1, lsl #16
	sub r0, r0, r5
	cmp r0, #0xf
	blt _020C1E60
_020C1FE4:
	mov r0, r4
	add sp, sp, #0x48
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_020C1FF0: .word 0x00001001
_020C1FF4: .word ov15_020E6D40
	arm_func_end FUN_ov15_020c1d50

	arm_func_start FUN_ov15_020c1ff8
FUN_ov15_020c1ff8: ; 0x020C1FF8
	str r0, [r1]
	mov r12, #0
	mov r2, #0xa
_020C2004:
	ldrb r3, [r0]
	sub r3, r3, #0x30
	and r3, r3, #0xff
	cmp r3, #9
	mlals r12, r2, r12, r3
	addls r0, r0, #1
	strls r0, [r1]
	bls _020C2004
	mov r0, r12
	bx lr
	arm_func_end FUN_ov15_020c1ff8

	arm_func_start FUN_ov15_020c202c
FUN_ov15_020c202c: ; 0x020C202C
	stmfd sp!, {r3, r4, r5, r6, r7, r8, lr}
	sub sp, sp, #4
	mov r5, #0
	mov r8, r0
	mov r7, r1
	mov r6, r5
	add r4, sp, #0
_020C2048:
	mov r0, r8
	mov r1, r4
	bl FUN_ov15_020c1ff8
	ldr r2, [sp]
	cmp r8, r2
	addeq sp, sp, #4
	moveq r0, #0
	ldmeqfd sp!, {r3, r4, r5, r6, r7, r8, pc}
	mov r8, r2
	cmp r0, #0xff
	bhi _020C20A0
	cmp r6, #3
	beq _020C208C
	ldrb r1, [r2]
	add r8, r2, #1
	cmp r1, #0x2e
	bne _020C20A0
_020C208C:
	cmp r6, #3
	bne _020C20AC
	ldrb r1, [r8]
	cmp r1, #0
	beq _020C20AC
_020C20A0:
	add sp, sp, #4
	mov r0, #0
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, pc}
_020C20AC:
	add r6, r6, #1
	cmp r6, #4
	orr r5, r0, r5, lsl #8
	blt _020C2048
	str r5, [r7]
	mov r0, #1
	add sp, sp, #4
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, pc}
	arm_func_end FUN_ov15_020c202c

	arm_func_start FUN_ov15_020c20cc
FUN_ov15_020c20cc: ; 0x020C20CC
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	movs r6, r1
	mov r7, r0
	mov r5, r2
	mvneq r0, #0
	ldmeqfd sp!, {r3, r4, r5, r6, r7, pc}
	bl FUN_ov15_020c0388
	bl FUN_ov15_020c0300
	mov r4, #0
	mov r0, r4
	mov r2, r6
	mov r1, #0x35
	bl FUN_ov15_020c0328
	mov r0, r7
	mov r2, r5
	str r4, [sp]
	mov r3, r4
	mov r1, #1
	bl FUN_ov15_020c1d50
	mov r4, r0
	bl FUN_ov15_020c03d4
	mov r0, r4
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
	arm_func_end FUN_ov15_020c20cc

	arm_func_start FUN_ov15_020c2128
FUN_ov15_020c2128: ; 0x020C2128
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, lr}
	sub sp, sp, #0x10
	ldr r2, _020C229C ; =0x020E6D40
	mov r1, #0
	str r1, [sp, #0xc]
	ldr r8, [r2, #0x80]
	ldr r4, [r2, #0x78]
	str r1, [sp]
	ldr r5, [r2, #0x7c]
	umull r3, r1, r8, r4
	mla r1, r8, r5, r1
	ldr r7, [r2, #0x84]
	ldr r6, [r2, #0x88]
	mla r1, r7, r4, r1
	ldr r4, [r2, #0x8c]
	adds r10, r6, r3
	adc r11, r4, r1
	umull r3, r1, r8, r10
	mla r1, r8, r11, r1
	str r10, [r2, #0x78]
	mla r1, r7, r10, r1
	mov r5, #0
	adds r6, r6, r3
	str r11, [r2, #0x7c]
	mov r7, r5, lsl #0x10
	adc r4, r4, r1
	mov r3, r5, lsl #0x10
	orr r7, r7, r11, lsr #16
	str r6, [r2, #0x78]
	orr r3, r3, r4, lsr #16
	add r1, sp, #0xc
	mov r10, r0
	str r4, [r2, #0x7c]
	strh r7, [sp, #6]
	strh r3, [sp, #8]
	bl FUN_ov15_020c202c
	cmp r0, #0
	ldrne r0, [sp, #0xc]
	addne sp, sp, #0x10
	ldmnefd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
	mov r0, #1
	ldr r6, _020C22A0 ; =0x020E6DB0
	strb r0, [sp, #4]
	strb r0, [sp, #5]
	mov r8, r5
	add r11, sp, #6
	add r7, sp, #4
_020C21E4:
	mov r9, r8
	mvn r4, #0
_020C21EC:
	ldrb r0, [r7, r9]
	cmp r0, #0
	beq _020C2268
	ldr r0, [r6, r9, lsl #2]
	cmp r0, #0
	beq _020C2210
	bl FUN_ov15_020bd188
	movs r5, r0
	bne _020C2218
_020C2210:
	strb r8, [r7, r9]
	b _020C2268
_020C2218:
	bl FUN_ov15_020bd64c
	cmp r0, #0
	bne _020C2238
	mov r0, r5
	bl FUN_ov15_020bd820
	cmp r0, #0
	streqb r8, [r7, r9]
	beq _020C2268
_020C2238:
	mov r0, r9, lsl #1
	ldrh r2, [r11, r0]
	ldr r1, [r6, r9, lsl #2]
	mov r0, r10
	bl FUN_ov15_020c20cc
	str r0, [sp, #0xc]
	cmp r0, #0
	beq _020C2260
	cmp r0, r4
	bne _020C2288
_020C2260:
	cmp r0, r4
	streqb r8, [r7, r9]
_020C2268:
	add r9, r9, #1
	cmp r9, #2
	blt _020C21EC
	ldr r0, [sp]
	add r0, r0, #1
	str r0, [sp]
	cmp r0, #3
	blt _020C21E4
_020C2288:
	ldr r0, [sp, #0xc]
	cmn r0, #1
	moveq r0, #0
	add sp, sp, #0x10
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_020C229C: .word ov15_020E6D40
_020C22A0: .word ov15_020E6DB0
	arm_func_end FUN_ov15_020c2128

	arm_func_start FUN_ov15_020c22a4
FUN_ov15_020c22a4: ; 0x020C22A4
	tst r0, #2
	mov r0, r0, asr #2
	addeq r0, r0, #0x19
	and r0, r0, #0xff
	bx lr
	arm_func_end FUN_ov15_020c22a4

	arm_func_start FUN_ov15_020c22b8
FUN_ov15_020c22b8: ; 0x020C22B8
	stmfd sp!, {r4, r5, r6, r7, r8, r9, r10, lr}
	sub sp, sp, #8
	ldr r7, _020C2594 ; =0x020E8F00
	mov r6, r0
	ldr r0, [r7]
	mov r1, #0x400
	add r0, r0, #0xf00
	bl DC_InvalidateRange
	ldrh r0, [r6, #2]
	cmp r0, #0
	ldreqh r0, [r6, #8]
	cmpeq r0, #5
	bne _020C2558
	ldrh r0, [r6, #0xe]
	mov r5, #0
	cmp r0, #0
	bls _020C2558
_020C22FC:
	add r0, r6, r5, lsl #2
	ldr r0, [r0, #0x10]
	ldrb r1, [r0, #0x4a]
	add r1, r1, #0x10
	cmp r1, #0x80
	ldreqh r1, [r0, #0x40]
	cmpeq r1, #1
	ldreq r2, [r0, #0x44]
	ldreq r1, _020C2598 ; =0x00000857
	cmpeq r2, r1
	bne _020C2548
	ldr r1, [r7]
	mov r8, #0
	add r3, r1, #0x1000
	ldr r2, [r3, #0xa88]
	mov r4, r8
	cmp r2, #0
	bls _020C2370
	ldrh r9, [r0, #0x48]
_020C2348:
	add r2, r1, r4, lsl #1
	add r2, r2, #0x1a00
	ldrh r2, [r2, #0x68]
	cmp r2, r9
	moveq r8, #1
	beq _020C2370
	ldr r2, [r3, #0xa88]
	add r4, r4, #1
	cmp r4, r2
	blo _020C2348
_020C2370:
	cmp r8, #1
	beq _020C2548
	ldr r1, [r7]
	mov r4, #0x70
	add r2, r1, #0x1000
	add r1, r1, #0x348
	ldr r2, [r2, #0xa8c]
	add r1, r1, #0x1000
	mla r1, r2, r4, r1
	mov r2, r4
	add r0, r0, #0x50
	bl MI_CpuCopy8
	add r8, sp, #0
	mov r9, #4
	ldr r0, _020C259C ; =0x020E3CCC
	mov r1, r8
	mov r2, r9
	bl MI_CpuCopy8
	add r0, r6, r5, lsl #2
	ldr r0, [r0, #0x10]
	mov r2, r9
	add r1, sp, #4
	add r0, r0, #6
	bl MI_CpuCopy8
	ldr r0, [r7]
	mov r1, r8
	add r0, r0, #0x96
	mov r2, #8
	add r0, r0, #0x1c00
	bl FUN_ov15_020e3bd4
	ldr r3, [r7]
	mov r2, r4
	add r0, r3, #0x348
	add r8, r0, #0x1000
	add r0, r3, #0x1000
	ldr r1, [r0, #0xa8c]
	add r0, r3, #0x96
	mul r3, r1, r4
	add r1, r8, r3
	add r0, r0, #0x1c00
	add r3, r8, r3
	bl FUN_ov15_020e3c54
	ldr r2, [r7]
	mov r8, #0x6e
	add r0, r2, #0x348
	add r10, r0, #0x1000
	add r0, r2, #0x1000
	ldr r1, [r0, #0xa8c]
	add r0, r2, #0x96
	mul r9, r1, r4
	add r1, r2, #0x294
	add r0, r0, #0x1a00
	add r1, r1, #0x1800
	add r2, r10, r9
	mov r3, r8
	bl FUN_0200a988
	ldr r0, [r7]
	add r1, r10, r9
	add r0, r0, #0x96
	mov r2, r8
	add r0, r0, #0x1a00
	bl FUN_0200aa44
	ldr r8, [r7]
	add r1, r8, #0x1000
	ldr r2, [r1, #0xa8c]
	mul r1, r2, r4
	add r2, r8, r1
	add r2, r2, #0x1300
	ldrh r2, [r2, #0xb6]
	cmp r0, r2
	cmpne r2, #0
	beq _020C24AC
	add r0, r8, #0x348
	add r0, r0, #0x1000
	mov r2, r4
	add r0, r0, r1
	mov r1, #0
	bl MI_CpuFill8
	b _020C2548
_020C24AC:
	add r0, r6, r5, lsl #2
	ldr r0, [r0, #0x10]
	ldrh r0, [r0, #2]
	and r0, r0, #0xff
	bl FUN_ov15_020c22a4
	add r1, r8, #0x1000
	ldr r1, [r1, #0xa8c]
	ldr r3, _020C2594 ; =0x020E8F00
	add r1, r8, r1, lsl #1
	add r1, r1, #0x1a00
	strh r0, [r1, #0x48]
	ldr r2, [r3]
	add r1, r6, r5, lsl #2
	add r0, r2, #0x1000
	ldr r1, [r1, #0x10]
	ldr r0, [r0, #0xa8c]
	ldrh r1, [r1, #0x48]
	add r0, r2, r0, lsl #1
	add r0, r0, #0x1a00
	strh r1, [r0, #0x68]
	ldr r0, [r3]
	add r2, r0, #0x1000
	ldr r0, [r2, #0xa8c]
	add r0, r0, #1
	mov r1, r0, lsr #0x1f
	rsb r0, r1, r0, lsl #28
	add r0, r1, r0, ror #28
	str r0, [r2, #0xa8c]
	ldr r0, [r3]
	add r0, r0, #0x1000
	ldr r1, [r0, #0xa88]
	add r1, r1, #1
	str r1, [r0, #0xa88]
	ldr r0, [r3]
	add r0, r0, #0x1000
	ldr r1, [r0, #0xa88]
	cmp r1, #0x10
	movgt r1, #0x10
	strgt r1, [r0, #0xa88]
_020C2548:
	ldrh r0, [r6, #0xe]
	add r5, r5, #1
	cmp r5, r0
	blo _020C22FC
_020C2558:
	ldr r1, _020C2594 ; =0x020E8F00
	mov r2, #2
	ldr r0, [r1]
	add r0, r0, #0x1000
	str r2, [r0, #0xa90]
	ldr r0, [r1]
	add r0, r0, #0x1000
	ldr r1, [r0, #0x344]
	cmp r1, #0
	addeq sp, sp, #8
	ldmeqfd sp!, {r4, r5, r6, r7, r8, r9, r10, pc}
	mov r0, r6
	blx r1
	add sp, sp, #8
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, pc}
_020C2594: .word ov15_020E8F00
_020C2598: .word 0x00000857
_020C259C: .word 0x020E3CCC
	arm_func_end FUN_ov15_020c22b8

	arm_func_start FUN_ov15_020c25a0
FUN_ov15_020c25a0: ; 0x020C25A0
	ldr r0, _020C25A8 ; =0x00001DA0
	bx lr
_020C25A8: .word 0x00001DA0
	arm_func_end FUN_ov15_020c25a0

	arm_func_start FUN_ov15_020c25ac
FUN_ov15_020c25ac: ; 0x020C25AC
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	movs r6, r1
	mov r5, r2
	mvneq r0, #0
	ldmeqfd sp!, {r3, r4, r5, r6, r7, pc}
	ldr r7, _020C2628 ; =0x020E8F00
	str r0, [r7]
	bl FUN_ov15_020c25a0
	mov r2, r0
	mov r4, #0
	ldr r0, [r7]
	mov r1, r4
	bl MI_CpuFill8
	ldr r0, [r7]
	ldr r1, _020C262C ; =0x0000A001
	add r0, r0, #0x1000
	str r4, [r0, #0xa90]
	ldr r0, [r7]
	add r0, r0, #0x1a00
	strh r4, [r0, #0x94]
	ldr r0, [r7]
	add r0, r0, #0x96
	add r0, r0, #0x1a00
	bl FUN_0200a944
	ldr r0, [r7]
	mov r1, r6
	mov r2, r5
	bl FUN_020130b4
	cmp r0, #2
	moveq r0, r4
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_020C2628: .word ov15_020E8F00
_020C262C: .word 0x0000A001
	arm_func_end FUN_ov15_020c25ac

	arm_func_start FUN_ov15_020c2630
FUN_ov15_020c2630: ; 0x020C2630
	stmfd sp!, {r4, lr}
	cmp r0, #0
	mvneq r0, #0
	ldmeqfd sp!, {r4, pc}
	ldr r2, _020C266C ; =0x020E8F00
	mov r3, #3
	ldr r1, [r2]
	mov r4, #0
	add r1, r1, #0x1000
	str r3, [r1, #0xa90]
	str r4, [r2]
	bl FUN_02013168
	cmp r0, #2
	moveq r0, r4
	ldmfd sp!, {r4, pc}
_020C266C: .word ov15_020E8F00
	arm_func_end FUN_ov15_020c2630

	arm_func_start FUN_ov15_020c2670
FUN_ov15_020c2670: ; 0x020C2670
	stmfd sp!, {r4, r5, r6, lr}
	movs r6, r0
	mvneq r0, #0
	ldmeqfd sp!, {r4, r5, r6, pc}
	ldr r4, _020C2720 ; =0x020E8F00
	mov r1, #0x400
	ldr r0, [r4]
	add r2, r0, #0xf00
	add r0, r0, #0x1000
	str r2, [r0, #0x300]
	ldr r0, [r4]
	add r0, r0, #0x1300
	strh r1, [r0, #4]
	bl FUN_02012bc0
	ldr r1, [r4]
	add r1, r1, #0x1300
	strh r0, [r1, #6]
	bl FUN_02012d08
	ldr r1, [r4]
	mov r5, #1
	add r1, r1, #0x1300
	strh r0, [r1, #8]
	ldr r0, [r4]
	mov r1, #0xff
	add r0, r0, #0x1300
	strh r5, [r0, #0x10]
	ldr r0, [r4]
	mov r2, #6
	add r0, r0, #0xa
	add r0, r0, #0x1300
	bl MI_CpuFill8
	ldr r1, [r4]
	ldr r0, _020C2724 ; =FUN_ov15_020c22b8
	add r1, r1, #0x1000
	str r6, [r1, #0x344]
	ldr r1, [r4]
	add r1, r1, #0x1000
	str r5, [r1, #0xa90]
	ldr r1, [r4]
	add r1, r1, #0x1300
	bl FUN_02013394
	cmp r0, #2
	moveq r0, #0
	ldmfd sp!, {r4, r5, r6, pc}
_020C2720: .word ov15_020E8F00
_020C2724: .word FUN_ov15_020c22b8
	arm_func_end FUN_ov15_020c2670

	arm_func_start FUN_ov15_020c2728
FUN_ov15_020c2728: ; 0x020C2728
	stmfd sp!, {r3, lr}
	cmp r0, #0
	mvneq r0, #0
	ldmeqfd sp!, {r3, pc}
	ldr r1, _020C275C ; =0x020E8F00
	mov r2, #2
	ldr r1, [r1]
	add r1, r1, #0x1000
	str r2, [r1, #0xa90]
	bl FUN_020134e4
	cmp r0, #2
	moveq r0, #0
	ldmfd sp!, {r3, pc}
_020C275C: .word ov15_020E8F00
	arm_func_end FUN_ov15_020c2728

	arm_func_start FUN_ov15_020c2760
FUN_ov15_020c2760: ; 0x020C2760
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	ldr r7, _020C27F8 ; =0x020E8F00
	mov r6, r0
	ldr r0, [r7]
	mov r5, r1
	add r0, r0, #0x1000
	ldr r1, [r0, #0xa90]
	cmp r1, #2
	mvnne r0, #0
	ldmnefd sp!, {r3, r4, r5, r6, r7, pc}
	cmp r6, #0
	blt _020C279C
	ldr r0, [r0, #0xa88]
	cmp r6, r0
	blt _020C27A4
_020C279C:
	mvn r0, #0
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_020C27A4:
	mov r4, #0
	mov r0, r5
	mov r1, r4
	mov r2, #0x78
	bl MI_CpuFill8
	mov r0, #1
	str r0, [r5]
	ldr r0, [r7]
	mov r2, #0x70
	add r0, r0, r6, lsl #1
	add r0, r0, #0x1a00
	ldrh r0, [r0, #0x48]
	add r1, r5, #6
	strh r0, [r5, #4]
	ldr r0, [r7]
	add r0, r0, #0x348
	add r0, r0, #0x1000
	mla r0, r6, r2, r0
	bl MI_CpuCopy8
	mov r0, r4
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_020C27F8: .word ov15_020E8F00
	arm_func_end FUN_ov15_020c2760

	arm_func_start FUN_ov15_020c27fc
FUN_ov15_020c27fc: ; 0x020C27FC
	stmfd sp!, {r4, r5, r6, r7, r8, lr}
	ldr r1, _020C28A0 ; =0x020E8F00
	mov r5, r0
	ldr r1, [r1]
	add r1, r1, #0x1000
	ldr r1, [r1, #0xa90]
	cmp r1, #2
	mvnne r0, #0
	ldmnefd sp!, {r4, r5, r6, r7, r8, pc}
	mov r6, #0
	mov r1, r6
	mov r2, #0x780
	bl MI_CpuFill8
	mov r4, r6
	mov r0, #0x78
_020C2838:
	mul r1, r6, r0
	add r6, r6, #1
	str r4, [r5, r1]
	cmp r6, #0x10
	blt _020C2838
	ldr r8, _020C28A0 ; =0x020E8F00
	ldr r0, [r8]
	add r0, r0, #0x1000
	ldr r0, [r0, #0xa88]
	cmp r0, #0
	ble _020C2898
	mov r6, #0x78
	mvn r7, #0
_020C286C:
	mla r1, r4, r6, r5
	mov r0, r4
	bl FUN_ov15_020c2760
	cmp r0, r7
	beq _020C2898
	ldr r0, [r8]
	add r4, r4, #1
	add r0, r0, #0x1000
	ldr r0, [r0, #0xa88]
	cmp r4, r0
	blt _020C286C
_020C2898:
	mov r0, #0
	ldmfd sp!, {r4, r5, r6, r7, r8, pc}
_020C28A0: .word ov15_020E8F00
	arm_func_end FUN_ov15_020c27fc

	arm_func_start FUN_ov15_020c28a4
FUN_ov15_020c28a4: ; 0x020C28A4
	stmfd sp!, {r4, r5, r6, r7, r8, lr}
	mov r7, r0
	mov r0, #0x10
	mvn r5, #0
	bl FUN_ov15_020c3e60
	mov r4, #1
	mov r6, r0
	mov r0, r4
	bl FUN_ov15_020c3e60
	ldrb r1, [r0, #0xb]
	bic r1, r1, #0xf
	orr r1, r1, #1
	strb r1, [r0, #0xb]
	bl FUN_ov15_020c3f08
	cmp r0, #3
	beq _020C28F8
	cmp r0, #4
	beq _020C294C
	cmp r0, #5
	beq _020C2998
	ldmfd sp!, {r4, r5, r6, r7, r8, pc}
_020C28F8:
	ldrh r1, [r7, #0xa]
	ldrb r4, [r6, #0xd11]
	cmp r1, #0
	ldrneb r0, [r7, #0xc]
	cmpne r0, #0
	bne _020C291C
	ldrh r0, [r7, #0x36]
	bl FUN_ov15_020c56cc
	b _020C29DC
_020C291C:
	cmp r1, #1
	cmpeq r0, #0x20
	bne _020C2948
	ldrh r0, [r7, #0x36]
	bl FUN_ov15_020c56cc
_020C2930:
	ldrb r1, [r6, #0xd10]
	mov r0, r7
	add r2, r6, #0x300
	bl FUN_ov15_020c2aa8
	mov r5, r0
	b _020C29DC
_020C2948:
	b _020C2930
_020C294C:
	ldrb r2, [r6, #0xd0f]
	mov r1, #0xc0
	mov r0, r7
	mla r1, r2, r1, r6
	add r1, r1, #0x400
	ldrh r2, [r1, #0xa6]
	mov r1, r6
	sub r2, r2, #1
	and r4, r2, #0xff
	bl FUN_ov15_020c2b24
	movs r5, r0
	bmi _020C29DC
	ldrb r1, [r6, #0xd0f]
	add r0, r6, #0x47
	add r2, r0, #0x400
	ldrb r0, [r2, r1, lsl #2]
	orr r0, r0, #0x80
	strb r0, [r2, r1, lsl #2]
	b _020C29DC
_020C2998:
	ldrb r0, [r6, #0xd0f]
	add r1, r6, #0x300
	mov r8, #0x24
	mla r2, r0, r8, r1
	mov r1, r4
	mov r0, r7
	ldrb r4, [r6, #0xd11]
	bl FUN_ov15_020c2aa8
	movs r5, r0
	bmi _020C29DC
	ldrb r0, [r6, #0xd0f]
	add r2, r6, #0x300
	mul r1, r0, r8
	ldrb r0, [r2, r1]
	bic r0, r0, #0xf
	orr r0, r0, #1
	strb r0, [r2, r1]
_020C29DC:
	cmp r5, #0
	ldmltfd sp!, {r4, r5, r6, r7, r8, pc}
	mov r0, r5
	mov r1, r7
	mov r2, r4
	mov r3, r6
	bl FUN_ov15_020c2bb4
	mov r1, r6
	bl FUN_ov15_020c2e1c
	ldmfd sp!, {r4, r5, r6, r7, r8, pc}
	arm_func_end FUN_ov15_020c28a4

	arm_func_start FUN_ov15_020c2a04
FUN_ov15_020c2a04: ; 0x020C2A04
	stmfd sp!, {r3, r4, r5, lr}
	mov r5, r0
	mov r0, #0x10
	bl FUN_ov15_020c3e60
	mov r4, r0
	ldrb r0, [r4, #0xd0c]
	mov r0, r0, lsl #0x1c
	movs r0, r0, lsr #0x1c
	beq _020C2A30
	cmp r0, #4
	bne _020C2A58
_020C2A30:
	ldrh r0, [r5, #0x2c]
	mov r0, r0, asr #4
	and r0, r0, #1
	cmp r0, #1
	bne _020C2A58
	add r0, r5, #0xc
	bl FUN_ov15_020c6174
	cmp r0, #1
	moveq r0, #6
	ldmeqfd sp!, {r3, r4, r5, pc}
_020C2A58:
	ldrb r0, [r4, #0xd0c]
	mov r0, r0, lsl #0x1c
	movs r0, r0, lsr #0x1c
	beq _020C2A70
	cmp r0, #5
	bne _020C2A98
_020C2A70:
	ldrh r0, [r5, #0x2c]
	mov r0, r0, asr #4
	and r0, r0, #1
	cmp r0, #1
	bne _020C2A98
	add r0, r5, #0xc
	bl FUN_ov15_020c60bc
	cmp r0, #1
	moveq r0, #7
	ldmeqfd sp!, {r3, r4, r5, pc}
_020C2A98:
	mvn r0, #0
	ldmfd sp!, {r3, r4, r5, pc}
	arm_func_end FUN_ov15_020c2a04

	arm_func_start FUN_ov15_020c2aa0
FUN_ov15_020c2aa0: ; 0x020C2AA0
	mov r0, #0
	bx lr
	arm_func_end FUN_ov15_020c2aa0

	arm_func_start FUN_ov15_020c2aa8
FUN_ov15_020c2aa8: ; 0x020C2AA8
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, lr}
	mov r6, r0
	ldrh r3, [r6, #0xa]
	mov r5, r1
	mov r4, r2
	cmp r3, #0x20
	bne _020C2AD0
	bl FUN_ov15_020c2a04
	cmp r0, #0
	ldmgtfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
_020C2AD0:
	cmp r5, #0
	mov r8, #0
	ble _020C2B1C
	ldrh r9, [r6, #0xa]
	and r7, r9, #0xff
_020C2AE4:
	ldrb r0, [r4, #3]
	cmp r7, r0
	bne _020C2B0C
	mov r2, r9
	add r0, r6, #0xc
	add r1, r4, #4
	bl FUN_020240f4
	cmp r0, #0
	ldreqb r0, [r4, #1]
	ldmeqfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
_020C2B0C:
	add r8, r8, #1
	cmp r8, r5
	add r4, r4, #0x24
	blt _020C2AE4
_020C2B1C:
	mvn r0, #0
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
	arm_func_end FUN_ov15_020c2aa8

	arm_func_start FUN_ov15_020c2b24
FUN_ov15_020c2b24: ; 0x020C2B24
	stmfd sp!, {r4, r5, r6, r7, r8, r9, r10, lr}
	mov r9, r0
	ldrh r2, [r9, #0xa]
	mov r8, r1
	cmp r2, #0x20
	bne _020C2B48
	bl FUN_ov15_020c2a04
	cmp r0, #0
	ldmgtfd sp!, {r4, r5, r6, r7, r8, r9, r10, pc}
_020C2B48:
	ldrb r7, [r8, #0xd12]
	mov r5, #0
	cmp r7, #0
	ble _020C2BAC
	ldrh r6, [r9, #0xa]
	add r0, r8, #0x7c
	add r4, r0, #0x400
	mov r10, #0xc0
_020C2B68:
	mul r1, r5, r10
	add r0, r8, r1
	add r0, r0, #0x400
	ldrh r0, [r0, #0x7a]
	cmp r6, r0
	bne _020C2BA0
	mov r2, r6
	add r0, r9, #0xc
	add r1, r4, r1
	bl FUN_020240f4
	cmp r0, #0
	addeq r0, r8, r5, lsl #2
	ldreqb r0, [r0, #0x445]
	ldmeqfd sp!, {r4, r5, r6, r7, r8, r9, r10, pc}
_020C2BA0:
	add r5, r5, #1
	cmp r5, r7
	blt _020C2B68
_020C2BAC:
	mvn r0, #0
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, pc}
	arm_func_end FUN_ov15_020c2b24

	arm_func_start FUN_ov15_020c2bb4
FUN_ov15_020c2bb4: ; 0x020C2BB4
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, lr}
	sub sp, sp, #0x18
	ldrb r4, [r3, #0xd12]
	str r0, [sp]
	mvn r0, #0
	str r3, [sp, #8]
	mov r5, r1
	str r2, [sp, #4]
	cmp r4, #0
	mov r6, #1
	str r0, [sp, #0xc]
	mov r7, #0
	ble _020C2CD8
	mov r0, r3
	add r1, r0, #0x7c
	add r2, r0, #0x74
	add r0, r1, #0x400
	str r0, [sp, #0x14]
	add r0, r2, #0x400
	ldrb r11, [r5, #4]
	str r0, [sp, #0x10]
_020C2C08:
	mov r0, #0xc0
	mul r9, r7, r0
	ldr r0, [sp, #0x10]
	mov r2, #0
	add r10, r0, r9
	ldrb r0, [r0, r9]
	mov r8, r2
	mov r3, r2
	cmp r11, r0
	ldreqb r1, [r5, #5]
	ldreqb r0, [r10, #1]
	mov r12, r2
	mov lr, r2
	cmpeq r1, r0
	moveq r8, r6
	cmp r8, #0
	beq _020C2C5C
	ldrb r1, [r5, #6]
	ldrb r0, [r10, #2]
	cmp r1, r0
	moveq lr, r6
_020C2C5C:
	cmp lr, #0
	beq _020C2C74
	ldrb r1, [r5, #7]
	ldrb r0, [r10, #3]
	cmp r1, r0
	moveq r12, r6
_020C2C74:
	cmp r12, #0
	beq _020C2C8C
	ldrb r1, [r5, #8]
	ldrb r0, [r10, #4]
	cmp r1, r0
	moveq r3, r6
_020C2C8C:
	cmp r3, #0
	beq _020C2CA4
	ldrb r0, [r10, #5]
	ldrb r1, [r5, #9]
	cmp r1, r0
	moveq r2, r6
_020C2CA4:
	cmp r2, #0
	beq _020C2CCC
	ldr r0, [sp, #0x14]
	ldrh r2, [r5, #0xa]
	add r1, r0, r9
	add r0, r5, #0xc
	bl FUN_020240f4
	cmp r0, #0
	streq r7, [sp, #0xc]
	beq _020C2CD8
_020C2CCC:
	add r7, r7, #1
	cmp r7, r4
	blt _020C2C08
_020C2CD8:
	ldr r0, [sp, #0xc]
	mov r1, r5
	cmn r0, #1
	bne _020C2D20
	ldr r0, [sp]
	ldr r2, [sp, #4]
	ldr r3, [sp, #8]
	and r0, r0, #0xff
	bl FUN_ov15_020c2d38
	ldr r0, [sp, #8]
	ldrb r0, [r0, #0xd12]
	cmp r0, #0xa
	addlo r1, r0, #1
	ldrlo r0, [sp, #8]
	strlob r1, [r0, #0xd12]
	mov r0, #0xa
	str r0, [sp, #0xc]
	b _020C2D2C
_020C2D20:
	ldr r2, [sp, #4]
	ldr r3, [sp, #8]
	bl FUN_ov15_020c2d98
_020C2D2C:
	ldr r0, [sp, #0xc]
	add sp, sp, #0x18
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
	arm_func_end FUN_ov15_020c2bb4

	arm_func_start FUN_ov15_020c2d38
FUN_ov15_020c2d38: ; 0x020C2D38
	stmfd sp!, {r4, lr}
	ldrb lr, [r3, #0xd0c]
	add r12, r3, #0x6c
	strb r0, [r12, #0x401]
	mov r0, lr, lsl #0x1a
	mov r0, r0, lsr #0x1f
	cmp r0, #1
	ldrh r4, [r1, #2]
	bne _020C2D70
	mov r0, r4, asr #2
	tst r4, #2
	andne r4, r0, #0xff
	addeq r0, r0, #0x19
	andeq r4, r0, #0xff
_020C2D70:
	ldrb lr, [r12, #0x403]
	mov r0, r1
	and r1, r2, #0x7f
	bic r2, lr, #0x7f
	orr r2, r2, r1
	add r1, r3, #0xbf0
	strb r4, [r12, #0x402]
	strb r2, [r12, #0x403]
	bl FUN_ov15_020dd714
	ldmfd sp!, {r4, pc}
	arm_func_end FUN_ov15_020c2d38

	arm_func_start FUN_ov15_020c2d98
FUN_ov15_020c2d98: ; 0x020C2D98
	stmfd sp!, {r4, lr}
	ldrb r4, [r3, #0xd0c]
	mov r12, #0xc0
	mul r12, r0, r12
	add lr, r3, #0x44
	mov r4, r4, lsl #0x1a
	add lr, lr, #0x400
	mov r4, r4, lsr #0x1f
	cmp r4, #1
	add r0, lr, r0, lsl #2
	add r3, r3, #0x470
	ldrh r4, [r1, #2]
	bne _020C2DE0
	tst r4, #2
	mov r4, r4, asr #2
	andne r4, r4, #0xff
	addeq r4, r4, #0x19
	andeq r4, r4, #0xff
_020C2DE0:
	ldrb lr, [r0, #2]
	and r4, r4, #0xff
	cmp r4, lr
	bls _020C2E08
	strb r4, [r0, #2]
	ldrb lr, [r0, #3]
	and r2, r2, #0x7f
	bic lr, lr, #0x7f
	orr r2, lr, r2
	strb r2, [r0, #3]
_020C2E08:
	mov r0, r1
	add r1, r3, r12
	mov r2, #0xc0
	bl MIi_CpuCopy32
	ldmfd sp!, {r4, pc}
	arm_func_end FUN_ov15_020c2d98

	arm_func_start FUN_ov15_020c2e1c
FUN_ov15_020c2e1c: ; 0x020C2E1C
	stmfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, lr}
	sub sp, sp, #0xc4
	mov r11, r1
	mov r10, r0
	add r0, r11, #0x44
	add r6, r0, #0x400
	add r7, r11, #0x470
	subs r9, r10, #1
	mov r5, #1
	mov r4, #0xc0
	bmi _020C2FDC
_020C2E48:
	ldrb r0, [r11, #0xd0c]
	mov r8, #0
	mov r0, r0, lsl #0x18
	mov r0, r0, lsr #0x1f
	cmp r0, #1
	bne _020C2E94
	mla r0, r10, r4, r7
	bl FUN_ov15_020c2aa0
	cmp r0, #1
	bne _020C2E94
	add r0, r6, r10, lsl #2
	ldrb r1, [r0, #2]
	add r0, r6, r9, lsl #2
	ldrb r0, [r0, #2]
	cmp r1, r0
	bhs _020C2E8C
	b _020C2F2C
_020C2E8C:
	mov r8, r5
	b _020C2F58
_020C2E94:
	add r1, r6, r10, lsl #2
	ldrb r0, [r1, #1]
	cmp r0, #7
	blo _020C2F00
	cmp r0, #0xa
	bhi _020C2F00
	ldrb r0, [r1, #2]
	add r1, r6, r9, lsl #2
	ldrb r3, [r1, #2]
	cmp r0, r3
	blo _020C2F58
	ldrb r2, [r1, #1]
	cmp r2, #7
	blo _020C2ED4
	cmp r2, #0xa
	bls _020C2EFC
_020C2ED4:
	add r0, r6, r9, lsl #2
	ldrb r0, [r0, #3]
	ldrb r12, [r6, r9, lsl #2]
	mov r1, r0, lsl #0x18
	add r2, r12, r2
	add r2, r3, r2
	mov r0, r0, lsl #0x19
	add r0, r2, r0, lsr #25
	adds r0, r0, r1, lsr #31
	bne _020C2F58
_020C2EFC:
	b _020C2E8C
_020C2F00:
	add r0, r6, r10, lsl #2
	ldrb r2, [r0, #2]
	add r1, r6, r9, lsl #2
	ldrb r0, [r1, #2]
	cmp r2, r0
	blo _020C2F44
	ldrb r0, [r11, #0xd0c]
	mov r0, r0, lsl #0x18
	mov r0, r0, lsr #0x1f
	cmp r0, #1
	bne _020C2F40
_020C2F2C:
	mla r0, r9, r4, r7
	bl FUN_ov15_020c2aa0
	cmp r0, #0
	moveq r8, r5
	b _020C2F58
_020C2F40:
	b _020C2E8C
_020C2F44:
	ldrb r0, [r1, #1]
	cmp r0, #7
	blo _020C2F58
	cmp r0, #0xa
	movls r8, r5
_020C2F58:
	cmp r8, #1
	bne _020C2FD4
	add r8, r6, r9, lsl #2
	mov r0, r8
	add r1, sp, #0
	mov r2, #4
	bl MIi_CpuCopy32
	mov r1, r8
	add r8, r6, r10, lsl #2
	mov r0, r8
	mov r2, #4
	bl MIi_CpuCopy32
	mov r1, r8
	add r0, sp, #0
	mov r2, #4
	bl MIi_CpuCopy32
	mul r8, r9, r4
	add r0, r7, r8
	add r1, sp, #4
	mov r2, r4
	bl MIi_CpuCopy32
	add r1, r7, r8
	mul r8, r10, r4
	add r0, r7, r8
	mov r2, r4
	bl MIi_CpuCopy32
	add r1, r7, r8
	add r0, sp, #4
	mov r2, r4
	bl MIi_CpuCopy32
	mov r10, r9
_020C2FD4:
	subs r9, r9, #1
	bpl _020C2E48
_020C2FDC:
	mov r4, #0
	mov r0, r4
	add r1, r6, #0x28
	mov r2, #4
	bl MIi_CpuClear32
	mov r0, r4
	add r1, r7, #0x780
	mov r2, #0xc0
	bl MIi_CpuClear32
	add sp, sp, #0xc4
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
	arm_func_end FUN_ov15_020c2e1c

	arm_func_start FUN_ov15_020c3008
FUN_ov15_020c3008: ; 0x020C3008
	stmfd sp!, {r4, lr}
	mov r4, r0
	mov r0, #0x10
	bl FUN_ov15_020c3e60
	ldrsh r1, [r4]
	cmp r1, #5
	bne _020C3080
	ldrsh r1, [r4, #2]
	cmp r1, #0
	ldmeqfd sp!, {r4, pc}
	ldr r1, [r4, #8]
	cmp r1, #0xd
	beq _020C3050
	cmp r1, #0xf
	beq _020C305C
	cmp r1, #0x11
	beq _020C3068
	b _020C3074
_020C3050:
	mov r1, #1
	strb r1, [r0, #0xd14]
	ldmfd sp!, {r4, pc}
_020C305C:
	mov r1, #2
	strb r1, [r0, #0xd14]
	ldmfd sp!, {r4, pc}
_020C3068:
	mov r1, #3
	strb r1, [r0, #0xd14]
	ldmfd sp!, {r4, pc}
_020C3074:
	mov r1, #4
	strb r1, [r0, #0xd14]
	ldmfd sp!, {r4, pc}
_020C3080:
	cmp r1, #7
	ldmnefd sp!, {r4, pc}
	ldr r0, [r4, #4]
	bl FUN_ov15_020c28a4
	ldmfd sp!, {r4, pc}
	arm_func_end FUN_ov15_020c3008

	arm_func_start FUN_ov15_020c3094
FUN_ov15_020c3094: ; 0x020C3094
	stmfd sp!, {r4, lr}
	mov r4, r0
	ldrb r0, [r4]
	cmp r0, #0xa
	bhi _020C30D8
	bl FUN_ov15_020c3114
	cmp r0, #1
	moveq r0, #0
	streqb r0, [r4]
	moveq r0, #1
	ldmeqfd sp!, {r4, pc}
	cmn r0, #1
	bne _020C310C
	mov r0, #0x12
	strb r0, [r4]
	mov r0, #1
	ldmfd sp!, {r4, pc}
_020C30D8:
	cmp r0, #0xe
	bne _020C30F4
	bl FUN_ov15_020c94a4
	bl FUN_ov15_020c93d4
	mov r0, #0xc
	strb r0, [r4]
	b _020C310C
_020C30F4:
	cmp r0, #0x12
	bhs _020C310C
	bl FUN_ov15_020c31a8
	cmp r0, #1
	moveq r0, #0xa
	streqb r0, [r4]
_020C310C:
	mov r0, #0
	ldmfd sp!, {r4, pc}
	arm_func_end FUN_ov15_020c3094

	arm_func_start FUN_ov15_020c3114
FUN_ov15_020c3114: ; 0x020C3114
	stmfd sp!, {r4, lr}
	bl FUN_ov15_020dcdd4
	cmp r0, #0xc
	addls pc, pc, r0, lsl #2
	b _020C31A0
_020C3128: ; jump table
	b _020C315C ; case 0
	b _020C3164 ; case 1
	b _020C31A0 ; case 2
	b _020C316C ; case 3
	b _020C31A0 ; case 4
	b _020C31A0 ; case 5
	b _020C3174 ; case 6
	b _020C31A0 ; case 7
	b _020C31A0 ; case 8
	b _020C317C ; case 9
	b _020C31A0 ; case 10
	b _020C318C ; case 11
	b _020C3184 ; case 12
_020C315C:
	mov r0, #1
	ldmfd sp!, {r4, pc}
_020C3164:
	bl FUN_ov15_020dc720
	b _020C31A0
_020C316C:
	bl FUN_ov15_020dc87c
	b _020C31A0
_020C3174:
	bl FUN_ov15_020dc9a4
	b _020C31A0
_020C317C:
	bl FUN_ov15_020dcbf4
	b _020C31A0
_020C3184:
	bl FUN_ov15_020dccb8
	b _020C31A0
_020C318C:
	mov r4, #0
	mov r0, r4
	bl FUN_ov15_020c3f28
	sub r0, r4, #1
	ldmfd sp!, {r4, pc}
_020C31A0:
	mov r0, #0
	ldmfd sp!, {r4, pc}
	arm_func_end FUN_ov15_020c3114

	arm_func_start FUN_ov15_020c31a8
FUN_ov15_020c31a8: ; 0x020C31A8
	stmfd sp!, {r3, lr}
	ldr r0, _020C31E8 ; =0x020E59F8
	ldr r0, [r0]
	cmp r0, #0
	moveq r0, #1
	ldmeqfd sp!, {r3, pc}
	bl FUN_ov15_020d6744
	cmp r0, #0
	movne r0, #0
	ldmnefd sp!, {r3, pc}
	bl FUN_ov15_020d7388
	cmp r0, #0
	cmnne r0, #0x27
	moveq r0, #1
	movne r0, #0
	ldmfd sp!, {r3, pc}
_020C31E8: .word ov15_020E59F8
	arm_func_end FUN_ov15_020c31a8

	arm_func_start FUN_ov15_020c31ec
FUN_ov15_020c31ec: ; 0x020C31EC
	stmfd sp!, {r4, lr}
	bl FUN_ov15_020c3f08
	mov r4, r0
	mov r0, #0x10
	bl FUN_ov15_020c3e60
	cmp r4, #7
	beq _020C3214
	cmp r4, #8
	beq _020C321C
	b _020C3224
_020C3214:
	bl FUN_ov15_020c322c
	b _020C3220
_020C321C:
	bl FUN_ov15_020c3324
_020C3220:
	mov r4, r0
_020C3224:
	mov r0, r4
	ldmfd sp!, {r4, pc}
	arm_func_end FUN_ov15_020c31ec

	arm_func_start FUN_ov15_020c322c
FUN_ov15_020c322c: ; 0x020C322C
	stmfd sp!, {r3, r4, r5, lr}
	mov r5, r0
	ldrb r2, [r5, #0xd13]
	add r3, r5, #0x470
	mov r1, #0xc0
	mla r4, r2, r1, r3
	bl FUN_ov15_020c347c
	add r1, r5, #0xb8
	strb r0, [r5, #0xd0d]
	add r0, r1, #0xc00
	mov r1, #0
	mov r2, #0x52
	bl MI_CpuFill8
	add r2, r5, #0xb8
	ldrb r1, [r5, #0xd0d]
	mov r0, r5
	add r2, r2, #0xc00
	bl FUN_ov15_020c3644
	cmp r0, #0
	ldrb r0, [r5, #0xd0b]
	bic r0, r0, #0xc
	beq _020C32E0
	orr r0, r0, #4
	strb r0, [r5, #0xd0b]
	ldrh r0, [r4, #0x2c]
	mov r0, r0, asr #4
	tst r0, #1
	bne _020C32B4
	ldrb r1, [r5, #0xd13]
	mov r2, #3
	mov r0, #9
	add r1, r5, r1, lsl #2
	strb r2, [r1, #0x444]
	ldmfd sp!, {r3, r4, r5, pc}
_020C32B4:
	ldrb r0, [r5, #0xd0d]
	cmp r0, #6
	ldreqb r0, [r4, #0x15]
	cmpeq r0, #0
	bne _020C3310
	ldrb r1, [r5, #0xd13]
	mov r2, #3
	mov r0, #9
	add r1, r5, r1, lsl #2
	strb r2, [r1, #0x444]
	ldmfd sp!, {r3, r4, r5, pc}
_020C32E0:
	strb r0, [r5, #0xd0b]
	ldrh r0, [r4, #0x2c]
	mov r0, r0, asr #4
	and r0, r0, #1
	cmp r0, #1
	bne _020C3310
	ldrb r1, [r5, #0xd13]
	mov r2, #3
	mov r0, #9
	add r1, r5, r1, lsl #2
	strb r2, [r1, #0x444]
	ldmfd sp!, {r3, r4, r5, pc}
_020C3310:
	mov r0, #0
	strb r0, [r5, #0xd15]
	strb r0, [r5, #0xd14]
	mov r0, #8
	ldmfd sp!, {r3, r4, r5, pc}
	arm_func_end FUN_ov15_020c322c

	arm_func_start FUN_ov15_020c3324
FUN_ov15_020c3324: ; 0x020C3324
	stmfd sp!, {r4, r5, r6, r7, r8, lr}
	mov r8, r0
	mov r4, #0
	bl FUN_ov15_020dcdd4
	ldrb r2, [r8, #0xd13]
	mov r1, #0xc0
	cmp r0, #3
	add r6, r8, #0x470
	smulbb r5, r2, r1
	bne _020C3428
	mov r0, r8
	bl FUN_ov15_020c360c
	ldrb r1, [r8, #0xd15]
	mov r7, r0
	add r0, r1, #1
	and r1, r0, #0xff
	strb r0, [r8, #0xd15]
	cmp r1, #3
	bls _020C338C
	ldrb r0, [r8, #0xd13]
	strb r4, [r8, #0xd15]
	mov r1, #1
	add r0, r8, r0, lsl #2
	strb r1, [r0, #0x444]
	mov r0, #9
	ldmfd sp!, {r4, r5, r6, r7, r8, pc}
_020C338C:
	cmp r1, #1
	beq _020C3404
	ldrb r0, [r8, #0xd14]
	cmp r0, #1
	ldreqb r0, [r8, #0xd0b]
	biceq r0, r0, #0xc
	streqb r0, [r8, #0xd0b]
	beq _020C3404
	cmp r0, #2
	bne _020C33D0
	ldrb r0, [r8, #0xd13]
	strb r4, [r8, #0xd15]
	mov r1, #3
	add r0, r8, r0, lsl #2
	strb r1, [r0, #0x444]
	mov r0, #9
	ldmfd sp!, {r4, r5, r6, r7, r8, pc}
_020C33D0:
	cmp r0, #3
	bne _020C33F4
	ldrb r0, [r8, #0xd13]
	strb r4, [r8, #0xd15]
	mov r1, #4
	add r0, r8, r0, lsl #2
	strb r1, [r0, #0x444]
	mov r0, #9
	ldmfd sp!, {r4, r5, r6, r7, r8, pc}
_020C33F4:
	cmp r1, #3
	ldreqb r0, [r8, #0xd0b]
	biceq r0, r0, #0xc
	streqb r0, [r8, #0xd0b]
_020C3404:
	mov r0, r8
	bl FUN_ov15_020c3628
	mov r2, r0
	add r1, r8, #0xb8
	add r0, r6, r5
	add r1, r1, #0xc00
	orr r2, r7, r2
	bl FUN_ov15_020dca44
	b _020C3474
_020C3428:
	cmp r0, #9
	bne _020C3448
	strb r4, [r8, #0xd15]
	bl FUN_02003410
	str r0, [r8, #0xcb0]
	str r1, [r8, #0xcb4]
	mov r0, #0xa
	ldmfd sp!, {r4, r5, r6, r7, r8, pc}
_020C3448:
	cmp r0, #0xb
	bne _020C3460
	mov r0, r4
	bl FUN_ov15_020c3f28
	mov r0, #0x11
	ldmfd sp!, {r4, r5, r6, r7, r8, pc}
_020C3460:
	ble _020C3474
	mov r0, #4
	bl FUN_ov15_020c3f28
	mov r0, #0x11
	ldmfd sp!, {r4, r5, r6, r7, r8, pc}
_020C3474:
	mov r0, #8
	ldmfd sp!, {r4, r5, r6, r7, r8, pc}
	arm_func_end FUN_ov15_020c3324

	arm_func_start FUN_ov15_020c347c
FUN_ov15_020c347c: ; 0x020C347C
	stmfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, lr}
	sub sp, sp, #0xc
	mov r10, r0
	ldrb r1, [r10, #0xd13]
	mov r9, #0
	add r2, r10, #0x470
	mov r0, #0xc0
	str r9, [sp, #4]
	mla r5, r1, r0, r2
	bl FUN_ov15_020c4d18
	ldrb r1, [r10, #0xd0c]
	mov r8, r0
	mov r0, r1, lsl #0x19
	movs r0, r0, lsr #0x1f
	bne _020C3598
	ldrh r0, [r5, #0xa]
	cmp r0, #0x20
	bne _020C34E0
	mov r0, r5
	bl FUN_ov15_020c2a04
	cmp r0, #0
	str r0, [sp, #4]
	addgt r9, r9, #1
	strle r9, [sp, #4]
	b _020C3500
_020C34E0:
	cmp r0, #8
	bne _020C3500
	mov r0, r5
	bl FUN_ov15_020c4cc4
	cmp r0, #0
	str r0, [sp, #4]
	addne r9, r9, #1
	streq r9, [sp, #4]
_020C3500:
	cmp r8, #0
	mov r6, #0
	ble _020C35FC
	add r0, r10, #0x304
	add r4, r10, #0x300
	add r11, r10, #0x10c
	str r0, [sp, #8]
_020C351C:
	mov r0, #0x24
	mul r7, r6, r0
	add r0, r10, r7
	str r0, [sp]
	ldrh r2, [r5, #0xa]
	ldrb r0, [r0, #0x303]
	cmp r2, r0
	bne _020C3588
	ldr r1, [sp, #8]
	add r0, r5, #0xc
	add r1, r1, r7
	bl FUN_020240f4
	cmp r0, #0
	bne _020C3588
	cmp r9, #0
	ldreq r0, [sp]
	ldreqb r0, [r0, #0x301]
	streq r0, [sp, #4]
	beq _020C3584
	ldrb r0, [r4, r7]
	bic r0, r0, #0xf0
	orr r0, r0, #0x10
	strb r0, [r4, r7]
	ldrb r0, [r11, #0xc00]
	orr r0, r0, #0x40
	strb r0, [r11, #0xc00]
_020C3584:
	add r9, r9, #1
_020C3588:
	add r6, r6, #1
	cmp r6, r8
	blt _020C351C
	b _020C35FC
_020C3598:
	mov r5, r9
	cmp r8, #0
	ble _020C35EC
	add r3, r10, #0x300
	mov r1, #0x24
_020C35AC:
	mul r4, r9, r1
	ldrb r0, [r3, r4]
	mov r2, r0, lsl #0x18
	mov r2, r2, lsr #0x1c
	cmp r2, #1
	bne _020C35E0
	cmp r5, #0
	biceq r0, r0, #0xf0
	streqb r0, [r3, r4]
	addeq r0, r10, r4
	ldreqb r0, [r0, #0x301]
	add r5, r5, #1
	streq r0, [sp, #4]
_020C35E0:
	add r9, r9, #1
	cmp r9, r8
	blt _020C35AC
_020C35EC:
	cmp r5, #1
	ldreqb r0, [r10, #0xd0c]
	biceq r0, r0, #0x40
	streqb r0, [r10, #0xd0c]
_020C35FC:
	ldr r0, [sp, #4]
	and r0, r0, #0xff
	add sp, sp, #0xc
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
	arm_func_end FUN_ov15_020c347c

	arm_func_start FUN_ov15_020c360c
FUN_ov15_020c360c: ; 0x020C360C
	ldrb r0, [r0, #0xd0b]
	mov r0, r0, lsl #0x1e
	mov r0, r0, lsr #0x1e
	cmp r0, #1
	moveq r0, #0x30000
	movne r0, #0x20000
	bx lr
	arm_func_end FUN_ov15_020c360c

	arm_func_start FUN_ov15_020c3628
FUN_ov15_020c3628: ; 0x020C3628
	ldrb r0, [r0, #0xd0b]
	mov r0, r0, lsl #0x1c
	mov r0, r0, lsr #0x1e
	cmp r0, #1
	moveq r0, #0xc0000
	movne r0, #0x80000
	bx lr
	arm_func_end FUN_ov15_020c3628

	arm_func_start FUN_ov15_020c3644
FUN_ov15_020c3644: ; 0x020C3644
	stmfd sp!, {r4, lr}
	mov r4, r2
	cmp r1, #9
	addls pc, pc, r1, lsl #2
	b _020C3714
_020C3658: ; jump table
	b _020C3688 ; case 0
	b _020C3684 ; case 1
	b _020C3680 ; case 2
	b _020C36B4 ; case 3
	b _020C36B0 ; case 4
	b _020C36AC ; case 5
	b _020C36C8 ; case 6
	b _020C36F0 ; case 7
	b _020C3714 ; case 8
	b _020C3714 ; case 9
_020C3680:
	add r0, r0, #0x100
_020C3684:
	add r0, r0, #0x100
_020C3688:
	ldrb r2, [r0, #0xe6]
	add r0, r0, #0x80
	add r1, r4, #2
	mov r2, r2, lsl #0x1e
	mov r3, r2, lsr #0x1e
	mov r2, #0x10
_020C36A0:
	strb r3, [r4]
	bl MI_CpuCopy8
	b _020C3714
_020C36AC:
	add r0, r0, #0x100
_020C36B0:
	add r0, r0, #0x100
_020C36B4:
	mov r3, #1
	add r0, r0, #0xd1
	add r1, r4, #2
	mov r2, #5
	b _020C36A0
_020C36C8:
	mov r1, #2
	strb r1, [r4]
	ldrb r1, [r0, #0xd13]
	add r0, r0, #0x7c
	add r2, r0, #0x400
	mov r0, #0xc0
	mla r0, r1, r0, r2
	add r1, r4, #2
	bl FUN_ov15_020c6198
	b _020C3714
_020C36F0:
	mov r1, #2
	strb r1, [r4]
	ldrb r1, [r0, #0xd13]
	add r0, r0, #0x7c
	add r2, r0, #0x400
	mov r0, #0xc0
	mla r0, r1, r0, r2
	add r1, r4, #2
	bl FUN_ov15_020c60f8
_020C3714:
	ldrb r0, [r4]
	cmp r0, #0
	movne r0, #1
	moveq r0, #0
	ldmfd sp!, {r4, pc}
	arm_func_end FUN_ov15_020c3644

	arm_func_start FUN_ov15_020c3728
FUN_ov15_020c3728: ; 0x020C3728
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, lr}
	mov r10, r0
	mov r9, #1
	mov r5, #0xcc
	ldr r2, [r10]
	mov r0, r9
	mov r1, r5
	blx r2
	ldr r4, _020C38E8 ; =0x020E8F04
	mov r1, r0
	mov r8, #0
	mov r0, r8
	mov r2, r5
	str r1, [r4, #0xc]
	bl MIi_CpuClear32
	ldr r3, [r4, #0xc]
	ldr r1, [r10]
	ldr r7, _020C38EC ; =0x00000D28
	str r1, [r3]
	ldr r2, [r10, #4]
	mov r0, #0x10
	str r2, [r3, #4]
	strb r9, [r3, #9]
	strb r9, [r3, #0x16]
	mov r1, r7
	strb r9, [r3, #8]
	bl FUN_ov15_020c3c84
	mov r6, #0x2300
	str r0, [r4, #0x10]
	mov r0, #2
	mov r1, r6
	bl FUN_ov15_020c3c84
	mov r5, #0x58
	str r0, [r4]
	mov r0, #4
	mov r1, r5
	bl FUN_ov15_020c3c84
	mov r11, #0xc
	str r0, [r4, #4]
	mov r0, #8
	mov r1, r11
	bl FUN_ov15_020c3c84
	str r0, [r4, #8]
	ldr r1, [r4, #0x10]
	mov r2, r7
	mov r0, r8
	bl MIi_CpuClear32
	ldr r1, [r4]
	mov r0, r8
	mov r2, r6
	bl MIi_CpuClear32
	ldr r1, [r4, #4]
	mov r2, r5
	mov r0, r8
	bl MIi_CpuClear32
	ldr r1, [r4, #8]
	mov r2, r11
	mov r0, r8
	bl MIi_CpuClear32
	ldrb r1, [r10, #8]
	ldr r0, [r4, #0x10]
	strb r1, [r0, #0xd0a]
	ldrb r2, [r0, #0xd0b]
	ldrb r1, [r10, #9]
	bic r2, r2, #3
	and r1, r1, #3
	orr r1, r2, r1
	strb r1, [r0, #0xd0b]
	ldr r1, [r10, #0xc]
	str r1, [r0, #0xd18]
	ldrb r1, [r10, #0x10]
	strb r1, [r0, #0xd1c]
	ldr r2, [r4, #8]
	ldr r1, [r10]
	str r1, [r2]
	ldr r1, [r10, #4]
	stmib r2, {r1, r8}
	ldrb r2, [r0, #0xd0c]
	ldrb r1, [r10, #0xa]
	bic r2, r2, #0xf
	and r1, r1, #0xf
	orr r1, r2, r1
	strb r1, [r0, #0xd0c]
	and r1, r1, #0xff
	bic r2, r1, #0x10
	ldrb r1, [r10, #0xb]
	mov r1, r1, lsl #0x1c
	mov r1, r1, lsr #0x1c
	mov r1, r1, lsl #0x1f
	orr r1, r2, r1, lsr #27
	strb r1, [r0, #0xd0c]
	and r1, r1, #0xff
	bic r2, r1, #0x20
	ldrb r1, [r10, #0xb]
	mov r1, r1, lsl #0x18
	mov r1, r1, lsr #0x1c
	mov r1, r1, lsl #0x1f
	orr r1, r2, r1, lsr #26
	strb r1, [r0, #0xd0c]
	bl FUN_ov15_020ca8cc
	ldr r0, [r4]
	mov r1, r6
	bl FUN_ov15_020dc5a4
	cmp r0, #1
	beq _020C38D4
	cmp r0, #4
	ble _020C38E0
_020C38D4:
	bl FUN_ov15_020c3d38
	mov r0, #0
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_020C38E0:
	mov r0, r9
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_020C38E8: .word ov15_020E8F04
_020C38EC: .word 0x00000D28
	arm_func_end FUN_ov15_020c3728

	arm_func_start FUN_ov15_020c38f0
FUN_ov15_020c38f0: ; 0x020C38F0
	stmfd sp!, {r3, r4, r5, lr}
	bl FUN_ov15_020c3f08
	mov r5, r0
	cmp r5, #1
	bne _020C3938
	bl FUN_ov15_020c4124
	cmp r0, #0
	beq _020C392C
	bl FUN_ov15_020c412c
	cmp r0, #0
	beq _020C3924
	bl FUN_ov15_020c6668
_020C3920:
	b _020C399C
_020C3924:
	mov r0, #8
	b _020C3930
_020C392C:
	mov r0, #7
_020C3930:
	bl FUN_ov15_020c3f28
	b _020C3998
_020C3938:
	cmp r5, #7
	bhs _020C3960
	bl OS_DisableInterrupts
	mov r4, r0
	bl FUN_ov15_020c55a8
	mov r5, r0
	bl FUN_ov15_020c3ea8
	mov r0, r4
	bl OS_RestoreInterrupts
	b _020C39A0
_020C3960:
	cmp r5, #9
	bhs _020C3970
	bl FUN_ov15_020c31ec
	b _020C3920
_020C3970:
	cmp r5, #0xa
	bhs _020C3980
	bl FUN_ov15_020c54d4
	b _020C3920
_020C3980:
	cmp r5, #0x10
	bhs _020C3990
	bl FUN_ov15_020c66f0
	b _020C3920
_020C3990:
	cmp r5, #0x11
	bne _020C39A0
_020C3998:
	bl FUN_ov15_020c49e0
_020C399C:
	mov r5, r0
_020C39A0:
	mov r0, r5
	bl FUN_ov15_020c3ea8
	cmp r5, #0x10
	bne _020C39C4
	bl FUN_ov15_020c4084
	mov r4, r0
	bl FUN_ov15_020c4050
	mov r0, r4
	ldmfd sp!, {r3, r4, r5, pc}
_020C39C4:
	cmp r5, #0x12
	movne r0, #0
	ldmnefd sp!, {r3, r4, r5, pc}
	bl FUN_ov15_020c4050
	mvn r0, #0
	ldmfd sp!, {r3, r4, r5, pc}
	arm_func_end FUN_ov15_020c38f0

	arm_func_start FUN_ov15_020c39dc
FUN_ov15_020c39dc: ; 0x020C39DC
	stmfd sp!, {r3, lr}
	bl FUN_ov15_020c3f08
	cmp r0, #1
	movls r0, #0
	ldmlsfd sp!, {r3, pc}
	cmp r0, #7
	movlo r0, #1
	ldmlofd sp!, {r3, pc}
	cmp r0, #9
	moveq r0, #4
	ldmeqfd sp!, {r3, pc}
	cmp r0, #0xa
	movlo r0, #2
	ldmlofd sp!, {r3, pc}
	cmp r0, #0xb
	moveq r0, #4
	ldmeqfd sp!, {r3, pc}
	cmp r0, #0x10
	movlo r0, #3
	ldmlofd sp!, {r3, pc}
	moveq r0, #5
	ldmeqfd sp!, {r3, pc}
	cmp r0, #0x11
	moveq r0, #4
	ldmeqfd sp!, {r3, pc}
	bl FUN_ov15_020c4a04
	ldmfd sp!, {r3, pc}
	arm_func_end FUN_ov15_020c39dc

	arm_func_start FUN_ov15_020c3a48
FUN_ov15_020c3a48: ; 0x020C3A48
	stmfd sp!, {r4, lr}
	mov r4, #0xff
	bl FUN_ov15_020c3f08
	cmp r0, #0xa
	blo _020C3A6C
	cmp r0, #0x10
	ldrls r0, _020C3A74 ; =0x020E8F04
	ldrls r0, [r0, #0xc]
	ldrlsb r4, [r0, #0x17]
_020C3A6C:
	mov r0, r4
	ldmfd sp!, {r4, pc}
_020C3A74: .word ov15_020E8F04
	arm_func_end FUN_ov15_020c3a48

	arm_func_start FUN_ov15_020c3a78
FUN_ov15_020c3a78: ; 0x020C3A78
	stmfd sp!, {r3, r4, r5, lr}
	mov r5, r0
	mov r4, #0
	bl FUN_ov15_020c3f08
	cmp r0, #0xa
	blo _020C3AC4
	cmp r0, #0x10
	bhi _020C3AC4
	ldr r0, _020C3ACC ; =0x020E8F04
	ldr r2, [r0, #0xc]
	ldrb r0, [r2, #0x17]
	cmp r0, #4
	cmpne r0, #8
	bne _020C3AC4
	mov r1, r5
	add r0, r2, #0x18
	mov r2, #0xa
	bl MI_CpuCopy8
	mov r4, #1
_020C3AC4:
	mov r0, r4
	ldmfd sp!, {r3, r4, r5, pc}
_020C3ACC: .word ov15_020E8F04
	arm_func_end FUN_ov15_020c3a78

	arm_func_start FUN_ov15_020c3ad0
FUN_ov15_020c3ad0: ; 0x020C3AD0
	stmfd sp!, {r3, lr}
	mov r0, #1
	bl FUN_ov15_020c3e60
	ldrb r0, [r0, #0x23]
	ldmfd sp!, {r3, pc}
	arm_func_end FUN_ov15_020c3ad0

	arm_func_start FUN_ov15_020c3ae4
FUN_ov15_020c3ae4: ; 0x020C3AE4
	stmfd sp!, {r3, lr}
	bl FUN_ov15_020c3f08
	strb r0, [sp]
	ands r0, r0, #0xff
	cmpne r0, #0x12
	bne _020C3B08
	bl FUN_ov15_020c3d38
	mov r0, #1
	ldmfd sp!, {r3, pc}
_020C3B08:
	add r0, sp, #0
	bl FUN_ov15_020c3094
	ldrb r0, [sp]
	bl FUN_ov15_020c3ea8
	mov r0, #0
	ldmfd sp!, {r3, pc}
	arm_func_end FUN_ov15_020c3ae4

	arm_func_start FUN_ov15_020c3b20
FUN_ov15_020c3b20: ; 0x020C3B20
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	mov r7, r0
	mov r0, #1
	mov r6, r1
	mov r5, r2
	bl FUN_ov15_020c3e60
	mov r4, r0
	mov r0, #0x10
	bl FUN_ov15_020c3e60
	ldr r0, [sp, #0x18]
	mov r2, #0xa
	cmp r0, #0
	beq _020C3B60
	add r1, r4, #0x18
	bl MI_CpuCopy8
	b _020C3B6C
_020C3B60:
	add r0, r4, #0x18
	mov r1, #0
	bl MI_CpuFill8
_020C3B6C:
	ldr r3, [sp, #0x1c]
	mov r0, r7
	mov r1, r6
	mov r2, r5
	strb r3, [r4, #0x22]
	bl FUN_ov15_020c3b88
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
	arm_func_end FUN_ov15_020c3b20

	arm_func_start FUN_ov15_020c3b88
FUN_ov15_020c3b88: ; 0x020C3B88
	stmfd sp!, {r4, r5, r6, r7, r8, lr}
	mov r8, r0
	mov r0, #0x10
	mov r7, r1
	mov r6, r2
	bl FUN_ov15_020c3e60
	mov r4, r0
	ldrb r2, [r4, #0xd0c]
	mov r5, #0
	mov r1, r5
	bic r2, r2, #0xf
	orr r3, r2, #1
	mov r2, #0xf0
	strb r3, [r4, #0xd0c]
	bl MI_CpuFill8
_020C3BC4:
	ldrb r1, [r8, r5]
	cmp r1, #0
	beq _020C3BE4
	add r0, r4, r5
	add r5, r5, #1
	strb r1, [r0, #0x40]
	cmp r5, #0x20
	blt _020C3BC4
_020C3BE4:
	cmp r7, #0
	cmpne r6, #0
	ldreqb r0, [r4, #0xe6]
	biceq r0, r0, #3
	streqb r0, [r4, #0xe6]
	ldmeqfd sp!, {r4, r5, r6, r7, r8, pc}
	cmp r6, #1
	moveq r2, #5
	beq _020C3C14
	mov r2, #0xd
	cmp r6, #2
	movne r2, #0x10
_020C3C14:
	mov r0, r7
	add r1, r4, #0x80
	bl MI_CpuCopy8
	ldrb r1, [r4, #0xe6]
	and r0, r6, #0xff
	and r0, r0, #3
	bic r1, r1, #3
	orr r0, r1, r0
	strb r0, [r4, #0xe6]
	ldmfd sp!, {r4, r5, r6, r7, r8, pc}
	arm_func_end FUN_ov15_020c3b88

	arm_func_start FUN_ov15_020c3c3c
FUN_ov15_020c3c3c: ; 0x020C3C3C
	stmfd sp!, {r3, r4, r5, lr}
	mov r5, r0
	mov r0, #0x10
	mov r4, r1
	bl FUN_ov15_020c3e60
	mov r1, r0
	mov r0, r4
	add r1, r1, r5, lsl #8
	mov r2, #0xf0
	bl MIi_CpuCopy32
	ldmfd sp!, {r3, r4, r5, pc}
	arm_func_end FUN_ov15_020c3c3c

	arm_func_start FUN_ov15_020c3c68
FUN_ov15_020c3c68: ; 0x020C3C68
	stmfd sp!, {r3, lr}
	mov r0, #0x10
	bl FUN_ov15_020c3e60
	ldrb r1, [r0, #0xd0c]
	bic r1, r1, #0x80
	strb r1, [r0, #0xd0c]
	ldmfd sp!, {r3, pc}
	arm_func_end FUN_ov15_020c3c68

	arm_func_start FUN_ov15_020c3c84
FUN_ov15_020c3c84: ; 0x020C3C84
	stmfd sp!, {r4, r5, r6, lr}
	mov r4, #1
	mov r6, r0
	mov r0, r4
	mov r5, r1
	bl FUN_ov15_020c3e60
	ldrb r2, [r0, #8]
	tst r2, r6
	movne r0, #0
	ldmnefd sp!, {r4, r5, r6, pc}
	and r1, r6, #0xff
	orr r1, r2, r1
	strb r1, [r0, #8]
	ldr r2, [r0]
	mov r0, r4
	mov r1, r5
	blx r2
	ldmfd sp!, {r4, r5, r6, pc}
	arm_func_end FUN_ov15_020c3c84

	arm_func_start FUN_ov15_020c3ccc
FUN_ov15_020c3ccc: ; 0x020C3CCC
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	mov r4, #1
	mov r7, r0
	mov r0, r4
	mov r6, r1
	mov r5, r2
	bl FUN_ov15_020c3e60
	cmp r0, #0
	ldmeqfd sp!, {r3, r4, r5, r6, r7, pc}
	ldrb r2, [r0, #8]
	tst r2, r7
	ldmeqfd sp!, {r3, r4, r5, r6, r7, pc}
	mvn r1, r7
	and r1, r1, #0xff
	and r1, r2, r1
	strb r1, [r0, #8]
	ldr r3, [r0, #4]
	mov r0, r4
	mov r1, r6
	mov r2, r5
	blx r3
	cmp r7, #1
	ldreq r0, _020C3D34 ; =0x020E8F04
	moveq r1, #0
	streq r1, [r0, #0xc]
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_020C3D34: .word ov15_020E8F04
	arm_func_end FUN_ov15_020c3ccc

	arm_func_start FUN_ov15_020c3d38
FUN_ov15_020c3d38: ; 0x020C3D38
	stmfd sp!, {r3, r4, r5, lr}
	mov r5, #1
	mov r0, r5
	bl FUN_ov15_020c3e60
	movs r4, r0
	ldmeqfd sp!, {r3, r4, r5, pc}
	ldrb r0, [r4, #8]
	tst r0, #0x10
	beq _020C3D84
	mov r0, #0x10
	bl FUN_ov15_020c3e60
	ldrb r3, [r4, #8]
	mov r1, r0
	ldr r2, _020C3E58 ; =0x00000D28
	and r0, r3, #0xef
	strb r0, [r4, #8]
	ldr r3, [r4, #4]
	mov r0, r5
	blx r3
_020C3D84:
	ldrb r0, [r4, #8]
	tst r0, #8
	beq _020C3DB8
	mov r0, #8
	bl FUN_ov15_020c3e60
	ldrb r2, [r4, #8]
	mov r1, r0
	mov r0, #1
	and r2, r2, #0xf7
	strb r2, [r4, #8]
	ldr r3, [r4, #4]
	mov r2, #0xc
	blx r3
_020C3DB8:
	ldrb r0, [r4, #8]
	tst r0, #4
	beq _020C3DEC
	mov r0, #4
	bl FUN_ov15_020c3e60
	ldrb r2, [r4, #8]
	mov r1, r0
	mov r0, #1
	and r2, r2, #0xfb
	strb r2, [r4, #8]
	ldr r3, [r4, #4]
	mov r2, #0x58
	blx r3
_020C3DEC:
	ldrb r0, [r4, #8]
	tst r0, #2
	beq _020C3E20
	mov r0, #2
	bl FUN_ov15_020c3e60
	ldrb r2, [r4, #8]
	mov r1, r0
	mov r0, #1
	and r2, r2, #0xfd
	strb r2, [r4, #8]
	ldr r3, [r4, #4]
	mov r2, #0x2300
	blx r3
_020C3E20:
	ldrb r0, [r4, #8]
	tst r0, #1
	ldmeqfd sp!, {r3, r4, r5, pc}
	and r0, r0, #0xfe
	strb r0, [r4, #8]
	ldr r3, [r4, #4]
	mov r1, r4
	mov r0, #1
	mov r2, #0xcc
	blx r3
	ldr r0, _020C3E5C ; =0x020E8F04
	mov r1, #0
	str r1, [r0, #0xc]
	ldmfd sp!, {r3, r4, r5, pc}
_020C3E58: .word 0x00000D28
_020C3E5C: .word ov15_020E8F04
	arm_func_end FUN_ov15_020c3d38

	arm_func_start FUN_ov15_020c3e60
FUN_ov15_020c3e60: ; 0x020C3E60
	ldr r1, _020C3EA4 ; =0x020E8F04
	tst r0, #1
	ldrne r0, [r1, #0xc]
	bxne lr
	tst r0, #2
	ldrne r0, [r1]
	bxne lr
	tst r0, #4
	ldrne r0, [r1, #4]
	bxne lr
	tst r0, #8
	ldrne r0, [r1, #8]
	bxne lr
	tst r0, #0x10
	ldrne r0, [r1, #0x10]
	moveq r0, #0
	bx lr
_020C3EA4: .word ov15_020E8F04
	arm_func_end FUN_ov15_020c3e60

	arm_func_start FUN_ov15_020c3ea8
FUN_ov15_020c3ea8: ; 0x020C3EA8
	stmfd sp!, {r4, r5, r6, lr}
	mov r6, r0
	mov r0, #1
	bl FUN_ov15_020c3e60
	mov r5, r0
	mov r0, #0x10
	bl FUN_ov15_020c3e60
	mov r4, r0
	strb r6, [r5, #9]
	cmp r6, #0x10
	ldmhsfd sp!, {r4, r5, r6, pc}
	ldrb r0, [r5, #0x16]
	cmp r6, r0
	strhib r6, [r5, #0x16]
	cmphi r6, #7
	ldmlsfd sp!, {r4, r5, r6, pc}
	ldrb r0, [r4, #0xd0d]
	bl FUN_ov15_020c4040
	strb r0, [r5, #0x15]
	ldrb r0, [r4, #0xd13]
	add r0, r4, r0, lsl #2
	ldrb r0, [r0, #0x444]
	strb r0, [r5, #0x14]
	ldmfd sp!, {r4, r5, r6, pc}
	arm_func_end FUN_ov15_020c3ea8

	arm_func_start FUN_ov15_020c3f08
FUN_ov15_020c3f08: ; 0x020C3F08
	ldr r0, _020C3F24 ; =0x020E8F04
	ldr r0, [r0, #0xc]
	cmp r0, #0
	ldrneb r0, [r0, #9]
	moveq r0, #0
	and r0, r0, #0xff
	bx lr
_020C3F24: .word ov15_020E8F04
	arm_func_end FUN_ov15_020c3f08

	arm_func_start FUN_ov15_020c3f28
FUN_ov15_020c3f28: ; 0x020C3F28
	stmfd sp!, {r3, r4, r5, lr}
	mov r5, r0
	mov r0, #1
	bl FUN_ov15_020c3e60
	mov r4, r0
	str r5, [r4, #0xc]
	bl FUN_ov15_020c3f08
	strb r0, [r4, #0xa]
	ldmfd sp!, {r3, r4, r5, pc}
	arm_func_end FUN_ov15_020c3f28

	arm_func_start FUN_ov15_020c3f4c
FUN_ov15_020c3f4c: ; 0x020C3F4C
	ldr r0, _020C3F5C ; =0x020E8F04
	ldr r0, [r0, #0xc]
	ldr r0, [r0, #0xc]
	bx lr
_020C3F5C: .word ov15_020E8F04
	arm_func_end FUN_ov15_020c3f4c

	arm_func_start FUN_ov15_020c3f60
FUN_ov15_020c3f60: ; 0x020C3F60
	stmfd sp!, {r3, r4, r5, lr}
	ldr r1, _020C3FFC ; =0x020E8F04
	ldr r1, [r1, #0xc]
	ldrb r2, [r1, #0x22]
	cmp r2, #0
	bne _020C3F80
	bl FUN_ov15_020c4040
	mov r2, r0
_020C3F80:
	ldr r4, _020C3FFC ; =0x020E8F04
	mov r0, #0
	ldr r1, [r4, #0xc]
	strb r2, [r1, #0x17]
	bl FUN_ov15_020dd988
	movs r5, r0
	beq _020C3FB4
	mov r1, #0x20
	bl DC_InvalidateRange
	ldr r1, [r4, #0xc]
	mov r0, r5
	add r1, r1, #0x18
	bl FUN_ov15_020c6124
_020C3FB4:
	ldr r0, _020C3FFC ; =0x020E8F04
	mov r1, #0
	ldr r2, [r0, #0xc]
_020C3FC0:
	add r0, r2, r1
	ldrsb r0, [r0, #0x18]
	cmp r0, #0x20
	blt _020C3FD8
	cmp r0, #0x7e
	ble _020C3FEC
_020C3FD8:
	add r0, r2, #0x18
	mov r1, #0
	mov r2, #0xa
	bl MI_CpuFill8
	ldmfd sp!, {r3, r4, r5, pc}
_020C3FEC:
	add r1, r1, #1
	cmp r1, #0xa
	blt _020C3FC0
	ldmfd sp!, {r3, r4, r5, pc}
_020C3FFC: .word ov15_020E8F04
	arm_func_end FUN_ov15_020c3f60

	arm_func_start FUN_ov15_020c4000
FUN_ov15_020c4000: ; 0x020C4000
	stmfd sp!, {r4, r5, r6, lr}
	mov r6, r0
	mov r0, #1
	bl FUN_ov15_020c3e60
	mov r5, r0
	mov r0, #0x10
	bl FUN_ov15_020c3e60
	mov r4, r0
	mov r0, r6
	bl FUN_ov15_020c4040
	add r0, r4, r0, lsl #8
	ldrb r0, [r0, #0xe6]
	mov r0, r0, lsl #0x1e
	mov r0, r0, lsr #0x1e
	strb r0, [r5, #0x23]
	ldmfd sp!, {r4, r5, r6, pc}
	arm_func_end FUN_ov15_020c4000

	arm_func_start FUN_ov15_020c4040
FUN_ov15_020c4040: ; 0x020C4040
	cmp r0, #2
	subhi r0, r0, #3
	andhi r0, r0, #0xff
	bx lr
	arm_func_end FUN_ov15_020c4040

	arm_func_start FUN_ov15_020c4050
FUN_ov15_020c4050: ; 0x020C4050
	stmfd sp!, {r3, r4, r5, lr}
	ldr r4, _020C4080 ; =0x020E8F04
	mov r5, #8
	ldr r1, [r4, #8]
	mov r0, r5
	mov r2, #0xc
	bl FUN_ov15_020c3ccc
	ldr r1, [r4, #0x10]
	add r2, r5, #0xd20
	mov r0, #0x10
	bl FUN_ov15_020c3ccc
	ldmfd sp!, {r3, r4, r5, pc}
_020C4080: .word ov15_020E8F04
	arm_func_end FUN_ov15_020c4050

	arm_func_start FUN_ov15_020c4084
FUN_ov15_020c4084: ; 0x020C4084
	stmfd sp!, {r4, r5, r6, r7, r8, r9, r10, lr}
	ldr r0, _020C4120 ; =0x020E8F04
	mov r1, #0xc0
	ldr r8, [r0, #0x10]
	ldrb r7, [r8, #0xd13]
	ldrb r2, [r8, #0xd0d]
	add r0, r8, #0x74
	smulbb r4, r7, r1
	add r5, r0, #0x400
	cmp r2, #6
	movhs r0, #1
	ldmhsfd sp!, {r4, r5, r6, r7, r8, r9, r10, pc}
	ldrb r9, [r8, #0xd12]
	mov r6, #0
	cmp r9, #0
	bls _020C4118
	mov r10, r1
_020C40C8:
	cmp r6, r7
	beq _020C4108
	add r0, r8, r6, lsl #2
	ldrb r0, [r0, #0x445]
	cmp r0, #6
	bhs _020C4108
	mul r1, r6, r10
	add r0, r8, r1
	add r0, r0, #0x400
	ldrh r2, [r0, #0x7a]
	add r0, r5, r4
	add r1, r5, r1
	bl FUN_020240f4
	cmp r0, #0
	moveq r0, #2
	ldmeqfd sp!, {r4, r5, r6, r7, r8, r9, r10, pc}
_020C4108:
	add r0, r6, #1
	and r6, r0, #0xff
	cmp r6, r9
	blo _020C40C8
_020C4118:
	mov r0, #1
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, pc}
_020C4120: .word ov15_020E8F04
	arm_func_end FUN_ov15_020c4084

	arm_func_start FUN_ov15_020c4124
FUN_ov15_020c4124: ; 0x020C4124
	mov r0, #1
	bx lr
	arm_func_end FUN_ov15_020c4124

	arm_func_start FUN_ov15_020c412c
FUN_ov15_020c412c: ; 0x020C412C
	mov r0, #1
	bx lr
	arm_func_end FUN_ov15_020c412c

	arm_func_start FUN_ov15_020c4134
FUN_ov15_020c4134: ; 0x020C4134
	stmfd sp!, {r4, r5, r6, r7, r8, lr}
	ldr r4, _020C4194 ; =0x020E8F18
	mov r8, r0
	ldr r2, [r4, #4]
	mov r7, r1
	mov r6, r3
	cmp r2, #0
	ldmnefd sp!, {r4, r5, r6, r7, r8, pc}
	mov r5, #0
	mov r1, r5
	mov r2, #0x68
	bl MI_CpuFill8
	mov r1, #1
	mov r0, r6
	strh r7, [r8, #8]
	strh r1, [r8, #0xa]
	strh r1, [r8, #4]
	strh r5, [r8, #6]
	strb r5, [r8, #0x11]
	str r5, [r8, #0x14]
	strb r5, [r8, #0x10]
	str r8, [r4, #4]
	bl FUN_ov15_020d78cc
	ldmfd sp!, {r4, r5, r6, r7, r8, pc}
_020C4194: .word ov15_020E8F18
	arm_func_end FUN_ov15_020c4134

	arm_func_start FUN_ov15_020c4198
FUN_ov15_020c4198: ; 0x020C4198
	ldr r12, _020C41AC ; =FUN_ov15_020c4134
	mov r1, #3
	mov r2, #1
	mov r3, #0x14
	bx r12
_020C41AC: .word FUN_ov15_020c4134
	arm_func_end FUN_ov15_020c4198

	arm_func_start FUN_ov15_020c41b0
FUN_ov15_020c41b0: ; 0x020C41B0
	ldr r1, _020C41C4 ; =0x020E8F18
	ldr r1, [r1, #4]
	cmp r1, #0
	cmpne r0, #0x10c0
	bx lr
_020C41C4: .word ov15_020E8F18
	arm_func_end FUN_ov15_020c41b0

	arm_func_start FUN_ov15_020c41c8
FUN_ov15_020c41c8: ; 0x020C41C8
	stmfd sp!, {r4, r5, lr}
	sub sp, sp, #0x14
	ldr r4, _020C427C ; =0x020E8F18
	ldr r0, [r4, #4]
	cmp r0, #0
	beq _020C4268
	ldrh r0, [r0, #4]
	cmp r0, #1
	addne sp, sp, #0x14
	ldmnefd sp!, {r4, r5, pc}
	add r5, sp, #0
	mov r1, #0
	mov r0, r5
	mov r2, #0x14
	bl MI_CpuFill8
	ldr r12, [r4, #4]
	ldr r3, _020C4280 ; =FUN_ov15_020cc408
	ldrh r1, [r12, #8]
	ldr r2, _020C4284 ; =FUN_ov15_020cc44c
	mov r0, r5
	strb r1, [sp, #8]
	ldrh r4, [r12, #0xa]
	mov r1, #2
	strb r4, [sp, #9]
	ldr r4, [r12, #0xc]
	str r4, [sp, #0xc]
	str r3, [sp]
	str r2, [sp, #4]
	ldrb r2, [r12, #0x10]
	strb r2, [sp, #0x10]
	strh r1, [r12, #4]
	bl FUN_ov15_020c3728
	cmp r0, #0
	addne sp, sp, #0x14
	ldmnefd sp!, {r4, r5, pc}
	ldr r1, _020C4288 ; =0xFFFF3BE9
	mov r0, #9
	bl FUN_ov15_020cc2b8
	add sp, sp, #0x14
	ldmfd sp!, {r4, r5, pc}
_020C4268:
	ldr r1, _020C4288 ; =0xFFFF3BE9
	mov r0, #9
	bl FUN_ov15_020cc2b8
	add sp, sp, #0x14
	ldmfd sp!, {r4, r5, pc}
_020C427C: .word ov15_020E8F18
_020C4280: .word FUN_ov15_020cc408
_020C4284: .word FUN_ov15_020cc44c
_020C4288: .word 0xFFFF3BE9
	arm_func_end FUN_ov15_020c41c8

	arm_func_start FUN_ov15_020c428c
FUN_ov15_020c428c: ; 0x020C428C
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	sub sp, sp, #8
	mov r7, r0
	mov r6, r1
	mov r5, r2
	mov r4, r3
	bl FUN_ov15_020c41c8
	ldr r0, _020C42F8 ; =0x020E8F18
	ldr r1, [r0, #4]
	cmp r1, #0
	movne r0, #1
	strneb r0, [r1, #0x11]
	bl FUN_ov15_020c4490
	cmp r0, #2
	addne sp, sp, #8
	ldmnefd sp!, {r3, r4, r5, r6, r7, pc}
	ldr r0, [sp, #0x20]
	ldr r12, [sp, #0x24]
	str r0, [sp]
	mov r0, r7
	mov r1, r6
	mov r2, r5
	mov r3, r4
	str r12, [sp, #4]
	bl FUN_ov15_020c3b20
	add sp, sp, #8
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_020C42F8: .word ov15_020E8F18
	arm_func_end FUN_ov15_020c428c

	arm_func_start FUN_ov15_020c42fc
FUN_ov15_020c42fc: ; 0x020C42FC
	stmfd sp!, {r4, lr}
	ldr r4, _020C434C ; =0x020E8F18
	ldr r1, [r4, #4]
	cmp r1, #0
	moveq r0, #0
	ldmeqfd sp!, {r4, pc}
	ldr r0, [r1]
	cmp r0, #0
	beq _020C4344
	mov r0, #3
	strh r0, [r1, #4]
	bl FUN_ov15_020c4490
	ldr r0, [r4, #4]
	ldrb r0, [r0, #0x11]
	cmp r0, #0
	movne r0, #1
	moveq r0, #0
	ldmfd sp!, {r4, pc}
_020C4344:
	mov r0, #0
	ldmfd sp!, {r4, pc}
_020C434C: .word ov15_020E8F18
	arm_func_end FUN_ov15_020c42fc

	arm_func_start FUN_ov15_020c4350
FUN_ov15_020c4350: ; 0x020C4350
	stmfd sp!, {r4, lr}
	sub sp, sp, #8
	ldr r4, _020C448C ; =0x020E8F18
	ldr r1, [r4, #4]
	cmp r1, #0
	addeq sp, sp, #8
	ldmeqfd sp!, {r4, pc}
	ldr r0, [r1, #0x14]
	cmp r0, #5
	addls pc, pc, r0, lsl #2
	b _020C4418
_020C437C: ; jump table
	b _020C4418 ; case 0
	b _020C4394 ; case 1
	b _020C43B0 ; case 2
	b _020C43F4 ; case 3
	b _020C4410 ; case 4
	b _020C4410 ; case 5
_020C4394:
	mov r0, #0
	str r0, [r1]
	bl FUN_ov15_020c50e0
	ldr r1, [r4, #4]
	add sp, sp, #8
	str r0, [r1, #0x14]
	ldmfd sp!, {r4, pc}
_020C43B0:
	bl FUN_ov15_020c53e8
	ldr r12, [r4, #4]
	mov r0, #8
	add r1, r12, #0x5e
	str r1, [sp]
	str r0, [sp, #4]
	ldrh r3, [r12, #0x5c]
	ldr r2, [r12, #0x58]
	add r0, r12, #0x18
	add r1, r12, #0x38
	bl FUN_ov15_020c428c
	bl FUN_ov15_020c3c68
	ldr r0, [r4, #4]
	mov r1, #0
	str r1, [r0, #0x14]
	add sp, sp, #8
	ldmfd sp!, {r4, pc}
_020C43F4:
	bl FUN_ov15_020c53e8
	ldr r0, [r4, #4]
	mvn r1, #0
	str r1, [r0]
	ldr r0, [r4, #4]
	mov r1, #1
	strb r1, [r0, #0x11]
_020C4410:
	add sp, sp, #8
	ldmfd sp!, {r4, pc}
_020C4418:
	ldrh r0, [r1, #4]
	cmp r0, #2
	bne _020C443C
	bl FUN_ov15_020c38f0
	ldr r1, _020C448C ; =0x020E8F18
	add sp, sp, #8
	ldr r1, [r1, #4]
	str r0, [r1]
	ldmfd sp!, {r4, pc}
_020C443C:
	cmp r0, #4
	addne sp, sp, #8
	ldmnefd sp!, {r4, pc}
	ldrh r0, [r1, #6]
	cmp r0, #0
	addeq sp, sp, #8
	ldmeqfd sp!, {r4, pc}
	bl FUN_ov15_020dcdd4
	cmp r0, #9
	addeq sp, sp, #8
	ldmeqfd sp!, {r4, pc}
	ldr r0, _020C448C ; =0x020E8F18
	mov r3, #0
	ldr r2, [r0, #4]
	mov r1, #6
	strh r3, [r2, #6]
	ldr r0, [r0, #4]
	strh r1, [r0, #4]
	add sp, sp, #8
	ldmfd sp!, {r4, pc}
_020C448C: .word ov15_020E8F18
	arm_func_end FUN_ov15_020c4350

	arm_func_start FUN_ov15_020c4490
FUN_ov15_020c4490: ; 0x020C4490
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, lr}
	ldr r4, _020C4684 ; =0x020E8F18
	mov r5, #1
	ldr r1, [r4, #4]
	cmp r1, #0
	moveq r0, #0
	ldmeqfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
	ldr r0, [r1, #0x14]
	cmp r0, #5
	addls pc, pc, r0, lsl #2
	b _020C4520
_020C44BC: ; jump table
	b _020C4520 ; case 0
	b _020C44D4 ; case 1
	b _020C44DC ; case 2
	b _020C44E4 ; case 3
	b _020C4510 ; case 4
	b _020C4518 ; case 5
_020C44D4:
	mov r0, #2
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_020C44DC:
	mov r0, #2
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_020C44E4:
	bl FUN_ov15_020c4350
	ldr r1, [r4]
	mov r0, #5
	bl FUN_ov15_020cc2b8
	ldr r1, [r4, #4]
	mov r0, #7
	strh r0, [r1, #4]
	ldr r1, [r4, #4]
	mov r2, #4
	str r2, [r1, #0x14]
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_020C4510:
	mov r0, #7
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_020C4518:
	mov r0, #5
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_020C4520:
	ldrh r0, [r1, #4]
	cmp r0, #1
	ldmeqfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
	bl FUN_ov15_020c39dc
	mov r6, r0
	cmp r6, #5
	bne _020C455C
	ldr r1, [r4, #4]
	mov r0, #4
	strh r0, [r1, #4]
	ldr r1, [r4, #4]
	strh r5, [r1, #6]
	ldr r1, [r4, #4]
	strb r5, [r1, #0x11]
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_020C455C:
	cmp r6, #0
	bge _020C467C
	cmn r6, #0xa
	blt _020C4590
	ldr r0, [r4, #4]
	ldr r1, _020C4688 ; =0xFFFF3BE9
	strb r5, [r0, #0x11]
	mov r0, #9
	bl FUN_ov15_020cc2b8
	ldr r1, [r4, #4]
	mov r0, #8
	strh r0, [r1, #4]
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_020C4590:
	ldr r0, _020C468C ; =0xFFFF3A59
	cmp r6, r0
	subne r0, r0, #0x64
	cmpne r6, r0
	bne _020C45C8
	ldr r0, [r4, #4]
	mov r1, r6
	strb r5, [r0, #0x11]
	mov r0, #5
	bl FUN_ov15_020cc2b8
	ldr r1, [r4, #4]
	mov r0, #7
	strh r0, [r1, #4]
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_020C45C8:
	ldr r10, [r4, #4]
	ldrb r0, [r10, #0x11]
	cmp r0, #0
	bne _020C4654
	ldrh r7, [r10, #8]
	bl FUN_ov15_020d78bc
	ldr r1, [r4, #4]
	mov r11, r0
	ldrb r8, [r1, #0x10]
	ldr r9, [r1, #0xc]
	str r6, [r4]
	bl FUN_ov15_020c4690
	mov r1, r11, lsl #0x10
	mov r3, r1, lsr #0x10
	mov r0, r10
	mov r1, r7
	mov r2, #1
	bl FUN_ov15_020c4134
	ldr r0, [r4, #4]
	cmp r9, #0
	strb r8, [r0, #0x10]
	beq _020C4628
	mov r0, r9
	bl FUN_ov15_020c41b0
_020C4628:
	ldr r0, [r4, #4]
	mov r1, r7
	add r0, r0, #0x18
	bl FUN_ov15_020c5070
	ldr r0, [r4, #4]
	mov r1, #0
	str r5, [r0, #0x14]
	ldr r0, [r4, #4]
	str r1, [r0]
	mov r0, #2
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_020C4654:
	ldr r0, [r4]
	cmp r0, r6
	movlt r6, r0
	mov r1, r6
	mov r0, #5
	bl FUN_ov15_020cc2b8
	ldr r1, [r4, #4]
	mov r0, #7
	strh r0, [r1, #4]
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_020C467C:
	mov r0, #2
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_020C4684: .word ov15_020E8F18
_020C4688: .word 0xFFFF3BE9
_020C468C: .word 0xFFFF3A59
	arm_func_end FUN_ov15_020c4490

	arm_func_start FUN_ov15_020c4690
FUN_ov15_020c4690: ; 0x020C4690
	stmfd sp!, {r4, lr}
	ldr r0, _020C4718 ; =0x020E8F18
	ldr r1, [r0, #4]
	cmp r1, #0
	ldmeqfd sp!, {r4, pc}
	ldrh r0, [r1, #4]
	cmp r0, #1
	bne _020C46E4
	ldr r0, [r1, #0x14]
	cmp r0, #1
	bne _020C46D4
	bl FUN_ov15_020c53cc
_020C46C0:
	bl FUN_ov15_020c50e0
	sub r0, r0, #2
	cmp r0, #2
	bhi _020C46C0
	bl FUN_ov15_020c53e8
_020C46D4:
	ldr r0, _020C4718 ; =0x020E8F18
	mov r1, #0
	str r1, [r0, #4]
	ldmfd sp!, {r4, pc}
_020C46E4:
	bl FUN_ov15_020c3ae4
	cmp r0, #0
	bne _020C4708
	mov r4, #0xa
_020C46F4:
	mov r0, r4
	bl OS_Sleep
	bl FUN_ov15_020c3ae4
	cmp r0, #0
	beq _020C46F4
_020C4708:
	ldr r0, _020C4718 ; =0x020E8F18
	mov r1, #0
	str r1, [r0, #4]
	ldmfd sp!, {r4, pc}
_020C4718: .word ov15_020E8F18
	arm_func_end FUN_ov15_020c4690

	arm_func_start FUN_ov15_020c471c
FUN_ov15_020c471c: ; 0x020C471C
	stmfd sp!, {r3, r4, r5, lr}
	ldr r4, _020C47CC ; =0x020E8F18
	mov r5, #0
	ldr r1, [r4, #4]
	cmp r1, #0
	moveq r0, #1
	ldmeqfd sp!, {r3, r4, r5, pc}
	ldrh r0, [r1, #4]
	cmp r0, #8
	moveq r0, #1
	ldmeqfd sp!, {r3, r4, r5, pc}
	cmp r0, #1
	bne _020C47AC
	ldr r0, [r1, #0x14]
	cmp r0, #1
	bne _020C4774
	bl FUN_ov15_020c53cc
	ldr r0, [r4, #4]
	mov r1, #5
	str r1, [r0, #0x14]
	mov r0, r5
	ldmfd sp!, {r3, r4, r5, pc}
_020C4774:
	cmp r0, #5
	bne _020C479C
	bl FUN_ov15_020c50e0
	cmp r0, #1
	moveq r0, r5
	ldmeqfd sp!, {r3, r4, r5, pc}
	sub r0, r0, #2
	cmp r0, #2
	bhi _020C479C
	bl FUN_ov15_020c53e8
_020C479C:
	ldr r0, _020C47CC ; =0x020E8F18
	str r5, [r0, #4]
	mov r0, #1
	ldmfd sp!, {r3, r4, r5, pc}
_020C47AC:
	mov r0, #5
	strh r0, [r1, #4]
	bl FUN_ov15_020c3ae4
	cmp r0, #0
	movne r0, #1
	strne r5, [r4, #4]
	moveq r0, r5
	ldmfd sp!, {r3, r4, r5, pc}
_020C47CC: .word ov15_020E8F18
	arm_func_end FUN_ov15_020c471c

	arm_func_start FUN_ov15_020c47d0
FUN_ov15_020c47d0: ; 0x020C47D0
	ldr r0, _020C47F8 ; =0x020E8F18
	ldr r0, [r0, #4]
	cmp r0, #0
	beq _020C47F0
	ldrh r0, [r0, #4]
	cmp r0, #6
	moveq r0, #1
	bxeq lr
_020C47F0:
	mov r0, #0
	bx lr
_020C47F8: .word ov15_020E8F18
	arm_func_end FUN_ov15_020c47d0

	arm_func_start FUN_ov15_020c47fc
FUN_ov15_020c47fc: ; 0x020C47FC
	ldr r12, _020C4804 ; =FUN_ov15_020ddbf4
	bx r12
_020C4804: .word FUN_ov15_020ddbf4
	arm_func_end FUN_ov15_020c47fc

	arm_func_start FUN_ov15_020c4808
FUN_ov15_020c4808: ; 0x020C4808
	stmfd sp!, {r3, r4, r5, r6, r7, r8, lr}
	sub sp, sp, #0xc
	mov r7, #0
	mov r1, r7
	mov r2, #0x40
	mov r4, r0
	bl MI_CpuFill8
	mov r0, #0xff
	str r0, [r4, #4]
	bl FUN_ov15_020c4490
	cmp r0, #4
	addne sp, sp, #0xc
	movne r0, r7
	ldmnefd sp!, {r3, r4, r5, r6, r7, r8, pc}
	bl FUN_ov15_020c3a48
	str r0, [r4]
	cmp r0, #0xff
	beq _020C4858
	cmp r0, #0x63
	ble _020C486C
_020C4858:
	mov r0, #0x63
	str r0, [r4]
	add sp, sp, #0xc
	mov r0, #0
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, pc}
_020C486C:
	bl OS_DisableInterrupts
	mov r8, r0
	bl FUN_ov15_020dd944
	mov r5, #6
	mov r6, r0
	mov r1, r5
	bl DC_InvalidateRange
	cmp r6, #0
	bne _020C48A4
	mov r0, r8
	bl OS_RestoreInterrupts
	add sp, sp, #0xc
	mov r0, r7
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, pc}
_020C48A4:
	mov r0, r6
	mov r2, r5
	add r1, r4, #0x37
	bl MI_CpuCopy8
	ldr r0, [r4]
	cmp r0, #2
	bhi _020C4900
	add r0, sp, #0
	bl FUN_ov15_020dd988
	mov r5, r0
	mov r1, #0x20
	bl DC_InvalidateRange
	cmp r5, #0
	bne _020C48F0
	mov r0, r8
	bl OS_RestoreInterrupts
	add sp, sp, #0xc
	mov r0, r7
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, pc}
_020C48F0:
	ldrh r2, [sp]
	mov r0, r5
	add r1, r4, #0x16
	bl MI_CpuCopy8
_020C4900:
	mov r0, r8
	bl OS_RestoreInterrupts
	add r0, sp, #2
	bl FUN_ov15_020c3a78
	cmp r0, #0
	beq _020C4954
	ldrb r1, [sp, #2]
	mov r0, #0
	cmp r1, #0x30
	blo _020C4930
	cmp r1, #0x39
	movls r0, #1
_020C4930:
	sub r3, r1, #0x30
	cmp r0, #0
	moveq r3, #0xff
	add r0, sp, #3
	add r1, r4, #0xc
	mov r2, #9
	str r3, [r4, #4]
	bl MI_CpuCopy8
	b _020C495C
_020C4954:
	mov r0, #0xff
	str r0, [r4, #4]
_020C495C:
	bl FUN_ov15_020c3ad0
	str r0, [r4, #8]
	mov r0, #1
	add sp, sp, #0xc
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, pc}
	arm_func_end FUN_ov15_020c4808

	arm_func_start FUN_ov15_020c4970
FUN_ov15_020c4970: ; 0x020C4970
	stmfd sp!, {r4, lr}
	bl FUN_ov15_020c4350
	bl FUN_ov15_020c47d0
	cmp r0, #0
	beq _020C49D0
	bl FUN_ov15_020c3a48
	mov r4, r0
	cmp r4, #0xff
	beq _020C499C
	cmp r4, #0x63
	bls _020C49A0
_020C499C:
	mov r4, #0x63
_020C49A0:
	bl FUN_ov15_020dcdd4
	cmp r0, #0xb
	bne _020C49B8
	ldr r1, _020C49D8 ; =0xFFFF298C
	mov r0, #9
	b _020C49C0
_020C49B8:
	ldr r1, _020C49DC ; =0xFFFF2D10
	mov r0, #8
_020C49C0:
	sub r1, r1, r4
	bl FUN_ov15_020cc2b8
	mov r0, #1
	ldmfd sp!, {r4, pc}
_020C49D0:
	mov r0, #0
	ldmfd sp!, {r4, pc}
_020C49D8: .word 0xFFFF298C
_020C49DC: .word 0xFFFF2D10
	arm_func_end FUN_ov15_020c4970

	arm_func_start FUN_ov15_020c49e0
FUN_ov15_020c49e0: ; 0x020C49E0
	stmfd sp!, {r3, lr}
	mov r0, #1
	bl FUN_ov15_020c3e60
	add r0, r0, #0xa
	bl FUN_ov15_020c3094
	cmp r0, #1
	moveq r0, #0x12
	movne r0, #0x11
	ldmfd sp!, {r3, pc}
	arm_func_end FUN_ov15_020c49e0

	arm_func_start FUN_ov15_020c4a04
FUN_ov15_020c4a04: ; 0x020C4A04
	stmfd sp!, {r4, lr}
	mov r0, #1
	bl FUN_ov15_020c3e60
	mov r4, r0
	bl FUN_ov15_020c3f4c
	cmp r0, #4
	bge _020C4A28
	bl FUN_ov15_020c4a74
	ldmfd sp!, {r4, pc}
_020C4A28:
	cmp r0, #5
	bge _020C4A38
	bl FUN_ov15_020c4ab8
	ldmfd sp!, {r4, pc}
_020C4A38:
	bne _020C4A48
	mov r0, r4
	bl FUN_ov15_020c4ac0
	ldmfd sp!, {r4, pc}
_020C4A48:
	cmp r0, #7
	ldreq r0, _020C4A6C ; =0xFFFF3A59
	ldmeqfd sp!, {r4, pc}
	cmp r0, #8
	ldreq r0, _020C4A70 ; =0xFFFF39F5
	ldmeqfd sp!, {r4, pc}
	mov r0, r4
	bl FUN_ov15_020c4ae0
	ldmfd sp!, {r4, pc}
_020C4A6C: .word 0xFFFF3A59
_020C4A70: .word 0xFFFF39F5
	arm_func_end FUN_ov15_020c4a04

	arm_func_start FUN_ov15_020c4a74
FUN_ov15_020c4a74: ; 0x020C4A74
	cmp r0, #3
	addls pc, pc, r0, lsl #2
	b _020C4AB0
_020C4A80: ; jump table
	b _020C4A98 ; case 0
	b _020C4A90 ; case 1
	b _020C4AA0 ; case 2
	b _020C4AA8 ; case 3
_020C4A90:
	mvn r0, #8
	bx lr
_020C4A98:
	mvn r0, #9
	bx lr
_020C4AA0:
	mvn r0, #7
	bx lr
_020C4AA8:
	mvn r0, #6
	bx lr
_020C4AB0:
	mov r0, #0
	bx lr
	arm_func_end FUN_ov15_020c4a74

	arm_func_start FUN_ov15_020c4ab8
FUN_ov15_020c4ab8: ; 0x020C4AB8
	mvn r0, #5
	bx lr
	arm_func_end FUN_ov15_020c4ab8

	arm_func_start FUN_ov15_020c4ac0
FUN_ov15_020c4ac0: ; 0x020C4AC0
	ldrb r0, [r0, #0xb]
	mov r0, r0, lsl #0x1c
	movs r0, r0, lsr #0x1c
	ldreq r0, _020C4AD8 ; =0xFFFF3C4D
	ldrne r0, _020C4ADC ; =0xFFFF3865
	bx lr
_020C4AD8: .word 0xFFFF3C4D
_020C4ADC: .word 0xFFFF3865
	arm_func_end FUN_ov15_020c4ac0

	arm_func_start FUN_ov15_020c4ae0
FUN_ov15_020c4ae0: ; 0x020C4AE0
	ldrb r1, [r0, #0x22]
	ldrb r2, [r0, #0x16]
	cmp r1, #0
	ldreqb r1, [r0, #0x15]
	cmp r2, #0xa
	and r1, r1, #0xff
	bhs _020C4B2C
	ldrb r0, [r0, #0x14]
	cmp r0, #3
	ldreq r0, _020C4BE8 ; =0xFFFF3864
	subeq r3, r0, r1
	beq _020C4BE0
	cmp r0, #4
	moveq r0, #0xc800
	rsbeq r0, r0, #0
	subeq r3, r0, r1
	ldrne r0, _020C4BEC ; =0xFFFF379C
	subne r3, r0, r1
	b _020C4BE0
_020C4B2C:
	cmp r2, #0xd
	ldrlo r0, _020C4BF0 ; =0xFFFF34E0
	sublo r3, r0, r1
	blo _020C4BE0
	ldr r3, [r0, #0x10]
	cmp r3, #0
	ldreq r0, _020C4BF4 ; =0xFFFF3CB0
	subeq r3, r0, r1
	beq _020C4BE0
	ldrb r0, [r0, #0xb]
	mov r0, r0, lsl #0x18
	mov r0, r0, lsr #0x1c
	cmp r0, #1
	ldreq r0, _020C4BF8 ; =0xFFFF3224
	subeq r3, r0, r1
	beq _020C4BE0
	mvn r2, #0
	cmp r3, r2
	ldreq r0, _020C4BFC ; =0xFFFF347C
	subeq r3, r0, r1
	beq _020C4BE0
	sub r0, r2, #1
	cmp r3, r0
	ldreq r0, _020C4C00 ; =0xFFFF3418
	subeq r3, r0, r1
	beq _020C4BE0
	sub r0, r2, #2
	cmp r3, r0
	ldreq r0, _020C4C04 ; =0xFFFF33B4
	subeq r3, r0, r1
	beq _020C4BE0
	sub r0, r2, #3
	cmp r3, r0
	ldreq r0, _020C4C08 ; =0xFFFF30F8
	subeq r3, r0, r1
	beq _020C4BE0
	sub r0, r2, #4
	cmp r3, r0
	ldreq r0, _020C4C0C ; =0xFFFF3094
	subeq r3, r0, r1
	beq _020C4BE0
	sub r0, r2, #5
	cmp r3, r0
	ldreq r0, _020C4C10 ; =0xFFFF3030
	subeq r3, r0, r1
_020C4BE0:
	mov r0, r3
	bx lr
_020C4BE8: .word 0xFFFF3864
_020C4BEC: .word 0xFFFF379C
_020C4BF0: .word 0xFFFF34E0
_020C4BF4: .word 0xFFFF3CB0
_020C4BF8: .word 0xFFFF3224
_020C4BFC: .word 0xFFFF347C
_020C4C00: .word 0xFFFF3418
_020C4C04: .word 0xFFFF33B4
_020C4C08: .word 0xFFFF30F8
_020C4C0C: .word 0xFFFF3094
_020C4C10: .word 0xFFFF3030
	arm_func_end FUN_ov15_020c4ae0

	arm_func_start FUN_ov15_020c4c14
FUN_ov15_020c4c14: ; 0x020C4C14
	stmfd sp!, {r3, r4, r5, lr}
	mov r4, r0
	mov r0, #0x10
	bl FUN_ov15_020c3e60
	mov r5, r0
	cmp r4, #0
	beq _020C4C44
	cmp r4, #1
	beq _020C4C64
	cmp r4, #2
	beq _020C4C8C
	b _020C4CBC
_020C4C44:
	add r1, r5, #0x300
	mov r0, #0
	mov r2, #0x144
	bl MIi_CpuClear32
	mov r0, r5
	bl FUN_ov15_020c4d54
	strb r0, [r5, #0xd10]
	b _020C4CBC
_020C4C64:
	bl FUN_ov15_020c4fa4
	strb r0, [r5, #0xd10]
	mov r0, r5
	bl FUN_ov15_020c502c
	strb r0, [r5, #0xd0f]
	ldrb r0, [r5, #0xd10]
	cmp r0, #0
	bne _020C4CBC
	mov r0, #0
	ldmfd sp!, {r3, r4, r5, pc}
_020C4C8C:
	mov r4, #0
	mov r0, r4
	add r1, r5, #0x300
	mov r2, #0x144
	bl MIi_CpuClear32
	mov r0, r5
	strb r4, [r5, #0xd0f]
	bl FUN_ov15_020c4db4
	strb r0, [r5, #0xd10]
	tst r0, #0xff
	moveq r0, r4
	ldmeqfd sp!, {r3, r4, r5, pc}
_020C4CBC:
	mov r0, #1
	ldmfd sp!, {r3, r4, r5, pc}
	arm_func_end FUN_ov15_020c4c14

	arm_func_start FUN_ov15_020c4cc4
FUN_ov15_020c4cc4: ; 0x020C4CC4
	stmfd sp!, {r3, r4, r5, lr}
	mov r5, r0
	mov r0, #0x10
	bl FUN_ov15_020c3e60
	ldrb r0, [r0, #0xd0c]
	mov r0, r0, lsl #0x1c
	movs r0, r0, lsr #0x1c
	beq _020C4CEC
	cmp r0, #6
	bne _020C4D0C
_020C4CEC:
	mov r4, #8
	ldr r1, _020C4D14 ; =0x020E3CD8
	mov r2, r4
	add r0, r5, #0xc
	bl FUN_020240f4
	cmp r0, #0
	moveq r0, r4
	ldmeqfd sp!, {r3, r4, r5, pc}
_020C4D0C:
	mov r0, #0
	ldmfd sp!, {r3, r4, r5, pc}
_020C4D14: .word 0x020E3CD8
	arm_func_end FUN_ov15_020c4cc4

	arm_func_start FUN_ov15_020c4d18
FUN_ov15_020c4d18: ; 0x020C4D18
	stmfd sp!, {r3, lr}
	mov r0, #0x10
	bl FUN_ov15_020c3e60
	mov r3, #0
	mov r1, #0x24
_020C4D2C:
	mla r2, r3, r1, r0
	ldrb r2, [r2, #0x303]
	cmp r2, #0
	beq _020C4D4C
	add r2, r3, #1
	and r3, r2, #0xff
	cmp r3, #9
	blo _020C4D2C
_020C4D4C:
	mov r0, r3
	ldmfd sp!, {r3, pc}
	arm_func_end FUN_ov15_020c4d18

	arm_func_start FUN_ov15_020c4d54
FUN_ov15_020c4d54: ; 0x020C4D54
	stmfd sp!, {r4, r5, r6, lr}
	mov r5, r0
	add r4, r5, #0x300
	bl FUN_ov15_020c4ea0
	ldrb r1, [r5, #0xd0c]
	mov r6, r0
	mov r0, #0x24
	mla r4, r6, r0, r4
	mov r1, r1, lsl #0x1c
	movs r0, r1, lsr #0x1c
	cmpne r0, #6
	bne _020C4DA8
	mov r5, #8
	ldr r0, _020C4DB0 ; =0x020E3CD8
	mov r2, r5
	add r1, r4, #4
	bl MI_CpuCopy8
	strb r5, [r4, #3]
	add r0, r6, #1
	strb r5, [r4, #1]
	and r6, r0, #0xff
_020C4DA8:
	mov r0, r6
	ldmfd sp!, {r4, r5, r6, pc}
_020C4DB0: .word 0x020E3CD8
	arm_func_end FUN_ov15_020c4d54

	arm_func_start FUN_ov15_020c4db4
FUN_ov15_020c4db4: ; 0x020C4DB4
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	mov r6, r0
	add r5, r6, #0x300
	bl FUN_ov15_020c4ea0
	ldrb r1, [r6, #0xd0c]
	mov r4, r0
	mov r0, #0x24
	mla r5, r4, r0, r5
	mov r1, r1, lsl #0x1c
	movs r0, r1, lsr #0x1c
	cmpne r0, #4
	bne _020C4E10
	mov r7, #8
	ldr r0, _020C4E94 ; =0x020E4380
	mov r2, r7
	add r1, r5, #4
	bl MI_CpuCopy8
	add r0, r4, #1
	strb r7, [r5, #3]
	mov r1, #6
	strb r1, [r5, #1]
	and r4, r0, #0xff
	add r5, r5, #0x24
_020C4E10:
	ldrb r0, [r6, #0xd0c]
	mov r0, r0, lsl #0x1c
	movs r0, r0, lsr #0x1c
	cmpne r0, #7
	bne _020C4E50
	mov r7, #8
	ldr r0, _020C4E98 ; =0x020E3CD0
	mov r2, r7
	add r1, r5, #4
	bl MI_CpuCopy8
	add r0, r4, #1
	strb r7, [r5, #3]
	mov r1, #9
	strb r1, [r5, #1]
	and r4, r0, #0xff
	add r5, r5, #0x24
_020C4E50:
	ldrb r0, [r6, #0xd0c]
	mov r0, r0, lsl #0x1c
	movs r0, r0, lsr #0x1c
	cmpne r0, #8
	bne _020C4E8C
	mov r6, #0xb
	ldr r0, _020C4E9C ; =0x020E3CE0
	mov r2, r6
	add r1, r5, #4
	bl MI_CpuCopy8
	add r0, r4, #1
	strb r6, [r5, #3]
	mov r1, #0xa
	strb r1, [r5, #1]
	and r4, r0, #0xff
_020C4E8C:
	mov r0, r4
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_020C4E94: .word ov15_020E4380
_020C4E98: .word 0x020E3CD0
_020C4E9C: .word 0x020E3CE0
	arm_func_end FUN_ov15_020c4db4

	arm_func_start FUN_ov15_020c4ea0
FUN_ov15_020c4ea0: ; 0x020C4EA0
	stmfd sp!, {r4, r5, r6, lr}
	mov r2, #0
	mov r3, r0
	mov r1, r2
	add r12, r0, #0x300
_020C4EB4:
	ldrb r4, [r0, #0xd0c]
	mov r4, r4, lsl #0x1c
	movs r5, r4, lsr #0x1c
	beq _020C4ED0
	add r4, r1, #1
	cmp r5, r4
	bne _020C4F8C
_020C4ED0:
	ldrb r4, [r3, #0xe7]
	cmp r4, #0xff
	beq _020C4F8C
	mov r6, #0
_020C4EE0:
	add r4, r3, r6
	ldrb lr, [r4, #0x40]
	cmp lr, #0
	beq _020C4F08
	add r4, r6, #1
	add r5, r12, r6
	and r6, r4, #0xff
	strb lr, [r5, #4]
	cmp r6, #0x20
	blo _020C4EE0
_020C4F08:
	cmp r6, #0
	strneb r6, [r12, #3]
	movne r4, #1
	strneb r1, [r12, #1]
	moveq r4, #0
	cmp r4, #0
	addne r2, r2, #1
	ldrb r4, [r3, #0xe7]
	andne r2, r2, #0xff
	addne r12, r12, #0x24
	cmp r4, #1
	bne _020C4F8C
	mov r6, #0
_020C4F3C:
	add r4, r3, r6
	ldrb r5, [r4, #0x60]
	cmp r5, #0
	beq _020C4F64
	add lr, r6, #1
	add r4, r12, r6
	and r6, lr, #0xff
	strb r5, [r4, #4]
	cmp r6, #0x20
	blo _020C4F3C
_020C4F64:
	cmp r6, #0
	movne r4, #1
	strneb r6, [r12, #3]
	addne lr, r1, #3
	moveq r4, #0
	strneb lr, [r12, #1]
	cmp r4, #0
	addne r2, r2, #1
	andne r2, r2, #0xff
	addne r12, r12, #0x24
_020C4F8C:
	add r1, r1, #1
	cmp r1, #3
	add r3, r3, #0x100
	blt _020C4EB4
	mov r0, r2
	ldmfd sp!, {r4, r5, r6, pc}
	arm_func_end FUN_ov15_020c4ea0

	arm_func_start FUN_ov15_020c4fa4
FUN_ov15_020c4fa4: ; 0x020C4FA4
	stmfd sp!, {r3, r4, r5, lr}
	ldrb r1, [r0, #0xd12]
	mov r2, #0
	mov r3, r2
	cmp r1, #0
	ble _020C5024
	add r1, r0, #0x47
	add r1, r1, #0x400
	mov r12, #0xc0
_020C4FC8:
	add r4, r0, r3, lsl #2
	ldrb r4, [r4, #0x444]
	cmp r4, #0
	bne _020C5008
	mla r4, r3, r12, r0
	add lr, r4, #0x400
	ldrh r4, [lr, #0xa6]
	ldrb lr, [r1, r3, lsl #2]
	sub r5, r4, #1
	mov r4, lr, lsl #0x19
	cmp r5, r4, lsr #25
	bicne lr, lr, #0x80
	addne r2, r2, #1
	strneb lr, [r1, r3, lsl #2]
	andne r2, r2, #0xff
	bne _020C5014
_020C5008:
	ldrb lr, [r1, r3, lsl #2]
	orr lr, lr, #0x80
	strb lr, [r1, r3, lsl #2]
_020C5014:
	ldrb lr, [r0, #0xd12]
	add r3, r3, #1
	cmp r3, lr
	blt _020C4FC8
_020C5024:
	mov r0, r2
	ldmfd sp!, {r3, r4, r5, pc}
	arm_func_end FUN_ov15_020c4fa4

	arm_func_start FUN_ov15_020c502c
FUN_ov15_020c502c: ; 0x020C502C
	ldrb r12, [r0, #0xd12]
	mov r3, #0
	mov r2, r3
	cmp r12, #0
	bls _020C5068
_020C5040:
	add r1, r0, r2, lsl #2
	ldrb r1, [r1, #0x447]
	mov r1, r1, lsl #0x18
	movs r1, r1, lsr #0x1f
	moveq r3, r2
	beq _020C5068
	add r1, r2, #1
	and r2, r1, #0xff
	cmp r2, r12
	blo _020C5040
_020C5068:
	mov r0, r3
	bx lr
	arm_func_end FUN_ov15_020c502c

	arm_func_start FUN_ov15_020c5070
FUN_ov15_020c5070: ; 0x020C5070
	stmfd sp!, {r4, r5, r6, r7, r8, lr}
	mov r8, r0
	mov r7, r1
	bl FUN_ov15_020c25a0
	mov r6, #1
	mov r1, r0
	mov r0, r6
	bl FUN_ov15_020cc408
	ldr r4, _020C50D8 ; =0x020E8F20
	ldr r5, _020C50DC ; =0x00000794
	str r0, [r4, #4]
	mov r0, r6
	mov r1, r5
	bl FUN_ov15_020cc408
	mov r2, r5
	str r0, [r4]
	mov r5, #0
	mov r1, r5
	bl MI_CpuFill8
	mov r0, r6
	ldr r1, [r4]
	str r8, [r1]
	ldr r1, [r4]
	strh r7, [r1, #4]
	str r5, [r4, #8]
	ldmfd sp!, {r4, r5, r6, r7, r8, pc}
_020C50D8: .word ov15_020E8F20
_020C50DC: .word 0x00000794
	arm_func_end FUN_ov15_020c5070

	arm_func_start FUN_ov15_020c50e0
FUN_ov15_020c50e0: ; 0x020C50E0
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, lr}
	ldr r5, _020C53AC ; =0x020E8F20
	ldr r0, [r5, #4]
	cmp r0, #0
	ldrne r2, [r5]
	cmpne r2, #0
	moveq r0, #3
	ldmeqfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
	ldr r1, [r5, #8]
	mov r6, #1
	cmp r1, #0xb
	addls pc, pc, r1, lsl #2
	b _020C53A4
_020C5114: ; jump table
	b _020C5144 ; case 0
	b _020C53A4 ; case 1
	b _020C5158 ; case 2
	b _020C53A4 ; case 3
	b _020C51A8 ; case 4
	b _020C51F8 ; case 5
	b _020C53A4 ; case 6
	b _020C5214 ; case 7
	b _020C53A4 ; case 8
	b _020C52D8 ; case 9
	b _020C5380 ; case 10
	b _020C53A0 ; case 11
_020C5144:
	str r6, [r5, #8]
	ldrh r2, [r2, #4]
	ldr r1, _020C53B0 ; =FUN_ov15_020c5470
	bl FUN_ov15_020c25ac
	b _020C5390
_020C5158:
	ldr r0, _020C53B4 ; =FUN_ov15_020c5484
	mov r1, #3
	str r1, [r5, #8]
	bl FUN_ov15_020c2670
	cmp r0, #0
	bne _020C519C
	ldr r1, [r5]
	ldr r0, [r1, #0xc]
	ldr r2, [r1, #8]
	cmp r0, #0
	cmpeq r2, #0
	bne _020C53A4
	bl FUN_02003410
	ldr r2, [r5]
	str r0, [r2, #8]
	str r1, [r2, #0xc]
	b _020C53A4
_020C519C:
	mov r0, #0xa
	str r0, [r5, #8]
	b _020C53A4
_020C51A8:
	bl FUN_02003410
	ldr r4, [r5]
	mov r3, #0
	ldr r2, [r4, #8]
	ldr r4, [r4, #0xc]
	subs r7, r0, r2
	sbc r0, r1, r4
	mov r1, r0, lsl #6
	ldr r2, _020C53B8 ; =0x000082EA
	orr r1, r1, r7, lsr #26
	mov r0, r7, lsl #6
	bl FUN_0201f954
	ldr r2, _020C53BC ; =0x00000BB8
	cmp r1, #0
	cmpeq r0, r2
	movlo r0, #2
	strlo r0, [r5, #8]
	movhs r0, #5
	strhs r0, [r5, #8]
	b _020C53A4
_020C51F8:
	ldr r0, _020C53C0 ; =FUN_ov15_020c5498
	mov r1, #6
	str r1, [r5, #8]
	bl FUN_ov15_020c2728
	cmp r0, #0
	movne r0, #0xa
	b _020C5398
_020C5214:
	add r0, r2, #0x10
	bl FUN_ov15_020c27fc
	cmp r0, #0
	movne r0, #0xa
	mov r4, #0
	strne r0, [r5, #8]
	ldr r9, _020C53AC ; =0x020E8F20
	sub r1, r4, #1
	ldr r0, [r9]
	mov r5, r4
	str r1, [r0, #0x790]
	mov r8, #0x78
_020C5244:
	mul r7, r4, r8
	ldr r2, [r9]
	add r1, r2, r7
	ldr r0, [r1, #0x10]
	cmp r0, #0
	beq _020C52A8
	ldrb r0, [r1, #0x7c]
	tst r0, #2
	beq _020C52A8
	ldrb r0, [r1, #0x7b]
	cmp r0, #3
	bhi _020C52A8
	add r0, r2, #0x36
	add r0, r0, r7
	bl FUN_ov15_020c543c
	cmp r0, #0
	beq _020C52A8
	ldr r1, [r9]
	add r0, r1, r7
	ldrh r0, [r0, #0x14]
	cmp r0, r5
	strhs r4, [r1, #0x790]
	ldrhs r0, [r9]
	addhs r0, r0, r7
	ldrhsh r5, [r0, #0x14]
_020C52A8:
	add r4, r4, #1
	cmp r4, #0x10
	blt _020C5244
	ldr r4, _020C53AC ; =0x020E8F20
	mov r1, #8
	ldr r0, _020C53C4 ; =FUN_ov15_020c54ac
	str r1, [r4, #8]
	bl FUN_ov15_020c2630
	cmp r0, #0
	movne r0, #0xb
	strne r0, [r4, #8]
	b _020C53A4
_020C52D8:
	ldr r1, [r2, #0x790]
	cmp r1, #0
	movlt r0, #0xb
	strlt r0, [r5, #8]
	blt _020C53A4
	add r0, r2, #0x16
	mov r4, #0x78
	mla r0, r1, r4, r0
	mov r6, #0x20
	ldr r1, [r2]
	mov r2, r6
	bl MI_CpuCopy8
	ldr r0, [r5]
	mov r2, r6
	ldr r1, [r0]
	ldr r3, [r0, #0x790]
	add r0, r0, #0x5a
	mla r0, r3, r4, r0
	add r1, r1, #0x20
	bl MI_CpuCopy8
	ldr r1, [r5]
	mov r2, #0xa
	ldr r3, [r1, #0x790]
	ldr r0, [r1]
	mla r1, r3, r4, r1
	ldrb r1, [r1, #0x7b]
	str r1, [r0, #0x40]
	ldr r1, [r5]
	ldr r3, [r1, #0x790]
	ldr r0, [r1]
	mla r1, r3, r4, r1
	ldrh r1, [r1, #0x82]
	strh r1, [r0, #0x44]
	ldr r0, [r5]
	ldr r1, [r0]
	ldr r3, [r0, #0x790]
	add r0, r0, #0x36
	mla r0, r3, r4, r0
	add r1, r1, #0x46
	bl MI_CpuCopy8
	mov r6, #2
	b _020C53A4
_020C5380:
	ldr r0, _020C53C8 ; =FUN_ov15_020c54c0
	mov r1, #8
	str r1, [r5, #8]
	bl FUN_ov15_020c2630
_020C5390:
	cmp r0, #0
	movne r0, #0xb
_020C5398:
	strne r0, [r5, #8]
	b _020C53A4
_020C53A0:
	mov r6, #3
_020C53A4:
	mov r0, r6
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
_020C53AC: .word ov15_020E8F20
_020C53B0: .word FUN_ov15_020c5470
_020C53B4: .word FUN_ov15_020c5484
_020C53B8: .word 0x000082EA
_020C53BC: .word 0x00000BB8
_020C53C0: .word FUN_ov15_020c5498
_020C53C4: .word FUN_ov15_020c54ac
_020C53C8: .word FUN_ov15_020c54c0
	arm_func_end FUN_ov15_020c50e0

	arm_func_start FUN_ov15_020c53cc
FUN_ov15_020c53cc: ; 0x020C53CC
	ldr r0, _020C53E4 ; =0x020E8F20
	ldr r1, [r0, #8]
	cmp r1, #4
	moveq r1, #5
	streq r1, [r0, #8]
	bx lr
_020C53E4: .word ov15_020E8F20
	arm_func_end FUN_ov15_020c53cc

	arm_func_start FUN_ov15_020c53e8
FUN_ov15_020c53e8: ; 0x020C53E8
	stmfd sp!, {r3, r4, r5, lr}
	ldr r4, _020C5438 ; =0x020E8F20
	ldr r1, [r4, #4]
	cmp r1, #0
	beq _020C5410
	mov r5, #0
	mov r2, r5
	mov r0, #1
	bl FUN_ov15_020cc44c
	str r5, [r4, #4]
_020C5410:
	ldr r4, _020C5438 ; =0x020E8F20
	ldr r1, [r4]
	cmp r1, #0
	ldmeqfd sp!, {r3, r4, r5, pc}
	mov r5, #0
	mov r2, r5
	mov r0, #1
	bl FUN_ov15_020cc44c
	str r5, [r4]
	ldmfd sp!, {r3, r4, r5, pc}
_020C5438: .word ov15_020E8F20
	arm_func_end FUN_ov15_020c53e8

	arm_func_start FUN_ov15_020c543c
FUN_ov15_020c543c: ; 0x020C543C
	mov r2, #0
_020C5440:
	ldrb r1, [r0, r2]
	cmp r1, #0x20
	blo _020C5454
	cmp r1, #0x7e
	bls _020C545C
_020C5454:
	mov r0, #0
	bx lr
_020C545C:
	add r2, r2, #1
	cmp r2, #0xa
	blt _020C5440
	mov r0, #1
	bx lr
	arm_func_end FUN_ov15_020c543c

	arm_func_start FUN_ov15_020c5470
FUN_ov15_020c5470: ; 0x020C5470
	ldr r0, _020C5480 ; =0x020E8F20
	mov r1, #2
	str r1, [r0, #8]
	bx lr
_020C5480: .word ov15_020E8F20
	arm_func_end FUN_ov15_020c5470

	arm_func_start FUN_ov15_020c5484
FUN_ov15_020c5484: ; 0x020C5484
	ldr r0, _020C5494 ; =0x020E8F20
	mov r1, #4
	str r1, [r0, #8]
	bx lr
_020C5494: .word ov15_020E8F20
	arm_func_end FUN_ov15_020c5484

	arm_func_start FUN_ov15_020c5498
FUN_ov15_020c5498: ; 0x020C5498
	ldr r0, _020C54A8 ; =0x020E8F20
	mov r1, #7
	str r1, [r0, #8]
	bx lr
_020C54A8: .word ov15_020E8F20
	arm_func_end FUN_ov15_020c5498

	arm_func_start FUN_ov15_020c54ac
FUN_ov15_020c54ac: ; 0x020C54AC
	ldr r0, _020C54BC ; =0x020E8F20
	mov r1, #9
	str r1, [r0, #8]
	bx lr
_020C54BC: .word ov15_020E8F20
	arm_func_end FUN_ov15_020c54ac

	arm_func_start FUN_ov15_020c54c0
FUN_ov15_020c54c0: ; 0x020C54C0
	ldr r0, _020C54D0 ; =0x020E8F20
	mov r1, #0xb
	str r1, [r0, #8]
	bx lr
_020C54D0: .word ov15_020E8F20
	arm_func_end FUN_ov15_020c54c0

	arm_func_start FUN_ov15_020c54d4
FUN_ov15_020c54d4: ; 0x020C54D4
	stmfd sp!, {r3, r4, r5, lr}
	mov r0, #0x10
	bl FUN_ov15_020c3e60
	mov r4, r0
	mov r5, #9
	bl FUN_ov15_020dcdd4
	cmp r0, #0xc
	addls pc, pc, r0, lsl #2
	b _020C55A0
_020C54F8: ; jump table
	b _020C55A0 ; case 0
	b _020C55A0 ; case 1
	b _020C55A0 ; case 2
	b _020C552C ; case 3
	b _020C55A0 ; case 4
	b _020C55A0 ; case 5
	b _020C5578 ; case 6
	b _020C55A0 ; case 7
	b _020C55A0 ; case 8
	b _020C5580 ; case 9
	b _020C55A0 ; case 10
	b _020C5594 ; case 11
	b _020C5588 ; case 12
_020C552C:
	ldrb r0, [r4, #0xd0c]
	ldrb r5, [r4, #0xd0e]
	mov r0, r0, lsl #0x19
	mov r0, r0, lsr #0x1f
	cmp r0, #1
	bne _020C555C
	ldrb r0, [r4, #0xd13]
	mov r1, #0
	mov r5, #7
	add r0, r4, r0, lsl #2
	strb r1, [r0, #0x444]
	b _020C55A0
_020C555C:
	cmp r5, #3
	blo _020C55A0
	cmp r5, #5
	bhi _020C55A0
	mov r0, r5
	bl FUN_ov15_020c5708
	b _020C55A0
_020C5578:
	bl FUN_ov15_020dc9a4
	b _020C55A0
_020C5580:
	bl FUN_ov15_020dcbf4
	b _020C55A0
_020C5588:
	bl FUN_ov15_020dccb8
	mov r0, #4
	b _020C5598
_020C5594:
	mov r0, #0
_020C5598:
	bl FUN_ov15_020c3f28
	mov r5, #0x11
_020C55A0:
	mov r0, r5
	ldmfd sp!, {r3, r4, r5, pc}
	arm_func_end FUN_ov15_020c54d4

	arm_func_start FUN_ov15_020c55a8
FUN_ov15_020c55a8: ; 0x020C55A8
	stmfd sp!, {r3, r4, r5, lr}
	mov r0, #0x10
	bl FUN_ov15_020c3e60
	mov r4, r0
	bl FUN_ov15_020c3f08
	mov r5, r0
	bl FUN_ov15_020dcdd4
	cmp r5, #2
	cmpeq r0, #3
	bne _020C561C
	bl FUN_ov15_020dcea0
	mov r2, #0
	mov r1, #0x1000
_020C55DC:
	tst r0, r1, asr r2
	bne _020C55F0
	add r2, r2, #1
	cmp r2, #0xc
	ble _020C55DC
_020C55F0:
	rsb r0, r2, #0xd
	add r1, r4, #0xd00
	strh r0, [r1, #0x1e]
	mov r2, #0x12c
	mov r0, r4
	strh r2, [r1, #0x22]
	mov r2, #0x96
	strh r2, [r1, #0x24]
	bl FUN_ov15_020c5858
_020C5614:
	mov r5, r0
	b _020C56C4
_020C561C:
	cmp r5, #6
	bne _020C5634
	mov r0, r4
	mov r1, r5
	bl FUN_ov15_020c5d30
	b _020C5614
_020C5634:
	cmp r0, #3
	beq _020C5644
	cmp r0, #6
	bne _020C5698
_020C5644:
	mov r0, r4
	mov r1, r5
	bl FUN_ov15_020c5d30
	mov r5, r0
	cmp r5, #7
	beq _020C56C4
	cmp r5, #3
	bne _020C5670
	mov r0, r4
	bl FUN_ov15_020c5904
	b _020C5614
_020C5670:
	cmp r5, #4
	bne _020C5684
	mov r0, r4
	bl FUN_ov15_020c59c4
	b _020C5614
_020C5684:
	cmp r5, #5
	bne _020C56C4
	mov r0, r4
	bl FUN_ov15_020c5b4c
	b _020C5614
_020C5698:
	cmp r0, #0xb
	bne _020C56B0
	mov r0, #0
	bl FUN_ov15_020c3f28
	mov r0, #0x11
	ldmfd sp!, {r3, r4, r5, pc}
_020C56B0:
	ble _020C56C4
	mov r0, #4
	bl FUN_ov15_020c3f28
	mov r0, #0x11
	ldmfd sp!, {r3, r4, r5, pc}
_020C56C4:
	mov r0, r5
	ldmfd sp!, {r3, r4, r5, pc}
	arm_func_end FUN_ov15_020c55a8

	arm_func_start FUN_ov15_020c56cc
FUN_ov15_020c56cc: ; 0x020C56CC
	stmfd sp!, {r4, lr}
	mov r4, r0
	mov r0, #0x10
	bl FUN_ov15_020c3e60
	add r1, r0, #0xd00
	ldrh r1, [r1, #0x1e]
	add r0, r0, #0xd00
	ldrh r3, [r0, #0x16]
	cmp r4, r1
	movhi r4, r1
	sub r1, r4, #1
	mov r2, #1
	orr r1, r3, r2, lsl r1
	strh r1, [r0, #0x16]
	ldmfd sp!, {r4, pc}
	arm_func_end FUN_ov15_020c56cc

	arm_func_start FUN_ov15_020c5708
FUN_ov15_020c5708: ; 0x020C5708
	stmfd sp!, {r4, r5, r6, lr}
	mov r5, r0
	mov r0, #0x10
	bl FUN_ov15_020c3e60
	mov r4, r0
	cmp r5, #3
	beq _020C5738
	cmp r5, #4
	beq _020C5768
	cmp r5, #5
	beq _020C5810
	ldmfd sp!, {r4, r5, r6, pc}
_020C5738:
	bl FUN_02003410
	str r0, [r4, #0xcb0]
	str r1, [r4, #0xcb4]
	add r0, r4, #0xd00
	ldrsb r2, [r0, #0x11]
	ldr r1, _020C584C ; =0x020E3CEC
	ldr r0, _020C5850 ; =0x020E3FE8
	ldr r2, [r1, r2, lsl #2]
	ldr r1, _020C5854 ; =0x020E3FF0
	orr r2, r2, #0x200000
	bl FUN_ov15_020dc914
	ldmfd sp!, {r4, r5, r6, pc}
_020C5768:
	ldrb r1, [r4, #0xd0f]
	mov r0, #0xc0
	mov r5, #1
	mla r0, r1, r0, r4
	add r0, r0, #0x400
	ldrh r0, [r0, #0xa6]
	sub r0, r0, #1
	mov r0, r5, lsl r0
	mov r6, r0, lsl #0x10
	bl FUN_ov15_020dcea0
	tst r0, r6, lsr #16
	moveq r5, #0
	cmp r5, #1
	bne _020C57F4
	bl FUN_02003410
	str r0, [r4, #0xcb0]
	str r1, [r4, #0xcb4]
	ldrb r2, [r4, #0xd0f]
	mov r0, #0xc0
	add r1, r4, #0x74
	smulbb r5, r2, r0
	add r0, r4, r5
	add r0, r0, #0x400
	ldrh r2, [r0, #0xa6]
	add r0, r4, #0x7c
	add r4, r1, #0x400
	sub r1, r2, #1
	orr r1, r1, #0x300000
	add r3, r0, #0x400
	mov r2, r1, lsl #0x10
	add r0, r4, r5
	add r1, r3, r5
	mov r2, r2, lsr #0x10
	bl FUN_ov15_020dc914
	ldmfd sp!, {r4, r5, r6, pc}
_020C57F4:
	ldrb r1, [r4, #0xd0f]
	add r0, r4, #0x47
	add r2, r0, #0x400
	ldrb r0, [r2, r1, lsl #2]
	orr r0, r0, #0x80
	strb r0, [r2, r1, lsl #2]
	ldmfd sp!, {r4, r5, r6, pc}
_020C5810:
	bl FUN_02003410
	str r0, [r4, #0xcb0]
	str r1, [r4, #0xcb4]
	add r2, r4, #0xd00
	ldrb r3, [r4, #0xd0f]
	add r1, r4, #0x304
	mov r0, #0x24
	mla r1, r3, r0, r1
	ldrsb r3, [r2, #0x11]
	ldr r2, _020C584C ; =0x020E3CEC
	ldr r0, _020C5850 ; =0x020E3FE8
	ldr r2, [r2, r3, lsl #2]
	orr r2, r2, #0x300000
	bl FUN_ov15_020dc914
	ldmfd sp!, {r4, r5, r6, pc}
_020C584C: .word 0x020E3CEC
_020C5850: .word 0x020E3FE8
_020C5854: .word 0x020E3FF0
	arm_func_end FUN_ov15_020c5708

	arm_func_start FUN_ov15_020c5858
FUN_ov15_020c5858: ; 0x020C5858
	stmfd sp!, {r4, lr}
	mov r4, r0
	bl FUN_02003410
	str r0, [r4, #0xcb0]
	mov r0, #0
	str r1, [r4, #0xcb4]
	bl FUN_ov15_020c5ed0
	strb r0, [r4, #0xd11]
	bl FUN_02003410
	add r2, r4, #0xd00
	str r0, [r4, #0xcb0]
	str r1, [r4, #0xcb4]
	ldrsb r2, [r2, #0x11]
	ldr r1, _020C58AC ; =0x020E3CEC
	ldr r0, _020C58B0 ; =0x020E3FE8
	ldr r2, [r1, r2, lsl #2]
	ldr r1, _020C58B4 ; =0x020E3FF0
	orr r2, r2, #0x200000
	bl FUN_ov15_020dc914
	mov r0, #3
	ldmfd sp!, {r4, pc}
_020C58AC: .word 0x020E3CEC
_020C58B0: .word 0x020E3FE8
_020C58B4: .word 0x020E3FF0
	arm_func_end FUN_ov15_020c5858

	arm_func_start FUN_ov15_020c58b8
FUN_ov15_020c58b8: ; 0x020C58B8
	stmfd sp!, {r4, lr}
	mov r4, r0
	ldrb r2, [r4, #0xd0b]
	mov r0, #0
	strb r0, [r4, #0xd15]
	mov r1, r2, lsl #0x18
	mov r1, r1, lsr #0x1c
	add r1, r1, #1
	and r1, r1, #0xff
	bic r2, r2, #0xf0
	mov r1, r1, lsl #0x1c
	orr r1, r2, r1, lsr #24
	strb r1, [r4, #0xd0b]
	bl FUN_ov15_020c4c14
	mov r0, #1
	bl FUN_ov15_020c5ed0
	strb r0, [r4, #0xd11]
	mov r0, #3
	ldmfd sp!, {r4, pc}
	arm_func_end FUN_ov15_020c58b8

	arm_func_start FUN_ov15_020c5904
FUN_ov15_020c5904: ; 0x020C5904
	stmfd sp!, {r3, r4, r5, lr}
	mov r4, r0
	bl FUN_02003410
	ldr r2, [r4, #0xcb0]
	mov r5, #0
	subs r12, r0, r2
	ldr r0, [r4, #0xcb4]
	ldr r2, _020C59B4 ; =0x000082EA
	sbc r0, r1, r0
	mov r1, r0, lsl #6
	mov r3, r5
	orr r1, r1, r12, lsr #26
	mov r0, r12, lsl #6
	bl FUN_0201f954
	add r2, r4, #0xd00
	ldrh r3, [r2, #0x22]
	cmp r1, r3, asr #31
	cmpeq r0, r3
	blo _020C59AC
	ldrsb r0, [r2, #0x11]
	bl FUN_ov15_020c5f74
	strb r0, [r4, #0xd11]
	add r0, r4, #0xd00
	ldrsb r1, [r0, #0x11]
	sub r0, r5, #1
	cmp r1, r0
	bne _020C5980
	mov r0, r4
	mov r1, #3
	bl FUN_ov15_020c5c7c
	ldmfd sp!, {r3, r4, r5, pc}
_020C5980:
	bl FUN_02003410
	add r2, r4, #0xd00
	ldrsb r3, [r2, #0x11]
	ldr r2, _020C59B8 ; =0x020E3CEC
	str r0, [r4, #0xcb0]
	ldr r2, [r2, r3, lsl #2]
	str r1, [r4, #0xcb4]
	ldr r0, _020C59BC ; =0x020E3FE8
	ldr r1, _020C59C0 ; =0x020E3FF0
	orr r2, r2, #0x200000
	bl FUN_ov15_020dc914
_020C59AC:
	mov r0, #3
	ldmfd sp!, {r3, r4, r5, pc}
_020C59B4: .word 0x000082EA
_020C59B8: .word 0x020E3CEC
_020C59BC: .word 0x020E3FE8
_020C59C0: .word 0x020E3FF0
	arm_func_end FUN_ov15_020c5904

	arm_func_start FUN_ov15_020c59c4
FUN_ov15_020c59c4: ; 0x020C59C4
	stmfd sp!, {r4, r5, r6, lr}
	mov r4, r0
	bl FUN_02003410
	ldr r2, [r4, #0xcb0]
	ldr r3, [r4, #0xcb4]
	subs r5, r0, r2
	sbc r0, r1, r3
	mov r1, r0, lsl #6
	ldr r2, _020C5B48 ; =0x000082EA
	orr r1, r1, r5, lsr #26
	mov r0, r5, lsl #6
	mov r3, #0
	bl FUN_0201f954
	add r2, r4, #0xd00
	ldrh r2, [r2, #0x24]
	cmp r1, r2, asr #31
	cmpeq r0, r2
	bhs _020C5A28
	ldrb r0, [r4, #0xd0f]
	add r0, r4, r0, lsl #2
	ldrb r0, [r0, #0x447]
	mov r0, r0, lsl #0x18
	mov r0, r0, lsr #0x1f
	cmp r0, #1
	bne _020C5B40
_020C5A28:
	ldrb r1, [r4, #0xd0f]
	add r0, r4, #0x47
	add r2, r0, #0x400
	ldrb r0, [r2, r1, lsl #2]
	orr r0, r0, #0x80
	strb r0, [r2, r1, lsl #2]
	ldrb r2, [r4, #0xd12]
	ldrb r1, [r4, #0xd0f]
	cmp r1, r2
	bhs _020C5A80
_020C5A50:
	add r0, r4, r1, lsl #2
	ldrb r0, [r0, #0x447]
	mov r0, r0, lsl #0x18
	movs r0, r0, lsr #0x1f
	beq _020C5A80
	ldrb r0, [r4, #0xd0f]
	ldrb r2, [r4, #0xd12]
	add r0, r0, #1
	and r1, r0, #0xff
	strb r0, [r4, #0xd0f]
	cmp r1, r2
	blo _020C5A50
_020C5A80:
	cmp r2, r1
	bhi _020C5AA0
	mov r2, #0
	mov r0, r4
	mov r1, #4
	strb r2, [r4, #0xd0f]
	bl FUN_ov15_020c5c7c
	ldmfd sp!, {r4, r5, r6, pc}
_020C5AA0:
	mov r0, #0xc0
	mla r0, r1, r0, r4
	add r0, r0, #0x400
	ldrh r0, [r0, #0xa6]
	mov r6, #1
	sub r0, r0, #1
	mov r0, r6, lsl r0
	mov r5, r0, lsl #0x10
	bl FUN_ov15_020dcea0
	tst r0, r5, lsr #16
	moveq r6, #0
	cmp r6, #1
	bne _020C5B28
	bl FUN_02003410
	ldrb r5, [r4, #0xd0f]
	mov r2, #0xc0
	add r3, r4, #0x74
	smulbb r2, r5, r2
	add r5, r4, r2
	str r0, [r4, #0xcb0]
	str r1, [r4, #0xcb4]
	add r0, r5, #0x400
	ldrh r1, [r0, #0xa6]
	add r0, r4, #0x7c
	add r5, r3, #0x400
	sub r1, r1, #1
	orr r1, r1, #0x300000
	add r4, r0, #0x400
	mov r3, r1, lsl #0x10
	add r0, r5, r2
	add r1, r4, r2
	mov r2, r3, lsr #0x10
	bl FUN_ov15_020dc914
	b _020C5B40
_020C5B28:
	ldrb r1, [r4, #0xd0f]
	add r0, r4, #0x47
	add r2, r0, #0x400
	ldrb r0, [r2, r1, lsl #2]
	orr r0, r0, #0x80
	strb r0, [r2, r1, lsl #2]
_020C5B40:
	mov r0, #4
	ldmfd sp!, {r4, r5, r6, pc}
_020C5B48: .word 0x000082EA
	arm_func_end FUN_ov15_020c59c4

	arm_func_start FUN_ov15_020c5b4c
FUN_ov15_020c5b4c: ; 0x020C5B4C
	stmfd sp!, {r4, lr}
	mov r4, r0
	bl FUN_02003410
	ldr r2, [r4, #0xcb0]
	ldr r3, [r4, #0xcb4]
	subs r12, r0, r2
	sbc r0, r1, r3
	mov r1, r0, lsl #6
	ldr r2, _020C5C70 ; =0x000082EA
	orr r1, r1, r12, lsr #26
	mov r0, r12, lsl #6
	mov r3, #0
	bl FUN_0201f954
	add r2, r4, #0xd00
	ldrh r2, [r2, #0x24]
	cmp r1, r2, asr #31
	cmpeq r0, r2
	bhs _020C5BB4
	ldrb r1, [r4, #0xd0f]
	mov r0, #0x24
	mla r0, r1, r0, r4
	ldrb r0, [r0, #0x300]
	mov r0, r0, lsl #0x1c
	mov r0, r0, lsr #0x1c
	cmp r0, #1
	bne _020C5C68
_020C5BB4:
	ldrb r1, [r4, #0xd0f]
	mov r0, #0x24
	add r2, r4, #0x300
	smulbb r1, r1, r0
	ldrb r0, [r2, r1]
	bic r0, r0, #0xf
	strb r0, [r2, r1]
	ldrb r0, [r4, #0xd0f]
	ldrb r1, [r4, #0xd10]
	add r2, r0, #1
	and r0, r2, #0xff
	strb r2, [r4, #0xd0f]
	cmp r1, r0
	bhi _020C5C08
	ldrb r1, [r4, #0xd15]
	mov r0, #0
	strb r0, [r4, #0xd0f]
	add r0, r1, #1
	strb r0, [r4, #0xd15]
	bl FUN_ov15_020c600c
	strb r0, [r4, #0xd11]
_020C5C08:
	add r0, r4, #0xd00
	ldrsb r0, [r0, #0x11]
	cmp r0, #0
	bge _020C5C30
	mov r2, #0
	mov r0, r4
	mov r1, #5
	strb r2, [r4, #0xd15]
	bl FUN_ov15_020c5c7c
	ldmfd sp!, {r4, pc}
_020C5C30:
	bl FUN_02003410
	add r3, r4, #0xd00
	ldrb r12, [r4, #0xd0f]
	add lr, r4, #0x304
	mov r2, #0x24
	str r1, [r4, #0xcb4]
	str r0, [r4, #0xcb0]
	mla r1, r12, r2, lr
	ldrsb r3, [r3, #0x11]
	ldr r2, _020C5C74 ; =0x020E3CEC
	ldr r0, _020C5C78 ; =0x020E3FE8
	ldr r2, [r2, r3, lsl #2]
	orr r2, r2, #0x300000
	bl FUN_ov15_020dc914
_020C5C68:
	mov r0, #5
	ldmfd sp!, {r4, pc}
_020C5C70: .word 0x000082EA
_020C5C74: .word 0x020E3CEC
_020C5C78: .word 0x020E3FE8
	arm_func_end FUN_ov15_020c5b4c

	arm_func_start FUN_ov15_020c5c7c
FUN_ov15_020c5c7c: ; 0x020C5C7C
	stmfd sp!, {r3, r4, r5, lr}
	mov r4, r1
	mov r5, r0
	cmp r4, #3
	beq _020C5CA4
	cmp r4, #4
	beq _020C5CFC
	cmp r4, #5
	beq _020C5D00
	b _020C5D20
_020C5CA4:
	ldrb r1, [r5, #0xd12]
	cmp r1, #0
	bne _020C5CC0
	add r1, r5, #0xd00
	ldrh r1, [r1, #0x16]
	cmp r1, #0
	beq _020C5CE0
_020C5CC0:
	mov r0, #1
	bl FUN_ov15_020c4c14
	cmp r0, #1
	moveq r4, #4
	beq _020C5D20
	mov r0, r5
_020C5CD8:
	bl FUN_ov15_020c5e50
	b _020C5D1C
_020C5CE0:
	ldrb r1, [r5, #0xd0b]
	mov r1, r1, lsl #0x18
	mov r1, r1, lsr #0x1c
	cmp r1, #1
	movhs r4, #6
	bhs _020C5D20
	b _020C5D18
_020C5CFC:
	b _020C5CD8
_020C5D00:
	ldrb r1, [r5, #0xd0b]
	mov r1, r1, lsl #0x18
	mov r1, r1, lsr #0x1c
	cmp r1, #1
	movhs r4, #6
	bhs _020C5D20
_020C5D18:
	bl FUN_ov15_020c58b8
_020C5D1C:
	mov r4, r0
_020C5D20:
	mov r0, r4
	bl FUN_ov15_020c5708
	mov r0, r4
	ldmfd sp!, {r3, r4, r5, pc}
	arm_func_end FUN_ov15_020c5c7c

	arm_func_start FUN_ov15_020c5d30
FUN_ov15_020c5d30: ; 0x020C5D30
	stmfd sp!, {r4, r5, r6, lr}
	mov r5, r1
	mov r6, r0
	cmp r5, #0x11
	moveq r0, r5
	ldmeqfd sp!, {r4, r5, r6, pc}
	ldrb r1, [r6, #0xd12]
	mov r4, #0
	cmp r1, #0
	bls _020C5D78
_020C5D58:
	add r0, r6, r4, lsl #2
	ldrb r0, [r0, #0x444]
	cmp r0, #0
	beq _020C5D78
	add r0, r4, #1
	and r4, r0, #0xff
	cmp r4, r1
	blo _020C5D58
_020C5D78:
	cmp r5, #6
	bne _020C5DA8
	cmp r1, r4
	bne _020C5E34
	cmp r4, #0
	bne _020C5D98
	mov r0, #5
	b _020C5D9C
_020C5D98:
	mov r0, #6
_020C5D9C:
	bl FUN_ov15_020c3f28
	mov r0, #0x11
	ldmfd sp!, {r4, r5, r6, pc}
_020C5DA8:
	cmp r1, #0
	moveq r0, r5
	ldmeqfd sp!, {r4, r5, r6, pc}
	cmp r1, r4
	moveq r0, r5
	ldmeqfd sp!, {r4, r5, r6, pc}
	ldrb r0, [r6, #0xd0c]
	mov r0, r0, lsl #0x1a
	mov r0, r0, lsr #0x1f
	cmp r0, #1
	bne _020C5DE8
	add r0, r6, r4, lsl #2
	ldrb r0, [r0, #0x446]
	cmp r0, #0x14
	movlo r0, r5
	ldmlofd sp!, {r4, r5, r6, pc}
_020C5DE8:
	add r0, r6, r4, lsl #2
	ldrb r0, [r0, #0x445]
	cmp r0, #7
	blo _020C5E04
	cmp r0, #0xa
	movls r0, r5
	ldmlsfd sp!, {r4, r5, r6, pc}
_020C5E04:
	ldrb r0, [r6, #0xd0c]
	mov r0, r0, lsl #0x18
	mov r0, r0, lsr #0x1f
	cmp r0, #1
	bne _020C5E34
	add r1, r6, #0x470
	mov r0, #0xc0
	mla r0, r4, r0, r1
	bl FUN_ov15_020c2aa0
	cmp r0, #0
	moveq r0, r5
	ldmeqfd sp!, {r4, r5, r6, pc}
_020C5E34:
	strb r4, [r6, #0xd13]
	bl FUN_ov15_020dc9a4
	cmp r0, #1
	strneb r5, [r6, #0xd0e]
	movne r5, #7
	mov r0, r5
	ldmfd sp!, {r4, r5, r6, pc}
	arm_func_end FUN_ov15_020c5d30

	arm_func_start FUN_ov15_020c5e50
FUN_ov15_020c5e50: ; 0x020C5E50
	stmfd sp!, {r4, lr}
	mov r4, r0
	add r0, r4, #0xd00
	ldrh r0, [r0, #0x16]
	cmp r0, #0
	beq _020C5EAC
	mov r0, #2
	bl FUN_ov15_020c4c14
	cmp r0, #1
	bne _020C5EAC
	bl FUN_ov15_020c600c
	strb r0, [r4, #0xd11]
	add r0, r4, #0xd00
	ldrsb r0, [r0, #0x11]
	cmp r0, #0
	movge r0, #5
	ldmgefd sp!, {r4, pc}
	mov r2, #0
	mov r0, r4
	mov r1, #5
	strb r2, [r4, #0xd15]
	bl FUN_ov15_020c5c7c
	ldmfd sp!, {r4, pc}
_020C5EAC:
	ldrb r0, [r4, #0xd0b]
	mov r0, r0, lsl #0x18
	mov r0, r0, lsr #0x1c
	cmp r0, #1
	movhs r0, #6
	ldmhsfd sp!, {r4, pc}
	mov r0, r4
	bl FUN_ov15_020c58b8
	ldmfd sp!, {r4, pc}
	arm_func_end FUN_ov15_020c5e50

	arm_func_start FUN_ov15_020c5ed0
FUN_ov15_020c5ed0: ; 0x020C5ED0
	stmfd sp!, {r4, r5, r6, r7, r8, r9, r10, lr}
	mov r10, r0
	mov r0, #0x10
	bl FUN_ov15_020c3e60
	cmp r10, #0
	mov r7, r0
	add r4, r7, #0xd00
	moveq r8, #0
	moveq r9, #1
	ldrh r0, [r4, #0x1e]
	movne r8, #1
	movne r9, #2
	cmp r8, r0
	bgt _020C5F40
	mov r5, #0
	mov r6, #1
_020C5F10:
	bl FUN_ov15_020dcea0
	tst r0, r9
	movne r0, r6
	moveq r0, r5
	cmp r0, #1
	beq _020C5F40
	ldrh r1, [r4, #0x1e]
	mov r0, r9, lsl #0x12
	add r8, r8, #2
	cmp r8, r1
	mov r9, r0, lsr #0x10
	ble _020C5F10
_020C5F40:
	add r0, r7, #0xd00
	ldrh r0, [r0, #0x1e]
	cmp r8, r0
	ble _020C5F68
	mov r0, #1
	cmp r10, #0
	moveq r0, #0
	mov r0, r0, lsl #0x18
	mov r0, r0, asr #0x18
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, pc}
_020C5F68:
	mov r0, r8, lsl #0x18
	mov r0, r0, asr #0x18
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, pc}
	arm_func_end FUN_ov15_020c5ed0

	arm_func_start FUN_ov15_020c5f74
FUN_ov15_020c5f74: ; 0x020C5F74
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, lr}
	mov r9, r0
	mov r0, #0x10
	bl FUN_ov15_020c3e60
	add r1, r9, #2
	mov r7, r0
	mov r0, r1, lsl #0x18
	add r4, r7, #0xd00
	ldrh r2, [r4, #0x1e]
	mov r9, r0, asr #0x18
	mov r1, #1
	mov r1, r1, lsl r9
	mov r1, r1, lsl #0x10
	cmp r2, r0, asr #24
	mov r8, r1, lsr #0x10
	blt _020C5FF4
	mov r5, #0
	mov r6, #1
_020C5FBC:
	bl FUN_ov15_020dcea0
	tst r0, r8
	movne r0, r6
	moveq r0, r5
	cmp r0, #1
	beq _020C5FF4
	ldrh r2, [r4, #0x1e]
	add r0, r9, #2
	mov r1, r0, lsl #0x18
	mov r0, r8, lsl #0x12
	cmp r2, r1, asr #24
	mov r8, r0, lsr #0x10
	mov r9, r1, asr #0x18
	bge _020C5FBC
_020C5FF4:
	add r0, r7, #0xd00
	ldrh r0, [r0, #0x1e]
	cmp r9, r0
	mvngt r9, #0
	mov r0, r9
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
	arm_func_end FUN_ov15_020c5f74

	arm_func_start FUN_ov15_020c600c
FUN_ov15_020c600c: ; 0x020C600C
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, lr}
	mov r5, #0x10
	mov r0, r5
	bl FUN_ov15_020c3e60
	mov r6, r0
	add r4, r6, #0xd00
	ldrh r9, [r4, #0x16]
	cmp r9, #0
	subeq r0, r5, #0x11
	ldmeqfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
	ldrh r0, [r4, #0x1e]
	mov r7, #0
	mov r8, r7
	cmp r0, #0
	ble _020C60B4
	mov r11, r7
	mov r5, #1
_020C6050:
	tst r9, r5, lsl r7
	mov r10, r5, lsl r7
	beq _020C60A0
	ldrb r0, [r6, #0xd15]
	cmp r8, r0
	bne _020C6098
	bl FUN_ov15_020dcea0
	mov r1, r10, lsl #0x10
	tst r0, r1, lsr #16
	movne r0, r5
	moveq r0, r11
	cmp r0, #1
	moveq r0, r7, lsl #0x18
	moveq r0, r0, asr #0x18
	ldmeqfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
	ldrb r0, [r6, #0xd15]
	add r0, r0, #1
	strb r0, [r6, #0xd15]
_020C6098:
	add r0, r8, #1
	and r8, r0, #0xff
_020C60A0:
	ldrh r0, [r4, #0x1e]
	add r1, r7, #1
	and r7, r1, #0xff
	cmp r7, r0
	blt _020C6050
_020C60B4:
	mvn r0, #0
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
	arm_func_end FUN_ov15_020c600c

	arm_func_start FUN_ov15_020c60bc
FUN_ov15_020c60bc: ; 0x020C60BC
	stmfd sp!, {r4, lr}
	sub sp, sp, #0x18
	add r4, sp, #0
	mov r1, r4
	bl FUN_ov15_020c61a8
	ldr r1, _020C60F4 ; =0x020E43F4
	mov r0, r4
	mov r2, #8
	bl FUN_020219ac
	cmp r0, #0
	moveq r0, #1
	movne r0, #0
	add sp, sp, #0x18
	ldmfd sp!, {r4, pc}
_020C60F4: .word ov15_020E43F4
	arm_func_end FUN_ov15_020c60bc

	arm_func_start FUN_ov15_020c60f8
FUN_ov15_020c60f8: ; 0x020C60F8
	stmfd sp!, {r3, r4, r5, lr}
	sub sp, sp, #0x18
	add r4, sp, #0
	mov r5, r1
	mov r1, r4
	bl FUN_ov15_020c61a8
	mov r0, r4
	mov r1, r5
	bl FUN_ov15_020c62a4
	add sp, sp, #0x18
	ldmfd sp!, {r3, r4, r5, pc}
	arm_func_end FUN_ov15_020c60f8

	arm_func_start FUN_ov15_020c6124
FUN_ov15_020c6124: ; 0x020C6124
	stmfd sp!, {r3, r4, r5, lr}
	sub sp, sp, #0x18
	add r4, sp, #0
	mov r5, r1
	mov r1, r4
	bl FUN_ov15_020c61a8
	ldr r1, _020C6170 ; =0x020E43F4
	mov r0, r4
	mov r2, #8
	bl FUN_020219ac
	cmp r0, #0
	addne sp, sp, #0x18
	ldmnefd sp!, {r3, r4, r5, pc}
	add r0, sp, #8
	mov r1, r5
	mov r2, #0xa
	bl MI_CpuCopy8
	add sp, sp, #0x18
	ldmfd sp!, {r3, r4, r5, pc}
_020C6170: .word ov15_020E43F4
	arm_func_end FUN_ov15_020c6124

	arm_func_start FUN_ov15_020c6174
FUN_ov15_020c6174: ; 0x020C6174
	stmfd sp!, {r3, lr}
	ldr r1, _020C6194 ; =0x020E4400
	mov r2, #8
	bl FUN_020219ac
	cmp r0, #0
	moveq r0, #1
	movne r0, #0
	ldmfd sp!, {r3, pc}
_020C6194: .word ov15_020E4400
	arm_func_end FUN_ov15_020c6174

	arm_func_start FUN_ov15_020c6198
FUN_ov15_020c6198: ; 0x020C6198
	ldr r12, _020C61A4 ; =FUN_ov15_020c62f4
	add r0, r0, #0xc
	bx r12
_020C61A4: .word FUN_ov15_020c62f4
	arm_func_end FUN_ov15_020c6198

	arm_func_start FUN_ov15_020c61a8
FUN_ov15_020c61a8: ; 0x020C61A8
	stmfd sp!, {r4, r5, r6, lr}
	sub sp, sp, #0x18
	ldr lr, _020C629C ; =0x020E3D40
	add r12, sp, #0
	mov r4, r1
	mov r3, #0xc
_020C61C0:
	ldrb r1, [lr, #1]
	ldrb r2, [lr], #2
	subs r3, r3, #1
	strb r1, [r12, #1]
	strb r2, [r12], #2
	bne _020C61C0
	mov r1, r4
	mov r2, #0x20
	mov r3, #0x18
	bl FUN_ov15_020c6510
	ldr r0, _020C62A0 ; =0x020E438C
	mov r3, #0
_020C61F0:
	ldr r1, [r0, #8]
	ldrb r2, [r4, r3]
	ldrsb r1, [r1, r3]
	eor r1, r2, r1
	strb r1, [r4, r3]
	add r3, r3, #1
	cmp r3, #0x18
	blt _020C61F0
	mov r6, #0
	add r12, sp, #0
	mov r1, #0xff
_020C621C:
	and r2, r6, #0xff
	ldrb r0, [r12, r2]
	mov lr, r2
	ldrb r5, [r4, r6]
	cmp r0, #0xff
	beq _020C6260
_020C6234:
	add r0, r12, lr
	ldrb lr, [r12, lr]
	ldrb r2, [r12, r2]
	ldrb r3, [r4, lr]
	strb r1, [r0]
	ldrb r0, [r12, lr]
	strb r5, [r4, r2]
	mov r2, lr
	mov r5, r3
	cmp r0, #0xff
	bne _020C6234
_020C6260:
	add r6, r6, #1
	cmp r6, #0x18
	blt _020C621C
	ldr r0, _020C62A0 ; =0x020E438C
	mov r3, #0
_020C6274:
	ldr r1, [r0]
	ldrb r2, [r4, r3]
	ldrsb r1, [r1, r3]
	eor r1, r2, r1
	strb r1, [r4, r3]
	add r3, r3, #1
	cmp r3, #0x18
	blt _020C6274
	add sp, sp, #0x18
	ldmfd sp!, {r4, r5, r6, pc}
_020C629C: .word 0x020E3D40
_020C62A0: .word ov15_020E438C
	arm_func_end FUN_ov15_020c61a8

	arm_func_start FUN_ov15_020c62a4
FUN_ov15_020c62a4: ; 0x020C62A4
	stmfd sp!, {r3, r4, r5, r6, lr}
	sub sp, sp, #0x6c
	add r4, sp, #0x14
	mov r6, r0
	mov r0, r4
	mov r5, r1
	bl FUN_0200a124
	mov r0, r4
	mov r1, r6
	mov r2, #0x18
	bl FUN_0200a168
	add r1, sp, #0
	mov r0, r4
	bl FUN_0200a230
	add r0, sp, #3
	mov r1, r5
	mov r2, #0xd
	bl MI_CpuCopy8
	add sp, sp, #0x6c
	ldmfd sp!, {r3, r4, r5, r6, pc}
	arm_func_end FUN_ov15_020c62a4

	arm_func_start FUN_ov15_020c62f4
FUN_ov15_020c62f4: ; 0x020C62F4
	stmfd sp!, {r3, r4, r5, lr}
	sub sp, sp, #0x10
	ldr lr, _020C6490 ; =0x92492493
	mov r4, r1
	mov r1, #0
	mov r12, #7
_020C630C:
	smull r2, r3, lr, r1
	add r3, r1, r3
	mov r2, r1, lsr #0x1f
	add r3, r2, r3, asr #2
	smull r2, r3, r12, r3
	sub r3, r1, r2
	add r2, r0, r3
	ldrb r3, [r0, r1]
	ldrb r2, [r2, #0xd]
	eor r2, r3, r2
	strb r2, [r4, r1]
	add r1, r1, #1
	cmp r1, #0xd
	blt _020C630C
	mov r5, #0
_020C6348:
	add r3, r4, r5
	add r1, r0, r5
	ldrb r2, [r3, #3]
	ldrb r1, [r1, #0xd]
	add r5, r5, #1
	cmp r5, #7
	eor r1, r2, r1
	strb r1, [r3, #3]
	blt _020C6348
	ldr r0, _020C6494 ; =0x020E438C
	mov r3, #0
_020C6374:
	ldr r1, [r0, #4]
	ldrb r2, [r4, r3]
	ldrsb r1, [r1, r3]
	eor r1, r2, r1
	strb r1, [r4, r3]
	add r3, r3, #1
	cmp r3, #0xd
	blt _020C6374
	add r5, sp, #0
	mov r0, r4
	mov r1, r5
	mov r2, #0xd
	bl MI_CpuCopy8
	ldr r1, _020C6498 ; =0x020E3D20
	mov r3, #0
_020C63B0:
	ldrb r2, [r5, r3]
	ldrb r0, [r1, r3]
	add r3, r3, #1
	cmp r3, #0xd
	strb r2, [r4, r0]
	blt _020C63B0
	ldr r0, _020C6494 ; =0x020E438C
	mov r3, #0
_020C63D0:
	ldr r1, [r0, #0xc]
	ldrb r2, [r4, r3]
	ldrsb r1, [r1, r3]
	eor r1, r2, r1
	strb r1, [r4, r3]
	add r3, r3, #1
	cmp r3, #0xd
	blt _020C63D0
	ldr r2, _020C649C ; =0x020E3D2D
	mov r5, #0
_020C63F8:
	ldrb r3, [r4, r5]
	mov r0, r3, asr #4
	and r1, r0, #0xf
	and r0, r3, #0xf
	ldrb r1, [r2, r1]
	ldrb r0, [r2, r0]
	orr r0, r0, r1, lsl #4
	strb r0, [r4, r5]
	add r5, r5, #1
	cmp r5, #0xd
	blt _020C63F8
	mov r1, #0
_020C6428:
	add r0, r4, r1
	ldrb r3, [r4, r1]
	ldrb r2, [r0, #6]
	eor r2, r3, r2
	strb r2, [r4, r1]
	ldrb r3, [r0, #3]
	ldrb r2, [r0, #9]
	eor r2, r3, r2
	strb r2, [r0, #3]
	ldrb r3, [r0, #6]
	and r2, r2, #0xff
	eor r2, r3, r2
	strb r2, [r0, #6]
	ldrb r3, [r0, #9]
	ldrb r2, [r4, r1]
	eor r2, r3, r2
	strb r2, [r0, #9]
	ldrb r0, [r4, r1]
	ldrb r2, [r4, #0xc]
	add r1, r1, #1
	cmp r1, #3
	eor r0, r2, r0
	strb r0, [r4, #0xc]
	blt _020C6428
	add sp, sp, #0x10
	ldmfd sp!, {r3, r4, r5, pc}
_020C6490: .word 0x92492493
_020C6494: .word ov15_020E438C
_020C6498: .word 0x020E3D20
_020C649C: .word 0x020E3D2D
	arm_func_end FUN_ov15_020c62f4

	arm_func_start FUN_ov15_020c64a0
FUN_ov15_020c64a0: ; 0x020C64A0
	cmp r0, #0x41
	blo _020C64B4
	cmp r0, #0x5a
	subls r0, r0, #0x41
	bxls lr
_020C64B4:
	cmp r0, #0x61
	blo _020C64CC
	cmp r0, #0x7a
	subls r0, r0, #0x61
	addls r0, r0, #0x1a
	bxls lr
_020C64CC:
	cmp r0, #0x30
	blo _020C64E4
	cmp r0, #0x39
	subls r0, r0, #0x30
	addls r0, r0, #0x34
	bxls lr
_020C64E4:
	cmp r0, #0x2b
	moveq r0, #0x3e
	bxeq lr
	cmp r0, #0x2f
	moveq r0, #0x3f
	bxeq lr
	cmp r0, #0x3d
	movne r0, #1
	moveq r0, #0
	rsb r0, r0, #0
	bx lr
	arm_func_end FUN_ov15_020c64a0

	arm_func_start FUN_ov15_020c6510
FUN_ov15_020c6510: ; 0x020C6510
	stmfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, lr}
	sub sp, sp, #0x14
	add r4, r2, r2, lsl #1
	str r0, [sp]
	cmp r3, r4, lsr #2
	mov r0, r4, lsr #2
	andhs r7, r2, #3
	str r1, [sp, #4]
	str r0, [sp, #8]
	subhs r11, r2, r7
	bhs _020C6548
	add sp, sp, #0x14
	mvn r0, #0
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
_020C6548:
	cmp r11, #0
	mov r8, #0
	ble _020C65D0
	add r5, sp, #0x10
	mov r4, #6
_020C655C:
	ldr r0, [sp]
	mov r6, #0
	mov r9, r6
	add r10, r0, r8
_020C656C:
	ldrb r0, [r10, r9]
	bl FUN_ov15_020c64a0
	rsb r1, r9, #3
	mul r2, r1, r4
	orr r6, r6, r0, lsl r2
	add r9, r9, #1
	cmp r9, #4
	blt _020C656C
	mov r0, r8, asr #1
	add r0, r8, r0, lsr #30
	mov r0, r0, asr #2
	add r1, r0, r0, lsl #1
	ldr r0, [sp, #4]
	mov r2, #0
	str r6, [sp, #0x10]
	add r1, r0, r1
_020C65AC:
	rsb r0, r2, #2
	ldrb r0, [r5, r0]
	strb r0, [r1, r2]
	add r2, r2, #1
	cmp r2, #3
	blt _020C65AC
	add r8, r8, #4
	cmp r8, r11
	blt _020C655C
_020C65D0:
	cmp r7, #0
	beq _020C665C
	mov r5, #0
	mov r6, r5
	str r5, [sp, #0xc]
	ble _020C6620
	ldr r0, [sp]
	mov r9, r5
	add r4, r0, r11
	mov r8, #6
_020C65F8:
	ldrb r0, [r4, r6]
	bl FUN_ov15_020c64a0
	rsb r1, r6, #3
	mul r2, r1, r8
	orr r5, r5, r0, lsl r2
	add r6, r6, #1
	cmp r6, r7
	orr r9, r9, r5
	blt _020C65F8
	str r9, [sp, #0xc]
_020C6620:
	cmp r7, #0
	mov r3, #0
	ble _020C665C
	add r1, r11, r11, lsl #1
	mov r0, r1, asr #1
	add r1, r1, r0, lsr #30
	ldr r0, [sp, #4]
	add r2, r0, r1, asr #2
	add r1, sp, #0xc
_020C6644:
	rsb r0, r3, #2
	ldrb r0, [r1, r0]
	strb r0, [r2, r3]
	add r3, r3, #1
	cmp r3, r7
	blt _020C6644
_020C665C:
	ldr r0, [sp, #8]
	add sp, sp, #0x14
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
	arm_func_end FUN_ov15_020c6510

	arm_func_start FUN_ov15_020c6668
FUN_ov15_020c6668: ; 0x020C6668
	stmfd sp!, {r4, lr}
	sub sp, sp, #0x10
	bl FUN_ov15_020dcdd4
	mov r4, r0
	mov r0, #0x10
	bl FUN_ov15_020c3e60
	cmp r4, #1
	bne _020C66D4
	ldrb r1, [r0, #0xd0a]
	mov r0, #0
	str r1, [sp]
	str r0, [sp, #4]
	str r0, [sp, #8]
	str r0, [sp, #0xc]
	bl FUN_ov15_020c4c14
	ldr r1, _020C66EC ; =FUN_ov15_020c3008
	add r0, sp, #0
	bl FUN_ov15_020dc7b0
	cmp r0, #1
	beq _020C66C0
	cmp r0, #4
	blt _020C66E0
_020C66C0:
	mov r0, #1
	bl FUN_ov15_020c3f28
	add sp, sp, #0x10
	mov r0, #0x11
	ldmfd sp!, {r4, pc}
_020C66D4:
	add sp, sp, #0x10
	mov r0, #1
	ldmfd sp!, {r4, pc}
_020C66E0:
	mov r0, #2
	add sp, sp, #0x10
	ldmfd sp!, {r4, pc}
_020C66EC: .word FUN_ov15_020c3008
	arm_func_end FUN_ov15_020c6668

	arm_func_start FUN_ov15_020c66f0
FUN_ov15_020c66f0: ; 0x020C66F0
	stmfd sp!, {r3, r4, r5, lr}
	bl FUN_ov15_020c3f08
	mov r4, r0
	mov r0, #0x10
	bl FUN_ov15_020c3e60
	mov r5, r0
	bl FUN_ov15_020dcdd4
	cmp r0, #9
	bne _020C6780
	sub r0, r4, #0xa
	cmp r0, #5
	addls pc, pc, r0, lsl #2
	b _020C67BC
_020C6724: ; jump table
	b _020C673C ; case 0
	b _020C6774 ; case 1
	b _020C6748 ; case 2
	b _020C6754 ; case 3
	b _020C675C ; case 4
	b _020C6768 ; case 5
_020C673C:
	mov r0, r5
	bl FUN_ov15_020c67c4
_020C6744:
	b _020C6778
_020C6748:
	mov r0, r5
	bl FUN_ov15_020c6828
	b _020C6744
_020C6754:
	bl FUN_ov15_020c68b8
	b _020C6744
_020C675C:
	mov r0, r5
	bl FUN_ov15_020c68e4
	b _020C6744
_020C6768:
	mov r0, r5
	bl FUN_ov15_020c6974
	b _020C6778
_020C6774:
	bl FUN_ov15_020c6994
_020C6778:
	mov r4, r0
	b _020C67BC
_020C6780:
	cmp r4, #0xb
	beq _020C679C
	cmp r4, #0xe
	beq _020C67A0
	cmp r4, #0xf
	bne _020C67A8
	b _020C6768
_020C679C:
	b _020C6774
_020C67A0:
	bl FUN_ov15_020c94a4
	bl FUN_ov15_020c93d4
_020C67A8:
	ldrb r0, [r5, #0xd13]
	mov r1, #2
	mov r4, #0xb
	add r0, r5, r0, lsl #2
	strb r1, [r0, #0x444]
_020C67BC:
	mov r0, r4
	ldmfd sp!, {r3, r4, r5, pc}
	arm_func_end FUN_ov15_020c66f0

	arm_func_start FUN_ov15_020c67c4
FUN_ov15_020c67c4: ; 0x020C67C4
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	mov r7, r0
	mov r0, #1
	bl FUN_ov15_020c3e60
	mov r5, #4
	mov r6, r0
	mov r0, r5
	bl FUN_ov15_020c3e60
	mov r4, r0
	mov r0, r6
	mov r1, r7
	mov r2, r4
	bl FUN_ov15_020c69c0
	ldr r1, _020C6824 ; =0x020ED460
	mov r0, r4
	str r5, [r1]
	bl FUN_ov15_020d71f4
	cmp r0, #0
	moveq r0, #0xc
	ldmeqfd sp!, {r3, r4, r5, r6, r7, pc}
	mov r0, #2
	bl FUN_ov15_020c3f28
	mov r0, #0x11
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_020C6824: .word ov15_020ED460
	arm_func_end FUN_ov15_020c67c4

	arm_func_start FUN_ov15_020c6828
FUN_ov15_020c6828: ; 0x020C6828
	stmfd sp!, {r4, lr}
	mov r4, r0
	bl FUN_ov15_020d70f8
	cmp r0, #0
	beq _020C6860
	mov r0, r4
	bl FUN_ov15_020c6b30
	ldrb r0, [r4, #0xd0c]
	mov r0, r0, lsl #0x1b
	mov r0, r0, lsr #0x1f
	cmp r0, #1
	moveq r0, #0xf
	movne r0, #0xd
	ldmfd sp!, {r4, pc}
_020C6860:
	bl FUN_02003410
	ldr r2, [r4, #0xcb0]
	mov r3, #0
	subs r12, r0, r2
	ldr r0, [r4, #0xcb4]
	ldr r2, _020C68B4 ; =0x01FF6210
	sbc r0, r1, r0
	mov r1, r0, lsl #6
	orr r1, r1, r12, lsr #26
	mov r0, r12, lsl #6
	bl FUN_0201f954
	cmp r1, #0
	cmpeq r0, #0xa
	movlo r0, #0xc
	ldmlofd sp!, {r4, pc}
	ldrb r1, [r4, #0xd13]
	mov r2, #1
	mov r0, #0xb
	add r1, r4, r1, lsl #2
	strb r2, [r1, #0x444]
	ldmfd sp!, {r4, pc}
_020C68B4: .word 0x01FF6210
	arm_func_end FUN_ov15_020c6828

	arm_func_start FUN_ov15_020c68b8
FUN_ov15_020c68b8: ; 0x020C68B8
	stmfd sp!, {r3, lr}
	mov r0, #8
	bl FUN_ov15_020c3e60
	bl FUN_ov15_020c9304
	cmp r0, #0
	moveq r0, #0xe
	ldmeqfd sp!, {r3, pc}
	mov r0, #3
	bl FUN_ov15_020c3f28
	mov r0, #0x11
	ldmfd sp!, {r3, pc}
	arm_func_end FUN_ov15_020c68b8

	arm_func_start FUN_ov15_020c68e4
FUN_ov15_020c68e4: ; 0x020C68E4
	stmfd sp!, {r4, r5, r6, lr}
	mov r6, r0
	mov r0, #1
	bl FUN_ov15_020c3e60
	mov r4, r0
	bl FUN_ov15_020c9524
	movs r5, r0
	beq _020C6968
	ldrb r0, [r6, #0xd0d]
	bl FUN_ov15_020c4040
	ldrb r1, [r4, #0x15]
	cmp r1, r0
	bne _020C6920
	bl FUN_ov15_020c9560
	str r0, [r4, #0x10]
_020C6920:
	bl FUN_ov15_020c93d4
	cmp r5, #0xb
	beq _020C6960
	ldrb r1, [r6, #0xd13]
	mov r2, #1
	ldr r0, _020C6970 ; =0x020E6D8C
	add r1, r6, r1, lsl #2
	strb r2, [r1, #0x444]
	ldr r0, [r0]
	cmp r0, #4
	ldrb r0, [r4, #0xb]
	bic r0, r0, #0xf0
	orreq r0, r0, #0x10
	strb r0, [r4, #0xb]
	mov r0, #0xb
	ldmfd sp!, {r4, r5, r6, pc}
_020C6960:
	mov r0, #0xf
	ldmfd sp!, {r4, r5, r6, pc}
_020C6968:
	mov r0, #0xe
	ldmfd sp!, {r4, r5, r6, pc}
_020C6970: .word ov15_020E6D8C
	arm_func_end FUN_ov15_020c68e4

	arm_func_start FUN_ov15_020c6974
FUN_ov15_020c6974: ; 0x020C6974
	stmfd sp!, {r4, lr}
	mov r4, r0
	ldrb r0, [r4, #0xd0d]
	bl FUN_ov15_020c3f60
	ldrb r0, [r4, #0xd0d]
	bl FUN_ov15_020c4000
	mov r0, #0x10
	ldmfd sp!, {r4, pc}
	arm_func_end FUN_ov15_020c6974

	arm_func_start FUN_ov15_020c6994
FUN_ov15_020c6994: ; 0x020C6994
	stmfd sp!, {r3, lr}
	bl FUN_ov15_020d6744
	cmp r0, #0
	movne r0, #0xb
	ldmnefd sp!, {r3, pc}
	bl FUN_ov15_020d7388
	cmp r0, #0
	cmnne r0, #0x27
	moveq r0, #9
	movne r0, #0xb
	ldmfd sp!, {r3, pc}
	arm_func_end FUN_ov15_020c6994

	arm_func_start FUN_ov15_020c69c0
FUN_ov15_020c69c0: ; 0x020C69C0
	stmfd sp!, {r4, r5, r6, lr}
	mov r6, r0
	mov r4, r2
	mov r5, r1
	ldr r0, _020C6A84 ; =0x020E3D58
	mov r1, r4
	mov r2, #0x58
	bl MI_CpuCopy8
	ldr r0, [r6]
	str r0, [r4, #4]
	ldr r0, [r6, #4]
	str r0, [r4, #8]
	ldrb r0, [r5, #0xd0d]
	cmp r0, #6
	ldmhsfd sp!, {r4, r5, r6, pc}
	bl FUN_ov15_020c4040
	add r5, r5, r0, lsl #8
	ldrb r0, [r5, #0xc0]
	cmp r0, #0
	mov r0, #0
	beq _020C6A54
	str r0, [r4, #0xc]
	add r0, r5, #0xc0
	bl FUN_ov15_020c6a88
	str r0, [r4, #0x10]
	ldrb r0, [r5, #0xd0]
	bl FUN_ov15_020c6adc
	str r0, [r4, #0x14]
	add r0, r5, #0xc4
	bl FUN_ov15_020c6a88
	str r0, [r4, #0x18]
	add r0, r5, #0xc8
	bl FUN_ov15_020c6a88
	str r0, [r4, #0x1c]
	add r0, r5, #0xcc
	bl FUN_ov15_020c6a88
	b _020C6A6C
_020C6A54:
	mov r1, #1
	str r1, [r4, #0xc]
	str r0, [r4, #0x10]
	str r0, [r4, #0x14]
	str r0, [r4, #0x18]
	str r0, [r4, #0x1c]
_020C6A6C:
	str r0, [r4, #0x20]
	mov r1, #0x240
	mov r0, #0
	str r1, [r4, #0x2c]
	str r0, [r4, #0x30]
	ldmfd sp!, {r4, r5, r6, pc}
_020C6A84: .word 0x020E3D58
	arm_func_end FUN_ov15_020c69c0

	arm_func_start FUN_ov15_020c6a88
FUN_ov15_020c6a88: ; 0x020C6A88
	ldrb r3, [r0]
	ldrb r2, [r0, #1]
	ldrb r1, [r0, #2]
	mov r3, r3, lsl #0x18
	orr r3, r3, #0
	orr r2, r3, r2, lsl #16
	ldrb r0, [r0, #3]
	orr r1, r2, r1, lsl #8
	orr r3, r1, r0
	mov r1, r3, lsr #0x18
	mov r0, r3, lsr #8
	mov r2, r3, lsl #8
	mov r3, r3, lsl #0x18
	and r1, r1, #0xff
	and r0, r0, #0xff00
	and r2, r2, #0xff0000
	orr r0, r1, r0
	and r1, r3, #0xff000000
	orr r0, r2, r0
	orr r0, r1, r0
	bx lr
	arm_func_end FUN_ov15_020c6a88

	arm_func_start FUN_ov15_020c6adc
FUN_ov15_020c6adc: ; 0x020C6ADC
	rsb r1, r0, #0x20
	cmp r1, #0
	mvn r3, #0
	mov r0, #0
	ble _020C6B00
_020C6AF0:
	add r0, r0, #1
	cmp r0, r1
	mov r3, r3, lsl #1
	blt _020C6AF0
_020C6B00:
	mov r1, r3, lsr #0x18
	mov r0, r3, lsr #8
	mov r2, r3, lsl #8
	mov r3, r3, lsl #0x18
	and r1, r1, #0xff
	and r0, r0, #0xff00
	and r2, r2, #0xff0000
	orr r0, r1, r0
	and r1, r3, #0xff000000
	orr r0, r2, r0
	orr r0, r1, r0
	bx lr
	arm_func_end FUN_ov15_020c6adc

	arm_func_start FUN_ov15_020c6b30
FUN_ov15_020c6b30: ; 0x020C6B30
	stmfd sp!, {r4, lr}
	sub sp, sp, #8
	mov r4, r0
	ldrb r0, [r4, #0xd0d]
	cmp r0, #6
	addhs sp, sp, #8
	ldmhsfd sp!, {r4, pc}
	bl FUN_ov15_020c4040
	add r4, r4, r0, lsl #8
	ldrb r0, [r4, #0xc0]
	ldrb r2, [r4, #0xc8]
	ldrb r1, [r4, #0xc9]
	cmp r0, #0
	ldrb r3, [r4, #0xca]
	add r1, r2, r1
	ldrb r2, [r4, #0xcb]
	add r1, r3, r1
	addne sp, sp, #8
	add r0, r2, r1
	ldmnefd sp!, {r4, pc}
	cmp r0, #0
	addeq sp, sp, #8
	ldmeqfd sp!, {r4, pc}
	add r0, r4, #0xc8
	bl FUN_ov15_020c6a88
	str r0, [sp, #4]
	add r0, r4, #0xcc
	bl FUN_ov15_020c6a88
	str r0, [sp]
	add r0, sp, #4
	add r1, sp, #0
	bl FUN_ov15_020d7130
	add sp, sp, #8
	ldmfd sp!, {r4, pc}
	arm_func_end FUN_ov15_020c6b30

	arm_func_start FUN_ov15_020c6bb8
FUN_ov15_020c6bb8: ; 0x020C6BB8
	ldr r1, _020C6BC4 ; =0x020E441C
	str r0, [r1]
	bx lr
_020C6BC4: .word ov15_020E441C
	arm_func_end FUN_ov15_020c6bb8

	arm_func_start FUN_ov15_020c6bc8
FUN_ov15_020c6bc8: ; 0x020C6BC8
	ldr r0, _020C6BD4 ; =0x020E441C
	ldr r0, [r0]
	bx lr
_020C6BD4: .word ov15_020E441C
	arm_func_end FUN_ov15_020c6bc8

	arm_func_start FUN_ov15_020c6bd8
FUN_ov15_020c6bd8: ; 0x020C6BD8
	stmfd sp!, {r4, r5, r6, r7, r8, lr}
	ldr r6, _020C6CE0 ; =0x020E8F2C
	mov r5, r0
	ldr r0, [r6, #4]
	mov r4, r1
	cmp r0, #0
	ldr r2, [r5, #0x40]
	movne r0, #2
	ldmnefd sp!, {r4, r5, r6, r7, r8, pc}
	ldr r7, _020C6CE4 ; =0x000013F4
	mov r8, #0
	mov r0, r8
	mov r1, r7
	blx r2
	str r0, [r6, #4]
	cmp r0, #0
	moveq r0, #2
	ldmeqfd sp!, {r4, r5, r6, r7, r8, pc}
	mov r1, r8
	mov r2, r7
	bl MI_CpuFill8
	ldr r0, [r6, #4]
	mov r1, r8
	add r0, r0, #0x1000
	str r4, [r0, #0x314]
	str r8, [r6, #8]
	ldr r0, [r6, #4]
	mov r2, #0x1c4
	add r0, r0, #8
	add r0, r0, #0x1000
	bl MI_CpuFill8
	ldr r0, [r6, #4]
	ldr r1, _020C6CE8 ; =0x00004E84
	add r0, r0, #0x1000
	str r1, [r0, #8]
	ldr r7, [r6, #4]
	mov r4, #4
	add r0, r7, #0x1cc
	add r6, r0, #0x1000
_020C6C74:
	ldmia r5!, {r0, r1, r2, r3}
	stmia r6!, {r0, r1, r2, r3}
	subs r4, r4, #1
	bne _020C6C74
	ldmia r5, {r0, r1}
	stmia r6, {r0, r1}
	add r0, r7, #0x1100
	mov r4, #0
	strh r4, [r0, #0xfe]
	ldr r5, _020C6CE0 ; =0x020E8F2C
	mov r0, #1
	ldr r1, [r5, #4]
	add r1, r1, #0x1000
	strb r4, [r1, #0x20b]
	bl FUN_ov15_020c6fa4
	ldr r1, [r5, #4]
	add r1, r1, #0x1000
	str r0, [r1, #4]
	ldr r0, [r5, #4]
	add r0, r0, #0x1000
	ldr r0, [r0, #4]
	cmp r0, #0
	ldmnefd sp!, {r4, r5, r6, r7, r8, pc}
	str r4, [r5]
	bl FUN_ov15_020c6cec
	mov r0, r4
	ldmfd sp!, {r4, r5, r6, r7, r8, pc}
_020C6CE0: .word ov15_020E8F2C
_020C6CE4: .word 0x000013F4
_020C6CE8: .word 0x00004E84
	arm_func_end FUN_ov15_020c6bd8

	arm_func_start FUN_ov15_020c6cec
FUN_ov15_020c6cec: ; 0x020C6CEC
	stmfd sp!, {r4, lr}
	sub sp, sp, #8
	ldr r4, _020C6D8C ; =0x020E8F2C
	ldr r0, [r4, #4]
	add r0, r0, #0x3d8
	add r0, r0, #0x1000
	bl OS_InitMutex
	ldr r0, [r4, #4]
	mov r1, #0
	add r0, r0, #0x1000
	str r1, [r0, #0x3f0]
	ldr r1, [r4, #4]
	add r0, r1, #0x1000
	ldr r0, [r0, #0x384]
	cmp r0, #0
	beq _020C6D44
	add r0, r1, #0x318
	add r0, r0, #0x1000
	bl OS_IsThreadTerminated
	cmp r0, #0
	addeq sp, sp, #8
	ldmeqfd sp!, {r4, pc}
_020C6D44:
	ldr r4, _020C6D8C ; =0x020E8F2C
	mov r0, #0x1000
	ldr r12, [r4, #4]
	mov r3, #0x10
	str r0, [sp]
	add r0, r12, #0x318
	ldr r1, _020C6D90 ; =FUN_ov15_020c70ac
	ldr r2, _020C6D94 ; =0x020E8F30
	str r3, [sp, #4]
	add r0, r0, #0x1000
	add r3, r12, #0x1000
	bl OS_CreateThread
	ldr r0, [r4, #4]
	add r0, r0, #0x318
	add r0, r0, #0x1000
	bl OS_WakeupThreadDirect
	add sp, sp, #8
	ldmfd sp!, {r4, pc}
_020C6D8C: .word ov15_020E8F2C
_020C6D90: .word FUN_ov15_020c70ac
_020C6D94: .word ov15_020E8F30
	arm_func_end FUN_ov15_020c6cec

	arm_func_start FUN_ov15_020c6d98
FUN_ov15_020c6d98: ; 0x020C6D98
	stmfd sp!, {r4, lr}
	ldr r4, _020C6E30 ; =0x020E8F2C
	ldr r0, [r4, #4]
	cmp r0, #0
	ldmeqfd sp!, {r4, pc}
	add r0, r0, #0x3d8
	add r0, r0, #0x1000
	bl OS_LockMutex
	ldr r0, [r4, #4]
	mov r1, #1
	add r0, r0, #0x1000
	str r1, [r0, #0x3f0]
	ldr r0, [r4, #4]
	add r0, r0, #0x3d8
	add r0, r0, #0x1000
	bl OS_UnlockMutex
	ldr r0, [r4, #4]
	add r0, r0, #0x1000
	ldr r0, [r0, #0x314]
	cmp r0, #0
	beq _020C6DF0
	bl FUN_ov15_020c8258
_020C6DF0:
	ldr r4, _020C6E30 ; =0x020E8F2C
	ldr r1, [r4, #4]
	add r0, r1, #0x1000
	ldr r0, [r0, #0x384]
	cmp r0, #0
	ldmeqfd sp!, {r4, pc}
	add r0, r1, #0x318
	add r0, r0, #0x1000
	bl OS_IsThreadTerminated
	cmp r0, #0
	ldmnefd sp!, {r4, pc}
	ldr r0, [r4, #4]
	add r0, r0, #0x318
	add r0, r0, #0x1000
	bl OS_JoinThread
	ldmfd sp!, {r4, pc}
_020C6E30: .word ov15_020E8F2C
	arm_func_end FUN_ov15_020c6d98

	arm_func_start FUN_ov15_020c6e34
FUN_ov15_020c6e34: ; 0x020C6E34
	stmfd sp!, {r4, r5, r6, lr}
	ldr r0, _020C6E80 ; =0x020E8F2C
	ldr r0, [r0, #4]
	cmp r0, #0
	ldmeqfd sp!, {r4, r5, r6, pc}
	add r1, r0, #0x1000
	ldr r0, [r1, #0x314]
	ldr r6, [r1, #0x210]
	cmp r0, #0
	beq _020C6E60
	bl FUN_ov15_020c8778
_020C6E60:
	ldr r4, _020C6E80 ; =0x020E8F2C
	mov r5, #0
	ldr r1, [r4, #4]
	mov r0, r5
	mov r2, r5
	blx r6
	str r5, [r4, #4]
	ldmfd sp!, {r4, r5, r6, pc}
_020C6E80: .word ov15_020E8F2C
	arm_func_end FUN_ov15_020c6e34

	arm_func_start FUN_ov15_020c6e84
FUN_ov15_020c6e84: ; 0x020C6E84
	stmfd sp!, {r4, lr}
	ldr r4, _020C6EC8 ; =0x020E8F2C
	ldr r1, [r4, #4]
	add r0, r1, #0x1000
	ldr r0, [r0, #0x384]
	cmp r0, #0
	ldmeqfd sp!, {r4, pc}
	add r0, r1, #0x318
	add r0, r0, #0x1000
	bl OS_IsThreadTerminated
	cmp r0, #0
	ldmnefd sp!, {r4, pc}
	ldr r0, [r4, #4]
	add r0, r0, #0x318
	add r0, r0, #0x1000
	bl OS_JoinThread
	ldmfd sp!, {r4, pc}
_020C6EC8: .word ov15_020E8F2C
	arm_func_end FUN_ov15_020c6e84

	arm_func_start FUN_ov15_020c6ecc
FUN_ov15_020c6ecc: ; 0x020C6ECC
	stmfd sp!, {r4, lr}
	ldr r4, _020C6F10 ; =0x020E8F2C
	ldr r0, [r4, #4]
	cmp r0, #0
	moveq r0, #0x16
	ldmeqfd sp!, {r4, pc}
	add r0, r0, #0x3d8
	add r0, r0, #0x1000
	bl OS_LockMutex
	ldr r1, [r4, #4]
	add r0, r1, #0x3d8
	add r1, r1, #0x1000
	add r0, r0, #0x1000
	ldr r4, [r1, #4]
	bl OS_UnlockMutex
	mov r0, r4
	ldmfd sp!, {r4, pc}
_020C6F10: .word ov15_020E8F2C
	arm_func_end FUN_ov15_020c6ecc

	arm_func_start FUN_ov15_020c6f14
FUN_ov15_020c6f14: ; 0x020C6F14
	stmfd sp!, {r4, lr}
	ldr r1, _020C6F90 ; =0x020E8F2C
	mov r4, r0
	ldr r1, [r1, #4]
	cmp r1, #0
	bne _020C6F38
	mov r1, #0
	mov r2, #0x1c4
	bl MI_CpuFill8
_020C6F38:
	ldr r0, _020C6F90 ; =0x020E8F2C
	mov r1, r4
	ldr r0, [r0, #4]
	mov r2, #0x1c4
	add r0, r0, #8
	add r0, r0, #0x1000
	bl MI_CpuCopy8
	ldr r1, [r4]
	ldr r0, _020C6F94 ; =0x00004E20
	cmp r1, r0
	blt _020C6F70
	ldr r0, _020C6F98 ; =0x00007530
	cmp r1, r0
	blt _020C6F78
_020C6F70:
	ldr r0, _020C6F9C ; =0x00005206
	str r0, [r4]
_020C6F78:
	ldr r1, [r4]
	ldr r0, _020C6FA0 ; =0x00004E84
	cmp r1, r0
	rsbge r0, r1, #0
	strge r0, [r4]
	ldmfd sp!, {r4, pc}
_020C6F90: .word ov15_020E8F2C
_020C6F94: .word 0x00004E20
_020C6F98: .word 0x00007530
_020C6F9C: .word 0x00005206
_020C6FA0: .word 0x00004E84
	arm_func_end FUN_ov15_020c6f14

	arm_func_start FUN_ov15_020c6fa4
FUN_ov15_020c6fa4: ; 0x020C6FA4
	stmfd sp!, {r3, r4, r5, lr}
	ldr r5, _020C7094 ; =0x020E441C
	mov r4, r0
	ldr r0, [r5]
	ldr r1, _020C7098 ; =0x020E4438
	bl FUN_02023fe0
	cmp r0, #0
	movne r0, #1
	strne r0, [r5, #0x14]
	ldr r0, _020C709C ; =0x020E8F2C
	ldr r2, _020C7094 ; =0x020E441C
	ldr r0, [r0, #4]
	ldr r1, _020C70A0 ; =0x020E441C
	add r0, r0, #0x1000
	ldr r3, [r0, #0x20c]
	str r3, [r2, #0xc]
	ldr r3, [r0, #0x210]
	str r3, [r2, #0x10]
	ldr r0, [r0, #0x314]
	bl FUN_ov15_020c7ff0
	cmp r0, #0
	movne r0, #4
	ldmnefd sp!, {r3, r4, r5, pc}
	cmp r4, #1
	bne _020C7010
	ldr r0, _020C70A4 ; =0x020E8F38
	bl FUN_ov15_020ca8e0
_020C7010:
	ldr r4, _020C709C ; =0x020E8F2C
	ldr r1, [r4, #4]
	add r0, r1, #0x1000
	add r2, r1, #0x1cc
	ldr r0, [r0, #0x314]
	add r1, r1, #0x1200
	add r2, r2, #0x1000
	bl FUN_ov15_020c7784
	ldr r1, [r4, #4]
	add r1, r1, #0x1000
	str r0, [r1, #4]
	ldr r0, [r4, #4]
	add r0, r0, #0x1000
	ldr r1, [r0, #4]
	cmp r1, #0
	movne r0, #4
	ldmnefd sp!, {r3, r4, r5, pc}
	ldr r0, [r0, #0x314]
	bl FUN_ov15_020c8100
	cmp r0, #0
	movne r0, #4
	ldmnefd sp!, {r3, r4, r5, pc}
	ldr r0, _020C70A8 ; =0x020939a4
	ldr r0, [r0, #4]
	bl OS_GetThreadPriority
	ldr r1, [r4, #4]
	mov r2, r0
	add r0, r1, #0x1000
	ldr r0, [r0, #0x314]
	sub r1, r2, #1
	bl FUN_ov15_020c819c
	mov r0, #0
	ldmfd sp!, {r3, r4, r5, pc}
_020C7094: .word ov15_020E441C
_020C7098: .word ov15_020E4438
_020C709C: .word ov15_020E8F2C
_020C70A0: .word ov15_020E441C
_020C70A4: .word ov15_020E8F38
_020C70A8: .word 0x020939a4
	arm_func_end FUN_ov15_020c6fa4

	arm_func_start FUN_ov15_020c70ac
FUN_ov15_020c70ac: ; 0x020C70AC
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, lr}
	mov r8, #0
_020C70B4:
	ldr r0, _020C7358 ; =0x020E8F2C
	ldr r0, [r0, #4]
	add r0, r0, #0x1000
	ldr r1, [r0, #0x314]
	add r0, r1, #0x1000
	ldr r0, [r0, #0xbe0]
	cmp r0, #0
	beq _020C7104
	add r0, r1, #0x374
	add r0, r0, #0x1800
	bl OS_IsThreadTerminated
	cmp r0, #0
	bne _020C7104
	ldr r0, _020C7358 ; =0x020E8F2C
	ldr r0, [r0, #4]
	add r0, r0, #0x1000
	ldr r0, [r0, #0x314]
	add r0, r0, #0x374
	add r0, r0, #0x1800
	bl OS_JoinThread
_020C7104:
	ldr r0, _020C7358 ; =0x020E8F2C
	ldr r0, [r0, #4]
	add r0, r0, #0x1000
	ldr r1, [r0, #0x314]
	add r1, r1, #0x1000
	ldr r1, [r1, #0x20]
	cmp r1, #8
	beq _020C7198
	ldr r1, _020C735C ; =0x00004E84
	str r1, [r0, #8]
	ldr r0, _020C7358 ; =0x020E8F2C
	ldr r0, [r0, #4]
	add r0, r0, #0x1000
	ldr r0, [r0, #0x314]
	add r0, r0, #0x1000
	ldr r0, [r0, #0x20]
	cmp r0, #7
	bne _020C7158
	mov r0, #0x14
	bl FUN_ov15_020c7938
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_020C7158:
	cmp r8, #2
	ble _020C7194
	cmp r0, #2
	bne _020C7174
	mov r0, #9
	bl FUN_ov15_020c7938
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_020C7174:
	cmp r0, #3
	bne _020C7188
	mov r0, #0xb
	bl FUN_ov15_020c7938
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_020C7188:
	mov r0, #0xd
	bl FUN_ov15_020c7938
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_020C7194:
	b _020C71F8
_020C7198:
	bl FUN_ov15_020c7368
	cmp r0, #0x10
	beq _020C71C0
	cmp r0, #0x11
	beq _020C71E0
	cmp r0, #0x15
	bne _020C71E8
	mov r0, #0x15
	bl FUN_ov15_020c7938
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_020C71C0:
	cmp r8, #2
	ble _020C71D4
	mov r0, #0x10
	bl FUN_ov15_020c7938
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_020C71D4:
	add r8, r8, #1
	mov r11, #0
	b _020C7200
_020C71E0:
	bl FUN_ov15_020c7938
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_020C71E8:
	cmp r8, #2
	blt _020C71F8
	bl FUN_ov15_020c7938
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_020C71F8:
	add r8, r8, #1
	mov r11, #1
_020C7200:
	bl FUN_02003410
	mov r9, r0
	mov r10, r1
	bl FUN_02003410
	subs r2, r0, r9
	sbc r0, r1, r10
	mov r1, r0, lsl #6
	ldr r7, _020C7360 ; =0x000082EA
	orr r1, r1, r2, lsr #26
	mov r0, r2, lsl #6
	mov r3, #0
	mov r2, r7
	bl FUN_0201f954
	ldr r6, _020C7364 ; =0x00001388
	cmp r1, #0
	cmpeq r0, r6
	bhs _020C72DC
	ldr r4, _020C7358 ; =0x020E8F2C
	mov r5, #0
_020C724C:
	ldr r0, [r4, #4]
	add r0, r0, #0x3d8
	add r0, r0, #0x1000
	bl OS_LockMutex
	ldr r2, [r4, #4]
	add r0, r2, #0x1000
	ldr r1, [r0, #0x3f0]
	cmp r1, #1
	bne _020C7298
	ldr r2, _020C735C ; =0x00004E84
	ldr r1, _020C7358 ; =0x020E8F2C
	str r2, [r0, #8]
	ldr r0, [r1, #4]
	add r0, r0, #0x3d8
	add r0, r0, #0x1000
	bl OS_UnlockMutex
	mov r0, #0x14
	bl FUN_ov15_020c7938
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_020C7298:
	add r0, r2, #0x3d8
	add r0, r0, #0x1000
	bl OS_UnlockMutex
	mov r0, r6
	bl OS_Sleep
	bl FUN_02003410
	subs r2, r0, r9
	sbc r0, r1, r10
	mov r1, r0, lsl #6
	orr r1, r1, r2, lsr #26
	mov r0, r2, lsl #6
	mov r2, r7
	mov r3, r5
	bl FUN_0201f954
	cmp r1, #0
	cmpeq r0, r6
	blo _020C724C
_020C72DC:
	ldr r4, _020C7358 ; =0x020E8F2C
	ldr r0, [r4, #4]
	add r0, r0, #0x1000
	ldr r0, [r0, #0x314]
	bl FUN_ov15_020c8778
	ldr r0, [r4, #4]
	add r0, r0, #0x3d8
	add r0, r0, #0x1000
	bl OS_LockMutex
	mov r0, r11
	bl FUN_ov15_020c6fa4
	ldr r1, [r4, #4]
	add r1, r1, #0x1000
	str r0, [r1, #4]
	ldr r2, [r4, #4]
	add r0, r2, #0x1000
	ldr r1, [r0, #4]
	cmp r1, #0
	beq _020C7344
	ldr r1, _020C735C ; =0x00004E84
	str r1, [r0, #8]
	ldr r0, [r4, #4]
	add r0, r0, #0x3d8
	add r0, r0, #0x1000
	bl OS_UnlockMutex
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_020C7344:
	add r0, r2, #0x3d8
	add r0, r0, #0x1000
	bl OS_UnlockMutex
	b _020C70B4
	arm_func_end FUN_ov15_020c70ac

	arm_func_start FUN_ov15_020c7354
FUN_ov15_020c7354: ; 0x020C7354
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_020C7358: .word ov15_020E8F2C
_020C735C: .word 0x00004E84
_020C7360: .word 0x000082EA
_020C7364: .word 0x00001388
	arm_func_end FUN_ov15_020c7354

	arm_func_start FUN_ov15_020c7368
FUN_ov15_020c7368: ; 0x020C7368
	stmfd sp!, {r4, r5, r6, r7, r8, lr}
	ldr r4, _020C74F4 ; =0x020E8F2C
	mov r6, #0
	ldr r0, [r4, #4]
	mov r1, r6
	add r2, r0, #0x1000
	ldr r0, [r2, #0x314]
	ldr r7, [r2, #0x20c]
	ldr r8, [r2, #0x210]
	bl FUN_ov15_020c8f08
	cmp r0, #1
	beq _020C73B0
	ldr r0, [r4, #4]
	ldr r1, _020C74F8 ; =0x00004E84
	add r0, r0, #0x1000
	str r1, [r0, #8]
	mov r0, #0xe
	ldmfd sp!, {r4, r5, r6, r7, r8, pc}
_020C73B0:
	bl FUN_ov15_020c7504
	cmp r0, #0
	movne r0, #0xe
	ldmnefd sp!, {r4, r5, r6, r7, r8, pc}
	ldr r0, [r4, #4]
	ldr r5, _020C74F8 ; =0x00004E84
	add r0, r0, #0x1000
	ldr r1, [r0, #8]
	cmp r1, r5
	bge _020C7450
	sub r0, r5, #0x62
	cmp r1, r0
	bne _020C7448
	ldr r1, _020C74FC ; =0x0000071F
	mov r0, r6
	blx r7
	movs r7, r0
	ldreq r1, [r4, #4]
	moveq r0, #2
	addeq r1, r1, #0x1000
	streq r5, [r1, #8]
	ldmeqfd sp!, {r4, r5, r6, r7, r8, pc}
	add r1, r7, #0x1f
	ldr r0, _020C7500 ; =0x020E8F38
	bic r1, r1, #0x1f
	bl FUN_ov15_020cbc20
	cmp r0, #1
	mov r0, r6
	mov r1, r7
	mov r2, r6
	beq _020C7444
	blx r8
	ldr r1, [r4, #4]
	mov r0, #0xf
	add r1, r1, #0x1000
	str r5, [r1, #8]
	ldmfd sp!, {r4, r5, r6, r7, r8, pc}
_020C7444:
	blx r8
_020C7448:
	mov r0, #0x15
	ldmfd sp!, {r4, r5, r6, r7, r8, pc}
_020C7450:
	add r0, r5, #4
	cmp r1, r0
	beq _020C746C
	add r0, r5, #8
	cmp r1, r0
	beq _020C748C
	b _020C74EC
_020C746C:
	ldr r0, _020C7500 ; =0x020E8F38
	bl FUN_ov15_020cbc70
	ldr r0, [r4, #4]
	add r1, r5, #4
	add r0, r0, #0x1000
	str r1, [r0, #8]
	mov r0, #0x10
	ldmfd sp!, {r4, r5, r6, r7, r8, pc}
_020C748C:
	mov r0, r6
	mov r1, #0x700
	blx r7
	movs r7, r0
	bne _020C74B8
	ldr r0, [r4, #4]
	add r1, r5, #8
	add r0, r0, #0x1000
	str r1, [r0, #8]
	mov r0, #0x11
	ldmfd sp!, {r4, r5, r6, r7, r8, pc}
_020C74B8:
	add r0, r7, #0x1f
	bic r0, r0, #0x1f
	bl FUN_ov15_020cbbd8
	mov r0, r6
	mov r1, r7
	mov r2, r6
	blx r8
	ldr r0, [r4, #4]
	add r1, r5, #8
	add r0, r0, #0x1000
	str r1, [r0, #8]
	mov r0, #0x11
	ldmfd sp!, {r4, r5, r6, r7, r8, pc}
_020C74EC:
	mov r0, #0x12
	ldmfd sp!, {r4, r5, r6, r7, r8, pc}
_020C74F4: .word ov15_020E8F2C
_020C74F8: .word 0x00004E84
_020C74FC: .word 0x0000071F
_020C7500: .word ov15_020E8F38
	arm_func_end FUN_ov15_020c7368

	arm_func_start FUN_ov15_020c7504
FUN_ov15_020c7504: ; 0x020C7504
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	ldr r0, _020C7754 ; =0x020E8F2C
	mov r1, #0
	ldr r0, [r0, #4]
	str r1, [sp]
	add r0, r0, #0x1000
	ldr r0, [r0, #0x314]
	ldr r1, _020C7758 ; =0x020E4458
	bl FUN_ov15_020c91ac
	str r0, [sp]
	cmp r0, #0
	beq _020C7538
	bl FUN_ov15_020cc73c
_020C7538:
	ldr r4, _020C7754 ; =0x020E8F2C
	mov r6, #0
	ldr r0, [r4, #4]
	ldr r5, _020C775C ; =0x02099E60
	str r6, [sp]
	str r6, [r5]
	add r0, r0, #0x1000
	ldr r0, [r0, #0x314]
	ldr r1, _020C7760 ; =0x020E4460
	bl FUN_ov15_020c91ac
	bl FUN_02024640
	ldr r1, [r5]
	cmp r1, #0x22
	bne _020C7588
	ldr r0, [r4, #4]
	ldr r1, _020C7764 ; =0x00004E85
	add r0, r0, #0x1000
	str r1, [r0, #8]
	mov r0, #0xc
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_020C7588:
	cmp r0, #0xc8
	beq _020C75AC
	ldr r1, [r4, #4]
	add r0, r0, #0x1d8
	add r2, r0, #0x5800
	add r0, r1, #0x1000
	str r2, [r0, #8]
	mov r0, #0x12
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_020C75AC:
	ldr r2, [r4, #4]
	ldr r1, _020C7768 ; =0x020E446C
	add r0, r2, #0x1000
	add r2, r2, #0xc
	ldr r0, [r0, #0x314]
	add r2, r2, #0x1000
	mov r3, #4
	bl FUN_ov15_020c9200
	cmp r0, #0
	ldr r0, [r4, #4]
	ldrle r1, _020C7764 ; =0x00004E85
	addle r0, r0, #0x1000
	strle r1, [r0, #8]
	movle r0, #0xe
	ldmlefd sp!, {r3, r4, r5, r6, r7, pc}
	add r0, r0, #0xc
	add r1, sp, #0
	add r0, r0, #0x1000
	mov r2, #0xa
	bl FUN_0202457c
	ldr r7, [r4, #4]
	mov r5, r0
	add r0, r7, #0xc
	add r0, r0, #0x1000
	bl _strlen
	add r1, r7, #0xc
	add r1, r1, #0x1000
	ldr r2, [sp]
	add r0, r1, r0
	cmp r2, r0
	ldrne r1, _020C7764 ; =0x00004E85
	addne r0, r7, #0x1000
	strne r1, [r0, #8]
	movne r0, #0xc
	ldmnefd sp!, {r3, r4, r5, r6, r7, pc}
	add r0, r5, #0xe20
	add r1, r0, #0x4000
	add r0, r7, #0x1000
	str r1, [r0, #8]
	cmp r5, #0x64
	bge _020C774C
	ldr r0, [r4, #4]
	ldr r1, _020C776C ; =0x020E4478
	add r0, r0, #0x1000
	strb r6, [r0, #0x52]
	ldr r0, [r4, #4]
	ldr r3, _020C7770 ; =0x0000012D
	add r0, r0, #0x1000
	strb r6, [r0, #0x1f]
	ldr r0, [r4, #4]
	add r0, r0, #0x1000
	strb r6, [r0, #0x17f]
	ldr r0, [r4, #4]
	add r0, r0, #0x1000
	strb r6, [r0, #0x10]
	ldr r0, [r4, #4]
	add r0, r0, #0x1000
	strb r6, [r0, #0x188]
	ldr r2, [r4, #4]
	add r0, r2, #0x1000
	add r2, r2, #0x52
	ldr r0, [r0, #0x314]
	add r2, r2, #0x1000
	bl FUN_ov15_020c9200
	ldr r2, [r4, #4]
	ldr r1, _020C7774 ; =0x020E4480
	add r0, r2, #0x1000
	add r2, r2, #0x1f
	ldr r0, [r0, #0x314]
	add r2, r2, #0x1000
	mov r3, #0x33
	bl FUN_ov15_020c9200
	ldr r2, [r4, #4]
	ldr r1, _020C7778 ; =0x020E4488
	add r0, r2, #0x1000
	add r2, r2, #0x7f
	ldr r0, [r0, #0x314]
	add r2, r2, #0x1100
	mov r3, #9
	bl FUN_ov15_020c9200
	ldr r2, [r4, #4]
	ldr r1, _020C777C ; =0x020E4494
	add r0, r2, #0x1000
	add r2, r2, #0x10
	ldr r0, [r0, #0x314]
	add r2, r2, #0x1000
	mov r3, #0xf
	bl FUN_ov15_020c9200
	ldr r2, [r4, #4]
	ldr r1, _020C7780 ; =0x020E44A0
	add r0, r2, #0x1000
	add r2, r2, #0x188
	ldr r0, [r0, #0x314]
	add r2, r2, #0x1000
	mov r3, #0x41
	bl FUN_ov15_020c924c
	ldr r0, [r4, #4]
	cmp r5, #0x28
	add r0, r0, #0x1000
	strb r6, [r0, #0x1b3]
	movne r0, #1
	strne r0, [r4, #8]
	moveq r0, #2
	streq r0, [r4, #8]
_020C774C:
	mov r0, #0
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_020C7754: .word ov15_020E8F2C
_020C7758: .word ov15_020E4458
_020C775C: .word unk_02099E60
_020C7760: .word ov15_020E4460
_020C7764: .word 0x00004E85
_020C7768: .word ov15_020E446C
_020C776C: .word ov15_020E4478
_020C7770: .word 0x0000012D
_020C7774: .word ov15_020E4480
_020C7778: .word ov15_020E4488
_020C777C: .word ov15_020E4494
_020C7780: .word ov15_020E44A0
	arm_func_end FUN_ov15_020c7504

	arm_func_start FUN_ov15_020c7784
FUN_ov15_020c7784: ; 0x020C7784
	stmfd sp!, {r4, r5, r6, r7, lr}
	sub sp, sp, #0x94
	ldr r3, _020C7910 ; =0x020E8F2C
	mov r5, r0
	ldr r0, [r3, #0x10]
	ldr r6, [r3, #0xc]
	cmp r0, #0
	mov r7, r1
	mov r4, r2
	cmpeq r6, #0
	bne _020C77E4
	ldr r6, _020C7914 ; =0x020E44AC
	mov r0, r6
	bl _strlen
	mov r3, r0
	ldr r1, _020C7918 ; =0x020E44B8
	mov r0, r5
	mov r2, r6
	bl FUN_ov15_020c89c0
	cmp r0, #0
	beq _020C7840
	add sp, sp, #0x94
	mov r0, #8
	ldmfd sp!, {r4, r5, r6, r7, pc}
_020C77E4:
	ldr r6, _020C791C ; =0x020E44C0
	mov r0, r6
	bl _strlen
	mov r3, r0
	ldr r1, _020C7918 ; =0x020E44B8
	mov r0, r5
	mov r2, r6
	bl FUN_ov15_020c89c0
	cmp r0, #0
	addne sp, sp, #0x94
	movne r0, #8
	ldmnefd sp!, {r4, r5, r6, r7, pc}
	mov r0, r7
	bl _strlen
	mov r3, r0
	ldr r1, _020C7920 ; =0x020E44C8
	mov r0, r5
	mov r2, r7
	bl FUN_ov15_020c89c0
	cmp r0, #0
	addne sp, sp, #0x94
	movne r0, #8
	ldmnefd sp!, {r4, r5, r6, r7, pc}
_020C7840:
	add r6, sp, #0
	ldr r1, _020C7924 ; =0x020E8F38
	mov r0, r6
	bl FUN_ov15_020c79fc
	cmp r0, #0
	addeq sp, sp, #0x94
	moveq r0, #5
	ldmeqfd sp!, {r4, r5, r6, r7, pc}
	ldr r1, _020C7928 ; =0x020E8F64
	mov r0, r5
	ldr r2, [r1]
	mov r1, r6
	bl FUN_ov15_020c7c9c
	cmp r0, #0
	addeq sp, sp, #0x94
	moveq r0, #8
	ldmeqfd sp!, {r4, r5, r6, r7, pc}
	ldr r0, _020C7910 ; =0x020E8F2C
	ldr r0, [r0]
	cmp r0, #1
	bne _020C78C4
	ldr r6, _020C792C ; =0x020E44D0
	mov r0, r6
	bl _strlen
	mov r3, r0
	ldr r1, _020C7930 ; =0x020E44D4
	mov r0, r5
	mov r2, r6
	bl FUN_ov15_020c89c0
	cmp r0, #0
	addne sp, sp, #0x94
	movne r0, #8
	ldmnefd sp!, {r4, r5, r6, r7, pc}
_020C78C4:
	mov r0, r4
	bl FUN_020246c4
	cmp r0, #0
	beq _020C7904
	mov r0, r4
	bl FUN_020246c4
	mov r3, r0
	ldr r1, _020C7934 ; =0x020E44DC
	mov r0, r5
	mov r2, r4
	mov r3, r3, lsl #1
	bl FUN_ov15_020c89c0
	cmp r0, #0
	addne sp, sp, #0x94
	movne r0, #8
	ldmnefd sp!, {r4, r5, r6, r7, pc}
_020C7904:
	mov r0, #0
	add sp, sp, #0x94
	ldmfd sp!, {r4, r5, r6, r7, pc}
_020C7910: .word ov15_020E8F2C
_020C7914: .word ov15_020E44AC
_020C7918: .word ov15_020E44B8
_020C791C: .word ov15_020E44C0
_020C7920: .word ov15_020E44C8
_020C7924: .word ov15_020E8F38
_020C7928: .word ov15_020E8F64
_020C792C: .word ov15_020E44D0
_020C7930: .word ov15_020E44D4
_020C7934: .word ov15_020E44DC
	arm_func_end FUN_ov15_020c7784

	arm_func_start FUN_ov15_020c7938
FUN_ov15_020c7938: ; 0x020C7938
	stmfd sp!, {r3, r4, r5, lr}
	ldr r4, _020C7974 ; =0x020E8F2C
	mov r5, r0
	ldr r0, [r4, #4]
	add r0, r0, #0x3d8
	add r0, r0, #0x1000
	bl OS_LockMutex
	ldr r0, [r4, #4]
	add r0, r0, #0x1000
	str r5, [r0, #4]
	ldr r0, [r4, #4]
	add r0, r0, #0x3d8
	add r0, r0, #0x1000
	bl OS_UnlockMutex
	ldmfd sp!, {r3, r4, r5, pc}
_020C7974: .word ov15_020E8F2C
	arm_func_end FUN_ov15_020c7938

	arm_func_start FUN_ov15_020c7978
FUN_ov15_020c7978: ; 0x020C7978
	stmfd sp!, {r3, lr}
	cmp r0, #0
	beq _020C7998
	cmp r0, #1
	beq _020C79AC
	cmp r0, #2
	beq _020C79A4
	b _020C79B4
_020C7998:
	ldr r0, _020C79C4 ; =0x020E44E8
_020C799C:
	bl FUN_ov15_020c6bb8
	b _020C79BC
_020C79A4:
	ldr r0, _020C79C8 ; =0x020E4510
	b _020C799C
_020C79AC:
	ldr r0, _020C79CC ; =0x020E4534
	b _020C799C
_020C79B4:
	mov r0, #0
	ldmfd sp!, {r3, pc}
_020C79BC:
	mov r0, #1
	ldmfd sp!, {r3, pc}
_020C79C4: .word ov15_020E44E8
_020C79C8: .word ov15_020E4510
_020C79CC: .word ov15_020E4534
	arm_func_end FUN_ov15_020c7978

	arm_func_start FUN_ov15_020c79d0
FUN_ov15_020c79d0: ; 0x020C79D0
	stmfd sp!, {r4, r5, lr}
	sub sp, sp, #0x14
	add r4, sp, #0
	mov r5, r0
	mov r0, r4
	bl FUN_ov15_020ca8e0
	mov r0, r5
	mov r1, r4
	bl FUN_ov15_020c79fc
	add sp, sp, #0x14
	ldmfd sp!, {r4, r5, pc}
	arm_func_end FUN_ov15_020c79d0

	arm_func_start FUN_ov15_020c79fc
FUN_ov15_020c79fc: ; 0x020C79FC
	stmfd sp!, {r4, r5, r6, r7, r8, r9, lr}
	sub sp, sp, #0x8c
	mov r2, #0
	mov r6, r1
	mov r1, r2
	mov r2, #0x94
	mov r5, r0
	bl MI_CpuFill8
	ldmia r6, {r3, r4}
	cmp r4, #0
	cmpeq r3, #0
	mov r1, #0xe
	beq _020C7A34
	b _020C7A3C
_020C7A34:
	ldr r3, [r6, #8]
	ldr r4, [r6, #0xc]
_020C7A3C:
	ldr r2, _020C7C7C ; =0x020E4554
	mov r0, r5
	str r4, [sp]
	bl FUN_02001508
	ldrh r3, [r6, #0x10]
	ldr r2, _020C7C80 ; =0x020E455C
	add r0, r5, #0xe
	mov r1, #7
	bl FUN_02001508
	ldr r0, _020C7C84 ; =0x02FFFE0C
	ldrb r0, [r0]
	cmp r0, #0
	bne _020C7A74
	bl OS_Terminate
_020C7A74:
	ldr r4, _020C7C84 ; =0x02FFFE0C
	add r1, r5, #0x15
	mov r0, r4
	mov r2, #4
	bl MI_CpuCopy8
	ldrb r0, [r4, #4]
	cmp r0, #0
	bne _020C7A98
	bl OS_Terminate
_020C7A98:
	ldr r0, _020C7C88 ; =0x02FFFE10
	add r1, r5, #0x1a
	mov r2, #2
	bl MI_CpuCopy8
	add r7, sp, #0x16
	mov r1, #0x30
	mov r0, r7
	strb r1, [r5, #0x1d]
	bl FUN_02003f38
	ldr r4, _020C7C8C ; =0x020E4564
	mov r8, #0
	add r6, r5, #0x1f
_020C7AC8:
	ldrb r2, [r7, r8]
	mov r1, r4
	add r0, r6, r8, lsl #1
	bl FUN_020014c8
	add r8, r8, #1
	cmp r8, #6
	blt _020C7AC8
	add r0, sp, #0x38
	bl FUN_02003f54
	ldrb r0, [sp, #0x38]
	ldr r4, _020C7C8C ; =0x020E4564
	mov r1, #3
	cmp r0, #8
	movhs r0, #1
	strhsb r0, [sp, #0x38]
	ldrb r3, [sp, #0x38]
	mov r2, r4
	add r0, r5, #0x2c
	bl FUN_02001508
	add r0, sp, #0x3c
	add r1, r5, #0x7e
	mov r2, #0x14
	bl MI_CpuCopy8
	ldrb r1, [sp, #0x3b]
	ldr r2, _020C7C90 ; =0x020E456C
	add r0, r5, #0x2f
	str r1, [sp]
	ldrb r3, [sp, #0x3a]
	mov r1, #5
	bl FUN_02001508
	add r0, sp, #0x28
	add r1, sp, #0x1c
	bl FUN_0200affc
	cmp r0, #0
	addne sp, sp, #0x8c
	movne r0, #0
	ldmnefd sp!, {r4, r5, r6, r7, r8, r9, pc}
	ldr r0, [sp, #0x2c]
	ldr r2, _020C7C94 ; =0x020E4578
	str r0, [sp]
	ldr r1, [sp, #0x30]
	add r0, r5, #0x34
	str r1, [sp, #4]
	ldr r3, [sp, #0x1c]
	mov r1, #0xd
	str r3, [sp, #8]
	ldr r3, [sp, #0x20]
	str r3, [sp, #0xc]
	ldr r3, [sp, #0x24]
	str r3, [sp, #0x10]
	ldr r3, [sp, #0x28]
	bl FUN_02001508
	bl OS_DisableInterrupts
	mov r7, r0
	bl FUN_ov15_020dd944
	mov r8, r0
	mov r1, #6
	bl DC_InvalidateRange
	cmp r8, #0
	bne _020C7BCC
	mov r0, r7
	bl OS_RestoreInterrupts
	add sp, sp, #0x8c
	mov r0, #0
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, pc}
_020C7BCC:
	mov r9, #0
	add r6, r5, #0x41
_020C7BD4:
	ldrb r2, [r8, r9]
	mov r1, r4
	add r0, r6, r9, lsl #1
	bl FUN_020014c8
	add r9, r9, #1
	cmp r9, #6
	blt _020C7BD4
	bl FUN_ov15_020c3a48
	mov r3, r0
	cmp r3, #0xff
	beq _020C7C08
	cmp r3, #0x63
	bls _020C7C0C
_020C7C08:
	mov r3, #0x63
_020C7C0C:
	ldr r2, _020C7C98 ; =0x020E4594
	add r0, r5, #0x6f
	mov r1, #0xe
	bl FUN_02001508
	add r0, sp, #0x14
	bl FUN_ov15_020dd988
	mov r4, #0x20
	mov r6, r0
	mov r1, r4
	bl DC_InvalidateRange
	cmp r6, #0
	bne _020C7C50
	mov r0, r7
	bl OS_RestoreInterrupts
	add sp, sp, #0x8c
	mov r0, #0
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, pc}
_020C7C50:
	mov r0, r6
	mov r2, r4
	add r1, r5, #0x4e
	bl MI_CpuCopy8
	add r0, r5, #0x72
	bl FUN_ov15_020c3a78
	mov r0, r7
	bl OS_RestoreInterrupts
	mov r0, #1
	add sp, sp, #0x8c
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, pc}
_020C7C7C: .word ov15_020E4554
_020C7C80: .word ov15_020E455C
_020C7C84: .word 0x02FFFE0C
_020C7C88: .word 0x02FFFE10
_020C7C8C: .word ov15_020E4564
_020C7C90: .word ov15_020E456C
_020C7C94: .word ov15_020E4578
_020C7C98: .word ov15_020E4594
	arm_func_end FUN_ov15_020c79fc

	arm_func_start FUN_ov15_020c7c9c
FUN_ov15_020c7c9c: ; 0x020C7C9C
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	sub sp, sp, #0x28
	mov r7, r2
	mov r4, r1
	mov r12, #3
	add r6, sp, #4
	mov r5, r0
	ldr r2, _020C7FA8 ; =0x020E45A4
	mov r0, r6
	mov r1, #0x21
	mov r3, #5
	str r12, [sp]
	bl FUN_02001508
	mov r0, r6
	bl _strlen
	mov r3, r0
	ldr r1, _020C7FAC ; =0x020E45B0
	mov r2, r6
	mov r0, r5
	bl FUN_ov15_020c89c0
	cmp r0, #0
	addne sp, sp, #0x28
	movne r0, #0
	ldmnefd sp!, {r3, r4, r5, r6, r7, pc}
	mov r0, r4
	bl _strlen
	mov r3, r0
	ldr r1, _020C7FB0 ; =0x020E45B8
	mov r0, r5
	mov r2, r4
	bl FUN_ov15_020c89c0
	cmp r0, #0
	addne sp, sp, #0x28
	movne r0, #0
	ldmnefd sp!, {r3, r4, r5, r6, r7, pc}
	add r0, r4, #0xe
	bl _strlen
	mov r3, r0
	ldr r1, _020C7FB4 ; =0x020E45C0
	mov r0, r5
	add r2, r4, #0xe
	bl FUN_ov15_020c89c0
	cmp r0, #0
	addne sp, sp, #0x28
	movne r0, #0
	ldmnefd sp!, {r3, r4, r5, r6, r7, pc}
	add r0, r4, #0x41
	bl _strlen
	mov r3, r0
	ldr r1, _020C7FB8 ; =0x020E45C8
	mov r0, r5
	add r2, r4, #0x41
	bl FUN_ov15_020c89c0
	cmp r0, #0
	addne sp, sp, #0x28
	movne r0, #0
	ldmnefd sp!, {r3, r4, r5, r6, r7, pc}
	add r0, r4, #0x6f
	bl _strlen
	mov r3, r0
	ldr r1, _020C7FBC ; =0x020E45D0
	mov r0, r5
	add r2, r4, #0x6f
	bl FUN_ov15_020c89c0
	cmp r0, #0
	addne sp, sp, #0x28
	movne r0, #0
	ldmnefd sp!, {r3, r4, r5, r6, r7, pc}
	add r0, r4, #0x15
	bl _strlen
	mov r3, r0
	ldr r1, _020C7FC0 ; =0x020E45D8
	mov r0, r5
	add r2, r4, #0x15
	bl FUN_ov15_020c89c0
	cmp r0, #0
	addne sp, sp, #0x28
	movne r0, #0
	ldmnefd sp!, {r3, r4, r5, r6, r7, pc}
	add r0, r4, #0x1a
	bl _strlen
	mov r3, r0
	ldr r1, _020C7FC4 ; =0x020E45E0
	mov r0, r5
	add r2, r4, #0x1a
	bl FUN_ov15_020c89c0
	cmp r0, #0
	addne sp, sp, #0x28
	movne r0, #0
	ldmnefd sp!, {r3, r4, r5, r6, r7, pc}
	add r0, r4, #0x1d
	bl _strlen
	mov r3, r0
	ldr r1, _020C7FC8 ; =0x020E45E8
	mov r0, r5
	add r2, r4, #0x1d
	bl FUN_ov15_020c89c0
	cmp r0, #0
	addne sp, sp, #0x28
	movne r0, #0
	ldmnefd sp!, {r3, r4, r5, r6, r7, pc}
	add r0, r4, #0x1f
	bl _strlen
	mov r3, r0
	ldr r1, _020C7FCC ; =0x020E45F0
	mov r0, r5
	add r2, r4, #0x1f
	bl FUN_ov15_020c89c0
	cmp r0, #0
	addne sp, sp, #0x28
	movne r0, #0
	ldmnefd sp!, {r3, r4, r5, r6, r7, pc}
	add r0, r4, #0x2c
	bl _strlen
	mov r3, r0
	ldr r1, _020C7FD0 ; =0x020E45F8
	mov r0, r5
	add r2, r4, #0x2c
	bl FUN_ov15_020c89c0
	cmp r0, #0
	addne sp, sp, #0x28
	movne r0, #0
	ldmnefd sp!, {r3, r4, r5, r6, r7, pc}
	add r0, r4, #0x2f
	bl _strlen
	mov r3, r0
	ldr r1, _020C7FD4 ; =0x020E4600
	mov r0, r5
	add r2, r4, #0x2f
	bl FUN_ov15_020c89c0
	cmp r0, #0
	addne sp, sp, #0x28
	movne r0, #0
	ldmnefd sp!, {r3, r4, r5, r6, r7, pc}
	add r0, r4, #0x34
	bl _strlen
	mov r3, r0
	ldr r1, _020C7FD8 ; =0x020E4608
	mov r0, r5
	add r2, r4, #0x34
	bl FUN_ov15_020c89c0
	cmp r0, #0
	addne sp, sp, #0x28
	movne r0, #0
	ldmnefd sp!, {r3, r4, r5, r6, r7, pc}
	add r0, r4, #0x7e
	bl FUN_020246c4
	mov r3, r0
	ldr r1, _020C7FDC ; =0x020E4610
	mov r0, r5
	add r2, r4, #0x7e
	mov r3, r3, lsl #1
	bl FUN_ov15_020c89c0
	cmp r0, #0
	addne sp, sp, #0x28
	movne r0, #0
	ldmnefd sp!, {r3, r4, r5, r6, r7, pc}
	cmp r7, #1
	bne _020C7F44
	add r0, r4, #0x4e
	bl _strlen
	mov r3, r0
	ldr r1, _020C7FE0 ; =0x020E4618
	mov r0, r5
	add r2, r4, #0x4e
	bl FUN_ov15_020c89c0
	cmp r0, #0
	addne sp, sp, #0x28
	movne r0, #0
	ldmnefd sp!, {r3, r4, r5, r6, r7, pc}
_020C7F44:
	add r6, sp, #4
	mov r12, #3
	ldr r2, _020C7FE4 ; =0x020E4620
	mov r0, r6
	mov r1, #0x21
	mov r3, #5
	str r12, [sp]
	bl FUN_02001508
	ldr r1, _020C7FE8 ; =0x020E4638
	mov r0, r5
	mov r2, r6
	bl FUN_ov15_020c88e4
	cmp r0, #0
	addne sp, sp, #0x28
	movne r0, #0
	ldmnefd sp!, {r3, r4, r5, r6, r7, pc}
	ldr r1, _020C7FEC ; =0x020E4644
	mov r0, r5
	add r2, r4, #0x15
	bl FUN_ov15_020c88e4
	cmp r0, #0
	moveq r0, #1
	movne r0, #0
	add sp, sp, #0x28
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_020C7FA8: .word ov15_020E45A4
_020C7FAC: .word ov15_020E45B0
_020C7FB0: .word ov15_020E45B8
_020C7FB4: .word ov15_020E45C0
_020C7FB8: .word ov15_020E45C8
_020C7FBC: .word ov15_020E45D0
_020C7FC0: .word ov15_020E45D8
_020C7FC4: .word ov15_020E45E0
_020C7FC8: .word ov15_020E45E8
_020C7FCC: .word ov15_020E45F0
_020C7FD0: .word ov15_020E45F8
_020C7FD4: .word ov15_020E4600
_020C7FD8: .word ov15_020E4608
_020C7FDC: .word ov15_020E4610
_020C7FE0: .word ov15_020E4618
_020C7FE4: .word ov15_020E4620
_020C7FE8: .word ov15_020E4638
_020C7FEC: .word ov15_020E4644
	arm_func_end FUN_ov15_020c7c9c

	arm_func_start FUN_ov15_020c7ff0
FUN_ov15_020c7ff0: ; 0x020C7FF0
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	mov r6, r1
	mov r4, #0
	ldr r2, _020C80F4 ; =0x00001C50
	mov r7, r0
	mov r1, r4
	ldr r5, [r6, #0xc]
	bl MI_CpuFill8
	add r1, r7, #4
	sub r2, r4, #1
	add r0, r7, #0x1000
	mov lr, r6
	str r2, [r0, #0xa6c]
	str r2, [r0, #0xa70]
	add r12, r1, #0x1000
	ldmia lr!, {r0, r1, r2, r3}
	stmia r12!, {r0, r1, r2, r3}
	ldmia lr, {r0, r1, r2}
	stmia r12, {r0, r1, r2}
	ldr r1, _020C80F8 ; =0x00000B68
	mov r0, r4
	blx r5
	add r1, r7, #0x1000
	cmp r0, #0
	str r0, [r1, #0xa08]
	moveq r0, #1
	streq r0, [r1, #0x20]
	ldmeqfd sp!, {r3, r4, r5, r6, r7, pc}
	ldr r1, _020C80FC ; =0x000005EA
	mov r0, r4
	blx r5
	add r2, r7, #0x1000
	str r0, [r2, #0xa0c]
	cmp r0, #0
	moveq r0, #1
	streq r0, [r2, #0x20]
	ldmeqfd sp!, {r3, r4, r5, r6, r7, pc}
	add r1, r7, #0x244
	ldr r2, [r2, #0xc]
	mov r0, r7
	add r1, r1, #0x1800
	bl FUN_ov15_020c8b58
	cmp r0, #0
	addeq r1, r7, #0x1000
	moveq r0, #1
	streq r0, [r1, #0x20]
	ldmeqfd sp!, {r3, r4, r5, r6, r7, pc}
	ldr r1, [r6]
	mov r0, r7
	bl FUN_ov15_020c8c80
	cmp r0, #0
	addeq r1, r7, #0x1000
	moveq r0, #1
	streq r0, [r1, #0x20]
	ldmeqfd sp!, {r3, r4, r5, r6, r7, pc}
	mov r0, r7
	bl FUN_ov15_020c8824
	add r1, r7, #0x1000
	str r0, [r1, #0x20]
	cmp r0, #0
	moveq r0, #0xff
	streqb r0, [r1]
	add r0, r7, #0x1000
	ldr r0, [r0, #0x20]
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_020C80F4: .word 0x00001C50
_020C80F8: .word 0x00000B68
_020C80FC: .word 0x000005EA
	arm_func_end FUN_ov15_020c7ff0

	arm_func_start FUN_ov15_020c8100
FUN_ov15_020c8100: ; 0x020C8100
	stmfd sp!, {r3, r4, r5, lr}
	sub sp, sp, #8
	ldr r1, _020C8188 ; =0x020E4684
	ldr r2, _020C818C ; =0x020E4690
	mov r5, r0
	bl FUN_ov15_020c88e4
	cmp r0, #0
	addne sp, sp, #8
	movne r0, #1
	ldmnefd sp!, {r3, r4, r5, pc}
	add r0, r5, #0x1000
	ldr r0, [r0, #0xa34]
	ldr r1, _020C8190 ; =0x020E4698
	bl FUN_020241a0
	add r0, r0, #4
	bl _strlen
	movs r3, r0
	beq _020C817C
	add r4, sp, #0
	ldr r2, _020C8194 ; =0x020E46A0
	mov r0, r4
	mov r1, #7
	bl FUN_02001508
	ldr r1, _020C8198 ; =0x020E46A4
	mov r0, r5
	mov r2, r4
	bl FUN_ov15_020c88e4
	cmp r0, #0
	addne sp, sp, #8
	movne r0, #1
	ldmnefd sp!, {r3, r4, r5, pc}
_020C817C:
	mov r0, #0
	add sp, sp, #8
	ldmfd sp!, {r3, r4, r5, pc}
_020C8188: .word ov15_020E4684
_020C818C: .word ov15_020E4690
_020C8190: .word ov15_020E4698
_020C8194: .word ov15_020E46A0
_020C8198: .word ov15_020E46A4
	arm_func_end FUN_ov15_020c8100

	arm_func_start FUN_ov15_020c819c
FUN_ov15_020c819c: ; 0x020C819C
	stmfd sp!, {r4, r5, r6, lr}
	sub sp, sp, #8
	mov r6, r0
	add r0, r6, #0x34
	add r2, r6, #0x1000
	mov r4, #0
	add r0, r0, #0x1c00
	mov r5, r1
	str r4, [r2, #0xc4c]
	bl OS_InitMutex
	add r0, r6, #0x254
	add r0, r0, #0x1800
	bl OS_InitMutex
	add r0, r6, #0x1000
	ldr r0, [r0, #0x18]
	cmp r0, #1
	ldreq r0, _020C8250 ; =0x020E8F4C
	moveq r1, #1
	streq r1, [r0]
	ldrne r0, _020C8250 ; =0x020E8F4C
	strne r4, [r0]
	add r0, r6, #0x1000
	ldr r0, [r0, #0xbe0]
	cmp r0, #0
	beq _020C8218
	add r0, r6, #0x374
	add r0, r0, #0x1800
	bl OS_IsThreadTerminated
	cmp r0, #0
	addeq sp, sp, #8
	ldmeqfd sp!, {r4, r5, r6, pc}
_020C8218:
	add r0, r6, #0x374
	mov r1, #0x1000
	str r1, [sp]
	ldr r1, _020C8254 ; =FUN_ov15_020c846c
	mov r2, r6
	add r0, r0, #0x1800
	add r3, r6, #0x1000
	str r5, [sp, #4]
	bl OS_CreateThread
	add r0, r6, #0x374
	add r0, r0, #0x1800
	bl OS_WakeupThreadDirect
	add sp, sp, #8
	ldmfd sp!, {r4, r5, r6, pc}
_020C8250: .word ov15_020E8F4C
_020C8254: .word FUN_ov15_020c846c
	arm_func_end FUN_ov15_020c819c

	arm_func_start FUN_ov15_020c8258
FUN_ov15_020c8258: ; 0x020C8258
	stmfd sp!, {r4, lr}
	mov r4, r0
	add r0, r4, #0x1000
	ldrb r0, [r0]
	cmp r0, #0xff
	ldmnefd sp!, {r4, pc}
	add r0, r4, #0x34
	add r0, r0, #0x1c00
	bl OS_LockMutex
	add r0, r4, #0x34
	add r1, r4, #0x1000
	mov r2, #1
	add r0, r0, #0x1c00
	str r2, [r1, #0xc4c]
	bl OS_UnlockMutex
	ldmfd sp!, {r4, pc}
	arm_func_end FUN_ov15_020c8258

	arm_func_start FUN_ov15_020c8298
FUN_ov15_020c8298: ; 0x020C8298
	stmfd sp!, {r4, lr}
	mov r4, r0
	add r0, r4, #0x1000
	ldr r0, [r0, #0x130]
	cmp r0, #1
	bne _020C82CC
	add r0, r4, #0xa10
	add r0, r0, #0x1000
	bl FUN_02004094
	add r0, r4, #0xa10
	add r0, r0, #0x1000
	mov r1, #0x20
	bl FUN_ov15_020d9a88
_020C82CC:
	add r0, r4, #0x34
	add r0, r0, #0x1c00
	bl OS_LockMutex
	add r0, r4, #0x1000
	ldr r0, [r0, #0xc4c]
	cmp r0, #1
	add r0, r4, #0x34
	add r0, r0, #0x1c00
	bne _020C82FC
	bl OS_UnlockMutex
	mov r0, #0
	ldmfd sp!, {r4, pc}
_020C82FC:
	bl OS_UnlockMutex
	mov r0, #0xa
	bl OS_Sleep
	mov r0, #1
	ldmfd sp!, {r4, pc}
	arm_func_end FUN_ov15_020c8298

	arm_func_start FUN_ov15_020c8310
FUN_ov15_020c8310: ; 0x020C8310
	stmfd sp!, {r4, lr}
	mov r4, r0
	add r0, r4, #0x138
	add r0, r0, #0x1000
	mov r1, #0
	mov r2, #0xa0
	bl MI_CpuFill8
	add r1, r4, #0x1000
	add r0, r4, #0x138
	ldr r12, [r1, #0xa08]
	ldr r2, [r1, #0xa0c]
	ldr lr, _020C8360 ; =0x00000B68
	ldr r3, _020C8364 ; =0x000005EA
	add r0, r0, #0x1000
	str lr, [r1, #0x180]
	str r12, [r1, #0x184]
	str r3, [r1, #0x18c]
	str r2, [r1, #0x190]
	bl FUN_ov15_020c02d4
	ldmfd sp!, {r4, pc}
_020C8360: .word 0x00000B68
_020C8364: .word 0x000005EA
	arm_func_end FUN_ov15_020c8310

	arm_func_start FUN_ov15_020c8368
FUN_ov15_020c8368: ; 0x020C8368
	add r0, r0, #0x1000
	ldr r0, [r0, #0x124]
	ldr r12, _020C8378 ; =FUN_ov15_020c2128
	bx r12
_020C8378: .word FUN_ov15_020c2128
	arm_func_end FUN_ov15_020c8368

	arm_func_start FUN_ov15_020c837c
FUN_ov15_020c837c: ; 0x020C837C
	stmfd sp!, {r4, r5, r6, r7, r8, lr}
	mov r5, r0
	add r0, r5, #0x1000
	ldr r7, [r0, #0xa44]
	ldr r6, _020C8460 ; =0x020E4698
	add r2, r5, #0x244
	mov r0, r7
	mov r1, r6
	add r4, r2, #0x1800
	bl FUN_020241a0
	cmp r0, #0
	moveq r0, #0
	ldmeqfd sp!, {r4, r5, r6, r7, r8, pc}
	mov r0, r7
	mov r1, r6
	bl FUN_020241a0
	add r1, r5, #0x254
	add r6, r0, #4
	add r0, r1, #0x1800
	bl OS_LockMutex
	ldr r1, [r4, #4]
	add r0, r5, #0x254
	sub r2, r1, r6
	add r1, r5, #0x1000
	add r0, r0, #0x1800
	str r2, [r1, #0xa70]
	bl OS_UnlockMutex
	ldr r6, _020C8464 ; =0x020E46B4
	ldr r0, [r4]
	mov r1, r6
	bl FUN_020241a0
	movs r8, r0
	moveq r0, #1
	ldmeqfd sp!, {r4, r5, r6, r7, r8, pc}
	mov r0, r6
	bl _strlen
	mov r7, r0
	ldr r1, _020C8468 ; =0x020E46C8
	add r0, r8, r7
	bl FUN_020241a0
	mov r6, r0
	add r0, r5, #0x254
	ldrsb r4, [r6]
	mov r1, #0
	add r0, r0, #0x1800
	strb r1, [r6]
	bl OS_LockMutex
	add r0, r8, r7
	bl FUN_02024640
	add r1, r5, #0x1000
	add r2, r5, #0x254
	str r0, [r1, #0xa6c]
	add r0, r2, #0x1800
	bl OS_UnlockMutex
	strb r4, [r6]
	mov r0, #1
	ldmfd sp!, {r4, r5, r6, r7, r8, pc}
_020C8460: .word ov15_020E4698
_020C8464: .word ov15_020E46B4
_020C8468: .word ov15_020E46C8
	arm_func_end FUN_ov15_020c837c

	arm_func_start FUN_ov15_020c846c
FUN_ov15_020c846c: ; 0x020C846C
	stmfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, lr}
	sub sp, sp, #0x14
	mov r10, r0
	add r0, r10, #0x1000
	ldr r8, [r0, #0x1c]
	add r0, r10, #0x138
	add r1, r10, #0x1d8
	add r2, r10, #0x244
	add r4, r0, #0x1000
	cmp r8, #0
	mov r0, r10
	add r5, r1, #0x1000
	add r7, r2, #0x1800
	mov r11, #0
	ldrle r8, _020C8764 ; =0x0000EA60
	bl FUN_ov15_020c8310
	mov r0, r10
	bl FUN_ov15_020c8368
	movs r6, r0
	add r0, r10, #0x1000
	moveq r1, #2
	streq r1, [r0, #0x20]
	addeq sp, sp, #0x14
	ldmeqfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
	str r6, [r0, #0x12c]
	bl FUN_ov15_020c0388
	add r0, r10, #0x1000
	ldr r0, [r0, #0x130]
	cmp r0, #1
	bne _020C8520
	mov r0, r5
	mov r1, #0
	mov r2, #0x830
	bl MI_CpuFill8
	add r0, r10, #0x1000
	ldr r2, [r0, #0x124]
	ldr r3, _020C8768 ; =FUN_ov15_020c8b4c
	ldr r0, _020C876C ; =0x020E4654
	mov r1, #0xc
	str r3, [r5, #0x810]
	str r2, [r5, #0x800]
	str r5, [r4, #0xc]
	bl FUN_ov15_020d7948
	mov r0, #1
	bl FUN_ov15_020da6d4
_020C8520:
	add r0, r10, #0x1100
	ldrh r1, [r0, #0x34]
	mov r2, r6
	mov r0, #0
	bl FUN_ov15_020c0328
	bl FUN_ov15_020c04d8
	cmp r0, #0
	add r0, r10, #0x1000
	beq _020C855C
	mov r1, #3
	str r1, [r0, #0x20]
	bl FUN_ov15_020c03d4
	bl FUN_ov15_020c02e8
	add sp, sp, #0x14
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
_020C855C:
	ldr r4, [r0, #0xa34]
	mov r0, r4
	bl _strlen
	mov r1, r0
	mov r0, r4
	bl FUN_ov15_020c0ce8
	cmp r0, #0
	str r0, [sp, #0x10]
	addle r0, r10, #0x1000
	movle r1, #5
	strle r1, [r0, #0x20]
	ble _020C874C
	bl FUN_ov15_020c0dfc
	mov r0, r10
	bl FUN_ov15_020c8298
	cmp r0, #0
	addeq r0, r10, #0x1000
	moveq r1, #7
	streq r1, [r0, #0x20]
	beq _020C874C
	ldr r1, [r7]
	ldr r0, [r7, #0xc]
	str r1, [r7, #4]
	add r0, r1, r0
	str r0, [r7, #8]
	bl FUN_02003410
	str r0, [sp, #8]
	add r0, r10, #0xa70
	str r1, [sp, #4]
	add r5, r10, #0x254
	add r6, r0, #0x1000
	add r4, r10, #0x1000
_020C85DC:
	ldr r0, _020C8770 ; =0x020E6D90
	ldr r0, [r0]
	cmp r0, #0
	addeq r0, r10, #0x1000
	moveq r1, #5
	streq r1, [r0, #0x20]
	beq _020C874C
	bl FUN_ov15_020c0d7c
	str r0, [sp, #0x10]
	cmp r0, #0
	blt _020C8728
	ble _020C86AC
	bl FUN_02003410
	str r0, [sp, #8]
	add r0, sp, #0x10
	str r1, [sp, #4]
	bl FUN_ov15_020c0728
	cmp r0, #0
	beq _020C8728
	ldmib r7, {r1, r2}
	sub r2, r2, #1
	ldr r9, [sp, #0x10]
	sub r2, r2, r1
	cmp r9, r2
	movge r9, r2
	mov r2, r9
	bl MI_CpuCopy8
	ldr r1, [r7, #4]
	cmp r11, #1
	add r0, r1, r9
	str r0, [r7, #4]
	mov r0, #0
	strb r0, [r1, r9]
	bne _020C8684
	add r0, r5, #0x1800
	bl OS_LockMutex
	ldr r1, [r6]
	add r0, r5, #0x1800
	add r1, r1, r9
	str r1, [r6]
	bl OS_UnlockMutex
	b _020C8690
_020C8684:
	mov r0, r10
	bl FUN_ov15_020c837c
	mov r11, r0
_020C8690:
	ldr r0, [sp, #0x10]
	cmp r0, r9
	bls _020C86A4
	bl FUN_ov15_020c08dc
	b _020C8728
_020C86A4:
	mov r0, r9
	bl FUN_ov15_020c08dc
_020C86AC:
	ldr r1, [r4, #0xa6c]
	cmp r1, #0
	blt _020C86C4
	ldr r0, [r4, #0xa70]
	cmp r0, r1
	bge _020C8728
_020C86C4:
	bl FUN_02003410
	ldr r2, [sp, #8]
	mov r3, #0
	subs r2, r0, r2
	ldr r0, [sp, #4]
	sbc r0, r1, r0
	mov r1, r0, lsl #6
	orr r1, r1, r2, lsr #26
	mov r0, r2, lsl #6
	ldr r2, _020C8774 ; =0x000082EA
	bl FUN_0201f954
	cmp r1, r8, asr #31
	cmpeq r0, r8
	addhi r0, r10, #0x1000
	movhi r1, #6
	strhi r1, [r0, #0x20]
	bhi _020C874C
	mov r0, r10
	bl FUN_ov15_020c8298
	cmp r0, #0
	bne _020C85DC
	add r0, r10, #0x1000
	mov r1, #7
	str r1, [r0, #0x20]
	b _020C874C
_020C8728:
	bl FUN_ov15_020c0578
	bl FUN_ov15_020c05b4
	bl FUN_ov15_020c03d4
	bl FUN_ov15_020c02e8
	add r0, r10, #0x1000
	mov r1, #8
	str r1, [r0, #0x20]
	add sp, sp, #0x14
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
_020C874C:
	bl FUN_ov15_020c0578
	bl FUN_ov15_020c05b4
	bl FUN_ov15_020c03d4
	bl FUN_ov15_020c02e8
	add sp, sp, #0x14
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
_020C8764: .word 0x0000EA60
_020C8768: .word FUN_ov15_020c8b4c
_020C876C: .word ov15_020E4654
_020C8770: .word ov15_020E6D90
_020C8774: .word 0x000082EA
	arm_func_end FUN_ov15_020c846c

	arm_func_start FUN_ov15_020c8778
FUN_ov15_020c8778: ; 0x020C8778
	stmfd sp!, {r4, r5, r6, lr}
	movs r5, r0
	add r1, r5, #0x1000
	ldr r4, [r1, #0x14]
	ldmeqfd sp!, {r4, r5, r6, pc}
	add r1, r5, #0x274
	add r1, r1, #0x1800
	mov r2, #0x20
	bl FUN_ov15_020c928c
	add r1, r5, #0x244
	mov r0, r5
	add r1, r1, #0x1800
	bl FUN_ov15_020c8ba4
	add r1, r5, #0x234
	mov r0, r5
	add r1, r1, #0x1800
	bl FUN_ov15_020c8ba4
	add r0, r5, #0x1000
	ldr r1, [r0, #0xa08]
	cmp r1, #0
	beq _020C87E4
	mov r6, #0
	mov r0, r6
	mov r2, r6
	blx r4
	add r0, r5, #0x1000
	str r6, [r0, #0xa08]
_020C87E4:
	add r0, r5, #0x1000
	ldr r1, [r0, #0xa0c]
	cmp r1, #0
	beq _020C880C
	mov r6, #0
	mov r0, r6
	mov r2, r6
	blx r4
	add r0, r5, #0x1000
	str r6, [r0, #0xa0c]
_020C880C:
	ldr r2, _020C8820 ; =0x00001C50
	mov r0, r5
	mov r1, #0
	bl MI_CpuFill8
	ldmfd sp!, {r4, r5, r6, pc}
_020C8820: .word 0x00001C50
	arm_func_end FUN_ov15_020c8778

	arm_func_start FUN_ov15_020c8824
FUN_ov15_020c8824: ; 0x020C8824
	stmfd sp!, {r3, r4, r5, r6, r7, r8, lr}
	sub sp, sp, #4
	mov r7, r0
	add r0, r7, #0x1000
	ldr r1, [r0, #8]
	add r0, r7, #0x234
	add r5, r0, #0x1800
	add r0, r7, #0x1000
	ldr r6, _020C88DC ; =0x020E46CC
	cmp r1, #0
	ldrne r6, _020C88E0 ; =0x020E4720
	ldr r0, [r0, #0x124]
	bl _strlen
	mov r4, r0
	mov r0, r6
	bl _strlen
	add r1, r7, #0x1000
	mov r8, r0
	ldr r0, [r1, #0x128]
	bl _strlen
	sub r1, r8, #4
	add r0, r1, r0
	add r2, r4, r0
	add r0, r7, #0x234
	add r1, r0, #0x1800
	add r2, r2, #0x400
	mov r0, r7
	bl FUN_ov15_020c8b58
	cmp r0, #1
	addne sp, sp, #4
	movne r0, #1
	ldmnefd sp!, {r3, r4, r5, r6, r7, r8, pc}
	add r3, r7, #0x1000
	ldr r0, [r3, #0x124]
	mov r2, r6
	str r0, [sp]
	ldr r0, [r5, #4]
	ldr r1, [r5, #0xc]
	ldr r3, [r3, #0x128]
	bl FUN_02001508
	ldr r1, [r5, #4]
	add r0, r1, r0
	str r0, [r5, #4]
	mov r0, #0
	add sp, sp, #4
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, pc}
_020C88DC: .word ov15_020E46CC
_020C88E0: .word ov15_020E4720
	arm_func_end FUN_ov15_020c8824

	arm_func_start FUN_ov15_020c88e4
FUN_ov15_020c88e4: ; 0x020C88E4
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, lr}
	mov r8, r0
	mov r6, r2
	add r2, r8, #0x234
	mov r0, r6
	mov r7, r1
	add r5, r2, #0x1800
	bl _strlen
	mov r4, r0
	ldr r0, _020C89B8 ; =0x020E4740
	bl _strlen
	mov r9, r0
	mov r0, r7
	bl _strlen
	sub r1, r9, #4
	add r0, r1, r0
	add r4, r4, r0
	ldmib r5, {r1, r2}
	add r0, r4, #1
	sub r1, r2, r1
	cmp r0, r1
	ble _020C895C
	sub r2, r4, r1
	mov r0, r8
	mov r1, r5
	add r2, r2, #1
	bl FUN_ov15_020c8be0
	cmp r0, #0
	moveq r0, #1
	ldmeqfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
_020C895C:
	ldr r0, [r5]
	ldr r1, _020C89BC ; =0x020E4698
	bl FUN_020241a0
	add r9, r0, #2
	ldrsb r8, [r0, #2]
	mov r0, r9
	bl _strlen
	add r2, r0, #1
	add r0, r9, r4
	mov r1, r9
	bl FUN_020218f4
	ldr r2, _020C89B8 ; =0x020E4740
	str r6, [sp]
	mov r3, r7
	mov r0, r9
	add r1, r4, #1
	bl FUN_02001508
	strb r8, [r9, r0]
	ldr r1, [r5, #4]
	mov r0, #0
	add r1, r1, r4
	str r1, [r5, #4]
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
_020C89B8: .word ov15_020E4740
_020C89BC: .word ov15_020E4698
	arm_func_end FUN_ov15_020c88e4

	arm_func_start FUN_ov15_020c89c0
FUN_ov15_020c89c0: ; 0x020C89C0
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, lr}
	mov r10, r0
	add r0, r10, #0x1000
	ldr r4, [r0, #0xa30]
	add r0, r10, #0x234
	cmp r4, #0
	ldr r7, _020C8AC0 ; =0x020E474C
	mov r8, r2
	add r4, r10, #0x1000
	add r6, r0, #0x1800
	ldr r0, [r4, #0xa30]
	mov r11, r3
	add r5, r0, #1
	mov r2, #0
	mov r9, r1
	ldrne r7, _020C8AC4 ; =0x020E4750
	mov r0, r8
	mov r1, r11
	mov r3, r2
	str r5, [r4, #0xa30]
	bl FUN_ov15_020cbea8
	mov r5, r0
	mov r0, r7
	bl _strlen
	mov r4, r0
	mov r0, r9
	bl _strlen
	sub r1, r4, #2
	add r2, r1, r0
	ldmib r6, {r0, r1}
	add r2, r5, r2
	sub r1, r1, r0
	cmp r2, r1
	ble _020C8A70
	sub r2, r2, r1
	mov r0, r10
	mov r1, r6
	add r2, r2, #1
	bl FUN_ov15_020c8be0
	cmp r0, #0
	moveq r0, #1
	ldmeqfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
	ldmib r6, {r0, r1}
	sub r1, r1, r0
_020C8A70:
	mov r2, r7
	mov r3, r9
	bl FUN_02001508
	ldr r2, [r6, #4]
	ldr r1, [r6, #8]
	add r2, r2, r0
	sub r3, r1, r2
	mov r0, r8
	mov r1, r11
	sub r3, r3, #1
	str r2, [r6, #4]
	bl FUN_ov15_020cbea8
	cmp r0, #0
	ldrge r1, [r6, #4]
	movlt r0, #1
	addge r2, r1, r5
	movge r0, #0
	strge r2, [r6, #4]
	strgeb r0, [r1, r5]
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_020C8AC0: .word ov15_020E474C
_020C8AC4: .word ov15_020E4750
	arm_func_end FUN_ov15_020c89c0

	arm_func_start FUN_ov15_020c8ac8
FUN_ov15_020c8ac8: ; 0x020C8AC8
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	mov r7, r0
	mov r6, r1
	add r1, r7, #0x234
	mov r0, r6
	add r5, r1, #0x1800
	bl _strlen
	mov r4, r0
	ldmib r5, {r0, r1}
	sub r1, r1, r0
	cmp r4, r1
	ble _020C8B20
	sub r2, r4, r1
	mov r0, r7
	mov r1, r5
	add r2, r2, #1
	bl FUN_ov15_020c8be0
	cmp r0, #0
	moveq r0, #1
	ldmeqfd sp!, {r3, r4, r5, r6, r7, pc}
	ldmib r5, {r0, r1}
	sub r1, r1, r0
_020C8B20:
	ldr r2, _020C8B48 ; =0x020E4758
	mov r3, r6
	bl FUN_02001508
	cmp r0, r4
	ldreq r1, [r5, #4]
	movne r0, #1
	addeq r0, r1, r0
	streq r0, [r5, #4]
	moveq r0, #0
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_020C8B48: .word ov15_020E4758
	arm_func_end FUN_ov15_020c8ac8

	arm_func_start FUN_ov15_020c8b4c
FUN_ov15_020c8b4c: ; 0x020C8B4C
	tst r0, #0x8000
	bicne r0, r0, #0x8000
	bx lr
	arm_func_end FUN_ov15_020c8b4c

	arm_func_start FUN_ov15_020c8b58
FUN_ov15_020c8b58: ; 0x020C8B58
	stmfd sp!, {r4, r5, r6, lr}
	movs r5, r2
	add r0, r0, #0x1000
	ldr r2, [r0, #0x10]
	mov r6, r1
	moveq r0, #0
	ldmeqfd sp!, {r4, r5, r6, pc}
	mov r4, #0
	mov r0, r4
	mov r1, r5
	blx r2
	str r0, [r6]
	cmp r0, #0
	moveq r0, r4
	addne r1, r0, r5
	stmneib r6, {r0, r1}
	strne r5, [r6, #0xc]
	movne r0, #1
	ldmfd sp!, {r4, r5, r6, pc}
	arm_func_end FUN_ov15_020c8b58

	arm_func_start FUN_ov15_020c8ba4
FUN_ov15_020c8ba4: ; 0x020C8BA4
	stmfd sp!, {r4, lr}
	mov r4, r1
	ldr r1, [r4]
	add r0, r0, #0x1000
	cmp r1, #0
	ldr r3, [r0, #0x14]
	beq _020C8BCC
	mov r0, #0
	mov r2, r0
	blx r3
_020C8BCC:
	mov r0, r4
	mov r1, #0
	mov r2, #0x10
	bl MI_CpuFill8
	ldmfd sp!, {r4, pc}
	arm_func_end FUN_ov15_020c8ba4

	arm_func_start FUN_ov15_020c8be0
FUN_ov15_020c8be0: ; 0x020C8BE0
	stmfd sp!, {r4, r5, r6, r7, r8, lr}
	add r0, r0, #0x1000
	ldr r8, [r0, #0x14]
	mov r5, r2
	mov r6, r1
	cmp r5, #0
	ldr r2, [r0, #0x10]
	movle r0, #0
	ldmlefd sp!, {r4, r5, r6, r7, r8, pc}
	ldr r1, [r6, #0xc]
	mov r7, #0
	mov r0, r7
	add r1, r1, r5
	blx r2
	movs r4, r0
	moveq r0, r7
	ldmeqfd sp!, {r4, r5, r6, r7, r8, pc}
	ldr r0, [r6]
	ldr r2, [r6, #0xc]
	mov r1, r4
	bl MI_CpuCopy8
	ldr r1, [r6]
	mov r0, r7
	mov r2, r7
	blx r8
	cmp r4, #0
	moveq r0, r7
	ldmeqfd sp!, {r4, r5, r6, r7, r8, pc}
	ldr r0, [r6, #0xc]
	ldmia r6, {r2, r3}
	add r1, r0, r5
	sub r0, r4, r2
	add r2, r3, r0
	add r0, r4, r1
	str r0, [r6, #8]
	str r2, [r6, #4]
	str r1, [r6, #0xc]
	str r4, [r6]
	mov r0, #1
	ldmfd sp!, {r4, r5, r6, r7, r8, pc}
	arm_func_end FUN_ov15_020c8be0

	arm_func_start FUN_ov15_020c8c80
FUN_ov15_020c8c80: ; 0x020C8C80
	stmfd sp!, {r4, r5, r6, lr}
	mov r6, r1
	mov r5, r0
	mov r0, r6
	mov r4, #0
	bl _strlen
	cmp r0, #0x100
	movhs r0, r4
	ldmhsfd sp!, {r4, r5, r6, pc}
	add r0, r5, #0x24
	mov r1, r6
	add r0, r0, #0x1000
	mov r2, #0x100
	bl _strncpy
	mov r0, r6
	bl _strlen
	add r1, r5, #0x24
	mov r6, r0
	add r0, r1, #0x1000
	bl _strlen
	cmp r6, r0
	movne r0, r4
	ldmnefd sp!, {r4, r5, r6, pc}
	add r0, r5, #0x24
	ldr r1, _020C8DB8 ; =0x020E475C
	add r0, r0, #0x1000
	bl FUN_020241a0
	cmp r0, #0
	beq _020C8D14
	add r0, r5, #0x2b
	add r1, r5, #0x1000
	add r3, r0, #0x1000
	add r0, r5, #0x1100
	mov r2, #0x50
	str r3, [r1, #0x124]
	str r4, [r1, #0x130]
	b _020C8D4C
_020C8D14:
	add r0, r5, #0x24
	ldr r1, _020C8DBC ; =0x020E4764
	add r0, r0, #0x1000
	bl FUN_020241a0
	cmp r0, #0
	moveq r0, r4
	ldmeqfd sp!, {r4, r5, r6, pc}
	mov r3, #1
	add r1, r5, #0x1000
	add r12, r0, #8
	rsb r2, r3, #0x1bc
	add r0, r5, #0x1100
	str r12, [r1, #0x124]
	str r3, [r1, #0x130]
_020C8D4C:
	strh r2, [r0, #0x34]
	add r0, r5, #0x1000
	ldr r0, [r0, #0x124]
	ldr r1, _020C8DC0 ; =0x020E4770
	bl FUN_020241a0
	cmp r0, #0
	movne r1, #0
	strneb r1, [r0]
	addne r4, r0, #1
	add r0, r5, #0x1000
	ldr r0, [r0, #0x124]
	ldr r1, _020C8DC4 ; =0x020E4774
	bl FUN_020241a0
	mov r1, #0
	cmp r0, #0
	strneb r1, [r0]
	addne r1, r0, #1
	add r0, r5, #0x1000
	str r1, [r0, #0x128]
	cmp r4, #0
	beq _020C8DB0
	mov r0, r4
	bl FUN_02024640
	add r1, r5, #0x1100
	strh r0, [r1, #0x34]
_020C8DB0:
	mov r0, #1
	ldmfd sp!, {r4, r5, r6, pc}
_020C8DB8: .word ov15_020E475C
_020C8DBC: .word ov15_020E4764
_020C8DC0: .word ov15_020E4770
_020C8DC4: .word ov15_020E4774
	arm_func_end FUN_ov15_020c8c80

	arm_func_start FUN_ov15_020c8dc8
FUN_ov15_020c8dc8: ; 0x020C8DC8
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, lr}
	add r0, r0, #0x1000
	mov r9, r1
	ldmib r9, {r1, r4}
	cmp r4, r1
	ldr r5, [r0, #0x10]
	ldr r6, [r0, #0x14]
	mov r4, #0
	mov r8, r2
	mov r7, r3
	movgt r0, r4
	ldmgtfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
	mov r0, r8
	bl _strlen
	mov r1, r0
	mov r0, r4
	add r1, r1, #1
	blx r5
	ldr r2, [r9]
	ldr r1, [r9, #8]
	str r0, [r2, r1, lsl #3]
	ldr r1, [r9, #8]
	ldr r2, [r9]
	ldr r0, [r2, r1, lsl #3]
	cmp r0, #0
	beq _020C8EA8
	mov r0, r7
	bl _strlen
	mov r1, r0
	mov r0, r4
	add r1, r1, #1
	blx r5
	ldr r2, [r9]
	ldr r1, [r9, #8]
	add r1, r2, r1, lsl #3
	str r0, [r1, #4]
	ldr r1, [r9, #8]
	ldr r2, [r9]
	add r0, r2, r1, lsl #3
	ldr r0, [r0, #4]
	cmp r0, #0
	beq _020C8EA8
	ldr r0, [r2, r1, lsl #3]
	mov r1, r8
	bl FUN_02023e98
	ldr r2, [r9]
	ldr r0, [r9, #8]
	mov r1, r7
	add r0, r2, r0, lsl #3
	ldr r0, [r0, #4]
	bl FUN_02023e98
	ldr r1, [r9, #8]
	mov r0, #1
	add r1, r1, #1
	str r1, [r9, #8]
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
_020C8EA8:
	ldr r1, [r2, r1, lsl #3]
	cmp r1, #0
	beq _020C8ECC
	mov r0, r4
	mov r2, r4
	blx r6
	ldr r1, [r9]
	ldr r0, [r9, #8]
	str r4, [r1, r0, lsl #3]
_020C8ECC:
	ldr r1, [r9]
	ldr r0, [r9, #8]
	add r0, r1, r0, lsl #3
	ldr r1, [r0, #4]
	cmp r1, #0
	beq _020C8F00
	mov r0, r4
	mov r2, r4
	blx r6
	ldr r1, [r9]
	ldr r0, [r9, #8]
	add r0, r1, r0, lsl #3
	str r4, [r0, #4]
_020C8F00:
	mov r0, #0
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
	arm_func_end FUN_ov15_020c8dc8

	arm_func_start FUN_ov15_020c8f08
FUN_ov15_020c8f08: ; 0x020C8F08
	stmfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, lr}
	sub sp, sp, #0x14
	mov r10, r0
	add r0, r10, #0x274
	mov r4, #0
	mov r6, r1
	add r0, r0, #0x1800
	mov r3, #0x20
	mov r1, r4
	mov r2, #0x100
	str r0, [sp, #8]
	str r3, [sp, #0xc]
	str r4, [sp, #0x10]
	bl MI_CpuFill8
	add r0, r10, #0x1000
	ldr r5, [r0, #0xa44]
	ldr r1, _020C918C ; =0x020E4698
	mov r0, r5
	bl FUN_020241a0
	str r0, [sp, #4]
	cmp r0, #0
	addeq sp, sp, #0x14
	moveq r0, r4
	ldmeqfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
	add r0, r0, #4
	bl _strlen
	ldr r1, [sp, #4]
	add r1, r1, #4
	add r0, r1, r0
	str r0, [sp]
	ldr r1, _020C9190 ; =0x020E4778
	mov r0, r5
	bl FUN_020241a0
	movs r5, r0
	addeq sp, sp, #0x14
	moveq r0, r4
	ldmeqfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
	ldrsb r8, [r5, #4]
	ldr r2, _020C9194 ; =0x020E477C
	mov r0, r10
	add r1, sp, #8
	add r3, r5, #1
	strb r4, [r5, #4]
	bl FUN_ov15_020c8dc8
	cmp r0, #1
	addne sp, sp, #0x14
	movne r0, r4
	strneb r8, [r5, #4]
	ldmnefd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
	strb r8, [r5, #4]
	cmp r6, #1
	beq _020C8FF0
	ldr r1, _020C9198 ; =0x020E4788
	add r0, r5, #1
	mov r2, #3
	bl FUN_020240f4
	cmp r0, #0
	beq _020C8FFC
_020C8FF0:
	add sp, sp, #0x14
	mov r0, #1
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
_020C8FFC:
	ldr r1, _020C919C ; =0x020E46C8
	add r0, r5, #5
	mov r11, r4
	bl FUN_020241a0
	cmp r0, #0
	addeq sp, sp, #0x14
	moveq r0, r4
	ldmeqfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
	b _020C90A0
_020C9020:
	ldr r1, _020C91A0 ; =0x020E478C
	mov r0, r8
	bl FUN_020241a0
	movs r5, r0
	beq _020C90BC
	ldrsb r6, [r5]
	add r9, r5, #2
	ldr r1, _020C919C ; =0x020E46C8
	mov r0, r9
	strb r11, [r5]
	bl FUN_020241a0
	movs r4, r0
	streqb r6, [r5]
	beq _020C90BC
	ldrsb r7, [r4]
	mov r0, r10
	mov r2, r8
	strb r11, [r4]
	add r1, sp, #8
	mov r3, r9
	bl FUN_ov15_020c8dc8
	cmp r0, #1
	strneb r6, [r5]
	addne sp, sp, #0x14
	movne r0, r11
	strneb r7, [r4]
	ldmnefd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
	mov r0, r9
	bl _strlen
	strb r6, [r5]
	add r0, r9, r0
	strb r7, [r4]
_020C90A0:
	add r8, r0, #2
	ldrsb r0, [r8]
	cmp r0, #0xd
	beq _020C90BC
	ldrsb r0, [r8, #1]
	cmp r0, #0xa
	bne _020C9020
_020C90BC:
	ldr r0, [sp, #4]
	mov r11, #0
	add r6, r0, #4
	ldr r0, [sp]
	cmp r6, r0
	bhs _020C9180
_020C90D4:
	ldr r1, _020C91A4 ; =0x020E4790
	mov r0, r6
	bl FUN_020241a0
	movs r4, r0
	beq _020C9180
	ldrsb r8, [r4]
	add r5, r4, #1
	ldr r1, _020C91A8 ; =0x020E4794
	mov r0, r5
	strb r11, [r4]
	bl FUN_020241a0
	movs r9, r0
	bne _020C9118
	ldr r1, _020C919C ; =0x020E46C8
	mov r0, r5
	bl FUN_020241a0
	mov r9, r0
_020C9118:
	cmp r9, #0
	ldrnesb r7, [r9]
	mov r2, r6
	mov r0, r10
	add r1, sp, #8
	mov r3, r5
	strneb r11, [r9]
	bl FUN_ov15_020c8dc8
	cmp r0, #1
	beq _020C9158
	strb r8, [r4]
	cmp r9, #0
	add sp, sp, #0x14
	strneb r7, [r9]
	mov r0, #0
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
_020C9158:
	mov r0, r5
	bl _strlen
	add r0, r5, r0
	add r6, r0, #1
	ldr r0, [sp]
	strb r8, [r4]
	cmp r9, #0
	strneb r7, [r9]
	cmp r6, r0
	blo _020C90D4
_020C9180:
	mov r0, #1
	add sp, sp, #0x14
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
_020C918C: .word ov15_020E4698
_020C9190: .word ov15_020E4778
_020C9194: .word ov15_020E477C
_020C9198: .word ov15_020E4788
_020C919C: .word ov15_020E46C8
_020C91A0: .word ov15_020E478C
_020C91A4: .word ov15_020E4790
_020C91A8: .word ov15_020E4794
	arm_func_end FUN_ov15_020c8f08

	arm_func_start FUN_ov15_020c91ac
FUN_ov15_020c91ac: ; 0x020C91AC
	stmfd sp!, {r4, r5, r6, lr}
	mov r6, r0
	mov r5, r1
	mov r4, #0
_020C91BC:
	add r0, r6, r4, lsl #3
	add r0, r0, #0x1000
	ldr r1, [r0, #0xa74]
	cmp r1, #0
	beq _020C91F8
	mov r0, r5
	bl FUN_02023fe0
	cmp r0, #0
	addeq r0, r6, r4, lsl #3
	addeq r0, r0, #0x1000
	ldreq r0, [r0, #0xa78]
	ldmeqfd sp!, {r4, r5, r6, pc}
	add r4, r4, #1
	cmp r4, #0x20
	blt _020C91BC
_020C91F8:
	mov r0, #0
	ldmfd sp!, {r4, r5, r6, pc}
	arm_func_end FUN_ov15_020c91ac

	arm_func_start FUN_ov15_020c9200
FUN_ov15_020c9200: ; 0x020C9200
	stmfd sp!, {r4, r5, r6, lr}
	mov r6, r2
	mov r5, r3
	bl FUN_ov15_020c91ac
	movs r4, r0
	moveq r0, #0
	ldmeqfd sp!, {r4, r5, r6, pc}
	bl _strlen
	mov r1, r0
	mov r0, r4
	mov r2, r6
	mov r3, r5
	bl FUN_ov15_020cc024
	cmn r0, #1
	ldmeqfd sp!, {r4, r5, r6, pc}
	cmp r0, r5
	movlo r1, #0
	strlob r1, [r6, r0]
	ldmfd sp!, {r4, r5, r6, pc}
	arm_func_end FUN_ov15_020c9200

	arm_func_start FUN_ov15_020c924c
FUN_ov15_020c924c: ; 0x020C924C
	stmfd sp!, {r4, r5, r6, lr}
	mov r6, r2
	mov r5, r3
	bl FUN_ov15_020c91ac
	movs r4, r0
	moveq r0, #0
	ldmeqfd sp!, {r4, r5, r6, pc}
	bl _strlen
	cmp r0, r5
	movge r0, #0
	ldmgefd sp!, {r4, r5, r6, pc}
	mov r0, r6
	mov r1, r4
	bl FUN_02023e98
	mov r0, #1
	ldmfd sp!, {r4, r5, r6, pc}
	arm_func_end FUN_ov15_020c924c

	arm_func_start FUN_ov15_020c928c
FUN_ov15_020c928c: ; 0x020C928C
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, lr}
	add r0, r0, #0x1000
	ldr r5, [r0, #0x14]
	mov r7, r2
	mov r8, r1
	mov r6, #0
	cmp r7, #0
	ldmlefd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
	mov r4, r6
	mov r9, r6
_020C92B4:
	ldr r1, [r8, r6, lsl #3]
	cmp r1, #0
	beq _020C92D0
	mov r0, r4
	mov r2, r4
	blx r5
	str r4, [r8, r6, lsl #3]
_020C92D0:
	add r0, r8, r6, lsl #3
	ldr r1, [r0, #4]
	cmp r1, #0
	beq _020C92F4
	mov r0, r9
	mov r2, r9
	blx r5
	add r0, r8, r6, lsl #3
	str r9, [r0, #4]
_020C92F4:
	add r6, r6, #1
	cmp r6, r7
	blt _020C92B4
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
	arm_func_end FUN_ov15_020c928c

	arm_func_start FUN_ov15_020c9304
FUN_ov15_020c9304: ; 0x020C9304
	stmfd sp!, {r4, r5, r6, r7, r8, lr}
	ldr r7, _020C93C4 ; =0x020E8F50
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
	bl FUN_ov15_020c9578
	mov r0, r4
	ldmfd sp!, {r4, r5, r6, r7, r8, pc}
_020C93C4: .word ov15_020E8F50
_020C93C8: .word 0x000011F4
_020C93CC: .word 0xFFFE7961
_020C93D0: .word 0x00001C50
	arm_func_end FUN_ov15_020c9304

	arm_func_start FUN_ov15_020c93d4
FUN_ov15_020c93d4: ; 0x020C93D4
	stmfd sp!, {r4, r5, r6, lr}
	ldr r5, _020C94A0 ; =0x020E8F50
	ldmia r5, {r0, r1}
	add r1, r1, #0x1000
	cmp r0, #0
	ldr r4, [r1, #0x10c]
	beq _020C940C
	bl FUN_ov15_020c8778
	mov r6, #0
	ldr r1, [r5]
	mov r0, r6
	mov r2, r6
	blx r4
	str r6, [r5]
_020C940C:
	bl FUN_ov15_020c6e34
	ldr r5, _020C94A0 ; =0x020E8F50
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
	ldr r5, _020C94A0 ; =0x020E8F50
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
	ldr r5, _020C94A0 ; =0x020E8F50
	mov r6, #0
	ldr r1, [r5, #4]
	mov r0, r6
	mov r2, r6
	blx r4
	str r6, [r5, #4]
	ldmfd sp!, {r4, r5, r6, pc}
_020C94A0: .word ov15_020E8F50
	arm_func_end FUN_ov15_020c93d4

	arm_func_start FUN_ov15_020c94a4
FUN_ov15_020c94a4: ; 0x020C94A4
	stmfd sp!, {r4, lr}
	ldr r0, _020C9520 ; =0x020E8F50
	ldr r1, [r0, #4]
	cmp r1, #0
	ldmeqfd sp!, {r4, pc}
	ldr r0, [r0]
	cmp r0, #0
	beq _020C94C8
	bl FUN_ov15_020c8258
_020C94C8:
	bl FUN_ov15_020c6d98
	ldr r4, _020C9520 ; =0x020E8F50
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
	ldr r0, _020C9520 ; =0x020E8F50
	mvn r1, #6
	ldr r0, [r0, #4]
	add r0, r0, #0x1000
	str r1, [r0, #4]
	ldmfd sp!, {r4, pc}
_020C9520: .word ov15_020E8F50
	arm_func_end FUN_ov15_020c94a4

	arm_func_start FUN_ov15_020c9524
FUN_ov15_020c9524: ; 0x020C9524
	stmfd sp!, {r4, lr}
	ldr r4, _020C955C ; =0x020E8F50
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
_020C955C: .word ov15_020E8F50
	arm_func_end FUN_ov15_020c9524

	arm_func_start FUN_ov15_020c9560
FUN_ov15_020c9560: ; 0x020C9560
	ldr r0, _020C9574 ; =0x020E8F50
	ldr r0, [r0, #4]
	add r0, r0, #0x1000
	ldr r0, [r0, #4]
	bx lr
_020C9574: .word ov15_020E8F50
	arm_func_end FUN_ov15_020c9560

	arm_func_start FUN_ov15_020c9578
FUN_ov15_020c9578: ; 0x020C9578
	stmfd sp!, {r4, lr}
	sub sp, sp, #8
	ldr r0, _020C95F4 ; =0x020E8F50
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
	ldr r4, _020C95F4 ; =0x020E8F50
	mov r0, #0x1000
	ldr r2, [r4, #4]
	mov r3, #0x10
	str r0, [sp]
	add r0, r2, #0x11c
	ldr r1, _020C95F8 ; =FUN_ov15_020c95fc
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
_020C95F4: .word ov15_020E8F50
_020C95F8: .word FUN_ov15_020c95fc
	arm_func_end FUN_ov15_020c9578

	arm_func_start FUN_ov15_020c95fc
FUN_ov15_020c95fc: ; 0x020C95FC
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, lr}
	sub sp, sp, #0x290
	ldr r4, _020CA20C ; =0x020E8F50
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
	ldr r0, _020CA214 ; =0x020E4798
	ldr r1, _020CA218 ; =0x020E8F80
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
	bl FUN_ov15_020c7ff0
	cmp r0, #0
	beq _020C96BC
_020C96A8:
	ldr r0, _020CA20C ; =0x020E8F50
	ldr r0, [r0]
	bl FUN_ov15_020c8778
	mov r0, #1
	b _020C9A54
_020C96BC:
	ldr r0, [r4]
	bl FUN_ov15_020c8100
	cmp r0, #0
	beq _020C96D0
	b _020C96A8
_020C96D0:
	ldr r0, _020CA21C ; =0x020939a4
	ldr r0, [r0, #4]
	bl OS_GetThreadPriority
	sub r1, r0, #1
	ldr r0, [r4]
	bl FUN_ov15_020c819c
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
	ldr r0, _020CA20C ; =0x020E8F50
	mvn r1, #0
	ldr r0, [r0, #4]
	add r0, r0, #0x1000
	str r1, [r0, #4]
_020C9754:
	ldr r0, _020CA20C ; =0x020E8F50
	ldr r0, [r0]
	bl FUN_ov15_020c8778
	b _020C99E0
_020C9764:
	mov r1, #0
	bl FUN_ov15_020c8f08
	cmp r0, #1
	beq _020C9784
_020C9774:
	ldr r0, _020CA20C ; =0x020E8F50
	ldr r0, [r0]
_020C977C:
	bl FUN_ov15_020c8778
	b _020C97A8
_020C9784:
	ldr r0, [r4]
	ldr r1, _020CA220 ; =0x020E47C4
	bl FUN_ov15_020c91ac
	bl FUN_02024640
	mov r10, r0
	ldr r0, _020CA224 ; =0x02099E60
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
	ldr r0, _020CA20C ; =0x020E8F50
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
	ldr r10, _020CA20C ; =0x020E8F50
	mvn r1, #5
	str r1, [r0, #4]
	ldr r0, [r10]
	bl FUN_ov15_020c8778
	ldr r0, _020CA22C ; =0x020E441C
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
	bl FUN_02023fe0
	cmp r0, #0
	movne r0, #1
	strne r0, [r10, #0x44]
	ldr r0, [r10]
	ldr r1, _020CA218 ; =0x020E8F80
	mov r5, #1
	bl FUN_ov15_020c7ff0
	cmp r0, #0
	beq _020C9878
_020C9868:
	ldr r0, [r10]
	bl FUN_ov15_020c8778
	mov r0, r5
_020C9874:
	b _020C9A54
_020C9878:
	add r4, sp, #0x38
	mov r0, r4
	bl FUN_ov15_020c79d0
	cmp r0, #0
	beq _020C98A4
	ldr r0, [r10]
	mov r1, r4
	mov r2, r5
	bl FUN_ov15_020c7c9c
	cmp r0, #0
	bne _020C98B4
_020C98A4:
	ldr r0, [r10]
	bl FUN_ov15_020c8778
	mov r0, #8
	b _020C9874
_020C98B4:
	ldr r0, [r10]
	ldr r1, _020CA238 ; =0x020E47F0
	ldr r2, _020CA23C ; =0x020E47F8
	mov r3, #7
	bl FUN_ov15_020c89c0
	cmp r0, #0
	bne _020C9900
	ldr r0, [r10, #4]
	add r0, r0, #0x1000
	ldr r4, [r0, #0x118]
	mov r0, r4
	bl _strlen
	mov r3, r0
	ldr r0, [r10]
	ldr r1, _020CA240 ; =0x020E4800
	mov r2, r4
	bl FUN_ov15_020c89c0
	cmp r0, #0
	beq _020C9914
_020C9900:
	ldr r0, _020CA20C ; =0x020E8F50
	ldr r0, [r0]
	bl FUN_ov15_020c8778
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
	bl FUN_ov15_020c8100
	cmp r0, #0
	beq _020C9950
	b _020C9868
_020C9950:
	ldr r0, _020CA21C ; =0x020939a4
	mvn r5, #0
	ldr r0, [r0, #4]
	ldr r4, _020CA20C ; =0x020E8F50
	bl OS_GetThreadPriority
	mov r1, r0
	ldr r0, [r10]
	sub r1, r1, #1
	bl FUN_ov15_020c819c
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
	bl FUN_ov15_020c8778
_020C99E0:
	mov r0, #3
	b _020C9A54
_020C99E8:
	bl FUN_ov15_020c8778
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
	bl _strlen
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
	ldr r0, _020CA20C ; =0x020E8F50
	ldr r0, [r0]
	bl FUN_ov15_020c8778
	mov r0, #4
_020C9A54:
	bl FUN_ov15_020ca26c
	b _020CA1B8
_020C9A5C:
	mov r0, r11
	bl _strlen
	mov r2, r0
	ldr r0, [sp, #4]
	mov r1, r11
	add r2, r2, #1
	bl _strncpy
	b _020C9A8C
_020C9A7C:
	ldr r0, [r0]
	bl FUN_ov15_020c8778
	mov r0, #0xa
	b _020C9874
_020C9A8C:
	ldr r0, [r4]
	bl FUN_ov15_020c8778
	add r0, sp, #0x24
	bl FUN_ov15_020ca8e0
	ldr r1, [sp, #0x28]
	ldr r0, [sp, #0x24]
	cmp r1, #0
	cmpeq r0, #0
	bne _020C9BA4
	ldr r1, [r4, #4]
	ldr r0, _020CA244 ; =0x020E8F9C
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
	bl FUN_ov15_020c6bd8
	cmp r0, #0
	beq _020C9B08
	mov r0, #5
	b _020C9874
_020C9B08:
	bl FUN_ov15_020c6e84
	bl FUN_ov15_020c6ecc
	cmp r0, #0x15
	beq _020C9BA0
	ldr r4, _020CA20C ; =0x020E8F50
	mvn r10, #0
	mov r5, #0
	bl FUN_ov15_020c6ecc
	cmp r0, #9
	ldreq r0, [r4, #4]
	addeq r0, r0, #0x1000
	streq r10, [r0, #4]
	beq _020C9B94
	add r0, sp, #0xcc
	bl FUN_ov15_020c6f14
	ldr r0, [r4, #0x10]
	cmp r0, #1
	bne _020C9B84
	ldr r1, [sp, #0xcc]
	ldr r0, _020CA248 ; =0xFFFFA4FA
	cmp r1, r0
	beq _020C9B6C
	bl FUN_ov15_020c6ecc
	cmp r0, #0xb
	bne _020C9B84
_020C9B6C:
	ldr r0, [r4, #4]
	add r0, r0, #0x1000
	str r5, [r0, #4]
	bl FUN_ov15_020c6e34
	mov r0, #0xb
	b _020C9874
_020C9B84:
	ldr r0, [r4, #4]
	ldr r1, [sp, #0xcc]
	add r0, r0, #0x1000
	str r1, [r0, #4]
_020C9B94:
	bl FUN_ov15_020c6e34
_020C9B98:
	mov r0, #6
	b _020C9A54
_020C9BA0:
	bl FUN_ov15_020c6e34
_020C9BA4:
	cmp r10, #0xc8
	bne _020C9BC8
	ldr r0, _020CA20C ; =0x020E8F50
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
	ldr r0, _020CA22C ; =0x020E441C
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
	bl FUN_02023fe0
	cmp r0, #0
	movne r0, #1
	strne r0, [r4, #0x44]
	ldr r0, [r4]
	ldr r1, _020CA218 ; =0x020E8F80
	bl FUN_ov15_020c7ff0
	cmp r0, #0
	beq _020C9C30
	b _020C96A8
_020C9C30:
	add r0, sp, #0x38
	bl FUN_ov15_020c79d0
	cmp r0, #0
	beq _020C9C58
	ldr r0, [r4]
	add r1, sp, #0x38
	mov r2, #1
	bl FUN_ov15_020c7c9c
	cmp r0, #0
	bne _020C9C5C
_020C9C58:
	b _020C9900
_020C9C5C:
	ldr r0, [r4]
	ldr r1, _020CA238 ; =0x020E47F0
	ldr r2, _020CA24C ; =0x020E4810
	mov r3, #5
	bl FUN_ov15_020c89c0
	cmp r0, #0
	bne _020C9CA8
	ldr r0, [r4, #4]
	add r0, r0, #0x1000
	ldr r10, [r0, #0x114]
	mov r0, r10
	bl _strlen
	mov r3, r0
	ldr r0, [r4]
	ldr r1, _020CA250 ; =0x020E4818
	mov r2, r10
	bl FUN_ov15_020c89c0
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
	bl FUN_ov15_020c8100
	cmp r0, #0
	beq _020C9CE8
	b _020C96A8
_020C9CE8:
	ldr r0, _020CA21C ; =0x020939a4
	ldr r0, [r0, #4]
	bl OS_GetThreadPriority
	sub r1, r0, #1
	ldr r0, [r4]
	bl FUN_ov15_020c819c
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
	bl FUN_ov15_020c8778
	ldr r0, _020CA20C ; =0x020E8F50
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
	ldr r0, _020CA20C ; =0x020E8F50
	mvn r1, #0
	ldr r0, [r0, #4]
	add r0, r0, #0x1000
	str r1, [r0, #4]
_020C9DA4:
	b _020C9754
_020C9DA8:
	mov r1, #0
	bl FUN_ov15_020c8f08
	cmp r0, #1
	beq _020C9DBC
	b _020C9774
_020C9DBC:
	ldr r0, [r4]
	ldr r1, _020CA220 ; =0x020E47C4
	bl FUN_ov15_020c91ac
	bl FUN_02024640
	mov r10, r0
	ldr r0, _020CA224 ; =0x02099E60
	ldr r0, [r0]
	cmp r0, #0x22
	bne _020C9DE4
	b _020C9774
_020C9DE4:
	cmp r10, #0xc8
	beq _020C9E28
	ldr r4, _020CA20C ; =0x020E8F50
	ldr r0, [r4]
	bl FUN_ov15_020c8778
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
	bl FUN_ov15_020c9200
	cmp r0, #0
	bgt _020C9E58
_020C9E44:
	ldr r0, _020CA20C ; =0x020E8F50
	ldr r0, [r0]
	bl FUN_ov15_020c8778
	mov r0, #9
	b _020C9A54
_020C9E58:
	add r0, sp, #0x20
	bl FUN_02024640
	ldr r1, _020CA224 ; =0x02099E60
	ldr r1, [r1]
	cmp r1, #0x22
	bne _020C9E74
	b _020C9E44
_020C9E74:
	ldr r1, [r4, #0x10]
	cmp r1, #1
	cmpeq r0, #0x72
	bne _020C9E94
	ldr r1, _020CA20C ; =0x020E8F50
	mov r0, #0xb
	ldr r1, [r1, #4]
	b _020C9E14
_020C9E94:
	cmp r0, #0x64
	blt _020C9EAC
	ldr r0, _020CA20C ; =0x020E8F50
	ldr r0, [r0]
	bl FUN_ov15_020c8778
	b _020C9B98
_020C9EAC:
	mov r2, #0
	ldr r0, [r4]
	ldr r1, _020CA258 ; =0x020E482C
	mov r3, r2
	bl FUN_ov15_020c9200
	str r0, [sp, #8]
	cmp r0, #0
	bgt _020C9ED0
	b _020C9E44
_020C9ED0:
	mov r2, #0
	ldr r0, [r4]
	ldr r1, _020CA25C ; =0x020E4830
	mov r3, r2
	bl FUN_ov15_020c9200
	mov r11, r0
	cmp r11, #0
	bgt _020C9EF4
	b _020C9E44
_020C9EF4:
	mov r2, #0
	ldr r0, [r4]
	ldr r1, _020CA260 ; =0x020E4838
	mov r3, r2
	bl FUN_ov15_020c9200
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
	bl FUN_ov15_020c9200
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
	bl FUN_ov15_020c9200
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
	bl FUN_ov15_020c9200
	cmp r0, #0
	bge _020C9FE0
	b _020C9E44
_020C9FE0:
	mov r1, r11
	strb r1, [r9, r0]
	mov r0, r9
	bl FUN_02024640
	ldr r1, _020CA224 ; =0x02099E60
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
	bl FUN_ov15_020c8778
	ldr r0, [r4, #4]
	ldr r1, _020CA218 ; =0x020E8F80
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
	bl FUN_ov15_020c7ff0
	cmp r0, #0
	beq _020CA06C
	b _020C96A8
_020CA06C:
	ldr r0, [r4]
	mov r1, r8
	bl FUN_ov15_020c8ac8
	cmp r0, #0
	beq _020CA084
	b _020C9900
_020CA084:
	ldr r0, [r4]
	bl FUN_ov15_020c8100
	cmp r0, #0
	beq _020CA098
	b _020C96A8
_020CA098:
	ldr r0, _020CA21C ; =0x020939a4
	ldr r0, [r0, #4]
	bl OS_GetThreadPriority
	sub r1, r0, #1
	ldr r0, [r4]
	bl FUN_ov15_020c819c
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
	ldr r0, _020CA20C ; =0x020E8F50
	mvn r1, #0
	ldr r0, [r0, #4]
	add r0, r0, #0x1000
	str r1, [r0, #4]
_020CA11C:
	b _020C9754
_020CA120:
	mov r1, #1
	bl FUN_ov15_020c8f08
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
	bl _strlen
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
	bl _strlen
	mov r2, r0
	ldr r0, [sp]
	mov r1, r10
	add r2, r2, #1
	bl _strncpy
	ldr r0, [r4]
	bl FUN_ov15_020c8778
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
_020CA20C: .word ov15_020E8F50
_020CA210: .word 0x00009C40
_020CA214: .word ov15_020E4798
_020CA218: .word ov15_020E8F80
_020CA21C: .word 0x020939a4
_020CA220: .word ov15_020E47C4
_020CA224: .word unk_02099E60
_020CA228: .word 0x0000012E
_020CA22C: .word ov15_020E441C
_020CA230: .word 0x00004E20
_020CA234: .word ov15_020E47D0
_020CA238: .word ov15_020E47F0
_020CA23C: .word ov15_020E47F8
_020CA240: .word ov15_020E4800
_020CA244: .word ov15_020E8F9C
_020CA248: .word 0xFFFFA4FA
_020CA24C: .word ov15_020E4810
_020CA250: .word ov15_020E4818
_020CA254: .word ov15_020E4820
_020CA258: .word ov15_020E482C
_020CA25C: .word ov15_020E4830
_020CA260: .word ov15_020E4838
_020CA264: .word 0x0002BF20
_020CA268: .word 0x0001D4C0
	arm_func_end FUN_ov15_020c95fc

	arm_func_start FUN_ov15_020ca26c
FUN_ov15_020ca26c: ; 0x020CA26C
	stmfd sp!, {r3, r4, r5, lr}
	ldr r4, _020CA2A8 ; =0x020E8F50
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
_020CA2A8: .word ov15_020E8F50
	arm_func_end FUN_ov15_020ca26c

	arm_func_start FUN_ov15_020ca2ac
FUN_ov15_020ca2ac: ; 0x020CA2AC
	stmfd sp!, {r4, r5, r6, r7, r8, lr}
	ldr r4, _020CA334 ; =0x020E8FE4
	mov r8, r0
	ldr r0, [r4]
	mov r7, r1
	cmp r0, #0
	beq _020CA2DC
	ldr r1, _020CA338 ; =0xFFFFA1DC
	mov r0, #9
	bl FUN_ov15_020cc2b8
	mov r0, #0
	ldmfd sp!, {r4, r5, r6, r7, r8, pc}
_020CA2DC:
	ldr r5, _020CA33C ; =0x00001C5C
	mov r6, #0
	mov r0, r6
	mov r1, r5
	blx r8
	str r0, [r4]
	cmp r0, #0
	bne _020CA310
	ldr r1, _020CA338 ; =0xFFFFA1DC
	mov r0, #9
	bl FUN_ov15_020cc2b8
	mov r0, r6
	ldmfd sp!, {r4, r5, r6, r7, r8, pc}
_020CA310:
	mov r1, r6
	mov r2, r5
	bl MI_CpuFill8
	ldr r1, [r4]
	mov r0, #1
	str r8, [r1]
	ldr r1, [r4]
	str r7, [r1, #4]
	ldmfd sp!, {r4, r5, r6, r7, r8, pc}
_020CA334: .word ov15_020E8FE4
_020CA338: .word 0xFFFFA1DC
_020CA33C: .word 0x00001C5C
	arm_func_end FUN_ov15_020ca2ac

	arm_func_start FUN_ov15_020ca340
FUN_ov15_020ca340: ; 0x020CA340
	stmfd sp!, {r3, r4, r5, lr}
	ldr r4, _020CA37C ; =0x020E8FE4
	ldr r0, [r4]
	cmp r0, #0
	ldmeqfd sp!, {r3, r4, r5, pc}
	add r0, r0, #8
	bl FUN_ov15_020c8778
	mov r5, #0
	ldr r1, [r4]
	mov r0, r5
	ldr r3, [r1, #4]
	mov r2, r5
	blx r3
	str r5, [r4]
	ldmfd sp!, {r3, r4, r5, pc}
_020CA37C: .word ov15_020E8FE4
	arm_func_end FUN_ov15_020ca340

	arm_func_start FUN_ov15_020ca380
FUN_ov15_020ca380: ; 0x020CA380
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	sub sp, sp, #0xb0
	ldr r4, _020CA59C ; =0x020E8FE4
	mov r7, r0
	ldr r2, [r4]
	mov r0, r1
	add r2, r2, #0x1000
	str r1, [r2, #0xc58]
	mov r1, #0
	mov r2, #0x174
	mov r5, r1
	bl MI_CpuFill8
	ldr r1, [r4]
	add r0, r1, #0x1000
	ldr r0, [r0, #0xbe8]
	cmp r0, #0
	beq _020CA3DC
	add r0, r1, #0x37c
	add r0, r0, #0x1800
	bl OS_IsThreadTerminated
	cmp r0, #0
	bne _020CA3DC
	bl OS_Terminate
_020CA3DC:
	ldr r0, _020CA5A0 ; =0x020E441C
	mov r1, #0x1000
	ldr r0, [r0]
	ldr r6, [r4]
	str r1, [sp, #8]
	str r0, [sp]
	str r5, [sp, #4]
	ldr r2, [r6]
	ldr r1, _020CA5A4 ; =0x020E4840
	str r2, [sp, #0xc]
	ldr r2, [r6, #4]
	str r2, [sp, #0x10]
	bl FUN_02023fe0
	cmp r0, #0
	movne r0, #1
	strne r0, [sp, #0x14]
	ldr r2, _020CA5A8 ; =0x00004E20
	add r1, sp, #0
	add r0, r6, #8
	streq r5, [sp, #0x14]
	str r2, [sp, #0x18]
	bl FUN_ov15_020c7ff0
	cmp r0, #0
	beq _020CA454
	ldr r1, _020CA5AC ; =0xFFFFA1DC
	mov r0, #9
	bl FUN_ov15_020cc2b8
	add sp, sp, #0xb0
	mov r0, #0
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_020CA454:
	add r6, sp, #0x1c
	mov r0, r6
	bl FUN_ov15_020c79d0
	cmp r0, #0
	beq _020CA484
	ldr r0, [r4]
	mov r1, r6
	mov r2, r5
	add r0, r0, #8
	bl FUN_ov15_020c7c9c
	cmp r0, #0
	bne _020CA4A8
_020CA484:
	ldr r0, [r4]
	add r0, r0, #8
	bl FUN_ov15_020c8778
	ldr r1, _020CA5AC ; =0xFFFFA1DC
	mov r0, #9
	bl FUN_ov15_020cc2b8
	add sp, sp, #0xb0
	mov r0, #0
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_020CA4A8:
	ldr r0, [r4]
	ldr r1, _020CA5B0 ; =0x020E4860
	ldr r2, _020CA5B4 ; =0x020E4868
	add r0, r0, #8
	mov r3, #6
	bl FUN_ov15_020c89c0
	cmp r0, #0
	bne _020CA4E8
	ldr r0, [r4]
	ldr r1, _020CA5B8 ; =0x020E4870
	mov r2, r7
	add r0, r0, #8
	mov r3, #4
	bl FUN_ov15_020c89c0
	cmp r0, #0
	beq _020CA50C
_020CA4E8:
	ldr r0, [r4]
	add r0, r0, #8
	bl FUN_ov15_020c8778
	ldr r1, _020CA5AC ; =0xFFFFA1DC
	mov r0, #9
	bl FUN_ov15_020cc2b8
	add sp, sp, #0xb0
	mov r0, #0
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_020CA50C:
	ldr r0, [r4]
	add r0, r0, #8
	bl FUN_ov15_020c8100
	cmp r0, #0
	beq _020CA544
	ldr r0, [r4]
	add r0, r0, #8
	bl FUN_ov15_020c8778
	ldr r1, _020CA5AC ; =0xFFFFA1DC
	mov r0, #9
	bl FUN_ov15_020cc2b8
	add sp, sp, #0xb0
	mov r0, r5
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_020CA544:
	ldr r0, _020CA5BC ; =0x020939a4
	ldr r0, [r0, #4]
	bl OS_GetThreadPriority
	ldr r2, [r4]
	sub r1, r0, #1
	add r0, r2, #8
	bl FUN_ov15_020c819c
	ldr r1, [r4]
	add r0, r1, #0x1000
	ldr r0, [r0, #0xbe8]
	cmp r0, #0
	addne sp, sp, #0xb0
	movne r0, #1
	ldmnefd sp!, {r3, r4, r5, r6, r7, pc}
	add r0, r1, #8
	bl FUN_ov15_020c8778
	ldr r1, _020CA5AC ; =0xFFFFA1DC
	mov r0, #9
	bl FUN_ov15_020cc2b8
	mov r0, r5
	add sp, sp, #0xb0
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_020CA59C: .word ov15_020E8FE4
_020CA5A0: .word ov15_020E441C
_020CA5A4: .word ov15_020E4840
_020CA5A8: .word 0x00004E20
_020CA5AC: .word 0xFFFFA1DC
_020CA5B0: .word ov15_020E4860
_020CA5B4: .word ov15_020E4868
_020CA5B8: .word ov15_020E4870
_020CA5BC: .word 0x020939a4
	arm_func_end FUN_ov15_020ca380

	arm_func_start FUN_ov15_020ca5c0
FUN_ov15_020ca5c0: ; 0x020CA5C0
	stmfd sp!, {r4, lr}
	ldr r4, _020CA67C ; =0x020E8FE4
	ldr r1, [r4]
	cmp r1, #0
	moveq r0, #0
	ldmeqfd sp!, {r4, pc}
	add r0, r1, #0x1000
	ldr r0, [r0, #0xbe8]
	cmp r0, #0
	moveq r0, #1
	ldmeqfd sp!, {r4, pc}
	add r0, r1, #0x37c
	add r0, r0, #0x1800
	bl OS_IsThreadTerminated
	cmp r0, #1
	bne _020CA674
	ldr r1, [r4]
	add r0, r1, #0x1000
	ldr r0, [r0, #0x28]
	cmp r0, #7
	beq _020CA648
	cmp r0, #8
	bne _020CA658
	bl FUN_ov15_020ca684
	cmp r0, #0
	ldr r0, [r4]
	add r0, r0, #8
	bne _020CA63C
	bl FUN_ov15_020c8778
	mov r0, #4
	ldmfd sp!, {r4, pc}
_020CA63C:
	bl FUN_ov15_020c8778
	mov r0, #3
	ldmfd sp!, {r4, pc}
_020CA648:
	add r0, r1, #8
	bl FUN_ov15_020c8778
	mov r0, #5
	ldmfd sp!, {r4, pc}
_020CA658:
	add r0, r1, #8
	bl FUN_ov15_020c8778
	ldr r1, _020CA680 ; =0xFFFFA1DB
	mov r0, #0x10
	bl FUN_ov15_020cc2b8
	mov r0, #4
	ldmfd sp!, {r4, pc}
_020CA674:
	mov r0, #2
	ldmfd sp!, {r4, pc}
_020CA67C: .word ov15_020E8FE4
_020CA680: .word 0xFFFFA1DB
	arm_func_end FUN_ov15_020ca5c0

	arm_func_start FUN_ov15_020ca684
FUN_ov15_020ca684: ; 0x020CA684
	stmfd sp!, {r3, r4, r5, r6, lr}
	sub sp, sp, #4
	ldr r0, _020CA8A0 ; =0x020E8FE4
	mov r4, #0
	ldr r5, [r0]
	mov r1, r4
	add r0, r5, #8
	bl FUN_ov15_020c8f08
	cmp r0, #0
	bne _020CA6C4
	ldr r1, _020CA8A4 ; =0xFFFF9DF3
	mov r0, #0xf
	bl FUN_ov15_020cc2b8
	add sp, sp, #4
	mov r0, r4
	ldmfd sp!, {r3, r4, r5, r6, pc}
_020CA6C4:
	ldr r1, _020CA8A8 ; =0x020E4874
	add r0, r5, #8
	bl FUN_ov15_020c91ac
	cmp r0, #0
	beq _020CA6DC
	bl FUN_ov15_020cc73c
_020CA6DC:
	ldr r1, _020CA8AC ; =0x020E487C
	add r0, r5, #8
	bl FUN_ov15_020c91ac
	cmp r0, #0
	bne _020CA708
	ldr r1, _020CA8A4 ; =0xFFFF9DF3
	mov r0, #0xf
	bl FUN_ov15_020cc2b8
	add sp, sp, #4
	mov r0, #0
	ldmfd sp!, {r3, r4, r5, r6, pc}
_020CA708:
	bl FUN_02024640
	ldr r6, _020CA8B0 ; =0x02099E60
	mov r2, r0
	ldr r0, [r6]
	cmp r0, #0x22
	bne _020CA738
	ldr r1, _020CA8A4 ; =0xFFFF9DF3
	mov r0, #0xf
	bl FUN_ov15_020cc2b8
	add sp, sp, #4
	mov r0, #0
	ldmfd sp!, {r3, r4, r5, r6, pc}
_020CA738:
	cmp r2, #0xc8
	beq _020CA75C
	ldr r1, _020CA8B4 ; =0xFFFF9E58
	mov r0, #0xf
	sub r1, r1, r2
	bl FUN_ov15_020cc2b8
	add sp, sp, #4
	mov r0, #0
	ldmfd sp!, {r3, r4, r5, r6, pc}
_020CA75C:
	add r4, sp, #0
	ldr r1, _020CA8B8 ; =0x020E4888
	mov r2, r4
	add r0, r5, #8
	mov r3, #4
	bl FUN_ov15_020c9200
	cmp r0, #0
	bgt _020CA794
	ldr r1, _020CA8A4 ; =0xFFFF9DF3
	mov r0, #0xf
	bl FUN_ov15_020cc2b8
	add sp, sp, #4
	mov r0, #0
	ldmfd sp!, {r3, r4, r5, r6, pc}
_020CA794:
	mov r0, r4
	bl FUN_02024640
	ldr r1, [r6]
	mov r2, r0
	cmp r1, #0x22
	bne _020CA7C4
	ldr r1, _020CA8A4 ; =0xFFFF9DF3
	mov r0, #0xf
	bl FUN_ov15_020cc2b8
	add sp, sp, #4
	mov r0, #0
	ldmfd sp!, {r3, r4, r5, r6, pc}
_020CA7C4:
	cmp r2, #0x64
	blt _020CA7E8
	ldr r1, _020CA8BC ; =0xFFFFA240
	mov r0, #0xf
	sub r1, r1, r2
	bl FUN_ov15_020cc2b8
	add sp, sp, #4
	mov r0, #0
	ldmfd sp!, {r3, r4, r5, r6, pc}
_020CA7E8:
	ldr r6, _020CA8A0 ; =0x020E8FE4
	ldr r1, _020CA8C0 ; =0x020E4894
	ldr r2, [r6]
	add r0, r5, #8
	add r2, r2, #0x1000
	ldr r2, [r2, #0xc58]
	mov r3, #0x40
	add r2, r2, #4
	bl FUN_ov15_020c9200
	cmp r0, #0
	blt _020CA85C
	ldr r0, [r6]
	ldr r1, _020CA8C4 ; =0x020E489C
	add r0, r0, #0x1000
	ldr r2, [r0, #0xc58]
	add r0, r5, #8
	add r2, r2, #0x45
	mov r3, #0x12c
	bl FUN_ov15_020c9200
	cmp r0, #0
	blt _020CA85C
	mov r6, #1
	ldr r1, _020CA8C8 ; =0x020E48AC
	mov r2, r4
	mov r3, r6
	add r0, r5, #8
	bl FUN_ov15_020c9200
	cmp r0, #0
	bge _020CA874
_020CA85C:
	ldr r1, _020CA8A4 ; =0xFFFF9DF3
	mov r0, #0xf
	bl FUN_ov15_020cc2b8
	add sp, sp, #4
	mov r0, #0
	ldmfd sp!, {r3, r4, r5, r6, pc}
_020CA874:
	ldr r1, _020CA8A0 ; =0x020E8FE4
	ldrsb r0, [sp]
	ldr r1, [r1]
	add r1, r1, #0x1000
	ldr r1, [r1, #0xc58]
	cmp r0, #0x59
	movne r6, #0
	mov r0, #1
	str r6, [r1]
	add sp, sp, #4
	ldmfd sp!, {r3, r4, r5, r6, pc}
_020CA8A0: .word ov15_020E8FE4
_020CA8A4: .word 0xFFFF9DF3
_020CA8A8: .word ov15_020E4874
_020CA8AC: .word ov15_020E487C
_020CA8B0: .word unk_02099E60
_020CA8B4: .word 0xFFFF9E58
_020CA8B8: .word ov15_020E4888
_020CA8BC: .word 0xFFFFA240
_020CA8C0: .word ov15_020E4894
_020CA8C4: .word ov15_020E489C
_020CA8C8: .word ov15_020E48AC
	arm_func_end FUN_ov15_020ca684

	arm_func_start FUN_ov15_020ca8cc
FUN_ov15_020ca8cc: ; 0x020CA8CC
	ldr r12, _020CA8DC ; =FUN_ov15_020ca9a4
	mov r1, #0
	mov r2, #3
	bx r12
_020CA8DC: .word FUN_ov15_020ca9a4
	arm_func_end FUN_ov15_020ca8cc

	arm_func_start FUN_ov15_020ca8e0
FUN_ov15_020ca8e0: ; 0x020CA8E0
	stmfd sp!, {r4, r5, r6, lr}
	mov r5, r0
	mov r4, #6
	ldr r0, _020CA990 ; =0x020E900C
	mov r1, r5
	mov r2, r4
	bl MI_CpuCopy8
	ldr r6, _020CA994 ; =0x000007FF
	ldr r1, [r5, #4]
	ldr r2, [r5]
	sub r0, r6, #0x800
	and r12, r2, r0
	and lr, r1, r6
	ldr r0, _020CA998 ; =0x020E9011
	stmia r5, {r12, lr}
	mov r2, r4
	add r1, r5, #8
	bl MI_CpuCopy8
	ldr r0, [r5, #8]
	ldr r2, [r5, #0xc]
	mov r3, r0, lsr #3
	and r1, r6, r2, lsr #3
	str r1, [r5, #0xc]
	orr r3, r3, r2, lsl #29
	sub r0, r6, #0x800
	and r2, r3, r0
	mov r4, #2
	str r2, [r5, #8]
	ldr r0, _020CA99C ; =0x020E9016
	mov r2, r4
	add r1, r5, #0x10
	bl MI_CpuCopy8
	mov r2, r4
	ldrh r4, [r5, #0x10]
	sub r3, r6, #0x400
	ldr r0, _020CA9A0 ; =0x020E9018
	mov r4, r4, asr #6
	strh r4, [r5, #0x10]
	ldrh r4, [r5, #0x10]
	add r1, r5, #0x12
	and r3, r4, r3
	strh r3, [r5, #0x10]
	bl MI_CpuCopy8
	ldmfd sp!, {r4, r5, r6, pc}
_020CA990: .word ov15_020E900C
_020CA994: .word 0x000007FF
_020CA998: .word ov15_020E9011
_020CA99C: .word ov15_020E9016
_020CA9A0: .word ov15_020E9018
	arm_func_end FUN_ov15_020ca8e0

	arm_func_start FUN_ov15_020ca9a4
FUN_ov15_020ca9a4: ; 0x020CA9A4
	stmfd sp!, {r3, lr}
	ldr r3, _020CA9C8 ; =0x020E9000
	mov r12, r0
	ldr r0, [r3, #8]
	add r0, r0, r1, lsl #8
	mov r1, r2, lsl #8
	mov r2, r12
	bl FUN_ov15_020cb13c
	ldmfd sp!, {r3, pc}
_020CA9C8: .word ov15_020E9000
	arm_func_end FUN_ov15_020ca9a4

	arm_func_start FUN_ov15_020ca9cc
FUN_ov15_020ca9cc: ; 0x020CA9CC
	stmfd sp!, {r4, r5, r6, lr}
	ldr r3, _020CAA08 ; =0x020E9000
	mov r5, r1
	ldr r1, [r3, #8]
	mov r6, r0
	mov r4, r2
	mov r2, r6
	add r0, r1, r5, lsl #8
	mov r1, #0x100
	bl FUN_ov15_020cb1cc
	mov r0, r6
	mov r1, r5
	mov r2, r4
	bl FUN_ov15_020cb248
	ldmfd sp!, {r4, r5, r6, pc}
_020CAA08: .word ov15_020E9000
	arm_func_end FUN_ov15_020ca9cc

	arm_func_start FUN_ov15_020caa0c
FUN_ov15_020caa0c: ; 0x020CAA0C
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, lr}
	mov r9, r1
	bl FUN_ov15_020cb32c
	ldr r1, _020CAAB8 ; =0x0000A001
	add r0, r9, #0x200
	bl FUN_0200a944
	ldr r6, _020CAABC ; =0x020E900C
	mov r8, #0
	mov r5, #0xe
	mov r4, #0xfe
	mov r7, #1
_020CAA38:
	mov r0, r9
	mov r1, r8
	mov r2, r7
	bl FUN_ov15_020ca9a4
	cmp r0, #0
	bne _020CAA5C
	bl OS_Terminate
	mov r0, #0
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
_020CAA5C:
	mov r0, r6
	mov r2, r5
	add r1, r9, #0xf0
	bl MI_CpuCopy8
	mov r1, r9
	mov r2, r4
	add r0, r9, #0x200
	bl FUN_0200aa44
	strh r0, [r9, #0xfe]
_020CAA80:
	mov r0, r9
	mov r1, r8
	add r2, r9, #0x100
	bl FUN_ov15_020ca9cc
	cmp r0, #0
	beq _020CAA80
	add r8, r8, #1
	cmp r8, #2
	blt _020CAA38
	bl FUN_ov15_020cb290
	cmp r0, #0
	movne r0, #1
	moveq r0, #0
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
_020CAAB8: .word 0x0000A001
_020CAABC: .word ov15_020E900C
	arm_func_end FUN_ov15_020caa0c

	arm_func_start FUN_ov15_020caac0
FUN_ov15_020caac0: ; 0x020CAAC0
	stmfd sp!, {r4, lr}
	mov r4, r0
	mov r0, #0x20
	mov r1, r0
	mov r2, r4
	bl FUN_ov15_020cb13c
	cmp r0, #0
	moveq r0, #0
	ldmeqfd sp!, {r4, pc}
	ldrh r2, [r4]
	ldr r1, _020CAB00 ; =0x020E9000
	mov r0, #1
	mov r2, r2, lsl #3
	sub r2, r2, #0x400
	str r2, [r1, #8]
	ldmfd sp!, {r4, pc}
_020CAB00: .word ov15_020E9000
	arm_func_end FUN_ov15_020caac0

	arm_func_start FUN_ov15_020cab04
FUN_ov15_020cab04: ; 0x020CAB04
	ldr r12, _020CAB14 ; =FUN_ov15_020ca9a4
	mov r1, #0
	mov r2, #4
	bx r12
_020CAB14: .word FUN_ov15_020ca9a4
	arm_func_end FUN_ov15_020cab04

	arm_func_start FUN_ov15_020cab18
FUN_ov15_020cab18: ; 0x020CAB18
	stmfd sp!, {r4, r5, r6, r7, r8, lr}
	mov r8, r0
	mov r7, r1
	mov r6, r2
	mov r4, #0
_020CAB2C:
	ldr r0, [r7, r4, lsl #2]
	cmp r0, #0
	beq _020CAB54
	add r5, r8, r4, lsl #8
_020CAB3C:
	mov r0, r5
	mov r1, r4
	mov r2, r6
	bl FUN_ov15_020ca9cc
	cmp r0, #0
	beq _020CAB3C
_020CAB54:
	add r4, r4, #1
	cmp r4, #4
	blt _020CAB2C
	bl FUN_ov15_020cb290
	cmp r0, #0
	movne r0, #1
	moveq r0, #0
	ldmfd sp!, {r4, r5, r6, r7, r8, pc}
	arm_func_end FUN_ov15_020cab18

	arm_func_start FUN_ov15_020cab74
FUN_ov15_020cab74: ; 0x020CAB74
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	mov r7, r0
	mov r5, #0
	mov r4, #0xfe
_020CAB84:
	mov r2, r4
	add r0, r7, #0x500
	add r1, r7, r5, lsl #8
	bl FUN_0200aa44
	add r1, r7, r5, lsl #8
	strh r0, [r1, #0xfe]
	mov r6, r1
_020CABA0:
	mov r0, r6
	mov r1, r5
	add r2, r7, #0x400
	bl FUN_ov15_020ca9cc
	cmp r0, #0
	beq _020CABA0
	add r5, r5, #1
	cmp r5, #4
	blt _020CAB84
	bl FUN_ov15_020cb290
	cmp r0, #0
	movne r0, #1
	moveq r0, #0
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
	arm_func_end FUN_ov15_020cab74

	arm_func_start FUN_ov15_020cabd8
FUN_ov15_020cabd8: ; 0x020CABD8
	ldr r1, _020CABE8 ; =0x020E900C
	ldr r12, _020CABEC ; =MI_CpuCopy8
	mov r2, #0xe
	bx r12
_020CABE8: .word ov15_020E900C
_020CABEC: .word MI_CpuCopy8
	arm_func_end FUN_ov15_020cabd8

	arm_func_start FUN_ov15_020cabf0
FUN_ov15_020cabf0: ; 0x020CABF0
	stmfd sp!, {r4, lr}
	mov r12, #0
	mov r3, r12
	mov r2, r12
_020CAC00:
	ldrb r4, [r0, r12]
	mov lr, r2
_020CAC08:
	mov r1, r4, asr lr
	tst r1, #1
	add lr, lr, #1
	addne r3, r3, #1
	cmp lr, #8
	blt _020CAC08
	add r12, r12, #1
	cmp r12, #4
	blt _020CAC00
	and r0, r3, #0xff
	ldmfd sp!, {r4, pc}
	arm_func_end FUN_ov15_020cabf0

	arm_func_start FUN_ov15_020cac34
FUN_ov15_020cac34: ; 0x020CAC34
	mvn r2, #0
	eor r3, r2, r2, lsr r0
	mov r2, #0
_020CAC40:
	mov r0, r2, lsl #3
	rsb r0, r0, #0x18
	mov r0, r3, lsr r0
	strb r0, [r1, r2]
	add r2, r2, #1
	cmp r2, #4
	blt _020CAC40
	bx lr
	arm_func_end FUN_ov15_020cac34

	arm_func_start FUN_ov15_020cac60
FUN_ov15_020cac60: ; 0x020CAC60
	mov r2, #0
_020CAC64:
	ldrb r1, [r0, r2]
	cmp r1, #0
	movne r0, #1
	bxne lr
	add r2, r2, #1
	cmp r2, #0x20
	blt _020CAC64
	mov r0, #0
	bx lr
	arm_func_end FUN_ov15_020cac60

	arm_func_start FUN_ov15_020cac88
FUN_ov15_020cac88: ; 0x020CAC88
	stmfd sp!, {r4, r5, r6, lr}
	sub sp, sp, #8
	mov r6, r0
	mov r5, r1
	bl FUN_ov15_020cacf0
	cmp r0, #0
	addeq sp, sp, #8
	moveq r0, #0
	ldmeqfd sp!, {r4, r5, r6, pc}
	mov r4, #4
	add r1, sp, #4
	mov r0, r6
	mov r2, r4
	bl MI_CpuCopy8
	add r1, sp, #0
	mov r0, r5
	mov r2, r4
	bl MI_CpuCopy8
	ldr r0, [sp]
	ldr r1, [sp, #4]
	mvn r0, r0
	tst r1, r0
	movne r0, #1
	moveq r0, #0
	add sp, sp, #8
	ldmfd sp!, {r4, r5, r6, pc}
	arm_func_end FUN_ov15_020cac88

	arm_func_start FUN_ov15_020cacf0
FUN_ov15_020cacf0: ; 0x020CACF0
	ldrb r0, [r0]
	cmp r0, #0x7f
	moveq r0, #0
	bxeq lr
	cmp r0, #1
	movlo r0, #0
	bxlo lr
	cmp r0, #0xdf
	movls r0, #1
	movhi r0, #0
	bx lr
	arm_func_end FUN_ov15_020cacf0

	arm_func_start FUN_ov15_020cad1c
FUN_ov15_020cad1c: ; 0x020CAD1C
	stmfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, lr}
	sub sp, sp, #0x44
	ldr r11, _020CB124 ; =0x020E9020
	mov r9, r0
	mov r7, r11, lsl #8
	mov r4, r7
	mov r4, r4, lsr #0x10
	orr r4, r4, #0x10000
	str r4, [sp, #0x34]
	and r4, r7, #0xff00
	orr r4, r4, #0x20000
	str r4, [sp, #0x38]
	ldr r5, _020CB128 ; =0x01020000
	mov r6, r3, lsr #0x10
	mov r4, r3, lsl #0x10
	add r3, r5, #0x30000
	orr r3, r3, r4, lsr #16
	str r3, [sp, #0x18]
	mov r3, r4, lsr #0x10
	orr r3, r3, #0x1040000
	ldr r0, _020CB12C ; =0x02002200
	str r3, [sp, #0x2c]
	orr r3, r0, r11, lsr #24
	str r3, [sp, #0x30]
	ldr r3, [sp, #0x38]
	mov r8, #0
	orr r3, r3, #0x1000000
	str r3, [sp, #0x38]
	mov r3, r1, lsr #0x10
	mov r1, r1, lsl #0x10
	mov r1, r1, lsr #0x10
	orr r5, r1, #0x10000
	add r1, r0, #0x300
	and r3, r3, #0xff
	add r0, r0, #0x100
	orr r0, r3, r0
	str r0, [sp, #8]
	orr r0, r2, #0x20000
	str r0, [sp, #0x24]
	orr r0, r6, #0x30000
	str r0, [sp, #0x28]
	orr r0, r6, #0x40000
	str r0, [sp, #0x14]
	ldr r0, _020CB130 ; =0x03002100
	mov r4, #4
	sub r0, r0, #0x100
	str r0, [sp, #0x1c]
	mov r0, r2, lsr #0x10
	orr r0, r0, #0x20000
	str r0, [sp, #0xc]
	mov r0, r2, lsl #0x10
	mov r0, r0, lsr #0x10
	orr r1, r3, r1
	orr r0, r0, #0x30000
	str r1, [sp, #0x20]
	mov r6, r4
	str r0, [sp, #0x10]
	mov r7, r8
_020CAE04:
	cmp r8, #0
	bne _020CAFF4
	ldr r0, _020CB134 ; =0x020E9000
	cmp r9, #7
	str r7, [r0, #4]
	addls pc, pc, r9, lsl #2
	b _020CAE04
_020CAE20: ; jump table
	b _020CAE04 ; case 0
	b _020CAE40 ; case 1
	b _020CAED8 ; case 2
	b _020CAEE4 ; case 3
	b _020CAF80 ; case 4
	b _020CAF80 ; case 5
	b _020CAFC4 ; case 6
	b _020CAFD4 ; case 7
_020CAE40:
	ldr r1, [sp, #8]
	mov r0, r6
	mov r2, r7
	bl FUN_02015b04
	cmp r0, #0
	movlt r8, r7
	blt _020CAE04
	mov r0, r6
	mov r1, r5
	mov r2, r7
	bl FUN_02015b04
	cmp r0, #0
	movlt r8, r7
	blt _020CAE04
	ldr r1, [sp, #0xc]
	mov r0, r6
	mov r2, r7
	bl FUN_02015b04
	cmp r0, #0
	movlt r8, r7
	blt _020CAE04
	ldr r1, [sp, #0x10]
	mov r0, r6
	mov r2, r7
	bl FUN_02015b04
	cmp r0, #0
	movlt r8, r7
	blt _020CAE04
	ldr r1, [sp, #0x14]
	mov r0, r6
	mov r2, r7
	bl FUN_02015b04
	cmp r0, #0
	movlt r8, r7
	blt _020CAE04
	mov r0, r6
	ldr r1, [sp, #0x18]
	b _020CAFDC
_020CAED8:
	mov r0, #4
	ldr r1, [sp, #0x1c]
	b _020CAFDC
_020CAEE4:
	ldr r1, [sp, #0x20]
	mov r0, r4
	mov r2, r7
	bl FUN_02015b04
	cmp r0, #0
	movlt r8, r7
	blt _020CAF70
	mov r0, r4
	mov r1, r5
	mov r2, r7
	bl FUN_02015b04
	cmp r0, #0
	movlt r8, r7
	blt _020CAF70
	ldr r1, [sp, #0x24]
	mov r0, r4
	mov r2, r7
	bl FUN_02015b04
	cmp r0, #0
	movlt r8, r7
	blt _020CAF70
	ldr r1, [sp, #0x28]
	mov r0, r4
	mov r2, r7
	bl FUN_02015b04
	cmp r0, #0
	movlt r8, r7
	blt _020CAF70
	ldr r1, [sp, #0x2c]
	mov r0, r4
	mov r2, r7
	bl FUN_02015b04
	mov r8, r7
	cmp r0, #0
	movge r8, #1
_020CAF70:
	bl FUN_02003410
	str r0, [sp]
	str r1, [sp, #0x40]
	b _020CAE04
_020CAF80:
	ldr r1, [sp, #0x30]
	mov r0, #4
	mov r2, r7
	bl FUN_02015b04
	cmp r0, #0
	movlt r8, r7
	blt _020CAE04
	ldr r1, [sp, #0x34]
	mov r0, #4
	mov r2, r7
	bl FUN_02015b04
	cmp r0, #0
	movlt r8, r7
	blt _020CAE04
	mov r0, #4
	ldr r1, [sp, #0x38]
	b _020CAFDC
_020CAFC4:
	ldr r1, _020CB130 ; =0x03002100
	mov r0, #4
	add r1, r1, #0xc00
	b _020CAFDC
_020CAFD4:
	ldr r1, _020CB130 ; =0x03002100
	mov r0, #4
_020CAFDC:
	mov r2, r7
	bl FUN_02015b04
	mov r8, r7
	cmp r0, #0
	movge r8, #1
	b _020CAE04
_020CAFF4:
	ldr r0, _020CB134 ; =0x020E9000
	ldr r0, [r0, #4]
	cmp r0, #1
	bne _020CAE04
	ldr r0, _020CB134 ; =0x020E9000
	mov r8, #0
	ldrh r0, [r0]
	cmp r0, #0
	bne _020CB118
	cmp r9, #7
	addls pc, pc, r9, lsl #2
	b _020CAE04
_020CB024: ; jump table
	b _020CAE04 ; case 0
	b _020CB044 ; case 1
	b _020CB050 ; case 2
	b _020CB058 ; case 3
	b _020CB060 ; case 4
	b _020CB060 ; case 5
	b _020CB100 ; case 6
	b _020CB10C ; case 7
_020CB044:
	add sp, sp, #0x44
	mov r0, #1
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
_020CB050:
	mov r9, #4
	b _020CAE04
_020CB058:
	mov r9, #5
	b _020CAE04
_020CB060:
	mov r0, r11
	mov r1, #1
	bl DC_InvalidateRange
	cmp r9, #4
	ldrb r0, [r11]
	bne _020CB090
	tst r0, #2
	movne r9, #3
	bne _020CAE04
	add sp, sp, #0x44
	mov r0, r8
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
_020CB090:
	tst r0, #1
	addeq sp, sp, #0x44
	moveq r0, #1
	ldmeqfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
	tst r0, #0x20
	bne _020CB0EC
	bl FUN_02003410
	ldr r2, [sp]
	mov r12, r8
	subs lr, r0, r2
	ldr r0, [sp, #0x40]
	ldr r2, _020CB138 ; =0x000082EA
	sbc r10, r1, r0
	mov r0, #0x40
	umull r0, r1, lr, r0
	mla r1, lr, r12, r1
	mov r12, #0x40
	mla r1, r10, r12, r1
	mov r3, r8
	bl FUN_0201f954
	cmp r1, #0
	cmpeq r0, #0xfa0
	bls _020CB0F4
_020CB0EC:
	mov r9, #6
	b _020CAE04
_020CB0F4:
	mov r0, #0x4000
	blx SVC_WaitByLoop
	b _020CAE04
_020CB100:
	add sp, sp, #0x44
	mov r0, r8
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
_020CB10C:
	add sp, sp, #0x44
	mov r0, #1
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
_020CB118:
	mov r0, r8
	add sp, sp, #0x44
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
_020CB124: .word ov15_020E9020
_020CB128: .word 0x01020000
_020CB12C: .word 0x02002200
_020CB130: .word 0x03002100
_020CB134: .word ov15_020E9000
_020CB138: .word 0x000082EA
	arm_func_end FUN_ov15_020cad1c

	arm_func_start FUN_ov15_020cb13c
FUN_ov15_020cb13c: ; 0x020CB13C
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, lr}
	mov r4, r2
	mov r6, r0
	mov r0, r4
	mov r5, r1
	bl DC_InvalidateRange
	mov r8, #4
	mov r7, #1
_020CB15C:
	mov r0, r8
	mov r1, r7
	bl PXI_IsCallbackReady
	cmp r0, #0
	beq _020CB15C
	ldr r1, _020CB1C8 ; =FUN_ov15_020cb2fc
	mov r0, r8
	bl PXI_SetFifoRecvCallback
	mov r0, r5, lsl #0x10
	mov r8, r0, lsr #0x10
	mov r7, #0x40000
	mov r9, #1
_020CB18C:
	mov r0, r9
	mov r1, r6
	mov r2, r8
	mov r3, r4
	bl FUN_ov15_020cad1c
	cmp r0, #1
	beq _020CB1B4
	mov r0, r7
	blx SVC_WaitByLoop
	b _020CB18C
_020CB1B4:
	mov r0, r4
	mov r1, r5
	bl DC_InvalidateRange
	mov r0, r9
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
_020CB1C8: .word FUN_ov15_020cb2fc
	arm_func_end FUN_ov15_020cb13c

	arm_func_start FUN_ov15_020cb1cc
FUN_ov15_020cb1cc: ; 0x020CB1CC
	stmfd sp!, {r4, r5, r6, r7, r8, lr}
	mov r8, r0
	mov r7, r1
	mov r6, r2
	mov r5, #4
	mov r4, #1
_020CB1E4:
	mov r0, r5
	mov r1, r4
	bl PXI_IsCallbackReady
	cmp r0, #0
	beq _020CB1E4
	ldr r1, _020CB244 ; =FUN_ov15_020cb2fc
	mov r0, r5
	bl PXI_SetFifoRecvCallback
	mov r0, r6
	mov r1, r7
	bl DC_StoreRange
	mov r4, #0x40000
	mov r5, #2
_020CB218:
	mov r0, r5
	mov r1, r8
	mov r2, r7
	mov r3, r6
	bl FUN_ov15_020cad1c
	cmp r0, #1
	ldmeqfd sp!, {r4, r5, r6, r7, r8, pc}
	mov r0, r4
	blx SVC_WaitByLoop
	b _020CB218
	arm_func_end FUN_ov15_020cb1cc

	arm_func_start FUN_ov15_020cb240
FUN_ov15_020cb240: ; 0x020CB240
	ldmfd sp!, {r4, r5, r6, r7, r8, pc}
_020CB244: .word FUN_ov15_020cb2fc
	arm_func_end FUN_ov15_020cb240

	arm_func_start FUN_ov15_020cb248
FUN_ov15_020cb248: ; 0x020CB248
	stmfd sp!, {r4, r5, r6, lr}
	mov r5, r2
	mov r4, #1
	mov r6, r0
	mov r0, r5
	mov r2, r4
	bl FUN_ov15_020ca9a4
	cmp r0, #0
	moveq r0, #0
	ldmeqfd sp!, {r4, r5, r6, pc}
	mov r0, r6
	mov r1, r5
	mov r2, #0x100
	bl FUN_020219ac
	cmp r0, #0
	movne r4, #0
	mov r0, r4
	ldmfd sp!, {r4, r5, r6, pc}
	arm_func_end FUN_ov15_020cb248

	arm_func_start FUN_ov15_020cb290
FUN_ov15_020cb290: ; 0x020CB290
	stmfd sp!, {r4, r5, r6, lr}
	mov r5, #4
	mov r4, #1
_020CB29C:
	mov r0, r5
	mov r1, r4
	bl PXI_IsCallbackReady
	cmp r0, #0
	beq _020CB29C
	ldr r1, _020CB2F8 ; =FUN_ov15_020cb2fc
	mov r0, r5
	bl PXI_SetFifoRecvCallback
	mov r4, #0x40000
	mov r6, #7
	mov r5, #0
_020CB2C8:
	mov r0, r6
	mov r1, r5
	mov r2, r5
	mov r3, r5
	bl FUN_ov15_020cad1c
	cmp r0, #1
	beq _020CB2F0
	mov r0, r4
	blx SVC_WaitByLoop
	b _020CB2C8
_020CB2F0:
	mov r0, #1
	ldmfd sp!, {r4, r5, r6, pc}
_020CB2F8: .word FUN_ov15_020cb2fc
	arm_func_end FUN_ov15_020cb290

	arm_func_start FUN_ov15_020cb2fc
FUN_ov15_020cb2fc: ; 0x020CB2FC
	ldr r0, _020CB328 ; =0x020E9000
	and r1, r1, #0xff
	strh r1, [r0]
	mov r1, #1
	str r1, [r0, #4]
	cmp r2, #0
	movne r1, #0xff
	strneh r1, [r0]
	ldr r0, _020CB328 ; =0x020E9000
	ldrh r0, [r0]
	bx lr
_020CB328: .word ov15_020E9000
	arm_func_end FUN_ov15_020cb2fc

	arm_func_start FUN_ov15_020cb32c
FUN_ov15_020cb32c: ; 0x020CB32C
	stmfd sp!, {r4, r5, r6, lr}
	sub sp, sp, #8
	mov r5, r0
	ldr r2, [r5, #8]
	ldr r4, _020CB3DC ; =0x020E900C
	ldr r3, [r5, #0xc]
	str r2, [sp]
	mov r1, r4
	mov r2, #5
	str r3, [sp, #4]
	bl MI_CpuCopy8
	ldr r2, [sp]
	ldr r3, [sp, #4]
	mov r12, r2, lsr #5
	mov lr, r3, lsr #5
	orr r12, r12, r3, lsl #27
	ldr r1, [r5, #4]
	mov r0, #7
	and r1, r0, r1, lsr #8
	and r0, r2, #0x1f
	orr r3, r1, r0, lsl #3
	ldr r6, _020CB3E0 ; =0x020E9000
	ldr r1, _020CB3E4 ; =0x020E9012
	add r0, sp, #0
	mov r2, #4
	strb r3, [r6, #0x11]
	str r12, [sp]
	str lr, [sp, #4]
	bl MI_CpuCopy8
	ldr r2, [sp, #4]
	ldrh r0, [r5, #0x10]
	and r3, r2, #0x3f
	ldr r1, _020CB3E8 ; =0x020E9018
	mov r2, r0, lsl #0x1e
	orr r2, r3, r2, lsr #24
	strb r2, [r6, #0x16]
	mov r3, r0, asr #2
	add r0, r5, #0x12
	mov r2, #2
	strb r3, [r6, #0x17]
	bl MI_CpuCopy8
	mov r0, r4
	add sp, sp, #8
	ldmfd sp!, {r4, r5, r6, pc}
_020CB3DC: .word ov15_020E900C
_020CB3E0: .word ov15_020E9000
_020CB3E4: .word ov15_020E9012
_020CB3E8: .word ov15_020E9018
	arm_func_end FUN_ov15_020cb32c

	arm_func_start FUN_ov15_020cb3ec
FUN_ov15_020cb3ec: ; 0x020CB3EC
	ldr r0, _020CB3F4 ; =0x020E900C
	bx lr
_020CB3F4: .word ov15_020E900C
	arm_func_end FUN_ov15_020cb3ec

	arm_func_start FUN_ov15_020cb3f8
FUN_ov15_020cb3f8: ; 0x020CB3F8
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, lr}
	sub sp, sp, #0x10
	mov r6, #0
	mov r8, r0
	mov r1, r6
	mov r2, #0x700
	bl MI_CpuFill8
	mov r0, r8
	bl FUN_ov15_020caac0
	cmp r0, #0
	addeq sp, sp, #0x10
	ldreq r0, _020CB6E8 ; =0xFFFFD8EF
	ldmeqfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
	ldr r1, _020CB6EC ; =0x0000A001
	add r0, r8, #0x500
	bl FUN_0200a944
	mov r0, r8
	bl FUN_ov15_020cab04
	cmp r0, #0
	addeq sp, sp, #0x10
	ldreq r0, _020CB6E8 ; =0xFFFFD8EF
	ldmeqfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
	add r5, sp, #0
	mov r1, r6
	mov r0, r5
	mov r2, #0x10
	bl MI_CpuFill8
	mov r9, #1
	mov r4, #0xfe
_020CB46C:
	add r7, r8, r6, lsl #8
	mov r1, r7
	mov r2, r4
	add r0, r8, #0x500
	bl FUN_0200aa44
	mov r1, r7
	ldrh r1, [r1, #0xfe]
	cmp r0, r1
	bne _020CB4A0
	mov r0, r7
	bl FUN_ov15_020cb6fc
	cmp r0, #0
	strne r9, [r5, r6, lsl #2]
_020CB4A0:
	add r6, r6, #1
	cmp r6, #3
	blt _020CB46C
	add r0, r8, #0x500
	add r1, r8, #0x300
	mov r2, #0xfe
	bl FUN_0200aa44
	add r1, r8, #0x300
	ldrh r1, [r1, #0xfe]
	cmp r0, r1
	moveq r0, #1
	ldr r1, [sp]
	streq r0, [sp, #0xc]
	cmp r1, #0
	ldrne r0, [sp, #4]
	cmpne r0, #0
	ldrne r0, [sp, #8]
	cmpne r0, #0
	ldrne r0, [sp, #0xc]
	cmpne r0, #0
	beq _020CB508
	add r0, r8, #0xf0
	bl FUN_ov15_020cabd8
	add sp, sp, #0x10
	mov r0, #0
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
_020CB508:
	cmp r1, #0
	ldreq r0, [sp, #4]
	cmpeq r0, #0
	ldreq r0, [sp, #8]
	cmpeq r0, #0
	ldreq r0, [sp, #0xc]
	cmpeq r0, #0
	bne _020CB54C
	mov r0, r8
	bl FUN_ov15_020cb7dc
	mov r0, r8
	bl FUN_ov15_020cab74
	cmp r0, #0
	movne r0, #0
	add sp, sp, #0x10
	ldreq r0, _020CB6F0 ; =0xFFFFD8F0
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
_020CB54C:
	cmp r1, #0
	beq _020CB560
	ldr r0, [sp, #4]
	cmp r0, #0
	bne _020CB59C
_020CB560:
	ldr r0, [sp, #8]
	cmp r0, #0
	beq _020CB578
	ldr r0, [sp, #0xc]
	cmp r0, #0
	bne _020CB59C
_020CB578:
	mov r0, r8
	bl FUN_ov15_020cb7dc
	mov r0, r8
	bl FUN_ov15_020cab74
	cmp r0, #0
	movne r0, #0
	add sp, sp, #0x10
	ldreq r0, _020CB6F0 ; =0xFFFFD8F0
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
_020CB59C:
	cmp r1, #0
	ldreq r0, [sp, #4]
	cmpeq r0, #0
	bne _020CB5D0
	mov r0, r8
	bl FUN_ov15_020cb7dc
	mov r0, r8
	bl FUN_ov15_020cab74
	cmp r0, #0
	ldrne r0, _020CB6F4 ; =0xFFFFD8ED
	add sp, sp, #0x10
	ldreq r0, _020CB6F0 ; =0xFFFFD8F0
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
_020CB5D0:
	cmp r1, #0
	bne _020CB600
	mov r0, r8
	mov r1, #0
	bl FUN_ov15_020cb860
	add r0, r8, #0x1f0
	add r1, r8, #0xf0
	mov r2, #0xe
	bl MI_CpuCopy8
	ldrb r0, [r8, #0x1ef]
	strb r0, [r8, #0xef]
	b _020CB630
_020CB600:
	ldr r0, [sp, #4]
	cmp r0, #0
	bne _020CB630
	mov r0, r8
	mov r1, #1
	bl FUN_ov15_020cb860
	add r0, r8, #0xf0
	add r1, r8, #0x1f0
	mov r2, #0xe
	bl MI_CpuCopy8
	ldrb r0, [r8, #0xef]
	strb r0, [r8, #0x1ef]
_020CB630:
	add r0, r8, #0xf0
	bl FUN_ov15_020cabd8
	ldr r0, [sp, #8]
	cmp r0, #0
	bne _020CB650
	mov r0, r8
	mov r1, #2
	bl FUN_ov15_020cb860
_020CB650:
	ldr r0, [sp, #0xc]
	cmp r0, #0
	bne _020CB66C
	add r1, r8, #0x300
	mov r0, #0
	mov r2, #0x100
	bl MIi_CpuClear16
_020CB66C:
	mov r4, #0
	mov r5, r4
	mov r2, #1
	add r3, sp, #0
_020CB67C:
	ldr r0, [r3, r5, lsl #2]
	cmp r0, #0
	bne _020CB6B0
	ldrb r0, [r8, #0xef]
	tst r0, r2, lsl r5
	beq _020CB6B0
	mvn r0, r2, lsl r5
	ldrb r1, [r8, #0xef]
	and r0, r0, #0xff
	mov r4, r2
	and r0, r1, r0
	strb r0, [r8, #0xef]
	strb r0, [r8, #0x1ef]
_020CB6B0:
	add r5, r5, #1
	cmp r5, #3
	blt _020CB67C
	mov r0, r8
	bl FUN_ov15_020cab74
	cmp r0, #0
	addeq sp, sp, #0x10
	ldreq r0, _020CB6F0 ; =0xFFFFD8F0
	ldmeqfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
	ldr r0, _020CB6F8 ; =0xFFFFD8EE
	cmp r4, #0
	moveq r0, #0
	add sp, sp, #0x10
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
_020CB6E8: .word 0xFFFFD8EF
_020CB6EC: .word 0x0000A001
_020CB6F0: .word 0xFFFFD8F0
_020CB6F4: .word 0xFFFFD8ED
_020CB6F8: .word 0xFFFFD8EE
	arm_func_end FUN_ov15_020cb3f8

	arm_func_start FUN_ov15_020cb6fc
FUN_ov15_020cb6fc: ; 0x020CB6FC
	stmfd sp!, {r3, r4, r5, lr}
	mov r5, r0
	ldrb r0, [r5, #0xe7]
	cmp r0, #0xff
	moveq r0, #1
	ldmeqfd sp!, {r3, r4, r5, pc}
	cmp r0, #2
	movhi r0, #0
	ldmhifd sp!, {r3, r4, r5, pc}
	add r0, r5, #0x40
	bl FUN_ov15_020cac60
	cmp r0, #0
	moveq r0, #0
	ldmeqfd sp!, {r3, r4, r5, pc}
	ldr r1, _020CB7D8 ; =0x020E3DB0
	add r0, r5, #0xc0
	mov r2, #4
	bl FUN_020219ac
	cmp r0, #0
	beq _020CB794
	add r0, r5, #0xc4
	bl FUN_ov15_020cacf0
	cmp r0, #0
	moveq r0, #0
	ldmeqfd sp!, {r3, r4, r5, pc}
	ldrb r0, [r5, #0xd0]
	cmp r0, #0x20
	movhi r0, #0
	ldmhifd sp!, {r3, r4, r5, pc}
	add r4, sp, #0
	mov r1, r4
	bl FUN_ov15_020cac34
	mov r1, r4
	add r0, r5, #0xc0
	bl FUN_ov15_020cac88
	cmp r0, #0
	moveq r0, #0
	ldmeqfd sp!, {r3, r4, r5, pc}
_020CB794:
	ldr r1, _020CB7D8 ; =0x020E3DB0
	add r0, r5, #0xc8
	mov r2, #4
	bl FUN_020219ac
	cmp r0, #0
	beq _020CB7D0
	add r0, r5, #0xc8
	bl FUN_ov15_020cacf0
	cmp r0, #0
	bne _020CB7D0
	add r0, r5, #0xcc
	bl FUN_ov15_020cacf0
	cmp r0, #0
	moveq r0, #0
	ldmeqfd sp!, {r3, r4, r5, pc}
_020CB7D0:
	mov r0, #1
	ldmfd sp!, {r3, r4, r5, pc}
_020CB7D8: .word 0x020E3DB0
	arm_func_end FUN_ov15_020cb6fc

	arm_func_start FUN_ov15_020cb7dc
FUN_ov15_020cb7dc: ; 0x020CB7DC
	stmfd sp!, {r4, r5, r6, r7, lr}
	sub sp, sp, #0x14
	mov r4, r0
	mov r5, #0
	mov r0, r5
	mov r1, r4
	mov r2, #0x400
	bl MIi_CpuClear16
	mov r1, #0xff
_020CB800:
	add r0, r4, r5, lsl #8
	add r5, r5, #1
	strb r1, [r0, #0xe7]
	cmp r5, #3
	blt _020CB800
	add r5, sp, #0
	mov r0, r5
	bl FUN_ov15_020cba10
	mov r0, r5
	bl FUN_ov15_020cb32c
	mov r6, r0
	mov r7, #0
	mov r5, #0xe
_020CB834:
	add r1, r4, r7, lsl #8
	mov r0, r6
	mov r2, r5
	add r1, r1, #0xf0
	bl MI_CpuCopy8
	add r7, r7, #1
	cmp r7, #2
	blt _020CB834
	mov r0, #0
	add sp, sp, #0x14
	ldmfd sp!, {r4, r5, r6, r7, pc}
	arm_func_end FUN_ov15_020cb7dc

	arm_func_start FUN_ov15_020cb860
FUN_ov15_020cb860: ; 0x020CB860
	stmfd sp!, {r3, r4, r5, lr}
	mov r5, r0
	mov r4, r1
	add r1, r5, r4, lsl #8
	mov r0, #0
	mov r2, #0x100
	bl MIi_CpuClear16
	add r0, r5, r4, lsl #8
	mov r1, #0xff
	strb r1, [r0, #0xe7]
	ldmfd sp!, {r3, r4, r5, pc}
	arm_func_end FUN_ov15_020cb860

	arm_func_start FUN_ov15_020cb88c
FUN_ov15_020cb88c: ; 0x020CB88C
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	sub sp, sp, #0x10
	ldr r4, _020CBA04 ; =0x0000FFFF
	mov lr, #0
	and r12, lr, #0
	add r5, r4, #0xff0000
	and r2, r2, #1
	mov r6, r12, lsl #2
	and r3, r3, #3
	and r5, r1, r5
	orr r1, r3, r2, lsl #2
	orr r6, r6, r2, lsr #30
	mov r7, r12, lsl #3
	and r2, r0, r4
	orr r0, r1, r5, lsl #3
	orr r4, r0, r2, lsl #27
	mov r3, r12, lsl #0x1b
	str r4, [sp, #8]
	orr r7, r7, r5, lsr #29
	orr r0, r12, r6
	orr r3, r3, r2, lsr #5
	orr r0, r7, r0
	orr r5, r3, r0
	str r5, [sp, #0xc]
	mov r4, lr
	add r1, sp, #8
_020CB8F4:
	ldrb r0, [r1, lr]
	eor r0, r0, #0xd6
	strb r0, [r1, lr]
	add lr, lr, #1
	cmp lr, #6
	blt _020CB8F4
	ldr r3, _020CBA08 ; =0x020E3DCC
	mov r6, #0
	add r0, sp, #8
_020CB918:
	ldrb r5, [r0, r6]
	mov r1, r5, asr #4
	and r2, r1, #0xf
	and r1, r5, #0xf
	ldrb r2, [r3, r2]
	ldrb r1, [r3, r1]
	orr r1, r1, r2, lsl #4
	strb r1, [r0, r6]
	add r6, r6, #1
	cmp r6, #5
	blt _020CB918
	add r5, sp, #0
	mov r2, #8
	mov r1, r5
	bl MI_CpuCopy8
	ldr r2, _020CBA0C ; =0x020E3DB4
	mov r6, #0
	add r0, sp, #8
_020CB960:
	ldrb r3, [r5, r6]
	ldrb r1, [r2, r6]
	add r6, r6, #1
	cmp r6, #5
	strb r3, [r0, r1]
	blt _020CB960
	ldrb r1, [sp, #0xd]
	mov r0, #0
	ldr r2, [sp, #8]
	and r1, r1, #7
	strb r0, [sp, #0xf]
	strb r0, [sp, #0xe]
	strb r1, [sp, #0xd]
	ldr r1, [sp, #0xc]
	mov r12, r2, lsl #1
	mov r1, r1, lsl #1
	orr r1, r1, r2, lsr #31
	str r1, [sp, #0xc]
	ldrb r1, [sp, #0xd]
	str r12, [sp, #8]
	ldrb r2, [sp, #8]
	mov r1, r1, asr #3
	and r1, r1, #1
	orr r1, r2, r1
	strb r1, [sp, #8]
	add r2, sp, #8
_020CB9C8:
	ldrb r1, [r2, r0]
	eor r1, r1, #0x67
	strb r1, [r2, r0]
	add r0, r0, #1
	cmp r0, #6
	blt _020CB9C8
	ldrb r0, [sp, #0xd]
	strb r4, [sp, #0xf]
	strb r4, [sp, #0xe]
	and r0, r0, #7
	strb r0, [sp, #0xd]
	ldr r0, [sp, #8]
	ldr r1, [sp, #0xc]
	add sp, sp, #0x10
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_020CBA04: .word 0x0000FFFF
_020CBA08: .word 0x020E3DCC
_020CBA0C: .word 0x020E3DB4
	arm_func_end FUN_ov15_020cb88c

	arm_func_start FUN_ov15_020cba10
FUN_ov15_020cba10: ; 0x020CBA10
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, lr}
	sub sp, sp, #0x24
	mov r5, r0
	mov r8, #0
	bl FUN_ov15_020ca8e0
	bl FUN_0200adc4
	add r6, sp, #0x14
	mov r0, r6
	bl FUN_0200aea0
	cmp r0, #0
	addne sp, sp, #0x24
	movne r0, r8
	ldmnefd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, pc}
	add r4, sp, #8
	mov r0, r4
	bl FUN_0200af48
	cmp r0, #0
	addne sp, sp, #0x24
	movne r0, r8
	ldmnefd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, pc}
	mov r0, r6
	mov r1, r4
	bl FUN_0200b61c
	mov r9, r0
	mov r0, r8
	subs r2, r9, r0
	sbcs r2, r1, r0
	addlt sp, sp, #0x24
	ldmltfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, pc}
	bl FUN_02003398
	cmp r0, #0
	beq _020CBA98
	ldr r0, _020CBBC8 ; =FUN_02003410
	adds r9, r9, r0
_020CBA98:
	add r0, sp, #0
	bl FUN_02003f38
	ldrb r0, [sp, #1]
	ldr r6, _020CBBCC ; =0x5D588B65
	ldr r7, _020CBBD0 ; =0x00269EC3
	ldrb r1, [sp]
	mov r0, r0, lsl #8
	mla r4, r9, r6, r7
	orr r1, r0, r1, lsl #16
	ldrb r2, [sp, #2]
	ldrb r10, [sp, #4]
	ldr r0, _020CBBD4 ; =0x000009BF
	orr r1, r2, r1
	cmp r1, r0
	movne r1, #1
	mov r2, r4, lsr #0x10
	mov r0, #0x3e8
	mul r3, r2, r0
	ldrb r12, [sp, #3]
	ldrb r0, [sp, #5]
	mov r9, r10, lsl #8
	orr r10, r9, r12, lsl #16
	moveq r1, #0
	ldrh r2, [r5, #0x12]
	mov r3, r3, lsr #0x10
	strh r3, [r5, #0x10]
	str r8, [r5]
	str r8, [r5, #4]
	cmp r2, #0
	and r9, r1, #0xff
	orr r10, r0, r10
	bne _020CBB74
	cmp r8, r8
	str r8, [r5, #8]
	str r8, [r5, #0xc]
	cmpeq r8, r8
	bne _020CBBBC
_020CBB2C:
	mul r0, r4, r6
	adds r4, r0, r7
	bne _020CBB44
_020CBB38:
	mul r0, r4, r6
	adds r4, r0, r7
	beq _020CBB38
_020CBB44:
	strh r4, [r5, #0x12]
	ldrh r0, [r5, #0x12]
	mov r1, r10
	mov r2, r9
	mov r3, r8
	bl FUN_ov15_020cb88c
	cmp r1, #0
	str r0, [r5, #8]
	str r1, [r5, #0xc]
	cmpeq r0, #0
	beq _020CBB2C
	b _020CBBBC
_020CBB74:
	cmp r8, r8
	str r8, [r5, #8]
	str r8, [r5, #0xc]
	cmpeq r8, r8
	bne _020CBBBC
_020CBB88:
	ldrh r0, [r5, #0x12]
	mov r1, r10
	mov r2, r9
	add r0, r0, #1
	strh r0, [r5, #0x12]
	ldrh r0, [r5, #0x12]
	mov r3, r8
	bl FUN_ov15_020cb88c
	cmp r1, #0
	str r0, [r5, #8]
	str r1, [r5, #0xc]
	cmpeq r0, #0
	beq _020CBB88
_020CBBBC:
	mov r0, #1
	add sp, sp, #0x24
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, pc}
_020CBBC8: .word FUN_02003410
_020CBBCC: .word 0x5D588B65
_020CBBD0: .word 0x00269EC3
_020CBBD4: .word 0x000009BF
	arm_func_end FUN_ov15_020cba10

	arm_func_start FUN_ov15_020cbbd8
FUN_ov15_020cbbd8: ; 0x020CBBD8
	stmfd sp!, {r4, r5, lr}
	sub sp, sp, #0x14
	add r4, sp, #0
	mov r5, r0
	mov r0, r4
	bl FUN_ov15_020cba10
	cmp r0, #0
	addeq sp, sp, #0x14
	moveq r0, #0
	ldmeqfd sp!, {r4, r5, pc}
	mov r0, r4
	mov r1, r5
	bl FUN_ov15_020caa0c
	cmp r0, #0
	movne r0, #1
	moveq r0, #0
	add sp, sp, #0x14
	ldmfd sp!, {r4, r5, pc}
	arm_func_end FUN_ov15_020cbbd8

	arm_func_start FUN_ov15_020cbc20
FUN_ov15_020cbc20: ; 0x020CBC20
	stmfd sp!, {r4, r5, lr}
	sub sp, sp, #0x14
	mov r5, r0
	add r0, sp, #0
	mov r4, r1
	bl FUN_ov15_020ca8e0
	add r12, r5, #8
	ldmia r12, {r2, r3}
	stmia r5, {r2, r3}
	add r1, sp, #8
	ldmia r1, {r2, r3}
	mov r0, r5
	mov r1, r4
	stmia r12, {r2, r3}
	bl FUN_ov15_020caa0c
	cmp r0, #0
	movne r0, #1
	moveq r0, #0
	add sp, sp, #0x14
	ldmfd sp!, {r4, r5, pc}
	arm_func_end FUN_ov15_020cbc20

	arm_func_start FUN_ov15_020cbc70
FUN_ov15_020cbc70: ; 0x020CBC70
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, lr}
	sub sp, sp, #0x24
	add r1, sp, #0
	mov r7, #0
	mov r5, r0
	strb r7, [r1]
	strb r7, [r1, #1]
	strb r7, [r1, #2]
	strb r7, [r1, #3]
	strb r7, [r1, #4]
	strb r7, [r1, #5]
	bl FUN_ov15_020ca8e0
	bl FUN_0200adc4
	add r6, sp, #0x14
	mov r0, r6
	bl FUN_0200aea0
	cmp r0, #0
	addne sp, sp, #0x24
	movne r0, r7
	ldmnefd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, pc}
	add r4, sp, #8
	mov r0, r4
	bl FUN_0200af48
	cmp r0, #0
	addne sp, sp, #0x24
	movne r0, r7
	ldmnefd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, pc}
	mov r0, r6
	mov r1, r4
	bl FUN_0200b61c
	mov r8, r0
	subs r0, r8, r7
	sbcs r0, r1, r7
	addlt sp, sp, #0x24
	movlt r0, r7
	ldmltfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, pc}
	bl FUN_02003398
	cmp r0, #0
	beq _020CBD14
	ldr r0, _020CBDF4 ; =FUN_02003410
	adds r8, r8, r0
_020CBD14:
	add r0, sp, #0
	bl FUN_02003f38
	ldrb r0, [sp, #1]
	ldr r6, _020CBDF8 ; =0x5D588B65
	ldr r7, _020CBDFC ; =0x00269EC3
	ldrb r1, [sp]
	mov r0, r0, lsl #8
	mla r4, r8, r6, r7
	orr r1, r0, r1, lsl #16
	ldrb r2, [sp, #2]
	ldrb r9, [sp, #4]
	ldr r0, _020CBE00 ; =0x000009BF
	orr r1, r2, r1
	cmp r1, r0
	movne r1, #1
	mov r2, r4, lsr #0x10
	mov r0, #0x3e8
	mul r3, r2, r0
	ldrb r10, [sp, #3]
	mov r8, r9, lsl #8
	moveq r1, #0
	mov r2, #0
	ldrb r0, [sp, #5]
	orr r8, r8, r10, lsl #16
	mov r3, r3, lsr #0x10
	cmp r2, #0
	strh r3, [r5, #0x10]
	str r2, [r5, #8]
	str r2, [r5, #0xc]
	cmpeq r2, #0
	and r9, r1, #0xff
	orr r10, r0, r8
	bne _020CBDE8
	mov r8, r2
_020CBD9C:
	b _020CBDA0
_020CBDA0:
	mla r4, r6, r4, r7
	cmp r4,#0x0
	ldrneh r2, [r5, #0x12]
	movne r0, r4, lsl #0x10
	movne r1, r0, lsr #0x10
	cmpne r2, r0, lsr #0x10
	beq _020CBDA0
	strh r1, [r5, #0x12]
	ldrh r0, [r5, #0x12]
	mov r1, r10
	mov r2, r9
	mov r3, r8
	bl FUN_ov15_020cb88c
	cmp r1, #0x0
	str r0, [r5, #0x8]
	str r1, [r5, #0xc]
	cmpeq r0, #0x0
	beq _020CBD9C
_020CBDE8:
	mov r0, #1
	add sp, sp, #0x24
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, pc}
_020CBDF4: .word FUN_02003410
_020CBDF8: .word 0x5D588B65
_020CBDFC: .word 0x00269EC3
_020CBE00: .word 0x000009BF
	arm_func_end FUN_ov15_020cbc70

	arm_func_start FUN_ov15_020cbe04
FUN_ov15_020cbe04: ; 0x020CBE04
	stmfd sp!, {r4, r5, lr}
	sub sp, sp, #0x14
	add r5, sp, #0
	mov r4, r0
	mov r0, r5
	bl FUN_ov15_020ca8e0
	ldmia r5, {r2, r3}
	stmia r4, {r2, r3}
	add r1, sp, #8
	add r0, r4, #8
	ldmia r1, {r2, r3}
	stmia r0, {r2, r3}
	ldr r0, [sp, #4]
	ldr r2, [sp]
	cmp r0, #0
	mov r0, #0
	cmpeq r2, #0
	movne r0, #1
	str r0, [r4, #0x10]
	add sp, sp, #0x14
	ldmfd sp!, {r4, r5, pc}
	arm_func_end FUN_ov15_020cbe04

	arm_func_start FUN_ov15_020cbe58
FUN_ov15_020cbe58: ; 0x020CBE58
	stmdb sp!, {lr}
	sub sp, sp, #0x14
	add r0, sp, #0
	bl FUN_ov15_020ca8e0
	ldr r0, [sp, #0xc]
	ldr r2, [sp, #8]
	cmp r0, #0
	cmpeq r2, #0
	mov r0, #0
	bne _020CBE9C
	ldr r1, [sp, #4]
	ldr r2, [sp]
	cmp r1, r0
	cmpeq r2, r0
	addeq sp, sp, #0x14
	moveq r0, #1
	ldmeqia sp!, {pc}
_020CBE9C:
	mov r0, #0
	add sp, sp, #0x14
	ldmia sp!, {pc}
	arm_func_end FUN_ov15_020cbe58

	arm_func_start FUN_ov15_020cbea8
FUN_ov15_020cbea8: ; 0x020CBEA8
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, lr}
	sub sp, sp, #8
	ldr r4, _020CC01C ; =0xAAAAAAAB
	mov r6, #3
	umull r4, r5, r1, r4
	mov r5, r5, lsr #1
	umull r4, r5, r6, r5
	subs r5, r1, r4
	movne r5, #4
	str r2, [sp]
	mov r10, r0
	ldr r4, _020CC01C ; =0xAAAAAAAB
	ldr r0, [sp]
	moveq r5, #0
	cmp r0, #0
	umull r0, r2, r1, r4
	mov r2, r2, lsr #1
	addeq sp, sp, #8
	add r0, r5, r2, lsl #2
	ldmeqfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
	cmp r3, r0
	addlo sp, sp, #8
	mvnlo r0, #0
	ldmlofd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
	add r7, r10, r1
	ldr r8, [sp]
	cmp r10, r7
	beq _020CC00C
	ldr r5, _020CC020 ; =0x020E55F8
	add r11, sp, #4
_020CBF20:
	sub r9, r7, r10
	mov r0, r9, lsl #3
	umull r1, r2, r0, r4
	mov r2, r2, lsr #2
	mov r1, #6
	umull r2, r3, r1, r2
	subs r2, r0, r2
	umull r1, r2, r0, r4
	movne r3, #1
	moveq r3, #0
	add r6, r3, r2, lsr #2
	cmp r9, #3
	movge r9, #3
	mov r0, r11
	mov r1, #0
	mov r2, #3
	bl MI_CpuFill8
	mov r0, r10
	mov r1, r11
	mov r2, r9
	bl MI_CpuCopy8
	ldrb r0, [sp, #4]
	ldr r1, [r5]
	cmp r6, #2
	mov r0, r0, asr #2
	ldrsb r0, [r1, r0]
	strb r0, [r8]
	movlo r0, #0x2a
	blo _020CBFB0
	ldrb r2, [sp, #4]
	ldrb r1, [sp, #5]
	ldr r0, [r5]
	mov r2, r2, lsl #4
	and r2, r2, #0x3f
	orr r1, r2, r1, asr #4
	ldrsb r0, [r0, r1]
_020CBFB0:
	strb r0, [r8, #1]
	cmp r6, #3
	movlo r0, #0x2a
	blo _020CBFDC
	ldrb r2, [sp, #5]
	ldrb r1, [sp, #6]
	ldr r0, [r5]
	mov r2, r2, lsl #2
	and r2, r2, #0x3f
	orr r1, r2, r1, asr #6
	ldrsb r0, [r0, r1]
_020CBFDC:
	strb r0, [r8, #2]
	cmp r6, #4
	ldrhsb r0, [sp, #6]
	ldrhs r1, [r5]
	add r10, r10, r9
	andhs r0, r0, #0x3f
	ldrhssb r0, [r1, r0]
	movlo r0, #0x2a
	strb r0, [r8, #3]
	cmp r10, r7
	add r8, r8, #4
	bne _020CBF20
_020CC00C:
	ldr r0, [sp]
	sub r0, r8, r0
	add sp, sp, #8
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_020CC01C: .word 0xAAAAAAAB
_020CC020: .word ov15_020E55F8
	arm_func_end FUN_ov15_020cbea8

	arm_func_start FUN_ov15_020cc024
FUN_ov15_020cc024: ; 0x020CC024
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	tst r1, #3
	mvnne r0, #0
	ldmnefd sp!, {r3, r4, r5, r6, r7, pc}
	mov r5, #0
	mov r6, r5
	cmp r1, #0
	ble _020CC05C
_020CC044:
	ldrsb r4, [r0, r6]
	add r6, r6, #1
	cmp r4, #0x2a
	addne r5, r5, #6
	cmp r6, r1
	blt _020CC044
_020CC05C:
	mov r12, r5, asr #2
	add r12, r5, r12, lsr #29
	mov r12, r12, asr #3
	cmp r2, #0
	moveq r0, r12
	ldmeqfd sp!, {r3, r4, r5, r6, r7, pc}
	cmp r3, r12
	mvnlo r0, #0
	ldmlofd sp!, {r3, r4, r5, r6, r7, pc}
	cmp r1, #0
	moveq r0, #0
	ldmeqfd sp!, {r3, r4, r5, r6, r7, pc}
	mov r1, r2
_020CC090:
	mov r7, #0
	mov r3, r7
	add r6, sp, #0
	mov r4, #0x3f
	mov r5, #0x3e
_020CC0A4:
	ldrsb lr, [r0, r7]
	cmp lr, #0x41
	blt _020CC0C0
	cmp lr, #0x5a
	suble lr, lr, #0x41
	strleb lr, [r6, r7]
	ble _020CC108
_020CC0C0:
	cmp lr, #0x61
	blt _020CC0D8
	cmp lr, #0x7a
	suble lr, lr, #0x47
	strleb lr, [r6, r7]
	ble _020CC108
_020CC0D8:
	cmp lr, #0x30
	blt _020CC0F0
	cmp lr, #0x39
	addle lr, lr, #4
	strleb lr, [r6, r7]
	ble _020CC108
_020CC0F0:
	cmp lr, #0x2e
	streqb r5, [r6, r7]
	beq _020CC108
	cmp lr, #0x2d
	streqb r4, [r6, r7]
	strneb r3, [r6, r7]
_020CC108:
	add r7, r7, #1
	cmp r7, #4
	blt _020CC0A4
	ldrsb r5, [sp, #1]
	ldrsb r4, [sp]
	add r3, r1, #1
	mov lr, r5, asr #4
	orr r4, lr, r4, lsl #2
	sub r6, r3, r2
	strb r4, [r1]
	cmp r6, r12
	add r0, r0, #4
	bge _020CC178
	ldrsb lr, [sp, #2]
	add r3, r1, #2
	sub r6, r3, r2
	mov r3, lr, asr #2
	orr r3, r3, r5, lsl #4
	strb r3, [r1, #1]
	cmp r6, r12
	bge _020CC178
	ldrsb r3, [sp, #3]
	orr r3, r3, lr, lsl #6
	strb r3, [r1, #2]
	add r1, r1, #3
	sub r6, r1, r2
	cmp r6, r12
	blt _020CC090
_020CC178:
	mov r0, r6
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
	arm_func_end FUN_ov15_020cc024

	arm_func_start FUN_ov15_020cc180
FUN_ov15_020cc180: ; 0x020CC180
	cmp r0, #0
	ldrne r1, _020CC19C ; =0x020E9040
	ldrne r1, [r1, #4]
	strne r1, [r0]
	ldr r0, _020CC19C ; =0x020E9040
	ldr r0, [r0]
	bx lr
_020CC19C: .word ov15_020E9040
	arm_func_end FUN_ov15_020cc180

	arm_func_start FUN_ov15_020cc1a0
FUN_ov15_020cc1a0: ; 0x020CC1A0
	cmp r0, #0
	ldrne r2, _020CC278 ; =0x020E9040
	ldrne r2, [r2, #4]
	strne r2, [r0]
	cmp r1, #0
	beq _020CC26C
	ldr r0, _020CC278 ; =0x020E9040
	ldr r0, [r0]
	cmp r0, #0x15
	addls pc, pc, r0, lsl #2
	b _020CC264
_020CC1CC: ; jump table
	b _020CC264 ; case 0
	b _020CC244 ; case 1
	b _020CC224 ; case 2
	b _020CC224 ; case 3
	b _020CC224 ; case 4
	b _020CC224 ; case 5
	b _020CC228 ; case 6
	b _020CC234 ; case 7
	b _020CC224 ; case 8
	b _020CC244 ; case 9
	b _020CC23C ; case 10
	b _020CC23C ; case 11
	b _020CC23C ; case 12
	b _020CC24C ; case 13
	b _020CC254 ; case 14
	b _020CC25C ; case 15
	b _020CC254 ; case 16
	b _020CC25C ; case 17
	b _020CC254 ; case 18
	b _020CC25C ; case 19
	b _020CC23C ; case 20
	b _020CC230 ; case 21
_020CC224:
	b _020CC254
_020CC228:
	mov r0, #3
	b _020CC268
_020CC230:
	b _020CC25C
_020CC234:
	mov r0, #4
	b _020CC268
_020CC23C:
	mov r0, #1
	b _020CC268
_020CC244:
	mov r0, #7
	b _020CC268
_020CC24C:
	mov r0, #5
	b _020CC268
_020CC254:
	mov r0, #6
	b _020CC268
_020CC25C:
	mov r0, #2
	b _020CC268
_020CC264:
	mov r0, #0
_020CC268:
	str r0, [r1]
_020CC26C:
	ldr r0, _020CC278 ; =0x020E9040
	ldr r0, [r0]
	bx lr
_020CC278: .word ov15_020E9040
	arm_func_end FUN_ov15_020cc1a0

	arm_func_start FUN_ov15_020cc27c
FUN_ov15_020cc27c: ; 0x020CC27C
	ldr r0, _020CC298 ; =0x020E9040
	ldr r1, [r0]
	cmp r1, #9
	movne r1, #0
	strne r1, [r0]
	strne r1, [r0, #4]
	bx lr
_020CC298: .word ov15_020E9040
	arm_func_end FUN_ov15_020cc27c

	arm_func_start FUN_ov15_020cc29c
FUN_ov15_020cc29c: ; 0x020CC29C
	ldr r0, _020CC2B4 ; =0x020E9040
	ldr r0, [r0]
	cmp r0, #0
	movne r0, #1
	moveq r0, #0
	bx lr
_020CC2B4: .word ov15_020E9040
	arm_func_end FUN_ov15_020cc29c

	arm_func_start FUN_ov15_020cc2b8
FUN_ov15_020cc2b8: ; 0x020CC2B8
	ldr r2, _020CC2CC ; =0x020E9040
	ldr r3, [r2]
	cmp r3, #9
	stmneia r2, {r0, r1}
	bx lr
_020CC2CC: .word ov15_020E9040
	arm_func_end FUN_ov15_020cc2b8

	arm_func_start FUN_ov15_020cc2d0
FUN_ov15_020cc2d0: ; 0x020CC2D0
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	mov r7, r0
	ldr r0, _020CC308 ; =_version_NINTENDO_DWC
	mov r6, r1
	mov r5, r2
	mov r4, r3
	bl OSi_ReferSymbol
	mov r1, r7
	mov r2, r6
	mov r3, r5
	mov r0, #1
	str r4, [sp]
	bl FUN_ov15_020cc30c
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_020CC308: .word _version_NINTENDO_DWC
	arm_func_end FUN_ov15_020cc2d0

	arm_func_start FUN_ov15_020cc30c
FUN_ov15_020cc30c: ; 0x020CC30C
	stmfd sp!, {r4, r5, r6, r7, r8, r9, r10, lr}
	ldr r1, [sp, #0x20]
	mov r10, r0
	mov r0, r3
	mov r9, r2
	mov r7, #0
	bl FUN_ov15_020cc3f4
	bl FUN_02003328
	bl FUN_020035b8
	bl FUN_0200adc4
	mov r0, #2
	mov r1, #0x700
	bl FUN_ov15_020cc408
	movs r8, r0
	moveq r0, #4
	ldmeqfd sp!, {r4, r5, r6, r7, r8, r9, r10, pc}
	bl FUN_ov15_020cb3f8
	mov r5, r0
	bl FUN_ov15_020cbe58
	cmp r0, #0
	beq _020CC36C
	mov r0, r8
	bl FUN_ov15_020cbbd8
	mov r7, #1
_020CC36C:
	mov r6, #2
	mov r4, #0
	mov r0, r6
	mov r1, r8
	mov r2, r4
	bl FUN_ov15_020cc44c
	cmp r5, #0
	bge _020CC398
	cmp r7, #0
	moveq r6, #3
	b _020CC3A4
_020CC398:
	mov r6, #1
	cmp r7, #0
	moveq r6, r4
_020CC3A4:
	mov r0, r10
	bl FUN_ov15_020c7978
	ldr r1, _020CC3C4 ; =0x020E9048
	mov r0, #1
	str r9, [r1]
	bl FUN_ov15_020cc3c8
	mov r0, r6
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, pc}
_020CC3C4: .word ov15_020E9048
	arm_func_end FUN_ov15_020cc30c

	arm_func_start FUN_ov15_020cc3c8
FUN_ov15_020cc3c8: ; 0x020CC3C8
	ldr r1, _020CC3D4 ; =0x020E9048
	str r0, [r1, #4]
	bx lr
_020CC3D4: .word ov15_020E9048
	arm_func_end FUN_ov15_020cc3c8

	arm_func_start FUN_ov15_020cc3d8
FUN_ov15_020cc3d8: ; 0x020CC3D8
	sub r0, r0, #0x20
	bx lr
	arm_func_end FUN_ov15_020cc3d8

	arm_func_start FUN_ov15_020cc3e0
FUN_ov15_020cc3e0: ; 0x020CC3E0
	ldr r2, _020CC3F0 ; =0x4457434D
	str r1, [r0, #4]
	str r2, [r0], #0x20
	bx lr
_020CC3F0: .word 0x4457434D
	arm_func_end FUN_ov15_020cc3e0

	arm_func_start FUN_ov15_020cc3f4
FUN_ov15_020cc3f4: ; 0x020CC3F4
	ldr r2, _020CC404 ; =0x020E9050
	str r0, [r2, #4]
	str r1, [r2]
	bx lr
_020CC404: .word ov15_020E9050
	arm_func_end FUN_ov15_020cc3f4

	arm_func_start FUN_ov15_020cc408
FUN_ov15_020cc408: ; 0x020CC408
	ldr r12, _020CC414 ; =FUN_ov15_020cc418
	mov r2, #0x20
	bx r12
_020CC414: .word FUN_ov15_020cc418
	arm_func_end FUN_ov15_020cc408

	arm_func_start FUN_ov15_020cc418
FUN_ov15_020cc418: ; 0x020CC418
	stmfd sp!, {r4, lr}
	ldr r3, _020CC448 ; =0x020E9050
	mov r4, r1
	ldr r3, [r3, #4]
	add r1, r4, #0x20
	blx r3
	cmp r0, #0
	moveq r0, #0
	ldmeqfd sp!, {r4, pc}
	mov r1, r4
	bl FUN_ov15_020cc3e0
	ldmfd sp!, {r4, pc}
_020CC448: .word ov15_020E9050
	arm_func_end FUN_ov15_020cc418

	arm_func_start FUN_ov15_020cc44c
FUN_ov15_020cc44c: ; 0x020CC44C
	stmfd sp!, {r4, lr}
	mov r4, r0
	cmp r1, #0
	ldmeqfd sp!, {r4, pc}
	mov r0, r1
	bl FUN_ov15_020cc3d8
	mov r1, r0
	ldr r0, _020CC484 ; =0x020E9050
	ldr r2, [r1, #4]
	ldr r3, [r0]
	mov r0, r4
	add r2, r2, #0x20
	blx r3
	ldmfd sp!, {r4, pc}
_020CC484: .word ov15_020E9050
	arm_func_end FUN_ov15_020cc44c

	arm_func_start FUN_ov15_020cc488
FUN_ov15_020cc488: ; 0x020CC488
	stmfd sp!, {r4, r5, lr}
	sub sp, sp, #0x14
	mov r5, r0
	add r0, sp, #0
	mov r4, r1
	bl FUN_ov15_020cbe04
	ldr r0, [sp, #0x10]
	cmp r0, #0
	addeq sp, sp, #0x14
	moveq r0, #0
	ldmeqfd sp!, {r4, r5, pc}
	ldr r0, _020CC514 ; =FUN_ov15_020cc408
	ldr r1, _020CC518 ; =FUN_ov15_020cc44c
	bl FUN_ov15_020ca2ac
	cmp r0, #0
	addeq sp, sp, #0x14
	moveq r0, #0
	ldmeqfd sp!, {r4, r5, pc}
	mov r0, r5
	bl _strlen
	cmp r0, #0
	bne _020CC4E8
	ldr r0, _020CC51C ; =0x020E5640
	b _020CC4EC
_020CC4E8:
	mov r0, r5
_020CC4EC:
	mov r1, r4
	bl FUN_ov15_020ca380
	cmp r0, #0
	addne sp, sp, #0x14
	movne r0, #1
	ldmnefd sp!, {r4, r5, pc}
	bl FUN_ov15_020ca340
	mov r0, #0
	add sp, sp, #0x14
	ldmfd sp!, {r4, r5, pc}
_020CC514: .word FUN_ov15_020cc408
_020CC518: .word FUN_ov15_020cc44c
_020CC51C: .word ov15_020E5640
	arm_func_end FUN_ov15_020cc488

	arm_func_start FUN_ov15_020cc520
FUN_ov15_020cc520: ; 0x020CC520
	stmfd sp!, {r4, lr}
	bl FUN_ov15_020ca5c0
	mov r4, r0
	sub r0, r4, #3
	cmp r0, #2
	bhi _020CC53C
	bl FUN_ov15_020ca340
_020CC53C:
	mov r0, r4
	ldmfd sp!, {r4, pc}
	arm_func_end FUN_ov15_020cc520

	arm_func_start FUN_ov15_020cc544
FUN_ov15_020cc544: ; 0x020CC544
	stmfd sp!, {r3, r4, r5, lr}
	ldr r0, _020CC5EC ; =0x020E9058
	ldr r0, [r0]
	cmp r0, #0
	beq _020CC55C
	bl OS_Terminate
_020CC55C:
	ldr r5, _020CC5F0 ; =0x00001E5C
	mov r0, #4
	mov r1, r5
	bl FUN_ov15_020cc408
	ldr r4, _020CC5EC ; =0x020E9058
	cmp r0, #0
	str r0, [r4]
	bne _020CC590
	ldr r1, _020CC5F4 ; =0xFFFFB17C
	mov r0, #9
	bl FUN_ov15_020cc2b8
	mov r0, #0
	ldmfd sp!, {r3, r4, r5, pc}
_020CC590:
	mov r2, r5
	mov r1, #0
	bl MI_CpuFill8
	ldr r1, [r4]
	ldr r0, _020CC5F8 ; =0x020E5648
	add r1, r1, #0x84
	add r1, r1, #0x1c00
	mov r2, #9
	bl MI_CpuCopy8
	ldr r0, [r4]
	ldr r1, _020CC5FC ; =FUN_ov15_020cc408
	add r0, r0, #0x1000
	str r1, [r0, #0xc90]
	ldr r0, [r4]
	ldr r1, _020CC600 ; =FUN_ov15_020cc44c
	add r0, r0, #0x1000
	str r1, [r0, #0xc94]
	ldr r1, [r4]
	add r0, r1, #0xc50
	add r0, r0, #0x1000
	bl FUN_ov15_020c6bd8
	mov r0, #1
	ldmfd sp!, {r3, r4, r5, pc}
_020CC5EC: .word ov15_020E9058
_020CC5F0: .word 0x00001E5C
_020CC5F4: .word 0xFFFFB17C
_020CC5F8: .word ov15_020E5648
_020CC5FC: .word FUN_ov15_020cc408
_020CC600: .word FUN_ov15_020cc44c
	arm_func_end FUN_ov15_020cc544

	arm_func_start FUN_ov15_020cc604
FUN_ov15_020cc604: ; 0x020CC604
	stmfd sp!, {r3, r4, r5, r6, lr}
	sub sp, sp, #0x1c4
	ldr r4, _020CC724 ; =0x020E9058
	ldr r0, [r4]
	cmp r0, #0
	addeq sp, sp, #0x1c4
	moveq r0, #0
	ldmeqfd sp!, {r3, r4, r5, r6, pc}
	bl FUN_ov15_020c6ecc
	cmp r0, #0
	beq _020CC644
	cmp r0, #0x14
	beq _020CC6BC
	cmp r0, #0x15
	beq _020CC650
	b _020CC6E4
_020CC644:
	add sp, sp, #0x1c4
	mov r0, #2
	ldmfd sp!, {r3, r4, r5, r6, pc}
_020CC650:
	add r6, sp, #0
	mov r5, #0
	mov r0, r6
	mov r1, r5
	mov r2, #0x1c4
	bl MI_CpuFill8
	mov r0, r6
	bl FUN_ov15_020c6f14
	bl FUN_ov15_020c6e34
	ldr r1, [sp]
	ldr r0, _020CC728 ; =0x00004E22
	cmp r1, r0
	ldr r1, [r4]
	bne _020CC6A0
	add r0, r1, #0xc50
	add r0, r0, #0x1000
	bl FUN_ov15_020c6bd8
	add sp, sp, #0x1c4
	mov r0, #2
	ldmfd sp!, {r3, r4, r5, r6, pc}
_020CC6A0:
	ldr r2, _020CC72C ; =0x00001E5C
	mov r0, #4
	bl FUN_ov15_020cc44c
	add sp, sp, #0x1c4
	str r5, [r4]
	mov r0, #3
	ldmfd sp!, {r3, r4, r5, r6, pc}
_020CC6BC:
	bl FUN_ov15_020c6e34
	ldr r1, [r4]
	ldr r2, _020CC72C ; =0x00001E5C
	mov r0, #4
	bl FUN_ov15_020cc44c
	mov r0, #0
	str r0, [r4]
	add sp, sp, #0x1c4
	mov r0, #5
	ldmfd sp!, {r3, r4, r5, r6, pc}
_020CC6E4:
	add r0, sp, #0
	bl FUN_ov15_020c6f14
	bl FUN_ov15_020c6e34
	mov r5, #4
	ldr r1, [r4]
	ldr r2, _020CC72C ; =0x00001E5C
	mov r0, r5
	bl FUN_ov15_020cc44c
	mov r2, #0
	ldr r1, [sp]
	mov r0, #2
	str r2, [r4]
	bl FUN_ov15_020cc2b8
	mov r0, r5
	add sp, sp, #0x1c4
	ldmfd sp!, {r3, r4, r5, r6, pc}
_020CC724: .word ov15_020E9058
_020CC728: .word 0x00004E22
_020CC72C: .word 0x00001E5C
	arm_func_end FUN_ov15_020cc604

	arm_func_start FUN_ov15_020cc730
FUN_ov15_020cc730: ; 0x020CC730
	ldr r12, _020CC738 ; =FUN_ov15_020c6d98
	bx r12
_020CC738: .word FUN_ov15_020c6d98
	arm_func_end FUN_ov15_020cc730

	arm_func_start FUN_ov15_020cc73c
FUN_ov15_020cc73c: ; 0x020CC73C
	stmfd sp!, {r3, r4, r5, r6, r7, r8, lr}
	sub sp, sp, #0x3c
	mov r4, r0
	bl _strlen
	mov r5, r0
	ldr r0, _020CC930 ; =0x020E56AC
	bl _strlen
	cmp r5, r0
	ldreqsb r0, [r4, #7]
	cmpeq r0, #0x20
	ldreqsb r0, [r4, #0xb]
	cmpeq r0, #0x20
	ldreqsb r0, [r4, #0x10]
	cmpeq r0, #0x20
	ldreqsb r0, [r4, #0x13]
	cmpeq r0, #0x3a
	ldreqsb r0, [r4, #0x16]
	cmpeq r0, #0x3a
	ldreqsb r0, [r4, #0x19]
	cmpeq r0, #0x20
	bne _020CC924
	add r6, sp, #0x2c
	add r5, sp, #0x20
	mov r0, r6
	mov r1, r5
	bl FUN_0200affc
	cmp r0, #0
	bne _020CC924
	mov r0, r6
	mov r1, r5
	bl FUN_0200b61c
	mov r5, r0
	mov r6, r1
	mvn r0, #0
	cmp r6, r0
	cmpeq r5, r0
	beq _020CC924
	add r0, sp, #0
	mov r1, r4
	bl FUN_02023e98
	mov r4, #0
	ldr r7, _020CC934 ; =0x02099E60
	add r0, sp, #0xc
	str r4, [r7]
	strb r4, [sp, #7]
	strb r4, [sp, #0xb]
	strb r4, [sp, #0x10]
	strb r4, [sp, #0x13]
	strb r4, [sp, #0x16]
	strb r4, [sp, #0x19]
	bl FUN_02024640
	ldr r1, [r7]
	str r0, [sp, #0x2c]
	cmp r1, #0x22
	beq _020CC924
	sub r1, r0, #0x7d0
	mov r0, #0xd
	ldr r8, _020CC938 ; =0x020E567C
	str r1, [sp, #0x2c]
	str r0, [sp, #0x30]
	add r7, sp, #8
_020CC830:
	ldr r0, [r8, r4, lsl #2]
	mov r1, r7
	bl FUN_02023fe0
	cmp r0, #0
	addeq r0, r4, #1
	streq r0, [sp, #0x30]
	beq _020CC858
	add r4, r4, #1
	cmp r4, #0xc
	blt _020CC830
_020CC858:
	ldr r0, [sp, #0x30]
	cmp r0, #0xc
	bhi _020CC924
	ldr r7, _020CC934 ; =0x02099E60
	mov r4, #0
	add r0, sp, #5
	str r4, [r7]
	bl FUN_02024640
	ldr r1, [r7]
	str r0, [sp, #0x34]
	cmp r1, #0x22
	beq _020CC924
	add r0, sp, #0x11
	str r4, [r7]
	bl FUN_02024640
	ldr r1, [r7]
	str r0, [sp, #0x20]
	cmp r1, #0x22
	beq _020CC924
	add r0, sp, #0x14
	str r4, [r7]
	bl FUN_02024640
	ldr r1, [r7]
	str r0, [sp, #0x24]
	cmp r1, #0x22
	beq _020CC924
	add r0, sp, #0x17
	str r4, [r7]
	bl FUN_02024640
	ldr r1, [r7]
	str r0, [sp, #0x28]
	cmp r1, #0x22
	beq _020CC924
	add r0, sp, #0x2c
	add r1, sp, #0x20
	bl FUN_0200b61c
	sub r3, r4, #1
	mov r2, r3
	cmp r1, r3
	cmpeq r0, r2
	beq _020CC924
	ldr r2, _020CC93C ; =0x020E905C
	subs r0, r5, r0
	str r0, [r2, #0xc]
	sbc r0, r6, r1
	str r0, [r2, #0x10]
	stmib r2, {r5, r6}
	mov r0, #1
	str r0, [r2]
	add sp, sp, #0x3c
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, pc}
_020CC924:
	mov r0, #0
	add sp, sp, #0x3c
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, pc}
_020CC930: .word ov15_020E56AC
_020CC934: .word unk_02099E60
_020CC938: .word ov15_020E567C
_020CC93C: .word ov15_020E905C
	arm_func_end FUN_ov15_020cc73c

	arm_func_start FUN_ov15_020cc940
FUN_ov15_020cc940: ; 0x020CC940
	ldr r12, _020CC954 ; =FUN_ov15_020cc418
	mov r2, r1
	mov r1, r0
	mov r0, #0xa
	bx r12
_020CC954: .word FUN_ov15_020cc418
	arm_func_end FUN_ov15_020cc940

	arm_func_start FUN_ov15_020cc958
FUN_ov15_020cc958: ; 0x020CC958
	ldr r12, _020CC96C ; =FUN_ov15_020cc44c
	mov r1, r0
	mov r0, #0xa
	mov r2, #0
	bx r12
_020CC96C: .word FUN_ov15_020cc44c
	arm_func_end FUN_ov15_020cc958

	arm_func_start FUN_ov15_020cc970
FUN_ov15_020cc970: ; 0x020CC970
	stmfd sp!, {r3, r4, r5, lr}
	ldr r4, _020CC9C0 ; =0x020E9070
	ldr r0, [r4, #0x18]
	add r0, r0, #0x1b8
	add r0, r0, #0x800
	bl OS_JoinThread
	ldr r0, [r4, #0x18]
	bl FUN_ov15_020cc958
	ldr r5, _020CC9C4 ; =0x020E908C
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
_020CC9C0: .word ov15_020E9070
_020CC9C4: .word ov15_020E908C
	arm_func_end FUN_ov15_020cc970

	arm_func_start FUN_ov15_020cc9c8
FUN_ov15_020cc9c8: ; 0x020CC9C8
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	sub sp, sp, #0x2a0
	mov r4, #0x64
_020CC9D4:
	bl FUN_ov15_020cc520
	cmp r0, #3
	beq _020CC9F4
	cmp r0, #4
	beq _020CCAFC
	cmp r0, #5
	beq _020CCB28
	b _020CCB40
_020CC9F4:
	ldr r4, _020CCB54 ; =0x020E9070
	ldr r7, [r4, #0x18]
	add r0, r7, #0x48
	bl _strlen
	mov r5, r0
	ldr r0, _020CCB58 ; =0x020E56CC
	bl _strlen
	add r0, r5, r0
	cmp r0, #0xff
	bls _020CCA34
	mov r1, #8
	sub r2, r1, #9
	mov r0, #0
	bl FUN_ov15_020ccb6c
	add sp, sp, #0x2a0
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_020CCA34:
	add r6, sp, #0x1a0
	ldr r2, _020CCB5C ; =0x020E56E0
	mov r0, r6
	add r3, r7, #0x48
	mov r1, #0x100
	bl FUN_02001508
	ldr r7, [r4, #0x18]
	add r0, r7, #0x89
	bl _strlen
	add r5, sp, #0x10
	mov r1, r0
	mov r2, r5
	add r0, r7, #0x89
	mov r3, #0x190
	bl FUN_ov15_020cbea8
	cmp r0, #0
	bge _020CCA90
	mov r1, #8
	sub r2, r1, #9
	mov r0, #0
	bl FUN_ov15_020ccb6c
	add sp, sp, #0x2a0
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_020CCA90:
	ldr r0, [r4, #0x18]
	ldr r12, _020CCB60 ; =FUN_ov15_020ccb6c
	str r0, [sp]
	add r0, r0, #0x20
	str r0, [sp, #4]
	ldr r0, _020CCB64 ; =FUN_ov15_020cc940
	ldr r1, _020CCB68 ; =FUN_ov15_020cc958
	mov r2, r6
	mov r3, r5
	str r12, [sp, #8]
	bl FUN_ov15_020cd68c
	cmp r0, #0
	mov r0, #0
	bne _020CCADC
	mov r1, #8
	sub r2, r1, #9
	bl FUN_ov15_020ccb6c
	add sp, sp, #0x2a0
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_020CCADC:
	ldr r3, [r4, #0x18]
	mov r4, #1
	mov r1, r0
	sub r2, r0, #1
	str r4, [r3, #0x40]
	bl FUN_ov15_020ccb6c
	add sp, sp, #0x2a0
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_020CCAFC:
	add r0, sp, #0xc
	bl FUN_ov15_020cc180
	ldr r1, [sp, #0xc]
	mov r0, #0xd
	bl FUN_ov15_020cc2b8
	mov r1, #3
	sub r2, r1, #4
	mov r0, #0
	bl FUN_ov15_020ccb6c
	add sp, sp, #0x2a0
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_020CCB28:
	mov r1, #6
	sub r2, r1, #7
	mov r0, #0
	bl FUN_ov15_020ccb6c
	add sp, sp, #0x2a0
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_020CCB40:
	mov r0, r4
	bl OS_Sleep
	b _020CC9D4
	arm_func_end FUN_ov15_020cc9c8

	arm_func_start FUN_ov15_020ccb4c
FUN_ov15_020ccb4c: ; 0x020CCB4C
	add sp, sp, #0x2a0
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_020CCB54: .word ov15_020E9070
_020CCB58: .word ov15_020E56CC
_020CCB5C: .word ov15_020E56E0
_020CCB60: .word FUN_ov15_020ccb6c
_020CCB64: .word FUN_ov15_020cc940
_020CCB68: .word FUN_ov15_020cc958
	arm_func_end FUN_ov15_020ccb4c

	arm_func_start FUN_ov15_020ccb6c
FUN_ov15_020ccb6c: ; 0x020CCB6C
	stmfd sp!, {r4, r5, r6, lr}
	movs r5, r1
	mov r6, r0
	mov r4, r2
	beq _020CCB8C
	mov r0, r5
	mov r1, r4
	bl FUN_ov15_020cd8e0
_020CCB8C:
	ldr r0, _020CCBC4 ; =0x020E908C
	bl OS_LockMutex
	ldr r0, _020CCBC8 ; =0x020E9070
	mov r1, #3
	str r1, [r0, #0x14]
	str r6, [r0, #0x10]
	str r5, [r0, #0xc]
	cmp r5, #0
	str r4, [r0, #8]
	movne r1, #4
	strne r1, [r0, #0x14]
	ldr r0, _020CCBC4 ; =0x020E908C
	bl OS_UnlockMutex
	ldmfd sp!, {r4, r5, r6, pc}
_020CCBC4: .word ov15_020E908C
_020CCBC8: .word ov15_020E9070
	arm_func_end FUN_ov15_020ccb6c

	arm_func_start FUN_ov15_020ccbcc
FUN_ov15_020ccbcc: ; 0x020CCBCC
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, lr}
	sub sp, sp, #8
	mov r7, r0
	mov r6, r1
	mov r5, r2
	bl FUN_ov15_020cc29c
	cmp r0, #0
	addne sp, sp, #8
	movne r0, #0
	ldmnefd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
	ldr r4, _020CCD48 ; =0x020E908C
	mov r0, r4
	bl OS_InitMutex
	mov r0, r4
	bl OS_LockMutex
	ldr r8, _020CCD4C ; =0x020E9070
	ldr r0, [r8, #0x14]
	cmp r0, #0
	beq _020CCC3C
	mov r5, #0
	mov r1, r5
	mov r0, #2
	bl FUN_ov15_020cd8e0
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
	bl FUN_ov15_020cc940
	str r0, [r8, #0x18]
	cmp r0, #0
	mov r1, r4
	bne _020CCC98
	mov r0, #1
	bl FUN_ov15_020cd8e0
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
	bl _strncpy
	ldr r0, [r8, #0x18]
	mov r1, r5
	mov r2, r7
	add r0, r0, #0x20
	bl _strncpy
	ldr r1, [r8, #0x18]
	ldr r0, _020CCD54 ; =0x020E56F4
	add r1, r1, #0x44
	bl FUN_ov15_020cc488
	cmp r0, #0
	bne _020CCD00
	ldr r0, [r8, #0x18]
	bl FUN_ov15_020cc958
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
	ldr r1, _020CCD58 ; =FUN_ov15_020cc9c8
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
_020CCD48: .word ov15_020E908C
_020CCD4C: .word ov15_020E9070
_020CCD50: .word 0x00000A78
_020CCD54: .word ov15_020E56F4
_020CCD58: .word FUN_ov15_020cc9c8
	arm_func_end FUN_ov15_020ccbcc

	arm_func_start FUN_ov15_020ccd5c
FUN_ov15_020ccd5c: ; 0x020CCD5C
	stmfd sp!, {r3, r4, r5, lr}
	ldr r0, _020CCE1C ; =0x020E908C
	mov r4, #0
	mov r5, r4
	bl OS_LockMutex
	ldr r0, _020CCE20 ; =0x020E9070
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
	ldr r0, _020CCE20 ; =0x020E9070
	ldr r1, [r0, #0x14]
	sub r1, r1, #3
	cmp r1, #1
	movls r4, #1
	strls r4, [r0, #0x14]
_020CCDB4:
	cmp r2, #4
	ldreq r0, _020CCE20 ; =0x020E9070
	moveq r1, #0
	streq r1, [r0, #0x14]
	streq r1, [r0, #0x10]
	ldr r0, _020CCE1C ; =0x020E908C
	moveq r5, #1
	bl OS_UnlockMutex
	ldr r2, _020CCE20 ; =0x020E9070
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
_020CCE1C: .word ov15_020E908C
_020CCE20: .word ov15_020E9070
	arm_func_end FUN_ov15_020ccd5c

	arm_func_start FUN_ov15_020cce24
FUN_ov15_020cce24: ; 0x020CCE24
	stmfd sp!, {r3, r4, r5, lr}
	ldr r4, _020CCE9C ; =0x020E9070
	ldr r0, [r4, #0x14]
	cmp r0, #0
	moveq r0, #0
	ldmeqfd sp!, {r3, r4, r5, pc}
	ldr r5, _020CCEA0 ; =0x020E908C
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
	bl FUN_ov15_020cc970
	b _020CCE94
_020CCE8C:
	ldr r0, _020CCEA4 ; =FUN_ov15_020cc970
	bl FUN_ov15_020cd860
_020CCE94:
	mov r0, #1
	ldmfd sp!, {r3, r4, r5, pc}
_020CCE9C: .word ov15_020E9070
_020CCEA0: .word ov15_020E908C
_020CCEA4: .word FUN_ov15_020cc970
	arm_func_end FUN_ov15_020cce24

	arm_func_start FUN_ov15_020ccea8
FUN_ov15_020ccea8: ; 0x020CCEA8
	stmfd sp!, {r4, r5, r6, lr}
	mov r6, r0
	mov r5, r1
	mov r4, r2
	bl FUN_ov15_020cc29c
	cmp r0, #0
	movne r0, #0
	ldmnefd sp!, {r4, r5, r6, pc}
	mov r0, r6
	mov r1, r5
	mov r2, r4
	bl FUN_ov15_020cd2d4
	ldmfd sp!, {r4, r5, r6, pc}
	arm_func_end FUN_ov15_020ccea8

	arm_func_start FUN_ov15_020ccedc
FUN_ov15_020ccedc: ; 0x020CCEDC
	stmfd sp!, {r4, r5, r6, lr}
	mov r6, r0
	bl FUN_ov15_020cc29c
	cmp r0, #0
	movne r0, #0
	ldmnefd sp!, {r4, r5, r6, pc}
	ldr r5, _020CCF74 ; =0x020E908C
	mov r0, r5
	bl OS_LockMutex
	ldr r4, _020CCF78 ; =0x020E9070
	ldr r0, [r4, #0x14]
	cmp r0, #1
	beq _020CCF30
	mov r4, #0
	mov r1, r4
	mov r0, #2
	bl FUN_ov15_020cd8e0
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
	bl FUN_ov15_020ce468
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
_020CCF74: .word ov15_020E908C
_020CCF78: .word ov15_020E9070
	arm_func_end FUN_ov15_020ccedc

	arm_func_start FUN_ov15_020ccf7c
FUN_ov15_020ccf7c: ; 0x020CCF7C
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, lr}
	mov r8, r0
	mov r7, r1
	mov r6, r2
	bl FUN_ov15_020cc29c
	cmp r0, #0
	movne r0, #0
	ldmnefd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
	ldr r5, _020CD038 ; =0x020E908C
	mov r0, r5
	bl OS_LockMutex
	ldr r9, _020CD03C ; =0x020E9070
	mov r4, #0
	ldr r0, [r9, #0x14]
	cmp r0, #1
	beq _020CCFD8
	mov r1, r4
	mov r0, #2
	bl FUN_ov15_020cd8e0
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
	bl FUN_ov15_020ce4e4
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
_020CD038: .word ov15_020E908C
_020CD03C: .word ov15_020E9070
	arm_func_end FUN_ov15_020ccf7c

	arm_func_start FUN_ov15_020cd040
FUN_ov15_020cd040: ; 0x020CD040
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, lr}
	mov r7, r0
	mov r6, r1
	mov r5, r2
	bl FUN_ov15_020cc29c
	cmp r0, #0
	movne r0, #0
	ldmnefd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
	ldr r4, _020CD0F0 ; =0x020E908C
	mov r0, r4
	bl OS_LockMutex
	ldr r8, _020CD0F4 ; =0x020E9070
	ldr r0, [r8, #0x14]
	cmp r0, #1
	beq _020CD09C
	mov r5, #0
	mov r1, r5
	mov r0, #2
	bl FUN_ov15_020cd8e0
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
	bl FUN_ov15_020ce780
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
_020CD0F0: .word ov15_020E908C
_020CD0F4: .word ov15_020E9070
	arm_func_end FUN_ov15_020cd040

	arm_func_start FUN_ov15_020cd0f8
FUN_ov15_020cd0f8: ; 0x020CD0F8
	stmfd sp!, {r4, lr}
	bl FUN_ov15_020cc29c
	cmp r0, #0
	movne r0, #0
	ldmnefd sp!, {r4, pc}
	ldr r4, _020CD150 ; =0x020E908C
	mov r0, r4
	bl OS_LockMutex
	ldr r0, _020CD154 ; =0x020E9070
	ldr r0, [r0, #0x14]
	cmp r0, #2
	mov r0, r4
	beq _020CD138
	bl OS_UnlockMutex
	mov r0, #0
	ldmfd sp!, {r4, pc}
_020CD138:
	bl OS_UnlockMutex
	bl FUN_ov15_020cd9b0
	cmp r0, #0
	movne r0, #1
	moveq r0, #0
	ldmfd sp!, {r4, pc}
_020CD150: .word ov15_020E908C
_020CD154: .word ov15_020E9070
	arm_func_end FUN_ov15_020cd0f8

	arm_func_start FUN_ov15_020cd158
FUN_ov15_020cd158: ; 0x020CD158
	stmfd sp!, {r4, r5, r6, lr}
	mov r6, r0
	mov r5, r1
	bl FUN_ov15_020cc29c
	cmp r0, #0
	movne r0, #0
	ldmnefd sp!, {r4, r5, r6, pc}
	ldr r4, _020CD1B4 ; =0x020E908C
	mov r0, r4
	bl OS_LockMutex
	ldr r0, _020CD1B8 ; =0x020E9070
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
	bl FUN_ov15_020ce93c
	ldmfd sp!, {r4, r5, r6, pc}
_020CD1B4: .word ov15_020E908C
_020CD1B8: .word ov15_020E9070
	arm_func_end FUN_ov15_020cd158

	arm_func_start FUN_ov15_020cd1bc
FUN_ov15_020cd1bc: ; 0x020CD1BC
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	mov r7, #0
	ldr r6, _020CD1F8 ; =0x020E90E0
	ldr r4, _020CD1FC ; =0x020E90A4
	mov r5, r7
_020CD1D0:
	ldr r0, [r6, r7, lsl #2]
	cmp r0, #0
	beq _020CD1E8
	ldr r1, [r4, #0x14]
	blx r1
	str r5, [r6, r7, lsl #2]
_020CD1E8:
	add r7, r7, #1
	cmp r7, #3
	blt _020CD1D0
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_020CD1F8: .word ov15_020E90E0
_020CD1FC: .word ov15_020E90A4
	arm_func_end FUN_ov15_020cd1bc

	arm_func_start FUN_ov15_020cd200
FUN_ov15_020cd200: ; 0x020CD200
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	mov r6, r1
	ldrsb r1, [r6]
	mov r7, r0
	cmp r1, #0
	beq _020CD2C4
	mov r0, r6
	bl FUN_ov15_020cedd8
	cmp r0, #0xa
	ble _020CD240
	mov r4, #0
	mov r1, r4
	mov r0, #5
	bl FUN_ov15_020cd8e0
	mov r0, r4
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_020CD240:
	mov r0, r6
	bl FUN_ov15_020cedd8
	mov r5, r0
	cmp r5, #0xa
	ble _020CD26C
	mov r4, #0
	mov r1, r4
	mov r0, #5
	bl FUN_ov15_020cd8e0
	mov r0, r4
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_020CD26C:
	bl FUN_ov15_020cd3f0
	ldr r1, _020CD2CC ; =0x020E90A4
	add r0, r0, #1
	ldr r2, [r1, #4]
	mov r1, #4
	blx r2
	ldr r4, _020CD2D0 ; =0x020E90E0
	cmp r0, #0
	str r0, [r4, r7, lsl #2]
	bne _020CD2AC
	mov r4, #0
	mov r1, r4
	mov r0, #1
	bl FUN_ov15_020cd8e0
	mov r0, r4
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_020CD2AC:
	mov r1, r6
	mov r2, r5
	bl FUN_ov15_020cd40c
	ldr r1, [r4, r7, lsl #2]
	mov r2, #0
	strb r2, [r1, r0]
_020CD2C4:
	mov r0, #1
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_020CD2CC: .word ov15_020E90A4
_020CD2D0: .word ov15_020E90E0
	arm_func_end FUN_ov15_020cd200

	arm_func_start FUN_ov15_020cd2d4
FUN_ov15_020cd2d4: ; 0x020CD2D4
	stmfd sp!, {r4, r5, r6, lr}
	mov r4, r0
	mov r6, r1
	mov r5, r2
	bl FUN_ov15_020ceca0
	bl FUN_ov15_020cd1bc
	mov r1, r4
	mov r0, #0
	bl FUN_ov15_020cd200
	cmp r0, #0
	beq _020CD338
	mov r4, #1
	mov r0, r4
	mov r1, r6
	bl FUN_ov15_020cd200
	cmp r0, #0
	beq _020CD338
	mov r1, r5
	mov r0, #2
	bl FUN_ov15_020cd200
	cmp r0, #0
	beq _020CD338
	bl FUN_ov15_020cecb4
	mov r0, r4
	ldmfd sp!, {r4, r5, r6, pc}
_020CD338:
	bl FUN_ov15_020cd1bc
	bl FUN_ov15_020cecb4
	mov r0, #0
	ldmfd sp!, {r4, r5, r6, pc}
	arm_func_end FUN_ov15_020cd2d4

	arm_func_start FUN_ov15_020cd348
FUN_ov15_020cd348: ; 0x020CD348
	stmfd sp!, {r4, lr}
	mov r4, #0
	mov lr, r4
	cmp r2, #0
	ble _020CD384
	mov r3, r4
_020CD360:
	ldrsb r12, [r1]
	add lr, lr, #1
	cmp r12, #0
	strneb r12, [r0], #1
	addne r4, r4, #1
	addne r1, r1, #1
	streqb r3, [r0], #1
	cmp lr, r2
	blt _020CD360
_020CD384:
	mov r0, r4
	ldmfd sp!, {r4, pc}
	arm_func_end FUN_ov15_020cd348

	arm_func_start FUN_ov15_020cd38c
FUN_ov15_020cd38c: ; 0x020CD38C
	cmp r0, #0x41
	blo _020CD3A0
	cmp r0, #0x5a
	subls r0, r0, #0x41
	bxls lr
_020CD3A0:
	cmp r0, #0x61
	blo _020CD3B4
	cmp r0, #0x7a
	subls r0, r0, #0x47
	bxls lr
_020CD3B4:
	cmp r0, #0x30
	blo _020CD3C8
	cmp r0, #0x39
	addls r0, r0, #4
	bxls lr
_020CD3C8:
	cmp r0, #0x2e
	moveq r0, #0x3e
	bxeq lr
	cmp r0, #0x2d
	moveq r0, #0x3f
	mvnne r0, #0
	bx lr
	arm_func_end FUN_ov15_020cd38c

	arm_func_start FUN_ov15_020cd3e4
FUN_ov15_020cd3e4: ; 0x020CD3E4
	mov r0, r0, asr #2
	add r0, r0, r0, lsl #1
	bx lr
	arm_func_end FUN_ov15_020cd3e4

	arm_func_start FUN_ov15_020cd3f0
FUN_ov15_020cd3f0: ; 0x020CD3F0
	ldr r1, _020CD408 ; =0x55555556
	add r2, r0, #2
	smull r0, r3, r1, r2
	add r3, r3, r2, lsr #31
	mov r0, r3, lsl #2
	bx lr
_020CD408: .word 0x55555556
	arm_func_end FUN_ov15_020cd3f0

	arm_func_start FUN_ov15_020cd40c
FUN_ov15_020cd40c: ; 0x020CD40C
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, lr}
	mov r7, r2
	mov r8, r1
	mov r9, r0
	cmp r7, #3
	movgt r2, #3
	mov r1, r8
	add r0, sp, #0
	mov r6, #0
	bl FUN_ov15_020cd348
	cmp r0, #0
	ble _020CD4F0
	mov r5, #0
	ldr r10, _020CD500 ; =0x020E3E0C
	mov r4, r5
	mov r11, #0x2a
_020CD44C:
	cmp r7, #3
	strltb r5, [sp, #2]
	cmp r7, #2
	strltb r4, [sp, #1]
	ldrb r1, [sp, #2]
	ldrb r2, [sp]
	ldrb r3, [sp, #1]
	mov lr, r1, asr #6
	mov r12, r2, asr #2
	orr lr, lr, r3, lsl #2
	mov r3, r3, asr #4
	and r12, r12, #0xff
	orr r2, r3, r2, lsl #4
	ldrsb r12, [r10, r12]
	and r2, r2, #0x3f
	ldrsb r2, [r10, r2]
	strb r12, [r9]
	and r12, lr, #0x3f
	cmp r0, #1
	strb r2, [r9, #1]
	ldrgtsb r2, [r10, r12]
	and r1, r1, #0x3f
	add r8, r8, r0
	movle r2, r11
	cmp r0, #2
	ldrgtsb r1, [r10, r1]
	strb r2, [r9, #2]
	add r6, r6, #4
	movle r1, #0x2a
	strb r1, [r9, #3]
	add r9, r9, #4
	subs r7, r7, r0
	beq _020CD4F0
	mov r2, #3
	cmp r7, #3
	movle r2, r7
	add r0, sp, #0
	mov r1, r8
	bl FUN_ov15_020cd348
	cmp r0, #0
	bgt _020CD44C
_020CD4F0:
	mov r1, #0
	mov r0, r6
	strb r1, [r9]
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_020CD500: .word 0x020E3E0C
	arm_func_end FUN_ov15_020cd40c

	arm_func_start FUN_ov15_020cd504
FUN_ov15_020cd504: ; 0x020CD504
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, lr}
	sub sp, sp, #8
	mov r9, r0
	mov r7, r2
	add r0, sp, #3
	mov r6, #0
	mov r2, #4
	mov r8, r1
	bl FUN_ov15_020cd348
	mov r5, r0
	mov r4, r6
	b _020CD61C
_020CD534:
	ldrb r0, [sp, #3]
	mov r1, #0
	strb r1, [sp]
	strb r1, [sp, #1]
	strb r1, [sp, #2]
	bl FUN_ov15_020cd38c
	movs r4, r0
	bmi _020CD5C8
	ldrb r0, [sp, #4]
	mov r1, r4, lsl #2
	strb r1, [sp]
	bl FUN_ov15_020cd38c
	movs r4, r0
	bmi _020CD5C8
	ldrsb r2, [sp]
	ldrb r0, [sp, #5]
	mov r1, r4, lsl #0x14
	orr r2, r2, r1, asr #24
	mov r1, r4, lsl #4
	strb r2, [sp]
	strb r1, [sp, #1]
	bl FUN_ov15_020cd38c
	movs r4, r0
	bmi _020CD5C8
	ldrsb r2, [sp, #1]
	mov r1, r4, lsl #0x16
	ldrb r0, [sp, #6]
	orr r2, r2, r1, asr #24
	mov r1, r4, lsl #6
	strb r1, [sp, #2]
	strb r2, [sp, #1]
	bl FUN_ov15_020cd38c
	movs r4, r0
	ldrplsb r1, [sp, #2]
	movpl r0, r4, lsl #0x18
	orrpl r0, r1, r0, asr #24
	strplb r0, [sp, #2]
_020CD5C8:
	sub r2, r5, #1
	cmp r2, #0
	mov r3, #0
	ble _020CD5F0
	add r1, sp, #0
_020CD5DC:
	ldrsb r0, [r1, r3]
	add r3, r3, #1
	cmp r3, r2
	strb r0, [r9], #1
	blt _020CD5DC
_020CD5F0:
	sub r0, r5, #1
	sub r7, r7, #4
	cmp r7, #0
	add r8, r8, r5
	add r6, r6, r0
	ble _020CD62C
	add r0, sp, #3
	mov r1, r8
	mov r2, #4
	bl FUN_ov15_020cd348
	mov r5, r0
_020CD61C:
	cmp r5, #0
	ble _020CD62C
	cmp r4, #0
	bge _020CD534
_020CD62C:
	mov r1, #0
	mov r0, r6
	strb r1, [r9]
	add sp, sp, #8
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
	arm_func_end FUN_ov15_020cd504

	arm_func_start FUN_ov15_020cd640
FUN_ov15_020cd640: ; 0x020CD640
	stmfd sp!, {r4, r5, r6, lr}
	mov r6, r0
	bl FUN_ov15_020cedd8
	ldr r1, _020CD688 ; =0x020E90A4
	mov r4, r0
	ldr r2, [r1, #4]
	add r0, r4, #1
	mov r1, #4
	blx r2
	movs r5, r0
	beq _020CD680
	mov r1, r6
	mov r2, r4
	bl FUN_ov15_020cee04
	mov r0, #0
	strb r0, [r5, r4]
_020CD680:
	mov r0, r5
	ldmfd sp!, {r4, r5, r6, pc}
_020CD688: .word ov15_020E90A4
	arm_func_end FUN_ov15_020cd640

	arm_func_start FUN_ov15_020cd68c
FUN_ov15_020cd68c: ; 0x020CD68C
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, lr}
	ldr r6, _020CD80C ; =0x020E90A4
	mov r5, r0
	mov r4, r1
	str r5, [r6, #4]
	ldr r0, [sp, #0x28]
	str r4, [r6, #0x14]
	str r0, [r6]
	mov r9, #0
	str r9, [r6, #0x3c]
	str r9, [r6, #0x40]
	str r9, [r6, #0x44]
	str r9, [r6, #0xc]
	str r9, [r6, #0x10]
	str r9, [r6, #0x18]
	ldr r0, _020CD810 ; =0x020E90EC
	mov r8, r2
	mov r7, r3
	str r9, [r6, #0x1c]
	bl FUN_ov15_020ced80
	ldr r0, _020CD814 ; =0x020E9171
	bl FUN_ov15_020cdbdc
	mov r0, r8
	bl FUN_ov15_020cd640
	str r0, [r6, #0x1c]
	cmp r0, #0
	beq _020CD7C4
	mov r0, r7
	bl FUN_ov15_020cd640
	str r0, [r6, #0x18]
	cmp r0, #0
	beq _020CD7C4
	ldr r8, _020CD818 ; =0x020E90D5
	ldr r1, [sp, #0x20]
	mov r0, r8
	mov r2, #4
	bl FUN_ov15_020cd40c
	ldr r7, _020CD81C ; =0x020E9158
	strb r9, [r8, r0]
	ldr r1, [sp, #0x24]
	mov r0, r7
	mov r2, #0x10
	bl FUN_ov15_020cd40c
	strb r9, [r7, r0]
	bl FUN_ov15_020cecc8
	cmp r0, #0
	beq _020CD790
	bl FUN_ov15_020cec84
	cmp r0, #0
	beq _020CD790
	mov r7, #0x11
	mov r0, r5
	mov r1, r4
	mov r2, r7
	bl FUN_ov15_020d38f4
	sub r1, r7, #0x12
	cmp r0, r1
	beq _020CD78C
	ldr r0, _020CD820 ; =0x020E90FD
	bl FUN_ov15_020cda48
	str r0, [r6, #0xc]
	mov r0, #1
	str r0, [r6, #8]
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
_020CD78C:
	bl FUN_ov15_020cec9c
_020CD790:
	ldr r4, _020CD80C ; =0x020E90A4
	ldr r0, [r4, #0x18]
	ldr r1, [r4, #0x14]
	blx r1
	ldr r0, [r4, #0x1c]
	ldr r1, [r4, #0x14]
	blx r1
	mov r4, #0
	mov r1, r4
	mov r0, #8
	bl FUN_ov15_020cd8e0
	mov r0, r4
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
_020CD7C4:
	ldr r1, _020CD80C ; =0x020E90A4
	ldr r0, [r1, #0x18]
	cmp r0, #0
	beq _020CD7DC
	ldr r1, [r1, #0x14]
	blx r1
_020CD7DC:
	ldr r1, _020CD80C ; =0x020E90A4
	ldr r0, [r1, #0x1c]
	cmp r0, #0
	beq _020CD7F4
	ldr r1, [r1, #0x14]
	blx r1
_020CD7F4:
	mov r4, #0
	mov r1, r4
	mov r0, #1
	bl FUN_ov15_020cd8e0
	mov r0, r4
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
_020CD80C: .word ov15_020E90A4
_020CD810: .word ov15_020E90EC
_020CD814: .word ov15_020E9171
_020CD818: .word ov15_020E90D5
_020CD81C: .word ov15_020E9158
_020CD820: .word ov15_020E90FD
	arm_func_end FUN_ov15_020cd68c

	arm_func_start FUN_ov15_020cd824
FUN_ov15_020cd824: ; 0x020CD824
	stmfd sp!, {r4, lr}
	bl FUN_ov15_020cd1bc
	bl FUN_ov15_020cec9c
	bl FUN_ov15_020cecf0
	ldr r4, _020CD85C ; =0x020E90A4
	ldr r0, [r4, #0x18]
	ldr r1, [r4, #0x14]
	blx r1
	ldr r0, [r4, #0x1c]
	ldr r1, [r4, #0x14]
	blx r1
	ldr r0, [r4, #0x24]
	blx r0
	ldmfd sp!, {r4, pc}
_020CD85C: .word ov15_020E90A4
	arm_func_end FUN_ov15_020cd824

	arm_func_start FUN_ov15_020cd860
FUN_ov15_020cd860: ; 0x020CD860
	stmfd sp!, {r3, lr}
	ldr r1, _020CD888 ; =0x020E90A4
	mov r2, #0
	str r2, [r1, #8]
	str r0, [r1, #0x24]
	ldr r0, [r1, #0x10]
	bl FUN_ov15_020cd890
	ldr r0, _020CD88C ; =FUN_ov15_020cd824
	bl FUN_ov15_020d392c
	ldmfd sp!, {r3, pc}
_020CD888: .word ov15_020E90A4
_020CD88C: .word FUN_ov15_020cd824
	arm_func_end FUN_ov15_020cd860

	arm_func_start FUN_ov15_020cd890
FUN_ov15_020cd890: ; 0x020CD890
	stmfd sp!, {r0, r1, r2, r3}
	stmfd sp!, {r4, lr}
	mov r4, #1
	bl FUN_ov15_020ceca0
	ldr r0, [sp, #8]
	cmp r0, #0
	beq _020CD8CC
	ldr r0, [sp, #8]
	bl FUN_ov15_020d4484
	ldr r0, [sp, #8]
	bl FUN_ov15_020d424c
	cmp r0, #0
	moveq r0, #0
	movne r4, #0
	streq r0, [sp, #8]
_020CD8CC:
	bl FUN_ov15_020cecb4
	mov r0, r4
	ldmfd sp!, {r4, lr}
	add sp, sp, #0x10
	bx lr
	arm_func_end FUN_ov15_020cd890

	arm_func_start FUN_ov15_020cd8e0
FUN_ov15_020cd8e0: ; 0x020CD8E0
	stmfd sp!, {r3, lr}
	cmp r0, #8
	addls pc, pc, r0, lsl #2
	b _020CD988
_020CD8F0: ; jump table
	ldmfd sp!, {r3, pc} ; case 0
	b _020CD914 ; case 1
	b _020CD978 ; case 2
	b _020CD924 ; case 3
	b _020CD934 ; case 4
	b _020CD958 ; case 5
	ldmfd sp!, {r3, pc} ; case 6
	b _020CD944 ; case 7
	b _020CD968 ; case 8
_020CD914:
	ldr r1, _020CD998 ; =0xFFFF86E7
	mov r0, #9
	bl FUN_ov15_020cc2b8
	ldmfd sp!, {r3, pc}
_020CD924:
	ldr r1, _020CD99C ; =0xFFFF86D4
	mov r0, #0xe
	bl FUN_ov15_020cc2b8
	ldmfd sp!, {r3, pc}
_020CD934:
	ldr r1, _020CD9A0 ; =0xFFFF86C0
	mov r0, #0xd
	bl FUN_ov15_020cc2b8
	ldmfd sp!, {r3, pc}
_020CD944:
	ldr r2, _020CD9A4 ; =0xFFFF86E8
	mov r0, #0xd
	sub r1, r2, r1
	bl FUN_ov15_020cc2b8
	ldmfd sp!, {r3, pc}
_020CD958:
	ldr r1, _020CD9A0 ; =0xFFFF86C0
	mov r0, #0xd
	bl FUN_ov15_020cc2b8
	ldmfd sp!, {r3, pc}
_020CD968:
	ldr r1, _020CD9A8 ; =0xFFFF86DF
	mov r0, #9
	bl FUN_ov15_020cc2b8
	ldmfd sp!, {r3, pc}
_020CD978:
	ldr r1, _020CD9AC ; =0xFFFF86DE
	mov r0, #0xd
	bl FUN_ov15_020cc2b8
	ldmfd sp!, {r3, pc}
_020CD988:
	ldr r1, _020CD9A8 ; =0xFFFF86DF
	mov r0, #9
	bl FUN_ov15_020cc2b8
	ldmfd sp!, {r3, pc}
_020CD998: .word 0xFFFF86E7
_020CD99C: .word 0xFFFF86D4
_020CD9A0: .word 0xFFFF86C0
_020CD9A4: .word 0xFFFF86E8
_020CD9A8: .word 0xFFFF86DF
_020CD9AC: .word 0xFFFF86DE
	arm_func_end FUN_ov15_020cd8e0

	arm_func_start FUN_ov15_020cd9b0
FUN_ov15_020cd9b0: ; 0x020CD9B0
	stmfd sp!, {r3, r4, r5, lr}
	sub sp, sp, #8
	ldr r4, _020CDA44 ; =0x020E90A4
	ldr r0, [r4, #8]
	cmp r0, #0
	addeq sp, sp, #8
	moveq r0, #0
	ldmeqfd sp!, {r3, r4, r5, pc}
	mov r5, #0
	add r0, sp, #4
	add r1, sp, #0
	str r5, [sp, #4]
	str r5, [sp]
	bl FUN_ov15_020cd158
	ldr r1, [sp, #4]
	ldr r0, [sp]
	cmp r1, r0
	addeq sp, sp, #8
	moveq r0, r5
	ldmeqfd sp!, {r3, r4, r5, pc}
	bl FUN_ov15_020cecf4
	cmp r0, #0
	bne _020CDA34
	bl FUN_ov15_020ceca0
	ldr r4, [r4, #0x10]
	bl FUN_ov15_020cecb4
	mov r0, r4
	bl FUN_ov15_020d443c
	cmp r0, #0
	moveq r5, #1
	add sp, sp, #8
	mov r0, r5
	ldmfd sp!, {r3, r4, r5, pc}
_020CDA34:
	bl FUN_ov15_020ced3c
	mov r0, r5
	add sp, sp, #8
	ldmfd sp!, {r3, r4, r5, pc}
_020CDA44: .word ov15_020E90A4
	arm_func_end FUN_ov15_020cd9b0

	arm_func_start FUN_ov15_020cda48
FUN_ov15_020cda48: ; 0x020CDA48
	stmfd sp!, {r3, r4, r5, lr}
	sub sp, sp, #0x10
	ldr r5, _020CDB34 ; =0x020E3DFC
	add r3, sp, #0
	mov r4, r0
	mov r2, #6
_020CDA60:
	ldrb r0, [r5, #1]
	ldrb r1, [r5], #2
	subs r2, r2, #1
	strb r0, [r3, #1]
	strb r1, [r3], #2
	bne _020CDA60
	ldrb r1, [r5]
	ldr r5, _020CDB38 ; =0x020E9194
	mov r0, r5
	strb r1, [r3]
	bl FUN_ov15_020c4808
	cmp r0, #0
	beq _020CDB28
	ldr r1, [r5]
	cmp r1, #0
	blt _020CDAB0
	cmp r1, #0xa
	addlt r0, r1, #0x30
	strltb r0, [sp, #1]
	blt _020CDAC8
_020CDAB0:
	cmp r1, #0xa
	blt _020CDAC8
	cmp r1, #0x64
	bge _020CDAC8
	add r0, sp, #0
	bl FUN_ov15_020cee28
_020CDAC8:
	ldr r0, _020CDB38 ; =0x020E9194
	ldr r0, [r0]
	cmp r0, #4
	beq _020CDAE0
	cmp r0, #8
	bne _020CDB0C
_020CDAE0:
	ldr r0, _020CDB38 ; =0x020E9194
	ldr r0, [r0, #4]
	cmp r0, #0
	blt _020CDAFC
	cmp r0, #0xa
	addlt r0, r0, #0x30
	strltb r0, [sp, #3]
_020CDAFC:
	ldr r1, _020CDB3C ; =0x020E91A0
	add r0, sp, #4
	mov r2, #9
	bl FUN_ov15_020cee04
_020CDB0C:
	add r1, sp, #0
	mov r0, r4
	mov r2, #0xd
	bl FUN_ov15_020cd40c
	add sp, sp, #0x10
	mov r0, #1
	ldmfd sp!, {r3, r4, r5, pc}
_020CDB28:
	mov r0, #0
	add sp, sp, #0x10
	ldmfd sp!, {r3, r4, r5, pc}
_020CDB34: .word 0x020E3DFC
_020CDB38: .word ov15_020E9194
_020CDB3C: .word ov15_020E91A0
	arm_func_end FUN_ov15_020cda48

	arm_func_start FUN_ov15_020cdb40
FUN_ov15_020cdb40: ; 0x020CDB40
	stmfd sp!, {r3, r4, r5, r6, r7, r8, lr}
	sub sp, sp, #0x24
	add r4, sp, #0x10
	mov r8, r0
	mov r7, r1
	mov r0, r4
	mov r1, #0x14
	bl FUN_ov15_020cedf0
	mov r0, r4
	bl FUN_ov15_020ca8e0
	ldr r2, [sp, #0x14]
	ldr r1, [sp, #0x10]
	cmp r2, #0
	cmpeq r1, #0
	mov r6, #0
	addeq sp, sp, #0x24
	moveq r0, r6
	ldmeqfd sp!, {r3, r4, r5, r6, r7, r8, pc}
	add r5, sp, #0
	mov r4, #0xd
	mov r0, r5
	mov r3, r4
	bl FUN_ov15_020cee34
	cmp r0, #0
	addlt sp, sp, #0x24
	movlt r0, r6
	ldmltfd sp!, {r3, r4, r5, r6, r7, r8, pc}
	mov r0, r7
	mov r1, r5
	mov r2, r4
	bl FUN_ov15_020cd40c
	ldr r1, _020CDBD8 ; =0x02FFFE0C
	mov r0, r8
	mov r2, #4
	bl FUN_ov15_020cd40c
	mov r0, #1
	add sp, sp, #0x24
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, pc}
_020CDBD8: .word 0x02FFFE0C
	arm_func_end FUN_ov15_020cdb40

	arm_func_start FUN_ov15_020cdbdc
FUN_ov15_020cdbdc: ; 0x020CDBDC
	stmfd sp!, {r3, lr}
	ldr r2, _020CDBFC ; =0x020E57E8
	mov r12, #3
	mov r1, #0x21
	mov r3, #5
	str r12, [sp]
	bl FUN_02001508
	ldmfd sp!, {r3, pc}
_020CDBFC: .word ov15_020E57E8
	arm_func_end FUN_ov15_020cdbdc

	arm_func_start FUN_ov15_020cdc00
FUN_ov15_020cdc00: ; 0x020CDC00
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, lr}
	sub sp, sp, #0x18
	mov r8, r0
	mov r10, r1
	mov r4, r2
	mov r11, #0
	mvn r7, #0
	bl FUN_ov15_020d450c
	str r0, [sp, #4]
	ldmia r0, {r5, r6}
	ldr r0, [r0, #8]
	cmp r10, #2
	str r0, [sp]
	beq _020CDE44
	cmp r10, #3
	beq _020CDE70
	cmp r10, #4
	bne _020CDE70
	mov r0, r8
	bl FUN_ov15_020d4550
	cmp r0, #8
	moveq r9, #6
	beq _020CDE0C
	ldr r1, _020CDE7C ; =0x020E5800
	add r2, sp, #0x10
	mov r0, r8
	bl FUN_ov15_020d3a24
	cmp r0, #3
	movne r9, #3
	bne _020CDE0C
	mov r4, #3
	ldr r0, [sp, #0x10]
	mov r1, r4
	bl FUN_ov15_020cee1c
	ldr r1, _020CDE80 ; =0x0000012E
	cmp r0, r1
	bne _020CDDA0
	add r1, sp, #0xc
	add r2, sp, #0x14
	mov r0, r8
	mov r10, r11
	bl FUN_ov15_020d44ac
	movs r8, r0
	movmi r9, r4
	bmi _020CDE0C
	mov r9, r10
	cmp r8, #0
	ble _020CDD90
	ldr r4, _020CDE84 ; =0x020E5810
	mov r11, #8
_020CDCC8:
	mov r2, r9
	ldr r3, [sp, #0xc]
	b _020CDCD8
_020CDCD4:
	add r9, r9, #1
_020CDCD8:
	ldrsb r0, [r3, r9]
	cmp r0, #0x3d
	beq _020CDCEC
	cmp r9, r8
	blt _020CDCD4
_020CDCEC:
	sub r0, r9, r2
	cmp r0, #8
	add r9, r9, #1
	bne _020CDD18
	add r0, r3, r2
	mov r1, r4
	mov r2, r11
	bl FUN_ov15_020cede4
	mov r10, #1
	cmp r0, #0
	movne r10, #0
_020CDD18:
	mov r1, r9
	ldr r0, [sp, #0xc]
	b _020CDD28
_020CDD24:
	add r9, r9, #1
_020CDD28:
	ldrsb r2, [r0, r9]
	cmp r2, #0x26
	cmpne r2, #0xd
	cmpne r2, #0
	beq _020CDD44
	cmp r9, r8
	blt _020CDD24
_020CDD44:
	cmp r10, #0
	sub r2, r9, r1
	add r9, r9, #1
	beq _020CDD88
	cmp r2, #4
	mov r4, #0
	bne _020CDD90
	add r7, sp, #8
	add r1, r0, r1
	mov r0, r7
	bl FUN_ov15_020cd504
	mov r1, r0
	mov r0, r7
	strb r4, [r7, r1]
	bl FUN_ov15_020cee1c
	mov r7, r0
	b _020CDD90
_020CDD88:
	cmp r9, r8
	blt _020CDCC8
_020CDD90:
	cmp r7, #0
	movlt r9, #3
	movge r9, #7
	b _020CDE0C
_020CDDA0:
	cmp r0, #0
	ble _020CDDB0
	cmp r0, #0xc8
	beq _020CDDB8
_020CDDB0:
	mov r9, #3
	b _020CDE0C
_020CDDB8:
	cmp r5, #1
	beq _020CDDD4
	cmp r5, #2
	beq _020CDDE4
	cmp r5, #3
	beq _020CDDF4
	b _020CDE0C
_020CDDD4:
	ldr r1, [sp, #4]
	mov r0, r8
	bl FUN_ov15_020ce97c
	b _020CDE00
_020CDDE4:
	ldr r1, [sp, #4]
	mov r0, r8
	bl FUN_ov15_020cea04
	b _020CDE00
_020CDDF4:
	ldr r1, [sp, #4]
	mov r0, r8
	bl FUN_ov15_020ce9d4
_020CDE00:
	cmp r0, #0
	movne r4, r11
	mov r9, r4
_020CDE0C:
	ldr r0, [sp, #4]
	bl FUN_ov15_020cde88
	bl FUN_ov15_020ced3c
	cmp r6, #0
	beq _020CDE30
	mov r0, r5
	mov r1, r9
	mov r2, r7
	blx r6
_020CDE30:
	ldr r0, [sp]
	cmp r0, #0
	beq _020CDE70
	bl FUN_ov15_020ced6c
	b _020CDE70
_020CDE44:
	mov r8, #4
	mov r0, r8
	mov r1, r7
	str r11, [r4, #8]
	bl FUN_ov15_020cd8e0
	cmp r6, #0
	beq _020CDE70
	mov r0, r5
	mov r1, r8
	mov r2, r7
	blx r6
_020CDE70:
	mov r0, #0
	add sp, sp, #0x18
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_020CDE7C: .word ov15_020E5800
_020CDE80: .word 0x0000012E
_020CDE84: .word ov15_020E5810
	arm_func_end FUN_ov15_020cdc00

	arm_func_start FUN_ov15_020cde88
FUN_ov15_020cde88: ; 0x020CDE88
	stmfd sp!, {r3, r4, r5, lr}
	ldr r5, _020CDF2C ; =0x020E90A4
	movs r4, r0
	ldmeqfd sp!, {r3, r4, r5, pc}
	ldr r0, [r4]
	cmp r0, #1
	beq _020CDF1C
	cmp r0, #2
	beq _020CDEB8
	cmp r0, #3
	beq _020CDF08
	b _020CDF1C
_020CDEB8:
	ldr r0, [r4, #0x1c]
	cmp r0, #0
	beq _020CDED4
	ldr r1, [r5, #0x14]
	blx r1
	mov r0, #0
	str r0, [r4, #0x1c]
_020CDED4:
	ldr r0, [r4, #0x18]
	cmp r0, #0
	beq _020CDEF0
	ldr r1, [r5, #0x14]
	blx r1
	mov r0, #0
	str r0, [r4, #0x18]
_020CDEF0:
	ldr r0, [r4, #0x14]
	ldr r1, [r5, #0x14]
	blx r1
	mov r0, #0
	str r0, [r4, #0x14]
	b _020CDF1C
_020CDF08:
	ldr r0, [r4, #0xc]
	ldr r1, [r5, #0x14]
	blx r1
	mov r0, #0
	str r0, [r4, #0xc]
_020CDF1C:
	ldr r1, [r5, #0x14]
	mov r0, r4
	blx r1
	ldmfd sp!, {r3, r4, r5, pc}
_020CDF2C: .word ov15_020E90A4
	arm_func_end FUN_ov15_020cde88

	arm_func_start FUN_ov15_020cdf30
FUN_ov15_020cdf30: ; 0x020CDF30
	stmfd sp!, {r4, lr}
	mov r4, r0
	mov r0, r1
	bl FUN_ov15_020cd890
	bl FUN_ov15_020ced3c
	mov r0, r4
	bl FUN_ov15_020cde88
	ldmfd sp!, {r4, pc}
	arm_func_end FUN_ov15_020cdf30

	arm_func_start FUN_ov15_020cdf50
FUN_ov15_020cdf50: ; 0x020CDF50
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, lr}
	sub sp, sp, #0x108
	mov r10, r0
	mov r9, r1
	ldr r0, _020CE3B8 ; =0x020E90CC
	ldr r1, _020CE3BC ; =0x020E9112
	mov r11, r2
	mov r7, r3
	ldr r8, [sp, #0x134]
	ldr r4, _020CE3C0 ; =0x020E90A4
	bl FUN_ov15_020cdb40
	cmp r0, #0
	bne _020CDFA0
	mov r4, #0
	mov r1, r4
	mov r0, #8
	bl FUN_ov15_020cd8e0
	add sp, sp, #0x108
	mov r0, r4
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_020CDFA0:
	ldr r2, [r4, #4]
	mov r0, #0x20
	mov r1, #4
	blx r2
	movs r6, r0
	bne _020CDFD4
	mov r4, #0
	mov r1, r4
	mov r0, #1
	bl FUN_ov15_020cd8e0
	add sp, sp, #0x108
	mov r0, r4
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_020CDFD4:
	ldr r0, [r4]
	str r0, [r6, #4]
	mov r0, #0
	str r0, [r6, #8]
	bl FUN_ov15_020cecf4
	cmp r0, #0
	bne _020CE010
	mov r0, r6
	bl FUN_ov15_020cde88
	mov r1, #0
	mov r0, #2
	bl FUN_ov15_020cd8e0
	add sp, sp, #0x108
	mov r0, #0
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_020CE010:
	ldr r0, [r4, #0x10]
	bl FUN_ov15_020cd890
	cmp r0, #0
	addeq sp, sp, #0x108
	moveq r0, #0
	ldmeqfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
	ldr r0, _020CE3C4 ; =FUN_ov15_020cdc00
	mov r5, #1
	stmia sp, {r0, r6}
	ldr r0, [r4, #0x1c]
	ldr r3, [sp, #0x130]
	mov r1, r5
	mov r2, r7
	bl FUN_ov15_020d4114
	movs r7, r0
	bne _020CE074
	bl FUN_ov15_020ced3c
	mov r0, r6
	bl FUN_ov15_020cde88
	mov r1, #0
	mov r0, #3
	bl FUN_ov15_020cd8e0
	add sp, sp, #0x108
	mov r0, #0
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_020CE074:
	ldr r1, _020CE3C8 ; =0x020E5700
	str r6, [r10]
	mov r2, r5
	str r7, [r9]
	bl FUN_ov15_020d3a90
	sub r1, r5, #2
	cmp r0, r1
	beq _020CE390
	mov r0, r7
	mov r1, #0
	bl FUN_ov15_020d3a60
	sub r1, r5, #2
	cmp r0, r1
	beq _020CE390
	ldr r1, _020CE3CC ; =0x020E581C
	ldr r2, _020CE3D0 ; =0x020E9171
	mov r0, r7
	bl FUN_ov15_020d3944
	sub r1, r5, #2
	cmp r0, r1
	beq _020CE390
	ldr r1, _020CE3D4 ; =0x020E5828
	ldr r2, _020CE3D8 ; =0x020E90D5
	mov r0, r7
	bl FUN_ov15_020d39d0
	sub r1, r5, #2
	cmp r0, r1
	beq _020CE390
	ldr r1, _020CE3DC ; =0x020E5830
	ldr r2, _020CE3B8 ; =0x020E90CC
	mov r0, r7
	bl FUN_ov15_020d39d0
	sub r1, r5, #2
	cmp r0, r1
	beq _020CE390
	ldr r1, _020CE3E0 ; =0x020E583C
	ldr r2, _020CE3E4 ; =0x020E9158
	mov r0, r7
	bl FUN_ov15_020d39d0
	sub r1, r5, #2
	cmp r0, r1
	beq _020CE390
	ldr r2, [r4, #0x18]
	ldr r1, _020CE3E8 ; =0x020E5844
	mov r0, r7
	bl FUN_ov15_020d39d0
	sub r1, r5, #2
	cmp r0, r1
	beq _020CE390
	ldr r1, _020CE3EC ; =0x020E584C
	ldr r2, _020CE3BC ; =0x020E9112
	mov r0, r7
	mov r9, r4
	bl FUN_ov15_020d39d0
	sub r1, r5, #2
	cmp r0, r1
	beq _020CE390
	ldr r1, _020CE3F0 ; =0x020E5854
	ldr r2, _020CE3F4 ; =0x020E90EC
	mov r0, r7
	bl FUN_ov15_020d39d0
	sub r1, r5, #2
	cmp r0, r1
	beq _020CE390
	ldr r1, _020CE3F8 ; =0x020E585C
	mov r0, r7
	mov r2, r11
	bl FUN_ov15_020d39d0
	sub r1, r5, #2
	cmp r0, r1
	beq _020CE390
	ldr r2, [r4, #0x3c]
	mov r4, #0
	cmp r2, #0
	beq _020CE1B8
	ldr r1, _020CE3FC ; =0x020E5864
	mov r0, r7
	bl FUN_ov15_020d39d0
	sub r1, r5, #2
	cmp r0, r1
	beq _020CE390
_020CE1B8:
	ldr r2, [r9, #0x40]
	cmp r2, #0
	beq _020CE1D8
	ldr r1, _020CE400 ; =0x020E586C
	mov r0, r7
	bl FUN_ov15_020d39d0
	cmn r0, #1
	beq _020CE390
_020CE1D8:
	ldr r2, [r9, #0x44]
	cmp r2, #0
	beq _020CE1F8
	ldr r1, _020CE404 ; =0x020E5874
	mov r0, r7
	bl FUN_ov15_020d39d0
	cmn r0, #1
	beq _020CE390
_020CE1F8:
	ldr r0, [r9, #0xc]
	cmp r0, #0
	beq _020CE21C
	ldr r1, _020CE408 ; =0x020E587C
	ldr r2, _020CE40C ; =0x020E90FD
	mov r0, r7
	bl FUN_ov15_020d39d0
	cmn r0, #1
	beq _020CE390
_020CE21C:
	cmp r8, #0
	beq _020CE29C
	mov r0, r8
	bl FUN_ov15_020cedd8
	mov r5, r0
	cmp r5, #0x40
	ble _020CE25C
	mov r1, r4
	mov r0, #5
	bl FUN_ov15_020cd8e0
	mov r0, r6
	mov r1, r7
	bl FUN_ov15_020cdf30
	add sp, sp, #0x108
	mov r0, r4
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_020CE25C:
	ldr r10, _020CE410 ; =0x020E91D4
	mov r4, #0x59
	mov r0, r10
	mov r1, r4
	bl FUN_ov15_020cedf0
	mov r0, r10
	mov r1, r8
	mov r2, r5
	bl FUN_ov15_020cd40c
	ldr r1, _020CE414 ; =0x020E5884
	mov r2, r10
	mov r0, r7
	bl FUN_ov15_020d39d0
	sub r1, r4, #0x5a
	cmp r0, r1
	beq _020CE390
_020CE29C:
	add r5, sp, #8
	mov r4, #0x80
	ldr r1, _020CE3D8 ; =0x020E90D5
	mov r0, r5
	mov r2, r4
	bl FUN_ov15_020cd504
	ldr r1, _020CE3B8 ; =0x020E90CC
	mov r0, r5
	mov r2, r4
	bl FUN_ov15_020cd504
	ldr r1, _020CE3E4 ; =0x020E9158
	mov r0, r5
	mov r2, r4
	bl FUN_ov15_020cd504
	ldr r1, [r9, #0x18]
	mov r0, r5
	mov r2, r4
	bl FUN_ov15_020cd504
	ldr r1, _020CE3BC ; =0x020E9112
	mov r0, r5
	mov r2, r4
	bl FUN_ov15_020cd504
	ldr r1, _020CE3F4 ; =0x020E90EC
	mov r0, r5
	mov r2, r4
	bl FUN_ov15_020cd504
	mov r1, r11
	mov r0, r5
	mov r2, r4
	bl FUN_ov15_020cd504
	ldr r1, _020CE40C ; =0x020E90FD
	mov r0, r5
	mov r2, r4
	bl FUN_ov15_020cd504
	ldr r1, [r9, #0x3c]
	cmp r1, #0
	beq _020CE33C
	mov r0, r5
	mov r2, r4
	bl FUN_ov15_020cd504
_020CE33C:
	ldr r1, [r9, #0x40]
	cmp r1, #0
	beq _020CE354
	add r0, sp, #8
	mov r2, #0x80
	bl FUN_ov15_020cd504
_020CE354:
	ldr r1, [r9, #0x44]
	cmp r1, #0
	beq _020CE36C
	add r0, sp, #8
	mov r2, #0x80
	bl FUN_ov15_020cd504
_020CE36C:
	cmp r8, #0
	beq _020CE384
	ldr r1, _020CE410 ; =0x020E91D4
	add r0, sp, #8
	mov r2, #0x80
	bl FUN_ov15_020cd504
_020CE384:
	add sp, sp, #0x108
	mov r0, #1
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_020CE390:
	mov r0, r6
	mov r1, r7
	bl FUN_ov15_020cdf30
	mov r4, #0
	mov r1, r4
	mov r0, #1
	bl FUN_ov15_020cd8e0
	mov r0, r4
	add sp, sp, #0x108
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_020CE3B8: .word ov15_020E90CC
_020CE3BC: .word ov15_020E9112
_020CE3C0: .word ov15_020E90A4
_020CE3C4: .word FUN_ov15_020cdc00
_020CE3C8: .word ov15_020E5700
_020CE3CC: .word ov15_020E581C
_020CE3D0: .word ov15_020E9171
_020CE3D4: .word ov15_020E5828
_020CE3D8: .word ov15_020E90D5
_020CE3DC: .word ov15_020E5830
_020CE3E0: .word ov15_020E583C
_020CE3E4: .word ov15_020E9158
_020CE3E8: .word ov15_020E5844
_020CE3EC: .word ov15_020E584C
_020CE3F0: .word ov15_020E5854
_020CE3F4: .word ov15_020E90EC
_020CE3F8: .word ov15_020E585C
_020CE3FC: .word ov15_020E5864
_020CE400: .word ov15_020E586C
_020CE404: .word ov15_020E5874
_020CE408: .word ov15_020E587C
_020CE40C: .word ov15_020E90FD
_020CE410: .word ov15_020E91D4
_020CE414: .word ov15_020E5884
	arm_func_end FUN_ov15_020cdf50

	arm_func_start FUN_ov15_020ce418
FUN_ov15_020ce418: ; 0x020CE418
	stmfd sp!, {r4, lr}
	mov r4, r1
	bl FUN_ov15_020ceca0
	mov r0, r4
	bl FUN_ov15_020d43d0
	cmp r0, #0
	beq _020CE450
	mov r4, #0
	mov r1, r4
	mov r0, #3
	bl FUN_ov15_020cd8e0
	bl FUN_ov15_020cecb4
	mov r0, r4
	ldmfd sp!, {r4, pc}
_020CE450:
	ldr r0, _020CE464 ; =0x020E90A4
	str r4, [r0, #0x10]
	bl FUN_ov15_020cecb4
	mov r0, #1
	ldmfd sp!, {r4, pc}
_020CE464: .word ov15_020E90A4
	arm_func_end FUN_ov15_020ce418

	arm_func_start FUN_ov15_020ce468
FUN_ov15_020ce468: ; 0x020CE468
	stmfd sp!, {r4, r5, r6, lr}
	sub sp, sp, #0x10
	mov r4, #0x80
	mov r6, r0
	str r4, [sp]
	mov r4, #0
	ldr r2, _020CE4DC ; =0x020E3DDD
	ldr r3, _020CE4E0 ; =0x020E9230
	add r0, sp, #0xc
	add r1, sp, #8
	str r4, [sp, #4]
	bl FUN_ov15_020cdf50
	cmp r0, #0
	addeq sp, sp, #0x10
	moveq r0, r4
	ldmeqfd sp!, {r4, r5, r6, pc}
	ldr r0, [sp, #0xc]
	mov r5, #1
	str r5, [r0]
	ldr r0, [sp, #0xc]
	str r6, [r0, #0xc]
	ldr r0, [sp, #0xc]
	ldr r1, [sp, #8]
	bl FUN_ov15_020ce418
	cmp r0, #0
	moveq r5, r4
	mov r0, r5
	add sp, sp, #0x10
	ldmfd sp!, {r4, r5, r6, pc}
_020CE4DC: .word 0x020E3DDD
_020CE4E0: .word ov15_020E9230
	arm_func_end FUN_ov15_020ce468

	arm_func_start FUN_ov15_020ce4e4
FUN_ov15_020ce4e4: ; 0x020CE4E4
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, lr}
	sub sp, sp, #0x20
	mov r10, r2
	ldr r4, _020CE770 ; =0x020E90A4
	mov r6, r10, lsl #8
	cmp r6, #0x80
	movlt r6, #0x80
	mov r11, r0
	mov r9, #4
	mov r5, r1
	ldr r2, [r4, #4]
	mov r0, r6
	mov r1, r9
	blx r2
	movs r7, r0
	bne _020CE540
	mov r4, #0
	mov r1, r4
	mov r0, #1
	bl FUN_ov15_020cd8e0
	add sp, sp, #0x20
	mov r0, r4
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_020CE540:
	mov r1, r5
	add r0, sp, #0x14
	bl FUN_ov15_020cee28
	mov r5, r0
	bl FUN_ov15_020cd3f0
	ldr r2, [r4, #4]
	mov r1, r9
	add r0, r0, #1
	blx r2
	movs r8, r0
	bne _020CE594
	ldr r1, [r4, #0x14]
	mov r0, r7
	blx r1
	mov r4, #0
	mov r1, r4
	mov r0, #1
	bl FUN_ov15_020cd8e0
	add sp, sp, #0x20
	mov r0, r4
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_020CE594:
	add r1, sp, #0x14
	mov r2, r5
	bl FUN_ov15_020cd40c
	mov r5, #0
	strb r5, [r8, r0]
	add r0, sp, #0x14
	mov r1, r10
	bl FUN_ov15_020cee28
	str r0, [sp, #8]
	bl FUN_ov15_020cd3f0
	ldr r2, [r4, #4]
	mov r1, r9
	add r0, r0, #1
	blx r2
	movs r9, r0
	bne _020CE604
	ldr r1, [r4, #0x14]
	mov r0, r8
	blx r1
	ldr r1, [r4, #0x14]
	mov r0, r7
	blx r1
	mov r1, r5
	mov r0, #1
	bl FUN_ov15_020cd8e0
	add sp, sp, #0x20
	mov r0, r5
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_020CE604:
	ldr r2, [sp, #8]
	add r1, sp, #0x14
	bl FUN_ov15_020cd40c
	strb r5, [r9, r0]
	str r6, [sp]
	ldr r2, _020CE774 ; =0x020E3DE6
	add r0, sp, #0x10
	add r1, sp, #0xc
	mov r3, r7
	str r5, [sp, #4]
	bl FUN_ov15_020cdf50
	cmp r0, #0
	bne _020CE668
	ldr r1, [r4, #0x14]
	mov r0, r9
	blx r1
	ldr r1, [r4, #0x14]
	mov r0, r8
	blx r1
	ldr r1, [r4, #0x14]
	mov r0, r7
	blx r1
	add sp, sp, #0x20
	mov r0, r5
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_020CE668:
	ldr r0, [sp, #0xc]
	ldr r1, _020CE778 ; =0x020E5894
	mov r2, r8
	bl FUN_ov15_020d39d0
	sub r1, r5, #1
	cmp r0, r1
	beq _020CE720
	ldr r0, [sp, #0xc]
	ldr r1, _020CE77C ; =0x020E589C
	mov r2, r9
	bl FUN_ov15_020d39d0
	sub r1, r5, #1
	cmp r0, r1
	beq _020CE720
	ldr r0, [sp, #0x10]
	mov r1, #2
	str r1, [r0]
	ldr r0, [sp, #0x10]
	str r11, [r0, #0xc]
	ldr r0, [sp, #0x10]
	str r8, [r0, #0x18]
	ldr r0, [sp, #0x10]
	str r9, [r0, #0x1c]
	ldr r0, [sp, #0x10]
	str r10, [r0, #0x10]
	ldr r0, [sp, #0x10]
	str r7, [r0, #0x14]
	ldr r0, [sp, #0x10]
	ldr r1, [sp, #0xc]
	bl FUN_ov15_020ce418
	cmp r0, #0
	addne sp, sp, #0x20
	movne r0, #1
	ldmnefd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
	ldr r1, [r4, #0x14]
	mov r0, r9
	blx r1
	ldr r1, [r4, #0x14]
	mov r0, r8
	blx r1
	ldr r1, [r4, #0x14]
	mov r0, r7
	blx r1
	add sp, sp, #0x20
	mov r0, r5
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_020CE720:
	ldr r4, _020CE770 ; =0x020E90A4
	mov r0, r9
	ldr r1, [r4, #0x14]
	blx r1
	ldr r1, [r4, #0x14]
	mov r0, r8
	blx r1
	ldr r1, [r4, #0x14]
	mov r0, r7
	blx r1
	ldr r0, [sp, #0x10]
	ldr r1, [sp, #0xc]
	bl FUN_ov15_020cdf30
	mov r4, #0
	mov r1, r4
	mov r0, #1
	bl FUN_ov15_020cd8e0
	mov r0, r4
	add sp, sp, #0x20
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_020CE770: .word ov15_020E90A4
_020CE774: .word 0x020E3DE6
_020CE778: .word ov15_020E5894
_020CE77C: .word ov15_020E589C
	arm_func_end FUN_ov15_020ce4e4

	arm_func_start FUN_ov15_020ce780
FUN_ov15_020ce780: ; 0x020CE780
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, lr}
	sub sp, sp, #0x10
	mov r10, r0
	ldr r4, [r10, #0xac]
	mov r9, r1
	mov r8, r3
	cmp r2, r4
	mov r4, #0
	bhs _020CE7BC
	mov r1, r4
	mov r0, #5
	bl FUN_ov15_020cd8e0
	add sp, sp, #0x10
	mov r0, r4
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_020CE7BC:
	bl FUN_ov15_020cedd8
	mov r5, r0
	cmp r5, #0x20
	ble _020CE7E4
	mov r1, r4
	mov r0, #5
	bl FUN_ov15_020cd8e0
	add sp, sp, #0x10
	mov r0, r4
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_020CE7E4:
	cmp r5, #0
	movle r7, r4
	ble _020CE7F8
	bl FUN_ov15_020cd3f0
	mov r7, r0
_020CE7F8:
	ldr r11, _020CE930 ; =0x020E90A4
	add r0, r7, #1
	ldr r2, [r11, #4]
	mov r1, #4
	blx r2
	movs r6, r0
	bne _020CE830
	mov r4, #0
	mov r1, r4
	mov r0, #1
	bl FUN_ov15_020cd8e0
	add sp, sp, #0x10
	mov r0, r4
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_020CE830:
	ldr r1, [r10, #0xac]
	ldr r2, _020CE934 ; =0x020E3DEF
	str r1, [sp]
	add r0, sp, #0xc
	add r1, sp, #8
	mov r3, r9
	str r8, [sp, #4]
	bl FUN_ov15_020cdf50
	cmp r0, #0
	bne _020CE870
	ldr r1, [r11, #0x14]
	mov r0, r6
	blx r1
	add sp, sp, #0x10
	mov r0, #0
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_020CE870:
	cmp r7, #0
	ble _020CE8A8
	mov r0, r6
	mov r1, r10
	mov r2, r5
	bl FUN_ov15_020cd40c
	strb r4, [r6, r0]
	ldr r0, [sp, #8]
	ldr r1, _020CE938 ; =0x020E58A0
	mov r2, r6
	bl FUN_ov15_020d39d0
	sub r1, r4, #1
	cmp r0, r1
	beq _020CE900
_020CE8A8:
	ldr r0, [sp, #0xc]
	mov r1, #3
	str r1, [r0]
	ldr r0, [sp, #0xc]
	str r6, [r0, #0xc]
	ldr r1, [r10, #0xac]
	ldr r0, [sp, #0xc]
	str r1, [r0, #0x10]
	ldr r0, [sp, #0xc]
	ldr r1, [sp, #8]
	bl FUN_ov15_020ce418
	cmp r0, #0
	addne sp, sp, #0x10
	movne r0, #1
	ldmnefd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
	ldr r1, _020CE930 ; =0x020E90A4
	mov r0, r6
	ldr r1, [r1, #0x14]
	blx r1
	add sp, sp, #0x10
	mov r0, #0
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_020CE900:
	ldr r0, [sp, #0xc]
	ldr r1, [sp, #8]
	bl FUN_ov15_020cdf30
	ldr r1, [r11, #0x14]
	mov r0, r6
	blx r1
	mov r1, r4
	mov r0, #1
	bl FUN_ov15_020cd8e0
	mov r0, r4
	add sp, sp, #0x10
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_020CE930: .word ov15_020E90A4
_020CE934: .word 0x020E3DEF
_020CE938: .word ov15_020E58A0
	arm_func_end FUN_ov15_020ce780

	arm_func_start FUN_ov15_020ce93c
FUN_ov15_020ce93c: ; 0x020CE93C
	stmfd sp!, {r3, lr}
	ldr r3, _020CE978 ; =0x020E90A4
	mov r12, r0
	ldr r0, [r3, #8]
	mov r2, r1
	cmp r0, #0
	moveq r0, #0
	ldmeqfd sp!, {r3, pc}
	ldr r0, [r3, #0x10]
	mov r1, r12
	bl FUN_ov15_020d4578
	cmp r0, #0
	moveq r0, #1
	movne r0, #0
	ldmfd sp!, {r3, pc}
_020CE978: .word ov15_020E90A4
	arm_func_end FUN_ov15_020ce93c

	arm_func_start FUN_ov15_020ce97c
FUN_ov15_020ce97c: ; 0x020CE97C
	stmfd sp!, {r4, lr}
	sub sp, sp, #8
	mov r4, r1
	add r1, sp, #4
	add r2, sp, #0
	bl FUN_ov15_020d44ac
	movs r1, r0
	bmi _020CE9C8
	ldr r0, [sp, #4]
	bl FUN_ov15_020cee1c
	ldr r1, [r4, #0xc]
	add sp, sp, #8
	str r0, [r1]
	ldr r0, [r4, #0xc]
	ldr r0, [r0]
	cmp r0, #0
	movge r0, #1
	movlt r0, #0
	ldmfd sp!, {r4, pc}
_020CE9C8:
	mov r0, #0
	add sp, sp, #8
	ldmfd sp!, {r4, pc}
	arm_func_end FUN_ov15_020ce97c

	arm_func_start FUN_ov15_020ce9d4
FUN_ov15_020ce9d4: ; 0x020CE9D4
	stmfd sp!, {r4, lr}
	sub sp, sp, #8
	mov r4, r1
	add r1, sp, #4
	add r2, sp, #0
	bl FUN_ov15_020d44ac
	ldr r1, [r4, #0x10]
	cmp r0, r1
	moveq r0, #1
	movne r0, #0
	add sp, sp, #8
	ldmfd sp!, {r4, pc}
	arm_func_end FUN_ov15_020ce9d4

	arm_func_start FUN_ov15_020cea04
FUN_ov15_020cea04: ; 0x020CEA04
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, lr}
	sub sp, sp, #0x80
	ldr r2, [r1, #0x10]
	str r1, [sp]
	mov r1, #0xb0
	mul r1, r2, r1
	mov r4, r0
	ldr r0, [sp]
	mov r2, #0
	ldr r0, [r0, #0xc]
	str r2, [sp, #4]
	bl FUN_ov15_020cedf0
	ldr r1, _020CEC80 ; =0x020E58AC
	add r2, sp, #0xc
	mov r0, r4
	bl FUN_ov15_020d3a24
	cmp r0, #0
	ble _020CEA6C
	ldr r1, [sp, #0xc]
	ldrsb r0, [r1]
	cmp r0, #0x30
	ldreqsb r0, [r1, #1]
	cmpeq r0, #0
	addeq sp, sp, #0x80
	moveq r0, #1
	ldmeqfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_020CEA6C:
	add r1, sp, #0x14
	add r2, sp, #0x10
	mov r0, r4
	bl FUN_ov15_020d44ac
	mov r4, r0
	cmp r4, #0
	ldrgt r0, [sp]
	movgt r5, #0
	ldrgt r0, [r0, #0x10]
	strgt r5, [sp, #8]
	cmpgt r0, #0
	ble _020CEC74
_020CEA9C:
	cmp r5, r4
	movge r0, #1
	strge r0, [sp, #4]
	bge _020CEC74
	ldr r0, [sp]
	mov r6, #0
	ldr r2, [r0, #0xc]
	ldr r0, [sp, #8]
	mov r1, #0xb0
	mla r8, r0, r1, r2
	mov r7, r5
	mov r1, r6
	str r6, [sp, #4]
	bge _020CEC58
	add r10, sp, #0x18
	mov r11, r6
_020CEADC:
	ldr r3, [sp, #0x14]
	ldrsb r0, [r3, r5]
	cmp r0, #0xd
	moveq r1, #1
	beq _020CEC4C
	cmp r1, #0
	beq _020CEB48
	cmp r0, #0xa
	bne _020CEC48
	cmp r6, #5
	bne _020CEB2C
	sub r0, r5, #1
	sub r1, r0, r7
	cmp r1, #8
	bgt _020CEC74
	add r0, r3, r7
	bl FUN_ov15_020cee1c
	cmp r0, #0
	blt _020CEC74
	str r0, [r8, #0xac]
_020CEB2C:
	cmp r6, #5
	movge r0, #1
	strge r0, [sp, #4]
	movlt r0, #0
	add r5, r5, #1
	strlt r0, [sp, #4]
	b _020CEC58
_020CEB48:
	cmp r0, #9
	bne _020CEC48
	cmp r6, #5
	addls pc, pc, r6, lsl #2
	b _020CEC40
_020CEB5C: ; jump table
	b _020CEB74 ; case 0
	b _020CEB90 ; case 1
	b _020CEBD8 ; case 2
	b _020CEBF0 ; case 3
	b _020CEC08 ; case 4
	b _020CEC20 ; case 5
_020CEB74:
	sub r2, r5, r7
	cmp r2, #0x20
	bhi _020CEC74
	add r1, r3, r7
	mov r0, r8
_020CEB88:
	bl FUN_ov15_020cee04
	b _020CEC40
_020CEB90:
	sub r9, r5, r7
	mov r0, r9
	bl FUN_ov15_020cd3e4
	cmp r0, #0x66
	bhi _020CEC74
	ldr r1, [sp, #0x14]
	mov r2, r9
	mov r0, r10
	add r1, r1, r7
	bl FUN_ov15_020cd504
	mov r2, r0
	cmp r2, #0x66
	movhi r2, #0x66
	mov r1, r10
	add r0, r8, #0x22
	bl FUN_ov15_020cee04
	strh r11, [r8, #0x86]
	b _020CEC40
_020CEBD8:
	sub r2, r5, r7
	cmp r2, #0xa
	bhi _020CEC74
	add r1, r3, r7
	add r0, r8, #0x88
	b _020CEB88
_020CEBF0:
	sub r2, r5, r7
	cmp r2, #0xa
	bhi _020CEC74
	add r1, r3, r7
	add r0, r8, #0x93
	b _020CEB88
_020CEC08:
	sub r2, r5, r7
	cmp r2, #0xa
	bhi _020CEC74
	add r1, r3, r7
	add r0, r8, #0x9e
	b _020CEB88
_020CEC20:
	sub r1, r5, r7
	cmp r1, #8
	bgt _020CEC74
	add r0, r3, r7
	bl FUN_ov15_020cee1c
	cmp r0, #0
	blt _020CEC74
	str r0, [r8, #0xac]
_020CEC40:
	add r6, r6, #1
	add r7, r5, #1
_020CEC48:
	mov r1, #0
_020CEC4C:
	add r5, r5, #1
	cmp r5, r4
	blt _020CEADC
_020CEC58:
	ldr r0, [sp]
	ldr r1, [r0, #0x10]
	ldr r0, [sp, #8]
	add r0, r0, #1
	str r0, [sp, #8]
	cmp r0, r1
	blt _020CEA9C
_020CEC74:
	ldr r0, [sp, #4]
	add sp, sp, #0x80
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_020CEC80: .word ov15_020E58AC
	arm_func_end FUN_ov15_020cea04

	arm_func_start FUN_ov15_020cec84
FUN_ov15_020cec84: ; 0x020CEC84
	stmfd sp!, {r3, lr}
	ldr r0, _020CEC98 ; =0x020E9140
	bl OS_InitMutex
	mov r0, #1
	ldmfd sp!, {r3, pc}
_020CEC98: .word ov15_020E9140
	arm_func_end FUN_ov15_020cec84

	arm_func_start FUN_ov15_020cec9c
FUN_ov15_020cec9c: ; 0x020CEC9C
	bx lr
	arm_func_end FUN_ov15_020cec9c

	arm_func_start FUN_ov15_020ceca0
FUN_ov15_020ceca0: ; 0x020CECA0
	ldr r0, _020CECAC ; =0x020E9140
	ldr r12, _020CECB0 ; =OS_LockMutex
	bx r12
_020CECAC: .word ov15_020E9140
_020CECB0: .word OS_LockMutex
	arm_func_end FUN_ov15_020ceca0

	arm_func_start FUN_ov15_020cecb4
FUN_ov15_020cecb4: ; 0x020CECB4
	ldr r0, _020CECC0 ; =0x020E9140
	ldr r12, _020CECC4 ; =OS_UnlockMutex
	bx r12
_020CECC0: .word ov15_020E9140
_020CECC4: .word OS_UnlockMutex
	arm_func_end FUN_ov15_020cecb4

	arm_func_start FUN_ov15_020cecc8
FUN_ov15_020cecc8: ; 0x020CECC8
	stmfd sp!, {r3, lr}
	ldr r0, _020CECE8 ; =0x020E9128
	bl OS_InitMutex
	ldr r0, _020CECEC ; =0x020E90A4
	mov r1, #0
	str r1, [r0, #0x20]
	mov r0, #1
	ldmfd sp!, {r3, pc}
_020CECE8: .word ov15_020E9128
_020CECEC: .word ov15_020E90A4
	arm_func_end FUN_ov15_020cecc8

	arm_func_start FUN_ov15_020cecf0
FUN_ov15_020cecf0: ; 0x020CECF0
	bx lr
	arm_func_end FUN_ov15_020cecf0

	arm_func_start FUN_ov15_020cecf4
FUN_ov15_020cecf4: ; 0x020CECF4
	stmfd sp!, {r4, lr}
	ldr r0, _020CED34 ; =0x020E9128
	bl OS_LockMutex
	ldr r0, _020CED38 ; =0x020E90A4
	mov r4, #1
	ldr r0, [r0, #0x20]
	cmp r0, #0
	movne r4, #0
	cmp r4, #0
	ldrne r0, _020CED38 ; =0x020E90A4
	movne r1, #1
	strne r1, [r0, #0x20]
	ldr r0, _020CED34 ; =0x020E9128
	bl OS_UnlockMutex
	mov r0, r4
	ldmfd sp!, {r4, pc}
_020CED34: .word ov15_020E9128
_020CED38: .word ov15_020E90A4
	arm_func_end FUN_ov15_020cecf4

	arm_func_start FUN_ov15_020ced3c
FUN_ov15_020ced3c: ; 0x020CED3C
	stmfd sp!, {r4, lr}
	ldr r4, _020CED64 ; =0x020E9128
	mov r0, r4
	bl OS_LockMutex
	ldr r1, _020CED68 ; =0x020E90A4
	mov r2, #0
	mov r0, r4
	str r2, [r1, #0x20]
	bl OS_UnlockMutex
	ldmfd sp!, {r4, pc}
_020CED64: .word ov15_020E9128
_020CED68: .word ov15_020E90A4
	arm_func_end FUN_ov15_020ced3c

	arm_func_start FUN_ov15_020ced6c
FUN_ov15_020ced6c: ; 0x020CED6C
	mov r1, #0
	ldr r12, _020CED7C ; =FUN_0200219c
	mov r2, r1
	bx r12
_020CED7C: .word FUN_0200219c
	arm_func_end FUN_ov15_020ced6c

	arm_func_start FUN_ov15_020ced80
FUN_ov15_020ced80: ; 0x020CED80
	stmfd sp!, {r3, r4, r5, r6, r7, r8, lr}
	sub sp, sp, #0x14
	add r6, sp, #0
	mov r8, r0
	mov r0, r6
	bl FUN_02003f38
	mov r7, #0
	add r5, sp, #6
	mov r4, #2
_020CEDA4:
	ldrb r1, [r6, r7]
	mov r2, r4
	add r0, r5, r7, lsl #1
	bl FUN_ov15_020cef08
	add r7, r7, #1
	cmp r7, #6
	blt _020CEDA4
	mov r0, r8
	mov r1, r5
	mov r2, #0xc
	bl FUN_ov15_020cd40c
	add sp, sp, #0x14
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, pc}
	arm_func_end FUN_ov15_020ced80

	arm_func_start FUN_ov15_020cedd8
FUN_ov15_020cedd8: ; 0x020CEDD8
	ldr r12, _020CEDE0 ; =_strlen
	bx r12
_020CEDE0: .word _strlen
	arm_func_end FUN_ov15_020cedd8

	arm_func_start FUN_ov15_020cede4
FUN_ov15_020cede4: ; 0x020CEDE4
	ldr r12, _020CEDEC ; =FUN_020240f4
	bx r12
_020CEDEC: .word FUN_020240f4
	arm_func_end FUN_ov15_020cede4

	arm_func_start FUN_ov15_020cedf0
FUN_ov15_020cedf0: ; 0x020CEDF0
	ldr r12, _020CEE00 ; =MI_CpuFill8
	mov r2, r1
	mov r1, #0
	bx r12
_020CEE00: .word MI_CpuFill8
	arm_func_end FUN_ov15_020cedf0

	arm_func_start FUN_ov15_020cee04
FUN_ov15_020cee04: ; 0x020CEE04
	mov r3, r0
	mov r0, r1
	ldr r12, _020CEE18 ; =MI_CpuCopy8
	mov r1, r3
	bx r12
_020CEE18: .word MI_CpuCopy8
	arm_func_end FUN_ov15_020cee04

	arm_func_start FUN_ov15_020cee1c
FUN_ov15_020cee1c: ; 0x020CEE1C
	ldr r12, _020CEE24 ; =FUN_ov15_020cf85c
	bx r12
_020CEE24: .word FUN_ov15_020cf85c
	arm_func_end FUN_ov15_020cee1c

	arm_func_start FUN_ov15_020cee28
FUN_ov15_020cee28: ; 0x020CEE28
	ldr r12, _020CEE30 ; =FUN_ov15_020cf8f8
	bx r12
_020CEE30: .word FUN_ov15_020cf8f8
	arm_func_end FUN_ov15_020cee28

	arm_func_start FUN_ov15_020cee34
FUN_ov15_020cee34: ; 0x020CEE34
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, lr}
	mov r8, r2
	ldr r4, _020CEEFC ; =0x01634578
	ldr r2, _020CEF00 ; =0x5D8A0000
	mov r9, r1
	cmp r8, r4
	mov r10, r0
	mov r11, r3
	mov r5, #0
	cmpeq r9, r2
	subhs r0, r5, #1
	ldmhsfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
	mov r4, r5
	mov r0, r5
_020CEE6C:
	ldr r1, _020CEF04 ; =0x020E3E50
	add r1, r1, r4, lsl #3
	ldr r6, [r1, #4]
	ldr r1, _020CEF04 ; =0x020E3E50
	cmp r8, r6
	ldr r7, [r1, r4, lsl #3]
	cmpeq r9, r7
	blo _020CEEC0
	mov r0, r9
	mov r1, r8
	mov r2, r7
	mov r3, r6
	bl FUN_0201f954
	umull r3, r2, r0, r7
	mla r2, r0, r6, r2
	add r0, r0, #0x30
	subs r9, r9, r3
	strb r0, [r10, r5]
	sbc r8, r8, r2
	mov r0, #1
	b _020CEEDC
_020CEEC0:
	cmp r0, #0
	bne _020CEED4
	rsb r1, r4, #0x11
	cmp r1, r11
	bgt _020CEEE0
_020CEED4:
	mov r1, #0x30
	strb r1, [r10, r5]
_020CEEDC:
	add r5, r5, #1
_020CEEE0:
	add r4, r4, #1
	cmp r4, #0x10
	blt _020CEE6C
	adds r0, r9, #0x30
	strb r0, [r10, r5]
	add r0, r5, #1
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_020CEEFC: .word 0x01634578
_020CEF00: .word 0x5D8A0000
_020CEF04: .word 0x020E3E50
	arm_func_end FUN_ov15_020cee34

	arm_func_start FUN_ov15_020cef08
FUN_ov15_020cef08: ; 0x020CEF08
	stmfd sp!, {r3, lr}
	mov lr, #0
	cmp r2, #8
	subgt r0, lr, #1
	ldmgtfd sp!, {r3, pc}
	cmp r2, #1
	mov r12, #1
	blt _020CEF58
_020CEF28:
	sub r3, r2, r12
	mov r3, r3, lsl #2
	mov r3, r1, lsr r3
	and r3, r3, #0xf
	cmp r3, #0xa
	addlo r3, r3, #0x30
	addhs r3, r3, #0x57
	add r12, r12, #1
	strb r3, [r0, lr]
	add lr, lr, #1
	cmp r12, r2
	ble _020CEF28
_020CEF58:
	mov r0, lr
	ldmfd sp!, {r3, pc}
	arm_func_end FUN_ov15_020cef08

	arm_func_start FUN_ov15_020cef60
FUN_ov15_020cef60: ; 0x020CEF60
	ldr r12, _020CEF68 ; =OS_InitMutex
	bx r12
_020CEF68: .word OS_InitMutex
	arm_func_end FUN_ov15_020cef60

	arm_func_start FUN_ov15_020cef6c
FUN_ov15_020cef6c: ; 0x020CEF6C
	ldr r12, _020CEF74 ; =OS_LockMutex
	bx r12
_020CEF74: .word OS_LockMutex
	arm_func_end FUN_ov15_020cef6c

	arm_func_start FUN_ov15_020cef78
FUN_ov15_020cef78: ; 0x020CEF78
	stmfd sp!, {r4, r5, r6, lr}
	sub sp, sp, #8
	mov r6, r0
	mov r5, r1
	mov r4, r2
	bl FUN_ov15_020d1164
	cmp r0, #0
	bne _020CEFB0
	mov r0, r6
	add r1, r6, #0x20
	mov r2, #3
	bl FUN_02002174
	mov r0, r6
	bl FUN_ov15_020d114c
_020CEFB0:
	mov r0, #0x2000
	str r0, [sp]
	ldr r1, _020CEFE4 ; =FUN_ov15_020cf074
	add r0, r6, #0x2c
	add r3, r4, #0x2000
	mov r2, #0
	str r5, [sp, #4]
	bl OS_CreateThread
	add r0, r6, #0x2c
	bl OS_WakeupThreadDirect
	mov r0, #1
	add sp, sp, #8
	ldmfd sp!, {r4, r5, r6, pc}
_020CEFE4: .word FUN_ov15_020cf074
	arm_func_end FUN_ov15_020cef78

	arm_func_start FUN_ov15_020cefe8
FUN_ov15_020cefe8: ; 0x020CEFE8
	stmfd sp!, {r4, lr}
	mov r2, #1
	mov r4, r0
	str r2, [r1, #0x18]
	bl FUN_ov15_020cf01c
	add r0, r4, #0x2c
	bl OS_JoinThread
	ldmfd sp!, {r4, pc}
	arm_func_end FUN_ov15_020cefe8

	arm_func_start FUN_ov15_020cf008
FUN_ov15_020cf008: ; 0x020CF008
	stmfd sp!, {r3, lr}
	add r1, sp, #0
	mov r2, #1
	bl FUN_02002230
	ldmfd sp!, {r3, pc}
	arm_func_end FUN_ov15_020cf008

	arm_func_start FUN_ov15_020cf01c
FUN_ov15_020cf01c: ; 0x020CF01C
	mov r1, #0
	ldr r12, _020CF02C ; =FUN_0200219c
	mov r2, r1
	bx r12
_020CF02C: .word FUN_0200219c
	arm_func_end FUN_ov15_020cf01c

	arm_func_start FUN_ov15_020cf030
FUN_ov15_020cf030: ; 0x020CF030
	stmfd sp!, {r3, lr}
	ldr r2, _020CF070 ; =0x020939a4
	add r0, r0, #0x2c
	ldr r2, [r2, #4]
	cmp r2, #0
	ldmeqfd sp!, {r3, pc}
	cmp r1, #0
	bne _020CF058
	cmp r2, r0
	bne _020CF068
_020CF058:
	cmp r1, #0
	ldmeqfd sp!, {r3, pc}
	cmp r2, r0
	ldmnefd sp!, {r3, pc}
_020CF068:
	bl OS_Terminate
	ldmfd sp!, {r3, pc}
_020CF070: .word 0x020939a4
	arm_func_end FUN_ov15_020cf030

	arm_func_start FUN_ov15_020cf074
FUN_ov15_020cf074: ; 0x020CF074
	ldr r12, _020CF07C ; =FUN_ov15_020d3780
	bx r12
_020CF07C: .word FUN_ov15_020d3780
	arm_func_end FUN_ov15_020cf074

	arm_func_start FUN_ov15_020cf080
FUN_ov15_020cf080: ; 0x020CF080
	tst r0, #0x8000
	bicne r0, r0, #0x8000
	bx lr
	arm_func_end FUN_ov15_020cf080

	arm_func_start FUN_ov15_020cf08c
FUN_ov15_020cf08c: ; 0x020CF08C
	mov r0, #0
	bx lr
	arm_func_end FUN_ov15_020cf08c

	arm_func_start FUN_ov15_020cf094
FUN_ov15_020cf094: ; 0x020CF094
	stmfd sp!, {r4, lr}
	ldr r4, _020CF0B4 ; =0x020E92B0
	mov r0, r4
	bl FUN_02004094
	mov r0, r4
	mov r1, #0x20
	bl FUN_ov15_020d9a88
	ldmfd sp!, {r4, pc}
_020CF0B4: .word ov15_020E92B0
	arm_func_end FUN_ov15_020cf094

	arm_func_start FUN_ov15_020cf0b8
FUN_ov15_020cf0b8: ; 0x020CF0B8
	stmfd sp!, {r3, r4, r5, lr}
	mov r5, #0
	sub r1, r5, #1
	cmp r0, r1
	subeq r5, r5, #1
	beq _020CF0F0
	mov r4, #4
	add r1, sp, #0
	mov r3, r4
	mov r2, #1
	bl FUN_ov15_020d6ec0
	sub r1, r4, #0xa
	cmp r0, r1
	subne r5, r4, #5
_020CF0F0:
	mov r0, r5
	ldmfd sp!, {r3, r4, r5, pc}
	arm_func_end FUN_ov15_020cf0b8

	arm_func_start FUN_ov15_020cf0f8
FUN_ov15_020cf0f8: ; 0x020CF0F8
	ldr r12, _020CF10C ; =FUN_ov15_020d6e0c
	mov r0, #2
	mov r1, #1
	mov r2, #0
	bx r12
_020CF10C: .word FUN_ov15_020d6e0c
	arm_func_end FUN_ov15_020cf0f8

	arm_func_start FUN_ov15_020cf110
FUN_ov15_020cf110: ; 0x020CF110
	stmfd sp!, {r4, r5, r6, r7, r8, r9, r10, lr}
	mov r10, r2
	mov r0, r10
	mov r4, r1
	bl FUN_ov15_020d7028
	movs r8, r0
	beq _020CF134
	cmn r8, #0x1a
	bne _020CF174
_020CF134:
	mov r9, #0
	mov r7, #0x1f4
	ldr r5, _020CF19C ; =0x00002710
	mvn r6, #0x19
	b _020CF158
_020CF148:
	mov r0, r7
	bl OS_Sleep
	bl FUN_ov15_020d6598
	add r9, r9, #0x1f4
_020CF158:
	mov r0, r10
	bl FUN_ov15_020d7028
	mov r8, r0
	cmp r8, r6
	bne _020CF174
	cmp r9, r5
	ble _020CF148
_020CF174:
	cmn r8, #0x1a
	cmpne r4, #0
	ldrne r0, [r4, #0xac]
	cmpne r0, #0
	beq _020CF194
	bl FUN_ov15_020cfb9c
	mov r0, #0
	str r0, [r4, #0xac]
_020CF194:
	mov r0, r8
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, pc}
_020CF19C: .word 0x00002710
	arm_func_end FUN_ov15_020cf110

	arm_func_start FUN_ov15_020cf1a0
FUN_ov15_020cf1a0: ; 0x020CF1A0
	stmfd sp!, {r4, r5, r6, lr}
	sub sp, sp, #8
	ldr r4, [sp, #0x1c]
	ldr r12, [sp, #0x18]
	mov r4, r4, lsl #0x10
	mov r4, r4, lsr #0x10
	mov lr, r4, asr #8
	mov r4, r4, lsl #8
	mov r6, #8
	mov r5, #2
	and lr, lr, #0xff
	and r4, r4, #0xff00
	orr lr, lr, r4
	mov r4, r2
	strb r6, [sp]
	strb r5, [sp, #1]
	strh lr, [sp, #2]
	str r12, [sp, #4]
	ldr r12, [r4, #8]
	mov r5, r3
	cmp r12, #0
	beq _020CF214
	ldr r12, [r4, #0xc]
	cmp r12, #0
	bne _020CF214
	bl FUN_ov15_020cf250
	cmp r0, #0
	addlt sp, sp, #8
	ldmltfd sp!, {r4, r5, r6, pc}
_020CF214:
	add r1, sp, #0
	mov r0, r5
	bl FUN_ov15_020d6e64
	cmp r0, #0
	bge _020CF240
	ldr r0, [r4]
	add sp, sp, #8
	cmp r0, #0
	ldrne r0, _020CF24C ; =0xFFFFFC16
	mvneq r0, #0x3e8
	ldmfd sp!, {r4, r5, r6, pc}
_020CF240:
	mov r0, #0
	add sp, sp, #8
	ldmfd sp!, {r4, r5, r6, pc}
_020CF24C: .word 0xFFFFFC16
	arm_func_end FUN_ov15_020cf1a0

	arm_func_start FUN_ov15_020cf250
FUN_ov15_020cf250: ; 0x020CF250
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	mov r7, r2
	ldr r4, [r7, #0xac]
	mov r5, r3
	cmp r4, #0
	bne _020CF288
	mov r6, #0x830
	mov r0, r6
	mov r1, #4
	bl FUN_ov15_020cfb6c
	mov r4, r0
	mov r1, r6
	str r4, [r7, #0xac]
	bl FUN_ov15_020cf550
_020CF288:
	ldr r0, [r7, #0xc0]
	mov r1, r4
	str r0, [r4, #0x814]
	ldr r0, [r7, #0xc4]
	str r0, [r4, #0x818]
	ldr r0, [r7, #0x28]
	str r0, [r4, #0x800]
	ldr r0, [r7, #0xd8]
	cmp r0, #0
	ldrne r0, _020CF2D8 ; =FUN_ov15_020cf08c
	ldreq r0, _020CF2DC ; =FUN_ov15_020cf080
	str r0, [r4, #0x810]
	mov r0, r5
	bl FUN_ov15_020d74c0
	cmp r0, #0
	mvnlt r0, #0x3e8
	ldmltfd sp!, {r3, r4, r5, r6, r7, pc}
	bl FUN_ov15_020cf094
	mov r0, #0
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_020CF2D8: .word FUN_ov15_020cf08c
_020CF2DC: .word FUN_ov15_020cf080
	arm_func_end FUN_ov15_020cf250

	arm_func_start FUN_ov15_020cf2e0
FUN_ov15_020cf2e0: ; 0x020CF2E0
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, lr}
	mov r9, r0
	mov r7, r3
	mov r8, r2
	cmp r7, #0
	add r4, r9, #0x40
	mov r5, #0
	ble _020CF3A0
	add r0, r9, #0x8000
	ldr r0, [r0, #0x44]
	cmp r0, #0
	bne _020CF338
	ldr r3, [sp, #0x20]
	mov r0, r1
	mov r1, r4
	mov r2, #0x8000
	bl FUN_ov15_020d6ec0
	cmp r0, #0
	ldmlefd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
	add r1, r9, #0x8000
	str r0, [r1, #0x44]
	str r5, [r1, #0x40]
_020CF338:
	add r0, r9, #0x8000
	ldr r6, [r0, #0x44]
	cmp r6, #0
	beq _020CF3A0
	add r0, r9, #0x8000
	ldr r1, [r0, #0x40]
	cmp r7, r6
	movls r6, r7
	mov r0, r8
	mov r2, r6
	add r1, r4, r1
	bl FUN_ov15_020cf514
	add r0, r9, #0x8000
	ldr r1, [r0, #0x44]
	subs r1, r1, r6
	str r1, [r0, #0x44]
	ldrne r1, [r0, #0x40]
	addne r1, r1, r6
	bne _020CF398
	mov r0, r4
	mov r1, #0x8000
	bl FUN_ov15_020cf550
	add r0, r9, #0x8000
	mov r1, #0
_020CF398:
	str r1, [r0, #0x40]
	mov r5, r6
_020CF3A0:
	mov r0, r5
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
	arm_func_end FUN_ov15_020cf2e0

	arm_func_start FUN_ov15_020cf3a8
FUN_ov15_020cf3a8: ; 0x020CF3A8
	stmfd sp!, {r3, r4, r5, r6, lr}
	sub sp, sp, #4
	mov r6, r1
	mov r5, r2
	mov r4, r3
	bl FUN_ov15_020d3ca8
	cmp r0, #0
	beq _020CF3E4
	ldr r12, [sp, #0x1c]
	ldr r3, [sp, #0x18]
	mov r1, r5
	mov r2, r4
	str r12, [sp]
	bl FUN_ov15_020cf2e0
	b _020CF3F0
_020CF3E4:
	add sp, sp, #4
	mvn r0, #0x3e8
	ldmfd sp!, {r3, r4, r5, r6, pc}
_020CF3F0:
	cmp r0, #0
	addge sp, sp, #4
	ldmgefd sp!, {r3, r4, r5, r6, pc}
	ldr r1, [r6]
	cmp r1, #0
	addne sp, sp, #4
	ldrne r0, _020CF424 ; =0xFFFFFC16
	ldmnefd sp!, {r3, r4, r5, r6, pc}
	cmn r0, #0x38
	moveq r0, #0
	mvnne r0, #0x3e8
	add sp, sp, #4
	ldmfd sp!, {r3, r4, r5, r6, pc}
_020CF424: .word 0xFFFFFC16
	arm_func_end FUN_ov15_020cf3a8

	arm_func_start FUN_ov15_020cf428
FUN_ov15_020cf428: ; 0x020CF428
	ldr r12, _020CF430 ; =FUN_ov15_020d6f74
	bx r12
_020CF430: .word FUN_ov15_020d6f74
	arm_func_end FUN_ov15_020cf428

	arm_func_start FUN_ov15_020cf434
FUN_ov15_020cf434: ; 0x020CF434
	stmfd sp!, {r4, lr}
	mov r4, r0
	mov r0, r1
	mov r1, r2
	mov r2, r3
	ldr r3, [sp, #8]
	bl FUN_ov15_020cf428
	cmp r0, #0
	ldmgefd sp!, {r4, pc}
	ldr r1, [r4]
	cmp r1, #0
	ldrne r0, _020CF478 ; =0xFFFFFC16
	ldmnefd sp!, {r4, pc}
	cmn r0, #0x38
	moveq r0, #0
	mvnne r0, #0x3e8
	ldmfd sp!, {r4, pc}
_020CF478: .word 0xFFFFFC16
	arm_func_end FUN_ov15_020cf434

	arm_func_start FUN_ov15_020cf47c
FUN_ov15_020cf47c: ; 0x020CF47C
	stmfd sp!, {r3, r4, r5, lr}
	mov r4, r2
	mov r5, r0
	bl FUN_ov15_020d4094
	cmp r4, #0
	blt _020CF4A0
	mov r0, r4
	mov r1, #2
	bl FUN_ov15_020d701c
_020CF4A0:
	mov r0, r5
	bl FUN_ov15_020d40a0
	ldmfd sp!, {r3, r4, r5, pc}
	arm_func_end FUN_ov15_020cf47c

	arm_func_start FUN_ov15_020cf4ac
FUN_ov15_020cf4ac: ; 0x020CF4AC
	stmfd sp!, {r4, lr}
	sub sp, sp, #8
	mov r4, r1
	mov r2, #0
	add r1, sp, #0
	mov r0, r4
	str r2, [sp, #4]
	bl FUN_ov15_020d7394
	cmp r0, #0
	ldrne r0, [sp]
	strne r0, [sp, #4]
	bne _020CF508
	mov r0, r4
	bl FUN_ov15_020d7034
	cmp r0, #0
	ldrnesh r1, [r0, #0xa]
	cmpne r1, #0
	ble _020CF508
	ldr r1, [r0, #0xc]
	add r0, sp, #4
	ldr r1, [r1]
	mov r2, #4
	bl FUN_ov15_020cf514
_020CF508:
	ldr r0, [sp, #4]
	add sp, sp, #8
	ldmfd sp!, {r4, pc}
	arm_func_end FUN_ov15_020cf4ac

	arm_func_start FUN_ov15_020cf514
FUN_ov15_020cf514: ; 0x020CF514
	mov r3, r0
	mov r0, r1
	ldr r12, _020CF528 ; =MI_CpuCopy8
	mov r1, r3
	bx r12
_020CF528: .word MI_CpuCopy8
	arm_func_end FUN_ov15_020cf514

	arm_func_start FUN_ov15_020cf52c
FUN_ov15_020cf52c: ; 0x020CF52C
	ldr r12, _020CF534 ; =STD_GetStringLength
	bx r12
_020CF534: .word STD_GetStringLength
	arm_func_end FUN_ov15_020cf52c

	arm_func_start FUN_ov15_020cf538
FUN_ov15_020cf538: ; 0x020CF538
	ldr r12, _020CF540 ; =STD_GetStringNLength
	bx r12
_020CF540: .word STD_GetStringNLength
	arm_func_end FUN_ov15_020cf538

	arm_func_start FUN_ov15_020cf544
FUN_ov15_020cf544: ; 0x020CF544
	ldr r12, _020CF54C ; =STD_CompareString
	bx r12
_020CF54C: .word STD_CompareString
	arm_func_end FUN_ov15_020cf544

	arm_func_start FUN_ov15_020cf550
FUN_ov15_020cf550: ; 0x020CF550
	ldr r12, _020CF560 ; =MI_CpuFill8
	mov r2, r1
	mov r1, #0
	bx r12
_020CF560: .word MI_CpuFill8
	arm_func_end FUN_ov15_020cf550

	arm_func_start FUN_ov15_020cf564
FUN_ov15_020cf564: ; 0x020CF564
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, lr}
	cmp r2, #0
	mov r4, #0
	ble _020CF600
	mov r5, #1
	mov lr, r5
	mov r12, r5
	mov r3, r5
_020CF584:
	ldrsb r9, [r0], #1
	ldrsb r8, [r1], #1
	cmp r9, #0
	beq _020CF59C
	cmp r8, #0
	bne _020CF5AC
_020CF59C:
	cmp r9, #0
	cmpeq r8, #0
	moveq r2, #0
	beq _020CF600
_020CF5AC:
	mov r6, r5
	cmp r8, #0x41
	movlt r6, r4
	mov r7, lr
	cmp r8, #0x5a
	movgt r7, r4
	tst r6, r7
	addne r8, r8, #0x20
	mov r6, r12
	cmp r9, #0x41
	movlt r6, r4
	mov r7, r3
	cmp r9, #0x5a
	movgt r7, r4
	tst r6, r7
	addne r9, r9, #0x20
	cmp r9, r8
	bne _020CF600
	sub r2, r2, #1
	cmp r2, #0
	bgt _020CF584
_020CF600:
	mov r0, r2
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
	arm_func_end FUN_ov15_020cf564

	arm_func_start FUN_ov15_020cf608
FUN_ov15_020cf608: ; 0x020CF608
	ldrsb r2, [r0], #1
	mov r1, #0
	cmp r2, #0
	beq _020CF668
_020CF618:
	cmp r2, #0x30
	blt _020CF628
	cmp r2, #0x39
	ble _020CF650
_020CF628:
	cmp r2, #0x41
	blt _020CF638
	cmp r2, #0x5a
	ble _020CF650
_020CF638:
	cmp r2, #0x61
	blt _020CF648
	cmp r2, #0x7a
	ble _020CF650
_020CF648:
	cmp r2, #0x20
	bne _020CF658
_020CF650:
	add r1, r1, #1
	b _020CF65C
_020CF658:
	add r1, r1, #3
_020CF65C:
	ldrsb r2, [r0], #1
	cmp r2, #0
	bne _020CF618
_020CF668:
	mov r0, r1
	bx lr
	arm_func_end FUN_ov15_020cf608

	arm_func_start FUN_ov15_020cf670
FUN_ov15_020cf670: ; 0x020CF670
	mov r2, #0
	cmp r1, #0
	mov r3, r2
	ldrsb r12, [r0], #1
	cmpgt r1, #0
	ble _020CF6DC
_020CF688:
	cmp r12, #0x30
	blt _020CF698
	cmp r12, #0x39
	ble _020CF6C0
_020CF698:
	cmp r12, #0x41
	blt _020CF6A8
	cmp r12, #0x5a
	ble _020CF6C0
_020CF6A8:
	cmp r12, #0x61
	blt _020CF6B8
	cmp r12, #0x7a
	ble _020CF6C0
_020CF6B8:
	cmp r12, #0x20
	bne _020CF6C8
_020CF6C0:
	add r3, r3, #1
	b _020CF6CC
_020CF6C8:
	add r3, r3, #3
_020CF6CC:
	add r2, r2, #1
	cmp r2, r1
	ldrsb r12, [r0], #1
	blt _020CF688
_020CF6DC:
	mov r0, r3
	bx lr
	arm_func_end FUN_ov15_020cf670

	arm_func_start FUN_ov15_020cf6e4
FUN_ov15_020cf6e4: ; 0x020CF6E4
	cmp r1, #0x20
	moveq r1, #0x2b
	streqb r1, [r0]
	moveq r0, #1
	bxeq lr
	cmp r1, #0x30
	blt _020CF708
	cmp r1, #0x39
	ble _020CF728
_020CF708:
	cmp r1, #0x41
	blt _020CF718
	cmp r1, #0x5a
	ble _020CF728
_020CF718:
	cmp r1, #0x61
	blt _020CF734
	cmp r1, #0x7a
	bgt _020CF734
_020CF728:
	strb r1, [r0]
	mov r0, #1
	bx lr
_020CF734:
	mov r2, r1, asr #4
	and r3, r2, #0xf
	mov r2, #0x25
	strb r2, [r0]
	cmp r3, #0xa
	addlt r2, r3, #0x30
	addge r2, r3, #0x37
	and r1, r1, #0xf
	cmp r1, #0xa
	addlt r1, r1, #0x30
	addge r1, r1, #0x37
	strb r2, [r0, #1]
	strb r1, [r0, #2]
	mov r0, #3
	bx lr
	arm_func_end FUN_ov15_020cf6e4

	arm_func_start FUN_ov15_020cf770
FUN_ov15_020cf770: ; 0x020CF770
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, lr}
	cmp r1, #8
	mvngt r0, #0
	ldmgtfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
	bne _020CF794
	ldrsb r2, [r0]
	cmp r2, #0x37
	mvngt r0, #0
	ldmgtfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_020CF794:
	mov r8, #0
	mov r9, r8
	mov r7, r8
	cmp r1, #0
	ble _020CF854
	mov r6, #1
	mov r5, r8
	mov lr, r8
	mov r4, r6
	mov r3, r6
	mov r12, r6
_020CF7C0:
	ldrsb r11, [r0, r7]
	mov r2, r6
	mov r10, r4
	cmp r11, #0x41
	movlt r2, r5
	cmp r11, #0x5a
	movgt r10, lr
	tst r2, r10
	addne r11, r11, #0x20
	mov r2, r11, lsl #0x18
	mov r2, r2, asr #0x18
	cmp r2, #0x30
	blt _020CF808
	cmp r2, #0x39
	addle r2, r2, r8, lsl #4
	movle r9, r12
	suble r8, r2, #0x30
	ble _020CF848
_020CF808:
	cmp r2, #0x61
	blt _020CF824
	cmp r2, #0x66
	addle r2, r2, r8, lsl #4
	movle r9, r3
	suble r8, r2, #0x57
	ble _020CF848
_020CF824:
	cmp r9, #0
	beq _020CF838
	cmp r2, #0x20
	cmpne r2, #0
	beq _020CF854
_020CF838:
	cmp r9, #0
	cmpeq r2, #0x20
	mvnne r0, #0
	ldmnefd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_020CF848:
	add r7, r7, #1
	cmp r7, r1
	blt _020CF7C0
_020CF854:
	mov r0, r8
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
	arm_func_end FUN_ov15_020cf770

	arm_func_start FUN_ov15_020cf85c
FUN_ov15_020cf85c: ; 0x020CF85C
	stmfd sp!, {r3, r4, r5, lr}
	cmp r1, #0xa
	mvngt r0, #0
	ldmgtfd sp!, {r3, r4, r5, pc}
	mov r4, #0
	mov r3, r4
	mov lr, r4
	cmp r1, #0
	ble _020CF8F0
	mov r12, #1
	mov r2, #0xa
_020CF888:
	cmp r3, #0
	ldrsb r5, [r0, lr]
	beq _020CF8A0
	cmp r5, #0x20
	cmpne r5, #0
	beq _020CF8F0
_020CF8A0:
	cmp r3, #0
	bne _020CF8B0
	cmp r5, #0x20
	beq _020CF8E4
_020CF8B0:
	cmp r5, #0x30
	blt _020CF8C0
	cmp r5, #0x39
	ble _020CF8C8
_020CF8C0:
	mvn r0, #0
	ldmfd sp!, {r3, r4, r5, pc}
_020CF8C8:
	mla r3, r4, r2, r5
	mov r5, r4
	sub r4, r3, #0x30
	cmp r5, r4
	mov r3, r12
	mvngt r0, #0
	ldmgtfd sp!, {r3, r4, r5, pc}
_020CF8E4:
	add lr, lr, #1
	cmp lr, r1
	blt _020CF888
_020CF8F0:
	mov r0, r4
	ldmfd sp!, {r3, r4, r5, pc}
	arm_func_end FUN_ov15_020cf85c

	arm_func_start FUN_ov15_020cf8f8
FUN_ov15_020cf8f8: ; 0x020CF8F8
	stmfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, lr}
	sub sp, sp, #0x24
	ldr r6, _020CF9A0 ; =0x020E3ED0
	add r4, sp, #0
	mov r10, r0
	mov r9, r1
	ldmia r6!, {r0, r1, r2, r3}
	mov r5, r4
	stmia r4!, {r0, r1, r2, r3}
	ldmia r6!, {r0, r1, r2, r3}
	stmia r4!, {r0, r1, r2, r3}
	ldr r0, [r6]
	mov r7, #0
	str r0, [r4]
	mov r2, r7
	mov r6, r7
	mov r4, #0x30
	mov r11, #1
_020CF940:
	ldr r8, [r5, r6, lsl #2]
	cmp r9, r8
	blo _020CF974
	mov r0, r9
	mov r1, r8
	bl FUN_0201fbc8
	mul r1, r0, r8
	add r0, r0, #0x30
	strb r0, [r10, r7]
	mov r2, r11
	sub r9, r9, r1
	add r7, r7, #1
	b _020CF980
_020CF974:
	cmp r2, #0
	strneb r4, [r10, r7]
	addne r7, r7, #1
_020CF980:
	add r6, r6, #1
	cmp r6, #9
	blt _020CF940
	add r0, r9, #0x30
	strb r0, [r10, r7]
	add r0, r7, #1
	add sp, sp, #0x24
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
_020CF9A0: .word 0x020E3ED0
	arm_func_end FUN_ov15_020cf8f8

	arm_func_start FUN_ov15_020cf9a4
FUN_ov15_020cf9a4: ; 0x020CF9A4
	stmfd sp!, {r4, r5, r6, r7, r8, lr}
	mov r4, #1
	mov lr, #0
	mov r12, r4
	mov r3, r4
	mov r2, r4
	b _020CF9D8
_020CF9C0:
	cmp r5, #0
	cmpne r5, #0x20
	moveq r0, #0
	ldmeqfd sp!, {r4, r5, r6, r7, r8, pc}
	add r0, r0, #1
	add r1, r1, #1
_020CF9D8:
	ldrsb r7, [r1]
	mov r5, r4
	mov r6, r12
	cmp r7, #0x41
	movlt r5, lr
	cmp r7, #0x5a
	movgt r6, lr
	tst r5, r6
	ldrsb r5, [r0]
	addne r7, r7, #0x20
	mov r6, r3
	cmp r5, #0x41
	movlt r6, lr
	mov r8, r2
	cmp r5, #0x5a
	movgt r8, lr
	tst r6, r8
	addne r6, r5, #0x20
	moveq r6, r5
	cmp r6, r7
	beq _020CF9C0
	mvn r0, #0
	ldmfd sp!, {r4, r5, r6, r7, r8, pc}
	arm_func_end FUN_ov15_020cf9a4

	arm_func_start FUN_ov15_020cfa34
FUN_ov15_020cfa34: ; 0x020CFA34
	stmfd sp!, {r3, lr}
	mov r12, #0
	cmp r1, #0
	mov lr, r12
	sub r1, r1, #1
	beq _020CFA94
	mov r2, #0xa
_020CFA50:
	ldrsb r3, [r0]
	cmp r3, #0x20
	beq _020CFA84
	cmp r3, #0x30
	blt _020CFA84
	cmp r3, #0x39
	bgt _020CFA84
	mla r3, lr, r2, r3
	add r12, r12, #1
	cmp r12, #9
	sub lr, r3, #0x30
	mvngt r0, #0
	ldmgtfd sp!, {r3, pc}
_020CFA84:
	cmp r1, #0
	add r0, r0, #1
	sub r1, r1, #1
	bne _020CFA50
_020CFA94:
	cmp r12, #0
	mvneq lr, #0
	mov r0, lr
	ldmfd sp!, {r3, pc}
	arm_func_end FUN_ov15_020cfa34

	arm_func_start FUN_ov15_020cfaa4
FUN_ov15_020cfaa4: ; 0x020CFAA4
	stmfd sp!, {r4, r5, r6, r7, r8, lr}
	cmp r1, r3
	mvnlt r0, #0
	ldmltfd sp!, {r4, r5, r6, r7, r8, pc}
	sub r1, r1, r3
	add r8, r1, #1
	cmp r8, #0
	mov r4, #0
	ble _020CFB20
	ldrsb r7, [r2]
	mov lr, #1
_020CFAD0:
	ldrsb r1, [r0, r4]
	cmp r7, r1
	bne _020CFB14
	mov r5, lr
	cmp r3, #1
	add r6, r0, r4
	ble _020CFB08
_020CFAEC:
	ldrsb r12, [r6, r5]
	ldrsb r1, [r2, r5]
	cmp r12, r1
	bne _020CFB08
	add r5, r5, #1
	cmp r5, r3
	blt _020CFAEC
_020CFB08:
	cmp r5, r3
	moveq r0, #0
	ldmeqfd sp!, {r4, r5, r6, r7, r8, pc}
_020CFB14:
	add r4, r4, #1
	cmp r4, r8
	blt _020CFAD0
_020CFB20:
	mvn r0, #0
	ldmfd sp!, {r4, r5, r6, r7, r8, pc}
	arm_func_end FUN_ov15_020cfaa4

	arm_func_start FUN_ov15_020cfb28
FUN_ov15_020cfb28: ; 0x020CFB28
	stmfd sp!, {r3, r4, r5, lr}
	mov r4, #0
	mov r5, r0
	sub r2, r4, #1
	mov r1, r4
	str r4, [r5]
	str r4, [r5, #4]
	str r4, [r5, #8]
	str r2, [r5, #0xc]
	bl FUN_ov15_020cfbc8
	mov r0, r5
	mov r1, r4
	bl FUN_ov15_020cfbc0
	str r4, [r5, #0x18]
	str r4, [r5, #0x1c]
	str r4, [r5, #0x20]
	ldmfd sp!, {r3, r4, r5, pc}
	arm_func_end FUN_ov15_020cfb28

	arm_func_start FUN_ov15_020cfb6c
FUN_ov15_020cfb6c: ; 0x020CFB6C
	stmfd sp!, {r3, r4, r5, lr}
	mov r5, r0
	mov r4, r1
	bl FUN_ov15_020d3fd0
	ldr r2, [r0]
	cmp r2, #0
	moveq r0, #0
	ldmeqfd sp!, {r3, r4, r5, pc}
	mov r0, r5
	mov r1, r4
	blx r2
	ldmfd sp!, {r3, r4, r5, pc}
	arm_func_end FUN_ov15_020cfb6c

	arm_func_start FUN_ov15_020cfb9c
FUN_ov15_020cfb9c: ; 0x020CFB9C
	stmfd sp!, {r4, lr}
	mov r4, r0
	bl FUN_ov15_020d3fd0
	ldr r1, [r0, #4]
	cmp r1, #0
	ldmeqfd sp!, {r4, pc}
	mov r0, r4
	blx r1
	ldmfd sp!, {r4, pc}
	arm_func_end FUN_ov15_020cfb9c

	arm_func_start FUN_ov15_020cfbc0
FUN_ov15_020cfbc0: ; 0x020CFBC0
	str r1, [r0, #0x14]
	bx lr
	arm_func_end FUN_ov15_020cfbc0

	arm_func_start FUN_ov15_020cfbc8
FUN_ov15_020cfbc8: ; 0x020CFBC8
	str r1, [r0, #0x10]
	bx lr
	arm_func_end FUN_ov15_020cfbc8

	arm_func_start FUN_ov15_020cfbd0
FUN_ov15_020cfbd0: ; 0x020CFBD0
	ldr r0, [r0, #0x10]
	bx lr
	arm_func_end FUN_ov15_020cfbd0

	arm_func_start FUN_ov15_020cfbd8
FUN_ov15_020cfbd8: ; 0x020CFBD8
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, lr}
	mov r10, r0
	mov r9, r1
	mov r8, r2
	mov r7, r3
	bl FUN_ov15_020d4004
	mov r6, r0
	mov r0, r10
	bl FUN_ov15_020d4008
	mov r5, r0
	mov r0, r10
	bl FUN_ov15_020d4010
	mov r4, r0
	mov r0, r10
	bl FUN_ov15_020d4020
	mov r11, r0
	mov r0, r10
	bl FUN_ov15_020d4018
	str r9, [r6]
	str r8, [r6, #4]
	mov r8, r0
	mov r0, r5
	mov r5, #0
	str r5, [r6, #0x14]
	str r5, [r6, #0x10]
	str r5, [r6, #0x18]
	str r5, [r6, #0x24]
	bl FUN_ov15_020d0030
	mov r0, r4
	bl FUN_ov15_020d0704
	mov r0, r11
	bl FUN_ov15_020d406c
	bl FUN_ov15_020d4034
	sub r0, r5, #1
	str r0, [r6, #0xc]
	mov r0, #0x2000
	mov r1, #8
	bl FUN_ov15_020cfb6c
	str r0, [r6, #0x1c]
	movs r2, r0
	bne _020CFC94
	mov r0, r6
	mov r1, #1
	bl FUN_ov15_020cfbc0
	bl FUN_ov15_020d4090
	mov r0, r5
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_020CFC94:
	mov r0, r8
	mov r1, r7
	bl FUN_ov15_020cef78
	cmp r0, #0
	movne r0, #1
	strne r0, [r6, #8]
	ldmnefd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
	mov r0, r6
	mov r1, #9
	bl FUN_ov15_020cfbc0
	ldr r0, [r6, #0x1c]
	bl FUN_ov15_020cfb9c
	str r5, [r6, #0x1c]
	bl FUN_ov15_020d4090
	mov r0, r5
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
	arm_func_end FUN_ov15_020cfbd8

	arm_func_start FUN_ov15_020cfcd4
FUN_ov15_020cfcd4: ; 0x020CFCD4
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	mov r7, r0
	mov r6, r1
	bl FUN_ov15_020d4004
	mov r5, r0
	mov r0, r7
	bl FUN_ov15_020d4018
	mov r1, #1
	mov r4, r0
	bl FUN_ov15_020cf030
	mov r0, r7
	bl FUN_ov15_020d0df0
	mov r0, r4
	mov r1, r5
	bl FUN_ov15_020cefe8
	ldr r0, [r5, #0x1c]
	bl FUN_ov15_020cfb9c
	mov r4, #0
	str r4, [r5, #0x1c]
	bl FUN_ov15_020d4090
	str r4, [r5, #8]
	cmp r6, #0
	beq _020CFD34
	blx r6
_020CFD34:
	bl FUN_ov15_020d3d10
	ldr r2, [r5, #0xc]
	cmp r2, #0
	ldmltfd sp!, {r3, r4, r5, r6, r7, pc}
	mov r4, #0
	mov r0, r4
	mov r1, r4
	bl FUN_ov15_020cf110
	sub r0, r4, #1
	str r0, [r5, #0xc]
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
	arm_func_end FUN_ov15_020cfcd4

	arm_func_start FUN_ov15_020cfd60
FUN_ov15_020cfd60: ; 0x020CFD60
	stmfd sp!, {r4, r5, r6, r7, r8, r9, r10, lr}
	mov r9, r0
	ldr r10, [r9]
	mov r8, r1
	mov r7, r2
	mov r6, r3
	cmp r10, #0
	mov r4, #0
	beq _020CFDDC
	ldr r1, [r10, #8]
	mov r0, r7
	mov r5, r10
	bl FUN_ov15_020cf9a4
	cmp r0, #0
	beq _020CFDD8
	ldr r5, [r10, #4]
	ldr r0, [r9]
	cmp r5, r0
	beq _020CFDDC
_020CFDAC:
	ldr r1, [r5, #8]
	mov r0, r7
	bl FUN_ov15_020cf9a4
	cmp r0, #0
	moveq r4, #1
	beq _020CFDDC
	ldr r5, [r5, #4]
	ldr r0, [r9]
	cmp r5, r0
	bne _020CFDAC
	b _020CFDDC
_020CFDD8:
	mov r4, #1
_020CFDDC:
	cmp r4, #0
	strne r6, [r5, #0xc]
	bne _020CFE60
	mov r0, #0x18
	mov r1, #4
	bl FUN_ov15_020cfb6c
	cmp r0, #0
	bne _020CFE10
	mov r0, r8
	mov r1, #1
	bl FUN_ov15_020cfbc0
	mov r0, #0
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, pc}
_020CFE10:
	str r7, [r0, #8]
	str r6, [r0, #0xc]
	mov r1, #0
	str r1, [r0, #0x10]
	str r1, [r0, #0x14]
	ldr r1, [r9]
	cmp r1, #0
	streq r0, [r0, #4]
	streq r0, [r0]
	streq r0, [r9]
	beq _020CFE60
	ldr r1, [r1]
	str r1, [r0]
	ldr r1, [r9]
	str r1, [r0, #4]
	ldr r1, [r9]
	ldr r1, [r1]
	str r0, [r1, #4]
	ldr r1, [r9]
	str r0, [r1]
_020CFE60:
	mov r0, #1
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, pc}
	arm_func_end FUN_ov15_020cfd60

	arm_func_start FUN_ov15_020cfe68
FUN_ov15_020cfe68: ; 0x020CFE68
	add r0, r0, #1
	and r0, r0, #0xff
	cmp r0, #0x7b
	moveq r0, #0x30
	beq _020CFE90
	cmp r0, #0x5b
	moveq r0, #0x61
	beq _020CFE90
	cmp r0, #0x3a
	moveq r0, #0x41
_020CFE90:
	mov r0, r0, lsl #0x18
	mov r0, r0, asr #0x18
	bx lr
	arm_func_end FUN_ov15_020cfe68

	arm_func_start FUN_ov15_020cfe9c
FUN_ov15_020cfe9c: ; 0x020CFE9C
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, lr}
	mov r10, r0
	mov r9, r1
	mov r8, r2
	mov r0, r9
	mov r1, r8
	add r2, r10, #0x3a
	mov r3, #0x12
	bl FUN_ov15_020cfaa4
	cmp r0, #0
	movlt r0, #1
	ldmltfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
	mov r11, #0x13
	mov r4, #0x12
_020CFED4:
	ldr r0, _020CFF34 ; =0x020E3EF4
	add r6, r10, r11
	ldrsb r5, [r6, #0x38]
	ldrsb r7, [r0, r11]
_020CFEE4:
	and r0, r5, #0xff
	bl FUN_ov15_020cfe68
	mov r5, r0
	strb r5, [r6, #0x38]
	cmp r5, r7
	beq _020CFF20
	mov r0, r9
	mov r1, r8
	mov r3, r4
	add r2, r10, #0x3a
	bl FUN_ov15_020cfaa4
	cmp r0, #0
	bge _020CFEE4
	mov r0, #1
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_020CFF20:
	sub r11, r11, #1
	cmp r11, #2
	bge _020CFED4
	mov r0, #0
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_020CFF34: .word 0x020E3EF4
	arm_func_end FUN_ov15_020cfe9c

	arm_func_start FUN_ov15_020cff38
FUN_ov15_020cff38: ; 0x020CFF38
	ldr r3, [r0]
	cmp r3, #0
	beq _020CFF74
	ldr r2, [r3]
	cmp r3, r2
	moveq r1, #0
	streq r1, [r0]
	beq _020CFF74
	ldr r1, [r3, #4]
	str r1, [r2, #4]
	ldr r2, [r3]
	ldr r1, [r3, #4]
	str r2, [r1]
	ldr r1, [r3, #4]
	str r1, [r0]
_020CFF74:
	mov r0, r3
	bx lr
	arm_func_end FUN_ov15_020cff38

	arm_func_start FUN_ov15_020cff7c
FUN_ov15_020cff7c: ; 0x020CFF7C
	stmfd sp!, {r3, lr}
	ldr r12, [r0, #4]
	cmp r12, #0
	movne r0, #0
	ldmnefd sp!, {r3, pc}
	add r0, r0, #0x30
	bl FUN_ov15_020cfd60
	ldmfd sp!, {r3, pc}
	arm_func_end FUN_ov15_020cff7c

	arm_func_start FUN_ov15_020cff9c
FUN_ov15_020cff9c: ; 0x020CFF9C
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, lr}
	mov r9, r0
	ldr r0, [r9, #4]
	mov r4, #0
	cmp r0, #0
	mov r8, r1
	mov r7, r2
	mov r6, r3
	mov r5, r4
	movne r0, r4
	ldmnefd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
	ldr r0, [r9, #0x10]
	cmp r0, #0
	movne r0, r4
	ldmnefd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
	cmp r6, #0
	beq _020CFFEC
	mov r0, r6
	bl FUN_ov15_020cf52c
	mov r5, r0
_020CFFEC:
	mov r0, r9
	mov r1, r6
	mov r2, r5
	bl FUN_ov15_020cfe9c
	cmp r0, #0
	beq _020D0028
	mov r1, r8
	mov r2, r7
	mov r3, r6
	add r0, r9, #0x34
	bl FUN_ov15_020cfd60
	movs r4, r0
	ldrne r0, [r9, #0x34]
	ldrne r0, [r0]
	strne r5, [r0, #0x10]
_020D0028:
	mov r0, r4
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
	arm_func_end FUN_ov15_020cff9c

	arm_func_start FUN_ov15_020d0030
FUN_ov15_020d0030: ; 0x020D0030
	mov r1, #0
	str r1, [r0]
	str r1, [r0, #4]
	bx lr
	arm_func_end FUN_ov15_020d0030

	arm_func_start FUN_ov15_020d0040
FUN_ov15_020d0040: ; 0x020D0040
	stmfd sp!, {r4, r5, r6, lr}
	mov r6, r0
	mov r5, r1
	mov r0, #0x14
	mov r1, #4
	mvn r4, #0
	bl FUN_ov15_020cfb6c
	cmp r0, #0
	beq _020D00D0
	ldr r1, [r6]
	cmp r1, #0
	streq r0, [r0]
	streq r0, [r0, #4]
	streq r0, [r6]
	beq _020D00A0
	ldr r1, [r1]
	str r1, [r0]
	ldr r1, [r6]
	str r1, [r0, #4]
	ldr r1, [r6]
	ldr r1, [r1]
	str r0, [r1, #4]
	ldr r1, [r6]
	str r0, [r1]
_020D00A0:
	ldr r4, [r6, #4]
	ldr r2, [r6, #4]
	mvn r1, #0
	add r2, r2, #1
	str r2, [r6, #4]
	str r4, [r0, #8]
	str r5, [r0, #0xc]
	str r1, [r0, #0x10]
	ldr r0, [r6, #4]
	cmp r0, #0
	movlt r0, #0
	strlt r0, [r6, #4]
_020D00D0:
	mov r0, r4
	ldmfd sp!, {r4, r5, r6, pc}
	arm_func_end FUN_ov15_020d0040

	arm_func_start FUN_ov15_020d00d8
FUN_ov15_020d00d8: ; 0x020D00D8
	ldr r3, [r0]
	mov r0, #0
	cmp r3, #0
	bxeq lr
	ldr r2, [r3, #8]
	cmp r2, r1
	moveq r0, r3
	bxeq lr
	ldr r12, [r3, #4]
	cmp r12, r3
	bxeq lr
_020D0104:
	ldr r2, [r12, #8]
	cmp r2, r1
	moveq r0, r12
	bxeq lr
	ldr r12, [r12, #4]
	cmp r12, r3
	bne _020D0104
	bx lr
	arm_func_end FUN_ov15_020d00d8

	arm_func_start FUN_ov15_020d0124
FUN_ov15_020d0124: ; 0x020D0124
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	mov r5, r1
	mov r1, r2
	mov r6, r0
	mov r7, #0
	bl FUN_ov15_020d00d8
	movs r4, r0
	beq _020D01CC
	ldr r1, [r6]
	ldr r0, [r1]
	cmp r1, r0
	beq _020D017C
	ldmia r4, {r0, r1}
	str r1, [r0, #4]
	ldr r1, [r4]
	ldr r0, [r4, #4]
	str r1, [r0]
	ldr r0, [r6]
	cmp r0, r4
	ldreq r0, [r4, #4]
	streq r0, [r6]
	b _020D0180
_020D017C:
	str r7, [r6]
_020D0180:
	ldr r1, [r4, #0xc]
	mov r0, r5
	bl FUN_ov15_020d3ca8
	mov r6, r0
	ldr r1, [r4, #0xc]
	mov r0, r5
	bl FUN_ov15_020d0c78
	mov r0, r4
	bl FUN_ov15_020cfb9c
	cmp r6, #0
	beq _020D01C8
	mov r2, #8
	mov r0, r5
	mov r1, r6
	str r2, [r6, #4]
	bl FUN_ov15_020d3ee4
	mov r0, r6
	bl FUN_ov15_020d4278
_020D01C8:
	mov r7, #1
_020D01CC:
	mov r0, r7
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
	arm_func_end FUN_ov15_020d0124

	arm_func_start FUN_ov15_020d01d4
FUN_ov15_020d01d4: ; 0x020D01D4
	stmfd sp!, {r3, r4, r5, lr}
	mov r5, r0
	ldr r0, [r5]
	mov r4, r1
	cmp r0, #0
	ldmeqfd sp!, {r3, r4, r5, pc}
_020D01EC:
	ldr r2, [r0, #8]
	mov r0, r5
	mov r1, r4
	bl FUN_ov15_020d0124
	ldr r0, [r5]
	cmp r0, #0
	bne _020D01EC
	ldmfd sp!, {r3, r4, r5, pc}
	arm_func_end FUN_ov15_020d01d4

	arm_func_start FUN_ov15_020d020c
FUN_ov15_020d020c: ; 0x020D020C
	ldr r12, _020D0214 ; =FUN_ov15_020cff38
	bx r12
_020D0214: .word FUN_ov15_020cff38
	arm_func_end FUN_ov15_020d020c

	arm_func_start FUN_ov15_020d0218
FUN_ov15_020d0218: ; 0x020D0218
	stmfd sp!, {r3, lr}
	cmp r1, #0x400
	movlt r0, #0
	strlt r0, [r2]
	strlt r1, [r3]
	ldmltfd sp!, {r3, pc}
	sub r12, r1, #0x400
	movs r12, r12, asr #9
	sub lr, r12, #1
	ldr r12, [r0, #0x34]
	beq _020D0254
_020D0244:
	cmp lr, #0
	sub lr, lr, #1
	ldr r12, [r12]
	bne _020D0244
_020D0254:
	ldr r0, _020D026C ; =0x000001FF
	sub r1, r1, #0x400
	str r12, [r2]
	and r0, r1, r0
	str r0, [r3]
	ldmfd sp!, {r3, pc}
_020D026C: .word 0x000001FF
	arm_func_end FUN_ov15_020d0218

	arm_func_start FUN_ov15_020d0270
FUN_ov15_020d0270: ; 0x020D0270
	ldr r3, [r1]
	cmp r3, #0
	bne _020D02AC
	ldr r3, [r2]
	cmp r3, #0x400
	addlt r1, r3, #1
	addlt r0, r0, r3
	strlt r1, [r2]
	ldrltsb r0, [r0, #0x38]
	bxlt lr
	mov r3, #0
	ldr r0, [r0, #0x34]
	str r3, [r2]
	str r0, [r1]
	b _020D02C8
_020D02AC:
	ldr r0, [r2]
	cmp r0, #0x200
	moveq r0, #0
	streq r0, [r2]
	ldreq r0, [r1]
	ldreq r0, [r0]
	streq r0, [r1]
_020D02C8:
	ldr r3, [r2]
	add r0, r3, #1
	str r0, [r2]
	ldr r0, [r1]
	add r0, r0, r3
	ldrsb r0, [r0, #4]
	bx lr
	arm_func_end FUN_ov15_020d0270

	arm_func_start FUN_ov15_020d02e4
FUN_ov15_020d02e4: ; 0x020D02E4
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, lr}
	sub sp, sp, #8
	movs r8, r3
	mov r11, r0
	mvnne r0, #0
	mov r10, r1
	mov r9, r2
	strne r0, [r8]
	ldr r7, [sp, #0x30]
	cmp r10, r9
	bge _020D03F4
	mov r0, r11
	mov r1, r10
	add r2, sp, #4
	add r3, sp, #0
	mvn r6, #0
	mov r5, #0
	bl FUN_ov15_020d0218
	cmp r10, r9
	bge _020D03F4
	sub r4, r9, #1
_020D0338:
	mov r0, r11
	add r1, sp, #4
	add r2, sp, #0
	bl FUN_ov15_020d0270
	cmp r0, #0x3a
	bne _020D0360
	cmp r8, #0
	ldrne r1, [r8]
	cmpne r1, #0
	strlt r10, [r8]
_020D0360:
	cmp r5, #0
	beq _020D0398
	cmp r0, #0xa
	bne _020D038C
	sub r0, r9, #1
	mov r6, #0
	cmp r10, r0
	addne r6, r10, #1
	cmp r7, #0
	movne r0, #2
	strne r0, [r7]
_020D038C:
	add sp, sp, #8
	mov r0, r6
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_020D0398:
	cmp r0, #0xd
	bne _020D03BC
	mov r6, #0
	cmp r10, r4
	addne r6, r10, #1
	mov r5, #1
	cmp r7, #0
	movne r1, r5
	strne r1, [r7]
_020D03BC:
	cmp r0, #0xa
	bne _020D03E8
	sub r0, r9, #1
	cmp r10, r0
	moveq r0, #0
	addne r0, r10, #1
	cmp r7, #0
	movne r1, #1
	add sp, sp, #8
	strne r1, [r7]
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_020D03E8:
	add r10, r10, #1
	cmp r10, r9
	blt _020D0338
_020D03F4:
	mvn r0, #0
	add sp, sp, #8
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
	arm_func_end FUN_ov15_020d02e4

	arm_func_start FUN_ov15_020d0400
FUN_ov15_020d0400: ; 0x020D0400
	stmfd sp!, {r4, r5, r6, r7, r8, lr}
	sub sp, sp, #8
	mov r7, r1
	mov r6, r2
	mov r8, r0
	cmp r7, r6
	bge _020D0464
	add r5, sp, #4
	add r4, sp, #0
	mov r2, r5
	mov r3, r4
	bl FUN_ov15_020d0218
	cmp r7, r6
	bge _020D0464
_020D0438:
	mov r0, r8
	mov r1, r5
	mov r2, r4
	bl FUN_ov15_020d0270
	cmp r0, #0x20
	addne sp, sp, #8
	movne r0, r7
	ldmnefd sp!, {r4, r5, r6, r7, r8, pc}
	add r7, r7, #1
	cmp r7, r6
	blt _020D0438
_020D0464:
	mvn r0, #0
	add sp, sp, #8
	ldmfd sp!, {r4, r5, r6, r7, r8, pc}
	arm_func_end FUN_ov15_020d0400

	arm_func_start FUN_ov15_020d0470
FUN_ov15_020d0470: ; 0x020D0470
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, lr}
	sub sp, sp, #8
	mov r9, r1
	mov r4, r2
	mov r10, r0
	mov r8, r3
	cmp r9, r4
	ldr r7, [sp, #0x30]
	bge _020D0548
	add r2, sp, #4
	add r3, sp, #0
	bl FUN_ov15_020d0218
	mov r0, r10
	add r1, sp, #4
	add r2, sp, #0
	bl FUN_ov15_020d0270
	mov r5, #1
	sub r6, r4, #1
	mov r4, #0
	mov r11, r5
	b _020D04F8
_020D04C4:
	cmp r1, #0
	cmpne r1, #0x20
	cmpne r1, r7
	cmpne r9, r6
	addeq sp, sp, #8
	moveq r0, #0
	ldmeqfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
	mov r0, r10
	add r1, sp, #4
	add r2, sp, #0
	bl FUN_ov15_020d0270
	add r9, r9, #1
	add r8, r8, #1
_020D04F8:
	ldrsb r1, [r8]
	mov r2, r5
	mov r3, r11
	cmp r1, #0x41
	movlt r2, r4
	cmp r1, #0x5a
	movgt r3, #0
	tst r2, r3
	moveq r2, r1
	addne r2, r1, #0x20
	mov r3, #1
	cmp r0, #0x41
	movlt r3, #0
	mov r12, #1
	cmp r0, #0x5a
	movgt r12, #0
	tst r3, r12
	addne r0, r0, #0x20
	cmp r0, r2
	beq _020D04C4
_020D0548:
	mvn r0, #0
	add sp, sp, #8
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
	arm_func_end FUN_ov15_020d0470

	arm_func_start FUN_ov15_020d0554
FUN_ov15_020d0554: ; 0x020D0554
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, lr}
	mov r4, r0
	mov r7, r2
	mov r6, r3
	ldr r0, [r4]
	add r2, r7, r6
	mov r8, r1
	cmp r2, r0
	bgt _020D0634
	cmp r6, #0
	beq _020D062C
	cmp r7, #0x400
	bge _020D05B4
	rsb r5, r7, #0x400
	cmp r6, r5
	movle r5, r6
	add r1, r4, #0x38
	mov r0, r8
	mov r2, r5
	add r1, r1, r7
	bl FUN_ov15_020cf514
	add r7, r7, r5
	sub r6, r6, r5
	add r8, r8, r5
_020D05B4:
	cmp r6, #0
	beq _020D062C
	sub r2, r7, #0x400
	ldr r0, _020D063C ; =0x000001FF
	movs r1, r2, asr #9
	and r7, r2, r0
	sub r0, r1, #1
	ldr r4, [r4, #0x34]
	beq _020D05E8
_020D05D8:
	cmp r0, #0
	sub r0, r0, #1
	ldr r4, [r4]
	bne _020D05D8
_020D05E8:
	cmp r6, #0
	beq _020D062C
	ldr r9, _020D063C ; =0x000001FF
_020D05F4:
	rsb r5, r7, #0x200
	cmp r6, r5
	movle r5, r6
	add r1, r4, #4
	mov r0, r8
	mov r2, r5
	add r1, r1, r7
	bl FUN_ov15_020cf514
	add r0, r7, r5
	and r7, r0, r9
	subs r6, r6, r5
	add r8, r8, r5
	ldr r4, [r4]
	bne _020D05F4
_020D062C:
	mov r0, #1
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
_020D0634:
	mov r0, #0
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
_020D063C: .word 0x000001FF
	arm_func_end FUN_ov15_020d0554

	arm_func_start FUN_ov15_020d0640
FUN_ov15_020d0640: ; 0x020D0640
	ldr r0, [r0, #0x1c]
	cmp r0, r1
	movls r0, #1
	movhi r0, #0
	bx lr
	arm_func_end FUN_ov15_020d0640

	arm_func_start FUN_ov15_020d0654
FUN_ov15_020d0654: ; 0x020D0654
	stmfd sp!, {r4, lr}
	sub sp, sp, #8
	ldr r4, [r1, #0x2c]
	ldr r12, [sp, #0x10]
	ldr lr, [r4, #0x1c]
	sub lr, lr, r3
	str lr, [sp]
	str r12, [sp, #4]
	ldr r12, [r4, #0x28]
	add r3, r12, r3
	bl FUN_ov15_020cf3a8
	add sp, sp, #8
	ldmfd sp!, {r4, pc}
	arm_func_end FUN_ov15_020d0654

	arm_func_start FUN_ov15_020d0688
FUN_ov15_020d0688: ; 0x020D0688
	stmfd sp!, {r4, r5, r6, r7, r8, lr}
	sub sp, sp, #8
	mov r7, r1
	ldr r4, [r7, #0x2c]
	mov r5, r3
	mov r8, r0
	mov r0, r4
	mov r1, r5
	mov r6, r2
	bl FUN_ov15_020d0640
	cmp r0, #0
	addne sp, sp, #8
	ldrne r0, _020D0700 ; =0xFFFFFC15
	ldmnefd sp!, {r4, r5, r6, r7, r8, pc}
	ldr r1, [r4, #0x1c]
	ldr r0, [sp, #0x20]
	sub r1, r1, r5
	cmp r0, r1
	movle r1, r0
	str r1, [sp]
	ldr r0, [sp, #0x24]
	mov r1, r7
	str r0, [sp, #4]
	ldr r3, [r4, #0x28]
	mov r0, r8
	mov r2, r6
	add r3, r3, r5
	bl FUN_ov15_020cf3a8
	add sp, sp, #8
	ldmfd sp!, {r4, r5, r6, r7, r8, pc}
_020D0700: .word 0xFFFFFC15
	arm_func_end FUN_ov15_020d0688

	arm_func_start FUN_ov15_020d0704
FUN_ov15_020d0704: ; 0x020D0704
	mov r1, #0
	str r1, [r0]
	bx lr
	arm_func_end FUN_ov15_020d0704

	arm_func_start FUN_ov15_020d0710
FUN_ov15_020d0710: ; 0x020D0710
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, lr}
	sub sp, sp, #0x208
	mov r8, r1
	movs r1, r2
	cmpne r1, #1
	str r2, [sp, #4]
	str r0, [sp]
	mov r6, r3
	mov r4, #4
	mov r7, #0
	cmpne r1, #2
	beq _020D0748
	mov r1, #0xb
_020D0744:
	b _020D0768
_020D0748:
	mov r5, #0x258
	mov r0, r5
	mov r1, r4
	bl FUN_ov15_020cfb6c
	movs r7, r0
	bne _020D0770
_020D0760:
	ldr r0, [sp]
	mov r1, #1
_020D0768:
	bl FUN_ov15_020cfbc0
	b _020D0B9C
_020D0770:
	mov r1, r5
	bl FUN_ov15_020cf550
	rsb r9, r4, #0x440
	mov r0, r9
	mov r1, r4
	bl FUN_ov15_020cfb6c
	str r0, [r7, #0x2c]
	cmp r0, #0
	bne _020D0798
	b _020D0760
_020D0798:
	mov r1, r9
	bl FUN_ov15_020cf550
	ldr r0, [r7, #0x2c]
	ldr r2, [sp, #0x230]
	str r6, [r0, #0x28]
	ldr r0, [r7, #0x2c]
	ldr r1, [sp, #0x238]
	str r2, [r0, #0x1c]
	ldr r0, [r7, #0x2c]
	ldr r3, [sp, #0x23c]
	str r1, [r0, #0x2c]
	ldr r2, [r7, #0x2c]
	mov r0, r8
	sub r1, r5, #0x59
	str r3, [r2, #0x30]
	bl FUN_ov15_020cf538
	mov r5, r0
	cmp r5, #7
	bgt _020D07E8
	b _020D084C
_020D07E8:
	add r6, sp, #8
	mov r1, #0x200
	mov r0, r6
	bl FUN_ov15_020cf550
	mov r0, r6
	mov r1, r8
	mov r2, r5
	bl FUN_ov15_020cf514
	mov r8, #7
	mov r0, #0x50
	str r0, [r7, #0x20]
	ldr r1, _020D0BE8 ; =0x020E58BC
	mov r0, r6
	mov r2, r8
	bl FUN_ov15_020cf564
	cmp r0, #0
	beq _020D0864
	mov r8, #8
	ldr r1, _020D0BEC ; =0x020E58C4
	mov r0, r6
	mov r2, r8
	mov r6, #1
	bl FUN_ov15_020cf564
	cmp r0, #0
	beq _020D0858
_020D084C:
	ldr r0, [sp]
	mov r1, r4
	b _020D0744
_020D0858:
	str r6, [r7, #8]
	rsb r0, r6, #0x1bc
	str r0, [r7, #0x20]
_020D0864:
	add r0, sp, #8
	sub r4, r5, r8
	cmp r4, #0
	add r6, r0, r8
	bgt _020D0884
_020D0878:
	ldr r0, [sp]
	mov r1, #4
	b _020D0768
_020D0884:
	mov r5, #0
	mov r9, r5
	mov r10, r5
	mov r11, #2
	b _020D08F0
_020D0898:
	cmp r10, #2
	subeq r10, r10, #1
	beq _020D08EC
	cmp r10, #1
	bne _020D08E0
	sub r0, r5, #1
	mov r1, r11
	add r0, r6, r0
	bl FUN_ov15_020cf770
	mov r0, r0, lsl #0x18
	movs r0, r0, asr #0x18
	sub r10, r10, #1
	bpl _020D08D0
	b _020D0878
_020D08D0:
	cmp r0, #0x2f
	bne _020D08EC
	sub r9, r9, #1
	b _020D0904
_020D08E0:
	cmp r0, #0x25
	moveq r10, #2
	addeq r9, r9, #1
_020D08EC:
	add r5, r5, #1
_020D08F0:
	cmp r5, r4
	bge _020D0904
	ldrsb r0, [r6, r5]
	cmp r0, #0x2f
	bne _020D0898
_020D0904:
	cmp r10, #0
	mov r1, #4
	beq _020D0918
	ldr r0, [sp]
	b _020D0744
_020D0918:
	add r0, r8, r4
	sub r5, r0, r9, lsl #1
	add r0, r5, #1
	bl FUN_ov15_020cfb6c
	str r0, [r7, #0x24]
	cmp r0, #0
	bne _020D0938
	b _020D0760
_020D0938:
	add r1, r5, #1
	bl FUN_ov15_020cf550
	ldr r0, [r7, #0x24]
	add r1, sp, #8
	mov r2, r8
	bl FUN_ov15_020cf514
	mov r9, #0
	mov r5, r9
	mov r10, r9
	mov r11, r9
	cmp r4, #0
	ble _020D09E8
_020D0968:
	cmp r10, #2
	subeq r10, r10, #1
	beq _020D09DC
	cmp r10, #1
	bne _020D09B4
	sub r0, r9, #1
	add r0, r6, r0
	mov r1, #2
	bl FUN_ov15_020cf770
	mov r0, r0, lsl #0x18
	mov r1, r0, asr #0x18
	ldr r0, [r7, #0x24]
	cmp r1, #0x2f
	add r0, r8, r0
	add r0, r5, r0
	sub r10, r10, #1
	strb r1, [r0, #-1]
	moveq r11, #1
	b _020D09DC
_020D09B4:
	ldrsb r1, [r6, r9]
	cmp r1, #0x2f
	moveq r11, #1
	cmp r11, #0
	cmpeq r1, #0x25
	ldrne r0, [r7, #0x24]
	moveq r10, #2
	addne r0, r8, r0
	strneb r1, [r5, r0]
	add r5, r5, #1
_020D09DC:
	add r9, r9, #1
	cmp r9, r4
	blt _020D0968
_020D09E8:
	ldr r2, [r7, #0x24]
	mov r0, #0
	add r1, r8, r5
	strb r0, [r2, r1]
	ldr r1, [r7, #0x24]
	cmp r5, #0
	add r2, r1, r8
	mov r4, r0
	ble _020D0A30
_020D0A0C:
	ldrsb r1, [r2, r0]
	cmp r1, #0x2f
	cmpne r1, #0x3a
	addeq r1, r0, r8
	streq r1, [r7, #0x14]
	beq _020D0A30
	add r0, r0, #1
	cmp r0, r5
	blt _020D0A0C
_020D0A30:
	cmp r0, r5
	addeq r0, r0, r8
	streq r0, [r7, #0x14]
	streq r0, [r7, #0x18]
	beq _020D0ADC
	ldrsb r1, [r2, r0]
	cmp r1, #0x2f
	ldreq r0, [r7, #0x14]
	streq r0, [r7, #0x18]
	beq _020D0ADC
	cmp r1, #0x3a
	bne _020D0ADC
	cmp r0, r5
	bge _020D0A88
_020D0A68:
	ldrsb r1, [r2, r0]
	cmp r1, #0x2f
	addeq r1, r0, r8
	streq r1, [r7, #0x18]
	beq _020D0A88
	add r0, r0, #1
	cmp r0, r5
	blt _020D0A68
_020D0A88:
	cmp r0, r5
	addeq r0, r0, r8
	streq r0, [r7, #0x18]
	beq _020D0ADC
	ldr r1, [r7, #0x14]
	ldr r0, [r7, #0x24]
	add r2, r1, #1
	ldr r1, [r7, #0x18]
	add r0, r0, r2
	sub r1, r1, r2
	bl FUN_ov15_020cfa34
	cmp r0, #0
	ldrlt r0, [r7, #0x20]
	blt _020D0AD0
	ldr r1, _020D0BF0 ; =0x0000FFFF
	cmp r0, r1
	ble _020D0AD0
	b _020D0878
_020D0AD0:
	mov r0, r0, lsl #0x10
	mov r0, r0, lsr #0x10
	str r0, [r7, #0x20]
_020D0ADC:
	ldr r0, [r7, #8]
	mov r2, #8
	cmp r0, #0
	ldr r0, [r7, #0x14]
	moveq r2, #7
	sub r5, r0, r2
	mov r1, #4
	add r0, r5, #1
	bl FUN_ov15_020cfb6c
	str r0, [r7, #0x28]
	cmp r0, #0
	bne _020D0B10
	b _020D0760
_020D0B10:
	add r1, r5, #1
	bl FUN_ov15_020cf550
	ldr r0, [r7, #8]
	mov r3, #8
	cmp r0, #0
	ldr r1, [r7, #0x24]
	moveq r3, #7
	ldr r0, [r7, #0x28]
	mov r2, r5
	add r1, r1, r3
	bl FUN_ov15_020cf514
	ldr r1, _020D0BF4 ; =0x020E3EF4
	add r0, r7, #0x38
	mov r2, #0x14
	bl FUN_ov15_020cf514
	ldr r0, [sp, #4]
	ldr r2, [sp, #0x234]
	str r0, [r7, #0x1c]
	str r4, [r7, #0xac]
	str r4, [r7, #0xb0]
	str r4, [r7, #0xb4]
	str r4, [r7, #0xb8]
	str r4, [r7, #0xbc]
	str r4, [r7, #0xc0]
	str r4, [r7, #0xc4]
	str r4, [r7, #0xcc]
	str r4, [r7, #0xd0]
	str r4, [r7, #0xd8]
	ldr r1, [r7, #0x2c]
	add sp, sp, #0x208
	str r2, [r1, #0x438]
	str r4, [r7, #0xc]
	mov r0, r7
	str r4, [r7, #0x248]
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_020D0B9C:
	cmp r7, #0
	beq _020D0BDC
	ldr r0, [r7, #0x24]
	cmp r0, #0
	beq _020D0BB4
	bl FUN_ov15_020cfb9c
_020D0BB4:
	ldr r0, [r7, #0x28]
	cmp r0, #0
	beq _020D0BC4
	bl FUN_ov15_020cfb9c
_020D0BC4:
	ldr r0, [r7, #0x2c]
	cmp r0, #0
	beq _020D0BD4
	bl FUN_ov15_020cfb9c
_020D0BD4:
	mov r0, r7
	bl FUN_ov15_020cfb9c
_020D0BDC:
	mov r0, #0
	add sp, sp, #0x208
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_020D0BE8: .word ov15_020E58BC
_020D0BEC: .word ov15_020E58C4
_020D0BF0: .word 0x0000FFFF
_020D0BF4: .word 0x020E3EF4
	arm_func_end FUN_ov15_020d0710

	arm_func_start FUN_ov15_020d0bf8
FUN_ov15_020d0bf8: ; 0x020D0BF8
	stmfd sp!, {r3, r4, r5, lr}
	mov r5, r1
	bl FUN_ov15_020d4020
	mov r1, r5
	mov r4, r0
	bl FUN_ov15_020d3ca8
	cmp r0, #0
	movne r1, #0
	strne r1, [r0, #0x14]
	ldr r0, [r5, #0x2c]
	bl FUN_ov15_020cfb9c
	mov r0, r4
	mov r1, r5
	bl FUN_ov15_020d0c78
	ldmfd sp!, {r3, r4, r5, pc}
	arm_func_end FUN_ov15_020d0bf8

	arm_func_start FUN_ov15_020d0c34
FUN_ov15_020d0c34: ; 0x020D0C34
	stmfd sp!, {r4, r5, r6, lr}
	movs r6, r0
	ldmeqfd sp!, {r4, r5, r6, pc}
	mov r4, #0
_020D0C44:
	ldr r0, [r6]
	cmp r6, r0
	beq _020D0C60
	ldr r5, [r0]
	bl FUN_ov15_020cfb9c
	str r5, [r6]
	b _020D0C6C
_020D0C60:
	mov r0, r6
	bl FUN_ov15_020cfb9c
	mov r6, r4
_020D0C6C:
	cmp r6, #0
	bne _020D0C44
	ldmfd sp!, {r4, r5, r6, pc}
	arm_func_end FUN_ov15_020d0c34

	arm_func_start FUN_ov15_020d0c78
FUN_ov15_020d0c78: ; 0x020D0C78
	stmfd sp!, {r4, lr}
	mov r4, r1
	bl FUN_ov15_020d3ca8
	cmp r0, #0
	movne r1, #0
	strne r1, [r0, #0x10]
	ldr r0, [r4, #0x30]
	bl FUN_ov15_020d0c34
	ldr r0, [r4, #0x34]
	bl FUN_ov15_020d0c34
	ldr r0, [r4, #0x24]
	bl FUN_ov15_020cfb9c
	ldr r0, [r4, #0x28]
	bl FUN_ov15_020cfb9c
	mov r0, r4
	bl FUN_ov15_020cfb9c
	mov r0, #1
	ldmfd sp!, {r4, pc}
	arm_func_end FUN_ov15_020d0c78

	arm_func_start FUN_ov15_020d0cc0
FUN_ov15_020d0cc0: ; 0x020D0CC0
	stmfd sp!, {r4, r5, r6, r7, r8, lr}
	mov r7, r0
	mov r8, r1
	bl FUN_ov15_020d4004
	mov r5, r0
	mov r0, r7
	bl FUN_ov15_020d4018
	mov r4, r0
	mov r0, r7
	bl FUN_ov15_020d4020
	ldr r1, [r8, #4]
	mov r6, r0
	cmp r1, #0
	beq _020D0D10
	mov r4, #0xb
	mov r0, r5
	mov r1, r4
	bl FUN_ov15_020cfbc0
	sub r0, r4, #0xc
	ldmfd sp!, {r4, r5, r6, r7, r8, pc}
_020D0D10:
	bl FUN_ov15_020d4094
	mov r0, r7
	bl FUN_ov15_020d4008
	mov r1, r8
	bl FUN_ov15_020d0040
	movs r7, r0
	mov r1, #1
	bmi _020D0D40
	mov r0, r4
	str r1, [r8, #4]
	bl FUN_ov15_020cf01c
	b _020D0D48
_020D0D40:
	mov r0, r5
	bl FUN_ov15_020cfbc0
_020D0D48:
	mov r0, r6
	bl FUN_ov15_020d40a0
	mov r0, r7
	ldmfd sp!, {r4, r5, r6, r7, r8, pc}
	arm_func_end FUN_ov15_020d0cc0

	arm_func_start FUN_ov15_020d0d58
FUN_ov15_020d0d58: ; 0x020D0D58
	stmfd sp!, {r4, r5, r6, r7, r8, lr}
	mov r8, r0
	mov r7, r1
	mov r4, #0
	bl FUN_ov15_020d4010
	mov r5, r0
	mov r0, r8
	bl FUN_ov15_020d4020
	ldr r6, [r5]
	mov r5, r0
	bl FUN_ov15_020d4094
	cmp r6, #0
	beq _020D0DC0
	ldr r0, [r6, #8]
	cmp r0, r7
	ldreq r0, [r6, #0xc]
	ldreq r0, [r0]
	cmpeq r0, #0
	bne _020D0DC0
	ldr r0, [r6, #0xc]
	mov r4, #1
	str r4, [r0]
	ldr r1, [r6, #0xc]
	ldr r2, [r6, #0x10]
	mov r0, r5
	bl FUN_ov15_020cf47c
_020D0DC0:
	cmp r4, #0
	bne _020D0DE0
	mov r0, r8
	bl FUN_ov15_020d4008
	mov r1, r5
	mov r2, r7
	bl FUN_ov15_020d0124
	mov r4, r0
_020D0DE0:
	mov r0, r5
	bl FUN_ov15_020d40a0
	mov r0, r4
	ldmfd sp!, {r4, r5, r6, r7, r8, pc}
	arm_func_end FUN_ov15_020d0d58

	arm_func_start FUN_ov15_020d0df0
FUN_ov15_020d0df0: ; 0x020D0DF0
	stmfd sp!, {r4, r5, r6, lr}
	mov r6, r0
	bl FUN_ov15_020d4010
	mov r4, r0
	mov r0, r6
	bl FUN_ov15_020d4008
	mov r5, r0
	mov r0, r6
	bl FUN_ov15_020d4020
	ldr r6, [r4]
	mov r4, r0
	bl FUN_ov15_020d4094
	cmp r6, #0
	beq _020D0E54
	ldr r0, [r6, #0xc]
	ldr r0, [r0]
	cmp r0, #0
	bne _020D0E54
	ldr r0, [r6, #0xc]
	mov r1, #1
	str r1, [r0]
	ldr r1, [r6, #0xc]
	ldr r2, [r6, #0x10]
	mov r0, r4
	bl FUN_ov15_020cf47c
_020D0E54:
	mov r0, r5
	mov r1, r4
	bl FUN_ov15_020d01d4
	mov r0, r4
	bl FUN_ov15_020d40a0
	ldmfd sp!, {r4, r5, r6, pc}
	arm_func_end FUN_ov15_020d0df0

	arm_func_start FUN_ov15_020d0e6c
FUN_ov15_020d0e6c: ; 0x020D0E6C
	stmfd sp!, {r4, r5, r6, lr}
	mov r5, r1
	mov r6, r0
	ldr r0, [r5, #0x34]
	cmp r0, #0
	beq _020D0E9C
_020D0E84:
	ldr r4, [r0]
	bl FUN_ov15_020cfb9c
	mov r0, r4
	str r4, [r5, #0x34]
	cmp r4, #0
	bne _020D0E84
_020D0E9C:
	ldr r0, [r5, #0x20]
	cmp r0, #0
	beq _020D0EAC
	bl FUN_ov15_020cfb9c
_020D0EAC:
	ldr r0, [r5, #0x24]
	cmp r0, #0
	beq _020D0EBC
	bl FUN_ov15_020cfb9c
_020D0EBC:
	ldr r3, [r5, #0x30]
	cmp r3, #0
	beq _020D0EE4
	ldr r0, [r5, #0x28]
	ldr r2, [r5, #0x438]
	ldr r1, _020D0F08 ; =FUN_ov15_020cfb9c
	blx r3
	mov r0, #0
	str r0, [r5, #0x28]
	str r0, [r5, #0x1c]
_020D0EE4:
	mov r0, r6
	mov r1, r5
	bl FUN_ov15_020d3cb8
	cmp r0, #0
	movne r1, #0
	strne r1, [r0, #0x14]
	mov r0, r5
	bl FUN_ov15_020cfb9c
	ldmfd sp!, {r4, r5, r6, pc}
_020D0F08: .word FUN_ov15_020cfb9c
	arm_func_end FUN_ov15_020d0e6c

	arm_func_start FUN_ov15_020d0f0c
FUN_ov15_020d0f0c: ; 0x020D0F0C
	stmfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, lr}
	sub sp, sp, #0xc
	mov r10, r0
	mov r3, #0
	mov r11, r2
	mov r9, r1
	add r5, sp, #8
	str r3, [sp, #4]
	add r6, sp, #4
	ldr r2, [r10]
	mov r3, r5
	mov r1, #0xc
	str r6, [sp]
	bl FUN_ov15_020d02e4
	mov r7, r0
	cmp r7, #0
	ble _020D1028
	mov r4, #0
_020D0F54:
	ldr r2, [r10]
	mov r0, r10
	mov r1, r7
	mov r3, r5
	str r6, [sp]
	bl FUN_ov15_020d02e4
	ldr r2, [sp, #8]
	mov r8, r0
	cmp r2, #0
	ble _020D101C
	mov r0, r10
	mov r1, r7
	mov r3, r9
	str r4, [sp]
	bl FUN_ov15_020d0470
	cmp r0, #0
	bne _020D101C
	ldr r1, [sp, #8]
	ldr r0, [r10]
	add r1, r1, #1
	cmp r1, r0
	bge _020D1010
	ldr r2, [r10]
	mov r0, r10
	mov r3, r4
	str r6, [sp]
	bl FUN_ov15_020d02e4
	cmp r0, #0
	ldrle r4, [r10]
	ble _020D0FE4
	ldr r1, [sp, #4]
	cmp r0, r1
	addlt sp, sp, #0xc
	mvnlt r0, #0
	ldmltfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
	sub r4, r0, r1
_020D0FE4:
	ldr r1, [sp, #8]
	mov r0, r10
	mov r2, r4
	add r1, r1, #1
	bl FUN_ov15_020d0400
	cmp r0, #0
	movlt r0, r4
	str r0, [r11]
	add sp, sp, #0xc
	sub r0, r4, r0
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
_020D1010:
	add sp, sp, #0xc
	mov r0, r4
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
_020D101C:
	mov r7, r8
	cmp r8, #0
	bgt _020D0F54
_020D1028:
	mvn r0, #0
	add sp, sp, #0xc
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
	arm_func_end FUN_ov15_020d0f0c

	arm_func_start FUN_ov15_020d1034
FUN_ov15_020d1034: ; 0x020D1034
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	mov r5, r0
	ldr r0, [r5, #0x14]
	mov r6, r1
	cmp r0, #0
	mov r4, r2
	mvneq r0, #0
	ldmeqfd sp!, {r3, r4, r5, r6, r7, pc}
	ldr r0, [r5, #0x24]
	cmp r0, #0
	beq _020D106C
	bl FUN_ov15_020cfb9c
	mov r0, #0
	str r0, [r5, #0x24]
_020D106C:
	add r2, sp, #0
	mov r0, r5
	mov r1, r6
	bl FUN_ov15_020d0f0c
	movs r7, r0
	bmi _020D10D0
	mov r6, #4
	mov r1, r6
	add r0, r7, #1
	bl FUN_ov15_020cfb6c
	str r0, [r5, #0x24]
	cmp r0, #0
	subeq r0, r6, #5
	ldmeqfd sp!, {r3, r4, r5, r6, r7, pc}
	mov r1, #0
	strb r1, [r0, r7]
	ldr r1, [r5, #0x24]
	ldr r2, [sp]
	mov r0, r5
	mov r3, r7
	bl FUN_ov15_020d0554
	ldr r1, [r5, #0x24]
	mov r0, r7
	str r1, [r4]
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_020D10D0:
	ldr r0, _020D113C ; =0x020E58D0
	mov r1, r6
	bl FUN_ov15_020cf544
	cmp r0, #0
	bne _020D1134
	mov r6, #4
	mov r0, r6
	mov r1, r6
	bl FUN_ov15_020cfb6c
	str r0, [r5, #0x24]
	cmp r0, #0
	subeq r0, r6, #5
	ldmeqfd sp!, {r3, r4, r5, r6, r7, pc}
	mov r1, #0
	strb r1, [r0, #3]
	mov r6, #3
	ldr r1, [r5, #0x24]
	mov r0, r5
	mov r3, r6
	mov r2, #9
	bl FUN_ov15_020d0554
	ldr r1, [r5, #0x24]
	mov r0, r6
	str r1, [r4]
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_020D1134:
	mvn r0, #0
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_020D113C: .word ov15_020E58D0
	arm_func_end FUN_ov15_020d1034

	arm_func_start FUN_ov15_020d1140
FUN_ov15_020d1140: ; 0x020D1140
	ldr r12, _020D1148 ; =FUN_ov15_020d1158
	bx r12
_020D1148: .word FUN_ov15_020d1158
	arm_func_end FUN_ov15_020d1140

	arm_func_start FUN_ov15_020d114c
FUN_ov15_020d114c: ; 0x020D114C
	mov r1, #1
	str r1, [r0, #0xec]
	bx lr
	arm_func_end FUN_ov15_020d114c

	arm_func_start FUN_ov15_020d1158
FUN_ov15_020d1158: ; 0x020D1158
	mov r1, #0
	str r1, [r0, #0xec]
	bx lr
	arm_func_end FUN_ov15_020d1158

	arm_func_start FUN_ov15_020d1164
FUN_ov15_020d1164: ; 0x020D1164
	ldr r0, [r0, #0xec]
	bx lr
	arm_func_end FUN_ov15_020d1164

	arm_func_start FUN_ov15_020d116c
FUN_ov15_020d116c: ; 0x020D116C
	sub r2, r1, #2
	and r2, r2, #3
	ldrsb r2, [r0, r2]
	cmp r2, #0xd
	subeq r3, r1, #1
	andeq r3, r3, #3
	ldreqsb r3, [r0, r3]
	cmpeq r3, #0xd
	moveq r0, #1
	bxeq lr
	cmp r2, #0xa
	subeq r3, r1, #1
	andeq r3, r3, #3
	ldreqsb r3, [r0, r3]
	cmpeq r3, #0xa
	moveq r0, #1
	bxeq lr
	sub r3, r1, #4
	and r3, r3, #3
	ldrsb r3, [r0, r3]
	cmp r3, #0xd
	subeq r3, r1, #3
	andeq r3, r3, #3
	ldreqsb r3, [r0, r3]
	cmpeq r3, #0xa
	cmpeq r2, #0xd
	subeq r1, r1, #1
	andeq r1, r1, #3
	ldreqsb r0, [r0, r1]
	cmpeq r0, #0xa
	moveq r0, #1
	movne r0, #0
	bx lr
	arm_func_end FUN_ov15_020d116c

	arm_func_start FUN_ov15_020d11f0
FUN_ov15_020d11f0: ; 0x020D11F0
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, lr}
	sub sp, sp, #8
	ldr r4, [sp, #0x34]
	mov r10, r0
	mov r0, r4
	str r4, [sp, #4]
	mov r9, r1
	mov r8, r2
	mov r7, r3
	cmp r0, #0
	ldr r6, [sp, #0x30]
	ble _020D12AC
	mov r11, #0
_020D1224:
	ldr r0, [r10]
	cmp r0, #0
	addne sp, sp, #8
	mvnne r0, #0
	ldmnefd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
	ldr r0, [r7]
	mov r1, r6
	rsb r5, r0, #0x4000
	cmp r4, r5
	movle r5, r4
	mov r2, r5
	add r0, r9, r0
	bl FUN_ov15_020cf514
	ldr r0, [r7]
	add r6, r6, r5
	add r0, r0, r5
	str r0, [r7]
	cmp r0, #0x4000
	sub r4, r4, r5
	bne _020D12A4
	mov r0, r10
	mov r1, r8
	mov r2, r9
	mov r3, #0x4000
	str r11, [sp]
	bl FUN_ov15_020cf434
	cmp r0, #0
	addle sp, sp, #8
	ldmlefd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
	ldr r1, [r7]
	sub r0, r1, r0
	str r0, [r7]
_020D12A4:
	cmp r4, #0
	bgt _020D1224
_020D12AC:
	ldr r0, [sp, #4]
	add sp, sp, #8
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
	arm_func_end FUN_ov15_020d11f0

	arm_func_start FUN_ov15_020d12b8
FUN_ov15_020d12b8: ; 0x020D12B8
	stmfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, lr}
	sub sp, sp, #0xc
	mov r7, #0
	mov r10, r0
	mov r9, r1
	mov r8, r2
	mov r6, r7
	strb r7, [sp, #8]
	strb r7, [sp, #9]
	mov r5, #1
	mov r11, r7
	add r4, sp, #8
	b _020D1318
_020D12EC:
	mov r0, r10
	mov r1, r9
	mov r2, r8
	add r3, r4, r3
	stmia sp, {r5, r11}
	bl FUN_ov15_020cf3a8
	cmp r0, #0
	addle sp, sp, #0xc
	ldmlefd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
	add r7, r7, r0
	add r6, r6, #1
_020D1318:
	and r3, r6, #1
	ldrsb r0, [r4, r3]
	cmp r0, #0xd
	subeq r0, r6, #1
	andeq r0, r0, #1
	ldreqsb r0, [r4, r0]
	cmpeq r0, #0xa
	bne _020D12EC
	mov r0, r7
	add sp, sp, #0xc
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
	arm_func_end FUN_ov15_020d12b8

	arm_func_start FUN_ov15_020d1344
FUN_ov15_020d1344: ; 0x020D1344
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, lr}
	ldr r6, [sp, #0x28]
	mov r10, r0
	mov r9, r1
	mov r8, r2
	mov r7, r3
	mov r4, #0
	bl FUN_ov15_020d3ca8
	movs r5, r0
	moveq r0, r4
	ldmeqfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
	str r4, [r5, #0x24]
	mov r11, r4
_020D1378:
	ldr r0, [r9]
	cmp r0, #0
	movne r0, #0
	ldmnefd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
	mov r0, r10
	mov r1, r5
	mov r2, r8
	mov r3, r4
	str r11, [r5, #0x28]
	bl FUN_ov15_020d3d3c
	cmp r0, #0
	movlt r0, r11
	ldmltfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
	ldr r1, [r5, #0x28]
	ldr r0, [r5, #0x24]
	cmp r1, #0
	beq _020D1404
	cmp r0, #0
	moveq r0, r11
	ldmeqfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
	cmp r6, #0
	add r4, r4, r1
	cmpne r6, #1
	beq _020D13E4
	cmp r6, #2
	beq _020D13F0
	b _020D1378
_020D13E4:
	ldr r0, [r7]
	add r0, r0, r1
	b _020D13FC
_020D13F0:
	bl FUN_ov15_020cf670
	ldr r1, [r7]
	add r0, r1, r0
_020D13FC:
	str r0, [r7]
	b _020D1378
_020D1404:
	mov r0, #1
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
	arm_func_end FUN_ov15_020d1344

	arm_func_start FUN_ov15_020d140c
FUN_ov15_020d140c: ; 0x020D140C
	stmfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, lr}
	sub sp, sp, #0x1c
	mov r11, r2
	ldr r2, [sp, #0x48]
	ldr r9, [sp, #0x40]
	str r2, [sp, #0x48]
	mov r2, #0
	ldr r8, [sp, #0x44]
	str r0, [sp, #8]
	mov r10, r1
	str r3, [sp, #0xc]
	str r2, [sp, #0x14]
	bl FUN_ov15_020d3ca8
	str r0, [sp, #0x10]
	cmp r0, #0
	addeq sp, sp, #0x1c
	moveq r0, #3
	ldmeqfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
	ldr r1, [sp, #0x14]
	add r4, sp, #0x18
	str r1, [r0, #0x24]
_020D1460:
	ldr r0, [r10]
	cmp r0, #0
	addne sp, sp, #0x1c
	movne r0, #3
	ldmnefd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
	ldr r1, [sp, #0x10]
	mov r3, #0
	mov r2, r1
	str r3, [r2, #0x28]
	ldr r0, [sp, #8]
	ldr r2, [sp, #0xc]
	ldr r3, [sp, #0x14]
	bl FUN_ov15_020d3d3c
	cmp r0, #0
	addlt sp, sp, #0x1c
	movlt r0, #3
	ldmltfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
	ldr r0, [sp, #0x10]
	ldr r5, [r0, #0x28]
	ldr r6, [r0, #0x24]
	cmp r5, #0
	beq _020D159C
	cmp r6, #0
	addeq sp, sp, #0x1c
	moveq r0, #3
	ldmeqfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
	ldr r0, [sp, #0x48]
	cmp r0, #0
	ldr r0, [sp, #0x14]
	add r0, r0, r5
	str r0, [sp, #0x14]
	ldrne r0, [sp, #0x48]
	cmpne r0, #1
	beq _020D14F4
	cmp r0, #2
	beq _020D1530
	b _020D1460
_020D14F4:
	str r6, [sp]
	mov r0, r10
	mov r1, r11
	mov r2, r9
	mov r3, r8
	str r5, [sp, #4]
	bl FUN_ov15_020d11f0
	cmp r0, #0
	addlt sp, sp, #0x1c
	movlt r0, #1
	ldmltfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
	bne _020D1460
	add sp, sp, #0x1c
	mov r0, #2
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
_020D1530:
	cmp r5, #0
	mov r7, #0
	bls _020D1460
_020D153C:
	mov r0, r4
	mov r1, #3
	bl FUN_ov15_020cf550
	ldrsb r1, [r6, r7]
	mov r0, r4
	bl FUN_ov15_020cf6e4
	str r4, [sp]
	str r0, [sp, #4]
	mov r0, r10
	mov r1, r11
	mov r2, r9
	mov r3, r8
	bl FUN_ov15_020d11f0
	cmp r0, #0
	addlt sp, sp, #0x1c
	movlt r0, #1
	ldmltfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
	addeq sp, sp, #0x1c
	moveq r0, #2
	ldmeqfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
	add r7, r7, #1
	cmp r7, r5
	blo _020D153C
	b _020D1460
_020D159C:
	mov r0, #0
	add sp, sp, #0x1c
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
	arm_func_end FUN_ov15_020d140c

	arm_func_start FUN_ov15_020d15a8
FUN_ov15_020d15a8: ; 0x020D15A8
	stmfd sp!, {r4, r5, r6, lr}
	mov r5, r1
	ldr r1, [r5, #4]
	mov r6, r0
	mov r0, r5
	mov r4, #0
	bl FUN_ov15_020d0640
	ldr r1, [r5, #0x1c]
	cmp r1, #0
	ldrne r1, [r5, #0x28]
	cmpne r1, #0
	beq _020D15E0
	cmp r0, #0
	beq _020D1624
_020D15E0:
	mov r0, r6
	mov r1, r5
	bl FUN_ov15_020d3cb8
	movs r1, r0
	beq _020D1628
	mov r0, r6
	bl FUN_ov15_020d3dcc
	ldr r0, [r5, #0x28]
	cmp r0, #0
	ldrne r0, [r5, #0x1c]
	cmpne r0, #0
	beq _020D1628
	ldr r1, [r5, #4]
	mov r0, r5
	bl FUN_ov15_020d0640
	cmp r0, #0
	b _020D1624
_020D1624:
	moveq r4, #1
_020D1628:
	mov r0, r4
	ldmfd sp!, {r4, r5, r6, pc}
	arm_func_end FUN_ov15_020d15a8

	arm_func_start FUN_ov15_020d1630
FUN_ov15_020d1630: ; 0x020D1630
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, lr}
	sub sp, sp, #8
	mov r9, r0
	mov r8, r1
	mov r7, r2
	bl FUN_ov15_020d3fd0
	mov r6, r0
	bl FUN_ov15_020d4004
	mov r5, r0
	mov r0, r6
	bl FUN_ov15_020d4018
	mov r4, r0
	mov r0, r6
	bl FUN_ov15_020d4010
	ldr r0, [r0]
	cmp r7, #0
	ldr r0, [r0, #0xc]
	addeq sp, sp, #8
	moveq r0, #0
	ldmeqfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
	str r8, [sp]
	str r7, [sp, #4]
	ldr r2, [r5, #0xc]
	add r1, r4, #0x100
	add r3, r9, #0x324
	bl FUN_ov15_020d11f0
	cmp r0, #0
	addlt sp, sp, #8
	movlt r0, #1
	ldmltfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
	moveq r0, #2
	movne r0, #0
	add sp, sp, #8
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
	arm_func_end FUN_ov15_020d1630

	arm_func_start FUN_ov15_020d16b8
FUN_ov15_020d16b8: ; 0x020D16B8
	stmfd sp!, {r3, r4, r5, lr}
	mov r5, r0
	bl FUN_ov15_020d3fd0
	bl FUN_ov15_020d4010
	ldr r0, [r0]
	ldr r4, [r0, #0xc]
	ldr r0, [r4, #0x244]
	cmp r0, #0
	moveq r0, #0
	ldmeqfd sp!, {r3, r4, r5, pc}
	ldr r1, _020D172C ; =0x020E58E0
	mov r0, r5
	mov r2, #0x1b
	bl FUN_ov15_020d1630
	cmp r0, #0
	ldmnefd sp!, {r3, r4, r5, pc}
	ldr r2, [r4, #0x244]
	mov r0, r5
	add r1, r4, #0x1e8
	bl FUN_ov15_020d1630
	cmp r0, #0
	ldmnefd sp!, {r3, r4, r5, pc}
	ldr r1, _020D1730 ; =0x020E58FC
	mov r0, r5
	mov r2, #2
	bl FUN_ov15_020d1630
	cmp r0, #0
	moveq r0, #0
	ldmfd sp!, {r3, r4, r5, pc}
_020D172C: .word ov15_020E58E0
_020D1730: .word ov15_020E58FC
	arm_func_end FUN_ov15_020d16b8

	arm_func_start FUN_ov15_020d1734
FUN_ov15_020d1734: ; 0x020D1734
	stmfd sp!, {r3, r4, r5, lr}
	mov r5, r0
	bl FUN_ov15_020d3fd0
	bl FUN_ov15_020d4010
	ldr r0, [r0]
	ldr r4, [r0, #0xc]
	ldr r0, [r4, #0xa8]
	cmp r0, #0
	moveq r0, #0
	ldmeqfd sp!, {r3, r4, r5, pc}
	ldr r1, _020D17A8 ; =0x020E5900
	mov r0, r5
	mov r2, #0x15
	bl FUN_ov15_020d1630
	cmp r0, #0
	ldmnefd sp!, {r3, r4, r5, pc}
	ldr r2, [r4, #0xa8]
	mov r0, r5
	add r1, r4, #0x4c
	bl FUN_ov15_020d1630
	cmp r0, #0
	ldmnefd sp!, {r3, r4, r5, pc}
	ldr r1, _020D17AC ; =0x020E58FC
	mov r0, r5
	mov r2, #2
	bl FUN_ov15_020d1630
	cmp r0, #0
	moveq r0, #0
	ldmfd sp!, {r3, r4, r5, pc}
_020D17A8: .word ov15_020E5900
_020D17AC: .word ov15_020E58FC
	arm_func_end FUN_ov15_020d1734

	arm_func_start FUN_ov15_020d17b0
FUN_ov15_020d17b0: ; 0x020D17B0
	stmfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, lr}
	sub sp, sp, #0xc
	mov r10, r0
	bl FUN_ov15_020d3fd0
	mov r4, r0
	bl FUN_ov15_020d4010
	ldr r1, [r0]
	mov r0, r4
	ldr r9, [r1, #0xc]
	bl FUN_ov15_020d4018
	mov r8, r0
	mov r0, r4
	bl FUN_ov15_020d4004
	add r6, sp, #4
	mov r7, r0
	ldr r1, [r9, #0x20]
	mov r0, r6
	bl FUN_ov15_020cf8f8
	mov r5, r0
	ldr r1, _020D19D4 ; =0x020E5918
	mov r0, r10
	mov r2, #8
	bl FUN_ov15_020d1630
	cmp r0, #0
	addne sp, sp, #0xc
	ldmnefd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
	ldr r1, [r9, #0x24]
	ldr r2, [r9, #0x14]
	mov r0, r10
	add r1, r1, #8
	sub r2, r2, #8
	bl FUN_ov15_020d1630
	cmp r0, #0
	addne sp, sp, #0xc
	ldmnefd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
	ldr r4, _020D19D8 ; =0x020E5924
	mov r11, #1
	mov r0, r10
	mov r1, r4
	mov r2, r11
	bl FUN_ov15_020d1630
	cmp r0, #0
	addne sp, sp, #0xc
	ldmnefd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
	mov r0, r10
	mov r1, r6
	mov r2, r5
	bl FUN_ov15_020d1630
	cmp r0, #0
	addne sp, sp, #0xc
	ldmnefd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
	ldr r1, _020D19DC ; =0x020E5928
	mov r0, r10
	mov r2, #0xb
	bl FUN_ov15_020d1630
	cmp r0, #0
	addne sp, sp, #0xc
	ldmnefd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
	ldr r1, _020D19E0 ; =0x020E5934
	mov r0, r10
	mov r2, #6
	bl FUN_ov15_020d1630
	cmp r0, #0
	addne sp, sp, #0xc
	ldmnefd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
	ldr r1, [r9, #0x24]
	ldr r2, [r9, #0x14]
	mov r0, r10
	add r1, r1, #8
	sub r2, r2, #8
	bl FUN_ov15_020d1630
	cmp r0, #0
	addne sp, sp, #0xc
	ldmnefd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
	mov r0, r10
	mov r1, r4
	mov r2, r11
	bl FUN_ov15_020d1630
	cmp r0, #0
	addne sp, sp, #0xc
	ldmnefd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
	mov r0, r10
	mov r1, r6
	mov r2, r5
	bl FUN_ov15_020d1630
	cmp r0, #0
	addne sp, sp, #0xc
	ldmnefd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
	ldr r5, _020D19E4 ; =0x020E58FC
	mov r4, #2
	mov r0, r10
	mov r1, r5
	mov r2, r4
	bl FUN_ov15_020d1630
	cmp r0, #0
	addne sp, sp, #0xc
	ldmnefd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
	ldr r1, _020D19E8 ; =0x020E593C
	mov r0, r10
	mov r2, #0x25
	bl FUN_ov15_020d1630
	cmp r0, #0
	addne sp, sp, #0xc
	ldmnefd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
	mov r0, r10
	bl FUN_ov15_020d16b8
	cmp r0, #0
	addne sp, sp, #0xc
	ldmnefd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
	mov r0, r10
	mov r1, r5
	mov r2, r4
	bl FUN_ov15_020d1630
	ldr r3, [r10, #0x324]
	cmp r3, #0
	ble _020D19B4
	mov r0, #0
	str r0, [sp]
	ldr r1, [r7, #0xc]
	mov r0, r9
	add r2, r8, #0x100
	bl FUN_ov15_020cf434
	cmp r0, #0
	addlt sp, sp, #0xc
	movlt r0, r11
	ldmltfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
	addeq sp, sp, #0xc
	moveq r0, r4
	ldmeqfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
_020D19B4:
	mov r4, #0
	add r0, r8, #0x100
	mov r1, #0x4000
	str r4, [r10, #0x324]
	bl FUN_ov15_020cf550
	mov r0, r4
	add sp, sp, #0xc
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
_020D19D4: .word ov15_020E5918
_020D19D8: .word ov15_020E5924
_020D19DC: .word ov15_020E5928
_020D19E0: .word ov15_020E5934
_020D19E4: .word ov15_020E58FC
_020D19E8: .word ov15_020E593C
	arm_func_end FUN_ov15_020d17b0

	arm_func_start FUN_ov15_020d19ec
FUN_ov15_020d19ec: ; 0x020D19EC
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, lr}
	sub sp, sp, #0x210
	bl FUN_ov15_020d3fd0
	mov r6, r0
	bl FUN_ov15_020d4010
	mov r5, r0
	mov r0, r6
	bl FUN_ov15_020d4018
	str r0, [sp, #0xc]
	mov r0, r6
	bl FUN_ov15_020d4004
	mov r4, r0
	mov r0, r6
	bl FUN_ov15_020d4020
	ldr r2, [r5]
	mov r1, #0
	ldr r6, [r2, #0xc]
	str r1, [sp, #8]
	ldr r7, [r6, #0x2c]
	mov r5, r0
	mov r8, r1
_020D1A40:
	rsb r0, r8, #0x200
	str r0, [sp]
	mov r0, #0
	str r0, [sp, #4]
	add r9, sp, #0x10
	ldr r2, [r4, #0xc]
	mov r0, r5
	mov r1, r6
	add r3, r9, r8
	bl FUN_ov15_020cf3a8
	mov r11, r0
	add r0, sp, #0x19
	mov r1, #3
	add r8, r8, r11
	bl FUN_ov15_020cf85c
	str r0, [r7, #0x18]
	ldr r1, _020D1BCC ; =0x020E5964
	mov r0, r9
	mov r2, #5
	bl FUN_ov15_020cf564
	cmp r0, #0
	ldreqsb r0, [sp, #0x18]
	mov r12, #0
	mov lr, r12
	cmpeq r0, #0x20
	ldreq r0, [r7, #0x18]
	cmpeq r0, #0xc8
	moveq r0, #1
	streq r0, [sp, #8]
	cmp r8, #0
	ble _020D1B50
	mov r9, #1
	add r3, sp, #0x10
	mov r1, r9
	mov r2, r9
_020D1ACC:
	cmp r12, #1
	ble _020D1AF0
	add r10, r3, r12
	ldrsb r0, [r10, #-1]
	cmp r0, #0xd
	ldreqsb r0, [r10]
	cmpeq r0, #0xd
	moveq lr, r2
	beq _020D1B44
_020D1AF0:
	cmp r12, #1
	ble _020D1B14
	add r10, r3, r12
	ldrsb r0, [r10, #-1]
	cmp r0, #0xa
	ldreqsb r0, [r10]
	cmpeq r0, #0xa
	moveq lr, r1
	beq _020D1B44
_020D1B14:
	cmp r12, #3
	ble _020D1B44
	add r0, r3, r12
	ldrsb r10, [r0, #-3]
	cmp r10, #0xd
	ldreqsb r10, [r0, #-2]
	cmpeq r10, #0xa
	ldreqsb r10, [r0, #-1]
	cmpeq r10, #0xd
	ldreqsb r0, [r0]
	cmpeq r0, #0xa
	moveq lr, r9
_020D1B44:
	add r12, r12, #1
	cmp r12, r8
	blt _020D1ACC
_020D1B50:
	cmp lr, #0
	mov r0, #1
	beq _020D1B74
	ldr r0, [sp, #8]
	add sp, sp, #0x210
	cmp r0, #0
	movne r0, #1
	moveq r0, #0
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_020D1B74:
	cmp r11, #0
	mov r9, #0
	addlt sp, sp, #0x210
	movlt r0, r9
	ldmltfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
	cmp r8, #0x200
	blt _020D1A40
	stmia sp, {r0, r9}
	ldr r3, [sp, #0xc]
	ldr r2, [r4, #0xc]
	mov r0, r5
	mov r1, r6
	add r3, r3, #0x100
	bl FUN_ov15_020cf3a8
	cmp r0, #0
	addlt sp, sp, #0x210
	movlt r0, r9
	ldmltfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
	beq _020D1A40
	mov r0, r9
	add sp, sp, #0x210
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_020D1BCC: .word ov15_020E5964
	arm_func_end FUN_ov15_020d19ec

	arm_func_start FUN_ov15_020d1bd0
FUN_ov15_020d1bd0: ; 0x020D1BD0
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, lr}
	mov r9, r0
	bl FUN_ov15_020d3fd0
	bl FUN_ov15_020d4010
	ldr r0, [r0]
	ldr r7, [r0, #0xc]
	add r0, r7, #0x30
	bl FUN_ov15_020cff38
	movs r8, r0
	beq _020D1C8C
	ldr r6, _020D1C94 ; =0x020E596C
	ldr r4, _020D1C98 ; =0x020E58FC
	mov r5, #2
_020D1C04:
	ldr r0, [r8, #8]
	bl FUN_ov15_020cf52c
	mov r2, r0
	ldr r1, [r8, #8]
	mov r0, r9
	bl FUN_ov15_020d1630
	cmp r0, #0
	ldmnefd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
	mov r0, r9
	mov r1, r6
	mov r2, r5
	bl FUN_ov15_020d1630
	cmp r0, #0
	ldmnefd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
	ldr r0, [r8, #0xc]
	bl FUN_ov15_020cf52c
	mov r2, r0
	ldr r1, [r8, #0xc]
	mov r0, r9
	bl FUN_ov15_020d1630
	cmp r0, #0
	ldmnefd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
	mov r0, r9
	mov r1, r4
	mov r2, r5
	bl FUN_ov15_020d1630
	cmp r0, #0
	ldmnefd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
	mov r0, r8
	bl FUN_ov15_020cfb9c
	add r0, r7, #0x30
	bl FUN_ov15_020cff38
	movs r8, r0
	bne _020D1C04
_020D1C8C:
	mov r0, #0
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
_020D1C94: .word ov15_020E596C
_020D1C98: .word ov15_020E58FC
	arm_func_end FUN_ov15_020d1bd0

	arm_func_start FUN_ov15_020d1c9c
FUN_ov15_020d1c9c: ; 0x020D1C9C
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, lr}
	sub sp, sp, #0x1c
	mov r8, r0
	bl FUN_ov15_020d3fd0
	mov r7, r0
	bl FUN_ov15_020d4020
	mov r5, r0
	mov r0, r7
	bl FUN_ov15_020d4010
	ldr r1, [r0]
	mov r0, r7
	ldr r6, [r1, #0xc]
	bl FUN_ov15_020d4018
	mov r4, r0
	mov r0, r7
	bl FUN_ov15_020d4004
	mov r7, r0
	mov r2, #0
	str r2, [sp, #0xc]
	ldr r0, [r6, #0x24c]
	cmp r0, #0
	bne _020D1D1C
	add r3, sp, #0xc
	mov r0, r5
	mov r1, r6
	str r2, [sp]
	bl FUN_ov15_020d1344
	cmp r0, #0
	bne _020D1D24
	add sp, sp, #0x1c
	mov r0, #3
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, pc}
_020D1D1C:
	ldr r0, [r6, #0x250]
	str r0, [sp, #0xc]
_020D1D24:
	add r10, sp, #0x10
	ldr r1, [sp, #0xc]
	mov r0, r10
	bl FUN_ov15_020cf8f8
	mov r9, r0
	ldr r1, _020D1E18 ; =0x020E5970
	mov r0, r8
	mov r2, #0x10
	bl FUN_ov15_020d1630
	cmp r0, #0
	addne sp, sp, #0x1c
	ldmnefd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, pc}
	mov r0, r8
	mov r1, r10
	mov r2, r9
	bl FUN_ov15_020d1630
	cmp r0, #0
	addne sp, sp, #0x1c
	ldmnefd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, pc}
	ldr r10, _020D1E1C ; =0x020E58FC
	mov r9, #2
	mov r0, r8
	mov r1, r10
	mov r2, r9
	bl FUN_ov15_020d1630
	cmp r0, #0
	addne sp, sp, #0x1c
	ldmnefd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, pc}
	mov r0, r8
	mov r1, r10
	mov r2, r9
	bl FUN_ov15_020d1630
	cmp r0, #0
	addne sp, sp, #0x1c
	ldmnefd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, pc}
	ldr r1, [r6, #0x24c]
	cmp r1, #0
	bne _020D1DF4
	ldr r0, [r7, #0xc]
	add r2, r8, #0x324
	str r0, [sp]
	mov r0, r5
	mov r1, r6
	str r2, [sp, #4]
	mov r3, #0
	add r2, r4, #0x100
	str r3, [sp, #8]
	bl FUN_ov15_020d140c
	cmp r0, #0
	beq _020D1E0C
	add sp, sp, #0x1c
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, pc}
_020D1DF4:
	ldr r2, [r6, #0x250]
	mov r0, r8
	bl FUN_ov15_020d1630
	cmp r0, #0
	addne sp, sp, #0x1c
	ldmnefd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, pc}
_020D1E0C:
	mov r0, #0
	add sp, sp, #0x1c
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, pc}
_020D1E18: .word ov15_020E5970
_020D1E1C: .word ov15_020E58FC
	arm_func_end FUN_ov15_020d1c9c

	arm_func_start FUN_ov15_020d1e20
FUN_ov15_020d1e20: ; 0x020D1E20
	stmfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, lr}
	sub sp, sp, #0x1c
	mov r10, r0
	bl FUN_ov15_020d3fd0
	mov r4, r0
	bl FUN_ov15_020d4020
	mov r6, r0
	mov r0, r4
	bl FUN_ov15_020d4010
	ldr r1, [r0]
	mov r0, r4
	ldr r7, [r1, #0xc]
	bl FUN_ov15_020d4018
	mov r11, r0
	mov r0, r4
	bl FUN_ov15_020d4004
	mov r1, #0
	str r1, [sp, #0xc]
	ldr r5, [r7, #0x34]
	mov r8, r0
	cmp r5, #0
	beq _020D1F20
	mov r4, #1
	add r9, sp, #0xc
_020D1E80:
	add r1, r1, #0x16
	str r1, [sp, #0xc]
	ldr r0, [r5, #8]
	bl FUN_ov15_020cf52c
	ldr r1, [sp, #0xc]
	add r0, r0, #0x29
	add r1, r1, r0
	str r1, [sp, #0xc]
	ldr r0, [r5, #0x14]
	cmp r0, #0
	addne r1, r1, #0x4b
	add r1, r1, #2
	str r1, [sp, #0xc]
	ldr r0, [r5, #0xc]
	cmp r0, #0
	bne _020D1EEC
	str r4, [sp]
	ldr r2, [r5, #8]
	mov r0, r6
	mov r1, r7
	mov r3, r9
	bl FUN_ov15_020d1344
	cmp r0, #0
	bne _020D1EF8
	add sp, sp, #0x1c
	mov r0, #3
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
_020D1EEC:
	ldr r0, [r5, #0x10]
	add r1, r1, r0
	str r1, [sp, #0xc]
_020D1EF8:
	ldr r0, [sp, #0xc]
	add r1, r0, #2
	str r1, [sp, #0xc]
	ldr r0, [r7, #0x34]
	ldr r0, [r0]
	cmp r5, r0
	beq _020D1F20
	ldr r5, [r5, #4]
	cmp r5, #0
	bne _020D1E80
_020D1F20:
	add r9, sp, #0x10
	add r1, r1, #0x18
	mov r0, r9
	str r1, [sp, #0xc]
	bl FUN_ov15_020cf8f8
	mov r4, r0
	ldr r1, _020D21B4 ; =0x020E3F33
	mov r0, r10
	mov r2, #0x2c
	bl FUN_ov15_020d1630
	cmp r0, #0
	addne sp, sp, #0x1c
	ldmnefd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
	mov r0, r10
	add r1, r7, #0x3a
	mov r2, #0x12
	bl FUN_ov15_020d1630
	cmp r0, #0
	addne sp, sp, #0x1c
	ldmnefd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
	ldr r5, _020D21B8 ; =0x020E58FC
	mov r0, r10
	mov r1, r5
	mov r2, #2
	bl FUN_ov15_020d1630
	cmp r0, #0
	addne sp, sp, #0x1c
	ldmnefd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
	ldr r1, _020D21BC ; =0x020E5970
	mov r0, r10
	mov r2, #0x10
	bl FUN_ov15_020d1630
	cmp r0, #0
	addne sp, sp, #0x1c
	ldmnefd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
	mov r0, r10
	mov r1, r9
	mov r2, r4
	bl FUN_ov15_020d1630
	cmp r0, #0
	addne sp, sp, #0x1c
	ldmnefd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
	mov r0, r10
	mov r1, r5
	mov r2, #2
	bl FUN_ov15_020d1630
	cmp r0, #0
	addne sp, sp, #0x1c
	ldmnefd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
	mov r0, r10
	mov r1, r5
	mov r2, #2
	bl FUN_ov15_020d1630
	cmp r0, #0
	addne sp, sp, #0x1c
	ldmnefd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
	ldr r9, [r7, #0x34]
	cmp r9, #0
	beq _020D2178
	add r4, r10, #0x324
_020D2010:
	mov r0, r10
	add r1, r7, #0x38
	mov r2, #0x14
	bl FUN_ov15_020d1630
	cmp r0, #0
	addne sp, sp, #0x1c
	ldmnefd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
	mov r0, r10
	mov r1, r5
	mov r2, #2
	bl FUN_ov15_020d1630
	cmp r0, #0
	addne sp, sp, #0x1c
	ldmnefd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
	ldr r1, _020D21C0 ; =0x020E3F0C
	mov r0, r10
	mov r2, #0x26
	bl FUN_ov15_020d1630
	cmp r0, #0
	addne sp, sp, #0x1c
	ldmnefd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
	ldr r0, [r9, #8]
	bl FUN_ov15_020cf52c
	mov r2, r0
	ldr r1, [r9, #8]
	mov r0, r10
	bl FUN_ov15_020d1630
	cmp r0, #0
	addne sp, sp, #0x1c
	ldmnefd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
	ldr r1, _020D21C4 ; =0x020E5984
	mov r0, r10
	mov r2, #3
	bl FUN_ov15_020d1630
	cmp r0, #0
	addne sp, sp, #0x1c
	ldmnefd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
	ldr r0, [r9, #0x14]
	cmp r0, #0
	beq _020D20CC
	ldr r1, _020D21C8 ; =0x020E3F94
	mov r0, r10
	mov r2, #0x4b
	bl FUN_ov15_020d1630
	cmp r0, #0
	addne sp, sp, #0x1c
	ldmnefd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
_020D20CC:
	mov r0, r10
	mov r1, r5
	mov r2, #2
	bl FUN_ov15_020d1630
	cmp r0, #0
	addne sp, sp, #0x1c
	ldmnefd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
	ldr r1, [r9, #0xc]
	cmp r1, #0
	bne _020D2128
	ldr r1, [r8, #0xc]
	mov r0, r6
	stmia sp, {r1, r4}
	mov r1, #1
	str r1, [sp, #8]
	ldr r3, [r9, #8]
	mov r1, r7
	add r2, r11, #0x100
	bl FUN_ov15_020d140c
	cmp r0, #0
	beq _020D2140
	add sp, sp, #0x1c
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
_020D2128:
	ldr r2, [r9, #0x10]
	mov r0, r10
	bl FUN_ov15_020d1630
	cmp r0, #0
	addne sp, sp, #0x1c
	ldmnefd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
_020D2140:
	mov r0, r10
	mov r1, r5
	mov r2, #2
	bl FUN_ov15_020d1630
	cmp r0, #0
	addne sp, sp, #0x1c
	ldmnefd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
	ldr r0, [r7, #0x34]
	ldr r0, [r0]
	cmp r9, r0
	beq _020D2178
	ldr r9, [r9, #4]
	cmp r9, #0
	bne _020D2010
_020D2178:
	mov r0, r10
	add r1, r7, #0x38
	mov r2, #0x14
	bl FUN_ov15_020d1630
	cmp r0, #0
	addne sp, sp, #0x1c
	ldmnefd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
	ldr r1, _020D21CC ; =0x020E5988
	mov r0, r10
	mov r2, #4
	bl FUN_ov15_020d1630
	cmp r0, #0
	moveq r0, #0
	add sp, sp, #0x1c
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
_020D21B4: .word 0x020E3F33
_020D21B8: .word ov15_020E58FC
_020D21BC: .word ov15_020E5970
_020D21C0: .word 0x020E3F0C
_020D21C4: .word ov15_020E5984
_020D21C8: .word 0x020E3F94
_020D21CC: .word ov15_020E5988
	arm_func_end FUN_ov15_020d1e20

	arm_func_start FUN_ov15_020d21d0
FUN_ov15_020d21d0: ; 0x020D21D0
	stmfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, lr}
	sub sp, sp, #0x1c
	mov r5, r0
	bl FUN_ov15_020d3fd0
	mov r4, r0
	bl FUN_ov15_020d4020
	mov r7, r0
	mov r0, r4
	bl FUN_ov15_020d4010
	ldr r1, [r0]
	mov r0, r4
	ldr r8, [r1, #0xc]
	bl FUN_ov15_020d4018
	mov r11, r0
	mov r0, r4
	bl FUN_ov15_020d4004
	mov r1, #0
	str r1, [sp, #0xc]
	ldr r6, [r8, #0x34]
	mov r9, r0
	cmp r6, #0
	beq _020D22B8
	mov r4, #2
	add r10, sp, #0xc
_020D2230:
	ldr r0, [r6, #8]
	bl FUN_ov15_020cf608
	ldr r1, [sp, #0xc]
	add r0, r1, r0
	add r0, r0, #1
	str r0, [sp, #0xc]
	ldr r0, [r6, #0xc]
	cmp r0, #0
	bne _020D2280
	str r4, [sp]
	ldr r2, [r6, #8]
	mov r0, r7
	mov r1, r8
	mov r3, r10
	bl FUN_ov15_020d1344
	cmp r0, #0
	bne _020D2290
	add sp, sp, #0x1c
	mov r0, #3
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
_020D2280:
	bl FUN_ov15_020cf608
	ldr r1, [sp, #0xc]
	add r0, r1, r0
	str r0, [sp, #0xc]
_020D2290:
	ldr r0, [r8, #0x34]
	ldr r0, [r0]
	cmp r6, r0
	beq _020D22B8
	ldr r0, [sp, #0xc]
	add r0, r0, #1
	str r0, [sp, #0xc]
	ldr r6, [r6, #4]
	cmp r6, #0
	bne _020D2230
_020D22B8:
	add r6, sp, #0x10
	ldr r1, [sp, #0xc]
	mov r0, r6
	bl FUN_ov15_020cf8f8
	mov r4, r0
	ldr r1, _020D24B8 ; =0x020E3F60
	mov r0, r5
	mov r2, #0x31
	bl FUN_ov15_020d1630
	cmp r0, #0
	addne sp, sp, #0x1c
	ldmnefd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
	ldr r1, _020D24BC ; =0x020E5970
	mov r0, r5
	mov r2, #0x10
	bl FUN_ov15_020d1630
	cmp r0, #0
	addne sp, sp, #0x1c
	ldmnefd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
	mov r0, r5
	mov r1, r6
	mov r2, r4
	bl FUN_ov15_020d1630
	cmp r0, #0
	addne sp, sp, #0x1c
	ldmnefd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
	ldr r6, _020D24C0 ; =0x020E58FC
	mov r4, #2
	mov r0, r5
	mov r1, r6
	mov r2, r4
	bl FUN_ov15_020d1630
	cmp r0, #0
	addne sp, sp, #0x1c
	ldmnefd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
	mov r0, r5
	mov r1, r6
	mov r2, r4
	bl FUN_ov15_020d1630
	cmp r0, #0
	addne sp, sp, #0x1c
	ldmnefd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
	ldr r4, [r8, #0x34]
	cmp r4, #0
	beq _020D24AC
_020D236C:
	ldr r1, [r4, #8]
	mov r10, #0
	ldrsb r0, [r1]
	cmp r0, #0
	beq _020D23C0
	add r6, sp, #0x10
_020D2384:
	ldrsb r1, [r1, r10]
	mov r0, r6
	bl FUN_ov15_020cf6e4
	mov r2, r0
	mov r0, r5
	mov r1, r6
	bl FUN_ov15_020d1630
	cmp r0, #0
	addne sp, sp, #0x1c
	ldmnefd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
	ldr r1, [r4, #8]
	add r10, r10, #1
	ldrsb r0, [r1, r10]
	cmp r0, #0
	bne _020D2384
_020D23C0:
	ldr r1, _020D24C4 ; =0x020E5990
	mov r0, r5
	mov r2, #1
	bl FUN_ov15_020d1630
	cmp r0, #0
	addne sp, sp, #0x1c
	ldmnefd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
	ldr r1, [r4, #0xc]
	cmp r1, #0
	bne _020D2424
	ldr r1, [r9, #0xc]
	add r0, r5, #0x324
	str r1, [sp]
	str r0, [sp, #4]
	mov r0, #2
	str r0, [sp, #8]
	ldr r3, [r4, #8]
	mov r0, r7
	mov r1, r8
	add r2, r11, #0x100
	bl FUN_ov15_020d140c
	cmp r0, #0
	beq _020D2474
	add sp, sp, #0x1c
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
_020D2424:
	ldrsb r0, [r1]
	mov r10, #0
	cmp r0, #0
	beq _020D2474
	add r6, sp, #0x10
_020D2438:
	ldrsb r1, [r1, r10]
	mov r0, r6
	bl FUN_ov15_020cf6e4
	mov r2, r0
	mov r0, r5
	mov r1, r6
	bl FUN_ov15_020d1630
	cmp r0, #0
	addne sp, sp, #0x1c
	ldmnefd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
	ldr r1, [r4, #0xc]
	add r10, r10, #1
	ldrsb r0, [r1, r10]
	cmp r0, #0
	bne _020D2438
_020D2474:
	ldr r0, [r8, #0x34]
	ldr r0, [r0]
	cmp r4, r0
	beq _020D24AC
	ldr r1, _020D24C8 ; =0x020E5994
	mov r0, r5
	mov r2, #1
	bl FUN_ov15_020d1630
	cmp r0, #0
	addne sp, sp, #0x1c
	ldmnefd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
	ldr r4, [r4, #4]
	cmp r4, #0
	bne _020D236C
_020D24AC:
	mov r0, #0
	add sp, sp, #0x1c
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
_020D24B8: .word 0x020E3F60
_020D24BC: .word ov15_020E5970
_020D24C0: .word ov15_020E58FC
_020D24C4: .word ov15_020E5990
_020D24C8: .word ov15_020E5994
	arm_func_end FUN_ov15_020d21d0

	arm_func_start FUN_ov15_020d24cc
FUN_ov15_020d24cc: ; 0x020D24CC
	stmfd sp!, {r3, r4, r5, lr}
	mov r5, r0
	mvn r4, #0
	add r0, r5, #4
	mov r1, #0x100
	str r4, [r5]
	bl FUN_ov15_020cf550
	add r0, r5, #0x104
	mov r1, #0x200
	bl FUN_ov15_020cf550
	mov r0, #0
	str r4, [r5, #0x314]
	str r4, [r5, #0x318]
	str r0, [r5, #0x324]
	str r0, [r5, #0x338]
	str r0, [r5, #0x33c]
	str r0, [r5, #0x334]
	str r0, [r5, #0x32c]
	str r0, [r5, #0x330]
	ldmfd sp!, {r3, r4, r5, pc}
	arm_func_end FUN_ov15_020d24cc

	arm_func_start FUN_ov15_020d251c
FUN_ov15_020d251c: ; 0x020D251C
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, lr}
	mov r10, r0
	bl FUN_ov15_020d3fd0
	mov r6, r0
	bl FUN_ov15_020d4004
	mov r4, r0
	mov r0, r6
	bl FUN_ov15_020d4010
	mov r5, r0
	mov r0, r6
	bl FUN_ov15_020d4020
	ldr r1, [r5]
	mov r6, r0
	ldr r7, [r1, #0xc]
	mov r1, r7
	ldr r8, [r7, #0x2c]
	bl FUN_ov15_020d3ca8
	mov r9, r0
	ldr r0, [r7]
	cmp r0, #0
	movne r0, #0
	strne r0, [r10, #0x338]
	movne r1, #8
	ldr r0, [r10, #0x338]
	strne r1, [r10, #0x330]
	cmp r0, #0
	bne _020D25B4
	ldr r2, [r4, #0xc]
	cmp r2, #0
	blt _020D25B4
	mov r0, r6
	mov r1, r7
	bl FUN_ov15_020cf110
	cmp r0, #0
	movlt r0, #0xa
	strlt r0, [r10, #0x330]
	mvn r0, #0
	str r0, [r4, #0xc]
_020D25B4:
	ldr r0, [r10, #0x330]
	cmp r0, #0
	moveq r0, #1
	streq r0, [r8, #0x10]
	beq _020D25F0
	mov r11, #0
	str r11, [r8, #0x10]
	ldr r1, [r10, #0x330]
	mov r0, r4
	bl FUN_ov15_020cfbc0
	ldr r1, [r8, #0x28]
	add r0, r10, #0x104
	cmp r1, r0
	streq r11, [r8, #0x28]
	streq r11, [r8, #0x1c]
_020D25F0:
	cmp r9, #0
	ldrne r0, [r10, #0x330]
	strne r0, [r9, #4]
	mov r0, r6
	bl FUN_ov15_020d4094
	ldr r0, [r5]
	bl FUN_ov15_020cfb9c
	mov r1, #0
	mov r0, r6
	str r1, [r5]
	bl FUN_ov15_020d40a0
	mov r0, r6
	mov r1, r7
	bl FUN_ov15_020d0c78
	cmp r9, #0
	ldrne r0, [r8, #0x10]
	mov r1, r9
	cmpne r0, #0
	movne r0, #5
	strne r0, [r9]
	mov r0, r6
	bl FUN_ov15_020d3ee4
	cmp r9, #0
	beq _020D2658
	mov r0, r9
	bl FUN_ov15_020d3b60
_020D2658:
	mov r0, r9
	bl FUN_ov15_020d4278
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
	arm_func_end FUN_ov15_020d251c

	arm_func_start FUN_ov15_020d2664
FUN_ov15_020d2664: ; 0x020D2664
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	mov r7, r0
	bl FUN_ov15_020d3fd0
	mov r5, r0
	bl FUN_ov15_020d4020
	mov r6, r0
	bl FUN_ov15_020d4094
	mov r0, r5
	bl FUN_ov15_020d4008
	bl FUN_ov15_020d020c
	movs r4, r0
	mvneq r0, #0
	streq r0, [r7]
	beq _020D26B0
	mov r0, r5
	bl FUN_ov15_020d4010
	ldr r1, [r4, #8]
	str r1, [r7]
	str r4, [r0]
_020D26B0:
	mov r0, r6
	bl FUN_ov15_020d40a0
	ldr r0, [r7]
	cmp r0, #0
	movge r0, #1
	ldmgefd sp!, {r3, r4, r5, r6, r7, pc}
	mov r0, r5
	bl FUN_ov15_020d4018
	bl FUN_ov15_020cf008
	mov r0, #0
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
	arm_func_end FUN_ov15_020d2664

	arm_func_start FUN_ov15_020d26dc
FUN_ov15_020d26dc: ; 0x020D26DC
	stmfd sp!, {r4, r5, r6, lr}
	mov r5, r0
	bl FUN_ov15_020d3fd0
	bl FUN_ov15_020d4010
	ldr r0, [r0]
	ldr r4, [r0, #0xc]
	ldr r0, [r4, #0xc]
	ldr r6, [r4, #0x28]
	cmp r0, #0
	addne r6, r4, #0xe4
	mov r0, r6
	bl FUN_ov15_020cf52c
	cmp r0, #0
	beq _020D2728
	mov r0, r6
	add r1, r5, #4
	bl FUN_ov15_020cf544
	cmp r0, #0
	beq _020D2764
_020D2728:
	mov r0, r4
	mov r1, r6
	bl FUN_ov15_020cf4ac
	str r0, [r5, #0x314]
	cmp r0, #0
	bne _020D276C
	ldr r0, [r4, #0xc]
	cmp r0, #0
	movne r0, #0xc
	strne r0, [r5, #0x330]
	movne r0, #0
	moveq r0, #4
	streq r0, [r5, #0x330]
	moveq r0, #0
	ldmfd sp!, {r4, r5, r6, pc}
_020D2764:
	ldr r0, [r5, #0x318]
	str r0, [r5, #0x314]
_020D276C:
	add r0, r5, #4
	mov r1, #0x100
	bl FUN_ov15_020cf550
	mov r0, r6
	mov r1, #0xff
	bl FUN_ov15_020cf538
	mov r2, r0
	mov r1, r6
	add r0, r5, #4
	bl FUN_ov15_020cf514
	ldr r0, [r4, #0x20]
	ldr r1, [r5, #0x314]
	str r0, [r5, #0x31c]
	ldr r0, [r4, #0xc]
	cmp r0, #0
	ldrne r0, [r4, #0x1e4]
	strne r0, [r5, #0x31c]
	ldr r0, [r5, #0x318]
	cmp r1, r0
	ldreq r1, [r5, #0x31c]
	ldreq r0, [r5, #0x320]
	cmpeq r1, r0
	bne _020D27D4
	ldr r0, [r4, #8]
	cmp r0, #1
	bne _020D27DC
_020D27D4:
	mov r0, #0
	str r0, [r5, #0x338]
_020D27DC:
	ldr r1, [r5, #0x314]
	ldr r0, [r5, #0x31c]
	str r1, [r5, #0x318]
	str r0, [r5, #0x320]
	mov r0, #1
	ldmfd sp!, {r4, r5, r6, pc}
	arm_func_end FUN_ov15_020d26dc

	arm_func_start FUN_ov15_020d27f4
FUN_ov15_020d27f4: ; 0x020D27F4
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, lr}
	sub sp, sp, #8
	mov r8, r0
	mov r9, #0
	bl FUN_ov15_020d3fd0
	mov r6, r0
	bl FUN_ov15_020d4004
	mov r4, r0
	mov r0, r6
	bl FUN_ov15_020d4010
	mov r5, r0
	ldr r1, [r5]
	mov r0, r6
	ldr r6, [r1, #0xc]
	bl FUN_ov15_020d4020
	ldr r1, [r8, #0x338]
	mov r7, r0
	cmp r1, #1
	bne _020D2850
	ldr r0, [r4, #0xc]
	bl FUN_ov15_020cf0b8
	cmn r0, #1
	streq r9, [r8, #0x338]
_020D2850:
	ldr r0, [r8, #0x338]
	cmp r0, #0
	bne _020D2960
	ldr r2, [r4, #0xc]
	cmp r2, #0
	blt _020D2898
	mov r0, r7
	mov r1, r6
	bl FUN_ov15_020cf110
	cmp r0, #0
	bge _020D2898
	mvn r0, #0
	str r0, [r4, #0xc]
	mov r0, #0xa
	str r0, [r8, #0x330]
	add sp, sp, #8
	mov r0, #0
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
_020D2898:
	mov r0, r6
	bl FUN_ov15_020cf0f8
	cmp r0, #0
	str r0, [r4, #0xc]
	movlt r0, #3
	strlt r0, [r8, #0x330]
	addlt sp, sp, #8
	movlt r0, #0
	ldmltfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
	mov r0, r7
	bl FUN_ov15_020d4094
	ldr r2, [r4, #0xc]
	ldr r1, [r5]
	mov r0, r7
	str r2, [r1, #0x10]
	bl FUN_ov15_020d40a0
	ldr r0, [r6]
	cmp r0, #0
	addne sp, sp, #8
	movne r0, #0
	ldmnefd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
	ldr r1, [r8, #0x314]
	mov r0, r4
	str r1, [sp]
	ldr r2, [r8, #0x31c]
	mov r1, r7
	str r2, [sp, #4]
	ldr r3, [r4, #0xc]
	mov r2, r6
	bl FUN_ov15_020cf1a0
	cmp r0, #0
	bge _020D297C
	ldr r0, [r6, #0xc]
	cmp r0, #0
	movne r0, #0xd
	strne r0, [r8, #0x330]
	addne sp, sp, #8
	movne r0, #0
	ldmnefd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
	mov r0, r4
	bl FUN_ov15_020cfbd0
	cmp r0, #0
	movne r0, #0xe
	strne r0, [r8, #0x330]
	movne r0, #0
	moveq r0, #5
	streq r0, [r8, #0x330]
	add sp, sp, #8
	moveq r0, #0
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
_020D2960:
	mov r0, r7
	bl FUN_ov15_020d4094
	ldr r2, [r4, #0xc]
	ldr r1, [r5]
	mov r0, r7
	str r2, [r1, #0x10]
	bl FUN_ov15_020d40a0
_020D297C:
	mov r0, #1
	add sp, sp, #8
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
	arm_func_end FUN_ov15_020d27f4

	arm_func_start FUN_ov15_020d2988
FUN_ov15_020d2988: ; 0x020D2988
	stmfd sp!, {r4, r5, r6, r7, r8, lr}
	mov r6, r0
	bl FUN_ov15_020d3fd0
	mov r7, r0
	bl FUN_ov15_020d4004
	mov r4, r0
	mov r0, r7
	bl FUN_ov15_020d4010
	mov r5, r0
	mov r0, r7
	bl FUN_ov15_020d4020
	ldr r2, [r5]
	mov r7, #0
	ldr r5, [r2, #0xc]
	mov r1, #0xa
	str r7, [r6, #0x324]
	str r1, [r6, #0x330]
	ldr r1, [r5, #8]
	mov r8, r0
	cmp r1, #0
	ldrne r0, [r5, #0xc]
	cmpne r0, #0
	beq _020D2A8C
	mov r0, r6
	bl FUN_ov15_020d17b0
	cmp r0, #0
	ldmnefd sp!, {r4, r5, r6, r7, r8, pc}
	mov r0, r6
	bl FUN_ov15_020d19ec
	cmp r0, #0
	moveq r0, #1
	ldmeqfd sp!, {r4, r5, r6, r7, r8, pc}
	ldr r3, [r4, #0xc]
	mov r0, r4
	mov r1, r8
	mov r2, r5
	bl FUN_ov15_020cf250
	cmp r0, #0
	beq _020D2A8C
	sub r1, r7, #0x3ec
	cmp r0, r1
	bne _020D2A4C
	mov r0, r4
	bl FUN_ov15_020cfbd0
	cmp r0, #0
	movne r0, #0x10
	strne r0, [r6, #0x330]
	mov r0, #1
	ldmfd sp!, {r4, r5, r6, r7, r8, pc}
_020D2A4C:
	mvn r1, #0x3ec
	cmp r0, r1
	mov r0, r4
	bne _020D2A74
	bl FUN_ov15_020cfbd0
	cmp r0, #0
	movne r0, #0x11
	strne r0, [r6, #0x330]
	mov r0, #1
	ldmfd sp!, {r4, r5, r6, r7, r8, pc}
_020D2A74:
	bl FUN_ov15_020cfbd0
	cmp r0, #0
	movne r0, #0xe
	strne r0, [r6, #0x330]
	mov r0, #1
	ldmfd sp!, {r4, r5, r6, r7, r8, pc}
_020D2A8C:
	mov r0, #0
	ldmfd sp!, {r4, r5, r6, r7, r8, pc}
	arm_func_end FUN_ov15_020d2988

	arm_func_start FUN_ov15_020d2a94
FUN_ov15_020d2a94: ; 0x020D2A94
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, lr}
	sub sp, sp, #4
	mov r4, r0
	mov r5, #0
	bl FUN_ov15_020d3fd0
	mov r6, r0
	bl FUN_ov15_020d4010
	ldr r1, [r0]
	mov r0, r6
	ldr r8, [r1, #0xc]
	bl FUN_ov15_020d4020
	mov r7, r0
	mov r0, r6
	bl FUN_ov15_020d4004
	mov r9, r0
	mov r0, r7
	mov r1, r8
	bl FUN_ov15_020d3ca8
	mov r7, r0
	mov r0, r6
	bl FUN_ov15_020d4018
	mov r6, r0
	ldr r0, [r8, #0x24]
	bl FUN_ov15_020cf52c
	mov r1, #0xa
	mov r10, r0
	cmp r7, #0
	str r1, [r4, #0x330]
	movne r1, #2
	strne r1, [r7]
	str r5, [r4, #0x324]
	ldr r1, [r8, #0x1c]
	mov r0, r5
	cmp r1, #0
	beq _020D2B34
	cmp r1, #1
	beq _020D2B44
	cmp r1, #2
	beq _020D2B4C
	b _020D2B5C
_020D2B34:
	ldr r1, _020D2DF8 ; =0x020E5998
	mov r0, r4
	mov r2, #4
	b _020D2B58
_020D2B44:
	ldr r1, _020D2DFC ; =0x020E59A0
	b _020D2B50
_020D2B4C:
	ldr r1, _020D2E00 ; =0x020E59A8
_020D2B50:
	mov r0, r4
	mov r2, #5
_020D2B58:
	bl FUN_ov15_020d1630
_020D2B5C:
	cmp r0, #0
	addne sp, sp, #4
	ldmnefd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, pc}
	ldr r0, [r8, #0xc]
	cmp r0, #0
	beq _020D2BA0
	ldr r0, [r8, #8]
	cmp r0, #0
	bne _020D2BA0
	ldr r1, [r8, #0x24]
	mov r0, r4
	mov r2, r10
	bl FUN_ov15_020d1630
	cmp r0, #0
	beq _020D2BEC
	add sp, sp, #4
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, pc}
_020D2BA0:
	ldr r2, [r8, #0x18]
	cmp r10, r2
	ble _020D2BD0
	ldr r1, [r8, #0x24]
	mov r0, r4
	add r1, r1, r2
	sub r2, r10, r2
	bl FUN_ov15_020d1630
	cmp r0, #0
	beq _020D2BEC
	add sp, sp, #4
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, pc}
_020D2BD0:
	ldr r1, _020D2E04 ; =0x020E59B0
	mov r0, r4
	mov r2, #1
	bl FUN_ov15_020d1630
	cmp r0, #0
	addne sp, sp, #4
	ldmnefd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, pc}
_020D2BEC:
	ldr r1, _020D2E08 ; =0x020E5928
	mov r0, r4
	mov r2, #0xb
	bl FUN_ov15_020d1630
	cmp r0, #0
	addne sp, sp, #4
	ldmnefd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, pc}
	ldr r0, [r8, #8]
	ldr r1, _020D2E0C ; =0x020E5934
	cmp r0, #0
	mov r7, #8
	mov r0, r4
	mov r2, #6
	moveq r7, #7
	bl FUN_ov15_020d1630
	cmp r0, #0
	addne sp, sp, #4
	ldmnefd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, pc}
	ldr r1, [r8, #0x24]
	ldr r2, [r8, #0x14]
	mov r0, r4
	add r1, r1, r7
	sub r2, r2, r7
	bl FUN_ov15_020d1630
	cmp r0, #0
	addne sp, sp, #4
	ldmnefd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, pc}
	ldr r1, _020D2E10 ; =0x020E58FC
	mov r0, r4
	mov r2, #2
	bl FUN_ov15_020d1630
	cmp r0, #0
	addne sp, sp, #4
	ldmnefd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, pc}
	ldr r0, [r8, #0xc]
	cmp r0, #0
	beq _020D2CA0
	ldr r0, [r8, #8]
	cmp r0, #0
	bne _020D2CA0
	mov r0, r4
	bl FUN_ov15_020d16b8
	cmp r0, #0
	addne sp, sp, #4
	ldmnefd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, pc}
_020D2CA0:
	mov r0, r4
	bl FUN_ov15_020d1734
	cmp r0, #0
	addne sp, sp, #4
	ldmnefd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, pc}
	mov r0, r4
	bl FUN_ov15_020d1bd0
	cmp r0, #0
	addne sp, sp, #4
	ldmnefd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, pc}
	ldr r0, [r8, #0x1c]
	cmp r0, #1
	bne _020D2D78
	ldr r0, [r8, #0x10]
	cmp r0, #0
	beq _020D2CEC
	mov r0, r4
	bl FUN_ov15_020d1c9c
	b _020D2D5C
_020D2CEC:
	ldr r0, [r8, #0xd4]
	cmp r0, #0
	bne _020D2D38
	ldr r3, [r8, #0x34]
	mov r1, #0
	mov r2, r3
	cmp r3, #0
	beq _020D2D44
_020D2D0C:
	ldr r0, [r2, #0x14]
	cmp r0, #0
	movne r1, #1
	bne _020D2D44
	ldr r0, [r3]
	cmp r2, r0
	beq _020D2D44
	ldr r2, [r2, #4]
	cmp r2, #0
	bne _020D2D0C
	b _020D2D44
_020D2D38:
	mov r1, #1
	cmp r0, #2
	movne r1, #0
_020D2D44:
	cmp r1, #0
	mov r0, r4
	beq _020D2D58
	bl FUN_ov15_020d1e20
	b _020D2D5C
_020D2D58:
	bl FUN_ov15_020d21d0
_020D2D5C:
	cmp r0, #0
	beq _020D2D94
	cmp r0, #3
	moveq r1, #3
	add sp, sp, #4
	streq r1, [r4, #0x330]
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, pc}
_020D2D78:
	ldr r1, _020D2E10 ; =0x020E58FC
	mov r0, r4
	mov r2, #2
	bl FUN_ov15_020d1630
	cmp r0, #0
	addne sp, sp, #4
	ldmnefd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, pc}
_020D2D94:
	ldr r3, [r4, #0x324]
	mov r10, #0
	cmp r3, #0
	ble _020D2DDC
	str r10, [sp]
	ldr r1, [r9, #0xc]
	mov r0, r8
	add r2, r6, #0x100
	bl FUN_ov15_020cf434
	mov r7, r0
	add r0, r6, #0x100
	mov r1, #0x4000
	str r10, [r4, #0x324]
	bl FUN_ov15_020cf550
	cmp r7, #0
	movlt r10, #1
	cmp r7, #0
	moveq r10, #2
_020D2DDC:
	add r0, r6, #0x100
	mov r1, #0x4000
	str r5, [r4, #0x324]
	bl FUN_ov15_020cf550
	mov r0, r10
	add sp, sp, #4
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, pc}
_020D2DF8: .word ov15_020E5998
_020D2DFC: .word ov15_020E59A0
_020D2E00: .word ov15_020E59A8
_020D2E04: .word ov15_020E59B0
_020D2E08: .word ov15_020E5928
_020D2E0C: .word ov15_020E5934
_020D2E10: .word ov15_020E58FC
	arm_func_end FUN_ov15_020d2a94

	arm_func_start FUN_ov15_020d2e14
FUN_ov15_020d2e14: ; 0x020D2E14
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, lr}
	sub sp, sp, #0x10
	mov r10, r0
	bl FUN_ov15_020d3fd0
	mov r7, r0
	bl FUN_ov15_020d4010
	ldr r1, [r0]
	mov r0, r7
	ldr r4, [r1, #0xc]
	ldr r5, [r4, #0x2c]
	bl FUN_ov15_020d4020
	mov r1, r4
	mov r6, r0
	bl FUN_ov15_020d3ca8
	mov r8, r0
	mov r0, r7
	bl FUN_ov15_020d4004
	add r1, sp, #0xc
	mov r11, #0
	mov r7, r0
	cmp r8, #0
	strb r11, [r1]
	strb r11, [r1, #1]
	strb r11, [r1, #2]
	strb r11, [r1, #3]
	movne r0, #3
	strne r0, [r8]
	str r11, [r5]
	add r0, r10, #0x304
	mov r1, #0xe
	bl FUN_ov15_020cf550
	ldr r8, [r5, #0x34]
	add r0, r5, #0x38
	str r11, [r10, #0x328]
	str r0, [sp, #8]
_020D2EA0:
	ldr r0, [r4]
	cmp r0, #0
	addne sp, sp, #0x10
	movne r0, #0
	ldmnefd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
	ldr r1, [r10, #0x328]
	cmp r1, #0x400
	bge _020D2EF4
	ldr r0, [sp, #8]
	add r3, r0, r1
	mov r0, #1
	stmia sp, {r0, r11}
	ldr r2, [r7, #0xc]
	mov r0, r6
	mov r1, r4
	bl FUN_ov15_020cf3a8
	ldr r2, [r10, #0x328]
	add r1, r5, r2
	ldrsb r3, [r1, #0x38]
	and r2, r2, #3
	b _020D2F78
_020D2EF4:
	ldr r0, _020D2FDC ; =0x000001FF
	ands r9, r1, r0
	bne _020D2F48
	cmp r8, #0
	mov r0, #0x204
	mov r1, #4
	beq _020D2F20
	bl FUN_ov15_020cfb6c
	str r0, [r8]
	mov r8, r0
	b _020D2F2C
_020D2F20:
	bl FUN_ov15_020cfb6c
	mov r8, r0
	str r8, [r5, #0x34]
_020D2F2C:
	cmp r8, #0
	moveq r0, #1
	streq r0, [r10, #0x330]
	addeq sp, sp, #0x10
	moveq r0, #0
	ldmeqfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
	str r11, [r8]
_020D2F48:
	mov r0, #1
	stmia sp, {r0, r11}
	add r3, r8, #4
	ldr r2, [r7, #0xc]
	mov r0, r6
	mov r1, r4
	add r3, r3, r9
	bl FUN_ov15_020cf3a8
	add r1, r8, r9
	ldrsb r3, [r1, #4]
	ldr r1, [r10, #0x328]
	and r2, r1, #3
_020D2F78:
	add r1, sp, #0xc
	strb r3, [r1, r2]
	cmp r0, #0
	movle r0, #0xa
	strle r0, [r10, #0x330]
	addle sp, sp, #0x10
	movle r0, #0
	ldmlefd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
	ldr r1, [r10, #0x328]
	add r1, r1, r0
	add r0, sp, #0xc
	str r1, [r10, #0x328]
	bl FUN_ov15_020d116c
	cmp r0, #0
	beq _020D2EA0
	ldr r0, [r10, #0x328]
	str r0, [r5]
	ldr r0, [r5]
	cmp r0, #0
	moveq r0, #7
	streq r0, [r10, #0x330]
	moveq r0, #0
	movne r0, #1
	add sp, sp, #0x10
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_020D2FDC: .word 0x000001FF
	arm_func_end FUN_ov15_020d2e14

	arm_func_start FUN_ov15_020d2fe0
FUN_ov15_020d2fe0: ; 0x020D2FE0
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, lr}
	sub sp, sp, #0xc
	mov r8, r0
	mov r9, #7
	bl FUN_ov15_020d3fd0
	mov r4, r0
	bl FUN_ov15_020d4010
	ldr r1, [r0]
	mov r0, r4
	ldr r6, [r1, #0xc]
	ldr r7, [r6, #0x2c]
	bl FUN_ov15_020d4018
	mov r4, #0
	mov r5, r0
	mov r0, r7
	add r1, r8, #0x304
	mov r2, r4
	mov r3, #0xe
	bl FUN_ov15_020d0554
	cmp r0, #0
	moveq r1, r9
	addeq sp, sp, #0xc
	moveq r0, r4
	streq r1, [r8, #0x330]
	ldmeqfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, pc}
	ldr r1, _020D328C ; =0x020E5964
	add r0, r8, #0x304
	mov r2, #5
	bl FUN_ov15_020cf564
	cmp r0, #0
	addne sp, sp, #0xc
	movne r0, r4
	strne r9, [r8, #0x330]
	ldmnefd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, pc}
	add r0, r8, #0x300
	ldrsb r0, [r0, #0xc]
	cmp r0, #0x20
	addne sp, sp, #0xc
	movne r0, r4
	strne r9, [r8, #0x330]
	ldmnefd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, pc}
	add r0, r8, #0xd
	add r0, r0, #0x300
	mov r1, #3
	bl FUN_ov15_020cf85c
	cmp r0, #0
	str r0, [r7, #0x18]
	addlt sp, sp, #0xc
	movlt r0, r4
	strlt r9, [r8, #0x330]
	ldmltfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, pc}
	str r4, [sp]
	mov r10, #0xc
	ldr r2, [r7]
	add r3, sp, #8
	mov r0, r7
	mov r1, r10
	bl FUN_ov15_020d02e4
	cmp r0, #0
	movlt r1, r9
	addlt sp, sp, #0xc
	movlt r0, r4
	strlt r1, [r8, #0x330]
	ldmltfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, pc}
	ldr r1, _020D3290 ; =0x020E59B4
	add r2, sp, #4
	mov r0, r7
	mov r9, r4
	bl FUN_ov15_020d0f0c
	movs r3, r0
	addeq sp, sp, #0xc
	str r3, [r8, #0x32c]
	moveq r0, r4
	streq r4, [r8, #0x330]
	ldmeqfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, pc}
	cmp r3, #0x4000
	mov r1, #7
	addgt sp, sp, #0xc
	movgt r0, r4
	strgt r1, [r8, #0x330]
	ldmgtfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, pc}
	cmp r3, #0
	ble _020D3180
	ldr r2, [sp, #4]
	mov r0, r7
	add r1, r5, #0x100
	bl FUN_ov15_020d0554
	cmp r0, #0
	moveq r1, #7
	addeq sp, sp, #0xc
	moveq r0, r4
	streq r1, [r8, #0x330]
	ldmeqfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, pc}
	ldr r1, [r8, #0x32c]
	add r0, r5, #0x100
	mov r5, #7
	bl FUN_ov15_020cf85c
	cmp r0, #0
	str r0, [r8, #0x32c]
	addlt sp, sp, #0xc
	movlt r0, r4
	strlt r5, [r8, #0x330]
	ldmltfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, pc}
	b _020D3184
_020D3180:
	sub r0, r10, #0xd
_020D3184:
	str r0, [r7, #0xc]
	ldr r0, [r6, #8]
	mov r4, #7
	cmp r0, #0
	strne r9, [r8, #0x338]
	bne _020D3208
	ldr r1, _020D3294 ; =0x020E59C4
	add r2, sp, #4
	mov r0, r7
	bl FUN_ov15_020d0f0c
	movs r2, r0
	moveq r0, #0
	addeq sp, sp, #0xc
	streq r4, [r8, #0x330]
	streq r0, [r8, #0x338]
	ldmeqfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, pc}
	cmp r2, #0x4000
	strgt r9, [r8, #0x338]
	bgt _020D3208
	cmp r2, #0
	ble _020D3204
	ldr r1, [sp, #4]
	ldr r3, _020D3298 ; =0x020E59D0
	mov r0, r7
	add r2, r1, r2
	str r9, [sp]
	bl FUN_ov15_020d0470
	cmp r0, #0
	moveq r0, #1
	streq r0, [r8, #0x338]
	strne r9, [r8, #0x338]
	b _020D3208
_020D3204:
	str r9, [r8, #0x338]
_020D3208:
	ldr r1, _020D329C ; =0x020E59DC
	add r2, sp, #4
	mov r0, r7
	bl FUN_ov15_020d0f0c
	movs r2, r0
	addeq sp, sp, #0xc
	str r2, [r8, #0x33c]
	streq r4, [r8, #0x330]
	moveq r0, #0
	ldmeqfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, pc}
	cmp r2, #0x4000
	strgt r9, [r8, #0x33c]
	bgt _020D3278
	cmp r2, #0
	ble _020D3270
	ldr r1, [sp, #4]
	ldr r3, _020D32A0 ; =0x020E59F0
	mov r4, #0x3b
	mov r0, r7
	add r2, r1, r2
	str r4, [sp]
	bl FUN_ov15_020d0470
	cmp r0, #0
	moveq r0, #1
	movne r0, #0
	b _020D3274
_020D3270:
	mov r0, #0
_020D3274:
	str r0, [r8, #0x33c]
_020D3278:
	str r9, [r8, #0x330]
	mov r0, #1
	str r0, [r7, #0x14]
	add sp, sp, #0xc
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, pc}
_020D328C: .word ov15_020E5964
_020D3290: .word ov15_020E59B4
_020D3294: .word ov15_020E59C4
_020D3298: .word ov15_020E59D0
_020D329C: .word ov15_020E59DC
_020D32A0: .word ov15_020E59F0
	arm_func_end FUN_ov15_020d2fe0

	arm_func_start FUN_ov15_020d32a4
FUN_ov15_020d32a4: ; 0x020D32A4
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, lr}
	sub sp, sp, #0x10
	mov r10, r0
	mov r9, #0
	bl FUN_ov15_020d3fd0
	mov r8, r0
	bl FUN_ov15_020d4010
	ldr r1, [r0]
	mov r0, r8
	ldr r4, [r1, #0xc]
	ldr r5, [r4, #0x2c]
	bl FUN_ov15_020d4004
	mov r6, r0
	mov r0, r8
	bl FUN_ov15_020d4020
	mov r1, r4
	mov r7, r0
	bl FUN_ov15_020d3ca8
	str r0, [sp, #8]
	mov r0, r8
	bl FUN_ov15_020d4018
	add r8, r0, #0x100
	ldr r0, [r4, #0x1c]
	cmp r0, #2
	ldrne r0, [r5, #0x18]
	cmpne r0, #0xcc
	cmpne r0, #0x130
	beq _020D3324
	cmp r0, #0x64
	blt _020D3330
	cmp r0, #0xc8
	bge _020D3330
_020D3324:
	add sp, sp, #0x10
	mov r0, #1
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_020D3330:
	ldr r0, [sp, #8]
	mov r1, #0
	bl FUN_ov15_020d4028
	ldr r0, [sp, #8]
	cmp r0, #0
	movne r1, #4
	strne r1, [r0]
	ldr r1, [r10, #0x32c]
	cmp r1, #0
	blt _020D3460
	ldr r0, [sp, #8]
	bl FUN_ov15_020d4028
	ldr r0, [r10, #0x32c]
	cmp r0, #0
	ble _020D3420
	add r8, r10, #0x104
	mov r11, #6
_020D3374:
	ldr r0, [r10, #0x330]
	cmp r0, #6
	beq _020D33A0
	mov r0, r7
	mov r1, r5
	bl FUN_ov15_020d15a8
	cmp r0, #0
	streq r11, [r10, #0x330]
	streq r8, [r5, #0x28]
	moveq r0, #0x200
	streq r0, [r5, #0x1c]
_020D33A0:
	ldr r0, [r10, #0x330]
	ldr r1, [r10, #0x32c]
	cmp r0, #6
	stmia sp, {r1, r9}
	mov r0, r7
	ldr r2, [r6, #0xc]
	bne _020D33C8
	mov r1, r4
	mov r3, r9
	b _020D33D0
_020D33C8:
	ldr r3, [r5, #4]
	mov r1, r4
_020D33D0:
	bl FUN_ov15_020d0688
	cmp r0, #0
	addlt sp, sp, #0x10
	movlt r0, #0
	ldmltfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
	beq _020D3420
	ldr r1, [r10, #0x330]
	cmp r1, #6
	beq _020D340C
	ldr r1, [r5, #4]
	add r1, r1, r0
	str r1, [r5, #4]
	ldr r1, [r5, #8]
	add r1, r1, r0
	str r1, [r5, #8]
_020D340C:
	ldr r1, [r10, #0x32c]
	sub r0, r1, r0
	str r0, [r10, #0x32c]
	cmp r0, #0
	bgt _020D3374
_020D3420:
	ldr r0, [r10, #0x330]
	cmp r0, #6
	beq _020D3748
	ldr r0, [r10, #0x32c]
	cmp r0, #0
	beq _020D3458
	ldr r1, [r5, #4]
	mov r0, r5
	bl FUN_ov15_020d0640
	cmp r0, #0
	movne r0, #6
	moveq r0, #0xa
	str r0, [r10, #0x330]
	b _020D3748
_020D3458:
	str r9, [r10, #0x330]
	b _020D3748
_020D3460:
	ldr r0, [r10, #0x33c]
	mov r1, #0xa
	str r1, [r10, #0x330]
	cmp r0, #0
	beq _020D369C
	sub r9, r1, #0xb
_020D3478:
	mov r1, #0
	strb r1, [sp, #0xc]
	strb r1, [sp, #0xd]
	str r1, [r10, #0x328]
	cmp r1, #0x4000
	bge _020D356C
_020D3490:
	mov r0, #1
	str r0, [sp]
	mov r0, #0
	str r0, [sp, #4]
	add r3, r8, r1
	ldr r2, [r6, #0xc]
	mov r0, r7
	mov r1, r4
	bl FUN_ov15_020cf3a8
	cmp r0, #0
	addlt sp, sp, #0x10
	movlt r0, #0
	ldmltfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
	ldr r11, [r10, #0x328]
	add r1, sp, #0xc
	ldrsb r0, [r8, r11]
	and r2, r11, #1
	strb r0, [r1, r2]
	cmp r0, #0x3b
	beq _020D34FC
	cmp r0, #0xa
	subeq r1, r11, #1
	andeq r2, r1, #1
	addeq r1, sp, #0xc
	ldreqsb r1, [r1, r2]
	cmpeq r1, #0xd
	bne _020D3558
_020D34FC:
	cmp r0, #0xa
	subeq r11, r11, #1
	beq _020D3528
	ldr r2, [r6, #0xc]
	mov r0, r7
	mov r1, r4
	bl FUN_ov15_020d12b8
	cmp r0, #0
	addle sp, sp, #0x10
	movle r0, #0
	ldmlefd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_020D3528:
	cmp r11, #0
	addeq sp, sp, #0x10
	moveq r0, #0
	ldmeqfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
	mov r0, r8
	mov r1, r11
	bl FUN_ov15_020cf770
	movs r9, r0
	bpl _020D356C
	add sp, sp, #0x10
	mov r0, #0
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_020D3558:
	ldr r0, [r10, #0x328]
	add r1, r0, #1
	str r1, [r10, #0x328]
	cmp r1, #0x4000
	blt _020D3490
_020D356C:
	ldr r0, [r10, #0x328]
	mov r11, #0
	cmp r0, #0x4000
	moveq r0, #7
	streq r0, [r10, #0x330]
	addeq sp, sp, #0x10
	moveq r0, r11
	ldmeqfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
	cmp r9, #0
	ble _020D3684
	ldr r0, [sp, #8]
	mov r1, r9
	bl FUN_ov15_020d4028
	cmp r9, #0
	ble _020D3478
	add r11, r10, #0x104
_020D35AC:
	ldr r0, [r10, #0x330]
	cmp r0, #6
	beq _020D35DC
	mov r0, r7
	mov r1, r5
	bl FUN_ov15_020d15a8
	cmp r0, #0
	moveq r0, #6
	streq r0, [r10, #0x330]
	streq r11, [r5, #0x28]
	moveq r0, #0x200
	streq r0, [r5, #0x1c]
_020D35DC:
	ldr r0, [r10, #0x330]
	mov r1, r4
	cmp r0, #6
	str r9, [sp]
	mov r0, #0
	str r0, [sp, #4]
	mov r0, r7
	bne _020D3608
	ldr r2, [r6, #0xc]
	mov r3, #0
	b _020D3610
_020D3608:
	ldr r2, [r6, #0xc]
	ldr r3, [r5, #4]
_020D3610:
	bl FUN_ov15_020d0688
	cmp r0, #0
	addle sp, sp, #0x10
	movle r0, #0
	ldmlefd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
	ldr r1, [r5, #4]
	subs r9, r9, r0
	add r1, r1, r0
	str r1, [r5, #4]
	ldr r1, [r5, #8]
	add r0, r1, r0
	str r0, [r5, #8]
	bne _020D3678
	mov r0, #2
	str r0, [sp]
	mov r0, #0
	str r0, [sp, #4]
	ldr r2, [r6, #0xc]
	mov r0, r7
	mov r1, r4
	mov r3, r8
	bl FUN_ov15_020cf3a8
	cmp r0, #0
	addle sp, sp, #0x10
	movle r0, #0
	ldmlefd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_020D3678:
	cmp r9, #0
	bgt _020D35AC
	b _020D3478
_020D3684:
	ldr r2, [r6, #0xc]
	mov r0, r7
	mov r1, r4
	bl FUN_ov15_020d12b8
	str r11, [r10, #0x330]
	b _020D3748
_020D369C:
	add r8, r10, #0x104
	mov r11, #6
_020D36A4:
	mov r0, r7
	mov r1, r5
	bl FUN_ov15_020d15a8
	cmp r0, #0
	streq r11, [r10, #0x330]
	streq r8, [r5, #0x28]
	moveq r0, #0x200
	streq r0, [r5, #0x1c]
	ldr r0, [r10, #0x330]
	cmp r0, #6
	bne _020D36E8
	str r9, [sp]
	ldr r2, [r6, #0xc]
	mov r0, r7
	mov r1, r4
	mov r3, r9
	b _020D3700
_020D36E8:
	mov r0, #0
	str r0, [sp]
	ldr r2, [r6, #0xc]
	ldr r3, [r5, #4]
	mov r0, r7
	mov r1, r4
_020D3700:
	bl FUN_ov15_020d0654
	cmp r0, #0
	addlt sp, sp, #0x10
	movlt r0, #0
	ldmltfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
	bne _020D372C
	ldr r1, [r10, #0x330]
	mov r0, #0
	cmp r1, #6
	strne r0, [r10, #0x330]
	b _020D3748
_020D372C:
	ldr r1, [r5, #4]
	add r1, r1, r0
	str r1, [r5, #4]
	ldr r1, [r5, #8]
	add r0, r1, r0
	str r0, [r5, #8]
	b _020D36A4
_020D3748:
	mov r0, r7
	mov r1, r5
	bl FUN_ov15_020d3cb8
	ldr r2, [r10, #0x330]
	mov r1, r0
	cmp r2, #0
	bne _020D3774
	cmp r1, #0
	beq _020D3774
	mov r0, r7
	bl FUN_ov15_020d3e58
_020D3774:
	mov r0, #1
	add sp, sp, #0x10
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
	arm_func_end FUN_ov15_020d32a4

	arm_func_start FUN_ov15_020d3780
FUN_ov15_020d3780: ; 0x020D3780
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, lr}
	sub sp, sp, #0x340
	bl FUN_ov15_020d3fd0
	mov r4, r0
	bl FUN_ov15_020d4004
	mov r8, r0
	mov r0, r4
	bl FUN_ov15_020d4010
	add r7, sp, #0
	mov r9, r0
	mov r0, r7
	bl FUN_ov15_020d24cc
	ldr r0, [r8, #0x18]
	cmp r0, #0
	addne sp, sp, #0x340
	ldmnefd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
	mov r4, #1
	mov r6, #0
	mov r5, r4
_020D37CC:
	ldr r0, [sp, #0x334]
	cmp r0, #0
	bne _020D3814
	mov r0, r7
	bl FUN_ov15_020d2664
	cmp r0, #0
	beq _020D38E0
	ldr r0, [r9]
	ldr r0, [r0, #0xc]
	ldr r0, [r0]
	cmp r0, #0
	mov r0, r7
	beq _020D3804
_020D3800:
	b _020D38DC
_020D3804:
	bl FUN_ov15_020d26dc
	cmp r0, #0
	bne _020D3814
	b _020D38D8
_020D3814:
	ldr r0, [sp, #0x334]
	cmp r0, #1
	mov r0, r7
	streq r6, [sp, #0x334]
	bl FUN_ov15_020d27f4
	cmp r0, #0
	mov r0, r7
	bne _020D3838
	b _020D3800
_020D3838:
	bl FUN_ov15_020d2988
	cmp r0, #0
	beq _020D3860
	cmp r0, #1
	beq _020D385C
	cmp r0, #2
	bne _020D3860
	str r5, [sp, #0x334]
	b _020D38E0
_020D385C:
	b _020D38D8
_020D3860:
	mov r0, r7
	bl FUN_ov15_020d2a94
	cmp r0, #3
	addls pc, pc, r0, lsl #2
	b _020D3890
_020D3874: ; jump table
	b _020D3890 ; case 0
	b _020D388C ; case 1
	b _020D3884 ; case 2
	b _020D388C ; case 3
_020D3884:
	str r4, [sp, #0x334]
	b _020D38E0
_020D388C:
	b _020D38D8
_020D3890:
	ldr r0, [r9]
	ldr r0, [r0, #0xc]
	ldr r0, [r0]
	cmp r0, #0
	mov r0, r7
	beq _020D38AC
	b _020D3800
_020D38AC:
	bl FUN_ov15_020d2e14
	cmp r0, #0
	mov r0, r7
	bne _020D38C0
	b _020D3800
_020D38C0:
	bl FUN_ov15_020d2fe0
	cmp r0, #0
	mov r0, r7
	bne _020D38D4
	b _020D3800
_020D38D4:
	bl FUN_ov15_020d32a4
_020D38D8:
	mov r0, r7
_020D38DC:
	bl FUN_ov15_020d251c
_020D38E0:
	ldr r0, [r8, #0x18]
	cmp r0, #0
	beq _020D37CC
	add sp, sp, #0x340
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
	arm_func_end FUN_ov15_020d3780

	arm_func_start FUN_ov15_020d38f4
FUN_ov15_020d38f4: ; 0x020D38F4
	stmfd sp!, {r4, r5, r6, lr}
	mov r6, r0
	mov r5, r1
	mov r4, r2
	bl FUN_ov15_020d3fd0
	mov r1, r6
	mov r2, r5
	mov r3, r4
	bl FUN_ov15_020cfbd8
	cmp r0, #0
	moveq r0, #1
	movne r0, #0
	rsb r0, r0, #0
	ldmfd sp!, {r4, r5, r6, pc}
	arm_func_end FUN_ov15_020d38f4

	arm_func_start FUN_ov15_020d392c
FUN_ov15_020d392c: ; 0x020D392C
	stmfd sp!, {r4, lr}
	mov r4, r0
	bl FUN_ov15_020d3fd0
	mov r1, r4
	bl FUN_ov15_020cfcd4
	ldmfd sp!, {r4, pc}
	arm_func_end FUN_ov15_020d392c

	arm_func_start FUN_ov15_020d3944
FUN_ov15_020d3944: ; 0x020D3944
	stmfd sp!, {r4, r5, r6, lr}
	mov r6, r0
	mov r5, r1
	mov r4, r2
	bl FUN_ov15_020d3fd0
	bl FUN_ov15_020d4020
	mov r1, r6
	bl FUN_ov15_020d3cd8
	mov r1, r5
	mov r2, r4
	bl FUN_ov15_020d3974
	ldmfd sp!, {r4, r5, r6, pc}
	arm_func_end FUN_ov15_020d3944

	arm_func_start FUN_ov15_020d3974
FUN_ov15_020d3974: ; 0x020D3974
	stmfd sp!, {r4, r5, r6, lr}
	mov r6, r0
	mov r5, r1
	mov r4, r2
	bl FUN_ov15_020d3fd0
	bl FUN_ov15_020d4004
	mov r1, r0
	cmp r6, #0
	mvneq r0, #0
	ldmeqfd sp!, {r4, r5, r6, pc}
	ldr r0, [r6, #4]
	cmp r0, #0
	mvnne r0, #0
	ldmnefd sp!, {r4, r5, r6, pc}
	mov r0, r6
	mov r2, r5
	mov r3, r4
	bl FUN_ov15_020cff7c
	cmp r0, #0
	moveq r0, #1
	movne r0, #0
	rsb r0, r0, #0
	ldmfd sp!, {r4, r5, r6, pc}
	arm_func_end FUN_ov15_020d3974

	arm_func_start FUN_ov15_020d39d0
FUN_ov15_020d39d0: ; 0x020D39D0
	stmfd sp!, {r4, r5, r6, r7, r8, lr}
	mov r8, r0
	mov r7, r1
	mov r6, r2
	bl FUN_ov15_020d3fd0
	mov r5, r0
	bl FUN_ov15_020d4004
	mov r4, r0
	mov r0, r5
	bl FUN_ov15_020d4020
	mov r1, r8
	bl FUN_ov15_020d3cd8
	mov r1, r4
	mov r2, r7
	mov r3, r6
	bl FUN_ov15_020cff9c
	cmp r0, #0
	moveq r0, #1
	movne r0, #0
	rsb r0, r0, #0
	ldmfd sp!, {r4, r5, r6, r7, r8, pc}
	arm_func_end FUN_ov15_020d39d0

	arm_func_start FUN_ov15_020d3a24
FUN_ov15_020d3a24: ; 0x020D3A24
	stmfd sp!, {r4, r5, r6, lr}
	mov r6, r0
	mov r5, r1
	mov r4, r2
	bl FUN_ov15_020d3fd0
	bl FUN_ov15_020d4020
	mov r1, r6
	bl FUN_ov15_020d3cf4
	cmp r0, #0
	mvneq r0, #0
	ldmeqfd sp!, {r4, r5, r6, pc}
	mov r1, r5
	mov r2, r4
	bl FUN_ov15_020d1034
	ldmfd sp!, {r4, r5, r6, pc}
	arm_func_end FUN_ov15_020d3a24

	arm_func_start FUN_ov15_020d3a60
FUN_ov15_020d3a60: ; 0x020D3A60
	stmfd sp!, {r3, r4, r5, lr}
	mov r5, r0
	mov r4, r1
	bl FUN_ov15_020d3fd0
	bl FUN_ov15_020d4020
	mov r1, r5
	bl FUN_ov15_020d3cd8
	cmp r0, #0
	mvneq r0, #0
	strne r4, [r0, #0xd0]
	movne r0, #0
	ldmfd sp!, {r3, r4, r5, pc}
	arm_func_end FUN_ov15_020d3a60

	arm_func_start FUN_ov15_020d3a90
FUN_ov15_020d3a90: ; 0x020D3A90
	stmfd sp!, {r4, r5, r6, lr}
	mov r6, r0
	mov r5, r1
	mov r4, r2
	bl FUN_ov15_020d3fd0
	bl FUN_ov15_020d4020
	mov r1, r6
	bl FUN_ov15_020d3cd8
	mov r1, r5
	mov r2, r4
	bl FUN_ov15_020d3ac0
	ldmfd sp!, {r4, r5, r6, pc}
	arm_func_end FUN_ov15_020d3a90

	arm_func_start FUN_ov15_020d3ac0
FUN_ov15_020d3ac0: ; 0x020D3AC0
	cmp r0, #0
	mvneq r0, #0
	bxeq lr
	mov r3, #0
	str r3, [r0, #0xc8]
	str r3, [r0, #0xdc]
	str r1, [r0, #0xc0]
	str r2, [r0, #0xc4]
	mov r0, r3
	bx lr
	arm_func_end FUN_ov15_020d3ac0

	arm_func_start FUN_ov15_020d3ae8
FUN_ov15_020d3ae8: ; 0x020D3AE8
	stmfd sp!, {r4, lr}
	ldr r0, _020D3B24 ; =0x020E92D0
	ldr r4, _020D3B28 ; =0x020E92D8
	ldr r0, [r0, #8]
	cmp r0, #0
	bne _020D3B1C
	add r0, r4, #4
	bl FUN_ov15_020cef60
	mov r1, #0
	mov r0, #1
	str r1, [r4, #0x20]
	str r1, [r4, #0x1c]
	str r0, [r4]
_020D3B1C:
	mov r0, r4
	ldmfd sp!, {r4, pc}
_020D3B24: .word ov15_020E92D0
_020D3B28: .word ov15_020E92D8
	arm_func_end FUN_ov15_020d3ae8

	arm_func_start FUN_ov15_020d3b2c
FUN_ov15_020d3b2c: ; 0x020D3B2C
	stmfd sp!, {r3, r4, r5, lr}
	mov r5, r0
	bl FUN_ov15_020d3ae8
	ldr r1, [r5, #0xc]
	mov r4, r0
	cmp r1, #0
	ldmeqfd sp!, {r3, r4, r5, pc}
_020D3B48:
	add r0, r4, #0x1c
	bl OS_SleepThread
	ldr r0, [r5, #0xc]
	cmp r0, #0
	bne _020D3B48
	ldmfd sp!, {r3, r4, r5, pc}
	arm_func_end FUN_ov15_020d3b2c

	arm_func_start FUN_ov15_020d3b60
FUN_ov15_020d3b60: ; 0x020D3B60
	stmfd sp!, {r4, lr}
	mov r4, r0
	bl FUN_ov15_020d3ae8
	mov r1, #0
	add r0, r0, #0x1c
	str r1, [r4, #0xc]
	bl OS_WakeupThread
	ldmfd sp!, {r4, pc}
	arm_func_end FUN_ov15_020d3b60

	arm_func_start FUN_ov15_020d3b80
FUN_ov15_020d3b80: ; 0x020D3B80
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	mov r5, r2
	mov r7, r0
	mov r6, r1
	mov r4, #0
	bl FUN_ov15_020d4094
	cmp r5, #3
	bne _020D3BB8
	ldr r0, _020D3C48 ; =0x020E92D0
	mov r4, r6
	ldr r1, [r0]
	str r1, [r6, #0x20]
	str r6, [r0]
	b _020D3C38
_020D3BB8:
	ldr r0, _020D3C48 ; =0x020E92D0
	ldr r1, _020D3C4C ; =0x020E92D0
	ldr r2, [r0]
	cmp r2, #0
	beq _020D3C38
_020D3BCC:
	cmp r5, #4
	addls pc, pc, r5, lsl #2
	b _020D3C1C
_020D3BD8: ; jump table
	b _020D3BEC ; case 0
	b _020D3BF4 ; case 1
	b _020D3BFC ; case 2
	b _020D3C1C ; case 3
	b _020D3C0C ; case 4
_020D3BEC:
	cmp r2, r6
	b _020D3C04
_020D3BF4:
	ldr r0, [r2, #0x10]
	b _020D3C00
_020D3BFC:
	ldr r0, [r2, #0x14]
_020D3C00:
	cmp r0, r6
_020D3C04:
	moveq r4, r2
	b _020D3C1C
_020D3C0C:
	cmp r2, r6
	ldreq r4, [r1]
	ldreq r0, [r4, #0x20]
	streq r0, [r1]
_020D3C1C:
	cmp r4, #0
	bne _020D3C38
	ldr r0, [r1]
	ldr r2, [r0, #0x20]
	add r1, r0, #0x20
	cmp r2, #0
	bne _020D3BCC
_020D3C38:
	mov r0, r7
	bl FUN_ov15_020d40a0
	mov r0, r4
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_020D3C48: .word ov15_020E92D0
_020D3C4C: .word ov15_020E92D0
	arm_func_end FUN_ov15_020d3b80

	arm_func_start FUN_ov15_020d3c50
FUN_ov15_020d3c50: ; 0x020D3C50
	stmfd sp!, {r3, lr}
	mov r2, #3
	bl FUN_ov15_020d3b80
	cmp r0, #0
	moveq r0, #1
	movne r0, #0
	rsb r0, r0, #0
	ldmfd sp!, {r3, pc}
	arm_func_end FUN_ov15_020d3c50

	arm_func_start FUN_ov15_020d3c70
FUN_ov15_020d3c70: ; 0x020D3C70
	stmfd sp!, {r3, lr}
	mov r2, #4
	bl FUN_ov15_020d3b80
	cmp r0, #0
	moveq r0, #1
	movne r0, #0
	rsb r0, r0, #0
	ldmfd sp!, {r3, pc}
	arm_func_end FUN_ov15_020d3c70

	arm_func_start FUN_ov15_020d3c90
FUN_ov15_020d3c90: ; 0x020D3C90
	stmfd sp!, {r3, lr}
	bl FUN_ov15_020d3cc8
	cmp r0, #0
	ldrne r0, [r0, #0x14]
	moveq r0, #0
	ldmfd sp!, {r3, pc}
	arm_func_end FUN_ov15_020d3c90

	arm_func_start FUN_ov15_020d3ca8
FUN_ov15_020d3ca8: ; 0x020D3CA8
	ldr r12, _020D3CB4 ; =FUN_ov15_020d3b80
	mov r2, #1
	bx r12
_020D3CB4: .word FUN_ov15_020d3b80
	arm_func_end FUN_ov15_020d3ca8

	arm_func_start FUN_ov15_020d3cb8
FUN_ov15_020d3cb8: ; 0x020D3CB8
	ldr r12, _020D3CC4 ; =FUN_ov15_020d3b80
	mov r2, #2
	bx r12
_020D3CC4: .word FUN_ov15_020d3b80
	arm_func_end FUN_ov15_020d3cb8

	arm_func_start FUN_ov15_020d3cc8
FUN_ov15_020d3cc8: ; 0x020D3CC8
	ldr r12, _020D3CD4 ; =FUN_ov15_020d3b80
	mov r2, #0
	bx r12
_020D3CD4: .word FUN_ov15_020d3b80
	arm_func_end FUN_ov15_020d3cc8

	arm_func_start FUN_ov15_020d3cd8
FUN_ov15_020d3cd8: ; 0x020D3CD8
	stmfd sp!, {r4, lr}
	mov r4, r1
	bl FUN_ov15_020d3cc8
	cmp r0, #0
	ldrne r4, [r0, #0x10]
	mov r0, r4
	ldmfd sp!, {r4, pc}
	arm_func_end FUN_ov15_020d3cd8

	arm_func_start FUN_ov15_020d3cf4
FUN_ov15_020d3cf4: ; 0x020D3CF4
	stmfd sp!, {r4, lr}
	mov r4, r1
	bl FUN_ov15_020d3cc8
	cmp r0, #0
	ldrne r4, [r0, #0x14]
	mov r0, r4
	ldmfd sp!, {r4, pc}
	arm_func_end FUN_ov15_020d3cf4

	arm_func_start FUN_ov15_020d3d10
FUN_ov15_020d3d10: ; 0x020D3D10
	ldr r1, _020D3D38 ; =0x020E92D0
	mov r0, #0
	ldr r1, [r1]
	cmp r1, #0
	bxeq lr
_020D3D24:
	ldr r1, [r1, #0x20]
	add r0, r0, #1
	cmp r1, #0
	bne _020D3D24
	bx lr
_020D3D38: .word ov15_020E92D0
	arm_func_end FUN_ov15_020d3d10

	arm_func_start FUN_ov15_020d3d3c
FUN_ov15_020d3d3c: ; 0x020D3D3C
	stmfd sp!, {r4, r5, r6, r7, r8, lr}
	sub sp, sp, #0x10
	mov r5, r0
	mov r4, r1
	mov r8, r2
	mov r7, r3
	mvn r6, #0
	bl FUN_ov15_020d3cc8
	cmp r0, #0
	beq _020D3DC0
	mov r0, r5
	mov r1, r4
	bl FUN_ov15_020d3c90
	cmp r0, #0
	ldrne r3, [r4, #0x1c]
	cmpne r3, #0
	beq _020D3DC0
	str r8, [sp]
	ldr r0, [r4, #0x24]
	add r2, sp, #0
	str r0, [sp, #4]
	ldr r1, [r4, #0x28]
	mov r0, r4
	str r1, [sp, #8]
	mov r1, #1
	str r7, [sp, #0xc]
	blx r3
	mov r6, r0
	ldr r2, [sp, #4]
	ldr r3, [sp, #8]
	mov r0, r5
	mov r1, r4
	bl FUN_ov15_020d3f14
_020D3DC0:
	mov r0, r6
	add sp, sp, #0x10
	ldmfd sp!, {r4, r5, r6, r7, r8, pc}
	arm_func_end FUN_ov15_020d3d3c

	arm_func_start FUN_ov15_020d3dcc
FUN_ov15_020d3dcc: ; 0x020D3DCC
	stmfd sp!, {r3, r4, r5, lr}
	sub sp, sp, #0x10
	mov r5, r0
	mov r4, r1
	bl FUN_ov15_020d3cc8
	cmp r0, #0
	addeq sp, sp, #0x10
	ldmeqfd sp!, {r3, r4, r5, pc}
	mov r0, r5
	mov r1, r4
	bl FUN_ov15_020d3c90
	cmp r0, #0
	ldrne r12, [r4, #0x1c]
	cmpne r12, #0
	addeq sp, sp, #0x10
	ldmeqfd sp!, {r3, r4, r5, pc}
	ldr r1, [r0, #0x28]
	add r2, sp, #4
	str r1, [sp, #4]
	ldr r3, [r0, #0x1c]
	mov r1, #2
	str r3, [sp, #8]
	ldr r3, [r0, #4]
	mov r0, r4
	str r3, [sp, #0xc]
	blx r12
	ldr r1, [sp, #0xc]
	mov r0, r5
	str r1, [sp]
	ldr r2, [sp, #4]
	ldr r3, [sp, #8]
	mov r1, r4
	bl FUN_ov15_020d3f3c
	add sp, sp, #0x10
	ldmfd sp!, {r3, r4, r5, pc}
	arm_func_end FUN_ov15_020d3dcc

	arm_func_start FUN_ov15_020d3e58
FUN_ov15_020d3e58: ; 0x020D3E58
	stmfd sp!, {r3, r4, r5, lr}
	sub sp, sp, #0x10
	mov r5, r0
	mov r4, r1
	bl FUN_ov15_020d3cc8
	cmp r0, #0
	addeq sp, sp, #0x10
	ldmeqfd sp!, {r3, r4, r5, pc}
	mov r0, r5
	mov r1, r4
	bl FUN_ov15_020d3c90
	cmp r0, #0
	ldrne r12, [r4, #0x1c]
	cmpne r12, #0
	addeq sp, sp, #0x10
	ldmeqfd sp!, {r3, r4, r5, pc}
	ldr r1, [r0, #0x28]
	add r2, sp, #4
	str r1, [sp, #4]
	ldr r3, [r0, #0x1c]
	mov r1, #3
	str r3, [sp, #8]
	ldr r3, [r0, #4]
	mov r0, r4
	str r3, [sp, #0xc]
	blx r12
	ldr r1, [sp, #0xc]
	mov r0, r5
	str r1, [sp]
	ldr r2, [sp, #4]
	ldr r3, [sp, #8]
	mov r1, r4
	bl FUN_ov15_020d3f3c
	add sp, sp, #0x10
	ldmfd sp!, {r3, r4, r5, pc}
	arm_func_end FUN_ov15_020d3e58

	arm_func_start FUN_ov15_020d3ee4
FUN_ov15_020d3ee4: ; 0x020D3EE4
	stmfd sp!, {r4, lr}
	mov r4, r1
	bl FUN_ov15_020d3cc8
	cmp r0, #0
	ldrne r3, [r4, #0x1c]
	cmpne r3, #0
	ldmeqfd sp!, {r4, pc}
	mov r0, r4
	mov r1, #4
	mov r2, #0
	blx r3
	ldmfd sp!, {r4, pc}
	arm_func_end FUN_ov15_020d3ee4

	arm_func_start FUN_ov15_020d3f14
FUN_ov15_020d3f14: ; 0x020D3F14
	stmfd sp!, {r3, r4, r5, lr}
	mov r5, r2
	mov r4, r3
	bl FUN_ov15_020d3cc8
	cmp r0, #0
	mvneq r0, #0
	strne r5, [r0, #0x24]
	strne r4, [r0, #0x28]
	movne r0, #0
	ldmfd sp!, {r3, r4, r5, pc}
	arm_func_end FUN_ov15_020d3f14

	arm_func_start FUN_ov15_020d3f3c
FUN_ov15_020d3f3c: ; 0x020D3F3C
	stmfd sp!, {r4, r5, r6, lr}
	mov r6, r0
	mov r5, r2
	mov r4, r3
	bl FUN_ov15_020d3cc8
	movs r1, r0
	beq _020D3F84
	mov r0, r6
	bl FUN_ov15_020d3c90
	cmp r0, #0
	mvneq r0, #0
	ldmeqfd sp!, {r4, r5, r6, pc}
	str r5, [r0, #0x28]
	ldr r1, [sp, #0x10]
	str r4, [r0, #0x1c]
	str r1, [r0, #4]
	mov r0, #0
	ldmfd sp!, {r4, r5, r6, pc}
_020D3F84:
	mvn r0, #0
	ldmfd sp!, {r4, r5, r6, pc}
	arm_func_end FUN_ov15_020d3f3c

	arm_func_start FUN_ov15_020d3f8c
FUN_ov15_020d3f8c: ; 0x020D3F8C
	stmfd sp!, {r4, lr}
	mov r4, r0
	bl FUN_ov15_020d4004
	bl FUN_ov15_020cfb28
	mov r0, r4
	bl FUN_ov15_020d4008
	bl FUN_ov15_020d0030
	mov r0, r4
	bl FUN_ov15_020d4010
	bl FUN_ov15_020d0704
	mov r0, r4
	bl FUN_ov15_020d4020
	bl FUN_ov15_020d4060
	mov r0, r4
	bl FUN_ov15_020d4018
	bl FUN_ov15_020d1140
	ldmfd sp!, {r4, pc}
	arm_func_end FUN_ov15_020d3f8c

	arm_func_start FUN_ov15_020d3fd0
FUN_ov15_020d3fd0: ; 0x020D3FD0
	stmfd sp!, {r4, lr}
	ldr r1, _020D3FFC ; =0x020E92D0
	ldr r4, [r1, #4]
	cmp r4, #0
	bne _020D3FF4
	ldr r4, _020D4000 ; =0x020E9300
	mov r0, r4
	str r4, [r1, #4]
	bl FUN_ov15_020d3f8c
_020D3FF4:
	mov r0, r4
	ldmfd sp!, {r4, pc}
_020D3FFC: .word ov15_020E92D0
_020D4000: .word ov15_020E9300
	arm_func_end FUN_ov15_020d3fd0

	arm_func_start FUN_ov15_020d4004
FUN_ov15_020d4004: ; 0x020D4004
	bx lr
	arm_func_end FUN_ov15_020d4004

	arm_func_start FUN_ov15_020d4008
FUN_ov15_020d4008: ; 0x020D4008
	add r0, r0, #0x28
	bx lr
	arm_func_end FUN_ov15_020d4008

	arm_func_start FUN_ov15_020d4010
FUN_ov15_020d4010: ; 0x020D4010
	add r0, r0, #0x30
	bx lr
	arm_func_end FUN_ov15_020d4010

	arm_func_start FUN_ov15_020d4018
FUN_ov15_020d4018: ; 0x020D4018
	add r0, r0, #0x50
	bx lr
	arm_func_end FUN_ov15_020d4018

	arm_func_start FUN_ov15_020d4020
FUN_ov15_020d4020: ; 0x020D4020
	add r0, r0, #0x34
	bx lr
	arm_func_end FUN_ov15_020d4020

	arm_func_start FUN_ov15_020d4028
FUN_ov15_020d4028: ; 0x020D4028
	cmp r0, #0
	strne r1, [r0, #0x2c]
	bx lr
	arm_func_end FUN_ov15_020d4028

	arm_func_start FUN_ov15_020d4034
FUN_ov15_020d4034: ; 0x020D4034
	stmfd sp!, {r3, lr}
	ldr r0, _020D405C ; =0x020E92D0
	ldr r0, [r0]
	cmp r0, #0
	beq _020D404C
	bl FUN_ov15_020d3d10
_020D404C:
	ldr r0, _020D405C ; =0x020E92D0
	mov r1, #0
	str r1, [r0]
	ldmfd sp!, {r3, pc}
_020D405C: .word ov15_020E92D0
	arm_func_end FUN_ov15_020d4034

	arm_func_start FUN_ov15_020d4060
FUN_ov15_020d4060: ; 0x020D4060
	mov r1, #0
	str r1, [r0, #0x18]
	bx lr
	arm_func_end FUN_ov15_020d4060

	arm_func_start FUN_ov15_020d406c
FUN_ov15_020d406c: ; 0x020D406C
	stmfd sp!, {r4, lr}
	mov r4, r0
	ldr r1, [r4, #0x18]
	cmp r1, #0
	ldmnefd sp!, {r4, pc}
	bl FUN_ov15_020cef60
	mov r0, #1
	str r0, [r4, #0x18]
	ldmfd sp!, {r4, pc}
	arm_func_end FUN_ov15_020d406c

	arm_func_start FUN_ov15_020d4090
FUN_ov15_020d4090: ; 0x020D4090
	bx lr
	arm_func_end FUN_ov15_020d4090

	arm_func_start FUN_ov15_020d4094
FUN_ov15_020d4094: ; 0x020D4094
	ldr r12, _020D409C ; =FUN_ov15_020cef6c
	bx r12
_020D409C: .word FUN_ov15_020cef6c
	arm_func_end FUN_ov15_020d4094

	arm_func_start FUN_ov15_020d40a0
FUN_ov15_020d40a0: ; 0x020D40A0
	ldr r12, _020D40A8 ; =OS_UnlockMutex
	bx r12
_020D40A8: .word OS_UnlockMutex
	arm_func_end FUN_ov15_020d40a0

	arm_func_start FUN_ov15_020d40ac
FUN_ov15_020d40ac: ; 0x020D40AC
	stmfd sp!, {r3, r4, r5, lr}
	mov r4, r1
	mov r5, r0
	bl FUN_ov15_020d4094
	add r1, r4, #0x8000
	ldr r2, [r1, #0x48]
	mov r0, r5
	add r2, r2, #1
	str r2, [r1, #0x48]
	bl FUN_ov15_020d40a0
	add r0, r4, #0x8000
	ldr r0, [r0, #0x48]
	ldmfd sp!, {r3, r4, r5, pc}
	arm_func_end FUN_ov15_020d40ac

	arm_func_start FUN_ov15_020d40e0
FUN_ov15_020d40e0: ; 0x020D40E0
	stmfd sp!, {r3, r4, r5, lr}
	mov r4, r1
	mov r5, r0
	bl FUN_ov15_020d4094
	add r1, r4, #0x8000
	ldr r2, [r1, #0x48]
	mov r0, r5
	sub r2, r2, #1
	str r2, [r1, #0x48]
	bl FUN_ov15_020d40a0
	add r0, r4, #0x8000
	ldr r0, [r0, #0x48]
	ldmfd sp!, {r3, r4, r5, pc}
	arm_func_end FUN_ov15_020d40e0

	arm_func_start FUN_ov15_020d4114
FUN_ov15_020d4114: ; 0x020D4114
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, lr}
	sub sp, sp, #0x10
	mov r10, r0
	mov r9, r1
	mov r8, r2
	mov r7, r3
	bl FUN_ov15_020d3fd0
	mov r4, r0
	bl FUN_ov15_020d4004
	mov r6, r0
	mov r0, r4
	bl FUN_ov15_020d4020
	ldr r11, _020D4248 ; =0x0000804C
	mov r5, r0
	mov r0, r11
	mov r1, #0x20
	bl FUN_ov15_020cfb6c
	movs r4, r0
	bne _020D4178
	mov r0, r6
	mov r1, #1
	bl FUN_ov15_020cfbc0
	add sp, sp, #0x10
	mov r0, #0
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_020D4178:
	mov r1, r11
	bl FUN_ov15_020cf550
	ldr r0, [sp, #0x3c]
	str r7, [sp]
	str r0, [sp, #4]
	mov r7, #0
	str r7, [sp, #8]
	mov r0, r6
	mov r1, r10
	mov r2, r9
	mov r3, r8
	str r7, [sp, #0xc]
	bl FUN_ov15_020d0710
	str r0, [r4, #0x10]
	cmp r0, #0
	bne _020D41CC
	mov r0, r4
	bl FUN_ov15_020cfb9c
	add sp, sp, #0x10
	mov r0, r7
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_020D41CC:
	ldr r1, [r0, #0x2c]
	ldr r0, [sp, #0x38]
	str r1, [r4, #0x14]
	str r7, [r4]
	str r0, [r4, #0x1c]
	str r7, [r4, #0x24]
	mov r0, r5
	mov r1, r4
	str r7, [r4, #0x28]
	sub r2, r7, #1
	str r2, [r4, #0x18]
	bl FUN_ov15_020d3c50
	mov r0, #0xf
	stmib r4, {r0, r7}
	mov r5, #1
	mov r0, r4
	mov r1, r7
	str r5, [r4, #0xc]
	bl FUN_ov15_020d4028
	str r7, [r4, #0x30]
	add r2, r4, #0x8000
	str r7, [r2, #0x40]
	add r0, r4, #0x40
	mov r1, #0x8000
	str r7, [r2, #0x44]
	bl FUN_ov15_020cf550
	add r1, r4, #0x8000
	mov r0, r4
	str r5, [r1, #0x48]
	add sp, sp, #0x10
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_020D4248: .word 0x0000804C
	arm_func_end FUN_ov15_020d4114

	arm_func_start FUN_ov15_020d424c
FUN_ov15_020d424c: ; 0x020D424C
	stmfd sp!, {r4, lr}
	mov r4, r0
	bl FUN_ov15_020d3fd0
	bl FUN_ov15_020d4020
	mov r1, r4
	bl FUN_ov15_020d3cc8
	cmp r0, #0
	mvneq r0, #0
	ldmeqfd sp!, {r4, pc}
	bl FUN_ov15_020d4278
	ldmfd sp!, {r4, pc}
	arm_func_end FUN_ov15_020d424c

	arm_func_start FUN_ov15_020d4278
FUN_ov15_020d4278: ; 0x020D4278
	stmfd sp!, {r4, r5, r6, lr}
	mov r5, r0
	bl FUN_ov15_020d3fd0
	mov r6, r0
	bl FUN_ov15_020d4020
	mov r4, r0
	mov r0, r6
	bl FUN_ov15_020d4018
	cmp r5, #0
	mvneq r0, #0
	ldmeqfd sp!, {r4, r5, r6, pc}
	add r0, r5, #0x8000
	ldr r0, [r0, #0x48]
	cmp r0, #0
	ble _020D42D0
	ldr r1, [r5, #0x18]
	cmp r1, #0
	blt _020D42D0
	mov r0, r6
	bl FUN_ov15_020d0d58
	mvn r0, #0
	str r0, [r5, #0x18]
_020D42D0:
	mov r0, r4
	mov r1, r5
	bl FUN_ov15_020d40e0
	cmp r0, #0
	movgt r0, #0
	ldmgtfd sp!, {r4, r5, r6, pc}
	ldr r1, [r5, #0x10]
	cmp r1, #0
	beq _020D4308
	ldr r0, [r1, #4]
	cmp r0, #0
	bne _020D4308
	mov r0, r6
	bl FUN_ov15_020d0bf8
_020D4308:
	ldr r0, [r5, #0x14]
	cmp r0, #0
	beq _020D4334
	ldr r0, [r5, #0x10]
	cmp r0, #0
	beq _020D4328
	mov r0, r5
	bl FUN_ov15_020d4350
_020D4328:
	ldr r1, [r5, #0x14]
	mov r0, r4
	bl FUN_ov15_020d0e6c
_020D4334:
	mov r0, r4
	mov r1, r5
	bl FUN_ov15_020d3c70
	mov r0, r5
	bl FUN_ov15_020cfb9c
	mov r0, #0
	ldmfd sp!, {r4, r5, r6, pc}
	arm_func_end FUN_ov15_020d4278

	arm_func_start FUN_ov15_020d4350
FUN_ov15_020d4350: ; 0x020D4350
	stmfd sp!, {r4, r5, r6, r7, r8, lr}
	mov r8, r0
	bl FUN_ov15_020d3fd0
	mov r4, r0
	bl FUN_ov15_020d4018
	mov r7, r0
	mov r0, r4
	bl FUN_ov15_020d4020
	mov r1, r8
	bl FUN_ov15_020d3cc8
	movs r6, r0
	mvneq r0, #0
	ldmeqfd sp!, {r4, r5, r6, r7, r8, pc}
	mov r0, r8
	bl FUN_ov15_020d4484
	mov r4, #1
	mov r5, r0
	mov r0, r7
	mov r1, r4
	bl FUN_ov15_020cf030
	sub r0, r4, #2
	cmp r5, r0
	cmpne r5, #0
	beq _020D43C8
	mov r0, r8
	bl FUN_ov15_020d4550
	cmp r0, #0xf
	bne _020D43C8
	mov r0, r6
	bl FUN_ov15_020d3b2c
_020D43C8:
	mov r0, #0
	ldmfd sp!, {r4, r5, r6, r7, r8, pc}
	arm_func_end FUN_ov15_020d4350

	arm_func_start FUN_ov15_020d43d0
FUN_ov15_020d43d0: ; 0x020D43D0
	stmfd sp!, {r4, r5, r6, lr}
	mov r4, r0
	bl FUN_ov15_020d3fd0
	mov r6, r0
	bl FUN_ov15_020d4020
	mov r1, r4
	mov r5, r0
	bl FUN_ov15_020d3cc8
	movs r4, r0
	mvneq r0, #0
	ldmeqfd sp!, {r4, r5, r6, pc}
	ldr r1, [r4, #0x10]
	cmp r1, #0
	mvneq r0, #0
	ldmeqfd sp!, {r4, r5, r6, pc}
	mov r0, r6
	bl FUN_ov15_020d0cc0
	str r0, [r4, #0x18]
	cmp r0, #0
	blt _020D4434
	mov r2, #1
	mov r0, r5
	mov r1, r4
	str r2, [r4]
	bl FUN_ov15_020d40ac
_020D4434:
	mov r0, #0
	ldmfd sp!, {r4, r5, r6, pc}
	arm_func_end FUN_ov15_020d43d0

	arm_func_start FUN_ov15_020d443c
FUN_ov15_020d443c: ; 0x020D443C
	stmfd sp!, {r3, r4, r5, lr}
	mov r5, r0
	bl FUN_ov15_020d3fd0
	mov r4, r0
	bl FUN_ov15_020d4020
	mov r1, r5
	bl FUN_ov15_020d3cc8
	cmp r0, #0
	mvneq r0, #0
	ldmeqfd sp!, {r3, r4, r5, pc}
	ldr r1, [r0, #0x18]
	cmp r1, #0
	mvnlt r0, #0
	ldmltfd sp!, {r3, r4, r5, pc}
	mov r0, r4
	bl FUN_ov15_020d0d58
	mov r0, #0
	ldmfd sp!, {r3, r4, r5, pc}
	arm_func_end FUN_ov15_020d443c

	arm_func_start FUN_ov15_020d4484
FUN_ov15_020d4484: ; 0x020D4484
	stmfd sp!, {r4, lr}
	mov r4, r0
	bl FUN_ov15_020d3fd0
	bl FUN_ov15_020d4020
	mov r1, r4
	bl FUN_ov15_020d3cc8
	cmp r0, #0
	mvneq r0, #0
	ldrne r0, [r0]
	ldmfd sp!, {r4, pc}
	arm_func_end FUN_ov15_020d4484

	arm_func_start FUN_ov15_020d44ac
FUN_ov15_020d44ac: ; 0x020D44AC
	stmfd sp!, {r4, r5, r6, lr}
	mov r4, r0
	mov r6, r1
	mov r5, r2
	bl FUN_ov15_020d3fd0
	bl FUN_ov15_020d4020
	mov r1, r4
	mov r4, r0
	bl FUN_ov15_020d3cc8
	movs r1, r0
	beq _020D4504
	mov r0, r4
	bl FUN_ov15_020d3c90
	cmp r0, #0
	mvneq r0, #0
	ldmeqfd sp!, {r4, r5, r6, pc}
	ldr r1, [r0, #0x28]
	str r1, [r6]
	ldr r1, [r0, #0x1c]
	str r1, [r5]
	ldr r0, [r0, #4]
	ldmfd sp!, {r4, r5, r6, pc}
_020D4504:
	mvn r0, #0
	ldmfd sp!, {r4, r5, r6, pc}
	arm_func_end FUN_ov15_020d44ac

	arm_func_start FUN_ov15_020d450c
FUN_ov15_020d450c: ; 0x020D450C
	stmfd sp!, {r4, lr}
	mov r4, r0
	bl FUN_ov15_020d3fd0
	bl FUN_ov15_020d4020
	mov r1, r4
	mov r4, r0
	bl FUN_ov15_020d3cc8
	movs r1, r0
	beq _020D4548
	mov r0, r4
	bl FUN_ov15_020d3c90
	cmp r0, #0
	ldrne r0, [r0, #0x438]
	moveq r0, #0
	ldmfd sp!, {r4, pc}
_020D4548:
	mov r0, #0
	ldmfd sp!, {r4, pc}
	arm_func_end FUN_ov15_020d450c

	arm_func_start FUN_ov15_020d4550
FUN_ov15_020d4550: ; 0x020D4550
	stmfd sp!, {r4, lr}
	mov r4, r0
	bl FUN_ov15_020d3fd0
	bl FUN_ov15_020d4020
	mov r1, r4
	bl FUN_ov15_020d3cc8
	cmp r0, #0
	ldrne r0, [r0, #4]
	mvneq r0, #0
	ldmfd sp!, {r4, pc}
	arm_func_end FUN_ov15_020d4550

	arm_func_start FUN_ov15_020d4578
FUN_ov15_020d4578: ; 0x020D4578
	stmfd sp!, {r4, r5, r6, lr}
	mov r4, r0
	mov r6, r1
	mov r5, r2
	bl FUN_ov15_020d3fd0
	bl FUN_ov15_020d4020
	mov r1, r4
	mov r4, r0
	bl FUN_ov15_020d3cc8
	movs r1, r0
	beq _020D45E0
	mov r0, r4
	bl FUN_ov15_020d3c90
	cmp r0, #0
	beq _020D45D8
	ldr r1, [r0, #8]
	str r1, [r6]
	ldr r1, [r0, #0xc]
	cmn r1, #1
	moveq r0, #0
	ldrne r0, [r0, #0xc]
	str r0, [r5]
	mov r0, #0
	ldmfd sp!, {r4, r5, r6, pc}
_020D45D8:
	mvn r0, #0
	ldmfd sp!, {r4, r5, r6, pc}
_020D45E0:
	mvn r0, #0
	ldmfd sp!, {r4, r5, r6, pc}
	arm_func_end FUN_ov15_020d4578

	arm_func_start FUN_ov15_020d45e8
FUN_ov15_020d45e8: ; 0x020D45E8
	stmfd sp!, {r3, r4, r5, lr}
	mov r5, r0
	ldr r0, _020D4638 ; =_version_NINTENDO_WIFI
	bl OSi_ReferSymbol
	ldr r4, _020D463C ; =0x020E59F8
	ldr r0, [r4]
	cmp r0, #0
	movne r0, #0
	ldmnefd sp!, {r3, r4, r5, pc}
	bl FUN_ov15_020d6ab8
	str r5, [r4]
	bl FUN_ov15_020d4680
	bl FUN_ov15_020d4640
	movs r5, r0
	bpl _020D4630
	bl FUN_ov15_020d6674
	mov r0, #0
	str r0, [r4]
_020D4630:
	mov r0, r5
	ldmfd sp!, {r3, r4, r5, pc}
_020D4638: .word _version_NINTENDO_WIFI
_020D463C: .word ov15_020E59F8
	arm_func_end FUN_ov15_020d45e8

	arm_func_start FUN_ov15_020d4640
FUN_ov15_020d4640: ; 0x020D4640
	stmfd sp!, {r4, lr}
	ldr r0, _020D4674 ; =0x020E59F8
	ldr r0, [r0]
	ldr r0, [r0, #0x20]
	bl FUN_ov15_020d4898
	movs r4, r0
	bmi _020D466C
	ldr r0, _020D4678 ; =0x020E5A34
	bl FUN_ov15_020d4bcc
	ldr r1, _020D467C ; =0x020ED460
	str r0, [r1, #0xc]
_020D466C:
	mov r0, r4
	ldmfd sp!, {r4, pc}
_020D4674: .word ov15_020E59F8
_020D4678: .word ov15_020E5A34
_020D467C: .word ov15_020ED460
	arm_func_end FUN_ov15_020d4640

	arm_func_start FUN_ov15_020d4680
FUN_ov15_020d4680: ; 0x020D4680
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	ldr r7, _020D47CC ; =0x020E59F8
	ldr r5, _020D47D0 ; =0x020ED470
	mov r4, #0
	ldr r6, [r7]
	mov r0, r5
	mov r1, r4
	mov r2, #0x30
	bl MI_CpuFill8
	ldr r2, [r6, #0x18]
	ldr r0, _020D47D4 ; =0x020ED460
	ldr r1, _020D47D8 ; =FUN_ov15_020d4880
	str r2, [r0, #0x14]
	ldr r2, [r6, #0x1c]
	str r2, [r0, #0x18]
	str r1, [r0, #0x20]
	str r4, [r0, #0x24]
	str r4, [r0, #0x28]
	ldr r1, [r0]
	str r1, [r0, #0x3c]
	ldr r0, [r6, #0x24]
	cmp r0, #0
	ldreq r0, [r7, #4]
	str r0, [r5, #0x20]
	ldr r0, [r6, #0x28]
	cmp r0, #0
	bne _020D4700
	ldr r1, _020D47CC ; =0x020E59F8
	ldr r0, [r5, #0x20]
	ldr r1, [r1]
	ldr r1, [r1, #0x18]
	blx r1
_020D4700:
	str r0, [r5, #0x1c]
	ldr r2, [r6, #0x30]
	ldr r0, _020D47DC ; =0x000005DC
	cmp r2, #0
	moveq r2, #0x240
	cmp r2, r0
	movgt r2, r0
	bgt _020D4728
	cmp r2, #0x240
	movlt r2, #0x240
_020D4728:
	ldr r7, [r6, #0x34]
	ldr r1, _020D47E0 ; =0x020E5A1C
	sub r4, r2, #0x28
	cmp r7, #0
	moveq r7, #0x10c0
	ldr r0, _020D47E4 ; =0x020E6D90
	mov r3, #0
	strh r7, [r1, #2]
	mov r2, r4, lsl #1
	strh r2, [r1, #4]
	str r4, [r5, #0x24]
	str r3, [r0]
	ldr r0, [r6]
	mov r2, #1
	cmp r0, #0
	ldreq r0, _020D47D4 ; =0x020ED460
	ldreq r1, _020D47E8 ; =FUN_ov15_020d47fc
	streq r3, [r0, #8]
	streq r2, [r5]
	streq r1, [r5, #0xc]
	beq _020D4798
	ldr r1, _020D47EC ; =FUN_ov15_020d4868
	ldr r0, _020D47D4 ; =0x020ED460
	str r3, [r5]
	str r1, [r5, #0xc]
	str r2, [r0, #8]
	ldr r0, [r0, #4]
	str r0, [r5, #0x28]
_020D4798:
	ldr r0, [r6, #0x2c]
	cmp r0, #0
	moveq r0, #0xb
	bl FUN_ov15_020bcf88
	ldr r0, _020D47F0 ; =FUN_ov15_020bd4e8
	bl FUN_ov15_020dd9e4
	ldr r0, _020D47F4 ; =FUN_ov15_020d6598
	bl FUN_ov15_020bcef0
	ldr r0, _020D47F8 ; =FUN_ov15_020d6bb8
	bl FUN_ov15_020bcb40
	mov r0, r5
	bl FUN_ov15_020bcc84
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_020D47CC: .word ov15_020E59F8
_020D47D0: .word ov15_020ED470
_020D47D4: .word ov15_020ED460
_020D47D8: .word FUN_ov15_020d4880
_020D47DC: .word 0x000005DC
_020D47E0: .word ov15_020E5A1C
_020D47E4: .word ov15_020E6D90
_020D47E8: .word FUN_ov15_020d47fc
_020D47EC: .word FUN_ov15_020d4868
_020D47F0: .word FUN_ov15_020bd4e8
_020D47F4: .word FUN_ov15_020d6598
_020D47F8: .word FUN_ov15_020d6bb8
	arm_func_end FUN_ov15_020d4680

	arm_func_start FUN_ov15_020d47fc
FUN_ov15_020d47fc: ; 0x020D47FC
	ldr r0, _020D4850 ; =0x020E59F8
	ldr r1, _020D4854 ; =0x020E6D90
	ldr r12, [r0]
	ldr r0, _020D4858 ; =0x020E6D50
	ldr r3, [r12, #4]
	ldr r2, _020D485C ; =0x020E6D6C
	str r3, [r1]
	ldr r3, [r12, #8]
	ldr r1, _020D4860 ; =0x020E6DB0
	str r3, [r0]
	ldr r3, [r12, #0xc]
	ldr r0, _020D4864 ; =0x020ED460
	str r3, [r2]
	ldr r2, [r12, #0x10]
	str r2, [r1]
	ldr r2, [r12, #0x14]
	str r2, [r1, #4]
	ldr r1, [r0, #8]
	orr r1, r1, #2
	str r1, [r0, #8]
	bx lr
_020D4850: .word ov15_020E59F8
_020D4854: .word ov15_020E6D90
_020D4858: .word ov15_020E6D50
_020D485C: .word ov15_020E6D6C
_020D4860: .word ov15_020E6DB0
_020D4864: .word ov15_020ED460
	arm_func_end FUN_ov15_020d47fc

	arm_func_start FUN_ov15_020d4868
FUN_ov15_020d4868: ; 0x020D4868
	ldr r0, _020D487C ; =0x020ED460
	ldr r1, [r0, #8]
	orr r1, r1, #2
	str r1, [r0, #8]
	bx lr
_020D487C: .word ov15_020ED460
	arm_func_end FUN_ov15_020d4868

	arm_func_start FUN_ov15_020d4880
FUN_ov15_020d4880: ; 0x020D4880
	stmfd sp!, {r3, lr}
	bl FUN_ov15_020dd944
	cmp r0, #0
	movne r0, #1
	moveq r0, #0
	ldmfd sp!, {r3, pc}
	arm_func_end FUN_ov15_020d4880

	arm_func_start FUN_ov15_020d4898
FUN_ov15_020d4898: ; 0x020D4898
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	mov r5, r0
	mov r6, #0x2c
	mul r1, r5, r6
	ldr r0, _020D4920 ; =0x020E59F8
	mov r2, r5, lsl #2
	add r2, r2, #3
	ldr r0, [r0]
	add r1, r1, #3
	bic r4, r2, #3
	bic r2, r1, #3
	ldr r1, [r0, #0x18]
	add r0, r2, r4
	blx r1
	movs r7, r0
	subeq r0, r6, #0x2d
	ldmeqfd sp!, {r3, r4, r5, r6, r7, pc}
	ldr r0, _020D4924 ; =0x020ED4A4
	mov r1, r7
	mov r2, r5
	bl FUN_02002174
	cmp r5, #0
	add r4, r7, r4
	ble _020D4910
_020D48F8:
	mov r0, r4
	bl FUN_ov15_020d49d8
	sub r5, r5, #1
	cmp r5, #0
	add r4, r4, #0x2c
	bgt _020D48F8
_020D4910:
	ldr r1, _020D4928 ; =0x020ED4A0
	mov r0, #0
	str r7, [r1]
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_020D4920: .word ov15_020E59F8
_020D4924: .word ov15_020ED4A4
_020D4928: .word ov15_020ED4A0
	arm_func_end FUN_ov15_020d4898

	arm_func_start FUN_ov15_020d492c
FUN_ov15_020d492c: ; 0x020D492C
	stmfd sp!, {r4, lr}
	ldr r4, _020D4968 ; =0x020ED4A0
	ldr r1, [r4, #0x20]
	ldr r0, [r4, #0x18]
	cmp r1, r0
	mvnlt r0, #0
	ldmltfd sp!, {r4, pc}
	ldr r1, _020D496C ; =0x020E59F8
	ldr r0, [r4]
	ldr r1, [r1]
	ldr r1, [r1, #0x1c]
	blx r1
	mov r0, #0
	str r0, [r4]
	ldmfd sp!, {r4, pc}
_020D4968: .word ov15_020ED4A0
_020D496C: .word ov15_020E59F8
	arm_func_end FUN_ov15_020d492c

	arm_func_start FUN_ov15_020d4970
FUN_ov15_020d4970: ; 0x020D4970
	stmfd sp!, {r3, lr}
	mov r2, r0
	ldr r0, _020D4994 ; =0x020ED4A4
	add r1, sp, #0
	bl FUN_02002230
	cmp r0, #0
	ldrne r0, [sp]
	moveq r0, #0
	ldmfd sp!, {r3, pc}
_020D4994: .word ov15_020ED4A4
	arm_func_end FUN_ov15_020d4970

	arm_func_start FUN_ov15_020d4998
FUN_ov15_020d4998: ; 0x020D4998
	stmfd sp!, {r4, r5, r6, lr}
	mov r4, r2
	mov r6, r0
	mov r0, r4
	mov r5, r1
	bl FUN_ov15_020d4970
	cmp r0, #0
	ldmeqfd sp!, {r4, r5, r6, pc}
	str r6, [r0]
	str r5, [r0, #4]
	mov r1, #0
	str r1, [r0, #8]
	ldrsb r1, [r5, #0xaf]
	strb r1, [r0, #0xc]
	strb r4, [r0, #0xd]
	ldmfd sp!, {r4, r5, r6, pc}
	arm_func_end FUN_ov15_020d4998

	arm_func_start FUN_ov15_020d49d8
FUN_ov15_020d49d8: ; 0x020D49D8
	stmfd sp!, {r3, lr}
	movs r1, r0
	ldmeqfd sp!, {r3, pc}
	ldr r0, _020D49F4 ; =0x020ED4A4
	mov r2, #0
	bl FUN_0200219c
	ldmfd sp!, {r3, pc}
_020D49F4: .word ov15_020ED4A4
	arm_func_end FUN_ov15_020d49d8

	arm_func_start FUN_ov15_020d49f8
FUN_ov15_020d49f8: ; 0x020D49F8
	ldr r1, [r0, #0xa0]
	cmp r1, #0
	ldreq r1, [r0, #0xa4]
	mov r0, r1
	bx lr
	arm_func_end FUN_ov15_020d49f8

	arm_func_start FUN_ov15_020d4a0c
FUN_ov15_020d4a0c: ; 0x020D4A0C
	stmfd sp!, {r3, r4, r5, lr}
	movs r5, r1
	beq _020D4A24
	ldrsb r1, [r5, #0xd]
	tst r1, #1
	beq _020D4A2C
_020D4A24:
	mov r2, #1
	b _020D4A30
_020D4A2C:
	mov r2, #0
_020D4A30:
	mov r1, r5
	bl FUN_0200219c
	movs r4, r0
	bne _020D4A48
	mov r0, r5
	bl FUN_ov15_020d49d8
_020D4A48:
	mov r0, #0
	cmp r4, #0
	mvneq r0, #0x29
	ldmfd sp!, {r3, r4, r5, pc}
	arm_func_end FUN_ov15_020d4a0c

	arm_func_start FUN_ov15_020d4a58
FUN_ov15_020d4a58: ; 0x020D4A58
	stmfd sp!, {r4, lr}
	mov r4, r1
	bl FUN_ov15_020d49f8
	mov r1, r4
	bl FUN_ov15_020d4a0c
	ldmfd sp!, {r4, pc}
	arm_func_end FUN_ov15_020d4a58

	arm_func_start FUN_ov15_020d4a70
FUN_ov15_020d4a70: ; 0x020D4A70
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	sub sp, sp, #0x28
	mov r6, r1
	ldrsb r2, [r6, #0xd]
	mov r7, r0
	cmp r2, #1
	bne _020D4AC8
	add r5, sp, #8
	mov r4, #1
	add r1, sp, #0
	mov r0, r5
	mov r2, r4
	bl FUN_02002174
	mov r0, r7
	mov r1, r6
	str r5, [r6, #8]
	bl FUN_ov15_020d4a0c
	add r1, sp, #4
	mov r0, r5
	mov r2, r4
	bl FUN_02002230
	b _020D4AD8
_020D4AC8:
	mov r2, #0
	str r2, [r6, #8]
	bl FUN_ov15_020d4a0c
	str r0, [sp, #4]
_020D4AD8:
	ldr r0, [sp, #4]
	add sp, sp, #0x28
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
	arm_func_end FUN_ov15_020d4a70

	arm_func_start FUN_ov15_020d4ae4
FUN_ov15_020d4ae4: ; 0x020D4AE4
	ldr r0, [r0, #0xa0]
	ldr r12, _020D4AF0 ; =FUN_ov15_020d4a70
	bx r12
_020D4AF0: .word FUN_ov15_020d4a70
	arm_func_end FUN_ov15_020d4ae4

	arm_func_start FUN_ov15_020d4af4
FUN_ov15_020d4af4: ; 0x020D4AF4
	ldr r0, [r0, #0xa4]
	ldr r12, _020D4B00 ; =FUN_ov15_020d4a70
	bx r12
_020D4B00: .word FUN_ov15_020d4a70
	arm_func_end FUN_ov15_020d4af4

	arm_func_start FUN_ov15_020d4b04
FUN_ov15_020d4b04: ; 0x020D4B04
	stmfd sp!, {r4, lr}
	mov r4, r1
	bl FUN_ov15_020d49f8
	mov r1, r4
	bl FUN_ov15_020d4a70
	ldmfd sp!, {r4, pc}
	arm_func_end FUN_ov15_020d4b04

	arm_func_start FUN_ov15_020d4b1c
FUN_ov15_020d4b1c: ; 0x020D4B1C
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, lr}
	sub sp, sp, #4
	mov r4, #0
	mov r9, r0
	mov r10, r4
	add r6, sp, #0
	mov r5, #1
_020D4B38:
	mov r0, r9
	mov r1, r6
	mov r2, r5
	bl FUN_0200236c
	ldr r0, [sp]
	cmp r0, #0
	addeq sp, sp, #4
	ldmeqfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, pc}
	ldr r1, [r0]
	blx r1
	mov r8, r0
	bl OS_DisableInterrupts
	mov r7, r0
	bl OS_DisableScheduler
	mov r0, r9
	mov r1, r4
	mov r2, r4
	bl FUN_02002230
	ldr r0, [sp]
	ldr r0, [r0, #4]
	cmp r0, #0
	strne r8, [r0, #0xa8]
	ldr r0, [sp]
	ldr r0, [r0, #8]
	cmp r0, #0
	beq _020D4BAC
	mov r1, r8
	mov r2, r10
	bl FUN_0200219c
_020D4BAC:
	ldr r0, [sp]
	bl FUN_ov15_020d49d8
	bl OS_EnableScheduler
	mov r0, r7
	bl OS_RestoreInterrupts
	b _020D4B38
	arm_func_end FUN_ov15_020d4b1c

	arm_func_start FUN_ov15_020d4bc4
FUN_ov15_020d4bc4: ; 0x020D4BC4
	add sp, sp, #4
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, pc}
	arm_func_end FUN_ov15_020d4bc4

	arm_func_start FUN_ov15_020d4bcc
FUN_ov15_020d4bcc: ; 0x020D4BCC
	stmfd sp!, {r3, r4, r5, lr}
	ldr r1, _020D4C74 ; =0x020E59F8
	ldr r1, [r1]
	cmp r1, #0
	mvneq r0, #0x26
	ldmeqfd sp!, {r3, r4, r5, pc}
	bl FUN_ov15_020d4cf4
	movs r4, r0
	mvneq r0, #0x30
	ldmeqfd sp!, {r3, r4, r5, pc}
	mov r5, #1
	ldr r0, _020D4C78 ; =FUN_ov15_020d4c80
	mov r1, r4
	mov r2, r5
	bl FUN_ov15_020d4998
	mov r1, r0
	mov r0, r4
	bl FUN_ov15_020d4b04
	cmp r4, #0
	mov r1, #0
	beq _020D4C2C
	ldrsh r0, [r4, #0xac]
	tst r0, #1
	movne r1, r5
_020D4C2C:
	cmp r1, #0
	beq _020D4C6C
	ldrsb r0, [r4, #0xaf]
	mov r1, #1
	cmp r0, #0
	cmpne r0, #4
	movne r1, #0
	cmp r1, #0
	ldrne r0, _020D4C7C ; =0x020ED4CC
	ldrne r1, [r0]
	addne r1, r1, #1
	strne r1, [r0]
	ldreq r0, _020D4C7C ; =0x020ED4CC
	ldreq r1, [r0, #4]
	addeq r1, r1, #1
	streq r1, [r0, #4]
_020D4C6C:
	mov r0, r4
	ldmfd sp!, {r3, r4, r5, pc}
_020D4C74: .word ov15_020E59F8
_020D4C78: .word FUN_ov15_020d4c80
_020D4C7C: .word ov15_020ED4CC
	arm_func_end FUN_ov15_020d4bcc

	arm_func_start FUN_ov15_020d4c80
FUN_ov15_020d4c80: ; 0x020D4C80
	stmfd sp!, {r4, lr}
	ldr r4, [r0, #4]
	mov r0, r4
	bl FUN_ov15_020c02d4
	ldrsb r0, [r4, #0xaf]
	ldr r1, [r4, #0xa4]
	cmp r0, #4
	addls pc, pc, r0, lsl #2
	b _020D4CE0
_020D4CA4: ; jump table
	b _020D4CB8 ; case 0
	b _020D4CC8 ; case 1
	b _020D4CDC ; case 2
	b _020D4CE0 ; case 3
	b _020D4CB8 ; case 4
_020D4CB8:
	add r0, r1, #0x20
	bl FUN_ov15_020c03f4
	bl FUN_ov15_020c0388
	b _020D4CE0
_020D4CC8:
	bl FUN_ov15_020c0388
	bl FUN_ov15_020c0300
	ldr r0, _020D4CF0 ; =FUN_ov15_020d5970
	bl FUN_ov15_020c040c
	b _020D4CE0
_020D4CDC:
	bl FUN_ov15_020c0300
_020D4CE0:
	mov r0, #1
	strh r0, [r4, #0xac]
	mov r0, #0
	ldmfd sp!, {r4, pc}
_020D4CF0: .word FUN_ov15_020d5970
	arm_func_end FUN_ov15_020d4c80

	arm_func_start FUN_ov15_020d4cf4
FUN_ov15_020d4cf4: ; 0x020D4CF4
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	mov r7, r0
	bl FUN_ov15_020d4d5c
	mov r4, r0
	bl OS_DisableInterrupts
	ldr r1, _020D4D58 ; =0x020E59F8
	mov r6, r0
	ldr r1, [r1]
	mov r0, r4
	ldr r1, [r1, #0x18]
	blx r1
	movs r5, r0
	beq _020D4D48
	mov r2, r4
	mov r1, #0
	bl MI_CpuFill8
	mov r0, r5
	mov r1, r7
	bl FUN_ov15_020d4e04
	mov r0, r5
	bl FUN_ov15_020d6cc0
_020D4D48:
	mov r0, r6
	bl OS_RestoreInterrupts
	mov r0, r5
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_020D4D58: .word ov15_020E59F8
	arm_func_end FUN_ov15_020d4cf4

	arm_func_start FUN_ov15_020d4d5c
FUN_ov15_020d4d5c: ; 0x020D4D5C
	stmfd sp!, {r3, r4, r5, lr}
	mov r5, r0
	ldrh r0, [r5, #2]
	mov r4, #0xbc
	cmp r0, #0
	beq _020D4D98
	add r4, r4, #0x114
	bl FUN_ov15_020d6aac
	add r4, r4, r0
	ldrh r0, [r5, #8]
	bl FUN_ov15_020d6aac
	add r4, r4, r0
	add r0, r5, #0x10
	bl FUN_ov15_020d4ddc
	add r4, r4, r0
_020D4D98:
	ldrh r0, [r5, #6]
	cmp r0, #0
	beq _020D4DD4
	add r4, r4, #0x110
	bl FUN_ov15_020d6aac
	add r4, r4, r0
	ldrh r0, [r5, #0xa]
	bl FUN_ov15_020d6aac
	add r4, r4, r0
	ldrh r0, [r5, #0xc]
	bl FUN_ov15_020d6aac
	add r4, r4, r0
	add r0, r5, #0x14
	bl FUN_ov15_020d4ddc
	add r4, r4, r0
_020D4DD4:
	mov r0, r4
	ldmfd sp!, {r3, r4, r5, pc}
	arm_func_end FUN_ov15_020d4d5c

	arm_func_start FUN_ov15_020d4ddc
FUN_ov15_020d4ddc: ; 0x020D4DDC
	stmfd sp!, {r3, r4, r5, lr}
	mov r5, r0
	ldrb r0, [r5, #3]
	mov r0, r0, lsl #2
	bl FUN_ov15_020d6aac
	mov r4, r0
	ldrh r0, [r5]
	bl FUN_ov15_020d6aac
	add r0, r4, r0
	ldmfd sp!, {r3, r4, r5, pc}
	arm_func_end FUN_ov15_020d4ddc

	arm_func_start FUN_ov15_020d4e04
FUN_ov15_020d4e04: ; 0x020D4E04
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	mov r6, r1
	ldrh r1, [r6, #2]
	ldrsb r2, [r6]
	mov r7, r0
	ldrsb r0, [r6, #1]
	strb r2, [r7, #0xaf]
	cmp r1, #0
	strb r0, [r7, #0xae]
	add r5, r7, #0xbc
	beq _020D4E84
	ldrh r3, [r6, #4]
	mov r1, r5
	add r0, r5, #0x114
	add r2, r6, #0x10
	mov r4, r5
	str r5, [r7, #0xa0]
	strh r3, [r5, #0xfc]
	bl FUN_ov15_020d4f24
	ldrh r2, [r6, #2]
	add r1, r7, #0x48
	bl FUN_ov15_020d4efc
	ldrh r2, [r6, #8]
	add r1, r7, #0x5c
	bl FUN_ov15_020d4efc
	mov r2, #0
	ldrh r3, [r6, #0xe]
	add r1, r4, #0x100
	mov r5, r0
	strh r3, [r1, #0xa]
	str r2, [r4, #0x110]
	str r2, [r4, #0x10c]
_020D4E84:
	ldrh r0, [r6, #6]
	cmp r0, #0
	ldreq r0, _020D4EF8 ; =0x020ED46C
	ldreq r0, [r0]
	ldreq r0, [r0, #0xa4]
	streq r0, [r7, #0xa4]
	beq _020D4EF0
	str r5, [r7, #0xa4]
	mov r1, r5
	add r0, r5, #0x110
	add r2, r6, #0x14
	mov r4, r5
	str r7, [r5, #0x10c]
	bl FUN_ov15_020d4f24
	ldrh r2, [r6, #6]
	add r1, r7, #0x54
	bl FUN_ov15_020d4efc
	ldrh r2, [r6, #0xa]
	add r1, r7, #0x64
	bl FUN_ov15_020d4efc
	ldrh r2, [r6, #0xc]
	add r1, r5, #0xf8
	bl FUN_ov15_020d4efc
	mov r1, #0
	str r1, [r4, #0x108]
	mov r5, r0
	str r1, [r4, #0x104]
_020D4EF0:
	mov r0, r5
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_020D4EF8: .word ov15_020ED46C
	arm_func_end FUN_ov15_020d4e04

	arm_func_start FUN_ov15_020d4efc
FUN_ov15_020d4efc: ; 0x020D4EFC
	stmfd sp!, {r4, lr}
	mov r4, r0
	mov r3, r4
	cmp r2, #0
	moveq r3, #0
	mov r0, r2
	stmia r1, {r2, r3}
	bl FUN_ov15_020d6aac
	add r0, r4, r0
	ldmfd sp!, {r4, pc}
	arm_func_end FUN_ov15_020d4efc

	arm_func_start FUN_ov15_020d4f24
FUN_ov15_020d4f24: ; 0x020D4F24
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	sub sp, sp, #8
	mov r5, r2
	mov r7, r0
	mov r0, r5
	mov r6, r1
	bl FUN_ov15_020d4ddc
	mov r4, r0
	ldrb r2, [r5, #3]
	mov r0, r6
	mov r1, r7
	bl FUN_02002174
	add r0, r6, #0xe0
	bl OS_InitMutex
	ldrh r2, [r5]
	ldrb r1, [r5, #2]
	add r0, r6, #0x20
	str r2, [sp]
	str r1, [sp, #4]
	ldr r1, _020D4F94 ; =FUN_ov15_020d4b1c
	mov r2, r6
	add r3, r7, r4
	bl OS_CreateThread
	add r0, r6, #0x20
	bl OS_WakeupThreadDirect
	add r0, r7, r4
	add sp, sp, #8
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_020D4F94: .word FUN_ov15_020d4b1c
	arm_func_end FUN_ov15_020d4f24

	arm_func_start FUN_ov15_020d4f98
FUN_ov15_020d4f98: ; 0x020D4F98
	stmfd sp!, {r3, r4, r5, lr}
	mov r5, r0
	mov r4, r1
	bl FUN_ov15_020d6db4
	cmp r0, #0
	mvnne r0, #0x1b
	ldmnefd sp!, {r3, r4, r5, pc}
	cmp r5, #0
	mov r1, #0
	beq _020D4FCC
	ldrsh r0, [r5, #0xac]
	tst r0, #1
	movne r1, #1
_020D4FCC:
	cmp r1, #0
	mvneq r0, #0x26
	ldmeqfd sp!, {r3, r4, r5, pc}
	ldrsh r0, [r5, #0xac]
	tst r0, #2
	mvnne r0, #6
	ldmnefd sp!, {r3, r4, r5, pc}
	strh r4, [r5, #0xb0]
	ldrsb r0, [r5, #0xaf]
	cmp r0, #1
	movne r0, #0
	ldmnefd sp!, {r3, r4, r5, pc}
	mov r0, r5
	bl FUN_ov15_020d5154
	ldmfd sp!, {r3, r4, r5, pc}
	arm_func_end FUN_ov15_020d4f98

	arm_func_start FUN_ov15_020d5008
FUN_ov15_020d5008: ; 0x020D5008
	stmfd sp!, {r4, r5, r6, lr}
	mov r6, r0
	mov r5, r1
	mov r4, r2
	bl FUN_ov15_020d6db4
	cmp r0, #0
	bne _020D5030
	ldrsh r0, [r6, #0xac]
	tst r0, #8
	beq _020D5038
_020D5030:
	mvn r0, #0x1b
	ldmfd sp!, {r4, r5, r6, pc}
_020D5038:
	cmp r6, #0
	mov r1, #0
	beq _020D5050
	ldrsh r0, [r6, #0xac]
	tst r0, #1
	movne r1, #1
_020D5050:
	cmp r1, #0
	mvneq r0, #0x26
	ldmeqfd sp!, {r4, r5, r6, pc}
	ldrsb r0, [r6, #0xaf]
	mov r1, #1
	cmp r0, #0
	cmpne r0, #4
	movne r1, #0
	cmp r1, #0
	beq _020D5138
	and r0, r4, #0xf0000000
	cmp r0, #0xe0000000
	beq _020D50C4
	ldr r0, _020D5148 ; =0x020E6D90
	ldr r1, _020D514C ; =0x020E6D50
	ldr r0, [r0]
	ldr r1, [r1]
	eor r0, r0, r4
	tst r1, r0
	beq _020D50A8
	cmn r4, #1
	b _020D50B4
_020D50A8:
	mvn r1, r1
	and r0, r1, r4
	cmp r1, r0
_020D50B4:
	moveq r0, #1
	movne r0, #0
	cmp r0, #0
	beq _020D50CC
_020D50C4:
	mvn r0, #0x1b
	ldmfd sp!, {r4, r5, r6, pc}
_020D50CC:
	ldrsh r0, [r6, #0xac]
	tst r0, #4
	beq _020D50EC
	ldrsb r0, [r6, #0xae]
	cmp r0, #1
	mvneq r0, #0x1d
	movne r0, #0
	ldmfd sp!, {r4, r5, r6, pc}
_020D50EC:
	ldrsh r0, [r6, #0xac]
	tst r0, #2
	beq _020D5110
	ldrsh r0, [r6, #0xac]
	tst r0, #0x40
	ldrne r0, [r6, #0xa8]
	ldreq r0, _020D5150 ; =0x020E5A00
	ldreq r0, [r0]
	ldmfd sp!, {r4, r5, r6, pc}
_020D5110:
	strh r5, [r6, #0xb2]
	mov r0, r6
	str r4, [r6, #0xb4]
	bl FUN_ov15_020d5154
	ldrsb r1, [r6, #0xae]
	cmp r1, #1
	ldmeqfd sp!, {r4, r5, r6, pc}
	cmp r0, #0
	mvnge r0, #0x19
	ldmfd sp!, {r4, r5, r6, pc}
_020D5138:
	strh r5, [r6, #0xb2]
	str r4, [r6, #0xb4]
	mov r0, #0
	ldmfd sp!, {r4, r5, r6, pc}
_020D5148: .word ov15_020E6D90
_020D514C: .word ov15_020E6D50
_020D5150: .word ov15_020E5A00
	arm_func_end FUN_ov15_020d5008

	arm_func_start FUN_ov15_020d5154
FUN_ov15_020d5154: ; 0x020D5154
	stmfd sp!, {r4, lr}
	mov r4, r0
	ldrsb r2, [r4, #0xae]
	ldr r0, _020D51A8 ; =FUN_ov15_020d51ac
	mov r1, r4
	bl FUN_ov15_020d4998
	movs r1, r0
	mvneq r0, #0x20
	ldmeqfd sp!, {r4, pc}
	ldrh r2, [r4, #0xb0]
	mov r0, r4
	strh r2, [r1, #0x10]
	ldrh r2, [r4, #0xb2]
	strh r2, [r1, #0x12]
	ldr r2, [r4, #0xb4]
	str r2, [r1, #0x14]
	ldrsh r2, [r4, #0xac]
	orr r2, r2, #2
	strh r2, [r4, #0xac]
	bl FUN_ov15_020d4ae4
	ldmfd sp!, {r4, pc}
_020D51A8: .word FUN_ov15_020d51ac
	arm_func_end FUN_ov15_020d5154

	arm_func_start FUN_ov15_020d51ac
FUN_ov15_020d51ac: ; 0x020D51AC
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	mov r7, r0
	ldr r4, [r7, #4]
	mov r6, #0
	ldr r5, [r4, #0xa0]
	add r0, r5, #0xe0
	bl OS_LockMutex
	ldrh r0, [r7, #0x10]
	ldrh r1, [r7, #0x12]
	ldr r2, [r7, #0x14]
	bl FUN_ov15_020c0328
	str r6, [r5, #0xf8]
	ldrsb r0, [r7, #0xc]
	cmp r0, #0
	cmpne r0, #4
	bne _020D51F4
	bl FUN_ov15_020c04d8
	mov r6, r0
_020D51F4:
	add r0, r5, #0xe0
	bl OS_UnlockMutex
	cmp r6, #0
	ldrnesh r1, [r4, #0xac]
	mvnne r0, #0x4b
	moveq r0, #0
	orrne r1, r1, #0x40
	strneh r1, [r4, #0xac]
	ldreqsh r1, [r4, #0xac]
	orreq r1, r1, #4
	streqh r1, [r4, #0xac]
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
	arm_func_end FUN_ov15_020d51ac

	arm_func_start FUN_ov15_020d5224
FUN_ov15_020d5224: ; 0x020D5224
	stmfd sp!, {r4, r5, r6, r7, r8, r9, lr}
	sub sp, sp, #0xc
	mov r9, r0
	mov r8, r1
	mov r7, r2
	mov r6, r3
	bl FUN_ov15_020d6db4
	cmp r0, #0
	addne sp, sp, #0xc
	mvnne r0, #0x1b
	ldmnefd sp!, {r4, r5, r6, r7, r8, r9, pc}
	ldr r0, [sp, #0x2c]
	tst r0, #4
	bne _020D5268
	ldrsb r0, [r9, #0xae]
	cmp r0, #0
	bne _020D5284
_020D5268:
	ldrsb r0, [r9, #0xaf]
	cmp r0, #4
	addeq sp, sp, #0xc
	mvneq r0, #0x1b
	ldmeqfd sp!, {r4, r5, r6, r7, r8, r9, pc}
	mov r5, #0
	b _020D529C
_020D5284:
	bl OS_GetProcMode
	cmp r0, #0x12
	addeq sp, sp, #0xc
	mvneq r0, #0x1b
	ldmeqfd sp!, {r4, r5, r6, r7, r8, r9, pc}
	mov r5, #1
_020D529C:
	cmp r9, #0
	mov r1, #0
	beq _020D52B4
	ldrsh r0, [r9, #0xac]
	tst r0, #1
	movne r1, #1
_020D52B4:
	cmp r1, #0
	addeq sp, sp, #0xc
	mvneq r0, #0x26
	ldmeqfd sp!, {r4, r5, r6, r7, r8, r9, pc}
	ldrsb r0, [r9, #0xaf]
	mov r1, #1
	cmp r0, #0
	cmpne r0, #4
	movne r1, #0
	cmp r1, #0
	beq _020D5304
	ldrsh r0, [r9, #0xac]
	tst r0, #4
	beq _020D52F8
	ldrsh r0, [r9, #0xac]
	tst r0, #8
	beq _020D5304
_020D52F8:
	add sp, sp, #0xc
	mvn r0, #0x37
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, pc}
_020D5304:
	ldr r4, [r9, #0xa0]
	tst r5, #1
	add r0, r4, #0xe0
	bne _020D532C
	bl OS_TryLockMutex
	cmp r0, #0
	bne _020D5330
	add sp, sp, #0xc
	mvn r0, #5
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, pc}
_020D532C:
	bl OS_LockMutex
_020D5330:
	ldr r0, [sp, #0x28]
	ldr r12, [sp, #0x2c]
	str r0, [sp]
	mov r0, r9
	mov r1, r8
	mov r2, r7
	mov r3, r6
	stmib sp, {r5, r12}
	bl FUN_ov15_020d536c
	mov r5, r0
	add r0, r4, #0xe0
	bl OS_UnlockMutex
	mov r0, r5
	add sp, sp, #0xc
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, pc}
	arm_func_end FUN_ov15_020d5224

	arm_func_start FUN_ov15_020d536c
FUN_ov15_020d536c: ; 0x020D536C
	stmfd sp!, {r4, r5, r6, r7, r8, lr}
	sub sp, sp, #8
	ldr r4, [sp, #0x28]
	mov r7, r0
	tst r4, #2
	ldr r4, [r7, #0xa0]
	cmpne r4, #0
	movne r6, #1
	moveq r6, #0
	cmp r6, #0
	ldrnesb r5, [r4, #0xfe]
	movne r0, #1
	strneb r0, [r4, #0xfe]
	ldrsb r0, [r7, #0xaf]
	cmp r0, #1
	bne _020D53CC
	ldr r0, [sp, #0x20]
	ldr r12, [sp, #0x24]
	str r0, [sp]
	mov r0, r7
	str r12, [sp, #4]
	bl FUN_ov15_020d582c
	mov r8, r0
	b _020D53F4
_020D53CC:
	ldr r0, [sp, #0x20]
	ldr r12, [sp, #0x24]
	str r0, [sp]
	mov r0, r7
	str r12, [sp, #4]
	bl FUN_ov15_020d5408
	movs r8, r0
	bmi _020D53F4
	mov r0, r7
	bl FUN_ov15_020d5790
_020D53F4:
	cmp r6, #0
	strneb r5, [r4, #0xfe]
	mov r0, r8
	add sp, sp, #8
	ldmfd sp!, {r4, r5, r6, r7, r8, pc}
	arm_func_end FUN_ov15_020d536c

	arm_func_start FUN_ov15_020d5408
FUN_ov15_020d5408: ; 0x020D5408
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	mov r7, r0
	ldrsb r12, [r7, #0xaf]
	mov r6, r1
	mov r5, r2
	mov r4, r3
	cmp r12, #4
	bne _020D5438
	ldr r4, [sp, #0x18]
	str r4, [sp]
	bl FUN_ov15_020d55f4
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_020D5438:
	ldr r12, [sp, #0x18]
	str r12, [sp]
	bl FUN_ov15_020d5478
	cmn r0, #6
	ldmnefd sp!, {r3, r4, r5, r6, r7, pc}
	ldr r1, [sp, #0x1c]
	tst r1, #1
	ldmeqfd sp!, {r3, r4, r5, r6, r7, pc}
	ldr r12, [sp, #0x18]
	mov r0, r7
	mov r1, r6
	mov r2, r5
	mov r3, r4
	str r12, [sp]
	bl FUN_ov15_020d55f4
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
	arm_func_end FUN_ov15_020d5408

	arm_func_start FUN_ov15_020d5478
FUN_ov15_020d5478: ; 0x020D5478
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, lr}
	sub sp, sp, #0x10
	mov r9, r0
	mov r8, r1
	mov r7, r2
	mov r6, r3
	bl OS_DisableInterrupts
	add r1, sp, #8
	mov r4, r0
	str r1, [sp]
	add r1, sp, #0xc
	mov r0, r9
	add r2, sp, #6
	add r3, sp, #4
	bl FUN_ov15_020d5580
	cmp r0, #0
	beq _020D551C
	ldr r5, [sp, #0xc]
	cmp r5, #0
	mvneq r5, #5
	beq _020D5538
	ldrsb r1, [r9, #0xaf]
	cmp r7, r5
	mov r2, #1
	movgt r7, r5
	cmp r1, #0
	cmpne r1, #4
	movne r2, #0
	cmp r2, #0
	mov r1, r8
	mov r2, r7
	movne r5, r7
	bl FUN_02007c60
	ldr r1, [r9, #0xa0]
	ldrsb r0, [r1, #0xfe]
	cmp r0, #0
	bne _020D5538
	ldr r0, [r1, #0xf8]
	add r0, r0, r5
	str r0, [r1, #0xf8]
	b _020D5538
_020D551C:
	ldr r0, [sp, #0xc]
	mov r5, #0
	cmp r0, #0
	ldrsh r0, [r9, #0xac]
	mvnne r5, #0x1b
	bic r0, r0, #6
	strh r0, [r9, #0xac]
_020D5538:
	cmp r5, #0
	blt _020D556C
	cmp r6, #0
	ldrne r1, [sp, #0x30]
	cmpne r1, #0
	ldrneh r0, [sp, #4]
	strneh r0, [r6]
	ldrne r0, [sp, #8]
	strne r0, [r1]
	ldrh r0, [r9, #0xb0]
	cmp r0, #0
	ldreqh r0, [sp, #6]
	streqh r0, [r9, #0xb0]
_020D556C:
	mov r0, r4
	bl OS_RestoreInterrupts
	mov r0, r5
	add sp, sp, #0x10
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
	arm_func_end FUN_ov15_020d5478

	arm_func_start FUN_ov15_020d5580
FUN_ov15_020d5580: ; 0x020D5580
	stmfd sp!, {r3, r4, r5, lr}
	ldr r0, [r0, #0xa0]
	ldr r4, [r0, #0xc4]
	ldr r5, [r0, #0xf8]
	ldr r0, [r4, #0x50]
	subs lr, r0, r5
	bmi _020D55D8
	ldrh r12, [r4, #0xa]
	ldr r0, [sp, #0x10]
	cmp lr, #0
	strh r12, [r2]
	ldrh r2, [r4, #0x18]
	strh r2, [r3]
	ldr r2, [r4, #0x1c]
	str r2, [r0]
	str lr, [r1]
	bne _020D55E8
	ldrb r0, [r4, #8]
	cmp r0, #4
	beq _020D55E8
	mov r0, #0
	ldmfd sp!, {r3, r4, r5, pc}
_020D55D8:
	mvn r0, #0
	str r0, [r1]
	mov r0, #0
	ldmfd sp!, {r3, r4, r5, pc}
_020D55E8:
	ldr r0, [r4, #0x4c]
	add r0, r0, r5
	ldmfd sp!, {r3, r4, r5, pc}
	arm_func_end FUN_ov15_020d5580

	arm_func_start FUN_ov15_020d55f4
FUN_ov15_020d55f4: ; 0x020D55F4
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	mov r7, r0
	mov r6, r1
	mov r5, r2
	ldr r0, _020D563C ; =FUN_ov15_020d5640
	mov r1, r7
	mov r2, #1
	mov r4, r3
	bl FUN_ov15_020d4998
	mov r1, r0
	str r6, [r1, #0x10]
	str r5, [r1, #0x14]
	ldr r2, [sp, #0x18]
	str r4, [r1, #0x18]
	mov r0, r7
	str r2, [r1, #0x1c]
	bl FUN_ov15_020d4ae4
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_020D563C: .word FUN_ov15_020d5640
	arm_func_end FUN_ov15_020d55f4

	arm_func_start FUN_ov15_020d5640
FUN_ov15_020d5640: ; 0x020D5640
	stmfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, lr}
	sub sp, sp, #0x14
	ldr r7, [r0, #4]
	ldr r1, [r0, #0x10]
	ldr r8, [r7, #0xa0]
	str r1, [sp, #0xc]
	ldr r1, [r0, #0x18]
	ldr r10, [r0, #0x14]
	ldr r0, [r0, #0x1c]
	ldr r9, [r8, #0xf8]
	str r1, [sp, #8]
	str r0, [sp, #4]
	mov r4, #0
	mov r5, #1
	mov r11, #0xa
	add r6, sp, #0x10
_020D5680:
	mov r0, r6
	bl FUN_ov15_020c0728
	cmp r0, #0
	beq _020D56D4
	ldr r1, [sp, #0x10]
	sub r1, r1, r9
	cmp r1, #0
	bgt _020D56D4
	ldrsb r0, [r7, #0xaf]
	mov r1, r5
	cmp r0, #0
	cmpne r0, #4
	movne r1, r4
	cmp r1, #0
	ldrneb r0, [r7, #8]
	cmpne r0, #4
	movne r0, #0
	bne _020D56D4
	mov r0, r11
	bl OS_Sleep
	b _020D5680
_020D56D4:
	ldrsh r1, [r7, #0xac]
	tst r1, #0x80
	addne sp, sp, #0x14
	mvnne r0, #0xe
	ldmnefd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
	ldrsb r1, [r7, #0xaf]
	cmp r1, #4
	bne _020D5730
	cmp r0, #0
	addeq sp, sp, #0x14
	moveq r0, #0
	ldmeqfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
	ldr r1, [sp, #0x10]
	cmp r10, r1
	movhi r10, r1
	ldr r1, [sp, #0xc]
	mov r2, r10
	bl FUN_02007c60
	mov r0, r10
	bl FUN_ov15_020c08dc
	add sp, sp, #0x14
	mov r0, r10
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
_020D5730:
	cmp r0, #0
	moveq r4, #0
	beq _020D575C
	ldr r4, [sp, #4]
	ldr r1, [sp, #0xc]
	ldr r3, [sp, #8]
	mov r0, r7
	mov r2, r10
	str r4, [sp]
	bl FUN_ov15_020d5478
	mov r4, r0
_020D575C:
	cmp r4, #0
	addle sp, sp, #0x14
	movle r0, r4
	ldmlefd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
	ldrh r0, [r8, #0xfc]
	ldr r1, [r8, #0xf8]
	cmp r1, r0
	blt _020D5784
	mov r0, r7
	bl FUN_ov15_020d57f0
_020D5784:
	mov r0, r4
	add sp, sp, #0x14
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
	arm_func_end FUN_ov15_020d5640

	arm_func_start FUN_ov15_020d5790
FUN_ov15_020d5790: ; 0x020D5790
	stmfd sp!, {r3, r4, r5, lr}
	mov r5, r0
	ldr r1, [r5, #0xa0]
	ldrh r0, [r1, #0xfc]
	ldr r1, [r1, #0xf8]
	cmp r1, r0
	movlt r0, #0
	ldmltfd sp!, {r3, r4, r5, pc}
	mov r4, #0
	ldr r0, _020D57DC ; =FUN_ov15_020d57e0
	mov r1, r5
	mov r2, r4
	bl FUN_ov15_020d4998
	movs r1, r0
	subeq r0, r4, #0x21
	ldmeqfd sp!, {r3, r4, r5, pc}
	mov r0, r5
	bl FUN_ov15_020d4ae4
	ldmfd sp!, {r3, r4, r5, pc}
_020D57DC: .word FUN_ov15_020d57e0
	arm_func_end FUN_ov15_020d5790

	arm_func_start FUN_ov15_020d57e0
FUN_ov15_020d57e0: ; 0x020D57E0
	ldr r0, [r0, #4]
	ldr r12, _020D57EC ; =FUN_ov15_020d57f0
	bx r12
_020D57EC: .word FUN_ov15_020d57f0
	arm_func_end FUN_ov15_020d57e0

	arm_func_start FUN_ov15_020d57f0
FUN_ov15_020d57f0: ; 0x020D57F0
	stmfd sp!, {r4, r5, r6, lr}
	ldr r4, [r0, #0xa0]
	bl OS_DisableInterrupts
	ldr r6, [r4, #0xf8]
	mov r5, r0
	cmp r6, #0
	beq _020D581C
	mov r1, #0
	mov r0, r6
	str r1, [r4, #0xf8]
	bl FUN_ov15_020c08dc
_020D581C:
	mov r0, r5
	bl OS_RestoreInterrupts
	mov r0, r6
	ldmfd sp!, {r4, r5, r6, pc}
	arm_func_end FUN_ov15_020d57f0

	arm_func_start FUN_ov15_020d582c
FUN_ov15_020d582c: ; 0x020D582C
	stmfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, lr}
	sub sp, sp, #0xc
	mov r10, r0
	ldr r6, [r10, #0xa0]
	str r1, [sp]
	str r2, [sp, #4]
	mov r11, r3
	bl OS_DisableInterrupts
	ldr r7, [r6, #0x104]
	str r0, [sp, #8]
	cmp r7, #0
	bne _020D58C4
	ldr r0, [sp, #0x34]
	mov r4, #1
	and r9, r0, #1
	mov r5, #0
_020D586C:
	cmp r9, #0
	mvneq r8, #5
	beq _020D58C4
	add r0, r6, #0x10c
	bl OS_SleepThread
	mov r0, r10
	bl FUN_ov15_020d6db4
	cmp r0, #0
	bne _020D58B0
	mov r1, r5
	cmp r10, #0
	beq _020D58A8
	ldrsh r0, [r10, #0xac]
	tst r0, #1
	movne r1, r4
_020D58A8:
	cmp r1, #0
	bne _020D58B8
_020D58B0:
	mvn r8, #0x37
	b _020D58C4
_020D58B8:
	ldr r7, [r6, #0x104]
	cmp r7, #0
	beq _020D586C
_020D58C4:
	cmp r7, #0
	beq _020D5958
	ldrh r1, [r7, #4]
	ldr r0, [sp, #4]
	cmp r0, r1
	strgt r1, [sp, #4]
	ldr r1, [sp]
	ldr r2, [sp, #4]
	add r0, r7, #0xc
	bl FUN_02007c60
	cmp r11, #0
	ldrneh r0, [r7, #6]
	ldr r1, [sp, #0x30]
	strneh r0, [r11]
	cmp r1, #0
	ldrne r0, [r7, #8]
	strne r0, [r1]
	ldrsb r0, [r6, #0xfe]
	ldrh r8, [r7, #4]
	cmp r0, #0
	bne _020D5958
	ldr r0, [r7]
	ldr r1, _020D596C ; =0x020E59F8
	str r0, [r6, #0x104]
	ldr r0, [r7]
	cmp r0, #0
	moveq r0, #0
	streq r0, [r6, #0x100]
	ldr r1, [r1]
	mov r0, r7
	ldr r1, [r1, #0x1c]
	blx r1
	add r1, r6, #0x100
	ldrh r2, [r1, #8]
	mov r0, r8, lsl #0x10
	sub r0, r2, r0, lsr #16
	strh r0, [r1, #8]
_020D5958:
	ldr r0, [sp, #8]
	bl OS_RestoreInterrupts
	mov r0, r8
	add sp, sp, #0xc
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
_020D596C: .word ov15_020E59F8
	arm_func_end FUN_ov15_020d582c

	arm_func_start FUN_ov15_020d5970
FUN_ov15_020d5970: ; 0x020D5970
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, lr}
	mov r7, r2
	ldr r4, [r7, #0xa0]
	mov r9, r0
	mov r8, r1
	bl OS_DisableInterrupts
	add r1, r4, #0x100
	ldrh r2, [r1, #8]
	ldrh r1, [r1, #0xa]
	mov r6, r0
	add r0, r2, r8
	cmp r1, r0
	blo _020D5A3C
	ldr r1, _020D5A84 ; =0x020E59F8
	add r0, r8, #0xc
	ldr r1, [r1]
	ldr r1, [r1, #0x18]
	blx r1
	movs r5, r0
	beq _020D5A28
	add r1, r4, #0x100
	ldrh r3, [r1, #8]
	mov r0, r8, lsl #0x10
	mov r2, #0
	add r3, r3, r0, lsr #16
	strh r3, [r1, #8]
	str r2, [r5]
	mov r0, r0, lsr #0x10
	strh r0, [r5, #4]
	ldrh r1, [r7, #0x18]
	mov r0, r9
	mov r2, r8
	strh r1, [r5, #6]
	ldr r3, [r7, #0x1c]
	add r1, r5, #0xc
	str r3, [r5, #8]
	bl FUN_02007c60
	ldr r0, [r4, #0x100]
	cmp r0, #0
	ldrne r0, [r4, #0x100]
	strne r5, [r0]
	str r5, [r4, #0x100]
	ldr r0, [r4, #0x104]
	cmp r0, #0
	streq r5, [r4, #0x104]
	b _020D5A4C
_020D5A28:
	ldr r0, _020D5A88 ; =0x020ED4C4
	ldr r1, [r0]
	add r1, r1, #1
	str r1, [r0]
	b _020D5A4C
_020D5A3C:
	ldr r0, _020D5A88 ; =0x020ED4C4
	ldr r1, [r0, #4]
	add r1, r1, #1
	str r1, [r0, #4]
_020D5A4C:
	ldrh r0, [r7, #0xb0]
	ldrh r2, [r7, #0x1a]
	ldr r1, [r7, #0x20]
	cmp r0, #0
	ldreqh r0, [r7, #0xa]
	strh r2, [r7, #0x18]
	str r1, [r7, #0x1c]
	streqh r0, [r7, #0xb0]
	add r0, r4, #0x10c
	bl OS_WakeupThread
	mov r0, r6
	bl OS_RestoreInterrupts
	mov r0, #1
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
_020D5A84: .word ov15_020E59F8
_020D5A88: .word ov15_020ED4C4
	arm_func_end FUN_ov15_020d5970

	arm_func_start FUN_ov15_020d5a8c
FUN_ov15_020d5a8c: ; 0x020D5A8C
	stmfd sp!, {r4, r5, r6, r7, r8, lr}
	sub sp, sp, #8
	mov r8, r0
	mov r7, r1
	mov r6, r2
	mov r5, r3
	bl FUN_ov15_020d6db4
	cmp r0, #0
	addne sp, sp, #8
	mvnne r0, #0x1b
	ldmnefd sp!, {r4, r5, r6, r7, r8, pc}
	cmp r8, #0
	mov r1, #0
	beq _020D5AD0
	ldrsh r0, [r8, #0xac]
	tst r0, #1
	movne r1, #1
_020D5AD0:
	cmp r1, #0
	addeq sp, sp, #8
	mvneq r0, #0x26
	ldmeqfd sp!, {r4, r5, r6, r7, r8, pc}
	ldrsb r0, [r8, #0xaf]
	mov r1, #1
	cmp r0, #0
	cmpne r0, #4
	movne r1, #0
	cmp r1, #0
	beq _020D5B20
	ldrsh r0, [r8, #0xac]
	tst r0, #4
	beq _020D5B14
	ldrsh r0, [r8, #0xac]
	tst r0, #8
	beq _020D5B20
_020D5B14:
	add sp, sp, #8
	mvn r0, #0x37
	ldmfd sp!, {r4, r5, r6, r7, r8, pc}
_020D5B20:
	ldr r0, [sp, #0x24]
	ldr r4, [r8, #0xa4]
	tst r0, #4
	bne _020D5B3C
	ldrsb r0, [r8, #0xae]
	cmp r0, #0
	bne _020D5B5C
_020D5B3C:
	add r0, r4, #0xe0
	bl OS_TryLockMutex
	cmp r0, #0
	addeq sp, sp, #8
	mvneq r0, #5
	ldmeqfd sp!, {r4, r5, r6, r7, r8, pc}
	mov r12, #0
	b _020D5B68
_020D5B5C:
	add r0, r4, #0xe0
	bl OS_LockMutex
	mov r12, #1
_020D5B68:
	ldr r1, [sp, #0x20]
	mov r0, r8
	str r1, [sp]
	mov r1, r7
	mov r2, r6
	mov r3, r5
	str r12, [sp, #4]
	bl FUN_ov15_020d5ba0
	mov r5, r0
	add r0, r4, #0xe0
	bl OS_UnlockMutex
	mov r0, r5
	add sp, sp, #8
	ldmfd sp!, {r4, r5, r6, r7, r8, pc}
	arm_func_end FUN_ov15_020d5a8c

	arm_func_start FUN_ov15_020d5ba0
FUN_ov15_020d5ba0: ; 0x020D5BA0
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, lr}
	sub sp, sp, #0x18
	mov r10, r0
	ldr r4, [r10, #0xa4]
	ldrsb r0, [r10, #0xaf]
	ldr r4, [r4, #0x10c]
	mov r9, r1
	str r3, [sp, #0xc]
	cmp r0, #1
	mov r8, r2
	ldr r7, [sp, #0x40]
	ldr r6, [sp, #0x44]
	ldr r0, [r4, #0x54]
	mov r5, #0
	bne _020D5BF8
	sub r0, r0, #0x2a
	cmp r8, r0
	addgt sp, sp, #0x18
	subgt r0, r5, #0x23
	ldmgtfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
	str r8, [sp, #0x10]
	b _020D5C08
_020D5BF8:
	sub r0, r0, #0x36
	str r0, [sp, #0x10]
	cmp r8, r0
	strle r8, [sp, #0x10]
_020D5C08:
	cmp r8, #0
	ble _020D5C98
	and r11, r6, #1
_020D5C14:
	ldr r2, [sp, #0x10]
	mov r0, r10
	mov r1, r8
	add r3, sp, #0x14
	str r6, [sp]
	bl FUN_ov15_020d5ca4
	mov r4, r0
	cmp r4, #0
	ble _020D5C74
	ldr r0, [sp, #0xc]
	mov r1, r9
	stmia sp, {r0, r7}
	str r6, [sp, #8]
	ldr r3, [sp, #0x14]
	mov r0, r10
	mov r2, r4
	bl FUN_ov15_020d5d4c
	cmp r0, #0
	addle sp, sp, #0x18
	mvnle r0, #5
	ldmlefd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
	add r9, r9, r4
	sub r8, r8, r4
	add r5, r5, r4
_020D5C74:
	cmp r11, #0
	bne _020D5C90
	cmp r4, #0
	bgt _020D5C98
	add sp, sp, #0x18
	mvn r0, #5
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_020D5C90:
	cmp r8, #0
	bgt _020D5C14
_020D5C98:
	mov r0, r5
	add sp, sp, #0x18
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
	arm_func_end FUN_ov15_020d5ba0

	arm_func_start FUN_ov15_020d5ca4
FUN_ov15_020d5ca4: ; 0x020D5CA4
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, lr}
	mov r10, r0
	mov r9, r1
	mov r8, r2
	cmp r8, r9
	mov r7, r3
	ldr r4, [r10, #0xa4]
	movgt r8, r9
	bl OS_DisableInterrupts
	ldr r1, [sp, #0x28]
	mov r11, r0
	and r6, r1, #1
_020D5CD4:
	mov r0, r10
	bl FUN_ov15_020d5d28
	mov r5, r0
	cmp r5, r8
	blt _020D5D00
	add r0, r4, #0x100
	ldrh r0, [r0]
	cmp r5, r9
	movge r5, r9
	str r0, [r7]
	b _020D5D18
_020D5D00:
	cmp r6, #0
	moveq r5, #0
	beq _020D5D18
	add r0, r4, #0x104
	bl OS_SleepThread
	b _020D5CD4
_020D5D18:
	mov r0, r11
	bl OS_RestoreInterrupts
	mov r0, r5
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
	arm_func_end FUN_ov15_020d5ca4

	arm_func_start FUN_ov15_020d5d28
FUN_ov15_020d5d28: ; 0x020D5D28
	ldr r2, [r0, #0xa4]
	add r0, r2, #0x100
	ldrh r1, [r0]
	ldrh r0, [r0, #2]
	ldr r2, [r2, #0xf8]
	sub r0, r0, r1
	subs r0, r0, #1
	addmi r0, r0, r2
	bx lr
	arm_func_end FUN_ov15_020d5d28

	arm_func_start FUN_ov15_020d5d4c
FUN_ov15_020d5d4c: ; 0x020D5D4C
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, lr}
	mov r9, r0
	ldr r4, [r9, #0xa4]
	mov r6, r1
	mov r8, r2
	ldr r1, [r4, #0x10c]
	ldr r2, [sp, #0x28]
	ldr r0, _020D5EB4 ; =FUN_ov15_020d5eb8
	mov r7, r3
	bl FUN_ov15_020d4998
	movs r5, r0
	mvneq r0, #0x20
	ldmeqfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
	ldr r0, [sp, #0x28]
	add r2, r7, r8
	tst r0, #1
	ldrnesb r0, [r9, #0xaf]
	cmpne r0, #1
	movne r0, #3
	strneb r0, [r5, #0xd]
	moveq r0, #0
	streqb r0, [r5, #0xd]
	ldr r0, [r4, #0xf8]
	ldr r1, [r4, #0xfc]
	cmp r2, r0
	bge _020D5DD4
	add r0, r1, r7
	str r0, [r5, #0x10]
	str r8, [r5, #0x14]
	mov r0, #0
	str r0, [r5, #0x18]
	mov r7, r2
	str r0, [r5, #0x1c]
	b _020D5DFC
_020D5DD4:
	add r2, r1, r7
	sub r0, r0, r7
	str r2, [r5, #0x10]
	str r0, [r5, #0x14]
	sub r7, r8, r0
	str r1, [r5, #0x18]
	mov r2, r7
	add r0, r6, r0
	str r7, [r5, #0x1c]
	bl FUN_02007c60
_020D5DFC:
	ldr r1, [r5, #0x10]
	ldr r2, [r5, #0x14]
	mov r0, r6
	bl FUN_02007c60
	add r0, r4, #0x100
	ldrh r6, [r0]
	strh r7, [r5, #0x20]
	ldrh r1, [r5, #0x20]
	strh r1, [r0]
	ldrsb r0, [r9, #0xaf]
	cmp r0, #1
	bne _020D5E88
	ldrh r0, [r9, #0xb0]
	cmp r0, #0
	bne _020D5E48
	bl FUN_ov15_020c01e8
	strh r0, [r9, #0xb0]
	ldrh r0, [r9, #0xb0]
	strh r0, [r9, #0xa]
_020D5E48:
	ldrh r0, [r9, #0xb0]
	strh r0, [r5, #0x24]
	ldr r1, [r9, #0xb4]
	cmp r1, #0
	beq _020D5E68
	ldr r0, [sp, #0x24]
	cmp r0, #0
	beq _020D5E7C
_020D5E68:
	ldr r1, [sp, #0x24]
	ldrh r0, [sp, #0x20]
	str r1, [r5, #0x28]
_020D5E74:
	strh r0, [r5, #0x26]
	b _020D5E90
_020D5E7C:
	str r1, [r5, #0x28]
	ldrh r0, [r9, #0xb2]
	b _020D5E74
_020D5E88:
	mov r0, #0
	str r0, [r5, #0x28]
_020D5E90:
	ldr r0, [r4, #0x10c]
	mov r1, r5
	bl FUN_ov15_020d4af4
	cmp r0, #0
	addne r0, r4, #0x100
	movne r8, #0
	strneh r6, [r0]
	mov r0, r8
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
_020D5EB4: .word FUN_ov15_020d5eb8
	arm_func_end FUN_ov15_020d5d4c

	arm_func_start FUN_ov15_020d5eb8
FUN_ov15_020d5eb8: ; 0x020D5EB8
	stmfd sp!, {r4, r5, r6, r7, r8, r9, r10, lr}
	mov r9, r0
	ldr r5, [r9, #4]
	mov r7, #0
	ldrsb r1, [r5, #0xaf]
	ldr r6, [r5, #0xa4]
	cmp r1, #2
	bne _020D5EE8
	ldrsh r0, [r5, #0xac]
	tst r0, #8
	subne r0, r7, #0x1c
	ldmnefd sp!, {r4, r5, r6, r7, r8, r9, r10, pc}
_020D5EE8:
	cmp r1, #0
	cmpne r1, #4
	bne _020D5F00
	ldrsh r0, [r5, #0xac]
	tst r0, #4
	beq _020D5FD0
_020D5F00:
	ldr r2, [r9, #0x28]
	cmp r2, #0
	beq _020D5F18
	ldrh r0, [r9, #0x24]
	ldrh r1, [r9, #0x26]
	bl FUN_ov15_020c0328
_020D5F18:
	ldrsb r1, [r5, #0xaf]
	mov r0, #1
	mov r8, #0x36
	cmp r1, #0
	cmpne r1, #4
	movne r0, #0
	cmp r0, #0
	moveq r8, #0x2a
	cmp r1, #0
	cmpne r1, #4
	ldrne r0, [r5, #0x54]
	ldr r4, [r5, #0x58]
	subne r10, r0, r8
	bne _020D5F60
	ldr r0, [r5, #0x54]
	sub r0, r0, r8
	bl FUN_ov15_020d5ff0
	mov r10, r0
_020D5F60:
	mov r1, r10
	mov r2, r9
	add r0, r4, r8
	bl FUN_ov15_020d6088
	mov r1, r0
	cmp r1, #0
	ble _020D5FD4
	add r0, r4, r8
	bl FUN_ov15_020c0ce8
	cmp r0, #0
	bgt _020D5FC8
	ldrsb r0, [r5, #0xaf]
	mov r1, #1
	cmp r0, #0
	cmpne r0, #4
	movne r1, #0
	cmp r1, #0
	beq _020D5FC4
	ldrsh r0, [r5, #0xac]
	bic r0, r0, #0xe
	strh r0, [r5, #0xac]
	ldrsh r0, [r5, #0xac]
	orr r0, r0, #0x80
	strh r0, [r5, #0xac]
	bl FUN_ov15_020c05b4
_020D5FC4:
	b _020D5FD0
_020D5FC8:
	add r7, r7, r0
	b _020D5F60
_020D5FD0:
	mvn r7, #0x4b
_020D5FD4:
	ldrh r2, [r9, #0x20]
	add r1, r6, #0x100
	add r0, r6, #0x104
	strh r2, [r1, #2]
	bl OS_WakeupThread
	mov r0, r7
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, pc}
	arm_func_end FUN_ov15_020d5eb8

	arm_func_start FUN_ov15_020d5ff0
FUN_ov15_020d5ff0: ; 0x020D5FF0
	stmfd sp!, {r3, r4, r5, lr}
	ldr r1, _020D6080 ; =0x020939a4
	mov r4, r0
	ldr r0, [r1, #4]
	ldr r5, [r0, #0xa4]
	bl OS_DisableInterrupts
	cmp r5, #0
	beq _020D6048
	ldrh r3, [r5, #0x3a]
	cmp r3, #0
	ldrneh r2, [r5, #0x38]
	cmpne r2, #0
	beq _020D6044
	ldr r1, _020D6084 ; =0x020ED470
	cmp r3, r2
	ldr r1, [r1, #0x24]
	movgt r3, r2
	cmp r3, r1
	movgt r3, r1
	mov r5, r3, lsl #1
	b _020D6054
_020D6044:
	b _020D6048
_020D6048:
	ldr r1, _020D6084 ; =0x020ED470
	ldr r1, [r1, #0x24]
	mov r5, r1, lsl #1
_020D6054:
	bl OS_RestoreInterrupts
	cmp r5, #0
	ble _020D6078
	mov r0, r4
	mov r1, r5
	bl FUN_0201f9bc
	cmp r0, #0
	mulgt r0, r5, r0
	ldmgtfd sp!, {r3, r4, r5, pc}
_020D6078:
	mov r0, r4
	ldmfd sp!, {r3, r4, r5, pc}
_020D6080: .word 0x020939a4
_020D6084: .word ov15_020ED470
	arm_func_end FUN_ov15_020d5ff0

	arm_func_start FUN_ov15_020d6088
FUN_ov15_020d6088: ; 0x020D6088
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	mov r6, r2
	ldr r4, [r6, #0x14]
	ldr r5, [r6, #0x1c]
	cmp r4, r1
	mov r7, r0
	movgt r4, r1
	movgt r5, #0
	bgt _020D60B8
	sub r0, r1, r4
	cmp r5, r0
	movgt r5, r0
_020D60B8:
	cmp r4, #0
	ble _020D60E8
	ldr r0, [r6, #0x10]
	mov r1, r7
	mov r2, r4
	bl FUN_02007c60
	ldr r1, [r6, #0x10]
	ldr r0, [r6, #0x14]
	add r1, r1, r4
	sub r0, r0, r4
	str r1, [r6, #0x10]
	str r0, [r6, #0x14]
_020D60E8:
	cmp r5, #0
	ble _020D6118
	ldr r0, [r6, #0x18]
	mov r2, r5
	add r1, r7, r4
	bl FUN_02007c60
	ldr r1, [r6, #0x18]
	ldr r0, [r6, #0x1c]
	add r1, r1, r5
	sub r0, r0, r5
	str r1, [r6, #0x18]
	str r0, [r6, #0x1c]
_020D6118:
	add r0, r4, r5
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
	arm_func_end FUN_ov15_020d6088

	arm_func_start FUN_ov15_020d6120
FUN_ov15_020d6120: ; 0x020D6120
	stmfd sp!, {r3, r4, r5, lr}
	mov r4, r0
	bl FUN_ov15_020d6db4
	cmp r0, #0
	mvnne r0, #0x1b
	ldmnefd sp!, {r3, r4, r5, pc}
	cmp r4, #0
	mov r1, #0
	beq _020D6150
	ldrsh r0, [r4, #0xac]
	tst r0, #1
	movne r1, #1
_020D6150:
	cmp r1, #0
	mvneq r0, #0x26
	ldmeqfd sp!, {r3, r4, r5, pc}
	ldrsh r0, [r4, #0xac]
	tst r0, #4
	beq _020D6174
	ldrsh r0, [r4, #0xac]
	tst r0, #8
	beq _020D617C
_020D6174:
	mvn r0, #0x37
	ldmfd sp!, {r3, r4, r5, pc}
_020D617C:
	ldrsh r0, [r4, #0xac]
	orr r0, r0, #8
	strh r0, [r4, #0xac]
	ldr r5, [r4, #0xa4]
	cmp r5, #0
	ldrne r1, [r5, #0x10c]
	cmpne r1, #0
	beq _020D61C0
	ldrsb r2, [r4, #0xae]
	ldr r0, _020D61C8 ; =FUN_ov15_020d61cc
	bl FUN_ov15_020d4998
	movs r1, r0
	mvneq r0, #0x20
	ldmeqfd sp!, {r3, r4, r5, pc}
	ldr r0, [r5, #0x10c]
	bl FUN_ov15_020d4af4
	ldmfd sp!, {r3, r4, r5, pc}
_020D61C0:
	mov r0, #0
	ldmfd sp!, {r3, r4, r5, pc}
_020D61C8: .word FUN_ov15_020d61cc
	arm_func_end FUN_ov15_020d6120

	arm_func_start FUN_ov15_020d61cc
FUN_ov15_020d61cc: ; 0x020D61CC
	stmfd sp!, {r3, lr}
	ldr r0, [r0, #4]
	mov r1, #1
	ldrsb r0, [r0, #0xaf]
	cmp r0, #0
	cmpne r0, #4
	movne r1, #0
	cmp r1, #0
	beq _020D61F4
	bl FUN_ov15_020c0578
_020D61F4:
	mov r0, #0
	ldmfd sp!, {r3, pc}
	arm_func_end FUN_ov15_020d61cc

	arm_func_start FUN_ov15_020d61fc
FUN_ov15_020d61fc: ; 0x020D61FC
	stmfd sp!, {r4, lr}
	movs r4, r0
	bmi _020D6228
	bl FUN_ov15_020d6db4
	cmp r0, #0
	beq _020D6228
	mov r0, r4
	bl FUN_ov15_020d6de8
	cmp r0, #0
	moveq r0, #1
	ldmeqfd sp!, {r4, pc}
_020D6228:
	mov r0, #0
	ldmfd sp!, {r4, pc}
	arm_func_end FUN_ov15_020d61fc

	arm_func_start FUN_ov15_020d6230
FUN_ov15_020d6230: ; 0x020D6230
	stmfd sp!, {r4, r5, r6, lr}
	mov r4, r0
	cmp r4, #0
	mov r5, #0
	mvnle r0, #0x1b
	ldmlefd sp!, {r4, r5, r6, pc}
	bl OS_DisableInterrupts
	mov r6, r0
	mov r0, r4
	bl FUN_ov15_020d6de8
	cmp r0, #0
	beq _020D6270
	mov r0, r6
	bl OS_RestoreInterrupts
	mvn r0, #0x19
	ldmfd sp!, {r4, r5, r6, pc}
_020D6270:
	mov r0, r4
	bl FUN_ov15_020d6db4
	cmp r0, #0
	beq _020D6290
	mov r0, r6
	bl OS_RestoreInterrupts
	mov r0, r5
	ldmfd sp!, {r4, r5, r6, pc}
_020D6290:
	cmp r4, #0
	mov r1, r5
	beq _020D62A8
	ldrsh r0, [r4, #0xac]
	tst r0, #1
	movne r1, #1
_020D62A8:
	cmp r1, #0
	bne _020D62C0
	mov r0, r6
	bl OS_RestoreInterrupts
	mvn r0, #0x26
	ldmfd sp!, {r4, r5, r6, pc}
_020D62C0:
	ldrsh r0, [r4, #0xac]
	tst r0, #0x10
	mov r0, r6
	beq _020D62DC
	bl OS_RestoreInterrupts
	mvn r0, #0x19
	ldmfd sp!, {r4, r5, r6, pc}
_020D62DC:
	bl OS_RestoreInterrupts
	ldrsh r0, [r4, #0xac]
	mov r1, #1
	orr r0, r0, #0x18
	strh r0, [r4, #0xac]
	ldrsb r0, [r4, #0xaf]
	cmp r0, #0
	cmpne r0, #4
	movne r1, #0
	cmp r1, #0
	ldreq r0, _020D635C ; =0x020ED4CC
	ldreq r1, [r0, #4]
	subeq r1, r1, #1
	streq r1, [r0, #4]
	beq _020D6334
	ldr r0, [r4, #0xa4]
	mov r1, #0
	bl FUN_ov15_020d4a0c
	ldr r0, _020D635C ; =0x020ED4CC
	ldr r1, [r0]
	sub r1, r1, #1
	str r1, [r0]
_020D6334:
	ldr r0, _020D6360 ; =FUN_ov15_020d6364
	mov r1, r4
	mov r2, #1
	bl FUN_ov15_020d4998
	mov r1, r0
	mov r0, r4
	str r5, [r1, #8]
	bl FUN_ov15_020d4a58
	mov r0, r5
	ldmfd sp!, {r4, r5, r6, pc}
_020D635C: .word ov15_020ED4CC
_020D6360: .word FUN_ov15_020d6364
	arm_func_end FUN_ov15_020d6230

	arm_func_start FUN_ov15_020d6364
FUN_ov15_020d6364: ; 0x020D6364
	stmfd sp!, {r4, r5, r6, lr}
	ldr r4, [r0, #4]
	mov r1, #1
	ldrsb r0, [r4, #0xaf]
	cmp r0, #0
	cmpne r0, #4
	movne r1, #0
	cmp r1, #0
	beq _020D63A0
	ldr r0, [r4, #0xa4]
	add r0, r0, #0x20
	bl OS_JoinThread
	bl FUN_ov15_020c0578
	bl FUN_ov15_020c05b4
	bl FUN_ov15_020c03d4
_020D63A0:
	bl FUN_ov15_020c02e8
	ldrsh r0, [r4, #0xac]
	mov r6, #0
	mov r1, r6
	bic r0, r0, #6
	strh r0, [r4, #0xac]
	ldrsb r0, [r4, #0xaf]
	cmp r0, #2
	ldreq r0, [r4, #0xa4]
	ldrne r0, [r4, #0xa0]
	bl FUN_ov15_020d4a0c
	bl OS_DisableInterrupts
	mov r5, r0
	mov r0, r4
	bl FUN_ov15_020d6d00
	mov r0, r4
	bl FUN_ov15_020d6ce8
	mov r0, r5
	bl OS_RestoreInterrupts
	ldrsh r1, [r4, #0xac]
	mov r0, r6
	orr r1, r1, #0x20
	strh r1, [r4, #0xac]
	ldmfd sp!, {r4, r5, r6, pc}
	arm_func_end FUN_ov15_020d6364

	arm_func_start FUN_ov15_020d6400
FUN_ov15_020d6400: ; 0x020D6400
	stmfd sp!, {r4, r5, r6, lr}
	movs r4, r0
	ldmeqfd sp!, {r4, r5, r6, pc}
	ldrsb r2, [r4, #0xaf]
	mov r0, #0
	mov r1, #1
	cmp r2, #0
	cmpne r2, #4
	movne r1, r0
	strh r0, [r4, #0xac]
	cmp r1, #0
	beq _020D6440
	ldr r0, [r4, #0xa4]
	bl FUN_ov15_020d64f8
	ldr r0, [r4, #0xa0]
	b _020D64B8
_020D6440:
	cmp r2, #1
	bne _020D64AC
	ldr r0, [r4, #0xa0]
	ldr r0, [r0, #0x104]
	cmp r0, #0
	beq _020D6478
	ldr r5, _020D64F4 ; =0x020E59F8
_020D645C:
	ldr r1, [r5]
	ldr r6, [r0]
	ldr r1, [r1, #0x1c]
	blx r1
	mov r0, r6
	cmp r6, #0
	bne _020D645C
_020D6478:
	ldr r0, [r4, #0xa0]
	mov r1, #0
	add r0, r0, #0x100
	strh r1, [r0, #8]
	ldr r0, [r4, #0xa0]
	str r1, [r0, #0x100]
	ldr r0, [r4, #0xa0]
	str r1, [r0, #0x104]
	ldr r0, [r4, #0xa0]
	add r0, r0, #0x10c
	bl OS_WakeupThread
	ldr r0, [r4, #0xa0]
	b _020D64B8
_020D64AC:
	cmp r2, #2
	bne _020D64BC
	ldr r0, [r4, #0xa4]
_020D64B8:
	bl FUN_ov15_020d64f8
_020D64BC:
	bl OS_DisableInterrupts
	mov r5, r0
	mov r0, r4
	bl FUN_ov15_020d6d00
	mov r0, r4
	bl FUN_ov15_020d6d9c
	ldr r1, _020D64F4 ; =0x020E59F8
	mov r0, r4
	ldr r1, [r1]
	ldr r1, [r1, #0x1c]
	blx r1
	mov r0, r5
	bl OS_RestoreInterrupts
	ldmfd sp!, {r4, r5, r6, pc}
_020D64F4: .word ov15_020E59F8
	arm_func_end FUN_ov15_020d6400

	arm_func_start FUN_ov15_020d64f8
FUN_ov15_020d64f8: ; 0x020D64F8
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, lr}
	movs r9, r0
	ldmeqfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
	add r0, r9, #0x20
	bl OS_JoinThread
	bl OS_DisableInterrupts
	mov r8, r0
	bl OS_DisableScheduler
	add r7, sp, #0
	mov r0, r9
	mov r1, r7
	mov r2, #0
	bl FUN_02002230
	cmp r0, #0
	beq _020D6584
	mov r5, #0
	mvn r6, #0xa
	mov r4, r5
_020D6540:
	ldr r0, [sp]
	cmp r0, #0
	beq _020D656C
	ldr r0, [r0, #8]
	cmp r0, #0
	beq _020D6564
	mov r1, r6
	mov r2, r5
	bl FUN_0200219c
_020D6564:
	ldr r0, [sp]
	bl FUN_ov15_020d49d8
_020D656C:
	mov r0, r9
	mov r1, r7
	mov r2, r4
	bl FUN_02002230
	cmp r0, #0
	bne _020D6540
_020D6584:
	bl OS_EnableScheduler
	bl OS_RescheduleThread
	mov r0, r8
	bl OS_RestoreInterrupts
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
	arm_func_end FUN_ov15_020d64f8

	arm_func_start FUN_ov15_020d6598
FUN_ov15_020d6598: ; 0x020D6598
	stmfd sp!, {r3, r4, r5, lr}
	bl OS_DisableInterrupts
	ldr r4, _020D65D0 ; =0x020ED4D8
	mov r5, r0
	ldr r0, [r4]
	cmp r0, #0
	beq _020D65C4
_020D65B4:
	bl FUN_ov15_020d6400
	ldr r0, [r4]
	cmp r0, #0
	bne _020D65B4
_020D65C4:
	mov r0, r5
	bl OS_RestoreInterrupts
	ldmfd sp!, {r3, r4, r5, pc}
_020D65D0: .word ov15_020ED4D8
	arm_func_end FUN_ov15_020d6598

	arm_func_start FUN_ov15_020d65d4
FUN_ov15_020d65d4: ; 0x020D65D4
	stmfd sp!, {r3, r4, r5, lr}
	ldr r1, _020D6664 ; =0x020ED464
	ldr r0, [r1]
	cmp r0, #0
	ldreq r0, _020D6668 ; =0x020E6D90
	ldreq r0, [r0]
	streq r0, [r1]
	bl FUN_ov15_020d6744
	mvn r4, #0x19
	cmp r0, r4
	bne _020D6618
	mov r5, #0x64
_020D6604:
	mov r0, r5
	bl OS_Sleep
	bl FUN_ov15_020d6744
	cmp r0, r4
	beq _020D6604
_020D6618:
	bl FUN_ov15_020d492c
	movs r4, r0
	bmi _020D665C
	bl FUN_ov15_020d6674
	ldr r0, _020D666C ; =0x020E59F8
	ldr r1, [r0]
	ldr r0, [r1, #0x28]
	cmp r0, #0
	bne _020D664C
	ldr r0, _020D6670 ; =0x020ED470
	ldr r1, [r1, #0x1c]
	ldr r0, [r0, #0x1c]
	blx r1
_020D664C:
	ldr r0, _020D666C ; =0x020E59F8
	mov r1, #0
	str r1, [r0]
	bl FUN_ov15_020d6ab8
_020D665C:
	mov r0, r4
	ldmfd sp!, {r3, r4, r5, pc}
_020D6664: .word ov15_020ED464
_020D6668: .word ov15_020E6D90
_020D666C: .word ov15_020E59F8
_020D6670: .word ov15_020ED470
	arm_func_end FUN_ov15_020d65d4

	arm_func_start FUN_ov15_020d6674
FUN_ov15_020d6674: ; 0x020D6674
	stmfd sp!, {r4, lr}
	bl FUN_ov15_020bcf00
	mov r4, #0
	mov r0, r4
	bl FUN_ov15_020bcef0
	mov r0, r4
	bl FUN_ov15_020bcb40
	mov r0, r4
	bl FUN_ov15_020dd9e4
	ldmfd sp!, {r4, pc}
	arm_func_end FUN_ov15_020d6674

	arm_func_start FUN_ov15_020d669c
FUN_ov15_020d669c: ; 0x020D669C
	stmfd sp!, {r4, r5, r6, lr}
	ldr r4, _020D6738 ; =0x020ED46C
	ldr r5, _020D673C ; =0x020ED4D4
_020D66A8:
	bl OS_DisableInterrupts
	ldr r6, [r5]
	cmp r6, #0
	beq _020D66DC
	ldr r2, [r4]
_020D66BC:
	cmp r6, r2
	beq _020D66D0
	ldrsh r1, [r6, #0xac]
	tst r1, #0x10
	beq _020D66DC
_020D66D0:
	ldr r6, [r6, #0xb8]
	cmp r6, #0
	bne _020D66BC
_020D66DC:
	bl OS_RestoreInterrupts
	cmp r6, #0
	beq _020D66F4
	mov r0, r6
	bl FUN_ov15_020d6230
	b _020D66A8
_020D66F4:
	ldr r0, _020D673C ; =0x020ED4D4
	ldr r1, [r0]
	cmp r1, #0
	beq _020D671C
	ldr r0, _020D6738 ; =0x020ED46C
	ldr r0, [r0]
	cmp r1, r0
	ldreq r0, [r1, #0xb8]
	cmpeq r0, #0
	bne _020D6730
_020D671C:
	ldr r0, _020D6740 ; =0x020ED4D8
	ldr r0, [r0]
	cmp r0, #0
	moveq r0, #0
	ldmeqfd sp!, {r4, r5, r6, pc}
_020D6730:
	mvn r0, #0x19
	ldmfd sp!, {r4, r5, r6, pc}
_020D6738: .word ov15_020ED46C
_020D673C: .word ov15_020ED4D4
_020D6740: .word ov15_020ED4D8
	arm_func_end FUN_ov15_020d669c

	arm_func_start FUN_ov15_020d6744
FUN_ov15_020d6744: ; 0x020D6744
	stmfd sp!, {r3, r4, r5, lr}
	ldr r4, _020D67B0 ; =0x020ED46C
	ldr r0, [r4]
	cmp r0, #0
	beq _020D678C
	bl FUN_ov15_020d669c
	movs r5, r0
	bne _020D6784
	ldr r0, [r4]
	bl FUN_ov15_020d6230
	ldr r0, [r4]
	bl FUN_ov15_020d61fc
	cmp r0, #0
	movne r0, #0
	strne r0, [r4]
	mvn r5, #0x19
_020D6784:
	bl FUN_ov15_020d6598
	b _020D67A8
_020D678C:
	bl FUN_ov15_020bce9c
	cmp r0, #0
	mvneq r5, #0x19
	beq _020D67A8
	mov r5, #0
	mov r0, r5
	bl FUN_ov15_020dd9e4
_020D67A8:
	mov r0, r5
	ldmfd sp!, {r3, r4, r5, pc}
_020D67B0: .word ov15_020ED46C
	arm_func_end FUN_ov15_020d6744

	arm_func_start FUN_ov15_020d67b4
FUN_ov15_020d67b4: ; 0x020D67B4
	stmfd sp!, {r4, r5, r6, r7, r8, lr}
	sub sp, sp, #0xa0
	ldr r8, _020D6870 ; =0x020E59F8
	mov r7, r0
	ldr r0, [r8]
	cmp r0, #0
	addeq sp, sp, #0xa0
	moveq r0, #0
	ldmeqfd sp!, {r4, r5, r6, r7, r8, pc}
	cmp r7, #0
	addeq sp, sp, #0xa0
	moveq r0, #0
	ldmeqfd sp!, {r4, r5, r6, r7, r8, pc}
	ldr r6, _020D6874 ; =0x00001708
	ldr r1, [r0, #0x18]
	mov r0, r6
	blx r1
	movs r5, r0
	addeq sp, sp, #0xa0
	moveq r0, #0
	ldmeqfd sp!, {r4, r5, r6, r7, r8, pc}
	add r4, sp, #0
	mov r1, #0
	mov r0, r4
	mov r2, #0xa0
	bl MI_CpuFill8
	add r0, r5, #0x368
	add r2, r0, #0x800
	ldr r1, _020D6878 ; =0x00000B9E
	sub r3, r6, #0xba0
	mov r0, r4
	str r5, [sp, #0x4c]
	str r3, [sp, #0x48]
	str r2, [sp, #0x58]
	str r1, [sp, #0x54]
	bl FUN_ov15_020c02d4
	mov r0, r7
	bl FUN_ov15_020c2128
	mov r4, r0
	bl FUN_ov15_020c02e8
	ldr r1, [r8]
	mov r0, r5
	ldr r1, [r1, #0x1c]
	blx r1
	mov r0, r4
	add sp, sp, #0xa0
	ldmfd sp!, {r4, r5, r6, r7, r8, pc}
_020D6870: .word ov15_020E59F8
_020D6874: .word 0x00001708
_020D6878: .word 0x00000B9E
	arm_func_end FUN_ov15_020d67b4

	arm_func_start FUN_ov15_020d687c
FUN_ov15_020d687c: ; 0x020D687C
	stmfd sp!, {r4, r5, r6, r7, r8, lr}
	mov r5, r0
	bl OS_DisableInterrupts
	ldr r4, _020D68C0 ; =0x020E6DB0
	mov r6, r0
	ldmia r4, {r7, r8}
	mov r1, #0
	str r1, [r4]
	mov r0, r5
	str r1, [r4, #4]
	bl FUN_ov15_020c2128
	mov r5, r0
	mov r0, r6
	stmia r4, {r7, r8}
	bl OS_RestoreInterrupts
	mov r0, r5
	ldmfd sp!, {r4, r5, r6, r7, r8, pc}
_020D68C0: .word ov15_020E6DB0
	arm_func_end FUN_ov15_020d687c

	arm_func_start FUN_ov15_020d68c4
FUN_ov15_020d68c4: ; 0x020D68C4
	stmfd sp!, {r3, r4, r5, lr}
	mov r5, r0
	mov r4, r1
	bl FUN_ov15_020d692c
	cmp r0, #0
	mvneq r0, #0x26
	ldmeqfd sp!, {r3, r4, r5, pc}
	cmp r5, #0
	ldrne r0, _020D6924 ; =0x020E6D4C
	ldr r1, _020D6928 ; =0x020E6DB0
	ldrne r2, [r0]
	str r5, [r1]
	orrne r2, r2, #2
	strne r2, [r0]
	strne r4, [r1, #4]
	bne _020D691C
	ldr r0, _020D6924 ; =0x020E6D4C
	mov r2, #0
	ldr r3, [r0]
	bic r3, r3, #2
	str r3, [r0]
	str r2, [r1, #4]
_020D691C:
	mov r0, #0
	ldmfd sp!, {r3, r4, r5, pc}
_020D6924: .word ov15_020E6D4C
_020D6928: .word ov15_020E6DB0
	arm_func_end FUN_ov15_020d68c4

	arm_func_start FUN_ov15_020d692c
FUN_ov15_020d692c: ; 0x020D692C
	stmfd sp!, {r3, lr}
	ldr r0, _020D6988 ; =0x020E6D90
	ldr r2, [r0]
	cmp r2, #0
	bne _020D696C
	ldr r0, _020D698C ; =0x020ED468
	ldr r0, [r0]
	and r0, r0, #3
	cmp r0, #1
	bne _020D697C
	bl OS_GetProcMode
	cmp r0, #0x12
	beq _020D697C
	mov r0, #0xa
	bl OS_Sleep
	b _020D697C
_020D696C:
	ldr r0, _020D6990 ; =0x020ED464
	ldr r1, [r0]
	cmp r1, #0
	streq r2, [r0]
_020D697C:
	ldr r0, _020D6988 ; =0x020E6D90
	ldr r0, [r0]
	ldmfd sp!, {r3, pc}
_020D6988: .word ov15_020E6D90
_020D698C: .word ov15_020ED468
_020D6990: .word ov15_020ED464
	arm_func_end FUN_ov15_020d692c

	arm_func_start FUN_ov15_020d6994
FUN_ov15_020d6994: ; 0x020D6994
	stmfd sp!, {r4, r5, r6, lr}
	mov r4, #0
	mov r5, r0
	bl FUN_ov15_020d6db4
	cmp r0, #0
	orrne r4, r4, #0x80
	bne _020D6A5C
	ldrsh r0, [r5, #0xac]
	tst r0, #0x40
	ldrsb r0, [r5, #0xaf]
	orrne r4, r4, #0x20
	cmp r0, #1
	beq _020D69D4
	ldrsh r0, [r5, #0xac]
	tst r0, #4
	beq _020D6A04
_020D69D4:
	bl OS_DisableInterrupts
	mov r6, r0
	mov r0, r5
	bl FUN_ov15_020d6a64
	cmp r0, #0
	mov r0, r5
	orrgt r4, r4, #1
	bl FUN_ov15_020d5d28
	cmp r0, #0
	mov r0, r6
	orrgt r4, r4, #8
	bl OS_RestoreInterrupts
_020D6A04:
	ldrsb r0, [r5, #0xaf]
	mov r1, #1
	cmp r0, #0
	cmpne r0, #4
	movne r1, #0
	cmp r1, #0
	beq _020D6A5C
	ldrsh r0, [r5, #0xac]
	tst r0, #4
	ldrneb r0, [r5, #8]
	cmpne r0, #4
	beq _020D6A44
	tst r4, #1
	ldreqsh r0, [r5, #0xac]
	biceq r0, r0, #6
	streqh r0, [r5, #0xac]
_020D6A44:
	ldrsh r0, [r5, #0xac]
	tst r0, #2
	bne _020D6A5C
	ldrsh r0, [r5, #0xac]
	tst r0, #4
	orreq r4, r4, #0x40
_020D6A5C:
	mov r0, r4
	ldmfd sp!, {r4, r5, r6, pc}
	arm_func_end FUN_ov15_020d6994

	arm_func_start FUN_ov15_020d6a64
FUN_ov15_020d6a64: ; 0x020D6A64
	ldr r2, [r0, #0xa0]
	mov r3, #0
	cmp r2, #0
	beq _020D6AA4
	ldrsb r1, [r0, #0xaf]
	cmp r1, #1
	bne _020D6A90
	ldr r0, [r2, #0x104]
	cmp r0, #0
	ldrneh r3, [r0, #4]
	b _020D6AA4
_020D6A90:
	cmp r1, #0
	cmpne r1, #4
	ldreq r1, [r0, #0x50]
	ldreq r0, [r2, #0xf8]
	subeq r3, r1, r0
_020D6AA4:
	mov r0, r3
	bx lr
	arm_func_end FUN_ov15_020d6a64

	arm_func_start FUN_ov15_020d6aac
FUN_ov15_020d6aac: ; 0x020D6AAC
	add r0, r0, #3
	bic r0, r0, #3
	bx lr
	arm_func_end FUN_ov15_020d6aac

	arm_func_start FUN_ov15_020d6ab8
FUN_ov15_020d6ab8: ; 0x020D6AB8
	ldr r0, _020D6ACC ; =0x020ED4CC
	ldr r12, _020D6AD0 ; =MI_CpuFill8
	mov r1, #0
	mov r2, #8
	bx r12
_020D6ACC: .word ov15_020ED4CC
_020D6AD0: .word MI_CpuFill8
	arm_func_end FUN_ov15_020d6ab8

	arm_func_start FUN_ov15_020d6ad4
FUN_ov15_020d6ad4: ; 0x020D6AD4
	stmfd sp!, {r4, lr}
	mov r12, #0
	sub r3, r12, #1
	cmp r1, r3
	cmpne r1, #0
	mov lr, r12
	mov r4, r12
	cmpne r2, r1
	beq _020D6B38
	eor r3, r2, r1
	tst r0, r3
	bne _020D6B10
	mvn r3, r0
	tst r1, r3
	beq _020D6B38
_020D6B10:
	eor r2, r2, r1
	tst r0, r2
	mov r3, #1
	bne _020D6B30
	mvn r2, r0
	and r0, r1, r2
	teq r2, r0
	moveq r3, #0
_020D6B30:
	cmp r3, #0
	movne r4, #1
_020D6B38:
	cmp r4, #0
	beq _020D6B4C
	and r0, r1, #0xff000000
	teq r0, #0x7f000000
	movne lr, #1
_020D6B4C:
	cmp lr, #0
	beq _020D6B60
	and r0, r1, #0xf0000000
	teq r0, #0xe0000000
	movne r12, #1
_020D6B60:
	mov r0, r12
	ldmfd sp!, {r4, pc}
	arm_func_end FUN_ov15_020d6ad4

	arm_func_start FUN_ov15_020d6b68
FUN_ov15_020d6b68: ; 0x020D6B68
	stmfd sp!, {r3, lr}
	mvn r3, r0
	mov r0, #0
	and r2, r1, r3
	teq r3, r2
	mov lr, r0
	cmpne r2, #0
	movne lr, #1
	mov r12, r0
	cmp lr, #0
	beq _020D6BA0
	and r2, r1, #0xff000000
	teq r2, #0x7f000000
	movne r12, #1
_020D6BA0:
	cmp r12, #0
	ldmeqfd sp!, {r3, pc}
	and r1, r1, #0xf0000000
	teq r1, #0xe0000000
	movne r0, #1
	ldmfd sp!, {r3, pc}
	arm_func_end FUN_ov15_020d6b68

	arm_func_start FUN_ov15_020d6bb8
FUN_ov15_020d6bb8: ; 0x020D6BB8
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	ldr r7, _020D6CB0 ; =0x020E6D50
	mov r4, #0
	ldr r0, [r7]
	cmp r0, #0
	beq _020D6BE0
	mvn r2, r0
	add r1, r2, #1
	tst r2, r1
	beq _020D6BE8
_020D6BE0:
	mov r0, #0
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_020D6BE8:
	ldr r6, _020D6CB4 ; =0x020E6D90
	ldr r1, [r6]
	bl FUN_ov15_020d6b68
	cmp r0, #0
	moveq r0, r4
	ldmeqfd sp!, {r3, r4, r5, r6, r7, pc}
	ldr r5, _020D6CB8 ; =0x020E6D6C
	ldr r1, [r5]
	cmp r1, #0
	beq _020D6C60
	ldr r0, [r7]
	bl FUN_ov15_020d6b68
	cmp r0, #0
	beq _020D6C58
	ldr r2, [r7]
	cmn r2, #1
	ldrne r1, [r6]
	ldrne r0, [r5]
	andne r1, r1, r2
	andne r0, r0, r2
	cmpne r1, r0
	bne _020D6C58
	ldr r1, _020D6CB4 ; =0x020E6D90
	ldr r0, _020D6CB8 ; =0x020E6D6C
	ldr r1, [r1]
	ldr r0, [r0]
	cmp r1, r0
	bne _020D6C60
_020D6C58:
	ldr r0, _020D6CB8 ; =0x020E6D6C
	str r4, [r0]
_020D6C60:
	ldr r0, _020D6CB0 ; =0x020E6D50
	ldr r5, _020D6CBC ; =0x020E6DB0
	ldr r2, _020D6CB4 ; =0x020E6D90
	ldr r0, [r0]
	ldr r1, [r5]
	ldr r2, [r2]
	bl FUN_ov15_020d6ad4
	cmp r0, #0
	streq r4, [r5]
	ldr r0, _020D6CB0 ; =0x020E6D50
	ldr r5, _020D6CBC ; =0x020E6DB0
	ldr r2, _020D6CB4 ; =0x020E6D90
	ldr r0, [r0]
	ldr r1, [r5, #4]
	ldr r2, [r2]
	bl FUN_ov15_020d6ad4
	cmp r0, #0
	streq r4, [r5, #4]
	mov r0, #1
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_020D6CB0: .word ov15_020E6D50
_020D6CB4: .word ov15_020E6D90
_020D6CB8: .word ov15_020E6D6C
_020D6CBC: .word ov15_020E6DB0
	arm_func_end FUN_ov15_020d6bb8

	arm_func_start FUN_ov15_020d6cc0
FUN_ov15_020d6cc0: ; 0x020D6CC0
	mov r1, r0
	ldr r0, _020D6CD0 ; =0x020ED4D4
	ldr r12, _020D6CD4 ; =FUN_ov15_020d6cd8
	bx r12
_020D6CD0: .word ov15_020ED4D4
_020D6CD4: .word FUN_ov15_020d6cd8
	arm_func_end FUN_ov15_020d6cc0

	arm_func_start FUN_ov15_020d6cd8
FUN_ov15_020d6cd8: ; 0x020D6CD8
	ldr r2, [r0]
	str r2, [r1, #0xb8]
	str r1, [r0]
	bx lr
	arm_func_end FUN_ov15_020d6cd8

	arm_func_start FUN_ov15_020d6ce8
FUN_ov15_020d6ce8: ; 0x020D6CE8
	mov r1, r0
	ldr r0, _020D6CF8 ; =0x020ED4D8
	ldr r12, _020D6CFC ; =FUN_ov15_020d6cd8
	bx r12
_020D6CF8: .word ov15_020ED4D8
_020D6CFC: .word FUN_ov15_020d6cd8
	arm_func_end FUN_ov15_020d6ce8

	arm_func_start FUN_ov15_020d6d00
FUN_ov15_020d6d00: ; 0x020D6D00
	mov r1, r0
	ldr r0, _020D6D10 ; =0x020ED4D4
	ldr r12, _020D6D14 ; =FUN_ov15_020d6d18
	bx r12
_020D6D10: .word ov15_020ED4D4
_020D6D14: .word FUN_ov15_020d6d18
	arm_func_end FUN_ov15_020d6d00

	arm_func_start FUN_ov15_020d6d18
FUN_ov15_020d6d18: ; 0x020D6D18
	stmfd sp!, {r4, r5, r6, lr}
	mov r6, r0
	mov r5, r1
	bl OS_DisableInterrupts
	mov r4, r0
	mov r0, r6
	mov r1, r5
	bl FUN_ov15_020d6d50
	cmp r0, #0
	ldrne r1, [r5, #0xb8]
	strne r1, [r0]
	mov r0, r4
	bl OS_RestoreInterrupts
	ldmfd sp!, {r4, r5, r6, pc}
	arm_func_end FUN_ov15_020d6d18

	arm_func_start FUN_ov15_020d6d50
FUN_ov15_020d6d50: ; 0x020D6D50
	stmfd sp!, {r3, r4, r5, lr}
	mov r5, r0
	mov r4, r1
	bl OS_DisableInterrupts
	ldr r1, [r5]
	cmp r1, #0
	beq _020D6D90
_020D6D6C:
	cmp r1, r4
	bne _020D6D80
	bl OS_RestoreInterrupts
	mov r0, r5
	ldmfd sp!, {r3, r4, r5, pc}
_020D6D80:
	add r5, r1, #0xb8
	ldr r1, [r1, #0xb8]
	cmp r1, #0
	bne _020D6D6C
_020D6D90:
	bl OS_RestoreInterrupts
	mov r0, #0
	ldmfd sp!, {r3, r4, r5, pc}
	arm_func_end FUN_ov15_020d6d50

	arm_func_start FUN_ov15_020d6d9c
FUN_ov15_020d6d9c: ; 0x020D6D9C
	mov r1, r0
	ldr r0, _020D6DAC ; =0x020ED4D8
	ldr r12, _020D6DB0 ; =FUN_ov15_020d6d18
	bx r12
_020D6DAC: .word ov15_020ED4D8
_020D6DB0: .word FUN_ov15_020d6d18
	arm_func_end FUN_ov15_020d6d9c

	arm_func_start FUN_ov15_020d6db4
FUN_ov15_020d6db4: ; 0x020D6DB4
	stmfd sp!, {r3, lr}
	mov r1, r0
	cmp r1, #0
	ble _020D6DD4
	ldr r0, _020D6DE4 ; =0x020ED4D4
	bl FUN_ov15_020d6d50
	cmp r0, #0
	bne _020D6DDC
_020D6DD4:
	mov r0, #1
	ldmfd sp!, {r3, pc}
_020D6DDC:
	mov r0, #0
	ldmfd sp!, {r3, pc}
_020D6DE4: .word ov15_020ED4D4
	arm_func_end FUN_ov15_020d6db4

	arm_func_start FUN_ov15_020d6de8
FUN_ov15_020d6de8: ; 0x020D6DE8
	stmfd sp!, {r3, lr}
	mov r1, r0
	ldr r0, _020D6E08 ; =0x020ED4D8
	bl FUN_ov15_020d6d50
	cmp r0, #0
	movne r0, #1
	moveq r0, #0
	ldmfd sp!, {r3, pc}
_020D6E08: .word ov15_020ED4D8
	arm_func_end FUN_ov15_020d6de8

	arm_func_start FUN_ov15_020d6e0c
FUN_ov15_020d6e0c: ; 0x020D6E0C
	stmfd sp!, {r3, lr}
	cmp r1, #1
	bne _020D6E24
	ldr r0, _020D6E30 ; =0x020E5A1C
	bl FUN_ov15_020d4bcc
	ldmfd sp!, {r3, pc}
_020D6E24:
	ldr r0, _020D6E34 ; =0x020E5A04
	bl FUN_ov15_020d4bcc
	ldmfd sp!, {r3, pc}
_020D6E30: .word ov15_020E5A1C
_020D6E34: .word ov15_020E5A04
	arm_func_end FUN_ov15_020d6e0c

	arm_func_start FUN_ov15_020d6e38
FUN_ov15_020d6e38: ; 0x020D6E38
	ldrh r1, [r1, #2]
	ldr r12, _020D6E60 ; =FUN_ov15_020d4f98
	mov r2, r1, asr #8
	mov r1, r1, lsl #8
	and r2, r2, #0xff
	and r1, r1, #0xff00
	orr r1, r2, r1
	mov r1, r1, lsl #0x10
	mov r1, r1, lsr #0x10
	bx r12
_020D6E60: .word FUN_ov15_020d4f98
	arm_func_end FUN_ov15_020d6e38

	arm_func_start FUN_ov15_020d6e64
FUN_ov15_020d6e64: ; 0x020D6E64
	stmfd sp!, {r4, lr}
	ldrh r2, [r1, #2]
	ldr lr, [r1, #4]
	mov r4, r2, asr #8
	mov r1, r2, lsl #8
	mov r3, lr, lsr #0x18
	mov r2, lr, lsr #8
	mov r12, lr, lsl #8
	mov lr, lr, lsl #0x18
	and r4, r4, #0xff
	and r1, r1, #0xff00
	orr r1, r4, r1
	mov r1, r1, lsl #0x10
	and r3, r3, #0xff
	and r2, r2, #0xff00
	and r12, r12, #0xff0000
	orr r2, r3, r2
	and r3, lr, #0xff000000
	orr r2, r12, r2
	mov r1, r1, lsr #0x10
	orr r2, r3, r2
	bl FUN_ov15_020d5008
	ldmfd sp!, {r4, pc}
	arm_func_end FUN_ov15_020d6e64

	arm_func_start FUN_ov15_020d6ec0
FUN_ov15_020d6ec0: ; 0x020D6EC0
	stmfd sp!, {r3, lr}
	sub sp, sp, #8
	mov r12, #0
	str r12, [sp]
	str r3, [sp, #4]
	mov r3, r12
	bl FUN_ov15_020d5224
	add sp, sp, #8
	ldmfd sp!, {r3, pc}
	arm_func_end FUN_ov15_020d6ec0

	arm_func_start FUN_ov15_020d6ee4
FUN_ov15_020d6ee4: ; 0x020D6EE4
	stmfd sp!, {r3, lr}
	sub sp, sp, #0x10
	add r12, sp, #0xc
	str r12, [sp]
	str r3, [sp, #4]
	add r3, sp, #8
	bl FUN_ov15_020d5224
	cmp r0, #0
	addlt sp, sp, #0x10
	ldmltfd sp!, {r3, pc}
	ldr r1, [sp, #0x18]
	cmp r1, #0
	addeq sp, sp, #0x10
	ldmeqfd sp!, {r3, pc}
	ldrh r2, [sp, #8]
	mov r3, r2, asr #8
	mov r2, r2, lsl #8
	and r3, r3, #0xff
	and r2, r2, #0xff00
	orr r2, r3, r2
	strh r2, [r1, #2]
	ldr lr, [sp, #0xc]
	mov r3, lr, lsr #0x18
	mov r2, lr, lsr #8
	mov r12, lr, lsl #8
	mov lr, lr, lsl #0x18
	and r3, r3, #0xff
	and r2, r2, #0xff00
	and r12, r12, #0xff0000
	orr r2, r3, r2
	and r3, lr, #0xff000000
	orr r2, r12, r2
	orr r2, r3, r2
	str r2, [r1, #4]
	add sp, sp, #0x10
	ldmfd sp!, {r3, pc}
	arm_func_end FUN_ov15_020d6ee4

	arm_func_start FUN_ov15_020d6f74
FUN_ov15_020d6f74: ; 0x020D6F74
	stmfd sp!, {r3, lr}
	sub sp, sp, #8
	mov r12, #0
	str r12, [sp]
	str r3, [sp, #4]
	mov r3, r12
	bl FUN_ov15_020d5a8c
	add sp, sp, #8
	ldmfd sp!, {r3, pc}
	arm_func_end FUN_ov15_020d6f74

	arm_func_start FUN_ov15_020d6f98
FUN_ov15_020d6f98: ; 0x020D6F98
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	sub sp, sp, #8
	ldr r5, [sp, #0x20]
	cmp r5, #0
	moveq r5, #0
	moveq r4, r5
	beq _020D7004
	ldrh r4, [r5, #2]
	ldr r6, [r5, #4]
	mov r7, r4, asr #8
	mov r12, r4, lsl #8
	mov r4, r6, lsr #0x18
	mov lr, r6, lsr #8
	mov r5, r6, lsl #8
	mov r6, r6, lsl #0x18
	and r7, r7, #0xff
	and r12, r12, #0xff00
	orr r7, r7, r12
	and r4, r4, #0xff
	and lr, lr, #0xff00
	and r5, r5, #0xff0000
	orr r4, r4, lr
	mov r12, r7, lsl #0x10
	orr r4, r5, r4
	and r6, r6, #0xff000000
	mov r5, r12, lsr #0x10
	orr r4, r6, r4
_020D7004:
	str r4, [sp]
	str r3, [sp, #4]
	mov r3, r5
	bl FUN_ov15_020d5a8c
	add sp, sp, #8
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
	arm_func_end FUN_ov15_020d6f98

	arm_func_start FUN_ov15_020d701c
FUN_ov15_020d701c: ; 0x020D701C
	ldr r12, _020D7024 ; =FUN_ov15_020d6120
	bx r12
_020D7024: .word FUN_ov15_020d6120
	arm_func_end FUN_ov15_020d701c

	arm_func_start FUN_ov15_020d7028
FUN_ov15_020d7028: ; 0x020D7028
	ldr r12, _020D7030 ; =FUN_ov15_020d6230
	bx r12
_020D7030: .word FUN_ov15_020d6230
	arm_func_end FUN_ov15_020d7028

	arm_func_start FUN_ov15_020d7034
FUN_ov15_020d7034: ; 0x020D7034
	stmfd sp!, {r4, r5, r6, r7, r8, lr}
	mov r8, r0
	bl FUN_ov15_020d67b4
	movs r5, r0
	moveq r0, #0
	ldmeqfd sp!, {r4, r5, r6, r7, r8, pc}
	ldr r7, _020D70E0 ; =0x020ED564
	ldr r6, _020D70E4 ; =0x00000101
	mov r4, #0
	mov r0, r7
	mov r1, r4
	mov r2, r6
	bl MI_CpuFill8
	mov r0, r7
	mov r1, r8
	mov r2, r6
	bl STD_CopyLString
	ldr r1, _020D70E8 ; =0x020ED4DC
	mov r2, r5, lsr #0x18
	str r7, [r1, #0x20]
	mov r0, r5, lsr #8
	mov r3, r5, lsl #8
	mov r5, r5, lsl #0x18
	str r4, [r1, #0x24]
	mov r12, #2
	strh r12, [r1, #0x28]
	mov r12, #4
	ldr lr, _020D70EC ; =0x020ED4F4
	strh r12, [r1, #0x2a]
	and r2, r2, #0xff
	and r0, r0, #0xff00
	ldr r12, _020D70F0 ; =0x020ED4DC
	str lr, [r1, #0x2c]
	str r12, [r1, #0x18]
	and r3, r3, #0xff0000
	orr r0, r2, r0
	and r2, r5, #0xff000000
	orr r0, r3, r0
	str r4, [r1, #0x1c]
	orr r2, r2, r0
	ldr r0, _020D70F4 ; =0x020ED4FC
	str r2, [r1]
	ldmfd sp!, {r4, r5, r6, r7, r8, pc}
_020D70E0: .word ov15_020ED564
_020D70E4: .word 0x00000101
_020D70E8: .word ov15_020ED4DC
_020D70EC: .word ov15_020ED4F4
_020D70F0: .word ov15_020ED4DC
_020D70F4: .word ov15_020ED4FC
	arm_func_end FUN_ov15_020d7034

	arm_func_start FUN_ov15_020d70f8
FUN_ov15_020d70f8: ; 0x020D70F8
	stmfd sp!, {r3, lr}
	bl FUN_ov15_020d692c
	mov r2, r0, lsr #0x18
	mov r1, r0, lsr #8
	mov r3, r0, lsl #8
	mov r12, r0, lsl #0x18
	and r2, r2, #0xff
	and r0, r1, #0xff00
	and r1, r3, #0xff0000
	orr r0, r2, r0
	and r2, r12, #0xff000000
	orr r0, r1, r0
	orr r0, r2, r0
	ldmfd sp!, {r3, pc}
	arm_func_end FUN_ov15_020d70f8

	arm_func_start FUN_ov15_020d7130
FUN_ov15_020d7130: ; 0x020D7130
	stmfd sp!, {r3, r4, r5, lr}
	ldr r12, [r1]
	ldr r0, [r0]
	mov r2, r12, lsr #0x18
	mov r4, r0, lsr #0x18
	mov lr, r0, lsr #8
	mov r1, r12, lsr #8
	mov r5, r0, lsl #8
	mov r3, r12, lsl #8
	mov r0, r0, lsl #0x18
	mov r12, r12, lsl #0x18
	and r4, r4, #0xff
	and lr, lr, #0xff00
	and r2, r2, #0xff
	and r1, r1, #0xff00
	and r5, r5, #0xff0000
	orr r4, r4, lr
	and r3, r3, #0xff0000
	orr r1, r2, r1
	and lr, r0, #0xff000000
	orr r0, r5, r4
	and r2, r12, #0xff000000
	orr r1, r3, r1
	orr r0, lr, r0
	orr r1, r2, r1
	bl FUN_ov15_020d68c4
	ldmfd sp!, {r3, r4, r5, pc}
	arm_func_end FUN_ov15_020d7130

	arm_func_start FUN_ov15_020d719c
FUN_ov15_020d719c: ; 0x020D719C
	stmfd sp!, {r4, lr}
	ldr r1, _020D71C4 ; =0x020ED4DC
	add r4, r0, #4
	ldr r2, [r1, #0xc]
	mov r1, r4
	mov r0, #0
	blx r2
	cmp r0, #0
	strne r4, [r0], #4
	ldmfd sp!, {r4, pc}
_020D71C4: .word ov15_020ED4DC
	arm_func_end FUN_ov15_020d719c

	arm_func_start FUN_ov15_020d71c8
FUN_ov15_020d71c8: ; 0x020D71C8
	stmfd sp!, {r3, lr}
	cmp r0, #0
	ldmeqfd sp!, {r3, pc}
	ldr r1, _020D71F0 ; =0x020ED4DC
	ldr r2, [r0, #-4]
	ldr r3, [r1, #4]
	sub r1, r0, #4
	mov r0, #0
	blx r3
	ldmfd sp!, {r3, pc}
_020D71F0: .word ov15_020ED4DC
	arm_func_end FUN_ov15_020d71c8

	arm_func_start FUN_ov15_020d71f4
FUN_ov15_020d71f4: ; 0x020D71F4
	stmfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, lr}
	sub sp, sp, #0xc
	ldr r1, [r0, #0xc]
	ldr r5, [r0, #0x14]
	cmp r1, #1
	ldr r1, [r0, #0x10]
	ldr r12, [r0, #0x18]
	mov r7, r1, lsr #0x18
	mov r6, r1, lsr #8
	mov r8, r1, lsl #8
	mov r10, #1
	mov r9, r1, lsl #0x18
	mov r1, r12, lsr #0x18
	str r1, [sp]
	mov r4, r5, lsl #8
	and r7, r7, #0xff
	and r6, r6, #0xff00
	orr r7, r7, r6
	mov r6, r12, lsr #8
	and r8, r8, #0xff0000
	str r6, [sp, #4]
	ldr r3, [r0, #0x1c]
	orr r7, r8, r7
	and r1, r9, #0xff000000
	mov lr, r5, lsr #0x18
	orr r1, r1, r7
	mov r7, r5, lsl #0x18
	mov r11, r5, lsr #8
	mov r8, r3, lsr #0x18
	str r8, [sp, #8]
	ldr r6, _020D7378 ; =0x020ED4DC
	movne r10, #0
	str r10, [r6, #0x50]
	str r1, [r6, #0x54]
	mov r5, r12, lsl #8
	mov r10, r12, lsl #0x18
	and r8, r11, #0xff00
	and r11, r10, #0xff000000
	and r10, r5, #0xff0000
	ldr r5, [sp]
	ldr r12, [sp, #4]
	and r9, lr, #0xff
	orr r8, r9, r8
	and r4, r4, #0xff0000
	and r5, r5, #0xff
	and r12, r12, #0xff00
	orr r5, r5, r12
	orr r5, r10, r5
	ldr r2, [r0, #0x20]
	orr r4, r4, r8
	and r7, r7, #0xff000000
	orr r7, r7, r4
	mov r8, r2, lsr #0x18
	mov r4, r2, lsr #8
	str r7, [r6, #0x58]
	orr r5, r11, r5
	ldr r10, [sp, #8]
	mov r1, r3, lsr #8
	and r11, r10, #0xff
	mov r9, r3, lsl #8
	and r10, r1, #0xff00
	mov r7, r3, lsl #0x18
	mov r3, r2, lsl #8
	and r1, r9, #0xff0000
	orr r9, r11, r10
	mov r2, r2, lsl #0x18
	and r10, r7, #0xff000000
	and r8, r8, #0xff
	and r4, r4, #0xff00
	orr r7, r1, r9
	orr r1, r8, r4
	and r3, r3, #0xff0000
	str r5, [r6, #0x5c]
	orr r4, r10, r7
	and r2, r2, #0xff000000
	orr r1, r3, r1
	orr r1, r2, r1
	str r4, [r6, #0x60]
	str r1, [r6, #0x64]
	ldr r2, _020D737C ; =FUN_ov15_020d719c
	ldr r1, _020D7380 ; =FUN_ov15_020d71c8
	str r2, [r6, #0x68]
	str r1, [r6, #0x6c]
	ldr r2, [r0, #4]
	ldr r1, [r0, #8]
	str r2, [r6, #0xc]
	str r1, [r6, #4]
	mov r1, #0x40
	str r1, [r6, #0x70]
	ldr r2, [r0, #0x2c]
	ldr r1, [r0, #0x30]
	str r2, [r6, #0x80]
	ldr r0, _020D7384 ; =0x020ED52C
	str r1, [r6, #0x84]
	bl FUN_ov15_020d45e8
	add sp, sp, #0xc
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
_020D7378: .word ov15_020ED4DC
_020D737C: .word FUN_ov15_020d719c
_020D7380: .word FUN_ov15_020d71c8
_020D7384: .word ov15_020ED52C
	arm_func_end FUN_ov15_020d71f4

	arm_func_start FUN_ov15_020d7388
FUN_ov15_020d7388: ; 0x020D7388
	ldr r12, _020D7390 ; =FUN_ov15_020d65d4
	bx r12
_020D7390: .word FUN_ov15_020d65d4
	arm_func_end FUN_ov15_020d7388

	arm_func_start FUN_ov15_020d7394
FUN_ov15_020d7394: ; 0x020D7394
	stmfd sp!, {r4, lr}
	mov r4, r1
	bl FUN_ov15_020d687c
	cmp r0, #0
	moveq r0, #0
	ldmeqfd sp!, {r4, pc}
	cmp r4, #0
	beq _020D73E4
	mov r2, r0, lsr #0x18
	mov r1, r0, lsr #8
	mov r3, r0, lsl #8
	mov r12, r0, lsl #0x18
	and r2, r2, #0xff
	and r0, r1, #0xff00
	and r1, r3, #0xff0000
	orr r0, r2, r0
	and r2, r12, #0xff000000
	orr r0, r1, r0
	orr r0, r2, r0
	str r0, [r4]
_020D73E4:
	mov r0, #1
	ldmfd sp!, {r4, pc}
	arm_func_end FUN_ov15_020d7394

	arm_func_start FUN_ov15_020d73ec
FUN_ov15_020d73ec: ; 0x020D73EC
	mov r12, r0, lsr #0x18
	mov r3, r0, lsr #0x10
	mov r2, r0, lsr #8
	strb r12, [r1]
	strb r3, [r1, #1]
	strb r2, [r1, #2]
	strb r0, [r1, #3]
	bx lr
	arm_func_end FUN_ov15_020d73ec

	arm_func_start FUN_ov15_020d740c
FUN_ov15_020d740c: ; 0x020D740C
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, lr}
	movs r10, r1
	mov r9, r2
	mov r8, r3
	str r0, [sp]
	cmpne r0, #0
	moveq r0, #0
	ldmeqfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
	mvn r0, #0
	cmp r8, r0
	cmpeq r9, r0
	movne r11, #1
	moveq r11, #0
_020D7440:
	mov r6, #0
	ldr r4, [sp]
	mov r5, r6
	cmp r10, #0
	bls _020D7480
_020D7454:
	ldrsh r1, [r4, #4]
	ldr r0, [r4]
	orr r7, r1, #0xe0
	bl FUN_ov15_020d6994
	ands r0, r7, r0
	strh r0, [r4, #6]
	add r5, r5, #1
	addne r6, r6, #1
	cmp r5, r10
	add r4, r4, #8
	blo _020D7454
_020D7480:
	cmp r6, #0
	bgt _020D74B4
	cmp r11, #0
	beq _020D749C
	rsbs r0, r9, #0
	rscs r0, r8, #0
	bge _020D74B4
_020D749C:
	mov r0, #1
	bl OS_Sleep
	ldr r0, _020D74BC ; =0x0000020B
	subs r9, r9, r0
	sbc r8, r8, #0
	b _020D7440
_020D74B4:
	mov r0, r6
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_020D74BC: .word 0x0000020B
	arm_func_end FUN_ov15_020d740c

	arm_func_start FUN_ov15_020d74c0
FUN_ov15_020d74c0: ; 0x020D74C0
	stmfd sp!, {r3, r4, r5, lr}
	mov r5, r0
	mov r4, r1
	bl FUN_ov15_020d6db4
	cmp r0, #0
	mvnne r0, #0x1b
	ldmnefd sp!, {r3, r4, r5, pc}
	ldrsb r0, [r5, #0xaf]
	mov r1, #1
	cmp r0, #0
	cmpne r0, #4
	movne r1, #0
	cmp r1, #0
	mvneq r0, #0x1b
	ldmeqfd sp!, {r3, r4, r5, pc}
	cmp r5, #0
	mov r1, #0
	beq _020D7514
	ldrsh r0, [r5, #0xac]
	tst r0, #1
	movne r1, #1
_020D7514:
	cmp r1, #0
	mvneq r0, #0x26
	ldmeqfd sp!, {r3, r4, r5, pc}
	ldrsh r0, [r5, #0xac]
	tst r0, #2
	mvnne r0, #0x1b
	ldmnefd sp!, {r3, r4, r5, pc}
	mov r0, r5
	mov r1, r4
	bl FUN_ov15_020d7540
	ldmfd sp!, {r3, r4, r5, pc}
	arm_func_end FUN_ov15_020d74c0

	arm_func_start FUN_ov15_020d7540
FUN_ov15_020d7540: ; 0x020D7540
	stmfd sp!, {r4, r5, r6, lr}
	mov r6, r0
	mov r4, #1
	mov r5, r1
	ldr r0, _020D757C ; =FUN_ov15_020d7580
	mov r1, r6
	mov r2, r4
	bl FUN_ov15_020d4998
	movs r1, r0
	subeq r0, r4, #0x22
	ldmeqfd sp!, {r4, r5, r6, pc}
	mov r0, r6
	str r5, [r1, #0x10]
	bl FUN_ov15_020d4ae4
	ldmfd sp!, {r4, r5, r6, pc}
_020D757C: .word FUN_ov15_020d7580
	arm_func_end FUN_ov15_020d7540

	arm_func_start FUN_ov15_020d7580
FUN_ov15_020d7580: ; 0x020D7580
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	mov r4, r0
	ldr r5, [r4, #4]
	ldr r6, [r5, #0xa0]
	add r0, r6, #0xe0
	ldr r7, [r6, #0xc4]
	bl OS_LockMutex
	ldr r1, [r4, #0x10]
	cmp r1, #0
	beq _020D75C0
	mov r0, #1
	str r1, [r7, #0xc]
	bl FUN_ov15_020da6d4
	mov r0, #4
	strb r0, [r5, #0xaf]
	b _020D75D4
_020D75C0:
	mov r4, #0
	mov r0, r4
	strb r4, [r5, #0xaf]
	bl FUN_ov15_020da6d4
	str r4, [r7, #0xc]
_020D75D4:
	add r0, r6, #0xe0
	bl OS_UnlockMutex
	mov r0, #0
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
	arm_func_end FUN_ov15_020d7580

	arm_func_start FUN_ov15_020d75e4
FUN_ov15_020d75e4: ; 0x020D75E4
	stmfd sp!, {r4, r5, r6, r7, r8, r9, r10, lr}
	mov r8, r0
	bl OS_DisableInterrupts
	mov r5, #0
	ldr r4, _020D7678 ; =0x020ED684
	mov r7, r0
	strb r5, [r8, #0x30]
	mov r10, #0x20
	mov r9, #0x5c
_020D7608:
	mla r6, r5, r9, r4
	ldrb r0, [r6, #0x5a]
	cmp r0, #0
	beq _020D7660
	ldr r0, [r6, #0x54]
	cmp r0, #0
	ldreqh r0, [r6, #0x58]
	cmpeq r0, #0
	bne _020D7660
	mov r0, r6
	mov r2, r10
	add r1, r8, #0x74
	bl FUN_020219ac
	cmp r0, #0
	bne _020D7660
	mov r1, r8
	add r0, r6, #0x20
	mov r2, #0x30
	bl MI_CpuCopy8
	mov r0, #1
	strb r0, [r8, #0x30]
	b _020D766C
_020D7660:
	add r5, r5, #1
	cmp r5, #4
	blt _020D7608
_020D766C:
	mov r0, r7
	bl OS_RestoreInterrupts
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, pc}
_020D7678: .word ov15_020ED684
	arm_func_end FUN_ov15_020d75e4

	arm_func_start FUN_ov15_020d767c
FUN_ov15_020d767c: ; 0x020D767C
	stmfd sp!, {r4, r5, r6, r7, r8, lr}
	mov r8, r0
	mov r7, r1
	mov r6, r2
	bl OS_DisableInterrupts
	mov r3, #0
	mov r5, r0
	ldr r2, _020D771C ; =0x020ED684
	strb r3, [r8, #0x30]
	mov r0, #0x5c
_020D76A4:
	mla r4, r3, r0, r2
	ldrb r1, [r4, #0x5a]
	cmp r1, #0
	beq _020D7704
	ldr r1, [r4, #0x54]
	cmp r1, r7
	ldreqh r1, [r4, #0x58]
	cmpeq r1, r6
	bne _020D7704
	mov r0, r4
	add r1, r8, #0x74
	mov r2, #0x20
	bl MI_CpuCopy8
	mov r1, r8
	add r0, r4, #0x20
	mov r2, #0x30
	bl MI_CpuCopy8
	bl FUN_02003410
	mov r0, r0, lsr #0x10
	orr r0, r0, r1, lsl #16
	str r0, [r4, #0x50]
	mov r0, #1
	strb r0, [r8, #0x30]
	b _020D7710
_020D7704:
	add r3, r3, #1
	cmp r3, #4
	blt _020D76A4
_020D7710:
	mov r0, r5
	bl OS_RestoreInterrupts
	ldmfd sp!, {r4, r5, r6, r7, r8, pc}
_020D771C: .word ov15_020ED684
	arm_func_end FUN_ov15_020d767c

	arm_func_start FUN_ov15_020d7720
FUN_ov15_020d7720: ; 0x020D7720
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, lr}
	mov r8, r0
	mov r7, r1
	mov r6, r2
	bl OS_DisableInterrupts
	mov r11, r0
	bl FUN_02003410
	mov r5, r0, lsr #0x10
	ldr r4, _020D780C ; =0x020ED684
	mov r3, #0
	mov r2, r3
	orr r5, r5, r1, lsl #16
	mov r0, r4
	mvn r9, #0
	mov lr, #0x5c
_020D775C:
	mla r1, r2, lr, r0
	ldrb r12, [r1, #0x5a]
	cmp r12, #0
	cmpne r7, #0
	beq _020D7794
	ldr r10, [r1, #0x54]
	cmp r7, r10
	bne _020D7794
	cmp r6, #0
	beq _020D7794
	ldrh r10, [r1, #0x58]
	cmp r6, r10
	moveq r4, r1
	beq _020D77CC
_020D7794:
	cmp r3, r9
	beq _020D77C0
	cmp r12, #0
	moveq r3, r9
	moveq r4, r1
	beq _020D77C0
	ldr r10, [r1, #0x50]
	sub r10, r5, r10
	cmp r10, r3
	movhi r3, r10
	movhi r4, r1
_020D77C0:
	add r2, r2, #1
	cmp r2, #4
	blt _020D775C
_020D77CC:
	mov r1, r4
	add r0, r8, #0x74
	mov r2, #0x20
	bl MI_CpuCopy8
	mov r0, r8
	add r1, r4, #0x20
	mov r2, #0x30
	bl MI_CpuCopy8
	str r5, [r4, #0x50]
	mov r0, #1
	strb r0, [r4, #0x5a]
	str r7, [r4, #0x54]
	mov r0, r11
	strh r6, [r4, #0x58]
	bl OS_RestoreInterrupts
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_020D780C: .word ov15_020ED684
	arm_func_end FUN_ov15_020d7720

	arm_func_start FUN_ov15_020d7810
FUN_ov15_020d7810: ; 0x020D7810
	stmfd sp!, {r4, r5, r6, r7, r8, r9, r10, lr}
	mov r8, r0
	bl OS_DisableInterrupts
	ldr r4, _020D7878 ; =0x020ED684
	mov r7, r0
	mov r5, #0
	mov r10, #0x20
	mov r9, #0x5c
_020D7830:
	mla r6, r5, r9, r4
	ldrb r0, [r6, #0x5a]
	cmp r0, #0
	beq _020D7860
	mov r0, r6
	mov r2, r10
	add r1, r8, #0x74
	bl FUN_020219ac
	cmp r0, #0
	moveq r0, #0
	streqb r0, [r6, #0x5a]
	beq _020D786C
_020D7860:
	add r5, r5, #1
	cmp r5, #4
	blt _020D7830
_020D786C:
	mov r0, r7
	bl OS_RestoreInterrupts
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, pc}
_020D7878: .word ov15_020ED684
	arm_func_end FUN_ov15_020d7810

	arm_func_start FUN_ov15_020d787c
FUN_ov15_020d787c: ; 0x020D787C
	stmfd sp!, {r4, r5, lr}
	sub sp, sp, #0x1c
	add r5, sp, #0xc
	mov r0, r5
	bl FUN_0200aea0
	add r4, sp, #0
	mov r0, r4
	bl FUN_0200af48
	mov r0, r5
	mov r1, r4
	bl FUN_0200b61c
	ldr r1, _020D78B8 ; =0x386D4380
	add r0, r0, r1
	add sp, sp, #0x1c
	ldmfd sp!, {r4, r5, pc}
_020D78B8: .word 0x386D4380
	arm_func_end FUN_ov15_020d787c

	arm_func_start FUN_ov15_020d78bc
FUN_ov15_020d78bc: ; 0x020D78BC
	ldr r0, _020D78C8 ; =0x020E5A54
	ldr r0, [r0, #4]
	bx lr
_020D78C8: .word ov15_020E5A54
	arm_func_end FUN_ov15_020d78bc

	arm_func_start FUN_ov15_020d78cc
FUN_ov15_020d78cc: ; 0x020D78CC
	ldr r1, _020D78D8 ; =0x020E5A54
	str r0, [r1, #4]
	bx lr
_020D78D8: .word ov15_020E5A54
	arm_func_end FUN_ov15_020d78cc

	arm_func_start FUN_ov15_020d78dc
FUN_ov15_020d78dc: ; 0x020D78DC
	stmfd sp!, {r4, r5, r6, lr}
	ldr r4, _020D791C ; =0x020E5A54
	ldr r0, [r4, #4]
	cmp r0, #0x20
	mvnhs r0, #0
	ldmhsfd sp!, {r4, r5, r6, pc}
	ldr r0, _020D7920 ; =0x020939a4
	ldr r6, [r0, #4]
	mov r0, r6
	bl OS_GetThreadPriority
	mov r5, r0
	ldr r1, [r4, #4]
	mov r0, r6
	bl OS_SetThreadPriority
	mov r0, r5
	ldmfd sp!, {r4, r5, r6, pc}
_020D791C: .word ov15_020E5A54
_020D7920: .word 0x020939a4
	arm_func_end FUN_ov15_020d78dc

	arm_func_start FUN_ov15_020d7924
FUN_ov15_020d7924: ; 0x020D7924
	stmfd sp!, {r3, lr}
	mov r1, r0
	cmp r1, #0x20
	ldmhsfd sp!, {r3, pc}
	ldr r0, _020D7944 ; =0x020939a4
	ldr r0, [r0, #4]
	bl OS_SetThreadPriority
	ldmfd sp!, {r3, pc}
_020D7944: .word 0x020939a4
	arm_func_end FUN_ov15_020d7924

	arm_func_start FUN_ov15_020d7948
FUN_ov15_020d7948: ; 0x020D7948
	ldr r2, _020D796C ; =0x020939a4
	ldr r2, [r2, #4]
	ldr r2, [r2, #0xa4]
	cmp r2, #0
	ldrne r2, [r2, #0xc]
	cmpne r2, #0
	strne r0, [r2, #0x814]
	strne r1, [r2, #0x818]
	bx lr
_020D796C: .word 0x020939a4
	arm_func_end FUN_ov15_020d7948

	arm_func_start FUN_ov15_020d7970
FUN_ov15_020d7970: ; 0x020D7970
	stmfd sp!, {r4, r5, r6, r7, r8, lr}
	ldr r6, [r0, #0x818]
	mov r8, r1
	cmp r6, #0
	mov r4, #0
	ble _020D79B4
	ldr r5, [r0, #0x814]
_020D798C:
	ldr r7, [r5, r4, lsl #2]
	mov r1, r8
	ldr r0, [r7]
	bl FUN_02023fe0
	cmp r0, #0
	moveq r0, r7
	ldmeqfd sp!, {r4, r5, r6, r7, r8, pc}
	add r4, r4, #1
	cmp r4, r6
	blt _020D798C
_020D79B4:
	mov r0, #0
	ldmfd sp!, {r4, r5, r6, r7, r8, pc}
	arm_func_end FUN_ov15_020d7970

	arm_func_start FUN_ov15_020d79bc
FUN_ov15_020d79bc: ; 0x020D79BC
	ldr r1, [r0]
	ldrb r2, [r1]
	add r3, r1, #1
	tst r2, #0x80
	beq _020D7A00
	ands r1, r2, #0x7f
	sub r12, r1, #1
	mov r2, #0
	beq _020D7A00
_020D79E0:
	tst r2, #0xff000000
	mvnne r0, #0
	bxne lr
	ldrb r1, [r3], #1
	cmp r12, #0
	sub r12, r12, #1
	add r2, r1, r2, lsl #8
	bne _020D79E0
_020D7A00:
	str r3, [r0]
	mov r0, r2
	bx lr
	arm_func_end FUN_ov15_020d79bc

	arm_func_start FUN_ov15_020d7a0c
FUN_ov15_020d7a0c: ; 0x020D7A0C
	ldrsb r3, [r0]
	mov r12, r0
	cmp r3, #0
	beq _020D7A54
_020D7A1C:
	ldrsb r3, [r0, #1]!
	cmp r3, #0
	bne _020D7A1C
	sub r3, r0, r12
	cmp r3, #0xff
	bxge lr
	mov r3, #0x2c
	strb r3, [r0]
	mov r3, #0x20
	strb r3, [r0, #1]
	add r0, r0, #2
	b _020D7A54
_020D7A4C:
	ldrsb r3, [r1], #1
	strb r3, [r0], #1
_020D7A54:
	cmp r2, #0
	sub r2, r2, #1
	beq _020D7A6C
	sub r3, r0, r12
	cmp r3, #0xff
	blt _020D7A4C
_020D7A6C:
	mov r1, #0
	strb r1, [r0]
	bx lr
	arm_func_end FUN_ov15_020d7a0c

	arm_func_start FUN_ov15_020d7a78
FUN_ov15_020d7a78: ; 0x020D7A78
	stmfd sp!, {r4, lr}
	ldrb r12, [r0, #1]
	ldrb r3, [r0], #2
	mov r2, #0xa
	cmp r1, #0x17
	mla r1, r3, r2, r12
	sub lr, r1, #0x210
	bne _020D7AAC
	cmp lr, #0x32
	addlo r4, lr, #0x7d0
	addhs r1, lr, #0x36c
	addhs r4, r1, #0x400
	b _020D7AC4
_020D7AAC:
	ldrb r12, [r0, #1]
	ldrb r3, [r0], #2
	mov r1, #0x64
	mla r2, r3, r2, r12
	sub r2, r2, #0x210
	mla r4, lr, r1, r2
_020D7AC4:
	ldrb r12, [r0, #1]
	ldrb r3, [r0]
	mov r1, #0xa
	ldrb r2, [r0, #3]
	ldrb r0, [r0, #2]
	mla r12, r3, r1, r12
	mla r1, r0, r1, r2
	sub r0, r12, #0x210
	mov r0, r0, lsl #8
	add r2, r0, r4, lsl #16
	sub r0, r1, #0x210
	add r0, r2, r0
	ldmfd sp!, {r4, pc}
	arm_func_end FUN_ov15_020d7a78

	arm_func_start FUN_ov15_020d7af8
FUN_ov15_020d7af8: ; 0x020D7AF8
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, lr}
	sub sp, sp, #8
	mov r11, r1
	ldr r4, [r11]
	add r5, sp, #4
	add r1, r4, #1
	mov r9, r0
	str r1, [sp, #4]
	mov r0, r5
	mov r7, r2
	mov r6, r3
	ldr r8, [sp, #0x30]
	ldrb r10, [r4]
	bl FUN_ov15_020d79bc
	movs r4, r0
	bmi _020D7B40
	cmp r4, #0x7d0
	ble _020D7B4C
_020D7B40:
	add sp, sp, #8
	mov r0, #1
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_020D7B4C:
	and r1, r10, #0x1f
	cmp r1, #0x18
	addls pc, pc, r1, lsl #2
	b _020D7F28
_020D7B5C: ; jump table
	b _020D7F28 ; case 0
	b _020D7F28 ; case 1
	b _020D7BC0 ; case 2
	b _020D7CA4 ; case 3
	b _020D7F28 ; case 4
	b _020D7F28 ; case 5
	b _020D7D14 ; case 6
	b _020D7F28 ; case 7
	b _020D7F28 ; case 8
	b _020D7F28 ; case 9
	b _020D7F28 ; case 10
	b _020D7F28 ; case 11
	b _020D7DA0 ; case 12
	b _020D7F28 ; case 13
	b _020D7F28 ; case 14
	b _020D7F28 ; case 15
	b _020D7E5C ; case 16
	b _020D7EDC ; case 17
	b _020D7F28 ; case 18
	b _020D7DA0 ; case 19
	b _020D7DA0 ; case 20
	b _020D7F28 ; case 21
	b _020D7DA0 ; case 22
	b _020D7E10 ; case 23
	b _020D7E10 ; case 24
_020D7BC0:
	ldrb r0, [r9, #0x5ad]
	cmp r0, #0
	beq _020D7CA0
	cmp r6, #0
	bne _020D7C38
	ldr r0, [sp, #4]
	ldrb r1, [r0]
	cmp r1, #0
	bne _020D7BFC
_020D7BE4:
	add r0, r0, #1
	str r0, [sp, #4]
	ldrb r1, [r0]
	sub r4, r4, #1
	cmp r1, #0
	beq _020D7BE4
_020D7BFC:
	cmp r8, #0
	beq _020D7C18
	cmp r8, #2
	streq r4, [r9, #0x484]
	ldreq r0, [sp, #4]
	streq r0, [r9, #0x488]
	b _020D7CA0
_020D7C18:
	cmp r4, #0x100
	bgt _020D7CA0
	add r1, r9, #0x94
	mov r2, r4
	add r1, r1, #0x400
	bl MI_CpuCopy8
	str r4, [r9, #0x594]
	b _020D7CA0
_020D7C38:
	cmp r6, #1
	bne _020D7CA0
	ldr r0, [sp, #4]
	ldrb r1, [r0]
	cmp r1, #0
	bne _020D7C68
_020D7C50:
	add r0, r0, #1
	str r0, [sp, #4]
	ldrb r1, [r0]
	sub r4, r4, #1
	cmp r1, #0
	beq _020D7C50
_020D7C68:
	cmp r8, #0
	beq _020D7C84
	cmp r8, #2
	streq r4, [r9, #0x48c]
	ldreq r0, [sp, #4]
	streq r0, [r9, #0x490]
	b _020D7CA0
_020D7C84:
	cmp r4, #8
	bgt _020D7CA0
	add r1, r9, #0x198
	mov r2, r4
	add r1, r1, #0x400
	bl MI_CpuCopy8
	str r4, [r9, #0x5a0]
_020D7CA0:
	b _020D7F80
_020D7CA4:
	cmp r7, #1
	mov r5, #0
	bne _020D7CC8
	cmp r8, #2
	ldrne r1, [sp, #4]
	subne r0, r4, #1
	addne r1, r1, #1
	strne r1, [r9, #0x5a4]
	strne r0, [r9, #0x5a8]
_020D7CC8:
	ldrb r0, [r9, #0x5ad]
	cmp r0, #0
	beq _020D7D10
	ldr r0, [sp, #4]
	add r1, sp, #4
	add r0, r0, #1
	str r0, [sp, #4]
	mov r0, r9
	mov r2, r7
	mov r3, r5
	str r8, [sp]
	bl FUN_ov15_020d7af8
	cmp r0, #0
	addne sp, sp, #8
	movne r0, #1
	ldmnefd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
	strb r5, [r9, #0x5ad]
	b _020D7F8C
_020D7D10:
	b _020D7F80
_020D7D14:
	ldr r6, [sp, #4]
	ldr r10, _020D7FA0 ; =0x020E5A5C
	mov r5, #0
_020D7D20:
	ldr r7, [r10, r5, lsl #2]
	mov r0, r7
	bl _strlen
	mov r2, r0
	mov r0, r6
	mov r1, r7
	bl FUN_020219ac
	cmp r0, #0
	bne _020D7D90
	cmp r5, #5
	addls pc, pc, r5, lsl #2
	b _020D7D9C
_020D7D50: ; jump table
	b _020D7D9C ; case 0
	b _020D7D68 ; case 1
	b _020D7D68 ; case 2
	b _020D7D78 ; case 3
	b _020D7D78 ; case 4
	b _020D7D84 ; case 5
_020D7D68:
	cmp r8, #0
	streq r5, [r9, #0x45c]
	strb r5, [r9, #0x5ad]
	b _020D7D9C
_020D7D78:
	cmp r8, #2
	strne r5, [r9, #0x458]
	b _020D7D9C
_020D7D84:
	cmp r8, #2
	strneb r5, [r9, #0x5ae]
	b _020D7D9C
_020D7D90:
	add r5, r5, #1
	cmp r5, #6
	blt _020D7D20
_020D7D9C:
	b _020D7F80
_020D7DA0:
	cmp r8, #2
	mov r5, #0
	beq _020D7E08
	ldrb r0, [r9, #0x5ac]
	cmp r0, #0
	beq _020D7DF8
	ldr r1, [sp, #4]
	mov r2, r4
	add r0, r9, #0x6b0
	bl FUN_ov15_020d7a0c
	ldrb r0, [r9, #0x5ae]
	cmp r0, #5
	bne _020D7E08
	cmp r4, #0x4f
	bgt _020D7E08
	ldr r0, [sp, #4]
	mov r2, r4
	add r1, r9, #0x7b0
	bl MI_CpuCopy8
	add r0, r9, r4
	strb r5, [r0, #0x7b0]
	b _020D7E08
_020D7DF8:
	ldr r1, [sp, #4]
	mov r2, r4
	add r0, r9, #0x5b0
	bl FUN_ov15_020d7a0c
_020D7E08:
	strb r5, [r9, #0x5ae]
	b _020D7F80
_020D7E10:
	cmp r8, #2
	mov r5, #1
	mov r7, #0
	beq _020D7E48
	ldr r0, [sp, #4]
	bl FUN_ov15_020d7a78
	cmp r6, #0
	ldr r1, [r9, #0x80c]
	bne _020D7E40
	cmp r1, r0
	strhsb r5, [r9, #0x5af]
	b _020D7E48
_020D7E40:
	cmp r1, r0
	strhib r7, [r9, #0x5af]
_020D7E48:
	ldr r0, [sp, #4]
	add r0, r0, r4
	str r0, [sp, #4]
	strb r5, [r9, #0x5ac]
	b _020D7F8C
_020D7E5C:
	cmp r7, #0
	cmpeq r6, #0
	bne _020D7E74
	cmp r8, #2
	ldrne r0, [sp, #4]
	strne r0, [r9, #0x460]
_020D7E74:
	ldr r0, [sp, #4]
	mov r5, #0
	add r10, r0, r4
	cmp r0, r10
	bhs _020D7EC4
	add r4, sp, #4
_020D7E8C:
	mov r0, r9
	mov r1, r4
	mov r3, r5
	add r2, r7, #1
	str r8, [sp]
	bl FUN_ov15_020d7af8
	cmp r0, #0
	add r5, r5, #1
	addne sp, sp, #8
	movne r0, #1
	ldmnefd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
	ldr r0, [sp, #4]
	cmp r0, r10
	blo _020D7E8C
_020D7EC4:
	cmp r7, #1
	cmpeq r6, #0
	bne _020D7F8C
	cmp r8, #2
	strne r0, [r9, #0x464]
	b _020D7F8C
_020D7EDC:
	ldr r0, [sp, #4]
	mov r6, #0
	add r4, r0, r4
	cmp r0, r4
	bhs _020D7F8C
_020D7EF0:
	mov r0, r9
	mov r1, r5
	mov r3, r6
	add r2, r7, #1
	str r8, [sp]
	bl FUN_ov15_020d7af8
	cmp r0, #0
	addne sp, sp, #8
	movne r0, #1
	ldmnefd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
	ldr r0, [sp, #4]
	cmp r0, r4
	blo _020D7EF0
	b _020D7F8C
_020D7F28:
	cmp r10, #0xa0
	mov r5, #0
	bne _020D7F80
	ldr r0, [sp, #4]
	add r6, r0, r4
	cmp r0, r6
	bhs _020D7F8C
	add r4, sp, #4
_020D7F48:
	mov r0, r9
	mov r1, r4
	mov r3, r5
	add r2, r7, #1
	str r8, [sp]
	bl FUN_ov15_020d7af8
	cmp r0, #0
	addne sp, sp, #8
	movne r0, #1
	ldmnefd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
	ldr r0, [sp, #4]
	cmp r0, r6
	blo _020D7F48
	b _020D7F8C
_020D7F80:
	ldr r0, [sp, #4]
	add r0, r0, r4
	str r0, [sp, #4]
_020D7F8C:
	ldr r1, [sp, #4]
	mov r0, #0
	str r1, [r11]
	add sp, sp, #8
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_020D7FA0: .word ov15_020E5A5C
	arm_func_end FUN_ov15_020d7af8

	arm_func_start FUN_ov15_020d7fa4
FUN_ov15_020d7fa4: ; 0x020D7FA4
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, lr}
	sub sp, sp, #4
	mov r8, r0
	ldr r0, [r8, #0x5a4]
	mov r7, r1
	cmp r0, #0
	ldrne r0, [r8, #0x5a8]
	cmpne r0, #0
	ldrne r0, [r7, #0x10]
	cmpne r0, #0
	ldrne r0, [r7, #0xc]
	cmpne r0, #0
	ldrne r0, [r7, #8]
	cmpne r0, #0
	ldrne r0, [r7, #4]
	cmpne r0, #0
	addeq sp, sp, #4
	moveq r0, #2
	ldmeqfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, pc}
	mov r0, r0, lsl #1
	ldr r1, _020D8144 ; =0x020E6D54
	add r0, r0, r0, lsr #31
	mov r5, r0, asr #1
	ldr r1, [r1]
	mov r0, r5, lsl #3
	blx r1
	movs r4, r0
	addeq sp, sp, #4
	moveq r0, #2
	ldmeqfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, pc}
	add r6, r4, r5, lsl #1
	add r9, r6, r5, lsl #1
	ldr r1, [r8, #0x5a4]
	ldr r2, [r8, #0x5a8]
	mov r0, r6
	mov r3, r5
	add r10, r9, r5, lsl #1
	bl FUN_ov15_020dc504
	ldr r1, [r7, #0x10]
	ldr r2, [r7, #0xc]
	mov r0, r9
	mov r3, r5
	bl FUN_ov15_020dc504
	ldr r1, [r7, #8]
	ldr r2, [r7, #4]
	mov r0, r10
	mov r3, r5
	bl FUN_ov15_020dc504
	bl FUN_ov15_020d78dc
	mov r2, r9
	mov r9, r0
	mov r0, r4
	mov r1, r6
	mov r3, r5
	str r10, [sp]
	bl FUN_ov15_020dbedc
	mov r0, r9
	bl FUN_ov15_020d7924
	ldr r2, [r7, #4]
	mov r0, r6
	mov r1, r4
	mov r3, r5
	bl FUN_ov15_020dc560
	ldrb r0, [r4, r5, lsl #1]
	mov r5, #0
	cmp r0, #0
	ldreqb r0, [r6, #1]
	cmpeq r0, #1
	movne r5, #2
	bne _020D8128
	ldr r3, [r7, #4]
	mov r2, #2
	cmp r3, #2
	ble _020D80E4
_020D80CC:
	ldrb r0, [r6, r2]
	cmp r0, #0xff
	bne _020D80E4
	add r2, r2, #1
	cmp r2, r3
	blt _020D80CC
_020D80E4:
	add r1, r2, #1
	cmp r1, r3
	bge _020D8124
	ldrb r0, [r6, r2]
	cmp r0, #0
	ldreqb r0, [r6, r1]
	cmpeq r0, #0x30
	bne _020D8124
	ldr r2, [r8, #0x47c]
	add r0, r8, #0x68
	add r1, r6, r3
	add r0, r0, #0x400
	sub r1, r1, r2
	bl FUN_020219ac
	cmp r0, #0
	beq _020D8128
_020D8124:
	mov r5, #2
_020D8128:
	ldr r1, _020D8148 ; =0x020E6D84
	mov r0, r4
	ldr r1, [r1]
	blx r1
	mov r0, r5
	add sp, sp, #4
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, pc}
_020D8144: .word ov15_020E6D54
_020D8148: .word ov15_020E6D84
	arm_func_end FUN_ov15_020d7fa4

	arm_func_start FUN_ov15_020d814c
FUN_ov15_020d814c: ; 0x020D814C
	stmfd sp!, {r3, r4, r5, lr}
	mov r5, r0
	ldrb r0, [r5, #0x5af]
	mov r4, #0
	cmp r0, #0
	ldr r0, [r5, #0x45c]
	moveq r4, #0x8000
	cmn r0, #1
	orreq r0, r4, #4
	ldmeqfd sp!, {r3, r4, r5, pc}
	ldr r0, [r5, #0x458]
	cmp r0, #3
	beq _020D818C
	cmp r0, #4
	beq _020D81C4
	b _020D81F8
_020D818C:
	add r0, r5, #0x3fc
	bl FUN_ov15_020dac30
	ldr r1, [r5, #0x460]
	ldr r2, [r5, #0x464]
	add r0, r5, #0x3fc
	sub r2, r2, r1
	bl FUN_ov15_020dac78
	add r1, r5, #0x68
	add r0, r5, #0x3fc
	add r1, r1, #0x400
	bl FUN_ov15_020dad30
	mov r0, #0x10
_020D81BC:
	str r0, [r5, #0x47c]
	b _020D8200
_020D81C4:
	add r0, r5, #0x348
	bl FUN_ov15_020db4dc
	ldr r1, [r5, #0x460]
	ldr r2, [r5, #0x464]
	add r0, r5, #0x348
	sub r2, r2, r1
	bl FUN_ov15_020db530
	add r1, r5, #0x68
	add r0, r5, #0x348
	add r1, r1, #0x400
	bl FUN_ov15_020db5e8
	mov r0, #0x14
	b _020D81BC
_020D81F8:
	orr r0, r4, #3
	ldmfd sp!, {r3, r4, r5, pc}
_020D8200:
	mov r0, r5
	add r1, r5, #0x5b0
	bl FUN_ov15_020d7970
	movs r1, r0
	orreq r0, r4, #1
	ldmeqfd sp!, {r3, r4, r5, pc}
	mov r0, r5
	bl FUN_ov15_020d7fa4
	orr r0, r4, r0
	ldmfd sp!, {r3, r4, r5, pc}
	arm_func_end FUN_ov15_020d814c

	arm_func_start FUN_ov15_020d8228
FUN_ov15_020d8228: ; 0x020D8228
	mov r2, r0
	b _020D8234
_020D8230:
	add r0, r0, #1
_020D8234:
	ldrsb r1, [r0]
	cmp r1, #0x2e
	beq _020D8248
	cmp r1, #0
	bne _020D8230
_020D8248:
	sub r0, r0, r2
	bx lr
	arm_func_end FUN_ov15_020d8228

	arm_func_start FUN_ov15_020d8250
FUN_ov15_020d8250: ; 0x020D8250
	stmfd sp!, {r4, r5, r6, lr}
	mov r6, r0
	mov r5, r1
	b _020D826C
_020D8260:
	cmp r1, #0
	moveq r0, #0
	ldmeqfd sp!, {r4, r5, r6, pc}
_020D826C:
	ldrsb r0, [r5], #1
	ldrsb r1, [r6], #1
	cmp r1, r0
	beq _020D8260
	cmp r0, #0x2a
	movne r0, #1
	ldmnefd sp!, {r4, r5, r6, pc}
	sub r6, r6, #1
	mov r0, r6
	bl FUN_ov15_020d8228
	mov r4, r0
	mov r0, r5
	bl FUN_ov15_020d8228
	cmp r0, r4
	movgt r0, #1
	ldmgtfd sp!, {r4, r5, r6, pc}
	sub r0, r4, r0
	add r6, r6, r0
	b _020D826C
	arm_func_end FUN_ov15_020d8250

	arm_func_start FUN_ov15_020d82b8
FUN_ov15_020d82b8: ; 0x020D82B8
	ldmfd sp!, {r4, r5, r6, pc}
	arm_func_end FUN_ov15_020d82b8

	arm_func_start FUN_ov15_020d82bc
FUN_ov15_020d82bc: ; 0x020D82BC
	stmfd sp!, {r0, r1, r2, r3}
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, lr}
	sub sp, sp, #0x18
	ldr r4, [sp, #0x44]
	mov r10, r0
	ldrb r3, [r4, #2]
	ldrb r2, [r4]
	ldrb r1, [r4, #1]
	add r0, r4, #3
	mvn r5, #0
	str r0, [sp, #0x44]
	add r1, r1, r2, lsl #8
	add r0, sp, #8
	str r5, [r10, #0x45c]
	add r8, r3, r1, lsl #8
	bl FUN_0200aea0
	mov r6, #0
	ldr r1, [sp, #8]
	ldr r0, [sp, #0xc]
	ldr r2, [sp, #0x10]
	add r1, r1, #0x7d0
	mov r0, r0, lsl #8
	add r0, r0, r1, lsl #16
	add r0, r2, r0
	mov r9, r6
	str r0, [r10, #0x80c]
	strb r6, [r10, #0x6b0]
	str r6, [r10, #0x5a0]
	str r6, [r10, #0x594]
	mov r11, #2
	mov r4, r6
_020D8338:
	ldr r1, [sp, #0x44]
	mov r0, r10
	ldrb r2, [r1, #2]
	ldrb r12, [r1]
	ldrb r3, [r1, #1]
	add r7, r1, #3
	add r1, sp, #0x44
	str r7, [sp, #0x44]
	add r3, r3, r12, lsl #8
	add r3, r2, r3, lsl #8
	add r2, r3, #3
	sub r8, r8, r2
	str r5, [r10, #0x458]
	strb r4, [r10, #0x5ad]
	strb r4, [r10, #0x5ac]
	strb r4, [r10, #0x5af]
	strb r4, [r10, #0x6b0]
	strb r4, [r10, #0x5b0]
	strb r4, [r10, #0x7b0]
	ldr r7, [sp, #0x44]
	mov r2, r4
	str r3, [r10, #0x808]
	str r7, [r10, #0x804]
	mov r3, r4
	str r6, [sp]
	bl FUN_ov15_020d7af8
	cmp r0, #0
	bne _020D83C0
	ldr r0, [r10, #0x594]
	cmp r0, #0x33
	blo _020D83C0
	ldr r0, [r10, #0x5a0]
	cmp r0, #0
	bne _020D83D8
_020D83C0:
	mov r0, #9
	add sp, sp, #0x18
	strb r0, [r10, #0x455]
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, lr}
	add sp, sp, #0x10
	bx lr
_020D83D8:
	mov r0, r10
	bl FUN_ov15_020d814c
	mov r7, r0
	cmp r9, #0
	bne _020D8408
	ldr r0, [r10, #0x800]
	cmp r0, #0
	beq _020D8408
	add r1, r10, #0x7b0
	bl FUN_ov15_020d8250
	cmp r0, #0
	orrne r7, r7, #0x4000
_020D8408:
	and r6, r7, #0xff
	cmp r6, #1
	bne _020D8478
	cmp r8, #0
	beq _020D8478
	ldr r1, [sp, #0x44]
	mov r2, #0
	add r1, r1, #3
	str r1, [sp, #4]
	mov r1, #0
	strb r1, [r10, #0x5ad]
	mov r0, r10
	add r1, sp, #4
	mov r3, r2
	str r11, [sp]
	bl FUN_ov15_020d7af8
	cmp r0, #0
	movne r0, #9
	addne sp, sp, #0x18
	strneb r0, [r10, #0x455]
	ldmnefd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, lr}
	addne sp, sp, #0x10
	bxne lr
	mov r0, r10
	add r1, r10, #0x480
	bl FUN_ov15_020d7fa4
	bic r1, r7, #0xff
	orr r7, r1, r0
_020D8478:
	ldr r3, [r10, #0x810]
	cmp r3, #0
	beq _020D8498
	mov r0, r7
	mov r1, r10
	mov r2, r9
	blx r3
	mov r7, r0
_020D8498:
	cmp r6, #0
	add r9, r9, #1
	beq _020D84B8
	cmp r7, #0
	bne _020D84B8
	cmp r8, #0
	movne r6, #1
	bne _020D8338
_020D84B8:
	cmp r7, #0
	moveq r0, #3
	streqb r0, [r10, #0x455]
	movne r0, #9
	strneb r0, [r10, #0x455]
	add sp, sp, #0x18
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, lr}
	add sp, sp, #0x10
	bx lr
	arm_func_end FUN_ov15_020d82bc

	arm_func_start FUN_ov15_020d84dc
FUN_ov15_020d84dc: ; 0x020D84DC
	stmfd sp!, {r4, r5, r6, r7, r8, lr}
	mov r7, #0x20
	mov r6, r0
	mov r5, r1
	mov r2, r7
	add r0, r5, #2
	add r1, r6, #0x54
	bl MI_CpuCopy8
	ldrb r8, [r6, #0x30]
	ldrb r4, [r5, #0x22]
	add r5, r5, #0x23
	cmp r8, #0
	beq _020D8538
	cmp r4, #0x20
	bne _020D8538
	mov r1, r5
	mov r2, r7
	add r0, r6, #0x74
	bl FUN_020219ac
	cmp r0, #0
	moveq r0, #1
	streqb r0, [r6, #0x31]
	beq _020D8574
_020D8538:
	cmp r8, #0
	beq _020D8548
	mov r0, r6
	bl FUN_ov15_020d7810
_020D8548:
	cmp r4, #0
	moveq r0, #0
	beq _020D8568
	mov r0, r5
	add r1, r6, #0x74
	mov r2, #0x20
	bl MI_CpuCopy8
	mov r0, #1
_020D8568:
	strb r0, [r6, #0x30]
	mov r0, #0
	strb r0, [r6, #0x31]
_020D8574:
	add r0, r5, r4
	ldrb r1, [r5, r4]
	ldrb r0, [r0, #1]
	add r0, r0, r1, lsl #8
	strh r0, [r6, #0x32]
	ldrh r0, [r6, #0x32]
	cmp r0, #4
	cmpne r0, #5
	movne r0, #9
	strneb r0, [r6, #0x455]
	moveq r0, #2
	streqb r0, [r6, #0x455]
	ldmfd sp!, {r4, r5, r6, r7, r8, pc}
	arm_func_end FUN_ov15_020d84dc

	arm_func_start FUN_ov15_020d85a8
FUN_ov15_020d85a8: ; 0x020D85A8
	stmfd sp!, {r4, lr}
	cmp r1, #0
	mov r4, #0
	ble _020D85EC
_020D85B8:
	ldrb lr, [r0]
	ldrb r12, [r0, #1]
	cmp r2, #3
	add lr, r12, lr, lsl #8
	ldreqb r12, [r0, #2]
	addeq lr, r12, lr, lsl #8
	cmp lr, r3
	moveq r0, #1
	ldmeqfd sp!, {r4, pc}
	add r4, r4, #1
	cmp r4, r1
	add r0, r0, r2
	blt _020D85B8
_020D85EC:
	mov r0, #0
	ldmfd sp!, {r4, pc}
	arm_func_end FUN_ov15_020d85a8

	arm_func_start FUN_ov15_020d85f4
FUN_ov15_020d85f4: ; 0x020D85F4
	stmfd sp!, {r4, r5, r6, r7, r8, lr}
	ldr r4, _020D8648 ; =0x020E5A54
	mov r8, r0
	mov r7, r1
	mov r6, r2
	mov r5, #0
_020D860C:
	mov r0, r5, lsl #1
	ldrh r3, [r4, r0]
	mov r0, r8
	mov r1, r7
	mov r2, r6
	bl FUN_ov15_020d85a8
	cmp r0, #0
	movne r0, r5, lsl #1
	ldrneh r0, [r4, r0]
	ldmnefd sp!, {r4, r5, r6, r7, r8, pc}
	add r5, r5, #1
	cmp r5, #2
	blo _020D860C
	mov r0, #0
	ldmfd sp!, {r4, r5, r6, r7, r8, pc}
_020D8648: .word ov15_020E5A54
	arm_func_end FUN_ov15_020d85f4

	arm_func_start FUN_ov15_020d864c
FUN_ov15_020d864c: ; 0x020D864C
	cmp r0, #3
	moveq r0, #1
	movne r0, #0
	bx lr
	arm_func_end FUN_ov15_020d864c

	arm_func_start FUN_ov15_020d865c
FUN_ov15_020d865c: ; 0x020D865C
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	mov r6, r1
	mov r7, r0
	ldrb r0, [r6]
	ldrb r1, [r6, #1]
	bl FUN_ov15_020d864c
	cmp r0, #0
	ldmeqfd sp!, {r3, r4, r5, r6, r7, pc}
	ldrb r2, [r6, #2]
	ldrb r1, [r6, #3]
	ldr r3, _020D871C ; =0x55555556
	add r0, r6, #8
	add r4, r1, r2, lsl #8
	smull r2, r1, r3, r4
	add r1, r1, r4, lsr #31
	mov r2, #3
	bl FUN_ov15_020d85f4
	mov r0, r0, lsl #0x10
	movs r0, r0, lsr #0x10
	ldmeqfd sp!, {r3, r4, r5, r6, r7, pc}
	strh r0, [r7, #0x32]
	ldrb r5, [r6, #4]
	ldrb r3, [r6, #5]
	ldrb r2, [r6, #6]
	ldrb r0, [r6, #7]
	mov r1, #0
	add r3, r3, r5, lsl #8
	add r5, r0, r2, lsl #8
	add r0, r4, #8
	strb r1, [r7, #0x30]
	cmp r5, #0x20
	add r4, r0, r3
	blt _020D86F0
	add r0, r6, r4
	add r1, r7, #0x34
	mov r2, #0x20
	b _020D870C
_020D86F0:
	add r0, r7, #0x34
	rsb r2, r5, #0x20
	bl MI_CpuFill8
	add r1, r7, #0x54
	mov r2, r5
	add r0, r6, r4
	sub r1, r1, r5
_020D870C:
	bl MI_CpuCopy8
	mov r0, #1
	strb r0, [r7, #0x455]
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_020D871C: .word 0x55555556
	arm_func_end FUN_ov15_020d865c

	arm_func_start FUN_ov15_020d8720
FUN_ov15_020d8720: ; 0x020D8720
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	mov r7, r1
	mov r4, r0
	ldrb r0, [r7]
	ldrb r1, [r7, #1]
	bl FUN_ov15_020d864c
	cmp r0, #0
	ldmeqfd sp!, {r3, r4, r5, r6, r7, pc}
	mov r5, #0x20
	mov r2, r5
	add r0, r7, #2
	add r1, r4, #0x34
	bl MI_CpuCopy8
	ldrb r6, [r7, #0x22]
	add r7, r7, #0x23
	cmp r6, #0x20
	movne r0, #0
	strneb r0, [r4, #0x30]
	bne _020D8784
	mov r0, r7
	mov r2, r5
	add r1, r4, #0x74
	bl MI_CpuCopy8
	mov r0, r4
	bl FUN_ov15_020d75e4
_020D8784:
	add r0, r7, r6
	ldrb r1, [r0, #1]
	ldrb r3, [r7, r6]
	add r0, r0, #2
	mov r2, #2
	add r1, r1, r3, lsl #8
	add r1, r1, r1, lsr #31
	mov r1, r1, asr #1
	bl FUN_ov15_020d85f4
	mov r0, r0, lsl #0x10
	movs r0, r0, lsr #0x10
	strh r0, [r4, #0x32]
	movne r0, #1
	strneb r0, [r4, #0x455]
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
	arm_func_end FUN_ov15_020d8720

	arm_func_start FUN_ov15_020d87c0
FUN_ov15_020d87c0: ; 0x020D87C0
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, lr}
	sub sp, sp, #0x18
	movs r10, r2
	str r0, [sp, #8]
	ldrne r0, [r10]
	mov r11, r1
	cmpne r0, #0
	addeq sp, sp, #0x18
	ldmeqfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
	mov r0, r0, lsl #1
	add r0, r0, r0, lsr #31
	mov r0, r0, asr #1
	add r4, r0, #1
	mov r0, #0x14
	mul r0, r4, r0
	ldr r1, _020D89F8 ; =0x020E6D54
	ldr r1, [r1]
	blx r1
	movs r5, r0
	addeq sp, sp, #0x18
	ldmeqfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
	add r6, r5, r4, lsl #1
	add r7, r6, r4, lsl #1
	add r1, r7, r4, lsl #1
	str r1, [sp, #0x10]
	add r1, r1, r4, lsl #1
	add r8, r1, r4, lsl #1
	str r1, [sp, #0xc]
	ldr r2, [r10]
	add r9, r8, r4, lsl #1
	mov r1, r11
	mov r3, r4
	add r11, r9, r4, lsl #1
	bl FUN_ov15_020dc504
	ldr r1, [r10, #0x1c]
	ldr r2, [r10, #0x18]
	mov r0, r6
	mov r3, r4
	bl FUN_ov15_020dc504
	ldr r1, [r10, #0xc]
	ldr r2, [r10, #8]
	mov r0, r8
	mov r3, r4
	bl FUN_ov15_020dc504
	bl FUN_ov15_020d78dc
	str r0, [sp, #0x14]
	ldr r0, [sp, #0x10]
	str r8, [sp]
	mov r1, r5
	mov r2, r6
	mov r3, r4
	bl FUN_ov15_020dc2e8
	ldr r1, [r10, #0x24]
	ldr r2, [r10, #0x20]
	mov r0, r6
	mov r3, r4
	bl FUN_ov15_020dc504
	ldr r1, [r10, #0x14]
	ldr r2, [r10, #0x10]
	mov r0, r8
	mov r3, r4
	bl FUN_ov15_020dc504
	ldr r0, [sp, #0xc]
	mov r1, r5
	mov r2, r6
	mov r3, r4
	str r8, [sp]
	bl FUN_ov15_020dc2e8
	ldr r0, [sp, #0x14]
	bl FUN_ov15_020d7924
	ldr r1, [sp, #0x10]
	ldr r2, [sp, #0xc]
	mov r0, r5
	mov r3, r4
	bl FUN_ov15_020db8f8
	ldr r1, [r10, #0x2c]
	ldr r2, [r10, #0x28]
	mov r0, r6
	mov r3, r4
	bl FUN_ov15_020dc504
	mov r0, r7
	mov r1, r5
	mov r2, r6
	mov r3, r4
	bl FUN_ov15_020dba70
	ldr r1, [r10, #0x14]
	ldr r2, [r10, #0x10]
	mov r0, r6
	mov r3, r4
	bl FUN_ov15_020dc504
	mov r0, r5
	mov r1, r7
	mov r2, r6
	mov r3, r4
	bl FUN_ov15_020dba70
	ldr r2, [sp, #0xc]
	mov r0, r7
	mov r1, r5
	mov r3, r4
	bl FUN_ov15_020db7bc
	ldr r1, [r10, #4]
	ldr r2, [r10]
	mov r0, r6
	mov r3, r4
	bl FUN_ov15_020dc504
	mov r0, r7
	mov r1, r4
	bl FUN_ov15_020db78c
	cmp r0, #0
	bge _020D89B4
	mov r0, r7
	mov r1, r4
	bl FUN_ov15_020db8b8
	mov r1, r7
	mov r2, r6
	mov r3, r9
	mov r0, #0
	stmia sp, {r4, r11}
	bl FUN_ov15_020dbd10
	mov r0, r9
	mov r1, r6
	mov r2, r9
	mov r3, r4
	bl FUN_ov15_020db8f8
	b _020D89CC
_020D89B4:
	mov r1, r7
	mov r2, r6
	mov r3, r9
	mov r0, #0
	stmia sp, {r4, r11}
	bl FUN_ov15_020dbd10
_020D89CC:
	ldr r0, [sp, #8]
	mov r1, r9
	mov r3, r4
	mov r2, #0x30
	bl FUN_ov15_020dc560
	ldr r1, _020D89FC ; =0x020E6D84
	mov r0, r5
	ldr r1, [r1]
	blx r1
	add sp, sp, #0x18
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_020D89F8: .word ov15_020E6D54
_020D89FC: .word ov15_020E6D84
	arm_func_end FUN_ov15_020d87c0

	arm_func_start FUN_ov15_020d8a00
FUN_ov15_020d8a00: ; 0x020D8A00
	stmfd sp!, {r4, r5, r6, r7, lr}
	sub sp, sp, #0x14
	mov r6, r2
	mov r7, r0
	mov r4, r1
	add r0, r6, #0x348
	bl FUN_ov15_020db4dc
	mov r0, r4
	bl _strlen
	mov r2, r0
	mov r1, r4
	add r0, r6, #0x348
	bl FUN_ov15_020db530
	mov r5, #0x30
	add r0, r6, #0x348
	mov r1, r6
	mov r2, r5
	bl FUN_ov15_020db530
	add r0, r6, #0x348
	add r1, r6, #0x34
	mov r2, #0x40
	bl FUN_ov15_020db530
	add r4, sp, #0
	add r0, r6, #0x348
	mov r1, r4
	bl FUN_ov15_020db5e8
	add r0, r6, #0x3fc
	bl FUN_ov15_020dac30
	mov r2, r5
	add r0, r6, #0x3fc
	mov r1, r6
	bl FUN_ov15_020dac78
	mov r1, r4
	add r0, r6, #0x3fc
	mov r2, #0x14
	bl FUN_ov15_020dac78
	add r0, r6, #0x3fc
	mov r1, r7
	bl FUN_ov15_020dad30
	add sp, sp, #0x14
	ldmfd sp!, {r4, r5, r6, r7, pc}
	arm_func_end FUN_ov15_020d8a00

	arm_func_start FUN_ov15_020d8aa4
FUN_ov15_020d8aa4: ; 0x020D8AA4
	stmfd sp!, {r3, r4, r5, lr}
	sub sp, sp, #0x30
	mov r5, r0
	add r4, sp, #0
	ldr r1, _020D8AFC ; =0x020E5AA0
	mov r0, r4
	mov r2, r5
	bl FUN_ov15_020d8a00
	ldr r1, _020D8B00 ; =0x020E5AA4
	add r0, sp, #0x10
	mov r2, r5
	bl FUN_ov15_020d8a00
	ldr r1, _020D8B04 ; =0x020E5AA8
	add r0, sp, #0x20
	mov r2, r5
	bl FUN_ov15_020d8a00
	mov r0, r4
	mov r1, r5
	mov r2, #0x30
	bl MI_CpuCopy8
	add sp, sp, #0x30
	ldmfd sp!, {r3, r4, r5, pc}
_020D8AFC: .word ov15_020E5AA0
_020D8B00: .word ov15_020E5AA4
_020D8B04: .word ov15_020E5AA8
	arm_func_end FUN_ov15_020d8aa4

	arm_func_start FUN_ov15_020d8b08
FUN_ov15_020d8b08: ; 0x020D8B08
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, lr}
	sub sp, sp, #0x20
	mov r10, r0
	ldrh r0, [r10, #0x32]
	cmp r0, #4
	beq _020D8B3C
	cmp r0, #5
	moveq r0, #0x14
	streq r0, [sp, #4]
	moveq r0, #0x10
	streq r0, [sp]
	moveq r2, #0
	b _020D8B4C
_020D8B3C:
	mov r0, #0x10
	str r0, [sp, #4]
	str r0, [sp]
	mov r2, #0
_020D8B4C:
	ldr r1, [sp, #4]
	ldr r0, [sp]
	mov r7, #0
	add r0, r1, r0
	add r0, r2, r0
	mov r9, r0, lsl #1
	cmp r9, #0
	ble _020D8C30
	add r11, r10, #0x74
	add r5, sp, #8
	mov r4, #1
_020D8B78:
	add r0, r10, #0x348
	bl FUN_ov15_020db4dc
	add r0, r7, #0x41
	add r6, r7, #1
	strb r0, [sp, #8]
	cmp r6, #0
	mov r8, #0
	ble _020D8BB4
_020D8B98:
	add r0, r10, #0x348
	mov r1, r5
	mov r2, r4
	bl FUN_ov15_020db530
	add r8, r8, #1
	cmp r8, r6
	blt _020D8B98
_020D8BB4:
	mov r1, r10
	add r0, r10, #0x348
	mov r2, #0x30
	bl FUN_ov15_020db530
	add r0, r10, #0x348
	add r1, r10, #0x54
	mov r2, #0x20
	bl FUN_ov15_020db530
	add r0, r10, #0x348
	add r1, r10, #0x34
	mov r2, #0x20
	bl FUN_ov15_020db530
	add r0, r10, #0x348
	add r1, sp, #9
	bl FUN_ov15_020db5e8
	add r0, r10, #0x3fc
	bl FUN_ov15_020dac30
	add r0, r10, #0x3fc
	mov r1, r10
	mov r2, #0x30
	bl FUN_ov15_020dac78
	add r0, r10, #0x3fc
	add r1, sp, #9
	mov r2, #0x14
	bl FUN_ov15_020dac78
	add r0, r10, #0x3fc
	add r1, r11, r7, lsl #4
	bl FUN_ov15_020dad30
	add r7, r7, #1
	cmp r9, r7, lsl #4
	bgt _020D8B78
_020D8C30:
	ldrb r0, [r10, #0x454]
	add r4, r10, #0x74
	cmp r0, #0
	beq _020D8C6C
	ldr r0, [sp, #4]
	str r4, [r10, #0x1d4]
	add r2, r4, r0
	add r3, r4, r0, lsl #1
	add r1, r2, r0
	ldr r0, [sp]
	str r3, [r10, #0x1d8]
	add r0, r1, r0
	str r2, [r10, #0xbc]
	str r0, [r10, #0xc0]
	b _020D8C94
_020D8C6C:
	ldr r0, [sp, #4]
	str r4, [r10, #0xbc]
	add r2, r4, r0
	add r3, r4, r0, lsl #1
	add r1, r2, r0
	ldr r0, [sp]
	str r3, [r10, #0xc0]
	add r0, r1, r0
	str r2, [r10, #0x1d4]
	str r0, [r10, #0x1d8]
_020D8C94:
	mov r4, #0x10
	ldr r1, [r10, #0x1d8]
	mov r2, r4
	add r0, r10, #0x1e0
	bl FUN_ov15_020db680
	ldr r1, [r10, #0xc0]
	mov r2, r4
	add r0, r10, #0xc8
	bl FUN_ov15_020db680
	add sp, sp, #0x20
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
	arm_func_end FUN_ov15_020d8b08

	arm_func_start FUN_ov15_020d8cc0
FUN_ov15_020d8cc0: ; 0x020D8CC0
	stmfd sp!, {r4, lr}
	mov r4, r0
	ldr r2, [r4, #0x81c]
	bl FUN_ov15_020d87c0
	mov r0, r4
	bl FUN_ov15_020d8aa4
	mov r1, #0
	mov r0, r4
	mov r2, r1
	bl FUN_ov15_020d7720
	mov r0, r4
	bl FUN_ov15_020d8b08
	mov r0, #5
	strb r0, [r4, #0x455]
	ldmfd sp!, {r4, pc}
	arm_func_end FUN_ov15_020d8cc0

	arm_func_start FUN_ov15_020d8cfc
FUN_ov15_020d8cfc: ; 0x020D8CFC
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	sub sp, sp, #0x30
	mov r7, r0
	ldrb r0, [r7, #0x454]
	mov r6, r1
	teq r0, r2
	mov r2, #4
	beq _020D8D24
	ldr r1, _020D8DD0 ; =0x020E5AAC
	b _020D8D28
_020D8D24:
	ldr r1, _020D8DD4 ; =0x020E5AB4
_020D8D28:
	add r0, r7, #0x3a4
	bl FUN_ov15_020dac78
	mov r5, #0x30
	mov r1, r7
	mov r2, r5
	add r0, r7, #0x3a4
	bl FUN_ov15_020dac78
	add r4, sp, #0
	mov r2, r5
	mov r0, r4
	mov r1, #0x36
	bl MI_CpuFill8
	mov r1, r4
	mov r2, r5
	add r0, r7, #0x3a4
	bl FUN_ov15_020dac78
	mov r1, r6
	add r0, r7, #0x3a4
	bl FUN_ov15_020dad30
	add r0, r7, #0x3a4
	bl FUN_ov15_020dac30
	add r0, r7, #0x3a4
	mov r1, r7
	mov r2, r5
	bl FUN_ov15_020dac78
	mov r0, r4
	mov r1, #0x5c
	mov r2, r5
	bl MI_CpuFill8
	mov r1, r4
	mov r2, r5
	add r0, r7, #0x3a4
	bl FUN_ov15_020dac78
	add r0, r7, #0x3a4
	mov r1, r6
	mov r2, #0x10
	bl FUN_ov15_020dac78
	add r0, r7, #0x3a4
	mov r1, r6
	bl FUN_ov15_020dad30
	add sp, sp, #0x30
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_020D8DD0: .word ov15_020E5AAC
_020D8DD4: .word ov15_020E5AB4
	arm_func_end FUN_ov15_020d8cfc

	arm_func_start FUN_ov15_020d8dd8
FUN_ov15_020d8dd8: ; 0x020D8DD8
	stmfd sp!, {r4, r5, r6, r7, r8, lr}
	sub sp, sp, #0x28
	mov r8, r0
	ldrb r0, [r8, #0x454]
	mov r7, r1
	teq r0, r2
	mov r2, #4
	beq _020D8E00
	ldr r1, _020D8EB0 ; =0x020E5AAC
	b _020D8E04
_020D8E00:
	ldr r1, _020D8EB4 ; =0x020E5AB4
_020D8E04:
	add r0, r8, #0x2ec
	bl FUN_ov15_020db530
	mov r6, #0x30
	mov r1, r8
	mov r2, r6
	add r0, r8, #0x2ec
	bl FUN_ov15_020db530
	add r5, sp, #0
	mov r4, #0x28
	mov r0, r5
	mov r2, r4
	mov r1, #0x36
	bl MI_CpuFill8
	mov r1, r5
	mov r2, r4
	add r0, r8, #0x2ec
	bl FUN_ov15_020db530
	add r0, r8, #0x2ec
	mov r1, r7
	bl FUN_ov15_020db5e8
	add r0, r8, #0x2ec
	bl FUN_ov15_020db4dc
	mov r2, r6
	add r0, r8, #0x2ec
	mov r1, r8
	bl FUN_ov15_020db530
	mov r0, r5
	mov r1, #0x5c
	mov r2, r4
	bl MI_CpuFill8
	mov r1, r5
	mov r2, r4
	add r0, r8, #0x2ec
	bl FUN_ov15_020db530
	add r0, r8, #0x2ec
	mov r1, r7
	mov r2, #0x14
	bl FUN_ov15_020db530
	add r0, r8, #0x2ec
	mov r1, r7
	bl FUN_ov15_020db5e8
	add sp, sp, #0x28
	ldmfd sp!, {r4, r5, r6, r7, r8, pc}
_020D8EB0: .word ov15_020E5AAC
_020D8EB4: .word ov15_020E5AB4
	arm_func_end FUN_ov15_020d8dd8

	arm_func_start FUN_ov15_020d8eb8
FUN_ov15_020d8eb8: ; 0x020D8EB8
	stmfd sp!, {r3, r4, r5, r6, r7, r8, lr}
	sub sp, sp, #0x14
	mov r4, r0
	mov r5, #0x58
	mov r8, r1
	mov r2, r5
	add r0, r4, #0x3a4
	add r1, r4, #0x3fc
	bl MI_CpuCopy8
	add r7, sp, #0
	mov r6, #1
	mov r0, r4
	mov r1, r7
	mov r2, r6
	bl FUN_ov15_020d8cfc
	mov r2, r5
	add r0, r4, #0x3fc
	add r1, r4, #0x3a4
	bl MI_CpuCopy8
	mov r0, r8
	mov r1, r7
	mov r2, #0x10
	bl FUN_020219ac
	cmp r0, #0
	movne r0, #9
	addne sp, sp, #0x14
	strneb r0, [r4, #0x455]
	ldmnefd sp!, {r3, r4, r5, r6, r7, r8, pc}
	mov r5, #0x5c
	mov r2, r5
	add r0, r4, #0x2ec
	add r1, r4, #0x348
	bl MI_CpuCopy8
	mov r0, r4
	mov r1, r7
	mov r2, r6
	bl FUN_ov15_020d8dd8
	mov r2, r5
	add r0, r4, #0x348
	add r1, r4, #0x2ec
	bl MI_CpuCopy8
	mov r1, r7
	add r0, r8, #0x10
	mov r2, #0x14
	bl FUN_020219ac
	cmp r0, #0
	movne r0, #9
	strneb r0, [r4, #0x455]
	moveq r0, #6
	streqb r0, [r4, #0x455]
	add sp, sp, #0x14
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, pc}
	arm_func_end FUN_ov15_020d8eb8

	arm_func_start FUN_ov15_020d8f88
FUN_ov15_020d8f88: ; 0x020D8F88
	mov r2, #8
_020D8F8C:
	ldrb r1, [r0, #-1]!
	add r1, r1, #1
	ands r1, r1, #0xff
	strb r1, [r0]
	bxne lr
	subs r2, r2, #1
	bne _020D8F8C
	bx lr
	arm_func_end FUN_ov15_020d8f88

	arm_func_start FUN_ov15_020d8fac
FUN_ov15_020d8fac: ; 0x020D8FAC
	stmfd sp!, {r4, lr}
	add r0, r0, #0x1e0
	mov r4, r2
	bl FUN_ov15_020db6f8
	mov r0, r4
	ldmfd sp!, {r4, pc}
	arm_func_end FUN_ov15_020d8fac

	arm_func_start FUN_ov15_020d8fc4
FUN_ov15_020d8fc4: ; 0x020D8FC4
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, lr}
	sub sp, sp, #0x44
	mov r6, r1
	ldrb r3, [r6, #3]
	ldrb r2, [r6, #4]
	mov r7, r0
	add r1, r6, #5
	add r2, r2, r3, lsl #8
	bl FUN_ov15_020d8fac
	ldrh r1, [r7, #0x32]
	mov r4, r0
	cmp r1, #4
	beq _020D9004
	cmp r1, #5
	beq _020D90F0
	b _020D91D8
_020D9004:
	sub r4, r4, #0x10
	mov r0, r4, asr #8
	strb r0, [r6, #3]
	strb r4, [r6, #4]
	add r0, r7, #0x3fc
	bl FUN_ov15_020dac30
	mov r5, #0x10
	ldr r1, [r7, #0x1d4]
	mov r2, r5
	add r0, r7, #0x3fc
	bl FUN_ov15_020dac78
	add r10, sp, #0
	mov r9, #0x30
	mov r0, r10
	mov r1, #0x36
	mov r2, r9
	bl MI_CpuFill8
	add r0, r7, #0x3fc
	mov r1, r10
	mov r2, r9
	bl FUN_ov15_020dac78
	add r0, r7, #0x3fc
	add r1, r7, #0x2e4
	mov r2, #8
	bl FUN_ov15_020dac78
	add r0, r7, #0x3fc
	mov r1, r6
	mov r2, #1
	bl FUN_ov15_020dac78
	add r0, r7, #0x3fc
	add r1, r6, #3
	add r2, r4, #2
	bl FUN_ov15_020dac78
	add r8, sp, #0x30
	add r0, r7, #0x3fc
	mov r1, r8
	bl FUN_ov15_020dad30
	add r0, r7, #0x3fc
	bl FUN_ov15_020dac30
	ldr r1, [r7, #0x1d4]
	add r0, r7, #0x3fc
	mov r2, r5
	bl FUN_ov15_020dac78
	mov r0, r10
	mov r1, #0x5c
	mov r2, r9
	bl MI_CpuFill8
	mov r1, r10
	mov r2, r9
	add r0, r7, #0x3fc
	bl FUN_ov15_020dac78
	add r0, r7, #0x3fc
	mov r1, r8
	mov r2, r5
	bl FUN_ov15_020dac78
	mov r1, r8
	add r0, r7, #0x3fc
	bl FUN_ov15_020dad30
	b _020D91D8
_020D90F0:
	sub r4, r4, #0x14
	mov r0, r4, asr #8
	strb r0, [r6, #3]
	strb r4, [r6, #4]
	add r0, r7, #0x348
	bl FUN_ov15_020db4dc
	mov r5, #0x14
	ldr r1, [r7, #0x1d4]
	mov r2, r5
	add r0, r7, #0x348
	bl FUN_ov15_020db530
	add r10, sp, #0
	mov r9, #0x28
	mov r0, r10
	mov r1, #0x36
	mov r2, r9
	bl MI_CpuFill8
	add r0, r7, #0x348
	mov r1, r10
	mov r2, r9
	bl FUN_ov15_020db530
	add r0, r7, #0x348
	add r1, r7, #0x2e4
	mov r2, #8
	bl FUN_ov15_020db530
	add r0, r7, #0x348
	mov r1, r6
	mov r2, #1
	bl FUN_ov15_020db530
	add r0, r7, #0x348
	add r1, r6, #3
	add r2, r4, #2
	bl FUN_ov15_020db530
	add r8, sp, #0x30
	add r0, r7, #0x348
	mov r1, r8
	bl FUN_ov15_020db5e8
	add r0, r7, #0x348
	bl FUN_ov15_020db4dc
	ldr r1, [r7, #0x1d4]
	add r0, r7, #0x348
	mov r2, r5
	bl FUN_ov15_020db530
	mov r0, r10
	mov r1, #0x5c
	mov r2, r9
	bl MI_CpuFill8
	mov r1, r10
	mov r2, r9
	add r0, r7, #0x348
	bl FUN_ov15_020db530
	add r0, r7, #0x348
	mov r1, r8
	mov r2, r5
	bl FUN_ov15_020db530
	mov r1, r8
	add r0, r7, #0x348
	bl FUN_ov15_020db5e8
_020D91D8:
	add r0, r6, #5
	add r1, sp, #0x30
	mov r2, r5
	add r0, r0, r4
	bl FUN_020219ac
	cmp r0, #0
	movne r0, #9
	strneb r0, [r7, #0x455]
	add r0, r7, #0x2ec
	bl FUN_ov15_020d8f88
	add r0, r4, #5
	add sp, sp, #0x44
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, pc}
	arm_func_end FUN_ov15_020d8fc4

	arm_func_start FUN_ov15_020d920c
FUN_ov15_020d920c: ; 0x020D920C
	stmfd sp!, {r4, r5, r6, r7, r8, r9, r10, lr}
	sub sp, sp, #0x30
	mov r6, r1
	mov r7, r0
	ldrh r0, [r7, #0x32]
	ldrb r2, [r6, #3]
	ldrb r1, [r6, #4]
	cmp r0, #4
	add r4, r6, #5
	add r5, r1, r2, lsl #8
	beq _020D9244
	cmp r0, #5
	beq _020D9320
	b _020D93F8
_020D9244:
	add r0, r7, #0x3fc
	bl FUN_ov15_020dac30
	mov r10, #0x10
	ldr r1, [r7, #0xbc]
	mov r2, r10
	add r0, r7, #0x3fc
	bl FUN_ov15_020dac78
	add r9, sp, #0
	mov r8, #0x30
	mov r0, r9
	mov r1, #0x36
	mov r2, r8
	bl MI_CpuFill8
	add r0, r7, #0x3fc
	mov r1, r9
	mov r2, r8
	bl FUN_ov15_020dac78
	add r0, r7, #0x3fc
	add r1, r7, #0x1cc
	mov r2, #8
	bl FUN_ov15_020dac78
	add r0, r7, #0x3fc
	mov r1, r6
	mov r2, #1
	bl FUN_ov15_020dac78
	add r0, r7, #0x3fc
	add r1, r6, #3
	add r2, r5, #2
	bl FUN_ov15_020dac78
	add r0, r7, #0x3fc
	add r1, r4, r5
	bl FUN_ov15_020dad30
	add r0, r7, #0x3fc
	bl FUN_ov15_020dac30
	ldr r1, [r7, #0xbc]
	add r0, r7, #0x3fc
	mov r2, r10
	bl FUN_ov15_020dac78
	mov r0, r9
	mov r1, #0x5c
	mov r2, r8
	bl MI_CpuFill8
	mov r1, r9
	mov r2, r8
	add r0, r7, #0x3fc
	bl FUN_ov15_020dac78
	mov r2, r10
	add r0, r7, #0x3fc
	add r1, r4, r5
	bl FUN_ov15_020dac78
	add r1, r4, r5
	add r0, r7, #0x3fc
	bl FUN_ov15_020dad30
	add r5, r5, #0x10
	b _020D93F8
_020D9320:
	add r0, r7, #0x348
	bl FUN_ov15_020db4dc
	mov r10, #0x14
	ldr r1, [r7, #0xbc]
	mov r2, r10
	add r0, r7, #0x348
	bl FUN_ov15_020db530
	add r9, sp, #0
	mov r8, #0x28
	mov r0, r9
	mov r1, #0x36
	mov r2, r8
	bl MI_CpuFill8
	add r0, r7, #0x348
	mov r1, r9
	mov r2, r8
	bl FUN_ov15_020db530
	add r0, r7, #0x348
	add r1, r7, #0x1cc
	mov r2, #8
	bl FUN_ov15_020db530
	add r0, r7, #0x348
	mov r1, r6
	mov r2, #1
	bl FUN_ov15_020db530
	add r0, r7, #0x348
	add r1, r6, #3
	add r2, r5, #2
	bl FUN_ov15_020db530
	add r0, r7, #0x348
	add r1, r4, r5
	bl FUN_ov15_020db5e8
	add r0, r7, #0x348
	bl FUN_ov15_020db4dc
	ldr r1, [r7, #0xbc]
	add r0, r7, #0x348
	mov r2, r10
	bl FUN_ov15_020db530
	mov r0, r9
	mov r1, #0x5c
	mov r2, r8
	bl MI_CpuFill8
	mov r1, r9
	mov r2, r8
	add r0, r7, #0x348
	bl FUN_ov15_020db530
	mov r2, r10
	add r0, r7, #0x348
	add r1, r4, r5
	bl FUN_ov15_020db530
	add r1, r4, r5
	add r0, r7, #0x348
	bl FUN_ov15_020db5e8
	add r5, r5, #0x14
_020D93F8:
	mov r3, r5, asr #8
	mov r2, r5
	add r0, r7, #0xc8
	add r1, r6, #5
	strb r3, [r6, #3]
	strb r5, [r6, #4]
	bl FUN_ov15_020db6f8
	add r0, r7, #0x1d4
	bl FUN_ov15_020d8f88
	add r0, r5, #5
	add sp, sp, #0x30
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, pc}
	arm_func_end FUN_ov15_020d920c

	arm_func_start FUN_ov15_020d9428
FUN_ov15_020d9428: ; 0x020D9428
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	mov r7, r0
	mov r6, r1
	mov r5, r2
	add r4, sp, #0
_020D943C:
	mov r0, r4
	mov r1, r5
	bl FUN_ov15_020c0690
	ldr r1, [sp]
	cmp r1, #0
	mvneq r0, #0
	ldmeqfd sp!, {r3, r4, r5, r6, r7, pc}
	cmp r1, r6
	strhi r6, [sp]
	ldr r2, [sp]
	mov r1, r7
	bl MI_CpuCopy8
	ldr r0, [sp]
	mov r1, r5
	bl FUN_ov15_020c078c
	ldr r0, [sp]
	sub r6, r6, r0
	cmp r6, #0
	add r7, r7, r0
	bgt _020D943C
	mov r0, #0
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
	arm_func_end FUN_ov15_020d9428

	arm_func_start FUN_ov15_020d9494
FUN_ov15_020d9494: ; 0x020D9494
	stmfd sp!, {r4, r5, r6, lr}
	mov r6, r0
	mov r5, r1
	mov r4, r2
	add r0, r6, #0x2ec
	bl FUN_ov15_020db530
	mov r1, r5
	mov r2, r4
	add r0, r6, #0x3a4
	bl FUN_ov15_020dac78
	ldmfd sp!, {r4, r5, r6, pc}
	arm_func_end FUN_ov15_020d9494

	arm_func_start FUN_ov15_020d94c0
FUN_ov15_020d94c0: ; 0x020D94C0
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, lr}
	mov r9, r0
	ldrb r2, [r9, #0x455]
	mov r10, r1
	mov r4, #9
	cmp r2, #9
	bne _020D94F0
	ldr r1, _020D97D4 ; =0x020E6D84
	mov r0, r10
	ldr r1, [r1]
	blx r1
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_020D94F0:
	ldrb r3, [r10, #3]
	ldrb r1, [r10, #4]
	ldr r0, [r9, #0x1d4]
	ldrb r5, [r10]
	add r1, r1, r3, lsl #8
	cmp r0, #0
	add r6, r1, #5
	beq _020D9568
	add r0, r2, #0xf9
	and r0, r0, #0xff
	cmp r0, #1
	bhi _020D9528
	cmp r5, #0x15
	bne _020D9538
_020D9528:
	cmp r5, #0x15
	bne _020D9568
	cmp r6, #7
	bls _020D9568
_020D9538:
	mov r0, r9
	mov r1, r10
	bl FUN_ov15_020d8fc4
	ldrb r2, [r9, #0x455]
	mov r6, r0
	cmp r2, #9
	bne _020D9568
	ldr r1, _020D97D4 ; =0x020E6D84
	mov r0, r10
	ldr r1, [r1]
	blx r1
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_020D9568:
	sub r0, r5, #0x14
	cmp r0, #3
	add r5, r10, #5
	sub r6, r6, #5
	addls pc, pc, r0, lsl #2
	b _020D97BC
_020D9580: ; jump table
	b _020D9590 ; case 0
	b _020D95BC ; case 1
	b _020D95D4 ; case 2
	b _020D9790 ; case 3
_020D9590:
	ldr r0, [r9, #0x1d4]
	cmp r0, #0
	streqb r4, [r9, #0x455]
	beq _020D97C0
	add r0, r9, #0x2e4
	mov r1, #0
	mov r2, #8
	bl MI_CpuFill8
	mov r0, #7
	strb r0, [r9, #0x455]
	b _020D97C0
_020D95BC:
	cmp r6, #2
	bne _020D95D0
	ldrb r0, [r5]
	cmp r0, #2
	bne _020D97C0
_020D95D0:
	b _020D97BC
_020D95D4:
	cmp r6, #4
	strlob r4, [r9, #0x455]
	blo _020D97C0
	mov r11, #0
_020D95E4:
	ldrb r3, [r5, #1]
	ldrb r7, [r5, #2]
	ldrb r1, [r5, #3]
	mov r3, r3, lsl #0x10
	add r3, r3, r7, lsl #8
	add r8, r1, r3
	ldrb r0, [r5]
	cmp r8, r6
	movhi r0, #9
	strhib r0, [r9, #0x455]
	bhi _020D97C0
	cmp r0, #0xb
	add r5, r5, #4
	bgt _020D9644
	cmp r0, #0xb
	bge _020D96E0
	cmp r0, #2
	bgt _020D974C
	cmp r0, #1
	blt _020D974C
	beq _020D9674
	cmp r0, #2
	beq _020D96BC
	b _020D974C
_020D9644:
	sub r0, r0, #0xd
	cmp r0, #7
	addls pc, pc, r0, lsl #2
	b _020D974C
_020D9654: ; jump table
	b _020D9708 ; case 0
	b _020D9720 ; case 1
	b _020D974C ; case 2
	b _020D969C ; case 3
	b _020D974C ; case 4
	b _020D974C ; case 5
	b _020D974C ; case 6
	b _020D973C ; case 7
_020D9674:
	ldrb r0, [r9, #0x454]
	cmp r0, #0
	beq _020D9698
	cmp r2, #0
	bne _020D9698
	mov r0, r9
	mov r1, r5
	bl FUN_ov15_020d8720
	b _020D9750
_020D9698:
	b _020D974C
_020D969C:
	ldrb r0, [r9, #0x454]
	cmp r0, #0
	streqb r4, [r9, #0x455]
	beq _020D9750
	mov r0, r9
	mov r1, r5
	bl FUN_ov15_020d8cc0
	b _020D9750
_020D96BC:
	cmp r8, #0x26
	ldrgeb r0, [r9, #0x454]
	cmpge r0, #0
	strneb r4, [r9, #0x455]
	bne _020D9750
	mov r0, r9
	mov r1, r5
	bl FUN_ov15_020d84dc
	b _020D9750
_020D96E0:
	cmp r2, #2
	ldreqb r0, [r9, #0x454]
	cmpeq r0, #0
	strneb r4, [r9, #0x455]
	bne _020D9750
	mov r0, r9
	mov r1, r5
	bl FUN_ov15_020d82bc
	strb r11, [r9, #0x5ac]
	b _020D9750
_020D9708:
	cmp r2, #3
	ldreqb r0, [r9, #0x454]
	cmpeq r0, #0
	moveq r0, #1
	streqb r0, [r9, #0x5ac]
	b _020D9734
_020D9720:
	ldrb r0, [r9, #0x454]
	cmp r0, #0
	cmpeq r2, #3
	moveq r0, #4
	streqb r0, [r9, #0x455]
_020D9734:
	strneb r4, [r9, #0x455]
	b _020D9750
_020D973C:
	mov r0, r9
	mov r1, r5
	bl FUN_ov15_020d8eb8
	b _020D9750
_020D974C:
	strb r4, [r9, #0x455]
_020D9750:
	ldrb r0, [r9, #0x455]
	cmp r0, #9
	beq _020D9778
	add r7, r8, #4
	mov r0, r9
	sub r1, r5, #4
	mov r2, r7
	bl FUN_ov15_020d9494
	add r5, r5, r8
	sub r6, r6, r7
_020D9778:
	cmp r6, #0
	beq _020D97C0
	ldrb r2, [r9, #0x455]
	cmp r2, #9
	bne _020D95E4
	b _020D97C0
_020D9790:
	cmp r2, #8
	strneb r4, [r9, #0x455]
	bne _020D97C0
	add r1, r6, #5
	mov r2, #5
	mov r0, #1
	str r10, [r9, #0x824]
	str r2, [r9, #0x82c]
	str r1, [r9, #0x828]
	strb r0, [r9, #0x456]
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_020D97BC:
	strb r4, [r9, #0x455]
_020D97C0:
	ldr r1, _020D97D4 ; =0x020E6D84
	mov r0, r10
	ldr r1, [r1]
	blx r1
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_020D97D4: .word ov15_020E6D84
	arm_func_end FUN_ov15_020d94c0

	arm_func_start FUN_ov15_020d97d8
FUN_ov15_020d97d8: ; 0x020D97D8
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	mov r5, r0
	ldr r4, [r5, #0xc]
	mov r6, #9
	add r7, sp, #0
_020D97EC:
	mov r0, r7
	mov r1, r5
	bl FUN_ov15_020c0690
	ldr r1, [sp]
	cmp r1, #5
	bhs _020D9824
	cmp r1, #0
	beq _020D9818
	ldrb r0, [r5, #8]
	cmp r0, #0
	bne _020D97EC
_020D9818:
	mov r0, #9
	strb r0, [r4, #0x455]
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_020D9824:
	ldrb r1, [r0]
	cmp r1, #0x80
	bne _020D98D4
	ldrb r1, [r4, #0x454]
	cmp r1, #0
	beq _020D98CC
	ldrb r1, [r4, #0x455]
	cmp r1, #0
	bne _020D98CC
	ldrb r2, [r0, #1]
	mov r1, r5
	mov r0, #2
	str r2, [sp]
	bl FUN_ov15_020c078c
	ldr r1, _020D995C ; =0x020E6D54
	ldr r0, [sp]
	ldr r1, [r1]
	blx r1
	movs r7, r0
	moveq r0, #9
	streqb r0, [r4, #0x455]
	ldmeqfd sp!, {r3, r4, r5, r6, r7, pc}
	ldr r1, [sp]
	mov r2, r5
	bl FUN_ov15_020d9428
	cmp r0, #0
	ldreqb r0, [r7]
	cmpeq r0, #1
	strneb r6, [r4, #0x455]
	bne _020D98A8
	mov r0, r4
	add r1, r7, #1
	bl FUN_ov15_020d865c
_020D98A8:
	ldr r2, [sp]
	mov r0, r4
	mov r1, r7
	bl FUN_ov15_020d9494
	ldr r1, _020D9960 ; =0x020E6D84
	mov r0, r7
	ldr r1, [r1]
	blx r1
	b _020D9954
_020D98CC:
	strb r6, [r4, #0x455]
	b _020D9954
_020D98D4:
	ldrb r2, [r0, #3]
	ldrb r0, [r0, #4]
	ldr r1, _020D9964 ; =0x00004805
	add r0, r0, r2, lsl #8
	add r0, r0, #5
	str r0, [sp]
	cmp r0, r1
	movhi r0, #9
	strhib r0, [r4, #0x455]
	ldmhifd sp!, {r3, r4, r5, r6, r7, pc}
	ldr r1, _020D995C ; =0x020E6D54
	ldr r1, [r1]
	blx r1
	movs r6, r0
	moveq r0, #9
	streqb r0, [r4, #0x455]
	ldmeqfd sp!, {r3, r4, r5, r6, r7, pc}
	ldr r1, [sp]
	mov r2, r5
	bl FUN_ov15_020d9428
	cmp r0, #0
	beq _020D9948
	ldr r1, _020D9960 ; =0x020E6D84
	mov r0, r6
	ldr r1, [r1]
	blx r1
	mov r0, #9
	strb r0, [r4, #0x455]
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_020D9948:
	mov r0, r4
	mov r1, r6
	bl FUN_ov15_020d94c0
_020D9954:
	ldrb r0, [r4, #0x455]
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_020D995C: .word ov15_020E6D54
_020D9960: .word ov15_020E6D84
_020D9964: .word 0x00004805
	arm_func_end FUN_ov15_020d97d8

	arm_func_start FUN_ov15_020d9968
FUN_ov15_020d9968: ; 0x020D9968
	stmfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, lr}
	sub sp, sp, #0x74
	ldr r2, _020D9A7C ; =0x020ED668
	mov r10, r0
	ldrb r0, [r2]
	mov r9, r1
	cmp r0, #0
	bne _020D99C8
	ldr r2, _020D9A80 ; =0x020E6DB8
	add r0, sp, #0
	ldmia r2, {r4, r5, r6}
	umull r7, r3, r6, r4
	mla r3, r6, r5, r3
	ldr r1, [r2, #0xc]
	ldr r6, [r2, #0x10]
	mla r3, r1, r4, r3
	ldr r1, [r2, #0x14]
	adds r4, r6, r7
	adc r3, r1, r3
	str r4, [r2]
	mov r1, #4
	str r3, [r2, #4]
	str r3, [sp]
	bl FUN_ov15_020d9a88
_020D99C8:
	cmp r9, #0
	mov r8, #0
	addle sp, sp, #0x74
	mov r1, #0x14
	ldmlefd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
	ldr r5, _020D9A84 ; =0x020ED670
	add r4, sp, #4
	add r6, sp, #0x18
	mov r11, r1
_020D99EC:
	cmp r1, #0x14
	bne _020D9A58
	mov r0, r6
	bl FUN_ov15_020db4dc
	bl OS_DisableInterrupts
	mov r7, r0
	mov r0, r6
	mov r1, r5
	mov r2, r11
	bl FUN_ov15_020db530
	mov r0, r6
	mov r1, r4
	bl FUN_ov15_020db650
	mov r1, #1
	mov r0, #0x13
_020D9A28:
	ldrb r3, [r5, r0]
	ldrb r2, [r4, r0]
	add r2, r3, r2
	add r2, r1, r2
	strb r2, [r5, r0]
	mov r1, r2, lsr #8
	subs r0, r0, #1
	bpl _020D9A28
	mov r0, r7
	str r2, [sp]
	bl OS_RestoreInterrupts
	mov r1, #0
_020D9A58:
	ldrb r0, [r4, r1]
	add r1, r1, #1
	cmp r0, #0
	strneb r0, [r10, r8]
	addne r8, r8, #1
	cmp r8, r9
	blt _020D99EC
	add sp, sp, #0x74
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
_020D9A7C: .word ov15_020ED668
_020D9A80: .word ov15_020E6DB8
_020D9A84: .word ov15_020ED670
	arm_func_end FUN_ov15_020d9968

	arm_func_start FUN_ov15_020d9a88
FUN_ov15_020d9a88: ; 0x020D9A88
	stmfd sp!, {r3, r4, r5, r6, r7, r8, lr}
	sub sp, sp, #0x5c
	add r6, sp, #0
	mov r8, r0
	mov r0, r6
	mov r7, r1
	bl FUN_ov15_020db4dc
	bl OS_DisableInterrupts
	ldr r4, _020D9AF8 ; =0x020ED670
	mov r5, r0
	mov r0, r6
	mov r1, r4
	mov r2, #0x14
	bl FUN_ov15_020db530
	mov r1, r8
	mov r2, r7
	mov r0, r6
	bl FUN_ov15_020db530
	mov r0, r6
	mov r1, r4
	bl FUN_ov15_020db5e8
	mov r0, r5
	bl OS_RestoreInterrupts
	ldr r0, _020D9AFC ; =0x020ED668
	mov r1, #1
	strb r1, [r0]
	add sp, sp, #0x5c
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, pc}
_020D9AF8: .word ov15_020ED670
_020D9AFC: .word ov15_020ED668
	arm_func_end FUN_ov15_020d9a88

	arm_func_start FUN_ov15_020d9b00
FUN_ov15_020d9b00: ; 0x020D9B00
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, lr}
	sub sp, sp, #4
	ldr r1, _020D9C50 ; =0x020E6D54
	mov r9, r0
	ldr r1, [r1]
	mov r0, #0x83
	ldr r8, [r9, #0xc]
	blx r1
	movs r7, r0
	moveq r0, #9
	addeq sp, sp, #4
	streqb r0, [r8, #0x455]
	ldmeqfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, pc}
	mov r6, #0x14
	strb r6, [r7]
	mov r4, #3
	mov r5, #0
	strb r4, [r7, #1]
	strb r5, [r7, #2]
	strb r5, [r7, #3]
	mov r3, #1
	strb r3, [r7, #4]
	mov r1, r5
	add r0, r8, #0x1cc
	mov r2, #8
	strb r3, [r7, #5]
	bl MI_CpuFill8
	mov r0, #0x16
	strb r0, [r7, #6]
	strb r4, [r7, #7]
	strb r5, [r7, #8]
	mov r10, #0x58
	strb r5, [r7, #9]
	mov r4, #0x28
	strb r4, [r7, #0xa]
	strb r6, [r7, #0xb]
	strb r5, [r7, #0xc]
	mov r2, r10
	strb r5, [r7, #0xd]
	mov r3, #0x24
	add r0, r8, #0x3a4
	add r1, r8, #0x3fc
	strb r3, [r7, #0xe]
	bl MI_CpuCopy8
	mov r0, r8
	add r1, r7, #0xf
	mov r2, r5
	bl FUN_ov15_020d8cfc
	mov r2, r10
	add r0, r8, #0x3fc
	add r1, r8, #0x3a4
	bl MI_CpuCopy8
	mov r6, #0x5c
	add r0, r8, #0x2ec
	add r1, r8, #0x348
	mov r2, r6
	bl MI_CpuCopy8
	mov r0, r8
	add r1, r7, #0x1f
	mov r2, r5
	bl FUN_ov15_020d8dd8
	mov r2, r6
	add r0, r8, #0x348
	add r1, r8, #0x2ec
	bl MI_CpuCopy8
	mov r2, r4
	mov r0, r8
	add r1, r7, #0xb
	bl FUN_ov15_020d9494
	mov r0, r8
	add r1, r7, #6
	bl FUN_ov15_020d920c
	add r1, r0, #6
	mov r0, r7
	mov r2, r5
	mov r3, r5
	str r9, [sp]
	bl FUN_ov15_020c0a10
	ldr r1, _020D9C54 ; =0x020E6D84
	mov r0, r7
	ldr r1, [r1]
	blx r1
	add sp, sp, #4
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, pc}
_020D9C50: .word ov15_020E6D54
_020D9C54: .word ov15_020E6D84
	arm_func_end FUN_ov15_020d9b00

	arm_func_start FUN_ov15_020d9c58
FUN_ov15_020d9c58: ; 0x020D9C58
	stmfd sp!, {r3, r4, r5, r6, r7, r8, lr}
	sub sp, sp, #4
	ldr r1, _020D9DEC ; =0x020E6D54
	mov r7, r0
	ldr r1, [r1]
	mov r0, #0x98
	ldr r5, [r7, #0xc]
	blx r1
	movs r6, r0
	moveq r0, #9
	addeq sp, sp, #4
	streqb r0, [r5, #0x455]
	ldmeqfd sp!, {r3, r4, r5, r6, r7, r8, pc}
	mov r0, #3
	strb r0, [r6, #9]
	mov r4, #0
	strb r4, [r6, #0xa]
	bl FUN_ov15_020d787c
	mov r1, r0, lsr #0x18
	strb r1, [r5, #0x34]
	mov r1, r0, lsr #0x10
	strb r1, [r5, #0x35]
	mov r1, r0, lsr #8
	strb r1, [r5, #0x36]
	strb r0, [r5, #0x37]
	add r0, r5, #0x38
	mov r1, #0x1c
	bl FUN_ov15_020d9968
	mov r8, #0x20
	mov r2, r8
	add r0, r5, #0x34
	add r1, r6, #0xb
	bl MI_CpuCopy8
	ldrh r2, [r7, #0x18]
	ldr r1, [r7, #0x1c]
	mov r0, r5
	bl FUN_ov15_020d767c
	ldrb r0, [r5, #0x30]
	cmp r0, #0
	streqb r4, [r6, #0x2b]
	addeq r0, r6, #0x2c
	beq _020D9D18
	mov r2, r8
	add r0, r5, #0x74
	add r1, r6, #0x2c
	strb r8, [r6, #0x2b]
	bl MI_CpuCopy8
	add r0, r6, #0x4c
_020D9D18:
	mov r4, #0
	strb r4, [r0]
	mov r1, #4
	strb r1, [r0, #1]
	ldr r2, _020D9DF0 ; =0x020E5A54
	add r0, r0, #2
_020D9D30:
	mov r3, r4, lsl #1
	ldrh r1, [r2, r3]
	add r4, r4, #1
	cmp r4, #2
	mov r1, r1, asr #8
	strb r1, [r0]
	ldrh r1, [r2, r3]
	strb r1, [r0, #1]
	add r0, r0, #2
	blo _020D9D30
	mov r3, #1
	mov r2, #0
	strb r3, [r0]
	add r1, r0, #2
	sub r1, r1, r6
	sub r4, r1, #5
	strb r2, [r0, #1]
	sub r1, r4, #4
	mov r0, #0x16
	strb r0, [r6]
	mov r0, #3
	strb r0, [r6, #1]
	strb r2, [r6, #2]
	mov r0, r4, asr #8
	strb r0, [r6, #3]
	strb r4, [r6, #4]
	strb r3, [r6, #5]
	mov r0, r1, asr #0x10
	strb r0, [r6, #6]
	mov r0, r1, asr #8
	strb r0, [r6, #7]
	strb r1, [r6, #8]
	mov r0, r6
	mov r3, r2
	add r1, r4, #5
	str r7, [sp]
	bl FUN_ov15_020c0a10
	mov r0, r5
	mov r2, r4
	add r1, r6, #5
	bl FUN_ov15_020d9494
	ldr r1, _020D9DF4 ; =0x020E6D84
	mov r0, r6
	ldr r1, [r1]
	blx r1
	add sp, sp, #4
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, pc}
_020D9DEC: .word ov15_020E6D54
_020D9DF0: .word ov15_020E5A54
_020D9DF4: .word ov15_020E6D84
	arm_func_end FUN_ov15_020d9c58

	arm_func_start FUN_ov15_020d9df8
FUN_ov15_020d9df8: ; 0x020D9DF8
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, lr}
	sub sp, sp, #8
	mov r10, r0
	ldr r4, [r10, #0xc]
	ldrb r0, [r4, #0x5ac]
	cmp r0, #0
	beq _020D9E2C
	mov r2, #0
	ldr r0, _020DA0A0 ; =0x020E3FE0
	mov r3, r2
	mov r1, #7
	str r10, [sp]
	bl FUN_ov15_020c0a10
_020D9E2C:
	mov r0, #3
	strb r0, [r4]
	mov r0, #0
	strb r0, [r4, #1]
	add r0, r4, #2
	mov r1, #0x2e
	bl FUN_ov15_020d9968
	ldr r9, [r4, #0x594]
	mov r0, r9, lsl #1
	add r1, r0, r0, lsr #31
	ldr r0, _020DA0A4 ; =0x020E6D54
	mov r7, r1, asr #1
	ldr r2, [r0]
	mov r0, r9
	blx r2
	movs r8, r0
	moveq r0, #9
	addeq sp, sp, #8
	streqb r0, [r4, #0x455]
	ldmeqfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
	mov r0, #0
	strb r0, [r8]
	mov r2, #2
	add r0, r8, #2
	sub r1, r9, #0x33
	strb r2, [r8, #1]
	bl FUN_ov15_020d9968
	sub r3, r9, #0x31
	mov r1, #0
	add r2, r8, r9
	strb r1, [r8, r3]
	sub r1, r2, #0x30
	mov r0, r4
	mov r2, #0x30
	bl MI_CpuCopy8
	ldr r0, _020DA0A4 ; =0x020E6D54
	ldr r1, [r0]
	mov r0, r7, lsl #3
	blx r1
	movs r5, r0
	bne _020D9EF0
	ldr r1, _020DA0A8 ; =0x020E6D84
	mov r0, r8
	ldr r1, [r1]
	blx r1
	mov r0, #9
	add sp, sp, #8
	strb r0, [r4, #0x455]
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_020D9EF0:
	add r0, r5, r7, lsl #1
	add r11, r0, r7, lsl #1
	mov r1, r8
	mov r2, r9
	mov r3, r7
	str r0, [sp, #4]
	add r6, r11, r7, lsl #1
	bl FUN_ov15_020dc504
	add r1, r4, #0x198
	ldr r2, [r4, #0x5a0]
	mov r0, r11
	add r1, r1, #0x400
	mov r3, r7
	bl FUN_ov15_020dc504
	add r1, r4, #0x94
	mov r0, r6
	add r1, r1, #0x400
	mov r2, r9
	mov r3, r7
	bl FUN_ov15_020dc504
	bl FUN_ov15_020d78dc
	str r6, [sp]
	mov r6, r0
	ldr r1, [sp, #4]
	mov r2, r11
	mov r3, r7
	mov r0, r5
	bl FUN_ov15_020dbedc
	mov r0, r6
	bl FUN_ov15_020d7924
	ldr r0, _020DA0A4 ; =0x020E6D54
	ldr r1, [r0]
	add r0, r9, #0x49
	blx r1
	movs r6, r0
	bne _020D9FAC
	ldr r6, _020DA0A8 ; =0x020E6D84
	mov r0, r8
	ldr r1, [r6]
	blx r1
	ldr r1, [r6]
	mov r0, r5
	blx r1
	mov r0, #9
	add sp, sp, #8
	strb r0, [r4, #0x455]
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_020D9FAC:
	mov r0, #0x16
	strb r0, [r6]
	mov r0, #3
	strb r0, [r6, #1]
	mov r0, #0
	add r1, r9, #4
	strb r0, [r6, #2]
	mov r0, r1, asr #8
	strb r0, [r6, #3]
	strb r1, [r6, #4]
	mov r0, #0x10
	strb r0, [r6, #5]
	mov r0, r9, asr #0x10
	strb r0, [r6, #6]
	mov r0, r9, asr #8
	strb r0, [r6, #7]
	strb r9, [r6, #8]
	tst r9, #1
	add r0, r6, #9
	beq _020DA014
	add r0, r9, r9, lsr #31
	mov r0, r0, asr #1
	mov r0, r0, lsl #1
	ldrh r1, [r5, r0]
	add r0, r6, #0xa
	strb r1, [r6, #9]
_020DA014:
	add r1, r9, r9, lsr #31
	mov r1, r1, asr #1
	subs r3, r1, #1
	bmi _020DA048
_020DA024:
	mov r2, r3, lsl #1
	ldrh r1, [r5, r2]
	subs r3, r3, #1
	mov r1, r1, asr #8
	strb r1, [r0]
	ldrh r1, [r5, r2]
	strb r1, [r0, #1]
	add r0, r0, #2
	bpl _020DA024
_020DA048:
	mov r2, #0
	mov r0, r6
	mov r3, r2
	add r1, r9, #9
	str r10, [sp]
	bl FUN_ov15_020c0a10
	mov r0, r4
	add r1, r6, #5
	add r2, r9, #4
	bl FUN_ov15_020d9494
	ldr r4, _020DA0A8 ; =0x020E6D84
	mov r0, r6
	ldr r1, [r4]
	blx r1
	ldr r1, [r4]
	mov r0, r5
	blx r1
	ldr r1, [r4]
	mov r0, r8
	blx r1
	add sp, sp, #8
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_020DA0A0: .word 0x020E3FE0
_020DA0A4: .word ov15_020E6D54
_020DA0A8: .word ov15_020E6D84
	arm_func_end FUN_ov15_020d9df8

	arm_func_start FUN_ov15_020da0ac
FUN_ov15_020da0ac: ; 0x020DA0AC
	stmfd sp!, {r4, lr}
	mov r4, r0
	bl FUN_ov15_020d97d8
	cmp r0, #7
	movne r0, #1
	ldmnefd sp!, {r4, pc}
	mov r0, r4
	bl FUN_ov15_020d97d8
	cmp r0, #6
	movne r0, #1
	moveq r0, #0
	ldmfd sp!, {r4, pc}
	arm_func_end FUN_ov15_020da0ac

	arm_func_start FUN_ov15_020da0dc
FUN_ov15_020da0dc: ; 0x020DA0DC
	stmfd sp!, {r3, r4, r5, lr}
	mov r5, r0
	ldr r4, [r5, #0xc]
	bl FUN_ov15_020d9c58
_020DA0EC:
	mov r0, r5
	bl FUN_ov15_020d97d8
	cmp r0, #9
	moveq r0, #1
	ldmeqfd sp!, {r3, r4, r5, pc}
	cmp r0, #4
	beq _020DA114
	ldrb r0, [r4, #0x31]
	cmp r0, #0
	beq _020DA0EC
_020DA114:
	ldrb r0, [r4, #0x31]
	cmp r0, #0
	beq _020DA148
	mov r0, r4
	bl FUN_ov15_020d8b08
	mov r0, r5
	bl FUN_ov15_020da0ac
	cmp r0, #0
	movne r0, #1
	ldmnefd sp!, {r3, r4, r5, pc}
	mov r0, r5
	bl FUN_ov15_020d9b00
	b _020DA198
_020DA148:
	mov r0, r5
	bl FUN_ov15_020d9df8
	mov r0, r4
	bl FUN_ov15_020d8aa4
	ldrb r0, [r4, #0x30]
	cmp r0, #0
	beq _020DA174
	ldrh r2, [r5, #0x18]
	ldr r1, [r5, #0x1c]
	mov r0, r4
	bl FUN_ov15_020d7720
_020DA174:
	mov r0, r4
	bl FUN_ov15_020d8b08
	mov r0, r5
	bl FUN_ov15_020d9b00
	mov r0, r5
	bl FUN_ov15_020da0ac
	cmp r0, #0
	movne r0, #1
	ldmnefd sp!, {r3, r4, r5, pc}
_020DA198:
	mov r0, #8
	strb r0, [r4, #0x455]
	mov r0, #0
	ldmfd sp!, {r3, r4, r5, pc}
	arm_func_end FUN_ov15_020da0dc

	arm_func_start FUN_ov15_020da1a8
FUN_ov15_020da1a8: ; 0x020DA1A8
	stmfd sp!, {r3, r4, r5, lr}
	mov r5, r0
	ldrb r1, [r5, #8]
	ldr r4, [r5, #0xc]
	cmp r1, #4
	beq _020DA1D0
	bl FUN_ov15_020c0428
	cmp r0, #0
	movne r0, #1
	ldmnefd sp!, {r3, r4, r5, pc}
_020DA1D0:
	mov r1, #0
	strb r1, [r4, #0x455]
	str r1, [r4, #0x1d4]
	add r0, r4, #0x2ec
	strb r1, [r4, #0x454]
	bl FUN_ov15_020db4dc
	add r0, r4, #0x3a4
	bl FUN_ov15_020dac30
	mov r0, r5
	bl FUN_ov15_020da0dc
	ldmfd sp!, {r3, r4, r5, pc}
	arm_func_end FUN_ov15_020da1a8

	arm_func_start FUN_ov15_020da1fc
FUN_ov15_020da1fc: ; 0x020DA1FC
	stmfd sp!, {r4, r5, r6, lr}
	mov r5, r1
	ldr r4, [r5, #0xc]
	mov r6, r0
	ldr r12, [r4, #0x824]
	cmp r12, #0
	beq _020DA280
	ldrb r0, [r4, #0x456]
	cmp r0, #0
	bne _020DA280
	ldr r3, [r4, #0x82c]
	ldr r1, [r4, #0x828]
	mov r2, r5
	add r0, r12, r3
	sub r1, r1, r3
	bl FUN_ov15_020d9428
	cmp r0, #0
	beq _020DA264
	ldr r1, _020DA2D0 ; =0x020E6D84
	ldr r0, [r4, #0x824]
	ldr r1, [r1]
	blx r1
	mov r0, #0
	str r0, [r4, #0x824]
	str r0, [r6]
	ldmfd sp!, {r4, r5, r6, pc}
_020DA264:
	ldr r1, [r4, #0x824]
	mov r0, r4
	bl FUN_ov15_020d94c0
	ldrb r0, [r4, #0x456]
	cmp r0, #0
	moveq r0, #0
	streq r0, [r4, #0x824]
_020DA280:
	ldr r0, [r4, #0x824]
	cmp r0, #0
	bne _020DA2B0
_020DA28C:
	mov r0, r5
	bl FUN_ov15_020d97d8
	cmp r0, #9
	moveq r0, #0
	streq r0, [r6]
	ldmeqfd sp!, {r4, r5, r6, pc}
	ldr r0, [r4, #0x824]
	cmp r0, #0
	beq _020DA28C
_020DA2B0:
	ldr r1, [r4, #0x828]
	ldr r0, [r4, #0x82c]
	sub r0, r1, r0
	str r0, [r6]
	ldr r1, [r4, #0x824]
	ldr r0, [r4, #0x82c]
	add r0, r1, r0
	ldmfd sp!, {r4, r5, r6, pc}
_020DA2D0: .word ov15_020E6D84
	arm_func_end FUN_ov15_020da1fc

	arm_func_start FUN_ov15_020da2d4
FUN_ov15_020da2d4: ; 0x020DA2D4
	stmfd sp!, {r4, lr}
	ldr r4, [r1, #0xc]
	ldr r2, [r4, #0x828]
	ldr r1, [r4, #0x82c]
	sub r2, r2, r1
	cmp r0, r2
	blo _020DA314
	ldr r0, [r4, #0x824]
	cmp r0, #0
	beq _020DA308
	ldr r1, _020DA320 ; =0x020E6D84
	ldr r1, [r1]
	blx r1
_020DA308:
	mov r0, #0
	str r0, [r4, #0x824]
	ldmfd sp!, {r4, pc}
_020DA314:
	add r0, r1, r0
	str r0, [r4, #0x82c]
	ldmfd sp!, {r4, pc}
_020DA320: .word ov15_020E6D84
	arm_func_end FUN_ov15_020da2d4

	arm_func_start FUN_ov15_020da324
FUN_ov15_020da324: ; 0x020DA324
	stmfd sp!, {r3, r4, r5, r6, lr}
	sub sp, sp, #4
	mov r5, r0
	ldr r4, [r5, #0xc]
	ldr r0, [r4, #0x824]
	cmp r0, #0
	ldr r0, [r5, #0x50]
	bne _020DA3C4
	cmp r0, #5
	addlo sp, sp, #4
	ldmlofd sp!, {r3, r4, r5, r6, pc}
	add r0, sp, #0
	mov r1, r5
	bl FUN_ov15_020c0690
	ldrb r2, [r0, #3]
	ldrb r0, [r0, #4]
	ldr r1, _020DA460 ; =0x00004805
	add r0, r0, r2, lsl #8
	add r0, r0, #5
	str r0, [sp]
	cmp r0, r1
	movhi r0, #9
	addhi sp, sp, #4
	strhib r0, [r4, #0x455]
	ldmhifd sp!, {r3, r4, r5, r6, pc}
	ldr r1, _020DA464 ; =0x020E6D54
	ldr r1, [r1]
	blx r1
	cmp r0, #0
	str r0, [r4, #0x824]
	moveq r0, #9
	addeq sp, sp, #4
	streqb r0, [r4, #0x455]
	ldmeqfd sp!, {r3, r4, r5, r6, pc}
	ldr r1, [sp]
	mov r0, #0
	str r1, [r4, #0x828]
	str r0, [r4, #0x82c]
	strb r0, [r4, #0x456]
	b _020DA3D0
_020DA3C4:
	cmp r0, #0
	addeq sp, sp, #4
	ldmeqfd sp!, {r3, r4, r5, r6, pc}
_020DA3D0:
	add r0, sp, #0
	mov r1, r5
	bl FUN_ov15_020c0690
	ldr r3, [r4, #0x828]
	ldr r2, [r4, #0x82c]
	ldr r1, [sp]
	sub r2, r3, r2
	cmp r1, r2
	strhs r2, [sp]
	movhs r6, #1
	ldr r3, [r4, #0x824]
	ldr r1, [r4, #0x82c]
	ldr r2, [sp]
	add r1, r3, r1
	movlo r6, #0
	bl MI_CpuCopy8
	ldr r0, [sp]
	mov r1, r5
	bl FUN_ov15_020c078c
	cmp r6, #0
	beq _020DA448
	ldr r1, [r4, #0x824]
	mov r0, r4
	bl FUN_ov15_020d94c0
	ldrb r0, [r4, #0x456]
	add sp, sp, #4
	cmp r0, #0
	moveq r0, #0
	streq r0, [r4, #0x824]
	ldmfd sp!, {r3, r4, r5, r6, pc}
_020DA448:
	ldr r1, [r4, #0x82c]
	ldr r0, [sp]
	add r0, r1, r0
	str r0, [r4, #0x82c]
	add sp, sp, #4
	ldmfd sp!, {r3, r4, r5, r6, pc}
_020DA460: .word 0x00004805
_020DA464: .word ov15_020E6D54
	arm_func_end FUN_ov15_020da324

	arm_func_start FUN_ov15_020da468
FUN_ov15_020da468: ; 0x020DA468
	stmfd sp!, {r3, r4, r5, lr}
	mov r5, r0
	ldr r4, [r5, #0xc]
	ldr r0, [r4, #0x824]
	cmp r0, #0
	ldrneb r0, [r4, #0x456]
	cmpne r0, #0
	bne _020DA490
	mov r0, r5
	bl FUN_ov15_020da324
_020DA490:
	ldr r1, [r4, #0x824]
	cmp r1, #0
	ldrneb r0, [r4, #0x456]
	cmpne r0, #0
	ldrne r1, [r4, #0x828]
	ldrne r0, [r4, #0x82c]
	subne r0, r1, r0
	ldmnefd sp!, {r3, r4, r5, pc}
	cmp r1, #0
	bne _020DA4D8
	ldrb r0, [r5, #8]
	cmp r0, #4
	bne _020DA4D0
	ldrb r0, [r4, #0x455]
	cmp r0, #9
	bne _020DA4D8
_020DA4D0:
	mvn r0, #0
	ldmfd sp!, {r3, r4, r5, pc}
_020DA4D8:
	mov r0, #0
	ldmfd sp!, {r3, r4, r5, pc}
	arm_func_end FUN_ov15_020da468

	arm_func_start FUN_ov15_020da4e0
FUN_ov15_020da4e0: ; 0x020DA4E0
	stmfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, lr}
	sub sp, sp, #0xc
	ldr r4, [sp, #0x30]
	mov r9, r1
	mov r1, r4
	ldr r1, [r1, #0xc]
	mov r10, r0
	mov r0, #0
	str r4, [sp, #0x30]
	str r1, [sp, #8]
	mov r8, r2
	add r5, r9, r3
	str r0, [sp, #4]
_020DA514:
	ldr r0, _020DA60C ; =0x00000B4F
	ldr r1, _020DA610 ; =0x020E6D54
	mov r6, r0
	cmp r5, r0
	movle r6, r5
	ldr r1, [r1]
	add r0, r6, #0x19
	blx r1
	movs r4, r0
	beq _020DA600
	mov r7, r6
	cmp r9, r6
	movlo r7, r9
	mov r0, r10
	add r1, r4, #5
	mov r2, r7
	sub r11, r6, r7
	bl MI_CpuCopy8
	add r1, r4, #5
	mov r0, r8
	add r1, r1, r7
	mov r2, r11
	add r10, r10, r7
	sub r9, r9, r7
	bl MI_CpuCopy8
	mov r0, #0x17
	strb r0, [r4]
	mov r0, #3
	strb r0, [r4, #1]
	mov r0, #0
	strb r0, [r4, #2]
	mov r0, r6, asr #8
	strb r0, [r4, #3]
	ldr r0, [sp, #8]
	mov r1, r4
	add r8, r8, r11
	strb r6, [r4, #4]
	bl FUN_ov15_020d920c
	ldr r1, [sp, #0x30]
	mov r7, r0
	mov r2, #0
	str r1, [sp]
	mov r0, r4
	mov r1, r7
	mov r3, r2
	bl FUN_ov15_020c0a10
	cmp r0, r7
	ldr r1, _020DA614 ; =0x020E6D84
	mov r0, r4
	ldr r1, [r1]
	movlo r6, #0
	blx r1
	ldr r0, [sp, #4]
	subs r5, r5, r6
	add r0, r0, r6
	str r0, [sp, #4]
	beq _020DA600
	cmp r6, #0
	bne _020DA514
_020DA600:
	ldr r0, [sp, #4]
	add sp, sp, #0xc
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
_020DA60C: .word 0x00000B4F
_020DA610: .word ov15_020E6D54
_020DA614: .word ov15_020E6D84
	arm_func_end FUN_ov15_020da4e0

	arm_func_start FUN_ov15_020da618
FUN_ov15_020da618: ; 0x020DA618
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	sub sp, sp, #0x20
	mov r5, r0
	ldr r4, [r5, #0xc]
	ldrb r0, [r4, #0x455]
	cmp r0, #8
	bne _020DA68C
	add r6, sp, #4
	mov r7, #0
	mov lr, #0x15
	mov r12, #3
	mov r3, #2
	mov r2, #1
	mov r0, r4
	mov r1, r6
	strb lr, [sp, #4]
	strb r12, [sp, #5]
	strb r7, [sp, #6]
	strb r7, [sp, #7]
	strb r3, [sp, #8]
	strb r2, [sp, #9]
	strb r7, [sp, #0xa]
	bl FUN_ov15_020d920c
	mov r1, r0
	mov r0, r6
	mov r2, r7
	mov r3, r7
	str r5, [sp]
	bl FUN_ov15_020c0a10
_020DA68C:
	mov r0, #0
	strb r0, [r4, #0x455]
	add sp, sp, #0x20
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
	arm_func_end FUN_ov15_020da618

	arm_func_start FUN_ov15_020da69c
FUN_ov15_020da69c: ; 0x020DA69C
	stmfd sp!, {r4, lr}
	ldr r4, [r0, #0xc]
	mov r0, #0
	strb r0, [r4, #0x455]
	ldr r0, [r4, #0x824]
	cmp r0, #0
	beq _020DA6C4
	ldr r1, _020DA6D0 ; =0x020E6D84
	ldr r1, [r1]
	blx r1
_020DA6C4:
	mov r0, #0
	str r0, [r4, #0x824]
	ldmfd sp!, {r4, pc}
_020DA6D0: .word ov15_020E6D84
	arm_func_end FUN_ov15_020da69c

	arm_func_start FUN_ov15_020da6d4
FUN_ov15_020da6d4: ; 0x020DA6D4
	stmfd sp!, {r4, lr}
	mov r4, r0
	ldr r0, _020DA6FC ; =_version_UBIQUITOUS_SSL
	bl OSi_ReferSymbol
	ldr r0, _020DA700 ; =0x020939a4
	ldr r0, [r0, #4]
	ldr r0, [r0, #0xa4]
	cmp r0, #0
	strneb r4, [r0, #9]
	ldmfd sp!, {r4, pc}
_020DA6FC: .word _version_UBIQUITOUS_SSL
_020DA700: .word 0x020939a4
	arm_func_end FUN_ov15_020da6d4

	arm_func_start FUN_ov15_020da704
FUN_ov15_020da704: ; 0x020DA704
	stmfd sp!, {r4, r5, r6, lr}
	mov r5, r0
	bl OS_DisableInterrupts
	mov lr, #0
	ldr r6, _020DA7D8 ; =0x020ED684
	ldr r1, _020DA7DC ; =0x000003BD
	mov r3, lr
	mov r2, #0x5c
_020DA724:
	mla r12, lr, r2, r6
	ldrb r4, [r12, #0x5a]
	add lr, lr, #1
	cmp r4, #0
	ldrne r4, [r12, #0x50]
	subne r4, r5, r4
	cmpne r4, r1
	strgtb r3, [r12, #0x5a]
	cmp lr, #4
	blt _020DA724
	bl OS_RestoreInterrupts
	ldr r0, _020DA7E0 ; =0x020939a4
	ldr r4, [r0, #8]
	cmp r4, #0
	ldmeqfd sp!, {r4, r5, r6, pc}
	mov r6, #0
_020DA764:
	ldr r1, [r4, #0xa4]
	cmp r1, #0
	ldrne r0, [r1]
	cmpne r0, #0
	ldrneb r0, [r1, #9]
	cmpne r0, #0
	beq _020DA7C8
	ldrb r0, [r1, #8]
	cmp r0, #4
	bne _020DA7C8
	ldr r0, [r1, #0xc]
	ldrb r0, [r0, #0x455]
	cmp r0, #8
	bhs _020DA7C8
	ldr r0, [r1, #0x10]
	sub r0, r5, r0
	cmp r0, #0xef
	ble _020DA7C8
	ldr r0, [r1, #4]
	cmp r0, #2
	bne _020DA7C8
	strb r6, [r1, #8]
	str r6, [r1, #4]
	ldr r0, [r1]
	bl OS_WakeupThreadDirect
_020DA7C8:
	ldr r4, [r4, #0x68]
	cmp r4, #0
	bne _020DA764
	ldmfd sp!, {r4, r5, r6, pc}
_020DA7D8: .word ov15_020ED684
_020DA7DC: .word 0x000003BD
_020DA7E0: .word 0x020939a4
	arm_func_end FUN_ov15_020da704

	arm_func_start FUN_ov15_020da7e4
FUN_ov15_020da7e4: ; 0x020DA7E4
	ldr r0, _020DA7F8 ; =0x020ED684
	ldr r12, _020DA7FC ; =MI_CpuFill8
	mov r1, #0
	mov r2, #0x170
	bx r12
_020DA7F8: .word ov15_020ED684
_020DA7FC: .word MI_CpuFill8
	arm_func_end FUN_ov15_020da7e4

	arm_func_start FUN_ov15_020da800
FUN_ov15_020da800: ; 0x020DA800
	mov r3, r0
	mov r0, r1
	ldr r12, _020DA814 ; =MI_CpuCopy8
	mov r1, r3
	bx r12
_020DA814: .word MI_CpuCopy8
	arm_func_end FUN_ov15_020da800

	arm_func_start FUN_ov15_020da818
FUN_ov15_020da818: ; 0x020DA818
	mov r3, r0
	mov r0, r1
	ldr r12, _020DA82C ; =MI_CpuCopy8
	mov r1, r3
	bx r12
_020DA82C: .word MI_CpuCopy8
	arm_func_end FUN_ov15_020da818

	arm_func_start FUN_ov15_020da830
FUN_ov15_020da830: ; 0x020DA830
	stmfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, lr}
	sub sp, sp, #0x44
	str r0, [sp]
	ldr r3, [sp]
	add r4, sp, #4
	mov r0, r4
	mov r2, #0x40
	ldmia r3, {r5, r6, r7}
	ldr r8, [r3, #0xc]
	bl FUN_ov15_020da818
	mov lr, #0
	ldr r11, _020DAC28 ; =0x020E5B3C
	mov r9, lr
_020DA864:
	ldr r0, _020DAC2C ; =0x020E5ABC
	eor r2, r7, r8
	ldrb r1, [r0, lr]
	and r2, r6, r2
	add r9, r9, #1
	ldr r1, [r4, r1, lsl #2]
	eor r2, r8, r2
	add r1, r2, r1
	ldr r3, [r11, lr, lsl #2]
	add r2, r11, lr, lsl #2
	add r1, r3, r1
	add r3, r5, r1
	add r0, r0, lr
	mov r1, r3, lsr #0x19
	orr r1, r1, r3, lsl #7
	ldrb r3, [r0, #1]
	add r5, r6, r1
	eor r10, r6, r7
	and r10, r5, r10
	ldr r3, [r4, r3, lsl #2]
	eor r10, r7, r10
	add r3, r10, r3
	ldr r1, [r2, #4]
	ldr r12, [r2, #8]
	add r1, r1, r3
	add r3, r8, r1
	mov r1, r3, lsr #0x14
	orr r1, r1, r3, lsl #12
	add r8, r5, r1
	ldr r1, [r2, #0xc]
	eor r2, r5, r6
	and r2, r8, r2
	eor r3, r6, r2
	ldrb r2, [r0, #2]
	ldrb r10, [r0, #3]
	eor r0, r8, r5
	ldr r2, [r4, r2, lsl #2]
	ldr r10, [r4, r10, lsl #2]
	add r2, r3, r2
	add r2, r12, r2
	add r3, r7, r2
	mov r2, r3, lsr #0xf
	orr r2, r2, r3, lsl #17
	add r7, r8, r2
	and r0, r7, r0
	eor r0, r5, r0
	add r0, r0, r10
	add r0, r1, r0
	add r1, r6, r0
	mov r0, r1, lsr #0xa
	orr r0, r0, r1, lsl #22
	add r6, r7, r0
	add lr, lr, #4
	cmp r9, #4
	blt _020DA864
	ldr r12, _020DAC2C ; =0x020E5ABC
	ldr r9, _020DAC28 ; =0x020E5B3C
	mov r11, #0
	add r4, sp, #4
_020DA950:
	ldrb r0, [r12, lr]
	add r10, r12, lr
	eor r1, r6, r7
	and r2, r8, r1
	ldr r1, [r4, r0, lsl #2]
	eor r2, r7, r2
	ldr r0, [r9, lr, lsl #2]
	add r1, r2, r1
	add r0, r0, r1
	add r1, r5, r0
	mov r0, r1, lsr #0x1b
	orr r0, r0, r1, lsl #5
	add r1, r9, lr, lsl #2
	ldrb r2, [r10, #1]
	add r5, r6, r0
	ldr r0, [r1, #4]
	ldr r2, [r4, r2, lsl #2]
	eor r3, r5, r6
	and r3, r7, r3
	eor r3, r6, r3
	add r2, r3, r2
	add r0, r0, r2
	add r2, r8, r0
	mov r0, r2, lsr #0x17
	orr r0, r0, r2, lsl #9
	add r8, r5, r0
	ldr r3, [r1, #8]
	ldr r0, [r1, #0xc]
	eor r1, r8, r5
	and r1, r6, r1
	eor r2, r5, r1
	ldrb r1, [r10, #2]
	ldrb r10, [r10, #3]
	add lr, lr, #4
	ldr r1, [r4, r1, lsl #2]
	ldr r10, [r4, r10, lsl #2]
	add r1, r2, r1
	add r1, r3, r1
	add r2, r7, r1
	mov r1, r2, lsr #0x12
	orr r1, r1, r2, lsl #14
	add r7, r8, r1
	eor r1, r7, r8
	and r1, r5, r1
	eor r1, r8, r1
	add r1, r1, r10
	add r0, r0, r1
	add r1, r6, r0
	mov r0, r1, lsr #0xc
	orr r0, r0, r1, lsl #20
	add r6, r7, r0
	add r11, r11, #1
	cmp r11, #4
	blt _020DA950
	ldr r12, _020DAC2C ; =0x020E5ABC
	ldr r9, _020DAC28 ; =0x020E5B3C
	mov r11, #0
	add r4, sp, #4
_020DAA38:
	ldrb r0, [r12, lr]
	add r10, r12, lr
	add r1, r9, lr, lsl #2
	eor r2, r6, r7
	eor r2, r8, r2
	ldr r0, [r4, r0, lsl #2]
	ldr r3, [r9, lr, lsl #2]
	add r0, r2, r0
	add r0, r3, r0
	add r2, r5, r0
	mov r0, r2, lsr #0x1c
	orr r0, r0, r2, lsl #4
	ldrb r2, [r10, #1]
	add r5, r6, r0
	ldr r0, [r1, #4]
	ldr r2, [r4, r2, lsl #2]
	eor r3, r5, r6
	eor r3, r7, r3
	add r2, r3, r2
	add r0, r0, r2
	add r2, r8, r0
	mov r0, r2, lsr #0x15
	orr r0, r0, r2, lsl #11
	add r8, r5, r0
	ldr r3, [r1, #8]
	ldr r0, [r1, #0xc]
	eor r1, r8, r5
	eor r2, r6, r1
	ldrb r1, [r10, #2]
	ldrb r10, [r10, #3]
	add lr, lr, #4
	ldr r1, [r4, r1, lsl #2]
	ldr r10, [r4, r10, lsl #2]
	add r1, r2, r1
	add r1, r3, r1
	add r2, r7, r1
	mov r1, r2, lsr #0x10
	orr r1, r1, r2, lsl #16
	add r7, r8, r1
	eor r1, r7, r8
	eor r1, r5, r1
	add r1, r1, r10
	add r0, r0, r1
	add r1, r6, r0
	mov r0, r1, lsr #9
	orr r0, r0, r1, lsl #23
	add r6, r7, r0
	add r11, r11, #1
	cmp r11, #4
	blt _020DAA38
	ldr r12, _020DAC28 ; =0x020E5B3C
	mov r10, #0
	add r9, sp, #4
_020DAB0C:
	ldr r0, _020DAC2C ; =0x020E5ABC
	mvn r2, r8
	ldrb r1, [r0, lr]
	orr r2, r6, r2
	add r0, r0, lr
	ldr r1, [r9, r1, lsl #2]
	eor r2, r7, r2
	add r1, r2, r1
	ldr r3, [r12, lr, lsl #2]
	add r2, r12, lr, lsl #2
	add r1, r3, r1
	add r3, r5, r1
	mov r1, r3, lsr #0x1a
	orr r1, r1, r3, lsl #6
	ldrb r3, [r0, #1]
	add r5, r6, r1
	mvn r4, r7
	orr r4, r5, r4
	ldr r3, [r9, r3, lsl #2]
	eor r4, r6, r4
	add r3, r4, r3
	ldr r1, [r2, #4]
	ldr r4, [r2, #8]
	add r1, r1, r3
	add r3, r8, r1
	mov r1, r3, lsr #0x16
	orr r1, r1, r3, lsl #10
	add r8, r5, r1
	ldr r1, [r2, #0xc]
	mvn r2, r6
	orr r2, r8, r2
	eor r3, r5, r2
	ldrb r2, [r0, #2]
	ldrb r11, [r0, #3]
	mvn r0, r5
	ldr r2, [r9, r2, lsl #2]
	ldr r11, [r9, r11, lsl #2]
	add r2, r3, r2
	add r2, r4, r2
	add r3, r7, r2
	mov r2, r3, lsr #0x11
	orr r2, r2, r3, lsl #15
	add r7, r8, r2
	orr r0, r7, r0
	eor r0, r8, r0
	add r0, r0, r11
	add r0, r1, r0
	add r1, r6, r0
	mov r0, r1, lsr #0xb
	orr r0, r0, r1, lsl #21
	add r10, r10, #1
	add r6, r7, r0
	add lr, lr, #4
	cmp r10, #4
	blt _020DAB0C
	ldr r0, [sp]
	ldr r3, [r0]
	ldr r2, [r0, #4]
	ldr r1, [r0, #8]
	add r4, r3, r5
	add r3, r2, r6
	ldr r0, [r0, #0xc]
	add r2, r1, r7
	add r1, r0, r8
	ldr r0, [sp]
	str r4, [r0]
	str r3, [r0, #4]
	str r2, [r0, #8]
	str r1, [r0, #0xc]
	add sp, sp, #0x44
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
_020DAC28: .word ov15_020E5B3C
_020DAC2C: .word ov15_020E5ABC
	arm_func_end FUN_ov15_020da830

	arm_func_start FUN_ov15_020dac30
FUN_ov15_020dac30: ; 0x020DAC30
	stmfd sp!, {r4, lr}
	mov r1, #0
	mov r2, #0x58
	mov r4, r0
	bl MI_CpuFill8
	ldr r3, _020DAC68 ; =0x67452301
	ldr r2, _020DAC6C ; =0xEFCDAB89
	ldr r1, _020DAC70 ; =0x98BADCFE
	ldr r0, _020DAC74 ; =0x10325476
	str r3, [r4]
	str r2, [r4, #4]
	str r1, [r4, #8]
	str r0, [r4, #0xc]
	ldmfd sp!, {r4, pc}
_020DAC68: .word 0x67452301
_020DAC6C: .word 0xEFCDAB89
_020DAC70: .word 0x98BADCFE
_020DAC74: .word 0x10325476
	arm_func_end FUN_ov15_020dac30

	arm_func_start FUN_ov15_020dac78
FUN_ov15_020dac78: ; 0x020DAC78
	stmfd sp!, {r4, r5, r6, r7, r8, lr}
	mov r8, r0
	ldr r3, [r8, #0x10]
	mov r6, r2
	add r0, r3, r6, lsl #3
	str r0, [r8, #0x10]
	cmp r0, r6, lsl #3
	ldrlo r0, [r8, #0x14]
	mov r2, r3, lsr #3
	addlo r0, r0, #1
	strlo r0, [r8, #0x14]
	ldr r0, [r8, #0x14]
	and r4, r2, #0x3f
	rsb r5, r4, #0x40
	add r0, r0, r6, lsr #29
	mov r7, r1
	str r0, [r8, #0x14]
	cmp r6, r5
	blo _020DAD14
	add r1, r8, #0x18
	mov r0, r7
	mov r2, r5
	add r1, r1, r4
	bl MI_CpuCopy8
	mov r0, r8
	add r1, r8, #0x18
	mov r4, #0
	bl FUN_ov15_020da830
	add r0, r5, #0x3f
	cmp r0, r6
	bhs _020DAD18
_020DACF4:
	mov r0, r8
	add r1, r7, r5
	bl FUN_ov15_020da830
	add r5, r5, #0x40
	add r0, r5, #0x3f
	cmp r0, r6
	blo _020DACF4
	b _020DAD18
_020DAD14:
	mov r5, #0
_020DAD18:
	add r1, r8, #0x18
	add r0, r7, r5
	add r1, r1, r4
	sub r2, r6, r5
	bl MI_CpuCopy8
	ldmfd sp!, {r4, r5, r6, r7, r8, pc}
	arm_func_end FUN_ov15_020dac78

	arm_func_start FUN_ov15_020dad30
FUN_ov15_020dad30: ; 0x020DAD30
	stmfd sp!, {r3, r4, r5, lr}
	mov r5, r0
	mov r4, r1
	mov r0, r4
	add r1, r5, #0x10
	mov r2, #8
	bl FUN_ov15_020da800
	ldr r0, [r5, #0x10]
	ldr r1, _020DAD94 ; =0x020E5AFC
	mov r0, r0, lsr #3
	and r0, r0, #0x3f
	rsb r2, r0, #0x38
	cmp r0, #0x38
	rsbge r2, r0, #0x78
	mov r0, r5
	bl FUN_ov15_020dac78
	mov r0, r5
	mov r1, r4
	mov r2, #8
	bl FUN_ov15_020dac78
	mov r0, r4
	mov r1, r5
	mov r2, #0x10
	bl FUN_ov15_020da800
	ldmfd sp!, {r3, r4, r5, pc}
_020DAD94: .word ov15_020E5AFC
	arm_func_end FUN_ov15_020dad30

	arm_func_start FUN_ov15_020dad98
FUN_ov15_020dad98: ; 0x020DAD98
	add r2, r0, #0xd
	add r12, r0, #2
	and r3, r2, #0xf
	eor r2, r0, #8
	and r12, r12, #0xf
	ldr r3, [r1, r3, lsl #2]
	ldr r2, [r1, r2, lsl #2]
	ldr r12, [r1, r12, lsl #2]
	eor r2, r3, r2
	ldr r3, [r1, r0, lsl #2]
	eor r2, r12, r2
	eor r3, r3, r2
	mov r2, r3, lsr #0x1f
	orr r2, r2, r3, lsl #1
	str r2, [r1, r0, lsl #2]
	mov r0, r2
	bx lr
	arm_func_end FUN_ov15_020dad98

	arm_func_start FUN_ov15_020daddc
FUN_ov15_020daddc: ; 0x020DADDC
	stmfd sp!, {r3, lr}
	movs r2, r2, lsr #2
	mov lr, #0
	ldmeqfd sp!, {r3, pc}
_020DADEC:
	ldr r12, [r1], #4
	add lr, lr, #1
	mov r3, r12, lsr #0x18
	strb r3, [r0]
	mov r3, r12, lsr #0x10
	strb r3, [r0, #1]
	mov r3, r12, lsr #8
	strb r3, [r0, #2]
	strb r12, [r0, #3]
	cmp lr, r2
	add r0, r0, #4
	blo _020DADEC
	ldmfd sp!, {r3, pc}
	arm_func_end FUN_ov15_020daddc

	arm_func_start FUN_ov15_020dae20
FUN_ov15_020dae20: ; 0x020DAE20
	stmfd sp!, {r3, r4, r5, lr}
	mov r5, #0
	cmp r2, #0
	ldmlsfd sp!, {r3, r4, r5, pc}
_020DAE30:
	add r4, r1, r5
	ldrb r3, [r4, #1]
	ldrb r12, [r1, r5]
	ldrb lr, [r4, #2]
	mov r3, r3, lsl #0x10
	orr r3, r3, r12, lsl #24
	ldrb r12, [r4, #3]
	orr r3, r3, lr, lsl #8
	add r5, r5, #4
	orr r3, r12, r3
	cmp r5, r2
	str r3, [r0], #4
	blo _020DAE30
	ldmfd sp!, {r3, r4, r5, pc}
	arm_func_end FUN_ov15_020dae20

	arm_func_start FUN_ov15_020dae68
FUN_ov15_020dae68: ; 0x020DAE68
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, lr}
	sub sp, sp, #0x50
	str r0, [sp]
	ldr r3, [sp]
	add r7, sp, #0x10
	mov r0, r7
	mov r2, #0x40
	ldmia r3, {r5, r6, r10}
	ldr r8, [r3, #0xc]
	ldr r9, [r3, #0x10]
	bl FUN_ov15_020dae20
	mov r0, #0
	ldr r2, _020DB4CC ; =0x5A827999
	mov r1, r0
_020DAEA0:
	eor r3, r10, r8
	mov r4, r5, lsr #0x1b
	and r3, r6, r3
	orr r4, r4, r5, lsl #5
	eor r3, r8, r3
	mov r11, r6, lsr #2
	orr r11, r11, r6, lsl #30
	add r6, r7, r0, lsl #2
	add r3, r4, r3
	ldr r12, [r7, r0, lsl #2]
	ldr r4, [r6, #4]
	add r3, r12, r3
	add r3, r3, r2
	add r9, r9, r3
	mov r3, r9, lsr #0x1b
	orr r3, r3, r9, lsl #5
	eor r12, r11, r10
	and r12, r5, r12
	eor r12, r10, r12
	add r3, r3, r12
	add r3, r4, r3
	add r3, r3, r2
	add r8, r8, r3
	mov r3, r5, lsr #2
	orr r4, r3, r5, lsl #30
	ldr r5, [r6, #8]
	mov r3, r8, lsr #0x1b
	orr r3, r3, r8, lsl #5
	eor r12, r4, r11
	and r12, r9, r12
	eor r12, r11, r12
	add r3, r3, r12
	add r3, r5, r3
	add r3, r3, r2
	add r3, r10, r3
	mov r5, r9, lsr #2
	orr r9, r5, r9, lsl #30
	ldr r12, [r6, #0xc]
	ldr r10, [r6, #0x10]
	mov r5, r3, lsr #0x1b
	orr r5, r5, r3, lsl #5
	eor r6, r9, r4
	and r6, r8, r6
	eor r6, r4, r6
	add r5, r5, r6
	add r5, r12, r5
	add r5, r5, r2
	add r6, r11, r5
	mov r5, r8, lsr #2
	orr r8, r5, r8, lsl #30
	mov r5, r6, lsr #0x1b
	orr r5, r5, r6, lsl #5
	eor r11, r8, r9
	and r11, r3, r11
	eor r11, r9, r11
	add r5, r5, r11
	add r5, r10, r5
	add r5, r5, r2
	add r5, r4, r5
	mov r4, r3, lsr #2
	orr r10, r4, r3, lsl #30
	add r0, r0, #5
	add r1, r1, #1
	cmp r1, #3
	blt _020DAEA0
	eor r0, r10, r8
	mov r1, r5, lsr #0x1b
	and r0, r6, r0
	orr r3, r1, r5, lsl #5
	eor r1, r8, r0
	mov r0, #0
	str r0, [sp, #4]
	add r0, r3, r1
	ldr r11, [sp, #0x4c]
	mov r2, r6, lsr #2
	ldr r4, _020DB4CC ; =0x5A827999
	add r0, r11, r0
	add r3, r0, r4
	ldr r0, [sp, #4]
	mov r1, r7
	orr r6, r2, r6, lsl #30
	add r9, r9, r3
	bl FUN_ov15_020dad98
	eor r1, r6, r10
	mov r2, r9, lsr #0x1b
	and r1, r5, r1
	orr r2, r2, r9, lsl #5
	eor r1, r10, r1
	add r1, r2, r1
	add r1, r1, r0
	mov r0, r5, lsr #2
	orr r5, r0, r5, lsl #30
	add r0, r1, r4
	add r8, r8, r0
	mov r1, r7
	mov r0, #1
	bl FUN_ov15_020dad98
	mov r1, r8, lsr #0x1b
	orr r2, r1, r8, lsl #5
	eor r1, r5, r6
	and r1, r9, r1
	eor r1, r6, r1
	add r1, r2, r1
	add r0, r1, r0
	add r0, r0, r4
	add r10, r10, r0
	mov r0, r9, lsr #2
	orr r9, r0, r9, lsl #30
	mov r0, #2
	mov r1, r7
	bl FUN_ov15_020dad98
	mov r2, r10, lsr #0x1b
	orr r3, r2, r10, lsl #5
	eor r2, r9, r5
	and r2, r8, r2
	eor r2, r5, r2
	add r2, r3, r2
	add r0, r2, r0
	add r0, r0, r4
	add r6, r6, r0
	mov r0, r8, lsr #2
	orr r8, r0, r8, lsl #30
	mov r1, r7
	mov r0, #3
	bl FUN_ov15_020dad98
	mov r1, r6, lsr #0x1b
	orr r2, r1, r6, lsl #5
	eor r1, r8, r9
	and r1, r10, r1
	eor r1, r9, r1
	add r1, r2, r1
	add r0, r1, r0
	add r0, r0, r4
	add r5, r5, r0
	mov r0, r10, lsr #2
	orr r7, r0, r10, lsl #30
	ldr r4, _020DB4D0 ; =0x6ED9EBA1
	mov r10, #4
	add r11, sp, #0x10
_020DB0CC:
	mov r0, r10
	mov r1, r11
	bl FUN_ov15_020dad98
	mov r2, r5, lsr #0x1b
	eor r1, r6, r7
	orr r2, r2, r5, lsl #5
	eor r1, r8, r1
	add r1, r2, r1
	add r0, r1, r0
	add r1, r0, r4
	mov r0, r6, lsr #2
	add r9, r9, r1
	orr r6, r0, r6, lsl #30
	add r0, r10, #1
	mov r1, r11
	bl FUN_ov15_020dad98
	mov r1, r9, lsr #0x1b
	orr r2, r1, r9, lsl #5
	eor r1, r5, r6
	eor r1, r7, r1
	add r1, r2, r1
	add r0, r1, r0
	add r0, r0, r4
	add r8, r8, r0
	mov r0, r5, lsr #2
	orr r5, r0, r5, lsl #30
	add r0, r10, #2
	and r10, r0, #0xf
	mov r0, r10
	mov r1, r11
	bl FUN_ov15_020dad98
	mov r1, r8, lsr #0x1b
	orr r2, r1, r8, lsl #5
	eor r1, r9, r5
	eor r1, r6, r1
	add r1, r2, r1
	add r0, r1, r0
	add r0, r0, r4
	add r7, r7, r0
	mov r0, r9, lsr #2
	orr r9, r0, r9, lsl #30
	add r0, r10, #1
	mov r1, r11
	bl FUN_ov15_020dad98
	mov r1, r7, lsr #0x1b
	orr r2, r1, r7, lsl #5
	eor r1, r8, r9
	eor r1, r5, r1
	add r1, r2, r1
	add r0, r1, r0
	add r0, r0, r4
	add r6, r6, r0
	mov r0, r8, lsr #2
	orr r8, r0, r8, lsl #30
	add r0, r10, #2
	mov r1, r11
	bl FUN_ov15_020dad98
	mov r1, r6, lsr #0x1b
	orr r2, r1, r6, lsl #5
	eor r1, r7, r8
	eor r1, r9, r1
	add r1, r2, r1
	add r0, r1, r0
	add r0, r0, r4
	add r5, r5, r0
	mov r0, r7, lsr #2
	orr r7, r0, r7, lsl #30
	ldr r0, [sp, #4]
	add r10, r10, #3
	add r0, r0, #1
	str r0, [sp, #4]
	cmp r0, #4
	blt _020DB0CC
	mov r0, #0
	ldr r4, _020DB4D4 ; =0x8F1BBCDC
	str r0, [sp, #8]
	add r11, sp, #0x10
_020DB200:
	mov r0, r10
	mov r1, r11
	bl FUN_ov15_020dad98
	orr r2, r7, r8
	mov r1, r5, lsr #0x1b
	and r3, r6, r2
	and r2, r7, r8
	orr r1, r1, r5, lsl #5
	orr r2, r3, r2
	add r1, r1, r2
	add r1, r1, r0
	mov r0, r6, lsr #2
	add r1, r1, r4
	add r9, r9, r1
	orr r6, r0, r6, lsl #30
	add r0, r10, #1
	mov r1, r11
	bl FUN_ov15_020dad98
	orr r2, r6, r7
	mov r1, r9, lsr #0x1b
	and r3, r5, r2
	and r2, r6, r7
	orr r1, r1, r9, lsl #5
	orr r2, r3, r2
	add r1, r1, r2
	add r0, r1, r0
	add r0, r0, r4
	add r8, r8, r0
	mov r0, r5, lsr #2
	orr r5, r0, r5, lsl #30
	add r0, r10, #2
	mov r1, r11
	bl FUN_ov15_020dad98
	orr r2, r5, r6
	mov r1, r8, lsr #0x1b
	and r3, r9, r2
	and r2, r5, r6
	orr r1, r1, r8, lsl #5
	orr r2, r3, r2
	add r1, r1, r2
	add r0, r1, r0
	add r0, r0, r4
	add r7, r7, r0
	mov r0, r9, lsr #2
	orr r9, r0, r9, lsl #30
	add r0, r10, #3
	and r10, r0, #0xf
	mov r0, r10
	mov r1, r11
	bl FUN_ov15_020dad98
	orr r2, r9, r5
	mov r1, r7, lsr #0x1b
	and r3, r8, r2
	and r2, r9, r5
	orr r1, r1, r7, lsl #5
	orr r2, r3, r2
	add r1, r1, r2
	add r0, r1, r0
	add r0, r0, r4
	add r6, r6, r0
	mov r0, r8, lsr #2
	orr r8, r0, r8, lsl #30
	add r0, r10, #1
	mov r1, r11
	bl FUN_ov15_020dad98
	orr r2, r8, r9
	mov r1, r6, lsr #0x1b
	and r3, r7, r2
	and r2, r8, r9
	orr r1, r1, r6, lsl #5
	orr r2, r3, r2
	add r1, r1, r2
	add r0, r1, r0
	add r0, r0, r4
	add r5, r5, r0
	mov r0, r7, lsr #2
	orr r7, r0, r7, lsl #30
	ldr r0, [sp, #8]
	add r10, r10, #2
	add r0, r0, #1
	str r0, [sp, #8]
	cmp r0, #4
	blt _020DB200
	mov r0, #0
	ldr r4, _020DB4D8 ; =0xCA62C1D6
	str r0, [sp, #0xc]
	add r11, sp, #0x10
_020DB35C:
	mov r0, r10
	mov r1, r11
	bl FUN_ov15_020dad98
	mov r2, r5, lsr #0x1b
	eor r1, r6, r7
	orr r2, r2, r5, lsl #5
	eor r1, r8, r1
	add r1, r2, r1
	add r0, r1, r0
	add r1, r0, r4
	mov r0, r6, lsr #2
	add r9, r9, r1
	orr r6, r0, r6, lsl #30
	add r0, r10, #1
	mov r1, r11
	bl FUN_ov15_020dad98
	mov r1, r9, lsr #0x1b
	orr r2, r1, r9, lsl #5
	eor r1, r5, r6
	eor r1, r7, r1
	add r1, r2, r1
	add r0, r1, r0
	add r0, r0, r4
	add r8, r8, r0
	mov r0, r5, lsr #2
	orr r5, r0, r5, lsl #30
	add r0, r10, #2
	mov r1, r11
	bl FUN_ov15_020dad98
	mov r1, r8, lsr #0x1b
	orr r2, r1, r8, lsl #5
	eor r1, r9, r5
	eor r1, r6, r1
	add r1, r2, r1
	add r0, r1, r0
	add r0, r0, r4
	add r7, r7, r0
	mov r0, r9, lsr #2
	orr r9, r0, r9, lsl #30
	add r0, r10, #3
	mov r1, r11
	bl FUN_ov15_020dad98
	mov r1, r7, lsr #0x1b
	orr r2, r1, r7, lsl #5
	eor r1, r8, r9
	eor r1, r5, r1
	add r1, r2, r1
	add r0, r1, r0
	add r0, r0, r4
	add r6, r6, r0
	mov r0, r8, lsr #2
	orr r8, r0, r8, lsl #30
	add r0, r10, #4
	and r10, r0, #0xf
	mov r0, r10
	mov r1, r11
	bl FUN_ov15_020dad98
	mov r1, r6, lsr #0x1b
	orr r2, r1, r6, lsl #5
	eor r1, r7, r8
	eor r1, r9, r1
	add r1, r2, r1
	add r0, r1, r0
	add r0, r0, r4
	add r5, r5, r0
	mov r0, r7, lsr #2
	orr r7, r0, r7, lsl #30
	ldr r0, [sp, #0xc]
	add r10, r10, #1
	add r0, r0, #1
	str r0, [sp, #0xc]
	cmp r0, #4
	blt _020DB35C
	ldr r0, [sp]
	ldr r2, [sp]
	ldr r1, [r0]
	ldr r0, [r0, #4]
	ldr r4, [r2, #8]
	ldr r3, [r2, #0xc]
	ldr r2, [r2, #0x10]
	add r1, r1, r5
	add r5, r0, r6
	ldr r0, [sp]
	add r4, r4, r7
	stmia r0, {r1, r5}
	add r3, r3, r8
	add r2, r2, r9
	str r4, [r0, #8]
	str r3, [r0, #0xc]
	str r2, [r0, #0x10]
	add sp, sp, #0x50
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_020DB4CC: .word 0x5A827999
_020DB4D0: .word 0x6ED9EBA1
_020DB4D4: .word 0x8F1BBCDC
_020DB4D8: .word 0xCA62C1D6
	arm_func_end FUN_ov15_020dae68

	arm_func_start FUN_ov15_020db4dc
FUN_ov15_020db4dc: ; 0x020DB4DC
	stmfd sp!, {r4, lr}
	mov r1, #0
	mov r2, #0x5c
	mov r4, r0
	bl MI_CpuFill8
	ldr r12, _020DB51C ; =0x67452301
	ldr r3, _020DB520 ; =0xEFCDAB89
	ldr r2, _020DB524 ; =0x98BADCFE
	ldr r1, _020DB528 ; =0x10325476
	ldr r0, _020DB52C ; =0xC3D2E1F0
	str r12, [r4]
	str r3, [r4, #4]
	str r2, [r4, #8]
	str r1, [r4, #0xc]
	str r0, [r4, #0x10]
	ldmfd sp!, {r4, pc}
_020DB51C: .word 0x67452301
_020DB520: .word 0xEFCDAB89
_020DB524: .word 0x98BADCFE
_020DB528: .word 0x10325476
_020DB52C: .word 0xC3D2E1F0
	arm_func_end FUN_ov15_020db4dc

	arm_func_start FUN_ov15_020db530
FUN_ov15_020db530: ; 0x020DB530
	stmfd sp!, {r4, r5, r6, r7, r8, lr}
	mov r8, r0
	ldr r3, [r8, #0x18]
	mov r6, r2
	add r0, r3, r6, lsl #3
	str r0, [r8, #0x18]
	cmp r0, r6, lsl #3
	ldrlo r0, [r8, #0x14]
	mov r2, r3, lsr #3
	addlo r0, r0, #1
	strlo r0, [r8, #0x14]
	ldr r0, [r8, #0x14]
	and r4, r2, #0x3f
	rsb r5, r4, #0x40
	add r0, r0, r6, lsr #29
	mov r7, r1
	str r0, [r8, #0x14]
	cmp r6, r5
	blo _020DB5CC
	add r1, r8, #0x1c
	mov r0, r7
	mov r2, r5
	add r1, r1, r4
	bl MI_CpuCopy8
	mov r0, r8
	add r1, r8, #0x1c
	mov r4, #0
	bl FUN_ov15_020dae68
	add r0, r5, #0x3f
	cmp r0, r6
	bhs _020DB5D0
_020DB5AC:
	mov r0, r8
	add r1, r7, r5
	bl FUN_ov15_020dae68
	add r5, r5, #0x40
	add r0, r5, #0x3f
	cmp r0, r6
	blo _020DB5AC
	b _020DB5D0
_020DB5CC:
	mov r5, #0
_020DB5D0:
	add r1, r8, #0x1c
	add r0, r7, r5
	add r1, r1, r4
	sub r2, r6, r5
	bl MI_CpuCopy8
	ldmfd sp!, {r4, r5, r6, r7, r8, pc}
	arm_func_end FUN_ov15_020db530

	arm_func_start FUN_ov15_020db5e8
FUN_ov15_020db5e8: ; 0x020DB5E8
	stmfd sp!, {r3, r4, r5, lr}
	mov r5, r0
	mov r4, r1
	mov r0, r4
	add r1, r5, #0x14
	mov r2, #8
	bl FUN_ov15_020daddc
	ldr r0, [r5, #0x18]
	ldr r1, _020DB64C ; =0x020E5C3C
	mov r0, r0, lsr #3
	and r0, r0, #0x3f
	rsb r2, r0, #0x38
	cmp r0, #0x38
	rsbge r2, r0, #0x78
	mov r0, r5
	bl FUN_ov15_020db530
	mov r0, r5
	mov r1, r4
	mov r2, #8
	bl FUN_ov15_020db530
	mov r0, r4
	mov r1, r5
	mov r2, #0x14
	bl FUN_ov15_020daddc
	ldmfd sp!, {r3, r4, r5, pc}
_020DB64C: .word ov15_020E5C3C
	arm_func_end FUN_ov15_020db5e8

	arm_func_start FUN_ov15_020db650
FUN_ov15_020db650: ; 0x020DB650
	stmfd sp!, {r3, r4, r5, lr}
	mov r4, r1
	ldr r1, _020DB67C ; =0x020E5C3D
	mov r5, r0
	mov r2, #0x2c
	bl FUN_ov15_020db530
	mov r0, r4
	mov r1, r5
	mov r2, #0x14
	bl FUN_ov15_020daddc
	ldmfd sp!, {r3, r4, r5, pc}
_020DB67C: .word ov15_020E5C3D
	arm_func_end FUN_ov15_020db650

	arm_func_start FUN_ov15_020db680
FUN_ov15_020db680: ; 0x020DB680
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	mov r3, #0
	strb r3, [r0]
	strb r3, [r0, #1]
	add r4, r0, #2
_020DB694:
	strb r3, [r4, r3]
	add r3, r3, #1
	cmp r3, #0x100
	blt _020DB694
	mov r6, #0
	mov r5, r6
	mov r7, r6
	mov r0, r6
_020DB6B4:
	ldrb lr, [r4, r7]
	ldrb r12, [r1, r6]
	add r3, r6, #1
	and r6, r3, #0xff
	add r3, lr, r12
	and r3, r3, #0xff
	add r3, r5, r3
	and r5, r3, #0xff
	ldrb r3, [r4, r5]
	cmp r6, r2
	movge r6, r0
	strb r3, [r4, r7]
	add r7, r7, #1
	strb lr, [r4, r5]
	cmp r7, #0x100
	blt _020DB6B4
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
	arm_func_end FUN_ov15_020db680

	arm_func_start FUN_ov15_020db6f8
FUN_ov15_020db6f8: ; 0x020DB6F8
	stmfd sp!, {r4, r5, r6, lr}
	cmp r2, #0
	add r4, r0, #2
	ldrb r12, [r0]
	ldrb lr, [r0, #1]
	mov r3, #0
	ble _020DB758
_020DB714:
	add r5, r12, #1
	and r12, r5, #0xff
	ldrb r6, [r4, r12]
	add r5, lr, r6
	and lr, r5, #0xff
	ldrb r5, [r4, lr]
	strb r5, [r4, r12]
	add r5, r6, r5
	strb r6, [r4, lr]
	and r5, r5, #0xff
	ldrb r6, [r1, r3]
	ldrb r5, [r4, r5]
	eor r5, r6, r5
	strb r5, [r1, r3]
	add r3, r3, #1
	cmp r3, r2
	blt _020DB714
_020DB758:
	strb r12, [r0]
	strb lr, [r0, #1]
	ldmfd sp!, {r4, r5, r6, pc}
	arm_func_end FUN_ov15_020db6f8

	arm_func_start FUN_ov15_020db764
FUN_ov15_020db764: ; 0x020DB764
	b _020DB76C
_020DB768:
	sub r1, r1, #1
	arm_func_end FUN_ov15_020db764
_020DB76C:
	cmp r1, #0
	beq _020DB784
	add r2, r0, r1, lsl #1
	ldrh r2, [r2, #-2]
	cmp r2, #0
	beq _020DB768
_020DB784:
	mov r0, r1
	bx lr

	arm_func_start FUN_ov15_020db78c
FUN_ov15_020db78c: ; 0x020DB78C
	stmfd sp!, {r3, lr}
	sub r2, r1, #1
	mov r2, r2, lsl #1
	ldrh r2, [r0, r2]
	tst r2, #0x8000
	mvnne r0, #0
	ldmnefd sp!, {r3, pc}
	bl FUN_ov15_020db764
	cmp r0, #0
	movne r0, #1
	moveq r0, #0
	ldmfd sp!, {r3, pc}
	arm_func_end FUN_ov15_020db78c

	arm_func_start FUN_ov15_020db7bc
FUN_ov15_020db7bc: ; 0x020DB7BC
	stmfd sp!, {r4, r5, r6, r7, r8, lr}
	mov r7, r1
	mov r5, r3
	mov r8, r0
	mov r6, r2
	mov r0, r7
	mov r1, r5
	bl FUN_ov15_020db764
	mov r4, r0
	mov r0, r6
	mov r1, r5
	bl FUN_ov15_020db764
	cmp r4, r0
	movlt r4, r0
	cmp r4, r5
	addne r4, r4, #1
	mov r12, #0
	mov r3, r12
	cmp r4, #0
	ble _020DB834
_020DB80C:
	mov r2, r3, lsl #1
	ldrh r1, [r7, r2]
	ldrh r0, [r6, r2]
	add r3, r3, #1
	cmp r3, r4
	add r0, r1, r0
	add r0, r12, r0
	strh r0, [r8, r2]
	mov r12, r0, lsr #0x10
	blt _020DB80C
_020DB834:
	cmp r8, r7
	cmpne r8, r6
	ldmeqfd sp!, {r4, r5, r6, r7, r8, pc}
	sub r1, r5, r3
	add r0, r8, r3, lsl #1
	mov r2, r1, lsl #1
	mov r1, #0
	bl MI_CpuFill8
	ldmfd sp!, {r4, r5, r6, r7, r8, pc}
	arm_func_end FUN_ov15_020db7bc

	arm_func_start FUN_ov15_020db858
FUN_ov15_020db858: ; 0x020DB858
	stmfd sp!, {r4, lr}
	cmp r3, #0
	mov r4, #0
	ble _020DB88C
_020DB868:
	mov lr, r4, lsl #1
	ldrh r12, [r1, lr]
	add r2, r2, r12
	strh r2, [r0, lr]
	movs r2, r2, lsr #0x10
	beq _020DB88C
	add r4, r4, #1
	cmp r4, r3
	blt _020DB868
_020DB88C:
	cmp r0, r1
	addne r4, r4, #1
	cmpne r4, r3
	ldmgefd sp!, {r4, pc}
_020DB89C:
	mov r12, r4, lsl #1
	ldrh r2, [r1, r12]
	add r4, r4, #1
	cmp r4, r3
	strh r2, [r0, r12]
	blt _020DB89C
	ldmfd sp!, {r4, pc}
	arm_func_end FUN_ov15_020db858

	arm_func_start FUN_ov15_020db8b8
FUN_ov15_020db8b8: ; 0x020DB8B8
	stmfd sp!, {r3, lr}
	mov r3, r1
	cmp r3, #0
	mov r12, #0
	ble _020DB8E8
_020DB8CC:
	mov r2, r12, lsl #1
	ldrh r1, [r0, r2]
	add r12, r12, #1
	cmp r12, r3
	mvn r1, r1
	strh r1, [r0, r2]
	blt _020DB8CC
_020DB8E8:
	mov r1, r0
	mov r2, #1
	bl FUN_ov15_020db858
	ldmfd sp!, {r3, pc}
	arm_func_end FUN_ov15_020db8b8

	arm_func_start FUN_ov15_020db8f8
FUN_ov15_020db8f8: ; 0x020DB8F8
	stmfd sp!, {r4, r5, r6, r7, r8, lr}
	mov r7, r1
	mov r5, r3
	mov r8, r0
	mov r6, r2
	mov r0, r7
	mov r1, r5
	bl FUN_ov15_020db764
	mov r4, r0
	mov r0, r6
	mov r1, r5
	bl FUN_ov15_020db764
	cmp r4, r0
	movlt r4, r0
	mov r12, #0
	cmp r4, r5
	addne r4, r4, #1
	mov r3, r12
	b _020DB964
_020DB944:
	mov r2, r3, lsl #1
	ldrh r1, [r7, r2]
	ldrh r0, [r6, r2]
	add r3, r3, #1
	sub r0, r1, r0
	add r0, r12, r0
	strh r0, [r8, r2]
	mov r12, r0, asr #0x10
_020DB964:
	cmp r3, r4
	blt _020DB944
	cmp r3, r5
	bge _020DB97C
	cmp r12, #0
	bne _020DB944
_020DB97C:
	cmp r8, r7
	cmpne r8, r6
	ldmeqfd sp!, {r4, r5, r6, r7, r8, pc}
	sub r1, r5, r3
	add r0, r8, r3, lsl #1
	mov r2, r1, lsl #1
	mov r1, #0
	bl MI_CpuFill8
	ldmfd sp!, {r4, r5, r6, r7, r8, pc}
	arm_func_end FUN_ov15_020db8f8

	arm_func_start FUN_ov15_020db9a0
FUN_ov15_020db9a0: ; 0x020DB9A0
	stmfd sp!, {r4, lr}
	cmp r3, #0
	mov r4, #0
	ble _020DB9D8
_020DB9B0:
	mov lr, r4, lsl #1
	ldrh r12, [r1, lr]
	sub r12, r12, r2
	mov r2, r12, lsr #0x10
	strh r12, [r0, lr]
	ands r2, r2, #1
	beq _020DB9D8
	add r4, r4, #1
	cmp r4, r3
	blt _020DB9B0
_020DB9D8:
	cmp r0, r1
	addne r4, r4, #1
	cmpne r4, r3
	ldmgefd sp!, {r4, pc}
_020DB9E8:
	mov r12, r4, lsl #1
	ldrh r2, [r1, r12]
	add r4, r4, #1
	cmp r4, r3
	strh r2, [r0, r12]
	blt _020DB9E8
	ldmfd sp!, {r4, pc}
	arm_func_end FUN_ov15_020db9a0

	arm_func_start FUN_ov15_020dba04
FUN_ov15_020dba04: ; 0x020DBA04
	subs r12, r2, #1
	bmi _020DBA34
_020DBA0C:
	mov r2, r12, lsl #1
	ldrh r3, [r1, r2]
	ldrh r2, [r0, r2]
	cmp r2, r3
	movhi r0, #1
	bxhi lr
	mvnlo r0, #0
	bxlo lr
	subs r12, r12, #1
	bpl _020DBA0C
_020DBA34:
	mov r0, #0
	bx lr
	arm_func_end FUN_ov15_020dba04

	arm_func_start FUN_ov15_020dba3c
FUN_ov15_020dba3c: ; 0x020DBA3C
	stmfd sp!, {r3, lr}
	b _020DBA5C
_020DBA44:
	mov lr, r2, lsl #1
	ldrh r12, [r0, lr]
	add r2, r2, #1
	add r1, r1, r12
	strh r1, [r0, lr]
	mov r1, r1, lsr #0x10
_020DBA5C:
	cmp r1, #0
	ldmeqfd sp!, {r3, pc}
	cmp r2, r3
	blt _020DBA44
	ldmfd sp!, {r3, pc}
	arm_func_end FUN_ov15_020dba3c

	arm_func_start FUN_ov15_020dba70
FUN_ov15_020dba70: ; 0x020DBA70
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, lr}
	sub sp, sp, #8
	mov r8, r3
	mov r9, r2
	mov r5, #0
	mov r10, r1
	mov r1, r5
	mov r2, r8, lsl #1
	str r0, [sp]
	bl MI_CpuFill8
	mov r0, r10
	mov r1, r8
	bl FUN_ov15_020db764
	mov r11, r0
	mov r0, r9
	mov r1, r8
	bl FUN_ov15_020db764
	str r0, [sp, #4]
	cmp r0, #0
	addle sp, sp, #8
	ldmlefd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_020DBAC4:
	mov r6, #0
	sub r7, r8, r5
	mov r4, r5, lsl #1
	b _020DBAF8
_020DBAD4:
	mov r0, r6, lsl #1
	ldrh r3, [r10, r0]
	ldrh r1, [r9, r4]
	ldr r0, [sp]
	add r2, r5, r6
	mul r1, r3, r1
	mov r3, r8
	bl FUN_ov15_020dba3c
	add r6, r6, #1
_020DBAF8:
	cmp r6, r11
	bge _020DBB08
	cmp r6, r7
	blt _020DBAD4
_020DBB08:
	ldr r0, [sp, #4]
	add r5, r5, #1
	cmp r5, r0
	blt _020DBAC4
	add sp, sp, #8
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
	arm_func_end FUN_ov15_020dba70

	arm_func_start FUN_ov15_020dbb20
FUN_ov15_020dbb20: ; 0x020DBB20
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	mov r6, r1
	mov r4, r3
	mov r7, r0
	mov r0, r6
	mov r1, r4
	mov r5, r2
	bl FUN_ov15_020db764
	mov r3, #0
	mov r12, r3
	cmp r0, #0
	ble _020DBB70
_020DBB50:
	mov r2, r12, lsl #1
	ldrh r1, [r6, r2]
	add r12, r12, #1
	cmp r12, r0
	mla r1, r5, r1, r3
	strh r1, [r7, r2]
	mov r3, r1, lsr #0x10
	blt _020DBB50
_020DBB70:
	cmp r12, r4
	movlt r0, r12, lsl #1
	addlt r12, r12, #1
	sub r1, r4, r12
	strlth r3, [r7, r0]
	mov r2, r1, lsl #1
	add r0, r7, r12, lsl #1
	mov r1, #0
	bl MI_CpuFill8
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
	arm_func_end FUN_ov15_020dbb20

	arm_func_start FUN_ov15_020dbb98
FUN_ov15_020dbb98: ; 0x020DBB98
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, lr}
	mov r9, r1
	mov r8, r2
	mov r10, r0
	mov r0, r9
	mov r1, r8
	bl FUN_ov15_020db764
	mov r11, r0
	cmp r8, r11, lsl #1
	mov r0, r11, lsl #1
	ble _020DBBD8
	sub r1, r8, r0
	add r0, r10, r0, lsl #1
	mov r2, r1, lsl #1
	mov r1, #0
	bl MI_CpuFill8
_020DBBD8:
	cmp r11, #0
	mov r4, #0
	ble _020DBC24
	sub r2, r8, #1
_020DBBE8:
	cmp r8, r4, lsl #1
	mov r1, r4, lsl #1
	ble _020DBC24
	ldrh r3, [r9, r1]
	mov r0, r1, lsl #1
	cmp r1, r2
	mul r1, r3, r3
	strh r1, [r10, r0]
	beq _020DBC24
	add r4, r4, #1
	mov r1, r1, lsr #0x10
	add r0, r10, r0
	strh r1, [r0, #2]
	cmp r4, r11
	blt _020DBBE8
_020DBC24:
	mov r5, #0
	cmp r11, #0
	ldmlefd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_020DBC30:
	mov r0, r5, lsl #1
	add r6, r5, #1
	str r0, [sp]
	b _020DBC9C
_020DBC40:
	mov r0, r6, lsl #1
	ldrh r1, [r9, r0]
	ldr r0, [sp]
	ldrh r0, [r9, r0]
	mul r7, r1, r0
	ldr r0, _020DBCC0 ; =0x7FFF8000
	cmp r7, r0
	mov r0, r10
	bhi _020DBC74
	mov r2, r4
	mov r3, r8
	mov r1, r7, lsl #1
	b _020DBC94
_020DBC74:
	mov r1, r7
	mov r2, r4
	mov r3, r8
	bl FUN_ov15_020dba3c
	mov r1, r7
	mov r2, r4
	mov r0, r10
	mov r3, r8
_020DBC94:
	bl FUN_ov15_020dba3c
	add r6, r6, #1
_020DBC9C:
	cmp r6, r11
	bge _020DBCB0
	add r4, r5, r6
	cmp r4, r8
	blt _020DBC40
_020DBCB0:
	add r5, r5, #1
	cmp r5, r11
	blt _020DBC30
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_020DBCC0: .word 0x7FFF8000
	arm_func_end FUN_ov15_020dbb98

	arm_func_start FUN_ov15_020dbcc4
FUN_ov15_020dbcc4: ; 0x020DBCC4
	ldrh r1, [r0]
	mov r0, #0
	bx lr
	arm_func_end FUN_ov15_020dbcc4

	arm_func_start FUN_ov15_020dbcd0
FUN_ov15_020dbcd0: ; 0x020DBCD0
	ldrh r1, [r0]
	ldrh r0, [r0, #-2]
	mov r0, r0, lsl #0x10
	bx lr
	arm_func_end FUN_ov15_020dbcd0

	arm_func_start FUN_ov15_020dbce0
FUN_ov15_020dbce0: ; 0x020DBCE0
	ldrh r1, [r0]
	ldrh r2, [r0, #-2]
	ldrh r3, [r0, #-4]
	orr r0, r3, r2, lsl #16
	bx lr
	arm_func_end FUN_ov15_020dbce0

	arm_func_start FUN_ov15_020dbcf4
FUN_ov15_020dbcf4: ; 0x020DBCF4
	ldrh r2, [r0]
	ldrh r3, [r0, #-2]
	orr r1, r3, r2, lsl #16
	ldrh r2, [r0, #-4]
	ldrh r3, [r0, #-6]
	orr r0, r3, r2, lsl #16
	bx lr
	arm_func_end FUN_ov15_020dbcf4

	arm_func_start FUN_ov15_020dbd10
FUN_ov15_020dbd10: ; 0x020DBD10
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, lr}
	sub sp, sp, #0x20
	ldr r9, [sp, #0x48]
	ldr r8, [sp, #0x4c]
	str r1, [sp, #4]
	add r6, r8, r9, lsl #1
	str r0, [sp]
	mov r10, r2
	mov r0, r6
	mov r2, r9, lsl #2
	mov r1, #0
	str r3, [sp, #8]
	add r7, r6, r9, lsl #1
	bl MI_CpuFill8
	ldr r0, [sp, #4]
	mov r1, r9
	bl FUN_ov15_020db764
	mov r11, r0
	mov r0, r10
	mov r1, r9
	bl FUN_ov15_020db764
	mov r5, r0
	cmp r11, #0
	cmpgt r5, #0
	ble _020DBE94
	sub r0, r9, r11
	add r0, r5, r0
	sub r4, r0, #1
	cmp r4, r9
	blt _020DBD9C
	ldr r0, [sp, #4]
	mov r1, r7
	mov r2, r9, lsl #1
	bl MI_CpuCopy8
	b _020DBE94
_020DBD9C:
	ldr r0, [sp, #4]
	add r1, r6, r4, lsl #1
	mov r2, r11, lsl #1
	bl MI_CpuCopy8
	cmp r5, #2
	ble _020DBDC8
	add r0, r10, r5, lsl #1
	sub r0, r0, #2
	mov r11, r5, lsl #1
	bl FUN_ov15_020dbce0
	b _020DBDE8
_020DBDC8:
	add r0, r10, r5, lsl #1
	cmp r5, #1
	sub r0, r0, #2
	mov r11, r5, lsl #1
	ble _020DBDE4
	bl FUN_ov15_020dbcd0
	b _020DBDE8
_020DBDE4:
	bl FUN_ov15_020dbcc4
_020DBDE8:
	str r0, [sp, #0x18]
	str r1, [sp, #0x10]
	cmp r4, r9
	bge _020DBE94
	mov r0, r9, lsl #1
	sub r0, r0, #1
	mov r0, r0, lsl #1
	str r0, [sp, #0x14]
_020DBE08:
	ldr r2, [sp, #0x14]
	mov r1, r6
	add r0, r6, #2
	bl FUN_020218f4
	add r0, r7, r11
	bl FUN_ov15_020dbcf4
	ldr r2, [sp, #0x18]
	ldr r3, [sp, #0x10]
	bl FUN_0201f954
	mov r5, r0
	ldr r0, _020DBED8 ; =0x0000FFFF
	cmp r5, r0
	movhi r5, r0
_020DBE3C:
	mov r2, r5, lsl #0x10
	mov r0, r8
	mov r1, r10
	mov r2, r2, lsr #0x10
	mov r3, r9
	bl FUN_ov15_020dbb20
	mov r0, r7
	mov r1, r8
	mov r2, r9
	bl FUN_ov15_020dba04
	cmp r0, #0
	sublt r5, r5, #1
	blt _020DBE3C
	mov r0, r7
	mov r1, r7
	mov r2, r8
	mov r3, r9
	bl FUN_ov15_020db8f8
	strh r5, [r6]
	add r4, r4, #1
	cmp r4, r9
	blt _020DBE08
_020DBE94:
	ldr r0, [sp]
	cmp r0, #0
	beq _020DBEB0
	ldr r1, [sp]
	mov r0, r6
	mov r2, r9, lsl #1
	bl MI_CpuCopy8
_020DBEB0:
	ldr r0, [sp, #8]
	cmp r0, #0
	addeq sp, sp, #0x20
	ldmeqfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
	ldr r1, [sp, #8]
	mov r0, r7
	mov r2, r9, lsl #1
	bl MI_CpuCopy8
	add sp, sp, #0x20
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_020DBED8: .word 0x0000FFFF
	arm_func_end FUN_ov15_020dbd10

	arm_func_start FUN_ov15_020dbedc
FUN_ov15_020dbedc: ; 0x020DBEDC
	stmfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, lr}
	sub sp, sp, #0xc
	ldr r4, _020DC068 ; =0x020E6D54
	mov r8, r3
	ldr r3, [r4]
	mov r10, r0
	mov r0, r8, lsl #3
	ldr r7, [sp, #0x30]
	str r1, [sp, #8]
	mov r9, r2
	blx r3
	movs r4, r0
	addeq sp, sp, #0xc
	ldmeqfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
	sub r1, r8, #1
	add r0, r10, #2
	mov r2, r1, lsl #1
	mov r1, #0
	add r5, r4, r8, lsl #1
	bl MI_CpuFill8
	mov r2, #1
	mov r0, r9
	mov r1, r8
	strh r2, [r10]
	bl FUN_ov15_020db764
	sub r0, r8, r0
	mov r6, r0, lsl #4
	cmp r6, r8, lsl #4
	bhs _020DBF90
	mov r2, #0x8000
_020DBF54:
	sub r0, r8, r6, asr #4
	add r0, r9, r0, lsl #1
	ldrh r0, [r0, #-2]
	and r1, r6, #0xf
	tst r0, r2, lsr r1
	beq _020DBF84
	ldr r0, [sp, #8]
	mov r1, r10
	mov r2, r8, lsl #1
	bl MI_CpuCopy8
	add r6, r6, #1
	b _020DBF90
_020DBF84:
	add r6, r6, #1
	cmp r6, r8, lsl #4
	blo _020DBF54
_020DBF90:
	cmp r6, r8, lsl #4
	bhs _020DC050
	mov r11, r8, lsl #1
_020DBF9C:
	mov r0, r4
	mov r1, r10
	mov r2, r8
	bl FUN_ov15_020dbb98
	mov r0, r4
	mov r1, r10
	mov r2, r11
	bl MI_CpuCopy8
	cmp r7, #0
	beq _020DBFE0
	str r8, [sp]
	mov r0, #0
	mov r1, r10
	mov r2, r7
	mov r3, r10
	str r5, [sp, #4]
	bl FUN_ov15_020dbd10
_020DBFE0:
	sub r0, r8, r6, asr #4
	add r0, r9, r0, lsl #1
	ldrh r1, [r0, #-2]
	and r2, r6, #0xf
	mov r0, #0x8000
	tst r1, r0, lsr r2
	beq _020DC044
	ldr r2, [sp, #8]
	mov r0, r4
	mov r1, r10
	mov r3, r8
	bl FUN_ov15_020dba70
	mov r0, r4
	mov r1, r10
	mov r2, r11
	bl MI_CpuCopy8
	cmp r7, #0
	beq _020DC044
	str r8, [sp]
	mov r0, #0
	mov r1, r10
	mov r2, r7
	mov r3, r10
	str r5, [sp, #4]
	bl FUN_ov15_020dbd10
_020DC044:
	add r6, r6, #1
	cmp r6, r8, lsl #4
	blo _020DBF9C
_020DC050:
	ldr r1, _020DC06C ; =0x020E6D84
	mov r0, r4
	ldr r1, [r1]
	blx r1
	add sp, sp, #0xc
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
_020DC068: .word ov15_020E6D54
_020DC06C: .word ov15_020E6D84
	arm_func_end FUN_ov15_020dbedc

	arm_func_start FUN_ov15_020dc070
FUN_ov15_020dc070: ; 0x020DC070
	stmfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, lr}
	sub sp, sp, #0x14
	ldr r9, [sp, #0x38]
	mov r10, r3
	add r11, r9, r10, lsl #1
	add r4, r11, r10, lsl #1
	add r5, r4, r10, lsl #1
	add r6, r5, r10, lsl #1
	add r7, r6, r10, lsl #1
	str r0, [sp, #8]
	mov r0, r1
	add r1, r7, r10, lsl #1
	str r1, [sp, #0x10]
	mov r8, r10, lsl #1
	str r2, [sp, #0xc]
	mov r1, r9
	mov r2, r8
	bl MI_CpuCopy8
	ldr r0, [sp, #0xc]
	mov r1, r4
	mov r2, r8
	bl MI_CpuCopy8
	mov r0, #1
	strh r0, [r4, r8]
	mov r0, r9
	mov r1, r10
	bl FUN_ov15_020db78c
	cmp r0, #0
	ble _020DC180
_020DC0E4:
	ldr r3, [sp, #0x10]
	str r10, [sp]
	str r3, [sp, #4]
	mov r0, r11
	mov r1, r4
	mov r2, r9
	mov r3, r7
	bl FUN_ov15_020dbd10
	mov r0, r9
	mov r1, r4
	mov r2, r8
	bl MI_CpuCopy8
	mov r0, r7
	mov r1, r9
	mov r2, r8
	bl MI_CpuCopy8
	mov r0, r7
	mov r1, r11
	mov r2, r5
	mov r3, r10
	bl FUN_ov15_020dba70
	mov r0, r7
	mov r1, r6
	mov r2, r7
	mov r3, r10
	bl FUN_ov15_020db8f8
	mov r0, r5
	mov r1, r6
	mov r2, r8
	bl MI_CpuCopy8
	mov r0, r7
	mov r1, r5
	mov r2, r8
	bl MI_CpuCopy8
	mov r0, r9
	mov r1, r10
	bl FUN_ov15_020db78c
	cmp r0, #0
	bgt _020DC0E4
_020DC180:
	ldr r2, [sp, #0xc]
	mov r0, r6
	mov r1, r6
	mov r3, r10
	bl FUN_ov15_020db7bc
	ldr r2, [sp, #0xc]
	ldr r3, [sp, #8]
	ldr r4, [sp, #0x10]
	str r10, [sp]
	mov r1, r6
	mov r0, #0
	str r4, [sp, #4]
	bl FUN_ov15_020dbd10
	add sp, sp, #0x14
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
	arm_func_end FUN_ov15_020dc070

	arm_func_start FUN_ov15_020dc1bc
FUN_ov15_020dc1bc: ; 0x020DC1BC
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, lr}
	mov r6, r3
	mov r4, r6, lsl #1
	mov r8, r2
	mov r2, r4
	mov r7, r0
	mov r9, r1
	ldr r5, [sp, #0x20]
	bl MI_CpuCopy8
	cmp r8, #1
	bne _020DC1FC
	mov r0, r7
	mov r1, r9
	mov r2, r6
	bl FUN_ov15_020dbb98
	b _020DC218
_020DC1FC:
	cmp r8, #0
	beq _020DC218
	mov r0, r7
	mov r1, r9
	mov r2, r8
	mov r3, r6
	bl FUN_ov15_020dba70
_020DC218:
	ldr r0, [sp, #0x2c]
	ldr r2, [sp, #0x28]
	mov r1, r7
	mov r3, r5
	bl FUN_ov15_020dba70
	sub r1, r6, r5
	ldr r0, [sp, #0x2c]
	mov r9, r1, lsl #1
	mov r8, #0
	mov r1, r8
	mov r2, r9
	add r0, r0, r5, lsl #1
	bl MI_CpuFill8
	ldr r0, [sp, #0x30]
	ldr r1, [sp, #0x2c]
	ldr r2, [sp, #0x24]
	mov r3, r6
	bl FUN_ov15_020dba70
	mov r0, r7
	mov r1, r7
	ldr r2, [sp, #0x30]
	mov r3, r6
	bl FUN_ov15_020db7bc
	mov r2, r9
	mov r0, r7
	add r1, r7, r5, lsl #1
	bl FUN_020218f4
	add r0, r7, r6, lsl #1
	sub r0, r0, r5, lsl #1
	mov r2, r5, lsl #1
	mov r1, r8
	bl MI_CpuFill8
	mov r0, r7
	ldr r1, [sp, #0x24]
	mov r2, r6
	bl FUN_ov15_020dba04
	cmp r0, #0
	beq _020DC2BC
	cmp r0, #1
	beq _020DC2D0
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
_020DC2BC:
	mov r0, r7
	mov r1, r8
	mov r2, r4
	bl MI_CpuFill8
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
_020DC2D0:
	ldr r2, [sp, #0x24]
	mov r0, r7
	mov r1, r7
	mov r3, r6
	bl FUN_ov15_020db8f8
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
	arm_func_end FUN_ov15_020dc1bc

	arm_func_start FUN_ov15_020dc2e8
FUN_ov15_020dc2e8: ; 0x020DC2E8
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, lr}
	sub sp, sp, #0x30
	mov r10, r3
	mov r3, #0x16
	mul r4, r10, r3
	ldr r3, _020DC4FC ; =0x020E6D54
	mov r11, r0
	ldr r3, [r3]
	mov r0, r4
	ldr r9, [sp, #0x58]
	str r1, [sp, #0x14]
	str r2, [sp, #0x18]
	blx r3
	str r0, [sp, #0x2c]
	cmp r0, #0
	addeq sp, sp, #0x30
	ldmeqfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
	mov r5, #0
	mov r1, r5
	mov r2, r4
	bl MI_CpuFill8
	ldr r0, [sp, #0x2c]
	mov r1, r10
	add r6, r0, r10, lsl #1
	add r0, r6, r10, lsl #1
	add r7, r0, r10, lsl #1
	add r8, r7, r10, lsl #1
	str r0, [sp, #0x28]
	add r0, r8, r10, lsl #1
	str r0, [sp, #0x24]
	add r0, r0, r10, lsl #1
	str r0, [sp, #0x20]
	mov r0, r9
	bl FUN_ov15_020db764
	mov r4, r0
	ldr r0, [sp, #0x2c]
	mov r2, r4, lsl #1
	mov r1, #1
	strh r1, [r0, r2]
	ldr r0, [sp, #0x28]
	ldr r1, [sp, #0x2c]
	str r0, [sp]
	mov r0, r6
	mov r2, r9
	mov r3, r10
	bl FUN_ov15_020dc070
	ldr r1, [sp, #0x2c]
	mov r0, r7
	mov r2, r6
	mov r3, r10
	bl FUN_ov15_020dba70
	mov r2, #1
	mov r0, r6
	mov r1, r7
	mov r3, r10
	bl FUN_ov15_020db9a0
	ldr r0, [sp, #0x20]
	str r10, [sp]
	str r0, [sp, #4]
	mov r0, r6
	mov r1, r6
	mov r2, r9
	mov r3, r5
	bl FUN_ov15_020dbd10
	ldr r1, [sp, #0x14]
	ldr r0, [sp, #0x28]
	ldr r2, [sp, #0x2c]
	mov r3, r10
	bl FUN_ov15_020dba70
	ldr r1, [sp, #0x28]
	ldr r0, [sp, #0x20]
	str r10, [sp]
	str r0, [sp, #4]
	mov r0, r5
	mov r2, r9
	mov r3, r1
	bl FUN_ov15_020dbd10
	ldr r0, [sp, #0x20]
	str r10, [sp]
	str r0, [sp, #4]
	ldr r1, [sp, #0x2c]
	mov r0, r5
	mov r2, r9
	mov r3, r11
	bl FUN_ov15_020dbd10
	movs r0, r4, lsl #4
	str r0, [sp, #0x1c]
	beq _020DC4C0
_020DC448:
	stmia sp, {r4, r9}
	str r6, [sp, #8]
	str r7, [sp, #0xc]
	ldr r1, [sp, #0x24]
	mov r0, r11
	mov r2, #1
	mov r3, r10
	str r8, [sp, #0x10]
	bl FUN_ov15_020dc1bc
	ldr r1, [sp, #0x18]
	sub r2, r4, r5, asr #4
	add r1, r1, r2, lsl #1
	ldrh r2, [r1, #-2]
	and r0, r5, #0xf
	mov r1, #0x8000
	tst r2, r1, lsr r0
	beq _020DC4B0
	stmia sp, {r4, r9}
	str r6, [sp, #8]
	str r7, [sp, #0xc]
	ldr r1, [sp, #0x24]
	ldr r2, [sp, #0x28]
	mov r0, r11
	mov r3, r10
	str r8, [sp, #0x10]
	bl FUN_ov15_020dc1bc
_020DC4B0:
	ldr r0, [sp, #0x1c]
	add r5, r5, #1
	cmp r5, r0
	blo _020DC448
_020DC4C0:
	stmia sp, {r4, r9}
	str r6, [sp, #8]
	str r7, [sp, #0xc]
	ldr r1, [sp, #0x24]
	mov r0, r11
	mov r3, r10
	mov r2, #0
	str r8, [sp, #0x10]
	bl FUN_ov15_020dc1bc
	ldr r1, _020DC500 ; =0x020E6D84
	ldr r0, [sp, #0x2c]
	ldr r1, [r1]
	blx r1
	add sp, sp, #0x30
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_020DC4FC: .word ov15_020E6D54
_020DC500: .word ov15_020E6D84
	arm_func_end FUN_ov15_020dc2e8

	arm_func_start FUN_ov15_020dc504
FUN_ov15_020dc504: ; 0x020DC504
	stmfd sp!, {r4, r5, r6, lr}
	mov r6, r1
	mov r5, r2
	mov r2, r3, lsl #1
	mov r1, #0
	mov r4, r0
	bl MI_CpuFill8
	sub r0, r5, #1
	cmp r5, #1
	add r6, r6, r0
	ble _020DC550
_020DC530:
	ldrb r1, [r6]
	ldrb r0, [r6, #-1]
	sub r5, r5, #2
	cmp r5, #1
	add r0, r1, r0, lsl #8
	strh r0, [r4], #2
	sub r6, r6, #2
	bgt _020DC530
_020DC550:
	cmp r5, #0
	ldrgtb r0, [r6]
	strgth r0, [r4]
	ldmfd sp!, {r4, r5, r6, pc}
	arm_func_end FUN_ov15_020dc504

	arm_func_start FUN_ov15_020dc560
FUN_ov15_020dc560: ; 0x020DC560
	sub r3, r2, #1
	cmp r2, #1
	add r0, r0, r3
	ble _020DC594
_020DC570:
	ldrh r3, [r1]
	sub r12, r0, #1
	sub r2, r2, #2
	strb r3, [r0], #-2
	ldrh r3, [r1], #2
	cmp r2, #1
	mov r3, r3, asr #8
	strb r3, [r12]
	bgt _020DC570
_020DC594:
	cmp r2, #0
	ldrgth r1, [r1]
	strgtb r1, [r0]
	bx lr
	arm_func_end FUN_ov15_020dc560

	arm_func_start FUN_ov15_020dc5a4
FUN_ov15_020dc5a4: ; 0x020DC5A4
	ldr r12, _020DC5B0 ; =FUN_ov15_020dc5b4
	mov r2, #1
	bx r12
_020DC5B0: .word FUN_ov15_020dc5b4
	arm_func_end FUN_ov15_020dc5a4

	arm_func_start FUN_ov15_020dc5b4
FUN_ov15_020dc5b4: ; 0x020DC5B4
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, lr}
	mov r8, r0
	mov r7, r1
	mov r6, r2
	mov r4, #1
	bl OS_DisableInterrupts
	ldr r9, _020DC71C ; =0x020ED7F4
	mov r1, #0
	ldr r2, [r9, #4]
	mov r5, r0
	str r1, [sp]
	cmp r2, #0
	beq _020DC5F4
	bl OS_RestoreInterrupts
	mov r0, r4
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
_020DC5F4:
	cmp r8, #0
	bne _020DC608
	bl OS_RestoreInterrupts
	mov r0, r4
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
_020DC608:
	tst r8, #0x1f
	beq _020DC61C
	bl OS_RestoreInterrupts
	mov r0, r4
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
_020DC61C:
	mov r0, r8
	mov r2, r7
	bl MI_CpuFill8
	cmp r6, #0
	ldreqb r6, [r9]
	cmpeq r6, #0
	bne _020DC640
	bl FUN_ov15_020dd27c
	mov r6, r0
_020DC640:
	add r0, sp, #0
	mov r1, r6
	bl FUN_ov15_020dc778
	cmp r0, #0
	bne _020DC664
	mov r0, r5
	bl OS_RestoreInterrupts
	mov r0, #1
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
_020DC664:
	ldr r0, [sp]
	cmp r7, r0
	bge _020DC680
	mov r0, r5
	bl OS_RestoreInterrupts
	mov r0, #6
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
_020DC680:
	ldr r1, _020DC71C ; =0x020ED7F4
	add r0, r8, #0x1000
	str r8, [r1, #4]
	strb r4, [r0, #0x2de]
	ldr r0, [r1, #4]
	mov r2, #0
	add r0, r0, #0x1200
	strh r2, [r0, #0xda]
	ldr r0, [r1, #4]
	add r0, r0, #0x1200
	strh r2, [r0, #0xd8]
	ldr r0, [r1, #4]
	add r0, r0, #0x1000
	strb r2, [r0, #0x2dc]
	ldr r0, [r1, #4]
	add r0, r0, #0x1000
	strb r2, [r0, #0x2dd]
	ldr r0, [r1, #4]
	add r0, r0, #0x1000
	strb r6, [r0, #0x2df]
	bl FUN_ov15_020dd00c
	bl FUN_ov15_020dd8c4
	bl FUN_02003398
	cmp r0, #0
	bne _020DC6E8
	bl FUN_02003328
_020DC6E8:
	bl FUN_020035f4
	cmp r0, #0
	bne _020DC6F8
	bl FUN_020035b8
_020DC6F8:
	ldr r0, _020DC71C ; =0x020ED7F4
	ldr r0, [r0, #4]
	add r0, r0, #0x294
	add r0, r0, #0x1000
	bl OS_CreateAlarm
	mov r0, r5
	bl OS_RestoreInterrupts
	mov r0, #0
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
_020DC71C: .word ov15_020ED7F4
	arm_func_end FUN_ov15_020dc5b4

	arm_func_start FUN_ov15_020dc720
FUN_ov15_020dc720: ; 0x020DC720
	stmfd sp!, {r4, lr}
	bl OS_DisableInterrupts
	ldr r2, _020DC774 ; =0x020ED7F4
	ldr r1, [r2, #4]
	cmp r1, #0
	bne _020DC744
	bl OS_RestoreInterrupts
	mov r0, #1
	ldmfd sp!, {r4, pc}
_020DC744:
	add r1, r1, #0x1000
	ldrb r1, [r1, #0x2de]
	cmp r1, #1
	beq _020DC760
	bl OS_RestoreInterrupts
	mov r0, #1
	ldmfd sp!, {r4, pc}
_020DC760:
	mov r4, #0
	str r4, [r2, #4]
	bl OS_RestoreInterrupts
	mov r0, r4
	ldmfd sp!, {r4, pc}
_020DC774: .word ov15_020ED7F4
	arm_func_end FUN_ov15_020dc720

	arm_func_start FUN_ov15_020dc778
FUN_ov15_020dc778: ; 0x020DC778
	stmfd sp!, {r4, lr}
	mov r4, r0
	cmp r1, #0
	bne _020DC790
	bl FUN_ov15_020dd27c
	mov r1, r0
_020DC790:
	cmp r1, #1
	moveq r0, #0x2300
	streq r0, [r4]
	beq _020DC7A8
	mov r0, #0
	ldmfd sp!, {r4, pc}
_020DC7A8:
	mov r0, #1
	ldmfd sp!, {r4, pc}
	arm_func_end FUN_ov15_020dc778

	arm_func_start FUN_ov15_020dc7b0
FUN_ov15_020dc7b0: ; 0x020DC7B0
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	mov r7, r0
	mov r6, r1
	bl OS_DisableInterrupts
	ldr r5, _020DC878 ; =0x020ED7F4
	mov r4, r0
	ldr r1, [r5, #4]
	cmp r1, #0
	bne _020DC7E0
	bl OS_RestoreInterrupts
	mov r0, #1
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_020DC7E0:
	add r1, r1, #0x1000
	ldrb r1, [r1, #0x2de]
	cmp r1, #1
	beq _020DC804
	cmp r1, #2
	beq _020DC814
	cmp r1, #3
	beq _020DC820
	b _020DC82C
_020DC804:
	mov r0, r7
	mov r1, r6
	bl FUN_ov15_020dceec
	b _020DC838
_020DC814:
	bl OS_RestoreInterrupts
	mov r0, #2
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_020DC820:
	bl OS_RestoreInterrupts
	mov r0, #0
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_020DC82C:
	bl OS_RestoreInterrupts
	mov r0, #1
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_020DC838:
	bl FUN_02012bc0
	cmp r0, #0
	moveq r0, #5
	ldmeqfd sp!, {r3, r4, r5, r6, r7, pc}
	ldr r0, [r5, #4]
	add r0, r0, #0x1000
	ldrb r0, [r0, #0x2df]
	cmp r0, #1
	movne r5, #7
	bne _020DC868
	bl FUN_ov15_020ddd50
	mov r5, r0
_020DC868:
	mov r0, r4
	bl OS_RestoreInterrupts
	mov r0, r5
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_020DC878: .word ov15_020ED7F4
	arm_func_end FUN_ov15_020dc7b0

	arm_func_start FUN_ov15_020dc87c
FUN_ov15_020dc87c: ; 0x020DC87C
	stmfd sp!, {r3, r4, r5, lr}
	bl OS_DisableInterrupts
	ldr r1, _020DC910 ; =0x020ED7F4
	mov r4, r0
	ldr r1, [r1, #4]
	cmp r1, #0
	bne _020DC8A4
	bl OS_RestoreInterrupts
	mov r0, #1
	ldmfd sp!, {r3, r4, r5, pc}
_020DC8A4:
	add r1, r1, #0x1000
	ldrb r2, [r1, #0x2de]
	cmp r2, #1
	beq _020DC8D0
	cmp r2, #3
	beq _020DC8E8
	cmp r2, #4
	bne _020DC8DC
	bl OS_RestoreInterrupts
	mov r0, #2
	ldmfd sp!, {r3, r4, r5, pc}
_020DC8D0:
	bl OS_RestoreInterrupts
	mov r0, #0
	ldmfd sp!, {r3, r4, r5, pc}
_020DC8DC:
	bl OS_RestoreInterrupts
	mov r0, #1
	ldmfd sp!, {r3, r4, r5, pc}
_020DC8E8:
	ldrb r0, [r1, #0x2df]
	cmp r0, #1
	movne r5, #7
	bne _020DC900
	bl FUN_ov15_020dde88
	mov r5, r0
_020DC900:
	mov r0, r4
	bl OS_RestoreInterrupts
	mov r0, r5
	ldmfd sp!, {r3, r4, r5, pc}
_020DC910: .word ov15_020ED7F4
	arm_func_end FUN_ov15_020dc87c

	arm_func_start FUN_ov15_020dc914
FUN_ov15_020dc914: ; 0x020DC914
	stmfd sp!, {r3, lr}
	cmp r0, #0
	cmpne r1, #0
	bne _020DC92C
	bl FUN_ov15_020dc9a4
	ldmfd sp!, {r3, pc}
_020DC92C:
	bl FUN_ov15_020dc934
	ldmfd sp!, {r3, pc}
	arm_func_end FUN_ov15_020dc914

	arm_func_start FUN_ov15_020dc934
FUN_ov15_020dc934: ; 0x020DC934
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	mov r7, r0
	mov r6, r1
	mov r5, r2
	bl OS_DisableInterrupts
	ldr r1, _020DC9A0 ; =0x020ED7F4
	mov r4, r0
	ldr r1, [r1, #4]
	cmp r1, #0
	bne _020DC968
	bl OS_RestoreInterrupts
	mov r0, #1
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_020DC968:
	add r0, r1, #0x1000
	ldrb r0, [r0, #0x2df]
	cmp r0, #1
	movne r5, #7
	bne _020DC990
	mov r0, r7
	mov r1, r6
	mov r2, r5
	bl FUN_ov15_020ddef4
	mov r5, r0
_020DC990:
	mov r0, r4
	bl OS_RestoreInterrupts
	mov r0, r5
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_020DC9A0: .word ov15_020ED7F4
	arm_func_end FUN_ov15_020dc934

	arm_func_start FUN_ov15_020dc9a4
FUN_ov15_020dc9a4: ; 0x020DC9A4
	stmfd sp!, {r3, r4, r5, lr}
	bl OS_DisableInterrupts
	ldr r5, _020DCA40 ; =0x020ED7F4
	mov r4, r0
	ldr r1, [r5, #4]
	cmp r1, #0
	bne _020DC9CC
	bl OS_RestoreInterrupts
	mov r0, #1
	ldmfd sp!, {r3, r4, r5, pc}
_020DC9CC:
	add r1, r1, #0x1000
	ldrb r1, [r1, #0x2de]
	cmp r1, #3
	beq _020DCA18
	cmp r1, #6
	beq _020DC9F0
	cmp r1, #7
	beq _020DCA0C
	b _020DCA24
_020DC9F0:
	mov r0, #7
	bl FUN_ov15_020dd160
	ldr r0, [r5, #4]
	mov r1, #4
	add r0, r0, #0x1200
	strh r1, [r0, #0xda]
	b _020DCA30
_020DCA0C:
	bl OS_RestoreInterrupts
	mov r0, #2
	ldmfd sp!, {r3, r4, r5, pc}
_020DCA18:
	bl OS_RestoreInterrupts
	mov r0, #0
	ldmfd sp!, {r3, r4, r5, pc}
_020DCA24:
	bl OS_RestoreInterrupts
	mov r0, #1
	ldmfd sp!, {r3, r4, r5, pc}
_020DCA30:
	mov r0, r4
	bl OS_RestoreInterrupts
	mov r0, #3
	ldmfd sp!, {r3, r4, r5, pc}
_020DCA40: .word ov15_020ED7F4
	arm_func_end FUN_ov15_020dc9a4

	arm_func_start FUN_ov15_020dca44
FUN_ov15_020dca44: ; 0x020DCA44
	stmfd sp!, {r4, r5, r6, r7, r8, lr}
	mov r8, r0
	mov r7, r1
	mov r6, r2
	bl OS_DisableInterrupts
	mov r4, r0
	bl FUN_ov15_020dcedc
	movs r5, r0
	bne _020DCA78
	mov r0, r4
	bl OS_RestoreInterrupts
	mov r0, #1
	ldmfd sp!, {r4, r5, r6, r7, r8, pc}
_020DCA78:
	add r0, r5, #0x1000
	ldrb r0, [r0, #0x2de]
	cmp r0, #3
	beq _020DCA9C
	cmp r0, #8
	beq _020DCB98
	cmp r0, #9
	beq _020DCBA8
	b _020DCBB8
_020DCA9C:
	cmp r8, #0
	bne _020DCAB4
	mov r0, r4
	bl OS_RestoreInterrupts
	mov r0, #1
	ldmfd sp!, {r4, r5, r6, r7, r8, pc}
_020DCAB4:
	ldrh r0, [r8, #0x3c]
	cmp r0, #0
	beq _020DCAD0
	mov r0, r4
	bl OS_RestoreInterrupts
	mov r0, #1
	ldmfd sp!, {r4, r5, r6, r7, r8, pc}
_020DCAD0:
	cmp r7, #0
	beq _020DCB68
	ldrb r1, [r7]
	cmp r1, #3
	bhi _020DCAF0
	ldrb r0, [r7, #1]
	cmp r0, #4
	bhs _020DCB00
_020DCAF0:
	add r3, r5, #0x1000
	ldrb r0, [r3, #0x291]
	cmp r0, #0x40
	bls _020DCB10
_020DCB00:
	mov r0, r4
	bl OS_RestoreInterrupts
	mov r0, #1
	ldmfd sp!, {r4, r5, r6, r7, r8, pc}
_020DCB10:
	strb r1, [r3, #0x290]
	ldrb r0, [r7]
	cmp r0, #0
	bne _020DCB30
	add r0, r5, #0x1240
	mov r1, #0
	mov r2, #0x50
	b _020DCB74
_020DCB30:
	cmp r0, #3
	bhi _020DCB54
	ldrb r12, [r7, #1]
	add r0, r7, #2
	add r1, r5, #0x1240
	mov r2, #0x50
	strb r12, [r3, #0x291]
_020DCB4C:
	bl MI_CpuCopy8
	b _020DCB78
_020DCB54:
	ldrb r2, [r7, #1]
	add r0, r7, #2
	add r1, r5, #0x1240
	strb r2, [r3, #0x291]
	b _020DCB4C
_020DCB68:
	add r0, r5, #0x1240
	mov r1, #0
	mov r2, #0x54
_020DCB74:
	bl MI_CpuFill8
_020DCB78:
	add r1, r5, #0x2e0
	mov r0, r8
	add r1, r1, #0x1000
	mov r2, #0xc0
	bl MI_CpuCopy8
	mov r0, r6
	bl FUN_ov15_020dce04
	b _020DCBC8
_020DCB98:
	mov r0, r4
	bl OS_RestoreInterrupts
	mov r0, #2
	ldmfd sp!, {r4, r5, r6, r7, r8, pc}
_020DCBA8:
	mov r0, r4
	bl OS_RestoreInterrupts
	mov r0, #0
	ldmfd sp!, {r4, r5, r6, r7, r8, pc}
_020DCBB8:
	mov r0, r4
	bl OS_RestoreInterrupts
	mov r0, #1
	ldmfd sp!, {r4, r5, r6, r7, r8, pc}
_020DCBC8:
	add r0, r5, #0x1000
	ldrb r0, [r0, #0x2df]
	cmp r0, #1
	movne r5, #7
	bne _020DCBE4
	bl FUN_ov15_020ddffc
	mov r5, r0
_020DCBE4:
	mov r0, r4
	bl OS_RestoreInterrupts
	mov r0, r5
	ldmfd sp!, {r4, r5, r6, r7, r8, pc}
	arm_func_end FUN_ov15_020dca44

	arm_func_start FUN_ov15_020dcbf4
FUN_ov15_020dcbf4: ; 0x020DCBF4
	stmfd sp!, {r4, r5, r6, lr}
	bl OS_DisableInterrupts
	ldr r6, _020DCCB4 ; =0x020ED7F4
	mov r4, r0
	ldr r1, [r6, #4]
	mov r5, #0
	cmp r1, #0
	bne _020DCC20
	bl OS_RestoreInterrupts
	mov r0, #1
	ldmfd sp!, {r4, r5, r6, pc}
_020DCC20:
	add r1, r1, #0x1000
	ldrb r2, [r1, #0x2de]
	cmp r2, #3
	beq _020DCC4C
	cmp r2, #9
	beq _020DCC64
	cmp r2, #0xa
	bne _020DCC58
	bl OS_RestoreInterrupts
	mov r0, #2
	ldmfd sp!, {r4, r5, r6, pc}
_020DCC4C:
	bl OS_RestoreInterrupts
	mov r0, r5
	ldmfd sp!, {r4, r5, r6, pc}
_020DCC58:
	bl OS_RestoreInterrupts
	mov r0, #1
	ldmfd sp!, {r4, r5, r6, pc}
_020DCC64:
	ldrb r0, [r1, #0x2dd]
	cmp r0, #1
	bne _020DCC8C
	mov r0, #0xa
	bl FUN_ov15_020dd160
	ldr r0, [r6, #4]
	mov r1, #6
	add r0, r0, #0x1200
	strh r1, [r0, #0xda]
	b _020DCCA4
_020DCC8C:
	ldrb r0, [r1, #0x2df]
	cmp r0, #1
	movne r5, #7
	bne _020DCCA4
	bl FUN_ov15_020de0a8
	mov r5, r0
_020DCCA4:
	mov r0, r4
	bl OS_RestoreInterrupts
	mov r0, r5
	ldmfd sp!, {r4, r5, r6, pc}
_020DCCB4: .word ov15_020ED7F4
	arm_func_end FUN_ov15_020dcbf4

	arm_func_start FUN_ov15_020dccb8
FUN_ov15_020dccb8: ; 0x020DCCB8
	stmfd sp!, {r4, r5, r6, lr}
	bl OS_DisableInterrupts
	ldr r6, _020DCDD0 ; =0x020ED7F4
	mov r4, r0
	ldr r1, [r6, #4]
	mov r5, #0
	cmp r1, #0
	bne _020DCCE4
	bl OS_RestoreInterrupts
	mov r0, #1
	ldmfd sp!, {r4, r5, r6, pc}
_020DCCE4:
	add r1, r1, #0x1000
	ldrb r2, [r1, #0x2de]
	cmp r2, #0xd
	addls pc, pc, r2, lsl #2
	b _020DCD70
_020DCCF8: ; jump table
	b _020DCD70 ; case 0
	b _020DCD3C ; case 1
	b _020DCD70 ; case 2
	b _020DCD80 ; case 3
	b _020DCD70 ; case 4
	b _020DCD70 ; case 5
	b _020DCD48 ; case 6
	b _020DCD70 ; case 7
	b _020DCD70 ; case 8
	b _020DCD80 ; case 9
	b _020DCD70 ; case 10
	b _020DCD70 ; case 11
	b _020DCD80 ; case 12
	b _020DCD30 ; case 13
_020DCD30:
	bl OS_RestoreInterrupts
	mov r0, #2
	ldmfd sp!, {r4, r5, r6, pc}
_020DCD3C:
	bl OS_RestoreInterrupts
	mov r0, r5
	ldmfd sp!, {r4, r5, r6, pc}
_020DCD48:
	mov r0, #0xd
	bl FUN_ov15_020dd160
	ldr r1, [r6, #4]
	mov r2, #9
	add r1, r1, #0x1200
	mov r0, r4
	strh r2, [r1, #0xda]
	bl OS_RestoreInterrupts
	mov r0, #3
	ldmfd sp!, {r4, r5, r6, pc}
_020DCD70:
	mov r0, r4
	bl OS_RestoreInterrupts
	mov r0, #1
	ldmfd sp!, {r4, r5, r6, pc}
_020DCD80:
	ldrb r0, [r1, #0x2dd]
	cmp r0, #1
	bne _020DCDA8
	mov r0, #0xd
	bl FUN_ov15_020dd160
	ldr r0, [r6, #4]
	mov r1, #9
	add r0, r0, #0x1200
	strh r1, [r0, #0xda]
	b _020DCDC0
_020DCDA8:
	ldrb r0, [r1, #0x2df]
	cmp r0, #1
	movne r5, #7
	bne _020DCDC0
	bl FUN_ov15_020de114
	mov r5, r0
_020DCDC0:
	mov r0, r4
	bl OS_RestoreInterrupts
	mov r0, r5
	ldmfd sp!, {r4, r5, r6, pc}
_020DCDD0: .word ov15_020ED7F4
	arm_func_end FUN_ov15_020dccb8

	arm_func_start FUN_ov15_020dcdd4
FUN_ov15_020dcdd4: ; 0x020DCDD4
	stmfd sp!, {r4, lr}
	bl OS_DisableInterrupts
	ldr r1, _020DCE00 ; =0x020ED7F4
	mov r4, #0
	ldr r1, [r1, #4]
	cmp r1, #0
	addne r1, r1, #0x1000
	ldrneb r4, [r1, #0x2de]
	bl OS_RestoreInterrupts
	mov r0, r4
	ldmfd sp!, {r4, pc}
_020DCE00: .word ov15_020ED7F4
	arm_func_end FUN_ov15_020dcdd4

	arm_func_start FUN_ov15_020dce04
FUN_ov15_020dce04: ; 0x020DCE04
	stmfd sp!, {r4, r5, r6, lr}
	mov r5, r0
	bl OS_DisableInterrupts
	ldr r1, _020DCE98 ; =0x020ED7F4
	mov r6, #0
	ldr r3, [r1, #4]
	add r1, r3, #0x1000
	cmp r3, #0
	ldr r4, [r1, #0x2d4]
	bne _020DCE38
	bl OS_RestoreInterrupts
	mov r0, r6
	ldmfd sp!, {r4, r5, r6, pc}
_020DCE38:
	tst r5, #0x8000
	beq _020DCE58
	ldr r1, _020DCE9C ; =0x00003FFE
	orr r6, r6, #0xfe
	tst r5, r1
	orreq r5, r5, #0x82
	orr r6, r6, #0x3f00
	orreq r5, r5, #0xa000
_020DCE58:
	tst r5, #0x20000
	orrne r6, r6, #0x10000
	tst r5, #0x80000
	orrne r6, r6, #0x40000
	tst r5, #0x200000
	orrne r6, r6, #0x100000
	tst r5, #0x800000
	orrne r6, r6, #0x400000
	mvn r1, r6
	and r1, r4, r1
	orr r2, r5, r1
	add r1, r3, #0x1000
	str r2, [r1, #0x2d4]
	bl OS_RestoreInterrupts
	mov r0, r4
	ldmfd sp!, {r4, r5, r6, pc}
_020DCE98: .word ov15_020ED7F4
_020DCE9C: .word 0x00003FFE
	arm_func_end FUN_ov15_020dce04

	arm_func_start FUN_ov15_020dcea0
FUN_ov15_020dcea0: ; 0x020DCEA0
	stmfd sp!, {r3, lr}
	bl FUN_ov15_020dcedc
	add r0, r0, #0x1000
	ldrb r1, [r0, #0x2de]
	cmp r1, #3
	blo _020DCED4
	cmp r1, #0xa
	bhi _020DCED4
	ldrb r0, [r0, #0x2df]
	cmp r0, #1
	bne _020DCED4
	bl FUN_ov15_020de2b4
	ldmfd sp!, {r3, pc}
_020DCED4:
	mov r0, #0
	ldmfd sp!, {r3, pc}
	arm_func_end FUN_ov15_020dcea0

	arm_func_start FUN_ov15_020dcedc
FUN_ov15_020dcedc: ; 0x020DCEDC
	ldr r0, _020DCEE8 ; =0x020ED7F4
	ldr r0, [r0, #4]
	bx lr
_020DCEE8: .word ov15_020ED7F4
	arm_func_end FUN_ov15_020dcedc

	arm_func_start FUN_ov15_020dceec
FUN_ov15_020dceec: ; 0x020DCEEC
	stmfd sp!, {r3, r4, r5, lr}
	movs r5, r0
	mov r4, r1
	bne _020DCF3C
	ldr r1, _020DD008 ; =0x020ED7F4
	mov r3, #3
	ldr r0, [r1, #4]
	mov r2, #0
	add r0, r0, #0x1000
	str r3, [r0, #0x2c0]
	ldr r0, [r1, #4]
	add r0, r0, #0x1000
	str r2, [r0, #0x2c4]
	ldr r0, [r1, #4]
	add r0, r0, #0x1000
	str r2, [r0, #0x2c8]
	ldr r0, [r1, #4]
	add r0, r0, #0x1000
	str r2, [r0, #0x2cc]
	b _020DCFF4
_020DCF3C:
	ldr r1, _020DD008 ; =0x020ED7F4
	ldr r2, [r5]
	ldr r0, [r1, #4]
	and r2, r2, #3
	add r0, r0, #0x1000
	str r2, [r0, #0x2c0]
	ldr r3, [r5, #4]
	ldr r0, [r5, #8]
	and r2, r3, #3
	rsb r2, r2, #4
	and r2, r2, #3
	add r2, r2, #0xc
	cmp r2, r0
	ldr r0, [r1, #4]
	bls _020DCF94
	mov r2, #0
	add r0, r0, #0x1000
	str r2, [r0, #0x2c4]
	ldr r0, [r1, #4]
	add r0, r0, #0x1000
	str r2, [r0, #0x2c8]
	b _020DCFE0
_020DCF94:
	add r2, r3, #3
	bic r2, r2, #3
	add r0, r0, #0x1000
	str r2, [r0, #0x2c4]
	ldr r2, [r5, #4]
	ldr r0, [r1, #4]
	and r2, r2, #3
	rsb r2, r2, #4
	ldr r3, [r5, #8]
	and r2, r2, #3
	sub r2, r3, r2
	add r0, r0, #0x1000
	str r2, [r0, #0x2c8]
	ldr r0, [r1, #4]
	mov r1, #0
	add r2, r0, #0x1000
	ldr r0, [r2, #0x2c4]
	ldr r2, [r2, #0x2c8]
	bl MI_CpuFill8
_020DCFE0:
	ldr r0, _020DD008 ; =0x020ED7F4
	ldr r1, [r5, #0xc]
	ldr r0, [r0, #4]
	add r0, r0, #0x1000
	str r1, [r0, #0x2cc]
_020DCFF4:
	ldr r0, _020DD008 ; =0x020ED7F4
	ldr r0, [r0, #4]
	add r0, r0, #0x1000
	str r4, [r0, #0x2d0]
	ldmfd sp!, {r3, r4, r5, pc}
_020DD008: .word ov15_020ED7F4
	arm_func_end FUN_ov15_020dceec

	arm_func_start FUN_ov15_020dd00c
FUN_ov15_020dd00c: ; 0x020DD00C
	ldr r0, _020DD024 ; =0x020ED7F4
	ldr r1, _020DD028 ; =0x00AAA082
	ldr r0, [r0, #4]
	add r0, r0, #0x1000
	str r1, [r0, #0x2d4]
	bx lr
_020DD024: .word ov15_020ED7F4
_020DD028: .word 0x00AAA082
	arm_func_end FUN_ov15_020dd00c

	arm_func_start FUN_ov15_020dd02c
FUN_ov15_020dd02c: ; 0x020DD02C
	stmfd sp!, {r4, r5, r6, r7, r8, r9, r10, lr}
	ldr r5, _020DD0C0 ; =0x4EC4EC4F
	ldr r6, _020DD0C4 ; =0x020ED7F4
	mov r10, r0
	mov r8, #0
	mov r7, #1
	mov r4, #0xd
_020DD048:
	add r2, r10, r8
	mov r0, r2, lsr #0x1f
	smull r1, r9, r5, r2
	add r9, r0, r9, asr #2
	smull r0, r1, r4, r9
	ldr r1, [r6, #4]
	sub r9, r2, r0
	add r0, r1, #0x1000
	ldr r1, [r0, #0x2d4]
	add r0, r9, #1
	tst r1, r7, lsl r0
	beq _020DD084
	bl FUN_ov15_020dcea0
	tst r0, r7, lsl r9
	bne _020DD090
_020DD084:
	add r8, r8, #1
	cmp r8, #0xd
	blt _020DD048
_020DD090:
	add r3, r10, r8
	ldr r2, _020DD0C0 ; =0x4EC4EC4F
	mov r0, r3, lsr #0x1f
	smull r1, r4, r2, r3
	add r4, r0, r4, asr #2
	mov r2, #0xd
	smull r0, r1, r2, r4
	sub r4, r3, r0
	add r0, r4, #1
	mov r0, r0, lsl #0x10
	mov r0, r0, lsr #0x10
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, pc}
_020DD0C0: .word 0x4EC4EC4F
_020DD0C4: .word ov15_020ED7F4
	arm_func_end FUN_ov15_020dd02c

	arm_func_start FUN_ov15_020dd0c8
FUN_ov15_020dd0c8: ; 0x020DD0C8
	stmfd sp!, {r3, r4, r5, lr}
	ldr r12, _020DD108 ; =0x020ED7F4
	mov r5, r0
	ldr r0, [r12, #4]
	mov r4, r1
	add r1, r0, #0x1200
	ldrsh r0, [r1, #0xda]
	mov r12, #0
	mov lr, r2
	strh r12, [r1, #0xda]
	str r3, [sp]
	mov r1, r5
	mov r2, r4
	mov r3, lr
	bl FUN_ov15_020dd10c
	ldmfd sp!, {r3, r4, r5, pc}
_020DD108: .word ov15_020ED7F4
	arm_func_end FUN_ov15_020dd0c8

	arm_func_start FUN_ov15_020dd10c
FUN_ov15_020dd10c: ; 0x020DD10C
	stmfd sp!, {r3, lr}
	sub sp, sp, #0x10
	ldr r12, _020DD15C ; =0x020ED7F4
	ldr r12, [r12, #4]
	add r12, r12, #0x1000
	ldr lr, [r12, #0x2d0]
	cmp lr, #0
	addeq sp, sp, #0x10
	ldmeqfd sp!, {r3, pc}
	ldr lr, [sp, #0x18]
	strh r0, [sp]
	str r2, [sp, #4]
	str r3, [sp, #8]
	str lr, [sp, #0xc]
	strh r1, [sp, #2]
	ldr r1, [r12, #0x2d0]
	add r0, sp, #0
	blx r1
	add sp, sp, #0x10
	ldmfd sp!, {r3, pc}
_020DD15C: .word ov15_020ED7F4
	arm_func_end FUN_ov15_020dd10c

	arm_func_start FUN_ov15_020dd160
FUN_ov15_020dd160: ; 0x020DD160
	stmfd sp!, {r3, r4, r5, lr}
	mov r5, r0
	bl OS_DisableInterrupts
	ldr r1, _020DD1FC ; =0x020ED7F4
	mov r4, r0
	ldr r1, [r1, #4]
	add r0, r1, #0x1000
	ldrb r0, [r0, #0x2de]
	cmp r0, #9
	bne _020DD19C
	cmp r5, #9
	beq _020DD19C
	add r0, r1, #0x294
	add r0, r0, #0x1000
	bl OS_CancelAlarm
_020DD19C:
	ldr r0, _020DD1FC ; =0x020ED7F4
	ldr r0, [r0, #4]
	add r0, r0, #0x1000
	ldrb r1, [r0, #0x2de]
	cmp r1, #0xb
	strneb r5, [r0, #0x2de]
	cmp r5, #9
	bne _020DD1F0
	ldr r5, _020DD1FC ; =0x020ED7F4
	ldr r0, [r5, #4]
	add r0, r0, #0x294
	add r0, r0, #0x1000
	bl OS_CancelAlarm
	mov r2, #0
	str r2, [sp]
	ldr r0, [r5, #4]
	ldr r1, _020DD200 ; =0x022F5341
	add r0, r0, #0x294
	ldr r3, _020DD204 ; =FUN_ov15_020dd270
	add r0, r0, #0x1000
	bl OS_SetAlarm
_020DD1F0:
	mov r0, r4
	bl OS_RestoreInterrupts
	ldmfd sp!, {r3, r4, r5, pc}
_020DD1FC: .word ov15_020ED7F4
_020DD200: .word 0x022F5341
_020DD204: .word FUN_ov15_020dd270
	arm_func_end FUN_ov15_020dd160

	arm_func_start FUN_ov15_020dd208
FUN_ov15_020dd208: ; 0x020DD208
	stmfd sp!, {r3, r4, r5, lr}
	bl OS_DisableInterrupts
	ldr r5, _020DD264 ; =0x020ED7F4
	mov r4, r0
	ldr r0, [r5, #4]
	add r0, r0, #0x294
	add r0, r0, #0x1000
	bl OS_CancelAlarm
	ldr r1, [r5, #4]
	add r0, r1, #0x1000
	ldrb r0, [r0, #0x2de]
	cmp r0, #9
	bne _020DD258
	add r0, r1, #0x294
	mov r2, #0
	ldr r1, _020DD268 ; =0x022F5341
	ldr r3, _020DD26C ; =FUN_ov15_020dd270
	add r0, r0, #0x1000
	str r2, [sp]
	bl OS_SetAlarm
_020DD258:
	mov r0, r4
	bl OS_RestoreInterrupts
	ldmfd sp!, {r3, r4, r5, pc}
_020DD264: .word ov15_020ED7F4
_020DD268: .word 0x022F5341
_020DD26C: .word FUN_ov15_020dd270
	arm_func_end FUN_ov15_020dd208

	arm_func_start FUN_ov15_020dd270
FUN_ov15_020dd270: ; 0x020DD270
	ldr r12, _020DD278 ; =FUN_ov15_020dd208
	bx r12
_020DD278: .word FUN_ov15_020dd208
	arm_func_end FUN_ov15_020dd270

	arm_func_start FUN_ov15_020dd27c
FUN_ov15_020dd27c: ; 0x020DD27C
	mov r0, #1
	bx lr
	arm_func_end FUN_ov15_020dd27c

	arm_func_start FUN_ov15_020dd284
FUN_ov15_020dd284: ; 0x020DD284
	stmfd sp!, {r4, lr}
	bl OS_DisableInterrupts
	mov r4, r0
	bl FUN_ov15_020dcedc
	cmp r0, #0
	bne _020DD2A8
	mov r0, r4
	bl OS_RestoreInterrupts
	ldmfd sp!, {r4, pc}
_020DD2A8:
	add r1, r0, #0x1000
	ldr r0, [r1, #0x2c4]
	cmp r0, #0
	ldrne r2, [r1, #0x2c8]
	cmpne r2, #0
	ble _020DD2C8
	mov r1, #0
	bl MI_CpuFill8
_020DD2C8:
	mov r0, r4
	bl OS_RestoreInterrupts
	ldmfd sp!, {r4, pc}
	arm_func_end FUN_ov15_020dd284

	arm_func_start FUN_ov15_020dd2d4
FUN_ov15_020dd2d4: ; 0x020DD2D4
	stmfd sp!, {r3, r4, r5, lr}
	bl OS_DisableInterrupts
	mov r4, r0
	bl FUN_ov15_020dcedc
	cmp r0, #0
	mov r5, #0
	bne _020DD300
	mov r0, r4
	bl OS_RestoreInterrupts
	mov r0, r5
	ldmfd sp!, {r3, r4, r5, pc}
_020DD300:
	add r0, r0, #0x1000
	ldr r1, [r0, #0x2c4]
	cmp r1, #0
	beq _020DD31C
	ldr r0, [r0, #0x2c8]
	cmp r0, #0xc
	ldrhi r5, [r1]
_020DD31C:
	mov r0, r4
	bl OS_RestoreInterrupts
	mov r0, r5
	ldmfd sp!, {r3, r4, r5, pc}
	arm_func_end FUN_ov15_020dd2d4

	arm_func_start FUN_ov15_020dd32c
FUN_ov15_020dd32c: ; 0x020DD32C
	stmfd sp!, {r3, r4, r5, lr}
	mov r5, r0
	bl OS_DisableInterrupts
	mov r4, r0
	bl FUN_ov15_020dcedc
	cmp r0, #0
	bne _020DD358
	mov r0, r4
	bl OS_RestoreInterrupts
	mov r0, #0
	ldmfd sp!, {r3, r4, r5, pc}
_020DD358:
	add r1, r0, #0x1000
	cmp r5, #0
	ldrb r1, [r1, #0x2dc]
	mov r5, #1
	beq _020DD380
	cmp r1, #0
	moveq r5, #0
	add r0, r0, #0x1000
	mov r1, #1
	b _020DD390
_020DD380:
	cmp r1, #0
	moveq r5, #0
	add r0, r0, #0x1000
	mov r1, #0
_020DD390:
	strb r1, [r0, #0x2dc]
	mov r0, r4
	bl OS_RestoreInterrupts
	mov r0, r5
	ldmfd sp!, {r3, r4, r5, pc}
	arm_func_end FUN_ov15_020dd32c

	arm_func_start FUN_ov15_020dd3a4
FUN_ov15_020dd3a4: ; 0x020DD3A4
	ldr r12, _020DD3AC ; =FUN_ov15_020dd3b0
	bx r12
_020DD3AC: .word FUN_ov15_020dd3b0
	arm_func_end FUN_ov15_020dd3a4

	arm_func_start FUN_ov15_020dd3b0
FUN_ov15_020dd3b0: ; 0x020DD3B0
	stmfd sp!, {r3, r4, r5, lr}
	mov r4, r0
	bl OS_DisableInterrupts
	mov r5, r0
	bl FUN_ov15_020dcedc
	cmp r0, #0
	bne _020DD3DC
	mov r0, r5
	bl OS_RestoreInterrupts
	mov r0, #0
	ldmfd sp!, {r3, r4, r5, pc}
_020DD3DC:
	mov r0, r4
	bl FUN_ov15_020dd608
	movs r4, r0
	mov r0, r5
	bne _020DD3FC
	bl OS_RestoreInterrupts
	mov r0, #0
	ldmfd sp!, {r3, r4, r5, pc}
_020DD3FC:
	bl OS_RestoreInterrupts
	add r0, r4, #0x10
	ldmfd sp!, {r3, r4, r5, pc}
	arm_func_end FUN_ov15_020dd3b0

	arm_func_start FUN_ov15_020dd408
FUN_ov15_020dd408: ; 0x020DD408
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	mov r5, r0
	mov r4, r1
	bl FUN_ov15_020dcedc
	movs r6, r0
	ldmeqfd sp!, {r3, r4, r5, r6, r7, pc}
	add r0, r6, #0x1000
	ldrb r1, [r0, #0x2dc]
	cmp r1, #0
	ldmnefd sp!, {r3, r4, r5, r6, r7, pc}
	ldrb r0, [r0, #0x2df]
	cmp r0, #1
	bne _020DD448
	ldrh r0, [r5, #0x3c]
	cmp r0, #0
	ldmnefd sp!, {r3, r4, r5, r6, r7, pc}
_020DD448:
	add r0, r5, #4
	bl FUN_ov15_020dd59c
	movs r7, r0
	bne _020DD460
	bl FUN_ov15_020dd4a0
	mov r7, r0
_020DD460:
	cmp r7, #0
	addeq r0, r6, #0x1000
	ldreq r0, [r0, #0x2cc]
	cmpeq r0, #1
	bne _020DD47C
	bl FUN_ov15_020dd56c
	mov r7, r0
_020DD47C:
	cmp r7, #0
	ldmeqfd sp!, {r3, r4, r5, r6, r7, pc}
	mov r0, r5
	add r1, r7, #0x10
	bl FUN_ov15_020dd714
	mov r0, r7
	strh r4, [r7, #2]
	bl FUN_ov15_020dd65c
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
	arm_func_end FUN_ov15_020dd408

	arm_func_start FUN_ov15_020dd4a0
FUN_ov15_020dd4a0: ; 0x020DD4A0
	stmfd sp!, {r4, lr}
	bl FUN_ov15_020dcedc
	add r2, r0, #0x1000
	ldr r1, [r2, #0x2c4]
	mov r0, #0
	cmp r1, #0
	ldmeqfd sp!, {r4, pc}
	ldr r3, [r2, #0x2c8]
	cmp r3, #0xc
	ldmlsfd sp!, {r4, pc}
	ldr r2, _020DD568 ; =0x4EC4EC4F
	sub r3, r3, #0xc
	umull r2, r12, r3, r2
	movs r12, r12, lsr #6
	ldmeqfd sp!, {r4, pc}
	ldr r2, [r1]
	cmp r12, r2
	ldmlsfd sp!, {r4, pc}
	mov lr, r0
	cmp r12, #0
	bls _020DD51C
	add r4, r1, #0xc
	mov r2, #0xd0
_020DD4FC:
	mul r0, lr, r2
	ldrb r3, [r4, r0]
	add r0, r4, r0
	cmp r3, #0
	beq _020DD51C
	add lr, lr, #1
	cmp lr, r12
	blo _020DD4FC
_020DD51C:
	cmp lr, r12
	ldmhsfd sp!, {r4, pc}
	mov r2, #1
	strb r2, [r0]
	ldr r3, [r1]
	mov r2, #0
	str r3, [r0, #4]
	str r2, [r0, #0xc]
	ldr r2, [r1, #8]
	str r2, [r0, #8]
	str r0, [r1, #8]
	ldr r2, [r0, #8]
	cmp r2, #0
	strne r0, [r2, #0xc]
	streq r0, [r1, #4]
	ldr r2, [r1]
	add r2, r2, #1
	str r2, [r1]
	ldmfd sp!, {r4, pc}
_020DD568: .word 0x4EC4EC4F
	arm_func_end FUN_ov15_020dd4a0

	arm_func_start FUN_ov15_020dd56c
FUN_ov15_020dd56c: ; 0x020DD56C
	stmfd sp!, {r3, lr}
	bl FUN_ov15_020dcedc
	add r0, r0, #0x1000
	ldr r1, [r0, #0x2c4]
	cmp r1, #0
	beq _020DD594
	ldr r0, [r0, #0x2c8]
	cmp r0, #0xc
	ldrhi r0, [r1, #4]
	ldmhifd sp!, {r3, pc}
_020DD594:
	mov r0, #0
	ldmfd sp!, {r3, pc}
	arm_func_end FUN_ov15_020dd56c

	arm_func_start FUN_ov15_020dd59c
FUN_ov15_020dd59c: ; 0x020DD59C
	stmfd sp!, {r3, r4, r5, lr}
	mov r5, r0
	bl FUN_ov15_020dcedc
	add r0, r0, #0x1000
	mov r4, #0
	cmp r5, #0
	ldr r1, [r0, #0x2c4]
	moveq r0, r4
	ldmeqfd sp!, {r3, r4, r5, pc}
	cmp r1, #0
	beq _020DD600
	ldr r0, [r0, #0x2c8]
	cmp r0, #0xc
	bls _020DD600
	ldr r4, [r1, #4]
	cmp r4, #0
	beq _020DD600
_020DD5E0:
	mov r1, r5
	add r0, r4, #0x14
	bl FUN_ov15_020ddbe4
	cmp r0, #0
	bne _020DD600
	ldr r4, [r4, #0xc]
	cmp r4, #0
	bne _020DD5E0
_020DD600:
	mov r0, r4
	ldmfd sp!, {r3, r4, r5, pc}
	arm_func_end FUN_ov15_020dd59c

	arm_func_start FUN_ov15_020dd608
FUN_ov15_020dd608: ; 0x020DD608
	stmfd sp!, {r4, lr}
	mov r4, r0
	bl FUN_ov15_020dcedc
	add r1, r0, #0x1000
	ldr r2, [r1, #0x2c4]
	mov r0, #0
	cmp r2, #0
	ldmeqfd sp!, {r4, pc}
	ldr r1, [r1, #0x2c8]
	cmp r1, #0xc
	ldmlsfd sp!, {r4, pc}
	ldr r0, [r2, #4]
	cmp r0, #0
	ldmeqfd sp!, {r4, pc}
_020DD640:
	ldr r1, [r0, #4]
	cmp r1, r4
	ldmeqfd sp!, {r4, pc}
	ldr r0, [r0, #0xc]
	cmp r0, #0
	bne _020DD640
	ldmfd sp!, {r4, pc}
	arm_func_end FUN_ov15_020dd608

	arm_func_start FUN_ov15_020dd65c
FUN_ov15_020dd65c: ; 0x020DD65C
	stmfd sp!, {r4, lr}
	mov r4, r0
	bl FUN_ov15_020dcedc
	add r1, r0, #0x1000
	ldr r0, [r1, #0x2c4]
	cmp r4, #0
	cmpne r0, #0
	ldmeqfd sp!, {r4, pc}
	ldr r1, [r1, #0x2c8]
	cmp r1, #0xc
	ldmlsfd sp!, {r4, pc}
	ldr r3, [r0, #4]
	cmp r3, #0
	beq _020DD6D4
_020DD694:
	cmp r3, r4
	bne _020DD6C8
	ldr r2, [r3, #8]
	ldr r1, [r3, #0xc]
	cmp r2, #0
	strne r1, [r2, #0xc]
	streq r1, [r0, #4]
	ldr r2, [r3, #0xc]
	ldr r1, [r3, #8]
	cmp r2, #0
	strne r1, [r2, #8]
	streq r1, [r0, #8]
	b _020DD6D4
_020DD6C8:
	ldr r3, [r3, #0xc]
	cmp r3, #0
	bne _020DD694
_020DD6D4:
	mov r1, #0
	str r1, [r4, #0xc]
	ldr r1, [r0, #8]
	str r1, [r4, #8]
	str r4, [r0, #8]
	ldr r1, [r4, #8]
	cmp r1, #0
	strne r4, [r1, #0xc]
	streq r4, [r0, #4]
	cmp r3, #0
	ldreq r1, [r0]
	streq r1, [r4, #4]
	ldreq r1, [r0]
	addeq r1, r1, #1
	streq r1, [r0]
	ldmfd sp!, {r4, pc}
	arm_func_end FUN_ov15_020dd65c

	arm_func_start FUN_ov15_020dd714
FUN_ov15_020dd714: ; 0x020DD714
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, lr}
	sub sp, sp, #0x10
	mov r11, r0
	mov r4, r1
	bl FUN_ov15_020dcedc
	mov r6, #0
	str r0, [sp]
	mov r0, r6
	mov r1, r4
	mov r2, #0xc0
	bl MIi_CpuClearFast
	mov r5, #0x40
	mov r0, r11
	mov r1, r4
	mov r2, r5
	bl MIi_CpuCopyFast
	ldr r0, [sp]
	strh r6, [r4, #0x3e]
	add r0, r0, #0x1000
	ldrb r0, [r0, #0x2df]
	ldr r1, _020DD8BC ; =0x020E4010
	mov r7, #0
	cmp r0, #1
	moveq r0, #0x20
	streqh r0, [r4]
	strneh r5, [r4]
	ldrb r3, [r1]
	ldrb r2, [r1, #1]
	ldr r0, _020DD8C0 ; =0x020E4014
	strb r3, [sp, #9]
	strb r2, [sp, #0xa]
	ldrb r5, [r1, #2]
	ldrb r3, [r1, #3]
	ldrb r2, [r0]
	ldrb r1, [r0, #1]
	strb r5, [sp, #0xb]
	strb r2, [sp, #4]
	strb r3, [sp, #0xc]
	strb r1, [sp, #5]
	ldrb r1, [r0, #3]
	ldrb r2, [r0, #2]
	mov r8, r7
	strb r1, [sp, #7]
	strb r2, [sp, #6]
	ldrb r0, [r0, #4]
	add r5, r11, #0x40
	add r6, r4, #0x40
	strb r0, [sp, #8]
	ldrh r0, [r11, #0x3e]
	cmp r0, #0
	bls _020DD88C
_020DD7E0:
	ldrb r0, [r5]
	ldrb r9, [r5, #1]
	cmp r0, #0x32
	cmpne r0, #0x2a
	cmpne r0, #0x2f
	cmpne r0, #7
	cmpne r0, #0x30
	bne _020DD804
	b _020DD83C
_020DD804:
	cmp r0, #0xdd
	bne _020DD86C
	add r1, sp, #9
	mov r2, #4
	add r0, r5, #2
	bl FUN_02007c30
	cmp r0, #0
	beq _020DD83C
	add r1, sp, #4
	mov r2, #5
	add r0, r5, #2
	bl FUN_02007c30
	cmp r0, #0
	bne _020DD86C
_020DD83C:
	add r10, r9, #2
	mov r0, r5
	mov r1, r6
	and r2, r10, #0xff
	bl FUN_02007c60
	ldrh r0, [r4, #0x3e]
	and r1, r10, #0xff
	add r1, r7, r1
	add r0, r0, #1
	add r6, r6, r10
	and r7, r1, #0xff
	strh r0, [r4, #0x3e]
_020DD86C:
	ldrh r1, [r11, #0x3e]
	add r0, r8, #1
	add r2, r9, #2
	add r5, r5, r2
	mov r0, r0, lsl #0x10
	cmp r1, r0, lsr #16
	mov r8, r0, lsr #0x10
	bhi _020DD7E0
_020DD88C:
	ldr r0, [sp]
	add r0, r0, #0x1000
	ldrb r0, [r0, #0x2df]
	cmp r0, #1
	ldreqh r1, [r4]
	moveq r0, r7, lsl #0x10
	addeq r0, r1, r0, lsr #16
	ldrneh r0, [r4]
	addne r0, r0, r7
	strh r0, [r4]
	add sp, sp, #0x10
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_020DD8BC: .word 0x020E4010
_020DD8C0: .word 0x020E4014
	arm_func_end FUN_ov15_020dd714

	arm_func_start FUN_ov15_020dd8c4
FUN_ov15_020dd8c4: ; 0x020DD8C4
	stmfd sp!, {r3, r4, r5, lr}
	ldr r4, _020DD90C ; =0x020ED7FC
	ldrb r0, [r4]
	cmp r0, #0
	ldmnefd sp!, {r3, r4, r5, pc}
	mov r0, #1
	mov r5, #0
	strb r0, [r4]
	ldr r0, _020DD910 ; =0x020ED82C
	mov r1, r5
	mov r2, #6
	strh r5, [r4, #0x24]
	bl MI_CpuFill8
	str r5, [r4, #8]
	ldr r0, _020DD914 ; =0x020ED808
	str r5, [r4, #4]
	bl OS_InitMutex
	ldmfd sp!, {r3, r4, r5, pc}
_020DD90C: .word ov15_020ED7FC
_020DD910: .word ov15_020ED82C
_020DD914: .word ov15_020ED808
	arm_func_end FUN_ov15_020dd8c4

	arm_func_start FUN_ov15_020dd918
FUN_ov15_020dd918: ; 0x020DD918
	stmfd sp!, {r3, lr}
	ldr r12, _020DD934 ; =0x020ED7FC
	ldr r12, [r12, #0x28]
	cmp r12, #0
	ldmeqfd sp!, {r3, pc}
	blx r12
	ldmfd sp!, {r3, pc}
_020DD934: .word ov15_020ED7FC
	arm_func_end FUN_ov15_020dd918

	arm_func_start FUN_ov15_020dd938
FUN_ov15_020dd938: ; 0x020DD938
	ldr r0, _020DD940 ; =0x020ED7FC
	bx lr
_020DD940: .word ov15_020ED7FC
	arm_func_end FUN_ov15_020dd938

	arm_func_start FUN_ov15_020dd944
FUN_ov15_020dd944: ; 0x020DD944
	stmfd sp!, {r3, r4, r5, lr}
	mov r5, #0
	bl FUN_ov15_020dcedc
	mov r4, r0
	bl OS_DisableInterrupts
	cmp r4, #0
	beq _020DD97C
	add r1, r4, #0x1000
	ldrb r2, [r1, #0x2de]
	cmp r2, #9
	ldreqb r1, [r1, #0x2dd]
	cmpeq r1, #0
	addeq r1, r4, #0x2e4
	addeq r5, r1, #0x1000
_020DD97C:
	bl OS_RestoreInterrupts
	mov r0, r5
	ldmfd sp!, {r3, r4, r5, pc}
	arm_func_end FUN_ov15_020dd944

	arm_func_start FUN_ov15_020dd988
FUN_ov15_020dd988: ; 0x020DD988
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	mov r7, #0
	mov r5, r0
	mov r4, r7
	bl FUN_ov15_020dcedc
	mov r6, r0
	bl OS_DisableInterrupts
	cmp r6, #0
	beq _020DD9D0
	add r1, r6, #0x1000
	ldrb r2, [r1, #0x2de]
	cmp r2, #9
	ldreqb r1, [r1, #0x2dd]
	cmpeq r1, #0
	addeq r1, r6, #0x1200
	ldreqh r4, [r1, #0xea]
	addeq r1, r6, #0x2ec
	addeq r7, r1, #0x1000
_020DD9D0:
	bl OS_RestoreInterrupts
	cmp r5, #0
	strneh r4, [r5]
	mov r0, r7
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
	arm_func_end FUN_ov15_020dd988

	arm_func_start FUN_ov15_020dd9e4
FUN_ov15_020dd9e4: ; 0x020DD9E4
	stmfd sp!, {r4, lr}
	mov r4, r0
	bl OS_DisableInterrupts
	ldr r1, _020DDA00 ; =0x020ED7FC
	str r4, [r1, #0x28]
	bl OS_RestoreInterrupts
	ldmfd sp!, {r4, pc}
_020DDA00: .word ov15_020ED7FC
	arm_func_end FUN_ov15_020dd9e4

	arm_func_start FUN_ov15_020dda04
FUN_ov15_020dda04: ; 0x020DDA04
	stmfd sp!, {r4, r5, r6, r7, r8, r9, r10, lr}
	sub sp, sp, #8
	mov r9, r0
	mov r8, r1
	mov r7, r2
	mov r6, r3
	bl OS_DisableInterrupts
	mov r5, r0
	bl FUN_ov15_020dcedc
	cmp r0, #0
	bne _020DDA44
	mov r0, r5
	bl OS_RestoreInterrupts
	add sp, sp, #8
	mvn r0, #0
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, pc}
_020DDA44:
	ldr r10, _020DDB18 ; =0x020ED808
	mov r0, r10
	bl OS_LockMutex
	bl FUN_ov15_020dcedc
	movs r4, r0
	bne _020DDA78
	mov r0, r10
	bl OS_UnlockMutex
	mov r0, r5
	bl OS_RestoreInterrupts
	add sp, sp, #8
	mvn r0, #0
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, pc}
_020DDA78:
	add r0, r4, #0x1000
	ldrb r1, [r0, #0x2de]
	cmp r1, #9
	bne _020DDA94
	ldrb r1, [r0, #0x2dd]
	cmp r1, #1
	bne _020DDAB0
_020DDA94:
	ldr r0, _020DDB18 ; =0x020ED808
	bl OS_UnlockMutex
	mov r0, r5
	bl OS_RestoreInterrupts
	add sp, sp, #8
	mvn r0, #3
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, pc}
_020DDAB0:
	ldr r1, [sp, #0x28]
	str r6, [sp]
	str r1, [sp, #4]
	ldrb r0, [r0, #0x2df]
	mov r1, r4
	mov r2, r8
	mov r3, r7
	bl FUN_ov15_020ddb6c
	add r1, r4, #0x1000
	ldrb r1, [r1, #0x2df]
	cmp r1, #1
	bne _020DDAF8
	mov r2, r0, lsl #0x10
	mov r0, r9
	mov r1, r4
	mov r2, r2, lsr #0x10
	mov r3, #0
	bl FUN_ov15_020de1fc
_020DDAF8:
	ldr r0, _020DDB18 ; =0x020ED808
	bl OS_UnlockMutex
	mov r0, r5
	bl OS_RestoreInterrupts
	ldr r0, [sp, #0x28]
	add r0, r7, r0
	add sp, sp, #8
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, pc}
_020DDB18: .word ov15_020ED808
	arm_func_end FUN_ov15_020dda04

	arm_func_start FUN_ov15_020ddb1c
FUN_ov15_020ddb1c: ; 0x020DDB1C
	stmfd sp!, {r3, lr}
	ldr r2, [r0, #8]
	ldr r1, _020DDB50 ; =0x01FF8000
	cmp r2, r1
	ldmnefd sp!, {r3, pc}
	ldr r1, [r0, #0xc]
	subs r1, r1, #1
	str r1, [r0, #0xc]
	ldmnefd sp!, {r3, pc}
	mov r1, #0
	str r1, [r0, #8]
	bl OS_WakeupThread
	ldmfd sp!, {r3, pc}
_020DDB50: .word 0x01FF8000
	arm_func_end FUN_ov15_020ddb1c

	arm_func_start FUN_ov15_020ddb54
FUN_ov15_020ddb54: ; 0x020DDB54
	ldr r1, _020DDB64 ; =0x020ED82C
	ldr r12, _020DDB68 ; =FUN_02007c60
	mov r2, #6
	bx r12
_020DDB64: .word ov15_020ED82C
_020DDB68: .word FUN_02007c60
	arm_func_end FUN_ov15_020ddb54

	arm_func_start FUN_ov15_020ddb6c
FUN_ov15_020ddb6c: ; 0x020DDB6C
	stmfd sp!, {r4, r5, r6, lr}
	mov r5, r3
	mov r0, r2
	mov r2, r5
	mov r6, r1
	ldr r4, [sp, #0x14]
	bl FUN_02007c60
	ldr r0, [sp, #0x10]
	cmp r0, #0
	ldrne r2, [sp, #0x14]
	cmpne r2, #0
	beq _020DDBA4
	add r1, r6, r5
	bl FUN_02007c60
_020DDBA4:
	add r0, r5, r4
	ldmfd sp!, {r4, r5, r6, pc}
	arm_func_end FUN_ov15_020ddb6c

	arm_func_start FUN_ov15_020ddbac
FUN_ov15_020ddbac: ; 0x020DDBAC
	stmfd sp!, {r3, lr}
	cmp r2, #0
	mov lr, #0
	bls _020DDBDC
_020DDBBC:
	ldrb r12, [r0, lr]
	ldrb r3, [r1, lr]
	cmp r12, r3
	movne r0, #0
	ldmnefd sp!, {r3, pc}
	add lr, lr, #1
	cmp lr, r2
	blo _020DDBBC
_020DDBDC:
	mov r0, #1
	ldmfd sp!, {r3, pc}
	arm_func_end FUN_ov15_020ddbac

	arm_func_start FUN_ov15_020ddbe4
FUN_ov15_020ddbe4: ; 0x020DDBE4
	ldr r12, _020DDBF0 ; =FUN_ov15_020ddbac
	mov r2, #6
	bx r12
_020DDBF0: .word FUN_ov15_020ddbac
	arm_func_end FUN_ov15_020ddbe4

	arm_func_start FUN_ov15_020ddbf4
FUN_ov15_020ddbf4: ; 0x020DDBF4
	stmfd sp!, {r3, r4, r5, lr}
	bl OS_DisableInterrupts
	mov r4, r0
	bl FUN_ov15_020dcedc
	cmp r0, #0
	mov r5, #0
	beq _020DDC2C
	add r0, r0, #0x1000
	ldrb r0, [r0, #0x2de]
	cmp r0, #9
	bne _020DDC2C
	bl FUN_ov15_020ddc70
	bl FUN_ov15_020ddc3c
	mov r5, r0
_020DDC2C:
	mov r0, r4
	bl OS_RestoreInterrupts
	mov r0, r5
	ldmfd sp!, {r3, r4, r5, pc}
	arm_func_end FUN_ov15_020ddbf4

	arm_func_start FUN_ov15_020ddc3c
FUN_ov15_020ddc3c: ; 0x020DDC3C
	stmfd sp!, {r4, lr}
	mov r4, r0
	bl FUN_ov15_020dcedc
	cmp r4, #0x1c
	movhs r0, #3
	ldmhsfd sp!, {r4, pc}
	cmp r4, #0x16
	movhs r0, #2
	ldmhsfd sp!, {r4, pc}
	mov r0, #1
	cmp r4, #0x10
	movlo r0, #0
	ldmfd sp!, {r4, pc}
	arm_func_end FUN_ov15_020ddc3c

	arm_func_start FUN_ov15_020ddc70
FUN_ov15_020ddc70: ; 0x020DDC70
	stmfd sp!, {r3, lr}
	ldr r1, _020DDCE8 ; =0x020ED834
	mov r0, #0
	ldrb r1, [r1]
	cmp r1, #0x10
	bls _020DDCB4
	ldr r2, _020DDCEC ; =0x020ED835
	mov r3, r0
_020DDC90:
	ldrb r1, [r2, r3]
	add r3, r3, #1
	cmp r3, #0x10
	add r0, r0, r1
	blt _020DDC90
	mov r1, r0, asr #3
	add r0, r0, r1, lsr #28
	mov r0, r0, asr #4
	b _020DDCE0
_020DDCB4:
	cmp r1, #0
	beq _020DDCE0
	mov r12, r0
	ble _020DDCDC
	ldr r3, _020DDCEC ; =0x020ED835
_020DDCC8:
	ldrb r2, [r3, r12]
	add r12, r12, #1
	cmp r12, r1
	add r0, r0, r2
	blt _020DDCC8
_020DDCDC:
	bl FUN_0201f9bc
_020DDCE0:
	and r0, r0, #0xff
	ldmfd sp!, {r3, pc}
_020DDCE8: .word ov15_020ED834
_020DDCEC: .word ov15_020ED835
	arm_func_end FUN_ov15_020ddc70

	arm_func_start FUN_ov15_020ddcf0
FUN_ov15_020ddcf0: ; 0x020DDCF0
	stmfd sp!, {r4, lr}
	mov r4, r0
	bl FUN_ov15_020dcedc
	ldr r2, _020DDD48 ; =0x020ED834
	mov r0, r4, asr #2
	ldrb r12, [r2]
	tst r4, #2
	addeq r0, r0, #0x19
	mov r1, r12, lsr #0x1f
	and lr, r0, #0xff
	rsb r0, r1, r12, lsl #28
	ldr r3, _020DDD4C ; =0x020ED835
	add r0, r1, r0, ror #28
	strb lr, [r3, r0]
	add r0, r12, #1
	cmp r12, #0x10
	movhs r1, r0, lsr #0x1f
	rsbhs r0, r1, r0, lsl #28
	addhs r0, r1, r0, ror #28
	addhs r0, r0, #0x10
	strb r0, [r2]
	ldmfd sp!, {r4, pc}
_020DDD48: .word ov15_020ED834
_020DDD4C: .word ov15_020ED835
	arm_func_end FUN_ov15_020ddcf0

	arm_func_start FUN_ov15_020ddd50
FUN_ov15_020ddd50: ; 0x020DDD50
	stmfd sp!, {r3, r4, r5, lr}
	sub sp, sp, #8
	bl FUN_ov15_020dcedc
	mov r5, r0
	add r0, r5, #0x1000
	ldr r1, [r0, #0x2c0]
	add r0, r5, #0x3a0
	mov r1, r1, lsl #0x10
	add r0, r0, #0x1000
	mov r1, r1, lsr #0x10
	bl FUN_02011dec
	cmp r0, #6
	addls pc, pc, r0, lsl #2
	b _020DDDC4
_020DDD88: ; jump table
	b _020DDDD8 ; case 0
	b _020DDDC4 ; case 1
	b _020DDDC4 ; case 2
	b _020DDDA4 ; case 3
	b _020DDDB8 ; case 4
	b _020DDDC4 ; case 5
	b _020DDDC4 ; case 6
_020DDDA4:
	mov r0, #0xb
	bl FUN_ov15_020dd160
	add sp, sp, #8
	mov r0, #7
	ldmfd sp!, {r3, r4, r5, pc}
_020DDDB8:
	add sp, sp, #8
	mov r0, #5
	ldmfd sp!, {r3, r4, r5, pc}
_020DDDC4:
	mov r0, #0xb
	bl FUN_ov15_020dd160
	add sp, sp, #8
	mov r0, #7
	ldmfd sp!, {r3, r4, r5, pc}
_020DDDD8:
	ldr r0, _020DDE80 ; =FUN_ov15_020de380
	bl FUN_02012828
	cmp r0, #0
	beq _020DDDFC
	mov r0, #0xb
	bl FUN_ov15_020dd160
	add sp, sp, #8
	mov r0, #7
	ldmfd sp!, {r3, r4, r5, pc}
_020DDDFC:
	add r4, sp, #0
	mov r0, r4
	bl FUN_02003f38
	mov r0, r4
	bl FUN_ov15_020ddb54
	ldr r0, _020DDE84 ; =FUN_ov15_020de3f4
	bl FUN_02012f68
	cmp r0, #2
	beq _020DDE34
	cmp r0, #3
	beq _020DDE60
	cmp r0, #8
	beq _020DDE4C
	b _020DDE60
_020DDE34:
	mov r0, #2
	bl FUN_ov15_020dd160
	add r0, r5, #0x1200
	mov r1, #1
	strh r1, [r0, #0xda]
	b _020DDE74
_020DDE4C:
	mov r0, #0xc
	bl FUN_ov15_020dd160
	add sp, sp, #8
	mov r0, #1
	ldmfd sp!, {r3, r4, r5, pc}
_020DDE60:
	mov r0, #0xb
	bl FUN_ov15_020dd160
	add sp, sp, #8
	mov r0, #7
	ldmfd sp!, {r3, r4, r5, pc}
_020DDE74:
	mov r0, #3
	add sp, sp, #8
	ldmfd sp!, {r3, r4, r5, pc}
_020DDE80: .word FUN_ov15_020de380
_020DDE84: .word FUN_ov15_020de3f4
	arm_func_end FUN_ov15_020ddd50

	arm_func_start FUN_ov15_020dde88
FUN_ov15_020dde88: ; 0x020DDE88
	stmfd sp!, {r4, lr}
	bl FUN_ov15_020dcedc
	mov r4, r0
	ldr r0, _020DDEF0 ; =FUN_ov15_020de3f4
	bl FUN_0201306c
	cmp r0, #2
	beq _020DDEB8
	cmp r0, #3
	beq _020DDED8
	cmp r0, #8
	beq _020DDED0
	b _020DDED8
_020DDEB8:
	mov r0, #4
	bl FUN_ov15_020dd160
	add r0, r4, #0x1200
	mov r1, #2
	strh r1, [r0, #0xda]
	b _020DDEE8
_020DDED0:
	mov r0, #4
	ldmfd sp!, {r4, pc}
_020DDED8:
	mov r0, #0xb
	bl FUN_ov15_020dd160
	mov r0, #7
	ldmfd sp!, {r4, pc}
_020DDEE8:
	mov r0, #3
	ldmfd sp!, {r4, pc}
_020DDEF0: .word FUN_ov15_020de3f4
	arm_func_end FUN_ov15_020dde88

	arm_func_start FUN_ov15_020ddef4
FUN_ov15_020ddef4: ; 0x020DDEF4
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	mov r7, r0
	mov r6, r1
	mov r5, r2
	bl FUN_ov15_020dcedc
	mov r4, r0
	add r0, r4, #0x1000
	ldrb r0, [r0, #0x2de]
	cmp r0, #3
	beq _020DDF68
	cmp r0, #5
	beq _020DDF30
	cmp r0, #6
	beq _020DDF48
	b _020DDF60
_020DDF30:
	mov r0, r7
	mov r1, r6
	mov r2, r5
	bl FUN_ov15_020df184
	mov r0, #2
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_020DDF48:
	mov r0, r7
	mov r1, r6
	mov r2, r5
	bl FUN_ov15_020df184
	mov r0, #0
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_020DDF60:
	mov r0, #1
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_020DDF68:
	mov r0, r7
	mov r1, r6
	mov r2, r5
	bl FUN_ov15_020df184
	add r1, r4, #0x2200
	add r0, r4, #0x2000
	ldrh r1, [r1, #0xa4]
	ldr r0, [r0, #0x2a0]
	bl DC_InvalidateRange
	add r2, r4, #0x2000
	ldr r0, [r2, #0x2e4]
	add r1, r4, #0x2a0
	add r3, r0, #1
	ldr r0, _020DDFF8 ; =FUN_ov15_020de690
	add r1, r1, #0x2000
	str r3, [r2, #0x2e4]
	bl FUN_02013394
	cmp r0, #2
	beq _020DDFC8
	cmp r0, #3
	beq _020DDFE8
	cmp r0, #8
	beq _020DDFE0
	b _020DDFE8
_020DDFC8:
	mov r0, #5
	bl FUN_ov15_020dd160
	add r1, r4, #0x1200
	mov r0, #3
	strh r0, [r1, #0xda]
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_020DDFE0:
	mov r0, #4
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_020DDFE8:
	mov r0, #0xb
	bl FUN_ov15_020dd160
	mov r0, #7
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_020DDFF8: .word FUN_ov15_020de690
	arm_func_end FUN_ov15_020ddef4

	arm_func_start FUN_ov15_020ddffc
FUN_ov15_020ddffc: ; 0x020DDFFC
	stmfd sp!, {r3, r4, lr}
	sub sp, sp, #4
	bl FUN_ov15_020dcedc
	mov r4, r0
	add r0, r4, #0x1000
	ldrb r0, [r0, #0x2de]
	mov r2, #0x50
	cmp r0, #3
	addeq r0, r4, #0x1300
	ldreqh r1, [r0, #0xe]
	orreq r1, r1, #3
	streqh r1, [r0, #0x10]
	ldr r1, _020DE0A0 ; =0x0000FFFF
	ldr r0, _020DE0A4 ; =FUN_ov15_020de3f4
	mov r3, r1
	str r1, [sp]
	bl FUN_02014bb4
	cmp r0, #2
	beq _020DE05C
	cmp r0, #3
	beq _020DE080
	cmp r0, #8
	beq _020DE074
	b _020DE080
_020DE05C:
	mov r0, #8
	bl FUN_ov15_020dd160
	add r0, r4, #0x1200
	mov r1, #5
	strh r1, [r0, #0xda]
	b _020DE094
_020DE074:
	add sp, sp, #4
	mov r0, #4
	ldmfd sp!, {r3, r4, pc}
_020DE080:
	mov r0, #0xb
	bl FUN_ov15_020dd160
	add sp, sp, #4
	mov r0, #7
	ldmfd sp!, {r3, r4, pc}
_020DE094:
	mov r0, #3
	add sp, sp, #4
	ldmfd sp!, {r3, r4, pc}
_020DE0A0: .word 0x0000FFFF
_020DE0A4: .word FUN_ov15_020de3f4
	arm_func_end FUN_ov15_020ddffc

	arm_func_start FUN_ov15_020de0a8
FUN_ov15_020de0a8: ; 0x020DE0A8
	stmfd sp!, {r4, lr}
	bl FUN_ov15_020dcedc
	mov r4, r0
	ldr r0, _020DE110 ; =FUN_ov15_020ded7c
	bl FUN_02013da4
	cmp r0, #2
	beq _020DE0D8
	cmp r0, #3
	beq _020DE0F8
	cmp r0, #8
	beq _020DE0F0
	b _020DE0F8
_020DE0D8:
	mov r0, #0xa
	bl FUN_ov15_020dd160
	add r0, r4, #0x1200
	mov r1, #6
	strh r1, [r0, #0xda]
	b _020DE108
_020DE0F0:
	mov r0, #4
	ldmfd sp!, {r4, pc}
_020DE0F8:
	mov r0, #0xb
	bl FUN_ov15_020dd160
	mov r0, #7
	ldmfd sp!, {r4, pc}
_020DE108:
	mov r0, #3
	ldmfd sp!, {r4, pc}
_020DE110: .word FUN_ov15_020ded7c
	arm_func_end FUN_ov15_020de0a8

	arm_func_start FUN_ov15_020de114
FUN_ov15_020de114: ; 0x020DE114
	stmfd sp!, {r3, r4, r5, lr}
	bl FUN_ov15_020dcedc
	mov r5, r0
	bl FUN_02012750
	mov r4, r0
	mov r1, #2
	bl DC_InvalidateRange
	ldrh r0, [r4]
	cmp r0, #0
	beq _020DE150
	cmp r0, #1
	beq _020DE174
	cmp r0, #2
	beq _020DE180
	b _020DE18C
_020DE150:
	bl FUN_02012040
	cmp r0, #0
	bne _020DE1A0
	mov r0, #1
	bl FUN_ov15_020dd160
	add r1, r5, #0x1200
	mov r0, #0
	strh r0, [r1, #0xda]
	ldmfd sp!, {r3, r4, r5, pc}
_020DE174:
	ldr r0, _020DE1F4 ; =FUN_ov15_020de3f4
	bl FUN_02012fe4
	b _020DE1A0
_020DE180:
	ldr r0, _020DE1F4 ; =FUN_ov15_020de3f4
	bl FUN_0201306c
	b _020DE1A0
_020DE18C:
	ldr r0, _020DE1F8 ; =FUN_ov15_020dee90
	add r1, r5, #0x1000
	mov r2, #1
	strb r2, [r1, #0x2dd]
	bl FUN_0201312c
_020DE1A0:
	cmp r0, #2
	beq _020DE1BC
	cmp r0, #3
	beq _020DE1DC
	cmp r0, #8
	beq _020DE1D4
	b _020DE1DC
_020DE1BC:
	mov r0, #0xd
	bl FUN_ov15_020dd160
	add r0, r5, #0x1200
	mov r1, #9
	strh r1, [r0, #0xda]
	b _020DE1EC
_020DE1D4:
	mov r0, #4
	ldmfd sp!, {r3, r4, r5, pc}
_020DE1DC:
	mov r0, #0xb
	bl FUN_ov15_020dd160
	mov r0, #7
	ldmfd sp!, {r3, r4, r5, pc}
_020DE1EC:
	mov r0, #3
	ldmfd sp!, {r3, r4, r5, pc}
_020DE1F4: .word FUN_ov15_020de3f4
_020DE1F8: .word FUN_ov15_020dee90
	arm_func_end FUN_ov15_020de114

	arm_func_start FUN_ov15_020de1fc
FUN_ov15_020de1fc: ; 0x020DE1FC
	stmfd sp!, {r4, r5, r6, r7, r8, lr}
	mov r5, r3
	mov r8, r0
	mov r7, r1
	mov r6, r2
	bl FUN_ov15_020dd938
	mov r4, r0
	cmp r5, #0
	bne _020DE234
	ldr r0, _020DE2AC ; =FUN_ov15_020df2b0
	mov r1, r8
	mov r2, r7
	mov r3, r6
	b _020DE248
_020DE234:
	ldr r0, _020DE2B0 ; =FUN_ov15_020df2f0
	mov r1, r8
	mov r2, r7
	mov r3, r6
	str r5, [r4, #0x2c]
_020DE248:
	bl FUN_02013cd4
	cmp r0, #8
	addls pc, pc, r0, lsl #2
	b _020DE27C
_020DE258: ; jump table
	b _020DE27C ; case 0
	b _020DE27C ; case 1
	b _020DE284 ; case 2
	b _020DE27C ; case 3
	b _020DE27C ; case 4
	b _020DE27C ; case 5
	b _020DE27C ; case 6
	b _020DE27C ; case 7
	b _020DE27C ; case 8
_020DE27C:
	mvn r0, #4
	ldmfd sp!, {r4, r5, r6, r7, r8, pc}
_020DE284:
	cmp r5, #0
	bne _020DE2A4
	add r0, r4, #4
	bl OS_SleepThread
	ldrh r0, [r4, #0x24]
	cmp r0, #0
	mvnne r0, #4
	ldmnefd sp!, {r4, r5, r6, r7, r8, pc}
_020DE2A4:
	mov r0, r6
	ldmfd sp!, {r4, r5, r6, r7, r8, pc}
_020DE2AC: .word FUN_ov15_020df2b0
_020DE2B0: .word FUN_ov15_020df2f0
	arm_func_end FUN_ov15_020de1fc

	arm_func_start FUN_ov15_020de2b4
FUN_ov15_020de2b4: ; 0x020DE2B4
	stmfd sp!, {r3, lr}
	bl FUN_02012bc0
	cmp r0, #0
	mov r3, #0x8000
	mov r2, #1
	moveq r0, #0
	ldmeqfd sp!, {r3, pc}
	tst r0, #0x8000
	bne _020DE2F0
_020DE2D8:
	mov r1, r3, asr #1
	orr r1, r1, #0x8000
	mov r1, r1, lsl #0x10
	mov r3, r1, lsr #0x10
	tst r3, r0
	beq _020DE2D8
_020DE2F0:
	tst r0, #1
	bne _020DE310
_020DE2F8:
	mov r1, r2, lsl #1
	orr r1, r1, #1
	mov r1, r1, lsl #0x10
	mov r2, r1, lsr #0x10
	tst r2, r0
	beq _020DE2F8
_020DE310:
	mov r0, r3, lsl #0x11
	mov r1, r2, lsr #1
	orr r0, r1, r0, lsr #16
	mvn r0, r0
	mov r0, r0, lsl #0x10
	mov r0, r0, lsr #0x10
	ldmfd sp!, {r3, pc}
	arm_func_end FUN_ov15_020de2b4

	arm_func_start FUN_ov15_020de32c
FUN_ov15_020de32c: ; 0x020DE32C
	stmfd sp!, {r3, lr}
	bl FUN_ov15_020dcedc
	add r1, r0, #0x1000
	ldrb r0, [r1, #0x2dd]
	cmp r0, #0
	ldmnefd sp!, {r3, pc}
	mov r2, #1
	ldr r0, _020DE37C ; =FUN_ov15_020dee90
	strb r2, [r1, #0x2dd]
	bl FUN_0201312c
	cmp r0, #2
	ldmeqfd sp!, {r3, pc}
	mov r0, #0xb
	bl FUN_ov15_020dd160
	mov r0, #7
	mov r1, #0
	mov r2, r1
	add r3, r0, #0x248
	bl FUN_ov15_020dd0c8
	ldmfd sp!, {r3, pc}
_020DE37C: .word FUN_ov15_020dee90
	arm_func_end FUN_ov15_020de32c

	arm_func_start FUN_ov15_020de380
FUN_ov15_020de380: ; 0x020DE380
	stmfd sp!, {r4, lr}
	mov r4, r0
	bl FUN_ov15_020dcedc
	ldrh r1, [r4, #2]
	cmp r1, #8
	ldreqh r1, [r4, #4]
	cmpeq r1, #0x16
	ldreqh r1, [r4, #6]
	cmpeq r1, #0x25
	ldmnefd sp!, {r4, pc}
	add r0, r0, #0x1000
	ldrb r0, [r0, #0x2de]
	sub r0, r0, #8
	cmp r0, #4
	addls pc, pc, r0, lsl #2
	ldmfd sp!, {r4, pc}
_020DE3C0: ; jump table
	b _020DE3D4 ; case 0
	b _020DE3E0 ; case 1
	b _020DE3E8 ; case 2
	ldmfd sp!, {r4, pc} ; case 3
	b _020DE3E0 ; case 4
_020DE3D4:
	mov r0, #0xc
	bl FUN_ov15_020dd160
	ldmfd sp!, {r4, pc}
_020DE3E0:
	bl FUN_ov15_020de32c
	ldmfd sp!, {r4, pc}
_020DE3E8:
	mov r0, #0xc
	bl FUN_ov15_020dd160
	ldmfd sp!, {r4, pc}
	arm_func_end FUN_ov15_020de380

	arm_func_start FUN_ov15_020de3f4
FUN_ov15_020de3f4: ; 0x020DE3F4
	stmfd sp!, {r3, r4, r5, r6, lr}
	sub sp, sp, #4
	mov r6, r0
	mov r5, #0x14
	bl FUN_ov15_020dcedc
	ldrh r1, [r6, #2]
	mov r4, r0
	cmp r1, #4
	addls pc, pc, r1, lsl #2
	b _020DE650
_020DE41C: ; jump table
	b _020DE430 ; case 0
	b _020DE618 ; case 1
	b _020DE650 ; case 2
	b _020DE650 ; case 3
	b _020DE650 ; case 4
_020DE430:
	ldrh r0, [r6]
	cmp r0, #0x19
	bgt _020DE468
	bge _020DE524
	cmp r0, #6
	addls pc, pc, r0, lsl #2
	b _020DE58C
_020DE44C: ; jump table
	b _020DE58C ; case 0
	b _020DE58C ; case 1
	b _020DE58C ; case 2
	b _020DE484 ; case 3
	b _020DE490 ; case 4
	b _020DE4E4 ; case 5
	b _020DE508 ; case 6
_020DE468:
	cmp r0, #0x1d
	bgt _020DE478
	beq _020DE514
	b _020DE58C
_020DE478:
	cmp r0, #0x27
	beq _020DE540
	b _020DE58C
_020DE484:
	ldr r0, _020DE688 ; =FUN_ov15_020de3f4
	bl FUN_02013028
	b _020DE588
_020DE490:
	bl FUN_02012040
	cmp r0, #0
	bne _020DE4C0
	mov r0, #1
	bl FUN_ov15_020dd160
	mov r0, #0
	mov r1, r0
	mov r2, r0
	mov r3, #0x2a4
	bl FUN_ov15_020dd0c8
	add sp, sp, #4
	ldmfd sp!, {r3, r4, r5, r6, pc}
_020DE4C0:
	mov r0, #0xb
	bl FUN_ov15_020dd160
	mov r0, #7
	mov r1, #0
	mov r2, r1
	rsb r3, r0, #0x2b4
	bl FUN_ov15_020dd0c8
	add sp, sp, #4
	ldmfd sp!, {r3, r4, r5, r6, pc}
_020DE4E4:
	mov r0, #3
	bl FUN_ov15_020dd160
	mov r0, #0
	mov r1, r0
	mov r2, r0
	mov r3, #0x2b4
	bl FUN_ov15_020dd0c8
	add sp, sp, #4
	ldmfd sp!, {r3, r4, r5, r6, pc}
_020DE508:
	ldr r0, _020DE688 ; =FUN_ov15_020de3f4
	bl FUN_02012fe4
	b _020DE588
_020DE514:
	ldr r0, _020DE688 ; =FUN_ov15_020de3f4
	mov r1, #0
	bl FUN_02014b60
	b _020DE588
_020DE524:
	add r0, r4, #0x1000
	ldrb r1, [r0, #0x290]
	ldrb r2, [r0, #0x291]
	ldr r0, _020DE688 ; =FUN_ov15_020de3f4
	add r3, r4, #0x1240
	bl FUN_02014a08
	b _020DE588
_020DE540:
	add r0, r4, #0x1000
	ldr r1, [r0, #0x2d4]
	mov r2, #1
	and r0, r1, #0xc0000
	cmp r0, #0xc0000
	and r0, r1, #0x30000
	movne r2, #0
	cmp r0, #0x30000
	mov r0, r2, lsl #0x10
	mov r12, r0, lsr #0x10
	mov r3, #1
	add r1, r4, #0x2e0
	ldr r0, _020DE68C ; =FUN_ov15_020de98c
	moveq r3, #0
	add r1, r1, #0x1000
	mov r2, #0
	str r12, [sp]
	bl FUN_02013528
_020DE588:
	mov r5, r0
_020DE58C:
	cmp r5, #2
	addeq sp, sp, #4
	ldmeqfd sp!, {r3, r4, r5, r6, pc}
	cmp r5, #3
	beq _020DE5E0
	cmp r5, #8
	bne _020DE5E0
	mov r0, #0xc
	bl FUN_ov15_020dd160
	add r0, r4, #0x1200
	ldrsh r0, [r0, #0xda]
	mov r2, #0
	mov r3, #0x2f0
	cmp r0, #5
	addeq r0, r4, #0x2e0
	addeq r1, r0, #0x1000
	movne r1, #0
	mov r0, #1
	bl FUN_ov15_020dd0c8
	add sp, sp, #4
	ldmfd sp!, {r3, r4, r5, r6, pc}
_020DE5E0:
	mov r0, #0xb
	bl FUN_ov15_020dd160
	add r0, r4, #0x1200
	ldrsh r0, [r0, #0xda]
	mov r2, #0
	cmp r0, #5
	addeq r0, r4, #0x2e0
	addeq r1, r0, #0x1000
	mov r0, #7
	movne r1, #0
	rsb r3, r0, #0x300
	bl FUN_ov15_020dd0c8
	add sp, sp, #4
	ldmfd sp!, {r3, r4, r5, r6, pc}
_020DE618:
	mov r0, #0xc
	bl FUN_ov15_020dd160
	add r0, r4, #0x1200
	ldrsh r0, [r0, #0xda]
	mov r2, #0
	cmp r0, #5
	addeq r0, r4, #0x2e0
	addeq r1, r0, #0x1000
	mov r0, #1
	movne r1, #0
	rsb r3, r0, #0x320
	bl FUN_ov15_020dd0c8
	add sp, sp, #4
	ldmfd sp!, {r3, r4, r5, r6, pc}
_020DE650:
	mov r0, #0xb
	bl FUN_ov15_020dd160
	add r0, r4, #0x1200
	ldrsh r0, [r0, #0xda]
	mov r2, #0
	cmp r0, #5
	addeq r0, r4, #0x2e0
	addeq r1, r0, #0x1000
	mov r0, #7
	movne r1, #0
	rsb r3, r0, #0x330
	bl FUN_ov15_020dd0c8
	add sp, sp, #4
	ldmfd sp!, {r3, r4, r5, r6, pc}
_020DE688: .word FUN_ov15_020de3f4
_020DE68C: .word FUN_ov15_020de98c
	arm_func_end FUN_ov15_020de3f4

	arm_func_start FUN_ov15_020de690
FUN_ov15_020de690: ; 0x020DE690
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, lr}
	mov r4, r0
	mov r5, #0
	mov r6, #0x14
	bl FUN_ov15_020dcedc
	ldrh r1, [r4, #2]
	mov r8, r0
	cmp r1, #4
	addls pc, pc, r1, lsl #2
	b _020DE8E0
_020DE6B8: ; jump table
	b _020DE6CC ; case 0
	b _020DE8D8 ; case 1
	b _020DE8E0 ; case 2
	b _020DE8E0 ; case 3
	b _020DE8E0 ; case 4
_020DE6CC:
	add r0, r8, #0x1000
	ldrb r0, [r0, #0x2de]
	cmp r0, #5
	bne _020DE6FC
	mov r7, #6
	mov r0, r7
	bl FUN_ov15_020dd160
	mov r0, r5
	mov r1, r0
	mov r2, r0
	add r3, r7, #0x340
	bl FUN_ov15_020dd0c8
_020DE6FC:
	add r0, r8, #0x1000
	ldrb r0, [r0, #0x2de]
	cmp r0, #6
	beq _020DE720
	cmp r0, #7
	beq _020DE86C
	cmp r0, #0xd
	beq _020DE878
	b _020DE880
_020DE720:
	add r0, r8, #0x1200
	mov r1, #7
	strh r1, [r0, #0xda]
	ldrh r0, [r4, #8]
	cmp r0, #5
	bne _020DE79C
	add r1, r8, #0x2200
	add r0, r8, #0x2000
	ldrh r1, [r1, #0xa4]
	ldr r0, [r0, #0x2a0]
	bl DC_InvalidateRange
	mov r9, #0
	mov r7, #0x35c
	mov r6, #7
	b _020DE790
_020DE75C:
	add r0, r4, r9, lsl #1
	add r2, r4, r9, lsl #2
	ldrh r1, [r0, #0x50]
	ldr r0, [r2, #0x10]
	bl FUN_ov15_020dd408
	str r7, [sp]
	add r0, r4, r9, lsl #2
	ldr r2, [r0, #0x10]
	mov r0, r6
	mov r1, r5
	mov r3, r4
	bl FUN_ov15_020dd10c
	add r9, r9, #1
_020DE790:
	ldrh r0, [r4, #0xe]
	cmp r9, r0
	blt _020DE75C
_020DE79C:
	add r0, r8, #0x1000
	ldr r1, [r0, #0x2d4]
	and r0, r1, #0xc00000
	cmp r0, #0xc00000
	bne _020DE7F8
	ldr r0, _020DE900 ; =0x00003FFE
	and r0, r1, r0
	bl FUN_02009d28
	movs r1, r0
	beq _020DE7F8
	add r0, r8, #0x2000
	ldr r0, [r0, #0x2e4]
	bl FUN_0201fbc8
	cmp r1, #0
	bne _020DE7F8
	ldr r0, _020DE904 ; =0x0000036A
	mov r1, #0
	str r0, [sp]
	add r0, r8, #0x2000
	ldr r2, [r0, #0x2e4]
	mov r3, r1
	mov r0, #8
	bl FUN_ov15_020dd10c
_020DE7F8:
	ldrh r0, [r4, #0xa]
	clz r0, r0
	rsb r0, r0, #0x20
	mov r0, r0, lsl #0x10
	mov r0, r0, lsr #0x10
	bl FUN_ov15_020dd02c
	ldr r2, _020DE908 ; =0x00000001
	add r1, r8, #0x2200
	mov r0, r2, lsl r0
	mov r0, r0, asr #1
	mov r0, r0, lsl #0x10
	mov r0, r0, lsr #0x10
	strh r0, [r1, #0xa6]
	add r1, r8, #0x2200
	add r0, r8, #0x2000
	ldrh r1, [r1, #0xa4]
	ldr r0, [r0, #0x2a0]
	bl DC_StoreRange
	add r0, r8, #0x2e4
	add r3, r0, #0x2000
	ldr r0, [r3]
	add r1, r8, #0x2a0
	add r2, r0, #1
	ldr r0, _020DE90C ; =FUN_ov15_020de690
	add r1, r1, #0x2000
	str r2, [r3]
	bl FUN_02013394
_020DE864:
	mov r6, r0
	b _020DE880
_020DE86C:
	ldr r0, _020DE910 ; =FUN_ov15_020de918
	bl FUN_020134e4
	b _020DE864
_020DE878:
	bl FUN_ov15_020de32c
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
_020DE880:
	cmp r6, #2
	ldmeqfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
	cmp r6, #3
	beq _020DE8B8
	cmp r6, #8
	bne _020DE8B8
	mov r0, #0xc
	bl FUN_ov15_020dd160
	mov r0, #1
	mov r1, #0
	mov r2, r1
	add r3, r0, #0x394
	bl FUN_ov15_020dd0c8
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
_020DE8B8:
	mov r0, #0xb
	bl FUN_ov15_020dd160
	mov r1, #0
	ldr r3, _020DE914 ; =0x0000039E
	mov r2, r1
	mov r0, #7
	bl FUN_ov15_020dd0c8
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
_020DE8D8:
	bl FUN_ov15_020de32c
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
_020DE8E0:
	mov r0, #0xb
	bl FUN_ov15_020dd160
	mov r0, #7
	mov r1, #0
	mov r2, r1
	add r3, r0, #0x3a8
	bl FUN_ov15_020dd0c8
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
_020DE900: .word 0x00003FFE
_020DE904: .word 0x0000036A
_020DE908: .word 0x00000001
_020DE90C: .word FUN_ov15_020de690
_020DE910: .word FUN_ov15_020de918
_020DE914: .word 0x0000039E
	arm_func_end FUN_ov15_020de690

	arm_func_start FUN_ov15_020de918
FUN_ov15_020de918: ; 0x020DE918
	stmfd sp!, {r4, lr}
	ldrh r0, [r0, #2]
	cmp r0, #4
	addls pc, pc, r0, lsl #2
	b _020DE96C
_020DE92C: ; jump table
	b _020DE940 ; case 0
	b _020DE964 ; case 1
	b _020DE96C ; case 2
	b _020DE96C ; case 3
	b _020DE96C ; case 4
_020DE940:
	mov r4, #3
	mov r0, r4
	bl FUN_ov15_020dd160
	mov r0, #0
	mov r1, r0
	mov r2, r0
	rsb r3, r4, #0x3c8
	bl FUN_ov15_020dd0c8
	ldmfd sp!, {r4, pc}
_020DE964:
	bl FUN_ov15_020de32c
	ldmfd sp!, {r4, pc}
_020DE96C:
	mov r0, #0xb
	bl FUN_ov15_020dd160
	mov r0, #7
	mov r1, #0
	mov r2, r1
	rsb r3, r0, #0x3dc
	bl FUN_ov15_020dd0c8
	ldmfd sp!, {r4, pc}
	arm_func_end FUN_ov15_020de918

	arm_func_start FUN_ov15_020de98c
FUN_ov15_020de98c: ; 0x020DE98C
	stmfd sp!, {r4, r5, r6, lr}
	mov r5, r0
	mov r6, #0
	bl FUN_ov15_020dcedc
	ldrh r1, [r5, #2]
	mov r4, r0
	cmp r1, #0xc
	addls pc, pc, r1, lsl #2
	b _020DEB84
_020DE9B0: ; jump table
	b _020DE9E4 ; case 0
	b _020DEB68 ; case 1
	b _020DEB84 ; case 2
	b _020DEB84 ; case 3
	b _020DEB84 ; case 4
	b _020DEB84 ; case 5
	b _020DEB74 ; case 6
	b _020DEB84 ; case 7
	b _020DEB84 ; case 8
	b _020DEB84 ; case 9
	b _020DEB84 ; case 10
	b _020DEB74 ; case 11
	b _020DEB74 ; case 12
_020DE9E4:
	ldrh r0, [r5, #8]
	cmp r0, #9
	bgt _020DEA24
	cmp r0, #0
	addge pc, pc, r0, lsl #2
	b _020DEB44
_020DE9FC: ; jump table
	b _020DEB44 ; case 0
	b _020DEB44 ; case 1
	b _020DEB44 ; case 2
	b _020DEB44 ; case 3
	b _020DEB44 ; case 4
	b _020DEB44 ; case 5
	ldmfd sp!, {r4, r5, r6, pc} ; case 6
	b _020DEA8C ; case 7
	b _020DEA30 ; case 8
	b _020DEA30 ; case 9
_020DEA24:
	cmp r0, #0x1a
	ldmeqfd sp!, {r4, r5, r6, pc}
	b _020DEB44
_020DEA30:
	add r0, r4, #0x1000
	ldrb r0, [r0, #0x2de]
	sub r0, r0, #8
	cmp r0, #4
	addls pc, pc, r0, lsl #2
	ldmfd sp!, {r4, r5, r6, pc}
_020DEA48: ; jump table
	b _020DEA64 ; case 0
	b _020DEA70 ; case 1
	b _020DEA5C ; case 2
	ldmfd sp!, {r4, r5, r6, pc} ; case 3
	b _020DEA84 ; case 4
_020DEA5C:
	add r0, r4, #0x2200
	strh r6, [r0, #0xe8]
_020DEA64:
	mov r0, #0xc
	bl FUN_ov15_020dd160
	ldmfd sp!, {r4, r5, r6, pc}
_020DEA70:
	add r0, r4, #0x2200
	strh r6, [r0, #0xe8]
	add r0, r4, #0x1200
	mov r1, #6
	strh r1, [r0, #0xda]
_020DEA84:
	bl FUN_ov15_020de32c
	ldmfd sp!, {r4, r5, r6, pc}
_020DEA8C:
	add r0, r4, #0x1000
	ldrb r0, [r0, #0x2de]
	cmp r0, #0xc
	bne _020DEAAC
	mov r0, #8
	bl FUN_ov15_020dd160
	bl FUN_ov15_020de32c
	ldmfd sp!, {r4, r5, r6, pc}
_020DEAAC:
	ldrh r5, [r5, #0xa]
	cmp r5, #1
	blo _020DEB3C
	ldr r0, _020DEBA8 ; =0x000007D7
	cmp r5, r0
	bhi _020DEB3C
	ldr r0, _020DEBAC ; =FUN_ov15_020dec74
	add r3, r4, #0x2200
	add r1, r4, #0x600
	mov r2, #0x620
	strh r5, [r3, #0xe8]
	bl FUN_02013c2c
	cmp r0, #2
	ldmeqfd sp!, {r4, r5, r6, pc}
	cmp r0, #3
	beq _020DEB18
	cmp r0, #8
	bne _020DEB18
	mov r0, #0xc
	bl FUN_ov15_020dd160
	add r0, r4, #0x2e0
	add r1, r0, #0x1000
	mov r0, #1
	mov r2, r6
	mov r3, #0x430
	bl FUN_ov15_020dd0c8
	ldmfd sp!, {r4, r5, r6, pc}
_020DEB18:
	mov r0, #0xb
	bl FUN_ov15_020dd160
	add r1, r4, #0x2e0
	mov r0, #7
	add r1, r1, #0x1000
	rsb r3, r0, #0x440
	mov r2, #0
	bl FUN_ov15_020dd0c8
	ldmfd sp!, {r4, r5, r6, pc}
_020DEB3C:
	bl FUN_ov15_020de32c
	ldmfd sp!, {r4, r5, r6, pc}
_020DEB44:
	mov r0, #0xb
	bl FUN_ov15_020dd160
	add r1, r4, #0x2e0
	mov r0, #7
	ldrh r2, [r5, #8]
	add r1, r1, #0x1000
	add r3, r0, #0x440
	bl FUN_ov15_020dd0c8
	ldmfd sp!, {r4, r5, r6, pc}
_020DEB68:
	ldrh r1, [r5, #0xe]
	add r0, r4, #0x2200
	strh r1, [r0, #0xea]
_020DEB74:
	mov r0, #8
	bl FUN_ov15_020dd160
	bl FUN_ov15_020de32c
	ldmfd sp!, {r4, r5, r6, pc}
_020DEB84:
	mov r0, #0xb
	bl FUN_ov15_020dd160
	add r0, r4, #0x2e0
	ldr r3, _020DEBB0 ; =0x0000045E
	add r1, r0, #0x1000
	mov r0, #7
	mov r2, #0
	bl FUN_ov15_020dd0c8
	ldmfd sp!, {r4, r5, r6, pc}
_020DEBA8: .word 0x000007D7
_020DEBAC: .word FUN_ov15_020dec74
_020DEBB0: .word 0x0000045E
	arm_func_end FUN_ov15_020de98c

	arm_func_start FUN_ov15_020debb4
FUN_ov15_020debb4: ; 0x020DEBB4
	stmfd sp!, {r3, r4, r5, lr}
	mov r4, r0
	bl FUN_ov15_020dcedc
	ldrh r1, [r4, #2]
	mov r5, r0
	cmp r1, #4
	addls pc, pc, r1, lsl #2
	b _020DEC48
_020DEBD4: ; jump table
	b _020DEBE8 ; case 0
	b _020DEC38 ; case 1
	b _020DEC48 ; case 2
	b _020DEC38 ; case 3
	b _020DEC48 ; case 4
_020DEBE8:
	add r0, r5, #0x1000
	ldrb r0, [r0, #0x2de]
	cmp r0, #0xc
	bne _020DEC08
	mov r0, #0xa
	bl FUN_ov15_020dd160
	bl FUN_ov15_020de32c
	ldmfd sp!, {r3, r4, r5, pc}
_020DEC08:
	add r1, r5, #0x2200
	mov r4, #0
	mov r0, #3
	strh r4, [r1, #0xe8]
	bl FUN_ov15_020dd160
	add r1, r5, #0x2e0
	ldr r3, _020DEC6C ; =0x00000481
	mov r0, r4
	mov r2, r4
	add r1, r1, #0x1000
	bl FUN_ov15_020dd0c8
	ldmfd sp!, {r3, r4, r5, pc}
_020DEC38:
	mov r0, #0xa
	bl FUN_ov15_020dd160
	bl FUN_ov15_020de32c
	ldmfd sp!, {r3, r4, r5, pc}
_020DEC48:
	mov r0, #0xb
	bl FUN_ov15_020dd160
	add r0, r5, #0x2e0
	ldr r3, _020DEC70 ; =0x00000493
	add r1, r0, #0x1000
	mov r0, #7
	mov r2, #0
	bl FUN_ov15_020dd0c8
	ldmfd sp!, {r3, r4, r5, pc}
_020DEC6C: .word 0x00000481
_020DEC70: .word 0x00000493
	arm_func_end FUN_ov15_020debb4

	arm_func_start FUN_ov15_020dec74
FUN_ov15_020dec74: ; 0x020DEC74
	stmfd sp!, {r3, r4, r5, lr}
	mov r4, r0
	bl FUN_ov15_020dcedc
	ldrh r1, [r4, #2]
	mov r5, r0
	cmp r1, #0
	bne _020DED50
	ldrh r0, [r4, #4]
	cmp r0, #0xe
	beq _020DECA8
	cmp r0, #0xf
	beq _020DECF0
	b _020DED2C
_020DECA8:
	add r0, r5, #0x1000
	ldrb r0, [r0, #0x2de]
	cmp r0, #0xc
	bne _020DECC8
	mov r0, #8
	bl FUN_ov15_020dd160
	bl FUN_ov15_020de32c
	ldmfd sp!, {r3, r4, r5, pc}
_020DECC8:
	mov r4, #9
	mov r0, r4
	bl FUN_ov15_020dd160
	add r1, r5, #0x2e0
	mov r0, #0
	mov r2, r0
	add r1, r1, #0x1000
	rsb r3, r4, #0x4c0
	bl FUN_ov15_020dd0c8
	ldmfd sp!, {r3, r4, r5, pc}
_020DECF0:
	ldr r0, [r4, #8]
	ldrh r0, [r0, #0xe]
	mov r0, r0, asr #8
	and r0, r0, #0xff
	bl FUN_ov15_020ddcf0
	ldr r0, [r4, #8]
	mov r1, #0x620
	bl DC_InvalidateRange
	ldr r2, [r4, #8]
	ldrh r3, [r2, #6]
	add r0, r2, #0x1e
	add r1, r2, #0x18
	add r2, r2, #0x2c
	bl FUN_ov15_020dd918
	ldmfd sp!, {r3, r4, r5, pc}
_020DED2C:
	mov r0, #0xb
	bl FUN_ov15_020dd160
	add r0, r5, #0x2e0
	add r1, r0, #0x1000
	ldrh r2, [r4, #4]
	ldr r3, _020DED74 ; =0x000004C6
	mov r0, #7
	bl FUN_ov15_020dd0c8
	ldmfd sp!, {r3, r4, r5, pc}
_020DED50:
	mov r0, #0xb
	bl FUN_ov15_020dd160
	add r0, r5, #0x2e0
	ldr r3, _020DED78 ; =0x000004D1
	add r1, r0, #0x1000
	mov r0, #7
	mov r2, #0
	bl FUN_ov15_020dd0c8
	ldmfd sp!, {r3, r4, r5, pc}
_020DED74: .word 0x000004C6
_020DED78: .word 0x000004D1
	arm_func_end FUN_ov15_020dec74

	arm_func_start FUN_ov15_020ded7c
FUN_ov15_020ded7c: ; 0x020DED7C
	stmfd sp!, {r3, r4, r5, lr}
	mov r4, r0
	bl FUN_ov15_020dcedc
	ldrh r1, [r4, #2]
	mov r5, r0
	cmp r1, #4
	addls pc, pc, r1, lsl #2
	b _020DEE60
_020DED9C: ; jump table
	b _020DEDB0 ; case 0
	b _020DEE50 ; case 1
	b _020DEE60 ; case 2
	b _020DEE50 ; case 3
	b _020DEE60 ; case 4
_020DEDB0:
	add r0, r5, #0x1000
	ldrb r0, [r0, #0x2de]
	cmp r0, #0xc
	bne _020DEDD0
	mov r0, #0xa
	bl FUN_ov15_020dd160
	bl FUN_ov15_020de32c
	ldmfd sp!, {r3, r4, r5, pc}
_020DEDD0:
	mov r4, #0
	ldr r0, _020DEE84 ; =FUN_ov15_020debb4
	mov r1, r4
	bl FUN_020135f4
	cmp r0, #2
	ldmeqfd sp!, {r3, r4, r5, pc}
	cmp r0, #3
	beq _020DEE1C
	cmp r0, #8
	bne _020DEE2C
	mov r0, #0xc
	bl FUN_ov15_020dd160
	add r0, r5, #0x2e0
	add r1, r0, #0x1000
	ldr r3, _020DEE88 ; =0x000004FA
	mov r2, r4
	mov r0, #1
	bl FUN_ov15_020dd0c8
	ldmfd sp!, {r3, r4, r5, pc}
_020DEE1C:
	mov r0, #0xa
	bl FUN_ov15_020dd160
	bl FUN_ov15_020de32c
	ldmfd sp!, {r3, r4, r5, pc}
_020DEE2C:
	mov r0, #0xb
	bl FUN_ov15_020dd160
	add r0, r5, #0x2e0
	add r1, r0, #0x1000
	ldr r3, _020DEE8C ; =0x00000506
	mov r2, r4
	mov r0, #7
	bl FUN_ov15_020dd0c8
	ldmfd sp!, {r3, r4, r5, pc}
_020DEE50:
	mov r0, #0xa
	bl FUN_ov15_020dd160
	bl FUN_ov15_020de32c
	ldmfd sp!, {r3, r4, r5, pc}
_020DEE60:
	mov r0, #0xb
	bl FUN_ov15_020dd160
	add r1, r5, #0x2e0
	mov r0, #7
	add r1, r1, #0x1000
	rsb r3, r0, #0x520
	mov r2, #0
	bl FUN_ov15_020dd0c8
	ldmfd sp!, {r3, r4, r5, pc}
_020DEE84: .word FUN_ov15_020debb4
_020DEE88: .word 0x000004FA
_020DEE8C: .word 0x00000506
	arm_func_end FUN_ov15_020ded7c

	arm_func_start FUN_ov15_020dee90
FUN_ov15_020dee90: ; 0x020DEE90
	stmfd sp!, {r3, r4, r5, r6, lr}
	sub sp, sp, #4
	mov r4, r0
	mov r5, #3
	bl FUN_ov15_020dcedc
	ldrh r1, [r4, #2]
	mov r4, r0
	cmp r1, #0
	bne _020DF13C
	add r1, r4, #0x1000
	mov r6, #0
	strb r6, [r1, #0x2dd]
	add r0, r4, #0x2200
	strh r6, [r0, #0xe8]
	ldrb r2, [r1, #0x2de]
	cmp r2, #0xd
	addls pc, pc, r2, lsl #2
	b _020DF114
_020DEED8: ; jump table
	b _020DF114 ; case 0
	b _020DF114 ; case 1
	b _020DF114 ; case 2
	b _020DF114 ; case 3
	b _020DF114 ; case 4
	b _020DEF10 ; case 5
	b _020DEF10 ; case 6
	b _020DEF34 ; case 7
	b _020DEF58 ; case 8
	b _020DF058 ; case 9
	b _020DF080 ; case 10
	b _020DF114 ; case 11
	b _020DF058 ; case 12
	b _020DF0A8 ; case 13
_020DEF10:
	mov r0, r5
	bl FUN_ov15_020dd160
	ldr r3, _020DF160 ; =0x0000053C
	mov r1, r6
	mov r2, r6
	mov r0, #1
	bl FUN_ov15_020dd0c8
	add sp, sp, #4
	ldmfd sp!, {r3, r4, r5, r6, pc}
_020DEF34:
	mov r0, r5
	bl FUN_ov15_020dd160
	ldr r3, _020DF164 ; =0x00000542
	mov r0, r6
	mov r1, r6
	mov r2, r6
	bl FUN_ov15_020dd0c8
	add sp, sp, #4
	ldmfd sp!, {r3, r4, r5, r6, pc}
_020DEF58:
	ldrh r5, [r0, #0xea]
	strh r6, [r0, #0xea]
	cmp r5, #0x12
	bne _020DF030
	add r0, r4, #0x1300
	ldrh r2, [r0, #0x10]
	and r3, r2, #0x24
	cmp r3, #0x24
	beq _020DF030
	orr r2, r2, #0x24
	strh r2, [r0, #0x10]
	ldr r1, [r1, #0x2d4]
	mov r3, #1
	and r0, r1, #0xc0000
	cmp r0, #0xc0000
	and r0, r1, #0x30000
	moveq r6, #1
	cmp r0, #0x30000
	mov r0, r6, lsl #0x10
	mov r6, r0, lsr #0x10
	add r1, r4, #0x2e0
	ldr r0, _020DF168 ; =FUN_ov15_020de98c
	moveq r3, #0
	add r1, r1, #0x1000
	mov r2, #0
	str r6, [sp]
	bl FUN_02013528
	cmp r0, #2
	addeq sp, sp, #4
	ldmeqfd sp!, {r3, r4, r5, r6, pc}
	cmp r0, #3
	beq _020DF008
	cmp r0, #8
	bne _020DF008
	mov r0, #0xc
	bl FUN_ov15_020dd160
	add r0, r4, #0x2e0
	add r1, r0, #0x1000
	ldr r3, _020DF16C ; =0x00000563
	mov r2, r5
	mov r0, #1
	bl FUN_ov15_020dd0c8
	add sp, sp, #4
	ldmfd sp!, {r3, r4, r5, r6, pc}
_020DF008:
	mov r0, #0xb
	bl FUN_ov15_020dd160
	add r0, r4, #0x2e0
	ldr r3, _020DF170 ; =0x0000056C
	mov r2, r5
	add r1, r0, #0x1000
	mov r0, #7
	bl FUN_ov15_020dd0c8
	add sp, sp, #4
	ldmfd sp!, {r3, r4, r5, r6, pc}
_020DF030:
	mov r0, #3
	bl FUN_ov15_020dd160
	add r0, r4, #0x2e0
	add r1, r0, #0x1000
	ldr r3, _020DF174 ; =0x00000574
	mov r2, r5
	mov r0, #1
	bl FUN_ov15_020dd0c8
	add sp, sp, #4
	ldmfd sp!, {r3, r4, r5, r6, pc}
_020DF058:
	mov r0, r5
	bl FUN_ov15_020dd160
	add r1, r4, #0x2e0
	ldr r3, _020DF178 ; =0x0000057C
	mov r0, r6
	add r1, r1, #0x1000
	mov r2, #1
	bl FUN_ov15_020dd0c8
	add sp, sp, #4
	ldmfd sp!, {r3, r4, r5, r6, pc}
_020DF080:
	mov r0, r5
	bl FUN_ov15_020dd160
	add r1, r4, #0x2e0
	mov r0, r6
	mov r2, r6
	add r1, r1, #0x1000
	add r3, r5, #0x580
	bl FUN_ov15_020dd0c8
	add sp, sp, #4
	ldmfd sp!, {r3, r4, r5, r6, pc}
_020DF0A8:
	ldr r0, _020DF17C ; =FUN_ov15_020de3f4
	bl FUN_0201306c
	cmp r0, #2
	addeq sp, sp, #4
	ldmeqfd sp!, {r3, r4, r5, r6, pc}
	cmp r0, #3
	beq _020DF0F0
	cmp r0, #8
	bne _020DF0F0
	mov r0, #0xc
	bl FUN_ov15_020dd160
	mov r0, #1
	mov r1, r6
	mov r2, r6
	add r3, r0, #0x590
	bl FUN_ov15_020dd0c8
	add sp, sp, #4
	ldmfd sp!, {r3, r4, r5, r6, pc}
_020DF0F0:
	mov r0, #0xb
	bl FUN_ov15_020dd160
	mov r1, #0
	ldr r3, _020DF180 ; =0x0000059A
	mov r2, r1
	mov r0, #7
	bl FUN_ov15_020dd0c8
	add sp, sp, #4
	ldmfd sp!, {r3, r4, r5, r6, pc}
_020DF114:
	mov r0, #0xb
	bl FUN_ov15_020dd160
	add r0, r4, #0x1000
	ldrb r2, [r0, #0x2de]
	mov r0, #7
	mov r1, #0
	mov r3, #0x5a0
	bl FUN_ov15_020dd0c8
	add sp, sp, #4
	ldmfd sp!, {r3, r4, r5, r6, pc}
_020DF13C:
	mov r0, #0xb
	bl FUN_ov15_020dd160
	mov r0, #7
	mov r1, #0
	mov r2, r1
	add r3, r0, #0x5a0
	bl FUN_ov15_020dd0c8
	add sp, sp, #4
	ldmfd sp!, {r3, r4, r5, r6, pc}
_020DF160: .word 0x0000053C
_020DF164: .word 0x00000542
_020DF168: .word FUN_ov15_020de98c
_020DF16C: .word 0x00000563
_020DF170: .word 0x0000056C
_020DF174: .word 0x00000574
_020DF178: .word 0x0000057C
_020DF17C: .word FUN_ov15_020de3f4
_020DF180: .word 0x0000059A
	arm_func_end FUN_ov15_020dee90

	arm_func_start FUN_ov15_020df184
FUN_ov15_020df184: ; 0x020DF184
	stmfd sp!, {r4, r5, r6, r7, r8, lr}
	mov r8, r2
	mov r7, r0
	mov r6, r1
	mov r4, #0
	bl FUN_ov15_020dcedc
	mov r5, r0
	mov r0, r8
	bl FUN_ov15_020dce04
	add r1, r5, #0x600
	add r0, r5, #0x2000
	str r1, [r0, #0x2a0]
	add r1, r5, #0x2200
	mov r2, #0x400
	mov r0, r4
	strh r2, [r1, #0xa4]
	bl FUN_ov15_020dd02c
	mov r1, #1
	mov r0, r1, lsl r0
	mov r1, r0, asr #1
	add r0, r5, #0x2200
	strh r1, [r0, #0xa6]
	add r0, r5, #0x1200
	ldrh r0, [r0, #0xd8]
	cmp r0, #0
	bne _020DF1F0
	bl FUN_02012d08
_020DF1F0:
	add r1, r5, #0x2200
	strh r0, [r1, #0xa8]
	add r0, r5, #0x1000
	ldr r0, [r0, #0x2d4]
	mov r1, #1
	and r0, r0, #0x300000
	cmp r0, #0x300000
	moveq r1, #0
	add r0, r5, #0x2200
	strh r1, [r0, #0xb0]
	cmp r7, #0
	add r1, r5, #0xaa
	mov r2, #6
	bne _020DF230
	ldr r0, _020DF2A8 ; =0x020E3FE8
	b _020DF234
_020DF230:
	mov r0, r7
_020DF234:
	add r1, r1, #0x2200
	bl MI_CpuCopy8
	cmp r6, #0
	ldrne r0, _020DF2AC ; =0x020E3FF0
	add r1, r5, #0x2b4
	cmpne r6, r0
	mov r2, #0x20
	bne _020DF26C
	ldr r0, _020DF2AC ; =0x020E3FF0
	add r1, r1, #0x2000
	bl MI_CpuCopy8
	add r0, r5, #0x2200
	strh r4, [r0, #0xb2]
	b _020DF29C
_020DF26C:
	mov r0, r6
	add r1, r1, #0x2000
	bl MI_CpuCopy8
	mov r1, #0
_020DF27C:
	ldrb r0, [r6, r1]
	cmp r0, #0
	beq _020DF294
	add r1, r1, #1
	cmp r1, #0x20
	blt _020DF27C
_020DF294:
	add r0, r5, #0x2200
	strh r1, [r0, #0xb2]
_020DF29C:
	add r0, r5, #0x2000
	str r4, [r0, #0x2e4]
	ldmfd sp!, {r4, r5, r6, r7, r8, pc}
_020DF2A8: .word 0x020E3FE8
_020DF2AC: .word 0x020E3FF0
	arm_func_end FUN_ov15_020df184

	arm_func_start FUN_ov15_020df2b0
FUN_ov15_020df2b0: ; 0x020DF2B0
	stmfd sp!, {r3, r4, r5, lr}
	mov r5, r0
	bl FUN_ov15_020dd938
	ldrh r1, [r5]
	mov r4, r0
	cmp r1, #0x12
	ldmnefd sp!, {r3, r4, r5, pc}
	ldrh r0, [r5, #2]
	strh r0, [r4, #0x24]
	ldrh r0, [r5, #2]
	cmp r0, #0
	bne _020DF2E4
	bl FUN_ov15_020dd208
_020DF2E4:
	add r0, r4, #4
	bl OS_WakeupThread
	ldmfd sp!, {r3, r4, r5, pc}
	arm_func_end FUN_ov15_020df2b0

	arm_func_start FUN_ov15_020df2f0
FUN_ov15_020df2f0: ; 0x020DF2F0
	stmfd sp!, {r4, r5, r6, lr}
	mov r5, r0
	bl FUN_ov15_020dd938
	ldrh r1, [r5]
	mov r4, r0
	cmp r1, #0x12
	ldmnefd sp!, {r4, r5, r6, pc}
	ldrh r0, [r5, #2]
	strh r0, [r4, #0x24]
	ldrh r0, [r5, #2]
	cmp r0, #0
	bne _020DF324
	bl FUN_ov15_020dd208
_020DF324:
	ldrh r0, [r4, #0x24]
	mov r5, #0
	cmp r0, #0
	beq _020DF338
	mvn r5, #4
_020DF338:
	ldr r6, [r4, #0x2c]
	mov r1, #0
	add r0, r4, #0xc
	str r1, [r4, #0x2c]
	bl FUN_ov15_020ddb1c
	mov r0, r5
	blx r6
	ldmfd sp!, {r4, r5, r6, pc}
	arm_func_end FUN_ov15_020df2f0

	arm_func_start FUN_ov15_020df358
FUN_ov15_020df358: ; 0x020DF358
	stmfd sp!, {r4, r5, r6, r7, r8, lr}
	ldr r6, _020DF3E4 ; =0x0209A250
	mov r8, r0
	mov r7, #0
	mov r0, r6
	mov r1, #0x720
	str r7, [r8, #0xb4]
	str r7, [r8, #0xb8]
	str r7, [r8, #0xc0]
	bl FUN_0202de44
	mov r5, r0
	ldr r1, _020DF3E8 ; =0x4245384A
	ldr r2, _020DF3EC ; =FUN_ov15_020e0620
	ldr r3, _020DF3F0 ; =FUN_ov15_020e0688
	mov r0, r7
	bl FUN_ov15_020cc2d0
	mov r4, r0
	mov r0, r6
	mov r1, r5
	bl FUN_0202e1c0
	str r7, [r8, #0xb8]
	str r7, [r8, #0xc0]
	str r7, [r8, #0xa8]
	str r7, [r8, #0xbc]
	str r7, [r8, #0xac]
	str r7, [r8, #0xb0]
	mov r0, #1
	str r0, [r8, #0xb4]
	ldr r0, _020DF3F4 ; =0x020ED84C
	mov r1, r7
	mov r2, #0x200
	bl MI_CpuFill8
	str r7, [r8, #0xc0]
	mov r0, r4
	ldmfd sp!, {r4, r5, r6, r7, r8, pc}
_020DF3E4: .word unk_0209A250
_020DF3E8: .word 0x4245384A
_020DF3EC: .word FUN_ov15_020e0620
_020DF3F0: .word FUN_ov15_020e0688
_020DF3F4: .word ov15_020ED84C
	arm_func_end FUN_ov15_020df358

	arm_func_start FUN_ov15_020df3f8
FUN_ov15_020df3f8: ; 0x020DF3F8
	stmfd sp!, {r4, lr}
	mov r4, r0
	ldr r1, [r4, #0xc4]
	cmp r1, #0
	beq _020DF410
	bl FUN_ov15_020df564
_020DF410:
	ldr r1, [r4, #0xc0]
	ldr r0, [r4, #0xb4]
	add r1, r1, #1
	str r1, [r4, #0xc0]
	cmp r0, #0xa
	addls pc, pc, r0, lsl #2
	b _020DF4B4
_020DF42C: ; jump table
	b _020DF4B4 ; case 0
	b _020DF458 ; case 1
	b _020DF464 ; case 2
	b _020DF478 ; case 3
	b _020DF484 ; case 4
	b _020DF490 ; case 5
	b _020DF4B4 ; case 6
	b _020DF4B4 ; case 7
	b _020DF49C ; case 8
	b _020DF4A8 ; case 9
	b _020DF4AC ; case 10
_020DF458:
	mov r0, #0
_020DF45C:
	str r0, [r4, #0xc0]
	b _020DF4B4
_020DF464:
	mov r0, #0
	mov r1, #3
	str r1, [r4, #0xb4]
	str r0, [r4, #0xb8]
	b _020DF45C
_020DF478:
	mov r0, r4
	bl FUN_ov15_020df664
	b _020DF4B4
_020DF484:
	mov r0, r4
	bl FUN_ov15_020df774
	b _020DF4B4
_020DF490:
	mov r0, r4
	bl FUN_ov15_020df8d0
	b _020DF4B4
_020DF49C:
	mov r0, r4
	bl FUN_ov15_020dfd00
	b _020DF4B4
_020DF4A8:
	b _020DF49C
_020DF4AC:
	mov r0, r4
	bl FUN_ov15_020dfd04
_020DF4B4:
	mov r0, r4
	bl FUN_ov15_020dfe14
	ldmfd sp!, {r4, pc}
	arm_func_end FUN_ov15_020df3f8

	arm_func_start FUN_ov15_020df4c0
FUN_ov15_020df4c0: ; 0x020DF4C0
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	ldr r0, [r0, #0xb4]
	cmp r0, #0
	ldmeqfd sp!, {r3, r4, r5, r6, r7, pc}
	mov r7, #0
	ldr r5, _020DF520 ; =0x0209A250
	ldr r6, _020DF524 ; =0x020ED84C
	mov r4, r7
_020DF4E0:
	ldr r0, [r6, r7, lsl #3]
	cmp r0, #0
	beq _020DF510
	add r0, r6, r7, lsl #3
	ldr r1, [r0, #4]
	cmp r1, #0
	beq _020DF504
	mov r0, r5
	bl FUN_0202e1c0
_020DF504:
	str r4, [r6, r7, lsl #3]
	add r0, r6, r7, lsl #3
	str r4, [r0, #4]
_020DF510:
	add r7, r7, #1
	cmp r7, #0x40
	blt _020DF4E0
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_020DF520: .word unk_0209A250
_020DF524: .word ov15_020ED84C
	arm_func_end FUN_ov15_020df4c0

	arm_func_start FUN_ov15_020df528
FUN_ov15_020df528: ; 0x020DF528
	ldr r1, [r0, #0xb4]
	cmp r1, #1
	moveq r1, #0
	moveq r2, #2
	streq r2, [r0, #0xb4]
	streq r1, [r0, #0xb8]
	streq r1, [r0, #0xc0]
	bx lr
	arm_func_end FUN_ov15_020df528

	arm_func_start FUN_ov15_020df548
FUN_ov15_020df548: ; 0x020DF548
	cmp r1, #0
	ldrne r3, [r0, #0xb4]
	strne r3, [r1]
	cmp r2, #0
	ldrne r0, [r0, #0xb8]
	strne r0, [r2]
	bx lr
	arm_func_end FUN_ov15_020df548

	arm_func_start FUN_ov15_020df564
FUN_ov15_020df564: ; 0x020DF564
	ldr r1, [r0, #0xb4]
	mov r3, #0
	str r3, [r0, #0xc4]
	cmp r1, #3
	beq _020DF58C
	cmp r1, #4
	beq _020DF5AC
	cmp r1, #5
	beq _020DF5E0
	b _020DF62C
_020DF58C:
	ldr r1, [r0, #0xb8]
	cmp r1, #4
	beq _020DF5A0
	cmp r1, #6
	bne _020DF62C
_020DF5A0:
	mov r1, #1
	str r1, [r0, #0xc4]
	b _020DF62C
_020DF5AC:
	ldr r1, [r0, #0xb8]
	cmp r1, #0
	cmpne r1, #1
	cmpne r1, #4
	cmpne r1, #6
	cmpne r1, #0xc
	moveq r2, #0xf
	moveq r1, #0
	streq r2, [r0, #0xb8]
	streq r1, [r0, #0xc0]
	bxeq lr
	cmp r1, #7
	b _020DF624
_020DF5E0:
	ldr r2, [r0, #0xb8]
	add r1, r2, #0
	cmp r1, #1
	bhi _020DF60C
	ldr r1, _020DF648 ; =0x020ED848
	mov r2, #1
	strb r2, [r1]
	mov r1, #0xf
	str r1, [r0, #0xb8]
	str r3, [r0, #0xc0]
	bx lr
_020DF60C:
	cmp r2, #0xc
	moveq r1, #0xf
	streq r1, [r0, #0xb8]
	streq r3, [r0, #0xc0]
	bxeq lr
	cmp r2, #2
_020DF624:
	moveq r1, #1
	streq r1, [r0, #0xc4]
_020DF62C:
	ldr r1, [r0, #0xc4]
	cmp r1, #0
	moveq r2, #0xd
	moveq r1, #0
	streq r2, [r0, #0xb8]
	streq r1, [r0, #0xc0]
	bx lr
_020DF648: .word ov15_020ED848
	arm_func_end FUN_ov15_020df564

	arm_func_start FUN_ov15_020df64c
FUN_ov15_020df64c: ; 0x020DF64C
	mov r1, #0
	mov r2, #0xa
	str r2, [r0, #0xb4]
	str r1, [r0, #0xb8]
	str r1, [r0, #0xc0]
	bx lr
	arm_func_end FUN_ov15_020df64c

	arm_func_start FUN_ov15_020df664
FUN_ov15_020df664: ; 0x020DF664
	stmfd sp!, {r3, r4, r5, lr}
	mov r5, r0
	ldr r1, [r5, #0xb8]
	mov r4, #0
	cmp r1, #0xf
	addls pc, pc, r1, lsl #2
	ldmfd sp!, {r3, r4, r5, pc}
_020DF680: ; jump table
	b _020DF6C0 ; case 0
	b _020DF6D0 ; case 1
	ldmfd sp!, {r3, r4, r5, pc} ; case 2
	ldmfd sp!, {r3, r4, r5, pc} ; case 3
	b _020DF6E8 ; case 4
	ldmfd sp!, {r3, r4, r5, pc} ; case 5
	ldmfd sp!, {r3, r4, r5, pc} ; case 6
	b _020DF704 ; case 7
	ldmfd sp!, {r3, r4, r5, pc} ; case 8
	ldmfd sp!, {r3, r4, r5, pc} ; case 9
	ldmfd sp!, {r3, r4, r5, pc} ; case 10
	ldmfd sp!, {r3, r4, r5, pc} ; case 11
	b _020DF730 ; case 12
	b _020DF74C ; case 13
	ldmfd sp!, {r3, r4, r5, pc} ; case 14
	b _020DF758 ; case 15
_020DF6C0:
	mov r0, #1
	str r0, [r5, #0xb8]
	str r4, [r5, #0xc0]
	ldmfd sp!, {r3, r4, r5, pc}
_020DF6D0:
	bl FUN_ov15_020c4198
	bl FUN_ov15_020c41c8
	mov r0, #4
	str r0, [r5, #0xb8]
	str r4, [r5, #0xc0]
	ldmfd sp!, {r3, r4, r5, pc}
_020DF6E8:
	bl FUN_ov15_020c4350
	bl FUN_ov15_020c42fc
	cmp r0, #0
	movne r0, #7
	strne r0, [r5, #0xb8]
	strne r4, [r5, #0xc0]
	ldmfd sp!, {r3, r4, r5, pc}
_020DF704:
	bl FUN_ov15_020c4490
	cmp r0, #4
	beq _020DF720
	cmp r0, #7
	ldmnefd sp!, {r3, r4, r5, pc}
	bl FUN_ov15_020c4690
	ldmfd sp!, {r3, r4, r5, pc}
_020DF720:
	mov r0, #0xc
	str r0, [r5, #0xb8]
	str r4, [r5, #0xc0]
	ldmfd sp!, {r3, r4, r5, pc}
_020DF730:
	add r0, r5, #0x68
	bl FUN_ov15_020c4808
	mov r0, #4
	str r0, [r5, #0xb4]
	str r4, [r5, #0xb8]
	str r4, [r5, #0xc0]
	ldmfd sp!, {r3, r4, r5, pc}
_020DF74C:
	mov r0, #0xf
	str r0, [r5, #0xb8]
	str r4, [r5, #0xc0]
_020DF758:
	bl FUN_ov15_020c471c
	cmp r0, #0
	movne r0, #7
	strne r0, [r5, #0xb4]
	strne r4, [r5, #0xb8]
	strne r4, [r5, #0xc0]
	ldmfd sp!, {r3, r4, r5, pc}
	arm_func_end FUN_ov15_020df664

	arm_func_start FUN_ov15_020df774
FUN_ov15_020df774: ; 0x020DF774
	stmfd sp!, {r3, r4, r5, lr}
	mov r5, r0
	ldr r0, [r5, #0xb8]
	mov r4, #0
	cmp r0, #0xf
	addls pc, pc, r0, lsl #2
	ldmfd sp!, {r3, r4, r5, pc}
_020DF790: ; jump table
	b _020DF7D0 ; case 0
	b _020DF7E0 ; case 1
	ldmfd sp!, {r3, r4, r5, pc} ; case 2
	ldmfd sp!, {r3, r4, r5, pc} ; case 3
	b _020DF7F0 ; case 4
	ldmfd sp!, {r3, r4, r5, pc} ; case 5
	ldmfd sp!, {r3, r4, r5, pc} ; case 6
	b _020DF804 ; case 7
	ldmfd sp!, {r3, r4, r5, pc} ; case 8
	ldmfd sp!, {r3, r4, r5, pc} ; case 9
	ldmfd sp!, {r3, r4, r5, pc} ; case 10
	ldmfd sp!, {r3, r4, r5, pc} ; case 11
	b _020DF854 ; case 12
	b _020DF868 ; case 13
	b _020DF87C ; case 14
	b _020DF8B4 ; case 15
_020DF7D0:
	mov r0, #1
	str r0, [r5, #0xb8]
	str r4, [r5, #0xc0]
	ldmfd sp!, {r3, r4, r5, pc}
_020DF7E0:
	mov r0, #4
	str r0, [r5, #0xb8]
	str r4, [r5, #0xc0]
	ldmfd sp!, {r3, r4, r5, pc}
_020DF7F0:
	bl FUN_ov15_020cc544
	mov r0, #7
	str r0, [r5, #0xb8]
	str r4, [r5, #0xc0]
	ldmfd sp!, {r3, r4, r5, pc}
_020DF804:
	bl FUN_ov15_020cc604
	cmp r0, #5
	addls pc, pc, r0, lsl #2
	ldmfd sp!, {r3, r4, r5, pc}
_020DF814: ; jump table
	ldmfd sp!, {r3, r4, r5, pc} ; case 0
	ldmfd sp!, {r3, r4, r5, pc} ; case 1
	ldmfd sp!, {r3, r4, r5, pc} ; case 2
	b _020DF844 ; case 3
	b _020DF82C ; case 4
	b _020DF834 ; case 5
_020DF82C:
	bl FUN_ov15_020c4690
	ldmfd sp!, {r3, r4, r5, pc}
_020DF834:
	mov r0, #0xf
	str r0, [r5, #0xb8]
	str r4, [r5, #0xc0]
	ldmfd sp!, {r3, r4, r5, pc}
_020DF844:
	mov r0, #0xc
	str r0, [r5, #0xb8]
	str r4, [r5, #0xc0]
	ldmfd sp!, {r3, r4, r5, pc}
_020DF854:
	mov r0, #5
	str r0, [r5, #0xb4]
	str r4, [r5, #0xb8]
	str r4, [r5, #0xc0]
	ldmfd sp!, {r3, r4, r5, pc}
_020DF868:
	bl FUN_ov15_020cc730
	mov r0, #0xe
	str r0, [r5, #0xb8]
	str r4, [r5, #0xc0]
	ldmfd sp!, {r3, r4, r5, pc}
_020DF87C:
	bl FUN_ov15_020cc604
	cmp r0, #5
	addls pc, pc, r0, lsl #2
	ldmfd sp!, {r3, r4, r5, pc}
_020DF88C: ; jump table
	b _020DF8A4 ; case 0
	ldmfd sp!, {r3, r4, r5, pc} ; case 1
	ldmfd sp!, {r3, r4, r5, pc} ; case 2
	b _020DF8A4 ; case 3
	ldmfd sp!, {r3, r4, r5, pc} ; case 4
	b _020DF8A4 ; case 5
_020DF8A4:
	mov r0, #0xf
	str r0, [r5, #0xb8]
	str r4, [r5, #0xc0]
	ldmfd sp!, {r3, r4, r5, pc}
_020DF8B4:
	bl FUN_ov15_020c471c
	cmp r0, #0
	movne r0, #7
	strne r0, [r5, #0xb4]
	strne r4, [r5, #0xb8]
	strne r4, [r5, #0xc0]
	ldmfd sp!, {r3, r4, r5, pc}
	arm_func_end FUN_ov15_020df774

	arm_func_start FUN_ov15_020df8d0
FUN_ov15_020df8d0: ; 0x020DF8D0
	stmfd sp!, {r4, r5, r6, lr}
	mov r6, r0
	ldr r1, [r6, #0xb8]
	mov r4, #0x3c
	cmp r1, #0xf
	mov r5, #0
	addls pc, pc, r1, lsl #2
	ldmfd sp!, {r4, r5, r6, pc}
_020DF8F0: ; jump table
	b _020DF930 ; case 0
	b _020DF940 ; case 1
	b _020DF96C ; case 2
	b _020DFA90 ; case 3
	b _020DFACC ; case 4
	b _020DFB40 ; case 5
	b _020DFB7C ; case 6
	b _020DFBF0 ; case 7
	b _020DF9A4 ; case 8
	b _020DF9DC ; case 9
	b _020DFA2C ; case 10
	b _020DFA58 ; case 11
	b _020DFC0C ; case 12
	b _020DFC54 ; case 13
	b _020DFC7C ; case 14
	b _020DFCB4 ; case 15
_020DF930:
	mov r0, #1
	str r0, [r6, #0xb8]
	str r5, [r6, #0xc0]
	ldmfd sp!, {r4, r5, r6, pc}
_020DF940:
	bl FUN_ov15_020e0540
	ldr r0, _020DFCDC ; =FUN_ov15_020e05c4
	ldr r1, _020DFCE0 ; =0x020E5C94
	ldr r2, _020DFCE4 ; =0x020E5C9C
	bl FUN_ov15_020ccbcc
	cmp r0, #0
	movne r0, #2
	strne r0, [r6, #0xb8]
	strne r5, [r6, #0xc0]
	strne r4, [r6, #0x3a0]
	ldmfd sp!, {r4, r5, r6, pc}
_020DF96C:
	bl FUN_ov15_020e055c
	cmp r0, #0
	ldmeqfd sp!, {r4, r5, r6, pc}
	ldr r0, [r6, #0x3a0]
	subs r0, r0, #1
	str r0, [r6, #0x3a0]
	ldmplfd sp!, {r4, r5, r6, pc}
	mov r0, r6
	bl FUN_ov15_020e05b4
	cmp r0, #0
	moveq r0, #8
	streq r0, [r6, #0xb8]
	streq r5, [r6, #0xc0]
	ldmfd sp!, {r4, r5, r6, pc}
_020DF9A4:
	ldr r0, _020DFCE8 ; =0x020E5CB0
	ldr r1, _020DFCEC ; =0x020E5CB4
	ldr r2, _020DFCF0 ; =0x020E5CB8
	bl FUN_ov15_020ccea8
	mov r0, r6
	bl FUN_ov15_020e0540
	add r0, r6, #0x390
	bl FUN_ov15_020ccedc
	cmp r0, #0
	movne r0, #9
	strne r0, [r6, #0xb8]
	strne r5, [r6, #0xc0]
	strne r4, [r6, #0x3a0]
	ldmfd sp!, {r4, r5, r6, pc}
_020DF9DC:
	bl FUN_ov15_020e055c
	cmp r0, #0
	ldmeqfd sp!, {r4, r5, r6, pc}
	ldr r0, [r6, #0x3a0]
	subs r0, r0, #1
	str r0, [r6, #0x3a0]
	ldmplfd sp!, {r4, r5, r6, pc}
	mov r0, r6
	bl FUN_ov15_020e05b4
	cmp r0, #0
	ldmnefd sp!, {r4, r5, r6, pc}
	ldr r0, [r6, #0x390]
	cmp r0, #0
	moveq r0, #7
	streq r0, [r6, #0xb8]
	streq r5, [r6, #0xc0]
	movne r0, #0xa
	strne r0, [r6, #0xb8]
	strne r5, [r6, #0xc0]
	ldmfd sp!, {r4, r5, r6, pc}
_020DFA2C:
	bl FUN_ov15_020e0540
	mov r1, r5
	add r0, r6, #0xd0
	mov r2, #4
	bl FUN_ov15_020ccf7c
	cmp r0, #0
	movne r0, #0xb
	strne r0, [r6, #0xb8]
	strne r5, [r6, #0xc0]
	strne r4, [r6, #0x3a0]
	ldmfd sp!, {r4, r5, r6, pc}
_020DFA58:
	bl FUN_ov15_020e055c
	cmp r0, #0
	ldmeqfd sp!, {r4, r5, r6, pc}
	ldr r0, [r6, #0x3a0]
	subs r0, r0, #1
	str r0, [r6, #0x3a0]
	ldmplfd sp!, {r4, r5, r6, pc}
	mov r0, r6
	bl FUN_ov15_020e05b4
	cmp r0, #0
	moveq r0, #3
	streq r0, [r6, #0xb8]
	streq r5, [r6, #0xc0]
	ldmfd sp!, {r4, r5, r6, pc}
_020DFA90:
	bl FUN_ov15_020e0540
	ldr r1, _020DFCF4 ; =0x020EDA4C
	add r0, r6, #0x230
	mov r2, #0x200
	bl FUN_ov15_020cd040
	cmp r0, #0
	ldmeqfd sp!, {r4, r5, r6, pc}
	mov r0, #4
	str r0, [r6, #0xb8]
	str r5, [r6, #0xc0]
	str r5, [r6, #0x39c]
	str r5, [r6, #0x394]
	str r5, [r6, #0x398]
	str r4, [r6, #0x3a0]
	ldmfd sp!, {r4, r5, r6, pc}
_020DFACC:
	bl FUN_ov15_020e055c
	cmp r0, #0
	bne _020DFB14
	add r0, r6, #0x394
	add r1, r6, #0x398
	bl FUN_ov15_020cd158
	cmp r0, #0
	ldrne r1, [r6, #0x398]
	cmpne r1, #0
	ldmeqfd sp!, {r4, r5, r6, pc}
	ldr r2, [r6, #0x394]
	mov r0, #0x64
	mul r0, r2, r0
	bl FUN_0201fbc8
	ldr r1, [r6, #0x39c]
	cmp r1, r0
	strne r0, [r6, #0x39c]
	ldmfd sp!, {r4, r5, r6, pc}
_020DFB14:
	ldr r0, [r6, #0x3a0]
	subs r0, r0, #1
	str r0, [r6, #0x3a0]
	ldmplfd sp!, {r4, r5, r6, pc}
	mov r0, r6
	bl FUN_ov15_020e05b4
	cmp r0, #0
	moveq r0, #5
	streq r0, [r6, #0xb8]
	streq r5, [r6, #0xc0]
	ldmfd sp!, {r4, r5, r6, pc}
_020DFB40:
	bl FUN_ov15_020e0540
	ldr r1, _020DFCF8 ; =0x020EDC4C
	add r0, r6, #0x2e0
	mov r2, #0x200
	bl FUN_ov15_020cd040
	cmp r0, #0
	ldmeqfd sp!, {r4, r5, r6, pc}
	mov r0, #6
	str r0, [r6, #0xb8]
	str r5, [r6, #0xc0]
	str r5, [r6, #0x39c]
	str r5, [r6, #0x394]
	str r5, [r6, #0x398]
	str r4, [r6, #0x3a0]
	ldmfd sp!, {r4, r5, r6, pc}
_020DFB7C:
	bl FUN_ov15_020e055c
	cmp r0, #0
	bne _020DFBC4
	add r0, r6, #0x394
	add r1, r6, #0x398
	bl FUN_ov15_020cd158
	cmp r0, #0
	ldrne r1, [r6, #0x398]
	cmpne r1, #0
	ldmeqfd sp!, {r4, r5, r6, pc}
	ldr r2, [r6, #0x394]
	mov r0, #0x64
	mul r0, r2, r0
	bl FUN_0201fbc8
	ldr r1, [r6, #0x39c]
	cmp r1, r0
	strne r0, [r6, #0x39c]
	ldmfd sp!, {r4, r5, r6, pc}
_020DFBC4:
	ldr r0, [r6, #0x3a0]
	subs r0, r0, #1
	str r0, [r6, #0x3a0]
	ldmplfd sp!, {r4, r5, r6, pc}
	mov r0, r6
	bl FUN_ov15_020e05b4
	cmp r0, #0
	moveq r0, #7
	streq r0, [r6, #0xb8]
	streq r5, [r6, #0xc0]
	ldmfd sp!, {r4, r5, r6, pc}
_020DFBF0:
	bl FUN_ov15_020e0540
	bl FUN_ov15_020cce24
	mov r0, #0xc
	str r0, [r6, #0xb8]
	str r5, [r6, #0xc0]
	str r4, [r6, #0x3a0]
	ldmfd sp!, {r4, r5, r6, pc}
_020DFC0C:
	bl FUN_ov15_020e0588
	cmp r0, #0
	ldmeqfd sp!, {r4, r5, r6, pc}
	ldr r0, [r6, #0x3a0]
	subs r0, r0, #1
	str r0, [r6, #0x3a0]
	ldmplfd sp!, {r4, r5, r6, pc}
	bl FUN_ov15_020c471c
	cmp r0, #0
	ldmeqfd sp!, {r4, r5, r6, pc}
	mov r0, r6
	bl FUN_ov15_020dfdbc
	cmp r0, #0
	moveq r0, #6
	streq r0, [r6, #0xb4]
	streq r5, [r6, #0xb8]
	streq r5, [r6, #0xc0]
	ldmfd sp!, {r4, r5, r6, pc}
_020DFC54:
	bl FUN_ov15_020e0540
	bl FUN_ov15_020cd0f8
	cmp r0, #0
	ldreq r0, _020DFCFC ; =0x020ED848
	moveq r1, #1
	streqb r1, [r0, #1]
	mov r0, #0xe
	str r0, [r6, #0xb8]
	str r5, [r6, #0xc0]
	ldmfd sp!, {r4, r5, r6, pc}
_020DFC7C:
	bl FUN_ov15_020e055c
	cmp r0, #0
	ldmeqfd sp!, {r4, r5, r6, pc}
	mov r0, r6
	bl FUN_ov15_020e0540
	bl FUN_ov15_020cce24
	cmp r0, #0
	ldreq r0, _020DFCFC ; =0x020ED848
	moveq r1, #1
	streqb r1, [r0]
	mov r0, #0xf
	str r0, [r6, #0xb8]
	str r5, [r6, #0xc0]
	ldmfd sp!, {r4, r5, r6, pc}
_020DFCB4:
	bl FUN_ov15_020e0588
	cmp r0, #0
	ldmeqfd sp!, {r4, r5, r6, pc}
	bl FUN_ov15_020c471c
	cmp r0, #0
	movne r0, #7
	strne r0, [r6, #0xb4]
	strne r5, [r6, #0xb8]
	strne r5, [r6, #0xc0]
	ldmfd sp!, {r4, r5, r6, pc}
_020DFCDC: .word FUN_ov15_020e05c4
_020DFCE0: .word ov15_020E5C94
_020DFCE4: .word ov15_020E5C9C
_020DFCE8: .word ov15_020E5CB0
_020DFCEC: .word ov15_020E5CB4
_020DFCF0: .word ov15_020E5CB8
_020DFCF4: .word ov15_020EDA4C
_020DFCF8: .word ov15_020EDC4C
_020DFCFC: .word ov15_020ED848
	arm_func_end FUN_ov15_020df8d0

	arm_func_start FUN_ov15_020dfd00
FUN_ov15_020dfd00: ; 0x020DFD00
	bx lr
	arm_func_end FUN_ov15_020dfd00

	arm_func_start FUN_ov15_020dfd04
FUN_ov15_020dfd04: ; 0x020DFD04
	stmfd sp!, {r4, r5, r6, lr}
	mov r4, r0
	ldr r1, [r4, #0xac]
	mov r5, #1
	cmp r1, #7
	mov r6, #0
	addls pc, pc, r1, lsl #2
	b _020DFD7C
_020DFD24: ; jump table
	b _020DFD44 ; case 0
	b _020DFD54 ; case 1
	b _020DFD54 ; case 2
	b _020DFD7C ; case 3
	b _020DFD7C ; case 4
	b _020DFD5C ; case 5
	b _020DFD64 ; case 6
	b _020DFD7C ; case 7
_020DFD44:
	ldr r0, [r4, #0xbc]
	cmp r0, #0
	moveq r6, r5
	b _020DFD7C
_020DFD54:
	mov r6, r5
	b _020DFD7C
_020DFD5C:
	bl FUN_ov15_020e0588
	b _020DFD74
_020DFD64:
	bl FUN_ov15_020e0588
	cmp r0, #0
	beq _020DFD7C
	bl FUN_ov15_020c471c
_020DFD74:
	cmp r0, #0
	movne r6, r5
_020DFD7C:
	ldr r0, [r4, #0xbc]
	cmp r0, #1
	cmpne r0, #2
	moveq r6, #1
	cmp r6, #0
	ldmeqfd sp!, {r4, r5, r6, pc}
	mov r0, #0
	str r5, [r4, #0xb4]
	str r0, [r4, #0xb8]
	str r0, [r4, #0xc0]
	str r0, [r4, #0xa8]
	str r0, [r4, #0xbc]
	str r0, [r4, #0xac]
	str r0, [r4, #0xb0]
	bl FUN_ov15_020cc27c
	ldmfd sp!, {r4, r5, r6, pc}
	arm_func_end FUN_ov15_020dfd04

	arm_func_start FUN_ov15_020dfdbc
FUN_ov15_020dfdbc: ; 0x020DFDBC
	stmfd sp!, {r4, lr}
	mov r4, r0
	ldr r1, [r4, #0x390]
	mov r2, #0
	cmp r1, #0
	str r2, [r4, #0xbc]
	moveq r0, #2
	streq r0, [r4, #0xbc]
	beq _020DFDF0
	bl FUN_ov15_020e03b4
	cmp r0, #0
	moveq r0, #1
	streq r0, [r4, #0xbc]
_020DFDF0:
	ldr r0, [r4, #0xbc]
	cmp r0, #0
	movne r1, #0
	movne r0, #9
	strne r0, [r4, #0xb4]
	ldr r0, [r4, #0xbc]
	strne r1, [r4, #0xb8]
	strne r1, [r4, #0xc0]
	ldmfd sp!, {r4, pc}
	arm_func_end FUN_ov15_020dfdbc

	arm_func_start FUN_ov15_020dfe14
FUN_ov15_020dfe14: ; 0x020DFE14
	stmfd sp!, {r4, lr}
	mov r4, r0
	ldr r0, [r4, #0xa8]
	cmp r0, #0
	ldmnefd sp!, {r4, pc}
	add r0, r4, #0xb0
	add r1, r4, #0xac
	bl FUN_ov15_020cc1a0
	str r0, [r4, #0xa8]
	cmp r0, #0
	ldmeqfd sp!, {r4, pc}
	ldr r12, [r4, #0xb4]
	ldr r3, [r4, #0xb8]
	mov r2, #0
	ldr r0, [r4, #0xac]
	mov r1, #8
	str r12, [r4, #0xc8]
	str r3, [r4, #0xcc]
	str r1, [r4, #0xb4]
	str r2, [r4, #0xb8]
	str r2, [r4, #0xc0]
	cmp r0, #5
	beq _020DFE78
	cmp r0, #6
	bne _020DFE94
_020DFE78:
	mov r0, r4
	bl FUN_ov15_020e0540
	bl FUN_ov15_020cce24
	cmp r0, #0
	ldreq r0, _020DFE9C ; =0x020ED848
	moveq r1, #1
	streqb r1, [r0]
_020DFE94:
	ldr r0, [r4, #0xa8]
	ldmfd sp!, {r4, pc}
_020DFE9C: .word ov15_020ED848
	arm_func_end FUN_ov15_020dfe14

	arm_func_start FUN_ov15_020dfea0
FUN_ov15_020dfea0: ; 0x020DFEA0
	ldr r1, _020DFEBC ; =0x020A11DC
	ldrb r0, [r0, #0x3a4]
	ldrb r1, [r1, #2]
	cmp r1, r0
	movlo r0, #1
	movhs r0, #0
	bx lr
_020DFEBC: .word unk_020A11DC
	arm_func_end FUN_ov15_020dfea0

	arm_func_start FUN_ov15_020dfec0
FUN_ov15_020dfec0: ; 0x020DFEC0
	ldr r1, _020DFEE4 ; =0x020A11DC
	add r0, r0, #0x300
	ldrh r1, [r1]
	ldrh r0, [r0, #0xa6]
	mvn r1, r1
	tst r1, r0
	movne r0, #1
	moveq r0, #0
	bx lr
_020DFEE4: .word unk_020A11DC
	arm_func_end FUN_ov15_020dfec0

	arm_func_start FUN_ov15_020dfee8
FUN_ov15_020dfee8: ; 0x020DFEE8
	stmfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, lr}
	sub sp, sp, #0xd4
	ldr r7, _020E007C ; =0x020A11DC
	mov r10, r0
	ldrb r1, [r7, #2]
	ldrb r0, [r10, #0x3a4]
	cmp r1, r0
	bhs _020DFFC0
	mov r6, #0
	add r4, sp, #0x38
	b _020DFF28
_020DFF14:
	mov r0, r7
	mov r1, r6
	bl  FUN_ov131_02142694
	strb r0, [r4, r6]
	add r6, r6, #1
_020DFF28:
	cmp r6, #0x34
	blt _020DFF14
	ldrb r0, [r10, #0x3a4]
	mov r6, #0
	add r4, sp, #4
	strb r0, [r7, #2]
	b _020DFF58
_020DFF44:
	mov r0, r7
	mov r1, r6
	bl  FUN_ov131_02142694
	strb r0, [r4, r6]
	add r6, r6, #1
_020DFF58:
	cmp r6, #0x34
	blt _020DFF44
	ldr r0, _020E0080 ; =0x02099F44
	add r8, sp, #0x6c
	ldr r0, [r0]
	mov r1, r8
	mov r2, #0x34
	bl  FUN_ov131_02140f30
	mov r9, #0
	ldr r4, _020E0084 ; =0x020A9C40
	mov r11, #7
	add r6, sp, #0x38
	add r5, sp, #4
	b _020DFFB8
_020DFF90:
	ldrb r1, [r6, r9]
	ldrb r0, [r5, r9]
	cmp r1, r0
	beq _020DFFB4
	mov r0, r9, lsl #1
	ldrh r2, [r8, r0]
	mov r0, r4
	mov r1, r11
	bl FUN_02045b74
_020DFFB4:
	add r9, r9, #1
_020DFFB8:
	cmp r9, #0x34
	blt _020DFF90
_020DFFC0:
	add r0, r10, #0x300
	ldrh r1, [r7]
	ldrh r0, [r0, #0xa6]
	mvn r1, r1
	ands r8, r1, r0
	addeq sp, sp, #0xd4
	ldmeqfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
	add r0, r10, #0xaa
	mov r6, #0
	add r5, r0, #0x300
	add r4, r7, #0xe
	add r11, sp, #0
	b _020E0058
_020DFFF4:
	mov r0, #1
	tst r8, r0, lsl r6
	beq _020E0054
	ldr r0, _020E0084 ; =0x020A9C40
	mov r1, #8
	add r2, r6, #1
	bl FUN_02045b74
	mov r0, #6
	mul r1, r6, r0
	add r0, r10, r1
	add r0, r0, #0x300
	ldrsh r9, [r0, #0xa8]
	add r0, r5, r1
	mov r1, r11
	mov r2, #4
	bl MI_CpuCopy8
	mov r0, #6
	mul r1, r6, r0
	add r0, r7, r1
	strh r9, [r0, #0xc]
	add r1, r4, r1
	mov r0, r11
	mov r2, #4
	bl MI_CpuCopy8
_020E0054:
	add r6, r6, #1
_020E0058:
	cmp r6, #0x10
	blt _020DFFF4
	add r0, r10, #0x300
	ldrh r1, [r7]
	ldrh r0, [r0, #0xa6]
	orr r0, r1, r0
	strh r0, [r7]
	add sp, sp, #0xd4
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
_020E007C: .word unk_020A11DC
_020E0080: .word unk_02099F44
_020E0084: .word unk_020A9C40
	arm_func_end FUN_ov15_020dfee8

	arm_func_start FUN_ov15_020e0088
FUN_ov15_020e0088: ; 0x020E0088
	ldr r12, _020E009C ; =MI_CpuFill8
	add r0, r0, #0x3a4
	mov r1, #0
	mov r2, #0x64
	bx r12
_020E009C: .word MI_CpuFill8
	arm_func_end FUN_ov15_020e0088

	arm_func_start FUN_ov15_020e00a0
FUN_ov15_020e00a0: ; 0x020E00A0
	ldr r1, [r0, #0xb4]
	cmp r1, #8
	cmpne r1, #9
	cmpne r1, #7
	movne r0, #0
	bxne lr
	cmp r1, #8
	ldreq r0, [r0, #0xac]
	cmpeq r0, #7
	moveq r0, #0
	movne r0, #1
	bx lr
	arm_func_end FUN_ov15_020e00a0

	arm_func_start FUN_ov15_020e00d0
FUN_ov15_020e00d0: ; 0x020E00D0
	ldr r0, [r0, #0xc4]
	bx lr
	arm_func_end FUN_ov15_020e00d0

	arm_func_start FUN_ov15_020e00d8
FUN_ov15_020e00d8: ; 0x020E00D8
	stmfd sp!, {r3, lr}
	ldr r1, [r0, #0xbc]
	cmp r1, #0
	ldrne r0, _020E035C ; =0x020E5CBC
	ldmnefd sp!, {r3, pc}
	ldr r2, [r0, #0xb0]
	ldr r1, _020E0360 ; =0x0000CB87
	cmp r2, #0
	rsblt r2, r2, #0
	cmp r2, r1
	bgt _020E01B0
	bge _020E0250
	sub r3, r1, #0x64
	cmp r2, r3
	bgt _020E0180
	sub r3, r1, #0x66
	cmp r2, r3
	blt _020E0138
	subne r3, r1, #0x65
	cmpne r2, r3
	subne r1, r1, #0x64
	cmpne r2, r1
	beq _020E0250
	b _020E0258
_020E0138:
	ldr r3, _020E0364 ; =0x00004E8E
	cmp r2, r3
	bgt _020E0170
	sub r1, r3, #2
	cmp r2, r1
	blt _020E0160
	beq _020E0228
	cmp r2, r3
	beq _020E0230
	b _020E0258
_020E0160:
	sub r1, r3, #9
	cmp r2, r1
	beq _020E0220
	b _020E0258
_020E0170:
	sub r1, r1, #0x67
	cmp r2, r1
	beq _020E0250
	b _020E0258
_020E0180:
	sub r3, r1, #2
	cmp r2, r3
	bgt _020E01A0
	bge _020E0250
	sub r1, r1, #3
	cmp r2, r1
	beq _020E0250
	b _020E0258
_020E01A0:
	sub r1, r1, #1
	cmp r2, r1
	beq _020E0250
	b _020E0258
_020E01B0:
	add r3, r1, #0x64
	cmp r2, r3
	bgt _020E01F0
	bge _020E0250
	add r3, r1, #0x62
	cmp r2, r3
	bgt _020E01E0
	bge _020E0250
	add r1, r1, #0x61
	cmp r2, r1
	beq _020E0250
	b _020E0258
_020E01E0:
	add r1, r1, #0x63
	cmp r2, r1
	beq _020E0250
	b _020E0258
_020E01F0:
	ldr r1, _020E0368 ; =0x00013A2F
	cmp r2, r1
	bgt _020E0210
	bge _020E0240
	sub r1, r1, #1
	cmp r2, r1
	beq _020E0238
	b _020E0258
_020E0210:
	add r1, r1, #1
	cmp r2, r1
	beq _020E0248
	b _020E0258
_020E0220:
	ldr r0, _020E036C ; =0x020E5CF0
	ldmfd sp!, {r3, pc}
_020E0228:
	ldr r0, _020E0370 ; =0x020E5D94
	ldmfd sp!, {r3, pc}
_020E0230:
	ldr r0, _020E0374 ; =0x020E5E4C
	ldmfd sp!, {r3, pc}
_020E0238:
	ldr r0, _020E0378 ; =0x020E5EC0
	ldmfd sp!, {r3, pc}
_020E0240:
	ldr r0, _020E037C ; =0x020E5FA8
	ldmfd sp!, {r3, pc}
_020E0248:
	ldr r0, _020E0380 ; =0x020E5FE0
	ldmfd sp!, {r3, pc}
_020E0250:
	ldr r0, _020E0384 ; =0x020E6014
	ldmfd sp!, {r3, pc}
_020E0258:
	ldr r12, _020E0388 ; =0x51EB851F
	mov r1, r2, lsr #0x1f
	smull r3, lr, r12, r2
	add lr, r1, lr, asr #5
	cmp lr, #0x1f4
	bgt _020E0278
	beq _020E02F8
	b _020E0308
_020E0278:
	sub r1, lr, #0xfe
	sub r1, r1, #0x100
	cmp r1, #0x16
	addls pc, pc, r1, lsl #2
	b _020E0308
_020E028C: ; jump table
	b _020E0300 ; case 0
	b _020E0300 ; case 1
	b _020E02F0 ; case 2
	b _020E0300 ; case 3
	b _020E0308 ; case 4
	b _020E0308 ; case 5
	b _020E0308 ; case 6
	b _020E0308 ; case 7
	b _020E0308 ; case 8
	b _020E0308 ; case 9
	b _020E02E8 ; case 10
	b _020E02E8 ; case 11
	b _020E02E8 ; case 12
	b _020E02E8 ; case 13
	b _020E0308 ; case 14
	b _020E0308 ; case 15
	b _020E0308 ; case 16
	b _020E0308 ; case 17
	b _020E0308 ; case 18
	b _020E0308 ; case 19
	b _020E02E8 ; case 20
	b _020E02E8 ; case 21
	b _020E02E8 ; case 22
_020E02E8:
	ldr r0, _020E038C ; =0x020E60B8
	ldmfd sp!, {r3, pc}
_020E02F0:
	ldr r0, _020E0390 ; =0x020E6124
	ldmfd sp!, {r3, pc}
_020E02F8:
	ldr r0, _020E0394 ; =0x020E61A0
	ldmfd sp!, {r3, pc}
_020E0300:
	ldr r0, _020E0398 ; =0x020E6210
	ldmfd sp!, {r3, pc}
_020E0308:
	ldr r3, _020E039C ; =0x10624DD3
	mov r1, r2, lsr #0x1f
	smull r2, r12, r3, r2
	add r12, r1, r12, asr #6
	cmp r12, #0x14
	beq _020E032C
	cmp r12, #0x17
	beq _020E0334
	b _020E033C
_020E032C:
	ldr r0, _020E03A0 ; =0x020E62BC
	ldmfd sp!, {r3, pc}
_020E0334:
	ldr r0, _020E03A4 ; =0x020E6328
	ldmfd sp!, {r3, pc}
_020E033C:
	ldr r0, [r0, #0xac]
	cmp r0, #7
	ldreq r0, _020E03A8 ; =0x020E63CC
	ldmeqfd sp!, {r3, pc}
	ldr r0, _020E03AC ; =0x020E6468
	cmp r12, #0x1f
	ldreq r0, _020E03B0 ; =0x020E649C
	ldmfd sp!, {r3, pc}
_020E035C: .word ov15_020E5CBC
_020E0360: .word 0x0000CB87
_020E0364: .word 0x00004E8E
_020E0368: .word 0x00013A2F
_020E036C: .word ov15_020E5CF0
_020E0370: .word ov15_020E5D94
_020E0374: .word ov15_020E5E4C
_020E0378: .word ov15_020E5EC0
_020E037C: .word ov15_020E5FA8
_020E0380: .word ov15_020E5FE0
_020E0384: .word ov15_020E6014
_020E0388: .word 0x51EB851F
_020E038C: .word ov15_020E60B8
_020E0390: .word ov15_020E6124
_020E0394: .word ov15_020E61A0
_020E0398: .word ov15_020E6210
_020E039C: .word 0x10624DD3
_020E03A0: .word ov15_020E62BC
_020E03A4: .word ov15_020E6328
_020E03A8: .word ov15_020E63CC
_020E03AC: .word ov15_020E6468
_020E03B0: .word ov15_020E649C
	arm_func_end FUN_ov15_020e00d8

	arm_func_start FUN_ov15_020e03b4
FUN_ov15_020e03b4: ; 0x020E03B4
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, lr}
	ldr r2, _020E0538 ; =0x020EDA4C
	mov r10, r0
	ldrb r0, [r2, #7]
	mov r5, #0
	cmp r0, #0x4c
	ldreqb r0, [r2, #8]
	cmpeq r0, #0x35
	movne r0, #0
	ldmnefd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
	mov r3, r5
	mov r4, r3
_020E03E4:
	ldrb r1, [r2, r4]
	add r0, r4, #1
	and r4, r0, #0xff
	add r0, r3, r1
	cmp r4, #6
	and r3, r0, #0xff
	blo _020E03E4
	ldr r0, _020E0538 ; =0x020EDA4C
	ldrb r1, [r0, #6]
	cmp r3, r1
	movne r0, #0
	ldmnefd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
	ldrb r3, [r0, #4]
	ldrb r1, [r0]
	ldrb r2, [r0, #5]
	cmp r1, #0x34
	orr r0, r3, r2, lsl #8
	mov r2, r0, lsl #0x10
	movhi r0, #0
	ldmhifd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
	add r0, r10, #0x300
	mov r7, #0
	strh r7, [r0, #0xa6]
	add r0, r10, #0xa6
	strb r1, [r10, #0x3a4]
	add r4, r0, #0x300
	mov r6, #1
_020E0450:
	mov r0, r6, lsl r7
	tst r0, r2, lsr #16
	rsbne r0, r7, #0xf
	movne r0, r6, lsl r0
	moveq r0, r5
	add r1, r7, #1
	mov r1, r1, lsl #0x10
	mov r7, r1, lsr #0x10
	ldrh r3, [r4]
	mov r0, r0, lsl #0x10
	cmp r7, #0x10
	orr r0, r3, r0, lsr #16
	strh r0, [r4]
	blo _020E0450
	add r0, r10, #0xaa
	ldr r8, _020E053C ; =0x020EDC4C
	mov r9, #0
	add r4, r0, #0x300
	add r6, sp, #0
	mov r5, #4
	mov r11, #6
_020E04A4:
	rsb r2, r9, r9, lsl #3
	add r1, r8, r2
	ldrb r0, [r1, #6]
	cmp r0, #0x2c
	movne r0, #0
	ldmnefd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
	ldrb r7, [r1]
	ldrb r3, [r1, #1]
	add r0, r2, #2
	mov r1, r6
	mov r2, r5
	add r0, r8, r0
	orr r7, r7, r3, lsl #8
	bl MI_CpuCopy8
	mul r3, r9, r11
	add r0, r10, r3
	add r1, r0, #0x300
	mov r0, r6
	strh r7, [r1, #0xa8]
	mov r2, r5
	add r1, r4, r3
	bl MI_CpuCopy8
	add r9, r9, #1
	cmp r9, #0x10
	blt _020E04A4
	mov r5, #0
	mov r4, #0x200
	ldr r0, _020E0538 ; =0x020EDA4C
	mov r1, r5
	mov r2, r4
	bl MI_CpuFill8
	mov r0, r8
	mov r1, r5
	mov r2, r4
	bl MI_CpuFill8
	mov r0, #1
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_020E0538: .word ov15_020EDA4C
_020E053C: .word ov15_020EDC4C
	arm_func_end FUN_ov15_020e03b4

	arm_func_start FUN_ov15_020e0540
FUN_ov15_020e0540: ; 0x020E0540
	ldr r0, _020E0558 ; =0x020ED848
	mov r1, #0
	strb r1, [r0, #2]
	strb r1, [r0]
	strb r1, [r0, #1]
	bx lr
_020E0558: .word ov15_020ED848
	arm_func_end FUN_ov15_020e0540

	arm_func_start FUN_ov15_020e055c
FUN_ov15_020e055c: ; 0x020E055C
	stmfd sp!, {r3, lr}
	ldr r0, _020E0584 ; =0x020ED848
	ldrb r0, [r0, #1]
	cmp r0, #0
	bne _020E0578
	bl FUN_ov15_020c4970
	bl FUN_ov15_020ccd5c
_020E0578:
	ldr r0, _020E0584 ; =0x020ED848
	ldrb r0, [r0, #1]
	ldmfd sp!, {r3, pc}
_020E0584: .word ov15_020ED848
	arm_func_end FUN_ov15_020e055c

	arm_func_start FUN_ov15_020e0588
FUN_ov15_020e0588: ; 0x020E0588
	stmfd sp!, {r3, lr}
	ldr r0, _020E05B0 ; =0x020ED848
	ldrb r0, [r0]
	cmp r0, #0
	bne _020E05A4
	bl FUN_ov15_020c4970
	bl FUN_ov15_020ccd5c
_020E05A4:
	ldr r0, _020E05B0 ; =0x020ED848
	ldrb r0, [r0]
	ldmfd sp!, {r3, pc}
_020E05B0: .word ov15_020ED848
	arm_func_end FUN_ov15_020e0588

	arm_func_start FUN_ov15_020e05b4
FUN_ov15_020e05b4: ; 0x020E05B4
	ldr r0, _020E05C0 ; =0x020ED848
	ldrb r0, [r0, #2]
	bx lr
_020E05C0: .word ov15_020ED848
	arm_func_end FUN_ov15_020e05b4

	arm_func_start FUN_ov15_020e05c4
FUN_ov15_020e05c4: ; 0x020E05C4
	stmfd sp!, {r4, lr}
	mov r4, r1
	cmp r0, #4
	addls pc, pc, r0, lsl #2
	b _020E05F0
_020E05D8: ; jump table
	b _020E05F0 ; case 0
	b _020E05F0 ; case 1
	b _020E05F0 ; case 2
	b _020E05F0 ; case 3
	b _020E05EC ; case 4
_020E05EC:
	bl FUN_ov15_020e060c
_020E05F0:
	ldr r0, _020E0608 ; =0x020ED848
	mov r1, #1
	strb r1, [r0, #1]
	cmp r4, #0
	strneb r1, [r0, #2]
	ldmfd sp!, {r4, pc}
_020E0608: .word ov15_020ED848
	arm_func_end FUN_ov15_020e05c4

	arm_func_start FUN_ov15_020e060c
FUN_ov15_020e060c: ; 0x020E060C
	ldr r0, _020E061C ; =0x020ED848
	mov r1, #1
	strb r1, [r0]
	bx lr
_020E061C: .word ov15_020ED848
	arm_func_end FUN_ov15_020e060c

	arm_func_start FUN_ov15_020e0620
FUN_ov15_020e0620: ; 0x020E0620
	stmfd sp!, {r4, lr}
	mov r4, r2
	ldr r0, _020E067C ; =0x0209A250
	add r1, r1, r4
	bl FUN_0202de44
	sub r2, r4, #1
	add r1, r0, r4
	mvn r2, r2
	sub r1, r1, #1
	and r3, r2, r1
	ldr r2, _020E0680 ; =0x020ED84C
	mov r12, #0
_020E0650:
	ldr r1, [r2, r12, lsl #3]
	cmp r1, #0
	ldreq r1, _020E0684 ; =0x020ED850
	streq r3, [r2, r12, lsl #3]
	streq r0, [r1, r12, lsl #3]
	beq _020E0674
	add r12, r12, #1
	cmp r12, #0x40
	blt _020E0650
_020E0674:
	mov r0, r3
	ldmfd sp!, {r4, pc}
_020E067C: .word unk_0209A250
_020E0680: .word ov15_020ED84C
_020E0684: .word ov15_020ED850
	arm_func_end FUN_ov15_020e0620

	arm_func_start FUN_ov15_020e0688
FUN_ov15_020e0688: ; 0x020E0688
	stmfd sp!, {r3, lr}
	cmp r1, #0
	ldmeqfd sp!, {r3, pc}
	mov r3, #0
	ldr r2, _020E06E8 ; =0x020ED84C
	mov r12, r3
_020E06A0:
	ldr r0, [r2, r12, lsl #3]
	cmp r0, r1
	bne _020E06C4
	ldr r1, _020E06EC ; =0x020ED850
	mov r0, #0
	ldr r3, [r1, r12, lsl #3]
	str r0, [r2, r12, lsl #3]
	str r0, [r1, r12, lsl #3]
	b _020E06D0
_020E06C4:
	add r12, r12, #1
	cmp r12, #0x40
	blt _020E06A0
_020E06D0:
	cmp r3, #0
	ldmeqfd sp!, {r3, pc}
	ldr r0, _020E06F0 ; =0x0209A250
	mov r1, r3
	bl FUN_0202e1c0
	ldmfd sp!, {r3, pc}
_020E06E8: .word ov15_020ED84C
_020E06EC: .word ov15_020ED850
_020E06F0: .word unk_0209A250
	arm_func_end FUN_ov15_020e0688

	arm_func_start FUN_ov15_020e06f4
FUN_ov15_020e06f4: ; 0x020E06F4
	stmfd sp!, {r4, lr}
	movs r4, r1
	cmpne r4, #2
	bne _020E070C
	mov r0, #1
	bl  FUN_ov16_020f3f60
_020E070C:
	sub r0, r4, #1
	cmp r0, #1
	ldmhifd sp!, {r4, pc}
	mov r0, #1
	bl  FUN_ov16_020f4894
	ldmfd sp!, {r4, pc}
	arm_func_end FUN_ov15_020e06f4

	arm_func_start FUN_ov15_020e0724
FUN_ov15_020e0724: ; 0x020E0724
	stmfd sp!, {r4, lr}
	movs r4, r1
	cmpne r4, #2
	bne _020E0738
	bl  FUN_ov16_020f47fc
_020E0738:
	sub r0, r4, #1
	cmp r0, #1
	bhi _020E0748
	bl  FUN_ov16_020f51a8
_020E0748:
	cmp r4, #2
	ldmnefd sp!, {r4, pc}
	mov r0, #0
	mov r1, #0x6800000
	mov r2, #0xa4000
	bl MIi_CpuClearFast
	ldmfd sp!, {r4, pc}
	arm_func_end FUN_ov15_020e0724

	arm_func_start FUN_ov15_020e0764
FUN_ov15_020e0764: ; 0x020E0764
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	mov r5, r0
	mov r4, #0
	str r4, [r5, #0x5a0]
	str r4, [r5, #0x498]
	str r4, [r5, #0x49c]
	str r4, [r5, #0x4a0]
	bl  FUN_ov16_020f1320
	mov r0, r5
	ldr r2, [r0]
	mov r1, #2
	ldr r2, [r2, #0xc]
	blx r2
	mov r0, r5
	mov r1, r4
	str r4, [r5, #0x80]
	str r4, [r5, #0x84]
	mov r2, r4
	bl FUN_02041f74
	mov r0, r5
	mov r7, #1
	mov r1, r7
	mov r2, r4
	bl FUN_02041f74
	mov r0, r5
	mov r1, r4
	mov r6, #0x14
	mov r2, r6
	bl FUN_02041eac
	mov r1, r7
	mov r0, r5
	mov r2, r6
	bl FUN_02041eac
	mov r0, r5
	ldr r1, [r0]
	ldr r1, [r1, #0x34]
	blx r1
	sub r1, r6, #0x15
	ldr r0, _020E08A0 ; =0x0209A3E0
	ldr r6, _020E08A4 ; =0x0209AC44
	str r1, [r0, #0x2c]
	mov r0, r6
	mov r1, #5
	mov r2, r4
	mov r3, r4
	bl FUN_0202b838
	mov r0, r6
	bl FUN_0202b7b4
	cmp r0, #0
	bne _020E0848
	mov r4, #0x14
_020E0830:
	mov r0, r4
	bl OS_Sleep
	mov r0, r6
	bl FUN_0202b7b4
	cmp r0, #0
	beq _020E0830
_020E0848:
	ldr r6, _020E08A4 ; =0x0209AC44
	mov r0, r6
	bl FUN_0202b7f0
	cmp r0, #0
	bne _020E0878
	mov r4, #0x14
_020E0860:
	mov r0, r4
	bl OS_Sleep
	mov r0, r6
	bl FUN_0202b7f0
	cmp r0, #0
	beq _020E0860
_020E0878:
	ldr r0, [r5, #0x498]
	cmp r0, #0
	ldmnefd sp!, {r3, r4, r5, r6, r7, pc}
	mov r1, #1
	add r0, r5, #0x90
	str r1, [r5, #0x498]
	bl FUN_ov15_020df358
	ldr r1, _020E08A8 ; =0x020E64C4
	str r0, [r1, #0x10]
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_020E08A0: .word unk_0209A3E0
_020E08A4: .word unk_0209AC44
_020E08A8: .word ov15_020E64C4
	arm_func_end FUN_ov15_020e0764

	arm_func_start FUN_ov15_020e08ac
FUN_ov15_020e08ac: ; 0x020E08AC
	stmfd sp!, {r4, lr}
	ldr r2, [r0]
	mov r4, r0
	ldr r2, [r2, #0x28]
	mov r1, #2
	blx r2
	ldr r0, [r4, #0x80]
	cmp r0, #0
	beq _020E08DC
	ldr r1, [r0]
	ldr r1, [r1, #0x20]
	blx r1
_020E08DC:
	ldr r0, [r4, #0x84]
	cmp r0, #0
	beq _020E08F4
	ldr r1, [r0]
	ldr r1, [r1, #0x20]
	blx r1
_020E08F4:
	bl  FUN_ov16_020f47fc
	bl  FUN_ov16_020f51a8
	ldr r0, [r4, #0x498]
	cmp r0, #0
	ldmeqfd sp!, {r4, pc}
	add r0, r4, #0x90
	bl FUN_ov15_020df4c0
	ldmfd sp!, {r4, pc}
	arm_func_end FUN_ov15_020e08ac

	arm_func_start FUN_ov15_020e0914
FUN_ov15_020e0914: ; 0x020E0914
	stmfd sp!, {r3, r4, r5, lr}
	mov r4, r1
	ldrb r1, [r4, #8]
	mov r5, r0
	cmp r1, #0
	ldmeqfd sp!, {r3, r4, r5, pc}
	ldr r0, [r4, #0xc]
	bl  FUN_ov16_020f3e40
	cmp r0, #0
	ldmeqfd sp!, {r3, r4, r5, pc}
	ldr r0, [r4]
	cmp r0, #0x16
	ldmnefd sp!, {r3, r4, r5, pc}
	mov r0, #0x214
	bl FUN_0201e014
	cmp r0, #0
	ldrne r1, _020E0964 ; =0x0211F3D8
	stmneia r0, {r1, r5}
	str r0, [r4, #4]
	ldmfd sp!, {r3, r4, r5, pc}
_020E0964: .word 0x0211F3D8
	arm_func_end FUN_ov15_020e0914

	arm_func_start FUN_ov15_020e0968
FUN_ov15_020e0968: ; 0x020E0968
	stmfd sp!, {r4, r5, r6, r7, r8, lr}
	sub sp, sp, #0x40
	mov r6, r0
	ldr r0, [r6, #0x710]
	cmp r0, #0
	bne _020E09E8
	ldr r8, _020E0C6C ; =0x020E401C
	add lr, sp, #0
	ldmia r8!, {r0, r1, r2, r3}
	mov r7, lr
	stmia lr!, {r0, r1, r2, r3}
	ldmia r8!, {r0, r1, r2, r3}
	stmia lr!, {r0, r1, r2, r3}
	ldmia r8!, {r0, r1, r2, r3}
	stmia lr!, {r0, r1, r2, r3}
	add r0, r6, #0xa4
	add r12, r0, #0x400
	add r0, r6, #0x244
	add r5, r0, #0x400
	ldmia r8, {r0, r1, r2, r3}
	stmia lr, {r0, r1, r2, r3}
	mov r4, #0x40
	ldr r0, _020E0C70 ; =0x0209A250
	mov r1, r4
	str r12, [sp, #4]
	str r5, [sp, #0x24]
	bl FUN_0202de44
	mov r1, r0
	mov r2, r4
	mov r0, r7
	str r1, [r6, #0x710]
	bl MI_CpuCopy8
_020E09E8:
	ldr r2, _020E0C74 ; =0x020EDE4C
	ldr r1, [r2]
	tst r1, #1
	bne _020E0A10
	add r0, r6, #0x28c
	orr r3, r1, #1
	ldr r1, _020E0C78 ; =0x020E64C4
	add r0, r0, #0x400
	str r0, [r1, #0x20]
	str r3, [r2]
_020E0A10:
	mov r0, r6
	bl FUN_0204201c
	mov r4, r0
	mov r0, r6
	bl FUN_02041fec
	cmp r4, r0
	bne _020E0A38
	ldrb r0, [r6, #4]
	cmp r0, #0
	beq _020E0B08
_020E0A38:
	ldr r0, [r6, #0x80]
	cmp r0, #0
	beq _020E0A58
	ldr r1, [r0]
	ldr r1, [r1, #0x58]
	blx r1
	cmp r0, #0
	bne _020E0B08
_020E0A58:
	ldr r0, [r6, #0x80]
	cmp r0, #0
	beq _020E0A90
	ldr r1, [r0]
	ldr r1, [r1, #0x20]
	blx r1
	ldr r0, [r6, #0x80]
	ldr r1, [r0]
	ldr r1, [r1, #0x44]
	blx r1
	ldr r1, [r6, #0x80]
	ldr r2, [r6, #0x710]
	mov r0, r6
	bl FUN_02041d14
_020E0A90:
	mov r0, #0
	str r0, [r6, #0x80]
	ldr r5, [r6, #0x710]
	b _020E0AD4
_020E0AA0:
	ldr r0, [r5]
	cmp r4, r0
	bne _020E0AD0
	ldrb r0, [r5, #8]
	cmp r0, #0
	beq _020E0AC4
	mov r0, r6
	mov r1, r5
	bl FUN_ov15_020e0914
_020E0AC4:
	ldr r0, [r5, #4]
	str r0, [r6, #0x80]
	b _020E0AE0
_020E0AD0:
	add r5, r5, #0x10
_020E0AD4:
	ldr r0, [r5]
	cmp r0, #0
	bne _020E0AA0
_020E0AE0:
	mov r0, r6
	mov r2, r4
	mov r1, #0
	bl FUN_02041f74
	ldr r0, [r6, #0x80]
	cmp r0, #0
	beq _020E0B08
	ldr r1, [r0]
	ldr r1, [r1, #0x10]
	blx r1
_020E0B08:
	mov r0, r6
	bl FUN_02042084
	mov r4, r0
	mov r0, r6
	bl FUN_02042054
	cmp r4, r0
	bne _020E0B30
	ldrb r0, [r6, #5]
	cmp r0, #0
	beq _020E0BD4
_020E0B30:
	ldr r0, [r6, #0x84]
	cmp r0, #0
	beq _020E0B50
	ldr r1, [r0]
	ldr r1, [r1, #0x58]
	blx r1
	cmp r0, #0
	bne _020E0BD4
_020E0B50:
	ldr r0, [r6, #0x84]
	cmp r0, #0
	beq _020E0B78
	ldr r1, [r0]
	ldr r1, [r1, #0x20]
	blx r1
	ldr r0, [r6, #0x84]
	ldr r1, [r0]
	ldr r1, [r1, #0x44]
	blx r1
_020E0B78:
	mov r0, #0
	str r0, [r6, #0x84]
	ldr r5, _020E0C7C ; =0x020E64E0
	b _020E0BA0
_020E0B88:
	ldr r0, [r5]
	cmp r4, r0
	ldreq r0, [r5, #4]
	streq r0, [r6, #0x84]
	beq _020E0BAC
	add r5, r5, #0x10
_020E0BA0:
	ldr r0, [r5]
	cmp r0, #0
	bne _020E0B88
_020E0BAC:
	mov r0, r6
	mov r2, r4
	mov r1, #1
	bl FUN_02041f74
	ldr r0, [r6, #0x84]
	cmp r0, #0
	beq _020E0BD4
	ldr r1, [r0]
	ldr r1, [r1, #0x10]
	blx r1
_020E0BD4:
	mov r0, r6
	bl FUN_02041fec
	cmp r0, #0x14
	bne _020E0BF8
	ldr r0, [r6, #0x80]
	cmp r0, #0
	beq _020E0BF8
	mov r0, r6
	bl FUN_ov15_020e0c90
_020E0BF8:
	mov r0, r6
	bl FUN_02041fec
	cmp r0, #0x16
	bne _020E0C24
	ldr r0, [r6, #0x80]
	cmp r0, #0
	beq _020E0C24
	ldr r2, [r0]
	ldr r1, _020E0C80 ; =0x020A11DC
	ldr r2, [r2, #0x98]
	blx r2
_020E0C24:
	mov r0, r6
	bl FUN_02041fec
	cmp r0, #0x17
	addne sp, sp, #0x40
	ldmnefd sp!, {r4, r5, r6, r7, r8, pc}
	ldr r0, [r6, #0x80]
	cmp r0, #0
	addeq sp, sp, #0x40
	ldmeqfd sp!, {r4, r5, r6, r7, r8, pc}
	add r0, r6, #0x244
	add r0, r0, #0x400
	ldr r3, [r0]
	ldr r1, [r6, #0x49c]
	ldr r2, [r6, #0x4a0]
	ldr r3, [r3, #0x6c]
	blx r3
	add sp, sp, #0x40
	ldmfd sp!, {r4, r5, r6, r7, r8, pc}
_020E0C6C: .word 0x020E401C
_020E0C70: .word unk_0209A250
_020E0C74: .word ov15_020EDE4C
_020E0C78: .word ov15_020E64C4
_020E0C7C: .word ov15_020E64E0
_020E0C80: .word unk_020A11DC
	arm_func_end FUN_ov15_020e0968

	arm_func_start FUN_ov15_020e0c84
FUN_ov15_020e0c84: ; 0x020E0C84
	str r1, [r0, #0x3c]
	str r2, [r0, #0x40]
	bx lr
	arm_func_end FUN_ov15_020e0c84

	arm_func_start FUN_ov15_020e0c90
FUN_ov15_020e0c90: ; 0x020E0C90
	stmfd sp!, {r3, r4, r5, lr}
	mov r5, r0
	ldr r4, [r5, #0x5a0]
	mov r0, #0
	str r0, [sp]
	cmp r4, #0xa
	addls pc, pc, r4, lsl #2
	b _020E0DA8
_020E0CB0: ; jump table
	b _020E0DA8 ; case 0
	b _020E0CDC ; case 1
	b _020E0D44 ; case 2
	b _020E0D44 ; case 3
	b _020E0DA8 ; case 4
	b _020E0DA8 ; case 5
	b _020E0D34 ; case 6
	b _020E0D44 ; case 7
	b _020E0DA8 ; case 8
	b _020E0D60 ; case 9
	b _020E0D80 ; case 10
_020E0CDC:
	ldr r0, [r5, #0x498]
	cmp r0, #0
	bne _020E0D00
	mov r1, #1
	add r0, r5, #0x90
	str r1, [r5, #0x498]
	bl FUN_ov15_020df358
	ldr r1, _020E0EE8 ; =0x020E64C4
	str r0, [r1, #0x10]
_020E0D00:
	ldr r0, _020E0EE8 ; =0x020E64C4
	ldr r0, [r0, #0x10]
	cmp r0, #3
	moveq r0, #0xc
	streq r0, [r5, #0x5a0]
	beq _020E0DA8
	add r0, r5, #0x90
	bl FUN_ov15_020df528
	mov r1, #2
	mov r0, #1
	str r1, [r5, #0x5a0]
	bl  FUN_ov16_020f069c
	b _020E0DA8
_020E0D34:
	add r0, r5, #0x90
	bl FUN_ov15_020df564
	mov r0, #7
	str r0, [r5, #0x5a0]
_020E0D44:
	add r0, r5, #0x90
	bl FUN_ov15_020df3f8
	add r1, sp, #0
	add r0, r5, #0x90
	mov r2, #0
	bl FUN_ov15_020df548
	b _020E0DA8
_020E0D60:
	add r0, r5, #0x90
	bl FUN_ov15_020e00a0
	cmp r0, #0
	beq _020E0DA8
	add r0, r5, #0x90
	bl FUN_ov15_020df64c
	mov r0, #0xa
	str r0, [r5, #0x5a0]
_020E0D80:
	add r0, r5, #0x90
	bl FUN_ov15_020df3f8
	add r1, sp, #0
	add r0, r5, #0x90
	mov r2, #0
	bl FUN_ov15_020df548
	ldr r0, [sp]
	cmp r0, #1
	moveq r0, #0xb
	streq r0, [r5, #0x5a0]
_020E0DA8:
	ldr r0, [sp]
	cmp r0, #8
	bne _020E0DC8
	add r0, r5, #0x90
	bl FUN_ov15_020e00d0
	cmp r0, #0
	movne r0, #7
	strne r0, [sp]
_020E0DC8:
	ldr r0, [sp]
	cmp r0, #9
	addls pc, pc, r0, lsl #2
	ldmfd sp!, {r3, r4, r5, pc}
_020E0DD8: ; jump table
	ldmfd sp!, {r3, r4, r5, pc} ; case 0
	ldmfd sp!, {r3, r4, r5, pc} ; case 1
	ldmfd sp!, {r3, r4, r5, pc} ; case 2
	ldmfd sp!, {r3, r4, r5, pc} ; case 3
	ldmfd sp!, {r3, r4, r5, pc} ; case 4
	b _020E0E00 ; case 5
	b _020E0E10 ; case 6
	b _020E0E74 ; case 7
	b _020E0E88 ; case 8
	b _020E0EC8 ; case 9
_020E0E00:
	cmp r4, #2
	moveq r0, #3
	streq r0, [r5, #0x5a0]
	ldmfd sp!, {r3, r4, r5, pc}
_020E0E10:
	cmp r4, #7
	moveq r0, #8
	streq r0, [r5, #0x5a0]
	beq _020E0E60
	add r0, r5, #0x90
	bl FUN_ov15_020dfea0
	str r0, [r5, #0x49c]
	add r0, r5, #0x90
	bl FUN_ov15_020dfec0
	ldr r1, [r5, #0x49c]
	str r0, [r5, #0x4a0]
	cmp r1, #0
	cmpeq r0, #0
	moveq r0, #5
	streq r0, [r5, #0x5a0]
	beq _020E0E60
	mov r1, #4
	add r0, r5, #0x90
	str r1, [r5, #0x5a0]
	bl FUN_ov15_020dfee8
_020E0E60:
	add r0, r5, #0x90
	bl FUN_ov15_020e0088
	mov r0, #0
	bl  FUN_ov16_020f069c
	ldmfd sp!, {r3, r4, r5, pc}
_020E0E74:
	mov r1, #8
	mov r0, #0
	str r1, [r5, #0x5a0]
	bl  FUN_ov16_020f069c
	ldmfd sp!, {r3, r4, r5, pc}
_020E0E88:
	add r0, r5, #0x90
	bl FUN_ov15_020e00d8
	ldr r1, [r5, #0x140]
	str r0, [r5, #0x4f0]
	cmp r1, #0
	rsblt r1, r1, #0
	add r0, r5, #0x90
	str r1, [r5, #0x708]
	bl FUN_ov15_020e00a0
	cmp r0, #0
	movne r0, #0xd
	moveq r0, #0xe
	str r0, [r5, #0x5a0]
	mov r0, #0
	bl  FUN_ov16_020f069c
	ldmfd sp!, {r3, r4, r5, pc}
_020E0EC8:
	add r0, r5, #0x90
	bl FUN_ov15_020e00d8
	str r0, [r5, #0x4f0]
	mov r1, #0xd
	mov r0, #0
	str r1, [r5, #0x5a0]
	bl  FUN_ov16_020f069c
	ldmfd sp!, {r3, r4, r5, pc}
_020E0EE8: .word ov15_020E64C4
	arm_func_end FUN_ov15_020e0c90

	arm_func_start FUN_ov15_020e0eec
FUN_ov15_020e0eec: ; 0x020E0EEC
	stmfd sp!, {r4, lr}
	mov r4, r0
	bl FUN_02041b00
	mov r0, r4
	ldmfd sp!, {r4, pc}
	arm_func_end FUN_ov15_020e0eec

	arm_func_start FUN_ov15_020e0f00
FUN_ov15_020e0f00: ; 0x020E0F00
	stmfd sp!, {r4, lr}
	mov r4, r0
	bl FUN_02041b00
	mov r0, r4
	bl FUN_0201e078
	mov r0, r4
	ldmfd sp!, {r4, pc}
	arm_func_end FUN_ov15_020e0f00

	arm_func_start FUN_ov15_020e0f1c
FUN_ov15_020e0f1c: ; 0x020E0F1C
	stmfd sp!, {r3, r4, r5, lr}
	bl FUN_ov15_020e1058
	ldr r5, _020E0F64 ; =0x0209A250
	mov r1, #0x720
	mov r0, r5
	bl FUN_0202de44
	mov r4, r0
	ldr r1, _020E0F68 ; =0x4245384A
	ldr r2, _020E0F6C ; =FUN_ov15_020e1148
	ldr r3, _020E0F70 ; =FUN_ov15_020e115c
	mov r0, #0
	bl FUN_ov15_020cc2d0
	mov r0, r5
	mov r1, r4
	bl FUN_0202e1c0
	mov r0, #6
	bl  FUN_ov16_020f1490
	ldmfd sp!, {r3, r4, r5, pc}
_020E0F64: .word unk_0209A250
_020E0F68: .word 0x4245384A
_020E0F6C: .word FUN_ov15_020e1148
_020E0F70: .word FUN_ov15_020e115c
	arm_func_end FUN_ov15_020e0f1c

	arm_func_start FUN_ov15_020e0f74
FUN_ov15_020e0f74: ; 0x020E0F74
	bx lr
	arm_func_end FUN_ov15_020e0f74

	arm_func_start FUN_ov15_020e0f78
FUN_ov15_020e0f78: ; 0x020E0F78
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, lr}
	ldr r9, _020E1040 ; =0x0000007E
	mov r8, #0
	mov r10, r0
	mov r0, r8
	mov r1, r9
	bl FUN_0200e5d4
	ldr r7, _020E1044 ; =0x00000080
	mov r0, r8
	mov r1, r7
	bl FS_LoadOverlay
	ldr r6, _020E1048 ; =0x00000010
	mov r0, r8
	mov r1, r6
	bl FUN_0200e5d4
	ldr r5, _020E104C ; =0x00000011
	mov r0, r8
	mov r1, r5
	bl FS_LoadOverlay
	ldr r11, _020E1050 ; =0x0209A250
	ldr r1, _020E1054 ; =0x00040020
	mov r0, r11
	bl FUN_0202de44
	mov r4, r0
	add r0, r4, #0x1f
	bic r0, r0, #0x1f
	mov r1, r8
	mov r2, #0x10
	bl  FUN_ov17_020f8620
	mov r0, r11
	mov r1, r4
	bl FUN_0202e1c0
	mov r1, r7
	mov r0, r8
	bl FUN_0200e5d4
	mov r1, r9
	mov r0, r8
	bl FS_LoadOverlay
	mov r1, r5
	mov r0, r8
	bl FUN_0200e5d4
	mov r0, r8
	mov r1, r6
	bl FS_LoadOverlay
	bl FUN_02029bf8
	bl FUN_02003e40
	mov r0, r10
	mov r1, #0x16
	bl FUN_ov15_020e10f4
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_020E1040: .word 0x0000007E
_020E1044: .word 0x00000080
_020E1048: .word 0x00000010
_020E104C: .word 0x00000011
_020E1050: .word unk_0209A250
_020E1054: .word 0x00040020
	arm_func_end FUN_ov15_020e0f78

	arm_func_start FUN_ov15_020e1058
FUN_ov15_020e1058: ; 0x020E1058
	stmfd sp!, {r4, r5, r6, lr}
	ldr r5, _020E10E8 ; =0x0209AC44
	mov r4, #0x3e8
	mov r0, r5
	mov r1, r4
	bl FUN_0202c470
	mov r6, #0
	mov r0, r5
	mov r1, r6
	mov r2, r4
	bl FUN_0202d774
	b _020E1098
_020E1088:
	mov r0, r5
	bl FUN_0202b768
	bl FUN_02003e40
	add r6, r6, #1
_020E1098:
	cmp r6, #0x3c
	blt _020E1088
	ldr r0, _020E10EC ; =0x0209AEC0
	bl FUN_0204665c
	ldr r4, _020E10E8 ; =0x0209AC44
	mov r0, r4
	bl FUN_0202bc6c
	mov r0, r4
	bl FUN_0202b758
	mov r4, #0
	mov r0, r4
	bl FUN_02074fb8
	bl FUN_0200bb68
	ldr r0, _020E10F0 ; =0x0000FFFF
	mov r1, r4
	bl FUN_0200b93c
	mov r0, #1
	bl FUN_0200be58
	bl FUN_02003e40
	ldmfd sp!, {r4, r5, r6, pc}
_020E10E8: .word unk_0209AC44
_020E10EC: .word unk_0209AEC0
_020E10F0: .word 0x0000FFFF
	arm_func_end FUN_ov15_020e1058

	arm_func_start FUN_ov15_020e10f4
FUN_ov15_020e10f4: ; 0x020E10F4
	stmfd sp!, {r4, r5, r6, lr}
	ldr r4, _020E1140 ; =0x00008003
	mov r6, r1
	mov r5, #1
_020E1104:
	mov r0, r4
	mov r1, r5
	bl  FUN_ov16_020f1214
	bl FUN_02003e40
	add r5, r5, #1
	cmp r5, #0x10
	ble _020E1104
	ldr r2, _020E1144 ; =0x04000208
	mov r0, #1
	ldrh r1, [r2]
	strh r0, [r2]
	bl OS_EnableInterrupts
	mov r0, r6
	bl OS_ResetSystem
	ldmfd sp!, {r4, r5, r6, pc}
_020E1140: .word 0x00008003
_020E1144: .word 0x04000208
	arm_func_end FUN_ov15_020e10f4

	arm_func_start FUN_ov15_020e1148
FUN_ov15_020e1148: ; 0x020E1148
	ldr r0, _020E1154 ; =0x0209A250
	ldr r12, _020E1158 ; =FUN_0202de44
	bx r12
_020E1154: .word unk_0209A250
_020E1158: .word FUN_0202de44
	arm_func_end FUN_ov15_020e1148

	arm_func_start FUN_ov15_020e115c
FUN_ov15_020e115c: ; 0x020E115C
	stmfd sp!, {r3, lr}
	cmp r1, #0
	ldmeqfd sp!, {r3, pc}
	ldr r0, _020E1174 ; =0x0209A250
	bl FUN_0202e1c0
	ldmfd sp!, {r3, pc}
_020E1174: .word unk_0209A250
	arm_func_end FUN_ov15_020e115c

	arm_func_start FUN_ov15_020e1178
FUN_ov15_020e1178: ; 0x020E1178
	stmfd sp!, {r4, lr}
	mov r4, r0
	bl FUN_02041b00
	mov r0, r4
	ldmfd sp!, {r4, pc}
	arm_func_end FUN_ov15_020e1178

	arm_func_start FUN_ov15_020e118c
FUN_ov15_020e118c: ; 0x020E118C
	stmfd sp!, {r4, lr}
	mov r4, r0
	bl FUN_02041b00
	mov r0, r4
	bl FUN_0201e078
	mov r0, r4
	ldmfd sp!, {r4, pc}
	arm_func_end FUN_ov15_020e118c

	arm_func_start FUN_ov15_020e11a8
FUN_ov15_020e11a8: ; 0x020E11A8
	ldrsb r2, [r1]
	mov r0, #1
	cmp r2, #0
	bxeq lr
_020E11B8:
	ldrsb r2, [r1]
	cmp r2, #0xa
	bne _020E11D0
	ldrsb r2, [r1, #1]
	cmp r2, #0
	addne r0, r0, #1
_020E11D0:
	ldrsb r2, [r1, #1]!
	cmp r2, #0
	bne _020E11B8
	bx lr
	arm_func_end FUN_ov15_020e11a8

	arm_func_start FUN_ov15_020e11e0
FUN_ov15_020e11e0: ; 0x020E11E0
	stmfd sp!, {r4, lr}
	mov r1, #5
	str r1, [r0, #8]
	ldr r1, _020E1218 ; =0x0209A454
	mov r4, #1
	strb r4, [r1, #0x81]
	ldrb r2, [r1, #0x83]
	mov r0, #6
	orr r2, r2, #0x40
	strb r2, [r1, #0x83]
	bl  FUN_ov16_020f153c
	mov r0, r4
	bl FUN_02029d44
	ldmfd sp!, {r4, pc}
_020E1218: .word unk_0209A454
	arm_func_end FUN_ov15_020e11e0

	arm_func_start FUN_ov15_020e121c
FUN_ov15_020e121c: ; 0x020E121C
	stmfd sp!, {r4, lr}
	mov r4, r0
	mov r1, #5
	str r1, [r4, #8]
	ldr r1, [r0]
	ldr r1, [r1, #0x50]
	blx r1
	ldr r0, _020E1258 ; =0x0209A454
	mov r1, #4
	str r1, [r0, #0x24]
	ldr r0, [r4, #4]
	mov r1, #0
	mov r2, #0x16
	bl FUN_02041eac
	ldmfd sp!, {r4, pc}
_020E1258: .word unk_0209A454
	arm_func_end FUN_ov15_020e121c

	arm_func_start FUN_ov15_020e125c
FUN_ov15_020e125c: ; 0x020E125C
	stmfd sp!, {r3, r4, r5, lr}
	mov r5, r0
	str r1, [r5, #0x38]
	mov r3, #0xe
	mov r4, #1
	mov r1, r2
	str r3, [r5, #0x34]
	str r2, [r5, #0x40]
	strb r4, [r5, #0x44]
	bl FUN_ov15_020e11a8
	sub r1, r4, #2
	strb r0, [r5, #0x45]
	str r1, [r5, #0x3c]
	ldmfd sp!, {r3, r4, r5, pc}
	arm_func_end FUN_ov15_020e125c

	arm_func_start FUN_ov15_020e1294
FUN_ov15_020e1294: ; 0x020E1294
	stmfd sp!, {r4, r5, r6, lr}
	mov r6, #0
	ldr r5, _020E12C8 ; =0x0209F5C0
	mov r4, r6
_020E12A4:
	mov r0, r5
	mov r1, r4
	mov r2, r6
	bl  FUN_ov16_020f6084
	add r0, r6, #1
	and r6, r0, #0xff
	cmp r6, #0x13
	blo _020E12A4
	ldmfd sp!, {r4, r5, r6, pc}
_020E12C8: .word unk_0209F5C0
	arm_func_end FUN_ov15_020e1294

	arm_func_start FUN_ov15_020e12cc
FUN_ov15_020e12cc: ; 0x020E12CC
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	mov r4, r0
	ldr r1, [r4, #0x28]
	cmp r1, #0x12
	addls pc, pc, r1, lsl #2
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_020E12E4: ; jump table
	ldmfd sp!, {r3, r4, r5, r6, r7, pc} ; case 0
	ldmfd sp!, {r3, r4, r5, r6, r7, pc} ; case 1
	ldmfd sp!, {r3, r4, r5, r6, r7, pc} ; case 2
	ldmfd sp!, {r3, r4, r5, r6, r7, pc} ; case 3
	b _020E1330 ; case 4
	b _020E1330 ; case 5
	b _020E137C ; case 6
	b _020E137C ; case 7
	ldmfd sp!, {r3, r4, r5, r6, r7, pc} ; case 8
	b _020E13B8 ; case 9
	ldmfd sp!, {r3, r4, r5, r6, r7, pc} ; case 10
	ldmfd sp!, {r3, r4, r5, r6, r7, pc} ; case 11
	ldmfd sp!, {r3, r4, r5, r6, r7, pc} ; case 12
	ldmfd sp!, {r3, r4, r5, r6, r7, pc} ; case 13
	ldmfd sp!, {r3, r4, r5, r6, r7, pc} ; case 14
	ldmfd sp!, {r3, r4, r5, r6, r7, pc} ; case 15
	b _020E1460 ; case 16
	ldmfd sp!, {r3, r4, r5, r6, r7, pc} ; case 17
	b _020E1428 ; case 18
_020E1330:
	ldr r1, [r4, #0xc]
	cmp r1, #0
	bne _020E1348
	mov r1, #1
	bl FUN_ov15_020e29c0
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_020E1348:
	cmp r1, #5
	bne _020E1358
	bl FUN_ov15_020e121c
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_020E1358:
	cmp r1, #6
	ldmnefd sp!, {r3, r4, r5, r6, r7, pc}
	ldr r1, _020E1480 ; =0x020A11DC
	add r0, r4, #0x100
	mov r2, #0x9c
	bl MI_CpuCopy8
	mov r0, r4
	bl FUN_ov15_020e11e0
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_020E137C:
	ldr r1, [r4, #0xc]
	cmp r1, #0
	bne _020E1390
	bl FUN_ov15_020e11e0
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_020E1390:
	cmp r1, #5
	bne _020E13A4
	mov r1, #6
	bl FUN_ov15_020e29c0
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_020E13A4:
	cmp r1, #6
	ldmnefd sp!, {r3, r4, r5, r6, r7, pc}
	mov r1, #5
	bl FUN_ov15_020e29c0
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_020E13B8:
	ldr r7, _020E1484 ; =0x0209F5C0
	mov r6, #0
	mov r2, #6
	mov r0, r7
	mov r1, r6
	str r2, [r4, #0xfc]
	bl  FUN_ov16_020f64cc
	mov r5, #9
	mov r0, r7
	mov r1, r6
	mov r2, r5
	bl  FUN_ov16_020f6084
	mov r0, r4
	bl FUN_ov15_020e22e8
	ldr r3, _020E1488 ; =0x020E6704
	sub r1, r5, #0xa
	str r1, [r4, #0x2c]
	mov r0, r4
	mov r1, r6
	mov r2, #0xc
	str r6, [r4, #0x28]
	str r3, [r4, #0x48]
	bl FUN_ov15_020e1ed8
	ldr r2, _020E148C ; =0x020E6734
	mov r0, r4
	mov r1, #5
	bl FUN_ov15_020e125c
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_020E1428:
	ldr r1, [r4, #0xfc]
	cmp r1, #0xc
	bne _020E1438
	bl FUN_ov15_020e11e0
_020E1438:
	mov r5, #0
	mov r2, #9
	ldr r0, _020E1484 ; =0x0209F5C0
	mov r1, r5
	str r2, [r4, #0xfc]
	bl  FUN_ov16_020f64cc
	sub r0, r5, #1
	str r5, [r4, #0x28]
	str r0, [r4, #0x2c]
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_020E1460:
	ldr r1, [r4, #0xfc]
	cmp r1, #4
	bne _020E1478
	mov r1, #5
	bl FUN_ov15_020e29c0
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_020E1478:
	bl FUN_ov15_020e11e0
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_020E1480: .word unk_020A11DC
_020E1484: .word unk_0209F5C0
_020E1488: .word ov15_020E6704
_020E148C: .word ov15_020E6734
	arm_func_end FUN_ov15_020e12cc

	arm_func_start FUN_ov15_020e1490
FUN_ov15_020e1490: ; 0x020E1490
	stmfd sp!, {r3, r4, r5, lr}
	mov r5, r0
	ldr r0, [r5, #0x2c]
	mov r4, r1
	cmp r0, r4
	beq _020E14B4
	ldr r0, _020E14BC ; =0x0209AC44
	mov r1, #8
	bl FUN_0202cf6c
_020E14B4:
	str r4, [r5, #0x2c]
	ldmfd sp!, {r3, r4, r5, pc}
_020E14BC: .word unk_0209AC44
	arm_func_end FUN_ov15_020e1490

	arm_func_start FUN_ov15_020e14c0
FUN_ov15_020e14c0: ; 0x020E14C0
	cmp r1, #0xa
	addls pc, pc, r1, lsl #2
	b _020E1508
_020E14CC: ; jump table
	b _020E1508 ; case 0
	b _020E1508 ; case 1
	b _020E1508 ; case 2
	b _020E1508 ; case 3
	b _020E14F8 ; case 4
	b _020E14F8 ; case 5
	b _020E1500 ; case 6
	b _020E1500 ; case 7
	b _020E1508 ; case 8
	b _020E14F8 ; case 9
	b _020E14F8 ; case 10
_020E14F8:
	mov r0, #0
	bx lr
_020E1500:
	mov r0, #1
	bx lr
_020E1508:
	mvn r0, #0
	bx lr
	arm_func_end FUN_ov15_020e14c0

	arm_func_start FUN_ov15_020e1510
FUN_ov15_020e1510: ; 0x020E1510
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	mov r5, r0
	ldr r0, [r5, #8]
	mov r7, r1
	cmp r0, #4
	ldreqb r0, [r5, #0x11]
	cmpeq r0, #0
	ldmnefd sp!, {r3, r4, r5, r6, r7, pc}
	ldr r6, _020E17E8 ; =0x0209F5C0
	mov r4, #0
	mov r0, r6
	mov r1, r4
	bl  FUN_ov16_020f6584
	cmp r0, #0
	ldmnefd sp!, {r3, r4, r5, r6, r7, pc}
	tst r7, #1
	beq _020E1670
	ldr r0, [r5, #0xc]
	sub r6, r4, #1
	cmp r0, #6
	addls pc, pc, r0, lsl #2
	b _020E15C8
_020E1568: ; jump table
	b _020E1584 ; case 0
	b _020E15C8 ; case 1
	b _020E15AC ; case 2
	b _020E15B8 ; case 3
	b _020E15B8 ; case 4
	b _020E1584 ; case 5
	b _020E1584 ; case 6
_020E1584:
	ldr r0, [r5, #0x2c]
	cmp r0, #0
	beq _020E15A0
	cmp r0, #1
	moveq r4, #7
	moveq r6, #2
	b _020E15C8
_020E15A0:
	mov r4, #5
	mov r6, #1
	b _020E15C8
_020E15AC:
	mov r6, #4
	mov r4, #0x10
	b _020E15C8
_020E15B8:
	ldr r0, [r5, #0x2c]
	cmp r0, #0
	movge r6, #4
	movge r4, #0x12
_020E15C8:
	cmp r4, #0
	ldmeqfd sp!, {r3, r4, r5, r6, r7, pc}
	cmp r4, #0x12
	addls pc, pc, r4, lsl #2
	b _020E1658
_020E15DC: ; jump table
	b _020E1658 ; case 0
	b _020E1658 ; case 1
	b _020E1658 ; case 2
	b _020E1658 ; case 3
	b _020E1628 ; case 4
	b _020E1634 ; case 5
	b _020E1628 ; case 6
	b _020E1640 ; case 7
	b _020E1658 ; case 8
	b _020E1640 ; case 9
	b _020E1658 ; case 10
	b _020E1658 ; case 11
	b _020E1658 ; case 12
	b _020E1658 ; case 13
	b _020E1658 ; case 14
	b _020E1658 ; case 15
	b _020E1634 ; case 16
	b _020E1658 ; case 17
	b _020E164C ; case 18
_020E1628:
	ldr r0, _020E17EC ; =0x0209AC44
	mov r1, #8
	b _020E1654
_020E1634:
	ldr r0, _020E17EC ; =0x0209AC44
	mov r1, #6
	b _020E1654
_020E1640:
	ldr r0, _020E17EC ; =0x0209AC44
	mov r1, #4
	b _020E1654
_020E164C:
	ldr r0, _020E17EC ; =0x0209AC44
	mov r1, #1
_020E1654:
	bl FUN_0202cf6c
_020E1658:
	add r0, r5, r6
	ldrb r1, [r0, #0x50]
	ldr r0, _020E17E8 ; =0x0209F5C0
	bl  FUN_ov16_020f6530
	str r4, [r5, #0x28]
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_020E1670:
	tst r7, #2
	beq _020E1708
	ldr r0, [r5, #0xc]
	cmp r0, #6
	addls pc, pc, r0, lsl #2
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_020E1688: ; jump table
	b _020E16E4 ; case 0
	b _020E16A4 ; case 1
	ldmfd sp!, {r3, r4, r5, r6, r7, pc} ; case 2
	ldmfd sp!, {r3, r4, r5, r6, r7, pc} ; case 3
	ldmfd sp!, {r3, r4, r5, r6, r7, pc} ; case 4
	b _020E16E4 ; case 5
	b _020E16E4 ; case 6
_020E16A4:
	ldr r0, [r5, #0x2c]
	cmp r0, #0
	bge _020E16C0
	ldr r0, _020E17EC ; =0x0209AC44
	mov r1, #9
	bl FUN_0202cf6c
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_020E16C0:
	ldr r0, _020E17EC ; =0x0209AC44
	mov r1, #4
	bl FUN_0202cf6c
	ldrb r1, [r5, #0x53]
	mov r0, r6
	bl  FUN_ov16_020f6530
	mov r0, #9
	str r0, [r5, #0x28]
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_020E16E4:
	ldr r0, _020E17EC ; =0x0209AC44
	mov r1, #4
	bl FUN_0202cf6c
	ldrb r1, [r5, #0x52]
	mov r0, r6
	bl  FUN_ov16_020f6530
	mov r0, #7
	str r0, [r5, #0x28]
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_020E1708:
	tst r7, #0x20
	beq _020E1778
	ldr r0, [r5, #0xc]
	cmp r0, #0
	beq _020E1728
	sub r0, r0, #5
	cmp r0, #1
	ldmhifd sp!, {r3, r4, r5, r6, r7, pc}
_020E1728:
	ldr r0, [r5, #0x2c]
	cmp r0, #0
	bge _020E1740
	mov r0, r5
	mov r1, #0
	b _020E1754
_020E1740:
	add r0, r0, #1
	mov r2, r0, lsr #0x1f
	rsb r1, r2, r0, lsl #31
	mov r0, r5
	add r1, r2, r1, ror #31
_020E1754:
	bl FUN_ov15_020e1490
	ldr r1, [r5, #0x2c]
	ldr r0, _020E17F0 ; =0x0209A070
	add r1, r1, #1
	add r1, r5, r1
	ldrb r1, [r1, #0x50]
	mov r2, #1
	bl  FUN_ov16_020f6e8c
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_020E1778:
	tst r7, #0x10
	ldmeqfd sp!, {r3, r4, r5, r6, r7, pc}
	ldr r0, [r5, #0xc]
	cmp r0, #0
	beq _020E1798
	sub r0, r0, #5
	cmp r0, #1
	ldmhifd sp!, {r3, r4, r5, r6, r7, pc}
_020E1798:
	ldr r0, [r5, #0x2c]
	cmp r0, #0
	bge _020E17B0
	mov r0, r5
	mov r1, #1
	b _020E17C4
_020E17B0:
	add r0, r0, #1
	mov r2, r0, lsr #0x1f
	rsb r1, r2, r0, lsl #31
	mov r0, r5
	add r1, r2, r1, ror #31
_020E17C4:
	bl FUN_ov15_020e1490
	ldr r1, [r5, #0x2c]
	ldr r0, _020E17F0 ; =0x0209A070
	add r1, r1, #1
	add r1, r5, r1
	ldrb r1, [r1, #0x50]
	mov r2, #1
	bl  FUN_ov16_020f6e8c
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_020E17E8: .word unk_0209F5C0
_020E17EC: .word unk_0209AC44
_020E17F0: .word unk_0209A070
	arm_func_end FUN_ov15_020e1510

	arm_func_start FUN_ov15_020e17f4
FUN_ov15_020e17f4: ; 0x020E17F4
	ldr r0, _020E180C ; =0x0209F5C0
	mov r3, r2
	mov r2, r1
	ldr r12, _020E1810 ; = FUN_ov16_020f6b3c
	mov r1, #0
	bx r12
_020E180C: .word unk_0209F5C0
_020E1810: .word  FUN_ov16_020f6b3c
	arm_func_end FUN_ov15_020e17f4

	arm_func_start FUN_ov15_020e1814
FUN_ov15_020e1814: ; 0x020E1814
	stmfd sp!, {r4, lr}
	mov r4, r0
	ldr r1, [r4, #0x1c]
	bl FUN_ov15_020e14c0
	movs r1, r0
	bmi _020E1840
	ldr r0, [r4, #0x30]
	cmp r1, r0
	bge _020E1840
	mov r0, r4
	bl FUN_ov15_020e1490
_020E1840:
	ldr r1, [r4, #0x1c]
	ldr r0, _020E1850 ; =0x0209A070
	bl  FUN_ov16_020f6e2c
	ldmfd sp!, {r4, pc}
_020E1850: .word unk_0209A070
	arm_func_end FUN_ov15_020e1814

	arm_func_start FUN_ov15_020e1854
FUN_ov15_020e1854: ; 0x020E1854
	stmfd sp!, {r4, lr}
	ldr r1, [r0, #0x1c]
	ldr r0, [r0, #0x20]
	cmp r0, r1
	bne _020E1874
	ldr r0, _020E1898 ; =0x0209A070
	bl  FUN_ov16_020f6e2c
	ldmfd sp!, {r4, pc}
_020E1874:
	ldr r4, _020E1898 ; =0x0209A070
	mov r0, r4
	bl  FUN_ov16_020f6d3c
	movs r1, r0
	ldmmifd sp!, {r4, pc}
	mov r0, r4
	mov r2, #1
	bl  FUN_ov16_020f6e8c
	ldmfd sp!, {r4, pc}
_020E1898: .word unk_0209A070
	arm_func_end FUN_ov15_020e1854

	arm_func_start FUN_ov15_020e189c
FUN_ov15_020e189c: ; 0x020E189C
	stmfd sp!, {r4, r5, r6, lr}
	mov r6, r0
	ldr r0, [r6, #0x20]
	cmp r0, #0x12
	addls pc, pc, r0, lsl #2
	b _020E193C
_020E18B4: ; jump table
	b _020E193C ; case 0
	b _020E193C ; case 1
	b _020E193C ; case 2
	b _020E193C ; case 3
	b _020E1900 ; case 4
	b _020E190C ; case 5
	b _020E1900 ; case 6
	b _020E1918 ; case 7
	b _020E193C ; case 8
	b _020E1918 ; case 9
	b _020E1924 ; case 10
	b _020E193C ; case 11
	b _020E193C ; case 12
	b _020E193C ; case 13
	b _020E193C ; case 14
	b _020E193C ; case 15
	b _020E190C ; case 16
	b _020E193C ; case 17
	b _020E1930 ; case 18
_020E1900:
	ldr r0, _020E197C ; =0x0209AC44
	mov r1, #8
	b _020E1938
_020E190C:
	ldr r0, _020E197C ; =0x0209AC44
	mov r1, #6
	b _020E1938
_020E1918:
	ldr r0, _020E197C ; =0x0209AC44
	mov r1, #4
	b _020E1938
_020E1924:
	ldr r0, _020E197C ; =0x0209AC44
	mov r1, #9
	b _020E1938
_020E1930:
	ldr r0, _020E197C ; =0x0209AC44
	mov r1, #1
_020E1938:
	bl FUN_0202cf6c
_020E193C:
	ldr r5, _020E1980 ; =0x0209A070
	ldr r1, [r6, #0x1c]
	mov r0, r5
	bl  FUN_ov16_020f6d3c
	movs r4, r0
	bmi _020E1970
	mov r0, r5
	mov r1, r4
	mov r2, #1
	bl  FUN_ov16_020f6e8c
	ldr r0, _020E1984 ; =0x0209F5C0
	mov r1, r4
	bl  FUN_ov16_020f6530
_020E1970:
	ldr r0, [r6, #0x1c]
	str r0, [r6, #0x28]
	ldmfd sp!, {r4, r5, r6, pc}
_020E197C: .word unk_0209AC44
_020E1980: .word unk_0209A070
_020E1984: .word unk_0209F5C0
	arm_func_end FUN_ov15_020e189c

	arm_func_start FUN_ov15_020e1988
FUN_ov15_020e1988: ; 0x020E1988
	stmfd sp!, {r3, r4, r5, lr}
	mov r4, r0
	ldr r0, [r4, #8]
	mov r5, r1
	cmp r0, #4
	ldmnefd sp!, {r3, r4, r5, pc}
	ldr r0, _020E1A74 ; =0x0209F5C0
	mov r1, #0
	bl  FUN_ov16_020f6584
	cmp r0, #0
	ldmnefd sp!, {r3, r4, r5, pc}
	ldrh r0, [r5, #4]
	cmp r0, #1
	bne _020E1A38
	ldrh r0, [r5, #6]
	cmp r0, #0
	ldmnefd sp!, {r3, r4, r5, pc}
	ldrb r0, [r4, #0x11]
	cmp r0, #0
	bne _020E1A04
	mov r0, #1
	strb r0, [r4, #0x11]
	ldrh r1, [r5]
	ldrh r2, [r5, #2]
	mov r0, r4
	bl FUN_ov15_020e17f4
	str r0, [r4, #0x1c]
	cmp r0, #0
	beq _020E1A04
	mov r0, r4
	bl FUN_ov15_020e1814
_020E1A04:
	ldrh r1, [r5]
	mov r0, r4
	str r1, [r4, #0x14]
	ldrh r2, [r5, #2]
	str r2, [r4, #0x18]
	bl FUN_ov15_020e17f4
	ldr r1, [r4, #0x1c]
	str r0, [r4, #0x20]
	cmp r1, #0
	ldmeqfd sp!, {r3, r4, r5, pc}
	mov r0, r4
	bl FUN_ov15_020e1854
	ldmfd sp!, {r3, r4, r5, pc}
_020E1A38:
	ldrb r0, [r4, #0x11]
	cmp r0, #0
	ldrne r1, [r4, #0x1c]
	cmpne r1, #0
	beq _020E1A60
	ldr r0, [r4, #0x20]
	cmp r0, r1
	bne _020E1A60
	mov r0, r4
	bl FUN_ov15_020e189c
_020E1A60:
	mov r0, #0
	str r0, [r4, #0x20]
	str r0, [r4, #0x1c]
	strb r0, [r4, #0x11]
	ldmfd sp!, {r3, r4, r5, pc}
_020E1A74: .word unk_0209F5C0
	arm_func_end FUN_ov15_020e1988

	arm_func_start FUN_ov15_020e1a78
FUN_ov15_020e1a78: ; 0x020E1A78
	stmfd sp!, {r4, lr}
	mov r4, r0
	add r0, r4, #0x6c
	mov r1, #0
	mov r2, #0x90
	bl MI_CpuFill8
	ldr r0, _020E1AA8 ; =0x020E676C
	add r1, r4, #0x6c
	bl  FUN_ov16_020f316c
	mov r0, #1
	str r0, [r4, #8]
	ldmfd sp!, {r4, pc}
_020E1AA8: .word ov15_020E676C
	arm_func_end FUN_ov15_020e1a78

	arm_func_start FUN_ov15_020e1aac
FUN_ov15_020e1aac: ; 0x020E1AAC
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	ldr r6, [r0, #0x6c]
	cmp r6, #0
	ldrne r7, _020E1AF4 ; =0x020E405C
	ldrne r1, [r7]
	cmpne r1, #0
	ldmeqfd sp!, {r3, r4, r5, r6, r7, pc}
	add r5, r0, #0x6c
	mov r4, #0xc
_020E1AD0:
	ldr r2, [r7, #4]
	mov r0, r1
	mla r1, r2, r4, r5
	mov r2, r6
	bl  FUN_ov16_020f32b4
	ldr r1, [r7, #8]!
	cmp r1, #0
	bne _020E1AD0
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_020E1AF4: .word 0x020E405C
	arm_func_end FUN_ov15_020e1aac

	arm_func_start FUN_ov15_020e1af8
FUN_ov15_020e1af8: ; 0x020E1AF8
	stmfd sp!, {r4, r5, r6, lr}
	mov r6, #0
	add r5, r0, #0x6c
	mov r4, #0xc
_020E1B08:
	mla r0, r6, r4, r5
	bl  FUN_ov16_020f33fc
	add r6, r6, #1
	cmp r6, #0xc
	blt _020E1B08
	ldmfd sp!, {r4, r5, r6, pc}
	arm_func_end FUN_ov15_020e1af8

	arm_func_start FUN_ov15_020e1b20
FUN_ov15_020e1b20: ; 0x020E1B20
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	mov r12, #0xc
	mla r0, r1, r12, r0
	ldr r4, [r0, #0x6c]
	ldr r5, [sp, #0x1c]
	mov r7, r2
	cmp r4, #0
	mov r6, r3
	moveq r0, r7
	ldmeqfd sp!, {r3, r4, r5, r6, r7, pc}
	mov r0, r4
	mov r2, r6
	add r1, r7, #1
	bl  FUN_ov16_020f18e8
	mov r7, r0
	cmp r5, #0
	beq _020E1B78
	ldr r0, [sp, #0x18]
	ldr r2, [r5]
	mov r1, r4
	bl  FUN_ov16_020f19d4
	str r0, [r5]
_020E1B78:
	cmp r6, #0
	blt _020E1B90
	mov r0, r4
	mov r2, r6
	mov r1, #0
	bl  FUN_ov16_020f1138
_020E1B90:
	mov r0, r7
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
	arm_func_end FUN_ov15_020e1b20

	arm_func_start FUN_ov15_020e1b98
FUN_ov15_020e1b98: ; 0x020E1B98
	stmfd sp!, {r4, r5, r6, r7, r8, r9, lr}
	sub sp, sp, #0xc
	mov r5, r0
	bl FUN_0200505c
	mov r4, #0x20
	mov r6, #0
	mov r1, r0
	mov r0, r6
	mov r2, r4
	bl MIi_CpuClearFast
	bl FUN_0200505c
	mov r1, r4
	bl DC_FlushRange
	str r4, [sp, #8]
	mov r7, #3
	mov r2, r6
	mov r4, #5
	str r7, [sp]
	add r6, sp, #8
	mov r0, r5
	str r6, [sp, #4]
	mov r1, #2
	mov r3, r4
	bl FUN_ov15_020e1b20
	str r7, [sp]
	mov r2, r0
	str r6, [sp, #4]
	mov r0, r5
	mov r1, r7
	mov r3, r4
	bl FUN_ov15_020e1b20
	str r7, [sp]
	mov r2, r0
	str r6, [sp, #4]
	mov r0, r5
	mov r1, #4
	mov r3, r4
	bl FUN_ov15_020e1b20
	str r7, [sp]
	mov r2, r0
	str r6, [sp, #4]
	mov r1, r4
	mov r0, r5
	mov r3, #6
	bl FUN_ov15_020e1b20
	mov r3, r0
	ldr r0, [r5, #0x58]
	cmp r0, #0
	ldrne r0, [r5, #0x5c]
	cmpne r0, #0
	movne r0, #1
	moveq r0, #0
	cmp r0, #0
	beq _020E1CB0
	ldrh r2, [r5, #0x64]
	ldrh r1, [r5, #0x66]
	ldr r4, [sp, #8]
	ldr r0, [r5, #0x58]
	mul r1, r2, r1
	mov r1, r1, lsl #1
	add r2, r3, #1
	mov r3, #0
	str r4, [r5, #0x60]
	bl  FUN_ov16_020f1868
	ldrh r1, [r5, #0x64]
	ldrh r0, [r5, #0x66]
	ldr r2, [sp, #8]
	mul r0, r1, r0
	add r0, r2, r0, lsl #5
	str r0, [sp, #8]
_020E1CB0:
	bl FUN_02004f78
	mov r9, #0x20
	mov r4, #0
	mov r1, r0
	mov r0, r4
	mov r2, r9
	bl MIi_CpuClearFast
	bl FUN_02004f78
	mov r1, r9
	bl DC_FlushRange
	mov r6, #6
	str r9, [sp, #8]
	mov r8, #1
	str r8, [sp]
	add r7, sp, #8
	mov r0, r5
	str r7, [sp, #4]
	mov r1, r6
	mov r2, r4
	mov r3, #3
	bl FUN_ov15_020e1b20
	str r8, [sp]
	mov r2, r0
	str r7, [sp, #4]
	mov r0, r5
	mov r1, #7
	mov r3, r6
	bl FUN_ov15_020e1b20
	str r8, [sp]
	mov r2, r0
	str r7, [sp, #4]
	mov r0, r5
	mov r1, #8
	mov r3, r6
	bl FUN_ov15_020e1b20
	str r8, [sp]
	mov r2, r0
	str r7, [sp, #4]
	mov r0, r5
	mov r1, #9
	mov r3, r6
	bl FUN_ov15_020e1b20
	str r8, [sp]
	mov r2, r0
	str r7, [sp, #4]
	mov r0, r5
	mov r1, #0xa
	mov r3, r6
	bl FUN_ov15_020e1b20
	str r8, [sp]
	mov r2, r0
	mov r3, r6
	mov r0, r5
	mov r1, #0xb
	str r7, [sp, #4]
	bl FUN_ov15_020e1b20
	bl FUN_02004fcc
	mov r1, r0
	mov r0, r4
	mov r2, r9
	bl MIi_CpuClearFast
	bl FUN_02004fcc
	mov r1, r9
	bl DC_FlushRange
	str r9, [sp, #8]
	mov r0, #2
	stmia sp, {r0, r7}
	mov r0, r5
	mov r1, r8
	mov r3, r8
	mov r2, r4
	bl FUN_ov15_020e1b20
	ldr r3, [r5, #0x78]
	cmp r3, #0
	beq _020E1DF0
	ldr r0, [r3, #0xc]
	ldr r2, [r3, #0x10]
	mov r1, r4
	add r0, r3, r0
	bl FUN_020055bc
_020E1DF0:
	bl  FUN_ov16_020f10ac
	add sp, sp, #0xc
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, pc}
	arm_func_end FUN_ov15_020e1b98

	arm_func_start FUN_ov15_020e1dfc
FUN_ov15_020e1dfc: ; 0x020E1DFC
	stmfd sp!, {r3, lr}
	mov lr, r0
	ldr r0, [lr, #0x58]
	cmp r0, #0
	ldrne r0, [lr, #0x5c]
	cmpne r0, #0
	movne r0, #1
	moveq r0, #0
	cmp r0, #0
	ldrneb r0, [lr, #0x68]
	cmpne r0, #0
	ldmeqfd sp!, {r3, pc}
	ldrh r2, [lr, #0x64]
	ldrh r1, [lr, #0x66]
	mov r12, #0
	ldr r0, [lr, #0x5c]
	mul r3, r2, r1
	ldr r1, [lr, #0x60]
	mov r2, r3, lsl #5
	strb r12, [lr, #0x68]
	bl FUN_02005a1c
	ldmfd sp!, {r3, pc}
	arm_func_end FUN_ov15_020e1dfc

	arm_func_start FUN_ov15_020e1e54
FUN_ov15_020e1e54: ; 0x020E1E54
	stmfd sp!, {r3, lr}
	sub sp, sp, #0x20
	ldr r12, [r0, #0x58]
	mov r1, #0
	cmp r12, #0
	ldrne r0, [r0, #0x5c]
	cmpne r0, #0
	movne r1, #1
	cmp r1, #0
	addeq sp, sp, #0x20
	ldmeqfd sp!, {r3, pc}
	mov r0, #2
	str r0, [sp]
	mov r0, #1
	str r0, [sp, #4]
	mov r0, #5
	str r0, [sp, #8]
	mov r1, #0
	mov r0, #6
	str r0, [sp, #0xc]
	mov r0, #0x16
	str r0, [sp, #0x10]
	mov r0, #0xc
	str r0, [sp, #0x14]
	str r1, [sp, #0x18]
	ldr r0, _020E1ED4 ; =0x0209F5C0
	mov r2, r1
	mov r3, r1
	str r12, [sp, #0x1c]
	bl  FUN_ov16_020f5da0
	add sp, sp, #0x20
	ldmfd sp!, {r3, pc}
_020E1ED4: .word unk_0209F5C0
	arm_func_end FUN_ov15_020e1e54

	arm_func_start FUN_ov15_020e1ed8
FUN_ov15_020e1ed8: ; 0x020E1ED8
	stmfd sp!, {r3, r4, r5, r6, r7, r8, lr}
	sub sp, sp, #0x1c
	mov r4, r0
	add r0, r4, #0x58
	mov r8, r1
	mov r7, r2
	bl  FUN_ov16_020f2f20
	ldr r5, _020E1F74 ; =0x02099F50
	mov r6, #1
	ldr r0, [r5]
	mov r1, r6
	mov r2, #4
	bl FUN_02043310
	mov r0, #3
	str r0, [sp]
	stmib sp, {r0, r6}
	mov r0, #0
	str r0, [sp, #0xc]
	str r8, [sp, #0x10]
	str r7, [sp, #0x14]
	str r6, [sp, #0x18]
	ldrh r2, [r4, #0x64]
	ldrh r3, [r4, #0x66]
	ldr r0, [r4, #0x48]
	ldr r1, [r4, #0x5c]
	mov r2, r2, lsl #3
	mov r3, r3, lsl #3
	bl  FUN_ov16_020f2184
	ldr r0, [r5]
	bl FUN_0204331c
	ldrh r2, [r4, #0x64]
	ldrh r1, [r4, #0x66]
	ldr r0, [r4, #0x5c]
	strb r6, [r4, #0x68]
	mul r1, r2, r1
	mov r1, r1, lsl #5
	bl DC_FlushRange
	add sp, sp, #0x1c
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, pc}
_020E1F74: .word unk_02099F50
	arm_func_end FUN_ov15_020e1ed8

	arm_func_start FUN_ov15_020e1f78
FUN_ov15_020e1f78: ; 0x020E1F78
	stmfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, lr}
	sub sp, sp, #0x3c
	str r0, [sp, #0x20]
	mov r4, #7
	cmp r1, #0
	mov r7, #8
	movne r7, r4
	ldr r2, [sp, #0x20]
	movne r4, #0xb
	mov r3, #0xc
	mla r2, r4, r3, r2
	mov r6, #4
	mov r0, #0x18
	mov r1, #9
	ldr r5, [r2, #0x6c]
	movne r6, #2
	movne r0, #0x1c
	movne r1, #0xa
	cmp r5, #0
	beq _020E2034
	mov r2, #3
	mov r4, #0
	str r2, [sp]
	mov r2, r6, lsl #0x18
	mov r3, r7, lsl #0x18
	str r4, [sp, #4]
	mov r2, r2, asr #0x18
	str r2, [sp, #8]
	mov r2, r3, asr #0x18
	str r2, [sp, #0xc]
	and r0, r0, #0xff
	str r0, [sp, #0x10]
	and r0, r1, #0xff
	str r0, [sp, #0x14]
	str r4, [sp, #0x18]
	ldr r1, [r5, #0xc]
	ldr r0, _020E2170 ; =0x0209F5C0
	add r6, r5, r1
	mov r1, r4
	mov r3, r4
	mov r2, #1
	str r6, [sp, #0x1c]
	bl  FUN_ov16_020f5da0
	mov r0, r5
	mov r1, r4
	mov r2, #6
	bl  FUN_ov16_020f1138
_020E2034:
	ldr r0, [sp, #0x20]
	ldr r1, [r0, #0x84]
	cmp r1, #0
	beq _020E2120
	ldr r0, [r1, #0xc]
	mov r10, #0
	add r7, r1, r0
	mov r6, r10
	mov r5, #0xd
	mov r4, #6
	mov r11, #3
_020E2060:
	cmp r10, #0
	moveq r8, #7
	moveq r0, #4
	movne r0, #6
	movne r8, #0x13
	stmia sp, {r0, r6}
	mov r0, r8, lsl #0x18
	mov r0, r0, asr #0x18
	str r0, [sp, #8]
	str r5, [sp, #0xc]
	str r4, [sp, #0x10]
	str r11, [sp, #0x14]
	moveq r9, #5
	str r6, [sp, #0x18]
	ldr r0, _020E2170 ; =0x0209F5C0
	mov r1, r6
	mov r2, r6
	mov r3, r6
	movne r9, #7
	str r7, [sp, #0x1c]
	bl  FUN_ov16_020f5da0
	mov r0, #0x30
	strh r0, [sp, #0x30]
	mov r0, #0x18
	strh r0, [sp, #0x32]
	add r0, r7, #0x24
	str r0, [sp, #0x38]
	strh r8, [sp, #0x24]
	strh r5, [sp, #0x26]
	strh r4, [sp, #0x28]
	strh r11, [sp, #0x2a]
	strh r6, [sp, #0x2c]
	strh r6, [sp, #0x2e]
	strb r6, [sp, #0x34]
	str r6, [sp]
	add r0, sp, #0x24
	stmib sp, {r0, r6}
	str r6, [sp, #0xc]
	ldr r0, _020E2170 ; =0x0209F5C0
	mov r3, r9
	mov r1, r6
	mov r2, r6
	str r6, [sp, #0x10]
	bl  FUN_ov16_020f5c34
	add r10, r10, #1
	add r7, r7, #0x48
	cmp r10, #2
	blt _020E2060
_020E2120:
	ldr r4, _020E2174 ; =0x0209A070
	mov r5, #0
	mov r0, r4
	mov r1, r5
	mov r2, #5
	mov r3, #4
	str r5, [sp]
	bl  FUN_ov16_020f6c8c
	ldr r1, [sp, #0x20]
	mov r2, #7
	strb r0, [r1, #0x51]
	mov r0, r4
	mov r1, r5
	mov r3, #6
	str r5, [sp]
	bl  FUN_ov16_020f6c8c
	ldr r1, [sp, #0x20]
	strb r0, [r1, #0x52]
	add sp, sp, #0x3c
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
_020E2170: .word unk_0209F5C0
_020E2174: .word unk_0209A070
	arm_func_end FUN_ov15_020e1f78

	arm_func_start FUN_ov15_020e2178
FUN_ov15_020e2178: ; 0x020E2178
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, lr}
	sub sp, sp, #0x38
	mov r4, r0
	ldr r5, [r4, #0xcc]
	cmp r5, #0
	beq _020E21E0
	mov r0, #8
	str r0, [sp]
	mov r2, #1
	str r2, [sp, #4]
	mov r0, #4
	str r0, [sp, #8]
	mov r0, #6
	mov r1, #0
	str r0, [sp, #0xc]
	mov r0, #0x18
	str r0, [sp, #0x10]
	mov r0, #0xc
	str r0, [sp, #0x14]
	str r1, [sp, #0x18]
	ldr r3, [r5, #0xc]
	ldr r0, _020E22E4 ; =0x0209F5C0
	add r5, r5, r3
	mov r3, r1
	str r5, [sp, #0x1c]
	bl  FUN_ov16_020f5da0
_020E21E0:
	ldr r2, [r4, #0x9c]
	cmp r2, #0
	beq _020E225C
	ldr r0, [r2, #0xc]
	mov r1, #0
	add r8, r2, r0
	mov r7, #0xc
	mov r6, #0xe
	mov r5, #8
	mov r3, #3
	mov r2, #0x40
	mov r0, #0x18
	strh r3, [sp, #0x26]
	strh r2, [sp, #0x2c]
	strh r0, [sp, #0x2e]
	strh r7, [sp, #0x20]
	strh r6, [sp, #0x22]
	strh r5, [sp, #0x24]
	strh r1, [sp, #0x28]
	strh r1, [sp, #0x2a]
	strb r1, [sp, #0x30]
	str r8, [sp, #0x34]
	add r0, sp, #0x20
	str r1, [sp]
	stmib sp, {r0, r1}
	str r1, [sp, #0xc]
	ldr r0, _020E22E4 ; =0x0209F5C0
	mov r2, r1
	mov r3, #9
	str r1, [sp, #0x10]
	bl  FUN_ov16_020f5c34
_020E225C:
	ldr r1, [r4, #0xb4]
	cmp r1, #0
	addeq sp, sp, #0x38
	ldmeqfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
	ldr r0, [r1, #0xc]
	ldr r4, _020E22E4 ; =0x0209F5C0
	mov r9, #0
	add r10, r1, r0
	mov r8, #0xa
	mov r7, #0xb
	mov r6, #0xc
	mov r5, #3
	mov r11, #1
_020E2290:
	add r0, r9, #0xb
	str r0, [sp]
	mov r0, #0
	stmib sp, {r0, r8}
	str r7, [sp, #0xc]
	str r6, [sp, #0x10]
	str r5, [sp, #0x14]
	str r0, [sp, #0x18]
	mov r1, #0
	mov r0, r4
	mov r2, r11
	mov r3, r1
	str r10, [sp, #0x1c]
	bl  FUN_ov16_020f5da0
	add r0, r9, #1
	and r9, r0, #0xff
	cmp r9, #4
	add r10, r10, #0x48
	blo _020E2290
	add sp, sp, #0x38
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_020E22E4: .word unk_0209F5C0
	arm_func_end FUN_ov15_020e2178

	arm_func_start FUN_ov15_020e22e8
FUN_ov15_020e22e8: ; 0x020E22E8
	stmfd sp!, {r4, r5, lr}
	sub sp, sp, #0x2c
	ldr r2, [r0, #0xa8]
	cmp r2, #0
	addeq sp, sp, #0x2c
	ldmeqfd sp!, {r4, r5, pc}
	ldr r0, [r2, #0xc]
	mov r1, #0
	add r5, r2, r0
	mov r4, #0xc
	mov lr, #0xe
	mov r12, #8
	mov r3, #3
	mov r2, #0x40
	mov r0, #0x18
	strh r3, [sp, #0x1a]
	strh r2, [sp, #0x20]
	strh r0, [sp, #0x22]
	strh r4, [sp, #0x14]
	strh lr, [sp, #0x16]
	strh r12, [sp, #0x18]
	strh r1, [sp, #0x1c]
	strh r1, [sp, #0x1e]
	strb r1, [sp, #0x24]
	str r5, [sp, #0x28]
	add r0, sp, #0x14
	str r1, [sp]
	stmib sp, {r0, r1}
	str r1, [sp, #0xc]
	ldr r0, _020E2378 ; =0x0209F5C0
	mov r2, r1
	mov r3, #0xa
	str r1, [sp, #0x10]
	bl  FUN_ov16_020f5c34
	add sp, sp, #0x2c
	ldmfd sp!, {r4, r5, pc}
_020E2378: .word unk_0209F5C0
	arm_func_end FUN_ov15_020e22e8

	arm_func_start FUN_ov15_020e237c
FUN_ov15_020e237c: ; 0x020E237C
	stmfd sp!, {r4, lr}
	sub sp, sp, #0x38
	mov r4, r0
	ldr r12, [r4, #0xd8]
	cmp r12, #0
	beq _020E23E4
	mov r0, #0xf
	str r0, [sp]
	mov r2, #1
	str r2, [sp, #4]
	mov r0, #4
	str r0, [sp, #8]
	mov r0, #8
	mov r1, #0
	str r0, [sp, #0xc]
	mov r0, #0x18
	str r0, [sp, #0x10]
	mov r0, #9
	str r0, [sp, #0x14]
	str r1, [sp, #0x18]
	ldr r3, [r12, #0xc]
	ldr r0, _020E2468 ; =0x0209F5C0
	add r12, r12, r3
	mov r3, r1
	str r12, [sp, #0x1c]
	bl  FUN_ov16_020f5da0
_020E23E4:
	ldr r2, [r4, #0x90]
	cmp r2, #0
	addeq sp, sp, #0x38
	ldmeqfd sp!, {r4, pc}
	ldr r0, [r2, #0xc]
	mov r1, #0
	add lr, r2, r0
	mov r12, #0xd
	mov r4, #6
	mov r3, #3
	mov r2, #0x30
	mov r0, #0x18
	strh r3, [sp, #0x26]
	strh r2, [sp, #0x2c]
	strh r0, [sp, #0x2e]
	strh r12, [sp, #0x20]
	strh r12, [sp, #0x22]
	strh r4, [sp, #0x24]
	strh r1, [sp, #0x28]
	strh r1, [sp, #0x2a]
	strb r1, [sp, #0x30]
	str lr, [sp, #0x34]
	add r0, sp, #0x20
	str r1, [sp]
	stmib sp, {r0, r1}
	str r1, [sp, #0xc]
	ldr r0, _020E2468 ; =0x0209F5C0
	mov r2, r1
	mov r3, #0x10
	str r1, [sp, #0x10]
	bl  FUN_ov16_020f5c34
	add sp, sp, #0x38
	ldmfd sp!, {r4, pc}
_020E2468: .word unk_0209F5C0
	arm_func_end FUN_ov15_020e237c

	arm_func_start FUN_ov15_020e246c
FUN_ov15_020e246c: ; 0x020E246C
	stmfd sp!, {r3, r4, r5, lr}
	sub sp, sp, #0x38
	mov r4, r0
	ldr r5, [r4, #0xe4]
	cmp r5, #0
	beq _020E24D4
	mov r0, #0x11
	str r0, [sp]
	mov r2, #1
	str r2, [sp, #4]
	mov r0, #4
	str r0, [sp, #8]
	mov r0, #6
	mov r1, #0
	str r0, [sp, #0xc]
	mov r0, #0x18
	str r0, [sp, #0x10]
	mov r0, #0xc
	str r0, [sp, #0x14]
	str r1, [sp, #0x18]
	ldr r3, [r5, #0xc]
	ldr r0, _020E255C ; =0x0209F5C0
	add r5, r5, r3
	mov r3, r1
	str r5, [sp, #0x1c]
	bl  FUN_ov16_020f5da0
_020E24D4:
	ldr r2, [r4, #0x90]
	cmp r2, #0
	addeq sp, sp, #0x38
	ldmeqfd sp!, {r3, r4, r5, pc}
	ldr r0, [r2, #0xc]
	mov r1, #0
	add r5, r2, r0
	mov lr, #0xd
	mov r12, #0xe
	mov r4, #6
	mov r3, #3
	mov r2, #0x30
	mov r0, #0x18
	strh r3, [sp, #0x26]
	strh r2, [sp, #0x2c]
	strh r0, [sp, #0x2e]
	strh lr, [sp, #0x20]
	strh r12, [sp, #0x22]
	strh r4, [sp, #0x24]
	strh r1, [sp, #0x28]
	strh r1, [sp, #0x2a]
	strb r1, [sp, #0x30]
	str r5, [sp, #0x34]
	add r0, sp, #0x20
	str r1, [sp]
	stmib sp, {r0, r1}
	str r1, [sp, #0xc]
	ldr r0, _020E255C ; =0x0209F5C0
	mov r2, r1
	mov r3, #0x12
	str r1, [sp, #0x10]
	bl  FUN_ov16_020f5c34
	add sp, sp, #0x38
	ldmfd sp!, {r3, r4, r5, pc}
_020E255C: .word unk_0209F5C0
	arm_func_end FUN_ov15_020e246c

	arm_func_start FUN_ov15_020e2560
FUN_ov15_020e2560: ; 0x020E2560
	ldr r0, _020E256C ; =0x0209F5C0
	ldr r12, _020E2570 ; = FUN_ov16_020f6274
	bx r12
_020E256C: .word unk_0209F5C0
_020E2570: .word  FUN_ov16_020f6274
	arm_func_end FUN_ov15_020e2560

	arm_func_start FUN_ov15_020e2574
FUN_ov15_020e2574: ; 0x020E2574
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	mov r7, r0
	mov r6, #0
	sub r5, r6, #1
	ldr r0, _020E2624 ; =0x020A11DC
	add r1, r7, #0x100
	mov r2, #0x9c
	str r6, [r7, #8]
	str r6, [r7, #0x48]
	strb r6, [r7, #0x10]
	strb r6, [r7, #0x11]
	str r5, [r7, #0x14]
	str r5, [r7, #0x18]
	str r6, [r7, #0x1c]
	str r6, [r7, #0x20]
	str r6, [r7, #0x24]
	str r6, [r7, #0x28]
	bl MI_CpuCopy8
	mov r4, #5
	mov r1, r6
	mov r2, r4
	add r0, r7, #0x50
	str r6, [r7, #0xc]
	str r6, [r7, #0xfc]
	bl MI_CpuFill8
	ldr r0, _020E2628 ; =0x0209A070
	mov r1, r4
	bl  FUN_ov16_020f6c20
	add r0, r7, #0x58
	str r5, [r7, #0x3c]
	mov r1, #1
	str r6, [r7, #0x34]
	str r6, [r7, #0x38]
	str r6, [r7, #0x40]
	strb r6, [r7, #0x44]
	strb r6, [r7, #0x45]
	bl  FUN_ov16_020f2f7c
	add r0, r7, #0x58
	mov r1, #0x16
	mov r2, #0xc
	bl  FUN_ov16_020f2fa8
	mov r0, r7
	bl FUN_ov15_020e1a78
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_020E2624: .word unk_020A11DC
_020E2628: .word unk_0209A070
	arm_func_end FUN_ov15_020e2574

	arm_func_start FUN_ov15_020e262c
FUN_ov15_020e262c: ; 0x020E262C
	stmfd sp!, {r4, r5, r6, lr}
	mov r4, r0
	ldr r1, [r4, #8]
	cmp r1, #5
	addls pc, pc, r1, lsl #2
	ldmfd sp!, {r4, r5, r6, pc}
_020E2644: ; jump table
	ldmfd sp!, {r4, r5, r6, pc} ; case 0
	b _020E265C ; case 1
	b _020E2684 ; case 2
	b _020E26A4 ; case 3
	b _020E26CC ; case 4
	b _020E26CC ; case 5
_020E265C:
	add r0, r4, #0x6c
	mov r1, #0xc
	bl  FUN_ov16_020f330c
	cmp r0, #0
	ldmeqfd sp!, {r4, r5, r6, pc}
	mov r0, r4
	bl FUN_ov15_020e1aac
	mov r0, #2
	str r0, [r4, #8]
	ldmfd sp!, {r4, r5, r6, pc}
_020E2684:
	bl FUN_ov15_020e1b98
	mov r0, r4
	ldr r1, [r0]
	ldr r1, [r1, #0x4c]
	blx r1
	mov r0, #3
	str r0, [r4, #8]
	ldmfd sp!, {r4, r5, r6, pc}
_020E26A4:
	ldr r1, _020E273C ; =0x020E64D4
	ldr r1, [r1]
	cmp r1, #3
	bne _020E26BC
	mov r1, #1
	b _020E26C0
_020E26BC:
	mov r1, #0
_020E26C0:
	bl FUN_ov15_020e29c0
	mov r0, #4
	str r0, [r4, #8]
_020E26CC:
	mov r0, r4
	bl FUN_ov15_020e2560
	ldr r0, [r4, #4]
	add r1, r4, #0x34
	ldr r2, [r0]
	ldr r2, [r2, #0x3c]
	blx r2
	mov r0, r4
	bl FUN_ov15_020e2bc8
	ldr r6, _020E2740 ; =0x0209F5C0
	mov r5, #0
	mov r0, r6
	mov r1, r5
	bl  FUN_ov16_020f672c
	mov r0, r6
	mov r1, r5
	bl  FUN_ov16_020f6584
	cmp r0, #0
	ldmnefd sp!, {r4, r5, r6, pc}
	ldr r0, [r4, #0x28]
	cmp r0, #0
	ldmeqfd sp!, {r4, r5, r6, pc}
	mov r0, r4
	bl FUN_ov15_020e12cc
	mov r0, r6
	mov r1, r5
	bl  FUN_ov16_020f672c
	ldmfd sp!, {r4, r5, r6, pc}
_020E273C: .word ov15_020E64D4
_020E2740: .word unk_0209F5C0
	arm_func_end FUN_ov15_020e262c

	arm_func_start FUN_ov15_020e2744
FUN_ov15_020e2744: ; 0x020E2744
	stmfd sp!, {r3, lr}
	ldr r1, [r0, #8]
	cmp r1, #4
	cmpne r1, #5
	cmpne r1, #6
	ldmnefd sp!, {r3, pc}
	bl FUN_ov15_020e1dfc
	ldr r0, _020E2770 ; =0x0209F5C0
	mov r1, #0
	bl  FUN_ov16_020f6a9c
	ldmfd sp!, {r3, pc}
_020E2770: .word unk_0209F5C0
	arm_func_end FUN_ov15_020e2744

	arm_func_start FUN_ov15_020e2774
FUN_ov15_020e2774: ; 0x020E2774
	stmfd sp!, {r4, lr}
	mov r4, r0
	ldr r0, _020E27B4 ; =0x0209F5C0
	mov r1, #0
	bl  FUN_ov16_020f5af0
	ldr r0, _020E27B8 ; =0x0209A070
	bl  FUN_ov16_020f6c58
	add r0, r4, #0x6c
	mov r1, #0xc
	bl  FUN_ov16_020f338c
	mov r0, r4
	bl FUN_ov15_020e1af8
	add r0, r4, #0x58
	mov r1, #1
	bl  FUN_ov16_020f2fe4
	ldmfd sp!, {r4, pc}
_020E27B4: .word unk_0209F5C0
_020E27B8: .word unk_0209A070
	arm_func_end FUN_ov15_020e2774

	arm_func_start FUN_ov15_020e27bc
FUN_ov15_020e27bc: ; 0x020E27BC
	stmfd sp!, {r3, r4, r5, lr}
	mov r4, #0
	mov r5, r0
	ldr r0, _020E2988 ; =0x0209F5C0
	mov r1, r4
	mov r2, r4
	bl  FUN_ov16_020f5ff4
	ldr r0, _020E298C ; =0x0209A070
	bl  FUN_ov16_020f6c4c
	mov r0, r5
	bl FUN_ov15_020e1e54
	ldr r0, [r5, #0xc]
	cmp r0, #6
	addls pc, pc, r0, lsl #2
	ldmfd sp!, {r3, r4, r5, pc}
_020E27F8: ; jump table
	b _020E2814 ; case 0
	b _020E284C ; case 1
	b _020E2880 ; case 2
	b _020E28D0 ; case 3
	b _020E2904 ; case 4
	b _020E2938 ; case 5
	b _020E2960 ; case 6
_020E2814:
	mov r0, r5
	mov r1, r4
	bl FUN_ov15_020e1f78
	ldr r3, _020E2990 ; =0x020E6788
	mov r0, r5
	mov r1, r4
	mov r2, #0x1a
	str r3, [r5, #0x48]
	bl FUN_ov15_020e1ed8
	ldr r2, _020E2994 ; =0x020E67AC
	mov r0, r5
	mov r1, #5
	bl FUN_ov15_020e125c
	ldmfd sp!, {r3, r4, r5, pc}
_020E284C:
	mov r0, r5
	bl FUN_ov15_020e2178
	ldr r3, _020E2998 ; =0x020E67E0
	mov r0, r5
	mov r1, r4
	mov r2, #0xc
	str r3, [r5, #0x48]
	bl FUN_ov15_020e1ed8
	ldr r2, _020E299C ; =0x020E6804
	mov r0, r5
	mov r1, #5
	bl FUN_ov15_020e125c
	ldmfd sp!, {r3, r4, r5, pc}
_020E2880:
	mov r0, r5
	bl FUN_ov15_020e237c
	ldr r3, _020E29A0 ; =0x020E6858
	mov r0, r5
	mov r1, r4
	mov r2, #0x1a
	str r3, [r5, #0x48]
	bl FUN_ov15_020e1ed8
	ldr r0, [r5, #0xfc]
	mov r1, #5
	cmp r0, #4
	bne _020E28C0
	ldr r2, _020E29A4 ; =0x020E6884
	mov r0, r5
	bl FUN_ov15_020e125c
	ldmfd sp!, {r3, r4, r5, pc}
_020E28C0:
	ldr r2, _020E29A8 ; =0x020E68A8
	mov r0, r5
	bl FUN_ov15_020e125c
	ldmfd sp!, {r3, r4, r5, pc}
_020E28D0:
	mov r0, r5
	bl FUN_ov15_020e246c
	ldr r3, _020E29AC ; =0x020E68D4
	mov r0, r5
	mov r1, r4
	mov r2, #0xc
	str r3, [r5, #0x48]
	bl FUN_ov15_020e1ed8
	ldr r2, [r5, #0x4c]
	mov r0, r5
	mov r1, #8
	bl FUN_ov15_020e125c
	ldmfd sp!, {r3, r4, r5, pc}
_020E2904:
	mov r0, r5
	bl FUN_ov15_020e246c
	ldr r3, _020E29B0 ; =0x020E68F8
	mov r0, r5
	mov r1, r4
	mov r2, #0xc
	str r3, [r5, #0x48]
	bl FUN_ov15_020e1ed8
	ldr r2, _020E29B4 ; =0x020E6928
	mov r0, r5
	mov r1, #5
	bl FUN_ov15_020e125c
	ldmfd sp!, {r3, r4, r5, pc}
_020E2938:
	mov r0, r5
	mov r1, r4
	bl FUN_ov15_020e1f78
	ldr r3, _020E29B8 ; =0x020E6960
	mov r0, r5
	mov r1, r4
	mov r2, #0x1a
	str r3, [r5, #0x48]
	bl FUN_ov15_020e1ed8
	ldmfd sp!, {r3, r4, r5, pc}
_020E2960:
	mov r0, r5
	mov r1, #1
	bl FUN_ov15_020e1f78
	ldr r3, _020E29BC ; =0x020E6988
	mov r0, r5
	mov r1, r4
	mov r2, #0xc
	str r3, [r5, #0x48]
	bl FUN_ov15_020e1ed8
	ldmfd sp!, {r3, r4, r5, pc}
_020E2988: .word unk_0209F5C0
_020E298C: .word unk_0209A070
_020E2990: .word ov15_020E6788
_020E2994: .word ov15_020E67AC
_020E2998: .word ov15_020E67E0
_020E299C: .word ov15_020E6804
_020E29A0: .word ov15_020E6858
_020E29A4: .word ov15_020E6884
_020E29A8: .word ov15_020E68A8
_020E29AC: .word ov15_020E68D4
_020E29B0: .word ov15_020E68F8
_020E29B4: .word ov15_020E6928
_020E29B8: .word ov15_020E6960
_020E29BC: .word ov15_020E6988
	arm_func_end FUN_ov15_020e27bc

	arm_func_start FUN_ov15_020e29c0
FUN_ov15_020e29c0: ; 0x020E29C0
	stmfd sp!, {r3, r4, r5, r6, r7, r8, lr}
	sub sp, sp, #4
	mov r7, r0
	str r1, [r7, #0xc]
	ldr r4, _020E2BC0 ; =0x0209F5C0
	mov r8, #2
	bl FUN_ov15_020e27bc
	mov r5, #0
	mov r0, r7
	mov r1, r5
	bl FUN_ov15_020e1294
	ldr r0, [r7, #0xc]
	mov r6, #1
	str r5, [r7, #0x2c]
	str r6, [r7, #0x30]
	cmp r0, #6
	addls pc, pc, r0, lsl #2
	b _020E2BA8
_020E2A08: ; jump table
	b _020E2A24 ; case 0
	b _020E2A78 ; case 1
	b _020E2AC0 ; case 2
	b _020E2B00 ; case 3
	b _020E2B6C ; case 4
	b _020E2A24 ; case 5
	b _020E2A24 ; case 6
_020E2A24:
	cmp r0, #6
	movne r6, r5
	mov r5, #0
	mov r0, r4
	mov r1, r5
	mov r2, #3
	str r6, [r7, #0x2c]
	str r8, [r7, #0x30]
	bl  FUN_ov16_020f60f8
	mov r0, r4
	mov r1, r5
	mov r2, r8
	bl  FUN_ov16_020f60f8
	ldr r1, [r7, #0x2c]
	ldr r0, _020E2BC4 ; =0x0209A070
	add r1, r1, #1
	add r1, r7, r1
	ldrb r1, [r1, #0x50]
	mov r2, #1
	bl  FUN_ov16_020f6e8c
	b _020E2BB0
_020E2A78:
	mov r0, r4
	mov r1, r5
	mov r2, #8
	bl  FUN_ov16_020f60f8
	mov r0, r4
	mov r1, r5
	mov r2, r8
	bl  FUN_ov16_020f60f8
	ldr r0, _020E2BC4 ; =0x0209A070
	mov r1, r5
	mov r3, r5
	str r6, [sp]
	mov r2, #9
	bl  FUN_ov16_020f6c8c
	strb r0, [r7, #0x53]
	str r5, [r7, #0x19c]
	str r6, [r7, #0xfc]
	b _020E2BB0
_020E2AC0:
	mov r0, r4
	mov r1, r5
	mov r2, #0xf
	bl  FUN_ov16_020f60f8
	mov r0, r4
	mov r1, r5
	mov r2, r8
	bl  FUN_ov16_020f60f8
	ldr r0, _020E2BC4 ; =0x0209A070
	mov r1, r5
	mov r3, r5
	str r8, [sp]
	mov r2, #0x10
_020E2AF4:
	bl  FUN_ov16_020f6c8c
	strb r0, [r7, #0x54]
	b _020E2BB0
_020E2B00:
	mov r0, r4
	mov r1, r5
	mov r2, #0x11
	bl  FUN_ov16_020f60f8
	mov r0, r4
	mov r1, r5
	mov r2, r8
	bl  FUN_ov16_020f60f8
	mov r1, #3
	mov r6, #0x12
	str r1, [sp]
	ldr r0, _020E2BC4 ; =0x0209A070
	mov r1, r5
	mov r2, r6
	mov r3, r5
	bl  FUN_ov16_020f6c8c
	ldr r1, [r7, #0xfc]
	strb r0, [r7, #0x54]
	cmp r1, #0xe
	bne _020E2BB0
	mov r0, r4
	mov r1, r5
	bl  FUN_ov16_020f64cc
	sub r0, r6, #0x13
	str r5, [r7, #0x28]
	str r0, [r7, #0x2c]
	b _020E2BB0
_020E2B6C:
	mov r0, r4
	mov r1, r5
	mov r2, #0x11
	bl  FUN_ov16_020f60f8
	mov r0, r4
	mov r1, r5
	mov r2, r8
	bl  FUN_ov16_020f60f8
	mov r2, #3
	str r2, [sp]
	ldr r0, _020E2BC4 ; =0x0209A070
	mov r1, r5
	mov r3, r5
	mov r2, #0x12
	b _020E2AF4
_020E2BA8:
	mov r0, #1
	str r0, [r7, #0x30]
_020E2BB0:
	mov r0, #0
	str r0, [r7, #0x28]
	add sp, sp, #4
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, pc}
_020E2BC0: .word unk_0209F5C0
_020E2BC4: .word unk_0209A070
	arm_func_end FUN_ov15_020e29c0

	arm_func_start FUN_ov15_020e2bc8
FUN_ov15_020e2bc8: ; 0x020E2BC8
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	mov r7, r0
	ldr r1, [r7, #0xc]
	mov r4, #0
	cmp r1, #6
	addls pc, pc, r1, lsl #2
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_020E2BE4: ; jump table
	ldmfd sp!, {r3, r4, r5, r6, r7, pc} ; case 0
	b _020E2C00 ; case 1
	ldmfd sp!, {r3, r4, r5, r6, r7, pc} ; case 2
	b _020E2D64 ; case 3
	b _020E2D64 ; case 4
	ldmfd sp!, {r3, r4, r5, r6, r7, pc} ; case 5
	ldmfd sp!, {r3, r4, r5, r6, r7, pc} ; case 6
_020E2C00:
	ldr r5, _020E2D90 ; =0x0209F5C0
	mov r6, r4
_020E2C08:
	ldr r1, [r7, #0x19c]
	add r2, r6, #0xb
	mov r0, r1, asr #2
	add r0, r1, r0, lsr #29
	mov r0, r0, asr #3
	mov r1, r0, lsr #0x1f
	rsb r0, r1, r0, lsl #30
	add r0, r1, r0, ror #30
	cmp r6, r0
	mov r0, r5
	mov r1, r4
	bne _020E2C40
	bl  FUN_ov16_020f60f8
	b _020E2C44
_020E2C40:
	bl  FUN_ov16_020f6084
_020E2C44:
	add r6, r6, #1
	cmp r6, #4
	blt _020E2C08
	ldr r1, [r7, #0x19c]
	ldr r0, [r7, #0xfc]
	add r1, r1, #1
	str r1, [r7, #0x19c]
	cmp r0, #0xe
	addls pc, pc, r0, lsl #2
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_020E2C6C: ; jump table
	ldmfd sp!, {r3, r4, r5, r6, r7, pc} ; case 0
	ldmfd sp!, {r3, r4, r5, r6, r7, pc} ; case 1
	ldmfd sp!, {r3, r4, r5, r6, r7, pc} ; case 2
	b _020E2CA8 ; case 3
	b _020E2CE4 ; case 4
	b _020E2CE4 ; case 5
	ldmfd sp!, {r3, r4, r5, r6, r7, pc} ; case 6
	ldmfd sp!, {r3, r4, r5, r6, r7, pc} ; case 7
	b _020E2D1C ; case 8
	ldmfd sp!, {r3, r4, r5, r6, r7, pc} ; case 9
	ldmfd sp!, {r3, r4, r5, r6, r7, pc} ; case 10
	ldmfd sp!, {r3, r4, r5, r6, r7, pc} ; case 11
	b _020E2D2C ; case 12
	b _020E2D00 ; case 13
	b _020E2D00 ; case 14
_020E2CA8:
	ldr r1, [r7, #0x48]
	ldr r0, _020E2D94 ; =0x020E69BC
	cmp r1, r0
	ldmeqfd sp!, {r3, r4, r5, r6, r7, pc}
	ldr r3, _020E2D98 ; =0x020E69D8
	mov r0, r7
	mov r1, #0
	mov r2, #0xc
	str r3, [r7, #0x48]
	bl FUN_ov15_020e1ed8
	ldr r2, _020E2D9C ; =0x020E69F4
	mov r0, r7
	mov r1, #5
	bl FUN_ov15_020e125c
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_020E2CE4:
	ldr r0, [r7, #0xc]
	cmp r0, #2
	ldmeqfd sp!, {r3, r4, r5, r6, r7, pc}
	mov r0, r7
	mov r1, #2
	bl FUN_ov15_020e29c0
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_020E2D00:
	ldr r0, [r7, #0xc]
	cmp r0, #3
	ldmeqfd sp!, {r3, r4, r5, r6, r7, pc}
	mov r0, r7
	mov r1, #3
	bl FUN_ov15_020e29c0
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_020E2D1C:
	mov r0, r7
	mov r1, #4
	bl FUN_ov15_020e29c0
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_020E2D2C:
	mov r0, r7
	mov r1, #4
	bl FUN_ov15_020e29c0
	ldr r3, _020E2DA0 ; =0x020E6A30
	mov r0, r7
	mov r1, #0
	mov r2, #0xc
	str r3, [r7, #0x48]
	bl FUN_ov15_020e1ed8
	ldr r2, _020E2DA4 ; =0x020E6A54
	mov r0, r7
	mov r1, #5
	bl FUN_ov15_020e125c
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_020E2D64:
	ldr r1, [r7, #0xfc]
	cmp r1, #0xb
	ldmnefd sp!, {r3, r4, r5, r6, r7, pc}
	mov r1, r4
	str r1, [r7, #0x1c]
	str r1, [r7, #0x20]
	str r1, [r7, #0x24]
	str r1, [r7, #0x28]
	str r1, [r7, #0xfc]
	bl FUN_ov15_020e29c0
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_020E2D90: .word unk_0209F5C0
_020E2D94: .word ov15_020E69BC
_020E2D98: .word ov15_020E69D8
_020E2D9C: .word ov15_020E69F4
_020E2DA0: .word ov15_020E6A30
_020E2DA4: .word ov15_020E6A54
	arm_func_end FUN_ov15_020e2bc8

	arm_func_start FUN_ov15_020e2da8
FUN_ov15_020e2da8: ; 0x020E2DA8
	stmfd sp!, {r4, lr}
	mov r4, r0
	bl FUN_0201e078
	mov r0, r4
	ldmfd sp!, {r4, pc}
	arm_func_end FUN_ov15_020e2da8

	arm_func_start FUN_ov15_020e2dbc
FUN_ov15_020e2dbc: ; 0x020E2DBC
	stmfd sp!, {r4, lr}
	mov r3, #6
	str r3, [r0, #0xc]
	ldr r1, _020E2DF4 ; =0x0209A454
	mov r4, #1
	strb r4, [r1, #0x81]
	ldrb r2, [r1, #0x83]
	mov r0, r3
	orr r2, r2, #0x40
	strb r2, [r1, #0x83]
	bl  FUN_ov16_020f153c
	mov r0, r4
	bl FUN_02029d44
	ldmfd sp!, {r4, pc}
_020E2DF4: .word unk_0209A454
	arm_func_end FUN_ov15_020e2dbc

	arm_func_start FUN_ov15_020e2df8
FUN_ov15_020e2df8: ; 0x020E2DF8
	stmfd sp!, {r4, lr}
	mov r4, r0
	ldr r0, [r4, #0xc]
	cmp r0, #4
	ldmnefd sp!, {r4, pc}
	ldr r0, _020E2E38 ; =0x00002FFF
	tst r1, r0
	ldmeqfd sp!, {r4, pc}
	ldr r0, _020E2E3C ; =0x0209AC44
	mov r1, #1
	bl FUN_0202cf6c
	mov r0, r4
	bl FUN_ov15_020e2fc4
	mov r0, #6
	str r0, [r4, #0xc]
	ldmfd sp!, {r4, pc}
_020E2E38: .word 0x00002FFF
_020E2E3C: .word unk_0209AC44
	arm_func_end FUN_ov15_020e2df8

	arm_func_start FUN_ov15_020e2e40
FUN_ov15_020e2e40: ; 0x020E2E40
	stmfd sp!, {r4, lr}
	mov r4, r0
	ldrb r0, [r4, #0x14]
	cmp r0, #0
	bne _020E2E60
	ldrh r0, [r1, #4]
	cmp r0, #1
	ldmeqfd sp!, {r4, pc}
_020E2E60:
	ldr r0, [r4, #0xc]
	mov r2, #1
	strb r2, [r4, #0x14]
	cmp r0, #4
	ldreqh r0, [r1, #4]
	cmpeq r0, #1
	ldmnefd sp!, {r4, pc}
	ldr r0, _020E2E9C ; =0x0209AC44
	mov r1, r2
	bl FUN_0202cf6c
	mov r0, r4
	bl FUN_ov15_020e2fc4
	mov r0, #6
	str r0, [r4, #0xc]
	ldmfd sp!, {r4, pc}
_020E2E9C: .word unk_0209AC44
	arm_func_end FUN_ov15_020e2e40

	arm_func_start FUN_ov15_020e2ea0
FUN_ov15_020e2ea0: ; 0x020E2EA0
	stmfd sp!, {r4, lr}
	mov r4, r0
	add r0, r4, #0x18
	mov r1, #0
	mov r2, #0x24
	bl MI_CpuFill8
	ldr r0, _020E2ED0 ; =0x020E6BD4
	add r1, r4, #0x18
	bl  FUN_ov16_020f316c
	mov r0, #1
	str r0, [r4, #0xc]
	ldmfd sp!, {r4, pc}
_020E2ED0: .word ov15_020E6BD4
	arm_func_end FUN_ov15_020e2ea0

	arm_func_start FUN_ov15_020e2ed4
FUN_ov15_020e2ed4: ; 0x020E2ED4
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	ldr r6, [r0, #0x18]
	cmp r6, #0
	ldrne r1, _020E2F20 ; =0x020E40BC
	ldrne r7, _020E2F24 ; =0x020E40BC
	ldrne r1, [r1]
	cmpne r1, #0
	ldmeqfd sp!, {r3, r4, r5, r6, r7, pc}
	add r5, r0, #0x18
	mov r4, #0xc
_020E2EFC:
	ldr r2, [r7, #4]
	mov r0, r1
	mla r1, r2, r4, r5
	mov r2, r6
	bl  FUN_ov16_020f32b4
	ldr r1, [r7, #8]!
	cmp r1, #0
	bne _020E2EFC
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_020E2F20: .word 0x020E40BC
_020E2F24: .word 0x020E40BC
	arm_func_end FUN_ov15_020e2ed4

	arm_func_start FUN_ov15_020e2f28
FUN_ov15_020e2f28: ; 0x020E2F28
	stmfd sp!, {r4, r5, r6, lr}
	mov r6, #0
	add r5, r0, #0x18
	mov r4, #0xc
_020E2F38:
	mla r0, r6, r4, r5
	bl  FUN_ov16_020f33fc
	add r6, r6, #1
	cmp r6, #3
	blt _020E2F38
	ldmfd sp!, {r4, r5, r6, pc}
	arm_func_end FUN_ov15_020e2f28

	arm_func_start FUN_ov15_020e2f50
FUN_ov15_020e2f50: ; 0x020E2F50
	stmfd sp!, {r3, r4, r5, lr}
	ldr r2, [r0, #0x44]
	mov r1, #0xc
	mla r0, r2, r1, r0
	ldr r5, [r0, #0x18]
	cmp r5, #0
	ldmeqfd sp!, {r3, r4, r5, pc}
	mov r4, #0
	mov r1, r4
	mov r2, r4
	mov r0, #1
	bl FUN_020044e0
	ldr r0, [r5, #0xc]
	ldr r2, [r5, #0x10]
	mov r1, r4
	add r0, r5, r0
	bl FUN_020053fc
	ldr r0, [r5, #0x14]
	ldr r2, [r5, #0x18]
	mov r1, r4
	add r0, r5, r0
	bl FUN_0200577c
	bl FUN_02005afc
	ldmib r5, {r0, r2}
	mov r1, r4
	add r0, r5, r0
	bl FUN_02005b88
	bl FUN_02005bfc
	ldmfd sp!, {r3, r4, r5, pc}
	arm_func_end FUN_ov15_020e2f50

	arm_func_start FUN_ov15_020e2fc4
FUN_ov15_020e2fc4: ; 0x020E2FC4
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, lr}
	mov r6, r0
	ldr r0, [r6, #0x10]
	mov r1, #0
	add r5, r0, #1
	cmp r5, #4
	ldmgefd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
	mov r7, #1
	mov r9, r7
	mov r8, #2
	mov r4, r7
_020E2FF0:
	cmp r5, #1
	beq _020E300C
	cmp r5, #2
	beq _020E3020
	cmp r5, #3
	beq _020E3050
	b _020E305C
_020E300C:
	ldr r0, [r6, #0x3c]
	cmp r0, #0
	movne r1, r4
	strne r4, [r6, #0x44]
	b _020E305C
_020E3020:
	ldr r0, [r6, #0x40]
	cmp r0, #0
	beq _020E305C
	cmp r5, #0
	beq _020E3044
	mov r0, r6
	ldr r1, [r0]
	ldr r1, [r1, #0x50]
	blx r1
_020E3044:
	mov r1, r9
	str r8, [r6, #0x44]
	b _020E305C
_020E3050:
	mov r0, r6
	bl FUN_ov15_020e2dbc
	mov r1, r7
_020E305C:
	cmp r1, #0
	strne r5, [r6, #0x10]
	ldmnefd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
	add r5, r5, #1
	cmp r5, #4
	blt _020E2FF0
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
	arm_func_end FUN_ov15_020e2fc4

	arm_func_start FUN_ov15_020e3078
FUN_ov15_020e3078: ; 0x020E3078
	stmfd sp!, {r4, lr}
	mov r4, r0
	ldr r1, [r4, #0x10]
	cmp r1, #1
	beq _020E3098
	cmp r1, #2
	beq _020E309C
	b _020E30B4
_020E3098:
	b _020E309C
_020E309C:
	bl FUN_ov15_020e2f50
	mov r1, #0x4000000
	ldr r0, [r1]
	bic r0, r0, #0x1f00
	orr r0, r0, #0x100
	str r0, [r1]
_020E30B4:
	mov r1, #3
	mov r0, r4
	str r1, [r4, #0xc]
	ldr r1, [r0]
	ldr r1, [r1, #0x4c]
	blx r1
	ldmfd sp!, {r4, pc}
	arm_func_end FUN_ov15_020e3078

	arm_func_start FUN_ov15_020e30d0
FUN_ov15_020e30d0: ; 0x020E30D0
	ldr r12, _020E30F0 ; =FUN_ov15_020e2ea0
	mov r1, #0
	str r1, [r0, #0xc]
	strb r1, [r0, #0x14]
	str r1, [r0, #0x10]
	str r1, [r0, #0x3c]
	str r1, [r0, #0x40]
	bx r12
_020E30F0: .word FUN_ov15_020e2ea0
	arm_func_end FUN_ov15_020e30d0

	arm_func_start FUN_ov15_020e30f4
FUN_ov15_020e30f4: ; 0x020E30F4
	stmfd sp!, {r4, lr}
	mov r4, r0
	ldr r1, [r4, #0xc]
	cmp r1, #6
	addls pc, pc, r1, lsl #2
	ldmfd sp!, {r4, pc}
_020E310C: ; jump table
	ldmfd sp!, {r4, pc} ; case 0
	b _020E3128 ; case 1
	ldmfd sp!, {r4, pc} ; case 2
	b _020E3150 ; case 3
	ldmfd sp!, {r4, pc} ; case 4
	ldmfd sp!, {r4, pc} ; case 5
	b _020E316C ; case 6
_020E3128:
	add r0, r4, #0x18
	mov r1, #3
	bl  FUN_ov16_020f330c
	cmp r0, #0
	ldmeqfd sp!, {r4, pc}
	mov r0, r4
	bl FUN_ov15_020e2ed4
	mov r0, #2
	str r0, [r4, #0xc]
	ldmfd sp!, {r4, pc}
_020E3150:
	ldr r1, [r0]
	ldr r1, [r1, #0x58]
	blx r1
	cmp r0, #0
	moveq r0, #4
	streq r0, [r4, #0xc]
	ldmfd sp!, {r4, pc}
_020E316C:
	ldr r1, [r0]
	ldr r1, [r1, #0x58]
	blx r1
	cmp r0, #0
	ldmnefd sp!, {r4, pc}
	ldr r0, [r4, #0x10]
	cmp r0, #3
	ldmeqfd sp!, {r4, pc}
	mov r0, r4
	bl FUN_ov15_020e3078
	ldmfd sp!, {r4, pc}
	arm_func_end FUN_ov15_020e30f4

	arm_func_start FUN_ov15_020e3198
FUN_ov15_020e3198: ; 0x020E3198
	stmfd sp!, {r4, lr}
	mov r4, r0
	ldr r1, [r4, #0xc]
	cmp r1, #6
	addls pc, pc, r1, lsl #2
	ldmfd sp!, {r4, pc}
_020E31B0: ; jump table
	ldmfd sp!, {r4, pc} ; case 0
	ldmfd sp!, {r4, pc} ; case 1
	b _020E31CC ; case 2
	ldmfd sp!, {r4, pc} ; case 3
	ldmfd sp!, {r4, pc} ; case 4
	ldmfd sp!, {r4, pc} ; case 5
	ldmfd sp!, {r4, pc} ; case 6
_020E31CC:
	bl FUN_ov15_020e2fc4
	mov r0, r4
	bl FUN_ov15_020e3078
	ldmfd sp!, {r4, pc}
	arm_func_end FUN_ov15_020e3198

	arm_func_start FUN_ov15_020e31dc
FUN_ov15_020e31dc: ; 0x020E31DC
	stmfd sp!, {r4, lr}
	mov r4, r0
	add r0, r4, #0x18
	mov r1, #3
	bl  FUN_ov16_020f338c
	mov r0, r4
	bl FUN_ov15_020e2f28
	ldmfd sp!, {r4, pc}
	arm_func_end FUN_ov15_020e31dc

	arm_func_start FUN_ov15_020e31fc
FUN_ov15_020e31fc: ; 0x020E31FC
	stmfd sp!, {r4, lr}
	mov r4, r0
	bl FUN_0201e078
	mov r0, r4
	ldmfd sp!, {r4, pc}
	arm_func_end FUN_ov15_020e31fc

	arm_func_start FUN_ov15_020e3210
FUN_ov15_020e3210: ; 0x020E3210
	stmfd sp!, {r4, lr}
	mov r4, r1
	ldr r1, [r4]
	mov r2, r0
	cmp r1, #0xf
	cmpne r1, #0xe
	mvnne r0, #0
	ldmnefd sp!, {r4, pc}
	ldr r0, [r4, #4]
	cmp r0, #9
	mvnhs r0, #0
	ldmhsfd sp!, {r4, pc}
	mov r0, r4
	add r1, r2, #0xc
	mov r2, #0x14
	bl MI_CpuCopy8
	mov r0, #0
	strb r0, [r4, #0x10]
	mov r0, #1
	ldmfd sp!, {r4, pc}
	arm_func_end FUN_ov15_020e3210

	arm_func_start FUN_ov15_020e3260
FUN_ov15_020e3260: ; 0x020E3260
	stmfd sp!, {r4, lr}
	mov r4, r0
	add r0, r4, #0x34
	mov r1, #0
	mov r2, #0x48
	bl MI_CpuFill8
	ldr r0, _020E3290 ; =0x020E6D04
	add r1, r4, #0x34
	bl  FUN_ov16_020f316c
	mov r0, #1
	str r0, [r4, #8]
	ldmfd sp!, {r4, pc}
_020E3290: .word ov15_020E6D04
	arm_func_end FUN_ov15_020e3260

	arm_func_start FUN_ov15_020e3294
FUN_ov15_020e3294: ; 0x020E3294
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	ldr r6, [r0, #0x34]
	cmp r6, #0
	ldrne r1, _020E32E0 ; =0x020E40D4
	ldrne r7, _020E32E4 ; =0x020E40FC
	ldrne r1, [r1, #0x28]
	cmpne r1, #0
	ldmeqfd sp!, {r3, r4, r5, r6, r7, pc}
	add r5, r0, #0x34
	mov r4, #0xc
_020E32BC:
	ldr r2, [r7, #4]
	mov r0, r1
	mla r1, r2, r4, r5
	mov r2, r6
	bl  FUN_ov16_020f32b4
	ldr r1, [r7, #8]!
	cmp r1, #0
	bne _020E32BC
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_020E32E0: .word 0x020E40D4
_020E32E4: .word 0x020E40FC
	arm_func_end FUN_ov15_020e3294

	arm_func_start FUN_ov15_020e32e8
FUN_ov15_020e32e8: ; 0x020E32E8
	stmfd sp!, {r4, r5, r6, lr}
	mov r6, #0
	add r5, r0, #0x34
	mov r4, #0xc
_020E32F8:
	mla r0, r6, r4, r5
	bl  FUN_ov16_020f33fc
	add r6, r6, #1
	cmp r6, #6
	blt _020E32F8
	ldmfd sp!, {r4, r5, r6, pc}
	arm_func_end FUN_ov15_020e32e8

	arm_func_start FUN_ov15_020e3310
FUN_ov15_020e3310: ; 0x020E3310
	stmfd sp!, {r4, r5, r6, r7, r8, lr}
	mov r6, r0
	ldr r5, [r6, #0x40]
	mov r4, #1
	cmp r5, #0
	beq _020E3350
	ldr r0, [r5, #0xc]
	ldr r1, [r5, #0x10]
	mov r3, r4
	add r0, r5, r0
	mov r2, #0
	bl  FUN_ov16_020f1868
	mov r0, r5
	mov r1, r4
	mov r2, r4
	bl  FUN_ov16_020f1138
_020E3350:
	ldr r8, [r6, #0x58]
	mov r5, #0
	cmp r8, #0
	beq _020E3390
	ldr r0, [r8, #0xc]
	mov r7, #5
	ldr r1, [r8, #0x10]
	mov r2, r4
	mov r3, r7
	add r0, r8, r0
	bl  FUN_ov16_020f1868
	mov r5, r0
	mov r0, r8
	mov r1, r4
	mov r2, r7
	bl  FUN_ov16_020f1138
_020E3390:
	ldr r8, [r6, #0x64]
	cmp r8, #0
	beq _020E33CC
	ldr r0, [r8, #0xc]
	mov r7, #4
	ldr r1, [r8, #0x10]
	mov r3, r7
	add r0, r8, r0
	add r2, r5, #1
	bl  FUN_ov16_020f1868
	mov r5, r0
	mov r0, r8
	mov r2, r7
	mov r1, #1
	bl  FUN_ov16_020f1138
_020E33CC:
	ldr r8, [r6, #0x70]
	cmp r8, #0
	beq _020E3404
	ldr r0, [r8, #0xc]
	mov r7, #5
	ldr r1, [r8, #0x10]
	mov r3, r7
	add r0, r8, r0
	add r2, r5, #1
	bl  FUN_ov16_020f1868
	mov r0, r8
	mov r2, r7
	mov r1, #1
	bl  FUN_ov16_020f1138
_020E3404:
	ldr r8, [r6, #0x4c]
	mov r5, #0
	cmp r8, #0
	beq _020E3444
	ldr r0, [r8, #0xc]
	mov r7, #2
	ldr r1, [r8, #0x10]
	mov r2, r4
	mov r3, r7
	add r0, r8, r0
	bl  FUN_ov16_020f1868
	mov r5, r0
	mov r0, r8
	mov r1, r4
	mov r2, r7
	bl  FUN_ov16_020f1138
_020E3444:
	ldr r0, [r6, #0x20]
	mov r2, #0
	cmp r0, #0
	ldrne r1, [r6, #0x24]
	cmpne r1, #0
	movne r2, #1
	cmp r2, #0
	ldmeqfd sp!, {r4, r5, r6, r7, r8, pc}
	ldrh r4, [r6, #0x2c]
	ldrh r1, [r6, #0x2e]
	add r2, r5, #1
	mov r3, #0
	mul r1, r4, r1
	mov r1, r1, lsl #1
	bl  FUN_ov16_020f1868
	ldmfd sp!, {r4, r5, r6, r7, r8, pc}
	arm_func_end FUN_ov15_020e3310

	arm_func_start FUN_ov15_020e3484
FUN_ov15_020e3484: ; 0x020E3484
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	mov r4, r0
	ldr r6, [r4, #0x40]
	cmp r6, #0
	beq _020E34C4
	ldr r0, [r6, #0x14]
	mov r5, #0
	ldr r2, [r6, #0x18]
	mov r1, r5
	add r0, r6, r0
	bl FUN_020057ec
	ldr r0, [r6, #0xc]
	ldr r2, [r6, #0x10]
	mov r1, r5
	add r0, r6, r0
	bl FUN_0200546c
_020E34C4:
	bl FUN_02004fac
	mov r5, #0x20
	mov r6, #0
	mov r1, r0
	mov r0, r6
	mov r2, r5
	bl MIi_CpuClearFast
	bl FUN_02004fac
	mov r1, r5
	bl DC_FlushRange
	mov r7, #1
	ldr r1, [r4, #0x58]
	mov r0, r7
	mov r2, r5
	bl  FUN_ov16_020f1a60
	mov r2, r0
	ldr r1, [r4, #0x64]
	mov r0, r7
	bl  FUN_ov16_020f1a60
	mov r2, r0
	ldr r1, [r4, #0x70]
	mov r0, r7
	bl  FUN_ov16_020f1a60
	bl FUN_0200501c
	mov r1, r0
	mov r0, r6
	mov r2, r5
	bl MIi_CpuClearFast
	bl FUN_0200501c
	mov r1, r5
	bl DC_FlushRange
	ldr r1, [r4, #0x4c]
	mov r2, r5
	mov r0, #2
	bl  FUN_ov16_020f1a60
	ldr r1, [r4, #0x20]
	cmp r1, #0
	ldrne r1, [r4, #0x24]
	cmpne r1, #0
	moveq r7, #0
	cmp r7, #0
	strne r0, [r4, #0x28]
	bl  FUN_ov16_020f10c8
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
	arm_func_end FUN_ov15_020e3484

	arm_func_start FUN_ov15_020e3574
FUN_ov15_020e3574: ; 0x020E3574
	stmfd sp!, {r3, lr}
	mov lr, r0
	ldr r0, [lr, #0x20]
	cmp r0, #0
	ldrne r0, [lr, #0x24]
	cmpne r0, #0
	movne r0, #1
	moveq r0, #0
	cmp r0, #0
	ldrneb r0, [lr, #0x30]
	cmpne r0, #0
	ldmeqfd sp!, {r3, pc}
	ldrh r2, [lr, #0x2c]
	ldrh r1, [lr, #0x2e]
	mov r12, #0
	ldr r0, [lr, #0x24]
	mul r3, r2, r1
	ldr r1, [lr, #0x28]
	mov r2, r3, lsl #5
	strb r12, [lr, #0x30]
	bl FUN_020059ac
	ldmfd sp!, {r3, pc}
	arm_func_end FUN_ov15_020e3574

	arm_func_start FUN_ov15_020e35cc
FUN_ov15_020e35cc: ; 0x020E35CC
	stmfd sp!, {r3, r4, r5, r6, r7, r8, lr}
	sub sp, sp, #0x34
	mov r8, r0
	ldr r5, [r8, #0x20]
	mov r3, #0
	cmp r5, #0
	ldrne r0, [r8, #0x24]
	cmpne r0, #0
	movne r3, #1
	cmp r3, #0
	addeq sp, sp, #0x34
	ldmeqfd sp!, {r3, r4, r5, r6, r7, r8, pc}
	sub r0, r2, #0x10
	add r0, r0, r0, lsr #31
	add r0, r1, r0, asr #1
	mov r7, #1
	mov r4, #4
	stmia sp, {r4, r7}
	mov r6, #0
	mov r0, r0, lsl #0x18
	str r7, [sp, #8]
	mov r0, r0, asr #0x18
	str r0, [sp, #0xc]
	mov r0, #0x1e
	str r0, [sp, #0x10]
	mov r0, #0x10
	str r0, [sp, #0x14]
	str r6, [sp, #0x18]
	ldr r0, _020E37E8 ; =0x0209F5C0
	mov r1, r7
	mov r2, r6
	mov r3, r6
	str r5, [sp, #0x1c]
	bl  FUN_ov16_020f5da0
	ldrb r0, [r8, #0x1c]
	cmp r0, #0
	addeq sp, sp, #0x34
	ldmeqfd sp!, {r3, r4, r5, r6, r7, r8, pc}
	add r0, r8, #0x20
	strb r6, [r8, #0x1c]
	bl  FUN_ov16_020f2f20
	ldr r0, _020E37EC ; =0x02099F50
	mov r1, r7
	ldr r0, [r0]
	mov r2, r4
	bl FUN_02043310
	ldr r2, [r8, #0x7c]
	cmp r2, #0
	ble _020E3754
	ldr r0, [r8, #0x10]
	cmp r0, #8
	bne _020E3754
	add r5, sp, #0x20
	ldr r1, _020E37F0 ; =0x020E6D20
	mov r0, r5
	bl FUN_02023c40
	add r4, sp, #0x26
	mov r0, r5
	mov r1, r4
	bl  FUN_ov16_020f1f5c
	ldr r0, [r8, #0x18]
	bl STD_GetStringLength
	add r0, r0, #0x28
	rsb r0, r0, r0, lsl #1
	bl FUN_0201e08c
	ldr r1, _020E37F4 ; =0x020E6D24
	ldr r2, [r8, #0x18]
	mov r3, r4
	mov r5, r0
	bl FUN_02023c40
	mov r4, #3
	str r4, [sp]
	stmib sp, {r4, r7}
	str r6, [sp, #0xc]
	str r6, [sp, #0x10]
	ldrb r1, [r8, #0x1d]
	mov r0, r5
	add r1, r1, #1
	mov r1, r1, lsl #4
	sub r1, r1, #4
	rsb r1, r1, #0x80
	add r1, r1, r1, lsr #31
	mov r1, r1, asr #1
	sub r1, r1, #0xa
	str r1, [sp, #0x14]
	str r7, [sp, #0x18]
	ldrh r2, [r8, #0x2c]
	ldrh r3, [r8, #0x2e]
	ldr r1, [r8, #0x24]
	mov r2, r2, lsl #3
	mov r3, r3, lsl #3
	bl  FUN_ov16_020f2184
	mov r0, r5
	bl FUN_0201e0b8
	sub r0, r4, #4
	str r7, [r8, #0x80]
	str r0, [r8, #0x7c]
	b _020E37B4
_020E3754:
	mov r0, #3
	str r0, [sp]
	str r0, [sp, #4]
	mov r1, #1
	str r1, [sp, #8]
	mov r0, #0
	str r0, [sp, #0xc]
	str r0, [sp, #0x10]
	ldrb r0, [r8, #0x1d]
	mov r0, r0, lsl #4
	sub r0, r0, #4
	rsb r0, r0, #0x80
	add r0, r0, r0, lsr #31
	mov r0, r0, asr #1
	sub r0, r0, #0xa
	str r0, [sp, #0x14]
	str r1, [sp, #0x18]
	ldrh r2, [r8, #0x2c]
	ldrh r3, [r8, #0x2e]
	ldr r0, [r8, #0x18]
	ldr r1, [r8, #0x24]
	mov r2, r2, lsl #3
	mov r3, r3, lsl #3
	bl  FUN_ov16_020f2184
_020E37B4:
	ldr r0, _020E37EC ; =0x02099F50
	ldr r0, [r0]
	bl FUN_0204331c
	ldrh r2, [r8, #0x2c]
	ldrh r1, [r8, #0x2e]
	mov r3, #1
	ldr r0, [r8, #0x24]
	mul r1, r2, r1
	mov r1, r1, lsl #5
	strb r3, [r8, #0x30]
	bl DC_FlushRange
	add sp, sp, #0x34
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, pc}
_020E37E8: .word unk_0209F5C0
_020E37EC: .word unk_02099F50
_020E37F0: .word ov15_020E6D20
_020E37F4: .word ov15_020E6D24
	arm_func_end FUN_ov15_020e35cc

	arm_func_start FUN_ov15_020e37f8
FUN_ov15_020e37f8: ; 0x020E37F8
	stmfd sp!, {r4, r5, r6, lr}
	sub sp, sp, #0x20
	mov r6, r0
	mov r1, #1
	mov r5, #0
	ldr r0, _020E38BC ; =0x0209F5C0
	mov r2, r1
	mov r3, r5
	bl  FUN_ov16_020f5eec
	ldr r4, [r6, #0x4c]
	cmp r4, #0
	addeq sp, sp, #0x20
	ldmeqfd sp!, {r4, r5, r6, pc}
	bl FUN_ov15_020c47fc
	ldr r1, _020E38C0 ; =0x020E64D4
	str r0, [r6, #0x14]
	ldr r0, [r1]
	cmp r0, #0
	subne r0, r5, #1
	strne r0, [r6, #0x14]
	ldr r5, [r6, #0x14]
	cmp r5, #0
	addlt sp, sp, #0x20
	ldmltfd sp!, {r4, r5, r6, pc}
	ldr r3, [r4, #0xc]
	ldr r0, [r6, #0x10]
	mov r1, #1
	cmp r5, #3
	movgt r5, #3
	cmp r0, #8
	str r1, [sp]
	mov r12, #2
	str r12, [sp, #4]
	mov r0, #0x1e
	str r0, [sp, #8]
	mov r2, #0
	str r2, [sp, #0xc]
	str r12, [sp, #0x10]
	str r12, [sp, #0x14]
	add r4, r4, r3
	moveq r5, #0
	ldr r0, _020E38BC ; =0x0209F5C0
	mov r3, r2
	str r12, [sp, #0x18]
	add r4, r4, r5, lsl #3
	str r4, [sp, #0x1c]
	bl  FUN_ov16_020f5da0
	add sp, sp, #0x20
	ldmfd sp!, {r4, r5, r6, pc}
_020E38BC: .word unk_0209F5C0
_020E38C0: .word ov15_020E64D4
	arm_func_end FUN_ov15_020e37f8

	arm_func_start FUN_ov15_020e38c4
FUN_ov15_020e38c4: ; 0x020E38C4
	stmfd sp!, {r4, r5, r6, r7, r8, r9, r10, lr}
	sub sp, sp, #0x20
	ldr r9, _020E3A0C ; =0x0209F5C0
	mov r8, #1
	mov r7, #0
	mov r6, r0
	mov r0, r9
	mov r1, r8
	mov r2, r8
	mov r3, r7
	bl  FUN_ov16_020f5f64
	ldr r0, [r6, #0x10]
	mov r10, #2
	cmp r0, #8
	bne _020E3918
	ldr r2, [r6, #0x70]
	mov r4, #6
	cmp r2, #0
	mov r5, #0x11
	beq _020E3970
	b _020E392C
_020E3918:
	ldr r2, [r6, #0x58]
	mov r4, #8
	cmp r2, #0
	mov r5, #0xe
	beq _020E3970
_020E392C:
	str r10, [sp]
	str r8, [sp, #4]
	str r7, [sp, #8]
	str r4, [sp, #0xc]
	mov r0, #0x20
	str r0, [sp, #0x10]
	str r5, [sp, #0x14]
	mov r0, #4
	str r0, [sp, #0x18]
	ldr r1, [r2, #0xc]
	mov r0, r9
	add r9, r2, r1
	mov r1, r8
	mov r2, r8
	mov r3, r7
	str r9, [sp, #0x1c]
	bl  FUN_ov16_020f5da0
_020E3970:
	ldr r8, [r6, #0x10]
	cmp r8, #0
	ldrne r7, [r6, #0x64]
	cmpne r7, #0
	beq _020E39E0
	ldr r3, [r7, #0xc]
	mov r0, #2
	mov r1, #1
	stmia sp, {r0, r1}
	add r7, r7, r3
	mov r2, r10, lsl #0x18
	sub r3, r8, #1
	mov r0, #0xb4
	mla r12, r3, r0, r7
	mov r0, r2, asr #0x18
	str r1, [sp, #8]
	str r0, [sp, #0xc]
	mov r0, #0x1e
	str r0, [sp, #0x10]
	mov r0, #3
	str r0, [sp, #0x14]
	mov r0, #4
	str r0, [sp, #0x18]
	ldr r0, _020E3A0C ; =0x0209F5C0
	mov r2, r1
	mov r3, #0
	str r12, [sp, #0x1c]
	bl  FUN_ov16_020f5da0
_020E39E0:
	mov r0, r6
	mov r1, r4
	mov r2, r5
	bl FUN_ov15_020e35cc
	mov r0, r6
	bl FUN_ov15_020e37f8
	ldr r0, _020E3A0C ; =0x0209F5C0
	mov r1, #1
	bl  FUN_ov16_020f672c
	add sp, sp, #0x20
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, pc}
_020E3A0C: .word unk_0209F5C0
	arm_func_end FUN_ov15_020e38c4

	arm_func_start FUN_ov15_020e3a10
FUN_ov15_020e3a10: ; 0x020E3A10
	stmfd sp!, {r3, r4, r5, lr}
	mov r5, r0
	ldr r0, [r5, #4]
	mov r4, #1
	ldr r2, [r0]
	mov r1, r4
	ldr r2, [r2, #0x28]
	blx r2
	mov r0, #6
	bl  FUN_ov16_020f4894
	mov r3, #0
	sub r2, r3, #1
	ldr r0, _020E3A98 ; =0x0209F5C0
	mov r1, r4
	str r3, [r5, #8]
	str r3, [r5, #0xc]
	str r3, [r5, #0x10]
	str r2, [r5, #0x14]
	str r2, [r5, #0x7c]
	str r3, [r5, #0x18]
	strb r3, [r5, #0x1c]
	strb r3, [r5, #0x1d]
	str r3, [r5, #0x80]
	bl  FUN_ov16_020f5a58
	mov r1, r4
	add r0, r5, #0x20
	bl  FUN_ov16_020f2f7c
	add r0, r5, #0x20
	mov r1, #0x1e
	mov r2, #0x10
	bl  FUN_ov16_020f2fa8
	mov r0, r5
	bl FUN_ov15_020e3260
	ldmfd sp!, {r3, r4, r5, pc}
_020E3A98: .word unk_0209F5C0
	arm_func_end FUN_ov15_020e3a10

	arm_func_start FUN_ov15_020e3a9c
FUN_ov15_020e3a9c: ; 0x020E3A9C
	stmfd sp!, {r4, lr}
	mov r4, r0
	ldr r0, [r4, #8]
	cmp r0, #1
	beq _020E3ABC
	cmp r0, #3
	beq _020E3AEC
	ldmfd sp!, {r4, pc}
_020E3ABC:
	add r0, r4, #0x34
	mov r1, #6
	bl  FUN_ov16_020f330c
	cmp r0, #0
	ldmeqfd sp!, {r4, pc}
	mov r0, r4
	bl FUN_ov15_020e3294
	mov r0, r4
	bl FUN_ov15_020e3310
	mov r0, #2
	str r0, [r4, #8]
	ldmfd sp!, {r4, pc}
_020E3AEC:
	ldr r0, [r4, #0x80]
	cmp r0, #0
	beq _020E3B08
	bl FUN_ov15_020c471c
	cmp r0, #0
	movne r0, #0
	strne r0, [r4, #0x80]
_020E3B08:
	mov r0, r4
	bl FUN_ov15_020e38c4
	ldmfd sp!, {r4, pc}
	arm_func_end FUN_ov15_020e3a9c

	arm_func_start FUN_ov15_020e3b14
FUN_ov15_020e3b14: ; 0x020E3B14
	stmfd sp!, {r4, lr}
	mov r4, r0
	ldr r1, [r4, #8]
	cmp r1, #2
	beq _020E3B34
	cmp r1, #3
	beq _020E3B54
	ldmfd sp!, {r4, pc}
_020E3B34:
	bl FUN_ov15_020e3484
	mov r0, r4
	ldr r1, [r0]
	ldr r1, [r1, #0x4c]
	blx r1
	mov r0, #3
	str r0, [r4, #8]
	ldmfd sp!, {r4, pc}
_020E3B54:
	bl FUN_ov15_020e3574
	ldr r0, _020E3B68 ; =0x0209F5C0
	mov r1, #1
	bl  FUN_ov16_020f6a9c
	ldmfd sp!, {r4, pc}
_020E3B68: .word unk_0209F5C0
	arm_func_end FUN_ov15_020e3b14

	arm_func_start FUN_ov15_020e3b6c
FUN_ov15_020e3b6c: ; 0x020E3B6C
	stmfd sp!, {r3, r4, r5, lr}
	mov r5, r0
	add r0, r5, #0x34
	mov r1, #6
	bl  FUN_ov16_020f338c
	mov r0, r5
	bl FUN_ov15_020e32e8
	mov r4, #1
	ldr r0, _020E3BBC ; =0x0209F5C0
	mov r1, r4
	bl  FUN_ov16_020f5af0
	mov r1, r4
	add r0, r5, #0x20
	bl  FUN_ov16_020f2fe4
	ldr r0, [r5, #4]
	mov r1, r4
	ldr r2, [r0]
	ldr r2, [r2, #0xc]
	blx r2
	ldmfd sp!, {r3, r4, r5, pc}
_020E3BBC: .word unk_0209F5C0
	arm_func_end FUN_ov15_020e3b6c

	arm_func_start FUN_ov15_020e3bc0
FUN_ov15_020e3bc0: ; 0x020E3BC0
	stmfd sp!, {r4, lr}
	mov r4, r0
	bl FUN_0201e078
	mov r0, r4
	ldmfd sp!, {r4, pc}
	arm_func_end FUN_ov15_020e3bc0

	arm_func_start FUN_ov15_020e3bd4
FUN_ov15_020e3bd4: ; 0x020E3BD4
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	mov r3, #0
	cmp r2, #0x10
	movhi r2, #0x10
	strb r3, [r0]
	strb r3, [r0, #1]
	add lr, r0, #4
_020E3BF0:
	strb r3, [lr, r3]
	add r3, r3, #1
	cmp r3, #0x100
	blt _020E3BF0
	mov r5, #0
	and r3, r2, #0xff
	mov r4, r5
	mov r7, r5
	mov r2, r5
_020E3C14:
	ldrb r6, [lr, r7]
	ldrb r12, [r1, r4]
	add r0, r4, #1
	and r4, r0, #0xff
	add r0, r6, r12
	add r0, r5, r0
	and r5, r0, #0xff
	ldrb r0, [lr, r5]
	cmp r4, r3
	moveq r4, r2
	strb r0, [lr, r7]
	add r7, r7, #1
	strb r6, [lr, r5]
	cmp r7, #0x100
	blt _020E3C14
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
	arm_func_end FUN_ov15_020e3bd4

	arm_func_start FUN_ov15_020e3c54
FUN_ov15_020e3c54: ; 0x020E3C54
	stmfd sp!, {r4, r5, r6, r7, r8, r9, lr}
	ldrb r7, [r0]
	ldrb r6, [r0, #1]
	add r0, r0, #4
	mov lr, #0x1000000
	add r7, lr, r7, lsl #24
	mov r6, r6, lsl #0x18
	ldrb r9, [r0, r7, lsr #24]
	subs r2, r2, #1
	bmi _020E3CB4
_020E3C7C:
	add r6, r6, r9, lsl #24
	subs r2, r2, #1
	ldrb r8, [r0, r6, lsr #24]
	ldrb r5, [r1], #1
	strb r8, [r0, r7, lsr #24]
	strb r9, [r0, r6, lsr #24]
	add r4, r9, r8
	and r4, r4, #0xff
	add r7, r7, lr
	ldrb r4, [r0, r4]
	ldrb r9, [r0, r7, lsr #24]
	eor r5, r5, r4
	strb r5, [r3], #1
	bge _020E3C7C
_020E3CB4:
	sub r7, r7, lr
	mov r7, r7, lsr #0x18
	mov r6, r6, lsr #0x18
	strb r7, [r0, #-4]
	strb r6, [r0, #-3]
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, pc}
	arm_func_end FUN_ov15_020e3c54
_020E3CCC:
	.byte 0x21, 0x53, 0x44, 0x57
	.byte 0x57, 0x61, 0x79, 0x70, 0x6F, 0x72, 0x74, 0x32, 0x46, 0x52, 0x45, 0x45, 0x53, 0x50, 0x4F, 0x54
	.byte 0x4E, 0x49, 0x4E, 0x54, 0x45, 0x4E, 0x44, 0x4F, 0x57, 0x46, 0x43, 0x00, 0x02, 0x80, 0x00, 0x00
	.byte 0x04, 0x80, 0x00, 0x00, 0x08, 0x80, 0x00, 0x00, 0x10, 0x80, 0x00, 0x00, 0x20, 0x80, 0x00, 0x00
	.byte 0x40, 0x80, 0x00, 0x00, 0x80, 0x80, 0x00, 0x00, 0x00, 0x81, 0x00, 0x00, 0x00, 0x82, 0x00, 0x00
	.byte 0x00, 0x84, 0x00, 0x00, 0x00, 0x88, 0x00, 0x00, 0x00, 0x90, 0x00, 0x00, 0x00, 0xA0, 0x00, 0x00
	.byte 0x05, 0x01, 0x0C, 0x04, 0x02, 0x03, 0x0A, 0x00, 0x0B, 0x07, 0x09, 0x08, 0x06, 0x0A, 0x0D, 0x0E
	.byte 0x08, 0x09, 0x03, 0x06, 0x00, 0x0C, 0x05, 0x02, 0x07, 0x0B, 0x01, 0x0F, 0x04, 0x00, 0x00, 0x00
	.byte 0x17, 0x14, 0x11, 0x0D, 0x0B, 0x06, 0x0F, 0x0E, 0x09, 0x15, 0x0C, 0x04, 0x02, 0x01, 0x12, 0x10
	.byte 0x05, 0x03, 0x13, 0x0A, 0x07, 0x08, 0x00, 0x16, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x10, 0x00, 0x00
	.byte 0x00, 0x10, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x0C, 0x44, 0x0E, 0x02, 0x04, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x01, 0x02, 0x00, 0x04, 0x03, 0x05, 0x06, 0x07, 0x07, 0x02, 0x05, 0x0A
	.byte 0x0B, 0x00, 0x0D, 0x0F, 0x0C, 0x01, 0x06, 0x08, 0x04, 0x09, 0x03, 0x0E, 0x05, 0x09, 0x01, 0x0E
	.byte 0x0C, 0x02, 0x0A, 0x00, 0x0B, 0x0D, 0x03, 0x04, 0x08, 0x06, 0x0F, 0x07, 0x2A, 0x59, 0x32, 0x39
	.byte 0x31, 0x62, 0x6E, 0x51, 0x2A, 0x00, 0x62, 0x47, 0x6C, 0x7A, 0x64, 0x41, 0x2A, 0x2A, 0x00, 0x59
	.byte 0x32, 0x39, 0x75, 0x64, 0x47, 0x56, 0x75, 0x64, 0x48, 0x4D, 0x2A, 0x00, 0x30, 0x30, 0x3A, 0x30
	.byte 0x30, 0x30, 0x30, 0x30, 0x30, 0x30, 0x2D, 0x30, 0x30, 0x00, 0x00, 0x00, 0x41, 0x42, 0x43, 0x44
	.byte 0x45, 0x46, 0x47, 0x48, 0x49, 0x4A, 0x4B, 0x4C, 0x4D, 0x4E, 0x4F, 0x50, 0x51, 0x52, 0x53, 0x54
	.byte 0x55, 0x56, 0x57, 0x58, 0x59, 0x5A, 0x61, 0x62, 0x63, 0x64, 0x65, 0x66, 0x67, 0x68, 0x69, 0x6A
	.byte 0x6B, 0x6C, 0x6D, 0x6E, 0x6F, 0x70, 0x71, 0x72, 0x73, 0x74, 0x75, 0x76, 0x77, 0x78, 0x79, 0x7A
	.byte 0x30, 0x31, 0x32, 0x33, 0x34, 0x35, 0x36, 0x37, 0x38, 0x39, 0x2E, 0x2D, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0xC1, 0x6F, 0xF2, 0x86, 0x23, 0x00, 0x00, 0x80, 0xC6, 0xA4, 0x7E, 0x8D, 0x03, 0x00
	.byte 0x00, 0x40, 0x7A, 0x10, 0xF3, 0x5A, 0x00, 0x00, 0x00, 0xA0, 0x72, 0x4E, 0x18, 0x09, 0x00, 0x00
	.byte 0x00, 0x10, 0xA5, 0xD4, 0xE8, 0x00, 0x00, 0x00, 0x00, 0xE8, 0x76, 0x48, 0x17, 0x00, 0x00, 0x00
	.byte 0x00, 0xE4, 0x0B, 0x54, 0x02, 0x00, 0x00, 0x00, 0x00, 0xCA, 0x9A, 0x3B, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0xE1, 0xF5, 0x05, 0x00, 0x00, 0x00, 0x00, 0x80, 0x96, 0x98, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x40, 0x42, 0x0F, 0x00, 0x00, 0x00, 0x00, 0x00, 0xA0, 0x86, 0x01, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x10, 0x27, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0xE8, 0x03, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x64, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x0A, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0xCA, 0x9A, 0x3B, 0x00, 0xE1, 0xF5, 0x05, 0x80, 0x96, 0x98, 0x00, 0x40, 0x42, 0x0F, 0x00
	.byte 0xA0, 0x86, 0x01, 0x00, 0x10, 0x27, 0x00, 0x00, 0xE8, 0x03, 0x00, 0x00, 0x64, 0x00, 0x00, 0x00
	.byte 0x0A, 0x00, 0x00, 0x00, 0x2D, 0x2D, 0x74, 0x39, 0x53, 0x66, 0x34, 0x79, 0x66, 0x6A, 0x66, 0x31
	.byte 0x52, 0x74, 0x76, 0x44, 0x75, 0x33, 0x41, 0x41, 0x00, 0x00, 0x00, 0x00, 0x43, 0x6F, 0x6E, 0x74
	.byte 0x65, 0x6E, 0x74, 0x2D, 0x44, 0x69, 0x73, 0x70, 0x6F, 0x73, 0x69, 0x74, 0x69, 0x6F, 0x6E, 0x3A
	.byte 0x20, 0x66, 0x6F, 0x72, 0x6D, 0x2D, 0x64, 0x61, 0x74, 0x61, 0x3B, 0x20, 0x6E, 0x61, 0x6D, 0x65
	.byte 0x3D, 0x22, 0x00, 0x43, 0x6F, 0x6E, 0x74, 0x65, 0x6E, 0x74, 0x2D, 0x54, 0x79, 0x70, 0x65, 0x3A
	.byte 0x20, 0x6D, 0x75, 0x6C, 0x74, 0x69, 0x70, 0x61, 0x72, 0x74, 0x2F, 0x66, 0x6F, 0x72, 0x6D, 0x2D
	.byte 0x64, 0x61, 0x74, 0x61, 0x3B, 0x20, 0x62, 0x6F, 0x75, 0x6E, 0x64, 0x61, 0x72, 0x79, 0x3D, 0x00
	.byte 0x43, 0x6F, 0x6E, 0x74, 0x65, 0x6E, 0x74, 0x2D, 0x54, 0x79, 0x70, 0x65, 0x3A, 0x20, 0x61, 0x70
	.byte 0x70, 0x6C, 0x69, 0x63, 0x61, 0x74, 0x69, 0x6F, 0x6E, 0x2F, 0x78, 0x2D, 0x77, 0x77, 0x77, 0x2D
	.byte 0x66, 0x6F, 0x72, 0x6D, 0x2D, 0x75, 0x72, 0x6C, 0x65, 0x6E, 0x63, 0x6F, 0x64, 0x65, 0x64, 0x0D
	.byte 0x0A, 0x00, 0x00, 0x00, 0x43, 0x6F, 0x6E, 0x74, 0x65, 0x6E, 0x74, 0x2D, 0x54, 0x79, 0x70, 0x65
	.byte 0x3A, 0x20, 0x61, 0x70, 0x70, 0x6C, 0x69, 0x63, 0x61, 0x74, 0x69, 0x6F, 0x6E, 0x2F, 0x6F, 0x63
	.byte 0x74, 0x65, 0x74, 0x2D, 0x73, 0x74, 0x72, 0x65, 0x61, 0x6D, 0x0D, 0x0A, 0x43, 0x6F, 0x6E, 0x74
	.byte 0x65, 0x6E, 0x74, 0x2D, 0x54, 0x72, 0x61, 0x6E, 0x73, 0x66, 0x65, 0x72, 0x2D, 0x45, 0x6E, 0x63
	.byte 0x6F, 0x64, 0x69, 0x6E, 0x67, 0x3A, 0x20, 0x62, 0x69, 0x6E, 0x61, 0x72, 0x79, 0x0D, 0x0A, 0x00
	.byte 0x15, 0x03, 0x00, 0x00, 0x02, 0x01, 0x29, 0x00, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0x00, 0x00
	.byte 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF
	.byte 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF
	.byte 0x00, 0x50, 0xF2, 0x01, 0x00, 0x50, 0xF2, 0x02, 0x00, 0x00, 0x00, 0x00, 0x14, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x16, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x3D, 0x00, 0x00, 0x00, 0x17, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x80, 0x66, 0x0E, 0x02
	.byte 0x01, 0x00, 0x00, 0x00, 0xF0, 0x65, 0x0E, 0x02, 0x02, 0x00, 0x00, 0x00, 0x10, 0x66, 0x0E, 0x02
	.byte 0x03, 0x00, 0x00, 0x00, 0x20, 0x66, 0x0E, 0x02, 0x04, 0x00, 0x00, 0x00, 0x50, 0x66, 0x0E, 0x02
	.byte 0x05, 0x00, 0x00, 0x00, 0x60, 0x66, 0x0E, 0x02, 0x06, 0x00, 0x00, 0x00, 0xE0, 0x65, 0x0E, 0x02
	.byte 0x07, 0x00, 0x00, 0x00, 0x30, 0x66, 0x0E, 0x02, 0x08, 0x00, 0x00, 0x00, 0x40, 0x66, 0x0E, 0x02
	.byte 0x09, 0x00, 0x00, 0x00, 0x70, 0x66, 0x0E, 0x02, 0x0A, 0x00, 0x00, 0x00, 0x00, 0x66, 0x0E, 0x02
	.byte 0x0B, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x4C, 0x6B, 0x0E, 0x02
	.byte 0x01, 0x00, 0x00, 0x00, 0x3C, 0x6B, 0x0E, 0x02, 0x02, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x80, 0x6C, 0x0E, 0x02, 0x01, 0x00, 0x00, 0x00, 0x40, 0x6C, 0x0E, 0x02
	.byte 0x02, 0x00, 0x00, 0x00, 0x50, 0x6C, 0x0E, 0x02, 0x03, 0x00, 0x00, 0x00, 0x08, 0x6C, 0x0E, 0x02
	.byte 0x04, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x70, 0x6C, 0x0E, 0x02
	.byte 0x01, 0x00, 0x00, 0x00, 0x20, 0x6C, 0x0E, 0x02, 0x02, 0x00, 0x00, 0x00, 0x60, 0x6C, 0x0E, 0x02
	.byte 0x03, 0x00, 0x00, 0x00, 0x14, 0x6C, 0x0E, 0x02, 0x04, 0x00, 0x00, 0x00, 0x30, 0x6C, 0x0E, 0x02
	.byte 0x05, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00

	arm_func_start FUN_ov15_020e412c
FUN_ov15_020e412c: ; 0x020E412C
	stmfd sp!, {r3, r4, r5, lr}
	mov r5, #0x2000
	mov r0, r5
	bl FUN_020095ac
	ldr r4, _020E4174 ; =0x020E5C7C
	str r0, [r4, #8]
	ldr r0, _020E4178 ; =0x00009CCD
	bl FUN_020095ac
	mov r1, #0x800
	str r0, [r4]
	ldr r0, _020E417C ; =0x0000EA3C
	str r1, [r4, #0x14]
	str r0, [r4, #4]
	add r0, r5, #0x4e0000
	str r0, [r4, #0xc]
	add r0, r1, #0x840000
	str r0, [r4, #0x10]
	ldmfd sp!, {r3, r4, r5, pc}
_020E4174: .word ov15_020E5C7C
_020E4178: .word 0x00009CCD
_020E417C: .word 0x0000EA3C
	arm_func_end FUN_ov15_020e412c

	arm_func_start FUN_ov15_020e4180
FUN_ov15_020e4180: ; 0x020E4180
	stmfd sp!, {r3, r4, r5, lr}
	mov r5, #0x2000
	mov r0, r5
	bl FUN_020095ac
	ldr r4, _020E41C4 ; =0x020E64C4
	str r0, [r4, #8]
	ldr r0, _020E41C8 ; =0x00009CCD
	bl FUN_020095ac
	str r0, [r4, #0xc]
	ldr r0, _020E41CC ; =0x0000EA3C
	mov r1, #0x800
	stmia r4, {r0, r1}
	add r0, r5, #0x4e0000
	str r0, [r4, #0x18]
	add r0, r1, #0x840000
	str r0, [r4, #0x14]
	ldmfd sp!, {r3, r4, r5, pc}
_020E41C4: .word ov15_020E64C4
_020E41C8: .word 0x00009CCD
_020E41CC: .word 0x0000EA3C
	arm_func_end FUN_ov15_020e4180

	arm_func_start FUN_ov15_020e41d0
FUN_ov15_020e41d0: ; 0x020E41D0
	stmfd sp!, {r3, r4, r5, lr}
	mov r5, #0x2000
	mov r0, r5
	bl FUN_020095ac
	ldr r4, _020E4218 ; =0x020E6558
	str r0, [r4, #0x14]
	ldr r0, _020E421C ; =0x00009CCD
	bl FUN_020095ac
	mov r1, #0x800
	str r0, [r4, #0x10]
	ldr r0, _020E4220 ; =0x0000EA3C
	str r1, [r4, #0xc]
	str r0, [r4, #8]
	add r0, r5, #0x4e0000
	str r0, [r4, #4]
	add r0, r1, #0x840000
	str r0, [r4]
	ldmfd sp!, {r3, r4, r5, pc}
_020E4218: .word ov15_020E6558
_020E421C: .word 0x00009CCD
_020E4220: .word 0x0000EA3C
	arm_func_end FUN_ov15_020e41d0

	arm_func_start FUN_ov15_020e4224
FUN_ov15_020e4224: ; 0x020E4224
	stmfd sp!, {r3, r4, r5, lr}
	mov r5, #0x2000
	mov r0, r5
	bl FUN_020095ac
	ldr r4, _020E426C ; =0x020E65C8
	str r0, [r4, #4]
	ldr r0, _020E4270 ; =0x00009CCD
	bl FUN_020095ac
	mov r1, #0x800
	str r0, [r4, #0xc]
	ldr r0, _020E4274 ; =0x0000EA3C
	str r1, [r4, #0x14]
	str r0, [r4, #8]
	add r0, r5, #0x4e0000
	str r0, [r4, #0x10]
	add r0, r1, #0x840000
	str r0, [r4]
	ldmfd sp!, {r3, r4, r5, pc}
_020E426C: .word ov15_020E65C8
_020E4270: .word 0x00009CCD
_020E4274: .word 0x0000EA3C
	arm_func_end FUN_ov15_020e4224

	arm_func_start FUN_ov15_020e4278
FUN_ov15_020e4278: ; 0x020E4278
	stmfd sp!, {r3, r4, r5, lr}
	mov r5, #0x2000
	mov r0, r5
	bl FUN_020095ac
	ldr r4, _020E42C0 ; =0x020E6B24
	str r0, [r4, #8]
	ldr r0, _020E42C4 ; =0x00009CCD
	bl FUN_020095ac
	mov r1, #0x800
	str r0, [r4]
	ldr r0, _020E42C8 ; =0x0000EA3C
	str r1, [r4, #4]
	str r0, [r4, #0x14]
	add r0, r5, #0x4e0000
	str r0, [r4, #0x10]
	add r0, r1, #0x840000
	str r0, [r4, #0xc]
	ldmfd sp!, {r3, r4, r5, pc}
_020E42C0: .word ov15_020E6B24
_020E42C4: .word 0x00009CCD
_020E42C8: .word 0x0000EA3C
	arm_func_end FUN_ov15_020e4278

	arm_func_start FUN_ov15_020e42cc
FUN_ov15_020e42cc: ; 0x020E42CC
	stmfd sp!, {r3, r4, r5, lr}
	mov r5, #0x2000
	mov r0, r5
	bl FUN_020095ac
	ldr r4, _020E4314 ; =0x020E6BF0
	str r0, [r4]
	ldr r0, _020E4318 ; =0x00009CCD
	bl FUN_020095ac
	mov r1, #0x800
	str r0, [r4, #4]
	ldr r0, _020E431C ; =0x0000EA3C
	str r1, [r4, #0x14]
	str r0, [r4, #8]
	add r0, r5, #0x4e0000
	str r0, [r4, #0x10]
	add r0, r1, #0x840000
	str r0, [r4, #0xc]
	ldmfd sp!, {r3, r4, r5, pc}
_020E4314: .word ov15_020E6BF0
_020E4318: .word 0x00009CCD
_020E431C: .word 0x0000EA3C
	arm_func_end FUN_ov15_020e42cc

	.section .sinit, 4
ov15_020E4320:
	.word FUN_ov15_020e412c
	.word FUN_ov15_020e4180
	.word FUN_ov15_020e41d0
	.word FUN_ov15_020e4224
	.word FUN_ov15_020e4278
	.word FUN_ov15_020e42cc

	.data
	.global ov15_020E4340
ov15_020E4340:
	.byte 0x10, 0x00, 0x00, 0x00
	.global ov15_020E4344
ov15_020E4344:
	.byte 0x02, 0x02, 0x03, 0x05, 0x08
	.global ov15_020E4349
ov15_020E4349:
	.byte 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0x00
	.global ov15_020E4350
ov15_020E4350:
	.byte 0xE8, 0x03, 0x00, 0x00, 0xDC, 0x05, 0x00, 0x00, 0xD0, 0x07, 0x00, 0x00, 0xC4, 0x09, 0x00, 0x00
	.byte 0xB8, 0x0B, 0x00, 0x00, 0xAC, 0x0D, 0x00, 0x00
	.global ov15_020E4368
ov15_020E4368:
	.byte 0xAA, 0xAA, 0x03, 0x00, 0x00, 0x00, 0x08, 0x00
	.byte 0x00, 0x00, 0x00, 0x00
	.global ov15_020E4374
ov15_020E4374:
	.byte 0x4E, 0x69, 0x6E, 0x74, 0x65, 0x6E, 0x64, 0x6F, 0x44, 0x53, 0x00, 0x00
	.global ov15_020E4380
ov15_020E4380:
	.byte 0x4E, 0x57, 0x43, 0x55, 0x53, 0x42, 0x41, 0x50, 0x00, 0x00, 0x00, 0x00
	.global ov15_020E438C
ov15_020E438C:
	.byte 0xD8, 0x43, 0x0E, 0x02
	.byte 0x9C, 0x43, 0x0E, 0x02, 0xBC, 0x43, 0x0E, 0x02, 0xAC, 0x43, 0x0E, 0x02, 0x67, 0x77, 0x69, 0x27
	.byte 0x36, 0x26, 0x66, 0x73, 0x3D, 0x30, 0x4E, 0x66, 0x7E, 0x00, 0x00, 0x00, 0x25, 0x28, 0x65, 0x67
	.byte 0x45, 0x72, 0x29, 0x61, 0x67, 0x28, 0x73, 0x26, 0x6D, 0x00, 0x00, 0x00, 0x39, 0x35, 0x32, 0x75
	.byte 0x79, 0x62, 0x6A, 0x6E, 0x70, 0x6D, 0x75, 0x39, 0x30, 0x33, 0x62, 0x69, 0x61, 0x40, 0x62, 0x6B
	.byte 0x35, 0x6D, 0x5B, 0x2D, 0x00, 0x00, 0x00, 0x00, 0x33, 0x38, 0x67, 0x36, 0x7A, 0x78, 0x6A, 0x6B
	.byte 0x32, 0x30, 0x67, 0x76, 0x6D, 0x76, 0x5D, 0x36, 0x5E, 0x3D, 0x6A, 0x26, 0x25, 0x76, 0x59, 0x31
	.byte 0x00, 0x00, 0x00, 0x00
	.global ov15_020E43F4
ov15_020E43F4:
	.byte 0x4E, 0x44, 0x57, 0x43, 0x53, 0x48, 0x41, 0x50, 0x00, 0x00, 0x00, 0x00
	.global ov15_020E4400
ov15_020E4400:
	.byte 0x4E, 0x57, 0x43, 0x55, 0x53, 0x42, 0x41, 0x50, 0x00, 0x00, 0x00, 0x00, 0x4E, 0x49, 0x4E, 0x54
	.byte 0x45, 0x4E, 0x44, 0x4F, 0x2D, 0x44, 0x53, 0x00, 0x00, 0x00, 0x00, 0x00
	.global ov15_020E441C
ov15_020E441C:
	.byte 0x18, 0x44, 0x0E, 0x02
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x10, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x20, 0x4E, 0x00, 0x00
	.global ov15_020E4438
ov15_020E4438:
	.byte 0x68, 0x74, 0x74, 0x70, 0x73, 0x3A, 0x2F, 0x2F
	.byte 0x6E, 0x61, 0x73, 0x2E, 0x6E, 0x69, 0x6E, 0x74, 0x65, 0x6E, 0x64, 0x6F, 0x77, 0x69, 0x66, 0x69
	.byte 0x2E, 0x6E, 0x65, 0x74, 0x2F, 0x61, 0x63, 0x00
	.global ov15_020E4458
ov15_020E4458:
	.byte 0x44, 0x61, 0x74, 0x65, 0x00, 0x00, 0x00, 0x00
	.global ov15_020E4460
ov15_020E4460:
	.byte 0x68, 0x74, 0x74, 0x70, 0x72, 0x65, 0x73, 0x75, 0x6C, 0x74, 0x00, 0x00
	.global ov15_020E446C
ov15_020E446C:
	.byte 0x72, 0x65, 0x74, 0x75
	.byte 0x72, 0x6E, 0x63, 0x64, 0x00, 0x00, 0x00, 0x00
	.global ov15_020E4478
ov15_020E4478:
	.byte 0x74, 0x6F, 0x6B, 0x65, 0x6E, 0x00, 0x00, 0x00
	.global ov15_020E4480
ov15_020E4480:
	.byte 0x6C, 0x6F, 0x63, 0x61, 0x74, 0x6F, 0x72, 0x00
	.global ov15_020E4488
ov15_020E4488:
	.byte 0x63, 0x68, 0x61, 0x6C, 0x6C, 0x65, 0x6E, 0x67
	.byte 0x65, 0x00, 0x00, 0x00
	.global ov15_020E4494
ov15_020E4494:
	.byte 0x64, 0x61, 0x74, 0x65, 0x74, 0x69, 0x6D, 0x65, 0x00, 0x00, 0x00, 0x00
	.global ov15_020E44A0
ov15_020E44A0:
	.byte 0x53, 0x65, 0x74, 0x2D, 0x43, 0x6F, 0x6F, 0x6B, 0x69, 0x65, 0x00, 0x00
	.global ov15_020E44AC
ov15_020E44AC:
	.byte 0x61, 0x63, 0x63, 0x74
	.byte 0x63, 0x72, 0x65, 0x61, 0x74, 0x65, 0x00, 0x00
	.global ov15_020E44B8
ov15_020E44B8:
	.byte 0x61, 0x63, 0x74, 0x69, 0x6F, 0x6E, 0x00, 0x00
	.global ov15_020E44C0
ov15_020E44C0:
	.byte 0x6C, 0x6F, 0x67, 0x69, 0x6E, 0x00, 0x00, 0x00
	.global ov15_020E44C8
ov15_020E44C8:
	.byte 0x67, 0x73, 0x62, 0x72, 0x63, 0x64, 0x00, 0x00
	.global ov15_020E44D0
ov15_020E44D0:
	.byte 0x59, 0x00, 0x00, 0x00
	.global ov15_020E44D4
ov15_020E44D4:
	.byte 0x69, 0x73, 0x77, 0x66, 0x63, 0x00, 0x00, 0x00
	.global ov15_020E44DC
ov15_020E44DC:
	.byte 0x69, 0x6E, 0x67, 0x61
	.byte 0x6D, 0x65, 0x73, 0x6E, 0x00, 0x00, 0x00, 0x00
	.global ov15_020E44E8
ov15_020E44E8:
	.byte 0x68, 0x74, 0x74, 0x70, 0x73, 0x3A, 0x2F, 0x2F
	.byte 0x6E, 0x61, 0x73, 0x2E, 0x74, 0x65, 0x73, 0x74, 0x2E, 0x6E, 0x69, 0x6E, 0x74, 0x65, 0x6E, 0x64
	.byte 0x6F, 0x77, 0x69, 0x66, 0x69, 0x2E, 0x6E, 0x65, 0x74, 0x2F, 0x61, 0x63, 0x00, 0x00, 0x00, 0x00
	.global ov15_020E4510
ov15_020E4510:
	.byte 0x68, 0x74, 0x74, 0x70, 0x73, 0x3A, 0x2F, 0x2F, 0x6E, 0x61, 0x73, 0x2E, 0x64, 0x65, 0x76, 0x2E
	.byte 0x6E, 0x69, 0x6E, 0x74, 0x65, 0x6E, 0x64, 0x6F, 0x77, 0x69, 0x66, 0x69, 0x2E, 0x6E, 0x65, 0x74
	.byte 0x2F, 0x61, 0x63, 0x00
	.global ov15_020E4534
ov15_020E4534:
	.byte 0x68, 0x74, 0x74, 0x70, 0x73, 0x3A, 0x2F, 0x2F, 0x6E, 0x61, 0x73, 0x2E
	.byte 0x6E, 0x69, 0x6E, 0x74, 0x65, 0x6E, 0x64, 0x6F, 0x77, 0x69, 0x66, 0x69, 0x2E, 0x6E, 0x65, 0x74
	.byte 0x2F, 0x61, 0x63, 0x00
	.global ov15_020E4554
ov15_020E4554:
	.byte 0x25, 0x30, 0x31, 0x33, 0x6C, 0x6C, 0x75, 0x00
	.global ov15_020E455C
ov15_020E455C:
	.byte 0x25, 0x30, 0x33, 0x75
	.byte 0x00, 0x00, 0x00, 0x00
	.global ov15_020E4564
ov15_020E4564:
	.byte 0x25, 0x30, 0x32, 0x78, 0x00, 0x00, 0x00, 0x00
	.global ov15_020E456C
ov15_020E456C:
	.byte 0x25, 0x30, 0x32, 0x78
	.byte 0x25, 0x30, 0x32, 0x78, 0x00, 0x00, 0x00, 0x00
	.global ov15_020E4578
ov15_020E4578:
	.byte 0x25, 0x30, 0x32, 0x64, 0x25, 0x30, 0x32, 0x64
	.byte 0x25, 0x30, 0x32, 0x64, 0x25, 0x30, 0x32, 0x64, 0x25, 0x30, 0x32, 0x64, 0x25, 0x30, 0x32, 0x64
	.byte 0x00, 0x00, 0x00, 0x00
	.global ov15_020E4594
ov15_020E4594:
	.byte 0x25, 0x30, 0x32, 0x64, 0x3A, 0x30, 0x30, 0x30, 0x30, 0x30, 0x30, 0x30
	.byte 0x2D, 0x30, 0x30, 0x00
	.global ov15_020E45A4
ov15_020E45A4:
	.byte 0x25, 0x30, 0x33, 0x64, 0x25, 0x30, 0x33, 0x64, 0x00, 0x00, 0x00, 0x00
	.global ov15_020E45B0
ov15_020E45B0:
	.byte 0x73, 0x64, 0x6B, 0x76, 0x65, 0x72, 0x00, 0x00
	.global ov15_020E45B8
ov15_020E45B8:
	.byte 0x75, 0x73, 0x65, 0x72, 0x69, 0x64, 0x00, 0x00
	.global ov15_020E45C0
ov15_020E45C0:
	.byte 0x70, 0x61, 0x73, 0x73, 0x77, 0x64, 0x00, 0x00
	.global ov15_020E45C8
ov15_020E45C8:
	.byte 0x62, 0x73, 0x73, 0x69, 0x64, 0x00, 0x00, 0x00
	.global ov15_020E45D0
ov15_020E45D0:
	.byte 0x61, 0x70, 0x69, 0x6E, 0x66, 0x6F, 0x00, 0x00
	.global ov15_020E45D8
ov15_020E45D8:
	.byte 0x67, 0x61, 0x6D, 0x65, 0x63, 0x64, 0x00, 0x00
	.global ov15_020E45E0
ov15_020E45E0:
	.byte 0x6D, 0x61, 0x6B, 0x65, 0x72, 0x63, 0x64, 0x00
	.global ov15_020E45E8
ov15_020E45E8:
	.byte 0x75, 0x6E, 0x69, 0x74, 0x63, 0x64, 0x00, 0x00
	.global ov15_020E45F0
ov15_020E45F0:
	.byte 0x6D, 0x61, 0x63, 0x61, 0x64, 0x72, 0x00, 0x00
	.global ov15_020E45F8
ov15_020E45F8:
	.byte 0x6C, 0x61, 0x6E, 0x67, 0x00, 0x00, 0x00, 0x00
	.global ov15_020E4600
ov15_020E4600:
	.byte 0x62, 0x69, 0x72, 0x74, 0x68, 0x00, 0x00, 0x00
	.global ov15_020E4608
ov15_020E4608:
	.byte 0x64, 0x65, 0x76, 0x74, 0x69, 0x6D, 0x65, 0x00
	.global ov15_020E4610
ov15_020E4610:
	.byte 0x64, 0x65, 0x76, 0x6E, 0x61, 0x6D, 0x65, 0x00
	.global ov15_020E4618
ov15_020E4618:
	.byte 0x73, 0x73, 0x69, 0x64, 0x00, 0x00, 0x00, 0x00
	.global ov15_020E4620
ov15_020E4620:
	.byte 0x4E, 0x69, 0x74, 0x72, 0x6F, 0x20, 0x57, 0x69, 0x46, 0x69, 0x20, 0x53, 0x44, 0x4B, 0x2F, 0x25
	.byte 0x64, 0x2E, 0x25, 0x64, 0x00, 0x00, 0x00, 0x00
	.global ov15_020E4638
ov15_020E4638:
	.byte 0x55, 0x73, 0x65, 0x72, 0x2D, 0x41, 0x67, 0x65
	.byte 0x6E, 0x74, 0x00, 0x00
	.global ov15_020E4644
ov15_020E4644:
	.byte 0x48, 0x54, 0x54, 0x50, 0x5F, 0x58, 0x5F, 0x47, 0x41, 0x4D, 0x45, 0x43
	.byte 0x44, 0x00, 0x00, 0x00
	.global ov15_020E4654
ov15_020E4654:
	.byte 0x90, 0x52, 0x0E, 0x02, 0x64, 0x51, 0x0E, 0x02, 0x44, 0x54, 0x0E, 0x02
	.byte 0x20, 0x55, 0x0E, 0x02, 0x3C, 0x4A, 0x0E, 0x02, 0x54, 0x4B, 0x0E, 0x02, 0x64, 0x4C, 0x0E, 0x02
	.byte 0xF0, 0x48, 0x0E, 0x02, 0x4C, 0x50, 0x0E, 0x02, 0x2C, 0x4F, 0x0E, 0x02, 0x2C, 0x4D, 0x0E, 0x02
	.byte 0x44, 0x4E, 0x0E, 0x02
	.global ov15_020E4684
ov15_020E4684:
	.byte 0x43, 0x6F, 0x6E, 0x6E, 0x65, 0x63, 0x74, 0x69, 0x6F, 0x6E, 0x00, 0x00
	.global ov15_020E4690
ov15_020E4690:
	.byte 0x63, 0x6C, 0x6F, 0x73, 0x65, 0x00, 0x00, 0x00
	.global ov15_020E4698
ov15_020E4698:
	.byte 0x0D, 0x0A, 0x0D, 0x0A, 0x00, 0x00, 0x00, 0x00
	.global ov15_020E46A0
ov15_020E46A0:
	.byte 0x25, 0x64, 0x00, 0x00
	.global ov15_020E46A4
ov15_020E46A4:
	.byte 0x43, 0x6F, 0x6E, 0x74, 0x65, 0x6E, 0x74, 0x2D, 0x4C, 0x65, 0x6E, 0x67
	.byte 0x74, 0x68, 0x00, 0x00
	.global ov15_020E46B4
ov15_020E46B4:
	.byte 0x43, 0x6F, 0x6E, 0x74, 0x65, 0x6E, 0x74, 0x2D, 0x4C, 0x65, 0x6E, 0x67
	.byte 0x74, 0x68, 0x3A, 0x20, 0x00, 0x00, 0x00, 0x00
	.global ov15_020E46C8
ov15_020E46C8:
	.byte 0x0D, 0x0A, 0x00, 0x00
	.global ov15_020E46CC
ov15_020E46CC:
	.byte 0x50, 0x4F, 0x53, 0x54
	.byte 0x20, 0x2F, 0x25, 0x73, 0x20, 0x48, 0x54, 0x54, 0x50, 0x2F, 0x31, 0x2E, 0x30, 0x0D, 0x0A, 0x43
	.byte 0x6F, 0x6E, 0x74, 0x65, 0x6E, 0x74, 0x2D, 0x74, 0x79, 0x70, 0x65, 0x3A, 0x20, 0x61, 0x70, 0x70
	.byte 0x6C, 0x69, 0x63, 0x61, 0x74, 0x69, 0x6F, 0x6E, 0x2F, 0x78, 0x2D, 0x77, 0x77, 0x77, 0x2D, 0x66
	.byte 0x6F, 0x72, 0x6D, 0x2D, 0x75, 0x72, 0x6C, 0x65, 0x6E, 0x63, 0x6F, 0x64, 0x65, 0x64, 0x0D, 0x0A
	.byte 0x48, 0x6F, 0x73, 0x74, 0x3A, 0x20, 0x25, 0x73, 0x0D, 0x0A, 0x0D, 0x0A, 0x00, 0x00, 0x00, 0x00
	.global ov15_020E4720
ov15_020E4720:
	.byte 0x47, 0x45, 0x54, 0x20, 0x2F, 0x25, 0x73, 0x20, 0x48, 0x54, 0x54, 0x50, 0x2F, 0x31, 0x2E, 0x30
	.byte 0x0D, 0x0A, 0x48, 0x6F, 0x73, 0x74, 0x3A, 0x20, 0x25, 0x73, 0x0D, 0x0A, 0x0D, 0x0A, 0x00, 0x00
	.global ov15_020E4740
ov15_020E4740:
	.byte 0x25, 0x73, 0x3A, 0x20, 0x25, 0x73, 0x0D, 0x0A, 0x00, 0x00, 0x00, 0x00
	.global ov15_020E474C
ov15_020E474C:
	.byte 0x25, 0x73, 0x3D, 0x00
	.global ov15_020E4750
ov15_020E4750:
	.byte 0x26, 0x25, 0x73, 0x3D, 0x00, 0x00, 0x00, 0x00
	.global ov15_020E4758
ov15_020E4758:
	.byte 0x25, 0x73, 0x00, 0x00
	.global ov15_020E475C
ov15_020E475C:
	.byte 0x68, 0x74, 0x74, 0x70
	.byte 0x3A, 0x2F, 0x2F, 0x00
	.global ov15_020E4764
ov15_020E4764:
	.byte 0x68, 0x74, 0x74, 0x70, 0x73, 0x3A, 0x2F, 0x2F, 0x00, 0x00, 0x00, 0x00
	.global ov15_020E4770
ov15_020E4770:
	.byte 0x3A, 0x00, 0x00, 0x00
	.global ov15_020E4774
ov15_020E4774:
	.byte 0x2F, 0x00, 0x00, 0x00
	.global ov15_020E4778
ov15_020E4778:
	.byte 0x20, 0x00, 0x00, 0x00
	.global ov15_020E477C
ov15_020E477C:
	.byte 0x68, 0x74, 0x74, 0x70
	.byte 0x72, 0x65, 0x73, 0x75, 0x6C, 0x74, 0x00, 0x00
	.global ov15_020E4788
ov15_020E4788:
	.byte 0x32, 0x30, 0x30, 0x00
	.global ov15_020E478C
ov15_020E478C:
	.byte 0x3A, 0x20, 0x00, 0x00
	.global ov15_020E4790
ov15_020E4790:
	.byte 0x3D, 0x00, 0x00, 0x00
	.global ov15_020E4794
ov15_020E4794:
	.byte 0x26, 0x00, 0x00, 0x00
	.global ov15_020E4798
ov15_020E4798:
	.byte 0x01, 0x00, 0x00, 0x00, 0xA0, 0x47, 0x0E, 0x02
	.byte 0x68, 0x74, 0x74, 0x70, 0x3A, 0x2F, 0x2F, 0x63, 0x6F, 0x6E, 0x6E, 0x74, 0x65, 0x73, 0x74, 0x2E
	.byte 0x6E, 0x69, 0x6E, 0x74, 0x65, 0x6E, 0x64, 0x6F, 0x77, 0x69, 0x66, 0x69, 0x2E, 0x6E, 0x65, 0x74
	.byte 0x2F, 0x00, 0x00, 0x00
	.global ov15_020E47C4
ov15_020E47C4:
	.byte 0x68, 0x74, 0x74, 0x70, 0x72, 0x65, 0x73, 0x75, 0x6C, 0x74, 0x00, 0x00
	.global ov15_020E47D0
ov15_020E47D0:
	.byte 0x68, 0x74, 0x74, 0x70, 0x73, 0x3A, 0x2F, 0x2F, 0x6E, 0x61, 0x73, 0x2E, 0x6E, 0x69, 0x6E, 0x74
	.byte 0x65, 0x6E, 0x64, 0x6F, 0x77, 0x69, 0x66, 0x69, 0x2E, 0x6E, 0x65, 0x74, 0x2F, 0x61, 0x63, 0x00
	.global ov15_020E47F0
ov15_020E47F0:
	.byte 0x61, 0x63, 0x74, 0x69, 0x6F, 0x6E, 0x00, 0x00
	.global ov15_020E47F8
ov15_020E47F8:
	.byte 0x6D, 0x65, 0x73, 0x73, 0x61, 0x67, 0x65, 0x00
	.global ov15_020E4800
ov15_020E4800:
	.byte 0x48, 0x6F, 0x74, 0x53, 0x70, 0x6F, 0x74, 0x52, 0x65, 0x73, 0x70, 0x6F, 0x6E, 0x73, 0x65, 0x00
	.global ov15_020E4810
ov15_020E4810:
	.byte 0x70, 0x61, 0x72, 0x73, 0x65, 0x00, 0x00, 0x00
	.global ov15_020E4818
ov15_020E4818:
	.byte 0x48, 0x54, 0x4D, 0x4C, 0x00, 0x00, 0x00, 0x00
	.global ov15_020E4820
ov15_020E4820:
	.byte 0x72, 0x65, 0x74, 0x75, 0x72, 0x6E, 0x63, 0x64, 0x00, 0x00, 0x00, 0x00
	.global ov15_020E482C
ov15_020E482C:
	.byte 0x75, 0x72, 0x6C, 0x00
	.global ov15_020E4830
ov15_020E4830:
	.byte 0x64, 0x61, 0x74, 0x61, 0x00, 0x00, 0x00, 0x00
	.global ov15_020E4838
ov15_020E4838:
	.byte 0x77, 0x61, 0x69, 0x74, 0x00, 0x00, 0x00, 0x00
	.global ov15_020E4840
ov15_020E4840:
	.byte 0x68, 0x74, 0x74, 0x70, 0x73, 0x3A, 0x2F, 0x2F, 0x6E, 0x61, 0x73, 0x2E, 0x6E, 0x69, 0x6E, 0x74
	.byte 0x65, 0x6E, 0x64, 0x6F, 0x77, 0x69, 0x66, 0x69, 0x2E, 0x6E, 0x65, 0x74, 0x2F, 0x61, 0x63, 0x00
	.global ov15_020E4860
ov15_020E4860:
	.byte 0x61, 0x63, 0x74, 0x69, 0x6F, 0x6E, 0x00, 0x00
	.global ov15_020E4868
ov15_020E4868:
	.byte 0x53, 0x56, 0x43, 0x4C, 0x4F, 0x43, 0x00, 0x00
	.global ov15_020E4870
ov15_020E4870:
	.byte 0x73, 0x76, 0x63, 0x00
	.global ov15_020E4874
ov15_020E4874:
	.byte 0x44, 0x61, 0x74, 0x65, 0x00, 0x00, 0x00, 0x00
	.global ov15_020E487C
ov15_020E487C:
	.byte 0x68, 0x74, 0x74, 0x70
	.byte 0x72, 0x65, 0x73, 0x75, 0x6C, 0x74, 0x00, 0x00
	.global ov15_020E4888
ov15_020E4888:
	.byte 0x72, 0x65, 0x74, 0x75, 0x72, 0x6E, 0x63, 0x64
	.byte 0x00, 0x00, 0x00, 0x00
	.global ov15_020E4894
ov15_020E4894:
	.byte 0x73, 0x76, 0x63, 0x68, 0x6F, 0x73, 0x74, 0x00
	.global ov15_020E489C
ov15_020E489C:
	.byte 0x73, 0x65, 0x72, 0x76
	.byte 0x69, 0x63, 0x65, 0x74, 0x6F, 0x6B, 0x65, 0x6E, 0x00, 0x00, 0x00, 0x00
	.global ov15_020E48AC
ov15_020E48AC:
	.byte 0x73, 0x74, 0x61, 0x74
	.byte 0x75, 0x73, 0x64, 0x61, 0x74, 0x61, 0x00, 0x00, 0x01, 0x00, 0x01, 0x49, 0x45, 0x2C, 0x20, 0x42
	.byte 0x61, 0x6C, 0x74, 0x69, 0x6D, 0x6F, 0x72, 0x65, 0x2C, 0x20, 0x43, 0x79, 0x62, 0x65, 0x72, 0x54
	.byte 0x72, 0x75, 0x73, 0x74, 0x2C, 0x20, 0x42, 0x61, 0x6C, 0x74, 0x69, 0x6D, 0x6F, 0x72, 0x65, 0x20
	.byte 0x43, 0x79, 0x62, 0x65, 0x72, 0x54, 0x72, 0x75, 0x73, 0x74, 0x20, 0x52, 0x6F, 0x6F, 0x74, 0x00
	.byte 0xBB, 0x48, 0x0E, 0x02, 0x00, 0x01, 0x00, 0x00, 0x04, 0x49, 0x0E, 0x02, 0x03, 0x00, 0x00, 0x00
	.byte 0xB8, 0x48, 0x0E, 0x02, 0xA3, 0x04, 0xBB, 0x22, 0xAB, 0x98, 0x3D, 0x57, 0xE8, 0x26, 0x72, 0x9A
	.byte 0xB5, 0x79, 0xD4, 0x29, 0xE2, 0xE1, 0xE8, 0x95, 0x80, 0xB1, 0xB0, 0xE3, 0x5B, 0x8E, 0x2B, 0x29
	.byte 0x9A, 0x64, 0xDF, 0xA1, 0x5D, 0xED, 0xB0, 0x09, 0x05, 0x6D, 0xDB, 0x28, 0x2E, 0xCE, 0x62, 0xA2
	.byte 0x62, 0xFE, 0xB4, 0x88, 0xDA, 0x12, 0xEB, 0x38, 0xEB, 0x21, 0x9D, 0xC0, 0x41, 0x2B, 0x01, 0x52
	.byte 0x7B, 0x88, 0x77, 0xD3, 0x1C, 0x8F, 0xC7, 0xBA, 0xB9, 0x88, 0xB5, 0x6A, 0x09, 0xE7, 0x73, 0xE8
	.byte 0x11, 0x40, 0xA7, 0xD1, 0xCC, 0xCA, 0x62, 0x8D, 0x2D, 0xE5, 0x8F, 0x0B, 0xA6, 0x50, 0xD2, 0xA8
	.byte 0x50, 0xC3, 0x28, 0xEA, 0xF5, 0xAB, 0x25, 0x87, 0x8A, 0x9A, 0x96, 0x1C, 0xA9, 0x67, 0xB8, 0x3F
	.byte 0x0C, 0xD5, 0xF7, 0xF9, 0x52, 0x13, 0x2F, 0xC2, 0x1B, 0xD5, 0x70, 0x70, 0xF0, 0x8F, 0xC0, 0x12
	.byte 0xCA, 0x06, 0xCB, 0x9A, 0xE1, 0xD9, 0xCA, 0x33, 0x7A, 0x77, 0xD6, 0xF8, 0xEC, 0xB9, 0xF1, 0x68
	.byte 0x44, 0x42, 0x48, 0x13, 0xD2, 0xC0, 0xC2, 0xA4, 0xAE, 0x5E, 0x60, 0xFE, 0xB6, 0xA6, 0x05, 0xFC
	.byte 0xB4, 0xDD, 0x07, 0x59, 0x02, 0xD4, 0x59, 0x18, 0x98, 0x63, 0xF5, 0xA5, 0x63, 0xE0, 0x90, 0x0C
	.byte 0x7D, 0x5D, 0xB2, 0x06, 0x7A, 0xF3, 0x85, 0xEA, 0xEB, 0xD4, 0x03, 0xAE, 0x5E, 0x84, 0x3E, 0x5F
	.byte 0xFF, 0x15, 0xED, 0x69, 0xBC, 0xF9, 0x39, 0x36, 0x72, 0x75, 0xCF, 0x77, 0x52, 0x4D, 0xF3, 0xC9
	.byte 0x90, 0x2C, 0xB9, 0x3D, 0xE5, 0xC9, 0x23, 0x53, 0x3F, 0x1F, 0x24, 0x98, 0x21, 0x5C, 0x07, 0x99
	.byte 0x29, 0xBD, 0xC6, 0x3A, 0xEC, 0xE7, 0x6E, 0x86, 0x3A, 0x6B, 0x97, 0x74, 0x63, 0x33, 0xBD, 0x68
	.byte 0x18, 0x31, 0xF0, 0x78, 0x8D, 0x76, 0xBF, 0xFC, 0x9E, 0x8E, 0x5D, 0x2A, 0x86, 0xA7, 0x4D, 0x90
	.byte 0xDC, 0x27, 0x1A, 0x39, 0x01, 0x00, 0x01, 0x42, 0x45, 0x2C, 0x20, 0x47, 0x6C, 0x6F, 0x62, 0x61
	.byte 0x6C, 0x53, 0x69, 0x67, 0x6E, 0x20, 0x6E, 0x76, 0x2D, 0x73, 0x61, 0x2C, 0x20, 0x52, 0x6F, 0x6F
	.byte 0x74, 0x20, 0x43, 0x41, 0x2C, 0x20, 0x47, 0x6C, 0x6F, 0x62, 0x61, 0x6C, 0x53, 0x69, 0x67, 0x6E
	.byte 0x20, 0x52, 0x6F, 0x6F, 0x74, 0x20, 0x43, 0x41, 0x00, 0x00, 0x00, 0x00, 0x07, 0x4A, 0x0E, 0x02
	.byte 0x00, 0x01, 0x00, 0x00, 0x50, 0x4A, 0x0E, 0x02, 0x03, 0x00, 0x00, 0x00, 0x04, 0x4A, 0x0E, 0x02
	.byte 0xDA, 0x0E, 0xE6, 0x99, 0x8D, 0xCE, 0xA3, 0xE3, 0x4F, 0x8A, 0x7E, 0xFB, 0xF1, 0x8B, 0x83, 0x25
	.byte 0x6B, 0xEA, 0x48, 0x1F, 0xF1, 0x2A, 0xB0, 0xB9, 0x95, 0x11, 0x04, 0xBD, 0xF0, 0x63, 0xD1, 0xE2
	.byte 0x67, 0x66, 0xCF, 0x1C, 0xDD, 0xCF, 0x1B, 0x48, 0x2B, 0xEE, 0x8D, 0x89, 0x8E, 0x9A, 0xAF, 0x29
	.byte 0x80, 0x65, 0xAB, 0xE9, 0xC7, 0x2D, 0x12, 0xCB, 0xAB, 0x1C, 0x4C, 0x70, 0x07, 0xA1, 0x3D, 0x0A
	.byte 0x30, 0xCD, 0x15, 0x8D, 0x4F, 0xF8, 0xDD, 0xD4, 0x8C, 0x50, 0x15, 0x1C, 0xEF, 0x50, 0xEE, 0xC4
	.byte 0x2E, 0xF7, 0xFC, 0xE9, 0x52, 0xF2, 0x91, 0x7D, 0xE0, 0x6D, 0xD5, 0x35, 0x30, 0x8E, 0x5E, 0x43
	.byte 0x73, 0xF2, 0x41, 0xE9, 0xD5, 0x6A, 0xE3, 0xB2, 0x89, 0x3A, 0x56, 0x39, 0x38, 0x6F, 0x06, 0x3C
	.byte 0x88, 0x69, 0x5B, 0x2A, 0x4D, 0xC5, 0xA7, 0x54, 0xB8, 0x6C, 0x89, 0xCC, 0x9B, 0xF9, 0x3C, 0xCA
	.byte 0xE5, 0xFD, 0x89, 0xF5, 0x12, 0x3C, 0x92, 0x78, 0x96, 0xD6, 0xDC, 0x74, 0x6E, 0x93, 0x44, 0x61
	.byte 0xD1, 0x8D, 0xC7, 0x46, 0xB2, 0x75, 0x0E, 0x86, 0xE8, 0x19, 0x8A, 0xD5, 0x6D, 0x6C, 0xD5, 0x78
	.byte 0x16, 0x95, 0xA2, 0xE9, 0xC8, 0x0A, 0x38, 0xEB, 0xF2, 0x24, 0x13, 0x4F, 0x73, 0x54, 0x93, 0x13
	.byte 0x85, 0x3A, 0x1B, 0xBC, 0x1E, 0x34, 0xB5, 0x8B, 0x05, 0x8C, 0xB9, 0x77, 0x8B, 0xB1, 0xDB, 0x1F
	.byte 0x20, 0x91, 0xAB, 0x09, 0x53, 0x6E, 0x90, 0xCE, 0x7B, 0x37, 0x74, 0xB9, 0x70, 0x47, 0x91, 0x22
	.byte 0x51, 0x63, 0x16, 0x79, 0xAE, 0xB1, 0xAE, 0x41, 0x26, 0x08, 0xC8, 0x19, 0x2B, 0xD1, 0x46, 0xAA
	.byte 0x48, 0xD6, 0x64, 0x2A, 0xD7, 0x83, 0x34, 0xFF, 0x2C, 0x2A, 0xC1, 0x6C, 0x19, 0x43, 0x4A, 0x07
	.byte 0x85, 0xE7, 0xD3, 0x7C, 0xF6, 0x21, 0x68, 0xEF, 0xEA, 0xF2, 0x52, 0x9F, 0x7F, 0x93, 0x90, 0xCF
	.byte 0x01, 0x00, 0x01, 0x00, 0x68, 0x4B, 0x0E, 0x02, 0x80, 0x00, 0x00, 0x00, 0xB8, 0x4B, 0x0E, 0x02
	.byte 0x03, 0x00, 0x00, 0x00, 0x50, 0x4B, 0x0E, 0x02, 0x55, 0x53, 0x2C, 0x20, 0x47, 0x54, 0x45, 0x20
	.byte 0x43, 0x6F, 0x72, 0x70, 0x6F, 0x72, 0x61, 0x74, 0x69, 0x6F, 0x6E, 0x2C, 0x20, 0x47, 0x54, 0x45
	.byte 0x20, 0x43, 0x79, 0x62, 0x65, 0x72, 0x54, 0x72, 0x75, 0x73, 0x74, 0x20, 0x53, 0x6F, 0x6C, 0x75
	.byte 0x74, 0x69, 0x6F, 0x6E, 0x73, 0x2C, 0x20, 0x49, 0x6E, 0x63, 0x2E, 0x2C, 0x20, 0x47, 0x54, 0x45
	.byte 0x20, 0x43, 0x79, 0x62, 0x65, 0x72, 0x54, 0x72, 0x75, 0x73, 0x74, 0x20, 0x47, 0x6C, 0x6F, 0x62
	.byte 0x61, 0x6C, 0x20, 0x52, 0x6F, 0x6F, 0x74, 0x00, 0x95, 0x0F, 0xA0, 0xB6, 0xF0, 0x50, 0x9C, 0xE8
	.byte 0x7A, 0xC7, 0x88, 0xCD, 0xDD, 0x17, 0x0E, 0x2E, 0xB0, 0x94, 0xD0, 0x1B, 0x3D, 0x0E, 0xF6, 0x94
	.byte 0xC0, 0x8A, 0x94, 0xC7, 0x06, 0xC8, 0x90, 0x97, 0xC8, 0xB8, 0x64, 0x1A, 0x7A, 0x7E, 0x6C, 0x3C
	.byte 0x53, 0xE1, 0x37, 0x28, 0x73, 0x60, 0x7F, 0xB2, 0x97, 0x53, 0x07, 0x9F, 0x53, 0xF9, 0x6D, 0x58
	.byte 0x94, 0xD2, 0xAF, 0x8D, 0x6D, 0x88, 0x67, 0x80, 0xE6, 0xED, 0xB2, 0x95, 0xCF, 0x72, 0x31, 0xCA
	.byte 0xA5, 0x1C, 0x72, 0xBA, 0x5C, 0x02, 0xE7, 0x64, 0x42, 0xE7, 0xF9, 0xA9, 0x2C, 0xD6, 0x3A, 0x0D
	.byte 0xAC, 0x8D, 0x42, 0xAA, 0x24, 0x01, 0x39, 0xE6, 0x9C, 0x3F, 0x01, 0x85, 0x57, 0x0D, 0x58, 0x87
	.byte 0x45, 0xF8, 0xD3, 0x85, 0xAA, 0x93, 0x69, 0x26, 0x85, 0x70, 0x48, 0x80, 0x3F, 0x12, 0x15, 0xC7
	.byte 0x79, 0xB4, 0x1F, 0x05, 0x2F, 0x3B, 0x62, 0x99, 0x01, 0x00, 0x01, 0x55, 0x53, 0x2C, 0x20, 0x47
	.byte 0x54, 0x45, 0x20, 0x43, 0x6F, 0x72, 0x70, 0x6F, 0x72, 0x61, 0x74, 0x69, 0x6F, 0x6E, 0x2C, 0x20
	.byte 0x47, 0x54, 0x45, 0x20, 0x43, 0x79, 0x62, 0x65, 0x72, 0x54, 0x72, 0x75, 0x73, 0x74, 0x20, 0x52
	.byte 0x6F, 0x6F, 0x74, 0x00, 0x3B, 0x4C, 0x0E, 0x02, 0x80, 0x00, 0x00, 0x00, 0x78, 0x4C, 0x0E, 0x02
	.byte 0x03, 0x00, 0x00, 0x00, 0x38, 0x4C, 0x0E, 0x02, 0xB8, 0xE6, 0x4F, 0xBA, 0xDB, 0x98, 0x7C, 0x71
	.byte 0x7C, 0xAF, 0x44, 0xB7, 0xD3, 0x0F, 0x46, 0xD9, 0x64, 0xE5, 0x93, 0xC1, 0x42, 0x8E, 0xC7, 0xBA
	.byte 0x49, 0x8D, 0x35, 0x2D, 0x7A, 0xE7, 0x8B, 0xBD, 0xE5, 0x05, 0x31, 0x59, 0xC6, 0xB1, 0x2F, 0x0A
	.byte 0x0C, 0xFB, 0x9F, 0xA7, 0x3F, 0xA2, 0x09, 0x66, 0x84, 0x56, 0x1E, 0x37, 0x29, 0x1B, 0x87, 0xE9
	.byte 0x7E, 0x0C, 0xCA, 0x9A, 0x9F, 0xA5, 0x7F, 0xF5, 0x15, 0x94, 0xA3, 0xD5, 0xA2, 0x46, 0x82, 0xD8
	.byte 0x68, 0x4C, 0xD1, 0x37, 0x15, 0x06, 0x68, 0xAF, 0xBD, 0xF8, 0xB0, 0xB3, 0xF0, 0x29, 0xF5, 0x95
	.byte 0x5A, 0x09, 0x16, 0x61, 0x77, 0x0A, 0x22, 0x25, 0xD4, 0x4F, 0x45, 0xAA, 0xC7, 0xBD, 0xE5, 0x96
	.byte 0xDF, 0xF9, 0xD4, 0xA8, 0x8E, 0x42, 0xCC, 0x24, 0xC0, 0x1E, 0x91, 0x27, 0x4A, 0xB5, 0x6D, 0x06
	.byte 0x80, 0x63, 0x39, 0xC4, 0xA2, 0x5E, 0x38, 0x03, 0x01, 0x00, 0x01, 0x47, 0x6C, 0x6F, 0x62, 0x61
	.byte 0x6C, 0x53, 0x69, 0x67, 0x6E, 0x20, 0x52, 0x6F, 0x6F, 0x74, 0x20, 0x43, 0x41, 0x20, 0x2D, 0x20
	.byte 0x52, 0x32, 0x2C, 0x20, 0x47, 0x6C, 0x6F, 0x62, 0x61, 0x6C, 0x53, 0x69, 0x67, 0x6E, 0x2C, 0x20
	.byte 0x47, 0x6C, 0x6F, 0x62, 0x61, 0x6C, 0x53, 0x69, 0x67, 0x6E, 0x00, 0x00, 0xFB, 0x4C, 0x0E, 0x02
	.byte 0x00, 0x01, 0x00, 0x00, 0x40, 0x4D, 0x0E, 0x02, 0x03, 0x00, 0x00, 0x00, 0xF8, 0x4C, 0x0E, 0x02
	.byte 0xA6, 0xCF, 0x24, 0x0E, 0xBE, 0x2E, 0x6F, 0x28, 0x99, 0x45, 0x42, 0xC4, 0xAB, 0x3E, 0x21, 0x54
	.byte 0x9B, 0x0B, 0xD3, 0x7F, 0x84, 0x70, 0xFA, 0x12, 0xB3, 0xCB, 0xBF, 0x87, 0x5F, 0xC6, 0x7F, 0x86
	.byte 0xD3, 0xB2, 0x30, 0x5C, 0xD6, 0xFD, 0xAD, 0xF1, 0x7B, 0xDC, 0xE5, 0xF8, 0x60, 0x96, 0x09, 0x92
	.byte 0x10, 0xF5, 0xD0, 0x53, 0xDE, 0xFB, 0x7B, 0x7E, 0x73, 0x88, 0xAC, 0x52, 0x88, 0x7B, 0x4A, 0xA6
	.byte 0xCA, 0x49, 0xA6, 0x5E, 0xA8, 0xA7, 0x8C, 0x5A, 0x11, 0xBC, 0x7A, 0x82, 0xEB, 0xBE, 0x8C, 0xE9
	.byte 0xB3, 0xAC, 0x96, 0x25, 0x07, 0x97, 0x4A, 0x99, 0x2A, 0x07, 0x2F, 0xB4, 0x1E, 0x77, 0xBF, 0x8A
	.byte 0x0F, 0xB5, 0x02, 0x7C, 0x1B, 0x96, 0xB8, 0xC5, 0xB9, 0x3A, 0x2C, 0xBC, 0xD6, 0x12, 0xB9, 0xEB
	.byte 0x59, 0x7D, 0xE2, 0xD0, 0x06, 0x86, 0x5F, 0x5E, 0x49, 0x6A, 0xB5, 0x39, 0x5E, 0x88, 0x34, 0xEC
	.byte 0xBC, 0x78, 0x0C, 0x08, 0x98, 0x84, 0x6C, 0xA8, 0xCD, 0x4B, 0xB4, 0xA0, 0x7D, 0x0C, 0x79, 0x4D
	.byte 0xF0, 0xB8, 0x2D, 0xCB, 0x21, 0xCA, 0xD5, 0x6C, 0x5B, 0x7D, 0xE1, 0xA0, 0x29, 0x84, 0xA1, 0xF9
	.byte 0xD3, 0x94, 0x49, 0xCB, 0x24, 0x62, 0x91, 0x20, 0xBC, 0xDD, 0x0B, 0xD5, 0xD9, 0xCC, 0xF9, 0xEA
	.byte 0x27, 0x0A, 0x2B, 0x73, 0x91, 0xC6, 0x9D, 0x1B, 0xAC, 0xC8, 0xCB, 0xE8, 0xE0, 0xA0, 0xF4, 0x2F
	.byte 0x90, 0x8B, 0x4D, 0xFB, 0xB0, 0x36, 0x1B, 0xF6, 0x19, 0x7A, 0x85, 0xE0, 0x6D, 0xF2, 0x61, 0x13
	.byte 0x88, 0x5C, 0x9F, 0xE0, 0x93, 0x0A, 0x51, 0x97, 0x8A, 0x5A, 0xCE, 0xAF, 0xAB, 0xD5, 0xF7, 0xAA
	.byte 0x09, 0xAA, 0x60, 0xBD, 0xDC, 0xD9, 0x5F, 0xDF, 0x72, 0xA9, 0x60, 0x13, 0x5E, 0x00, 0x01, 0xC9
	.byte 0x4A, 0xFA, 0x3F, 0xA4, 0xEA, 0x07, 0x03, 0x21, 0x02, 0x8E, 0x82, 0xCA, 0x03, 0xC2, 0x9B, 0x8F
	.byte 0x01, 0x00, 0x01, 0x00, 0x58, 0x4E, 0x0E, 0x02, 0x80, 0x00, 0x00, 0x00, 0xA8, 0x4E, 0x0E, 0x02
	.byte 0x03, 0x00, 0x00, 0x00, 0x40, 0x4E, 0x0E, 0x02, 0x55, 0x53, 0x2C, 0x20, 0x57, 0x61, 0x73, 0x68
	.byte 0x69, 0x6E, 0x67, 0x74, 0x6F, 0x6E, 0x2C, 0x20, 0x4E, 0x69, 0x6E, 0x74, 0x65, 0x6E, 0x64, 0x6F
	.byte 0x20, 0x6F, 0x66, 0x20, 0x41, 0x6D, 0x65, 0x72, 0x69, 0x63, 0x61, 0x20, 0x49, 0x6E, 0x63, 0x2C
	.byte 0x20, 0x4E, 0x4F, 0x41, 0x2C, 0x20, 0x4E, 0x69, 0x6E, 0x74, 0x65, 0x6E, 0x64, 0x6F, 0x20, 0x43
	.byte 0x41, 0x2C, 0x20, 0x63, 0x61, 0x40, 0x6E, 0x6F, 0x61, 0x2E, 0x6E, 0x69, 0x6E, 0x74, 0x65, 0x6E
	.byte 0x64, 0x6F, 0x2E, 0x63, 0x6F, 0x6D, 0x00, 0x00, 0xB3, 0xCD, 0x79, 0x97, 0x77, 0x5D, 0x8A, 0xAF
	.byte 0x86, 0xA8, 0xE8, 0xD7, 0x73, 0x1C, 0x77, 0xDF, 0x10, 0x90, 0x1F, 0x81, 0xF8, 0x41, 0x9E, 0x21
	.byte 0x55, 0xDF, 0xBC, 0xFC, 0x63, 0xFB, 0x19, 0x43, 0xF1, 0xF6, 0xC4, 0x72, 0x42, 0x49, 0xBD, 0xAD
	.byte 0x44, 0x68, 0x4E, 0xF3, 0xDA, 0x1D, 0xE6, 0x4D, 0xD8, 0xF9, 0x59, 0x88, 0xDC, 0xAE, 0x3E, 0x9B
	.byte 0x38, 0x09, 0xCA, 0x7F, 0xFF, 0xDC, 0x24, 0xA2, 0x44, 0x78, 0x78, 0x49, 0x93, 0xD4, 0x84, 0x40
	.byte 0x10, 0xB8, 0xEC, 0x3E, 0xDB, 0x2D, 0x93, 0xC8, 0x11, 0xC8, 0xFD, 0x78, 0x2D, 0x61, 0xAD, 0x31
	.byte 0xAE, 0x86, 0x26, 0xB0, 0xFD, 0x5A, 0x3F, 0xA1, 0x3D, 0xBF, 0xE2, 0x4B, 0x49, 0xEC, 0xCE, 0x66
	.byte 0x98, 0x58, 0x26, 0x12, 0xC0, 0xFB, 0xF4, 0x77, 0x65, 0x1B, 0xEA, 0xFB, 0xCB, 0x7F, 0xE0, 0x8C
	.byte 0xCB, 0x02, 0xA3, 0x4E, 0x5E, 0x8C, 0xEA, 0x9B, 0x01, 0x00, 0x01, 0x00, 0xC0, 0x4F, 0x0E, 0x02
	.byte 0x80, 0x00, 0x00, 0x00, 0x40, 0x4F, 0x0E, 0x02, 0x03, 0x00, 0x00, 0x00, 0x28, 0x4F, 0x0E, 0x02
	.byte 0xD2, 0x36, 0x36, 0x6A, 0x8B, 0xD7, 0xC2, 0x5B, 0x9E, 0xDA, 0x81, 0x41, 0x62, 0x8F, 0x38, 0xEE
	.byte 0x49, 0x04, 0x55, 0xD6, 0xD0, 0xEF, 0x1C, 0x1B, 0x95, 0x16, 0x47, 0xEF, 0x18, 0x48, 0x35, 0x3A
	.byte 0x52, 0xF4, 0x2B, 0x6A, 0x06, 0x8F, 0x3B, 0x2F, 0xEA, 0x56, 0xE3, 0xAF, 0x86, 0x8D, 0x9E, 0x17
	.byte 0xF7, 0x9E, 0xB4, 0x65, 0x75, 0x02, 0x4D, 0xEF, 0xCB, 0x09, 0xA2, 0x21, 0x51, 0xD8, 0x9B, 0xD0
	.byte 0x67, 0xD0, 0xBA, 0x0D, 0x92, 0x06, 0x14, 0x73, 0xD4, 0x93, 0xCB, 0x97, 0x2A, 0x00, 0x9C, 0x5C
	.byte 0x4E, 0x0C, 0xBC, 0xFA, 0x15, 0x52, 0xFC, 0xF2, 0x44, 0x6E, 0xDA, 0x11, 0x4A, 0x6E, 0x08, 0x9F
	.byte 0x2F, 0x2D, 0xE3, 0xF9, 0xAA, 0x3A, 0x86, 0x73, 0xB6, 0x46, 0x53, 0x58, 0xC8, 0x89, 0x05, 0xBD
	.byte 0x83, 0x11, 0xB8, 0x73, 0x3F, 0xAA, 0x07, 0x8D, 0xF4, 0x42, 0x4D, 0xE7, 0x40, 0x9D, 0x1C, 0x37
	.byte 0x5A, 0x41, 0x2C, 0x20, 0x57, 0x65, 0x73, 0x74, 0x65, 0x72, 0x6E, 0x20, 0x43, 0x61, 0x70, 0x65
	.byte 0x2C, 0x20, 0x43, 0x61, 0x70, 0x65, 0x20, 0x54, 0x6F, 0x77, 0x6E, 0x2C, 0x20, 0x54, 0x68, 0x61
	.byte 0x77, 0x74, 0x65, 0x20, 0x43, 0x6F, 0x6E, 0x73, 0x75, 0x6C, 0x74, 0x69, 0x6E, 0x67, 0x20, 0x63
	.byte 0x63, 0x2C, 0x20, 0x43, 0x65, 0x72, 0x74, 0x69, 0x66, 0x69, 0x63, 0x61, 0x74, 0x69, 0x6F, 0x6E
	.byte 0x20, 0x53, 0x65, 0x72, 0x76, 0x69, 0x63, 0x65, 0x73, 0x20, 0x44, 0x69, 0x76, 0x69, 0x73, 0x69
	.byte 0x6F, 0x6E, 0x2C, 0x20, 0x54, 0x68, 0x61, 0x77, 0x74, 0x65, 0x20, 0x50, 0x72, 0x65, 0x6D, 0x69
	.byte 0x75, 0x6D, 0x20, 0x53, 0x65, 0x72, 0x76, 0x65, 0x72, 0x20, 0x43, 0x41, 0x2C, 0x20, 0x70, 0x72
	.byte 0x65, 0x6D, 0x69, 0x75, 0x6D, 0x2D, 0x73, 0x65, 0x72, 0x76, 0x65, 0x72, 0x40, 0x74, 0x68, 0x61
	.byte 0x77, 0x74, 0x65, 0x2E, 0x63, 0x6F, 0x6D, 0x00, 0x01, 0x00, 0x01, 0x00, 0x60, 0x50, 0x0E, 0x02
	.byte 0x80, 0x00, 0x00, 0x00, 0xE0, 0x50, 0x0E, 0x02, 0x03, 0x00, 0x00, 0x00, 0x48, 0x50, 0x0E, 0x02
	.byte 0x5A, 0x41, 0x2C, 0x20, 0x57, 0x65, 0x73, 0x74, 0x65, 0x72, 0x6E, 0x20, 0x43, 0x61, 0x70, 0x65
	.byte 0x2C, 0x20, 0x43, 0x61, 0x70, 0x65, 0x20, 0x54, 0x6F, 0x77, 0x6E, 0x2C, 0x20, 0x54, 0x68, 0x61
	.byte 0x77, 0x74, 0x65, 0x20, 0x43, 0x6F, 0x6E, 0x73, 0x75, 0x6C, 0x74, 0x69, 0x6E, 0x67, 0x20, 0x63
	.byte 0x63, 0x2C, 0x20, 0x43, 0x65, 0x72, 0x74, 0x69, 0x66, 0x69, 0x63, 0x61, 0x74, 0x69, 0x6F, 0x6E
	.byte 0x20, 0x53, 0x65, 0x72, 0x76, 0x69, 0x63, 0x65, 0x73, 0x20, 0x44, 0x69, 0x76, 0x69, 0x73, 0x69
	.byte 0x6F, 0x6E, 0x2C, 0x20, 0x54, 0x68, 0x61, 0x77, 0x74, 0x65, 0x20, 0x53, 0x65, 0x72, 0x76, 0x65
	.byte 0x72, 0x20, 0x43, 0x41, 0x2C, 0x20, 0x73, 0x65, 0x72, 0x76, 0x65, 0x72, 0x2D, 0x63, 0x65, 0x72
	.byte 0x74, 0x73, 0x40, 0x74, 0x68, 0x61, 0x77, 0x74, 0x65, 0x2E, 0x63, 0x6F, 0x6D, 0x00, 0x00, 0x00
	.byte 0xD3, 0xA4, 0x50, 0x6E, 0xC8, 0xFF, 0x56, 0x6B, 0xE6, 0xCF, 0x5D, 0xB6, 0xEA, 0x0C, 0x68, 0x75
	.byte 0x47, 0xA2, 0xAA, 0xC2, 0xDA, 0x84, 0x25, 0xFC, 0xA8, 0xF4, 0x47, 0x51, 0xDA, 0x85, 0xB5, 0x20
	.byte 0x74, 0x94, 0x86, 0x1E, 0x0F, 0x75, 0xC9, 0xE9, 0x08, 0x61, 0xF5, 0x06, 0x6D, 0x30, 0x6E, 0x15
	.byte 0x19, 0x02, 0xE9, 0x52, 0xC0, 0x62, 0xDB, 0x4D, 0x99, 0x9E, 0xE2, 0x6A, 0x0C, 0x44, 0x38, 0xCD
	.byte 0xFE, 0xBE, 0xE3, 0x64, 0x09, 0x70, 0xC5, 0xFE, 0xB1, 0x6B, 0x29, 0xB6, 0x2F, 0x49, 0xC8, 0x3B
	.byte 0xD4, 0x27, 0x04, 0x25, 0x10, 0x97, 0x2F, 0xE7, 0x90, 0x6D, 0xC0, 0x28, 0x42, 0x99, 0xD7, 0x4C
	.byte 0x43, 0xDE, 0xC3, 0xF5, 0x21, 0x6D, 0x54, 0x9F, 0x5D, 0xC3, 0x58, 0xE1, 0xC0, 0xE4, 0xD9, 0x5B
	.byte 0xB0, 0xB8, 0xDC, 0xB4, 0x7B, 0xDF, 0x36, 0x3A, 0xC2, 0xB5, 0x66, 0x22, 0x12, 0xD6, 0x87, 0x0D
	.byte 0x01, 0x00, 0x01, 0x00, 0xF8, 0x51, 0x0E, 0x02, 0x80, 0x00, 0x00, 0x00, 0x78, 0x51, 0x0E, 0x02
	.byte 0x03, 0x00, 0x00, 0x00, 0x60, 0x51, 0x0E, 0x02, 0xCC, 0x5E, 0xD1, 0x11, 0x5D, 0x5C, 0x69, 0xD0
	.byte 0xAB, 0xD3, 0xB9, 0x6A, 0x4C, 0x99, 0x1F, 0x59, 0x98, 0x30, 0x8E, 0x16, 0x85, 0x20, 0x46, 0x6D
	.byte 0x47, 0x3F, 0xD4, 0x85, 0x20, 0x84, 0xE1, 0x6D, 0xB3, 0xF8, 0xA4, 0xED, 0x0C, 0xF1, 0x17, 0x0F
	.byte 0x3B, 0xF9, 0xA7, 0xF9, 0x25, 0xD7, 0xC1, 0xCF, 0x84, 0x63, 0xF2, 0x7C, 0x63, 0xCF, 0xA2, 0x47
	.byte 0xF2, 0xC6, 0x5B, 0x33, 0x8E, 0x64, 0x40, 0x04, 0x68, 0xC1, 0x80, 0xB9, 0x64, 0x1C, 0x45, 0x77
	.byte 0xC7, 0xD8, 0x6E, 0xF5, 0x95, 0x29, 0x3C, 0x50, 0xE8, 0x34, 0xD7, 0x78, 0x1F, 0xA8, 0xBA, 0x6D
	.byte 0x43, 0x91, 0x95, 0x8F, 0x45, 0x57, 0x5E, 0x7E, 0xC5, 0xFB, 0xCA, 0xA4, 0x04, 0xEB, 0xEA, 0x97
	.byte 0x37, 0x54, 0x30, 0x6F, 0xBB, 0x01, 0x47, 0x32, 0x33, 0xCD, 0xDC, 0x57, 0x9B, 0x64, 0x69, 0x61
	.byte 0xF8, 0x9B, 0x1D, 0x1C, 0x89, 0x4F, 0x5C, 0x67, 0x55, 0x53, 0x2C, 0x20, 0x56, 0x65, 0x72, 0x69
	.byte 0x53, 0x69, 0x67, 0x6E, 0x2C, 0x20, 0x49, 0x6E, 0x63, 0x2E, 0x2C, 0x20, 0x43, 0x6C, 0x61, 0x73
	.byte 0x73, 0x20, 0x33, 0x20, 0x50, 0x75, 0x62, 0x6C, 0x69, 0x63, 0x20, 0x50, 0x72, 0x69, 0x6D, 0x61
	.byte 0x72, 0x79, 0x20, 0x43, 0x65, 0x72, 0x74, 0x69, 0x66, 0x69, 0x63, 0x61, 0x74, 0x69, 0x6F, 0x6E
	.byte 0x20, 0x41, 0x75, 0x74, 0x68, 0x6F, 0x72, 0x69, 0x74, 0x79, 0x20, 0x2D, 0x20, 0x47, 0x32, 0x2C
	.byte 0x20, 0x28, 0x63, 0x29, 0x20, 0x31, 0x39, 0x39, 0x38, 0x20, 0x56, 0x65, 0x72, 0x69, 0x53, 0x69
	.byte 0x67, 0x6E, 0x2C, 0x20, 0x49, 0x6E, 0x63, 0x2E, 0x20, 0x2D, 0x20, 0x46, 0x6F, 0x72, 0x20, 0x61
	.byte 0x75, 0x74, 0x68, 0x6F, 0x72, 0x69, 0x7A, 0x65, 0x64, 0x20, 0x75, 0x73, 0x65, 0x20, 0x6F, 0x6E
	.byte 0x6C, 0x79, 0x2C, 0x20, 0x56, 0x65, 0x72, 0x69, 0x53, 0x69, 0x67, 0x6E, 0x20, 0x54, 0x72, 0x75
	.byte 0x73, 0x74, 0x20, 0x4E, 0x65, 0x74, 0x77, 0x6F, 0x72, 0x6B, 0x00, 0x00, 0x01, 0x00, 0x01, 0x00
	.byte 0xA4, 0x52, 0x0E, 0x02, 0x00, 0x01, 0x00, 0x00, 0x40, 0x53, 0x0E, 0x02, 0x03, 0x00, 0x00, 0x00
	.byte 0x8C, 0x52, 0x0E, 0x02, 0x55, 0x53, 0x2C, 0x20, 0x56, 0x65, 0x72, 0x69, 0x53, 0x69, 0x67, 0x6E
	.byte 0x2C, 0x20, 0x49, 0x6E, 0x63, 0x2E, 0x2C, 0x20, 0x56, 0x65, 0x72, 0x69, 0x53, 0x69, 0x67, 0x6E
	.byte 0x20, 0x54, 0x72, 0x75, 0x73, 0x74, 0x20, 0x4E, 0x65, 0x74, 0x77, 0x6F, 0x72, 0x6B, 0x2C, 0x20
	.byte 0x28, 0x63, 0x29, 0x20, 0x31, 0x39, 0x39, 0x39, 0x20, 0x56, 0x65, 0x72, 0x69, 0x53, 0x69, 0x67
	.byte 0x6E, 0x2C, 0x20, 0x49, 0x6E, 0x63, 0x2E, 0x20, 0x2D, 0x20, 0x46, 0x6F, 0x72, 0x20, 0x61, 0x75
	.byte 0x74, 0x68, 0x6F, 0x72, 0x69, 0x7A, 0x65, 0x64, 0x20, 0x75, 0x73, 0x65, 0x20, 0x6F, 0x6E, 0x6C
	.byte 0x79, 0x2C, 0x20, 0x56, 0x65, 0x72, 0x69, 0x53, 0x69, 0x67, 0x6E, 0x20, 0x43, 0x6C, 0x61, 0x73
	.byte 0x73, 0x20, 0x33, 0x20, 0x50, 0x75, 0x62, 0x6C, 0x69, 0x63, 0x20, 0x50, 0x72, 0x69, 0x6D, 0x61
	.byte 0x72, 0x79, 0x20, 0x43, 0x65, 0x72, 0x74, 0x69, 0x66, 0x69, 0x63, 0x61, 0x74, 0x69, 0x6F, 0x6E
	.byte 0x20, 0x41, 0x75, 0x74, 0x68, 0x6F, 0x72, 0x69, 0x74, 0x79, 0x20, 0x2D, 0x20, 0x47, 0x33, 0x00
	.byte 0xCB, 0xBA, 0x9C, 0x52, 0xFC, 0x78, 0x1F, 0x1A, 0x1E, 0x6F, 0x1B, 0x37, 0x73, 0xBD, 0xF8, 0xC9
	.byte 0x6B, 0x94, 0x12, 0x30, 0x4F, 0xF0, 0x36, 0x47, 0xF5, 0xD0, 0x91, 0x0A, 0xF5, 0x17, 0xC8, 0xA5
	.byte 0x61, 0xC1, 0x16, 0x40, 0x4D, 0xFB, 0x8A, 0x61, 0x90, 0xE5, 0x76, 0x20, 0xC1, 0x11, 0x06, 0x7D
	.byte 0xAB, 0x2C, 0x6E, 0xA6, 0xF5, 0x11, 0x41, 0x8E, 0xFA, 0x2D, 0xAD, 0x2A, 0x61, 0x59, 0xA4, 0x67
	.byte 0x26, 0x4C, 0xD0, 0xE8, 0xBC, 0x52, 0x5B, 0x70, 0x20, 0x04, 0x58, 0xD1, 0x7A, 0xC9, 0xA4, 0x69
	.byte 0xBC, 0x83, 0x17, 0x64, 0xAD, 0x05, 0x8B, 0xBC, 0xD0, 0x58, 0xCE, 0x8D, 0x8C, 0xF5, 0xEB, 0xF0
	.byte 0x42, 0x49, 0x0B, 0x9D, 0x97, 0x27, 0x67, 0x32, 0x6E, 0xE1, 0xAE, 0x93, 0x15, 0x1C, 0x70, 0xBC
	.byte 0x20, 0x4D, 0x2F, 0x18, 0xDE, 0x92, 0x88, 0xE8, 0x6C, 0x85, 0x57, 0x11, 0x1A, 0xE9, 0x7E, 0xE3
	.byte 0x26, 0x11, 0x54, 0xA2, 0x45, 0x96, 0x55, 0x83, 0xCA, 0x30, 0x89, 0xE8, 0xDC, 0xD8, 0xA3, 0xED
	.byte 0x2A, 0x80, 0x3F, 0x7F, 0x79, 0x65, 0x57, 0x3E, 0x15, 0x20, 0x66, 0x08, 0x2F, 0x95, 0x93, 0xBF
	.byte 0xAA, 0x47, 0x2F, 0xA8, 0x46, 0x97, 0xF0, 0x12, 0xE2, 0xFE, 0xC2, 0x0A, 0x2B, 0x51, 0xE6, 0x76
	.byte 0xE6, 0xB7, 0x46, 0xB7, 0xE2, 0x0D, 0xA6, 0xCC, 0xA8, 0xC3, 0x4C, 0x59, 0x55, 0x89, 0xE6, 0xE8
	.byte 0x53, 0x5C, 0x1C, 0xEA, 0x9D, 0xF0, 0x62, 0x16, 0x0B, 0xA7, 0xC9, 0x5F, 0x0C, 0xF0, 0xDE, 0xC2
	.byte 0x76, 0xCE, 0xAF, 0xF7, 0x6A, 0xF2, 0xFA, 0x41, 0xA6, 0xA2, 0x33, 0x14, 0xC9, 0xE5, 0x7A, 0x63
	.byte 0xD3, 0x9E, 0x62, 0x37, 0xD5, 0x85, 0x65, 0x9E, 0x0E, 0xE6, 0x53, 0x24, 0x74, 0x1B, 0x5E, 0x1D
	.byte 0x12, 0x53, 0x5B, 0xC7, 0x2C, 0xE7, 0x83, 0x49, 0x3B, 0x15, 0xAE, 0x8A, 0x68, 0xB9, 0x57, 0x97
	.byte 0x01, 0x00, 0x01, 0x00, 0x58, 0x54, 0x0E, 0x02, 0x80, 0x00, 0x00, 0x00, 0x9C, 0x54, 0x0E, 0x02
	.byte 0x03, 0x00, 0x00, 0x00, 0x40, 0x54, 0x0E, 0x02, 0x55, 0x53, 0x2C, 0x20, 0x56, 0x65, 0x72, 0x69
	.byte 0x53, 0x69, 0x67, 0x6E, 0x2C, 0x20, 0x49, 0x6E, 0x63, 0x2E, 0x2C, 0x20, 0x43, 0x6C, 0x61, 0x73
	.byte 0x73, 0x20, 0x33, 0x20, 0x50, 0x75, 0x62, 0x6C, 0x69, 0x63, 0x20, 0x50, 0x72, 0x69, 0x6D, 0x61
	.byte 0x72, 0x79, 0x20, 0x43, 0x65, 0x72, 0x74, 0x69, 0x66, 0x69, 0x63, 0x61, 0x74, 0x69, 0x6F, 0x6E
	.byte 0x20, 0x41, 0x75, 0x74, 0x68, 0x6F, 0x72, 0x69, 0x74, 0x79, 0x00, 0x00, 0xC9, 0x5C, 0x59, 0x9E
	.byte 0xF2, 0x1B, 0x8A, 0x01, 0x14, 0xB4, 0x10, 0xDF, 0x04, 0x40, 0xDB, 0xE3, 0x57, 0xAF, 0x6A, 0x45
	.byte 0x40, 0x8F, 0x84, 0x0C, 0x0B, 0xD1, 0x33, 0xD9, 0xD9, 0x11, 0xCF, 0xEE, 0x02, 0x58, 0x1F, 0x25
	.byte 0xF7, 0x2A, 0xA8, 0x44, 0x05, 0xAA, 0xEC, 0x03, 0x1F, 0x78, 0x7F, 0x9E, 0x93, 0xB9, 0x9A, 0x00
	.byte 0xAA, 0x23, 0x7D, 0xD6, 0xAC, 0x85, 0xA2, 0x63, 0x45, 0xC7, 0x72, 0x27, 0xCC, 0xF4, 0x4C, 0xC6
	.byte 0x75, 0x71, 0xD2, 0x39, 0xEF, 0x4F, 0x42, 0xF0, 0x75, 0xDF, 0x0A, 0x90, 0xC6, 0x8E, 0x20, 0x6F
	.byte 0x98, 0x0F, 0xF8, 0xAC, 0x23, 0x5F, 0x70, 0x29, 0x36, 0xA4, 0xC9, 0x86, 0xE7, 0xB1, 0x9A, 0x20
	.byte 0xCB, 0x53, 0xA5, 0x85, 0xE7, 0x3D, 0xBE, 0x7D, 0x9A, 0xFE, 0x24, 0x45, 0x33, 0xDC, 0x76, 0x15
	.byte 0xED, 0x0F, 0xA2, 0x71, 0x64, 0x4C, 0x65, 0x2E, 0x81, 0x68, 0x45, 0xA7, 0x01, 0x00, 0x01, 0x00
	.byte 0x34, 0x55, 0x0E, 0x02, 0x7D, 0x00, 0x00, 0x00, 0x78, 0x55, 0x0E, 0x02, 0x03, 0x00, 0x00, 0x00
	.byte 0x1C, 0x55, 0x0E, 0x02, 0x55, 0x53, 0x2C, 0x20, 0x52, 0x53, 0x41, 0x20, 0x44, 0x61, 0x74, 0x61
	.byte 0x20, 0x53, 0x65, 0x63, 0x75, 0x72, 0x69, 0x74, 0x79, 0x2C, 0x20, 0x49, 0x6E, 0x63, 0x2E, 0x2C
	.byte 0x20, 0x53, 0x65, 0x63, 0x75, 0x72, 0x65, 0x20, 0x53, 0x65, 0x72, 0x76, 0x65, 0x72, 0x20, 0x43
	.byte 0x65, 0x72, 0x74, 0x69, 0x66, 0x69, 0x63, 0x61, 0x74, 0x69, 0x6F, 0x6E, 0x20, 0x41, 0x75, 0x74
	.byte 0x68, 0x6F, 0x72, 0x69, 0x74, 0x79, 0x00, 0x00, 0x92, 0xCE, 0x7A, 0xC1, 0xAE, 0x83, 0x3E, 0x5A
	.byte 0xAA, 0x89, 0x83, 0x57, 0xAC, 0x25, 0x01, 0x76, 0x0C, 0xAD, 0xAE, 0x8E, 0x2C, 0x37, 0xCE, 0xEB
	.byte 0x35, 0x78, 0x64, 0x54, 0x03, 0xE5, 0x84, 0x40, 0x51, 0xC9, 0xBF, 0x8F, 0x08, 0xE2, 0x8A, 0x82
	.byte 0x08, 0xD2, 0x16, 0x86, 0x37, 0x55, 0xE9, 0xB1, 0x21, 0x02, 0xAD, 0x76, 0x68, 0x81, 0x9A, 0x05
	.byte 0xA2, 0x4B, 0xC9, 0x4B, 0x25, 0x66, 0x22, 0x56, 0x6C, 0x88, 0x07, 0x8F, 0xF7, 0x81, 0x59, 0x6D
	.byte 0x84, 0x07, 0x65, 0x70, 0x13, 0x71, 0x76, 0x3E, 0x9B, 0x77, 0x4C, 0xE3, 0x50, 0x89, 0x56, 0x98
	.byte 0x48, 0xB9, 0x1D, 0xA7, 0x29, 0x1A, 0x13, 0x2E, 0x4A, 0x11, 0x59, 0x9C, 0x1E, 0x15, 0xD5, 0x49
	.byte 0x54, 0x2C, 0x73, 0x3A, 0x69, 0x82, 0xB1, 0x97, 0x39, 0x9C, 0x6D, 0x70, 0x67, 0x48, 0xE5, 0xDD
	.byte 0x2D, 0xD6, 0xC8, 0x1E, 0x7B, 0x00, 0x00, 0x00
	.global ov15_020E55F8
ov15_020E55F8:
	.byte 0xFC, 0x55, 0x0E, 0x02, 0x41, 0x42, 0x43, 0x44
	.byte 0x45, 0x46, 0x47, 0x48, 0x49, 0x4A, 0x4B, 0x4C, 0x4D, 0x4E, 0x4F, 0x50, 0x51, 0x52, 0x53, 0x54
	.byte 0x55, 0x56, 0x57, 0x58, 0x59, 0x5A, 0x61, 0x62, 0x63, 0x64, 0x65, 0x66, 0x67, 0x68, 0x69, 0x6A
	.byte 0x6B, 0x6C, 0x6D, 0x6E, 0x6F, 0x70, 0x71, 0x72, 0x73, 0x74, 0x75, 0x76, 0x77, 0x78, 0x79, 0x7A
	.byte 0x30, 0x31, 0x32, 0x33, 0x34, 0x35, 0x36, 0x37, 0x38, 0x39, 0x2E, 0x2D, 0x00, 0x00, 0x00, 0x00
	.global ov15_020E5640
ov15_020E5640:
	.byte 0x30, 0x30, 0x30, 0x30, 0x00, 0x00, 0x00, 0x00
	.global ov15_020E5648
ov15_020E5648:
	.byte 0x00, 0x00, 0x00, 0x00, 0x4A, 0x75, 0x6E, 0x00
	.byte 0x4A, 0x75, 0x6C, 0x00, 0x44, 0x65, 0x63, 0x00, 0x53, 0x65, 0x70, 0x00, 0x41, 0x75, 0x67, 0x00
	.byte 0x4E, 0x6F, 0x76, 0x00, 0x4F, 0x63, 0x74, 0x00, 0x4D, 0x61, 0x79, 0x00, 0x41, 0x70, 0x72, 0x00
	.byte 0x4D, 0x61, 0x72, 0x00, 0x46, 0x65, 0x62, 0x00, 0x4A, 0x61, 0x6E, 0x00
	.global ov15_020E567C
ov15_020E567C:
	.byte 0x78, 0x56, 0x0E, 0x02
	.byte 0x74, 0x56, 0x0E, 0x02, 0x70, 0x56, 0x0E, 0x02, 0x6C, 0x56, 0x0E, 0x02, 0x68, 0x56, 0x0E, 0x02
	.byte 0x4C, 0x56, 0x0E, 0x02, 0x50, 0x56, 0x0E, 0x02, 0x5C, 0x56, 0x0E, 0x02, 0x58, 0x56, 0x0E, 0x02
	.byte 0x64, 0x56, 0x0E, 0x02, 0x60, 0x56, 0x0E, 0x02, 0x54, 0x56, 0x0E, 0x02
	.global ov15_020E56AC
ov15_020E56AC:
	.byte 0x46, 0x72, 0x69, 0x2C
	.byte 0x20, 0x30, 0x33, 0x20, 0x4D, 0x61, 0x72, 0x20, 0x32, 0x30, 0x30, 0x36, 0x20, 0x30, 0x31, 0x3A
	.byte 0x32, 0x38, 0x3A, 0x31, 0x33, 0x20, 0x47, 0x4D, 0x54, 0x00, 0x00, 0x00
	.global ov15_020E56CC
ov15_020E56CC:
	.byte 0x68, 0x74, 0x74, 0x70
	.byte 0x73, 0x3A, 0x2F, 0x2F, 0x2F, 0x64, 0x6F, 0x77, 0x6E, 0x6C, 0x6F, 0x61, 0x64, 0x00, 0x00, 0x00
	.global ov15_020E56E0
ov15_020E56E0:
	.byte 0x68, 0x74, 0x74, 0x70, 0x73, 0x3A, 0x2F, 0x2F, 0x25, 0x73, 0x2F, 0x64, 0x6F, 0x77, 0x6E, 0x6C
	.byte 0x6F, 0x61, 0x64, 0x00
	.global ov15_020E56F4
ov15_020E56F4:
	.byte 0x39, 0x30, 0x30, 0x30, 0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0x01, 0x00
	.global ov15_020E5700
ov15_020E5700:
	.byte 0x04, 0x57, 0x0E, 0x02, 0x18, 0x57, 0x0E, 0x02, 0x80, 0x00, 0x00, 0x00, 0x68, 0x57, 0x0E, 0x02
	.byte 0x03, 0x00, 0x00, 0x00, 0xFC, 0x56, 0x0E, 0x02, 0x55, 0x53, 0x2C, 0x20, 0x57, 0x61, 0x73, 0x68
	.byte 0x69, 0x6E, 0x67, 0x74, 0x6F, 0x6E, 0x2C, 0x20, 0x4E, 0x69, 0x6E, 0x74, 0x65, 0x6E, 0x64, 0x6F
	.byte 0x20, 0x6F, 0x66, 0x20, 0x41, 0x6D, 0x65, 0x72, 0x69, 0x63, 0x61, 0x20, 0x49, 0x6E, 0x63, 0x2C
	.byte 0x20, 0x4E, 0x4F, 0x41, 0x2C, 0x20, 0x4E, 0x69, 0x6E, 0x74, 0x65, 0x6E, 0x64, 0x6F, 0x20, 0x43
	.byte 0x41, 0x2C, 0x20, 0x63, 0x61, 0x40, 0x6E, 0x6F, 0x61, 0x2E, 0x6E, 0x69, 0x6E, 0x74, 0x65, 0x6E
	.byte 0x64, 0x6F, 0x2E, 0x63, 0x6F, 0x6D, 0x00, 0x00, 0xB3, 0xCD, 0x79, 0x97, 0x77, 0x5D, 0x8A, 0xAF
	.byte 0x86, 0xA8, 0xE8, 0xD7, 0x73, 0x1C, 0x77, 0xDF, 0x10, 0x90, 0x1F, 0x81, 0xF8, 0x41, 0x9E, 0x21
	.byte 0x55, 0xDF, 0xBC, 0xFC, 0x63, 0xFB, 0x19, 0x43, 0xF1, 0xF6, 0xC4, 0x72, 0x42, 0x49, 0xBD, 0xAD
	.byte 0x44, 0x68, 0x4E, 0xF3, 0xDA, 0x1D, 0xE6, 0x4D, 0xD8, 0xF9, 0x59, 0x88, 0xDC, 0xAE, 0x3E, 0x9B
	.byte 0x38, 0x09, 0xCA, 0x7F, 0xFF, 0xDC, 0x24, 0xA2, 0x44, 0x78, 0x78, 0x49, 0x93, 0xD4, 0x84, 0x40
	.byte 0x10, 0xB8, 0xEC, 0x3E, 0xDB, 0x2D, 0x93, 0xC8, 0x11, 0xC8, 0xFD, 0x78, 0x2D, 0x61, 0xAD, 0x31
	.byte 0xAE, 0x86, 0x26, 0xB0, 0xFD, 0x5A, 0x3F, 0xA1, 0x3D, 0xBF, 0xE2, 0x4B, 0x49, 0xEC, 0xCE, 0x66
	.byte 0x98, 0x58, 0x26, 0x12, 0xC0, 0xFB, 0xF4, 0x77, 0x65, 0x1B, 0xEA, 0xFB, 0xCB, 0x7F, 0xE0, 0x8C
	.byte 0xCB, 0x02, 0xA3, 0x4E, 0x5E, 0x8C, 0xEA, 0x9B
	.global ov15_020E57E8
ov15_020E57E8:
	.byte 0x4E, 0x69, 0x74, 0x72, 0x6F, 0x20, 0x57, 0x69
	.byte 0x46, 0x69, 0x20, 0x53, 0x44, 0x4B, 0x2F, 0x25, 0x64, 0x2E, 0x25, 0x64, 0x00, 0x00, 0x00, 0x00
	.global ov15_020E5800
ov15_020E5800:
	.byte 0x48, 0x54, 0x54, 0x50, 0x53, 0x54, 0x41, 0x54, 0x55, 0x53, 0x43, 0x4F, 0x44, 0x45, 0x00, 0x00
	.global ov15_020E5810
ov15_020E5810:
	.byte 0x72, 0x65, 0x74, 0x75, 0x72, 0x6E, 0x63, 0x64, 0x00, 0x00, 0x00, 0x00
	.global ov15_020E581C
ov15_020E581C:
	.byte 0x55, 0x73, 0x65, 0x72
	.byte 0x2D, 0x41, 0x67, 0x65, 0x6E, 0x74, 0x00, 0x00
	.global ov15_020E5828
ov15_020E5828:
	.byte 0x67, 0x61, 0x6D, 0x65, 0x63, 0x64, 0x00, 0x00
	.global ov15_020E5830
ov15_020E5830:
	.byte 0x72, 0x68, 0x67, 0x61, 0x6D, 0x65, 0x63, 0x64, 0x00, 0x00, 0x00, 0x00
	.global ov15_020E583C
ov15_020E583C:
	.byte 0x70, 0x61, 0x73, 0x73
	.byte 0x77, 0x64, 0x00, 0x00
	.global ov15_020E5844
ov15_020E5844:
	.byte 0x74, 0x6F, 0x6B, 0x65, 0x6E, 0x00, 0x00, 0x00
	.global ov15_020E584C
ov15_020E584C:
	.byte 0x75, 0x73, 0x65, 0x72
	.byte 0x69, 0x64, 0x00, 0x00
	.global ov15_020E5854
ov15_020E5854:
	.byte 0x6D, 0x61, 0x63, 0x61, 0x64, 0x72, 0x00, 0x00
	.global ov15_020E585C
ov15_020E585C:
	.byte 0x61, 0x63, 0x74, 0x69
	.byte 0x6F, 0x6E, 0x00, 0x00
	.global ov15_020E5864
ov15_020E5864:
	.byte 0x61, 0x74, 0x74, 0x72, 0x31, 0x00, 0x00, 0x00
	.global ov15_020E586C
ov15_020E586C:
	.byte 0x61, 0x74, 0x74, 0x72
	.byte 0x32, 0x00, 0x00, 0x00
	.global ov15_020E5874
ov15_020E5874:
	.byte 0x61, 0x74, 0x74, 0x72, 0x33, 0x00, 0x00, 0x00
	.global ov15_020E587C
ov15_020E587C:
	.byte 0x61, 0x70, 0x69, 0x6E
	.byte 0x66, 0x6F, 0x00, 0x00
	.global ov15_020E5884
ov15_020E5884:
	.byte 0x6F, 0x70, 0x74, 0x69, 0x6F, 0x6E, 0x61, 0x6C, 0x6C, 0x6F, 0x67, 0x64
	.byte 0x61, 0x74, 0x61, 0x00
	.global ov15_020E5894
ov15_020E5894:
	.byte 0x6F, 0x66, 0x66, 0x73, 0x65, 0x74, 0x00, 0x00
	.global ov15_020E589C
ov15_020E589C:
	.byte 0x6E, 0x75, 0x6D, 0x00
	.global ov15_020E58A0
ov15_020E58A0:
	.byte 0x63, 0x6F, 0x6E, 0x74, 0x65, 0x6E, 0x74, 0x73, 0x00, 0x00, 0x00, 0x00
	.global ov15_020E58AC
ov15_020E58AC:
	.byte 0x43, 0x6F, 0x6E, 0x74
	.byte 0x65, 0x6E, 0x74, 0x2D, 0x4C, 0x65, 0x6E, 0x67, 0x74, 0x68, 0x00, 0x00
	.global ov15_020E58BC
ov15_020E58BC:
	.byte 0x68, 0x74, 0x74, 0x70
	.byte 0x3A, 0x2F, 0x2F, 0x00
	.global ov15_020E58C4
ov15_020E58C4:
	.byte 0x68, 0x74, 0x74, 0x70, 0x73, 0x3A, 0x2F, 0x2F, 0x00, 0x00, 0x00, 0x00
	.global ov15_020E58D0
ov15_020E58D0:
	.byte 0x48, 0x54, 0x54, 0x50, 0x53, 0x54, 0x41, 0x54, 0x55, 0x53, 0x43, 0x4F, 0x44, 0x45, 0x00, 0x00
	.global ov15_020E58E0
ov15_020E58E0:
	.byte 0x50, 0x72, 0x6F, 0x78, 0x79, 0x2D, 0x41, 0x75, 0x74, 0x68, 0x6F, 0x72, 0x69, 0x7A, 0x61, 0x74
	.byte 0x69, 0x6F, 0x6E, 0x3A, 0x20, 0x42, 0x61, 0x73, 0x69, 0x63, 0x20, 0x00
	.global ov15_020E58FC
ov15_020E58FC:
	.byte 0x0D, 0x0A, 0x00, 0x00
	.global ov15_020E5900
ov15_020E5900:
	.byte 0x41, 0x75, 0x74, 0x68, 0x6F, 0x72, 0x69, 0x7A, 0x61, 0x74, 0x69, 0x6F, 0x6E, 0x3A, 0x20, 0x42
	.byte 0x61, 0x73, 0x69, 0x63, 0x20, 0x00, 0x00, 0x00
	.global ov15_020E5918
ov15_020E5918:
	.byte 0x43, 0x4F, 0x4E, 0x4E, 0x45, 0x43, 0x54, 0x20
	.byte 0x00, 0x00, 0x00, 0x00
	.global ov15_020E5924
ov15_020E5924:
	.byte 0x3A, 0x00, 0x00, 0x00
	.global ov15_020E5928
ov15_020E5928:
	.byte 0x20, 0x48, 0x54, 0x54, 0x50, 0x2F, 0x31, 0x2E
	.byte 0x31, 0x0D, 0x0A, 0x00
	.global ov15_020E5934
ov15_020E5934:
	.byte 0x48, 0x6F, 0x73, 0x74, 0x3A, 0x20, 0x00, 0x00
	.global ov15_020E593C
ov15_020E593C:
	.byte 0x43, 0x6F, 0x6E, 0x74
	.byte 0x65, 0x6E, 0x74, 0x2D, 0x4C, 0x65, 0x6E, 0x67, 0x74, 0x68, 0x3A, 0x20, 0x30, 0x0D, 0x0A, 0x50
	.byte 0x72, 0x61, 0x67, 0x6D, 0x61, 0x3A, 0x20, 0x6E, 0x6F, 0x2D, 0x63, 0x61, 0x63, 0x68, 0x65, 0x0D
	.byte 0x0A, 0x00, 0x00, 0x00
	.global ov15_020E5964
ov15_020E5964:
	.byte 0x48, 0x54, 0x54, 0x50, 0x2F, 0x00, 0x00, 0x00
	.global ov15_020E596C
ov15_020E596C:
	.byte 0x3A, 0x20, 0x00, 0x00
	.global ov15_020E5970
ov15_020E5970:
	.byte 0x43, 0x6F, 0x6E, 0x74, 0x65, 0x6E, 0x74, 0x2D, 0x4C, 0x65, 0x6E, 0x67, 0x74, 0x68, 0x3A, 0x20
	.byte 0x00, 0x00, 0x00, 0x00
	.global ov15_020E5984
ov15_020E5984:
	.byte 0x22, 0x0D, 0x0A, 0x00
	.global ov15_020E5988
ov15_020E5988:
	.byte 0x2D, 0x2D, 0x0D, 0x0A, 0x00, 0x00, 0x00, 0x00
	.global ov15_020E5990
ov15_020E5990:
	.byte 0x3D, 0x00, 0x00, 0x00
	.global ov15_020E5994
ov15_020E5994:
	.byte 0x26, 0x00, 0x00, 0x00
	.global ov15_020E5998
ov15_020E5998:
	.byte 0x47, 0x45, 0x54, 0x20, 0x00, 0x00, 0x00, 0x00
	.global ov15_020E59A0
ov15_020E59A0:
	.byte 0x50, 0x4F, 0x53, 0x54, 0x20, 0x00, 0x00, 0x00
	.global ov15_020E59A8
ov15_020E59A8:
	.byte 0x48, 0x45, 0x41, 0x44, 0x20, 0x00, 0x00, 0x00
	.global ov15_020E59B0
ov15_020E59B0:
	.byte 0x2F, 0x00, 0x00, 0x00
	.global ov15_020E59B4
ov15_020E59B4:
	.byte 0x43, 0x6F, 0x6E, 0x74, 0x65, 0x6E, 0x74, 0x2D, 0x4C, 0x65, 0x6E, 0x67
	.byte 0x74, 0x68, 0x00, 0x00
	.global ov15_020E59C4
ov15_020E59C4:
	.byte 0x43, 0x6F, 0x6E, 0x6E, 0x65, 0x63, 0x74, 0x69, 0x6F, 0x6E, 0x00, 0x00
	.global ov15_020E59D0
ov15_020E59D0:
	.byte 0x4B, 0x65, 0x65, 0x70, 0x2D, 0x41, 0x6C, 0x69, 0x76, 0x65, 0x00, 0x00
	.global ov15_020E59DC
ov15_020E59DC:
	.byte 0x54, 0x72, 0x61, 0x6E
	.byte 0x73, 0x66, 0x65, 0x72, 0x2D, 0x45, 0x6E, 0x63, 0x6F, 0x64, 0x69, 0x6E, 0x67, 0x00, 0x00, 0x00
	.global ov15_020E59F0
ov15_020E59F0:
	.byte 0x63, 0x68, 0x75, 0x6E, 0x6B, 0x65, 0x64, 0x00
	.global ov15_020E59F8
ov15_020E59F8:
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x40, 0x00, 0x00
	.global ov15_020E5A00
ov15_020E5A00:
	.byte 0xE6, 0xFF, 0xFF, 0xFF
	.global ov15_020E5A04
ov15_020E5A04:
	.byte 0x01, 0x01, 0xC0, 0x05, 0x01, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x08, 0x00, 0x08, 0x0C, 0x20, 0x00, 0x00, 0x00, 0x00
	.global ov15_020E5A1C
ov15_020E5A1C:
	.byte 0x00, 0x01, 0x00, 0x00
	.byte 0x00, 0x00, 0x9E, 0x0B, 0x00, 0x00, 0x00, 0x00, 0xD1, 0x16, 0x00, 0x00, 0x00, 0x08, 0x0C, 0x20
	.byte 0x00, 0x08, 0x0D, 0x20
	.global ov15_020E5A34
ov15_020E5A34:
	.byte 0x02, 0x00, 0x00, 0x00, 0x00, 0x00, 0xEA, 0x05, 0x00, 0x00, 0x00, 0x00
	.byte 0xEB, 0x06, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x08, 0x0D, 0x20, 0x55, 0x04, 0x03, 0x00
	.byte 0xFF, 0xFF, 0xFF, 0x00
	.global ov15_020E5A54
ov15_020E5A54:
	.byte 0x04, 0x00, 0x05, 0x00, 0xFF, 0xFF, 0xFF, 0xFF
	.global ov15_020E5A5C
ov15_020E5A5C:
	.byte 0x50, 0x5A, 0x0E, 0x02
	.byte 0x7C, 0x5A, 0x0E, 0x02, 0x74, 0x5A, 0x0E, 0x02, 0x88, 0x5A, 0x0E, 0x02, 0x94, 0x5A, 0x0E, 0x02
	.byte 0x4C, 0x5A, 0x0E, 0x02, 0x55, 0x08, 0x01, 0x01, 0x00, 0x00, 0x00, 0x00, 0x2A, 0x86, 0x48, 0x86
	.byte 0xF7, 0x0D, 0x01, 0x01, 0x01, 0x00, 0x00, 0x00, 0x2A, 0x86, 0x48, 0x86, 0xF7, 0x0D, 0x01, 0x01
	.byte 0x04, 0x00, 0x00, 0x00, 0x2A, 0x86, 0x48, 0x86, 0xF7, 0x0D, 0x01, 0x01, 0x05, 0x00, 0x00, 0x00
	.global ov15_020E5AA0
ov15_020E5AA0:
	.byte 0x41, 0x00, 0x00, 0x00
	.global ov15_020E5AA4
ov15_020E5AA4:
	.byte 0x42, 0x42, 0x00, 0x00
	.global ov15_020E5AA8
ov15_020E5AA8:
	.byte 0x43, 0x43, 0x43, 0x00
	.global ov15_020E5AAC
ov15_020E5AAC:
	.byte 0x53, 0x52, 0x56, 0x52
	.byte 0x00, 0x00, 0x00, 0x00
	.global ov15_020E5AB4
ov15_020E5AB4:
	.byte 0x43, 0x4C, 0x4E, 0x54, 0x00, 0x00, 0x00, 0x00
	.global ov15_020E5ABC
ov15_020E5ABC:
	.byte 0x00, 0x01, 0x02, 0x03
	.byte 0x04, 0x05, 0x06, 0x07, 0x08, 0x09, 0x0A, 0x0B, 0x0C, 0x0D, 0x0E, 0x0F, 0x01, 0x06, 0x0B, 0x00
	.byte 0x05, 0x0A, 0x0F, 0x04, 0x09, 0x0E, 0x03, 0x08, 0x0D, 0x02, 0x07, 0x0C, 0x05, 0x08, 0x0B, 0x0E
	.byte 0x01, 0x04, 0x07, 0x0A, 0x0D, 0x00, 0x03, 0x06, 0x09, 0x0C, 0x0F, 0x02, 0x00, 0x07, 0x0E, 0x05
	.byte 0x0C, 0x03, 0x0A, 0x01, 0x08, 0x0F, 0x06, 0x0D, 0x04, 0x0B, 0x02, 0x09
	.global ov15_020E5AFC
ov15_020E5AFC:
	.byte 0x80, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.global ov15_020E5B3C
ov15_020E5B3C:
	.byte 0x78, 0xA4, 0x6A, 0xD7
	.byte 0x56, 0xB7, 0xC7, 0xE8, 0xDB, 0x70, 0x20, 0x24, 0xEE, 0xCE, 0xBD, 0xC1, 0xAF, 0x0F, 0x7C, 0xF5
	.byte 0x2A, 0xC6, 0x87, 0x47, 0x13, 0x46, 0x30, 0xA8, 0x01, 0x95, 0x46, 0xFD, 0xD8, 0x98, 0x80, 0x69
	.byte 0xAF, 0xF7, 0x44, 0x8B, 0xB1, 0x5B, 0xFF, 0xFF, 0xBE, 0xD7, 0x5C, 0x89, 0x22, 0x11, 0x90, 0x6B
	.byte 0x93, 0x71, 0x98, 0xFD, 0x8E, 0x43, 0x79, 0xA6, 0x21, 0x08, 0xB4, 0x49, 0x62, 0x25, 0x1E, 0xF6
	.byte 0x40, 0xB3, 0x40, 0xC0, 0x51, 0x5A, 0x5E, 0x26, 0xAA, 0xC7, 0xB6, 0xE9, 0x5D, 0x10, 0x2F, 0xD6
	.byte 0x53, 0x14, 0x44, 0x02, 0x81, 0xE6, 0xA1, 0xD8, 0xC8, 0xFB, 0xD3, 0xE7, 0xE6, 0xCD, 0xE1, 0x21
	.byte 0xD6, 0x07, 0x37, 0xC3, 0x87, 0x0D, 0xD5, 0xF4, 0xED, 0x14, 0x5A, 0x45, 0x05, 0xE9, 0xE3, 0xA9
	.byte 0xF8, 0xA3, 0xEF, 0xFC, 0xD9, 0x02, 0x6F, 0x67, 0x8A, 0x4C, 0x2A, 0x8D, 0x42, 0x39, 0xFA, 0xFF
	.byte 0x81, 0xF6, 0x71, 0x87, 0x22, 0x61, 0x9D, 0x6D, 0x0C, 0x38, 0xE5, 0xFD, 0x44, 0xEA, 0xBE, 0xA4
	.byte 0xA9, 0xCF, 0xDE, 0x4B, 0x60, 0x4B, 0xBB, 0xF6, 0x70, 0xBC, 0xBF, 0xBE, 0xC6, 0x7E, 0x9B, 0x28
	.byte 0xFA, 0x27, 0xA1, 0xEA, 0x85, 0x30, 0xEF, 0xD4, 0x05, 0x1D, 0x88, 0x04, 0x39, 0xD0, 0xD4, 0xD9
	.byte 0xE5, 0x99, 0xDB, 0xE6, 0xF8, 0x7C, 0xA2, 0x1F, 0x65, 0x56, 0xAC, 0xC4, 0x44, 0x22, 0x29, 0xF4
	.byte 0x97, 0xFF, 0x2A, 0x43, 0xA7, 0x23, 0x94, 0xAB, 0x39, 0xA0, 0x93, 0xFC, 0xC3, 0x59, 0x5B, 0x65
	.byte 0x92, 0xCC, 0x0C, 0x8F, 0x7D, 0xF4, 0xEF, 0xFF, 0xD1, 0x5D, 0x84, 0x85, 0x4F, 0x7E, 0xA8, 0x6F
	.byte 0xE0, 0xE6, 0x2C, 0xFE, 0x14, 0x43, 0x01, 0xA3, 0xA1, 0x11, 0x08, 0x4E, 0x82, 0x7E, 0x53, 0xF7
	.byte 0x35, 0xF2, 0x3A, 0xBD, 0xBB, 0xD2, 0xD7, 0x2A, 0x91, 0xD3, 0x86, 0xEB
	.global ov15_020E5C3C
ov15_020E5C3C:
	.byte 0x80
	.global ov15_020E5C3D
ov15_020E5C3D:
	.byte 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.global ov15_020E5C7C
ov15_020E5C7C:
	.byte 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00
	.global ov15_020E5C94
ov15_020E5C94:
	.byte 0x42, 0x45, 0x38, 0x4A, 0x00, 0x00, 0x00, 0x00
	.global ov15_020E5C9C
ov15_020E5C9C:
	.byte 0x54, 0x44, 0x36, 0x45
	.byte 0x66, 0x79, 0x61, 0x63, 0x58, 0x75, 0x53, 0x64, 0x37, 0x47, 0x52, 0x62, 0x00, 0x00, 0x00, 0x00
	.global ov15_020E5CB0
ov15_020E5CB0:
	.byte 0x00, 0x00, 0x00, 0x00
	.global ov15_020E5CB4
ov15_020E5CB4:
	.byte 0x00, 0x00, 0x00, 0x00
	.global ov15_020E5CB8
ov15_020E5CB8:
	.byte 0x00, 0x00, 0x00, 0x00
	.global ov15_020E5CBC
ov15_020E5CBC:
	.byte 0x5B, 0x90, 0xB3, 0x8F
	.byte 0xED, 0x2F, 0x82, 0xB9, 0x82, 0xA2, 0x82, 0xB6, 0x82, 0xE5, 0x82, 0xA4, 0x5D, 0x82, 0xC9, 0x83
	.byte 0x5F, 0x83, 0x45, 0x83, 0x93, 0x83, 0x8D, 0x81, 0x5B, 0x83, 0x68, 0x82, 0xC5, 0x82, 0xAB, 0x82
	.byte 0xDC, 0x82, 0xB9, 0x82, 0xF1, 0x82, 0xC5, 0x82, 0xB5, 0x82, 0xBD, 0x81, 0x42, 0x00, 0x00, 0x00
	.global ov15_020E5CF0
ov15_020E5CF0:
	.byte 0x82, 0x76, 0x82, 0x89, 0x81, 0x7C, 0x82, 0x65, 0x82, 0x89, 0x83, 0x52, 0x83, 0x6C, 0x83, 0x4E
	.byte 0x83, 0x56, 0x83, 0x87, 0x83, 0x93, 0x82, 0xAA, 0x5B, 0x8D, 0xAC, 0x2F, 0x82, 0xB1, 0x5D, 0x82
	.byte 0xDD, 0x5B, 0x8D, 0x87, 0x2F, 0x82, 0xA0, 0x5D, 0x82, 0xC1, 0x82, 0xC4, 0x82, 0xA2, 0x82, 0xE9
	.byte 0x82, 0xA9, 0x0A, 0x83, 0x54, 0x81, 0x5B, 0x83, 0x72, 0x83, 0x58, 0x82, 0xAA, 0x5B, 0x92, 0xE2
	.byte 0x8E, 0x7E, 0x2F, 0x82, 0xC4, 0x82, 0xA2, 0x82, 0xB5, 0x5D, 0x82, 0xB5, 0x82, 0xC4, 0x82, 0xA2
	.byte 0x82, 0xE9, 0x82, 0xBD, 0x82, 0xDF, 0x82, 0xC9, 0x0A, 0x5B, 0x90, 0xDA, 0x91, 0xB1, 0x2F, 0x82
	.byte 0xB9, 0x82, 0xC2, 0x82, 0xBC, 0x82, 0xAD, 0x5D, 0x82, 0xC5, 0x82, 0xAB, 0x82, 0xDC, 0x82, 0xB9
	.byte 0x82, 0xF1, 0x81, 0x42, 0x0A, 0x82, 0xB5, 0x82, 0xCE, 0x82, 0xE7, 0x82, 0xAD, 0x5B, 0x91, 0xD2
	.byte 0x2F, 0x82, 0xDC, 0x5D, 0x82, 0xC1, 0x82, 0xC4, 0x82, 0xE2, 0x82, 0xE8, 0x5B, 0x92, 0xBC, 0x2F
	.byte 0x82, 0xC8, 0x82, 0xA8, 0x5D, 0x82, 0xB5, 0x82, 0xC4, 0x82, 0xAD, 0x82, 0xBE, 0x82, 0xB3, 0x82
	.byte 0xA2, 0x81, 0x42, 0x00
	.global ov15_020E5D94
ov15_020E5D94:
	.byte 0x82, 0xA8, 0x5B, 0x8B, 0x71, 0x97, 0x6C, 0x2F, 0x82, 0xAB, 0x82, 0xE1
	.byte 0x82, 0xAD, 0x82, 0xB3, 0x82, 0xDC, 0x5D, 0x82, 0xCC, 0x82, 0x76, 0x82, 0x89, 0x81, 0x7C, 0x82
	.byte 0x65, 0x82, 0x89, 0x83, 0x52, 0x83, 0x6C, 0x83, 0x4E, 0x83, 0x56, 0x83, 0x87, 0x83, 0x93, 0x82
	.byte 0x68, 0x82, 0x63, 0x82, 0xCD, 0x0A, 0x5B, 0x92, 0xB7, 0x2F, 0x82, 0xC8, 0x82, 0xAA, 0x5D, 0x82
	.byte 0xA2, 0x5B, 0x8A, 0xD4, 0x2F, 0x82, 0xA0, 0x82, 0xA2, 0x82, 0xBE, 0x5D, 0x5B, 0x8E, 0x67, 0x97
	.byte 0x70, 0x2F, 0x82, 0xB5, 0x82, 0xE6, 0x82, 0xA4, 0x5D, 0x82, 0xB3, 0x82, 0xEA, 0x82, 0xC8, 0x82
	.byte 0xA9, 0x82, 0xC1, 0x82, 0xBD, 0x82, 0xBD, 0x82, 0xDF, 0x0A, 0x5B, 0x8D, 0xED, 0x8F, 0x9C, 0x2F
	.byte 0x82, 0xB3, 0x82, 0xAD, 0x82, 0xB6, 0x82, 0xE5, 0x5D, 0x82, 0xB3, 0x82, 0xEA, 0x82, 0xDC, 0x82
	.byte 0xB5, 0x82, 0xBD, 0x81, 0x42, 0x0A, 0x5B, 0x8F, 0xDA, 0x2F, 0x82, 0xAD, 0x82, 0xED, 0x5D, 0x82
	.byte 0xB5, 0x82, 0xAD, 0x82, 0xCD, 0x83, 0x4B, 0x83, 0x43, 0x83, 0x68, 0x83, 0x75, 0x83, 0x62, 0x83
	.byte 0x4E, 0x82, 0xF0, 0x82, 0xB2, 0x5B, 0x97, 0x97, 0x2F, 0x82, 0xE7, 0x82, 0xF1, 0x5D, 0x82, 0xAD
	.byte 0x82, 0xBE, 0x82, 0xB3, 0x82, 0xA2, 0x81, 0x42, 0x00, 0x00, 0x00, 0x00
	.global ov15_020E5E4C
ov15_020E5E4C:
	.byte 0x82, 0xB1, 0x82, 0xCC
	.byte 0x83, 0x5C, 0x83, 0x74, 0x83, 0x67, 0x82, 0xCC, 0x0A, 0x82, 0x76, 0x82, 0x89, 0x81, 0x7C, 0x82
	.byte 0x65, 0x82, 0x89, 0x83, 0x52, 0x83, 0x6C, 0x83, 0x4E, 0x83, 0x56, 0x83, 0x87, 0x83, 0x93, 0x83
	.byte 0x54, 0x81, 0x5B, 0x83, 0x72, 0x83, 0x58, 0x82, 0xCD, 0x0A, 0x5B, 0x8F, 0x49, 0x97, 0xB9, 0x2F
	.byte 0x82, 0xB5, 0x82, 0xE3, 0x82, 0xA4, 0x82, 0xE8, 0x82, 0xE5, 0x82, 0xA4, 0x5D, 0x82, 0xB5, 0x82
	.byte 0xDC, 0x82, 0xB5, 0x82, 0xBD, 0x81, 0x42, 0x0A, 0x82, 0xB2, 0x5B, 0x97, 0x98, 0x97, 0x70, 0x2F
	.byte 0x82, 0xE8, 0x82, 0xE6, 0x82, 0xA4, 0x5D, 0x82, 0xA0, 0x82, 0xE8, 0x82, 0xAA, 0x82, 0xC6, 0x82
	.byte 0xA4, 0x82, 0xB2, 0x82, 0xB4, 0x82, 0xA2, 0x82, 0xDC, 0x82, 0xB5, 0x82, 0xBD, 0x81, 0x42, 0x00
	.global ov15_020E5EC0
ov15_020E5EC0:
	.byte 0x5B, 0x91, 0x8A, 0x8E, 0xE8, 0x2F, 0x82, 0xA0, 0x82, 0xA2, 0x82, 0xC4, 0x5D, 0x82, 0xA9, 0x82
	.byte 0xE7, 0x82, 0xCC, 0x5B, 0x89, 0x9E, 0x93, 0x9A, 0x2F, 0x82, 0xA8, 0x82, 0xA4, 0x82, 0xC6, 0x82
	.byte 0xA4, 0x5D, 0x82, 0xAA, 0x82, 0xA0, 0x82, 0xE8, 0x82, 0xDC, 0x82, 0xB9, 0x82, 0xF1, 0x81, 0x42
	.byte 0x0A, 0x5B, 0x8A, 0xF9, 0x2F, 0x82, 0xB7, 0x82, 0xC5, 0x5D, 0x82, 0xC9, 0x5B, 0x91, 0x8A, 0x8E
	.byte 0xE8, 0x2F, 0x82, 0xA0, 0x82, 0xA2, 0x82, 0xC4, 0x5D, 0x82, 0xAA, 0x82, 0x76, 0x82, 0x89, 0x81
	.byte 0x7C, 0x82, 0x65, 0x82, 0x89, 0x83, 0x52, 0x83, 0x6C, 0x83, 0x4E, 0x83, 0x56, 0x83, 0x87, 0x83
	.byte 0x93, 0x82, 0xC9, 0x0A, 0x5B, 0x90, 0xDA, 0x91, 0xB1, 0x2F, 0x82, 0xB9, 0x82, 0xC2, 0x82, 0xBC
	.byte 0x82, 0xAD, 0x5D, 0x82, 0xB5, 0x82, 0xC4, 0x82, 0xA2, 0x82, 0xC8, 0x82, 0xA2, 0x82, 0xA9, 0x81
	.byte 0x41, 0x5B, 0x91, 0x8A, 0x8E, 0xE8, 0x2F, 0x82, 0xA0, 0x82, 0xA2, 0x82, 0xC4, 0x5D, 0x82, 0xCC
	.byte 0x5B, 0x97, 0x46, 0x92, 0x42, 0x2F, 0x82, 0xC6, 0x82, 0xE0, 0x82, 0xBE, 0x82, 0xBF, 0x5D, 0x83
	.byte 0x8A, 0x83, 0x58, 0x83, 0x67, 0x82, 0xA9, 0x82, 0xE7, 0x0A, 0x5B, 0x93, 0x6F, 0x98, 0x5E, 0x2F
	.byte 0x82, 0xC6, 0x82, 0xA4, 0x82, 0xEB, 0x82, 0xAD, 0x5D, 0x82, 0xAA, 0x82, 0xC8, 0x82, 0xAD, 0x82
	.byte 0xC8, 0x82, 0xC1, 0x82, 0xBD, 0x5B, 0x89, 0xC2, 0x94, 0x5C, 0x90, 0xAB, 0x2F, 0x82, 0xA9, 0x82
	.byte 0xCC, 0x82, 0xA4, 0x82, 0xB9, 0x82, 0xA2, 0x5D, 0x82, 0xAA, 0x82, 0xA0, 0x82, 0xE8, 0x82, 0xDC
	.byte 0x82, 0xB7, 0x81, 0x42, 0x00, 0x00, 0x00, 0x00
	.global ov15_020E5FA8
ov15_020E5FA8:
	.byte 0x5B, 0x91, 0x8A, 0x8E, 0xE8, 0x2F, 0x82, 0xA0
	.byte 0x82, 0xA2, 0x82, 0xC4, 0x5D, 0x82, 0xA9, 0x82, 0xE7, 0x82, 0xCC, 0x5B, 0x89, 0x9E, 0x93, 0x9A
	.byte 0x2F, 0x82, 0xA8, 0x82, 0xA4, 0x82, 0xC6, 0x82, 0xA4, 0x5D, 0x82, 0xAA, 0x82, 0xC8, 0x82, 0xAD
	.byte 0x82, 0xC8, 0x82, 0xE8, 0x82, 0xDC, 0x82, 0xB5, 0x82, 0xBD, 0x81, 0x42, 0x00, 0x00, 0x00, 0x00
	.global ov15_020E5FE0
ov15_020E5FE0:
	.byte 0x5B, 0x91, 0x8A, 0x8E, 0xE8, 0x2F, 0x82, 0xA0, 0x82, 0xA2, 0x82, 0xC4, 0x5D, 0x82, 0xA9, 0x82
	.byte 0xE7, 0x82, 0xCC, 0x5B, 0x89, 0x9E, 0x93, 0x9A, 0x2F, 0x82, 0xA8, 0x82, 0xA4, 0x82, 0xC6, 0x82
	.byte 0xA4, 0x5D, 0x82, 0xAA, 0x82, 0xA0, 0x82, 0xE8, 0x82, 0xDC, 0x82, 0xB9, 0x82, 0xF1, 0x81, 0x42
	.byte 0x00, 0x00, 0x00, 0x00
	.global ov15_020E6014
ov15_020E6014:
	.byte 0x82, 0x76, 0x82, 0x89, 0x81, 0x7C, 0x82, 0x65, 0x82, 0x89, 0x83, 0x52
	.byte 0x83, 0x6C, 0x83, 0x4E, 0x83, 0x56, 0x83, 0x87, 0x83, 0x93, 0x82, 0xC9, 0x0A, 0x5B, 0x90, 0xDA
	.byte 0x91, 0xB1, 0x2F, 0x82, 0xB9, 0x82, 0xC2, 0x82, 0xBC, 0x82, 0xAD, 0x5D, 0x82, 0xC5, 0x82, 0xAB
	.byte 0x82, 0xDC, 0x82, 0xB9, 0x82, 0xF1, 0x81, 0x42, 0x0A, 0x82, 0x76, 0x82, 0x89, 0x81, 0x7C, 0x82
	.byte 0x65, 0x82, 0x89, 0x83, 0x52, 0x83, 0x6C, 0x83, 0x4E, 0x83, 0x56, 0x83, 0x87, 0x83, 0x93, 0x5B
	.byte 0x90, 0xDD, 0x92, 0xE8, 0x2F, 0x82, 0xB9, 0x82, 0xC1, 0x82, 0xC4, 0x82, 0xA2, 0x5D, 0x82, 0xC5
	.byte 0x0A, 0x5B, 0x90, 0xDA, 0x91, 0xB1, 0x90, 0xE6, 0x2F, 0x82, 0xB9, 0x82, 0xC2, 0x82, 0xBC, 0x82
	.byte 0xAD, 0x82, 0xB3, 0x82, 0xAB, 0x5D, 0x82, 0xCC, 0x5B, 0x90, 0xDD, 0x92, 0xE8, 0x2F, 0x82, 0xB9
	.byte 0x82, 0xC1, 0x82, 0xC4, 0x82, 0xA2, 0x5D, 0x82, 0xF0, 0x82, 0xB2, 0x5B, 0x8A, 0x6D, 0x94, 0x46
	.byte 0x2F, 0x82, 0xA9, 0x82, 0xAD, 0x82, 0xC9, 0x82, 0xF1, 0x5D, 0x82, 0xAD, 0x82, 0xBE, 0x82, 0xB3
	.byte 0x82, 0xA2, 0x81, 0x42, 0x00, 0x00, 0x00, 0x00
	.global ov15_020E60B8
ov15_020E60B8:
	.byte 0x82, 0x76, 0x82, 0x89, 0x81, 0x7C, 0x82, 0x65
	.byte 0x82, 0x89, 0x83, 0x52, 0x83, 0x6C, 0x83, 0x4E, 0x83, 0x56, 0x83, 0x87, 0x83, 0x93, 0x82, 0xC9
	.byte 0x0A, 0x5B, 0x90, 0xDA, 0x91, 0xB1, 0x2F, 0x82, 0xB9, 0x82, 0xC2, 0x82, 0xBC, 0x82, 0xAD, 0x5D
	.byte 0x82, 0xC5, 0x82, 0xAB, 0x82, 0xDC, 0x82, 0xB9, 0x82, 0xF1, 0x81, 0x42, 0x0A, 0x5B, 0x8F, 0xDA
	.byte 0x2F, 0x82, 0xAD, 0x82, 0xED, 0x5D, 0x82, 0xB5, 0x82, 0xAD, 0x82, 0xCD, 0x83, 0x4B, 0x83, 0x43
	.byte 0x83, 0x68, 0x83, 0x75, 0x83, 0x62, 0x83, 0x4E, 0x82, 0xF0, 0x0A, 0x82, 0xB2, 0x5B, 0x97, 0x97
	.byte 0x2F, 0x82, 0xE7, 0x82, 0xF1, 0x5D, 0x82, 0xAD, 0x82, 0xBE, 0x82, 0xB3, 0x82, 0xA2, 0x81, 0x42
	.byte 0x00, 0x00, 0x00, 0x00
	.global ov15_020E6124
ov15_020E6124:
	.byte 0x83, 0x41, 0x83, 0x4E, 0x83, 0x5A, 0x83, 0x58, 0x83, 0x7C, 0x83, 0x43
	.byte 0x83, 0x93, 0x83, 0x67, 0x82, 0xAA, 0x5B, 0x8D, 0xAC, 0x2F, 0x82, 0xB1, 0x5D, 0x82, 0xDD, 0x5B
	.byte 0x8D, 0x87, 0x2F, 0x82, 0xA0, 0x5D, 0x82, 0xC1, 0x82, 0xC4, 0x82, 0xA2, 0x82, 0xE9, 0x82, 0xBD
	.byte 0x82, 0xDF, 0x0A, 0x5B, 0x90, 0xDA, 0x91, 0xB1, 0x2F, 0x82, 0xB9, 0x82, 0xC2, 0x82, 0xBC, 0x82
	.byte 0xAD, 0x5D, 0x82, 0xC5, 0x82, 0xAB, 0x82, 0xDC, 0x82, 0xB9, 0x82, 0xF1, 0x81, 0x42, 0x0A, 0x82
	.byte 0xB5, 0x82, 0xCE, 0x82, 0xE7, 0x82, 0xAD, 0x5B, 0x91, 0xD2, 0x2F, 0x82, 0xDC, 0x5D, 0x82, 0xC1
	.byte 0x82, 0xC4, 0x82, 0xE2, 0x82, 0xE8, 0x5B, 0x92, 0xBC, 0x2F, 0x82, 0xC8, 0x82, 0xA8, 0x5D, 0x82
	.byte 0xB5, 0x82, 0xC4, 0x82, 0xAD, 0x82, 0xBE, 0x82, 0xB3, 0x82, 0xA2, 0x81, 0x42, 0x00, 0x00, 0x00
	.global ov15_020E61A0
ov15_020E61A0:
	.byte 0x83, 0x41, 0x83, 0x4E, 0x83, 0x5A, 0x83, 0x58, 0x83, 0x7C, 0x83, 0x43, 0x83, 0x93, 0x83, 0x67
	.byte 0x82, 0xAA, 0x5B, 0x8C, 0xA9, 0x2F, 0x82, 0xDD, 0x5D, 0x82, 0xC2, 0x82, 0xA9, 0x82, 0xE8, 0x82
	.byte 0xDC, 0x82, 0xB9, 0x82, 0xF1, 0x81, 0x42, 0x0A, 0x83, 0x41, 0x83, 0x4E, 0x83, 0x5A, 0x83, 0x58
	.byte 0x83, 0x7C, 0x83, 0x43, 0x83, 0x93, 0x83, 0x67, 0x82, 0xC9, 0x5B, 0x8B, 0xDF, 0x2F, 0x82, 0xBF
	.byte 0x82, 0xA9, 0x5D, 0x82, 0xC3, 0x82, 0xA2, 0x82, 0xC4, 0x0A, 0x82, 0xE0, 0x82, 0xA4, 0x5B, 0x88
	.byte 0xEA, 0x93, 0x78, 0x2F, 0x82, 0xA2, 0x82, 0xBF, 0x82, 0xC7, 0x5D, 0x82, 0xA8, 0x82, 0xBD, 0x82
	.byte 0xDF, 0x82, 0xB5, 0x82, 0xAD, 0x82, 0xBE, 0x82, 0xB3, 0x82, 0xA2, 0x81, 0x42, 0x00, 0x00, 0x00
	.global ov15_020E6210
ov15_020E6210:
	.byte 0x5B, 0x90, 0xDA, 0x91, 0xB1, 0x2F, 0x82, 0xB9, 0x82, 0xC2, 0x82, 0xBC, 0x82, 0xAD, 0x5D, 0x82
	.byte 0xC5, 0x82, 0xAB, 0x82, 0xE9, 0x83, 0x41, 0x83, 0x4E, 0x83, 0x5A, 0x83, 0x58, 0x83, 0x7C, 0x83
	.byte 0x43, 0x83, 0x93, 0x83, 0x67, 0x82, 0xAA, 0x0A, 0x5B, 0x8C, 0xA9, 0x2F, 0x82, 0xDD, 0x5D, 0x82
	.byte 0xC2, 0x82, 0xA9, 0x82, 0xE8, 0x82, 0xDC, 0x82, 0xB9, 0x82, 0xF1, 0x81, 0x42, 0x0A, 0x82, 0x76
	.byte 0x82, 0x89, 0x81, 0x7C, 0x82, 0x65, 0x82, 0x89, 0x83, 0x52, 0x83, 0x6C, 0x83, 0x4E, 0x83, 0x56
	.byte 0x83, 0x87, 0x83, 0x93, 0x5B, 0x90, 0xDD, 0x92, 0xE8, 0x2F, 0x82, 0xB9, 0x82, 0xC1, 0x82, 0xC4
	.byte 0x82, 0xA2, 0x5D, 0x82, 0xC5, 0x0A, 0x5B, 0x90, 0xDA, 0x91, 0xB1, 0x90, 0xE6, 0x2F, 0x82, 0xB9
	.byte 0x82, 0xC2, 0x82, 0xBC, 0x82, 0xAD, 0x82, 0xB3, 0x82, 0xAB, 0x5D, 0x82, 0xCC, 0x5B, 0x90, 0xDD
	.byte 0x92, 0xE8, 0x2F, 0x82, 0xB9, 0x82, 0xC1, 0x82, 0xC4, 0x82, 0xA2, 0x5D, 0x82, 0xF0, 0x82, 0xB2
	.byte 0x5B, 0x8A, 0x6D, 0x94, 0x46, 0x2F, 0x82, 0xA9, 0x82, 0xAD, 0x82, 0xC9, 0x82, 0xF1, 0x5D, 0x82
	.byte 0xAD, 0x82, 0xBE, 0x82, 0xB3, 0x82, 0xA2, 0x81, 0x42, 0x00, 0x00, 0x00
	.global ov15_020E62BC
ov15_020E62BC:
	.byte 0x82, 0x76, 0x82, 0x89
	.byte 0x81, 0x7C, 0x82, 0x65, 0x82, 0x89, 0x83, 0x52, 0x83, 0x6C, 0x83, 0x4E, 0x83, 0x56, 0x83, 0x87
	.byte 0x83, 0x93, 0x82, 0xC9, 0x0A, 0x5B, 0x90, 0xDA, 0x91, 0xB1, 0x2F, 0x82, 0xB9, 0x82, 0xC2, 0x82
	.byte 0xBC, 0x82, 0xAD, 0x5D, 0x82, 0xC5, 0x82, 0xAB, 0x82, 0xDC, 0x82, 0xB9, 0x82, 0xF1, 0x81, 0x42
	.byte 0x0A, 0x5B, 0x8F, 0xDA, 0x2F, 0x82, 0xAD, 0x82, 0xED, 0x5D, 0x82, 0xB5, 0x82, 0xAD, 0x82, 0xCD
	.byte 0x83, 0x4B, 0x83, 0x43, 0x83, 0x68, 0x83, 0x75, 0x83, 0x62, 0x83, 0x4E, 0x82, 0xF0, 0x0A, 0x82
	.byte 0xB2, 0x5B, 0x97, 0x97, 0x2F, 0x82, 0xE7, 0x82, 0xF1, 0x5D, 0x82, 0xAD, 0x82, 0xBE, 0x82, 0xB3
	.byte 0x82, 0xA2, 0x81, 0x42, 0x00, 0x00, 0x00, 0x00
	.global ov15_020E6328
ov15_020E6328:
	.byte 0x82, 0x76, 0x82, 0x89, 0x81, 0x7C, 0x82, 0x65
	.byte 0x82, 0x89, 0x83, 0x52, 0x83, 0x6C, 0x83, 0x4E, 0x83, 0x56, 0x83, 0x87, 0x83, 0x93, 0x82, 0xAA
	.byte 0x5B, 0x8D, 0xAC, 0x2F, 0x82, 0xB1, 0x5D, 0x82, 0xDD, 0x5B, 0x8D, 0x87, 0x2F, 0x82, 0xA0, 0x5D
	.byte 0x82, 0xC1, 0x82, 0xC4, 0x82, 0xA2, 0x82, 0xE9, 0x82, 0xA9, 0x0A, 0x83, 0x54, 0x81, 0x5B, 0x83
	.byte 0x72, 0x83, 0x58, 0x82, 0xAA, 0x5B, 0x92, 0xE2, 0x8E, 0x7E, 0x2F, 0x82, 0xC4, 0x82, 0xA2, 0x82
	.byte 0xB5, 0x5D, 0x82, 0xB5, 0x82, 0xC4, 0x82, 0xA2, 0x82, 0xE9, 0x82, 0xBD, 0x82, 0xDF, 0x82, 0xC9
	.byte 0x0A, 0x5B, 0x90, 0xDA, 0x91, 0xB1, 0x2F, 0x82, 0xB9, 0x82, 0xC2, 0x82, 0xBC, 0x82, 0xAD, 0x5D
	.byte 0x82, 0xC5, 0x82, 0xAB, 0x82, 0xDC, 0x82, 0xB9, 0x82, 0xF1, 0x81, 0x42, 0x0A, 0x82, 0xB5, 0x82
	.byte 0xCE, 0x82, 0xE7, 0x82, 0xAD, 0x5B, 0x91, 0xD2, 0x2F, 0x82, 0xDC, 0x5D, 0x82, 0xC1, 0x82, 0xC4
	.byte 0x82, 0xE2, 0x82, 0xE8, 0x5B, 0x92, 0xBC, 0x2F, 0x82, 0xC8, 0x82, 0xA8, 0x5D, 0x82, 0xB5, 0x82
	.byte 0xC4, 0x82, 0xAD, 0x82, 0xBE, 0x82, 0xB3, 0x82, 0xA2, 0x81, 0x42, 0x00
	.global ov15_020E63CC
ov15_020E63CC:
	.byte 0x83, 0x47, 0x83, 0x89
	.byte 0x81, 0x5B, 0x82, 0xAA, 0x5B, 0x94, 0xAD, 0x90, 0xB6, 0x2F, 0x82, 0xCD, 0x82, 0xC1, 0x82, 0xB9
	.byte 0x82, 0xA2, 0x5D, 0x82, 0xB5, 0x82, 0xBD, 0x82, 0xBD, 0x82, 0xDF, 0x81, 0x41, 0x0A, 0x82, 0x76
	.byte 0x82, 0x89, 0x81, 0x7C, 0x82, 0x65, 0x82, 0x89, 0x83, 0x52, 0x83, 0x6C, 0x83, 0x4E, 0x83, 0x56
	.byte 0x83, 0x87, 0x83, 0x93, 0x82, 0xCC, 0x5B, 0x8B, 0x40, 0x94, 0x5C, 0x2F, 0x82, 0xAB, 0x82, 0xCC
	.byte 0x82, 0xA4, 0x5D, 0x82, 0xF0, 0x0A, 0x5B, 0x8E, 0x67, 0x97, 0x70, 0x2F, 0x82, 0xB5, 0x82, 0xE6
	.byte 0x82, 0xA4, 0x5D, 0x82, 0xC5, 0x82, 0xAB, 0x82, 0xDC, 0x82, 0xB9, 0x82, 0xF1, 0x81, 0x42, 0x0A
	.byte 0x5B, 0x93, 0x64, 0x8C, 0xB9, 0x2F, 0x82, 0xC5, 0x82, 0xF1, 0x82, 0xB0, 0x82, 0xF1, 0x5D, 0x82
	.byte 0xF0, 0x5B, 0x90, 0xD8, 0x2F, 0x82, 0xAB, 0x5D, 0x82, 0xC1, 0x82, 0xC4, 0x82, 0xE2, 0x82, 0xE8
	.byte 0x5B, 0x92, 0xBC, 0x2F, 0x82, 0xC8, 0x82, 0xA8, 0x5D, 0x82, 0xB5, 0x82, 0xC4, 0x82, 0xAD, 0x82
	.byte 0xBE, 0x82, 0xB3, 0x82, 0xA2, 0x81, 0x42, 0x00
	.global ov15_020E6468
ov15_020E6468:
	.byte 0x5B, 0x92, 0xCA, 0x90, 0x4D, 0x2F, 0x82, 0xC2
	.byte 0x82, 0xA4, 0x82, 0xB5, 0x82, 0xF1, 0x5D, 0x83, 0x47, 0x83, 0x89, 0x81, 0x5B, 0x82, 0xAA, 0x5B
	.byte 0x94, 0xAD, 0x90, 0xB6, 0x2F, 0x82, 0xCD, 0x82, 0xC1, 0x82, 0xB9, 0x82, 0xA2, 0x5D, 0x82, 0xB5
	.byte 0x82, 0xDC, 0x82, 0xB5, 0x82, 0xBD, 0x81, 0x42, 0x00, 0x00, 0x00, 0x00
	.global ov15_020E649C
ov15_020E649C:
	.byte 0x83, 0x5F, 0x83, 0x45
	.byte 0x83, 0x93, 0x83, 0x8D, 0x81, 0x5B, 0x83, 0x68, 0x82, 0xC9, 0x5B, 0x8E, 0xB8, 0x94, 0x73, 0x2F
	.byte 0x82, 0xB5, 0x82, 0xC1, 0x82, 0xCF, 0x82, 0xA2, 0x5D, 0x82, 0xB5, 0x82, 0xDC, 0x82, 0xB5, 0x82
	.byte 0xBD, 0x81, 0x42, 0x00
	.global ov15_020E64C4
ov15_020E64C4:
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00
	.global ov15_020E64D4
ov15_020E64D4:
	.byte 0xFF, 0xFF, 0xFF, 0xFF, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.global ov15_020E64E0
ov15_020E64E0:
	.byte 0x14, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0xEC, 0x0E, 0x0E, 0x02, 0x00, 0x0F, 0x0E, 0x02
	.byte 0x64, 0x07, 0x0E, 0x02, 0xF4, 0x06, 0x0E, 0x02, 0x10, 0x9D, 0x02, 0x02, 0x64, 0x1B, 0x04, 0x02
	.byte 0xEC, 0x1B, 0x04, 0x02, 0x58, 0x1C, 0x04, 0x02, 0x0C, 0x9D, 0x02, 0x02, 0xC8, 0x1C, 0x04, 0x02
	.byte 0x24, 0x07, 0x0E, 0x02, 0xAC, 0x08, 0x0E, 0x02, 0xBC, 0x20, 0x04, 0x02, 0x68, 0x09, 0x0E, 0x02
	.byte 0xD4, 0x1D, 0x04, 0x02, 0xF8, 0x1D, 0x04, 0x02, 0x1C, 0x1E, 0x04, 0x02, 0x40, 0x1E, 0x04, 0x02
	.byte 0x64, 0x1E, 0x04, 0x02, 0x88, 0x1E, 0x04, 0x02
	.global ov15_020E6558
ov15_020E6558:
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x78, 0x11, 0x0E, 0x02, 0x8C, 0x11, 0x0E, 0x02
	.byte 0x1C, 0x0F, 0x0E, 0x02, 0x28, 0x21, 0x04, 0x02, 0x10, 0x9D, 0x02, 0x02, 0x64, 0x1B, 0x04, 0x02
	.byte 0xEC, 0x1B, 0x04, 0x02, 0x58, 0x1C, 0x04, 0x02, 0x0C, 0x9D, 0x02, 0x02, 0xC8, 0x1C, 0x04, 0x02
	.byte 0x24, 0x21, 0x04, 0x02, 0x74, 0x0F, 0x0E, 0x02, 0xBC, 0x20, 0x04, 0x02, 0x78, 0x0F, 0x0E, 0x02
	.byte 0xD4, 0x1D, 0x04, 0x02, 0xF8, 0x1D, 0x04, 0x02, 0x1C, 0x1E, 0x04, 0x02, 0x40, 0x1E, 0x04, 0x02
	.byte 0x64, 0x1E, 0x04, 0x02, 0x88, 0x1E, 0x04, 0x02
	.global ov15_020E65C8
ov15_020E65C8:
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x77, 0x6D, 0x64, 0x6E, 0x5F, 0x77, 0x30, 0x30, 0x2E, 0x70, 0x61, 0x63, 0x00, 0x00, 0x00, 0x00
	.byte 0x77, 0x6D, 0x64, 0x6E, 0x5F, 0x62, 0x30, 0x33, 0x2E, 0x70, 0x61, 0x63, 0x00, 0x00, 0x00, 0x00
	.byte 0x77, 0x6D, 0x64, 0x6E, 0x5F, 0x77, 0x30, 0x35, 0x2E, 0x70, 0x61, 0x63, 0x00, 0x00, 0x00, 0x00
	.byte 0x77, 0x6D, 0x64, 0x6E, 0x5F, 0x62, 0x30, 0x34, 0x2E, 0x70, 0x61, 0x63, 0x00, 0x00, 0x00, 0x00
	.byte 0x77, 0x6D, 0x64, 0x6E, 0x5F, 0x62, 0x30, 0x35, 0x2E, 0x70, 0x61, 0x63, 0x00, 0x00, 0x00, 0x00
	.byte 0x77, 0x6D, 0x64, 0x6E, 0x5F, 0x77, 0x30, 0x31, 0x2E, 0x70, 0x61, 0x63, 0x00, 0x00, 0x00, 0x00
	.byte 0x77, 0x6D, 0x64, 0x6E, 0x5F, 0x77, 0x30, 0x32, 0x2E, 0x70, 0x61, 0x63, 0x00, 0x00, 0x00, 0x00
	.byte 0x77, 0x6D, 0x64, 0x6E, 0x5F, 0x62, 0x30, 0x36, 0x2E, 0x70, 0x61, 0x63, 0x00, 0x00, 0x00, 0x00
	.byte 0x77, 0x6D, 0x64, 0x6E, 0x5F, 0x67, 0x30, 0x30, 0x2E, 0x70, 0x61, 0x63, 0x00, 0x00, 0x00, 0x00
	.byte 0x77, 0x6D, 0x64, 0x6E, 0x5F, 0x77, 0x30, 0x33, 0x2E, 0x70, 0x61, 0x63, 0x00, 0x00, 0x00, 0x00
	.byte 0x77, 0x6D, 0x64, 0x6E, 0x5F, 0x62, 0x67, 0x30, 0x30, 0x2E, 0x70, 0x61, 0x63, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x98, 0x9E, 0x02, 0x02, 0xA8, 0x2D, 0x0E, 0x02
	.byte 0x10, 0x15, 0x0E, 0x02, 0x88, 0x19, 0x0E, 0x02, 0x74, 0x25, 0x0E, 0x02, 0x08, 0xB2, 0x02, 0x02
	.byte 0x2C, 0x26, 0x0E, 0x02, 0x44, 0x27, 0x0E, 0x02, 0x74, 0x27, 0x0E, 0x02, 0x04, 0xB2, 0x02, 0x02
	.byte 0x00, 0xB2, 0x02, 0x02, 0xF8, 0xB1, 0x02, 0x02, 0xF0, 0xB1, 0x02, 0x02, 0xE8, 0xB1, 0x02, 0x02
	.byte 0xE0, 0xB1, 0x02, 0x02, 0x20, 0xB3, 0x02, 0x02, 0x10, 0xB3, 0x02, 0x02, 0x04, 0xB3, 0x02, 0x02
	.byte 0xF8, 0xB2, 0x02, 0x02, 0xE8, 0xB2, 0x02, 0x02, 0xD8, 0xB2, 0x02, 0x02, 0xC8, 0xB2, 0x02, 0x02
	.byte 0xBC, 0xB2, 0x02, 0x02, 0xB0, 0xB2, 0x02, 0x02, 0xD8, 0xB1, 0x02, 0x02, 0xD0, 0xB1, 0x02, 0x02
	.byte 0xC8, 0xB1, 0x02, 0x02
	.global ov15_020E6704
ov15_020E6704:
	.byte 0x5B, 0x92, 0xCA, 0x90, 0x4D, 0x2F, 0x82, 0xC2, 0x82, 0xA4, 0x82, 0xB5
	.byte 0x82, 0xF1, 0x5D, 0x82, 0xF0, 0x5B, 0x92, 0x86, 0x92, 0x66, 0x2F, 0x82, 0xBF, 0x82, 0xE3, 0x82
	.byte 0xA4, 0x82, 0xBE, 0x82, 0xF1, 0x5D, 0x82, 0xB5, 0x82, 0xC4, 0x82, 0xA2, 0x82, 0xDC, 0x82, 0xB7
	.byte 0x81, 0x42, 0x00, 0x00
	.global ov15_020E6734
ov15_020E6734:
	.byte 0x82, 0x76, 0x82, 0x89, 0x81, 0x7C, 0x82, 0x65, 0x82, 0x89, 0x83, 0x52
	.byte 0x83, 0x6C, 0x83, 0x4E, 0x83, 0x56, 0x83, 0x87, 0x83, 0x93, 0x82, 0xA9, 0x82, 0xE7, 0x0A, 0x5B
	.byte 0x90, 0xD8, 0x92, 0x66, 0x2F, 0x82, 0xB9, 0x82, 0xC2, 0x82, 0xBE, 0x82, 0xF1, 0x5D, 0x82, 0xB5
	.byte 0x82, 0xC4, 0x82, 0xA2, 0x82, 0xDC, 0x82, 0xB7, 0x81, 0x42, 0x00, 0x00
	.global ov15_020E676C
ov15_020E676C:
	.byte 0x2F, 0x64, 0x61, 0x74
	.byte 0x61, 0x5F, 0x69, 0x7A, 0x2F, 0x70, 0x69, 0x63, 0x32, 0x64, 0x2F, 0x4D, 0x54, 0x53, 0x57, 0x66
	.byte 0x44, 0x4C, 0x2E, 0x53, 0x50, 0x46, 0x5F, 0x00
	.global ov15_020E6788
ov15_020E6788:
	.byte 0x83, 0x66, 0x81, 0x5B, 0x83, 0x5E, 0x82, 0xF0
	.byte 0x5B, 0x8D, 0x58, 0x90, 0x56, 0x2F, 0x82, 0xB1, 0x82, 0xA4, 0x82, 0xB5, 0x82, 0xF1, 0x5D, 0x82
	.byte 0xB5, 0x82, 0xDC, 0x82, 0xB7, 0x82, 0xA9, 0x81, 0x48, 0x00, 0x00, 0x00
	.global ov15_020E67AC
ov15_020E67AC:
	.byte 0x82, 0x76, 0x82, 0x89
	.byte 0x81, 0x7C, 0x82, 0x65, 0x82, 0x89, 0x83, 0x52, 0x83, 0x6C, 0x83, 0x4E, 0x83, 0x56, 0x83, 0x87
	.byte 0x83, 0x93, 0x82, 0xC9, 0x0A, 0x5B, 0x90, 0xDA, 0x91, 0xB1, 0x2F, 0x82, 0xB9, 0x82, 0xC2, 0x82
	.byte 0xBC, 0x82, 0xAD, 0x5D, 0x82, 0xB5, 0x82, 0xDC, 0x82, 0xB7, 0x82, 0xA9, 0x81, 0x48, 0x00, 0x00
	.global ov15_020E67E0
ov15_020E67E0:
	.byte 0x5B, 0x90, 0xDA, 0x91, 0xB1, 0x92, 0x86, 0x2F, 0x82, 0xB9, 0x82, 0xC2, 0x82, 0xBC, 0x82, 0xAD
	.byte 0x82, 0xBF, 0x82, 0xE3, 0x82, 0xA4, 0x5D, 0x82, 0xC5, 0x82, 0xB7, 0x81, 0x45, 0x81, 0x45, 0x81
	.byte 0x45, 0x00, 0x00, 0x00
	.global ov15_020E6804
ov15_020E6804:
	.byte 0x82, 0x76, 0x82, 0x89, 0x81, 0x7C, 0x82, 0x65, 0x82, 0x89, 0x83, 0x52
	.byte 0x83, 0x6C, 0x83, 0x4E, 0x83, 0x56, 0x83, 0x87, 0x83, 0x93, 0x82, 0xC9, 0x0A, 0x5B, 0x90, 0xDA
	.byte 0x91, 0xB1, 0x2F, 0x82, 0xB9, 0x82, 0xC2, 0x82, 0xBC, 0x82, 0xAD, 0x5D, 0x82, 0xB5, 0x82, 0xC4
	.byte 0x82, 0xA2, 0x82, 0xDC, 0x82, 0xB7, 0x81, 0x42, 0x0A, 0x82, 0xB5, 0x82, 0xCE, 0x82, 0xE7, 0x82
	.byte 0xAD, 0x82, 0xA8, 0x5B, 0x91, 0xD2, 0x2F, 0x82, 0xDC, 0x5D, 0x82, 0xBF, 0x82, 0xAD, 0x82, 0xBE
	.byte 0x82, 0xB3, 0x82, 0xA2, 0x81, 0x42, 0x00, 0x00
	.global ov15_020E6858
ov15_020E6858:
	.byte 0x83, 0x5F, 0x83, 0x45, 0x83, 0x93, 0x83, 0x8D
	.byte 0x81, 0x5B, 0x83, 0x68, 0x82, 0xAA, 0x5B, 0x8A, 0xAE, 0x97, 0xB9, 0x2F, 0x82, 0xA9, 0x82, 0xF1
	.byte 0x82, 0xE8, 0x82, 0xE5, 0x82, 0xA4, 0x5D, 0x82, 0xB5, 0x82, 0xDC, 0x82, 0xB5, 0x82, 0xBD, 0x81
	.byte 0x42, 0x00, 0x00, 0x00
	.global ov15_020E6884
ov15_020E6884:
	.byte 0x83, 0x66, 0x81, 0x5B, 0x83, 0x5E, 0x82, 0xAA, 0x5B, 0x8D, 0x58, 0x90
	.byte 0x56, 0x2F, 0x82, 0xB1, 0x82, 0xA4, 0x82, 0xB5, 0x82, 0xF1, 0x5D, 0x82, 0xB3, 0x82, 0xEA, 0x82
	.byte 0xDC, 0x82, 0xB5, 0x82, 0xBD, 0x81, 0x42, 0x00
	.global ov15_020E68A8
ov15_020E68A8:
	.byte 0x5B, 0x90, 0x56, 0x2F, 0x82, 0xA0, 0x82, 0xBD
	.byte 0x82, 0xE7, 0x5D, 0x82, 0xB5, 0x82, 0xA2, 0x83, 0x66, 0x81, 0x5B, 0x83, 0x5E, 0x82, 0xCD, 0x82
	.byte 0xA0, 0x82, 0xE8, 0x82, 0xDC, 0x82, 0xB9, 0x82, 0xF1, 0x82, 0xC5, 0x82, 0xB5, 0x82, 0xBD, 0x81
	.byte 0x42, 0x00, 0x00, 0x00
	.global ov15_020E68D4
ov15_020E68D4:
	.byte 0x5B, 0x92, 0xCA, 0x90, 0x4D, 0x2F, 0x82, 0xC2, 0x82, 0xA4, 0x82, 0xB5
	.byte 0x82, 0xF1, 0x5D, 0x82, 0xC5, 0x82, 0xAB, 0x82, 0xDC, 0x82, 0xB9, 0x82, 0xF1, 0x82, 0xC5, 0x82
	.byte 0xB5, 0x82, 0xBD, 0x81, 0x42, 0x00, 0x00, 0x00
	.global ov15_020E68F8
ov15_020E68F8:
	.byte 0x5B, 0x92, 0xCA, 0x90, 0x4D, 0x2F, 0x82, 0xC2
	.byte 0x82, 0xA4, 0x82, 0xB5, 0x82, 0xF1, 0x5D, 0x82, 0xF0, 0x5B, 0x92, 0x86, 0x92, 0x66, 0x2F, 0x82
	.byte 0xBF, 0x82, 0xE3, 0x82, 0xA4, 0x82, 0xBE, 0x82, 0xF1, 0x5D, 0x82, 0xB5, 0x82, 0xDC, 0x82, 0xB5
	.byte 0x82, 0xBD, 0x81, 0x42, 0x00, 0x00, 0x00, 0x00
	.global ov15_020E6928
ov15_020E6928:
	.byte 0x82, 0x76, 0x82, 0x89, 0x81, 0x7C, 0x82, 0x65
	.byte 0x82, 0x89, 0x83, 0x52, 0x83, 0x6C, 0x83, 0x4E, 0x83, 0x56, 0x83, 0x87, 0x83, 0x93, 0x82, 0xA9
	.byte 0x82, 0xE7, 0x0A, 0x5B, 0x90, 0xD8, 0x92, 0x66, 0x2F, 0x82, 0xB9, 0x82, 0xC2, 0x82, 0xBE, 0x82
	.byte 0xF1, 0x5D, 0x82, 0xB5, 0x82, 0xDC, 0x82, 0xB5, 0x82, 0xBD, 0x81, 0x42, 0x00, 0x00, 0x00, 0x00
	.global ov15_020E6960
ov15_020E6960:
	.byte 0x83, 0x5A, 0x81, 0x5B, 0x83, 0x75, 0x82, 0xB5, 0x82, 0xC4, 0x5B, 0x8F, 0x49, 0x97, 0xB9, 0x2F
	.byte 0x82, 0xB5, 0x82, 0xE3, 0x82, 0xA4, 0x82, 0xE8, 0x82, 0xE5, 0x82, 0xA4, 0x5D, 0x82, 0xB5, 0x82
	.byte 0xDC, 0x82, 0xB7, 0x82, 0xA9, 0x81, 0x48, 0x00
	.global ov15_020E6988
ov15_020E6988:
	.byte 0x83, 0x5F, 0x83, 0x45, 0x83, 0x93, 0x83, 0x8D
	.byte 0x81, 0x5B, 0x83, 0x68, 0x82, 0xB9, 0x82, 0xB8, 0x82, 0xC9, 0x0A, 0x5B, 0x8F, 0x49, 0x97, 0xB9
	.byte 0x2F, 0x82, 0xB5, 0x82, 0xE3, 0x82, 0xA4, 0x82, 0xE8, 0x82, 0xE5, 0x82, 0xA4, 0x5D, 0x82, 0xB5
	.byte 0x82, 0xDC, 0x82, 0xB7, 0x82, 0xA9, 0x81, 0x48, 0x00, 0x00, 0x00, 0x00
	.global ov15_020E69BC
ov15_020E69BC:
	.byte 0x83, 0x5F, 0x83, 0x45
	.byte 0x83, 0x93, 0x83, 0x8D, 0x81, 0x5B, 0x83, 0x68, 0x82, 0xB5, 0x82, 0xC4, 0x82, 0xA2, 0x82, 0xDC
	.byte 0x82, 0xB7, 0x81, 0x42, 0x00, 0x00, 0x00, 0x00
	.global ov15_020E69D8
ov15_020E69D8:
	.byte 0x83, 0x5F, 0x83, 0x45, 0x83, 0x93, 0x83, 0x8D
	.byte 0x81, 0x5B, 0x83, 0x68, 0x82, 0xB5, 0x82, 0xC4, 0x82, 0xA2, 0x82, 0xDC, 0x82, 0xB7, 0x81, 0x42
	.byte 0x00, 0x00, 0x00, 0x00
	.global ov15_020E69F4
ov15_020E69F4:
	.byte 0x83, 0x5F, 0x83, 0x45, 0x83, 0x93, 0x83, 0x8D, 0x81, 0x5B, 0x83, 0x68
	.byte 0x5B, 0x92, 0x86, 0x2F, 0x82, 0xBF, 0x82, 0xE3, 0x82, 0xA4, 0x5D, 0x82, 0xC5, 0x82, 0xB7, 0x81
	.byte 0x42, 0x0A, 0x82, 0xB5, 0x82, 0xCE, 0x82, 0xE7, 0x82, 0xAD, 0x82, 0xA8, 0x5B, 0x91, 0xD2, 0x2F
	.byte 0x82, 0xDC, 0x5D, 0x82, 0xBF, 0x82, 0xAD, 0x82, 0xBE, 0x82, 0xB3, 0x82, 0xA2, 0x81, 0x42, 0x00
	.global ov15_020E6A30
ov15_020E6A30:
	.byte 0x5B, 0x92, 0xCA, 0x90, 0x4D, 0x2F, 0x82, 0xC2, 0x82, 0xA4, 0x82, 0xB5, 0x82, 0xF1, 0x5D, 0x82
	.byte 0xC5, 0x82, 0xAB, 0x82, 0xDC, 0x82, 0xB9, 0x82, 0xF1, 0x82, 0xC5, 0x82, 0xB5, 0x82, 0xBD, 0x81
	.byte 0x42, 0x00, 0x00, 0x00
	.global ov15_020E6A54
ov15_020E6A54:
	.byte 0x5B, 0x96, 0x7B, 0x91, 0xCC, 0x2F, 0x82, 0xD9, 0x82, 0xF1, 0x82, 0xBD
	.byte 0x82, 0xA2, 0x5D, 0x82, 0xCC, 0x82, 0x76, 0x82, 0x89, 0x81, 0x7C, 0x82, 0x65, 0x82, 0x89, 0x83
	.byte 0x86, 0x81, 0x5B, 0x83, 0x55, 0x81, 0x5B, 0x5B, 0x8F, 0xEE, 0x95, 0xF1, 0x2F, 0x82, 0xB6, 0x82
	.byte 0xE5, 0x82, 0xA4, 0x82, 0xD9, 0x82, 0xA4, 0x5D, 0x82, 0xAA, 0x0A, 0x5B, 0x8F, 0xC1, 0x2F, 0x82
	.byte 0xAB, 0x5D, 0x82, 0xA6, 0x82, 0xBD, 0x5B, 0x89, 0xC2, 0x94, 0x5C, 0x90, 0xAB, 0x2F, 0x82, 0xA9
	.byte 0x82, 0xCC, 0x82, 0xA4, 0x82, 0xB9, 0x82, 0xA2, 0x5D, 0x82, 0xAA, 0x82, 0xA0, 0x82, 0xE8, 0x82
	.byte 0xDC, 0x82, 0xB7, 0x81, 0x42, 0x0A, 0x82, 0x76, 0x82, 0x89, 0x81, 0x7C, 0x82, 0x65, 0x82, 0x89
	.byte 0x83, 0x52, 0x83, 0x6C, 0x83, 0x4E, 0x83, 0x56, 0x83, 0x87, 0x83, 0x93, 0x5B, 0x90, 0xDD, 0x92
	.byte 0xE8, 0x2F, 0x82, 0xB9, 0x82, 0xC1, 0x82, 0xC4, 0x82, 0xA2, 0x5D, 0x82, 0xC5, 0x0A, 0x5B, 0x90
	.byte 0xDA, 0x91, 0xB1, 0x90, 0xE6, 0x2F, 0x82, 0xB9, 0x82, 0xC2, 0x82, 0xBC, 0x82, 0xAD, 0x82, 0xB3
	.byte 0x82, 0xAB, 0x5D, 0x82, 0xCC, 0x5B, 0x90, 0xDD, 0x92, 0xE8, 0x2F, 0x82, 0xB9, 0x82, 0xC1, 0x82
	.byte 0xC4, 0x82, 0xA2, 0x5D, 0x82, 0xF0, 0x82, 0xB2, 0x5B, 0x8A, 0x6D, 0x94, 0x46, 0x2F, 0x82, 0xA9
	.byte 0x82, 0xAD, 0x82, 0xC9, 0x82, 0xF1, 0x5D, 0x82, 0xAD, 0x82, 0xBE, 0x82, 0xB3, 0x82, 0xA2, 0x81
	.byte 0x42, 0x00, 0x00, 0x00
	.global ov15_020E6B24
ov15_020E6B24:
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x77, 0x6D, 0x64, 0x6E
	.byte 0x5F, 0x62, 0x67, 0x30, 0x32, 0x2E, 0x70, 0x61, 0x63, 0x00, 0x00, 0x00, 0x77, 0x6D, 0x64, 0x6E
	.byte 0x5F, 0x62, 0x67, 0x30, 0x31, 0x2E, 0x70, 0x61, 0x63, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x9C, 0x9E, 0x02, 0x02, 0xFC, 0x31, 0x0E, 0x02, 0xF8, 0x2D, 0x0E, 0x02
	.byte 0x40, 0x2E, 0x0E, 0x02, 0xD0, 0x30, 0x0E, 0x02, 0x08, 0xB2, 0x02, 0x02, 0xF4, 0x30, 0x0E, 0x02
	.byte 0x98, 0x31, 0x0E, 0x02, 0xDC, 0x31, 0x0E, 0x02, 0x04, 0xB2, 0x02, 0x02, 0x00, 0xB2, 0x02, 0x02
	.byte 0xF8, 0xB1, 0x02, 0x02, 0xF0, 0xB1, 0x02, 0x02, 0xE8, 0xB1, 0x02, 0x02, 0xE0, 0xB1, 0x02, 0x02
	.byte 0x20, 0xB3, 0x02, 0x02, 0x10, 0xB3, 0x02, 0x02, 0x04, 0xB3, 0x02, 0x02, 0xF8, 0xB2, 0x02, 0x02
	.byte 0xE8, 0xB2, 0x02, 0x02, 0xD8, 0xB2, 0x02, 0x02, 0xC8, 0xB2, 0x02, 0x02, 0xBC, 0xB2, 0x02, 0x02
	.byte 0xB0, 0xB2, 0x02, 0x02, 0xD8, 0xB1, 0x02, 0x02, 0xD0, 0xB1, 0x02, 0x02, 0xC8, 0xB1, 0x02, 0x02
	.byte 0x84, 0x0C, 0x0E, 0x02
	.global ov15_020E6BD4
ov15_020E6BD4:
	.byte 0x2F, 0x64, 0x61, 0x74, 0x61, 0x5F, 0x69, 0x7A, 0x2F, 0x70, 0x69, 0x63
	.byte 0x32, 0x64, 0x2F, 0x4D, 0x54, 0x53, 0x57, 0x66, 0x44, 0x4C, 0x2E, 0x53, 0x50, 0x46, 0x5F, 0x00
	.global ov15_020E6BF0
ov15_020E6BF0:
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x77, 0x6D, 0x75, 0x5F, 0x74, 0x30, 0x30, 0x2E
	.byte 0x70, 0x61, 0x63, 0x00, 0x77, 0x6D, 0x75, 0x5F, 0x74, 0x30, 0x30, 0x2E, 0x70, 0x61, 0x63, 0x00
	.byte 0x77, 0x66, 0x5F, 0x6C, 0x65, 0x76, 0x65, 0x6C, 0x2E, 0x70, 0x61, 0x63, 0x00, 0x00, 0x00, 0x00
	.byte 0x77, 0x6D, 0x75, 0x70, 0x5F, 0x77, 0x30, 0x36, 0x2E, 0x70, 0x61, 0x63, 0x00, 0x00, 0x00, 0x00
	.byte 0x77, 0x63, 0x5F, 0x6C, 0x65, 0x76, 0x65, 0x6C, 0x2E, 0x70, 0x61, 0x63, 0x00, 0x00, 0x00, 0x00
	.byte 0x77, 0x6D, 0x75, 0x70, 0x5F, 0x77, 0x30, 0x34, 0x2E, 0x70, 0x61, 0x63, 0x00, 0x00, 0x00, 0x00
	.byte 0x77, 0x6D, 0x75, 0x70, 0x5F, 0x77, 0x30, 0x34, 0x2E, 0x70, 0x61, 0x63, 0x00, 0x00, 0x00, 0x00
	.byte 0x77, 0x6D, 0x75, 0x70, 0x5F, 0x62, 0x67, 0x30, 0x30, 0x2E, 0x70, 0x61, 0x63, 0x00, 0x00, 0x00
	.byte 0x77, 0x6D, 0x75, 0x70, 0x5F, 0x62, 0x67, 0x30, 0x30, 0x2E, 0x70, 0x61, 0x63, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0xA0, 0x9E, 0x02, 0x02, 0xC0, 0x3B, 0x0E, 0x02
	.byte 0xA8, 0xB2, 0x02, 0x02, 0xA4, 0xB2, 0x02, 0x02, 0x10, 0x3A, 0x0E, 0x02, 0x08, 0xB2, 0x02, 0x02
	.byte 0x9C, 0x3A, 0x0E, 0x02, 0x14, 0x3B, 0x0E, 0x02, 0x6C, 0x3B, 0x0E, 0x02, 0x04, 0xB2, 0x02, 0x02
	.byte 0x00, 0xB2, 0x02, 0x02, 0xF8, 0xB1, 0x02, 0x02, 0xF0, 0xB1, 0x02, 0x02, 0xE8, 0xB1, 0x02, 0x02
	.byte 0xE0, 0xB1, 0x02, 0x02, 0x94, 0xB2, 0x02, 0x02, 0x84, 0xB2, 0x02, 0x02, 0x78, 0xB2, 0x02, 0x02
	.byte 0x6C, 0xB2, 0x02, 0x02, 0x5C, 0xB2, 0x02, 0x02, 0x4C, 0xB2, 0x02, 0x02, 0x3C, 0xB2, 0x02, 0x02
	.byte 0x30, 0xB2, 0x02, 0x02, 0x24, 0xB2, 0x02, 0x02, 0x10, 0x32, 0x0E, 0x02, 0xD0, 0xB1, 0x02, 0x02
	.byte 0xC8, 0xB1, 0x02, 0x02
	.global ov15_020E6D04
ov15_020E6D04:
	.byte 0x2F, 0x64, 0x61, 0x74, 0x61, 0x5F, 0x69, 0x7A, 0x2F, 0x70, 0x69, 0x63
	.byte 0x32, 0x64, 0x2F, 0x53, 0x54, 0x53, 0x57, 0x69, 0x63, 0x2E, 0x53, 0x50, 0x46, 0x5F, 0x00, 0x00
	.global ov15_020E6D20
ov15_020E6D20:
	.byte 0x25, 0x64, 0x00, 0x00
	.global ov15_020E6D24
ov15_020E6D24:
	.byte 0x25, 0x73, 0x0A, 0x81, 0x6D, 0x83, 0x47, 0x83, 0x89, 0x81, 0x5B, 0x83
	.byte 0x52, 0x81, 0x5B, 0x83, 0x68, 0x25, 0x73, 0x81, 0x6E, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00

	.bss
	.global ov15_020E6D40
ov15_020E6D40:
	.space 0x0C
	.global ov15_020E6D4C
ov15_020E6D4C:
	.space 0x04
	.global ov15_020E6D50
ov15_020E6D50:
	.space 0x04
	.global ov15_020E6D54
ov15_020E6D54:
	.space 0x18
	.global ov15_020E6D6C
ov15_020E6D6C:
	.space 0x18
	.global ov15_020E6D84
ov15_020E6D84:
	.space 0x08
	.global ov15_020E6D8C
ov15_020E6D8C:
	.space 0x04
	.global ov15_020E6D90
ov15_020E6D90:
	.space 0x18
	.global ov15_020E6DA8
ov15_020E6DA8:
	.space 0x08
	.global ov15_020E6DB0
ov15_020E6DB0:
	.space 0x08
	.global ov15_020E6DB8
ov15_020E6DB8:
	.space 0x18
	.global ov15_020E6DD0
ov15_020E6DD0:
	.space 0x4E
	.global ov15_020E6E1E
ov15_020E6E1E:
	.space 0x3A
	.global ov15_020E6E58
ov15_020E6E58:
	.space 0x0A
	.global ov15_020E6E62
ov15_020E6E62:
	.space 0x56
	.global ov15_020E6EB8
ov15_020E6EB8:
	.space 0xA0
	.global ov15_020E6F58
ov15_020E6F58:
	.space 0xA0
	.global ov15_020E6FF8
ov15_020E6FF8:
	.space 0xC0
	.global ov15_020E70B8
ov15_020E70B8:
	.space 0xC0
	.global ov15_020E7178
ov15_020E7178:
	.space 0xC0
	.global ov15_020E7238
ov15_020E7238:
	.space 0x2A
	.global ov15_020E7262
ov15_020E7262:
	.space 0x156
	.global ov15_020E73B8
ov15_020E73B8:
	.space 0x180
	.global ov15_020E7538
ov15_020E7538:
	.space 0x9C8
	.global ov15_020E7F00
ov15_020E7F00:
	.space 0x800
	.global ov15_020E8700
ov15_020E8700:
	.space 0x800
	.global ov15_020E8F00
ov15_020E8F00:
	.space 0x04
	.global ov15_020E8F04
ov15_020E8F04:
	.space 0x14
	.global ov15_020E8F18
ov15_020E8F18:
	.space 0x08
	.global ov15_020E8F20
ov15_020E8F20:
	.space 0x0C
	.global ov15_020E8F2C
ov15_020E8F2C:
	.space 0x04
	.global ov15_020E8F30
ov15_020E8F30:
	.space 0x08
	.global ov15_020E8F38
ov15_020E8F38:
	.space 0x14
	.global ov15_020E8F4C
ov15_020E8F4C:
	.space 0x04
	.global ov15_020E8F50
ov15_020E8F50:
	.space 0x14
	.global ov15_020E8F64
ov15_020E8F64:
	.space 0x1C
	.global ov15_020E8F80
ov15_020E8F80:
	.space 0x1C
	.global ov15_020E8F9C
ov15_020E8F9C:
	.space 0x48
	.global ov15_020E8FE4
ov15_020E8FE4:
	.space 0x1C
	.global ov15_020E9000
ov15_020E9000:
	.space 0x0C
	.global ov15_020E900C
ov15_020E900C:
	.space 0x05
	.global ov15_020E9011
ov15_020E9011:
	.space 0x01
	.global ov15_020E9012
ov15_020E9012:
	.space 0x04
	.global ov15_020E9016
ov15_020E9016:
	.space 0x02
	.global ov15_020E9018
ov15_020E9018:
	.space 0x08
	.global ov15_020E9020
ov15_020E9020:
	.space 0x20
	.global ov15_020E9040
ov15_020E9040:
	.space 0x08
	.global ov15_020E9048
ov15_020E9048:
	.space 0x08
	.global ov15_020E9050
ov15_020E9050:
	.space 0x08
	.global ov15_020E9058
ov15_020E9058:
	.space 0x04
	.global ov15_020E905C
ov15_020E905C:
	.space 0x14
	.global ov15_020E9070
ov15_020E9070:
	.space 0x1C
	.global ov15_020E908C
ov15_020E908C:
	.space 0x18
	.global ov15_020E90A4
ov15_020E90A4:
	.space 0x28
	.global ov15_020E90CC
ov15_020E90CC:
	.space 0x09
	.global ov15_020E90D5
ov15_020E90D5:
	.space 0x0B
	.global ov15_020E90E0
ov15_020E90E0:
	.space 0x0C
	.global ov15_020E90EC
ov15_020E90EC:
	.space 0x11
	.global ov15_020E90FD
ov15_020E90FD:
	.space 0x15
	.global ov15_020E9112
ov15_020E9112:
	.space 0x16
	.global ov15_020E9128
ov15_020E9128:
	.space 0x18
	.global ov15_020E9140
ov15_020E9140:
	.space 0x18
	.global ov15_020E9158
ov15_020E9158:
	.space 0x19
	.global ov15_020E9171
ov15_020E9171:
	.space 0x23
	.global ov15_020E9194
ov15_020E9194:
	.space 0x0C
	.global ov15_020E91A0
ov15_020E91A0:
	.space 0x34
	.global ov15_020E91D4
ov15_020E91D4:
	.space 0x5C
	.global ov15_020E9230
ov15_020E9230:
	.space 0x80
	.global ov15_020E92B0
ov15_020E92B0:
	.space 0x20
	.global ov15_020E92D0
ov15_020E92D0:
	.space 0x08
	.global ov15_020E92D8
ov15_020E92D8:
	.space 0x28
	.global ov15_020E9300
ov15_020E9300:
	.space 0x4160
	.global ov15_020ED460
ov15_020ED460:
	.space 0x04
	.global ov15_020ED464
ov15_020ED464:
	.space 0x04
	.global ov15_020ED468
ov15_020ED468:
	.space 0x04
	.global ov15_020ED46C
ov15_020ED46C:
	.space 0x04
	.global ov15_020ED470
ov15_020ED470:
	.space 0x30
	.global ov15_020ED4A0
ov15_020ED4A0:
	.space 0x04
	.global ov15_020ED4A4
ov15_020ED4A4:
	.space 0x20
	.global ov15_020ED4C4
ov15_020ED4C4:
	.space 0x08
	.global ov15_020ED4CC
ov15_020ED4CC:
	.space 0x08
	.global ov15_020ED4D4
ov15_020ED4D4:
	.space 0x04
	.global ov15_020ED4D8
ov15_020ED4D8:
	.space 0x04
	.global ov15_020ED4DC
ov15_020ED4DC:
	.space 0x18
	.global ov15_020ED4F4
ov15_020ED4F4:
	.space 0x08
	.global ov15_020ED4FC
ov15_020ED4FC:
	.space 0x30
	.global ov15_020ED52C
ov15_020ED52C:
	.space 0x38
	.global ov15_020ED564
ov15_020ED564:
	.space 0x104
	.global ov15_020ED668
ov15_020ED668:
	.space 0x08
	.global ov15_020ED670
ov15_020ED670:
	.space 0x14
	.global ov15_020ED684
ov15_020ED684:
	.space 0x170
	.global ov15_020ED7F4
ov15_020ED7F4:
	.space 0x08
	.global ov15_020ED7FC
ov15_020ED7FC:
	.space 0x0C
	.global ov15_020ED808
ov15_020ED808:
	.space 0x24
	.global ov15_020ED82C
ov15_020ED82C:
	.space 0x08
	.global ov15_020ED834
ov15_020ED834:
	.space 0x01
	.global ov15_020ED835
ov15_020ED835:
	.space 0x13
	.global ov15_020ED848
ov15_020ED848:
	.space 0x04
	.global ov15_020ED84C
ov15_020ED84C:
	.space 0x04
	.global ov15_020ED850
ov15_020ED850:
	.space 0x1FC
	.global ov15_020EDA4C
ov15_020EDA4C:
	.space 0x200
	.global ov15_020EDC4C
ov15_020EDC4C:
	.space 0x200
	.global ov15_020EDE4C
ov15_020EDE4C:
	.space 0x14
