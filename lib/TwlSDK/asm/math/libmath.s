
	.include "asm/macros/function.inc"
	.include "libmath.inc"

	.text
	arm_func_start MATH_CountPopulation
MATH_CountPopulation: ; 0x02009D28
	ldr r1, _02009D60 ; =0x55555555
	ldr r2, _02009D64 ; =0x33333333
	and r1, r1, r0, lsr #1
	sub r0, r0, r1
	and r1, r0, r2
	and r0, r2, r0, lsr #2
	add r1, r1, r0
	ldr r0, _02009D68 ; =0x0F0F0F0F
	add r1, r1, r1, lsr #4
	and r0, r1, r0
	add r0, r0, r0, lsr #8
	add r0, r0, r0, lsr #16
	and r0, r0, #0xff
	bx lr
_02009D60: .word 0x55555555
_02009D64: .word 0x33333333
_02009D68: .word 0x0F0F0F0F
	arm_func_end MATH_CountPopulation

	arm_func_start ProcessBlock
ProcessBlock: ; 0x02009D6C
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, lr}
	ldmia r0, {r2, r3, r12}
	add r4, r0, #0x18
	ldr lr, [r0, #0xc]
	ldr r5, _0200A11C ; =t_0208ed44
	mov r7, r4
	mov r8, #0
_02009D88:
	mvn r1, r3
	and r6, r3, r12
	and r1, r1, lr
	orr r1, r6, r1
	ldr r6, [r7]
	add r1, r2, r1
	ldr r2, [r5]
	add r1, r6, r1
	add r2, r2, r1
	mov r1, r2, lsr #0x19
	orr r1, r1, r2, lsl #7
	add r2, r3, r1
	mvn r1, r2
	and r6, r2, r3
	and r1, r1, r12
	orr r1, r6, r1
	ldr r6, [r7, #4]
	add r1, lr, r1
	ldr r9, [r5, #4]
	add r1, r6, r1
	add r6, r9, r1
	mov r1, r6, lsr #0x14
	orr r1, r1, r6, lsl #12
	add lr, r2, r1
	mvn r1, lr
	and r6, lr, r2
	and r1, r1, r3
	orr r1, r6, r1
	ldr r9, [r7, #8]
	add r6, r12, r1
	ldr r1, [r7, #0xc]
	add r9, r9, r6
	ldr r10, [r5, #8]
	ldr r6, [r5, #0xc]
	add r10, r10, r9
	mov r9, r10, lsr #0xf
	orr r9, r9, r10, lsl #17
	add r12, lr, r9
	add r5, r5, #0x10
	add r7, r7, #0x10
	and r10, r12, lr
	mvn r9, r12
	and r9, r9, r2
	orr r9, r10, r9
	add r3, r3, r9
	add r1, r1, r3
	add r3, r6, r1
	mov r1, r3, lsr #0xa
	orr r1, r1, r3, lsl #22
	add r3, r12, r1
	add r8, r8, #1
	cmp r8, #4
	blt _02009D88
	ldr r1, _0200A120 ; =k_0208ec84
	mov r6, #0
_02009E64:
	mvn r7, lr
	ldr r9, [r1]
	and r8, r3, lr
	and r7, r12, r7
	orr r7, r8, r7
	ldr r8, [r4, r9, lsl #2]
	add r2, r2, r7
	ldr r7, [r5]
	add r2, r8, r2
	add r7, r7, r2
	mov r2, r7, lsr #0x1b
	orr r2, r2, r7, lsl #5
	add r2, r3, r2
	mvn r8, r12
	ldr r7, [r1, #4]
	and r9, r2, r12
	and r8, r3, r8
	orr r10, r9, r8
	mvn r8, r3
	ldr r9, [r1, #8]
	ldr r11, [r4, r7, lsl #2]
	add r7, lr, r10
	add r7, r11, r7
	ldr r10, [r5, #4]
	ldr r9, [r4, r9, lsl #2]
	add r10, r10, r7
	ldr r7, [r1, #0xc]
	and r8, r2, r8
	ldr r7, [r4, r7, lsl #2]
	mov r11, r10, lsr #0x17
	orr r10, r11, r10, lsl #9
	add lr, r2, r10
	ldr r10, [r5, #8]
	and r11, lr, r3
	orr r8, r11, r8
	add r8, r12, r8
	add r8, r9, r8
	add r9, r10, r8
	mov r8, r9, lsr #0x12
	orr r8, r8, r9, lsl #14
	add r12, lr, r8
	mvn r8, r2
	and r9, lr, r8
	ldr r8, [r5, #0xc]
	add r5, r5, #0x10
	add r1, r1, #0x10
	and r10, r12, r2
	orr r9, r10, r9
	add r3, r3, r9
	add r3, r7, r3
	add r7, r8, r3
	mov r3, r7, lsr #0xc
	orr r3, r3, r7, lsl #20
	add r3, r12, r3
	add r6, r6, #1
	cmp r6, #4
	blt _02009E64
	mov r6, #0
_02009F4C:
	ldr r8, [r1]
	eor r7, r3, r12
	eor r7, lr, r7
	ldr r8, [r4, r8, lsl #2]
	add r2, r2, r7
	ldr r7, [r5]
	add r2, r8, r2
	add r7, r7, r2
	mov r2, r7, lsr #0x1c
	orr r2, r2, r7, lsl #4
	add r2, r3, r2
	ldr r8, [r1, #4]
	eor r7, r2, r3
	eor r7, r12, r7
	ldr r8, [r4, r8, lsl #2]
	add r7, lr, r7
	ldr r9, [r1, #8]
	ldr r10, [r5, #4]
	add r7, r8, r7
	add r8, r10, r7
	mov r7, r8, lsr #0x15
	orr r7, r7, r8, lsl #11
	add lr, r2, r7
	eor r8, lr, r2
	ldr r7, [r1, #0xc]
	ldr r9, [r4, r9, lsl #2]
	eor r8, r3, r8
	add r8, r12, r8
	add r9, r9, r8
	ldr r10, [r5, #8]
	ldr r8, [r4, r7, lsl #2]
	add r9, r10, r9
	mov r7, r9, lsr #0x10
	orr r7, r7, r9, lsl #16
	add r12, lr, r7
	eor r7, r12, lr
	eor r7, r2, r7
	add r3, r3, r7
	add r3, r8, r3
	ldr r7, [r5, #0xc]
	add r5, r5, #0x10
	add r7, r7, r3
	add r1, r1, #0x10
	mov r3, r7, lsr #9
	orr r3, r3, r7, lsl #23
	add r3, r12, r3
	add r6, r6, #1
	cmp r6, #4
	blt _02009F4C
	mov r8, #0
_0200A014:
	mvn r6, lr
	ldr r7, [r1]
	orr r6, r3, r6
	eor r6, r12, r6
	ldr r7, [r4, r7, lsl #2]
	add r2, r2, r6
	ldr r6, [r5]
	add r2, r7, r2
	add r6, r6, r2
	mov r2, r6, lsr #0x1a
	orr r2, r2, r6, lsl #6
	add r2, r3, r2
	mvn r6, r12
	ldr r9, [r1, #4]
	orr r6, r2, r6
	eor r7, r3, r6
	ldr r6, [r1, #8]
	ldr r9, [r4, r9, lsl #2]
	add r7, lr, r7
	ldr r10, [r5, #4]
	add r7, r9, r7
	add r9, r10, r7
	mov r7, r9, lsr #0x16
	orr r9, r7, r9, lsl #10
	ldr r7, [r1, #0xc]
	add lr, r2, r9
	mvn r9, r3
	ldr r6, [r4, r6, lsl #2]
	orr r9, lr, r9
	eor r9, r2, r9
	add r9, r12, r9
	add r9, r6, r9
	ldr r10, [r5, #8]
	ldr r6, [r4, r7, lsl #2]
	add r9, r10, r9
	mov r7, r9, lsr #0x11
	orr r9, r7, r9, lsl #15
	ldr r7, [r5, #0xc]
	add r12, lr, r9
	add r5, r5, #0x10
	add r1, r1, #0x10
	mvn r9, r2
	orr r9, r12, r9
	eor r9, lr, r9
	add r3, r3, r9
	add r3, r6, r3
	add r6, r7, r3
	mov r3, r6, lsr #0xb
	orr r3, r3, r6, lsl #21
	add r3, r12, r3
	add r8, r8, #1
	cmp r8, #4
	blt _0200A014
	ldr r6, [r0]
	ldr r5, [r0, #4]
	ldr r4, [r0, #8]
	ldr r1, [r0, #0xc]
	add r6, r6, r2
	add r3, r5, r3
	add r2, r4, r12
	add r1, r1, lr
	str r6, [r0]
	str r3, [r0, #4]
	str r2, [r0, #8]
	str r1, [r0, #0xc]
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_0200A11C: .word t_0208ed44
_0200A120: .word k_0208ec84
	arm_func_end ProcessBlock

	arm_func_start MATH_MD5Init
MATH_MD5Init: ; 0x0200A124
	stmfd sp!, {r3, lr}
	ldr lr, _0200A158 ; =0x67452301
	mov r2, #0
	ldr r12, _0200A15C ; =0xEFCDAB89
	ldr r3, _0200A160 ; =0x98BADCFE
	ldr r1, _0200A164 ; =0x10325476
	str lr, [r0]
	str r12, [r0, #4]
	str r3, [r0, #8]
	str r1, [r0, #0xc]
	str r2, [r0, #0x10]
	str r2, [r0, #0x14]
	ldmfd sp!, {r3, pc}
_0200A158: .word 0x67452301
_0200A15C: .word 0xEFCDAB89
_0200A160: .word 0x98BADCFE
_0200A164: .word 0x10325476
	arm_func_end MATH_MD5Init

	arm_func_start MATH_MD5Update
MATH_MD5Update: ; 0x0200A168
	stmfd sp!, {r4, r5, r6, r7, r8, lr}
	mov r7, r0
	ldr r4, [r7, #0x10]
	ldr r0, [r7, #0x14]
	mov r5, r2
	adds r12, r4, r5
	and r3, r4, #0x3f
	adc lr, r0, #0
	rsb r4, r3, #0x40
	mov r6, r1
	str r12, [r7, #0x10]
	str lr, [r7, #0x14]
	cmp r4, r5
	bls _0200A1BC
	cmp r5, #0
	ldmeqfd sp!, {r4, r5, r6, r7, r8, pc}
	add r1, r7, #0x18
	mov r0, r6
	add r1, r1, r3
	bl MI_CpuCopy8
	ldmfd sp!, {r4, r5, r6, r7, r8, pc}
_0200A1BC:
	add r1, r7, #0x18
	mov r0, r6
	mov r2, r4
	add r1, r1, r3
	bl MI_CpuCopy8
	mov r0, r7
	bl ProcessBlock
	sub r5, r5, r4
	mov r8, r5, lsr #6
	cmp r8, #0
	add r6, r6, r4
	ble _0200A218
	mov r4, #0x40
_0200A1F0:
	mov r0, r6
	mov r2, r4
	add r1, r7, #0x18
	bl MI_CpuCopy8
	mov r0, r7
	add r6, r6, #0x40
	bl ProcessBlock
	sub r8, r8, #1
	cmp r8, #0
	bgt _0200A1F0
_0200A218:
	ands r2, r5, #0x3f
	ldmeqfd sp!, {r4, r5, r6, r7, r8, pc}
	mov r0, r6
	add r1, r7, #0x18
	bl MI_CpuCopy8
	ldmfd sp!, {r4, r5, r6, r7, r8, pc}
	arm_func_end MATH_MD5Update

	arm_func_start MATH_MD5GetHash
MATH_MD5GetHash: ; 0x0200A230
	stmfd sp!, {r4, r5, r6, r7, r8, lr}
	mov r5, r0
	ldr r2, [r5, #0x14]
	mov r4, r1
	ldr r12, [r5, #0x10]
	mov r7, r2, lsl #3
	ldr r1, _0200A2E0 ; =padding_0208ec80
	mov r2, #1
	orr r7, r7, r12, lsr #29
	mov r6, r12, lsl #3
	bl MATH_MD5Update
	ldr r0, [r5, #0x10]
	mov r1, #0
	and r8, r0, #0x3f
	rsb r2, r8, #0x40
	cmp r2, #8
	bhs _0200A290
	add r0, r5, #0x18
	add r0, r0, r8
	mov r8, r1
	bl MI_CpuFill8
	mov r0, r5
	bl ProcessBlock
	mov r2, #0x40
_0200A290:
	cmp r2, #8
	bls _0200A2AC
	add r0, r5, #0x18
	add r0, r0, r8
	sub r2, r2, #8
	mov r1, #0
	bl MI_CpuFill8
_0200A2AC:
	mov r0, r5
	str r6, [r5, #0x50]
	str r7, [r5, #0x54]
	bl ProcessBlock
	mov r0, r5
	mov r1, r4
	mov r2, #0x10
	bl MI_CpuCopy8
	mov r0, r5
	mov r1, #0
	mov r2, #0x58
	bl MI_CpuFill8
	ldmfd sp!, {r4, r5, r6, r7, r8, pc}
_0200A2E0: .word padding_0208ec80
	arm_func_end MATH_MD5GetHash

	arm_func_start MATHi_SHA1ProcessBlockForOverlay
MATHi_SHA1ProcessBlockForOverlay: ; 0x0200A2E4
	stmfd sp!, {r4, r5, r6, lr}
	mov r6, r0
	ldr r4, [r6, #0x2c]
	mov r1, #0
	ldr r5, [r6, #0x4c]
	str r1, [r6, #0x2c]
	str r1, [r6, #0x4c]
	bl MATHi_SHA1ProcessBlock
	str r4, [r6, #0x2c]
	str r5, [r6, #0x4c]
	ldmfd sp!, {r4, r5, r6, pc}
	arm_func_end MATHi_SHA1ProcessBlockForOverlay

	arm_func_start MATHi_SHA1Fill
MATHi_SHA1Fill: ; 0x0200A310
	stmfd sp!, {r4, r5, r6, r7, r8, r9, r10, lr}
	movs r7, r2
	mov r9, r0
	mov r8, r1
	ldmeqfd sp!, {r4, r5, r6, r7, r8, r9, r10, pc}
	ldr r10, _0200A39C ; =MATHi_SHA1ProcessMessageBlockFunc
	add r5, r9, #0x14
	mov r4, #0
_0200A330:
	ldr r0, [r9, #0x54]
	mov r1, r8
	rsb r6, r0, #0x40
	cmp r6, r7
	movhi r6, r7
	mov r2, r6
	add r0, r5, r0
	bl MI_CpuFill8
	ldr r0, [r9, #0x54]
	sub r7, r7, r6
	add r0, r0, r6
	str r0, [r9, #0x54]
	cmp r0, #0x40
	blo _0200A390
	ldr r1, [r10]
	mov r0, r9
	blx r1
	ldr r0, [r9, #0x58]
	str r4, [r9, #0x54]
	adds r0, r0, #1
	str r0, [r9, #0x58]
	ldreq r0, [r9, #0x5c]
	addeq r0, r0, #1
	streq r0, [r9, #0x5c]
_0200A390:
	cmp r7, #0
	bne _0200A330
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, pc}
_0200A39C: .word MATHi_SHA1ProcessMessageBlockFunc
	arm_func_end MATHi_SHA1Fill

	arm_func_start MATHi_SetOverlayTableMode
MATHi_SetOverlayTableMode: ; 0x0200A3A0
	ldr r1, _0200A3CC ; =MATHi_OverlayTableMode
	cmp r0, #0
	ldr r2, [r1]
	str r0, [r1]
	ldrne r1, _0200A3D0 ; =MATHi_SHA1ProcessBlockForOverlay
	ldrne r0, _0200A3D4 ; =MATHi_SHA1ProcessMessageBlockFunc
	ldreq r1, _0200A3D8 ; =MATHi_SHA1ProcessBlock
	ldreq r0, _0200A3D4 ; =MATHi_SHA1ProcessMessageBlockFunc
	str r1, [r0]
	mov r0, r2
	bx lr
_0200A3CC: .word MATHi_OverlayTableMode
_0200A3D0: .word MATHi_SHA1ProcessBlockForOverlay
_0200A3D4: .word MATHi_SHA1ProcessMessageBlockFunc
_0200A3D8: .word MATHi_SHA1ProcessBlock
	arm_func_end MATHi_SetOverlayTableMode

	arm_func_start MATH_SHA1Init
MATH_SHA1Init: ; 0x0200A3DC
	stmfd sp!, {r4, lr}
	ldr lr, _0200A41C ; =0x67452301
	mov r4, #0
	ldr r12, _0200A420 ; =0xEFCDAB89
	ldr r3, _0200A424 ; =0x98BADCFE
	ldr r2, _0200A428 ; =0x10325476
	ldr r1, _0200A42C ; =0xC3D2E1F0
	str r4, [r0, #0x58]
	str r4, [r0, #0x5c]
	str r4, [r0, #0x54]
	str lr, [r0]
	str r12, [r0, #4]
	str r3, [r0, #8]
	str r2, [r0, #0xc]
	str r1, [r0, #0x10]
	ldmfd sp!, {r4, pc}
_0200A41C: .word 0x67452301
_0200A420: .word 0xEFCDAB89
_0200A424: .word 0x98BADCFE
_0200A428: .word 0x10325476
_0200A42C: .word 0xC3D2E1F0
	arm_func_end MATH_SHA1Init

	arm_func_start MATH_SHA1Update
MATH_SHA1Update: ; 0x0200A430
	stmfd sp!, {r4, r5, r6, r7, r8, r9, r10, lr}
	movs r7, r2
	mov r9, r0
	mov r8, r1
	ldmeqfd sp!, {r4, r5, r6, r7, r8, r9, r10, pc}
	ldr r10, _0200A4C0 ; =MATHi_SHA1ProcessMessageBlockFunc
	add r5, r9, #0x14
	mov r4, #0
_0200A450:
	ldr r1, [r9, #0x54]
	mov r0, r8
	rsb r6, r1, #0x40
	cmp r6, r7
	movhi r6, r7
	mov r2, r6
	add r1, r5, r1
	bl MI_CpuCopy8
	ldr r0, [r9, #0x54]
	add r8, r8, r6
	add r0, r0, r6
	str r0, [r9, #0x54]
	cmp r0, #0x40
	sub r7, r7, r6
	blo _0200A4B4
	ldr r1, [r10]
	mov r0, r9
	blx r1
	ldr r0, [r9, #0x58]
	str r4, [r9, #0x54]
	adds r0, r0, #1
	str r0, [r9, #0x58]
	ldreq r0, [r9, #0x5c]
	addeq r0, r0, #1
	streq r0, [r9, #0x5c]
_0200A4B4:
	cmp r7, #0
	bne _0200A450
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, pc}
_0200A4C0: .word MATHi_SHA1ProcessMessageBlockFunc
	arm_func_end MATH_SHA1Update

	arm_func_start MATH_SHA1GetHash
MATH_SHA1GetHash: ; 0x0200A4C4
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	sub sp, sp, #8
	mov r4, r0
	ldr r3, [r4, #0x54]
	ldr r2, [r4, #0x58]
	mov r3, r3, lsl #3
	add r7, r3, r2, lsl #9
	mov r5, r7, lsr #0x18
	mov r3, r7, lsr #8
	mov r6, r7, lsl #8
	mov r7, r7, lsl #0x18
	and r5, r5, #0xff
	and r3, r3, #0xff00
	and r6, r6, #0xff0000
	orr r3, r5, r3
	and r5, r7, #0xff000000
	orr r3, r6, r3
	orr r3, r5, r3
	str r3, [sp, #4]
	ldr r3, [r4, #0x5c]
	mov r2, r2, lsr #0x17
	add r6, r2, r3, lsl #9
	mov r3, r6, lsr #0x18
	mov r2, r6, lsr #8
	mov r5, r6, lsl #8
	mov r7, r6, lsl #0x18
	mov r6, r1
	and r3, r3, #0xff
	and r1, r2, #0xff00
	and r2, r5, #0xff0000
	orr r1, r3, r1
	and r3, r7, #0xff000000
	orr r1, r2, r1
	orr r2, r3, r1
	ldr r1, _0200A6B4 ; =padlead
	str r2, [sp]
	mov r2, #1
	bl MATH_SHA1Update
	ldr r0, [r4, #0x54]
	rsb r2, r0, #0x40
	cmp r2, #8
	bhs _0200A578
	ldr r1, _0200A6B8 ; =padalign
	mov r0, r4
	bl MATH_SHA1Update
_0200A578:
	ldr r1, [r4, #0x54]
	mov r0, r4
	rsb r2, r1, #0x38
	mov r1, #0
	bl MATHi_SHA1Fill
	add r1, sp, #0
	mov r0, r4
	mov r2, #8
	bl MATH_SHA1Update
	ldmia r4, {r5, r12}
	mov r1, r5, lsr #0x18
	and r7, r1, #0xff
	mov r1, r6
	mov r6, r5, lsl #0x18
	and lr, r6, #0xff000000
	mov r6, r5, lsl #8
	mov r5, r5, lsr #8
	and r5, r5, #0xff00
	and r6, r6, #0xff0000
	orr r5, r7, r5
	orr r5, r6, r5
	orr r5, lr, r5
	mov r6, r12, lsr #0x18
	str r5, [r4]
	mov r5, r12, lsr #8
	ldr r3, [r4, #8]
	and r6, r6, #0xff
	and r5, r5, #0xff00
	orr r6, r6, r5
	mov r5, r3, lsr #0x18
	and lr, r5, #0xff
	mov r5, r12, lsl #0x18
	and r7, r5, #0xff000000
	mov r5, r12, lsl #8
	and r5, r5, #0xff0000
	orr r5, r5, r6
	orr r6, r7, r5
	mov r5, r3, lsr #8
	and r5, r5, #0xff00
	ldr r2, [r4, #0xc]
	str r6, [r4, #4]
	mov r6, r2, lsr #0x18
	orr lr, lr, r5
	mov r5, r2, lsr #8
	ldr r0, [r4, #0x10]
	and r6, r6, #0xff
	and r5, r5, #0xff00
	orr r12, r6, r5
	mov r5, r0, lsr #0x18
	and r6, r5, #0xff
	mov r5, r3, lsl #0x18
	mov r3, r3, lsl #8
	and r3, r3, #0xff0000
	and r5, r5, #0xff000000
	orr r3, r3, lr
	orr r3, r5, r3
	str r3, [r4, #8]
	mov r3, r2, lsl #8
	mov r2, r2, lsl #0x18
	and lr, r2, #0xff000000
	and r2, r3, #0xff0000
	orr r2, r2, r12
	orr r3, lr, r2
	mov r5, r0, lsr #8
	mov r12, r0, lsl #8
	and r2, r5, #0xff00
	mov lr, r0, lsl #0x18
	orr r0, r6, r2
	and r5, r12, #0xff0000
	and r2, lr, #0xff000000
	orr r0, r5, r0
	orr r5, r2, r0
	mov r0, r4
	mov r2, #0x14
	str r3, [r4, #0xc]
	str r5, [r4, #0x10]
	bl MI_CpuCopy8
	add sp, sp, #8
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_0200A6B4: .word padlead
_0200A6B8: .word padalign
	arm_func_end MATH_SHA1GetHash

	arm_func_start MATH_CalcSHA1
MATH_CalcSHA1: ; 0x0200A6BC
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	sub sp, sp, #0x60
	add r4, sp, #0
	mov r7, r0
	mov r6, r1
	mov r5, r2
	mov r0, r4
	bl MATH_SHA1Init
	mov r0, r4
	mov r1, r6
	mov r2, r5
	bl MATH_SHA1Update
	mov r0, r4
	mov r1, r7
	bl MATH_SHA1GetHash
	add sp, sp, #0x60
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
	arm_func_end MATH_CalcSHA1

	arm_func_start MATH_CalcHMACSHA1
MATH_CalcHMACSHA1: ; 0x0200A700
	stmfd sp!, {r4, r5, r6, r7, r8, lr}
	sub sp, sp, #0x98
	ldr lr, _0200A784 ; =initializer_list_0208b984
	add r12, sp, #8
	mov r8, r0
	mov r7, r1
	mov r6, r2
	mov r5, r3
	mov r4, r12
	ldmia lr!, {r0, r1, r2, r3}
	stmia r12!, {r0, r1, r2, r3}
	ldmia lr, {r0, r1, r2}
	stmia r12, {r0, r1, r2}
	add lr, sp, #0x38
	add r12, sp, #0x24
	str lr, [sp, #0x10]
	ldr lr, _0200A788 ; =MATH_SHA1Init
	str r12, [sp, #0x14]
	ldr r12, _0200A78C ; =MATH_SHA1Update
	str lr, [sp, #0x18]
	ldr lr, _0200A790 ; =MATH_SHA1GetHash
	str r12, [sp, #0x1c]
	ldr r12, [sp, #0xb0]
	str lr, [sp, #0x20]
	str r12, [sp]
	mov r3, r5
	mov r0, r8
	mov r1, r7
	mov r2, r6
	str r4, [sp, #4]
	bl MATHi_CalcHMAC
	add sp, sp, #0x98
	ldmfd sp!, {r4, r5, r6, r7, r8, pc}
_0200A784: .word initializer_list_0208b984
_0200A788: .word MATH_SHA1Init
_0200A78C: .word MATH_SHA1Update
_0200A790: .word MATH_SHA1GetHash
	arm_func_end MATH_CalcHMACSHA1

	arm_func_start MATHi_CalcHMAC
MATHi_CalcHMAC: ; 0x0200A794
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, lr}
	sub sp, sp, #0xc0
	ldr r5, [sp, #0xe0]
	ldr r4, [sp, #0xe4]
	mov r8, r1
	movs r9, r0
	mov r7, r2
	cmpne r8, #0
	mov r6, r3
	cmpne r7, #0
	cmpne r6, #0
	cmpne r5, #0
	cmpne r4, #0
	addeq sp, sp, #0xc0
	ldmeqfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
	ldr r0, [r4, #4]
	cmp r5, r0
	bls _0200A814
	ldr r0, [r4, #8]
	ldr r1, [r4, #0x10]
	blx r1
	ldr r0, [r4, #8]
	ldr r3, [r4, #0x14]
	mov r1, r6
	mov r2, r5
	blx r3
	add r6, sp, #0x80
	ldr r0, [r4, #8]
	ldr r2, [r4, #0x18]
	mov r1, r6
	blx r2
	ldr r5, [r4]
_0200A814:
	cmp r5, #0
	mov r0, #0
	bls _0200A83C
	add r1, sp, #0x40
_0200A824:
	ldrb r2, [r6, r0]
	eor r2, r2, #0x36
	strb r2, [r1, r0]
	add r0, r0, #1
	cmp r0, r5
	blo _0200A824
_0200A83C:
	ldr r1, [r4, #4]
	cmp r0, r1
	bhs _0200A864
	mov r3, #0x36
	add r2, sp, #0x40
_0200A850:
	strb r3, [r2, r0]
	ldr r1, [r4, #4]
	add r0, r0, #1
	cmp r0, r1
	blo _0200A850
_0200A864:
	ldr r0, [r4, #8]
	ldr r1, [r4, #0x10]
	blx r1
	ldr r0, [r4, #8]
	ldr r2, [r4, #4]
	ldr r3, [r4, #0x14]
	add r1, sp, #0x40
	blx r3
	ldr r0, [r4, #8]
	ldr r3, [r4, #0x14]
	mov r1, r8
	mov r2, r7
	blx r3
	ldr r0, [r4, #8]
	ldr r1, [r4, #0xc]
	ldr r2, [r4, #0x18]
	blx r2
	cmp r5, #0
	mov r3, #0
	bls _0200A8D0
	add r0, sp, #0
_0200A8B8:
	ldrb r1, [r6, r3]
	eor r1, r1, #0x5c
	strb r1, [r0, r3]
	add r3, r3, #1
	cmp r3, r5
	blo _0200A8B8
_0200A8D0:
	ldr r0, [r4, #4]
	cmp r3, r0
	bhs _0200A8F8
	mov r2, #0x5c
	add r1, sp, #0
_0200A8E4:
	strb r2, [r1, r3]
	ldr r0, [r4, #4]
	add r3, r3, #1
	cmp r3, r0
	blo _0200A8E4
_0200A8F8:
	ldr r0, [r4, #8]
	ldr r1, [r4, #0x10]
	blx r1
	ldr r0, [r4, #8]
	ldr r2, [r4, #4]
	ldr r3, [r4, #0x14]
	add r1, sp, #0
	blx r3
	ldr r0, [r4, #8]
	ldr r1, [r4, #0xc]
	ldr r2, [r4]
	ldr r3, [r4, #0x14]
	blx r3
	ldr r0, [r4, #8]
	ldr r2, [r4, #0x18]
	mov r1, r9
	blx r2
	add sp, sp, #0xc0
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
	arm_func_end MATHi_CalcHMAC

	arm_func_start MATHi_CRC16InitTableRev
MATHi_CRC16InitTableRev: ; 0x0200A944
	stmfd sp!, {r3, lr}
	mov lr, #0
	mov r3, lr
_0200A950:
	mov r12, lr
	mov r2, r3
_0200A958:
	tst r12, #1
	eorne r12, r1, r12, lsr #1
	add r2, r2, #1
	moveq r12, r12, lsr #1
	cmp r2, #8
	blo _0200A958
	mov r2, lr, lsl #1
	add lr, lr, #1
	strh r12, [r0, r2]
	cmp lr, #0x100
	blo _0200A950
	ldmfd sp!, {r3, pc}
	arm_func_end MATHi_CRC16InitTableRev

	arm_func_start MATHi_CRC16UpdateRev
MATHi_CRC16UpdateRev: ; 0x0200A988
	stmfd sp!, {r4, lr}
	cmp r3, #0
	ldrh lr, [r1]
	mov r4, #0
	bls _0200A9C0
_0200A99C:
	ldrb r12, [r2], #1
	add r4, r4, #1
	cmp r4, r3
	eor r12, lr, r12
	mov r12, r12, lsl #0x18
	mov r12, r12, lsr #0x17
	ldrh r12, [r0, r12]
	eor lr, r12, lr, lsr #8
	blo _0200A99C
_0200A9C0:
	strh lr, [r1]
	ldmfd sp!, {r4, pc}
	arm_func_end MATHi_CRC16UpdateRev

	arm_func_start MATHi_CRC32InitTableRev
MATHi_CRC32InitTableRev: ; 0x0200A9C8
	stmfd sp!, {r3, lr}
	mov r12, #0
	mov r2, r12
_0200A9D4:
	mov r3, r12
	mov lr, r2
_0200A9DC:
	tst r3, #1
	eorne r3, r1, r3, lsr #1
	add lr, lr, #1
	moveq r3, r3, lsr #1
	cmp lr, #8
	blo _0200A9DC
	str r3, [r0, r12, lsl #2]
	add r12, r12, #1
	cmp r12, #0x100
	blo _0200A9D4
	ldmfd sp!, {r3, pc}
	arm_func_end MATHi_CRC32InitTableRev

	arm_func_start MATHi_CRC32UpdateRev
MATHi_CRC32UpdateRev: ; 0x0200AA08
	stmfd sp!, {r4, lr}
	cmp r3, #0
	ldr lr, [r1]
	mov r4, #0
	bls _0200AA3C
_0200AA1C:
	ldrb r12, [r2], #1
	add r4, r4, #1
	cmp r4, r3
	eor r12, lr, r12
	and r12, r12, #0xff
	ldr r12, [r0, r12, lsl #2]
	eor lr, r12, lr, lsr #8
	blo _0200AA1C
_0200AA3C:
	str lr, [r1]
	ldmfd sp!, {r4, pc}
	arm_func_end MATHi_CRC32UpdateRev

	arm_func_start MATH_CalcCRC16
MATH_CalcCRC16: ; 0x0200AA44
	stmfd sp!, {r3, lr}
	mov lr, r1
	mov r12, #0
	mov r3, r2
	add r1, sp, #0
	mov r2, lr
	strh r12, [sp]
	bl MATHi_CRC16UpdateRev
	ldrh r0, [sp]
	ldmfd sp!, {r3, pc}
	arm_func_end MATH_CalcCRC16

	arm_func_start MATH_CalcCRC32
MATH_CalcCRC32: ; 0x0200AA6C
	stmfd sp!, {r3, lr}
	mov lr, r1
	mvn r12, #0
	mov r3, r2
	add r1, sp, #0
	mov r2, lr
	str r12, [sp]
	bl MATHi_CRC32UpdateRev
	ldr r0, [sp]
	mvn r0, r0
	ldmfd sp!, {r3, pc}
_0200AA98: .word 0x5A827999
_0200AA9C: .word 0x6ED9EBA1
_0200AAA0: .word 0x8F1BBCDC
_0200AAA4: .word 0xCA62C1D6
	arm_func_end MATH_CalcCRC32

	arm_func_start MATHi_SHA1ProcessBlock
MATHi_SHA1ProcessBlock: ; 0x0200AAA8
	stmfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, r12, lr}
	mov r11, r0
	sub sp, sp, #0x40
	mov r12, sp
	mvn r3, #0xff00
	add r8, r11, #0x14
	mov r1, r12
	ldmia r8!, {r4, r5, r6, r7}
	mov r9, #0x10
_0200AACC:
	eor r2, r4, r4, ror #16
	and r2, r3, r2, lsr #8
	eor r4, r2, r4, ror #8
	eor r2, r5, r5, ror #16
	and r2, r3, r2, lsr #8
	eor r5, r2, r5, ror #8
	eor r2, r6, r6, ror #16
	and r2, r3, r2, lsr #8
	eor r6, r2, r6, ror #8
	eor r2, r7, r7, ror #16
	and r2, r3, r2, lsr #8
	eor r7, r2, r7, ror #8
	stmia r1!, {r4, r5, r6, r7}
	subs r9, r9, #4
	ldmneia r8!, {r4, r5, r6, r7}
	bne _0200AACC
	ldmia r11, {r4, r5, r6, r7, r8}
	ldr r12, _0200AA98 ; =0x5A827999
	mov r9, #0
_0200AB18:
	and r10, r5, r6
	mvn lr, r5
	and lr, lr, r7
	orr r10, r10, lr
	add r10, r10, r12
	and lr, r9, #0xf
	ldr lr, [sp, lr, lsl #2]
	add r10, r10, r8
	add r10, r10, lr
	add r10, r10, r4, ror #27
	mov r8, r7
	mov r7, r6
	mov r6, r5, ror #2
	mov r5, r4
	mov r4, r10
	add r9, r9, #1
	cmp r9, #0x10
	bne _0200AB18
_0200AB60:
	and r10, r5, r6
	mvn lr, r5
	and lr, lr, r7
	orr r10, r10, lr
	add r10, r10, r12
	sub r2, r9, #0x10
	and r2, r2, #0xf
	sub lr, r9, #0xe
	and lr, lr, #0xf
	ldr r3, [sp, r2, lsl #2]
	ldr r1, [sp, lr, lsl #2]
	sub lr, r9, #8
	eor r3, r3, r1
	and lr, lr, #0xf
	ldr r1, [sp, lr, lsl #2]
	sub r2, r9, #3
	eor r3, r3, r1
	and r2, r2, #0xf
	ldr r1, [sp, r2, lsl #2]
	and r2, r9, #0xf
	eor r3, r3, r1
	mov r3, r3, ror #0x1f
	str r3, [sp, r2, lsl #2]
	and lr, r9, #0xf
	ldr lr, [sp, lr, lsl #2]
	add r10, r10, r8
	add r10, r10, lr
	add r10, r10, r4, ror #27
	mov r8, r7
	mov r7, r6
	mov r6, r5, ror #2
	mov r5, r4
	mov r4, r10
	add r9, r9, #1
	cmp r9, #0x14
	bne _0200AB60
	ldr r12, _0200AA9C ; =0x6ED9EBA1
_0200ABF4:
	eor r10, r5, r6
	eor r10, r10, r7
	add r10, r10, r12
	sub r2, r9, #0x10
	and r2, r2, #0xf
	sub lr, r9, #0xe
	and lr, lr, #0xf
	ldr r3, [sp, r2, lsl #2]
	ldr r1, [sp, lr, lsl #2]
	sub lr, r9, #8
	eor r3, r3, r1
	and lr, lr, #0xf
	ldr r1, [sp, lr, lsl #2]
	sub r2, r9, #3
	eor r3, r3, r1
	and r2, r2, #0xf
	ldr r1, [sp, r2, lsl #2]
	and r2, r9, #0xf
	eor r3, r3, r1
	mov r3, r3, ror #0x1f
	str r3, [sp, r2, lsl #2]
	and lr, r9, #0xf
	ldr lr, [sp, lr, lsl #2]
	add r10, r10, r8
	add r10, r10, lr
	add r10, r10, r4, ror #27
	mov r8, r7
	mov r7, r6
	mov r6, r5, ror #2
	mov r5, r4
	mov r4, r10
	add r9, r9, #1
	cmp r9, #0x28
	bne _0200ABF4
	ldr r12, _0200AAA0 ; =0x8F1BBCDC
_0200AC80:
	and r10, r5, r6
	and lr, r5, r7
	orr r10, r10, lr
	and lr, r6, r7
	orr r10, r10, lr
	add r10, r10, r12
	sub r2, r9, #0x10
	and r2, r2, #0xf
	sub lr, r9, #0xe
	and lr, lr, #0xf
	ldr r3, [sp, r2, lsl #2]
	ldr r1, [sp, lr, lsl #2]
	sub lr, r9, #8
	eor r3, r3, r1
	and lr, lr, #0xf
	ldr r1, [sp, lr, lsl #2]
	sub r2, r9, #3
	eor r3, r3, r1
	and r2, r2, #0xf
	ldr r1, [sp, r2, lsl #2]
	and r2, r9, #0xf
	eor r3, r3, r1
	mov r3, r3, ror #0x1f
	str r3, [sp, r2, lsl #2]
	and lr, r9, #0xf
	ldr lr, [sp, lr, lsl #2]
	add r10, r10, r8
	add r10, r10, lr
	add r10, r10, r4, ror #27
	mov r8, r7
	mov r7, r6
	mov r6, r5, ror #2
	mov r5, r4
	mov r4, r10
	add r9, r9, #1
	cmp r9, #0x3c
	bne _0200AC80
	ldr r12, _0200AAA4 ; =0xCA62C1D6
_0200AD18:
	eor r10, r5, r6
	eor r10, r10, r7
	add r10, r10, r12
	sub r2, r9, #0x10
	and r2, r2, #0xf
	sub lr, r9, #0xe
	and lr, lr, #0xf
	ldr r3, [sp, r2, lsl #2]
	ldr r1, [sp, lr, lsl #2]
	sub lr, r9, #8
	eor r3, r3, r1
	and lr, lr, #0xf
	ldr r1, [sp, lr, lsl #2]
	sub r2, r9, #3
	eor r3, r3, r1
	and r2, r2, #0xf
	ldr r1, [sp, r2, lsl #2]
	and r2, r9, #0xf
	eor r3, r3, r1
	mov r3, r3, ror #0x1f
	str r3, [sp, r2, lsl #2]
	and lr, r9, #0xf
	ldr lr, [sp, lr, lsl #2]
	add r10, r10, r8
	add r10, r10, lr
	add r10, r10, r4, ror #27
	mov r8, r7
	mov r7, r6
	mov r6, r5, ror #2
	mov r5, r4
	mov r4, r10
	add r9, r9, #1
	cmp r9, #0x50
	bne _0200AD18
	ldmia r11, {r1, r2, r3, r9, r10}
	add r1, r1, r4
	add r2, r2, r5
	add r3, r3, r6
	add r9, r9, r7
	add r10, r10, r8
	stmia r11, {r1, r2, r3, r9, r10}
	add sp, sp, #0x40
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, r12, pc}
	arm_func_end MATHi_SHA1ProcessBlock

	.rodata
	.global padlead
padlead:
	.byte 0x80
	.global padalign
padalign:
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00
	.global initializer_list_0208b984
initializer_list_0208b984:
	.byte 0x14, 0x00, 0x00, 0x00, 0x40, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00

	.data
	.global padding_0208ec80
padding_0208ec80:
	.byte 0x80, 0x00, 0x00, 0x00
	.global k_0208ec84
k_0208ec84:
	.byte 0x01, 0x00, 0x00, 0x00, 0x06, 0x00, 0x00, 0x00, 0x0B, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x05, 0x00, 0x00, 0x00, 0x0A, 0x00, 0x00, 0x00, 0x0F, 0x00, 0x00, 0x00
	.byte 0x04, 0x00, 0x00, 0x00, 0x09, 0x00, 0x00, 0x00, 0x0E, 0x00, 0x00, 0x00, 0x03, 0x00, 0x00, 0x00
	.byte 0x08, 0x00, 0x00, 0x00, 0x0D, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x07, 0x00, 0x00, 0x00
	.byte 0x0C, 0x00, 0x00, 0x00, 0x05, 0x00, 0x00, 0x00, 0x08, 0x00, 0x00, 0x00, 0x0B, 0x00, 0x00, 0x00
	.byte 0x0E, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x04, 0x00, 0x00, 0x00, 0x07, 0x00, 0x00, 0x00
	.byte 0x0A, 0x00, 0x00, 0x00, 0x0D, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x03, 0x00, 0x00, 0x00
	.byte 0x06, 0x00, 0x00, 0x00, 0x09, 0x00, 0x00, 0x00, 0x0C, 0x00, 0x00, 0x00, 0x0F, 0x00, 0x00, 0x00
	.byte 0x02, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x07, 0x00, 0x00, 0x00, 0x0E, 0x00, 0x00, 0x00
	.byte 0x05, 0x00, 0x00, 0x00, 0x0C, 0x00, 0x00, 0x00, 0x03, 0x00, 0x00, 0x00, 0x0A, 0x00, 0x00, 0x00
	.byte 0x01, 0x00, 0x00, 0x00, 0x08, 0x00, 0x00, 0x00, 0x0F, 0x00, 0x00, 0x00, 0x06, 0x00, 0x00, 0x00
	.byte 0x0D, 0x00, 0x00, 0x00, 0x04, 0x00, 0x00, 0x00, 0x0B, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00
	.byte 0x09, 0x00, 0x00, 0x00
	.global t_0208ed44
t_0208ed44:
	.byte 0x78, 0xA4, 0x6A, 0xD7, 0x56, 0xB7, 0xC7, 0xE8, 0xDB, 0x70, 0x20, 0x24
	.byte 0xEE, 0xCE, 0xBD, 0xC1, 0xAF, 0x0F, 0x7C, 0xF5, 0x2A, 0xC6, 0x87, 0x47, 0x13, 0x46, 0x30, 0xA8
	.byte 0x01, 0x95, 0x46, 0xFD, 0xD8, 0x98, 0x80, 0x69, 0xAF, 0xF7, 0x44, 0x8B, 0xB1, 0x5B, 0xFF, 0xFF
	.byte 0xBE, 0xD7, 0x5C, 0x89, 0x22, 0x11, 0x90, 0x6B, 0x93, 0x71, 0x98, 0xFD, 0x8E, 0x43, 0x79, 0xA6
	.byte 0x21, 0x08, 0xB4, 0x49, 0x62, 0x25, 0x1E, 0xF6, 0x40, 0xB3, 0x40, 0xC0, 0x51, 0x5A, 0x5E, 0x26
	.byte 0xAA, 0xC7, 0xB6, 0xE9, 0x5D, 0x10, 0x2F, 0xD6, 0x53, 0x14, 0x44, 0x02, 0x81, 0xE6, 0xA1, 0xD8
	.byte 0xC8, 0xFB, 0xD3, 0xE7, 0xE6, 0xCD, 0xE1, 0x21, 0xD6, 0x07, 0x37, 0xC3, 0x87, 0x0D, 0xD5, 0xF4
	.byte 0xED, 0x14, 0x5A, 0x45, 0x05, 0xE9, 0xE3, 0xA9, 0xF8, 0xA3, 0xEF, 0xFC, 0xD9, 0x02, 0x6F, 0x67
	.byte 0x8A, 0x4C, 0x2A, 0x8D, 0x42, 0x39, 0xFA, 0xFF, 0x81, 0xF6, 0x71, 0x87, 0x22, 0x61, 0x9D, 0x6D
	.byte 0x0C, 0x38, 0xE5, 0xFD, 0x44, 0xEA, 0xBE, 0xA4, 0xA9, 0xCF, 0xDE, 0x4B, 0x60, 0x4B, 0xBB, 0xF6
	.byte 0x70, 0xBC, 0xBF, 0xBE, 0xC6, 0x7E, 0x9B, 0x28, 0xFA, 0x27, 0xA1, 0xEA, 0x85, 0x30, 0xEF, 0xD4
	.byte 0x05, 0x1D, 0x88, 0x04, 0x39, 0xD0, 0xD4, 0xD9, 0xE5, 0x99, 0xDB, 0xE6, 0xF8, 0x7C, 0xA2, 0x1F
	.byte 0x65, 0x56, 0xAC, 0xC4, 0x44, 0x22, 0x29, 0xF4, 0x97, 0xFF, 0x2A, 0x43, 0xA7, 0x23, 0x94, 0xAB
	.byte 0x39, 0xA0, 0x93, 0xFC, 0xC3, 0x59, 0x5B, 0x65, 0x92, 0xCC, 0x0C, 0x8F, 0x7D, 0xF4, 0xEF, 0xFF
	.byte 0xD1, 0x5D, 0x84, 0x85, 0x4F, 0x7E, 0xA8, 0x6F, 0xE0, 0xE6, 0x2C, 0xFE, 0x14, 0x43, 0x01, 0xA3
	.byte 0xA1, 0x11, 0x08, 0x4E, 0x82, 0x7E, 0x53, 0xF7, 0x35, 0xF2, 0x3A, 0xBD, 0xBB, 0xD2, 0xD7, 0x2A
	.byte 0x91, 0xD3, 0x86, 0xEB
	.global MATHi_SHA1ProcessMessageBlockFunc
MATHi_SHA1ProcessMessageBlockFunc:
	.word MATHi_SHA1ProcessBlock

	.bss
	.global MATHi_OverlayTableMode
MATHi_OverlayTableMode:
	.space 0x04
