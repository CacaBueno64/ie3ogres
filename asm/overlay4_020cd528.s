


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

_020CDCDC:
	ldr r0, [r4, #0xa1c]
	cmp r0, #0x78
	ble _020CDD28
	ldr r0, [r4, #0x48]
	cmp r0, #0x3
	bne _020CDD28
	ldr r1, [r4, #0x994]
	ldr r0, [_020CE36C] ; =00000301h
	and r1, r1, r0
	cmp r1, r0
	beq _020CDD28
	ldr r2, [r4, #0x34]
	mov r1, #0x200
	mov r0, r4
	str r2, [r4, #0x3c]
	str r1, [r4, #0x34]
	bl FUN_ov4_020d2468
	add sp, sp, #0x530
	ldmia sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_020CDD28:
	ldr r0, [r4, #0x48]
	cmp r0, #0x3
	bne _020CDD4C
	strb r6, [sp, #0x442]
	ldr r2, [r4, #0x994]
	add r1, sp, #0x440
	mov r0, r4
	str r2, [sp, #0x448]
_020CDD48:
	bl FUN_ov4_020ce72c
_020CDD4C:
	ldr r0, [r4, #0xa1c]
	add sp, sp, #0x530
	add r0, r0, #0x1
	str r0, [r4, #0xa1c]
	ldmia sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_020CDD60:
	add r0, r4, #0x100
	ldrh r0, [r0, #0xd4]
	tst r0, #0x6
	ldreq r0, [r4, #0x1d0]
	cmpeq r0, #0x0
	bne _020CE6A4
	mov r0, r4
	bl FUN_ov4_020d2f4c
	ldr r0, [_020CE370] ; =02099ED4h
	ldr r5, [_020CE374] ; =0209A110h
	ldr r0, [r0, #0x0] ; =_02099ed4
	ldr r1, [r5, #0x0] ; =_0209a110
	bl FUN_0210e10c
	ldr r0, [r5, #0x0] ; =_0209a110
	cmp r0, #0x0
	mov r0, r0, lsl #0xc
	beq _020CDDB8
	bl FUN_0201f74c
	mov r1, r0
	mov r0, #0x3f000000
	bl FUN_02020274
	b _020CDDC4
_020CDDB8:
	bl FUN_0201f74c
	mov r1, #0x3f000000
	bl FUN_020204a4
_020CDDC4:
	bl FUN_0201fdac
	ldr r2, [_020ce378] ; =_02099F58
	mov r1, r0
	ldr r0, [r2, #0x0] ; =_02099f58
	bl FUN_02116654
	b _020CE6A4
_020CDDDC:
	ldr r0, [r4, #0x30]
	ldr r6, [_020CE350] ; =02099F38h
	cmp r0, #0x5
	beq _020CE6A4
	add r0, r4, #0x200
	ldrh r1, [r0, #0xa4]
	tst r1, #0x6
	bne _020CE6A4
	ldrh r2, [r0, #0xd8]
	tst r2, #0x6
	ldreq r1, [r4, #0x2a0]
	cmpeq r1, #0x0
	ldreq r1, [r4, #0x2d4]
	cmpeq r1, #0x0
	bne _020CE6A4
	ldr r1, [r4, #0x24]
	cmp r1, #0x0
	bne _020CDF40
	ldrh r1, [r4, #0x8]
	tst r1, #0x1
	beq _020CDEA0
	add r0, r4, #0x600
	ldrsb r1, [r0, #0x4d]
	cmp r1, #0x1
	beq _020CDE50
	cmp r1, #0x3
	ldreqsb r0, [r0, #0x4e]
	cmpeq r0, #0x1
	bne _020CDE68
_020CDE50:
	add r0, r4, #0x200
	ldrh r1, [r0, #0xa4]
	str r5, [r4, #0x2a0]
	orr r1, r1, #0x6
	strh r1, [r0, #0xa4]
	b _020CE6A4
_020CDE68:
	add r0, r4, #0x600
	ldrsb r1, [r0, #0x4d]
	cmp r1, #0x2
	beq _020CDE88
	cmp r1, #0x3
	ldreqsb r0, [r0, #0x4e]
	cmpeq r0, #0x2
	bne _020CDF40
_020CDE88:
	add r0, r4, #0x200
	ldrh r1, [r0, #0xd8]
	str r5, [r4, #0x2d4]
	orr r1, r1, #0x6
	strh r1, [r0, #0xd8]
	b _020CE6A4
_020CDEA0:
	tst r1, #0x2
	orrne r1, r2, #0x6
	strneb r7, [r4, #0x64d]
	strneh r1, [r0, #0xd8]
	strne r5, [r4, #0x2d4]
	bne _020CE6A4
	tst r1, #0x20
	beq _020CDF00
	add r0, r4, #0x600
	ldrsb r0, [r0, #0x4d]
	cmp r0, #0x1
	beq _020CDEDC
	ldr r0, [_020CE37C] ; =0209AC44h
	mov r1, #0x8
	bl FUN_0202cf6c
_020CDEDC:
	mov r3, #0x0
	str r3, [sp, #0x0]
	ldr r0, [r6, #0x0] ; =_02099f38
	ldr r1, [r4, #0x12c]
	mov r2, #0x2
	bl FUN_0211401c
	mov r0, #0x1
	strb r0, [r4, #0x64d]
	b _020CDF40
_020CDF00:
	tst r1, #0x10
	beq _020CDF40
	add r0, r4, #0x600
	ldrsb r0, [r0, #0x4d]
	cmp r0, #0x2
	beq _020CDF24
	ldr r0, [_020CE37C] ; =0209AC44h
	mov r1, #0x8
	bl FUN_0202cf6c
_020CDF24:
	str r9, [sp, #0x0]
	ldr r0, [r6, #0x0]; =_02099f38
	ldr r1, [r4, #0x12c]
	mov r3, r7
	mov r2, #0x3
	bl FUN_0211401c
	strb r7, [r4, #0x64d]
_020CDF40:
	ldrh r0, [r4, #0x8]
	tst r0, #0x3
	ldr r0, [r4, #0x28]
	strneb r10, [r4, #0x64d]
	cmp r0, #0x0
	beq _020CE6A4
	add r3, r4, #0x28c
	ldrsh r1, [r3, #0x20]
	mov r0, r4
	add r5, r4, #0x2c0
	str r1, [sp, #0x0]
	ldrsh r2, [r3, #0x22]
	mov r1, r9
	str r2, [sp, #0x4]
	ldrsh r2, [r3, #0x1c]
	ldrsh r3, [r3, #0x1e]
	bl FUN_ov4_020cc1d8
	ldrsh r1, [r5, #0x20]
	mov r6, r0
	mov r0, r4
	str r1, [sp, #0x0]
	ldrsh r2, [r5, #0x22]
	mov r1, r9
	str r2, [sp, #0x4]
	ldrsh r2, [r5, #0x1c]
	ldrsh r3, [r5, #0x1e]
	bl FUN_ov4_020cc1d8
	cmp r6, #0x0
	cmpeq r0, #0x0
	beq _020CDFD0
	ldr r0, [_020CE37C] ; =0209AC44h
	mov r1, #0x8
	bl FUN_0202cf6c
	strb r10, [r4, #0x64d]
	strb r9, [r4, #0x64e]
	b _020CE6A4
_020CDFD0:
	add r0, r4, #0x600
	ldrsb r1, [r0, #0x4d]
	cmp r1, #0x3
	bne _020CE6A4
	ldrsb r0, [r0, #0x4e]
	cmp r0, #0x0
	strgtb r0, [r4, #0x64d]
	b _020CE6A4
_020CDFF0:
	mov r3, #0x4000
	add r1, sp, #0x440
	mov r0, r4
	strb r6, [sp, #0x442]
	strb r2, [sp, #0x443]
	str r3, [sp, #0x444]
	bl FUN_ov4_020ce72c
	ldr r0, [r4, #0x30]
	cmp r0, #0x5
	beq _020CE6A4
	add r0, r4, #0x400
	ldrh r1, [r0, #0x78]
	tst r1, #0x6
	bne _020CE6A4
	ldrh r2, [r0, #0xac]
	tst r2, #0x6
	ldreq r1, [r4, #0x474]
	cmpeq r1, #0x0
	ldreq r1, [r4, #0x4a8]
	cmpeq r1, #0x0
	bne _020CE6A4
	ldr r1, [r4, #0x24]
	cmp r1, #0x0
	bne _020CE16C
	ldrh r1, [r4, #0x8]
	tst r1, #0x1
	beq _020CE0CC
	add r0, r4, #0x600
	ldrsb r1, [r0, #0x4d]
	cmp r1, #0x1
	beq _020CE07C
	cmp r1, #0x3
	ldreqsb r0, [r0, #0x4e]
	cmpeq r0, #0x1
	bne _020CE094
_020CE07C:
	add r0, r4, #0x400
	ldrh r1, [r0, #0x78]
	str r5, [r4, #0x474]
	orr r1, r1, #0x6
	strh r1, [r0, #0x78]
	b _020CE6A4
_020CE094:
	add r0, r4, #0x600
	ldrsb r1, [r0, #0x4d]
	cmp r1, #0x2
	beq _020CE0B4
	cmp r1, #0x3
	ldreqsb r0, [r0, #0x4e]
	cmpeq r0, #0x2
	bne _020CE16C
_020CE0B4:
	add r0, r4, #0x400
	ldrh r1, [r0, #0xac]
	str r5, [r4, #0x4a8]
	orr r1, r1, #0x6
	strh r1, [r0, #0xac]
	b _020CE6A4
_020CE0CC:
	tst r1, #0x2
	orrne r1, r2, #0x6
	strneb r7, [r4, #0x64d]
	strneh r1, [r0, #0xac]
	strne r5, [r4, #0x4a8]
	bne _020CE6A4
	tst r1, #0x20
	beq _020CE12C
	add r0, r4, #0x600
	ldrsb r0, [r0, #0x4d]
	cmp r0, #0x1
	beq _020CE108
	ldr r0, [_020CE37C] ; =0209AC44h
	mov r1, #0x8
	bl FUN_0202cf6c
_020CE108:
	mov r3, #0x0
	str r3, [sp, #0x0]
	ldr r0, [r8, #0x0]; =_02099f38
	ldr r1, [r4, #0x134]
	mov r2, #0xa
	bl FUN_0211401c
	mov r0, #0x1
	strb r0, [r4, #0x64d]
	b _020CE16C
_020CE12C:
	tst r1, #0x10
	beq _020CE16C
	add r0, r4, #0x600
	ldrsb r0, [r0, #0x4d]
	cmp r0, #0x2
	beq _020CE150
	ldr r0, [_020CE37C] ; =0209AC44h
	mov r1, #0x8
	bl FUN_0202cf6c
_020CE150:
	str r9, [sp, #0x0]
	ldr r0, [r8, #0x0] ; =_02099f38
	ldr r1, [r4, #0x134]
	mov r3, r7
	mov r2, #0xb
	bl FUN_0211401c
	strb r7, [r4, #0x64d]
_020CE16C:
	ldrh r0, [r4, #0x8]
	tst r0, #0x3
	ldr r0, [r4, #0x28]
	strneb r10, [r4, #0x64d]
	cmp r0, #0x0
	beq _020CE218
	add r3, r4, #0x28c
	ldrsh r1, [r3, #0x20]
	mov r0, r4
	add r5, r4, #0x2c0
	str r1, [sp, #0x0]
_020CE198:
	ldrsh r2, [r3, #0x22]
	mov r1, r9
	str r2, [sp, #0x4]
	ldrsh r2, [r3, #0x1c]
	ldrsh r3, [r3, #0x1e]
	bl FUN_ov4_020cc1d8
	ldrsh r1, [r5, #0x20] ; =_00000024
	mov r6, r0
	mov r0, r4
	str r1, [sp, #0x0]
	ldrsh r2, [r5, #0x22] ; =_00000026
	mov r1, r9
	str r2, [sp, #0x4]
	ldrsh r2, [r5, #0x1c] ; =_00000020
	ldrsh r3, [r5, #0x1e] ; =_00000022
	bl FUN_ov4_020cc1d8
	cmp r6, #0x0
	cmpeq r0, #0x0
	beq _020CE1FC
	ldr r0, [_020CE37C] ; =0209AC44h
	mov r1, #0x8
	bl FUN_0202cf6c
	strb r10, [r4, #0x64d]
	strb r9, [r4, #0x64e]
	b _020CE218
_020CE1FC:
	add r0, r4, #0x600
	ldrsb r1, [r0, #0x4d]
	cmp r1, #0x3
	bne _020CE218
	ldrsb r0, [r0, #0x4e]
	cmp r0, #0x0
	strgtb r0, [r4, #0x64d]
_020CE218:
	mov r0, r4
	bl FUN_ov4_020d3430
	b _020CE6A4
_020CE224:
	ldrb r0, [r4, #0x998]
	cmp r0, #0x0
	strneb r9, [r4, #0x998]
	bne _020CE6A4
	strb r6, [sp, #0x442]
	ldr r2, [r4, #0x34]
	add r1, sp, #0x440
	mov r0, r4
	strb r2, [sp, #0x443]
	str r9, [sp, #0x444]
_020CE24C:
	bl FUN_ov4_020ce72c
	b _020CE6A4
_020CE254:
	mov r0, r4
	bl FUN_ov4_020d350c
	b _020CE6A4
_020CE260:
	mov r0, r4
	bl FUN_ov4_020cc370
	add r7, sp, #0x1e8
	mov r3, #0x800
	mov r0, r7
	mov r1, r9
	mov r2, #0xc8
	strb r6, [sp, #0x442]
	str r3, [sp, #0x444]
	bl MemWrite
	mov r5, #0x64
	ldr r0, [_020CE35C] ; =0209BA20h
	mov r1, r9
	mov r2, r7
	mov r3, r5
	str r9, [sp, #0x0]
	bl FUN_0204b650
	add r1, sp, #0x400
	mov r0, r7
	mov r2, r5
	add r1, r1, #0x4c
	bl _memcpy
	ldr r0, [_020CE360] ; =000001C7h
	mov r10, #0x1
	add r8, r0, #0x6b
	add r5, r0, #0xb4
	add r11, r0, #0x98
	add r6, r0, #0x10
	FUN r7, r0, #0x8c
	b _020CE3A8
_020ce2d8:
	ldr r0, [_020CE364] ; =02099ED8h
	mov r1, r10
	ldr r0, [r0, #0x0] ; =_02099ed8
	bl FUN_02055388
	cmp r0, #0x0
	beq _020CE3A4
	mov r1, r9
	ldrh r3, [r0, #0x20]
	cmp r3, r8
	bgt _020CE32C
	bge _020CE388
	ldr r2, [_020CE360] ; =000001C7h
	cmp r3, r2
	bgt _020CE320
	bge _020CE388
	cmp r3, r7
	beq _020CE388
	b _020CE39C
_020CE320:
	cmp r3, r6
	beq _020CE388
	b _020CE39C
_020CE32C:
	cmp r3, r5
	bgt _020ce380
	bge _020CE388
	cmp r3, r11
	beq _020CE388
	b _020CE39C
_020CE344: .word 0x0209AEC0
