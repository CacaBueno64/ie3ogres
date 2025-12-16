
	.include "asm/macros/function.inc"
	.include "libmsl.inc"

	.text
	arm_func_start _ExitProcess
_ExitProcess: ; 0x0201C8AC
	ldr r12, _0201C8B4 ; =sys_exit
	bx r12
_0201C8B4: .word sys_exit
	arm_func_end _ExitProcess

	arm_func_start sys_writec
sys_writec: ; 0x0201C8B8
	bx lr
	arm_func_end sys_writec

	arm_func_start sys_write0
sys_write0: ; 0x0201C8BC
	bx lr
	arm_func_end sys_write0

	arm_func_start sys_readc
sys_readc: ; 0x0201C8C0
	mov r0, #0
	bx lr
	arm_func_end sys_readc

	arm_func_start sys_exit
sys_exit: ; 0x0201C8C8
	bx lr
	arm_func_end sys_exit

	arm_func_start __read_console
__read_console: ; 0x0201C8CC
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	mov r6, r2
	ldr r5, [r6]
	mov r7, r1
	cmp r5, #0
	mov r4, #0
	bls _0201C914
_0201C8E8:
	bl sys_readc
	and r1, r0, #0xff
	cmp r1, #0xd
	strb r0, [r7, r4]
	cmpne r1, #0xa
	addeq r0, r4, #1
	streq r0, [r6]
	beq _0201C914
	add r4, r4, #1
	cmp r4, r5
	blo _0201C8E8
_0201C914:
	mov r0, #0
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
	arm_func_end __read_console

	arm_func_start __write_console
__write_console: ; 0x0201C91C
	stmfd sp!, {r3, lr}
	ldr r0, [r2]
	cmp r0, #1
	bls _0201C950
	add r3, r1, r0
	ldrb r2, [r3, #-1]
	mov r0, r1
	mov r1, #0
	strb r2, [sp]
	strb r1, [r3, #-1]
	bl sys_write0
	add r0, sp, #0
	b _0201C954
_0201C950:
	mov r0, r1
_0201C954:
	bl sys_writec
	mov r0, #0
	ldmfd sp!, {r3, pc}
	arm_func_end __write_console

	arm_func_start __close_console
__close_console: ; 0x0201C960
	mov r0, #0
	bx lr
	arm_func_end __close_console

	arm_func_start _Z20__DecodeSignedNumberPcPl
_Z20__DecodeSignedNumberPcPl: ; 0x0201C968
	stmfd sp!, {r4, lr}
	ldrsb r2, [r0]
	tst r2, #1
	moveq r2, r2, asr #1
	streq r2, [r1]
	addeq r0, r0, #1
	ldmeqfd sp!, {r4, pc}
	ldrb r4, [r0, #1]
	tst r2, #2
	moveq r2, r2, asr #2
	orreq r2, r4, r2, lsl #8
	streq r2, [r1]
	addeq r0, r0, #2
	ldmeqfd sp!, {r4, pc}
	tst r2, #4
	ldrb lr, [r0, #2]
	bne _0201C9C8
	mov r3, r2, asr #3
	mov r2, r4, lsl #8
	orr r2, r2, r3, lsl #16
	orr r2, lr, r2
	str r2, [r1]
	add r0, r0, #3
	ldmfd sp!, {r4, pc}
_0201C9C8:
	ldrb r12, [r0, #3]
	mov r3, r2, asr #3
	mov r2, r4, lsl #0x10
	orr r2, r2, r3, lsl #24
	orr r2, r2, lr, lsl #8
	orr r2, r12, r2
	str r2, [r1]
	add r0, r0, #4
	ldmfd sp!, {r4, pc}
	arm_func_end _Z20__DecodeSignedNumberPcPl

	arm_func_start _Z22__DecodeUnsignedNumberPcPm
_Z22__DecodeUnsignedNumberPcPm: ; 0x0201C9EC
	stmfd sp!, {r4, lr}
	ldrb r2, [r0]
	tst r2, #1
	moveq r2, r2, lsr #1
	streq r2, [r1]
	addeq r0, r0, #1
	ldmeqfd sp!, {r4, pc}
	ldrb r4, [r0, #1]
	tst r2, #2
	moveq r2, r2, lsr #2
	orreq r2, r4, r2, lsl #8
	streq r2, [r1]
	addeq r0, r0, #2
	ldmeqfd sp!, {r4, pc}
	tst r2, #4
	ldrb lr, [r0, #2]
	bne _0201CA4C
	mov r3, r2, lsr #3
	mov r2, r4, lsl #8
	orr r2, r2, r3, lsl #16
	orr r2, lr, r2
	str r2, [r1]
	add r0, r0, #3
	ldmfd sp!, {r4, pc}
_0201CA4C:
	ldrb r12, [r0, #3]
	mov r3, r2, lsr #3
	mov r2, r4, lsl #0x10
	orr r2, r2, r3, lsl #24
	orr r2, r2, lr, lsl #8
	orr r2, r12, r2
	str r2, [r1]
	add r0, r0, #4
	ldmfd sp!, {r4, pc}
	arm_func_end _Z22__DecodeUnsignedNumberPcPm

	arm_func_start _Z12BinarySearchP19ExceptionTableIndexmPc
_Z12BinarySearchP19ExceptionTableIndexmPc: ; 0x0201CA70
	stmfd sp!, {r4, r5, r6, lr}
	subs r6, r1, #1
	mov r5, #0
	bmi _0201CACC
	mov r1, #0xc
_0201CA84:
	add r3, r5, r6
	mov r4, r3, asr #1
	mul r3, r4, r1
	ldr r12, [r0, r3]
	add lr, r0, r3
	cmp r2, r12
	sublo r6, r4, #1
	blo _0201CAC4
	ldr r3, [lr, #4]
	bic r3, r3, #1
	add r3, r12, r3
	cmp r2, r3
	addhi r5, r4, #1
	bhi _0201CAC4
	mov r0, lr
	ldmfd sp!, {r4, r5, r6, pc}
_0201CAC4:
	cmp r5, r6
	ble _0201CA84
_0201CACC:
	mov r0, #0
	ldmfd sp!, {r4, r5, r6, pc}
	arm_func_end _Z12BinarySearchP19ExceptionTableIndexmPc

	arm_func_start _Z19FindExceptionRecordPcP13ExceptionInfo
_Z19FindExceptionRecordPcP13ExceptionInfo: ; 0x0201CAD4
	stmfd sp!, {r4, r5, r6, r7, r8, r9, lr}
	sub sp, sp, #0xc
	mov r4, r0
	mov r9, r1
	mov r2, #0
	mov r0, r9
	mov r1, r4
	str r2, [r9, #4]
	str r2, [r9, #8]
	bl _Z20__FindExceptionTableP13ExceptionInfoPc
	cmp r0, #0
	addeq sp, sp, #0xc
	ldmeqfd sp!, {r4, r5, r6, r7, r8, r9, pc}
	ldr r0, [r9, #0xc]
	ldr r1, [r9, #0x10]
	ldr r3, _0201CBD8 ; =0x2AAAAAAB
	sub r5, r1, r0
	smull r2, r1, r3, r5
	mov r3, r5, lsr #0x1f
	mov r2, r4
	add r1, r3, r1, asr #1
	bl _Z12BinarySearchP19ExceptionTableIndexmPc
	cmp r0, #0
	addeq sp, sp, #0xc
	ldmeqfd sp!, {r4, r5, r6, r7, r8, r9, pc}
	ldr r1, [r0, #4]
	tst r1, #1
	addne r1, r0, #8
	ldreq r1, [r0, #8]
	str r1, [r9, #4]
	ldr r1, [r0]
	str r1, [r9]
	ldr r1, [r0]
	ldr r0, [r9, #4]
	sub r7, r4, r1
	bl _Z16__SkipUnwindInfoPc
	mov r8, #0
	add r5, sp, #4
	add r4, sp, #0
	add r6, sp, #8
_0201CB74:
	mov r1, r6
	bl _Z22__DecodeUnsignedNumberPcPm
	ldr r1, [sp, #8]
	cmp r1, #0
	addeq sp, sp, #0xc
	ldmeqfd sp!, {r4, r5, r6, r7, r8, r9, pc}
	mov r1, r5
	bl _Z22__DecodeUnsignedNumberPcPm
	mov r1, r4
	bl _Z22__DecodeUnsignedNumberPcPm
	ldr r1, [sp, #8]
	add r2, r8, r1
	cmp r7, r2
	addlo sp, sp, #0xc
	ldmlofd sp!, {r4, r5, r6, r7, r8, r9, pc}
	ldr r1, [sp, #4]
	add r8, r2, r1
	cmp r7, r8
	bhi _0201CB74
	ldr r1, [r9, #4]
	ldr r0, [sp]
	add r0, r1, r0
	str r0, [r9, #8]
	add sp, sp, #0xc
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, pc}
_0201CBD8: .word 0x2AAAAAAB
	arm_func_end _Z19FindExceptionRecordPcP13ExceptionInfo

	arm_func_start _Z13CurrentActionPK14ActionIterator
_Z13CurrentActionPK14ActionIterator: ; 0x0201CBDC
	ldr r0, [r0, #8]
	cmp r0, #0
	ldrneb r0, [r0]
	andne r0, r0, #0x1f
	moveq r0, #0
	and r0, r0, #0xff
	bx lr
	arm_func_end _Z13CurrentActionPK14ActionIterator

	arm_func_start _Z10NextActionP14ActionIterator
_Z10NextActionP14ActionIterator: ; 0x0201CBF8
	stmfd sp!, {r3, r4, r5, lr}
	sub sp, sp, #0xa0
	mov r4, r0
_0201CC04:
	ldr r2, [r4, #8]
	cmp r2, #0
	beq _0201CC1C
	ldrb r0, [r2]
	tst r0, #0x80
	beq _0201CC60
_0201CC1C:
	mov r1, r4
	add r0, r4, #0x18
	bl _Z15__PopStackFrameP12ThrowContextP13ExceptionInfo
	mov r1, r4
	bl _Z19FindExceptionRecordPcP13ExceptionInfo
	ldr r0, [r4, #4]
	cmp r0, #0
	addeq sp, sp, #0xa0
	moveq r0, #0xff
	ldmeqfd sp!, {r3, r4, r5, pc}
	mov r1, r4
	add r0, r4, #0x18
	bl _Z16__SetupFrameInfoP12ThrowContextP13ExceptionInfo
	ldr r0, [r4, #8]
	cmp r0, #0
	beq _0201CC04
	b _0201CE64
_0201CC60:
	and r0, r0, #0x1f
	cmp r0, #0x13
	addls pc, pc, r0, lsl #2
	b _0201CE58
_0201CC70: ; jump table
	b _0201CE58 ; case 0
	b _0201CE58 ; case 1
	b _0201CCC0 ; case 2
	b _0201CCD4 ; case 3
	b _0201CCE8 ; case 4
	b _0201CCF0 ; case 5
	b _0201CD10 ; case 6
	b _0201CD24 ; case 7
	b _0201CD38 ; case 8
	b _0201CD54 ; case 9
	b _0201CD78 ; case 10
	b _0201CD80 ; case 11
	b _0201CD94 ; case 12
	b _0201CDAC ; case 13
	b _0201CE58 ; case 14
	b _0201CDC0 ; case 15
	b _0201CDE8 ; case 16
	b _0201CE08 ; case 17
	b _0201CE30 ; case 18
	b _0201CE50 ; case 19
_0201CCC0:
	add r1, sp, #0x9c
_0201CCC4:
	add r0, r2, #1
_0201CCC8:
	bl _Z20__DecodeSignedNumberPcPl
_0201CCCC:
	add r0, r0, #4
	b _0201CDB8
_0201CCD4:
	add r1, sp, #0x94
	add r0, r2, #1
	bl _Z20__DecodeSignedNumberPcPl
	add r1, sp, #0x98
	b _0201CCC8
_0201CCE8:
	add r1, sp, #0x90
	b _0201CCC4
_0201CCF0:
	add r1, sp, #0x84
	add r0, r2, #1
	bl _Z20__DecodeSignedNumberPcPl
	add r1, sp, #0x88
	bl _Z22__DecodeUnsignedNumberPcPm
	add r1, sp, #0x8c
_0201CD08:
	bl _Z22__DecodeUnsignedNumberPcPm
	b _0201CCCC
_0201CD10:
	add r1, sp, #0x7c
	add r0, r2, #1
	bl _Z20__DecodeSignedNumberPcPl
	add r1, sp, #0x80
	b _0201CCC8
_0201CD24:
	add r1, sp, #0x74
	add r0, r2, #1
	bl _Z20__DecodeSignedNumberPcPl
	add r1, sp, #0x78
	b _0201CCC8
_0201CD38:
	add r1, sp, #0x68
	add r0, r2, #1
	bl _Z20__DecodeSignedNumberPcPl
	add r1, sp, #0x6c
	bl _Z20__DecodeSignedNumberPcPl
	add r1, sp, #0x70
	b _0201CCC8
_0201CD54:
	add r1, sp, #0x58
	add r0, r2, #1
	bl _Z20__DecodeSignedNumberPcPl
	add r1, sp, #0x5c
	bl _Z20__DecodeSignedNumberPcPl
	add r1, sp, #0x60
	bl _Z22__DecodeUnsignedNumberPcPm
	add r1, sp, #0x64
	b _0201CD08
_0201CD78:
	add r1, sp, #0x54
	b _0201CCC4
_0201CD80:
	add r1, sp, #0x4c
	add r0, r2, #1
	bl _Z20__DecodeSignedNumberPcPl
	add r1, sp, #0x50
	b _0201CCC8
_0201CD94:
	add r1, sp, #0x44
	add r0, r2, #5
	bl _Z22__DecodeUnsignedNumberPcPm
	add r1, sp, #0x48
	bl _Z20__DecodeSignedNumberPcPl
_0201CDA8:
	b _0201CDB8
_0201CDAC:
	add r1, sp, #0x40
_0201CDB0:
	add r0, r2, #1
	bl _Z20__DecodeSignedNumberPcPl
_0201CDB8:
	str r0, [r4, #8]
	b _0201CE64
_0201CDC0:
	add r1, sp, #0x34
	add r0, r2, #1
	bl _Z22__DecodeUnsignedNumberPcPm
	add r1, sp, #0x38
	bl _Z22__DecodeUnsignedNumberPcPm
	add r1, sp, #0x3c
	bl _Z20__DecodeSignedNumberPcPl
	ldr r1, [sp, #0x34]
	add r0, r0, r1, lsl #2
	b _0201CDA8
_0201CDE8:
	add r1, sp, #0x24
	add r0, r2, #1
	bl _Z20__DecodeSignedNumberPcPl
	add r1, sp, #0x28
	bl _Z20__DecodeSignedNumberPcPl
	add r1, sp, #0x2c
	add r0, r0, #4
	b _0201CCC8
_0201CE08:
	add r1, sp, #0x14
	add r0, r2, #1
	bl _Z20__DecodeSignedNumberPcPl
	add r1, sp, #0x1c
	bl _Z20__DecodeSignedNumberPcPl
	add r1, sp, #0x18
	add r0, r0, #1
	bl _Z20__DecodeSignedNumberPcPl
	add r1, sp, #0x20
	b _0201CCC8
_0201CE30:
	add r1, sp, #8
	add r0, r2, #1
	bl _Z20__DecodeSignedNumberPcPl
	add r1, sp, #0xc
	add r0, r0, #1
	bl _Z20__DecodeSignedNumberPcPl
	add r1, sp, #0x10
	b _0201CD08
_0201CE50:
	add r1, sp, #4
	b _0201CDB0
_0201CE58:
	add sp, sp, #0xa0
	mov r0, #0xff
	ldmfd sp!, {r3, r4, r5, pc}
_0201CE64:
	ldr r2, [r4, #8]
	ldrb r0, [r2]
	and r0, r0, #0x1f
	cmp r0, #1
	addne sp, sp, #0xa0
	ldmnefd sp!, {r3, r4, r5, pc}
	add r5, sp, #0
_0201CE80:
	mov r1, r5
	add r0, r2, #1
	bl _Z20__DecodeSignedNumberPcPl
	ldr r1, [r4, #8]
	ldr r0, [sp]
	add r2, r1, r0
	str r2, [r4, #8]
	ldrb r0, [r1, r0]
	and r0, r0, #0x1f
	cmp r0, #1
	beq _0201CE80
	add sp, sp, #0xa0
	ldmfd sp!, {r3, r4, r5, pc}
	arm_func_end _Z10NextActionP14ActionIterator

	arm_func_start _Z11UnwindStackP12ThrowContextP13ExceptionInfoPc
_Z11UnwindStackP12ThrowContextP13ExceptionInfoPc: ; 0x0201CEB4
	stmfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, lr}
	sub sp, sp, #0xa4
	mov r9, r0
	mov r8, r1
	str r2, [sp]
_0201CEC8:
	ldr r2, [r8, #8]
	cmp r2, #0
	bne _0201CF10
	mov r0, r9
	mov r1, r8
	bl _Z15__PopStackFrameP12ThrowContextP13ExceptionInfo
	mov r1, r8
	bl _Z19FindExceptionRecordPcP13ExceptionInfo
	ldr r0, [r8, #4]
	cmp r0, #0
	bne _0201CEF8
	bl _ZSt9terminatev
_0201CEF8:
	mov r0, r9
	mov r1, r8
	bl _Z16__SetupFrameInfoP12ThrowContextP13ExceptionInfo
	ldr r2, [r8, #8]
	cmp r2, #0
	beq _0201CEC8
_0201CF10:
	ldrb r7, [r2]
	and r0, r7, #0x1f
	cmp r0, #0x13
	addls pc, pc, r0, lsl #2
	b _0201D6CC
_0201CF24: ; jump table
	b _0201D6CC ; case 0
	b _0201CF74 ; case 1
	b _0201CF94 ; case 2
	b _0201CFDC ; case 3
	b _0201D058 ; case 4
	b _0201D0B0 ; case 5
	b _0201D134 ; case 6
	b _0201D19C ; case 7
	b _0201D204 ; case 8
	b _0201D2A8 ; case 9
	b _0201D350 ; case 10
	b _0201D3A4 ; case 11
	b _0201D428 ; case 12
	b _0201D450 ; case 13
	b _0201D6CC ; case 14
	b _0201D498 ; case 15
	b _0201D4D0 ; case 16
	b _0201D564 ; case 17
	b _0201D604 ; case 18
	b _0201D6BC ; case 19
_0201CF74:
	add r1, sp, #0xa0
	add r0, r2, #1
	bl _Z20__DecodeSignedNumberPcPl
	ldr r1, [r8, #8]
	ldr r0, [sp, #0xa0]
	add r0, r1, r0
_0201CF8C:
	str r0, [r8, #8]
	b _0201D6D0
_0201CF94:
	add r1, sp, #0x9c
	add r0, r2, #1
	bl _Z20__DecodeSignedNumberPcPl
	mov r4, r0
	ldrb r1, [r4]
	ldrb r0, [r4, #1]
	ldrb r2, [r4, #2]
	ldrb r3, [r4, #3]
	orr r0, r1, r0, lsl #8
	orr r0, r0, r2, lsl #16
	ldr r5, [r9, #0x18]
	ldr r1, [sp, #0x9c]
	orr r2, r0, r3, lsl #24
	add r0, r5, r1
	mvn r1, #0
	blx r2
	add r0, r4, #4
	b _0201CF8C
_0201CFDC:
	add r1, sp, #0x94
	add r0, r2, #1
	and r4, r7, #0x40
	bl _Z20__DecodeSignedNumberPcPl
	add r1, sp, #0x98
	bl _Z20__DecodeSignedNumberPcPl
	cmp r4, #0
	ldrb r2, [r0]
	ldrb r1, [r0, #1]
	ldrb r3, [r0, #2]
	ldrb r5, [r0, #3]
	add r4, r0, #4
	ldrne r0, [sp, #0x94]
	orr r1, r2, r1, lsl #8
	addne r0, r9, r0, lsl #2
	ldrne r0, [r0, #0x1c]
	orr r1, r1, r3, lsl #16
	andne r0, r0, #0xff
	orr r2, r1, r5, lsl #24
	ldreq r1, [r9, #0x18]
	ldreq r0, [sp, #0x94]
	ldreqb r0, [r1, r0]
	cmp r0, #0
	beq _0201D050
	ldr r3, [r9, #0x18]
	ldr r0, [sp, #0x98]
	mvn r1, #0
	add r0, r3, r0
	blx r2
_0201D050:
	str r4, [r8, #8]
	b _0201D6D0
_0201D058:
	add r1, sp, #0x90
	add r0, r2, #1
	and r4, r7, #0x20
	bl _Z20__DecodeSignedNumberPcPl
	cmp r4, #0
	ldrb r2, [r0]
	ldrb r1, [r0, #1]
	ldrb r3, [r0, #2]
	ldrb r5, [r0, #3]
	add r4, r0, #4
	ldrne r0, [sp, #0x90]
	orr r1, r2, r1, lsl #8
	addne r0, r9, r0, lsl #2
	ldrne r0, [r0, #0x1c]
	orr r1, r1, r3, lsl #16
	orr r2, r1, r5, lsl #24
	ldreq r1, [r9, #0x18]
	ldreq r0, [sp, #0x90]
	ldreq r0, [r1, r0]
	mvn r1, #0
	blx r2
	b _0201D050
_0201D0B0:
	add r1, sp, #0x84
	add r0, r2, #1
	bl _Z20__DecodeSignedNumberPcPl
	add r1, sp, #0x88
	bl _Z22__DecodeUnsignedNumberPcPm
	add r1, sp, #0x8c
	bl _Z22__DecodeUnsignedNumberPcPm
	ldr r3, [r9, #0x18]
	ldr r2, [sp, #0x84]
	ldr r6, [sp, #0x88]
	ldrb r5, [r0]
	ldrb r4, [r0, #1]
	ldr r1, [sp, #0x8c]
	add r2, r3, r2
	ldrb r10, [r0, #2]
	orr r3, r5, r4, lsl #8
	mla r4, r6, r1, r2
	ldrb r2, [r0, #3]
	orr r1, r3, r10, lsl #16
	cmp r6, #0
	orr r5, r1, r2, lsl #24
	add r11, r0, #4
	beq _0201D12C
	mvn r10, #0
_0201D110:
	ldr r0, [sp, #0x8c]
	mov r1, r10
	sub r4, r4, r0
	mov r0, r4
	blx r5
	subs r6, r6, #1
	bne _0201D110
_0201D12C:
	str r11, [r8, #8]
	b _0201D6D0
_0201D134:
	add r1, sp, #0x7c
	add r0, r2, #1
	and r4, r7, #0x20
	bl _Z20__DecodeSignedNumberPcPl
	add r1, sp, #0x80
	bl _Z20__DecodeSignedNumberPcPl
	ldrb r2, [r0]
	ldrb r1, [r0, #1]
	cmp r4, #0
	ldrb r3, [r0, #2]
	orr r1, r2, r1, lsl #8
	ldrb r5, [r0, #3]
	add r4, r0, #4
	ldrne r0, [sp, #0x7c]
	orr r1, r1, r3, lsl #16
	addne r0, r9, r0, lsl #2
	orr r2, r1, r5, lsl #24
	ldrne r3, [r0, #0x1c]
	ldreq r1, [r9, #0x18]
	ldreq r0, [sp, #0x7c]
	ldreq r3, [r1, r0]
	ldr r0, [sp, #0x80]
	mov r1, #0
	add r0, r3, r0
	blx r2
	b _0201D050
_0201D19C:
	add r1, sp, #0x74
	add r0, r2, #1
	and r4, r7, #0x20
	bl _Z20__DecodeSignedNumberPcPl
	add r1, sp, #0x78
	bl _Z20__DecodeSignedNumberPcPl
	ldrb r2, [r0]
	ldrb r1, [r0, #1]
	cmp r4, #0
	ldrb r3, [r0, #2]
	orr r1, r2, r1, lsl #8
	ldrb r5, [r0, #3]
	add r4, r0, #4
	ldrne r0, [sp, #0x74]
	orr r1, r1, r3, lsl #16
	addne r0, r9, r0, lsl #2
	orr r2, r1, r5, lsl #24
	ldrne r3, [r0, #0x1c]
	ldreq r1, [r9, #0x18]
	ldreq r0, [sp, #0x74]
	ldreq r3, [r1, r0]
	ldr r0, [sp, #0x78]
	mvn r1, #0
	add r0, r3, r0
	blx r2
	b _0201D050
_0201D204:
	add r1, sp, #0x68
	add r0, r2, #1
	and r4, r7, #0x20
	bl _Z20__DecodeSignedNumberPcPl
	add r1, sp, #0x6c
	bl _Z20__DecodeSignedNumberPcPl
	add r1, sp, #0x70
	bl _Z20__DecodeSignedNumberPcPl
	ldrb r2, [r0]
	ldrb r1, [r0, #1]
	ldrb r3, [r0, #2]
	ldrb r5, [r0, #3]
	orr r1, r2, r1, lsl #8
	orr r1, r1, r3, lsl #16
	orr r2, r1, r5, lsl #24
	tst r7, #0x40
	add r5, r0, #4
	ldreq r1, [r9, #0x18]
	ldreq r0, [sp, #0x68]
	ldreqsh r0, [r1, r0]
	beq _0201D26C
	ldr r0, [sp, #0x68]
	add r0, r9, r0, lsl #2
	ldr r0, [r0, #0x1c]
	mov r0, r0, lsl #0x10
	mov r0, r0, asr #0x10
_0201D26C:
	cmp r0, #0
	beq _0201D2A0
	cmp r4, #0
	ldrne r0, [sp, #0x6c]
	ldreq r1, [r9, #0x18]
	addne r0, r9, r0, lsl #2
	ldrne r3, [r0, #0x1c]
	ldreq r0, [sp, #0x6c]
	ldreq r3, [r1, r0]
	ldr r0, [sp, #0x70]
	mvn r1, #0
	add r0, r3, r0
	blx r2
_0201D2A0:
	str r5, [r8, #8]
	b _0201D6D0
_0201D2A8:
	add r1, sp, #0x58
	add r0, r2, #1
	and r4, r7, #0x20
	bl _Z20__DecodeSignedNumberPcPl
	add r1, sp, #0x5c
	bl _Z20__DecodeSignedNumberPcPl
	add r1, sp, #0x60
	bl _Z22__DecodeUnsignedNumberPcPm
	add r1, sp, #0x64
	bl _Z22__DecodeUnsignedNumberPcPm
	ldrb r2, [r0]
	ldrb r1, [r0, #1]
	ldrb r3, [r0, #2]
	ldrb r5, [r0, #3]
	orr r1, r2, r1, lsl #8
	orr r1, r1, r3, lsl #16
	cmp r4, #0
	orr r5, r1, r5, lsl #24
	ldrne r1, [sp, #0x58]
	add r11, r0, #4
	addne r1, r9, r1, lsl #2
	ldrne r1, [r1, #0x1c]
	ldrne r0, [sp, #0x5c]
	ldreq r2, [r9, #0x18]
	ldreq r1, [sp, #0x58]
	ldreq r0, [sp, #0x5c]
	ldreq r1, [r2, r1]
	ldr r6, [sp, #0x60]
	add r4, r1, r0
	ldr r0, [sp, #0x64]
	cmp r6, #0
	mla r4, r6, r0, r4
	beq _0201D34C
	mvn r10, #0
_0201D330:
	ldr r0, [sp, #0x64]
	mov r1, r10
	sub r4, r4, r0
	mov r0, r4
	blx r5
	subs r6, r6, #1
	bne _0201D330
_0201D34C:
	b _0201D12C
_0201D350:
	add r1, sp, #0x54
	add r0, r2, #1
	and r4, r7, #0x20
	bl _Z20__DecodeSignedNumberPcPl
	cmp r4, #0
	ldrb r2, [r0]
	ldrb r1, [r0, #1]
	ldrb r3, [r0, #2]
	ldrb r5, [r0, #3]
	add r4, r0, #4
	ldrne r0, [sp, #0x54]
	orr r1, r2, r1, lsl #8
	addne r0, r9, r0, lsl #2
	ldrne r0, [r0, #0x1c]
	orr r1, r1, r3, lsl #16
	orr r2, r1, r5, lsl #24
	ldreq r1, [r9, #0x18]
	ldreq r0, [sp, #0x54]
	ldreq r0, [r1, r0]
	blx r2
	b _0201D050
_0201D3A4:
	add r1, sp, #0x4c
	add r0, r2, #1
	and r4, r7, #0x20
	bl _Z20__DecodeSignedNumberPcPl
	add r1, sp, #0x50
	bl _Z20__DecodeSignedNumberPcPl
	ldrb r2, [r0]
	ldrb r1, [r0, #1]
	ldrb r3, [r0, #2]
	ldrb r5, [r0, #3]
	orr r1, r2, r1, lsl #8
	orr r1, r1, r3, lsl #16
	tst r7, #0x40
	orr r1, r1, r5, lsl #24
	add r5, r0, #4
	ldrne r0, [sp, #0x4c]
	ldreq r2, [r9, #0x18]
	addne r0, r9, r0, lsl #2
	ldrne r0, [r0, #0x1c]
	andne r0, r0, #0xff
	ldreq r0, [sp, #0x4c]
	ldreqb r0, [r2, r0]
	cmp r0, #0
	beq _0201D424
	cmp r4, #0
	ldrne r0, [sp, #0x50]
	ldreq r2, [r9, #0x18]
	addne r0, r9, r0, lsl #2
	ldrne r0, [r0, #0x1c]
	ldreq r0, [sp, #0x50]
	ldreq r0, [r2, r0]
	blx r1
_0201D424:
	b _0201D2A0
_0201D428:
	ldr r0, [sp]
	cmp r0, r2
	addeq sp, sp, #0xa4
	ldmeqfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
	add r1, sp, #0x44
	add r0, r2, #5
	bl _Z22__DecodeUnsignedNumberPcPm
	add r1, sp, #0x48
	bl _Z20__DecodeSignedNumberPcPl
	b _0201CF8C
_0201D450:
	add r1, sp, #0x40
	add r0, r2, #1
	bl _Z20__DecodeSignedNumberPcPl
	ldr r2, [r9, #0x18]
	ldr r1, [sp, #0x40]
	mov r4, r0
	add r0, r2, r1
	ldr r2, [r0, #8]
	cmp r2, #0
	beq _0201D494
	ldr r0, [r0]
	ldr r1, [r9, #4]
	cmp r1, r0
	streq r2, [r9, #8]
	beq _0201D494
	mvn r1, #0
	blx r2
_0201D494:
	b _0201D050
_0201D498:
	ldr r0, [sp]
	cmp r0, r2
	addeq sp, sp, #0xa4
	ldmeqfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
	add r1, sp, #0x34
	add r0, r2, #1
	bl _Z22__DecodeUnsignedNumberPcPm
	add r1, sp, #0x38
	bl _Z22__DecodeUnsignedNumberPcPm
	add r1, sp, #0x3c
	bl _Z20__DecodeSignedNumberPcPl
	ldr r1, [sp, #0x34]
	add r0, r0, r1, lsl #2
	b _0201CF8C
_0201D4D0:
	add r1, sp, #0x24
	add r0, r2, #1
	and r5, r7, #0x20
	bl _Z20__DecodeSignedNumberPcPl
	add r1, sp, #0x28
	bl _Z20__DecodeSignedNumberPcPl
	ldrb r2, [r0]
	ldrb r1, [r0, #1]
	ldrb r3, [r0, #2]
	ldrb r4, [r0, #3]
	orr r1, r2, r1, lsl #8
	orr r2, r1, r3, lsl #16
	add r1, sp, #0x2c
	add r0, r0, #4
	orr r4, r2, r4, lsl #24
	bl _Z20__DecodeSignedNumberPcPl
	ldrb r2, [r0]
	ldrb r1, [r0, #1]
	cmp r5, #0
	ldrb r3, [r0, #2]
	orr r1, r2, r1, lsl #8
	ldrb r6, [r0, #3]
	add r5, r0, #4
	ldrne r0, [sp, #0x24]
	orr r1, r1, r3, lsl #16
	addne r0, r9, r0, lsl #2
	orr r2, r1, r6, lsl #24
	ldrne r3, [r0, #0x1c]
	ldreq r1, [r9, #0x18]
	ldreq r0, [sp, #0x24]
	ldreq r3, [r1, r0]
	ldr r0, [sp, #0x28]
	ldr r1, [sp, #0x2c]
	add r0, r3, r0
	add r1, r4, r1
	blx r2
	b _0201D2A0
_0201D564:
	add r1, sp, #0x14
	add r0, r2, #1
	and r5, r7, #0x20
	bl _Z20__DecodeSignedNumberPcPl
	add r1, sp, #0x1c
	bl _Z20__DecodeSignedNumberPcPl
	ldrb r2, [r0], #1
	add r1, sp, #0x18
	and r4, r2, #0x20
	bl _Z20__DecodeSignedNumberPcPl
	add r1, sp, #0x20
	bl _Z20__DecodeSignedNumberPcPl
	cmp r5, #0
	ldrb r2, [r0]
	ldrb r1, [r0, #1]
	ldrb r3, [r0, #2]
	ldrb r6, [r0, #3]
	add r5, r0, #4
	ldrne r0, [sp, #0x14]
	orr r1, r2, r1, lsl #8
	addne r0, r9, r0, lsl #2
	ldrne r0, [r0, #0x1c]
	orr r1, r1, r3, lsl #16
	orr r2, r1, r6, lsl #24
	ldreq r1, [r9, #0x18]
	ldreq r0, [sp, #0x14]
	ldreq r0, [r1, r0]
	cmp r4, #0
	ldrne r1, [sp, #0x18]
	ldreq r3, [r9, #0x18]
	addne r1, r9, r1, lsl #2
	ldrne r4, [r1, #0x1c]
	ldreq r1, [sp, #0x18]
	ldreq r4, [r3, r1]
	ldr r3, [sp, #0x1c]
	ldr r1, [sp, #0x20]
	add r0, r0, r3
	add r1, r4, r1
	blx r2
	b _0201D2A0
_0201D604:
	add r1, sp, #8
	add r0, r2, #1
	and r4, r7, #0x20
	bl _Z20__DecodeSignedNumberPcPl
	ldrb r2, [r0], #1
	add r1, sp, #0xc
	and r6, r2, #0x20
	bl _Z20__DecodeSignedNumberPcPl
	add r1, sp, #0x10
	bl _Z22__DecodeUnsignedNumberPcPm
	ldrb r2, [r0]
	ldrb r1, [r0, #1]
	ldrb r3, [r0, #2]
	ldrb r5, [r0, #3]
	orr r1, r2, r1, lsl #8
	orr r1, r1, r3, lsl #16
	cmp r4, #0
	add r11, r0, #4
	ldrne r0, [sp, #8]
	orr r5, r1, r5, lsl #24
	addne r0, r9, r0, lsl #2
	ldrne r4, [r0, #0x1c]
	ldreq r1, [r9, #0x18]
	ldreq r0, [sp, #8]
	ldreq r4, [r1, r0]
	cmp r6, #0
	ldrne r0, [sp, #0xc]
	ldreq r1, [r9, #0x18]
	addne r0, r9, r0, lsl #2
	ldrne r0, [r0, #0x1c]
	ldreq r0, [sp, #0xc]
	ldreq r0, [r1, r0]
	ldr r1, [sp, #0x10]
	add r4, r4, r0
	bl _u32_div_f
	movs r6, r0
	mvn r10, #0
	beq _0201D6B8
_0201D69C:
	ldr r0, [sp, #0x10]
	mov r1, r10
	sub r4, r4, r0
	mov r0, r4
	blx r5
	subs r6, r6, #1
	bne _0201D69C
_0201D6B8:
	b _0201D12C
_0201D6BC:
	add r1, sp, #4
	add r0, r2, #1
	bl _Z20__DecodeSignedNumberPcPl
	b _0201CF8C
_0201D6CC:
	bl _ZSt9terminatev
_0201D6D0:
	tst r7, #0x80
	movne r0, #0
	strne r0, [r8, #8]
	b _0201CEC8
	add sp, sp, #0xa4
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
	arm_func_end _Z11UnwindStackP12ThrowContextP13ExceptionInfoPc

	arm_func_start _Z23FindMostRecentExceptionP12ThrowContextP13ExceptionInfo
_Z23FindMostRecentExceptionP12ThrowContextP13ExceptionInfo: ; 0x0201D6E8
	stmfd sp!, {r4, r5, lr}
	sub sp, sp, #0x8c
	ldr r2, [r1]
	mov r4, r0
	str r2, [sp, #4]
	ldr r0, [r1, #4]
	add r12, sp, #0x38
	str r0, [sp, #8]
	ldr r0, [r1, #8]
	add lr, r4, #0x1c
	str r0, [sp, #0xc]
	ldr r0, [r1, #0xc]
	mov r5, #5
	str r0, [sp, #0x10]
	ldr r0, [r1, #0x10]
	str r0, [sp, #0x14]
	ldr r0, [r1, #0x14]
	str r0, [sp, #0x18]
	ldr r0, [r4]
	str r0, [sp, #0x1c]
	ldr r0, [r4, #4]
	str r0, [sp, #0x20]
	ldr r0, [r4, #8]
	str r0, [sp, #0x24]
	ldr r0, [r4, #0xc]
	str r0, [sp, #0x28]
	ldr r0, [r4, #0x10]
	str r0, [sp, #0x2c]
	ldr r0, [r4, #0x14]
	str r0, [sp, #0x30]
	ldr r0, [r4, #0x18]
	str r0, [sp, #0x34]
_0201D768:
	ldmia lr!, {r0, r1, r2, r3}
	stmia r12!, {r0, r1, r2, r3}
	subs r5, r5, #1
	bne _0201D768
	add r5, sp, #4
	ldr r1, [lr]
	mov r0, r5
	str r1, [r12]
	bl _Z13CurrentActionPK14ActionIterator
_0201D78C:
	cmp r0, #0x12
	addls pc, pc, r0, lsl #2
	b _0201D7E4
_0201D798: ; jump table
	b _0201D7F0 ; case 0
	b _0201D7E4 ; case 1
	b _0201D7F0 ; case 2
	b _0201D7F0 ; case 3
	b _0201D7F0 ; case 4
	b _0201D7F0 ; case 5
	b _0201D7F0 ; case 6
	b _0201D7F0 ; case 7
	b _0201D7F0 ; case 8
	b _0201D7F0 ; case 9
	b _0201D7F0 ; case 10
	b _0201D7F0 ; case 11
	b _0201D7F0 ; case 12
	b _0201D7FC ; case 13
	b _0201D7E4 ; case 14
	b _0201D7F0 ; case 15
	b _0201D7F0 ; case 16
	b _0201D7F0 ; case 17
	b _0201D7F0 ; case 18
_0201D7E4:
	add sp, sp, #0x8c
	mov r0, #0
	ldmfd sp!, {r4, r5, pc}
_0201D7F0:
	mov r0, r5
	bl _Z10NextActionP14ActionIterator
	b _0201D78C
_0201D7FC:
	ldr r0, [sp, #0xc]
	add r1, sp, #0
	add r0, r0, #1
	bl _Z20__DecodeSignedNumberPcPl
	ldr r12, [sp, #0x34]
	ldr r3, [sp]
	mov r1, #0
	add r0, r12, r3
	ldr r2, [r0, #4]
	str r2, [r4]
	ldr r2, [r12, r3]
	str r2, [r4, #4]
	str r1, [r4, #8]
	str r0, [r4, #0xc]
	add sp, sp, #0x8c
	ldmfd sp!, {r4, r5, pc}
	arm_func_end _Z23FindMostRecentExceptionP12ThrowContextP13ExceptionInfo

	arm_func_start _Z17IsInSpecificationPcP16ex_specification
_Z17IsInSpecificationPcP16ex_specification: ; 0x0201D83C
	stmfd sp!, {r4, r5, r6, r7, r8, lr}
	sub sp, sp, #8
	mov r6, r1
	ldr r1, [r6]
	mov r7, r0
	cmp r1, #0
	ldr r4, [r6, #0xc]
	mov r5, #0
	bls _0201D8B0
	add r8, sp, #0
_0201D864:
	ldrb r1, [r4]
	ldrb r0, [r4, #1]
	ldrb r2, [r4, #2]
	ldrb r3, [r4, #3]
	orr r0, r1, r0, lsl #8
	orr r1, r0, r2, lsl #16
	mov r0, r7
	mov r2, r8
	orr r1, r1, r3, lsl #24
	bl __throw_catch_compare
	cmp r0, #0
	addne sp, sp, #8
	movne r0, #1
	ldmnefd sp!, {r4, r5, r6, r7, r8, pc}
	ldr r0, [r6]
	add r5, r5, #1
	cmp r5, r0
	add r4, r4, #4
	blo _0201D864
_0201D8B0:
	mov r0, #0
	add sp, sp, #8
	ldmfd sp!, {r4, r5, r6, r7, r8, pc}
	arm_func_end _Z17IsInSpecificationPcP16ex_specification

	arm_func_start __unexpected
__unexpected: ; 0x0201D8BC
	stmfd sp!, {r3, r4, r5, r11, lr}
	sub sp, sp, #0x2c
	mov r11, sp
	str sp, [r11, #0x18]
	ldr r5, [r0, #0x14]
	bl _ZSt10unexpectedv
	b _0201D94C
	add r4, r11, #0x1c
	add r0, r5, #1
	mov r1, r4
	bl _Z22__DecodeUnsignedNumberPcPm
	add r1, r11, #0x20
	bl _Z22__DecodeUnsignedNumberPcPm
	add r1, r11, #0x24
	bl _Z20__DecodeSignedNumberPcPl
	str r0, [r11, #0x28]
	ldr r0, [r11, #8]
	mov r1, r4
	bl _Z17IsInSpecificationPcP16ex_specification
	cmp r0, #0
	beq _0201D914
	bl __rethrow
_0201D914:
	ldr r0, _0201D958 ; =0x0208EF0C
	add r1, r11, #0x1c
	bl _Z17IsInSpecificationPcP16ex_specification
	cmp r0, #0
	beq _0201D940
	ldr r3, _0201D95C ; =0x0208EF00
	ldr r0, _0201D960 ; =0x0208EF24
	ldr r2, _0201D964 ; =_ZNSt13bad_exceptionD1Ev
	add r1, r11, #0
	str r3, [r11]
	bl __throw
_0201D940:
	add r0, r11, #4
	bl __end__catch
	ldr sp, [r11, #0x18]
_0201D94C:
	bl _ZSt9terminatev
	add sp, r11, #0x2c
	ldmfd sp!, {r3, r4, r5, r11, pc}
_0201D958: .word unk_0208EF0C
_0201D95C: .word _ZTVSt13bad_exception+0x8
_0201D960: .word unk_0208EF24
_0201D964: .word _ZNSt13bad_exceptionD1Ev
	arm_func_end __unexpected

	arm_func_start _ZNSt13bad_exceptionD1Ev
_ZNSt13bad_exceptionD1Ev: ; 0x0201D968
	bx lr
	arm_func_end _ZNSt13bad_exceptionD1Ev

	arm_func_start _Z16HandleUnexpectedP12ThrowContextP13ExceptionInfoP16ex_specificationPc
_Z16HandleUnexpectedP12ThrowContextP13ExceptionInfoP16ex_specificationPc: ; 0x0201D96C
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	mov r4, r3
	mov r5, r2
	mov r2, r4
	mov r7, r0
	mov r6, r1
	bl _Z11UnwindStackP12ThrowContextP13ExceptionInfoPc
	ldr r2, [r7, #0x18]
	ldr r1, [r5, #8]
	ldr r0, [r7, #4]
	add r3, r2, r1
	str r0, [r2, r1]
	ldr r1, [r7]
	mov r0, r7
	str r1, [r3, #4]
	ldr r2, [r7, #8]
	mov r1, r6
	str r2, [r3, #8]
	str r4, [r3, #0x14]
	ldr r3, [r6]
	ldr r2, [r5, #4]
	add r2, r3, r2
	bl _Z17__TransferControlP12ThrowContextP13ExceptionInfoPc
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
	arm_func_end _Z16HandleUnexpectedP12ThrowContextP13ExceptionInfoP16ex_specificationPc

	arm_func_start _Z20FindExceptionHandlerP12ThrowContextP13ExceptionInfoPl
_Z20FindExceptionHandlerP12ThrowContextP13ExceptionInfoPl: ; 0x0201D9CC
	stmfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, lr}
	sub sp, sp, #0xa4
	mov r6, r1
	ldr r1, [r6]
	mov r7, r0
	str r1, [sp, #0x1c]
	ldr r0, [r6, #4]
	add r8, sp, #0x50
	str r0, [sp, #0x20]
	ldr r0, [r6, #8]
	mov r5, r2
	str r0, [sp, #0x24]
	ldr r0, [r6, #0xc]
	add r9, r7, #0x1c
	str r0, [sp, #0x28]
	ldr r0, [r6, #0x10]
	mov r4, #5
	str r0, [sp, #0x2c]
	ldr r0, [r6, #0x14]
	str r0, [sp, #0x30]
	ldr r0, [r7]
	str r0, [sp, #0x34]
	ldr r0, [r7, #4]
	str r0, [sp, #0x38]
	ldr r0, [r7, #8]
	str r0, [sp, #0x3c]
	ldr r0, [r7, #0xc]
	str r0, [sp, #0x40]
	ldr r0, [r7, #0x10]
	str r0, [sp, #0x44]
	ldr r0, [r7, #0x14]
	str r0, [sp, #0x48]
	ldr r0, [r7, #0x18]
	str r0, [sp, #0x4c]
_0201DA54:
	ldmia r9!, {r0, r1, r2, r3}
	stmia r8!, {r0, r1, r2, r3}
	subs r4, r4, #1
	bne _0201DA54
	add r4, sp, #0x1c
	ldr r1, [r9]
	mov r0, r4
	str r1, [r8]
	bl _Z13CurrentActionPK14ActionIterator
	add r8, sp, #0
	add r11, sp, #4
	add r9, sp, #0x14
	add r10, sp, #0x18
_0201DA88:
	cmp r0, #0x13
	addls pc, pc, r0, lsl #2
	b _0201DB88
_0201DA94: ; jump table
	b _0201DB90 ; case 0
	b _0201DB88 ; case 1
	b _0201DB90 ; case 2
	b _0201DB90 ; case 3
	b _0201DB90 ; case 4
	b _0201DB90 ; case 5
	b _0201DB90 ; case 6
	b _0201DB90 ; case 7
	b _0201DB90 ; case 8
	b _0201DB90 ; case 9
	b _0201DB90 ; case 10
	b _0201DB90 ; case 11
	b _0201DAE4 ; case 12
	b _0201DB90 ; case 13
	b _0201DB88 ; case 14
	b _0201DB38 ; case 15
	b _0201DB90 ; case 16
	b _0201DB90 ; case 17
	b _0201DB90 ; case 18
	b _0201DB90 ; case 19
_0201DAE4:
	ldr lr, [sp, #0x24]
	mov r1, r9
	ldrb r2, [lr, #1]
	ldrb r0, [lr, #2]
	ldrb r3, [lr, #3]
	ldrb r12, [lr, #4]
	orr r0, r2, r0, lsl #8
	orr r0, r0, r3, lsl #16
	orr r2, r0, r12, lsl #24
	add r0, lr, #5
	str r2, [sp, #0x10]
	bl _Z22__DecodeUnsignedNumberPcPm
	mov r1, r10
	bl _Z20__DecodeSignedNumberPcPl
	ldr r0, [r7]
	ldr r1, [sp, #0x10]
	mov r2, r5
	bl __throw_catch_compare
	cmp r0, #0
	beq _0201DB90
	b _0201DB9C
_0201DB38:
	ldr r0, [sp, #0x24]
	mov r1, r8
	add r0, r0, #1
	bl _Z22__DecodeUnsignedNumberPcPm
	mov r1, r11
	bl _Z22__DecodeUnsignedNumberPcPm
	add r1, sp, #8
	bl _Z20__DecodeSignedNumberPcPl
	str r0, [sp, #0xc]
	ldr r0, [r7]
	mov r1, r8
	bl _Z17IsInSpecificationPcP16ex_specification
	cmp r0, #0
	bne _0201DB90
	ldr r3, [sp, #0x24]
	mov r0, r7
	mov r1, r6
	mov r2, r8
	bl _Z16HandleUnexpectedP12ThrowContextP13ExceptionInfoP16ex_specificationPc
	b _0201DB90
_0201DB88:
	bl _ZSt9terminatev
	b _0201DB9C
_0201DB90:
	mov r0, r4
	bl _Z10NextActionP14ActionIterator
	b _0201DA88
_0201DB9C:
	ldr r0, [sp, #0x24]
	add sp, sp, #0xa4
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
	arm_func_end _Z20FindExceptionHandlerP12ThrowContextP13ExceptionInfoPl

	arm_func_start _Z14SetupCatchInfoP12ThrowContextll
_Z14SetupCatchInfoP12ThrowContextll: ; 0x0201DBA8
	stmfd sp!, {r3, lr}
	ldr lr, [r0, #0x18]
	ldr r12, [r0, #4]
	add r3, lr, r1
	str r12, [lr, r1]
	ldr r1, [r0]
	str r1, [r3, #4]
	ldr r1, [r0, #8]
	str r1, [r3, #8]
	ldr r1, [r0]
	ldrb r1, [r1]
	cmp r1, #0x2a
	ldrne r0, [r0, #4]
	addne r0, r0, r2
	strne r0, [r3, #0xc]
	ldmnefd sp!, {r3, pc}
	add r1, r3, #0x10
	str r1, [r3, #0xc]
	ldr r0, [r0, #4]
	ldr r0, [r0]
	add r0, r0, r2
	str r0, [r3, #0x10]
	ldmfd sp!, {r3, pc}
	arm_func_end _Z14SetupCatchInfoP12ThrowContextll

	arm_func_start __rethrowHandler
__rethrowHandler: ; 0x0201DC04
	stmfd sp!, {r4, r5, r6, lr}
	sub sp, sp, #0x28
	mov r6, r0
	ldr r0, [r6, #0x10]
	add r1, sp, #0x10
	bl _Z19FindExceptionRecordPcP13ExceptionInfo
	ldr r0, [sp, #0x14]
	cmp r0, #0
	bne _0201DC2C
	bl _ZSt9terminatev
_0201DC2C:
	add r4, sp, #0x10
	mov r0, r6
	mov r1, r4
	bl _Z16__SetupFrameInfoP12ThrowContextP13ExceptionInfo
	ldr r0, [r6]
	cmp r0, #0
	movne r0, #0
	strne r0, [r6, #0xc]
	bne _0201DC6C
	mov r0, r6
	mov r1, r4
	bl _Z23FindMostRecentExceptionP12ThrowContextP13ExceptionInfo
	str r0, [r6, #0xc]
	cmp r0, #0
	bne _0201DC6C
	bl _ZSt9terminatev
_0201DC6C:
	add r5, sp, #0x10
	add r2, sp, #0
	mov r0, r6
	mov r1, r5
	bl _Z20FindExceptionHandlerP12ThrowContextP13ExceptionInfoPl
	mov r4, r0
	ldrb r1, [r4, #1]
	ldrb r0, [r4, #2]
	ldrb r2, [r4, #3]
	ldrb r3, [r4, #4]
	orr r0, r1, r0, lsl #8
	orr r0, r0, r2, lsl #16
	orr r2, r0, r3, lsl #24
	add r1, sp, #8
	add r0, r4, #5
	str r2, [sp, #4]
	bl _Z22__DecodeUnsignedNumberPcPm
	add r1, sp, #0xc
	bl _Z20__DecodeSignedNumberPcPl
	mov r0, r6
	mov r1, r5
	mov r2, r4
	bl _Z11UnwindStackP12ThrowContextP13ExceptionInfoPc
	ldr r1, [sp, #0xc]
	ldr r2, [sp]
	mov r0, r6
	bl _Z14SetupCatchInfoP12ThrowContextll
	ldr r3, [sp, #0x10]
	ldr r2, [sp, #8]
	mov r0, r6
	mov r1, r5
	add r2, r3, r2
	bl _Z17__TransferControlP12ThrowContextP13ExceptionInfoPc
	add sp, sp, #0x28
	ldmfd sp!, {r4, r5, r6, pc}
	arm_func_end __rethrowHandler

	arm_func_start __end__catch
__end__catch: ; 0x0201DCF8
	stmfd sp!, {r3, lr}
	ldr r1, [r0]
	cmp r1, #0
	ldrne r2, [r0, #8]
	cmpne r2, #0
	ldmeqfd sp!, {r3, pc}
	mov r0, r1
	mvn r1, #0
	blx r2
	ldmfd sp!, {r3, pc}
	arm_func_end __end__catch

	arm_func_start _ZNSt13bad_exceptionD0Ev
_ZNSt13bad_exceptionD0Ev: ; 0x0201DD20
	stmfd sp!, {r4, lr}
	mov r4, r0
	bl _ZdlPv
	mov r0, r4
	ldmfd sp!, {r4, pc}
	arm_func_end _ZNSt13bad_exceptionD0Ev

	arm_func_start _ZNKSt13bad_exception4whatEv
_ZNKSt13bad_exception4whatEv: ; 0x0201DD34
	ldr r0, _0201DD3C ; =0x0208EEC4
	bx lr
_0201DD3C: .word _ZZNKSt13bad_exception4whatEvEs
	arm_func_end _ZNKSt13bad_exception4whatEv

	arm_func_start __call_static_initializers
__call_static_initializers: ; 0x0201DD40
	stmfd sp!, {r4, lr}
	ldr r4, _0201DD6C ; =__sinit__
	b _0201DD54
_0201DD4C:
	blx r0
	add r4, r4, #4
_0201DD54:
	cmp r4, #0
	ldmeqfd sp!, {r4, pc}
	ldr r0, [r4]
	cmp r0, #0
	bne _0201DD4C
	ldmfd sp!, {r4, pc}
_0201DD6C: .word __sinit__
	arm_func_end __call_static_initializers

	arm_func_start __destroy_global_chain
__destroy_global_chain: ; 0x0201DD70
	stmfd sp!, {r3, r4, r5, lr}
	ldr r4, _0201DDB0 ; =__global_destructor_chain
	ldr r2, [r4]
	cmp r2, #0
	ldmeqfd sp!, {r3, r4, r5, pc}
	mvn r5, #0
_0201DD88:
	ldr r0, [r2]
	mov r1, r5
	str r0, [r4]
	ldr r0, [r2, #8]
	ldr r2, [r2, #4]
	blx r2
	ldr r2, [r4]
	cmp r2, #0
	bne _0201DD88
	ldmfd sp!, {r3, r4, r5, pc}
_0201DDB0: .word __global_destructor_chain
	arm_func_end __destroy_global_chain

	arm_func_start _ZSt9dthandlerv
_ZSt9dthandlerv: ; 0x0201DDB4
	ldr r12, _0201DDBC ; =abort
	bx r12
_0201DDBC: .word abort
	arm_func_end _ZSt9dthandlerv

	arm_func_start _ZSt9duhandlerv
_ZSt9duhandlerv: ; 0x0201DDC0
	ldr r12, _0201DDC8 ; =_ZSt9terminatev
	bx r12
_0201DDC8: .word _ZSt9terminatev
	arm_func_end _ZSt9duhandlerv

	arm_func_start _ZSt9terminatev
_ZSt9terminatev: ; 0x0201DDCC
	stmfd sp!, {r3, lr}
	ldr r0, _0201DDE0 ; =_ZSt8thandler
	ldr r0, [r0]
	blx r0
	ldmfd sp!, {r3, pc}
_0201DDE0: .word _ZSt8thandler
	arm_func_end _ZSt9terminatev

	arm_func_start _ZSt10unexpectedv
_ZSt10unexpectedv: ; 0x0201DDE4
	stmfd sp!, {r3, lr}
	ldr r0, _0201DDF8 ; =_ZSt8thandler
	ldr r0, [r0, #4]
	blx r0
	ldmfd sp!, {r3, pc}
_0201DDF8: .word _ZSt8thandler
	arm_func_end _ZSt10unexpectedv

	arm_func_start __register_global_object
__register_global_object: ; 0x0201DDFC
	ldr r3, _0201DE18 ; =__global_destructor_chain
	ldr r12, [r3]
	str r12, [r2]
	str r1, [r2, #4]
	str r0, [r2, #8]
	str r2, [r3]
	bx lr
_0201DE18: .word __global_destructor_chain
	arm_func_end __register_global_object

	arm_func_start __throw_catch_compare
__throw_catch_compare: ; 0x0201DE1C
	stmfd sp!, {r3, lr}
	mov r12, #0
	mov r3, r1
	cmp r1, #0
	str r12, [r2]
	moveq r0, #1
	ldmeqfd sp!, {r3, pc}
	ldrb r12, [r1]
	cmp r12, #0x50
	bne _0201DE80
	ldrb r12, [r3, #1]!
	cmp r12, #0x56
	addeq r3, r3, #1
	ldrb r12, [r3]
	cmp r12, #0x4b
	addeq r3, r3, #1
	ldrb r3, [r3]
	cmp r3, #0x76
	bne _0201DE7C
	ldrb r3, [r0]
	cmp r3, #0x50
	cmpne r3, #0x2a
	moveq r0, #1
	ldmeqfd sp!, {r3, pc}
_0201DE7C:
	mov r3, r1
_0201DE80:
	ldrb r12, [r0]
	cmp r12, #0x21
	beq _0201DE94
	cmp r12, #0x2a
	bne _0201DF84
_0201DE94:
	ldrb lr, [r0], #1
	ldrb r12, [r3], #1
	cmp lr, r12
	movne r0, #0
	ldmnefd sp!, {r3, pc}
_0201DEA8:
	ldrb lr, [r0]
	ldrb r12, [r3], #1
	cmp lr, r12
	bne _0201DEFC
	cmp lr, #0x21
	add r0, r0, #1
	bne _0201DEA8
	ldrb r1, [r0]
	mov lr, #0
	cmp r1, #0x21
	beq _0201DEF0
	mov r1, #0xa
_0201DED8:
	ldrb r12, [r0]
	ldrb r3, [r0, #1]!
	mla r12, lr, r1, r12
	cmp r3, #0x21
	sub lr, r12, #0x30
	bne _0201DED8
_0201DEF0:
	str lr, [r2]
	mov r0, #1
	ldmfd sp!, {r3, pc}
_0201DEFC:
	ldrb r3, [r0], #1
	cmp r3, #0x21
	bne _0201DEFC
_0201DF08:
	ldrb r3, [r0], #1
	cmp r3, #0x21
	bne _0201DF08
	ldrb r3, [r0]
	cmp r3, #0
	moveq r0, #0
	ldmeqfd sp!, {r3, pc}
	add r3, r1, #1
	b _0201DEA8
_0201DF2C:
	ldrb r1, [r3, #1]!
	add r0, r0, #1
	cmp r1, #0x4b
	bne _0201DF4C
	ldrb r1, [r0]
	add r3, r3, #1
	cmp r1, #0x4b
	addeq r0, r0, #1
_0201DF4C:
	ldrb r2, [r0]
	cmp r2, #0x4b
	moveq r0, #0
	ldmeqfd sp!, {r3, pc}
	ldrb r1, [r3]
	cmp r1, #0x56
	bne _0201DF74
	cmp r2, #0x56
	addeq r0, r0, #1
	add r3, r3, #1
_0201DF74:
	ldrb r1, [r0]
	cmp r1, #0x56
	moveq r0, #0
	ldmeqfd sp!, {r3, pc}
_0201DF84:
	ldrb r2, [r0]
	cmp r2, #0x50
	cmpne r2, #0x52
	bne _0201DFA0
	ldrb r1, [r3]
	cmp r2, r1
	beq _0201DF2C
_0201DFA0:
	ldrb r1, [r3]
	cmp r2, r1
	bne _0201DFC8
_0201DFAC:
	cmp r2, #0
	moveq r0, #1
	ldmeqfd sp!, {r3, pc}
	ldrb r2, [r0, #1]!
	ldrb r1, [r3, #1]!
	cmp r2, r1
	beq _0201DFAC
_0201DFC8:
	mov r0, #0
	ldmfd sp!, {r3, pc}
	arm_func_end __throw_catch_compare

	arm_func_start _ZSt17__throw_bad_allocv
_ZSt17__throw_bad_allocv: ; 0x0201DFD0
	stmfd sp!, {r3, lr}
	ldr r0, _0201E000 ; =0x0208EF54
	ldrb r0, [r0]
	cmp r0, #0
	ldmeqfd sp!, {r3, pc}
	ldr r3, _0201E004 ; =0x0208EF88
	ldr r0, _0201E008 ; =0x0208EF94
	ldr r2, _0201E00C ; =_ZNSt9bad_allocD1Ev
	add r1, sp, #0
	str r3, [sp]
	bl __throw
	ldmfd sp!, {r3, pc}
_0201E000: .word _ZSt18__throws_bad_alloc
_0201E004: .word _ZTVSt9bad_alloc+0x8
_0201E008: .word unk_0208EF94
_0201E00C: .word _ZNSt9bad_allocD1Ev
	arm_func_end _ZSt17__throw_bad_allocv

	arm_func_start _ZNSt9bad_allocD1Ev
_ZNSt9bad_allocD1Ev: ; 0x0201E010
	bx lr
	arm_func_end _ZNSt9bad_allocD1Ev

	arm_func_start _Znwm
_Znwm: ; 0x0201E014
	stmfd sp!, {r3, r4, r5, r6, r11, lr}
	sub sp, sp, #0x18
	mov r11, sp
	movs r6, r0
	ldr r4, _0201E074 ; =_ZSt13__new_handler
	moveq r6, #4
_0201E02C:
	mov r0, r6
	bl malloc
	movs r5, r0
	bne _0201E054
	ldr r0, [r4]
	cmp r0, #0
	beq _0201E050
	blx r0
	b _0201E02C
_0201E050:
	bl _ZSt17__throw_bad_allocv
_0201E054:
	add sp, r11, #0x18
	mov r0, r5
	ldmfd sp!, {r3, r4, r5, r6, r11, pc}
	add r0, r11, #0
	bl __unexpected
_0201E068:
	b _0201E068
	add sp, r11, #0x18
	ldmfd sp!, {r3, r4, r5, r6, r11, pc}
_0201E074: .word _ZSt13__new_handler
	arm_func_end _Znwm

	arm_func_start _ZdlPv
_ZdlPv: ; 0x0201E078
	stmfd sp!, {r3, lr}
	cmp r0, #0
	ldmeqfd sp!, {r3, pc}
	bl free
	ldmfd sp!, {r3, pc}
	arm_func_end _ZdlPv

	arm_func_start _Znam
_Znam: ; 0x0201E08C
	stmfd sp!, {r11, lr}
	sub sp, sp, #0x18
	mov r11, sp
	bl _Znwm
	add sp, r11, #0x18
	ldmfd sp!, {r11, pc}
	add r0, r11, #0
	bl __unexpected
_0201E0AC:
	b _0201E0AC
	add sp, r11, #0x18
	ldmfd sp!, {r11, pc}
	arm_func_end _Znam

	arm_func_start _ZdaPv
_ZdaPv: ; 0x0201E0B8
	ldr r12, _0201E0C0 ; =_ZdlPv
	bx r12
_0201E0C0: .word _ZdlPv
	arm_func_end _ZdaPv

	arm_func_start _ZNSt9bad_allocD0Ev
_ZNSt9bad_allocD0Ev: ; 0x0201E0C4
	stmfd sp!, {r4, lr}
	mov r4, r0
	bl _ZdlPv
	mov r0, r4
	ldmfd sp!, {r4, pc}
	arm_func_end _ZNSt9bad_allocD0Ev

	arm_func_start _ZNKSt9bad_alloc4whatEv
_ZNKSt9bad_alloc4whatEv: ; 0x0201E0D8
	ldr r0, _0201E0E0 ; =0x0208EF58
	bx lr
_0201E0E0: .word _ZZNKSt9bad_alloc4whatEvEs
	arm_func_end _ZNKSt9bad_alloc4whatEv

	arm_func_start _Z17DestroyArrayRangePhS_mPFvPvE
_Z17DestroyArrayRangePhS_mPFvPvE: ; 0x0201E0E4
	stmfd sp!, {r4, r5, r6, r7, r11, lr}
	sub sp, sp, #0x18
	mov r11, sp
	mov r7, r0
	mov r6, r1
	mov r5, r2
	mov r4, r3
	str sp, [r11, #0x14]
	cmp r6, r7
	addls sp, r11, #0x18
	ldmlsfd sp!, {r4, r5, r6, r7, r11, pc}
_0201E110:
	sub r6, r6, r5
	mov r0, r6
	blx r4
	cmp r6, r7
	bhi _0201E110
	add sp, r11, #0x18
	ldmfd sp!, {r4, r5, r6, r7, r11, pc}
	bl _ZSt9terminatev
	add r0, r11, #0
	bl __end__catch
	add sp, r11, #0x18
	ldmfd sp!, {r4, r5, r6, r7, r11, pc}
	arm_func_end _Z17DestroyArrayRangePhS_mPFvPvE

	arm_func_start __cxa_vec_new
__cxa_vec_new: ; 0x0201E140
	stmfd sp!, {r4, r5, r6, r7, r8, r9, r11, lr}
	sub sp, sp, #0x18
	mov r11, sp
	mov r8, r0
	mov r7, r1
	mov r6, r2
	mla r0, r8, r7, r6
	mov r5, r3
	bl _Znam
	movs r9, r0
	addeq sp, r11, #0x18
	moveq r0, #0
	ldmeqfd sp!, {r4, r5, r6, r7, r8, r9, r11, pc}
	cmp r6, #0
	beq _0201E18C
	add r0, r9, r6
	str r8, [r0, #-4]
	cmp r6, #8
	strhs r7, [r0, #-8]
_0201E18C:
	cmp r5, #0
	beq _0201E1EC
	str sp, [r11, #0x14]
	cmp r8, #0
	add r4, r9, r6
	beq _0201E1EC
_0201E1A4:
	mov r0, r4
	blx r5
	add r4, r4, r7
	subs r8, r8, #1
	bne _0201E1A4
	b _0201E1EC
	ldr r3, [r11, #0x38]
	cmp r3, #0
	beq _0201E1D8
	mov r1, r4
	mov r2, r7
	add r0, r9, r6
	bl _Z17DestroyArrayRangePhS_mPFvPvE
_0201E1D8:
	mov r0, r9
	bl _ZdaPv
	bl __rethrow
	add r0, r11, #0
	bl __end__catch
_0201E1EC:
	add r0, r9, r6
	add sp, r11, #0x18
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r11, pc}
	arm_func_end __cxa_vec_new

	arm_func_start __cxa_vec_ctor
__cxa_vec_ctor: ; 0x0201E1F8
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r11, lr}
	sub sp, sp, #0x18
	mov r11, sp
	movs r4, r3
	mov r7, r0
	mov r6, r1
	mov r5, r2
	addeq sp, r11, #0x18
	ldmeqfd sp!, {r3, r4, r5, r6, r7, r8, r11, pc}
	ldr r0, [r11, #0x38]
	cmp r0, #0
	beq _0201E280
	mov r8, r7
	str sp, [r11, #0x14]
	cmp r6, #0
	addeq sp, r11, #0x18
	ldmeqfd sp!, {r3, r4, r5, r6, r7, r8, r11, pc}
_0201E23C:
	mov r0, r8
	blx r4
	add r8, r8, r5
	subs r6, r6, #1
	bne _0201E23C
	add sp, r11, #0x18
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r11, pc}
	ldr r3, [r11, #0x38]
	mov r0, r7
	mov r1, r8
	mov r2, r5
	bl _Z17DestroyArrayRangePhS_mPFvPvE
	bl __rethrow
	add r0, r11, #0
	bl __end__catch
	add sp, r11, #0x18
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r11, pc}
_0201E280:
	cmp r6, #0
	addeq sp, r11, #0x18
	ldmeqfd sp!, {r3, r4, r5, r6, r7, r8, r11, pc}
_0201E28C:
	mov r0, r7
	blx r4
	add r7, r7, r5
	subs r6, r6, #1
	bne _0201E28C
	add sp, r11, #0x18
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r11, pc}
	arm_func_end __cxa_vec_ctor

	arm_func_start __cxa_vec_dtor
__cxa_vec_dtor: ; 0x0201E2A8
	stmfd sp!, {r4, r5, r6, r7, r11, lr}
	sub sp, sp, #0x30
	mov r11, sp
	mov r7, r1
	movs r5, r3
	mov r6, r2
	mlane r4, r7, r6, r0
	strne sp, [r11, #0x2c]
	cmpne r7, #0
	addeq sp, r11, #0x30
	ldmeqfd sp!, {r4, r5, r6, r7, r11, pc}
_0201E2D4:
	sub r4, r4, r6
	mov r0, r4
	blx r5
	subs r7, r7, #1
	bne _0201E2D4
	add sp, r11, #0x30
	ldmfd sp!, {r4, r5, r6, r7, r11, pc}
	str sp, [r11, #0x14]
	subs r7, r7, #1
	beq _0201E324
_0201E2FC:
	sub r4, r4, r6
	mov r0, r4
	blx r5
	subs r7, r7, #1
	bne _0201E2FC
	b _0201E324
	bl _ZSt9terminatev
	add r0, r11, #0
	bl __end__catch
	ldr sp, [r11, #0x14]
_0201E324:
	bl __rethrow
	add r0, r11, #0x18
	bl __end__catch
	add sp, r11, #0x30
	ldmfd sp!, {r4, r5, r6, r7, r11, pc}
	arm_func_end __cxa_vec_dtor

	arm_func_start __cxa_vec_cleanup
__cxa_vec_cleanup: ; 0x0201E338
	stmfd sp!, {r4, r5, r6, r7, r11, lr}
	sub sp, sp, #0x18
	mov r11, sp
	mov r7, r1
	movs r5, r3
	mov r6, r2
	mlane r4, r7, r6, r0
	strne sp, [r11, #0x14]
	cmpne r7, #0
	addeq sp, r11, #0x18
	ldmeqfd sp!, {r4, r5, r6, r7, r11, pc}
_0201E364:
	sub r4, r4, r6
	mov r0, r4
	blx r5
	subs r7, r7, #1
	bne _0201E364
	add sp, r11, #0x18
	ldmfd sp!, {r4, r5, r6, r7, r11, pc}
	bl _ZSt9terminatev
	add r0, r11, #0
	bl __end__catch
	add sp, r11, #0x18
	ldmfd sp!, {r4, r5, r6, r7, r11, pc}
	arm_func_end __cxa_vec_cleanup

	arm_func_start __cxa_vec_delete
__cxa_vec_delete: ; 0x0201E394
	stmfd sp!, {r3, r4, r5, lr}
	movs r5, r0
	mov r4, r2
	mov r12, r1
	ldmeqfd sp!, {r3, r4, r5, pc}
	cmp r3, #0
	beq _0201E3BC
	ldr r1, [r5, #-4]
	mov r2, r12
	bl __cxa_vec_dtor
_0201E3BC:
	sub r0, r5, r4
	bl _ZdaPv
	ldmfd sp!, {r3, r4, r5, pc}
	arm_func_end __cxa_vec_delete

	arm_func_start _ZNSt9type_infoD2Ev
_ZNSt9type_infoD2Ev: ; 0x0201E3C8
	bx lr
	arm_func_end _ZNSt9type_infoD2Ev

	arm_func_start _ZNKSt9type_infoeqERKS_
_ZNKSt9type_infoeqERKS_: ; 0x0201E3CC
	stmfd sp!, {r3, lr}
	cmp r0, r1
	beq _0201E3EC
	ldr r0, [r0, #4]
	ldr r1, [r1, #4]
	bl strcmp
	cmp r0, #0
	bne _0201E3F4
_0201E3EC:
	mov r0, #1
	ldmfd sp!, {r3, pc}
_0201E3F4:
	mov r0, #0
	ldmfd sp!, {r3, pc}
	arm_func_end _ZNKSt9type_infoeqERKS_

	arm_func_start _ZN10__cxxabiv117__class_type_infoD1Ev
_ZN10__cxxabiv117__class_type_infoD1Ev: ; 0x0201E3FC
	stmfd sp!, {r4, lr}
	mov r4, r0
	bl _ZNSt9type_infoD2Ev
	mov r0, r4
	ldmfd sp!, {r4, pc}
	arm_func_end _ZN10__cxxabiv117__class_type_infoD1Ev

	arm_func_start _ZN10__cxxabiv117__class_type_infoD0Ev
_ZN10__cxxabiv117__class_type_infoD0Ev: ; 0x0201E410
	stmfd sp!, {r4, lr}
	mov r4, r0
	bl _ZNSt9type_infoD2Ev
	mov r0, r4
	bl _ZdlPv
	mov r0, r4
	ldmfd sp!, {r4, pc}
	arm_func_end _ZN10__cxxabiv117__class_type_infoD0Ev

	arm_func_start _ZN10__cxxabiv117__class_type_infoD2Ev
_ZN10__cxxabiv117__class_type_infoD2Ev: ; 0x0201E42C
	stmfd sp!, {r4, lr}
	mov r4, r0
	bl _ZNSt9type_infoD2Ev
	mov r0, r4
	ldmfd sp!, {r4, pc}
	arm_func_end _ZN10__cxxabiv117__class_type_infoD2Ev

	arm_func_start _ZN10__cxxabiv120__si_class_type_infoD1Ev
_ZN10__cxxabiv120__si_class_type_infoD1Ev: ; 0x0201E440
	stmfd sp!, {r4, lr}
	mov r4, r0
	bl _ZN10__cxxabiv117__class_type_infoD2Ev
	mov r0, r4
	ldmfd sp!, {r4, pc}
	arm_func_end _ZN10__cxxabiv120__si_class_type_infoD1Ev

	arm_func_start _ZN10__cxxabiv120__si_class_type_infoD0Ev
_ZN10__cxxabiv120__si_class_type_infoD0Ev: ; 0x0201E454
	stmfd sp!, {r4, lr}
	mov r4, r0
	bl _ZN10__cxxabiv117__class_type_infoD2Ev
	mov r0, r4
	bl _ZdlPv
	mov r0, r4
	ldmfd sp!, {r4, pc}
	arm_func_end _ZN10__cxxabiv120__si_class_type_infoD0Ev

	arm_func_start _Z15__PopStackFrameP12ThrowContextP13ExceptionInfo
_Z15__PopStackFrameP12ThrowContextP13ExceptionInfo: ; 0x0201E470
	stmfd sp!, {r4, lr}
	ldrb r1, [r0, #0x6a]
	ldr r12, [r0, #0x60]
	mov r2, #0x10
	cmp r1, #0
	ldr r1, [r0, #0x18]
	moveq r2, #0
	add r1, r1, r12
	mov r4, #0xf
	sub lr, r1, r2
	mov r3, #1
_0201E49C:
	ldrh r1, [r0, #0x68]
	tst r1, r3, lsl r4
	ldrne r2, [lr, #-4]!
	addne r1, r0, r4, lsl #2
	strne r2, [r1, #0x1c]
	subs r4, r4, #1
	bpl _0201E49C
	ldr r1, [r0, #0x18]
	add r1, r1, r12
	str r1, [r0, #0x14]
	ldr r0, [r0, #0x54]
	ldmfd sp!, {r4, pc}
	arm_func_end _Z15__PopStackFrameP12ThrowContextP13ExceptionInfo

	arm_func_start _Z16__SetupFrameInfoP12ThrowContextP13ExceptionInfo
_Z16__SetupFrameInfoP12ThrowContextP13ExceptionInfo: ; 0x0201E4CC
	stmfd sp!, {r4, r5, r6, lr}
	ldr r1, [r1, #4]
	mov r6, r0
	ldrb r0, [r1]
	ands r4, r0, #0x40
	movne r2, #1
	moveq r2, #0
	strb r2, [r6, #0x6b]
	tst r0, #0x20
	movne r2, #1
	moveq r2, #0
	ands r5, r0, #0x80
	movne r0, #1
	moveq r0, #0
	strb r0, [r6, #0x6c]
	strb r2, [r6, #0x6a]
	ldrb r2, [r1, #1]
	add r0, r1, #2
	add r1, r6, #0x60
	mov r2, r2, lsl #4
	strh r2, [r6, #0x68]
	ldrh r2, [r6, #0x68]
	orr r2, r2, #0x4000
	strh r2, [r6, #0x68]
	bl _Z22__DecodeUnsignedNumberPcPm
	cmp r4, #0
	beq _0201E540
	add r1, r6, #0x64
	bl _Z22__DecodeUnsignedNumberPcPm
_0201E540:
	cmp r4, #0
	beq _0201E560
	cmp r5, #0
	ldrne r0, [r6, #0x38]
	strne r0, [r6, #0x18]
	ldreq r0, [r6, #0x48]
	streq r0, [r6, #0x18]
	ldmfd sp!, {r4, r5, r6, pc}
_0201E560:
	ldr r0, [r6, #0x14]
	str r0, [r6, #0x18]
	ldmfd sp!, {r4, r5, r6, pc}
	arm_func_end _Z16__SetupFrameInfoP12ThrowContextP13ExceptionInfo

	arm_func_start _Z20__FindExceptionTableP13ExceptionInfoPc
_Z20__FindExceptionTableP13ExceptionInfoPc: ; 0x0201E56C
	ldr r2, _0201E584 ; =SDK_STATIC_ETABLE_START
	ldr r1, _0201E588 ; =SDK_STATIC_ETABLE_END
	str r2, [r0, #0xc]
	str r1, [r0, #0x10]
	mov r0, #1
	bx lr
_0201E584: .word SDK_STATIC_ETABLE_START
_0201E588: .word SDK_STATIC_ETABLE_END
	arm_func_end _Z20__FindExceptionTableP13ExceptionInfoPc

	arm_func_start _Z16__SkipUnwindInfoPc
_Z16__SkipUnwindInfoPc: ; 0x0201E58C
	stmfd sp!, {r3, r4, r5, lr}
	ldrb r5, [r0], #2
	add r4, sp, #0
	mov r1, r4
	bl _Z22__DecodeUnsignedNumberPcPm
	tst r5, #0x40
	ldmeqfd sp!, {r3, r4, r5, pc}
	mov r1, r4
	bl _Z22__DecodeUnsignedNumberPcPm
	ldmfd sp!, {r3, r4, r5, pc}
	arm_func_end _Z16__SkipUnwindInfoPc

	arm_func_start _Z17__TransferControlP12ThrowContextP13ExceptionInfoPc
_Z17__TransferControlP12ThrowContextP13ExceptionInfoPc: ; 0x0201E5B4
	ldr r4, [r0, #0x2c]
	ldr r5, [r0, #0x30]
	ldr r6, [r0, #0x34]
	ldr r7, [r0, #0x38]
	ldr r8, [r0, #0x3c]
	ldr r9, [r0, #0x40]
	ldr r10, [r0, #0x44]
	ldr r11, [r0, #0x48]
	ldr sp, [r0, #0x5c]
	ldr r12, [r0, #0x64]
	sub sp, sp, r12
	bx r2
	arm_func_end _Z17__TransferControlP12ThrowContextP13ExceptionInfoPc

	arm_func_start __throw
__throw: ; 0x0201E5E4
	mov r12, sp
	sub sp, sp, #0x70
	str r4, [sp, #0x2c]
	str r5, [sp, #0x30]
	str r6, [sp, #0x34]
	str r7, [sp, #0x38]
	str r8, [sp, #0x3c]
	str r9, [sp, #0x40]
	str r10, [sp, #0x44]
	str r11, [sp, #0x48]
	str r12, [sp, #0x14]
	str r12, [sp, #0x5c]
	str lr, [sp, #0x10]
	str r0, [sp]
	str r1, [sp, #4]
	str r2, [sp, #8]
	mov r0, sp
	b __rethrowHandler
	arm_func_end __throw

	arm_func_start __rethrow
__rethrow: ; 0x0201E62C
	mov r12, sp
	sub sp, sp, #0x70
	str r4, [sp, #0x2c]
	str r5, [sp, #0x30]
	str r6, [sp, #0x34]
	str r7, [sp, #0x38]
	str r8, [sp, #0x3c]
	str r9, [sp, #0x40]
	str r10, [sp, #0x44]
	str r11, [sp, #0x48]
	str r12, [sp, #0x14]
	str r12, [sp, #0x5c]
	str lr, [sp, #0x10]
	mov r12, #0
	str r12, [sp]
	str r12, [sp, #4]
	str r12, [sp, #8]
	mov r0, sp
	b __rethrowHandler
	arm_func_end __rethrow

	arm_func_start _dadd
_dadd: ; 0x0201E678
	stmfd sp!, {r4, lr}
	eors r12, r1, r3
	eormi r3, r3, #0x80000000
	bmi _0201E9B8
_0201E688:
	subs r12, r0, r2
	sbcs lr, r1, r3
	bhs _0201E6A4
	adds r2, r2, r12
	adc r3, r3, lr
	subs r0, r0, r12
	sbc r1, r1, lr
_0201E6A4:
	mov lr, #0x80000000
	mov r12, r1, lsr #0x14
	orr r1, lr, r1, lsl #11
	orr r1, r1, r0, lsr #21
	mov r0, r0, lsl #0xb
	movs r4, r12, lsl #0x15
	cmnne r4, #0x200000
	beq _0201E7A0
	mov r4, r3, lsr #0x14
	orr r3, lr, r3, lsl #11
	orr r3, r3, r2, lsr #21
	mov r2, r2, lsl #0xb
	movs lr, r4, lsl #0x15
	beq _0201E7E8
_0201E6DC:
	subs r4, r12, r4
	beq _0201E734
	cmp r4, #0x20
	ble _0201E718
	cmp r4, #0x38
	movge r4, #0x3f
	sub r4, r4, #0x20
	rsb lr, r4, #0x20
	orrs lr, r2, r3, lsl lr
	mov r2, r3, lsr r4
	orrne r2, r2, #1
	adds r0, r0, r2
	adcs r1, r1, #0
	blo _0201E75C
	b _0201E740
_0201E718:
	rsb lr, r4, #0x20
	movs lr, r2, lsl lr
	rsb lr, r4, #0x20
	mov r2, r2, lsr r4
	orr r2, r2, r3, lsl lr
	mov r3, r3, lsr r4
	orrne r2, r2, #1
_0201E734:
	adds r0, r0, r2
	adcs r1, r1, r3
	blo _0201E75C
_0201E740:
	add r12, r12, #1
	and r4, r0, #1
	movs r1, r1, rrx
	orr r0, r4, r0, rrx
	mov lr, r12, lsl #0x15
	cmn lr, #0x200000
	beq _0201E96C
_0201E75C:
	movs r2, r0, lsl #0x15
	mov r0, r0, lsr #0xb
	orr r0, r0, r1, lsl #21
	add r1, r1, r1
	mov r1, r1, lsr #0xc
	orr r1, r1, r12, lsl #20
	tst r2, #0x80000000
	ldmeqfd sp!, {r4, lr}
	bxeq lr
	movs r2, r2, lsl #1
	andeqs r2, r0, #1
	ldmeqfd sp!, {r4, lr}
	bxeq lr
	adds r0, r0, #1
	adc r1, r1, #0
	ldmfd sp!, {r4, lr}
	bx lr
_0201E7A0:
	cmp r12, #0x800
	movge lr, #0x80000000
	movlt lr, #0
	bics r12, r12, #0x800
	beq _0201E80C
	orrs r4, r0, r1, lsl #1
	bne _0201E948
	mov r4, r3, lsr #0x14
	mov r3, r3, lsl #0xb
	orr r3, r3, r2, lsr #21
	mov r2, r2, lsl #0xb
	movs r4, r4, lsl #0x15
	beq _0201E934
	cmn r4, #0x200000
	bne _0201E934
	orrs r4, r2, r3, lsl #1
	beq _0201E934
	b _0201E948
_0201E7E8:
	cmp r4, #0x800
	movge lr, #0x80000000
	movlt lr, #0
	bic r12, r12, #0x800
	bics r4, r4, #0x800
	beq _0201E878
	orrs r4, r2, r3, lsl #1
	bne _0201E948
	b _0201E934
_0201E80C:
	orrs r4, r0, r1, lsl #1
	beq _0201E84C
	mov r12, #1
	bic r1, r1, #0x80000000
	mov r4, r3, lsr #0x14
	mov r3, r3, lsl #0xb
	orr r3, r3, r2, lsr #21
	mov r2, r2, lsl #0xb
	movs r4, r4, lsl #0x15
	cmnne r4, #0x200000
	mov r4, r4, lsr #0x15
	orr r4, r4, lr, lsr #20
	beq _0201E7E8
	orr r3, r3, #0x80000000
	orr r12, r12, lr, lsr #20
	b _0201E6DC
_0201E84C:
	mov r12, r3, lsr #0x14
	mov r1, r3, lsl #0xb
	orr r1, r1, r2, lsr #21
	mov r0, r2, lsl #0xb
	movs r4, r12, lsl #0x15
	beq _0201E900
	cmn r4, #0x200000
	bne _0201E900
	orrs r4, r0, r1, lsl #1
	beq _0201E934
	b _0201E94C
_0201E878:
	orrs r4, r2, r3, lsl #1
	beq _0201E910
	mov r4, #1
	bic r3, r3, #0x80000000
	cmp r1, #0
	bpl _0201E89C
	orr r12, r12, lr, lsr #20
	orr r4, r4, lr, lsr #20
	b _0201E6DC
_0201E89C:
	adds r0, r0, r2
	adcs r1, r1, r3
	blo _0201E8BC
	add r12, r12, #1
	and r4, r0, #1
	movs r1, r1, rrx
	mov r0, r0, rrx
	orr r0, r0, r4
_0201E8BC:
	cmp r1, #0
	subges r12, r12, #1
	movs r2, r0, lsl #0x15
	mov r0, r0, lsr #0xb
	orr r0, r0, r1, lsl #21
	add r1, r1, r1
	orr r1, lr, r1, lsr #12
	orr r1, r1, r12, lsl #20
	ldmeqfd sp!, {r4, lr}
	bxeq lr
	tst r2, #0x80000000
	ldmeqfd sp!, {r4, lr}
	bxeq lr
	movs r2, r2, lsl #1
	andeqs r2, r0, #1
	ldmeqfd sp!, {r4, lr}
	bxeq lr
_0201E900:
	mov r1, r3
	mov r0, r2
	ldmfd sp!, {r4, lr}
	bx lr
_0201E910:
	cmp r1, #0
	subges r12, r12, #1
	mov r0, r0, lsr #0xb
	orr r0, r0, r1, lsl #21
	add r1, r1, r1
	orr r1, lr, r1, lsr #12
	orr r1, r1, r12, lsl #20
	ldmfd sp!, {r4, lr}
	bx lr
_0201E934:
	ldr r1, _0201E98C ; =0x7FF00000
	orr r1, lr, r1
	mov r0, #0
	ldmfd sp!, {r4, lr}
	bx lr
_0201E948:
	mov r1, r3
_0201E94C:
	mvn r0, #0
	bic r1, r0, #0x80000000
	ldmfd sp!, {r4, lr}
	bx lr
	mvn r0, #0
	bic r1, r0, #0x80000000
	ldmfd sp!, {r4, lr}
	bx lr
_0201E96C:
	cmp r12, #0x800
	movge lr, #0x80000000
	movlt lr, #0
	ldr r1, _0201E98C ; =0x7FF00000
	orr r1, lr, r1
	mov r0, #0
	ldmfd sp!, {r4, lr}
	bx lr
_0201E98C: .word 0x7FF00000
	arm_func_end _dadd

	arm_func_start _drsb
_drsb: ; 0x0201E990
	eor r1, r1, r3
	eor r3, r1, r3
	eor r1, r1, r3
	eor r0, r0, r2
	eor r2, r0, r2
	eor r0, r0, r2
	arm_func_end _drsb

	arm_func_start _dsub
_dsub: ; 0x0201E9A8
	stmfd sp!, {r4, lr}
	eors r12, r1, r3
	eormi r3, r3, #0x80000000
	bmi _0201E688
_0201E9B8:
	subs r12, r0, r2
	sbcs lr, r1, r3
	bhs _0201E9D8
	eor lr, lr, #0x80000000
	adds r2, r2, r12
	adc r3, r3, lr
	subs r0, r0, r12
	sbc r1, r1, lr
_0201E9D8:
	mov lr, #0x80000000
	mov r12, r1, lsr #0x14
	orr r1, lr, r1, lsl #11
	orr r1, r1, r0, lsr #21
	mov r0, r0, lsl #0xb
	movs r4, r12, lsl #0x15
	cmnne r4, #0x200000
	beq _0201EBDC
	mov r4, r3, lsr #0x14
	orr r3, lr, r3, lsl #11
	orr r3, r3, r2, lsr #21
	mov r2, r2, lsl #0xb
	movs lr, r4, lsl #0x15
	beq _0201EC24
_0201EA10:
	subs r4, r12, r4
	beq _0201EAB8
	cmp r4, #0x20
	ble _0201EA4C
	cmp r4, #0x38
	movge r4, #0x3f
	sub r4, r4, #0x20
	rsb lr, r4, #0x20
	orrs lr, r2, r3, lsl lr
	mov r2, r3, lsr r4
	orrne r2, r2, #1
	subs r0, r0, r2
	sbcs r1, r1, #0
	bmi _0201EA74
	b _0201EB64
_0201EA4C:
	rsb lr, r4, #0x20
	movs lr, r2, lsl lr
	rsb lr, r4, #0x20
	mov r2, r2, lsr r4
	orr r2, r2, r3, lsl lr
	mov r3, r3, lsr r4
	orrne r2, r2, #1
	subs r0, r0, r2
	sbcs r1, r1, r3
	bpl _0201EB64
_0201EA74:
	movs r2, r0, lsl #0x15
	mov r0, r0, lsr #0xb
	orr r0, r0, r1, lsl #21
	add r1, r1, r1
	mov r1, r1, lsr #0xc
	orr r1, r1, r12, lsl #20
	tst r2, #0x80000000
	ldmeqfd sp!, {r4, lr}
	bxeq lr
	movs r2, r2, lsl #1
	andeqs r2, r0, #1
	ldmeqfd sp!, {r4, lr}
	bxeq lr
	adds r0, r0, #1
	adc r1, r1, #0
	ldmfd sp!, {r4, lr}
	bx lr
_0201EAB8:
	subs r0, r0, r2
	sbc r1, r1, r3
	orrs lr, r1, r0
	beq _0201ED48
	mov lr, r12, lsl #0x14
	and lr, lr, #0x80000000
	bic r12, r12, #0x800
	cmp r1, #0
	bmi _0201EB40
	bne _0201EAF0
	sub r12, r12, #0x20
	movs r1, r0
	mov r0, #0
	bmi _0201EB0C
_0201EAF0:
	clz r4, r1
	movs r1, r1, lsl r4
	rsb r4, r4, #0x20
	orr r1, r1, r0, lsr r4
	rsb r4, r4, #0x20
	mov r0, r0, lsl r4
	sub r12, r12, r4
_0201EB0C:
	cmp r12, #0
	bgt _0201EB48
	rsb r12, r12, #0xc
	cmp r12, #0x20
	movge r0, r1
	movge r1, #0
	subge r12, r12, #0x20
	rsb r4, r12, #0x20
	mov r0, r0, lsr r12
	orr r0, r0, r1, lsl r4
	orr r1, lr, r1, lsr r12
	ldmfd sp!, {r4, lr}
	bx lr
_0201EB40:
	cmp r1, #0
	subges r12, r12, #1
_0201EB48:
	mov r0, r0, lsr #0xb
	orr r0, r0, r1, lsl #21
	add r1, r1, r1
	orr r1, lr, r1, lsr #12
	orr r1, r1, r12, lsl #20
	ldmfd sp!, {r4, lr}
	bx lr
_0201EB64:
	mov lr, r12, lsl #0x14
	and lr, lr, #0x80000000
	bic r12, r12, #0x800
	cmp r1, #0
	bne _0201EB88
	sub r12, r12, #0x20
	movs r1, r0
	mov r0, #0
	bmi _0201EBA4
_0201EB88:
	clz r4, r1
	movs r1, r1, lsl r4
	rsb r4, r4, #0x20
	orr r1, r1, r0, lsr r4
	rsb r4, r4, #0x20
	mov r0, r0, lsl r4
	sub r12, r12, r4
_0201EBA4:
	cmp r12, #0
	orrgt r12, r12, lr, lsr #20
	bgt _0201EA74
	rsb r12, r12, #0xc
	cmp r12, #0x20
	movge r0, r1
	movge r1, #0
	subge r12, r12, #0x20
	rsb r4, r12, #0x20
	mov r0, r0, lsr r12
	orr r0, r0, r1, lsl r4
	orr r1, lr, r1, lsr r12
	ldmfd sp!, {r4, lr}
	bx lr
_0201EBDC:
	cmp r12, #0x800
	movge lr, #0x80000000
	movlt lr, #0
	bics r12, r12, #0x800
	beq _0201EC48
	orrs r4, r0, r1, lsl #1
	bne _0201ED24
	mov r4, r3, lsr #0x14
	mov r3, r3, lsl #0xb
	orr r3, r3, r2, lsr #21
	mov r2, r2, lsl #0xb
	movs r4, r4, lsl #0x15
	beq _0201ED10
	cmn r4, #0x200000
	bne _0201ED10
	orrs r4, r2, r3, lsl #1
	beq _0201ED38
	b _0201ED24
_0201EC24:
	cmp r4, #0x800
	movge lr, #0x80000000
	movlt lr, #0
	bic r12, r12, #0x800
	bics r4, r4, #0x800
	beq _0201ECC0
	orrs r4, r2, r3, lsl #1
	bne _0201ED24
	b _0201ED10
_0201EC48:
	orrs r4, r0, r1, lsl #1
	beq _0201EC88
	mov r12, #1
	bic r1, r1, #0x80000000
	mov r4, r3, lsr #0x14
	mov r3, r3, lsl #0xb
	orr r3, r3, r2, lsr #21
	mov r2, r2, lsl #0xb
	movs r4, r4, lsl #0x15
	cmnne r4, #0x200000
	mov r4, r4, lsr #0x15
	orr r4, r4, lr, lsr #20
	beq _0201EC24
	orr r3, r3, #0x80000000
	orr r12, r12, lr, lsr #20
	b _0201EA10
_0201EC88:
	mov r12, r3, lsr #0x14
	mov r1, r3, lsl #0xb
	orr r1, r1, r2, lsr #21
	mov r0, r2, lsl #0xb
	movs r4, r12, lsl #0x15
	beq _0201ECB4
	cmn r4, #0x200000
	bne _0201ECDC
	orrs r4, r0, r1, lsl #1
	bne _0201ED28
	b _0201ED10
_0201ECB4:
	orrs r4, r0, r1, lsl #1
	beq _0201ED48
	b _0201ECDC
_0201ECC0:
	orrs r4, r2, r3, lsl #1
	beq _0201ECEC
	mov r4, #1
	bic r3, r3, #0x80000000
	orr r12, r12, lr, lsr #20
	orr r4, r4, lr, lsr #20
	b _0201EA10
_0201ECDC:
	mov r1, r3
	mov r0, r2
	ldmfd sp!, {r4, lr}
	bx lr
_0201ECEC:
	cmp r1, #0
	subges r12, r12, #1
	mov r0, r0, lsr #0xb
	orr r0, r0, r1, lsl #21
	add r1, r1, r1
	orr r1, lr, r1, lsr #12
	orr r1, r1, r12, lsl #20
	ldmfd sp!, {r4, lr}
	bx lr
_0201ED10:
	ldr r1, _0201ED58 ; =0x7FF00000
	orr r1, lr, r1
	mov r0, #0
	ldmfd sp!, {r4, lr}
	bx lr
_0201ED24:
	mov r1, r3
_0201ED28:
	mvn r0, #0
	bic r1, r0, #0x80000000
	ldmfd sp!, {r4, lr}
	bx lr
_0201ED38:
	mvn r0, #0
	bic r1, r0, #0x80000000
	ldmfd sp!, {r4, lr}
	bx lr
_0201ED48:
	mov r1, #0
	mov r0, #0
	ldmfd sp!, {r4, lr}
	bx lr
_0201ED58: .word 0x7FF00000
	arm_func_end _dsub

	arm_func_start _dmul
_dmul: ; 0x0201ED5C
	stmfd sp!, {r4, r5, r6, r7, lr}
	eor lr, r1, r3
	and lr, lr, #0x80000000
	mov r12, r1, lsr #0x14
	mov r1, r1, lsl #0xb
	orr r1, r1, r0, lsr #21
	mov r0, r0, lsl #0xb
	movs r6, r12, lsl #0x15
	cmnne r6, #0x200000
	beq _0201EE64
	orr r1, r1, #0x80000000
	bic r12, r12, #0x800
	mov r4, r3, lsr #0x14
	mov r3, r3, lsl #0xb
	orr r3, r3, r2, lsr #21
	mov r2, r2, lsl #0xb
	movs r5, r4, lsl #0x15
	cmnne r5, #0x200000
	beq _0201EEAC
	orr r3, r3, #0x80000000
	bic r4, r4, #0x800
_0201EDB0:
	add r12, r4, r12
	umull r5, r4, r0, r2
	umull r7, r6, r0, r3
	adds r4, r7, r4
	adc r6, r6, #0
	umull r7, r0, r1, r2
	adds r4, r7, r4
	adcs r0, r0, r6
	umull r7, r2, r1, r3
	adc r1, r2, #0
	adds r0, r0, r7
	adc r1, r1, #0
	orrs r4, r4, r5
	orrne r0, r0, #1
	cmp r1, #0
	blt _0201EDFC
	sub r12, r12, #1
	adds r0, r0, r0
	adc r1, r1, r1
_0201EDFC:
	add r12, r12, #2
	subs r12, r12, #0x400
	bmi _0201EF98
	beq _0201EF98
	mov r6, r12, lsl #0x14
	cmn r6, #0x100000
	bmi _0201F098
	movs r2, r0, lsl #0x15
	mov r0, r0, lsr #0xb
	orr r0, r0, r1, lsl #21
	add r1, r1, r1
	orr r1, lr, r1, lsr #12
	orr r1, r1, r12, lsl #20
	ldmeqfd sp!, {r4, r5, r6, r7, lr}
	bxeq lr
	tst r2, #0x80000000
	ldmeqfd sp!, {r4, r5, r6, r7, lr}
	bxeq lr
	movs r2, r2, lsl #1
	andeqs r2, r0, #1
	ldmeqfd sp!, {r4, r5, r6, r7, lr}
	bxeq lr
	adds r0, r0, #1
	adc r1, r1, #0
	ldmfd sp!, {r4, r5, r6, r7, lr}
	bx lr
_0201EE64:
	bics r12, r12, #0x800
	beq _0201EEC0
	orrs r6, r0, r1, lsl #1
	bne _0201F04C
	mov r4, r3, lsr #0x14
	mov r3, r3, lsl #0xb
	orr r3, r3, r2, lsr #21
	mov r2, r2, lsl #0xb
	movs r5, r4, lsl #0x15
	beq _0201EEA0
	cmn r5, #0x200000
	bne _0201F038
	orrs r5, r2, r3, lsl #1
	beq _0201F038
	b _0201F04C
_0201EEA0:
	orrs r5, r3, r2
	beq _0201F060
	b _0201F038
_0201EEAC:
	bics r4, r4, #0x800
	beq _0201EF54
	orrs r6, r2, r3, lsl #1
	bne _0201F04C
	b _0201F038
_0201EEC0:
	orrs r6, r0, r1, lsl #1
	beq _0201EF28
	mov r12, #1
	cmp r1, #0
	bne _0201EEE4
	sub r12, r12, #0x20
	movs r1, r0
	mov r0, #0
	bmi _0201EF00
_0201EEE4:
	clz r6, r1
	movs r1, r1, lsl r6
	rsb r6, r6, #0x20
	orr r1, r1, r0, lsr r6
	rsb r6, r6, #0x20
	mov r0, r0, lsl r6
	sub r12, r12, r6
_0201EF00:
	mov r4, r3, lsr #0x14
	mov r3, r3, lsl #0xb
	orr r3, r3, r2, lsr #21
	mov r2, r2, lsl #0xb
	movs r5, r4, lsl #0x15
	cmnne r5, #0x200000
	beq _0201EEAC
	orr r3, r3, #0x80000000
	bic r4, r4, #0x800
	b _0201EDB0
_0201EF28:
	mov r4, r3, lsr #0x14
	mov r3, r3, lsl #0xb
	orr r3, r3, r2, lsr #21
	mov r2, r2, lsl #0xb
	movs r5, r4, lsl #0x15
	beq _0201F0AC
	cmn r5, #0x200000
	bne _0201F0AC
	orrs r6, r2, r3, lsl #1
	beq _0201F060
	b _0201F04C
_0201EF54:
	orrs r5, r2, r3, lsl #1
	beq _0201F0AC
	mov r4, #1
	cmp r3, #0
	bne _0201EF78
	sub r4, r4, #0x20
	movs r3, r2
	mov r2, #0
	bmi _0201EDB0
_0201EF78:
	clz r6, r3
	movs r3, r3, lsl r6
	rsb r6, r6, #0x20
	orr r3, r3, r2, lsr r6
	rsb r6, r6, #0x20
	mov r2, r2, lsl r6
	sub r4, r4, r6
	b _0201EDB0
_0201EF98:
	cmn r12, #0x34
	beq _0201F030
	bmi _0201F088
	mov r2, r1
	mov r3, r0
	add r4, r12, #0x34
	cmp r4, #0x20
	movge r2, r3
	movge r3, #0
	subge r4, r4, #0x20
	rsb r5, r4, #0x20
	mov r2, r2, lsl r4
	orr r2, r2, r3, lsr r5
	movs r3, r3, lsl r4
	orrne r2, r2, #1
	rsb r12, r12, #0xc
	cmp r12, #0x20
	movge r0, r1
	movge r1, #0
	subge r12, r12, #0x20
	rsb r4, r12, #0x20
	mov r0, r0, lsr r12
	orr r0, r0, r1, lsl r4
	orr r1, lr, r1, lsr r12
	cmp r2, #0
	ldmeqfd sp!, {r4, r5, r6, r7, lr}
	bxeq lr
	tst r2, #0x80000000
	ldmeqfd sp!, {r4, r5, r6, r7, lr}
	bxeq lr
	movs r2, r2, lsl #1
	andeqs r2, r0, #1
	ldmeqfd sp!, {r4, r5, r6, r7, lr}
	bxeq lr
	adds r0, r0, #1
	adc r1, r1, #0
	ldmfd sp!, {r4, r5, r6, r7, lr}
	bx lr
_0201F030:
	orr r0, r0, r1, lsl #1
	b _0201F070
_0201F038:
	ldr r1, _0201F0BC ; =0x7FF00000
	orr r1, lr, r1
	mov r0, #0
	ldmfd sp!, {r4, r5, r6, r7, lr}
	bx lr
_0201F04C:
	mov r1, r3
	mvn r0, #0
	bic r1, r0, #0x80000000
	ldmfd sp!, {r4, r5, r6, r7, lr}
	bx lr
_0201F060:
	mvn r0, #0
	bic r1, r0, #0x80000000
	ldmfd sp!, {r4, r5, r6, r7, lr}
	bx lr
_0201F070:
	movs r2, r0
	mov r1, lr
	mov r0, #0
	addne r0, r0, #1
	ldmfd sp!, {r4, r5, r6, r7, lr}
	bx lr
_0201F088:
	mov r1, lr
	mov r0, #0
	ldmfd sp!, {r4, r5, r6, r7, lr}
	bx lr
_0201F098:
	ldr r1, _0201F0BC ; =0x7FF00000
	orr r1, lr, r1
	mov r0, #0
	ldmfd sp!, {r4, r5, r6, r7, lr}
	bx lr
_0201F0AC:
	mov r1, lr
	mov r0, #0
	ldmfd sp!, {r4, r5, r6, r7, lr}
	bx lr
_0201F0BC: .word 0x7FF00000
	arm_func_end _dmul

	arm_func_start _d2f
_d2f: ; 0x0201F0C0
	and r2, r1, #0x80000000
	mov r12, r1, lsr #0x14
	bics r12, r12, #0x800
	beq _0201F138
	mov r3, r12, lsl #0x15
	cmn r3, #0x200000
	bhs _0201F11C
	subs r12, r12, #0x380
	bls _0201F148
	cmp r12, #0xff
	bge _0201F1B8
	mov r1, r1, lsl #0xc
	orr r3, r2, r1, lsr #9
	orr r3, r3, r0, lsr #29
	movs r1, r0, lsl #3
	orr r0, r3, r12, lsl #23
	bxeq lr
	tst r1, #0x80000000
	bxeq lr
	movs r1, r1, lsl #1
	andeqs r1, r0, #1
	addne r0, r0, #1
	bx lr
_0201F11C:
	orrs r3, r0, r1, lsl #12
	bne _0201F130
	mov r0, #0xff000000
	orr r0, r2, r0, lsr #1
	bx lr
_0201F130:
	mvn r0, #0x80000000
	bx lr
_0201F138:
	orrs r3, r0, r1, lsl #12
	bne _0201F1B0
	mov r0, r2
	bx lr
_0201F148:
	cmn r12, #0x17
	beq _0201F19C
	bmi _0201F1B0
	mov r1, r1, lsl #0xb
	orr r1, r1, #0x80000000
	mov r3, r1, lsr #8
	orr r3, r3, r0, lsr #29
	rsb r12, r12, #1
	movs r1, r0, lsl #3
	orr r0, r2, r3, lsr r12
	rsb r12, r12, #0x20
	mov r3, r3, lsl r12
	orrne r3, r3, #1
	movs r1, r3
	bxeq lr
	tst r1, #0x80000000
	bxeq lr
	movs r1, r1, lsl #1
	andeqs r1, r0, #1
	addne r0, r0, #1
	bx lr
_0201F19C:
	orr r0, r0, r1, lsl #12
	movs r1, r0
	mov r0, r2
	addne r0, r0, #1
	bx lr
_0201F1B0:
	mov r0, r2
	bx lr
_0201F1B8:
	mov r0, #0xff000000
	orr r0, r2, r0, lsr #1
	bx lr
	arm_func_end _d2f

	arm_func_start _dflt
_dflt: ; 0x0201F1C4
	ands r2, r0, #0x80000000
	rsbmi r0, r0, #0
	cmp r0, #0
	mov r1, #0
	bxeq lr
	mov r3, #0x400
	add r3, r3, #0x1e
	clz r12, r0
	movs r0, r0, lsl r12
	sub r3, r3, r12
	movs r1, r0
	mov r0, r1, lsl #0x15
	add r1, r1, r1
	orr r1, r2, r1, lsr #12
	orr r1, r1, r3, lsl #20
	bx lr
	arm_func_end _dflt

	arm_func_start _dfltu
_dfltu: ; 0x0201F204
	cmp r0, #0
	mov r1, #0
	bxeq lr
	mov r3, #0x400
	add r3, r3, #0x1e
	bmi _0201F228
	clz r12, r0
	movs r0, r0, lsl r12
	sub r3, r3, r12
_0201F228:
	mov r1, r0
	mov r0, r1, lsl #0x15
	add r1, r1, r1
	mov r1, r1, lsr #0xc
	orr r1, r1, r3, lsl #20
	bx lr
	arm_func_end _dfltu

	arm_func_start _dgeq
_dgeq: ; 0x0201F240
	mov r12, #0x200000
	cmn r12, r1, lsl #1
	bhs _0201F2B4
	cmn r12, r3, lsl #1
	bhs _0201F2C8
_0201F254:
	orrs r12, r3, r1
	bmi _0201F284
	cmp r1, r3
	cmpeq r0, r2
	movhs r0, #1
	movlo r0, #0
	bx lr
_0201F270:
	mov r0, #0
	mrs r12, cpsr
	bic r12, r12, #0x20000000
	msr cpsr_flg, r12
	bx lr
_0201F284:
	orr r12, r0, r12, lsl #1
	orrs r12, r12, r2
	moveq r0, #1
	mrs r12, cpsr
	orr r12, r12, #0x20000000
	msr cpsr_flg, r12
	bxeq lr
	cmp r3, r1
	cmpeq r2, r0
	movhs r0, #1
	movlo r0, #0
	bx lr
_0201F2B4:
	bne _0201F270
	cmp r0, #0
	bhi _0201F270
	cmn r12, r3, lsl #1
	blo _0201F254
_0201F2C8:
	bne _0201F270
	cmp r2, #0
	bhi _0201F270
	b _0201F254
	arm_func_end _dgeq

	arm_func_start _dgr
_dgr: ; 0x0201F2D8
	mov r12, #0x200000
	cmn r12, r1, lsl #1
	bhs _0201F34C
	cmn r12, r3, lsl #1
	bhs _0201F360
_0201F2EC:
	orrs r12, r3, r1
	bmi _0201F31C
	cmp r1, r3
	cmpeq r0, r2
	movhi r0, #1
	movls r0, #0
	bx lr
_0201F308:
	mov r0, #0
	mrs r12, cpsr
	bic r12, r12, #0x20000000
	msr cpsr_flg, r12
	bx lr
_0201F31C:
	orr r12, r0, r12, lsl #1
	orrs r12, r12, r2
	moveq r0, #0
	mrs r12, cpsr
	bic r12, r12, #0x20000000
	msr cpsr_flg, r12
	bxeq lr
	cmp r3, r1
	cmpeq r2, r0
	movhi r0, #1
	movls r0, #0
	bx lr
_0201F34C:
	bne _0201F308
	cmp r0, #0
	bhi _0201F308
	cmn r12, r3, lsl #1
	blo _0201F2EC
_0201F360:
	bne _0201F308
	cmp r2, #0
	bhi _0201F308
	b _0201F2EC
	arm_func_end _dgr

	arm_func_start _dleq
_dleq: ; 0x0201F370
	mov r12, #0x200000
	cmn r12, r1, lsl #1
	bhs _0201F3F0
	cmn r12, r3, lsl #1
	bhs _0201F404
_0201F384:
	orrs r12, r3, r1
	bmi _0201F3B8
	cmp r1, r3
	cmpeq r0, r2
	movls r0, #1
	movhi r0, #0
	bx lr
_0201F3A0:
	mov r0, #0
	mrs r12, cpsr
	bic r12, r12, #0x40000000
	orr r12, r12, #0x20000000
	msr cpsr_flg, r12
	bx lr
_0201F3B8:
	orr r12, r0, r12, lsl #1
	orrs r12, r12, r2
	moveq r0, #1
	bne _0201F3DC
	mrs r12, cpsr
	bic r12, r12, #0x20000000
	orr r12, r12, #0x40000000
	msr cpsr_flg, r12
	bxeq lr
_0201F3DC:
	cmp r3, r1
	cmpeq r2, r0
	movls r0, #1
	movhi r0, #0
	bx lr
_0201F3F0:
	bne _0201F3A0
	cmp r0, #0
	bhi _0201F3A0
	cmn r12, r3, lsl #1
	blo _0201F384
_0201F404:
	bne _0201F3A0
	cmp r2, #0
	bhi _0201F3A0
	b _0201F384
	arm_func_end _dleq

	arm_func_start _dls
_dls: ; 0x0201F414
	mov r12, #0x200000
	cmn r12, r1, lsl #1
	bhs _0201F48C
	cmn r12, r3, lsl #1
	bhs _0201F4A0
_0201F428:
	orrs r12, r3, r1
	bmi _0201F458
	cmp r1, r3
	cmpeq r0, r2
	movlo r0, #1
	movhs r0, #0
	bx lr
_0201F444:
	mov r0, #0
	mrs r12, cpsr
	orr r12, r12, #0x20000000
	msr cpsr_flg, r12
	bx lr
_0201F458:
	orr r12, r0, r12, lsl #1
	orrs r12, r12, r2
	moveq r0, #0
	bne _0201F478
	mrs r12, cpsr
	orr r12, r12, #0x20000000
	msr cpsr_flg, r12
	bxeq lr
_0201F478:
	cmp r3, r1
	cmpeq r2, r0
	movlo r0, #1
	movhs r0, #0
	bx lr
_0201F48C:
	bne _0201F444
	cmp r0, #0
	bhi _0201F444
	cmn r12, r3, lsl #1
	blo _0201F428
_0201F4A0:
	bne _0201F444
	cmp r2, #0
	bhi _0201F444
	b _0201F428
	arm_func_end _dls

	arm_func_start _deq
_deq: ; 0x0201F4B0
	mov r12, #0x200000
	cmn r12, r1, lsl #1
	bhs _0201F518
	cmn r12, r3, lsl #1
	bhs _0201F52C
_0201F4C4:
	orrs r12, r3, r1
	bmi _0201F4F4
	cmp r1, r3
	cmpeq r0, r2
	moveq r0, #1
	movne r0, #0
	bx lr
_0201F4E0:
	mov r0, #0
	mrs r12, cpsr
	bic r12, r12, #0x40000000
	msr cpsr_flg, r12
	bx lr
_0201F4F4:
	orr r12, r0, r12, lsl #1
	orrs r12, r12, r2
	moveq r0, #1
	bxeq lr
	cmp r3, r1
	cmpeq r2, r0
	moveq r0, #1
	movne r0, #0
	bx lr
_0201F518:
	bne _0201F4E0
	cmp r0, #0
	bhi _0201F4E0
	cmn r12, r3, lsl #1
	blo _0201F4C4
_0201F52C:
	bne _0201F4E0
	cmp r2, #0
	bhi _0201F4E0
	b _0201F4C4
	arm_func_end _deq

	arm_func_start _dneq
_dneq: ; 0x0201F53C
	mov r12, #0x200000
	cmn r12, r1, lsl #1
	bhs _0201F5A4
	cmn r12, r3, lsl #1
	bhs _0201F5B8
_0201F550:
	orrs r12, r3, r1
	bmi _0201F580
	cmp r1, r3
	cmpeq r0, r2
	movne r0, #1
	moveq r0, #0
	bx lr
_0201F56C:
	mov r0, #1
	mrs r12, cpsr
	bic r12, r12, #0x40000000
	msr cpsr_flg, r12
	bx lr
_0201F580:
	orr r12, r0, r12, lsl #1
	orrs r12, r12, r2
	moveq r0, #0
	bxeq lr
	cmp r3, r1
	cmpeq r2, r0
	movne r0, #1
	moveq r0, #0
	bx lr
_0201F5A4:
	bne _0201F56C
	cmp r0, #0
	bhi _0201F56C
	cmn r12, r3, lsl #1
	blo _0201F550
_0201F5B8:
	bne _0201F56C
	cmp r2, #0
	bhi _0201F56C
	b _0201F550
	arm_func_end _dneq

	arm_func_start _fgr
_fgr: ; 0x0201F5C8
	mov r3, #0xff000000
	cmp r3, r0, lsl #1
	cmphs r3, r1, lsl #1
	blo _0201F610
	cmp r0, #0
	bicmi r0, r0, #0x80000000
	rsbmi r0, r0, #0
	cmp r1, #0
	bicmi r1, r1, #0x80000000
	rsbmi r1, r1, #0
	cmp r0, r1
	movgt r0, #1
	movle r0, #0
	mrs r12, cpsr
	bicle r12, r12, #0x20000000
	orrgt r12, r12, #0x20000000
	msr cpsr_flg, r12
	bx lr
_0201F610:
	mov r0, #0
	mrs r12, cpsr
	bic r12, r12, #0x20000000
	msr cpsr_flg, r12
	bx lr
	arm_func_end _fgr

	arm_func_start _fls
_fls: ; 0x0201F624
	mov r3, #0xff000000
	cmp r3, r0, lsl #1
	cmphs r3, r1, lsl #1
	blo _0201F66C
	cmp r0, #0
	bicmi r0, r0, #0x80000000
	rsbmi r0, r0, #0
	cmp r1, #0
	bicmi r1, r1, #0x80000000
	rsbmi r1, r1, #0
	cmp r0, r1
	movlt r0, #1
	movge r0, #0
	mrs r12, cpsr
	orrge r12, r12, #0x20000000
	biclt r12, r12, #0x20000000
	msr cpsr_flg, r12
	bx lr
_0201F66C:
	mov r0, #0
	mrs r12, cpsr
	orr r12, r12, #0x20000000
	msr cpsr_flg, r12
	bx lr
	arm_func_end _fls

	arm_func_start _f2d
_f2d: ; 0x0201F680
	and r2, r0, #0x80000000
	mov r12, r0, lsr #0x17
	mov r3, r0, lsl #9
	ands r12, r12, #0xff
	beq _0201F6B0
	cmp r12, #0xff
	beq _0201F6DC
_0201F69C:
	add r12, r12, #0x380
	mov r0, r3, lsl #0x14
	orr r1, r2, r3, lsr #12
	orr r1, r1, r12, lsl #20
	bx lr
_0201F6B0:
	cmp r3, #0
	bne _0201F6C4
	mov r1, r2
	mov r0, #0
	bx lr
_0201F6C4:
	mov r3, r3, lsr #1
	clz r12, r3
	movs r3, r3, lsl r12
	rsb r12, r12, #1
	add r3, r3, r3
	b _0201F69C
_0201F6DC:
	cmp r3, #0
	bhi _0201F6F4
	ldr r1, _0201F700 ; =0x7FF00000
	orr r1, r1, r2
	mov r0, #0
	bx lr
_0201F6F4:
	mvn r0, #0
	bic r1, r0, #0x80000000
	bx lr
_0201F700: .word 0x7FF00000
	arm_func_end _f2d

	arm_func_start _fflt
_fflt: ; 0x0201F704
	ands r2, r0, #0x80000000
	rsbmi r0, r0, #0
	cmp r0, #0
	bxeq lr
	clz r3, r0
	movs r0, r0, lsl r3
	rsb r3, r3, #0x9e
	ands r1, r0, #0xff
	add r0, r0, r0
	orr r0, r2, r0, lsr #9
	orr r0, r0, r3, lsl #23
	bxeq lr
	tst r1, #0x80
	bxeq lr
	ands r3, r1, #0x7f
	andeqs r3, r0, #1
	addne r0, r0, #1
	bx lr
	arm_func_end _fflt

	arm_func_start _ffltu
_ffltu: ; 0x0201F74C
	cmp r0, #0
	bxeq lr
	mov r3, #0x9e
	bmi _0201F768
	clz r12, r0
	movs r0, r0, lsl r12
	sub r3, r3, r12
_0201F768:
	ands r2, r0, #0xff
	add r0, r0, r0
	mov r0, r0, lsr #9
	orr r0, r0, r3, lsl #23
	bxeq lr
	tst r2, #0x80
	bxeq lr
	ands r1, r2, #0x7f
	andeqs r1, r0, #1
	addne r0, r0, #1
	bx lr
	arm_func_end _ffltu

	arm_func_start _ll_mod
_ll_mod: ; 0x0201F794
	stmfd sp!, {r4, r5, r6, r7, r11, r12, lr}
	mov r4, r1
	orr r4, r4, #1
	b _0201F7B4
	arm_func_end _ll_mod

	arm_func_start _ll_sdiv
_ll_sdiv: ; 0x0201F7A4
	stmfd sp!, {r4, r5, r6, r7, r11, r12, lr}
	eor r4, r1, r3
	mov r4, r4, asr #1
	mov r4, r4, lsl #1
_0201F7B4:
	orrs r5, r3, r2
	bne _0201F7C4
	ldmfd sp!, {r4, r5, r6, r7, r11, r12, lr}
	bx lr
_0201F7C4:
	mov r5, r0, lsr #0x1f
	add r5, r5, r1
	mov r6, r2, lsr #0x1f
	add r6, r6, r3
	orrs r6, r5, r6
	bne _0201F7F8
	mov r1, r2
	bl _s32_div_f
	ands r4, r4, #1
	movne r0, r1
	mov r1, r0, asr #0x1f
	ldmfd sp!, {r4, r5, r6, r7, r11, r12, lr}
	bx lr
_0201F7F8:
	cmp r1, #0
	bge _0201F808
	rsbs r0, r0, #0
	rsc r1, r1, #0
_0201F808:
	cmp r3, #0
	bge _0201F818
	rsbs r2, r2, #0
	rsc r3, r3, #0
_0201F818:
	orrs r5, r1, r0
	beq _0201F93C
	mov r5, #0
	mov r6, #1
	cmp r3, #0
	bmi _0201F844
_0201F830:
	add r5, r5, #1
	adds r2, r2, r2
	adcs r3, r3, r3
	bpl _0201F830
	add r6, r6, r5
_0201F844:
	cmp r1, #0
	blt _0201F864
_0201F84C:
	cmp r6, #1
	beq _0201F864
	sub r6, r6, #1
	adds r0, r0, r0
	adcs r1, r1, r1
	bpl _0201F84C
_0201F864:
	mov r7, #0
	mov r12, #0
	mov r11, #0
	b _0201F88C
_0201F874:
	orr r12, r12, #1
	subs r6, r6, #1
	beq _0201F8E4
	adds r0, r0, r0
	adcs r1, r1, r1
	adcs r7, r7, r7
_0201F88C:
	subs r0, r0, r2
	sbcs r1, r1, r3
	sbcs r7, r7, #0
	adds r12, r12, r12
	adc r11, r11, r11
	cmp r7, #0
	bge _0201F874
_0201F8A8:
	subs r6, r6, #1
	beq _0201F8DC
	adds r0, r0, r0
	adcs r1, r1, r1
	adc r7, r7, r7
	adds r0, r0, r2
	adcs r1, r1, r3
	adc r7, r7, #0
	adds r12, r12, r12
	adc r11, r11, r11
	cmp r7, #0
	bge _0201F874
	b _0201F8A8
_0201F8DC:
	adds r0, r0, r2
	adc r1, r1, r3
_0201F8E4:
	ands r7, r4, #1
	moveq r0, r12
	moveq r1, r11
	beq _0201F91C
	subs r7, r5, #0x20
	movge r0, r1, lsr r7
	bge _0201F940
	rsb r7, r5, #0x20
	mov r0, r0, lsr r5
	orr r0, r0, r1, lsl r7
	mov r1, r1, lsr r5
	b _0201F91C
	mov r0, r1, lsr r7
	mov r1, #0
_0201F91C:
	cmp r4, #0
	blt _0201F92C
	ldmfd sp!, {r4, r5, r6, r7, r11, r12, lr}
	bx lr
_0201F92C:
	rsbs r0, r0, #0
	rsc r1, r1, #0
	ldmfd sp!, {r4, r5, r6, r7, r11, r12, lr}
	bx lr
_0201F93C:
	mov r0, #0
_0201F940:
	mov r1, #0
	cmp r4, #0
	blt _0201F92C
	ldmfd sp!, {r4, r5, r6, r7, r11, r12, lr}
	bx lr
	arm_func_end _ll_sdiv

	arm_func_start _ll_udiv ; internal name
_ll_udiv: ; 0x0201F954
	stmfd sp!, {r4, r5, r6, r7, r11, r12, lr}
	mov r4, #0
	b _0201F968
	arm_func_end _ll_udiv

	arm_func_start _ull_mod ; internal name
_ull_mod: ; 0x0201F960
	stmfd sp!, {r4, r5, r6, r7, r11, r12, lr}
	mov r4, #1
_0201F968:
	orrs r5, r3, r2
	bne _0201F978
	ldmfd sp!, {r4, r5, r6, r7, r11, r12, lr}
	bx lr
_0201F978:
	orrs r5, r1, r3
	bne _0201F818
	mov r1, r2
	bl _u32_div_not_0_f
	cmp r4, #0
	movne r0, r1
	mov r1, #0
	ldmfd sp!, {r4, r5, r6, r7, r11, r12, lr}
	bx lr
	arm_func_end _ull_mod

	arm_func_start __llmul ; this is also _ull_mul
__llmul: ; 0x0201F99C
	stmfd sp!, {r4, r5, lr}
	umull r5, r4, r0, r2
	mla r4, r0, r3, r4
	mla r4, r2, r1, r4
	mov r1, r4
	mov r0, r5
	ldmfd sp!, {r4, r5, lr}
	bx lr
	arm_func_end __llmul

	arm_func_start _s32_div_f
_s32_div_f: ; 0x0201F9BC
	eor r12, r0, r1
	and r12, r12, #0x80000000
	cmp r0, #0
	rsblt r0, r0, #0
	addlt r12, r12, #1
	cmp r1, #0
	rsblt r1, r1, #0
	beq _0201FBB4
	cmp r0, r1
	movlo r1, r0
	movlo r0, #0
	blo _0201FBB4
	mov r2, #0x1c
	mov r3, r0, lsr #4
	cmp r1, r3, lsr #12
	suble r2, r2, #0x10
	movle r3, r3, lsr #0x10
	cmp r1, r3, lsr #4
	suble r2, r2, #8
	movle r3, r3, lsr #8
	cmp r1, r3
	suble r2, r2, #4
	movle r3, r3, lsr #4
	mov r0, r0, lsl r2
	rsb r1, r1, #0
	adds r0, r0, r0
	add r2, r2, r2, lsl #1
	add pc, pc, r2, lsl #2
	mov r0, r0
	adcs r3, r1, r3, lsl #1
	sublo r3, r3, r1
	adcs r0, r0, r0
	adcs r3, r1, r3, lsl #1
	sublo r3, r3, r1
	adcs r0, r0, r0
	adcs r3, r1, r3, lsl #1
	sublo r3, r3, r1
	adcs r0, r0, r0
	adcs r3, r1, r3, lsl #1
	sublo r3, r3, r1
	adcs r0, r0, r0
	adcs r3, r1, r3, lsl #1
	sublo r3, r3, r1
	adcs r0, r0, r0
	adcs r3, r1, r3, lsl #1
	sublo r3, r3, r1
	adcs r0, r0, r0
	adcs r3, r1, r3, lsl #1
	sublo r3, r3, r1
	adcs r0, r0, r0
	adcs r3, r1, r3, lsl #1
	sublo r3, r3, r1
	adcs r0, r0, r0
	adcs r3, r1, r3, lsl #1
	sublo r3, r3, r1
	adcs r0, r0, r0
	adcs r3, r1, r3, lsl #1
	sublo r3, r3, r1
	adcs r0, r0, r0
	adcs r3, r1, r3, lsl #1
	sublo r3, r3, r1
	adcs r0, r0, r0
	adcs r3, r1, r3, lsl #1
	sublo r3, r3, r1
	adcs r0, r0, r0
	adcs r3, r1, r3, lsl #1
	sublo r3, r3, r1
	adcs r0, r0, r0
	adcs r3, r1, r3, lsl #1
	sublo r3, r3, r1
	adcs r0, r0, r0
	adcs r3, r1, r3, lsl #1
	sublo r3, r3, r1
	adcs r0, r0, r0
	adcs r3, r1, r3, lsl #1
	sublo r3, r3, r1
	adcs r0, r0, r0
	adcs r3, r1, r3, lsl #1
	sublo r3, r3, r1
	adcs r0, r0, r0
	adcs r3, r1, r3, lsl #1
	sublo r3, r3, r1
	adcs r0, r0, r0
	adcs r3, r1, r3, lsl #1
	sublo r3, r3, r1
	adcs r0, r0, r0
	adcs r3, r1, r3, lsl #1
	sublo r3, r3, r1
	adcs r0, r0, r0
	adcs r3, r1, r3, lsl #1
	sublo r3, r3, r1
	adcs r0, r0, r0
	adcs r3, r1, r3, lsl #1
	sublo r3, r3, r1
	adcs r0, r0, r0
	adcs r3, r1, r3, lsl #1
	sublo r3, r3, r1
	adcs r0, r0, r0
	adcs r3, r1, r3, lsl #1
	sublo r3, r3, r1
	adcs r0, r0, r0
	adcs r3, r1, r3, lsl #1
	sublo r3, r3, r1
	adcs r0, r0, r0
	adcs r3, r1, r3, lsl #1
	sublo r3, r3, r1
	adcs r0, r0, r0
	adcs r3, r1, r3, lsl #1
	sublo r3, r3, r1
	adcs r0, r0, r0
	adcs r3, r1, r3, lsl #1
	sublo r3, r3, r1
	adcs r0, r0, r0
	adcs r3, r1, r3, lsl #1
	sublo r3, r3, r1
	adcs r0, r0, r0
	adcs r3, r1, r3, lsl #1
	sublo r3, r3, r1
	adcs r0, r0, r0
	adcs r3, r1, r3, lsl #1
	sublo r3, r3, r1
	adcs r0, r0, r0
	adcs r3, r1, r3, lsl #1
	sublo r3, r3, r1
	adcs r0, r0, r0
	mov r1, r3
_0201FBB4:
	ands r3, r12, #0x80000000
	rsbne r0, r0, #0
	ands r3, r12, #1
	rsbne r1, r1, #0
	bx lr
	arm_func_end _s32_div_f

	arm_func_start _u32_div_f
_u32_div_f: ; 0x0201FBC8
	cmp r1, #0
	bxeq lr
	arm_func_end _u32_div_f

	arm_func_start _u32_div_not_0_f
_u32_div_not_0_f: ; 0x0201FBD0
	cmp r0, r1
	movlo r1, r0
	movlo r0, #0
	bxlo lr
	mov r2, #0x1c
	mov r3, r0, lsr #4
	cmp r1, r3, lsr #12
	suble r2, r2, #0x10
	movle r3, r3, lsr #0x10
	cmp r1, r3, lsr #4
	suble r2, r2, #8
	movle r3, r3, lsr #8
	cmp r1, r3
	suble r2, r2, #4
	movle r3, r3, lsr #4
	mov r0, r0, lsl r2
	rsb r1, r1, #0
	adds r0, r0, r0
	add r2, r2, r2, lsl #1
	add pc, pc, r2, lsl #2
	mov r0, r0
	adcs r3, r1, r3, lsl #1
	sublo r3, r3, r1
	adcs r0, r0, r0
	adcs r3, r1, r3, lsl #1
	sublo r3, r3, r1
	adcs r0, r0, r0
	adcs r3, r1, r3, lsl #1
	sublo r3, r3, r1
	adcs r0, r0, r0
	adcs r3, r1, r3, lsl #1
	sublo r3, r3, r1
	adcs r0, r0, r0
	adcs r3, r1, r3, lsl #1
	sublo r3, r3, r1
	adcs r0, r0, r0
	adcs r3, r1, r3, lsl #1
	sublo r3, r3, r1
	adcs r0, r0, r0
	adcs r3, r1, r3, lsl #1
	sublo r3, r3, r1
	adcs r0, r0, r0
	adcs r3, r1, r3, lsl #1
	sublo r3, r3, r1
	adcs r0, r0, r0
	adcs r3, r1, r3, lsl #1
	sublo r3, r3, r1
	adcs r0, r0, r0
	adcs r3, r1, r3, lsl #1
	sublo r3, r3, r1
	adcs r0, r0, r0
	adcs r3, r1, r3, lsl #1
	sublo r3, r3, r1
	adcs r0, r0, r0
	adcs r3, r1, r3, lsl #1
	sublo r3, r3, r1
	adcs r0, r0, r0
	adcs r3, r1, r3, lsl #1
	sublo r3, r3, r1
	adcs r0, r0, r0
	adcs r3, r1, r3, lsl #1
	sublo r3, r3, r1
	adcs r0, r0, r0
	adcs r3, r1, r3, lsl #1
	sublo r3, r3, r1
	adcs r0, r0, r0
	adcs r3, r1, r3, lsl #1
	sublo r3, r3, r1
	adcs r0, r0, r0
	adcs r3, r1, r3, lsl #1
	sublo r3, r3, r1
	adcs r0, r0, r0
	adcs r3, r1, r3, lsl #1
	sublo r3, r3, r1
	adcs r0, r0, r0
	adcs r3, r1, r3, lsl #1
	sublo r3, r3, r1
	adcs r0, r0, r0
	adcs r3, r1, r3, lsl #1
	sublo r3, r3, r1
	adcs r0, r0, r0
	adcs r3, r1, r3, lsl #1
	sublo r3, r3, r1
	adcs r0, r0, r0
	adcs r3, r1, r3, lsl #1
	sublo r3, r3, r1
	adcs r0, r0, r0
	adcs r3, r1, r3, lsl #1
	sublo r3, r3, r1
	adcs r0, r0, r0
	adcs r3, r1, r3, lsl #1
	sublo r3, r3, r1
	adcs r0, r0, r0
	adcs r3, r1, r3, lsl #1
	sublo r3, r3, r1
	adcs r0, r0, r0
	adcs r3, r1, r3, lsl #1
	sublo r3, r3, r1
	adcs r0, r0, r0
	adcs r3, r1, r3, lsl #1
	sublo r3, r3, r1
	adcs r0, r0, r0
	adcs r3, r1, r3, lsl #1
	sublo r3, r3, r1
	adcs r0, r0, r0
	adcs r3, r1, r3, lsl #1
	sublo r3, r3, r1
	adcs r0, r0, r0
	adcs r3, r1, r3, lsl #1
	sublo r3, r3, r1
	adcs r0, r0, r0
	adcs r3, r1, r3, lsl #1
	sublo r3, r3, r1
	adcs r0, r0, r0
	adcs r3, r1, r3, lsl #1
	sublo r3, r3, r1
	adcs r0, r0, r0
	mov r1, r3
	bx lr
	arm_func_end _u32_div_not_0_f

	arm_func_start _ffix
_ffix: ; 0x0201FDAC
	bic r1, r0, #0x80000000
	mov r2, #0x9e
	subs r2, r2, r1, lsr #23
	ble _0201FDD4
	mov r1, r1, lsl #8
	orr r1, r1, #0x80000000
	cmp r0, #0
	mov r0, r1, lsr r2
	rsbmi r0, r0, #0
	bx lr
_0201FDD4:
	mvn r0, r0, asr #31
	add r0, r0, #0x80000000
	bx lr
	arm_func_end _ffix

	arm_func_start _ffixu
_ffixu: ; 0x0201FDE0
	tst r0, #0x80000000
	bne _0201FE04
	mov r1, #0x9e
	subs r1, r1, r0, lsr #23
	blt _0201FE18
	mov r2, r0, lsl #8
	orr r0, r2, #0x80000000
	mov r0, r0, lsr r1
	bx lr
_0201FE04:
	mov r2, #0xff000000
	cmp r2, r0, lsl #1
	movhs r0, #0
	mvnlo r0, #0
	bx lr
_0201FE18:
	mvn r0, #0
	bx lr
	arm_func_end _ffixu

	arm_func_start _dfix
_dfix: ; 0x0201FE20
	bic r3, r1, #0x80000000
	ldr r2, _0201FE68 ; =0x0000041E
	subs r2, r2, r3, lsr #20
	ble _0201FE5C
	cmp r2, #0x20
	bge _0201FE54
	mov r3, r1, lsl #0xb
	orr r3, r3, #0x80000000
	orr r3, r3, r0, lsr #21
	cmp r1, #0
	mov r0, r3, lsr r2
	rsbmi r0, r0, #0
	bx lr
_0201FE54:
	mov r0, #0
	bx lr
_0201FE5C:
	mvn r0, r1, asr #31
	add r0, r0, #0x80000000
	bx lr
_0201FE68: .word 0x0000041E
	arm_func_end _dfix

	arm_func_start _ll_ufrom_d
_ll_ufrom_d: ; 0x0201FE6C
	tst r1, #0x80000000
	bne _0201FED0
	ldr r2, _0201FEF4 ; =0x0000043E
	subs r2, r2, r1, lsr #20
	blt _0201FEE8
	cmp r2, #0x40
	bge _0201FEC4
	mov r12, r1, lsl #0xb
	orr r12, r12, #0x80000000
	orr r12, r12, r0, lsr #21
	cmp r2, #0x20
	ble _0201FEAC
	sub r2, r2, #0x20
	mov r1, #0
	mov r0, r12, lsr r2
	bx lr
_0201FEAC:
	mov r3, r0, lsl #0xb
	mov r1, r12, lsr r2
	mov r0, r3, lsr r2
	rsb r2, r2, #0x20
	orr r0, r0, r12, lsl r2
	bx lr
_0201FEC4:
	mov r1, #0
	mov r0, #0
	bx lr
_0201FED0:
	cmn r1, #0x100000
	cmpeq r0, #0
	bhi _0201FEE8
	mov r1, #0
	mov r0, #0
	bx lr
_0201FEE8:
	mvn r1, #0
	mvn r0, #0
	bx lr
_0201FEF4: .word 0x0000043E
	arm_func_end _ll_ufrom_d

	arm_func_start _dsqrt
_dsqrt: ; 0x0201FEF8
	stmfd sp!, {r4, r5, r6, lr}
	ldr r2, _02020088 ; =0x7FF00000
	cmp r1, r2
	bhs _02020044
	movs r12, r1, lsr #0x14
	beq _0201FFF0
	bic r1, r1, r2
	orr r1, r1, #0x100000
_0201FF18:
	movs r12, r12, asr #1
	bhs _0201FF2C
	sub r12, r12, #1
	movs r0, r0, lsl #1
	adc r1, r1, r1
_0201FF2C:
	movs r3, r0, lsl #1
	adc r1, r1, r1
	mov r2, #0
	mov r4, #0
	mov lr, #0x200000
_0201FF40:
	add r6, r4, lr
	cmp r6, r1
	addle r4, r6, lr
	suble r1, r1, r6
	addle r2, r2, lr
	movs r3, r3, lsl #1
	adc r1, r1, r1
	movs lr, lr, lsr #1
	bne _0201FF40
	mov r0, #0
	mov r5, #0
	cmp r1, r4
	cmpeq r3, #0x80000000
	blo _0201FF88
	subs r3, r3, #0x80000000
	sbc r1, r1, r4
	add r4, r4, #1
	mov r0, #0x80000000
_0201FF88:
	movs r3, r3, lsl #1
	adc r1, r1, r1
	mov lr, #0x40000000
_0201FF94:
	add r6, r5, lr
	cmp r4, r1
	cmpeq r6, r3
	bhi _0201FFB4
	add r5, r6, lr
	subs r3, r3, r6
	sbc r1, r1, r4
	add r0, r0, lr
_0201FFB4:
	movs r3, r3, lsl #1
	adc r1, r1, r1
	movs lr, lr, lsr #1
	bne _0201FF94
	orrs r1, r1, r3
	biceq r0, r0, #1
	movs r1, r2, lsr #1
	movs r0, r0, rrx
	adcs r0, r0, #0
	adc r1, r1, #0
	add r1, r1, #0x20000000
	sub r1, r1, #0x100000
	add r1, r1, r12, lsl #20
	ldmfd sp!, {r4, r5, r6, lr}
	bx lr
_0201FFF0:
	cmp r1, #0
	bne _02020020
	cmp r0, #0
	ldmeqfd sp!, {r4, r5, r6, lr}
	bxeq lr
	mvn r12, #0x13
	clz r5, r0
	movs r0, r0, lsl r5
	sub r12, r12, r5
	mov r1, r0, lsr #0xb
	mov r0, r0, lsl #0x15
	b _0201FF18
_02020020:
	clz r2, r1
	movs r1, r1, lsl r2
	rsb r2, r2, #0x2b
	mov r1, r1, lsr #0xb
	orr r1, r1, r0, lsr r2
	rsb r2, r2, #0x20
	mov r0, r0, lsl r2
	rsb r12, r2, #1
	b _0201FF18
_02020044:
	tst r1, #0x80000000
	beq _02020060
	bics r3, r1, #0x80000000
	cmpeq r0, #0
	ldmeqfd sp!, {r4, r5, r6, lr}
	bxeq lr
	b _0202006C
_02020060:
	orrs r2, r0, r1, lsl #12
	ldmeqfd sp!, {r4, r5, r6, lr}
	bxeq lr
_0202006C:
	ldr r2, _0202008C ; =0x7FF80000
	orr r1, r1, r2
	ldr r3, _02020090 ; =errno
	mov r4, #0x21
	str r4, [r3]
	ldmfd sp!, {r4, r5, r6, lr}
	bx lr
_02020088: .word 0x7FF00000
_0202008C: .word 0x7FF80000
_02020090: .word errno
	arm_func_end _dsqrt

	arm_func_start _fmul
_fmul: ; 0x02020094
	eor r2, r0, r1
	and r2, r2, #0x80000000
	mov r12, #0xff
	ands r3, r12, r0, lsr #23
	mov r0, r0, lsl #8
	cmpne r3, #0xff
	beq _02020110
	orr r0, r0, #0x80000000
	ands r12, r12, r1, lsr #23
	mov r1, r1, lsl #8
	cmpne r12, #0xff
	beq _02020150
	orr r1, r1, #0x80000000
_020200C8:
	add r12, r3, r12
	umull r1, r3, r0, r1
	movs r0, r3
	addpl r0, r0, r0
	subpl r12, r12, #1
	subs r12, r12, #0x7f
	bmi _020201DC
	cmp r12, #0xfe
	bge _02020248
	ands r3, r0, #0xff
	orr r0, r2, r0, lsr #8
	add r0, r0, r12, lsl #23
	tst r3, #0x80
	bxeq lr
	orrs r1, r1, r3, lsl #25
	andeqs r3, r0, #1
	addne r0, r0, #1
	bx lr
_02020110:
	cmp r3, #0
	beq _02020164
	movs r0, r0, lsl #1
	bne _02020238
	mov r12, r1, lsr #0x17
	mov r1, r1, lsl #9
	ands r12, r12, #0xff
	beq _02020144
	cmp r12, #0xff
	blt _0202022C
	cmp r1, #0
	beq _0202022C
	b _02020238
_02020144:
	cmp r1, #0
	beq _02020240
	b _0202022C
_02020150:
	cmp r12, #0
	beq _020201C0
_02020158:
	movs r1, r1, lsl #1
	bne _02020238
	b _0202022C
_02020164:
	movs r0, r0, lsl #1
	beq _0202019C
	mov r0, r0, lsr #1
	clz r3, r0
	movs r0, r0, lsl r3
	rsb r3, r3, #1
	mov r12, r1, lsr #0x17
	mov r1, r1, lsl #8
	ands r12, r12, #0xff
	beq _020201C0
	cmp r12, #0xff
	beq _02020158
	orr r1, r1, #0x80000000
	b _020200C8
_0202019C:
	mov r12, r1, lsr #0x17
	mov r1, r1, lsl #9
	ands r12, r12, #0xff
	beq _0202026C
	cmp r12, #0xff
	blt _0202026C
	cmp r1, #0
	beq _02020240
	b _02020238
_020201C0:
	movs r1, r1, lsl #1
	beq _0202026C
	mov r1, r1, lsr #1
	clz r12, r1
	movs r1, r1, lsl r12
	rsb r12, r12, #1
	b _020200C8
_020201DC:
	cmn r12, #0x18
	beq _02020224
	bmi _02020264
	cmp r1, #0
	orrne r0, r0, #1
	mov r3, r0
	mov r0, r0, lsr #8
	rsb r12, r12, #0
	orr r0, r2, r0, lsr r12
	rsb r12, r12, #0x18
	movs r1, r3, lsl r12
	bxeq lr
	tst r1, #0x80000000
	bxeq lr
	movs r1, r1, lsl #1
	andeqs r1, r0, #1
	addne r0, r0, #1
	bx lr
_02020224:
	mov r0, r0, lsl #1
	b _02020254
_0202022C:
	mov r0, #0xff000000
	orr r0, r2, r0, lsr #1
	bx lr
_02020238:
	mvn r0, #0x80000000
	bx lr
_02020240:
	mvn r0, #0x80000000
	bx lr
_02020248:
	mov r0, #0xff000000
	orr r0, r2, r0, lsr #1
	bx lr
_02020254:
	movs r1, r0
	mov r0, r2
	addne r0, r0, #1
	bx lr
_02020264:
	mov r0, r2
	bx lr
_0202026C:
	mov r0, r2
	bx lr
	arm_func_end _fmul

	arm_func_start _fadd
_fadd: ; 0x02020274
	eors r2, r0, r1
	eormi r1, r1, #0x80000000
	bmi _020204B0
_02020280:
	subs r12, r0, r1
	sublo r0, r0, r12
	addlo r1, r1, r12
	mov r2, #0x80000000
	mov r3, r0, lsr #0x17
	orr r0, r2, r0, lsl #8
	ands r12, r3, #0xff
	cmpne r12, #0xff
	beq _02020314
	mov r12, r1, lsr #0x17
	orr r1, r2, r1, lsl #8
	ands r2, r12, #0xff
	beq _02020354
_020202B4:
	subs r12, r3, r12
	beq _020202CC
	rsb r2, r12, #0x20
	movs r2, r1, lsl r2
	mov r1, r1, lsr r12
	orrne r1, r1, #1
_020202CC:
	adds r0, r0, r1
	blo _020202EC
	and r1, r0, #1
	orr r0, r1, r0, rrx
	add r3, r3, #1
	and r2, r3, #0xff
	cmp r2, #0xff
	beq _0202045C
_020202EC:
	ands r1, r0, #0xff
	add r0, r0, r0
	mov r0, r0, lsr #9
	orr r0, r0, r3, lsl #23
	tst r1, #0x80
	bxeq lr
	ands r1, r1, #0x7f
	andeqs r1, r0, #1
	addne r0, r0, #1
	bx lr
_02020314:
	cmp r3, #0x100
	movge r2, #0x80000000
	movlt r2, #0
	ands r3, r3, #0xff
	beq _02020378
	movs r0, r0, lsl #1
	bne _02020488
	mov r12, r1, lsr #0x17
	mov r1, r1, lsl #9
	ands r12, r12, #0xff
	beq _0202047C
	cmp r12, #0xff
	blt _0202047C
	cmp r1, #0
	beq _0202047C
	b _02020488
_02020354:
	cmp r3, #0x100
	movge r2, #0x80000000
	movlt r2, #0
	and r3, r3, #0xff
	ands r12, r12, #0xff
	beq _020203D4
_0202036C:
	movs r1, r1, lsl #1
	bne _02020488
	b _0202047C
_02020378:
	movs r0, r0, lsl #1
	beq _020203B0
	mov r3, #1
	mov r0, r0, lsr #1
	mov r12, r1, lsr #0x17
	mov r1, r1, lsl #8
	ands r12, r12, #0xff
	beq _020203D4
	cmp r12, #0xff
	beq _0202036C
	orr r1, r1, #0x80000000
	orr r3, r3, r2, lsr #23
	orr r12, r12, r2, lsr #23
	b _020202B4
_020203B0:
	mov r3, r1, lsr #0x17
	mov r0, r1, lsl #9
	ands r3, r3, #0xff
	beq _0202043C
	cmp r3, #0xff
	blt _0202043C
	cmp r0, #0
	beq _0202047C
	b _02020474
_020203D4:
	movs r1, r1, lsl #1
	beq _02020444
	mov r1, r1, lsr #1
	mov r12, #1
	orr r3, r3, r2, lsr #23
	orr r12, r12, r2, lsr #23
	cmp r0, #0
	bmi _020202B4
	adds r0, r0, r1
	blo _02020408
	and r1, r0, #1
	orr r0, r1, r0, rrx
	add r12, r12, #1
_02020408:
	cmp r0, #0
	subge r12, r12, #1
	ands r1, r0, #0xff
	add r0, r0, r0
	mov r0, r0, lsr #9
	orr r0, r0, r12, lsl #23
	bxeq lr
	tst r1, #0x80
	bxeq lr
	ands r1, r1, #0x7f
	andeqs r1, r0, #1
	addne r0, r0, #1
	bx lr
_0202043C:
	mov r0, r1
	bx lr
_02020444:
	cmp r0, #0
	subges r3, r3, #1
	add r0, r0, r0
	orr r0, r2, r0, lsr #9
	orr r0, r0, r3, lsl #23
	bx lr
_0202045C:
	cmp r3, #0x100
	movge r2, #0x80000000
	movlt r2, #0
	mov r0, #0xff000000
	orr r0, r2, r0, lsr #1
	bx lr
_02020474:
	mvn r0, #0x80000000
	bx lr
_0202047C:
	mov r0, #0xff000000
	orr r0, r2, r0, lsr #1
	bx lr
_02020488:
	mvn r0, #0x80000000
	bx lr
	mvn r0, #0x80000000
	bx lr
	arm_func_end _fadd

	arm_func_start _frsb
_frsb: ; 0x02020498
	eor r0, r0, r1
	eor r1, r0, r1
	eor r0, r0, r1
	arm_func_end _frsb

	arm_func_start _fsub
_fsub: ; 0x020204A4
	eors r2, r0, r1
	eormi r1, r1, #0x80000000
	bmi _02020280
_020204B0:
	subs r12, r0, r1
	eorlo r12, r12, #0x80000000
	sublo r0, r0, r12
	addlo r1, r1, r12
	mov r2, #0x80000000
	mov r3, r0, lsr #0x17
	orr r0, r2, r0, lsl #8
	ands r12, r3, #0xff
	cmpne r12, #0xff
	beq _020205CC
	mov r12, r1, lsr #0x17
	orr r1, r2, r1, lsl #8
	ands r2, r12, #0xff
	beq _0202060C
_020204E8:
	subs r12, r3, r12
	beq _02020530
	rsb r2, r12, #0x20
	movs r2, r1, lsl r2
	mov r1, r1, lsr r12
	orrne r1, r1, #1
	subs r0, r0, r1
	bpl _02020574
	ands r1, r0, #0xff
	add r0, r0, r0
	mov r0, r0, lsr #9
	orr r0, r0, r3, lsl #23
	tst r1, #0x80
	bxeq lr
	ands r1, r1, #0x7f
	andeqs r1, r0, #1
	addne r0, r0, #1
	bx lr
_02020530:
	subs r0, r0, r1
	beq _020206D8
	mov r2, r3, lsl #0x17
	and r2, r2, #0x80000000
	bic r3, r3, #0x100
	clz r12, r0
	movs r0, r0, lsl r12
	sub r3, r3, r12
	cmp r3, #0
	bgt _02020564
	rsb r3, r3, #9
	orr r0, r2, r0, lsr r3
	bx lr
_02020564:
	add r0, r0, r0
	orr r0, r2, r0, lsr #9
	orr r0, r0, r3, lsl #23
	bx lr
_02020574:
	mov r2, r3, lsl #0x17
	and r2, r2, #0x80000000
	bic r3, r3, #0x100
	clz r12, r0
	movs r0, r0, lsl r12
	sub r3, r3, r12
	cmp r3, #0
	bgt _020205A0
	rsb r3, r3, #9
	orr r0, r2, r0, lsr r3
	bx lr
_020205A0:
	ands r1, r0, #0xff
	add r0, r0, r0
	orr r0, r2, r0, lsr #9
	orr r0, r0, r3, lsl #23
	bxeq lr
	tst r1, #0x80
	bxeq lr
	ands r1, r1, #0x7f
	andeqs r1, r0, #1
	addne r0, r0, #1
	bx lr
_020205CC:
	cmp r3, #0x100
	movge r2, #0x80000000
	movlt r2, #0
	ands r3, r3, #0xff
	beq _02020634
	movs r0, r0, lsl #1
	bne _0202070C
	mov r12, r1, lsr #0x17
	mov r1, r1, lsl #9
	ands r12, r12, #0xff
	beq _02020700
	cmp r12, #0xff
	blt _02020700
	cmp r1, #0
	beq _02020714
	b _0202070C
_0202060C:
	cmp r12, #0x100
	movge r2, #0x80000000
	movlt r2, #0
	and r3, r3, #0xff
	ands r12, r12, #0xff
	beq _0202069C
_02020624:
	eor r2, r2, #0x80000000
	movs r1, r1, lsl #1
	bne _0202070C
	b _02020700
_02020634:
	movs r0, r0, lsl #1
	beq _0202066C
	mov r0, r0, lsr #1
	mov r3, #1
	mov r12, r1, lsr #0x17
	mov r1, r1, lsl #8
	ands r12, r12, #0xff
	beq _0202069C
	cmp r12, #0xff
	beq _02020624
	orr r1, r1, #0x80000000
	orr r3, r3, r2, lsr #23
	orr r12, r12, r2, lsr #23
	b _020204E8
_0202066C:
	mov r3, r1, lsr #0x17
	mov r0, r1, lsl #9
	ands r2, r3, #0xff
	beq _02020690
	cmp r2, #0xff
	blt _020206B8
	cmp r0, #0
	bne _020206F8
	b _02020700
_02020690:
	cmp r0, #0
	beq _020206D8
	b _020206B8
_0202069C:
	movs r1, r1, lsl #1
	beq _020206C0
	mov r1, r1, lsr #1
	mov r12, #1
	orr r12, r12, r2, lsr #23
	orr r3, r3, r2, lsr #23
	b _020204E8
_020206B8:
	mov r0, r1
	bx lr
_020206C0:
	cmp r0, #0
	subges r3, r3, #1
	add r0, r0, r0
	orr r0, r2, r0, lsr #9
	orr r0, r0, r3, lsl #23
	bx lr
_020206D8:
	mov r0, #0
	bx lr
	cmp r0, #0
	subges r3, r3, #1
	add r0, r0, r0
	mov r0, r0, lsr #9
	orr r0, r0, r3, lsl #23
	bx lr
_020206F8:
	mvn r0, #0x80000000
	bx lr
_02020700:
	mov r0, #0xff000000
	orr r0, r2, r0, lsr #1
	bx lr
_0202070C:
	mvn r0, #0x80000000
	bx lr
_02020714:
	mvn r0, #0x80000000
	bx lr
	arm_func_end _fsub

	arm_func_start _frdiv
_frdiv: ; 0x0202071C
	eor r0, r0, r1
	eor r1, r0, r1
	eor r0, r0, r1
	arm_func_end _frdiv

	arm_func_start _fdiv
_fdiv: ; 0x02020728
	stmdb sp!, {lr}
	mov r12, #0xff
	ands r3, r12, r0, lsr #23
	cmpne r3, #0xff
	beq _020208FC
	ands r12, r12, r1, lsr #23
	cmpne r12, #0xff
	beq _02020938
	orr r1, r1, #0x800000
	orr r0, r0, #0x800000
	bic r2, r0, #0xff000000
	bic lr, r1, #0xff000000
_02020758:
	cmp r2, lr
	movlo r2, r2, lsl #1
	sublo r3, r3, #1
	teq r0, r1
	sub r0, pc, #0x94
	ldrb r1, [r0, lr, lsr #15]
	rsb lr, lr, #0
	mov r0, lr, asr #1
	mul r0, r1, r0
	add r0, r0, #0x80000000
	mov r0, r0, lsr #6
	mul r0, r1, r0
	mov r0, r0, lsr #0xe
	mul r1, lr, r0
	sub r12, r3, r12
	mov r1, r1, lsr #0xc
	mul r1, r0, r1
	mov r0, r0, lsl #0xe
	add r0, r0, r1, lsr #15
	umull r1, r0, r2, r0
	mov r3, r0
	orrmi r0, r0, #0x80000000
	adds r12, r12, #0x7e
	bmi _02020A00
	cmp r12, #0xfe
	bge _02020AB4
	add r0, r0, r12, lsl #23
	mov r12, r1, lsr #0x1c
	cmp r12, #7
	beq _020208DC
	add r0, r0, r1, lsr #31
	ldmia sp!, {lr}
	bx lr
_020207DC: ; ???
	.byte 0xFF, 0xFF, 0xFE, 0xFD
	.byte 0xFC, 0xFB, 0xFA, 0xF9, 0xF8, 0xF7, 0xF6, 0xF5, 0xF4, 0xF3, 0xF2, 0xF1, 0xF0, 0xF0, 0xEF, 0xEE
	.byte 0xED, 0xEC, 0xEB, 0xEA, 0xEA, 0xE9, 0xE8, 0xE7, 0xE6, 0xE6, 0xE5, 0xE4, 0xE3, 0xE2, 0xE2, 0xE1
	.byte 0xE0, 0xDF, 0xDF, 0xDE, 0xDD, 0xDC, 0xDC, 0xDB, 0xDA, 0xD9, 0xD9, 0xD8, 0xD7, 0xD7, 0xD6, 0xD5
	.byte 0xD4, 0xD4, 0xD3, 0xD2, 0xD2, 0xD1, 0xD0, 0xD0, 0xCF, 0xCE, 0xCE, 0xCD, 0xCC, 0xCC, 0xCB, 0xCB
	.byte 0xCA, 0xC9, 0xC9, 0xC8, 0xC8, 0xC7, 0xC6, 0xC6, 0xC5, 0xC5, 0xC4, 0xC3, 0xC3, 0xC2, 0xC2, 0xC1
	.byte 0xC0, 0xC0, 0xBF, 0xBF, 0xBE, 0xBE, 0xBD, 0xBD, 0xBC, 0xBC, 0xBB, 0xBA, 0xBA, 0xB9, 0xB9, 0xB8
	.byte 0xB8, 0xB7, 0xB7, 0xB6, 0xB6, 0xB5, 0xB5, 0xB4, 0xB4, 0xB3, 0xB3, 0xB2, 0xB2, 0xB1, 0xB1, 0xB0
	.byte 0xB0, 0xAF, 0xAF, 0xAF, 0xAE, 0xAE, 0xAD, 0xAD, 0xAC, 0xAC, 0xAB, 0xAB, 0xAA, 0xAA, 0xAA, 0xA9
	.byte 0xA9, 0xA8, 0xA8, 0xA7, 0xA7, 0xA7, 0xA6, 0xA6, 0xA5, 0xA5, 0xA4, 0xA4, 0xA4, 0xA3, 0xA3, 0xA2
	.byte 0xA2, 0xA2, 0xA1, 0xA1, 0xA0, 0xA0, 0xA0, 0x9F, 0x9F, 0x9E, 0x9E, 0x9E, 0x9D, 0x9D, 0x9D, 0x9C
	.byte 0x9C, 0x9B, 0x9B, 0x9B, 0x9A, 0x9A, 0x9A, 0x99, 0x99, 0x99, 0x98, 0x98, 0x98, 0x97, 0x97, 0x96
	.byte 0x96, 0x96, 0x95, 0x95, 0x95, 0x94, 0x94, 0x94, 0x93, 0x93, 0x93, 0x92, 0x92, 0x92, 0x91, 0x91
	.byte 0x91, 0x91, 0x90, 0x90, 0x90, 0x8F, 0x8F, 0x8F, 0x8E, 0x8E, 0x8E, 0x8D, 0x8D, 0x8D, 0x8C, 0x8C
	.byte 0x8C, 0x8C, 0x8B, 0x8B, 0x8B, 0x8A, 0x8A, 0x8A, 0x8A, 0x89, 0x89, 0x89, 0x88, 0x88, 0x88, 0x88
	.byte 0x87, 0x87, 0x87, 0x86, 0x86, 0x86, 0x86, 0x85, 0x85, 0x85, 0x85, 0x84, 0x84, 0x84, 0x83, 0x83
	.byte 0x83, 0x83, 0x82, 0x82, 0x82, 0x82, 0x81, 0x81, 0x81, 0x81, 0x80, 0x80
_020208DC:
	mov r1, r3, lsl #1
	add r1, r1, #1
	rsb lr, lr, #0
	mul r1, lr, r1
	cmp r1, r2, lsl #24
	addmi r0, r0, #1
	ldmia sp!, {lr}
	bx lr
_020208FC:
	eor lr, r0, r1
	and lr, lr, #0x80000000
	cmp r3, #0
	beq _02020954
	movs r0, r0, lsl #9
	bne _02020A9C
	mov r12, r1, lsr #0x17
	mov r1, r1, lsl #9
	ands r12, r12, #0xff
	beq _02020A8C
	cmp r12, #0xff
	blt _02020A8C
	cmp r1, #0
	beq _02020AA8
	b _02020A84
_02020938:
	eor lr, r0, r1
	and lr, lr, #0x80000000
	cmp r12, #0
	beq _020209B8
_02020948:
	movs r1, r1, lsl #9
	bne _02020A84
	b _02020AD4
_02020954:
	movs r2, r0, lsl #9
	beq _02020988
	clz r3, r2
	movs r2, r2, lsl r3
	rsb r3, r3, #0
	mov r2, r2, lsr #8
	ands r12, r12, r1, lsr #23
	beq _020209E0
	cmp r12, #0xff
	beq _02020948
	orr r1, r1, #0x800000
	bic lr, r1, #0xff000000
	b _02020758
_02020988:
	mov r12, r1, lsr #0x17
	mov r1, r1, lsl #9
	ands r12, r12, #0xff
	beq _020209AC
	cmp r12, #0xff
	blt _02020AD4
	cmp r1, #0
	beq _02020AD4
	b _02020A84
_020209AC:
	cmp r1, #0
	beq _02020AA8
	b _02020AD4
_020209B8:
	movs r12, r1, lsl #9
	beq _02020A8C
	mov lr, r12
	clz r12, lr
	movs lr, lr, lsl r12
	rsb r12, r12, #0
	mov lr, lr, lsr #8
	orr r0, r0, #0x800000
	bic r2, r0, #0xff000000
	b _02020758
_020209E0:
	movs r12, r1, lsl #9
	beq _02020A8C
	mov lr, r12
	clz r12, lr
	movs lr, lr, lsl r12
	rsb r12, r12, #0
	mov lr, lr, lsr #8
	b _02020758
_02020A00:
	and r0, r0, #0x80000000
	cmn r12, #0x18
	beq _02020A74
	bmi _02020ACC
	add r1, r12, #0x17
	mov r2, r2, lsl r1
	rsb r12, r12, #0
	mov r3, r3, lsr r12
	orr r0, r0, r3
	rsb lr, lr, #0
	mul r1, lr, r3
	cmp r1, r2
	ldmeqia sp!, {lr}
	bxeq lr
	add r1, r1, lr
	cmp r1, r2
	beq _02020A68
	addmi r0, r0, #1
	subpl r1, r1, lr
	add r1, lr, r1, lsl #1
	cmp r1, r2, lsl #1
	and r3, r0, #1
	addmi r0, r0, #1
	addeq r0, r0, r3
	ldmia sp!, {lr}
	bx lr
_02020A68:
	add r0, r0, #1
	ldmia sp!, {lr}
	bx lr
_02020A74:
	cmn r2, lr
	addne r0, r0, #1
	ldmia sp!, {lr}
	bx lr
_02020A84:
	mov r0, r1
	b _02020A9C
_02020A8C:
	mov r0, #0xff000000
	orr r0, lr, r0, lsr #1
	ldmia sp!, {lr}
	bx lr
_02020A9C:
	mvn r0, #0x80000000
	ldmia sp!, {lr}
	bx lr
_02020AA8:
	mvn r0, #0x80000000
	ldmia sp!, {lr}
	bx lr
_02020AB4:
	tst r0, #0x80000000
	mov r0, #0xff000000
	movne r0, r0, asr #1
	moveq r0, r0, lsr #1
	ldmia sp!, {lr}
	bx lr
_02020ACC:
	ldmia sp!, {lr}
	bx lr
_02020AD4:
	mov r0, lr
	ldmia sp!, {lr}
	bx lr
	arm_func_end _fdiv

	arm_func_start _drdiv
_drdiv: ; 0x02020AE0
	eor r1, r1, r3
	eor r3, r1, r3
	eor r1, r1, r3
	eor r0, r0, r2
	eor r2, r0, r2
	eor r0, r0, r2
	arm_func_end _drdiv

	arm_func_start _ddiv
_ddiv: ; 0x02020AF8
	stmfd sp!, {r4, r5, r6, lr}
	ldr lr, _02021038 ; =0x00000FFE
	eor r4, r1, r3
	ands r12, lr, r1, lsr #19
	cmpne r12, lr
	beq _02020EA4
	bic r1, r1, lr, lsl #20
	orr r1, r1, #0x100000
	add r12, r12, r4, lsr #31
_02020B1C:
	ands r4, lr, r3, lsr #19
	cmpne r4, lr
	beq _02020F3C
	bic r3, r3, lr, lsl #20
	orr r3, r3, #0x100000
_02020B30:
	sub r12, r12, r4
	cmp r1, r3
	cmpeq r0, r2
	bhs _02020B4C
	adds r0, r0, r0
	adc r1, r1, r1
	sub r12, r12, #2
_02020B4C:
	sub r4, pc, #0x24
	ldrb lr, [r4, r3, lsr #12]
	rsbs r2, r2, #0
	rsc r3, r3, #0
	mov r4, #0x20000000
	mla r5, lr, r3, r4
	mov r6, r3, lsl #0xa
	mov r5, r5, lsr #7
	mul lr, r5, lr
	orr r6, r6, r2, lsr #22
	mov lr, lr, lsr #0xd
	mul r5, lr, r6
	mov r6, r1, lsl #0xa
	orr r6, r6, r0, lsr #22
	mov r5, r5, lsr #0x10
	mul r5, lr, r5
	mov lr, lr, lsl #0xe
	add lr, lr, r5, lsr #16
	umull r5, r6, lr, r6
	umull r4, r5, r6, r2
	mla r5, r3, r6, r5
	mov r4, r4, lsr #0x1a
	orr r4, r4, r5, lsl #6
	add r4, r4, r0, lsl #2
	umull lr, r5, r4, lr
	mov r4, #0
	adds r5, r5, r6, lsl #24
	adc r4, r4, r6, lsr #8
	cmp r12, #0x800
	bge _02020D30
	add r12, r12, #0x7f0
	adds r12, r12, #0xc
	bmi _02020D48
	orr r1, r4, r12, lsl #31
	bic r12, r12, #1
	add r1, r1, r12, lsl #19
	tst lr, #0x80000000
	bne _02020C20
	rsbs r2, r2, #0
	mov r4, r4, lsl #1
	add r4, r4, r5, lsr #31
	mul lr, r2, r4
	mov r6, #0
	mov r4, r5, lsl #1
	orr r4, r4, #1
	umlal r6, lr, r4, r2
	rsc r3, r3, #0
	mla lr, r4, r3, lr
	cmp lr, r0, lsl #21
	bmi _02020C20
	mov r0, r5
	ldmfd sp!, {r4, r5, r6, lr}
	bx lr
_02020C20:
	adds r0, r5, #1
	adc r1, r1, #0
	ldmfd sp!, {r4, r5, r6, lr}
	bx lr
_02020C30: ; ???
	.byte 0xFF, 0xFF, 0xFE, 0xFD, 0xFC, 0xFB, 0xFA, 0xF9, 0xF8, 0xF7, 0xF6, 0xF5, 0xF4, 0xF3, 0xF2, 0xF1
	.byte 0xF0, 0xF0, 0xEF, 0xEE, 0xED, 0xEC, 0xEB, 0xEA, 0xEA, 0xE9, 0xE8, 0xE7, 0xE6, 0xE6, 0xE5, 0xE4
	.byte 0xE3, 0xE2, 0xE2, 0xE1, 0xE0, 0xDF, 0xDF, 0xDE, 0xDD, 0xDC, 0xDC, 0xDB, 0xDA, 0xD9, 0xD9, 0xD8
	.byte 0xD7, 0xD7, 0xD6, 0xD5, 0xD4, 0xD4, 0xD3, 0xD2, 0xD2, 0xD1, 0xD0, 0xD0, 0xCF, 0xCE, 0xCE, 0xCD
	.byte 0xCC, 0xCC, 0xCB, 0xCB, 0xCA, 0xC9, 0xC9, 0xC8, 0xC8, 0xC7, 0xC6, 0xC6, 0xC5, 0xC5, 0xC4, 0xC3
	.byte 0xC3, 0xC2, 0xC2, 0xC1, 0xC0, 0xC0, 0xBF, 0xBF, 0xBE, 0xBE, 0xBD, 0xBD, 0xBC, 0xBC, 0xBB, 0xBA
	.byte 0xBA, 0xB9, 0xB9, 0xB8, 0xB8, 0xB7, 0xB7, 0xB6, 0xB6, 0xB5, 0xB5, 0xB4, 0xB4, 0xB3, 0xB3, 0xB2
	.byte 0xB2, 0xB1, 0xB1, 0xB0, 0xB0, 0xAF, 0xAF, 0xAF, 0xAE, 0xAE, 0xAD, 0xAD, 0xAC, 0xAC, 0xAB, 0xAB
	.byte 0xAA, 0xAA, 0xAA, 0xA9, 0xA9, 0xA8, 0xA8, 0xA7, 0xA7, 0xA7, 0xA6, 0xA6, 0xA5, 0xA5, 0xA4, 0xA4
	.byte 0xA4, 0xA3, 0xA3, 0xA2, 0xA2, 0xA2, 0xA1, 0xA1, 0xA0, 0xA0, 0xA0, 0x9F, 0x9F, 0x9E, 0x9E, 0x9E
	.byte 0x9D, 0x9D, 0x9D, 0x9C, 0x9C, 0x9B, 0x9B, 0x9B, 0x9A, 0x9A, 0x9A, 0x99, 0x99, 0x99, 0x98, 0x98
	.byte 0x98, 0x97, 0x97, 0x96, 0x96, 0x96, 0x95, 0x95, 0x95, 0x94, 0x94, 0x94, 0x93, 0x93, 0x93, 0x92
	.byte 0x92, 0x92, 0x91, 0x91, 0x91, 0x91, 0x90, 0x90, 0x90, 0x8F, 0x8F, 0x8F, 0x8E, 0x8E, 0x8E, 0x8D
	.byte 0x8D, 0x8D, 0x8C, 0x8C, 0x8C, 0x8C, 0x8B, 0x8B, 0x8B, 0x8A, 0x8A, 0x8A, 0x8A, 0x89, 0x89, 0x89
	.byte 0x88, 0x88, 0x88, 0x88, 0x87, 0x87, 0x87, 0x86, 0x86, 0x86, 0x86, 0x85, 0x85, 0x85, 0x85, 0x84
	.byte 0x84, 0x84, 0x83, 0x83, 0x83, 0x83, 0x82, 0x82, 0x82, 0x82, 0x81, 0x81, 0x81, 0x81, 0x80, 0x80
_02020D30:
	movs r1, r12, lsl #0x1f
	orr r1, r1, #0x7f000000
	orr r1, r1, #0xf00000
	mov r0, #0
	ldmfd sp!, {r4, r5, r6, lr}
	bx lr
_02020D48:
	mvn r6, r12, asr #1
	cmp r6, #0x34
	bgt _02020E94
	beq _02020E70
	cmp r6, #0x14
	bge _02020D90
	rsb r6, r6, #0x13
	mov lr, r0, lsl r6
	rsb r6, r6, #0x14
	mov r0, r5, lsr r6
	rsb r6, r6, #0x20
	orr r0, r0, r4, lsl r6
	rsb r6, r6, #0x20
	mov r4, r4, lsr r6
	orr r1, r4, r12, lsl #31
	mov r12, lr
	mov lr, #0
	b _02020DC0
_02020D90:
	rsb r6, r6, #0x33
	mov lr, r1, lsl r6
	mov r1, r12, lsl #0x1f
	rsb r6, r6, #0x20
	orr r12, lr, r0, lsr r6
	rsb r6, r6, #0x20
	mov lr, r0, lsl r6
	mov r5, r5, lsr #0x15
	orr r5, r5, r4, lsl #11
	rsb r6, r6, #0x1f
	mov r0, r5, lsr r6
	mov r4, #0
_02020DC0:
	rsbs r2, r2, #0
	mul r4, r2, r4
	mov r5, #0
	umlal r5, r4, r2, r0
	rsc r3, r3, #0
	mla r4, r0, r3, r4
	cmp r4, r12
	cmpeq r5, lr
	ldmeqfd sp!, {r4, r5, r6, lr}
	bxeq lr
	adds r5, r5, r2
	adc r4, r4, r3
	cmp r4, r12
	bmi _02020E64
	bne _02020E08
	cmp r5, lr
	beq _02020E54
	blo _02020E64
_02020E08:
	subs r5, r5, r2
	sbc r4, r4, r3
_02020E10:
	adds r5, r5, r5
	adc r4, r4, r4
	adds r5, r5, r2
	adc r4, r4, r3
	adds lr, lr, lr
	adc r12, r12, r12
	cmp r4, r12
	bmi _02020E54
	ldmnefd sp!, {r4, r5, r6, lr}
	bxne lr
	cmp r5, lr
	blo _02020E54
	ldmnefd sp!, {r4, r5, r6, lr}
	bxne lr
	tst r0, #1
	ldmeqfd sp!, {r4, r5, r6, lr}
	bxeq lr
_02020E54:
	adds r0, r0, #1
	adc r1, r1, #0
	ldmfd sp!, {r4, r5, r6, lr}
	bx lr
_02020E64:
	adds r0, r0, #1
	adc r1, r1, #0
	b _02020E10
_02020E70:
	rsbs r2, r2, #0
	rsc r3, r3, #0
	cmp r1, r3
	cmpeq r0, r2
	mov r1, r12, lsl #0x1f
	mov r0, #0
	movne r0, #1
	ldmfd sp!, {r4, r5, r6, lr}
	bx lr
_02020E94:
	mov r1, r12, lsl #0x1f
	mov r0, #0
	ldmfd sp!, {r4, r5, r6, lr}
	bx lr
_02020EA4:
	orrs r5, r0, r1, lsl #1
	beq _02020FC8
	cmp r12, lr
	beq _02020F0C
	movs r1, r1, lsl #0xc
	beq _02020EE8
	clz r5, r1
	movs r1, r1, lsl r5
	sub r12, r12, r5
	add r5, r12, #0x1f
	mov r1, r1, lsr #0xb
	orr r1, r1, r0, lsr r5
	rsb r5, r5, #0x20
	mov r0, r0, lsl r5
	mov r12, r12, lsl #1
	orr r12, r12, r4, lsr #31
	b _02020B1C
_02020EE8:
	mvn r12, #0x13
	clz r5, r0
	movs r0, r0, lsl r5
	sub r12, r12, r5
	mov r1, r0, lsr #0xb
	mov r0, r0, lsl #0x15
	mov r12, r12, lsl #1
	orr r12, r12, r4, lsr #31
	b _02020B1C
_02020F0C:
	orrs r5, r0, r1, lsl #12
	bne _02020FF0
	bic r5, r3, #0x80000000
	cmp r5, lr, lsl #19
	bhs _02020F30
	and r5, r3, #0x80000000
	eor r1, r5, r1
	ldmfd sp!, {r4, r5, r6, lr}
	bx lr
_02020F30:
	orrs r5, r2, r3, lsl #12
	bne _02021010
	b _02021028
_02020F3C:
	orrs r5, r2, r3, lsl #1
	beq _02020FB4
	cmp r4, lr
	beq _02020F9C
	movs r3, r3, lsl #0xc
	beq _02020F7C
	clz r5, r3
	movs r3, r3, lsl r5
	sub r4, r4, r5
	add r5, r4, #0x1f
	mov r3, r3, lsr #0xb
	orr r3, r3, r2, lsr r5
	rsb r5, r5, #0x20
	mov r2, r2, lsl r5
	mov r4, r4, lsl #1
	b _02020B30
_02020F7C:
	mvn r4, #0x13
	clz r5, r2
	movs r2, r2, lsl r5
	sub r4, r4, r5
	mov r3, r2, lsr #0xb
	mov r2, r2, lsl #0x15
	mov r4, r4, lsl #1
	b _02020B30
_02020F9C:
	orrs r5, r2, r3, lsl #12
	bne _02021010
	mov r1, r12, lsl #0x1f
	mov r0, #0
	ldmfd sp!, {r4, r5, r6, lr}
	bx lr
_02020FB4:
	mov r1, r12, lsl #0x1f
	orr r1, r1, lr, lsl #19
	mov r0, #0
	ldmfd sp!, {r4, r5, r6, lr}
	bx lr
_02020FC8:
	orrs r5, r2, r3, lsl #1
	beq _02021028
	bic r5, r3, #0x80000000
	cmp r5, lr, lsl #19
	cmpeq r2, #0
	bhi _02021010
	eor r1, r1, r3
	and r1, r1, #0x80000000
	ldmfd sp!, {r4, r5, r6, lr}
	bx lr
_02020FF0:
	tst r1, #0x80000
	beq _02021028
	bic r5, r3, #0x80000000
	cmp r5, lr, lsl #19
	cmpeq r2, #0
	bhi _02021010
	ldmfd sp!, {r4, r5, r6, lr}
	bx lr
_02021010:
	tst r3, #0x80000
	beq _02021028
	mov r1, r3
	mov r0, r2
	ldmfd sp!, {r4, r5, r6, lr}
	bx lr
_02021028:
	orr r1, r1, #0x7f000000
	orr r1, r1, #0xf80000
	ldmfd sp!, {r4, r5, r6, lr}
	bx lr
_02021038: .word 0x00000FFE
	arm_func_end _ddiv

	arm_func_start _fp_init
_fp_init: ; 0x0202103C
	bx lr
	arm_func_end _fp_init

	arm_func_start abort
abort: ; 0x02021040
	stmfd sp!, {r4, lr}
	mov r4, #1
	mov r0, r4
	bl raise
	ldr r1, _02021064 ; =__console_exit
	mov r0, r4
	str r4, [r1, #0xc]
	bl exit
	ldmfd sp!, {r4, pc}
_02021064: .word __console_exit
	arm_func_end abort

	arm_func_start exit
exit: ; 0x02021068
	stmfd sp!, {r3, r4, r5, lr}
	ldr r4, _020210A8 ; =__console_exit
	mov r5, r0
	ldr r0, [r4, #0xc]
	cmp r0, #0
	bne _0202109C
	bl __destroy_global_chain
	ldr r0, [r4, #4]
	cmp r0, #0
	beq _0202109C
	blx r0
	mov r0, #0
	str r0, [r4, #4]
_0202109C:
	mov r0, r5
	bl __exit
	ldmfd sp!, {r3, r4, r5, pc}
_020210A8: .word __console_exit
	arm_func_end exit

	arm_func_start __exit
__exit: ; 0x020210AC
	stmfd sp!, {r4, r5, r6, lr}
	ldr r6, _020211B0 ; =0x02099A88
	mov r0, r6
	bl OS_TryLockMutex
	cmp r0, #0
	bne _020210E8
	ldr r0, _020211B4 ; =OSi_ThreadInfo
	ldr r1, _020211B8 ; =0x02099A40
	ldr r2, [r0, #4]
	ldr r0, _020211BC ; =0x02099A64
	ldr r3, [r2, #0x6c]
	mov r2, #1
	str r3, [r1]
	str r2, [r0]
	b _02021134
_020210E8:
	ldr r4, _020211B4 ; =OSi_ThreadInfo
	ldr r5, _020211B8 ; =0x02099A40
	ldr r0, [r4, #4]
	ldr r1, [r5]
	ldr r0, [r0, #0x6c]
	cmp r1, r0
	ldreq r0, _020211BC ; =0x02099A64
	ldreq r1, [r0]
	addeq r1, r1, #1
	streq r1, [r0]
	beq _02021134
	mov r0, r6
	bl OS_LockMutex
	ldr r1, [r4, #4]
	ldr r0, _020211BC ; =0x02099A64
	ldr r2, [r1, #0x6c]
	mov r1, #1
	str r2, [r5]
	str r1, [r0]
_02021134:
	ldr r4, _020211C0 ; =__console_exit
	ldr r0, [r4, #8]
	cmp r0, #0
	ble _02021168
	ldr r5, _020211C4 ; =0x02099940
_02021148:
	ldr r0, [r4, #8]
	sub r1, r0, #1
	ldr r0, [r5, r1, lsl #2]
	str r1, [r4, #8]
	blx r0
	ldr r0, [r4, #8]
	cmp r0, #0
	bgt _02021148
_02021168:
	ldr r0, _020211BC ; =0x02099A64
	ldr r1, [r0]
	subs r1, r1, #1
	str r1, [r0]
	bne _02021184
	ldr r0, _020211B0 ; =0x02099A88
	bl OS_UnlockMutex
_02021184:
	ldr r4, _020211C0 ; =__console_exit
	ldr r0, [r4]
	cmp r0, #0
	beq _020211A0
	blx r0
	mov r0, #0
	str r0, [r4]
_020211A0:
	mov r0, #0
	bl fflush
	bl _ExitProcess
	ldmfd sp!, {r4, r5, r6, pc}
_020211B0: .word unk_02099A88
_020211B4: .word OSi_ThreadInfo
_020211B8: .word unk_02099A40
_020211BC: .word unk_02099A64
_020211C0: .word __console_exit
_020211C4: .word unk_02099940
	arm_func_end __exit

	arm_func_start __sys_alloc
__sys_alloc: ; 0x020211C8
	mov r2, r0
	mov r0, #0
	ldr r12, _020211DC ; =OS_AllocFromHeap
	sub r1, r0, #1
	bx r12
_020211DC: .word OS_AllocFromHeap
	arm_func_end __sys_alloc

	arm_func_start __sys_free
__sys_free: ; 0x020211E0
	mov r2, r0
	mov r0, #0
	ldr r12, _020211F4 ; =OS_FreeToHeap
	sub r1, r0, #1
	bx r12
_020211F4: .word OS_FreeToHeap
	arm_func_end __sys_free

	arm_func_start malloc
malloc: ; 0x020211F8
	stmfd sp!, {r3, lr}
	cmp r0, #0
	moveq r0, #0
	ldmeqfd sp!, {r3, pc}
	bl __sys_alloc
	ldmfd sp!, {r3, pc}
	arm_func_end malloc

	arm_func_start free
free: ; 0x02021210
	stmfd sp!, {r3, lr}
	cmp r0, #0
	ldmeqfd sp!, {r3, pc}
	bl __sys_free
	ldmfd sp!, {r3, pc}
	arm_func_end free

	arm_func_start __flush_all
__flush_all: ; 0x02021224
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, lr}
	ldr r0, _02021284 ; =__files
	mov r4, #0
	mov r5, #1
	mov r8, r0
	mvn r9, #0
	mov r7, r4
	mov r6, #0x4c
_02021244:
	ldr r1, [r0, #4]
	mov r1, r1, lsl #0x16
	movs r1, r1, lsr #0x1d
	beq _02021260
	bl fflush
	cmp r0, #0
	movne r4, r9
_02021260:
	cmp r5, #3
	mullt r0, r5, r6
	addlt r0, r8, r0
	movge r0, r7
	addlt r5, r5, #1
	cmp r0, #0
	bne _02021244
	mov r0, r4
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
_02021284: .word __files
	arm_func_end __flush_all

	arm_func_start abs
abs: ; 0x02021288
	cmp r0, #0
	rsblt r0, r0, #0
	bx lr
	arm_func_end abs

	arm_func_start labs
labs: ; 0x02021294
	cmp r0, #0
	rsblt r0, r0, #0
	bx lr
	arm_func_end labs

	arm_func_start __convert_from_newlines
__convert_from_newlines: ; 0x020212A0
	bx lr
	arm_func_end __convert_from_newlines

	arm_func_start __prep_buffer
__prep_buffer: ; 0x020212A4
	ldr r2, [r0, #0x18]
	ldr r1, [r0, #0x2c]
	ldr r12, [r0, #0x1c]
	ldr r3, [r0, #0x20]
	and r1, r2, r1
	sub r1, r3, r1
	str r12, [r0, #0x24]
	str r1, [r0, #0x28]
	str r2, [r0, #0x34]
	bx lr
	arm_func_end __prep_buffer

	arm_func_start __flush_buffer
__flush_buffer: ; 0x020212CC
	stmfd sp!, {r3, r4, r5, lr}
	mov r5, r0
	ldr r2, [r5, #0x24]
	ldr r0, [r5, #0x1c]
	mov r4, r1
	subs r2, r2, r0
	beq _02021340
	ldr r1, [r5, #4]
	str r2, [r5, #0x28]
	mov r1, r1, lsl #0x13
	movs r1, r1, lsr #0x1f
	bne _02021304
	add r1, r5, #0x28
	bl __convert_from_newlines
_02021304:
	ldr r0, [r5]
	ldr r1, [r5, #0x1c]
	ldr r3, [r5, #0x48]
	ldr r12, [r5, #0x40]
	add r2, r5, #0x28
	blx r12
	cmp r4, #0
	ldrne r1, [r5, #0x28]
	strne r1, [r4]
	cmp r0, #0
	ldmnefd sp!, {r3, r4, r5, pc}
	ldr r1, [r5, #0x18]
	ldr r0, [r5, #0x28]
	add r0, r1, r0
	str r0, [r5, #0x18]
_02021340:
	mov r0, r5
	bl __prep_buffer
	mov r0, #0
	ldmfd sp!, {r3, r4, r5, pc}
	arm_func_end __flush_buffer

	arm_func_start __fwrite
__fwrite: ; 0x02021350
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, lr}
	sub sp, sp, #8
	mov r9, r3
	mov r10, r0
	str r1, [sp]
	mov r1, #0
	mov r0, r9
	mov r5, r2
	mov r4, r1
	bl fwide
	cmp r0, #0
	bne _0202138C
	mov r0, r9
	mvn r1, #0
	bl fwide
_0202138C:
	ldr r0, [sp]
	muls r5, r0, r5
	beq _020213B4
	ldrb r0, [r9, #0xd]
	cmp r0, #0
	bne _020213B4
	ldr r1, [r9, #4]
	mov r0, r1, lsl #0x16
	movs r0, r0, lsr #0x1d
	bne _020213C0
_020213B4:
	add sp, sp, #8
	mov r0, #0
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_020213C0:
	mov r0, r1, lsl #0x13
	movs r0, r0, lsr #0x1f
	movne r0, r1, lsl #0x19
	movne r0, r0, lsr #0x1e
	cmpne r0, #2
	ldr r1, [r9, #8]
	cmpne r0, #1
	mov r8, #1
	mov r0, r1, lsl #0x1d
	movne r8, #0
	movs r0, r0, lsr #0x1d
	bne _02021418
	ldr r0, [r9, #4]
	mov r0, r0, lsl #0x1b
	mov r0, r0, lsr #0x1d
	tst r0, #2
	beq _02021418
	bic r0, r1, #7
	orr r1, r0, #1
	mov r0, r9
	str r1, [r9, #8]
	bl __prep_buffer
_02021418:
	ldr r0, [r9, #8]
	mov r0, r0, lsl #0x1d
	mov r0, r0, lsr #0x1d
	cmp r0, #1
	movne r1, #1
	movne r0, #0
	addne sp, sp, #8
	strneb r1, [r9, #0xd]
	strne r0, [r9, #0x28]
	ldmnefd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
	cmp r5, #0
	mov r6, #0
	beq _02021568
	ldr r0, [r9, #0x1c]
	ldr r2, [r9, #0x24]
	cmp r2, r0
	bne _02021464
	cmp r8, #0
	beq _02021568
_02021464:
	ldr r1, [r9, #0x20]
	sub r0, r2, r0
	sub r0, r1, r0
	str r0, [r9, #0x28]
	mov r11, #0
_02021478:
	ldr r2, [r9, #0x28]
	mov r7, r4
	str r2, [sp, #4]
	cmp r2, r5
	strhi r5, [sp, #4]
	ldr r0, [r9, #4]
	movhi r2, r5
	mov r0, r0, lsl #0x19
	mov r0, r0, lsr #0x1e
	cmp r0, #1
	bne _020214C8
	cmp r2, #0
	beq _020214C8
	mov r0, r10
	mov r1, #0xa
	bl __memrchr
	movs r7, r0
	addne r0, r7, #1
	subne r2, r0, r10
	strne r2, [sp, #4]
_020214C8:
	ldr r2, [sp, #4]
	cmp r2, #0
	beq _02021508
	ldr r0, [r9, #0x24]
	mov r1, r10
	bl memcpy
	ldr r0, [sp, #4]
	ldr r1, [r9, #0x24]
	ldr r2, [r9, #0x28]
	add r1, r1, r0
	str r1, [r9, #0x24]
	ldr r1, [sp, #4]
	add r10, r10, r0
	sub r1, r2, r1
	str r1, [r9, #0x28]
	sub r5, r5, r0
_02021508:
	ldr r0, [r9, #0x28]
	cmp r0, #0
	beq _0202152C
	cmp r7, #0
	bne _0202152C
	ldr r0, [r9, #4]
	mov r0, r0, lsl #0x19
	movs r0, r0, lsr #0x1e
	bne _02021550
_0202152C:
	mov r0, r9
	mov r1, r11
	bl __flush_buffer
	cmp r0, #0
	movne r0, #1
	movne r5, r11
	strneb r0, [r9, #0xd]
	strne r11, [r9, #0x28]
	bne _02021568
_02021550:
	ldr r0, [sp, #4]
	cmp r5, #0
	add r6, r6, r0
	beq _02021568
	cmp r8, #0
	bne _02021478
_02021568:
	cmp r5, #0
	beq _020215C8
	cmp r8, #0
	bne _020215C8
	ldr r7, [r9, #0x1c]
	ldr r8, [r9, #0x20]
	add r2, r10, r5
	add r1, sp, #4
	mov r0, r9
	str r10, [r9, #0x1c]
	str r5, [r9, #0x20]
	str r2, [r9, #0x24]
	bl __flush_buffer
	cmp r0, #0
	movne r0, #1
	strne r4, [r9, #0x28]
	strneb r0, [r9, #0xd]
	ldreq r0, [sp, #4]
	addeq r6, r6, r0
	mov r0, r9
	str r7, [r9, #0x1c]
	str r8, [r9, #0x20]
	bl __prep_buffer
	str r4, [r9, #0x28]
_020215C8:
	ldr r0, [r9, #4]
	ldr r1, [sp]
	mov r0, r0, lsl #0x19
	mov r0, r0, lsr #0x1e
	cmp r0, #2
	mov r0, r6
	strne r4, [r9, #0x28]
	bl _u32_div_f
	add sp, sp, #8
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
	arm_func_end __fwrite

	arm_func_start fflush
fflush: ; 0x020215F0
	stmfd sp!, {r3, r4, r5, lr}
	movs r4, r0
	bne _02021604
	bl __flush_all
	ldmfd sp!, {r3, r4, r5, pc}
_02021604:
	ldrb r0, [r4, #0xd]
	cmp r0, #0
	bne _02021620
	ldr r0, [r4, #4]
	mov r1, r0, lsl #0x16
	movs r1, r1, lsr #0x1d
	bne _02021628
_02021620:
	mvn r0, #0
	ldmfd sp!, {r3, r4, r5, pc}
_02021628:
	mov r0, r0, lsl #0x1b
	mov r0, r0, lsr #0x1d
	cmp r0, #1
	moveq r0, #0
	ldmeqfd sp!, {r3, r4, r5, pc}
	ldr r0, [r4, #8]
	mov r1, r0, lsl #0x1d
	mov r1, r1, lsr #0x1d
	cmp r1, #3
	bichs r0, r0, #7
	orrhs r0, r0, #2
	strhs r0, [r4, #8]
	ldr r0, [r4, #8]
	mov r0, r0, lsl #0x1d
	mov r0, r0, lsr #0x1d
	cmp r0, #2
	moveq r0, #0
	streq r0, [r4, #0x28]
	ldr r0, [r4, #8]
	mov r1, r0, lsl #0x1d
	mov r1, r1, lsr #0x1d
	cmp r1, #1
	bicne r0, r0, #7
	strne r0, [r4, #8]
	movne r0, #0
	ldmnefd sp!, {r3, r4, r5, pc}
	mov r5, #0
	mov r0, r4
	mov r1, r5
	bl __flush_buffer
	cmp r0, #0
	movne r0, #1
	strneb r0, [r4, #0xd]
	strne r5, [r4, #0x28]
	subne r0, r0, #2
	ldmnefd sp!, {r3, r4, r5, pc}
	ldr r1, [r4, #8]
	mov r0, r5
	bic r1, r1, #7
	str r1, [r4, #8]
	str r5, [r4, #0x18]
	str r5, [r4, #0x28]
	ldmfd sp!, {r3, r4, r5, pc}
	arm_func_end fflush

	arm_func_start __msl_generic_count_bits64
__msl_generic_count_bits64: ; 0x020216D4
	mov r3, r0, lsr #1
	ldr r2, _0202175C ; =0x55555555
	orr r3, r3, r1, lsl #31
	and r3, r3, r2
	subs r12, r0, r3
	and r2, r2, r1, lsr #1
	ldr r0, _02021760 ; =0x33333333
	sbc r3, r1, r2
	mov r1, r12, lsr #2
	orr r1, r1, r3, lsl #30
	and r2, r12, r0
	and r1, r1, r0
	adds r2, r2, r1
	and r1, r3, r0
	and r0, r0, r3, lsr #2
	adc r1, r1, r0
	mov r0, r2, lsr #4
	orr r0, r0, r1, lsl #28
	adds r2, r2, r0
	ldr r0, _02021764 ; =0x0F0F0F0F
	adc r1, r1, r1, lsr #4
	and r3, r2, r0
	and r2, r1, r0
	mov r0, r3, lsr #8
	orr r0, r0, r2, lsl #24
	adds r1, r3, r0
	adc r2, r2, r2, lsr #8
	mov r0, r1, lsr #0x10
	orr r0, r0, r2, lsl #16
	adds r1, r1, r0
	adc r0, r2, r2, lsr #16
	adds r0, r1, r0
	and r0, r0, #0xff
	bx lr
_0202175C: .word 0x55555555
_02021760: .word 0x33333333
_02021764: .word 0x0F0F0F0F
	arm_func_end __msl_generic_count_bits64

	arm_func_start __signbitd
__signbitd: ; 0x02021768
	stmfd sp!, {r0, r1, r2, r3}
	ldr r0, [sp, #4]
	tst r0, #0x80000000
	movne r0, #1
	moveq r0, #0
	add sp, sp, #0x10
	bx lr
	arm_func_end __signbitd

	arm_func_start __fpclassifyd
__fpclassifyd: ; 0x02021784
	stmfd sp!, {r0, r1, r2, r3}
	ldr r2, [sp, #4]
	ldr r0, _020217EC ; =0x7FF00000
	ands r1, r2, r0
	beq _020217C0
	cmp r1, r0
	bne _020217E0
	ldr r0, _020217F0 ; =0x000FFFFF
	tst r2, r0
	ldreq r0, [sp]
	add sp, sp, #0x10
	cmpeq r0, #0
	movne r0, #1
	moveq r0, #2
	bx lr
_020217C0:
	ldr r0, _020217F0 ; =0x000FFFFF
	tst r2, r0
	ldreq r0, [sp]
	add sp, sp, #0x10
	cmpeq r0, #0
	movne r0, #5
	moveq r0, #3
	bx lr
_020217E0:
	mov r0, #4
	add sp, sp, #0x10
	bx lr
_020217EC: .word 0x7FF00000
_020217F0: .word 0x000FFFFF
	arm_func_end __fpclassifyd

	arm_func_start __mbtowc_noconv
__mbtowc_noconv: ; 0x020217F4
	cmp r1, #0
	moveq r0, #0
	bxeq lr
	cmp r2, #0
	mvneq r0, #0
	bxeq lr
	cmp r0, #0
	ldrneb r2, [r1]
	strneh r2, [r0]
	ldrb r0, [r1]
	cmp r0, #0
	moveq r0, #0
	movne r0, #1
	bx lr
	arm_func_end __mbtowc_noconv

	arm_func_start __wctomb_noconv
__wctomb_noconv: ; 0x0202182C
	cmp r0, #0
	moveq r0, #0
	strneb r1, [r0]
	movne r0, #1
	bx lr
	arm_func_end __wctomb_noconv

	arm_func_start wctomb
wctomb: ; 0x02021840
	stmfd sp!, {r3, lr}
	ldr r2, _02021858 ; =_current_locale
	ldr r2, [r2, #8]
	ldr r2, [r2, #4]
	blx r2
	ldmfd sp!, {r3, pc}
_02021858: .word _current_locale
	arm_func_end wctomb

	arm_func_start wcstombs
wcstombs: ; 0x0202185C
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, lr}
	movs r4, r0
	mov r9, r1
	cmpne r9, #0
	mov r8, r2
	mov r7, #0
	moveq r0, #0
	ldmeqfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
	add r6, sp, #0
_02021880:
	ldrh r1, [r9]
	cmp r1, #0
	moveq r0, #0
	streqb r0, [r4, r7]
	beq _020218CC
	mov r0, r6
	add r9, r9, #2
	bl wctomb
	mov r5, r0
	add r0, r7, r5
	cmp r0, r8
	bhi _020218CC
	mov r1, r6
	mov r2, r5
	add r0, r4, r7
	bl strncpy
	add r7, r7, r5
	cmp r7, r8
	bls _02021880
_020218CC:
	mov r0, r7
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
	arm_func_end wcstombs

	arm_func_start memcpy
memcpy: ; 0x020218D4
	mov r12, r0
	cmp r2, #0
	bxeq lr
_020218E0:
	ldrb r3, [r1], #1
	subs r2, r2, #1
	strb r3, [r12], #1
	bne _020218E0
	bx lr
	arm_func_end memcpy

	arm_func_start memmove
memmove: ; 0x020218F4
	cmp r1, r0
	blo _0202191C
	mov r12, r0
	cmp r2, #0
	bxeq lr
_02021908:
	ldrb r3, [r1], #1
	subs r2, r2, #1
	strb r3, [r12], #1
	bne _02021908
	bx lr
_0202191C:
	cmp r2, #0
	add r3, r1, r2
	add r12, r0, r2
	bxeq lr
_0202192C:
	ldrb r1, [r3, #-1]!
	subs r2, r2, #1
	strb r1, [r12, #-1]!
	bne _0202192C
	bx lr
	arm_func_end memmove

	arm_func_start memset
memset: ; 0x02021940
	stmfd sp!, {r4, lr}
	mov r4, r0
	bl __fill_mem
	mov r0, r4
	ldmfd sp!, {r4, pc}
	arm_func_end memset

	arm_func_start memchr
memchr: ; 0x02021954
	cmp r2, #0
	and r3, r1, #0xff
	beq _02021978
_02021960:
	ldrb r1, [r0], #1
	cmp r1, r3
	subeq r0, r0, #1
	bxeq lr
	subs r2, r2, #1
	bne _02021960
_02021978:
	mov r0, #0
	bx lr
	arm_func_end memchr

	arm_func_start __memrchr
__memrchr: ; 0x02021980
	cmp r2, #0
	and r3, r1, #0xff
	add r0, r0, r2
	beq _020219A4
_02021990:
	ldrb r1, [r0, #-1]!
	cmp r1, r3
	bxeq lr
	subs r2, r2, #1
	bne _02021990
_020219A4:
	mov r0, #0
	bx lr
	arm_func_end __memrchr

	arm_func_start memcmp
memcmp: ; 0x020219AC
	cmp r2, #0
	beq _020219E4
_020219B4:
	ldrb r12, [r0], #1
	ldrb r3, [r1], #1
	cmp r12, r3
	beq _020219DC
	ldrb r2, [r0, #-1]
	ldrb r0, [r1, #-1]
	cmp r2, r0
	mvnlo r0, #0
	movhs r0, #1
	bx lr
_020219DC:
	subs r2, r2, #1
	bne _020219B4
_020219E4:
	mov r0, #0
	bx lr
	arm_func_end memcmp

	arm_func_start __fill_mem
__fill_mem: ; 0x020219EC
	cmp r2, #0x20
	and r3, r1, #0xff
	blo _02021A7C
	rsb r1, r0, #0
	ands r12, r1, #3
	beq _02021A18
	sub r2, r2, r12
	and r1, r3, #0xff
_02021A0C:
	strb r1, [r0], #1
	subs r12, r12, #1
	bne _02021A0C
_02021A18:
	cmp r3, #0
	movne r1, r3, lsl #0x10
	orrne r1, r1, r3, lsl #24
	orrne r1, r1, r3, lsl #8
	orrne r3, r3, r1
	movs r1, r2, lsr #5
	beq _02021A60
_02021A34:
	str r3, [r0]
	str r3, [r0, #4]
	str r3, [r0, #8]
	str r3, [r0, #0xc]
	str r3, [r0, #0x10]
	str r3, [r0, #0x14]
	str r3, [r0, #0x18]
	str r3, [r0, #0x1c]
	add r0, r0, #0x20
	subs r1, r1, #1
	bne _02021A34
_02021A60:
	and r1, r2, #0x1f
	movs r1, r1, lsr #2
	beq _02021A78
_02021A6C:
	str r3, [r0], #4
	subs r1, r1, #1
	bne _02021A6C
_02021A78:
	and r2, r2, #3
_02021A7C:
	cmp r2, #0
	bxeq lr
	and r1, r3, #0xff
_02021A88:
	strb r1, [r0], #1
	subs r2, r2, #1
	bne _02021A88
	bx lr
	arm_func_end __fill_mem

	arm_func_start parse_format
parse_format: ; 0x02021A98
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	sub sp, sp, #0x10
	ldrb lr, [r0, #1]
	mov r5, #0
	mov r6, #1
	mov r4, r2
	strb r6, [sp]
	strb r5, [sp, #1]
	strb r5, [sp, #2]
	strb r5, [sp, #3]
	strb r5, [sp, #4]
	str r5, [sp, #8]
	str r5, [sp, #0xc]
	cmp lr, #0x25
	add r12, r0, #1
	bne _02021AF4
	add r0, sp, #0
	strb lr, [sp, #5]
	ldmia r0, {r0, r1, r2, r3}
	stmia r4, {r0, r1, r2, r3}
	add sp, sp, #0x10
	add r0, r12, #1
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_02021AF4:
	mov r0, #2
	mov r3, r0
_02021AFC:
	mov r7, r6
	cmp lr, #0x2b
	bgt _02021B2C
	bge _02021B54
	cmp lr, #0x23
	bgt _02021B84
	cmp lr, #0x20
	blt _02021B84
	beq _02021B5C
	cmp lr, #0x23
	beq _02021B6C
	b _02021B84
_02021B2C:
	cmp lr, #0x30
	bgt _02021B84
	cmp lr, #0x2d
	blt _02021B84
	beq _02021B4C
	cmp lr, #0x30
	beq _02021B74
	b _02021B84
_02021B4C:
	strb r5, [sp]
	b _02021B88
_02021B54:
	strb r6, [sp, #1]
	b _02021B88
_02021B5C:
	ldrb r2, [sp, #1]
	cmp r2, #1
	strneb r3, [sp, #1]
	b _02021B88
_02021B6C:
	strb r6, [sp, #3]
	b _02021B88
_02021B74:
	ldrb r2, [sp]
	cmp r2, #0
	strneb r0, [sp]
	b _02021B88
_02021B84:
	mov r7, r5
_02021B88:
	cmp r7, #0
	ldrneb lr, [r12, #1]!
	bne _02021AFC
	cmp lr, #0x2a
	mov r0, #0
	mov r3, #0xff
	bne _02021BD0
	ldr r2, [r1]
	ldrb lr, [r12, #1]!
	add r2, r2, #4
	str r2, [r1]
	ldr r2, [r2, #-4]
	cmp r2, #0
	str r2, [sp, #8]
	rsblt r2, r2, #0
	strltb r0, [sp]
	strlt r2, [sp, #8]
	b _02021C0C
_02021BD0:
	ldr r6, _02021F9C ; =__ctype_mapC
	mov r2, #0xa
	b _02021BF0
_02021BDC:
	ldr r5, [sp, #8]
	sub r7, lr, #0x30
	mla r7, r5, r2, r7
	ldrb lr, [r12, #1]!
	str r7, [sp, #8]
_02021BF0:
	cmp lr, #0x80
	movhs r5, r0
	movlo r5, lr, lsl #1
	ldrloh r5, [r6, r5]
	andlo r5, r5, #8
	cmp r5, #0
	bne _02021BDC
_02021C0C:
	ldr r2, [sp, #8]
	ldr r0, _02021FA0 ; =0x000001FD
	cmp r2, r0
	mov r2, #1
	mov r0, #0
	ble _02021C40
	add r0, sp, #0
	strb r3, [sp, #5]
	ldmia r0, {r0, r1, r2, r3}
	stmia r4, {r0, r1, r2, r3}
	add sp, sp, #0x10
	add r0, r12, #1
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_02021C40:
	cmp lr, #0x2e
	bne _02021CB8
	ldrb lr, [r12, #1]!
	strb r2, [sp, #2]
	cmp lr, #0x2a
	bne _02021C7C
	ldr r5, [r1]
	ldrb lr, [r12, #1]!
	add r5, r5, #4
	str r5, [r1]
	ldr r1, [r5, #-4]
	cmp r1, #0
	str r1, [sp, #0xc]
	strltb r0, [sp, #2]
	b _02021CB8
_02021C7C:
	ldr r6, _02021F9C ; =__ctype_mapC
	mov r1, #0xa
	b _02021C9C
_02021C88:
	ldr r5, [sp, #0xc]
	sub lr, lr, #0x30
	mla r7, r5, r1, lr
	ldrb lr, [r12, #1]!
	str r7, [sp, #0xc]
_02021C9C:
	cmp lr, #0x80
	movhs r5, r0
	movlo r5, lr, lsl #1
	ldrloh r5, [r6, r5]
	andlo r5, r5, #8
	cmp r5, #0
	bne _02021C88
_02021CB8:
	cmp lr, #0x6c
	mov r0, #1
	bgt _02021CF0
	cmp lr, #0x68
	blt _02021CE4
	beq _02021D0C
	cmp lr, #0x6a
	beq _02021D50
	cmp lr, #0x6c
	beq _02021D24
	b _02021D68
_02021CE4:
	cmp lr, #0x4c
	beq _02021D44
	b _02021D68
_02021CF0:
	cmp lr, #0x74
	bgt _02021D00
	beq _02021D58
	b _02021D68
_02021D00:
	cmp lr, #0x7a
	beq _02021D60
	b _02021D68
_02021D0C:
	ldrb r1, [r12, #1]
	mov r5, #2
	strb r5, [sp, #4]
	cmp r1, #0x68
	streqb r0, [sp, #4]
	b _02021D3C
_02021D24:
	ldrb r1, [r12, #1]
	mov r5, #3
	strb r5, [sp, #4]
	cmp r1, #0x6c
	moveq r1, #4
	streqb r1, [sp, #4]
_02021D3C:
	ldreqb lr, [r12, #1]!
	b _02021D6C
_02021D44:
	mov r1, #9
_02021D48:
	strb r1, [sp, #4]
	b _02021D6C
_02021D50:
	mov r1, #6
	b _02021D48
_02021D58:
	mov r1, #8
	b _02021D48
_02021D60:
	mov r1, #7
	b _02021D48
_02021D68:
	mov r0, #0
_02021D6C:
	cmp r0, #0
	ldrneb lr, [r12, #1]!
	strb lr, [sp, #5]
	cmp lr, #0x61
	bgt _02021DC0
	bge _02021E88
	cmp lr, #0x47
	bgt _02021DB4
	subs r0, lr, #0x41
	addpl pc, pc, r0, lsl #2
	b _02021F80
_02021D98: ; jump table
	b _02021E88 ; case 0
	b _02021F80 ; case 1
	b _02021F80 ; case 2
	b _02021F80 ; case 3
	b _02021ECC ; case 4
	b _02021E64 ; case 5
	b _02021EC0 ; case 6
_02021DB4:
	cmp lr, #0x58
	beq _02021E34
	b _02021F80
_02021DC0:
	cmp lr, #0x63
	bgt _02021DD0
	beq _02021F24
	b _02021F80
_02021DD0:
	sub r0, lr, #0x64
	cmp r0, #0x14
	addls pc, pc, r0, lsl #2
	b _02021F80
_02021DE0: ; jump table
	b _02021E34 ; case 0
	b _02021ECC ; case 1
	b _02021E64 ; case 2
	b _02021EC0 ; case 3
	b _02021F80 ; case 4
	b _02021E34 ; case 5
	b _02021F80 ; case 6
	b _02021F80 ; case 7
	b _02021F80 ; case 8
	b _02021F80 ; case 9
	b _02021F70 ; case 10
	b _02021E34 ; case 11
	b _02021F04 ; case 12
	b _02021F80 ; case 13
	b _02021F80 ; case 14
	b _02021F50 ; case 15
	b _02021F80 ; case 16
	b _02021E34 ; case 17
	b _02021F80 ; case 18
	b _02021F80 ; case 19
	b _02021E34 ; case 20
_02021E34:
	ldrb r0, [sp, #4]
	cmp r0, #9
	streqb r3, [sp, #5]
	beq _02021F84
	ldrb r0, [sp, #2]
	cmp r0, #0
	streq r2, [sp, #0xc]
	beq _02021F84
	ldrb r0, [sp]
	cmp r0, #2
	streqb r2, [sp]
	b _02021F84
_02021E64:
	ldrb r0, [sp, #4]
	cmp r0, #2
	cmpne r0, #6
	cmpne r0, #7
	cmpne r0, #8
	cmpne r0, #4
	streqb r3, [sp, #5]
	beq _02021F84
	b _02021EF0
_02021E88:
	ldrb r0, [sp, #2]
	cmp r0, #0
	moveq r0, #0xd
	streq r0, [sp, #0xc]
	ldrb r0, [sp, #4]
	cmp r0, #2
	cmpne r0, #6
	cmpne r0, #7
	cmpne r0, #8
	cmpne r0, #4
	beq _02021EBC
	cmp r0, #1
	bne _02021F84
_02021EBC:
	b _02021F80
_02021EC0:
	ldr r0, [sp, #0xc]
	cmp r0, #0
	streq r2, [sp, #0xc]
_02021ECC:
	ldrb r0, [sp, #4]
	cmp r0, #2
	cmpne r0, #1
	cmpne r0, #6
	cmpne r0, #7
	cmpne r0, #8
	cmpne r0, #4
	streqb r3, [sp, #5]
	beq _02021F84
_02021EF0:
	ldrb r0, [sp, #2]
	cmp r0, #0
	moveq r0, #6
	streq r0, [sp, #0xc]
	b _02021F84
_02021F04:
	mov r3, #0x78
	mov r1, #3
	mov r0, #8
	strb r3, [sp, #5]
	strb r2, [sp, #3]
	strb r1, [sp, #4]
	str r0, [sp, #0xc]
	b _02021F84
_02021F24:
	ldrb r1, [sp, #4]
	cmp r1, #3
	moveq r0, #5
	streqb r0, [sp, #4]
	beq _02021F84
	ldrb r0, [sp, #2]
	cmp r0, #0
	bne _02021F4C
	cmp r1, #0
	beq _02021F84
_02021F4C:
	b _02021F80
_02021F50:
	ldrb r0, [sp, #4]
	cmp r0, #3
	moveq r0, #5
	streqb r0, [sp, #4]
	beq _02021F84
	cmp r0, #0
	strneb r3, [sp, #5]
	b _02021F84
_02021F70:
	ldrb r0, [sp, #4]
	cmp r0, #9
	streqb r3, [sp, #5]
	b _02021F84
_02021F80:
	strb r3, [sp, #5]
_02021F84:
	add r0, sp, #0
	ldmia r0, {r0, r1, r2, r3}
	stmia r4, {r0, r1, r2, r3}
	add r0, r12, #1
	add sp, sp, #0x10
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_02021F9C: .word __ctype_mapC
_02021FA0: .word 0x000001FD
	arm_func_end parse_format

	arm_func_start long2str
long2str: ; 0x02021FA4
	stmfd sp!, {r0, r1, r2, r3}
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, lr}
	sub sp, sp, #0x10
	movs r10, r0
	mov r0, #0
	mov r5, r1
	str r0, [sp, #0xc]
	ldr r7, [sp, #0x4c]
	mov r6, r0
	strb r0, [r5, #-1]!
	ldrb r0, [sp, #0x43]
	str r1, [sp]
	ldrb r8, [sp, #0x45]
	str r0, [sp, #4]
	ldr r0, [sp, #0x48]
	ldrb r11, [sp, #0x41]
	str r0, [sp, #8]
	cmpeq r7, #0
	bne _02022018
	ldr r0, [sp, #4]
	cmp r0, #0
	beq _02022004
	cmp r8, #0x6f
	beq _02022018
_02022004:
	add sp, sp, #0x10
	mov r0, r5
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, lr}
	add sp, sp, #0x10
	bx lr
_02022018:
	cmp r8, #0x69
	bgt _02022040
	bge _02022074
	cmp r8, #0x58
	bgt _02022034
	beq _020220A4
	b _020220AC
_02022034:
	cmp r8, #0x64
	beq _02022074
	b _020220AC
_02022040:
	cmp r8, #0x6f
	bgt _02022054
	moveq r4, #8
	moveq r11, #0
	b _020220AC
_02022054:
	cmp r8, #0x78
	bgt _020220AC
	cmp r8, #0x75
	blt _020220AC
	beq _0202209C
	cmp r8, #0x78
	beq _020220A4
	b _020220AC
_02022074:
	cmp r10, #0
	mov r4, #0xa
	bge _020220AC
	mov r0, r10, asr #0x1f
	cmp r0, #0x80000000
	mov r0, #1
	cmpeq r10, #0
	rsbne r10, r10, #0
	str r0, [sp, #0xc]
	b _020220AC
_0202209C:
	mov r4, #0xa
	b _020220A8
_020220A4:
	mov r4, #0x10
_020220A8:
	mov r11, #0
_020220AC:
	mov r0, r10
	mov r1, r4
	bl _u32_div_f
	mov r9, r1
	mov r0, r10
	mov r1, r4
	bl _u32_div_f
	cmp r9, #0xa
	mov r10, r0
	addlt r9, r9, #0x30
	blt _020220E4
	cmp r8, #0x78
	addeq r9, r9, #0x57
	addne r9, r9, #0x37
_020220E4:
	cmp r10, #0
	strb r9, [r5, #-1]!
	add r6, r6, #1
	bne _020220AC
	cmp r4, #8
	bne _02022118
	ldr r0, [sp, #4]
	cmp r0, #0
	ldrneb r0, [r5]
	cmpne r0, #0x30
	movne r0, #0x30
	strneb r0, [r5, #-1]!
	addne r6, r6, #1
_02022118:
	ldrb r0, [sp, #0x40]
	cmp r0, #2
	bne _0202214C
	ldr r0, [sp, #0xc]
	ldr r7, [sp, #8]
	cmp r0, #0
	cmpeq r11, #0
	subne r7, r7, #1
	cmp r4, #0x10
	bne _0202214C
	ldr r0, [sp, #4]
	cmp r0, #0
	subne r7, r7, #2
_0202214C:
	ldr r0, [sp]
	sub r1, r0, r5
	ldr r0, _020221F0 ; =0x000001FD
	add r1, r7, r1
	cmp r1, r0
	addgt sp, sp, #0x10
	movgt r0, #0
	ldmgtfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, lr}
	addgt sp, sp, #0x10
	bxgt lr
	cmp r6, r7
	bge _02022190
	mov r0, #0x30
_02022180:
	add r6, r6, #1
	cmp r6, r7
	strb r0, [r5, #-1]!
	blt _02022180
_02022190:
	cmp r4, #0x10
	bne _020221AC
	ldr r0, [sp, #4]
	cmp r0, #0
	movne r0, #0x30
	strneb r8, [r5, #-1]
	strneb r0, [r5, #-2]!
_020221AC:
	ldr r0, [sp, #0xc]
	cmp r0, #0
	movne r0, #0x2d
	strneb r0, [r5, #-1]!
	bne _020221DC
	cmp r11, #1
	moveq r0, #0x2b
	streqb r0, [r5, #-1]!
	beq _020221DC
	cmp r11, #2
	moveq r0, #0x20
	streqb r0, [r5, #-1]!
_020221DC:
	mov r0, r5
	add sp, sp, #0x10
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, lr}
	add sp, sp, #0x10
	bx lr
_020221F0: .word 0x000001FD
	arm_func_end long2str

	arm_func_start longlong2str
longlong2str: ; 0x020221F4
	stmfd sp!, {r0, r1, r2, r3}
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, lr}
	sub sp, sp, #0x18
	mov r9, r1
	mov r1, #0
	mov r10, r0
	mov r7, r2
	mov r0, r1
	strb r0, [r7, #-1]!
	ldr r0, [sp, #0x58]
	cmp r9, #0
	str r0, [sp, #0x10]
	ldrb r0, [sp, #0x4f]
	cmpeq r10, #0
	str r2, [sp]
	str r0, [sp, #4]
	ldr r0, [sp, #0x54]
	str r1, [sp, #0x14]
	str r0, [sp, #8]
	ldrb r0, [sp, #0x4d]
	mov r8, r1
	ldrb r11, [sp, #0x51]
	str r0, [sp, #0xc]
	ldreq r0, [sp, #0x10]
	cmpeq r0, #0
	bne _02022284
	ldr r0, [sp, #4]
	cmp r0, #0
	beq _02022270
	cmp r11, #0x6f
	beq _02022284
_02022270:
	add sp, sp, #0x18
	mov r0, r7
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, lr}
	add sp, sp, #0x10
	bx lr
_02022284:
	cmp r11, #0x69
	bgt _020222AC
	bge _020222E4
	cmp r11, #0x58
	bgt _020222A0
	beq _02022328
	b _02022334
_020222A0:
	cmp r11, #0x64
	beq _020222E4
	b _02022334
_020222AC:
	cmp r11, #0x6f
	bgt _020222C4
	moveq r5, #0
	streq r5, [sp, #0xc]
	moveq r6, #8
	b _02022334
_020222C4:
	cmp r11, #0x78
	bgt _02022334
	cmp r11, #0x75
	blt _02022334
	beq _02022318
	cmp r11, #0x78
	beq _02022328
	b _02022334
_020222E4:
	subs r0, r10, #0
	sbcs r0, r9, #0
	mov r6, #0xa
	mov r5, #0
	bge _02022334
	cmp r9, #0x80000000
	cmpeq r10, r5
	beq _0202230C
	rsbs r10, r10, #0
	rsc r9, r9, #0
_0202230C:
	mov r0, #1
	str r0, [sp, #0x14]
	b _02022334
_02022318:
	mov r5, #0
	str r5, [sp, #0xc]
	mov r6, #0xa
	b _02022334
_02022328:
	mov r5, #0
	str r5, [sp, #0xc]
	mov r6, #0x10
_02022334:
	mov r0, r10
	mov r1, r9
	mov r2, r6
	mov r3, r5
	bl _ull_mod
	mov r4, r0
	mov r0, r10
	mov r1, r9
	mov r2, r6
	mov r3, r5
	bl _ll_udiv
	mov r10, r0
	cmp r4, #0xa
	mov r9, r1
	addlt r0, r4, #0x30
	blt _02022380
	add r0, r4, #0x57
	cmp r11, #0x78
	addne r0, r4, #0x37
_02022380:
	strb r0, [r7, #-1]!
	cmp r9, #0
	cmpeq r10, #0
	add r8, r8, #1
	bne _02022334
	cmp r5, #0
	cmpeq r6, #8
	bne _020223BC
	ldr r0, [sp, #4]
	cmp r0, #0
	ldrneb r0, [r7]
	cmpne r0, #0x30
	movne r0, #0x30
	strneb r0, [r7, #-1]!
	addne r8, r8, #1
_020223BC:
	ldrb r0, [sp, #0x4c]
	cmp r0, #2
	bne _0202240C
	ldr r0, [sp, #8]
	str r0, [sp, #0x10]
	ldr r0, [sp, #0x14]
	cmp r0, #0
	ldreq r0, [sp, #0xc]
	cmpeq r0, #0
	ldrne r0, [sp, #0x10]
	subne r0, r0, #1
	strne r0, [sp, #0x10]
	cmp r5, #0
	cmpeq r6, #0x10
	bne _0202240C
	ldr r0, [sp, #4]
	cmp r0, #0
	ldrne r0, [sp, #0x10]
	subne r0, r0, #2
	strne r0, [sp, #0x10]
_0202240C:
	ldr r0, [sp]
	ldr r1, _020224C4 ; =0x000001FD
	sub r2, r0, r7
	ldr r0, [sp, #0x10]
	add r0, r0, r2
	cmp r0, r1
	addgt sp, sp, #0x18
	movgt r0, #0
	ldmgtfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, lr}
	addgt sp, sp, #0x10
	bxgt lr
	ldr r0, [sp, #0x10]
	cmp r8, r0
	bge _0202245C
	mov r1, #0x30
_02022448:
	ldr r0, [sp, #0x10]
	add r8, r8, #1
	cmp r8, r0
	strb r1, [r7, #-1]!
	blt _02022448
_0202245C:
	cmp r5, #0
	cmpeq r6, #0x10
	bne _0202247C
	ldr r0, [sp, #4]
	cmp r0, #0
	movne r0, #0x30
	strneb r11, [r7, #-1]
	strneb r0, [r7, #-2]!
_0202247C:
	ldr r0, [sp, #0x14]
	cmp r0, #0
	movne r0, #0x2d
	strneb r0, [r7, #-1]!
	bne _020224B0
	ldr r0, [sp, #0xc]
	cmp r0, #1
	moveq r0, #0x2b
	streqb r0, [r7, #-1]!
	beq _020224B0
	cmp r0, #2
	moveq r0, #0x20
	streqb r0, [r7, #-1]!
_020224B0:
	mov r0, r7
	add sp, sp, #0x18
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, lr}
	add sp, sp, #0x10
	bx lr
_020224C4: .word 0x000001FD
	arm_func_end longlong2str

	arm_func_start double2hex
double2hex: ; 0x020224C8
	stmfd sp!, {r0, r1, r2, r3}
	stmfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, lr}
	sub sp, sp, #0x4c
	ldr r6, [sp, #0x88]
	ldr r0, _0202294C ; =0x000001FD
	ldrb r5, [sp, #0x81]
	cmp r6, r0
	ldr r0, [sp, #0x70]
	ldrb r11, [sp, #0x7f]
	str r0, [sp, #8]
	ldr r0, [sp, #0x74]
	ldrb r4, [sp, #0x7d]
	str r0, [sp, #0xc]
	mov r7, #0
	mov r8, r2
	addgt sp, sp, #0x4c
	movgt r0, r7
	ldmgtfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, lr}
	addgt sp, sp, #0x10
	bxgt lr
	ldr r1, [sp, #8]
	mov r9, #0x20
	ldr r2, [sp, #0xc]
	add r0, sp, #0x10
	add r3, sp, #0x14
	strb r7, [sp, #0x10]
	strh r9, [sp, #0x12]
	bl __num2dec
	ldrb r0, [sp, #0x19]
	cmp r0, #0x30
	beq _02022558
	cmp r0, #0x49
	beq _02022560
	cmp r0, #0x4e
	beq _02022664
	b _02022768
_02022558:
	strh r7, [sp, #0x16]
	b _02022768
_02022560:
	ldrb r0, [sp, #0x14]
	cmp r0, #0
	beq _020225F0
	cmp r5, #0x41
	sub r0, r8, #5
	bne _020225B4
	ldr r3, _02022950 ; =0x0208F350
	add sp, sp, #0x4c
	ldrb r2, [r3]
	ldrb r1, [r3, #1]
	strb r2, [r0]
	strb r1, [r0, #1]
	ldrb r2, [r3, #2]
	ldrb r1, [r3, #3]
	strb r2, [r0, #2]
	strb r1, [r0, #3]
	ldrb r1, [r3, #4]
	strb r1, [r0, #4]
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, lr}
	add sp, sp, #0x10
	bx lr
_020225B4:
	ldr r3, _02022954 ; =0x0208F358
	add sp, sp, #0x4c
	ldrb r2, [r3]
	ldrb r1, [r3, #1]
	strb r2, [r0]
	strb r1, [r0, #1]
	ldrb r2, [r3, #2]
	ldrb r1, [r3, #3]
	strb r2, [r0, #2]
	strb r1, [r0, #3]
	ldrb r1, [r3, #4]
	strb r1, [r0, #4]
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, lr}
	add sp, sp, #0x10
	bx lr
_020225F0:
	cmp r5, #0x41
	sub r0, r8, #4
	bne _02022630
	ldr r3, _02022958 ; =0x0208F360
	add sp, sp, #0x4c
	ldrb r2, [r3]
	ldrb r1, [r3, #1]
	strb r2, [r0]
	strb r1, [r0, #1]
	ldrb r2, [r3, #2]
	ldrb r1, [r3, #3]
	strb r2, [r0, #2]
	strb r1, [r0, #3]
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, lr}
	add sp, sp, #0x10
	bx lr
_02022630:
	ldr r3, _0202295C ; =0x0208F364
	add sp, sp, #0x4c
	ldrb r2, [r3]
	ldrb r1, [r3, #1]
	strb r2, [r0]
	strb r1, [r0, #1]
	ldrb r2, [r3, #2]
	ldrb r1, [r3, #3]
	strb r2, [r0, #2]
	strb r1, [r0, #3]
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, lr}
	add sp, sp, #0x10
	bx lr
_02022664:
	ldrb r0, [sp, #0x14]
	cmp r0, #0
	beq _020226F4
	cmp r5, #0x41
	sub r0, r8, #5
	bne _020226B8
	ldr r3, _02022960 ; =0x0208F368
	add sp, sp, #0x4c
	ldrb r2, [r3]
	ldrb r1, [r3, #1]
	strb r2, [r0]
	strb r1, [r0, #1]
	ldrb r2, [r3, #2]
	ldrb r1, [r3, #3]
	strb r2, [r0, #2]
	strb r1, [r0, #3]
	ldrb r1, [r3, #4]
	strb r1, [r0, #4]
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, lr}
	add sp, sp, #0x10
	bx lr
_020226B8:
	ldr r3, _02022964 ; =0x0208F370
	add sp, sp, #0x4c
	ldrb r2, [r3]
	ldrb r1, [r3, #1]
	strb r2, [r0]
	strb r1, [r0, #1]
	ldrb r2, [r3, #2]
	ldrb r1, [r3, #3]
	strb r2, [r0, #2]
	strb r1, [r0, #3]
	ldrb r1, [r3, #4]
	strb r1, [r0, #4]
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, lr}
	add sp, sp, #0x10
	bx lr
_020226F4:
	cmp r5, #0x41
	sub r0, r8, #4
	bne _02022734
	ldr r3, _02022968 ; =0x0208F378
	add sp, sp, #0x4c
	ldrb r2, [r3]
	ldrb r1, [r3, #1]
	strb r2, [r0]
	strb r1, [r0, #1]
	ldrb r2, [r3, #2]
	ldrb r1, [r3, #3]
	strb r2, [r0, #2]
	strb r1, [r0, #3]
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, lr}
	add sp, sp, #0x10
	bx lr
_02022734:
	ldr r3, _0202296C ; =0x0208F37C
	add sp, sp, #0x4c
	ldrb r2, [r3]
	ldrb r1, [r3, #1]
	strb r2, [r0]
	strb r1, [r0, #1]
	ldrb r2, [r3, #2]
	ldrb r1, [r3, #3]
	strb r2, [r0, #2]
	strb r1, [r0, #3]
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, lr}
	add sp, sp, #0x10
	bx lr
_02022768:
	mov r3, #0
	mov r1, #1
	mov r0, #0x64
	add r7, sp, #0x70
	strb r1, [sp, #0x3c]
	strb r1, [sp, #0x3d]
	strb r3, [sp, #0x3e]
	strb r3, [sp, #0x3f]
	strb r3, [sp, #0x40]
	str r3, [sp, #0x44]
	str r1, [sp, #0x48]
	strb r0, [sp, #0x41]
_02022798:
	rsb r1, r3, #7
	ldrb r2, [r7, r3]
	ldrb r0, [r7, r1]
	strb r0, [r7, r3]
	add r3, r3, #1
	strb r2, [r7, r1]
	cmp r3, #4
	blt _02022798
	ldrb r1, [sp, #0x71]
	ldrb r2, [sp, #0x70]
	ldr r0, _02022970 ; =0x000007FF
	mov r1, r1, lsl #0x11
	orr r1, r1, r2, lsl #25
	ands r1, r0, r1, lsr #21
	rsbne r0, r0, #0x400
	addne r9, r1, r0
	add r0, sp, #0x3c
	sub r7, sp, #8
	ldmia r0, {r0, r1, r2, r3}
	stmia r7, {r0, r1, r2, r3}
	moveq r9, #0
	mov r0, r9
	mov r1, r8
	ldmia r7, {r2, r3}
	bl long2str
	cmp r5, #0x61
	sub r7, r0, #1
	moveq r0, #0x70
	movne r0, #0x50
	strb r0, [r7]
	mov r0, r6, lsl #2
	mov r9, r6
	cmp r6, #1
	add r10, r0, #0xb
	add lr, sp, #0x70
	blt _020228B4
	mov r0, #0x30
_0202282C:
	cmp r10, #0x40
	bge _0202289C
	ldrb r1, [lr, r10, asr #3]
	and r2, r10, #7
	rsb r3, r2, #7
	mov r2, r1, asr r3
	sub r1, r10, #4
	and r8, r2, #0xff
	bic r1, r1, #7
	bic r2, r10, #7
	add r12, lr, r10, asr #3
	cmp r2, r1
	ldrneb r1, [r12, #-1]
	movne r1, r1, lsl #8
	movne r1, r1, asr r3
	andne r1, r1, #0xff
	orrne r8, r8, r1
	and r1, r8, #0xf
	cmp r1, #0xa
	addlo r1, r1, #0x30
	andlo r8, r1, #0xff
	blo _020228A0
	cmp r5, #0x61
	addeq r1, r1, #0x57
	andeq r8, r1, #0xff
	addne r1, r1, #0x37
	andne r8, r1, #0xff
	b _020228A0
_0202289C:
	mov r8, r0
_020228A0:
	sub r9, r9, #1
	cmp r9, #1
	strb r8, [r7, #-1]!
	sub r10, r10, #4
	bge _0202282C
_020228B4:
	cmp r6, #0
	cmpeq r11, #0
	movne r0, #0x2e
	strneb r0, [r7, #-1]!
	ldr r0, [sp, #8]
	ldr r1, [sp, #0xc]
	bl fabs
	mov r2, r0
	mov r0, #0
	mov r3, r1
	mov r1, r0
	bl _dneq
	movne r0, #0x31
	moveq r0, #0x30
	strb r0, [r7, #-1]!
	mov r0, #0x78
	cmp r5, #0x61
	movne r0, #0x58
	strb r0, [r7, #-1]!
	mov r0, #0x30
	strb r0, [r7, #-1]!
	ldrb r0, [sp, #0x14]
	cmp r0, #0
	movne r0, #0x2d
	strneb r0, [r7, #-1]!
	bne _02022938
	cmp r4, #1
	moveq r0, #0x2b
	streqb r0, [r7, #-1]!
	beq _02022938
	cmp r4, #2
	moveq r0, #0x20
	streqb r0, [r7, #-1]!
_02022938:
	mov r0, r7
	add sp, sp, #0x4c
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, lr}
	add sp, sp, #0x10
	bx lr
_0202294C: .word 0x000001FD
_02022950: .word unk_0208F350
_02022954: .word unk_0208F358
_02022958: .word unk_0208F360
_0202295C: .word unk_0208F364
_02022960: .word unk_0208F368
_02022964: .word unk_0208F370
_02022968: .word unk_0208F378
_0202296C: .word unk_0208F37C
_02022970: .word 0x000007FF
	arm_func_end double2hex

	arm_func_start round_decimal
round_decimal: ; 0x02022974
	stmfd sp!, {r3, r4, r5, lr}
	cmp r1, #0
	mov r2, #1
	bge _0202299C
_02022984:
	mov r1, #0x30
	mov r3, #0
	strb r2, [r0, #4]
	strb r1, [r0, #5]
	strh r3, [r0, #2]
	ldmfd sp!, {r3, r4, r5, pc}
_0202299C:
	ldrb r4, [r0, #4]
	cmp r1, r4
	ldmgefd sp!, {r3, r4, r5, pc}
	add lr, r0, #5
	add r3, lr, r1
	add r3, r3, #1
	ldrb r12, [r3, #-1]!
	sub r12, r12, #0x30
	and r12, r12, #0xff
	cmp r12, #5
	bne _020229F8
	add r4, lr, r4
_020229CC:
	sub r4, r4, #1
	cmp r4, r3
	bls _020229E4
	ldrb r12, [r4]
	cmp r12, #0x30
	beq _020229CC
_020229E4:
	cmp r4, r3
	ldreqb r12, [r3, #-1]
	andeq r5, r12, #1
	movne r5, #1
	b _02022A00
_020229F8:
	movhi r5, r2
	movls r5, #0
_02022A00:
	cmp r1, #0
	beq _02022A54
	mov r12, #0
_02022A0C:
	ldrb lr, [r3, #-1]!
	sub lr, lr, #0x30
	add lr, lr, r5
	and r4, lr, #0xff
	mov r5, r2
	cmp r4, #9
	movls r5, r12
	cmp r5, #0
	bne _02022A38
	cmp r4, #0
	bne _02022A40
_02022A38:
	sub r1, r1, #1
	b _02022A4C
_02022A40:
	add r12, r4, #0x30
	strb r12, [r3]
	b _02022A54
_02022A4C:
	cmp r1, #0
	bne _02022A0C
_02022A54:
	cmp r5, #0
	beq _02022A78
	ldrsh r3, [r0, #2]
	mov r1, #0x31
	strb r2, [r0, #4]
	add r3, r3, #1
	strb r1, [r0, #5]
	strh r3, [r0, #2]
	ldmfd sp!, {r3, r4, r5, pc}
_02022A78:
	cmp r1, #0
	beq _02022984
	strb r1, [r0, #4]
	ldmfd sp!, {r3, r4, r5, pc}
	arm_func_end round_decimal

	arm_func_start float2str
float2str: ; 0x02022A88
	stmfd sp!, {r0, r1, r2, r3}
	stmfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, lr}
	sub sp, sp, #0x2c
	ldr r7, [sp, #0x68]
	ldr r3, _0202316C ; =0x000001FD
	ldrb r6, [sp, #0x61]
	ldrb r5, [sp, #0x5f]
	ldrb r4, [sp, #0x5d]
	cmp r7, r3
	mov r8, r0
	mov r12, #0
	mov r11, r1
	mov r9, r2
	addgt sp, sp, #0x2c
	movgt r0, r12
	ldmgtfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, lr}
	addgt sp, sp, #0x10
	bxgt lr
	mov r10, #0x20
	add r0, sp, #0
	add r3, sp, #4
	mov r1, r8
	mov r2, r11
	strb r12, [sp]
	strh r10, [sp, #2]
	bl __num2dec
	ldrb r0, [sp, #8]
	add r1, sp, #9
	add r1, r1, r0
	mov r0, #0
	b _02022B1C
_02022B04:
	ldrb r3, [sp, #8]
	ldrsh r2, [sp, #6]
	sub r3, r3, #1
	add r2, r2, #1
	strb r3, [sp, #8]
	strh r2, [sp, #6]
_02022B1C:
	ldrb r2, [sp, #8]
	cmp r2, #1
	bls _02022B34
	ldrb r2, [r1, #-1]!
	cmp r2, #0x30
	beq _02022B04
_02022B34:
	ldrb r1, [sp, #9]
	mov r10, #0x30
	cmp r1, #0x30
	beq _02022B58
	cmp r1, #0x49
	beq _02022B60
	cmp r1, #0x4e
	beq _02022CA0
	b _02022DD4
_02022B58:
	strh r0, [sp, #6]
	b _02022DD4
_02022B60:
	mov r2, #0
	mov r0, r8
	mov r1, r11
	mov r3, r2
	bl _dls
	bhs _02022C14
	cmp r6, #0x80
	movhs r1, #0
	ldrlo r1, _02023170 ; =__ctype_mapC
	movlo r2, r6, lsl #1
	ldrloh r1, [r1, r2]
	sub r0, r9, #5
	andlo r1, r1, #0x200
	cmp r1, #0
	beq _02022BD8
	ldr r3, _02023174 ; =0x0208F350
	add sp, sp, #0x2c
	ldrb r2, [r3]
	ldrb r1, [r3, #1]
	strb r2, [r0]
	strb r1, [r0, #1]
	ldrb r2, [r3, #2]
	ldrb r1, [r3, #3]
	strb r2, [r0, #2]
	strb r1, [r0, #3]
	ldrb r1, [r3, #4]
	strb r1, [r0, #4]
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, lr}
	add sp, sp, #0x10
	bx lr
_02022BD8:
	ldr r3, _02023178 ; =0x0208F358
	add sp, sp, #0x2c
	ldrb r2, [r3]
	ldrb r1, [r3, #1]
	strb r2, [r0]
	strb r1, [r0, #1]
	ldrb r2, [r3, #2]
	ldrb r1, [r3, #3]
	strb r2, [r0, #2]
	strb r1, [r0, #3]
	ldrb r1, [r3, #4]
	strb r1, [r0, #4]
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, lr}
	add sp, sp, #0x10
	bx lr
_02022C14:
	cmp r6, #0x80
	movhs r1, #0
	ldrlo r1, _02023170 ; =__ctype_mapC
	movlo r2, r6, lsl #1
	ldrloh r1, [r1, r2]
	sub r0, r9, #4
	andlo r1, r1, #0x200
	cmp r1, #0
	beq _02022C6C
	ldr r3, _0202317C ; =0x0208F360
	add sp, sp, #0x2c
	ldrb r2, [r3]
	ldrb r1, [r3, #1]
	strb r2, [r0]
	strb r1, [r0, #1]
	ldrb r2, [r3, #2]
	ldrb r1, [r3, #3]
	strb r2, [r0, #2]
	strb r1, [r0, #3]
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, lr}
	add sp, sp, #0x10
	bx lr
_02022C6C:
	ldr r3, _02023180 ; =0x0208F364
	add sp, sp, #0x2c
	ldrb r2, [r3]
	ldrb r1, [r3, #1]
	strb r2, [r0]
	strb r1, [r0, #1]
	ldrb r2, [r3, #2]
	ldrb r1, [r3, #3]
	strb r2, [r0, #2]
	strb r1, [r0, #3]
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, lr}
	add sp, sp, #0x10
	bx lr
_02022CA0:
	ldrb r0, [sp, #4]
	cmp r0, #0
	beq _02022D48
	cmp r6, #0x80
	movhs r1, #0
	ldrlo r1, _02023170 ; =__ctype_mapC
	movlo r2, r6, lsl #1
	ldrloh r1, [r1, r2]
	sub r0, r9, #5
	andlo r1, r1, #0x200
	cmp r1, #0
	beq _02022D0C
	ldr r3, _02023184 ; =0x0208F368
	add sp, sp, #0x2c
	ldrb r2, [r3]
	ldrb r1, [r3, #1]
	strb r2, [r0]
	strb r1, [r0, #1]
	ldrb r2, [r3, #2]
	ldrb r1, [r3, #3]
	strb r2, [r0, #2]
	strb r1, [r0, #3]
	ldrb r1, [r3, #4]
	strb r1, [r0, #4]
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, lr}
	add sp, sp, #0x10
	bx lr
_02022D0C:
	ldr r3, _02023188 ; =0x0208F370
	add sp, sp, #0x2c
	ldrb r2, [r3]
	ldrb r1, [r3, #1]
	strb r2, [r0]
	strb r1, [r0, #1]
	ldrb r2, [r3, #2]
	ldrb r1, [r3, #3]
	strb r2, [r0, #2]
	strb r1, [r0, #3]
	ldrb r1, [r3, #4]
	strb r1, [r0, #4]
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, lr}
	add sp, sp, #0x10
	bx lr
_02022D48:
	cmp r6, #0x80
	movhs r1, #0
	ldrlo r1, _02023170 ; =__ctype_mapC
	movlo r2, r6, lsl #1
	ldrloh r1, [r1, r2]
	sub r0, r9, #4
	andlo r1, r1, #0x200
	cmp r1, #0
	beq _02022DA0
	ldr r3, _0202318C ; =0x0208F378
	add sp, sp, #0x2c
	ldrb r2, [r3]
	ldrb r1, [r3, #1]
	strb r2, [r0]
	strb r1, [r0, #1]
	ldrb r2, [r3, #2]
	ldrb r1, [r3, #3]
	strb r2, [r0, #2]
	strb r1, [r0, #3]
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, lr}
	add sp, sp, #0x10
	bx lr
_02022DA0:
	ldr r3, _02023190 ; =0x0208F37C
	add sp, sp, #0x2c
	ldrb r2, [r3]
	ldrb r1, [r3, #1]
	strb r2, [r0]
	strb r1, [r0, #1]
	ldrb r2, [r3, #2]
	ldrb r1, [r3, #3]
	strb r2, [r0, #2]
	strb r1, [r0, #3]
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, lr}
	add sp, sp, #0x10
	bx lr
_02022DD4:
	ldrb r1, [sp, #8]
	ldrsh r2, [sp, #6]
	sub r8, r9, #1
	sub r1, r1, #1
	mov r1, r1, lsl #0x10
	add r1, r2, r1, asr #16
	strh r1, [sp, #6]
	strb r0, [r8]
	cmp r6, #0x65
	bgt _02022E28
	bge _02022EB0
	cmp r6, #0x47
	bgt _02023158
	cmp r6, #0x45
	blt _02023158
	beq _02022EB0
	cmp r6, #0x46
	beq _02022FEC
	cmp r6, #0x47
	beq _02022E40
	b _02023158
_02022E28:
	cmp r6, #0x66
	bgt _02022E38
	beq _02022FEC
	b _02023158
_02022E38:
	cmp r6, #0x67
	bne _02023158
_02022E40:
	ldrb r0, [sp, #8]
	cmp r0, r7
	ble _02022E58
	add r0, sp, #4
	mov r1, r7
	bl round_decimal
_02022E58:
	ldrsh r0, [sp, #6]
	cmn r0, #4
	blt _02022E6C
	cmp r0, r7
	blt _02022E8C
_02022E6C:
	cmp r5, #0
	ldreqb r0, [sp, #8]
	subne r7, r7, #1
	subeq r7, r0, #1
	cmp r6, #0x67
	moveq r6, #0x65
	movne r6, #0x45
	b _02022EB0
_02022E8C:
	cmp r5, #0
	addne r0, r0, #1
	subne r7, r7, r0
	bne _02022FEC
	ldrb r1, [sp, #8]
	add r0, r0, #1
	subs r7, r1, r0
	movmi r7, #0
	b _02022FEC
_02022EB0:
	ldrb r0, [sp, #8]
	add r1, r7, #1
	cmp r0, r1
	ble _02022EC8
	add r0, sp, #4
	bl round_decimal
_02022EC8:
	ldrsh lr, [sp, #6]
	mov r11, #0x2b
	mov r10, #0
	cmp lr, #0
	rsblt lr, lr, #0
	movlt r11, #0x2d
	ldr r3, _02023194 ; =0x66666667
	mov r0, #0xa
	b _02022F1C
_02022EEC:
	mov r1, lr, lsr #0x1f
	smull r2, r12, r3, lr
	add r12, r1, r12, asr #2
	smull r1, r2, r0, r12
	sub r12, lr, r1
	add r1, r12, #0x30
	strb r1, [r8, #-1]!
	mov r2, lr
	smull r1, lr, r3, r2
	mov r1, r2, lsr #0x1f
	add lr, r1, lr, asr #2
	add r10, r10, #1
_02022F1C:
	cmp lr, #0
	bne _02022EEC
	cmp r10, #2
	blt _02022EEC
	strb r11, [r8, #-1]
	strb r6, [r8, #-2]!
	sub r1, r9, r8
	ldr r0, _0202316C ; =0x000001FD
	add r1, r7, r1
	cmp r1, r0
	mov r0, #0x30
	addgt sp, sp, #0x2c
	movgt r0, #0
	ldmgtfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, lr}
	addgt sp, sp, #0x10
	bxgt lr
	ldrb r2, [sp, #8]
	add r1, r7, #1
	cmp r2, r1
	bge _02022F88
	add r1, r7, #2
	sub r1, r1, r2
	subs r1, r1, #1
	beq _02022F88
_02022F7C:
	strb r0, [r8, #-1]!
	subs r1, r1, #1
	bne _02022F7C
_02022F88:
	ldrb r1, [sp, #8]
	add r0, sp, #9
	add r2, r0, r1
	subs r1, r1, #1
	beq _02022FAC
_02022F9C:
	ldrb r0, [r2, #-1]!
	subs r1, r1, #1
	strb r0, [r8, #-1]!
	bne _02022F9C
_02022FAC:
	cmp r7, #0
	cmpeq r5, #0
	movne r0, #0x2e
	strneb r0, [r8, #-1]!
	ldrb r0, [sp, #9]
	strb r0, [r8, #-1]!
	ldrb r0, [sp, #4]
	cmp r0, #0
	movne r0, #0x2d
	strneb r0, [r8, #-1]!
	bne _02023158
	cmp r4, #1
	moveq r0, #0x2b
	streqb r0, [r8, #-1]!
	beq _02023158
	b _0202314C
_02022FEC:
	ldrsh r3, [sp, #6]
	ldrb r2, [sp, #8]
	sub r0, r2, r3
	subs r1, r0, #1
	movmi r1, #0
	cmp r1, r7
	ble _0202302C
	sub r1, r1, r7
	add r0, sp, #4
	sub r1, r2, r1
	bl round_decimal
	ldrsh r3, [sp, #6]
	ldrb r2, [sp, #8]
	sub r0, r2, r3
	subs r1, r0, #1
	movmi r1, #0
_0202302C:
	adds r0, r3, #1
	movmi r0, #0
	ldr r3, _0202316C ; =0x000001FD
	add r6, r0, r1
	cmp r6, r3
	addgt sp, sp, #0x2c
	movgt r0, #0
	ldmgtfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, lr}
	addgt sp, sp, #0x10
	bxgt lr
	add r3, sp, #9
	sub r6, r7, r1
	add r2, r3, r2
	cmp r6, #0
	mov r3, #0
	ble _0202307C
_0202306C:
	add r3, r3, #1
	cmp r3, r6
	strb r10, [r8, #-1]!
	blt _0202306C
_0202307C:
	mov r3, #0x30
	mov r9, #0
	b _02023094
_02023088:
	ldrb r6, [r2, #-1]!
	add r9, r9, #1
	strb r6, [r8, #-1]!
_02023094:
	cmp r9, r1
	bge _020230A8
	ldrb r6, [sp, #8]
	cmp r9, r6
	blt _02023088
_020230A8:
	cmp r9, r1
	bge _020230C0
_020230B0:
	add r9, r9, #1
	cmp r9, r1
	strb r3, [r8, #-1]!
	blt _020230B0
_020230C0:
	cmp r7, #0
	cmpeq r5, #0
	movne r1, #0x2e
	strneb r1, [r8, #-1]!
	cmp r0, #0
	beq _02023124
	ldrb r1, [sp, #8]
	mov r5, #0
	sub r1, r0, r1
	cmp r1, #0
	ble _02023104
_020230EC:
	strb r3, [r8, #-1]!
	ldrb r1, [sp, #8]
	add r5, r5, #1
	sub r1, r0, r1
	cmp r5, r1
	blt _020230EC
_02023104:
	cmp r5, r0
	bge _02023128
_0202310C:
	ldrb r1, [r2, #-1]!
	add r5, r5, #1
	cmp r5, r0
	strb r1, [r8, #-1]!
	blt _0202310C
	b _02023128
_02023124:
	strb r3, [r8, #-1]!
_02023128:
	ldrb r0, [sp, #4]
	cmp r0, #0
	movne r0, #0x2d
	strneb r0, [r8, #-1]!
	bne _02023158
	cmp r4, #1
	moveq r0, #0x2b
	streqb r0, [r8, #-1]!
	beq _02023158
_0202314C:
	cmp r4, #2
	moveq r0, #0x20
	streqb r0, [r8, #-1]!
_02023158:
	mov r0, r8
	add sp, sp, #0x2c
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, lr}
	add sp, sp, #0x10
	bx lr
_0202316C: .word 0x000001FD
_02023170: .word __ctype_mapC
_02023174: .word unk_0208F350
_02023178: .word unk_0208F358
_0202317C: .word unk_0208F360
_02023180: .word unk_0208F364
_02023184: .word unk_0208F368
_02023188: .word unk_0208F370
_0202318C: .word unk_0208F378
_02023190: .word unk_0208F37C
_02023194: .word 0x66666667
	arm_func_end float2str

	arm_func_start __pformatter
__pformatter: ; 0x02023198
	stmfd sp!, {r0, r1, r2, r3}
	stmfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, lr}
	sub sp, sp, #0x22c
	mov r3, #0x20
	mov r11, r2
	strb r3, [sp, #0x19]
	ldrb r2, [r11]
	mov r9, r0
	ldr r0, [sp, #0x260]
	mov r8, r1
	cmp r2, #0
	str r0, [sp, #0x260]
	mov r4, #0
	beq _02023A28
_020231D0:
	mov r0, r11
	mov r1, #0x25
	bl strchr
	str r0, [sp, #0xc]
	cmp r0, #0
	bne _02023224
	mov r0, r11
	bl strlen
	movs r2, r0
	add r4, r4, r2
	beq _02023A28
	mov r0, r8
	mov r1, r11
	blx r9
	cmp r0, #0
	bne _02023A28
	add sp, sp, #0x22c
	mvn r0, #0
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, lr}
	add sp, sp, #0x10
	bx lr
_02023224:
	subs r2, r0, r11
	add r4, r4, r2
	beq _02023254
	mov r0, r8
	mov r1, r11
	blx r9
	cmp r0, #0
	addeq sp, sp, #0x22c
	mvneq r0, #0
	ldmeqfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, lr}
	addeq sp, sp, #0x10
	bxeq lr
_02023254:
	ldr r0, [sp, #0xc]
	add r1, sp, #0x25c
	add r2, sp, #0x1c
	bl parse_format
	ldrb r1, [sp, #0x21]
	mov r11, r0
	cmp r1, #0x61
	bgt _020232C0
	bge _020235B8
	cmp r1, #0x47
	bgt _020232B4
	subs r0, r1, #0x41
	addpl pc, pc, r0, lsl #2
	b _020232A8
_0202328C: ; jump table
	b _020235B8 ; case 0
	b _02023820 ; case 1
	b _02023820 ; case 2
	b _02023820 ; case 3
	b _02023560 ; case 4
	b _02023560 ; case 5
	b _02023560 ; case 6
_020232A8:
	cmp r1, #0x25
	beq _0202380C
	b _02023820
_020232B4:
	cmp r1, #0x58
	beq _02023454
	b _02023820
_020232C0:
	cmp r1, #0x75
	bgt _02023328
	subs r0, r1, #0x64
	addpl pc, pc, r0, lsl #2
	b _0202331C
_020232D4: ; jump table
	b _02023338 ; case 0
	b _02023560 ; case 1
	b _02023560 ; case 2
	b _02023560 ; case 3
	b _02023820 ; case 4
	b _02023338 ; case 5
	b _02023820 ; case 6
	b _02023820 ; case 7
	b _02023820 ; case 8
	b _02023820 ; case 9
	b _02023744 ; case 10
	b _02023454 ; case 11
	b _02023820 ; case 12
	b _02023820 ; case 13
	b _02023820 ; case 14
	b _02023610 ; case 15
	b _02023820 ; case 16
	b _02023454 ; case 17
_0202331C:
	cmp r1, #0x63
	beq _020237EC
	b _02023820
_02023328:
	cmp r1, #0x78
	bgt _02023820
	beq _02023454
	b _02023820
_02023338:
	ldrb r0, [sp, #0x20]
	cmp r0, #3
	ldreq r1, [sp, #0x25c]
	addeq r1, r1, #4
	streq r1, [sp, #0x25c]
	ldreq r10, [r1, #-4]
	beq _020233C4
	cmp r0, #4
	bne _0202337C
_0202335C:
	ldr r1, [sp, #0x25c]
	add r1, r1, #8
	str r1, [sp, #0x25c]
	ldr r2, [r1, #-8]
	ldr r1, [r1, #-4]
	str r2, [sp, #0x10]
	str r1, [sp, #0x14]
	b _020233C4
_0202337C:
	cmp r0, #6
	bne _02023388
	b _0202335C
_02023388:
	cmp r0, #7
	ldreq r1, [sp, #0x25c]
	addeq r1, r1, #4
	streq r1, [sp, #0x25c]
	ldreq r10, [r1, #-4]
	beq _020233C4
	cmp r0, #8
	ldreq r1, [sp, #0x25c]
	addeq r1, r1, #4
	streq r1, [sp, #0x25c]
	ldreq r10, [r1, #-4]
	ldrne r1, [sp, #0x25c]
	addne r1, r1, #4
	strne r1, [sp, #0x25c]
	ldrne r10, [r1, #-4]
_020233C4:
	cmp r0, #2
	moveq r1, r10, lsl #0x10
	moveq r10, r1, asr #0x10
	cmp r0, #1
	moveq r1, r10, lsl #0x18
	moveq r10, r1, asr #0x18
	cmp r0, #4
	beq _020233EC
	cmp r0, #6
	bne _0202341C
_020233EC:
	add r0, sp, #0x1c
	sub r5, sp, #4
	ldmia r0, {r0, r1, r2, r3}
	stmia r5, {r0, r1, r2, r3}
	ldr r3, [r5]
	ldr r0, [sp, #0x10]
	ldr r1, [sp, #0x14]
	add r2, sp, #0x22c
	bl longlong2str
	movs r7, r0
	beq _02023820
	b _02023444
_0202341C:
	add r0, sp, #0x1c
	sub r5, sp, #8
	ldmia r0, {r0, r1, r2, r3}
	stmia r5, {r0, r1, r2, r3}
	mov r0, r10
	add r1, sp, #0x22c
	ldmia r5, {r2, r3}
	bl long2str
	movs r7, r0
	beq _02023820
_02023444:
	add r0, sp, #0x200
	add r0, r0, #0x2b
	sub r6, r0, r7
	b _0202386C
_02023454:
	ldrb r0, [sp, #0x20]
	cmp r0, #3
	ldreq r1, [sp, #0x25c]
	addeq r1, r1, #4
	streq r1, [sp, #0x25c]
	ldreq r10, [r1, #-4]
	beq _020234E0
	cmp r0, #4
	bne _02023498
_02023478:
	ldr r1, [sp, #0x25c]
	add r1, r1, #8
	str r1, [sp, #0x25c]
	ldr r2, [r1, #-8]
	ldr r1, [r1, #-4]
	str r2, [sp, #0x10]
	str r1, [sp, #0x14]
	b _020234E0
_02023498:
	cmp r0, #6
	bne _020234A4
	b _02023478
_020234A4:
	cmp r0, #7
	ldreq r1, [sp, #0x25c]
	addeq r1, r1, #4
	streq r1, [sp, #0x25c]
	ldreq r10, [r1, #-4]
	beq _020234E0
	cmp r0, #8
	ldreq r1, [sp, #0x25c]
	addeq r1, r1, #4
	streq r1, [sp, #0x25c]
	ldreq r10, [r1, #-4]
	ldrne r1, [sp, #0x25c]
	addne r1, r1, #4
	strne r1, [sp, #0x25c]
	ldrne r10, [r1, #-4]
_020234E0:
	cmp r0, #2
	moveq r1, r10, lsl #0x10
	moveq r10, r1, lsr #0x10
	cmp r0, #1
	andeq r10, r10, #0xff
	cmp r0, #4
	beq _02023504
	cmp r0, #6
	bne _02023534
_02023504:
	add r0, sp, #0x1c
	sub r5, sp, #4
	ldmia r0, {r0, r1, r2, r3}
	stmia r5, {r0, r1, r2, r3}
	ldr r3, [r5]
	ldr r0, [sp, #0x10]
	ldr r1, [sp, #0x14]
	add r2, sp, #0x22c
	bl longlong2str
	movs r7, r0
	beq _02023820
	b _0202355C
_02023534:
	add r0, sp, #0x1c
	sub r5, sp, #8
	ldmia r0, {r0, r1, r2, r3}
	stmia r5, {r0, r1, r2, r3}
	mov r0, r10
	add r1, sp, #0x22c
	ldmia r5, {r2, r3}
	bl long2str
	movs r7, r0
	beq _02023820
_0202355C:
	b _02023444
_02023560:
	ldrb r0, [sp, #0x20]
	sub r5, sp, #4
	cmp r0, #9
	ldreq r0, [sp, #0x25c]
	addeq r0, r0, #8
	streq r0, [sp, #0x25c]
	ldrne r0, [sp, #0x25c]
	addne r0, r0, #8
	strne r0, [sp, #0x25c]
	ldr r6, [r0, #-8]
	ldr r7, [r0, #-4]
	add r0, sp, #0x1c
	ldmia r0, {r0, r1, r2, r3}
	stmia r5, {r0, r1, r2, r3}
	ldr r3, [r5]
	mov r0, r6
	mov r1, r7
	add r2, sp, #0x22c
	bl float2str
	movs r7, r0
	beq _02023820
	b _02023444
_020235B8:
	ldrb r0, [sp, #0x20]
	sub r5, sp, #4
	cmp r0, #9
	ldreq r0, [sp, #0x25c]
	addeq r0, r0, #8
	streq r0, [sp, #0x25c]
	ldrne r0, [sp, #0x25c]
	addne r0, r0, #8
	strne r0, [sp, #0x25c]
	ldr r6, [r0, #-8]
	ldr r7, [r0, #-4]
	add r0, sp, #0x1c
	ldmia r0, {r0, r1, r2, r3}
	stmia r5, {r0, r1, r2, r3}
	ldr r3, [r5]
	mov r0, r6
	mov r1, r7
	add r2, sp, #0x22c
	bl double2hex
	movs r7, r0
	beq _02023820
	b _02023444
_02023610:
	ldrb r0, [sp, #0x20]
	cmp r0, #5
	bne _0202368C
	ldr r0, [sp, #0x260]
	ldr r1, [sp, #0x25c]
	cmp r0, #0
	add r0, r1, #4
	str r0, [sp, #0x25c]
	ldr r1, [r0, #-4]
	beq _02023668
	cmp r1, #0
	bne _02023668
	mov r0, #0
	mvn r4, #0
	mov r1, r0
	mov r2, r4
	bl __msl_runtime_constraint_violation_s
	add sp, sp, #0x22c
	mov r0, r4
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, lr}
	add sp, sp, #0x10
	bx lr
_02023668:
	cmp r1, #0
	add r7, sp, #0x2c
	ldreq r1, _02023A3C ; =0x0208F380
	mov r2, #0x200
	mov r0, r7
	bl wcstombs
	cmp r0, #0
	blt _02023820
	b _0202369C
_0202368C:
	ldr r0, [sp, #0x25c]
	add r0, r0, #4
	str r0, [sp, #0x25c]
	ldr r7, [r0, #-4]
_0202369C:
	ldr r0, [sp, #0x260]
	cmp r0, #0
	beq _020236D8
	cmp r7, #0
	bne _020236D8
	mov r0, #0
	mvn r4, #0
	mov r1, r0
	mov r2, r4
	bl __msl_runtime_constraint_violation_s
	add sp, sp, #0x22c
	mov r0, r4
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, lr}
	add sp, sp, #0x10
	bx lr
_020236D8:
	ldrb r0, [sp, #0x1f]
	cmp r7, #0
	ldreq r7, _02023A40 ; =0x0208F384
	cmp r0, #0
	beq _02023708
	ldrb r0, [sp, #0x1e]
	ldrb r6, [r7], #1
	cmp r0, #0
	ldrne r0, [sp, #0x28]
	cmpne r6, r0
	movgt r6, r0
	b _0202386C
_02023708:
	ldrb r0, [sp, #0x1e]
	cmp r0, #0
	beq _02023734
	ldr r6, [sp, #0x28]
	mov r0, r7
	mov r2, r6
	mov r1, #0
	bl memchr
	cmp r0, #0
	subne r6, r0, r7
	b _0202386C
_02023734:
	mov r0, r7
	bl strlen
	mov r6, r0
	b _0202386C
_02023744:
	ldr r0, [sp, #0x260]
	ldr r1, [sp, #0x25c]
	cmp r0, #0
	add r0, r1, #4
	str r0, [sp, #0x25c]
	ldr r1, [r0, #-4]
	beq _02023788
	mov r0, #0
	mvn r4, #0
	mov r1, r0
	mov r2, r4
	bl __msl_runtime_constraint_violation_s
	add sp, sp, #0x22c
	mov r0, r4
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, lr}
	add sp, sp, #0x10
	bx lr
_02023788:
	ldrb r0, [sp, #0x20]
	cmp r0, #8
	addls pc, pc, r0, lsl #2
	b _02023A1C
_02023798: ; jump table
	b _020237BC ; case 0
	b _02023A1C ; case 1
	b _020237C4 ; case 2
	b _020237CC ; case 3
	b _020237E8 ; case 4
	b _02023A1C ; case 5
	b _020237D0 ; case 6
	b _020237E0 ; case 7
	b _020237E4 ; case 8
_020237BC:
	str r4, [r1]
	b _02023A1C
_020237C4:
	strh r4, [r1]
	b _02023A1C
_020237CC:
	b _020237BC
_020237D0:
	str r4, [r1]
	mov r0, r4, asr #0x1f
	str r0, [r1, #4]
	b _02023A1C
_020237E0:
	b _020237BC
_020237E4:
	b _020237BC
_020237E8:
	b _020237D0
_020237EC:
	ldr r0, [sp, #0x25c]
	add r7, sp, #0x2c
	add r0, r0, #4
	str r0, [sp, #0x25c]
	ldr r0, [r0, #-4]
	mov r6, #1
	strb r0, [sp, #0x2c]
	b _0202386C
_0202380C:
	mov r0, #0x25
	strb r0, [sp, #0x2c]
	add r7, sp, #0x2c
	mov r6, #1
	b _0202386C
_02023820:
	ldr r0, [sp, #0xc]
	bl strlen
	movs r2, r0
	add r4, r4, r2
	beq _02023858
	ldr r1, [sp, #0xc]
	mov r0, r8
	blx r9
	cmp r0, #0
	addeq sp, sp, #0x22c
	mvneq r0, #0
	ldmeqfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, lr}
	addeq sp, sp, #0x10
	bxeq lr
_02023858:
	add sp, sp, #0x22c
	mov r0, r4
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, lr}
	add sp, sp, #0x10
	bx lr
_0202386C:
	ldrb r0, [sp, #0x1c]
	mov r5, r6
	cmp r0, #0
	beq _0202398C
	mov r3, #0x30
	cmp r0, #2
	movne r3, #0x20
	strb r3, [sp, #0x19]
	ldrb r0, [r7]
	cmp r0, #0x2b
	cmpne r0, #0x2d
	beq _020238A4
	cmp r0, #0x20
	bne _020238E0
_020238A4:
	and r0, r3, #0xff
	cmp r0, #0x30
	bne _020238E0
	mov r0, r8
	mov r1, r7
	mov r2, #1
	blx r9
	cmp r0, #0
	addeq sp, sp, #0x22c
	mvneq r0, #0
	ldmeqfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, lr}
	addeq sp, sp, #0x10
	bxeq lr
	add r7, r7, #1
	sub r6, r6, #1
_020238E0:
	ldrb r0, [sp, #0x1c]
	cmp r0, #2
	bne _02023948
	ldrb r0, [sp, #0x21]
	cmp r0, #0x61
	beq _02023900
	cmp r0, #0x41
	bne _02023948
_02023900:
	cmp r6, #2
	addlt sp, sp, #0x22c
	mvnlt r0, #0
	ldmltfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, lr}
	addlt sp, sp, #0x10
	bxlt lr
	mov r0, r8
	mov r1, r7
	mov r2, #2
	blx r9
	cmp r0, #0
	addeq sp, sp, #0x22c
	mvneq r0, #0
	ldmeqfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, lr}
	addeq sp, sp, #0x10
	bxeq lr
	sub r6, r6, #2
	add r7, r7, #2
_02023948:
	ldr r0, [sp, #0x24]
	cmp r5, r0
	bge _0202398C
_02023954:
	mov r0, r8
	add r1, sp, #0x19
	mov r2, #1
	blx r9
	cmp r0, #0
	addeq sp, sp, #0x22c
	mvneq r0, #0
	ldmeqfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, lr}
	addeq sp, sp, #0x10
	bxeq lr
	ldr r0, [sp, #0x24]
	add r5, r5, #1
	cmp r5, r0
	blt _02023954
_0202398C:
	cmp r6, #0
	beq _020239BC
	mov r0, r8
	mov r1, r7
	mov r2, r6
	blx r9
	cmp r0, #0
	addeq sp, sp, #0x22c
	mvneq r0, #0
	ldmeqfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, lr}
	addeq sp, sp, #0x10
	bxeq lr
_020239BC:
	ldrb r0, [sp, #0x1c]
	cmp r0, #0
	bne _02023A18
	ldr r0, [sp, #0x24]
	cmp r5, r0
	bge _02023A18
	mov r6, #0x20
	add r7, sp, #0x18
_020239DC:
	mov r0, r8
	mov r1, r7
	mov r2, #1
	strb r6, [sp, #0x18]
	blx r9
	cmp r0, #0
	addeq sp, sp, #0x22c
	mvneq r0, #0
	ldmeqfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, lr}
	addeq sp, sp, #0x10
	bxeq lr
	ldr r0, [sp, #0x24]
	add r5, r5, #1
	cmp r5, r0
	blt _020239DC
_02023A18:
	add r4, r4, r5
_02023A1C:
	ldrb r0, [r11]
	cmp r0, #0
	bne _020231D0
_02023A28:
	mov r0, r4
	add sp, sp, #0x22c
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, lr}
	add sp, sp, #0x10
	bx lr
_02023A3C: .word unk_0208F380
_02023A40: .word unk_0208F384
	arm_func_end __pformatter

	arm_func_start __FileWrite
__FileWrite: ; 0x02023A44
	stmfd sp!, {r3, r4, r5, lr}
	mov r5, r0
	mov r0, r1
	mov r3, r5
	mov r1, #1
	mov r4, r2
	bl __fwrite
	cmp r4, r0
	movne r5, #0
	mov r0, r5
	ldmfd sp!, {r3, r4, r5, pc}
	arm_func_end __FileWrite

	arm_func_start __StringWrite
__StringWrite: ; 0x02023A70
	stmfd sp!, {r3, r4, r5, lr}
	mov r4, r0
	ldr r3, [r4, #8]
	mov r5, r2
	ldr r2, [r4, #4]
	add r0, r3, r5
	cmp r0, r2
	ldr r0, [r4]
	subhi r5, r2, r3
	mov r2, r5
	add r0, r0, r3
	bl memcpy
	ldr r1, [r4, #8]
	mov r0, #1
	add r1, r1, r5
	str r1, [r4, #8]
	ldmfd sp!, {r3, r4, r5, pc}
	arm_func_end __StringWrite

	arm_func_start printf
printf: ; 0x02023AB4
	stmfd sp!, {r0, r1, r2, r3}
	stmfd sp!, {r3, r4, r5, r6, lr}
	sub sp, sp, #4
	mvn r4, #0
	ldr r0, _02023BC4 ; =0x0208F098
	mov r1, r4
	bl fwide
	cmp r0, #0
	addge sp, sp, #4
	movge r0, r4
	ldmgefd sp!, {r3, r4, r5, r6, lr}
	addge sp, sp, #0x10
	bxge lr
	ldr r6, _02023BC8 ; =0x02099AD0
	mov r0, r6
	bl OS_TryLockMutex
	cmp r0, #0
	bne _02023B20
	ldr r0, _02023BCC ; =OSi_ThreadInfo
	ldr r1, _02023BD0 ; =0x02099A40
	ldr r2, [r0, #4]
	ldr r0, _02023BD4 ; =0x02099A64
	ldr r3, [r2, #0x6c]
	mov r2, #1
	str r3, [r1, #0xc]
	str r2, [r0, #0xc]
	b _02023B6C
_02023B20:
	ldr r4, _02023BCC ; =OSi_ThreadInfo
	ldr r5, _02023BD0 ; =0x02099A40
	ldr r0, [r4, #4]
	ldr r1, [r5, #0xc]
	ldr r0, [r0, #0x6c]
	cmp r1, r0
	ldreq r0, _02023BD4 ; =0x02099A64
	ldreq r1, [r0, #0xc]
	addeq r1, r1, #1
	streq r1, [r0, #0xc]
	beq _02023B6C
	mov r0, r6
	bl OS_LockMutex
	ldr r1, [r4, #4]
	ldr r0, _02023BD4 ; =0x02099A64
	ldr r2, [r1, #0x6c]
	mov r1, #1
	str r2, [r5, #0xc]
	str r1, [r0, #0xc]
_02023B6C:
	mov r1, #0
	str r1, [sp]
	add r0, sp, #0x18
	bic r3, r0, #3
	ldr r2, [sp, #0x18]
	ldr r0, _02023BD8 ; =__FileWrite
	ldr r1, _02023BC4 ; =0x0208F098
	add r3, r3, #4
	bl __pformatter
	ldr r1, _02023BD4 ; =0x02099A64
	mov r4, r0
	ldr r0, [r1, #0xc]
	subs r0, r0, #1
	str r0, [r1, #0xc]
	bne _02023BB0
	ldr r0, _02023BC8 ; =0x02099AD0
	bl OS_UnlockMutex
_02023BB0:
	mov r0, r4
	add sp, sp, #4
	ldmfd sp!, {r3, r4, r5, r6, lr}
	add sp, sp, #0x10
	bx lr
_02023BC4: .word unk_0208F098
_02023BC8: .word unk_02099AD0
_02023BCC: .word OSi_ThreadInfo
_02023BD0: .word unk_02099A40
_02023BD4: .word unk_02099A64
_02023BD8: .word __FileWrite
	arm_func_end printf

	arm_func_start vsnprintf
vsnprintf: ; 0x02023BDC
	stmfd sp!, {r4, r5, r6, lr}
	sub sp, sp, #0x10
	mov r6, r0
	mov r5, r1
	mov r4, #0
	ldr r0, _02023C3C ; =__StringWrite
	add r1, sp, #4
	str r6, [sp, #4]
	str r5, [sp, #8]
	str r4, [sp, #0xc]
	str r4, [sp]
	bl __pformatter
	cmp r6, #0
	addeq sp, sp, #0x10
	ldmeqfd sp!, {r4, r5, r6, pc}
	cmp r0, r5
	addlo sp, sp, #0x10
	strlob r4, [r6, r0]
	ldmlofd sp!, {r4, r5, r6, pc}
	cmp r5, #0
	addne r1, r6, r5
	strneb r4, [r1, #-1]
	add sp, sp, #0x10
	ldmfd sp!, {r4, r5, r6, pc}
_02023C3C: .word __StringWrite
	arm_func_end vsnprintf

	arm_func_start sprintf
sprintf: ; 0x02023C40
	stmfd sp!, {r0, r1, r2, r3}
	stmfd sp!, {r3, lr}
	add r1, sp, #0xc
	bic r1, r1, #3
	add r3, r1, #4
	ldr r2, [sp, #0xc]
	mvn r1, #0
	bl vsnprintf
	ldmfd sp!, {r3, lr}
	add sp, sp, #0x10
	bx lr
	arm_func_end sprintf

	arm_func_start rand
rand: ; 0x02023C6C
	ldr r2, _02023C94 ; =random_next
	ldr r0, _02023C98 ; =0x41C64E6D
	ldr r3, [r2]
	ldr r1, _02023C9C ; =0x00007FFF
	mul r0, r3, r0
	add r0, r0, #0x39
	add r0, r0, #0x3000
	str r0, [r2]
	and r0, r1, r0, lsr #16
	bx lr
_02023C94: .word random_next
_02023C98: .word 0x41C64E6D
_02023C9C: .word 0x00007FFF
	arm_func_end rand

	arm_func_start srand
srand: ; 0x02023CA0
	ldr r1, _02023CAC ; =random_next
	str r0, [r1]
	bx lr
_02023CAC: .word random_next
	arm_func_end srand

	arm_func_start __StringRead
__StringRead: ; 0x02023CB0
	cmp r2, #0
	beq _02023CCC
	cmp r2, #1
	beq _02023CF4
	cmp r2, #2
	beq _02023D18
	b _02023D20
_02023CCC:
	ldr r1, [r0]
	ldrb r2, [r1]
	cmp r2, #0
	moveq r1, #1
	streq r1, [r0, #4]
	subeq r0, r1, #2
	addne r1, r1, #1
	strne r1, [r0]
	movne r0, r2
	bx lr
_02023CF4:
	ldr r2, [r0, #4]
	cmp r2, #0
	ldreq r2, [r0]
	subeq r2, r2, #1
	streq r2, [r0]
	movne r2, #0
	strne r2, [r0, #4]
	mov r0, r1
	bx lr
_02023D18:
	ldr r0, [r0, #4]
	bx lr
_02023D20:
	mov r0, #0
	bx lr
	arm_func_end __StringRead

	arm_func_start __msl_runtime_constraint_violation_s
__msl_runtime_constraint_violation_s: ; 0x02023D28
	stmfd sp!, {r3, lr}
	ldr r3, _02023D4C ; =__msl_constraint_handler
	ldr r3, [r3]
	cmp r3, #0
	beq _02023D44
	blx r3
	ldmfd sp!, {r3, pc}
_02023D44:
	bl ignore_handler_s
	ldmfd sp!, {r3, pc}
_02023D4C: .word __msl_constraint_handler
	arm_func_end __msl_runtime_constraint_violation_s

	arm_func_start ignore_handler_s
ignore_handler_s: ; 0x02023D50
	bx lr
	arm_func_end ignore_handler_s

	arm_func_start raise
raise: ; 0x02023D54
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	mov r5, r0
	cmp r5, #1
	blt _02023D6C
	cmp r5, #7
	ble _02023D74
_02023D6C:
	mvn r0, #0
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_02023D74:
	ldr r7, _02023E68 ; =0x02099B30
	mov r0, r7
	bl OS_TryLockMutex
	cmp r0, #0
	bne _02023DAC
	ldr r0, _02023E6C ; =OSi_ThreadInfo
	ldr r1, _02023E70 ; =0x02099A40
	ldr r2, [r0, #4]
	ldr r0, _02023E74 ; =0x02099A64
	ldr r3, [r2, #0x6c]
	mov r2, #1
	str r3, [r1, #0x1c]
	str r2, [r0, #0x1c]
	b _02023DF8
_02023DAC:
	ldr r4, _02023E6C ; =OSi_ThreadInfo
	ldr r6, _02023E70 ; =0x02099A40
	ldr r0, [r4, #4]
	ldr r1, [r6, #0x1c]
	ldr r0, [r0, #0x6c]
	cmp r1, r0
	ldreq r0, _02023E74 ; =0x02099A64
	ldreq r1, [r0, #0x1c]
	addeq r1, r1, #1
	streq r1, [r0, #0x1c]
	beq _02023DF8
	mov r0, r7
	bl OS_LockMutex
	ldr r1, [r4, #4]
	ldr r0, _02023E74 ; =0x02099A64
	ldr r2, [r1, #0x6c]
	mov r1, #1
	str r2, [r6, #0x1c]
	str r1, [r0, #0x1c]
_02023DF8:
	ldr r1, _02023E78 ; =0x02099E68
	sub r2, r5, #1
	ldr r4, [r1, r2, lsl #2]
	cmp r4, #1
	movne r0, #0
	strne r0, [r1, r2, lsl #2]
	ldr r0, _02023E74 ; =0x02099A64
	ldr r1, [r0, #0x1c]
	subs r1, r1, #1
	str r1, [r0, #0x1c]
	bne _02023E2C
	ldr r0, _02023E68 ; =0x02099B30
	bl OS_UnlockMutex
_02023E2C:
	cmp r4, #1
	beq _02023E40
	cmp r4, #0
	cmpeq r5, #1
	bne _02023E48
_02023E40:
	mov r0, #0
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_02023E48:
	cmp r4, #0
	bne _02023E58
	mov r0, #0
	bl exit
_02023E58:
	mov r0, r5
	blx r4
	mov r0, #0
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_02023E68: .word unk_02099B30
_02023E6C: .word OSi_ThreadInfo
_02023E70: .word unk_02099A40
_02023E74: .word unk_02099A64
_02023E78: .word unk_02099E68
	arm_func_end raise

	arm_func_start strlen
strlen: ; 0x02023E7C
	mvn r2, #0
_02023E80:
	ldrb r1, [r0], #1
	add r2, r2, #1
	cmp r1, #0
	bne _02023E80
	mov r0, r2
	bx lr
	arm_func_end strlen

	arm_func_start strcpy
strcpy: ; 0x02023E98
	stmfd sp!, {r3, r4, r5, lr}
	and r4, r1, #3
	and r3, r0, #3
	mov r2, r0
	cmp r3, r4
	bne _02023F34
	cmp r4, #0
	beq _02023EF0
	ldrb r3, [r1]
	strb r3, [r0]
	tst r3, #0xff
	ldmeqfd sp!, {r3, r4, r5, pc}
	rsbs r4, r4, #3
	beq _02023EE8
_02023ED0:
	ldrb r3, [r1, #1]!
	tst r3, #0xff
	strb r3, [r2, #1]!
	ldmeqfd sp!, {r3, r4, r5, pc}
	subs r4, r4, #1
	bne _02023ED0
_02023EE8:
	add r2, r2, #1
	add r1, r1, #1
_02023EF0:
	ldr r5, [r1]
	ldr r3, _02023F58 ; =0xFEFEFEFF
	mvn r4, r5
	add lr, r5, r3
	ldr r12, _02023F5C ; =0x80808080
	and r4, lr, r4
	tst r4, r12
	bne _02023F34
	sub r2, r2, #4
_02023F14:
	str r5, [r2, #4]!
	ldr r5, [r1, #4]!
	add r4, r5, r3
	mvn lr, r5
	and lr, r4, lr
	tst lr, r12
	beq _02023F14
	add r2, r2, #4
_02023F34:
	ldrb r3, [r1]
	strb r3, [r2]
	tst r3, #0xff
	ldmeqfd sp!, {r3, r4, r5, pc}
_02023F44:
	ldrb r3, [r1, #1]!
	tst r3, #0xff
	strb r3, [r2, #1]!
	bne _02023F44
	ldmfd sp!, {r3, r4, r5, pc}
_02023F58: .word 0xFEFEFEFF
_02023F5C: .word 0x80808080
	arm_func_end strcpy

	arm_func_start strncpy
strncpy: ; 0x02023F60
	stmfd sp!, {r3, lr}
	mov lr, r0
	cmp r2, #0
	ldmeqfd sp!, {r3, pc}
_02023F70:
	ldrb r3, [r1], #1
	mov r12, lr
	strb r3, [lr], #1
	ldrb r3, [r12]
	cmp r3, #0
	bne _02023FA4
	subs r2, r2, #1
	ldmeqfd sp!, {r3, pc}
	mov r1, #0
_02023F94:
	strb r1, [lr], #1
	subs r2, r2, #1
	bne _02023F94
	ldmfd sp!, {r3, pc}
_02023FA4:
	subs r2, r2, #1
	bne _02023F70
	ldmfd sp!, {r3, pc}
	arm_func_end strncpy

	arm_func_start strcat
strcat: ; 0x02023FB0
	mov r3, r0
_02023FB4:
	ldrb r2, [r3], #1
	cmp r2, #0
	bne _02023FB4
	sub r3, r3, #1
_02023FC4:
	ldrb r2, [r1], #1
	mov r12, r3
	strb r2, [r3], #1
	ldrb r2, [r12]
	cmp r2, #0
	bne _02023FC4
	bx lr
	arm_func_end strcat

	arm_func_start strcmp
strcmp: ; 0x02023FE0
	stmfd sp!, {r4, lr}
	ldrb r2, [r0]
	ldrb r3, [r1]
	subs r3, r2, r3
	movne r0, r3
	ldmnefd sp!, {r4, pc}
	and r4, r0, #3
	and r3, r1, #3
	cmp r3, r4
	bne _020240BC
	cmp r4, #0
	beq _02024054
	cmp r2, #0
	moveq r0, #0
	ldmeqfd sp!, {r4, pc}
	rsbs r4, r4, #3
	beq _0202404C
_02024024:
	ldrb r3, [r0, #1]!
	ldrb r2, [r1, #1]!
	subs r2, r3, r2
	movne r0, r2
	ldmnefd sp!, {r4, pc}
	cmp r3, #0
	moveq r0, #0
	ldmeqfd sp!, {r4, pc}
	subs r4, r4, #1
	bne _02024024
_0202404C:
	add r0, r0, #1
	add r1, r1, #1
_02024054:
	ldr r2, [r0]
	ldr r3, _020240EC ; =0xFEFEFEFF
	mvn r4, r2
	add lr, r2, r3
	ldr r12, _020240F0 ; =0x80808080
	and r4, lr, r4
	tst r4, r12
	ldr r4, [r1]
	bne _020240A8
	cmp r2, r4
	bne _0202409C
_02024080:
	ldr r2, [r0, #4]!
	ldr r4, [r1, #4]!
	add lr, r2, r3
	tst lr, r12
	bne _020240A8
	cmp r2, r4
	beq _02024080
_0202409C:
	sub r0, r0, #1
	sub r1, r1, #1
	b _020240BC
_020240A8:
	ldrb r2, [r0]
	ldrb r3, [r1]
	subs r3, r2, r3
	movne r0, r3
	ldmnefd sp!, {r4, pc}
_020240BC:
	cmp r2, #0
	moveq r0, #0
	ldmeqfd sp!, {r4, pc}
_020240C8:
	ldrb r3, [r0, #1]!
	ldrb r2, [r1, #1]!
	subs r2, r3, r2
	movne r0, r2
	ldmnefd sp!, {r4, pc}
	cmp r3, #0
	bne _020240C8
	mov r0, #0
	ldmfd sp!, {r4, pc}
_020240EC: .word 0xFEFEFEFF
_020240F0: .word 0x80808080
	arm_func_end strcmp

	arm_func_start strncmp
strncmp: ; 0x020240F4
	cmp r2, #0
	beq _02024120
_020240FC:
	ldrb r12, [r1], #1
	ldrb r3, [r0], #1
	cmp r3, r12
	subne r0, r3, r12
	bxne lr
	cmp r3, #0
	beq _02024120
	subs r2, r2, #1
	bne _020240FC
_02024120:
	mov r0, #0
	bx lr
	arm_func_end strncmp

	arm_func_start strchr
strchr: ; 0x02024128
	ldrb r2, [r0], #1
	and r1, r1, #0xff
	cmp r2, #0
	beq _02024150
_02024138:
	cmp r2, r1
	subeq r0, r0, #1
	bxeq lr
	ldrb r2, [r0], #1
	cmp r2, #0
	bne _02024138
_02024150:
	cmp r1, #0
	movne r0, #0
	subeq r0, r0, #1
	bx lr
	arm_func_end strchr

	arm_func_start strrchr
strrchr: ; 0x02024160
	ldrb r2, [r0]
	and r1, r1, #0xff
	add r3, r0, #1
	cmp r2, #0
	mov r0, #0
	beq _0202418C
_02024178:
	cmp r2, r1
	subeq r0, r3, #1
	ldrb r2, [r3], #1
	cmp r2, #0
	bne _02024178
_0202418C:
	cmp r0, #0
	moveq r0, #0
	cmpeq r1, #0
	subeq r0, r3, #1
	bx lr
	arm_func_end strrchr

	arm_func_start strstr
strstr: ; 0x020241A0
	stmfd sp!, {r4, lr}
	cmp r1, #0
	ldrneb r2, [r1]
	cmpne r2, #0
	ldmeqfd sp!, {r4, pc}
	ldrb r3, [r0]
	add r4, r0, #1
	cmp r3, #0
	beq _02024204
_020241C4:
	cmp r3, r2
	bne _020241F8
	mov lr, r4
	add r12, r1, #1
_020241D4:
	ldrb r3, [r12], #1
	ldrb r0, [lr], #1
	cmp r0, r3
	bne _020241EC
	cmp r0, #0
	bne _020241D4
_020241EC:
	cmp r3, #0
	subeq r0, r4, #1
	ldmeqfd sp!, {r4, pc}
_020241F8:
	ldrb r3, [r4], #1
	cmp r3, #0
	bne _020241C4
_02024204:
	mov r0, #0
	ldmfd sp!, {r4, pc}
	arm_func_end strstr

	arm_func_start __strtoul
__strtoul: ; 0x0202420C
	stmfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, lr}
	sub sp, sp, #0xc
	ldr r4, [sp, #0x38]
	movs r9, r0
	ldr r0, [sp, #0x34]
	str r4, [sp, #0x38]
	mov r4, #0
	str r0, [sp, #0x34]
	ldr r0, [sp, #0x38]
	str r1, [sp]
	str r4, [r0]
	mov r0, r4
	str r0, [sp, #4]
	ldr r0, [sp, #0x34]
	mov r1, r4
	str r1, [r0]
	ldr r0, [sp, #0x30]
	str r4, [sp, #8]
	mov r8, r2
	mov r7, r3
	mov r5, r4
	mov r10, r4
	str r0, [sp, #0x30]
	mov r4, #1
	bmi _0202428C
	cmp r9, #1
	beq _0202428C
	cmp r9, #0x24
	bgt _0202428C
	ldr r0, [sp]
	cmp r0, #1
	bge _02024294
_0202428C:
	mov r4, #0x40
	b _020242B0
_02024294:
	ldr r1, [sp, #8]
	mov r0, r7
	mov r3, r1
	mov r2, r1
	add r5, r3, #1
	blx r8
	mov r6, r0
_020242B0:
	cmp r9, #0
	beq _020242C8
	mov r1, r9
	mvn r0, #0
	bl _u32_div_f
	str r0, [sp, #4]
_020242C8:
	mvn r11, #0
	b _02024518
_020242D0:
	cmp r4, #8
	bgt _02024308
	cmp r4, #0
	addge pc, pc, r4, lsl #2
	b _02024518
_020242E4: ; jump table
	b _02024518 ; case 0
	b _02024314 ; case 1
	b _020243B0 ; case 2
	b _02024518 ; case 3
	b _020243D8 ; case 4
	b _02024518 ; case 5
	b _02024518 ; case 6
	b _02024518 ; case 7
	b _02024400 ; case 8
_02024308:
	cmp r4, #0x10
	beq _02024400
	b _02024518
_02024314:
	cmp r6, #0x80
	movhs r0, #0
	ldrlo r0, _02024574 ; =__ctype_mapC
	movlo r1, r6, lsl #1
	ldrloh r0, [r0, r1]
	andlo r0, r0, #0x100
	cmp r0, #0
	beq _02024358
	mov r1, #0
	mov r0, r7
	mov r2, r1
	blx r8
	mov r6, r0
	ldr r0, [sp, #8]
	add r0, r0, #1
	str r0, [sp, #8]
	b _02024518
_02024358:
	cmp r6, #0x2b
	bne _0202437C
	mov r1, #0
	mov r0, r7
	mov r2, r1
	add r5, r5, #1
	blx r8
	mov r6, r0
	b _020243A8
_0202437C:
	cmp r6, #0x2d
	bne _020243A8
	mov r1, #0
	mov r0, r7
	mov r2, r1
	add r5, r5, #1
	blx r8
	mov r6, r0
	ldr r0, [sp, #0x34]
	mov r1, #1
	str r1, [r0]
_020243A8:
	mov r4, #2
	b _02024518
_020243B0:
	cmp r9, #0x0
	beq _020243C0
	cmp r9, #0x10
	bne _020243D0
_020243C0:
	cmp r6, #0x30
	bne _020243D0
	mov r4, #0x4
	b _02024500
_020243D0:
	mov r4, #0x8
	b _02024518
_020243D8:
	cmp r6, #0x58
	cmpne r6, #0x78
	bne _020243F0
_020243E4:
	mov r9, #0x10
	mov r4, #0x8
	b _02024500
_020243F0:
	cmp r9, #0x0
	moveq r9, #0x8
	mov r4, #0x10
	b _02024518
_02024400:
	ldr r0, [sp, #4]
	cmp r9, #0
	moveq r9, #0xa
	cmp r0, #0
	bne _02024424
	mov r0, r11
	mov r1, r9
	bl _u32_div_f
	str r0, [sp, #4]
_02024424:
	cmp r6, #0x80
	movhs r0, #0
	ldrlo r0, _02024574 ; =__ctype_mapC
	movlo r1, r6, lsl #1
	ldrloh r0, [r0, r1]
	andlo r0, r0, #8
	cmp r0, #0
	beq _02024464
	sub r6, r6, #0x30
	cmp r6, r9
	blt _020244C8
	cmp r4, #0x10
	moveq r4, #0x20
	movne r4, #0x40
	add r6, r6, #0x30
	b _02024518
_02024464:
	cmp r6, #0x80
	movhs r0, #0
	ldrlo r0, _02024574 ; =__ctype_mapC
	movlo r1, r6, lsl #1
	ldrloh r0, [r0, r1]
	andlo r0, r0, #1
	cmp r0, #0
	beq _020244A0
	cmp r6, #0x80
	movhs r0, r6
	ldrlo r0, _02024578 ; =0x0208BFB8
	ldrlob r0, [r0, r6]
	sub r0, r0, #0x37
	cmp r0, r9
	blt _020244B0
_020244A0:
	cmp r4, #0x10
	moveq r4, #0x20
	movne r4, #0x40
	b _02024518
_020244B0:
	cmp r6, #0
	blt _020244C4
	cmp r6, #0x80
	ldrlt r0, _02024578 ; =0x0208BFB8
	ldrltb r6, [r0, r6]
_020244C4:
	sub r6, r6, #0x37
_020244C8:
	ldr r0, [sp, #4]
	mov r4, #0x10
	cmp r10, r0
	ldrhi r0, [sp, #0x38]
	movhi r1, #1
	strhi r1, [r0]
	mul r0, r10, r9
	mov r10, r0
	sub r0, r11, r0
	cmp r6, r0
	ldrhi r0, [sp, #0x38]
	movhi r1, #1
	strhi r1, [r0]
	add r10, r10, r6
_02024500:
	mov r1, #0
	mov r0, r7
	mov r2, r1
	add r5, r5, #1
	blx r8
	mov r6, r0
_02024518:
	ldr r0, [sp]
	cmp r5, r0
	bgt _02024534
	cmp r6, r11
	beq _02024534
	tst r4, #0x60
	beq _020242D0
_02024534:
	tst r4, #0x34
	ldreq r0, [sp, #0x30]
	moveq r10, #0
	streq r10, [r0]
	ldrne r0, [sp, #8]
	subne r1, r5, #1
	addne r1, r1, r0
	ldrne r0, [sp, #0x30]
	mov r2, #1
	strne r1, [r0]
	mov r0, r7
	mov r1, r6
	blx r8
	mov r0, r10
	add sp, sp, #0xc
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
_02024574: .word __ctype_mapC
_02024578: .word unk_0208BFB8
	arm_func_end __strtoul

	arm_func_start strtol
strtol: ; 0x0202457C
	stmfd sp!, {r3, r4, r5, lr}
	sub sp, sp, #0x20
	mov r5, r0
	mov lr, #0
	mov r0, r2
	mov r4, r1
	add r2, sp, #0x1c
	str r5, [sp, #0xc]
	str lr, [sp, #0x10]
	str r2, [sp]
	add r1, sp, #0x18
	str r1, [sp, #4]
	add r12, sp, #0x14
	ldr r2, _02024638 ; =__StringRead
	add r3, sp, #0xc
	sub r1, lr, #0x80000001
	str r12, [sp, #8]
	bl __strtoul
	cmp r4, #0
	ldrne r1, [sp, #0x1c]
	addne r1, r5, r1
	strne r1, [r4]
	ldr r1, [sp, #0x14]
	cmp r1, #0
	bne _02024604
	ldr r1, [sp, #0x18]
	cmp r1, #0
	bne _020245F4
	cmn r0, #0x80000001
	bhi _02024604
_020245F4:
	cmp r1, #0
	beq _02024628
	cmp r0, #0x80000000
	bls _02024628
_02024604:
	ldr r0, [sp, #0x18]
	ldr r1, _0202463C ; =errno
	mov r2, #0x22
	cmp r0, #0
	movne r0, #0x80000000
	str r2, [r1]
	add sp, sp, #0x20
	mvneq r0, #0x80000000
	ldmfd sp!, {r3, r4, r5, pc}
_02024628:
	cmp r1, #0
	rsbne r0, r0, #0
	add sp, sp, #0x20
	ldmfd sp!, {r3, r4, r5, pc}
_02024638: .word __StringRead
_0202463C: .word errno
	arm_func_end strtol

	arm_func_start atoi
atoi: ; 0x02024640
	ldr r12, _02024650 ; =strtol
	mov r1, #0
	mov r2, #0xa
	bx r12
_02024650: .word strtol
	arm_func_end atoi

	arm_func_start fwide
fwide: ; 0x02024654
	cmp r0, #0
	beq _0202466C
	ldr r3, [r0, #4]
	mov r2, r3, lsl #0x16
	movs r2, r2, lsr #0x1d
	bne _02024674
_0202466C:
	mov r0, #0
	bx lr
_02024674:
	mov r2, r3, lsl #0x14
	movs r2, r2, lsr #0x1e
	beq _02024694
	cmp r2, #1
	beq _020246B8
	cmp r2, #2
	moveq r1, #1
	b _020246BC
_02024694:
	cmp r1, #0
	bicgt r2, r3, #0xc00
	orrgt r2, r2, #0x800
	strgt r2, [r0, #4]
	bgt _020246BC
	biclt r2, r3, #0xc00
	orrlt r2, r2, #0x400
	strlt r2, [r0, #4]
	b _020246BC
_020246B8:
	mvn r1, #0
_020246BC:
	mov r0, r1
	bx lr
	arm_func_end fwide

	arm_func_start wcslen
wcslen: ; 0x020246C4
	mvn r2, #0
_020246C8:
	ldrh r1, [r0], #2
	add r2, r2, #1
	cmp r1, #0
	bne _020246C8
	mov r0, r2
	bx lr
	arm_func_end wcslen

	arm_func_start __must_round
__must_round: ; 0x020246E0
	add r3, r0, #5
	ldrb r2, [r3, r1]
	add r12, r3, r1
	cmp r2, #5
	movhi r0, #1
	bxhi lr
	mvnlo r0, #0
	bxlo lr
	ldrb r2, [r0, #4]
	add r12, r12, #1
	add r3, r3, r2
	cmp r12, r3
	bhs _02024730
_02024714:
	ldrb r2, [r12]
	cmp r2, #0
	movne r0, #1
	bxne lr
	add r12, r12, #1
	cmp r12, r3
	blo _02024714
_02024730:
	sub r1, r1, #1
	add r0, r0, r1
	ldrb r0, [r0, #5]
	tst r0, #1
	movne r0, #1
	mvneq r0, #0
	bx lr
	arm_func_end __must_round

	arm_func_start __dorounddecup
__dorounddecup: ; 0x0202474C
	add r3, r0, #5
	add r1, r3, r1
	sub r12, r1, #1
	mov r1, #0
_0202475C:
	ldrb r2, [r12]
	cmp r2, #9
	addlo r0, r2, #1
	strlob r0, [r12]
	bxlo lr
	cmp r12, r3
	bne _02024790
	mov r1, #1
	strb r1, [r12]
	ldrsh r1, [r0, #2]
	add r1, r1, #1
	strh r1, [r0, #2]
	bx lr
_02024790:
	strb r1, [r12], #-1
	b _0202475C
	bx lr
	arm_func_end __dorounddecup

	arm_func_start __rounddec
__rounddec: ; 0x0202479C
	stmfd sp!, {r3, r4, r5, lr}
	mov r4, r1
	mov r5, r0
	cmp r4, #0
	ldmlefd sp!, {r3, r4, r5, pc}
	ldrb r2, [r5, #4]
	cmp r4, r2
	ldmgefd sp!, {r3, r4, r5, pc}
	bl __must_round
	strb r4, [r5, #4]
	cmp r0, #0
	ldmltfd sp!, {r3, r4, r5, pc}
	mov r0, r5
	mov r1, r4
	bl __dorounddecup
	ldmfd sp!, {r3, r4, r5, pc}
	arm_func_end __rounddec

	arm_func_start __ull2dec
__ull2dec: ; 0x020247DC
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, lr}
	mov r5, r2
	mov r7, r0
	mov r0, #0
	mov r6, r1
	cmp r5, #0
	strb r0, [r7]
	strb r0, [r7, #4]
	cmpeq r6, #0
	beq _02024860
	mov r9, #0xa
	mov r8, r0
_0202480C:
	ldrb r1, [r7, #4]
	mov r0, r6
	mov r2, r9
	add r12, r1, #1
	mov r4, r1
	mov r1, r5
	mov r3, r8
	strb r12, [r7, #4]
	bl _ull_mod
	add r1, r7, r4
	strb r0, [r1, #5]
	mov r0, r6
	mov r1, r5
	mov r2, r9
	mov r3, r8
	bl _ll_udiv
	mov r5, r1
	mov r6, r0
	cmp r5, #0
	cmpeq r6, #0
	bne _0202480C
_02024860:
	ldrb r0, [r7, #4]
	add r2, r7, #5
	add r0, r2, r0
	sub r3, r0, #1
	cmp r2, r3
	bhs _02024890
_02024878:
	ldrb r1, [r2]
	ldrb r0, [r3]
	strb r1, [r3], #-1
	strb r0, [r2], #1
	cmp r2, r3
	blo _02024878
_02024890:
	ldrb r0, [r7, #4]
	sub r0, r0, #1
	strh r0, [r7, #2]
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
	arm_func_end __ull2dec

	arm_func_start __timesdec
__timesdec: ; 0x020248A0
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, lr}
	sub sp, sp, #0x40
	ldrb r6, [r1, #4]
	ldrb r5, [r2, #4]
	mov r4, #0
	add r3, sp, #0
	add r5, r6, r5
	sub r5, r5, #1
	add r3, r3, r5
	add r6, r3, #1
	mov r7, r6
	strb r4, [r0]
	cmp r5, #0
	ble _02024968
	add lr, r1, #5
	add r11, r2, #5
_020248E0:
	ldrb r3, [r2, #4]
	sub r10, r3, #1
	sub r3, r5, r10
	subs r9, r3, #1
	ldrb r3, [r1, #4]
	movmi r9, #0
	submi r10, r5, #1
	add r8, r10, #1
	sub r3, r3, r9
	cmp r8, r3
	movgt r8, r3
	add r10, r11, r10
	add r9, lr, r9
	cmp r8, #0
	ble _02024934
_0202491C:
	ldrb r12, [r9], #1
	ldrb r3, [r10], #-1
	sub r8, r8, #1
	cmp r8, #0
	mla r4, r12, r3, r4
	bgt _0202491C
_02024934:
	ldr r3, _02024A1C ; =0xCCCCCCCD
	sub r5, r5, #1
	umull r8, r9, r4, r3
	mov r9, r9, lsr #3
	cmp r5, #0
	mov r10, #0xa
	umull r8, r9, r10, r9
	sub r9, r4, r8
	strb r9, [r6, #-1]!
	mov r8, r4
	umull r3, r4, r8, r3
	mov r4, r4, lsr #3
	bgt _020248E0
_02024968:
	ldrsh r3, [r1, #2]
	ldrsh r1, [r2, #2]
	cmp r4, #0
	add r1, r3, r1
	strh r1, [r0, #2]
	strneb r4, [r6, #-1]!
	ldrnesh r1, [r0, #2]
	mov r3, #0
	addne r1, r1, #1
	strneh r1, [r0, #2]
	b _020249A4
_02024994:
	ldrb r2, [r6], #1
	add r1, r0, r3
	add r3, r3, #1
	strb r2, [r1, #5]
_020249A4:
	cmp r3, #0x20
	bge _020249B4
	cmp r6, r7
	blo _02024994
_020249B4:
	cmp r6, r7
	addhs sp, sp, #0x40
	strb r3, [r0, #4]
	ldmhsfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
	ldrb r1, [r6]
	cmp r1, #5
	addlo sp, sp, #0x40
	ldmlofd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
	bne _02024A0C
	add r2, r6, #1
	cmp r2, r7
	bhs _020249FC
_020249E4:
	ldrb r1, [r2]
	cmp r1, #0
	bne _02024A0C
	add r2, r2, #1
	cmp r2, r7
	blo _020249E4
_020249FC:
	ldrb r1, [r6, #-1]
	tst r1, #1
	addeq sp, sp, #0x40
	ldmeqfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_02024A0C:
	ldrb r1, [r0, #4]
	bl __dorounddecup
	add sp, sp, #0x40
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_02024A1C: .word 0xCCCCCCCD
	arm_func_end __timesdec

	arm_func_start __str2dec
__str2dec: ; 0x02024A20
	stmfd sp!, {r3, lr}
	mov r12, #0
	strh r2, [r0, #2]
	strb r12, [r0]
	b _02024A48
_02024A34:
	ldrb r3, [r1], #1
	add r2, r0, r12
	add r12, r12, #1
	sub r3, r3, #0x30
	strb r3, [r2, #5]
_02024A48:
	cmp r12, #0x20
	bge _02024A5C
	ldrb r2, [r1]
	cmp r2, #0
	bne _02024A34
_02024A5C:
	ldrb r2, [r1]
	strb r12, [r0, #4]
	cmp r2, #0
	ldmeqfd sp!, {r3, pc}
	cmp r2, #5
	ldmlofd sp!, {r3, pc}
	bhi _02024AB0
	ldrb r2, [r1, #1]
	add r1, r1, #1
	cmp r2, #0
	beq _02024A9C
_02024A88:
	cmp r2, #0x30
	bne _02024AB0
	ldrb r2, [r1, #1]!
	cmp r2, #0
	bne _02024A88
_02024A9C:
	sub r1, r12, #1
	add r1, r0, r1
	ldrb r1, [r1, #5]
	tst r1, #1
	ldmeqfd sp!, {r3, pc}
_02024AB0:
	ldrb r1, [r0, #4]
	bl __dorounddecup
	ldmfd sp!, {r3, pc}
	arm_func_end __str2dec

	arm_func_start __two_exp
__two_exp: ; 0x02024ABC
	stmfd sp!, {r3, r4, r5, r6, lr}
	sub sp, sp, #0x4c
	mov r4, r1
	mvn r2, #0x34
	mov r5, r0
	cmp r4, r2
	bgt _02024AEC
	bge _02024BB8
	sub r0, r2, #0xb
	cmp r4, r0
	beq _02024BA0
	b _02024D48
_02024AEC:
	add r1, r4, #0x20
	cmp r1, #0x28
	addls pc, pc, r1, lsl #2
	b _02024D48
_02024AFC: ; jump table
	b _02024BCC ; case 0
	b _02024D48 ; case 1
	b _02024D48 ; case 2
	b _02024D48 ; case 3
	b _02024D48 ; case 4
	b _02024D48 ; case 5
	b _02024D48 ; case 6
	b _02024D48 ; case 7
	b _02024D48 ; case 8
	b _02024D48 ; case 9
	b _02024D48 ; case 10
	b _02024D48 ; case 11
	b _02024D48 ; case 12
	b _02024D48 ; case 13
	b _02024D48 ; case 14
	b _02024D48 ; case 15
	b _02024BE0 ; case 16
	b _02024D48 ; case 17
	b _02024D48 ; case 18
	b _02024D48 ; case 19
	b _02024D48 ; case 20
	b _02024D48 ; case 21
	b _02024D48 ; case 22
	b _02024D48 ; case 23
	b _02024BF4 ; case 24
	b _02024C08 ; case 25
	b _02024C1C ; case 26
	b _02024C30 ; case 27
	b _02024C44 ; case 28
	b _02024C58 ; case 29
	b _02024C6C ; case 30
	b _02024C80 ; case 31
	b _02024C94 ; case 32
	b _02024CA8 ; case 33
	b _02024CBC ; case 34
	b _02024CD0 ; case 35
	b _02024CE4 ; case 36
	b _02024CF8 ; case 37
	b _02024D0C ; case 38
	b _02024D20 ; case 39
	b _02024D34 ; case 40
_02024BA0:
	ldr r1, _02024DE8 ; =0x0208F38C
	mov r0, r5
	mvn r2, #0x13
	bl __str2dec
	add sp, sp, #0x4c
	ldmfd sp!, {r3, r4, r5, r6, pc}
_02024BB8:
	ldr r1, _02024DEC ; =0x0208F3BC
	add r2, r2, #0x25
	bl __str2dec
	add sp, sp, #0x4c
	ldmfd sp!, {r3, r4, r5, r6, pc}
_02024BCC:
	ldr r1, _02024DF0 ; =0x0208F3E4
	add r2, r2, #0x2b
	bl __str2dec
	add sp, sp, #0x4c
	ldmfd sp!, {r3, r4, r5, r6, pc}
_02024BE0:
	ldr r1, _02024DF4 ; =0x0208F3FC
	add r2, r2, #0x30
	bl __str2dec
	add sp, sp, #0x4c
	ldmfd sp!, {r3, r4, r5, r6, pc}
_02024BF4:
	ldr r1, _02024DF8 ; =0x0208F40C
	add r2, r2, #0x32
	bl __str2dec
	add sp, sp, #0x4c
	ldmfd sp!, {r3, r4, r5, r6, pc}
_02024C08:
	ldr r1, _02024DFC ; =0x0208F414
	add r2, r2, #0x32
	bl __str2dec
	add sp, sp, #0x4c
	ldmfd sp!, {r3, r4, r5, r6, pc}
_02024C1C:
	ldr r1, _02024E00 ; =0x0208F41C
	add r2, r2, #0x33
	bl __str2dec
	add sp, sp, #0x4c
	ldmfd sp!, {r3, r4, r5, r6, pc}
_02024C30:
	ldr r1, _02024E04 ; =0x0208F424
	add r2, r2, #0x33
	bl __str2dec
	add sp, sp, #0x4c
	ldmfd sp!, {r3, r4, r5, r6, pc}
_02024C44:
	ldr r1, _02024E08 ; =0x0208F42C
	add r2, r2, #0x33
	bl __str2dec
	add sp, sp, #0x4c
	ldmfd sp!, {r3, r4, r5, r6, pc}
_02024C58:
	ldr r1, _02024E0C ; =0x0208F430
	add r2, r2, #0x34
	bl __str2dec
	add sp, sp, #0x4c
	ldmfd sp!, {r3, r4, r5, r6, pc}
_02024C6C:
	ldr r1, _02024E10 ; =0x0208F434
	add r2, r2, #0x34
	bl __str2dec
	add sp, sp, #0x4c
	ldmfd sp!, {r3, r4, r5, r6, pc}
_02024C80:
	ldr r1, _02024E14 ; =0x0208F438
	add r2, r2, #0x34
	bl __str2dec
	add sp, sp, #0x4c
	ldmfd sp!, {r3, r4, r5, r6, pc}
_02024C94:
	ldr r1, _02024E18 ; =0x0208F43C
	mov r2, #0
	bl __str2dec
	add sp, sp, #0x4c
	ldmfd sp!, {r3, r4, r5, r6, pc}
_02024CA8:
	ldr r1, _02024E1C ; =0x0208F440
	mov r2, #0
	bl __str2dec
	add sp, sp, #0x4c
	ldmfd sp!, {r3, r4, r5, r6, pc}
_02024CBC:
	ldr r1, _02024E20 ; =0x0208F444
	mov r2, #0
	bl __str2dec
	add sp, sp, #0x4c
	ldmfd sp!, {r3, r4, r5, r6, pc}
_02024CD0:
	ldr r1, _02024E24 ; =0x0208F448
	mov r2, #0
	bl __str2dec
	add sp, sp, #0x4c
	ldmfd sp!, {r3, r4, r5, r6, pc}
_02024CE4:
	ldr r1, _02024E28 ; =0x0208F44C
	mov r2, #1
	bl __str2dec
	add sp, sp, #0x4c
	ldmfd sp!, {r3, r4, r5, r6, pc}
_02024CF8:
	ldr r1, _02024E2C ; =0x0208F450
	mov r2, #1
	bl __str2dec
	add sp, sp, #0x4c
	ldmfd sp!, {r3, r4, r5, r6, pc}
_02024D0C:
	ldr r1, _02024E30 ; =0x0208F454
	mov r2, #1
	bl __str2dec
	add sp, sp, #0x4c
	ldmfd sp!, {r3, r4, r5, r6, pc}
_02024D20:
	ldr r1, _02024E34 ; =0x0208F458
	mov r2, #2
	bl __str2dec
	add sp, sp, #0x4c
	ldmfd sp!, {r3, r4, r5, r6, pc}
_02024D34:
	ldr r1, _02024E38 ; =0x0208F45C
	mov r2, #2
	bl __str2dec
	add sp, sp, #0x4c
	ldmfd sp!, {r3, r4, r5, r6, pc}
_02024D48:
	and r0, r4, #0x80000000
	add r1, r4, r0, lsr #31
	add r6, sp, #0x26
	mov r0, r6
	mov r1, r1, asr #1
	bl __two_exp
	mov r0, r5
	mov r1, r6
	mov r2, r6
	bl __timesdec
	tst r4, #1
	addeq sp, sp, #0x4c
	ldmeqfd sp!, {r3, r4, r5, r6, pc}
	add r3, sp, #0
	mov r12, r5
	mov r2, #9
_02024D88:
	ldrh r1, [r12]
	ldrh r0, [r12, #2]
	add r12, r12, #4
	subs r2, r2, #1
	strh r0, [r3, #2]
	strh r1, [r3], #4
	bne _02024D88
	ldrh r0, [r12]
	cmp r4, #0
	strh r0, [r3]
	add r0, sp, #0x26
	ble _02024DC4
	ldr r1, _02024E1C ; =0x0208F440
	mov r2, #0
	b _02024DCC
_02024DC4:
	ldr r1, _02024E14 ; =0x0208F438
	mvn r2, #0
_02024DCC:
	bl __str2dec
	add r1, sp, #0
	add r2, sp, #0x26
	mov r0, r5
	bl __timesdec
	add sp, sp, #0x4c
	ldmfd sp!, {r3, r4, r5, r6, pc}
_02024DE8: .word unk_0208F38C
_02024DEC: .word unk_0208F3BC
_02024DF0: .word unk_0208F3E4
_02024DF4: .word unk_0208F3FC
_02024DF8: .word unk_0208F40C
_02024DFC: .word unk_0208F414
_02024E00: .word unk_0208F41C
_02024E04: .word unk_0208F424
_02024E08: .word unk_0208F42C
_02024E0C: .word unk_0208F430
_02024E10: .word unk_0208F434
_02024E14: .word unk_0208F438
_02024E18: .word unk_0208F43C
_02024E1C: .word unk_0208F440
_02024E20: .word unk_0208F444
_02024E24: .word unk_0208F448
_02024E28: .word unk_0208F44C
_02024E2C: .word unk_0208F450
_02024E30: .word unk_0208F454
_02024E34: .word unk_0208F458
_02024E38: .word unk_0208F45C
	arm_func_end __two_exp

	arm_func_start __num2dec_internal
__num2dec_internal: ; 0x02024E3C
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, lr}
	sub sp, sp, #0x58
	mov r8, r1
	mov r6, r2
	mov r7, r0
	mov r0, r8
	mov r1, r6
	bl __signbitd
	mov r4, #0
	cmp r0, #0
	mov r5, #1
	moveq r5, #0
	mov r0, r4
	mov r1, r4
	mov r2, r8
	mov r3, r6
	and r5, r5, #0xff
	bl _deq
	bne _02024EA4
	mov r0, #1
	add sp, sp, #0x58
	strb r5, [r7]
	strh r4, [r7, #2]
	strb r0, [r7, #4]
	strb r4, [r7, #5]
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
_02024EA4:
	mov r0, r8
	mov r1, r6
	bl __fpclassifyd
	cmp r0, #2
	bgt _02024EEC
	mov r2, #1
	mov r0, r8
	mov r1, r6
	strb r5, [r7]
	strh r4, [r7, #2]
	strb r2, [r7, #4]
	bl __fpclassifyd
	cmp r0, #1
	moveq r0, #0x4e
	movne r0, #0x49
	add sp, sp, #0x58
	strb r0, [r7, #5]
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
_02024EEC:
	cmp r5, #0
	beq _02024F10
	mov r0, r4
	mov r1, r4
	mov r2, r8
	mov r3, r6
	bl _dsub
	mov r8, r0
	mov r6, r1
_02024F10:
	add r2, sp, #8
	mov r0, r8
	mov r1, r6
	bl frexp
	mov r4, r0
	mov r6, r1
	orr r8, r4, #0
	rsbs r2, r8, #0
	orr r3, r6, #0x100000
	rsc r1, r3, #0
	mov r0, #0
	and r3, r3, r1
	sub r1, r0, #1
	and r8, r8, r2
	mov r2, r1
	adds r0, r8, r1
	adc r1, r3, r2
	str r4, [sp]
	str r6, [sp, #4]
	bl __msl_generic_count_bits64
	ldr r1, [sp, #8]
	rsb r9, r0, #0x35
	add r8, sp, #0xc
	sub r1, r1, r9
	mov r0, r8
	bl __two_exp
	mov r0, r4
	mov r1, r6
	mov r2, r9
	bl ldexp
	bl _ll_ufrom_d
	mov r2, r1
	add r4, sp, #0x32
	mov r1, r0
	mov r0, r4
	bl __ull2dec
	mov r1, r4
	mov r2, r8
	mov r0, r7
	bl __timesdec
	strb r5, [r7]
	add sp, sp, #0x58
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
	arm_func_end __num2dec_internal

	arm_func_start __num2dec
__num2dec: ; 0x02024FBC
	stmfd sp!, {r3, r4, r5, lr}
	mov r4, r3
	ldrsh r5, [r0, #2]
	mov r0, r4
	bl __num2dec_internal
	ldrb r0, [r4, #5]
	cmp r0, #9
	ldmhifd sp!, {r3, r4, r5, pc}
	cmp r5, #0x20
	movgt r5, #0x20
	mov r0, r4
	mov r1, r5
	bl __rounddec
	ldrb r0, [r4, #4]
	cmp r0, r5
	bge _02025020
	mov r1, #0
_02025000:
	ldrb r2, [r4, #4]
	add r0, r4, r0
	add r2, r2, #1
	strb r2, [r4, #4]
	strb r1, [r0, #5]
	ldrb r0, [r4, #4]
	cmp r0, r5
	blt _02025000
_02025020:
	ldrsh r2, [r4, #2]
	sub r0, r0, #1
	ldrb r1, [r4, #4]
	mov r0, r0, lsl #0x10
	sub r0, r2, r0, asr #16
	strh r0, [r4, #2]
	cmp r1, #0
	mov r2, #0
	ldmlefd sp!, {r3, r4, r5, pc}
_02025044:
	add r1, r4, r2
	ldrb r0, [r1, #5]
	add r2, r2, #1
	add r0, r0, #0x30
	strb r0, [r1, #5]
	ldrb r0, [r4, #4]
	cmp r2, r0
	blt _02025044
	ldmfd sp!, {r3, r4, r5, pc}
	arm_func_end __num2dec

	arm_func_start scalbn
scalbn: ; 0x02025068
	stmfd sp!, {r3, r4, lr}
	sub sp, sp, #4
	mov r4, r2
	add r2, sp, #0
	bl frexp
	ldr r2, [sp]
	add r2, r2, r4
	str r2, [sp]
	bl ldexp
	add sp, sp, #4
	ldmfd sp!, {r3, r4, pc}
	arm_func_end scalbn

	arm_func_start __ieee754_log
__ieee754_log: ; 0x02025094
	stmfd sp!, {r0, r1, r2, r3}
	stmfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, lr}
	sub sp, sp, #0x2c
	ldr r8, [sp, #0x54]
	mov r2, #0
	mov r6, r2
	cmp r8, #0x100000
	ldr r1, [sp, #0x50]
	bge _0202514C
	bic r0, r8, #0x80000000
	orrs r0, r0, r1
	bne _020250E8
	ldr r1, _02025754 ; =0x02099E84
	mov r0, r2
	ldmia r1, {r2, r3}
	ldr r1, _02025758 ; =0xC3500000
	bl _ddiv
	add sp, sp, #0x2c
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, lr}
	add sp, sp, #0x10
	bx lr
_020250E8:
	cmp r8, #0
	bge _0202512C
	ldr r0, [sp, #0x50]
	ldr r1, [sp, #0x54]
	ldr r4, _0202575C ; =errno
	mov r5, #0x21
	mov r2, r0
	mov r3, r1
	str r5, [r4]
	bl _dsub
	ldr r3, _02025754 ; =0x02099E84
	ldmia r3, {r2, r3}
	bl _ddiv
	add sp, sp, #0x2c
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, lr}
	add sp, sp, #0x10
	bx lr
_0202512C:
	ldr r0, [sp, #0x50]
	ldr r1, [sp, #0x54]
	ldr r3, _02025760 ; =0x43500000
	sub r6, r2, #0x36
	bl _dmul
	mov r8, r1
	str r0, [sp, #0x50]
	str r8, [sp, #0x54]
_0202514C:
	ldr r3, _02025764 ; =0x7FF00000
	cmp r8, r3
	blt _0202517C
	ldr r0, [sp, #0x50]
	ldr r1, [sp, #0x54]
	mov r2, r0
	mov r3, r1
	bl _dadd
	add sp, sp, #0x2c
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, lr}
	add sp, sp, #0x10
	bx lr
_0202517C:
	ldr r4, _02025768 ; =0xFFFFFC01
	ldr r0, _0202576C ; =0x00095F64
	add r1, r4, r8, asr #20
	and r8, r8, r4, lsr #12
	add r0, r8, r0
	and r5, r0, #0x100000
	sub r0, r3, #0x40000000
	add r6, r6, r1
	eor r0, r5, r0
	orr r1, r8, r0
	ldr r0, [sp, #0x50]
	mov r2, #0
	sub r3, r3, #0x40000000
	str r1, [sp, #0x54]
	add r6, r6, r5, asr #20
	bl _dsub
	add r2, r8, #2
	and r2, r2, r4, lsr #12
	mov r5, r0
	mov r9, r1
	cmp r2, #3
	bge _02025378
	ldr r4, _02025754 ; =0x02099E84
	ldmia r4, {r2, r3}
	bl _deq
	bne _02025264
	cmp r6, #0
	addeq sp, sp, #0x2c
	ldmeqia r4, {r0, r1}
	ldmeqfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, lr}
	addeq sp, sp, #0x10
	bxeq lr
	mov r0, r6
	bl _dflt
	mov r5, r0
	mov r6, r1
	mov r0, #0
	ldr r1, _02025770 ; =0x3FE62E42
	mov r2, r5
	mov r3, r6
	sub r0, r0, #0x1200000
	bl _dmul
	mov r4, r0
	mov r7, r1
	ldr r0, _02025774 ; =0x35793C76
	ldr r1, _02025778 ; =0x3DEA39EF
	mov r2, r5
	mov r3, r6
	bl _dmul
	mov r2, r0
	mov r3, r1
	mov r0, r4
	mov r1, r7
	bl _dadd
	add sp, sp, #0x2c
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, lr}
	add sp, sp, #0x10
	bx lr
_02025264:
	ldr r0, _0202577C ; =0x55555555
	mov r2, r5
	mov r3, r9
	sub r1, r0, #0x15800000
	bl _dmul
	mov r2, r0
	ldr r7, _02025780 ; =0x3FE00000
	mov r3, r1
	mov r0, #0
	mov r1, r7
	bl _dsub
	mov r4, r0
	mov r8, r1
	mov r0, r5
	mov r1, r9
	mov r2, r5
	mov r3, r9
	bl _dmul
	mov r2, r0
	mov r3, r1
	mov r0, r4
	mov r1, r8
	bl _dmul
	mov r4, r0
	mov r8, r1
	cmp r6, #0
	bne _020252F4
	mov r0, r5
	mov r1, r9
	mov r2, r4
	mov r3, r8
	bl _dsub
	add sp, sp, #0x2c
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, lr}
	add sp, sp, #0x10
	bx lr
_020252F4:
	mov r0, r6
	bl _dflt
	mov r6, r0
	mov r10, r1
	ldr r1, _02025770 ; =0x3FE62E42
	mov r2, r6
	mov r3, r10
	sub r0, r7, #0x41000000
	bl _dmul
	mov r2, r6
	mov r6, r0
	mov r7, r1
	ldr r0, _02025774 ; =0x35793C76
	ldr r1, _02025778 ; =0x3DEA39EF
	mov r3, r10
	bl _dmul
	mov r2, r0
	mov r3, r1
	mov r0, r4
	mov r1, r8
	bl _dsub
	mov r2, r5
	mov r3, r9
	bl _dsub
	mov r2, r0
	mov r3, r1
	mov r0, r6
	mov r1, r7
	bl _dsub
	add sp, sp, #0x2c
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, lr}
	add sp, sp, #0x10
	bx lr
_02025378:
	mov r0, #0
	mov r1, #0x40000000
	mov r2, r5
	mov r3, r9
	bl _dadd
	mov r2, r0
	mov r3, r1
	mov r0, r5
	mov r1, r9
	bl _ddiv
	str r0, [sp, #0x18]
	str r1, [sp, #0x14]
	mov r0, r6
	bl _dflt
	str r0, [sp, #0x1c]
	mov r11, r1
	ldr r0, [sp, #0x18]
	ldr r1, [sp, #0x14]
	mov r2, r0
	mov r3, r1
	bl _dmul
	ldr r3, _02025784 ; =0xFFF9EB86
	mov r2, r0
	add r7, r8, r3
	mov r3, r1
	str r0, [sp, #0x20]
	str r1, [sp, #0xc]
	bl _dmul
	mov r4, r0
	mov r10, r1
	ldr r0, _02025788 ; =0xD078C69F
	ldr r1, _0202578C ; =0x3FC39A09
	mov r2, r4
	mov r3, r10
	bl _dmul
	mov r2, r0
	mov r3, r1
	ldr r0, _02025790 ; =0x1D8E78AF
	ldr r1, _02025794 ; =0x3FCC71C5
	bl _dadd
	mov r2, r0
	mov r3, r1
	mov r0, r4
	mov r1, r10
	bl _dmul
	mov r2, r0
	mov r3, r1
	ldr r0, _02025798 ; =0x9997FA04
	ldr r1, _0202579C ; =0x3FD99999
	bl _dadd
	mov r2, r0
	mov r3, r1
	mov r0, r4
	mov r1, r10
	bl _dmul
	str r0, [sp, #0x24]
	str r1, [sp, #4]
	ldr r0, _020257A0 ; =0xDF3E5244
	ldr r1, _020257A4 ; =0x3FC2F112
	mov r2, r4
	mov r3, r10
	bl _dmul
	mov r2, r0
	mov r3, r1
	ldr r0, _020257A8 ; =0x96CB03DE
	ldr r1, _020257AC ; =0x3FC74664
	bl _dadd
	mov r2, r0
	mov r3, r1
	mov r0, r4
	mov r1, r10
	bl _dmul
	mov r2, r0
	mov r3, r1
	ldr r0, _020257B0 ; =0x94229359
	ldr r1, _020257B4 ; =0x3FD24924
	bl _dadd
	mov r2, r0
	mov r3, r1
	mov r0, r4
	mov r1, r10
	bl _dmul
	mov r2, r0
	mov r3, r1
	ldr r0, _020257B8 ; =0x55555593
	ldr r1, _020257BC ; =0x3FE55555
	bl _dadd
	mov r2, r0
	mov r3, r1
	ldr r0, [sp, #0x20]
	ldr r1, [sp, #0xc]
	bl _dmul
	ldr r4, _020257C0 ; =0x0006B851
	ldr r2, [sp, #0x24]
	sub r4, r4, r8
	ldr r3, [sp, #4]
	orr r7, r7, r4
	bl _dadd
	cmp r7, #0
	mov r4, r0
	mov r7, r1
	ble _02025658
	mov r1, #0x40000000
	mov r0, #0
	mov r2, r5
	mov r3, r9
	sub r1, r1, #0x200000
	bl _dmul
	mov r2, r5
	mov r3, r9
	bl _dmul
	cmp r6, #0
	mov r6, r0
	mov r8, r1
	bne _0202559C
	mov r2, r4
	mov r3, r7
	bl _dadd
	mov r2, r0
	mov r3, r1
	ldr r0, [sp, #0x18]
	ldr r1, [sp, #0x14]
	bl _dmul
	mov r2, r0
	mov r3, r1
	mov r0, r6
	mov r1, r8
	bl _dsub
	mov r2, r0
	mov r3, r1
	mov r0, r5
	mov r1, r9
	bl _dsub
	add sp, sp, #0x2c
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, lr}
	add sp, sp, #0x10
	bx lr
_0202559C:
	mov r0, #0
	ldr r1, _02025770 ; =0x3FE62E42
	ldr r2, [sp, #0x1c]
	mov r3, r11
	sub r0, r0, #0x1200000
	bl _dmul
	mov r3, r7
	str r0, [sp, #0x28]
	mov r7, r1
	mov r2, r4
	mov r0, r6
	mov r1, r8
	bl _dadd
	mov r2, r0
	mov r3, r1
	ldr r0, [sp, #0x18]
	ldr r1, [sp, #0x14]
	bl _dmul
	mov r4, r0
	mov r10, r1
	ldr r2, [sp, #0x1c]
	ldr r0, _02025774 ; =0x35793C76
	ldr r1, _02025778 ; =0x3DEA39EF
	mov r3, r11
	bl _dmul
	mov r2, r0
	mov r3, r1
	mov r0, r4
	mov r1, r10
	bl _dadd
	mov r2, r0
	mov r3, r1
	mov r0, r6
	mov r1, r8
	bl _dsub
	mov r2, r5
	mov r3, r9
	bl _dsub
	mov r2, r0
	mov r3, r1
	ldr r0, [sp, #0x28]
	mov r1, r7
	bl _dsub
	add sp, sp, #0x2c
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, lr}
	add sp, sp, #0x10
	bx lr
_02025658:
	cmp r6, #0
	bne _020256AC
	mov r0, r5
	mov r1, r9
	mov r2, r4
	mov r3, r7
	bl _dsub
	mov r2, r0
	mov r3, r1
	ldr r0, [sp, #0x18]
	ldr r1, [sp, #0x14]
	bl _dmul
	mov r2, r0
	mov r3, r1
	mov r0, r5
	mov r1, r9
	bl _dsub
	add sp, sp, #0x2c
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, lr}
	add sp, sp, #0x10
	bx lr
_020256AC:
	mov r0, #0
	ldr r1, _02025770 ; =0x3FE62E42
	ldr r2, [sp, #0x1c]
	mov r3, r11
	sub r0, r0, #0x1200000
	bl _dmul
	mov r6, r0
	mov r8, r1
	mov r2, r4
	mov r3, r7
	mov r0, r5
	mov r1, r9
	bl _dsub
	mov r2, r0
	mov r3, r1
	ldr r0, [sp, #0x18]
	ldr r1, [sp, #0x14]
	bl _dmul
	mov r4, r0
	mov r7, r1
	ldr r2, [sp, #0x1c]
	ldr r0, _02025774 ; =0x35793C76
	ldr r1, _02025778 ; =0x3DEA39EF
	mov r3, r11
	bl _dmul
	mov r2, r0
	mov r3, r1
	mov r0, r4
	mov r1, r7
	bl _dsub
	mov r2, r5
	mov r3, r9
	bl _dsub
	mov r2, r0
	mov r3, r1
	mov r0, r6
	mov r1, r8
	bl _dsub
	add sp, sp, #0x2c
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, lr}
	add sp, sp, #0x10
	bx lr
_02025754: .word unk_02099E84
_02025758: .word 0xC3500000
_0202575C: .word errno
_02025760: .word 0x43500000
_02025764: .word 0x7FF00000
_02025768: .word 0xFFFFFC01
_0202576C: .word 0x00095F64
_02025770: .word 0x3FE62E42
_02025774: .word 0x35793C76
_02025778: .word 0x3DEA39EF
_0202577C: .word 0x55555555
_02025780: .word 0x3FE00000
_02025784: .word 0xFFF9EB86
_02025788: .word 0xD078C69F
_0202578C: .word 0x3FC39A09
_02025790: .word 0x1D8E78AF
_02025794: .word 0x3FCC71C5
_02025798: .word 0x9997FA04
_0202579C: .word 0x3FD99999
_020257A0: .word 0xDF3E5244
_020257A4: .word 0x3FC2F112
_020257A8: .word 0x96CB03DE
_020257AC: .word 0x3FC74664
_020257B0: .word 0x94229359
_020257B4: .word 0x3FD24924
_020257B8: .word 0x55555593
_020257BC: .word 0x3FE55555
_020257C0: .word 0x0006B851
	arm_func_end __ieee754_log

	arm_func_start __ieee754_pow
__ieee754_pow: ; 0x020257C4
	stmfd sp!, {r0, r1, r2, r3}
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, lr}
	sub sp, sp, #0x78
	ldr r8, [sp, #0xac]
	ldr r6, [sp, #0xa4]
	ldr r0, [sp, #0xa8]
	bic r9, r8, #0x80000000
	orrs r1, r9, r0
	ldr r7, [sp, #0xa0]
	bic r4, r6, #0x80000000
	addeq sp, sp, #0x78
	moveq r0, #0
	ldreq r1, _02025D60 ; =0x3FF00000
	ldmeqfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, lr}
	addeq sp, sp, #0x10
	bxeq lr
	ldr r1, _02025D64 ; =0x7FF00000
	cmp r4, r1
	bgt _02025834
	bne _0202581C
	cmp r7, #0
	bne _02025834
_0202581C:
	ldr r1, _02025D64 ; =0x7FF00000
	cmp r9, r1
	bgt _02025834
	bne _02025858
	cmp r0, #0
	beq _02025858
_02025834:
	ldr r0, [sp, #0xa0]
	ldr r1, [sp, #0xa4]
	ldr r2, [sp, #0xa8]
	ldr r3, [sp, #0xac]
	bl _dadd
	add sp, sp, #0x78
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, lr}
	add sp, sp, #0x10
	bx lr
_02025858:
	cmp r6, #0
	mov r5, #0
	bge _020258B8
	ldr r1, _02025D68 ; =0x43400000
	cmp r9, r1
	movge r5, #2
	bge _020258B8
	sub r1, r1, #0x3500000
	cmp r9, r1
	blt _020258B8
	ldr r1, _02025D6C ; =0xFFFFFC01
	add r1, r1, r9, asr #20
	cmp r1, #0x14
	ble _020258A0
	rsb r2, r1, #0x34
	mov r1, r0, lsr r2
	cmp r0, r1, lsl r2
	b _020258B0
_020258A0:
	cmp r0, #0
	rsbeq r2, r1, #0x14
	moveq r1, r9, asr r2
	cmpeq r9, r1, lsl r2
_020258B0:
	andeq r1, r1, #1
	rsbeq r5, r1, #2
_020258B8:
	cmp r0, #0
	bne _02025A14
	ldr r1, _02025D64 ; =0x7FF00000
	cmp r9, r1
	bne _0202596C
	add r0, r4, #0x100000
	add r0, r0, #0xc0000000
	orrs r0, r0, r7
	bne _02025900
	ldr r0, [sp, #0xa8]
	ldr r1, [sp, #0xac]
	mov r2, r0
	mov r3, r1
	bl _dsub
	add sp, sp, #0x78
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, lr}
	add sp, sp, #0x10
	bx lr
_02025900:
	sub r0, r1, #0x40000000
	cmp r4, r0
	blt _02025930
	cmp r8, #0
	ldrge r0, [sp, #0xa8]
	ldrge r1, [sp, #0xac]
	movlt r0, #0
	add sp, sp, #0x78
	movlt r1, r0
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, lr}
	add sp, sp, #0x10
	bx lr
_02025930:
	cmp r8, #0
	mov r0, #0
	addge sp, sp, #0x78
	movge r1, r0
	ldmgefd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, lr}
	addge sp, sp, #0x10
	bxge lr
	ldr r2, [sp, #0xa8]
	ldr r3, [sp, #0xac]
	mov r1, r0
	bl _dsub
	add sp, sp, #0x78
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, lr}
	add sp, sp, #0x10
	bx lr
_0202596C:
	sub r0, r1, #0x40000000
	cmp r9, r0
	bne _020259B8
	cmp r8, #0
	ldrge r0, [sp, #0xa0]
	ldrge r1, [sp, #0xa4]
	addge sp, sp, #0x78
	ldmgefd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, lr}
	addge sp, sp, #0x10
	bxge lr
	ldr r2, [sp, #0xa0]
	ldr r3, [sp, #0xa4]
	sub r1, r1, #0x40000000
	mov r0, #0
	bl _ddiv
	add sp, sp, #0x78
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, lr}
	add sp, sp, #0x10
	bx lr
_020259B8:
	cmp r8, #0x40000000
	bne _020259E4
	ldr r0, [sp, #0xa0]
	ldr r1, [sp, #0xa4]
	mov r2, r0
	mov r3, r1
	bl _dmul
	add sp, sp, #0x78
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, lr}
	add sp, sp, #0x10
	bx lr
_020259E4:
	ldr r0, _02025D70 ; =0x3FE00000
	cmp r8, r0
	bne _02025A14
	cmp r6, #0
	blt _02025A14
	ldr r0, [sp, #0xa0]
	ldr r1, [sp, #0xa4]
	bl _dsqrt
	add sp, sp, #0x78
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, lr}
	add sp, sp, #0x10
	bx lr
_02025A14:
	ldr r0, [sp, #0xa0]
	ldr r1, [sp, #0xa4]
	bl fabs
	str r0, [sp, #0x68]
	str r1, [sp, #0x6c]
	cmp r7, #0
	bne _02025B14
	ldr r0, _02025D64 ; =0x7FF00000
	cmp r4, r0
	cmpne r4, #0
	beq _02025A4C
	sub r0, r0, #0x40000000
	cmp r4, r0
	bne _02025B14
_02025A4C:
	ldr r2, [sp, #0x68]
	ldr r3, [sp, #0x6c]
	str r2, [sp, #0x70]
	str r3, [sp, #0x74]
	cmp r8, #0
	bge _02025A78
	ldr r1, _02025D60 ; =0x3FF00000
	mov r0, #0
	bl _ddiv
	str r0, [sp, #0x70]
	str r1, [sp, #0x74]
_02025A78:
	cmp r6, #0
	bge _02025AFC
	add r0, r4, #0x100000
	add r0, r0, #0xc0000000
	orrs r0, r0, r5
	bne _02025AD8
	ldr r0, [sp, #0x70]
	ldr r1, [sp, #0x74]
	mov r2, r0
	mov r3, r1
	bl _dsub
	mov r4, r0
	mov r5, r1
	ldr r0, [sp, #0x70]
	ldr r1, [sp, #0x74]
	mov r2, r0
	mov r3, r1
	bl _dsub
	mov r2, r0
	mov r3, r1
	mov r0, r4
	mov r1, r5
	bl _ddiv
	b _02025AF4
_02025AD8:
	cmp r5, #1
	bne _02025AFC
	mov r0, #0
	ldr r2, [sp, #0x70]
	ldr r3, [sp, #0x74]
	mov r1, r0
	bl _dsub
_02025AF4:
	str r0, [sp, #0x70]
	str r1, [sp, #0x74]
_02025AFC:
	ldr r0, [sp, #0x70]
	ldr r1, [sp, #0x74]
	add sp, sp, #0x78
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, lr}
	add sp, sp, #0x10
	bx lr
_02025B14:
	mov r0, r6, asr #0x1f
	add r7, r0, #1
	orrs r0, r7, r5
	bne _02025B4C
	ldr r0, _02025D74 ; =0x0208F130
	ldr r1, _02025D78 ; =errno
	ldr r0, [r0]
	mov r2, #0x21
	str r2, [r1]
	bl _f2d
	add sp, sp, #0x78
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, lr}
	add sp, sp, #0x10
	bx lr
_02025B4C:
	ldr r3, _02025D7C ; =0x41E00000
	cmp r9, r3
	ble _02025E44
	add r0, r3, #0x2100000
	cmp r9, r0
	ble _02025BBC
	ldr r1, _02025D80 ; =0x3FEFFFFF
	cmp r4, r1
	bgt _02025B90
	add r1, r1, #0x40000001
	mov r0, #0
	cmp r8, #0
	add sp, sp, #0x78
	movge r1, r0
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, lr}
	add sp, sp, #0x10
	bx lr
_02025B90:
	add r0, r1, #1
	cmp r4, r0
	blt _02025BBC
	add r1, r1, #0x40000001
	mov r0, #0
	cmp r8, #0
	add sp, sp, #0x78
	movle r1, r0
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, lr}
	add sp, sp, #0x10
	bx lr
_02025BBC:
	ldr r3, _02025D80 ; =0x3FEFFFFF
	cmp r4, r3
	bge _02025BE8
	add r1, r3, #0x40000001
	mov r0, #0
	cmp r8, #0
	add sp, sp, #0x78
	movge r1, r0
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, lr}
	add sp, sp, #0x10
	bx lr
_02025BE8:
	add r0, r3, #1
	cmp r4, r0
	ble _02025C14
	add r1, r3, #0x40000001
	mov r0, #0
	cmp r8, #0
	add sp, sp, #0x78
	movle r1, r0
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, lr}
	add sp, sp, #0x10
	bx lr
_02025C14:
	ldr r0, [sp, #0xa0]
	ldr r1, [sp, #0xa4]
	mov r2, #0
	add r3, r3, #1
	bl _dsub
	mov r2, r0
	mov r3, r1
	str r0, [sp, #0x48]
	str r1, [sp, #0x4c]
	bl _dmul
	mov r6, r0
	ldr r4, _02025D84 ; =0x3FD00000
	mov r8, r1
	ldr r2, [sp, #0x48]
	ldr r3, [sp, #0x4c]
	mov r0, #0
	mov r1, r4
	bl _dmul
	mov r2, r0
	ldr r0, _02025D88 ; =0x55555555
	mov r3, r1
	sub r1, r0, #0x15800000
	bl _dsub
	mov r2, r0
	mov r3, r1
	ldr r0, [sp, #0x48]
	ldr r1, [sp, #0x4c]
	bl _dmul
	mov r2, r0
	mov r3, r1
	add r1, r4, #0x100000
	mov r0, #0
	bl _dsub
	mov r2, r0
	mov r3, r1
	mov r0, r6
	mov r1, r8
	bl _dmul
	mov r6, r0
	ldr r9, _02025D8C ; =0x3FF71547
	mov r10, r1
	ldr r2, [sp, #0x48]
	ldr r3, [sp, #0x4c]
	mov r0, #0x60000000
	mov r1, r9
	bl _dmul
	mov r8, r0
	mov r4, r1
	ldr r0, _02025D90 ; =0xF85DDF44
	ldr r1, _02025D94 ; =0x3E54AE0B
	ldr r2, [sp, #0x48]
	ldr r3, [sp, #0x4c]
	bl _dmul
	mov r2, r6
	mov r6, r0
	mov r3, r10
	mov r10, r1
	ldr r0, _02025D98 ; =0x652B82FE
	mov r1, r9
	bl _dmul
	mov r2, r0
	mov r3, r1
	mov r0, r6
	mov r1, r10
	bl _dsub
	mov r6, r0
	mov r9, r1
	mov r0, r8
	mov r1, r4
	mov r2, r6
	mov r3, r9
	bl _dadd
	mov r0, #0
	mov r2, r8
	mov r3, r4
	str r1, [sp, #0x54]
	str r0, [sp, #0x50]
	bl _dsub
	mov r2, r0
	mov r3, r1
	mov r0, r6
	mov r1, r9
	b _02026384
_02025D60: .word 0x3FF00000
_02025D64: .word 0x7FF00000
_02025D68: .word 0x43400000
_02025D6C: .word 0xFFFFFC01
_02025D70: .word 0x3FE00000
_02025D74: .word unk_0208F130
_02025D78: .word errno
_02025D7C: .word 0x41E00000
_02025D80: .word 0x3FEFFFFF
_02025D84: .word 0x3FD00000
_02025D88: .word 0x55555555
_02025D8C: .word 0x3FF71547
_02025D90: .word 0xF85DDF44
_02025D94: .word 0x3E54AE0B
_02025D98: .word 0x652B82FE
_02025D9C: .word 0x0003988E
_02025DA0: .word 0x000BB67A
_02025DA4: .word unk_0208C148
_02025DA8: .word 0x4A454EEF
_02025DAC: .word 0x3FCA7E28
_02025DB0: .word 0x93C9DB65
_02025DB4: .word 0x3FCD864A
_02025DB8: .word 0xA91D4101
_02025DBC: .word 0x3FD17460
_02025DC0: .word 0x518F264D
_02025DC4: .word 0x3FD55555
_02025DC8: .word 0xDB6FABFF
_02025DCC: .word 0x3FDB6DB6
_02025DD0: .word 0x33333303
_02025DD4: .word 0x3FE33333
_02025DD8: .word 0x3FEEC709
_02025DDC: .word 0x145B01F5
_02025DE0: .word 0xBE3E2FE0
_02025DE4: .word 0xDC3A03FD
_02025DE8: .word unk_0208C158
_02025DEC: .word unk_0208C138
_02025DF0: .word 0x40900000
_02025DF4: .word 0x8800759C
_02025DF8: .word 0x7E37E43C
_02025DFC: .word 0x3C971547
_02025E00: .word 0x3F6F3400
_02025E04: .word 0xC2F8F359
_02025E08: .word 0x01A56E1F
_02025E0C: .word 0x3FE62E43
_02025E10: .word 0xFEFA39EF
_02025E14: .word 0x0CA86C39
_02025E18: .word 0xBE205C61
_02025E1C: .word 0x72BEA4D0
_02025E20: .word 0x3E663769
_02025E24: .word 0xC5D26BF1
_02025E28: .word 0xBEBBBD41
_02025E2C: .word 0xAF25DE2C
_02025E30: .word 0x3F11566A
_02025E34: .word 0x16BEBD93
_02025E38: .word 0xBF66C16C
_02025E3C: .word 0x5555553E
_02025E40: .word 0x3FC55555
_02025E44:
	cmp r4, #0x100000
	mov r6, #0
	bge _02025E74
	ldr r0, [sp, #0x68]
	ldr r1, [sp, #0x6c]
	mov r2, r6
	add r3, r3, #0x1600000
	bl _dmul
	mov r4, r1
	str r0, [sp, #0x68]
	str r4, [sp, #0x6c]
	sub r6, r6, #0x35
_02025E74:
	ldr r0, _02025D6C ; =0xFFFFFC01
	ldr r1, _02025D9C ; =0x0003988E
	and r2, r4, r0, lsr #12
	add r3, r0, r4, asr #20
	orr r9, r2, #0xff00000
	cmp r2, r1
	add r6, r6, r3
	orr r9, r9, #0x30000000
	movle r8, #0
	ble _02025EB4
	ldr r0, _02025DA0 ; =0x000BB67A
	cmp r2, r0
	movlt r8, #1
	addge r6, r6, #1
	subge r9, r9, #0x100000
	movge r8, #0
_02025EB4:
	ldr r10, _02025DA4 ; =0x0208C148
	ldr r0, [sp, #0x68]
	add r1, r10, r8, lsl #3
	ldmia r1, {r2, r3}
	mov r1, r9
	str r9, [sp, #0x6c]
	bl _dsub
	add r2, r10, r8, lsl #3
	mov r11, r0
	ldr r3, [r2, #4]
	mov r4, r1
	ldr r0, [sp, #0x68]
	ldr r2, [r10, r8, lsl #3]
	mov r1, r9
	bl _dadd
	mov r3, r1
	mov r2, r0
	ldr r1, _02025D60 ; =0x3FF00000
	mov r0, #0
	bl _ddiv
	str r0, [sp, #0x20]
	str r1, [sp, #0x1c]
	ldr r2, [sp, #0x20]
	ldr r3, [sp, #0x1c]
	mov r0, r11
	mov r1, r4
	bl _dmul
	mov r2, r9, asr #1
	orr r2, r2, #0x20000000
	add r3, r2, #0x80000
	mov r2, #0
	mov r9, r1
	add r1, r3, r8, lsl #18
	str r0, [sp, #0x24]
	mov r0, r2
	add r3, r10, r8, lsl #3
	str r2, [sp, #0x40]
	str r2, [sp, #0x38]
	str r9, [sp, #0x44]
	str r1, [sp, #0x3c]
	ldmia r3, {r2, r3}
	bl _dsub
	mov r2, r0
	mov r3, r1
	ldr r0, [sp, #0x68]
	ldr r1, [sp, #0x6c]
	bl _dsub
	str r0, [sp, #0x28]
	mov r10, r1
	ldr r0, [sp, #0x40]
	ldr r2, [sp, #0x38]
	ldr r3, [sp, #0x3c]
	mov r1, r9
	bl _dmul
	mov r2, r0
	mov r3, r1
	mov r0, r11
	mov r1, r4
	bl _dsub
	mov r4, r0
	mov r3, r10
	mov r10, r1
	ldr r2, [sp, #0x28]
	ldr r0, [sp, #0x40]
	mov r1, r9
	bl _dmul
	mov r2, r0
	mov r3, r1
	mov r0, r4
	mov r1, r10
	bl _dsub
	mov r2, r0
	mov r3, r1
	ldr r0, [sp, #0x20]
	ldr r1, [sp, #0x1c]
	bl _dmul
	str r0, [sp, #0x2c]
	ldr r0, [sp, #0x24]
	str r1, [sp, #0x14]
	mov r1, r9
	mov r2, r0
	mov r3, r9
	bl _dmul
	mov r4, r0
	mov r10, r1
	mov r2, r4
	mov r3, r10
	bl _dmul
	str r0, [sp, #0x30]
	mov r11, r1
	ldr r0, _02025DA8 ; =0x4A454EEF
	ldr r1, _02025DAC ; =0x3FCA7E28
	mov r2, r4
	mov r3, r10
	bl _dmul
	mov r2, r0
	mov r3, r1
	ldr r0, _02025DB0 ; =0x93C9DB65
	ldr r1, _02025DB4 ; =0x3FCD864A
	bl _dadd
	mov r2, r0
	mov r3, r1
	mov r0, r4
	mov r1, r10
	bl _dmul
	mov r2, r0
	mov r3, r1
	ldr r0, _02025DB8 ; =0xA91D4101
	ldr r1, _02025DBC ; =0x3FD17460
	bl _dadd
	mov r2, r0
	mov r3, r1
	mov r0, r4
	mov r1, r10
	bl _dmul
	mov r2, r0
	mov r3, r1
	ldr r0, _02025DC0 ; =0x518F264D
	ldr r1, _02025DC4 ; =0x3FD55555
	bl _dadd
	mov r2, r0
	mov r3, r1
	mov r0, r4
	mov r1, r10
	bl _dmul
	mov r2, r0
	mov r3, r1
	ldr r0, _02025DC8 ; =0xDB6FABFF
	ldr r1, _02025DCC ; =0x3FDB6DB6
	bl _dadd
	mov r2, r0
	mov r3, r1
	mov r0, r4
	mov r1, r10
	bl _dmul
	mov r2, r0
	mov r3, r1
	ldr r0, _02025DD0 ; =0x33333303
	ldr r1, _02025DD4 ; =0x3FE33333
	bl _dadd
	mov r2, r0
	mov r3, r1
	ldr r0, [sp, #0x30]
	mov r1, r11
	bl _dmul
	mov r4, r0
	mov r10, r1
	ldr r0, [sp, #0x40]
	ldr r2, [sp, #0x24]
	mov r1, r9
	mov r3, r9
	bl _dadd
	mov r2, r0
	mov r3, r1
	ldr r0, [sp, #0x2c]
	ldr r1, [sp, #0x14]
	bl _dmul
	mov r2, r0
	mov r3, r1
	mov r0, r4
	mov r1, r10
	bl _dadd
	mov r4, r0
	ldr r0, [sp, #0x40]
	mov r10, r1
	mov r1, r9
	mov r2, r0
	mov r3, r1
	bl _dmul
	str r1, [sp, #0xc]
	mov r11, r0
	ldr r1, _02025D60 ; =0x3FF00000
	ldr r3, [sp, #0xc]
	mov r0, #0
	add r1, r1, #0x180000
	mov r2, r11
	bl _dadd
	mov r2, r4
	mov r3, r10
	bl _dadd
	ldr r0, _02025D60 ; =0x3FF00000
	str r1, [sp, #0x3c]
	add r3, r0, #0x180000
	mov r0, #0
	mov r2, r0
	str r0, [sp, #0x38]
	bl _dsub
	ldr r3, [sp, #0xc]
	mov r2, r11
	bl _dsub
	mov r2, r0
	mov r3, r1
	mov r0, r4
	mov r1, r10
	bl _dsub
	str r0, [sp, #0x34]
	str r1, [sp, #4]
	ldr r0, [sp, #0x40]
	ldr r2, [sp, #0x38]
	ldr r3, [sp, #0x3c]
	mov r1, r9
	bl _dmul
	mov r4, r0
	mov r10, r1
	ldr r0, [sp, #0x2c]
	ldr r1, [sp, #0x14]
	ldr r2, [sp, #0x38]
	ldr r3, [sp, #0x3c]
	bl _dmul
	mov r3, r9
	mov r11, r0
	mov r9, r1
	ldr r2, [sp, #0x24]
	ldr r0, [sp, #0x34]
	ldr r1, [sp, #4]
	bl _dmul
	mov r2, r0
	mov r3, r1
	mov r0, r11
	mov r1, r9
	bl _dadd
	mov r9, r0
	mov r11, r1
	mov r0, r4
	mov r1, r10
	mov r2, r9
	mov r3, r11
	bl _dadd
	mov r0, #0
	mov r2, r4
	mov r3, r10
	str r1, [sp, #0x64]
	str r0, [sp, #0x60]
	bl _dsub
	mov r2, r0
	mov r3, r1
	mov r0, r9
	mov r1, r11
	bl _dsub
	mov r9, r1
	mov r11, r0
	ldr r2, [sp, #0x60]
	ldr r1, _02025DD8 ; =0x3FEEC709
	ldr r3, [sp, #0x64]
	mov r0, #0xe0000000
	bl _dmul
	mov r4, r0
	mov r10, r1
	ldr r0, _02025DDC ; =0x145B01F5
	ldr r1, _02025DE0 ; =0xBE3E2FE0
	ldr r2, [sp, #0x60]
	ldr r3, [sp, #0x64]
	bl _dmul
	mov r2, r11
	mov r3, r9
	mov r11, r0
	mov r9, r1
	ldr r1, _02025DD8 ; =0x3FEEC709
	ldr r0, _02025DE4 ; =0xDC3A03FD
	bl _dmul
	mov r2, r0
	mov r3, r1
	mov r0, r11
	mov r1, r9
	bl _dadd
	mov r2, r0
	ldr r0, _02025DE8 ; =0x0208C158
	mov r3, r1
	add r1, r0, r8, lsl #3
	ldmia r1, {r0, r1}
	bl _dadd
	mov r9, r0
	mov r0, r6
	mov r6, r1
	bl _dflt
	str r0, [sp, #0x48]
	str r1, [sp, #0x4c]
	mov r0, r4
	mov r1, r10
	mov r2, r9
	mov r3, r6
	bl _dadd
	ldr r11, _02025DEC ; =0x0208C138
	add r2, r11, r8, lsl #3
	ldr r3, [r2, #4]
	ldr r2, [r11, r8, lsl #3]
	bl _dadd
	mov r2, r0
	mov r3, r1
	ldr r0, [sp, #0x48]
	ldr r1, [sp, #0x4c]
	bl _dadd
	mov r0, #0
	ldr r2, [sp, #0x48]
	ldr r3, [sp, #0x4c]
	str r1, [sp, #0x54]
	str r0, [sp, #0x50]
	bl _dsub
	add r3, r11, r8, lsl #3
	ldmia r3, {r2, r3}
	bl _dsub
	mov r2, r4
	mov r3, r10
	bl _dsub
	mov r2, r0
	mov r3, r1
	mov r0, r9
	mov r1, r6
_02026384:
	bl _dsub
	mov r4, r0
	mov r6, r1
	sub r0, r5, #1
	orrs r0, r7, r0
	ldr r1, [sp, #0xac]
	ldr r7, _02025D60 ; =0x3FF00000
	mov r2, #0
	ldr r0, [sp, #0xa8]
	mov r3, r1
	mov r8, #0
	subeq r7, r7, #0x80000000
	str r1, [sp, #0x5c]
	str r2, [sp, #0x58]
	bl _dsub
	mov r2, r0
	mov r3, r1
	ldr r0, [sp, #0x50]
	ldr r1, [sp, #0x54]
	bl _dmul
	mov r5, r0
	mov r9, r1
	ldr r0, [sp, #0xa8]
	ldr r1, [sp, #0xac]
	mov r2, r4
	mov r3, r6
	bl _dmul
	mov r2, r0
	mov r3, r1
	mov r0, r5
	mov r1, r9
	bl _dadd
	mov r5, r0
	mov r9, r1
	ldr r0, [sp, #0x58]
	ldr r1, [sp, #0x5c]
	ldr r2, [sp, #0x50]
	ldr r3, [sp, #0x54]
	bl _dmul
	mov r2, r0
	mov r3, r1
	mov r0, r5
	mov r1, r9
	str r2, [sp, #0x60]
	str r3, [sp, #0x64]
	bl _dadd
	mov r4, r1
	ldr r2, _02025DF0 ; =0x40900000
	str r0, [sp, #0x70]
	str r4, [sp, #0x74]
	cmp r4, r2
	blt _0202652C
	add r1, r4, #0xf700000
	add r1, r1, #0xb0000000
	orrs r0, r1, r0
	beq _020264A4
	ldr r5, _02025DF4 ; =0x8800759C
	ldr r4, _02025DF8 ; =0x7E37E43C
	mov r0, r5
	mov r1, r4
	mov r2, r8
	mov r3, r7
	bl _dmul
	mov r2, r0
	mov r3, r1
	mov r0, r5
	mov r1, r4
	bl _dmul
	add sp, sp, #0x78
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, lr}
	add sp, sp, #0x10
	bx lr
_020264A4:
	ldr r0, _02025D98 ; =0x652B82FE
	ldr r1, _02025DFC ; =0x3C971547
	mov r2, r5
	mov r3, r9
	bl _dadd
	mov r6, r0
	mov r10, r1
	ldr r0, [sp, #0x70]
	ldr r2, [sp, #0x60]
	ldr r3, [sp, #0x64]
	mov r1, r4
	bl _dsub
	mov r2, r0
	mov r3, r1
	mov r0, r6
	mov r1, r10
	bl _dgr
	bls _020265F0
	ldr r5, _02025DF4 ; =0x8800759C
	ldr r4, _02025DF8 ; =0x7E37E43C
	mov r0, r5
	mov r1, r4
	mov r2, r8
	mov r3, r7
	bl _dmul
	mov r2, r0
	mov r3, r1
	mov r0, r5
	mov r1, r4
	bl _dmul
	add sp, sp, #0x78
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, lr}
	add sp, sp, #0x10
	bx lr
_0202652C:
	bic r3, r4, #0x80000000
	add r2, r2, #0xcc00
	cmp r3, r2
	blt _020265F0
	ldr r2, _02025E00 ; =0x3F6F3400
	add r2, r4, r2
	orrs r2, r2, r0
	beq _0202658C
	ldr r5, _02025E04 ; =0xC2F8F359
	ldr r4, _02025E08 ; =0x01A56E1F
	mov r0, r5
	mov r1, r4
	mov r2, r8
	mov r3, r7
	bl _dmul
	mov r2, r0
	mov r3, r1
	mov r0, r5
	mov r1, r4
	bl _dmul
	add sp, sp, #0x78
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, lr}
	add sp, sp, #0x10
	bx lr
_0202658C:
	ldr r2, [sp, #0x60]
	ldr r3, [sp, #0x64]
	bl _dsub
	mov r2, r0
	mov r3, r1
	mov r0, r5
	mov r1, r9
	bl _dleq
	bhi _020265F0
	ldr r5, _02025E04 ; =0xC2F8F359
	ldr r4, _02025E08 ; =0x01A56E1F
	mov r0, r5
	mov r1, r4
	mov r2, r8
	mov r3, r7
	bl _dmul
	mov r2, r0
	mov r3, r1
	mov r0, r5
	mov r1, r4
	bl _dmul
	add sp, sp, #0x78
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, lr}
	add sp, sp, #0x10
	bx lr
_020265F0:
	ldr r0, _02025D6C ; =0xFFFFFC01
	bic r3, r4, #0x80000000
	ldr r1, _02025D70 ; =0x3FE00000
	add r2, r0, r3, asr #20
	cmp r3, r1
	mov r6, #0
	ble _0202666C
	mov r1, #0x100000
	add r2, r2, #1
	add r2, r4, r1, asr r2
	bic r3, r2, #0x80000000
	add r0, r0, r3, asr #20
	sub r3, r1, #1
	mvn r3, r3, asr r0
	sub r1, r1, #1
	and r1, r2, r1
	and r2, r2, r3
	str r2, [sp, #0x4c]
	str r6, [sp, #0x48]
	orr r1, r1, #0x100000
	rsb r0, r0, #0x14
	mov r6, r1, asr r0
	cmp r4, #0
	ldr r0, [sp, #0x60]
	ldr r1, [sp, #0x64]
	ldr r2, [sp, #0x48]
	ldr r3, [sp, #0x4c]
	rsblt r6, r6, #0
	bl _dsub
	str r0, [sp, #0x60]
	str r1, [sp, #0x64]
_0202666C:
	ldr r2, [sp, #0x60]
	ldr r3, [sp, #0x64]
	mov r0, r5
	mov r1, r9
	bl _dadd
	mov r0, #0
	mov r3, r1
	ldr r11, _02025E0C ; =0x3FE62E43
	mov r2, r0
	mov r1, r11
	str r3, [sp, #0x4c]
	str r2, [sp, #0x48]
	bl _dmul
	mov r4, r0
	mov r10, r1
	ldr r0, [sp, #0x48]
	ldr r1, [sp, #0x4c]
	ldr r2, [sp, #0x60]
	ldr r3, [sp, #0x64]
	bl _dsub
	mov r2, r0
	mov r3, r1
	mov r0, r5
	mov r1, r9
	bl _dsub
	mov r2, r0
	mov r3, r1
	ldr r0, _02025E10 ; =0xFEFA39EF
	sub r1, r11, #1
	bl _dmul
	mov r5, r0
	mov r9, r1
	ldr r0, _02025E14 ; =0x0CA86C39
	ldr r1, _02025E18 ; =0xBE205C61
	ldr r2, [sp, #0x48]
	ldr r3, [sp, #0x4c]
	bl _dmul
	mov r2, r0
	mov r3, r1
	mov r0, r5
	mov r1, r9
	bl _dadd
	mov r5, r0
	mov r9, r1
	mov r0, r4
	mov r1, r10
	mov r2, r5
	mov r3, r9
	bl _dadd
	mov r2, r4
	mov r3, r10
	str r0, [sp, #0x70]
	str r1, [sp, #0x74]
	bl _dsub
	mov r2, r0
	mov r3, r1
	mov r0, r5
	mov r1, r9
	bl _dsub
	mov r5, r0
	mov r9, r1
	ldr r0, [sp, #0x70]
	ldr r1, [sp, #0x74]
	mov r2, r0
	mov r3, r1
	bl _dmul
	mov r2, r0
	mov r3, r1
	ldr r0, _02025E1C ; =0x72BEA4D0
	ldr r1, _02025E20 ; =0x3E663769
	str r2, [sp, #0x48]
	str r3, [sp, #0x4c]
	bl _dmul
	mov r2, r0
	mov r3, r1
	ldr r0, _02025E24 ; =0xC5D26BF1
	ldr r1, _02025E28 ; =0xBEBBBD41
	bl _dadd
	mov r2, r0
	mov r3, r1
	ldr r0, [sp, #0x48]
	ldr r1, [sp, #0x4c]
	bl _dmul
	mov r2, r0
	mov r3, r1
	ldr r0, _02025E2C ; =0xAF25DE2C
	ldr r1, _02025E30 ; =0x3F11566A
	bl _dadd
	mov r2, r0
	mov r3, r1
	ldr r0, [sp, #0x48]
	ldr r1, [sp, #0x4c]
	bl _dmul
	mov r2, r0
	mov r3, r1
	ldr r0, _02025E34 ; =0x16BEBD93
	ldr r1, _02025E38 ; =0xBF66C16C
	bl _dadd
	mov r2, r0
	mov r3, r1
	ldr r0, [sp, #0x48]
	ldr r1, [sp, #0x4c]
	bl _dmul
	mov r2, r0
	mov r3, r1
	ldr r0, _02025E3C ; =0x5555553E
	ldr r1, _02025E40 ; =0x3FC55555
	bl _dadd
	mov r2, r0
	mov r3, r1
	ldr r0, [sp, #0x48]
	ldr r1, [sp, #0x4c]
	bl _dmul
	mov r2, r0
	mov r3, r1
	ldr r0, [sp, #0x70]
	ldr r1, [sp, #0x74]
	bl _dsub
	mov r2, r0
	mov r3, r1
	ldr r0, [sp, #0x70]
	ldr r1, [sp, #0x74]
	str r2, [sp, #0x50]
	str r3, [sp, #0x54]
	bl _dmul
	mov r4, r0
	mov r10, r1
	mov r11, #0x40000000
	ldr r0, [sp, #0x50]
	ldr r1, [sp, #0x54]
	mov r2, #0
	mov r3, r11
	bl _dsub
	mov r2, r0
	mov r3, r1
	mov r0, r4
	mov r1, r10
	bl _ddiv
	mov r4, r0
	mov r10, r1
	ldr r0, [sp, #0x70]
	ldr r1, [sp, #0x74]
	mov r2, r5
	mov r3, r9
	bl _dmul
	mov r2, r0
	mov r3, r1
	mov r0, r5
	mov r1, r9
	bl _dadd
	mov r2, r0
	mov r3, r1
	mov r0, r4
	mov r1, r10
	bl _dsub
	ldr r2, [sp, #0x70]
	ldr r3, [sp, #0x74]
	bl _dsub
	mov r2, r0
	mov r3, r1
	mov r0, #0
	sub r1, r11, #0x100000
	bl _dsub
	add r3, r1, r6, lsl #20
	mov r2, r3, asr #0x14
	str r0, [sp, #0x70]
	cmp r2, #0
	str r1, [sp, #0x74]
	addgt r0, sp, #0x70
	strgt r3, [r0, #4]
	bgt _02026928
	mov r2, r6
	bl scalbn
	str r0, [sp, #0x70]
	str r1, [sp, #0x74]
_02026928:
	ldr r2, [sp, #0x70]
	ldr r3, [sp, #0x74]
	mov r0, r8
	mov r1, r7
	bl _dmul
	add sp, sp, #0x78
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, lr}
	add sp, sp, #0x10
	bx lr
	arm_func_end __ieee754_pow

	arm_func_start __ieee754_rem_pio2
__ieee754_rem_pio2: ; 0x0202694C
	stmfd sp!, {r0, r1, r2, r3}
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, lr}
	sub sp, sp, #0x70
	ldr r7, [sp, #0x9c]
	ldr r4, _02026FE4 ; =0x3FE921FB
	bic r6, r7, #0x80000000
	mov r10, r2
	cmp r6, r4
	ldr r8, _02026FE8 ; =0x3DD0B461
	mov r5, #0
	bgt _020269A0
	ldr r2, [sp, #0x98]
	ldr r3, [sp, #0x9c]
	mov r0, r5
	stmia r10, {r2, r3}
	add sp, sp, #0x70
	str r0, [r10, #8]
	str r0, [r10, #0xc]
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, lr}
	add sp, sp, #0x10
	bx lr
_020269A0:
	ldr r0, _02026FEC ; =0x4002D97C
	cmp r6, r0
	bge _02026B64
	cmp r7, #0
	ble _02026A7C
	ldr r0, [sp, #0x98]
	ldr r1, [sp, #0x9c]
	ldr r2, _02026FF0 ; =0x54400000
	add r3, r4, #0x100000
	bl _dsub
	add r2, r4, #0x100000
	str r0, [sp, #0x50]
	str r1, [sp, #0x54]
	cmp r6, r2
	beq _02026A14
	ldr r4, _02026FF4 ; =0x1A626331
	mov r3, r8
	mov r2, r4
	bl _dsub
	mov r2, r0
	mov r3, r1
	ldr r0, [sp, #0x50]
	ldr r1, [sp, #0x54]
	stmia r10, {r2, r3}
	bl _dsub
	mov r2, r4
	mov r3, r8
	bl _dsub
	b _02026A60
_02026A14:
	ldr r2, _02026FF8 ; =0x1A600000
	ldr r3, _02026FE8 ; =0x3DD0B461
	bl _dsub
	ldr r5, _02026FFC ; =0x2E037073
	ldr r4, _02027000 ; =0x3BA3198A
	mov r2, r5
	mov r3, r4
	str r0, [sp, #0x50]
	str r1, [sp, #0x54]
	bl _dsub
	mov r2, r0
	mov r3, r1
	ldr r0, [sp, #0x50]
	ldr r1, [sp, #0x54]
	stmia r10, {r2, r3}
	bl _dsub
	mov r2, r5
	mov r3, r4
	bl _dsub
_02026A60:
	add sp, sp, #0x70
	str r0, [r10, #8]
	str r1, [r10, #0xc]
	mov r0, #1
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, lr}
	add sp, sp, #0x10
	bx lr
_02026A7C:
	ldr r2, [sp, #0x98]
	ldr r3, [sp, #0x9c]
	ldr r0, _02026FF0 ; =0x54400000
	add r1, r4, #0x100000
	bl _dadd
	mov r2, r0
	mov r3, r1
	add r4, r4, #0x100000
	str r2, [sp, #0x50]
	str r3, [sp, #0x54]
	cmp r6, r4
	beq _02026AEC
	ldr r4, _02026FF4 ; =0x1A626331
	mov r1, r8
	mov r0, r4
	bl _dadd
	mov r2, r0
	mov r3, r1
	ldr r0, [sp, #0x50]
	ldr r1, [sp, #0x54]
	stmia r10, {r2, r3}
	bl _dsub
	mov r2, r0
	mov r3, r1
	mov r0, r4
	mov r1, r8
	bl _dadd
	b _02026B48
_02026AEC:
	ldr r2, _02026FF8 ; =0x1A600000
	ldr r3, _02026FE8 ; =0x3DD0B461
	bl _dadd
	mov r2, r0
	ldr r5, _02026FFC ; =0x2E037073
	mov r3, r1
	ldr r4, _02027000 ; =0x3BA3198A
	mov r0, r5
	mov r1, r4
	str r2, [sp, #0x50]
	str r3, [sp, #0x54]
	bl _dadd
	mov r2, r0
	mov r3, r1
	ldr r0, [sp, #0x50]
	ldr r1, [sp, #0x54]
	stmia r10, {r2, r3}
	bl _dsub
	mov r2, r0
	mov r3, r1
	mov r0, r5
	mov r1, r4
	bl _dadd
_02026B48:
	add sp, sp, #0x70
	str r0, [r10, #8]
	str r1, [r10, #0xc]
	mvn r0, #0
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, lr}
	add sp, sp, #0x10
	bx lr
_02026B64:
	add r0, r4, #0x1500000
	cmp r6, r0
	bgt _02026E58
	ldr r0, [sp, #0x98]
	ldr r1, [sp, #0x9c]
	bl fabs
	str r1, [sp, #0x24]
	mov r9, r0
	ldr r0, _02027004 ; =0x6DC9C883
	ldr r1, _02027008 ; =0x3FE45F30
	ldr r3, [sp, #0x24]
	mov r2, r9
	bl _dmul
	mov r3, r1
	mov r2, r0
	ldr r1, _0202700C ; =0x3FE00000
	mov r0, r5
	bl _dadd
	bl _dfix
	mov r5, r0
	bl _dflt
	mov r11, r0
	mov r8, r1
	ldr r0, _02026FF0 ; =0x54400000
	add r1, r4, #0x100000
	mov r2, r11
	mov r3, r8
	bl _dmul
	mov r3, r1
	mov r2, r0
	ldr r1, [sp, #0x24]
	mov r0, r9
	bl _dsub
	mov r4, r0
	mov r9, r1
	ldr r0, _02026FF4 ; =0x1A626331
	ldr r1, _02026FE8 ; =0x3DD0B461
	mov r2, r11
	mov r3, r8
	bl _dmul
	str r0, [sp, #0x28]
	str r1, [sp, #0xc]
	cmp r5, #0x20
	bge _02026C2C
	ldr r0, _02027010 ; =0x0208C168
	sub r1, r5, #1
	ldr r0, [r0, r1, lsl #2]
	cmp r6, r0
	beq _02026C2C
	b _02026DBC
_02026C2C:
	ldr r2, [sp, #0x28]
	ldr r3, [sp, #0xc]
	mov r0, r4
	mov r1, r9
	bl _dsub
	str r0, [r10]
	ldr r0, _02027014 ; =0x000007FF
	str r1, [r10, #4]
	and r0, r0, r1, asr #20
	rsb r0, r0, r6, asr #20
	cmp r0, #0x10
	ble _02026DD4
	ldr r0, _02026FF8 ; =0x1A600000
	ldr r1, _02026FE8 ; =0x3DD0B461
	mov r2, r11
	mov r3, r8
	str r4, [sp, #0x30]
	str r9, [sp, #0x34]
	bl _dmul
	str r0, [sp, #0x40]
	str r1, [sp, #0x1c]
	ldr r2, [sp, #0x40]
	ldr r3, [sp, #0x1c]
	mov r0, r4
	mov r1, r9
	bl _dsub
	mov r9, r1
	str r0, [sp, #0x44]
	mov r4, r0
	ldr r0, _02026FFC ; =0x2E037073
	ldr r1, _02027000 ; =0x3BA3198A
	mov r2, r11
	mov r3, r8
	bl _dmul
	str r0, [sp, #0x48]
	str r1, [sp, #0x14]
	ldr r0, [sp, #0x30]
	ldr r1, [sp, #0x34]
	ldr r2, [sp, #0x44]
	mov r3, r9
	bl _dsub
	ldr r2, [sp, #0x40]
	ldr r3, [sp, #0x1c]
	bl _dsub
	mov r2, r0
	mov r3, r1
	ldr r0, [sp, #0x48]
	ldr r1, [sp, #0x14]
	bl _dsub
	str r0, [sp, #0x28]
	str r1, [sp, #0xc]
	ldr r0, [sp, #0x44]
	ldr r2, [sp, #0x28]
	ldr r3, [sp, #0xc]
	mov r1, r9
	bl _dsub
	str r0, [r10]
	ldr r0, _02027014 ; =0x000007FF
	str r1, [r10, #4]
	and r0, r0, r1, asr #20
	rsb r0, r0, r6, asr #20
	cmp r0, #0x31
	ble _02026DD4
	ldr r1, _02027000 ; =0x3BA3198A
	mov r2, r11
	mov r3, r8
	mov r0, #0x2e000000
	str r9, [sp, #0x3c]
	bl _dmul
	str r0, [sp, #0x4c]
	mov r6, r1
	ldr r0, [sp, #0x44]
	ldr r2, [sp, #0x4c]
	mov r1, r9
	mov r3, r6
	bl _dsub
	mov r4, r0
	mov r9, r1
	ldr r0, _02027018 ; =0x252049C1
	ldr r1, _0202701C ; =0x397B839A
	mov r2, r11
	mov r3, r8
	bl _dmul
	mov r11, r0
	mov r8, r1
	ldr r0, [sp, #0x44]
	ldr r1, [sp, #0x3c]
	mov r2, r4
	mov r3, r9
	bl _dsub
	ldr r2, [sp, #0x4c]
	mov r3, r6
	bl _dsub
	mov r2, r0
	mov r3, r1
	mov r0, r11
	mov r1, r8
	bl _dsub
	str r0, [sp, #0x28]
	str r1, [sp, #0xc]
_02026DBC:
	ldr r2, [sp, #0x28]
	ldr r3, [sp, #0xc]
	mov r0, r4
	mov r1, r9
	bl _dsub
	stmia r10, {r0, r1}
_02026DD4:
	mov r0, r4
	mov r1, r9
	ldmia r10, {r2, r3}
	mov r4, #0
	bl _dsub
	ldr r2, [sp, #0x28]
	ldr r3, [sp, #0xc]
	bl _dsub
	cmp r7, #0
	str r0, [r10, #8]
	addge sp, sp, #0x70
	str r1, [r10, #0xc]
	movge r0, r5
	ldmgefd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, lr}
	addge sp, sp, #0x10
	bxge lr
	ldmia r10, {r2, r3}
	mov r0, r4
	mov r1, r4
	bl _dsub
	stmia r10, {r0, r1}
	ldr r2, [r10, #8]
	ldr r3, [r10, #0xc]
	mov r0, r4
	mov r1, r4
	bl _dsub
	str r0, [r10, #8]
	add sp, sp, #0x70
	str r1, [r10, #0xc]
	rsb r0, r5, #0
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, lr}
	add sp, sp, #0x10
	bx lr
_02026E58:
	ldr r1, _02027020 ; =0x7FF00000
	cmp r6, r1
	blt _02026E98
	ldr r0, [sp, #0x98]
	ldr r1, [sp, #0x9c]
	mov r2, r0
	mov r3, r1
	bl _dsub
	str r0, [r10, #8]
	str r1, [r10, #0xc]
	stmia r10, {r0, r1}
	add sp, sp, #0x70
	mov r0, r5
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, lr}
	add sp, sp, #0x10
	bx lr
_02026E98:
	ldr r0, _02027024 ; =0xFFFFFBEA
	ldr r2, [sp, #0x98]
	add r8, r0, r6, asr #20
	sub r0, r6, r8, lsl #20
	str r2, [sp, #0x50]
	str r0, [sp, #0x54]
	mov r6, r5
	sub r9, r1, #0x3e800000
	add r4, sp, #0x58
_02026EBC:
	ldr r0, [sp, #0x50]
	ldr r1, [sp, #0x54]
	bl _dfix
	bl _dflt
	str r0, [r4, r6, lsl #3]
	add r0, r4, r6, lsl #3
	str r1, [r0, #4]
	mov r3, r1
	ldr r0, [sp, #0x50]
	ldr r1, [sp, #0x54]
	ldr r2, [r4, r6, lsl #3]
	bl _dsub
	mov r2, r0
	mov r3, r1
	mov r0, r5
	mov r1, r9
	bl _dmul
	mov r2, r0
	mov r3, r1
	add r6, r6, #1
	str r2, [sp, #0x50]
	str r3, [sp, #0x54]
	cmp r6, #2
	blt _02026EBC
	mov r0, r5
	mov r1, r5
	str r2, [sp, #0x68]
	str r3, [sp, #0x6c]
	mov r6, #0
	mov r4, #3
	bl _deq
	bne _02026F60
	add r5, sp, #0x58
_02026F40:
	sub r4, r4, #1
	add r0, r5, r4, lsl #3
	ldr r2, [r0, #-8]
	ldr r3, [r0, #-4]
	mov r0, r6
	mov r1, r6
	bl _deq
	beq _02026F40
_02026F60:
	mov r0, #2
	str r0, [sp]
	ldr r5, _02027028 ; =0x0208C1E8
	mov r3, r4
	add r0, sp, #0x58
	mov r1, r10
	mov r2, r8
	str r5, [sp, #4]
	mov r4, #0
	bl __kernel_rem_pio2
	cmp r7, #0
	mov r5, r0
	addge sp, sp, #0x70
	ldmgefd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, lr}
	addge sp, sp, #0x10
	bxge lr
	ldmia r10, {r2, r3}
	mov r0, r4
	mov r1, r4
	bl _dsub
	stmia r10, {r0, r1}
	ldr r2, [r10, #8]
	ldr r3, [r10, #0xc]
	mov r0, r4
	mov r1, r4
	bl _dsub
	str r0, [r10, #8]
	str r1, [r10, #0xc]
	rsb r0, r5, #0
	add sp, sp, #0x70
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, lr}
	add sp, sp, #0x10
	bx lr
_02026FE4: .word 0x3FE921FB
_02026FE8: .word 0x3DD0B461
_02026FEC: .word 0x4002D97C
_02026FF0: .word 0x54400000
_02026FF4: .word 0x1A626331
_02026FF8: .word 0x1A600000
_02026FFC: .word 0x2E037073
_02027000: .word 0x3BA3198A
_02027004: .word 0x6DC9C883
_02027008: .word 0x3FE45F30
_0202700C: .word 0x3FE00000
_02027010: .word unk_0208C168
_02027014: .word 0x000007FF
_02027018: .word 0x252049C1
_0202701C: .word 0x397B839A
_02027020: .word 0x7FF00000
_02027024: .word 0xFFFFFBEA
_02027028: .word unk_0208C1E8
	arm_func_end __ieee754_rem_pio2

	arm_func_start __kernel_cos
__kernel_cos: ; 0x0202702C
	stmfd sp!, {r0, r1, r2, r3}
	stmfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, lr}
	sub sp, sp, #0xc
	ldr r0, [sp, #0x34]
	mov r10, r2
	bic r8, r0, #0x80000000
	mov r9, r3
	cmp r8, #0x3e400000
	mov r11, #0
	bge _0202707C
	ldr r0, [sp, #0x30]
	ldr r1, [sp, #0x34]
	bl _dfix
	cmp r0, #0
	addeq sp, sp, #0xc
	moveq r0, r11
	ldreq r1, _02027304 ; =0x3FF00000
	ldmeqfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, lr}
	addeq sp, sp, #0x10
	bxeq lr
_0202707C:
	ldr r0, [sp, #0x30]
	ldr r1, [sp, #0x34]
	mov r2, r0
	mov r3, r1
	bl _dmul
	mov r4, r0
	mov r6, r1
	ldr r0, _02027308 ; =0xBE8838D4
	ldr r1, _0202730C ; =0xBDA8FAE9
	mov r2, r4
	mov r3, r6
	bl _dmul
	mov r2, r0
	mov r3, r1
	ldr r0, _02027310 ; =0xBDB4B1C4
	ldr r1, _02027314 ; =0x3E21EE9E
	bl _dadd
	mov r2, r0
	mov r3, r1
	mov r0, r4
	mov r1, r6
	bl _dmul
	mov r2, r0
	mov r3, r1
	ldr r0, _02027318 ; =0x809C52AD
	ldr r1, _0202731C ; =0xBE927E4F
	bl _dadd
	mov r2, r0
	mov r3, r1
	mov r0, r4
	mov r1, r6
	bl _dmul
	mov r2, r0
	mov r3, r1
	ldr r0, _02027320 ; =0x19CB1590
	ldr r1, _02027324 ; =0x3EFA01A0
	bl _dadd
	mov r2, r0
	mov r3, r1
	mov r0, r4
	mov r1, r6
	bl _dmul
	mov r2, r0
	mov r3, r1
	ldr r0, _02027328 ; =0x16C15177
	ldr r1, _0202732C ; =0xBF56C16C
	bl _dadd
	mov r2, r0
	mov r3, r1
	mov r0, r4
	mov r1, r6
	bl _dmul
	mov r2, r0
	mov r3, r1
	ldr r0, _02027330 ; =0x5555554C
	ldr r1, _02027334 ; =0x3FA55555
	bl _dadd
	mov r2, r0
	mov r3, r1
	mov r0, r4
	mov r1, r6
	bl _dmul
	mov r5, r0
	ldr r0, _02027338 ; =0x3FD33333
	mov r7, r1
	cmp r8, r0
	ldr r1, _0202733C ; =0x3FE00000
	bge _02027224
	mov r0, #0
	mov r2, r4
	mov r3, r6
	bl _dmul
	mov r11, r0
	mov r8, r1
	mov r0, r4
	mov r1, r6
	mov r2, r5
	mov r3, r7
	bl _dmul
	mov r4, r0
	mov r5, r1
	ldr r0, [sp, #0x30]
	ldr r1, [sp, #0x34]
	mov r2, r10
	mov r3, r9
	bl _dmul
	mov r2, r0
	mov r3, r1
	mov r0, r4
	mov r1, r5
	bl _dsub
	mov r2, r0
	mov r3, r1
	mov r0, r11
	mov r1, r8
	bl _dsub
	mov r3, r1
	ldr r1, _0202733C ; =0x3FE00000
	mov r2, r0
	mov r0, #0
	add r1, r1, #0x100000
	bl _dsub
	add sp, sp, #0xc
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, lr}
	add sp, sp, #0x10
	bx lr
_02027224:
	ldr r0, _02027340 ; =0x3FE90000
	mov r2, r4
	cmp r8, r0
	subgt r12, r0, #0x170000
	strgt r11, [sp, #4]
	strgt r12, [sp, #8]
	suble r0, r8, #0x200000
	strle r0, [sp, #8]
	strle r11, [sp, #4]
	mov r0, r11
	mov r3, r6
	bl _dmul
	ldr r2, [sp, #4]
	ldr r3, [sp, #8]
	bl _dsub
	mov r8, r1
	ldr r1, _0202733C ; =0x3FE00000
	str r0, [sp]
	ldr r2, [sp, #4]
	ldr r3, [sp, #8]
	mov r0, r11
	add r1, r1, #0x100000
	bl _dsub
	mov r2, r5
	mov r3, r7
	mov r5, r0
	mov r7, r1
	mov r0, r4
	mov r1, r6
	bl _dmul
	mov r4, r0
	mov r6, r1
	ldr r0, [sp, #0x30]
	ldr r1, [sp, #0x34]
	mov r2, r10
	mov r3, r9
	bl _dmul
	mov r2, r0
	mov r3, r1
	mov r0, r4
	mov r1, r6
	bl _dsub
	mov r2, r0
	mov r3, r1
	ldr r0, [sp]
	mov r1, r8
	bl _dsub
	mov r2, r0
	mov r3, r1
	mov r0, r5
	mov r1, r7
	bl _dsub
	add sp, sp, #0xc
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, lr}
	add sp, sp, #0x10
	bx lr
_02027304: .word 0x3FF00000
_02027308: .word 0xBE8838D4
_0202730C: .word 0xBDA8FAE9
_02027310: .word 0xBDB4B1C4
_02027314: .word 0x3E21EE9E
_02027318: .word 0x809C52AD
_0202731C: .word 0xBE927E4F
_02027320: .word 0x19CB1590
_02027324: .word 0x3EFA01A0
_02027328: .word 0x16C15177
_0202732C: .word 0xBF56C16C
_02027330: .word 0x5555554C
_02027334: .word 0x3FA55555
_02027338: .word 0x3FD33333
_0202733C: .word 0x3FE00000
_02027340: .word 0x3FE90000
	arm_func_end __kernel_cos

	arm_func_start __kernel_rem_pio2
__kernel_rem_pio2: ; 0x02027344
	stmfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, lr}
	sub sp, sp, #0x264
	ldr r6, _02027ED4 ; =0x2AAAAAAB
	sub r7, r2, #3
	smull r5, r4, r6, r7
	str r4, [sp, #0xc]
	mov r9, r0
	mov r4, r7, lsr #0x1f
	ldr r0, [sp, #0xc]
	ldr r7, [sp, #0x288]
	adds r0, r4, r0, asr #2
	str r0, [sp, #0xc]
	ldr r0, [sp, #0x28c]
	ldr r6, _02027ED8 ; =0x0208C2F0
	str r0, [sp, #0x28c]
	ldr r0, [r6, r7, lsl #2]
	str r1, [sp]
	str r0, [sp, #0x24]
	movmi r0, #0
	strmi r0, [sp, #0xc]
	ldr r0, [sp, #0xc]
	sub r5, r3, #1
	add r1, r0, #1
	mov r0, #0x18
	mul r0, r1, r0
	sub r0, r2, r0
	str r0, [sp, #0x18]
	ldr r0, [sp, #0xc]
	mov r6, #0
	sub r7, r0, r5
	ldr r0, [sp, #0x24]
	adds r8, r5, r0
	bmi _02027410
	cmp r8, #0
	blt _02027410
	mov r10, r6
	add r4, sp, #0x174
_020273D8:
	cmp r7, #0
	movlt r0, r10
	movlt r1, r10
	blt _020273F4
	ldr r0, [sp, #0x28c]
	ldr r0, [r0, r7, lsl #2]
	bl _dflt
_020273F4:
	str r0, [r4, r6, lsl #3]
	add r0, r4, r6, lsl #3
	str r1, [r0, #4]
	add r6, r6, #1
	cmp r6, r8
	add r7, r7, #1
	ble _020273D8
_02027410:
	ldr r0, [sp, #0x24]
	mov r10, #0
	cmp r0, #0
	blt _0202749C
	add r11, sp, #0x174
_02027424:
	mov r7, #0
	mov r4, r7
	mov r8, r7
	cmp r5, #0
	blt _02027480
	add r6, r5, r10
_0202743C:
	add r0, r9, r7, lsl #3
	ldr r1, [r0, #4]
	sub r2, r6, r7
	add r3, r11, r2, lsl #3
	ldr r0, [r9, r7, lsl #3]
	ldmia r3, {r2, r3}
	bl _dmul
	mov r2, r0
	mov r3, r1
	mov r0, r4
	mov r1, r8
	bl _dadd
	add r7, r7, #1
	mov r4, r0
	mov r8, r1
	cmp r7, r5
	ble _0202743C
_02027480:
	add r0, sp, #0x34
	add r0, r0, r10, lsl #3
	stmia r0, {r4, r8}
	ldr r0, [sp, #0x24]
	add r10, r10, #1
	cmp r10, r0
	ble _02027424
_0202749C:
	ldr r0, [sp, #0x24]
	str r0, [sp, #4]
	ldr r0, [sp, #0x18]
	rsb r0, r0, #0x18
	str r0, [sp, #0x14]
	ldr r0, [sp, #0x18]
	rsb r0, r0, #0x17
	str r0, [sp, #0x10]
_020274BC:
	ldr r6, [sp, #4]
	add r1, sp, #0x34
	mov r0, r6
	add r2, r1, r0, lsl #3
	cmp r0, #0
	ldmia r2, {r4, r8}
	mov r7, #0
	cmpgt r0, #0
	ble _02027578
	ldr r0, _02027EDC ; =0x3E700000
	sub r0, r0, #0xfd000000
	str r0, [sp, #0x28]
_020274EC:
	ldr r1, _02027EDC ; =0x3E700000
	mov r0, #0
	mov r2, r4
	mov r3, r8
	bl _dmul
	bl _dfix
	bl _dflt
	mov r10, r0
	mov r11, r1
	ldr r1, [sp, #0x28]
	mov r0, #0
	mov r2, r10
	mov r3, r11
	bl _dmul
	mov r2, r0
	mov r3, r1
	mov r0, r4
	mov r1, r8
	bl _dsub
	bl _dfix
	add r2, sp, #0x214
	str r0, [r2, r7, lsl #2]
	add r2, sp, #0x34
	add r3, r2, r6, lsl #3
	ldr r2, [r3, #-8]
	ldr r3, [r3, #-4]
	mov r1, r11
	mov r0, r10
	bl _dadd
	sub r6, r6, #1
	mov r4, r0
	mov r8, r1
	add r7, r7, #1
	cmp r6, #0
	bgt _020274EC
_02027578:
	ldr r2, [sp, #0x18]
	mov r0, r4
	mov r1, r8
	bl scalbn
	mov r6, r0
	mov r7, r1
	mov r10, #0
	mov r4, #0x3fc00000
	mov r0, r10
	mov r1, r4
	mov r2, r6
	mov r3, r7
	bl _dmul
	bl floor
	mov r2, r0
	mov r3, r1
	mov r0, r10
	add r1, r4, #0x600000
	bl _dmul
	mov r2, r0
	mov r3, r1
	mov r0, r6
	mov r1, r7
	bl _dsub
	mov r6, r0
	mov r7, r1
	bl _dfix
	str r0, [sp, #0x20]
	bl _dflt
	mov r2, r0
	mov r3, r1
	mov r0, r6
	mov r1, r7
	bl _dsub
	ldr r2, [sp, #0x18]
	mov r6, r0
	cmp r2, #0
	mov r7, r1
	ble _0202764C
	ldr r0, [sp, #4]
	add r1, sp, #0x214
	add r1, r1, r0, lsl #2
	ldr r3, [r1, #-4]
	ldr r0, [sp, #0x14]
	mov r2, r3, asr r0
	sub r2, r3, r2, lsl r0
	str r2, [r1, #-4]
	ldr r1, [sp, #0x20]
	add r0, r1, r3, asr r0
	str r0, [sp, #0x20]
	ldr r0, [sp, #0x10]
	mov r10, r2, asr r0
	b _0202767C
_0202764C:
	cmp r2, #0
	bne _0202766C
	ldr r0, [sp, #4]
	add r1, sp, #0x214
	add r0, r1, r0, lsl #2
	ldr r0, [r0, #-4]
	mov r10, r0, asr #0x17
	b _0202767C
_0202766C:
	add r3, r4, #0x200000
	mov r2, r10
	bl _dgeq
	movhs r10, #2
_0202767C:
	cmp r10, #0
	ble _02027790
	ldr r0, [sp, #4]
	mov r4, #0
	cmp r0, #0
	ldr r0, [sp, #0x20]
	mov r2, r4
	add r0, r0, #1
	str r0, [sp, #0x20]
	ble _020276E8
	mov r0, #1
	add r1, sp, #0x214
	mvn r8, #0xff000000
_020276B0:
	cmp r4, #0
	ldr r3, [r1, r2, lsl #2]
	bne _020276D0
	cmp r3, #0
	rsbne r3, r3, #0x1000000
	strne r3, [r1, r2, lsl #2]
	movne r4, r0
	b _020276D8
_020276D0:
	sub r3, r8, r3
	str r3, [r1, r2, lsl #2]
_020276D8:
	ldr r3, [sp, #4]
	add r2, r2, #1
	cmp r2, r3
	blt _020276B0
_020276E8:
	ldr r0, [sp, #0x18]
	cmp r0, #0
	ble _02027730
	cmp r0, #1
	beq _02027708
	cmp r0, #2
	beq _02027714
	b _02027730
_02027708:
	add r2, sp, #0x214
	ldr r1, _02027EE0 ; =0x007FFFFF
	b _0202771C
_02027714:
	ldr r1, _02027EE4 ; =0x003FFFFF
	add r2, sp, #0x214
_0202771C:
	ldr r0, [sp, #4]
	add r2, r2, r0, lsl #2
	ldr r0, [r2, #-4]
	and r0, r0, r1
	str r0, [r2, #-4]
_02027730:
	cmp r10, #2
	bne _02027790
	mov r8, #0
	ldr r11, _02027EE8 ; =0x3FF00000
	mov r0, r8
	mov r1, r11
	mov r2, r6
	mov r3, r7
	bl _dsub
	cmp r4, #0
	mov r6, r0
	mov r7, r1
	beq _02027790
	ldr r2, [sp, #0x18]
	mov r0, r8
	mov r1, r11
	bl scalbn
	mov r2, r0
	mov r3, r1
	mov r0, r6
	mov r1, r7
	bl _dsub
	mov r6, r0
	mov r7, r1
_02027790:
	mov r4, #0
	mov r0, r4
	mov r1, r4
	mov r2, r6
	mov r3, r7
	bl _deq
	bne _0202790C
	ldr r0, [sp, #4]
	sub r2, r0, #1
	ldr r0, [sp, #0x24]
	cmp r2, r0
	blt _020277DC
	add r1, sp, #0x214
_020277C4:
	ldr r0, [r1, r2, lsl #2]
	sub r2, r2, #1
	orr r4, r4, r0
	ldr r0, [sp, #0x24]
	cmp r2, r0
	bge _020277C4
_020277DC:
	cmp r4, #0
	bne _0202790C
	ldr r0, [sp, #0x24]
	add r2, sp, #0x214
	sub r0, r0, #1
	ldr r1, [r2, r0, lsl #2]
	mov r0, #1
	str r0, [sp, #0x1c]
	cmp r1, #0
	bne _02027824
_02027804:
	ldr r0, [sp, #0x1c]
	ldr r1, [sp, #0x24]
	add r0, r0, #1
	str r0, [sp, #0x1c]
	sub r0, r1, r0
	ldr r0, [r2, r0, lsl #2]
	cmp r0, #0
	beq _02027804
_02027824:
	ldr r0, [sp, #4]
	add r10, r0, #1
	mov r1, r0
	ldr r0, [sp, #0x1c]
	add r0, r1, r0
	str r0, [sp, #8]
	cmp r10, r0
	bgt _020278F8
	ldr r1, [sp, #0x28c]
	ldr r0, [sp, #0xc]
	add r11, sp, #0x174
	add r0, r1, r0, lsl #2
	str r0, [sp, #0x2c]
	add r0, r11, r5, lsl #3
	str r0, [sp, #0x30]
_02027860:
	ldr r0, [sp, #0x2c]
	ldr r0, [r0, r10, lsl #2]
	bl _dflt
	mov r6, #0
	ldr r2, [sp, #0x30]
	cmp r5, #0
	str r0, [r2, r10, lsl #3]
	mov r0, r2
	add r0, r0, r10, lsl #3
	str r1, [r0, #4]
	mov r7, r6
	mov r8, r6
	blt _020278DC
	add r4, r5, r10
_02027898:
	add r0, r9, r6, lsl #3
	ldr r1, [r0, #4]
	sub r2, r4, r6
	add r3, r11, r2, lsl #3
	ldr r0, [r9, r6, lsl #3]
	ldmia r3, {r2, r3}
	bl _dmul
	mov r2, r0
	mov r3, r1
	mov r0, r7
	mov r1, r8
	bl _dadd
	add r6, r6, #1
	mov r7, r0
	mov r8, r1
	cmp r6, r5
	ble _02027898
_020278DC:
	add r0, sp, #0x34
	add r0, r0, r10, lsl #3
	stmia r0, {r7, r8}
	ldr r0, [sp, #8]
	add r10, r10, #1
	cmp r10, r0
	ble _02027860
_020278F8:
	ldr r1, [sp, #4]
	ldr r0, [sp, #0x1c]
	add r0, r1, r0
	str r0, [sp, #4]
	b _020274BC
_0202790C:
	mov r4, #0
	mov r0, r4
	mov r1, r4
	mov r2, r6
	mov r3, r7
	bl _deq
	bne _02027978
	ldr r0, [sp, #4]
	add r2, sp, #0x214
	sub r0, r0, #1
	ldr r1, [r2, r0, lsl #2]
	str r0, [sp, #4]
	ldr r0, [sp, #0x18]
	cmp r1, #0
	sub r0, r0, #0x18
	str r0, [sp, #0x18]
	bne _02027A48
_02027950:
	ldr r0, [sp, #4]
	sub r0, r0, #1
	ldr r1, [r2, r0, lsl #2]
	str r0, [sp, #4]
	ldr r0, [sp, #0x18]
	cmp r1, #0
	sub r0, r0, #0x18
	str r0, [sp, #0x18]
	beq _02027950
	b _02027A48
_02027978:
	ldr r2, [sp, #0x18]
	mov r0, r6
	mov r1, r7
	rsb r2, r2, #0
	bl scalbn
	ldr r6, _02027EEC ; =0x41700000
	mov r2, r4
	mov r3, r6
	mov r7, r0
	mov r8, r1
	bl _dgeq
	blo _02027A30
	mov r0, r4
	mov r2, r7
	mov r3, r8
	sub r1, r6, #0x3000000
	bl _dmul
	bl _dfix
	bl _dflt
	mov r5, r0
	mov r0, r4
	mov r4, r1
	mov r1, r6
	mov r2, r5
	mov r3, r4
	bl _dmul
	mov r2, r0
	mov r3, r1
	mov r0, r7
	mov r1, r8
	bl _dsub
	bl _dfix
	ldr r2, [sp, #0x18]
	mov r1, r4
	add r2, r2, #0x18
	str r2, [sp, #0x18]
	ldr r2, [sp, #4]
	add r4, sp, #0x214
	str r0, [r4, r2, lsl #2]
	add r2, r2, #1
	mov r0, r5
	str r2, [sp, #4]
	bl _dfix
	ldr r1, [sp, #4]
	str r0, [r4, r1, lsl #2]
	b _02027A48
_02027A30:
	mov r0, r7
	mov r1, r8
	bl _dfix
	ldr r1, [sp, #4]
	add r2, sp, #0x214
	str r0, [r2, r1, lsl #2]
_02027A48:
	ldr r4, _02027EE8 ; =0x3FF00000
	ldr r2, [sp, #0x18]
	mov r1, r4
	mov r0, #0
	bl scalbn
	ldr r6, [sp, #4]
	mov r7, r0
	mov r8, r1
	movs r0, r6
	bmi _02027ACC
	sub r4, r4, #0x1800000
	add r9, sp, #0x214
	add r5, sp, #0x34
	mov r11, #0
_02027A80:
	ldr r0, [r9, r6, lsl #2]
	bl _dflt
	mov r2, r0
	mov r3, r1
	mov r0, r7
	mov r1, r8
	bl _dmul
	str r0, [r5, r6, lsl #3]
	add r0, r5, r6, lsl #3
	str r1, [r0, #4]
	mov r0, r7
	mov r1, r8
	mov r2, r11
	mov r3, r4
	bl _dmul
	mov r7, r0
	mov r8, r1
	subs r6, r6, #1
	bpl _02027A80
_02027ACC:
	ldr r11, [sp, #4]
	movs r0, r11
	bmi _02027B60
	ldr r5, _02027EF0 ; =0x0208C300
_02027ADC:
	ldr r0, [sp, #4]
	mov r8, #0
	sub r6, r0, r11
	add r0, sp, #0x34
	mov r9, r8
	mov r7, r8
	add r4, r0, r11, lsl #3
	b _02027B38
_02027AFC:
	add r0, r5, r7, lsl #3
	ldr r1, [r0, #4]
	ldr r0, [r5, r7, lsl #3]
	add r2, r4, r7, lsl #3
	ldr r3, [r2, #4]
	ldr r2, [r4, r7, lsl #3]
	bl _dmul
	mov r2, r0
	mov r3, r1
	mov r0, r8
	mov r1, r9
	bl _dadd
	mov r8, r0
	mov r9, r1
	add r7, r7, #1
_02027B38:
	ldr r0, [sp, #0x24]
	cmp r7, r0
	bgt _02027B4C
	cmp r7, r6
	ble _02027AFC
_02027B4C:
	add r0, sp, #0xd4
	add r0, r0, r6, lsl #3
	stmia r0, {r8, r9}
	subs r11, r11, #1
	bpl _02027ADC
_02027B60:
	ldr r0, [sp, #0x288]
	add r4, sp, #0xd4
	cmp r0, #3
	addls pc, pc, r0, lsl #2
	b _02027EC4
_02027B74: ; jump table
	b _02027B84 ; case 0
	b _02027BF8 ; case 1
	b _02027BF8 ; case 2
	b _02027CEC ; case 3
_02027B84:
	ldr r0, [sp, #4]
	mov r2, #0
	mov r3, r2
	cmp r0, #0
	blt _02027BD0
_02027B98:
	ldr r0, [sp, #4]
	mov r1, r3
	add r5, r4, r0, lsl #3
	mov r0, r2
	ldr r2, [sp, #4]
	ldr r3, [r5, #4]
	ldr r2, [r4, r2, lsl #3]
	bl _dadd
	mov r2, r0
	ldr r0, [sp, #4]
	mov r3, r1
	subs r0, r0, #1
	str r0, [sp, #4]
	bpl _02027B98
_02027BD0:
	cmp r10, #0
	beq _02027BEC
	mov r0, #0
	mov r1, r0
	bl _dsub
	mov r2, r0
	mov r3, r1
_02027BEC:
	ldr r0, [sp]
	stmia r0, {r2, r3}
	b _02027EC4
_02027BF8:
	ldr r7, [sp, #4]
	mov r5, #0
	mov r6, r5
	movs r0, r7
	bmi _02027C30
_02027C0C:
	add r0, r4, r7, lsl #3
	ldmia r0, {r2, r3}
	mov r0, r5
	mov r1, r6
	bl _dadd
	mov r5, r0
	mov r6, r1
	subs r7, r7, #1
	bpl _02027C0C
_02027C30:
	cmp r10, #0
	moveq r0, r5
	moveq r1, r6
	beq _02027C54
	mov r0, #0
	mov r1, r0
	mov r2, r5
	mov r3, r6
	bl _dsub
_02027C54:
	ldr r2, [sp]
	mov r3, r6
	str r0, [r2]
	mov r0, r2
	str r1, [r0, #4]
	mov r2, r5
	ldr r0, [sp, #0xd4]
	ldr r1, [sp, #0xd8]
	add r5, sp, #0xd4
	bl _dsub
	mov r2, r0
	ldr r0, [sp, #4]
	mov r3, r1
	cmp r0, #1
	mov r6, #1
	blt _02027CC0
_02027C94:
	add r4, r5, r6, lsl #3
	mov r0, r2
	mov r1, r3
	ldmia r4, {r2, r3}
	bl _dadd
	mov r2, r0
	ldr r0, [sp, #4]
	add r6, r6, #1
	mov r3, r1
	cmp r6, r0
	ble _02027C94
_02027CC0:
	cmp r10, #0
	beq _02027CDC
	mov r0, #0
	mov r1, r0
	bl _dsub
	mov r2, r0
	mov r3, r1
_02027CDC:
	ldr r0, [sp]
	str r2, [r0, #8]
	str r3, [r0, #0xc]
	b _02027EC4
_02027CEC:
	ldr r5, [sp, #4]
	mov r0, r5
	cmp r0, #0
	ble _02027D5C
_02027CFC:
	add r3, r4, r5, lsl #3
	ldr r0, [r3, #-8]
	ldr r1, [r3, #-4]
	ldmia r3, {r2, r3}
	bl _dadd
	mov r6, r0
	add r8, r4, r5, lsl #3
	mov r7, r1
	ldr r0, [r8, #-8]
	ldr r1, [r8, #-4]
	mov r2, r6
	mov r3, r7
	bl _dsub
	mov r2, r0
	mov r3, r1
	ldmia r8, {r0, r1}
	bl _dadd
	stmia r8, {r0, r1}
	mov r0, r8
	str r6, [r0, #-8]
	sub r5, r5, #1
	str r7, [r0, #-4]
	cmp r5, #0
	bgt _02027CFC
_02027D5C:
	ldr r6, [sp, #4]
	add r5, sp, #0xd4
	mov r0, r6
	cmp r0, #1
	ble _02027DD0
_02027D70:
	add r3, r5, r6, lsl #3
	ldr r0, [r3, #-8]
	ldr r1, [r3, #-4]
	ldmia r3, {r2, r3}
	bl _dadd
	mov r4, r0
	add r8, r5, r6, lsl #3
	mov r7, r1
	ldr r0, [r8, #-8]
	ldr r1, [r8, #-4]
	mov r2, r4
	mov r3, r7
	bl _dsub
	mov r2, r0
	mov r3, r1
	ldmia r8, {r0, r1}
	bl _dadd
	stmia r8, {r0, r1}
	mov r0, r8
	str r4, [r0, #-8]
	sub r6, r6, #1
	str r7, [r0, #-4]
	cmp r6, #1
	bgt _02027D70
_02027DD0:
	ldr r0, [sp, #4]
	mov r6, #0
	mov r7, r6
	cmp r0, #2
	add r5, sp, #0xd4
	mov r4, r6
	blt _02027E24
_02027DEC:
	ldr r0, [sp, #4]
	add r1, r5, r0, lsl #3
	ldmia r1, {r2, r3}
	mov r0, r6
	mov r1, r7
	bl _dadd
	ldr r2, [sp, #4]
	mov r6, r0
	sub r2, r2, #1
	mov r0, r2
	str r2, [sp, #4]
	mov r7, r1
	cmp r0, #2
	bge _02027DEC
_02027E24:
	cmp r10, #0
	bne _02027E58
	ldr r4, [sp, #0xd4]
	ldr r5, [sp, #0xd8]
	ldr r0, [sp]
	ldr r2, [sp, #0xdc]
	stmia r0, {r4, r5}
	ldr r3, [sp, #0xe0]
	str r2, [r0, #8]
	str r3, [r0, #0xc]
	str r6, [r0, #0x10]
	str r7, [r0, #0x14]
	b _02027EC4
_02027E58:
	ldr r2, [sp, #0xd4]
	ldr r3, [sp, #0xd8]
	mov r0, r4
	mov r1, r4
	bl _dsub
	ldr r2, [sp]
	ldr r3, [sp, #0xe0]
	str r0, [r2]
	mov r0, r2
	str r1, [r0, #4]
	ldr r2, [sp, #0xdc]
	mov r0, r4
	mov r1, r4
	bl _dsub
	ldr r2, [sp]
	mov r3, r7
	str r0, [r2, #8]
	mov r0, r2
	str r1, [r0, #0xc]
	mov r0, r4
	mov r1, r4
	mov r2, r6
	bl _dsub
	ldr r2, [sp]
	str r0, [r2, #0x10]
	mov r0, r2
	str r1, [r0, #0x14]
_02027EC4:
	ldr r0, [sp, #0x20]
	and r0, r0, #7
	add sp, sp, #0x264
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
_02027ED4: .word 0x2AAAAAAB
_02027ED8: .word unk_0208C2F0
_02027EDC: .word 0x3E700000
_02027EE0: .word 0x007FFFFF
_02027EE4: .word 0x003FFFFF
_02027EE8: .word 0x3FF00000
_02027EEC: .word 0x41700000
_02027EF0: .word unk_0208C300
	arm_func_end __kernel_rem_pio2

	arm_func_start __kernel_sin
__kernel_sin: ; 0x02027EF4
	stmfd sp!, {r0, r1, r2, r3}
	stmfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, lr}
	sub sp, sp, #0xc
	ldr r0, [sp, #0x34]
	mov r10, r2
	bic r0, r0, #0x80000000
	mov r9, r3
	cmp r0, #0x3e400000
	bge _02027F40
	ldr r0, [sp, #0x30]
	ldr r1, [sp, #0x34]
	bl _dfix
	cmp r0, #0
	ldreq r0, [sp, #0x30]
	ldreq r1, [sp, #0x34]
	addeq sp, sp, #0xc
	ldmeqfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, lr}
	addeq sp, sp, #0x10
	bxeq lr
_02027F40:
	ldr r0, [sp, #0x30]
	ldr r1, [sp, #0x34]
	mov r2, r0
	mov r3, r1
	bl _dmul
	ldr r2, [sp, #0x30]
	ldr r3, [sp, #0x34]
	mov r5, r0
	mov r6, r1
	bl _dmul
	mov r4, r0
	mov r7, r1
	ldr r0, _0202813C ; =0x5ACFD57C
	ldr r1, _02028140 ; =0x3DE5D93A
	mov r2, r5
	mov r3, r6
	bl _dmul
	mov r2, r0
	mov r3, r1
	ldr r0, _02028144 ; =0x8A2B9CEB
	ldr r1, _02028148 ; =0xBE5AE5E6
	bl _dadd
	mov r2, r0
	mov r3, r1
	mov r0, r5
	mov r1, r6
	bl _dmul
	mov r2, r0
	mov r3, r1
	ldr r0, _0202814C ; =0x57B1FE7D
	ldr r1, _02028150 ; =0x3EC71DE3
	bl _dadd
	mov r2, r0
	mov r3, r1
	mov r0, r5
	mov r1, r6
	bl _dmul
	mov r2, r0
	mov r3, r1
	ldr r0, _02028154 ; =0x19C161D5
	ldr r1, _02028158 ; =0xBF2A01A0
	bl _dadd
	mov r2, r0
	mov r3, r1
	mov r0, r5
	mov r1, r6
	bl _dmul
	mov r2, r0
	mov r3, r1
	ldr r0, _0202815C ; =0x1110F8A6
	ldr r1, _02028160 ; =0x3F811111
	bl _dadd
	mov r11, r0
	mov r8, r1
	ldr r0, [sp, #0x40]
	cmp r0, #0
	bne _02028084
	mov r0, r5
	mov r1, r6
	mov r2, r11
	mov r3, r8
	bl _dmul
	mov r2, r0
	mov r3, r1
	ldr r0, _02028164 ; =0x55555549
	ldr r1, _02028168 ; =0xBFC55555
	bl _dadd
	mov r2, r0
	mov r3, r1
	mov r0, r4
	mov r1, r7
	bl _dmul
	mov r2, r0
	mov r3, r1
	ldr r0, [sp, #0x30]
	ldr r1, [sp, #0x34]
	bl _dadd
	add sp, sp, #0xc
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, lr}
	add sp, sp, #0x10
	bx lr
_02028084:
	ldr r1, _0202816C ; =0x3FE00000
	mov r2, r10
	mov r3, r9
	mov r0, #0
	bl _dmul
	str r0, [sp, #8]
	str r1, [sp, #4]
	mov r2, r11
	mov r3, r8
	mov r0, r4
	mov r1, r7
	bl _dmul
	mov r2, r0
	mov r3, r1
	ldr r0, [sp, #8]
	ldr r1, [sp, #4]
	bl _dsub
	mov r2, r0
	mov r3, r1
	mov r0, r5
	mov r1, r6
	bl _dmul
	mov r2, r10
	mov r3, r9
	bl _dsub
	mov r2, r4
	mov r4, r0
	mov r5, r1
	ldr r0, _02028164 ; =0x55555549
	ldr r1, _02028168 ; =0xBFC55555
	mov r3, r7
	bl _dmul
	mov r2, r0
	mov r3, r1
	mov r0, r4
	mov r1, r5
	bl _dsub
	mov r2, r0
	mov r3, r1
	ldr r0, [sp, #0x30]
	ldr r1, [sp, #0x34]
	bl _dsub
	add sp, sp, #0xc
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, lr}
	add sp, sp, #0x10
	bx lr
_0202813C: .word 0x5ACFD57C
_02028140: .word 0x3DE5D93A
_02028144: .word 0x8A2B9CEB
_02028148: .word 0xBE5AE5E6
_0202814C: .word 0x57B1FE7D
_02028150: .word 0x3EC71DE3
_02028154: .word 0x19C161D5
_02028158: .word 0xBF2A01A0
_0202815C: .word 0x1110F8A6
_02028160: .word 0x3F811111
_02028164: .word 0x55555549
_02028168: .word 0xBFC55555
_0202816C: .word 0x3FE00000
	arm_func_end __kernel_sin

	arm_func_start copysign
copysign: ; 0x02028170
	stmfd sp!, {r0, r1, r2, r3}
	ldr r1, [sp, #4]
	ldr r0, [sp, #0xc]
	bic r1, r1, #0x80000000
	and r0, r0, #0x80000000
	orr r1, r1, r0
	ldr r0, [sp]
	str r1, [sp, #4]
	add sp, sp, #0x10
	bx lr
	arm_func_end copysign

	arm_func_start fabs
fabs: ; 0x02028198
	stmfd sp!, {r0, r1, r2, r3}
	add r2, sp, #0
	ldr r1, [r2, #4]
	ldr r0, [sp]
	bic r1, r1, #0x80000000
	str r1, [r2, #4]
	add sp, sp, #0x10
	bx lr
	arm_func_end fabs

	arm_func_start floor
floor: ; 0x020281B8
	stmfd sp!, {r0, r1, r2, r3}
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, lr}
	ldr r0, _02028368 ; =0x000007FF
	ldr r6, [sp, #0x24]
	rsb r1, r0, #0x400
	and r2, r0, r6, asr #20
	add r7, r2, r1
	cmp r7, #0x14
	ldr r8, [sp, #0x20]
	bge _02028294
	cmp r7, #0
	bge _02028234
	ldr r2, [sp, #0x20]
	ldr r3, [sp, #0x24]
	ldr r0, _0202836C ; =0x8800759C
	ldr r1, _02028370 ; =0x7E37E43C
	bl _dadd
	mov r4, #0
	mov r2, r4
	mov r3, r4
	bl _dgr
	bls _0202834C
	cmp r6, #0
	movge r8, r4
	movge r6, r4
	bge _0202834C
	bic r0, r6, #0x80000000
	orrs r0, r0, r8
	movne r8, r4
	ldrne r6, _02028374 ; =0xBFF00000
	b _0202834C
_02028234:
	ldr r4, _02028378 ; =0x000FFFFF
	and r0, r6, r4, asr r7
	orrs r0, r8, r0
	ldreq r0, [sp, #0x20]
	ldreq r1, [sp, #0x24]
	ldmeqfd sp!, {r3, r4, r5, r6, r7, r8, r9, lr}
	addeq sp, sp, #0x10
	bxeq lr
	ldr r2, [sp, #0x20]
	ldr r3, [sp, #0x24]
	ldr r0, _0202836C ; =0x8800759C
	ldr r1, _02028370 ; =0x7E37E43C
	bl _dadd
	mov r2, #0
	mov r3, r2
	bl _dgr
	bls _0202834C
	cmp r6, #0
	movlt r0, #0x100000
	addlt r6, r6, r0, asr r7
	mvn r0, r4, asr r7
	and r6, r6, r0
	mov r8, #0
	b _0202834C
_02028294:
	cmp r7, #0x33
	ble _020282D4
	cmp r7, #0x400
	ldrne r0, [sp, #0x20]
	ldrne r1, [sp, #0x24]
	ldmnefd sp!, {r3, r4, r5, r6, r7, r8, r9, lr}
	addne sp, sp, #0x10
	bxne lr
	ldr r0, [sp, #0x20]
	ldr r1, [sp, #0x24]
	mov r2, r0
	mov r3, r1
	bl _dadd
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, lr}
	add sp, sp, #0x10
	bx lr
_020282D4:
	sub r5, r0, #0x800
	sub r4, r7, #0x14
	tst r8, r5, lsr r4
	mov r9, r8
	ldreq r0, [sp, #0x20]
	ldreq r1, [sp, #0x24]
	ldmeqfd sp!, {r3, r4, r5, r6, r7, r8, r9, lr}
	addeq sp, sp, #0x10
	bxeq lr
	ldr r2, [sp, #0x20]
	ldr r3, [sp, #0x24]
	ldr r0, _0202836C ; =0x8800759C
	ldr r1, _02028370 ; =0x7E37E43C
	bl _dadd
	mov r2, #0
	mov r3, r2
	bl _dgr
	bls _0202834C
	cmp r6, #0
	bge _02028344
	cmp r7, #0x14
	addeq r6, r6, #1
	beq _02028344
	rsb r0, r7, #0x34
	mov r1, #1
	add r8, r8, r1, lsl r0
	cmp r8, r9
	addlo r6, r6, #1
_02028344:
	mvn r0, r5, lsr r4
	and r8, r8, r0
_0202834C:
	mov r0, r8
	mov r1, r6
	str r6, [sp, #0x24]
	str r8, [sp, #0x20]
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, lr}
	add sp, sp, #0x10
	bx lr
_02028368: .word 0x000007FF
_0202836C: .word 0x8800759C
_02028370: .word 0x7E37E43C
_02028374: .word 0xBFF00000
_02028378: .word 0x000FFFFF
	arm_func_end floor

	arm_func_start frexp
frexp: ; 0x0202837C
	stmfd sp!, {r0, r1, r2, r3}
	stmfd sp!, {r3, r4, r5, lr}
	ldr r1, [sp, #0x14]
	ldr r0, _0202842C ; =0x7FF00000
	bic r3, r1, #0x80000000
	mov r4, r2
	mov r5, #0
	str r5, [r4]
	cmp r3, r0
	ldr r0, [sp, #0x10]
	bge _020283B0
	orrs r0, r3, r0
	bne _020283C4
_020283B0:
	ldr r0, [sp, #0x10]
	ldr r1, [sp, #0x14]
	ldmfd sp!, {r3, r4, r5, lr}
	add sp, sp, #0x10
	bx lr
_020283C4:
	cmp r3, #0x100000
	bge _020283F4
	ldr r0, [sp, #0x10]
	ldr r1, [sp, #0x14]
	ldr r3, _02028430 ; =0x43500000
	mov r2, r5
	bl _dmul
	sub r2, r5, #0x36
	str r0, [sp, #0x10]
	str r1, [sp, #0x14]
	str r2, [r4]
	bic r3, r1, #0x80000000
_020283F4:
	ldr r2, _02028434 ; =0x800FFFFF
	ldr r0, _02028438 ; =0xFFFFFC02
	and r1, r1, r2
	orr r1, r1, #0xfe00000
	orr r1, r1, #0x30000000
	ldr r2, [r4]
	add r0, r0, r3, asr #20
	add r2, r2, r0
	ldr r0, [sp, #0x10]
	str r2, [r4]
	str r1, [sp, #0x14]
	ldmfd sp!, {r3, r4, r5, lr}
	add sp, sp, #0x10
	bx lr
_0202842C: .word 0x7FF00000
_02028430: .word 0x43500000
_02028434: .word 0x800FFFFF
_02028438: .word 0xFFFFFC02
	arm_func_end frexp

	arm_func_start ldexp
ldexp: ; 0x0202843C
	stmfd sp!, {r0, r1, r2, r3}
	stmfd sp!, {r4, r5, r6, lr}
	ldr r0, [sp, #0x10]
	ldr r1, [sp, #0x14]
	mov r4, r2
	bl __fpclassifyd
	cmp r0, #2
	ble _02028478
	mov r6, #0
	ldr r2, [sp, #0x10]
	ldr r3, [sp, #0x14]
	mov r0, r6
	mov r1, r6
	bl _deq
	bne _0202848C
_02028478:
	ldr r0, [sp, #0x10]
	ldr r1, [sp, #0x14]
	ldmfd sp!, {r4, r5, r6, lr}
	add sp, sp, #0x10
	bx lr
_0202848C:
	ldr r3, [sp, #0x14]
	ldr r5, _02028670 ; =0x7FF00000
	ldr r1, [sp, #0x10]
	and r0, r3, r5
	movs r12, r0, asr #0x14
	bne _02028514
	bic r0, r3, #0x80000000
	orrs r0, r1, r0
	ldreq r0, [sp, #0x10]
	ldreq r1, [sp, #0x14]
	ldmeqfd sp!, {r4, r5, r6, lr}
	addeq sp, sp, #0x10
	bxeq lr
	ldr r0, [sp, #0x10]
	ldr r1, [sp, #0x14]
	ldr r3, _02028674 ; =0x43500000
	mov r2, r6
	bl _dmul
	mov r3, r1
	and r5, r3, r5
	ldr r1, _02028678 ; =0xFFFF3CB0
	mov r2, r0
	mov r0, r5, asr #0x14
	str r2, [sp, #0x10]
	str r3, [sp, #0x14]
	cmp r4, r1
	sub r12, r0, #0x36
	bge _02028514
	ldr r0, _0202867C ; =0xC2F8F359
	ldr r1, _02028680 ; =0x01A56E1F
	bl _dmul
	ldmfd sp!, {r4, r5, r6, lr}
	add sp, sp, #0x10
	bx lr
_02028514:
	ldr r0, _02028684 ; =0x000007FF
	cmp r12, r0
	bne _02028540
	ldr r0, [sp, #0x10]
	ldr r1, [sp, #0x14]
	mov r2, r0
	mov r3, r1
	bl _dadd
	ldmfd sp!, {r4, r5, r6, lr}
	add sp, sp, #0x10
	bx lr
_02028540:
	add r2, r12, r4
	sub r0, r0, #1
	cmp r2, r0
	ble _0202858C
	ldr r5, _02028688 ; =0x8800759C
	ldr r4, _0202868C ; =0x7E37E43C
	ldr r2, [sp, #0x10]
	ldr r3, [sp, #0x14]
	mov r0, r5
	mov r1, r4
	bl copysign
	mov r2, r0
	mov r3, r1
	mov r0, r5
	mov r1, r4
	bl _dmul
	ldmfd sp!, {r4, r5, r6, lr}
	add sp, sp, #0x10
	bx lr
_0202858C:
	cmp r2, #0
	ble _020285B4
	ldr r1, _02028690 ; =0x800FFFFF
	ldr r0, [sp, #0x10]
	and r1, r3, r1
	orr r1, r1, r2, lsl #20
	str r1, [sp, #0x14]
	ldmfd sp!, {r4, r5, r6, lr}
	add sp, sp, #0x10
	bx lr
_020285B4:
	cmn r2, #0x36
	bgt _02028640
	ldr r0, _02028694 ; =0x0000C350
	cmp r4, r0
	ble _02028604
	ldr r5, _02028688 ; =0x8800759C
	ldr r4, _0202868C ; =0x7E37E43C
	ldr r2, [sp, #0x10]
	ldr r3, [sp, #0x14]
	mov r0, r5
	mov r1, r4
	bl copysign
	mov r2, r0
	mov r3, r1
	mov r0, r5
	mov r1, r4
	bl _dmul
	ldmfd sp!, {r4, r5, r6, lr}
	add sp, sp, #0x10
	bx lr
_02028604:
	ldr r5, _0202867C ; =0xC2F8F359
	ldr r4, _02028680 ; =0x01A56E1F
	ldr r2, [sp, #0x10]
	ldr r3, [sp, #0x14]
	mov r0, r5
	mov r1, r4
	bl copysign
	mov r2, r0
	mov r3, r1
	mov r0, r5
	mov r1, r4
	bl _dmul
	ldmfd sp!, {r4, r5, r6, lr}
	add sp, sp, #0x10
	bx lr
_02028640:
	ldr r0, _02028690 ; =0x800FFFFF
	add r1, r2, #0x36
	and r0, r3, r0
	orr r3, r0, r1, lsl #20
	ldr r2, [sp, #0x10]
	ldr r1, _02028698 ; =0x3C900000
	mov r0, #0
	str r3, [sp, #0x14]
	bl _dmul
	ldmfd sp!, {r4, r5, r6, lr}
	add sp, sp, #0x10
	bx lr
_02028670: .word 0x7FF00000
_02028674: .word 0x43500000
_02028678: .word 0xFFFF3CB0
_0202867C: .word 0xC2F8F359
_02028680: .word 0x01A56E1F
_02028684: .word 0x000007FF
_02028688: .word 0x8800759C
_0202868C: .word 0x7E37E43C
_02028690: .word 0x800FFFFF
_02028694: .word 0x0000C350
_02028698: .word 0x3C900000
	arm_func_end ldexp

	arm_func_start sin
sin: ; 0x0202869C
	stmfd sp!, {r0, r1, r2, r3}
	stmfd sp!, {r3, r4, lr}
	sub sp, sp, #0x14
	ldr r1, [sp, #0x24]
	ldr r0, _0202880C ; =0x3FE921FB
	bic r1, r1, #0x80000000
	cmp r1, r0
	mov r4, #0
	bgt _020286E8
	ldr r0, [sp, #0x20]
	ldr r1, [sp, #0x24]
	mov r2, r4
	mov r3, r4
	str r4, [sp]
	bl __kernel_sin
	add sp, sp, #0x14
	ldmfd sp!, {r3, r4, lr}
	add sp, sp, #0x10
	bx lr
_020286E8:
	ldr r0, _02028810 ; =0x7FF00000
	cmp r1, r0
	blt _02028718
	ldr r0, [sp, #0x20]
	ldr r1, [sp, #0x24]
	mov r2, r0
	mov r3, r1
	bl _dsub
	add sp, sp, #0x14
	ldmfd sp!, {r3, r4, lr}
	add sp, sp, #0x10
	bx lr
_02028718:
	ldr r0, [sp, #0x20]
	ldr r1, [sp, #0x24]
	add r2, sp, #4
	bl __ieee754_rem_pio2
	ands r0, r0, #3
	beq _02028744
	cmp r0, #1
	beq _02028770
	cmp r0, #2
	beq _02028794
	b _020287D4
_02028744:
	mov r0, #1
	str r0, [sp]
	ldr r0, [sp, #4]
	ldr r1, [sp, #8]
	ldr r2, [sp, #0xc]
	ldr r3, [sp, #0x10]
	bl __kernel_sin
	add sp, sp, #0x14
	ldmfd sp!, {r3, r4, lr}
	add sp, sp, #0x10
	bx lr
_02028770:
	ldr r0, [sp, #4]
	ldr r1, [sp, #8]
	ldr r2, [sp, #0xc]
	ldr r3, [sp, #0x10]
	bl __kernel_cos
	add sp, sp, #0x14
	ldmfd sp!, {r3, r4, lr}
	add sp, sp, #0x10
	bx lr
_02028794:
	mov r0, #1
	str r0, [sp]
	ldr r0, [sp, #4]
	ldr r1, [sp, #8]
	ldr r2, [sp, #0xc]
	ldr r3, [sp, #0x10]
	bl __kernel_sin
	mov r2, r0
	mov r3, r1
	mov r0, r4
	mov r1, r4
	bl _dsub
	add sp, sp, #0x14
	ldmfd sp!, {r3, r4, lr}
	add sp, sp, #0x10
	bx lr
_020287D4:
	ldr r0, [sp, #4]
	ldr r1, [sp, #8]
	ldr r2, [sp, #0xc]
	ldr r3, [sp, #0x10]
	bl __kernel_cos
	mov r2, r0
	mov r3, r1
	mov r0, r4
	mov r1, r4
	bl _dsub
	add sp, sp, #0x14
	ldmfd sp!, {r3, r4, lr}
	add sp, sp, #0x10
	bx lr
_0202880C: .word 0x3FE921FB
_02028810: .word 0x7FF00000
	arm_func_end sin

	arm_func_start log
log: ; 0x02028814
	ldr r12, _0202881C ; =__ieee754_log
	bx r12
_0202881C: .word __ieee754_log
	arm_func_end log

	arm_func_start pow
pow: ; 0x02028820
	ldr r12, _02028828 ; =__ieee754_pow
	bx r12
_02028828: .word __ieee754_pow
	arm_func_end pow

	arm_func_start FUN_0202882c
FUN_0202882c: ; 0x0202882C
	stmfd sp!, {r0, r1, r2, r3}
	stmfd sp!, {r3, r4, r5, lr}
	sub sp, sp, #8
	mov r5, r0
	mov r4, r1
	str r4, [r5]
	add r1, sp, #0x20
	mov r0, #0x10
	str r4, [sp]
	str r1, [sp, #4]
	bl _Znwm
	cmp r0, #0
	beq _02028878
	mov r2, #1
	str r2, [r0, #4]
	ldr r1, _020288A0 ; =0x0208F484
	str r2, [r0, #8]
	str r1, [r0]
	str r4, [r0, #0xc]
_02028878:
	str r0, [r5, #4]
	mov r1, #0
	add r0, sp, #0
	str r1, [sp]
	bl FUN_0202891c
	mov r0, r5
	add sp, sp, #8
	ldmfd sp!, {r3, r4, r5, lr}
	add sp, sp, #0x10
	bx lr
_020288A0: .word unk_0208F484
	arm_func_end FUN_0202882c

	arm_func_start FUN_020288a4
FUN_020288a4: ; 0x020288A4
	stmfd sp!, {r4, lr}
	mov r4, r0
	mov r0, r1
	ldr r1, _020288C8 ; =0x0208F468
	bl _ZNKSt9type_infoeqERKS_
	cmp r0, #0
	addne r0, r4, #0xc
	moveq r0, #0
	ldmfd sp!, {r4, pc}
_020288C8: .word unk_0208F468
	arm_func_end FUN_020288a4

	arm_func_start FUN_020288cc
FUN_020288cc: ; 0x020288CC
	ldr r0, [r0, #0xc]
	ldr r12, _020288D8 ; =_ZdaPv
	bx r12
_020288D8: .word _ZdaPv
	arm_func_end FUN_020288cc

	arm_func_start FUN_020288dc
FUN_020288dc: ; 0x020288DC
	stmfd sp!, {r3, r4, r11, lr}
	sub sp, sp, #0x18
	mov r11, sp
	mov r4, r0
	ldr r0, [r4, #4]
	cmp r0, #0
	beq _020288FC
	bl FUN_02028f44
_020288FC:
	add sp, r11, #0x18
	mov r0, r4
	ldmfd sp!, {r3, r4, r11, pc}
	add r0, r11, #0
	bl __unexpected
_02028910:
	b _02028910
	add sp, r11, #0x18
	ldmfd sp!, {r3, r4, r11, pc}
	arm_func_end FUN_020288dc

	arm_func_start FUN_0202891c
FUN_0202891c: ; 0x0202891C
	stmfd sp!, {r4, lr}
	mov r4, r0
	ldr r0, [r4]
	cmp r0, #0
	beq _02028934
	bl _ZdaPv
_02028934:
	mov r0, r4
	ldmfd sp!, {r4, pc}
	arm_func_end FUN_0202891c

	arm_func_start FUN_0202893c
FUN_0202893c: ; 0x0202893C
	stmfd sp!, {r4, lr}
	mov r4, r0
	bl _ZdlPv
	mov r0, r4
	ldmfd sp!, {r4, pc}
	arm_func_end FUN_0202893c

	arm_func_start FUN_02028950
FUN_02028950: ; 0x02028950
	bx lr
	arm_func_end FUN_02028950

	arm_func_start FUN_02028954
FUN_02028954: ; 0x02028954
	ldr r0, [r0, #4]
	bx lr
	arm_func_end FUN_02028954

	arm_func_start FUN_0202895c
FUN_0202895c: ; 0x0202895C
	stmfd sp!, {r4, lr}
	mov r4, r0
	ldr r0, [r4]
	mov r0, r0, lsl #0x1f
	movs r0, r0, lsr #0x1f
	beq _0202897C
	ldr r0, [r4, #8]
	bl _ZdlPv
_0202897C:
	mov r0, r4
	ldmfd sp!, {r4, pc}
	arm_func_end FUN_0202895c

	arm_func_start FUN_02028984
FUN_02028984: ; 0x02028984
	stmfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, lr}
	sub sp, sp, #0x1c
	ldr r4, [r3]
	mov r10, r0
	mov r0, r4, lsl #0x1f
	movs r0, r0, lsr #0x1f
	ldreqb r0, [r3]
	addeq r4, r3, #1
	mov r9, r1
	moveq r0, r0, lsl #0x18
	moveq r5, r0, lsr #0x19
	ldrne r5, [r3, #4]
	ldr r0, [sp, #0x40]
	ldrne r4, [r3, #8]
	mov r8, r2
	cmp r0, r5
	bls _02028A30
	ldr r11, _02028A84 ; =0x0208F610
	ldr r1, _02028A88 ; =0x0208F5CC
	add r7, sp, #0x10
	mov r0, r11
	str r1, [sp, #0x10]
	add r6, sp, #0x14
	bl strlen
	add r0, r0, #1
	rsb r0, r0, r0, lsl #1
	bl _Znam
	mov r1, #0
	sub r2, sp, #4
	strb r1, [r2]
	mov r1, r0
	ldr r2, [r2]
	mov r0, r6
	bl FUN_0202882c
	ldr r0, [r6]
	mov r1, r11
	bl strcpy
	ldr r3, _02028A8C ; =0x0208F5A4
	ldr r0, _02028A90 ; =0x0208F62C
	ldr r2, _02028A94 ; =FUN_02028f0c
	mov r1, r7
	str r3, [sp, #0x10]
	bl __throw
_02028A30:
	ldr r2, [sp, #0x40]
	ldr r0, [sp, #0x44]
	sub r1, r5, r2
	cmp r1, r0
	addlo r0, sp, #0xc
	str r1, [sp, #0xc]
	add r4, r4, r2
	addhs r0, sp, #0x44
	ldr r0, [r0]
	ldrb r5, [sp, #9]
	str r0, [sp, #0x44]
	add r0, r4, r0
	str r0, [sp]
	mov r0, r10
	mov r1, r9
	mov r2, r8
	mov r3, r4
	strb r5, [sp, #4]
	bl FUN_02028a98
	add sp, sp, #0x1c
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
_02028A84: .word unk_0208F610
_02028A88: .word unk_0208F5CC
_02028A8C: .word unk_0208F5A4
_02028A90: .word unk_0208F62C
_02028A94: .word FUN_02028f0c
	arm_func_end FUN_02028984

	arm_func_start FUN_02028a98
FUN_02028a98: ; 0x02028A98
	stmfd sp!, {r0, r1, r2, r3}
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, lr}
	sub sp, sp, #0x48
	mov r5, r0
	ldr r0, [r5]
	mov r4, r1
	mov r0, r0, lsl #0x1f
	movs r0, r0, lsr #0x1f
	movne r0, #1
	strne r0, [sp, #4]
	moveq r0, #0
	streq r0, [sp, #4]
	ldr r0, [sp, #4]
	str r3, [sp]
	cmp r0, #0
	ldmneia r5, {r0, r7}
	movne r0, r0, lsr #1
	ldr r11, [sp, #0x80]
	ldrne r6, [r5, #8]
	strne r0, [sp, #0x18]
	bne _02028B04
	ldrb r1, [r5]
	mov r0, #0xb
	str r0, [sp, #0x18]
	mov r0, r1, lsl #0x18
	add r6, r5, #1
	mov r7, r0, lsr #0x19
_02028B04:
	cmp r4, r7
	bls _02028B74
	ldr r10, _02028E0C ; =0x0208F610
	ldr r1, _02028E10 ; =0x0208F5CC
	add r9, sp, #0x3c
	mov r0, r10
	str r1, [sp, #0x3c]
	add r8, sp, #0x40
	bl strlen
	add r0, r0, #1
	rsb r0, r0, r0, lsl #1
	bl _Znam
	mov r1, #0
	sub r2, sp, #4
	strb r1, [r2]
	mov r1, r0
	ldr r2, [r2]
	mov r0, r8
	bl FUN_0202882c
	ldr r0, [r8]
	mov r1, r10
	bl strcpy
	ldr r3, _02028E14 ; =0x0208F5A4
	ldr r0, _02028E18 ; =0x0208F62C
	ldr r2, _02028E1C ; =FUN_02028f0c
	mov r1, r9
	str r3, [sp, #0x3c]
	bl __throw
_02028B74:
	ldr r0, [sp, #0x78]
	sub r1, r7, r4
	cmp r1, r0
	ldr r0, [sp]
	str r1, [sp, #0x20]
	addlo r1, sp, #0x20
	addhs r1, sp, #0x78
	sub r9, r11, r0
	mvn r0, #0x80000001
	cmp r9, r0
	ldr r8, [r1]
	bhi _02028BB4
	sub r1, r7, r8
	sub r0, r0, r9
	cmp r1, r0
	bls _02028C20
_02028BB4:
	ldr r1, _02028E10 ; =0x0208F5CC
	ldr r0, _02028E20 ; =0x0208F664
	str r1, [sp, #0x30]
	add r1, sp, #0x34
	add r10, sp, #0x30
	str r1, [sp, #0x10]
	bl strlen
	add r0, r0, #1
	rsb r0, r0, r0, lsl #1
	bl _Znam
	mov r2, #0
	sub r3, sp, #4
	mov r1, r0
	strb r2, [r3]
	ldr r0, [sp, #0x10]
	ldr r2, [r3]
	bl FUN_0202882c
	ldr r0, [sp, #0x10]
	ldr r1, _02028E20 ; =0x0208F664
	ldr r0, [r0]
	bl strcpy
	ldr r1, _02028E24 ; =0x0208F5B8
	ldr r0, _02028E28 ; =0x0208F5D8
	ldr r2, _02028E2C ; =FUN_02028ed4
	str r1, [sp, #0x30]
	mov r1, r10
	bl __throw
_02028C20:
	sub r0, r7, r8
	add r10, r9, r0
	ldr r0, [sp, #0x18]
	add r1, r4, r8
	cmp r10, r0
	sub r0, r7, r1
	str r0, [sp, #0x14]
	blo _02028D18
	ldr r0, [sp, #0x18]
	add r1, r10, #1
	add r0, r0, #0xf
	bic r7, r0, #0xf
	cmp r7, r1
	bhs _02028C6C
_02028C58:
	mov r0, r7, lsl #1
	add r0, r0, #0xf
	bic r7, r0, #0xf
	cmp r7, r1
	blo _02028C58
_02028C6C:
	mov r0, r7
	bl _Znwm
	str r0, [sp, #0xc]
	cmp r4, #0
	beq _02028C8C
	mov r1, r6
	mov r2, r4
	bl memcpy
_02028C8C:
	ldr r0, [sp, #0xc]
	ldr r1, [sp]
	add r0, r0, r4
	sub r2, r11, r1
	str r0, [sp, #8]
	bl memmove
	ldr r0, [sp, #0x14]
	cmp r0, #0
	beq _02028CC8
	mov r2, r0
	ldr r0, [sp, #8]
	add r1, r6, r4
	add r0, r0, r9
	add r1, r1, r8
	bl memcpy
_02028CC8:
	ldr r1, _02028E30 ; =0x0208F534
	ldr r0, [sp, #4]
	ldrb r1, [r1, #1]
	cmp r0, #0
	ldr r0, [sp, #0xc]
	strb r1, [r0, r10]
	ldreq r0, [r5]
	biceq r0, r0, #1
	orreq r0, r0, #1
	streq r0, [r5]
	beq _02028CFC
	mov r0, r6
	bl _ZdlPv
_02028CFC:
	ldr r0, [sp, #0xc]
	ldr r1, [r5]
	str r0, [r5, #8]
	and r0, r1, #1
	orr r0, r0, r7, lsl #1
	stmia r5, {r0, r10}
	b _02028DF8
_02028D18:
	mov r1, #0
	add r0, sp, #0x24
	mov r3, r1
_02028D24:
	str r3, [r0, r1, lsl #2]
	add r1, r1, #1
	cmp r1, #3
	blo _02028D24
	ldr r0, [sp, #0x14]
	cmp r0, #0
	beq _02028D8C
	add r0, r6, r4
	add r0, r0, r9
	cmp r0, r11
	bhs _02028D8C
	add r0, r6, r7
	cmp r11, r0
	bhi _02028D8C
	add r7, sp, #0x24
	ldr r1, [sp]
	mov r0, r7
	mov r2, r11
	bl FUN_02028e34
	ldr r0, [sp, #0x24]
	mov r0, r0, lsl #0x1f
	movs r0, r0, lsr #0x1f
	addeq r0, r7, #1
	streq r0, [sp]
	ldrne r0, [r7, #8]
	strne r0, [sp]
_02028D8C:
	ldr r0, [sp, #0x14]
	cmp r0, #0
	beq _02028DAC
	add r1, r6, r4
	mov r2, r0
	add r0, r1, r9
	add r1, r1, r8
	bl memmove
_02028DAC:
	ldr r1, [sp]
	mov r2, r9
	add r0, r6, r4
	bl memmove
	ldr r0, [sp, #4]
	ldr r1, _02028E30 ; =0x0208F534
	cmp r0, #0
	ldrb r0, [r1]
	strb r0, [r6, r10]
	strne r10, [r5, #4]
	bne _02028DF0
	ldrb r1, [r5]
	and r0, r10, #0xff
	mov r0, r0, lsl #0x19
	bic r1, r1, #0xfe
	orr r0, r1, r0, lsr #24
	strb r0, [r5]
_02028DF0:
	add r0, sp, #0x24
	bl FUN_0202895c
_02028DF8:
	mov r0, r5
	add sp, sp, #0x48
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, lr}
	add sp, sp, #0x10
	bx lr
_02028E0C: .word unk_0208F610
_02028E10: .word unk_0208F5CC
_02028E14: .word unk_0208F5A4
_02028E18: .word unk_0208F62C
_02028E1C: .word FUN_02028f0c
_02028E20: .word unk_0208F664
_02028E24: .word unk_0208F5B8
_02028E28: .word unk_0208F5D8
_02028E2C: .word FUN_02028ed4
_02028E30: .word unk_0208F534
	arm_func_end FUN_02028a98

	arm_func_start FUN_02028e34
FUN_02028e34: ; 0x02028E34
	stmfd sp!, {r3, lr}
	sub sp, sp, #8
	ldr r12, [r0]
	mov r3, r1
	mov r1, r12, lsl #0x1f
	movs r1, r1, lsr #0x1f
	ldreqb r1, [r0]
	moveq r1, r1, lsl #0x18
	moveq r12, r1, lsr #0x19
	ldrne r12, [r0, #4]
	mov r1, #0
	str r2, [sp]
	mov r2, r12
	str r1, [sp, #4]
	bl FUN_02028e78
	add sp, sp, #8
	ldmfd sp!, {r3, pc}
	arm_func_end FUN_02028e34

	arm_func_start FUN_02028e78
FUN_02028e78: ; 0x02028E78
	stmdb sp!, {lr}
	sub sp, sp, #0xc
	ldr lr, [sp, #0x10]
	ldrb r12, [sp, #8]
	str lr, [sp]
	strb r12, [sp, #4]
	bl FUN_02028a98
	add sp, sp, #0xc
	ldmia sp!, {pc}
	arm_func_end FUN_02028e78

	arm_func_start FUN_02028e9c
FUN_02028e9c: ; 0x02028E9C
	stmfd sp!, {r4, lr}
	mov r4, r0
	add r0, r4, #4
	bl FUN_020288dc
	mov r0, r4
	ldmfd sp!, {r4, pc}
	arm_func_end FUN_02028e9c

	arm_func_start FUN_02028eb4
FUN_02028eb4: ; 0x02028EB4
	stmfd sp!, {r4, lr}
	mov r4, r0
	add r0, r4, #4
	bl FUN_020288dc
	mov r0, r4
	bl _ZdlPv
	mov r0, r4
	ldmfd sp!, {r4, pc}
	arm_func_end FUN_02028eb4

	arm_func_start FUN_02028ed4
FUN_02028ed4: ; 0x02028ED4
	stmfd sp!, {r4, lr}
	mov r4, r0
	add r0, r4, #4
	bl FUN_020288dc
	mov r0, r4
	ldmfd sp!, {r4, pc}
	arm_func_end FUN_02028ed4

	arm_func_start FUN_02028eec
FUN_02028eec: ; 0x02028EEC
	stmfd sp!, {r4, lr}
	mov r4, r0
	add r0, r4, #4
	bl FUN_020288dc
	mov r0, r4
	bl _ZdlPv
	mov r0, r4
	ldmfd sp!, {r4, pc}
	arm_func_end FUN_02028eec

	arm_func_start FUN_02028f0c
FUN_02028f0c: ; 0x02028F0C
	stmfd sp!, {r4, lr}
	mov r4, r0
	add r0, r4, #4
	bl FUN_020288dc
	mov r0, r4
	ldmfd sp!, {r4, pc}
	arm_func_end FUN_02028f0c

	arm_func_start FUN_02028f24
FUN_02028f24: ; 0x02028F24
	stmfd sp!, {r4, lr}
	mov r4, r0
	add r0, r4, #4
	bl FUN_020288dc
	mov r0, r4
	bl _ZdlPv
	mov r0, r4
	ldmfd sp!, {r4, pc}
	arm_func_end FUN_02028f24

	arm_func_start FUN_02028f44
FUN_02028f44: ; 0x02028F44
	stmfd sp!, {r4, lr}
	mov r4, r0
	ldr r1, [r4, #4]
	subs r1, r1, #1
	str r1, [r4, #4]
	ldmnefd sp!, {r4, pc}
	ldr r1, [r0]
	ldr r1, [r1, #0xc]
	blx r1
	mov r0, r4
	bl FUN_02028f74
	ldmfd sp!, {r4, pc}
	arm_func_end FUN_02028f44

	arm_func_start FUN_02028f74
FUN_02028f74: ; 0x02028F74
	stmfd sp!, {r3, lr}
	ldr r1, [r0, #8]
	subs r1, r1, #1
	str r1, [r0, #8]
	ldmnefd sp!, {r3, pc}
	cmp r0, #0
	ldmeqfd sp!, {r3, pc}
	ldr r1, [r0]
	ldr r1, [r1, #4]
	blx r1
	ldmfd sp!, {r3, pc}
	arm_func_end FUN_02028f74

	.rodata
	.global unk_0208BFB0
unk_0208BFB0:
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.global unk_0208BFB8
unk_0208BFB8:
	.byte 0x00, 0x01, 0x02, 0x03, 0x04, 0x05, 0x06, 0x07
	.byte 0x08, 0x09, 0x0A, 0x0B, 0x0C, 0x0D, 0x0E, 0x0F, 0x10, 0x11, 0x12, 0x13, 0x14, 0x15, 0x16, 0x17
	.byte 0x18, 0x19, 0x1A, 0x1B, 0x1C, 0x1D, 0x1E, 0x1F, 0x20, 0x21, 0x22, 0x23, 0x24, 0x25, 0x26, 0x27
	.byte 0x28, 0x29, 0x2A, 0x2B, 0x2C, 0x2D, 0x2E, 0x2F, 0x30, 0x31, 0x32, 0x33, 0x34, 0x35, 0x36, 0x37
	.byte 0x38, 0x39, 0x3A, 0x3B, 0x3C, 0x3D, 0x3E, 0x3F, 0x40, 0x41, 0x42, 0x43, 0x44, 0x45, 0x46, 0x47
	.byte 0x48, 0x49, 0x4A, 0x4B, 0x4C, 0x4D, 0x4E, 0x4F, 0x50, 0x51, 0x52, 0x53, 0x54, 0x55, 0x56, 0x57
	.byte 0x58, 0x59, 0x5A, 0x5B, 0x5C, 0x5D, 0x5E, 0x5F, 0x60, 0x41, 0x42, 0x43, 0x44, 0x45, 0x46, 0x47
	.byte 0x48, 0x49, 0x4A, 0x4B, 0x4C, 0x4D, 0x4E, 0x4F, 0x50, 0x51, 0x52, 0x53, 0x54, 0x55, 0x56, 0x57
	.byte 0x58, 0x59, 0x5A, 0x7B, 0x7C, 0x7D, 0x7E, 0x7F
	.global __ctype_mapC
__ctype_mapC:
	.byte 0x04, 0x00, 0x04, 0x00, 0x04, 0x00, 0x04, 0x00
	.byte 0x04, 0x00, 0x04, 0x00, 0x04, 0x00, 0x04, 0x00, 0x04, 0x00, 0x06, 0x01, 0x04, 0x01, 0x04, 0x01
	.byte 0x04, 0x01, 0x04, 0x01, 0x04, 0x00, 0x04, 0x00, 0x04, 0x00, 0x04, 0x00, 0x04, 0x00, 0x04, 0x00
	.byte 0x04, 0x00, 0x04, 0x00, 0x04, 0x00, 0x04, 0x00, 0x04, 0x00, 0x04, 0x00, 0x04, 0x00, 0x04, 0x00
	.byte 0x04, 0x00, 0x04, 0x00, 0x04, 0x00, 0x04, 0x00, 0x42, 0x01, 0xD0, 0x00, 0xD0, 0x00, 0xD0, 0x00
	.byte 0xD0, 0x00, 0xD0, 0x00, 0xD0, 0x00, 0xD0, 0x00, 0xD0, 0x00, 0xD0, 0x00, 0xD0, 0x00, 0xD0, 0x00
	.byte 0xD0, 0x00, 0xD0, 0x00, 0xD0, 0x00, 0xD0, 0x00, 0x58, 0x04, 0x58, 0x04, 0x58, 0x04, 0x58, 0x04
	.byte 0x58, 0x04, 0x58, 0x04, 0x58, 0x04, 0x58, 0x04, 0x58, 0x04, 0x58, 0x04, 0xD0, 0x00, 0xD0, 0x00
	.byte 0xD0, 0x00, 0xD0, 0x00, 0xD0, 0x00, 0xD0, 0x00, 0xD0, 0x00, 0x51, 0x06, 0x51, 0x06, 0x51, 0x06
	.byte 0x51, 0x06, 0x51, 0x06, 0x51, 0x06, 0x51, 0x02, 0x51, 0x02, 0x51, 0x02, 0x51, 0x02, 0x51, 0x02
	.byte 0x51, 0x02, 0x51, 0x02, 0x51, 0x02, 0x51, 0x02, 0x51, 0x02, 0x51, 0x02, 0x51, 0x02, 0x51, 0x02
	.byte 0x51, 0x02, 0x51, 0x02, 0x51, 0x02, 0x51, 0x02, 0x51, 0x02, 0x51, 0x02, 0x51, 0x02, 0xD0, 0x00
	.byte 0xD0, 0x00, 0xD0, 0x00, 0xD0, 0x00, 0xD0, 0x00, 0xD0, 0x00, 0x71, 0x04, 0x71, 0x04, 0x71, 0x04
	.byte 0x71, 0x04, 0x71, 0x04, 0x71, 0x04, 0x71, 0x00, 0x71, 0x00, 0x71, 0x00, 0x71, 0x00, 0x71, 0x00
	.byte 0x71, 0x00, 0x71, 0x00, 0x71, 0x00, 0x71, 0x00, 0x71, 0x00, 0x71, 0x00, 0x71, 0x00, 0x71, 0x00
	.byte 0x71, 0x00, 0x71, 0x00, 0x71, 0x00, 0x71, 0x00, 0x71, 0x00, 0x71, 0x00, 0x71, 0x00, 0xD0, 0x00
	.byte 0xD0, 0x00, 0xD0, 0x00, 0xD0, 0x00, 0x04, 0x00
	.global unk_0208C138
unk_0208C138:
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x40, 0x03, 0xB8, 0xE2, 0x3F
	.global unk_0208C148
unk_0208C148:
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0xF0, 0x3F
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0xF8, 0x3F
	.global unk_0208C158
unk_0208C158:
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x06, 0xD0, 0xCF, 0x43, 0xEB, 0xFD, 0x4C, 0x3E
	.global unk_0208C168
unk_0208C168:
	.byte 0xFB, 0x21, 0xF9, 0x3F, 0xFB, 0x21, 0x09, 0x40
	.byte 0x7C, 0xD9, 0x12, 0x40, 0xFB, 0x21, 0x19, 0x40, 0x7A, 0x6A, 0x1F, 0x40, 0x7C, 0xD9, 0x22, 0x40
	.byte 0xBB, 0xFD, 0x25, 0x40, 0xFB, 0x21, 0x29, 0x40, 0x3A, 0x46, 0x2C, 0x40, 0x7A, 0x6A, 0x2F, 0x40
	.byte 0x5C, 0x47, 0x31, 0x40, 0x7C, 0xD9, 0x32, 0x40, 0x9C, 0x6B, 0x34, 0x40, 0xBB, 0xFD, 0x35, 0x40
	.byte 0xDB, 0x8F, 0x37, 0x40, 0xFB, 0x21, 0x39, 0x40, 0x1B, 0xB4, 0x3A, 0x40, 0x3A, 0x46, 0x3C, 0x40
	.byte 0x5A, 0xD8, 0x3D, 0x40, 0x7A, 0x6A, 0x3F, 0x40, 0x4C, 0x7E, 0x40, 0x40, 0x5C, 0x47, 0x41, 0x40
	.byte 0x6C, 0x10, 0x42, 0x40, 0x7C, 0xD9, 0x42, 0x40, 0x8C, 0xA2, 0x43, 0x40, 0x9C, 0x6B, 0x44, 0x40
	.byte 0xAC, 0x34, 0x45, 0x40, 0xBB, 0xFD, 0x45, 0x40, 0xCB, 0xC6, 0x46, 0x40, 0xDB, 0x8F, 0x47, 0x40
	.byte 0xEB, 0x58, 0x48, 0x40, 0xFB, 0x21, 0x49, 0x40
	.global unk_0208C1E8
unk_0208C1E8:
	.byte 0x83, 0xF9, 0xA2, 0x00, 0x44, 0x4E, 0x6E, 0x00
	.byte 0xFC, 0x29, 0x15, 0x00, 0xD1, 0x57, 0x27, 0x00, 0xDD, 0x34, 0xF5, 0x00, 0x62, 0xDB, 0xC0, 0x00
	.byte 0x3C, 0x99, 0x95, 0x00, 0x41, 0x90, 0x43, 0x00, 0x63, 0x51, 0xFE, 0x00, 0xBB, 0xDE, 0xAB, 0x00
	.byte 0xB7, 0x61, 0xC5, 0x00, 0x3A, 0x6E, 0x24, 0x00, 0xD2, 0x4D, 0x42, 0x00, 0x49, 0x06, 0xE0, 0x00
	.byte 0x09, 0xEA, 0x2E, 0x00, 0x1C, 0x92, 0xD1, 0x00, 0xEB, 0x1D, 0xFE, 0x00, 0x29, 0xB1, 0x1C, 0x00
	.byte 0xE8, 0x3E, 0xA7, 0x00, 0xF5, 0x35, 0x82, 0x00, 0x44, 0xBB, 0x2E, 0x00, 0x9C, 0xE9, 0x84, 0x00
	.byte 0xB4, 0x26, 0x70, 0x00, 0x41, 0x7E, 0x5F, 0x00, 0xD6, 0x91, 0x39, 0x00, 0x53, 0x83, 0x39, 0x00
	.byte 0x9C, 0xF4, 0x39, 0x00, 0x8B, 0x5F, 0x84, 0x00, 0x28, 0xF9, 0xBD, 0x00, 0xF8, 0x1F, 0x3B, 0x00
	.byte 0xDE, 0xFF, 0x97, 0x00, 0x0F, 0x98, 0x05, 0x00, 0x11, 0x2F, 0xEF, 0x00, 0x0A, 0x5A, 0x8B, 0x00
	.byte 0x6D, 0x1F, 0x6D, 0x00, 0xCF, 0x7E, 0x36, 0x00, 0x09, 0xCB, 0x27, 0x00, 0x46, 0x4F, 0xB7, 0x00
	.byte 0x9E, 0x66, 0x3F, 0x00, 0x2D, 0xEA, 0x5F, 0x00, 0xBA, 0x27, 0x75, 0x00, 0xE5, 0xEB, 0xC7, 0x00
	.byte 0x3D, 0x7B, 0xF1, 0x00, 0xF7, 0x39, 0x07, 0x00, 0x92, 0x52, 0x8A, 0x00, 0xFB, 0x6B, 0xEA, 0x00
	.byte 0x1F, 0xB1, 0x5F, 0x00, 0x08, 0x5D, 0x8D, 0x00, 0x30, 0x03, 0x56, 0x00, 0x7B, 0xFC, 0x46, 0x00
	.byte 0xF0, 0xAB, 0x6B, 0x00, 0x20, 0xBC, 0xCF, 0x00, 0x36, 0xF4, 0x9A, 0x00, 0xE3, 0xA9, 0x1D, 0x00
	.byte 0x5E, 0x61, 0x91, 0x00, 0x08, 0x1B, 0xE6, 0x00, 0x85, 0x99, 0x65, 0x00, 0xA0, 0x14, 0x5F, 0x00
	.byte 0x8D, 0x40, 0x68, 0x00, 0x80, 0xD8, 0xFF, 0x00, 0x27, 0x73, 0x4D, 0x00, 0x06, 0x06, 0x31, 0x00
	.byte 0xCA, 0x56, 0x15, 0x00, 0xC9, 0xA8, 0x73, 0x00, 0x7B, 0xE2, 0x60, 0x00, 0x6B, 0x8C, 0xC0, 0x00
	.global unk_0208C2F0
unk_0208C2F0:
	.byte 0x02, 0x00, 0x00, 0x00, 0x03, 0x00, 0x00, 0x00, 0x04, 0x00, 0x00, 0x00, 0x06, 0x00, 0x00, 0x00
	.global unk_0208C300
unk_0208C300:
	.byte 0x00, 0x00, 0x00, 0x40, 0xFB, 0x21, 0xF9, 0x3F, 0x00, 0x00, 0x00, 0x00, 0x2D, 0x44, 0x74, 0x3E
	.byte 0x00, 0x00, 0x00, 0x80, 0x98, 0x46, 0xF8, 0x3C, 0x00, 0x00, 0x00, 0x60, 0x51, 0xCC, 0x78, 0x3B
	.byte 0x00, 0x00, 0x00, 0x80, 0x83, 0x1B, 0xF0, 0x39, 0x00, 0x00, 0x00, 0x40, 0x20, 0x25, 0x7A, 0x38
	.byte 0x00, 0x00, 0x00, 0x80, 0x22, 0x82, 0xE3, 0x36, 0x00, 0x00, 0x00, 0x00, 0x1D, 0xF3, 0x69, 0x35

	.data
	.global _ZTISt9exception
_ZTISt9exception:
	.word _ZTVN10__cxxabiv117__class_type_infoE+0x8
	.word _ZTSSt9exception
	.global _ZTISt13bad_exception
_ZTISt13bad_exception:
	.word _ZTVN10__cxxabiv120__si_class_type_infoE+0x8
	.word _ZTSSt13bad_exception
	.word _ZTISt9exception
	.global _ZZNKSt13bad_exception4whatEvEs
_ZZNKSt13bad_exception4whatEvEs:
	.asciz "bad_exception"
	.balign 4, 0
	.global _ZTSSt9exception
_ZTSSt9exception:
	.asciz "std::exception"
	.balign 4, 0
	.global _ZTSSt13bad_exception
_ZTSSt13bad_exception:
	.asciz "std::bad_exception"
	.balign 4, 0
	.global _ZTVSt13bad_exception
_ZTVSt13bad_exception:
	.byte 0x00, 0x00, 0x00, 0x00 
	.word _ZTISt13bad_exception
	.word _ZNSt13bad_exceptionD1Ev
	.word _ZNSt13bad_exceptionD0Ev
	.word _ZNKSt13bad_exception4whatEv
	.global unk_0208EF0C
unk_0208EF0C:
	.asciz "!std::bad_exception!!"
	.balign 4, 0
	.global unk_0208EF24
unk_0208EF24:
	.asciz "!std::exception!!std::bad_exception!!"
	.balign 4, 0
	.global _ZSt8thandler
_ZSt8thandler:
	.word _ZSt9dthandlerv
	.global _ZSt8uhandler
_ZSt8uhandler:
	.word _ZSt9duhandlerv
	.global _ZSt18__throws_bad_alloc
_ZSt18__throws_bad_alloc:
	.byte 0x01, 0x00, 0x00, 0x00
	.global _ZZNKSt9bad_alloc4whatEvEs
_ZZNKSt9bad_alloc4whatEvEs:
	.asciz "bad_alloc"
	.balign 4, 0
	.global _ZTISt9bad_alloc
_ZTISt9bad_alloc:
	.word _ZTVN10__cxxabiv120__si_class_type_infoE+0x8
	.word _ZTSSt9bad_alloc
	.word _ZTISt9exception
	.global _ZTSSt9bad_alloc
_ZTSSt9bad_alloc:
	.asciz "std::bad_alloc"
	.balign 4, 0
	.global _ZTVSt9bad_alloc
_ZTVSt9bad_alloc:
	.byte 0x00, 0x00, 0x00, 0x00
	.word _ZTISt9bad_alloc
	.word _ZNSt9bad_allocD1Ev
	.word _ZNSt9bad_allocD0Ev
	.word _ZNKSt9bad_alloc4whatEv
	.global unk_0208EF94
unk_0208EF94:
	.asciz "!std::exception!!std::bad_alloc!!"
	.balign 4, 0
	.global _ZTISt9type_info
_ZTISt9type_info:
	.word _ZTVN10__cxxabiv117__class_type_infoE+0x8
	.word _ZTSSt9type_info
	.global _ZTIN10__cxxabiv120__si_class_type_infoE
_ZTIN10__cxxabiv120__si_class_type_infoE:
	.word _ZTVN10__cxxabiv120__si_class_type_infoE+0x8
	.word _ZTSN10__cxxabiv120__si_class_type_infoE
	.word _ZTIN10__cxxabiv117__class_type_infoE
	.global _ZTIN10__cxxabiv117__class_type_infoE
_ZTIN10__cxxabiv117__class_type_infoE:
	.word _ZTVN10__cxxabiv120__si_class_type_infoE+0x8
	.word _ZTSN10__cxxabiv117__class_type_infoE
	.word _ZTISt9type_info
	.global _ZTSSt9type_info
_ZTSSt9type_info:
	.asciz "std::type_info"
	.balign 4, 0
	.global _ZTVN10__cxxabiv120__si_class_type_infoE
_ZTVN10__cxxabiv120__si_class_type_infoE:
	.byte 0x00, 0x00, 0x00, 0x00
	.word _ZTIN10__cxxabiv120__si_class_type_infoE
	.word _ZN10__cxxabiv120__si_class_type_infoD1Ev
	.word _ZN10__cxxabiv120__si_class_type_infoD0Ev
	.global _ZTVN10__cxxabiv117__class_type_infoE
_ZTVN10__cxxabiv117__class_type_infoE:
	.byte 0x00, 0x00, 0x00, 0x00
	.word _ZTIN10__cxxabiv117__class_type_infoE
	.word _ZN10__cxxabiv117__class_type_infoD1Ev
	.word _ZN10__cxxabiv117__class_type_infoD0Ev
	.global _ZTSN10__cxxabiv117__class_type_infoE
_ZTSN10__cxxabiv117__class_type_infoE:
	.asciz "__cxxabiv1::__class_type_info"
	.balign 4, 0
	.global _ZTSN10__cxxabiv120__si_class_type_infoE
_ZTSN10__cxxabiv120__si_class_type_infoE:
	.asciz "__cxxabiv1::__si_class_type_info"
	.balign 4, 0
	.global __files
__files:
	.byte 0x00, 0x00, 0x00, 0x00, 0x24, 0x01, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.word unk_02099d60
	.word 0x100
	.word unk_02099d60
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00
	.word __read_console
	.word __write_console
	.word __close_console
	.byte 0x00, 0x00, 0x00, 0x00
	.global unk_0208F098
unk_0208F098:
	.byte 0x01, 0x00, 0x00, 0x00, 0x28, 0x01, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.word unk_02099c60
	.word 0x100
	.word unk_02099c60
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00
	.word __read_console
	.word __write_console
	.word __close_console
	.byte 0x00, 0x00, 0x00, 0x00
	.byte 0x02, 0x00, 0x00, 0x00, 0x08, 0x01, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.word unk_02099b60
	.word 0x100
	.word unk_02099b60
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00
	.word __read_console
	.word __write_console
	.word __close_console
	.byte 0x00, 0x00, 0x00, 0x00
	.global unk_0208F130
unk_0208F130:
	.byte 0xFF, 0xFF, 0xFF, 0x7F
	.global unk_0208F130
unk_0208F134:
	.asciz ""
	.balign 4, 0
	.global unk_0208F130
unk_0208F138:
	.asciz "%T"
	.balign 4, 0
	.global unk_0208F130
unk_0208F13C:
	.asciz "AM|PM"
	.balign 4, 0
	.global _loc_ctyp_C
_loc_ctyp_C:
	.word __mbtowc_noconv
	.word __wctomb_noconv
	.global _loc_coll_C
_loc_coll_C:
	.word 0x20
	.word 0x6E
	.byte 0x00, 0x00, 0x00, 0x00
	.word unk_0208F290
	.global _loc_tim_C
_loc_tim_C:
	.word unk_0208F13C
	.word unk_0208F1A0
	.word unk_0208F194
	.word unk_0208F17C
	.word unk_0208F138
	.word unk_0208F1B0
	.word unk_0208F208
	.word unk_0208F134
	.global unk_0208F17C
unk_0208F17C:
	 .asciz "%m/%d/%y"
	.balign 4, 0
	.global _current_locale
_current_locale:
	.word _loc_tim_C
	.word _loc_coll_C
	.word _loc_ctyp_C
	.global unk_0208F194
unk_0208F194:
	.asciz "%I:%M:%S %p"
	.balign 4, 0
	.global unk_0208F1B0
unk_0208F1A0:
	.asciz "%a %b %e %T %Y"
	.balign 4, 0
	.global unk_0208F1B0
unk_0208F1B0:
	.asciz "Sun|Sunday|Mon|Monday|Tue|Tuesday|Wed|Wednesday|Thu|Thursday|Fri|Friday|Sat|Saturday"
	.balign 4, 0
	.global unk_0208F208
unk_0208F208:
	.ascii "Jan|January|Feb|February|Mar|March|Apr|April|May|May|Jun|June|"
	.asciz "Jul|July|Aug|August|Sep|September|Oct|October|Nov|November|Dec|December"
	.balign 4, 0
	.global unk_0208F290
unk_0208F290:
	.byte 0x01, 0x00, 0x02, 0x00, 0x03, 0x00, 0x04, 0x00, 0x05, 0x00, 0x06, 0x00, 0x07, 0x00, 0x08, 0x00
	.byte 0x09, 0x00, 0x0A, 0x00, 0x0B, 0x00, 0x0C, 0x00, 0x0D, 0x00, 0x0E, 0x00, 0x0F, 0x00, 0x10, 0x00
	.byte 0x21, 0x00, 0x22, 0x00, 0x23, 0x00, 0x24, 0x00, 0x25, 0x00, 0x26, 0x00, 0x27, 0x00, 0x28, 0x00
	.byte 0x29, 0x00, 0x2A, 0x00, 0x11, 0x00, 0x12, 0x00, 0x13, 0x00, 0x14, 0x00, 0x15, 0x00, 0x16, 0x00
	.byte 0x17, 0x00, 0x2B, 0x00, 0x2D, 0x00, 0x2F, 0x00, 0x31, 0x00, 0x33, 0x00, 0x35, 0x00, 0x37, 0x00
	.byte 0x39, 0x00, 0x3B, 0x00, 0x3D, 0x00, 0x3F, 0x00, 0x41, 0x00, 0x43, 0x00, 0x45, 0x00, 0x47, 0x00
	.byte 0x49, 0x00, 0x4B, 0x00, 0x4D, 0x00, 0x4F, 0x00, 0x51, 0x00, 0x53, 0x00, 0x55, 0x00, 0x57, 0x00
	.byte 0x59, 0x00, 0x5B, 0x00, 0x5D, 0x00, 0x18, 0x00, 0x19, 0x00, 0x1A, 0x00, 0x1B, 0x00, 0x1C, 0x00
	.byte 0x00, 0x00, 0x2C, 0x00, 0x2E, 0x00, 0x30, 0x00, 0x32, 0x00, 0x34, 0x00, 0x36, 0x00, 0x38, 0x00
	.byte 0x3A, 0x00, 0x3C, 0x00, 0x3E, 0x00, 0x40, 0x00, 0x42, 0x00, 0x44, 0x00, 0x46, 0x00, 0x48, 0x00
	.byte 0x4A, 0x00, 0x4C, 0x00, 0x4E, 0x00, 0x50, 0x00, 0x52, 0x00, 0x54, 0x00, 0x56, 0x00, 0x58, 0x00
	.byte 0x5A, 0x00, 0x5C, 0x00, 0x5E, 0x00, 0x1D, 0x00, 0x1E, 0x00, 0x1F, 0x00, 0x20, 0x00, 0x00, 0x00
	.global unk_0208F350
unk_0208F350:
	.asciz "-INF"
	.balign 4, 0
	.global unk_0208F358
unk_0208F358:
	.asciz "-inf"
	.balign 4, 0
	.global unk_0208F360
unk_0208F360:
	.asciz "INF"
	.balign 4, 0
	.global unk_0208F364
unk_0208F364:
	.asciz "inf"
	.balign 4, 0
	.global unk_0208F368
unk_0208F368:
	.asciz "-NAN"
	.balign 4, 0
	.global unk_0208F370
unk_0208F370:
	.asciz "-nan"
	.balign 4, 0
	.global unk_0208F378
unk_0208F378:
	.asciz "NAN"
	.balign 4, 0
	.global unk_0208F37C
unk_0208F37C:
	.asciz "nan"
	.balign 4, 0
	.global unk_0208F380
unk_0208F380:
	.asciz ""
	.balign 4, 0
	.global unk_0208F384
unk_0208F384:
	.byte 0x00, 0x00, 0x00, 0x00
	.global random_next
random_next:
	.byte 0x01, 0x00, 0x00, 0x00
	.global unk_0208F38C
unk_0208F38C:
	.asciz "542101086242752217003726400434970855712890625"
	.balign 4, 0
	.global unk_0208F3BC
unk_0208F3BC:
	.asciz "11102230246251565404236316680908203125"
	.balign 4, 0
	.global unk_0208F3E4
unk_0208F3E4:
	.asciz "23283064365386962890625"
	.balign 4, 0
	.global unk_0208F3FC
unk_0208F3FC:
	.asciz "152587890625"
	.balign 4, 0
	.global unk_0208F40C
unk_0208F40C:
	.asciz "390625"
	.balign 4, 0
	.global unk_0208F414
unk_0208F414:
	.asciz "78125"
	.balign 4, 0
	.global unk_0208F41C
unk_0208F41C:
	.asciz "15625"
	.balign 4, 0
	.global unk_0208F424
unk_0208F424:
	.asciz "3125"
	.balign 4, 0
	.global unk_0208F42C
unk_0208F42C:
	.asciz "625"
	.global unk_0208F430
unk_0208F430:
	.asciz "125"
	.balign 4, 0
	.global unk_0208F434
unk_0208F434:
	.asciz "25"
	.balign 4, 0
	.global unk_0208F438
unk_0208F438:
	.asciz "5"
	.balign 4, 0
	.global unk_0208F43C
unk_0208F43C:
	.asciz "1"
	.balign 4, 0
	.global unk_0208F440
unk_0208F440:
	.asciz "2"
	.balign 4, 0
	.global unk_0208F444
unk_0208F444:
	.asciz "4"
	.balign 4, 0
	.global unk_0208F448
unk_0208F448:
	.asciz "8"
	.balign 4, 0
	.global unk_0208F44C
unk_0208F44C:
	.asciz "16"
	.balign 4, 0
	.global unk_0208F450
unk_0208F450:
	.asciz "32"
	.balign 4, 0
	.global unk_0208F454
unk_0208F454:
	.asciz "64"
	.balign 4, 0
	.global unk_0208F458
unk_0208F458:
	.asciz "128"
	.balign 4, 0
	.global unk_0208F45C
unk_0208F45C:
	.asciz "256"
	.balign 4, 0
	.global unk_0208F460
unk_0208F460:
	.word _ZTVN10__cxxabiv117__class_type_infoE+0x8
	.word unk_0208F4B8
	.global unk_0208F468
unk_0208F468:
	.word _ZTVN10__cxxabiv117__class_type_infoE+0x8
	.word unk_0208F494
	.global unk_0208F468
unk_0208F470:
	.word _ZTVN10__cxxabiv120__si_class_type_infoE+0x8
	.word unk_0208F4E4
	.word unk_0208F460
	.global unk_0208F468
unk_0208F47C:
	.byte 0x00, 0x00, 0x00, 0x00
	.word unk_0208F470
	.global unk_0208F484
unk_0208F484:
	.word FUN_02028950
	.word FUN_0202893c
	.word FUN_020288a4
	.word FUN_020288cc 
	.global unk_0208F494
unk_0208F494:
	.asciz "std::detail::default_delete<char[]>"
	.balign 4, 0
	.global unk_0208F4B8
unk_0208F4B8:
	.asciz "std::tr1::detail::shared_ptr_deleter_common"
	.balign 4, 0
	.global unk_0208F4E4
unk_0208F4E4:
	.asciz "std::tr1::detail::shared_ptr_deleter<char, std::detail::default_delete<char[]>>"
	.balign 4, 0
	.global unk_0208F534
unk_0208F534:
	.byte 0x00, 0x00, 0x00, 0x00, 0x20, 0x00, 0x00, 0x00
	.global unk_0208F53C
unk_0208F53C:
	.word _ZTVN10__cxxabiv120__si_class_type_infoE+0x8
	.word unk_0208F560
	.word _ZTISt9exception
	.global unk_0208F548
unk_0208F548:
	.word _ZTVN10__cxxabiv120__si_class_type_infoE+0x8
	.word unk_0208F574
	.word unk_0208F53C
	.global unk_0208F554
unk_0208F554:
	.word _ZTVN10__cxxabiv120__si_class_type_infoE+0x8 
	.word unk_0208F588
	.word unk_0208F53C
	.global unk_0208F560
unk_0208F560:
	.asciz "std::logic_error"
	.balign 4, 0
	.global unk_0208F574
unk_0208F574:
	.asciz "std::out_of_range"
	.balign 4, 0
	.global unk_0208F588
unk_0208F588:
	.asciz "std::length_error"
	.balign 4, 0
	.global unk_0208F59C
unk_0208F59C:
 	.byte 0x00, 0x00, 0x00, 0x00
	.word unk_0208F548
	.global unk_0208F5A4
unk_0208F5A4:
	.word FUN_02028f0c
	.word FUN_02028f24
	.word FUN_02028954
	.byte 0x00, 0x00, 0x00, 0x00
	.word unk_0208F554
	.global unk_0208F5B8
unk_0208F5B8:
	.word FUN_02028ed4
	.word FUN_02028eec
	.word FUN_02028954
	.byte 0x00, 0x00, 0x00, 0x00
	.word unk_0208F53C
	.global unk_0208F5CC
unk_0208F5CC:
	.word FUN_02028e9c
	.word FUN_02028eb4
	.word FUN_02028954
	.global unk_0208F5D8
unk_0208F5D8:
	.asciz "!std::exception!!std::logic_error!!std::length_error!!"
	.balign 4, 0
	.global unk_0208F610
unk_0208F610:
	.asciz "basic_string: out_of_range"
	.balign 4, 0
	.global unk_0208F62C
unk_0208F62C:
	.asciz "!std::exception!!std::logic_error!!std::out_of_range!!"
	.balign 4, 0
	.global unk_0208F664
unk_0208F664:
	.asciz "basic_string: length_error"
	.balign 4, 0

	.bss
	.global __global_destructor_chain
__global_destructor_chain:
	.space 0x04
	.global _ZSt13__new_handler
_ZSt13__new_handler:
	.space 0x04
	.global __console_exit
__console_exit:
	.space 0x10
	.global unk_02099940
unk_02099940:
	.space 0x100
	.global unk_02099A40
unk_02099A40:
	.space 0x24
	.global unk_02099A64
unk_02099A64:
	.space 0x24
	.global unk_02099A88
unk_02099A88:
	.space 0x48
	.global unk_02099AD0
unk_02099AD0:
	.space 0x60
	.global unk_02099B30
unk_02099B30:
	.space 0x30
	.global unk_02099b60
unk_02099b60:
	.space 0x100
	.global unk_02099c60
unk_02099c60:
	.space 0x100
	.global unk_02099d60
unk_02099d60:
	.space 0x100
	.global errno
errno:
	.space 0x04
	.global __msl_constraint_handler
__msl_constraint_handler:
	.space 0x04
	.global unk_02099E68
unk_02099E68:
	.space 0x1C
	.global unk_02099E84
unk_02099E84:
	.space 0x08
