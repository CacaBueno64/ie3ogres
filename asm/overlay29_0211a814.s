


    arm_func_start FUN_ov29_0211a814
FUN_ov29_0211a814:
    push    {r4, r5, r6, r7, r8, r9, sl, fp, lr}
    sub     sp, sp, #436    ; 0x1b4
    ldr     r1, [pc, #3956] ; 0x211b798
    ldr     r5, [pc, #3956] ; 0x211b79c
    mov     r9, r0
    mov     sl, #0
    ldr     r0, [r5]
    ldr     r1, [r1]
    mov     r4, sl
    bl      0x210e10c
    mov     r0, r9
    bl      0x211d228
    cmp     r0, #0
    ldrne   r0, [r9, #248]  ; 0xf8
    cmpne   r0, #0
    addeq   sp, sp, #436    ; 0x1b4
    popeq   {r4, r5, r6, r7, r8, r9, sl, fp, pc}
    ldr     r0, [r5]
    bl      0x210e15c
    cmp     r0, #0
    addne   sp, sp, #436    ; 0x1b4
    popne   {r4, r5, r6, r7, r8, r9, sl, fp, pc}
    ldr     r1, [r9, #244]  ; 0xf4
    ldr     r0, [r9, #256]  ; 0x100
    add     r5, r1, #0
    ldr     r1, [r9, #264]  ; 0x108
    add     r0, r0, r5, lsr #8
    mov     r8, #0
    bl      0x201fbc8
    ldr     r2, [r9, #252]  ; 0xfc
    and     r0, r5, #255    ; 0xff
    ldr     r1, [r2, r1, lsl #2]
    add     r0, r1, r0, lsl #2
    ldrb    r0, [r0, #1]
    cmp     r0, #72 ; 0x48
    bhi     0x211d08c
    ldr     r5, [pc, #3828] ; 0x211b7a0
    mov     r6, #2
    add     pc, pc, r0, lsl #2
    mov     r0, r0
    b       0x211d08c
    b       0x211ac38
    b       0x211ae78
    b       0x211afa8
    b       0x211b020
    b       0x211b29c
    b       0x211b3f4
    b       0x211b560
    b       0x211b858
    b       0x211bbd4
    b       0x211be78
    b       0x211c030
    b       0x211c280
    b       0x211ba44
    b       0x211c1dc
    b       0x211acbc
    b       0x211ae8c
    b       0x211afd4
    b       0x211b0d4
    b       0x211b304
    b       0x211b488
    b       0x211b640
    b       0x211b914
    b       0x211bc74
    b       0x211bef8
    b       0x211c080
    b       0x211c2d8
    b       0x211ba58
    b       0x211c23c
    b       0x211ba30
    b       0x211acb8
    b       0x211ae88
    b       0x211afb8
    b       0x211b080
    b       0x211b2e0
    b       0x211b464
    b       0x211b5b0
    b       0x211b8ec
    b       0x211bc24
    b       0x211bebc
    b       0x211c054
    b       0x211c2b0
    b       0x211ba4c
    b       0x211c1fc
    b       0x211abe4
    b       0x211ab40
    b       0x211ab54
    b       0x211ab9c
    b       0x211cad8
    b       0x211cb10
    b       0x211cc28
    b       0x211cd10
    b       0x211ce14
    b       0x211aa34
    b       0x211aac4
    b       0x211a9d8
    b       0x211c380
    b       0x211c814
    b       0x211c588
    b       0x211c638
    b       0x211c42c
    b       0x211c4d8
    b       0x211c6ec
    b       0x211c8c4
    b       0x211c974
    b       0x211ca24
    b       0x211b228
    b       0x211b260
    b       0x211ae34
    b       0x211ae58
    b       0x211cf20
    b       0x211cfb8
    b       0x211ab08
    ldrb    r1, [r9, #471]  ; 0x1d7
    ldrb    r2, [r9, #470]  ; 0x1d6
    mov     r0, r9
    add     r1, r1, r1, lsl #1
    add     r1, r2, r1
    and     r1, r1, #255    ; 0xff
    add     r2, r9, #472    ; 0x1d8
    bl      0x211f2dc
    mov     r1, r8
    add     r0, r9, #416    ; 0x1a0
    bl      0x206c5d8
    add     r0, r9, #256    ; 0x100
    ldrh    r1, [r0, #216]  ; 0xd8
    cmp     r1, #0
    beq     0x211aa30
    ldrb    r3, [r9, #617]  ; 0x269
    mov     r1, r8
    mov     r2, r8
    str     r3, [sp]
    ldrh    r3, [r0, #216]  ; 0xd8
    add     r0, r9, #416    ; 0x1a0
    bl      0x206c300
    b       0x211abb4
    mov     r1, r8
    add     r0, r9, #520    ; 0x208
    mov     r2, #96 ; 0x60
    bl      0x2007988
    ldrb    r0, [r9, #456]  ; 0x1c8
    add     r1, r9, #512    ; 0x200
    mov     r5, #4
    cmp     r0, #0
    streq   r6, [r9, #520]  ; 0x208
    movne   r0, #9
    strne   r0, [r9, #520]  ; 0x208
    add     r0, r9, #256    ; 0x100
    ldrh    r2, [r0, #216]  ; 0xd8
    ldr     r0, [r9, #4]
    strh    r2, [r1, #12]
    ldr     r2, [r0]
    add     r1, r9, #520    ; 0x208
    ldr     r2, [r2, #60]   ; 0x3c
    blx     r2
    cmp     r0, #0
    beq     0x211d08c
    mov     r0, r9
    mov     r2, r5
    mov     r1, #10
    bl      0x2119ff8
    str     sl, [sp]
    mov     r1, r0
    ldr     r0, [pc, #3324] ; 0x211b7a4
    ldrb    r3, [r9, #456]  ; 0x1c8
    ldr     r0, [r0]
    mov     r2, r5
    bl      0x211401c
    ldr     r1, [r9, #244]  ; 0xf4
    ldr     r0, [r9, #256]  ; 0x100
    add     r5, sl, r1
    b       0x211d06c
    mov     r1, r8
    add     r0, r9, #520    ; 0x208
    mov     r2, #96 ; 0x60
    bl      0x2007988
    mov     r1, #14
    str     r1, [r9, #520]  ; 0x208
    ldr     r0, [r9, #4]
    add     r2, r9, #512    ; 0x200
    mov     r1, #1
    strh    r1, [r2, #12]
    ldr     r2, [r0]
    add     r1, r9, #520    ; 0x208
    ldr     r2, [r2, #60]   ; 0x3c
    blx     r2
    cmp     r0, #0
    beq     0x211d08c
    b       0x211c2a0
    mov     r0, r9
    ldr     r1, [r0]
    ldr     r1, [r1, #88]   ; 0x58
    blx     r1
    cmp     r0, #0
    bne     0x211d08c
    ldr     r5, [r9, #4]
    mov     r1, r8
    mov     r0, r5
    bl      0x2041f2c
    mov     r0, r5
    mov     r1, #1
    bl      0x2041f2c
    b       0x211c2a0
    mov     r0, r9
    ldr     r1, [r0]
    ldr     r1, [r1, #76]   ; 0x4c
    blx     r1
    b       0x211c1ec
    mov     r5, #8
    mov     r0, r8
    mov     r1, r5
    bl      0x20f1560
    mov     r0, #1
    mov     r1, r5
    bl      0x20f1560
    ldr     r1, [r9, #244]  ; 0xf4
    ldr     r0, [r9, #256]  ; 0x100
    add     r5, r8, r1
    ldr     r1, [r9, #264]  ; 0x108
    add     r0, r0, r5, lsr #8
    bl      0x201fbc8
    ldr     r0, [r9, #252]  ; 0xfc
    and     r2, r5, #255    ; 0xff
    ldr     r1, [r0, r1, lsl #2]
    mov     r0, #1
    strb    r0, [r1, r2, lsl #2]
    add     r0, r9, #512    ; 0x200
    ldrh    r1, [r0, #4]
    cmp     r1, #0
    subne   r1, r1, #1
    strhne  r1, [r0, #4]
    bne     0x211d08c
    ldr     r1, [r9, #244]  ; 0xf4
    ldr     r0, [r9, #256]  ; 0x100
    add     r5, r1, #0
    ldr     r1, [r9, #264]  ; 0x108
    add     r0, r0, r5, lsr #8
    bl      0x201fbc8
    ldr     r0, [r9, #252]  ; 0xfc
    ldr     r2, [r0, r1, lsl #2]
    and     r1, r5, #255    ; 0xff
    mov     r0, #1
    strb    r0, [r2, r1, lsl #2]
    b       0x211d08c
    b       0x211ac2c
    add     r0, r9, r8, lsl #2
    ldr     r1, [r0, #60]   ; 0x3c
    cmp     r1, #0
    beq     0x211ac28
    ldr     r0, [pc, #2980] ; 0x211b7a4
    ldr     r0, [r0]
    bl      0x2059004
    cmp     r0, #0
    bne     0x211ac28
    add     r0, r9, r8, lsl #2
    ldr     r1, [r0, #60]   ; 0x3c
    ldr     r0, [pc, #2952] ; 0x211b7a4
    mov     r2, sl
    ldr     r0, [r0]
    mov     r3, sl
    bl      0x2059038
    add     r8, r8, #1
    cmp     r8, #30
    blt     0x211abe8
    b       0x211abb4
    ldr     r1, [pc, #2920] ; 0x211b7a8
    mov     r2, r8
    add     r0, r9, #268    ; 0x10c
    bl      0x2119f34
    ldr     r1, [pc, #2908] ; 0x211b7ac
    mov     r2, #1
    add     r0, r9, #268    ; 0x10c
    bl      0x2119f34
    ldr     r1, [pc, #2896] ; 0x211b7b0
    add     r0, r9, #268    ; 0x10c
    mov     r2, r6
    bl      0x2119f34
    ldr     r1, [pc, #2884] ; 0x211b7b4
    add     r0, r9, #268    ; 0x10c
    mov     r2, #3
    bl      0x2119f34
    ldr     r1, [pc, #2872] ; 0x211b7b8
    add     r0, r9, #268    ; 0x10c
    mov     r2, #4
    bl      0x2119f34
    ldr     r1, [pc, #2860] ; 0x211b7bc
    add     r0, r9, #268    ; 0x10c
    mov     r2, #5
    bl      0x2119f34
    ldr     r1, [pc, #2848] ; 0x211b7c0
    add     r0, r9, #268    ; 0x10c
    mov     r2, #6
    bl      0x2119f34
    add     r0, r9, #268    ; 0x10c
    ldr     r1, [pc, #2832] ; 0x211b7c4
    mov     r2, #16
    b       0x211beb4
    b       0x211c1ec
    mov     r7, #8
    mov     r0, r9
    mov     r1, r8
    mov     r2, r7
    bl      0x2119ff8
    mov     r5, r0
    mov     fp, #24
    str     fp, [sp]
    mov     r0, #64 ; 0x40
    str     r0, [sp, #4]
    mov     r6, #300        ; 0x12c
    str     r6, [sp, #8]
    str     r8, [sp, #12]
    ldr     r3, [r9, #60]   ; 0x3c
    mov     r0, r9
    mov     r1, r5
    mov     r2, #1
    bl      0x211a040
    str     r8, [sp]
    str     r8, [sp, #4]
    str     r6, [sp, #8]
    str     r8, [sp, #12]
    ldr     r3, [r9, #64]   ; 0x40
    mov     r0, r9
    mov     r1, r5
    mov     r2, #2
    bl      0x211a040
    mov     r0, #232        ; 0xe8
    stm     sp, {r0, r8}
    str     r6, [sp, #8]
    str     r8, [sp, #12]
    ldr     r3, [r9, #68]   ; 0x44
    mov     r0, r9
    mov     r1, r5
    mov     r2, #3
    bl      0x211a040
    str     fp, [sp]
    str     r8, [sp, #4]
    str     r6, [sp, #8]
    str     r8, [sp, #12]
    ldr     r3, [r9, #72]   ; 0x48
    mov     r0, r9
    mov     r1, r5
    mov     r2, #4
    bl      0x211a040
    str     r7, [sp]
    mov     r0, #104        ; 0x68
    str     r0, [sp, #4]
    mov     r6, #200        ; 0xc8
    str     r6, [sp, #8]
    str     r8, [sp, #12]
    ldr     r3, [r9, #76]   ; 0x4c
    mov     r0, r9
    mov     r1, r5
    mov     r2, #5
    bl      0x211a040
    mov     fp, #80 ; 0x50
    str     fp, [sp]
    str     fp, [sp, #4]
    str     r6, [sp, #8]
    str     r8, [sp, #12]
    ldr     r3, [r9, #80]   ; 0x50
    mov     r0, r9
    mov     r1, r5
    mov     r2, #6
    bl      0x211a040
    mov     r0, #184        ; 0xb8
    stm     sp, {r0, fp}
    str     r6, [sp, #8]
    str     r8, [sp, #12]
    ldr     r3, [r9, #84]   ; 0x54
    mov     r0, r9
    mov     r1, r5
    mov     r2, #7
    bl      0x211a040
    mov     r0, #96 ; 0x60
    str     r0, [sp]
    mov     r0, #112        ; 0x70
    str     r0, [sp, #4]
    mov     r0, #148        ; 0x94
    str     r0, [sp, #8]
    str     r8, [sp, #12]
    ldr     r3, [r9, #124]  ; 0x7c
    mov     r0, r9
    mov     r1, r5
    mov     r2, r7
    bl      0x211a040
    ldr     r0, [pc, #2432] ; 0x211b7a0
    stm     sp, {r7, r8}
    ldr     r0, [r0]
    mov     r1, #1
    mov     r3, r5
    mov     r2, #9
    b       0x211c378
    ldr     r0, [pc, #2404] ; 0x211b7a0
    mov     r1, #9
    ldr     r0, [r0]
    bl      0x210e7d0
    movs    r4, r0
    strbne  r8, [r4, #16]
    movne   r0, #1
    strbne  r0, [r4, #18]
    b       0x211abb4
    ldr     r0, [pc, #2368] ; 0x211b7a0
    mov     r1, #9
    ldr     r0, [r0]
    bl      0x210e7d0
    movs    r4, r0
    movne   r0, #1
    strbne  r0, [r4, #16]
    b       0x211abb4
    ldr     r1, [pc, #2376] ; 0x211b7c8
    add     r0, r9, #268    ; 0x10c
    mov     r2, #13
    b       0x211c1e8
    b       0x211c1ec
    mov     r0, r9
    mov     r1, #1
    mov     r2, #9
    bl      0x2119ff8
    mov     r5, r0
    b       0x211af9c
    add     r0, r9, r8
    str     r0, [sp, #24]
    add     r0, r8, r8, lsl #1
    mov     r6, #1
    mov     r7, #0
    str     r0, [sp, #28]
    b       0x211af88
    rsb     r0, r7, #2
    bl      0x201f1c4
    mov     r3, r1
    mov     r2, r0
    ldr     r1, [pc, #2292] ; 0x211b7cc
    mov     r0, sl
    bl      0x2028820
    str     r0, [sp, #20]
    ldr     r0, [sp, #24]
    mov     fp, r1
    ldrb    r1, [r0, #464]  ; 0x1d0
    ldrb    r0, [r0, #467]  ; 0x1d3
    sub     r0, r1, r0
    bl      0x201f1c4
    ldr     r2, [sp, #20]
    mov     r3, fp
    bl      0x2020af8
    bl      0x201fe20
    ldr     r2, [pc, #2240] ; 0x211b7d0
    smull   r3, r1, r2, r0
    lsr     r2, r0, #31
    add     r1, r2, r1, asr #2
    mov     r2, #10
    smull   r1, r3, r2, r1
    subs    r1, r0, r1
    lsl     r0, r7, #3
    add     r0, r0, #56     ; 0x38
    movne   r6, sl
    add     r0, r0, r8, lsl #6
    cmp     r7, #2
    str     r0, [sp]
    moveq   r6, sl
    mov     r0, #160        ; 0xa0
    mul     r0, r6, r0
    add     r0, r0, #48     ; 0x30
    str     r0, [sp, #4]
    mov     r0, #35 ; 0x23
    str     r0, [sp, #8]
    str     r1, [sp, #12]
    ldr     r2, [sp, #28]
    add     r3, r7, #1
    add     r2, r3, r2
    ldr     r3, [r9, #112]  ; 0x70
    mov     r0, r9
    mov     r1, r5
    and     r3, r3, #255    ; 0xff
    bl      0x211a040
    add     r0, r7, #1
    lsl     r0, r0, #16
    lsr     r7, r0, #16
    cmp     r7, #3
    bcc     0x211aec0
    add     r0, r8, #1
    lsl     r0, r0, #16
    lsr     r8, r0, #16
    cmp     r8, #3
    bcc     0x211aea4
    b       0x211abb4
    ldr     r1, [pc, #2084] ; 0x211b7d4
    add     r0, r9, #268    ; 0x10c
    mov     r2, #14
    b       0x211ae84
    mov     r0, r9
    mov     r1, #14
    bl      0x211a10c
    mov     r0, r9
    mov     r1, r6
    bl      0x211a0d0
    b       0x211c1ec
    mov     r5, #14
    mov     r0, r9
    mov     r2, r5
    mov     r1, r6
    bl      0x2119ff8
    ldrb    r1, [r9, #471]  ; 0x1d7
    mov     r3, #8
    mov     r2, r5
    lsl     r1, r1, #6
    add     r1, r1, #32
    str     r1, [sp]
    mov     r1, r0
    str     r3, [sp, #4]
    mov     r0, #147        ; 0x93
    str     r0, [sp, #8]
    str     r8, [sp, #12]
    ldr     r3, [r9, #116]  ; 0x74
    mov     r0, r9
    b       0x211c278
    ldr     r1, [pc, #1968] ; 0x211b7d8
    add     r0, r9, #268    ; 0x10c
    mov     r2, #10
    bl      0x2119f34
    ldr     r1, [pc, #1956] ; 0x211b7dc
    add     r0, r9, #268    ; 0x10c
    mov     r2, #7
    bl      0x2119f34
    ldr     r1, [pc, #1944] ; 0x211b7e0
    add     r0, r9, #268    ; 0x10c
    mov     r2, #11
    bl      0x2119f34
    ldr     r1, [pc, #1932] ; 0x211b7e4
    add     r0, r9, #268    ; 0x10c
    mov     r2, #8
    bl      0x2119f34
    ldr     r1, [pc, #1920] ; 0x211b7e8
    add     r0, r9, #268    ; 0x10c
    mov     r2, #12
    bl      0x2119f34
    add     r0, r9, #268    ; 0x10c
    ldr     r1, [pc, #1904] ; 0x211b7ec
    mov     r2, #9
    b       0x211beb4
    mov     r0, r9
    mov     r1, #10
    bl      0x211a10c
    mov     r0, r9
    mov     r1, #11
    bl      0x211a10c
    mov     r0, r9
    mov     r1, #12
    bl      0x211a10c
    mov     r0, r9
    mov     r1, #7
    bl      0x211a10c
    mov     r0, r9
    mov     r1, #8
    bl      0x211a10c
    mov     r0, r9
    mov     r1, #9
    bl      0x211a10c
    mov     r0, r9
    mov     r1, #4
    b       0x211c2d0
    mov     r0, r9
    mov     r1, #4
    mov     r2, #6
    mov     r6, #16
    bl      0x2119ff8
    mov     r5, r0
    mov     r7, #190        ; 0xbe
    b       0x211b14c
    add     r0, r9, r8
    ldrb    r0, [r0, #464]  ; 0x1d0
    lsl     r1, r8, #6
    add     r1, r1, #40     ; 0x28
    cmp     r0, #1
    str     r1, [sp]
    movhi   r0, #1
    movls   r0, sl
    stmib   sp, {r6, r7}
    add     r0, r0, r0, lsl #1
    add     r1, r8, #7
    add     r0, r1, r0
    str     sl, [sp, #12]
    add     r0, r9, r0, lsl #2
    ldr     r3, [r0, #60]   ; 0x3c
    mov     r0, r9
    mov     r1, r5
    add     r2, r8, #1
    bl      0x211a040
    add     r0, r8, #1
    lsl     r0, r0, #16
    lsr     r8, r0, #16
    cmp     r8, #3
    bcc     0x211b0f4
    mov     r6, #0
    ldr     fp, [pc, #1600] ; 0x211b7a0
    mov     r8, #1
    mov     r7, r6
    b       0x211b21c
    add     r0, r9, r7
    ldrb    r0, [r0, #464]  ; 0x1d0
    add     r4, r7, #7
    mov     r1, r5
    cmp     r0, #0
    movne   r0, r8
    moveq   r0, #0
    add     r3, r0, r0, lsl #1
    lsl     r0, r7, #6
    add     r0, r0, #40     ; 0x28
    str     r0, [sp]
    mov     r0, #16
    str     r0, [sp, #4]
    mov     r0, #40 ; 0x28
    str     r0, [sp, #8]
    add     r3, r4, r3
    str     r6, [sp, #12]
    add     r3, r9, r3, lsl #2
    ldr     r3, [r3, #60]   ; 0x3c
    mov     r0, r9
    add     r2, r7, #4
    bl      0x211a040
    add     r0, r7, #1
    add     r2, r7, #6
    stm     sp, {r0, r6}
    lsl     r2, r2, #16
    ldr     r0, [fp]
    mov     r1, r8
    lsr     r2, r2, #16
    mov     r3, r5
    bl      0x210fc74
    add     r1, r7, #6
    lsl     r1, r1, #16
    ldr     r0, [fp]
    lsr     r1, r1, #16
    bl      0x210e7d0
    mov     r4, r0
    add     r0, r9, r7
    ldrb    r0, [r0, #464]  ; 0x1d0
    cmp     r0, #0
    add     r0, r7, #1
    strbne  r8, [r4, #18]
    lsl     r0, r0, #16
    strbeq  r6, [r4, #18]
    lsr     r7, r0, #16
    cmp     r7, #3
    bcc     0x211b168
    b       0x211b834
    b       0x211b254
    add     r0, r8, #6
    lsl     r1, r0, #16
    ldr     r0, [r5]
    lsr     r1, r1, #16
    bl      0x210e7d0
    movs    r4, r0
    add     r0, r8, #1
    lsl     r0, r0, #16
    strbne  sl, [r4, #16]
    lsr     r8, r0, #16
    cmp     r8, #3
    bcc     0x211b22c
    b       0x211abb4
    b       0x211b290
    add     r0, r8, #6
    lsl     r1, r0, #16
    ldr     r0, [r5]
    lsr     r1, r1, #16
    bl      0x210e7d0
    movs    r4, r0
    movne   r0, #1
    strbne  r0, [r4, #16]
    add     r0, r8, #1
    lsl     r0, r0, #16
    lsr     r8, r0, #16
    cmp     r8, #3
    bcc     0x211b264
    b       0x211abb4
    add     r5, sp, #44     ; 0x2c
    mov     r0, r8
    mov     r1, r5
    mov     r2, #32
    bl      0x200787c
    ldrb    r2, [r9, #471]  ; 0x1d7
    ldr     r1, [pc, #1332] ; 0x211b7f0
    mov     r0, r5
    bl      0x2023c40
    mov     r1, r5
    add     r0, r9, #268    ; 0x10c
    mov     r2, #15
    bl      0x2119f34
    add     r0, r9, #268    ; 0x10c
    ldr     r1, [pc, #1304] ; 0x211b7f4
    mov     r2, #17
    b       0x211beb4
    mov     r0, r9
    mov     r1, #15
    bl      0x211a10c
    mov     r0, r9
    mov     r1, #17
    bl      0x211a10c
    mov     r0, r9
    mov     r1, #5
    b       0x211c2d0
    mov     r0, r9
    mov     r2, r6
    mov     r1, #5
    bl      0x2119ff8
    mov     r4, r0
    mov     r0, #104        ; 0x68
    str     r0, [sp]
    mov     r0, #88 ; 0x58
    str     r0, [sp, #4]
    mov     r0, #149        ; 0x95
    str     r0, [sp, #8]
    str     r8, [sp, #12]
    ldr     r3, [r9, #120]  ; 0x78
    mov     r0, r9
    mov     r1, r4
    mov     r2, #1
    bl      0x211a040
    mov     r5, #96 ; 0x60
    str     r5, [sp]
    mov     r0, #112        ; 0x70
    str     r0, [sp, #4]
    mov     r0, #120        ; 0x78
    str     r0, [sp, #8]
    str     r8, [sp, #12]
    ldr     r3, [r9, #128]  ; 0x80
    mov     r0, r9
    mov     r1, r4
    mov     r2, r6
    bl      0x211a040
    ldr     r0, [pc, #1060] ; 0x211b7a4
    mov     r1, r4
    ldr     r0, [r0]
    mov     r2, r6
    mov     r3, r8
    bl      0x2113a80
    mov     r3, r4
    str     r6, [sp]
    mov     r0, #1
    mov     r6, #11
    ldr     r4, [pc, #1016] ; 0x211b7a0
    str     r0, [sp, #4]
    mov     r1, r0
    ldr     r0, [r4]
    mov     r2, r6
    bl      0x210fc74
    ldr     r0, [r4]
    mov     r1, r6
    bl      0x210e7d0
    movs    r4, r0
    beq     0x211b3f0
    strb    r8, [r4, #16]
    mov     r2, #1
    mov     r1, r5
    strb    r2, [r4, #18]
    mov     r5, #52 ; 0x34
    mov     r2, #124        ; 0x7c
    mov     r3, #56 ; 0x38
    str     r5, [sp]
    bl      0x210e674
    b       0x211b834
    ldr     r1, [pc, #1020] ; 0x211b7f8
    add     r0, r9, #268    ; 0x10c
    mov     r2, #18
    bl      0x2119f34
    bl      0x2023c6c
    ldr     r2, [pc, #1004] ; 0x211b7fc
    mov     r3, #6
    smull   r1, r5, r2, r0
    add     r5, r5, r0, lsr #31
    smull   r1, r2, r3, r5
    sub     r5, r0, r1
    add     r6, r5, #5
    cmp     r6, #10
    beq     0x211b460
    add     r5, sp, #44     ; 0x2c
    mov     r0, r8
    mov     r1, r5
    mov     r2, #32
    bl      0x200787c
    ldr     r1, [pc, #952]  ; 0x211b800
    mov     r0, r5
    mov     r2, r6
    bl      0x2023c40
    mov     r1, r5
    add     r0, r9, #268    ; 0x10c
    mov     r2, #19
    bl      0x2119f34
    b       0x211abb4
    mov     r0, r9
    mov     r1, #18
    bl      0x211a10c
    mov     r0, r9
    mov     r1, #19
    bl      0x211a10c
    mov     r0, r9
    mov     r1, #7
    b       0x211c2d0
    mov     r0, r9
    mov     r2, #1
    mov     r1, #7
    bl      0x2119ff8
    mov     r5, r0
    mov     r0, #16
    str     r0, [sp]
    mov     r0, #128        ; 0x80
    str     r0, [sp, #4]
    mov     r0, #148        ; 0x94
    str     r0, [sp, #8]
    str     r8, [sp, #12]
    ldr     r3, [r9, #132]  ; 0x84
    mov     r0, r9
    mov     r1, r5
    mov     r2, #1
    bl      0x211a040
    ldr     r3, [r9, #136]  ; 0x88
    cmp     r3, #0
    beq     0x211b504
    ldr     r6, [pc, #708]  ; 0x211b7a4
    mov     r1, r5
    ldr     r0, [r6]
    mov     r2, #1
    and     r3, r3, #255    ; 0xff
    bl      0x2113890
    ldr     r0, [r6]
    mov     r1, r5
    mov     r2, #1
    mov     r3, r8
    bl      0x2113944
    mov     r1, #1
    str     r1, [sp]
    mov     r6, #0
    ldr     r0, [pc, #648]  ; 0x211b7a0
    str     r6, [sp, #4]
    ldr     r0, [r0]
    mov     r3, r5
    mov     r2, #12
    mov     r7, r1
    bl      0x210fc74
    cmp     r4, #0
    strbne  r6, [r4, #16]
    ldr     r1, [r9, #244]  ; 0xf4
    ldr     r0, [r9, #256]  ; 0x100
    add     r5, r1, #0
    ldr     r1, [r9, #264]  ; 0x108
    add     r0, r0, r5, lsr #8
    bl      0x201fbc8
    ldr     r0, [r9, #252]  ; 0xfc
    ldr     r1, [r0, r1, lsl #2]
    and     r0, r5, #255    ; 0xff
    strb    r7, [r1, r0, lsl #2]
    b       0x211d08c
    ldr     r1, [pc, #668]  ; 0x211b804
    add     r0, r9, #268    ; 0x10c
    mov     r2, #20
    bl      0x2119f34
    bl      0x2023c6c
    ldr     r3, [pc, #596]  ; 0x211b7d0
    lsr     r1, r0, #31
    smull   r2, r5, r3, r0
    add     r5, r1, r5, asr #2
    mov     r3, #10
    smull   r1, r2, r3, r5
    sub     r5, r0, r1
    add     r0, r5, #1
    lsl     r2, r0, #5
    ldr     r0, [pc, #616]  ; 0x211b808
    add     r1, r9, #48     ; 0x30
    mov     r3, #32
    str     r8, [sp]
    bl      0x20f3218
    b       0x211d060
    mov     r0, r9
    mov     r1, #20
    bl      0x211a10c
    ldr     r1, [r9, #180]  ; 0xb4
    cmp     r1, #0
    beq     0x211b5e8
    ldr     r0, [pc, #468]  ; 0x211b7a4
    ldr     r0, [r0]
    bl      0x20591e8
    ldr     r0, [pc, #456]  ; 0x211b7a4
    ldr     r1, [r9, #180]  ; 0xb4
    ldr     r0, [r0]
    bl      0x2058ee0
    str     r8, [r9, #180]  ; 0xb4
    mov     r0, r9
    mov     r1, #8
    bl      0x211a0d0
    mov     r1, #1
    add     r0, r9, #48     ; 0x30
    bl      0x20f338c
    add     r0, r9, #48     ; 0x30
    bl      0x20f33fc
    ldr     r0, [r9, #244]  ; 0xf4
    ldr     r1, [r9, #264]  ; 0x108
    add     r5, sl, r0
    ldr     r0, [r9, #256]  ; 0x100
    str     sl, [r9, #48]   ; 0x30
    add     r0, r0, r5, lsr #8
    str     sl, [r9, #52]   ; 0x34
    strb    sl, [r9, #56]   ; 0x38
    strb    sl, [r9, #57]   ; 0x39
    strb    sl, [r9, #58]   ; 0x3a
    bl      0x201fbc8
    and     r2, r5, #255    ; 0xff
    ldr     r0, [r9, #252]  ; 0xfc
    b       0x211cf1c
    mov     r0, r9
    mov     r2, r6
    mov     r1, #8
    bl      0x2119ff8
    mov     r5, r0
    mov     r0, #40 ; 0x28
    str     r0, [sp]
    mov     r0, #160        ; 0xa0
    str     r0, [sp, #4]
    mov     r0, #147        ; 0x93
    str     r0, [sp, #8]
    str     r8, [sp, #12]
    ldr     r3, [r9, #140]  ; 0x8c
    mov     r0, r9
    mov     r1, r5
    mov     r2, #1
    bl      0x211a040
    ldr     r0, [r9, #180]  ; 0xb4
    cmp     r0, #0
    bne     0x211b6bc
    ldr     r7, [pc, #268]  ; 0x211b7a4
    mov     r2, r6
    ldr     r0, [r7]
    mov     r1, #5
    bl      0x2059630
    mov     r1, r0
    str     r1, [r9, #180]  ; 0xb4
    ldr     r0, [r7]
    mov     r2, r8
    mov     r3, r8
    bl      0x2059038
    ldr     r7, [pc, #224]  ; 0x211b7a4
    ldr     r3, [r9, #180]  ; 0xb4
    mov     r8, #2
    ldr     r0, [r7]
    mov     r1, r5
    mov     r2, r8
    and     r3, r3, #255    ; 0xff
    bl      0x21137dc
    mov     r6, #0
    str     r6, [sp]
    ldr     r0, [r7]
    mov     r1, r5
    mov     r2, r8
    mov     r3, r6
    bl      0x2113d88
    mov     r0, #162        ; 0xa2
    str     r0, [sp]
    ldr     r0, [r7]
    mov     r1, r5
    mov     r2, r8
    mov     r3, #64 ; 0x40
    bl      0x2113b78
    ldr     r0, [r7]
    mov     r1, r5
    mov     r2, r8
    mov     r3, #10
    bl      0x21139bc
    mov     r0, #24
    str     r0, [sp]
    ldr     r0, [r7]
    mov     r1, r5
    mov     r2, r8
    mov     r3, #191        ; 0xbf
    bl      0x2113d08
    mov     r1, r5
    mov     r5, #1
    str     r5, [sp]
    ldr     r0, [r7]
    mov     r2, r8
    mov     r3, r8
    bl      0x2113ec0
    ldrb    r0, [r9, #513]  ; 0x201
    cmp     r0, #2
    bne     0x211b810
    add     r7, sp, #180    ; 0xb4
    ldr     r1, [pc, #148]  ; 0x211b80c
    mov     r0, r7
    bl      0x2023c40
    stm     sp, {r5, r6}
    str     r6, [sp, #8]
    str     r6, [sp, #12]
    str     r6, [sp, #16]
    ldr     r1, [r9, #180]  ; 0xb4
    mov     r0, r7
    b       0x211b828
    andeq   sl, r9, #16, 2
    andeq   r9, r9, #212, 28        ; 0xd40
    andeq   r9, r9, #180, 28        ; 0xb40
    andeq   r9, r9, #56, 30 ; 0xe0
    andseq  r3, r2, #140, 14        ; 0x2300000
    andseq  r3, r2, #156, 14        ; 0x2700000
    andseq  r3, r2, #172, 14        ; 0x2b00000
    andseq  r3, r2, #188, 14        ; 0x2f00000
    andseq  r3, r2, #204, 14        ; 0x3300000
    andseq  r3, r2, #220, 14        ; 0x3700000
    andseq  r3, r2, #236, 14        ; 0x3b00000
    andseq  r3, r2, #252, 14        ; 0x3f00000
    andseq  r3, r2, #12, 16 ; 0xc0000
    eormi   r0, r4, r0
    strbtvs r6, [r6], -r7, ror #12
    andseq  r3, r2, #28, 16 ; 0x1c0000
    andseq  r3, r2, #44, 16 ; 0x2c0000
    andseq  r3, r2, #60, 16 ; 0x3c0000
    andseq  r3, r2, #76, 16 ; 0x4c0000
    andseq  r3, r2, #92, 16 ; 0x5c0000
    andseq  r3, r2, #108, 16        ; 0x6c0000
    andseq  r3, r2, #124, 16        ; 0x7c0000
    andseq  r3, r2, #140, 16        ; 0x8c0000
    andseq  r3, r2, #156, 16        ; 0x9c0000
    andseq  r3, r2, #172, 16        ; 0xac0000
    bcs     0xbc62b0
    andseq  r3, r2, #188, 16        ; 0xbc0000
    andseq  r3, r2, #204, 16        ; 0xcc0000
    andseq  r3, r2, #220, 16        ; 0xdc0000
    andseq  r3, r2, #0, 18
    stm     sp, {r5, r6}
    str     r6, [sp, #8]
    str     r6, [sp, #12]
    str     r6, [sp, #16]
    ldr     r0, [r9, #48]   ; 0x30
    ldr     r1, [r9, #180]  ; 0xb4
    mov     r2, r5
    mov     r3, r5
    bl      0x20f2304
    ldr     r1, [r9, #244]  ; 0xf4
    ldr     r0, [r9, #256]  ; 0x100
    add     r5, r1, #0
    ldr     r1, [r9, #264]  ; 0x108
    add     r0, r0, r5, lsr #8
    bl      0x201fbc8
    ldr     r0, [r9, #252]  ; 0xfc
    and     r2, r5, #255    ; 0xff
    b       0x211d080
    ldrb    r0, [r9, #513]  ; 0x201
    mov     r2, #21
    cmp     r0, #2
    bne     0x211b870
    ldr     r1, [pc, #3880] ; 0x211c798
    b       0x211b874
    ldr     r1, [pc, #3876] ; 0x211c79c
    add     r0, r9, #268    ; 0x10c
    bl      0x2119f34
    ldrb    r0, [r9, #513]  ; 0x201
    cmp     r0, #3
    bne     0x211b8bc
    add     r0, r9, #256    ; 0x100
    ldrh    r1, [r0, #228]  ; 0xe4
    ldr     r0, [pc, #3848] ; 0x211c7a0
    bl      0x20ee034
    str     sl, [sp]
    str     sl, [sp, #4]
    mov     r1, #1
    str     r1, [sp, #8]
    str     r1, [sp, #12]
    ldrh    r2, [r0, #34]   ; 0x22
    ldr     r0, [r9, #36]   ; 0x24
    ldr     r1, [pc, #3816] ; 0x211c7a4
    b       0x211b8e0
    str     sl, [sp]
    str     sl, [sp, #4]
    mov     r0, #1
    str     r0, [sp, #8]
    str     r0, [sp, #12]
    add     r0, r9, #256    ; 0x100
    ldrh    r2, [r0, #216]  ; 0xd8
    ldr     r0, [r9, #24]
    ldr     r1, [pc, #3780] ; 0x211c7a8
    add     r3, r9, #408    ; 0x198
    bl      0x20f55b4
    b       0x211abb4
    mov     r0, r9
    mov     r1, #21
    bl      0x211a10c
    mov     r0, r9
    mov     r1, #9
    bl      0x211a0d0
    add     r0, r9, #408    ; 0x198
    sub     r1, r8, #1
    bl      0x20f57b0
    b       0x211d060
    mov     r0, r9
    mov     r2, r6
    mov     r1, #9
    bl      0x2119ff8
    mov     r5, r0
    mov     r0, #40 ; 0x28
    str     r0, [sp]
    mov     r0, #136        ; 0x88
    str     r0, [sp, #4]
    mov     r7, #147        ; 0x93
    str     r7, [sp, #8]
    str     r8, [sp, #12]
    ldr     r3, [r9, #144]  ; 0x90
    mov     r0, r9
    mov     r1, r5
    mov     r2, #1
    bl      0x211a040
    ldrb    r0, [r9, #513]  ; 0x201
    cmp     r0, #3
    add     r0, r9, #256    ; 0x100
    bne     0x211b9a8
    ldrh    r1, [r0, #228]  ; 0xe4
    ldr     r0, [pc, #3628] ; 0x211c7a0
    bl      0x20ee034
    ldrh    r0, [r0, #34]   ; 0x22
    add     r1, r9, #408    ; 0x198
    bl      0x20f5738
    mov     r3, r0
    mov     r0, #60 ; 0x3c
    str     r0, [sp]
    mov     r0, #152        ; 0x98
    stmib   sp, {r0, r7}
    mov     r1, r5
    mov     r2, r6
    str     r8, [sp, #12]
    mov     r0, r9
    b       0x211b9d8
    ldrh    r0, [r0, #216]  ; 0xd8
    add     r1, r9, #408    ; 0x198
    bl      0x20f5738
    mov     r1, #52 ; 0x34
    str     r1, [sp]
    mov     r1, #144        ; 0x90
    stmib   sp, {r1, r7}
    mov     r3, r0
    mov     r0, r9
    str     r8, [sp, #12]
    mov     r1, r5
    mov     r2, r6
    bl      0x211a040
    ldrb    r0, [r9, #513]  ; 0x201
    mov     r6, #1
    cmp     r0, #2
    bne     0x211b9f8
    ldr     r0, [pc, #3512] ; 0x211c7ac
    ldr     r1, [pc, #3512] ; 0x211c7b0
    b       0x211ba14
    cmp     r0, #3
    bne     0x211ba0c
    ldr     r0, [pc, #3492] ; 0x211c7ac
    ldr     r1, [pc, #3496] ; 0x211c7b4
    b       0x211ba14
    ldr     r0, [pc, #3480] ; 0x211c7ac
    ldr     r1, [pc, #3488] ; 0x211c7b8
    bl      0x202cf6c
    ldr     r1, [r9, #244]  ; 0xf4
    ldr     r0, [r9, #256]  ; 0x100
    add     r5, r1, #0
    ldr     r1, [r9, #264]  ; 0x108
    add     r0, r0, r5, lsr #8
    b       0x211cc10
    add     r0, r9, #408    ; 0x198
    bl      0x20f5868
    cmp     r0, #0
    bne     0x211d08c
    b       0x211c1ec
    ldr     r1, [pc, #3440] ; 0x211c7bc
    b       0x211c1e0
    mov     r0, r9
    mov     r1, #13
    b       0x211c204
    mov     r0, r9
    mov     r2, r6
    mov     r1, #13
    bl      0x2119ff8
    mov     r5, r0
    mov     r0, #40 ; 0x28
    str     r0, [sp]
    mov     r0, #160        ; 0xa0
    str     r0, [sp, #4]
    mov     r0, #147        ; 0x93
    str     r0, [sp, #8]
    str     r8, [sp, #12]
    ldr     r3, [r9, #140]  ; 0x8c
    mov     r0, r9
    mov     r1, r5
    mov     r2, #1
    bl      0x211a040
    ldr     r0, [r9, #180]  ; 0xb4
    cmp     r0, #0
    bne     0x211bad4
    ldr     r7, [pc, #-780] ; 0x211b7a4
    mov     r2, r6
    ldr     r0, [r7]
    mov     r1, #5
    bl      0x2059630
    mov     r1, r0
    str     r1, [r9, #180]  ; 0xb4
    ldr     r0, [r7]
    mov     r2, r8
    mov     r3, r8
    bl      0x2059038
    ldr     r7, [pc, #-824] ; 0x211b7a4
    ldr     r3, [r9, #180]  ; 0xb4
    mov     r8, #2
    ldr     r0, [r7]
    mov     r1, r5
    mov     r2, r8
    and     r3, r3, #255    ; 0xff
    bl      0x21137dc
    mov     r6, #0
    str     r6, [sp]
    ldr     r0, [r7]
    mov     r1, r5
    mov     r2, r8
    mov     r3, r6
    bl      0x2113d88
    mov     r0, #162        ; 0xa2
    str     r0, [sp]
    ldr     r0, [r7]
    mov     r1, r5
    mov     r2, r8
    mov     r3, #64 ; 0x40
    bl      0x2113b78
    ldr     r0, [r7]
    mov     r1, r5
    mov     r2, r8
    mov     r3, #10
    bl      0x21139bc
    mov     r0, #24
    str     r0, [sp]
    ldr     r0, [r7]
    mov     r1, r5
    mov     r2, r8
    mov     r3, #191        ; 0xbf
    bl      0x2113d08
    mov     r1, r5
    mov     r5, #1
    str     r5, [sp]
    ldr     r0, [r7]
    mov     r2, r8
    mov     r3, r8
    bl      0x2113ec0
    stm     sp, {r5, r6}
    str     r6, [sp, #8]
    str     r6, [sp, #12]
    str     r6, [sp, #16]
    ldr     r0, [pc, #3120] ; 0x211c7c0
    ldr     r1, [r9, #180]  ; 0xb4
    mov     r2, r5
    mov     r3, r5
    bl      0x20f2304
    ldr     r0, [pc, #3080] ; 0x211c7ac
    ldr     r1, [pc, #3100] ; 0x211c7c4
    bl      0x202cf6c
    ldr     r1, [r9, #244]  ; 0xf4
    ldr     r0, [r9, #256]  ; 0x100
    add     r6, r1, #0
    ldr     r1, [r9, #264]  ; 0x108
    add     r0, r0, r6, lsr #8
    bl      0x201fbc8
    ldr     r2, [r9, #252]  ; 0xfc
    and     r0, r6, #255    ; 0xff
    ldr     r1, [r2, r1, lsl #2]
    strb    r5, [r1, r0, lsl #2]
    b       0x211d08c
    ldr     r1, [pc, #3052] ; 0x211c7c8
    add     r0, r9, #268    ; 0x10c
    mov     r2, #22
    bl      0x2119f34
    ldr     r1, [pc, #3040] ; 0x211c7cc
    add     r0, r9, #268    ; 0x10c
    mov     r2, #23
    bl      0x2119f34
    ldr     r1, [pc, #3028] ; 0x211c7d0
    add     r0, r9, #268    ; 0x10c
    mov     r2, #24
    bl      0x2119f34
    ldr     r1, [pc, #3016] ; 0x211c7d4
    add     r0, r9, #268    ; 0x10c
    mov     r2, #25
    bl      0x2119f34
    add     r0, r9, #268    ; 0x10c
    ldr     r1, [pc, #3000] ; 0x211c7d8
    mov     r2, #26
    b       0x211beb4
    mov     r0, r9
    mov     r1, #22
    bl      0x211a10c
    mov     r0, r9
    mov     r1, #23
    bl      0x211a10c
    mov     r0, r9
    mov     r1, #24
    bl      0x211a10c
    mov     r0, r9
    mov     r1, #25
    bl      0x211a10c
    mov     r0, r9
    mov     r1, #26
    bl      0x211a10c
    add     r0, r9, #292    ; 0x124
    bl      0x21105c0
    mov     r0, r9
    mov     r1, #10
    b       0x211c2d0
    mov     r7, #10
    mov     r6, #4
    mov     r0, r9
    mov     r1, r7
    mov     r2, r6
    bl      0x2119ff8
    mov     r1, #80 ; 0x50
    str     r1, [sp]
    mov     r5, r0
    str     r1, [sp, #4]
    mov     r0, #19
    str     r0, [sp, #8]
    ldrb    r2, [r9, #456]  ; 0x1c8
    mov     r0, r9
    mov     r1, r5
    str     r2, [sp, #12]
    ldr     r3, [r9, #164]  ; 0xa4
    mov     r2, r6
    bl      0x211a040
    stm     sp, {r6, r8}
    ldr     r0, [pc, #-1324]        ; 0x211b7a0
    mov     r2, r7
    ldr     r0, [r0]
    mov     r3, r5
    mov     r1, #1
    bl      0x210fc74
    add     r5, sp, #180    ; 0xb4
    mov     r0, r8
    mov     r2, #255        ; 0xff
    mov     r1, r5
    bl      0x200787c
    add     r1, r9, #256    ; 0x100
    ldrh    r1, [r1, #216]  ; 0xd8
    ldr     r0, [pc, #2720] ; 0x211c7a0
    add     r2, sp, #76     ; 0x4c
    bl      0x204bd64
    ldrb    r0, [r9, #513]  ; 0x201
    cmp     r0, #1
    bne     0x211bd18
    ldr     r1, [pc, #2756] ; 0x211c7dc
    b       0x211bd24
    cmp     r0, #2
    bne     0x211bd30
    ldr     r1, [pc, #2744] ; 0x211c7e0
    add     r2, sp, #104    ; 0x68
    mov     r0, r5
    bl      0x2023c40
    add     r0, r9, #292    ; 0x124
    bl      0x21109a0
    add     r0, r9, #292    ; 0x124
    bl      0x21105c0
    mov     r7, #0
    ldr     r2, [r9, #148]  ; 0x94
    add     r0, r9, #292    ; 0x124
    mov     r1, r7
    bl      0x2110624
    mov     r6, #2
    add     r0, r9, #292    ; 0x124
    mov     r1, r6
    mov     r2, r7
    bl      0x2110624
    mov     r5, #5
    ldr     r2, [r9, #152]  ; 0x98
    add     r0, r9, #292    ; 0x124
    mov     r1, r5
    bl      0x2110624
    ldr     r2, [r9, #156]  ; 0x9c
    add     r0, r9, #292    ; 0x124
    mov     r1, #6
    bl      0x2110624
    ldr     r2, [r9, #160]  ; 0xa0
    add     r0, r9, #292    ; 0x124
    mov     r1, #7
    bl      0x2110624
    mov     r8, #20
    add     r0, r9, #292    ; 0x124
    mov     r1, r8
    bl      0x2110864
    mov     fp, #1
    add     r0, r9, #292    ; 0x124
    mov     r1, fp
    mov     r2, fp
    mov     r3, r6
    bl      0x2110830
    mov     r1, r8
    add     r0, r9, #292    ; 0x124
    bl      0x211085c
    mov     r8, #8
    add     r0, r9, #292    ; 0x124
    mov     r1, #16
    mov     r2, r8
    bl      0x21108b4
    add     r0, r9, #292    ; 0x124
    mov     r1, #56 ; 0x38
    mov     r2, #104        ; 0x68
    bl      0x21108c0
    mov     r2, #104        ; 0x68
    add     r0, r9, #292    ; 0x124
    mov     r1, #152        ; 0x98
    bl      0x21108cc
    mov     r2, r8
    add     r0, r9, #292    ; 0x124
    mov     r1, #15
    bl      0x21108e4
    mov     r1, r5
    add     r0, r9, #292    ; 0x124
    mov     r2, #3
    bl      0x21108f0
    mov     r1, r6
    add     r0, r9, #292    ; 0x124
    add     r2, sp, #180    ; 0xb4
    mov     r3, fp
    str     fp, [sp]
    bl      0x2110938
    mov     r2, r7
    add     r0, r9, #292    ; 0x124
    mov     r1, fp
    bl      0x2110a04
    ldr     r1, [r9, #244]  ; 0xf4
    ldr     r0, [r9, #256]  ; 0x100
    add     r5, r1, #0
    ldr     r1, [r9, #264]  ; 0x108
    add     r0, r0, r5, lsr #8
    bl      0x201fbc8
    ldr     r2, [r9, #252]  ; 0xfc
    and     r0, r5, #255    ; 0xff
    ldr     r1, [r2, r1, lsl #2]
    strb    fp, [r1, r0, lsl #2]
    b       0x211d08c
    ldr     r1, [pc, #2404] ; 0x211c7e4
    add     r0, r9, #268    ; 0x10c
    mov     r2, #22
    bl      0x2119f34
    ldr     r1, [pc, #2392] ; 0x211c7e8
    add     r0, r9, #268    ; 0x10c
    mov     r2, #23
    bl      0x2119f34
    ldr     r1, [pc, #2380] ; 0x211c7ec
    add     r0, r9, #268    ; 0x10c
    mov     r2, #24
    bl      0x2119f34
    ldr     r1, [pc, #2368] ; 0x211c7f0
    add     r0, r9, #268    ; 0x10c
    mov     r2, #25
    bl      0x2119f34
    b       0x211d060
    mov     r0, r9
    mov     r1, #22
    bl      0x211a10c
    mov     r0, r9
    mov     r1, #23
    bl      0x211a10c
    mov     r0, r9
    mov     r1, #24
    bl      0x211a10c
    mov     r0, r9
    mov     r1, #25
    bl      0x211a10c
    add     r0, r9, #292    ; 0x124
    bl      0x21105c0
    b       0x211d060
    add     r5, sp, #180    ; 0xb4
    mov     r0, r8
    mov     r1, r5
    mov     r2, #255        ; 0xff
    bl      0x200787c
    ldr     r1, [pc, #2272] ; 0x211c7f4
    mov     r0, r5
    bl      0x2023c40
    add     r0, r9, #292    ; 0x124
    bl      0x21109a0
    add     r0, r9, #292    ; 0x124
    bl      0x21105c0
    ldr     r2, [r9, #148]  ; 0x94
    add     r0, r9, #292    ; 0x124
    mov     r1, r8
    bl      0x2110624
    add     r0, r9, #292    ; 0x124
    mov     r1, r6
    mov     r2, r8
    bl      0x2110624
    mov     r7, #5
    ldr     r2, [r9, #152]  ; 0x98
    add     r0, r9, #292    ; 0x124
    mov     r1, r7
    bl      0x2110624
    ldr     r2, [r9, #156]  ; 0x9c
    add     r0, r9, #292    ; 0x124
    mov     r1, #6
    bl      0x2110624
    ldr     r2, [r9, #160]  ; 0xa0
    add     r0, r9, #292    ; 0x124
    mov     r1, #7
    bl      0x2110624
    mov     fp, #20
    add     r0, r9, #292    ; 0x124
    mov     r1, fp
    bl      0x2110864
    mov     r1, #1
    add     r0, r9, #292    ; 0x124
    mov     r2, r1
    mov     r3, r6
    bl      0x2110830
    mov     r1, fp
    add     r0, r9, #292    ; 0x124
    bl      0x211085c
    mov     fp, #56 ; 0x38
    add     r0, r9, #292    ; 0x124
    mov     r1, #16
    mov     r2, fp
    bl      0x21108b4
    mov     r1, fp
    mov     fp, #104        ; 0x68
    add     r0, r9, #292    ; 0x124
    mov     r2, fp
    bl      0x21108c0
    mov     r2, fp
    add     r0, r9, #292    ; 0x124
    mov     r1, #152        ; 0x98
    bl      0x21108cc
    add     r0, r9, #292    ; 0x124
    mov     r1, #15
    mov     r2, r7
    bl      0x21108e4
    mov     r1, r7
    add     r0, r9, #292    ; 0x124
    mov     r2, #3
    bl      0x21108f0
    mov     r3, #1
    mov     r0, r3
    str     r0, [sp]
    mov     r1, r6
    mov     r2, r5
    add     r0, r9, #292    ; 0x124
    bl      0x2110938
    add     r0, r9, #292    ; 0x124
    mov     r1, r8
    mov     r2, #1
    b       0x211c1d4
    ldr     r1, [pc, #1984] ; 0x211c7f8
    add     r0, r9, #268    ; 0x10c
    mov     r2, #22
    bl      0x2119f34
    ldr     r1, [pc, #1972] ; 0x211c7fc
    add     r0, r9, #268    ; 0x10c
    mov     r2, #25
    bl      0x2119f34
    b       0x211c2a0
    mov     r0, r9
    mov     r1, #22
    bl      0x211a10c
    mov     r0, r9
    mov     r1, #25
    bl      0x211a10c
    add     r0, r9, #292    ; 0x124
    bl      0x21105c0
    mov     r0, r9
    mov     r1, #11
    b       0x211c2d0
    mov     r0, r9
    mov     r2, r6
    mov     r1, #11
    bl      0x2119ff8
    add     r7, sp, #180    ; 0xb4
    mov     r0, r8
    mov     r1, r7
    mov     r2, #255        ; 0xff
    bl      0x200787c
    add     r1, r9, #256    ; 0x100
    ldrh    r1, [r1, #228]  ; 0xe4
    ldr     r0, [pc, #1772] ; 0x211c7a0
    bl      0x20ee034
    mov     r2, r0
    ldr     r1, [pc, #1856] ; 0x211c800
    mov     r0, r7
    bl      0x2023c40
    add     r0, r9, #292    ; 0x124
    bl      0x21109a0
    add     r0, r9, #292    ; 0x124
    bl      0x21105c0
    ldr     r2, [r9, #148]  ; 0x94
    add     r0, r9, #292    ; 0x124
    mov     r1, r8
    bl      0x2110624
    add     r0, r9, #292    ; 0x124
    mov     r1, r6
    mov     r2, r8
    bl      0x2110624
    mov     r0, #1
    str     r0, [sp]
    sub     r5, r0, #2
    str     r5, [sp, #4]
    ldr     r3, [r9, #148]  ; 0x94
    add     r0, r9, #292    ; 0x124
    mov     r1, r8
    mov     r2, r8
    bl      0x21107a0
    str     r8, [sp]
    str     r5, [sp, #4]
    ldr     r3, [r9, #160]  ; 0xa0
    mov     r2, r6
    add     r0, r9, #292    ; 0x124
    mov     r1, r8
    bl      0x21107a0
    mov     r5, #20
    add     r0, r9, #292    ; 0x124
    mov     r1, r5
    bl      0x2110864
    mov     r6, #3
    add     r0, r9, #292    ; 0x124
    mov     r1, #1
    mov     r2, r6
    mov     r3, r6
    bl      0x2110830
    mov     r1, r5
    add     r0, r9, #292    ; 0x124
    bl      0x211085c
    add     r0, r9, #292    ; 0x124
    mov     r1, #16
    mov     r2, #56 ; 0x38
    bl      0x21108b4
    mov     r1, #104        ; 0x68
    mov     r2, r1
    add     r0, r9, #292    ; 0x124
    bl      0x21108d8
    mov     r5, #5
    add     r0, r9, #292    ; 0x124
    mov     r1, #15
    mov     r2, r5
    bl      0x21108e4
    mov     r1, r5
    mov     r2, r6
    add     r0, r9, #292    ; 0x124
    bl      0x21108f0
    mov     r0, #1
    mov     r1, #1
    str     r0, [sp]
    mov     r2, r7
    add     r0, r9, #292    ; 0x124
    mov     r3, r1
    bl      0x2110938
    add     r0, r9, #292    ; 0x124
    mov     r1, #1
    mov     r2, r8
    bl      0x2110a04
    b       0x211d060
    ldr     r1, [pc, #1568] ; 0x211c804
    add     r0, r9, #268    ; 0x10c
    mov     r2, #20
    bl      0x2119f34
    ldr     r1, [r9, #244]  ; 0xf4
    ldr     r0, [r9, #256]  ; 0x100
    add     r5, r8, r1
    b       0x211abc0
    mov     r0, r9
    mov     r1, #14
    bl      0x211a0d0
    mov     r0, r9
    mov     r1, #20
    bl      0x211a10c
    ldr     r0, [pc, #-2680]        ; 0x211b7a4
    ldr     r1, [r9, #180]  ; 0xb4
    ldr     r0, [r0]
    bl      0x20591e8
    ldr     r0, [pc, #-2696]        ; 0x211b7a4
    ldr     r1, [r9, #180]  ; 0xb4
    ldr     r0, [r0]
    bl      0x2058ee0
    str     r8, [r9, #180]  ; 0xb4
    b       0x211d060
    mov     r0, r9
    mov     r2, #1
    mov     r1, #14
    bl      0x2119ff8
    mov     r2, #16
    mov     r1, r0
    str     r2, [sp]
    mov     r0, #72 ; 0x48
    str     r0, [sp, #4]
    mov     r0, #147        ; 0x93
    str     r0, [sp, #8]
    str     r8, [sp, #12]
    ldr     r3, [r9, #140]  ; 0x8c
    mov     r0, r9
    mov     r2, #1
    bl      0x211a040
    b       0x211d060
    ldr     r1, [pc, #1408] ; 0x211c808
    add     r0, r9, #268    ; 0x10c
    mov     r2, #28
    bl      0x2119f34
    ldr     r1, [pc, #1396] ; 0x211c80c
    add     r0, r9, #268    ; 0x10c
    mov     r2, #29
    bl      0x2119f34
    ldr     r1, [r9, #244]  ; 0xf4
    ldr     r0, [r9, #256]  ; 0x100
    add     r5, r8, r1
    b       0x211b840
    mov     r0, r9
    mov     r1, #28
    bl      0x211a10c
    mov     r0, r9
    mov     r1, #29
    bl      0x211a10c
    mov     r0, r9
    mov     r1, #12
    bl      0x211a0d0
    b       0x211d060
    mov     r0, r9
    mov     r2, r6
    mov     r1, #12
    bl      0x2119ff8
    mov     r5, r0
    mov     r0, #184        ; 0xb8
    str     r0, [sp]
    mov     r0, #96 ; 0x60
    str     r0, [sp, #4]
    mov     r7, #80 ; 0x50
    str     r7, [sp, #8]
    str     r8, [sp, #12]
    ldr     r3, [r9, #172]  ; 0xac
    mov     r0, r9
    mov     r1, r5
    mov     r2, #1
    bl      0x211a040
    mov     r0, #192        ; 0xc0
    str     r0, [sp]
    mov     r0, #128        ; 0x80
    stmib   sp, {r0, r7}
    str     r8, [sp, #12]
    ldr     r3, [r9, #176]  ; 0xb0
    mov     r0, r9
    mov     r1, r5
    mov     r2, r6
    bl      0x211a040
    mov     r0, #1
    ldr     r7, [pc, #-2992]        ; 0x211b7a0
    stm     sp, {r0, r8}
    mov     r1, r0
    ldr     r0, [r7]
    mov     r2, #4
    mov     r3, r5
    bl      0x210fc74
    stm     sp, {r6, r8}
    ldr     r0, [r7]
    mov     r3, r5
    mov     r1, #1
    mov     r2, #5
    bl      0x210fc74
    b       0x211d060
    ldr     r0, [pc, #-3048]        ; 0x211b7a0
    mov     r1, #4
    ldr     r0, [r0]
    bl      0x210e7d0
    movs    r4, r0
    beq     0x211c428
    strb    r8, [r4, #16]
    strb    r8, [r4, #15]
    strh    r8, [r4, #12]
    mov     r1, r8
    mov     r2, #1
    mov     r3, r8
    add     r0, r4, #58     ; 0x3a
    strb    r8, [r4, #17]
    bl      0x210e6fc
    mov     r1, r8
    mov     r2, r8
    add     r0, r4, #58     ; 0x3a
    mov     r3, r8
    bl      0x210e720
    add     r0, r4, #62     ; 0x3e
    mov     r1, r8
    mov     r2, #1
    mov     r3, r8
    bl      0x210e6fc
    add     r0, r4, #62     ; 0x3e
    mov     r1, r8
    mov     r2, #1
    mov     r3, r8
    bl      0x210e720
    mov     r2, #1
    add     r0, r4, #66     ; 0x42
    mov     r1, r8
    mov     r3, r8
    bl      0x210e6fc
    add     r0, r4, #66     ; 0x42
    mov     r1, r8
    mov     r3, r8
    mov     r2, r6
    bl      0x210e720
    mov     r0, r4
    bl      0x210e69c
    b       0x211abb4
    ldr     r0, [pc, #-3220]        ; 0x211b7a0
    mov     r1, #4
    ldr     r0, [r0]
    bl      0x210e7d0
    movs    r4, r0
    beq     0x211c4d4
    strb    r8, [r4, #16]
    strb    r8, [r4, #15]
    strh    r8, [r4, #12]
    mov     r1, r8
    mov     r2, #1
    mov     r3, r8
    add     r0, r4, #58     ; 0x3a
    strb    r8, [r4, #17]
    bl      0x210e6fc
    mov     r1, r8
    mov     r3, r8
    add     r0, r4, #58     ; 0x3a
    mov     r2, #6
    bl      0x210e720
    add     r0, r4, #62     ; 0x3e
    mov     r1, r8
    mov     r2, #1
    mov     r3, r8
    bl      0x210e6fc
    add     r0, r4, #62     ; 0x3e
    mov     r1, r8
    mov     r2, #7
    mov     r3, r8
    bl      0x210e720
    mov     r2, #1
    add     r0, r4, #66     ; 0x42
    mov     r1, r8
    mov     r3, r8
    bl      0x210e6fc
    add     r0, r4, #66     ; 0x42
    mov     r1, r8
    mov     r3, r8
    mov     r2, #8
    bl      0x210e720
    mov     r0, r4
    bl      0x210e69c
    b       0x211abb4
    ldr     r0, [pc, #-3392]        ; 0x211b7a0
    mov     r1, #4
    ldr     r0, [r0]
    bl      0x210e7d0
    movs    r4, r0
    beq     0x211c584
    mov     r0, #1
    strb    r0, [r4, #16]
    strb    r8, [r4, #15]
    strh    r8, [r4, #12]
    mov     r2, r0
    mov     r1, r8
    mov     r3, r8
    add     r0, r4, #58     ; 0x3a
    strb    r8, [r4, #17]
    bl      0x210e6fc
    mov     r1, r8
    mov     r3, r8
    add     r0, r4, #58     ; 0x3a
    mov     r2, #6
    bl      0x210e720
    add     r0, r4, #62     ; 0x3e
    mov     r1, r8
    mov     r2, #1
    mov     r3, r8
    bl      0x210e6fc
    add     r0, r4, #62     ; 0x3e
    mov     r1, r8
    mov     r2, #7
    mov     r3, r8
    bl      0x210e720
    mov     r2, #1
    add     r0, r4, #66     ; 0x42
    mov     r1, r8
    mov     r3, r8
    bl      0x210e6fc
    add     r0, r4, #66     ; 0x42
    mov     r1, r8
    mov     r3, r8
    mov     r2, #8
    bl      0x210e720
    mov     r0, r4
    bl      0x210e69c
    b       0x211abb4
    ldr     r0, [pc, #-3568]        ; 0x211b7a0
    mov     r5, #4
    ldr     r0, [r0]
    mov     r1, r5
    bl      0x210e7d0
    movs    r4, r0
    beq     0x211c634
    strb    r8, [r4, #16]
    strb    r8, [r4, #15]
    strh    r8, [r4, #12]
    mov     r1, r8
    mov     r2, #1
    mov     r3, r8
    add     r0, r4, #58     ; 0x3a
    strb    r8, [r4, #17]
    bl      0x210e6fc
    mov     r1, r8
    add     r0, r4, #58     ; 0x3a
    mov     r2, #3
    mov     r3, r8
    bl      0x210e720
    add     r0, r4, #62     ; 0x3e
    mov     r1, r8
    mov     r2, #1
    mov     r3, r8
    bl      0x210e6fc
    mov     r2, r5
    add     r0, r4, #62     ; 0x3e
    mov     r1, r8
    mov     r3, r8
    bl      0x210e720
    mov     r2, #1
    add     r0, r4, #66     ; 0x42
    mov     r1, r8
    mov     r3, r8
    bl      0x210e6fc
    add     r0, r4, #66     ; 0x42
    mov     r1, r8
    mov     r3, r8
    mov     r2, #5
    bl      0x210e720
    mov     r0, r4
    bl      0x210e69c
    b       0x211abb4
    ldr     r0, [pc, #-3744]        ; 0x211b7a0
    mov     r5, #4
    ldr     r0, [r0]
    mov     r1, r5
    bl      0x210e7d0
    movs    r4, r0
    beq     0x211c6e8
    mov     r0, #1
    strb    r0, [r4, #16]
    strb    r8, [r4, #15]
    strh    r8, [r4, #12]
    mov     r2, r0
    mov     r1, r8
    mov     r3, r8
    add     r0, r4, #58     ; 0x3a
    strb    r8, [r4, #17]
    bl      0x210e6fc
    mov     r1, r8
    add     r0, r4, #58     ; 0x3a
    mov     r2, #3
    mov     r3, r8
    bl      0x210e720
    add     r0, r4, #62     ; 0x3e
    mov     r1, r8
    mov     r2, #1
    mov     r3, r8
    bl      0x210e6fc
    mov     r2, r5
    add     r0, r4, #62     ; 0x3e
    mov     r1, r8
    mov     r3, r8
    bl      0x210e720
    mov     r2, #1
    add     r0, r4, #66     ; 0x42
    mov     r1, r8
    mov     r3, r8
    bl      0x210e6fc
    add     r0, r4, #66     ; 0x42
    mov     r1, r8
    mov     r3, r8
    mov     r2, #5
    bl      0x210e720
    mov     r0, r4
    bl      0x210e69c
    b       0x211abb4
    ldr     r0, [pc, #284]  ; 0x211c810
    mov     r1, #5
    ldr     r0, [r0]
    bl      0x210e7d0
    movs    r4, r0
    beq     0x211c794
    strb    r8, [r4, #16]
    strb    r8, [r4, #15]
    strh    r8, [r4, #12]
    mov     r1, r8
    mov     r2, #1
    mov     r3, r8
    add     r0, r4, #58     ; 0x3a
    strb    r8, [r4, #17]
    bl      0x210e6fc
    mov     r1, r8
    mov     r2, r8
    add     r0, r4, #58     ; 0x3a
    mov     r3, r8
    bl      0x210e720
    add     r0, r4, #62     ; 0x3e
    mov     r1, r8
    mov     r2, #1
    mov     r3, r8
    bl      0x210e6fc
    add     r0, r4, #62     ; 0x3e
    mov     r1, r8
    mov     r2, #1
    mov     r3, r8
    bl      0x210e720
    mov     r2, #1
    add     r0, r4, #66     ; 0x42
    mov     r1, r8
    mov     r3, r8
    bl      0x210e6fc
    add     r0, r4, #66     ; 0x42
    mov     r1, r8
    mov     r3, r8
    mov     r2, r6
    bl      0x210e720
    mov     r0, r4
    bl      0x210e69c
    b       0x211abb4
    andseq  r3, r2, #32, 18 ; 0x80000
    andseq  r3, r2, #48, 18 ; 0xc0000
    andeq   fp, r9, #32, 20 ; 0x20000
    andseq  r3, r2, #64, 18 ; 0x100000
    andseq  r3, r2, #88, 18 ; 0x160000
    andeq   sl, r9, #68, 24 ; 0x4400
    andeq   r8, r0, fp
    andeq   r8, r0, sl
    andeq   r8, r0, r8
    andseq  r3, r2, #112, 18        ; 0x1c0000
    andseq  r3, r2, #128, 18        ; 0x200000
    andeq   r8, r0, r9
    andseq  r3, r2, #164, 18        ; 0x290000
    andseq  r3, r2, #180, 18        ; 0x2d0000
    andseq  r3, r2, #196, 18        ; 0x310000
    andseq  r3, r2, #212, 18        ; 0x350000
    andseq  r3, r2, #228, 18        ; 0x390000
    andseq  r3, r2, #244, 18        ; 0x3d0000
    andseq  r3, r2, #76, 20 ; 0x4c000
    andseq  r3, r2, #172, 20        ; 0xac000
    andseq  r3, r2, #188, 20        ; 0xbc000
    andseq  r3, r2, #204, 20        ; 0xcc000
    andseq  r3, r2, #220, 20        ; 0xdc000
    andseq  r3, r2, #236, 20        ; 0xec000
    andseq  r3, r2, #32, 22 ; 0x8000
    andseq  r3, r2, #48, 22 ; 0xc000
    andseq  r3, r2, #64, 22 ; 0x10000
    andseq  r3, r2, #88, 22 ; 0x16000
    andseq  r3, r2, #104, 22        ; 0x1a000
    andseq  r3, r2, #120, 22        ; 0x1e000
    andeq   r9, r9, #180, 28        ; 0xb40
    ldr     r0, [pc, #-12]  ; 0x211c810
    mov     r1, #4
    ldr     r0, [r0]
    bl      0x210e7d0
    movs    r4, r0
    beq     0x211c8c0
    mov     r0, #1
    strb    r0, [r4, #16]
    strb    r8, [r4, #15]
    strh    r8, [r4, #12]
    mov     r2, r0
    mov     r1, r8
    mov     r3, r8
    add     r0, r4, #58     ; 0x3a
    strb    r8, [r4, #17]
    bl      0x210e6fc
    mov     r1, r8
    mov     r2, r8
    add     r0, r4, #58     ; 0x3a
    mov     r3, r8
    bl      0x210e720
    add     r0, r4, #62     ; 0x3e
    mov     r1, r8
    mov     r2, #1
    mov     r3, r8
    bl      0x210e6fc
    add     r0, r4, #62     ; 0x3e
    mov     r1, r8
    mov     r2, #1
    mov     r3, r8
    bl      0x210e720
    mov     r2, #1
    add     r0, r4, #66     ; 0x42
    mov     r1, r8
    mov     r3, r8
    bl      0x210e6fc
    add     r0, r4, #66     ; 0x42
    mov     r1, r8
    mov     r3, r8
    mov     r2, r6
    bl      0x210e720
    mov     r0, r4
    bl      0x210e69c
    b       0x211abb4
    ldr     r0, [pc, #-188] ; 0x211c810
    mov     r1, #5
    ldr     r0, [r0]
    bl      0x210e7d0
    movs    r4, r0
    beq     0x211c970
    mov     r0, #1
    strb    r0, [r4, #16]
    strb    r8, [r4, #15]
    strh    r8, [r4, #12]
    mov     r2, r0
    mov     r1, r8
    mov     r3, r8
    add     r0, r4, #58     ; 0x3a
    strb    r8, [r4, #17]
    bl      0x210e6fc
    mov     r1, r8
    mov     r2, r8
    add     r0, r4, #58     ; 0x3a
    mov     r3, r8
    bl      0x210e720
    add     r0, r4, #62     ; 0x3e
    mov     r1, r8
    mov     r2, #1
    mov     r3, r8
    bl      0x210e6fc
    add     r0, r4, #62     ; 0x3e
    mov     r1, r8
    mov     r2, #1
    mov     r3, r8
    bl      0x210e720
    mov     r2, #1
    add     r0, r4, #66     ; 0x42
    mov     r1, r8
    mov     r3, r8
    bl      0x210e6fc
    add     r0, r4, #66     ; 0x42
    mov     r1, r8
    mov     r3, r8
    mov     r2, r6
    bl      0x210e720
    mov     r0, r4
    bl      0x210e69c
    b       0x211abb4
    ldr     r0, [pc, #-364] ; 0x211c810
    mov     r5, #5
    ldr     r0, [r0]
    mov     r1, r5
    bl      0x210e7d0
    movs    r4, r0
    beq     0x211ca20
    strb    r8, [r4, #16]
    strb    r8, [r4, #15]
    strh    r8, [r4, #12]
    mov     r1, r8
    mov     r2, #1
    mov     r3, r8
    add     r0, r4, #58     ; 0x3a
    strb    r8, [r4, #17]
    bl      0x210e6fc
    mov     r1, r8
    add     r0, r4, #58     ; 0x3a
    mov     r2, #3
    mov     r3, r8
    bl      0x210e720
    add     r0, r4, #62     ; 0x3e
    mov     r1, r8
    mov     r2, #1
    mov     r3, r8
    bl      0x210e6fc
    add     r0, r4, #62     ; 0x3e
    mov     r1, r8
    mov     r2, #4
    mov     r3, r8
    bl      0x210e720
    mov     r2, #1
    add     r0, r4, #66     ; 0x42
    mov     r1, r8
    mov     r3, r8
    bl      0x210e6fc
    mov     r2, r5
    add     r0, r4, #66     ; 0x42
    mov     r1, r8
    mov     r3, r8
    bl      0x210e720
    mov     r0, r4
    bl      0x210e69c
    b       0x211abb4
    ldr     r0, [pc, #-540] ; 0x211c810
    mov     r5, #5
    ldr     r0, [r0]
    mov     r1, r5
    bl      0x210e7d0
    movs    r4, r0
    beq     0x211cad4
    mov     r0, #1
    strb    r0, [r4, #16]
    strb    r8, [r4, #15]
    strh    r8, [r4, #12]
    mov     r2, r0
    mov     r1, r8
    mov     r3, r8
    add     r0, r4, #58     ; 0x3a
    strb    r8, [r4, #17]
    bl      0x210e6fc
    mov     r1, r8
    add     r0, r4, #58     ; 0x3a
    mov     r2, #3
    mov     r3, r8
    bl      0x210e720
    add     r0, r4, #62     ; 0x3e
    mov     r1, r8
    mov     r2, #1
    mov     r3, r8
    bl      0x210e6fc
    add     r0, r4, #62     ; 0x3e
    mov     r1, r8
    mov     r2, #4
    mov     r3, r8
    bl      0x210e720
    mov     r2, #1
    add     r0, r4, #66     ; 0x42
    mov     r1, r8
    mov     r3, r8
    bl      0x210e6fc
    mov     r2, r5
    add     r0, r4, #66     ; 0x42
    mov     r1, r8
    mov     r3, r8
    bl      0x210e720
    mov     r0, r4
    bl      0x210e69c
    b       0x211abb4
    mov     r5, #8
    mov     r0, r9
    mov     r1, r8
    mov     r2, r5
    bl      0x2119ff8
    str     r8, [sp]
    add     r1, r9, #256    ; 0x100
    ldrh    r3, [r1, #252]  ; 0xfc
    mov     r1, r0
    ldr     r0, [pc, #1804] ; 0x211d210
    mov     r2, r5
    ldr     r0, [r0]
    bl      0x211401c
    b       0x211d060
    add     r0, r9, #256    ; 0x100
    ldrh    r1, [r0, #252]  ; 0xfc
    ldr     r5, [r9, #204]  ; 0xcc
    cmp     r1, #4
    bhi     0x211cb58
    str     r8, [sp]
    ldrh    r3, [r0, #252]  ; 0xfc
    ldr     r0, [pc, #1756] ; 0x211d210
    mov     r1, r5
    ldr     r0, [r0]
    mov     r2, #1
    bl      0x211401c
    ldr     r0, [pc, #1736] ; 0x211d210
    mov     r1, r5
    ldr     r0, [r0]
    mov     r2, #1
    mov     r3, #31
    b       0x211cb74
    cmp     r1, #5
    bcc     0x211cb78
    ldr     r0, [pc, #1704] ; 0x211d210
    mov     r1, r5
    ldr     r0, [r0]
    mov     r3, r8
    mov     r2, #1
    bl      0x2113a80
    add     r0, r9, #256    ; 0x100
    ldrh    r1, [r0, #252]  ; 0xfc
    ldr     r0, [pc, #1672] ; 0x211d210
    mov     r6, #1
    cmp     r1, #0
    bne     0x211cbcc
    ldrb    r1, [r9, #514]  ; 0x202
    cmp     r1, #0
    beq     0x211cbcc
    ldrb    r3, [r9, #511]  ; 0x1ff
    cmp     r3, #16
    bcs     0x211cbb4
    ldr     r0, [r0]
    mov     r1, r5
    b       0x211cbc4
    rsb     r2, r3, #32
    ldr     r0, [r0]
    mov     r1, r5
    and     r3, r2, #255    ; 0xff
    mov     r2, #2
    b       0x211cbdc
    ldr     r0, [r0]
    mov     r1, r5
    mov     r2, #2
    mov     r3, #0
    bl      0x2113a80
    ldrb    r0, [r9, #511]  ; 0x1ff
    ldr     r3, [r9, #244]  ; 0xf4
    ldr     r2, [r9, #256]  ; 0x100
    add     r0, r0, #1
    and     r0, r0, #255    ; 0xff
    lsr     r1, r0, #31
    rsb     r0, r1, r0, lsl #27
    add     r5, r3, #0
    add     r3, r1, r0, ror #27
    ldr     r1, [r9, #264]  ; 0x108
    add     r0, r2, r5, lsr #8
    strb    r3, [r9, #511]  ; 0x1ff
    bl      0x201fbc8
    ldr     r0, [r9, #252]  ; 0xfc
    ldr     r1, [r0, r1, lsl #2]
    and     r0, r5, #255    ; 0xff
    strb    r6, [r1, r0, lsl #2]
    b       0x211d08c
    mov     r0, r9
    mov     r1, #7
    mov     r2, #1
    bl      0x2119ff8
    ldr     r1, [r9, #244]  ; 0xf4
    ldr     r2, [r9, #256]  ; 0x100
    add     r6, r8, r1
    mov     r5, r0
    ldr     r1, [r9, #264]  ; 0x108
    add     r0, r2, r6, lsr #8
    bl      0x201fbc8
    ldr     r2, [r9, #252]  ; 0xfc
    and     r0, r6, #255    ; 0xff
    ldr     r1, [r2, r1, lsl #2]
    add     r0, r1, r0, lsl #2
    ldrh    r0, [r0, #2]
    cmp     r0, #1
    bne     0x211cc7c
    ldr     r0, [pc, #-1228]        ; 0x211c7ac
    ldr     r1, [pc, #1432] ; 0x211d214
    bl      0x202cf6c
    ldr     r1, [r9, #244]  ; 0xf4
    ldr     r0, [r9, #256]  ; 0x100
    add     r6, sl, r1
    ldr     r1, [r9, #264]  ; 0x108
    add     r0, r0, r6, lsr #8
    bl      0x201fbc8
    ldr     r3, [r9, #252]  ; 0xfc
    and     r0, r6, #255    ; 0xff
    ldr     r3, [r3, r1, lsl #2]
    mov     r1, r5
    add     r3, r3, r0, lsl #2
    str     sl, [sp]
    ldrh    r5, [r3, #2]
    ldr     r0, [pc, #1368] ; 0x211d210
    mov     r2, #1
    asr     r3, r5, #1
    add     r3, r5, r3, lsr #30
    ldr     r0, [r0]
    asr     r3, r3, #2
    bl      0x211401c
    ldr     r1, [r9, #244]  ; 0xf4
    ldr     r0, [r9, #256]  ; 0x100
    add     r5, sl, r1
    ldr     r1, [r9, #264]  ; 0x108
    add     r0, r0, r5, lsr #8
    bl      0x201fbc8
    ldr     r2, [r9, #252]  ; 0xfc
    and     r0, r5, #255    ; 0xff
    ldr     r1, [r2, r1, lsl #2]
    add     r0, r1, r0, lsl #2
    ldrh    r1, [r0, #2]
    asr     r0, r1, #1
    add     r0, r1, r0, lsr #30
    asr     r0, r0, #2
    cmp     r0, #6
    bne     0x211d08c
    b       0x211cefc
    mov     r0, r9
    mov     r2, #1
    mov     r1, #8
    bl      0x2119ff8
    ldr     r1, [r9, #244]  ; 0xf4
    ldr     r2, [r9, #256]  ; 0x100
    add     r6, r8, r1
    mov     r5, r0
    ldr     r1, [r9, #264]  ; 0x108
    add     r0, r2, r6, lsr #8
    bl      0x201fbc8
    ldr     r2, [r9, #252]  ; 0xfc
    and     r0, r6, #255    ; 0xff
    ldr     r1, [r2, r1, lsl #2]
    add     r0, r1, r0, lsl #2
    ldrh    r0, [r0, #2]
    cmp     r0, #8
    bcc     0x211cd90
    mov     r7, #200        ; 0xc8
    ldr     r6, [pc, #1196] ; 0x211d210
    str     r7, [sp]
    ldr     r0, [r6]
    mov     r1, r5
    mov     r2, #1
    mov     r3, #40 ; 0x28
    bl      0x2113b78
    str     r7, [sp]
    ldr     r0, [r6]
    mov     r1, r5
    mov     r2, #2
    mov     r3, #64 ; 0x40
    bl      0x2113b78
    ldr     r1, [r9, #244]  ; 0xf4
    ldr     r0, [r9, #256]  ; 0x100
    add     r6, r1, #0
    ldr     r1, [r9, #264]  ; 0x108
    add     r0, r0, r6, lsr #8
    bl      0x201fbc8
    ldr     r2, [r9, #252]  ; 0xfc
    and     r0, r6, #255    ; 0xff
    ldr     r1, [r2, r1, lsl #2]
    add     r0, r1, r0, lsl #2
    ldrh    r0, [r0, #2]
    cmp     r0, #16
    bcc     0x211d08c
    mov     r0, #160        ; 0xa0
    str     r0, [sp]
    ldr     r0, [pc, #1084] ; 0x211d210
    mov     r1, r5
    ldr     r0, [r0]
    mov     r2, #1
    mov     r3, #40 ; 0x28
    bl      0x2113b78
    mov     r0, #162        ; 0xa2
    str     r0, [sp]
    ldr     r0, [pc, #1052] ; 0x211d210
    mov     r1, r5
    ldr     r0, [r0]
    mov     r2, #2
    mov     r3, #64 ; 0x40
    bl      0x2113b78
    ldr     r1, [r9, #244]  ; 0xf4
    ldr     r0, [r9, #256]  ; 0x100
    add     r5, r1, #0
    b       0x211d06c
    mov     r0, r9
    mov     r1, #7
    mov     r2, #1
    bl      0x2119ff8
    ldr     r1, [r9, #244]  ; 0xf4
    ldr     r2, [r9, #256]  ; 0x100
    add     r6, r8, r1
    mov     r5, r0
    ldr     r1, [r9, #264]  ; 0x108
    add     r0, r2, r6, lsr #8
    bl      0x201fbc8
    ldr     r2, [r9, #252]  ; 0xfc
    and     r0, r6, #255    ; 0xff
    ldr     r1, [r2, r1, lsl #2]
    add     r0, r1, r0, lsl #2
    ldrh    r0, [r0, #2]
    cmp     r0, #1
    bne     0x211ce68
    ldr     r0, [pc, #-1720]        ; 0x211c7ac
    ldr     r1, [pc, #944]  ; 0x211d218
    bl      0x202cf6c
    ldr     r1, [r9, #244]  ; 0xf4
    ldr     r0, [r9, #256]  ; 0x100
    add     r6, sl, r1
    ldr     r1, [r9, #264]  ; 0x108
    add     r0, r0, r6, lsr #8
    bl      0x201fbc8
    ldr     r3, [r9, #252]  ; 0xfc
    and     r0, r6, #255    ; 0xff
    ldr     r3, [r3, r1, lsl #2]
    mov     r1, r5
    add     r3, r3, r0, lsl #2
    str     sl, [sp]
    ldrh    r5, [r3, #2]
    ldr     r0, [pc, #876]  ; 0x211d210
    mov     r2, #1
    asr     r3, r5, #1
    add     r3, r5, r3, lsr #30
    asr     r3, r3, #2
    ldr     r0, [r0]
    add     r3, r3, #6
    bl      0x211401c
    ldr     r1, [r9, #244]  ; 0xf4
    ldr     r0, [r9, #256]  ; 0x100
    add     r5, sl, r1
    ldr     r1, [r9, #264]  ; 0x108
    add     r0, r0, r5, lsr #8
    bl      0x201fbc8
    ldr     r2, [r9, #252]  ; 0xfc
    and     r0, r5, #255    ; 0xff
    ldr     r1, [r2, r1, lsl #2]
    add     r0, r1, r0, lsl #2
    ldrh    r1, [r0, #2]
    asr     r0, r1, #1
    add     r0, r1, r0, lsr #30
    asr     r0, r0, #2
    cmp     r0, #6
    bne     0x211d08c
    ldr     r1, [r9, #244]  ; 0xf4
    ldr     r0, [r9, #256]  ; 0x100
    add     r5, sl, r1
    ldr     r1, [r9, #264]  ; 0x108
    add     r0, r0, r5, lsr #8
    bl      0x201fbc8
    ldr     r0, [r9, #252]  ; 0xfc
    and     r2, r5, #255    ; 0xff
    b       0x211d080
    mov     r0, r9
    mov     r1, #4
    mov     r2, #6
    mov     fp, #40 ; 0x28
    bl      0x2119ff8
    mov     r5, r0
    add     r6, r9, #256    ; 0x100
    mov     r7, #30
    b       0x211cfac
    ldrsb   r0, [r6, #232]  ; 0xe8
    cmp     r8, r0
    bne     0x211cf68
    ldr     r0, [pc, #696]  ; 0x211d210
    mov     r1, r5
    ldr     r0, [r0]
    add     r2, r8, #4
    mov     r3, r7
    b       0x211cf7c
    ldr     r0, [pc, #672]  ; 0x211d210
    mov     r1, r5
    ldr     r0, [r0]
    add     r2, r8, #4
    mov     r3, fp
    bl      0x21139bc
    add     r0, r9, r8, lsl #1
    add     r0, r0, #256    ; 0x100
    ldrsh   r3, [r0, #242]  ; 0xf2
    mov     r1, r5
    add     r2, r8, #4
    str     r3, [sp]
    ldrsh   r3, [r0, #236]  ; 0xec
    ldr     r0, [pc, #620]  ; 0x211d210
    ldr     r0, [r0]
    bl      0x2113b78
    add     r8, r8, #1
    cmp     r8, #3
    blt     0x211cf44
    b       0x211abb4
    mov     r0, r9
    mov     r1, #4
    mov     r2, #6
    bl      0x2119ff8
    ldrb    r1, [r9, #471]  ; 0x1d7
    mov     r4, r0
    ldr     r0, [pc, #568]  ; 0x211d210
    add     r2, r1, #4
    ldr     r0, [r0]
    ldr     r3, [pc, #568]  ; 0x211d21c
    mov     r1, r4
    bl      0x21139bc
    mov     r0, #88 ; 0x58
    str     r0, [sp]
    ldr     r0, [pc, #536]  ; 0x211d210
    ldrb    r2, [r9, #471]  ; 0x1d7
    ldr     r0, [r0]
    mov     r1, r4
    mov     r3, #104        ; 0x68
    add     r2, r2, #4
    bl      0x2113b78
    ldrb    r0, [r9, #471]  ; 0x1d7
    mov     r3, r4
    mov     r1, #1
    add     r0, r0, #4
    stm     sp, {r0, r8}
    ldrb    r2, [r9, #471]  ; 0x1d7
    ldr     r0, [r5]
    add     r2, r2, #6
    lsl     r2, r2, #16
    lsr     r2, r2, #16
    bl      0x210fc74
    ldrb    r1, [r9, #471]  ; 0x1d7
    ldr     r0, [r5]
    add     r1, r1, #6
    lsl     r1, r1, #16
    lsr     r1, r1, #16
    bl      0x210e7d0
    mov     r4, r0
    mov     r0, #1
    strb    r0, [r4, #18]
    strb    r0, [r4, #16]
    ldr     r1, [r9, #244]  ; 0xf4
    ldr     r0, [r9, #256]  ; 0x100
    add     r5, r8, r1
    ldr     r1, [r9, #264]  ; 0x108
    add     r0, r0, r5, lsr #8
    bl      0x201fbc8
    ldr     r0, [r9, #252]  ; 0xfc
    and     r2, r5, #255    ; 0xff
    ldr     r1, [r0, r1, lsl #2]
    mov     r0, #1
    strb    r0, [r1, r2, lsl #2]
    sub     r5, sp, #4
    mov     fp, #1
    mov     r7, #0
    ldr     r8, [pc, #384]  ; 0x211d220
    b       0x211d164
    ldr     r0, [r9, #268]  ; 0x10c
    ldr     r2, [r9, #280]  ; 0x118
    add     r6, r7, r0
    umull   r0, r1, r6, r8
    add     r0, r2, r1, lsr #3
    ldr     r1, [r9, #288]  ; 0x120
    bl      0x201fbc8
    umull   r2, r0, r6, r8
    ldr     r3, [r9, #276]  ; 0x114
    lsr     r0, r0, #3
    mov     r2, #25
    ldr     r1, [r3, r1, lsl #2]
    umull   r0, r3, r2, r0
    sub     r0, r6, r0
    mov     r2, #40 ; 0x28
    mla     r6, r0, r2, r1
    ldr     r0, [r6, #32]
    ldr     r1, [r9, #12]
    add     r2, sp, #40     ; 0x28
    add     r3, sp, #36     ; 0x24
    bl      0x20f3d08
    cmp     r0, #0
    beq     0x211d14c
    ldr     r0, [r6, #36]   ; 0x24
    add     r0, r9, r0, lsl #2
    ldr     r0, [r0, #60]   ; 0x3c
    cmp     r0, #0
    bne     0x211d14c
    ldr     r0, [pc, #248]  ; 0x211d210
    ldr     r3, [sp, #36]   ; 0x24
    ldr     r2, [sp, #40]   ; 0x28
    ldr     r0, [r0]
    mov     r1, #5
    stm     sp, {r7, fp}
    str     r7, [sp, #8]
    str     r2, [sp, #12]
    str     r3, [sp, #16]
    ldr     r2, [pc, #232]  ; 0x211d224
    mov     r3, r7
    bl      0x2058800
    ldr     r1, [r6, #36]   ; 0x24
    add     r1, r9, r1, lsl #2
    str     r0, [r1, #60]   ; 0x3c
    mov     r0, #0
    strb    r0, [r5]
    ldr     r2, [r5]
    add     r0, r9, #268    ; 0x10c
    mov     r1, #1
    bl      0x2120310
    ldr     r0, [r9, #272]  ; 0x110
    cmp     r0, #0
    bne     0x211d0a0
    ldr     r1, [r9, #244]  ; 0xf4
    ldr     r0, [r9, #256]  ; 0x100
    add     r6, r1, #0
    ldr     r1, [r9, #264]  ; 0x108
    add     r0, r0, r6, lsr #8
    mov     r5, #0
    bl      0x201fbc8
    ldr     r2, [r9, #252]  ; 0xfc
    and     r0, r6, #255    ; 0xff
    ldr     r1, [r2, r1, lsl #2]
    ldrb    r0, [r1, r0, lsl #2]
    cmp     r0, #0
    bne     0x211d1e0
    ldr     r1, [r9, #244]  ; 0xf4
    ldr     r0, [r9, #256]  ; 0x100
    add     r4, r5, r1
    ldr     r1, [r9, #264]  ; 0x108
    add     r0, r0, r4, lsr #8
    bl      0x201fbc8
    ldr     r2, [r9, #252]  ; 0xfc
    and     r0, r4, #255    ; 0xff
    ldr     r1, [r2, r1, lsl #2]
    add     sp, sp, #436    ; 0x1b4
    add     r1, r1, r0, lsl #2
    ldrh    r0, [r1, #2]
    add     r0, r0, #1
    strh    r0, [r1, #2]
    pop     {r4, r5, r6, r7, r8, r9, sl, fp, pc}
    sub     r1, sp, #4
    and     r0, r5, #255    ; 0xff
    strb    r0, [r1]
    ldr     r2, [r1]
    add     r0, r9, #244    ; 0xf4
    mov     r1, #1
    bl      0x2120a68
    ldr     r0, [r9, #248]  ; 0xf8
    cmp     r0, #0
    bne     0x211a86c
    add     sp, sp, #436    ; 0x1b4
    pop     {r4, r5, r6, r7, r8, r9, sl, fp, pc}
    andeq   r9, r9, #56, 30 ; 0xe0
    andeq   r8, r0, r6
    andeq   r8, r0, r7
    andeq   r0, r0, lr, asr r1
    mvnpl   r8, pc, lsl r5
    andseq  r3, r2, #136, 22        ; 0x22000