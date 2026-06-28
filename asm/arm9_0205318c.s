
	.include "/macros/function.inc"
	.include "/include/arm9_0205318c.inc"

    .text
	arm_func_start FUN_0205318c
FUN_0205318c: ; 0x0205318C
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	sub sp, sp, #0x18
	mov r6, r2
	movs r7, r0
	cmpne r1, #0
	cmpne r6, #0
	addeq sp, sp, #0x18
	moveq r0, #0
	ldmeqfd sp!, {r3, r4, r5, r6, r7, pc}
	add r3, sp, #0xc
	bl FUN_02053214
	ldr r0, [sp, #0xc]
	cmp r0, #0
	ldreq r0, [sp, #0x10]
	cmpeq r0, #0
	ldreq r0, [sp, #0x14]
	cmpeq r0, #0
	addeq sp, sp, #0x18
	moveq r0, #0
	ldmeqfd sp!, {r3, r4, r5, r6, r7, pc}
	add r5, sp, #0xc
	mov r0, r5
	mov r1, r5
	bl VEC_Normalize
	add r4, sp, #0
	mov r0, r7
	mov r1, r6
	mov r2, r4
	bl VEC_Subtract
	mov r0, r5
	mov r1, r4
	bl VEC_DotProduct
	add sp, sp, #0x18
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
	arm_func_end FUN_0205318c

	arm_func_start FUN_02053214
FUN_02053214: ; 0x02053214
	stmfd sp!, {r4, r5, r6, r7, r8, lr}
	sub sp, sp, #0x18
	mov r7, r2
	movs r8, r0
	cmpne r1, #0
	mov r6, r3
	cmpne r7, #0
	cmpne r6, #0
	addeq sp, sp, #0x18
	ldmeqfd sp!, {r4, r5, r6, r7, r8, pc}
	add r5, sp, #0xc
	mov r0, r1
	mov r1, r8
	mov r2, r5
	bl VEC_Subtract
	add r4, sp, #0
	mov r0, r7
	mov r1, r8
	mov r2, r4
	bl VEC_Subtract
	mov r0, r5
	mov r1, r4
	mov r2, r4
	bl VEC_CrossProduct
	mov r0, r5
	mov r1, r4
	mov r2, r6
	bl VEC_CrossProduct
	add sp, sp, #0x18
	ldmfd sp!, {r4, r5, r6, r7, r8, pc}
	arm_func_end FUN_02053214

	arm_func_start FUN_0205328c
FUN_0205328c: ; 0x0205328C
	ldr r12, [r0]
	ldr r3, [r1, #4]
	ldr r2, [r0, #4]
	ldr r0, [r1]
	smull r1, r3, r12, r3
	adds r12, r1, #0x800
	smull r1, r0, r2, r0
	adc r2, r3, #0
	adds r1, r1, #0x800
	mov r3, r12, lsr #0xc
	adc r0, r0, #0
	mov r1, r1, lsr #0xc
	orr r3, r3, r2, lsl #20
	orr r1, r1, r0, lsl #20
	sub r0, r3, r1
	bx lr
	arm_func_end FUN_0205328c

	arm_func_start FUN_020532cc
FUN_020532cc: ; 0x020532CC
	ldr r12, [r0]
	ldr r3, [r1]
	ldr r2, [r0, #4]
	ldr r0, [r1, #4]
	smull r1, r3, r12, r3
	adds r12, r1, #0x800
	smull r1, r0, r2, r0
	adc r2, r3, #0
	adds r1, r1, #0x800
	mov r3, r12, lsr #0xc
	adc r0, r0, #0
	mov r1, r1, lsr #0xc
	orr r3, r3, r2, lsl #20
	orr r1, r1, r0, lsl #20
	add r0, r3, r1
	bx lr
	arm_func_end FUN_020532cc

	arm_func_start FUN_0205330c
FUN_0205330c: ; 0x0205330C
	stmfd sp!, {r3, lr}
	bl FUN_0205328c
	cmp r0, #0
	moveq r0, #1
	movne r0, #0
	ldmfd sp!, {r3, pc}
	arm_func_end FUN_0205330c

	arm_func_start FUN_02053324
FUN_02053324: ; 0x02053324
	stmfd sp!, {r4, r5, r6, r7, r8, r9, lr}
	sub sp, sp, #0x24
	mov r7, r0
	mov r0, r1
	add r9, sp, #0x18
	mov r5, r2
	mov r1, r7
	mov r2, r9
	mov r4, r3
	ldr r6, [sp, #0x40]
	bl VEC_Subtract
	add r8, sp, #0xc
	mov r0, r4
	mov r1, r5
	mov r2, r8
	bl VEC_Subtract
	mov r0, r9
	mov r1, r8
	bl FUN_0205330c
	cmp r0, #0
	addne sp, sp, #0x24
	movne r0, #0
	ldmnefd sp!, {r4, r5, r6, r7, r8, r9, pc}
	add r4, sp, #0
	mov r0, r5
	mov r1, r7
	mov r2, r4
	bl VEC_Subtract
	mov r0, r8
	mov r1, r4
	bl FUN_0205328c
	mov r5, r0
	mov r0, r8
	mov r1, r9
	bl FUN_0205328c
	ldr r1, [sp, #0x18]
	mov r4, r0
	smull r2, r0, r1, r5
	adds r1, r2, #0x800
	adc r2, r0, #0
	mov r0, r1, lsr #0xc
	mov r1, r4
	orr r0, r0, r2, lsl #20
	mov r8, #0
	bl FX_Div
	ldr r2, [r7]
	mov r1, r4
	add r0, r2, r0
	str r0, [r6]
	ldr r0, [sp, #0x1c]
	smull r3, r2, r0, r5
	adds r0, r3, #0x800
	adc r2, r2, #0
	mov r0, r0, lsr #0xc
	orr r0, r0, r2, lsl #20
	bl FX_Div
	ldr r1, [r7, #4]
	add r0, r1, r0
	stmib r6, {r0, r8}
	mov r0, #1
	add sp, sp, #0x24
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, pc}
	arm_func_end FUN_02053324

	arm_func_start FUN_0205341c
FUN_0205341c: ; 0x0205341C
	ldr r2, [r0, #4]
	ldr r3, [r0]
	rsb r2, r2, #0
	stmia r1, {r2, r3}
	mov r0, #0
	str r0, [r1, #8]
	bx lr
	arm_func_end FUN_0205341c

	arm_func_start FUN_02053438
FUN_02053438: ; 0x02053438
	mov r1, #0x1000
	rsb r1, r1, #0
	and r0, r0, r1
	add r0, r0, #0x1000
	bx lr
	arm_func_end FUN_02053438

	arm_func_start FUN_0205344c
FUN_0205344c: ; 0x0205344C
	stmfd sp!, {r4, r5, r6, r7, r8, lr}
	sub sp, sp, #0x30
	add r7, sp, #0x24
	mov r4, r2
	mov r5, r0
	mov r8, r1
	mov r0, r8
	mov r1, r5
	mov r2, r7
	bl VEC_Subtract
	add r6, sp, #0x18
	mov r0, r4
	mov r1, r5
	mov r2, r6
	bl VEC_Subtract
	mov r0, r5
	add r5, sp, #0xc
	mov r1, r8
	mov r2, r5
	bl VEC_Subtract
	mov r0, r4
	add r4, sp, #0
	mov r1, r8
	mov r2, r4
	bl VEC_Subtract
	mov r0, r7
	mov r1, r6
	bl FUN_0205328c
	cmp r0, #0
	bne _020534F4
	mov r0, r7
	mov r1, r6
	bl FUN_020532cc
	cmp r0, #0
	ble _020534F4
	mov r0, r5
	mov r1, r4
	bl FUN_020532cc
	cmp r0, #0
	addgt sp, sp, #0x30
	movgt r0, #1
	ldmgtfd sp!, {r4, r5, r6, r7, r8, pc}
_020534F4:
	mov r0, #0
	add sp, sp, #0x30
	ldmfd sp!, {r4, r5, r6, r7, r8, pc}
	arm_func_end FUN_0205344c

	arm_func_start FUN_02053500
FUN_02053500: ; 0x02053500
	stmfd sp!, {r4, lr}
	mov r3, r0
	ldr r0, [r1]
	ldr r1, [r3]
	mov r4, r2
	bl FX_Atan2Idx
	strh r0, [r4]
	ldmfd sp!, {r4, pc}
	arm_func_end FUN_02053500

	arm_func_start FUN_02053520
FUN_02053520: ; 0x02053520
	stmfd sp!, {r3, lr}
	mov r0, r0, asr #4
	mov lr, r0, lsl #1
	add r0, lr, #1
	ldr r12, _02053550 ; =FX_SinCosTable_
	mov r3, r0, lsl #1
	mov r0, lr, lsl #1
	ldrsh r3, [r12, r3]
	ldrsh r0, [r12, r0]
	str r3, [r1]
	str r0, [r2]
	ldmfd sp!, {r3, pc}
_02053550: .word FX_SinCosTable_
	arm_func_end FUN_02053520

	arm_func_start FUN_02053554
FUN_02053554: ; 0x02053554
	stmfd sp!, {r4, r5, lr}
	sub sp, sp, #0xc
	mov r5, r2
	mov r3, r0
	mov r0, r1
	add r2, sp, #0
	mov r4, #0
	mov r1, r3
	str r4, [r2]
	str r4, [r2, #4]
	str r4, [r2, #8]
	bl VEC_Subtract
	ldr r0, [sp]
	cmp r0, #0
	ldreq r0, [sp, #8]
	cmpeq r0, #0
	addeq sp, sp, #0xc
	moveq r0, r4
	ldmeqfd sp!, {r4, r5, pc}
	add r0, sp, #0
	add r1, sp, #8
	mov r2, r5
	bl FUN_02053500
	mov r0, #1
	add sp, sp, #0xc
	ldmfd sp!, {r4, r5, pc}
	arm_func_end FUN_02053554

	arm_func_start FUN_020535bc
FUN_020535bc: ; 0x020535BC
	stmfd sp!, {r3, lr}
	sub sp, sp, #0x18
	ldr r2, [r0, #8]
	ldr r0, [r0]
	mov r12, #0
	str r0, [sp]
	str r12, [sp, #4]
	str r2, [sp, #8]
	ldr r3, [r1, #8]
	ldr r2, [r1]
	add r0, sp, #0
	add r1, sp, #0xc
	str r2, [sp, #0xc]
	str r12, [sp, #0x10]
	str r3, [sp, #0x14]
	bl VEC_Distance
	add sp, sp, #0x18
	ldmfd sp!, {r3, pc}
	arm_func_end FUN_020535bc

	arm_func_start FUN_02053604
FUN_02053604: ; 0x02053604
	subs r1, r1, r3
	rsbmi r1, r1, #0
	subs r0, r0, r2
	rsbmi r0, r0, #0
	add r0, r0, r1
	bx lr
	arm_func_end FUN_02053604

	arm_func_start FUN_0205361c
FUN_0205361c: ; 0x0205361C
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, lr}
	sub sp, sp, #0x28
	ldr r4, [r0]
	ldr r0, [r0, #8]
	str r4, [sp]
	str r0, [sp, #0xc]
	ldr r0, [r3, #8]
	ldr r4, [r3]
	str r0, [sp, #0x14]
	ldr r0, [sp]
	ldr lr, [r1, #8]
	ldr r12, [r1]
	mov r1, r4
	sub r9, r1, r0
	ldr r8, [r2, #8]
	ldr r0, [sp, #0xc]
	ldr r1, [sp, #0x14]
	ldr r5, [r2]
	sub r6, r1, r0
	sub r7, r8, r0
	ldr r1, [sp]
	ldr r0, [sp]
	str r4, [sp, #4]
	sub r4, r5, r0
	sub r3, r12, r1
	smull r2, r1, r4, r6
	ldr r0, [sp, #0xc]
	adds r2, r2, #0x800
	sub r11, lr, r0
	mov r0, r9, asr #0x1f
	str r0, [sp, #8]
	mov r0, r7, asr #0x1f
	str r0, [sp, #0x10]
	mov r0, r6, asr #0x1f
	str r0, [sp, #0x18]
	mov r0, r4, asr #0x1f
	str r0, [sp, #0x1c]
	mov r0, #0
	adc r1, r1, r0
	mov r2, r2, lsr #0xc
	orr r2, r2, r1, lsl #20
	smull r1, r10, r7, r9
	adds r1, r1, #0x800
	adc r10, r10, r0
	mov r1, r1, lsr #0xc
	orr r1, r1, r10, lsl #20
	sub r1, r2, r1
	smull r2, r10, r6, r3
	adds r2, r2, #0x800
	adc r10, r10, r0
	mov r2, r2, lsr #0xc
	orr r2, r2, r10, lsl #20
	smull r10, r3, r7, r3
	str r3, [sp, #0x24]
	str r10, [sp, #0x20]
	smull r3, r10, r9, r11
	adds r3, r3, #0x800
	adc r10, r10, r0
	mov r3, r3, lsr #0xc
	orr r3, r3, r10, lsl #20
	sub r3, r2, r3
	smull r2, r10, r4, r11
	adds r2, r2, #0x800
	adc r10, r10, r0
	mov r2, r2, lsr #0xc
	orr r2, r2, r10, lsl #20
	ldr r10, [sp, #0x20]
	adds r11, r10, #0x800
	ldr r10, [sp, #0x24]
	mov r11, r11, lsr #0xc
	adc r10, r10, r0
	orr r11, r11, r10, lsl #20
	sub r2, r2, r11
	cmp r1, #0
	bge _02053778
	cmp r3, #0
	cmple r2, #0
	bgt _0205376C
	add r0, r3, r2
	bl _s32_div_f
	cmp r0, #1
	addge sp, sp, #0x28
	movge r0, #1
	ldmgefd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_0205376C:
	add sp, sp, #0x28
	mov r0, #0
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_02053778:
	ble _020537AC
	cmp r3, #0
	cmpge r2, #0
	blt _020537A0
	add r0, r3, r2
	bl _s32_div_f
	cmp r0, #1
	addge sp, sp, #0x28
	movge r0, #1
	ldmgefd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_020537A0:
	add sp, sp, #0x28
	mov r0, #0
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_020537AC:
	ldr r3, [sp, #8]
	umull r2, r1, r4, r9
	mla r1, r4, r3, r1
	ldr r3, [sp, #0x1c]
	mla r1, r3, r9, r1
	adds r3, r2, #0x800
	adc r2, r1, r0
	mov r1, r3, lsr #0xc
	orr r1, r1, r2, lsl #20
	umull r4, r3, r7, r6
	ldr r2, [sp, #0x18]
	adds r4, r4, #0x800
	mla r3, r7, r2, r3
	ldr r2, [sp, #0x10]
	mla r3, r2, r6, r3
	adc r2, r3, r0
	mov r3, r4, lsr #0xc
	orr r3, r3, r2, lsl #20
	add r1, r1, r3
	cmp r1, #0
	addle sp, sp, #0x28
	movle r0, #1
	ldmlefd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
	ldr r1, [sp, #4]
	sub r2, r5, r12
	sub r1, r1, r12
	smull r3, r1, r2, r1
	adds r2, r3, #0x800
	ldr r3, [sp, #0x14]
	sub r4, r8, lr
	sub r3, r3, lr
	smull r6, r3, r4, r3
	adc r7, r1, r0
	adds r4, r6, #0x800
	mov r6, r2, lsr #0xc
	adc r1, r3, r0
	mov r2, r4, lsr #0xc
	orr r6, r6, r7, lsl #20
	orr r2, r2, r1, lsl #20
	add r1, r6, r2
	cmp r1, #0
	addle sp, sp, #0x28
	movle r0, #1
	ldmlefd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
	ldr r1, [sp]
	sub r2, r1, r5
	sub r1, r12, r5
	smull r3, r5, r2, r1
	ldr r1, [sp, #0xc]
	adds r6, r3, #0x800
	sub r2, r1, r8
	sub r1, lr, r8
	smull r4, r3, r2, r1
	adc r5, r5, r0
	adds r2, r4, #0x800
	mov r4, r6, lsr #0xc
	adc r1, r3, r0
	mov r2, r2, lsr #0xc
	orr r4, r4, r5, lsl #20
	orr r2, r2, r1, lsl #20
	add r1, r4, r2
	cmp r1, #0
	movle r0, #1
	add sp, sp, #0x28
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
	arm_func_end FUN_0205361c

	arm_func_start FUN_020538b0
FUN_020538b0: ; 0x020538B0
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	movs r6, r1
	mov r7, r0
	mov r5, r2
	ldmeqfd sp!, {r3, r4, r5, r6, r7, pc}
	mov r0, r6
	mov r1, #0x5c
	bl strrchr
	movs r4, r0
	mov r1, #0x2f
	bne _020538E4
	mov r0, r6
	b _020538E4
_020538E4:
	bl strrchr
	cmp r0, #0
	bne _020538FC
	cmp r4, #0
	addne r6, r4, #1
	b _02053900
_020538FC:
	add r6, r0, #1
_02053900:
	mov r0, r7
	mov r1, r6
	mov r2, r5
	bl strncpy
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
	arm_func_end FUN_020538b0

	arm_func_start FUN_02053914
FUN_02053914: ; 0x02053914
	ldrsb r2, [r1]
	mov r12, #0
	cmp r2, #0
	beq _02053950
	ldr r3, _0205395C ; =0x0208BFB8
_02053928:
	ldrsb r2, [r1, r12]
	cmp r2, #0
	blt _0205393C
	cmp r2, #0x80
	ldrltb r2, [r3, r2]
_0205393C:
	strb r2, [r0, r12]
	add r12, r12, #1
	ldrsb r2, [r1, r12]
	cmp r2, #0
	bne _02053928
_02053950:
	mov r1, #0
	strb r1, [r0, r12]
	bx lr
_0205395C: .word unk_0208BFB8
	arm_func_end FUN_02053914

	arm_func_start PAC_GetOffset
PAC_GetOffset: ; 0x02053960
	cmp r0, #0
	moveq r0, #0
	bxeq lr
	cmp r1, #0
	blt _02053980
	ldr r2, [r0]
	cmp r1, r2
	blo _02053988
_02053980:
	mov r0, #0
	bx lr
_02053988:
	add r0, r0, r1, lsl #3
	ldr r0, [r0, #4]
	bx lr
	arm_func_end PAC_GetOffset

	arm_func_start PAC_GetSize
PAC_GetSize: ; 0x02053994
	cmp r0, #0
	moveq r0, #0
	bxeq lr
	cmp r1, #0
	blt _020539B4
	ldr r2, [r0]
	cmp r1, r2
	blo _020539BC
_020539B4:
	mov r0, #0
	bx lr
_020539BC:
	add r0, r0, r1, lsl #3
	ldr r0, [r0, #8]
	bx lr
	arm_func_end PAC_GetSize

	arm_func_start PAC_GetPtr
PAC_GetPtr: ; 0x020539C8
	stmfd sp!, {r4, lr}
	mov r4, r0
	bl PAC_GetOffset
	cmp r0, #0
	moveq r0, #0
	addne r0, r4, r0
	ldmfd sp!, {r4, pc}
	arm_func_end PAC_GetPtr

	arm_func_start FUN_020539e4
FUN_020539e4: ; 0x020539E4
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	movs r6, r1
	mov r7, r0
	mov r5, r2
	mov r4, r3
	beq _02053A08
	mov r1, #0
	bl PAC_GetSize
	str r0, [r6]
_02053A08:
	cmp r5, #0
	beq _02053A20
	mov r0, r7
	mov r1, #0
	bl PAC_GetPtr
	str r0, [r5]
_02053A20:
	cmp r4, #0
	beq _02053A38
	mov r0, r7
	mov r1, #1
	bl PAC_GetSize
	str r0, [r4]
_02053A38:
	ldr r0, [sp, #0x18]
	cmp r0, #0
	ldmeqfd sp!, {r3, r4, r5, r6, r7, pc}
	mov r0, r7
	mov r1, #1
	bl PAC_GetPtr
	ldr r1, [sp, #0x18]
	str r0, [r1]
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
	arm_func_end FUN_020539e4

	arm_func_start FUN_02053a5c
FUN_02053a5c: ; 0x02053A5C
	ldr r1, _02053A6C ; =0x00000F3C
	add r0, r0, r0, lsl #1
	sub r0, r1, r0
	bx lr
_02053A6C: .word 0x00000F3C
	arm_func_end FUN_02053a5c

	arm_func_start FUN_02053a70
FUN_02053a70: ; 0x02053A70
	stmfd sp!, {r0, r1, r2, r3}
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, lr}
	sub sp, sp, #0x30
	ldr r1, [sp, #0x5c]
	ldr r2, [sp, #0x54]
	mov r1, r1, asr #4
	mov r3, r2, asr #4
	ldr r4, [sp, #0x58]
	mov r8, r1, lsl #1
	mov r2, r4, asr #4
	mov r9, r0
	mov r6, r3, lsl #1
	mov r7, r2, lsl #1
	bl MTX_Identity43_
	add r0, r8, #1
	ldr r4, _02053B44 ; =FX_SinCosTable_
	mov r1, r8, lsl #1
	mov r0, r0, lsl #1
	ldrsh r1, [r4, r1]
	ldrsh r2, [r4, r0]
	add r5, sp, #0
	mov r0, r5
	blx MTX_RotZ43_
	mov r0, r9
	mov r1, r5
	mov r2, r9
	bl MTX_Concat43
	add r2, r7, #1
	mov r1, r7, lsl #1
	mov r2, r2, lsl #1
	ldrsh r1, [r4, r1]
	ldrsh r2, [r4, r2]
	mov r0, r5
	blx MTX_RotY43_
	mov r0, r9
	mov r1, r5
	mov r2, r9
	bl MTX_Concat43
	add r2, r6, #1
	mov r1, r6, lsl #1
	mov r2, r2, lsl #1
	ldrsh r1, [r4, r1]
	ldrsh r2, [r4, r2]
	mov r0, r5
	blx MTX_RotX43_
	mov r1, r5
	mov r0, r9
	mov r2, r9
	bl MTX_Concat43
	add sp, sp, #0x30
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, lr}
	add sp, sp, #0x10
	bx lr
_02053B44: .word FX_SinCosTable_
	arm_func_end FUN_02053a70

	arm_func_start FUN_02053b48
FUN_02053b48: ; 0x02053B48
	stmfd sp!, {r0, r1, r2, r3}
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, lr}
	sub sp, sp, #0x30
	ldr r1, [sp, #0x54]
	ldr r2, [sp, #0x58]
	mov r3, r1, asr #4
	ldr r4, [sp, #0x5c]
	mov r2, r2, asr #4
	mov r1, r4, asr #4
	mov r6, r3, lsl #1
	mov r9, r0
	mov r7, r2, lsl #1
	mov r8, r1, lsl #1
	bl MTX_Identity43_
	add r0, r6, #1
	ldr r4, _02053C1C ; =FX_SinCosTable_
	mov r1, r6, lsl #1
	mov r0, r0, lsl #1
	ldrsh r1, [r4, r1]
	ldrsh r2, [r4, r0]
	add r5, sp, #0
	mov r0, r5
	blx MTX_RotX43_
	mov r0, r9
	mov r1, r5
	mov r2, r9
	bl MTX_Concat43
	add r2, r7, #1
	mov r1, r7, lsl #1
	mov r2, r2, lsl #1
	ldrsh r1, [r4, r1]
	ldrsh r2, [r4, r2]
	mov r0, r5
	blx MTX_RotY43_
	mov r0, r9
	mov r1, r5
	mov r2, r9
	bl MTX_Concat43
	add r2, r8, #1
	mov r1, r8, lsl #1
	mov r2, r2, lsl #1
	ldrsh r1, [r4, r1]
	ldrsh r2, [r4, r2]
	mov r0, r5
	blx MTX_RotZ43_
	mov r1, r5
	mov r0, r9
	mov r2, r9
	bl MTX_Concat43
	add sp, sp, #0x30
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, lr}
	add sp, sp, #0x10
	bx lr
_02053C1C: .word FX_SinCosTable_
	arm_func_end FUN_02053b48

	arm_func_start FUN_02053c20
FUN_02053c20: ; 0x02053C20
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	sub sp, sp, #0x10
	mov r6, r1
	movs r7, r0
	cmpne r6, #0
	addeq sp, sp, #0x10
	mvneq r0, #0
	ldmeqfd sp!, {r3, r4, r5, r6, r7, pc}
	add r4, sp, #0
	mov r5, #0
	mov r0, r6
	str r5, [r4]
	str r5, [r4, #4]
	str r5, [r4, #8]
	str r5, [r4, #0xc]
	bl strlen
	mov r2, r0
	mov r0, r4
	mov r1, r6
	bl memcpy
	cmp r7, #0
	addne r5, r7, #0x40
	cmp r5, #0
	addeq sp, sp, #0x10
	mvneq r0, #0
	ldmeqfd sp!, {r3, r4, r5, r6, r7, pc}
	add r1, sp, #0
	mov r0, r5
	bl NNS_G3dGetResDictIdxByName
	add sp, sp, #0x10
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
	arm_func_end FUN_02053c20

	arm_func_start FUN_02053c9c
FUN_02053c9c: ; 0x02053C9C
	cmp r0, #0
	moveq r0, #0
	ldrne r1, [r0, #0x38]
	addne r0, r0, r1
	bx lr
	arm_func_end FUN_02053c9c

	arm_func_start FUN_02053cb0
FUN_02053cb0: ; 0x02053CB0
	stmfd sp!, {r3, lr}
	cmp r0, #0
	moveq r0, #0
	ldmeqfd sp!, {r3, pc}
	bl NNS_G3dGetTex
	bl FUN_02053c9c
	ldmfd sp!, {r3, pc}
	arm_func_end FUN_02053cb0

	arm_func_start FUN_02053ccc
FUN_02053ccc: ; 0x02053CCC
	stmfd sp!, {r3, lr}
	cmp r0, #0
	moveq r0, #0
	ldmeqfd sp!, {r3, pc}
	bl NNS_G3dGetTex
	cmp r0, #0
	moveq r0, #0
	ldmeqfd sp!, {r3, pc}
	bl NNS_G3dPlttGetRequiredSize
	ldmfd sp!, {r3, pc}
	arm_func_end FUN_02053ccc

	arm_func_start FUN_02053cf4
FUN_02053cf4: ; 0x02053CF4
	stmfd sp!, {r4, r5, r6, r7, r8, r9, r10, lr}
	sub sp, sp, #0x18
	mov r8, r1
	movs r9, r0
	mov r7, r3
	cmpne r8, #0
	cmpne r7, #0
	addeq sp, sp, #0x18
	moveq r0, #0
	ldmeqfd sp!, {r4, r5, r6, r7, r8, r9, r10, pc}
	mov r2, r2, asr #4
	mov r3, r2, lsl #1
	add r2, r3, #1
	mov r5, r3, lsl #1
	ldr r6, _02053DEC ; =FX_SinCosTable_
	add r4, sp, #0xc
	mov r3, r2, lsl #1
	ldrsh r5, [r6, r5]
	mov r2, r4
	ldrsh r6, [r6, r3]
	bl VEC_Subtract
	ldr lr, [sp, #0x14]
	ldr r12, [sp, #0xc]
	mov r1, r8
	smull r3, r0, lr, r5
	mov r2, r4
	smull r10, r8, r12, r6
	smull r5, r4, r12, r5
	smull r12, r6, lr, r6
	adds lr, r10, #0x800
	adc r10, r8, #0
	adds r3, r3, #0x800
	mov r8, lr, lsr #0xc
	adc r0, r0, #0
	mov r3, r3, lsr #0xc
	orr r8, r8, r10, lsl #20
	orr r3, r3, r0, lsl #20
	sub r0, r8, r3
	adds r3, r5, #0x800
	str r0, [sp]
	adc r0, r4, #0
	mov r4, r3, lsr #0xc
	adds r3, r12, #0x800
	orr r4, r4, r0, lsl #20
	adc r0, r6, #0
	mov r3, r3, lsr #0xc
	orr r3, r3, r0, lsl #20
	add r3, r4, r3
	add r0, sp, #0
	str r3, [sp, #8]
	bl VEC_Add
	ldr r1, [r9, #4]
	ldr r0, [sp, #0xc]
	str r1, [sp, #0x10]
	str r0, [r7]
	ldr r1, [sp, #0x10]
	mov r0, #1
	str r1, [r7, #4]
	ldr r1, [sp, #0x14]
	str r1, [r7, #8]
	add sp, sp, #0x18
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, pc}
_02053DEC: .word FX_SinCosTable_
	arm_func_end FUN_02053cf4

	arm_func_start FUN_02053df0
FUN_02053df0: ; 0x02053DF0
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, lr}
	sub sp, sp, #0xc
	add r7, sp, #0
	cmp r3, #0
	mov r6, r1
	mov r5, r2
	ldmia r0, {r0, r1, r2}
	stmia r7, {r0, r1, r2}
	ldr r4, [sp, #0x30]
	cmpne r3, #0x8000
	beq _02053E34
	mov r2, r3, lsl #0x10
	mov r0, r7
	mov r1, r6
	mov r3, r7
	mov r2, r2, lsr #0x10
	bl FUN_02053cf4
_02053E34:
	ldr r7, [r5]
	ldr r3, [r6]
	ldr r1, [r6, #4]
	sub r3, r3, r7, asr #1
	sub r12, r3, r4
	add r3, r12, r7
	ldr r2, [r5, #4]
	mov r0, #0
	ldr r7, [r5, #8]
	ldr r6, [r6, #8]
	sub r1, r1, r2, asr #1
	sub r8, r1, r4
	sub r6, r6, r7, asr #1
	sub r9, r6, r4
	ldr r1, [sp]
	add r10, r9, r7
	add r2, r8, r2
	mov r7, r0
	add r3, r3, r4, lsl #1
	cmp r12, r1
	cmple r1, r3
	movle r7, #1
	add r2, r2, r4, lsl #1
	mov r5, r0
	mov r6, r0
	mov lr, r0
	add r4, r10, r4, lsl #1
	cmp r7, #0
	beq _02053EB4
	ldr r1, [sp, #4]
	cmp r8, r1
	movle lr, #1
_02053EB4:
	cmp lr, #0
	beq _02053EC8
	ldr r1, [sp, #4]
	cmp r1, r2
	movle r6, #1
_02053EC8:
	cmp r6, #0
	beq _02053EDC
	ldr r1, [sp, #8]
	cmp r9, r1
	movle r5, #1
_02053EDC:
	cmp r5, #0
	addeq sp, sp, #0xc
	ldmeqfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, pc}
	ldr r1, [sp, #8]
	cmp r1, r4
	movle r0, #1
	add sp, sp, #0xc
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, pc}
	arm_func_end FUN_02053df0

	arm_func_start FUN_02053efc
FUN_02053efc: ; 0x02053EFC
	stmfd sp!, {r3, r4, r5, lr}
	sub sp, sp, #0x18
	ldr r12, [r1, #4]
	ldr r4, [r0, #4]
	mov r5, r2
	subs r2, r12, r4
	rsbmi r2, r2, #0
	cmp r2, r3, asr #1
	addgt sp, sp, #0x18
	movgt r0, #0
	ldmgtfd sp!, {r3, r4, r5, pc}
	ldr r2, [r1, #8]
	ldr r1, [r1]
	mov r4, #0
	str r1, [sp]
	str r4, [sp, #4]
	str r2, [sp, #8]
	ldr r3, [r0, #8]
	ldr r2, [r0]
	add r0, sp, #0
	add r1, sp, #0xc
	str r2, [sp, #0xc]
	str r4, [sp, #0x10]
	str r3, [sp, #0x14]
	bl VEC_Distance
	ldr r1, [sp, #0x28]
	add r1, r5, r1
	cmp r0, r1
	movle r4, #1
	mov r0, r4
	add sp, sp, #0x18
	ldmfd sp!, {r3, r4, r5, pc}
	arm_func_end FUN_02053efc

	arm_func_start FUN_02053f7c
FUN_02053f7c: ; 0x02053F7C
	stmfd sp!, {r3, lr}
	ldr r1, _02053FB8 ; =0x0209A1A8
	ldr r2, _02053FBC ; =0x04000320
	ldrb r3, [r1, #1]
	ldrh r1, [r2]
	cmp r3, #0
	ble _02053FB0
	cmp r1, r3
	ldmltfd sp!, {r3, pc}
	sub r1, r2, #0x2c0
	ldrh r1, [r1]
	tst r1, #0x1000
	ldmnefd sp!, {r3, pc}
_02053FB0:
	bl NNS_G3dDraw
	ldmfd sp!, {r3, pc}
_02053FB8: .word unk_0209A1A8
_02053FBC: .word 0x04000320
	arm_func_end FUN_02053f7c

	arm_func_start FUN_02053fc0
FUN_02053fc0: ; 0x02053FC0
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, lr}
	mov r9, r2
	mov r8, r3
	mov r10, r1
	ldr r1, [r8]
	ldrh r7, [r9]
	add r5, r10, #8
	cmp r1, #0
	add r6, r5, r7, lsl #3
	bgt _02054060
	mov r11, #0x3f000000
	mov r4, r11
_02053FF0:
	ldrh r0, [r6, #2]
	mov r6, r5
	strh r0, [r9]
	add r0, r10, r0, lsl #3
	ldr r0, [r0, #0xc]
	cmp r0, #0
	mov r0, r0, lsl #0xc
	beq _02054024
	bl _ffltu
	mov r1, r0
	mov r0, r4
	bl _fadd
	b _02054030
_02054024:
	bl _ffltu
	mov r1, r11
	bl _fsub
_02054030:
	bl _ffix
	str r0, [r8]
	ldrh r1, [r9]
	cmp r1, #0
	moveq r0, #2
	ldmeqfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
	cmp r7, r1
	movne r0, #1
	ldmnefd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
	cmp r0, #0
	ble _02053FF0
	b _02054068
_02054060:
	sub r0, r1, r0
	str r0, [r8]
_02054068:
	mov r0, #0
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
	arm_func_end FUN_02053fc0

	arm_func_start FUN_02054070
FUN_02054070: ; 0x02054070
	stmfd sp!, {r3, lr}
	mov r12, r0, asr #3
	cmp r12, #1
	mov lr, #0
	ble _02054094
_02054084:
	mov r12, r12, asr #1
	cmp r12, #1
	add lr, lr, #1
	bgt _02054084
_02054094:
	mov r12, #8
	mvn r12, r12, lsl lr
	tst r0, r12
	addne lr, lr, #1
	mov r0, r1, asr #3
	str lr, [r2]
	cmp r0, #1
	mov r2, #0
	ble _020540C8
_020540B8:
	mov r0, r0, asr #1
	cmp r0, #1
	add r2, r2, #1
	bgt _020540B8
_020540C8:
	mov r0, #8
	mvn r0, r0, lsl r2
	tst r1, r0
	addne r2, r2, #1
	str r2, [r3]
	ldmfd sp!, {r3, pc}
	arm_func_end FUN_02054070

	arm_func_start FUN_020540e0
FUN_020540e0: ; 0x020540E0
	mov r1, #0
	str r1, [r0, #4]
	str r1, [r0, #0xc]
	bx lr
	arm_func_end FUN_020540e0

	arm_func_start FUN_020540f0
FUN_020540f0: ; 0x020540F0
	bx lr
	arm_func_end FUN_020540f0

	arm_func_start FUN_020540f4
FUN_020540f4: ; 0x020540F4
	stmfd sp!, {r4, lr}
	mov r4, r0
	ldr r0, [r4, #0xc]
	cmp r0, #0
	beq _02054114
	bl _ZN10FileSystem10DeallocateEPv
	mov r0, #0
	str r0, [r4, #0xc]
_02054114:
	ldr r0, [r4, #4]
	cmp r0, #0
	ldmeqfd sp!, {r4, pc}
	bl _ZN10FileSystem10DeallocateEPv
	ldr r0, [r4, #8]
	bl _ZN10FileSystem10DeallocateEPv
	mov r0, #0
	str r0, [r4, #4]
	str r0, [r4, #8]
	ldmfd sp!, {r4, pc}
	arm_func_end FUN_020540f4

	.data
	.global unk_02090698
unk_02090698:
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
