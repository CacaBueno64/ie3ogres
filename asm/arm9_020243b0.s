
; ndsdisasm don't want to disassemble this portion, so i did it myself

_020243b0:
    cmp r9, #0x0
    beq LAB_020243c0
    cmp r9, #0x10
    bne LAB_020243d0
_020243c0:
    cmp r6, #0x30
    bne LAB_020243d0
    mov r4, #0x4
    b LAB_02024500
_020243d0:
    mov r4, #0x8
    b LAB_02024518
_020243d8:
    cmp r6, #0x58
    cmpne r6, #0x78
    bne LAB_020243f0
_020243e4:
    mov r9, #0x10
    mov r4, #0x8
    b LAB_02024500
_020243f0:
    cmp r9, #0x0
    moveq r9, #0x8
    mov r4, #0x10
    b LAB_02024518
