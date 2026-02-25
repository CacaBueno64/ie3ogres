
	.include "/macros/function.inc"
	.include "/include/wirelessutil.inc"

    .text
	arm_func_start FUN_020463f4
FUN_020463f4: ; 0x020463F4
	stmfd sp!, {r4, lr}
	ldr r1, _02046410 ; =0x02090204
	mov r4, r0
	str r1, [r4]
	bl FUN_0204665c
	mov r0, r4
	ldmfd sp!, {r4, pc}
_02046410: .word unk_02090204
	arm_func_end FUN_020463f4

	arm_func_start FUN_02046414
FUN_02046414: ; 0x02046414
	stmfd sp!, {r4, lr}
	ldr r1, _02046438 ; =0x02090204
	mov r4, r0
	str r1, [r4]
	bl FUN_0204665c
	mov r0, r4
	bl _ZdlPv
	mov r0, r4
	ldmfd sp!, {r4, pc}
_02046438: .word unk_02090204
	arm_func_end FUN_02046414

	arm_func_start FUN_0204643c
FUN_0204643c: ; 0x0204643C
	stmfd sp!, {r3, r4, r5, lr}
	mov r4, r0
	mov r5, #0
	ldr r1, _020464EC ; =0x020B5BF8
	str r5, [r4, #0x58]
	str r5, [r4, #0x60]
	str r5, [r4, #0x5c]
	strb r5, [r4, #0x67]
	strb r5, [r4, #0x66]
	add r0, r4, #4
	strb r5, [r1]
	bl OS_GetOwnerInfo
	add r0, r4, #0x2bc
	bl OS_GetMacAddress
	ldr r0, _020464F0 ; =0x020901D0
	add r1, r4, #0x2e0
	ldr r0, [r0, #0x10]
	mov r2, #0x10
	bl MI_CpuCopy8
	add r0, r4, #0xc2
	ldr r1, _020464F4 ; =0x0209020C
	add r0, r0, #0x200
	bl sprintf
	mov r0, r5
	ldr r1, _020464F8 ; =0x0209AA60
	mov r2, #0x1e4
	bl MIi_CpuClearFast
	mov r0, r5
	ldr r1, _020464FC ; =0x0209E6C0
	mov r2, #0xf00
	bl MIi_CpuClearFast
	ldr r1, _02046500 ; =0x0209A10C
	ldr r0, _02046504 ; =0x0209A138
	str r5, [r1]
	str r5, [r0]
	strb r5, [r4, #0x88]
	mov r0, #0x78
	str r0, [r4, #0x78]
	str r0, [r4, #0x7c]
	add r0, r0, r0, lsl #1
	add r0, r0, #0x78
	add r0, r0, #4
	str r0, [r4, #0x90]
	ldmfd sp!, {r3, r4, r5, pc}
_020464EC: .word unk_020B5BF8
_020464F0: .word unk_020901D0
_020464F4: .word unk_0209020C
_020464F8: .word unk_0209AA60
_020464FC: .word unk_0209E6C0
_02046500: .word unk_0209A10C
_02046504: .word unk_0209A138
	arm_func_end FUN_0204643c

	arm_func_start FUN_02046508
FUN_02046508: ; 0x02046508
	stmfd sp!, {r4, r5, r6, r7, r8, lr}
	mov r7, r0
	mov r4, r3
	ldr r5, [r7, #0x78]
	ldr r3, [r7, #0x7c]
	sub r0, r4, #1
	mla r0, r3, r0, r5
	ldrb r12, [sp, #0x18]
	ldr r8, _020465EC ; =0x020A18A0
	mov r6, r1
	add r3, r0, #4
	ldr r1, _020465F0 ; =gAllocator
	mov r0, r8
	mov r5, r2
	strb r12, [r7, #0x65]
	str r3, [r7, #0x90]
	bl FUN_0203df88
	ldr r1, [sp, #0x20]
	mov r0, r8
	mov r3, r4
	ldr r2, [sp, #0x1c]
	bl FUN_0203e004
	mov r2, #0
	ldrb r1, [sp, #0x18]
	mov r4, r0
	strb r2, [r7, #0x97]
	cmp r1, #0
	strb r2, [r7, #0x96]
	strb r2, [r7, #0x95]
	strb r2, [r7, #0x94]
	bne _0204658C
	ldr r0, _020465F4 ; =FUN_02047150
	bl FUN_0203ea40
_0204658C:
	cmp r4, #0
	mvneq r0, #0
	ldmeqfd sp!, {r4, r5, r6, r7, r8, pc}
	mov r0, r5
	add r1, r7, #0x2f0
	mov r2, #0x11
	strb r6, [r7, #0x301]
	bl MI_CpuCopy8
	ldr r0, _020465F8 ; =0x020A0640
	add r1, r7, #0x2e0
	ldrb r0, [r0, #0x89]
	mov r2, #0x64
	cmp r0, #0
	movne r0, #1
	moveq r0, #0
	strb r0, [r7, #0x305]
	ldr r0, _020465EC ; =0x020A18A0
	bl FUN_0203e26c
	mov r0, r7
	bl FUN_020466a0
	mov r0, r7
	bl FUN_02046d60
	mov r0, #0
	ldmfd sp!, {r4, r5, r6, r7, r8, pc}
_020465EC: .word unk_020A18A0
_020465F0: .word gAllocator
_020465F4: .word FUN_02047150
_020465F8: .word unk_020A0640
	arm_func_end FUN_02046508

	arm_func_start FUN_020465fc
FUN_020465fc: ; 0x020465FC
	stmfd sp!, {r3, r4, r5, lr}
	ldr r4, _02046658 ; =0x020A18A0
	mov r5, r0
	mov r0, r4
	bl FUN_0203e1d0
	cmp r0, #0
	beq _02046630
_02046618:
	mov r0, r4
	bl FUN_0203e3f0
	mov r0, r4
	bl FUN_0203e52c
	cmp r0, #0
	beq _02046618
_02046630:
	mov r4, #0
	mov r0, r5
	mov r1, r4
	bl FUN_0204667c
	str r4, [r5, #0x60]
	str r4, [r5, #0x5c]
	strb r4, [r5, #0x67]
	strb r4, [r5, #0x66]
	strb r4, [r5, #0x65]
	ldmfd sp!, {r3, r4, r5, pc}
_02046658: .word unk_020A18A0
	arm_func_end FUN_020465fc

	arm_func_start FUN_0204665c
FUN_0204665c: ; 0x0204665C
	ldr r12, _02046664 ; =FUN_020465fc
	bx r12
_02046664: .word FUN_020465fc
	arm_func_end FUN_0204665c

	arm_func_start FUN_02046668
FUN_02046668: ; 0x02046668
	ldr r0, _02046674 ; =0x020A18A0
	ldr r12, _02046678 ; =FUN_0203e358
	bx r12
_02046674: .word unk_020A18A0
_02046678: .word FUN_0203e358
	arm_func_end FUN_02046668

	arm_func_start FUN_0204667c
FUN_0204667c: ; 0x0204667C
	str r1, [r0, #0x58]
	cmp r1, #0
	ldreq r0, _02046694 ; =0x0209A0F8
	moveq r1, #1
	streq r1, [r0]
	bx lr
_02046694: .word unk_0209A0F8
	arm_func_end FUN_0204667c

	arm_func_start FUN_02046698
FUN_02046698: ; 0x02046698
	ldr r0, [r0, #0x58]
	bx lr
	arm_func_end FUN_02046698

	arm_func_start FUN_020466a0
FUN_020466a0: ; 0x020466A0
	mov r3, #0
	mov r2, r3
_020466A8:
	add r1, r0, r3, lsl #2
	add r3, r3, #1
	str r2, [r1, #0x27c]
	cmp r3, #0x10
	blt _020466A8
	bx lr
	arm_func_end FUN_020466a0

	arm_func_start FUN_020466c0
FUN_020466c0: ; 0x020466C0
	stmfd sp!, {r3, lr}
	ldr r0, _020466E0 ; =0x020A18A0
	bl FUN_0203e208
	cmp r0, #0
	movlt r0, #0
	cmp r0, #3
	movgt r0, #3
	ldmfd sp!, {r3, pc}
_020466E0: .word unk_020A18A0
	arm_func_end FUN_020466c0

	arm_func_start FUN_020466e4
FUN_020466e4: ; 0x020466E4
	stmfd sp!, {r3, lr}
	bl FUN_02046698
	cmp r0, #0xb
	cmpne r0, #5
	moveq r0, #1
	movne r0, #0
	ldmfd sp!, {r3, pc}
	arm_func_end FUN_020466e4

	arm_func_start FUN_02046700
FUN_02046700: ; 0x02046700
	stmfd sp!, {r3, lr}
	bl FUN_02046698
	cmp r0, #0
	cmpne r0, #0xc
	movne r0, #1
	moveq r0, #0
	ldmfd sp!, {r3, pc}
	arm_func_end FUN_02046700

	arm_func_start FUN_0204671c
FUN_0204671c: ; 0x0204671C
	ldr r0, _02046728 ; =0x020A18A0
	ldr r12, _0204672C ; =FUN_0203E1FC
	bx r12
_02046728: .word unk_020A18A0
_0204672C: .word FUN_0203E1FC
	arm_func_end FUN_0204671c

	arm_func_start FUN_02046730
FUN_02046730: ; 0x02046730
	ldr r0, _0204673C ; =0x020A18A0
	ldr r12, _02046740 ; =FUN_0203E1DC
	bx r12
_0204673C: .word unk_020A18A0
_02046740: .word FUN_0203E1DC
	arm_func_end FUN_02046730

	arm_func_start FUN_02046744
FUN_02046744: ; 0x02046744
	stmfd sp!, {r3, lr}
	ldrb r1, [r0, #0x65]
	cmp r1, #0
	bne _02046788
	ldr r1, [r0, #0x5c]
	cmp r1, #1
	moveq r1, #1
	movne r1, #0
	cmp r1, #0
	ldreqh r0, [r0, #0x6a]
	ldmeqfd sp!, {r3, pc}
	ldr r0, _020467A0 ; =0x020A18A0
	bl FUN_0203e1e8
	orr r0, r0, #1
	mov r0, r0, lsl #0x10
	mov r0, r0, lsr #0x10
	ldmfd sp!, {r3, pc}
_02046788:
	ldr r0, _020467A0 ; =0x020A18A0
	bl FUN_0203e1f4
	orr r0, r0, #1
	mov r0, r0, lsl #0x10
	mov r0, r0, lsr #0x10
	ldmfd sp!, {r3, pc}
_020467A0: .word unk_020A18A0
	arm_func_end FUN_02046744

	arm_func_start FUN_020467a4
FUN_020467a4: ; 0x020467A4
	ldrh r0, [r0, #0x6c]
	bx lr
	arm_func_end FUN_020467a4

	arm_func_start FUN_020467ac
FUN_020467ac: ; 0x020467AC
	stmfd sp!, {r4, lr}
	mov r4, r0
	bl FUN_02046744
	strh r0, [r4, #0x6c]
	ldmfd sp!, {r4, pc}
	arm_func_end FUN_020467ac

	arm_func_start FUN_020467c0
FUN_020467c0: ; 0x020467C0
	stmfd sp!, {r4, lr}
	mov r4, r0
	bl FUN_02046744
	ldrh r1, [r4, #0x6c]
	cmp r0, r1
	movne r0, #1
	moveq r0, #0
	ldmfd sp!, {r4, pc}
	arm_func_end FUN_020467c0

	arm_func_start FUN_020467e0
FUN_020467e0: ; 0x020467E0
	stmfd sp!, {r3, lr}
	bl FUN_02046744
	mov r1, #0
	mov r3, r1
	mov r2, #1
_020467F4:
	tst r0, r2, lsl r3
	addne r1, r1, #1
	movne r1, r1, lsl #0x10
	add r3, r3, #1
	movne r1, r1, lsr #0x10
	cmp r3, #4
	blt _020467F4
	mov r0, r1
	ldmfd sp!, {r3, pc}
	arm_func_end FUN_020467e0

	arm_func_start FUN_02046818
FUN_02046818: ; 0x02046818
	stmfd sp!, {r4, lr}
	ldr r4, _02046844 ; =0x020B5BF8
	ldrb r0, [r4]
	cmp r0, #0
	ldmnefd sp!, {r4, pc}
	ldr r0, _02046848 ; =0x020A18A0
	mov r1, #0
	bl FUN_0203e214
	mov r0, #1
	strb r0, [r4]
	ldmfd sp!, {r4, pc}
_02046844: .word unk_020B5BF8
_02046848: .word unk_020A18A0
	arm_func_end FUN_02046818

	arm_func_start FUN_0204684c
FUN_0204684c: ; 0x0204684C
	stmfd sp!, {r4, lr}
	ldr r4, _02046878 ; =0x020B5BF8
	ldrb r0, [r4]
	cmp r0, #0
	ldmeqfd sp!, {r4, pc}
	ldr r0, _0204687C ; =0x020A18A0
	mov r1, #1
	bl FUN_0203e214
	mov r0, #0
	strb r0, [r4]
	ldmfd sp!, {r4, pc}
_02046878: .word unk_020B5BF8
_0204687C: .word unk_020A18A0
	arm_func_end FUN_0204684c

	arm_func_start FUN_02046880
FUN_02046880: ; 0x02046880
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, lr}
	mov r8, r0
	ldr r4, [r8, #0x60]
	ldr r3, _02046940 ; =0x020A3CA0
	mov r7, r1
	mov r6, r2
	cmp r4, #1
	ldrh r5, [r3, #0x66]
	mov r4, #0
	bne _02046924
	ldr r0, [r8, #0x58]
	cmp r0, #5
	beq _020468BC
	cmp r0, #0xb
	bne _02046938
_020468BC:
	ldr r0, _02046944 ; =0x0209A10C
	ldr r4, _02046948 ; =0x0209E6C0
	ldr r9, [r0]
	mov r8, #0x3c0
	and r1, r9, #3
	mla r0, r1, r8, r4
	mov r1, r7
	mov r2, r5
	bl MI_CpuCopy8
	and r0, r9, #3
	mla r3, r0, r8, r4
	mov r1, r6
	mov r2, r5
	add r0, r3, #0xf0
	bl MI_CpuCopy8
	ldr r2, _0204694C ; =0x0209A138
	mov r3, #0
	mov r0, r7
	mov r1, r5
	str r3, [r2]
	bl DC_FlushRange
	mov r0, r6
	mov r1, r5
	bl DC_FlushRange
	mov r4, #1
	b _02046938
_02046924:
	bl FUN_02046698
	cmp r0, #0xc
	bne _02046938
	mov r0, r8
	bl FUN_020465fc
_02046938:
	mov r0, r4
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
_02046940: .word unk_020A3CA0
_02046944: .word unk_0209A10C
_02046948: .word unk_0209E6C0
_0204694C: .word unk_0209A138
	arm_func_end FUN_02046880

	arm_func_start FUN_02046950
FUN_02046950: ; 0x02046950
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, lr}
	mov r4, r0
	ldr r2, [r4, #0x60]
	str r1, [sp]
	mov r7, r1
	cmp r2, #1
	mov r10, #0
	bne _020469F8
	ldr r0, [r4, #0x58]
	cmp r0, #5
	beq _02046984
	cmp r0, #0xb
	bne _02046A0C
_02046984:
	ldr r0, _02046A14 ; =0x0209A138
	ldr r1, _02046A18 ; =0x0209A10C
	ldr r10, [r0]
	mov r11, #0xf0
	cmp r10, #4
	ldr r0, _02046A14 ; =0x0209A138
	mov r9, #0
	movgt r10, #4
	str r9, [r0]
	ldr r8, [r1]
	mov r5, r11, lsl #2
	ldr r6, _02046A1C ; =0x0209E6C0
	mov r4, #0x3c0
	b _020469DC
_020469BC:
	sub r0, r8, r9
	and r1, r0, #3
	mla r0, r1, r4, r6
	mov r1, r7
	mov r2, r5
	bl MI_CpuCopy8
	add r7, r7, r5
	add r9, r9, #1
_020469DC:
	cmp r9, r10
	blt _020469BC
	mov r0, r11, lsl #2
	mul r1, r10, r0
	ldr r0, [sp]
	bl DC_FlushRange
	b _02046A0C
_020469F8:
	bl FUN_02046698
	cmp r0, #0xc
	bne _02046A0C
	mov r0, r4
	bl FUN_020465fc
_02046A0C:
	mov r0, r10
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_02046A14: .word unk_0209A138
_02046A18: .word unk_0209A10C
_02046A1C: .word unk_0209E6C0
	arm_func_end FUN_02046950

	arm_func_start FUN_02046a20
FUN_02046a20: ; 0x02046A20
	stmfd sp!, {r4, r5, r6, lr}
	mov r4, r1
	mov r6, r2
	mov r5, r0
	mov r0, r4
	mov r1, r6
	bl DC_FlushRange
	ldrb r0, [r5, #0x65]
	cmp r0, #0
	bne _02046AE4
	ldr r0, [r5, #0x5c]
	cmp r0, #1
	moveq r0, #1
	movne r0, #0
	cmp r0, #0
	beq _02046AC0
	mov r0, r5
	bl FUN_02046744
	ldr r6, _02046B08 ; =0x0209AA60
	strb r0, [r6]
	ldrb r0, [r5, #0x88]
	cmp r0, #0
	movne r0, #0
	strneb r0, [r6, #1]
	strneb r0, [r6, #2]
	ldmnefd sp!, {r4, r5, r6, pc}
	ldr r2, [r5, #0x78]
	ldr r1, _02046B0C ; =0x0209AA64
	mov r0, r2, lsr #2
	strb r0, [r6, #1]
	ldr r3, [r5, #0x7c]
	mov r0, r4
	mov r3, r3, lsr #2
	strb r3, [r6, #2]
	bl MI_CpuCopy8
	ldr r1, [r5, #0x78]
	mov r0, r6
	add r1, r1, #4
	bl DC_FlushRange
	ldmfd sp!, {r4, r5, r6, pc}
_02046AC0:
	ldr r6, _02046B08 ; =0x0209AA60
	ldr r2, [r5, #0x7c]
	mov r0, r4
	mov r1, r6
	bl MI_CpuCopy8
	ldr r1, [r5, #0x7c]
	mov r0, r6
	bl DC_FlushRange
	ldmfd sp!, {r4, r5, r6, pc}
_02046AE4:
	ldr r5, _02046B08 ; =0x0209AA60
	mov r0, r4
	mov r1, r5
	mov r2, r6
	bl MI_CpuCopy8
	mov r0, r5
	mov r1, r6
	bl DC_FlushRange
	ldmfd sp!, {r4, r5, r6, pc}
_02046B08: .word unk_0209AA60
_02046B0C: .word unk_0209AA64
	arm_func_end FUN_02046a20

	arm_func_start FUN_02046b10
FUN_02046b10: ; 0x02046B10
	cmp r2, #0
	ldrne r0, [r0, #0x78]
	add r3, r1, #2
	ldreq r0, [r0, #0x7c]
	mov r2, #0
	sub r1, r0, #2
	cmp r1, #0
	ble _02046B4C
_02046B30:
	ldrb r0, [r3], #1
	sub r1, r1, #1
	cmp r1, #0
	add r0, r2, r0
	mov r0, r0, lsl #0x10
	mov r2, r0, lsr #0x10
	bgt _02046B30
_02046B4C:
	mov r0, r2
	bx lr
	arm_func_end FUN_02046b10

	arm_func_start FUN_02046b54
FUN_02046b54: ; 0x02046B54
	stmfd sp!, {r4, lr}
	ldrb r2, [r0, #0x64]
	mov r4, r1
	bl FUN_02046b10
	strh r0, [r4]
	ldmfd sp!, {r4, pc}
	arm_func_end FUN_02046b54

	arm_func_start FUN_02046b6c
FUN_02046b6c: ; 0x02046B6C
	stmfd sp!, {r4, lr}
	mov r4, r1
	bl FUN_02046b10
	ldrh r1, [r4]
	mov r0, r0, lsl #0x10
	cmp r1, r0, lsr #16
	moveq r0, #1
	movne r0, #0
	ldmfd sp!, {r4, pc}
	arm_func_end FUN_02046b6c

	arm_func_start FUN_02046b90
FUN_02046b90: ; 0x02046B90
	ldrb r3, [r0, #0x65]
	sub r12, r1, #1
	sub r1, r2, #1
	bic r2, r1, #3
	bic r12, r12, #3
	cmp r3, #0
	add r1, r12, #4
	add r2, r2, #4
	bxne lr
	ldr r3, [r0, #0x5c]
	cmp r3, #1
	moveq r3, #1
	movne r3, #0
	cmp r3, #0
	bxeq lr
	ldr r3, [r0, #0x78]
	cmp r1, r3
	ldreq r3, [r0, #0x7c]
	cmpeq r2, r3
	bxeq lr
	mov r12, #1
	mov r3, #0x78
	str r1, [r0, #0x80]
	str r2, [r0, #0x84]
	strb r12, [r0, #0x88]
	str r3, [r0, #0x8c]
	bx lr
	arm_func_end FUN_02046b90

	arm_func_start FUN_02046bfc
FUN_02046bfc: ; 0x02046BFC
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	mov r6, r0
	mov r5, r1
	mov r4, r2
	mov r7, #1
	bl FUN_02046744
	ldr r1, _02046C58 ; =0x020A3CA0
	ldrh r1, [r1, #0x5e]
	sub r2, r1, #1
	mov r1, r7
	b _02046C38
_02046C28:
	tst r0, r1, lsl r2
	movne r7, r2
	bne _02046C40
	sub r2, r2, #1
_02046C38:
	cmp r2, #0
	bgt _02046C28
_02046C40:
	mla r0, r4, r7, r5
	add r0, r0, #4
	str r5, [r6, #0x78]
	str r4, [r6, #0x7c]
	str r0, [r6, #0x90]
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_02046C58: .word unk_020A3CA0
	arm_func_end FUN_02046bfc

	arm_func_start FUN_02046c5c
FUN_02046c5c: ; 0x02046C5C
	stmfd sp!, {r4, lr}
	mov r4, r0
	ldrb r1, [r4, #0x88]
	cmp r1, #0
	ldmeqfd sp!, {r4, pc}
	ldr r1, [r4, #0x80]
	ldr r2, [r4, #0x84]
	bl FUN_02046bfc
	ldr r1, [r4, #0x90]
	ldr r0, _02046C94 ; =0x020A18A0
	bl FUN_0203ea9c
	mov r0, #0
	strb r0, [r4, #0x88]
	ldmfd sp!, {r4, pc}
_02046C94: .word unk_020A18A0
	arm_func_end FUN_02046c5c

	arm_func_start FUN_02046c98
FUN_02046c98: ; 0x02046C98
	cmp r1, #0
	moveq r0, #0
	ldrne r3, [r0, #0x78]
	ldrne r2, [r0, #0x7c]
	subne r0, r1, #1
	mlane r0, r2, r0, r3
	bx lr
	arm_func_end FUN_02046c98

	arm_func_start FUN_02046cb4
FUN_02046cb4: ; 0x02046CB4
	stmfd sp!, {r4, lr}
	mov r4, r0
	cmp r1, #7
	str r1, [r4, #0x70]
	moveq r1, #0xf0
	moveq r2, #0x50
	beq _02046CDC
	bl FUN_02046ce8
	mov r1, r0
	mov r2, r1
_02046CDC:
	mov r0, r4
	bl FUN_02046b90
	ldmfd sp!, {r4, pc}
	arm_func_end FUN_02046cb4

	arm_func_start FUN_02046ce8
FUN_02046ce8: ; 0x02046CE8
	cmp r1, #0xc
	mov r0, #0x74
	addls pc, pc, r1, lsl #2
	b _02046D58
_02046CF8: ; jump table
	b _02046D58 ; case 0
	b _02046D58 ; case 1
	b _02046D2C ; case 2
	b _02046D34 ; case 3
	b _02046D3C ; case 4
	b _02046D44 ; case 5
	b _02046D48 ; case 6
	b _02046D58 ; case 7
	b _02046D4C ; case 8
	b _02046D58 ; case 9
	b _02046D58 ; case 10
	b _02046D58 ; case 11
	b _02046D54 ; case 12
_02046D2C:
	mov r0, #0x22
	b _02046D58
_02046D34:
	mov r0, #4
	b _02046D58
_02046D3C:
	mov r0, #0xc
	b _02046D58
_02046D44:
	mov r0, #4
_02046D48:
	b _02046D58
_02046D4C:
	mov r0, #0x18
	b _02046D58
_02046D54:
	mov r0, #0x30
_02046D58:
	add r0, r0, #4
	bx lr
	arm_func_end FUN_02046ce8

	arm_func_start FUN_02046d60
FUN_02046d60: ; 0x02046D60
	stmfd sp!, {r3, r4, r5, lr}
	mov r5, #0
	mov r4, #1
	ldr r2, _02046D98 ; =0x0209A0F8
	str r5, [r0, #0x5c]
	mov r1, r4
	str r5, [r2]
	bl FUN_0204667c
	ldr r0, _02046D9C ; =0x020A18A0
	mov r1, r4
	bl FUN_0203e214
	ldr r0, _02046DA0 ; =0x020B5BF8
	strb r5, [r0]
	ldmfd sp!, {r3, r4, r5, pc}
_02046D98: .word unk_0209A0F8
_02046D9C: .word unk_020A18A0
_02046DA0: .word unk_020B5BF8
	arm_func_end FUN_02046d60

	arm_func_start FUN_02046da4
FUN_02046da4: ; 0x02046DA4
	stmfd sp!, {r4, lr}
	mov r4, r0
	bl FUN_02046698
	cmp r0, #1
	ldmnefd sp!, {r4, pc}
	mov r2, #1
	mov r0, r4
	mov r1, #2
	str r2, [r4, #0x5c]
	bl FUN_0204667c
	ldmfd sp!, {r4, pc}
	arm_func_end FUN_02046da4

	arm_func_start FUN_02046dd0
FUN_02046dd0: ; 0x02046DD0
	stmfd sp!, {r4, lr}
	mov r4, r0
	bl FUN_02046698
	cmp r0, #1
	ldmnefd sp!, {r4, pc}
	mov r2, #2
	mov r0, r4
	mov r1, #6
	str r2, [r4, #0x5c]
	bl FUN_0204667c
	ldmfd sp!, {r4, pc}
	arm_func_end FUN_02046dd0

	arm_func_start FUN_02046dfc
FUN_02046dfc: ; 0x02046DFC
	stmfd sp!, {r4, lr}
	mov r4, r0
	ldr r0, _02046E24 ; =0x020A18A0
	bl FUN_0203f91c
	mov r2, #2
	mov r0, r4
	mov r1, #6
	str r2, [r4, #0x5c]
	bl FUN_0204667c
	ldmfd sp!, {r4, pc}
_02046E24: .word unk_020A18A0
	arm_func_end FUN_02046dfc

	arm_func_start FUN_02046e28
FUN_02046e28: ; 0x02046E28
	stmfd sp!, {r3, lr}
	bl FUN_02046700
	cmp r0, #0
	ldmeqfd sp!, {r3, pc}
	ldr r0, _02046E44 ; =0x020A18A0
	bl FUN_0203e3f0
	ldmfd sp!, {r3, pc}
_02046E44: .word unk_020A18A0
	arm_func_end FUN_02046e28

	arm_func_start FUN_02046e48
FUN_02046e48: ; 0x02046E48
	stmfd sp!, {r3, lr}
	bl FUN_02046698
	cmp r0, #0xb
	addls pc, pc, r0, lsl #2
	ldmfd sp!, {r3, pc}
_02046E5C: ; jump table
	ldmfd sp!, {r3, pc} ; case 0
	ldmfd sp!, {r3, pc} ; case 1
	ldmfd sp!, {r3, pc} ; case 2
	ldmfd sp!, {r3, pc} ; case 3
	ldmfd sp!, {r3, pc} ; case 4
	ldmfd sp!, {r3, pc} ; case 5
	b _02046E8C ; case 6
	b _02046E8C ; case 7
	b _02046E8C ; case 8
	b _02046E98 ; case 9
	ldmfd sp!, {r3, pc} ; case 10
	b _02046E98 ; case 11
_02046E8C:
	ldr r0, _02046EA4 ; =0x020A18A0
	bl FUN_0203f7b0
	ldmfd sp!, {r3, pc}
_02046E98:
	ldr r0, _02046EA4 ; =0x020A18A0
	bl FUN_0203e3f0
	ldmfd sp!, {r3, pc}
_02046EA4: .word unk_020A18A0
	arm_func_end FUN_02046e48

	arm_func_start FUN_02046ea8
FUN_02046ea8: ; 0x02046EA8
	stmfd sp!, {r3, r4, r5, lr}
	mov r5, r0
	mov r4, r1
	bl FUN_02046698
	cmp r0, #7
	ldmnefd sp!, {r3, r4, r5, pc}
	mov r0, r5
	mov r1, #8
	strb r4, [r5, #0x67]
	bl FUN_0204667c
	ldmfd sp!, {r3, r4, r5, pc}
	arm_func_end FUN_02046ea8

	arm_func_start FUN_02046ed4
FUN_02046ed4: ; 0x02046ED4
	stmfd sp!, {r3, r4, r5, lr}
	mov r5, r0
	bl FUN_02046698
	cmp r0, #2
	beq _02046EFC
	cmp r0, #3
	beq _02046F20
	cmp r0, #4
	beq _02046F48
	b _02046F94
_02046EFC:
	ldr r0, _02046F9C ; =0x020A18A0
	mov r1, #0
	bl FUN_0203ed6c
	cmp r0, #0
	beq _02046F94
	mov r0, r5
	mov r1, #3
_02046F18:
	bl FUN_0204667c
	b _02046F94
_02046F20:
	add r1, r5, #0xc2
	ldr r0, _02046F9C ; =0x020A18A0
	add r2, r1, #0x200
	mov r1, #3
	bl FUN_0203eca8
	cmp r0, #0
	beq _02046F94
	mov r0, r5
	mov r1, #4
	b _02046F18
_02046F48:
	ldrb r0, [r5, #0x65]
	mov r4, #0
	mov r1, #4
	cmp r0, #0
	ldr r0, _02046F9C ; =0x020A18A0
	movne r1, #2
	mov r2, r4
	mov r3, r4
	bl FUN_0203eefc
	cmp r0, #0
	beq _02046F94
	mov r0, r5
	mov r1, #5
	strb r4, [r5, #0x66]
	bl FUN_0204667c
	ldr r1, _02046FA0 ; =0x0209A0F8
	mov r0, #1
	str r0, [r1]
	ldmfd sp!, {r3, r4, r5, pc}
_02046F94:
	mov r0, #0
	ldmfd sp!, {r3, r4, r5, pc}
_02046F9C: .word unk_020A18A0
_02046FA0: .word unk_0209A0F8
	arm_func_end FUN_02046ed4

	arm_func_start FUN_02046fa4
FUN_02046fa4: ; 0x02046FA4
	mov r0, #1
	bx lr
	arm_func_end FUN_02046fa4

	arm_func_start FUN_02046fac
FUN_02046fac: ; 0x02046FAC
	stmfd sp!, {r4, lr}
	mov r4, r0
	bl FUN_020466a0
	mov r0, r4
	bl FUN_02046698
	cmp r0, #6
	bne _02046FFC
	mov r1, #0
	ldr r0, _02047004 ; =0x020A18A0
	mov r2, r1
	bl FUN_0203f168
	cmp r0, #0
	beq _02046FFC
	mov r0, r4
	mov r1, #7
	bl FUN_0204667c
	ldr r1, _02047008 ; =0x0209A0F8
	mov r0, #1
	str r0, [r1]
	ldmfd sp!, {r4, pc}
_02046FFC:
	mov r0, #0
	ldmfd sp!, {r4, pc}
_02047004: .word unk_020A18A0
_02047008: .word unk_0209A0F8
	arm_func_end FUN_02046fac

	arm_func_start FUN_0204700c
FUN_0204700c: ; 0x0204700C
	stmfd sp!, {r4, r5, r6, lr}
	mov r4, r0
	bl FUN_02046698
	cmp r0, #0xa
	addls pc, pc, r0, lsl #2
	b _02047144
_02047024: ; jump table
	b _02047144 ; case 0
	b _02047144 ; case 1
	b _02047144 ; case 2
	b _02047144 ; case 3
	b _02047144 ; case 4
	b _02047144 ; case 5
	b _02047144 ; case 6
	b _02047050 ; case 7
	b _02047080 ; case 8
	b _020470D0 ; case 9
	b _02047108 ; case 10
_02047050:
	mov r6, #0
	ldr r5, _0204714C ; =0x020A18A0
	b _02047074
_0204705C:
	mov r0, r5
	mov r1, r6
	bl FUN_0203e2d0
	add r1, r4, r6, lsl #2
	str r0, [r1, #0x27c]
	add r6, r6, #1
_02047074:
	cmp r6, #0x10
	blt _0204705C
	b _02047144
_02047080:
	ldr r5, _0204714C ; =0x020A18A0
	ldrb r1, [r4, #0x67]
	mov r0, r5
	bl FUN_0203e2d0
	cmp r0, #0
	mvneq r0, #0
	ldmeqfd sp!, {r4, r5, r6, pc}
	mov r0, r5
	bl FUN_0203f7b0
	add r1, r4, #0xc2
	mov r0, r5
	add r2, r1, #0x200
	mov r1, #3
	bl FUN_0203eca8
	cmp r0, #0
	beq _02047144
	mov r0, r4
	mov r1, #9
_020470C8:
	bl FUN_0204667c
	b _02047144
_020470D0:
	ldrb r0, [r4, #0x65]
	ldrb r2, [r4, #0x67]
	mov r1, #4
	cmp r0, #0
	ldr r0, _0204714C ; =0x020A18A0
	movne r1, #2
	bl FUN_0203f840
	cmp r0, #0
	beq _02047100
	mov r0, r4
	mov r1, #0xa
	b _020470C8
_02047100:
	mvn r0, #0
	ldmfd sp!, {r4, r5, r6, pc}
_02047108:
	ldr r5, _0204714C ; =0x020A18A0
	mov r0, r5
	bl FUN_0203e1d0
	cmp r0, #9
	mvneq r0, #0
	ldmeqfd sp!, {r4, r5, r6, pc}
	mov r0, r5
	bl FUN_0203e1e8
	cmp r0, #0
	beq _02047144
	mov r0, r4
	mov r1, #0xb
	bl FUN_0204667c
	mov r0, #1
	ldmfd sp!, {r4, r5, r6, pc}
_02047144:
	mov r0, #0
	ldmfd sp!, {r4, r5, r6, pc}
_0204714C: .word unk_020A18A0
	arm_func_end FUN_0204700c

	arm_func_start FUN_02047150
FUN_02047150: ; 0x02047150
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	movs r5, r1
	mov r6, r0
	beq _020471E0
	cmp r6, #0
	ldr r4, _020471F0 ; =0x0209AF58
	bne _020471AC
	ldrb r0, [r5]
	ldr r7, _020471F4 ; =0x0209AEC0
	strh r0, [r7, #0x6a]
	ldrb r1, [r5, #1]
	cmp r1, #0
	ldrneb r2, [r5, #2]
	cmpne r2, #0
	beq _020471D0
	mov r0, r7
	mov r1, r1, lsl #2
	mov r2, r2, lsl #2
	bl FUN_02046bfc
	ldr r2, [r7, #0x90]
	mov r1, r4
	add r0, r5, #4
	b _020471CC
_020471AC:
	ldr r0, _020471F4 ; =0x0209AEC0
	mov r1, r6
	ldr r7, [r0, #0x7c]
	bl FUN_02046c98
	mov r1, r0
	mov r0, r5
	mov r2, r7
	add r1, r4, r1
_020471CC:
	bl MI_CpuCopy8
_020471D0:
	ldr r0, _020471F8 ; =0x0209AF54
	mov r1, #1
	strb r1, [r0, r6]
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_020471E0:
	ldr r0, _020471F8 ; =0x0209AF54
	mov r1, #0
	strb r1, [r0, r6]
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_020471F0: .word unk_0209AF58
_020471F4: .word gWirelessUtil
_020471F8: .word unk_0209AF54
	arm_func_end FUN_02047150

	arm_func_start FUN_020471fc
FUN_020471fc: ; 0x020471FC
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, lr}
	sub sp, sp, #0x10
	ldr r1, _020473D0 ; =0x0208C408
	ldr r5, _020473D4 ; =0x020A18A0
	mov r4, r0
	add r6, sp, #0
	ldmia r1, {r0, r1, r2, r3}
	stmia r6, {r0, r1, r2, r3}
	mov r0, r5
	bl FUN_0203e1e8
	cmp r0, #0
	bne _02047280
	ldrb r0, [r4, #0x66]
	cmp r0, #0
	beq _02047274
	mov r0, r4
	bl FUN_02046700
	cmp r0, #0
	beq _02047274
	ldr r0, _020473D8 ; =0x020A0640
	ldrb r0, [r0, #0xae]
	cmp r0, #0
	bne _02047274
	mov r5, #0xc
	mov r0, r4
	mov r1, r5
	bl FUN_0204667c
	add sp, sp, #0x10
	sub r0, r5, #0xd
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_02047274:
	add sp, sp, #0x10
	mov r0, #0
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_02047280:
	mov r0, r5
	bl FUN_0203e1d0
	cmp r0, #9
	bne _020472CC
	mov r0, r4
	bl FUN_02046700
	cmp r0, #0
	beq _020472CC
	ldr r0, _020473D8 ; =0x020A0640
	ldrb r0, [r0, #0xae]
	cmp r0, #0
	bne _020472CC
	mov r5, #0xc
	mov r0, r4
	mov r1, r5
	bl FUN_0204667c
	add sp, sp, #0x10
	sub r0, r5, #0xd
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_020472CC:
	ldr r11, _020473D4 ; =0x020A18A0
	mov r0, r11
	bl FUN_0203e1d0
	cmp r0, #6
	addne sp, sp, #0x10
	movne r0, #0
	ldmnefd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
	ldr r1, _020473DC ; =0x0209AA60
	mov r2, #1
	mov r0, r11
	strb r2, [r4, #0x66]
	bl FUN_0203e89c
	cmp r0, #0
	beq _020473C4
	ldr r0, _020473E0 ; =0x0209AEC0
	bl FUN_02046744
	ldr r1, _020473E4 ; =0x0209A10C
	mov r9, r0
	ldr r0, [r1]
	ldr r2, _020473E8 ; =0x0209E6C0
	add r0, r0, #1
	and r1, r0, #3
	mov r0, #0x3c0
	mla r7, r1, r0, r2
	mov r10, #0
	add r6, sp, #0
	mov r8, #1
	mov r4, #0xf0
	ldr r5, _020473EC ; =0x020A3CA0
	b _0204736C
_02047344:
	tst r9, r8, lsl r10
	beq _02047368
	mla r2, r10, r4, r7
	mov r1, r10, lsl #0x10
	ldrh r3, [r5, #0x66]
	mov r0, r11
	mov r1, r1, lsr #0x10
	bl FUN_0203eab8
	str r0, [r6, r10, lsl #2]
_02047368:
	add r10, r10, #1
_0204736C:
	cmp r10, #4
	blt _02047344
	ldr r0, _020473F0 ; =0x0209A138
	ldr r2, [sp]
	ldr r3, [r0]
	ldr r1, _020473E4 ; =0x0209A10C
	add r3, r3, #1
	str r3, [r0]
	cmp r2, #0
	ldrne r0, [sp, #4]
	ldr r4, [r1]
	cmpne r0, #0
	ldrne r0, [sp, #8]
	add r4, r4, #1
	cmpne r0, #0
	ldrne r0, [sp, #0xc]
	add sp, sp, #0x10
	cmpne r0, #0
	movne r0, #1
	str r4, [r1]
	moveq r0, #0
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_020473C4:
	mov r0, #0
	add sp, sp, #0x10
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_020473D0: .word unk_0208C408
_020473D4: .word unk_020A18A0
_020473D8: .word unk_020A0640
_020473DC: .word unk_0209AA60
_020473E0: .word gWirelessUtil
_020473E4: .word unk_0209A10C
_020473E8: .word unk_0209E6C0
_020473EC: .word unk_020A3CA0
_020473F0: .word unk_0209A138
	arm_func_end FUN_020471fc

	arm_func_start FUN_020473f4
FUN_020473f4: ; 0x020473F4
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, lr}
	sub sp, sp, #0x10
	ldr r1, _02047554 ; =0x0208C418
	add r4, sp, #0
	mov r5, r0
	ldmia r1, {r0, r1, r2, r3}
	stmia r4, {r0, r1, r2, r3}
	ldr r0, _02047558 ; =0x020A18A0
	bl FUN_0203e1d0
	mov r4, r0
	cmp r4, #9
	bne _02047460
	mov r0, r5
	bl FUN_02046700
	cmp r0, #0
	beq _02047460
	ldr r0, _0204755C ; =0x020A0640
	ldrb r0, [r0, #0xae]
	cmp r0, #0
	bne _02047460
	mov r4, #0xc
	mov r0, r5
	mov r1, r4
	bl FUN_0204667c
	add sp, sp, #0x10
	sub r0, r4, #0xd
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_02047460:
	cmp r4, #6
	addne sp, sp, #0x10
	movne r0, #0
	ldmnefd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
	ldr r11, _02047558 ; =0x020A18A0
	ldr r1, _02047560 ; =0x0209AA60
	mov r0, r11
	bl FUN_0203e89c
	cmp r0, #0
	beq _02047548
	ldr r0, _02047564 ; =0x0209AEC0
	bl FUN_02046744
	ldr r1, _02047568 ; =0x0209A10C
	mov r9, r0
	ldr r0, [r1]
	ldr r2, _0204756C ; =0x0209E6C0
	add r0, r0, #1
	and r1, r0, #3
	mov r0, #0x3c0
	mla r7, r1, r0, r2
	mov r10, #0
	add r6, sp, #0
	mov r8, #1
	mov r4, #0xf0
	ldr r5, _02047570 ; =0x020A3CA0
	b _020474F0
_020474C8:
	tst r9, r8, lsl r10
	beq _020474EC
	mla r2, r10, r4, r7
	mov r1, r10, lsl #0x10
	ldrh r3, [r5, #0x66]
	mov r0, r11
	mov r1, r1, lsr #0x10
	bl FUN_0203eab8
	str r0, [r6, r10, lsl #2]
_020474EC:
	add r10, r10, #1
_020474F0:
	cmp r10, #4
	blt _020474C8
	ldr r0, _02047574 ; =0x0209A138
	ldr r2, [sp]
	ldr r3, [r0]
	ldr r1, _02047568 ; =0x0209A10C
	add r3, r3, #1
	str r3, [r0]
	cmp r2, #0
	ldrne r0, [sp, #4]
	ldr r4, [r1]
	cmpne r0, #0
	ldrne r0, [sp, #8]
	add r4, r4, #1
	cmpne r0, #0
	ldrne r0, [sp, #0xc]
	add sp, sp, #0x10
	cmpne r0, #0
	movne r0, #1
	str r4, [r1]
	moveq r0, #0
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_02047548:
	mov r0, #0
	add sp, sp, #0x10
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_02047554: .word unk_0208C418
_02047558: .word unk_020A18A0
_0204755C: .word unk_020A0640
_02047560: .word unk_0209AA60
_02047564: .word gWirelessUtil
_02047568: .word unk_0209A10C
_0204756C: .word unk_0209E6C0
_02047570: .word unk_020A3CA0
_02047574: .word unk_0209A138
	arm_func_end FUN_020473f4

	arm_func_start FUN_02047578
FUN_02047578: ; 0x02047578
	stmfd sp!, {r3, lr}
	cmp r0, #0
	ldmeqfd sp!, {r3, pc}
	ldr r0, _02047590 ; =0x0209AEC0
	bl FUN_02046c5c
	ldmfd sp!, {r3, pc}
_02047590: .word gWirelessUtil
	arm_func_end FUN_02047578

	arm_func_start FUN_02047594
FUN_02047594: ; 0x02047594
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, lr}
	sub sp, sp, #0x10
	ldr r1, _02047870 ; =0x0208C3F8
	ldr r5, _02047874 ; =0x020A18A0
	mov r10, r0
	add r4, sp, #0
	ldmia r1, {r0, r1, r2, r3}
	stmia r4, {r0, r1, r2, r3}
	mov r0, r5
	ldr r4, _02047878 ; =0x020A3CA0
	mov r7, #1
	bl FUN_0203e1e8
	cmp r0, #0
	bne _02047610
	ldrb r0, [r10, #0x66]
	cmp r0, #0
	beq _02047604
	mov r0, r10
	bl FUN_02046700
	cmp r0, #0
	beq _02047604
	mov r4, #0xc
	mov r0, r10
	mov r1, r4
	bl FUN_0204667c
	add sp, sp, #0x10
	sub r0, r4, #0xd
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_02047604:
	add sp, sp, #0x10
	mov r0, #0
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_02047610:
	mov r0, r5
	bl FUN_0203e1d0
	cmp r0, #9
	bne _0204764C
	mov r0, r10
	bl FUN_02046700
	cmp r0, #0
	beq _0204764C
	mov r4, #0xc
	mov r0, r10
	mov r1, r4
	bl FUN_0204667c
	add sp, sp, #0x10
	sub r0, r4, #0xd
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_0204764C:
	ldr r0, _02047874 ; =0x020A18A0
	bl FUN_0203e1d0
	cmp r0, #4
	addne sp, sp, #0x10
	movne r0, #0
	ldmnefd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
	mov r0, r10
	bl FUN_02046744
	ldrb r11, [r10, #0x88]
	mov r8, r0
	cmp r11, #0
	bne _020476D8
	mov r9, #1
	add r6, r10, #0x98
	ldr r5, _0204787C ; =0x0209AA60
	b _020476C8
_0204768C:
	tst r8, r7, lsl r9
	addne r0, r10, r9
	ldrneb r0, [r0, #0x94]
	cmpne r0, #0
	beq _020476C4
	mov r1, r9, lsl #0x10
	mov r0, r10
	mov r1, r1, lsr #0x10
	bl FUN_02046c98
	add r1, r0, #4
	ldr r2, [r10, #0x7c]
	add r0, r6, r0
	add r1, r5, r1
	bl MI_CpuCopy8
_020476C4:
	add r9, r9, #1
_020476C8:
	ldrh r0, [r4, #0x5e]
	cmp r9, r0
	blt _0204768C
	b _02047704
_020476D8:
	ldr r0, [r10, #0x8c]
	sub r0, r0, #1
	str r0, [r10, #0x8c]
	cmp r0, #0
	bgt _02047704
	mov r0, #0x78
	str r0, [r10, #0x8c]
	ldrh r1, [r4, #0x6c]
	ldr r0, _02047880 ; =0x0000FFEF
	and r0, r1, r0
	strh r0, [r4, #0x6c]
_02047704:
	ldr r1, [r10, #0x90]
	mov r0, #1
	mov r2, r1, lsl #0x10
	strb r0, [r10, #0x66]
	mov r3, #0
	cmp r11, #0
	ldrne r3, _02047884 ; =FUN_02047578
	ldr r0, _02047874 ; =0x020A18A0
	ldr r1, _0204787C ; =0x0209AA60
	mov r2, r2, lsr #0x10
	ldr r4, _02047878 ; =0x020A3CA0
	bl FUN_0203e930
	cmp r0, #0
	beq _02047864
	cmp r11, #0
	ldrneh r1, [r4, #0x6c]
	addne sp, sp, #0x10
	movne r0, #0
	orrne r1, r1, #0x10
	strneh r1, [r4, #0x6c]
	ldmnefd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
	ldr r0, _02047888 ; =0x0209A10C
	ldr r5, _0204788C ; =0x0209E6C0
	ldr r1, [r0]
	mov r0, #0x3c0
	add r6, r1, #1
	and r2, r6, #3
	mla r1, r2, r0, r5
	ldr r2, [r10, #0x78]
	ldr r0, _02047890 ; =0x0209AA64
	bl MI_CpuCopy8
	and r1, r6, #3
	mov r0, #0x3c0
	mla r5, r1, r0, r5
	mov r9, #1
	add r6, r10, #0x98
	add r7, sp, #0
	mov r11, #0xf0
	b _020477E0
_020477A0:
	mov r0, #1
	tst r8, r0, lsl r9
	addne r0, r10, r9
	ldrneb r0, [r0, #0x94]
	strne r0, [r7, r9, lsl #2]
	cmpne r0, #0
	beq _020477DC
	mov r1, r9, lsl #0x10
	mov r0, r10
	mov r1, r1, lsr #0x10
	bl FUN_02046c98
	mla r1, r9, r11, r5
	ldr r2, [r10, #0x7c]
	add r0, r6, r0
	bl MI_CpuCopy8
_020477DC:
	add r9, r9, #1
_020477E0:
	ldrh r0, [r4, #0x5e]
	cmp r9, r0
	blt _020477A0
	ldr r1, [sp]
	ldr r0, _02047878 ; =0x020A3CA0
	cmp r1, #0
	ldrne r1, [sp, #4]
	mov r3, #0
	cmpne r1, #0
	ldrne r1, [sp, #8]
	cmpne r1, #0
	ldrne r1, [sp, #0xc]
	cmpne r1, #0
	beq _02047858
	ldr r2, _02047888 ; =0x0209A10C
	ldr r1, _02047894 ; =0x0209A138
	ldr r5, [r2]
	ldr r4, [r1]
	add r5, r5, #1
	add r4, r4, #1
	str r5, [r2]
	str r4, [r1]
	mov r2, #1
	b _0204784C
_02047840:
	add r1, r10, r2
	strb r3, [r1, #0x94]
	add r2, r2, #1
_0204784C:
	ldrh r1, [r0, #0x5e]
	cmp r2, r1
	blt _02047840
_02047858:
	add sp, sp, #0x10
	mov r0, #1
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_02047864:
	mov r0, #0
	add sp, sp, #0x10
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_02047870: .word unk_0208C3F8
_02047874: .word unk_020A18A0
_02047878: .word unk_020A3CA0
_0204787C: .word unk_0209AA60
_02047880: .word 0x0000FFEF
_02047884: .word FUN_02047578
_02047888: .word unk_0209A10C
_0204788C: .word unk_0209E6C0
_02047890: .word unk_0209AA64
_02047894: .word unk_0209A138
	arm_func_end FUN_02047594

	arm_func_start FUN_02047898
FUN_02047898: ; 0x02047898
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, lr}
	sub sp, sp, #0x10
	ldr r1, _020479F4 ; =0x0208C428
	add r4, sp, #0
	mov r10, r0
	ldmia r1, {r0, r1, r2, r3}
	stmia r4, {r0, r1, r2, r3}
	ldr r0, _020479F8 ; =0x020A18A0
	bl FUN_0203e1d0
	mov r4, r0
	cmp r4, #9
	bne _020478F4
	mov r0, r10
	bl FUN_02046700
	cmp r0, #0
	beq _020478F4
	mov r4, #0xc
	mov r0, r10
	mov r1, r4
	bl FUN_0204667c
	add sp, sp, #0x10
	sub r0, r4, #0xd
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_020478F4:
	cmp r4, #4
	addne sp, sp, #0x10
	movne r0, #0
	ldmnefd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
	mov r8, #0
	ldr r0, _020479F8 ; =0x020A18A0
	ldr r1, _020479FC ; =0x0209AA60
	mov r3, r8
	mov r2, #0x78
	bl FUN_0203e930
	cmp r0, #0
	beq _020479E8
	mov r0, r10
	bl FUN_02046744
	ldrb r1, [r10, #0x94]
	mov r7, r0
	cmp r1, #0
	addeq sp, sp, #0x10
	moveq r0, r8
	ldmeqfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
	ldr r0, _02047A00 ; =0x0209A10C
	strb r8, [r10, #0x94]
	ldr r0, [r0]
	ldr r2, _02047A04 ; =0x0209E6C0
	add r0, r0, #1
	and r1, r0, #3
	mov r0, #0x3c0
	mla r4, r1, r0, r2
	add r5, r10, #0x98
	mov r6, #1
	ldr r11, _02047A08 ; =0x020A3CA0
	b _020479B0
_02047974:
	tst r7, r6, lsl r8
	beq _020479AC
	cmp r8, #0
	ldreq r9, [r10, #0x78]
	mov r1, r8, lsl #0x10
	mov r0, r10
	mov r1, r1, lsr #0x10
	ldrne r9, [r10, #0x7c]
	bl FUN_02046c98
	mov r1, #0xf0
	mla r1, r8, r1, r4
	mov r2, r9
	add r0, r5, r0
	bl MI_CpuCopy8
_020479AC:
	add r8, r8, #1
_020479B0:
	ldrh r0, [r11, #0x5e]
	cmp r8, r0
	blt _02047974
	ldr r0, _02047A0C ; =0x0209A138
	ldr r1, _02047A00 ; =0x0209A10C
	ldr r2, [r0]
	ldr r3, [r1]
	add r2, r2, #1
	add r3, r3, #1
	str r2, [r0]
	add sp, sp, #0x10
	str r3, [r1]
	mov r0, #1
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_020479E8:
	mov r0, r8
	add sp, sp, #0x10
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_020479F4: .word unk_0208C428
_020479F8: .word unk_020A18A0
_020479FC: .word unk_0209AA60
_02047A00: .word unk_0209A10C
_02047A04: .word unk_0209E6C0
_02047A08: .word unk_020A3CA0
_02047A0C: .word unk_0209A138
	arm_func_end FUN_02047898

	arm_func_start _ZN13CWirelessUtil12FUN_02047a10Ev
_ZN13CWirelessUtil12FUN_02047a10Ev: ; 0x02047A10
	stmfd sp!, {r4, lr}
	mov r4, r0
	bl FUN_02046698
	cmp r0, #5
	beq _02047A30
	cmp r0, #0xb
	beq _02047A50
	b _02047A70
_02047A30:
	ldrb r0, [r4, #0x65]
	cmp r0, #0
	mov r0, r4
	bne _02047A48
	bl FUN_02047594
	b _02047A74
_02047A48:
	bl FUN_020471fc
	b _02047A74
_02047A50:
	ldrb r0, [r4, #0x65]
	cmp r0, #0
	mov r0, r4
	bne _02047A68
	bl FUN_02047898
	b _02047A74
_02047A68:
	bl FUN_020473f4
	b _02047A74
_02047A70:
	mvn r0, #0
_02047A74:
	str r0, [r4, #0x60]
	ldmfd sp!, {r4, pc}
	arm_func_end _ZN13CWirelessUtil12FUN_02047a10Ev

	.rodata
	.global unk_0208C3F8
unk_0208C3F8:
	.byte 0x01, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00
	.byte 0x01, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00
	.global unk_0208C408
unk_0208C408:
	.byte 0x01, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00
	.byte 0x01, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00
	.global unk_0208C418
unk_0208C418:
	.byte 0x01, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00
	.byte 0x01, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00
	.global unk_0208C428
unk_0208C428:
	.byte 0x01, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00
	.byte 0x01, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00

	.data
	.global unk_020901D0
unk_020901D0:
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.global unk_020901E0
unk_020901E0:
	.word unk_020901EC
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00 
	.global unk_020901EC
unk_020901EC:
	.asciz "INAZUMA2_VER__1"
	.balign 4, 0
	.global unk_020901FC
unk_020901FC:
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.global unk_02090204
unk_02090204:
	.word FUN_020463f4
	.word FUN_02046414
	.global unk_0209020C
unk_0209020C:
	.asciz "0123456789012345678"
	.balign 4, 0

	.bss
	.global unk_020B5BF8
unk_020B5BF8:
	.space 0x04
