
; ndsdisasm don't want to disassemble this portion,  so i did it myself

_020C5E3C:
    b _020C5E88
    b _020C5E98
    b _020C5E58
    b _020C60c4
    b _020C6254
    b _020C6254
    b _020C623C
_020C5E58:
    add r0, r4, r6, lsl #0x2
    ldr r1, [r0, #0x8]
    mov r0, #0x3
    strh r1, [r9, #0x22]
    strb r0, [r9, #0x21]
    ldrsh r1, [r9, #0x22]
    mov r0, r2
    cmp r1, #0x64
    movgt r0, #0x2
    strbgt r0, [r9, #0x20]
    strble r0, [r9, #0x20]
    b _020C568C
_020C5E88:
    mov r1, #0x3
    strb r1, [r9, #0x20]
    strh r0, [r9, #0x22]
    b _020C568C
_020C5E98:
    mov r3, #0x6
    add r1, r6, #0x1
    strb r3, [r9, #0x20]
    strb r2, [r9, #0x21]
    add r1, r4, r1, lsl #0x2
    ldr r1, [r1, #0x8]
    strh r1, [r9, #0x22]
    ldrb r1, [r4, #0x6]
    cmp r1, #0x15
    bgt _020C5EF0
    bge _020C5F14
    cmp r1, #0x5
    bgt _020C5F48
    cmp r1, #0x4
    blt _020C5F48
    beq _020C5F14
    cmp r1, #0x5
    addeq r1, r6, #0x4
    addeq r1, r4, r1, lsl #0x2
    ldreq r1, [r1, #0x8]
    streq r1, [sp, #0x0]
    b _020C5F48
_020C5EF0:
    cmp r1, #0x18
    bgt _020C5F48
    cmp r1, #0x16
    blt _020C5F48
    beq _020C5F38
    cmp r1, #0x17
    cmpne r1, #0x18
    beq _020C5F28
    b _020C5F48
_020C5F14:
    add r1, r6, #0x2
    add r1, r4, r1, lsl #0x2
    ldr r1, [r1, #0x8]
    and r1, r1, #0x7
    b _020C5F44
_020C5F28:
    add r1, r6, #0x16
    add r1, r4, r1, lsl #0x2
    ldr r1, [r1, #0x8]
    str r1, [r9, #0x34]
_020C5F38:
    add r1, r6, #0x15
    add r1, r4, r1, lsl #0x2
    ldr r1, [r1, #0x8]
_020C5F44:
    str r1, [sp, #0x0]
_020C5F48:
    ldr r1, [sp, #0x0]
    cmp r1, #0x0
    beq _020C5F74
    cmp r1, #0x1
    beq _020C5F80
    cmp r1, #0x2
    ldreq r2, [_020C62C4] ; =0x0000044D
    moveq r1, #0xa1
    streq r2, [r9, #0x28]
    streq r1, [r9, #0x2c]
    b _020C5F90
_020C5F74:
    ldr r2, [_020c62c8] ; =0x000003E9
    mov r1, #0xa0
    b _020C5F88
_020C5F80:
    ldr r2, [_020c62cc] ; =0x000004B1
    mov r1, #0xa2
_020C5F88:
    str r2, [r9, #0x28]
    str r1, [r9, #0x2c]
_020C5F90:
    add r1, r6, #0x2
    str r0, [r9, #0x30]
    add r0, r4, r1, lsl #0x2
    ldr r0, [r0, #0x8]
    tst r0, #0x8
    beq _020C568C
    ldr r0, [r8, #0xa0]
    sub r6, r6, #0x4
    ldr r0, [r0, #0x8]
    mov r1, #0x78
    add r0, r0, #0x1
    str r0, [r9, #0x30]
    ldr r3, [r8, #0xa0]
    add r2, r6, #0x8
    add r0, r3, #0x3e4
    ldr r3, [r3, #0x8]
    add r0, r0, #0x3800
    mla r5, r3, r1, r0
    mov r0, #0x2
    strb r0, [r5, #0x42]
    add r0, r4, r2, lsl #0x2
    ldr r1, [r0, #0x8]
    add r0, r5, #0x22
    bl FUN_02014ee8
    add r0, r6, #0x9
    add r0, r4, r0, lsl #0x2
    ldr r7, [r0, #0x8]
    add r2, r6, #0xa
    add r3, r6, #0xb
    add r2, r4, r2, lsl #0x2
    strb r7, [r5, #0x20]
    ldr r7, [r2, #0x8]
    add r2, r6, #0xc
    add r1, r6, #0xe
    strb r7, [r5, #0x21]
    add r7, r4, r1, lsl #0x2
    ldr r7, [r7, #0x8]
    add r0, r6, #0xf
    add r9, r6, #0xd
    str r7, [r5, #0x74]
    add r6, r4, r0, lsl #0x2
    ldr r6, [r6, #0x8]
    add r3, r4, r3, lsl #0x2
    strb r6, [r5, #0x43]
    ldr r3, [r3, #0x8]
    add r2, r4, r2, lsl #0x2
    str r3, [r5, #0x44]
    ldr r3, [r2, #0x8]
    add r2, r4, r9, lsl #0x2
    str r3, [r5, #0x48]
    ldr r2, [r2, #0x8]
    mov r7, #0x1
    str r2, [r5, #0x4c]
    mov r2, #0xc
    b _020C60A8
_020C606C:
    mla r6, r7, r2, r5
    add lr, r7, r7, lsl #0x1
    add r3, r9, lr
    add r3, r4, r3, lsl #0x2
    ldr r12, [r3, #0x8]
    add r3, r1, lr
    str r12, [r6, #0x44]
    add r3, r4, r3, lsl #0x2
    ldr r3, [r3, #0x8]
    add r11, r0, lr
    str r3, [r6, #0x48]
    add r3, r4, r11, lsl #0x2
    ldr r3, [r3, #0x8]
    add r7, r7, #0x1
    str r3, [r6, #0x4c]
_020C60A8:
    cmp r7, #0x4
    blt _020C606C

_020C62C4: .word 0x0000044D
_020C62C8: .word 0x000003E9
_020C62CC: .word 0x000004B1
_020C62D0: .word 0x02099F24