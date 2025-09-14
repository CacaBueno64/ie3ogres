
	.include "/macros/function.inc"
	.include "/include/arm9_02085ce4.inc"

	.text
	arm_func_start FUN_02085ce4
FUN_02085ce4: ; 0x02085CE4
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	mov r6, r1
	ldr r1, [r6]
	mov r7, r0
	mov r0, r1, lsl #0x18
	mov r4, r3
	movs r0, r0, lsr #0x1c
	mov r5, r2
	ldr r0, [r4]
	bne _02085D38
	cmp r0, #0
	strne r0, [r7]
	bne _02085D2C
	mov r0, r5
	mvn r1, #0
	bl FUN_020866d8
	str r0, [r7]
	str r0, [r4]
_02085D2C:
	mov r0, #0
	str r0, [r7, #4]
	b _02085D70
_02085D38:
	cmp r0, #0
	strne r0, [r7]
	bne _02085D58
	mov r0, r1, lsr #8
	mvn r1, #0
	bl FUN_020866d8
	str r0, [r7]
	str r0, [r4]
_02085D58:
	ldr r1, _02085D78 ; =0x00000101
	mov r0, r5
	bl FUN_020866d8
	str r0, [r7, #4]
	ldr r0, [r6]
	mov r5, r0, lsr #8
_02085D70:
	mov r0, r5
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_02085D78: .word 0x00000101
	arm_func_end FUN_02085ce4

	arm_func_start FUN_02085d7c
FUN_02085d7c: ; 0x02085D7C
	stmfd sp!, {r4, r5, r6, r7, r8, r9, r10, lr}
	sub sp, sp, #0x58
	mov r8, r0
	add r0, sp, #4
	mov r7, r1
	mov r6, r2
	mov r5, r3
	ldr r4, [sp, #0x78]
	bl FS_ConvertPathToFileID
	cmp r0, #0
	bne _02085DAC
	bl OS_Terminate
_02085DAC:
	add r9, sp, #0x10
	mov r0, r9
	bl FS_InitFile
	add r1, sp, #4
	mov r0, r9
	ldmia r1, {r1, r2}
	bl FS_OpenFileFast
	cmp r0, #0
	bne _02085DD4
	bl OS_Terminate
_02085DD4:
	add r10, sp, #0x10
	mov r0, r10
	bl FS_GetLength
	mov r9, r0
	mov r0, r10
	bl FS_CloseFile
	mov r1, #0
	cmp r4, #0
	movle r4, r9
	mov r0, r6
	str r1, [sp, #0xc]
	bl FUN_02085c6c
	add r1, sp, #0xc
	mov r2, r4
	mov r3, r8
	str r7, [sp]
	mov r6, r0
	bl FUN_02085ce4
	ldr r1, [sp, #4]
	str r1, [r6, #0xc]
	ldr r1, [sp, #8]
	str r1, [r6, #0x10]
	str r5, [r6, #0x14]
	str r4, [r6, #0x18]
	ldr r1, [sp, #0xc]
	str r1, [r6, #0x1c]
	ldr r1, [r6]
	str r1, [r6, #8]
	add sp, sp, #0x58
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, pc}
	arm_func_end FUN_02085d7c

	arm_func_start FUN_02085e4c
FUN_02085e4c: ; 0x02085E4C
	stmfd sp!, {r4, r5, r6, r7, lr}
	sub sp, sp, #0x104
	mov r4, r1
	mov r5, r0
	ldr r1, _02085F3C ; =0x020938B8
	add r0, sp, #0x84
	mov r2, r4
	bl STD_TSPrintf
	ldr r1, _02085F40 ; =0x020938C0
	add r0, sp, #4
	mov r2, r4
	bl STD_TSPrintf
	cmp r5, #0
	moveq r5, #0
	str r5, [sp]
	ldr r4, _02085F44 ; =0x020BC5D0
	mov r5, #0
	mov r0, #0x14
_02085E94:
	mul r6, r5, r0
	ldr r1, [r4, r6]
	add r2, r4, r6
	cmp r1, #0
	ldreq r1, [r2, #4]
	cmpeq r1, #0
	bne _02085F20
	mov r7, #0
	add r0, sp, #0
	add r1, sp, #0x84
	mov r2, r7
	mov r3, r7
	bl Common_OpenFileRead
	cmp r0, #0
	addlt sp, sp, #0x104
	sublt r0, r7, #1
	ldmltfd sp!, {r4, r5, r6, r7, pc}
	ldr r2, _02085F48 ; =0x020BC5D4
	mov r3, #1
	str r3, [r2, r6]
	mov r3, r0, lsr #4
	ldr r1, _02085F4C ; =0x020BC5E2
	add r0, r4, r6
	strh r3, [r1, r6]
	ldr r2, [sp]
	add r1, sp, #4
	add r0, r0, #8
	str r2, [r4, r6]
	bl FS_ConvertPathToFileID
	cmp r0, #0
	bne _02085F14
	bl OS_Terminate
_02085F14:
	add sp, sp, #0x104
	mov r0, r5
	ldmfd sp!, {r4, r5, r6, r7, pc}
_02085F20:
	add r5, r5, #1
	cmp r5, #0x12
	blt _02085E94
	bl OS_Terminate
	mvn r0, #0
	add sp, sp, #0x104
	ldmfd sp!, {r4, r5, r6, r7, pc}
_02085F3C: .word unk_020938B8
_02085F40: .word unk_020938C0
_02085F44: .word unk_020BC5D0
_02085F48: .word unk_020BC5D4
_02085F4C: .word unk_020BC5E2
	arm_func_end FUN_02085e4c

	arm_func_start FUN_02085f50
FUN_02085f50: ; 0x02085F50
	stmfd sp!, {r4, r5, r6, r7, lr}
	sub sp, sp, #0x104
	mov r4, r1
	mov r6, r0
	ldr r1, _0208602C ; =0x020938C8
	add r0, sp, #0x84
	mov r2, r4
	bl STD_TSPrintf
	ldr r1, _02086030 ; =0x020938D0
	add r0, sp, #4
	mov r2, r4
	bl STD_TSPrintf
	ldr r2, _02086034 ; =0x020BC5D0
	mov r4, #0
	mov r0, #0x14
_02085F8C:
	mul r5, r4, r0
	ldr r1, [r2, r5]
	add r3, r2, r5
	cmp r1, #0
	ldreq r1, [r3, #4]
	cmpeq r1, #0
	bne _02086010
	ldr r0, _02086038 ; =0x020BC5D4
	mov r1, #1
	str r1, [r0, r5]
	ldr r0, _02086034 ; =0x020BC5D0
	cmp r6, #0
	add r7, r0, r5
	strne r6, [r3]
	mvn r6, #0
	add r1, sp, #0x84
	mov r0, r7
	add r2, r7, #0x10
	mov r3, #0
	str r6, [sp]
	bl FUN_02085d7c
	mov r3, r0, lsr #4
	ldr r2, _0208603C ; =0x020BC5E2
	add r1, sp, #4
	add r0, r7, #8
	strh r3, [r2, r5]
	bl FS_ConvertPathToFileID
	cmp r0, #0
	bne _02086004
	bl OS_Terminate
_02086004:
	add sp, sp, #0x104
	mov r0, r4
	ldmfd sp!, {r4, r5, r6, r7, pc}
_02086010:
	add r4, r4, #1
	cmp r4, #0x12
	blt _02085F8C
	bl OS_Terminate
	mvn r0, #0
	add sp, sp, #0x104
	ldmfd sp!, {r4, r5, r6, r7, pc}
_0208602C: .word unk_020938C8
_02086030: .word unk_020938D0
_02086034: .word unk_020BC5D0
_02086038: .word unk_020BC5D4
_0208603C: .word unk_020BC5E2
	arm_func_end FUN_02085f50

	arm_func_start FUN_02086040
FUN_02086040: ; 0x02086040
	stmfd sp!, {r4, r5, r6, lr}
	cmp r0, #0
	ldmltfd sp!, {r4, r5, r6, pc}
	mov r4, #0x14
	mul r6, r0, r4
	ldr r5, _0208607C ; =0x020BC5D0
	ldr r0, [r5, r6]
	cmp r0, #0
	ldmeqfd sp!, {r4, r5, r6, pc}
	bl Common_Deallocate
	mov r2, r4
	add r0, r5, r6
	mov r1, #0
	bl MI_CpuFill8
	ldmfd sp!, {r4, r5, r6, pc}
_0208607C: .word unk_020BC5D0
	arm_func_end FUN_02086040

	arm_func_start FUN_02086080
FUN_02086080: ; 0x02086080
	stmfd sp!, {r4, r5, r6, lr}
	mov r4, #0x14
	mul r5, r0, r4
	ldr r6, _020860C0 ; =0x020BC5E0
	ldrsb r0, [r6, r5]
	cmp r0, #0
	blt _020860B8
	bl FUN_02086480
	cmp r0, #0
	movne r0, #0
	subeq r0, r4, #0x15
	streqb r0, [r6, r5]
	moveq r0, #1
	ldmfd sp!, {r4, r5, r6, pc}
_020860B8:
	mov r0, #1
	ldmfd sp!, {r4, r5, r6, pc}
_020860C0: .word unk_020BC5E0
	arm_func_end FUN_02086080

	arm_func_start FUN_020860c4
FUN_020860c4: ; 0x020860C4
	stmfd sp!, {r4, lr}
	mov r4, r0
_020860CC:
	mov r0, r4
	bl FUN_02086080
	cmp r0, #0
	ldmnefd sp!, {r4, pc}
	bl FUN_0206ee5c
	b _020860CC
	ldmfd sp!, {r4, pc}
	arm_func_end FUN_020860c4

	arm_func_start FUN_020860e8
FUN_020860e8: ; 0x020860E8
	ldr r3, _0208610C ; =0x020BC5D0
	mov r2, #0x14
	mla r2, r0, r2, r3
	ldrh r0, [r2, #0x12]
	cmp r1, r0
	movge r0, #0
	ldrlt r0, [r2]
	addlt r0, r0, r1, lsl #4
	bx lr
_0208610C: .word unk_020BC5D0
	arm_func_end FUN_020860e8

	arm_func_start FUN_02086110
FUN_02086110: ; 0x02086110
	stmfd sp!, {r0, r1, r2, r3}
	stmfd sp!, {r3, r4, r5, lr}
	sub sp, sp, #8
	mov r5, r0
	ldr r0, [r5]
	mov r4, r1
	cmp r0, #0
	bne _02086150
	ldr r0, [r4, #0xc]
	mov r1, r0, lsl #0x18
	movs r1, r1, lsr #0x1c
	ldreq r0, [r4, #8]
	mvn r1, #0
	movne r0, r0, lsr #8
	bl FUN_020866d8
	str r0, [r5]
_02086150:
	ldr r0, [r4, #0xc]
	mov r0, r0, lsl #0x18
	movs r0, r0, lsr #0x1c
	ldr r0, [r4, #8]
	bne _02086184
	str r0, [sp]
	ldr r3, [r4, #4]
	add r1, sp, #0x20
	mov r0, r5
	ldmia r1, {r1, r2}
	bl FUN_020859f8
	mov r4, r0
	b _02086214
_02086184:
	ldr r1, _02086228 ; =0x00000101
	bl FUN_020866d8
	str r0, [sp, #4]
	ldr r0, [r4, #8]
	add r1, sp, #0x20
	str r0, [sp]
	ldr r3, [r4, #4]
	add r0, sp, #4
	ldmia r1, {r1, r2}
	bl FUN_020859f8
	cmp r0, #0
	bge _020861B8
	bl OS_Terminate
_020861B8:
	ldr r0, [r4, #0xc]
	and r0, r0, #0xf0
	cmp r0, #0x10
	beq _020861D4
	cmp r0, #0x20
	beq _020861E4
	b _020861F4
_020861D4:
	ldr r0, [sp, #4]
	ldr r1, [r5]
	bl MI_UncompressLZ8
	b _020861F8
_020861E4:
	ldr r0, [sp, #4]
	ldr r1, [r5]
	bl MI_UncompressHuffman
	b _020861F8
_020861F4:
	bl OS_Terminate
_020861F8:
	ldr r0, [sp, #4]
	bl Common_Deallocate
	ldr r1, [r4, #0xc]
	ldr r0, [r5]
	mov r4, r1, lsr #8
	mov r1, r4
	bl DC_FlushRange
_02086214:
	mov r0, r4
	add sp, sp, #8
	ldmfd sp!, {r3, r4, r5, lr}
	add sp, sp, #0x10
	bx lr
_02086228: .word 0x00000101
	arm_func_end FUN_02086110

	arm_func_start FUN_0208622c
FUN_0208622c: ; 0x0208622C
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	mov r7, r0
	cmp r1, #0
	mov r6, r2
	mvnlt r0, #0
	ldmltfd sp!, {r3, r4, r5, r6, r7, pc}
	ldr r0, _02086280 ; =0x020BC5D0
	mov r4, #0x14
	mla r5, r1, r4, r0
	mov r0, r1
	mov r1, r6
	bl FUN_02086684
	movs r1, r0
	subeq r0, r4, #0x15
	ldmeqfd sp!, {r3, r4, r5, r6, r7, pc}
	mov r0, r7
	str r6, [sp]
	add r2, r5, #8
	ldmia r2, {r2, r3}
	bl FUN_02086110
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_02086280: .word unk_020BC5D0
	arm_func_end FUN_0208622c

	arm_func_start FUN_02086284
FUN_02086284: ; 0x02086284
	stmfd sp!, {r3, r4, r5, r6, r7, r8, lr}
	sub sp, sp, #0x84
	mov r4, r2
	cmp r1, #0
	cmpge r4, #0
	mov r5, r0
	addlt sp, sp, #0x84
	mvnlt r0, #0
	ldmltfd sp!, {r3, r4, r5, r6, r7, r8, pc}
	ldr r3, _0208630C ; =0x020BC5D0
	mov r0, #0x14
	mla r7, r1, r0, r3
	ldrh r1, [r7, #0x12]
	cmp r4, r1
	addge sp, sp, #0x84
	subge r0, r0, #0x15
	ldmgefd sp!, {r3, r4, r5, r6, r7, r8, pc}
	ldr r8, [r7]
	cmp r8, #0
	addeq sp, sp, #0x84
	subeq r0, r0, #0x15
	ldmeqfd sp!, {r3, r4, r5, r6, r7, r8, pc}
	add r6, sp, #4
	ldr r1, _02086310 ; =0x020938D8
	mov r0, r6
	bl STD_TSPrintf
	mov r0, r5
	str r6, [sp]
	add r2, r7, #8
	add r1, r8, r4, lsl #4
	ldmia r2, {r2, r3}
	bl FUN_02086110
	add sp, sp, #0x84
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, pc}
_0208630C: .word unk_020BC5D0
_02086310: .word unk_020938D8
	arm_func_end FUN_02086284

	arm_func_start FUN_02086314
FUN_02086314: ; 0x02086314
	stmfd sp!, {r0, r1, r2, r3}
	stmfd sp!, {r3, r4, r5, r6, lr}
	sub sp, sp, #4
	mov r6, r0
	mov r5, r1
	ldr r0, [sp, #0x28]
	ldr r4, [r5, #8]
	bl FUN_02085c6c
	ldr r12, [sp, #0x2c]
	mov r2, r4
	mov r3, r6
	add r1, r5, #0xc
	mov r4, r0
	str r12, [sp]
	bl FUN_02085ce4
	ldr r2, [sp, #0x20]
	ldr r1, [sp, #0x24]
	str r2, [r4, #0xc]
	str r1, [r4, #0x10]
	ldr r1, [r5, #4]
	str r1, [r4, #0x14]
	ldr r1, [r5, #8]
	str r1, [r4, #0x18]
	ldr r1, [r5, #0xc]
	str r1, [r4, #0x1c]
	ldr r1, [r4]
	str r1, [r4, #8]
	add sp, sp, #4
	ldmfd sp!, {r3, r4, r5, r6, lr}
	add sp, sp, #0x10
	bx lr
	arm_func_end FUN_02086314

	arm_func_start FUN_02086390
FUN_02086390: ; 0x02086390
	stmfd sp!, {r4, r5, r6, r7, r8, lr}
	sub sp, sp, #8
	cmp r1, #0
	mov r8, r0
	mov r7, r2
	mov r6, r3
	addlt sp, sp, #8
	mvnlt r0, #0
	ldmltfd sp!, {r4, r5, r6, r7, r8, pc}
	ldr r0, _020863F8 ; =0x020BC5D0
	mov r4, #0x14
	mla r5, r1, r4, r0
	mov r0, r1
	mov r1, r7
	bl FUN_02086684
	movs r1, r0
	addeq sp, sp, #8
	subeq r0, r4, #0x15
	ldmeqfd sp!, {r4, r5, r6, r7, r8, pc}
	stmia sp, {r6, r7}
	add r2, r5, #8
	mov r0, r8
	ldmia r2, {r2, r3}
	bl FUN_02086314
	add sp, sp, #8
	ldmfd sp!, {r4, r5, r6, r7, r8, pc}
_020863F8: .word unk_020BC5D0
	arm_func_end FUN_02086390

	arm_func_start FUN_020863fc
FUN_020863fc: ; 0x020863FC
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, lr}
	sub sp, sp, #0x88
	mov r6, r2
	cmp r1, #0
	cmpge r6, #0
	mov r7, r0
	mov r5, r3
	addlt sp, sp, #0x88
	mvnlt r0, #0
	ldmltfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
	mov r0, #0x14
	mul r3, r1, r0
	ldr r1, _02086478 ; =0x020BC5D0
	ldr r4, [r1, r3]
	add r9, r1, r3
	cmp r4, #0
	addeq sp, sp, #0x88
	subeq r0, r0, #0x15
	ldmeqfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
	add r8, sp, #8
	ldr r1, _0208647C ; =0x020938E0
	mov r0, r8
	bl STD_TSPrintf
	stmia sp, {r5, r8}
	add r2, r9, #8
	mov r0, r7
	add r1, r4, r6, lsl #4
	ldmia r2, {r2, r3}
	bl FUN_02086314
	add sp, sp, #0x88
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
_02086478: .word unk_020BC5D0
_0208647C: .word unk_020938E0
	arm_func_end FUN_020863fc

	arm_func_start FUN_02086480
FUN_02086480: ; 0x02086480
	ldr r1, _020864A4 ; =0x020BC504
	ldr r2, [r1, #8]
	ldr r1, [r2, r0, lsl #5]
	cmp r1, #0
	addeq r1, r2, r0, lsl #5
	moveq r0, #0
	streq r0, [r1, #8]
	movne r0, #1
	bx lr
_020864A4: .word unk_020BC504
	arm_func_end FUN_02086480

	arm_func_start FUN_020864a8
FUN_020864a8: ; 0x020864A8
	ldr r12, _020864B0 ; =OS_Terminate
	bx r12
_020864B0: .word OS_Terminate
	arm_func_end FUN_020864a8

	arm_func_start FUN_020864b4
FUN_020864b4: ; 0x020864B4
	stmfd sp!, {r4, r5, r6, lr}
	sub sp, sp, #8
	ldr r0, _02086548 ; =0x020BC738
	ldr r1, _0208654C ; =0xEDB88320
	bl MATHi_CRC32InitTableRev
	mov r6, #0
	ldr r0, _02086550 ; =0x020BC5D0
	mov r1, r6
	mov r2, #0x168
	bl MI_CpuFill8
	sub r5, r6, #1
	mov r1, r5
	mov r0, #0x700
	bl FUN_0208670c
	ldr r4, _02086554 ; =0x020BC504
	str r0, [r4, #8]
	ldr r0, _02086558 ; =0x020938E8
	bl FS_ChangeDir
	mov r1, r5
	mov r5, #0x800
	mov r0, r5
	bl FUN_020866d8
	mov r2, r6
	str r0, [r4, #4]
	str r5, [sp]
	mov r0, #0x1c
	str r0, [sp, #4]
	ldr r0, [r4, #4]
	ldr r4, _0208655C ; =0x020BC510
	add r3, r0, #0x800
	mov r0, r4
	ldr r1, _02086560 ; =FUN_02085ab4
	bl OS_CreateThread
	mov r0, r4
	bl OS_WakeupThreadDirect
	add sp, sp, #8
	ldmfd sp!, {r4, r5, r6, pc}
_02086548: .word unk_020BC738
_0208654C: .word 0xEDB88320
_02086550: .word unk_020BC5D0
_02086554: .word unk_020BC504
_02086558: .word unk_020938E8
_0208655C: .word unk_020BC510
_02086560: .word FUN_02085ab4
	arm_func_end FUN_020864b4

	arm_func_start FUN_02086564
FUN_02086564: ; 0x02086564
	stmfd sp!, {r3, lr}
	sub sp, sp, #0x80
	mov r2, #0
	add r1, sp, #0
_02086574:
	ldrsb r12, [r0], #1
	cmp r12, #0x41
	blt _02086590
	cmp r12, #0x5a
	addle r3, r12, #0x20
	strleb r3, [r1, r2]
	ble _02086594
_02086590:
	strb r12, [r1, r2]
_02086594:
	cmp r12, #0
	bne _020865B0
	ldr r0, _020865C8 ; =0x020BC738
	add r1, sp, #0
	bl MATH_CalcCRC32
	add sp, sp, #0x80
	ldmfd sp!, {r3, pc}
_020865B0:
	add r2, r2, #1
	cmp r2, #0x80
	blo _02086574
	mov r0, #0
	add sp, sp, #0x80
	ldmfd sp!, {r3, pc}
_020865C8: .word unk_020BC738
	arm_func_end FUN_02086564

	arm_func_start FUN_020865cc
FUN_020865cc: ; 0x020865CC
	stmfd sp!, {r3, r4, r5, lr}
	mov r4, r0
	mov r0, r2
	mov r5, r1
	bl FUN_02086564
	mov r2, #0
	mov lr, r2
	sub r3, r5, #1
	mov r12, r5, lsr #1
_020865F0:
	ldr r1, [r4, r12, lsl #4]
	cmp r0, r1
	moveq r0, r12
	ldmeqfd sp!, {r3, r4, r5, pc}
	cmp r2, r3
	beq _02086638
	cmp r0, r1
	sublo r1, r12, r2
	addlo r1, r1, #1
	sublo r3, r12, #1
	sublo r12, r12, r1, lsr #1
	subhs r1, r3, r12
	addhs r1, r1, #1
	addhs r2, r12, #1
	add lr, lr, #1
	addhs r12, r12, r1, lsr #1
	cmp lr, #0x10000
	blt _020865F0
_02086638:
	mvn r0, #0
	ldmfd sp!, {r3, r4, r5, pc}
	arm_func_end FUN_020865cc

	arm_func_start FUN_02086640
FUN_02086640: ; 0x02086640
	stmfd sp!, {r3, lr}
	cmp r0, #0
	mov r2, r1
	mvnlt r0, #0
	ldmltfd sp!, {r3, pc}
	mov r1, #0x14
	mul r3, r0, r1
	ldr r12, _02086680 ; =0x020BC5D0
	ldr r0, [r12, r3]
	add r3, r12, r3
	cmp r0, #0
	subeq r0, r1, #0x15
	ldmeqfd sp!, {r3, pc}
	ldrh r1, [r3, #0x12]
	bl FUN_020865cc
	ldmfd sp!, {r3, pc}
_02086680: .word unk_020BC5D0
	arm_func_end FUN_02086640

	arm_func_start FUN_02086684
FUN_02086684: ; 0x02086684
	stmfd sp!, {r4, lr}
	cmp r0, #0
	mov r2, r1
	movlt r0, #0
	ldmltfd sp!, {r4, pc}
	mov r1, #0x14
	mul r1, r0, r1
	ldr r0, _020866D4 ; =0x020BC5D0
	ldr r4, [r0, r1]
	add r0, r0, r1
	cmp r4, #0
	moveq r0, #0
	ldmeqfd sp!, {r4, pc}
	ldrh r1, [r0, #0x12]
	mov r0, r4
	bl FUN_020865cc
	cmp r0, #0
	addge r0, r4, r0, lsl #4
	movlt r0, #0
	ldmfd sp!, {r4, pc}
_020866D4: .word unk_020BC5D0
	arm_func_end FUN_02086684

	arm_func_start FUN_020866d8
FUN_020866d8: ; 0x020866D8
	stmfd sp!, {r4, lr}
	mov r4, r0
	cmp r1, #0
	blt _020866F0
	ldr r0, _02086708 ; =gL5Allocator
	bl _ZN11L5Allocator12setNextArenaEi
_020866F0:
	ldr r0, _02086708 ; =gL5Allocator
	mov r1, r4
	mov r2, #0
	mov r3, #1
	bl _ZN11L5Allocator8allocateEiii
	ldmfd sp!, {r4, pc}
_02086708: .word gL5Allocator
	arm_func_end FUN_020866d8

	arm_func_start FUN_0208670c
FUN_0208670c: ; 0x0208670C
	stmfd sp!, {r3, r4, r5, lr}
	mov r5, r0
	bl FUN_020866d8
	movs r4, r0
	beq _02086730
	mov r1, r4
	mov r2, r5
	mov r0, #0
	bl MIi_CpuClearFast
_02086730:
	mov r0, r4
	ldmfd sp!, {r3, r4, r5, pc}
	arm_func_end FUN_0208670c

	arm_func_start Common_Deallocate
Common_Deallocate: ; 0x02086738
	mov r1, r0
	ldr r0, _02086748 ; =gL5Allocator
	ldr r12, _0208674C ; =_ZN11L5Allocator10deallocateEPv
	bx r12
_02086748: .word gL5Allocator
_0208674C: .word _ZN11L5Allocator10deallocateEPv
	arm_func_end Common_Deallocate

	arm_func_start Common_SetNextArena
Common_SetNextArena: ; 0x02086750
	mov r1, r0
	ldr r0, _02086760 ; =gL5Allocator
	ldr r12, _02086764 ; =_ZN11L5Allocator12setNextArenaEi
	bx r12
_02086760: .word gL5Allocator
_02086764: .word _ZN11L5Allocator12setNextArenaEi
	arm_func_end Common_SetNextArena

	.section .init, 4
	arm_func_start FUN_02086768
FUN_02086768: ; 0x02086768
	stmfd sp!, {r4, r5, r6, lr}
	mov r0, #0x2000
	bl FX_Sqrt
	ldr r4, _02086A04 ; =0x0208F680
	str r0, [r4, #0x10]
	ldr r0, _02086A08 ; =0x00009CCD
	bl FX_Sqrt
	mov lr, #0x800
	mov r1, #0x32000
	umull r2, r3, lr, r1
	mov r5, lr, asr #0x1f
	adds r12, r2, #0x800
	mla r3, r5, r1, r3
	mov r2, #0x41000
	adc r3, r3, #0
	mov r6, r12, lsr #0xc
	orr r6, r6, r3, lsl #20
	str r0, [r4, #8]
	str lr, [r4, #4]
	umull r3, r0, lr, r2
	mla r0, r5, r2, r0
	ldr r5, _02086A0C ; =0x0000EA3C
	mov r12, r6, asr #0x1f
	str r5, [r4]
	umull r5, lr, r6, r1
	mla lr, r12, r1, lr
	adds r5, r5, #0x800
	adc r1, lr, #0
	mov r5, r5, lsr #0xc
	orr r5, r5, r1, lsl #20
	str r5, [r4, #0x14]
	adds r1, r3, #0x800
	adc r0, r0, #0
	mov r12, r1, lsr #0xc
	orr r12, r12, r0, lsl #20
	mov r0, r12, asr #0x1f
	umull r3, r1, r12, r2
	mla r1, r0, r2, r1
	adds r2, r3, #0x800
	adc r0, r1, #0
	mov r1, r2, lsr #0xc
	orr r1, r1, r0, lsl #20
	str r1, [r4, #0xc]
	ldr r4, _02086A10 ; =gL5Config
	mov r0, r4
	bl _ZN8L5ConfigC1Ev
	mov r0, r4
	ldr r1, _02086A14 ; =_ZN8L5ConfigD1Ev
	ldr r2, _02086A18 ; =0x02099FA8
	bl __register_global_object
	ldr r4, _02086A1C ; =gL5FileRequestManager
	mov r0, r4
	bl FUN_0202ed48
	mov r0, r4
	ldr r1, _02086A20 ; =FUN_0202ed70
	ldr r2, _02086A24 ; =0x02099FB4
	bl __register_global_object
	ldr r4, _02086A28 ; =0x0209A5D0
	mov r0, r4
	bl FUN_0205ff80
	mov r0, r4
	ldr r1, _02086A2C ; =FUN_0205ff98
	ldr r2, _02086A30 ; =0x02099FC0
	bl __register_global_object
	ldr r4, _02086A34 ; =gL5CardController
	mov r0, r4
	bl _ZN16L5CardControllerC1Ev
	mov r0, r4
	ldr r1, _02086A38 ; =_ZN16L5CardControllerD1Ev
	ldr r2, _02086A3C ; =0x02099FCC
	bl __register_global_object
	ldr r4, _02086A40 ; =gL5Allocator
	mov r0, r4
	bl FUN_0202dbf8
	mov r0, r4
	ldr r1, _02086A44 ; =FUN_0202dc1c
	ldr r2, _02086A48 ; =0x02099FD8
	bl __register_global_object
	ldr r4, _02086A4C ; =gL5Sound
	mov r0, r4
	bl FUN_0202b3dc
	mov r0, r4
	ldr r1, _02086A50 ; =FUN_0202b3e0
	ldr r2, _02086A54 ; =0x02099FE4
	bl __register_global_object
	ldr r4, _02086A58 ; =gL5Movie
	mov r0, r4
	bl _ZN7L5MovieC1Ev
	mov r0, r4
	ldr r1, _02086A5C ; =_ZN7L5MovieD1Ev
	ldr r2, _02086A60 ; =0x02099FF0
	bl __register_global_object
	ldr r2, _02086A64 ; =0x0208F6C0
	ldr r0, _02086A68 ; =0x020A3D14
	ldr r1, _02086A6C ; =0x0208F6B0
	str r2, [r0]
	ldr r0, _02086A70 ; =0x0209F5C0
	ldr r2, _02086A74 ; =0x0208F6D0
	str r1, [r0]
	ldr r0, _02086A78 ; =0x02099E8C
	ldr r1, _02086A7C ; =0x0209A3E0
	str r2, [r0, #0x1e4]
	ldr r0, _02086A80 ; =0x02118988
	ldr r4, _02086A84 ; =0x020AF81C
	str r0, [r1]
	mov r0, r4
	bl FUN_02041ac8
	ldr r1, _02086A88 ; =0x0209007C
	add r0, r4, #0x90
	str r1, [r4]
	bl FUN_02047a7c
	add r0, r4, #0x324
	add r0, r0, #0x1c00
	bl FUN_0202ffa4
	mov r0, r4
	ldr r1, _02086A8C ; =FUN_02029d18
	ldr r2, _02086A90 ; =0x02099FFC
	bl __register_global_object
	ldr r4, _02086A94 ; =0x020A9C40
	mov r0, r4
	bl FUN_020453e0
	mov r0, r4
	ldr r1, _02086A98 ; =FUN_02045458
	ldr r2, _02086A9C ; =0x0209A008
	bl __register_global_object
	ldr r4, _02086AA0 ; =0x0209BA20
	mov r0, r4
	bl FUN_0206f0b8
	mov r0, r4
	ldr r1, _02086AA4 ; =FUN_0206f150
	ldr r2, _02086AA8 ; =0x0209A020
	bl __register_global_object
	ldr r4, _02086AAC ; =0x0209A320
	mov r0, r4
	bl FUN_020495b4
	mov r0, r4
	ldr r1, _02086AB0 ; =FUN_020495cc
	ldr r2, _02086AB4 ; =0x0209A02C
	bl __register_global_object
	ldr r4, _02086AB8 ; =0x0209A380
	mov r0, r4
	bl FUN_0204947c
	mov r0, r4
	ldr r1, _02086ABC ; =FUN_0204949c
	ldr r2, _02086AC0 ; =0x0209A038
	bl __register_global_object
	ldr r4, _02086AC4 ; =0x0209A0AC
	mov r0, r4
	bl FUN_0206c0d8
	mov r0, r4
	ldr r1, _02086AC8 ; =FUN_0206c110
	ldr r2, _02086ACC ; =0x0209A044
	bl __register_global_object
	ldr r4, _02086AD0 ; =0x020A18A0
	mov r0, r4
	bl FUN_0203df80
	mov r0, r4
	ldr r1, _02086AD4 ; =FUN_0203df84
	ldr r2, _02086AD8 ; =0x02099F90
	bl __register_global_object
	ldr r2, _02086ADC ; =0x02090204
	ldr r0, _02086AE0 ; =0x0209AEC0
	ldr r1, _02086AE4 ; =FUN_020463f4
	str r2, [r0]
	ldr r2, _02086AE8 ; =0x02099F9C
	bl __register_global_object
	ldmfd sp!, {r4, r5, r6, pc}
_02086A04: .word unk_0208F680
_02086A08: .word 0x00009CCD
_02086A0C: .word 0x0000EA3C
_02086A10: .word gL5Config
_02086A14: .word _ZN8L5ConfigD1Ev
_02086A18: .word unk_02099FA8
_02086A1C: .word gL5FileRequestManager
_02086A20: .word FUN_0202ed70
_02086A24: .word unk_02099FB4
_02086A28: .word unk_0209A5D0
_02086A2C: .word FUN_0205ff98
_02086A30: .word unk_02099FC0
_02086A34: .word gL5CardController
_02086A38: .word _ZN16L5CardControllerD1Ev
_02086A3C: .word unk_02099FCC
_02086A40: .word gL5Allocator
_02086A44: .word FUN_0202dc1c
_02086A48: .word unk_02099FD8
_02086A4C: .word gL5Sound
_02086A50: .word FUN_0202b3e0
_02086A54: .word unk_02099FE4
_02086A58: .word gL5Movie
_02086A5C: .word _ZN7L5MovieD1Ev
_02086A60: .word unk_02099FF0
_02086A64: .word unk_0208F6C0
_02086A68: .word unk_020A3D14
_02086A6C: .word unk_0208F6B0
_02086A70: .word unk_0209F5C0
_02086A74: .word unk_0208F6D0
_02086A78: .word unk_02099E8C
_02086A7C: .word unk_0209A3E0
_02086A80: .word ov16_02118988
_02086A84: .word unk_020AF81C
_02086A88: .word unk_0209007C
_02086A8C: .word FUN_02029d18
_02086A90: .word unk_02099FFC
_02086A94: .word unk_020A9C40
_02086A98: .word FUN_02045458
_02086A9C: .word unk_0209A008
_02086AA0: .word unk_0209BA20
_02086AA4: .word FUN_0206f150
_02086AA8: .word unk_0209A020
_02086AAC: .word unk_0209A320
_02086AB0: .word FUN_020495cc
_02086AB4: .word unk_0209A02C
_02086AB8: .word unk_0209A380
_02086ABC: .word FUN_0204949c
_02086AC0: .word unk_0209A038
_02086AC4: .word unk_0209A0AC
_02086AC8: .word FUN_0206c110
_02086ACC: .word unk_0209A044
_02086AD0: .word unk_020A18A0
_02086AD4: .word FUN_0203df84
_02086AD8: .word unk_02099F90
_02086ADC: .word unk_02090204
_02086AE0: .word unk_0209AEC0
_02086AE4: .word FUN_020463f4
_02086AE8: .word unk_02099F9C
	arm_func_end FUN_02086768

	arm_func_start FUN_02086aec
FUN_02086aec: ; 0x02086AEC
	stmfd sp!, {r3, r4, r5, lr}
	mov r5, #0x2000
	mov r0, r5
	bl FX_Sqrt
	ldr r4, _02086B34 ; =0x0208F880
	str r0, [r4, #0x10]
	ldr r0, _02086B38 ; =0x00009CCD
	bl FX_Sqrt
	mov r1, #0x800
	str r0, [r4, #8]
	ldr r0, _02086B3C ; =0x0000EA3C
	str r1, [r4, #0x14]
	str r0, [r4, #0xc]
	add r0, r5, #0x4e0000
	str r0, [r4]
	add r0, r1, #0x840000
	str r0, [r4, #4]
	ldmfd sp!, {r3, r4, r5, pc}
_02086B34: .word unk_0208F880
_02086B38: .word 0x00009CCD
_02086B3C: .word 0x0000EA3C
	arm_func_end FUN_02086aec

	arm_func_start FUN_02086b40
FUN_02086b40: ; 0x02086B40
	stmfd sp!, {r3, r4, r5, lr}
	mov r5, #0x2000
	mov r0, r5
	bl FX_Sqrt
	ldr r4, _02086B88 ; =0x0208FA30
	str r0, [r4, #8]
	ldr r0, _02086B8C ; =0x00009CCD
	bl FX_Sqrt
	mov r1, #0x800
	str r0, [r4, #0x14]
	ldr r0, _02086B90 ; =0x0000EA3C
	str r1, [r4, #0x10]
	str r0, [r4, #4]
	add r0, r5, #0x4e0000
	str r0, [r4]
	add r0, r1, #0x840000
	str r0, [r4, #0xc]
	ldmfd sp!, {r3, r4, r5, pc}
_02086B88: .word unk_0208FA30
_02086B8C: .word 0x00009CCD
_02086B90: .word 0x0000EA3C
	arm_func_end FUN_02086b40

	arm_func_start FUN_02086b94
FUN_02086b94: ; 0x02086B94
	stmfd sp!, {r3, r4, r5, lr}
	mov r5, #0x2000
	mov r0, r5
	bl FX_Sqrt
	ldr r4, _02086BDC ; =0x0208FBB0
	str r0, [r4, #0x14]
	ldr r0, _02086BE0 ; =0x00009CCD
	bl FX_Sqrt
	mov r1, #0x800
	str r0, [r4, #0x10]
	ldr r0, _02086BE4 ; =0x0000EA3C
	str r1, [r4, #0xc]
	str r0, [r4, #8]
	add r0, r5, #0x4e0000
	str r0, [r4, #4]
	add r0, r1, #0x840000
	str r0, [r4]
	ldmfd sp!, {r3, r4, r5, pc}
_02086BDC: .word unk_0208FBB0
_02086BE0: .word 0x00009CCD
_02086BE4: .word 0x0000EA3C
	arm_func_end FUN_02086b94

	arm_func_start FUN_02086be8
FUN_02086be8: ; 0x02086BE8
	stmfd sp!, {r3, r4, r5, lr}
	mov r5, #0x2000
	mov r0, r5
	bl FX_Sqrt
	ldr r4, _02086C30 ; =0x0208FC08
	str r0, [r4, #4]
	ldr r0, _02086C34 ; =0x00009CCD
	bl FX_Sqrt
	mov r1, #0x800
	str r0, [r4, #0xc]
	ldr r0, _02086C38 ; =0x0000EA3C
	str r1, [r4, #0x10]
	str r0, [r4, #8]
	add r0, r5, #0x4e0000
	str r0, [r4]
	add r0, r1, #0x840000
	str r0, [r4, #0x14]
	ldmfd sp!, {r3, r4, r5, pc}
_02086C30: .word unk_0208FC08
_02086C34: .word 0x00009CCD
_02086C38: .word 0x0000EA3C
	arm_func_end FUN_02086be8

	arm_func_start FUN_02086c3c
FUN_02086c3c: ; 0x02086C3C
	stmfd sp!, {r3, r4, r5, lr}
	mov r5, #0x2000
	mov r0, r5
	bl FX_Sqrt
	ldr r4, _02086C80 ; =0x0208FF14
	str r0, [r4, #0x10]
	ldr r0, _02086C84 ; =0x00009CCD
	bl FX_Sqrt
	str r0, [r4, #0xc]
	ldr r0, _02086C88 ; =0x0000EA3C
	mov r1, #0x800
	stmib r4, {r0, r1}
	add r0, r5, #0x4e0000
	str r0, [r4]
	add r0, r1, #0x840000
	str r0, [r4, #0x14]
	ldmfd sp!, {r3, r4, r5, pc}
_02086C80: .word unk_0208FF14
_02086C84: .word 0x00009CCD
_02086C88: .word 0x0000EA3C
	arm_func_end FUN_02086c3c

	arm_func_start FUN_02086c8c
FUN_02086c8c: ; 0x02086C8C
	stmfd sp!, {r3, r4, r5, lr}
	mov r5, #0x2000
	mov r0, r5
	bl FX_Sqrt
	ldr r4, _02086CD4 ; =0x0208FF2C
	str r0, [r4, #0x14]
	ldr r0, _02086CD8 ; =0x00009CCD
	bl FX_Sqrt
	mov r1, #0x800
	str r0, [r4, #0x10]
	ldr r0, _02086CDC ; =0x0000EA3C
	str r1, [r4, #0xc]
	str r0, [r4, #8]
	add r0, r5, #0x4e0000
	str r0, [r4, #4]
	add r0, r1, #0x840000
	str r0, [r4]
	ldmfd sp!, {r3, r4, r5, pc}
_02086CD4: .word unk_0208FF2C
_02086CD8: .word 0x00009CCD
_02086CDC: .word 0x0000EA3C
	arm_func_end FUN_02086c8c

	arm_func_start FUN_02086ce0
FUN_02086ce0: ; 0x02086CE0
	stmfd sp!, {r3, r4, r5, lr}
	mov r5, #0x2000
	mov r0, r5
	bl FX_Sqrt
	ldr r4, _02086D28 ; =0x0208FF44
	str r0, [r4, #0x14]
	ldr r0, _02086D2C ; =0x00009CCD
	bl FX_Sqrt
	mov r1, #0x800
	str r0, [r4, #0x10]
	ldr r0, _02086D30 ; =0x0000EA3C
	str r1, [r4, #0xc]
	str r0, [r4, #8]
	add r0, r5, #0x4e0000
	str r0, [r4, #4]
	add r0, r1, #0x840000
	str r0, [r4]
	ldmfd sp!, {r3, r4, r5, pc}
_02086D28: .word unk_0208FF44
_02086D2C: .word 0x00009CCD
_02086D30: .word 0x0000EA3C
	arm_func_end FUN_02086ce0

	arm_func_start FUN_02086d34
FUN_02086d34: ; 0x02086D34
	stmfd sp!, {r3, r4, r5, lr}
	mov r5, #0x2000
	mov r0, r5
	bl FX_Sqrt
	ldr r4, _02086D7C ; =0x0208FF5C
	str r0, [r4, #0x14]
	ldr r0, _02086D80 ; =0x00009CCD
	bl FX_Sqrt
	mov r1, #0x800
	str r0, [r4, #0x10]
	ldr r0, _02086D84 ; =0x0000EA3C
	str r1, [r4, #0xc]
	str r0, [r4, #8]
	add r0, r5, #0x4e0000
	str r0, [r4, #4]
	add r0, r1, #0x840000
	str r0, [r4]
	ldmfd sp!, {r3, r4, r5, pc}
_02086D7C: .word unk_0208FF5C
_02086D80: .word 0x00009CCD
_02086D84: .word 0x0000EA3C
	arm_func_end FUN_02086d34

	arm_func_start FUN_02086d88
FUN_02086d88: ; 0x02086D88
	stmfd sp!, {r3, r4, r5, lr}
	mov r5, #0x2000
	mov r0, r5
	bl FX_Sqrt
	ldr r4, _02086DD0 ; =0x0208FF74
	str r0, [r4]
	ldr r0, _02086DD4 ; =0x00009CCD
	bl FX_Sqrt
	mov r1, #0x800
	str r0, [r4, #0x14]
	ldr r0, _02086DD8 ; =0x0000EA3C
	str r1, [r4, #0x10]
	str r0, [r4, #0xc]
	add r0, r5, #0x4e0000
	str r0, [r4, #8]
	add r0, r1, #0x840000
	str r0, [r4, #4]
	ldmfd sp!, {r3, r4, r5, pc}
_02086DD0: .word unk_0208FF74
_02086DD4: .word 0x00009CCD
_02086DD8: .word 0x0000EA3C
	arm_func_end FUN_02086d88

	arm_func_start FUN_02086ddc
FUN_02086ddc: ; 0x02086DDC
	stmfd sp!, {r3, r4, r5, lr}
	mov r5, #0x2000
	mov r0, r5
	bl FX_Sqrt
	ldr r4, _02086E24 ; =0x0209000C
	str r0, [r4, #0x14]
	ldr r0, _02086E28 ; =0x00009CCD
	bl FX_Sqrt
	mov r1, #0x800
	str r0, [r4, #0x10]
	ldr r0, _02086E2C ; =0x0000EA3C
	str r1, [r4, #0xc]
	str r0, [r4, #8]
	add r0, r5, #0x4e0000
	str r0, [r4, #4]
	add r0, r1, #0x840000
	str r0, [r4]
	ldmfd sp!, {r3, r4, r5, pc}
_02086E24: .word unk_0209000C
_02086E28: .word 0x00009CCD
_02086E2C: .word 0x0000EA3C
	arm_func_end FUN_02086ddc

	arm_func_start FUN_02086e30
FUN_02086e30: ; 0x02086E30
	stmfd sp!, {r3, r4, r5, lr}
	mov r5, #0x2000
	mov r0, r5
	bl FX_Sqrt
	ldr r4, _02086E78 ; =0x02090034
	str r0, [r4]
	ldr r0, _02086E7C ; =0x00009CCD
	bl FX_Sqrt
	mov r1, #0x800
	str r0, [r4, #0x14]
	ldr r0, _02086E80 ; =0x0000EA3C
	str r1, [r4, #0x10]
	str r0, [r4, #0xc]
	add r0, r5, #0x4e0000
	str r0, [r4, #8]
	add r0, r1, #0x840000
	str r0, [r4, #4]
	ldmfd sp!, {r3, r4, r5, pc}
_02086E78: .word unk_02090034
_02086E7C: .word 0x00009CCD
_02086E80: .word 0x0000EA3C
	arm_func_end FUN_02086e30

	arm_func_start FUN_02086e84
FUN_02086e84: ; 0x02086E84
	stmfd sp!, {r3, r4, r5, lr}
	mov r5, #0x2000
	mov r0, r5
	bl FX_Sqrt
	ldr r4, _02086ECC ; =0x0209005C
	str r0, [r4]
	ldr r0, _02086ED0 ; =0x00009CCD
	bl FX_Sqrt
	mov r1, #0x800
	str r0, [r4, #0x14]
	ldr r0, _02086ED4 ; =0x0000EA3C
	str r1, [r4, #0x10]
	str r0, [r4, #0xc]
	add r0, r5, #0x4e0000
	str r0, [r4, #8]
	add r0, r1, #0x840000
	str r0, [r4, #4]
	ldmfd sp!, {r3, r4, r5, pc}
_02086ECC: .word unk_0209005C
_02086ED0: .word 0x00009CCD
_02086ED4: .word 0x0000EA3C
	arm_func_end FUN_02086e84

	arm_func_start FUN_02086ed8
FUN_02086ed8: ; 0x02086ED8
	stmfd sp!, {r3, r4, r5, lr}
	mov r5, #0x2000
	mov r0, r5
	bl FX_Sqrt
	ldr r4, _02086F20 ; =0x0209010C
	str r0, [r4, #0x14]
	ldr r0, _02086F24 ; =0x00009CCD
	bl FX_Sqrt
	mov r1, #0x800
	str r0, [r4, #0x10]
	ldr r0, _02086F28 ; =0x0000EA3C
	str r1, [r4, #0xc]
	str r0, [r4, #8]
	add r0, r5, #0x4e0000
	str r0, [r4, #4]
	add r0, r1, #0x840000
	str r0, [r4]
	ldmfd sp!, {r3, r4, r5, pc}
_02086F20: .word unk_0209010C
_02086F24: .word 0x00009CCD
_02086F28: .word 0x0000EA3C
	arm_func_end FUN_02086ed8

	arm_func_start FUN_02086f2c
FUN_02086f2c: ; 0x02086F2C
	stmfd sp!, {r3, r4, r5, lr}
	mov r5, #0x2000
	mov r0, r5
	bl FX_Sqrt
	ldr r4, _02086F74 ; =0x020901D0
	str r0, [r4, #0x14]
	ldr r0, _02086F78 ; =0x00009CCD
	bl FX_Sqrt
	mov r1, #0x800
	str r0, [r4, #4]
	ldr r0, _02086F7C ; =0x0000EA3C
	str r1, [r4]
	str r0, [r4, #0xc]
	add r0, r5, #0x4e0000
	str r0, [r4, #8]
	add r0, r1, #0x840000
	str r0, [r4, #0x18]
	ldmfd sp!, {r3, r4, r5, pc}
_02086F74: .word unk_020901D0
_02086F78: .word 0x00009CCD
_02086F7C: .word 0x0000EA3C
	arm_func_end FUN_02086f2c

	arm_func_start FUN_02086f80
FUN_02086f80: ; 0x02086F80
	stmfd sp!, {r3, r4, r5, lr}
	mov r5, #0x2000
	mov r0, r5
	bl FX_Sqrt
	ldr r4, _02086FC8 ; =0x02090224
	str r0, [r4, #8]
	ldr r0, _02086FCC ; =0x00009CCD
	bl FX_Sqrt
	mov r1, #0x800
	str r0, [r4, #4]
	ldr r0, _02086FD0 ; =0x0000EA3C
	str r1, [r4]
	str r0, [r4, #0xc]
	add r0, r5, #0x4e0000
	str r0, [r4, #0x10]
	add r0, r1, #0x840000
	str r0, [r4, #0x14]
	ldmfd sp!, {r3, r4, r5, pc}
_02086FC8: .word unk_02090224
_02086FCC: .word 0x00009CCD
_02086FD0: .word 0x0000EA3C
	arm_func_end FUN_02086f80

	arm_func_start FUN_02086fd4
FUN_02086fd4: ; 0x02086FD4
	stmfd sp!, {r3, r4, r5, lr}
	mov r5, #0x2000
	mov r0, r5
	bl FX_Sqrt
	ldr r4, _0208701C ; =0x020902D0
	str r0, [r4, #8]
	ldr r0, _02087020 ; =0x00009CCD
	bl FX_Sqrt
	mov r1, #0x800
	str r0, [r4, #0x14]
	ldr r0, _02087024 ; =0x0000EA3C
	str r1, [r4]
	str r0, [r4, #0xc]
	add r0, r5, #0x4e0000
	str r0, [r4, #0x10]
	add r0, r1, #0x840000
	str r0, [r4, #4]
	ldmfd sp!, {r3, r4, r5, pc}
_0208701C: .word unk_020902D0
_02087020: .word 0x00009CCD
_02087024: .word 0x0000EA3C
	arm_func_end FUN_02086fd4

	arm_func_start FUN_02087028
FUN_02087028: ; 0x02087028
	stmfd sp!, {r3, r4, r5, lr}
	mov r5, #0x2000
	mov r0, r5
	bl FX_Sqrt
	ldr r4, _02087070 ; =0x02090408
	str r0, [r4, #0x14]
	ldr r0, _02087074 ; =0x00009CCD
	bl FX_Sqrt
	mov r1, #0x800
	str r0, [r4, #0x10]
	ldr r0, _02087078 ; =0x0000EA3C
	str r1, [r4, #0xc]
	str r0, [r4, #8]
	add r0, r5, #0x4e0000
	str r0, [r4, #4]
	add r0, r1, #0x840000
	str r0, [r4]
	ldmfd sp!, {r3, r4, r5, pc}
_02087070: .word unk_02090408
_02087074: .word 0x00009CCD
_02087078: .word 0x0000EA3C
	arm_func_end FUN_02087028

	arm_func_start FUN_0208707c
FUN_0208707c: ; 0x0208707C
	stmfd sp!, {r3, r4, r5, lr}
	mov r5, #0x2000
	mov r0, r5
	bl FX_Sqrt
	ldr r4, _020870C4 ; =0x02090464
	str r0, [r4, #0x14]
	ldr r0, _020870C8 ; =0x00009CCD
	bl FX_Sqrt
	mov r1, #0x800
	str r0, [r4, #0x10]
	ldr r0, _020870CC ; =0x0000EA3C
	str r1, [r4, #0xc]
	str r0, [r4, #8]
	add r0, r5, #0x4e0000
	str r0, [r4, #4]
	add r0, r1, #0x840000
	str r0, [r4]
	ldmfd sp!, {r3, r4, r5, pc}
_020870C4: .word unk_02090464
_020870C8: .word 0x00009CCD
_020870CC: .word 0x0000EA3C
	arm_func_end FUN_0208707c

	arm_func_start FUN_020870d0
FUN_020870d0: ; 0x020870D0
	stmfd sp!, {r3, r4, r5, lr}
	mov r5, #0x2000
	mov r0, r5
	bl FX_Sqrt
	ldr r4, _02087114 ; =0x020904C0
	str r0, [r4, #0x10]
	ldr r0, _02087118 ; =0x00009CCD
	bl FX_Sqrt
	str r0, [r4, #0xc]
	ldr r0, _0208711C ; =0x0000EA3C
	mov r1, #0x800
	stmib r4, {r0, r1}
	add r0, r5, #0x4e0000
	str r0, [r4]
	add r0, r1, #0x840000
	str r0, [r4, #0x14]
	ldmfd sp!, {r3, r4, r5, pc}
_02087114: .word unk_020904C0
_02087118: .word 0x00009CCD
_0208711C: .word 0x0000EA3C
	arm_func_end FUN_020870d0

	arm_func_start FUN_02087120
FUN_02087120: ; 0x02087120
	stmfd sp!, {r3, r4, r5, lr}
	mov r5, #0x2000
	mov r0, r5
	bl FX_Sqrt
	ldr r4, _02087168 ; =0x020904F4
	str r0, [r4, #0x14]
	ldr r0, _0208716C ; =0x00009CCD
	bl FX_Sqrt
	mov r1, #0x800
	str r0, [r4, #0x10]
	ldr r0, _02087170 ; =0x0000EA3C
	str r1, [r4, #0xc]
	str r0, [r4, #8]
	add r0, r5, #0x4e0000
	str r0, [r4, #4]
	add r0, r1, #0x840000
	str r0, [r4]
	ldmfd sp!, {r3, r4, r5, pc}
_02087168: .word unk_020904F4
_0208716C: .word 0x00009CCD
_02087170: .word 0x0000EA3C
	arm_func_end FUN_02087120

	arm_func_start FUN_02087174
FUN_02087174: ; 0x02087174
	stmfd sp!, {r3, r4, r5, lr}
	mov r5, #0x2000
	mov r0, r5
	bl FX_Sqrt
	ldr r4, _020871BC ; =0x0209055C
	str r0, [r4, #0x14]
	ldr r0, _020871C0 ; =0x00009CCD
	bl FX_Sqrt
	mov r1, #0x800
	str r0, [r4, #0x10]
	ldr r0, _020871C4 ; =0x0000EA3C
	str r1, [r4, #0xc]
	str r0, [r4, #8]
	add r0, r5, #0x4e0000
	str r0, [r4, #4]
	add r0, r1, #0x840000
	str r0, [r4]
	ldmfd sp!, {r3, r4, r5, pc}
_020871BC: .word unk_0209055C
_020871C0: .word 0x00009CCD
_020871C4: .word 0x0000EA3C
	arm_func_end FUN_02087174

	arm_func_start FUN_020871c8
FUN_020871c8: ; 0x020871C8
	stmfd sp!, {r3, r4, r5, lr}
	mov r5, #0x2000
	mov r0, r5
	bl FX_Sqrt
	ldr r4, _0208720C ; =0x02090584
	str r0, [r4, #0x10]
	ldr r0, _02087210 ; =0x00009CCD
	bl FX_Sqrt
	str r0, [r4, #0xc]
	ldr r0, _02087214 ; =0x0000EA3C
	mov r1, #0x800
	stmib r4, {r0, r1}
	add r0, r5, #0x4e0000
	str r0, [r4]
	add r0, r1, #0x840000
	str r0, [r4, #0x14]
	ldmfd sp!, {r3, r4, r5, pc}
_0208720C: .word unk_02090584
_02087210: .word 0x00009CCD
_02087214: .word 0x0000EA3C
	arm_func_end FUN_020871c8

	arm_func_start FUN_02087218
FUN_02087218: ; 0x02087218
	stmfd sp!, {r3, r4, r5, lr}
	mov r5, #0x2000
	mov r0, r5
	bl FX_Sqrt
	ldr r4, _0208725C ; =0x0209059C
	str r0, [r4, #0x10]
	ldr r0, _02087260 ; =0x00009CCD
	bl FX_Sqrt
	str r0, [r4, #0xc]
	ldr r0, _02087264 ; =0x0000EA3C
	mov r1, #0x800
	stmib r4, {r0, r1}
	add r0, r5, #0x4e0000
	str r0, [r4]
	add r0, r1, #0x840000
	str r0, [r4, #0x14]
	ldmfd sp!, {r3, r4, r5, pc}
_0208725C: .word unk_0209059C
_02087260: .word 0x00009CCD
_02087264: .word 0x0000EA3C
	arm_func_end FUN_02087218

	arm_func_start FUN_02087268
FUN_02087268: ; 0x02087268
	stmfd sp!, {r3, r4, r5, lr}
	mov r5, #0x2000
	mov r0, r5
	bl FX_Sqrt
	ldr r4, _020872B0 ; =0x020905B4
	str r0, [r4]
	ldr r0, _020872B4 ; =0x00009CCD
	bl FX_Sqrt
	mov r1, #0x800
	str r0, [r4, #0x14]
	ldr r0, _020872B8 ; =0x0000EA3C
	str r1, [r4, #0x10]
	str r0, [r4, #0xc]
	add r0, r5, #0x4e0000
	str r0, [r4, #8]
	add r0, r1, #0x840000
	str r0, [r4, #4]
	ldmfd sp!, {r3, r4, r5, pc}
_020872B0: .word unk_020905B4
_020872B4: .word 0x00009CCD
_020872B8: .word 0x0000EA3C
	arm_func_end FUN_02087268

	arm_func_start FUN_020872bc
FUN_020872bc: ; 0x020872BC
	stmfd sp!, {r3, r4, r5, lr}
	mov r5, #0x2000
	mov r0, r5
	bl FX_Sqrt
	ldr r4, _02087304 ; =0x020905E8
	str r0, [r4]
	ldr r0, _02087308 ; =0x00009CCD
	bl FX_Sqrt
	mov r1, #0x800
	str r0, [r4, #4]
	ldr r0, _0208730C ; =0x0000EA3C
	str r1, [r4, #0x14]
	str r0, [r4, #0x10]
	add r0, r5, #0x4e0000
	str r0, [r4, #0xc]
	add r0, r1, #0x840000
	str r0, [r4, #8]
	ldmfd sp!, {r3, r4, r5, pc}
_02087304: .word unk_020905E8
_02087308: .word 0x00009CCD
_0208730C: .word 0x0000EA3C
	arm_func_end FUN_020872bc

	arm_func_start FUN_02087310
FUN_02087310: ; 0x02087310
	stmfd sp!, {r3, r4, r5, lr}
	mov r5, #0x2000
	mov r0, r5
	bl FX_Sqrt
	ldr r4, _02087354 ; =0x02090698
	str r0, [r4, #0x10]
	ldr r0, _02087358 ; =0x00009CCD
	bl FX_Sqrt
	str r0, [r4, #0xc]
	ldr r0, _0208735C ; =0x0000EA3C
	mov r1, #0x800
	stmib r4, {r0, r1}
	add r0, r5, #0x4e0000
	str r0, [r4]
	add r0, r1, #0x840000
	str r0, [r4, #0x14]
	ldmfd sp!, {r3, r4, r5, pc}
_02087354: .word unk_02090698
_02087358: .word 0x00009CCD
_0208735C: .word 0x0000EA3C
	arm_func_end FUN_02087310

	arm_func_start FUN_02087360
FUN_02087360: ; 0x02087360
	stmfd sp!, {r3, r4, r5, lr}
	mov r5, #0x2000
	mov r0, r5
	bl FX_Sqrt
	ldr r4, _020873A8 ; =0x020906B0
	str r0, [r4]
	ldr r0, _020873AC ; =0x00009CCD
	bl FX_Sqrt
	mov r1, #0x800
	str r0, [r4, #4]
	ldr r0, _020873B0 ; =0x0000EA3C
	str r1, [r4, #0x14]
	str r0, [r4, #0x10]
	add r0, r5, #0x4e0000
	str r0, [r4, #0xc]
	add r0, r1, #0x840000
	str r0, [r4, #8]
	ldmfd sp!, {r3, r4, r5, pc}
_020873A8: .word unk_020906B0
_020873AC: .word 0x00009CCD
_020873B0: .word 0x0000EA3C
	arm_func_end FUN_02087360

	arm_func_start FUN_020873b4
FUN_020873b4: ; 0x020873B4
	stmfd sp!, {r3, r4, r5, lr}
	mov r5, #0x2000
	mov r0, r5
	bl FX_Sqrt
	ldr r4, _020873FC ; =0x020906C8
	str r0, [r4, #0x14]
	ldr r0, _02087400 ; =0x00009CCD
	bl FX_Sqrt
	mov r1, #0x800
	str r0, [r4, #0x10]
	ldr r0, _02087404 ; =0x0000EA3C
	str r1, [r4, #0xc]
	str r0, [r4, #8]
	add r0, r5, #0x4e0000
	str r0, [r4, #4]
	add r0, r1, #0x840000
	str r0, [r4]
	ldmfd sp!, {r3, r4, r5, pc}
_020873FC: .word unk_020906C8
_02087400: .word 0x00009CCD
_02087404: .word 0x0000EA3C
	arm_func_end FUN_020873b4

	arm_func_start FUN_02087408
FUN_02087408: ; 0x02087408
	stmfd sp!, {r3, r4, r5, lr}
	mov r5, #0x2000
	mov r0, r5
	bl FX_Sqrt
	ldr r4, _02087450 ; =0x020906FC
	str r0, [r4]
	ldr r0, _02087454 ; =0x00009CCD
	bl FX_Sqrt
	mov r1, #0x800
	str r0, [r4, #0x14]
	ldr r0, _02087458 ; =0x0000EA3C
	str r1, [r4, #0x10]
	str r0, [r4, #0xc]
	add r0, r5, #0x4e0000
	str r0, [r4, #8]
	add r0, r1, #0x840000
	str r0, [r4, #4]
	ldmfd sp!, {r3, r4, r5, pc}
_02087450: .word unk_020906FC
_02087454: .word 0x00009CCD
_02087458: .word 0x0000EA3C
	arm_func_end FUN_02087408

	arm_func_start FUN_0208745c
FUN_0208745c: ; 0x0208745C
	stmfd sp!, {r3, r4, r5, lr}
	mov r5, #0x2000
	mov r0, r5
	bl FX_Sqrt
	ldr r4, _020874A4 ; =0x020907BC
	str r0, [r4]
	ldr r0, _020874A8 ; =0x00009CCD
	bl FX_Sqrt
	mov r1, #0x800
	str r0, [r4, #0x14]
	ldr r0, _020874AC ; =0x0000EA3C
	str r1, [r4, #0x10]
	str r0, [r4, #0xc]
	add r0, r5, #0x4e0000
	str r0, [r4, #8]
	add r0, r1, #0x840000
	str r0, [r4, #4]
	ldmfd sp!, {r3, r4, r5, pc}
_020874A4: .word unk_020907BC
_020874A8: .word 0x00009CCD
_020874AC: .word 0x0000EA3C
	arm_func_end FUN_0208745c

	arm_func_start FUN_020874b0
FUN_020874b0: ; 0x020874B0
	stmfd sp!, {r3, r4, r5, lr}
	mov r5, #0x2000
	mov r0, r5
	bl FX_Sqrt
	ldr r4, _020874F4 ; =0x02090804
	str r0, [r4, #0x10]
	ldr r0, _020874F8 ; =0x00009CCD
	bl FX_Sqrt
	str r0, [r4, #0xc]
	ldr r0, _020874FC ; =0x0000EA3C
	mov r1, #0x800
	stmib r4, {r0, r1}
	add r0, r5, #0x4e0000
	str r0, [r4]
	add r0, r1, #0x840000
	str r0, [r4, #0x14]
	ldmfd sp!, {r3, r4, r5, pc}
_020874F4: .word unk_02090804
_020874F8: .word 0x00009CCD
_020874FC: .word 0x0000EA3C
	arm_func_end FUN_020874b0

	arm_func_start FUN_02087500
FUN_02087500: ; 0x02087500
	stmfd sp!, {r3, r4, r5, lr}
	mov r5, #0x2000
	mov r0, r5
	bl FX_Sqrt
	ldr r4, _02087548 ; =0x02090894
	str r0, [r4, #4]
	ldr r0, _0208754C ; =0x00009CCD
	bl FX_Sqrt
	mov r1, #0x800
	str r0, [r4]
	ldr r0, _02087550 ; =0x0000EA3C
	str r1, [r4, #0xc]
	str r0, [r4, #0x14]
	add r0, r5, #0x4e0000
	str r0, [r4, #8]
	add r0, r1, #0x840000
	str r0, [r4, #0x10]
	ldmfd sp!, {r3, r4, r5, pc}
_02087548: .word unk_02090894
_0208754C: .word 0x00009CCD
_02087550: .word 0x0000EA3C
	arm_func_end FUN_02087500

	arm_func_start FUN_02087554
FUN_02087554: ; 0x02087554
	stmfd sp!, {r3, r4, r5, lr}
	mov r5, #0x2000
	mov r0, r5
	bl FX_Sqrt
	ldr r4, _0208759C ; =0x0209093C
	str r0, [r4, #8]
	ldr r0, _020875A0 ; =0x00009CCD
	bl FX_Sqrt
	mov r1, #0x800
	str r0, [r4]
	ldr r0, _020875A4 ; =0x0000EA3C
	str r1, [r4, #4]
	str r0, [r4, #0x14]
	add r0, r5, #0x4e0000
	str r0, [r4, #0x10]
	add r0, r1, #0x840000
	str r0, [r4, #0xc]
	ldmfd sp!, {r3, r4, r5, pc}
_0208759C: .word unk_0209093C
_020875A0: .word 0x00009CCD
_020875A4: .word 0x0000EA3C
	arm_func_end FUN_02087554

	arm_func_start FUN_020875a8
FUN_020875a8: ; 0x020875A8
	stmfd sp!, {r3, r4, r5, lr}
	mov r5, #0x2000
	mov r0, r5
	bl FX_Sqrt
	ldr r4, _020875F0 ; =0x020909B0
	str r0, [r4]
	ldr r0, _020875F4 ; =0x00009CCD
	bl FX_Sqrt
	mov r1, #0x800
	str r0, [r4, #4]
	ldr r0, _020875F8 ; =0x0000EA3C
	str r1, [r4, #0x14]
	str r0, [r4, #0x10]
	add r0, r5, #0x4e0000
	str r0, [r4, #0xc]
	add r0, r1, #0x840000
	str r0, [r4, #8]
	ldmfd sp!, {r3, r4, r5, pc}
_020875F0: .word unk_020909B0
_020875F4: .word 0x00009CCD
_020875F8: .word 0x0000EA3C
	arm_func_end FUN_020875a8

	arm_func_start FUN_020875fc
FUN_020875fc: ; 0x020875FC
	stmfd sp!, {r3, r4, r5, lr}
	mov r5, #0x2000
	mov r0, r5
	bl FX_Sqrt
	ldr r4, _02087644 ; =0x02090B3C
	str r0, [r4, #4]
	ldr r0, _02087648 ; =0x00009CCD
	bl FX_Sqrt
	mov r1, #0x800
	str r0, [r4, #0x10]
	ldr r0, _0208764C ; =0x0000EA3C
	str r1, [r4, #0xc]
	str r0, [r4]
	add r0, r5, #0x4e0000
	str r0, [r4, #0x14]
	add r0, r1, #0x840000
	str r0, [r4, #8]
	ldmfd sp!, {r3, r4, r5, pc}
_02087644: .word unk_02090B3C
_02087648: .word 0x00009CCD
_0208764C: .word 0x0000EA3C
	arm_func_end FUN_020875fc

	arm_func_start FUN_02087650
FUN_02087650: ; 0x02087650
	stmfd sp!, {r3, r4, r5, lr}
	mov r5, #0x2000
	mov r0, r5
	bl FX_Sqrt
	ldr r4, _02087698 ; =0x02090DB4
	str r0, [r4, #0x14]
	ldr r0, _0208769C ; =0x00009CCD
	bl FX_Sqrt
	mov r1, #0x800
	str r0, [r4, #0x10]
	ldr r0, _020876A0 ; =0x0000EA3C
	str r1, [r4, #0xc]
	str r0, [r4, #4]
	add r0, r5, #0x4e0000
	str r0, [r4]
	add r0, r1, #0x840000
	str r0, [r4, #8]
	ldmfd sp!, {r3, r4, r5, pc}
_02087698: .word unk_02090DB4
_0208769C: .word 0x00009CCD
_020876A0: .word 0x0000EA3C
	arm_func_end FUN_02087650

	arm_func_start FUN_020876a4
FUN_020876a4: ; 0x020876A4
	stmfd sp!, {r3, r4, r5, lr}
	mov r5, #0x2000
	mov r0, r5
	bl FX_Sqrt
	ldr r4, _020876EC ; =0x020912B0
	str r0, [r4, #0x14]
	ldr r0, _020876F0 ; =0x00009CCD
	bl FX_Sqrt
	mov r1, #0x800
	str r0, [r4, #0x10]
	ldr r0, _020876F4 ; =0x0000EA3C
	str r1, [r4, #0xc]
	str r0, [r4, #8]
	add r0, r5, #0x4e0000
	str r0, [r4, #4]
	add r0, r1, #0x840000
	str r0, [r4]
	ldmfd sp!, {r3, r4, r5, pc}
_020876EC: .word unk_020912B0
_020876F0: .word 0x00009CCD
_020876F4: .word 0x0000EA3C
	arm_func_end FUN_020876a4

	arm_func_start FUN_020876f8
FUN_020876f8: ; 0x020876F8
	stmfd sp!, {r3, r4, r5, lr}
	mov r5, #0x2000
	mov r0, r5
	bl FX_Sqrt
	ldr r4, _02087740 ; =0x020912D8
	str r0, [r4, #4]
	ldr r0, _02087744 ; =0x00009CCD
	bl FX_Sqrt
	mov r1, #0x800
	str r0, [r4, #8]
	ldr r0, _02087748 ; =0x0000EA3C
	str r1, [r4]
	str r0, [r4, #0x14]
	add r0, r5, #0x4e0000
	str r0, [r4, #0x10]
	add r0, r1, #0x840000
	str r0, [r4, #0xc]
	ldmfd sp!, {r3, r4, r5, pc}
_02087740: .word unk_020912D8
_02087744: .word 0x00009CCD
_02087748: .word 0x0000EA3C
	arm_func_end FUN_020876f8

	arm_func_start FUN_0208774c
FUN_0208774c: ; 0x0208774C
	stmfd sp!, {r3, r4, r5, lr}
	mov r5, #0x2000
	mov r0, r5
	bl FX_Sqrt
	ldr r4, _02087794 ; =0x020938A0
	str r0, [r4]
	ldr r0, _02087798 ; =0x00009CCD
	bl FX_Sqrt
	mov r1, #0x800
	str r0, [r4, #4]
	ldr r0, _0208779C ; =0x0000EA3C
	str r1, [r4, #0x14]
	str r0, [r4, #0x10]
	add r0, r5, #0x4e0000
	str r0, [r4, #0xc]
	add r0, r1, #0x840000
	str r0, [r4, #8]
	ldmfd sp!, {r3, r4, r5, pc}
_02087794: .word unk_020938A0
_02087798: .word 0x00009CCD
_0208779C: .word 0x0000EA3C
	arm_func_end FUN_0208774c

	arm_func_start FUN_020877a0
FUN_020877a0: ; 0x020877A0
	stmfd sp!, {r3, r4, r5, lr}
	mov r5, #0x2000
	mov r0, r5
	bl FX_Sqrt
	ldr r4, _020877E4 ; =0x020938F4
	str r0, [r4, #0x10]
	ldr r0, _020877E8 ; =0x00009CCD
	bl FX_Sqrt
	str r0, [r4, #0xc]
	ldr r0, _020877EC ; =0x0000EA3C
	mov r1, #0x800
	stmib r4, {r0, r1}
	add r0, r5, #0x4e0000
	str r0, [r4]
	add r0, r1, #0x840000
	str r0, [r4, #0x14]
	ldmfd sp!, {r3, r4, r5, pc}
_020877E4: .word unk_020938F4
_020877E8: .word 0x00009CCD
_020877EC: .word 0x0000EA3C
	arm_func_end FUN_020877a0
	; 0x020877F0

    .data
	.global unk_020938A0
unk_020938A0:
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.global unk_020938B8
unk_020938B8:
	.asciz "%s.pkh"
	.balign 4, 0
	.global unk_020938C0
unk_020938C0:
	.asciz "%s.pkb"
	.balign 4, 0
	.global unk_020938C8
unk_020938C8:
	.asciz "%s.pkh"
	.balign 4, 0
	.global unk_020938D0
unk_020938D0:
	.asciz "%s.pkb"
	.balign 4, 0
	.global unk_020938D8
unk_020938D8:
	.asciz "(%d)"
	.balign 4, 0
	.global unk_020938E0
unk_020938E0:
	.asciz "(%d)"
	.balign 4, 0
	.global unk_020938E8
unk_020938E8:
	.asciz "/data_iz/"
	.balign 4, 0
	.global unk_020938F4
unk_020938F4:
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.global unk_0209390C
unk_0209390C:
	.byte 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00

    .bss
	.global unk_020BC504
unk_020BC504:
	.space 0x0C
	.global unk_020BC510
unk_020BC510:
	.space 0xC0
	.global unk_020BC5D0
unk_020BC5D0:
	.space 0x04
	.global unk_020BC5D4
unk_020BC5D4:
	.space 0x0C
	.global unk_020BC5E0
unk_020BC5E0:
	.space 0x02
	.global unk_020BC5E2
unk_020BC5E2:
	.space 0x156
	.global unk_020BC738
unk_020BC738:
	.space 0x408
