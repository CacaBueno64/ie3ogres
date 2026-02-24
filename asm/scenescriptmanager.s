
	.include "/macros/function.inc"
	.include "/include/scenescriptmanager.inc"

    .text
	arm_func_start FUN_02047a7c ; https://decomp.me/scratch/bY8Zx
FUN_02047a7c: ; 0x02047A7C
	stmfd sp!, {r3, r4, lr}
	sub sp, sp, #4
	ldr r12, _02047ACC ; =_ZN23CSceneScriptFileContextD1Ev
	ldr r3, _02047AD0 ; =_ZN23CSceneScriptFileContextC1Ev
	mov r1, #0x10
	mov r2, #0x1b8
	mov r4, r0
	str r12, [sp]
	bl __cxa_vec_ctor
	mov r2, #0
	mov r1, r2
_02047AA8:
	add r0, r4, r2, lsl #2
	add r0, r0, #0x1000
	add r2, r2, #1
	str r1, [r0, #0xb88]
	cmp r2, #8
	blt _02047AA8
	mov r0, r4
	add sp, sp, #4
	ldmfd sp!, {r3, r4, pc}
_02047ACC: .word _ZN23CSceneScriptFileContextD1Ev
_02047AD0: .word _ZN23CSceneScriptFileContextC1Ev
	arm_func_end FUN_02047a7c

	arm_func_start FUN_02047ad4
FUN_02047ad4: ; 0x02047AD4
	stmfd sp!, {r4, lr}
	ldr r3, _02047AF4 ; =_ZN23CSceneScriptFileContextD1Ev
	mov r1, #0x10
	mov r2, #0x1b8
	mov r4, r0
	bl __cxa_vec_cleanup
	mov r0, r4
	ldmfd sp!, {r4, pc}
_02047AF4: .word _ZN23CSceneScriptFileContextD1Ev
	arm_func_end FUN_02047ad4

	arm_func_start FUN_02047af8 ; https://decomp.me/scratch/Pj36Y
FUN_02047af8: ; 0x02047AF8
	stmfd sp!, {r4, r5, r6, lr}
	mov r4, r0
	mov r1, #0
	add r0, r4, #0x1000
	str r1, [r0, #0xbb8]
	mov r6, r1
_02047B10:
	add r0, r4, r1, lsl #2
	add r0, r0, #0x1000
	str r6, [r0, #0xccc]
	add r1, r1, #1
	str r6, [r0, #0xce4]
	cmp r1, #6
	blt _02047B10
	mov r5, #0x1b8
_02047B30:
	mla r0, r6, r5, r4
	mov r1, r4
	bl _ZN23CSceneScriptFileContext11linkManagerEP19CSceneScriptManager
	add r6, r6, #1
	cmp r6, #0x10
	blt _02047B30
	mov r6, #0
	mov r5, #0x2bc
_02047B50:
	mov r0, r5
	bl _Znwm
	cmp r0, #0
	beq _02047B64
	bl FUN_ov16_020fe4f4
_02047B64:
	add r1, r4, r6, lsl #2
	add r2, r1, #0x1000
	mov r1, r4
	str r0, [r2, #0xb88]
	bl FUN_ov16_020fe51c
	add r6, r6, #1
	cmp r6, #0xb
	blt _02047B50
	add r0, r4, #0x1fc
	mov r5, #0
	mov r1, r5
	add r0, r0, #0x1c00
	mov r2, #0xc
	bl MI_CpuFill8
	add r0, r4, #0x208
	mov r1, r5
	add r0, r0, #0x1c00
	mov r2, #0x84
	bl MI_CpuFill8
	add r1, r4, #0x1000
	mov r0, r4
	strb r5, [r1, #0xe8c]
	bl FUN_02047e30
	ldmfd sp!, {r4, r5, r6, pc}
	arm_func_end FUN_02047af8

	arm_func_start FUN_02047bc4 ; https://decomp.me/scratch/4xeSu
FUN_02047bc4: ; 0x02047BC4
	stmfd sp!, {r4, r5, r6, lr}
	mov r4, r0
	add r0, r4, #0xfc
	mov r6, #0
	mov r5, #0x100
	mov r1, r6
	mov r2, r5
	add r0, r0, #0x1c00
	bl MI_CpuFill8
	add r0, r4, #0x3bc
	mov r1, r6
	add r0, r0, #0x1800
	mov r2, #0x10
	bl MI_CpuFill8
	add r0, r4, #0x3cc
	mov r1, r6
	mov r2, r5
	add r0, r0, #0x1800
	bl MI_CpuFill8
	mov r6, #1
	mov r5, #0x1b8
_02047C18:
	mla r0, r6, r5, r4
	bl _ZN23CSceneScriptFileContext5resetEv
	add r6, r6, #1
	cmp r6, #0xb
	blt _02047C18
	ldmfd sp!, {r4, r5, r6, pc}
	arm_func_end FUN_02047bc4

	arm_func_start FUN_02047c30 ; https://decomp.me/scratch/PCkTT
FUN_02047c30: ; 0x02047C30
	stmfd sp!, {r3, r4, r5, lr}
	ldr r0, _02047C64 ; =gAllocator
	mov r2, #2
	mov r3, #1
	mov r5, r1
	bl _ZN9Allocator8allocateEmii
	movs r4, r0
	beq _02047C5C
	mov r2, r5
	mov r1, #0
	bl MI_CpuFill8
_02047C5C:
	mov r0, r4
	ldmfd sp!, {r3, r4, r5, pc}
_02047C64: .word gAllocator
	arm_func_end FUN_02047c30

	arm_func_start FUN_02047c68
FUN_02047c68: ; 0x02047C68
	ldr r0, _02047C74 ; =gAllocator
	ldr r12, _02047C78 ; =_ZN9Allocator10deallocateEPv
	bx r12
_02047C74: .word gAllocator
_02047C78: .word _ZN9Allocator10deallocateEPv
	arm_func_end FUN_02047c68

	arm_func_start FUN_02047c7c ; https://decomp.me/scratch/ODQcL
FUN_02047c7c: ; 0x02047C7C
	stmfd sp!, {r4, r5, r6, r7, r8, lr}
	mov r4, r0
	add r0, r4, #0xfc
	add r0, r0, #0x1c00
	mov r2, #0x100
	mov r5, r1
	bl MI_CpuCopy8
	add r0, r4, #0x1fc
	add r0, r0, #0x1c00
	add r1, r5, #0x580
	mov r2, #0xc
	bl MI_CpuCopy8
	add r7, r5, #0x100
	mov r8, #0
	mov r5, #0x1b8
	mov r6, #0x48
_02047CBC:
	mla r0, r8, r5, r4
	mla r1, r8, r6, r7
	bl _ZN23CSceneScriptFileContext19saveScriptFileStateEP21SScriptFileRecordData
	add r8, r8, #1
	cmp r8, #0x10
	blt _02047CBC
	mov r0, #1
	ldmfd sp!, {r4, r5, r6, r7, r8, pc}
	arm_func_end FUN_02047c7c

	arm_func_start FUN_02047cdc
FUN_02047cdc: ; 0x02047CDC
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, lr}
	sub sp, sp, #0x38
	mov r8, r0
	mov r7, r1
	add r1, r8, #0xfc
	mov r0, r7
	add r1, r1, #0x1c00
	mov r2, #0x100
	bl MI_CpuCopy8
	add r1, r8, #0x1fc
	add r0, r7, #0x580
	add r1, r1, #0x1c00
	mov r2, #0xc
	bl MI_CpuCopy8
	mov r6, #0
	add r11, r7, #0x100
	mov r10, r6
_02047D20:
	cmp r6, #0xd
	mov r0, #0x48
	bge _02047D70
	mul r9, r6, r0
	mov r0, #0x1b8
	mul r4, r6, r0
	add r0, r7, r9
	ldr r5, [r0, #0x100]
	add r0, r8, r4
	bl _ZN23CSceneScriptFileContext5resetEv
	add r0, r8, r5, lsl #2
	add r3, r0, #0x1000
	add r0, r8, r4
	ldr r4, [r3, #0xce4]
	add r2, r11, r9
	str r4, [sp]
	ldr r3, [r3, #0xccc]
	mov r1, r6
	bl _ZN23CSceneScriptFileContext19loadScriptFileStateEiP21SScriptFileRecordDataPvS2_
	b _02047E08
_02047D70:
	mla r0, r6, r0, r7
	ldr r4, [r0, #0x100]
	ldr r5, [r0, #0x104]
	cmp r4, #0
	sub r9, r6, #0xd
	bne _02047D90
	cmp r5, #0
	beq _02047E08
_02047D90:
	add r0, sp, #0xc
	mov r1, r10
	mov r2, #0x2c
	bl MI_CpuFill8
	add r2, r8, r9, lsl #2
	add r2, r2, #0x1000
	ldr r3, [r2, #0xdfc]
	mov r0, r8
	mov r1, r9
	add r2, sp, #0xc
	bl FUN_02048b4c
	movs r9, r0
	beq _02047E08
	add r0, r8, r4, lsl #2
	add r1, r0, #0x1000
	mov r0, #0x1b8
	str r6, [r9, #0x18]
	mov r2, r4
	ldr r4, [r1, #0xccc]
	mla r0, r6, r0, r8
	str r4, [sp]
	ldr r4, [r1, #0xce4]
	mov r3, r5
	mov r1, r6
	stmib sp, {r4, r10}
	bl _ZN23CSceneScriptFileContext10loadScriptEillPvS0_S0_
	cmp r0, #0
	movne r0, #0x2000
	strne r0, [r9, #0x1c]
	strne r10, [r9, #0xc]
_02047E08:
	add r6, r6, #1
	cmp r6, #0x10
	blt _02047D20
	mov r0, #1
	add sp, sp, #0x38
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
	arm_func_end FUN_02047cdc

	arm_func_start FUN_02047e20
FUN_02047e20: ; 0x02047E20
	add r0, r0, #0xfc
	add r0, r0, #0x1c00
	add r0, r0, r1, lsl #2
	bx lr
	arm_func_end FUN_02047e20

	arm_func_start FUN_02047e30 ; https://decomp.me/scratch/M3XwK
FUN_02047e30: ; 0x02047E30
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, lr}
	sub sp, sp, #0x78
	ldr r6, _02047F6C ; =0x02090278
	mov r9, r0
	ldmia r6!, {r0, r1, r2, r3}
	add r8, sp, #0x64
	mov r7, r8
	ldr r4, _02047F70 ; =0x0209028C
	stmia r8!, {r0, r1, r2, r3}
	ldmia r4!, {r0, r1, r2, r3}
	ldr r6, [r6]
	add r5, sp, #0x50
	str r6, [r8]
	mov r6, r5
	stmia r5!, {r0, r1, r2, r3}
	ldr r4, [r4]
	mov r8, #1
	str r4, [r5]
	ldr r4, _02047F74 ; =gAllocator
	mov r11, #0
	add r5, sp, #0x10
_02047E84:
	add r0, r9, r8, lsl #2
	add r10, r0, #0xcc
	add r0, r0, #0x1000
	ldr r0, [r0, #0xccc]
	cmp r0, #0
	bne _02047EE8
	ldr r1, _02047F78 ; =0x020902A0
	ldr r2, [r7, r8, lsl #2]
	mov r0, r5
	bl sprintf
	mov r0, r4
	mov r1, #4
	bl _ZN9Allocator12setNextArenaEi
	ldr r0, [r4]
	cmp r0, #0
	beq _02047EE8
	str r11, [sp]
	str r11, [sp, #4]
	str r11, [sp, #8]
	mov r1, #1
	str r1, [sp, #0xc]
	add r2, r10, #0x1c00
	mov r1, r5
	mov r3, r4
	bl _ZN7CFileIO10readDirectEPKcPPvP9Allocatorlmih
_02047EE8:
	add r0, r9, r8, lsl #2
	add r10, r0, #0xe4
	add r0, r0, #0x1000
	ldr r0, [r0, #0xce4]
	cmp r0, #0
	bne _02047F58
	ldr r2, [r6, r8, lsl #2]
	cmp r2, #0
	beq _02047F58
	ldr r1, _02047F7C ; =0x020902B4
	mov r0, r5
	bl sprintf
	mov r0, r4
	mov r1, #4
	bl _ZN9Allocator12setNextArenaEi
	ldr r0, [r4]
	cmp r0, #0
	beq _02047F58
	mov r1, #0
	str r1, [sp]
	str r1, [sp, #4]
	str r1, [sp, #8]
	mov r1, #1
	str r1, [sp, #0xc]
	add r2, r10, #0x1c00
	mov r1, r5
	mov r3, r4
	bl _ZN7CFileIO10readDirectEPKcPPvP9Allocatorlmih
_02047F58:
	add r8, r8, #1
	cmp r8, #4
	ble _02047E84
	add sp, sp, #0x78
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_02047F6C: .word unk_02090278
_02047F70: .word unk_0209028C
_02047F74: .word gAllocator
_02047F78: .word unk_020902A0
_02047F7C: .word unk_020902B4
	arm_func_end FUN_02047e30

	arm_func_start FUN_02047f80
FUN_02047f80: ; 0x02047F80
	mov r2, #0x1b8
	mla r0, r1, r2, r0
	bx lr
	arm_func_end FUN_02047f80

	arm_func_start FUN_02047f8c ; https://decomp.me/scratch/HBNFh
FUN_02047f8c: ; 0x02047F8C
	stmfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, lr}
	sub sp, sp, #0xc
	mov r10, r0
	mov r8, r2
	add r0, r10, r8, lsl #2
	add r0, r0, #0x1000
	ldr r5, [r0, #0xccc]
	mov r9, r1
	str r5, [sp]
	ldr r5, [r0, #0xce4]
	mov r4, #0x1b8
	mla r0, r9, r4, r10
	str r5, [sp, #4]
	mov r4, #0
	ldr r7, [sp, #0x30]
	mov r11, r3
	str r4, [sp, #8]
	bl _ZN23CSceneScriptFileContext10loadScriptEillPvS0_S0_
	cmp r0, #0
	addne sp, sp, #0xc
	movne r0, r9
	ldmnefd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
	cmp r7, #0
	addeq sp, sp, #0xc
	subeq r0, r4, #1
	ldmeqfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
	add r1, r10, r8, lsl #2
	add r0, r1, #0xe4
	add r1, r1, #0xcc
	add r4, r9, r7
	add r5, r0, #0x1c00
	add r6, r1, #0x1c00
	b _02048054
_02048010:
	mov r0, #0x1b8
	ldr r1, [r6]
	mla r0, r4, r0, r10
	str r1, [sp]
	ldr r2, [r5]
	mov r1, r9
	str r2, [sp, #4]
	mov r12, #0
	mov r2, r8
	mov r3, r11
	str r12, [sp, #8]
	bl _ZN23CSceneScriptFileContext10loadScriptEillPvS0_S0_
	cmp r0, #0
	addne sp, sp, #0xc
	movne r0, r4
	ldmnefd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
	add r4, r4, r7
_02048054:
	cmp r4, #0x10
	blo _02048010
	mvn r0, #0
	add sp, sp, #0xc
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
	arm_func_end FUN_02047f8c

	arm_func_start FUN_02048068 ; https://decomp.me/scratch/SZ9lv
FUN_02048068: ; 0x02048068
	stmfd sp!, {r4, r5, r6, r7, r8, r9, r10, lr}
	ldr r4, [sp, #0x20]
	mov r9, r0
	mov r8, r1
	mov r7, r2
	mov r6, r3
	cmp r4, #0
	mov r4, #0
	bne _020480C8
	mov r3, r4
	add r2, r8, #1
_02048094:
	add r0, r9, r3, lsl #4
	add r0, r0, #0x1000
	ldr r1, [r0, #0xbcc]
	cmp r2, r1
	bne _020480BC
	ldr r0, [r0, #0xbd4]
	cmp r6, r0
	moveq r0, #1
	movne r0, #0
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, pc}
_020480BC:
	add r3, r3, #1
	cmp r3, #0x10
	blt _02048094
_020480C8:
	mov r5, #0
	mov r10, #0x1b8
_020480D0:
	mla r0, r5, r10, r9
	mov r1, r7
	mov r2, r6
	bl _ZN23CSceneScriptFileContext18compareTypeAndCodeEll
	cmp r0, #0
	beq _02048120
	mov r6, #0
	add r2, r5, #1
_020480F0:
	add r3, r9, r6
	add r0, r3, #0x1b00
	ldrsb r1, [r0, #0xbc]
	add r0, r3, #0x3bc
	add r0, r0, #0x1800
	cmp r2, r1
	add r6, r6, #1
	streqb r4, [r0]
	cmp r6, #0x10
	blt _020480F0
	mov r0, #1
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, pc}
_02048120:
	add r5, r5, #1
	cmp r5, #0x10
	blt _020480D0
	mov r2, #0
_02048130:
	add r0, r9, r2, lsl #4
	add r0, r0, #0x1000
	ldr r1, [r0, #0xbcc]
	cmp r1, #0
	bne _02048164
	add r1, r8, #1
	str r1, [r0, #0xbcc]
	str r7, [r0, #0xbd0]
	ldr r1, [sp, #0x20]
	str r6, [r0, #0xbd4]
	str r1, [r0, #0xbd8]
	mov r0, #1
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, pc}
_02048164:
	add r2, r2, #1
	cmp r2, #0x10
	blt _02048130
	mov r0, #0
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, pc}
	arm_func_end FUN_02048068

	arm_func_start FUN_02048178 ; https://decomp.me/scratch/1Hepv
FUN_02048178: ; 0x02048178
	stmfd sp!, {r4, r5, r6, lr}
	mov r6, r0
	cmp r1, #0
	bge _020481B8
	mov r5, #0
	mov r4, #0x1b8
_02048190:
	mla r0, r5, r4, r6
	bl _ZN23CSceneScriptFileContext12FUN_020491b0Ev
	cmp r0, #0
	moveq r0, #0
	ldmeqfd sp!, {r4, r5, r6, pc}
	add r5, r5, #1
	cmp r5, #0x10
	blt _02048190
	mov r0, #1
	ldmfd sp!, {r4, r5, r6, pc}
_020481B8:
	mov r0, #0x1b8
	mla r0, r1, r0, r6
	bl _ZN23CSceneScriptFileContext12FUN_020491b0Ev
	ldmfd sp!, {r4, r5, r6, pc}
	arm_func_end FUN_02048178

	arm_func_start FUN_020481c8 ; https://decomp.me/scratch/eEim0
FUN_020481c8: ; 0x020481C8
	stmfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, lr}
	sub sp, sp, #0xc
	mov r10, r0
	mov r9, r1
	mov r0, #0x1b8
	mla r0, r9, r0, r10
	mov r7, r3
	mov r3, #0
	mov r4, #5
	mov r8, r2
	str r3, [sp]
	mov r2, r4
	stmib sp, {r3, r8}
	bl _ZN23CSceneScriptFileContext10loadScriptEillPvS0_S0_
	cmp r0, #0
	addne sp, sp, #0xc
	movne r0, r9
	ldmnefd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
	cmp r7, #0
	addeq sp, sp, #0xc
	subeq r0, r4, #6
	ldmeqfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
	mov r11, r4
	add r6, r9, r7
	mov r5, #0
	mov r4, #0x1b8
	b _02048264
_02048234:
	mla r0, r6, r4, r10
	str r5, [sp]
	mov r1, r9
	mov r2, r11
	mov r3, r5
	stmib sp, {r5, r8}
	bl _ZN23CSceneScriptFileContext10loadScriptEillPvS0_S0_
	cmp r0, #0
	addne sp, sp, #0xc
	movne r0, r6
	ldmnefd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
	add r6, r6, r7
_02048264:
	cmp r6, #0x10
	blo _02048234
	mvn r0, #0
	add sp, sp, #0xc
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
	arm_func_end FUN_020481c8

	arm_func_start FUN_02048278
FUN_02048278: ; 0x02048278
	stmfd sp!, {r3, lr}
	bl FUN_02047f80
	ldr r0, [r0, #0x28]
	ldmfd sp!, {r3, pc}
	arm_func_end FUN_02048278

	arm_func_start FUN_02048288 ; https://decomp.me/scratch/WYCnc
FUN_02048288: ; 0x02048288
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, lr}
	mov r8, r0
	mov r7, r1
	mov r0, #0x1b8
	mla r0, r7, r0, r8
	bl _ZN23CSceneScriptFileContext5resetEv
	ldr r0, _02048364 ; =0x02099E91
	ldrb r0, [r0]
	cmp r0, #0
	ldrne r0, _02048368 ; =0x02099E90
	ldrneb r1, [r0]
	cmpne r1, #0
	beq _020482FC
	mov r4, #0
	strb r4, [r0]
	add r0, r8, #0x1000
	ldr r1, [r0, #0xbb8]
	cmp r1, #0
	moveq r0, r4
	ldmeqfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
	ldr r0, [r0, #0xb90]
	bl FUN_ov16_020fe8b0
	add r0, r8, #0x1000
	ldr r0, [r0, #0xb90]
	bl FUN_ov16_020fe56c
	add r0, r8, #0x1000
	str r4, [r0, #0xbb8]
	mov r0, #1
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
_020482FC:
	add r0, r8, #0x208
	mov r5, #0
	add r4, r0, #0x1c00
	mov r9, #0x2c
_0204830C:
	mul r6, r5, r9
	add r0, r8, r6
	add r0, r0, #0x1000
	ldr r1, [r0, #0xe20]
	cmp r7, r1
	bne _02048350
	ldr r0, [r0, #0xe18]
	cmp r0, #0
	beq _02048350
	bl FUN_ov16_020fe8b0
	add r0, r8, r6
	add r0, r0, #0x1000
	ldr r0, [r0, #0xe18]
	bl FUN_ov16_020fe56c
	mov r0, r8
	add r1, r4, r6
	bl FUN_02048be4
_02048350:
	add r5, r5, #1
	cmp r5, #3
	blt _0204830C
	mov r0, #1
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
_02048364: .word unk_02099E91
_02048368: .word unk_02099E90
	arm_func_end FUN_02048288

	arm_func_start FUN_0204836c ; https://decomp.me/scratch/73s5D
FUN_0204836c: ; 0x0204836C
	stmfd sp!, {r3, lr}
	add r2, r1, #1
	mov r2, r2, lsl #0x18
	mov r12, #0
	mov r3, r2, asr #0x18
_02048380:
	add r2, r0, r12
	add r2, r2, #0x1b00
	ldrsb r2, [r2, #0xbc]
	cmp r3, r2
	moveq r0, #1
	ldmeqfd sp!, {r3, pc}
	add r12, r12, #1
	cmp r12, #0x10
	blt _02048380
	mov lr, #0
_020483A8:
	add r12, r0, lr
	add r2, r12, #0x1b00
	ldrsb r3, [r2, #0xbc]
	add r2, r12, #0x3bc
	add r2, r2, #0x1800
	cmp r3, #0
	addeq r0, r1, #1
	streqb r0, [r2]
	moveq r0, #1
	ldmeqfd sp!, {r3, pc}
	add lr, lr, #1
	cmp lr, #0x10
	blt _020483A8
	mov r0, #0
	ldmfd sp!, {r3, pc}
	arm_func_end FUN_0204836c

	arm_func_start FUN_020483e4 ; https://decomp.me/scratch/IActn
FUN_020483e4: ; 0x020483E4
	stmfd sp!, {r4, r5, r6, r7, r8, lr}
	mov r4, r2
	mov r6, r0
	mov r5, r1
	mov r2, #0
_020483F8:
	add r0, r6, r2, lsl #4
	add r0, r0, #0x1000
	ldr r1, [r0, #0xbcc]
	cmp r1, #0
	beq _0204842C
	ldr r1, [r0, #0xbd0]
	cmp r5, r1
	ldreq r1, [r0, #0xbd4]
	cmpeq r4, r1
	moveq r1, #0
	streq r1, [r0, #0xbcc]
	moveq r0, #1
	ldmeqfd sp!, {r4, r5, r6, r7, r8, pc}
_0204842C:
	add r2, r2, #1
	cmp r2, #0x10
	blt _020483F8
	mov r8, #0
	mov r7, #0x1b8
_02048440:
	mla r0, r8, r7, r6
	mov r1, r5
	mov r2, r4
	bl _ZN23CSceneScriptFileContext18compareTypeAndCodeEll
	cmp r0, #0
	beq _02048468
	mov r0, r6
	mov r1, r8
	bl FUN_0204836c
	ldmfd sp!, {r4, r5, r6, r7, r8, pc}
_02048468:
	add r8, r8, #1
	cmp r8, #0x10
	blt _02048440
	mov r0, #0
	ldmfd sp!, {r4, r5, r6, r7, r8, pc}
	arm_func_end FUN_020483e4

	arm_func_start FUN_0204847c
FUN_0204847c: ; 0x0204847C
	stmfd sp!, {r4, r5, r6, lr}
	mov r6, r0
	mov r5, #1
	mov r4, #0x1b8
_0204848C:
	mla r0, r5, r4, r6
	bl _ZN23CSceneScriptFileContext5resetEv
	add r5, r5, #1
	cmp r5, #0xb
	blt _0204848C
	ldmfd sp!, {r4, r5, r6, pc}
	arm_func_end FUN_0204847c

	arm_func_start FUN_020484a4 ; https://decomp.me/scratch/pP8lN
FUN_020484a4: ; 0x020484A4
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	ldr r4, _02048504 ; =gAllocator
	mov r7, r0
	mov r6, #1
	mvn r5, #0
_020484B8:
	add r0, r7, r6, lsl #2
	add r0, r0, #0x1000
	ldr r1, [r0, #0xccc]
	cmp r1, #0
	beq _020484E8
	ldr r0, [r4]
	cmp r0, #0
	moveq r0, r5
	beq _020484E0
	bl _ZN7CFileIO11tryFinalizeEPv
_020484E0:
	cmp r0, #0
	bgt _020484F4
_020484E8:
	add r6, r6, #1
	cmp r6, #6
	blt _020484B8
_020484F4:
	mov r0, #0
	cmp r6, #6
	moveq r0, #1
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_02048504: .word gAllocator
	arm_func_end FUN_020484a4

	arm_func_start FUN_02048508
FUN_02048508: ; 0x02048508
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	mov r7, r0
	mov r5, #0
	mov r4, #0x1b8
_02048518:
	add r0, r7, r5
	add r0, r0, #0x1b00
	ldrsb r0, [r0, #0xbc]
	cmp r0, #0
	beq _02048538
	sub r1, r0, #1
	mla r0, r1, r4, r7
	bl _ZN23CSceneScriptFileContext5resetEv
_02048538:
	add r5, r5, #1
	cmp r5, #0x10
	blt _02048518
	add r0, r7, #0x3bc
	mov r5, #0
	mov r1, r5
	add r0, r0, #0x1800
	mov r2, #0x10
	bl MI_CpuFill8
	mov r6, r5
	mov r4, #1
_02048564:
	add r0, r7, r6, lsl #4
	add r1, r0, #0x1000
	ldr r12, [r1, #0xbcc]
	cmp r12, #0
	beq _020485A8
	ldr r2, [r1, #0xbd8]
	mov r0, r7
	str r2, [sp]
	ldr r2, [r1, #0xbd0]
	ldr r3, [r1, #0xbd4]
	sub r1, r12, #1
	bl FUN_02047f8c
	add r0, r7, r6, lsl #4
	add r0, r0, #0x1000
	ldr r0, [r0, #0xbcc]
	sub r0, r0, #1
	orr r5, r5, r4, lsl r0
_020485A8:
	add r6, r6, #1
	cmp r6, #0x10
	blt _02048564
	add r0, r7, #0x3cc
	add r0, r0, #0x1800
	mov r1, #0
	mov r2, #0x100
	bl MI_CpuFill8
	mov r0, r5
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
	arm_func_end FUN_02048508

	arm_func_start FUN_020485d0 ; https://decomp.me/scratch/gFpaQ
FUN_020485d0: ; 0x020485D0
	stmfd sp!, {r4, r5, r6, lr}
	mov r5, r0
	cmp r1, #0
	addge r0, r5, r1, lsl #2
	addge r0, r0, #0x1000
	mov r4, r2
	ldrge r0, [r0, #0xb88]
	ldmgefd sp!, {r4, r5, r6, pc}
	cmp r4, #0xd
	bge _02048634
	mov r6, #0
_020485FC:
	add r0, r5, r6, lsl #2
	add r0, r0, #0x1000
	ldr r0, [r0, #0xb88]
	mov r1, r4
	bl FUN_ov16_020fe530
	cmp r0, #0
	addne r0, r5, r6, lsl #2
	addne r0, r0, #0x1000
	ldrne r0, [r0, #0xb88]
	ldmnefd sp!, {r4, r5, r6, pc}
	add r6, r6, #1
	cmp r6, #8
	blt _020485FC
	b _0204866C
_02048634:
	mov r6, #8
_02048638:
	add r0, r5, r6, lsl #2
	add r0, r0, #0x1000
	ldr r0, [r0, #0xb88]
	mov r1, r4
	bl FUN_ov16_020fe530
	cmp r0, #0
	addne r0, r5, r6, lsl #2
	addne r0, r0, #0x1000
	ldrne r0, [r0, #0xb88]
	ldmnefd sp!, {r4, r5, r6, pc}
	add r6, r6, #1
	cmp r6, #0xb
	blt _02048638
_0204866C:
	mov r0, #0
	ldmfd sp!, {r4, r5, r6, pc}
	arm_func_end FUN_020485d0

	arm_func_start FUN_02048674 ; https://decomp.me/scratch/wcJef
FUN_02048674: ; 0x02048674
	stmfd sp!, {r4, r5, r6, r7, r8, r9, r10, lr}
	mov r8, r1
	mvn r1, #0
	ldr r5, [sp, #0x20]
	mov r9, r0
	mov r7, r2
	mov r6, r3
	bl FUN_020485d0
	movs r4, r0
	moveq r0, #0
	ldmeqfd sp!, {r4, r5, r6, r7, r8, r9, r10, pc}
	mov r0, #0x1b8
	mul r10, r7, r0
_020486A8:
	mov r1, r8
	mov r2, r6
	add r0, r9, r10
	bl _ZN23CSceneScriptFileContext17findFunctionStartEP17ScriptInstructions
	movs r8, r0
	beq _020486D8
	mov r0, r4
	mov r1, r8
	mov r2, r5
	bl FUN_ov16_020fe584
	cmp r0, #0
	beq _020486A8
_020486D8:
	cmp r4, #0
	beq _020486E8
	mov r0, r4
	bl FUN_ov16_020fe56c
_020486E8:
	mov r0, r8
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, pc}
	arm_func_end FUN_02048674

	arm_func_start FUN_020486f0 ; https://decomp.me/scratch/nlqV3
FUN_020486f0: ; 0x020486F0
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	mov r7, r0
	add r12, r7, #0x1000
	ldr r4, [r12, #0xbb8]
	mov r6, r1
	cmp r4, #0
	mov r5, r3
	movne r0, #0
	ldmnefd sp!, {r3, r4, r5, r6, r7, pc}
	mvn r1, #0
	bl FUN_020485d0
	movs r4, r0
	moveq r0, #0
	ldmeqfd sp!, {r3, r4, r5, r6, r7, pc}
	ldr r3, [sp, #0x18]
	mov r1, r6
	mov r2, r5
	bl FUN_ov16_020fe6e8
	add r0, r7, #0x1000
	str r4, [r0, #0xbb8]
	mov r0, #1
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
	arm_func_end FUN_020486f0

	arm_func_start FUN_02048748 ; https://decomp.me/scratch/g27Q4
FUN_02048748: ; 0x02048748
	stmfd sp!, {r4, r5, r6, r7, r8, r9, lr}
	sub sp, sp, #0x14
	mov r4, r0
	add r0, r4, #0x1000
	mov r6, #0
	str r6, [r0, #0xe90]
	b _020489CC
_02048764:
	add r1, r4, #0x1000
	ldr r7, [r1, #0xe90]
	mov r5, #0x2c
	mla r0, r7, r5, r4
	add r0, r0, #0x1000
	ldr r2, [r0, #0xe18]
	cmp r2, #0
	bne _0204889C
	ldr r0, [r0, #0xe20]
	cmp r0, #0
	ldrne r0, [r1, #0xb84]
	cmpne r0, #0
	ldrne r1, [r1, #0xb80]
	cmpne r1, #0
	beq _020489BC
	bl _ZN14CScreenManager14getCurSceneSubEv
	cmp r0, #0x83
	bne _020489BC
	ldr r0, _020489FC ; =0x0208C438
	ldr r5, _02048A00 ; =0x0209A160
	add r3, sp, #8
	ldmia r0, {r0, r1, r2}
	stmia r3, {r0, r1, r2}
	ldr r1, [r5]
	ldrsh r0, [r5, #4]
	str r1, [sp, #8]
	bl abs
	ldrsh r1, [r5, #6]
	rsb r1, r1, #0x100
	cmp r1, r0
	bne _020489BC
	ldr r1, [sp, #8]
	ldr r0, [sp, #0xc]
	cmp r1, r0
	beq _020487FC
	ldr r0, [sp, #0x10]
	cmp r1, r0
	bne _020489BC
_020487FC:
	mov r8, #0x2c
	mla r0, r7, r8, r4
	add r0, r0, #0x1000
	ldr r1, [r0, #0xe20]
	mov r0, r4
	bl FUN_02048178
	cmp r0, #0
	beq _020489BC
	mla r0, r7, r8, r4
	add r5, sp, #4
	str r6, [sp, #4]
	str r5, [sp]
	add r0, r0, #0x1000
	ldr r1, [r0, #0xe14]
	ldr r2, [r0, #0xe20]
	ldr r3, [r0, #0xe24]
	mov r0, r4
	bl FUN_02048674
	mla r1, r7, r8, r4
	add r1, r1, #0x1000
	str r0, [r1, #0xe14]
	cmp r0, #0
	bne _02048868
	ldr r1, [r1, #0xe20]
	mov r0, r4
	bl FUN_02048288
	b _020489BC
_02048868:
	ldr r2, [r1, #0xe20]
	mov r0, r4
	sub r1, r6, #1
	bl FUN_020485d0
	mla r1, r7, r8, r4
	add r2, r1, #0x1000
	str r0, [r2, #0xe18]
	add r1, r4, #0x1000
	ldr r1, [r1, #0xb80]
	ldr r2, [r2, #0xe14]
	mov r3, r5
	bl FUN_ov16_020fe6e8
	b _020489BC
_0204889C:
	bl _Z14GetCurrentModev
	cmp r0, #3
	bne _020489BC
	mla r0, r7, r5, r4
	add r0, r0, #0x1000
	ldr r0, [r0, #0xe18]
	bl FUN_ov16_020fe92c
	cmp r0, #0
	bne _020489BC
	add r0, r4, r7, lsl #2
	add r1, r0, #0x1000
	ldr r0, [r1, #0xdfc]
	cmp r0, #0
	beq _020489BC
	add r0, r4, #0x1fc
	add r2, r0, #0x1c00
	ldr r0, [r2, r7, lsl #2]
	subs r0, r0, #1
	str r0, [r2, r7, lsl #2]
	bne _02048938
	mla r0, r7, r5, r4
	add r0, r0, #0x1000
	ldr r0, [r0, #0xe18]
	bl FUN_ov16_020fe8b0
	mla r0, r7, r5, r4
	add r0, r0, #0x1000
	ldr r0, [r0, #0xe18]
	bl FUN_ov16_020fe56c
	mla r0, r7, r5, r4
	add r0, r0, #0x1000
	ldr r1, [r0, #0xe20]
	mov r0, r4
	bl FUN_02048288
	add r0, r4, #0x208
	add r0, r0, #0x1c00
	mla r1, r7, r5, r0
	mov r0, r4
	bl FUN_02048be4
	b _020489BC
_02048938:
	ldr r0, [r1, #0xdfc]
	cmp r0, #0
	sublt r0, r5, #0x2d
	mov r5, #0x2c
	strlt r0, [r1, #0xdfc]
	mla r0, r7, r5, r4
	add r0, r0, #0x1000
	ldr r0, [r0, #0xe18]
	bl FUN_ov16_020fe9ac
	mla r1, r7, r5, r4
	add r1, r1, #0x1000
	mov r8, r0
	ldr r0, [r1, #0xe18]
	bl FUN_ov16_020fe9a4
	mla r1, r7, r5, r4
	mov r9, r0
	add r0, r1, #0x1000
	ldr r0, [r0, #0xe18]
	mov r1, r9
	bl FUN_ov16_020fe9b4
	mla r0, r7, r5, r4
	add r0, r0, #0x1000
	ldr r0, [r0, #0xe18]
	mov r1, #1
	bl FUN_ov16_020fe9bc
	mov r0, #0
	b _020489B4
_020489A4:
	strb r6, [r9, #0xb]
	strb r6, [r9, #0xa]
	add r9, r9, #0x2c
	add r0, r0, #1
_020489B4:
	cmp r0, r8
	blt _020489A4
_020489BC:
	add r0, r4, #0x1000
	ldr r1, [r0, #0xe90]
	add r1, r1, #1
	str r1, [r0, #0xe90]
_020489CC:
	add r0, r4, #0x1000
	ldr r1, [r0, #0xe90]
	cmp r1, #3
	blt _02048764
	ldr r0, [r0, #0xbb8]
	cmp r0, #0
	addeq sp, sp, #0x14
	moveq r0, #0
	ldmeqfd sp!, {r4, r5, r6, r7, r8, r9, pc}
	bl FUN_ov16_020fe92c
	add sp, sp, #0x14
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, pc}
_020489FC: .word unk_0208C438
_02048A00: .word gScreenFades
	arm_func_end FUN_02048748

	arm_func_start FUN_02048a04
FUN_02048a04: ; 0x02048A04
	stmfd sp!, {r3, r4, r5, lr}
	mov r5, r0
	add r0, r5, #0x1000
	ldr r0, [r0, #0xbb8]
	cmp r0, #0
	ldmeqfd sp!, {r3, r4, r5, pc}
	mov r4, #0
_02048A20:
	add r0, r5, r4, lsl #2
	add r0, r0, #0x1000
	ldr r0, [r0, #0xb88]
	bl FUN_ov16_020fe8b0
	add r4, r4, #1
	cmp r4, #8
	blt _02048A20
	add r0, r5, #0x1000
	mov r1, #0
	str r1, [r0, #0xbb8]
	ldmfd sp!, {r3, r4, r5, pc}
	arm_func_end FUN_02048a04

	arm_func_start FUN_02048a4c
FUN_02048a4c: ; 0x02048A4C
	stmfd sp!, {r3, lr}
	add r0, r0, #0x1000
	ldr r0, [r0, #0xbb8]
	cmp r0, #0
	ldmeqfd sp!, {r3, pc}
	bl FUN_ov16_020fe904
	ldmfd sp!, {r3, pc}
	arm_func_end FUN_02048a4c

	arm_func_start FUN_02048a68
FUN_02048a68: ; 0x02048A68
	stmfd sp!, {r3, lr}
	add r0, r0, #0x1000
	ldr r0, [r0, #0xbb8]
	cmp r0, #0
	ldmeqfd sp!, {r3, pc}
	bl FUN_ov16_020fe918
	ldr r0, _02048A90 ; =gAudioPlayer
	mov r1, #0x64
	bl _ZN11AudioPlayer14stopAllEffectsEm
	ldmfd sp!, {r3, pc}
_02048A90: .word gAudioPlayer
	arm_func_end FUN_02048a68

	arm_func_start FUN_02048a94
FUN_02048a94: ; 0x02048A94
	add r0, r0, #0x1000
	str r1, [r0, #0xb84]
	bx lr
	arm_func_end FUN_02048a94

	arm_func_start FUN_02048aa0
FUN_02048aa0: ; 0x02048AA0
	add r0, r0, #0x1000
	str r1, [r0, #0xb80]
	bx lr
	arm_func_end FUN_02048aa0

	arm_func_start FUN_02048aac
FUN_02048aac: ; 0x02048AAC
	stmfd sp!, {r3, r4, r5, lr}
	mov r2, #0x2c
	mul r4, r1, r2
	mov r5, r0
	add r0, r5, r4
	add r0, r0, #0x1000
	ldr r0, [r0, #0xe18]
	cmp r0, #0
	beq _02048AF8
	bl FUN_ov16_020fe8b0
	add r0, r5, r4
	add r0, r0, #0x1000
	ldr r0, [r0, #0xe18]
	bl FUN_ov16_020fe56c
	add r0, r5, r4
	add r0, r0, #0x1000
	ldr r1, [r0, #0xe20]
	mov r0, r5
	bl FUN_02048288
_02048AF8:
	add r0, r5, #0x208
	add r1, r0, #0x1c00
	mov r0, r5
	add r1, r1, r4
	bl FUN_02048be4
	ldmfd sp!, {r3, r4, r5, pc}
	arm_func_end FUN_02048aac

	arm_func_start FUN_02048b10
FUN_02048b10: ; 0x02048B10
	cmp r1, #0
	mov r3, #0
	blt _02048B44
	cmp r1, #3
	bge _02048B44
	add r3, r0, #0x208
	add r12, r3, #0x1c00
	mov r3, #0x2c
	add r0, r0, r1, lsl #2
	add r0, r0, #0x1000
	ldr r0, [r0, #0xdfc]
	mla r3, r1, r3, r12
	str r0, [r2]
_02048B44:
	mov r0, r3
	bx lr
	arm_func_end FUN_02048b10

	arm_func_start FUN_02048b4c ; https://decomp.me/scratch/MtrUP
FUN_02048b4c: ; 0x02048B4C
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	movs r6, r1
	mov r7, r0
	mov r5, r2
	mov r4, r3
	mov r12, #0
	bmi _02048BDC
	cmp r6, #3
	bge _02048BDC
	bl FUN_02048aac
	mov r0, #0x2c
	mul r1, r6, r0
	add r0, r7, #0x208
	add r2, r0, #0x1c00
	ldr r0, [r5]
	add r12, r2, r1
	str r0, [r2, r1]
	ldr r1, [r5, #4]
	add r0, r7, r6, lsl #2
	str r1, [r12, #4]
	ldrsb r1, [r5, #8]
	add lr, r5, #0xc
	add r7, r12, #0xc
	strb r1, [r12, #8]
	ldrsb r1, [r5, #9]
	add r6, r0, #0x1000
	strb r1, [r12, #9]
	ldrsb r0, [r5, #0xa]
	strb r0, [r12, #0xa]
	ldrsb r0, [r5, #0xb]
	strb r0, [r12, #0xb]
	ldmia lr!, {r0, r1, r2, r3}
	stmia r7!, {r0, r1, r2, r3}
	ldmia lr, {r0, r1, r2, r3}
	stmia r7, {r0, r1, r2, r3}
	str r4, [r6, #0xdfc]
_02048BDC:
	mov r0, r12
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
	arm_func_end FUN_02048b4c

	arm_func_start FUN_02048be4
FUN_02048be4: ; 0x02048BE4
	stmfd sp!, {r3, lr}
	add r2, r0, #0x208
	add r3, r2, #0x1c00
	mov lr, #0
	mov r2, #0x2c
_02048BF8:
	mla r12, lr, r2, r3
	cmp r12, r1
	bne _02048C24
	add r1, r0, lr, lsl #2
	add r3, r1, #0x1000
	mov r1, #0
	mov r0, r12
	mov r2, #0x2c
	str r1, [r3, #0xdfc]
	bl MI_CpuFill8
	ldmfd sp!, {r3, pc}
_02048C24:
	add lr, lr, #1
	cmp lr, #3
	blt _02048BF8
	ldmfd sp!, {r3, pc}
	arm_func_end FUN_02048be4

	arm_func_start FUN_02048c34
FUN_02048c34: ; 0x02048C34
	add r0, r0, #0x1000
	ldr r0, [r0, #0xe90]
	bx lr
	arm_func_end FUN_02048c34

	arm_func_start FUN_02048c40
FUN_02048c40: ; 0x02048C40
	add r0, r0, #0x1000
	mov r1, #0
	strb r1, [r0, #0xe8c]
	bx lr
	arm_func_end FUN_02048c40

	arm_func_start FUN_02048c50
FUN_02048c50: ; 0x02048C50
	add r0, r0, #0x1000
	ldrb r0, [r0, #0xe8c]
	bx lr
	arm_func_end FUN_02048c50
