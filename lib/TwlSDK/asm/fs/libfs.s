
	.include "asm/macros/function.inc"
	.include "libfs.inc"

	.text
	arm_func_start FSi_IsEventCommand
FSi_IsEventCommand: ; 0x0200C8C8
	sub r3, r0, #9
	cmp r3, #0x1a
	mov r0, #0
	bxhi lr
	ldr r1, _0200C8EC ; =0x0400030F
	mov r2, #1
	tst r1, r2, lsl r3
	movne r0, r2
	bx lr
_0200C8EC: .word 0x0400030F
	arm_func_end FSi_IsEventCommand

	arm_func_start FSi_EndCommand
FSi_EndCommand: ; 0x0200C8F0
	stmfd sp!, {r4, r5, r6, r7, r8, lr}
	mov r7, r0
	mov r6, r1
	bl OS_DisableInterrupts
	ldr r5, [r7, #8]
	mov r4, r0
	cmp r5, #0
	beq _0200C948
	ldr r0, [r5, #8]
	add r1, r5, #8
	cmp r0, #0
	beq _0200C940
_0200C920:
	cmp r0, r7
	ldreq r0, [r7]
	streq r0, [r1]
	beq _0200C940
	mov r1, r0
	ldr r0, [r0]
	cmp r0, #0
	bne _0200C920
_0200C940:
	mov r0, #0
	str r0, [r7]
_0200C948:
	ldr r0, [r7, #0xc]
	mov r0, r0, lsr #8
	and r8, r0, #0xff
	mov r0, r8
	bl FSi_IsEventCommand
	cmp r0, #0
	bne _0200C970
	cmp r5, #0
	strne r8, [r5, #0x18]
	strne r6, [r5, #0x1c]
_0200C970:
	ldr r1, [r7, #0xc]
	add r0, r7, #0x18
	bic r1, r1, #0xcf
	str r6, [r7, #0x14]
	str r1, [r7, #0xc]
	bl OS_WakeupThread
	mov r0, r4
	bl OS_RestoreInterrupts
	ldmfd sp!, {r4, r5, r6, r7, r8, pc}
	arm_func_end FSi_EndCommand

	arm_func_start FSi_WaitForArchiveCompletion
FSi_WaitForArchiveCompletion: ; 0x0200C994
	stmfd sp!, {r3, r4, r5, lr}
	mov r5, r0
	cmp r1, #0x100
	bne _0200C9E4
	bl OS_DisableInterrupts
	ldr r1, [r5, #0xc]
	mov r4, r0
	tst r1, #8
	bne _0200C9CC
_0200C9B8:
	add r0, r5, #0x18
	bl OS_SleepThread
	ldr r0, [r5, #0xc]
	tst r0, #8
	beq _0200C9B8
_0200C9CC:
	mov r0, r4
	bl OS_RestoreInterrupts
	ldr r0, [r5, #0xc]
	ldr r1, [r5, #0x14]
	bic r0, r0, #8
	str r0, [r5, #0xc]
_0200C9E4:
	mov r0, r1
	ldmfd sp!, {r3, r4, r5, pc}
	arm_func_end FSi_WaitForArchiveCompletion

	arm_func_start FSi_InvokeCommand
FSi_InvokeCommand: ; 0x0200C9EC
	stmfd sp!, {r3, r4, r5, r6, lr}
	sub sp, sp, #4
	mov r5, r0
	ldr r0, [r5, #8]
	mov r4, r1
	cmp r4, #0x23
	ldr r12, [r0, #0x24]
	movhs r6, #4
	bhs _0200CD1C
	ldr r1, [r12, r4, lsl #2]
	cmp r1, #0
	moveq r6, #4
	beq _0200CD1C
	cmp r4, #0x22
	addls pc, pc, r4, lsl #2
	b _0200CD18
_0200CA2C: ; jump table
	b _0200CAB8 ; case 0
	b _0200CACC ; case 1
	b _0200CAD8 ; case 2
	b _0200CAF0 ; case 3
	b _0200CB0C ; case 4
	b _0200CB28 ; case 5
	b _0200CB44 ; case 6
	b _0200CB50 ; case 7
	b _0200CB68 ; case 8
	b _0200CB74 ; case 9
	b _0200CB88 ; case 10
	b _0200CB9C ; case 11
	b _0200CBB0 ; case 12
	b _0200CBC4 ; case 13
	b _0200CBE0 ; case 14
	b _0200CBF0 ; case 15
	b _0200CBFC ; case 16
	b _0200CC08 ; case 17
	b _0200CC1C ; case 18
	b _0200CC30 ; case 19
	b _0200CC40 ; case 20
	b _0200CC4C ; case 21
	b _0200CC60 ; case 22
	b _0200CC78 ; case 23
	b _0200CC84 ; case 24
	b _0200CC90 ; case 25
	b _0200CCA0 ; case 26
	b _0200CCAC ; case 27
	b _0200CCC4 ; case 28
	b _0200CD18 ; case 29
	b _0200CCD4 ; case 30
	b _0200CCDC ; case 31
	b _0200CCE8 ; case 32
	b _0200CD04 ; case 33
	b _0200CD0C ; case 34
_0200CAB8:
	ldr r3, [r5, #0x10]
	ldr r12, [r12]
_0200CAC0:
	ldr r2, [r3], #4
_0200CAC4:
	mov r1, r5
_0200CAC8:
	b _0200CAE8
_0200CACC:
	ldr r3, [r5, #0x10]
	ldr r12, [r12, #4]
	b _0200CAC0
_0200CAD8:
	ldr r1, [r5, #0x10]
	ldr r12, [r12, #8]
_0200CAE0:
	ldmia r1, {r2, r3}
	mov r1, r5
_0200CAE8:
	blx r12
_0200CAEC:
	b _0200CB04
_0200CAF0:
	ldr r1, [r5, #0x10]
	ldr r3, [r12, #0xc]
_0200CAF8:
	ldr r2, [r1]
_0200CAFC:
	mov r1, r5
	blx r3
_0200CB04:
	mov r6, r0
	b _0200CD1C
_0200CB0C:
	ldr r2, [r5, #0x10]
	ldr r1, [r2, #0xc]
	add r3, r2, #8
	str r1, [sp]
	ldmia r2, {r1, r2}
	ldr r12, [r12, #0x10]
	b _0200CAC8
_0200CB28:
	ldr r3, [r5, #0x10]
	mov r1, r5
	add r2, r3, #8
	str r2, [sp]
	ldmia r3, {r2, r3}
	ldr r12, [r12, #0x14]
	b _0200CAC8
_0200CB44:
	ldr r1, [r5, #0x10]
	ldr r12, [r12, #0x18]
	b _0200CAE0
_0200CB50:
	ldr r3, [r5, #0x10]
	mov r1, r5
	str r3, [sp]
	ldmib r3, {r2, r3}
	ldr r12, [r12, #0x1c]
	b _0200CAC8
_0200CB68:
	ldr r2, [r12, #0x20]
_0200CB6C:
	mov r1, r5
	b _0200CC38
_0200CB74:
	ldr r1, [r12, #0x24]
	blx r1
	add sp, sp, #4
	mov r0, #0
	ldmfd sp!, {r3, r4, r5, r6, pc}
_0200CB88:
	ldr r1, [r12, #0x28]
	blx r1
	add sp, sp, #4
	mov r0, #0
	ldmfd sp!, {r3, r4, r5, r6, pc}
_0200CB9C:
	ldr r1, [r12, #0x2c]
	blx r1
	add sp, sp, #4
	mov r0, #0
	ldmfd sp!, {r3, r4, r5, r6, pc}
_0200CBB0:
	ldr r1, [r12, #0x30]
	blx r1
	add sp, sp, #4
	mov r0, #0
	ldmfd sp!, {r3, r4, r5, r6, pc}
_0200CBC4:
	ldr r3, [r5, #0x10]
	mov r1, r5
	ldr r2, [r3, #8]
	str r2, [sp]
	ldmia r3, {r2, r3}
	ldr r12, [r12, #0x34]
	b _0200CAC8
_0200CBE0:
	ldr r2, [r5, #0x10]
	ldr r12, [r12, #0x38]
	ldr r3, [r2, #4]
	b _0200CAC4
_0200CBF0:
	ldr r2, [r5, #0x10]
	ldr r3, [r12, #0x3c]
_0200CBF8:
	b _0200CAFC
_0200CBFC:
	ldr r2, [r5, #0x10]
	ldr r3, [r12, #0x40]
	b _0200CBF8
_0200CC08:
	ldr r1, [r12, #0x44]
	blx r1
	add sp, sp, #4
	mov r0, #0
	ldmfd sp!, {r3, r4, r5, r6, pc}
_0200CC1C:
	ldr r1, [r12, #0x48]
	blx r1
	add sp, sp, #4
	mov r0, #0
	ldmfd sp!, {r3, r4, r5, r6, pc}
_0200CC30:
	ldr r1, [r5, #0x10]
	ldr r2, [r12, #0x4c]
_0200CC38:
	blx r2
	b _0200CAEC
_0200CC40:
	ldr r3, [r5, #0x10]
	ldr r12, [r12, #0x50]
	b _0200CC98
_0200CC4C:
	ldr r2, [r5, #0x10]
	ldr r3, [r12, #0x54]
_0200CC54:
	ldmia r2, {r1, r2}
	blx r3
	b _0200CAEC
_0200CC60:
	ldr r3, [r5, #0x10]
	ldr r1, [r3, #0xc]
	str r1, [sp]
	ldmia r3, {r1, r2, r3}
	ldr r12, [r12, #0x58]
	b _0200CAC8
_0200CC78:
	ldr r3, [r5, #0x10]
	ldr r12, [r12, #0x5c]
	b _0200CC98
_0200CC84:
	ldr r3, [r5, #0x10]
	ldr r12, [r12, #0x60]
	b _0200CC98
_0200CC90:
	ldr r3, [r5, #0x10]
	ldr r12, [r12, #0x64]
_0200CC98:
	ldmia r3, {r1, r2, r3}
	b _0200CAC8
_0200CCA0:
	ldr r2, [r5, #0x10]
	ldr r3, [r12, #0x68]
	b _0200CC54
_0200CCAC:
	ldr r3, [r5, #0x10]
	ldr r1, [r3, #0xc]
	str r1, [sp]
	ldmia r3, {r1, r2, r3}
	ldr r12, [r12, #0x6c]
	b _0200CAC8
_0200CCC4:
	ldr r1, [r5, #0x10]
	ldr r2, [r12, #0x70]
	ldr r1, [r1]
	b _0200CC38
_0200CCD4:
	ldr r2, [r12, #0x78]
	b _0200CB6C
_0200CCDC:
	ldr r1, [r5, #0x10]
	ldr r3, [r12, #0x7c]
	b _0200CAF8
_0200CCE8:
	ldr r3, [r5, #0x10]
	mov r1, r5
	ldr r2, [r3, #8]
	str r2, [sp]
	ldmia r3, {r2, r3}
	ldr r12, [r12, #0x80]
	b _0200CAC8
_0200CD04:
	ldr r2, [r12, #0x84]
	b _0200CB6C
_0200CD0C:
	ldr r1, [r5, #0x10]
	ldr r12, [r12, #0x88]
	b _0200CAE0
_0200CD18:
	mov r6, #4
_0200CD1C:
	mov r0, r4
	bl FSi_IsEventCommand
	cmp r0, #0
	bne _0200CD60
	ldr r0, [r5, #0xc]
	tst r0, #4
	beq _0200CD4C
	mov r0, r5
	mov r1, r6
	bl FSi_WaitForArchiveCompletion
	mov r6, r0
	b _0200CD60
_0200CD4C:
	cmp r6, #0x100
	beq _0200CD60
	mov r0, r5
	mov r1, r6
	bl FSi_EndCommand
_0200CD60:
	mov r0, r6
	add sp, sp, #4
	ldmfd sp!, {r3, r4, r5, r6, pc}
	arm_func_end FSi_InvokeCommand

	arm_func_start FSi_NextCommand
FSi_NextCommand: ; 0x0200CD6C
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, lr}
	sub sp, sp, #0x48
	mov r10, r0
	mov r9, r1
	mov r7, #0
	bl OS_DisableInterrupts
	ldr r1, [r10, #0x14]
	mov r11, r0
	tst r1, #0x20
	bicne r1, r1, #0x20
	ldrne r0, [r10, #8]
	strne r1, [r10, #0x14]
	cmpne r0, #0
	beq _0200CDF4
	mov r5, r7
	mov r6, #1
	mov r4, #3
_0200CDB0:
	ldr r1, [r0, #0xc]
	ldr r8, [r0]
	tst r1, #2
	movne r1, r6
	moveq r1, r5
	cmp r1, #0
	beq _0200CDE8
	ldr r1, [r0, #0xc]
	tst r1, #0x40
	bne _0200CDE8
	mov r1, r4
	bl FSi_EndCommand
	cmp r8, #0
	ldreq r8, [r10, #8]
_0200CDE8:
	mov r0, r8
	cmp r8, #0
	bne _0200CDB0
_0200CDF4:
	mov r0, r11
	bl OS_RestoreInterrupts
	bl OS_DisableInterrupts
	ldr r1, [r10, #0x14]
	mov r4, r0
	tst r1, #0x40
	bne _0200CEAC
	tst r1, #8
	bne _0200CEAC
	ldr r0, [r10, #8]
	cmp r0, #0
	beq _0200CEAC
	cmp r9, #0
	beq _0200CE38
	tst r1, #0x10
	moveq r5, #1
	beq _0200CE3C
_0200CE38:
	mov r5, #0
_0200CE3C:
	cmp r5, #0
	ldrne r0, [r10, #0x14]
	orrne r0, r0, #0x10
	strne r0, [r10, #0x14]
	mov r0, r4
	bl OS_RestoreInterrupts
	cmp r5, #0
	beq _0200CE68
	ldr r0, [r10, #8]
	mov r1, #9
	bl FSi_InvokeCommand
_0200CE68:
	bl OS_DisableInterrupts
	cmp r9, #0
	cmpeq r5, #0
	ldrne r7, [r10, #8]
	mov r4, r0
	ldrne r0, [r7, #0xc]
	orrne r0, r0, #0x40
	strne r0, [r7, #0xc]
	cmp r9, #0
	beq _0200CEA8
	ldr r0, [r7, #0xc]
	tst r0, #4
	beq _0200CEA8
	add r0, r7, #0x18
	bl OS_WakeupThread
	mov r7, #0
_0200CEA8:
	b _0200CF04
_0200CEAC:
	cmp r9, #0
	beq _0200CF04
	tst r1, #0x10
	beq _0200CEE4
	add r5, sp, #0
	mov r0, r5
	bl FS_InitFile
	str r10, [sp, #8]
	ldr r1, [r10, #0x14]
	mov r0, r5
	bic r2, r1, #0x10
	mov r1, #0xa
	str r2, [r10, #0x14]
	bl FSi_InvokeCommand
_0200CEE4:
	ldr r0, [r10, #0x14]
	tst r0, #0x40
	beq _0200CF04
	bic r0, r0, #0x40
	orr r1, r0, #8
	add r0, r10, #0xc
	str r1, [r10, #0x14]
	bl OS_WakeupThread
_0200CF04:
	mov r0, r4
	bl OS_RestoreInterrupts
	mov r0, r7
	add sp, sp, #0x48
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
	arm_func_end FSi_NextCommand

	arm_func_start FSi_ExecuteAsyncCommand
FSi_ExecuteAsyncCommand: ; 0x0200CF18
	stmfd sp!, {r4, r5, r6, r7, r8, lr}
	movs r5, r0
	ldr r4, [r5, #8]
	ldmeqfd sp!, {r4, r5, r6, r7, r8, pc}
	mov r7, #0
	mov r6, #1
_0200CF30:
	bl OS_DisableInterrupts
	ldr r1, [r5, #0xc]
	mov r8, r0
	orr r0, r1, #0x40
	str r0, [r5, #0xc]
	tst r0, #4
	beq _0200CF58
	add r0, r5, #0x18
	bl OS_WakeupThread
	mov r5, r7
_0200CF58:
	mov r0, r8
	bl OS_RestoreInterrupts
	cmp r5, #0
	ldmeqfd sp!, {r4, r5, r6, r7, r8, pc}
	ldr r1, [r5, #0xc]
	mov r0, r5
	mov r1, r1, lsr #8
	and r1, r1, #0xff
	bl FSi_InvokeCommand
	cmp r0, #0x100
	ldmeqfd sp!, {r4, r5, r6, r7, r8, pc}
	mov r0, r4
	mov r1, r6
	bl FSi_NextCommand
	movs r5, r0
	bne _0200CF30
	ldmfd sp!, {r4, r5, r6, r7, r8, pc}
	arm_func_end FSi_ExecuteAsyncCommand

	arm_func_start FSi_ExecuteSyncCommand
FSi_ExecuteSyncCommand: ; 0x0200CF9C
	stmfd sp!, {r3, r4, r5, lr}
	mov r5, r0
	bl OS_DisableInterrupts
	mov r4, r0
	b _0200CFB8
_0200CFB0:
	add r0, r5, #0x18
	bl OS_SleepThread
_0200CFB8:
	ldr r0, [r5, #0xc]
	tst r0, #0x40
	bne _0200CFCC
	tst r0, #1
	bne _0200CFB0
_0200CFCC:
	mov r0, r4
	bl OS_RestoreInterrupts
	ldr r0, [r5, #0xc]
	tst r0, #0x40
	ldmeqfd sp!, {r3, r4, r5, pc}
	ldr r1, [r5, #0xc]
	mov r0, r5
	mov r1, r1, lsr #8
	and r1, r1, #0xff
	ldr r4, [r5, #8]
	bl FSi_InvokeCommand
	mov r1, r0
	mov r0, r5
	bl FSi_EndCommand
	mov r0, r4
	mov r1, #1
	bl FSi_NextCommand
	cmp r0, #0
	ldmeqfd sp!, {r3, r4, r5, pc}
	bl FSi_ExecuteAsyncCommand
	ldmfd sp!, {r3, r4, r5, pc}
	arm_func_end FSi_ExecuteSyncCommand

	arm_func_start FSi_SendCommand
FSi_SendCommand: ; 0x0200D020
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, lr}
	mov r9, r0
	ldr r0, [r9, #0xc]
	mov r6, #0
	tst r0, #1
	mov r7, r6
	movne r0, #1
	moveq r0, r7
	mov r5, r1
	mov r8, r2
	ldr r4, [r9, #8]
	cmp r0, #0
	beq _0200D058
	bl OS_Terminate
_0200D058:
	cmp r4, #0
	moveq r0, #6
	streq r0, [r9, #0x14]
	moveq r0, #0
	ldmeqfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
	ldr r0, [r9, #0xc]
	mov r1, #2
	bic r0, r0, #0xff00
	orr r0, r0, r5, lsl #8
	orr r0, r0, #1
	str r0, [r9, #0xc]
	cmp r8, #0
	orrne r0, r0, #4
	str r1, [r9, #0x14]
	str r6, [r9]
	strne r0, [r9, #0xc]
	bl OS_DisableInterrupts
	ldr r1, [r4, #0x14]
	mov r5, r0
	tst r1, #0x80
	beq _0200D0BC
	mov r0, r9
	mov r1, #3
	bl FSi_EndCommand
	b _0200D0E0
_0200D0BC:
	ldr r1, [r4, #8]
	add r0, r4, #8
	cmp r1, #0
	beq _0200D0DC
_0200D0CC:
	mov r0, r1
	ldr r1, [r1]
	cmp r1, #0
	bne _0200D0CC
_0200D0DC:
	str r9, [r0]
_0200D0E0:
	ldr r0, [r4, #8]
	mov r6, #0
	cmp r0, r9
	bne _0200D0FC
	ldr r0, [r4, #0x14]
	tst r0, #0x10
	moveq r6, #1
_0200D0FC:
	mov r0, r5
	bl OS_RestoreInterrupts
	ldr r0, [r9, #0x14]
	cmp r0, #3
	beq _0200D150
	mov r0, r4
	mov r1, r6
	bl FSi_NextCommand
	cmp r8, #0
	beq _0200D140
	mov r0, r9
	bl FSi_ExecuteSyncCommand
	ldr r0, [r9, #0x14]
	mov r7, #1
	cmp r0, #0
	movne r7, #0
	b _0200D150
_0200D140:
	cmp r0, #0
	beq _0200D14C
	bl FSi_ExecuteAsyncCommand
_0200D14C:
	mov r7, #1
_0200D150:
	mov r0, r7
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
	arm_func_end FSi_SendCommand

	arm_func_start FS_FindArchive
FS_FindArchive: ; 0x0200D158
	stmfd sp!, {r4, r5, r6, r7, r8, r9, r10, lr}
	mov r9, r0
	mov r8, r1
	bl OS_DisableInterrupts
	ldr r1, _0200D1E0 ; =arc_list
	mov r6, r0
	ldr r7, [r1]
	cmp r7, #0
	beq _0200D1D0
	mov r4, #0
	mov r5, #1
_0200D184:
	ldr r0, [r7, #0x14]
	tst r0, #2
	movne r0, r5
	moveq r0, r4
	cmp r0, #0
	beq _0200D1C4
	mov r0, r7
	bl FS_GetArchiveName
	mov r1, r9
	mov r2, r8
	mov r10, r0
	bl STD_CompareNString
	cmp r0, #0
	ldreqsb r0, [r8, r10]
	cmpeq r0, #0
	beq _0200D1D0
_0200D1C4:
	ldr r7, [r7, #4]
	cmp r7, #0
	bne _0200D184
_0200D1D0:
	mov r0, r6
	bl OS_RestoreInterrupts
	mov r0, r7
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, pc}
_0200D1E0: .word arc_list
	arm_func_end FS_FindArchive

	arm_func_start FS_SetCurrentDirectory
FS_SetCurrentDirectory: ; 0x0200D1E4
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, lr}
	sub sp, sp, #0x160
	add r8, sp, #0x5c
	mov r4, #0
	add r1, sp, #0
	mov r2, r8
	str r4, [sp]
	bl FS_NormalizePath
	movs r7, r0
	beq _0200D2A4
	ldr r9, _0200D2B0 ; =arc_list
	ldr r6, _0200D2B4 ; =current_dir_path
	str r7, [r9, #4]
	strh r4, [r9, #8]
	strh r4, [r9, #0xa]
	mov r5, #0x104
	mov r0, r6
	mov r1, r8
	mov r2, r5
	str r4, [r9, #0xc]
	bl STD_CopyLString
	ldr r0, [r7, #0x24]
	ldr r0, [r0, #0x10]
	cmp r0, #0
	beq _0200D2A0
	add r4, sp, #0x14
	mov r0, r4
	bl FS_InitFile
	ldr r3, [sp]
	add r12, sp, #4
	mov r2, #1
	mov r0, r4
	mov r1, #4
	str r7, [sp, #0x1c]
	str r12, [sp, #0x24]
	str r3, [sp, #4]
	str r8, [sp, #8]
	str r2, [sp, #0x10]
	bl FSi_SendCommand
	cmp r0, #0
	beq _0200D2A0
	ldr r3, [sp, #0xc]
	mov r0, r6
	mov r1, r8
	mov r2, r5
	strh r3, [r9, #8]
	bl STD_CopyLString
_0200D2A0:
	mov r4, #1
_0200D2A4:
	mov r0, r4
	add sp, sp, #0x160
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
_0200D2B0: .word arc_list
_0200D2B4: .word current_dir_path
	arm_func_end FS_SetCurrentDirectory

	arm_func_start FSi_CopySafeString
FSi_CopySafeString: ; 0x0200D2B8
	stmfd sp!, {r3, lr}
	sub lr, r1, #1
	cmp lr, r3
	movge lr, r3
	mov r12, #0
	b _0200D2D8
_0200D2D0:
	strb r1, [r0, r12]
	add r12, r12, #1
_0200D2D8:
	cmp r12, lr
	bge _0200D2EC
	ldrsb r1, [r2, r12]
	cmp r1, #0
	bne _0200D2D0
_0200D2EC:
	cmp r12, r3
	bge _0200D308
	ldrsb r1, [r2, r12]
	cmp r1, #0
	ldrne r1, [sp, #8]
	movne r2, #1
	strne r2, [r1]
_0200D308:
	mov r1, #0
	strb r1, [r0, r12]
	mov r0, r12
	ldmfd sp!, {r3, pc}
	arm_func_end FSi_CopySafeString

	arm_func_start FS_NormalizePath
FS_NormalizePath: ; 0x0200D318
	stmfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, lr}
	sub sp, sp, #0xc
	ldr r3, _0200D5F4 ; =arc_list
	mov r6, #0
	ldr r4, [r3, #4]
	mov r7, r1
	mov r10, r0
	mov r9, r2
	str r6, [sp, #8]
	cmp r4, #0
	mov r1, #1
	mov r5, r6
	bne _0200D368
	ldr r2, [r3]
	ldr r0, _0200D5F8 ; =current_dir_path
	str r2, [r3, #4]
	strh r6, [r3, #8]
	str r6, [r3, #0xc]
	strh r6, [r3, #0xa]
	strb r6, [r0]
_0200D368:
	ldrb r0, [r10]
	cmp r0, #0x2f
	beq _0200D37C
	cmp r0, #0x5c
	bne _0200D394
_0200D37C:
	ldr r0, _0200D5F4 ; =arc_list
	cmp r7, #0
	ldr r0, [r0, #4]
	add r10, r10, #1
	str r0, [sp, #4]
	b _0200D45C
_0200D394:
	mov r4, #0
_0200D398:
	ldrb r0, [r10, r4]
	cmp r0, #0
	cmpne r0, #0x2f
	beq _0200D3B0
	cmp r0, #0x5c
	bne _0200D42C
_0200D3B0:
	ldr r1, _0200D5F4 ; =arc_list
	cmp r7, #0
	ldr r0, [r1, #4]
	str r0, [sp, #4]
	ldrneh r0, [r1, #8]
	strne r0, [r7]
	cmp r9, #0
	beq _0200D484
	ldr r0, _0200D5F4 ; =arc_list
	ldrh r0, [r0, #8]
	cmp r0, #0
	bne _0200D484
	ldr r2, _0200D5F8 ; =current_dir_path
	ldrsb r0, [r2]
	cmp r0, #0
	beq _0200D484
	mov r1, #0x104
	add r4, sp, #8
	mov r0, r9
	mov r3, r1
	str r4, [sp]
	bl FSi_CopySafeString
	add r6, r6, r0
	ldr r2, _0200D5FC ; =0x0208EE78
	add r0, r9, r6
	rsb r1, r6, #0x104
	mov r3, #1
	str r4, [sp]
	bl FSi_CopySafeString
	add r6, r6, r0
	b _0200D484
_0200D42C:
	cmp r0, #0x3a
	bne _0200D464
	mov r0, r10
	mov r1, r4
	bl FS_FindArchive
	add r1, r4, #1
	ldrb r1, [r10, r1]!
	str r0, [sp, #4]
	cmp r1, #0x2f
	cmpne r1, #0x5c
	addeq r10, r10, #1
	cmp r7, #0
_0200D45C:
	strne r5, [r7]
	b _0200D484
_0200D464:
	eor r0, r0, #0x20
	sub r0, r0, #0xa1
	cmp r0, #0x3c
	mov r2, r1
	movhs r2, r5
	add r0, r4, #1
	add r4, r0, r2
	b _0200D398
_0200D484:
	cmp r9, #0
	mov r4, #1
	beq _0200D5D8
	ldr r0, [sp, #8]
	mov r7, #0
	cmp r0, #0
	bne _0200D5C8
	add r11, sp, #8
_0200D4A4:
	add r0, r10, r7
	ldrsb r8, [r10, r7]
	cmp r8, #0
	beq _0200D518
	and r1, r8, #0xff
	cmp r1, #0x2f
	mov r2, r4
	cmpne r1, #0x5c
	movne r2, r5
	cmp r2, #0
	bne _0200D518
	and r1, r8, #0xff
	eor r1, r1, #0x20
	sub r1, r1, #0xa1
	cmp r1, #0x3c
	mov r1, r5
	bhs _0200D504
	ldrsb r0, [r0, #1]
	cmp r0, #0x7f
	beq _0200D504
	sub r0, r0, #0x40
	and r0, r0, #0xff
	cmp r0, #0xbc
	movls r1, r4
_0200D504:
	mov r0, #2
	cmp r1, #0
	moveq r0, r4
	add r7, r7, r0
	b _0200D5BC
_0200D518:
	cmp r7, #0
	beq _0200D5A8
	cmp r7, #1
	bne _0200D534
	ldrsb r0, [r10]
	cmp r0, #0x2e
	beq _0200D5A8
_0200D534:
	cmp r7, #2
	ldreqsb r0, [r10]
	cmpeq r0, #0x2e
	ldreqsb r0, [r10, #1]
	cmpeq r0, #0x2e
	bne _0200D568
	cmp r6, #0
	subgt r6, r6, #1
	mov r0, r9
	mov r1, r6
	bl FSi_DecrementSjisPositionToSlash
	add r6, r0, #1
	b _0200D5A8
_0200D568:
	str r11, [sp]
	add r0, r9, r6
	rsb r1, r6, #0x104
	mov r2, r10
	mov r3, r7
	bl FSi_CopySafeString
	add r6, r6, r0
	cmp r8, #0
	beq _0200D5A8
	ldr r2, _0200D5FC ; =0x0208EE78
	add r0, r9, r6
	rsb r1, r6, #0x104
	mov r3, r4
	str r11, [sp]
	bl FSi_CopySafeString
	add r6, r6, r0
_0200D5A8:
	cmp r8, #0
	beq _0200D5C8
	add r0, r7, #1
	add r10, r10, r0
	mov r7, r5
_0200D5BC:
	ldr r0, [sp, #8]
	cmp r0, #0
	beq _0200D4A4
_0200D5C8:
	mov r1, #0
	mov r0, r9
	strb r1, [r9, r6]
	bl FSi_TrimSjisTrailingSlash
_0200D5D8:
	ldr r0, [sp, #8]
	cmp r0, #0
	movne r0, #0
	strne r0, [sp, #4]
	ldr r0, [sp, #4]
	add sp, sp, #0xc
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
_0200D5F4: .word arc_list
_0200D5F8: .word current_dir_path
_0200D5FC: .word unk_0208EE78
	arm_func_end FS_NormalizePath

	arm_func_start FS_InitArchive
FS_InitArchive: ; 0x0200D600
	stmfd sp!, {r3, r4, r5, lr}
	mov r4, #0
	mov r1, r4
	mov r2, #0x5c
	mov r5, r0
	bl MI_CpuFill8
	str r4, [r5, #0x10]
	str r4, [r5, #0xc]
	ldmfd sp!, {r3, r4, r5, pc}
	arm_func_end FS_InitArchive

	arm_func_start FS_RegisterArchiveName
FS_RegisterArchiveName: ; 0x0200D624
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, lr}
	mov r7, r1
	mov r6, r2
	mov r8, r0
	mov r5, #0
	bl OS_DisableInterrupts
	mov r4, r0
	mov r0, r7
	mov r1, r6
	bl FS_FindArchive
	cmp r0, #0
	bne _0200D708
	ldr r0, _0200D718 ; =arc_list
	ldr r1, _0200D71C ; =arc_list
	ldr r0, [r0]
	cmp r0, #0
	beq _0200D678
_0200D668:
	add r1, r0, #4
	ldr r0, [r0, #4]
	cmp r0, #0
	bne _0200D668
_0200D678:
	str r8, [r1]
	cmp r6, #3
	bhi _0200D6A0
	mov r3, #0
	mov r0, r8
	mov r1, r7
	add r2, r6, #1
	str r3, [r8]
	bl STD_CopyLString
	b _0200D6F8
_0200D6A0:
	cmp r6, #0xf
	bhi _0200D6F4
	ldr r9, _0200D720 ; =FSiLongNameTable
	mov r5, #0
_0200D6B0:
	cmp r5, #0x10
	blt _0200D6C0
	bl OS_Terminate
	b _0200D6EC
_0200D6C0:
	mov r1, r5, lsl #4
	ldrsb r0, [r9, r1]
	cmp r0, #0
	bne _0200D6EC
	add r5, r9, r1
	mov r0, r5
	mov r1, r7
	add r2, r6, #1
	bl STD_CopyLString
	str r5, [r8]
	b _0200D6F8
_0200D6EC:
	add r5, r5, #1
	b _0200D6B0
_0200D6F4:
	bl OS_Terminate
_0200D6F8:
	ldr r0, [r8, #0x14]
	mov r5, #1
	orr r0, r0, #1
	str r0, [r8, #0x14]
_0200D708:
	mov r0, r4
	bl OS_RestoreInterrupts
	mov r0, r5
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
_0200D718: .word arc_list
_0200D71C: .word arc_list
_0200D720: .word FSiLongNameTable
	arm_func_end FS_RegisterArchiveName

	arm_func_start FS_ReleaseArchiveName
FS_ReleaseArchiveName: ; 0x0200D724
	stmfd sp!, {r4, lr}
	ldr r1, _0200D7C8 ; =arc_list
	mov r4, r0
	ldr r0, [r1]
	cmp r4, r0
	bne _0200D740
	bl OS_Terminate
_0200D740:
	ldr r0, [r4]
	cmp r0, #0
	ldmeqfd sp!, {r4, pc}
	bl OS_DisableInterrupts
	ldr r1, _0200D7C8 ; =arc_list
	ldr r2, _0200D7CC ; =arc_list
	ldr r1, [r1]
	cmp r1, #0
	beq _0200D784
_0200D764:
	cmp r1, r4
	ldreq r1, [r1, #4]
	streq r1, [r2]
	beq _0200D784
	add r2, r1, #4
	ldr r1, [r1, #4]
	cmp r1, #0
	bne _0200D764
_0200D784:
	ldrsb r1, [r4, #3]
	mov r3, #0
	cmp r1, #0
	ldrne r1, [r4]
	movne r2, #0
	strneb r2, [r1]
	ldr r1, [r4, #0x14]
	str r3, [r4]
	bic r2, r1, #1
	ldr r1, _0200D7C8 ; =arc_list
	str r3, [r4, #4]
	str r2, [r4, #0x14]
	ldr r2, [r1, #4]
	cmp r2, r4
	streq r3, [r1, #4]
	bl OS_RestoreInterrupts
	ldmfd sp!, {r4, pc}
_0200D7C8: .word arc_list
_0200D7CC: .word arc_list
	arm_func_end FS_ReleaseArchiveName

	arm_func_start FS_GetArchiveName
FS_GetArchiveName: ; 0x0200D7D0
	ldrsb r1, [r0, #3]
	cmp r1, #0
	ldrne r0, [r0]
	bx lr
	arm_func_end FS_GetArchiveName

	arm_func_start FS_MountArchive
FS_MountArchive: ; 0x0200D7E0
	stmfd sp!, {r3, r4, r5, lr}
	sub sp, sp, #0x48
	mov r5, r0
	add r4, sp, #0
	mov r0, r4
	str r1, [r5, #0x20]
	str r2, [r5, #0x24]
	bl FS_InitFile
	mov r0, r4
	str r5, [sp, #8]
	mov r1, #0x11
	bl FSi_InvokeCommand
	ldr r1, [r5, #0x14]
	mov r0, #1
	orr r1, r1, #2
	str r1, [r5, #0x14]
	add sp, sp, #0x48
	ldmfd sp!, {r3, r4, r5, pc}
	arm_func_end FS_MountArchive

	arm_func_start FS_UnmountArchive
FS_UnmountArchive: ; 0x0200D828
	stmfd sp!, {r4, r5, r6, r7, r8, lr}
	sub sp, sp, #0x48
	mov r5, r0
	bl OS_DisableInterrupts
	ldr r1, [r5, #0x14]
	mov r4, r0
	tst r1, #2
	movne r0, #1
	moveq r0, #0
	cmp r0, #0
	beq _0200D8D4
	mov r0, r5
	bl FS_SuspendArchive
	ldr r1, [r5, #0x14]
	mov r7, r0
	ldr r0, [r5, #8]
	orr r1, r1, #0x80
	str r1, [r5, #0x14]
	cmp r0, #0
	beq _0200D894
	mov r6, #3
_0200D87C:
	ldr r8, [r0]
	mov r1, r6
	bl FSi_EndCommand
	mov r0, r8
	cmp r8, #0
	bne _0200D87C
_0200D894:
	mov r0, #0
	str r0, [r5, #8]
	cmp r7, #0
	beq _0200D8AC
	mov r0, r5
	bl FS_ResumeArchive
_0200D8AC:
	add r6, sp, #0
	mov r0, r6
	bl FS_InitFile
	mov r0, r6
	str r5, [sp, #8]
	mov r1, #0x12
	bl FSi_InvokeCommand
	ldr r0, [r5, #0x14]
	bic r0, r0, #0xa2
	str r0, [r5, #0x14]
_0200D8D4:
	mov r0, r4
	bl OS_RestoreInterrupts
	mov r0, #1
	add sp, sp, #0x48
	ldmfd sp!, {r4, r5, r6, r7, r8, pc}
	arm_func_end FS_UnmountArchive

	arm_func_start FS_SuspendArchive
FS_SuspendArchive: ; 0x0200D8E8
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	mov r6, r0
	bl OS_DisableInterrupts
	ldr r1, [r6, #0x14]
	mov r4, r0
	tst r1, #8
	movne r0, #1
	moveq r0, #0
	mov r5, #1
	cmp r0, #0
	movne r5, #0
	cmp r5, #0
	beq _0200D968
	ldr r0, [r6, #0x14]
	tst r0, #0x10
	orreq r0, r0, #8
	streq r0, [r6, #0x14]
	beq _0200D968
	orr r0, r0, #0x40
	str r0, [r6, #0x14]
	bl OS_DisableInterrupts
	ldr r1, [r6, #0x14]
	mov r7, r0
	tst r1, #0x40
	beq _0200D960
_0200D94C:
	add r0, r6, #0xc
	bl OS_SleepThread
	ldr r0, [r6, #0x14]
	tst r0, #0x40
	bne _0200D94C
_0200D960:
	mov r0, r7
	bl OS_RestoreInterrupts
_0200D968:
	mov r0, r4
	bl OS_RestoreInterrupts
	mov r0, r5
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
	arm_func_end FS_SuspendArchive

	arm_func_start FS_ResumeArchive
FS_ResumeArchive: ; 0x0200D978
	stmfd sp!, {r3, r4, r5, lr}
	mov r5, r0
	bl OS_DisableInterrupts
	ldr r1, [r5, #0x14]
	mov r4, #1
	tst r1, #8
	movne r1, #1
	moveq r1, #0
	cmp r1, #0
	movne r4, #0
	cmp r4, #0
	ldreq r1, [r5, #0x14]
	biceq r1, r1, #8
	streq r1, [r5, #0x14]
	bl OS_RestoreInterrupts
	mov r0, r5
	mov r1, #1
	bl FSi_NextCommand
	cmp r0, #0
	beq _0200D9CC
	bl FSi_ExecuteAsyncCommand
_0200D9CC:
	mov r0, r4
	ldmfd sp!, {r3, r4, r5, pc}
	arm_func_end FS_ResumeArchive

	arm_func_start FS_NotifyArchiveAsyncEnd
FS_NotifyArchiveAsyncEnd: ; 0x0200D9D4
	stmfd sp!, {r4, r5, r6, lr}
	mov r4, r0
	ldr r5, [r4, #8]
	mov r6, r1
	ldr r0, [r5, #0xc]
	tst r0, #4
	beq _0200DA1C
	bl OS_DisableInterrupts
	ldr r1, [r5, #0xc]
	mov r4, r0
	orr r0, r1, #8
	str r0, [r5, #0xc]
	add r0, r5, #0x18
	str r6, [r5, #0x14]
	bl OS_WakeupThread
	mov r0, r4
	bl OS_RestoreInterrupts
	ldmfd sp!, {r4, r5, r6, pc}
_0200DA1C:
	mov r0, r5
	bl FSi_EndCommand
	mov r0, r4
	mov r1, #1
	bl FSi_NextCommand
	cmp r0, #0
	ldmeqfd sp!, {r4, r5, r6, pc}
	bl FSi_ExecuteAsyncCommand
	ldmfd sp!, {r4, r5, r6, pc}
	arm_func_end FS_NotifyArchiveAsyncEnd

	arm_func_start FS_WaitAsync
FS_WaitAsync: ; 0x0200DA40
	stmfd sp!, {r3, r4, r5, lr}
	mov r4, r0
	mov r5, #0
	bl OS_DisableInterrupts
	ldr r1, [r4, #0xc]
	tst r1, #1
	movne r1, #1
	moveq r1, r5
	cmp r1, #0
	beq _0200DA88
	ldr r1, [r4, #0xc]
	tst r1, #0x44
	moveq r5, #1
	movne r5, #0
	cmp r5, #0
	ldrne r1, [r4, #0xc]
	orrne r1, r1, #4
	strne r1, [r4, #0xc]
_0200DA88:
	bl OS_RestoreInterrupts
	cmp r5, #0
	beq _0200DAA0
	mov r0, r4
	bl FSi_ExecuteSyncCommand
	b _0200DAD0
_0200DAA0:
	bl OS_DisableInterrupts
	ldr r1, [r4, #0xc]
	mov r5, r0
	tst r1, #1
	beq _0200DAC8
_0200DAB4:
	add r0, r4, #0x18
	bl OS_SleepThread
	ldr r0, [r4, #0xc]
	tst r0, #1
	bne _0200DAB4
_0200DAC8:
	mov r0, r5
	bl OS_RestoreInterrupts
_0200DAD0:
	ldr r0, [r4, #0x14]
	cmp r0, #0
	moveq r0, #1
	movne r0, #0
	ldmfd sp!, {r3, r4, r5, pc}
	arm_func_end FS_WaitAsync

	arm_func_start FSi_DecrementSjisPosition
FSi_DecrementSjisPosition: ; 0x0200DAE4
	sub r3, r1, #1
	b _0200DAF0
_0200DAEC:
	sub r3, r3, #1
_0200DAF0:
	cmp r3, #0
	ble _0200DB10
	add r2, r0, r3
	ldrb r2, [r2, #-1]
	eor r2, r2, #0x20
	sub r2, r2, #0xa1
	cmp r2, #0x3c
	blo _0200DAEC
_0200DB10:
	sub r1, r1, #1
	sub r0, r1, r3
	and r0, r0, #1
	sub r0, r1, r0
	bx lr
	arm_func_end FSi_DecrementSjisPosition

	arm_func_start FSi_IncrementSjisPositionToSlash
FSi_IncrementSjisPositionToSlash: ; 0x0200DB24
	stmfd sp!, {r3, lr}
	mov r3, #0
	mov r12, #1
	b _0200DB54
_0200DB34:
	and r2, lr, #0xff
	eor r2, r2, #0x20
	sub r2, r2, #0xa1
	cmp r2, #0x3c
	movlo r2, r12
	movhs r2, r3
	add r1, r1, #1
	add r1, r1, r2
_0200DB54:
	ldrsb lr, [r0, r1]
	cmp lr, #0
	andne r2, lr, #0xff
	cmpne r2, #0x2f
	beq _0200DB70
	cmp r2, #0x5c
	bne _0200DB34
_0200DB70:
	mov r0, r1
	ldmfd sp!, {r3, pc}
	arm_func_end FSi_IncrementSjisPositionToSlash

	arm_func_start FSi_DecrementSjisPositionToSlash
FSi_DecrementSjisPositionToSlash: ; 0x0200DB78
	stmfd sp!, {r4, lr}
	mov r4, r0
_0200DB80:
	mov r0, r4
	bl FSi_DecrementSjisPosition
	movs r1, r0
	bmi _0200DBA4
	ldrb r0, [r4, r1]
	cmp r0, #0x2f
	beq _0200DBA4
	cmp r0, #0x5c
	bne _0200DB80
_0200DBA4:
	mov r0, r1
	ldmfd sp!, {r4, pc}
	arm_func_end FSi_DecrementSjisPositionToSlash

	arm_func_start FSi_TrimSjisTrailingSlash
FSi_TrimSjisTrailingSlash: ; 0x0200DBAC
	stmfd sp!, {r3, r4, r5, lr}
	mov r5, r0
	bl STD_GetStringLength
	mov r4, r0
	mov r0, r5
	mov r1, r4
	bl FSi_DecrementSjisPosition
	cmp r0, #0
	blt _0200DBE8
	ldrb r1, [r5, r0]
	cmp r1, #0x2f
	cmpne r1, #0x5c
	moveq r1, #0
	moveq r4, r0
	streqb r1, [r5, r0]
_0200DBE8:
	mov r0, r4
	ldmfd sp!, {r3, r4, r5, pc}
	arm_func_end FSi_TrimSjisTrailingSlash

	arm_func_start FS_InitFile
FS_InitFile: ; 0x0200DBF0
	mov r2, #0
	orr r1, r2, #0x2300
	str r2, [r0, #8]
	str r2, [r0, #4]
	str r2, [r0]
	str r2, [r0, #0x1c]
	str r2, [r0, #0x18]
	str r1, [r0, #0xc]
	str r2, [r0, #0x10]
	str r2, [r0, #0x14]
	bx lr
	arm_func_end FS_InitFile

	arm_func_start FS_CancelFile
FS_CancelFile: ; 0x0200DC1C
	stmfd sp!, {r4, lr}
	mov r4, r0
	bl OS_DisableInterrupts
	ldr r1, [r4, #0xc]
	tst r1, #1
	movne r1, #1
	moveq r1, #0
	cmp r1, #0
	beq _0200DC5C
	ldr r1, [r4, #0xc]
	ldr r2, [r4, #8]
	orr r1, r1, #2
	str r1, [r4, #0xc]
	ldr r1, [r2, #0x14]
	orr r1, r1, #0x20
	str r1, [r2, #0x14]
_0200DC5C:
	bl OS_RestoreInterrupts
	ldmfd sp!, {r4, pc}
	arm_func_end FS_CancelFile

	arm_func_start FS_ConvertPathToFileID
FS_ConvertPathToFileID: ; 0x0200DC64
	stmfd sp!, {r4, r5, r6, r7, r8, r9, lr}
	sub sp, sp, #0x174
	add r6, sp, #0x5c
	mov r8, r0
	mov r0, r1
	mov r7, #0
	add r1, sp, #0
	mov r2, r6
	str r7, [sp]
	bl FS_NormalizePath
	movs r5, r0
	beq _0200DCE4
	add r4, sp, #0x14
	mov r0, r4
	bl FS_InitFile
	ldr r3, [sp]
	add r12, sp, #4
	mov r9, #1
	mov r0, r4
	mov r2, r9
	mov r1, #4
	str r5, [sp, #0x1c]
	str r12, [sp, #0x24]
	str r3, [sp, #4]
	str r6, [sp, #8]
	str r7, [sp, #0x10]
	bl FSi_SendCommand
	cmp r0, #0
	strne r5, [r8]
	ldrne r0, [sp, #0xc]
	movne r7, r9
	strne r0, [r8, #4]
_0200DCE4:
	mov r0, r7
	add sp, sp, #0x174
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, pc}
	arm_func_end FS_ConvertPathToFileID

	arm_func_start FS_OpenFileDirect
FS_OpenFileDirect: ; 0x0200DCF0
	stmfd sp!, {r3, lr}
	sub sp, sp, #0x10
	add r12, sp, #0
	str r1, [r0, #8]
	str r12, [r0, #0x10]
	ldr lr, [sp, #0x18]
	str r2, [sp, #4]
	mov r12, #0
	mov r1, #7
	mov r2, #1
	str lr, [sp]
	str r3, [sp, #8]
	str r12, [sp, #0xc]
	bl FSi_SendCommand
	add sp, sp, #0x10
	ldmfd sp!, {r3, pc}
	arm_func_end FS_OpenFileDirect

	arm_func_start FS_OpenFileFast
FS_OpenFileFast: ; 0x0200DD30
	stmfd sp!, {r0, r1, r2, r3}
	stmfd sp!, {r3, lr}
	sub sp, sp, #8
	ldr r2, [sp, #0x14]
	ldr r3, [sp, #0x18]
	cmp r2, #0
	mov r12, #0
	beq _0200DD74
	add r1, sp, #0
	str r2, [r0, #8]
	str r1, [r0, #0x10]
	mov r1, #6
	mov r2, #1
	str r3, [sp]
	str r12, [sp, #4]
	bl FSi_SendCommand
	mov r12, r0
_0200DD74:
	mov r0, r12
	add sp, sp, #8
	ldmfd sp!, {r3, lr}
	add sp, sp, #0x10
	bx lr
	arm_func_end FS_OpenFileFast

	arm_func_start FS_OpenFileEx
FS_OpenFileEx: ; 0x0200DD88
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, lr}
	sub sp, sp, #0x128
	add r4, sp, #0x10
	mov r7, r0
	mov r0, r1
	mov r6, r2
	mov r5, #0
	add r1, sp, #0
	mov r2, r4
	str r5, [sp]
	bl FS_NormalizePath
	movs r9, r0
	beq _0200DE00
	mov r0, r7
	bl FS_InitFile
	add r0, sp, #4
	str r0, [r7, #0x10]
	str r9, [r7, #8]
	mov r8, #1
	ldr r3, [sp]
	mov r0, r7
	mov r2, r8
	mov r1, #0xd
	str r3, [sp, #4]
	str r4, [sp, #8]
	str r6, [sp, #0xc]
	bl FSi_SendCommand
	cmp r0, #0
	movne r5, r8
	streq r5, [r7, #8]
_0200DE00:
	mov r0, r5
	add sp, sp, #0x128
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
	arm_func_end FS_OpenFileEx

	arm_func_start FS_CloseFile
FS_CloseFile: ; 0x0200DE0C
	ldr r12, _0200DE1C ; =FSi_SendCommand
	mov r1, #8
	mov r2, #1
	bx r12
_0200DE1C: .word FSi_SendCommand
	arm_func_end FS_CloseFile

	arm_func_start FS_GetFileLength
FS_GetFileLength: ; 0x0200DE20
	stmfd sp!, {r3, r4, r5, lr}
	sub sp, sp, #8
	mov r4, #0
	add r1, sp, #4
	mov r5, r0
	str r4, [sp, #4]
	bl FSi_GetFileLengthIfProc
	cmp r0, #0
	bne _0200DE6C
	add r1, sp, #0
	str r1, [r5, #0x10]
	mov r0, r5
	mov r1, #0xf
	mov r2, #1
	str r4, [sp]
	bl FSi_SendCommand
	cmp r0, #0
	ldrne r0, [sp]
	strne r0, [sp, #4]
_0200DE6C:
	ldr r0, [sp, #4]
	add sp, sp, #8
	ldmfd sp!, {r3, r4, r5, pc}
	arm_func_end FS_GetFileLength

	arm_func_start FS_GetFilePosition
FS_GetFilePosition: ; 0x0200DE78
	stmfd sp!, {r3, r4, r5, lr}
	sub sp, sp, #8
	mov r4, #0
	add r1, sp, #4
	mov r5, r0
	str r4, [sp, #4]
	bl FSi_GetFilePositionIfProc
	cmp r0, #0
	bne _0200DEC4
	add r1, sp, #0
	str r1, [r5, #0x10]
	mov r0, r5
	mov r1, #0x10
	mov r2, #1
	str r4, [sp]
	bl FSi_SendCommand
	cmp r0, #0
	ldrne r0, [sp]
	strne r0, [sp, #4]
_0200DEC4:
	ldr r0, [sp, #4]
	add sp, sp, #8
	ldmfd sp!, {r3, r4, r5, pc}
	arm_func_end FS_GetFilePosition

	arm_func_start FS_SeekFile
FS_SeekFile: ; 0x0200DED0
	stmfd sp!, {r3, lr}
	sub sp, sp, #8
	add r3, sp, #0
	str r3, [r0, #0x10]
	str r1, [sp]
	str r2, [sp, #4]
	mov r1, #0xe
	mov r2, #1
	bl FSi_SendCommand
	add sp, sp, #8
	ldmfd sp!, {r3, pc}
	arm_func_end FS_SeekFile

	arm_func_start FS_ReadFile
FS_ReadFile: ; 0x0200DEFC
	stmfd sp!, {r3, r4, r5, lr}
	sub sp, sp, #8
	add r3, sp, #0
	mov r5, r0
	str r3, [r5, #0x10]
	str r1, [sp]
	mov r4, #1
	str r2, [sp, #4]
	mov r2, r4
	mov r1, #0
	bl FSi_SendCommand
	cmp r0, #0
	ldrne r2, [sp, #4]
	bne _0200DF44
	ldr r0, [r5, #0x14]
	sub r2, r4, #2
	cmp r0, #6
	ldrne r2, [sp, #4]
_0200DF44:
	mov r0, r2
	add sp, sp, #8
	ldmfd sp!, {r3, r4, r5, pc}
	arm_func_end FS_ReadFile

	arm_func_start FS_ReadFileAsync
FS_ReadFileAsync: ; 0x0200DF50
	stmfd sp!, {r4, r5, r6, lr}
	sub sp, sp, #8
	mov r5, r1
	add r1, sp, #0
	mov r6, r0
	mov r4, r2
	bl FSi_GetFilePositionIfProc
	cmp r0, #0
	beq _0200DF9C
	add r1, sp, #4
	mov r0, r6
	bl FSi_GetFileLengthIfProc
	cmp r0, #0
	beq _0200DF9C
	ldr r2, [sp]
	ldr r1, [sp, #4]
	add r0, r2, r4
	cmp r0, r1
	subhi r4, r1, r2
_0200DF9C:
	mov r1, #0
	add r3, r6, #0x30
	mov r0, r6
	mov r2, r1
	str r3, [r6, #0x10]
	str r5, [r6, #0x30]
	str r4, [r3, #4]
	bl FSi_SendCommand
	mov r0, r4
	add sp, sp, #8
	ldmfd sp!, {r4, r5, r6, pc}
	arm_func_end FS_ReadFileAsync

	arm_func_start FS_OpenFile
FS_OpenFile: ; 0x0200DFC8
	ldr r12, _0200DFD4 ; =FS_OpenFileEx
	mov r2, #1
	bx r12
_0200DFD4: .word FS_OpenFileEx
	arm_func_end FS_OpenFile

	arm_func_start FS_GetLength
FS_GetLength: ; 0x0200DFD8
	ldr r12, _0200DFE0 ; =FS_GetFileLength
	bx r12
_0200DFE0: .word FS_GetFileLength
	arm_func_end FS_GetLength

	arm_func_start FS_GetPosition
FS_GetPosition: ; 0x0200DFE4
	ldr r12, _0200DFEC ; =FS_GetFilePosition
	bx r12
_0200DFEC: .word FS_GetFilePosition
	arm_func_end FS_GetPosition

	arm_func_start FS_ChangeDir
FS_ChangeDir: ; 0x0200DFF0
	ldr r12, _0200DFF8 ; =FS_SetCurrentDirectory
	bx r12
_0200DFF8: .word FS_SetCurrentDirectory
	arm_func_end FS_ChangeDir

	arm_func_start FSi_InitOverlay
FSi_InitOverlay: ; 0x0200DFFC
	stmfd sp!, {r4, lr}
	bl OS_GetBootType
	cmp r0, #2
	ldrne r0, _0200E060 ; =FSiOverlayContext
	mov r1, #0
	strne r1, [r0, #4]
	strne r1, [r0, #8]
	strne r1, [r0, #0xc]
	bne _0200E034
	ldr r0, _0200E060 ; =FSiOverlayContext
	mvn r2, #0
	str r2, [r0, #4]
	str r1, [r0, #8]
	str r2, [r0, #0xc]
_0200E034:
	str r1, [r0, #0x10]
	ldr r1, _0200E064 ; =fsi_def_digest_key
	ldr r4, _0200E060 ; =FSiOverlayContext
	ldr r0, _0200E068 ; =0x0208EE7C
	str r1, [r4, #0x14]
	mov r2, #0x40
	mov r1, #3
	str r2, [r4, #0x18]
	bl FS_FindArchive
	str r0, [r4]
	ldmfd sp!, {r4, pc}
_0200E060: .word FSiOverlayContext
_0200E064: .word fsi_def_digest_key
_0200E068: .word unk_0208EE7C
	arm_func_end FSi_InitOverlay

	arm_func_start FSi_GetOverlayBinarySize
FSi_GetOverlayBinarySize: ; 0x0200E06C
	ldr r1, [r0, #0x1c]
	mov r2, r1, lsr #0x18
	tst r2, #1
	movne r0, r1, lsl #8
	movne r0, r0, lsr #8
	ldreq r0, [r0, #8]
	bx lr
	arm_func_end FSi_GetOverlayBinarySize

	arm_func_start FS_ClearOverlayImage
FS_ClearOverlayImage: ; 0x0200E088
	stmfd sp!, {r4, r5, r6, lr}
	ldr r1, [r0, #0xc]
	ldmib r0, {r4, r5}
	add r6, r5, r1
	mov r0, r4
	mov r1, r6
	bl IC_InvalidateRange
	mov r0, r4
	mov r1, r6
	bl DC_InvalidateRange
	add r0, r4, r5
	sub r2, r6, r5
	mov r1, #0
	bl MI_CpuFill8
	ldmfd sp!, {r4, r5, r6, pc}
	arm_func_end FS_ClearOverlayImage

	arm_func_start FS_GetOverlayFileID
FS_GetOverlayFileID: ; 0x0200E0C4
	sub sp, sp, #8
	ldr r2, _0200E0EC ; =FSiOverlayContext
	ldr r1, [r1, #0x18]
	ldr r2, [r2]
	str r1, [sp, #4]
	str r2, [sp]
	str r2, [r0]
	str r1, [r0, #4]
	add sp, sp, #8
	bx lr
_0200E0EC: .word FSiOverlayContext
	arm_func_end FS_GetOverlayFileID

	arm_func_start FS_LoadOverlayInfo
FS_LoadOverlayInfo: ; 0x0200E0F0
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, lr}
	sub sp, sp, #0xa0
	movs r4, r1
	ldreq r9, _0200E248 ; =0x02095B3C
	mov r5, r0
	ldrne r9, _0200E24C ; =0x02095B44
	mov r8, r2, lsl #5
	ldr r0, [r9]
	mov r7, #0
	cmp r0, #0
	beq _0200E174
	ldr r0, [r9, #4]
	cmp r8, r0
	bhs _0200E23C
	add r6, sp, #0x58
	mov r0, r6
	bl FS_InitFile
	ldr r0, [r9]
	mov r1, r5
	add r0, r0, r8
	mov r2, #0x20
	bl MI_CpuCopy8
	add r8, sp, #8
	mov r1, r5
	mov r0, r8
	str r4, [r5, #0x20]
	bl FS_GetOverlayFileID
	mov r0, r6
	ldmia r8, {r1, r2}
	bl FS_OpenFileFast
	cmp r0, #0
	beq _0200E23C
	b _0200E218
_0200E174:
	cmp r4, #0
	bne _0200E188
	bl CARD_GetOwnRomHeader
	add r9, r0, #0x50
	b _0200E190
_0200E188:
	bl CARD_GetOwnRomHeader
	add r9, r0, #0x58
_0200E190:
	ldr r0, [r9, #4]
	cmp r8, r0
	bhs _0200E23C
	add r6, sp, #0x10
	mov r0, r6
	bl FS_InitFile
	ldr r3, [r9]
	ldr r2, [r9, #4]
	mov r0, r6
	add r1, r3, r8
	add r2, r3, r2
	bl FS_CreateFileFromRom
	cmp r0, #0
	beq _0200E23C
	mov r0, r6
	mov r1, r5
	mov r2, #0x20
	bl FS_ReadFile
	cmp r0, #0x20
	mov r0, r6
	beq _0200E1EC
	bl FS_CloseFile
	b _0200E23C
_0200E1EC:
	bl FS_CloseFile
	add r8, sp, #0
	mov r1, r5
	mov r0, r8
	str r4, [r5, #0x20]
	bl FS_GetOverlayFileID
	mov r0, r6
	ldmia r8, {r1, r2}
	bl FS_OpenFileFast
	cmp r0, #0
	beq _0200E23C
_0200E218:
	mov r0, r6
	bl FS_GetFileImageTop
	str r0, [r5, #0x24]
	mov r0, r6
	bl FS_GetFileLength
	str r0, [r5, #0x28]
	mov r0, r6
	bl FS_CloseFile
	mov r7, #1
_0200E23C:
	mov r0, r7
	add sp, sp, #0xa0
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
_0200E248: .word unk_02095B3C
_0200E24C: .word unk_02095B44
	arm_func_end FS_LoadOverlayInfo

	arm_func_start FS_LoadOverlayImage
FS_LoadOverlayImage: ; 0x0200E250
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	sub sp, sp, #0x50
	add r5, sp, #8
	mov r7, r0
	mov r0, r5
	mov r6, #0
	bl FS_InitFile
	add r4, sp, #0
	mov r1, r7
	mov r0, r4
	bl FS_GetOverlayFileID
	mov r0, r5
	ldmia r4, {r1, r2}
	bl FS_OpenFileFast
	cmp r0, #0
	beq _0200E2C4
	mov r0, r7
	bl FSi_GetOverlayBinarySize
	mov r4, r0
	mov r0, r7
	bl FS_ClearOverlayImage
	ldr r1, [r7, #4]
	mov r0, r5
	mov r2, r4
	bl FS_ReadFile
	cmp r4, r0
	add r0, sp, #8
	moveq r6, #1
	bl FS_CloseFile
_0200E2C4:
	mov r0, r6
	add sp, sp, #0x50
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
	arm_func_end FS_LoadOverlayImage

	arm_func_start FSi_CompareDigest
FSi_CompareDigest: ; 0x0200E2D0
	stmfd sp!, {r4, r5, r6, r7, r8, lr}
	sub sp, sp, #0x58
	mov r4, #0
	mov r8, r0
	mov r6, r2
	mov r7, r1
	add r0, sp, #0x44
	mov r1, r4
	mov r2, #0x14
	mov r5, r3
	bl MI_CpuFill8
	ldr r2, _0200E38C ; =FSiOverlayContext
	add r1, sp, #4
	ldr r0, [r2, #0x14]
	ldr r2, [r2, #0x18]
	bl MI_CpuCopy8
	cmp r5, #0
	beq _0200E324
	mov r0, #1
	bl MATHi_SetOverlayTableMode
	mov r4, r0
_0200E324:
	ldr r1, _0200E38C ; =FSiOverlayContext
	add r0, sp, #0x44
	ldr r12, [r1, #0x18]
	add r3, sp, #4
	mov r1, r7
	mov r2, r6
	str r12, [sp]
	bl MATH_CalcHMACSHA1
	cmp r5, #0
	beq _0200E354
	mov r0, r4
	bl MATHi_SetOverlayTableMode
_0200E354:
	mov r3, #0
	add r2, sp, #0x44
_0200E35C:
	ldr r1, [r2, r3]
	ldr r0, [r8, r3]
	cmp r1, r0
	bne _0200E378
	add r3, r3, #4
	cmp r3, #0x14
	blo _0200E35C
_0200E378:
	mov r0, #1
	cmp r3, #0x14
	movne r0, #0
	add sp, sp, #0x58
	ldmfd sp!, {r4, r5, r6, r7, r8, pc}
_0200E38C: .word FSiOverlayContext
	arm_func_end FSi_CompareDigest

	arm_func_start FS_StartOverlay
FS_StartOverlay: ; 0x0200E390
	stmfd sp!, {r3, r4, r5, lr}
	mov r5, r0
	bl FSi_GetOverlayBinarySize
	mov r4, r0
	bl OS_GetBootType
	cmp r0, #1
	beq _0200E420
	ldr r0, [r5, #0x1c]
	mov r3, #0
	mov r0, r0, lsr #0x18
	tst r0, #2
	beq _0200E400
	ldr r0, _0200E474 ; =0x0209390C
	ldr r2, _0200E478 ; =0x0209390C
	ldr r1, _0200E47C ; =0x66666667
	sub r12, r0, r2
	smull r0, lr, r1, r12
	mov r0, r12, lsr #0x1f
	ldr r1, [r5]
	add lr, r0, lr, asr #3
	cmp r1, lr
	bhs _0200E400
	mov r0, #0x14
	mla r0, r1, r0, r2
	ldr r1, [r5, #4]
	mov r2, r4
	bl FSi_CompareDigest
	mov r3, r0
_0200E400:
	cmp r3, #0
	bne _0200E420
	ldr r0, [r5, #4]
	mov r2, r4
	mov r1, #0
	bl MI_CpuFill8
	bl OS_Terminate
	ldmfd sp!, {r3, r4, r5, pc}
_0200E420:
	ldr r0, [r5, #0x1c]
	mov r0, r0, lsr #0x18
	tst r0, #1
	beq _0200E43C
	ldr r0, [r5, #4]
	add r0, r0, r4
	bl MIi_UncompressBackward
_0200E43C:
	ldmib r5, {r0, r1}
	bl DC_FlushRange
	ldr r4, [r5, #0x10]
	ldr r5, [r5, #0x14]
	cmp r4, r5
	ldmhsfd sp!, {r3, r4, r5, pc}
_0200E454:
	ldr r0, [r4]
	cmp r0, #0
	beq _0200E464
	blx r0
_0200E464:
	add r4, r4, #4
	cmp r4, r5
	blo _0200E454
	ldmfd sp!, {r3, r4, r5, pc}
_0200E474: .word unk_0209390C
_0200E478: .word unk_0209390C
_0200E47C: .word 0x66666667
	arm_func_end FS_StartOverlay

	arm_func_start FS_EndOverlay
FS_EndOverlay: ; 0x0200E480
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, lr}
	mov r11, r0
_0200E488:
	ldr r1, [r11, #8]
	ldr r0, [r11, #0xc]
	mov r4, #0
	ldr r6, [r11, #4]
	add r0, r1, r0
	mov r5, r4
	add r7, r6, r0
	bl OS_DisableInterrupts
	ldr r1, _0200E56C ; =__global_destructor_chain
	mov r12, r4
	ldr lr, [r1]
	mov r8, lr
	cmp lr, #0
	beq _0200E534
	mov r2, r4
_0200E4C4:
	ldr r10, [r8, #8]
	ldr r9, [r8]
	cmp r10, #0
	ldr r3, [r8, #4]
	bne _0200E4E8
	cmp r3, r6
	blo _0200E4E8
	cmp r3, r7
	blo _0200E4F8
_0200E4E8:
	cmp r10, r6
	blo _0200E524
	cmp r10, r7
	bhs _0200E524
_0200E4F8:
	cmp r5, #0
	strne r8, [r5]
	moveq r4, r8
	cmp lr, r8
	streq r9, [r1]
	moveq lr, r9
	str r2, [r8]
	cmp r12, #0
	mov r5, r8
	strne r9, [r12]
	b _0200E528
_0200E524:
	mov r12, r8
_0200E528:
	mov r8, r9
	cmp r9, #0
	bne _0200E4C4
_0200E534:
	bl OS_RestoreInterrupts
	cmp r4, #0
	ldmeqfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_0200E540:
	ldr r1, [r4, #4]
	ldr r5, [r4]
	cmp r1, #0
	beq _0200E558
	ldr r0, [r4, #8]
	blx r1
_0200E558:
	mov r4, r5
	cmp r5, #0
	bne _0200E540
	b _0200E488
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_0200E56C: .word __global_destructor_chain
	arm_func_end FS_EndOverlay

	arm_func_start FS_UnloadOverlayImage
FS_UnloadOverlayImage: ; 0x0200E570
	stmfd sp!, {r3, lr}
	bl FS_EndOverlay
	mov r0, #1
	ldmfd sp!, {r3, pc}
	arm_func_end FS_UnloadOverlayImage

	arm_func_start FS_LoadOverlay
FS_LoadOverlay: ; 0x0200E580
	stmfd sp!, {r4, r5, lr}
	sub sp, sp, #0x2c
	add r4, sp, #0
	mov r3, r0
	mov r2, r1
	mov r0, r4
	mov r1, r3
	mov r5, #0
	bl FS_LoadOverlayInfo
	cmp r0, #0
	beq _0200E5C8
	mov r0, r4
	bl FS_LoadOverlayImage
	cmp r0, #0
	beq _0200E5C8
	mov r0, r4
	bl FS_StartOverlay
	mov r5, #1
_0200E5C8:
	mov r0, r5
	add sp, sp, #0x2c
	ldmfd sp!, {r4, r5, pc}
	arm_func_end FS_LoadOverlay

	arm_func_start FS_UnloadOverlay
FS_UnloadOverlay: ; 0x0200E5D4
	stmfd sp!, {r3, r4, lr}
	sub sp, sp, #0x2c
	add r4, sp, #0
	mov r3, r0
	mov r2, r1
	mov r0, r4
	mov r1, r3
	bl FS_LoadOverlayInfo
	cmp r0, #0
	beq _0200E614
	mov r0, r4
	bl FS_UnloadOverlayImage
	cmp r0, #0
	addne sp, sp, #0x2c
	movne r0, #1
	ldmnefd sp!, {r3, r4, pc}
_0200E614:
	mov r0, #0
	add sp, sp, #0x2c
	ldmfd sp!, {r3, r4, pc}
	arm_func_end FS_UnloadOverlay

	arm_func_start FSi_ReadTable
FSi_ReadTable: ; 0x0200E620
	stmfd sp!, {r4, r5, r6, lr}
	mov r4, r0
	ldr r5, [r4]
	mov r6, r2
	ldr r3, [r5, #0x20]
	ldr r0, [r3, #0x1c]
	cmp r0, #0
	beq _0200E650
	ldr r0, [r4, #4]
	bl MI_CpuCopy8
	mov r0, #0
	b _0200E670
_0200E650:
	ldr r2, [r4, #4]
	ldr r12, [r3, #0x20]
	mov r0, r5
	mov r3, r6
	blx r12
	mov r1, r0
	ldr r0, [r5, #8]
	bl FSi_WaitForArchiveCompletion
_0200E670:
	ldr r1, [r4, #4]
	add r1, r1, r6
	str r1, [r4, #4]
	ldmfd sp!, {r4, r5, r6, pc}
	arm_func_end FSi_ReadTable

	arm_func_start FSi_SeekDirDirect
FSi_SeekDirDirect: ; 0x0200E680
	stmfd sp!, {r3, lr}
	ldr r12, [r0, #8]
	mov r3, #0
	strh r1, [r0, #0x34]
	mov r1, #2
	mov r2, #1
	str r12, [r0, #0x30]
	strh r3, [r0, #0x36]
	str r3, [r0, #0x38]
	bl FSi_TranslateCommand
	ldmfd sp!, {r3, pc}
	arm_func_end FSi_SeekDirDirect

	arm_func_start FSi_SeekDirDefault
FSi_SeekDirDefault: ; 0x0200E6AC
	stmfd sp!, {r4, r5, r6, lr}
	sub sp, sp, #0x10
	mov r6, r0
	ldr r1, [r6, #8]
	add r5, r6, #0x30
	ldr r4, [r1, #0x20]
	add r0, sp, #0
	str r1, [sp]
	ldrh r2, [r5, #4]
	ldr r3, [r4, #0xc]
	add r1, sp, #8
	add r3, r3, r2, lsl #3
	mov r2, #8
	str r3, [sp, #4]
	bl FSi_ReadTable
	movs r3, r0
	bne _0200E738
	add r12, r6, #0x20
	ldmia r5, {r0, r1, r2}
	stmia r12, {r0, r1, r2}
	ldrh r0, [r5, #6]
	cmp r0, #0
	ldreq r0, [r5, #8]
	cmpeq r0, #0
	bne _0200E728
	ldrh r0, [sp, #0xc]
	strh r0, [r6, #0x26]
	ldr r1, [r4, #0xc]
	ldr r0, [sp, #8]
	add r0, r1, r0
	str r0, [r6, #0x28]
_0200E728:
	ldrh r1, [sp, #0xe]
	ldr r0, _0200E744 ; =0x00000FFF
	and r0, r1, r0
	str r0, [r6, #0x2c]
_0200E738:
	mov r0, r3
	add sp, sp, #0x10
	ldmfd sp!, {r4, r5, r6, pc}
_0200E744: .word 0x00000FFF
	arm_func_end FSi_SeekDirDefault

	arm_func_start FSi_ReadDirDefault
FSi_ReadDirDefault: ; 0x0200E748
	stmfd sp!, {r4, r5, r6, r7, lr}
	sub sp, sp, #0xc
	mov r6, r0
	ldr r5, [r6, #0x30]
	ldr r0, [r6, #8]
	mov r7, #1
	str r0, [sp, #4]
	add r4, sp, #4
	ldr r3, [r6, #0x28]
	add r1, sp, #0
	mov r0, r4
	mov r2, r7
	str r3, [sp, #8]
	bl FSi_ReadTable
	cmp r0, #0
	addne sp, sp, #0xc
	ldmnefd sp!, {r4, r5, r6, r7, pc}
	ldrb r1, [sp]
	ands r2, r1, #0x7f
	mov r1, r1, asr #7
	str r2, [r5, #0x10]
	and r1, r1, #1
	addeq sp, sp, #0xc
	str r1, [r5, #0xc]
	moveq r0, r7
	ldmeqfd sp!, {r4, r5, r6, r7, pc}
	ldr r1, [r6, #0x34]
	cmp r1, #0
	bne _0200E7E8
	mov r0, r4
	add r1, r5, #0x14
	bl FSi_ReadTable
	cmp r0, #0
	addne sp, sp, #0xc
	ldmnefd sp!, {r4, r5, r6, r7, pc}
	ldr r1, [r5, #0x10]
	mov r2, #0
	add r1, r5, r1
	strb r2, [r1, #0x14]
	b _0200E7F4
_0200E7E8:
	ldr r1, [sp, #8]
	add r1, r1, r2
	str r1, [sp, #8]
_0200E7F4:
	ldr r1, [r5, #0xc]
	cmp r1, #0
	bne _0200E820
	ldr r1, [r6, #8]
	str r1, [r5]
	ldrh r1, [r6, #0x26]
	str r1, [r5, #4]
	ldrh r1, [r6, #0x26]
	add r1, r1, #1
	strh r1, [r6, #0x26]
	b _0200E85C
_0200E820:
	add r0, sp, #4
	add r1, sp, #2
	mov r2, #2
	bl FSi_ReadTable
	cmp r0, #0
	bne _0200E85C
	ldr r2, [r6, #8]
	ldr r1, _0200E870 ; =0x00000FFF
	str r2, [r5]
	ldrh r3, [sp, #2]
	mov r2, #0
	and r1, r3, r1
	strh r1, [r5, #4]
	strh r2, [r5, #6]
	str r2, [r5, #8]
_0200E85C:
	cmp r0, #0
	ldreq r1, [sp, #8]
	streq r1, [r6, #0x28]
	add sp, sp, #0xc
	ldmfd sp!, {r4, r5, r6, r7, pc}
_0200E870: .word 0x00000FFF
	arm_func_end FSi_ReadDirDefault

	arm_func_start FSi_FindPathDefault
FSi_FindPathDefault: ; 0x0200E874
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, lr}
	sub sp, sp, #0x98
	mov r10, r0
	ldr r3, [r10, #0x40]
	mov r2, #1
	ldr r7, [r10, #0x3c]
	mov r1, #2
	str r3, [sp]
	mov r4, r2
	mov r6, #0
	bl FSi_TranslateCommand
	ldrsb r0, [r7]
	cmp r0, #0
	beq _0200EA60
_0200E8AC:
	mov r0, r7
	mov r1, r6
	bl FSi_IncrementSjisPositionToSlash
	mov r9, r0
	ldrsb r0, [r7, r9]
	mov r8, #1
	cmp r0, #0
	ldreq r0, [sp]
	cmpeq r0, #0
	moveq r8, r6
	cmp r9, #0
	addeq sp, sp, #0x98
	moveq r0, #6
	ldmeqfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
	ldrsb r0, [r7]
	cmp r0, #0x2e
	bne _0200E92C
	cmp r9, #1
	addeq r7, r7, #1
	beq _0200EA44
	cmp r9, #2
	ldreqsb r0, [r7, #1]
	cmpeq r0, #0x2e
	bne _0200E934
	ldrh r0, [r10, #0x24]
	cmp r0, #0
	beq _0200E924
	ldr r1, [r10, #0x2c]
	mov r0, r10
	bl FSi_SeekDirDirect
_0200E924:
	add r7, r7, #2
	b _0200EA44
_0200E92C:
	cmp r0, #0x2a
	beq _0200EA60
_0200E934:
	cmp r9, #0x7f
	addgt sp, sp, #0x98
	movgt r0, #0xb
	ldmgtfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
	add r5, sp, #4
	str r5, [r10, #0x30]
	str r6, [r10, #0x34]
	mov r11, #3
_0200E954:
	mov r0, r10
	mov r1, r11
	mov r2, r4
	bl FSi_TranslateCommand
	cmp r0, #0
	addne sp, sp, #0x98
	movne r0, #0xb
	ldmnefd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
	ldr r0, [sp, #0x10]
	cmp r8, r0
	ldreq r0, [sp, #0x14]
	cmpeq r9, r0
	bne _0200E954
	mov r1, r6
	mov r0, r6
	cmp r9, #0
	bls _0200E9D8
_0200E998:
	add r1, r5, r0
	ldrsb r2, [r7, r0]
	ldrsb r1, [r1, #0x14]
	sub r2, r2, #0x41
	sub r1, r1, #0x41
	and r2, r2, #0xff
	cmp r2, #0x19
	and r1, r1, #0xff
	addls r2, r2, #0x20
	cmp r1, #0x19
	addls r1, r1, #0x20
	subs r1, r2, r1
	bne _0200E9D8
	add r0, r0, #1
	cmp r0, r9
	blo _0200E998
_0200E9D8:
	cmp r1, #0
	bne _0200E954
	cmp r8, #0
	beq _0200EA10
	add r0, sp, #4
	add r3, r10, #0x30
	ldmia r0, {r0, r1, r2}
	stmia r3, {r0, r1, r2}
	mov r0, r10
	mov r1, #2
	mov r2, #1
	add r7, r7, r9
	bl FSi_TranslateCommand
	b _0200EA44
_0200EA10:
	ldr r0, [sp]
	cmp r0, #0
	addne sp, sp, #0x98
	movne r0, #0xb
	ldmnefd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
	ldr r3, [r10, #0x44]
	ldr r2, [sp, #4]
	ldr r1, [sp, #8]
	add sp, sp, #0x98
	str r2, [r3]
	mov r0, #0
	str r1, [r3, #4]
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_0200EA44:
	ldrsb r0, [r7]
	cmp r0, #0
	movne r0, #1
	moveq r0, #0
	ldrsb r0, [r7, r0]!
	cmp r0, #0
	bne _0200E8AC
_0200EA60:
	ldr r0, [sp]
	cmp r0, #0
	moveq r0, #0xb
	addne r0, r10, #0x20
	ldrne r3, [r10, #0x44]
	ldmneia r0, {r0, r1, r2}
	stmneia r3, {r0, r1, r2}
	movne r0, #0
	add sp, sp, #0x98
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
	arm_func_end FSi_FindPathDefault

	arm_func_start FSi_GetPathDefault
FSi_GetPathDefault: ; 0x0200EA88
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, lr}
	sub sp, sp, #0xe0
	mov r11, r0
	ldr r0, [r11, #8]
	add r8, sp, #4
	str r0, [sp]
	add r0, sp, #4
	mov r6, #3
	mov r7, #1
	bl FS_InitFile
	ldr r0, [sp]
	str r0, [sp, #0xc]
	ldr r0, [r11, #0xc]
	tst r0, #0x20
	movne r0, r7
	moveq r0, #0
	cmp r0, #0
	ldrneh r5, [r11, #0x24]
	movne r4, #0x10000
	bne _0200EB64
	mov r9, #0
	ldr r4, [r11, #0x20]
	mov r10, r9
	mov r5, #0x10000
_0200EAE8:
	mov r0, r8
	mov r1, r9
	bl FSi_SeekDirDirect
	add r2, sp, #0x4c
	str r2, [sp, #0x34]
	cmp r9, #0
	mov r0, r8
	mov r1, r6
	mov r2, r7
	ldreq r10, [sp, #0x30]
	str r7, [sp, #0x38]
	bl FSi_TranslateCommand
	cmp r0, #0
	bne _0200EB50
_0200EB20:
	ldr r0, [sp, #0x58]
	cmp r0, #0
	ldreq r0, [sp, #0x50]
	cmpeq r0, r4
	ldreqh r5, [sp, #0x28]
	beq _0200EB50
	mov r0, r8
	mov r1, r6
	mov r2, r7
	bl FSi_TranslateCommand
	cmp r0, #0
	beq _0200EB20
_0200EB50:
	cmp r5, #0x10000
	bne _0200EB64
	add r9, r9, #1
	cmp r9, r10
	blo _0200EAE8
_0200EB64:
	cmp r5, #0x10000
	mov r0, #0
	streqh r0, [r11, #0x38]
	mov r6, #3
	mov r7, #1
	addeq sp, sp, #0xe0
	moveq r0, #0xb
	ldmeqfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
	ldr r0, [sp]
	mov r9, r5
	bl FS_GetArchiveName
	bl STD_GetStringLength
	add r10, r0, #2
	add r0, sp, #4
	mov r1, r5
	bl FSi_SeekDirDirect
	cmp r4, #0x10000
	ldrne r0, [sp, #0x5c]
	add r8, sp, #4
	addne r10, r10, r0
	cmp r5, #0
	beq _0200EC34
_0200EBBC:
	ldr r1, [sp, #0x30]
	mov r0, r8
	bl FSi_SeekDirDirect
	add r0, sp, #0x4c
	str r0, [sp, #0x34]
	mov r0, r8
	mov r1, r6
	mov r2, r7
	str r7, [sp, #0x38]
	bl FSi_TranslateCommand
	cmp r0, #0
	bne _0200EC28
_0200EBEC:
	ldr r0, [sp, #0x58]
	cmp r0, #0
	beq _0200EC10
	ldrh r0, [sp, #0x50]
	cmp r0, r9
	ldreq r0, [sp, #0x5c]
	addeq r0, r0, #1
	addeq r10, r10, r0
	beq _0200EC28
_0200EC10:
	mov r0, r8
	mov r1, r6
	mov r2, r7
	bl FSi_TranslateCommand
	cmp r0, #0
	beq _0200EBEC
_0200EC28:
	ldrh r9, [sp, #0x28]
	cmp r9, #0
	bne _0200EBBC
_0200EC34:
	ldr r7, [r11, #0x30]
	add r0, r10, #1
	strh r0, [r11, #0x38]
	strh r5, [r11, #0x3a]
	cmp r7, #0
	add r9, sp, #4
	mov r8, #1
	beq _0200EDF4
	ldrh r6, [r11, #0x38]
	ldr r0, [r11, #0x34]
	cmp r0, r6
	blo _0200EDF4
	ldr r0, [sp]
	bl FS_GetArchiveName
	mov r11, r0
	bl STD_GetStringLength
	mov r10, r0
	mov r0, r11
	mov r1, r7
	mov r2, r10
	bl MI_CpuCopy8
	mov r0, #0
	add r0, r10, r0
	add r1, r7, r0
	ldr r0, _0200EE00 ; =0x0208EE80
	mov r2, #2
	bl MI_CpuCopy8
	mov r0, r9
	mov r1, r5
	bl FSi_SeekDirDirect
	cmp r4, #0x10000
	beq _0200ED30
	add r3, sp, #0x4c
	mov r1, #3
	str r3, [sp, #0x34]
	mov r3, #0
	mov r0, r9
	mov r2, r8
	str r3, [sp, #0x38]
	mov r10, r1
	bl FSi_TranslateCommand
	cmp r0, #0
	bne _0200ED0C
_0200ECE0:
	ldr r0, [sp, #0x58]
	cmp r0, #0
	ldreq r0, [sp, #0x50]
	cmpeq r0, r4
	beq _0200ED0C
	mov r0, r9
	mov r1, r10
	mov r2, r8
	bl FSi_TranslateCommand
	cmp r0, #0
	beq _0200ECE0
_0200ED0C:
	ldr r0, [sp, #0x5c]
	add r1, r7, r6
	add r4, r0, #1
	add r0, sp, #0x60
	mov r2, r4
	sub r1, r1, r4
	bl MI_CpuCopy8
	sub r6, r6, r4
	b _0200ED40
_0200ED30:
	add r1, r7, r6
	mov r0, #0
	strb r0, [r1, #-1]
	sub r6, r6, #1
_0200ED40:
	cmp r5, #0
	add r10, sp, #4
	mov r11, #0
	mov r8, #3
	mov r4, #1
	beq _0200EDF4
	add r9, sp, #0x4c
_0200ED5C:
	ldr r1, [sp, #0x30]
	mov r0, r10
	bl FSi_SeekDirDirect
	add r1, r7, r6
	str r9, [sp, #0x34]
	str r11, [sp, #0x38]
	mov r0, #0x2f
	strb r0, [r1, #-1]
	mov r0, r10
	mov r1, r8
	mov r2, r4
	sub r6, r6, #1
	bl FSi_TranslateCommand
	cmp r0, #0
	bne _0200EDE8
_0200ED98:
	ldr r0, [sp, #0x58]
	cmp r0, #0
	beq _0200EDD0
	ldrh r0, [sp, #0x50]
	cmp r0, r5
	bne _0200EDD0
	ldr r5, [sp, #0x5c]
	add r1, r7, r6
	add r0, sp, #0x60
	sub r1, r1, r5
	mov r2, r5
	bl MI_CpuCopy8
	sub r6, r6, r5
	b _0200EDE8
_0200EDD0:
	mov r0, r10
	mov r1, r8
	mov r2, r4
	bl FSi_TranslateCommand
	cmp r0, #0
	beq _0200ED98
_0200EDE8:
	ldrh r5, [sp, #0x28]
	cmp r5, #0
	bne _0200ED5C
_0200EDF4:
	mov r0, #0
	add sp, sp, #0xe0
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_0200EE00: .word unk_0208EE80
	arm_func_end FSi_GetPathDefault

	arm_func_start FSi_OpenFileFastDefault
FSi_OpenFileFastDefault: ; 0x0200EE04
	stmfd sp!, {r3, r4, r5, lr}
	sub sp, sp, #0x10
	mov r5, r0
	ldr r3, [r5, #8]
	ldr r4, [r5, #0x34]
	ldr r1, [r3, #0x20]
	mov r2, r4, lsl #3
	ldr r0, [r1, #8]
	cmp r0, r4, lsl #3
	addls sp, sp, #0x10
	movls r0, #0xb
	ldmlsfd sp!, {r3, r4, r5, pc}
	str r3, [sp]
	ldr r1, [r1, #4]
	add r0, sp, #0
	add r3, r1, r2
	add r1, sp, #8
	mov r2, #8
	str r3, [sp, #4]
	bl FSi_ReadTable
	cmp r0, #0
	addne sp, sp, #0x10
	ldmnefd sp!, {r3, r4, r5, pc}
	ldr r1, [sp, #8]
	mov r0, r5
	str r1, [r5, #0x30]
	ldr r3, [sp, #0xc]
	mov r1, #7
	mov r2, #1
	str r3, [r5, #0x34]
	str r4, [r5, #0x38]
	bl FSi_TranslateCommand
	add sp, sp, #0x10
	ldmfd sp!, {r3, r4, r5, pc}
	arm_func_end FSi_OpenFileFastDefault

	arm_func_start FSi_OpenFileDirectDefault
FSi_OpenFileDirectDefault: ; 0x0200EE8C
	ldr r3, [r0, #0x30]
	ldr r2, [r0, #0x34]
	ldr r1, [r0, #0x38]
	str r3, [r0, #0x24]
	str r3, [r0, #0x2c]
	str r2, [r0, #0x28]
	str r1, [r0, #0x20]
	mov r0, #0
	bx lr
	arm_func_end FSi_OpenFileDirectDefault

	arm_func_start FSi_ReadFileDefault
FSi_ReadFileDefault: ; 0x0200EEB0
	stmfd sp!, {r3, lr}
	ldr lr, [r0, #8]
	ldr r2, [r0, #0x2c]
	ldr r3, [r0, #0x38]
	ldr r12, [lr, #0x20]
	add r1, r2, r3
	str r1, [r0, #0x2c]
	ldr r1, [r0, #0x30]
	ldr r12, [r12, #0x20]
	mov r0, lr
	blx r12
	ldmfd sp!, {r3, pc}
	arm_func_end FSi_ReadFileDefault

	arm_func_start FSi_WriteFileDefault
FSi_WriteFileDefault: ; 0x0200EEE0
	stmfd sp!, {r3, lr}
	ldr lr, [r0, #8]
	ldr r2, [r0, #0x2c]
	ldr r3, [r0, #0x38]
	ldr r12, [lr, #0x20]
	add r1, r2, r3
	str r1, [r0, #0x2c]
	ldr r1, [r0, #0x30]
	ldr r12, [r12, #0x24]
	mov r0, lr
	blx r12
	ldmfd sp!, {r3, pc}
	arm_func_end FSi_WriteFileDefault

	arm_func_start FSi_IgnoredCommand
FSi_IgnoredCommand: ; 0x0200EF10
	mov r0, #0
	bx lr
	arm_func_end FSi_IgnoredCommand

	arm_func_start FSi_TranslateCommand
FSi_TranslateCommand: ; 0x0200EF18
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, lr}
	mov r9, r0
	ldr r3, [r9, #8]
	ldr r5, _0200EFE0 ; =0x00000101
	ldr r6, [r3, #0x20]
	mov r8, r1
	ldr r3, [r6, #0x30]
	mov r4, #1
	mov r7, r2
	mov r2, r5
	tst r3, r4, lsl r8
	beq _0200EF94
	ldr r2, [r6, #0x2c]
	blx r2
	mov r2, r0
	cmp r2, #0x100
	bgt _0200EF78
	bge _0200EF94
	cmp r2, #4
	bgt _0200EF94
	cmp r2, #0
	blt _0200EF94
	cmpne r2, #1
	b _0200EF94
_0200EF78:
	add r0, r5, #1
	cmp r2, r0
	mvneq r0, r4, lsl r8
	ldreq r1, [r6, #0x30]
	moveq r2, r5
	andeq r0, r1, r0
	streq r0, [r6, #0x30]
_0200EF94:
	ldr r0, _0200EFE0 ; =0x00000101
	cmp r2, r0
	bne _0200EFC0
	cmp r8, #0xd
	movhs r2, #4
	bhs _0200EFC0
	ldr r1, _0200EFE4 ; =default_table
	mov r0, r9
	ldr r1, [r1, r8, lsl #2]
	blx r1
	mov r2, r0
_0200EFC0:
	cmp r7, #0
	beq _0200EFD8
	mov r0, r9
	mov r1, r2
	bl FSi_WaitForArchiveCompletion
	mov r2, r0
_0200EFD8:
	mov r0, r2
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
_0200EFE0: .word 0x00000101
_0200EFE4: .word default_table
	arm_func_end FSi_TranslateCommand

	arm_func_start FSi_ROMFAT_ReadFile
FSi_ROMFAT_ReadFile: ; 0x0200EFE8
	stmfd sp!, {r3, lr}
	ldr r0, [r1, #4]
	ldr lr, [r3]
	ldr r12, [r0, #8]
	ldr r0, [r0, #0xc]
	sub r0, r12, r0
	cmp lr, r0
	strhi r0, [r3]
	str lr, [r1, #0x34]
	str r2, [r1, #0x30]
	ldr r2, [r3]
	mov r0, r1
	str r2, [r1, #0x38]
	mov r1, #0
	mov r2, r1
	bl FSi_TranslateCommand
	ldmfd sp!, {r3, pc}
	arm_func_end FSi_ROMFAT_ReadFile

	arm_func_start FSi_ROMFAT_WriteFile
FSi_ROMFAT_WriteFile: ; 0x0200F02C
	stmfd sp!, {r3, lr}
	ldr r0, [r1, #4]
	ldr lr, [r3]
	ldr r12, [r0, #8]
	ldr r0, [r0, #0xc]
	sub r0, r12, r0
	cmp lr, r0
	strhi r0, [r3]
	str lr, [r1, #0x34]
	str r2, [r1, #0x30]
	ldr r2, [r3]
	mov r0, r1
	str r2, [r1, #0x38]
	mov r1, #1
	mov r2, #0
	bl FSi_TranslateCommand
	ldmfd sp!, {r3, pc}
	arm_func_end FSi_ROMFAT_WriteFile

	arm_func_start FSi_ROMFAT_SeekDirectory
FSi_ROMFAT_SeekDirectory: ; 0x0200F070
	stmfd sp!, {r3, r4, r5, lr}
	mov r4, r1
	mov r5, r0
	mov r12, r2, lsr #0x10
	strh r2, [r4, #0x34]
	mov r0, r4
	mov r1, #2
	mov r2, #1
	str r5, [r4, #8]
	str r5, [r4, #0x30]
	strh r12, [r4, #0x36]
	str r3, [r4, #0x38]
	bl FSi_TranslateCommand
	cmp r0, #0
	ldmnefd sp!, {r3, r4, r5, pc}
	ldr r2, [r4, #0xc]
	add r1, r4, #0x20
	orr r2, r2, #0x20
	bic r2, r2, #0x10
	str r2, [r4, #0xc]
	stmib r4, {r1, r5}
	ldmfd sp!, {r3, r4, r5, pc}
	arm_func_end FSi_ROMFAT_SeekDirectory

	arm_func_start FSi_ROMFAT_ReadDirectory
FSi_ROMFAT_ReadDirectory: ; 0x0200F0C8
	stmfd sp!, {r4, r5, r6, r7, lr}
	sub sp, sp, #0xa4
	add r3, sp, #0x10
	mov r4, #0
	mov r7, r0
	mov r6, r2
	mov r0, r1
	str r3, [r1, #0x30]
	str r4, [r1, #0x34]
	mov r1, #3
	mov r2, #1
	bl FSi_TranslateCommand
	movs r5, r0
	bne _0200F1E4
	str r4, [r6, #0x10]
	ldr r2, [sp, #0x20]
	add r0, sp, #0x24
	str r2, [r6, #0x118]
	add r1, r6, #0x14
	bl MI_CpuCopy8
	ldr r0, [r6, #0x118]
	add r0, r6, r0
	strb r4, [r0, #0x14]
	ldr r0, [sp, #0x1c]
	cmp r0, #0
	beq _0200F150
	mov r0, #0x100
	str r0, [r6, #0x11c]
	ldrh r1, [sp, #0x14]
	ldrh r0, [sp, #0x16]
	orr r0, r1, r0, lsl #16
	str r0, [r6, #0x16c]
	str r4, [r6, #0x168]
	b _0200F1C8
_0200F150:
	str r4, [r6, #0x11c]
	ldr r3, [sp, #0x14]
	str r3, [r6, #0x16c]
	str r4, [r6, #0x168]
	ldr r1, [r7, #0x20]
	mov r2, r3, lsl #3
	ldr r0, [r1, #8]
	cmp r0, r3, lsl #3
	bls _0200F1C8
	str r7, [sp]
	ldr r1, [r1, #4]
	add r0, sp, #0
	add r3, r1, r2
	add r1, sp, #8
	mov r2, #8
	str r3, [sp, #4]
	bl FSi_ReadTable
	cmp r0, #0
	bne _0200F1C8
	ldr r2, [sp, #0xc]
	ldr r1, [sp, #8]
	mov r0, r7
	sub r1, r2, r1
	str r1, [r6, #0x168]
	ldr r1, [sp, #8]
	bl FSi_IsUnreadableRomOffset
	cmp r0, #0
	ldrne r0, [r6, #0x11c]
	orrne r0, r0, #0x400
	strne r0, [r6, #0x11c]
_0200F1C8:
	mov r0, #0
	str r0, [r6, #0x138]
	str r0, [r6, #0x13c]
	str r0, [r6, #0x140]
	str r0, [r6, #0x144]
	str r0, [r6, #0x148]
	str r0, [r6, #0x14c]
_0200F1E4:
	mov r0, r5
	add sp, sp, #0xa4
	ldmfd sp!, {r4, r5, r6, r7, pc}
	arm_func_end FSi_ROMFAT_ReadDirectory

	arm_func_start FSi_ROMFAT_FindPath
FSi_ROMFAT_FindPath: ; 0x0200F1F0
	stmfd sp!, {r3, r4, r5, r6, r7, r8, lr}
	sub sp, sp, #0x54
	add r4, sp, #0xc
	mov r8, r0
	mov r0, r4
	mov r7, r1
	mov r6, r2
	mov r5, r3
	bl FS_InitFile
	mov lr, #0
	ldr r12, [sp, #0x70]
	add r3, sp, #0
	mov r0, r4
	mov r1, #4
	mov r2, #1
	strh r7, [sp, #0x40]
	str r6, [sp, #0x48]
	str r12, [sp, #0x4c]
	str r8, [sp, #0x14]
	str r8, [sp, #0x3c]
	strh lr, [sp, #0x42]
	str lr, [sp, #0x44]
	str r3, [sp, #0x50]
	bl FSi_TranslateCommand
	cmp r0, #0
	addne sp, sp, #0x54
	ldmnefd sp!, {r3, r4, r5, r6, r7, r8, pc}
	ldr r1, [sp, #0x70]
	cmp r1, #0
	ldrneh r1, [sp, #4]
	strne r1, [r5]
	ldreq r1, [sp, #4]
	streq r1, [r5]
	add sp, sp, #0x54
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, pc}
	arm_func_end FSi_ROMFAT_FindPath

	arm_func_start FSi_ROMFAT_GetPath
FSi_ROMFAT_GetPath: ; 0x0200F27C
	stmfd sp!, {r3, r4, r5, lr}
	mov r5, r1
	mov r0, #0
	ldr r4, [sp, #0x10]
	strh r0, [r5, #0x38]
	strh r0, [r5, #0x3a]
	str r3, [r5, #0x30]
	ldr r3, [r4]
	mov r0, r5
	mov r1, #5
	mov r2, #1
	str r3, [r5, #0x34]
	bl FSi_TranslateCommand
	cmp r0, #0
	ldreq r1, [r5, #0x34]
	streq r1, [r4]
	ldmfd sp!, {r3, r4, r5, pc}
	arm_func_end FSi_ROMFAT_GetPath

	arm_func_start FSi_ROMFAT_OpenFileFast
FSi_ROMFAT_OpenFileFast: ; 0x0200F2C0
	stmfd sp!, {r3, r4, r5, lr}
	mov r4, r1
	mov r5, r0
	str r2, [r4, #0x34]
	mov r0, r4
	mov r1, #6
	mov r2, #1
	str r5, [r4, #0x30]
	bl FSi_TranslateCommand
	cmp r0, #0
	ldmnefd sp!, {r3, r4, r5, pc}
	ldr r2, [r4, #0xc]
	add r1, r4, #0x20
	orr r2, r2, #0x10
	bic r2, r2, #0x20
	str r2, [r4, #0xc]
	stmib r4, {r1, r5}
	ldmfd sp!, {r3, r4, r5, pc}
	arm_func_end FSi_ROMFAT_OpenFileFast

	arm_func_start FSi_ROMFAT_OpenFileDirect
FSi_ROMFAT_OpenFileDirect: ; 0x0200F308
	stmfd sp!, {r3, r4, r5, lr}
	mov r4, r1
	str r2, [r4, #0x30]
	ldr r1, [sp, #0x10]
	str r3, [r4, #0x34]
	ldr r3, [r1]
	mov r5, r0
	mov r0, r4
	mov r1, #7
	mov r2, #1
	str r3, [r4, #0x38]
	bl FSi_TranslateCommand
	cmp r0, #0
	ldmnefd sp!, {r3, r4, r5, pc}
	ldr r2, [r4, #0xc]
	add r1, r4, #0x20
	orr r2, r2, #0x10
	bic r2, r2, #0x20
	str r2, [r4, #0xc]
	stmib r4, {r1, r5}
	ldmfd sp!, {r3, r4, r5, pc}
	arm_func_end FSi_ROMFAT_OpenFileDirect

	arm_func_start FSi_ROMFAT_CloseFile
FSi_ROMFAT_CloseFile: ; 0x0200F35C
	stmfd sp!, {r4, lr}
	mov r4, r1
	mov r0, r4
	mov r1, #8
	mov r2, #1
	bl FSi_TranslateCommand
	ldr r1, [r4, #0xc]
	mov r2, #0
	bic r1, r1, #0x30
	str r2, [r4, #4]
	str r1, [r4, #0xc]
	ldmfd sp!, {r4, pc}
	arm_func_end FSi_ROMFAT_CloseFile

	arm_func_start FSi_ROMFAT_Activate
FSi_ROMFAT_Activate: ; 0x0200F38C
	stmfd sp!, {r3, r4, r5, lr}
	sub sp, sp, #0x48
	add r4, sp, #0
	mov r5, r0
	mov r0, r4
	bl FS_InitFile
	mov r0, r4
	mov r1, #9
	mov r2, #0
	str r5, [sp, #8]
	bl FSi_TranslateCommand
	add sp, sp, #0x48
	ldmfd sp!, {r3, r4, r5, pc}
	arm_func_end FSi_ROMFAT_Activate

	arm_func_start FSi_ROMFAT_Idle
FSi_ROMFAT_Idle: ; 0x0200F3C0
	stmfd sp!, {r3, r4, r5, lr}
	sub sp, sp, #0x48
	add r4, sp, #0
	mov r5, r0
	mov r0, r4
	bl FS_InitFile
	mov r0, r4
	mov r1, #0xa
	mov r2, #0
	str r5, [sp, #8]
	bl FSi_TranslateCommand
	add sp, sp, #0x48
	ldmfd sp!, {r3, r4, r5, pc}
	arm_func_end FSi_ROMFAT_Idle

	arm_func_start FSi_ROMFAT_Suspend
FSi_ROMFAT_Suspend: ; 0x0200F3F4
	stmfd sp!, {r3, r4, r5, lr}
	sub sp, sp, #0x48
	add r4, sp, #0
	mov r5, r0
	mov r0, r4
	bl FS_InitFile
	mov r0, r4
	mov r1, #0xb
	mov r2, #0
	str r5, [sp, #8]
	bl FSi_TranslateCommand
	add sp, sp, #0x48
	ldmfd sp!, {r3, r4, r5, pc}
	arm_func_end FSi_ROMFAT_Suspend

	arm_func_start FSi_ROMFAT_Resume
FSi_ROMFAT_Resume: ; 0x0200F428
	stmfd sp!, {r3, r4, r5, lr}
	sub sp, sp, #0x48
	add r4, sp, #0
	mov r5, r0
	mov r0, r4
	bl FS_InitFile
	mov r0, r4
	mov r1, #0xc
	mov r2, #0
	str r5, [sp, #8]
	bl FSi_TranslateCommand
	add sp, sp, #0x48
	ldmfd sp!, {r3, r4, r5, pc}
	arm_func_end FSi_ROMFAT_Resume

	arm_func_start FSi_ROMFAT_OpenFile
FSi_ROMFAT_OpenFile: ; 0x0200F45C
	stmfd sp!, {r3, r4, r5, lr}
	sub sp, sp, #8
	mov r4, r1
	mov r1, r2
	mov r2, r3
	mov r12, #0
	add r3, sp, #4
	mov r5, r0
	str r12, [sp]
	bl FSi_ROMFAT_FindPath
	cmp r0, #0
	addne sp, sp, #8
	ldmnefd sp!, {r3, r4, r5, pc}
	ldr r2, [sp, #4]
	ldr r3, [sp, #0x18]
	mov r0, r5
	mov r1, r4
	bl FSi_ROMFAT_OpenFileFast
	add sp, sp, #8
	ldmfd sp!, {r3, r4, r5, pc}
	arm_func_end FSi_ROMFAT_OpenFile

	arm_func_start FSi_ROMFAT_SeekFile
FSi_ROMFAT_SeekFile: ; 0x0200F4AC
	cmp r3, #0
	ldr r1, [r1, #4]
	ldr r12, [r2]
	beq _0200F4D0
	cmp r3, #1
	beq _0200F4D8
	cmp r3, #2
	beq _0200F4E0
	b _0200F4D8
_0200F4D0:
	ldr r0, [r1, #4]
	b _0200F4E4
_0200F4D8:
	ldr r0, [r1, #0xc]
	b _0200F4E4
_0200F4E0:
	ldr r0, [r1, #8]
_0200F4E4:
	add r12, r12, r0
	ldr r0, [r1, #4]
	cmp r12, r0
	blt _0200F500
	ldr r0, [r1, #8]
	cmp r12, r0
	ble _0200F508
_0200F500:
	mov r0, #6
	bx lr
_0200F508:
	str r12, [r1, #0xc]
	str r12, [r2]
	mov r0, #0
	bx lr
	arm_func_end FSi_ROMFAT_SeekFile

	arm_func_start FSi_ROMFAT_GetFileLength
FSi_ROMFAT_GetFileLength: ; 0x0200F518
	ldr r1, [r1, #4]
	mov r0, #0
	ldr r3, [r1, #8]
	ldr r1, [r1, #4]
	sub r1, r3, r1
	str r1, [r2]
	bx lr
	arm_func_end FSi_ROMFAT_GetFileLength

	arm_func_start FSi_ROMFAT_GetFilePosition
FSi_ROMFAT_GetFilePosition: ; 0x0200F534
	ldr r1, [r1, #4]
	mov r0, #0
	ldr r3, [r1, #0xc]
	ldr r1, [r1, #4]
	sub r1, r3, r1
	str r1, [r2]
	bx lr
	arm_func_end FSi_ROMFAT_GetFilePosition

	arm_func_start FSi_ROMFAT_Unmount
FSi_ROMFAT_Unmount: ; 0x0200F550
	stmfd sp!, {r4, lr}
	ldr r4, [r0, #0x20]
	bl FS_IsArchiveTableLoaded
	mov r0, #0
	str r0, [r4]
	str r0, [r4, #4]
	str r0, [r4, #8]
	str r0, [r4, #0xc]
	str r0, [r4, #0x10]
	str r0, [r4, #0x14]
	str r0, [r4, #0x18]
	ldmfd sp!, {r4, pc}
	arm_func_end FSi_ROMFAT_Unmount

	arm_func_start FSi_ROMFAT_GetArchiveCaps
FSi_ROMFAT_GetArchiveCaps: ; 0x0200F580
	mov r0, #0
	str r0, [r1]
	bx lr
	arm_func_end FSi_ROMFAT_GetArchiveCaps

	arm_func_start FSi_ROMFAT_OpenDirectory
FSi_ROMFAT_OpenDirectory: ; 0x0200F58C
	stmfd sp!, {r4, r5, r6, lr}
	sub sp, sp, #8
	mov r4, #0
	mov r5, r1
	mov r1, r2
	mov r2, r3
	add r3, sp, #4
	str r4, [sp, #4]
	mov r12, #1
	mov r6, r0
	str r12, [sp]
	bl FSi_ROMFAT_FindPath
	cmp r0, #0
	addne sp, sp, #8
	ldmnefd sp!, {r4, r5, r6, pc}
	ldr r2, [sp, #4]
	mov r0, r6
	mov r1, r5
	mov r3, r4
	bl FSi_ROMFAT_SeekDirectory
	add sp, sp, #8
	ldmfd sp!, {r4, r5, r6, pc}
	arm_func_end FSi_ROMFAT_OpenDirectory

	arm_func_start FSi_ROMFAT_CloseDirectory
FSi_ROMFAT_CloseDirectory: ; 0x0200F5E4
	ldr r2, [r1, #0xc]
	mov r0, #0
	bic r2, r2, #0x30
	str r0, [r1, #4]
	str r2, [r1, #0xc]
	bx lr
	arm_func_end FSi_ROMFAT_CloseDirectory

	arm_func_start FSi_ROMFAT_GetPathInfo
FSi_ROMFAT_GetPathInfo: ; 0x0200F5FC
	stmfd sp!, {r4, r5, r6, r7, r8, r9, r10, lr}
	sub sp, sp, #0x18
	mov r4, #0
	mov r8, r1
	mov r7, r2
	mov r6, r3
	mov r9, r0
	mov r0, r6
	mov r1, r4
	mov r2, #0x54
	str r4, [sp, #0x14]
	mov r5, #5
	bl MI_CpuFill8
	mov r0, #1
	add r10, sp, #0x14
	str r0, [sp]
	mov r0, r9
	mov r1, r8
	mov r2, r7
	mov r3, r10
	bl FSi_ROMFAT_FindPath
	cmp r0, #0
	bne _0200F670
	mov r0, #0x100
	str r0, [r6]
	ldr r0, [sp, #0x14]
	mov r5, r4
	str r0, [r6, #0x50]
	b _0200F710
_0200F670:
	mov r0, r9
	mov r1, r8
	mov r2, r7
	mov r3, r10
	str r4, [sp]
	bl FSi_ROMFAT_FindPath
	cmp r0, #0
	bne _0200F710
	str r4, [r6]
	ldr r0, [sp, #0x14]
	str r0, [r6, #0x50]
	str r4, [r6, #0x4c]
	ldr r3, [r9, #0x20]
	ldr r1, [sp, #0x14]
	ldr r0, [r3, #8]
	mov r2, r1, lsl #3
	cmp r0, r1, lsl #3
	bls _0200F70C
	str r9, [sp, #4]
	ldr r1, [r3, #4]
	add r0, sp, #4
	add r3, r1, r2
	add r1, sp, #0xc
	mov r2, #8
	str r3, [sp, #8]
	bl FSi_ReadTable
	cmp r0, #0
	bne _0200F70C
	ldr r2, [sp, #0x10]
	ldr r1, [sp, #0xc]
	mov r0, r9
	sub r1, r2, r1
	str r1, [r6, #0x4c]
	ldr r1, [sp, #0xc]
	bl FSi_IsUnreadableRomOffset
	cmp r0, #0
	ldrne r0, [r6]
	orrne r0, r0, #0x400
	strne r0, [r6]
_0200F70C:
	mov r5, #0
_0200F710:
	ldr r1, [r6]
	mov r0, r5
	orr r1, r1, #0x200
	str r1, [r6]
	add sp, sp, #0x18
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, pc}
	arm_func_end FSi_ROMFAT_GetPathInfo

	arm_func_start FSi_ROMFAT_GetArchiveResource
FSi_ROMFAT_GetArchiveResource: ; 0x0200F728
	stmfd sp!, {r4, lr}
	mov r4, r1
	bl CARD_GetRomHeader
	mov lr, #0
	str lr, [r4, #0x20]
	str lr, [r4, #0x24]
	str lr, [r4, #0x28]
	str lr, [r4, #0x2c]
	ldr r12, [r0, #0x80]
	mov r2, lr
	str r12, [r4]
	stmib r4, {r2, lr}
	sub r1, lr, #0x80000001
	mov r0, lr
	str lr, [r4, #0xc]
	str r1, [r4, #0x10]
	str lr, [r4, #0x14]
	str r1, [r4, #0x18]
	str lr, [r4, #0x1c]
	ldmfd sp!, {r4, pc}
	arm_func_end FSi_ROMFAT_GetArchiveResource

	arm_func_start FSi_ReadMemCallback
FSi_ReadMemCallback: ; 0x0200F778
	stmfd sp!, {r3, r4, r5, lr}
	mov r5, r1
	mov r4, r3
	mov r1, r2
	bl FS_GetArchiveOffset
	mov r1, r5
	mov r2, r4
	bl MI_CpuCopy8
	mov r0, #0
	ldmfd sp!, {r3, r4, r5, pc}
	arm_func_end FSi_ReadMemCallback

	arm_func_start FSi_WriteMemCallback
FSi_WriteMemCallback: ; 0x0200F7A0
	stmfd sp!, {r3, r4, r5, lr}
	mov r5, r1
	mov r4, r3
	mov r1, r2
	bl FS_GetArchiveOffset
	mov r1, r0
	mov r0, r5
	mov r2, r4
	bl MI_CpuCopy8
	mov r0, #0
	ldmfd sp!, {r3, r4, r5, pc}
	arm_func_end FSi_WriteMemCallback

	arm_func_start FS_LoadArchive
FS_LoadArchive: ; 0x0200F7CC
	stmfd sp!, {r4, lr}
	ldr r12, [sp, #8]
	ldr r4, [sp, #0x10]
	str r12, [r0, #0x34]
	str r12, [r0, #0x40]
	ldr lr, [sp, #0xc]
	cmp r4, #0
	ldreq r4, _0200F82C ; =FSi_ReadMemCallback
	ldr r12, [sp, #0x14]
	str r1, [r0, #0x28]
	cmp r12, #0
	ldreq r12, _0200F830 ; =FSi_WriteMemCallback
	str r3, [r0, #0x30]
	mov r3, #0
	str r2, [r0, #0x2c]
	str r2, [r0, #0x3c]
	ldr r2, _0200F834 ; =FSiArchiveProcInterface
	add r1, r0, #0x28
	str lr, [r0, #0x38]
	str r4, [r0, #0x48]
	str r12, [r0, #0x4c]
	str r3, [r0, #0x44]
	bl FS_MountArchive
	ldmfd sp!, {r4, pc}
_0200F82C: .word FSi_ReadMemCallback
_0200F830: .word FSi_WriteMemCallback
_0200F834: .word FSiArchiveProcInterface
	arm_func_end FS_LoadArchive

	arm_func_start FS_UnloadArchive
FS_UnloadArchive: ; 0x0200F838
	ldr r12, _0200F840 ; =FS_UnmountArchive
	bx r12
_0200F840: .word FS_UnmountArchive
	arm_func_end FS_UnloadArchive

	arm_func_start FSi_GetFileLengthIfProc
FSi_GetFileLengthIfProc: ; 0x0200F844
	stmfd sp!, {r4, lr}
	mov lr, r0
	ldr r0, [lr, #8]
	ldr r3, _0200F880 ; =FSiArchiveProcInterface
	ldr r12, [r0, #0x24]
	mov r2, r1
	cmp r12, r3
	mov r4, #0
	bne _0200F878
	mov r1, lr
	bl FSi_ROMFAT_GetFileLength
	cmp r0, #0
	moveq r4, #1
_0200F878:
	mov r0, r4
	ldmfd sp!, {r4, pc}
_0200F880: .word FSiArchiveProcInterface
	arm_func_end FSi_GetFileLengthIfProc

	arm_func_start FSi_GetFilePositionIfProc
FSi_GetFilePositionIfProc: ; 0x0200F884
	stmfd sp!, {r4, lr}
	mov lr, r0
	ldr r0, [lr, #8]
	ldr r3, _0200F8C0 ; =FSiArchiveProcInterface
	ldr r12, [r0, #0x24]
	mov r2, r1
	cmp r12, r3
	mov r4, #0
	bne _0200F8B8
	mov r1, lr
	bl FSi_ROMFAT_GetFilePosition
	cmp r0, #0
	moveq r4, #1
_0200F8B8:
	mov r0, r4
	ldmfd sp!, {r4, pc}
_0200F8C0: .word FSiArchiveProcInterface
	arm_func_end FSi_GetFilePositionIfProc

	arm_func_start FS_SetArchiveProc
FS_SetArchiveProc: ; 0x0200F8C4
	cmp r2, #0
	moveq r1, #0
	beq _0200F8D8
	cmp r1, #0
	moveq r2, #0
_0200F8D8:
	str r1, [r0, #0x54]
	str r2, [r0, #0x58]
	bx lr
	arm_func_end FS_SetArchiveProc

	arm_func_start FS_LoadArchiveTables
FS_LoadArchiveTables: ; 0x0200F8E4
	stmfd sp!, {r4, r5, r6, r7, r8, r9, lr}
	sub sp, sp, #0x4c
	movs r8, r1
	mov r9, r0
	mov r4, r2
	beq _0200F910
	bl FS_IsArchiveTableLoaded
	cmp r0, #0
	beq _0200F910
	mov r0, r9
	bl FS_UnloadArchiveTables
_0200F910:
	ldr r5, [r9, #0x20]
	ldr r1, [r5, #8]
	ldr r0, [r5, #0x10]
	add r0, r1, r0
	add r0, r0, #0x3f
	bic r6, r0, #0x1f
	cmp r6, r4
	bhi _0200FA18
	add r4, sp, #4
	add r1, r8, #0x1f
	mov r0, r4
	bic r7, r1, #0x1f
	bl FS_InitFile
	ldr r2, [r5, #4]
	mvn r0, #0
	str r0, [sp]
	ldr r3, [r5, #8]
	mov r0, r4
	mov r1, r9
	add r3, r2, r3
	bl FS_OpenFileDirect
	cmp r0, #0
	beq _0200F99C
	ldr r2, [r5, #8]
	mov r0, r4
	mov r1, r7
	bl FS_ReadFile
	cmp r0, #0
	bge _0200F994
	ldr r2, [r5, #8]
	mov r0, r7
	mov r1, #0
	bl MI_CpuFill8
_0200F994:
	add r0, sp, #4
	bl FS_CloseFile
_0200F99C:
	str r7, [r5, #4]
	ldr r12, [r5, #8]
	ldr r2, [r5, #0xc]
	mvn r0, #0
	str r0, [sp]
	ldr r3, [r5, #0x10]
	add r4, sp, #4
	mov r1, r9
	mov r0, r4
	add r3, r2, r3
	add r7, r7, r12
	bl FS_OpenFileDirect
	cmp r0, #0
	beq _0200FA04
	ldr r2, [r5, #0x10]
	mov r0, r4
	mov r1, r7
	bl FS_ReadFile
	cmp r0, #0
	bge _0200F9FC
	ldr r2, [r5, #0x10]
	mov r0, r7
	mov r1, #0
	bl MI_CpuFill8
_0200F9FC:
	add r0, sp, #4
	bl FS_CloseFile
_0200FA04:
	str r7, [r5, #0xc]
	str r8, [r5, #0x1c]
	ldr r0, [r9, #0x14]
	orr r0, r0, #4
	str r0, [r9, #0x14]
_0200FA18:
	mov r0, r6
	add sp, sp, #0x4c
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, pc}
	arm_func_end FS_LoadArchiveTables

	arm_func_start FS_UnloadArchiveTables
FS_UnloadArchiveTables: ; 0x0200FA24
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	mov r7, r0
	ldr r0, [r7, #0x14]
	mov r4, #0
	tst r0, #2
	movne r0, #1
	moveq r0, r4
	cmp r0, #0
	beq _0200FAA0
	mov r0, r7
	ldr r5, [r7, #0x20]
	bl FS_SuspendArchive
	mov r6, r0
	mov r0, r7
	bl FS_IsArchiveTableLoaded
	cmp r0, #0
	beq _0200FA90
	ldr r1, [r7, #0x14]
	mov r0, #0
	bic r1, r1, #4
	str r1, [r7, #0x14]
	ldr r4, [r5, #0x1c]
	ldr r1, [r5, #0x14]
	str r1, [r5, #4]
	ldr r1, [r5, #0x18]
	str r1, [r5, #0xc]
	str r0, [r5, #0x1c]
_0200FA90:
	cmp r6, #0
	beq _0200FAA0
	mov r0, r7
	bl FS_ResumeArchive
_0200FAA0:
	mov r0, r4
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
	arm_func_end FS_UnloadArchiveTables

	arm_func_start FS_GetArchiveBase
FS_GetArchiveBase: ; 0x0200FAA8
	ldr r0, [r0, #0x20]
	ldr r0, [r0]
	bx lr
	arm_func_end FS_GetArchiveBase

	arm_func_start FS_GetArchiveOffset
FS_GetArchiveOffset: ; 0x0200FAB4
	ldr r0, [r0, #0x20]
	ldr r0, [r0]
	add r0, r0, r1
	bx lr
	arm_func_end FS_GetArchiveOffset

	arm_func_start FS_IsArchiveTableLoaded
FS_IsArchiveTableLoaded: ; 0x0200FAC4
	ldr r0, [r0, #0x14]
	tst r0, #4
	movne r0, #1
	moveq r0, #0
	bx lr
	arm_func_end FS_IsArchiveTableLoaded

	arm_func_start FS_GetFileImageTop
FS_GetFileImageTop: ; 0x0200FAD8
	ldr r0, [r0, #0x24]
	bx lr
	arm_func_end FS_GetFileImageTop

	arm_func_start FSi_IsUnreadableRomOffset
FSi_IsUnreadableRomOffset: ; 0x0200FAE0
	mov r0, #0
	bx lr
	arm_func_end FSi_IsUnreadableRomOffset

	arm_func_start FSi_OnRomReadDone
FSi_OnRomReadDone: ; 0x0200FAE8
	stmfd sp!, {r4, lr}
	mov r4, r0
	bl CARD_IsPulledOut
	cmp r0, #0
	mov r1, #5
	moveq r1, #0
	mov r0, r4
	bl FS_NotifyArchiveAsyncEnd
	ldmfd sp!, {r4, pc}
	arm_func_end FSi_OnRomReadDone

	arm_func_start FSi_ReadRomCallback
FSi_ReadRomCallback: ; 0x0200FB0C
	stmdb sp!, {lr}
	sub sp, sp, #0xc
	ldr r12, _0200FB4C ; =FSi_OnRomReadDone
	mov lr, r1
	str r12, [sp]
	str r0, [sp, #4]
	mov r1, #1
	ldr r0, _0200FB50 ; =fsi_default_dma_no
	str r1, [sp, #8]
	mov r1, r2
	ldr r0, [r0]
	mov r2, lr
	bl CARDi_ReadRom
	mov r0, #0x100
	add sp, sp, #0xc
	ldmia sp!, {pc}
_0200FB4C: .word FSi_OnRomReadDone
_0200FB50: .word fsi_default_dma_no
	arm_func_end FSi_ReadRomCallback

	arm_func_start FSi_RomArchiveProc
FSi_RomArchiveProc: ; 0x0200FB54
	stmfd sp!, {r3, lr}
	cmp r1, #1
	beq _0200FBAC
	cmp r1, #9
	beq _0200FB74
	cmp r1, #0xa
	beq _0200FB90
	b _0200FBB4
_0200FB74:
	ldr r0, _0200FBBC ; =fsi_default_dma_no
	ldr r0, [r0, #4]
	mov r0, r0, lsl #0x10
	mov r0, r0, lsr #0x10
	bl CARD_LockRom
	mov r0, #0
	ldmfd sp!, {r3, pc}
_0200FB90:
	ldr r0, _0200FBBC ; =fsi_default_dma_no
	ldr r0, [r0, #4]
	mov r0, r0, lsl #0x10
	mov r0, r0, lsr #0x10
	bl CARD_UnlockRom
	mov r0, #0
	ldmfd sp!, {r3, pc}
_0200FBAC:
	mov r0, #4
	ldmfd sp!, {r3, pc}
_0200FBB4:
	ldr r0, _0200FBC0 ; =0x00000102
	ldmfd sp!, {r3, pc}
_0200FBBC: .word fsi_default_dma_no
_0200FBC0: .word 0x00000102
	arm_func_end FSi_RomArchiveProc

	arm_func_start FSi_EmptyArchiveProc
FSi_EmptyArchiveProc: ; 0x0200FBC4
	mov r0, #4
	cmp r1, #1
	ldrne r0, _0200FBD4 ; =0x00000102
	bx lr
_0200FBD4: .word 0x00000102
	arm_func_end FSi_EmptyArchiveProc

	arm_func_start FSi_ReadDummyCallback
FSi_ReadDummyCallback: ; 0x0200FBD8
	mov r0, #4
	bx lr
	arm_func_end FSi_ReadDummyCallback

	arm_func_start FSi_WriteDummyCallback
FSi_WriteDummyCallback: ; 0x0200FBE0
	mov r0, #4
	bx lr
	arm_func_end FSi_WriteDummyCallback

	arm_func_start FSi_OverrideRomArchive
FSi_OverrideRomArchive: ; 0x0200FBE8
	mov r0, #0
	bx lr
	arm_func_end FSi_OverrideRomArchive

	arm_func_start FSi_InitRomArchive
FSi_InitRomArchive: ; 0x0200FBF0
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	sub sp, sp, #0x10
	mov r4, r0
	bl CARD_Init
	ldr r5, _0200FD1C ; =fsi_default_dma_no
	str r4, [r5]
	bl OS_GetLockID
	ldr r4, _0200FD20 ; =fsi_arc_rom
	str r0, [r5, #4]
	mov r0, r4
	bl FS_InitArchive
	mov r7, #3
	ldr r1, _0200FD24 ; =0x0208EE84
	mov r0, r4
	mov r2, r7
	bl FS_RegisterArchiveName
	bl OS_GetBootType
	cmp r0, #1
	bne _0200FCA8
	bl CARD_GetOwnRomHeader
	mov r6, r0
	bl CARD_GetOwnRomHeader
	mov r5, r0
	ldr r1, _0200FD28 ; =FSi_RomArchiveProc
	ldr r2, _0200FD2C ; =0x00000682
	mov r0, r4
	bl FS_SetArchiveProc
	ldr r1, [r6, #0x40]
	sub r0, r7, #4
	cmp r1, r0
	cmpne r1, #0
	ldrne r2, [r5, #0x48]
	cmpne r2, r0
	cmpne r2, #0
	beq _0200FCB0
	str r1, [sp]
	ldr r1, [r6, #0x44]
	ldr r0, _0200FD30 ; =FSi_ReadRomCallback
	str r1, [sp, #4]
	str r0, [sp, #8]
	mov r1, #0
	str r1, [sp, #0xc]
	ldr r3, [r5, #0x4c]
	mov r0, r4
	bl FS_LoadArchive
	b _0200FCB0
_0200FCA8:
	mov r0, r4
	bl FSi_OverrideRomArchive
_0200FCB0:
	ldr r0, _0200FD20 ; =fsi_arc_rom
	ldr r0, [r0, #0x14]
	tst r0, #2
	movne r0, #1
	moveq r0, #0
	cmp r0, #0
	bne _0200FD0C
	ldr r5, _0200FD20 ; =fsi_arc_rom
	ldr r1, _0200FD34 ; =FSi_EmptyArchiveProc
	mov r0, r5
	mvn r2, #0
	bl FS_SetArchiveProc
	mov r1, #0
	str r1, [sp]
	ldr r0, _0200FD38 ; =FSi_ReadDummyCallback
	str r1, [sp, #4]
	ldr r4, _0200FD3C ; =FSi_WriteDummyCallback
	str r0, [sp, #8]
	mov r0, r5
	mov r2, r1
	mov r3, r1
	str r4, [sp, #0xc]
	bl FS_LoadArchive
_0200FD0C:
	ldr r0, _0200FD40 ; =0x0208EE88
	bl FS_SetCurrentDirectory
	add sp, sp, #0x10
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_0200FD1C: .word fsi_default_dma_no
_0200FD20: .word fsi_arc_rom
_0200FD24: .word unk_0208EE84
_0200FD28: .word FSi_RomArchiveProc
_0200FD2C: .word 0x00000682
_0200FD30: .word FSi_ReadRomCallback
_0200FD34: .word FSi_EmptyArchiveProc
_0200FD38: .word FSi_ReadDummyCallback
_0200FD3C: .word FSi_WriteDummyCallback
_0200FD40: .word unk_0208EE88
	arm_func_end FSi_InitRomArchive

	arm_func_start FS_TryLoadTable
FS_TryLoadTable: ; 0x0200FD44
	mov r3, r0
	mov r2, r1
	ldr r0, _0200FD5C ; =fsi_arc_rom
	ldr r12, _0200FD60 ; =FS_LoadArchiveTables
	mov r1, r3
	bx r12
_0200FD5C: .word fsi_arc_rom
_0200FD60: .word FS_LoadArchiveTables
	arm_func_end FS_TryLoadTable

	arm_func_start FS_CreateFileFromRom
FS_CreateFileFromRom: ; 0x0200FD64
	stmfd sp!, {r3, lr}
	mov lr, r1
	mov r3, r2
	ldr r12, _0200FD8C ; =0x0000FFFF
	ldr r1, _0200FD90 ; =fsi_arc_rom
	mov r2, lr
	add r3, lr, r3
	str r12, [sp]
	bl FS_OpenFileDirect
	ldmfd sp!, {r3, pc}
_0200FD8C: .word 0x0000FFFF
_0200FD90: .word fsi_arc_rom
	arm_func_end FS_CreateFileFromRom

	arm_func_start FS_Init
FS_Init: ; 0x0200FD94
	stmfd sp!, {r3, lr}
	ldr r1, _0200FDBC ; =is_init_02095bb8
	ldr r2, [r1]
	cmp r2, #0
	ldmnefd sp!, {r3, pc}
	mov r2, #1
	str r2, [r1]
	bl FSi_InitRomArchive
	bl FSi_InitOverlay
	ldmfd sp!, {r3, pc}
_0200FDBC: .word is_init_02095bb8
	arm_func_end FS_Init

	.rodata
	.global fsi_def_digest_key
fsi_def_digest_key:
	.byte 0x21, 0x06, 0xC0, 0xDE, 0xBA, 0x98, 0xCE, 0x3F, 0xA6, 0x92, 0xE3, 0x9D
	.byte 0x46, 0xF2, 0xED, 0x01, 0x76, 0xE3, 0xCC, 0x08, 0x56, 0x23, 0x63, 0xFA, 0xCA, 0xD4, 0xEC, 0xDF
	.byte 0x9A, 0x62, 0x78, 0x34, 0x8F, 0x6D, 0x63, 0x3C, 0xFE, 0x22, 0xCA, 0x92, 0x20, 0x88, 0x97, 0x23
	.byte 0xD2, 0xCF, 0xAE, 0xC2, 0x32, 0x67, 0x8D, 0xFE, 0xCA, 0x83, 0x64, 0x98, 0xAC, 0xFD, 0x3E, 0x37
	.byte 0x87, 0x46, 0x58, 0x24
	.global default_table
default_table:
	.word FSi_ReadFileDefault
	.word FSi_WriteFileDefault
	.word FSi_SeekDirDefault
	.word FSi_ReadDirDefault
	.word FSi_FindPathDefault
	.word FSi_GetPathDefault
	.word FSi_OpenFileFastDefault
	.word FSi_OpenFileDirectDefault
	.word FSi_IgnoredCommand
	.word FSi_IgnoredCommand
	.word FSi_IgnoredCommand
	.word FSi_IgnoredCommand
	.word FSi_IgnoredCommand
	.global FSiArchiveProcInterface
FSiArchiveProcInterface:
	.word FSi_ROMFAT_ReadFile
	.word FSi_ROMFAT_WriteFile
	.word FSi_ROMFAT_SeekDirectory
	.word FSi_ROMFAT_ReadDirectory
	.word FSi_ROMFAT_FindPath
	.word FSi_ROMFAT_GetPath
	.word FSi_ROMFAT_OpenFileFast
	.word FSi_ROMFAT_OpenFileDirect
	.word FSi_ROMFAT_CloseFile
	.word FSi_ROMFAT_Activate
	.word FSi_ROMFAT_Idle
	.word FSi_ROMFAT_Suspend
	.word FSi_ROMFAT_Resume
	.word FSi_ROMFAT_OpenFile
	.word FSi_ROMFAT_SeekFile
	.word FSi_ROMFAT_GetFileLength
	.word FSi_ROMFAT_GetFilePosition
	.word 0x00000000
	.word FSi_ROMFAT_Unmount
	.word FSi_ROMFAT_GetArchiveCaps
	.word 0x00000000
	.word 0x00000000
	.word 0x00000000
	.word FSi_ROMFAT_GetPathInfo
	.word 0x00000000
	.word 0x00000000
	.word 0x00000000
	.word 0x00000000
	.word FSi_ROMFAT_GetArchiveResource
	.word 0x00000000
	.word 0x00000000
	.word 0x00000000
	.word FSi_ROMFAT_OpenDirectory
	.word FSi_ROMFAT_CloseDirectory
	.word 0x00000000
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00

	.data
	.global unk_0208EE78
unk_0208EE78:
	.asciz "/"
	.global unk_0208EE7C
	.balign 4, 0
unk_0208EE7C:
	.asciz "rom"
	.global unk_0208EE80
	.balign 4, 0
unk_0208EE80:
	.asciz ":/"
	.global unk_0208EE84
	.balign 4, 0
unk_0208EE84:
	.asciz "rom"
	.global unk_0208EE88
	.balign 4, 0
unk_0208EE88:
	.asciz "rom:"

	.bss
	.global arc_list
arc_list:
	.space 0x04
	.global current_dir_pos
current_dir_pos:
	.space 0x0C
	.global FSiLongNameTable
FSiLongNameTable:
	.space 0x100
	.global current_dir_path
current_dir_path:
	.space 0x104
	.global FSiOverlayContext
FSiOverlayContext:
	.space 0x04
	.global unk_02095B3C
unk_02095B3C:
	.space 0x08
	.global unk_02095B44
unk_02095B44:
	.space 0x10
	.global fsi_default_dma_no
fsi_default_dma_no:
	.space 0x04
	.global fsi_card_lock_id
fsi_card_lock_id:
	.space 0x04
	.global fsi_arc_rom
fsi_arc_rom:
	.space 0x5C
	.global is_init_02095bb8
is_init_02095bb8:
	.space 0x04
