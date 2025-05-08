


_020CD528:
    b _020CD588
    b _020CD5DC
    b _020CD61C
    b _020CD55C
    b _020CD6AC
    b _020CD8C4
    b _020CD84C
    b _020CD93C
    b _020CE624

_020cdcdc:
    ldr r0,[r4,#0xa1c ]
    cmp r0,#0x78
    ble _020cdd28
    ldr r0,[r4,#0x48 ]
    cmp r0,#0x3
    bne _020cdd28
    ldr r1,[r4,#0x994 ]
    ldr r0,[DAT_overlay_d_4__020ce36c ]                  = 00000301h
    and r1,r1,r0
    cmp r1,r0
    beq _020cdd28
    ldr r2,[r4,#0x34 ]
    mov r1,#0x200
    mov r0,r4
    str r2,[r4,#0x3c ]
    str r1,[r4,#0x34 ]
    bl FUN_overlay_d_4__020d2468
    add sp,sp,#0x530
    ldmia sp!,{r3,r4,r5,r6,r7,r8,r9,r10 ,r11 ,pc}
_020cdd28:
    ldr r0,[r4,#0x48 ]
    cmp r0,#0x3
    bne _020cdd4c
    strb r6,[sp,#local_118 +0x2 ]
    ldr r2,[r4,#0x994 ]
    add r1,sp,#0x440
    mov r0,r4
    str r2,[sp,#local_110 ]
_020cdd48:
    bl FUN_overlay_d_4__020ce72c
_020cdd4c:
    ldr r0,[r4,#0xa1c ]
    add sp,sp,#0x530
    add r0,r0,#0x1
    str r0,[r4,#0xa1c ]
    ldmia sp!,{r3,r4,r5,r6,r7,r8,r9,r10 ,r11 ,pc}
_020cdd60:
    add r0,r4,#0x100
    ldrh r0,[r0,#0xd4 ]
    tst r0,#0x6
    ldreq r0,[r4,#0x1d0 ]
    cmpeq r0,#0x0
    bne switchD_overlay_d_4::020cd51c::caseD_a
    mov r0,r4
    bl FUN_overlay_d_4__020d2f4c
    ldr r0,[DAT_overlay_d_4__020ce370 ]                  = 02099ED4h
    ldr r5,[DAT_overlay_d_4__020ce374 ]                  = 0209A110h
    ldr r0,[r0,#0x0 ]=>DAT_02099ed4
    ldr r1,[r5,#0x0 ]=>DAT_0209a110
    bl FUN_0210e10c
    ldr r0,[r5,#0x0 ]=>DAT_0209a110
    cmp r0,#0x0
    mov r0,r0, lsl #0xc
    beq _020cddb8
    bl FUN_0201f74c
    mov r1,r0
    mov r0,#0x3f000000
    bl FUN_02020274
    b _020cddc4
_020cddb8:
    bl         FUN_0201f74c
    mov        r1,#0x3f000000
    bl         FUN_020204a4
_020cddc4:
    bl         FUN_0201fdac
    ldr        r2=>DAT_02099f58 ,[DAT_overlay_d_4__020ce378 ]    = 02099F58h
    mov        r1,r0
    ldr        r0,[r2,#0x0 ]=>DAT_02099f58
    bl         FUN_02116654
    b          switchD_overlay_d_4::020cd51c::caseD_a
_020cdddc:
    ldr        r0,[r4,#0x30 ]
    ldr        r6,[DAT_overlay_d_4__020ce350 ]                  = 02099F38h
    cmp        r0,#0x5
    beq        switchD_overlay_d_4::020cd51c::caseD_a
    add        r0,r4,#0x200
    ldrh       r1,[r0,#0xa4 ]
    tst        r1,#0x6
    bne        switchD_overlay_d_4::020cd51c::caseD_a
    ldrh       r2,[r0,#0xd8 ]
    tst        r2,#0x6
    ldreq      r1,[r4,#0x2a0 ]
    cmpeq      r1,#0x0
    ldreq      r1,[r4,#0x2d4 ]
    cmpeq      r1,#0x0
    bne        switchD_overlay_d_4::020cd51c::caseD_a
    ldr        r1,[r4,#0x24 ]
    cmp        r1,#0x0
    bne        _020cdf40
    ldrh       r1,[r4,#0x8 ]
    tst        r1,#0x1
    beq        _020cdea0
    add        r0,r4,#0x600
    ldrsb      r1,[r0,#0x4d ]
    cmp        r1,#0x1
    beq        _020cde50
    cmp        r1,#0x3
    ldrsbeq    r0,[r0,#0x4e ]
    cmpeq      r0,#0x1
    bne        _020cde68
_020cde50:
add        r0,r4,#0x200
ldrh       r1,[r0,#0xa4 ]
str        r5,[r4,#0x2a0 ]
orr        r1,r1,#0x6
strh       r1,[r0,#0xa4 ]
b          switchD_overlay_d_4::020cd51c::caseD_a
_020cde68
add        r0,r4,#0x600
ldrsb      r1,[r0,#0x4d ]
cmp        r1,#0x2
beq        _020cde88
cmp        r1,#0x3
ldrsbeq    r0,[r0,#0x4e ]
cmpeq      r0,#0x2
bne        _020cdf40
_020cde88
add        r0,r4,#0x200
ldrh       r1,[r0,#0xd8 ]
str        r5,[r4,#0x2d4 ]
orr        r1,r1,#0x6
strh       r1,[r0,#0xd8 ]
b          switchD_overlay_d_4::020cd51c::caseD_a
_020cdea0
tst        r1,#0x2
orrne      r1,r2,#0x6
strbne     r7,[r4,#0x64d ]
strhne     r1,[r0,#0xd8 ]
strne      r5,[r4,#0x2d4 ]
bne        switchD_overlay_d_4::020cd51c::caseD_a
tst        r1,#0x20
beq        _020cdf00
add        r0,r4,#0x600
ldrsb      r0,[r0,#0x4d ]
cmp        r0,#0x1
beq        _020cdedc
ldr        r0,[DAT_overlay_d_4__020ce37c ]                  = 0209AC44h
mov        r1,#0x8
bl         FUN_0202cf6c
_020cdedc
mov        r3,#0x0
str        r3,[sp,#0x0 ]=>local_558
ldr        r0,[r6,#0x0 ]=>DAT_02099f38
ldr        r1,[r4,#0x12c ]
mov        r2,#0x2
bl         FUN_0211401c
mov        r0,#0x1
strb       r0,[r4,#0x64d ]
b          _020cdf40
_020cdf00
tst        r1,#0x10
beq        _020cdf40
add        r0,r4,#0x600
ldrsb      r0,[r0,#0x4d ]
cmp        r0,#0x2
beq        _020cdf24
ldr        r0,[DAT_overlay_d_4__020ce37c ]                  = 0209AC44h
mov        r1,#0x8
bl         FUN_0202cf6c
_020cdf24
str        r9,[sp,#0x0 ]=>local_558
ldr        r0,[r6,#0x0 ]=>DAT_02099f38
ldr        r1,[r4,#0x12c ]
mov        r3,r7
mov        r2,#0x3
bl         FUN_0211401c
strb       r7,[r4,#0x64d ]
_020cdf40
ldrh       r0,[r4,#0x8 ]
tst        r0,#0x3
ldr        r0,[r4,#0x28 ]
strbne     r10 ,[r4,#0x64d ]
cmp        r0,#0x0
beq        switchD_overlay_d_4::020cd51c::caseD_a
add        r3,r4,#0x28c
ldrsh      r1,[r3,#0x20 ]
mov        r0,r4
add        r5,r4,#0x2c0
str        r1,[sp,#0x0 ]=>local_558
ldrsh      r2,[r3,#0x22 ]
mov        r1,r9
str        r2,[sp,#local_554 ]
ldrsh      r2,[r3,#0x1c ]
ldrsh      r3,[r3,#0x1e ]
bl         FUN_overlay_d_4__020cc1d8
ldrsh      r1,[r5,#0x20 ]
mov        r6,r0
mov        r0,r4
str        r1,[sp,#0x0 ]=>local_558
ldrsh      r2,[r5,#0x22 ]
mov        r1,r9
str        r2,[sp,#local_554 ]
ldrsh      r2,[r5,#0x1c ]
ldrsh      r3,[r5,#0x1e ]
bl         FUN_overlay_d_4__020cc1d8
cmp        r6,#0x0
cmpeq      r0,#0x0
beq        _020cdfd0
ldr        r0,[DAT_overlay_d_4__020ce37c ]                  = 0209AC44h
mov        r1,#0x8
bl         FUN_0202cf6c
strb       r10 ,[r4,#0x64d ]
strb       r9,[r4,#0x64e ]
b          switchD_overlay_d_4::020cd51c::caseD_a
_020cdfd0
add        r0,r4,#0x600
ldrsb      r1,[r0,#0x4d ]
cmp        r1,#0x3
bne        switchD_overlay_d_4::020cd51c::caseD_a
ldrsb      r0,[r0,#0x4e ]
cmp        r0,#0x0
strbgt     r0,[r4,#0x64d ]
b          switchD_overlay_d_4::020cd51c::caseD_a
_020cdff0
mov        r3,#0x4000
add        r1,sp,#0x440
mov        r0,r4
strb       r6,[sp,#local_118 +0x2 ]
strb       r2,[sp,#local_118 +0x3 ]
str        r3,[sp,#local_114 ]
bl         FUN_overlay_d_4__020ce72c
ldr        r0,[r4,#0x30 ]
cmp        r0,#0x5
beq        switchD_overlay_d_4::020cd51c::caseD_a
add        r0,r4,#0x400
ldrh       r1,[r0,#0x78 ]
tst        r1,#0x6
bne        switchD_overlay_d_4::020cd51c::caseD_a
ldrh       r2,[r0,#0xac ]
tst        r2,#0x6
ldreq      r1,[r4,#0x474 ]
cmpeq      r1,#0x0
ldreq      r1,[r4,#0x4a8 ]
cmpeq      r1,#0x0
bne        switchD_overlay_d_4::020cd51c::caseD_a
ldr        r1,[r4,#0x24 ]
cmp        r1,#0x0
bne        _020ce16c
ldrh       r1,[r4,#0x8 ]
tst        r1,#0x1
beq        _020ce0cc
add        r0,r4,#0x600
ldrsb      r1,[r0,#0x4d ]
cmp        r1,#0x1
beq        _020ce07c
cmp        r1,#0x3
ldrsbeq    r0,[r0,#0x4e ]
cmpeq      r0,#0x1
bne        _020ce094
_020ce07c
add        r0,r4,#0x400
ldrh       r1,[r0,#0x78 ]
str        r5,[r4,#0x474 ]
orr        r1,r1,#0x6
strh       r1,[r0,#0x78 ]
b          switchD_overlay_d_4::020cd51c::caseD_a
_020ce094
add        r0,r4,#0x600
ldrsb      r1,[r0,#0x4d ]
cmp        r1,#0x2
beq        _020ce0b4
cmp        r1,#0x3
ldrsbeq    r0,[r0,#0x4e ]
cmpeq      r0,#0x2
bne        _020ce16c
_020ce0b4
add        r0,r4,#0x400
ldrh       r1,[r0,#0xac ]
str        r5,[r4,#0x4a8 ]
orr        r1,r1,#0x6
strh       r1,[r0,#0xac ]
b          switchD_overlay_d_4::020cd51c::caseD_a
_020ce0cc
tst        r1,#0x2
orrne      r1,r2,#0x6
strbne     r7,[r4,#0x64d ]
strhne     r1,[r0,#0xac ]
strne      r5,[r4,#0x4a8 ]
bne        switchD_overlay_d_4::020cd51c::caseD_a
tst        r1,#0x20
beq        _020ce12c
add        r0,r4,#0x600
ldrsb      r0,[r0,#0x4d ]
cmp        r0,#0x1
beq        _020ce108
ldr        r0,[DAT_overlay_d_4__020ce37c ]                  = 0209AC44h
mov        r1,#0x8
bl         FUN_0202cf6c
_020ce108
mov        r3,#0x0
str        r3,[sp,#0x0 ]=>local_558
ldr        r0,[r8,#0x0 ]=>DAT_02099f38
ldr        r1,[r4,#0x134 ]
mov        r2,#0xa
bl         FUN_0211401c
mov        r0,#0x1
strb       r0,[r4,#0x64d ]
b          _020ce16c
_020ce12c
tst        r1,#0x10
beq        _020ce16c
add        r0,r4,#0x600
ldrsb      r0,[r0,#0x4d ]
cmp        r0,#0x2
beq        _020ce150
ldr        r0,[DAT_overlay_d_4__020ce37c ]                  = 0209AC44h
mov        r1,#0x8
bl         FUN_0202cf6c
_020ce150
str        r9,[sp,#0x0 ]=>local_558
ldr        r0,[r8,#0x0 ]=>DAT_02099f38
ldr        r1,[r4,#0x134 ]
mov        r3,r7
mov        r2,#0xb
bl         FUN_0211401c
strb       r7,[r4,#0x64d ]
_020ce16c
ldrh       r0,[r4,#0x8 ]
tst        r0,#0x3
ldr        r0,[r4,#0x28 ]
strbne     r10 ,[r4,#0x64d ]
cmp        r0,#0x0
beq        _020ce218
add        r3,r4,#0x28c
ldrsh      r1,[r3,#0x20 ]
mov        r0,r4
add        r5,r4,#0x2c0
str        r1,[sp,#0x0 ]=>local_558
_020ce198
ldrsh      r2,[r3,#0x22 ]
mov        r1,r9
str        r2,[sp,#local_554 ]
ldrsh      r2,[r3,#0x1c ]
ldrsh      r3,[r3,#0x1e ]
bl         FUN_overlay_d_4__020cc1d8
ldrsh      r1,[r5,#0x20 ]=>DAT_00000024
mov        r6,r0
mov        r0,r4
str        r1,[sp,#0x0 ]=>local_558
ldrsh      r2,[r5,#0x22 ]=>DAT_00000026
mov        r1,r9
str        r2,[sp,#local_554 ]
ldrsh      r2,[r5,#0x1c ]=>DAT_00000020
ldrsh      r3,[r5,#0x1e ]=>DAT_00000022
bl         FUN_overlay_d_4__020cc1d8
cmp        r6,#0x0
cmpeq      r0,#0x0
beq        _020ce1fc
ldr        r0,[DAT_overlay_d_4__020ce37c ]                  = 0209AC44h
mov        r1,#0x8
bl         FUN_0202cf6c
strb       r10 ,[r4,#0x64d ]
strb       r9,[r4,#0x64e ]
b          _020ce218
_020ce1fc
add        r0,r4,#0x600
ldrsb      r1,[r0,#0x4d ]
cmp        r1,#0x3
bne        _020ce218
ldrsb      r0,[r0,#0x4e ]
cmp        r0,#0x0
strbgt     r0,[r4,#0x64d ]
_020ce218
mov        r0,r4
bl         FUN_overlay_d_4__020d3430
b          switchD_overlay_d_4::020cd51c::caseD_a
_020ce224
ldrb       r0,[r4,#0x998 ]
cmp        r0,#0x0
strbne     r9,[r4,#0x998 ]
bne        switchD_overlay_d_4::020cd51c::caseD_a
strb       r6,[sp,#local_118 +0x2 ]
ldr        r2,[r4,#0x34 ]
add        r1,sp,#0x440
mov        r0,r4
strb       r2,[sp,#local_118 +0x3 ]
str        r9,[sp,#local_114 ]
_020ce24c
bl         FUN_overlay_d_4__020ce72c
b          switchD_overlay_d_4::020cd51c::caseD_a
_020ce254
mov        r0,r4
bl         FUN_overlay_d_4__020d350c
b          switchD_overlay_d_4::020cd51c::caseD_a
_020ce260
mov        r0,r4
bl         FUN_overlay_d_4__020cc370
add        r7,sp,#0x1e8
mov        r3,#0x800
mov        r0,r7
mov        r1,r9
mov        r2,#0xc8
strb       r6,[sp,#local_118 +0x2 ]
str        r3,[sp,#local_114 ]
bl         MemWrite
mov        r5,#0x64
ldr        r0,[DAT_overlay_d_4__020ce35c ]                  = 0209BA20h
mov        r1,r9
mov        r2,r7
mov        r3,r5
str        r9,[sp,#0x0 ]=>local_558
bl         FUN_0204b650
add        r1,sp,#0x400
mov        r0,r7
mov        r2,r5
add        r1,r1,#0x4c
bl         _memcpy
ldr        r0,[DAT_overlay_d_4__020ce360 ]                  = 000001C7h
mov        r10 ,#0x1
add        r8,r0,#0x6b
add        r5,r0,#0xb4
add        r11 ,r0,#0x98
add        r6,r0,#0x10
FUN        r7,r0,#0x8c
b          _020ce3a8
_020ce2d8
ldr        r0,[DAT_overlay_d_4__020ce364 ]                  = 02099ED8h
mov        r1,r10
ldr        r0,[r0,#0x0 ]=>DAT_02099ed8
bl         FUN_02055388
cmp        r0,#0x0
beq        _020ce3a4
mov        r1,r9
ldrh       r3,[r0,#0x20 ]
cmp        r3,r8
bgt        _020ce32c
bge        _020ce388
ldr        r2,[DAT_overlay_d_4__020ce360 ]                  = 000001C7h
cmp        r3,r2
bgt        _020ce320
bge        _020ce388
cmp        r3,r7
beq        _020ce388
b          _020ce39c
_020ce320
cmp        r3,r6
beq        _020ce388
b          _020ce39c
_020ce32c
cmp        r3,r5
bgt        _020ce380
bge        _020ce388
cmp        r3,r11
beq        _020ce388
b          _020ce39c