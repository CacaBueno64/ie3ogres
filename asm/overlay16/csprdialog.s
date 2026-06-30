.public DC_FlushRange
.public FUN_02058ee0
.public FUN_02059038
.public FUN_02059288
.public FUN_0205935c
.public FUN_02059630
.public FUN_ov16_020f2304
.public FUN_ov16_0210e6fc
.public FUN_ov16_0210e720
.public FUN_ov16_0210e7d0
.public FUN_ov16_0210eab4
.public FUN_ov16_0210eb3c
.public FUN_ov16_0210ee80
.public FUN_ov16_0210efac
.public FUN_ov16_0210fbe8
.public FX_Sqrt
.public MI_CpuFill8
.public _ZN12C3DPlaneCtrl10setFlagAllEitb
.public _ZN12C3DPlaneCtrl11setDepthAllEij
.public _ZN12C3DPlaneCtrl12clearFlagAllEit
.public _ZN12C3DPlaneCtrl13setGraphicIdxEiihb
.public _ZN12C3DPlaneCtrl15setDepthStepAllEiii
.public _ZN12C3DPlaneCtrl16setGraphicIdxAllEihb
.public _ZN12C3DPlaneCtrl6createEib
.public _ZN12C3DPlaneCtrl6setPosEiiss
.public _ZN12C3DPlaneCtrl6setPosEiss
.public _ZN12C3DPlaneCtrl6setTexEiih
.public _ZN12C3DPlaneCtrl7destroyEi
.public _ZN12C3DPlaneCtrl7setFlagEiitb
.public _ZN12C3DPlaneCtrl8setTexSTEiiss
.public _ZN12C3DPlaneCtrl8setTexWHEiiss
.public _ZN12C3DPlaneCtrl9setPosAllEiss
.public _ZN12C3DPlaneCtrl9setTexAllEih
.public _ZN12CFontManager10setSpacingEii
.public _ZN12CFontManager12resetSpacingEv
.public _ZN12CFontManager15drawTextTex4bppEPcPviiiiiPNS_11GlyphBoundsEiiNS_9AlignmentE
.public _ZdlPv
.public g3DPlaneCtrl
.public gFont12
.public gSprButtonCtrl
.public strchr

	.include "/macros/function.inc"

	.text
	arm_func_start FUN_ov16_0210fd34
FUN_ov16_0210fd34: ; 0x0210FD34
	stmfd sp!, {r4, r5, r6, lr}
	mov r4, r0
	mov r6, #0
	mov r1, r6
	add r0, r4, #4
	mov r2, #4
	bl MI_CpuFill8
	mov r5, #0x10
	mov r1, r6
	mov r2, r5
	add r0, r4, #0x10
	strh r6, [r4, #8]
	strh r6, [r4, #0xc]
	strb r6, [r4, #0x2c]
	bl MI_CpuFill8
	mov r1, r6
	add r0, r4, #0x20
	mov r2, #0xc
	bl MI_CpuFill8
	mov r2, #3
	mov r1, r5
	strb r6, [r4, #0x2d]
	strb r6, [r4, #0x2e]
	strb r6, [r4, #0x2f]
	strb r6, [r4, #0x30]
	sub r0, r2, #4
	strb r2, [r4, #0x32]
	mov r5, #0x38
	str r0, [r4, #0x3c]
	str r0, [r4, #0x38]
	mov r0, #5
	strb r0, [r4, #0x31]
	mov r0, #0x2c
	str r0, [r4, #0x34]
	mov r0, r4
	mov r2, r5
	bl FUN_ov16_021108b4
	mov r1, r5
	mov r0, r4
	mov r5, #0x68
	mov r2, r5
	bl FUN_ov16_021108c0
	mov r0, r4
	mov r1, #0x98
	mov r2, r5
	bl FUN_ov16_021108cc
	mov r0, r4
	mov r1, r5
	mov r2, r5
	bl FUN_ov16_021108d8
	ldmfd sp!, {r4, r5, r6, pc}
	arm_func_end FUN_ov16_0210fd34

	arm_func_start FUN_ov16_0210fe00
FUN_ov16_0210fe00: ; 0x0210FE00
	stmfd sp!, {r3, r4, r5, lr}
	mov r5, r1
	ldrb r12, [r5, #3]
	add r0, r2, #0x3a
	add r4, r0, r3, lsl #2
	and r1, r12, #1
	and r2, r12, #2
	and r3, r12, #4
	mov r0, r4
	bl FUN_ov16_0210e6fc
	ldrb r1, [r5]
	ldrb r2, [r5, #1]
	ldrb r3, [r5, #2]
	mov r0, r4
	bl FUN_ov16_0210e720
	ldmfd sp!, {r3, r4, r5, pc}
	arm_func_end FUN_ov16_0210fe00

	arm_func_start FUN_ov16_0210fe40
FUN_ov16_0210fe40: ; 0x0210FE40
	mov r0, #8
	mov r0, r0, lsl r1
	bx lr
	arm_func_end FUN_ov16_0210fe40

	arm_func_start FUN_ov16_0210fe4c
FUN_ov16_0210fe4c: ; 0x0210FE4C
	stmfd sp!, {r4, r5, r6, lr}
	mov r6, r0
	mov r5, #0
	ldr r4, _0210FE88 ; =gSprButtonCtrl
	b _0210FE7C
_0210FE60:
	add r0, r6, r5, lsl #1
	ldrh r1, [r0, #4]
	cmp r1, #0
	beq _0210FE78
	ldr r0, [r4]
	bl FUN_ov16_0210eab4
_0210FE78:
	add r5, r5, #1
_0210FE7C:
	cmp r5, #2
	blt _0210FE60
	ldmfd sp!, {r4, r5, r6, pc}
_0210FE88: .word gSprButtonCtrl
	arm_func_end FUN_ov16_0210fe4c

	arm_func_start FUN_ov16_0210fe8c
FUN_ov16_0210fe8c: ; 0x0210FE8C
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, lr}
	sub sp, sp, #0x28
	mov r10, r0
	ldr r0, [r10, #0x1c]
	mov r8, #1
	mov r6, #0
	cmp r2, #0
	moveq r8, r6
	mov r9, r1
	mov r4, r3
	cmp r0, #0
	beq _0210FEC8
	ldrb r0, [r10, #0x30]
	cmp r0, #0
	beq _0210FF14
_0210FEC8:
	ldr r1, [r10, #0x1c]
	cmp r1, #0
	beq _0210FEE4
	ldr r0, _02110034 ; =g3DPlaneCtrl
	ldr r0, [r0]
	bl FUN_02058ee0
	str r6, [r10, #0x1c]
_0210FEE4:
	ldr r5, _02110034 ; =g3DPlaneCtrl
	ldrb r2, [r10, #0x32]
	ldrb r1, [r10, #0x31]
	ldr r0, [r5]
	bl FUN_02059630
	mov r1, r0
	str r1, [r10, #0x1c]
	ldr r0, [r5]
	mov r3, r6
	mov r2, #1
	bl FUN_02059038
	strb r6, [r10, #0x30]
_0210FF14:
	ldr r1, [r10, #0x1c]
	cmp r1, #0
	addeq sp, sp, #0x28
	moveq r0, #0
	ldmeqfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
	cmp r9, #0
	beq _02110028
	cmp r4, #0
	beq _0210FF60
	mov r2, #1
	str r2, [sp]
	stmib sp, {r2, r6}
	str r6, [sp, #0xc]
	str r8, [sp, #0x10]
	ldr r1, [r10, #0x1c]
	mov r0, r9
	mov r3, r2
	bl FUN_ov16_020f2304
	b _0211001C
_0210FF60:
	ldr r11, _02110034 ; =g3DPlaneCtrl
	add r2, sp, #0x20
	ldr r0, [r11]
	add r3, sp, #0x24
	str r6, [sp, #0x20]
	bl FUN_0205935c
	ldr r7, [sp, #0x20]
	cmp r7, #0
	beq _0211001C
	ldr r4, _02110038 ; =gFont12
	mov r1, #1
	ldr r0, [r4]
	mov r2, r1
	bl _ZN12CFontManager10setSpacingEii
	ldrb r1, [r10, #0x31]
	mov r0, r10
	bl FUN_ov16_0210fe40
	mov r5, r0
	ldrb r1, [r10, #0x32]
	mov r0, r10
	bl FUN_ov16_0210fe40
	stmia sp, {r0, r6}
	str r6, [sp, #8]
	mov r0, #1
	str r0, [sp, #0xc]
	str r6, [sp, #0x10]
	str r6, [sp, #0x14]
	str r0, [sp, #0x18]
	str r8, [sp, #0x1c]
	ldr r0, [r4]
	mov r1, r9
	mov r3, r5
	mov r2, r7
	bl _ZN12CFontManager15drawTextTex4bppEPcPviiiiiPNS_11GlyphBoundsEiiNS_9AlignmentE
	ldr r1, [sp, #0x24]
	mov r0, r7
	bl DC_FlushRange
	ldr r0, [r4]
	bl _ZN12CFontManager12resetSpacingEv
	ldr r1, [r10, #0x1c]
	ldr r0, [r11]
	ldr r3, [sp, #0x24]
	mov r2, r7
	str r6, [sp]
	str r6, [sp, #4]
	str r6, [sp, #8]
	bl FUN_02059288
_0211001C:
	add sp, sp, #0x28
	mov r0, #1
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_02110028:
	mov r0, #0
	add sp, sp, #0x28
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_02110034: .word g3DPlaneCtrl
_02110038: .word gFont12
	arm_func_end FUN_ov16_0210fe8c

	arm_func_start FUN_ov16_0211003c
FUN_ov16_0211003c: ; 0x0211003C
	stmfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, lr}
	sub sp, sp, #0xc
	mov r10, r0
	ldr r0, [r10, #0x20]
	mov r9, r1
	str r2, [sp, #4]
	str r3, [sp, #8]
	cmp r0, #0
	ldr r6, _02110550 ; =g3DPlaneCtrl
	bne _02110078
	ldr r0, [r6]
	mov r1, #3
	mov r2, #1
	bl _ZN12C3DPlaneCtrl6createEib
	str r0, [r10, #0x20]
_02110078:
	ldr r5, [r10, #0x20]
	ldrh r2, [r10, #0xc]
	ldr r0, [r6]
	mov r1, r5
	mvn r3, #0
	bl _ZN12C3DPlaneCtrl15setDepthStepAllEiii
	ldrsh r2, [r10, #0x40]
	ldrsh r3, [r10, #0x42]
	ldr r0, [r6]
	mov r1, r5
	bl _ZN12C3DPlaneCtrl6setPosEiss
	ldr r0, [r10, #0x18]
	mov r7, #0
	cmp r0, #0
	ble _021100D0
	ldrb r0, [r10, #0x2e]
	mov r1, #1
	cmp r0, #3
	cmpne r0, #4
	movne r1, r7
	cmp r1, #0
	movne r7, #1
_021100D0:
	ldr r2, [sp, #4]
	ldr r3, [sp, #8]
	mov r0, r10
	mov r1, r9
	bl FUN_ov16_0210fe8c
	ldrb r1, [r10, #0x2e]
	mov r6, r0
	ldrb r0, [r10, #0x2e]
	cmp r1, #2
	mov r8, #1
	cmpne r1, #4
	movne r8, #0
	cmp r0, #1
	cmpne r0, #2
	moveq r4, #0
	beq _0211011C
	cmp r0, #3
	cmpne r0, #4
	moveq r4, #1
_0211011C:
	add r0, r10, r4, lsl #2
	ldr r3, [r0, #0x10]
	ldr r4, _02110550 ; =g3DPlaneCtrl
	mov r1, r5
	ldr r0, [r4]
	mov r2, #1
	and r3, r3, #0xff
	bl _ZN12C3DPlaneCtrl6setTexEiih
	mov r11, #0
	str r11, [sp]
	ldrb r3, [r10, #0x2c]
	ldr r0, [r4]
	mov r1, r5
	mov r2, #1
	bl _ZN12C3DPlaneCtrl13setGraphicIdxEiihb
	mov r0, #1
	str r0, [sp]
	mov r2, r0
	ldr r0, [r4]
	mov r1, r5
	mov r3, #2
	bl _ZN12C3DPlaneCtrl7setFlagEiitb
	str r7, [sp]
	ldr r0, [r4]
	mov r3, #2
	mov r1, r5
	mov r2, #3
	bl _ZN12C3DPlaneCtrl7setFlagEiitb
	cmp r7, #0
	beq _021101DC
	ldr r2, [r10, #0x18]
	ldr r0, [r4]
	and r3, r2, #0xff
	mov r1, r5
	mov r2, #3
	bl _ZN12C3DPlaneCtrl6setTexEiih
	str r11, [sp]
	ldr r0, [r4]
	mov r3, r11
	mov r1, r5
	mov r2, #3
	bl _ZN12C3DPlaneCtrl13setGraphicIdxEiihb
	mov r3, #0x10
	str r3, [sp]
	ldr r0, [r4]
	mov r2, #3
	mov r1, r5
	bl _ZN12C3DPlaneCtrl6setPosEiiss
_021101DC:
	ldr r0, _02110550 ; =g3DPlaneCtrl
	str r6, [sp]
	mov r2, #2
	ldr r0, [r0]
	mov r1, r5
	mov r3, r2
	bl _ZN12C3DPlaneCtrl7setFlagEiitb
	cmp r6, #0
	beq _02110340
	ldr r11, _02110550 ; =g3DPlaneCtrl
	mov r6, #0
	mov r4, #0xa
	b _02110228
_02110210:
	mov r0, r9
	mov r1, r4
	bl strchr
	movs r9, r0
	addne r9, r9, #1
	add r6, r6, #1
_02110228:
	cmp r9, #0
	bne _02110210
	ldr r0, [sp, #8]
	ldr r4, [r10, #0x3c]
	mov r1, #0x15
	cmp r0, #0
	moveq r1, #0xc
	cmn r4, #1
	bne _02110264
	mul r0, r1, r6
	ldr r1, [r10, #0x34]
	sub r0, r1, r0
	add r0, r0, r0, lsr #31
	mov r0, r0, asr #1
	add r4, r0, #2
_02110264:
	ldr r1, [r10, #0x38]
	ldr r0, [sp, #4]
	cmn r1, #1
	moveq r1, #0xa
	mov r6, #2
	cmp r0, #0
	beq _021102A4
	ldrb r1, [r10, #0x31]
	mov r0, r10
	bl FUN_ov16_0210fe40
	ldrsh r1, [r10, #0x40]
	rsb r0, r0, #0x100
	cmp r7, #0
	rsb r1, r1, r0, asr #1
	addne r1, r1, #0x10
	b _021102AC
_021102A4:
	cmp r7, #0
	addne r1, r1, #0x20
_021102AC:
	mov r0, r4, lsl #0x10
	mov r0, r0, asr #0x10
	mov r3, r1, lsl #0x10
	str r0, [sp]
	ldr r0, [r11]
	mov r1, r5
	mov r2, r6
	mov r3, r3, asr #0x10
	bl _ZN12C3DPlaneCtrl6setPosEiiss
	ldr r3, [r10, #0x1c]
	ldr r0, [r11]
	mov r1, r5
	mov r2, r6
	and r3, r3, #0xff
	bl _ZN12C3DPlaneCtrl6setTexEiih
	mov r3, #0
	str r3, [sp]
	ldr r0, [r11]
	mov r1, r5
	mov r2, r6
	bl _ZN12C3DPlaneCtrl8setTexSTEiiss
	ldrb r1, [r10, #0x31]
	mov r0, r10
	bl FUN_ov16_0210fe40
	mov r4, r0
	ldrb r1, [r10, #0x32]
	mov r0, r10
	bl FUN_ov16_0210fe40
	mov r0, r0, lsl #0x10
	mov r0, r0, asr #0x10
	mov r3, r4, lsl #0x10
	str r0, [sp]
	ldr r0, [r11]
	mov r1, r5
	mov r2, r6
	mov r3, r3, asr #0x10
	bl _ZN12C3DPlaneCtrl8setTexWHEiiss
_02110340:
	ldr r0, [r10, #0x24]
	mov r6, #0
	cmp r0, #0
	ldr r4, _02110550 ; =g3DPlaneCtrl
	bne _02110384
	mov r1, #1
	ldr r0, [r4]
	mov r2, r1
	bl _ZN12C3DPlaneCtrl6createEib
	mov r1, r0
	ldrh r2, [r10, #0xc]
	str r1, [r10, #0x24]
	sub r0, r2, #1
	mov r2, r0, lsl #0x10
	ldr r0, [r4]
	mov r2, r2, lsr #0x10
	bl _ZN12C3DPlaneCtrl11setDepthAllEij
_02110384:
	ldr r5, [r10, #0x24]
	ldr r0, [r4]
	mov r1, r5
	mov r2, #2
	mov r3, #1
	bl _ZN12C3DPlaneCtrl10setFlagAllEitb
	cmp r8, #0
	beq _021103C0
	ldrsh r2, [r10, #0x44]
	ldrsh r3, [r10, #0x46]
	ldr r0, [r4]
	mov r1, r5
	bl _ZN12C3DPlaneCtrl9setPosAllEiss
	add r7, r10, #0x5c
	b _021103D8
_021103C0:
	ldrsh r2, [r10, #0x4c]
	ldrsh r3, [r10, #0x4e]
	ldr r0, [r4]
	mov r1, r5
	bl _ZN12C3DPlaneCtrl9setPosAllEiss
	add r7, r10, #0x50
_021103D8:
	ldrb r2, [r7]
	ldr r0, [r4]
	mov r1, r5
	bl _ZN12C3DPlaneCtrl9setTexAllEih
	ldrb r2, [r7, #1]
	ldr r0, [r4]
	mov r1, r5
	mov r3, r6
	bl _ZN12C3DPlaneCtrl16setGraphicIdxAllEihb
	ldrh r1, [r10, #0xa]
	ldr r0, _02110554 ; =gSprButtonCtrl
	mov r3, r5
	str r1, [sp]
	ldrh r1, [r10, #8]
	ldrh r2, [r10, #4]
	ldr r0, [r0]
	bl FUN_ov16_0210fbe8
	movs r5, r0
	beq _02110458
	mov r0, r10
	mov r1, r7
	mov r2, r5
	mov r3, r6
	bl FUN_ov16_0210fe00
	add r7, r10, #0x64
	cmp r8, #0
	addeq r7, r10, #0x58
	mov r0, r10
	mov r1, r7
	mov r2, r5
	mov r3, #1
	bl FUN_ov16_0210fe00
_02110458:
	ldr r0, [r10, #0x28]
	mov r6, #0
	cmp r0, #0
	bne _02110498
	mov r1, #1
	ldr r0, [r4]
	mov r2, r1
	bl _ZN12C3DPlaneCtrl6createEib
	mov r1, r0
	ldrh r2, [r10, #0xc]
	str r1, [r10, #0x28]
	sub r0, r2, #1
	mov r2, r0, lsl #0x10
	ldr r0, [r4]
	mov r2, r2, lsr #0x10
	bl _ZN12C3DPlaneCtrl11setDepthAllEij
_02110498:
	ldr r5, [r10, #0x28]
	ldr r0, [r4]
	mov r1, r5
	mov r3, r8
	mov r2, #2
	bl _ZN12C3DPlaneCtrl10setFlagAllEitb
	cmp r8, #0
	addeq sp, sp, #0xc
	ldmeqfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
	ldrsh r2, [r10, #0x48]
	ldrsh r3, [r10, #0x4a]
	ldr r0, [r4]
	mov r1, r5
	bl _ZN12C3DPlaneCtrl9setPosAllEiss
	ldrb r2, [r10, #0x68]
	ldr r0, [r4]
	mov r1, r5
	bl _ZN12C3DPlaneCtrl9setTexAllEih
	ldrb r2, [r10, #0x69]
	ldr r0, [r4]
	mov r1, r5
	mov r3, r6
	bl _ZN12C3DPlaneCtrl16setGraphicIdxAllEihb
	ldrh r1, [r10, #0xa]
	ldr r0, _02110554 ; =gSprButtonCtrl
	mov r3, r5
	str r1, [sp]
	ldrh r1, [r10, #8]
	ldrh r2, [r10, #6]
	ldr r0, [r0]
	bl FUN_ov16_0210fbe8
	movs r4, r0
	addeq sp, sp, #0xc
	ldmeqfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
	mov r0, r10
	mov r2, r4
	mov r3, r6
	add r1, r10, #0x68
	bl FUN_ov16_0210fe00
	mov r0, r10
	mov r2, r4
	add r1, r10, #0x70
	mov r3, #1
	bl FUN_ov16_0210fe00
	add sp, sp, #0xc
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
_02110550: .word g3DPlaneCtrl
_02110554: .word gSprButtonCtrl
	arm_func_end FUN_ov16_0211003c

	arm_func_start FUN_ov16_02110558
FUN_ov16_02110558: ; 0x02110558
	stmfd sp!, {r4, lr}
	ldr r1, _02110574 ; =0x02119E34
	mov r4, r0
	str r1, [r4]
	bl FUN_ov16_0210fd34
	mov r0, r4
	ldmfd sp!, {r4, pc}
_02110574: .word ov16_02119E34
	arm_func_end FUN_ov16_02110558

	arm_func_start FUN_ov16_02110578
FUN_ov16_02110578: ; 0x02110578
	stmfd sp!, {r4, lr}
	ldr r1, _02110594 ; =0x02119E34
	mov r4, r0
	str r1, [r4]
	bl FUN_ov16_021105c0
	mov r0, r4
	ldmfd sp!, {r4, pc}
_02110594: .word ov16_02119E34
	arm_func_end FUN_ov16_02110578

	arm_func_start FUN_ov16_02110598
FUN_ov16_02110598: ; 0x02110598
	stmfd sp!, {r4, lr}
	ldr r1, _021105BC ; =0x02119E34
	mov r4, r0
	str r1, [r4]
	bl FUN_ov16_021105c0
	mov r0, r4
	bl _ZdlPv
	mov r0, r4
	ldmfd sp!, {r4, pc}
_021105BC: .word ov16_02119E34
	arm_func_end FUN_ov16_02110598

	arm_func_start FUN_ov16_021105c0
FUN_ov16_021105c0: ; 0x021105C0
	stmfd sp!, {r4, r5, r6, lr}
	mov r6, r0
	bl FUN_ov16_0210fe4c
	mov r5, #0
	ldr r4, _02110620 ; =g3DPlaneCtrl
	b _021105F4
_021105D8:
	add r0, r6, r5, lsl #2
	ldr r1, [r0, #0x20]
	cmp r1, #0
	beq _021105F0
	ldr r0, [r4]
	bl _ZN12C3DPlaneCtrl7destroyEi
_021105F0:
	add r5, r5, #1
_021105F4:
	cmp r5, #3
	blt _021105D8
	ldr r1, [r6, #0x1c]
	cmp r1, #0
	beq _02110614
	ldr r0, _02110620 ; =g3DPlaneCtrl
	ldr r0, [r0]
	bl FUN_02058ee0
_02110614:
	mov r0, r6
	bl FUN_ov16_0210fd34
	ldmfd sp!, {r4, r5, r6, pc}
_02110620: .word g3DPlaneCtrl
	arm_func_end FUN_ov16_021105c0

	arm_func_start FUN_ov16_02110624
FUN_ov16_02110624: ; 0x02110624
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, lr}
	sub sp, sp, #8
	cmp r1, #0
	mov r5, r0
	mov r4, r2
	addlt sp, sp, #8
	ldmltfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
	cmp r1, #3
	addeq sp, sp, #8
	ldmeqfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
	cmp r1, #4
	addlt r0, r5, r1, lsl #2
	addlt sp, sp, #8
	strlt r4, [r0, #0x10]
	ldmltfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
	cmp r1, #5
	bne _021106C8
	mov r9, #2
	mov r7, #0
	str r9, [sp]
	sub r8, r9, #3
	mov r1, r7
	mov r2, r7
	mov r3, r4
	str r8, [sp, #4]
	bl FUN_ov16_021107a0
	mov r6, #1
	mov r0, r5
	mov r1, r6
	mov r2, r7
	mov r3, r4
	stmia sp, {r7, r8}
	bl FUN_ov16_021107a0
	mov r0, r5
	mov r1, r9
	mov r2, r7
	mov r3, r4
	stmia sp, {r6, r8}
	bl FUN_ov16_021107a0
	add sp, sp, #8
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
_021106C8:
	cmp r1, #6
	bne _02110730
	mov r9, #2
	mov r7, #0
	mov r6, #1
	str r9, [sp]
	sub r8, r9, #3
	mov r1, r7
	mov r2, r6
	mov r3, r4
	str r8, [sp, #4]
	bl FUN_ov16_021107a0
	mov r0, r5
	mov r1, r6
	mov r2, r6
	mov r3, r4
	stmia sp, {r7, r8}
	bl FUN_ov16_021107a0
	mov r0, r5
	mov r1, r9
	mov r2, r6
	mov r3, r4
	stmia sp, {r6, r8}
	bl FUN_ov16_021107a0
	add sp, sp, #8
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
_02110730:
	cmp r1, #7
	addne sp, sp, #8
	ldmnefd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
	mov r8, #2
	mov r6, #0
	str r8, [sp]
	sub r7, r8, #3
	mov r1, r6
	mov r2, r8
	mov r3, r4
	str r7, [sp, #4]
	bl FUN_ov16_021107a0
	str r6, [sp]
	mov r6, #1
	mov r0, r5
	mov r1, r6
	mov r2, r8
	mov r3, r4
	str r7, [sp, #4]
	bl FUN_ov16_021107a0
	mov r0, r5
	mov r1, r8
	mov r2, r8
	mov r3, r4
	stmia sp, {r6, r7}
	bl FUN_ov16_021107a0
	add sp, sp, #8
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
	arm_func_end FUN_ov16_02110624

	arm_func_start FUN_ov16_021107a0
FUN_ov16_021107a0: ; 0x021107A0
	stmfd sp!, {r3, r4, r5, lr}
	mov r5, r3
	cmp r1, #0
	ldmltfd sp!, {r3, r4, r5, pc}
	cmp r1, #3
	ldmgefd sp!, {r3, r4, r5, pc}
	cmp r2, #0
	ldmltfd sp!, {r3, r4, r5, pc}
	cmp r2, #3
	ldmgefd sp!, {r3, r4, r5, pc}
	add r3, r0, #0x50
	mov r0, #0xc
	mla r0, r1, r0, r3
	add r4, r0, r2, lsl #2
	mov r0, r4
	mov r1, #0
	mov r2, #4
	bl MI_CpuFill8
	cmp r5, #0
	ldrgeb r0, [r4, #3]
	ldr r1, [sp, #0x10]
	orrge r0, r0, #1
	strgeb r0, [r4, #3]
	strgeb r5, [r4]
	cmp r1, #0
	ldrgeb r0, [r4, #3]
	orrge r0, r0, #2
	strgeb r0, [r4, #3]
	strgeb r1, [r4, #1]
	ldr r1, [sp, #0x14]
	cmp r1, #0
	ldrgeb r0, [r4, #3]
	orrge r0, r0, #4
	strgeb r0, [r4, #3]
	strgeb r1, [r4, #2]
	ldmfd sp!, {r3, r4, r5, pc}
	arm_func_end FUN_ov16_021107a0

	arm_func_start FUN_ov16_02110830
FUN_ov16_02110830: ; 0x02110830
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	mov r7, r0
	mov r6, r1
	mov r5, r2
	mov r4, r3
	bl FUN_ov16_0210fe4c
	strh r6, [r7, #8]
	strh r5, [r7, #4]
	strh r4, [r7, #6]
	mov r0, #1
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
	arm_func_end FUN_ov16_02110830

	arm_func_start FUN_ov16_0211085c
FUN_ov16_0211085c: ; 0x0211085C
	strh r1, [r0, #0xa]
	bx lr
	arm_func_end FUN_ov16_0211085c

	arm_func_start FUN_ov16_02110864
FUN_ov16_02110864: ; 0x02110864
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	mov r7, r0
	strh r1, [r7, #0xc]
	mov r6, #0
	mvn r5, #0
	ldr r4, _021108B0 ; =g3DPlaneCtrl
	b _021108A4
_02110880:
	add r0, r7, r6, lsl #2
	ldr r1, [r0, #0x20]
	cmp r1, #0
	beq _021108A0
	ldrh r2, [r7, #0xc]
	ldr r0, [r4]
	mov r3, r5
	bl _ZN12C3DPlaneCtrl15setDepthStepAllEiii
_021108A0:
	add r6, r6, #1
_021108A4:
	cmp r6, #3
	blt _02110880
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_021108B0: .word g3DPlaneCtrl
	arm_func_end FUN_ov16_02110864

	arm_func_start FUN_ov16_021108b4
FUN_ov16_021108b4: ; 0x021108B4
	strh r1, [r0, #0x40]
	strh r2, [r0, #0x42]
	bx lr
	arm_func_end FUN_ov16_021108b4

	arm_func_start FUN_ov16_021108c0
FUN_ov16_021108c0: ; 0x021108C0
	strh r1, [r0, #0x44]
	strh r2, [r0, #0x46]
	bx lr
	arm_func_end FUN_ov16_021108c0

	arm_func_start FUN_ov16_021108cc
FUN_ov16_021108cc: ; 0x021108CC
	strh r1, [r0, #0x48]
	strh r2, [r0, #0x4a]
	bx lr
	arm_func_end FUN_ov16_021108cc

	arm_func_start FUN_ov16_021108d8
FUN_ov16_021108d8: ; 0x021108D8
	strh r1, [r0, #0x4c]
	strh r2, [r0, #0x4e]
	bx lr
	arm_func_end FUN_ov16_021108d8

	arm_func_start FUN_ov16_021108e4
FUN_ov16_021108e4: ; 0x021108E4
	str r1, [r0, #0x38]
	str r2, [r0, #0x3c]
	bx lr
	arm_func_end FUN_ov16_021108e4

	arm_func_start FUN_ov16_021108f0
FUN_ov16_021108f0: ; 0x021108F0
	stmfd sp!, {r4, lr}
	mov r4, r0
	ldrb r0, [r4, #0x31]
	cmp r0, r1
	ldreqb r0, [r4, #0x32]
	strb r1, [r4, #0x31]
	and r1, r2, #0xff
	cmpeq r0, r2
	movne r3, #1
	moveq r3, #0
	mov r0, r4
	strb r3, [r4, #0x30]
	strb r2, [r4, #0x32]
	bl FUN_ov16_0210fe40
	str r0, [r4, #0x34]
	ldmfd sp!, {r4, pc}
	arm_func_end FUN_ov16_021108f0

	arm_func_start FUN_ov16_02110930
FUN_ov16_02110930: ; 0x02110930
	str r1, [r0, #0x34]
	bx lr
	arm_func_end FUN_ov16_02110930

	arm_func_start FUN_ov16_02110938
FUN_ov16_02110938: ; 0x02110938
	stmfd sp!, {r4, r5, r6, lr}
	mov r6, r0
	mov r5, r2
	mov r4, r3
	cmp r1, #0
	ble _02110958
	cmp r1, #5
	blt _02110960
_02110958:
	mov r0, #0
	ldmfd sp!, {r4, r5, r6, pc}
_02110960:
	ldrh r2, [r6, #4]
	cmp r2, #0
	ldrneh r2, [r6, #6]
	cmpne r2, #0
	moveq r0, #0
	ldmeqfd sp!, {r4, r5, r6, pc}
	strb r1, [r6, #0x2e]
	bl FUN_ov16_0210fe4c
	ldrb r3, [sp, #0x10]
	mov r0, r6
	mov r1, r5
	mov r2, r4
	bl FUN_ov16_0211003c
	mov r0, #1
	strb r0, [r6, #0x2f]
	ldmfd sp!, {r4, r5, r6, pc}
	arm_func_end FUN_ov16_02110938

	arm_func_start FUN_ov16_021109a0
FUN_ov16_021109a0: ; 0x021109A0
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	mov r7, r0
	mov r6, #0
	mov r5, #2
	ldr r4, _021109F4 ; =g3DPlaneCtrl
	b _021109D0
_021109B8:
	add r1, r7, r6, lsl #2
	ldr r0, [r4]
	ldr r1, [r1, #0x20]
	mov r2, r5
	bl _ZN12C3DPlaneCtrl12clearFlagAllEit
	add r6, r6, #1
_021109D0:
	cmp r6, #3
	blt _021109B8
	ldr r0, _021109F8 ; =gSprButtonCtrl
	ldrh r1, [r7, #8]
	ldr r0, [r0]
	bl FUN_ov16_0210eb3c
	mov r0, #0
	strb r0, [r7, #0x2f]
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_021109F4: .word g3DPlaneCtrl
_021109F8: .word gSprButtonCtrl
	arm_func_end FUN_ov16_021109a0

	arm_func_start FUN_ov16_021109fc
FUN_ov16_021109fc: ; 0x021109FC
	ldrb r0, [r0, #0x2f]
	bx lr
	arm_func_end FUN_ov16_021109fc

	arm_func_start FUN_ov16_02110a04
FUN_ov16_02110a04: ; 0x02110A04
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, lr}
	mov r10, r0
	ldrb r0, [r10, #0x2e]
	mov r9, r1
	mov r4, #0
	cmp r0, #2
	mov r1, #1
	cmpne r0, #4
	movne r1, r4
	mov r8, r2
	cmp r9, #0
	cmpne r8, #0
	movne r8, #0
	ldrb r6, [r10, #0x2d]
	cmp r1, #0
	beq _02110AEC
	ldr r11, _02110B00 ; =gSprButtonCtrl
	ldrh r1, [r10, #4]
	ldr r0, [r11]
	add r7, r10, #0x60
	cmp r9, #0
	addeq r7, r10, #0x5c
	bl FUN_ov16_0210e7d0
	movs r5, r0
	beq _02110A88
	mov r0, r10
	mov r1, r7
	mov r2, r5
	mov r3, #0
	bl FUN_ov16_0210fe00
	ldr r0, [r11]
	mov r1, r5
	bl FUN_ov16_0210ee80
_02110A88:
	ldr r11, _02110B00 ; =gSprButtonCtrl
	ldrh r1, [r10, #6]
	ldr r0, [r11]
	add r7, r10, #0x6c
	cmp r8, #0
	addeq r7, r10, #0x68
	bl FUN_ov16_0210e7d0
	movs r5, r0
	beq _02110ACC
	mov r0, r10
	mov r1, r7
	mov r2, r5
	mov r3, #0
	bl FUN_ov16_0210fe00
	ldr r0, [r11]
	mov r1, r5
	bl FUN_ov16_0210ee80
_02110ACC:
	cmp r9, #0
	movne r0, #1
	strneb r0, [r10, #0x2d]
	bne _02110AEC
	cmp r8, #0
	movne r0, #2
	strneb r0, [r10, #0x2d]
	streqb r4, [r10, #0x2d]
_02110AEC:
	ldrb r0, [r10, #0x2d]
	cmp r0, r6
	movne r0, #1
	moveq r0, #0
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_02110B00: .word gSprButtonCtrl
	arm_func_end FUN_ov16_02110a04

	arm_func_start FUN_ov16_02110b04
FUN_ov16_02110b04: ; 0x02110B04
	ldrb r0, [r0, #0x2d]
	bx lr
	arm_func_end FUN_ov16_02110b04

	arm_func_start FUN_ov16_02110b0c
FUN_ov16_02110b0c: ; 0x02110B0C
	stmfd sp!, {r3, r4, r5, lr}
	mov r5, r0
	ldrb r0, [r5, #0x2e]
	mov r4, #1
	cmp r0, #2
	cmpne r0, #4
	mov r0, r5
	movne r4, #0
	bl FUN_ov16_02110b04
	cmp r0, #0
	beq _02110B4C
	cmp r0, #1
	beq _02110B54
	cmp r0, #2
	beq _02110B68
	ldmfd sp!, {r3, r4, r5, pc}
_02110B4C:
	cmp r4, #0
	ldmnefd sp!, {r3, r4, r5, pc}
_02110B54:
	ldr r0, _02110B7C ; =gSprButtonCtrl
	ldrh r1, [r5, #4]
	ldr r0, [r0]
	bl FUN_ov16_0210efac
	ldmfd sp!, {r3, r4, r5, pc}
_02110B68:
	ldr r0, _02110B7C ; =gSprButtonCtrl
	ldrh r1, [r5, #6]
	ldr r0, [r0]
	bl FUN_ov16_0210efac
	ldmfd sp!, {r3, r4, r5, pc}
_02110B7C: .word gSprButtonCtrl
	arm_func_end FUN_ov16_02110b0c


	.section .init, 4
	arm_func_start __sinit_CSprDialog.cpp
__sinit_CSprDialog.cpp: ; 0x021181FC
	stmfd sp!, {r3, r4, r5, lr}
	mov r5, #0x2000
	mov r0, r5
	bl FX_Sqrt
	ldr r4, _02118244 ; =0x02119E14
	str r0, [r4, #0x14]
	ldr r0, _02118248 ; =0x00009CCD
	bl FX_Sqrt
	mov r1, #0x800
	str r0, [r4, #0x10]
	ldr r0, _0211824C ; =0x0000EA3C
	str r1, [r4, #0xc]
	str r0, [r4, #8]
	add r0, r5, #0x4e0000
	str r0, [r4, #4]
	add r0, r1, #0x840000
	str r0, [r4]
	ldmfd sp!, {r3, r4, r5, pc}
_02118244: .word ov16_02119E14
_02118248: .word 0x00009CCD
_0211824C: .word 0x0000EA3C
	arm_func_end __sinit_CSprDialog.cpp


	.section .ctor, 4
#pragma force_active on
	.word __sinit_CSprDialog.cpp


	.data
	.global ov16_02119E14
ov16_02119E14:
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00
	.global ov16_02119E34
ov16_02119E34:
	.word FUN_ov16_02110578
	.word FUN_ov16_02110598

