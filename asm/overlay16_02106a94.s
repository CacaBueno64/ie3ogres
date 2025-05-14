


_02106A94:
    ldr r0, [r6, #0x0]
    ldr r1, [r5, #0x10]
    bl FUN_020385c0
    tst r0, #0x10
    bne _02106C80
    ldrsb r0, [r5, #0xb]
    add r0, r0, #0x1
    strb r0, [r5, #0xb]
_02106AB4:
    ldr r8, [r5, #0x18]
    cmp r8, #0x0
    bne _02106AD0
    ldr r0, [r6, #0x0]
    ldr r1, [r5, #0x10]
    bl FUN_02037fb0
    b _02106C44
_02106AD0:
    ldr r0, [_02106CB4] ; =02099F38h
    mov r1, r8
    ldr r0, [r0, #0x0] ; =_02099F38
    bl FUN_02058e30
    cmp r0, #0x0
    bgt _02106C80
    ldr r0, [r6, #0x0]
    ldr r1, [r5, #0x10]
    bl FUN_020385dc
    ldr r2, [_02106CC0] ; =02099EE8h
    mov r1, r0
    ldr r0, [r2, #0x0] ; =_02099EE8
    bl FUN_0205fa18
    bl FUN_ov16_020fa71c
    movs r7, r0
    moveq r10, #0x0
    beq _02106B24
    ldr r1, [_02106C80] ; =021179A8h
    add r0, r7, #0x3c
    bl FUN_02067aa8
    mov r10, r0
_02106B24:
    cmp r7, #0x0
    ldrhne r0, [r7, #0x34]
    cmpne r0, #0x0
    moveq r0, #0x0
    beq _02106B44
    ldr r1, [_02106C80] ; =02117994h
    add r0, r7, r0
    bl FUN_02067aa8
_02106B44:
    ldr r11, [r10, #0x0]
    ldr r2, [r7, #0x14]
    ldr r1, [r7, #0x38]
    ldr r9, [_02106CB4] ; =02099F38h
    ldrh r10, [r0, #0x0]
    add r3, r7, r1
    ldr r0, [r9, #0x0] ; =_02099F38
    mov r11, r11, lsl #0x10
    add r2, r7, r2
    add r2, r2, r11, lsr #0xd
    mov r1, r8
    str r2, [sp, #0x1c]
    add r11, r3, r10, lsl #0x3
    bl FUN_ov16_02111414
    mov r7, r0
    ldr r0, [r9, #0x0] ; =_02099F38
    mov r1, r8
    bl FUN_ov16_021113cc
    str r0, [sp, #0x18]
    ldr r0, [r9, #0x0] ; =_02099F38
    mov r1, r8
    bl FUN_ov16_021113f0
    ldrb r2, [r7, #0x2]
    mov r3, #0x8
    ldrb r1, [r7, #0x3]
    str r0, [sp, #0x14]
    sub r10, r7, r0
    mov r0, r3, lsl r1
    mov r2, r3, lsl r2
    mul r9, r2, r0
    ldrb r0, [r7, #0x4]
    ldr r1, [sp, #0x1c]
    cmp r0, #0x3
    moveq r9, r9, lsr #0x1
    ldr r0, [sp, #0x18]
    mov r2, r9
    bl _memcpy
    ldr r0, [sp, #0x14]
    mov r1, r11
    mov r2, r10
    bl _memcpy
    ldr r0, [sp, #0x1c]
    mov r1, r9
    bl FUN_020026d0
    mov r0, r11
    mov r1, r10
    bl FUN_020026d0
    ldr r0, [r6, #0x0]
    ldr r1, [r5, #0x10]
    bl FUN_02037fb0
    ldr r0, [_02106CB4] ; =02099F38h
    mov r1, r8
    ldr r0, [r0, #0x0] ; =_02099F38
    bl FUN_02058ee0
    b _02106C44
_02106C20:
    ldr r0, [r6, #0x0]
    ldr r1, [r5, #0x10]
    bl FUN_020385c0
    tst r0, #0x2
    beq _02106C80
    ldr r0, [r6, #0x0]
    ldr r1, [r5, #0x10]
    ldr r2, [_02106CC4] ; =02119CE8h
    bl FUN_020383c4
_02106C44:
    ldrsb r0, [r5, #0xb]
    b _02106C78
_02106C4C:
    ldr r0, [r6, #0x0]
    ldr r1, [r5, #0x10]
    bl FUN_020385c0
    tst r0, #0x10
    bne _02106C80
    ldr r0, [r6, #0x0]
    ldr r1, [r5, #0x10]
    mov r2, r8
    bl FUN_0203851c
    ldrsb r0, [r5, #0xb]
    strb r7, [r5, #0xa]
_02106C78:
	add r0, r0, #1
	strb r0, [r5, #0xb]
_02106C80:
	cmp r4, #0
	ldrnesb r0, [r5, #0xa]
	strne r0, [r4]
	ldrsb r0, [r5, #0xa]
	cmp r0, #0
	movne r0, #1
	moveq r0, #0
	add sp, sp, #0xe8
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_02106CA4: .word 0x0209A250
_02106CA8: .word 0x02119CA8
_02106CAC: .word 0x0209BA20
_02106CB0: .word 0x02119CC0
_02106CB4: .word 0x02099F38
_02106CB8: .word 0x02119CCC
_02106CBC: .word 0x02119CE4
_02106CC0: .word 0x02099EE8
_02106CC4: .word 0x021179A8
_02106CC8: .word 0x02117994
_02106CCC: .word 0x02119CE8
	arm_func_end FUN_ov16_021068e8
