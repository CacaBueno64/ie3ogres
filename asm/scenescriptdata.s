
	.include "/macros/function.inc"
	.include "/include/scenescriptdata.inc"

	.text
	arm_func_start _ZN16CSceneScriptDataC1Ev
_ZN16CSceneScriptDataC1Ev: ; 0x0202FD38
	mov r1, #0
	str r1, [r0]
	bx lr
	arm_func_end _ZN16CSceneScriptDataC1Ev

	arm_func_start _ZN16CSceneScriptDataD1Ev
_ZN16CSceneScriptDataD1Ev: ; 0x0202FD44
	bx lr
	arm_func_end _ZN16CSceneScriptDataD1Ev

	arm_func_start _ZN16CSceneScriptData8initFileEPvPKc ; https://decomp.me/scratch/ShK79
_ZN16CSceneScriptData8initFileEPvPKc: ; 0x0202FD48
	stmfd sp!, {r4, lr}
	mov r4, r0
	cmp r1, #0
	str r1, [r4]
	moveq r0, #0
	ldmeqfd sp!, {r4, pc}
	cmp r2, #0
	beq _0202FD74
	mov r0, r1
	mov r1, r2
	bl STD_CompareString
_0202FD74:
	ldr lr, [r4]
	mov r0, #0x10000
	ldr r1, [lr, #4]
	rsb r0, r0, #0
	and r0, r1, r0
	cmp r0, #0x20000
	bne _0202FE80
	add r0, lr, #0x20
	sub r3, r0, #0x10
	mov r12, #0
	stmib r4, {r3, r12}
	ldrsh r0, [lr, #0xc]
	cmp r0, #0
	ble _0202FDD8
_0202FDAC:
	ldrsh r1, [r3, #2]
	ldr r2, [r4, #8]
	ldr r0, [r4]
	add r1, r2, r1
	str r1, [r4, #8]
	ldrsh r1, [r3, #2]
	ldrsh r0, [r0, #0xc]
	add r12, r12, #1
	add r3, r3, r1
	cmp r12, r0
	blt _0202FDAC
_0202FDD8:
	ldr r2, [r4, #4]
	ldr r1, [r4, #8]
	mov r3, #0
	add r0, r2, r1
	ldr r1, [r2, r1]
	add r0, r0, #4
	str r1, [r4, #0xc]
	str r0, [r4, #0x14]
	ldrb r12, [r0, #3]
	mov r1, r3
	str r12, [r4, #0x10]
	b _0202FE6C
_0202FE08:
	ldrsh lr, [r2]
	ldrsh r12, [r0]
	cmp lr, r12
	bne _0202FE60
_0202FE18:
	ldrb r12, [r0, #2]
	add lr, r0, #4
	add r1, r1, #1
	add r12, r2, r12, lsl #2
	str lr, [r12, #8]
	ldr r12, [r4, #0xc]
	cmp r1, r12
	bge _0202FE60
	ldrb r12, [r0, #3]
	ldr lr, [r4, #0x10]
	add r0, r0, r12
	ldrb r12, [r0, #3]
	add r12, lr, r12
	str r12, [r4, #0x10]
	ldrsh lr, [r2]
	ldrsh r12, [r0]
	cmp lr, r12
	beq _0202FE18
_0202FE60:
	ldrsh r12, [r2, #2]
	add r3, r3, #1
	add r2, r2, r12
_0202FE6C:
	ldr r12, [r4]
	ldrsh r12, [r12, #0xc]
	cmp r3, r12
	blt _0202FE08
	b _0202FF2C
_0202FE80:
	cmp r0, #0x30000
	bne _0202FF2C
	add r0, lr, #0x20
	str r0, [r4, #4]
	ldr r2, [lr, #0x10]
	mov r1, #0
	str r2, [r4, #8]
	ldrsh r12, [lr, #0xe]
	add r2, r0, r2
	mov r3, r1
	str r12, [r4, #0xc]
	ldr r12, [lr, #0x14]
	str r12, [r4, #0x10]
	str r2, [r4, #0x14]
	b _0202FF10
_0202FEBC:
	ldrsh lr, [r0]
	ldrsh r12, [r2]
	cmp lr, r12
	bne _0202FF04
_0202FECC:
	ldrb r12, [r2, #2]
	add lr, r2, #4
	add r3, r3, #1
	add r12, r0, r12, lsl #2
	str lr, [r12, #8]
	ldrb lr, [r2, #3]
	ldr r12, [r4, #0xc]
	cmp r3, r12
	add r2, r2, lr
	bge _0202FF04
	ldrsh lr, [r0]
	ldrsh r12, [r2]
	cmp lr, r12
	beq _0202FECC
_0202FF04:
	ldrsh r12, [r0, #2]
	add r1, r1, #1
	add r0, r0, r12
_0202FF10:
	ldr r12, [r4]
	ldrsh r12, [r12, #0xc]
	cmp r1, r12
	bge _0202FF2C
	ldr r12, [r4, #0xc]
	cmp r3, r12
	blt _0202FEBC
_0202FF2C:
	mov r0, #1
	ldmfd sp!, {r4, pc}
	arm_func_end _ZN16CSceneScriptData8initFileEPvPKc

	arm_func_start _ZN16CSceneScriptData4nextEP17ScriptInstruction ; https://decomp.me/scratch/IMXmx
_ZN16CSceneScriptData4nextEP17ScriptInstruction: ; 0x0202FF34
	cmp r1, #0
	ldreq r0, [r0, #4]
	bxeq lr
	ldrsh r12, [r1, #2]
	ldmia r0, {r2, r3}
	add r0, r1, r12
	ldr r1, [r2, #0x10]
	sub r2, r0, r3
	cmp r2, r1
	movhs r0, #0
	bx lr
	arm_func_end _ZN16CSceneScriptData4nextEP17ScriptInstruction

	arm_func_start FUN_0202ff60 ; https://decomp.me/scratch/VEJCn
FUN_0202ff60: ; 0x0202FF60
	ldr r2, [r0]
	ldr r0, [r0, #4]
	ldrsh r12, [r2, #0xc]
	mov r3, #0
	cmp r12, #0
	ble _0202FF98
_0202FF78:
	ldrsh r2, [r0, #4]
	cmp r2, r1
	beq _0202FF98
	ldrsh r2, [r0, #2]
	add r3, r3, #1
	cmp r3, r12
	add r0, r0, r2
	blt _0202FF78
_0202FF98:
	cmp r3, r12
	moveq r0, #0
	bx lr
	arm_func_end FUN_0202ff60
