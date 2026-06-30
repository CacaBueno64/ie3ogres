.public FUN_02051800
.public FUN_02051858
.public FUN_020519e4
.public FUN_02051a7c
.public FUN_02051d3c
.public FUN_02051dc4
.public FUN_02053cb0
.public FUN_02053ccc
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
.public FX_Sqrt
.public MI_CpuCopy8
.public MIi_CpuClearFast
.public NNS_G3dBindMdlPltt
.public NNS_G3dBindMdlTex
.public NNS_G3dGetTex
.public NNS_G3dPlttReleasePlttKey
.public NNS_G3dPlttSetPlttKey
.public NNS_G3dReleaseMdlPltt
.public NNS_G3dReleaseMdlTex
.public _ZN10CAllocator10deallocateEPv
.public _ZN10CAllocator8allocateEm
.public _ZdlPv
.public gAllocator
.public gNsbResourceMan
.public g3DVramMan

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

	arm_func_start FUN_ov16_021110fc
FUN_ov16_021110fc: ; 0x021110FC
	stmfd sp!, {r4, lr}
	ldr r1, _02111118 ; =0x02119E5C
	mov r4, r0
	str r1, [r4]
	bl FUN_ov16_02111164
	mov r0, r4
	ldmfd sp!, {r4, pc}
_02111118: .word ov16_02119E5C
	arm_func_end FUN_ov16_021110fc

	arm_func_start FUN_ov16_0211111c
FUN_ov16_0211111c: ; 0x0211111C
	stmfd sp!, {r4, lr}
	ldr r1, _02111138 ; =0x02119E5C
	mov r4, r0
	str r1, [r4]
	bl FUN_ov16_02111248
	mov r0, r4
	ldmfd sp!, {r4, pc}
_02111138: .word ov16_02119E5C
	arm_func_end FUN_ov16_0211111c

	arm_func_start FUN_ov16_0211113c
FUN_ov16_0211113c: ; 0x0211113C
	stmfd sp!, {r4, lr}
	ldr r1, _02111160 ; =0x02119E5C
	mov r4, r0
	str r1, [r4]
	bl FUN_ov16_02111248
	mov r0, r4
	bl _ZdlPv
	mov r0, r4
	ldmfd sp!, {r4, pc}
_02111160: .word ov16_02119E5C
	arm_func_end FUN_ov16_0211113c

	arm_func_start FUN_ov16_02111164
FUN_ov16_02111164: ; 0x02111164
	ldr r12, _02111178 ; =MIi_CpuClearFast
	add r1, r0, #4
	mov r0, #0
	mov r2, #0x18
	bx r12
_02111178: .word MIi_CpuClearFast
	arm_func_end FUN_ov16_02111164

	arm_func_start FUN_ov16_0211117c
FUN_ov16_0211117c: ; 0x0211117C
	stmfd sp!, {r4, r5, r6, lr}
	movs r4, r1
	mov r6, r0
	beq _021111A0
	ldr r0, _0211123C ; =gNsbResourceMan
	ldr r0, [r0]
	bl FUN_ov16_020fd278
	cmp r0, #0
	beq _021111A8
_021111A0:
	mov r0, #0
	ldmfd sp!, {r4, r5, r6, pc}
_021111A8:
	ldr r0, [r4, #4]
	bl FUN_02053ccc
	mov r5, r0
	ldr r0, [r4, #4]
	bl FUN_02053cb0
	mov r4, r0
	cmp r5, #0
	blt _021111D0
	cmp r4, #0
	bne _021111D8
_021111D0:
	mov r0, #0
	ldmfd sp!, {r4, r5, r6, pc}
_021111D8:
	mov r0, r6
	bl FUN_ov16_02111248
	ldr r0, _02111240 ; =g3DVramMan
	mov r2, r5
	ldr r0, [r0]
	add r1, r6, #8
	bl FUN_02051800
	cmp r0, #0
	beq _02111214
	ldr r0, _02111244 ; =gAllocator
	mov r1, r5
	bl _ZN10CAllocator8allocateEm
	movs r1, r0
	str r1, [r6, #0x14]
	bne _02111224
_02111214:
	mov r0, r6
	bl FUN_ov16_02111248
	mov r0, #0
	ldmfd sp!, {r4, r5, r6, pc}
_02111224:
	mov r0, r4
	mov r2, r5
	str r5, [r6, #0x18]
	bl MI_CpuCopy8
	mov r0, #1
	ldmfd sp!, {r4, r5, r6, pc}
_0211123C: .word gNsbResourceMan
_02111240: .word g3DVramMan
_02111244: .word gAllocator
	arm_func_end FUN_ov16_0211117c

	arm_func_start FUN_ov16_02111248
FUN_ov16_02111248: ; 0x02111248
	stmfd sp!, {r4, lr}
	mov r4, r0
	ldr r1, [r4, #0x14]
	cmp r1, #0
	beq _02111264
	ldr r0, _02111284 ; =gAllocator
	bl _ZN10CAllocator10deallocateEPv
_02111264:
	ldr r0, _02111288 ; =g3DVramMan
	add r1, r4, #8
	ldr r0, [r0]
	bl FUN_02051858
	mov r0, #0
	str r0, [r4, #0x14]
	str r0, [r4, #0x18]
	ldmfd sp!, {r4, pc}
_02111284: .word gAllocator
_02111288: .word g3DVramMan
	arm_func_end FUN_ov16_02111248

	arm_func_start FUN_ov16_0211128c
FUN_ov16_0211128c: ; 0x0211128C
	stmdb sp!, {lr}
	sub sp, sp, #0xc
	mov r12, r0
	ldr r2, [r12, #0x18]
	cmp r2, #0
	ble _021112B0
	ldr r0, [r12, #0x14]
	cmp r0, #0
	bne _021112BC
_021112B0:
	add sp, sp, #0xc
	mov r0, #0
	ldmia sp!, {pc}
_021112BC:
	cmp r1, #0
	beq _021112F4
	str r2, [sp]
	mov r2, #0
	str r2, [sp, #4]
	str r2, [sp, #8]
	ldr r0, _0211131C ; =g3DVramMan
	ldr r3, [r12, #0x14]
	ldr r0, [r0]
	add r1, r12, #8
	bl FUN_020519e4
	add sp, sp, #0xc
	and r0, r0, #0xff
	ldmia sp!, {pc}
_021112F4:
	ldr r0, _0211131C ; =g3DVramMan
	str r2, [sp]
	ldr r0, [r0]
	ldr r3, [r12, #0x14]
	add r1, r12, #8
	mov r2, #0
	bl FUN_02051a7c
	and r0, r0, #0xff
	add sp, sp, #0xc
	ldmia sp!, {pc}
_0211131C: .word g3DVramMan
	arm_func_end FUN_ov16_0211128c

	arm_func_start FUN_ov16_02111320
FUN_ov16_02111320: ; 0x02111320
	cmp r1, #0
	ldrne r2, [r0, #0x18]
	strne r2, [r1]
	ldr r0, [r0, #0x14]
	bx lr
	arm_func_end FUN_ov16_02111320

	arm_func_start FUN_ov16_02111334
FUN_ov16_02111334: ; 0x02111334
	cmp r1, #0
	ldrne r2, [r0, #0x18]
	strne r2, [r1]
	ldr r0, [r0, #0xc]
	bx lr
	arm_func_end FUN_ov16_02111334

	arm_func_start FUN_ov16_02111348
FUN_ov16_02111348: ; 0x02111348
	stmfd sp!, {r3, lr}
	ldr r1, _02111368 ; =g3DVramMan
	mov r2, r0
	ldr r0, [r1]
	add r1, r2, #8
	bl FUN_02051d3c
	and r0, r0, #0xff
	ldmfd sp!, {r3, pc}
_02111368: .word g3DVramMan
	arm_func_end FUN_ov16_02111348

	arm_func_start FUN_ov16_0211136c
FUN_ov16_0211136c: ; 0x0211136C
	stmfd sp!, {r4, lr}
	ldr r1, _02111394 ; =g3DVramMan
	mov r4, r0
	ldr r0, [r1]
	add r1, r4, #8
	bl FUN_02051dc4
	mov r0, r4
	mov r1, #0
	bl FUN_ov16_0211128c
	ldmfd sp!, {r4, pc}
_02111394: .word g3DVramMan
	arm_func_end FUN_ov16_0211136c

	arm_func_start FUN_ov16_02111398
FUN_ov16_02111398: ; 0x02111398
	stmfd sp!, {r4, r5, r6, lr}
	movs r6, r0
	mov r5, r1
	cmpne r5, #0
	moveq r0, #0
	ldmeqfd sp!, {r4, r5, r6, pc}
	bl NNS_G3dPlttReleasePlttKey
	mov r4, r0
	mov r0, r6
	mov r1, r5
	bl NNS_G3dPlttSetPlttKey
	mov r0, r4
	ldmfd sp!, {r4, r5, r6, pc}
	arm_func_end FUN_ov16_02111398

	.section .init, 4
	arm_func_start __sinit_CTexture.cpp
__sinit_CTexture.cpp: ; 0x02118250
	stmfd sp!, {r3, r4, r5, lr}
	mov r5, #0x2000
	mov r0, r5
	bl FX_Sqrt
	ldr r4, _02118298 ; =0x02119E3C
	str r0, [r4, #0x14]
	ldr r0, _0211829C ; =0x00009CCD
	bl FX_Sqrt
	mov r1, #0x800
	str r0, [r4, #0x10]
	ldr r0, _021182A0 ; =0x0000EA3C
	str r1, [r4, #0xc]
	str r0, [r4, #8]
	add r0, r5, #0x4e0000
	str r0, [r4, #4]
	add r0, r1, #0x840000
	str r0, [r4]
	ldmfd sp!, {r3, r4, r5, pc}
_02118298: .word ov16_02119E3C
_0211829C: .word 0x00009CCD
_021182A0: .word 0x0000EA3C
	arm_func_end __sinit_CTexture.cpp

	.section .ctor, 4
#pragma force_active on
	.word __sinit_CTexture.cpp


	.data
	.global ov16_02119E3C
ov16_02119E3C:
	.byte 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.global ov16_02119E5C
ov16_02119E5C:
	.word FUN_ov16_0211111c
	.word FUN_ov16_0211113c
