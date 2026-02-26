
	.include "asm/macros/function.inc"
	.public CARD_LockRom
	.public CARD_UnlockRom
	.public CARDi_ReadRom
	.public DWCi_HEAPlAllocEx
	.public DWCi_HEAPlFree_
	.public DWCi_QUElFormEx
	.public DWCi_QUElPopBack
	.public DWCi_QUElPushBack
	.public FS_ChangeDir
	.public FS_CloseFile
	.public FS_GetArchiveBase
	.public FS_GetFileImageTop
	.public FS_GetLength
	.public FS_InitArchive
	.public FS_InitFile
	.public FS_LoadArchive
	.public FS_LoadArchiveTables
	.public FS_NotifyArchiveAsyncEnd
	.public FS_OpenFile
	.public FS_ReadFile
	.public FS_RegisterArchiveName
	.public FS_ReleaseArchiveName
	.public FS_SetArchiveProc
	.public FS_UnloadArchive
	.public FS_UnloadArchiveTables
	.public MI_UncompressLZ8
	.public OS_GetLockID
	.public OS_ReleaseLockID
	.public OS_SPrintf
	.public OS_Terminate
	.public memcmp
	.public strlen

	.text
	arm_func_start DWCi_ARClInit
DWCi_ARClInit: ; 0x0210C500
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	sub sp, sp, #0xe8
	mov r0, #0xe8
	mov r1, #4
	bl DWCi_HEAPlAllocEx
	ldr r1, _0210C694 ; =MemArchive
	add r4, sp, #0xa0
	str r0, [r1]
	mov r0, r4
	bl FS_InitFile
	ldr r1, _0210C698 ; =0x02113C28
	mov r0, r4
	bl FS_OpenFile
	cmp r0, #0
	bne _0210C540
	bl OS_Terminate
_0210C540:
	bl OS_GetLockID
	ldr r5, _0210C694 ; =MemArchive
	add r7, sp, #0xa0
	ldr r1, [r5]
	strh r0, [r1, #0xe4]
	mov r0, r7
	bl FS_GetFileImageTop
	mov r6, #8
	mov r4, r0
	add r1, sp, #0x18
	mov r0, r7
	mov r2, r6
	bl FS_ReadFile
	add r1, sp, #0x10
	mov r2, r6
	mov r0, r7
	bl FS_ReadFile
	mov r0, r7
	bl FS_CloseFile
	ldr r0, [r5]
	add r0, r0, #0x88
	bl FS_InitArchive
	ldr r0, [r5]
	ldr r1, _0210C69C ; =ARCHIVE_NAME
	add r0, r0, #0x88
	mov r2, #3
	bl FS_RegisterArchiveName
	cmp r0, #0
	bne _0210C5B8
	bl OS_Terminate
_0210C5B8:
	ldr r5, _0210C694 ; =MemArchive
	ldr r1, _0210C6A0 ; =userProc
	ldr r0, [r5]
	ldr r2, _0210C6A4 ; =0x00000602
	add r0, r0, #0x88
	bl FS_SetArchiveProc
	ldr r0, [sp, #0x18]
	ldr r1, _0210C6A8 ; =cbRead
	str r0, [sp]
	ldr r2, [sp, #0x1c]
	ldr r0, _0210C6AC ; =cbWrite
	str r2, [sp, #4]
	str r1, [sp, #8]
	str r0, [sp, #0xc]
	ldr r0, [r5]
	ldr r2, [sp, #0x10]
	ldr r3, [sp, #0x14]
	mov r1, r4
	add r0, r0, #0x88
	bl FS_LoadArchive
	cmp r0, #0
	bne _0210C614
	bl OS_Terminate
_0210C614:
	ldr r4, _0210C694 ; =MemArchive
	mov r1, #0
	ldr r0, [r4]
	mov r2, r1
	add r0, r0, #0x88
	bl FS_LoadArchiveTables
	mov r5, #4
	mov r1, r5
	mov r6, r0
	bl DWCi_HEAPlAllocEx
	ldr r1, [r4]
	mov r2, r6
	str r0, [r1]
	ldr r0, [r4]
	ldr r1, [r0], #0x88
	bl FS_LoadArchiveTables
	ldr r0, [r4]
	mov r2, r5
	add r1, r0, #4
	mov r0, #0x20
	bl DWCi_QUElFormEx
	ldr r1, [r4]
	add r4, sp, #0x20
	str r0, [r1, #0x84]
	ldr r1, _0210C6B0 ; =0x02113C40
	ldr r2, _0210C69C ; =ARCHIVE_NAME
	mov r0, r4
	bl OS_SPrintf
	mov r0, r4
	bl FS_ChangeDir
	add sp, sp, #0xe8
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_0210C694: .word MemArchive
_0210C698: .word ov17_02113C28
_0210C69C: .word ARCHIVE_NAME
_0210C6A0: .word userProc
_0210C6A4: .word 0x00000602
_0210C6A8: .word cbRead
_0210C6AC: .word cbWrite
_0210C6B0: .word ov17_02113C40
	arm_func_end DWCi_ARClInit

	arm_func_start DWCi_ARClEnd
DWCi_ARClEnd: ; 0x0210C6B4
	stmfd sp!, {r3, r4, r5, lr}
	ldr r0, _0210C71C ; =0x02113C48
	bl FS_ChangeDir
	ldr r4, _0210C720 ; =MemArchive
	ldr r0, [r4]
	add r0, r0, #0x88
	bl FS_UnloadArchiveTables
	ldr r0, [r4]
	add r0, r0, #0x88
	bl FS_UnloadArchive
	ldr r0, [r4]
	add r0, r0, #0x88
	bl FS_ReleaseArchiveName
	ldr r0, [r4]
	ldrh r0, [r0, #0xe4]
	bl OS_ReleaseLockID
	ldr r0, [r4]
	mov r5, #0
	strh r5, [r0, #0xe4]
	ldr r0, [r4]
	bl DWCi_HEAPlFree_
	ldr r1, [r4]
	ldr r0, _0210C724 ; =MemArchive
	str r5, [r1]
	bl DWCi_HEAPlFree_
	ldmfd sp!, {r3, r4, r5, pc}
_0210C71C: .word ov17_02113C48
_0210C720: .word MemArchive
_0210C724: .word MemArchive
	arm_func_end DWCi_ARClEnd

	arm_static_func_start userProc
userProc: ; 0x0210C728
	stmfd sp!, {r3, lr}
	cmp r1, #1
	beq _0210C778
	cmp r1, #9
	beq _0210C748
	cmp r1, #0xa
	beq _0210C760
	b _0210C780
_0210C748:
	ldr r0, _0210C788 ; =MemArchive
	ldr r0, [r0]
	ldrh r0, [r0, #0xe4]
	bl CARD_LockRom
	mov r0, #0
	ldmfd sp!, {r3, pc}
_0210C760:
	ldr r0, _0210C788 ; =MemArchive
	ldr r0, [r0]
	ldrh r0, [r0, #0xe4]
	bl CARD_UnlockRom
	mov r0, #0
	ldmfd sp!, {r3, pc}
_0210C778:
	mov r0, #4
	ldmfd sp!, {r3, pc}
_0210C780:
	ldr r0, _0210C78C ; =0x00000102
	ldmfd sp!, {r3, pc}
_0210C788: .word MemArchive
_0210C78C: .word 0x00000102
	arm_func_end userProc

	arm_static_func_start cbRead
cbRead: ; 0x0210C790
	stmfd sp!, {r4, r5, r6, r7, lr}
	sub sp, sp, #0xc
	mov r7, r0
	mov r6, r1
	mov r5, r2
	mov r4, r3
	bl FS_GetArchiveBase
	ldr r1, _0210C7E0 ; =cbReadRom
	mov lr, r0
	mov r12, #1
	str r1, [sp]
	mov r2, r6
	mov r3, r4
	sub r0, r12, #2
	add r1, r5, lr
	stmib sp, {r7, r12}
	bl CARDi_ReadRom
	mov r0, #0x100
	add sp, sp, #0xc
	ldmfd sp!, {r4, r5, r6, r7, pc}
_0210C7E0: .word cbReadRom
	arm_func_end cbRead

	arm_static_func_start cbReadRom
cbReadRom: ; 0x0210C7E4
	ldr r12, _0210C7F0 ; =FS_NotifyArchiveAsyncEnd
	mov r1, #0
	bx r12
_0210C7F0: .word FS_NotifyArchiveAsyncEnd
	arm_func_end cbReadRom

	arm_static_func_start cbWrite
cbWrite: ; 0x0210C7F4
	mov r0, #1
	bx lr
	arm_func_end cbWrite

	arm_func_start DWCi_ARClReadEx
DWCi_ARClReadEx: ; 0x0210C7FC
	stmfd sp!, {r3, r4, r5, r6, r7, r8, lr}
	sub sp, sp, #0x4c
	ldr r3, _0210C8F4 ; =MemArchive
	mov r6, r0
	ldr r0, [r3]
	mov r5, r1
	ldr r0, [r0, #0x84]
	mov r4, r2
	bl DWCi_QUElPopBack
	add r7, sp, #4
	mov r0, r7
	bl FS_InitFile
	mov r0, r7
	mov r1, r6
	bl FS_OpenFile
	cmp r0, #0
	bne _0210C844
	bl OS_Terminate
_0210C844:
	add r0, sp, #4
	bl FS_GetLength
	mov r7, #2
	mov r8, r0
	cmp r5, #0
	ldr r1, _0210C8F8 ; =0x02113C50
	mov r0, r6
	mov r2, r7
	strne r8, [r5]
	bl cmpBack
	cmp r0, #0
	sub r7, r7, #6
	moveq r7, r4
	mov r0, r8
	mov r1, r7
	bl DWCi_HEAPlAllocEx
	mov r1, r0
	add r6, sp, #4
	mov r2, r8
	mov r0, r6
	str r1, [sp]
	bl FS_ReadFile
	mov r0, r6
	bl FS_CloseFile
	cmp r7, #0
	ldrgt r0, [sp]
	addgt sp, sp, #0x4c
	ldmgtfd sp!, {r3, r4, r5, r6, r7, r8, pc}
	ldr r0, [sp]
	cmp r5, #0
	ldr r0, [r0]
	mov r1, r4
	mov r0, r0, lsr #8
	strne r0, [r5]
	bl DWCi_HEAPlAllocEx
	mov r4, r0
	ldr r0, [sp]
	mov r1, r4
	bl MI_UncompressLZ8
	add r0, sp, #0
	bl DWCi_HEAPlFree_
	mov r0, r4
	add sp, sp, #0x4c
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, pc}
_0210C8F4: .word MemArchive
_0210C8F8: .word ov17_02113C50
	arm_func_end DWCi_ARClReadEx

	arm_func_start DWCi_ARClRelease
DWCi_ARClRelease: ; 0x0210C8FC
	stmfd sp!, {r0, r1, r2, r3}
	stmfd sp!, {r3, lr}
	add r0, sp, #8
	bl DWCi_HEAPlFree_
	ldr r0, _0210C92C ; =MemArchive
	ldr r1, [sp, #8]
	ldr r0, [r0]
	ldr r0, [r0, #0x84]
	bl DWCi_QUElPushBack
	ldmfd sp!, {r3, lr}
	add sp, sp, #0x10
	bx lr
_0210C92C: .word MemArchive
	arm_func_end DWCi_ARClRelease

	arm_static_func_start cmpBack
cmpBack: ; 0x0210C930
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	mov r6, r1
	mov r7, r0
	mov r5, r2
	bl strlen
	mov r4, r0
	mov r0, r6
	bl strlen
	cmp r4, r5
	cmpge r0, r5
	movlt r0, #0
	ldmltfd sp!, {r3, r4, r5, r6, r7, pc}
	sub r1, r0, r5
	sub r3, r4, r5
	mov r2, r5
	add r0, r7, r3
	add r1, r6, r1
	bl memcmp
	cmp r0, #0
	moveq r0, #1
	movne r0, #0
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
	arm_func_end cmpBack

	.rodata
ARCHIVE_NAME:
	.asciz "dwc"

	.data
ov17_02113C28:
	.asciz "rom:/dwc/utility.bin"
	.balign 4, 0
ov17_02113C40:
	.asciz "%s:/"
	.balign 4, 0
ov17_02113C48:
	.asciz "rom:/"
	.balign 4, 0
ov17_02113C50:
	.asciz ".l"

	.bss
MemArchive:
	.space 0x04
