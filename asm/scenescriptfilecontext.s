
	.include "/macros/function.inc"
	.include "/include/scenescriptfilecontext.inc"

    .text
	arm_func_start _ZN23CSceneScriptFileContextC1Ev
_ZN23CSceneScriptFileContextC1Ev: ; 0x02048C5C
	stmfd sp!, {r4, lr}
	mov r4, r0
	add r0, r4, #4
	bl _ZN16CSceneScriptDataC1Ev
	mov r1, #0
	mov r0, r4
	str r1, [r4, #0x24]
	str r1, [r4, #0x28]
	ldmfd sp!, {r4, pc}
	arm_func_end _ZN23CSceneScriptFileContextC1Ev

	arm_func_start _ZN23CSceneScriptFileContextD1Ev
_ZN23CSceneScriptFileContextD1Ev: ; 0x02048C80
	stmfd sp!, {r4, lr}
	mov r4, r0
	add r0, r4, #4
	bl _ZN16CSceneScriptDataD1Ev
	mov r0, r4
	ldmfd sp!, {r4, pc}
	arm_func_end _ZN23CSceneScriptFileContextD1Ev

	arm_func_start _ZN23CSceneScriptFileContext11linkManagerEP19CSceneScriptManager
_ZN23CSceneScriptFileContext11linkManagerEP19CSceneScriptManager: ; 0x02048C98
	mov r2, #0
	str r1, [r0]
	str r2, [r0, #0x24]
	str r2, [r0, #0x28]
	bx lr
	arm_func_end _ZN23CSceneScriptFileContext11linkManagerEP19CSceneScriptManager

	arm_func_start _ZN23CSceneScriptFileContext10openScriptEimPvS0_i ; https://decomp.me/scratch/AN5nQ
_ZN23CSceneScriptFileContext10openScriptEimPvS0_i: ; 0x02048CAC
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, lr}
	sub sp, sp, #0x108
	sub r1, r1, #9
	mov r5, r3
	mov r8, #1
	mov r4, #0
	cmp r1, #1
	movls r8, r4
	mov r10, r0
	mov r9, r2
	cmp r5, #0
	beq _02048EF0
	ldr r7, _0204900C ; =0x02090324
	add r11, sp, #0x34
	ldmia r7!, {r0, r1, r2, r3}
	mov r4, r11
	stmia r11!, {r0, r1, r2, r3}
	ldr r6, _02049010 ; =0x02090338
	ldr r7, [r7]
	ldmia r6!, {r0, r1, r2, r3}
	str r7, [r11]
	add r7, sp, #0x20
	stmia r7!, {r0, r1, r2, r3}
	ldr r6, [r6]
	add r2, sp, #0x14
	mov r0, r5
	mov r1, r9
	add r3, sp, #0x10
	str r6, [r7]
	bl _ZN7Archive26PackHeaderGetOffsetAndSizeEPvmPlPm
	cmp r0, #0
	moveq r0, #0
	addeq sp, sp, #0x108
	streq r0, [r10, #0x24]
	streq r0, [r10, #0x28]
	subeq r0, r0, #1
	ldmeqfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
	add r7, sp, #0x88
	ldr r1, _02049014 ; =0x0209034C
	mov r0, r7
	bl STD_CopyString
	ldr r1, [r10, #0x24]
	mov r0, r7
	ldr r1, [r4, r1, lsl #2]
	bl STD_ConcatenateString
	add r0, sp, #0x18
	str r0, [sp, #0x1c]
	mov r11, #0
	ldr r0, [sp, #0x14]
	mov r6, #4
	stmia sp, {r0, r6}
	ldr r4, _02049018 ; =gFileIO
	str r11, [sp, #8]
	mov r5, #1
	mov r0, r4
	mov r1, r7
	add r2, sp, #0x1c
	mov r3, r11
	str r5, [sp, #0xc]
	bl _ZN7CFileIO10readDirectEPKcPPvP9Allocatorlmih
	mov r1, r6
	ldr r6, _0204901C ; =gAllocator
	mov r0, r6
	bl _ZN9Allocator12setNextArenaEi
	ldr r1, [sp, #0x18]
	mov r0, r6
	mov r3, r8
	mov r2, r5
	mov r1, r1, lsr #8
	bl _ZN9Allocator8allocateEmii
	str r0, [r10, #0x1c]
	ldr r0, [sp, #0x134]
	cmp r0, #0
	bne _02048E00
	ldr r1, [sp, #0x14]
	mov r0, r4
	str r1, [sp]
	ldr r2, [sp, #0x10]
	mov r1, r7
	stmib sp, {r2, r5}
	mov r3, r11
	add r2, r10, #0x1c
	str r5, [sp, #0xc]
	bl _ZN7CFileIO10readDirectEPKcPPvP9Allocatorlmih
	b _02048E28
_02048E00:
	ldr r1, [sp, #0x14]
	mov r0, r4
	str r1, [sp]
	ldr r2, [sp, #0x10]
	mov r1, r7
	stmib sp, {r2, r5}
	mov r3, r11
	add r2, r10, #0x1c
	str r5, [sp, #0xc]
	bl _ZN7CFileIO12readDeferredEPKcPPvP9Allocatorlmih
_02048E28:
	movs r5, r0
	mov r0, #0
	addeq sp, sp, #0x108
	streq r0, [r10, #0x24]
	streq r0, [r10, #0x28]
	subeq r0, r0, #1
	ldmeqfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
	ldr r0, [sp, #0x130]
	cmp r0, #0
	ldrne r1, [r10, #0x24]
	addne r0, sp, #0x20
	ldrne r2, [r0, r1, lsl #2]
	cmpne r2, #0
	beq _02048EA8
	add r4, sp, #0x48
	ldr r1, _02049020 ; =0x02090360
	mov r0, r4
	bl sprintf
	ldr r0, _02049018 ; =gFileIO
	mov r2, r4
	add r1, r10, #0x16c
	bl _ZN7CFileIO19convertPathToFileIDEP8FSFileIDPKc
	ldr r0, [sp, #0x130]
	add r2, sp, #0x14
	add r3, sp, #0x10
	mov r1, r9
	bl _ZN7Archive26PackHeaderGetOffsetAndSizeEPvmPlPm
	cmp r0, #0
	ldrne r0, [sp, #0x14]
	strne r0, [r10, #0x174]
	mvneq r0, #0
	streq r0, [r10, #0x174]
_02048EA8:
	add r4, sp, #0xc8
	mov r0, r10
	mov r1, r4
	bl _ZN23CSceneScriptFileContext17getScriptFileNameEPc
	ldr r1, _02049024 ; =0x02090374
	add r0, r10, #0x178
	bl STD_CopyString
	mov r1, r4
	add r0, r10, #0x178
	bl STD_ConcatenateString
	add r0, r10, #0x178
	bl STD_GetStringLength
	add r2, r10, #0x178
	sub r0, r0, #5
	ldr r1, _02049028 ; =0x02090388
	add r0, r2, r0
	bl STD_CopyString
	b _02049000
_02048EF0:
	add r5, sp, #0xc8
	mov r0, r10
	mov r1, r5
	bl _ZN23CSceneScriptFileContext17getScriptFileNameEPc
	add r6, sp, #0x88
	ldr r1, _0204902C ; =0x02090390
	mov r0, r6
	bl STD_CopyString
	mov r0, r6
	mov r1, r5
	bl STD_ConcatenateString
	ldr r5, _0204901C ; =gAllocator
	mov r1, #4
	mov r0, r5
	bl _ZN9Allocator12setNextArenaEi
	ldr r0, [sp, #0x134]
	cmp r0, #0
	ldr r0, [r5]
	beq _02048F70
	cmp r0, #0
	moveq r5, #0
	beq _02048FA4
	str r4, [sp]
	str r4, [sp, #4]
	mov r1, #1
	str r1, [sp, #8]
	mov r1, r6
	mov r3, r5
	add r2, r10, #0x1c
	str r8, [sp, #0xc]
	bl _ZN7CFileIO12readDeferredEPKcPPvP9Allocatorlmih
	b _02048FA0
_02048F70:
	cmp r0, #0
	moveq r5, #0
	beq _02048FA4
	str r4, [sp]
	str r4, [sp, #4]
	mov r1, #1
	str r1, [sp, #8]
	mov r1, r6
	mov r3, r5
	add r2, r10, #0x1c
	str r8, [sp, #0xc]
	bl _ZN7CFileIO10readDirectEPKcPPvP9Allocatorlmih
_02048FA0:
	mov r5, r0
_02048FA4:
	cmp r5, #0
	addeq sp, sp, #0x108
	streq r4, [r10, #0x24]
	streq r4, [r10, #0x28]
	subeq r0, r4, #1
	ldmeqfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
	ldr r1, _02049030 ; =0x020903A4
	add r0, r10, #0x178
	bl STD_CopyString
	add r1, sp, #0xc8
	add r0, r10, #0x178
	bl STD_ConcatenateString
	add r0, r10, #0x178
	bl STD_GetStringLength
	add r2, r10, #0x178
	sub r0, r0, #5
	ldr r1, _02049034 ; =0x020903B8
	add r0, r2, r0
	bl STD_CopyString
	ldr r0, _02049018 ; =gFileIO
	add r1, r10, #0x16c
	add r2, r10, #0x178
	bl _ZN7CFileIO19convertPathToFileIDEP8FSFileIDPKc
_02049000:
	mov r0, r5
	add sp, sp, #0x108
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_0204900C: .word unk_02090324
_02049010: .word unk_02090338
_02049014: .word unk_0209034C
_02049018: .word gFileIO
_0204901C: .word gAllocator
_02049020: .word unk_02090360
_02049024: .word unk_02090374
_02049028: .word unk_02090388
_0204902C: .word unk_02090390
_02049030: .word unk_020903A4
_02049034: .word unk_020903B8
	arm_func_end _ZN23CSceneScriptFileContext10openScriptEimPvS0_i

	arm_func_start _ZN23CSceneScriptFileContext10loadScriptEillPvS0_S0_ ; https://decomp.me/scratch/IOG88
_ZN23CSceneScriptFileContext10loadScriptEillPvS0_S0_: ; 0x02049038
	stmfd sp!, {r3, r4, r5, lr}
	sub sp, sp, #0x48
	mov r4, r0
	ldr r5, [r4, #0x1c]
	cmp r5, #0
	addne sp, sp, #0x48
	movne r0, #0
	ldmnefd sp!, {r3, r4, r5, pc}
	ldr r5, [sp, #0x60]
	str r2, [r4, #0x24]
	cmp r5, #0
	str r3, [r4, #0x28]
	strne r5, [r4, #0x1c]
	bne _0204909C
	ldr r5, [sp, #0x5c]
	mov r2, r3
	str r5, [sp]
	mov r5, #0
	ldr r3, [sp, #0x58]
	str r5, [sp, #4]
	bl _ZN23CSceneScriptFileContext10openScriptEimPvS0_i
	cmp r0, #0
	addlt sp, sp, #0x48
	sublt r0, r5, #1
	ldmltfd sp!, {r3, r4, r5, pc}
_0204909C:
	ldr r1, [r4, #0x1c]
	ldr r2, _02049124 ; =SSD_FileIdentifier
	add r0, r4, #4
	bl _ZN16CSceneScriptData8initFileEPvPKc
	cmp r0, #0
	bne _020490C0
	add r1, sp, #8
	mov r0, r4
	bl _ZN23CSceneScriptFileContext17getScriptFileNameEPc
_020490C0:
	mov r1, #0
	ldr r5, _02049128 ; =0x00003001
	str r1, [r4, #0x20]
_020490CC:
	mov r0, r4
	bl _ZN23CSceneScriptFileContext4nextEP17ScriptInstruction
	movs r1, r0
	beq _020490F4
	ldrh r0, [r1, #4]
	cmp r0, r5
	ldreq r0, [r4, #0x20]
	addeq r0, r0, #1
	streq r0, [r4, #0x20]
	b _020490CC
_020490F4:
	mov r5, #0
	mov r1, r5
	add r0, r4, #0x2c
	mov r2, #0x40
	bl MI_CpuFill8
	mov r1, r5
	add r0, r4, #0x6c
	mov r2, #0x100
	bl MI_CpuFill8
	mov r0, #1
	add sp, sp, #0x48
	ldmfd sp!, {r3, r4, r5, pc}
_02049124: .word SSD_FileIdentifier
_02049128: .word 0x00003001
	arm_func_end _ZN23CSceneScriptFileContext10loadScriptEillPvS0_S0_

	arm_func_start _ZN23CSceneScriptFileContext5resetEv
_ZN23CSceneScriptFileContext5resetEv: ; 0x0204912C
	stmfd sp!, {r3, r4, r5, lr}
	mov r5, r0
	ldr r0, [r5, #0x1c]
	cmp r0, #0
	ldmeqfd sp!, {r3, r4, r5, pc}
	mov r4, #0
	mov r1, r4
	mov r2, r4
	add r0, r5, #4
	bl _ZN16CSceneScriptData8initFileEPvPKc
	ldr r1, [r5, #0x1c]
	ldr r0, _02049174 ; =gAllocator
	bl _ZN9Allocator10deallocateEPv
	str r4, [r5, #0x24]
	str r4, [r5, #0x28]
	str r4, [r5, #0x20]
	str r4, [r5, #0x1c]
	ldmfd sp!, {r3, r4, r5, pc}
_02049174: .word gAllocator
	arm_func_end _ZN23CSceneScriptFileContext5resetEv

	arm_func_start _ZN23CSceneScriptFileContext18compareTypeAndCodeEll
_ZN23CSceneScriptFileContext18compareTypeAndCodeEll: ; 0x02049178
	ldr r3, [r0, #0x24]
	cmp r3, r1
	ldreq r0, [r0, #0x28]
	cmpeq r0, r2
	moveq r0, #1
	movne r0, #0
	bx lr
	arm_func_end _ZN23CSceneScriptFileContext18compareTypeAndCodeEll

	arm_func_start _ZN23CSceneScriptFileContext14getTypeAndCodeEPlS0_
_ZN23CSceneScriptFileContext14getTypeAndCodeEPlS0_: ; 0x02049194
	cmp r1, #0
	ldrne r3, [r0, #0x24]
	strne r3, [r1]
	cmp r2, #0
	ldrne r0, [r0, #0x28]
	strne r0, [r2]
	bx lr
	arm_func_end _ZN23CSceneScriptFileContext14getTypeAndCodeEPlS0_

	arm_func_start _ZN23CSceneScriptFileContext12FUN_020491b0Ev ; https://decomp.me/scratch/BE2Ar
_ZN23CSceneScriptFileContext12FUN_020491b0Ev: ; 0x020491B0
	stmfd sp!, {r3, r4, r5, lr}
	sub sp, sp, #0x40
	mov r5, r0
	ldr r1, [r5, #0x1c]
	cmp r1, #0
	addeq sp, sp, #0x40
	moveq r0, #1
	ldmeqfd sp!, {r3, r4, r5, pc}
	ldr r0, [r5, #0x20]
	cmp r0, #0
	addne sp, sp, #0x40
	movne r0, #1
	ldmnefd sp!, {r3, r4, r5, pc}
	ldr r0, _02049270 ; =gAllocator
	ldr r0, [r0]
	cmp r0, #0
	mvneq r0, #0
	beq _020491FC
	bl _ZN7CFileIO11tryFinalizeEPv
_020491FC:
	cmp r0, #0
	addne sp, sp, #0x40
	movne r0, #0
	ldmnefd sp!, {r3, r4, r5, pc}
	ldr r1, [r5, #0x1c]
	ldr r2, _02049274 ; =SSD_FileIdentifier2
	add r0, r5, #4
	bl _ZN16CSceneScriptData8initFileEPvPKc
	cmp r0, #0
	bne _02049230
	add r1, sp, #0
	mov r0, r5
	bl _ZN23CSceneScriptFileContext17getScriptFileNameEPc
_02049230:
	mov r1, #0
	ldr r4, _02049278 ; =0x00003001
	str r1, [r5, #0x20]
_0204923C:
	mov r0, r5
	bl _ZN23CSceneScriptFileContext4nextEP17ScriptInstruction
	movs r1, r0
	beq _02049264
	ldrh r0, [r1, #4]
	cmp r0, r4
	ldreq r0, [r5, #0x20]
	addeq r0, r0, #1
	streq r0, [r5, #0x20]
	b _0204923C
_02049264:
	mov r0, #1
	add sp, sp, #0x40
	ldmfd sp!, {r3, r4, r5, pc}
_02049270: .word gAllocator
_02049274: .word SSD_FileIdentifier2
_02049278: .word 0x00003001
	arm_func_end _ZN23CSceneScriptFileContext12FUN_020491b0Ev

	arm_func_start _ZN23CSceneScriptFileContext17getScriptFileNameEPc ; https://decomp.me/scratch/XqqsL
_ZN23CSceneScriptFileContext17getScriptFileNameEPc: ; 0x0204927C
	stmfd sp!, {r3, lr}
	mov r2, r0
	ldr r0, [r2, #0x24]
	cmp r0, #4
	addls pc, pc, r0, lsl #2
	b _020492EC
_02049294: ; jump table
	b _020492EC ; case 0
	b _020492A8 ; case 1
	b _020492BC ; case 2
	b _020492CC ; case 3
	b _020492DC ; case 4
_020492A8:
	mov r0, r1
	ldr r2, [r2, #0x28]
	ldr r1, _020492FC ; =0x020903C8
_020492B4:
	bl sprintf
	b _020492F4
_020492BC:
	mov r0, r1
	ldr r2, [r2, #0x28]
	ldr r1, _02049300 ; =0x020903D8
	b _020492B4
_020492CC:
	mov r0, r1
	ldr r2, [r2, #0x28]
	ldr r1, _02049304 ; =0x020903E8
	b _020492B4
_020492DC:
	mov r0, r1
	ldr r2, [r2, #0x28]
	ldr r1, _02049308 ; =0x020903F8
	b _020492B4
_020492EC:
	mov r0, #0
	ldmfd sp!, {r3, pc}
_020492F4:
	mov r0, #1
	ldmfd sp!, {r3, pc}
_020492FC: .word unk_020903C8
_02049300: .word unk_020903D8
_02049304: .word unk_020903E8
_02049308: .word unk_020903F8
	arm_func_end _ZN23CSceneScriptFileContext17getScriptFileNameEPc

	arm_func_start _ZN23CSceneScriptFileContext19saveScriptFileStateEP21SScriptFileRecordData
_ZN23CSceneScriptFileContext19saveScriptFileStateEP21SScriptFileRecordData: ; 0x0204930C
	stmfd sp!, {r3, lr}
	mov r3, #0
	str r3, [r1, #4]
	str r3, [r1]
	ldr r2, [r0, #0x1c]
	cmp r2, #0
	moveq r0, r3
	ldmeqfd sp!, {r3, pc}
	ldr r3, [r0, #0x24]
	mov r2, #0x40
	str r3, [r1]
	ldr r3, [r0, #0x28]
	add r0, r0, #0x2c
	str r3, [r1, #4]
	add r1, r1, #8
	bl MI_CpuCopy8
	mov r0, #1
	ldmfd sp!, {r3, pc}
	arm_func_end _ZN23CSceneScriptFileContext19saveScriptFileStateEP21SScriptFileRecordData

	arm_func_start _ZN23CSceneScriptFileContext19loadScriptFileStateEiP21SScriptFileRecordDataPvS2_ ; https://decomp.me/scratch/9H8lL
_ZN23CSceneScriptFileContext19loadScriptFileStateEiP21SScriptFileRecordDataPvS2_: ; 0x02049354
	stmfd sp!, {r3, r4, r5, r6, lr}
	sub sp, sp, #0xc
	mov r5, r2
	ldr r2, [r5]
	mov r6, r0
	cmp r2, #0
	ldreq r0, [r5, #4]
	cmpeq r0, #0
	addeq sp, sp, #0xc
	moveq r0, #1
	ldmeqfd sp!, {r3, r4, r5, r6, pc}
	ldr r0, [sp, #0x20]
	str r3, [sp]
	str r0, [sp, #4]
	mov r4, #0
	str r4, [sp, #8]
	ldr r3, [r5, #4]
	mov r0, r6
	bl _ZN23CSceneScriptFileContext10loadScriptEillPvS0_S0_
	cmp r0, #0
	addeq sp, sp, #0xc
	moveq r0, r4
	ldmeqfd sp!, {r3, r4, r5, r6, pc}
	add r0, r5, #8
	add r1, r6, #0x2c
	mov r2, #0x40
	bl MI_CpuCopy8
	mov r1, r4
	add r0, r6, #0x6c
	mov r2, #0x100
	bl MI_CpuFill8
	mov r0, #1
	add sp, sp, #0xc
	ldmfd sp!, {r3, r4, r5, r6, pc}
	arm_func_end _ZN23CSceneScriptFileContext19loadScriptFileStateEiP21SScriptFileRecordDataPvS2_

	arm_func_start FUN_020493dc
FUN_020493dc: ; 0x020493DC
	cmp r1, #0x10
	movge r1, #0
	add r0, r0, #0x2c
	add r0, r0, r1, lsl #2
	bx lr
	arm_func_end FUN_020493dc

	arm_func_start _ZN23CSceneScriptFileContext4nextEP17ScriptInstruction
_ZN23CSceneScriptFileContext4nextEP17ScriptInstruction: ; 0x020493F0
	ldr r12, _020493FC ; =_ZN16CSceneScriptData4nextEP17ScriptInstruction
	add r0, r0, #4
	bx r12
_020493FC: .word _ZN16CSceneScriptData4nextEP17ScriptInstruction
	arm_func_end _ZN23CSceneScriptFileContext4nextEP17ScriptInstruction

	arm_func_start _ZN23CSceneScriptFileContext17findFunctionStartEP17ScriptInstructions
_ZN23CSceneScriptFileContext17findFunctionStartEP17ScriptInstructions: ; 0x02049400
	stmfd sp!, {r4, r5, r6, lr}
	mov r5, r0
	ldr r0, [r5, #0x1c]
	mov r4, r2
	cmp r0, #0
	moveq r0, #0
	ldmeqfd sp!, {r4, r5, r6, pc}
	ldr r6, _02049478 ; =0x00003001
_02049420:
	mov r0, r5
	bl _ZN23CSceneScriptFileContext4nextEP17ScriptInstruction
	movs r1, r0
	beq _02049470
	ldrh r0, [r1, #4]
	cmp r0, r6
	bne _02049420
	ldrb r0, [r1, #6]
	add r2, r0, #7
	mov r0, r2, asr #2
	add r0, r2, r0, lsr #29
	mov r0, r0, asr #3
	add r2, r1, r0, lsl #2
	ldr r0, [r2, #8]
	add r0, r5, r0
	ldrsb r0, [r0, #0x6c]
	cmp r0, #0
	ldreq r0, [r2, #0xc]
	cmpeq r4, r0
	bne _02049420
_02049470:
	mov r0, r1
	ldmfd sp!, {r4, r5, r6, pc}
_02049478: .word 0x00003001
	arm_func_end _ZN23CSceneScriptFileContext17findFunctionStartEP17ScriptInstructions

	.data
	.global unk_020902C8
unk_020902C8:
	.byte 0x00, 0x00, 0x00, 0x00
	.global unk_020902CC
unk_020902CC:
	.byte 0x00, 0x00, 0x00, 0x00
	.global unk_020902D0
unk_020902D0:
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.global unk_020902E8
unk_020902E8:
	.asciz "act.pkb"
	.balign 4, 0
	.global unk_020902F0
unk_020902F0:
	.asciz "eve.pkb"
	.balign 4, 0
	.global unk_020902F8
unk_020902F8:
	.asciz "mch.pkb"
	.balign 4, 0
	.global unk_02090300
unk_02090300:
	.asciz "help.pkb"
	.balign 4, 0
	.global unk_0209030C
unk_0209030C:
	.asciz "evet.pkb"
	.balign 4, 0
	.global unk_02090318
unk_02090318:
	.asciz "mcht.pkb"
	.balign 4, 0
	.global unk_02090324
unk_02090324:
	.word unk_020902C8
	.word unk_020902F0
	.word unk_020902F8
	.word unk_020902E8
	.word unk_02090300
	.global unk_02090338
unk_02090338:
	.word unk_020902CC
	.word unk_0209030C
	.word unk_02090318
	.byte 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00
	.global unk_0209034C
unk_0209034C:
	.asciz "/data_iz/script/"
	.balign 4, 0
	.global unk_02090360
unk_02090360:
	.asciz "/data_iz/script/%s"
	.balign 4, 0
	.global unk_02090374
unk_02090374:
	.asciz "/data_iz/script/"
	.balign 4, 0
	.global unk_02090388
unk_02090388:
	.asciz ".sst"
	.balign 4, 0
	.global unk_02090390
unk_02090390:
	.asciz "/data_iz/script/"
	.balign 4, 0
	.global unk_020903A4
unk_020903A4:
	.asciz "/data_iz/script/"
	.balign 4, 0
	.global unk_020903B8
unk_020903B8:
	.asciz ".sst"
	.balign 4, 0
	.global SSD_FileIdentifier
SSD_FileIdentifier:
	.asciz "SSD"
	.balign 4, 0
	.global SSD_FileIdentifier2
SSD_FileIdentifier2:
	.asciz "SSD"
	.balign 4, 0
	.global unk_020903C8
unk_020903C8:
	.asciz "eve%08d.ssd_"
	.balign 4, 0
	.global unk_020903D8
unk_020903D8:
	.asciz "mch%08d.ssd_"
	.balign 4, 0
	.global unk_020903E8
unk_020903E8:
	.asciz "act%06d.ssd_"
	.balign 4, 0
	.global unk_020903F8
unk_020903F8:
	.asciz "help%06d.ssd_"
	.balign 4, 0
