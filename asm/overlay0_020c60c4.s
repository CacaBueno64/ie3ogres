


_020c60c4:
    ldr r0, [r1, #0x10]
    cmp r0, #0x1
    bge _020c568c
    mov r0, #0x15
    strb r0, [r9, #0x20]
    ldr r3, [r8, #0xa0]
    ldr r0, [_020c62d0] ; =0x02099F24
    ldr r2, [r3, #0x10]
    add r1, r2, #0x1
    str r1, [r3, #0x10]
    strh r2, [r9, #0x22]
    ldr r2, [r8, #0xa0]
    ldr r1, [r2, #0xc]
    add r1, r1, #0x1
    str r1, [r2, #0xc]
    ldr r7, [r0, #0x0] ; =0x02099f24
    mov r0, r7
    bl FUN_020f7c24
    mov r5, r0
    mov r0, r7
    bl FUN_020f7c44
    mov r11, r0
    mov r0, r7
    bl FUN_020f7c34
    ldr r1, [r8, #0xa0]
    ldrsh r3, [r9, #0x22]
    add r1, r1, #0x164
    add r1, r1, #0x5000
    mov r2, #0x50
    smulbb r3, r3, r2
    str r9, [r1, r3]
    ldr r2, [r5, #0x0]
    add r1, r1, r3
    str r2, [r1, #0x10]
    ldr r2, [r5, #0x4]
    add r3, r6, #0x3
    str r2, [r1, #0x14]
    ldr r5, [r5, #0x8]
    add r2, r6, #0x4
    str r5, [r1, #0x18]
    ldr r7, [r0, #0x0]
    add r5, r4, r3, lsl #0x2
    str r7, [r1, #0x4]
    ldr r7, [r0, #0x4]
    add r3, r4, r2, lsl #0x2
    str r7, [r1, #0x8]
    ldr r0, [r0, #0x8]
    add r2, r6, #0x5
    str r0, [r1, #0xc]
    str r11, [r1, #0x1c]
    ldr r5, [r5, #0x8]
    add r0, r6, #0x6
    str r5, [r1, #0x20]
    ldr r7, [r3, #0x8]
    add r5, r6, #0x7
    add r3, r6, #0x8
    str r7, [r1, #0x24]
    add r2, r4, r2, lsl #0x2
    ldr r7, [r2, #0x8]
    add r2, r6, #0x9
    str r7, [r1, #0x28]
    add r0, r4, r0, lsl #0x2
    ldr r7, [r0, #0x8]
    add r0, r6, #0xa
    str r7, [r1, #0x2c]
    add r5, r4, r5, lsl #0x2
    ldr r7, [r5, #0x8]
    add r5, r6, #0xb
    str r7, [r1, #0x30]
    add r3, r4, r3, lsl #0x2
    ldr r7, [r3, #0x8]
    add r3, r6, #0xc
    str r7, [r1, #0x34]
    add r2, r4, r2, lsl #0x2
    ldr r7, [r2, #0x8]
    add r2, r6, #0xd
    str r7, [r1, #0x38]
    add r0, r4, r0, lsl #0x2
    ldr r7, [r0, #0x8]
    add r0, r6, #0xe
    str r7, [r1, #0x3c]
    add r5, r4, r5, lsl #0x2
    ldr r5, [r5, #0x8]
    add r3, r4, r3, lsl #0x2
    str r5, [r1, #0x40]
    ldr r3, [r3, #0x8]
    add r2, r4, r2, lsl #0x2
    str r3, [r1, #0x44]
    ldr r2, [r2, #0x8]
    add r0, r4, r0, lsl #0x2
    str r2, [r1, #0x48]
    ldr r0, [r0, #0x8]
    str r0, [r1, #0x4c]
    b _020c568c
_020c623c:
    mov r0, r8
    mov r1, r9
    mov r2, r4
    mov r3, r6
    bl FUN_ov0_020c62d4
    b _020c568c
