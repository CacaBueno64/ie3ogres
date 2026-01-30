
	.include "/macros/function.inc"
	.include "/include/overlay51.inc"

	.text
	arm_func_start FUN_ov51_02119f00
FUN_ov51_02119f00: ; 0x02119F00
	strh r1, [r0]
	strb r2, [r0, #2]
	strb r3, [r0, #3]
	bx lr
	arm_func_end FUN_ov51_02119f00

	arm_func_start FUN_ov51_02119f10
FUN_ov51_02119f10: ; 0x02119F10
	mov r1, r0
	ldr r0, _02119F24 ; =0x0211E4C0
	ldr r12, _02119F28 ; = _ZN7Archive14RequestNewReadEPKcP9SFileData
	add r1, r1, #0x1c
	bx r12
_02119F24: .word ov51_0211E4C0
_02119F28: .word _ZN7Archive14RequestNewReadEPKcP9SFileData
	arm_func_end FUN_ov51_02119f10

	arm_func_start FUN_ov51_02119f2c
FUN_ov51_02119f2c: ; 0x02119F2C
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	mov r4, r0
	ldr r0, _02119FB8 ; =0x0211E4DC
	add r1, r4, #0x3e0
	bl _ZN7Archive14RequestNewReadEPKcP9SFileData
	ldr r0, _02119FBC ; =0x0211E500
	add r1, r4, #0x3ec
	bl _ZN7Archive14RequestNewReadEPKcP9SFileData
	ldr r7, _02119FC0 ; =0x020A6C40
	mov r4, #0
	mov r6, #0x800
	mov r0, r4
	mov r1, r7
	mov r2, r6
	bl MIi_CpuClearFast
	ldr r5, _02119FC4 ; =0x020A7440
	mov r0, r4
	mov r1, r5
	mov r2, r6
	bl MIi_CpuClearFast
	mov r0, r4
	ldr r4, _02119FC8 ; =0x020A7C40
	mov r2, r6
	mov r1, r4
	bl MIi_CpuClearFast
	mov r0, r7
	mov r1, r6
	bl DC_FlushRange
	mov r0, r5
	mov r1, r6
	bl DC_FlushRange
	mov r0, r4
	mov r1, r6
	bl DC_FlushRange
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_02119FB8: .word ov51_0211E4DC
_02119FBC: .word ov51_0211E500
_02119FC0: .word gMainScreen0
_02119FC4: .word gMainScreen1
_02119FC8: .word gMainScreen2
	arm_func_end FUN_ov51_02119f2c

	arm_func_start FUN_ov51_02119fcc
FUN_ov51_02119fcc: ; 0x02119FCC
	stmfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, lr}
	sub sp, sp, #0x21c
	add r11, sp, #0x1c
	mov r10, r0
	ldr r1, _0211A080 ; =0x0211E51C
	mov r0, r11
	bl sprintf
	mov r9, #0
	mov r6, r9
	mov r5, #1
	add r8, sp, #0x11c
	ldr r7, _0211A084 ; =0x0211E3F4
	ldr r4, _0211A088 ; =g3DPlaneCtrl
	b _0211A068
_0211A004:
	ldr r2, [r7, r9, lsl #2]
	ldr r1, _0211A08C ; =0x0211E538
	mov r0, r8
	bl sprintf
	ldr r1, [r10, #0x1c]
	mov r0, r8
	add r2, sp, #0x18
	add r3, sp, #0x14
	bl _ZN7Archive19SFPGetOffsetAndSizeEPcS0_PlPm
	cmp r0, #0
	beq _0211A064
	ldr r3, [sp, #0x14]
	ldr r2, [sp, #0x18]
	ldr r0, [r4]
	mov r1, #5
	str r6, [sp]
	stmib sp, {r5, r6}
	str r2, [sp, #0xc]
	str r3, [sp, #0x10]
	mov r2, r11
	mov r3, r5
	bl FUN_02058800
	add r1, r10, r9, lsl #2
	str r0, [r1, #0x28]
_0211A064:
	add r9, r9, #1
_0211A068:
	cmp r9, #0x16
	blt _0211A004
	mov r0, r10
	bl FUN_ov51_0211a090
	add sp, sp, #0x21c
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
_0211A080: .word ov51_0211E51C
_0211A084: .word ov51_0211E3F4
_0211A088: .word g3DPlaneCtrl
_0211A08C: .word ov51_0211E538
	arm_func_end FUN_ov51_02119fcc

	arm_func_start FUN_ov51_0211a090
FUN_ov51_0211a090: ; 0x0211A090
	stmfd sp!, {r4, lr}
	mov r4, r0
	add r0, r4, #0x1c
	mov r1, #1
	bl _ZN7Archive5CloseEP9SFileDatai
	add r0, r4, #0x1c
	bl _ZN7Archive10DeallocateEP9SFileData
	mov r0, #0
	str r0, [r4, #0x1c]
	str r0, [r4, #0x20]
	strb r0, [r4, #0x24]
	strb r0, [r4, #0x25]
	strb r0, [r4, #0x26]
	ldmfd sp!, {r4, pc}
	arm_func_end FUN_ov51_0211a090

	arm_func_start FUN_ov51_0211a0c8
FUN_ov51_0211a0c8: ; 0x0211A0C8
	stmfd sp!, {r4, r5, r6, r7, r8, lr}
	mov r6, r0
	mov r4, #0
	bl FUN_ov51_0211a090
	add r0, r6, #0x3e0
	mov r1, #2
	bl _ZN7Archive5CloseEP9SFileDatai
	mov r5, r4
	add r8, r6, #0x3e0
	mov r7, #0xc
	b _0211A100
_0211A0F4:
	mla r0, r5, r7, r8
	bl _ZN7Archive10DeallocateEP9SFileData
	add r5, r5, #1
_0211A100:
	cmp r5, #2
	blt _0211A0F4
	mov r5, #0
	add r8, r6, #0x134
	mov r7, #0xa8
	b _0211A128
_0211A118:
	mla r1, r5, r7, r8
	mov r0, r6
	bl FUN_ov51_0211b0fc
	add r5, r5, #1
_0211A128:
	cmp r5, #4
	blt _0211A118
	mov r5, #0
	ldr r7, _0211A1D4 ; =g3DPlaneCtrl
	b _0211A158
_0211A13C:
	add r0, r6, r5, lsl #2
	ldr r1, [r0, #0x84]
	cmp r1, #0
	beq _0211A154
	ldr r0, [r7]
	bl FUN_ov16_021128c4
_0211A154:
	add r5, r5, #1
_0211A158:
	cmp r5, #3
	blt _0211A13C
	mov r5, #0
	ldr r7, _0211A1D4 ; =g3DPlaneCtrl
	b _0211A190
_0211A16C:
	add r0, r6, r5, lsl #2
	ldr r1, [r0, #0x28]
	cmp r1, #0
	beq _0211A18C
	ldr r0, [r7]
	bl FUN_02058ee0
	add r0, r6, r5, lsl #2
	str r4, [r0, #0x28]
_0211A18C:
	add r5, r5, #1
_0211A190:
	cmp r5, #0x16
	blt _0211A16C
	mov r5, #0
	ldr r7, _0211A1D4 ; =g3DPlaneCtrl
	b _0211A1C8
_0211A1A4:
	add r0, r6, r5, lsl #2
	ldr r1, [r0, #0x80]
	cmp r1, #0
	beq _0211A1C4
	ldr r0, [r7]
	bl FUN_02058ee0
	add r0, r6, r5, lsl #2
	str r4, [r0, #0x80]
_0211A1C4:
	add r5, r5, #1
_0211A1C8:
	cmp r5, #1
	blt _0211A1A4
	ldmfd sp!, {r4, r5, r6, r7, r8, pc}
_0211A1D4: .word g3DPlaneCtrl
	arm_func_end FUN_ov51_0211a0c8

	arm_func_start FUN_ov51_0211a1d8
FUN_ov51_0211a1d8: ; 0x0211A1D8
	stmfd sp!, {r4, r5, r6, lr}
	mov r6, r0
	mov r5, #0
	ldr r4, _0211A224 ; =g3DPlaneCtrl
	b _0211A214
_0211A1EC:
	add r0, r6, r5, lsl #2
	ldr r1, [r0, #0x28]
	cmp r1, #0
	beq _0211A210
	ldr r0, [r4]
	bl FUN_02058e30
	cmp r0, #0
	movne r0, #0
	ldmnefd sp!, {r4, r5, r6, pc}
_0211A210:
	add r5, r5, #1
_0211A214:
	cmp r5, #0x16
	blt _0211A1EC
	mov r0, #1
	ldmfd sp!, {r4, r5, r6, pc}
_0211A224: .word g3DPlaneCtrl
	arm_func_end FUN_ov51_0211a1d8

	arm_func_start FUN_ov51_0211a228
FUN_ov51_0211a228: ; 0x0211A228
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	mov r6, #0
	mov r7, r0
	mov r5, r6
	ldr r4, _0211A288 ; =g3DPlaneCtrl
	b _0211A27C
_0211A240:
	add r0, r7, r6, lsl #2
	ldr r1, [r0, #0x28]
	cmp r1, #0
	beq _0211A278
	ldr r0, [r4]
	bl FUN_02059004
	cmp r0, #0
	bne _0211A278
	add r0, r7, r6, lsl #2
	ldr r1, [r0, #0x28]
	ldr r0, [r4]
	mov r2, r5
	mov r3, r5
	bl FUN_02059038
_0211A278:
	add r6, r6, #1
_0211A27C:
	cmp r6, #0x16
	blt _0211A240
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_0211A288: .word g3DPlaneCtrl
	arm_func_end FUN_ov51_0211a228

	arm_func_start FUN_ov51_0211a28c
FUN_ov51_0211a28c: ; 0x0211A28C
	stmfd sp!, {r3, r4, r5, r6, lr}
	sub sp, sp, #4
	ldrsh r0, [sp, #0x18]
	ldr r4, _0211A2D4 ; =g3DPlaneCtrl
	mov r6, r1
	str r0, [sp]
	ldr r0, [r4]
	mov r5, r2
	bl FUN_ov16_02113b78
	mov r0, #0
	str r0, [sp]
	ldrb r3, [sp, #0x1c]
	ldr r0, [r4]
	mov r1, r6
	mov r2, r5
	bl FUN_ov16_0211401c
	add sp, sp, #4
	ldmfd sp!, {r3, r4, r5, r6, pc}
_0211A2D4: .word g3DPlaneCtrl
	arm_func_end FUN_ov51_0211a28c

	arm_func_start FUN_ov51_0211a2d8
FUN_ov51_0211a2d8: ; 0x0211A2D8
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, lr}
	sub sp, sp, #8
	mov r8, #2
	mov r3, #0
	mov r10, r0
	mov r9, r1
	mov r11, r2
	str r8, [sp]
	bl FUN_ov51_0211bc04
	movs r6, r0
	addeq sp, sp, #8
	ldmeqfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
	ldr r4, _0211A634 ; =g3DPlaneCtrl
	mov r5, #0x258
	mov r3, #0
	ldr r0, [r4]
	mov r1, r6
	mov r2, r5
	sub r3, r3, #1
	bl FUN_ov16_02112c90
	ldr r0, [r10, #0x58]
	mov r7, #1
	and r3, r0, #0xff
	ldr r0, [r4]
	mov r1, r6
	mov r2, r7
	bl FUN_ov16_021137dc
	mov r0, #8
	str r0, [sp]
	ldr r0, [r4]
	mov r1, r6
	mov r2, r7
	mov r3, #8
	bl FUN_ov16_02113b78
	mov r0, #0
	str r0, [sp]
	ldr r0, [r4]
	mov r1, r6
	mov r2, r7
	mov r3, #0
	bl FUN_ov16_0211401c
	ldr r3, [r10, #0x80]
	ldr r0, [r4]
	mov r1, r6
	mov r2, r8
	and r3, r3, #0xff
	bl FUN_ov16_021137dc
	mov r0, #0xc
	str r0, [sp]
	ldr r0, [r4]
	mov r1, r6
	mov r2, r8
	mov r3, #0x10
	bl FUN_ov16_02113b78
	mov r0, #0
	str r0, [sp]
	ldr r0, [r4]
	mov r1, r6
	mov r2, r8
	mov r3, #0
	bl FUN_ov16_02113d88
	mov r0, #8
	str r0, [sp]
	ldr r0, [r4]
	mov r1, r6
	mov r2, r8
	mov r3, #0x20
	bl FUN_ov16_02113d08
	ldr r0, [r4]
	mov r1, r6
	mov r3, r7
	mov r2, r8
	bl FUN_ov16_021142fc
	mov r0, #4
	str r0, [sp]
	mov r0, r10
	mov r1, r9
	mov r2, r11
	mov r3, #0
	bl FUN_ov51_0211bc04
	movs r7, r0
	addeq sp, sp, #8
	ldmeqfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
	ldr r0, [r4]
	mov r1, r7
	sub r2, r5, #0xa
	bl FUN_ov16_02112b98
	mov r2, #0
	ldr r0, [r4]
	mov r1, r7
	mov r3, r2
	bl FUN_ov16_02114248
	mov r6, #0xc0
	mov r5, #0
	b _0211A488
_0211A454:
	ldr r3, [r10, #0x44]
	ldr r0, [r4]
	mov r1, r7
	mov r2, r8
	and r3, r3, #0xff
	bl FUN_ov16_021137dc
	str r6, [sp]
	ldr r0, [r4]
	mov r1, r7
	mov r2, r8
	mov r3, r5
	bl FUN_ov16_02113b78
	add r8, r8, #1
_0211A488:
	cmp r8, #3
	ble _0211A454
	ldr r6, _0211A634 ; =g3DPlaneCtrl
	ldr r3, [r10, #0x78]
	mov r4, #1
	ldr r0, [r6]
	mov r1, r7
	mov r2, r4
	and r3, r3, #0xff
	bl FUN_ov16_021137dc
	str r5, [sp]
	ldr r0, [r6]
	mov r1, r7
	mov r2, r4
	mov r3, #0xb8
	bl FUN_ov16_02113b78
	str r5, [sp]
	ldr r0, [r6]
	mov r2, r4
	mov r3, r5
	mov r1, r7
	bl FUN_ov16_0211401c
	bl FUN_ov16_020f081c
	mov r1, r0
	ldr r0, _0211A638 ; =gLogicThink
	bl FUN_020724c8
	mov r6, r0
	cmp r6, #0x63
	movgt r6, #0x63
	cmp r6, #0xa
	mov r4, #0
	blt _0211A53C
	ldr r1, _0211A63C ; =0x66666667
	mov r3, #0x18
	smull r0, r2, r1, r6
	mov r0, r6, lsr #0x1f
	add r2, r0, r2, asr #2
	mov r0, r10
	mov r1, r7
	str r3, [sp]
	and r5, r2, #0xff
	mov r2, #2
	mov r3, #0xe8
	str r5, [sp, #4]
	bl FUN_ov51_0211a28c
_0211A53C:
	ldr r2, _0211A63C ; =0x66666667
	mov r0, r6, lsr #0x1f
	smull r1, r3, r2, r6
	add r3, r0, r3, asr #2
	mov r2, #0xa
	smull r0, r1, r2, r3
	sub r3, r6, r0
	mov r2, #0x18
	str r2, [sp]
	and r5, r3, #0xff
	mov r0, r10
	mov r1, r7
	mov r2, #3
	mov r3, #0xf0
	str r5, [sp, #4]
	bl FUN_ov51_0211a28c
	mov r5, #1
	mov r0, r10
	mov r1, r9
	mov r2, r11
	mov r3, r4
	str r5, [sp]
	bl FUN_ov51_0211bc04
	movs r7, r0
	addeq sp, sp, #8
	ldmeqfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
	ldr r8, _0211A634 ; =g3DPlaneCtrl
	mov r1, r7
	ldr r0, [r8]
	mov r2, r5
	mov r3, #0x244
	bl FUN_ov16_021139bc
	ldr r3, [r10, #0x7c]
	ldr r0, [r8]
	mov r1, r7
	mov r2, r5
	and r3, r3, #0xff
	bl FUN_ov16_021137dc
	cmp r6, #0x3c
	blt _0211A5F4
	str r4, [sp]
	ldr r0, [r8]
	mov r1, r7
	mov r2, r5
	mov r3, #0xb8
	b _0211A60C
_0211A5F4:
	mov r0, #0xc0
	str r0, [sp]
	ldr r0, [r8]
	mov r1, r7
	mov r2, r5
	mov r3, #0x100
_0211A60C:
	bl FUN_ov16_02113b78
	mov r3, #0
	ldr r0, _0211A634 ; =g3DPlaneCtrl
	str r3, [sp]
	ldr r0, [r0]
	mov r1, r7
	mov r2, #1
	bl FUN_ov16_0211401c
	add sp, sp, #8
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_0211A634: .word g3DPlaneCtrl
_0211A638: .word gLogicThink
_0211A63C: .word 0x66666667
	arm_func_end FUN_ov51_0211a2d8

	arm_func_start FUN_ov51_0211a640
FUN_ov51_0211a640: ; 0x0211A640
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, lr}
	sub sp, sp, #8
	mov r5, #0
	mov r7, #1
	mov r3, r5
	mov r10, r0
	mov r9, r1
	mov r11, r2
	str r7, [sp]
	bl FUN_ov51_0211bc04
	movs r6, r0
	addeq sp, sp, #8
	ldmeqfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
	ldr r4, _0211AA80 ; =g3DPlaneCtrl
	mov r1, r6
	ldr r0, [r4]
	sub r3, r5, #1
	mov r2, #0x12c
	bl FUN_ov16_02112c90
	ldr r2, [r10, #0x74]
	ldr r0, [r4]
	and r3, r2, #0xff
	mov r1, r6
	mov r2, r7
	bl FUN_ov16_021137dc
	mov r0, #8
	str r0, [sp]
	ldr r0, [r4]
	mov r1, r6
	mov r2, r7
	mov r3, r5
	bl FUN_ov16_02113b78
	str r5, [sp]
	ldr r0, [r4]
	mov r1, r6
	mov r2, r7
	mov r3, r5
	bl FUN_ov16_0211401c
	mov r8, #2
	ldr r0, [r4]
	mov r1, r6
	mov r3, r7
	mov r2, r8
	bl FUN_ov16_021142fc
	mov r0, #3
	str r0, [sp]
	mov r0, r10
	mov r1, r9
	mov r2, r11
	mov r3, r5
	bl FUN_ov51_0211bc04
	movs r7, r0
	addeq sp, sp, #8
	ldmeqfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
	ldr r0, [r4]
	mov r1, r7
	add r2, r8, #0x120
	bl FUN_ov16_02112b98
	ldr r0, [r4]
	mov r1, r7
	mov r2, r5
	mov r3, r5
	bl FUN_ov16_02114248
	mov r6, #0xc0
	b _0211A778
_0211A744:
	ldr r3, [r10, #0x44]
	ldr r0, [r4]
	mov r1, r7
	mov r2, r8
	and r3, r3, #0xff
	bl FUN_ov16_021137dc
	str r6, [sp]
	ldr r0, [r4]
	mov r1, r7
	mov r2, r8
	mov r3, r5
	bl FUN_ov16_02113b78
	add r8, r8, #1
_0211A778:
	cmp r8, #3
	ble _0211A744
	ldr r6, _0211AA80 ; =g3DPlaneCtrl
	ldr r3, [r10, #0x78]
	mov r4, #1
	ldr r0, [r6]
	mov r1, r7
	mov r2, r4
	and r3, r3, #0xff
	bl FUN_ov16_021137dc
	str r5, [sp]
	ldr r0, [r6]
	mov r1, r7
	mov r2, r4
	mov r3, #0xb8
	bl FUN_ov16_02113b78
	str r5, [sp]
	ldr r0, [r6]
	mov r2, r4
	mov r3, r5
	mov r1, r7
	bl FUN_ov16_0211401c
	bl FUN_ov16_020f081c
	mov r1, r0
	ldr r0, _0211AA84 ; =gLogicThink
	bl FUN_020724c8
	mov r6, r0
	cmp r6, #0x63
	movgt r6, #0x63
	cmp r6, #0xa
	mov r5, #0
	blt _0211A82C
	ldr r1, _0211AA88 ; =0x66666667
	mov r3, #0x18
	smull r0, r2, r1, r6
	mov r0, r6, lsr #0x1f
	add r2, r0, r2, asr #2
	mov r0, r10
	mov r1, r7
	str r3, [sp]
	and r4, r2, #0xff
	mov r2, #2
	mov r3, #0xe8
	str r4, [sp, #4]
	bl FUN_ov51_0211a28c
_0211A82C:
	ldr r2, _0211AA88 ; =0x66666667
	mov r0, r6, lsr #0x1f
	smull r1, r3, r2, r6
	add r3, r0, r3, asr #2
	mov r2, #0xa
	smull r0, r1, r2, r3
	sub r3, r6, r0
	mov r2, #0x18
	str r2, [sp]
	and r4, r3, #0xff
	mov r0, r10
	mov r1, r7
	mov r2, #3
	mov r3, #0xf0
	str r4, [sp, #4]
	bl FUN_ov51_0211a28c
	mov r8, #1
	mov r0, r10
	mov r1, r9
	mov r2, r11
	mov r3, r5
	str r8, [sp]
	bl FUN_ov51_0211bc04
	movs r7, r0
	addeq sp, sp, #8
	ldmeqfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
	ldr r4, _0211AA80 ; =g3DPlaneCtrl
	mov r1, r7
	ldr r0, [r4]
	mov r2, r8
	mov r3, #0x118
	bl FUN_ov16_021139bc
	ldr r1, [r10, #0x7c]
	ldr r0, [r4]
	and r3, r1, #0xff
	mov r1, r7
	mov r2, r8
	bl FUN_ov16_021137dc
	cmp r6, #0x3c
	blt _0211A8E4
	str r5, [sp]
	ldr r0, [r4]
	mov r1, r7
	mov r2, r8
	mov r3, #0xb8
	b _0211A8FC
_0211A8E4:
	mov r0, #0xc0
	str r0, [sp]
	ldr r0, [r4]
	mov r1, r7
	mov r2, r8
	mov r3, #0x100
_0211A8FC:
	bl FUN_ov16_02113b78
	ldr r5, _0211AA80 ; =g3DPlaneCtrl
	mov r0, #0
	str r0, [sp]
	mov r4, #1
	ldr r0, [r5]
	mov r1, r7
	mov r2, r4
	mov r3, #0
	bl FUN_ov16_0211401c
	mov r0, r10
	mov r1, r9
	mov r2, r11
	mov r3, #0
	str r4, [sp]
	bl FUN_ov51_0211bc04
	movs r7, r0
	addeq sp, sp, #8
	ldmeqfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
	mov r0, #0xfa
	sub r6, r0, #0xfb
	ldr r0, [r5]
	mov r1, r7
	mov r2, #0xfa
	mov r3, r6
	bl FUN_ov16_02112c90
	ldr r1, [r10, #0x28]
	ldr r0, [r5]
	and r3, r1, #0xff
	mov r1, r7
	mov r2, r4
	bl FUN_ov16_021137dc
	mov r8, #0x30
	str r8, [sp]
	ldr r0, [r5]
	mov r1, r7
	mov r2, r4
	mov r3, #0x10
	bl FUN_ov16_02113b78
	mov r0, #0
	str r0, [sp]
	ldr r0, [r5]
	mov r1, r7
	mov r2, r4
	mov r3, #0
	bl FUN_ov16_0211401c
	ldr r0, [r5]
	mov r1, r7
	mov r2, #2
	mov r3, r4
	bl FUN_ov16_021142fc
	str r7, [r10, #0x94]
	mov r1, r9
	mov r2, r11
	mov r0, r10
	mov r3, #0
	str r4, [sp]
	bl FUN_ov51_0211bc04
	movs r7, r0
	addeq sp, sp, #8
	ldmeqfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
	ldr r0, [r5]
	mov r1, r7
	mov r2, #0xfa
	mov r3, r6
	bl FUN_ov16_02112c90
	ldr r2, [r10, #0x2c]
	ldr r0, [r5]
	and r3, r2, #0xff
	mov r1, r7
	mov r2, r4
	bl FUN_ov16_021137dc
	str r8, [sp]
	ldr r0, [r5]
	mov r1, r7
	mov r2, r4
	mov r3, #0x78
	bl FUN_ov16_02113b78
	mov r0, #0
	str r0, [sp]
	ldr r0, [r5]
	mov r1, r7
	mov r2, r4
	mov r3, #0
	bl FUN_ov16_0211401c
	ldr r0, [r5]
	mov r2, #2
	mov r3, r4
	mov r1, r7
	bl FUN_ov16_021142fc
	mov r1, #0
	mov r0, r10
	mov r2, r1
	str r7, [r10, #0x98]
	bl FUN_ov51_0211cc94
	add sp, sp, #8
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_0211AA80: .word g3DPlaneCtrl
_0211AA84: .word gLogicThink
_0211AA88: .word 0x66666667
	arm_func_end FUN_ov51_0211a640

	arm_func_start FUN_ov51_0211aa8c
FUN_ov51_0211aa8c: ; 0x0211AA8C
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, lr}
	sub sp, sp, #8
	mov r5, #0
	mov r7, #1
	mov r3, r5
	mov r10, r0
	mov r9, r1
	mov r11, r2
	str r7, [sp]
	bl FUN_ov51_0211bc04
	movs r6, r0
	addeq sp, sp, #8
	ldmeqfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
	ldr r4, _0211AEC8 ; =g3DPlaneCtrl
	mov r1, r6
	ldr r0, [r4]
	sub r3, r5, #1
	mov r2, #0x12c
	bl FUN_ov16_02112c90
	ldr r2, [r10, #0x48]
	ldr r0, [r4]
	and r3, r2, #0xff
	mov r1, r6
	mov r2, r7
	bl FUN_ov16_021137dc
	str r5, [sp]
	ldr r0, [r4]
	mov r1, r6
	mov r2, r7
	mov r3, r5
	bl FUN_ov16_02113b78
	str r5, [sp]
	ldr r0, [r4]
	mov r1, r6
	mov r2, r7
	mov r3, r5
	bl FUN_ov16_0211401c
	mov r8, #2
	ldr r0, [r4]
	mov r1, r6
	mov r3, r7
	mov r2, r8
	bl FUN_ov16_021142fc
	mov r0, #3
	str r0, [sp]
	mov r0, r10
	mov r1, r9
	mov r2, r11
	mov r3, r5
	bl FUN_ov51_0211bc04
	movs r7, r0
	addeq sp, sp, #8
	ldmeqfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
	ldr r0, [r4]
	mov r1, r7
	add r2, r8, #0x120
	bl FUN_ov16_02112b98
	ldr r0, [r4]
	mov r1, r7
	mov r2, r5
	mov r3, r5
	bl FUN_ov16_02114248
	mov r6, #0xc0
	b _0211ABC0
_0211AB8C:
	ldr r3, [r10, #0x44]
	ldr r0, [r4]
	mov r1, r7
	mov r2, r8
	and r3, r3, #0xff
	bl FUN_ov16_021137dc
	str r6, [sp]
	ldr r0, [r4]
	mov r1, r7
	mov r2, r8
	mov r3, r5
	bl FUN_ov16_02113b78
	add r8, r8, #1
_0211ABC0:
	cmp r8, #3
	ble _0211AB8C
	ldr r6, _0211AEC8 ; =g3DPlaneCtrl
	ldr r3, [r10, #0x78]
	mov r4, #1
	ldr r0, [r6]
	mov r1, r7
	mov r2, r4
	and r3, r3, #0xff
	bl FUN_ov16_021137dc
	str r5, [sp]
	ldr r0, [r6]
	mov r1, r7
	mov r2, r4
	mov r3, #0xb8
	bl FUN_ov16_02113b78
	str r5, [sp]
	ldr r0, [r6]
	mov r2, r4
	mov r3, r5
	mov r1, r7
	bl FUN_ov16_0211401c
	bl FUN_ov16_020f081c
	mov r1, r0
	ldr r0, _0211AECC ; =gLogicThink
	bl FUN_020724c8
	mov r6, r0
	cmp r6, #0x63
	movgt r6, #0x63
	cmp r6, #0xa
	mov r5, #0
	blt _0211AC74
	ldr r1, _0211AED0 ; =0x66666667
	mov r3, #0x18
	smull r0, r2, r1, r6
	mov r0, r6, lsr #0x1f
	add r2, r0, r2, asr #2
	mov r0, r10
	mov r1, r7
	str r3, [sp]
	and r4, r2, #0xff
	mov r2, #2
	mov r3, #0xe8
	str r4, [sp, #4]
	bl FUN_ov51_0211a28c
_0211AC74:
	ldr r2, _0211AED0 ; =0x66666667
	mov r0, r6, lsr #0x1f
	smull r1, r3, r2, r6
	add r3, r0, r3, asr #2
	mov r2, #0xa
	smull r0, r1, r2, r3
	sub r3, r6, r0
	mov r2, #0x18
	str r2, [sp]
	and r4, r3, #0xff
	mov r0, r10
	mov r1, r7
	mov r2, #3
	mov r3, #0xf0
	str r4, [sp, #4]
	bl FUN_ov51_0211a28c
	mov r8, #1
	mov r0, r10
	mov r1, r9
	mov r2, r11
	mov r3, r5
	str r8, [sp]
	bl FUN_ov51_0211bc04
	movs r7, r0
	addeq sp, sp, #8
	ldmeqfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
	ldr r4, _0211AEC8 ; =g3DPlaneCtrl
	mov r1, r7
	ldr r0, [r4]
	mov r2, r8
	mov r3, #0x118
	bl FUN_ov16_021139bc
	ldr r1, [r10, #0x7c]
	ldr r0, [r4]
	and r3, r1, #0xff
	mov r1, r7
	mov r2, r8
	bl FUN_ov16_021137dc
	cmp r6, #0x3c
	blt _0211AD2C
	str r5, [sp]
	ldr r0, [r4]
	mov r1, r7
	mov r2, r8
	mov r3, #0xb8
	b _0211AD44
_0211AD2C:
	mov r0, #0xc0
	str r0, [sp]
	ldr r0, [r4]
	mov r1, r7
	mov r2, r8
	mov r3, #0x100
_0211AD44:
	bl FUN_ov16_02113b78
	ldr r5, _0211AEC8 ; =g3DPlaneCtrl
	mov r0, #0
	str r0, [sp]
	mov r4, #1
	ldr r0, [r5]
	mov r1, r7
	mov r2, r4
	mov r3, #0
	bl FUN_ov16_0211401c
	mov r0, r10
	mov r1, r9
	mov r2, r11
	mov r3, #0
	str r4, [sp]
	bl FUN_ov51_0211bc04
	movs r7, r0
	addeq sp, sp, #8
	ldmeqfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
	mov r0, #0xfa
	sub r6, r0, #0xfb
	ldr r0, [r5]
	mov r1, r7
	mov r2, #0xfa
	mov r3, r6
	bl FUN_ov16_02112c90
	ldr r1, [r10, #0x28]
	ldr r0, [r5]
	and r3, r1, #0xff
	mov r1, r7
	mov r2, r4
	bl FUN_ov16_021137dc
	mov r8, #0x60
	str r8, [sp]
	ldr r0, [r5]
	mov r1, r7
	mov r2, r4
	mov r3, #0x10
	bl FUN_ov16_02113b78
	mov r0, #0
	str r0, [sp]
	ldr r0, [r5]
	mov r1, r7
	mov r2, r4
	mov r3, #0
	bl FUN_ov16_0211401c
	ldr r0, [r5]
	mov r1, r7
	mov r2, #2
	mov r3, r4
	bl FUN_ov16_021142fc
	str r7, [r10, #0x94]
	mov r1, r9
	mov r2, r11
	mov r0, r10
	mov r3, #0
	str r4, [sp]
	bl FUN_ov51_0211bc04
	movs r7, r0
	addeq sp, sp, #8
	ldmeqfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
	ldr r0, [r5]
	mov r1, r7
	mov r2, #0xfa
	mov r3, r6
	bl FUN_ov16_02112c90
	ldr r2, [r10, #0x2c]
	ldr r0, [r5]
	and r3, r2, #0xff
	mov r1, r7
	mov r2, r4
	bl FUN_ov16_021137dc
	str r8, [sp]
	ldr r0, [r5]
	mov r1, r7
	mov r2, r4
	mov r3, #0x80
	bl FUN_ov16_02113b78
	mov r0, #0
	str r0, [sp]
	ldr r0, [r5]
	mov r1, r7
	mov r2, r4
	mov r3, #0
	bl FUN_ov16_0211401c
	ldr r0, [r5]
	mov r2, #2
	mov r3, r4
	mov r1, r7
	bl FUN_ov16_021142fc
	mov r1, #0
	mov r0, r10
	mov r2, r1
	str r7, [r10, #0x98]
	bl FUN_ov51_0211cc94
	add sp, sp, #8
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_0211AEC8: .word g3DPlaneCtrl
_0211AECC: .word gLogicThink
_0211AED0: .word 0x66666667
	arm_func_end FUN_ov51_0211aa8c

	arm_func_start FUN_ov51_0211aed4
FUN_ov51_0211aed4: ; 0x0211AED4
	stmfd sp!, {r4, r5, r6, r7, r8, lr}
	mov r5, r0
	bl G2_GetBG3CharPtr
	mov r8, #0x20
	mov r4, #0
	mov r1, r0
	mov r0, r4
	mov r2, r8
	bl MIi_CpuClearFast
	bl G2_GetBG3CharPtr
	mov r1, r8
	bl DC_FlushRange
	ldr r0, _0211AFE0 ; =0x020A6C40
	mov r1, r4
	mov r7, #0x800
	mov r2, r7
	bl GX_LoadBG3Scr
	bl G2_GetBG1CharPtr
	mov r1, r0
	mov r0, r4
	mov r2, r8
	bl MIi_CpuClearFast
	bl G2_GetBG1CharPtr
	mov r1, r8
	bl DC_FlushRange
	ldr r0, _0211AFE4 ; =0x020A7440
	mov r1, r4
	mov r2, r7
	bl GX_LoadBG1Scr
	bl G2_GetBG2CharPtr
	mov r1, r0
	mov r0, r4
	mov r2, r8
	bl MIi_CpuClearFast
	bl G2_GetBG2CharPtr
	mov r1, r8
	bl DC_FlushRange
	ldr r0, _0211AFE8 ; =0x020A7C40
	mov r1, r4
	mov r2, r7
	bl GX_LoadBG2Scr
	ldr r5, [r5, #0x3e0]
	cmp r5, #0
	beq _0211AFD8
	mov r6, #1
	mov r0, r5
	mov r1, r4
	mov r2, r6
	bl _ZN8Graphics22LoadTempPaletteFromPacEPv12EngineSelecti
	ldr r0, [r5, #0xc]
	ldr r1, [r5, #0x10]
	mov r3, r6
	add r0, r5, r0
	add r2, r4, #1
	bl _ZN8Graphics20AdjustTilemapIndicesEPtmii
	ldr r0, [r5, #0x14]
	ldr r2, [r5, #0x18]
	mov r1, r8
	add r0, r5, r0
	bl GX_LoadBG2Char
	ldr r0, [r5, #0xc]
	mov r1, r4
	add r0, r5, r0
	mov r2, r7
	bl GX_LoadBG2Scr
_0211AFD8:
	bl _ZN8Graphics17LoadBGPaletteMainEv
	ldmfd sp!, {r4, r5, r6, r7, r8, pc}
_0211AFE0: .word gMainScreen0
_0211AFE4: .word gMainScreen1
_0211AFE8: .word gMainScreen2
	arm_func_end FUN_ov51_0211aed4

	arm_func_start FUN_ov51_0211afec
FUN_ov51_0211afec: ; 0x0211AFEC
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	ldr r5, _0211B0F4 ; =gSprButtonCtrl
	mov r4, r0
	ldr r0, [r5]
	mov r6, r1
	mov r1, #3
	bl FUN_ov16_0210eb3c
	ldr r0, [r5]
	mov r1, #4
	bl FUN_ov16_0210eb3c
	cmp r6, #6
	addls pc, pc, r6, lsl #2
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_0211B020: ; jump table
	b _0211B03C ; case 0
	b _0211B098 ; case 1
	b _0211B0B8 ; case 2
	b _0211B0E4 ; case 3
	b _0211B0E4 ; case 4
	b _0211B0E4 ; case 5
	b _0211B0E4 ; case 6
_0211B03C:
	mov r7, #1
	add r6, r4, #0x134
	mov r5, #0xa8
	b _0211B05C
_0211B04C:
	mla r1, r7, r5, r6
	mov r0, r4
	bl FUN_ov51_0211b0fc
	add r7, r7, #1
_0211B05C:
	cmp r7, #4
	blt _0211B04C
	mov r5, #0
	mov r1, r5
	add r0, r4, #0x94
	mov r2, #8
	bl MI_CpuFill8
	mov r0, r4
	add r1, r4, #0x134
	bl FUN_ov51_0211b274
	ldr r0, _0211B0F8 ; =0x020A9C40
	mov r2, r5
	mov r1, #0x33
	bl FUN_020460a8
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_0211B098:
	mov r0, r4
	add r1, r4, #0x1dc
	bl FUN_ov51_0211b384
	ldr r0, _0211B0F8 ; =0x020A9C40
	mov r1, #0x36
	mov r2, #0
	bl FUN_020460a8
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_0211B0B8:
	mov r0, r4
	add r1, r4, #0x32c
	bl FUN_ov51_0211b0fc
	mov r0, r4
	add r1, r4, #0x284
	bl FUN_ov51_0211b5f8
	ldr r0, _0211B0F8 ; =0x020A9C40
	mov r1, #0x3c
	mov r2, #0
	bl FUN_020460a8
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_0211B0E4:
	mov r0, r4
	add r1, r4, #0x32c
	bl FUN_ov51_0211b86c
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_0211B0F4: .word gSprButtonCtrl
_0211B0F8: .word unk_020A9C40
	arm_func_end FUN_ov51_0211afec

	arm_func_start FUN_ov51_0211b0fc
FUN_ov51_0211b0fc: ; 0x0211B0FC
	stmfd sp!, {r4, r5, r6, lr}
	mov r6, r1
	mov r5, #0
	ldr r4, _0211B160 ; =g3DPlaneCtrl
	b _0211B12C
_0211B110:
	add r0, r6, r5, lsl #2
	ldr r1, [r0, #0x1c]
	cmp r1, #0
	ble _0211B128
	ldr r0, [r4]
	bl FUN_ov16_021128c4
_0211B128:
	add r5, r5, #1
_0211B12C:
	cmp r5, #0x10
	blt _0211B110
	ldr r1, [r6, #0x5c]
	cmp r1, #0
	ble _0211B14C
	ldr r0, _0211B160 ; =g3DPlaneCtrl
	ldr r0, [r0]
	bl FUN_02058ee0
_0211B14C:
	mov r0, r6
	mov r1, #0
	mov r2, #0xa8
	bl MI_CpuFill8
	ldmfd sp!, {r4, r5, r6, pc}
_0211B160: .word g3DPlaneCtrl
	arm_func_end FUN_ov51_0211b0fc

	arm_func_start FUN_ov51_0211b164
FUN_ov51_0211b164: ; 0x0211B164
	cmp r1, #6
	addls pc, pc, r1, lsl #2
	bx lr
_0211B170: ; jump table
	b _0211B18C ; case 0
	b _0211B194 ; case 1
	b _0211B19C ; case 2
	b _0211B1A4 ; case 3
	b _0211B1A4 ; case 4
	b _0211B1A4 ; case 5
	b _0211B1A4 ; case 6
_0211B18C:
	mov r0, #0
	bx lr
_0211B194:
	mov r0, #1
	bx lr
_0211B19C:
	mov r0, #2
	bx lr
_0211B1A4:
	mov r0, #3
	bx lr
	arm_func_end FUN_ov51_0211b164

	arm_func_start FUN_ov51_0211b1ac
FUN_ov51_0211b1ac: ; 0x0211B1AC
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, lr}
	mov r5, r0
	ldr r1, [r5, #0x18]
	bl FUN_ov51_0211b164
	movs r4, r0
	ldmmifd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
	add r1, r5, #0x134
	mov r0, #0xa8
	mla r10, r4, r0, r1
	mov r8, #0
	ldr r7, _0211B268 ; =0x00007FFF
	ldr r6, _0211B26C ; =g3DPlaneCtrl
	b _0211B200
_0211B1E0:
	add r0, r10, r8, lsl #2
	ldr r1, [r0, #0x1c]
	cmp r1, #0
	ble _0211B1FC
	ldr r0, [r6]
	mov r2, r7
	bl FUN_ov16_02114204
_0211B1FC:
	add r8, r8, #1
_0211B200:
	cmp r8, #0x10
	blt _0211B1E0
	sub r9, r4, #1
	add r7, r5, #0x134
	ldr r6, _0211B270 ; =0x00004210
	mov r11, #0
	ldr r5, _0211B26C ; =g3DPlaneCtrl
	mov r4, #0xa8
	b _0211B25C
_0211B224:
	mla r10, r9, r4, r7
	mov r8, r11
	b _0211B250
_0211B230:
	add r0, r10, r8, lsl #2
	ldr r1, [r0, #0x1c]
	cmp r1, #0
	ble _0211B24C
	ldr r0, [r5]
	mov r2, r6
	bl FUN_ov16_02114204
_0211B24C:
	add r8, r8, #1
_0211B250:
	cmp r8, #0x10
	blt _0211B230
	sub r9, r9, #1
_0211B25C:
	cmp r9, #0
	bge _0211B224
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_0211B268: .word 0x00007FFF
_0211B26C: .word g3DPlaneCtrl
_0211B270: .word 0x00004210
	arm_func_end FUN_ov51_0211b1ac

	arm_func_start FUN_ov51_0211b274
FUN_ov51_0211b274: ; 0x0211B274
	stmfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, lr}
	sub sp, sp, #0x14
	mov r9, r1
	ldr r2, [r9]
	mov r10, r0
	str r2, [sp, #0xc]
	bl FUN_ov51_0211b0fc
	mov r3, #3
	mov r8, #0
	mov r4, #0x244
	mov r0, r10
	mov r1, r9
	mov r2, #4
	str r3, [r9, #4]
	str r3, [r9, #8]
	str r8, [r9, #0x90]
	str r8, [r9, #0x94]
	str r4, [r9, #0x98]
	bl FUN_ov51_0211c434
	mov r0, r10
	mov r1, r9
	str r8, [sp, #0x10]
	add r2, sp, #0x10
	bl FUN_ov51_0211a2d8
	ldr r0, [r9, #8]
	cmp r0, #0
	ble _0211B340
	mov r7, #8
	mov r6, #0x78
	mov r5, #0x10
	mov r4, #0xa
	mov r11, #1
_0211B2F4:
	add r1, r9, r8, lsl #3
	mov r0, r8, lsl #4
	strh r7, [r1, #0x68]
	add r0, r0, #0x18
	strh r0, [r1, #0x6a]
	strh r6, [r1, #0x6c]
	strh r5, [r1, #0x6e]
	stmia sp, {r4, r11}
	mov r3, #0x230
	str r3, [sp, #8]
	mov r0, r10
	mov r1, r9
	add r2, sp, #0x10
	mov r3, r8
	bl FUN_ov51_0211bc88
	ldr r0, [r9, #8]
	add r8, r8, #1
	cmp r8, r0
	blt _0211B2F4
_0211B340:
	ldr r4, _0211B380 ; =0x00000226
	mov r3, #1
	add r2, sp, #0x10
	mov r0, r10
	mov r1, r9
	stmia sp, {r3, r4}
	bl FUN_ov51_0211bed8
	ldr r1, [sp, #0xc]
	mov r0, r9
	bl FUN_ov16_020f52f4
	mov r0, r10
	mov r1, r9
	mov r2, #0
	bl FUN_ov51_0211bbcc
	add sp, sp, #0x14
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
_0211B380: .word 0x00000226
	arm_func_end FUN_ov51_0211b274

	arm_func_start FUN_ov51_0211b384
FUN_ov51_0211b384: ; 0x0211B384
	stmfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, lr}
	sub sp, sp, #0x14
	mov r9, r1
	ldr r2, [r9]
	mov r10, r0
	str r2, [sp, #0xc]
	bl FUN_ov51_0211b0fc
	mov r5, #2
	mov r8, #0
	mov r4, #0x104
	mov r0, r10
	mov r1, r9
	mov r2, #4
	mov r3, #3
	str r4, [r9, #0x98]
	str r5, [r9, #4]
	str r5, [r9, #8]
	str r8, [r9, #0x90]
	str r8, [r9, #0x94]
	bl FUN_ov51_0211c434
	mov r0, r10
	mov r1, r9
	add r2, sp, #0x10
	str r8, [sp, #0x10]
	bl FUN_ov51_0211a640
	mov r7, #0x2a
	mov r6, #0x82
	mov r5, #0x10
	mov r4, #0xa
	mov r11, r8
	b _0211B444
_0211B400:
	mov r0, #0x14
	mul r0, r8, r0
	add r1, r9, r8, lsl #3
	add r0, r0, #0x20
	strh r7, [r1, #0x68]
	strh r0, [r1, #0x6a]
	strh r6, [r1, #0x6c]
	strh r5, [r1, #0x6e]
	stmia sp, {r4, r11}
	mov r2, #0xf0
	str r2, [sp, #8]
	mov r0, r10
	mov r1, r9
	add r2, sp, #0x10
	mov r3, r8
	bl FUN_ov51_0211bc88
	add r8, r8, #1
_0211B444:
	ldr r0, [r9, #8]
	sub r0, r0, #1
	cmp r8, r0
	blt _0211B400
	add r0, r9, r0, lsl #3
	mov r5, #0
	strh r5, [r0, #0x68]
	ldr r0, [r9, #8]
	mov r1, #0xc0
	sub r0, r0, #1
	add r0, r9, r0, lsl #3
	strh r1, [r0, #0x6a]
	ldr r0, [r9, #8]
	add r6, sp, #0x10
	sub r0, r0, #1
	add r0, r9, r0, lsl #3
	strh r5, [r0, #0x6c]
	ldr r0, [r9, #8]
	mov r4, #0xa
	sub r0, r0, #1
	add r0, r9, r0, lsl #3
	strh r5, [r0, #0x6e]
	mov r7, #0xf0
	stmia sp, {r4, r5, r7}
	mov r0, r10
	mov r1, r9
	mov r2, r6
	mov r3, r8
	bl FUN_ov51_0211bc88
	mov r2, r6
	mov r0, r10
	mov r1, r9
	mov r3, r5
	str r5, [sp]
	mov r6, #0xe6
	str r6, [sp, #4]
	bl FUN_ov51_0211bed8
	ldr r1, [sp, #0xc]
	mov r0, r9
	bl FUN_ov16_020f52f4
	mov r1, r9
	mov r0, r10
	mov r2, r5
	bl FUN_ov51_0211bbcc
	str r4, [sp]
	ldr r0, _0211B5F4 ; =gSprButtonCtrl
	ldr r3, [r10, #0x98]
	ldr r0, [r0]
	mov r1, #3
	mov r2, #0xb
	bl FUN_ov16_0210fbe8
	movs r6, r0
	beq _0211B56C
	mov r4, #1
	mov r1, r5
	mov r2, r4
	mov r3, r5
	add r0, r6, #0x3a
	bl FUN_ov16_0210e6fc
	mov r1, r5
	mov r2, r5
	mov r3, r5
	add r0, r6, #0x3a
	bl FUN_ov16_0210e720
	mov r1, r5
	mov r2, r4
	add r0, r6, #0x3e
	mov r3, r5
	bl FUN_ov16_0210e6fc
	add r0, r6, #0x3e
	mov r2, r4
	mov r1, r5
	mov r3, r5
	bl FUN_ov16_0210e720
_0211B56C:
	mov r2, #0xa
	str r2, [sp]
	ldr r0, _0211B5F4 ; =gSprButtonCtrl
	ldr r3, [r10, #0x94]
	ldr r0, [r0]
	mov r1, #3
	bl FUN_ov16_0210fbe8
	movs r6, r0
	addeq sp, sp, #0x14
	ldmeqfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
	mov r5, #0
	mov r4, #1
	mov r1, r5
	mov r2, r4
	mov r3, r5
	add r0, r6, #0x3a
	bl FUN_ov16_0210e6fc
	mov r1, r5
	mov r2, r5
	mov r3, r5
	add r0, r6, #0x3a
	bl FUN_ov16_0210e720
	mov r1, r5
	mov r2, r4
	mov r3, r5
	add r0, r6, #0x3e
	bl FUN_ov16_0210e6fc
	add r0, r6, #0x3e
	mov r2, r4
	mov r1, r5
	mov r3, r5
	bl FUN_ov16_0210e720
	add sp, sp, #0x14
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
_0211B5F4: .word gSprButtonCtrl
	arm_func_end FUN_ov51_0211b384

	arm_func_start FUN_ov51_0211b5f8
FUN_ov51_0211b5f8: ; 0x0211B5F8
	stmfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, lr}
	sub sp, sp, #0x14
	mov r9, r1
	ldr r2, [r9]
	mov r10, r0
	str r2, [sp, #0xc]
	bl FUN_ov51_0211b0fc
	mov r5, #5
	mov r8, #0
	mov r4, #0x104
	mov r0, r10
	mov r1, r9
	mov r2, #4
	mov r3, #3
	str r4, [r9, #0x98]
	str r5, [r9, #4]
	str r5, [r9, #8]
	str r8, [r9, #0x90]
	str r8, [r9, #0x94]
	bl FUN_ov51_0211c434
	mov r0, r10
	mov r1, r9
	add r2, sp, #0x10
	str r8, [sp, #0x10]
	bl FUN_ov51_0211aa8c
	mov r7, #0x3c
	mov r6, #0x82
	mov r5, #0x10
	mov r4, #0xa
	mov r11, r8
	b _0211B6B8
_0211B674:
	mov r0, #0x14
	mul r0, r8, r0
	add r1, r9, r8, lsl #3
	add r0, r0, #0x14
	strh r7, [r1, #0x68]
	strh r0, [r1, #0x6a]
	strh r6, [r1, #0x6c]
	strh r5, [r1, #0x6e]
	stmia sp, {r4, r11}
	mov r2, #0xf0
	str r2, [sp, #8]
	mov r0, r10
	mov r1, r9
	add r2, sp, #0x10
	mov r3, r8
	bl FUN_ov51_0211bc88
	add r8, r8, #1
_0211B6B8:
	ldr r0, [r9, #8]
	sub r0, r0, #1
	cmp r8, r0
	blt _0211B674
	add r0, r9, r0, lsl #3
	mov r5, #0
	strh r5, [r0, #0x68]
	ldr r0, [r9, #8]
	mov r1, #0xc0
	sub r0, r0, #1
	add r0, r9, r0, lsl #3
	strh r1, [r0, #0x6a]
	ldr r0, [r9, #8]
	add r6, sp, #0x10
	sub r0, r0, #1
	add r0, r9, r0, lsl #3
	strh r5, [r0, #0x6c]
	ldr r0, [r9, #8]
	mov r4, #0xa
	sub r0, r0, #1
	add r0, r9, r0, lsl #3
	strh r5, [r0, #0x6e]
	mov r7, #0xf0
	stmia sp, {r4, r5, r7}
	mov r0, r10
	mov r1, r9
	mov r2, r6
	mov r3, r8
	bl FUN_ov51_0211bc88
	mov r2, r6
	mov r0, r10
	mov r1, r9
	mov r3, r5
	str r5, [sp]
	mov r6, #0xe6
	str r6, [sp, #4]
	bl FUN_ov51_0211bed8
	ldr r1, [sp, #0xc]
	mov r0, r9
	bl FUN_ov16_020f52f4
	mov r1, r9
	mov r0, r10
	mov r2, r5
	bl FUN_ov51_0211bbcc
	str r4, [sp]
	ldr r0, _0211B868 ; =gSprButtonCtrl
	ldr r3, [r10, #0x98]
	ldr r0, [r0]
	mov r1, #3
	mov r2, #0xb
	bl FUN_ov16_0210fbe8
	movs r6, r0
	beq _0211B7E0
	mov r4, #1
	mov r1, r5
	mov r2, r4
	mov r3, r5
	add r0, r6, #0x3a
	bl FUN_ov16_0210e6fc
	mov r1, r5
	mov r2, r5
	mov r3, r5
	add r0, r6, #0x3a
	bl FUN_ov16_0210e720
	mov r1, r5
	mov r2, r4
	add r0, r6, #0x3e
	mov r3, r5
	bl FUN_ov16_0210e6fc
	add r0, r6, #0x3e
	mov r2, r4
	mov r1, r5
	mov r3, r5
	bl FUN_ov16_0210e720
_0211B7E0:
	mov r2, #0xa
	str r2, [sp]
	ldr r0, _0211B868 ; =gSprButtonCtrl
	ldr r3, [r10, #0x94]
	ldr r0, [r0]
	mov r1, #3
	bl FUN_ov16_0210fbe8
	movs r6, r0
	addeq sp, sp, #0x14
	ldmeqfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
	mov r5, #0
	mov r4, #1
	mov r1, r5
	mov r2, r4
	mov r3, r5
	add r0, r6, #0x3a
	bl FUN_ov16_0210e6fc
	mov r1, r5
	mov r2, r5
	mov r3, r5
	add r0, r6, #0x3a
	bl FUN_ov16_0210e720
	mov r1, r5
	mov r2, r4
	mov r3, r5
	add r0, r6, #0x3e
	bl FUN_ov16_0210e6fc
	add r0, r6, #0x3e
	mov r2, r4
	mov r1, r5
	mov r3, r5
	bl FUN_ov16_0210e720
	add sp, sp, #0x14
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
_0211B868: .word gSprButtonCtrl
	arm_func_end FUN_ov51_0211b5f8

	arm_func_start FUN_ov51_0211b86c
FUN_ov51_0211b86c: ; 0x0211B86C
	stmfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, lr}
	sub sp, sp, #0x14
	mov r5, r1
	mov r6, r0
	ldr r11, [r5]
	mov r9, #0
	bl FUN_ov51_0211b0fc
	ldr r0, [r6, #0x18]
	cmp r0, #3
	movne r0, #5
	bne _0211B8A4
	mov r0, r6
	bl FUN_ov51_0211c30c
	ldr r0, [r6, #0x11c]
_0211B8A4:
	mov r3, #0x20
	mov r7, #0x10
	mov r4, #0
	str r0, [r5, #4]
	rsb r0, r3, #0x30
	mov r10, #5
	mov r8, #0x5a
	mov r2, #0xa8
	mov r1, #0x30
	strh r2, [r5, #0x9c]
	strh r1, [r5, #0x9e]
	str r10, [r5, #8]
	str r4, [r5, #0x90]
	str r4, [r5, #0x94]
	str r8, [r5, #0x98]
	strh r7, [r5, #0xa4]
	strh r7, [r5, #0xa0]
	strh r3, [r5, #0xa6]
	strh r0, [r5, #0xa2]
	mov r7, #0x28
	mov r2, #0x82
	mov r1, #0x10
	b _0211B920
_0211B900:
	add r3, r5, r4, lsl #3
	mov r0, r4, lsl #4
	strh r7, [r3, #0x68]
	add r0, r0, #0x20
	strh r0, [r3, #0x6a]
	strh r2, [r3, #0x6c]
	strh r1, [r3, #0x6e]
	add r4, r4, #1
_0211B920:
	ldr r0, [r5, #8]
	cmp r4, r0
	blt _0211B900
	mov r10, #4
	mov r0, r6
	mov r1, r5
	mov r2, r10
	mov r3, r10
	bl FUN_ov51_0211c434
	str r9, [sp, #0x10]
	mov r4, #2
	add r2, sp, #0x10
	mov r0, r6
	mov r1, r5
	mov r3, r9
	str r4, [sp]
	bl FUN_ov51_0211bc04
	ldr r2, [r5, #0x98]
	mov r8, r0
	ldr r7, _0211BBC4 ; =g3DPlaneCtrl
	mov r2, r2, lsl #0x10
	ldr r0, [r7]
	mov r1, r8
	mov r2, r2, lsr #0x10
	bl FUN_ov16_02112b98
	ldr r0, [r7]
	mov r1, r8
	mov r2, #0x28
	mov r3, #0x10
	bl FUN_ov16_02114248
	ldr r3, [r6, #0x4c]
	ldr r0, [r7]
	mov r1, r8
	mov r2, #1
	and r3, r3, #0xff
	bl FUN_ov16_021137dc
	str r9, [sp]
	ldr r0, [r7]
	mov r2, #1
	mov r3, r9
	mov r1, r8
	bl FUN_ov16_0211401c
	ldr r3, [r6, #0x80]
	ldr r0, [r7]
	mov r1, r8
	mov r2, r4
	and r3, r3, #0xff
	bl FUN_ov16_021137dc
	str r10, [sp]
	ldr r0, [r7]
	mov r1, r8
	mov r2, r4
	mov r3, #8
	bl FUN_ov16_02113b78
	ldr r0, [r6, #0x18]
	cmp r0, #6
	addls pc, pc, r0, lsl #2
	b _0211BA24
_0211BA08: ; jump table
	b _0211BA24 ; case 0
	b _0211BA24 ; case 1
	b _0211BA24 ; case 2
	b _0211BA24 ; case 3
	b _0211BA28 ; case 4
	b _0211BA2C ; case 5
	b _0211BA34 ; case 6
_0211BA24:
	mov r4, #1
_0211BA28:
	b _0211BA38
_0211BA2C:
	mov r4, #3
	b _0211BA38
_0211BA34:
	mov r4, r10
_0211BA38:
	add r0, r4, r4, lsl #3
	mov r0, r0, lsl #0x10
	mov r0, r0, asr #0x10
	mov r7, #2
	mov r4, #0
	ldr r9, _0211BBC4 ; =g3DPlaneCtrl
	str r0, [sp]
	ldr r0, [r9]
	mov r1, r8
	mov r2, r7
	mov r3, r4
	bl FUN_ov16_02113d88
	mov r0, #8
	str r0, [sp]
	ldr r0, [r9]
	mov r1, r8
	mov r2, r7
	mov r3, #0x40
	bl FUN_ov16_02113d08
	mov r10, #0xa
	mov r9, r4
	mov r8, #0x50
	add r7, sp, #0x10
	b _0211BABC
_0211BA98:
	str r10, [sp]
	str r9, [sp, #4]
	mov r0, r6
	mov r1, r5
	mov r2, r7
	mov r3, r4
	str r8, [sp, #8]
	bl FUN_ov51_0211bc88
	add r4, r4, #1
_0211BABC:
	ldr r0, [r5, #8]
	cmp r4, r0
	blt _0211BA98
	add r8, sp, #0x10
	mov r4, #1
	mov r0, r6
	mov r1, r5
	mov r2, r8
	mov r3, r9
	str r4, [sp]
	mov r7, #0x46
	str r7, [sp, #4]
	bl FUN_ov51_0211bed8
	mov r7, #0xa
	mov r0, r6
	mov r1, r5
	mov r2, r8
	mov r3, r7
	bl FUN_ov51_0211c004
	mov r3, r4
	str r7, [sp]
	mov r0, r6
	mov r1, r5
	mov r2, r8
	bl FUN_ov51_0211c10c
	str r7, [sp]
	mov r2, r8
	mov r0, r6
	mov r1, r5
	mov r3, r9
	bl FUN_ov51_0211c10c
	mov r7, #4
	str r9, [sp]
	mov r0, #0x100
	str r0, [sp, #4]
	mov r0, #0xc0
	str r0, [sp, #8]
	mov r0, #0xf
	ldr r4, _0211BBC8 ; =gSprButtonCtrl
	str r0, [sp, #0xc]
	ldr r0, [r4]
	mov r1, r7
	mov r2, #0xc
	mov r3, r9
	bl FUN_ov16_0210fba4
	mov r0, #0x10
	str r0, [sp]
	mov r0, #0x98
	str r0, [sp, #4]
	mov r0, #0x68
	str r0, [sp, #8]
	mov r2, #0xd
	str r2, [sp, #0xc]
	ldr r0, [r4]
	mov r1, r7
	mov r3, #0x28
	bl FUN_ov16_0210fba4
	mov r1, r11
	mov r0, r5
	bl FUN_ov16_020f52f4
	mov r0, r6
	mov r1, r5
	mov r2, r9
	bl FUN_ov51_0211bbcc
	add sp, sp, #0x14
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
_0211BBC4: .word g3DPlaneCtrl
_0211BBC8: .word gSprButtonCtrl
	arm_func_end FUN_ov51_0211b86c

	arm_func_start FUN_ov51_0211bbcc
FUN_ov51_0211bbcc: ; 0x0211BBCC
	stmfd sp!, {r4, r5, r6, lr}
	mov r6, r0
	mov r5, r1
	mov r4, r2
	bl FUN_ov51_0211c528
	mov r0, r6
	mov r1, r5
	mov r2, r4
	bl FUN_ov51_0211ca68
	mov r0, r6
	mov r1, r5
	mov r2, r4
	bl FUN_ov51_0211cc3c
	ldmfd sp!, {r4, r5, r6, pc}
	arm_func_end FUN_ov51_0211bbcc

	arm_func_start FUN_ov51_0211bc04
FUN_ov51_0211bc04: ; 0x0211BC04
	stmfd sp!, {r4, r5, r6, lr}
	mov r5, r2
	ldr r0, [r5]
	mov r6, r1
	cmp r0, #0x10
	mov r4, r3
	movge r0, #0
	ldmgefd sp!, {r4, r5, r6, pc}
	cmp r4, #4
	movhs r0, #0
	ldmhsfd sp!, {r4, r5, r6, pc}
	ldr r0, _0211BC84 ; =g3DPlaneCtrl
	ldr r1, [sp, #0x10]
	ldr r0, [r0]
	mov r2, #1
	bl FUN_ov16_02112724
	add r2, r6, r4, lsl #1
	ldrb r1, [r2, #0x61]
	cmp r1, #0
	ldreq r1, [r5]
	streqb r1, [r2, #0x60]
	ldr r1, [r5]
	add r2, r6, #0x61
	add r1, r6, r1, lsl #2
	str r0, [r1, #0x1c]
	ldrb r1, [r2, r4, lsl #1]
	add r1, r1, #1
	strb r1, [r2, r4, lsl #1]
	ldr r1, [r5]
	add r1, r1, #1
	str r1, [r5]
	ldmfd sp!, {r4, r5, r6, pc}
_0211BC84: .word g3DPlaneCtrl
	arm_func_end FUN_ov51_0211bc04

	arm_func_start FUN_ov51_0211bc88
FUN_ov51_0211bc88: ; 0x0211BC88
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, lr}
	sub sp, sp, #0x10
	mov r10, #1
	mov r5, r3
	mov r4, #3
	mov r3, r10
	mov r7, r0
	mov r6, r1
	str r4, [sp]
	bl FUN_ov51_0211bc04
	mov r4, r0
	ldr r8, _0211BEC8 ; =g3DPlaneCtrl
	ldr r2, [sp, #0x40]
	ldr r0, [r8]
	mov r1, r4
	mov r3, r10
	bl FUN_ov16_02112c90
	ldr r0, [r8]
	mov r1, r4
	add r3, r6, r5, lsl #3
	ldrsh r2, [r3, #0x68]
	ldrsh r3, [r3, #0x6a]
	bl FUN_ov16_02114248
	ldr r0, [r8]
	mov r1, r4
	mov r2, r10
	ldr r3, [r7, #0x40]
	and r3, r3, #0xff
	bl FUN_ov16_021137dc
	mov r9, #0
	str r9, [sp]
	ldr r0, [r8]
	mov r1, r4
	mov r2, r10
	mov r11, #8
	mov r3, r11
	bl FUN_ov16_02113b78
	str r9, [sp]
	ldr r0, [r8]
	mov r1, r4
	mov r2, r10
	ldrb r3, [sp, #0x3c]
	bl FUN_ov16_0211401c
	mov r2, r10
	ldr r0, [r8]
	mov r1, r4
	mov r10, #2
	mov r3, r10
	bl FUN_ov16_02113f7c
	ldr r0, [r8]
	mov r1, r4
	mov r2, r10
	ldr r3, [r6, #0x5c]
	and r3, r3, #0xff
	bl FUN_ov16_021137dc
	mov r3, r9
	mov r9, #0xd
	mul r0, r5, r9
	mov r0, r0, lsl #0x10
	mov r0, r0, asr #0x10
	str r0, [sp]
	ldr r0, [r8]
	mov r1, r4
	mov r2, r10
	bl FUN_ov16_02113d88
	str r9, [sp]
	ldr r0, [r8]
	mov r1, r4
	mov r2, r10
	mov r3, #0x80
	bl FUN_ov16_02113d08
	ldr r0, [r7, #0x18]
	cmp r0, #0
	cmpeq r5, #0
	bne _0211BDCC
	str r10, [sp]
	ldr r0, [r8]
	mov r1, r4
	mov r2, r10
	mov r3, r11
	b _0211BDE4
_0211BDCC:
	mov r2, #2
	ldr r0, _0211BEC8 ; =g3DPlaneCtrl
	str r2, [sp]
	ldr r0, [r0]
	mov r1, r4
	mov r3, #9
_0211BDE4:
	bl FUN_ov16_02113b78
	ldr r9, _0211BEC8 ; =g3DPlaneCtrl
	ldr r2, _0211BECC ; =0x00007FFF
	ldr r0, [r9]
	mov r1, r4
	bl FUN_ov16_02112e5c
	ldr r3, [r7, #0x64]
	mov r8, #3
	ldr r0, [r9]
	mov r1, r4
	mov r2, r8
	and r3, r3, #0xff
	bl FUN_ov16_021137dc
	mov r7, #0
	str r7, [sp]
	ldr r0, [r9]
	mov r1, r4
	mov r2, r8
	mov r3, r7
	bl FUN_ov16_02113b78
	str r7, [sp]
	ldr r0, [r9]
	mov r1, r4
	mov r2, r8
	ldrb r3, [sp, #0x3c]
	bl FUN_ov16_0211401c
	ldr r0, [r9]
	mov r1, r4
	mov r2, r8
	mov r3, #2
	bl FUN_ov16_02113f7c
	add r3, r6, r5, lsl #3
	mov r1, r8
	add r0, r5, #1
	mov r0, r0, lsl #0x10
	mov r2, r0, lsr #0x10
	ldrsh r6, [r3, #0x6a]
	ldr r5, [sp, #0x38]
	ldr r0, _0211BED0 ; =gSprButtonCtrl
	str r6, [sp]
	ldrsh r6, [r3, #0x6c]
	str r6, [sp, #4]
	ldrsh r6, [r3, #0x6e]
	str r6, [sp, #8]
	str r5, [sp, #0xc]
	ldr r0, [r0]
	ldrsh r3, [r3, #0x68]
	bl FUN_ov16_0210fba4
	strh r4, [r0, #0x34]
	strb r7, [r0, #0x38]
	str r7, [r0, #0x1c]
	str r7, [r0, #0x20]
	str r7, [r0, #0x24]
	ldr r1, _0211BED4 ; =FUN_ov16_0210fb1c
	str r1, [r0, #0x28]
	add sp, sp, #0x10
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_0211BEC8: .word g3DPlaneCtrl
_0211BECC: .word 0x00007FFF
_0211BED0: .word gSprButtonCtrl
_0211BED4: .word FUN_ov16_0210fb1c
	arm_func_end FUN_ov51_0211bc88

	arm_func_start FUN_ov51_0211bed8
FUN_ov51_0211bed8: ; 0x0211BED8
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, lr}
	ldrb r4, [sp, #0x20]
	mov r6, r3
	mov r9, r0
	mov r8, r1
	cmp r4, #0
	mov r3, #3
	beq _0211BF00
	mov r4, #2
	b _0211BF04
_0211BF00:
	mov r4, #1
_0211BF04:
	str r4, [sp]
	bl FUN_ov51_0211bc04
	ldr r4, _0211C000 ; =g3DPlaneCtrl
	mov r7, r0
	ldr r2, [sp, #0x24]
	ldr r0, [r4]
	mov r1, r7
	mvn r3, #0
	bl FUN_ov16_02112c90
	ldr r3, [r9, #0x38]
	mov r5, #1
	ldr r0, [r4]
	mov r1, r7
	mov r2, r5
	and r3, r3, #0xff
	bl FUN_ov16_021137dc
	mov r3, r6
	mov r6, #0
	str r6, [sp]
	ldr r0, [r4]
	mov r1, r7
	mov r2, r5
	bl FUN_ov16_0211401c
	ldr r0, [r8, #0x94]
	mov r2, r5
	mov r0, r0, lsl #0x10
	mov r0, r0, asr #0x10
	str r0, [sp]
	ldr r3, [r8, #0x90]
	ldr r0, [r4]
	mov r3, r3, lsl #0x10
	mov r1, r7
	mov r3, r3, asr #0x10
	bl FUN_ov16_02113b78
	ldrb r0, [sp, #0x20]
	cmp r0, #0
	ldmeqfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
	ldr r3, [r9, #0x3c]
	mov r5, #2
	ldr r0, [r4]
	mov r1, r7
	mov r2, r5
	and r3, r3, #0xff
	bl FUN_ov16_021137dc
	str r6, [sp]
	ldr r0, [r4]
	mov r1, r7
	mov r2, r5
	mov r3, r6
	bl FUN_ov16_0211401c
	ldr r0, [r8, #0x94]
	mov r1, r7
	mov r0, r0, lsl #0x10
	mov r0, r0, asr #0x10
	str r0, [sp]
	ldr r2, [r8, #0x90]
	ldr r0, [r4]
	sub r2, r2, #8
	mov r3, r2, lsl #0x10
	mov r2, r5
	mov r3, r3, asr #0x10
	bl FUN_ov16_02113b78
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
_0211C000: .word g3DPlaneCtrl
	arm_func_end FUN_ov51_0211bed8

	arm_func_start FUN_ov51_0211c004
FUN_ov51_0211c004: ; 0x0211C004
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, lr}
	ldr r6, [r1, #4]
	ldr r4, [r1, #8]
	mov r7, r0
	mov r5, r3
	cmp r6, r4
	ldmlefd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
	mov r4, #1
	mov r3, #2
	str r4, [sp]
	bl FUN_ov51_0211bc04
	ldr r2, [r7, #0x30]
	mov r9, r0
	ldr r6, _0211C104 ; =g3DPlaneCtrl
	mov r1, r9
	ldr r0, [r6]
	and r2, r2, #0xff
	bl FUN_ov16_02112950
	mov r8, #4
	mov r7, #0
	ldr r0, [r6]
	mov r1, r9
	mov r2, r8
	mov r3, r7
	bl FUN_ov16_0211346c
	ldr r0, [r6]
	mov r1, r9
	mov r2, #0x50
	bl FUN_ov16_02112b98
	ldr r0, [r6]
	mov r1, r9
	mov r2, #0xa8
	mov r3, #0x30
	bl FUN_ov16_02114248
	str r5, [sp]
	mov r3, r9
	ldr r0, _0211C108 ; =gSprButtonCtrl
	mov r1, #3
	ldr r0, [r0]
	mov r2, #9
	bl FUN_ov16_0210fbe8
	mov r5, r0
	add r0, r5, #0x3a
	mov r1, r7
	mov r2, r4
	mov r3, r7
	bl FUN_ov16_0210e6fc
	mov r2, r8
	add r0, r5, #0x3a
	mov r1, r7
	mov r3, r7
	bl FUN_ov16_0210e720
	add r0, r5, #0x3e
	mov r1, r7
	mov r2, r4
	mov r3, r7
	bl FUN_ov16_0210e6fc
	add r0, r5, #0x3e
	mov r1, r7
	mov r3, r7
	mov r2, #5
	bl FUN_ov16_0210e720
	strb r4, [r5, #0x12]
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
_0211C104: .word g3DPlaneCtrl
_0211C108: .word gSprButtonCtrl
	arm_func_end FUN_ov51_0211c004

	arm_func_start FUN_ov51_0211c10c
FUN_ov51_0211c10c: ; 0x0211C10C
	stmfd sp!, {r3, r4, r5, r6, r7, r8, lr}
	sub sp, sp, #4
	mov r4, #2
	mov r6, r3
	mov r5, #1
	mov r3, r4
	mov r8, r0
	mov r7, r1
	str r5, [sp]
	bl FUN_ov51_0211bc04
	mov r5, r0
	ldr r0, _0211C2BC ; =g3DPlaneCtrl
	ldr r2, [r8, #0x30]
	ldr r0, [r0]
	mov r1, r5
	and r2, r2, #0xff
	bl FUN_ov16_02112950
	ldr r8, _0211C2BC ; =g3DPlaneCtrl
	cmp r6, #0
	movne r4, #0
	ldr r0, [r8]
	mov r1, r5
	mov r2, r4
	mov r3, #0
	bl FUN_ov16_0211346c
	ldr r0, [r8]
	mov r1, r5
	mov r2, #0x50
	bl FUN_ov16_02112b98
	ldr r0, _0211C2BC ; =g3DPlaneCtrl
	mov r1, #0x20
	cmp r6, #0
	moveq r1, #0x60
	mov r2, r1, lsl #0x10
	mov r3, r2, asr #0x10
	ldr r0, [r0]
	mov r1, r5
	mov r2, #0xa8
	bl FUN_ov16_02114248
	ldr r1, [r7, #4]
	ldr r0, [r7, #8]
	cmp r1, r0
	addle sp, sp, #4
	ldmlefd sp!, {r3, r4, r5, r6, r7, r8, pc}
	ldr r1, [sp, #0x20]
	mov r2, #7
	cmp r6, #0
	moveq r2, #8
	mov r2, r2, lsl #0x10
	ldr r0, _0211C2C0 ; =gSprButtonCtrl
	str r1, [sp]
	mov r4, #3
	ldr r0, [r0]
	mov r1, r4
	mov r3, r5
	mov r2, r2, lsr #0x10
	bl FUN_ov16_0210fbe8
	mov r7, r0
	cmp r6, #0
	beq _0211C25C
	mov r5, #0
	mov r4, #1
	mov r1, r5
	mov r2, r4
	mov r3, r5
	add r0, r7, #0x3a
	bl FUN_ov16_0210e6fc
	mov r1, r5
	mov r2, r5
	mov r3, r5
	add r0, r7, #0x3a
	bl FUN_ov16_0210e720
	mov r1, r5
	mov r2, r4
	mov r3, r5
	add r0, r7, #0x3e
	bl FUN_ov16_0210e6fc
	add r0, r7, #0x3e
	mov r2, r4
	mov r1, r5
	mov r3, r5
	bl FUN_ov16_0210e720
	add sp, sp, #4
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, pc}
_0211C25C:
	mov r6, #0
	mov r5, #1
	mov r1, r6
	mov r2, r5
	mov r3, r6
	add r0, r7, #0x3a
	bl FUN_ov16_0210e6fc
	mov r1, r6
	mov r3, r6
	add r0, r7, #0x3a
	mov r2, #2
	bl FUN_ov16_0210e720
	mov r1, r6
	mov r2, r5
	mov r3, r6
	add r0, r7, #0x3e
	bl FUN_ov16_0210e6fc
	add r0, r7, #0x3e
	mov r2, r4
	mov r1, r6
	mov r3, r6
	bl FUN_ov16_0210e720
	add sp, sp, #4
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, pc}
_0211C2BC: .word g3DPlaneCtrl
_0211C2C0: .word gSprButtonCtrl
	arm_func_end FUN_ov51_0211c10c

	arm_func_start FUN_ov51_0211c2c4
FUN_ov51_0211c2c4: ; 0x0211C2C4
	stmfd sp!, {r3, lr}
	ldr r3, [r1, #0x10]
	cmp r3, #0
	ldmltfd sp!, {r3, pc}
	ldr r0, [r1, #8]
	cmp r3, r0
	ldrlt r2, [r1]
	ldrlt r0, [r1, #4]
	cmplt r2, r0
	ldmgefd sp!, {r3, pc}
	ldr r0, _0211C308 ; =gSprButtonCtrl
	add r1, r3, #1
	mov r1, r1, lsl #0x10
	ldr r0, [r0]
	mov r1, r1, lsr #0x10
	bl FUN_ov16_0210efac
	ldmfd sp!, {r3, pc}
_0211C308: .word gSprButtonCtrl
	arm_func_end FUN_ov51_0211c2c4

	arm_func_start FUN_ov51_0211c30c
FUN_ov51_0211c30c: ; 0x0211C30C
	stmfd sp!, {r4, r5, r6, r7, r8, r9, r10, lr}
	ldr r1, _0211C3A4 ; =0x02099F44
	mov r10, r0
	ldr r0, [r1]
	mov r9, #0
	bl FUN_ov131_0213c608
	ldr r6, [r10, #0x3ec]
	mov r7, r0
	cmp r6, #0
	beq _0211C380
	mov r8, r9
	add r4, r10, #0x9c
	mov r5, #1
_0211C340:
	ldrb r0, [r6, #0x13]
	cmp r0, #0
	beq _0211C370
	tst r7, r5, lsl r8
	beq _0211C370
	mov r1, r8, lsl #0x10
	add r0, r4, r9, lsl #2
	mov r2, r5
	mov r3, r5
	mov r1, r1, lsr #0x10
	add r9, r9, #1
	bl FUN_ov51_02119f00
_0211C370:
	add r8, r8, #1
	cmp r8, #0x20
	add r6, r6, #0x20
	blt _0211C340
_0211C380:
	add r0, r10, #0x9c
	mov r2, #1
	mov r3, r2
	add r0, r0, r9, lsl #2
	mov r1, #0
	bl FUN_ov51_02119f00
	add r0, r9, #1
	str r0, [r10, #0x11c]
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, pc}
_0211C3A4: .word unk_02099F44
	arm_func_end FUN_ov51_0211c30c

	arm_func_start FUN_ov51_0211c3a8
FUN_ov51_0211c3a8: ; 0x0211C3A8
	ldr r0, [r0, #0x3ec]
	cmp r0, #0
	moveq r0, #0
	bxeq lr
	cmp r1, #0x20
	movhs r0, #0
	addlo r0, r0, r1, lsl #5
	bx lr
	arm_func_end FUN_ov51_0211c3a8

	arm_func_start FUN_ov51_0211c3c8
FUN_ov51_0211c3c8: ; 0x0211C3C8
	mov r2, #6
	str r2, [r0, #0x14]
	str r1, [r0, #0xc]
	bx lr
	arm_func_end FUN_ov51_0211c3c8

	arm_func_start FUN_ov51_0211c3d8
FUN_ov51_0211c3d8: ; 0x0211C3D8
	stmfd sp!, {r3, r4, r5, lr}
	mov r4, r1
	mov r5, r0
	cmp r4, #6
	addls pc, pc, r4, lsl #2
	b _0211C420
_0211C3F0: ; jump table
	b _0211C40C ; case 0
	b _0211C40C ; case 1
	b _0211C40C ; case 2
	b _0211C410 ; case 3
	b _0211C410 ; case 4
	b _0211C410 ; case 5
	b _0211C410 ; case 6
_0211C40C:
	b _0211C410
_0211C410:
	ldr r0, _0211C430 ; =gSprButtonCtrl
	mov r1, #0xa
	ldr r0, [r0]
	bl FUN_ov16_0210ee78
_0211C420:
	mov r0, #4
	str r4, [r5, #0x18]
	str r0, [r5, #0x14]
	ldmfd sp!, {r3, r4, r5, pc}
_0211C430: .word gSprButtonCtrl
	arm_func_end FUN_ov51_0211c3d8

	arm_func_start FUN_ov51_0211c434
FUN_ov51_0211c434: ; 0x0211C434
	stmfd sp!, {r3, r4, r5, r6, lr}
	sub sp, sp, #0x14
	mov r5, #0
	mov r6, r1
	str r5, [sp, #0x10]
	ldr r0, [r6, #0x5c]
	cmp r0, #0
	addne sp, sp, #0x14
	ldmnefd sp!, {r3, r4, r5, r6, pc}
	ldr r4, _0211C4C4 ; =g3DPlaneCtrl
	mov r1, r2
	ldr r0, [r4]
	mov r2, r3
	bl FUN_02059630
	mov r1, r0
	str r1, [r6, #0x5c]
	ldr r0, [r4]
	mov r2, r5
	mov r3, r5
	bl FUN_02059038
	ldr r1, [r6, #0x5c]
	ldr r0, [r4]
	str r5, [sp, #0xc]
	add r2, sp, #0xc
	add r3, sp, #0x10
	bl FUN_0205935c
	ldr r1, [r6, #0x5c]
	ldr r0, [r4]
	ldr r2, [sp, #0xc]
	ldr r3, [sp, #0x10]
	str r5, [sp]
	str r5, [sp, #4]
	str r5, [sp, #8]
	bl FUN_02059288
	add sp, sp, #0x14
	ldmfd sp!, {r3, r4, r5, r6, pc}
_0211C4C4: .word g3DPlaneCtrl
	arm_func_end FUN_ov51_0211c434

	arm_func_start FUN_ov51_0211c4c8
FUN_ov51_0211c4c8: ; 0x0211C4C8
	stmfd sp!, {r3, r4, r5, lr}
	mov r5, r0
	ldr r0, [r5, #0x80]
	cmp r0, #0
	bne _0211C508
	ldr r4, _0211C520 ; =g3DPlaneCtrl
	mov r1, #4
	ldr r0, [r4]
	mov r2, #3
	bl FUN_02059630
	mov r1, r0
	str r1, [r5, #0x80]
	mov r2, #0
	ldr r0, [r4]
	mov r3, r2
	bl FUN_02059038
_0211C508:
	ldr r1, [r5, #0x80]
	ldr r2, _0211C524 ; =0x0211E1C8
	mov r0, r5
	mov r3, #5
	bl FUN_ov51_0211c8d8
	ldmfd sp!, {r3, r4, r5, pc}
_0211C520: .word g3DPlaneCtrl
_0211C524: .word ov51_0211E1C8
	arm_func_end FUN_ov51_0211c4c8

	arm_func_start FUN_ov51_0211c528
FUN_ov51_0211c528: ; 0x0211C528
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, lr}
	sub sp, sp, #0x18
	mov r2, #4
	add r8, sp, #4
	mov r9, #0
	mov r5, r0
	mov r3, r2
	str r9, [r8]
	str r9, [r8, #4]
	str r9, [r8, #8]
	str r9, [r8, #0xc]
	str r9, [r8, #0x10]
	mov r4, r1
	ldr r6, _0211C7D4 ; =0x0211E190
	bl FUN_ov51_0211c434
	ldr r0, [r5, #0x18]
	cmp r0, #6
	bhi _0211C728
	add r7, sp, #4
	add pc, pc, r0, lsl #2
	mov r0, r0
_0211C57C: ; jump table
	b _0211C598 ; case 0
	b _0211C5B4 ; case 1
	b _0211C5FC ; case 2
	b _0211C650 ; case 3
	b _0211C6AC ; case 4
	b _0211C6D0 ; case 5
	b _0211C6FC ; case 6
_0211C598:
	ldr r0, [r6, #0x18]
	str r0, [sp, #4]
	ldr r0, [r6, #0x1c]
	str r0, [sp, #8]
	ldr r0, [r6, #0x20]
	str r0, [sp, #0xc]
	b _0211C728
_0211C5B4:
	ldr r0, [r5, #0xc]
	cmp r0, #0x5f
	bne _0211C5DC
	adds r0, r5, #0x120
	beq _0211C5D4
	ldr r1, _0211C7D8 ; =0209A460
	mov r2, #0x11
	bl STD_CopyLString
_0211C5D4:
	ldr r0, _0211C7D8 ; =0209A460
	bl STD_GetStringLength
_0211C5DC:
	add r0, r5, #0x120
	bl STD_GetStringLength
	cmp r0, #0x0
	ldrle r0, [r6, #0x4c]
	strle r0, [sp, #0x4]
	addgt r0, r5, #0x120
	strgt r0, [sp, #0x4]
	b _0211C728
_0211C5FC:
	ldr r1, [r5, #0x3ec]
	cmp r1, #0x0
	ldrneb r0, [r5, #0x3dc]
	cmpne r0, #0x0
	ldreq r0, [r6, #0x4c]
	streq r0, [sp, #0x4]
	addne r0, r1, r0, lsl #0x5
	strne r0, [sp, #0x4]
	ldrb r2, [r5, #0x3dd]
	ldr r0, _0211C7DC
	ldr r1, _0211C7E0
	ldr r2, [r0, r2, lsl #0x2]
	ldr r0, _0211C7E4
	str r2, [sp, #0x8]
	ldrb r2, [r5, #0x3de]
	ldr r1, [r1, r2, lsl #0x2]
	str r1, [sp, #0xc]
	ldrb r1, [r5, #0x3df]
	ldr r0, [r0, r1, lsl #0x2]
	str r0, [sp, #0x10]
	b _0211C728
_0211C650:
	ldr r2, [r4, #0xc]
	add r3, r5, #0x9c
	ldmib r4, {r0, r8}
	add r1, r2, r8
	cmp r1, r0
	add r9, r3, r2, lsl #0x2
	subgt r8, r0, r2
	mov r10, #0x0
	b _0211C6A0
_0211C674:
	ldrh r1, [r9, #0x0]
	cmp r1, #0x0
	ldreq r0, [r6, #0x4c]
	streq r0, [r7, r10, lsl #0x2]
	beq _0211C698
	mov r0, r5
	bl FUN_ov51_0211c3a8
	cmp r0, #0x0
	strne r0, [r7, r10, lsl #0x2]
_0211C698:
	add r10, r10, #0x1
	add r9, r9, #0x4
_0211C6A0:
	cmp r10, r8
	blt _0211C674
	b _0211C728
_0211C6AC:
	ldr r1, _0211C7DC
	b _0211C6C4
_0211C6B4:
	rsb r0, r9, #0x4
	ldr r0, [r1, r0, lsl #0x2]
	str r0, [r8, r9, lsl #0x2]
	add r9, r9, #0x1
_0211C6C4:
	cmp r9, #0x5
	blt _0211C6B4
	b _0211C728
_0211C6D0:
	mov r3, #0x1
	ldr r2, _0211C7E0
	b _0211C6EC
_0211C6DC:
	ldr r1, [r2, r3, lsl #0x2]
	add r3, r3, #0x1
	str r1, [r8, r9, lsl #0x2]
	add r9, r9, #0x1
_0211C6EC:
	cmp r3, #0x5
	blt _0211C6DC
	ldr r0, [r6, #0x24]
	b _0211C724
_0211C6FC:
	mov r3, #0x1
	ldr r2, _0211C7E4
	b _0211C718
_0211C708:
	ldr r1, [r2, r3, lsl #0x2]
	add r3, r3, #0x1
	str r1, [r8, r9, lsl #0x2]
	add r9, r9, #0x1
_0211C718:
	cmp r3, #0x5
	blt _0211C708
	ldr r0, [r6, #0x60]
_0211C724:
	str r0, [r7, r9, lsl #0x2]
_0211C728:
	ldr r0, [r5, #0x18]
	cmp r0, #0
	cmpne r0, #1
	cmpne r0, #2
	beq _0211C7B8
	mov r11, #3
	mov r10, #0
	mov r7, #1
	mov r9, r11
	mov r8, #2
	ldr r6, _0211C7E8 ; =g3DPlaneCtrl
	b _0211C7AC
_0211C758:
	ldrb r2, [r4, #0x62]
	ldr r1, [r4, #0xc]
	ldr r0, [r4, #4]
	add r2, r2, r10
	add r2, r4, r2, lsl #2
	add r1, r1, r10
	sub r0, r0, #1
	cmp r1, r0
	ldr r1, [r2, #0x1c]
	bge _0211C794
	ldr r0, [r6]
	mov r2, r9
	mov r3, r8
	bl FUN_ov16_02113f7c
	b _0211C7A8
_0211C794:
	str r7, [sp]
	ldr r0, [r6]
	mov r2, r11
	mov r3, #2
	bl FUN_ov16_02113ec0
_0211C7A8:
	add r10, r10, #1
_0211C7AC:
	ldr r0, [r4, #8]
	cmp r10, r0
	blt _0211C758
_0211C7B8:
	ldr r1, [r4, #0x5c]
	add r2, sp, #4
	mov r0, r5
	mov r3, #5
	bl FUN_ov51_0211c7ec
	add sp, sp, #0x18
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_0211C7D4: .word ov51_0211E190
_0211C7D8: .word unk_0209A460
_0211C7DC: .word ov51_0211E1DC
_0211C7E0: .word ov51_0211E1B4
_0211C7E4: .word ov51_0211E1F0
_0211C7E8: .word g3DPlaneCtrl
	arm_func_end FUN_ov51_0211c528

	arm_func_start FUN_ov51_0211c7ec
FUN_ov51_0211c7ec: ; 0x0211C7EC
	stmfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, lr}
	sub sp, sp, #0x2c
	ldr r4, _0211C8D0 ; =g3DPlaneCtrl
	mov r10, r2
	ldr r0, [r4]
	mov r9, r3
	mov r7, #0
	add r2, sp, #0x24
	add r3, sp, #0x28
	str r1, [sp, #0x20]
	str r7, [sp, #0x24]
	bl FUN_0205935c
	ldr r0, [r4]
	ldr r1, [sp, #0x20]
	ldr r6, [sp, #0x24]
	bl FUN_ov16_02111458
	mov r8, r0
	mov r5, r7
	mov r4, #1
	ldr r11, _0211C8D4 ; =gFont12
	b _0211C88C
_0211C840:
	ldr r0, [r10, r7, lsl #2]
	cmp r0, #0
	beq _0211C888
	mov r0, #0xd
	mul r0, r7, r0
	str r8, [sp]
	str r5, [sp, #4]
	str r0, [sp, #8]
	str r4, [sp, #0xc]
	str r5, [sp, #0x10]
	str r5, [sp, #0x14]
	str r4, [sp, #0x18]
	str r5, [sp, #0x1c]
	ldr r0, [r11]
	ldr r1, [r10, r7, lsl #2]
	mov r2, r6
	mov r3, #0x80
	bl FUN_020425fc
_0211C888:
	add r7, r7, #1
_0211C88C:
	cmp r7, r9
	blt _0211C840
	ldr r1, [sp, #0x28]
	mov r0, r6
	bl DC_FlushRange
	ldr r0, _0211C8D0 ; =g3DPlaneCtrl
	ldr r3, [sp, #0x28]
	ldr r0, [r0]
	mov r4, #0
	str r4, [sp]
	str r4, [sp, #4]
	ldr r1, [sp, #0x20]
	mov r2, r6
	str r4, [sp, #8]
	bl FUN_02059288
	add sp, sp, #0x2c
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
_0211C8D0: .word g3DPlaneCtrl
_0211C8D4: .word gFont12
	arm_func_end FUN_ov51_0211c7ec

	arm_func_start FUN_ov51_0211c8d8
FUN_ov51_0211c8d8: ; 0x0211C8D8
	stmfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, lr}
	sub sp, sp, #0x2c
	ldr r4, _0211C9B8 ; =g3DPlaneCtrl
	mov r10, r2
	ldr r0, [r4]
	mov r9, r3
	mov r7, #0
	add r2, sp, #0x24
	add r3, sp, #0x28
	str r1, [sp, #0x20]
	str r7, [sp, #0x24]
	bl FUN_0205935c
	ldr r0, [r4]
	ldr r1, [sp, #0x20]
	ldr r6, [sp, #0x24]
	bl FUN_ov16_02111458
	mov r8, r0
	mov r5, r7
	mov r4, #1
	ldr r11, _0211C9BC ; =gFont8
	b _0211C974
_0211C92C:
	ldr r0, [r10, r7, lsl #2]
	cmp r0, #0
	beq _0211C970
	str r8, [sp]
	str r5, [sp, #4]
	add r0, r7, r7, lsl #3
	str r0, [sp, #8]
	str r4, [sp, #0xc]
	str r5, [sp, #0x10]
	str r5, [sp, #0x14]
	str r4, [sp, #0x18]
	str r5, [sp, #0x1c]
	ldr r0, [r11]
	ldr r1, [r10, r7, lsl #2]
	mov r2, r6
	mov r3, #0x80
	bl FUN_020425fc
_0211C970:
	add r7, r7, #1
_0211C974:
	cmp r7, r9
	blt _0211C92C
	ldr r1, [sp, #0x28]
	mov r0, r6
	bl DC_FlushRange
	ldr r0, _0211C9B8 ; =g3DPlaneCtrl
	ldr r3, [sp, #0x28]
	ldr r0, [r0]
	mov r4, #0
	str r4, [sp]
	str r4, [sp, #4]
	ldr r1, [sp, #0x20]
	mov r2, r6
	str r4, [sp, #8]
	bl FUN_02059288
	add sp, sp, #0x2c
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
_0211C9B8: .word g3DPlaneCtrl
_0211C9BC: .word gFont8
	arm_func_end FUN_ov51_0211c8d8

	arm_func_start FUN_ov51_0211c9c0
FUN_ov51_0211c9c0: ; 0x0211C9C0
	stmfd sp!, {r3, r4, lr}
	sub sp, sp, #0x1c
	mov r4, r1
	ldrb r0, [r4, #0x67]
	cmp r0, #0
	addeq sp, sp, #0x1c
	ldmeqfd sp!, {r3, r4, pc}
	ldr r1, [r4, #0x18]
	cmp r1, #0
	blt _0211C9F4
	ldr r0, [r4, #8]
	cmp r1, r0
	ble _0211C9FC
_0211C9F4:
	mov r0, #0
	str r0, [sp, #0x28]
_0211C9FC:
	mov r1, #0
	str r1, [sp]
	stmib sp, {r1, r2}
	ldr r0, [sp, #0x28]
	str r3, [sp, #0xc]
	str r0, [sp, #0x10]
	str r1, [sp, #0x14]
	str r1, [sp, #0x18]
	ldrb r3, [r4, #0x66]
	ldr r0, _0211CA60 ; =gSprAnimCtrl
	mov r2, r1
	add r3, r4, r3, lsl #2
	ldr r0, [r0]
	ldr r3, [r3, #0x1c]
	bl FUN_ov16_0210e29c
	ldrb r1, [r4, #0x66]
	ldr r0, _0211CA64 ; =g3DPlaneCtrl
	mov r2, #2
	add r1, r4, r1, lsl #2
	ldr r0, [r0]
	ldr r1, [r1, #0x1c]
	mov r3, #1
	bl FUN_ov16_021142fc
	add sp, sp, #0x1c
	ldmfd sp!, {r3, r4, pc}
_0211CA60: .word gSprAnimCtrl
_0211CA64: .word g3DPlaneCtrl
	arm_func_end FUN_ov51_0211c9c0

	arm_func_start FUN_ov51_0211ca68
FUN_ov51_0211ca68: ; 0x0211CA68
	stmfd sp!, {r3, lr}
	ldr r12, [r1, #0x10]
	cmp r12, #0
	blt _0211CA84
	ldr r3, [r1, #8]
	cmp r12, r3
	blt _0211CAB0
_0211CA84:
	ldrb r0, [r1, #0x67]
	cmp r0, #0
	ldmeqfd sp!, {r3, pc}
	ldrb r3, [r1, #0x66]
	ldr r0, _0211CACC ; =g3DPlaneCtrl
	mov r2, #2
	add r1, r1, r3, lsl #2
	ldr r0, [r0]
	ldr r1, [r1, #0x1c]
	bl FUN_ov16_02114370
	ldmfd sp!, {r3, pc}
_0211CAB0:
	str r2, [sp]
	ldr r2, [r1, #0x10]
	add r3, r1, r2, lsl #3
	ldrsh r2, [r3, #0x68]
	ldrsh r3, [r3, #0x6a]
	bl FUN_ov51_0211c9c0
	ldmfd sp!, {r3, pc}
_0211CACC: .word g3DPlaneCtrl
	arm_func_end FUN_ov51_0211ca68

	arm_func_start FUN_ov51_0211cad0
FUN_ov51_0211cad0: ; 0x0211CAD0
	stmfd sp!, {r4, r5, r6, r7, r8, r9, lr}
	sub sp, sp, #0x1c
	mov r8, r1
	ldrb r0, [r8, #0x65]
	mov r7, r2
	mov r6, r3
	cmp r0, #0
	addeq sp, sp, #0x1c
	ldmeqfd sp!, {r4, r5, r6, r7, r8, r9, pc}
	ldr r1, [r8, #4]
	ldr r0, [r8, #8]
	mov r5, #2
	cmp r1, r0
	mov r4, #1
	bgt _0211CB74
	ldrb r0, [r8, #0x64]
	ldr r6, _0211CC30 ; =g3DPlaneCtrl
	mov r2, r5
	add r1, r8, r0, lsl #2
	ldr r0, [r6]
	ldr r1, [r1, #0x1c]
	mov r3, r4
	bl FUN_ov16_021142fc
	ldrb r1, [r8, #0x64]
	ldr r0, [r6]
	mov r2, r5
	add r1, r1, #1
	add r1, r8, r1, lsl #2
	ldr r1, [r1, #0x1c]
	mov r3, r4
	bl FUN_ov16_021142fc
	ldrb r1, [r8, #0x64]
	ldr r0, [r6]
	mov r2, r5
	add r1, r1, #2
	add r1, r8, r1, lsl #2
	ldr r1, [r1, #0x1c]
	mov r3, r4
	bl FUN_ov16_021142fc
	add sp, sp, #0x1c
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, pc}
_0211CB74:
	mov r1, #0
	str r1, [sp]
	stmib sp, {r1, r7}
	ldr r0, [sp, #0x38]
	str r6, [sp, #0xc]
	str r0, [sp, #0x10]
	str r1, [sp, #0x14]
	str r1, [sp, #0x18]
	ldrb r3, [r8, #0x64]
	ldr r0, _0211CC34 ; =gSprAnimCtrl
	mov r2, r1
	add r3, r8, r3, lsl #2
	ldr r0, [r0]
	ldr r3, [r3, #0x1c]
	bl FUN_ov16_0210e29c
	ldrb r0, [r8, #0x64]
	ldr r9, _0211CC30 ; =g3DPlaneCtrl
	mov r2, r5
	add r1, r8, r0, lsl #2
	ldr r0, [r9]
	ldr r1, [r1, #0x1c]
	mov r3, r4
	bl FUN_ov16_021142fc
	ldrb r1, [r8, #0x64]
	ldr r0, [r9]
	mov r2, r5
	add r1, r1, #1
	add r1, r8, r1, lsl #2
	ldr r1, [r1, #0x1c]
	mov r3, r4
	bl FUN_ov16_021142fc
	ldrb r1, [r8, #0x64]
	ldr r0, [r9]
	mov r2, r5
	add r1, r1, #2
	add r1, r8, r1, lsl #2
	ldr r1, [r1, #0x1c]
	mov r3, r4
	bl FUN_ov16_021142fc
	ldr r0, _0211CC38 ; =gSprButtonCtrl
	mov r2, r7
	ldr r0, [r0]
	mov r3, r6
	mov r1, #9
	bl FUN_ov16_0210fd0c
	add sp, sp, #0x1c
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, pc}
_0211CC30: .word g3DPlaneCtrl
_0211CC34: .word gSprAnimCtrl
_0211CC38: .word gSprButtonCtrl
	arm_func_end FUN_ov51_0211cad0

	arm_func_start FUN_ov51_0211cc3c
FUN_ov51_0211cc3c: ; 0x0211CC3C
	stmfd sp!, {r3, r4, r5, r6, lr}
	sub sp, sp, #4
	mov r4, r1
	ldrsh r3, [r4, #0xa2]
	ldr r1, [r4, #0xc]
	mov r5, r0
	mul r0, r3, r1
	ldr r3, [r4, #4]
	ldr r1, [r4, #8]
	mov r6, r2
	sub r1, r3, r1
	bl _s32_div_f
	str r6, [sp]
	mov r12, r0
	ldrsh r3, [r4, #0x9e]
	ldrsh r2, [r4, #0x9c]
	mov r0, r5
	mov r1, r4
	add r3, r3, r12
	bl FUN_ov51_0211cad0
	add sp, sp, #4
	ldmfd sp!, {r3, r4, r5, r6, pc}
	arm_func_end FUN_ov51_0211cc3c

	arm_func_start FUN_ov51_0211cc94
FUN_ov51_0211cc94: ; 0x0211CC94
	stmfd sp!, {r3, r4, r5, lr}
	mov r5, r0
	mov r3, r1
	ldr r1, [r5, #0x94]
	mov r4, r2
	cmp r1, #0
	ble _0211CCC0
	ldr r0, _0211CCF4 ; =g3DPlaneCtrl
	mov r2, #2
	ldr r0, [r0]
	bl FUN_ov16_021142fc
_0211CCC0:
	ldr r1, [r5, #0x98]
	cmp r1, #0
	ble _0211CCE0
	ldr r0, _0211CCF4 ; =g3DPlaneCtrl
	mov r3, r4
	ldr r0, [r0]
	mov r2, #2
	bl FUN_ov16_021142fc
_0211CCE0:
	mov r0, #1
	cmp r4, #0
	moveq r0, #0
	str r0, [r5, #0x3d4]
	ldmfd sp!, {r3, r4, r5, pc}
_0211CCF4: .word g3DPlaneCtrl
	arm_func_end FUN_ov51_0211cc94

	arm_func_start FUN_ov51_0211ccf8
FUN_ov51_0211ccf8: ; 0x0211CCF8
	stmfd sp!, {r3, r4, r5, r6, r7, r8, lr}
	sub sp, sp, #0xc
	mov r6, r1
	cmp r6, #0
	mov r7, r0
	addle sp, sp, #0xc
	ldmlefd sp!, {r3, r4, r5, r6, r7, r8, pc}
	ldr r0, _0211CE88 ; =gSprButtonCtrl
	mov r1, r6, lsl #0x10
	ldr r0, [r0]
	mov r1, r1, lsr #0x10
	bl FUN_ov16_0210e7d0
	ldr r1, [r7, #0x18]
	mov r0, r7
	bl FUN_ov51_0211b164
	movs r5, r0
	addmi sp, sp, #0xc
	ldmmifd sp!, {r3, r4, r5, r6, r7, r8, pc}
	ldr r0, _0211CE8C ; =0x0211E110
	add r4, sp, #0
	ldmia r0, {r0, r1, r2}
	stmia r4, {r0, r1, r2}
	cmp r6, #1
	blt _0211CDE4
	cmp r6, #6
	bgt _0211CDE4
	mov r8, #0xa8
	mul r3, r5, r8
	add r2, r7, r3
	ldr r1, [r2, #0x140]
	sub r6, r6, #1
	add r0, r7, #0x134
	add r1, r6, r1
	add r0, r0, r3
	ldr r6, [r2, #0x134]
	bl FUN_ov16_020f52f4
	ldr r1, [r4, r5, lsl #2]
	cmp r6, r1
	mulne r2, r5, r8
	addne r0, r7, r2
	ldrne r0, [r0, #0x134]
	cmpne r0, r1
	add r1, r7, #0x134
	bne _0211CDBC
	mov r0, #0xa8
	mla r1, r5, r0, r1
	mov r0, r7
	mov r2, #0
	b _0211CDC8
_0211CDBC:
	add r1, r1, r2
	mov r0, r7
	mov r2, #8
_0211CDC8:
	bl FUN_ov51_0211bbcc
	mov r1, #0
	mov r0, r7
	mov r2, r1
	bl FUN_ov51_0211cc94
	add sp, sp, #0xc
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, pc}
_0211CDE4:
	cmp r6, #0xa
	bne _0211CE34
	add r0, r7, #0x134
	mov r4, #0xa8
	mla r0, r5, r4, r0
	add r1, sp, #0
	ldr r1, [r1, r5, lsl #2]
	bl FUN_ov16_020f52f4
	add r0, r7, #0x134
	mla r1, r5, r4, r0
	mov r6, #0
	mov r0, r7
	mov r2, r6
	bl FUN_ov51_0211bbcc
	mov r0, r7
	mov r2, r6
	mov r1, #1
	bl FUN_ov51_0211cc94
	add sp, sp, #0xc
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, pc}
_0211CE34:
	cmp r6, #0xb
	addne sp, sp, #0xc
	ldmnefd sp!, {r3, r4, r5, r6, r7, r8, pc}
	add r0, r7, #0x134
	mov r4, #0xa8
	mla r0, r5, r4, r0
	add r1, sp, #0
	ldr r1, [r1, r5, lsl #2]
	bl FUN_ov16_020f52f4
	add r0, r7, #0x134
	mla r1, r5, r4, r0
	mov r6, #0
	mov r0, r7
	mov r2, r6
	bl FUN_ov51_0211bbcc
	mov r0, r7
	mov r1, r6
	mov r2, #1
	bl FUN_ov51_0211cc94
	add sp, sp, #0xc
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, pc}
_0211CE88: .word gSprButtonCtrl
_0211CE8C: .word ov51_0211E110
	arm_func_end FUN_ov51_0211ccf8

	arm_func_start FUN_ov51_0211ce90
FUN_ov51_0211ce90: ; 0x0211CE90
	stmfd sp!, {r3, r4, r5, r6, lr}
	sub sp, sp, #0x44
	ldr r1, _0211CFD0 ; =gSprButtonCtrl
	mov r5, r0
	ldr r0, [r1]
	mov r1, #0xa
	bl FUN_ov16_0210efac
	ldrb r1, [r5, #0x3de]
	mov r0, #1
	mov r4, #0
	str r1, [sp]
	ldrb r2, [r5, #0x3df]
	ldr r6, _0211CFD4 ; =0x02099F44
	add r1, r5, #0x120
	str r2, [sp, #4]
	str r0, [sp, #8]
	str r4, [sp, #0xc]
	ldrb r2, [r5, #0x3dd]
	ldrb r3, [r5, #0x3dc]
	ldr r0, [r6]
	bl FUN_ov131_0213c20c
	ldr r0, [r6]
	bl FUN_ov131_0213c4f4
	ldr r0, [r6]
	mov r6, #5
	add r1, sp, #0x1a
	mov r2, r6
	bl FUN_ov131_0213b778
	mov r2, r0
	cmp r2, #0
	ble _0211CF6C
	b _0211CF14
_0211CF10:
	add r4, r4, #1
_0211CF14:
	cmp r4, r2
	blt _0211CF10
	mov r6, #0
	add r4, sp, #0x1a
	add r0, sp, #0x10
	b _0211CF40
_0211CF2C:
	mov r1, r6, lsl #3
	ldrh r3, [r4, r1]
	mov r1, r6, lsl #1
	add r6, r6, #1
	strh r3, [r0, r1]
_0211CF40:
	cmp r6, r2
	blt _0211CF2C
	ldr r0, _0211CFD4 ; =0x02099F44
	add r1, sp, #0x10
	ldr r0, [r0]
	and r2, r2, #0xff
	bl FUN_ov131_0213c4a0
	ldr r0, _0211CFD8 ; =0x020A9C40
	mov r1, #0x3a
	mov r2, #0
	b _0211CFB0
_0211CF6C:
	sub r0, r6, #6
	cmp r2, r0
	bne _0211CF88
	ldr r0, _0211CFD8 ; =0x020A9C40
	mov r2, r4
	mov r1, #0x3f
	b _0211CFB0
_0211CF88:
	sub r0, r6, #7
	cmp r2, r0
	bne _0211CFA4
	ldr r0, _0211CFD8 ; =0x020A9C40
	mov r2, r4
	mov r1, #0x40
	b _0211CFB0
_0211CFA4:
	ldr r0, _0211CFD8 ; =0x020A9C40
	mov r2, r4
	mov r1, #0x3e
_0211CFB0:
	bl FUN_020460a8
	ldr r2, _0211CFDC ; =0x020A0640
	mov r1, #0
	mov r0, r5
	strb r1, [r2, #0x620]
	bl FUN_ov51_0211c3c8
	add sp, sp, #0x44
	ldmfd sp!, {r3, r4, r5, r6, pc}
_0211CFD0: .word gSprButtonCtrl
_0211CFD4: .word unk_02099F44
_0211CFD8: .word unk_020A9C40
_0211CFDC: .word unk_020A0640
	arm_func_end FUN_ov51_0211ce90

	arm_func_start FUN_ov51_0211cfe0
FUN_ov51_0211cfe0: ; 0x0211CFE0
	stmfd sp!, {r4, lr}
	ldr r1, _0211D014 ; =gSprButtonCtrl
	mov r4, r0
	ldr r0, [r1]
	mov r1, #0xb
	bl FUN_ov16_0210efac
	ldr r0, _0211D018 ; =gAudioPlayer
	mov r1, #4
	bl _ZN11AudioPlayer12FUN_0202cf6cEm
	mov r0, r4
	mov r1, #0
	bl FUN_ov51_0211c3c8
	ldmfd sp!, {r4, pc}
_0211D014: .word gSprButtonCtrl
_0211D018: .word gAudioPlayer
	arm_func_end FUN_ov51_0211cfe0

	arm_func_start FUN_ov51_0211d01c
FUN_ov51_0211d01c: ; 0x0211D01C
	stmfd sp!, {r4, r5, r6, r7, r8, lr}
	mov r4, r1
	mov r6, r0
	mov r7, #0xa8
	cmp r4, #0
	ldmlefd sp!, {r4, r5, r6, r7, r8, pc}
	ldr r8, _0211D204 ; =gSprButtonCtrl
	mov r1, r4, lsl #0x10
	ldr r0, [r8]
	mov r1, r1, lsr #0x10
	bl FUN_ov16_0210e7d0
	ldr r1, [r6, #0x18]
	mov r0, r6
	bl FUN_ov51_0211b164
	movs r5, r0
	ldmmifd sp!, {r4, r5, r6, r7, r8, pc}
	cmp r4, #1
	blt _0211D0B4
	cmp r4, #6
	bgt _0211D0B4
	mul r2, r5, r7
	ldr r0, [r8]
	mov r1, #1
	add r0, r0, #0xf00
	strh r1, [r0, #0x38]
	add r0, r6, r2
	ldr r1, [r0, #0x140]
	add r3, r6, #0x134
	sub r4, r4, #1
	add r0, r3, r2
	add r1, r4, r1
	bl FUN_ov16_020f52f4
	add r0, r6, #0x134
	mla r1, r5, r7, r0
	mov r0, r6
	mov r2, #8
	bl FUN_ov51_0211bbcc
	ldmfd sp!, {r4, r5, r6, r7, r8, pc}
_0211D0B4:
	cmp r4, #0xa
	bne _0211D124
	mov r4, #1
	mov r8, #0
	mov r0, r6
	mov r1, r4
	mov r2, r8
	bl FUN_ov51_0211cc94
	ldr r0, _0211D204 ; =gSprButtonCtrl
	str r8, [r6, #0x3d4]
	ldr r0, [r0]
	add r0, r0, #0xf00
	strh r4, [r0, #0x38]
	ldr r0, [r6, #0x18]
	cmp r0, #1
	bne _0211D108
	add r0, r6, #0x134
	mla r0, r5, r7, r0
	mov r1, r4
	bl FUN_ov16_020f52f4
	ldmfd sp!, {r4, r5, r6, r7, r8, pc}
_0211D108:
	cmp r0, #2
	ldmnefd sp!, {r4, r5, r6, r7, r8, pc}
	add r0, r6, #0x134
	mla r0, r5, r7, r0
	mov r1, #4
	bl FUN_ov16_020f52f4
	ldmfd sp!, {r4, r5, r6, r7, r8, pc}
_0211D124:
	cmp r4, #0xb
	bne _0211D15C
	mov r4, #1
	mov r0, r6
	mov r2, r4
	mov r1, #0
	bl FUN_ov51_0211cc94
	ldr r0, _0211D204 ; =gSprButtonCtrl
	str r4, [r6, #0x3d4]
	ldr r0, [r0]
	mov r1, #2
	add r0, r0, #0xf00
	strh r1, [r0, #0x38]
	ldmfd sp!, {r4, r5, r6, r7, r8, pc}
_0211D15C:
	cmp r4, #0xc
	bne _0211D17C
	ldr r0, _0211D204 ; =gSprButtonCtrl
	mov r1, #2
	ldr r0, [r0]
	add r0, r0, #0xf00
	strh r1, [r0, #0x38]
	ldmfd sp!, {r4, r5, r6, r7, r8, pc}
_0211D17C:
	cmp r4, #7
	bne _0211D1C0
	add r0, r6, #0x134
	mla r0, r5, r7, r0
	sub r1, r7, #0xa9
	bl FUN_ov16_020f543c
	cmp r0, #0
	ldmeqfd sp!, {r4, r5, r6, r7, r8, pc}
	ldr r0, _0211D208 ; =gAudioPlayer
	mov r1, #8
	bl _ZN11AudioPlayer12FUN_0202cf6cEm
	add r0, r6, #0x134
	mla r1, r5, r7, r0
	mov r0, r6
	mov r2, #0
	bl FUN_ov51_0211bbcc
	ldmfd sp!, {r4, r5, r6, r7, r8, pc}
_0211D1C0:
	cmp r4, #8
	ldmnefd sp!, {r4, r5, r6, r7, r8, pc}
	add r0, r6, #0x134
	mla r0, r5, r7, r0
	mov r1, #1
	bl FUN_ov16_020f543c
	cmp r0, #0
	ldmeqfd sp!, {r4, r5, r6, r7, r8, pc}
	ldr r0, _0211D208 ; =gAudioPlayer
	mov r1, #8
	bl _ZN11AudioPlayer12FUN_0202cf6cEm
	add r0, r6, #0x134
	mla r1, r5, r7, r0
	mov r0, r6
	mov r2, #0
	bl FUN_ov51_0211bbcc
	ldmfd sp!, {r4, r5, r6, r7, r8, pc}
_0211D204: .word gSprButtonCtrl
_0211D208: .word gAudioPlayer
	arm_func_end FUN_ov51_0211d01c

	arm_func_start FUN_ov51_0211d20c
FUN_ov51_0211d20c: ; 0x0211D20C
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	sub sp, sp, #8
	cmp r1, #9
	mov r6, r0
	mov r5, r2
	mov r7, #0
	addne sp, sp, #8
	ldmnefd sp!, {r3, r4, r5, r6, r7, pc}
	ldr r1, [r6, #0x18]
	bl FUN_ov51_0211b164
	cmp r0, #0
	addlt sp, sp, #8
	ldmltfd sp!, {r3, r4, r5, r6, r7, pc}
	add r2, r6, #0x134
	mov r1, #0xa8
	mla r4, r0, r1, r2
	ldr r0, _0211D36C ; =gSprButtonCtrl
	add r1, sp, #4
	ldr r0, [r0]
	bl FUN_ov16_0210f48c
	ldrsh r0, [r4, #0x9c]
	ldrsh r1, [sp, #6]
	strh r0, [sp, #4]
	ldrsh r0, [r4, #0xa6]
	sub r0, r1, r0, asr #1
	strh r0, [sp, #6]
	ldrsh r2, [sp, #6]
	ldrsh r1, [r4, #0x9e]
	cmp r2, r1
	strlth r1, [sp, #6]
	blt _0211D298
	ldrsh r0, [r4, #0xa2]
	add r0, r1, r0
	cmp r2, r0
	strgeh r0, [sp, #6]
_0211D298:
	cmp r5, #0
	bne _0211D2B8
	str r7, [sp]
	ldrsh r2, [sp, #4]
	ldrsh r3, [sp, #6]
	mov r0, r6
	mov r1, r4
	bl FUN_ov51_0211cad0
_0211D2B8:
	ldrsh r3, [sp, #6]
	ldrsh r2, [r4, #0x9e]
	ldr r1, [r4, #4]
	ldr r0, [r4, #8]
	sub r2, r3, r2
	sub r0, r1, r0
	add r1, r0, #1
	mul r0, r1, r2
	ldrsh r1, [r4, #0xa2]
	bl _s32_div_f
	ldr r3, [r4, #4]
	ldr r2, [r4, #8]
	mov r1, r0
	cmp r3, r2
	movlt r1, #0
	blt _0211D310
	cmp r1, #0
	movlt r1, #0
	blt _0211D310
	sub r0, r3, r2
	cmp r1, r0
	movge r1, r0
_0211D310:
	ldr r0, [r4, #0xc]
	cmp r1, r0
	bne _0211D340
	cmp r5, #0
	addeq sp, sp, #8
	ldmeqfd sp!, {r3, r4, r5, r6, r7, pc}
	mov r0, r6
	mov r1, r4
	mov r2, #0
	bl FUN_ov51_0211cc3c
	add sp, sp, #8
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_0211D340:
	mov r0, r4
	bl FUN_ov16_020f53e8
	mov r0, r6
	mov r1, r4
	mov r2, #0
	bl FUN_ov51_0211ca68
	mov r0, r6
	mov r1, r4
	bl FUN_ov51_0211c528
	add sp, sp, #8
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_0211D36C: .word gSprButtonCtrl
	arm_func_end FUN_ov51_0211d20c

	arm_func_start FUN_ov51_0211d370
FUN_ov51_0211d370: ; 0x0211D370
	ldr r2, _0211D380 ; =0x0211E454
	str r1, [r0, #8]
	str r2, [r0]
	bx lr
_0211D380: .word ov51_0211E454
	arm_func_end FUN_ov51_0211d370

	arm_func_start FUN_ov51_0211d384
FUN_ov51_0211d384: ; 0x0211D384
	stmfd sp!, {r4, r5, r6, r7, r8, r9, r10, lr}
	ldr r3, _0211DC0C ; =0x0209A0F4
	ldr r2, _0211DC10 ; =gSprAnimCtrl
	ldrh r3, [r3]
	mov r8, r1
	mov r9, r0
	orr r0, r3, r8
	mov r1, r0, lsl #0x10
	ldr r0, [r2]
	ldr r4, _0211DC14 ; =gSprButtonCtrl
	mov r7, r1, lsr #0x10
	mov r5, #8
	mov r10, #1
	mov r6, #0
	bl FUN_ov16_0210e15c
	cmp r0, #0
	ldmnefd sp!, {r4, r5, r6, r7, r8, r9, r10, pc}
	ldr r0, [r4]
	bl FUN_ov16_0210f468
	cmp r0, #0
	beq _0211D3F4
	ldr r0, [r4]
	add r0, r0, #0xf00
	ldrh r8, [r0, #0x38]
	cmp r8, #0
	ldmeqfd sp!, {r4, r5, r6, r7, r8, r9, r10, pc}
	mov r7, r8
	strh r6, [r0, #0x38]
_0211D3F4:
	ldr r0, [r9, #0x14]
	cmp r0, #5
	ldmnefd sp!, {r4, r5, r6, r7, r8, r9, r10, pc}
	ldr r0, [r9, #0x18]
	cmp r0, #6
	addls pc, pc, r0, lsl #2
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, pc}
_0211D410: ; jump table
	b _0211D42C ; case 0
	b _0211D588 ; case 1
	b _0211D7E4 ; case 2
	b _0211DAB0 ; case 3
	b _0211DAB0 ; case 4
	b _0211DAB0 ; case 5
	b _0211DAB0 ; case 6
_0211D42C:
	tst r8, #1
	beq _0211D4C0
	mov r0, r9
	add r1, r9, #0x134
	bl FUN_ov51_0211c2c4
	ldr r0, [r9, #0x134]
	cmp r0, #0
	beq _0211D460
	cmp r0, #1
	beq _0211D47C
	cmp r0, #2
	beq _0211D498
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, pc}
_0211D460:
	ldr r0, _0211DC18 ; =gAudioPlayer
	mov r1, #1
	bl _ZN11AudioPlayer12FUN_0202cf6cEm
	mov r0, r9
	mov r1, #2
	bl FUN_ov51_0211c3d8
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, pc}
_0211D47C:
	ldr r0, _0211DC18 ; =gAudioPlayer
	mov r1, r10
	bl _ZN11AudioPlayer12FUN_0202cf6cEm
	mov r0, r9
	mov r1, r10
	bl FUN_ov51_0211c3d8
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, pc}
_0211D498:
	ldr r0, _0211DC18 ; =gAudioPlayer
	mov r1, #4
	bl _ZN11AudioPlayer12FUN_0202cf6cEm
	ldr r0, _0211DC1C ; =0x020A9C40
	mov r1, #0x34
	mov r2, #0
	bl FUN_020460a8
	mov r0, r9
	bl FUN_ov51_0211cfe0
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, pc}
_0211D4C0:
	tst r8, #2
	beq _0211D4F0
	ldr r0, _0211DC18 ; =gAudioPlayer
	mov r1, #4
	bl _ZN11AudioPlayer12FUN_0202cf6cEm
	ldr r0, _0211DC1C ; =0x020A9C40
	mov r1, #0x34
	mov r2, #0
	bl FUN_020460a8
	mov r0, r9
	bl FUN_ov51_0211cfe0
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, pc}
_0211D4F0:
	tst r7, #0x40
	beq _0211D53C
	ldr r0, _0211DC18 ; =gAudioPlayer
	mov r1, r5
	bl _ZN11AudioPlayer12FUN_0202cf6cEm
	ldr r4, [r9, #0x134]
	add r0, r9, #0x134
	sub r1, r5, #9
	bl FUN_ov16_020f53b0
	cmp r4, #0
	mov r0, r9
	add r1, r9, #0x134
	bne _0211D530
	mov r2, #0xa
	bl FUN_ov51_0211bbcc
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, pc}
_0211D530:
	mov r2, #0xe
	bl FUN_ov51_0211bbcc
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, pc}
_0211D53C:
	tst r7, #0x80
	ldmeqfd sp!, {r4, r5, r6, r7, r8, r9, r10, pc}
	ldr r0, _0211DC18 ; =gAudioPlayer
	mov r1, #8
	bl _ZN11AudioPlayer12FUN_0202cf6cEm
	ldr r4, [r9, #0x134]
	add r0, r9, #0x134
	mov r1, #1
	bl FUN_ov16_020f53b0
	cmp r4, #2
	mov r0, r9
	add r1, r9, #0x134
	bne _0211D57C
	mov r2, #0xa
	bl FUN_ov51_0211bbcc
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, pc}
_0211D57C:
	mov r2, #0xe
	bl FUN_ov51_0211bbcc
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, pc}
_0211D588:
	tst r8, #1
	beq _0211D658
	mov r0, r9
	add r1, r9, #0x1dc
	bl FUN_ov51_0211c2c4
	ldr r0, [r9, #0x1dc]
	cmp r0, #0
	beq _0211D5B4
	cmp r0, #1
	beq _0211D5E0
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, pc}
_0211D5B4:
	ldr r0, _0211DC1C ; =0x020A9C40
	mov r1, #0x3d
	mov r2, #0
	bl FUN_020460a8
	ldr r0, _0211DC18 ; =gAudioPlayer
	mov r1, #1
	bl _ZN11AudioPlayer12FUN_0202cf6cEm
	mov r0, r9
	mov r1, #0x5f
	bl FUN_ov51_0211c3c8
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, pc}
_0211D5E0:
	ldr r0, [r9, #0x3d4]
	cmp r0, #0
	bne _0211D630
	add r0, r9, #0x120
	bl STD_GetStringLength
	cmp r0, #0
	bgt _0211D60C
	ldr r0, _0211DC18 ; =gAudioPlayer
	mov r1, #9
	bl _ZN11AudioPlayer12FUN_0202cf6cEm
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, pc}
_0211D60C:
	ldr r0, _0211DC18 ; =gAudioPlayer
	mov r1, #1
	bl _ZN11AudioPlayer12FUN_0202cf6cEm
	ldr r0, [r4]
	mov r1, #0xa
	bl FUN_ov16_0210efac
	mov r0, r9
	bl FUN_ov51_0211ce90
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, pc}
_0211D630:
	ldr r0, _0211DC18 ; =gAudioPlayer
	mov r1, #4
	bl _ZN11AudioPlayer12FUN_0202cf6cEm
	ldr r0, [r4]
	mov r1, #0xb
	bl FUN_ov16_0210efac
	mov r0, r9
	mov r1, #0
	bl FUN_ov51_0211c3d8
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, pc}
_0211D658:
	tst r8, #2
	beq _0211D67C
	ldr r0, _0211DC18 ; =gAudioPlayer
	mov r1, #4
	bl _ZN11AudioPlayer12FUN_0202cf6cEm
	mov r0, r9
	mov r1, #0
	bl FUN_ov51_0211c3d8
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, pc}
_0211D67C:
	tst r7, #0x40
	beq _0211D700
	ldr r0, _0211DC18 ; =gAudioPlayer
	mov r1, r5
	bl _ZN11AudioPlayer12FUN_0202cf6cEm
	ldr r4, [r9, #0x1dc]
	add r0, r9, #0x1dc
	sub r1, r5, #9
	bl FUN_ov16_020f53b0
	cmp r4, #1
	ldrne r0, [r9, #0x1dc]
	cmpne r0, #1
	mov r0, r9
	bne _0211D6C0
	add r1, r9, #0x1dc
	mov r2, #0
	b _0211D6C8
_0211D6C0:
	add r1, r9, #0x1dc
	mov r2, #0xc
_0211D6C8:
	bl FUN_ov51_0211bbcc
	ldr r0, [r9, #0x1dc]
	cmp r0, #1
	bne _0211D6EC
	mov r0, r9
	mov r1, #1
	mov r2, #0
	bl FUN_ov51_0211cc94
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, pc}
_0211D6EC:
	mov r1, #0
	mov r0, r9
	mov r2, r1
	bl FUN_ov51_0211cc94
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, pc}
_0211D700:
	tst r7, #0x80
	beq _0211D784
	ldr r0, _0211DC18 ; =gAudioPlayer
	mov r1, #8
	bl _ZN11AudioPlayer12FUN_0202cf6cEm
	ldr r4, [r9, #0x1dc]
	add r0, r9, #0x1dc
	mov r1, #1
	bl FUN_ov16_020f53b0
	cmp r4, #1
	ldrne r0, [r9, #0x1dc]
	cmpne r0, #1
	mov r0, r9
	bne _0211D744
	add r1, r9, #0x1dc
	mov r2, #0
	b _0211D74C
_0211D744:
	add r1, r9, #0x1dc
	mov r2, #0xe
_0211D74C:
	bl FUN_ov51_0211bbcc
	ldr r0, [r9, #0x1dc]
	cmp r0, #1
	bne _0211D770
	mov r0, r9
	mov r1, #1
	mov r2, #0
	bl FUN_ov51_0211cc94
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, pc}
_0211D770:
	mov r1, #0
	mov r0, r9
	mov r2, r1
	bl FUN_ov51_0211cc94
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, pc}
_0211D784:
	tst r7, #0x20
	bne _0211D794
	tst r7, #0x10
	ldmeqfd sp!, {r4, r5, r6, r7, r8, r9, r10, pc}
_0211D794:
	ldr r0, [r9, #0x1dc]
	cmp r0, #1
	ldmnefd sp!, {r4, r5, r6, r7, r8, r9, r10, pc}
	ldr r0, _0211DC18 ; =gAudioPlayer
	mov r1, #8
	bl _ZN11AudioPlayer12FUN_0202cf6cEm
	ldr r0, [r9, #0x3d4]
	add r0, r0, #1
	ands r0, r0, #1
	str r0, [r9, #0x3d4]
	mov r0, r9
	bne _0211D7D4
	mov r1, #1
	mov r2, #0
	bl FUN_ov51_0211cc94
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, pc}
_0211D7D4:
	mov r1, #0
	mov r2, #1
	bl FUN_ov51_0211cc94
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, pc}
_0211D7E4:
	tst r8, #1
	beq _0211D924
	mov r0, r9
	add r1, r9, #0x284
	bl FUN_ov51_0211c2c4
	ldr r0, [r9, #0x284]
	cmp r0, #4
	addls pc, pc, r0, lsl #2
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, pc}
_0211D808: ; jump table
	b _0211D81C ; case 0
	b _0211D848 ; case 1
	b _0211D874 ; case 2
	b _0211D8A0 ; case 3
	b _0211D8CC ; case 4
_0211D81C:
	ldr r0, _0211DC1C ; =0x020A9C40
	mov r1, #0x37
	mov r2, #0
	bl FUN_020460a8
	ldr r0, _0211DC18 ; =gAudioPlayer
	mov r1, #1
	bl _ZN11AudioPlayer12FUN_0202cf6cEm
	mov r0, r9
	mov r1, #3
	bl FUN_ov51_0211c3d8
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, pc}
_0211D848:
	ldr r0, _0211DC1C ; =0x020A9C40
	mov r1, #0x38
	mov r2, #0
	bl FUN_020460a8
	ldr r0, _0211DC18 ; =gAudioPlayer
	mov r1, #1
	bl _ZN11AudioPlayer12FUN_0202cf6cEm
	mov r0, r9
	mov r1, #4
	bl FUN_ov51_0211c3d8
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, pc}
_0211D874:
	ldr r0, _0211DC1C ; =0x020A9C40
	mov r1, #0x39
	mov r2, #0
	bl FUN_020460a8
	ldr r0, _0211DC18 ; =gAudioPlayer
	mov r1, #1
	bl _ZN11AudioPlayer12FUN_0202cf6cEm
	mov r0, r9
	mov r1, #5
	bl FUN_ov51_0211c3d8
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, pc}
_0211D8A0:
	ldr r0, _0211DC1C ; =0x020A9C40
	mov r1, #0x3b
	mov r2, #0
	bl FUN_020460a8
	ldr r0, _0211DC18 ; =gAudioPlayer
	mov r1, #1
	bl _ZN11AudioPlayer12FUN_0202cf6cEm
	mov r0, r9
	mov r1, #6
	bl FUN_ov51_0211c3d8
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, pc}
_0211D8CC:
	ldr r0, [r9, #0x3d4]
	cmp r0, #0
	bne _0211D8FC
	ldr r0, _0211DC18 ; =gAudioPlayer
	mov r1, #6
	bl _ZN11AudioPlayer12FUN_0202cf6cEm
	ldr r0, [r4]
	mov r1, #0xa
	bl FUN_ov16_0210efac
	mov r0, r9
	bl FUN_ov51_0211ce90
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, pc}
_0211D8FC:
	ldr r0, _0211DC18 ; =gAudioPlayer
	mov r1, #4
	bl _ZN11AudioPlayer12FUN_0202cf6cEm
	ldr r0, [r4]
	mov r1, #0xb
	bl FUN_ov16_0210efac
	mov r0, r9
	mov r1, #0
	bl FUN_ov51_0211c3d8
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, pc}
_0211D924:
	tst r8, #2
	beq _0211D948
	ldr r0, _0211DC18 ; =gAudioPlayer
	mov r1, #4
	bl _ZN11AudioPlayer12FUN_0202cf6cEm
	mov r0, r9
	mov r1, #0
	bl FUN_ov51_0211c3d8
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, pc}
_0211D948:
	tst r7, #0x40
	beq _0211D9CC
	ldr r0, _0211DC18 ; =gAudioPlayer
	mov r1, r5
	bl _ZN11AudioPlayer12FUN_0202cf6cEm
	ldr r4, [r9, #0x284]
	add r0, r9, #0x284
	sub r1, r5, #9
	bl FUN_ov16_020f53b0
	cmp r4, #4
	ldrne r0, [r9, #0x284]
	cmpne r0, #4
	mov r0, r9
	bne _0211D98C
	add r1, r9, #0x284
	mov r2, #0
	b _0211D994
_0211D98C:
	add r1, r9, #0x284
	mov r2, #0xe
_0211D994:
	bl FUN_ov51_0211bbcc
	ldr r0, [r9, #0x284]
	cmp r0, #4
	bne _0211D9B8
	mov r0, r9
	mov r1, #1
	mov r2, #0
	bl FUN_ov51_0211cc94
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, pc}
_0211D9B8:
	mov r1, #0
	mov r0, r9
	mov r2, r1
	bl FUN_ov51_0211cc94
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, pc}
_0211D9CC:
	tst r7, #0x80
	beq _0211DA50
	ldr r0, _0211DC18 ; =gAudioPlayer
	mov r1, #8
	bl _ZN11AudioPlayer12FUN_0202cf6cEm
	ldr r4, [r9, #0x284]
	add r0, r9, #0x284
	mov r1, #1
	bl FUN_ov16_020f53b0
	cmp r4, #4
	ldrne r0, [r9, #0x284]
	cmpne r0, #4
	mov r0, r9
	bne _0211DA10
	add r1, r9, #0x284
	mov r2, #0
	b _0211DA18
_0211DA10:
	add r1, r9, #0x284
	mov r2, #0xc
_0211DA18:
	bl FUN_ov51_0211bbcc
	ldr r0, [r9, #0x284]
	cmp r0, #4
	bne _0211DA3C
	mov r0, r9
	mov r1, #1
	mov r2, #0
	bl FUN_ov51_0211cc94
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, pc}
_0211DA3C:
	mov r1, #0
	mov r0, r9
	mov r2, r1
	bl FUN_ov51_0211cc94
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, pc}
_0211DA50:
	tst r7, #0x20
	bne _0211DA60
	tst r7, #0x10
	ldmeqfd sp!, {r4, r5, r6, r7, r8, r9, r10, pc}
_0211DA60:
	ldr r0, [r9, #0x284]
	cmp r0, #4
	ldmnefd sp!, {r4, r5, r6, r7, r8, r9, r10, pc}
	ldr r0, _0211DC18 ; =gAudioPlayer
	mov r1, #8
	bl _ZN11AudioPlayer12FUN_0202cf6cEm
	ldr r0, [r9, #0x3d4]
	add r0, r0, #1
	ands r0, r0, #1
	str r0, [r9, #0x3d4]
	mov r0, r9
	bne _0211DAA0
	mov r1, #1
	mov r2, #0
	bl FUN_ov51_0211cc94
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, pc}
_0211DAA0:
	mov r1, #0
	mov r2, #1
	bl FUN_ov51_0211cc94
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, pc}
_0211DAB0:
	tst r8, #1
	beq _0211DB80
	mov r0, r9
	add r1, r9, #0x32c
	bl FUN_ov51_0211c2c4
	ldr r0, [r9, #0x18]
	cmp r0, #6
	addls pc, pc, r0, lsl #2
	b _0211DB44
_0211DAD4: ; jump table
	b _0211DB44 ; case 0
	b _0211DB44 ; case 1
	b _0211DB44 ; case 2
	b _0211DAF0 ; case 3
	b _0211DB08 ; case 4
	b _0211DB18 ; case 5
	b _0211DB30 ; case 6
_0211DAF0:
	ldr r0, [r9, #0x32c]
	add r1, r9, #0x9c
	mov r0, r0, lsl #2
	ldrh r0, [r1, r0]
	strb r0, [r9, #0x3dc]
	b _0211DB44
_0211DB08:
	ldr r0, [r9, #0x32c]
	rsb r0, r0, #4
	strb r0, [r9, #0x3dd]
	b _0211DB44
_0211DB18:
	ldr r0, [r9, #0x32c]
	cmp r0, #4
	streqb r6, [r9, #0x3de]
	addne r0, r0, #1
	strneb r0, [r9, #0x3de]
	b _0211DB44
_0211DB30:
	ldr r0, [r9, #0x32c]
	cmp r0, #4
	streqb r6, [r9, #0x3df]
	addne r0, r0, #1
	strneb r0, [r9, #0x3df]
_0211DB44:
	ldr r0, [r9, #0x330]
	ldr r1, [r9, #0x32c]
	sub r0, r0, #1
	cmp r1, r0
	bne _0211DB64
	ldr r0, _0211DC18 ; =gAudioPlayer
	mov r1, #4
	b _0211DB6C
_0211DB64:
	ldr r0, _0211DC18 ; =gAudioPlayer
	mov r1, #1
_0211DB6C:
	bl _ZN11AudioPlayer12FUN_0202cf6cEm
	mov r0, r9
	mov r1, #2
	bl FUN_ov51_0211c3d8
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, pc}
_0211DB80:
	tst r8, #2
	beq _0211DBA4
	ldr r0, _0211DC18 ; =gAudioPlayer
	mov r1, #4
	bl _ZN11AudioPlayer12FUN_0202cf6cEm
	mov r0, r9
	mov r1, #2
	bl FUN_ov51_0211c3d8
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, pc}
_0211DBA4:
	tst r7, #0x40
	beq _0211DBD8
	ldr r0, _0211DC18 ; =gAudioPlayer
	mov r1, r5
	bl _ZN11AudioPlayer12FUN_0202cf6cEm
	add r0, r9, #0x32c
	sub r1, r5, #9
	bl FUN_ov16_020f53b0
	mov r0, r9
	add r1, r9, #0x32c
	mov r2, #0xa
	bl FUN_ov51_0211bbcc
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, pc}
_0211DBD8:
	tst r7, #0x80
	ldmeqfd sp!, {r4, r5, r6, r7, r8, r9, r10, pc}
	ldr r0, _0211DC18 ; =gAudioPlayer
	mov r1, #8
	bl _ZN11AudioPlayer12FUN_0202cf6cEm
	add r0, r9, #0x32c
	mov r1, #1
	bl FUN_ov16_020f53b0
	mov r0, r9
	add r1, r9, #0x32c
	mov r2, #0xa
	bl FUN_ov51_0211bbcc
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, pc}
_0211DC0C: .word unk_0209A0F4
_0211DC10: .word gSprAnimCtrl
_0211DC14: .word gSprButtonCtrl
_0211DC18: .word gAudioPlayer
_0211DC1C: .word unk_020A9C40
	arm_func_end FUN_ov51_0211d384

	arm_func_start FUN_ov51_0211dc20
FUN_ov51_0211dc20: ; 0x0211DC20
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	ldr r2, _0211DCE8 ; =gSprAnimCtrl
	mov r7, r0
	ldr r0, [r2]
	mov r6, r1
	mov r5, #0
	bl FUN_ov16_0210e15c
	cmp r0, #0
	ldreq r0, [r7, #0x14]
	cmpeq r0, #5
	ldmnefd sp!, {r3, r4, r5, r6, r7, pc}
	ldr r4, _0211DCEC ; =gSprButtonCtrl
	mov r1, r6
	ldr r0, [r4]
	mov r2, r5
	bl FUN_ov16_0210f20c
	cmp r0, #4
	addls pc, pc, r0, lsl #2
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_0211DC6C: ; jump table
	ldmfd sp!, {r3, r4, r5, r6, r7, pc} ; case 0
	b _0211DC80 ; case 1
	b _0211DC98 ; case 2
	b _0211DCB0 ; case 3
	b _0211DCCC ; case 4
_0211DC80:
	ldr r0, [r4]
	bl FUN_ov16_0210f484
	mov r1, r0
	mov r0, r7
	bl FUN_ov51_0211ccf8
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_0211DC98:
	ldr r0, [r4]
	bl FUN_ov16_0210f484
	mov r1, r0
	mov r0, r7
	bl FUN_ov51_0211d01c
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_0211DCB0:
	ldr r0, [r4]
	bl FUN_ov16_0210f484
	mov r1, r0
	mov r0, r7
	mov r2, r5
	bl FUN_ov51_0211d20c
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_0211DCCC:
	ldr r0, [r4]
	bl FUN_ov16_0210f484
	mov r1, r0
	mov r0, r7
	mov r2, #1
	bl FUN_ov51_0211d20c
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_0211DCE8: .word gSprAnimCtrl
_0211DCEC: .word gSprButtonCtrl
	arm_func_end FUN_ov51_0211dc20

	arm_func_start FUN_ov51_0211dcf0
FUN_ov51_0211dcf0: ; 0x0211DCF0
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	mov r1, #0x4000000
	ldr r1, [r1]
	mov r4, r0
	and r0, r1, #0x1f00
	mov r1, r0, lsr #8
	ldr r0, _0211DE24 ; =gSprButtonCtrl
	str r1, [r4, #0x3d8]
	ldr r0, [r0]
	bl FUN_ov16_0210e980
	ldr r0, _0211DE28 ; =gSprAnimCtrl
	ldr r0, [r0]
	bl FUN_ov16_0210e0a0
	mov r0, r4
	ldr r1, [r0]
	ldr r1, [r1, #0x44]
	blx r1
	ldr r0, [r4, #8]
	bl _ZN14CScreenManager18getLoadedSceneMainEv
	str r0, [r4, #0xc]
	mov r7, #0
	str r7, [r4, #0x10]
	add r0, r4, #0x120
	mov r1, r7
	mov r2, #0x11
	bl MI_CpuFill8
	str r7, [r4, #0x14]
	str r7, [r4, #0x18]
	add r0, r4, #0x3e0
	mov r1, r7
	mov r2, #0x18
	bl MI_CpuFill8
	add r0, r4, #0x1c
	mov r1, r7
	mov r6, #0xc
	mov r2, r6
	bl MI_CpuFill8
	add r0, r4, #0x28
	mov r1, r7
	mov r2, #0x58
	bl MI_CpuFill8
	add r0, r4, #0x80
	mov r1, r7
	mov r5, #4
	mov r2, r5
	bl MI_CpuFill8
	mov r2, r6
	add r0, r4, #0x84
	mov r1, r7
	bl MI_CpuFill8
	add r0, r4, #0x94
	mov r1, r7
	mov r2, #8
	bl MI_CpuFill8
	mov r2, r5
	add r0, r4, #0x3dc
	mov r1, r7
	bl MI_CpuFill8
	str r7, [r4, #0x90]
	add r0, r4, #0x9c
	mov r1, r7
	mov r2, #0x80
	bl MI_CpuFill8
	str r7, [r4, #0x11c]
	add r0, r4, #0x134
	mov r1, r7
	mov r2, #0x2a0
	bl MI_CpuFill8
	ldr r0, _0211DE2C ; =g3DPlaneCtrl
	str r7, [r4, #0x3d4]
	ldr r0, [r0]
	bl FUN_ov16_021123b4
	ldr r0, _0211DE30 ; =0x020A9C40
	mov r2, r7
	mov r1, #0x32
	bl FUN_020460a8
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_0211DE24: .word gSprButtonCtrl
_0211DE28: .word gSprAnimCtrl
_0211DE2C: .word g3DPlaneCtrl
_0211DE30: .word unk_020A9C40
	arm_func_end FUN_ov51_0211dcf0

	arm_func_start FUN_ov51_0211de34
FUN_ov51_0211de34: ; 0x0211DE34
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	mov r4, r0
	ldr r1, [r4, #0x14]
	cmp r1, #7
	addls pc, pc, r1, lsl #2
	b _0211E04C
_0211DE4C: ; jump table
	b _0211DE6C ; case 0
	b _0211DE80 ; case 1
	b _0211DEB8 ; case 2
	b _0211DED8 ; case 3
	b _0211DF00 ; case 4
	b _0211E04C ; case 5
	b _0211DF44 ; case 6
	b _0211DF88 ; case 7
_0211DE6C:
	bl FUN_ov51_02119f10
	mov r0, r4
	bl FUN_ov51_02119f2c
	mov r0, #1
	str r0, [r4, #0x14]
_0211DE80:
	add r0, r4, #0x1c
	mov r1, #1
	bl _ZN7Archive11TryFinalizeEP9SFileDatai
	cmp r0, #0
	beq _0211E04C
	mov r5, #2
	mov r1, r5
	add r0, r4, #0x3e0
	bl _ZN7Archive11TryFinalizeEP9SFileDatai
	cmp r0, #0
	beq _0211E04C
	mov r0, r4
	bl FUN_ov51_02119fcc
	str r5, [r4, #0x14]
_0211DEB8:
	mov r0, r4
	bl FUN_ov51_0211a1d8
	cmp r0, #0
	beq _0211E04C
	mov r0, r4
	bl FUN_ov51_0211a228
	mov r0, #3
	str r0, [r4, #0x14]
_0211DED8:
	ldr r5, _0211E068 ; =0x0209A454
	mov r0, r4
	ldrb r1, [r5, #0x20]
	bl FUN_ov51_0211c3d8
	mov r1, #0
	mov r0, r4
	strb r1, [r5, #0x20]
	bl FUN_ov51_0211c4c8
	mov r0, r4
	bl FUN_ov51_0211aed4
_0211DF00:
	ldr r0, _0211E06C ; =gSprAnimCtrl
	ldr r0, [r0]
	bl FUN_ov16_0210e15c
	cmp r0, #0
	bne _0211E04C
	ldr r1, [r4, #0x18]
	mov r0, r4
	bl FUN_ov51_0211afec
	mov r0, r4
	bl FUN_ov51_0211b1ac
	mov r0, r4
	ldr r1, [r0]
	ldr r1, [r1, #0x4c]
	blx r1
	mov r0, #5
	str r0, [r4, #0x14]
	b _0211E04C
_0211DF44:
	ldr r0, _0211E06C ; =gSprAnimCtrl
	ldr r0, [r0]
	bl FUN_ov16_0210e15c
	cmp r0, #0
	bne _0211E04C
	mov r0, r4
	ldr r1, [r0]
	ldr r1, [r1, #0x58]
	blx r1
	cmp r0, #0
	beq _0211E04C
	mov r0, r4
	ldr r1, [r0]
	ldr r1, [r1, #0x50]
	blx r1
	mov r0, #7
	str r0, [r4, #0x14]
_0211DF88:
	mov r0, r4
	ldr r1, [r0]
	ldr r1, [r1, #0x58]
	blx r1
	cmp r0, #0
	bne _0211E04C
	ldr r0, [r4, #0xc]
	cmp r0, #0x5f
	bne _0211E010
	ldr r5, _0211E068 ; =0x0209A454
	mov r7, #0
	str r7, [r5, #8]
	strb r7, [r5, #0xc]
	mov r0, #1
	str r0, [r5, #4]
	strb r0, [r5, #0x1e]
	ldr r6, _0211E070 ; =0x0209A460
	strb r7, [r5, #0x1f]
	strb r7, [r5, #0x20]
	mov r0, r6
	add r1, r4, #0x120
	mov r2, #0x11
	strb r7, [r5, #0x1d]
	bl STD_CopyLString
	mov r0, r6
	bl STD_GetStringLength
	str r0, [r5, #8]
	ldr r0, [r4, #0x18]
	mov r1, r7
	strb r0, [r5, #0x20]
	ldr r0, [r4, #8]
	mov r2, #0x5f
	bl _ZN14CScreenManager9pushSceneE12EngineSelect9SceneType
	b _0211E04C
_0211E010:
	cmp r0, #0x87
	bne _0211E040
	mov r5, #0x87
	ldr r0, [r4, #8]
	mov r2, r5
	mov r1, #1
	bl _ZN14CScreenManager9pushSceneE12EngineSelect9SceneType
	ldr r0, [r4, #8]
	mov r2, r5
	mov r1, #0
	bl _ZN14CScreenManager12setNextSceneE12EngineSelect9SceneType
	b _0211E04C
_0211E040:
	ldr r0, [r4, #8]
	mov r1, #0
	bl _ZN14CScreenManager8popSceneE12EngineSelect
_0211E04C:
	ldr r0, _0211E074 ; =gDeltaTime
	ldr r1, _0211E06C ; =gSprAnimCtrl
	ldr r2, [r0]
	ldr r0, [r1]
	mov r1, r2, lsl #1
	bl FUN_ov16_0210e10c
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_0211E068: .word unk_0209A454
_0211E06C: .word gSprAnimCtrl
_0211E070: .word unk_0209A460
_0211E074: .word gDeltaTime
	arm_func_end FUN_ov51_0211de34

	arm_func_start FUN_ov51_0211e078
FUN_ov51_0211e078: ; 0x0211E078
	bx lr
	arm_func_end FUN_ov51_0211e078

	arm_func_start FUN_ov51_0211e07c
FUN_ov51_0211e07c: ; 0x0211E07C
	stmfd sp!, {r4, lr}
	mov r2, #0x4000000
	mov r4, r0
	ldr r0, [r2]
	ldr r1, [r4, #0x3d8]
	bic r0, r0, #0x1f00
	orr r3, r0, r1, lsl #8
	mov r0, #2
	mov r1, #0x10
	str r3, [r2]
	bl _ZN8Graphics12ClearBGXMainEi10CharFormat
	ldr r0, _0211E0E8 ; =0x020A9C40
	mov r1, #0x35
	mov r2, #0
	bl FUN_020460a8
	ldr r0, _0211E0EC ; =gSprButtonCtrl
	ldr r0, [r0]
	bl FUN_ov16_0210e9d8 ; may be ov17 ; ov16(Mica)
	ldr r0, _0211E0F0 ; =gSprAnimCtrl
	ldr r0, [r0]
	bl FUN_ov16_0210e0d8
	mov r0, r4
	bl FUN_ov51_0211a0c8
	ldr r0, _0211E0F4 ; =g3DPlaneCtrl
	ldr r0, [r0]
	bl FUN_ov16_021123c4
	ldmfd sp!, {r4, pc}
_0211E0E8: .word unk_020A9C40
_0211E0EC: .word gSprButtonCtrl
_0211E0F0: .word gSprAnimCtrl
_0211E0F4: .word g3DPlaneCtrl
	arm_func_end FUN_ov51_0211e07c

	arm_func_start FUN_ov51_0211e0f8
FUN_ov51_0211e0f8: ; 0x0211E0F8
	stmfd sp!, {r4, lr}
	mov r4, r0
	bl _ZdlPv
	mov r0, r4
	ldmfd sp!, {r4, pc}
	arm_func_end FUN_ov51_0211e0f8

	arm_func_start FUN_ov51_0211e10c
FUN_ov51_0211e10c: ; 0x0211E10C
	bx lr
	arm_func_end FUN_ov51_0211e10c

	.rodata
	.global ov51_0211E110
ov51_0211E110:
	.byte 0x64, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x04, 0x00, 0x00, 0x00

	.section .init, 4
	arm_func_start FUN_ov51_0211e11c
FUN_ov51_0211e11c: ; 0x0211E11C
	stmfd sp!, {r3, r4, r5, lr}
	mov r5, #0x2000
	mov r0, r5
	bl FX_Sqrt
	ldr r4, _0211E160 ; =0x0211E190
	str r0, [r4, #0xc]
	ldr r0, _0211E164 ; =0x00009CCD
	bl FX_Sqrt
	str r0, [r4, #0x14]
	ldr r0, _0211E168 ; =0x0000EA3C
	mov r1, #0x800
	stmib r4, {r0, r1}
	add r0, r5, #0x4e0000
	str r0, [r4, #0x10]
	add r0, r1, #0x840000
	str r0, [r4]
	ldmfd sp!, {r3, r4, r5, pc}
_0211E160: .word ov51_0211E190
_0211E164: .word 0x00009CCD
_0211E168: .word 0x0000EA3C
	arm_func_end FUN_ov51_0211e11c

	.section .sinit, 4
ov51_0211E16C:
	.word FUN_ov51_0211e11c

	.data
	.global ov51_0211E180
ov51_0211E180:
	.byte 0x89, 0xCE, 0x00, 0x00
	.global ov51_0211E184
ov51_0211E184:
	.byte 0x8E, 0x52, 0x00, 0x00
	.global ov51_0211E188
ov51_0211E188:
	.byte 0x97, 0xD1, 0x00, 0x00
	.global ov51_0211E18C
ov51_0211E18C:
	.byte 0x95, 0x97, 0x00, 0x00
	.global ov51_0211E190
ov51_0211E190:
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.word ov51_0211E3E0
	.word ov51_0211E38C
	.word ov51_0211E234
	.global ov51_0211E1B4
ov51_0211E1B4:
	.word ov51_0211E214
	.word ov51_0211E2F0
	.word ov51_0211E374
	.word ov51_0211E380
	.word ov51_0211E39C
	.global ov51_0211E1C8
ov51_0211E1C8:
	.word ov51_0211E350
	.word ov51_0211E22C
	.word ov51_0211E35C
	.word ov51_0211E21C
	.word ov51_0211E224
	.global ov51_0211E1DC
ov51_0211E1DC:
	.word ov51_0211E20C
	.word ov51_0211E3AC
	.word ov51_0211E3BC
	.word ov51_0211E3CC
	.word ov51_0211E368
	.global ov51_0211E1F0
ov51_0211E1F0:
	.word ov51_0211E204
	.word ov51_0211E18C
	.word ov51_0211E188
	.word ov51_0211E180
	.word ov51_0211E184
	.global ov51_0211E204
ov51_0211E204:
	.byte 0x82, 0xC8, 0x82, 0xB5, 0x00, 0x00, 0x00, 0x00
	.global ov51_0211E20C
ov51_0211E20C:
	.byte 0x82, 0xC8, 0x82, 0xB5
	.byte 0x00, 0x00, 0x00, 0x00
	.global ov51_0211E214
ov51_0211E214:
	.byte 0x82, 0xC8, 0x82, 0xB5, 0x00, 0x00, 0x00, 0x00
	.global ov51_0211E21C
ov51_0211E21C:
	.byte 0x94, 0x5C, 0x97, 0xCD
	.byte 0x00, 0x00, 0x00, 0x00
	.global ov51_0211E224
ov51_0211E224:
	.byte 0x91, 0xAE, 0x90, 0xAB, 0x00, 0x00, 0x00, 0x00
	.global ov51_0211E22C
ov51_0211E22C:
	.byte 0x82, 0xCE, 0x82, 0xB5
	.byte 0x82, 0xE5, 0x00, 0x00
	.global ov51_0211E234
ov51_0211E234:
	.byte 0x82, 0xE2, 0x82, 0xDF, 0x82, 0xE9, 0x00, 0x00
	.global ov51_0211E23C
ov51_0211E23C:
	.byte 0x73, 0x63, 0x64, 0x6E
	.byte 0x5F, 0x63, 0x30, 0x30, 0x00, 0x00, 0x00, 0x00
	.global ov51_0211E248
ov51_0211E248:
	.byte 0x73, 0x63, 0x64, 0x6E, 0x5F, 0x62, 0x30, 0x35
	.byte 0x00, 0x00, 0x00, 0x00
	.global ov51_0211E254
ov51_0211E254:
	.byte 0x73, 0x63, 0x64, 0x6E, 0x5F, 0x6E, 0x30, 0x30, 0x00, 0x00, 0x00, 0x00
	.global ov51_0211E260
ov51_0211E260:
	.byte 0x73, 0x63, 0x64, 0x6E, 0x5F, 0x62, 0x30, 0x37, 0x00, 0x00, 0x00, 0x00
	.global ov51_0211E26C
ov51_0211E26C:
	.byte 0x73, 0x63, 0x64, 0x6E
	.byte 0x5F, 0x77, 0x30, 0x34, 0x00, 0x00, 0x00, 0x00
	.global ov51_0211E278
ov51_0211E278:
	.byte 0x73, 0x63, 0x64, 0x6E, 0x5F, 0x63, 0x30, 0x32
	.byte 0x00, 0x00, 0x00, 0x00
	.global ov51_0211E284
ov51_0211E284:
	.byte 0x73, 0x63, 0x64, 0x6E, 0x5F, 0x63, 0x30, 0x31, 0x00, 0x00, 0x00, 0x00
	.global ov51_0211E290
ov51_0211E290:
	.byte 0x73, 0x63, 0x64, 0x6E, 0x5F, 0x62, 0x30, 0x34, 0x00, 0x00, 0x00, 0x00
	.global ov51_0211E29C
ov51_0211E29C:
	.byte 0x73, 0x63, 0x64, 0x6E
	.byte 0x5F, 0x62, 0x30, 0x36, 0x00, 0x00, 0x00, 0x00
	.global ov51_0211E2A8
ov51_0211E2A8:
	.byte 0x73, 0x63, 0x64, 0x6E, 0x5F, 0x77, 0x30, 0x31
	.byte 0x00, 0x00, 0x00, 0x00
	.global ov51_0211E2B4
ov51_0211E2B4:
	.byte 0x73, 0x63, 0x64, 0x6E, 0x5F, 0x77, 0x30, 0x32, 0x00, 0x00, 0x00, 0x00
	.global ov51_0211E2C0
ov51_0211E2C0:
	.byte 0x73, 0x63, 0x64, 0x6E, 0x5F, 0x77, 0x30, 0x33, 0x00, 0x00, 0x00, 0x00
	.global ov51_0211E2CC
ov51_0211E2CC:
	.byte 0x73, 0x63, 0x64, 0x6E
	.byte 0x5F, 0x77, 0x30, 0x35, 0x00, 0x00, 0x00, 0x00
	.global ov51_0211E2D8
ov51_0211E2D8:
	.byte 0x73, 0x63, 0x64, 0x6E, 0x5F, 0x77, 0x30, 0x36
	.byte 0x00, 0x00, 0x00, 0x00
	.global ov51_0211E2E4
ov51_0211E2E4:
	.byte 0x73, 0x63, 0x64, 0x6E, 0x5F, 0x77, 0x30, 0x37, 0x00, 0x00, 0x00, 0x00
	.global ov51_0211E2F0
ov51_0211E2F0:
	.byte 0x93, 0xAA, 0x82, 0xAA, 0x82, 0xA2, 0x82, 0xA2, 0x00, 0x00, 0x00, 0x00
	.global ov51_0211E2FC
ov51_0211E2FC:
	.byte 0x73, 0x63, 0x64, 0x6E
	.byte 0x5F, 0x77, 0x31, 0x30, 0x00, 0x00, 0x00, 0x00
	.global ov51_0211E308
ov51_0211E308:
	.byte 0x73, 0x63, 0x64, 0x6E, 0x5F, 0x77, 0x31, 0x31
	.byte 0x00, 0x00, 0x00, 0x00
	.global ov51_0211E314
ov51_0211E314:
	.byte 0x73, 0x63, 0x64, 0x6E, 0x5F, 0x77, 0x30, 0x30, 0x00, 0x00, 0x00, 0x00
	.global ov51_0211E320
ov51_0211E320:
	.byte 0x73, 0x63, 0x64, 0x6E, 0x5F, 0x77, 0x30, 0x39, 0x00, 0x00, 0x00, 0x00
	.global ov51_0211E32C
ov51_0211E32C:
	.byte 0x73, 0x63, 0x64, 0x6E
	.byte 0x5F, 0x77, 0x30, 0x38, 0x00, 0x00, 0x00, 0x00
	.global ov51_0211E338
ov51_0211E338:
	.byte 0x73, 0x63, 0x64, 0x6E, 0x5F, 0x77, 0x31, 0x32
	.byte 0x00, 0x00, 0x00, 0x00
	.global ov51_0211E344
ov51_0211E344:
	.byte 0x73, 0x63, 0x64, 0x6E, 0x5F, 0x77, 0x31, 0x34, 0x00, 0x00, 0x00, 0x00
	.global ov51_0211E350
ov51_0211E350:
	.byte 0x83, 0x58, 0x83, 0x4A, 0x83, 0x45, 0x83, 0x67, 0x00, 0x00, 0x00, 0x00
	.global ov51_0211E35C
ov51_0211E35C:
	.byte 0x83, 0x7C, 0x83, 0x57
	.byte 0x83, 0x56, 0x83, 0x87, 0x83, 0x93, 0x00, 0x00
	.global ov51_0211E368
ov51_0211E368:
	.byte 0x83, 0x74, 0x83, 0x48, 0x83, 0x8F, 0x81, 0x5B
	.byte 0x83, 0x68, 0x00, 0x00
	.global ov51_0211E374
ov51_0211E374:
	.byte 0x91, 0xAB, 0x82, 0xAA, 0x82, 0xCD, 0x82, 0xE2, 0x82, 0xA2, 0x00, 0x00
	.global ov51_0211E380
ov51_0211E380:
	.byte 0x91, 0xCC, 0x97, 0xCD, 0x82, 0xB6, 0x82, 0xDC, 0x82, 0xF1, 0x00, 0x00
	.global ov51_0211E38C
ov51_0211E38C:
	.byte 0x96, 0xBC, 0x91, 0x4F
	.byte 0x82, 0xC5, 0x82, 0xB3, 0x82, 0xAA, 0x82, 0xB7, 0x00, 0x00, 0x00, 0x00
	.global ov51_0211E39C
ov51_0211E39C:
	.byte 0x8E, 0xE8, 0x90, 0xE6
	.byte 0x82, 0xAA, 0x82, 0xAB, 0x82, 0xE6, 0x82, 0xA4, 0x00, 0x00, 0x00, 0x00
	.global ov51_0211E3AC
ov51_0211E3AC:
	.byte 0x83, 0x53, 0x81, 0x5B
	.byte 0x83, 0x8B, 0x83, 0x4C, 0x81, 0x5B, 0x83, 0x70, 0x81, 0x5B, 0x00, 0x00
	.global ov51_0211E3BC
ov51_0211E3BC:
	.byte 0x83, 0x66, 0x83, 0x42
	.byte 0x83, 0x74, 0x83, 0x46, 0x83, 0x93, 0x83, 0x5F, 0x81, 0x5B, 0x00, 0x00
	.global ov51_0211E3CC
ov51_0211E3CC:
	.byte 0x83, 0x7E, 0x83, 0x62
	.byte 0x83, 0x68, 0x83, 0x74, 0x83, 0x42, 0x83, 0x8B, 0x83, 0x5F, 0x81, 0x5B, 0x00, 0x00, 0x00, 0x00
	.global ov51_0211E3E0
ov51_0211E3E0:
	.byte 0x82, 0xB6, 0x82, 0xE5, 0x82, 0xA4, 0x82, 0xAF, 0x82, 0xF1, 0x82, 0xC5, 0x82, 0xB3, 0x82, 0xAA
	.byte 0x82, 0xB7, 0x00, 0x00
	.global ov51_0211E3F4
ov51_0211E3F4:
	.word ov51_0211E260
	.word ov51_0211E29C
	.word ov51_0211E290
	.word ov51_0211E248
	.word ov51_0211E23C
	.word ov51_0211E284
	.word ov51_0211E278
	.word ov51_0211E254
	.word ov51_0211E314
	.word ov51_0211E2A8
	.word ov51_0211E2B4
	.word ov51_0211E2C0
	.word ov51_0211E26C
	.word ov51_0211E2CC
	.word ov51_0211E2D8
	.word ov51_0211E2E4
	.word ov51_0211E32C
	.word ov51_0211E320
	.word ov51_0211E2FC
	.word ov51_0211E308
	.word ov51_0211E338
	.word ov51_0211E344
	.byte 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00
	.global ov51_0211E454
ov51_0211E454:
	.word FUN_ov51_0211e10c
	.word FUN_ov51_0211e0f8
	.word FUN_ov51_0211d384
	.word FUN_ov51_0211dc20
	.word FUN_ov51_0211dcf0
	.word _ZN12CommonScreen7vFUN_14Ev
	.word FUN_ov51_0211de34
	.word FUN_ov51_0211e078
	.word FUN_ov51_0211e07c
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
	.global ov51_0211E4C0
ov51_0211E4C0:
	.byte 0x2F, 0x64, 0x61, 0x74, 0x61, 0x5F, 0x69, 0x7A, 0x2F, 0x70, 0x69, 0x63, 0x33, 0x64, 0x2F, 0x73
	.byte 0x63, 0x6F, 0x75, 0x74, 0x2E, 0x53, 0x50, 0x4C, 0x00, 0x00, 0x00, 0x00
	.global ov51_0211E4DC
ov51_0211E4DC:
	.byte 0x2F, 0x64, 0x61, 0x74
	.byte 0x61, 0x5F, 0x69, 0x7A, 0x2F, 0x70, 0x69, 0x63, 0x32, 0x64, 0x2F, 0x6D, 0x65, 0x6E, 0x75, 0x2F
	.byte 0x73, 0x63, 0x64, 0x6E, 0x5F, 0x62, 0x67, 0x30, 0x30, 0x2E, 0x70, 0x61, 0x63, 0x5F, 0x00, 0x00
	.global ov51_0211E500
ov51_0211E500:
	.byte 0x2F, 0x64, 0x61, 0x74, 0x61, 0x5F, 0x69, 0x7A, 0x2F, 0x6C, 0x6F, 0x67, 0x69, 0x63, 0x2F, 0x63
	.byte 0x6C, 0x75, 0x62, 0x69, 0x6E, 0x66, 0x6F, 0x2E, 0x64, 0x61, 0x74, 0x00
	.global ov51_0211E51C
ov51_0211E51C:
	.byte 0x2F, 0x64, 0x61, 0x74
	.byte 0x61, 0x5F, 0x69, 0x7A, 0x2F, 0x70, 0x69, 0x63, 0x33, 0x64, 0x2F, 0x73, 0x63, 0x6F, 0x75, 0x74
	.byte 0x2E, 0x53, 0x50, 0x44, 0x00, 0x00, 0x00, 0x00
	.global ov51_0211E538
ov51_0211E538:
	.byte 0x25, 0x73, 0x2E, 0x70, 0x61, 0x63, 0x5F, 0x00
