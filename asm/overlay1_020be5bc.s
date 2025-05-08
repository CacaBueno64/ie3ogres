


    arm_func_start FUN_ov1_020be5bc
FUN_ov1_020be5bc:
    ldr r2, [_020be5d4]                 ; =0x020A0640
    and r3, r1, #0xff
    ldr r0, [_020be5d8]                 ; =0x0209BA20
    ldr r12, [_020be5dc]                ; =FUN_0206F834
    strh r3, [r2, #0xa2] ; =_020a06e2
    bx r12
_020be5d4: .word 0x020A0640
_020be5d8: .word 0x0209BA20
_020be5dc: .word FUN_0206F834
    arm_func_end FUN_ov1_020be5bc
