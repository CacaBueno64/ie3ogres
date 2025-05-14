


    b _020C9794
    b _020C97E0
    b _020C9788
    b _020C9988
    b _020C9B68
    b _020C9C44
    b _020C9C54
    b _020C9D50
    b _020C9D30
    b _020C9D30
    b _020C9A7C
    b _020C9D30
    b _020C9D50
    b _020C9D50
    b _020C9D4C
_020C9788:
    add r0, r9, r5, lsl #0x1
    strh r1, [r0, #0x7c]
    b _020C9D50
_020C9794:
    ldr r0, [r9, #0x8]
    cmp r0, #0x4
    cmpne r0, #0xb
    cmpne r0, #0xd
    cmpne r0, #0x13
    cmpne r0, #0x17
    beq _020C97B8
    cmp r0, #0xf
    bne _020C9D50
_020C97B8:
    ldrb r0, [r7, #0x4]
    bl FUN_020efa80
    movs r4, r0
    beq _020C9D50
    bl FUN_0206cbf8
    add r1, r9, r5, lsl #0x1
    strh r0, [r1, #0x7c]
    mov r0, r4
    bl FUN_0206da98
    b _020C9D50
_020C97E0:
    ldr r0, [r9, #0x8]
    cmp r0, #0x4
    cmpne r0, #0xb
    cmpne r0, #0xd
    cmpne r0, #0x13
    cmpne r0, #0x17
    beq _020C9804
    cmp r0, #0xf
    bne _020C9D50
_020C9804:
    ldrb r0, [r7, #0x4]
    bl FUN_020efa80
    movs r6, r0
    beq _020C9D50
    bl FUN_0206cbf8
    add r1, r9, r5, lsl #0x1
    ldrh r1, [r1, #0x7c]
    cmp r1, r0
    beq _020C9840
    mov r0, r6
    bl FUN_0206da98
    mov r0, r6
    bl FUN_0206cbf8
    add r1, r9, r5, lsl #0x1
    strh r0, [r1, #0x7c]
_020C9840:
    mov r0, r7
    bl FUN_ov1_020cbe08
    cmp r0, #0x0
    mov r0, r7
    ble _020C9870
    bl FUN_ov1_020cbe08
    mov r0, r0, lsl #0xc
    bl FUN_0201f704
    mov r1, r0
    mov r0, #0x3f000000
    bl FUN_02020274
    b _020C9884
_020C9870:
    bl FUN_ov1_020cbe08
    mov r0, r0, lsl #0xc
    bl FUN_0201f704
    mov r1, #0x3f000000
    bl FUN_020204a4
_020C9884:
    bl FUN_0201fdac
    str r0, [sp, #0xc]
    mov r0, r7
    bl FUN_ov1_020cbe18
    cmp r0, #0x0
    mov r0, r7
    ble _020C98bC
    bl FUN_ov1_020cbe18
    mov r0, r0, lsl #0xc
    bl FUN_0201f704
    mov r1, r0
    mov r0, #0x3f000000
    bl FUN_02020274
    b _020C98D0
_020C98bC:
    bl FUN_ov1_020cbe18
    mov r0, r0, lsl #0xc
    bl FUN_0201f704
    mov r1, #0x3f000000
    bl FUN_020204a4
_020C98D0:
    bl FUN_0201fdac
    str r0, [sp, #0x8]
    mov r0, #0x0
    bl FUN_020f085c
    mov r4, r0
    ldr r0, [_020c9d78] ; = 0209AEC0h
    bl FUN_02046730
    bl FUN_020f085c
    cmp r4, r0
    beq _020C9904
    add r0, sp, #0xc
    add r1, sp, #0x8
    bl FUN_020f025c
_020C9904:
    ldr r1, [r6, #0x88]
    ldrb r0, [r1, #0x85]
    cmp r0, #0xa
    movcs r0, #0x9
    strbcs r0, [r1, #0x85]
    ldr r2, [r6, #0x88]
    ldrb r1, [r2, #0x85]
    cmp r1, #0xa
    bcs _020C9D50
    cmp r1, #0x0
    beq _020C9958
    FUN r0, r1, #0x1
    add r3, r2, r0, lsl #0x3
    ldr r2, [sp, #0xc]
    ldr r0, [r3, #0x34]
    cmp r2, r0
    bne _020C9958
    ldr r2, [sp, #0x8]
    ldr r0, [r3, #0x38]
    cmp r2, r0
    beq _020C9D50
_020C9958:
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
    b _020C9D50
_020C9988:
    ldr r0, [r9, #0x8]
    cmp r0, #0x4
    bne _020C9D50
    mov r0, r7
    bl FUN_ov1_020cbe08
    cmp r0, #0x0
    mov r0, r7
    ble _020C99C4
    bl FUN_ov1_020cbe08
    mov r0, r0, lsl #0xc
    bl FUN_0201f704
    mov r1, r0
    mov r0, #0x3f000000
    bl FUN_02020274
    b _020C99D8
_020C99C4:
    bl FUN_ov1_020cbe08
    mov r0, r0, lsl #0xc
    bl FUN_0201f704
    mov r1, #0x3f000000
    bl FUN_020204a4
_020C99D8:
    bl FUN_0201fdac
    str r0, [sp, #0xc]
    mov r0, r7
    bl FUN_ov1_020cbe18
    cmp r0, #0x0
    mov r0, r7
    ble _020C9A10
    bl FUN_ov1_020cbe18
    mov r0, r0, lsl #0xc
    bl FUN_0201f704
    mov r1, r0
    mov r0, #0x3f000000
    bl FUN_02020274
    b _020C9A24
_020C9A10:
    bl FUN_ov1_020cbe18
    mov r0, r0, lsl #0xc
    bl FUN_0201f704
    mov r1, #0x3f000000
    bl FUN_020204a4
_020C9A24:
    bl FUN_0201fdac
    str r0, [sp, #0x8]
    mov r0, #0x0
    bl FUN_020f085c
    mov r4, r0
    ldr r0, [_020c9d78] ; =0209AEC0h
    bl FUN_02046730
    bl FUN_020f085c
    cmp r4, r0
    beq _020C9A58
    add r0, sp, #0xc
    add r1, sp, #0x8
    bl FUN_020f025c
_020C9A58:
    mov r4, #0x0
_020C9A5C:
    str r4, [sp, #0x0]
    ldr r2, [sp, #0xc]
    ldr r3, [sp, #0x8]
    mov r0, r9
    mov r1, r10
    bl FUN_ov1_020ce940
    str r4, [r9, #0x4c]
    b _020C9D50
_020C9A7C:
    ldr r0, [_020c9d84] ; = 02099EF0h
    ldr r0, [r0, #0x0] ; =_02099ef0
    bl FUN_02144780
    cmp r0, #0x0
    bne _020C9D50
    mov r0, r7
    bl FUN_ov1_020cbe08
    cmp r0, #0x0
    mov r0, r7
    ble _020C9AC0
    bl FUN_ov1_020cbe08
    mov r0, r0, lsl #0xc
    bl FUN_0201f704
    mov r1, r0
    mov r0, #0x3f000000
    bl FUN_02020274
    b _020C9AD4
_020C9AC0:
    bl FUN_ov1_020cbe08
    mov r0, r0, lsl #0xc
    bl FUN_0201f704
    mov r1, #0x3f000000
    bl FUN_020204a4
_020C9AD4:
    bl FUN_0201fdac
    str r0, [sp, #0xc]
    mov r0, r7
    bl FUN_ov1_020cbe18
    cmp r0, #0x0
    mov r0, r7
    ble _020C9B0C
    bl FUN_ov1_020cbe18
    mov r0, r0, lsl #0xc
    bl FUN_0201f704
    mov r1, r0
    mov r0, #0x3f000000
    bl FUN_02020274
    b _020C9B20
_020C9B0C:
    bl FUN_ov1_020cbe18
    mov r0, r0, lsl #0xc
    bl FUN_0201f704
    mov r1, #0x3f000000
    bl FUN_020204a4
_020C9B20:
    bl FUN_0201fdac
    str r0, [sp, #0x8]
    mov r0, #0x0
    bl FUN_020f085c
    mov r4, r0
    ldr r0, [_020c9d78] ; = 0x0209AEC0
    bl FUN_02046730
    bl FUN_020f085c
    cmp r4, r0
    beq _020C9B54
    add r0, sp, #0xc
    add r1, sp, #0x8
    bl FUN_020f025c
_020C9B54:
    ldr r1, [sp, #0xc]
    ldr r2, [sp, #0x8]
    mov r0, r9
    bl FUN_ov1_020d2804
    b _020C9D50
_020C9B68:
    mov r0, r7
    bl FUN_ov1_020cbe08
    cmp r0, #0x0
    mov r0, r7
    ble _020C9B98
    bl FUN_ov1_020cbe08
    mov r0, r0, lsl #0xc
    bl FUN_0201f704
    mov r1, r0
    mov r0, #0x3f000000
    bl FUN_02020274
    b _020C9BAC
_020C9B98:
    bl FUN_ov1_020cbe08
    mov r0, r0, lsl #0xc
    bl FUN_0201f704
    mov r1, #0x3f000000
    bl FUN_020204a4
_020C9BAC:
    bl FUN_0201fdac
    str r0, [sp, #0xc]
    mov r0, r7
    bl FUN_ov1_020cbe18
    cmp r0, #0x0
    mov r0, r7
    ble _020C9BE4
    bl FUN_ov1_020cbe18
    mov r0, r0, lsl #0xc
    bl FUN_0201f704
    mov r1, r0
    mov r0, #0x3f000000
    bl FUN_02020274
    b _020C9BF8
_020C9BE4:
    bl FUN_ov1_020cbe18
    mov r0, r0, lsl #0xc
    bl FUN_0201f704
    mov r1, #0x3f000000
    bl FUN_020204a4
_020C9BF8:
    bl FUN_0201fdac
    str r0, [sp, #0x8]
    mov r0, #0x0
    bl FUN_020f085c
    mov r4, r0
    ldr r0, [_020c9d78] ; = 0209AEC0h
    bl FUN_02046730
    bl FUN_020f085c
    cmp r4, r0
    beq _020C9C2C
    add r0, sp, #0xc
    add r1, sp, #0x8
    bl FUN_020f025c
_020C9C2C:
    ldr r2, [sp, #0xc]
    ldr r3, [sp, #0x8]
    mov r0, r9
    mov r1, r10
    bl FUN_ov1_020d354c
    b _020C9D50
_020C9C44:
    mov r0, r9
    mov r1, r10
    bl FUN_ov1_020d351c
    b _020C9D50
_020C9C54:
    ldr r0, [r9, #0x8]
    cmp r0, #0x4
    bne _020C9D50
    ldr r0, [_020c9d84] ; = 02099EF0h
    ldr r0, [r0, #0x0] ; =_02099ef0
    bl FUN_02144780
    cmp r0, #0x0
    bne _020C9D50
    mov r0, r7
    bl FUN_ov1_020cbe08
    cmp r0, #0x0
    mov r0, r7
    ble _020C9CA4
    bl FUN_ov1_020cbe08
    mov r0, r0, lsl #0xc
    bl FUN_0201f704
    mov r1, r0
    mov r0, #0x3f000000
    bl FUN_02020274
    b _020C9CB8
_020C9CA4:
    bl FUN_ov1_020cbe08
    mov r0, r0, lsl #0xc
    bl FUN_0201f704
    mov r1, #0x3f000000
    bl FUN_020204a4
_020C9CB8:
    bl FUN_0201fdac
    str r0, [sp, #0xc]
    mov r0, r7
    bl FUN_ov1_020cbe18
    cmp r0, #0x0
    mov r0, r7
    ble _020C9CF0
    bl FUN_ov1_020cbe18
    mov r0, r0, lsl #0xc
    bl FUN_0201f704
    mov r1, r0
    mov r0, #0x3f000000
    bl FUN_02020274
    b _020C9D04
_020C9CF0:
    bl FUN_ov1_020cbe18
    mov r0, r0, lsl #0xc
    bl FUN_0201f704
    mov r1, #0x3f000000
    bl FUN_020204a4
_020C9D04:
    mov r4, #0x0
    bl FUN_0201fdac
    str r0, [sp, #0x8]
    mov r0, r4
    bl FUN_020f085c
    cmp r10, r0
    beq _020C9D2C
    add r0, sp, #0xc
    add r1, sp, #0x8
    bl FUN_020f025c
_020C9D2C:
    b _020C9A5C
_020C9D30:
    mov r0, r1
    strh r0, [r9, #0x86]
    ldrb r2, [r7, #0x5]
    mov r0, r9
    mov r1, r5
    bl FUN_ov1_020c832c
    b _020C9D50
_020C9D4C:
    strh r1, [r9, #0x86]

_020C9D84: .word 0x02099EF0