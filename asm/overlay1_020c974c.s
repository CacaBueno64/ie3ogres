


    b _020c9794
    b _020c97e0
    b _020c9788
    b _020c9988
    b _020c9b68
    b _020c9c44
    b _020c9c54
    b _020c9d50
    b _020c9d30
    b _020c9d30
    b _020c9a7c
    b _020c9d30
    b _020c9d50
    b _020c9d50
    b _020c9d4c
_020c9788:
    add r0, r9, r5, lsl #0x1
    strh r1, [r0, #0x7c]
    b _020c9d50
_020c9794:
    ldr r0, [r9, #0x8]
    cmp r0, #0x4
    cmpne r0, #0xb
    cmpne r0, #0xd
    cmpne r0, #0x13
    cmpne r0, #0x17
    beq _020c97b8
    cmp r0, #0xf
    bne _020c9d50
_020c97b8:
    ldrb r0, [r7, #0x4]
    bl FUN_020efa80
    movs r4, r0
    beq _020c9d50
    bl FUN_0206cbf8
    add r1, r9, r5, lsl #0x1
    strh r0, [r1, #0x7c]
    mov r0, r4
    bl FUN_0206da98
    b _020c9d50
_020c97e0:
    ldr r0, [r9, #0x8]
    cmp r0, #0x4
    cmpne r0, #0xb
    cmpne r0, #0xd
    cmpne r0, #0x13
    cmpne r0, #0x17
    beq _020c9804
    cmp r0, #0xf
    bne _020c9d50
_020c9804:
    ldrb r0, [r7, #0x4]
    bl FUN_020efa80
    movs r6, r0
    beq _020c9d50
    bl FUN_0206cbf8
    add r1, r9, r5, lsl #0x1
    ldrh r1, [r1, #0x7c]
    cmp r1, r0
    beq _020c9840
    mov r0, r6
    bl FUN_0206da98
    mov r0, r6
    bl FUN_0206cbf8
    add r1, r9, r5, lsl #0x1
    strh r0, [r1, #0x7c]
_020c9840:
    mov r0, r7
    bl FUN_ov1_020cbe08
    cmp r0, #0x0
    mov r0, r7
    ble _020c9870
    bl FUN_ov1_020cbe08
    mov r0, r0, lsl #0xc
    bl FUN_0201f704
    mov r1, r0
    mov r0, #0x3f000000
    bl FUN_02020274
    b _020c9884
_020c9870:
    bl FUN_ov1_020cbe08
    mov r0, r0, lsl #0xc
    bl FUN_0201f704
    mov r1, #0x3f000000
    bl FUN_020204a4
_020c9884:
    bl FUN_0201fdac
    str r0, [sp, #0xc]
    mov r0, r7
    bl FUN_ov1_020cbe18
    cmp r0, #0x0
    mov r0, r7
    ble _020c98bc
    bl FUN_ov1_020cbe18
    mov r0, r0, lsl #0xc
    bl FUN_0201f704
    mov r1, r0
    mov r0, #0x3f000000
    bl FUN_02020274
    b _020c98d0
_020c98bc:
    bl FUN_ov1_020cbe18
    mov r0, r0, lsl #0xc
    bl FUN_0201f704
    mov r1, #0x3f000000
    bl FUN_020204a4
_020c98d0:
    bl FUN_0201fdac
    str r0, [sp, #0x8]
    mov r0, #0x0
    bl FUN_020f085c
    mov r4, r0
    ldr r0, [_020c9d78] ; = 0209AEC0h
    bl FUN_02046730
    bl FUN_020f085c
    cmp r4, r0
    beq _020c9904
    add r0, sp, #0xc
    add r1, sp, #0x8
    bl FUN_020f025c
_020c9904:
    ldr r1, [r6, #0x88]
    ldrb r0, [r1, #0x85]
    cmp r0, #0xa
    movcs r0, #0x9
    strbcs r0, [r1, #0x85]
    ldr r2, [r6, #0x88]
    ldrb r1, [r2, #0x85]
    cmp r1, #0xa
    bcs _020c9d50
    cmp r1, #0x0
    beq _020c9958
    FUN r0, r1, #0x1
    add r3, r2, r0, lsl #0x3
    ldr r2, [sp, #0xc]
    ldr r0, [r3, #0x34]
    cmp r2, r0
    bne _020c9958
    ldr r2, [sp, #0x8]
    ldr r0, [r3, #0x38]
    cmp r2, r0
    beq _020c9d50
_020c9958:
    ldr r2, [r6, #0x88]
    ldr r0, [sp, #0x8]
    add r2, r2, #0x34
    ldr r4, [sp, #0xc]
    add r3, r2, r1, lsl #0x3
    str r4, [r2, r1, lsl #0x3]
    str r0, [r3, #0x4]
    ldr r1, [r6, #0x88]
    ldrb r0, [r1, #0x85]
    add r0, r0, #0x1
    strb r0, [r1, #0x85]
    b _020c9d50
_020c9988:
    ldr r0, [r9, #0x8]
    cmp r0, #0x4
    bne _020c9d50
    mov r0, r7
    bl FUN_ov1_020cbe08
    cmp r0, #0x0
    mov r0, r7
    ble _020c99c4
    bl FUN_ov1_020cbe08
    mov r0, r0, lsl #0xc
    bl FUN_0201f704
    mov r1, r0
    mov r0, #0x3f000000
    bl FUN_02020274
    b _020c99d8
_020c99c4:
    bl FUN_ov1_020cbe08
    mov r0, r0, lsl #0xc
    bl FUN_0201f704
    mov r1, #0x3f000000
    bl FUN_020204a4
_020c99d8:
    bl FUN_0201fdac
    str r0, [sp, #0xc]
    mov r0, r7
    bl FUN_ov1_020cbe18
    cmp r0, #0x0
    mov r0, r7
    ble _020c9a10
    bl FUN_ov1_020cbe18
    mov r0, r0, lsl #0xc
    bl FUN_0201f704
    mov r1, r0
    mov r0, #0x3f000000
    bl FUN_02020274
    b _020c9a24
_020c9a10:
    bl FUN_ov1_020cbe18
    mov r0, r0, lsl #0xc
    bl FUN_0201f704
    mov r1, #0x3f000000
    bl FUN_020204a4
_020c9a24:
    bl FUN_0201fdac
    str r0, [sp, #0x8]
    mov r0, #0x0
    bl FUN_020f085c
    mov r4, r0
    ldr r0, [_020c9d78] ; = 0209AEC0h
    bl FUN_02046730
    bl FUN_020f085c
    cmp r4, r0
    beq _020c9a58
    add r0, sp, #0xc
    add r1, sp, #0x8
    bl FUN_020f025c
_020c9a58:
    mov r4, #0x0
_020c9a5c:
    str r4, [sp, #0x0]
    ldr r2, [sp, #0xc]
    ldr r3, [sp, #0x8]
    mov r0, r9
    mov r1, r10
    bl FUN_ov1_020ce940
    str r4, [r9, #0x4c]
    b _020c9d50
_020c9a7c:
    ldr r0, [_020c9d84] ; = 02099EF0h
    ldr r0, [r0, #0x0] ; =_02099ef0
    bl FUN_02144780
    cmp r0, #0x0
    bne _020c9d50
    mov r0, r7
    bl FUN_ov1_020cbe08
    cmp r0, #0x0
    mov r0, r7
    ble _020c9ac0
    bl FUN_ov1_020cbe08
    mov r0, r0, lsl #0xc
    bl FUN_0201f704
    mov r1, r0
    mov r0, #0x3f000000
    bl FUN_02020274
    b _020c9ad4
_020c9ac0:
    bl FUN_ov1_020cbe08
    mov r0, r0, lsl #0xc
    bl FUN_0201f704
    mov r1, #0x3f000000
    bl FUN_020204a4
_020c9ad4:
    bl FUN_0201fdac
    str r0, [sp, #0xc]
    mov r0, r7
    bl FUN_ov1_020cbe18
    cmp r0, #0x0
    mov r0, r7
    ble _020c9b0c
    bl FUN_ov1_020cbe18
    mov r0, r0, lsl #0xc
    bl FUN_0201f704
    mov r1, r0
    mov r0, #0x3f000000
    bl FUN_02020274
    b _020c9b20
_020c9b0c:
    bl FUN_ov1_020cbe18
    mov r0, r0, lsl #0xc
    bl FUN_0201f704
    mov r1, #0x3f000000
    bl FUN_020204a4
_020c9b20:
    bl FUN_0201fdac
    str r0, [sp, #0x8]
    mov r0, #0x0
    bl FUN_020f085c
    mov r4, r0
    ldr r0, [_020c9d78] ; = 0x0209AEC0
    bl FUN_02046730
    bl FUN_020f085c
    cmp r4, r0
    beq _020c9b54
    add r0, sp, #0xc
    add r1, sp, #0x8
    bl FUN_020f025c
_020c9b54:
    ldr r1, [sp, #0xc]
    ldr r2, [sp, #0x8]
    mov r0, r9
    bl FUN_ov1_020d2804
    b _020c9d50
_020c9b68:
    mov r0, r7
    bl FUN_ov1_020cbe08
    cmp r0, #0x0
    mov r0, r7
    ble _020c9b98
    bl FUN_ov1_020cbe08
    mov r0, r0, lsl #0xc
    bl FUN_0201f704
    mov r1, r0
    mov r0, #0x3f000000
    bl FUN_02020274
    b _020c9bac
_020c9b98:
    bl FUN_ov1_020cbe08
    mov r0, r0, lsl #0xc
    bl FUN_0201f704
    mov r1, #0x3f000000
    bl FUN_020204a4
_020c9bac:
    bl FUN_0201fdac
    str r0, [sp, #0xc]
    mov r0, r7
    bl FUN_ov1_020cbe18
    cmp r0, #0x0
    mov r0, r7
    ble _020c9be4
    bl FUN_ov1_020cbe18
    mov r0, r0, lsl #0xc
    bl FUN_0201f704
    mov r1, r0
    mov r0, #0x3f000000
    bl FUN_02020274
    b _020c9bf8
_020c9be4:
    bl FUN_ov1_020cbe18
    mov r0, r0, lsl #0xc
    bl FUN_0201f704
    mov r1, #0x3f000000
    bl FUN_020204a4
_020c9bf8:
    bl FUN_0201fdac
    str r0, [sp, #0x8]
    mov r0, #0x0
    bl FUN_020f085c
    mov r4, r0
    ldr r0, [_020c9d78] ; = 0209AEC0h
    bl FUN_02046730
    bl FUN_020f085c
    cmp r4, r0
    beq _020c9c2c
    add r0, sp, #0xc
    add r1, sp, #0x8
    bl FUN_020f025c
_020c9c2c:
    ldr r2, [sp, #0xc]
    ldr r3, [sp, #0x8]
    mov r0, r9
    mov r1, r10
    bl FUN_ov1_020d354c
    b _020c9d50
_020c9c44:
    mov r0, r9
    mov r1, r10
    bl FUN_ov1_020d351c
    b _020c9d50
_020c9c54:
    ldr r0, [r9, #0x8]
    cmp r0, #0x4
    bne _020c9d50
    ldr r0, [_020c9d84] ; = 02099EF0h
    ldr r0, [r0, #0x0] ; =_02099ef0
    bl FUN_02144780
    cmp r0, #0x0
    bne _020c9d50
    mov r0, r7
    bl FUN_ov1_020cbe08
    cmp r0, #0x0
    mov r0, r7
    ble _020c9ca4
    bl FUN_ov1_020cbe08
    mov r0, r0, lsl #0xc
    bl FUN_0201f704
    mov r1, r0
    mov r0, #0x3f000000
    bl FUN_02020274
    b _020c9cb8
_020c9ca4:
    bl FUN_ov1_020cbe08
    mov r0, r0, lsl #0xc
    bl FUN_0201f704
    mov r1, #0x3f000000
    bl FUN_020204a4
_020c9cb8:
    bl FUN_0201fdac
    str r0, [sp, #0xc]
    mov r0, r7
    bl FUN_ov1_020cbe18
    cmp r0, #0x0
    mov r0, r7
    ble _020c9cf0
    bl FUN_ov1_020cbe18
    mov r0, r0, lsl #0xc
    bl FUN_0201f704
    mov r1, r0
    mov r0, #0x3f000000
    bl FUN_02020274
    b _020c9d04
_020c9cf0:
    bl FUN_ov1_020cbe18
    mov r0, r0, lsl #0xc
    bl FUN_0201f704
    mov r1, #0x3f000000
    bl FUN_020204a4
_020c9d04:
    mov r4, #0x0
    bl FUN_0201fdac
    str r0, [sp, #0x8]
    mov r0, r4
    bl FUN_020f085c
    cmp r10, r0
    beq _020c9d2c
    add r0, sp, #0xc
    add r1, sp, #0x8
    bl FUN_020f025c
_020c9d2c:
    b _020c9a5c
_020c9d30:
    mov r0, r1
    strh r0, [r9, #0x86]
    ldrb r2, [r7, #0x5]
    mov r0, r9
    mov r1, r5
    bl FUN_ov1_020c832c
    b _020c9d50
_020c9d4c:
    strh r1, [r9, #0x86]

_020C9D84: .word 0x02099EF0