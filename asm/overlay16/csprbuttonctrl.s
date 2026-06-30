.public FUN_ov16_0210e238
.public FUN_ov16_0210e368
.public FUN_ov16_0210e3f0
.public FUN_ov16_0210e470
.public FUN_ov16_0210e4f0
.public FUN_ov16_0210e5f0
.public FX_Sqrt
.public MI_CpuFill8
.public MIi_CpuClearFast
.public _ZN12C3DPlaneCtrl10getPartExtEii
.public _ZN12C3DPlaneCtrl9getSetExtEi
.public g3DPlaneCtrl
.public gSprAnimCtrl
.public gSprButtonCtrl

	.include "/macros/function.inc"

	.text
	arm_func_start FUN_ov16_0210e638
FUN_ov16_0210e638: ; 0x0210E638
	ldr r12, _0210E648 ; =MI_CpuFill8
	mov r1, #0
	mov r2, #0x48
	bx r12
_0210E648: .word MI_CpuFill8
	arm_func_end FUN_ov16_0210e638

	arm_func_start FUN_ov16_0210e64c
FUN_ov16_0210e64c: ; 0x0210E64C
	ldr r12, _0210E654 ; =FUN_ov16_0210e638
	bx r12
_0210E654: .word FUN_ov16_0210e638
	arm_func_end FUN_ov16_0210e64c

	arm_func_start FUN_ov16_0210e658
FUN_ov16_0210e658: ; 0x0210E658
	ldrh r1, [r0, #8]
	cmp r1, #0
	ldreqh r0, [r0, #0xa]
	cmpeq r0, #0
	moveq r0, #1
	movne r0, #0
	bx lr
	arm_func_end FUN_ov16_0210e658

	arm_func_start FUN_ov16_0210e674
FUN_ov16_0210e674: ; 0x0210E674
	ldr r12, [sp]
	strh r1, [r0]
	strh r2, [r0, #2]
	strh r3, [r0, #4]
	strh r12, [r0, #6]
	bx lr
	arm_func_end FUN_ov16_0210e674

	arm_func_start FUN_ov16_0210e68c
FUN_ov16_0210e68c: ; 0x0210E68C
	strh r1, [r0, #0xc]
	bx lr
	arm_func_end FUN_ov16_0210e68c

	arm_func_start FUN_ov16_0210e694
FUN_ov16_0210e694: ; 0x0210E694
	strh r1, [r0, #0x32]
	bx lr
	arm_func_end FUN_ov16_0210e694

	arm_func_start FUN_ov16_0210e69c
FUN_ov16_0210e69c: ; 0x0210E69C
	stmfd sp!, {r3, lr}
	ldrb r1, [r0, #0x10]
	cmp r1, #0
	beq _0210E6C0
	ldr r1, [r0, #0x24]
	cmp r1, #0
	ldmeqfd sp!, {r3, pc}
	blx r1
	ldmfd sp!, {r3, pc}
_0210E6C0:
	ldrb r1, [r0, #0xe]
	cmp r1, #1
	bne _0210E6E0
	ldr r1, [r0, #0x1c]
	cmp r1, #0
	ldmeqfd sp!, {r3, pc}
	blx r1
	ldmfd sp!, {r3, pc}
_0210E6E0:
	ldr r1, [r0, #0x20]
	cmp r1, #0
	ldmeqfd sp!, {r3, pc}
	blx r1
	ldmfd sp!, {r3, pc}
	arm_func_end FUN_ov16_0210e69c

	arm_func_start FUN_ov16_0210e6f4
FUN_ov16_0210e6f4: ; 0x0210E6F4
	ldrb r0, [r0, #0x12]
	bx lr
	arm_func_end FUN_ov16_0210e6f4

	arm_func_start FUN_ov16_0210e6fc
FUN_ov16_0210e6fc: ; 0x0210E6FC
	cmp r1, #0
	mov r1, #0
	orrne r1, r1, #1
	cmp r2, #0
	orrne r1, r1, #2
	cmp r3, #0
	orrne r1, r1, #4
	strb r1, [r0, #3]
	bx lr
	arm_func_end FUN_ov16_0210e6fc

	arm_func_start FUN_ov16_0210e720
FUN_ov16_0210e720: ; 0x0210E720
	strb r1, [r0]
	strb r2, [r0, #1]
	strb r3, [r0, #2]
	bx lr
	arm_func_end FUN_ov16_0210e720

	arm_func_start FUN_ov16_0210e730
FUN_ov16_0210e730: ; 0x0210E730
	ldrb r0, [r0, #3]
	tst r0, #1
	movne r0, #1
	moveq r0, #0
	bx lr
	arm_func_end FUN_ov16_0210e730

	arm_func_start FUN_ov16_0210e744
FUN_ov16_0210e744: ; 0x0210E744
	ldrb r0, [r0, #3]
	tst r0, #2
	movne r0, #1
	moveq r0, #0
	bx lr
	arm_func_end FUN_ov16_0210e744

	arm_func_start FUN_ov16_0210e758
FUN_ov16_0210e758: ; 0x0210E758
	ldrb r0, [r0, #3]
	tst r0, #4
	movne r0, #1
	moveq r0, #0
	bx lr
	arm_func_end FUN_ov16_0210e758

	arm_func_start FUN_ov16_0210e76c
FUN_ov16_0210e76c: ; 0x0210E76C
	ldr r12, _0210E780 ; =MIi_CpuClearFast
	mov r1, r0
	mov r0, #0
	mov r2, #8
	bx r12
_0210E780: .word MIi_CpuClearFast
	arm_func_end FUN_ov16_0210e76c

	arm_func_start FUN_ov16_0210e784
FUN_ov16_0210e784: ; 0x0210E784
	ldr r0, [r0]
	cmp r0, #0
	moveq r0, #1
	movne r0, #0
	bx lr
	arm_func_end FUN_ov16_0210e784

	arm_func_start FUN_ov16_0210e798
FUN_ov16_0210e798: ; 0x0210E798
	stmfd sp!, {r3, r4, r5, lr}
	add r4, r0, #4
	mov r5, #0
_0210E7A4:
	mov r0, r4
	bl FUN_ov16_0210e658
	cmp r0, #0
	movne r0, r4
	ldmnefd sp!, {r3, r4, r5, pc}
	add r5, r5, #1
	cmp r5, #0x32
	add r4, r4, #0x48
	blt _0210E7A4
	mov r0, #0
	ldmfd sp!, {r3, r4, r5, pc}
	arm_func_end FUN_ov16_0210e798

	arm_func_start FUN_ov16_0210e7d0
FUN_ov16_0210e7d0: ; 0x0210E7D0
	cmp r1, #0
	moveq r0, #0
	bxeq lr
	add r0, r0, #4
	mov r3, #0
_0210E7E4:
	ldrh r2, [r0, #8]
	cmp r2, r1
	bxeq lr
	add r3, r3, #1
	cmp r3, #0x32
	add r0, r0, #0x48
	blt _0210E7E4
	mov r0, #0
	bx lr
	arm_func_end FUN_ov16_0210e7d0

	arm_func_start FUN_ov16_0210e808
FUN_ov16_0210e808: ; 0x0210E808
	stmfd sp!, {r3, r4, r5, lr}
	add r0, r0, #0x214
	add r4, r0, #0xc00
	mov r5, #0
_0210E818:
	mov r0, r4
	bl FUN_ov16_0210e784
	cmp r0, #0
	movne r0, r4
	ldmnefd sp!, {r3, r4, r5, pc}
	add r5, r5, #1
	cmp r5, #0x22
	add r4, r4, #8
	blt _0210E818
	mov r0, #0
	ldmfd sp!, {r3, r4, r5, pc}
	arm_func_end FUN_ov16_0210e808

	arm_func_start FUN_ov16_0210e844
FUN_ov16_0210e844: ; 0x0210E844
	stmfd sp!, {r4, r5, r6, lr}
	add r0, r0, #0x214
	mov r6, r1
	add r4, r0, #0xc00
	mov r5, #0
_0210E858:
	mov r0, r4
	bl FUN_ov16_0210e784
	cmp r0, #0
	ldreq r0, [r4]
	ldreqh r0, [r0, #0xa]
	cmpeq r0, r6
	moveq r0, r4
	ldmeqfd sp!, {r4, r5, r6, pc}
	add r5, r5, #1
	cmp r5, #0x22
	add r4, r4, #8
	blt _0210E858
	mov r0, #0
	ldmfd sp!, {r4, r5, r6, pc}
	arm_func_end FUN_ov16_0210e844

	arm_func_start FUN_ov16_0210e890
FUN_ov16_0210e890: ; 0x0210E890
	ldr r0, [sp]
	sub r1, r1, r3
	sub r2, r2, r0
	mul r0, r2, r2
	mla r0, r1, r1, r0
	cmp r0, #0x100
	movge r0, #1
	movlt r0, #0
	bx lr
	arm_func_end FUN_ov16_0210e890

	arm_func_start FUN_ov16_0210e8b4
FUN_ov16_0210e8b4: ; 0x0210E8B4
	stmfd sp!, {r3, r4, lr}
	sub sp, sp, #4
	mov r4, r2
	ldrb r2, [r4, #8]
	mov r3, r1
	cmp r2, #3
	moveq r1, #0
	streqb r1, [r4, #8]
	streqb r1, [r4, #9]
	ldrh r1, [r3, #4]
	cmp r1, #1
	bne _0210E964
	ldrh r1, [r3, #6]
	cmp r1, #0
	bne _0210E974
	ldrh r2, [r3]
	ldrb r1, [r4, #8]
	strh r2, [r4]
	ldrh r2, [r3, #2]
	cmp r1, #0
	strh r2, [r4, #2]
	bne _0210E928
	mov r0, #1
	strb r0, [r4, #8]
	ldrh r0, [r3]
	strh r0, [r4, #4]
	ldrh r0, [r3, #2]
	strh r0, [r4, #6]
	b _0210E974
_0210E928:
	ldrb r1, [r4, #9]
	mov r2, #2
	strb r2, [r4, #8]
	cmp r1, #0
	bne _0210E974
	ldrsh r1, [r3, #2]
	str r1, [sp]
	ldrsh r1, [r4, #4]
	ldrsh r2, [r4, #6]
	ldrsh r3, [r3]
	bl FUN_ov16_0210e890
	cmp r0, #0
	movne r0, #1
	strneb r0, [r4, #9]
	b _0210E974
_0210E964:
	ldrb r0, [r4, #8]
	cmp r0, #0
	movne r0, #3
	strneb r0, [r4, #8]
_0210E974:
	ldrb r0, [r4, #8]
	add sp, sp, #4
	ldmfd sp!, {r3, r4, pc}
	arm_func_end FUN_ov16_0210e8b4

	arm_func_start FUN_ov16_0210e980
FUN_ov16_0210e980: ; 0x0210E980
	stmfd sp!, {r3, r4, r5, lr}
	mov r5, r0
	mov r4, #0
	mov r1, r4
	add r0, r5, #4
	mov r2, #0xe10
	bl MI_CpuFill8
	add r0, r5, #0x214
	mov r1, r4
	add r0, r0, #0xc00
	mov r2, #0x110
	bl MI_CpuFill8
	add r0, r5, #0x328
	mov r1, r4
	add r0, r0, #0xc00
	mov r2, #0xc
	str r4, [r5, #0xf24]
	bl MI_CpuFill8
	add r0, r5, #0xf00
	str r4, [r5, #0xf34]
	strh r4, [r0, #0x38]
	ldmfd sp!, {r3, r4, r5, pc}
	arm_func_end FUN_ov16_0210e980

	arm_func_start FUN_ov16_0210e9d8
FUN_ov16_0210e9d8: ; 0x0210E9D8
	ldr r12, _0210E9E0 ; =FUN_ov16_0210e980
	bx r12
_0210E9E0: .word FUN_ov16_0210e980
	arm_func_end FUN_ov16_0210e9d8

	arm_func_start FUN_ov16_0210e9e4
FUN_ov16_0210e9e4: ; 0x0210E9E4
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	movs r6, r2
	mov r5, r0
	mov r7, r1
	moveq r0, #0
	ldmeqfd sp!, {r3, r4, r5, r6, r7, pc}
	mov r1, r6
	bl FUN_ov16_0210e7d0
	cmp r0, #0
	ldmnefd sp!, {r3, r4, r5, r6, r7, pc}
	mov r0, r5
	mov r1, r7
	bl FUN_ov16_0210e844
	movs r4, r0
	bne _0210EA2C
	mov r0, r5
	bl FUN_ov16_0210e808
	mov r4, r0
_0210EA2C:
	mov r0, r5
	bl FUN_ov16_0210e798
	movs r5, r0
	cmpne r4, #0
	beq _0210EA9C
	bl FUN_ov16_0210e638
	strh r6, [r5, #8]
	strh r7, [r5, #0xa]
	ldr r0, [r4]
	ldr r1, _0210EAA4 ; =FUN_ov16_0210f4a8
	str r0, [r5, #0x14]
	str r4, [r5, #0x18]
	ldr r0, _0210EAA8 ; =FUN_ov16_0210f61c
	str r1, [r5, #0x20]
	ldr r1, _0210EAAC ; =FUN_ov16_0210f7a0
	str r0, [r5, #0x1c]
	ldr r0, _0210EAB0 ; =FUN_ov16_0210f8fc
	str r1, [r5, #0x24]
	str r0, [r5, #0x28]
	ldr r0, [r4]
	cmp r0, #0
	bne _0210EA8C
	mov r0, r4
	bl FUN_ov16_0210e76c
_0210EA8C:
	str r5, [r4]
	ldrh r0, [r4, #4]
	add r0, r0, #1
	strh r0, [r4, #4]
_0210EA9C:
	mov r0, r5
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_0210EAA4: .word FUN_ov16_0210f4a8
_0210EAA8: .word FUN_ov16_0210f61c
_0210EAAC: .word FUN_ov16_0210f7a0
_0210EAB0: .word FUN_ov16_0210f8fc
	arm_func_end FUN_ov16_0210e9e4

	arm_func_start FUN_ov16_0210eab4
FUN_ov16_0210eab4: ; 0x0210EAB4
	stmfd sp!, {r4, lr}
	bl FUN_ov16_0210e7d0
	cmp r0, #0
	ldmeqfd sp!, {r4, pc}
	ldr r4, [r0, #0x18]
	ldr r2, [r4]
	cmp r2, r0
	bne _0210EAE0
	ldr r1, [r0, #0x14]
	str r1, [r4]
	b _0210EAFC
_0210EAE0:
	ldr r1, [r2, #0x14]
	cmp r1, #0
	beq _0210EB20
_0210EAEC:
	cmp r1, r0
	bne _0210EB10
	ldr r1, [r0, #0x14]
	str r1, [r2, #0x14]
_0210EAFC:
	ldrh r1, [r4, #4]
	cmp r1, #0
	subne r1, r1, #1
	strneh r1, [r4, #4]
	b _0210EB20
_0210EB10:
	mov r2, r1
	ldr r1, [r1, #0x14]
	cmp r1, #0
	bne _0210EAEC
_0210EB20:
	bl FUN_ov16_0210e64c
	ldr r0, [r4]
	cmp r0, #0
	ldmnefd sp!, {r4, pc}
	mov r0, r4
	bl FUN_ov16_0210e76c
	ldmfd sp!, {r4, pc}
	arm_func_end FUN_ov16_0210eab4

	arm_func_start FUN_ov16_0210eb3c
FUN_ov16_0210eb3c: ; 0x0210EB3C
	stmfd sp!, {r3, r4, r5, lr}
	bl FUN_ov16_0210e844
	movs r4, r0
	ldmeqfd sp!, {r3, r4, r5, pc}
	ldr r0, [r4]
	cmp r0, #0
	beq _0210EB6C
_0210EB58:
	ldr r5, [r0, #0x14]
	bl FUN_ov16_0210e64c
	mov r0, r5
	cmp r5, #0
	bne _0210EB58
_0210EB6C:
	mov r0, r4
	bl FUN_ov16_0210e76c
	ldmfd sp!, {r3, r4, r5, pc}
	arm_func_end FUN_ov16_0210eb3c

	arm_func_start FUN_ov16_0210eb78
FUN_ov16_0210eb78: ; 0x0210EB78
	stmfd sp!, {r4, r5, r6, lr}
	add r0, r0, #0x214
	add r4, r0, #0xc00
	mov r6, #0
_0210EB88:
	mov r0, r4
	bl FUN_ov16_0210e784
	cmp r0, #0
	bne _0210EBC0
	ldr r0, [r4]
	cmp r0, #0
	beq _0210EBB8
_0210EBA4:
	ldr r5, [r0, #0x14]
	bl FUN_ov16_0210e64c
	mov r0, r5
	cmp r5, #0
	bne _0210EBA4
_0210EBB8:
	mov r0, r4
	bl FUN_ov16_0210e76c
_0210EBC0:
	add r6, r6, #1
	cmp r6, #0x22
	add r4, r4, #8
	blt _0210EB88
	ldmfd sp!, {r4, r5, r6, pc}
	arm_func_end FUN_ov16_0210eb78

	arm_func_start FUN_ov16_0210ebd4
FUN_ov16_0210ebd4: ; 0x0210EBD4
	stmfd sp!, {r4, r5, r6, lr}
	add r0, r0, #0x214
	mov r6, r1
	add r5, r0, #0xc00
	mov r4, #0
_0210EBE8:
	mov r0, r5
	bl FUN_ov16_0210e784
	cmp r0, #0
	bne _0210EC1C
	ldr r0, [r5]
	cmp r0, #0
	beq _0210EC1C
_0210EC04:
	ldrh r1, [r0, #0xc]
	tst r1, r6
	ldmnefd sp!, {r4, r5, r6, pc}
	ldr r0, [r0, #0x14]
	cmp r0, #0
	bne _0210EC04
_0210EC1C:
	add r4, r4, #1
	cmp r4, #0x22
	add r5, r5, #8
	blt _0210EBE8
	mov r0, #0
	ldmfd sp!, {r4, r5, r6, pc}
	arm_func_end FUN_ov16_0210ebd4

	arm_func_start FUN_ov16_0210ec34
FUN_ov16_0210ec34: ; 0x0210EC34
	stmfd sp!, {r4, r5, r6, r7, r8, lr}
	mov r8, r0
	add r0, r8, #0x214
	mov r6, r2
	mov r4, #0
	mov r7, r1
	str r4, [r6]
	add r5, r0, #0xc00
_0210EC54:
	mov r0, r5
	bl FUN_ov16_0210e784
	cmp r0, #0
	bne _0210ECA0
	ldr r1, [r5]
	cmp r1, #0
	beq _0210ECA0
	ldr r2, [r8, #0xf24]
_0210EC74:
	ldrh r0, [r1, #0x32]
	cmp r0, r2
	blt _0210EC94
	ldrh r0, [r1, #0xc]
	tst r0, r7
	strne r1, [r6]
	movne r0, #1
	ldmnefd sp!, {r4, r5, r6, r7, r8, pc}
_0210EC94:
	ldr r1, [r1, #0x14]
	cmp r1, #0
	bne _0210EC74
_0210ECA0:
	add r4, r4, #1
	cmp r4, #0x22
	add r5, r5, #8
	blt _0210EC54
	mov r0, #0
	ldmfd sp!, {r4, r5, r6, r7, r8, pc}
	arm_func_end FUN_ov16_0210ec34

	arm_func_start FUN_ov16_0210ecb8
FUN_ov16_0210ecb8: ; 0x0210ECB8
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, lr}
	ldrb r8, [sp, #0x20]
	mov r7, r0
	mov r6, r1
	mov r5, r2
	mov r4, r3
	cmp r8, #0
	beq _0210ECE0
	bl FUN_ov16_0210ed80
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
_0210ECE0:
	cmp r4, #0
	movne r0, #0
	strne r0, [r4]
	add r0, r7, #0x214
	add r9, r0, #0xc00
	mov r8, #0
_0210ECF8:
	mov r0, r9
	bl FUN_ov16_0210e784
	cmp r0, #0
	bne _0210ED68
	ldr r0, [r9]
	cmp r0, #0
	beq _0210ED68
	ldr r1, [r7, #0xf24]
_0210ED18:
	ldrh r2, [r0, #0x32]
	cmp r2, r1
	ldrgesh r3, [r0]
	cmpge r6, r3
	ldrgesh r2, [r0, #4]
	addge r2, r3, r2
	cmpge r2, r6
	ldrgesh r3, [r0, #2]
	cmpge r5, r3
	ldrgesh r2, [r0, #6]
	addge r2, r3, r2
	cmpge r2, r5
	blt _0210ED5C
	cmp r4, #0
	strne r0, [r4]
	ldrh r0, [r0, #8]
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
_0210ED5C:
	ldr r0, [r0, #0x14]
	cmp r0, #0
	bne _0210ED18
_0210ED68:
	add r8, r8, #1
	cmp r8, #0x22
	add r9, r9, #8
	blt _0210ECF8
	mov r0, #0
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
	arm_func_end FUN_ov16_0210ecb8

	arm_func_start FUN_ov16_0210ed80
FUN_ov16_0210ed80: ; 0x0210ED80
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, lr}
	mov r10, r0
	add r0, r10, #0x214
	movs r11, r3
	mov r7, #0
	mov r9, r1
	mov r8, r2
	mvn r6, #0
	strne r7, [r11]
	add r5, r0, #0xc00
	mov r4, #0
_0210EDAC:
	mov r0, r5
	bl FUN_ov16_0210e784
	cmp r0, #0
	bne _0210EE18
	ldr r1, [r5]
	cmp r1, #0
	beq _0210EE18
	ldr r2, [r10, #0xf24]
_0210EDCC:
	ldrh r0, [r1, #0x32]
	cmp r0, r2
	ldrgesh r12, [r1]
	cmpge r9, r12
	ldrgesh r3, [r1, #4]
	addge r3, r12, r3
	cmpge r3, r9
	ldrgesh r12, [r1, #2]
	cmpge r8, r12
	ldrgesh r3, [r1, #6]
	addge r3, r12, r3
	cmpge r3, r8
	blt _0210EE0C
	cmp r6, r0
	movlt r6, r0
	movlt r7, r1
_0210EE0C:
	ldr r1, [r1, #0x14]
	cmp r1, #0
	bne _0210EDCC
_0210EE18:
	add r4, r4, #1
	cmp r4, #0x22
	add r5, r5, #8
	blt _0210EDAC
	cmp r7, #0
	beq _0210EE40
	cmp r11, #0
	strne r7, [r11]
	ldrh r0, [r7, #8]
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_0210EE40:
	mov r0, #0
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
	arm_func_end FUN_ov16_0210ed80

	arm_func_start FUN_ov16_0210ee48
FUN_ov16_0210ee48: ; 0x0210EE48
	cmp r1, #0
	beq _0210EE70
	ldrb r2, [r1, #0x10]
	cmp r2, #0
	bne _0210EE70
	ldrh r1, [r1, #0x32]
	ldr r0, [r0, #0xf24]
	cmp r1, r0
	movge r0, #1
	bxge lr
_0210EE70:
	mov r0, #0
	bx lr
	arm_func_end FUN_ov16_0210ee48

	arm_func_start FUN_ov16_0210ee78
FUN_ov16_0210ee78: ; 0x0210EE78
	str r1, [r0, #0xf24]
	bx lr
	arm_func_end FUN_ov16_0210ee78

	arm_func_start FUN_ov16_0210ee80
FUN_ov16_0210ee80: ; 0x0210EE80
	stmfd sp!, {r4, lr}
	movs r4, r1
	ldmeqfd sp!, {r4, pc}
	bl FUN_ov16_0210ee48
	cmp r0, #0
	bne _0210EEB0
	ldr r1, [r4, #0x24]
	cmp r1, #0
	ldmeqfd sp!, {r4, pc}
	mov r0, r4
	blx r1
	ldmfd sp!, {r4, pc}
_0210EEB0:
	ldrb r0, [r4, #0xe]
	cmp r0, #1
	bne _0210EED4
	ldr r1, [r4, #0x1c]
	cmp r1, #0
	ldmeqfd sp!, {r4, pc}
	mov r0, r4
	blx r1
	ldmfd sp!, {r4, pc}
_0210EED4:
	ldr r1, [r4, #0x20]
	cmp r1, #0
	ldmeqfd sp!, {r4, pc}
	mov r0, r4
	blx r1
	ldmfd sp!, {r4, pc}
	arm_func_end FUN_ov16_0210ee80

	arm_func_start FUN_ov16_0210eeec
FUN_ov16_0210eeec: ; 0x0210EEEC
	stmfd sp!, {r3, r4, r5, lr}
	mov r5, r0
	bl FUN_ov16_0210e844
	cmp r0, #0
	ldrne r4, [r0]
	cmpne r4, #0
	ldmeqfd sp!, {r3, r4, r5, pc}
_0210EF08:
	mov r0, r5
	mov r1, r4
	bl FUN_ov16_0210ee80
	ldr r4, [r4, #0x14]
	cmp r4, #0
	bne _0210EF08
	ldmfd sp!, {r3, r4, r5, pc}
	arm_func_end FUN_ov16_0210eeec

	arm_func_start FUN_ov16_0210ef24
FUN_ov16_0210ef24: ; 0x0210EF24
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	mov r7, r0
	add r0, r7, #0x214
	add r4, r0, #0xc00
	mov r6, #0
_0210EF38:
	mov r0, r4
	bl FUN_ov16_0210e784
	cmp r0, #0
	bne _0210EF74
	ldr r5, [r4]
	cmp r5, #0
	beq _0210EF6C
_0210EF54:
	mov r0, r7
	mov r1, r5
	bl FUN_ov16_0210ee80
	ldr r5, [r5, #0x14]
	cmp r5, #0
	bne _0210EF54
_0210EF6C:
	mov r0, r4
	bl FUN_ov16_0210e76c
_0210EF74:
	add r6, r6, #1
	cmp r6, #0x22
	add r4, r4, #8
	blt _0210EF38
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
	arm_func_end FUN_ov16_0210ef24

	arm_func_start FUN_ov16_0210ef88
FUN_ov16_0210ef88: ; 0x0210EF88
	stmfd sp!, {r4, lr}
	mov r4, r1
	bl FUN_ov16_0210ee48
	cmp r0, #0
	ldmeqfd sp!, {r4, pc}
	ldr r1, [r4, #0x28]
	mov r0, r4
	blx r1
	ldmfd sp!, {r4, pc}
	arm_func_end FUN_ov16_0210ef88

	arm_func_start FUN_ov16_0210efac
FUN_ov16_0210efac: ; 0x0210EFAC
	stmfd sp!, {r4, lr}
	mov r4, r0
	bl FUN_ov16_0210e7d0
	mov r1, r0
	mov r0, r4
	bl FUN_ov16_0210ef88
	ldmfd sp!, {r4, pc}
	arm_func_end FUN_ov16_0210efac

	arm_func_start FUN_ov16_0210efc8
FUN_ov16_0210efc8: ; 0x0210EFC8
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, lr}
	sub sp, sp, #0x10
	mov r4, #0
	mov r9, r2
	mov r10, r1
	add r0, sp, #0
	mov r1, r4
	mov r2, #0x10
	mov r11, r3
	bl MI_CpuFill8
	ldr r6, _0210F124 ; =g3DPlaneCtrl
	mov r1, r10
	ldr r0, [r6]
	bl _ZN12C3DPlaneCtrl9getSetExtEi
	movs r7, r0
	addeq sp, sp, #0x10
	moveq r0, r4
	ldmeqfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
	ldr r3, [r7, #8]
	ldr r2, [r7, #0xc]
	mov r0, r3, asr #0xb
	mov r1, r2, asr #0xb
	add r4, r3, r0, lsr #20
	add r5, r2, r1, lsr #20
	mov r8, #1
	b _0210F0CC
_0210F030:
	ldr r0, [r6]
	mov r1, r10
	mov r2, r8
	bl _ZN12C3DPlaneCtrl10getPartExtEii
	cmp r0, #0
	addeq sp, sp, #0x10
	moveq r0, #0
	ldmeqfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
	ldr r3, [r0, #0x1c]
	ldr r12, [r0, #0x20]
	mov r1, r3, asr #0xb
	add r1, r3, r1, lsr #20
	ldrsh r3, [r0, #8]
	mov r2, r12, asr #0xb
	add r2, r12, r2, lsr #20
	ldrsh r0, [r0, #0xa]
	mov r12, r1, asr #0xc
	cmp r8, #1
	mov lr, r2, asr #0xc
	add r1, r3, r1, asr #12
	add r0, r0, r2, asr #12
	streq r12, [sp]
	streq lr, [sp, #4]
	streq r1, [sp, #8]
	streq r0, [sp, #0xc]
	beq _0210F0C8
	ldr r2, [sp]
	cmp r2, r12
	ldr r2, [sp, #4]
	strgt r12, [sp]
	cmp r2, lr
	ldr r2, [sp, #8]
	strgt lr, [sp, #4]
	cmp r2, r1
	strlt r1, [sp, #8]
	ldr r1, [sp, #0xc]
	cmp r1, r0
	strlt r0, [sp, #0xc]
_0210F0C8:
	add r8, r8, #1
_0210F0CC:
	ldrb r0, [r7, #6]
	cmp r8, r0
	ble _0210F030
	ldr r0, [sp]
	ldr r2, [sp, #0x38]
	add r0, r0, r4, asr #12
	str r0, [r9]
	ldr r0, [sp, #4]
	ldr r1, [sp, #0x3c]
	add r0, r0, r5, asr #12
	str r0, [r11]
	ldr r4, [sp, #8]
	ldr r3, [sp]
	mov r0, #1
	sub r3, r4, r3
	str r3, [r2]
	ldr r3, [sp, #0xc]
	ldr r2, [sp, #4]
	sub r2, r3, r2
	str r2, [r1]
	add sp, sp, #0x10
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_0210F124: .word g3DPlaneCtrl
	arm_func_end FUN_ov16_0210efc8

	arm_func_start FUN_ov16_0210f128
FUN_ov16_0210f128: ; 0x0210F128
	stmfd sp!, {r4, r5, r6, r7, r8, lr}
	sub sp, sp, #0x10
	ldr r7, _0210F208 ; =g3DPlaneCtrl
	mov r5, r1
	ldr r0, [r7]
	mov r4, r2
	mov r6, r3
	bl _ZN12C3DPlaneCtrl9getSetExtEi
	cmp r0, #0
	addeq sp, sp, #0x10
	moveq r0, #0
	ldmeqfd sp!, {r4, r5, r6, r7, r8, pc}
	ldr r8, [r0, #8]
	ldr lr, [r0, #0xc]
	ldr r0, [r7]
	mov r3, r8, asr #0xb
	mov r2, r4
	mov r12, lr, asr #0xb
	mov r1, r5
	add r4, r8, r3, lsr #20
	add r5, lr, r12, lsr #20
	bl _ZN12C3DPlaneCtrl10getPartExtEii
	cmp r0, #0
	addeq sp, sp, #0x10
	moveq r0, #0
	ldmeqfd sp!, {r4, r5, r6, r7, r8, pc}
	ldr r3, [r0, #0x1c]
	ldr r2, [r0, #0x20]
	mov r1, r3, asr #0xb
	add r12, r3, r1, lsr #20
	mov r3, r12, asr #0xc
	mov r1, r2, asr #0xb
	ldrsh r7, [r0, #8]
	ldrsh r0, [r0, #0xa]
	add lr, r2, r1, lsr #20
	mov r2, lr, asr #0xc
	add r1, r7, r12, asr #12
	add r0, r0, lr, asr #12
	add r7, r3, r4, asr #12
	ldr r4, [sp, #0x28]
	str r7, [r6]
	add r6, r2, r5, asr #12
	ldr r5, [sp, #0x2c]
	str r6, [r4]
	sub r6, r1, r12, asr #12
	ldr r4, [sp, #0x30]
	str r6, [r5]
	sub r5, r0, lr, asr #12
	str r3, [sp]
	str r2, [sp, #4]
	str r1, [sp, #8]
	str r0, [sp, #0xc]
	str r5, [r4]
	mov r0, #1
	add sp, sp, #0x10
	ldmfd sp!, {r4, r5, r6, r7, r8, pc}
_0210F208: .word g3DPlaneCtrl
	arm_func_end FUN_ov16_0210f128

	arm_func_start FUN_ov16_0210f20c
FUN_ov16_0210f20c: ; 0x0210F20C
	stmfd sp!, {r4, r5, r6, lr}
	sub sp, sp, #8
	mov r6, r0
	add r3, r6, #0x328
	mov r5, r2
	mov r4, #0
	add r2, r3, #0xc00
	str r4, [sp, #4]
	bl FUN_ov16_0210e8b4
	cmp r0, #3
	addls pc, pc, r0, lsl #2
	b _0210F3F4
_0210F23C: ; jump table
	b _0210F24C ; case 0
	b _0210F254 ; case 1
	b _0210F2A4 ; case 2
	b _0210F338 ; case 3
_0210F24C:
	str r4, [r6, #0xf34]
	b _0210F3F4
_0210F254:
	str r5, [sp]
	add r0, r6, #0xf00
	ldrsh r1, [r0, #0x2c]
	ldrsh r2, [r0, #0x2e]
	add r3, sp, #4
	mov r0, r6
	bl FUN_ov16_0210ecb8
	str r0, [r6, #0xf34]
	ldr r0, [sp, #4]
	cmp r0, #0
	ldrne r1, [r0, #0x1c]
	cmpne r1, #0
	beq _0210F28C
	blx r1
_0210F28C:
	ldr r0, [r6, #0xf34]
	cmp r0, #0
	ble _0210F3F4
	add sp, sp, #8
	mov r0, #1
	ldmfd sp!, {r4, r5, r6, pc}
_0210F2A4:
	ldr r1, [r6, #0xf34]
	mov r0, r6
	mov r1, r1, lsl #0x10
	mov r1, r1, lsr #0x10
	bl FUN_ov16_0210e7d0
	str r0, [sp, #4]
	cmp r0, #0
	beq _0210F320
	bl FUN_ov16_0210e6f4
	cmp r0, #0
	bne _0210F320
	str r5, [sp]
	add r0, r6, #0xf00
	ldrsh r1, [r0, #0x28]
	ldrsh r2, [r0, #0x2a]
	mov r0, r6
	mov r3, r4
	bl FUN_ov16_0210ecb8
	ldr r1, [r6, #0xf34]
	cmp r1, r0
	beq _0210F30C
	ldr r0, [sp, #4]
	ldr r1, [r0, #0x20]
	cmp r1, #0
	beq _0210F320
	b _0210F31C
_0210F30C:
	ldr r0, [sp, #4]
	ldr r1, [r0, #0x1c]
	cmp r1, #0
	beq _0210F320
_0210F31C:
	blx r1
_0210F320:
	ldrb r0, [r6, #0xf31]
	add sp, sp, #8
	cmp r0, #0
	movne r0, #3
	moveq r0, #5
	ldmfd sp!, {r4, r5, r6, pc}
_0210F338:
	ldr r0, [r6, #0xf34]
	cmp r0, #0
	addle sp, sp, #8
	movle r0, r4
	ldmlefd sp!, {r4, r5, r6, pc}
	mov r1, r0, lsl #0x10
	mov r0, r6
	mov r1, r1, lsr #0x10
	bl FUN_ov16_0210e7d0
	str r0, [sp, #4]
	cmp r0, #0
	ldrne r1, [r0, #0x20]
	cmpne r1, #0
	beq _0210F374
	blx r1
_0210F374:
	ldr r0, [sp, #4]
	mov r4, #0
	cmp r0, #0
	beq _0210F390
	bl FUN_ov16_0210e6f4
	cmp r0, #0
	movne r4, #1
_0210F390:
	ldrb r0, [r6, #0xf31]
	cmp r0, #0
	cmpne r4, #0
	addne sp, sp, #8
	movne r0, #4
	ldmnefd sp!, {r4, r5, r6, pc}
	str r5, [sp]
	add r0, r6, #0xf00
	mov r5, #0
	ldrsh r1, [r0, #0x28]
	ldrsh r2, [r0, #0x2a]
	mov r0, r6
	mov r3, r5
	bl FUN_ov16_0210ecb8
	ldr r1, [r6, #0xf34]
	cmp r1, r0
	beq _0210F3E8
	cmp r4, #0
	movne r5, #4
	add sp, sp, #8
	mov r0, r5
	ldmfd sp!, {r4, r5, r6, pc}
_0210F3E8:
	add sp, sp, #8
	mov r0, #2
	ldmfd sp!, {r4, r5, r6, pc}
_0210F3F4:
	mov r0, #0
	add sp, sp, #8
	ldmfd sp!, {r4, r5, r6, pc}
	arm_func_end FUN_ov16_0210f20c

	arm_func_start FUN_ov16_0210f400
FUN_ov16_0210f400: ; 0x0210F400
	stmfd sp!, {r3, r4, r5, r6, lr}
	sub sp, sp, #4
	mov r4, #0
	mov r6, r0
	mov r5, r1
	str r4, [sp]
	bl FUN_ov16_0210f468
	cmp r0, #0
	addne sp, sp, #4
	movne r0, r4
	ldmnefd sp!, {r3, r4, r5, r6, pc}
	add r2, sp, #0
	mov r0, r6
	mov r1, r5
	bl FUN_ov16_0210ec34
	cmp r0, #0
	addeq sp, sp, #4
	moveq r0, r4
	ldmeqfd sp!, {r3, r4, r5, r6, pc}
	ldr r1, [sp]
	mov r0, r6
	bl FUN_ov16_0210ef88
	ldr r0, [sp]
	ldrh r0, [r0, #8]
	add sp, sp, #4
	ldmfd sp!, {r3, r4, r5, r6, pc}
	arm_func_end FUN_ov16_0210f400

	arm_func_start FUN_ov16_0210f468
FUN_ov16_0210f468: ; 0x0210F468
	ldrb r0, [r0, #0xf30]
	cmp r0, #0
	movne r0, #1
	moveq r0, #0
	bx lr
	arm_func_end FUN_ov16_0210f468

	arm_func_start FUN_ov16_0210f47c
FUN_ov16_0210f47c: ; 0x0210F47C
	str r1, [r0, #0xf34]
	bx lr
	arm_func_end FUN_ov16_0210f47c

	arm_func_start FUN_ov16_0210f484
FUN_ov16_0210f484: ; 0x0210F484
	ldr r0, [r0, #0xf34]
	bx lr
	arm_func_end FUN_ov16_0210f484

	arm_func_start FUN_ov16_0210f48c
FUN_ov16_0210f48c: ; 0x0210F48C
	cmp r1, #0
	addne r0, r0, #0xf00
	ldrnesh r2, [r0, #0x28]
	strneh r2, [r1]
	ldrnesh r0, [r0, #0x2a]
	strneh r0, [r1, #2]
	bx lr
	arm_func_end FUN_ov16_0210f48c

	arm_func_start FUN_ov16_0210f4a8
FUN_ov16_0210f4a8: ; 0x0210F4A8
	stmfd sp!, {r3, r4, r5, r6, r7, r8, lr}
	sub sp, sp, #0x1c
	ldr r1, _0210F614 ; =gSprButtonCtrl
	mov r6, r0
	ldr r0, [r1]
	mov r1, r6
	mov r4, #0
	bl FUN_ov16_0210ee48
	cmp r0, #0
	bne _0210F4E0
	mov r0, r6
	bl FUN_ov16_0210f7a0
	add sp, sp, #0x1c
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, pc}
_0210F4E0:
	ldrb r0, [r6, #0xe]
	cmp r0, #1
	bne _0210F530
	ldrb r0, [r6, #0xf]
	cmp r0, #0
	beq _0210F530
	ldrh r1, [r6, #0x36]
	sub r0, r4, #1
	stmia sp, {r1, r4}
	str r4, [sp, #8]
	str r0, [sp, #0xc]
	str r4, [sp, #0x10]
	str r4, [sp, #0x14]
	str r4, [sp, #0x18]
	ldr r0, _0210F618 ; =gSprAnimCtrl
	ldrb r1, [r6, #0x11]
	ldrb r2, [r6, #0x38]
	ldrh r3, [r6, #0x34]
	ldr r0, [r0]
	bl FUN_ov16_0210e238
_0210F530:
	add r0, r6, #0x3a
	bl FUN_ov16_0210e730
	mov r8, r0
	add r0, r6, #0x3a
	bl FUN_ov16_0210e744
	mov r7, r0
	add r0, r6, #0x3a
	bl FUN_ov16_0210e758
	mov r5, r0
	cmp r8, #0
	beq _0210F598
	ldrh r1, [r6, #0x36]
	ldr r0, _0210F618 ; =gSprAnimCtrl
	stmia sp, {r1, r4}
	ldrb r1, [r6, #0x3a]
	str r1, [sp, #8]
	ldrb r1, [r6, #0x3b]
	str r1, [sp, #0xc]
	str r4, [sp, #0x10]
	str r4, [sp, #0x14]
	ldrb r1, [r6, #0x11]
	ldrb r2, [r6, #0x38]
	ldrh r3, [r6, #0x34]
	ldr r0, [r0]
	bl FUN_ov16_0210e368
	b _0210F5D0
_0210F598:
	cmp r7, #0
	beq _0210F5D0
	ldrh r1, [r6, #0x36]
	ldr r0, _0210F618 ; =gSprAnimCtrl
	stmia sp, {r1, r4}
	ldrb r1, [r6, #0x3b]
	str r1, [sp, #8]
	str r4, [sp, #0xc]
	str r4, [sp, #0x10]
	ldrb r1, [r6, #0x11]
	ldrb r2, [r6, #0x38]
	ldrh r3, [r6, #0x34]
	ldr r0, [r0]
	bl FUN_ov16_0210e3f0
_0210F5D0:
	cmp r5, #0
	beq _0210F608
	ldrh r1, [r6, #0x36]
	ldr r0, _0210F618 ; =gSprAnimCtrl
	stmia sp, {r1, r4}
	ldrb r1, [r6, #0x3c]
	str r1, [sp, #8]
	str r4, [sp, #0xc]
	str r4, [sp, #0x10]
	ldrb r1, [r6, #0x11]
	ldrb r2, [r6, #0x38]
	ldrh r3, [r6, #0x34]
	ldr r0, [r0]
	bl FUN_ov16_0210e470
_0210F608:
	strb r4, [r6, #0xe]
	add sp, sp, #0x1c
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, pc}
_0210F614: .word gSprButtonCtrl
_0210F618: .word gSprAnimCtrl
	arm_func_end FUN_ov16_0210f4a8

	arm_func_start FUN_ov16_0210f61c
FUN_ov16_0210f61c: ; 0x0210F61C
	stmfd sp!, {r4, r5, r6, r7, lr}
	sub sp, sp, #0x1c
	ldr r1, _0210F798 ; =gSprButtonCtrl
	mov r5, r0
	ldr r0, [r1]
	mov r1, r5
	bl FUN_ov16_0210ee48
	cmp r0, #0
	bne _0210F650
	mov r0, r5
	bl FUN_ov16_0210f7a0
	add sp, sp, #0x1c
	ldmfd sp!, {r4, r5, r6, r7, pc}
_0210F650:
	ldrb r0, [r5, #0xe]
	cmp r0, #1
	ldrneb r0, [r5, #0xf]
	cmpne r0, #0
	beq _0210F6A4
	ldrh r2, [r5, #0x36]
	mov r1, #0
	mov r0, #1
	str r2, [sp]
	str r1, [sp, #4]
	str r1, [sp, #8]
	str r0, [sp, #0xc]
	str r1, [sp, #0x10]
	str r1, [sp, #0x14]
	str r1, [sp, #0x18]
	ldr r0, _0210F79C ; =gSprAnimCtrl
	ldrb r1, [r5, #0x11]
	ldrb r2, [r5, #0x38]
	ldrh r3, [r5, #0x34]
	ldr r0, [r0]
	bl FUN_ov16_0210e238
_0210F6A4:
	add r0, r5, #0x3e
	bl FUN_ov16_0210e730
	mov r7, r0
	add r0, r5, #0x3e
	bl FUN_ov16_0210e744
	mov r6, r0
	add r0, r5, #0x3e
	bl FUN_ov16_0210e758
	mov r4, r0
	cmp r7, #0
	beq _0210F710
	ldrh r1, [r5, #0x36]
	mov r2, #0
	ldr r0, _0210F79C ; =gSprAnimCtrl
	stmia sp, {r1, r2}
	ldrb r1, [r5, #0x3e]
	str r1, [sp, #8]
	ldrb r1, [r5, #0x3f]
	str r1, [sp, #0xc]
	str r2, [sp, #0x10]
	str r2, [sp, #0x14]
	ldrb r1, [r5, #0x11]
	ldrb r2, [r5, #0x38]
	ldrh r3, [r5, #0x34]
	ldr r0, [r0]
	bl FUN_ov16_0210e368
	b _0210F74C
_0210F710:
	cmp r6, #0
	beq _0210F74C
	ldrh r1, [r5, #0x36]
	mov r2, #0
	ldr r0, _0210F79C ; =gSprAnimCtrl
	stmia sp, {r1, r2}
	ldrb r1, [r5, #0x3f]
	str r1, [sp, #8]
	str r2, [sp, #0xc]
	str r2, [sp, #0x10]
	ldrb r1, [r5, #0x11]
	ldrb r2, [r5, #0x38]
	ldrh r3, [r5, #0x34]
	ldr r0, [r0]
	bl FUN_ov16_0210e3f0
_0210F74C:
	cmp r4, #0
	beq _0210F788
	ldrh r1, [r5, #0x36]
	mov r2, #0
	ldr r0, _0210F79C ; =gSprAnimCtrl
	stmia sp, {r1, r2}
	ldrb r1, [r5, #0x40]
	str r1, [sp, #8]
	str r2, [sp, #0xc]
	str r2, [sp, #0x10]
	ldrb r1, [r5, #0x11]
	ldrb r2, [r5, #0x38]
	ldrh r3, [r5, #0x34]
	ldr r0, [r0]
	bl FUN_ov16_0210e470
_0210F788:
	mov r0, #1
	strb r0, [r5, #0xe]
	add sp, sp, #0x1c
	ldmfd sp!, {r4, r5, r6, r7, pc}
_0210F798: .word gSprButtonCtrl
_0210F79C: .word gSprAnimCtrl
	arm_func_end FUN_ov16_0210f61c

	arm_func_start FUN_ov16_0210f7a0
FUN_ov16_0210f7a0: ; 0x0210F7A0
	stmfd sp!, {r4, r5, r6, r7, lr}
	sub sp, sp, #0x1c
	mov r5, r0
	ldrb r0, [r5, #0xe]
	cmp r0, #1
	bne _0210F804
	ldrb r0, [r5, #0xf]
	cmp r0, #0
	beq _0210F804
	ldrh r2, [r5, #0x36]
	mov r1, #0
	sub r0, r1, #1
	str r2, [sp]
	str r1, [sp, #4]
	str r1, [sp, #8]
	str r0, [sp, #0xc]
	str r1, [sp, #0x10]
	str r1, [sp, #0x14]
	str r1, [sp, #0x18]
	ldr r0, _0210F8F8 ; =gSprAnimCtrl
	ldrb r1, [r5, #0x11]
	ldrb r2, [r5, #0x38]
	ldrh r3, [r5, #0x34]
	ldr r0, [r0]
	bl FUN_ov16_0210e238
_0210F804:
	add r0, r5, #0x42
	bl FUN_ov16_0210e730
	mov r7, r0
	add r0, r5, #0x42
	bl FUN_ov16_0210e744
	mov r6, r0
	add r0, r5, #0x42
	bl FUN_ov16_0210e758
	mov r4, r0
	cmp r7, #0
	beq _0210F870
	ldrh r1, [r5, #0x36]
	mov r2, #0
	ldr r0, _0210F8F8 ; =gSprAnimCtrl
	stmia sp, {r1, r2}
	ldrb r1, [r5, #0x42]
	str r1, [sp, #8]
	ldrb r1, [r5, #0x43]
	str r1, [sp, #0xc]
	str r2, [sp, #0x10]
	str r2, [sp, #0x14]
	ldrb r1, [r5, #0x11]
	ldrb r2, [r5, #0x38]
	ldrh r3, [r5, #0x34]
	ldr r0, [r0]
	bl FUN_ov16_0210e368
	b _0210F8AC
_0210F870:
	cmp r6, #0
	beq _0210F8AC
	ldrh r1, [r5, #0x36]
	mov r2, #0
	ldr r0, _0210F8F8 ; =gSprAnimCtrl
	stmia sp, {r1, r2}
	ldrb r1, [r5, #0x43]
	str r1, [sp, #8]
	str r2, [sp, #0xc]
	str r2, [sp, #0x10]
	ldrb r1, [r5, #0x11]
	ldrb r2, [r5, #0x38]
	ldrh r3, [r5, #0x34]
	ldr r0, [r0]
	bl FUN_ov16_0210e3f0
_0210F8AC:
	cmp r4, #0
	beq _0210F8E8
	ldrh r1, [r5, #0x36]
	mov r2, #0
	ldr r0, _0210F8F8 ; =gSprAnimCtrl
	stmia sp, {r1, r2}
	ldrb r1, [r5, #0x44]
	str r1, [sp, #8]
	str r2, [sp, #0xc]
	str r2, [sp, #0x10]
	ldrb r1, [r5, #0x11]
	ldrb r2, [r5, #0x38]
	ldrh r3, [r5, #0x34]
	ldr r0, [r0]
	bl FUN_ov16_0210e470
_0210F8E8:
	mov r0, #2
	strb r0, [r5, #0xe]
	add sp, sp, #0x1c
	ldmfd sp!, {r4, r5, r6, r7, pc}
_0210F8F8: .word gSprAnimCtrl
	arm_func_end FUN_ov16_0210f7a0

	arm_func_start FUN_ov16_0210f8fc
FUN_ov16_0210f8fc: ; 0x0210F8FC
	stmfd sp!, {r4, r5, r6, lr}
	mov r6, r0
	bl FUN_ov16_0210f61c
	ldr r4, _0210F93C ; =gSprAnimCtrl
	mov r5, #4
	ldrb r1, [r6, #0x11]
	ldr r0, [r4]
	mov r2, r5
	bl FUN_ov16_0210e5f0
	mov r0, r6
	bl FUN_ov16_0210f4a8
	ldrb r1, [r6, #0x11]
	ldr r0, [r4]
	mov r2, r5
	bl FUN_ov16_0210e5f0
	ldmfd sp!, {r4, r5, r6, pc}
_0210F93C: .word gSprAnimCtrl
	arm_func_end FUN_ov16_0210f8fc

	arm_func_start FUN_ov16_0210f940
FUN_ov16_0210f940: ; FUN_ov16_0210f940
	stmfd sp!, {r4, r5, lr}
	sub sp, sp, #0x14
	mov r4, #1
	str r4, [sp]
	mov r1, #0
	stmib sp, {r1, r4}
	str r1, [sp, #0xc]
	mov r5, r0
	str r1, [sp, #0x10]
	ldr r0, _0210F988 ; =gSprAnimCtrl
	ldrb r1, [r5, #0x11]
	ldrb r2, [r5, #0x38]
	ldrh r3, [r5, #0x34]
	ldr r0, [r0]
	bl FUN_ov16_0210e4f0
	strb r4, [r5, #0xe]
	add sp, sp, #0x14
	ldmfd sp!, {r4, r5, pc}
_0210F988: .word gSprAnimCtrl
	arm_func_end FUN_ov16_0210f940

	arm_func_start FUN_ov16_0210f98c
FUN_ov16_0210f98c: ; 0x0210F98C
	stmfd sp!, {r4, r5, r6, r7, lr}
	sub sp, sp, #0x14
	mov r6, #1
	str r6, [sp]
	mov r5, #0
	stmib sp, {r5, r6}
	str r5, [sp, #0xc]
	mov r7, r0
	str r5, [sp, #0x10]
	ldr r4, _0210FA1C ; =gSprAnimCtrl
	ldrb r1, [r7, #0x11]
	ldrb r2, [r7, #0x38]
	ldrh r3, [r7, #0x34]
	ldr r0, [r4]
	bl FUN_ov16_0210e4f0
	mov r0, #2
	stmia sp, {r0, r5, r6}
	str r5, [sp, #0xc]
	str r5, [sp, #0x10]
	ldrb r1, [r7, #0x11]
	ldrb r2, [r7, #0x38]
	ldrh r3, [r7, #0x34]
	ldr r0, [r4]
	bl FUN_ov16_0210e4f0
	mov r0, #3
	stmia sp, {r0, r5, r6}
	str r5, [sp, #0xc]
	str r5, [sp, #0x10]
	ldrb r1, [r7, #0x11]
	ldrb r2, [r7, #0x38]
	ldrh r3, [r7, #0x34]
	ldr r0, [r4]
	bl FUN_ov16_0210e4f0
	strb r6, [r7, #0xe]
	add sp, sp, #0x14
	ldmfd sp!, {r4, r5, r6, r7, pc}
_0210FA1C: .word gSprAnimCtrl
	arm_func_end FUN_ov16_0210f98c

	arm_func_start FUN_ov16_0210fa20
FUN_ov16_0210fa20: ; FUN_ov16_0210fa20
	stmfd sp!, {r4, r5, lr}
	sub sp, sp, #0x14
	mov r1, #1
	str r1, [sp]
	mov r4, #0
	str r4, [sp, #4]
	str r4, [sp, #8]
	str r4, [sp, #0xc]
	mov r5, r0
	str r4, [sp, #0x10]
	ldr r0, _0210FA6C ; =gSprAnimCtrl
	ldrb r1, [r5, #0x11]
	ldrb r2, [r5, #0x38]
	ldrh r3, [r5, #0x34]
	ldr r0, [r0]
	bl FUN_ov16_0210e4f0
	strb r4, [r5, #0xe]
	add sp, sp, #0x14
	ldmfd sp!, {r4, r5, pc}
_0210FA6C: .word gSprAnimCtrl
	arm_func_end FUN_ov16_0210fa20

	arm_func_start FUN_ov16_0210fa70
FUN_ov16_0210fa70: ; 0x0210FA70
	stmfd sp!, {r3, r4, r5, r6, lr}
	sub sp, sp, #0x14
	mov r1, #1
	str r1, [sp]
	mov r5, #0
	str r5, [sp, #4]
	str r5, [sp, #8]
	str r5, [sp, #0xc]
	mov r6, r0
	str r5, [sp, #0x10]
	ldr r4, _0210FB0C ; =gSprAnimCtrl
	ldrb r1, [r6, #0x11]
	ldrb r2, [r6, #0x38]
	ldrh r3, [r6, #0x34]
	ldr r0, [r4]
	bl FUN_ov16_0210e4f0
	mov r0, #2
	stmia sp, {r0, r5}
	str r5, [sp, #8]
	str r5, [sp, #0xc]
	str r5, [sp, #0x10]
	ldrb r1, [r6, #0x11]
	ldrb r2, [r6, #0x38]
	ldrh r3, [r6, #0x34]
	ldr r0, [r4]
	bl FUN_ov16_0210e4f0
	mov r0, #3
	stmia sp, {r0, r5}
	str r5, [sp, #8]
	str r5, [sp, #0xc]
	str r5, [sp, #0x10]
	ldrb r1, [r6, #0x11]
	ldrb r2, [r6, #0x38]
	ldrh r3, [r6, #0x34]
	ldr r0, [r4]
	bl FUN_ov16_0210e4f0
	strb r5, [r6, #0xe]
	add sp, sp, #0x14
	ldmfd sp!, {r3, r4, r5, r6, pc}
_0210FB0C: .word gSprAnimCtrl
	arm_func_end FUN_ov16_0210fa70

	arm_func_start FUN_ov16_0210fb10
FUN_ov16_0210fb10: ; FUN_ov16_0210fb10
	mov r1, #2
	strb r1, [r0, #0xe]
	bx lr
	arm_func_end FUN_ov16_0210fb10

	arm_func_start FUN_ov16_0210fb1c
FUN_ov16_0210fb1c: ; FUN_ov16_0210fb1c
	stmfd sp!, {r4, r5, r6, lr}
	mov r6, r0
	bl FUN_ov16_0210f940
	ldr r4, _0210FB5C ; =gSprAnimCtrl
	mov r5, #4
	ldrb r1, [r6, #0x11]
	ldr r0, [r4]
	mov r2, r5
	bl FUN_ov16_0210e5f0
	mov r0, r6
	bl FUN_ov16_0210fa20
	ldrb r1, [r6, #0x11]
	ldr r0, [r4]
	mov r2, r5
	bl FUN_ov16_0210e5f0
	ldmfd sp!, {r4, r5, r6, pc}
_0210FB5C: .word gSprAnimCtrl
	arm_func_end FUN_ov16_0210fb1c

	arm_func_start FUN_ov16_0210fb60
FUN_ov16_0210fb60: ; 0x0210FB60
	stmfd sp!, {r4, r5, r6, lr}
	mov r6, r0
	bl FUN_ov16_0210f98c
	ldr r4, _0210FBA0 ; =gSprAnimCtrl
	mov r5, #4
	ldrb r1, [r6, #0x11]
	ldr r0, [r4]
	mov r2, r5
	bl FUN_ov16_0210e5f0
	mov r0, r6
	bl FUN_ov16_0210fa70
	ldrb r1, [r6, #0x11]
	ldr r0, [r4]
	mov r2, r5
	bl FUN_ov16_0210e5f0
	ldmfd sp!, {r4, r5, r6, pc}
_0210FBA0: .word gSprAnimCtrl
	arm_func_end FUN_ov16_0210fb60

	arm_func_start FUN_ov16_0210fba4
FUN_ov16_0210fba4: ; 0x0210FBA4
	stmfd sp!, {r3, r4, r5, lr}
	mov r5, r3
	bl FUN_ov16_0210e9e4
	movs r4, r0
	moveq r0, #0
	ldmeqfd sp!, {r3, r4, r5, pc}
	ldr r12, [sp, #0x18]
	ldr r2, [sp, #0x10]
	ldr r3, [sp, #0x14]
	mov r1, r5
	str r12, [sp]
	bl FUN_ov16_0210e674
	ldr r1, [sp, #0x1c]
	mov r0, r4
	bl FUN_ov16_0210e694
	mov r0, r4
	ldmfd sp!, {r3, r4, r5, pc}
	arm_func_end FUN_ov16_0210fba4

	arm_func_start FUN_ov16_0210fbe8
FUN_ov16_0210fbe8: ; 0x0210FBE8
	stmfd sp!, {r3, r4, r5, lr}
	sub sp, sp, #0x18
	mov r5, r3
	bl FUN_ov16_0210e9e4
	movs r4, r0
	addeq sp, sp, #0x18
	moveq r0, #0
	ldmeqfd sp!, {r3, r4, r5, pc}
	strh r5, [r4, #0x34]
	mov r1, #0
	strb r1, [r4, #0x38]
	add r0, sp, #0xc
	str r0, [sp]
	add r1, sp, #8
	str r1, [sp, #4]
	ldr r0, _0210FC70 ; =gSprButtonCtrl
	add r2, sp, #0x14
	ldr r0, [r0]
	add r3, sp, #0x10
	mov r1, r5
	bl FUN_ov16_0210efc8
	ldr r1, [sp, #8]
	mov r0, r4
	str r1, [sp]
	ldr r1, [sp, #0x14]
	ldr r2, [sp, #0x10]
	ldr r3, [sp, #0xc]
	bl FUN_ov16_0210e674
	ldr r1, [sp, #0x28]
	mov r0, r4
	bl FUN_ov16_0210e694
	mov r0, r4
	add sp, sp, #0x18
	ldmfd sp!, {r3, r4, r5, pc}
_0210FC70: .word gSprButtonCtrl
	arm_func_end FUN_ov16_0210fbe8

	arm_func_start FUN_ov16_0210fc74
FUN_ov16_0210fc74: ; 0x0210FC74
	stmfd sp!, {r4, r5, lr}
	sub sp, sp, #0x1c
	mov r5, r3
	bl FUN_ov16_0210e9e4
	movs r4, r0
	addeq sp, sp, #0x1c
	mov r0, #0
	ldmeqfd sp!, {r4, r5, pc}
	strh r5, [r4, #0x34]
	strb r0, [r4, #0x38]
	add r1, sp, #0x14
	str r1, [sp]
	add r0, sp, #0x10
	str r0, [sp, #4]
	add r1, sp, #0xc
	str r1, [sp, #8]
	ldr r0, _0210FD08 ; =gSprButtonCtrl
	ldr r2, [sp, #0x28]
	ldr r0, [r0]
	add r3, sp, #0x18
	mov r1, r5
	bl FUN_ov16_0210f128
	ldr r1, [sp, #0xc]
	mov r0, r4
	str r1, [sp]
	ldr r1, [sp, #0x18]
	ldr r2, [sp, #0x14]
	ldr r3, [sp, #0x10]
	bl FUN_ov16_0210e674
	ldr r1, [sp, #0x2c]
	mov r0, r4
	bl FUN_ov16_0210e694
	ldr r1, [sp, #0x28]
	mov r0, r4
	strh r1, [r4, #0x36]
	add sp, sp, #0x1c
	ldmfd sp!, {r4, r5, pc}
_0210FD08: .word gSprButtonCtrl
	arm_func_end FUN_ov16_0210fc74

	arm_func_start FUN_ov16_0210fd0c
FUN_ov16_0210fd0c: ; 0x0210FD0C
	stmfd sp!, {r3, r4, r5, lr}
	mov r5, r2
	mov r4, r3
	bl FUN_ov16_0210e7d0
	cmp r0, #0
	moveq r0, #0
	strneh r5, [r0]
	strneh r4, [r0, #2]
	movne r0, #1
	ldmfd sp!, {r3, r4, r5, pc}
	arm_func_end FUN_ov16_0210fd0c


	.section .init, 4
	arm_func_start __sinit_CSprButtonCtrl.cpp
__sinit_CSprButtonCtrl.cpp: ; 0x021181AC
	stmfd sp!, {r3, r4, r5, lr}
	mov r5, #0x2000
	mov r0, r5
	bl FX_Sqrt
	ldr r4, _021181F0 ; =0x02119DFC
	str r0, [r4, #0x10]
	ldr r0, _021181F4 ; =0x00009CCD
	bl FX_Sqrt
	str r0, [r4, #0xc]
	ldr r0, _021181F8 ; =0x0000EA3C
	mov r1, #0x800
	stmib r4, {r0, r1}
	add r0, r5, #0x4e0000
	str r0, [r4]
	add r0, r1, #0x840000
	str r0, [r4, #0x14]
	ldmfd sp!, {r3, r4, r5, pc}
_021181F0: .word ov16_02119DFC
_021181F4: .word 0x00009CCD
_021181F8: .word 0x0000EA3C
	arm_func_end __sinit_CSprButtonCtrl.cpp


	.section .ctor, 4
#pragma force_active on
	.word __sinit_CSprButtonCtrl.cpp

	.data
	.global ov16_02119DFC
ov16_02119DFC:
	.byte 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00
