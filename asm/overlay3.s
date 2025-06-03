
	.include "/macros/function.inc"
	.include "/global.inc"

	.text
	.org 0x020bcb40

	arm_func_start FUN_ov3_020bcb40
FUN_ov3_020bcb40: ; 0x020BCB40
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	ldr r2, [r0]
	mov r6, #2
	ldr r2, [r2, #0xc]
	mov r7, r0
	mov r1, r6
	blx r2
	mov r5, #0
	mov r0, r7
	str r5, [r7, #0x80]
	str r5, [r7, #0x84]
	bl FUN_02041b04
	mov r0, r7
	mov r1, r5
	mov r2, r5
	bl FUN_02041f74
	mov r4, #1
	mov r0, r7
	mov r1, r4
	mov r2, r5
	bl FUN_02041f74
	mov r2, r6
	mov r0, r7
	mov r1, r5
	bl FUN_02041eac
	mov r1, r4
	mov r0, r7
	mov r2, r5
	bl FUN_02041eac
	strb r5, [r7, #0x89]
	strb r5, [r7, #0x88]
	bl FUN_ov16_020f13d4
	mov r0, r7
	ldr r1, [r0]
	ldr r1, [r1, #0x34]
	blx r1
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
	arm_func_end FUN_ov3_020bcb40

	arm_func_start FUN_ov3_020bcbd4
FUN_ov3_020bcbd4: ; 0x020BCBD4
	stmfd sp!, {r4, lr}
	mov r4, r0
	ldr r0, [r4, #0x80]
	cmp r0, #0
	beq _020BCBF4
	ldr r1, [r0]
	ldr r1, [r1, #0x20]
	blx r1
_020BCBF4:
	ldr r0, [r4, #0x84]
	cmp r0, #0
	beq _020BCC0C
	ldr r1, [r0]
	ldr r1, [r1, #0x20]
	blx r1
_020BCC0C:
	mov r0, r4
	ldr r2, [r0]
	mov r1, #2
	ldr r2, [r2, #0x28]
	blx r2
	ldmfd sp!, {r4, pc}
	arm_func_end FUN_ov3_020bcbd4

	arm_func_start FUN_ov3_020bcc24
FUN_ov3_020bcc24: ; 0x020BCC24
	stmfd sp!, {r3, r4, r5, lr}
	ldr r1, _020BCDF0 ; =0x020BD440
	mov r5, r0
	ldr r2, [r1]
	tst r2, #1
	ldreq r0, _020BCDF4 ; =0x020BD300
	addeq r3, r5, #0x90
	orreq r2, r2, #1
	streq r3, [r0, #0x1c]
	mov r0, r5
	streq r2, [r1]
	bl FUN_0204201c
	mov r4, r0
	mov r0, r5
	bl FUN_02041fec
	cmp r4, r0
	bne _020BCC74
	ldrb r0, [r5, #4]
	cmp r0, #0
	beq _020BCD1C
_020BCC74:
	ldr r0, [r5, #0x80]
	cmp r0, #0
	beq _020BCC94
	ldr r1, [r0]
	ldr r1, [r1, #0x58]
	blx r1
	cmp r0, #0
	bne _020BCD1C
_020BCC94:
	ldr r0, [r5, #0x80]
	cmp r0, #0
	beq _020BCCBC
	ldr r1, [r0]
	ldr r1, [r1, #0x20]
	blx r1
	ldr r0, [r5, #0x80]
	ldr r1, [r0]
	ldr r1, [r1, #0x44]
	blx r1
_020BCCBC:
	mov r1, #0
	ldr r0, _020BCDF4 ; =0x020BD300
	str r1, [r5, #0x80]
	ldr r1, [r0, #0x18]
	ldr r0, _020BCDF8 ; =0x020BD318
	cmp r1, #0
	beq _020BCCF4
_020BCCD8:
	cmp r4, r1
	ldreq r0, [r0, #4]
	streq r0, [r5, #0x80]
	beq _020BCCF4
	ldr r1, [r0, #0x10]!
	cmp r1, #0
	bne _020BCCD8
_020BCCF4:
	mov r0, r5
	mov r2, r4
	mov r1, #0
	bl FUN_02041f74
	ldr r0, [r5, #0x80]
	cmp r0, #0
	beq _020BCD1C
	ldr r1, [r0]
	ldr r1, [r1, #0x10]
	blx r1
_020BCD1C:
	mov r0, r5
	bl FUN_02042084
	mov r4, r0
	mov r0, r5
	bl FUN_02042054
	cmp r4, r0
	bne _020BCD44
	ldrb r0, [r5, #5]
	cmp r0, #0
	ldmeqfd sp!, {r3, r4, r5, pc}
_020BCD44:
	ldr r0, [r5, #0x84]
	cmp r0, #0
	beq _020BCD64
	ldr r1, [r0]
	ldr r1, [r1, #0x58]
	blx r1
	cmp r0, #0
	ldmnefd sp!, {r3, r4, r5, pc}
_020BCD64:
	ldr r0, [r5, #0x84]
	cmp r0, #0
	beq _020BCD8C
	ldr r1, [r0]
	ldr r1, [r1, #0x20]
	blx r1
	ldr r0, [r5, #0x84]
	ldr r1, [r0]
	ldr r1, [r1, #0x44]
	blx r1
_020BCD8C:
	mov r1, #0
	ldr r0, _020BCDF0 ; =0x020BD440
	str r1, [r5, #0x84]
	ldr r0, [r0, #4]
	ldr r1, _020BCDFC ; =0x020BD444
	cmp r0, #0
	beq _020BCDC4
_020BCDA8:
	cmp r4, r0
	ldreq r0, [r1, #4]
	streq r0, [r5, #0x84]
	beq _020BCDC4
	ldr r0, [r1, #0x10]!
	cmp r0, #0
	bne _020BCDA8
_020BCDC4:
	mov r0, r5
	mov r2, r4
	mov r1, #1
	bl FUN_02041f74
	ldr r0, [r5, #0x84]
	cmp r0, #0
	ldmeqfd sp!, {r3, r4, r5, pc}
	ldr r1, [r0]
	ldr r1, [r1, #0x10]
	blx r1
	ldmfd sp!, {r3, r4, r5, pc}
_020BCDF0: .word 0x020BD440
_020BCDF4: .word 0x020BD300
_020BCDF8: .word 0x020BD318
_020BCDFC: .word 0x020BD444
	arm_func_end FUN_ov3_020bcc24

	arm_func_start FUN_ov3_020bce00
FUN_ov3_020bce00: ; 0x020BCE00
	stmfd sp!, {r4, lr}
	movs r4, r1
	cmpne r4, #2
	bne _020BCE18
	mov r0, #1
	bl FUN_ov16_020f3f60
_020BCE18:
	sub r0, r4, #1
	cmp r0, #1
	ldmhifd sp!, {r4, pc}
	mov r0, #1
	bl FUN_ov16_020f4894
	ldmfd sp!, {r4, pc}
	arm_func_end FUN_ov3_020bce00

	arm_func_start FUN_ov3_020bce30
FUN_ov3_020bce30: ; 0x020BCE30
	stmfd sp!, {r4, lr}
	movs r4, r1
	cmpne r4, #2
	bne _020BCE44
	bl FUN_ov16_020f47fc
_020BCE44:
	sub r0, r4, #1
	cmp r0, #1
	bhi _020BCE54
	bl FUN_ov16_020f51a8
_020BCE54:
	cmp r4, #2
	ldmnefd sp!, {r4, pc}
	mov r0, #0
	mov r1, #0x6800000
	mov r2, #0xa4000
	bl FUN_0200787c
	ldmfd sp!, {r4, pc}
	arm_func_end FUN_ov3_020bce30

	arm_func_start FUN_ov3_020bce70
FUN_ov3_020bce70: ; 0x020BCE70
	stmfd sp!, {r4, lr}
	mov r4, r0
	bl FUN_02041b00
	mov r0, r4
	bl FUN_0201e078
	mov r0, r4
	ldmfd sp!, {r4, pc}
	arm_func_end FUN_ov3_020bce70

	arm_func_start FUN_ov3_020bce8c
FUN_ov3_020bce8c: ; 0x020BCE8C
	stmfd sp!, {r4, lr}
	mov r4, r0
	bl FUN_02041b00
	mov r0, r4
	ldmfd sp!, {r4, pc}
	arm_func_end FUN_ov3_020bce8c

	arm_func_start FUN_ov3_020bcea0
FUN_ov3_020bcea0: ; 0x020BCEA0
	stmfd sp!, {r4, r5, r6, r7, r8, lr}
	mov r8, r0
	mov r4, #0
	mov r1, r4
	add r0, r8, #0xc
	mov r2, #0xc
	bl MemWrite
	ldr r0, _020BCF38 ; =0x020BD41C
	add r1, r8, #0xc
	bl FUN_ov16_020f316c
	ldr r7, _020BCF3C ; =0x020A6C40
	mov r6, #0x800
	mov r0, r4
	mov r1, r7
	mov r2, r6
	bl FUN_0200787c
	mov r0, r4
	ldr r5, _020BCF40 ; =0x020A7C40
	mov r2, r6
	mov r1, r5
	bl FUN_0200787c
	mov r0, r4
	ldr r4, _020BCF44 ; =0x020A7440
	mov r2, r6
	mov r1, r4
	bl FUN_0200787c
	mov r0, r7
	mov r1, r6
	bl FUN_020026d0
	mov r0, r5
	mov r1, r6
	bl FUN_020026d0
	mov r0, r4
	mov r1, r6
	bl FUN_020026d0
	mov r0, #1
	str r0, [r8, #8]
	ldmfd sp!, {r4, r5, r6, r7, r8, pc}
_020BCF38: .word 0x020BD41C
_020BCF3C: .word 0x020A6C40
_020BCF40: .word 0x020A7C40
_020BCF44: .word 0x020A7440
	arm_func_end FUN_ov3_020bcea0

	arm_func_start FUN_ov3_020bcf48
FUN_ov3_020bcf48: ; 0x020BCF48
	ldr r12, _020BCF54 ; =FUN_ov16_020f33fc
	add r0, r0, #0xc
	bx r12
_020BCF54: .word FUN_ov16_020f33fc
	arm_func_end FUN_ov3_020bcf48

	arm_func_start FUN_ov3_020bcf58
FUN_ov3_020bcf58: ; 0x020BCF58
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	mov r7, r0
	bl FUN_0200505c
	mov r4, #0x20
	mov r5, #0
	mov r1, r0
	mov r0, r5
	mov r2, r4
	bl FUN_0200787c
	bl FUN_0200505c
	mov r1, r4
	bl FUN_020026d0
	ldr r0, _020BD074 ; =0x020A6C40
	mov r1, r5
	mov r6, #0x800
	mov r2, r6
	bl FUN_0200569c
	ldr r0, _020BD078 ; =0x0209A144
	mov r1, r5
	ldr r3, [r0]
	ldr r2, [r3, #0x18]
	ldr r0, [r3, #0x14]
	add r0, r3, r0
	bl FUN_02005a1c
	bl FUN_02004f78
	mov r1, r0
	mov r0, r5
	mov r2, r4
	bl FUN_0200787c
	bl FUN_02004f78
	mov r1, r4
	bl FUN_020026d0
	mov r2, r6
	ldr r0, _020BD07C ; =0x020A7440
	mov r1, r5
	bl FUN_020054dc
	ldr r7, [r7, #0xc]
	cmp r7, #0
	beq _020BD034
	ldr r0, [r7, #0xc]
	mov r6, #1
	ldr r1, [r7, #0x10]
	mov r3, r6
	add r0, r7, r0
	add r2, r5, #1
	bl FUN_ov16_020f1868
	mov r0, r7
	mov r1, r5
	mov r2, r6
	bl FUN_ov16_020f1138
	ldr r0, [r7, #0x14]
	ldr r2, [r7, #0x18]
	mov r1, r4
	add r0, r7, r0
	bl FUN_0200585c
_020BD034:
	bl FUN_02004fcc
	mov r4, #0x20
	mov r5, #0
	mov r1, r0
	mov r0, r5
	mov r2, r4
	bl FUN_0200787c
	bl FUN_02004fcc
	mov r1, r4
	bl FUN_020026d0
	ldr r0, _020BD080 ; =0x020A7C40
	mov r1, r5
	mov r2, #0x800
	bl FUN_020055bc
	bl FUN_ov16_020f10ac
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_020BD074: .word 0x020A6C40
_020BD078: .word 0x0209A144
_020BD07C: .word 0x020A7440
_020BD080: .word 0x020A7C40
	arm_func_end FUN_ov3_020bcf58

	arm_func_start FUN_ov3_020bd084
FUN_ov3_020bd084: ; 0x020BD084
	stmdb sp!, {lr}
	sub sp, sp, #0x2c
	ldr r2, [r0, #0xc]
	cmp r2, #0
	addeq sp, sp, #0x2c
	ldmeqia sp!, {pc}
	ldr r0, [r2, #0xc]
	mov r1, #0
	add lr, r2, r0
	mov r3, #8
	mov r12, #4
	mov r0, #0x18
	strh r0, [sp, #0x18]
	mov r2, #1
	strh r12, [sp, #0x14]
	strh r3, [sp, #0x16]
	strh r3, [sp, #0x1a]
	strh r1, [sp, #0x1c]
	strh r1, [sp, #0x1e]
	strh r1, [sp, #0x20]
	strh r1, [sp, #0x22]
	strb r1, [sp, #0x24]
	str lr, [sp, #0x28]
	add r0, sp, #0x14
	str r2, [sp]
	stmib sp, {r0, r1}
	str r1, [sp, #0xc]
	ldr r0, _020BD108 ; =0x0209F5C0
	mov r3, r2
	str r1, [sp, #0x10]
	bl FUN_ov16_020f5c34
	add sp, sp, #0x2c
	ldmia sp!, {pc}
_020BD108: .word 0x0209F5C0
	arm_func_end FUN_ov3_020bd084

	arm_func_start FUN_ov3_020bd10c
FUN_ov3_020bd10c: ; 0x020BD10C
	stmfd sp!, {r4, lr}
	mov r4, r0
	mov r1, #0
	ldr r0, _020BD130 ; =0x0209F5C0
	str r1, [r4, #8]
	bl FUN_ov16_020f5a58
	mov r0, r4
	bl FUN_ov3_020bcea0
	ldmfd sp!, {r4, pc}
_020BD130: .word 0x0209F5C0
	arm_func_end FUN_ov3_020bd10c

	arm_func_start FUN_ov3_020bd134
FUN_ov3_020bd134: ; 0x020BD134
	stmfd sp!, {r4, lr}
	mov r4, r0
	ldr r1, [r4, #8]
	cmp r1, #1
	beq _020BD15C
	cmp r1, #3
	beq _020BD178
	cmp r1, #4
	beq _020BD194
	ldmfd sp!, {r4, pc}
_020BD15C:
	add r0, r4, #0xc
	mov r1, #1
	bl FUN_ov16_020f330c
	cmp r0, #0
	movne r0, #2
	strne r0, [r4, #8]
	ldmfd sp!, {r4, pc}
_020BD178:
	mov r1, #4
	str r1, [r4, #8]
	bl FUN_ov3_020bd084
	mov r0, r4
	ldr r1, [r0]
	ldr r1, [r1, #0x4c]
	blx r1
_020BD194:
	ldr r0, _020BD1A4 ; =0x0209F5C0
	mov r1, #0
	bl FUN_ov16_020f672c
	ldmfd sp!, {r4, pc}
_020BD1A4: .word 0x0209F5C0
	arm_func_end FUN_ov3_020bd134

	arm_func_start FUN_ov3_020bd1a8
FUN_ov3_020bd1a8: ; 0x020BD1A8
	stmfd sp!, {r4, lr}
	mov r4, r0
	ldr r1, [r4, #8]
	cmp r1, #2
	beq _020BD1C8
	cmp r1, #4
	beq _020BD1D8
	ldmfd sp!, {r4, pc}
_020BD1C8:
	bl FUN_ov3_020bcf58
	mov r0, #3
	str r0, [r4, #8]
	ldmfd sp!, {r4, pc}
_020BD1D8:
	ldr r0, _020BD1E8 ; =0x0209F5C0
	mov r1, #0
	bl FUN_ov16_020f6a9c
	ldmfd sp!, {r4, pc}
_020BD1E8: .word 0x0209F5C0
	arm_func_end FUN_ov3_020bd1a8

	arm_func_start FUN_ov3_020bd1ec
FUN_ov3_020bd1ec: ; 0x020BD1EC
	stmfd sp!, {r4, lr}
	mov r4, r0
	ldr r0, _020BD218 ; =0x0209F5C0
	mov r1, #0
	bl FUN_ov16_020f5af0
	add r0, r4, #0xc
	mov r1, #1
	bl FUN_ov16_020f338c
	mov r0, r4
	bl FUN_ov3_020bcf48
	ldmfd sp!, {r4, pc}
_020BD218: .word 0x0209F5C0
	arm_func_end FUN_ov3_020bd1ec

	arm_func_start FUN_ov3_020bd21c
FUN_ov3_020bd21c: ; 0x020BD21C
	stmfd sp!, {r4, lr}
	mov r4, r0
	bl FUN_0201e078
	mov r0, r4
	ldmfd sp!, {r4, pc}
	arm_func_end FUN_ov3_020bd21c

	arm_func_start FUN_ov3_020bd230
FUN_ov3_020bd230: ; 0x020BD230
	bx lr
	arm_func_end FUN_ov3_020bd230

	arm_func_start FUN_ov3_020bd234
FUN_ov3_020bd234: ; 0x020BD234
	bx lr
	arm_func_end FUN_ov3_020bd234

	arm_func_start FUN_ov3_020bd238
FUN_ov3_020bd238: ; 0x020BD238
	stmfd sp!, {r3, r4, r5, lr}
	mov r5, #0x2000
	mov r0, r5
	bl FUN_020095ac
	ldr r4, _020BD280 ; =0x020BD300
	str r0, [r4, #4]
	ldr r0, _020BD284 ; =0x00009CCD
	bl FUN_020095ac
	mov r1, #0x800
	str r0, [r4]
	ldr r0, _020BD288 ; =0x0000EA3C
	str r1, [r4, #0x14]
	str r0, [r4, #0x10]
	add r0, r5, #0x4e0000
	str r0, [r4, #0xc]
	add r0, r1, #0x840000
	str r0, [r4, #8]
	ldmfd sp!, {r3, r4, r5, pc}
_020BD280: .word 0x020BD300
_020BD284: .word 0x00009CCD
_020BD288: .word 0x0000EA3C
	arm_func_end FUN_ov3_020bd238

	arm_func_start FUN_ov3_020bd28c
FUN_ov3_020bd28c: ; 0x020BD28C
	stmfd sp!, {r3, r4, r5, lr}
	mov r5, #0x2000
	mov r0, r5
	bl FUN_020095ac
	ldr r4, _020BD2D4 ; =0x020BD390
	str r0, [r4, #0x14]
	ldr r0, _020BD2D8 ; =0x00009CCD
	bl FUN_020095ac
	mov r1, #0x800
	str r0, [r4, #0x10]
	ldr r0, _020BD2DC ; =0x0000EA3C
	str r1, [r4, #0xc]
	str r0, [r4, #8]
	add r0, r5, #0x4e0000
	str r0, [r4, #4]
	add r0, r1, #0x840000
	str r0, [r4]
	ldmfd sp!, {r3, r4, r5, pc}
_020BD2D4: .word 0x020BD390
_020BD2D8: .word 0x00009CCD
_020BD2DC: .word 0x0000EA3C
	arm_func_end FUN_ov3_020bd28c
	; 0x020BD2E0
