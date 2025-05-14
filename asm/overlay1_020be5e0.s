


    arm_func_start FUN_ov1_020be5e0
FUN_ov1_020be5e0:
    ldr r2, _020BE5F4 ; =0x020A0640
    ldr r0, _020BE5F8 ; =0x0209BA20
    ldr r12, _020BE5FC ; =FUN_0206f9dc
    strb r1, [r2, #0x90] ; =_020A06D0
    bx r12
_020BE5F4: .word 0x020A0640
_020BE5F8: .word 0x0209BA20
_020BE5FC: .word FUN_0206f9dc
    arm_func_end FUN_ov1_020be5e0