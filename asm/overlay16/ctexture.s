.public FUN_ov16_020fa638
.public FUN_ov16_020fcb70
.public FUN_ov16_020fcd08
.public FUN_ov16_020fcef8
.public FUN_ov16_020fd21c
.public FUN_ov16_020fd278
.public FUN_ov16_020fd350
.public FUN_ov16_020fd4cc
.public FUN_ov16_020fd564
.public FUN_ov16_020fd878
.public FUN_ov16_020fd8ec
.public FUN_ov16_02111164
.public FUN_ov16_0211117c
.public FUN_ov16_02111248
.public FUN_ov16_0211128c
.public FUN_ov16_02111320
.public FUN_ov16_02111334
.public FUN_ov16_02111348
.public FUN_ov16_0211136c
.public FUN_ov16_02111398
.public MI_CpuCopy8
.public MIi_CpuClearFast
.public NNS_G3dBindMdlPltt
.public NNS_G3dBindMdlTex
.public NNS_G3dGetTex
.public NNS_G3dReleaseMdlPltt
.public NNS_G3dReleaseMdlTex
.public _ZN10CAllocator10deallocateEPv
.public _ZN10CAllocator8allocateEm
.public gAllocator
.public gNsbResourceMan

	.include "/macros/function.inc"

	.text
	arm_func_start FUN_ov16_02110b80
FUN_ov16_02110b80: ; 0x02110B80
	stmfd sp!, {r3, r4, r5, lr}
	mov r5, r0
	mov r4, #0
	mov r0, r4
	add r1, r5, #4
	mov r2, #0xc
	bl MIi_CpuClearFast
	add r0, r5, #0x14
	str r4, [r5, #0x10]
	bl FUN_ov16_02111164
	mov r0, #1
	ldmfd sp!, {r3, r4, r5, pc}
	arm_func_end FUN_ov16_02110b80

	arm_func_start FUN_ov16_02110bb0
FUN_ov16_02110bb0: ; 0x02110BB0
	ldr r12, _02110BB8 ; =FUN_ov16_02110db4
	bx r12
_02110BB8: .word FUN_ov16_02110db4
	arm_func_end FUN_ov16_02110bb0

	arm_func_start FUN_ov16_02110bbc
FUN_ov16_02110bbc: ; 0x02110BBC
	stmfd sp!, {r3, r4, r5, lr}
	ldr r12, _02110BF8 ; =gNsbResourceMan
	str r3, [sp]
	mov r5, r0
	ldr r0, [r12]
	mov r3, #5
	bl FUN_ov16_020fcb70
	movs r4, r0
	moveq r0, #0
	ldmeqfd sp!, {r3, r4, r5, pc}
	mov r0, r5
	bl FUN_ov16_02110db4
	str r4, [r5, #4]
	mov r0, #1
	ldmfd sp!, {r3, r4, r5, pc}
_02110BF8: .word gNsbResourceMan
	arm_func_end FUN_ov16_02110bbc

	arm_func_start FUN_ov16_02110bfc
FUN_ov16_02110bfc: ; 0x02110BFC
	stmfd sp!, {r3, r4, r5, lr}
	sub sp, sp, #0x10
	ldr r4, [sp, #0x20]
	str r3, [sp]
	str r4, [sp, #4]
	ldrb r3, [sp, #0x24]
	ldrb r4, [sp, #0x28]
	mov r5, r0
	str r3, [sp, #8]
	ldr r3, _02110C60 ; =gNsbResourceMan
	str r4, [sp, #0xc]
	ldr r0, [r3]
	mov r3, r2
	mov r2, #5
	bl FUN_ov16_020fcd08
	movs r4, r0
	addeq sp, sp, #0x10
	moveq r0, #0
	ldmeqfd sp!, {r3, r4, r5, pc}
	mov r0, r5
	bl FUN_ov16_02110db4
	str r4, [r5, #4]
	mov r0, #1
	add sp, sp, #0x10
	ldmfd sp!, {r3, r4, r5, pc}
_02110C60: .word gNsbResourceMan
	arm_func_end FUN_ov16_02110bfc

	arm_func_start FUN_ov16_02110c64
FUN_ov16_02110c64: ; 0x02110C64
	stmfd sp!, {r3, r4, r5, lr}
	sub sp, sp, #0x10
	ldr r4, [sp, #0x20]
	str r3, [sp]
	str r4, [sp, #4]
	ldr r3, [sp, #0x24]
	ldrb r4, [sp, #0x28]
	str r3, [sp, #8]
	ldr r3, _02110CC4 ; =gNsbResourceMan
	str r4, [sp, #0xc]
	mov r5, r0
	ldr r0, [r3]
	mov r3, #5
	bl FUN_ov16_020fcef8
	movs r4, r0
	addeq sp, sp, #0x10
	moveq r0, #0
	ldmeqfd sp!, {r3, r4, r5, pc}
	mov r0, r5
	bl FUN_ov16_02110db4
	str r4, [r5, #4]
	mov r0, #1
	add sp, sp, #0x10
	ldmfd sp!, {r3, r4, r5, pc}
_02110CC4: .word gNsbResourceMan
	arm_func_end FUN_ov16_02110c64

	arm_func_start FUN_ov16_02110cc8
FUN_ov16_02110cc8: ; 0x02110CC8
	stmfd sp!, {r3, r4, r5, lr}
	mov r4, r1
	ldr r2, [r4, #4]
	mov r5, r0
	cmp r2, #0
	moveq r0, #0
	ldmeqfd sp!, {r3, r4, r5, pc}
	ldr r1, [r5, #4]
	cmp r2, r1
	moveq r0, #1
	ldmeqfd sp!, {r3, r4, r5, pc}
	bl FUN_ov16_02110db4
	ldr r0, _02110D14 ; =gNsbResourceMan
	ldr r1, [r4, #4]
	ldr r0, [r0]
	bl FUN_ov16_020fd21c
	str r0, [r5, #4]
	mov r0, #1
	ldmfd sp!, {r3, r4, r5, pc}
_02110D14: .word gNsbResourceMan
	arm_func_end FUN_ov16_02110cc8

	arm_func_start FUN_ov16_02110d18
FUN_ov16_02110d18: ; 0x02110D18
	stmfd sp!, {r4, lr}
	mov r4, r0
	bl FUN_ov16_02110f00
	cmp r0, #0
	movne r0, #0
	ldmnefd sp!, {r4, pc}
	ldr r0, [r4, #0xc]
	tst r0, #1
	movne r0, #1
	ldmnefd sp!, {r4, pc}
	ldr r0, _02110D6C ; =gNsbResourceMan
	ldr r1, [r4, #4]
	ldr r0, [r0]
	bl FUN_ov16_020fd4cc
	cmp r0, #0
	ldrne r1, [r4, #0xc]
	moveq r0, #0
	orrne r1, r1, #1
	movne r0, #1
	strne r1, [r4, #0xc]
	ldmfd sp!, {r4, pc}
_02110D6C: .word gNsbResourceMan
	arm_func_end FUN_ov16_02110d18

	arm_func_start FUN_ov16_02110d70
FUN_ov16_02110d70: ; 0x02110D70
	stmfd sp!, {r4, lr}
	mov r4, r0
	bl FUN_ov16_02110eb4
	ldr r0, [r4, #0xc]
	tst r0, #1
	beq _02110DA4
	ldr r0, _02110DB0 ; =gNsbResourceMan
	ldr r1, [r4, #4]
	ldr r0, [r0]
	bl FUN_ov16_020fd564
	ldr r0, [r4, #0xc]
	bic r0, r0, #1
	str r0, [r4, #0xc]
_02110DA4:
	add r0, r4, #0x14
	bl FUN_ov16_02111248
	ldmfd sp!, {r4, pc}
_02110DB0: .word gNsbResourceMan
	arm_func_end FUN_ov16_02110d70

	arm_func_start FUN_ov16_02110db4
FUN_ov16_02110db4: ; 0x02110DB4
	stmfd sp!, {r4, lr}
	mov r4, r0
	bl FUN_ov16_02110d70
	ldr r1, [r4, #4]
	cmp r1, #0
	beq _02110DD8
	ldr r0, _02110DEC ; =gNsbResourceMan
	ldr r0, [r0]
	bl FUN_ov16_020fd350
_02110DD8:
	add r1, r4, #4
	mov r0, #0
	mov r2, #0xc
	bl MIi_CpuClearFast
	ldmfd sp!, {r4, pc}
_02110DEC: .word gNsbResourceMan
	arm_func_end FUN_ov16_02110db4

	arm_func_start FUN_ov16_02110df0
FUN_ov16_02110df0: ; 0x02110DF0
	stmfd sp!, {r4, r5, r6, r7, r8, lr}
	mov r5, r0
	ldr r0, [r5, #4]
	mov r4, r1
	mov r6, #0
	cmp r0, #0
	moveq r0, r6
	ldmeqfd sp!, {r4, r5, r6, r7, r8, pc}
	mov r8, r6
	cmp r0, #0
	ldrne r8, [r0, #4]
	cmp r8, #0
	moveq r0, #0
	ldmeqfd sp!, {r4, r5, r6, r7, r8, pc}
	mov r0, r8
	bl NNS_G3dGetTex
	movs r7, r0
	moveq r0, #0
	ldmeqfd sp!, {r4, r5, r6, r7, r8, pc}
	add r0, r5, #0x14
	mov r1, #0
	bl FUN_ov16_02111334
	movs r1, r0
	beq _02110E68
	ldr r0, [r5, #0x10]
	cmp r0, #0
	bne _02110E68
	mov r0, r7
	bl FUN_ov16_02111398
	str r0, [r5, #0x10]
_02110E68:
	mov r0, r4
	bl FUN_ov16_020fa638
	mov r1, r7
	bl NNS_G3dBindMdlTex
	mov r0, r4
	bl FUN_ov16_020fa638
	mov r1, r7
	bl NNS_G3dBindMdlPltt
	ldr r0, [r5, #0x10]
	str r4, [r5, #8]
	cmp r0, #0
	beq _02110EAC
	mov r0, r8
	bl NNS_G3dGetTex
	ldr r1, [r5, #0x10]
	bl FUN_ov16_02111398
	str r6, [r5, #0x10]
_02110EAC:
	mov r0, #1
	ldmfd sp!, {r4, r5, r6, r7, r8, pc}
	arm_func_end FUN_ov16_02110df0

	arm_func_start FUN_ov16_02110eb4
FUN_ov16_02110eb4: ; 0x02110EB4
	stmfd sp!, {r4, lr}
	mov r4, r0
	ldr r0, [r4, #8]
	cmp r0, #0
	beq _02110EF4
	ldr r1, [r4, #4]
	cmp r1, #0
	moveq r1, #0
	ldrne r1, [r1, #4]
	cmp r1, #0
	ldmeqfd sp!, {r4, pc}
	bl FUN_ov16_020fa638
	bl NNS_G3dReleaseMdlTex
	ldr r0, [r4, #8]
	bl FUN_ov16_020fa638
	bl NNS_G3dReleaseMdlPltt
_02110EF4:
	mov r0, #0
	str r0, [r4, #8]
	ldmfd sp!, {r4, pc}
	arm_func_end FUN_ov16_02110eb4

	arm_func_start FUN_ov16_02110f00
FUN_ov16_02110f00: ; 0x02110F00
	ldr r1, _02110F18 ; =gNsbResourceMan
	mov r2, r0
	ldr r0, [r1]
	ldr r1, [r2, #4]
	ldr r12, _02110F1C ; =FUN_ov16_020fd278
	bx r12
_02110F18: .word gNsbResourceMan
_02110F1C: .word FUN_ov16_020fd278
	arm_func_end FUN_ov16_02110f00

	arm_func_start FUN_ov16_02110f20
FUN_ov16_02110f20: ; 0x02110F20
	stmfd sp!, {r3, lr}
	ldr r0, [r0, #4]
	mov r1, #0
	cmp r0, #0
	ldrne r1, [r0, #4]
	cmp r1, #0
	moveq r0, #0
	ldmeqfd sp!, {r3, pc}
	cmp r0, #0
	moveq r0, #0
	ldrne r0, [r0, #4]
	bl NNS_G3dGetTex
	ldmfd sp!, {r3, pc}
	arm_func_end FUN_ov16_02110f20

	arm_func_start FUN_ov16_02110f54
FUN_ov16_02110f54: ; 0x02110F54
	ldr r1, [r0, #4]
	cmp r1, #0
	moveq r0, #0
	bxeq lr
	ldr r0, [r0, #0xc]
	tst r0, #1
	movne r0, #1
	moveq r0, #0
	bx lr
	arm_func_end FUN_ov16_02110f54

	arm_func_start FUN_ov16_02110f78
FUN_ov16_02110f78: ; 0x02110F78
	stmfd sp!, {r3, r4, r5, lr}
	mov r5, r0
	bl FUN_ov16_02110f00
	cmp r0, #0
	movne r0, #0
	ldmnefd sp!, {r3, r4, r5, pc}
	ldr r0, [r5, #0xc]
	tst r0, #1
	movne r0, #1
	ldmnefd sp!, {r3, r4, r5, pc}
	ldr r0, _02110FF8 ; =gNsbResourceMan
	ldr r1, [r5, #4]
	ldr r0, [r0]
	bl FUN_ov16_020fd4cc
	cmp r0, #0
	moveq r0, #0
	ldmeqfd sp!, {r3, r4, r5, pc}
	ldr r1, [r5, #4]
	add r0, r5, #0x14
	bl FUN_ov16_0211117c
	cmp r0, #0
	moveq r0, #0
	ldmeqfd sp!, {r3, r4, r5, pc}
	mov r4, #1
	mov r0, r5
	mov r1, r4
	bl FUN_ov16_02111098
	ldr r1, [r5, #0xc]
	mov r0, r4
	orr r1, r1, #1
	str r1, [r5, #0xc]
	ldmfd sp!, {r3, r4, r5, pc}
_02110FF8: .word gNsbResourceMan
	arm_func_end FUN_ov16_02110f78

	arm_func_start FUN_ov16_02110ffc
FUN_ov16_02110ffc: ; 0x02110FFC
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, lr}
	mov r4, r0
	ldr r2, [r4, #4]
	ldrh r1, [r2, #0x10]
	tst r1, #2
	ldmnefd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
	ldr r9, [r2, #4]
	bl FUN_ov16_02110f20
	cmp r9, #0
	cmpne r0, #0
	ldmeqfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
	ldr r8, [r0, #0x14]
	sub r7, r0, r9
	ldr r6, _02111080 ; =gAllocator
	add r1, r8, r7
	mov r0, r6
	bl _ZN10CAllocator8allocateEm
	movs r5, r0
	ldmeqfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
	mov r0, r9
	mov r1, r5
	add r2, r8, r7
	bl MI_CpuCopy8
	ldr r2, [r4, #4]
	mov r0, r6
	mov r1, r9
	str r5, [r2, #4]
	bl _ZN10CAllocator10deallocateEPv
	ldr r1, [r4, #4]
	ldrh r0, [r1, #0x10]
	orr r0, r0, #2
	strh r0, [r1, #0x10]
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
_02111080: .word gAllocator
	arm_func_end FUN_ov16_02110ffc

	arm_func_start FUN_ov16_02111084
FUN_ov16_02111084: ; 0x02111084
	ldr r12, _02111094 ; =FUN_ov16_02111320
	add r0, r0, #0x14
	mov r1, #0
	bx r12
_02111094: .word FUN_ov16_02111320
	arm_func_end FUN_ov16_02111084

	arm_func_start FUN_ov16_02111098
FUN_ov16_02111098: ; 0x02111098
	ldr r12, _021110A8 ; =FUN_ov16_0211128c
	add r0, r0, #0x14
	and r1, r1, #0xff
	bx r12
_021110A8: .word FUN_ov16_0211128c
	arm_func_end FUN_ov16_02111098

	arm_func_start FUN_ov16_021110ac
FUN_ov16_021110ac: ; 0x021110AC
	stmfd sp!, {r4, lr}
	ldr r1, _021110D0 ; =gNsbResourceMan
	mov r4, r0
	ldr r0, [r1]
	ldr r1, [r4, #4]
	bl FUN_ov16_020fd878
	add r0, r4, #0x14
	bl FUN_ov16_02111348
	ldmfd sp!, {r4, pc}
_021110D0: .word gNsbResourceMan
	arm_func_end FUN_ov16_021110ac

	arm_func_start FUN_ov16_021110d4
FUN_ov16_021110d4: ; 0x021110D4
	stmfd sp!, {r4, lr}
	ldr r1, _021110F8 ; =gNsbResourceMan
	mov r4, r0
	ldr r0, [r1]
	ldr r1, [r4, #4]
	bl FUN_ov16_020fd8ec
	add r0, r4, #0x14
	bl FUN_ov16_0211136c
	ldmfd sp!, {r4, pc}
_021110F8: .word gNsbResourceMan
	arm_func_end FUN_ov16_021110d4
