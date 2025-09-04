
	.include "/macros/function.inc"
	.include "/include/overlay50.inc"

	.text
	arm_func_start FUN_ov50_02119f00
FUN_ov50_02119f00: ; 0x02119F00
	stmfd sp!, {r4, lr}
	mov r4, r0
	ldr r0, _02119F30 ; =0x0211E810
	add r1, r4, #0x18
	bl FUN_ov16_020f316c
	ldr r0, _02119F34 ; =0x0211E82C
	add r1, r4, #0x24
	bl FUN_ov16_020f316c
	ldr r0, _02119F38 ; =0x0211E844
	add r1, r4, #0x30
	bl FUN_ov16_020f316c
	ldmfd sp!, {r4, pc}
_02119F30: .word ov50_0211E810
_02119F34: .word ov50_0211E82C
_02119F38: .word ov50_0211E844
	arm_func_end FUN_ov50_02119f00

	arm_func_start FUN_ov50_02119f3c
FUN_ov50_02119f3c: ; 0x02119F3C
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, lr}
	mov r9, r0
	ldr r0, _02119FFC ; =0x0211E864
	add r1, r9, #0x358
	bl FUN_ov16_020f316c
	ldr r0, _0211A000 ; =0x0211E888
	add r1, r9, #0x364
	bl FUN_ov16_020f316c
	ldr r0, _0211A004 ; =0x0211E8A4
	add r1, r9, #0x370
	bl FUN_ov16_020f316c
	ldr r0, _0211A008 ; =0x0211E8C0
	add r1, r9, #0x37c
	bl FUN_ov16_020f316c
	ldr r0, _0211A00C ; =0x0211E8D8
	add r1, r9, #0x388
	bl FUN_ov16_020f316c
	ldr r0, _0211A010 ; =0x0211E8F0
	add r1, r9, #0x394
	bl FUN_ov16_020f316c
	mov r8, #0
	mov r0, r8
	ldr r7, _0211A014 ; =0x020A6C40
	mov r6, #0x800
	mov r1, r7
	mov r2, r6
	bl MIi_CpuClearFast
	mov r0, r8
	ldr r5, _0211A018 ; =0x020A7440
	mov r2, r6
	mov r1, r5
	bl MIi_CpuClearFast
	mov r0, r8
	ldr r4, _0211A01C ; =0x020A7C40
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
	str r8, [r9, #0x340]
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
_02119FFC: .word ov50_0211E864
_0211A000: .word ov50_0211E888
_0211A004: .word ov50_0211E8A4
_0211A008: .word ov50_0211E8C0
_0211A00C: .word ov50_0211E8D8
_0211A010: .word ov50_0211E8F0
_0211A014: .word unk_020A6C40
_0211A018: .word unk_020A7440
_0211A01C: .word unk_020A7C40
	arm_func_end FUN_ov50_02119f3c

	arm_func_start FUN_ov50_0211a020
FUN_ov50_0211a020: ; 0x0211A020
	stmfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, lr}
	sub sp, sp, #0x21c
	add r11, sp, #0x1c
	mov r10, r0
	ldr r1, _0211A0EC ; =0x0211E908
	mov r0, r11
	bl sprintf
	mov r9, #0
	mov r6, r9
	mov r5, #1
	add r8, sp, #0x11c
	ldr r7, _0211A0F0 ; =0x0211E744
	ldr r4, _0211A0F4 ; =0x02099F38
	b _0211A0BC
_0211A058:
	ldr r2, [r7, r9, lsl #2]
	ldr r1, _0211A0F8 ; =0x0211E924
	mov r0, r8
	bl sprintf
	ldr r1, [r10, #0x18]
	mov r0, r8
	add r2, sp, #0x18
	add r3, sp, #0x14
	bl FUN_ov16_020f3d08
	cmp r0, #0
	beq _0211A0B8
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
	str r0, [r1, #0x3c]
_0211A0B8:
	add r9, r9, #1
_0211A0BC:
	cmp r9, #0x16
	blt _0211A058
	mov r0, r10
	mov r1, #0
	bl FUN_ov50_0211a3c8
	mov r0, r10
	bl FUN_ov50_0211a0fc
	mov r0, r10
	mov r1, #2
	bl FUN_ov50_0211a3c8
	add sp, sp, #0x21c
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
_0211A0EC: .word ov50_0211E908
_0211A0F0: .word ov50_0211E744
_0211A0F4: .word unk_02099F38
_0211A0F8: .word ov50_0211E924
	arm_func_end FUN_ov50_0211a020

	arm_func_start FUN_ov50_0211a0fc
FUN_ov50_0211a0fc: ; 0x0211A0FC
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	mov r6, r0
	add r4, sp, #0
	ldr r2, [r6, #0x30]
	mov r1, r4
	str r2, [sp]
	bl FUN_ov50_0211a228
	ldr r7, _0211A210 ; =gL5Allocator
	str r0, [r6, #0x3a0]
	ldr r1, [r6, #0x3a4]
	mov r0, r7
	bl _ZN11L5Allocator10deallocateEPv
	ldr r1, [r6, #0x3a0]
	mov r5, #0
	mov r0, r7
	mov r1, r1, lsl #2
	str r5, [r6, #0x3a4]
	bl FUN_0202de44
	ldr r1, [r6, #0x3a0]
	str r0, [r6, #0x3a4]
	cmp r1, #0
	ble _0211A19C
_0211A154:
	mov r0, r6
	mov r1, r4
	bl FUN_ov50_0211a218
	ldr r2, [r6, #0x3a4]
	mov r1, r4
	strb r0, [r2, r5, lsl #2]
	mov r0, r6
	bl FUN_ov50_0211a218
	mov r0, r6
	mov r1, r4
	bl FUN_ov50_0211a228
	ldr r1, [r6, #0x3a4]
	add r1, r1, r5, lsl #2
	strh r0, [r1, #2]
	ldr r0, [r6, #0x3a0]
	add r5, r5, #1
	cmp r5, r0
	blt _0211A154
_0211A19C:
	ldr r0, [r6, #0xbc]
	mov r5, #0
	cmp r0, #0
	ldmlefd sp!, {r3, r4, r5, r6, r7, pc}
	ldr r7, _0211A214 ; =0x0209BA20
	mov r4, r5
_0211A1B4:
	add r0, r6, r5, lsl #3
	ldrh r0, [r0, #0xc0]
	mov r1, r4
	bl FUN_ov16_020efa9c
	movs r1, r0
	addne r0, r6, r5, lsl #3
	ldrneb r3, [r0, #0xc4]
	cmpne r3, #0
	ble _0211A1FC
	ldr r0, [r6, #0x3a0]
	cmp r0, r3
	blt _0211A1FC
	ldr r2, [r6, #0x3a4]
	mov r0, r7
	add r2, r2, r3, lsl #2
	ldrb r2, [r2, #-4]
	mov r3, r4
	bl FUN_0204ea4c
_0211A1FC:
	ldr r0, [r6, #0xbc]
	add r5, r5, #1
	cmp r5, r0
	blt _0211A1B4
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_0211A210: .word gL5Allocator
_0211A214: .word unk_0209BA20
	arm_func_end FUN_ov50_0211a0fc

	arm_func_start FUN_ov50_0211a218
FUN_ov50_0211a218: ; 0x0211A218
	ldr r2, [r1]
	ldrb r0, [r2], #1
	str r2, [r1]
	bx lr
	arm_func_end FUN_ov50_0211a218

	arm_func_start FUN_ov50_0211a228
FUN_ov50_0211a228: ; 0x0211A228
	ldr r2, [r1]
	ldrh r0, [r2], #2
	str r2, [r1]
	bx lr
	arm_func_end FUN_ov50_0211a228

	arm_func_start FUN_ov50_0211a238
FUN_ov50_0211a238: ; 0x0211A238
	stmfd sp!, {r4, r5, r6, r7, lr}
	sub sp, sp, #0x1c
	mov r6, r0
	ldr r0, [r6, #0x37c]
	cmp r0, #0
	ldrne r0, [r6, #0x388]
	cmpne r0, #0
	ldrne r0, [r6, #0x394]
	cmpne r0, #0
	addeq sp, sp, #0x1c
	ldmeqfd sp!, {r4, r5, r6, r7, pc}
	ldrh r0, [r6, #0xe8]
	mov r7, #0
	mov r1, r7
	bl FUN_ov16_020efa9c
	add r1, sp, #0x14
	str r1, [sp]
	mov r5, r0
	ldr r0, [r6, #0x37c]
	add r3, sp, #0x18
	mov r1, r5
	mov r2, r7
	bl FUN_ov16_020f366c
	cmp r0, #0
	beq _0211A2D0
	ldr r0, _0211A3B0 ; =0x02099F38
	ldr r4, [sp, #0x14]
	ldr r1, [sp, #0x18]
	ldr r0, [r0]
	mov r3, #1
	str r7, [sp]
	stmib sp, {r3, r7}
	str r1, [sp, #0xc]
	ldr r2, _0211A3B4 ; =0x0211E92C
	mov r1, #5
	str r4, [sp, #0x10]
	bl FUN_02058800
	str r0, [r6, #0x9c]
_0211A2D0:
	mov r4, #1
	ldr r0, _0211A3B8 ; =0x0209BA20
	mov r1, r4
	bl FUN_0207249c
	add r1, sp, #0x18
	str r1, [sp]
	add r0, sp, #0x14
	mov r7, #0
	str r0, [sp, #4]
	ldr r0, [r6, #0x388]
	mov r1, r5
	mov r3, r7
	rsb r2, r4, #0x194
	bl FUN_ov16_020f36f4
	cmp r0, #0
	beq _0211A344
	ldr r0, _0211A3B0 ; =0x02099F38
	ldr r5, [sp, #0x14]
	ldr r1, [sp, #0x18]
	ldr r0, [r0]
	ldr r2, _0211A3BC ; =0x0211E944
	str r7, [sp]
	stmib sp, {r4, r7}
	str r1, [sp, #0xc]
	mov r3, r4
	mov r1, #5
	str r5, [sp, #0x10]
	bl FUN_02058800
	str r0, [r6, #0xa0]
_0211A344:
	add r0, sp, #0x14
	mov r5, #0
	str r0, [sp]
	ldr r0, [r6, #0x394]
	ldr r1, _0211A3C0 ; =0x00000193
	add r3, sp, #0x18
	mov r2, r5
	bl FUN_ov16_020f3744
	cmp r0, #0
	addeq sp, sp, #0x1c
	ldmeqfd sp!, {r4, r5, r6, r7, pc}
	ldr r0, _0211A3B0 ; =0x02099F38
	ldr r4, [sp, #0x14]
	ldr r1, [sp, #0x18]
	ldr r0, [r0]
	ldr r2, _0211A3C4 ; =0x0211E95C
	str r5, [sp]
	str r5, [sp, #4]
	str r5, [sp, #8]
	str r1, [sp, #0xc]
	mov r1, #3
	mov r3, #1
	str r4, [sp, #0x10]
	bl FUN_02058800
	str r0, [r6, #0xa4]
	add sp, sp, #0x1c
	ldmfd sp!, {r4, r5, r6, r7, pc}
_0211A3B0: .word unk_02099F38
_0211A3B4: .word ov50_0211E92C
_0211A3B8: .word unk_0209BA20
_0211A3BC: .word ov50_0211E944
_0211A3C0: .word 0x00000193
_0211A3C4: .word ov50_0211E95C
	arm_func_end FUN_ov50_0211a238

	arm_func_start FUN_ov50_0211a3c8
FUN_ov50_0211a3c8: ; 0x0211A3C8
	stmfd sp!, {r4, r5, r6, r7, r8, r9, r10, lr}
	movs r4, r1
	bmi _0211A3DC
	cmp r4, #3
	blt _0211A430
_0211A3DC:
	mov r4, #0
	add r9, r0, #0x18
	mov r7, #1
	mov r6, r4
	mov r5, #0xc
_0211A3F0:
	mul r8, r4, r5
	add r10, r9, r8
	mov r0, r10
	mov r1, r7
	bl FUN_ov16_020f338c
	mov r0, r10
	bl FUN_ov16_020f33fc
	str r6, [r9, r8]
	str r6, [r10, #4]
	strb r6, [r10, #8]
	strb r6, [r10, #9]
	add r4, r4, #1
	strb r6, [r10, #0xa]
	cmp r4, #3
	blt _0211A3F0
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, pc}
_0211A430:
	mov r1, #0xc
	mul r5, r4, r1
	add r4, r0, #0x18
	add r6, r4, r5
	mov r0, r6
	mov r1, #1
	bl FUN_ov16_020f338c
	mov r0, r6
	bl FUN_ov16_020f33fc
	mov r0, #0
	str r0, [r4, r5]
	str r0, [r6, #4]
	strb r0, [r6, #8]
	strb r0, [r6, #9]
	strb r0, [r6, #0xa]
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, pc}
	arm_func_end FUN_ov50_0211a3c8

	arm_func_start FUN_ov50_0211a470
FUN_ov50_0211a470: ; 0x0211A470
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	mov r6, #0
	mov r7, r0
	mov r5, r6
	ldr r4, _0211A4B8 ; =0x02099F38
	b _0211A4AC
_0211A488:
	add r0, r7, r6, lsl #2
	ldr r1, [r0, #0x9c]
	cmp r1, #0
	beq _0211A4A8
	ldr r0, [r4]
	bl FUN_02058ee0
	add r0, r7, r6, lsl #2
	str r5, [r0, #0x9c]
_0211A4A8:
	add r6, r6, #1
_0211A4AC:
	cmp r6, #3
	blt _0211A488
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_0211A4B8: .word unk_02099F38
	arm_func_end FUN_ov50_0211a470

	arm_func_start FUN_ov50_0211a4bc
FUN_ov50_0211a4bc: ; 0x0211A4BC
	stmfd sp!, {r4, r5, r6, r7, r8, lr}
	mov r6, r0
	mvn r1, #0
	mov r4, #0
	bl FUN_ov50_0211a3c8
	add r0, r6, #0x358
	mov r1, #6
	bl FUN_ov16_020f338c
	mov r5, r4
	add r8, r6, #0x358
	mov r7, #0xc
	b _0211A4F8
_0211A4EC:
	mla r0, r5, r7, r8
	bl FUN_ov16_020f33fc
	add r5, r5, #1
_0211A4F8:
	cmp r5, #6
	blt _0211A4EC
	mov r5, #0
	add r8, r6, #0xf0
	mov r7, #0xc0
	b _0211A520
_0211A510:
	mla r1, r5, r7, r8
	mov r0, r6
	bl FUN_ov50_0211ab14
	add r5, r5, #1
_0211A520:
	cmp r5, #3
	blt _0211A510
	ldr r1, [r6, #0x3a4]
	ldr r0, _0211A5F8 ; =gL5Allocator
	bl _ZN11L5Allocator10deallocateEPv
	mov r5, #0
	str r5, [r6, #0x3a4]
	ldr r7, _0211A5FC ; =0x02099F38
	b _0211A560
_0211A544:
	add r0, r6, r5, lsl #2
	ldr r1, [r0, #0xa8]
	cmp r1, #0
	beq _0211A55C
	ldr r0, [r7]
	bl FUN_ov16_021128c4
_0211A55C:
	add r5, r5, #1
_0211A560:
	cmp r5, #1
	blt _0211A544
	mov r5, #0
	ldr r7, _0211A5FC ; =0x02099F38
	b _0211A598
_0211A574:
	add r0, r6, r5, lsl #2
	ldr r1, [r0, #0x3c]
	cmp r1, #0
	beq _0211A594
	ldr r0, [r7]
	bl FUN_02058ee0
	add r0, r6, r5, lsl #2
	str r4, [r0, #0x3c]
_0211A594:
	add r5, r5, #1
_0211A598:
	cmp r5, #0x16
	blt _0211A574
	mov r5, #0
	ldr r7, _0211A5FC ; =0x02099F38
	b _0211A5D0
_0211A5AC:
	add r0, r6, r5, lsl #2
	ldr r1, [r0, #0x94]
	cmp r1, #0
	beq _0211A5CC
	ldr r0, [r7]
	bl FUN_02058ee0
	add r0, r6, r5, lsl #2
	str r4, [r0, #0x94]
_0211A5CC:
	add r5, r5, #1
_0211A5D0:
	cmp r5, #2
	blt _0211A5AC
	mov r0, r6
	bl FUN_ov50_0211a470
	add r0, r6, #0xb4
	mvn r1, #0
	bl FUN_ov16_020f57b0
	add r0, r6, #0xb4
	bl FUN_ov16_020f52c4
	ldmfd sp!, {r4, r5, r6, r7, r8, pc}
_0211A5F8: .word gL5Allocator
_0211A5FC: .word unk_02099F38
	arm_func_end FUN_ov50_0211a4bc

	arm_func_start FUN_ov50_0211a600
FUN_ov50_0211a600: ; 0x0211A600
	stmfd sp!, {r4, r5, r6, r7, r8, lr}
	sub sp, sp, #0x10
	mov r5, r0
	ldr r0, [r5, #0xbc]
	mov r4, #0
	cmp r0, #0
	addle sp, sp, #0x10
	ldmlefd sp!, {r4, r5, r6, r7, r8, pc}
	ldr r6, _0211A684 ; =0x0211E974
	mov r7, #1
	mov r8, r4
_0211A62C:
	add r0, r5, r4, lsl #3
	ldrh r0, [r0, #0xc0]
	mov r1, r8
	bl FUN_ov16_020efa9c
	cmp r0, #0
	beq _0211A66C
	bl FUN_0206cc00
	str r8, [sp]
	str r8, [sp, #4]
	str r7, [sp, #8]
	str r7, [sp, #0xc]
	mov r2, r0
	ldr r0, [r5, #0x24]
	mov r1, r6
	add r3, r5, #0xb4
	bl FUN_ov16_020f55b4
_0211A66C:
	ldr r0, [r5, #0xbc]
	add r4, r4, #1
	cmp r4, r0
	blt _0211A62C
	add sp, sp, #0x10
	ldmfd sp!, {r4, r5, r6, r7, r8, pc}
_0211A684: .word ov50_0211E974
	arm_func_end FUN_ov50_0211a600

	arm_func_start FUN_ov50_0211a688
FUN_ov50_0211a688: ; 0x0211A688
	stmfd sp!, {r3, r4, r5, lr}
	mov r4, #0
	mov r5, r0
	mov r0, r1
	mov r1, r4
	bl FUN_ov16_020efa9c
	cmp r0, #0
	beq _0211A6B8
	bl FUN_0206cc00
	add r1, r5, #0xb4
	bl FUN_ov16_020f5738
	and r4, r0, #0xff
_0211A6B8:
	mov r0, r4
	ldmfd sp!, {r3, r4, r5, pc}
	arm_func_end FUN_ov50_0211a688

	arm_func_start FUN_ov50_0211a6c0
FUN_ov50_0211a6c0: ; 0x0211A6C0
	stmfd sp!, {r4, r5, r6, lr}
	mov r6, r0
	mov r5, #0
	ldr r4, _0211A70C ; =0x02099F38
	b _0211A6FC
_0211A6D4:
	add r0, r6, r5, lsl #2
	ldr r1, [r0, #0x3c]
	cmp r1, #0
	beq _0211A6F8
	ldr r0, [r4]
	bl FUN_02058e30
	cmp r0, #0
	movne r0, #0
	ldmnefd sp!, {r4, r5, r6, pc}
_0211A6F8:
	add r5, r5, #1
_0211A6FC:
	cmp r5, #0x16
	blt _0211A6D4
	mov r0, #1
	ldmfd sp!, {r4, r5, r6, pc}
_0211A70C: .word unk_02099F38
	arm_func_end FUN_ov50_0211a6c0

	arm_func_start FUN_ov50_0211a710
FUN_ov50_0211a710: ; 0x0211A710
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, lr}
	mov r4, #0
	mov r6, r0
	mov r7, r4
	ldr r5, _0211A860 ; =0x02099F38
	b _0211A750
_0211A728:
	add r0, r6, r7, lsl #2
	ldr r1, [r0, #0x9c]
	cmp r1, #0
	beq _0211A74C
	ldr r0, [r5]
	bl FUN_02058e30
	cmp r0, #0
	movne r0, #0
	ldmnefd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
_0211A74C:
	add r7, r7, #1
_0211A750:
	cmp r7, #3
	blt _0211A728
	ldr r5, [r6, #0x9c]
	cmp r5, #0
	beq _0211A79C
	ldr r7, _0211A860 ; =0x02099F38
	mov r1, r5
	ldr r0, [r7]
	bl FUN_02059004
	cmp r0, #0
	bne _0211A79C
	ldr r0, [r7]
	mov r1, r5
	bl FUN_ov16_021146a4
	mov r2, #0
	ldr r0, [r7]
	mov r1, r5
	mov r3, r2
	bl FUN_02059038
_0211A79C:
	ldr r5, [r6, #0xa0]
	cmp r5, #0
	beq _0211A858
	ldr r7, _0211A860 ; =0x02099F38
	mov r1, r5
	ldr r0, [r7]
	bl FUN_02059004
	cmp r0, #0
	bne _0211A858
	ldr r0, [r7]
	mov r1, r5
	bl FUN_ov16_021146a4
	ldrh r0, [r6, #0xe8]
	mov r1, r4
	bl FUN_ov16_020efa9c
	movs r9, r0
	ldrne r1, [r6, #0xa4]
	cmpne r1, #0
	beq _0211A840
	ldr r0, [r7]
	bl FUN_0205998c
	movs r8, r0
	beq _0211A840
	ldr r0, _0211A864 ; =0x02099F04
	ldr r1, [r8, #4]
	ldr r2, [r0]
	mov r0, r9
	bl FUN_ov16_020f0c30 ; may be ov17
	ldr r0, [r7]
	mov r1, r5
	mov r2, r4
	bl FUN_02059a78
	mov r6, r0
	mov r4, #0x20
	ldr r0, [r8, #4]
	mov r1, r6
	mov r2, r4
	bl MI_CpuCopy8
	mov r0, r6
	mov r1, r4
	bl DC_FlushRange
_0211A840:
	ldr r0, _0211A860 ; =0x02099F38
	mov r2, #0
	ldr r0, [r0]
	mov r1, r5
	mov r3, r2
	bl FUN_02059038
_0211A858:
	mov r0, #1
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
_0211A860: .word unk_02099F38
_0211A864: .word unk_02099F04
	arm_func_end FUN_ov50_0211a710

	arm_func_start FUN_ov50_0211a868
FUN_ov50_0211a868: ; 0x0211A868
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	mov r6, #0
	mov r7, r0
	mov r5, r6
	ldr r4, _0211A8C8 ; =0x02099F38
	b _0211A8BC
_0211A880:
	add r0, r7, r6, lsl #2
	ldr r1, [r0, #0x3c]
	cmp r1, #0
	beq _0211A8B8
	ldr r0, [r4]
	bl FUN_02059004
	cmp r0, #0
	bne _0211A8B8
	add r0, r7, r6, lsl #2
	ldr r1, [r0, #0x3c]
	ldr r0, [r4]
	mov r2, r5
	mov r3, r5
	bl FUN_02059038
_0211A8B8:
	add r6, r6, #1
_0211A8BC:
	cmp r6, #0x16
	blt _0211A880
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_0211A8C8: .word unk_02099F38
	arm_func_end FUN_ov50_0211a868

	arm_func_start FUN_ov50_0211a8cc
FUN_ov50_0211a8cc: ; 0x0211A8CC
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
	ldr r0, _0211A9D8 ; =0x020A6C40
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
	ldr r0, _0211A9DC ; =0x020A7440
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
	ldr r0, _0211A9E0 ; =0x020A7C40
	mov r1, r4
	mov r2, r7
	bl GX_LoadBG2Scr
	ldr r5, [r5, #0x358]
	cmp r5, #0
	beq _0211A9D0
	mov r6, #1
	mov r0, r5
	mov r1, r4
	mov r2, r6
	bl FUN_ov16_020f1138
	ldr r0, [r5, #0xc]
	ldr r1, [r5, #0x10]
	mov r3, r6
	add r0, r5, r0
	add r2, r4, #1
	bl FUN_ov16_020f1868
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
_0211A9D0:
	bl FUN_ov16_020f10ac
	ldmfd sp!, {r4, r5, r6, r7, r8, pc}
_0211A9D8: .word unk_020A6C40
_0211A9DC: .word unk_020A7440
_0211A9E0: .word unk_020A7C40
	arm_func_end FUN_ov50_0211a8cc

	arm_func_start FUN_ov50_0211a9e4
FUN_ov50_0211a9e4: ; 0x0211A9E4
	stmfd sp!, {r3, r4, r5, lr}
	ldr r2, _0211AAF8 ; =0x02099EB4
	mov r5, r0
	ldr r0, [r2]
	mov r4, r1
	mov r1, #3
	bl FUN_ov16_0210eb3c
	cmp r4, #3
	addls pc, pc, r4, lsl #2
	ldmfd sp!, {r3, r4, r5, pc}
_0211AA0C: ; jump table
	b _0211AA1C ; case 0
	b _0211AA68 ; case 1
	b _0211AA9C ; case 2
	b _0211AAD0 ; case 3
_0211AA1C:
	mov r0, r5
	bl FUN_ov50_0211a470
	mov r0, r5
	add r1, r5, #0x270
	bl FUN_ov50_0211ab14
	mov r0, r5
	add r1, r5, #0x1b0
	bl FUN_ov50_0211ab14
	mov r0, r5
	add r1, r5, #0xf0
	bl FUN_ov50_0211acc4
	ldr r0, [r5, #0x10]
	cmp r0, #5
	ldmeqfd sp!, {r3, r4, r5, pc}
	ldr r2, [r5, #0xbc]
	ldr r0, _0211AAFC ; =0x020A9C40
	mov r1, #0x65
	bl FUN_020460a8
	ldmfd sp!, {r3, r4, r5, pc}
_0211AA68:
	mov r0, r5
	bl FUN_ov50_0211a470
	mov r0, r5
	add r1, r5, #0x270
	bl FUN_ov50_0211ab14
	mov r0, r5
	add r1, r5, #0x1b0
	bl FUN_ov50_0211b288
	ldrh r2, [r5, #0xe8]
	ldr r0, _0211AAFC ; =0x020A9C40
	mov r1, #0x68
	bl FUN_020460a8
	ldmfd sp!, {r3, r4, r5, pc}
_0211AA9C:
	mov r0, r5
	bl FUN_ov50_0211a470
	mov r0, r5
	add r1, r5, #0x270
	bl FUN_ov50_0211ab14
	mov r0, r5
	add r1, r5, #0x1b0
	bl FUN_ov50_0211b288
	ldr r0, _0211AAFC ; =0x020A9C40
	mov r1, #0x6b
	mov r2, #0
	bl FUN_020460a8
	ldmfd sp!, {r3, r4, r5, pc}
_0211AAD0:
	mov r2, #0
	mov r0, r5
	add r1, r5, #0x270
	str r2, [r5, #0x340]
	bl FUN_ov50_0211b994
	ldrh r2, [r5, #0xe8]
	ldr r0, _0211AAFC ; =0x020A9C40
	mov r1, #0x6e
	bl FUN_020460a8
	ldmfd sp!, {r3, r4, r5, pc}
_0211AAF8: .word unk_02099EB4
_0211AAFC: .word unk_020A9C40
	arm_func_end FUN_ov50_0211a9e4

	arm_func_start FUN_ov50_0211ab00
FUN_ov50_0211ab00: ; 0x0211AB00
	ldr r0, [r0, #0x338]
	cmp r0, #0
	movge r0, #1
	movlt r0, #0
	bx lr
	arm_func_end FUN_ov50_0211ab00

	arm_func_start FUN_ov50_0211ab14
FUN_ov50_0211ab14: ; 0x0211AB14
	stmfd sp!, {r4, r5, r6, lr}
	mov r6, r1
	mov r5, #0
	ldr r4, _0211AB78 ; =0x02099F38
	b _0211AB44
_0211AB28:
	add r0, r6, r5, lsl #2
	ldr r1, [r0, #0x20]
	cmp r1, #0
	ble _0211AB40
	ldr r0, [r4]
	bl FUN_ov16_021128c4
_0211AB40:
	add r5, r5, #1
_0211AB44:
	cmp r5, #0x10
	blt _0211AB28
	ldr r1, [r6, #0x60]
	cmp r1, #0
	ble _0211AB64
	ldr r0, _0211AB78 ; =0x02099F38
	ldr r0, [r0]
	bl FUN_02058ee0
_0211AB64:
	mov r0, r6
	mov r1, #0
	mov r2, #0xc0
	bl MI_CpuFill8
	ldmfd sp!, {r4, r5, r6, pc}
_0211AB78: .word unk_02099F38
	arm_func_end FUN_ov50_0211ab14

	arm_func_start FUN_ov50_0211ab7c
FUN_ov50_0211ab7c: ; 0x0211AB7C
	cmp r1, #3
	addls pc, pc, r1, lsl #2
	bx lr
_0211AB88: ; jump table
	b _0211AB98 ; case 0
	b _0211ABA0 ; case 1
	b _0211ABA0 ; case 2
	b _0211ABA8 ; case 3
_0211AB98:
	mov r0, #0
	bx lr
_0211ABA0:
	mov r0, #1
	bx lr
_0211ABA8:
	mov r0, #2
	bx lr
	arm_func_end FUN_ov50_0211ab7c

	arm_func_start FUN_ov50_0211abb0
FUN_ov50_0211abb0: ; 0x0211ABB0
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, lr}
	mov r5, r0
	ldr r1, [r5, #0x14]
	bl FUN_ov50_0211ab7c
	movs r4, r0
	ldmmifd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
	add r1, r5, #0xf0
	mov r0, #0xc0
	mla r10, r4, r0, r1
	mov r8, #0
	ldr r7, _0211AC6C ; =0x00007FFF
	ldr r6, _0211AC70 ; =0x02099F38
	b _0211AC04
_0211ABE4:
	add r0, r10, r8, lsl #2
	ldr r1, [r0, #0x20]
	cmp r1, #0
	ble _0211AC00
	ldr r0, [r6]
	mov r2, r7
	bl FUN_ov16_02114204
_0211AC00:
	add r8, r8, #1
_0211AC04:
	cmp r8, #0x10
	blt _0211ABE4
	sub r9, r4, #1
	add r7, r5, #0xf0
	ldr r6, _0211AC74 ; =0x00004210
	mov r11, #0
	ldr r5, _0211AC70 ; =0x02099F38
	mov r4, #0xc0
	b _0211AC60
_0211AC28:
	mla r10, r9, r4, r7
	mov r8, r11
	b _0211AC54
_0211AC34:
	add r0, r10, r8, lsl #2
	ldr r1, [r0, #0x20]
	cmp r1, #0
	ble _0211AC50
	ldr r0, [r5]
	mov r2, r6
	bl FUN_ov16_02114204
_0211AC50:
	add r8, r8, #1
_0211AC54:
	cmp r8, #0x10
	blt _0211AC34
	sub r9, r9, #1
_0211AC60:
	cmp r9, #0
	bge _0211AC28
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_0211AC6C: .word 0x00007FFF
_0211AC70: .word unk_02099F38
_0211AC74: .word 0x00004210
	arm_func_end FUN_ov50_0211abb0

	arm_func_start FUN_ov50_0211ac78
FUN_ov50_0211ac78: ; 0x0211AC78
	stmfd sp!, {r3, r4, r5, r6, lr}
	sub sp, sp, #4
	ldrsh r0, [sp, #0x18]
	ldr r4, _0211ACC0 ; =0x02099F38
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
_0211ACC0: .word unk_02099F38
	arm_func_end FUN_ov50_0211ac78

	arm_func_start FUN_ov50_0211acc4
FUN_ov50_0211acc4: ; 0x0211ACC4
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, lr}
	sub sp, sp, #0x10
	mov r5, #0
	mov r9, r1
	str r5, [sp, #0xc]
	ldr r2, [r9]
	mov r10, r0
	str r2, [sp, #8]
	bl FUN_ov50_0211ab14
	ldr r0, [r10, #0x14]
	mov r2, #4
	str r0, [r9, #0x1c]
	ldr r0, [r10, #0xbc]
	mov r4, #0x28
	add r0, r0, #2
	str r0, [r9, #4]
	ldr r1, [r10, #0xbc]
	mov r0, r10
	add r6, r1, #2
	mov r1, r9
	mov r3, r2
	str r6, [r9, #8]
	str r5, [r9, #0xa8]
	str r5, [r9, #0xac]
	str r4, [r9, #0xb0]
	bl FUN_ov50_0211c598
	ldr r0, [r10, #0xbc]
	add r2, sp, #0xc
	add r0, r0, #5
	str r0, [sp]
	mov r0, r10
	mov r1, r9
	mov r3, r5
	bl FUN_ov50_0211c0cc
	ldr r2, [r9, #0xb0]
	mov r6, r0
	ldr r4, _0211B278 ; =0x02099F38
	mov r2, r2, lsl #0x10
	ldr r0, [r4]
	mov r1, r6
	mov r2, r2, lsr #0x10
	bl FUN_ov16_02112b98
	ldr r0, [r4]
	mov r1, r6
	mov r2, #8
	mov r3, r5
	bl FUN_ov16_02114248
	ldr r3, [r10, #0x64]
	mov r7, #1
	ldr r0, [r4]
	mov r1, r6
	mov r2, r7
	and r3, r3, #0xff
	bl FUN_ov16_021137dc
	str r5, [sp]
	ldr r0, [r4]
	mov r1, r6
	mov r2, r7
	mov r3, r7
	bl FUN_ov16_0211401c
	add r7, r7, #1
	mov r8, #0x10
	mov r11, r5
	b _0211AE20
_0211ADC4:
	ldr r3, [r10, #0x64]
	ldr r0, [r4]
	mov r1, r6
	mov r2, r7
	and r3, r3, #0xff
	bl FUN_ov16_021137dc
	str r11, [sp]
	ldr r0, [r4]
	mov r1, r6
	mov r2, r7
	mov r3, #2
	bl FUN_ov16_0211401c
	str r8, [sp]
	ldr r0, [r4]
	mov r1, r6
	mov r2, r7
	mov r3, r11
	bl FUN_ov16_02113b78
	add r0, r8, #0x10
	mov r0, r0, lsl #0x10
	add r7, r7, #1
	mov r8, r0, asr #0x10
	add r5, r5, #1
_0211AE20:
	ldr r0, [r10, #0xbc]
	cmp r5, r0
	blt _0211ADC4
	ldr r4, _0211B278 ; =0x02099F38
	ldr r3, [r10, #0x78]
	ldr r0, [r4]
	mov r1, r6
	mov r2, r7
	and r3, r3, #0xff
	bl FUN_ov16_021137dc
	mov r11, #0
	str r11, [sp]
	mov r5, #1
	ldr r0, [r4]
	mov r1, r6
	mov r2, r7
	mov r3, r5
	bl FUN_ov16_0211401c
	str r8, [sp]
	ldr r0, [r4]
	mov r1, r6
	mov r2, r7
	mov r3, r11
	bl FUN_ov16_02113b78
	add r0, r8, #0x10
	mov r0, r0, lsl #0x10
	mov r8, r0, asr #0x10
	ldr r0, [r4]
	mov r1, r6
	add r2, r7, #1
	ldr r3, [r10, #0x78]
	and r3, r3, #0xff
	bl FUN_ov16_021137dc
	mov r3, r5
	str r11, [sp]
	ldr r0, [r4]
	mov r1, r6
	add r2, r7, #1
	bl FUN_ov16_0211401c
	str r8, [sp]
	ldr r0, [r4]
	mov r1, r6
	add r2, r7, #1
	mov r3, r11
	bl FUN_ov16_02113b78
	add r0, r8, #0x10
	mov r0, r0, lsl #0x10
	mov r8, r0, asr #0x10
	ldr r0, [r4]
	mov r1, r6
	add r2, r7, #2
	ldr r3, [r10, #0x64]
	and r3, r3, #0xff
	bl FUN_ov16_021137dc
	str r11, [sp]
	ldr r0, [r4]
	mov r1, r6
	add r2, r7, #2
	mov r5, #3
	mov r3, r5
	bl FUN_ov16_0211401c
	str r8, [sp]
	ldr r0, [r4]
	mov r1, r6
	add r2, r7, #2
	mov r3, r11
	bl FUN_ov16_02113b78
	ldr r0, [r4]
	mov r1, r6
	add r2, r7, #3
	ldr r3, [r10, #0x94]
	and r3, r3, #0xff
	bl FUN_ov16_021137dc
	mov r0, #4
	str r0, [sp]
	ldr r0, [r4]
	mov r1, r6
	add r2, r7, #3
	mov r8, #8
	mov r3, r8
	bl FUN_ov16_02113b78
	str r11, [sp]
	ldr r0, [r4]
	mov r1, r6
	mov r3, r11
	add r2, r7, #3
	bl FUN_ov16_02113d88
	str r8, [sp]
	ldr r0, [r4]
	mov r1, r6
	add r2, r7, #3
	mov r3, #0x20
	bl FUN_ov16_02113d08
	mov r0, r10
	mov r1, r9
	add r2, sp, #0xc
	mov r3, r11
	str r5, [sp]
	bl FUN_ov50_0211c0cc
	movs r6, r0
	addeq sp, sp, #0x10
	ldmeqfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
	ldr r0, [r4]
	ldr r2, _0211B27C ; =0x0000024E
	mov r1, r6
	mov r5, r11
	bl FUN_ov16_02112b98
	ldr r0, [r4]
	mov r1, r6
	mov r2, r11
	mov r3, r11
	bl FUN_ov16_02114248
	mov r8, #2
	ldr r11, _0211B278 ; =0x02099F38
	mov r7, #0xc0
	b _0211B024
_0211AFF0:
	ldr r3, [r10, #0x58]
	ldr r0, [r4]
	mov r1, r6
	mov r2, r8
	and r3, r3, #0xff
	bl FUN_ov16_021137dc
	str r7, [sp]
	ldr r0, [r4]
	mov r1, r6
	mov r2, r8
	mov r3, r5
	bl FUN_ov16_02113b78
	add r8, r8, #1
_0211B024:
	cmp r8, #3
	ble _0211AFF0
	ldr r3, [r10, #0x8c]
	mov r4, #1
	ldr r0, [r11]
	mov r1, r6
	mov r2, r4
	and r3, r3, #0xff
	bl FUN_ov16_021137dc
	str r5, [sp]
	ldr r0, [r11]
	mov r1, r6
	mov r2, r4
	mov r3, #0xb8
	bl FUN_ov16_02113b78
	str r5, [sp]
	ldr r0, [r11]
	mov r2, r4
	mov r3, r5
	mov r1, r6
	bl FUN_ov16_0211401c
	bl FUN_ov16_020f081c
	mov r1, r0
	ldr r0, _0211B280 ; =0x0209BA20
	bl FUN_020724c8
	mov r7, r0
	cmp r7, #0x63
	movgt r7, #0x63
	cmp r7, #0xa
	mov r5, #1
	mov r4, #0
	blt _0211B0D8
	ldr r1, _0211B284 ; =0x66666667
	mov r3, #0x18
	smull r0, r2, r1, r7
	mov r0, r7, lsr #0x1f
	add r2, r0, r2, asr #2
	mov r0, r10
	mov r1, r6
	str r3, [sp]
	and r8, r2, #0xff
	mov r2, #2
	mov r3, #0xe8
	str r8, [sp, #4]
	bl FUN_ov50_0211ac78
_0211B0D8:
	ldr r2, _0211B284 ; =0x66666667
	mov r0, r7, lsr #0x1f
	smull r1, r3, r2, r7
	add r3, r0, r3, asr #2
	mov r2, #0xa
	smull r0, r1, r2, r3
	sub r3, r7, r0
	mov r2, #0x18
	mov r1, r6
	str r2, [sp]
	and r6, r3, #0xff
	mov r0, r10
	mov r2, #3
	mov r3, #0xf0
	str r6, [sp, #4]
	bl FUN_ov50_0211ac78
	add r2, sp, #0xc
	mov r0, r10
	mov r1, r9
	mov r3, r4
	str r5, [sp]
	bl FUN_ov50_0211c0cc
	movs r6, r0
	addeq sp, sp, #0x10
	ldmeqfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
	ldr r8, _0211B278 ; =0x02099F38
	mov r1, r6
	ldr r0, [r8]
	mov r2, r5
	mov r3, #0x244
	bl FUN_ov16_021139bc
	ldr r1, [r10, #0x90]
	ldr r0, [r8]
	and r3, r1, #0xff
	mov r1, r6
	mov r2, r5
	bl FUN_ov16_021137dc
	cmp r7, #0x3c
	blt _0211B18C
	str r4, [sp]
	ldr r0, [r8]
	mov r1, r6
	mov r2, r5
	mov r3, #0xb8
	b _0211B1A4
_0211B18C:
	mov r0, #0xc0
	str r0, [sp]
	ldr r0, [r8]
	mov r1, r6
	mov r2, r5
	mov r3, #0x100
_0211B1A4:
	bl FUN_ov16_02113b78
	mov r5, #0
	ldr r0, _0211B278 ; =0x02099F38
	str r5, [sp]
	ldr r0, [r0]
	mov r1, r6
	mov r3, r5
	mov r2, #1
	add r11, sp, #0xc
	bl FUN_ov16_0211401c
	mov r8, #8
	mov r7, #0x70
	mov r6, #0x10
	mov r4, #0xa
	b _0211B218
_0211B1E0:
	add r1, r9, r5, lsl #3
	mov r0, r5, lsl #4
	strh r8, [r1, #0x6e]
	add r0, r0, #0x10
	strh r0, [r1, #0x70]
	strh r7, [r1, #0x72]
	strh r6, [r1, #0x74]
	mov r0, r10
	mov r1, r9
	mov r2, r11
	mov r3, r5
	str r4, [sp]
	bl FUN_ov50_0211c150
	add r5, r5, #1
_0211B218:
	ldr r0, [r9, #8]
	cmp r5, r0
	blt _0211B1E0
	add r2, sp, #0xc
	mov r0, r10
	mov r1, r9
	mov r3, #3
	bl FUN_ov50_0211c3d0
	ldr r0, [r10, #0x338]
	cmp r0, #0
	strge r0, [r9, #0xc]
	ldrge r0, [r10, #0x334]
	strge r0, [sp, #8]
	ldr r1, [sp, #8]
	mov r0, r9
	bl FUN_ov16_020f52f4
	mov r0, r10
	mov r1, r9
	mov r2, #0
	bl FUN_ov50_0211b510
	mov r0, r10
	bl FUN_ov50_0211b554
	add sp, sp, #0x10
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_0211B278: .word unk_02099F38
_0211B27C: .word 0x0000024E
_0211B280: .word unk_0209BA20
_0211B284: .word 0x66666667
	arm_func_end FUN_ov50_0211acc4

	arm_func_start FUN_ov50_0211b288
FUN_ov50_0211b288: ; 0x0211B288
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, lr}
	sub sp, sp, #8
	mov r4, #0
	mov r9, r0
	mov r8, r1
	str r4, [sp, #4]
	ldr r11, [r8]
	bl FUN_ov50_0211ab14
	ldr r1, [r9, #0x14]
	mov r0, #0x1e
	str r1, [r8, #0x1c]
	str r4, [r8, #0xa8]
	str r4, [r8, #0xac]
	str r0, [r8, #0xb0]
	ldr r0, [r9, #0x14]
	cmp r0, #1
	beq _0211B2DC
	cmp r0, #2
	beq _0211B2F8
	add sp, sp, #8
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_0211B2DC:
	mov r0, #2
	str r0, [r8, #4]
	str r0, [r8, #8]
	mov r4, #0x68
	mov r5, #0x20
	mov r6, #0x49
	b _0211B310
_0211B2F8:
	mov r0, #3
	str r0, [r8, #4]
	str r0, [r8, #8]
	mov r4, #0x38
	mov r5, #0x30
	mov r6, #0x79
_0211B310:
	mov r10, #0
	add r2, r5, #0x10
	mov r1, #0x10
	b _0211B33C
_0211B320:
	add r3, r8, r10, lsl #3
	add r0, r2, r10, lsl #4
	strh r4, [r3, #0x6e]
	strh r0, [r3, #0x70]
	strh r6, [r3, #0x72]
	strh r1, [r3, #0x74]
	add r10, r10, #1
_0211B33C:
	ldr r0, [r8, #8]
	cmp r10, r0
	blt _0211B320
	mov r0, r9
	mov r1, r8
	mov r2, #4
	mov r3, #3
	bl FUN_ov50_0211c598
	mov r3, #2
	str r3, [sp]
	add r2, sp, #4
	mov r0, r9
	mov r1, r8
	mov r3, #0
	bl FUN_ov50_0211c0cc
	ldr r2, [r8, #0xb0]
	mov r6, r0
	ldr r10, _0211B50C ; =0x02099F38
	mov r2, r2, lsl #0x10
	ldr r0, [r10]
	mov r1, r6
	mov r2, r2, lsr #0x10
	bl FUN_ov16_02112b98
	ldr r0, [r10]
	mov r2, r4
	mov r3, r5
	mov r1, r6
	bl FUN_ov16_02114248
	ldr r0, [r9, #0x14]
	cmp r0, #1
	beq _0211B3C4
	cmp r0, #2
	beq _0211B3E4
	b _0211B400
_0211B3C4:
	ldr r2, [r9, #0x68]
	ldr r0, [r10]
	and r3, r2, #0xff
	mov r1, r6
	mov r2, #1
	bl FUN_ov16_021137dc
	mov r7, #2
	b _0211B400
_0211B3E4:
	ldr r3, [r9, #0x6c]
	mov r7, #1
	ldr r0, [r10]
	mov r1, r6
	mov r2, r7
	and r3, r3, #0xff
	bl FUN_ov16_021137dc
_0211B400:
	mov r10, #0
	ldr r4, _0211B50C ; =0x02099F38
	str r10, [sp]
	ldr r0, [r4]
	mov r1, r6
	mov r3, r10
	mov r2, #1
	bl FUN_ov16_0211401c
	ldr r1, [r9, #0x94]
	mov r5, #2
	and r3, r1, #0xff
	ldr r0, [r4]
	mov r1, r6
	mov r2, r5
	bl FUN_ov16_021137dc
	mov r0, #4
	str r0, [sp]
	ldr r0, [r4]
	mov r1, r6
	mov r2, r5
	mov r3, #8
	bl FUN_ov16_02113b78
	ldr r0, [r9, #0xf0]
	mov r1, r6
	add r0, r0, #1
	add r0, r0, r0, lsl #3
	mov r0, r0, lsl #0x10
	mov r0, r0, asr #0x10
	str r0, [sp]
	ldr r0, [r4]
	mov r2, r5
	mov r3, r10
	bl FUN_ov16_02113d88
	mov r0, #8
	str r0, [sp]
	ldr r0, [r4]
	mov r1, r6
	mov r2, r5
	mov r3, #0x40
	bl FUN_ov16_02113d08
	mov r5, #0xa
	add r4, sp, #4
	b _0211B4C8
_0211B4AC:
	mov r0, r9
	mov r1, r8
	mov r2, r4
	mov r3, r10
	str r5, [sp]
	bl FUN_ov50_0211c150
	add r10, r10, #1
_0211B4C8:
	ldr r0, [r8, #8]
	cmp r10, r0
	blt _0211B4AC
	add r2, sp, #4
	mov r0, r9
	mov r1, r8
	mov r3, r7
	bl FUN_ov50_0211c3d0
	mov r0, r8
	mov r1, r11
	bl FUN_ov16_020f52f4
	mov r0, r9
	mov r1, r8
	mov r2, #0
	bl FUN_ov50_0211b510
	add sp, sp, #8
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_0211B50C: .word unk_02099F38
	arm_func_end FUN_ov50_0211b288

	arm_func_start FUN_ov50_0211b510
FUN_ov50_0211b510: ; 0x0211B510
	stmfd sp!, {r4, r5, r6, lr}
	mov r6, r0
	mov r5, r1
	mov r4, r2
	bl FUN_ov50_0211c7f4
	mov r0, r6
	mov r1, r5
	bl FUN_ov50_0211c730
	mov r0, r6
	mov r1, r5
	mov r2, r4
	bl FUN_ov50_0211d030
	mov r0, r6
	mov r1, r5
	mov r2, r4
	bl FUN_ov50_0211d204
	ldmfd sp!, {r4, r5, r6, pc}
	arm_func_end FUN_ov50_0211b510

	arm_func_start FUN_ov50_0211b554
FUN_ov50_0211b554: ; 0x0211B554
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	mov r7, r0
	ldr r1, [r7, #0xf0]
	ldr r0, [r7, #0xbc]
	cmp r1, r0
	bge _0211B624
	add r0, r7, r1, lsl #3
	ldrh r0, [r0, #0xc0]
	mov r6, #0
	mov r1, r6
	bl FUN_ov16_020efa9c
	ldr r1, [r7, #0xf0]
	mov r5, r0
	add r0, r7, r1, lsl #3
	ldrb r0, [r0, #0xc4]
	ldr r1, [r7, #0x3a4]
	ldr r4, _0211B66C ; =0x0209BA20
	sub r0, r0, #1
	ldrb r2, [r1, r0, lsl #2]
	mov r0, r4
	mov r1, r5
	mov r3, r6
	bl FUN_0204ea4c
	cmp r5, #0
	ldmeqfd sp!, {r3, r4, r5, r6, r7, pc}
	ldr r1, [r7, #0xf0]
	mov r0, r4
	add r1, r7, r1, lsl #3
	ldrh r1, [r1, #0xc0]
	bl FUN_0204eb2c
	add r1, r7, #0x300
	sub r4, r6, #1
	mov r3, #2
	mov r2, #1
	mov r0, r5
	strh r6, [r1, #0x48]
	strh r6, [r1, #0x4a]
	strh r6, [r1, #0x4c]
	strh r4, [r1, #0x4e]
	strb r6, [r7, #0x351]
	str r6, [r7, #0x354]
	str r3, [r7, #0x344]
	strb r2, [r7, #0x350]
	bl FUN_0206cbf8
	add r1, r7, #0x300
	strh r0, [r1, #0x48]
	ldr r0, [r7, #4]
	add r1, r7, #0x344
	ldr r2, [r0]
	ldr r2, [r2, #0x3c]
	blx r2
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_0211B624:
	mov r4, #0
	add r1, r7, #0x300
	sub r3, r4, #1
	mov r2, #1
	ldr r0, [r7, #4]
	strh r4, [r1, #0x4a]
	strh r4, [r1, #0x4c]
	strh r3, [r1, #0x4e]
	strb r4, [r7, #0x351]
	str r4, [r7, #0x354]
	str r4, [r7, #0x344]
	strb r2, [r7, #0x350]
	strh r4, [r1, #0x48]
	ldr r2, [r0]
	add r1, r7, #0x344
	ldr r2, [r2, #0x3c]
	blx r2
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_0211B66C: .word unk_0209BA20
	arm_func_end FUN_ov50_0211b554

	arm_func_start FUN_ov50_0211b670
FUN_ov50_0211b670: ; 0x0211B670
	stmfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, lr}
	sub sp, sp, #0x1c
	mov r10, r0
	ldr r0, _0211B96C ; =0x0209BA20
	mov r6, r1
	mov r4, r2
	bl FUN_ov16_020edfc0
	ldr r1, _0211B970 ; =0x4F8B588F
	ldr r2, _0211B974 ; =0x000186A0
	umull r1, r3, r0, r1
	sub r1, r0, r3
	add r3, r3, r1, lsr #1
	mov r3, r3, lsr #0x10
	ands r1, r3, #0xff
	mul r2, r1, r2
	str r1, [sp, #0x18]
	ldr r1, _0211B978 ; =0xD1B71759
	sub r3, r0, r2
	umull r0, r2, r3, r1
	mov r2, r2, lsr #0xd
	and r0, r2, #0xff
	ldr r1, _0211B97C ; =0x00002710
	str r0, [sp, #0x14]
	mul r1, r0, r1
	ldr r0, _0211B980 ; =0x10624DD3
	sub r2, r3, r1
	umull r0, r1, r2, r0
	mov r1, r1, lsr #6
	and r0, r1, #0xff
	str r0, [sp, #0x10]
	mov r1, #0x3e8
	mov r0, r0
	mul r1, r0, r1
	ldr r0, _0211B984 ; =0x51EB851F
	sub r2, r2, r1
	umull r0, r1, r2, r0
	mov r1, r1, lsr #5
	and r0, r1, #0xff
	str r0, [sp, #0xc]
	mov r7, #1
	mov r1, #0x64
	mov r0, r0
	smulbb r0, r0, r1
	sub r3, r2, r0
	ldr r0, _0211B988 ; =0xCCCCCCCD
	mov r1, #0xa
	umull r0, r2, r3, r0
	mov r2, r2, lsr #3
	and r11, r2, #0xff
	smulbb r0, r11, r1
	sub r0, r3, r0
	and r0, r0, #0xff
	str r0, [sp, #8]
	movne r7, #6
	bne _0211B784
	ldr r0, [sp, #0x14]
	cmp r0, #0
	movne r7, #5
	bne _0211B784
	ldr r0, [sp, #0x10]
	cmp r0, #0
	movne r7, #4
	bne _0211B784
	ldr r0, [sp, #0xc]
	cmp r0, #0
	movne r7, #3
	bne _0211B784
	cmp r11, #0
	movne r7, #2
_0211B784:
	ldr r8, [r10, #0x340]
	cmp r8, #0
	bne _0211B844
	mov r5, #0
	mov r8, #7
	mov r0, r10
	mov r1, r6
	mov r2, r4
	mov r3, r5
	str r8, [sp]
	bl FUN_ov50_0211c0cc
	mov r8, r0
	ldr r6, _0211B98C ; =0x02099F38
	str r8, [r10, #0x340]
	ldr r0, [r6]
	ldr r2, _0211B990 ; =0x0000023A
	mov r1, r8
	bl FUN_ov16_02112b98
	ldr r3, [r10, #0x84]
	mov r4, #1
	ldr r0, [r6]
	mov r1, r8
	mov r2, r4
	and r3, r3, #0xff
	bl FUN_ov16_021137dc
	str r5, [sp]
	ldr r0, [r6]
	mov r1, r8
	mov r2, r4
	mov r3, #0xb8
	bl FUN_ov16_02113b78
	str r5, [sp]
	ldr r0, [r6]
	mov r2, r4
	mov r3, r5
	mov r1, r8
	bl FUN_ov16_0211401c
	mov r4, #2
	b _0211B83C
_0211B820:
	ldr r2, [r10, #0x58]
	ldr r0, [r6]
	mov r1, r8
	and r3, r2, #0xff
	mov r2, r4
	bl FUN_ov16_021137dc
	add r4, r4, #1
_0211B83C:
	cmp r4, #7
	ble _0211B820
_0211B844:
	mov r9, #2
	mov r6, #0xc0
	mov r5, #0
	ldr r4, _0211B98C ; =0x02099F38
	b _0211B874
_0211B858:
	str r6, [sp]
	ldr r0, [r4]
	mov r1, r8
	mov r2, r9
	mov r3, r5
	bl FUN_ov16_02113b78
	add r9, r9, #1
_0211B874:
	cmp r9, #7
	ble _0211B858
	cmp r7, #6
	mov r4, #0x18
	blo _0211B8AC
	mov r0, r4
	str r0, [sp]
	ldr r5, [sp, #0x18]
	mov r0, r10
	mov r1, r8
	mov r2, #2
	mov r3, #0xc0
	str r5, [sp, #4]
	bl FUN_ov50_0211ac78
_0211B8AC:
	cmp r7, #5
	blo _0211B8D4
	str r4, [sp]
	ldr r5, [sp, #0x14]
	mov r0, r10
	mov r1, r8
	mov r2, #3
	mov r3, #0xc8
	str r5, [sp, #4]
	bl FUN_ov50_0211ac78
_0211B8D4:
	cmp r7, #4
	blo _0211B8FC
	str r4, [sp]
	ldr r5, [sp, #0x10]
	mov r0, r10
	mov r1, r8
	mov r2, #4
	mov r3, #0xd0
	str r5, [sp, #4]
	bl FUN_ov50_0211ac78
_0211B8FC:
	cmp r7, #3
	blo _0211B924
	str r4, [sp]
	ldr r5, [sp, #0xc]
	mov r0, r10
	mov r1, r8
	mov r2, #5
	mov r3, #0xd8
	str r5, [sp, #4]
	bl FUN_ov50_0211ac78
_0211B924:
	cmp r7, #2
	blo _0211B944
	mov r0, r10
	mov r1, r8
	mov r2, #6
	mov r3, #0xe0
	stmia sp, {r4, r11}
	bl FUN_ov50_0211ac78
_0211B944:
	str r4, [sp]
	ldr r4, [sp, #8]
	mov r0, r10
	mov r1, r8
	mov r2, #7
	mov r3, #0xe8
	str r4, [sp, #4]
	bl FUN_ov50_0211ac78
	add sp, sp, #0x1c
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
_0211B96C: .word unk_0209BA20
_0211B970: .word 0x4F8B588F
_0211B974: .word 0x000186A0
_0211B978: .word 0xD1B71759
_0211B97C: .word 0x00002710
_0211B980: .word 0x10624DD3
_0211B984: .word 0x51EB851F
_0211B988: .word 0xCCCCCCCD
_0211B98C: .word unk_02099F38
_0211B990: .word 0x0000023A
	arm_func_end FUN_ov50_0211b670

	arm_func_start FUN_ov50_0211b994
FUN_ov50_0211b994: ; 0x0211B994
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, lr}
	sub sp, sp, #8
	mov r5, r0
	mov r4, r1
	bl FUN_ov50_0211ab14
	ldr r3, [r5, #0x14]
	mov r7, #1
	mov r10, #0
	mov r11, #4
	mov r9, #0x14
	str r3, [r4, #0x1c]
	mov r0, r5
	mov r1, r4
	mov r2, r11
	mov r3, r11
	str r7, [r4, #4]
	str r7, [r4, #8]
	str r10, [r4, #0xa8]
	str r10, [r4, #0xac]
	str r9, [r4, #0xb0]
	str r10, [sp, #4]
	bl FUN_ov50_0211c598
	mov r0, r5
	mov r1, r4
	bl FUN_ov50_0211c91c
	mov r0, #0xa
	str r0, [sp]
	mov r0, r5
	mov r1, r4
	add r2, sp, #4
	mov r3, r10
	bl FUN_ov50_0211c0cc
	movs r8, r0
	beq _0211BDF8
	ldr r0, [r4, #0xb0]
	ldr r6, _0211C0C4 ; =0x02099F38
	mov r2, r0, lsl #0x10
	ldr r0, [r6]
	mov r1, r8
	mov r2, r2, lsr #0x10
	bl FUN_ov16_02112b98
	ldr r0, [r6]
	mov r1, r8
	mov r2, r10
	mov r3, r10
	bl FUN_ov16_02114248
	ldr r3, [r5, #0x70]
	ldr r0, [r6]
	mov r1, r8
	mov r2, r7
	and r3, r3, #0xff
	bl FUN_ov16_021137dc
	str r10, [sp]
	ldr r0, [r6]
	mov r2, r7
	mov r1, r8
	mov r3, r10
	bl FUN_ov16_0211401c
	ldr r3, [r5, #0x94]
	mov r7, #2
	ldr r0, [r6]
	mov r1, r8
	mov r2, r7
	and r3, r3, #0xff
	bl FUN_ov16_021137dc
	str r11, [sp]
	ldr r0, [r6]
	mov r1, r8
	mov r2, r7
	mov r3, #8
	bl FUN_ov16_02113b78
	str r10, [sp]
	ldr r0, [r6]
	mov r1, r8
	mov r2, r7
	mov r3, r10
	bl FUN_ov16_02113d88
	mov r0, #8
	str r0, [sp]
	ldr r0, [r6]
	mov r2, r7
	mov r1, r8
	mov r3, #0x40
	bl FUN_ov16_02113d08
	ldr r3, [r4, #0x60]
	ldr r0, [r6]
	mov r1, r8
	mov r2, #3
	and r3, r3, #0xff
	bl FUN_ov16_021137dc
	str r10, [sp]
	ldr r0, [r6]
	mov r1, r8
	mov r2, #3
	mov r3, r10
	bl FUN_ov16_02113d88
	mov r7, #0xd
	str r7, [sp]
	ldr r0, [r6]
	mov r1, r8
	mov r2, #3
	mov r3, #0x80
	bl FUN_ov16_02113d08
	str r9, [sp]
	mov r9, #0x54
	ldr r0, [r6]
	mov r1, r8
	mov r2, #3
	mov r3, r9
	bl FUN_ov16_02113b78
	ldr r3, [r4, #0x60]
	ldr r0, [r6]
	mov r1, r8
	mov r2, r11
	and r3, r3, #0xff
	bl FUN_ov16_021137dc
	str r7, [sp]
	ldr r0, [r6]
	mov r1, r8
	mov r2, r11
	mov r3, r10
	bl FUN_ov16_02113d88
	str r7, [sp]
	ldr r0, [r6]
	mov r1, r8
	mov r2, r11
	mov r3, #0x80
	bl FUN_ov16_02113d08
	mov r0, #0x1f
	str r0, [sp]
	ldr r0, [r6]
	mov r2, r11
	mov r1, r8
	mov r3, r9
	bl FUN_ov16_02113b78
	ldr r3, [r4, #0x60]
	mov r11, #5
	ldr r0, [r6]
	mov r1, r8
	mov r2, r11
	and r3, r3, #0xff
	bl FUN_ov16_021137dc
	mov r0, #0x1a
	str r0, [sp]
	ldr r0, [r6]
	mov r1, r8
	mov r2, r11
	mov r3, r10
	bl FUN_ov16_02113d88
	str r7, [sp]
	ldr r0, [r6]
	mov r1, r8
	mov r2, r11
	mov r3, #0x80
	bl FUN_ov16_02113d08
	mov r0, #0x31
	str r0, [sp]
	ldr r0, [r6]
	mov r2, r11
	mov r1, r8
	mov r3, r9
	bl FUN_ov16_02113b78
	ldr r3, [r4, #0x60]
	mov r11, #6
	ldr r0, [r6]
	mov r1, r8
	mov r2, r11
	and r3, r3, #0xff
	bl FUN_ov16_021137dc
	mov r0, #0x27
	str r0, [sp]
	ldr r0, [r6]
	mov r1, r8
	mov r2, r11
	mov r3, r10
	bl FUN_ov16_02113d88
	str r7, [sp]
	ldr r0, [r6]
	mov r1, r8
	mov r2, r11
	mov r3, #0x80
	bl FUN_ov16_02113d08
	mov r0, #0x3f
	str r0, [sp]
	ldr r0, [r6]
	mov r2, r11
	mov r1, r8
	mov r3, r9
	bl FUN_ov16_02113b78
	ldr r3, [r4, #0x60]
	mov r11, #7
	ldr r0, [r6]
	mov r1, r8
	mov r2, r11
	and r3, r3, #0xff
	bl FUN_ov16_021137dc
	mov r0, #0x34
	str r0, [sp]
	ldr r0, [r6]
	mov r1, r8
	mov r2, r11
	mov r3, r10
	bl FUN_ov16_02113d88
	str r7, [sp]
	ldr r0, [r6]
	mov r1, r8
	mov r2, r11
	mov r3, #0x80
	bl FUN_ov16_02113d08
	mov r0, #0x50
	str r0, [sp]
	ldr r0, [r6]
	mov r2, r11
	mov r1, r8
	mov r3, r9
	bl FUN_ov16_02113b78
	ldr r3, [r4, #0x60]
	ldr r0, [r6]
	mov r1, r8
	mov r2, #8
	and r3, r3, #0xff
	bl FUN_ov16_021137dc
	mov r0, #0x41
	str r0, [sp]
	ldr r0, [r6]
	mov r1, r8
	mov r2, #8
	mov r3, r10
	bl FUN_ov16_02113d88
	str r7, [sp]
	ldr r0, [r6]
	mov r3, #0x80
	mov r1, r8
	mov r2, #8
	bl FUN_ov16_02113d08
	mov r0, #0x5c
	str r0, [sp]
	ldr r0, [r6]
	mov r2, #8
	mov r3, r9
	mov r1, r8
	bl FUN_ov16_02113b78
	ldr r3, [r5, #0x9c]
	mov r9, #9
	ldr r0, [r6]
	mov r1, r8
	mov r2, r9
	and r3, r3, #0xff
	bl FUN_ov16_021137dc
	mov r7, #0x18
	str r7, [sp]
	mov r11, #0x10
	ldr r0, [r6]
	mov r1, r8
	mov r2, r9
	mov r3, r11
	bl FUN_ov16_02113b78
	str r10, [sp]
	ldr r0, [r6]
	mov r2, r9
	mov r1, r8
	mov r3, r10
	bl FUN_ov16_0211401c
	ldr r3, [r5, #0xa0]
	ldr r0, [r6]
	mov r1, r8
	mov r2, #0xa
	and r3, r3, #0xff
	bl FUN_ov16_021137dc
	str r7, [sp]
	ldr r0, [r6]
	mov r3, r11
	mov r1, r8
	mov r2, #0xa
	bl FUN_ov16_02113b78
	str r10, [sp]
	ldr r0, [r6]
	mov r1, r8
	mov r2, #0xa
	mov r3, r10
	bl FUN_ov16_0211401c
_0211BDF8:
	add r6, sp, #4
	mov r0, r5
	mov r1, r4
	mov r2, r6
	bl FUN_ov50_0211b670
	mov r7, #0
	mov r8, #1
	mov r0, r5
	mov r1, r4
	mov r2, r6
	mov r3, r7
	str r8, [sp]
	bl FUN_ov50_0211c0cc
	movs r6, r0
	beq _0211BEB8
	ldr r0, [r4, #0xb0]
	ldr r9, _0211C0C4 ; =0x02099F38
	sub r0, r0, #1
	mov r2, r0, lsl #0x10
	ldr r0, [r9]
	mov r1, r6
	mov r2, r2, lsr #0x10
	bl FUN_ov16_02112b98
	ldr r3, [r5, #0x3c]
	ldr r0, [r9]
	mov r1, r6
	mov r2, r8
	and r3, r3, #0xff
	bl FUN_ov16_021137dc
	mov r0, #0x68
	str r0, [sp]
	ldr r0, [r9]
	mov r1, r6
	mov r2, r8
	mov r3, #0x10
	bl FUN_ov16_02113b78
	str r7, [sp]
	ldr r0, [r9]
	mov r1, r6
	mov r2, r8
	mov r3, r7
	bl FUN_ov16_0211401c
	ldr r0, [r9]
	mov r1, r6
	mov r2, #2
	mov r3, r8
	bl FUN_ov16_021142fc
	str r6, [r5, #0xac]
_0211BEB8:
	add r2, sp, #4
	mov r0, r5
	mov r1, r4
	mov r3, r7
	str r8, [sp]
	bl FUN_ov50_0211c0cc
	movs r6, r0
	beq _0211BF5C
	ldr r0, [r4, #0xb0]
	ldr r9, _0211C0C4 ; =0x02099F38
	sub r0, r0, #1
	mov r2, r0, lsl #0x10
	ldr r0, [r9]
	mov r1, r6
	mov r2, r2, lsr #0x10
	bl FUN_ov16_02112b98
	ldr r3, [r5, #0x40]
	ldr r0, [r9]
	mov r1, r6
	mov r2, r8
	and r3, r3, #0xff
	bl FUN_ov16_021137dc
	mov r0, #0x68
	str r0, [sp]
	ldr r0, [r9]
	mov r1, r6
	mov r2, r8
	mov r3, #0x70
	bl FUN_ov16_02113b78
	str r7, [sp]
	ldr r0, [r9]
	mov r1, r6
	mov r2, r8
	mov r3, r7
	bl FUN_ov16_0211401c
	ldr r0, [r9]
	mov r1, r6
	mov r2, #2
	mov r3, r8
	bl FUN_ov16_021142fc
	str r6, [r5, #0xb0]
_0211BF5C:
	mov r0, r5
	mov r1, r8
	mov r2, r7
	bl FUN_ov50_0211d25c
	ldr r0, [r4, #8]
	mov r1, #0xc0
	sub r0, r0, #1
	add r0, r4, r0, lsl #3
	strh r7, [r0, #0x6e]
	ldr r0, [r4, #8]
	add r2, sp, #4
	sub r0, r0, #1
	add r0, r4, r0, lsl #3
	strh r1, [r0, #0x70]
	ldr r1, [r4, #8]
	mov r0, r5
	sub r1, r1, #1
	add r1, r4, r1, lsl #3
	strh r7, [r1, #0x72]
	ldr r3, [r4, #8]
	mov r1, r4
	sub r3, r3, #1
	add r4, r4, r3, lsl #3
	strh r7, [r4, #0x74]
	mov r4, #0xa
	mov r3, r7
	str r4, [sp]
	bl FUN_ov50_0211c150
	str r4, [sp]
	ldr r0, _0211C0C8 ; =0x02099EB4
	ldr r3, [r5, #0xb0]
	ldr r0, [r0]
	mov r1, #3
	mov r2, #0xd
	bl FUN_ov16_0210fbe8
	movs r4, r0
	beq _0211C040
	mov r1, r7
	mov r2, r8
	mov r3, r7
	add r0, r4, #0x3a
	bl FUN_ov16_0210e6fc
	mov r1, r7
	mov r2, r7
	mov r3, r7
	add r0, r4, #0x3a
	bl FUN_ov16_0210e720
	mov r1, r7
	mov r2, r8
	add r0, r4, #0x3e
	mov r3, r7
	bl FUN_ov16_0210e6fc
	add r0, r4, #0x3e
	mov r1, r7
	mov r2, r8
	mov r3, r7
	bl FUN_ov16_0210e720
_0211C040:
	mov r0, #0xa
	str r0, [sp]
	ldr r0, _0211C0C8 ; =0x02099EB4
	ldr r3, [r5, #0xac]
	ldr r0, [r0]
	mov r1, #3
	mov r2, #0xc
	bl FUN_ov16_0210fbe8
	movs r4, r0
	addeq sp, sp, #8
	ldmeqfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
	mov r1, r7
	mov r2, r8
	mov r3, r7
	add r0, r4, #0x3a
	bl FUN_ov16_0210e6fc
	mov r1, r7
	mov r2, r7
	mov r3, r7
	add r0, r4, #0x3a
	bl FUN_ov16_0210e720
	mov r1, r7
	mov r2, r8
	mov r3, r7
	add r0, r4, #0x3e
	bl FUN_ov16_0210e6fc
	add r0, r4, #0x3e
	mov r2, r8
	mov r1, r7
	mov r3, r7
	bl FUN_ov16_0210e720
	add sp, sp, #8
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_0211C0C4: .word unk_02099F38
_0211C0C8: .word unk_02099EB4
	arm_func_end FUN_ov50_0211b994

	arm_func_start FUN_ov50_0211c0cc
FUN_ov50_0211c0cc: ; 0x0211C0CC
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
	ldr r0, _0211C14C ; =0x02099F38
	ldr r1, [sp, #0x10]
	ldr r0, [r0]
	mov r2, #1
	bl FUN_ov16_02112724
	add r2, r6, r4, lsl #1
	ldrb r1, [r2, #0x66]
	cmp r1, #0
	ldreq r1, [r5]
	streqb r1, [r2, #0x65]
	ldr r1, [r5]
	add r2, r6, #0x66
	add r1, r6, r1, lsl #2
	str r0, [r1, #0x20]
	ldrb r1, [r2, r4, lsl #1]
	add r1, r1, #1
	strb r1, [r2, r4, lsl #1]
	ldr r1, [r5]
	add r1, r1, #1
	str r1, [r5]
	ldmfd sp!, {r4, r5, r6, pc}
_0211C14C: .word unk_02099F38
	arm_func_end FUN_ov50_0211c0cc

	arm_func_start FUN_ov50_0211c150
FUN_ov50_0211c150: ; 0x0211C150
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, lr}
	sub sp, sp, #0x10
	mov r10, r0
	mov r9, r1
	mov r4, r2
	mov r8, r3
	bl FUN_ov50_0211c71c
	mov r11, #3
	cmp r0, #0
	mov r7, #0x1b
	mov r0, r10
	mov r1, r9
	mov r2, r4
	mov r3, #1
	str r11, [sp]
	moveq r7, #9
	bl FUN_ov50_0211c0cc
	ldr r1, [r9, #0xb0]
	mov r5, r0
	sub r0, r1, #2
	mov r1, r0, lsl #0x10
	ldr r4, _0211C3C4 ; =0x02099F38
	mov r2, r1, lsr #0x10
	ldr r0, [r4]
	mov r1, r5
	mov r3, #1
	bl FUN_ov16_02112c90
	add r3, r9, r8, lsl #3
	ldrsh r2, [r3, #0x6e]
	ldrsh r3, [r3, #0x70]
	ldr r0, [r4]
	mov r1, r5
	bl FUN_ov16_02114248
	ldr r3, [r10, #0x54]
	ldr r0, [r4]
	mov r1, r5
	mov r2, #1
	and r3, r3, #0xff
	bl FUN_ov16_021137dc
	mov r6, #0
	str r6, [sp]
	ldr r0, [r4]
	mov r1, r5
	mov r2, #1
	mov r3, #8
	bl FUN_ov16_02113b78
	ldr r0, [r10, #0x14]
	cmp r0, #0
	beq _0211C228
	cmp r0, #1
	beq _0211C230
	cmp r0, #2
	moveq r6, #1
	b _0211C234
_0211C228:
	mov r6, r11
	b _0211C234
_0211C230:
	mov r6, #2
_0211C234:
	mov r11, #0
	ldr r4, _0211C3C4 ; =0x02099F38
	str r11, [sp]
	ldr r0, [r4]
	mov r1, r5
	mov r2, #1
	mov r3, r6
	bl FUN_ov16_0211401c
	mov r6, #2
	ldr r0, [r4]
	mov r1, r5
	mov r2, #1
	mov r3, r6
	bl FUN_ov16_02113f7c
	ldr r3, [r9, #0x60]
	ldr r0, [r4]
	mov r1, r5
	mov r2, r6
	and r3, r3, #0xff
	bl FUN_ov16_021137dc
	mov r0, #0xd
	mul r0, r8, r0
	mov r0, r0, lsl #0x10
	mov r0, r0, asr #0x10
	str r0, [sp]
	ldr r0, [r4]
	mov r1, r5
	mov r2, r6
	mov r3, r11
	bl FUN_ov16_02113d88
	mov r0, #0xc
	str r0, [sp]
	ldr r0, [r4]
	mov r1, r5
	mov r2, r6
	mov r3, #0x80
	bl FUN_ov16_02113d08
	mov r0, r7, lsl #0x10
	str r6, [sp]
	mov r3, r0, asr #0x10
	ldr r0, [r4]
	mov r2, r6
	mov r1, r5
	bl FUN_ov16_02113b78
	mov r0, #1
	rsb r2, r0, #0x8000
	ldr r0, [r4]
	mov r1, r5
	bl FUN_ov16_02112e5c
	add r1, r10, r8, lsl #3
	ldrh r1, [r1, #0xc0]
	mov r0, r10
	bl FUN_ov50_0211a688
	mov r3, r0
	mov r6, #3
	ldr r0, [r4]
	mov r1, r5
	mov r2, r6
	bl FUN_ov16_021137dc
	sub r0, r6, #0xb
	str r0, [sp]
	ldr r0, [r4]
	mov r1, r5
	mov r2, r6
	mov r3, r11
	bl FUN_ov16_02113b78
	ldr r3, [r9, #0xb0]
	ldr r0, [r4]
	sub r3, r3, #2
	mov r3, r3, lsl #0x10
	mov r1, r5
	mov r2, r6
	mov r3, r3, lsr #0x10
	bl FUN_ov16_021139bc
	add r0, r8, #1
	mov r0, r0, lsl #0x10
	mov r2, r0, lsr #0x10
	add r3, r9, r8, lsl #3
	mov r1, r6
	ldrsh r6, [r3, #0x70]
	ldr r4, [sp, #0x38]
	ldr r0, _0211C3C8 ; =0x02099EB4
	str r6, [sp]
	ldrsh r6, [r3, #0x72]
	str r6, [sp, #4]
	ldrsh r6, [r3, #0x74]
	str r6, [sp, #8]
	str r4, [sp, #0xc]
	ldrsh r3, [r3, #0x6e]
	ldr r0, [r0]
	bl FUN_ov16_0210fba4
	strh r5, [r0, #0x34]
	strb r11, [r0, #0x38]
	str r11, [r0, #0x1c]
	str r11, [r0, #0x20]
	ldr r1, _0211C3CC ; =FUN_ov16_0210fb1c
	str r11, [r0, #0x24]
	str r1, [r0, #0x28]
	add sp, sp, #0x10
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_0211C3C4: .word unk_02099F38
_0211C3C8: .word unk_02099EB4
_0211C3CC: .word FUN_ov16_0210fb1c
	arm_func_end FUN_ov50_0211c150

	arm_func_start FUN_ov50_0211c3d0
FUN_ov50_0211c3d0: ; 0x0211C3D0
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, lr}
	sub sp, sp, #4
	mov r6, #2
	mov r4, #3
	mov r7, r3
	mov r8, r1
	mov r3, r4
	str r6, [sp]
	mov r9, r0
	bl FUN_ov50_0211c0cc
	ldr r1, [r8, #0xb0]
	mov r5, r0
	ldr r10, _0211C4EC ; =0x02099F38
	sub r0, r1, #4
	mov r1, r0, lsl #0x10
	ldr r0, [r10]
	mov r2, r1, lsr #0x10
	sub r3, r4, #4
	mov r1, r5
	bl FUN_ov16_02112c90
	ldr r0, [r10]
	mov r1, r5
	mov r4, #1
	mov r2, r4
	ldr r3, [r9, #0x4c]
	and r3, r3, #0xff
	bl FUN_ov16_021137dc
	mov r3, r7
	mov r7, #0
	str r7, [sp]
	ldr r0, [r10]
	mov r1, r5
	mov r2, r4
	bl FUN_ov16_0211401c
	mov r2, r4
	ldr r0, [r8, #0xac]
	mov r1, r5
	mov r0, r0, lsl #0x10
	mov r0, r0, asr #0x10
	str r0, [sp]
	ldr r0, [r10]
	ldr r3, [r8, #0xa8]
	mov r3, r3, lsl #0x10
	mov r3, r3, asr #0x10
	bl FUN_ov16_02113b78
	ldr r1, [r9, #0x50]
	ldr r0, [r10]
	and r3, r1, #0xff
	mov r1, r5
	mov r2, r6
	bl FUN_ov16_021137dc
	str r7, [sp]
	mov r3, r7
	ldr r0, [r10]
	mov r1, r5
	mov r2, r6
	bl FUN_ov16_0211401c
	mov r1, r5
	mov r2, r6
	ldr r0, [r8, #0xac]
	mov r0, r0, lsl #0x10
	mov r0, r0, asr #0x10
	str r0, [sp]
	ldr r0, [r10]
	ldr r3, [r8, #0xa8]
	sub r3, r3, #8
	mov r3, r3, lsl #0x10
	mov r3, r3, asr #0x10
	bl FUN_ov16_02113b78
	add sp, sp, #4
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, pc}
_0211C4EC: .word unk_02099F38
	arm_func_end FUN_ov50_0211c3d0

	arm_func_start FUN_ov50_0211c4f0
FUN_ov50_0211c4f0: ; 0x0211C4F0
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
	ldr r0, _0211C534 ; =0x02099EB4
	add r1, r3, #1
	mov r1, r1, lsl #0x10
	ldr r0, [r0]
	mov r1, r1, lsr #0x10
	bl FUN_ov16_0210efac
	ldmfd sp!, {r3, pc}
_0211C534: .word unk_02099EB4
	arm_func_end FUN_ov50_0211c4f0

	arm_func_start FUN_ov50_0211c538
FUN_ov50_0211c538: ; 0x0211C538
	mov r2, #0xa
	str r2, [r0, #0x10]
	str r1, [r0, #8]
	bx lr
	arm_func_end FUN_ov50_0211c538

	arm_func_start FUN_ov50_0211c548
FUN_ov50_0211c548: ; 0x0211C548
	stmfd sp!, {r3, r4, r5, lr}
	mov r4, r1
	mov r5, r0
	cmp r4, #3
	addls pc, pc, r4, lsl #2
	b _0211C584
_0211C560: ; jump table
	b _0211C570 ; case 0
	b _0211C574 ; case 1
	b _0211C574 ; case 2
	b _0211C574 ; case 3
_0211C570:
	b _0211C574
_0211C574:
	ldr r0, _0211C594 ; =0x02099EB4
	mov r1, #0xa
	ldr r0, [r0]
	bl FUN_ov16_0210ee78
_0211C584:
	mov r0, #6
	str r4, [r5, #0x14]
	str r0, [r5, #0x10]
	ldmfd sp!, {r3, r4, r5, pc}
_0211C594: .word unk_02099EB4
	arm_func_end FUN_ov50_0211c548

	arm_func_start FUN_ov50_0211c598
FUN_ov50_0211c598: ; 0x0211C598
	stmfd sp!, {r3, r4, r5, r6, lr}
	sub sp, sp, #0x14
	mov r5, #0
	mov r6, r1
	str r5, [sp, #0x10]
	ldr r0, [r6, #0x60]
	cmp r0, #0
	addne sp, sp, #0x14
	ldmnefd sp!, {r3, r4, r5, r6, pc}
	ldr r4, _0211C628 ; =0x02099F38
	mov r1, r2
	ldr r0, [r4]
	mov r2, r3
	bl FUN_02059630
	mov r1, r0
	str r1, [r6, #0x60]
	ldr r0, [r4]
	mov r2, r5
	mov r3, r5
	bl FUN_02059038
	ldr r1, [r6, #0x60]
	ldr r0, [r4]
	str r5, [sp, #0xc]
	add r2, sp, #0xc
	add r3, sp, #0x10
	bl FUN_0205935c
	ldr r1, [r6, #0x60]
	ldr r0, [r4]
	ldr r2, [sp, #0xc]
	ldr r3, [sp, #0x10]
	str r5, [sp]
	str r5, [sp, #4]
	str r5, [sp, #8]
	bl FUN_02059288
	add sp, sp, #0x14
	ldmfd sp!, {r3, r4, r5, r6, pc}
_0211C628: .word unk_02099F38
	arm_func_end FUN_ov50_0211c598

	arm_func_start FUN_ov50_0211c62c
FUN_ov50_0211c62c: ; 0x0211C62C
	stmfd sp!, {r4, r5, r6, r7, r8, r9, lr}
	sub sp, sp, #0x1c
	add r1, sp, #0
	mov r5, #0
	mov r8, r0
	str r5, [r1]
	str r5, [r1, #4]
	str r5, [r1, #8]
	str r5, [r1, #0xc]
	str r5, [r1, #0x10]
	str r5, [r1, #0x14]
	str r5, [r1, #0x18]
	ldr r0, [r8, #0x94]
	cmp r0, #0
	bne _0211C694
	ldr r4, _0211C714 ; =0x02099F38
	mov r1, #4
	ldr r0, [r4]
	mov r2, #3
	bl FUN_02059630
	mov r1, r0
	str r1, [r8, #0x94]
	ldr r0, [r4]
	mov r2, r5
	mov r3, r5
	bl FUN_02059038
_0211C694:
	ldr r9, _0211C718 ; =0x0211E548
	mov r6, #0
	ldr r0, [r9, #0x2c]
	add r5, sp, #0
	add r7, r6, #1
	str r0, [r5, r6, lsl #2]
	mov r4, r6
	b _0211C6E0
_0211C6B4:
	add r0, r8, r6, lsl #3
	ldrh r0, [r0, #0xc0]
	mov r1, r4
	bl FUN_ov16_020efa9c
	cmp r0, #0
	ldreq r1, [r9, #0x34]
	addne r0, r0, #0x1c
	streq r1, [r5, r7, lsl #2]
	strne r0, [r5, r7, lsl #2]
	add r7, r7, #1
	add r6, r6, #1
_0211C6E0:
	ldr r0, [r8, #0xbc]
	cmp r6, r0
	blt _0211C6B4
	ldr r0, _0211C718 ; =0x0211E548
	add r2, sp, #0
	ldr r1, [r0, #0x30]
	mov r0, r8
	str r1, [r2, r7, lsl #2]
	ldr r1, [r8, #0x94]
	mov r3, #7
	bl FUN_ov50_0211cea0
	add sp, sp, #0x1c
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, pc}
_0211C714: .word unk_02099F38
_0211C718: .word ov50_0211E548
	arm_func_end FUN_ov50_0211c62c

	arm_func_start FUN_ov50_0211c71c
FUN_ov50_0211c71c: ; 0x0211C71C
	ldr r0, [r1, #0x1c]
	cmp r0, #0
	moveq r0, #1
	movne r0, #0
	bx lr
	arm_func_end FUN_ov50_0211c71c

	arm_func_start FUN_ov50_0211c730
FUN_ov50_0211c730: ; 0x0211C730
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, lr}
	mov r10, r0
	mov r9, r1
	mov r6, #0
	mov r11, #1
	mov r5, #3
	ldr r4, _0211C7F0 ; =0x02099F38
	b _0211C7E0
_0211C750:
	ldrb r2, [r9, #0x67]
	mov r0, r10
	mov r1, r9
	add r2, r2, r6
	add r2, r9, r2, lsl #2
	mov r8, #0
	ldr r7, [r2, #0x20]
	bl FUN_ov50_0211c71c
	cmp r0, #0
	ldrne r0, [r10, #0xbc]
	mov r1, r7
	cmpne r6, r0
	movlt r8, #1
	str r8, [sp]
	ldr r0, [r4]
	mov r2, r5
	mov r3, #2
	bl FUN_ov16_02113ec0
	cmp r8, #0
	beq _0211C7DC
	add r0, r10, r6, lsl #3
	ldrh r1, [r0, #0xc0]
	mov r0, r10
	bl FUN_ov50_0211a688
	mov r3, r0
	ldr r0, [r4]
	mov r1, r7
	mov r2, r5
	bl FUN_ov16_021137dc
	str r11, [sp]
	ldr r0, [r4]
	mov r1, r7
	mov r2, r5
	mov r3, #0
	bl FUN_ov16_0211401c
_0211C7DC:
	add r6, r6, #1
_0211C7E0:
	ldr r0, [r9, #8]
	cmp r6, r0
	blt _0211C750
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_0211C7F0: .word unk_02099F38
	arm_func_end FUN_ov50_0211c730

	arm_func_start FUN_ov50_0211c7f4
FUN_ov50_0211c7f4: ; 0x0211C7F4
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, lr}
	sub sp, sp, #0x1c
	mov r2, #4
	add r5, sp, #0
	mov r7, #0
	mov r9, r0
	mov r3, r2
	str r7, [r5]
	str r7, [r5, #4]
	str r7, [r5, #8]
	str r7, [r5, #0xc]
	str r7, [r5, #0x10]
	str r7, [r5, #0x14]
	str r7, [r5, #0x18]
	mov r8, r1
	bl FUN_ov50_0211c598
	ldr r0, [r9, #0x14]
	cmp r0, #0
	beq _0211C854
	cmp r0, #1
	beq _0211C8C0
	cmp r0, #2
	beq _0211C8DC
	b _0211C8F4
_0211C854:
	ldr r0, [r9, #0xbc]
	mov r6, r7
	cmp r0, #0
	ble _0211C8A0
	ldr r10, _0211C910 ; =0x0211E548
	mov r4, r7
_0211C86C:
	add r0, r9, r6, lsl #3
	ldrh r0, [r0, #0xc0]
	mov r1, r4
	bl FUN_ov16_020efa9c
	cmp r0, #0
	ldreq r0, [r10, #4]
	add r6, r6, #1
	addne r0, r0, #0x1c
	str r0, [r5, r7, lsl #2]
	ldr r0, [r9, #0xbc]
	add r7, r7, #1
	cmp r6, r0
	blt _0211C86C
_0211C8A0:
	ldr r0, _0211C910 ; =0x0211E548
	add r2, sp, #0
	ldr r3, [r0, #0x1c]
	add r1, r7, #1
	str r3, [r2, r7, lsl #2]
	ldr r0, [r0, #0x20]
	str r0, [r2, r1, lsl #2]
	b _0211C8F4
_0211C8C0:
	ldr r1, _0211C914 ; =0x0211E56C
_0211C8C4:
	ldr r0, [r1, r7, lsl #2]
	str r0, [r5, r7, lsl #2]
	add r7, r7, #1
	cmp r7, #2
	blt _0211C8C4
	b _0211C8F4
_0211C8DC:
	ldr r1, _0211C918 ; =0x0211E580
_0211C8E0:
	ldr r0, [r1, r7, lsl #2]
	str r0, [r5, r7, lsl #2]
	add r7, r7, #1
	cmp r7, #3
	blt _0211C8E0
_0211C8F4:
	ldr r1, [r8, #0x60]
	add r2, sp, #0
	mov r0, r9
	mov r3, #7
	bl FUN_ov50_0211cdb4
	add sp, sp, #0x1c
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, pc}
_0211C910: .word ov50_0211E548
_0211C914: .word ov50_0211E56C
_0211C918: .word ov50_0211E580
	arm_func_end FUN_ov50_0211c7f4

	arm_func_start FUN_ov50_0211c91c
FUN_ov50_0211c91c: ; 0x0211C91C
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, lr}
	sub sp, sp, #0x248
	mov r7, r0
	add r2, sp, #0x1c8
	mov r10, r1
	mov r0, #0x20
	mov r6, #0
_0211C938:
	strb r6, [r2]
	strb r6, [r2, #1]
	strb r6, [r2, #2]
	strb r6, [r2, #3]
	add r2, r2, #4
	subs r0, r0, #1
	bne _0211C938
	add r1, sp, #0x148
	mov r0, #0x20
_0211C95C:
	strb r6, [r1]
	strb r6, [r1, #1]
	strb r6, [r1, #2]
	strb r6, [r1, #3]
	add r1, r1, #4
	subs r0, r0, #1
	bne _0211C95C
	add r1, sp, #0xc8
	mov r0, #0x20
_0211C980:
	strb r6, [r1]
	strb r6, [r1, #1]
	strb r6, [r1, #2]
	strb r6, [r1, #3]
	add r1, r1, #4
	subs r0, r0, #1
	bne _0211C980
	add r1, sp, #0x48
	mov r0, #0x20
_0211C9A4:
	strb r6, [r1]
	strb r6, [r1, #1]
	strb r6, [r1, #2]
	strb r6, [r1, #3]
	add r1, r1, #4
	subs r0, r0, #1
	bne _0211C9A4
	mov r2, #4
	add r4, sp, #0x30
	mov r0, r7
	mov r1, r10
	mov r3, r2
	str r6, [r4]
	str r6, [r4, #4]
	str r6, [r4, #8]
	str r6, [r4, #0xc]
	str r6, [r4, #0x10]
	str r6, [r4, #0x14]
	bl FUN_ov50_0211c598
	ldrh r0, [r7, #0xe8]
	mov r1, r6
	ldr r4, [r7, #0x370]
	ldr r5, [r7, #0x364]
	bl FUN_ov16_020efa9c
	add r2, r0, #0x2c
	ldrh r3, [r7, #0xe8]
	ldr r1, _0211CD74 ; =0x00000FFF
	str r2, [sp, #0x30]
	and r1, r3, r1
	str r0, [sp, #0x34]
	cmp r1, #0x12c
	bgt _0211CA78
	ldrb r0, [r0, #0x4d]
	cmp r0, #0
	cmpne r4, #0
	addne r4, r4, r0, lsl #5
	ldrneb r0, [r4, #0x13]
	cmpne r0, #0
	beq _0211CAC4
	add r9, sp, #0x1c8
	mov r8, #0xc
	mov r0, r9
	mov r1, r4
	mov r2, r8
	bl STD_CopyLString
	add r5, sp, #0x148
	mov r2, r8
	mov r0, r5
	add r1, r4, #0xc
	bl STD_CopyLString
	str r9, [sp, #0x38]
	str r5, [sp, #0x3c]
	b _0211CAC4
_0211CA78:
	cmp r5, #0
	ldrneb r1, [r7, #0xea]
	cmpne r1, #0
	beq _0211CAC4
	ldr r0, [r7, #0x364]
	mov r8, #0xc
	add r5, r0, r1, lsl #5
	add r9, sp, #0x1c8
	mov r0, r9
	mov r1, r5
	mov r2, r8
	bl STD_CopyLString
	add r4, sp, #0x148
	mov r2, r8
	mov r0, r4
	add r1, r5, #0xc
	bl STD_CopyLString
	str r9, [sp, #0x38]
	str r4, [sp, #0x3c]
_0211CAC4:
	add r4, sp, #0xc8
	ldr r1, _0211CD78 ; =0x0211E98C
	mov r0, r4
	mov r2, #0x20
	bl STD_CopyLString
	ldr r0, [r7, #0xf0]
	ldr r3, [r7, #0x3a4]
	add r0, r7, r0, lsl #3
	ldrb r2, [r0, #0xc4]
	ldr r0, _0211CD7C ; =0x4F8B588F
	str r4, [sp, #0x40]
	sub r2, r2, #1
	add r2, r3, r2, lsl #2
	ldrh r5, [r2, #2]
	ldr r1, _0211CD80 ; =0x000186A0
	ldr r2, _0211CD84 ; =0xD1B71759
	umull r0, r9, r5, r0
	sub r0, r5, r9
	add r9, r9, r0, lsr #1
	mov r9, r9, lsr #0x10
	ands r0, r9, #0xff
	mul r1, r0, r1
	sub r5, r5, r1
	umull r0, r8, r5, r2
	mov r8, r8, lsr #0xd
	ldr r3, _0211CD88 ; =0x00002710
	and r7, r8, #0xff
	mul r0, r7, r3
	ldr r1, _0211CD8C ; =0x10624DD3
	sub r0, r5, r0
	umull r1, r5, r0, r1
	mov r5, r5, lsr #6
	and r2, r5, #0xff
	mov r1, #0x3e8
	mul r3, r2, r1
	ldr r1, _0211CD90 ; =0x51EB851F
	sub r3, r0, r3
	umull r0, r1, r3, r1
	mov r1, r1, lsr #5
	and r0, r1, #0xff
	strb r1, [sp, #0x2a]
	mov r4, #0x64
	strb r5, [sp, #0x2b]
	smulbb r5, r0, r4
	ldr r4, _0211CD94 ; =0xCCCCCCCD
	sub r5, r3, r5
	umull r3, r4, r5, r4
	mov r4, r4, lsr #3
	and r3, r4, #0xff
	mov r1, #0xa
	smulbb r1, r3, r1
	strb r4, [sp, #0x29]
	sub r1, r5, r1
	mov r4, #1
	strb r9, [sp, #0x2d]
	strb r8, [sp, #0x2c]
	strb r1, [sp, #0x28]
	movne r4, #6
	bne _0211CBDC
	cmp r7, #0
	movne r4, #5
	bne _0211CBDC
	cmp r2, #0
	movne r4, #4
	bne _0211CBDC
	cmp r0, #0
	movne r4, #3
	bne _0211CBDC
	cmp r3, #0
	movne r4, #2
_0211CBDC:
	mov r9, #0
	rsb r5, r4, #6
	add r8, sp, #0x48
	ldr r7, _0211CD98 ; =0x0211E9A0
	b _0211CC00
_0211CBF0:
	mov r0, r8
	mov r1, r7
	bl STD_ConcatenateString
	add r9, r9, #1
_0211CC00:
	cmp r9, r5
	blt _0211CBF0
	sub r5, r4, #1
	add r4, sp, #0x28
	add r9, sp, #0x48
	ldr r7, _0211CD9C ; =0x0211E9A4
	ldr r8, _0211CDA0 ; =0x0211E58C
	b _0211CC48
_0211CC20:
	ldrb r0, [r4, r5]
	cmp r0, #0
	beq _0211CC38
	ldr r1, [r8, r0, lsl #2]
	mov r0, r9
	b _0211CC40
_0211CC38:
	mov r0, r9
	mov r1, r7
_0211CC40:
	bl STD_ConcatenateString
	sub r5, r5, #1
_0211CC48:
	cmp r5, #0
	bge _0211CC20
	add r5, sp, #0x48
	ldr r1, _0211CDA4 ; =0x0211E9A8
	mov r0, r5
	bl STD_ConcatenateString
	ldr r4, _0211CDA8 ; =0x02099F38
	ldr r1, [r10, #0x60]
	mov r9, #0
	ldr r0, [r4]
	add r2, sp, #0x20
	add r3, sp, #0x24
	str r9, [sp, #0x20]
	str r5, [sp, #0x44]
	bl FUN_0205935c
	ldr r0, [r4]
	ldr r1, [r10, #0x60]
	ldr r8, [sp, #0x20]
	bl FUN_ov16_02111458
	mov r11, #1
	mov r7, r0
	mov r4, r11
	add r5, sp, #0x30
	b _0211CD30
_0211CCA8:
	ldr r1, [r5, r9, lsl #2]
	cmp r1, #0
	beq _0211CD2C
	cmp r9, #0
	cmpne r9, #4
	str r7, [sp]
	mov r0, #0xd
	bne _0211CCF8
	mul r0, r9, r0
	str r6, [sp, #4]
	str r0, [sp, #8]
	str r4, [sp, #0xc]
	str r6, [sp, #0x10]
	str r6, [sp, #0x14]
	str r4, [sp, #0x18]
	ldr r0, _0211CDAC ; =0x02099ED0
	str r6, [sp, #0x1c]
	ldr r0, [r0]
	ldr r1, [r5, r9, lsl #2]
	b _0211CD20
_0211CCF8:
	mul r0, r9, r0
	str r6, [sp, #4]
	str r0, [sp, #8]
	str r11, [sp, #0xc]
	str r6, [sp, #0x10]
	str r6, [sp, #0x14]
	str r11, [sp, #0x18]
	ldr r0, _0211CDB0 ; =0x02099F50
	str r6, [sp, #0x1c]
	ldr r0, [r0]
_0211CD20:
	mov r2, r8
	mov r3, #0x80
	bl FUN_020425fc
_0211CD2C:
	add r9, r9, #1
_0211CD30:
	cmp r9, #6
	blt _0211CCA8
	ldr r1, [sp, #0x24]
	mov r0, r8
	bl DC_FlushRange
	ldr r0, _0211CDA8 ; =0x02099F38
	ldr r3, [sp, #0x24]
	ldr r1, [r10, #0x60]
	ldr r0, [r0]
	mov r4, #0
	str r4, [sp]
	str r4, [sp, #4]
	mov r2, r8
	str r4, [sp, #8]
	bl FUN_02059288
	add sp, sp, #0x248
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_0211CD74: .word 0x00000FFF
_0211CD78: .word ov50_0211E98C
_0211CD7C: .word 0x4F8B588F
_0211CD80: .word 0x000186A0
_0211CD84: .word 0xD1B71759
_0211CD88: .word 0x00002710
_0211CD8C: .word 0x10624DD3
_0211CD90: .word 0x51EB851F
_0211CD94: .word 0xCCCCCCCD
_0211CD98: .word ov50_0211E9A0
_0211CD9C: .word ov50_0211E9A4
_0211CDA0: .word ov50_0211E58C
_0211CDA4: .word ov50_0211E9A8
_0211CDA8: .word unk_02099F38
_0211CDAC: .word unk_02099ED0
_0211CDB0: .word unk_02099F50
	arm_func_end FUN_ov50_0211c91c

	arm_func_start FUN_ov50_0211cdb4
FUN_ov50_0211cdb4: ; 0x0211CDB4
	stmfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, lr}
	sub sp, sp, #0x2c
	ldr r4, _0211CE98 ; =0x02099F38
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
	ldr r11, _0211CE9C ; =0x02099F50
	b _0211CE54
_0211CE08:
	ldr r0, [r10, r7, lsl #2]
	cmp r0, #0
	beq _0211CE50
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
_0211CE50:
	add r7, r7, #1
_0211CE54:
	cmp r7, r9
	blt _0211CE08
	ldr r1, [sp, #0x28]
	mov r0, r6
	bl DC_FlushRange
	ldr r0, _0211CE98 ; =0x02099F38
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
_0211CE98: .word unk_02099F38
_0211CE9C: .word unk_02099F50
	arm_func_end FUN_ov50_0211cdb4

	arm_func_start FUN_ov50_0211cea0
FUN_ov50_0211cea0: ; 0x0211CEA0
	stmfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, lr}
	sub sp, sp, #0x2c
	ldr r4, _0211CF80 ; =0x02099F38
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
	ldr r11, _0211CF84 ; =0x02099ED0
	b _0211CF3C
_0211CEF4:
	ldr r0, [r10, r7, lsl #2]
	cmp r0, #0
	beq _0211CF38
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
_0211CF38:
	add r7, r7, #1
_0211CF3C:
	cmp r7, r9
	blt _0211CEF4
	ldr r1, [sp, #0x28]
	mov r0, r6
	bl DC_FlushRange
	ldr r0, _0211CF80 ; =0x02099F38
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
_0211CF80: .word unk_02099F38
_0211CF84: .word unk_02099ED0
	arm_func_end FUN_ov50_0211cea0

	arm_func_start FUN_ov50_0211cf88
FUN_ov50_0211cf88: ; 0x0211CF88
	stmfd sp!, {r3, r4, lr}
	sub sp, sp, #0x1c
	mov r4, r1
	ldrb r0, [r4, #0x6c]
	cmp r0, #0
	addeq sp, sp, #0x1c
	ldmeqfd sp!, {r3, r4, pc}
	ldr r1, [r4, #0x18]
	cmp r1, #0
	blt _0211CFBC
	ldr r0, [r4, #8]
	cmp r1, r0
	ble _0211CFC4
_0211CFBC:
	mov r0, #0
	str r0, [sp, #0x28]
_0211CFC4:
	mov r1, #0
	str r1, [sp]
	stmib sp, {r1, r2}
	ldr r0, [sp, #0x28]
	str r3, [sp, #0xc]
	str r0, [sp, #0x10]
	str r1, [sp, #0x14]
	str r1, [sp, #0x18]
	ldrb r3, [r4, #0x6b]
	ldr r0, _0211D028 ; =0x02099ED4
	mov r2, r1
	add r3, r4, r3, lsl #2
	ldr r0, [r0]
	ldr r3, [r3, #0x20]
	bl FUN_ov16_0210e29c
	ldrb r1, [r4, #0x6b]
	ldr r0, _0211D02C ; =0x02099F38
	mov r2, #2
	add r1, r4, r1, lsl #2
	ldr r0, [r0]
	ldr r1, [r1, #0x20]
	mov r3, #1
	bl FUN_ov16_021142fc
	add sp, sp, #0x1c
	ldmfd sp!, {r3, r4, pc}
_0211D028: .word unk_02099ED4
_0211D02C: .word unk_02099F38
	arm_func_end FUN_ov50_0211cf88

	arm_func_start FUN_ov50_0211d030
FUN_ov50_0211d030: ; 0x0211D030
	stmfd sp!, {r3, lr}
	ldr r12, [r1, #0x10]
	cmp r12, #0
	blt _0211D04C
	ldr r3, [r1, #8]
	cmp r12, r3
	ble _0211D078
_0211D04C:
	ldrb r0, [r1, #0x6c]
	cmp r0, #0
	ldmeqfd sp!, {r3, pc}
	ldrb r3, [r1, #0x6b]
	ldr r0, _0211D094 ; =0x02099F38
	mov r2, #2
	add r1, r1, r3, lsl #2
	ldr r0, [r0]
	ldr r1, [r1, #0x20]
	bl FUN_ov16_02114370
	ldmfd sp!, {r3, pc}
_0211D078:
	str r2, [sp]
	ldr r2, [r1, #0x10]
	add r3, r1, r2, lsl #3
	ldrsh r2, [r3, #0x6e]
	ldrsh r3, [r3, #0x70]
	bl FUN_ov50_0211cf88
	ldmfd sp!, {r3, pc}
_0211D094: .word unk_02099F38
	arm_func_end FUN_ov50_0211d030

	arm_func_start FUN_ov50_0211d098
FUN_ov50_0211d098: ; 0x0211D098
	stmfd sp!, {r4, r5, r6, r7, r8, r9, lr}
	sub sp, sp, #0x1c
	mov r8, r1
	ldrb r0, [r8, #0x6a]
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
	bgt _0211D13C
	ldrb r0, [r8, #0x69]
	ldr r6, _0211D1F8 ; =0x02099F38
	mov r2, r5
	add r1, r8, r0, lsl #2
	ldr r0, [r6]
	ldr r1, [r1, #0x20]
	mov r3, r4
	bl FUN_ov16_021142fc
	ldrb r1, [r8, #0x69]
	ldr r0, [r6]
	mov r2, r5
	add r1, r1, #1
	add r1, r8, r1, lsl #2
	ldr r1, [r1, #0x20]
	mov r3, r4
	bl FUN_ov16_021142fc
	ldrb r1, [r8, #0x69]
	ldr r0, [r6]
	mov r2, r5
	add r1, r1, #2
	add r1, r8, r1, lsl #2
	ldr r1, [r1, #0x20]
	mov r3, r4
	bl FUN_ov16_021142fc
	add sp, sp, #0x1c
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, pc}
_0211D13C:
	mov r1, #0
	str r1, [sp]
	stmib sp, {r1, r7}
	ldr r0, [sp, #0x38]
	str r6, [sp, #0xc]
	str r0, [sp, #0x10]
	str r1, [sp, #0x14]
	str r1, [sp, #0x18]
	ldrb r3, [r8, #0x69]
	ldr r0, _0211D1FC ; =0x02099ED4
	mov r2, r1
	add r3, r8, r3, lsl #2
	ldr r0, [r0]
	ldr r3, [r3, #0x20]
	bl FUN_ov16_0210e29c
	ldrb r0, [r8, #0x69]
	ldr r9, _0211D1F8 ; =0x02099F38
	mov r2, r5
	add r1, r8, r0, lsl #2
	ldr r0, [r9]
	ldr r1, [r1, #0x20]
	mov r3, r4
	bl FUN_ov16_021142fc
	ldrb r1, [r8, #0x69]
	ldr r0, [r9]
	mov r2, r5
	add r1, r1, #1
	add r1, r8, r1, lsl #2
	ldr r1, [r1, #0x20]
	mov r3, r4
	bl FUN_ov16_021142fc
	ldrb r1, [r8, #0x69]
	ldr r0, [r9]
	mov r2, r5
	add r1, r1, #2
	add r1, r8, r1, lsl #2
	ldr r1, [r1, #0x20]
	mov r3, r4
	bl FUN_ov16_021142fc
	ldr r0, _0211D200 ; =0x02099EB4
	mov r2, r7
	ldr r0, [r0]
	mov r3, r6
	mov r1, #0xb
	bl FUN_ov16_0210fd0c
	add sp, sp, #0x1c
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, pc}
_0211D1F8: .word unk_02099F38
_0211D1FC: .word unk_02099ED4
_0211D200: .word unk_02099EB4
	arm_func_end FUN_ov50_0211d098

	arm_func_start FUN_ov50_0211d204
FUN_ov50_0211d204: ; 0x0211D204
	stmfd sp!, {r3, r4, r5, r6, lr}
	sub sp, sp, #4
	mov r4, r1
	ldrsh r3, [r4, #0xba]
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
	ldrsh r3, [r4, #0xb6]
	ldrsh r2, [r4, #0xb4]
	mov r0, r5
	mov r1, r4
	add r3, r3, r12
	bl FUN_ov50_0211d098
	add sp, sp, #4
	ldmfd sp!, {r3, r4, r5, r6, pc}
	arm_func_end FUN_ov50_0211d204

	arm_func_start FUN_ov50_0211d25c
FUN_ov50_0211d25c: ; 0x0211D25C
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	ldr r4, _0211D2AC ; =0x02099F38
	mov r7, r0
	mov r3, r1
	ldr r0, [r4]
	ldr r1, [r7, #0xac]
	mov r5, #2
	mov r6, r2
	mov r2, r5
	bl FUN_ov16_021142fc
	ldr r0, [r4]
	ldr r1, [r7, #0xb0]
	mov r2, r5
	mov r3, r6
	bl FUN_ov16_021142fc
	mov r0, #1
	cmp r6, #0
	moveq r0, #0
	str r0, [r7, #0x330]
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_0211D2AC: .word unk_02099F38
	arm_func_end FUN_ov50_0211d25c

	arm_func_start FUN_ov50_0211d2b0
FUN_ov50_0211d2b0: ; 0x0211D2B0
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	mov r4, r1
	mov r6, r0
	cmp r4, #0
	ldmlefd sp!, {r3, r4, r5, r6, r7, pc}
	ldr r0, _0211D3C8 ; =0x02099EB4
	mov r1, r4, lsl #0x10
	ldr r0, [r0]
	mov r1, r1, lsr #0x10
	bl FUN_ov16_0210e7d0
	cmp r4, #1
	blt _0211D390
	cmp r4, #8
	bgt _0211D390
	ldr r0, [r6, #0x14]
	mov r5, #0
	cmp r0, #0
	movne r5, #1
	mov r0, #0xc0
	mla r2, r5, r0, r6
	mov r0, #0
	strb r0, [r2, #0x154]
	ldr r1, [r2, #0xf0]
	ldr r0, [r2, #0xfc]
	sub r4, r4, #1
	sub r0, r1, r0
	cmp r4, r0
	moveq r0, #1
	streqb r0, [r2, #0x154]
	beq _0211D350
	ldr r0, [r6, #0x14]
	cmp r0, #0
	bne _0211D350
	ldr r0, [r2, #0xf4]
	sub r0, r0, #2
	cmp r1, r0
	bge _0211D350
	ldr r0, _0211D3CC ; =gL5Sound
	mov r1, #8
	bl FUN_0202cf6c
_0211D350:
	mov r7, #0xc0
	mul r2, r5, r7
	add r0, r6, r2
	ldr r1, [r0, #0xfc]
	add r0, r6, #0xf0
	add r0, r0, r2
	add r1, r4, r1
	bl FUN_ov16_020f52f4
	add r0, r6, #0xf0
	mla r1, r5, r7, r0
	mov r0, r6
	mov r2, #8
	bl FUN_ov50_0211b510
	mov r0, r6
	bl FUN_ov50_0211b554
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_0211D390:
	cmp r4, #0xc
	bne _0211D3AC
	mov r0, r6
	mov r1, #1
	mov r2, #0
	bl FUN_ov50_0211d25c
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_0211D3AC:
	cmp r4, #0xd
	ldmnefd sp!, {r3, r4, r5, r6, r7, pc}
	mov r0, r6
	mov r1, #0
	mov r2, #1
	bl FUN_ov50_0211d25c
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_0211D3C8: .word unk_02099EB4
_0211D3CC: .word gL5Sound
	arm_func_end FUN_ov50_0211d2b0

	arm_func_start FUN_ov50_0211d3d0
FUN_ov50_0211d3d0: ; 0x0211D3D0
	stmfd sp!, {r4, r5, r6, lr}
	mov r4, r1
	mov r5, r0
	cmp r4, #0
	ldmlefd sp!, {r4, r5, r6, pc}
	ldr r0, _0211D50C ; =0x02099EB4
	mov r1, r4, lsl #0x10
	ldr r0, [r0]
	mov r1, r1, lsr #0x10
	bl FUN_ov16_0210e7d0
	cmp r4, #1
	blt _0211D4D0
	cmp r4, #8
	bgt _0211D4D0
	ldr r0, [r5, #0x14]
	sub r1, r4, #1
	cmp r0, #0
	mov r4, #0
	movne r4, #1
	mov r0, #0xc0
	mla r3, r4, r0, r5
	ldr r2, [r3, #0xf0]
	ldr r0, [r3, #0xfc]
	sub r0, r2, r0
	cmp r1, r0
	bne _0211D444
	ldrb r0, [r3, #0x154]
	cmp r0, #0
	bne _0211D470
_0211D444:
	ldr r0, [r5, #0x14]
	cmp r0, #0
	bne _0211D470
	mov r6, #0xc0
	mul lr, r4, r6
	add r12, r5, lr
	ldr r0, [r12, #0xf4]
	ldr r3, [r12, #0xf0]
	sub r2, r0, #2
	cmp r3, r2
	blt _0211D49C
_0211D470:
	mov r0, #0xc0
	mla r0, r4, r0, r5
	ldr r0, [r0, #0xf4]
	cmp r1, r0
	ldmgefd sp!, {r4, r5, r6, pc}
	ldr r0, _0211D50C ; =0x02099EB4
	mov r1, #1
	ldr r0, [r0]
	add r0, r0, #0xf00
	strh r1, [r0, #0x38]
	ldmfd sp!, {r4, r5, r6, pc}
_0211D49C:
	cmp r1, r0
	ldmgefd sp!, {r4, r5, r6, pc}
	ldr r2, [r12, #0xfc]
	add r0, r5, #0xf0
	add r0, r0, lr
	add r1, r1, r2
	bl FUN_ov16_020f52f4
	add r0, r5, #0xf0
	mla r1, r4, r6, r0
	mov r0, r5
	mov r2, #8
	bl FUN_ov50_0211b510
	ldmfd sp!, {r4, r5, r6, pc}
_0211D4D0:
	cmp r4, #0xc
	bne _0211D4F0
	ldr r0, _0211D50C ; =0x02099EB4
	mov r1, #1
	ldr r0, [r0]
	add r0, r0, #0xf00
	strh r1, [r0, #0x38]
	ldmfd sp!, {r4, r5, r6, pc}
_0211D4F0:
	cmp r4, #0xd
	ldreq r0, _0211D50C ; =0x02099EB4
	moveq r1, #2
	ldreq r0, [r0]
	addeq r0, r0, #0xf00
	streqh r1, [r0, #0x38]
	ldmfd sp!, {r4, r5, r6, pc}
_0211D50C: .word unk_02099EB4
	arm_func_end FUN_ov50_0211d3d0

	arm_func_start FUN_ov50_0211d510
FUN_ov50_0211d510: ; 0x0211D510
	bx lr
	arm_func_end FUN_ov50_0211d510

	arm_func_start FUN_ov50_0211d514
FUN_ov50_0211d514: ; 0x0211D514
	stmfd sp!, {r3, r4, r5, lr}
	mov r5, r0
	ldr r2, _0211D54C ; =0x0211E7A4
	add r0, r5, #0x3a8
	mov r4, r1
	str r2, [r5]
	bl FUN_0206c0d8
	mov r0, r5
	str r4, [r5, #4]
	bl FUN_ov50_0211dfd4
	mov r1, #0
	mov r0, r5
	str r1, [r5, #0x3a4]
	ldmfd sp!, {r3, r4, r5, pc}
_0211D54C: .word ov50_0211E7A4
	arm_func_end FUN_ov50_0211d514

	arm_func_start FUN_ov50_0211d550
FUN_ov50_0211d550: ; 0x0211D550
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, lr}
	sub sp, sp, #4
	ldr r3, _0211DB48 ; =0x0209A0F4
	ldr r2, _0211DB4C ; =0x02099ED4
	ldrh r3, [r3]
	mov r8, r1
	mov r9, r0
	orr r0, r3, r8
	mov r1, r0, lsl #0x10
	ldr r0, [r2]
	ldr r4, _0211DB50 ; =0x02099EB4
	mov r7, r1, lsr #0x10
	mov r5, #8
	mov r10, #1
	mov r6, #0
	bl FUN_ov16_0210e15c
	cmp r0, #0
	addne sp, sp, #4
	ldmnefd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, pc}
	ldr r0, [r4]
	bl FUN_ov16_0210f468
	cmp r0, #0
	beq _0211D5CC
	ldr r0, [r4]
	add r0, r0, #0xf00
	ldrh r8, [r0, #0x38]
	cmp r8, #0
	addeq sp, sp, #4
	ldmeqfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, pc}
	mov r7, r8
	strh r6, [r0, #0x38]
_0211D5CC:
	ldr r0, [r9, #0x10]
	cmp r0, #7
	addne sp, sp, #4
	ldmnefd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, pc}
	ldr r0, [r9, #0x14]
	cmp r0, #3
	addls pc, pc, r0, lsl #2
	b _0211DB40
_0211D5EC: ; jump table
	b _0211D5FC ; case 0
	b _0211D7A0 ; case 1
	b _0211D7A0 ; case 2
	b _0211D978 ; case 3
_0211D5FC:
	tst r8, #1
	beq _0211D718
	mov r0, r9
	add r1, r9, #0xf0
	bl FUN_ov50_0211c4f0
	ldr r2, [r9, #0xfc]
	ldr r1, [r9, #0xf0]
	ldr r0, [r9, #0xbc]
	str r2, [r9, #0x338]
	str r1, [r9, #0x334]
	cmp r1, r0
	bge _0211D6D0
	add r0, r9, r1, lsl #3
	ldrh r1, [r0, #0xc0]
	ldr r0, _0211DB54 ; =0x00000FFF
	mov r2, r6
	and r0, r1, r0
	mov r1, r0, lsl #0x10
	ldr r0, _0211DB58 ; =0x0209A0AC
	mov r1, r1, lsr #0x10
	bl FUN_0206c7dc
	cmp r0, #0
	beq _0211D66C
	ldr r0, _0211DB5C ; =0x020A9C40
	mov r2, r6
	mov r1, #0x70
	bl FUN_020460a8
	b _0211D790
_0211D66C:
	ldr r0, _0211DB60 ; =gL5Sound
	mov r1, r10
	bl FUN_0202cf6c
	ldr r0, [r9, #0x334]
	add r2, r9, #0xc0
	mov r1, r0, lsl #3
	ldrh r1, [r2, r1]
	add r4, r2, r0, lsl #3
	mov r0, r9
	strh r1, [r9, #0xe8]
	ldrb r2, [r4, #2]
	mov r1, r10
	strb r2, [r9, #0xea]
	ldrb r2, [r4, #3]
	strb r2, [r9, #0xeb]
	ldrb r2, [r4, #4]
	strb r2, [r9, #0xec]
	ldrb r3, [r4, #5]
	ldrb r2, [r4, #6]
	strb r3, [r9, #0xed]
	strb r2, [r9, #0xee]
	ldrb r2, [r4, #7]
	strb r2, [r9, #0xef]
_0211D6C8:
	bl FUN_ov50_0211c548
	b _0211D790
_0211D6D0:
	bne _0211D6EC
	ldr r0, _0211DB60 ; =gL5Sound
	mov r1, #1
	bl FUN_0202cf6c
	mov r0, r9
	mov r1, #2
	b _0211D6C8
_0211D6EC:
	ldr r0, _0211DB60 ; =gL5Sound
	mov r1, #4
	bl FUN_0202cf6c
	ldr r0, _0211DB5C ; =0x020A9C40
	mov r2, r6
	mov r1, #0x66
	bl FUN_020460a8
_0211D708:
	mov r0, r9
	mov r1, r6
	bl FUN_ov50_0211c538
	b _0211D790
_0211D718:
	tst r8, #2
	beq _0211D740
	ldr r0, _0211DB5C ; =0x020A9C40
	mov r2, r6
	mov r1, #0x66
	bl FUN_020460a8
	ldr r0, _0211DB60 ; =gL5Sound
	mov r1, #4
	bl FUN_0202cf6c
	b _0211D708
_0211D740:
	tst r7, #0x40
	beq _0211D760
	ldr r0, _0211DB60 ; =gL5Sound
	mov r1, r5
	bl FUN_0202cf6c
	add r0, r9, #0xf0
	sub r1, r5, #9
	b _0211D77C
_0211D760:
	tst r7, #0x80
	beq _0211D790
	ldr r0, _0211DB60 ; =gL5Sound
	mov r1, #8
	bl FUN_0202cf6c
	add r0, r9, #0xf0
	mov r1, #1
_0211D77C:
	bl FUN_ov16_020f53b0
	mov r0, r9
	add r1, r9, #0xf0
	mov r2, #0xe
	bl FUN_ov50_0211b510
_0211D790:
	mov r0, r9
	bl FUN_ov50_0211b554
	add sp, sp, #4
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, pc}
_0211D7A0:
	tst r8, #1
	beq _0211D8DC
	mov r0, r9
	add r1, r9, #0x1b0
	bl FUN_ov50_0211c4f0
	ldr r0, [r9, #0x14]
	cmp r0, #1
	beq _0211D7D0
	cmp r0, #2
	beq _0211D834
	add sp, sp, #4
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, pc}
_0211D7D0:
	ldr r0, [r9, #0x1b0]
	cmp r0, #0
	beq _0211D7EC
	cmp r0, #1
	beq _0211D814
	add sp, sp, #4
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, pc}
_0211D7EC:
	ldr r0, _0211DB60 ; =gL5Sound
	mov r1, #1
	bl FUN_0202cf6c
	mov r0, r9
	mov r1, #3
	bl FUN_ov50_0211c548
	mov r0, r9
	bl FUN_ov50_0211a238
	add sp, sp, #4
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, pc}
_0211D814:
	ldr r0, _0211DB60 ; =gL5Sound
	mov r1, #4
	bl FUN_0202cf6c
	mov r0, r9
	mov r1, #0
	bl FUN_ov50_0211c548
	add sp, sp, #4
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, pc}
_0211D834:
	ldr r0, [r9, #0x1b0]
	cmp r0, #0
	beq _0211D858
	cmp r0, #1
	beq _0211D88C
	cmp r0, #2
	beq _0211D8BC
	add sp, sp, #4
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, pc}
_0211D858:
	ldr r0, _0211DB60 ; =gL5Sound
	mov r1, #1
	bl FUN_0202cf6c
	ldr r0, _0211DB5C ; =0x020A9C40
	mov r1, #0x6c
	mov r2, #0
	bl FUN_020460a8
	ldr r0, _0211DB64 ; =0x02099F44
	ldr r0, [r0]
	bl FUN_ov131_0213c4f4
	add sp, sp, #4
	str r5, [r9, #0x10]
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, pc}
_0211D88C:
	ldr r0, _0211DB60 ; =gL5Sound
	mov r1, #1
	bl FUN_0202cf6c
	ldr r0, _0211DB5C ; =0x020A9C40
	mov r2, r6
	mov r1, #0x6d
	bl FUN_020460a8
	mov r0, r9
	mov r1, r6
	bl FUN_ov50_0211c538
	add sp, sp, #4
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, pc}
_0211D8BC:
	ldr r0, _0211DB60 ; =gL5Sound
	mov r1, #4
	bl FUN_0202cf6c
	mov r0, r9
	mov r1, #0
	bl FUN_ov50_0211c548
	add sp, sp, #4
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, pc}
_0211D8DC:
	tst r8, #2
	beq _0211D904
	ldr r0, _0211DB60 ; =gL5Sound
	mov r1, #4
	bl FUN_0202cf6c
	mov r0, r9
	mov r1, #0
	bl FUN_ov50_0211c548
	add sp, sp, #4
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, pc}
_0211D904:
	tst r7, #0x40
	beq _0211D93C
	ldr r0, _0211DB60 ; =gL5Sound
	mov r1, r5
	bl FUN_0202cf6c
	add r0, r9, #0x1b0
	sub r1, r5, #9
	bl FUN_ov16_020f53b0
	mov r0, r9
	add r1, r9, #0x1b0
	mov r2, #0xe
	bl FUN_ov50_0211b510
	add sp, sp, #4
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, pc}
_0211D93C:
	tst r7, #0x80
	addeq sp, sp, #4
	ldmeqfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, pc}
	ldr r0, _0211DB60 ; =gL5Sound
	mov r1, #8
	bl FUN_0202cf6c
	add r0, r9, #0x1b0
	mov r1, #1
	bl FUN_ov16_020f53b0
	mov r0, r9
	add r1, r9, #0x1b0
	mov r2, #0xe
	bl FUN_ov50_0211b510
	add sp, sp, #4
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, pc}
_0211D978:
	tst r8, #1
	beq _0211DAB4
	mov r0, r9
	add r1, r9, #0x270
	bl FUN_ov50_0211c4f0
	ldr r0, [r9, #0x330]
	cmp r0, #0
	bne _0211DA88
	ldr r5, _0211DB68 ; =0x0209BA20
	mov r0, r5
	bl FUN_ov16_020edfc0
	ldr r2, [r9, #0xf0]
	ldr r1, [r9, #0x3a4]
	add r2, r9, r2, lsl #3
	ldrb r2, [r2, #0xc4]
	mov r3, r0
	sub r0, r2, #1
	add r0, r1, r0, lsl #2
	ldrh r1, [r0, #2]
	cmp r1, r3
	bhi _0211DA58
	mov r0, r5
	sub r1, r3, r1
	bl FUN_ov16_020edfd0
	ldr r0, _0211DB60 ; =gL5Sound
	mov r1, #6
	bl FUN_0202cf6c
	ldrh r1, [r9, #0xe8]
	ldr r5, _0211DB54 ; =0x00000FFF
	ldr r0, _0211DB5C ; =0x020A9C40
	and r2, r1, r5
	mov r1, #0x6a
	bl FUN_020460a8
	ldr r0, [r4]
	mov r1, #0xc
	bl FUN_ov16_0210efac
	mov r0, r9
	add r1, r9, #0x270
	add r2, sp, #0
	str r6, [sp]
	bl FUN_ov50_0211b670
	mov r0, r9
	bl FUN_ov50_0211df60
	mov r1, r6
	mov r0, r9
	bl FUN_ov50_0211c538
	ldr r0, _0211DB6C ; =0x020AF81C
	mov r1, #0xa
	mov r2, #1
	bl FUN_02044754
	ldrh r1, [r9, #0xe8]
	ldr r0, _0211DB70 ; =0x02099EA4
	add sp, sp, #4
	and r1, r1, r5
	strh r1, [r0]
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, pc}
_0211DA58:
	ldr r0, _0211DB60 ; =gL5Sound
	mov r1, #9
	bl FUN_0202cf6c
	ldr r0, _0211DB5C ; =0x020A9C40
	mov r1, #0x6f
	mov r2, #0
	bl FUN_020460a8
	ldr r0, [r4]
	mov r1, #0xc
	bl FUN_ov16_0210efac
	add sp, sp, #4
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, pc}
_0211DA88:
	ldr r0, _0211DB60 ; =gL5Sound
	mov r1, #4
	bl FUN_0202cf6c
	ldr r0, [r4]
	mov r1, #0xd
	bl FUN_ov16_0210efac
	mov r0, r9
	mov r1, #1
	bl FUN_ov50_0211c548
	add sp, sp, #4
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, pc}
_0211DAB4:
	tst r8, #2
	beq _0211DAE8
	ldr r0, _0211DB60 ; =gL5Sound
	mov r1, #4
	bl FUN_0202cf6c
	ldr r0, [r4]
	mov r1, #0xd
	bl FUN_ov16_0210efac
	mov r0, r9
	mov r1, #1
	bl FUN_ov50_0211c548
	add sp, sp, #4
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, pc}
_0211DAE8:
	tst r7, #0x20
	bne _0211DAFC
	tst r7, #0x10
	addeq sp, sp, #4
	ldmeqfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, pc}
_0211DAFC:
	ldr r0, _0211DB60 ; =gL5Sound
	mov r1, #8
	bl FUN_0202cf6c
	ldr r0, [r9, #0x330]
	add r0, r0, #1
	ands r0, r0, #1
	str r0, [r9, #0x330]
	mov r0, r9
	bne _0211DB34
	mov r1, #1
	mov r2, #0
	bl FUN_ov50_0211d25c
	add sp, sp, #4
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, pc}
_0211DB34:
	mov r1, #0
	mov r2, #1
	bl FUN_ov50_0211d25c
_0211DB40:
	add sp, sp, #4
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, pc}
_0211DB48: .word unk_0209A0F4
_0211DB4C: .word unk_02099ED4
_0211DB50: .word unk_02099EB4
_0211DB54: .word 0x00000FFF
_0211DB58: .word unk_0209A0AC
_0211DB5C: .word unk_020A9C40
_0211DB60: .word gL5Sound
_0211DB64: .word unk_02099F44
_0211DB68: .word unk_0209BA20
_0211DB6C: .word unk_020AF81C
_0211DB70: .word unk_02099EA4
	arm_func_end FUN_ov50_0211d550

	arm_func_start FUN_ov50_0211db74
FUN_ov50_0211db74: ; 0x0211DB74
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	ldr r2, _0211DC48 ; =0x02099ED4
	mov r7, r0
	ldr r0, [r2]
	mov r6, r1
	mov r5, #0
	bl FUN_ov16_0210e15c
	cmp r0, #0
	ldreq r0, [r7, #0x10]
	cmpeq r0, #7
	ldmnefd sp!, {r3, r4, r5, r6, r7, pc}
	ldr r4, _0211DC4C ; =0x02099EB4
	mov r1, r6
	ldr r0, [r4]
	mov r2, r5
	bl FUN_ov16_0210f20c
	cmp r0, #4
	addls pc, pc, r0, lsl #2
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_0211DBC0: ; jump table
	ldmfd sp!, {r3, r4, r5, r6, r7, pc} ; case 0
	b _0211DBD4 ; case 1
	b _0211DBEC ; case 2
	b _0211DC04 ; case 3
	b _0211DC20 ; case 4
_0211DBD4:
	ldr r0, [r4]
	bl FUN_ov16_0210f484
	mov r1, r0
	mov r0, r7
	bl FUN_ov50_0211d2b0
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_0211DBEC:
	ldr r0, [r4]
	bl FUN_ov16_0210f484
	mov r1, r0
	mov r0, r7
	bl FUN_ov50_0211d3d0
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_0211DC04:
	ldr r0, [r4]
	bl FUN_ov16_0210f484
	mov r1, r0
	mov r0, r7
	mov r2, r5
	bl FUN_ov50_0211d510
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_0211DC20:
	ldr r0, [r4]
	add r1, sp, #0
	bl FUN_ov16_0210f48c
	ldr r0, [r4]
	bl FUN_ov16_0210f484
	mov r1, r0
	mov r0, r7
	mov r2, #1
	bl FUN_ov50_0211d510
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_0211DC48: .word unk_02099ED4
_0211DC4C: .word unk_02099EB4
	arm_func_end FUN_ov50_0211db74

	arm_func_start FUN_ov50_0211dc50
FUN_ov50_0211dc50: ; 0x0211DC50
	stmfd sp!, {r4, lr}
	ldr r12, [r0, #0xbc]
	mov r1, #0
	cmp r12, #0
	ble _0211DCF4
_0211DC64:
	add r2, r0, r1, lsl #3
	ldrh r2, [r2, #0xc0]
	cmp r2, #0
	bne _0211DCE4
	add r3, r1, #1
	cmp r3, r12
	bge _0211DCE4
_0211DC80:
	add r4, r0, r3, lsl #3
	ldrh r2, [r4, #0xc0]
	cmp r2, #0
	beq _0211DCD8
	ldrh r3, [r4, #0xc0]
	add lr, r0, r1, lsl #3
	mov r2, #0
	strh r3, [lr, #0xc0]
	ldrb r3, [r4, #0xc2]
	strb r3, [lr, #0xc2]
	ldrb r3, [r4, #0xc3]
	strb r3, [lr, #0xc3]
	ldrb r3, [r4, #0xc4]
	strb r3, [lr, #0xc4]
	ldrb r12, [r4, #0xc5]
	ldrb r3, [r4, #0xc6]
	strb r12, [lr, #0xc5]
	strb r3, [lr, #0xc6]
	ldrb r3, [r4, #0xc7]
	strb r3, [lr, #0xc7]
	strh r2, [r4, #0xc0]
	b _0211DCE4
_0211DCD8:
	add r3, r3, #1
	cmp r3, r12
	blt _0211DC80
_0211DCE4:
	ldr r12, [r0, #0xbc]
	add r1, r1, #1
	cmp r1, r12
	blt _0211DC64
_0211DCF4:
	mov r2, #0
	mov r3, r2
	cmp r12, #0
	ble _0211DD20
_0211DD04:
	add r1, r0, r3, lsl #3
	ldrh r1, [r1, #0xc0]
	add r3, r3, #1
	cmp r1, #0
	addne r2, r2, #1
	cmp r3, r12
	blt _0211DD04
_0211DD20:
	str r2, [r0, #0xbc]
	ldmfd sp!, {r4, pc}
	arm_func_end FUN_ov50_0211dc50

	arm_func_start FUN_ov50_0211dd28
FUN_ov50_0211dd28: ; 0x0211DD28
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, lr}
	sub sp, sp, #0x18
	ldr r1, _0211DEE8 ; =0x020A0640
	mov r10, r0
	ldrb r0, [r1, #0x620]
	mov r11, #1
	mov r4, #0
	cmp r0, #0
	movne r0, r11
	moveq r0, r4
	cmp r0, #0
	addne sp, sp, #0x18
	ldmnefd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
	ldr r6, _0211DEEC ; =0x0209BA20
	mov r1, #0
	mov r0, r6
	bl FUN_0207249c
	mov r5, r0
	mov r0, r6
	mov r1, #1
	bl FUN_0207249c
	ldrh r1, [r5, #0x28]
	mov r7, r0
	mov r0, r10
	cmp r1, #0
	ldreqh r1, [r5, #0x26]
	strh r1, [r7, #0x28]
	ldrh r1, [r5, #0x30]
	strh r1, [r7, #0x30]
	ldrh r1, [r5, #0x32]
	strh r1, [r7, #0x32]
	ldrb r1, [r5, #0x2c]
	strb r1, [r7, #0x2c]
	bl FUN_ov50_0211dfd4
	ldr r5, _0211DEF0 ; =0x02099F44
	add r1, r10, #0xc0
	ldr r0, [r5]
	bl FUN_ov131_0213c3a8
	movs r6, r0
	bne _0211DE18
	ldr r0, [r5]
	add r1, r10, #0xc0
	mov r2, #5
	bl FUN_ov131_0213b778
	mov r6, r0
	mov r3, #0
	add r0, sp, #0xc
	b _0211DDFC
_0211DDE8:
	add r1, r10, r3, lsl #3
	ldrh r2, [r1, #0xc0]
	mov r1, r3, lsl #1
	add r3, r3, #1
	strh r2, [r0, r1]
_0211DDFC:
	cmp r3, r6
	blt _0211DDE8
	ldr r0, _0211DEF0 ; =0x02099F44
	add r1, sp, #0xc
	ldr r0, [r0]
	and r2, r6, #0xff
	bl FUN_ov131_0213c4a0
_0211DE18:
	str r6, [r10, #0xbc]
	mov r8, #0
	add r5, r10, #0xc0
	b _0211DEB8
_0211DE28:
	mov r3, r8, lsl #3
	ldrh r2, [r5, r3]
	add r1, r10, r8, lsl #3
	ldr r0, _0211DEEC ; =0x0209BA20
	orr r2, r2, #0x8000
	strh r2, [r5, r3]
	stmia sp, {r4, r11}
	str r4, [sp, #8]
	ldrh r9, [r1, #0xc0]
	ldr r2, _0211DEF4 ; =0x00000FFF
	mov r1, r11
	and r2, r9, r2
	mov r2, r2, lsl #0x10
	mov r3, r4
	mov r2, r2, lsr #0x10
	bl FUN_0204c778
	cmp r0, #0
	add r0, r10, r8, lsl #3
	streqh r4, [r0, #0xc0]
	subeq r6, r6, #1
	beq _0211DEB4
	ldrh r0, [r0, #0xc0]
	mov r1, r4
	bl FUN_ov16_020efa9c
	movs r9, r0
	beq _0211DEB4
	bl FUN_0204fb60
	cmp r0, #1
	ldreqh r2, [r7, #0x32]
	ldr r0, _0211DEEC ; =0x0209BA20
	mov r1, r9
	ldrneh r2, [r7, #0x30]
	mov r3, r4
	str r11, [sp]
	bl FUN_ov16_020eea8c
_0211DEB4:
	add r8, r8, #1
_0211DEB8:
	ldr r0, [r10, #0xbc]
	cmp r8, r0
	blt _0211DE28
	cmp r0, r6
	mov r4, #1
	ble _0211DED8
	mov r0, r10
	bl FUN_ov50_0211dc50
_0211DED8:
	ldr r0, _0211DEE8 ; =0x020A0640
	strb r4, [r0, #0x620]
	add sp, sp, #0x18
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_0211DEE8: .word unk_020A0640
_0211DEEC: .word unk_0209BA20
_0211DEF0: .word unk_02099F44
_0211DEF4: .word 0x00000FFF
	arm_func_end FUN_ov50_0211dd28

	arm_func_start FUN_ov50_0211def8
FUN_ov50_0211def8: ; 0x0211DEF8
	stmfd sp!, {r4, r5, r6, r7, r8, lr}
	mov r7, r0
	mov r6, #0
	ldr r5, _0211DF54 ; =0x0209BA20
	mov r4, #1
	ldr r8, _0211DF58 ; =0x00000FFF
	b _0211DF38
_0211DF14:
	add r0, r7, r6, lsl #3
	ldrh r2, [r0, #0xc0]
	mov r0, r5
	mov r1, r4
	and r2, r2, r8
	mov r2, r2, lsl #0x10
	mov r2, r2, lsr #0x10
	bl FUN_0204d3c0
	add r6, r6, #1
_0211DF38:
	ldr r0, [r7, #0xbc]
	cmp r6, r0
	blt _0211DF14
	ldr r0, _0211DF5C ; =0x020A0640
	mov r1, #0
	strb r1, [r0, #0x620]
	ldmfd sp!, {r4, r5, r6, r7, r8, pc}
_0211DF54: .word unk_0209BA20
_0211DF58: .word 0x00000FFF
_0211DF5C: .word unk_020A0640
	arm_func_end FUN_ov50_0211def8

	arm_func_start FUN_ov50_0211df60
FUN_ov50_0211df60: ; 0x0211DF60
	stmfd sp!, {r3, r4, r5, lr}
	mov r4, r0
	ldr r0, [r4, #0xf0]
	mov r1, #1
	add r0, r4, r0, lsl #3
	ldrh r5, [r0, #0xc0]
	rsb r2, r1, #0x1000
	ldr r0, _0211DFD0 ; =0x0209BA20
	and r2, r5, r2
	mov r2, r2, lsl #0x10
	mov r2, r2, lsr #0x10
	bl FUN_0204d3c0
	ldr r3, [r4, #0xbc]
	mov r2, #0
	cmp r3, #0
	ble _0211DFC4
_0211DFA0:
	add r1, r4, r2, lsl #3
	ldrh r0, [r1, #0xc0]
	cmp r5, r0
	moveq r0, #0
	streqh r0, [r1, #0xc0]
	beq _0211DFC4
	add r2, r2, #1
	cmp r2, r3
	blt _0211DFA0
_0211DFC4:
	mov r0, r4
	bl FUN_ov50_0211dc50
	ldmfd sp!, {r3, r4, r5, pc}
_0211DFD0: .word unk_0209BA20
	arm_func_end FUN_ov50_0211df60

	arm_func_start FUN_ov50_0211dfd4
FUN_ov50_0211dfd4: ; 0x0211DFD4
	mov r2, #0
	sub r1, r2, #1
	str r2, [r0, #0xbc]
	str r1, [r0, #0x338]
	str r1, [r0, #0x334]
	bx lr
	arm_func_end FUN_ov50_0211dfd4

	arm_func_start FUN_ov50_0211dfec
FUN_ov50_0211dfec: ; 0x0211DFEC
	stmfd sp!, {r4, r5, r6, lr}
	mov r1, #0x4000000
	ldr r1, [r1]
	mov r4, r0
	and r0, r1, #0x1f00
	mov r1, r0, lsr #8
	ldr r0, _0211E11C ; =0x02099EB4
	str r1, [r4, #0x33c]
	ldr r0, [r0]
	bl FUN_ov16_0210e980
	ldr r0, _0211E120 ; =0x02099ED4
	ldr r0, [r0]
	bl FUN_ov16_0210e0a0
	mov r0, r4
	ldr r1, [r0]
	ldr r1, [r1, #0x44]
	blx r1
	add r0, r4, #0x3a8
	mov r1, #0x10
	bl FUN_0206c158
	add r0, r4, #0x3a8
	bl FUN_ov16_020efa04
	mov r0, r4
	bl FUN_ov50_0211dd28
	add r0, r4, #0xb4
	mov r1, #5
	bl FUN_ov16_020f5278
	ldr r0, [r4, #4]
	bl FUN_0204204c
	str r0, [r4, #8]
	mov r6, #0
	str r6, [r4, #0xc]
	str r6, [r4, #0x10]
	str r6, [r4, #0x14]
	add r0, r4, #0x358
	mov r1, r6
	mov r2, #0x48
	bl MI_CpuFill8
	add r0, r4, #0x18
	mov r1, r6
	mov r2, #0x24
	bl MI_CpuFill8
	add r0, r4, #0x3c
	mov r1, r6
	mov r2, #0x58
	bl MI_CpuFill8
	add r0, r4, #0x94
	mov r1, r6
	mov r5, #8
	mov r2, r5
	bl MI_CpuFill8
	add r0, r4, #0xa8
	mov r1, r6
	mov r2, #4
	bl MI_CpuFill8
	mov r2, r5
	add r0, r4, #0xac
	mov r1, r6
	bl MI_CpuFill8
	add r0, r4, #0x9c
	mov r1, r6
	mov r2, #0xc
	bl MI_CpuFill8
	add r0, r4, #0xf0
	mov r1, r6
	mov r2, #0x240
	bl MI_CpuFill8
	ldr r0, _0211E124 ; =0x02099F38
	str r6, [r4, #0x330]
	ldr r0, [r0]
	bl FUN_ov16_021123b4
	ldr r0, _0211E128 ; =0x020A9C40
	mov r2, r6
	mov r1, #0x64
	bl FUN_020460a8
	ldmfd sp!, {r4, r5, r6, pc}
_0211E11C: .word unk_02099EB4
_0211E120: .word unk_02099ED4
_0211E124: .word unk_02099F38
_0211E128: .word unk_020A9C40
	arm_func_end FUN_ov50_0211dfec

	arm_func_start FUN_ov50_0211e12c
FUN_ov50_0211e12c: ; 0x0211E12C
	stmfd sp!, {r4, lr}
	mov r4, r0
	ldr r1, [r4, #0x10]
	cmp r1, #0xb
	addls pc, pc, r1, lsl #2
	b _0211E3CC
_0211E144: ; jump table
	b _0211E174 ; case 0
	b _0211E188 ; case 1
	b _0211E1C8 ; case 2
	b _0211E1F8 ; case 3
	b _0211E214 ; case 4
	b _0211E2F4 ; case 5
	b _0211E23C ; case 6
	b _0211E3CC ; case 7
	b _0211E290 ; case 8
	b _0211E2AC ; case 9
	b _0211E300 ; case 10
	b _0211E344 ; case 11
_0211E174:
	bl FUN_ov50_02119f00
	mov r0, r4
	bl FUN_ov50_02119f3c
	mov r0, #1
	str r0, [r4, #0x10]
_0211E188:
	add r0, r4, #0x18
	mov r1, #3
	bl FUN_ov16_020f330c
	cmp r0, #0
	beq _0211E3CC
	add r0, r4, #0x358
	mov r1, #6
	bl FUN_ov16_020f330c
	cmp r0, #0
	beq _0211E3CC
	mov r0, r4
	bl FUN_ov50_0211a020
	mov r0, r4
	bl FUN_ov50_0211a600
	mov r0, #2
	str r0, [r4, #0x10]
_0211E1C8:
	mov r0, r4
	bl FUN_ov50_0211a6c0
	cmp r0, #0
	beq _0211E3CC
	add r0, r4, #0xb4
	bl FUN_ov16_020f5868
	cmp r0, #0
	bne _0211E3CC
	mov r0, r4
	bl FUN_ov50_0211a868
	mov r0, #3
	str r0, [r4, #0x10]
_0211E1F8:
	mov r0, r4
	mov r1, #0
	bl FUN_ov50_0211c548
	mov r0, r4
	bl FUN_ov50_0211c62c
	mov r0, r4
	bl FUN_ov50_0211a8cc
_0211E214:
	mov r0, r4
	bl FUN_ov50_0211ab00
	cmp r0, #0
	beq _0211E23C
	ldr r1, [r4, #0x14]
	mov r2, #5
	mov r0, r4
	str r2, [r4, #0x10]
	bl FUN_ov50_0211a9e4
	b _0211E3CC
_0211E23C:
	ldr r0, _0211E3E8 ; =0x02099ED4
	ldr r0, [r0]
	bl FUN_ov16_0210e15c
	cmp r0, #0
	bne _0211E3CC
	mov r0, r4
	bl FUN_ov50_0211a710
	cmp r0, #0
	beq _0211E3CC
	ldr r1, [r4, #0x14]
	mov r0, r4
	bl FUN_ov50_0211a9e4
	mov r0, r4
	bl FUN_ov50_0211abb0
	mov r0, r4
	ldr r1, [r0]
	ldr r1, [r1, #0x4c]
	blx r1
	mov r0, #7
	str r0, [r4, #0x10]
	b _0211E3CC
_0211E290:
	ldr r1, [r0]
	ldr r1, [r1, #0x58]
	blx r1
	cmp r0, #0
	movne r0, #9
	strne r0, [r4, #0x10]
	b _0211E3CC
_0211E2AC:
	ldr r1, [r0]
	ldr r1, [r1, #0x58]
	blx r1
	cmp r0, #0
	bne _0211E3CC
	mov r0, r4
	bl FUN_ov50_0211def8
	mov r0, r4
	bl FUN_ov50_0211dfd4
	mov r0, r4
	ldr r1, [r0]
	ldr r1, [r1, #0x20]
	blx r1
	mov r0, r4
	ldr r1, [r0]
	ldr r1, [r1, #0x10]
	blx r1
	b _0211E3CC
_0211E2F4:
	mov r1, #1
	bl FUN_ov50_0211c548
	b _0211E3CC
_0211E300:
	ldr r0, _0211E3E8 ; =0x02099ED4
	ldr r0, [r0]
	bl FUN_ov16_0210e15c
	cmp r0, #0
	bne _0211E3CC
	mov r0, r4
	ldr r1, [r0]
	ldr r1, [r1, #0x58]
	blx r1
	cmp r0, #0
	beq _0211E3CC
	mov r0, r4
	ldr r1, [r0]
	ldr r1, [r1, #0x50]
	blx r1
	mov r0, #0xb
	str r0, [r4, #0x10]
_0211E344:
	mov r0, r4
	ldr r1, [r0]
	ldr r1, [r1, #0x58]
	blx r1
	cmp r0, #0
	beq _0211E368
	mov r0, #6
	bl FUN_ov16_020f153c
	b _0211E3CC
_0211E368:
	ldr r0, [r4, #8]
	cmp r0, #0x85
	mov r0, r4
	bne _0211E3A4
	bl FUN_ov50_0211def8
	mov r0, r4
	bl FUN_ov50_0211dfd4
	ldr r0, [r4, #4]
	mov r1, #1
	bl FUN_02041f2c
	ldr r0, [r4, #4]
	mov r1, #0
	mov r2, #0x85
	bl FUN_02041eac
	b _0211E3CC
_0211E3A4:
	bl FUN_ov50_0211def8
	mov r0, r4
	bl FUN_ov50_0211dfd4
	ldr r4, [r4, #4]
	mov r1, #0
	mov r0, r4
	bl FUN_02041f2c
	mov r0, r4
	mov r1, #1
	bl FUN_02041f2c
_0211E3CC:
	ldr r0, _0211E3EC ; =0x0209A110
	ldr r1, _0211E3E8 ; =0x02099ED4
	ldr r2, [r0]
	ldr r0, [r1]
	mov r1, r2, lsl #1
	bl FUN_ov16_0210e10c
	ldmfd sp!, {r4, pc}
_0211E3E8: .word unk_02099ED4
_0211E3EC: .word unk_0209A110
	arm_func_end FUN_ov50_0211e12c

	arm_func_start FUN_ov50_0211e3f0
FUN_ov50_0211e3f0: ; 0x0211E3F0
	bx lr
	arm_func_end FUN_ov50_0211e3f0

	arm_func_start FUN_ov50_0211e3f4
FUN_ov50_0211e3f4: ; 0x0211E3F4
	stmfd sp!, {r4, lr}
	mov r1, #0x4000000
	mov r4, r0
	ldr r0, [r1]
	ldr r2, [r4, #0x33c]
	bic r0, r0, #0x1f00
	orr r2, r0, r2, lsl #8
	add r0, r4, #0x3a8
	str r2, [r1]
	bl FUN_0206c270
	ldr r0, _0211E470 ; =0x0209A0AC
	bl FUN_ov16_020efa04
	mov r0, #2
	mov r1, #0x10
	bl FUN_ov16_020f1aec
	ldr r0, _0211E474 ; =0x020A9C40
	mov r1, #0x67
	mov r2, #0
	bl FUN_020460a8
	ldr r0, _0211E478 ; =0x02099EB4
	ldr r0, [r0]
	bl FUN_ov16_0210e9d8 ; may be ov17
	ldr r0, _0211E47C ; =0x02099ED4
	ldr r0, [r0]
	bl FUN_ov16_0210e0d8
	mov r0, r4
	bl FUN_ov50_0211a4bc
	ldr r0, _0211E480 ; =0x02099F38
	ldr r0, [r0]
	bl FUN_ov16_021123c4
	ldmfd sp!, {r4, pc}
_0211E470: .word unk_0209A0AC
_0211E474: .word unk_020A9C40
_0211E478: .word unk_02099EB4
_0211E47C: .word unk_02099ED4
_0211E480: .word unk_02099F38
	arm_func_end FUN_ov50_0211e3f4

	arm_func_start FUN_ov50_0211e484
FUN_ov50_0211e484: ; 0x0211E484
	stmfd sp!, {r4, lr}
	mov r4, r0
	add r0, r4, #0x3a8
	bl FUN_0206c110
	mov r0, r4
	bl operator_delete
	mov r0, r4
	ldmfd sp!, {r4, pc}
	arm_func_end FUN_ov50_0211e484

	arm_func_start FUN_ov50_0211e4a4
FUN_ov50_0211e4a4: ; 0x0211E4A4
	stmfd sp!, {r4, lr}
	mov r4, r0
	add r0, r4, #0x3a8
	bl FUN_0206c110
	mov r0, r4
	ldmfd sp!, {r4, pc}
	arm_func_end FUN_ov50_0211e4a4

	arm_func_start FUN_ov50_0211e4bc
FUN_ov50_0211e4bc: ; 0x0211E4BC
	stmfd sp!, {r3, r4, r5, lr}
	mov r5, #0x2000
	mov r0, r5
	bl FX_Sqrt
	ldr r4, _0211E504 ; =0x0211E548
	str r0, [r4, #0xc]
	ldr r0, _0211E508 ; =0x00009CCD
	bl FX_Sqrt
	mov r1, #0x800
	str r0, [r4, #8]
	ldr r0, _0211E50C ; =0x0000EA3C
	str r1, [r4, #0x18]
	str r0, [r4, #0x14]
	add r0, r5, #0x4e0000
	str r0, [r4]
	add r0, r1, #0x840000
	str r0, [r4, #0x10]
	ldmfd sp!, {r3, r4, r5, pc}
_0211E504: .word ov50_0211E548
_0211E508: .word 0x00009CCD
_0211E50C: .word 0x0000EA3C
	arm_func_end FUN_ov50_0211e4bc

	.section .sinit, 4
ov50_0211E510:
	.word FUN_ov50_0211e4bc

	.data
	.byte 0x00, 0x00, 0x00, 0x00, 0x82, 0x54, 0x00, 0x00, 0x82, 0x53, 0x00, 0x00, 0x82, 0x57, 0x00, 0x00
	.byte 0x82, 0x50, 0x00, 0x00, 0x82, 0x51, 0x00, 0x00, 0x82, 0x56, 0x00, 0x00, 0x82, 0x52, 0x00, 0x00
	.byte 0x82, 0x58, 0x00, 0x00, 0x82, 0x55, 0x00, 0x00
	.global ov50_0211E548
ov50_0211E548:
	.byte 0x00, 0x00, 0x00, 0x00, 0xBC, 0xE5, 0x11, 0x02
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x0C, 0xE7, 0x11, 0x02, 0xC4, 0xE5, 0x11, 0x02
	.global ov50_0211E56C
ov50_0211E56C:
	.byte 0xE8, 0xE5, 0x11, 0x02
	.byte 0xCC, 0xE5, 0x11, 0x02, 0xDC, 0xE5, 0x11, 0x02, 0xFC, 0xE6, 0x11, 0x02, 0xB4, 0xE5, 0x11, 0x02
	.global ov50_0211E580
ov50_0211E580:
	.byte 0x1C, 0xE7, 0x11, 0x02, 0x30, 0xE7, 0x11, 0x02, 0xD4, 0xE5, 0x11, 0x02
	.global ov50_0211E58C
ov50_0211E58C:
	.byte 0x20, 0xE5, 0x11, 0x02
	.byte 0x30, 0xE5, 0x11, 0x02, 0x34, 0xE5, 0x11, 0x02, 0x3C, 0xE5, 0x11, 0x02, 0x28, 0xE5, 0x11, 0x02
	.byte 0x24, 0xE5, 0x11, 0x02, 0x44, 0xE5, 0x11, 0x02, 0x38, 0xE5, 0x11, 0x02, 0x2C, 0xE5, 0x11, 0x02
	.byte 0x40, 0xE5, 0x11, 0x02, 0x81, 0x48, 0x81, 0x48, 0x81, 0x48, 0x00, 0x00, 0x81, 0x48, 0x81, 0x48
	.byte 0x81, 0x48, 0x00, 0x00, 0x82, 0xE0, 0x82, 0xC7, 0x82, 0xE9, 0x00, 0x00, 0x82, 0xE2, 0x82, 0xDF
	.byte 0x82, 0xE9, 0x00, 0x00, 0x82, 0xE2, 0x82, 0xDF, 0x82, 0xE9, 0x00, 0x00, 0x83, 0x58, 0x83, 0x4A
	.byte 0x83, 0x45, 0x83, 0x67, 0x00, 0x00, 0x00, 0x00, 0x82, 0xAF, 0x82, 0xC1, 0x82, 0xC4, 0x82, 0xA2
	.byte 0x00, 0x00, 0x00, 0x00, 0x73, 0x63, 0x64, 0x6E, 0x5F, 0x62, 0x30, 0x32, 0x00, 0x00, 0x00, 0x00
	.byte 0x73, 0x63, 0x64, 0x6E, 0x5F, 0x62, 0x30, 0x34, 0x00, 0x00, 0x00, 0x00, 0x73, 0x63, 0x64, 0x6E
	.byte 0x5F, 0x63, 0x30, 0x30, 0x00, 0x00, 0x00, 0x00, 0x73, 0x63, 0x64, 0x6E, 0x5F, 0x63, 0x30, 0x31
	.byte 0x00, 0x00, 0x00, 0x00, 0x73, 0x63, 0x64, 0x6E, 0x5F, 0x63, 0x30, 0x32, 0x00, 0x00, 0x00, 0x00
	.byte 0x73, 0x63, 0x64, 0x6E, 0x5F, 0x62, 0x30, 0x35, 0x00, 0x00, 0x00, 0x00, 0x73, 0x63, 0x64, 0x6E
	.byte 0x5F, 0x77, 0x30, 0x30, 0x00, 0x00, 0x00, 0x00, 0x73, 0x63, 0x64, 0x6E, 0x5F, 0x77, 0x30, 0x31
	.byte 0x00, 0x00, 0x00, 0x00, 0x73, 0x63, 0x64, 0x6E, 0x5F, 0x77, 0x30, 0x32, 0x00, 0x00, 0x00, 0x00
	.byte 0x73, 0x63, 0x64, 0x6E, 0x5F, 0x77, 0x30, 0x34, 0x00, 0x00, 0x00, 0x00, 0x73, 0x63, 0x64, 0x6E
	.byte 0x5F, 0x77, 0x30, 0x35, 0x00, 0x00, 0x00, 0x00, 0x73, 0x63, 0x64, 0x6E, 0x5F, 0x77, 0x30, 0x36
	.byte 0x00, 0x00, 0x00, 0x00, 0x73, 0x63, 0x64, 0x6E, 0x5F, 0x62, 0x30, 0x30, 0x00, 0x00, 0x00, 0x00
	.byte 0x73, 0x63, 0x64, 0x6E, 0x5F, 0x77, 0x30, 0x37, 0x00, 0x00, 0x00, 0x00, 0x73, 0x63, 0x64, 0x6E
	.byte 0x5F, 0x77, 0x30, 0x33, 0x00, 0x00, 0x00, 0x00, 0x73, 0x63, 0x64, 0x6E, 0x5F, 0x77, 0x30, 0x38
	.byte 0x00, 0x00, 0x00, 0x00, 0x73, 0x63, 0x64, 0x6E, 0x5F, 0x77, 0x30, 0x39, 0x00, 0x00, 0x00, 0x00
	.byte 0x73, 0x63, 0x64, 0x6E, 0x5F, 0x77, 0x31, 0x30, 0x00, 0x00, 0x00, 0x00, 0x73, 0x63, 0x64, 0x6E
	.byte 0x5F, 0x6E, 0x30, 0x30, 0x00, 0x00, 0x00, 0x00, 0x73, 0x63, 0x64, 0x6E, 0x5F, 0x77, 0x31, 0x31
	.byte 0x00, 0x00, 0x00, 0x00, 0x73, 0x63, 0x64, 0x6E, 0x5F, 0x77, 0x31, 0x32, 0x00, 0x00, 0x00, 0x00
	.byte 0x73, 0x63, 0x64, 0x6E, 0x5F, 0x77, 0x31, 0x34, 0x00, 0x00, 0x00, 0x00, 0x82, 0xD9, 0x82, 0xA9
	.byte 0x82, 0xF0, 0x82, 0xB3, 0x82, 0xAA, 0x82, 0xB7, 0x00, 0x00, 0x00, 0x00, 0x82, 0xD9, 0x82, 0xA9
	.byte 0x82, 0xF0, 0x82, 0xB3, 0x82, 0xAA, 0x82, 0xB7, 0x00, 0x00, 0x00, 0x00, 0x82, 0xB6, 0x82, 0xE5
	.byte 0x82, 0xA4, 0x82, 0xAF, 0x82, 0xF1, 0x82, 0xBB, 0x82, 0xCC, 0x82, 0xDC, 0x82, 0xDC, 0x00, 0x00
	.byte 0x82, 0xB6, 0x82, 0xE5, 0x82, 0xA4, 0x82, 0xAF, 0x82, 0xF1, 0x82, 0xD6, 0x82, 0xF1, 0x82, 0xB1
	.byte 0x82, 0xA4, 0x00, 0x00
	.global ov50_0211E744
ov50_0211E744:
	.byte 0x84, 0xE6, 0x11, 0x02, 0xF4, 0xE5, 0x11, 0x02, 0x00, 0xE6, 0x11, 0x02
	.byte 0x30, 0xE6, 0x11, 0x02, 0x0C, 0xE6, 0x11, 0x02, 0x18, 0xE6, 0x11, 0x02, 0x24, 0xE6, 0x11, 0x02
	.byte 0xCC, 0xE6, 0x11, 0x02, 0x3C, 0xE6, 0x11, 0x02, 0x48, 0xE6, 0x11, 0x02, 0x54, 0xE6, 0x11, 0x02
	.byte 0x9C, 0xE6, 0x11, 0x02, 0x60, 0xE6, 0x11, 0x02, 0x6C, 0xE6, 0x11, 0x02, 0x78, 0xE6, 0x11, 0x02
	.byte 0x90, 0xE6, 0x11, 0x02, 0xA8, 0xE6, 0x11, 0x02, 0xB4, 0xE6, 0x11, 0x02, 0xC0, 0xE6, 0x11, 0x02
	.byte 0xD8, 0xE6, 0x11, 0x02, 0xE4, 0xE6, 0x11, 0x02, 0xF0, 0xE6, 0x11, 0x02, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00
	.global ov50_0211E7A4
ov50_0211E7A4:
	.byte 0xA4, 0xE4, 0x11, 0x02, 0x84, 0xE4, 0x11, 0x02, 0x50, 0xD5, 0x11, 0x02
	.byte 0x74, 0xDB, 0x11, 0x02, 0xEC, 0xDF, 0x11, 0x02, 0x08, 0xB2, 0x02, 0x02, 0x2C, 0xE1, 0x11, 0x02
	.byte 0xF0, 0xE3, 0x11, 0x02, 0xF4, 0xE3, 0x11, 0x02, 0x04, 0xB2, 0x02, 0x02, 0x00, 0xB2, 0x02, 0x02
	.byte 0xF8, 0xB1, 0x02, 0x02, 0xF0, 0xB1, 0x02, 0x02, 0xE8, 0xB1, 0x02, 0x02, 0xE0, 0xB1, 0x02, 0x02
	.byte 0x20, 0xB3, 0x02, 0x02, 0x10, 0xB3, 0x02, 0x02, 0x04, 0xB3, 0x02, 0x02, 0xF8, 0xB2, 0x02, 0x02
	.byte 0xE8, 0xB2, 0x02, 0x02, 0xD8, 0xB2, 0x02, 0x02, 0xC8, 0xB2, 0x02, 0x02, 0xBC, 0xB2, 0x02, 0x02
	.byte 0xB0, 0xB2, 0x02, 0x02, 0xD8, 0xB1, 0x02, 0x02, 0xD0, 0xB1, 0x02, 0x02, 0xC8, 0xB1, 0x02, 0x02
	.global ov50_0211E810
ov50_0211E810:
	.byte 0x2F, 0x64, 0x61, 0x74, 0x61, 0x5F, 0x69, 0x7A, 0x2F, 0x70, 0x69, 0x63, 0x33, 0x64, 0x2F, 0x73
	.byte 0x63, 0x6F, 0x75, 0x74, 0x2E, 0x53, 0x50, 0x4C, 0x00, 0x00, 0x00, 0x00
	.global ov50_0211E82C
ov50_0211E82C:
	.byte 0x2F, 0x64, 0x61, 0x74
	.byte 0x61, 0x5F, 0x69, 0x7A, 0x2F, 0x70, 0x69, 0x63, 0x33, 0x64, 0x2F, 0x69, 0x68, 0x2E, 0x70, 0x6B
	.byte 0x68, 0x00, 0x00, 0x00
	.global ov50_0211E844
ov50_0211E844:
	.byte 0x2F, 0x64, 0x61, 0x74, 0x61, 0x5F, 0x69, 0x7A, 0x2F, 0x6C, 0x6F, 0x67
	.byte 0x69, 0x63, 0x2F, 0x53, 0x63, 0x6F, 0x75, 0x74, 0x44, 0x61, 0x74, 0x61, 0x2E, 0x64, 0x61, 0x74
	.byte 0x00, 0x00, 0x00, 0x00
	.global ov50_0211E864
ov50_0211E864:
	.byte 0x2F, 0x64, 0x61, 0x74, 0x61, 0x5F, 0x69, 0x7A, 0x2F, 0x70, 0x69, 0x63
	.byte 0x32, 0x64, 0x2F, 0x6D, 0x65, 0x6E, 0x75, 0x2F, 0x73, 0x63, 0x64, 0x6E, 0x5F, 0x62, 0x67, 0x30
	.byte 0x30, 0x2E, 0x70, 0x61, 0x63, 0x5F, 0x00, 0x00
	.global ov50_0211E888
ov50_0211E888:
	.byte 0x2F, 0x64, 0x61, 0x74, 0x61, 0x5F, 0x69, 0x7A
	.byte 0x2F, 0x6C, 0x6F, 0x67, 0x69, 0x63, 0x2F, 0x63, 0x6C, 0x75, 0x62, 0x69, 0x6E, 0x66, 0x6F, 0x2E
	.byte 0x64, 0x61, 0x74, 0x00
	.global ov50_0211E8A4
ov50_0211E8A4:
	.byte 0x2F, 0x64, 0x61, 0x74, 0x61, 0x5F, 0x69, 0x7A, 0x2F, 0x6C, 0x6F, 0x67
	.byte 0x69, 0x63, 0x2F, 0x73, 0x63, 0x68, 0x69, 0x6E, 0x66, 0x6F, 0x2E, 0x64, 0x61, 0x74, 0x00, 0x00
	.global ov50_0211E8C0
ov50_0211E8C0:
	.byte 0x2F, 0x64, 0x61, 0x74, 0x61, 0x5F, 0x69, 0x7A, 0x2F, 0x66, 0x61, 0x63, 0x65, 0x32, 0x64, 0x2F
	.byte 0x66, 0x61, 0x63, 0x2E, 0x70, 0x6B, 0x68, 0x00
	.global ov50_0211E8D8
ov50_0211E8D8:
	.byte 0x2F, 0x64, 0x61, 0x74, 0x61, 0x5F, 0x69, 0x7A
	.byte 0x2F, 0x66, 0x61, 0x63, 0x65, 0x32, 0x64, 0x2F, 0x66, 0x61, 0x62, 0x2E, 0x70, 0x6B, 0x68, 0x00
	.global ov50_0211E8F0
ov50_0211E8F0:
	.byte 0x2F, 0x64, 0x61, 0x74, 0x61, 0x5F, 0x69, 0x7A, 0x2F, 0x66, 0x61, 0x63, 0x65, 0x32, 0x64, 0x2F
	.byte 0x70, 0x70, 0x75, 0x2E, 0x70, 0x6B, 0x68, 0x00
	.global ov50_0211E908
ov50_0211E908:
	.byte 0x2F, 0x64, 0x61, 0x74, 0x61, 0x5F, 0x69, 0x7A
	.byte 0x2F, 0x70, 0x69, 0x63, 0x33, 0x64, 0x2F, 0x73, 0x63, 0x6F, 0x75, 0x74, 0x2E, 0x53, 0x50, 0x44
	.byte 0x00, 0x00, 0x00, 0x00
	.global ov50_0211E924
ov50_0211E924:
	.byte 0x25, 0x73, 0x2E, 0x70, 0x61, 0x63, 0x5F, 0x00
	.global ov50_0211E92C
ov50_0211E92C:
	.byte 0x2F, 0x64, 0x61, 0x74
	.byte 0x61, 0x5F, 0x69, 0x7A, 0x2F, 0x66, 0x61, 0x63, 0x65, 0x32, 0x64, 0x2F, 0x66, 0x61, 0x63, 0x2E
	.byte 0x70, 0x6B, 0x62, 0x00
	.global ov50_0211E944
ov50_0211E944:
	.byte 0x2F, 0x64, 0x61, 0x74, 0x61, 0x5F, 0x69, 0x7A, 0x2F, 0x66, 0x61, 0x63
	.byte 0x65, 0x32, 0x64, 0x2F, 0x66, 0x61, 0x62, 0x2E, 0x70, 0x6B, 0x62, 0x00
	.global ov50_0211E95C
ov50_0211E95C:
	.byte 0x2F, 0x64, 0x61, 0x74
	.byte 0x61, 0x5F, 0x69, 0x7A, 0x2F, 0x66, 0x61, 0x63, 0x65, 0x32, 0x64, 0x2F, 0x70, 0x70, 0x75, 0x2E
	.byte 0x70, 0x6B, 0x62, 0x00
	.global ov50_0211E974
ov50_0211E974:
	.byte 0x2F, 0x64, 0x61, 0x74, 0x61, 0x5F, 0x69, 0x7A, 0x2F, 0x70, 0x69, 0x63
	.byte 0x33, 0x64, 0x2F, 0x69, 0x68, 0x2E, 0x70, 0x6B, 0x62, 0x00, 0x00, 0x00
	.global ov50_0211E98C
ov50_0211E98C:
	.byte 0x95, 0x4B, 0x97, 0x76
	.byte 0x82, 0xE4, 0x82, 0xA4, 0x82, 0xB6, 0x82, 0xE5, 0x82, 0xA4, 0x82, 0x6F, 0x00, 0x00, 0x00, 0x00
	.global ov50_0211E9A0
ov50_0211E9A0:
	.byte 0x81, 0x40, 0x00, 0x00
	.global ov50_0211E9A4
ov50_0211E9A4:
	.byte 0x82, 0x4F, 0x00, 0x00
	.global ov50_0211E9A8
ov50_0211E9A8:
	.byte 0x82, 0x6F, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
