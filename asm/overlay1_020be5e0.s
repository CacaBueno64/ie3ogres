


    arm_func_start FUN_ov1_020be5e0
FUN_ov1_020be5e0:
    ldr r2, [_020be5f4]                  ; =0x020A0640
    ldr r0, [_020be5f8]                  ; =0x0209BA20
    ldr r12, [_020be5fc]                 ; =FUN_0206f9dc
    strb r1, [r2, #0x90] ; =_020a06d0
    bx r12
_020be5f4: .word 0x020A0640
_020be5f8: .word 0x0209BA20
_020be5fc: .word FUN_0206f9dc
    arm_func_end FUN_ov1_020be5e0