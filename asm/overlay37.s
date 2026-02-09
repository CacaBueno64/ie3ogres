
	.include "/macros/function.inc"
	.include "/include/overlay37.inc"

	.text
	arm_func_start FUN_ov37_02119f00
FUN_ov37_02119f00: ; 0x02119F00
	stmfd sp!, {r3, r4, r5, lr}
	mov r5, r0
	ldr r0, _02119F3C ; =0x0211BD4C
	add r1, r5, #0x48
	bl _ZN7Archive14RequestNewReadEPKcP9SFileData
	mov r4, #0
	ldr r1, _02119F40 ; =0x0211BD70
	mov r0, r4
	bl _ZN10FileSystem19OpenArchiveDeferredEPvPKc
	str r0, [r5, #0x70]
	ldr r1, _02119F44 ; =0x0211BD84
	mov r0, r4
	bl _ZN10FileSystem19OpenArchiveDeferredEPvPKc
	str r0, [r5, #0x74]
	ldmfd sp!, {r3, r4, r5, pc}
_02119F3C: .word ov37_0211BD4C
_02119F40: .word ov37_0211BD70
_02119F44: .word ov37_0211BD84
	arm_func_end FUN_ov37_02119f00

	arm_func_start FUN_ov37_02119f48
FUN_ov37_02119f48: ; 0x02119F48
	stmfd sp!, {r3, r4, lr}
	sub sp, sp, #0x14
	mov r4, r0
	ldr r2, [r4, #0xb8]
	ldr r0, _0211A010 ; =gConfig
	ldr r1, _0211A014 ; =0x0211BD98
	str r2, [sp, #0x10]
	bl _ZN6Config8getParamEPc
	cmp r0, #0
	beq _02119F78
	cmp r0, #1
	beq _02119FC4
_02119F78:
	ldr r1, [r4, #0x44]
	mov r0, #0x74
	mul r2, r1, r0
	ldr r3, _0211A018 ; =gAllocator
	ldr r1, _0211A01C ; =0x0211BDA0
	ldr r0, [r3]
	cmp r0, #0
	addeq sp, sp, #0x14
	ldmeqfd sp!, {r3, r4, pc}
	mov r12, #0
	str r12, [sp]
	str r2, [sp, #4]
	str r12, [sp, #8]
	mov r12, #1
	add r2, sp, #0x10
	str r12, [sp, #0xc]
	bl _ZN7CFileIO10readDirectEPKcPPvP9Allocatorlmih
	add sp, sp, #0x14
	ldmfd sp!, {r3, r4, pc}
_02119FC4:
	ldr r1, [r4, #0x44]
	mov r0, #0x74
	mul r2, r1, r0
	ldr r3, _0211A018 ; =gAllocator
	ldr r1, _0211A020 ; =0x0211BDC0
	ldr r0, [r3]
	cmp r0, #0
	addeq sp, sp, #0x14
	ldmeqfd sp!, {r3, r4, pc}
	mov r12, #0
	str r12, [sp]
	str r2, [sp, #4]
	str r12, [sp, #8]
	mov r12, #1
	add r2, sp, #0x10
	str r12, [sp, #0xc]
	bl _ZN7CFileIO10readDirectEPKcPPvP9Allocatorlmih
	add sp, sp, #0x14
	ldmfd sp!, {r3, r4, pc}
_0211A010: .word gConfig
_0211A014: .word ov37_0211BD98
_0211A018: .word gAllocator
_0211A01C: .word ov37_0211BDA0
_0211A020: .word ov37_0211BDC0
	arm_func_end FUN_ov37_02119f48

	arm_func_start FUN_ov37_0211a024
FUN_ov37_0211a024: ; 0x0211A024
	stmfd sp!, {r3, r4, r5, lr}
	mov r4, #0
	mov r5, r0
	str r4, [sp]
	ldr r1, [r5, #0x48]
	ldr r0, _0211A058 ; =0x0211BDE0
	ldr r2, _0211A05C ; =0x0211BBE0
	add r3, r5, #0x78
	bl FUN_ov16_020f5450
	mov r0, r5
	mov r1, r4
	bl FUN_ov37_0211a284
	ldmfd sp!, {r3, r4, r5, pc}
_0211A058: .word ov37_0211BDE0
_0211A05C: .word ov37_0211BBE0
	arm_func_end FUN_ov37_0211a024

	arm_func_start FUN_ov37_0211a060
FUN_ov37_0211a060: ; 0x0211A060
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	mov r7, r0
	adds r4, r7, #0x54
	ldmeqfd sp!, {r3, r4, r5, r6, r7, pc}
	mov r5, #0
	ldr r1, [r7, #0xc0]
	mov r2, r5
	bl FUN_ov37_0211b258
	ldr r1, [r7, #0x44]
	sub r0, r0, #2
	add r0, r0, r1
	bl _s32_div_f
	mov r6, r1
_0211A094:
	ldr r1, [r7, #0x44]
	add r0, r6, r5
	bl _s32_div_f
	mov r2, r1
	mov r0, r7
	mov r1, r4
	bl FUN_ov37_0211a0c0
	add r5, r5, #1
	cmp r5, #0xc
	blt _0211A094
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
	arm_func_end FUN_ov37_0211a060

	arm_func_start FUN_ov37_0211a0c0
FUN_ov37_0211a0c0: ; 0x0211A0C0
	stmfd sp!, {r3, r4, r5, r6, lr}
	sub sp, sp, #0x8c
	mov r6, r0
	ldr r3, [r6, #0xa4]
	mov r5, r2
	ldr r2, [r3, r5, lsl #2]
	cmp r2, #0
	ldrne r1, [r6, #0xac]
	cmpne r1, r2
	ldrne r1, [r6, #0xa8]
	cmpne r1, r2
	beq _0211A0F8
	add r1, r3, r5, lsl #2
	bl FUN_ov37_0211a3a4
_0211A0F8:
	ldr r0, [r6, #0xc8]
	ldrb r0, [r0, r5]
	cmp r0, #0
	beq _0211A178
	mov r0, #0x74
	mul r0, r5, r0
	ldr r1, [r6, #0xb8]
	add r4, sp, #0xc
	ldrsh r2, [r1, r0]
	ldr r1, _0211A18C ; =0x0211BE04
	mov r0, r4
	bl STD_TSPrintf
	ldr r0, _0211A190 ; =g3DPlaneCtrl
	ldr r2, [r6, #0x70]
	ldr r0, [r0]
	mov r1, #1
	str r1, [sp]
	mov r1, #0
	str r1, [sp, #4]
	str r1, [sp, #8]
	mov r3, r4
	mov r1, #5
	bl FUN_02058684
	ldr r1, [r6, #0xa4]
	add sp, sp, #0x8c
	str r0, [r1, r5, lsl #2]
	ldr r1, [r6, #0xa4]
	ldr r0, [r1, r5, lsl #2]
	cmp r0, #0
	ldreq r0, [r6, #0xac]
	streq r0, [r1, r5, lsl #2]
	ldmfd sp!, {r3, r4, r5, r6, pc}
_0211A178:
	ldr r1, [r6, #0xa8]
	ldr r0, [r6, #0xa4]
	str r1, [r0, r5, lsl #2]
	add sp, sp, #0x8c
	ldmfd sp!, {r3, r4, r5, r6, pc}
_0211A18C: .word ov37_0211BE04
_0211A190: .word g3DPlaneCtrl
	arm_func_end FUN_ov37_0211a0c0

	arm_func_start FUN_ov37_0211a194
FUN_ov37_0211a194: ; 0x0211A194
	stmfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, lr}
	sub sp, sp, #0x8c
	mov r10, r0
	mov r9, #0
	add r8, r10, #0xa8
	add r7, sp, #0xc
	ldr r11, _0211A218 ; =0x0211BE14
	mov r6, #1
	mov r5, r9
	ldr r4, _0211A21C ; =g3DPlaneCtrl
	b _0211A208
_0211A1C0:
	mov r0, r10
	add r1, r8, r9, lsl #2
	bl FUN_ov37_0211a3a4
	mov r0, r7
	mov r1, r11
	add r2, r9, #1
	bl STD_TSPrintf
	ldr r2, [r10, #0x74]
	ldr r0, [r4]
	mov r1, #5
	str r6, [sp]
	str r5, [sp, #4]
	mov r3, r7
	str r5, [sp, #8]
	bl FUN_02058684
	add r1, r10, r9, lsl #2
	str r0, [r1, #0xa8]
	add r9, r9, #1
_0211A208:
	cmp r9, #2
	blt _0211A1C0
	add sp, sp, #0x8c
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
_0211A218: .word ov37_0211BE14
_0211A21C: .word g3DPlaneCtrl
	arm_func_end FUN_ov37_0211a194

	arm_func_start FUN_ov37_0211a220
FUN_ov37_0211a220: ; 0x0211A220
	stmfd sp!, {r3, lr}
	cmp r1, #0
	ldmltfd sp!, {r3, pc}
	ldr r2, [r0, #0x44]
	cmp r1, r2
	ldmgefd sp!, {r3, pc}
	ldr r12, [r0, #0xa4]
	ldr lr, [r12, r1, lsl #2]
	cmp lr, #0
	ldmeqfd sp!, {r3, pc}
	mov r3, #0
_0211A24C:
	add r2, r0, r3, lsl #2
	ldr r2, [r2, #0xa8]
	cmp r2, #0
	beq _0211A26C
	cmp lr, r2
	moveq r0, #0
	streq r0, [r12, r1, lsl #2]
	ldmeqfd sp!, {r3, pc}
_0211A26C:
	add r3, r3, #1
	cmp r3, #2
	blt _0211A24C
	add r1, r12, r1, lsl #2
	bl FUN_ov37_0211a3a4
	ldmfd sp!, {r3, pc}
	arm_func_end FUN_ov37_0211a220

	arm_func_start FUN_ov37_0211a284
FUN_ov37_0211a284: ; 0x0211A284
	stmfd sp!, {r4, r5, r6, lr}
	mov r2, #0xc
	mul r5, r1, r2
	mov r6, r0
	add r4, r6, #0x48
	add r0, r4, r5
	mov r1, #1
	bl _ZN7Archive5CloseEP9SFileDatai
	add r0, r4, r5
	bl _ZN7Archive10DeallocateEP9SFileData
	mov r1, #0
	str r1, [r4, r5]
	add r0, r6, r5
	str r1, [r0, #0x4c]
	strb r1, [r0, #0x50]
	strb r1, [r0, #0x51]
	strb r1, [r0, #0x52]
	ldmfd sp!, {r4, r5, r6, pc}
	arm_func_end FUN_ov37_0211a284

	arm_func_start FUN_ov37_0211a2cc
FUN_ov37_0211a2cc: ; 0x0211A2CC
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	mov r5, r0
	ldr r0, [r5, #0x74]
	mov r7, #0
	bl _ZN10FileSystem12CloseArchiveEi
	ldr r0, [r5, #0x70]
	bl _ZN10FileSystem12CloseArchiveEi
	mov r4, r7
	mov r0, r5
	mov r1, r4
	bl FUN_ov37_0211a284
	ldr r6, _0211A3A0 ; =g3DPlaneCtrl
	b _0211A324
_0211A300:
	add r0, r5, r4, lsl #2
	ldr r1, [r0, #0x88]
	cmp r1, #0
	beq _0211A320
	ldr r0, [r6]
	bl FUN_ov16_021128c4
	add r0, r5, r4, lsl #2
	str r7, [r0, #0x88]
_0211A320:
	add r4, r4, #1
_0211A324:
	cmp r4, #7
	blt _0211A300
	mov r4, #0
	add r6, r5, #0x78
	b _0211A348
_0211A338:
	mov r0, r5
	add r1, r6, r4, lsl #2
	bl FUN_ov37_0211a3a4
	add r4, r4, #1
_0211A348:
	cmp r4, #4
	blt _0211A338
	mov r4, #0
	b _0211A36C
_0211A358:
	ldr r1, [r5, #0xa4]
	mov r0, r5
	add r1, r1, r4, lsl #2
	bl FUN_ov37_0211a3a4
	add r4, r4, #1
_0211A36C:
	ldr r0, [r5, #0x44]
	cmp r4, r0
	blt _0211A358
	mov r4, #0
	add r6, r5, #0xa8
	b _0211A394
_0211A384:
	mov r0, r5
	add r1, r6, r4, lsl #2
	bl FUN_ov37_0211a3a4
	add r4, r4, #1
_0211A394:
	cmp r4, #2
	blt _0211A384
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_0211A3A0: .word g3DPlaneCtrl
	arm_func_end FUN_ov37_0211a2cc

	arm_func_start FUN_ov37_0211a3a4
FUN_ov37_0211a3a4: ; 0x0211A3A4
	stmfd sp!, {r3, r4, r5, lr}
	movs r5, r1
	ldrne r1, [r5]
	cmpne r1, #0
	moveq r0, #0
	ldmeqfd sp!, {r3, r4, r5, pc}
	ldr r4, _0211A3E4 ; =g3DPlaneCtrl
	ldr r0, [r4]
	bl FUN_020591e8
	ldr r1, [r5]
	ldr r0, [r4]
	bl FUN_02058ee0
	mov r0, #0
	str r0, [r5]
	mov r0, #1
	ldmfd sp!, {r3, r4, r5, pc}
_0211A3E4: .word g3DPlaneCtrl
	arm_func_end FUN_ov37_0211a3a4

	arm_func_start FUN_ov37_0211a3e8
FUN_ov37_0211a3e8: ; 0x0211A3E8
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, lr}
	mov r4, #0
	mov r6, r0
	mov r5, r4
	ldr r7, _0211A4F8 ; =g3DPlaneCtrl
	b _0211A458
_0211A400:
	add r0, r6, r5, lsl #2
	ldr r1, [r0, #0x78]
	cmp r1, #0
	beq _0211A454
	ldr r0, [r7]
	bl FUN_02058e30
	cmp r0, #0
	movne r0, #0
	ldmnefd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
	add r0, r6, r5, lsl #2
	ldr r1, [r0, #0x78]
	ldr r0, [r7]
	bl FUN_02059004
	cmp r0, #0
	bne _0211A454
	add r0, r6, r5, lsl #2
	ldr r1, [r0, #0x78]
	ldr r0, [r7]
	mov r2, r4
	mov r3, r4
	bl FUN_02059038
_0211A454:
	add r5, r5, #1
_0211A458:
	cmp r5, #4
	blt _0211A400
	mov r5, #0
	mov r9, #6
	mov r8, #3
	ldr r7, _0211A4F8 ; =g3DPlaneCtrl
	b _0211A4E4
_0211A474:
	add r0, r6, r5, lsl #2
	ldr r1, [r0, #0xa8]
	cmp r1, #0
	beq _0211A4E0
	ldr r0, [r7]
	bl FUN_02058e30
	cmp r0, #0
	movne r0, #0
	ldmnefd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
	add r0, r6, r5, lsl #2
	ldr r1, [r0, #0xa8]
	ldr r0, [r7]
	bl FUN_02059004
	cmp r0, #0
	bne _0211A4E0
	add r1, r6, r5, lsl #2
	ldr r0, [r7]
	ldr r1, [r1, #0xa8]
	mov r2, r9
	mov r3, r8
	bl FUN_ov16_02114918
	add r0, r6, r5, lsl #2
	ldr r1, [r0, #0xa8]
	ldr r0, [r7]
	mov r2, r4
	mov r3, r4
	bl FUN_02059038
_0211A4E0:
	add r5, r5, #1
_0211A4E4:
	cmp r5, #2
	blt _0211A474
	mov r0, r6
	bl FUN_ov37_0211a4fc
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
_0211A4F8: .word g3DPlaneCtrl
	arm_func_end FUN_ov37_0211a3e8

	arm_func_start FUN_ov37_0211a4fc
FUN_ov37_0211a4fc: ; 0x0211A4FC
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, lr}
	mov r6, #0
	mov r7, r0
	mov r5, #6
	mov r4, #4
	mov r9, r6
	ldr r8, _0211A5A0 ; =g3DPlaneCtrl
	b _0211A58C
_0211A51C:
	ldr r0, [r7, #0xa4]
	ldr r1, [r0, r6, lsl #2]
	cmp r1, #0
	beq _0211A588
	ldr r0, [r8]
	bl FUN_02058e30
	cmp r0, #0
	movne r0, #0
	ldmnefd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
	ldr r1, [r7, #0xa4]
	ldr r0, [r8]
	ldr r1, [r1, r6, lsl #2]
	bl FUN_02059004
	cmp r0, #0
	bne _0211A588
	ldr r1, [r7, #0xa4]
	ldr r0, [r8]
	ldr r1, [r1, r6, lsl #2]
	mov r2, r5
	mov r3, r4
	bl FUN_ov16_02114918
	ldr r1, [r7, #0xa4]
	ldr r0, [r8]
	ldr r1, [r1, r6, lsl #2]
	mov r2, r9
	mov r3, r9
	bl FUN_02059038
_0211A588:
	add r6, r6, #1
_0211A58C:
	ldr r0, [r7, #0x44]
	cmp r6, r0
	blt _0211A51C
	mov r0, #1
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
_0211A5A0: .word g3DPlaneCtrl
	arm_func_end FUN_ov37_0211a4fc

	arm_func_start FUN_ov37_0211a5a4
FUN_ov37_0211a5a4: ; 0x0211A5A4
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	mov r7, r0
	ldr r0, [r7, #0x88]
	cmp r0, #0
	ldmnefd sp!, {r3, r4, r5, r6, r7, pc}
	ldr r4, _0211A620 ; =g3DPlaneCtrl
	mov r6, #1
	ldr r0, [r4]
	mov r1, r6
	mov r2, r6
	bl FUN_ov16_02112724
	mov r5, r0
	str r5, [r7, #0x88]
	ldr r0, [r4]
	mov r1, r5
	sub r3, r6, #2
	mov r2, #0x1f4
	bl FUN_ov16_02112c90
	ldr r2, [r7, #0x78]
	ldr r0, [r4]
	mov r1, r5
	and r3, r2, #0xff
	mov r2, r6
	bl FUN_ov16_021137dc
	mov r1, r5
	mov r2, r6
	mov r3, #0
	str r3, [sp]
	ldr r0, [r4]
	bl FUN_ov16_0211401c
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_0211A620: .word g3DPlaneCtrl
	arm_func_end FUN_ov37_0211a5a4

	arm_func_start FUN_ov37_0211a624
FUN_ov37_0211a624: ; 0x0211A624
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, lr}
	movs r4, r1
	mov r8, r0
	mov r7, r2
	mov r6, r3
	bmi _0211A644
	cmp r4, #7
	blt _0211A64C
_0211A644:
	mov r0, #0
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
_0211A64C:
	cmp r7, #4
	movhs r0, #0
	ldmhsfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
	add r0, r8, r4, lsl #2
	ldr r0, [r0, #0x88]
	cmp r0, #0
	bne _0211A684
	ldr r0, _0211A754 ; =g3DPlaneCtrl
	mov r1, #1
	ldr r0, [r0]
	mov r2, r1
	bl FUN_ov16_02112724
	add r1, r8, r4, lsl #2
	str r0, [r1, #0x88]
_0211A684:
	add r0, r8, r4, lsl #2
	ldr r5, [r0, #0x88]
	ldr r9, _0211A754 ; =g3DPlaneCtrl
	mov r4, #1
	ldr r0, [r9]
	mov r1, r5
	mov r3, r4
	mov r2, #2
	bl FUN_ov16_021142fc
	add r0, r8, r7, lsl #2
	ldr r2, [r0, #0x78]
	ldr r0, [r9]
	mov r1, r5
	and r2, r2, #0xff
	bl FUN_ov16_02112950
	ldr r0, [r9]
	mov r1, r5
	mov r2, r6
	mov r3, #0
	bl FUN_ov16_0211346c
	ldr r0, [r9]
	mov r1, r5
	mov r2, #0x1a4
	bl FUN_ov16_02112b98
	ldr r2, [sp, #0x20]
	ldr r3, [sp, #0x24]
	mov r2, r2, lsl #0x10
	mov r3, r3, lsl #0x10
	ldr r0, [r9]
	mov r1, r5
	mov r2, r2, asr #0x10
	mov r3, r3, asr #0x10
	bl FUN_ov16_02114248
	ldr r2, [sp, #0x2c]
	ldr r0, _0211A758 ; =gSprButtonCtrl
	str r2, [sp]
	ldr r2, [sp, #0x28]
	ldr r0, [r0]
	mov r2, r2, lsl #0x10
	mov r1, r4
	mov r3, r5
	mov r2, r2, lsr #0x10
	bl FUN_ov16_0210fbe8
	cmp r0, #0
	ldmeqfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
	ldrb r3, [sp, #0x34]
	ldrb r2, [sp, #0x38]
	ldrh r1, [sp, #0x30]
	strb r3, [r0, #0x10]
	strb r2, [r0, #0xf]
	strh r1, [r0, #0xc]
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
_0211A754: .word g3DPlaneCtrl
_0211A758: .word gSprButtonCtrl
	arm_func_end FUN_ov37_0211a624

	arm_func_start FUN_ov37_0211a75c
FUN_ov37_0211a75c: ; 0x0211A75C
	stmfd sp!, {r3, r4, r5, r6, lr}
	sub sp, sp, #0x1c
	mov r1, #0x98
	str r1, [sp]
	mov r6, #1
	mov r1, #0xa8
	stmib sp, {r1, r6}
	mov r5, #0
	str r5, [sp, #0xc]
	str r6, [sp, #0x10]
	str r5, [sp, #0x14]
	mov r1, r6
	mov r2, r6
	mov r3, r5
	str r5, [sp, #0x18]
	bl FUN_ov37_0211a624
	movs r4, r0
	addeq sp, sp, #0x1c
	ldmeqfd sp!, {r3, r4, r5, r6, pc}
	mov r1, r5
	mov r2, r6
	mov r3, r5
	add r0, r4, #0x3a
	bl FUN_ov16_0210e6fc
	mov r1, r5
	mov r2, r5
	mov r3, r5
	add r0, r4, #0x3a
	bl FUN_ov16_0210e720
	mov r1, r5
	mov r2, r6
	mov r3, r5
	add r0, r4, #0x3e
	bl FUN_ov16_0210e6fc
	add r0, r4, #0x3e
	mov r2, r6
	mov r1, r5
	mov r3, r5
	bl FUN_ov16_0210e720
	add sp, sp, #0x1c
	ldmfd sp!, {r3, r4, r5, r6, pc}
	arm_func_end FUN_ov37_0211a75c

	arm_func_start FUN_ov37_0211a800
FUN_ov37_0211a800: ; 0x0211A800
	stmfd sp!, {r4, r5, r6, r7, lr}
	sub sp, sp, #0x1c
	mov r1, #0xd0
	str r1, [sp]
	mov r7, #2
	mov r1, #0xa8
	stmib sp, {r1, r7}
	mov r6, #0
	str r6, [sp, #0xc]
	mov r5, #1
	str r7, [sp, #0x10]
	str r6, [sp, #0x14]
	mov r1, r7
	mov r2, r5
	mov r3, r7
	str r6, [sp, #0x18]
	bl FUN_ov37_0211a624
	movs r4, r0
	addeq sp, sp, #0x1c
	ldmeqfd sp!, {r4, r5, r6, r7, pc}
	mov r1, r6
	mov r2, r5
	mov r3, r6
	add r0, r4, #0x3a
	bl FUN_ov16_0210e6fc
	mov r1, r6
	mov r2, r7
	mov r3, r6
	add r0, r4, #0x3a
	bl FUN_ov16_0210e720
	mov r1, r6
	mov r2, r5
	mov r3, r6
	add r0, r4, #0x3e
	bl FUN_ov16_0210e6fc
	add r0, r4, #0x3e
	mov r1, r6
	mov r3, r6
	mov r2, #3
	bl FUN_ov16_0210e720
	add sp, sp, #0x1c
	ldmfd sp!, {r4, r5, r6, r7, pc}
	arm_func_end FUN_ov37_0211a800

	arm_func_start FUN_ov37_0211a8a8
FUN_ov37_0211a8a8: ; 0x0211A8A8
	stmfd sp!, {r4, r5, r6, r7, lr}
	sub sp, sp, #0x1c
	mov r7, #0
	str r7, [sp]
	mov r1, #0x36
	str r1, [sp, #4]
	mov r1, #3
	str r1, [sp, #8]
	str r7, [sp, #0xc]
	str r7, [sp, #0x10]
	str r7, [sp, #0x14]
	mov r3, r7
	mov r2, #2
	mov r4, r0
	str r7, [sp, #0x18]
	bl FUN_ov37_0211a624
	movs r6, r0
	beq _0211A944
	mov r5, #1
	mov r1, r7
	mov r2, r5
	mov r3, r7
	add r0, r6, #0x3a
	bl FUN_ov16_0210e6fc
	mov r1, r7
	mov r2, r7
	mov r3, r7
	add r0, r6, #0x3a
	bl FUN_ov16_0210e720
	mov r1, r7
	mov r2, r5
	add r0, r6, #0x3e
	mov r3, r7
	bl FUN_ov16_0210e6fc
	add r0, r6, #0x3e
	mov r2, r5
	mov r1, r7
	mov r3, r7
	bl FUN_ov16_0210e720
_0211A944:
	mov r0, #0xf0
	str r0, [sp]
	mov r0, #0x36
	str r0, [sp, #4]
	mov r1, #4
	mov r6, #2
	str r1, [sp, #8]
	mov r7, #0
	str r7, [sp, #0xc]
	str r7, [sp, #0x10]
	str r7, [sp, #0x14]
	mov r0, r4
	mov r2, r6
	mov r3, r6
	str r7, [sp, #0x18]
	bl FUN_ov37_0211a624
	movs r5, r0
	addeq sp, sp, #0x1c
	ldmeqfd sp!, {r4, r5, r6, r7, pc}
	mov r4, #1
	mov r1, r7
	mov r2, r4
	mov r3, r7
	add r0, r5, #0x3a
	bl FUN_ov16_0210e6fc
	mov r1, r7
	mov r2, r6
	mov r3, r7
	add r0, r5, #0x3a
	bl FUN_ov16_0210e720
	mov r1, r7
	mov r2, r4
	mov r3, r7
	add r0, r5, #0x3e
	bl FUN_ov16_0210e6fc
	add r0, r5, #0x3e
	mov r1, r7
	mov r3, r7
	mov r2, #3
	bl FUN_ov16_0210e720
	add sp, sp, #0x1c
	ldmfd sp!, {r4, r5, r6, r7, pc}
	arm_func_end FUN_ov37_0211a8a8

	arm_func_start FUN_ov37_0211a9ec
FUN_ov37_0211a9ec: ; 0x0211A9EC
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, lr}
	sub sp, sp, #0x18
	mov r9, #0
	mov r1, r9
	mov r2, #1
	mov r10, r0
	bl FUN_ov37_0211ab10
	mov r5, #1
	add r8, sp, #0x14
	add r11, sp, #0x10
	mov r7, #0x40
	mov r6, r9
	ldr r4, _0211AA90 ; =gSprButtonCtrl
	b _0211AA80
_0211AA24:
	mov r0, r10
	mov r1, r9
	mov r2, r8
	mov r3, r11
	bl FUN_ov37_0211b274
	ldr r0, [sp, #0x10]
	add r2, r9, #5
	add r0, r0, #3
	stmia sp, {r0, r7}
	str r7, [sp, #8]
	str r6, [sp, #0xc]
	ldr r3, [sp, #0x14]
	mov r2, r2, lsl #0x10
	ldr r0, [r4]
	mov r1, #2
	mov r2, r2, lsr #0x10
	add r3, r3, #3
	bl FUN_ov16_0210fba4
	cmp r0, #0
	strneb r6, [r0, #0x10]
	strneb r6, [r0, #0xf]
	strneh r5, [r0, #0xc]
	add r9, r9, #1
_0211AA80:
	cmp r9, #8
	blt _0211AA24
	add sp, sp, #0x18
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_0211AA90: .word gSprButtonCtrl
	arm_func_end FUN_ov37_0211a9ec

	arm_func_start FUN_ov37_0211aa94
FUN_ov37_0211aa94: ; 0x0211AA94
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	mov r7, r0
	ldr r0, [r7, #0xa0]
	cmp r0, #0
	ldmnefd sp!, {r3, r4, r5, r6, r7, pc}
	ldr r4, _0211AB0C ; =g3DPlaneCtrl
	mov r6, #1
	ldr r0, [r4]
	mov r2, r6
	mov r1, #2
	bl FUN_ov16_02112724
	mov r5, r0
	str r5, [r7, #0xa0]
	ldr r3, [r7, #0x84]
	ldr r0, [r4]
	mov r1, r5
	mov r2, r6
	and r3, r3, #0xff
	bl FUN_ov16_021137dc
	ldr r0, [r4]
	mov r1, r5
	mov r2, r6
	mov r3, #0x1cc
	bl FUN_ov16_021139bc
	ldr r0, [r4]
	mov r1, r5
	mov r2, #0
	mov r3, r2
	bl FUN_ov16_0211346c
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_0211AB0C: .word g3DPlaneCtrl
	arm_func_end FUN_ov37_0211aa94

	arm_func_start FUN_ov37_0211ab10
FUN_ov37_0211ab10: ; 0x0211AB10
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, lr}
	sub sp, sp, #0x10
	mov r10, r0
	ldr r0, [r10, #0x9c]
	mov r11, #1
	cmp r2, #0
	movne r11, #0
	mov r4, r1
	cmp r0, #0
	bne _0211AB50
	ldr r0, _0211AD24 ; =g3DPlaneCtrl
	mov r1, #0xa
	ldr r0, [r0]
	mov r2, #1
	bl FUN_ov16_02112724
	str r0, [r10, #0x9c]
_0211AB50:
	ldr r0, _0211AD24 ; =g3DPlaneCtrl
	ldr r6, [r10, #0x9c]
	ldr r0, [r0]
	mov r1, r6
	mov r2, #0x1e0
	bl FUN_ov16_02112b98
	cmp r4, #0
	ldr r0, [r10, #0x44]
	bne _0211AB98
	ldr r2, [r10, #0xc0]
	add r1, r0, r0, lsr #31
	add r0, r2, #4
	mov r1, r1, asr #1
	bl _s32_div_f
	str r1, [sp, #4]
	mov r8, #8
	mov r9, #0
	b _0211ABBC
_0211AB98:
	ldr r1, [r10, #0xc0]
	add r0, r0, r0, lsr #31
	add r2, r1, r0, asr #1
	mov r1, r0, asr #1
	sub r0, r2, #1
	bl _s32_div_f
	str r1, [sp, #4]
	mov r8, #0
	mov r9, #2
_0211ABBC:
	mov r7, #0
	ldr r4, _0211AD24 ; =g3DPlaneCtrl
	b _0211AC8C
_0211ABC8:
	ldr r1, [r10, #0xc0]
	mov r0, r10
	mov r2, r7
	bl FUN_ov37_0211b258
	mov r5, r0
	mov r0, r10
	mov r1, r7
	add r2, sp, #0xc
	add r3, sp, #8
	bl FUN_ov37_0211b274
	ldr r0, [sp, #8]
	add r2, r7, r9
	add r0, r0, #3
	mov r0, r0, lsl #0x10
	mov r0, r0, asr #0x10
	str r0, [sp]
	ldr r3, [sp, #0xc]
	ldr r0, [r4]
	add r3, r3, #3
	mov r3, r3, lsl #0x10
	mov r1, r6
	add r2, r2, #1
	mov r3, r3, asr #0x10
	bl FUN_ov16_02113b78
	ldr r3, [r10, #0xa4]
	add r2, r7, r9
	ldr r3, [r3, r5, lsl #2]
	ldr r0, [r4]
	mov r1, r6
	add r2, r2, #1
	and r3, r3, #0xff
	bl FUN_ov16_021137dc
	mov r0, #0
	str r0, [sp]
	add r2, r7, r9
	ldr r0, [r4]
	mov r1, r6
	add r2, r2, #1
	mov r3, #0
	bl FUN_ov16_0211401c
	mov r0, #1
	str r0, [sp]
	add r2, r7, r9
	ldr r0, [r4]
	mov r1, r6
	add r2, r2, #1
	mov r3, #2
	bl FUN_ov16_02113ec0
	add r7, r7, #1
_0211AC8C:
	cmp r7, #8
	blt _0211ABC8
	mov r4, #0
	mov r7, r4
	ldr r5, _0211AD24 ; =g3DPlaneCtrl
	b _0211AD14
_0211ACA4:
	ldr r1, [sp, #4]
	mov r0, r10
	mov r2, r7
	bl FUN_ov37_0211b258
	mov r9, r0
	ldr r3, [r10, #0xa4]
	add r2, r8, r7
	ldr r3, [r3, r9, lsl #2]
	ldr r0, [r5]
	mov r1, r6
	add r2, r2, #1
	and r3, r3, #0xff
	bl FUN_ov16_021137dc
	str r4, [sp]
	add r2, r8, r7
	ldr r0, [r5]
	mov r1, r6
	add r2, r2, #1
	mov r3, r4
	bl FUN_ov16_0211401c
	str r11, [sp]
	add r2, r8, r7
	ldr r0, [r5]
	mov r1, r6
	add r2, r2, #1
	mov r3, #2
	bl FUN_ov16_02113ec0
	add r7, r7, #1
_0211AD14:
	cmp r7, #2
	blt _0211ACA4
	add sp, sp, #0x10
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_0211AD24: .word g3DPlaneCtrl
	arm_func_end FUN_ov37_0211ab10

	arm_func_start FUN_ov37_0211ad28
FUN_ov37_0211ad28: ; 0x0211AD28
	stmfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, lr}
	sub sp, sp, #0xc
	mov r9, r1
	mov r2, #0
	mov r10, r0
	bl FUN_ov37_0211ab10
	cmp r9, #0
	ldr r0, [r10, #0x44]
	ldr r2, [r10, #0xc0]
	bne _0211AD60
	add r1, r0, r0, lsr #31
	add r0, r2, #1
	mov r1, r1, asr #1
	b _0211AD70
_0211AD60:
	add r0, r0, r0, lsr #31
	mov r1, r0, asr #1
	sub r0, r1, #1
	add r0, r2, r0
_0211AD70:
	bl _s32_div_f
	cmp r9, #0
	movne r8, #0
	movne r0, #1
	moveq r8, #1
	ldr r5, _0211AE1C ; =0x0211BBC8
	subeq r0, r8, #2
	ldr r6, _0211AE20 ; =0x0211BBC0
	str r1, [r10, #0xc0]
	mov r7, #0
	add r4, r5, r0, lsl #2
	mov r11, #1
_0211ADA0:
	mov r1, r7, lsr #0x1f
	rsb r0, r1, r7, lsl #31
	add r1, r1, r0, ror #31
	add r0, r7, r7, lsr #31
	add r2, r8, r0, asr #1
	ldr r0, [r4, r2, lsl #2]
	ldr r3, [r6, r1, lsl #2]
	str r0, [sp]
	mov r12, r11
	cmp r7, #9
	movne r12, #0
	ldr r2, [r5, r2, lsl #2]
	mov r0, r10
	add r1, r7, #1
	stmib sp, {r3, r12}
	bl FUN_ov37_0211af0c
	add r7, r7, #1
	cmp r7, #0xa
	blt _0211ADA0
	mov r0, r10
	bl FUN_ov37_0211b0f4
	mov r0, r10
	mov r1, r9
	bl FUN_ov37_0211ae24
	mov r0, r10
	mov r1, r9
	bl FUN_ov37_0211ae64
	mov r0, #6
	str r0, [r10, #8]
	add sp, sp, #0xc
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
_0211AE1C: .word ov37_0211BBC8
_0211AE20: .word ov37_0211BBC0
	arm_func_end FUN_ov37_0211ad28

	arm_func_start FUN_ov37_0211ae24
FUN_ov37_0211ae24: ; 0x0211AE24
	stmfd sp!, {r3, r4, r5, lr}
	mov r5, r0
	mov r4, r1
	ldr r1, [r5, #0xc0]
	mov r2, #0
	bl FUN_ov37_0211b258
	cmp r4, #0
	ldr r1, [r5, #0x44]
	beq _0211AE50
	add r0, r0, #0xa
	b _0211AE54
_0211AE50:
	sub r0, r0, #4
_0211AE54:
	add r0, r0, r1
	bl _s32_div_f
	str r1, [r5, #0xb4]
	ldmfd sp!, {r3, r4, r5, pc}
	arm_func_end FUN_ov37_0211ae24

	arm_func_start FUN_ov37_0211ae64
FUN_ov37_0211ae64: ; 0x0211AE64
	stmfd sp!, {r3, r4, r5, lr}
	mov r5, r0
	mov r4, r1
	ldr r1, [r5, #0xc0]
	mov r2, #0
	bl FUN_ov37_0211b258
	cmp r4, #0
	ldr r1, [r5, #0x44]
	beq _0211AE90
	sub r0, r0, #2
	b _0211AE94
_0211AE90:
	add r0, r0, #8
_0211AE94:
	add r0, r0, r1
	bl _s32_div_f
	str r1, [r5, #0xb0]
	ldmfd sp!, {r3, r4, r5, pc}
	arm_func_end FUN_ov37_0211ae64

	arm_func_start FUN_ov37_0211aea4
FUN_ov37_0211aea4: ; 0x0211AEA4
	stmfd sp!, {r4, lr}
	mov r4, r0
	ldr r1, [r4, #0xb4]
	bl FUN_ov37_0211a220
	ldr r1, [r4, #0xb4]
	mov r0, r4
	add r1, r1, #1
	bl FUN_ov37_0211a220
	mov r0, #0
	str r0, [r4, #0xb4]
	ldmfd sp!, {r4, pc}
	arm_func_end FUN_ov37_0211aea4

	arm_func_start FUN_ov37_0211aed0
FUN_ov37_0211aed0: ; 0x0211AED0
	stmfd sp!, {r3, r4, r5, lr}
	mov r5, r0
	adds r4, r5, #0x54
	ldmeqfd sp!, {r3, r4, r5, pc}
	ldr r2, [r5, #0xb0]
	mov r1, r4
	bl FUN_ov37_0211a0c0
	ldr r2, [r5, #0xb0]
	mov r0, r5
	mov r1, r4
	add r2, r2, #1
	bl FUN_ov37_0211a0c0
	mov r0, #0
	str r0, [r5, #0xb0]
	ldmfd sp!, {r3, r4, r5, pc}
	arm_func_end FUN_ov37_0211aed0

	arm_func_start FUN_ov37_0211af0c
FUN_ov37_0211af0c: ; 0x0211AF0C
	stmdb sp!, {lr}
	sub sp, sp, #0x24
	ldrb r12, [sp, #0x30]
	str r1, [sp]
	ldr r1, [sp, #0x2c]
	cmp r12, #0
	mov r12, #0
	str r12, [sp, #4]
	str r2, [sp, #8]
	ldr r2, [sp, #0x28]
	str r3, [sp, #0xc]
	str r2, [sp, #0x10]
	str r1, [sp, #0x14]
	mov r1, #8
	str r1, [sp, #0x18]
	mov lr, #1
	movne lr, #0
	str r12, [sp, #0x1c]
	str lr, [sp, #0x20]
	ldr r1, _0211AF78 ; =gSprAnimCtrl
	ldr r3, [r0, #0x9c]
	ldr r0, [r1]
	mov r2, r12
	mov r1, #2
	bl FUN_ov16_0210e300
	add sp, sp, #0x24
	ldmia sp!, {pc}
_0211AF78: .word gSprAnimCtrl
	arm_func_end FUN_ov37_0211af0c

	arm_func_start FUN_ov37_0211af7c
FUN_ov37_0211af7c: ; 0x0211AF7C
	stmfd sp!, {r4, r5, r6, lr}
	mov r5, r1
	mov r6, r0
	cmp r5, #5
	ldmltfd sp!, {r4, r5, r6, pc}
	cmp r5, #0xd
	ldmgtfd sp!, {r4, r5, r6, pc}
	sub r2, r5, #5
	mvn r1, #0
	bl FUN_ov37_0211b12c
	cmp r0, #0
	beq _0211AFBC
	ldr r0, _0211AFF0 ; =gAudioPlayer
	mov r1, #8
	bl _ZN11AudioPlayer10playEffectEi
	b _0211AFE4
_0211AFBC:
	ldr r4, _0211AFF4 ; =gSprButtonCtrl
	mov r1, r5, lsl #0x10
	ldr r0, [r4]
	mov r1, r1, lsr #0x10
	bl FUN_ov16_0210e7d0
	ldrh r1, [r0, #0xc]
	cmp r1, #0
	ldrne r0, [r4]
	addne r0, r0, #0xf00
	strneh r1, [r0, #0x38]
_0211AFE4:
	mov r0, r6
	bl FUN_ov37_0211b1cc
	ldmfd sp!, {r4, r5, r6, pc}
_0211AFF0: .word gAudioPlayer
_0211AFF4: .word gSprButtonCtrl
	arm_func_end FUN_ov37_0211af7c

	arm_func_start FUN_ov37_0211aff8
FUN_ov37_0211aff8: ; 0x0211AFF8
	stmfd sp!, {r4, r5, r6, lr}
	ldr r4, _0211B090 ; =gSprButtonCtrl
	mov r5, r1
	mov r6, r0
	mov r1, r5, lsl #0x10
	ldr r0, [r4]
	mov r1, r1, lsr #0x10
	bl FUN_ov16_0210e7d0
	cmp r0, #0
	ldmeqfd sp!, {r4, r5, r6, pc}
	cmp r5, #1
	blt _0211B048
	cmp r5, #2
	bgt _0211B048
	ldrh r1, [r0, #0xc]
	cmp r1, #0
	ldrne r0, [r4]
	addne r0, r0, #0xf00
	strneh r1, [r0, #0x38]
	ldmfd sp!, {r4, r5, r6, pc}
_0211B048:
	cmp r5, #3
	bne _0211B06C
	ldr r0, _0211B094 ; =gAudioPlayer
	mov r1, #8
	bl _ZN11AudioPlayer10playEffectEi
	mov r0, r6
	mov r1, #1
	bl FUN_ov37_0211ad28
	ldmfd sp!, {r4, r5, r6, pc}
_0211B06C:
	cmp r5, #4
	ldmnefd sp!, {r4, r5, r6, pc}
	ldr r0, _0211B094 ; =gAudioPlayer
	mov r1, #8
	bl _ZN11AudioPlayer10playEffectEi
	mov r0, r6
	mov r1, #0
	bl FUN_ov37_0211ad28
	ldmfd sp!, {r4, r5, r6, pc}
_0211B090: .word gSprButtonCtrl
_0211B094: .word gAudioPlayer
	arm_func_end FUN_ov37_0211aff8

	arm_func_start FUN_ov37_0211b098
FUN_ov37_0211b098: ; 0x0211B098
	stmfd sp!, {r4, lr}
	mov r4, r0
	ldr r0, [r4, #4]
	mov r1, #0
	ldr r2, [r0]
	ldr r2, [r2, #0x28]
	blx r2
	ldr r2, [r4, #0xb8]
	ldr r1, [r4, #0xc4]
	mov r0, #0x74
	mla r2, r1, r0, r2
	add r0, r4, #0xc
	add r1, r2, #2
	bl FUN_ov16_020f2a18
	ldmfd sp!, {r4, pc}
	arm_func_end FUN_ov37_0211b098

	arm_func_start FUN_ov37_0211b0d4
FUN_ov37_0211b0d4: ; 0x0211B0D4
	stmfd sp!, {r3, lr}
	bl FUN_ov37_0211bae0
	bl GX_ResetBankForBG
	bl GX_ResetBankForTex
	bl GX_ResetBankForTexPltt
	mov r0, #0xc
	bl FUN_ov16_020f3f60
	ldmfd sp!, {r3, pc}
	arm_func_end FUN_ov37_0211b0d4

	arm_func_start FUN_ov37_0211b0f4
FUN_ov37_0211b0f4: ; 0x0211B0F4
	stmfd sp!, {r4, lr}
	mov r4, r0
	ldr r1, [r4, #0xc0]
	ldr r2, [r4, #0xbc]
	bl FUN_ov37_0211b258
	mov r1, #0x74
	mul r1, r0, r1
	ldr r2, [r4, #0xb8]
	str r0, [r4, #0xc4]
	ldrsh r1, [r2, r1]
	mov r0, #1
	str r1, [r4, #0xcc]
	strb r0, [r4, #0xd0]
	ldmfd sp!, {r4, pc}
	arm_func_end FUN_ov37_0211b0f4

	arm_func_start FUN_ov37_0211b12c
FUN_ov37_0211b12c: ; 0x0211B12C
	cmp r1, #0
	strge r1, [r0, #0xc0]
	mov r3, #0
	cmp r2, #0
	blt _0211B154
	ldr r1, [r0, #0xbc]
	mov r3, #1
	cmp r1, r2
	moveq r3, #0
	str r2, [r0, #0xbc]
_0211B154:
	mov r0, r3
	bx lr
	arm_func_end FUN_ov37_0211b12c

	arm_func_start FUN_ov37_0211b15c
FUN_ov37_0211b15c: ; 0x0211B15C
	ldr r3, [r0, #0xbc]
	tst r1, #0x40
	mov r2, r3, asr #1
	bne _0211B174
	tst r1, #0x80
	beq _0211B180
_0211B174:
	ldr r1, [r0, #0xbc]
	eor r1, r1, #1
	b _0211B1B4
_0211B180:
	tst r1, #0x20
	beq _0211B19C
	cmp r2, #0
	moveq r0, #2
	bxeq lr
	sub r1, r3, #2
	b _0211B1B4
_0211B19C:
	tst r1, #0x10
	beq _0211B1B8
	cmp r2, #3
	moveq r0, #3
	bxeq lr
	add r1, r3, #2
_0211B1B4:
	str r1, [r0, #0xbc]
_0211B1B8:
	ldr r0, [r0, #0xbc]
	cmp r0, r3
	movne r0, #1
	moveq r0, #0
	bx lr
	arm_func_end FUN_ov37_0211b15c

	arm_func_start FUN_ov37_0211b1cc
FUN_ov37_0211b1cc: ; 0x0211B1CC
	stmfd sp!, {r4, r5, lr}
	sub sp, sp, #0xc
	mov r4, r0
	ldr r0, [r4, #0xbc]
	ldr r5, _0211B254 ; =g3DPlaneCtrl
	mov r1, r0, lsr #0x1f
	rsb r0, r1, r0, lsl #31
	adds r0, r1, r0, ror #31
	moveq r0, #0x35
	movne r0, #3
	str r0, [sp]
	ldr r0, [r5]
	ldr r1, [r4, #0xa0]
	mvn r3, #2
	mov r2, #2
	bl FUN_ov16_02113b78
	ldr r1, [r4, #0xbc]
	add r2, sp, #8
	add r3, sp, #4
	mov r0, r4
	bl FUN_ov37_0211b274
	ldr r1, [sp, #8]
	ldr r0, [sp, #4]
	mov r2, r1, lsl #0x10
	mov r3, r0, lsl #0x10
	ldr r0, [r5]
	ldr r1, [r4, #0xa0]
	mov r2, r2, asr #0x10
	mov r3, r3, asr #0x10
	bl FUN_ov16_02114248
	mov r0, r4
	bl FUN_ov37_0211b0f4
	add sp, sp, #0xc
	ldmfd sp!, {r4, r5, pc}
_0211B254: .word g3DPlaneCtrl
	arm_func_end FUN_ov37_0211b1cc

	arm_func_start FUN_ov37_0211b258
FUN_ov37_0211b258: ; 0x0211B258
	stmfd sp!, {r3, lr}
	mov r3, r0
	add r0, r2, r1, lsl #1
	ldr r1, [r3, #0x44]
	bl _s32_div_f
	mov r0, r1
	ldmfd sp!, {r3, pc}
	arm_func_end FUN_ov37_0211b258

	arm_func_start FUN_ov37_0211b274
FUN_ov37_0211b274: ; 0x0211B274
	stmfd sp!, {r3, lr}
	add r0, r1, r1, lsr #31
	mov r12, r1, lsr #0x1f
	rsb r1, r12, r1, lsl #31
	mov lr, r0, asr #1
	mov r0, #0x34
	mul r0, lr, r0
	add lr, r0, #0x17
	add r1, r12, r1, ror #31
	mov r0, #0x3c
	mul r0, r1, r0
	str lr, [r2]
	add r0, r0, #0x27
	str r0, [r3]
	ldmfd sp!, {r3, pc}
	arm_func_end FUN_ov37_0211b274

	arm_func_start FUN_ov37_0211b2b0
FUN_ov37_0211b2b0: ; 0x0211B2B0
	ldr r2, _0211B2C0 ; =0x0211BCE0
	str r1, [r0, #4]
	str r2, [r0]
	bx lr
_0211B2C0: .word ov37_0211BCE0
	arm_func_end FUN_ov37_0211b2b0

	arm_func_start FUN_ov37_0211b2c4
FUN_ov37_0211b2c4: ; 0x0211B2C4
	stmfd sp!, {r4, r5, r6, r7, r8, lr}
	mov r7, r0
	ldr r2, [r7, #8]
	ldr r0, _0211B4A8 ; =0x0209A0F4
	mov r6, r1
	cmp r2, #0xb
	ldrh r5, [r0]
	ldr r4, _0211B4AC ; =gAudioPlayer
	bne _0211B2F8
	tst r6, #1
	beq _0211B2F8
	ldr r0, _0211B4B0 ; =gMoviePlayer
	bl _ZN11MoviePlayer12FUN_0202e958Ev
_0211B2F8:
	ldr r0, _0211B4B4 ; =gSprAnimCtrl
	ldr r0, [r0]
	bl FUN_ov16_0210e15c
	cmp r0, #0
	ldreq r0, [r7, #8]
	cmpeq r0, #9
	ldreqb r0, [r7, #0xd2]
	cmpeq r0, #0
	ldmnefd sp!, {r4, r5, r6, r7, r8, pc}
	ldr r8, _0211B4B8 ; =gSprButtonCtrl
	ldr r0, [r8]
	bl FUN_ov16_0210f468
	cmp r0, #0
	beq _0211B34C
	ldr r0, [r8]
	add r0, r0, #0xf00
	ldrh r6, [r0, #0x38]
	cmp r6, #0
	ldmeqfd sp!, {r4, r5, r6, r7, r8, pc}
	mov r1, #0
	strh r1, [r0, #0x38]
_0211B34C:
	tst r6, #1
	beq _0211B40C
	ldr r1, [r7, #0xc0]
	ldr r2, [r7, #0xbc]
	mov r0, r7
	bl FUN_ov37_0211b258
	ldr r2, [r7, #0xb8]
	mov r1, #0x74
	mla r1, r0, r1, r2
	str r0, [r7, #0xc4]
	add r0, r1, #2
	bl STD_GetStringLength
	cmp r0, #0
	ldrne r0, [r7, #0xc8]
	ldrne r4, [r7, #0xc4]
	ldrneb r0, [r0, r4]
	cmpne r0, #0
	bne _0211B3A4
	ldr r0, _0211B4AC ; =gAudioPlayer
	mov r1, #4
	bl _ZN11AudioPlayer10playEffectEi
	ldmfd sp!, {r4, r5, r6, r7, r8, pc}
_0211B3A4:
	ldr r0, [r7, #0x40]
	mov r1, #1
	sub r0, r0, #1
	cmp r4, r0
	bne _0211B3F8
	ldr r0, _0211B4BC ; =0x020A0640
	ldr r2, _0211B4C0 ; =0x020A1640
	strb r1, [r0, #0xaf]
	ldr r3, [r7, #0xbc]
	ldr r0, _0211B4AC ; =gAudioPlayer
	str r3, [r2, #0x238]
	ldr r3, [r7, #0xc0]
	str r3, [r2, #0x23c]
	str r4, [r2, #0x240]
	strb r1, [r2, #0x244]
	bl _ZN11AudioPlayer10playEffectEi
	mov r0, #6
	bl _Z11SetNextMode8GameMode
	mov r0, #0xd
	str r0, [r7, #8]
	ldmfd sp!, {r4, r5, r6, r7, r8, pc}
_0211B3F8:
	ldr r0, _0211B4AC ; =gAudioPlayer
	bl _ZN11AudioPlayer10playEffectEi
	mov r0, #0xa
	str r0, [r7, #8]
	ldmfd sp!, {r4, r5, r6, r7, r8, pc}
_0211B40C:
	tst r6, #2
	beq _0211B43C
	mov r5, #4
	mov r0, r4
	mov r1, r5
	bl _ZN11AudioPlayer10playEffectEi
	mov r0, r4
	mov r1, r5
	bl _ZN11AudioPlayer10playEffectEi
	mov r0, #0xd
	str r0, [r7, #8]
	ldmfd sp!, {r4, r5, r6, r7, r8, pc}
_0211B43C:
	tst r5, #0xf0
	ldmeqfd sp!, {r4, r5, r6, r7, r8, pc}
	mov r0, r7
	mov r1, r5
	bl FUN_ov37_0211b15c
	cmp r0, #1
	beq _0211B46C
	cmp r0, #2
	beq _0211B478
	cmp r0, #3
	beq _0211B484
	ldmfd sp!, {r4, r5, r6, r7, r8, pc}
_0211B46C:
	mov r0, r7
	bl FUN_ov37_0211b1cc
	b _0211B490
_0211B478:
	mov r0, r7
	mov r1, #1
	b _0211B48C
_0211B484:
	mov r0, r7
	mov r1, #0
_0211B48C:
	bl FUN_ov37_0211ad28
_0211B490:
	mov r0, r7
	bl FUN_ov37_0211b0f4
	ldr r0, _0211B4AC ; =gAudioPlayer
	mov r1, #8
	bl _ZN11AudioPlayer10playEffectEi
	ldmfd sp!, {r4, r5, r6, r7, r8, pc}
_0211B4A8: .word unk_0209A0F4
_0211B4AC: .word gAudioPlayer
_0211B4B0: .word gMoviePlayer
_0211B4B4: .word gSprAnimCtrl
_0211B4B8: .word gSprButtonCtrl
_0211B4BC: .word unk_020A0640
_0211B4C0: .word unk_020A1640
	arm_func_end FUN_ov37_0211b2c4

	arm_func_start FUN_ov37_0211b4c4
FUN_ov37_0211b4c4: ; 0x0211B4C4
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	ldr r2, _0211B548 ; =gSprAnimCtrl
	mov r7, r0
	ldr r0, [r2]
	mov r6, r1
	mov r5, #0
	bl FUN_ov16_0210e15c
	cmp r0, #0
	ldreq r0, [r7, #8]
	cmpeq r0, #9
	ldmnefd sp!, {r3, r4, r5, r6, r7, pc}
	ldr r4, _0211B54C ; =gSprButtonCtrl
	mov r1, r6
	ldr r0, [r4]
	mov r2, r5
	bl FUN_ov16_0210f20c
	cmp r0, #1
	beq _0211B518
	cmp r0, #2
	beq _0211B530
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_0211B518:
	ldr r0, [r4]
	bl FUN_ov16_0210f484
	mov r1, r0
	mov r0, r7
	bl FUN_ov37_0211af7c
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_0211B530:
	ldr r0, [r4]
	bl FUN_ov16_0210f484
	mov r1, r0
	mov r0, r7
	bl FUN_ov37_0211aff8
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_0211B548: .word gSprAnimCtrl
_0211B54C: .word gSprButtonCtrl
	arm_func_end FUN_ov37_0211b4c4

	arm_func_start FUN_ov37_0211b550
FUN_ov37_0211b550: ; 0x0211B550
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	ldr r1, _0211B778 ; =gSprButtonCtrl
	mov r6, r0
	ldr r0, [r1]
	mov r4, #0
	bl FUN_ov16_0210e980
	ldr r0, _0211B77C ; =gSprAnimCtrl
	ldr r0, [r0]
	bl FUN_ov16_0210e0a0
	mov r0, r6
	ldr r1, [r0]
	ldr r1, [r1, #0x44]
	blx r1
	ldr r0, _0211B780 ; =0x0209A1A8
	ldrb r0, [r0, #2]
	str r0, [r6, #0x40]
	cmp r0, #0
	blt _0211B5A0
	cmp r0, #0x40
	ble _0211B5A8
_0211B5A0:
	mov r0, #0x40
	str r0, [r6, #0x40]
_0211B5A8:
	ldr r1, [r6, #0x40]
	and r0, r1, #1
	add r0, r1, r0
	str r0, [r6, #0x44]
	bl FUN_ov16_020f47fc
	mov r0, #0xc
	bl FUN_ov16_020f3f60
	mov r5, #0
	ldr r0, _0211B784 ; =gBgMenuManager
	mov r1, r5
	bl FUN_ov16_020f5a58
	str r5, [r6, #0xbc]
	str r5, [r6, #0xc0]
	str r5, [r6, #0xc4]
	b _0211B5F0
_0211B5E4:
	add r0, r6, r5, lsl #2
	str r4, [r0, #0xa8]
	add r5, r5, #1
_0211B5F0:
	cmp r5, #2
	blt _0211B5E4
	ldr r0, _0211B788 ; =0x020A1640
	str r4, [r6, #0xb0]
	str r4, [r6, #0xb4]
	ldrb r1, [r0, #0x244]
	cmp r1, #0
	beq _0211B62C
	ldr r1, [r0, #0x238]
	str r1, [r6, #0xbc]
	ldr r1, [r0, #0x23c]
	str r1, [r6, #0xc0]
	ldr r1, [r0, #0x240]
	str r1, [r6, #0xc4]
	strb r4, [r0, #0x244]
_0211B62C:
	ldr r0, [r6, #0x44]
	mov r0, r0, lsl #2
	bl _Znam
	ldr r1, [r6, #0x44]
	mov r7, #0x74
	str r0, [r6, #0xa4]
	mul r0, r1, r7
	bl _Znam
	ldr r1, [r6, #0x44]
	str r0, [r6, #0xb8]
	rsb r0, r1, r1, lsl #1
	bl _Znam
	mov r5, #0
	str r0, [r6, #0xc8]
	mov r1, r5
	add r0, r6, #0x48
	mov r2, #0x24
	str r5, [r6, #8]
	bl MI_CpuFill8
	add r0, r6, #0x78
	mov r1, r5
	mov r2, #0x10
	bl MI_CpuFill8
	add r0, r6, #0x88
	mov r1, r5
	mov r2, #0x1c
	bl MI_CpuFill8
	ldr r1, [r6, #0x44]
	ldr r0, [r6, #0xa4]
	mov r2, r1, lsl #2
	mov r1, r5
	bl MI_CpuFill8
	ldr r2, [r6, #0x44]
	ldr r0, [r6, #0xc8]
	mov r1, r5
	bl MI_CpuFill8
	add r0, r6, #0xcc
	mov r1, r5
	mov r2, #0x14
	bl MI_CpuFill8
	ldr r1, [r6, #0x44]
	ldr r0, [r6, #0xb8]
	mul r2, r1, r7
	mov r1, r5
	bl MI_CpuFill8
	mov r0, r6
	bl FUN_ov37_02119f48
	mov r0, #1
	ldr r2, _0211B78C ; =gRecordManager
	b _0211B738
_0211B6F4:
	and r3, r5, #0xff
	mov r7, r4, lsl r3
	rsb r1, r3, #0x20
	orr r7, r7, r0, lsr r1
	sub r1, r3, #0x20
	ldr r12, [r2, #0x28]
	orr r7, r7, r0, lsl r1
	ldr r1, [r2, #0x2c]
	and r3, r12, r0, lsl r3
	and r1, r1, r7
	cmp r1, #0
	cmpeq r3, #0
	movne r3, r0
	ldr r1, [r6, #0xc8]
	moveq r3, r4
	strb r3, [r1, r5]
	add r5, r5, #1
_0211B738:
	ldr r1, [r6, #0x44]
	cmp r5, r1
	blt _0211B6F4
	ldr r5, [r6, #0x40]
	mov r1, #1
	b _0211B75C
_0211B750:
	ldr r0, [r6, #0xc8]
	strb r1, [r0, r5]
	add r5, r5, #1
_0211B75C:
	ldr r0, [r6, #0x44]
	cmp r5, r0
	blt _0211B750
	ldr r0, [r6, #0xc8]
	mov r1, #1
	strb r1, [r0]
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_0211B778: .word gSprButtonCtrl
_0211B77C: .word gSprAnimCtrl
_0211B780: .word unk_0209A1A8
_0211B784: .word gBgMenuManager
_0211B788: .word unk_020A1640
_0211B78C: .word gRecordManager
	arm_func_end FUN_ov37_0211b550

	arm_func_start FUN_ov37_0211b790
FUN_ov37_0211b790: ; 0x0211B790
	stmfd sp!, {r3, r4, r5, lr}
	mov r4, r0
	ldr r1, [r4, #8]
	cmp r1, #0xe
	addls pc, pc, r1, lsl #2
	b _0211BA04
_0211B7A8: ; jump table
	b _0211B7E4 ; case 0
	b _0211B7EC ; case 1
	b _0211B7FC ; case 2
	b _0211B838 ; case 3
	b _0211B858 ; case 4
	b _0211B870 ; case 5
	b _0211B8D8 ; case 6
	b _0211B8E4 ; case 7
	b _0211B8F4 ; case 8
	b _0211BA04 ; case 9
	b _0211B90C ; case 10
	b _0211B938 ; case 11
	b _0211B954 ; case 12
	b _0211B960 ; case 13
	b _0211B9A4 ; case 14
_0211B7E4:
	mov r0, #1
	str r0, [r4, #8]
_0211B7EC:
	mov r0, r4
	bl FUN_ov37_02119f00
	mov r0, #2
	str r0, [r4, #8]
_0211B7FC:
	mov r5, #3
	mov r1, r5
	add r0, r4, #0x48
	bl _ZN7Archive11TryFinalizeEP9SFileDatai
	cmp r0, #0
	beq _0211BA04
	ldr r0, [r4, #0x74]
	bl _ZN10FileSystem14IsArchiveReadyEi
	cmp r0, #0
	beq _0211BA04
	ldr r0, [r4, #0x70]
	bl _ZN10FileSystem14IsArchiveReadyEi
	cmp r0, #0
	beq _0211BA04
	str r5, [r4, #8]
_0211B838:
	mov r0, r4
	bl FUN_ov37_0211a024
	mov r0, r4
	bl FUN_ov37_0211a194
	mov r0, r4
	bl FUN_ov37_0211a060
	mov r0, #4
	str r0, [r4, #8]
_0211B858:
	mov r0, r4
	bl FUN_ov37_0211a3e8
	cmp r0, #0
	beq _0211BA04
	mov r0, #5
	str r0, [r4, #8]
_0211B870:
	ldr r0, _0211BAB4 ; =gSprAnimCtrl
	ldr r0, [r0]
	bl FUN_ov16_0210e15c
	cmp r0, #0
	bne _0211BA04
	mov r0, r4
	bl FUN_ov37_0211a5a4
	mov r0, r4
	bl FUN_ov37_0211a75c
	mov r0, r4
	bl FUN_ov37_0211a800
	mov r0, r4
	bl FUN_ov37_0211a8a8
	mov r0, r4
	bl FUN_ov37_0211aa94
	mov r0, r4
	bl FUN_ov37_0211b1cc
	mov r0, r4
	bl FUN_ov37_0211a9ec
	mov r0, r4
	ldr r1, [r0]
	ldr r1, [r1, #0x4c]
	blx r1
	mov r0, #9
_0211B8D0:
	str r0, [r4, #8]
	b _0211BA04
_0211B8D8:
	bl FUN_ov37_0211aea4
	mov r0, #7
	str r0, [r4, #8]
_0211B8E4:
	mov r0, r4
	bl FUN_ov37_0211aed0
	mov r0, #8
	str r0, [r4, #8]
_0211B8F4:
	mov r0, r4
	bl FUN_ov37_0211a4fc
	cmp r0, #0
	movne r0, #9
	strne r0, [r4, #8]
	b _0211BA04
_0211B90C:
	ldr r0, _0211BAB8 ; =gAudioPlayer
	mov r1, #1
	bl _ZN11AudioPlayer15isPlayingEffectEi
	cmp r0, #0
	bne _0211BA04
	mov r0, r4
	bl FUN_ov37_0211a2cc
	mov r0, r4
	bl FUN_ov37_0211b098
	mov r0, #0xb
	b _0211B8D0
_0211B938:
	bl FUN_ov16_020f2aa4
	cmp r0, #0
	bne _0211BA04
	add r0, r4, #0xc
	bl FUN_ov16_020f2a74
	mov r0, #0xc
	b _0211B8D0
_0211B954:
	bl FUN_ov37_0211b0d4
	mov r0, #0
	b _0211B8D0
_0211B960:
	ldr r0, _0211BAB4 ; =gSprAnimCtrl
	ldr r0, [r0]
	bl FUN_ov16_0210e15c
	cmp r0, #0
	bne _0211BA04
	mov r0, r4
	ldr r1, [r0]
	ldr r1, [r1, #0x50]
	blx r1
	ldr r0, _0211BABC ; =0x020A0640
	ldrb r0, [r0, #0xaf]
	cmp r0, #0
	beq _0211B99C
	mov r0, #6
	bl _ZN8Graphics12FadeSubBlackEl
_0211B99C:
	mov r0, #0xe
	str r0, [r4, #8]
_0211B9A4:
	mov r0, r4
	ldr r1, [r0]
	ldr r1, [r1, #0x58]
	blx r1
	cmp r0, #0
	bne _0211BA04
	ldr r0, _0211BABC ; =0x020A0640
	ldrb r0, [r0, #0xaf]
	cmp r0, #0
	bne _0211B9EC
	ldr r0, [r4, #4]
	mov r1, #0
	mov r2, #0x22
	bl _ZN14CScreenManager12setNextSceneE12EngineSelect9SceneType
	ldr r0, [r4, #4]
	mov r1, #1
	mov r2, #0xa
	bl _ZN14CScreenManager12setNextSceneE12EngineSelect9SceneType
_0211B9EC:
	bl FUN_ov16_020f47fc
	ldr r0, [r4, #4]
	mov r1, #0
	ldr r2, [r0]
	ldr r2, [r2, #0xc]
	blx r2
_0211BA04:
	ldr r0, _0211BAB4 ; =gSprAnimCtrl
	ldr r5, _0211BAC0 ; =gDeltaTime
	ldr r0, [r0]
	ldr r1, [r5]
	bl FUN_ov16_0210e10c
	ldr r0, [r5]
	cmp r0, #0
	mov r0, r0, lsl #0xc
	beq _0211BA3C
	bl _ffltu
	mov r1, r0
	mov r0, #0x3f000000
	bl _fadd
	b _0211BA48
_0211BA3C:
	bl _ffltu
	mov r1, #0x3f000000
	bl _fsub
_0211BA48:
	bl _ffix
	ldr r2, _0211BAC4 ; =g3DSpriteCtrl
	mov r1, r0
	ldr r0, [r2]
	bl FUN_ov16_02116654
	ldrb r0, [r4, #0xd0]
	cmp r0, #0
	ldmeqfd sp!, {r3, r4, r5, pc}
	ldr r2, [r4, #0xc4]
	ldr r1, [r4, #0xb8]
	mov r0, #0x74
	mla r0, r2, r0, r1
	ldr r1, [r4, #0xc8]
	add r3, r0, #2
	ldrb r5, [r1, r2]
	add r2, r0, #0xc
	add r1, r0, #0x1b
	ldr r0, [r4, #4]
	strb r5, [r4, #0xd1]
	str r3, [r4, #0xd4]
	str r2, [r4, #0xd8]
	str r1, [r4, #0xdc]
	ldr r2, [r0]
	add r1, r4, #0xcc
	ldr r2, [r2, #0x3c]
	blx r2
	ldmfd sp!, {r3, r4, r5, pc}
_0211BAB4: .word gSprAnimCtrl
_0211BAB8: .word gAudioPlayer
_0211BABC: .word unk_020A0640
_0211BAC0: .word gDeltaTime
_0211BAC4: .word g3DSpriteCtrl
	arm_func_end FUN_ov37_0211b790

	arm_func_start FUN_ov37_0211bac8
FUN_ov37_0211bac8: ; 0x0211BAC8
	stmfd sp!, {r3, lr}
	ldr r0, [r0, #8]
	cmp r0, #0xb
	ldmnefd sp!, {r3, pc}
	bl FUN_ov16_020f2ab4
	ldmfd sp!, {r3, pc}
	arm_func_end FUN_ov37_0211bac8

	arm_func_start FUN_ov37_0211bae0
FUN_ov37_0211bae0: ; 0x0211BAE0
	stmfd sp!, {r3, lr}
	bl FUN_ov37_0211a2cc
	ldr r0, _0211BB10 ; =gSprButtonCtrl
	ldr r0, [r0]
	bl FUN_ov16_0210e9d8 ; may be ov17 ; ov16(Mica)
	ldr r0, _0211BB14 ; =gSprAnimCtrl
	ldr r0, [r0]
	bl FUN_ov16_0210e0d8
	ldr r0, _0211BB18 ; =g3DPlaneCtrl
	ldr r0, [r0]
	bl FUN_ov16_021123c4
	ldmfd sp!, {r3, pc}
_0211BB10: .word gSprButtonCtrl
_0211BB14: .word gSprAnimCtrl
_0211BB18: .word g3DPlaneCtrl
	arm_func_end FUN_ov37_0211bae0

	arm_func_start FUN_ov37_0211bb1c
FUN_ov37_0211bb1c: ; 0x0211BB1C
	stmfd sp!, {r3, r4, r5, lr}
	mov r5, r0
	mov r4, #0
	ldr r0, _0211BB9C ; =gBgMenuManager
	mov r1, r4
	bl FUN_ov16_020f5af0
	mov r0, r5
	bl FUN_ov37_0211bae0
	ldr r0, [r5, #0xc8]
	cmp r0, #0
	beq _0211BB50
	bl _ZdaPv
	str r4, [r5, #0xc8]
_0211BB50:
	ldr r0, [r5, #0xb8]
	cmp r0, #0
	beq _0211BB68
	bl _ZdaPv
	mov r0, #0
	str r0, [r5, #0xb8]
_0211BB68:
	ldr r0, [r5, #0xa4]
	cmp r0, #0
	beq _0211BB80
	bl _ZdaPv
	mov r0, #0
	str r0, [r5, #0xa4]
_0211BB80:
	ldr r1, _0211BBA0 ; =0x0209A454
	mov r2, #5
	ldr r0, _0211BBA4 ; =0x020DBEC1
	strb r2, [r1, #0x82]
	mov r1, #0
	strb r1, [r0]
	ldmfd sp!, {r3, r4, r5, pc}
_0211BB9C: .word gBgMenuManager
_0211BBA0: .word unk_0209A454
_0211BBA4: .word ov4_020DBEC1
	arm_func_end FUN_ov37_0211bb1c

	arm_func_start FUN_ov37_0211bba8
FUN_ov37_0211bba8: ; 0x0211BBA8
	stmfd sp!, {r4, lr}
	mov r4, r0
	bl _ZdlPv
	mov r0, r4
	ldmfd sp!, {r4, pc}
	arm_func_end FUN_ov37_0211bba8

	arm_func_start FUN_ov37_0211bbbc
FUN_ov37_0211bbbc: ; 0x0211BBBC
	bx lr
	arm_func_end FUN_ov37_0211bbbc

	.rodata
	.global ov37_0211BBC0
ov37_0211BBC0:
	.byte 0x2A, 0x00, 0x00, 0x00, 0x66, 0x00, 0x00, 0x00
	.global ov37_0211BBC8
ov37_0211BBC8:
	.byte 0xCF, 0xFF, 0xFF, 0xFF, 0x1A, 0x00, 0x00, 0x00
	.byte 0x4E, 0x00, 0x00, 0x00, 0x82, 0x00, 0x00, 0x00, 0xB6, 0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00
	.global ov37_0211BBE0
ov37_0211BBE0:
	.word ov37_0211BCC8
	.byte 0x00, 0x00, 0x00, 0x00
	.word ov37_0211BC98
	.byte 0x01, 0x00, 0x00, 0x00
	.word ov37_0211BCA8
	.byte 0x02, 0x00, 0x00, 0x00
	.word ov37_0211BCB8
	.byte 0x03, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00

	.section .init, 4
	arm_func_start FUN_ov37_0211bc08
FUN_ov37_0211bc08: ; 0x0211BC08
	stmfd sp!, {r3, r4, r5, lr}
	mov r5, #0x2000
	mov r0, r5
	bl FX_Sqrt
	ldr r4, _0211BC50 ; =0x0211BC80
	str r0, [r4]
	ldr r0, _0211BC54 ; =0x00009CCD
	bl FX_Sqrt
	mov r1, #0x800
	str r0, [r4, #0x10]
	ldr r0, _0211BC58 ; =0x0000EA3C
	str r1, [r4, #0x14]
	str r0, [r4, #4]
	add r0, r5, #0x4e0000
	str r0, [r4, #0xc]
	add r0, r1, #0x840000
	str r0, [r4, #8]
	ldmfd sp!, {r3, r4, r5, pc}
_0211BC50: .word ov37_0211BC80
_0211BC54: .word 0x00009CCD
_0211BC58: .word 0x0000EA3C
	arm_func_end FUN_ov37_0211bc08

	.section .sinit, 4
ov37_0211BC5C:
	.word FUN_ov37_0211bc08

	.data
	.global ov37_0211BC80
ov37_0211BC80:
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.global ov37_0211BC98
ov37_0211BC98:
	.byte 0x6D, 0x76, 0x64, 0x6E, 0x5F, 0x62, 0x30, 0x31
	.byte 0x2E, 0x70, 0x61, 0x63, 0x5F, 0x00, 0x00, 0x00
	.global ov37_0211BCA8
ov37_0211BCA8:
	.byte 0x6D, 0x76, 0x64, 0x6E, 0x5F, 0x62, 0x30, 0x32
	.byte 0x2E, 0x70, 0x61, 0x63, 0x5F, 0x00, 0x00, 0x00
	.global ov37_0211BCB8
ov37_0211BCB8:
	.byte 0x6D, 0x76, 0x64, 0x6E, 0x5F, 0x63, 0x30, 0x31
	.byte 0x2E, 0x70, 0x61, 0x63, 0x5F, 0x00, 0x00, 0x00
	.global ov37_0211BCC8
ov37_0211BCC8:
	.byte 0x6D, 0x76, 0x64, 0x6E, 0x5F, 0x62, 0x67, 0x31
	.byte 0x2E, 0x70, 0x61, 0x63, 0x5F, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.global ov37_0211BCE0
ov37_0211BCE0:
	.word FUN_ov37_0211bbbc
	.word FUN_ov37_0211bba8
	.word FUN_ov37_0211b2c4
	.word FUN_ov37_0211b4c4
	.word FUN_ov37_0211b550
	.word _ZN12CommonScreen7vFUN_14Ev
	.word FUN_ov37_0211b790
	.word FUN_ov37_0211bac8
	.word FUN_ov37_0211bb1c
	.word _ZN12CommonScreen7vFUN_24Ev
	.word _ZN12CommonScreen7vFUN_28Ev
	.word _ZN12CommonScreen7vFUN_2CEv
	.word _ZN12CommonScreen7vFUN_30Ev
	.word _ZN12CommonScreen7vFUN_34Ev
	.word _ZN12CommonScreen7vFUN_38Ev
	.word _ZN16CommonMainScreen9fadeResetEv
	.word _ZN16CommonMainScreen10fadeUpdateEv
	.word _ZN16CommonMainScreen8blackOutEv
	.word _ZN16CommonMainScreen8whiteOutEv
	.word _ZN16CommonMainScreen6fadeInEv
	.word _ZN16CommonMainScreen9fadeBlackEv
	.word _ZN16CommonMainScreen9fadeWhiteEv
	.word _ZN16CommonMainScreen8isFadingEv
	.word _ZN16CommonMainScreen16isBrightAdjustedEv
	.word _ZN12CommonScreen8transferEPv
	.word _ZN12CommonScreen6signalEi
	.word _ZN12CommonScreen5stateEv
	.global ov37_0211BD4C
ov37_0211BD4C:
	.byte 0x2F, 0x64, 0x61, 0x74
	.byte 0x61, 0x5F, 0x69, 0x7A, 0x2F, 0x70, 0x69, 0x63, 0x33, 0x64, 0x2F, 0x6D, 0x65, 0x6E, 0x75, 0x5F
	.byte 0x4D, 0x6F, 0x76, 0x69, 0x65, 0x56, 0x69, 0x65, 0x77, 0x2E, 0x53, 0x50, 0x4C, 0x00, 0x00, 0x00
	.global ov37_0211BD70
ov37_0211BD70:
	.byte 0x70, 0x69, 0x63, 0x32, 0x64, 0x2F, 0x6D, 0x65, 0x6E, 0x75, 0x2F, 0x6D, 0x76, 0x64, 0x6E, 0x5F
	.byte 0x65, 0x00, 0x00, 0x00
	.global ov37_0211BD84
ov37_0211BD84:
	.byte 0x70, 0x69, 0x63, 0x32, 0x64, 0x2F, 0x6D, 0x65, 0x6E, 0x75, 0x2F, 0x6D
	.byte 0x76, 0x64, 0x6E, 0x5F, 0x71, 0x00, 0x00, 0x00
	.global ov37_0211BD98
ov37_0211BD98:
	.byte 0x49, 0x5A, 0x5F, 0x54, 0x59, 0x50, 0x45, 0x00
	.global ov37_0211BDA0
ov37_0211BDA0:
	.byte 0x2F, 0x64, 0x61, 0x74, 0x61, 0x5F, 0x69, 0x7A, 0x2F, 0x6C, 0x6F, 0x67, 0x69, 0x63, 0x2F, 0x6D
	.byte 0x6F, 0x76, 0x69, 0x65, 0x5F, 0x76, 0x69, 0x65, 0x77, 0x5F, 0x66, 0x2E, 0x64, 0x61, 0x74, 0x00
	.global ov37_0211BDC0
ov37_0211BDC0:
	.byte 0x2F, 0x64, 0x61, 0x74, 0x61, 0x5F, 0x69, 0x7A, 0x2F, 0x6C, 0x6F, 0x67, 0x69, 0x63, 0x2F, 0x6D
	.byte 0x6F, 0x76, 0x69, 0x65, 0x5F, 0x76, 0x69, 0x65, 0x77, 0x5F, 0x62, 0x2E, 0x64, 0x61, 0x74, 0x00
	.global ov37_0211BDE0
ov37_0211BDE0:
	.byte 0x2F, 0x64, 0x61, 0x74, 0x61, 0x5F, 0x69, 0x7A, 0x2F, 0x70, 0x69, 0x63, 0x33, 0x64, 0x2F, 0x6D
	.byte 0x65, 0x6E, 0x75, 0x5F, 0x4D, 0x6F, 0x76, 0x69, 0x65, 0x56, 0x69, 0x65, 0x77, 0x2E, 0x53, 0x50
	.byte 0x44, 0x00, 0x00, 0x00
	.global ov37_0211BE04
ov37_0211BE04:
	.byte 0x6D, 0x76, 0x64, 0x6E, 0x5F, 0x65, 0x25, 0x30, 0x32, 0x64, 0x2E, 0x70
	.byte 0x61, 0x63, 0x5F, 0x00
	.global ov37_0211BE14
ov37_0211BE14:
	.byte 0x6D, 0x76, 0x64, 0x6E, 0x5F, 0x71, 0x25, 0x30, 0x32, 0x64, 0x2E, 0x70
	.byte 0x61, 0x63, 0x5F, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
