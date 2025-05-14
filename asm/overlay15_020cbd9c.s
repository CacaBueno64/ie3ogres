


_020CBD9C:
    b _020CBDA0
_020CBDA0:
    mla r4,r6,r4,r7
    cmp r4,#0x0
    ldrneh r2,[r5,#0x12 ]
    movne r0,r4, lsl #0x10
    movne r1,r0, lsr #0x10
    cmpne r2,r0, lsr #0x10
    beq _020CBDA0
    strh r1,[r5,#0x12 ]
    ldrh r0,[r5,#0x12 ]
    mov r1,r10
    mov r2,r9
    mov r3,r8
    bl FUN_ov15_020cb88c
    cmp r1,#0x0
    str r0,[r5,#0x8 ]
    str r1,[r5,#0xc ]
    cmpeq r0,#0x0
    beq _020CBD9C
