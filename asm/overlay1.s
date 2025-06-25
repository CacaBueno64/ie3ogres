
	.include "/macros/function.inc"
	.include "/include/overlay1.inc"

	.text
	arm_func_start FUN_ov1_020bcb40
FUN_ov1_020bcb40: ; 0x020BCB40
	stmfd sp!, {r4, r5, r6, r7, r8, lr}
	ldr r6, _020BCBB8 ; =0x0209A4E0
	mov r5, #0xf0
	mov r7, #0
	mov r8, r0
	mov r0, r7
	mov r1, r6
	mov r2, r5
	bl MIi_CpuClearFast
	ldr r4, _020BCBBC ; =0x0209AEC0
	mov r1, r6
	mov r0, r4
	bl FUN_02046b54
	mov r0, r4
	mov r1, r6
	mov r2, r5
	bl FUN_02046a20
	ldr r0, _020BCBC0 ; =0x020E9480
	mov r1, #1
	strb r7, [r0, #1]
	strb r1, [r0, #4]
	strb r1, [r0, #2]
	bl FUN_ov16_020f054c
	ldr r0, [r8, #0x80]
	cmp r0, #0
	ldmeqfd sp!, {r4, r5, r6, r7, r8, pc}
	ldr r1, [r0]
	ldr r1, [r1, #0x24]
	blx r1
	ldmfd sp!, {r4, r5, r6, r7, r8, pc}
_020BCBB8: .word 0x0209A4E0
_020BCBBC: .word 0x0209AEC0
_020BCBC0: .word 0x020E9480
	arm_func_end FUN_ov1_020bcb40

	arm_func_start FUN_ov1_020bcbc4
FUN_ov1_020bcbc4: ; 0x020BCBC4
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	ldr r6, _020BCC20 ; =0x0209A4E0
	mov r5, #0xf0
	mov r7, r0
	mov r1, r6
	mov r2, r5
	mov r0, #0
	bl MIi_CpuClearFast
	ldr r4, _020BCC24 ; =0x0209AEC0
	mov r1, r6
	mov r0, r4
	bl FUN_02046b54
	mov r0, r4
	mov r1, r6
	mov r2, r5
	bl FUN_02046a20
	ldr r0, [r7, #0x80]
	cmp r0, #0
	ldmeqfd sp!, {r3, r4, r5, r6, r7, pc}
	ldr r1, [r0]
	ldr r1, [r1, #0x28]
	blx r1
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_020BCC20: .word 0x0209A4E0
_020BCC24: .word 0x0209AEC0
	arm_func_end FUN_ov1_020bcbc4

	arm_func_start FUN_ov1_020bcc28
FUN_ov1_020bcc28: ; 0x020BCC28
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, lr}
	sub sp, sp, #8
	str r0, [sp]
	ldr r0, [r0, #0x80]
	mov r7, #1
	ldr r1, [r0]
	mov r6, #0
	ldr r1, [r1, #0x2c]
	blx r1
	cmp r0, #0
	addeq sp, sp, #8
	moveq r0, r7
	ldmeqfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
	ldr r0, _020BCEC4 ; =0x020E9480
	ldrb r0, [r0, #3]
	cmp r0, #0
	addeq sp, sp, #8
	moveq r0, r6
	ldmeqfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
	ldr r4, _020BCEC8 ; =0x0209AEC0
	mov r5, r6
	mov r0, r4
	bl FUN_02046744
	mov r8, r0
	mov r0, r4
	bl FUN_02046730
	str r0, [sp, #4]
	mov r0, r5
	mov r1, r5
	bl FUN_ov16_020f0634
	mov r11, r0
	mov r0, r4
	mov r1, r11
	mov r2, #0xf0
	bl FUN_02046950
	ldr r1, _020BCECC ; =0x0209A108
	cmp r0, #0
	movgt r5, r7
	str r0, [r1]
	cmp r5, #0
	bne _020BCDA4
	ldr r0, _020BCEC8 ; =0x0209AEC0
	bl FUN_020466e4
	cmp r0, #0
	bne _020BCD98
	ldr r0, _020BCED0 ; =0x0209C2C4
	bl FUN_0202f634
	cmp r0, #0
	bne _020BCD98
	ldr r0, [sp]
	bl FUN_02041fec
	cmp r0, #0x4a
	beq _020BCD90
	ldr r0, [sp]
	bl FUN_0204201c
	cmp r0, #0x4a
	beq _020BCD90
	ldr r0, _020BCED4 ; =0x020A0640
	ldrb r0, [r0, #0x8c]
	cmp r0, #0
	bne _020BCD90
	ldr r0, _020BCED8 ; =0x020AF81C
	mov r1, r7
	bl FUN_02044620
	mov r0, #6
	bl FUN_ov16_020f153c
	ldr r0, [sp]
	mov r1, r6
	mov r2, #0x4a
	bl FUN_02041eac
	ldr r0, [sp]
	mov r1, r7
	mov r2, #0x69
	bl FUN_02041eac
	ldr r0, _020BCEDC ; =0x0209A454
	ldr r1, _020BCEE0 ; =0x020E8450
	strb r6, [r0, #0x40]
	strb r6, [r0, #0x60]
	cmp r1, #0
	ldr r4, _020BCEE4 ; =0x020E8464
	beq _020BCD78
	ldr r0, _020BCEE8 ; =0x0209A494
	mov r2, #0x20
	bl STD_CopyLString
_020BCD78:
	cmp r4, #0
	beq _020BCD90
	ldr r0, _020BCEEC ; =0x0209A4B4
	mov r1, r4
	mov r2, #0x20
	bl STD_CopyLString
_020BCD90:
	ldr r0, _020BCEC4 ; =0x020E9480
	strb r6, [r0, #4]
_020BCD98:
	add sp, sp, #8
	mov r0, #0
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_020BCDA4:
	mov r9, #0
	ldr r5, _020BCEC8 ; =0x0209AEC0
	ldr r4, _020BCECC ; =0x0209A108
	b _020BCE0C
_020BCDB4:
	tst r8, r7, lsl r9
	beq _020BCE08
	mov r10, r6
	b _020BCDFC
_020BCDC4:
	mov r0, r9
	mov r1, r10
	bl FUN_ov16_020f0634
	mov r1, r0
	mov r2, r7
	cmp r9, #0
	movne r2, r6
	mov r0, r5
	bl FUN_02046b6c
	cmp r0, #0
	addeq sp, sp, #8
	moveq r0, #0
	ldmeqfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
	add r10, r10, #1
_020BCDFC:
	ldr r0, [r4]
	cmp r10, r0
	blt _020BCDC4
_020BCE08:
	add r9, r9, #1
_020BCE0C:
	cmp r9, #4
	blt _020BCDB4
	ldr r0, _020BCEC4 ; =0x020E9480
	mov r4, #1
	ldrb r0, [r0, #2]
	cmp r0, #0
	beq _020BCEA8
	ldrb r0, [r11, #2]
	mov r3, r4
	mov r1, #0xf0
	b _020BCE58
_020BCE38:
	tst r8, r4, lsl r3
	mlane r2, r3, r1, r11
	ldrneb r2, [r2, #2]
	cmpne r0, r2
	addne sp, sp, #8
	movne r0, #0
	ldmnefd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
	add r3, r3, #1
_020BCE58:
	cmp r3, #4
	blt _020BCE38
	ldr r0, [sp]
	bl FUN_02041fec
	mov r3, #0
	mov r2, #0xf0
	b _020BCEA0
_020BCE74:
	ldr r1, [sp, #4]
	cmp r1, r3
	beq _020BCE9C
	tst r8, r4, lsl r3
	mlane r1, r3, r2, r11
	ldrneb r1, [r1, #2]
	cmpne r0, r1
	addne sp, sp, #8
	movne r0, #0
	ldmnefd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_020BCE9C:
	add r3, r3, #1
_020BCEA0:
	cmp r3, #4
	blt _020BCE74
_020BCEA8:
	ldr r0, [sp]
	ldr r0, [r0, #0x80]
	ldr r1, [r0]
	ldr r1, [r1, #0x30]
	blx r1
	add sp, sp, #8
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_020BCEC4: .word 0x020E9480
_020BCEC8: .word 0x0209AEC0
_020BCECC: .word 0x0209A108
_020BCED0: .word 0x0209C2C4
_020BCED4: .word 0x020A0640
_020BCED8: .word 0x020AF81C
_020BCEDC: .word 0x0209A454
_020BCEE0: .word 0x020E8450
_020BCEE4: .word 0x020E8464
_020BCEE8: .word 0x0209A494
_020BCEEC: .word 0x0209A4B4
	arm_func_end FUN_ov1_020bcc28

	arm_func_start FUN_ov1_020bcef0
FUN_ov1_020bcef0: ; 0x020BCEF0
	stmfd sp!, {r4, lr}
	ldr r1, [r0, #0x80]
	cmp r1, #0
	ldmeqfd sp!, {r4, pc}
	ldr r1, _020BCF4C ; =0x020A0640
	ldrb r1, [r1, #0x1a]
	cmp r1, #0
	beq _020BCF3C
	ldr r1, _020BCF50 ; =0x020E9480
	mov r4, #0
	ldrb r1, [r1, #4]
	cmp r1, #0
	beq _020BCF30
	bl FUN_ov1_020bcc28
	cmp r0, #0
	movne r4, #1
_020BCF30:
	ldr r0, _020BCF50 ; =0x020E9480
	strb r4, [r0, #1]
	ldmfd sp!, {r4, pc}
_020BCF3C:
	ldr r0, _020BCF50 ; =0x020E9480
	mov r1, #1
	strb r1, [r0, #1]
	ldmfd sp!, {r4, pc}
_020BCF4C: .word 0x020A0640
_020BCF50: .word 0x020E9480
	arm_func_end FUN_ov1_020bcef0

	arm_func_start FUN_ov1_020bcf54
FUN_ov1_020bcf54: ; 0x020BCF54
	stmfd sp!, {r3, r4, r5, lr}
	mov r4, r0
	ldr r0, [r4, #0x80]
	cmp r0, #0
	ldrne r1, _020BCFC8 ; =0x020A0640
	ldrneb r1, [r1, #0x1a]
	cmpne r1, #0
	ldmeqfd sp!, {r3, r4, r5, pc}
	ldr r1, [r0]
	ldr r1, [r1, #0x34]
	blx r1
	cmp r0, #0
	ldmeqfd sp!, {r3, r4, r5, pc}
	ldr r0, [r4, #0x80]
	ldr r1, [r0]
	ldr r1, [r1, #0x38]
	blx r1
	cmp r0, #0
	ldmeqfd sp!, {r3, r4, r5, pc}
	ldr r5, _020BCFCC ; =0x0209AEC0
	ldr r4, _020BCFD0 ; =0x0209A4E0
	mov r0, r5
	mov r1, r4
	bl FUN_02046b54
	mov r0, r5
	mov r1, r4
	mov r2, #0xf0
	bl FUN_02046a20
	ldmfd sp!, {r3, r4, r5, pc}
_020BCFC8: .word 0x020A0640
_020BCFCC: .word 0x0209AEC0
_020BCFD0: .word 0x0209A4E0
	arm_func_end FUN_ov1_020bcf54

	arm_func_start FUN_ov1_020bcfd4
FUN_ov1_020bcfd4: ; 0x020BCFD4
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, lr}
	mov r5, #0
	mov r10, r0
	mov r0, r5
	sub r1, r5, #1
	ldr r7, _020BD504 ; =0x0209BA20
	bl FUN_02002f14
	ldr r4, _020BD508 ; =0x020A0640
	ldr r0, _020BD50C ; =0x020E9480
	ldrb r1, [r4, #0x87]
	str r5, [r0, #0xc]
	cmp r1, #0
	ldreqb r0, [r4, #0x88]
	cmpeq r0, #0
	beq _020BD034
	mov r5, #0x1c0
	ldr r0, _020BD510 ; =0x0209A250
	mov r1, r5
	bl FUN_0202de44
	ldr r3, _020BD50C ; =0x020E9480
	mov r2, r5
	mov r1, #0
	str r0, [r3, #0xc]
	bl MI_CpuFill8
_020BD034:
	ldrb r0, [r4, #0x1a]
	cmp r0, #0
	beq _020BD04C
	bl FUN_ov16_020f067c
	cmp r0, #0
	beq _020BD068
_020BD04C:
	mov r0, r7
	bl FUN_020728e8
	mov r2, r0
	mov r0, r7
	and r1, r2, #0xff
	strb r2, [r4, #0x90]
	bl FUN_0206f9dc
_020BD068:
	ldrb r6, [r4, #0x1a]
	mov r8, #0
	ldr r5, _020BD50C ; =0x020E9480
	ldr r0, _020BD514 ; =0x0209AC44
	mov r2, r8
	mov r3, r8
	mov r1, #3
	strb r6, [r5, #3]
	bl FUN_0202b838
	ldr r5, _020BD518 ; =0x0000019E
	ldr r6, _020BD51C ; =0x0209A0AC
	b _020BD0C0
_020BD098:
	mov r0, r6
	mov r1, r8
	bl FUN_0206c6fc
	cmp r0, #0
	beq _020BD0B4
	mov r1, r5
	bl FUN_0206d634
_020BD0B4:
	add r0, r8, #1
	mov r0, r0, lsl #0x10
	mov r8, r0, lsr #0x10
_020BD0C0:
	cmp r8, #0x64
	blo _020BD098
	add r0, r10, #0x1200
	mov r1, #0x20
	bl FUN_0206c158
	mov r0, r7
	bl FUN_020731a4
	cmp r0, #0
	beq _020BD148
	mov r6, #0
	mov r0, r7
	mov r1, r6
	bl FUN_0205106c
	mov r5, r0
	ldr r4, _020BD51C ; =0x0209A0AC
	b _020BD13C
_020BD100:
	mov r0, r5
	mov r1, r6
	bl FUN_02050244
	movs r1, r0
	beq _020BD130
	mov r0, r4
	bl FUN_0206c718
	movs r2, r0
	beq _020BD130
	mov r1, r6
	add r0, r10, #0x1200
	bl FUN_0206c56c
_020BD130:
	add r0, r6, #1
	mov r0, r0, lsl #0x10
	mov r6, r0, lsr #0x10
_020BD13C:
	cmp r6, #4
	blo _020BD100
	b _020BD2CC
_020BD148:
	ldr r0, _020BD520 ; =0x02099E98
	ldrb r0, [r0]
	cmp r0, #0
	bne _020BD164
	ldrb r0, [r4, #0x1b]
	cmp r0, #0
	beq _020BD26C
_020BD164:
	ldr r0, _020BD520 ; =0x02099E98
	ldrb r0, [r0]
	cmp r0, #0
	bne _020BD180
	bl FUN_ov16_020f068c ; may be ov17
	cmp r0, #0
	beq _020BD248
_020BD180:
	ldr r0, _020BD504 ; =0x0209BA20
	bl FUN_0204ba48
	bl FUN_ov16_020f068c ; may be ov17
	cmp r0, #0
	bne _020BD248
	mov r11, #0x2000
	mov r6, #0x8000
	mov r9, #0
	mov r5, r6
	mov r4, r11
	ldr r7, _020BD51C ; =0x0209A0AC
	b _020BD240
_020BD1B0:
	mov r0, r7
	mov r1, r9
	bl FUN_0206c6fc
	movs r8, r0
	beq _020BD23C
	mov r1, r6
	bl FUN_0206d434
	cmp r0, #0
	beq _020BD1E8
	mov r0, r8
	mov r1, r11
	bl FUN_0206d434
	cmp r0, #0
	bne _020BD248
_020BD1E8:
	mov r0, r8
	mov r1, r5
	bl FUN_0206d434
	cmp r0, #0
	mov r0, r8
	beq _020BD214
	mov r1, r5
	bl FUN_0206d3fc
	mov r0, r8
	mov r1, #0x2000
	b _020BD238
_020BD214:
	mov r1, r4
	bl FUN_0206d434
	cmp r0, #0
	beq _020BD23C
	mov r0, r8
	mov r1, r4
	bl FUN_0206d3fc
	mov r0, r8
	mov r1, r5
_020BD238:
	bl FUN_0206d3c8
_020BD23C:
	add r9, r9, #1
_020BD240:
	cmp r9, #0x64
	blt _020BD1B0
_020BD248:
	ldr r5, _020BD504 ; =0x0209BA20
	mov r4, #0
	mov r0, r5
	mov r1, r4
	mov r2, #2
	bl FUN_0204b9c4
	mov r0, r5
	mov r1, r4
	bl FUN_0204da5c
_020BD26C:
	mov r6, #0
	ldr r0, _020BD504 ; =0x0209BA20
	mov r1, r6
	bl FUN_0205107c
	mov r5, r0
	ldr r4, _020BD51C ; =0x0209A0AC
	b _020BD2C4
_020BD288:
	mov r0, r5
	mov r1, r6
	bl FUN_0204fbe8
	movs r1, r0
	beq _020BD2B8
	mov r0, r4
	bl FUN_0206c718
	movs r2, r0
	beq _020BD2B8
	mov r1, r6
	add r0, r10, #0x1200
	bl FUN_0206c56c
_020BD2B8:
	add r0, r6, #1
	mov r0, r0, lsl #0x10
	mov r6, r0, lsr #0x10
_020BD2C4:
	cmp r6, #0x10
	blo _020BD288
_020BD2CC:
	add r0, r10, #0x1200
	ldr r6, _020BD508 ; =0x020A0640
	mov r5, #0
	bl FUN_ov16_020efa04
	ldr r0, _020BD524 ; =0x02099EF0
	ldr r4, _020BD528 ; =0x0209A11C
	ldr r0, [r0]
	add r1, r10, #0x1200
	str r1, [r0, #0x4d8]
	ldr r0, [r4]
	ldr r1, _020BD52C ; =0x020E9494
	bl FUN_0206c940
	ldr r0, [r4]
	ldr r1, _020BD530 ; =0x020E9894
	bl FUN_0206c88c
	mov r7, r5
	b _020BD328
_020BD310:
	ldr r0, [r4]
	mov r1, r7
	bl FUN_0206c6fc
	add r0, r7, #1
	mov r0, r0, lsl #0x10
	mov r7, r0, lsr #0x10
_020BD328:
	ldr r0, [r4]
	bl FUN_0206c2f8
	cmp r7, r0
	blo _020BD310
	ldr r7, _020BD534 ; =0x02099EB0
	mov r2, r5
	ldr r0, [r7]
	mov r1, #3
	bl FUN_020521d0
	mov r4, #1
	ldr r0, [r7]
	mov r1, r4
	mov r2, r5
	bl FUN_020521d0
	ldr r0, [r7]
	mov r2, r5
	mov r1, #5
	bl FUN_020521d0
	ldr r0, _020BD538 ; =0x02099EE8
	mov r1, #6
	ldr r0, [r0]
	mov r2, r5
	bl FUN_020521d0
	ldr r1, _020BD53C ; =0x020E8474
	mov r0, r5
	bl FUN_02085e4c
	ldr r7, _020BD540 ; =0x0209A200
	ldr r1, _020BD544 ; =0x020E8480
	str r0, [r7, #0x14]
	mov r0, r5
	bl FUN_02085e4c
	str r0, [r7, #0x18]
	ldr r1, _020BD548 ; =0x020E848C
	mov r0, r5
	bl FUN_02085e4c
	str r0, [r7, #0x1c]
	ldr r1, _020BD54C ; =0x020E84A0
	mov r0, r5
	bl FUN_02085e4c
	str r0, [r7, #0x20]
	ldr r7, _020BD50C ; =0x020E9480
	strb r5, [r7, #5]
	strb r5, [r7, #6]
	strb r5, [r7]
	str r5, [r7, #8]
	ldrb r0, [r6, #0x1a]
	cmp r0, #0
	beq _020BD400
	ldr r0, _020BD510 ; =0x0209A250
	ldr r1, _020BD550 ; =0x000051C0
	mov r3, r4
	mov r2, #0x12
	bl FUN_0202de58
	str r0, [r7, #8]
_020BD400:
	mov r0, #0x21c
	bl FUN_0201e014
	cmp r0, #0
	beq _020BD414
	bl FUN_ov1_020def94
_020BD414:
	ldr r2, _020BD554 ; =0x02099F14
	mov r1, #1
	str r0, [r2]
	bl FUN_ov1_020df01c
	ldr r0, _020BD558 ; =0x0000E508
	bl FUN_0201e014
	ldr r1, _020BD55C ; =0x0209A128
	str r0, [r1]
	bl FUN_ov1_020dc234
	mov r0, #0x3a8
	bl FUN_0201e014
	cmp r0, #0
	strne r5, [r0, #0x228]
	ldr r1, _020BD560 ; =0x0209A114
	strne r5, [r0, #0x22c]
	str r0, [r1]
	bl FUN_ov1_020dd810
	mov r0, r10
	ldr r2, [r0]
	mov r1, #2
	ldr r2, [r2, #0xc]
	blx r2
	bl FUN_02059d9c
	ldr r0, _020BD564 ; =0x0209A3E0
	mov r1, #3
	str r1, [r0, #0x2c]
	mov r6, #1
	str r6, [r0, #0x30]
	mov r0, r10
	mov r1, r5
	mov r2, r5
	str r5, [r10, #0x80]
	str r5, [r10, #0x84]
	bl FUN_02041f74
	mov r0, r10
	mov r1, r6
	mov r2, r5
	bl FUN_02041f74
	mov r4, #0x32
	mov r0, r10
	mov r1, r5
	mov r2, r4
	bl FUN_02041eac
	mov r1, r6
	mov r2, r4
	mov r0, r10
	bl FUN_02041eac
	strb r5, [r10, #0x89]
	strb r5, [r10, #0x88]
	mov r0, r10
	ldr r1, [r0]
	ldr r1, [r1, #0x34]
	blx r1
	ldr r4, _020BD568 ; =0x020AF81C
	mov r0, r4
	bl FUN_020443c0
	mov r0, r4
	mov r1, #0x36
	bl FUN_02044e98
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_020BD504: .word 0x0209BA20
_020BD508: .word 0x020A0640
_020BD50C: .word 0x020E9480
_020BD510: .word 0x0209A250
_020BD514: .word 0x0209AC44
_020BD518: .word 0x0000019E
_020BD51C: .word 0x0209A0AC
_020BD520: .word 0x02099E98
_020BD524: .word 0x02099EF0
_020BD528: .word 0x0209A11C
_020BD52C: .word 0x020E9494
_020BD530: .word 0x020E9894
_020BD534: .word 0x02099EB0
_020BD538: .word 0x02099EE8
_020BD53C: .word 0x020E8474
_020BD540: .word 0x0209A200
_020BD544: .word 0x020E8480
_020BD548: .word 0x020E848C
_020BD54C: .word 0x020E84A0
_020BD550: .word 0x000051C0
_020BD554: .word 0x02099F14
_020BD558: .word 0x0000E508
_020BD55C: .word 0x0209A128
_020BD560: .word 0x0209A114
_020BD564: .word 0x0209A3E0
_020BD568: .word 0x020AF81C
	arm_func_end FUN_ov1_020bcfd4

	arm_func_start FUN_ov1_020bd56c
FUN_ov1_020bd56c: ; 0x020BD56C
	stmfd sp!, {r4, lr}
	mov r4, r1
	bl FUN_02041c58
	cmp r4, #0
	bne _020BD58C
	ldr r0, _020BD594 ; =0x02099F14
	ldr r0, [r0]
	bl FUN_ov1_020e038c
_020BD58C:
	mov r0, #0
	ldmfd sp!, {r4, pc}
_020BD594: .word 0x02099F14
	arm_func_end FUN_ov1_020bd56c

	arm_func_start FUN_ov1_020bd598
FUN_ov1_020bd598: ; 0x020BD598
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	mov r5, r0
	ldr r0, [r5, #0x80]
	cmp r0, #0
	beq _020BD5C0
	ldr r1, [r0]
	ldr r1, [r1, #0x20]
	blx r1
	mov r0, r5
	bl FUN_ov1_020bcbc4
_020BD5C0:
	ldr r0, [r5, #0x84]
	cmp r0, #0
	beq _020BD5D8
	ldr r1, [r0]
	ldr r1, [r1, #0x20]
	blx r1
_020BD5D8:
	ldr r4, _020BD7A0 ; =0x020E9480
	ldr r1, [r4, #8]
	cmp r1, #0
	beq _020BD5F8
	ldr r0, _020BD7A4 ; =0x0209A250
	bl FUN_0202e1c0
	mov r0, #0
	str r0, [r4, #8]
_020BD5F8:
	ldr r1, _020BD7A8 ; =0x0209A3E0
	mvn r2, #0
	ldr r0, _020BD7AC ; =0x0209AEC0
	str r2, [r1, #0x2c]
	bl FUN_0204665c
	ldr r1, _020BD7B0 ; =0x020A0640
	mov r6, #0
	ldr r0, _020BD7B4 ; =0x020AF81C
	strb r6, [r1, #0x1a]
	bl FUN_020443d4
	ldr r4, _020BD7B8 ; =0x0209AC44
	mov r1, r6
	mov r0, r4
	bl FUN_0202c470
	mov r0, r4
	mov r1, r6
	bl FUN_0202cff8
	mov r0, r4
	mov r1, r6
	mov r2, r6
	bl FUN_0202d774
	mov r0, r4
	mov r1, #2
	mov r2, r6
	mov r3, r6
	bl FUN_0202b838
	ldr r4, _020BD7BC ; =0x0209A114
	ldr r0, [r4]
	bl FUN_0201e078
	str r6, [r4]
	ldr r4, _020BD7C0 ; =0x0209A128
	ldr r0, [r4]
	bl FUN_0201e078
	str r6, [r4]
	ldr r0, _020BD7C4 ; =0x02099F14
	ldr r0, [r0]
	cmp r0, #0
	beq _020BD69C
	ldr r1, [r0]
	ldr r1, [r1, #8]
	blx r1
_020BD69C:
	ldr r0, _020BD7C4 ; =0x02099F14
	mov r4, #0
	ldr r7, _020BD7C8 ; =0x0209A200
	str r4, [r0]
	ldr r0, [r7, #0x20]
	bl FUN_02086040
	ldr r0, [r7, #0x1c]
	bl FUN_02086040
	ldr r0, [r7, #0x18]
	bl FUN_02086040
	ldr r0, [r7, #0x14]
	bl FUN_02086040
	sub r0, r4, #1
	str r0, [r7, #0x20]
	str r0, [r7, #0x1c]
	str r0, [r7, #0x18]
	ldr r6, _020BD7CC ; =0x02099EB0
	str r0, [r7, #0x14]
	ldr r0, [r6]
	mov r1, #3
	bl FUN_020522ec
	ldr r0, [r6]
	mov r1, #1
	bl FUN_020522ec
	ldr r0, _020BD7D0 ; =0x02099EE8
	mov r1, #6
	ldr r0, [r0]
	bl FUN_020522ec
	ldr r0, [r6]
	mov r1, #5
	bl FUN_020522ec
	mov r0, r5
	mov r1, #2
	ldr r2, [r0]
	ldr r2, [r2, #0x28]
	blx r2
	ldr r6, _020BD7D4 ; =0x0209A11C
	ldr r0, [r6]
	bl FUN_0206c9a0
	ldr r0, [r6]
	bl FUN_0206c8dc
	add r0, r5, #0x1200
	bl FUN_0206c270
	ldr r0, _020BD7D8 ; =0x0209A0AC
	bl FUN_ov16_020efa04
	ldr r6, _020BD7A0 ; =0x020E9480
	ldr r1, [r6, #0xc]
	cmp r1, #0
	beq _020BD76C
	ldr r0, _020BD7A4 ; =0x0209A250
	bl FUN_0202e1c0
	str r4, [r6, #0xc]
_020BD76C:
	mov r0, #0
	sub r1, r0, #1
	bl FUN_02002f14
	add r0, r5, #0x1000
	ldr r4, _020BD7A4 ; =0x0209A250
	ldr r1, [r0, #0x1f8]
	mov r0, r4
	bl FUN_0202e1c0
	add r0, r5, #0x1000
	ldr r1, [r0, #0x1fc]
	mov r0, r4
	bl FUN_0202e1c0
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_020BD7A0: .word 0x020E9480
_020BD7A4: .word 0x0209A250
_020BD7A8: .word 0x0209A3E0
_020BD7AC: .word 0x0209AEC0
_020BD7B0: .word 0x020A0640
_020BD7B4: .word 0x020AF81C
_020BD7B8: .word 0x0209AC44
_020BD7BC: .word 0x0209A114
_020BD7C0: .word 0x0209A128
_020BD7C4: .word 0x02099F14
_020BD7C8: .word 0x0209A200
_020BD7CC: .word 0x02099EB0
_020BD7D0: .word 0x02099EE8
_020BD7D4: .word 0x0209A11C
_020BD7D8: .word 0x0209A0AC
	arm_func_end FUN_ov1_020bd598

	arm_func_start FUN_ov1_020bd7dc
FUN_ov1_020bd7dc: ; 0x020BD7DC
	stmfd sp!, {r4, lr}
	mov r4, r0
	bl FUN_0201e078
	mov r0, r4
	ldmfd sp!, {r4, pc}
	arm_func_end FUN_ov1_020bd7dc

	arm_func_start FUN_ov1_020bd7f0
FUN_ov1_020bd7f0: ; 0x020BD7F0
	stmfd sp!, {r4, r5, r6, lr}
	mov r4, #0
	mov r6, r4
	cmp r1, #0x36
	ldr r5, _020BD928 ; =0x0209AC44
	bgt _020BD830
	subs r0, r1, #0x33
	addpl pc, pc, r0, lsl #2
	b _020BD824
_020BD814: ; jump table
	b _020BD888 ; case 0
	b _020BD860 ; case 1
	b _020BD874 ; case 2
	b _020BD84C ; case 3
_020BD824:
	cmp r1, #0
	ldmeqfd sp!, {r4, r5, r6, pc}
	b _020BD8B0
_020BD830:
	cmp r1, #0x5a
	bgt _020BD840
	beq _020BD874
	b _020BD8B0
_020BD840:
	cmp r1, #0x76
	beq _020BD874
	b _020BD8B0
_020BD84C:
	ldr r0, _020BD928 ; =0x0209AC44
	mov r2, r4
	mov r3, r4
	mov r1, #0xa
	b _020BD8C0
_020BD860:
	ldr r0, _020BD928 ; =0x0209AC44
	mov r2, r4
	mov r3, r4
	mov r1, #7
	b _020BD8C0
_020BD874:
	mov r2, #0
	ldr r0, _020BD928 ; =0x0209AC44
	mov r3, r2
	mov r1, #0xb
	b _020BD8C0
_020BD888:
	ldr r0, _020BD92C ; =0x0209BA20
	bl FUN_02073184
	cmp r0, #0
	ldrneb r4, [r0, #0x12]
	ldrneb r6, [r0, #0x13]
	ldr r0, _020BD928 ; =0x0209AC44
	mov r2, r4
	mov r3, r6
	mov r1, #8
	b _020BD8C0
_020BD8B0:
	mov r2, #0
	ldr r0, _020BD928 ; =0x0209AC44
	mov r3, r2
	mov r1, #9
_020BD8C0:
	bl FUN_0202b838
	cmp r0, #0
	ldmeqfd sp!, {r4, r5, r6, pc}
	mov r0, r5
	bl FUN_0202b7b4
	cmp r0, #0
	bne _020BD8F8
	mov r4, #0x14
_020BD8E0:
	mov r0, r4
	bl FUN_02001eb0
	mov r0, r5
	bl FUN_0202b7b4
	cmp r0, #0
	beq _020BD8E0
_020BD8F8:
	mov r0, r5
	bl FUN_0202b7f0
	cmp r0, #0
	ldmnefd sp!, {r4, r5, r6, pc}
	mov r4, #0x14
_020BD90C:
	mov r0, r4
	bl FUN_02001eb0
	mov r0, r5
	bl FUN_0202b7f0
	cmp r0, #0
	beq _020BD90C
	ldmfd sp!, {r4, r5, r6, pc}
_020BD928: .word 0x0209AC44
_020BD92C: .word 0x0209BA20
	arm_func_end FUN_ov1_020bd7f0

	arm_func_start FUN_ov1_020bd930
FUN_ov1_020bd930: ; 0x020BD930
	stmfd sp!, {r4, r5, r6, lr}
	mov r5, r2
	mov r6, r0
	cmp r5, r1
	moveq r0, r5
	ldmeqfd sp!, {r4, r5, r6, pc}
	bl FUN_ov1_020db2d8
	cmp r0, #0
	moveq r0, r5
	ldmeqfd sp!, {r4, r5, r6, pc}
	cmp r5, #0x38
	bne _020BD988
	mov r5, #0x41
	mov r4, #1
	mov r0, r6
	mov r1, r4
	mov r2, r5
	bl FUN_02041eac
	mov r0, r6
	mov r1, r4
	mov r2, r5
	bl FUN_02041eac
_020BD988:
	mov r0, r5
	ldmfd sp!, {r4, r5, r6, pc}
	arm_func_end FUN_ov1_020bd930

	arm_func_start FUN_ov1_020bd990
FUN_ov1_020bd990: ; 0x020BD990
	stmfd sp!, {r4, r5, r6, lr}
	mov r4, r1
	ldrb r1, [r4, #8]
	mov r5, r0
	cmp r1, #0
	ldmeqfd sp!, {r4, r5, r6, pc}
	ldr r0, [r4, #0xc]
	bl FUN_ov16_020f3e40
	cmp r0, #0
	ldmeqfd sp!, {r4, r5, r6, pc}
	ldr r1, [r4]
	cmp r1, #0x76
	bgt _020BDAB4
	bge _020BDC80
	sub r0, r1, #0x32
	cmp r0, #0x36
	addls pc, pc, r0, lsl #2
	ldmfd sp!, {r4, r5, r6, pc}
_020BD9D8: ; jump table
	b _020BDD38 ; case 0
	b _020BDD54 ; case 1
	b _020BDB38 ; case 2
	ldmfd sp!, {r4, r5, r6, pc} ; case 3
	b _020BDD70 ; case 4
	b _020BDD1C ; case 5
	ldmfd sp!, {r4, r5, r6, pc} ; case 6
	ldmfd sp!, {r4, r5, r6, pc} ; case 7
	ldmfd sp!, {r4, r5, r6, pc} ; case 8
	ldmfd sp!, {r4, r5, r6, pc} ; case 9
	b _020BDCC0 ; case 10
	ldmfd sp!, {r4, r5, r6, pc} ; case 11
	b _020BDCFC ; case 12
	b _020BDB54 ; case 13
	b _020BDB70 ; case 14
	ldmfd sp!, {r4, r5, r6, pc} ; case 15
	ldmfd sp!, {r4, r5, r6, pc} ; case 16
	ldmfd sp!, {r4, r5, r6, pc} ; case 17
	ldmfd sp!, {r4, r5, r6, pc} ; case 18
	b _020BDB8C ; case 19
	ldmfd sp!, {r4, r5, r6, pc} ; case 20
	b _020BDCDC ; case 21
	b _020BDBC8 ; case 22
	ldmfd sp!, {r4, r5, r6, pc} ; case 23
	b _020BDD90 ; case 24
	b _020BDDAC ; case 25
	ldmfd sp!, {r4, r5, r6, pc} ; case 26
	b _020BDBE8 ; case 27
	ldmfd sp!, {r4, r5, r6, pc} ; case 28
	b _020BDDC8 ; case 29
	b _020BDC40 ; case 30
	ldmfd sp!, {r4, r5, r6, pc} ; case 31
	ldmfd sp!, {r4, r5, r6, pc} ; case 32
	ldmfd sp!, {r4, r5, r6, pc} ; case 33
	ldmfd sp!, {r4, r5, r6, pc} ; case 34
	ldmfd sp!, {r4, r5, r6, pc} ; case 35
	ldmfd sp!, {r4, r5, r6, pc} ; case 36
	ldmfd sp!, {r4, r5, r6, pc} ; case 37
	ldmfd sp!, {r4, r5, r6, pc} ; case 38
	ldmfd sp!, {r4, r5, r6, pc} ; case 39
	b _020BDADC ; case 40
	b _020BDAFC ; case 41
	b _020BDB18 ; case 42
	b _020BDAC0 ; case 43
	ldmfd sp!, {r4, r5, r6, pc} ; case 44
	ldmfd sp!, {r4, r5, r6, pc} ; case 45
	ldmfd sp!, {r4, r5, r6, pc} ; case 46
	b _020BDC14 ; case 47
	b _020BDBA8 ; case 48
	ldmfd sp!, {r4, r5, r6, pc} ; case 49
	ldmfd sp!, {r4, r5, r6, pc} ; case 50
	ldmfd sp!, {r4, r5, r6, pc} ; case 51
	ldmfd sp!, {r4, r5, r6, pc} ; case 52
	ldmfd sp!, {r4, r5, r6, pc} ; case 53
	b _020BDC60 ; case 54
_020BDAB4:
	cmp r1, #0x77
	beq _020BDCA0
	ldmfd sp!, {r4, r5, r6, pc}
_020BDAC0:
	ldr r0, _020BDDE4 ; =0x00001618
	bl FUN_0201e014
	cmp r0, #0
	ldrne r1, _020BDDE8 ; =0x02121330
	stmneia r0, {r1, r5}
	str r0, [r4, #4]
	ldmfd sp!, {r4, r5, r6, pc}
_020BDADC:
	ldr r0, _020BDDEC ; =0x000010AC
	bl FUN_0201e014
	cmp r0, #0
	beq _020BDAF4
	mov r1, r5
	bl FUN_ov57_0211f8f8
_020BDAF4:
	str r0, [r4, #4]
	ldmfd sp!, {r4, r5, r6, pc}
_020BDAFC:
	ldr r0, _020BDDF0 ; =0x00001218
	bl FUN_0201e014
	cmp r0, #0
	ldrne r1, _020BDDF4 ; =0x0211EF40
	stmneia r0, {r1, r5}
	str r0, [r4, #4]
	ldmfd sp!, {r4, r5, r6, pc}
_020BDB18:
	ldr r0, _020BDDF8 ; =0x000020FC
	bl FUN_0201e014
	cmp r0, #0
	beq _020BDB30
	mov r1, r5
	bl FUN_ov63_021223fc
_020BDB30:
	str r0, [r4, #4]
	ldmfd sp!, {r4, r5, r6, pc}
_020BDB38:
	ldr r0, _020BDDFC ; =0x00000664
	bl FUN_0201e014
	cmp r0, #0
	ldrne r1, _020BDE00 ; =0x0211CF74
	stmneia r0, {r1, r5}
	str r0, [r4, #4]
	ldmfd sp!, {r4, r5, r6, pc}
_020BDB54:
	mov r0, #0x970
	bl FUN_0201e014
	cmp r0, #0
	ldrne r1, _020BDE04 ; =0x0211D0A8
	stmneia r0, {r1, r5}
	str r0, [r4, #4]
	ldmfd sp!, {r4, r5, r6, pc}
_020BDB70:
	ldr r0, _020BDE08 ; =0x00005640
	bl FUN_0201e014
	cmp r0, #0
	ldrne r1, _020BDE0C ; =0x0211D168
	stmneia r0, {r1, r5}
	str r0, [r4, #4]
	ldmfd sp!, {r4, r5, r6, pc}
_020BDB8C:
	mov r0, #0x10
	bl FUN_0201e014
	cmp r0, #0
	ldrne r1, _020BDE10 ; =0x02122680
	stmneia r0, {r1, r5}
	str r0, [r4, #4]
	ldmfd sp!, {r4, r5, r6, pc}
_020BDBA8:
	mov r0, #0x1e4
	bl FUN_0201e014
	cmp r0, #0
	beq _020BDBC0
	mov r1, r5
	bl FUN_ov45_0211d248 ; may be ov67
_020BDBC0:
	str r0, [r4, #4]
	ldmfd sp!, {r4, r5, r6, pc}
_020BDBC8:
	mov r0, #0x200
	bl FUN_0201e014
	cmp r0, #0
	beq _020BDBE0
	mov r1, r5
	bl FUN_ov67_0212152c
_020BDBE0:
	str r0, [r4, #4]
	ldmfd sp!, {r4, r5, r6, pc}
_020BDBE8:
	mov r0, #0x204
	bl FUN_0201e014
	movs r6, r0
	beq _020BDC0C
	ldr r1, _020BDE14 ; =FUN_ov61_0211d6c0
	add r0, r6, #0x1dc
	str r1, [r6]
	bl FUN_0206c0d8
	str r5, [r6, #8]
_020BDC0C:
	str r6, [r4, #4]
	ldmfd sp!, {r4, r5, r6, pc}
_020BDC14:
	ldr r0, _020BDE18 ; =0x000033E8
	bl FUN_0201e014
	movs r6, r0
	beq _020BDC38
	ldr r1, _020BDE1C ; =0x02120110
	add r0, r6, #0x33c0
	str r1, [r6]
	bl FUN_0206c0d8
	str r5, [r6, #4]
_020BDC38:
	str r6, [r4, #4]
	ldmfd sp!, {r4, r5, r6, pc}
_020BDC40:
	mov r0, #0x1e0
	bl FUN_0201e014
	cmp r0, #0
	ldrne r1, _020BDE20 ; =0x0211D680
	strne r1, [r0]
	strne r5, [r0, #8]
	str r0, [r4, #4]
	ldmfd sp!, {r4, r5, r6, pc}
_020BDC60:
	mov r0, #0x58
	bl FUN_0201e014
	cmp r0, #0
	beq _020BDC78
	mov r1, r5
	bl FUN_ov71_0211aa5c ; may be ov83
_020BDC78:
	str r0, [r4, #4]
	ldmfd sp!, {r4, r5, r6, pc}
_020BDC80:
	ldr r0, _020BDE24 ; =0x000011B0
	bl FUN_0201e014
	cmp r0, #0
	beq _020BDC98
	mov r1, r5
	bl FUN_ov18_02119f00 ; may be ov19 ov20 ov21 ov22 ov23 ov24 ov25 ov26 ov27 ov28 ov29 ov30 ov31 ov32 ov33 ov34 ov35 ov36 ov37 ov38 ov39 ov40 ov41 ov42 ov43 ov44 ov45 ov46 ov47 ov48 ov49 ov50 ov51 ov52 ov53 ov54 ov55 ov56 ov57 ov58 ov59 ov60 ov61 ov62 ov63 ov64 ov65 ov66 ov67 ov68 ov69 ov70 ov71 ov72 ov73 ov74 ov75 ov76 ov77 ov79 ov80 ov81 ov82 ov83 ov84 ov85 ov86 ov87 ov88 ov89 ov90 ov91
_020BDC98:
	str r0, [r4, #4]
	ldmfd sp!, {r4, r5, r6, pc}
_020BDCA0:
	mov r0, #0x110
	bl FUN_0201e014
	cmp r0, #0
	ldrne r1, _020BDE28 ; =0x0211C948
	strne r1, [r0]
	strne r5, [r0, #0x1c]
	str r0, [r4, #4]
	ldmfd sp!, {r4, r5, r6, pc}
_020BDCC0:
	ldr r0, _020BDE2C ; =0x000004EC
	bl FUN_0201e014
	cmp r0, #0
	ldrne r1, _020BDE30 ; =0x0211D788
	stmneia r0, {r1, r5}
	str r0, [r4, #4]
	ldmfd sp!, {r4, r5, r6, pc}
_020BDCDC:
	ldr r0, _020BDE34 ; =0x00000484
	bl FUN_0201e014
	cmp r0, #0
	beq _020BDCF4
	mov r1, r5
	bl FUN_ov25_0211b5a4 ; may be ov84
_020BDCF4:
	str r0, [r4, #4]
	ldmfd sp!, {r4, r5, r6, pc}
_020BDCFC:
	ldr r0, _020BDE38 ; =0x00000464
	bl FUN_0201e014
	cmp r0, #0
	beq _020BDD14
	mov r1, r5
	bl FUN_ov18_02119f00 ; may be ov19 ov20 ov21 ov22 ov23 ov24 ov25 ov26 ov27 ov28 ov29 ov30 ov31 ov32 ov33 ov34 ov35 ov36 ov37 ov38 ov39 ov40 ov41 ov42 ov43 ov44 ov45 ov46 ov47 ov48 ov49 ov50 ov51 ov52 ov53 ov54 ov55 ov56 ov57 ov58 ov59 ov60 ov61 ov62 ov63 ov64 ov65 ov66 ov67 ov68 ov69 ov70 ov71 ov72 ov73 ov74 ov75 ov76 ov77 ov79 ov80 ov81 ov82 ov83 ov84 ov85 ov86 ov87 ov88 ov89 ov90 ov91
_020BDD14:
	str r0, [r4, #4]
	ldmfd sp!, {r4, r5, r6, pc}
_020BDD1C:
	ldr r0, _020BDE3C ; =0x0000070C
	bl FUN_0201e014
	cmp r0, #0
	ldrne r1, _020BDE40 ; =0x02120160
	stmneia r0, {r1, r5}
	str r0, [r4, #4]
	ldmfd sp!, {r4, r5, r6, pc}
_020BDD38:
	mov r0, #8
	bl FUN_0201e014
	cmp r0, #0
	ldrne r1, _020BDE44 ; =0x0211A440
	stmneia r0, {r1, r5}
	str r0, [r4, #4]
	ldmfd sp!, {r4, r5, r6, pc}
_020BDD54:
	mov r0, #0x30
	bl FUN_0201e014
	cmp r0, #0
	ldrne r1, _020BDE48 ; =0x0211A540
	stmneia r0, {r1, r5}
	str r0, [r4, #4]
	ldmfd sp!, {r4, r5, r6, pc}
_020BDD70:
	mov r0, #0x10
	bl FUN_0201e014
	cmp r0, #0
	ldrne r1, _020BDE4C ; =0x0211A540
	strne r1, [r0]
	strne r5, [r0, #8]
	str r0, [r4, #4]
	ldmfd sp!, {r4, r5, r6, pc}
_020BDD90:
	mov r0, #0x70
	bl FUN_0201e014
	cmp r0, #0
	ldrne r1, _020BDE50 ; =0x0211AA48
	stmneia r0, {r1, r5}
	str r0, [r4, #4]
	ldmfd sp!, {r4, r5, r6, pc}
_020BDDAC:
	mov r0, #0x830
	bl FUN_0201e014
	cmp r0, #0
	ldrne r1, _020BDE54 ; =0x020E8CAC
	stmneia r0, {r1, r5}
	str r0, [r4, #4]
	ldmfd sp!, {r4, r5, r6, pc}
_020BDDC8:
	mov r0, #0x78
	bl FUN_0201e014
	cmp r0, #0
	ldrne r1, _020BDE58 ; =0x0211A740
	stmneia r0, {r1, r5}
	str r0, [r4, #4]
	ldmfd sp!, {r4, r5, r6, pc}
_020BDDE4: .word 0x00001618
_020BDDE8: .word 0x02121330
_020BDDEC: .word 0x000010AC
_020BDDF0: .word 0x00001218
_020BDDF4: .word 0x0211EF40
_020BDDF8: .word 0x000020FC
_020BDDFC: .word 0x00000664
_020BDE00: .word 0x0211CF74
_020BDE04: .word 0x0211D0A8
_020BDE08: .word 0x00005640
_020BDE0C: .word 0x0211D168
_020BDE10: .word 0x02122680
_020BDE14: .word FUN_ov61_0211d6c0
_020BDE18: .word 0x000033E8
_020BDE1C: .word 0x02120110
_020BDE20: .word 0x0211D680
_020BDE24: .word 0x000011B0
_020BDE28: .word 0x0211C948
_020BDE2C: .word 0x000004EC
_020BDE30: .word 0x0211D788
_020BDE34: .word 0x00000484
_020BDE38: .word 0x00000464
_020BDE3C: .word 0x0000070C
_020BDE40: .word 0x02120160
_020BDE44: .word 0x0211A440
_020BDE48: .word 0x0211A540
_020BDE4C: .word 0x0211A540
_020BDE50: .word 0x0211AA48
_020BDE54: .word 0x020E8CAC
_020BDE58: .word 0x0211A740
	arm_func_end FUN_ov1_020bd990

	arm_func_start FUN_ov1_020bde5c
FUN_ov1_020bde5c: ; 0x020BDE5C
	stmfd sp!, {r3, r4, r5, lr}
	mov r4, r1
	ldrb r1, [r4, #8]
	mov r5, r0
	cmp r1, #0
	ldmeqfd sp!, {r3, r4, r5, pc}
	ldr r0, [r4, #0xc]
	bl FUN_ov16_020f3e40
	cmp r0, #0
	ldmeqfd sp!, {r3, r4, r5, pc}
	ldr r1, [r4]
	cmp r1, #0x69
	bgt _020BDF5C
	bge _020BDF68
	sub r0, r1, #0x34
	cmp r0, #0x2d
	addls pc, pc, r0, lsl #2
	ldmfd sp!, {r3, r4, r5, pc}
_020BDEA4: ; jump table
	b _020BDF84 ; case 0
	ldmfd sp!, {r3, r4, r5, pc} ; case 1
	ldmfd sp!, {r3, r4, r5, pc} ; case 2
	ldmfd sp!, {r3, r4, r5, pc} ; case 3
	b _020BE034 ; case 4
	ldmfd sp!, {r3, r4, r5, pc} ; case 5
	b _020BE06C ; case 6
	b _020BE088 ; case 7
	b _020BDFA0 ; case 8
	ldmfd sp!, {r3, r4, r5, pc} ; case 9
	ldmfd sp!, {r3, r4, r5, pc} ; case 10
	ldmfd sp!, {r3, r4, r5, pc} ; case 11
	ldmfd sp!, {r3, r4, r5, pc} ; case 12
	b _020BE050 ; case 13
	ldmfd sp!, {r3, r4, r5, pc} ; case 14
	ldmfd sp!, {r3, r4, r5, pc} ; case 15
	ldmfd sp!, {r3, r4, r5, pc} ; case 16
	b _020BDFBC ; case 17
	b _020BDFFC ; case 18
	b _020BDFE0 ; case 19
	ldmfd sp!, {r3, r4, r5, pc} ; case 20
	ldmfd sp!, {r3, r4, r5, pc} ; case 21
	ldmfd sp!, {r3, r4, r5, pc} ; case 22
	ldmfd sp!, {r3, r4, r5, pc} ; case 23
	b _020BE018 ; case 24
	b _020BE0DC ; case 25
	b _020BE0C0 ; case 26
	b _020BDFE0 ; case 27
	b _020BE0F8 ; case 28
	b _020BE0A4 ; case 29
	ldmfd sp!, {r3, r4, r5, pc} ; case 30
	ldmfd sp!, {r3, r4, r5, pc} ; case 31
	ldmfd sp!, {r3, r4, r5, pc} ; case 32
	ldmfd sp!, {r3, r4, r5, pc} ; case 33
	ldmfd sp!, {r3, r4, r5, pc} ; case 34
	ldmfd sp!, {r3, r4, r5, pc} ; case 35
	ldmfd sp!, {r3, r4, r5, pc} ; case 36
	ldmfd sp!, {r3, r4, r5, pc} ; case 37
	b _020BDFE0 ; case 38
	b _020BDFE0 ; case 39
	b _020BDFE0 ; case 40
	b _020BDFE0 ; case 41
	ldmfd sp!, {r3, r4, r5, pc} ; case 42
	ldmfd sp!, {r3, r4, r5, pc} ; case 43
	ldmfd sp!, {r3, r4, r5, pc} ; case 44
	b _020BDFE0 ; case 45
_020BDF5C:
	cmp r1, #0x76
	beq _020BDFE0
	ldmfd sp!, {r3, r4, r5, pc}
_020BDF68:
	mov r0, #0x28
	bl FUN_0201e014
	cmp r0, #0
	ldrne r1, _020BE114 ; =0x02125140
	stmneia r0, {r1, r5}
	str r0, [r4, #4]
	ldmfd sp!, {r3, r4, r5, pc}
_020BDF84:
	mov r0, #0x190
	bl FUN_0201e014
	cmp r0, #0
	ldrne r1, _020BE118 ; =0x02125E48
	stmneia r0, {r1, r5}
	str r0, [r4, #4]
	ldmfd sp!, {r3, r4, r5, pc}
_020BDFA0:
	mov r0, #0xd8
	bl FUN_0201e014
	cmp r0, #0
	ldrne r1, _020BE11C ; =0x02125BDC
	stmneia r0, {r1, r5}
	str r0, [r4, #4]
	ldmfd sp!, {r3, r4, r5, pc}
_020BDFBC:
	mov r0, #8
	bl FUN_02001eb0
	mov r0, #0x10c
	bl FUN_0201e014
	cmp r0, #0
	ldrne r1, _020BE120 ; =0x02125EA0
	stmneia r0, {r1, r5}
	str r0, [r4, #4]
	ldmfd sp!, {r3, r4, r5, pc}
_020BDFE0:
	mov r0, #0x3d4
	bl FUN_0201e014
	cmp r0, #0
	ldrne r1, _020BE124 ; =0x0212A6B8
	stmneia r0, {r1, r5}
	str r0, [r4, #4]
	ldmfd sp!, {r3, r4, r5, pc}
_020BDFFC:
	mov r0, #0xe8
	bl FUN_0201e014
	cmp r0, #0
	ldrne r1, _020BE128 ; =0x02125B10
	stmneia r0, {r1, r5}
	str r0, [r4, #4]
	ldmfd sp!, {r3, r4, r5, pc}
_020BE018:
	mov r0, #0x88
	bl FUN_0201e014
	cmp r0, #0
	ldrne r1, _020BE12C ; =0x021256A8
	stmneia r0, {r1, r5}
	str r0, [r4, #4]
	ldmfd sp!, {r3, r4, r5, pc}
_020BE034:
	mov r0, #0x148
	bl FUN_0201e014
	cmp r0, #0
	ldrne r1, _020BE130 ; =0x021262E4
	stmneia r0, {r1, r5}
	str r0, [r4, #4]
	ldmfd sp!, {r3, r4, r5, pc}
_020BE050:
	mov r0, #0xc0
	bl FUN_0201e014
	cmp r0, #0
	ldrne r1, _020BE134 ; =0x02126410
	stmneia r0, {r1, r5}
	str r0, [r4, #4]
	ldmfd sp!, {r3, r4, r5, pc}
_020BE06C:
	mov r0, #0x34c
	bl FUN_0201e014
	cmp r0, #0
	ldrne r1, _020BE138 ; =0x02124EC0
	stmneia r0, {r1, r5}
	str r0, [r4, #4]
	ldmfd sp!, {r3, r4, r5, pc}
_020BE088:
	mov r0, #0x34c
	bl FUN_0201e014
	cmp r0, #0
	ldrne r1, _020BE13C ; =0x02124F20
	stmneia r0, {r1, r5}
	str r0, [r4, #4]
	ldmfd sp!, {r3, r4, r5, pc}
_020BE0A4:
	mov r0, #0x34c
	bl FUN_0201e014
	cmp r0, #0
	ldrne r1, _020BE13C ; =0x02124F20
	stmneia r0, {r1, r5}
	str r0, [r4, #4]
	ldmfd sp!, {r3, r4, r5, pc}
_020BE0C0:
	mov r0, #0x4c
	bl FUN_0201e014
	cmp r0, #0
	ldrne r1, _020BE140 ; =0x021255C0
	stmneia r0, {r1, r5}
	str r0, [r4, #4]
	ldmfd sp!, {r3, r4, r5, pc}
_020BE0DC:
	mov r0, #0x14c
	bl FUN_0201e014
	cmp r0, #0
	ldrne r1, _020BE144 ; =0x021269B0
	stmneia r0, {r1, r5}
	str r0, [r4, #4]
	ldmfd sp!, {r3, r4, r5, pc}
_020BE0F8:
	mov r0, #0x154
	bl FUN_0201e014
	cmp r0, #0
	ldrne r1, _020BE148 ; =0x02126360
	stmneia r0, {r1, r5}
	str r0, [r4, #4]
	ldmfd sp!, {r3, r4, r5, pc}
_020BE114: .word 0x02125140
_020BE118: .word 0x02125E48
_020BE11C: .word 0x02125BDC
_020BE120: .word 0x02125EA0
_020BE124: .word 0x0212A6B8
_020BE128: .word 0x02125B10
_020BE12C: .word 0x021256A8
_020BE130: .word 0x021262E4
_020BE134: .word 0x02126410
_020BE138: .word 0x02124EC0
_020BE13C: .word 0x02124F20
_020BE140: .word 0x021255C0
_020BE144: .word 0x021269B0
_020BE148: .word 0x02126360
	arm_func_end FUN_ov1_020bde5c

	arm_func_start FUN_ov1_020be14c
FUN_ov1_020be14c: ; 0x020BE14C
	stmfd sp!, {r4, r5, r6, r7, r8, lr}
	sub sp, sp, #0x380
	mov r5, r0
	add r0, r5, #0x1000
	ldr r0, [r0, #0x1f8]
	cmp r0, #0
	bne _020BE1E8
	ldr r7, _020BE498 ; =0x020E772C
	add r6, sp, #0x180
	mov r4, #0x20
_020BE174:
	ldmia r7!, {r0, r1, r2, r3}
	stmia r6!, {r0, r1, r2, r3}
	subs r4, r4, #1
	bne _020BE174
	add r0, r5, #0x288
	add r8, r0, #0xc00
	add r1, r5, #0x38c
	add r2, r5, #0x298
	add r6, r2, #0xc00
	add lr, r5, #0x90
	add r12, r5, #0xe90
	add r7, r1, #0x400
	mov r4, #0x200
	ldr r0, _020BE49C ; =0x0209A250
	mov r1, r4
	mov r2, #0xd
	mov r3, #1
	str lr, [sp, #0x184]
	str r12, [sp, #0x1a4]
	str r8, [sp, #0x1e4]
	str r7, [sp, #0x264]
	str r6, [sp, #0x354]
	bl FUN_0202de58
	mov r1, r0
	add r3, r5, #0x1000
	add r0, sp, #0x180
	mov r2, r4
	str r1, [r3, #0x1f8]
	bl MI_CpuCopy8
_020BE1E8:
	add r0, r5, #0x1000
	ldr r0, [r0, #0x1fc]
	cmp r0, #0
	bne _020BE250
	ldr r12, _020BE4A0 ; =0x020E75AC
	add r6, sp, #0
	mov r4, #0x18
_020BE204:
	ldmia r12!, {r0, r1, r2, r3}
	stmia r6!, {r0, r1, r2, r3}
	subs r4, r4, #1
	bne _020BE204
	add r0, r5, #0x2a4
	add r6, r0, #0xc00
	mov r4, #0x180
	ldr r0, _020BE49C ; =0x0209A250
	mov r1, r4
	mov r2, #0xd
	mov r3, #1
	str r6, [sp, #0x34]
	bl FUN_0202de58
	mov r1, r0
	add r3, r5, #0x1000
	add r0, sp, #0
	mov r2, r4
	str r1, [r3, #0x1fc]
	bl MI_CpuCopy8
_020BE250:
	mov r0, r5
	bl FUN_0204201c
	mov r4, r0
	mov r0, r5
	bl FUN_02041fec
	cmp r4, r0
	bne _020BE278
	ldrb r0, [r5, #4]
	cmp r0, #0
	beq _020BE36C
_020BE278:
	ldr r0, [r5, #0x80]
	cmp r0, #0
	beq _020BE298
	ldr r1, [r0]
	ldr r1, [r1, #0x58]
	blx r1
	cmp r0, #0
	bne _020BE36C
_020BE298:
	ldr r0, [r5, #0x80]
	cmp r0, #0
	beq _020BE2DC
	ldr r1, [r0]
	ldr r1, [r1, #0x20]
	blx r1
	mov r0, r5
	bl FUN_ov1_020bcbc4
	ldr r0, [r5, #0x80]
	ldr r1, [r0]
	ldr r1, [r1, #0x44]
	blx r1
	add r0, r5, #0x1000
	ldr r2, [r0, #0x1f8]
	mov r0, r5
	ldr r1, [r5, #0x80]
	bl FUN_02041d14
_020BE2DC:
	add r0, r5, #0x1000
	mov r1, #0
	ldr r6, [r0, #0x1f8]
	str r1, [r5, #0x80]
	ldr r0, [r6]
	cmp r0, #0
	beq _020BE330
_020BE2F8:
	cmp r4, r0
	bne _020BE324
	ldrb r0, [r6, #8]
	cmp r0, #0
	beq _020BE318
	mov r0, r5
	mov r1, r6
	bl FUN_ov1_020bd990
_020BE318:
	ldr r0, [r6, #4]
	str r0, [r5, #0x80]
	b _020BE330
_020BE324:
	ldr r0, [r6, #0x10]!
	cmp r0, #0
	bne _020BE2F8
_020BE330:
	mov r0, r5
	mov r1, r4
	bl FUN_ov1_020bd7f0
	mov r0, r5
	mov r2, r4
	mov r1, #0
	bl FUN_02041f74
	ldr r0, [r5, #0x80]
	cmp r0, #0
	beq _020BE36C
	ldr r1, [r0]
	ldr r1, [r1, #0x10]
	blx r1
	mov r0, r5
	bl FUN_ov1_020bcb40
_020BE36C:
	mov r0, r5
	bl FUN_02042084
	mov r4, r0
	mov r0, r5
	bl FUN_02042054
	mov r6, r0
	mov r0, r5
	mov r1, r6
	mov r2, r4
	bl FUN_ov1_020bd930
	mov r4, r0
	cmp r4, r6
	bne _020BE3B0
	ldrb r0, [r5, #5]
	cmp r0, #0
	addeq sp, sp, #0x380
	ldmeqfd sp!, {r4, r5, r6, r7, r8, pc}
_020BE3B0:
	ldr r0, [r5, #0x84]
	cmp r0, #0
	beq _020BE3D4
	ldr r1, [r0]
	ldr r1, [r1, #0x58]
	blx r1
	cmp r0, #0
	addne sp, sp, #0x380
	ldmnefd sp!, {r4, r5, r6, r7, r8, pc}
_020BE3D4:
	ldr r0, [r5, #0x84]
	cmp r0, #0
	beq _020BE410
	ldr r1, [r0]
	ldr r1, [r1, #0x20]
	blx r1
	ldr r0, [r5, #0x84]
	ldr r1, [r0]
	ldr r1, [r1, #0x44]
	blx r1
	add r0, r5, #0x1000
	ldr r1, [r5, #0x84]
	ldr r2, [r0, #0x1fc]
	mov r0, r5
	bl FUN_02041d14
_020BE410:
	add r0, r5, #0x1000
	mov r1, #0
	ldr r6, [r0, #0x1fc]
	str r1, [r5, #0x84]
	ldr r0, [r6]
	cmp r0, #0
	beq _020BE464
_020BE42C:
	cmp r4, r0
	bne _020BE458
	ldrb r0, [r6, #8]
	cmp r0, #0
	beq _020BE44C
	mov r0, r5
	mov r1, r6
	bl FUN_ov1_020bde5c
_020BE44C:
	ldr r0, [r6, #4]
	str r0, [r5, #0x84]
	b _020BE464
_020BE458:
	ldr r0, [r6, #0x10]!
	cmp r0, #0
	bne _020BE42C
_020BE464:
	mov r0, r5
	mov r2, r4
	mov r1, #1
	bl FUN_02041f74
	ldr r0, [r5, #0x84]
	cmp r0, #0
	addeq sp, sp, #0x380
	ldmeqfd sp!, {r4, r5, r6, r7, r8, pc}
	ldr r1, [r0]
	ldr r1, [r1, #0x10]
	blx r1
	add sp, sp, #0x380
	ldmfd sp!, {r4, r5, r6, r7, r8, pc}
_020BE498: .word 0x020E772C
_020BE49C: .word 0x0209A250
_020BE4A0: .word 0x020E75AC
	arm_func_end FUN_ov1_020be14c

	arm_func_start FUN_ov1_020be4a4
FUN_ov1_020be4a4: ; 0x020BE4A4
	stmfd sp!, {r4, lr}
	movs r4, r1
	cmpne r4, #2
	bne _020BE4BC
	mov r0, #3
	bl FUN_ov16_020f3f60
_020BE4BC:
	sub r0, r4, #1
	cmp r0, #1
	ldmhifd sp!, {r4, pc}
	mov r0, #3
	bl FUN_ov16_020f4894
	ldmfd sp!, {r4, pc}
	arm_func_end FUN_ov1_020be4a4

	arm_func_start FUN_ov1_020be4d4
FUN_ov1_020be4d4: ; 0x020BE4D4
	stmfd sp!, {r4, lr}
	movs r4, r1
	cmpne r4, #2
	bne _020BE4E8
	bl FUN_ov16_020f47fc
_020BE4E8:
	sub r0, r4, #1
	cmp r0, #1
	bhi _020BE4F8
	bl FUN_ov16_020f51a8
_020BE4F8:
	cmp r4, #2
	ldmnefd sp!, {r4, pc}
	mov r0, #0
	mov r1, #0x6800000
	mov r2, #0xa4000
	bl MIi_CpuClearFast
	ldmfd sp!, {r4, pc}
	arm_func_end FUN_ov1_020be4d4

	arm_func_start FUN_ov1_020be514
FUN_ov1_020be514: ; 0x020BE514
	stmfd sp!, {r4, lr}
	mov r4, r0
	add r0, r4, #0x1200
	bl FUN_0206c110
	mov r0, r4
	bl FUN_02041b00
	mov r0, r4
	bl FUN_0201e078
	mov r0, r4
	ldmfd sp!, {r4, pc}
	arm_func_end FUN_ov1_020be514

	arm_func_start FUN_ov1_020be53c
FUN_ov1_020be53c: ; 0x020BE53C
	stmfd sp!, {r4, lr}
	mov r4, r0
	add r0, r4, #0x1200
	bl FUN_0206c110
	mov r0, r4
	bl FUN_02041b00
	mov r0, r4
	ldmfd sp!, {r4, pc}
	arm_func_end FUN_ov1_020be53c

	arm_func_start FUN_ov1_020be55c
FUN_ov1_020be55c: ; 0x020BE55C
	stmfd sp!, {r3, lr}
	ldr r2, _020BE5B4 ; =0x020EAA9C
	ldr r0, _020BE5B8 ; =0x020A0640
	ldr r1, [r2, #0xc]
	ldrb r3, [r0, #0x1b]
	add r0, r1, #1
	mov r1, r0, lsr #0x1f
	rsb r0, r1, r0, lsl #30
	add r0, r1, r0, ror #30
	str r0, [r2, #0xc]
	cmp r3, #0
	bne _020BE598
	bl FUN_ov16_020f068c ; may be ov17
	cmp r0, #0
	ldmeqfd sp!, {r3, pc}
_020BE598:
	ldr r0, _020BE5B4 ; =0x020EAA9C
	ldr r1, [r0, #0xc]
	ldr r0, _020BE5B4 ; =0x020EAA9C
	cmp r1, #2
	moveq r1, #3
	str r1, [r0, #0xc]
	ldmfd sp!, {r3, pc}
_020BE5B4: .word 0x020EAA9C
_020BE5B8: .word 0x020A0640
	arm_func_end FUN_ov1_020be55c

	arm_func_start FUN_ov1_020be5bc
FUN_ov1_020be5bc:
	ldr r2, _020BE5D4 ; =0x020A0640
	and r3, r1, #0xff
	ldr r0, _020BE5D8 ; =0x0209BA20
	ldr r12, _020BE5DC ; =FUN_0206f834
	strh r3, [r2, #0xa2] ; =_020a06e2
	bx r12
_020BE5D4: .word 0x020A0640
_020BE5D8: .word 0x0209BA20
_020BE5DC: .word FUN_0206f834
	arm_func_end FUN_ov1_020be5bc

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

	arm_func_start FUN_ov1_020be600
FUN_ov1_020be600: ; 0x020BE600
	stmfd sp!, {r4, r5, r6, lr}
	bl FUN_02004f78
	mov r4, #0x20
	mov r6, #0
	mov r1, r0
	mov r0, r6
	mov r2, r4
	bl MIi_CpuClearFast
	bl FUN_02004fcc
	mov r1, r0
	mov r0, r6
	mov r2, r4
	bl MIi_CpuClearFast
	bl FUN_0200505c
	mov r1, r0
	mov r0, r6
	mov r2, r4
	bl MIi_CpuClearFast
	bl FUN_02004f78
	mov r1, r4
	bl DC_FlushRange
	bl FUN_02004fcc
	mov r1, r4
	bl DC_FlushRange
	bl FUN_0200505c
	mov r1, r4
	bl DC_FlushRange
	mov r0, r6
	ldr r5, _020BE6C4 ; =0x020A6C40
	mov r4, #0x800
	mov r1, r5
	mov r2, r4
	bl MIi_CpuClearFast
	mov r0, r5
	mov r1, r4
	bl DC_FlushRange
	mov r0, r5
	mov r1, r6
	mov r2, r4
	bl FUN_020054dc
	mov r0, r5
	mov r1, r6
	mov r2, r4
	bl FUN_020055bc
	mov r0, r5
	mov r1, r6
	mov r2, r4
	bl FUN_0200569c
	ldmfd sp!, {r4, r5, r6, pc}
_020BE6C4: .word 0x020A6C40
	arm_func_end FUN_ov1_020be600

	arm_func_start FUN_ov1_020be6c8
FUN_ov1_020be6c8: ; 0x020BE6C8
	stmfd sp!, {r3, lr}
	sub sp, sp, #8
	mov r0, r1
	mov r1, r2
	add r2, sp, #4
	add r3, sp, #0
	bl FUN_ov16_020efd94 ; may be ov17
	ldr r0, [sp, #4]
	ldr r1, [sp]
	bl FUN_ov16_020f00d8
	add sp, sp, #8
	ldmfd sp!, {r3, pc}
	arm_func_end FUN_ov1_020be6c8

	arm_func_start FUN_ov1_020be6f8
FUN_ov1_020be6f8: ; 0x020BE6F8
	ldr r0, _020BE710 ; =0x020EAA9C
	mvn r1, #0
	str r1, [r0, #8]
	mov r1, #1
	strb r1, [r0, #1]
	bx lr
_020BE710: .word 0x020EAA9C
	arm_func_end FUN_ov1_020be6f8

	arm_func_start FUN_ov1_020be714
FUN_ov1_020be714: ; 0x020BE714
	ldr r1, _020BE734 ; =0x02099EF0
	ldr r0, _020BE738 ; =0x020EAA9C
	ldr r2, [r1]
	mov r1, #0
	ldr r2, [r2, #0x5c0]
	str r2, [r0, #8]
	strb r1, [r0, #1]
	bx lr
_020BE734: .word 0x02099EF0
_020BE738: .word 0x020EAA9C
	arm_func_end FUN_ov1_020be714

	arm_func_start FUN_ov1_020be73c
FUN_ov1_020be73c: ; 0x020BE73C
	ldr r0, _020BE754 ; =0x020EAA9C
	mvn r1, #0
	str r1, [r0, #4]
	mov r1, #1
	strb r1, [r0]
	bx lr
_020BE754: .word 0x020EAA9C
	arm_func_end FUN_ov1_020be73c

	arm_func_start FUN_ov1_020be758
FUN_ov1_020be758: ; 0x020BE758
	stmfd sp!, {r4, lr}
	ldr r0, _020BE7E4 ; =0x02099EF0
	ldr r0, [r0]
	bl FUN_ov132_02159df0
	mov r4, r0
	bl FUN_ov132_0215a3ec
	ldr r0, _020BE7E8 ; =0x020A0640
	ldrb r0, [r0, #0x1a]
	cmp r0, #0
	bne _020BE7C4
	ldrb r0, [r4, #4]
	tst r0, #1
	movne r0, #1
	moveq r0, #0
	cmp r0, #0
	beq _020BE7C4
	ldrb r0, [r4, #4]
	tst r0, #2
	movne r0, #1
	moveq r0, #0
	cmp r0, #0
	beq _020BE7C4
	ldr r0, _020BE7E4 ; =0x02099EF0
	ldr r0, [r0]
	bl FUN_ov132_02159afc
	cmp r0, #0
	ldmnefd sp!, {r4, pc}
_020BE7C4:
	ldr r1, _020BE7E4 ; =0x02099EF0
	ldr r0, _020BE7EC ; =0x020EAA9C
	ldr r2, [r1]
	mov r1, #0
	ldr r2, [r2, #0x5c0]
	str r2, [r0, #4]
	strb r1, [r0]
	ldmfd sp!, {r4, pc}
_020BE7E4: .word 0x02099EF0
_020BE7E8: .word 0x020A0640
_020BE7EC: .word 0x020EAA9C
	arm_func_end FUN_ov1_020be758

	arm_func_start FUN_ov1_020be7f0
FUN_ov1_020be7f0: ; 0x020BE7F0
	stmfd sp!, {r0, r1, r2, r3}
	ldrsh r2, [sp, #8]
	ldr r0, [r1]
	cmp r0, r2
	bge _020BE810
	sub r0, r2, #0x10
	cmp r0, #0x11
	bge _020BE81C
_020BE810:
	add r0, r2, #0x10
	cmp r0, #0xd7
	ble _020BE82C
_020BE81C:
	sub r0, r2, #0x10
	str r0, [r1]
	add sp, sp, #0x10
	bx lr
_020BE82C:
	str r0, [r1]
	add sp, sp, #0x10
	bx lr
	arm_func_end FUN_ov1_020be7f0

	arm_func_start FUN_ov1_020be838
FUN_ov1_020be838: ; 0x020BE838
	stmfd sp!, {r0, r1, r2, r3}
	ldrsh r2, [sp, #0xa]
	ldr r0, [r1, #4]
	cmp r0, r2
	bge _020BE858
	sub r0, r2, #0x10
	cmp r0, #0x11
	bge _020BE864
_020BE858:
	add r0, r2, #0x10
	cmp r0, #0x97
	ble _020BE874
_020BE864:
	sub r0, r2, #0x10
	str r0, [r1, #4]
	add sp, sp, #0x10
	bx lr
_020BE874:
	str r0, [r1, #4]
	add sp, sp, #0x10
	bx lr
	arm_func_end FUN_ov1_020be838

	arm_func_start FUN_ov1_020be880
FUN_ov1_020be880: ; 0x020BE880
	stmfd sp!, {r0, r1, r2, r3}
	ldrsh r2, [sp, #0xc]
	ldr r1, [sp, #4]
	ldrsh r12, [sp, #0xe]
	add r0, r2, #0x10
	cmp r1, r0
	addlt r0, r1, #0x10
	cmplt r2, r0
	ldr r3, [sp, #8]
	addlt r0, r12, #0x10
	cmplt r3, r0
	addlt r0, r3, #0x10
	cmplt r12, r0
	movlt r0, #1
	movge r0, #0
	add sp, sp, #0x10
	bx lr
	arm_func_end FUN_ov1_020be880

	arm_func_start FUN_ov1_020be8c4
FUN_ov1_020be8c4: ; 0x020BE8C4
	stmfd sp!, {r0, r1, r2, r3}
	stmfd sp!, {r3, r4, r5, lr}
	sub sp, sp, #0x10
	mov r4, r1
	ldr lr, [r4]
	ldr r12, [r4, #4]
	ldrh r2, [sp, #0x28]
	sub r3, sp, #4
	ldrh r1, [sp, #0x2a]
	strh r2, [r3]
	add r2, sp, #0
	strh r1, [r3, #2]
	ldr r3, [r3]
	str lr, [sp]
	str r12, [sp, #4]
	mov r5, r0
	str lr, [sp, #8]
	str r12, [sp, #0xc]
	ldmia r2, {r1, r2}
	bl FUN_ov1_020be880
	cmp r0, #0
	beq _020BEA64
	ldrsh r0, [sp, #0x28]
	ldr r1, [r4]
	subs r2, r1, r0
	ldrsh r0, [sp, #0x2a]
	ldr r1, [r4, #4]
	rsbmi r2, r2, #0
	subs r0, r1, r0
	rsbmi r0, r0, #0
	cmp r2, r0
	ble _020BE9CC
	ldrh r1, [sp, #0x28]
	ldrh r0, [sp, #0x2a]
	sub r2, sp, #4
	strh r1, [r2]
	strh r0, [r2, #2]
	ldr r2, [r2]
	mov r0, r5
	mov r1, r4
	bl FUN_ov1_020be7f0
	ldrh r0, [sp, #0x2c]
	ldmia r4, {r1, r2}
	sub r12, sp, #4
	ldrh r3, [sp, #0x2e]
	strh r0, [r12]
	mov r0, r5
	strh r3, [r12, #2]
	ldr r3, [r12]
	bl FUN_ov1_020be880
	cmp r0, #0
	beq _020BEA50
	ldr r3, [sp, #8]
	ldr r2, [sp, #0xc]
	ldrh r1, [sp, #0x28]
	ldrh r0, [sp, #0x2a]
	str r3, [r4]
	str r2, [r4, #4]
	sub r2, sp, #4
	strh r1, [r2]
	strh r0, [r2, #2]
	ldr r2, [r2]
	mov r0, r5
	mov r1, r4
	bl FUN_ov1_020be838
	b _020BEA50
_020BE9CC:
	ldrh r1, [sp, #0x28]
	ldrh r0, [sp, #0x2a]
	sub r2, sp, #4
	strh r1, [r2]
	strh r0, [r2, #2]
	ldr r2, [r2]
	mov r0, r5
	mov r1, r4
	bl FUN_ov1_020be838
	ldrh r0, [sp, #0x2c]
	ldmia r4, {r1, r2}
	sub r12, sp, #4
	ldrh r3, [sp, #0x2e]
	strh r0, [r12]
	mov r0, r5
	strh r3, [r12, #2]
	ldr r3, [r12]
	bl FUN_ov1_020be880
	cmp r0, #0
	beq _020BEA50
	ldr r3, [sp, #8]
	ldr r2, [sp, #0xc]
	ldrh r1, [sp, #0x28]
	ldrh r0, [sp, #0x2a]
	str r3, [r4]
	str r2, [r4, #4]
	sub r2, sp, #4
	strh r1, [r2]
	strh r0, [r2, #2]
	ldr r2, [r2]
	mov r0, r5
	mov r1, r4
	bl FUN_ov1_020be7f0
_020BEA50:
	add sp, sp, #0x10
	mov r0, #1
	ldmfd sp!, {r3, r4, r5, lr}
	add sp, sp, #0x10
	bx lr
_020BEA64:
	mov r0, #0
	add sp, sp, #0x10
	ldmfd sp!, {r3, r4, r5, lr}
	add sp, sp, #0x10
	bx lr
	arm_func_end FUN_ov1_020be8c4

	arm_func_start FUN_ov1_020bea78
FUN_ov1_020bea78: ; 0x020BEA78
	stmfd sp!, {r3, r4, r5, lr}
	mov r5, r0
	mov r4, r1
	bl FUN_ov1_020db338
	cmp r0, #0
	ldmnefd sp!, {r3, r4, r5, pc}
	bl FUN_ov1_020db2d8
	cmp r0, #0
	beq _020BEAA4
	cmp r4, #0x38
	moveq r4, #0x41
_020BEAA4:
	ldr r0, [r5, #4]
	bl FUN_02042054
	cmp r4, r0
	ldmeqfd sp!, {r3, r4, r5, pc}
	ldr r0, [r5, #4]
	mov r2, r4
	mov r1, #1
	bl FUN_02041eac
	ldr r0, [r5, #4]
	bl FUN_02041db8
	ldmfd sp!, {r3, r4, r5, pc}
	arm_func_end FUN_ov1_020bea78

	arm_func_start FUN_ov1_020bead0
FUN_ov1_020bead0: ; 0x020BEAD0
	mov r12, #0
	ldr r2, _020BEB18 ; =0x020EAAF4
	str r12, [r0, #0x4c]
	ldr r1, _020BEB1C ; =0x020EAACC
	strh r12, [r2]
	strh r12, [r2, #2]
	str r12, [r1]
	mov r3, #2
	add r1, r0, #0x200
	ldr r2, _020BEB20 ; =0x020EAADC
	strh r12, [r1, #0xb2]
	strb r3, [r0, #0x2b4]
	strb r3, [r0, #0x2b5]
	strb r12, [r2, #3]
	strb r12, [r2, #2]
	strb r12, [r2, #1]
	strb r12, [r2]
	bx lr
_020BEB18: .word 0x020EAAF4
_020BEB1C: .word 0x020EAACC
_020BEB20: .word 0x020EAADC
	arm_func_end FUN_ov1_020bead0

	arm_func_start FUN_ov1_020beb24
FUN_ov1_020beb24: ; 0x020BEB24
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	ldr r1, _020BED20 ; =0x020EAAD4
	mov r4, r0
	ldr r1, [r1]
	mov r6, #0
	cmp r1, #0x13
	bgt _020BEB74
	bge _020BEBF0
	cmp r1, #4
	bgt _020BEB54
	beq _020BECC8
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_020BEB54:
	cmp r1, #0xd
	ldmgtfd sp!, {r3, r4, r5, r6, r7, pc}
	cmp r1, #0xb
	ldmltfd sp!, {r3, r4, r5, r6, r7, pc}
	beq _020BEBA4
	cmp r1, #0xd
	beq _020BEBFC
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_020BEB74:
	cmp r1, #0x1a
	bgt _020BEB98
	cmp r1, #0x15
	ldmltfd sp!, {r3, r4, r5, r6, r7, pc}
	cmpne r1, #0x17
	beq _020BEBFC
	cmp r1, #0x1a
	beq _020BEC3C
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_020BEB98:
	cmp r1, #0x3d
	beq _020BECA0
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_020BEBA4:
	bl FUN_ov1_020d0628
	ldr r0, [r4, #8]
	cmp r0, #4
	ldmnefd sp!, {r3, r4, r5, r6, r7, pc}
	ldr r5, _020BED24 ; =0x02099EF0
	ldr r0, [r5]
	bl FUN_ov132_021434f8
	cmp r0, #0
	ldr r0, [r5]
	beq _020BEBD8
	mov r1, #1
	bl FUN_ov132_0214a758
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_020BEBD8:
	mov r1, r6
	bl FUN_ov126_02131c04
	mov r0, r4
	mov r1, #0x38
	bl FUN_ov1_020bea78
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_020BEBF0:
	ldr r0, _020BED24 ; =0x02099EF0
	ldr r0, [r0]
	bl FUN_ov132_02149238
_020BEBFC:
	ldr r0, _020BED20 ; =0x020EAAD4
	ldr r0, [r0]
	cmp r0, #0x17
	bne _020BEC18
	ldr r0, _020BED28 ; =0x02099F14
	ldr r0, [r0]
	bl FUN_ov1_020e39b8
_020BEC18:
	ldr r0, [r4, #8]
	cmp r0, #4
	bne _020BEC30
	mov r0, r4
	mov r1, #0x38
	bl FUN_ov1_020bea78
_020BEC30:
	mov r0, r4
	bl FUN_ov1_020d0628
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_020BEC3C:
	bl FUN_ov1_020d7c34
	ldr r0, [r4, #8]
	cmp r0, #4
	cmpne r0, #3
	bne _020BEC94
	ldr r5, _020BED24 ; =0x02099EF0
	ldr r0, [r5]
	bl FUN_ov132_02159840
	str r6, [sp]
	ldr r0, [r5]
	mov r1, r6
	mov r2, r6
	mov r3, r6
	bl FUN_ov132_02148d5c
	mov r0, r4
	bl FUN_ov1_020be758
	ldr r0, [r5]
	mov r1, r6
	bl FUN_ov132_021447f4
	mov r0, r4
	mov r1, #0x38
	bl FUN_ov1_020bea78
_020BEC94:
	mov r0, r4
	bl FUN_ov1_020d0628
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_020BECA0:
	mov r1, r6
	ldr r0, _020BED2C ; =0x0209F5C0
	mov r3, r1
	mov r2, #5
	bl FUN_ov16_020f5f64
	ldr r0, _020BED28 ; =0x02099F14
	ldr r1, _020BED30 ; =0x0000029E
	ldr r0, [r0]
	bl FUN_ov1_020e4328
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_020BECC8:
	ldr r0, _020BED24 ; =0x02099EF0
	ldr r5, _020BED34 ; =0x00005810
	ldr r0, [r0]
	bl FUN_ov132_021458e4
	mov r7, #1
	cmp r0, #0
	moveq r7, r6
	bl FUN_ov1_020db338
	orrs r0, r7, r0
	beq _020BED00
	ldr r0, _020BED38 ; =0x0209BA20
	bl FUN_020731a4
	cmp r0, #0
	orreq r5, r5, #0x400
_020BED00:
	ldr r0, _020BED28 ; =0x02099F14
	mov r1, r5
	ldr r0, [r0]
	bl FUN_ov1_020e4354
	strb r6, [r4, #0x21]
	strb r6, [r4, #0x22]
	strb r6, [r4, #0x23]
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_020BED20: .word 0x020EAAD4
_020BED24: .word 0x02099EF0
_020BED28: .word 0x02099F14
_020BED2C: .word 0x0209F5C0
_020BED30: .word 0x0000029E
_020BED34: .word 0x00005810
_020BED38: .word 0x0209BA20
	arm_func_end FUN_ov1_020beb24

	arm_func_start FUN_ov1_020bed3c
FUN_ov1_020bed3c: ; 0x020BED3C
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	ldr r6, _020BEE30 ; =0x02099EF0
	mov r4, r0
	ldr r0, [r6]
	bl FUN_ov132_021434f8
	cmp r0, #0
	beq _020BED9C
	mov r0, #0x3c
	ldr r5, _020BEE34 ; =0x02099F14
	str r0, [r4, #8]
	ldr r0, [r5]
	mov r1, #0x800
_020BED6C:
	bl FUN_ov1_020e4354
	mov r6, #0
	strb r6, [r4, #0x21]
	ldr r0, [r5]
	mov r1, #0x1000
	bl FUN_ov1_020e4354
	strb r6, [r4, #0x22]
	ldr r0, [r5]
	mov r1, #0x4000
	bl FUN_ov1_020e4354
	strb r6, [r4, #0x23]
	b _020BEDFC
_020BED9C:
	bl FUN_ov1_020db338
	cmp r0, #0
	mov r1, #0x800
	beq _020BEDB8
	ldr r5, _020BEE34 ; =0x02099F14
	ldr r0, [r5]
	b _020BED6C
_020BEDB8:
	ldr r5, _020BEE34 ; =0x02099F14
	ldr r0, [r5]
	bl FUN_ov1_020e4328
	mov r7, #1
	strb r7, [r4, #0x21]
	ldr r0, [r6]
	bl FUN_ov132_02145ff0
	cmp r0, #1
	bne _020BEDFC
	ldr r0, [r5]
	mov r1, #0x1000
	bl FUN_ov1_020e4328
	strb r7, [r4, #0x22]
	ldr r0, [r5]
	mov r1, #0x4000
	bl FUN_ov1_020e4328
	strb r7, [r4, #0x23]
_020BEDFC:
	mov r1, #1
	ldr r0, _020BEE38 ; =0x020EAACC
	strb r1, [r4, #0x1d]
	mov r2, #0
	str r2, [r0]
	ldr r5, _020BEE30 ; =0x02099EF0
	str r2, [r4, #0x4c]
	ldr r0, [r5]
	bl FUN_ov132_02148ad8
	ldr r0, [r5]
	mov r1, #2
	bl FUN_ov132_02148ba4
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_020BEE30: .word 0x02099EF0
_020BEE34: .word 0x02099F14
_020BEE38: .word 0x020EAACC
	arm_func_end FUN_ov1_020bed3c

	arm_func_start FUN_ov1_020bee3c
FUN_ov1_020bee3c: ; 0x020BEE3C
	stmfd sp!, {r4, r5, r6, lr}
	ldr r6, _020BEFB8 ; =0x02099EF0
	mov r5, r0
	ldr r0, [r6]
	mov r4, r1
	bl FUN_ov126_021324dc
	ldr r1, _020BEFBC ; =0x020EAAC8
	str r0, [r1]
	ldr r0, [r6]
	bl FUN_ov126_0213252c
	ldr r2, _020BEFC0 ; =0x020EAAE4
	mov r1, #0xa
	str r0, [r2]
	mov r0, r5
	bl FUN_ov1_020bf9f4
	mov r0, #0
	str r0, [r5, #0x4c]
	cmp r4, #0
	beq _020BEE90
	mov r0, r5
	bl FUN_ov1_020bead0
_020BEE90:
	cmp r4, #0
	beq _020BEEB0
	ldr r0, _020BEFC4 ; =0x020EAB04
	mov r1, #0x80000000
	str r1, [r0]
	str r1, [r0, #4]
	str r1, [r0, #8]
	str r1, [r0, #0xc]
_020BEEB0:
	ldr r0, _020BEFC8 ; =0x020A0640
	ldr r1, _020BEFCC ; =0x020EAACC
	ldrb r0, [r0, #0x1a]
	mov r2, #1
	str r2, [r1]
	cmp r0, #0
	bne _020BEEDC
	ldr r2, _020BEFD0 ; =0x0209A2C0
	mov r0, r5
	ldmia r2, {r1, r2}
	bl FUN_ov1_020cc44c
_020BEEDC:
	ldr r0, _020BEFBC ; =0x020EAAC8
	ldr r0, [r0]
	bl FUN_ov16_020efa80
	ldr r6, _020BEFD4 ; =0x02099F14
	mov r1, r0
	ldr r0, [r6]
	bl FUN_ov1_020e3944
	ldr r0, _020BEFC0 ; =0x020EAAE4
	ldr r0, [r0]
	bl FUN_ov16_020efa80
	mov r1, r0
	ldr r0, [r6]
	bl FUN_ov1_020e3944
	cmp r4, #0
	beq _020BEF2C
	bl FUN_ov16_020f081c
	mov r1, r0
	mov r0, r5
	bl FUN_ov1_020ce99c
	b _020BEF34
_020BEF2C:
	mov r0, r5
	bl FUN_ov1_020d0628
_020BEF34:
	cmp r4, #0
	beq _020BEF5C
	ldr r4, _020BEFB8 ; =0x02099EF0
	mov r6, #2
	ldr r0, [r4]
	mov r1, r6
	bl FUN_ov132_02148ad8
	ldr r0, [r4]
	mov r1, r6
	bl FUN_ov132_02148ba4
_020BEF5C:
	mov r0, r5
	bl FUN_ov1_020d4a48
	mov r0, r5
	mov r1, #0x39
	bl FUN_ov1_020bea78
	mov r2, #0
	mov r1, #8
	ldr r0, _020BEFC8 ; =0x020A0640
	strb r2, [r5, #0x1c]
	str r1, [r5, #0x18]
	ldrb r0, [r0, #0x1a]
	cmp r0, #0
	ldrne r0, _020BEFD8 ; =0x020E9482
	strneb r2, [r0]
	ldr r0, _020BEFC8 ; =0x020A0640
	ldrb r0, [r0, #0x1a]
	cmp r0, #0
	ldmeqfd sp!, {r4, r5, r6, pc}
	mov r0, r5
	ldr r1, [r0]
	ldr r1, [r1, #0x4c]
	blx r1
	ldmfd sp!, {r4, r5, r6, pc}
_020BEFB8: .word 0x02099EF0
_020BEFBC: .word 0x020EAAC8
_020BEFC0: .word 0x020EAAE4
_020BEFC4: .word 0x020EAB04
_020BEFC8: .word 0x020A0640
_020BEFCC: .word 0x020EAACC
_020BEFD0: .word 0x0209A2C0
_020BEFD4: .word 0x02099F14
_020BEFD8: .word 0x020E9482
	arm_func_end FUN_ov1_020bee3c

	arm_func_start FUN_ov1_020befdc
FUN_ov1_020befdc: ; 0x020BEFDC
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, lr}
	ldr r2, _020BF1B0 ; =0x02099EF0
	mov r5, r0
	ldr r0, [r2]
	mov r4, r1
	bl FUN_ov126_021375d4
	ldrsb r3, [r0, #0xc]
	ldr r2, _020BF1B4 ; =0x020EAAC8
	ldr r1, _020BF1B8 ; =0x020EAAE4
	str r3, [r2]
	ldrsb r0, [r0, #0xd]
	str r0, [r1]
	cmp r0, #0
	mov r0, r5
	bge _020BF020
	bl FUN_ov1_020d7270
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
_020BF020:
	mov r1, #0x1e
	bl FUN_ov1_020bf9f4
	mov r0, #0
	str r0, [r5, #0x4c]
	cmp r4, #0
	beq _020BF040
	mov r0, r5
	bl FUN_ov1_020bead0
_020BF040:
	ldr r7, _020BF1B4 ; =0x020EAAC8
	ldr r1, _020BF1BC ; =0x020EAACC
	ldr r0, [r7]
	mov r2, #2
	str r2, [r1]
	bl FUN_ov16_020efa80
	mov r8, r0
	ldr r6, _020BF1C0 ; =0x02099F14
	mov r1, r8
	ldr r0, [r6]
	bl FUN_ov1_020e3944
	ldr r0, _020BF1B8 ; =0x020EAAE4
	ldr r0, [r0]
	bl FUN_ov16_020efa80
	mov r1, r0
	ldr r0, [r6]
	bl FUN_ov1_020e3944
	ldr r1, [r8, #0x84]
	ldr r0, [r6]
	ldr r2, [r1, #4]
	ldr r1, [r1]
	mov r3, #0
	bl FUN_ov1_020e4148
	cmp r4, #0
	beq _020BF108
	ldr r0, [r7]
	bl FUN_ov16_020f07f4
	mov r6, r0
	bl FUN_ov16_020f081c
	cmp r6, r0
	bne _020BF108
	bl FUN_ov16_020f081c
	ldr r1, _020BF1C4 ; =0x020EAB04
	mov r7, r0
	add r0, r1, r7, lsl #3
	ldr r8, [r1, r7, lsl #3]
	ldr r9, [r0, #4]
	cmp r8, #0x80000000
	cmpgt r9, #0x80000000
	ble _020BF108
	mov r0, r5
	mov r1, r7
	bl FUN_ov1_020ce99c
	mov r6, #1
	mov r0, r5
	mov r1, r7
	mov r2, r8
	mov r3, r9
	str r6, [sp]
	bl FUN_ov1_020ce940
_020BF108:
	cmp r4, #0
	beq _020BF134
	ldr r4, _020BF1B0 ; =0x02099EF0
	mov r6, #2
	ldr r0, [r4]
	mov r1, r6
	bl FUN_ov132_02148ad8
	ldr r0, [r4]
	mov r1, r6
	bl FUN_ov132_02148ba4
	b _020BF13C
_020BF134:
	mov r0, r5
	bl FUN_ov1_020d0628
_020BF13C:
	ldr r0, _020BF1C8 ; =0x020A0640
	ldrb r0, [r0, #0x1a]
	cmp r0, #0
	bne _020BF15C
	ldr r2, _020BF1CC ; =0x0209A2C0
	mov r0, r5
	ldmia r2, {r1, r2}
	bl FUN_ov1_020cc44c
_020BF15C:
	mov r0, r5
	mov r1, #0x3a
	bl FUN_ov1_020bea78
	mov r2, #0
	mov r1, #8
	ldr r0, _020BF1C8 ; =0x020A0640
	strb r2, [r5, #0x1c]
	str r1, [r5, #0x18]
	ldrb r0, [r0, #0x1a]
	cmp r0, #0
	ldrne r0, _020BF1D0 ; =0x020E9482
	strneb r2, [r0]
	ldr r0, _020BF1C8 ; =0x020A0640
	ldrb r0, [r0, #0x1a]
	cmp r0, #0
	ldmeqfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
	mov r0, r5
	ldr r1, [r0]
	ldr r1, [r1, #0x4c]
	blx r1
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
_020BF1B0: .word 0x02099EF0
_020BF1B4: .word 0x020EAAC8
_020BF1B8: .word 0x020EAAE4
_020BF1BC: .word 0x020EAACC
_020BF1C0: .word 0x02099F14
_020BF1C4: .word 0x020EAB04
_020BF1C8: .word 0x020A0640
_020BF1CC: .word 0x0209A2C0
_020BF1D0: .word 0x020E9482
	arm_func_end FUN_ov1_020befdc

	arm_func_start FUN_ov1_020bf1d4
FUN_ov1_020bf1d4: ; 0x020BF1D4
	stmfd sp!, {r3, r4, r5, lr}
	ldr r2, _020BF2BC ; =0x02099EF0
	mov r5, r0
	ldr r0, [r2]
	mov r4, r1
	bl FUN_ov126_021375d4
	ldrsb r3, [r0, #0xc]
	ldr r2, _020BF2C0 ; =0x020EAAC8
	ldr r1, _020BF2C4 ; =0x020EAAE4
	str r3, [r2]
	ldrsb r0, [r0, #0xd]
	cmp r4, #0
	str r0, [r1]
	mov r0, r5
	beq _020BF218
	mov r1, #0x32
	b _020BF21C
_020BF218:
	mov r1, #0x37
_020BF21C:
	bl FUN_ov1_020bf9f4
	mov r0, #0
	str r0, [r5, #0x4c]
	cmp r4, #0
	beq _020BF238
	mov r0, r5
	bl FUN_ov1_020bead0
_020BF238:
	ldr r1, _020BF2C8 ; =0x020EAB04
	mov r2, #0x80000000
	str r2, [r1]
	str r2, [r1, #4]
	str r2, [r1, #8]
	ldr r0, _020BF2CC ; =0x020EAACC
	str r2, [r1, #0xc]
	mov r1, #5
	str r1, [r0]
	cmp r4, #0
	beq _020BF274
	mov r0, r5
	bl FUN_ov1_020d17cc
	mov r0, r5
	bl FUN_ov1_020d7e80
_020BF274:
	mov r2, #0
	mov r1, #8
	ldr r0, _020BF2D0 ; =0x020A0640
	strb r2, [r5, #0x1c]
	str r1, [r5, #0x18]
	ldrb r0, [r0, #0x1a]
	cmp r0, #0
	ldrne r0, _020BF2D4 ; =0x020E9482
	strneb r2, [r0]
	ldr r0, _020BF2D0 ; =0x020A0640
	ldrb r0, [r0, #0x1a]
	cmp r0, #0
	ldmeqfd sp!, {r3, r4, r5, pc}
	mov r0, r5
	ldr r1, [r0]
	ldr r1, [r1, #0x4c]
	blx r1
	ldmfd sp!, {r3, r4, r5, pc}
_020BF2BC: .word 0x02099EF0
_020BF2C0: .word 0x020EAAC8
_020BF2C4: .word 0x020EAAE4
_020BF2C8: .word 0x020EAB04
_020BF2CC: .word 0x020EAACC
_020BF2D0: .word 0x020A0640
_020BF2D4: .word 0x020E9482
	arm_func_end FUN_ov1_020bf1d4

	arm_func_start FUN_ov1_020bf2d8
FUN_ov1_020bf2d8: ; 0x020BF2D8
	stmfd sp!, {r4, r5, r6, r7, r8, r9, r10, lr}
	ldr r2, _020BF4C0 ; =0x02099EF0
	mov r10, r0
	ldr r0, [r2]
	mov r5, #0
	mov r9, r1
	mov r4, r5
	bl FUN_ov126_0213777c
	mov r6, r0
	ldrsb r7, [r6, #0x20]
	ldr r0, _020BF4C4 ; =0x020EAAC0
	mov r8, r5
	str r7, [r0]
	ldr r0, _020BF4C8 ; =0x020EAACC
	str r8, [r10, #0x4c]
	mov r1, #3
	str r1, [r0]
	mov r0, #8
	str r0, [r10, #0x18]
	strb r8, [r10, #0x1c]
	cmp r9, #1
	bne _020BF3B0
	ldr r1, _020BF4CC ; =0x020EAAF4
	mov r0, r7
	strh r8, [r1, #4]
	bl FUN_ov16_020f076c
	cmp r0, #0
	movne r8, #1
	strb r8, [r10, #0x2b0]
	mov r2, #0
	ldr r0, _020BF4D0 ; =0x020EAADC
	b _020BF364
_020BF358:
	ldrb r1, [r10, #0x2b0]
	strb r1, [r0, r2]
	add r2, r2, #1
_020BF364:
	cmp r2, #4
	blt _020BF358
	mov r0, r7
	bl FUN_ov16_020f076c
	cmp r0, #0
	strne r5, [r10, #0x18]
	ldr r5, _020BF4C0 ; =0x02099EF0
	mov r8, #2
	ldr r0, [r5]
	mov r1, r8
	bl FUN_ov132_02148ad8
	ldr r0, [r5]
	mov r1, r8
	bl FUN_ov132_02148ba4
	bl FUN_ov16_020f081c
	mov r1, r0
	mov r0, r10
	bl FUN_ov1_020ce99c
	b _020BF3B8
_020BF3B0:
	mov r0, r10
	bl FUN_ov1_020d0628
_020BF3B8:
	ldr r0, _020BF4D4 ; =0x020A0640
	ldrb r0, [r0, #0x1a]
	cmp r0, #1
	ldreq r0, _020BF4D8 ; =0x020E9482
	streqb r4, [r0]
	beq _020BF494
	mov r0, r7
	bl FUN_ov16_020f076c
	cmp r0, #0
	bne _020BF494
	ldr r4, _020BF4C0 ; =0x02099EF0
	mov r1, r7
	ldr r0, [r4]
	bl FUN_ov132_02149258
	ldrb r1, [r6, #0x2e]
	ldrb r0, [r6, #0x2f]
	cmp r1, #1
	bne _020BF448
	ldr r0, [r4]
	bl FUN_ov132_02149720
	ldr r0, [r4]
	bl FUN_ov132_02149714
	mov r5, r0
	ldr r6, [r5, #0x28]
	mov r8, #0
	ldr r4, _020BF4DC ; =0x02099F14
	b _020BF43C
_020BF424:
	ldr r0, [r5, r8, lsl #2]
	bl FUN_ov16_020efa80
	mov r1, r0
	ldr r0, [r4]
	bl FUN_ov1_020e3944
	add r8, r8, #1
_020BF43C:
	cmp r8, r6
	blt _020BF424
	b _020BF494
_020BF448:
	cmp r0, #1
	bne _020BF494
	ldr r0, [r4]
	bl FUN_ov132_021492b0
	ldr r0, [r4]
	bl FUN_ov132_021492a4
	mov r5, r0
	ldr r6, [r5, #0x28]
	mov r8, #0
	ldr r4, _020BF4DC ; =0x02099F14
	b _020BF48C
_020BF474:
	ldr r0, [r5, r8, lsl #2]
	bl FUN_ov16_020efa80
	mov r1, r0
	ldr r0, [r4]
	bl FUN_ov1_020e3944
	add r8, r8, #1
_020BF48C:
	cmp r8, r6
	blt _020BF474
_020BF494:
	mov r0, r7
	bl FUN_ov16_020f076c
	cmp r0, #0
	bne _020BF4B0
	mov r0, r10
	mov r1, #0x3b
	bl FUN_ov1_020bea78
_020BF4B0:
	mov r0, r10
	mov r1, #0x38
	bl FUN_ov1_020bf9f4
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, pc}
_020BF4C0: .word 0x02099EF0
_020BF4C4: .word 0x020EAAC0
_020BF4C8: .word 0x020EAACC
_020BF4CC: .word 0x020EAAF4
_020BF4D0: .word 0x020EAADC
_020BF4D4: .word 0x020A0640
_020BF4D8: .word 0x020E9482
_020BF4DC: .word 0x02099F14
	arm_func_end FUN_ov1_020bf2d8

	arm_func_start FUN_ov1_020bf4e0
FUN_ov1_020bf4e0: ; 0x020BF4E0
	stmfd sp!, {r4, lr}
	cmp r1, #0
	blt _020BF528
	mov r0, r1
	bl FUN_ov16_020f07f4
	mov r4, r0
	bl FUN_ov16_020f081c
	cmp r4, r0
	bne _020BF528
	ldr r0, _020BF530 ; =0x020A0640
	ldrb r0, [r0, #0x1a]
	cmp r0, #0
	beq _020BF520
	bl FUN_ov16_020f0944 ; may be ov17
	cmp r0, #0
	beq _020BF528
_020BF520:
	mov r0, #1
	ldmfd sp!, {r4, pc}
_020BF528:
	mov r0, #0
	ldmfd sp!, {r4, pc}
_020BF530: .word 0x020A0640
	arm_func_end FUN_ov1_020bf4e0

	arm_func_start FUN_ov1_020bf534
FUN_ov1_020bf534: ; 0x020BF534
	stmfd sp!, {r4, r5, r6, lr}
	ldr r2, _020BF670 ; =0x02099EF0
	mov r5, r0
	ldr r0, [r2]
	mov r4, r1
	bl FUN_ov126_021375d4
	ldrsb r3, [r0, #0xc]
	ldr r2, _020BF674 ; =0x020EAAC8
	ldr r1, _020BF678 ; =0x020EAAE4
	str r3, [r2]
	ldrsb r0, [r0, #0xd]
	str r0, [r1]
	cmp r0, #0
	mov r0, r5
	bge _020BF578
	bl FUN_ov1_020d7768
	ldmfd sp!, {r4, r5, r6, pc}
_020BF578:
	mov r1, #0x46
	bl FUN_ov1_020bf9f4
	mov r0, #0
	str r0, [r5, #0x4c]
	cmp r4, #0
	beq _020BF598
	mov r0, r5
	bl FUN_ov1_020bead0
_020BF598:
	ldr r0, _020BF674 ; =0x020EAAC8
	ldr r1, _020BF67C ; =0x020EAACC
	ldr r0, [r0]
	mov r6, #2
	str r6, [r1]
	bl FUN_ov16_020efa80
	ldr r0, _020BF678 ; =0x020EAAE4
	ldr r0, [r0]
	bl FUN_ov16_020efa80
	ldr r2, _020BF680 ; =0x02099F14
	mov r1, r0
	ldr r0, [r2]
	bl FUN_ov1_020e3944
	cmp r4, #0
	beq _020BF5F4
	ldr r4, _020BF670 ; =0x02099EF0
	mov r1, r6
	ldr r0, [r4]
	bl FUN_ov132_02148ad8
	ldr r0, [r4]
	mov r1, r6
	bl FUN_ov132_02148ba4
	b _020BF5FC
_020BF5F4:
	mov r0, r5
	bl FUN_ov1_020d0628
_020BF5FC:
	ldr r0, _020BF684 ; =0x020A0640
	ldrb r0, [r0, #0x1a]
	cmp r0, #0
	bne _020BF61C
	ldr r2, _020BF688 ; =0x0209A2C0
	mov r0, r5
	ldmia r2, {r1, r2}
	bl FUN_ov1_020cc44c
_020BF61C:
	mov r0, r5
	mov r1, #0x3a
	bl FUN_ov1_020bea78
	mov r2, #0
	mov r1, #8
	ldr r0, _020BF684 ; =0x020A0640
	strb r2, [r5, #0x1c]
	str r1, [r5, #0x18]
	ldrb r0, [r0, #0x1a]
	cmp r0, #0
	ldrne r0, _020BF68C ; =0x020E9482
	strneb r2, [r0]
	ldr r0, _020BF684 ; =0x020A0640
	ldrb r0, [r0, #0x1a]
	cmp r0, #0
	ldmeqfd sp!, {r4, r5, r6, pc}
	mov r0, r5
	ldr r1, [r0]
	ldr r1, [r1, #0x4c]
	blx r1
	ldmfd sp!, {r4, r5, r6, pc}
_020BF670: .word 0x02099EF0
_020BF674: .word 0x020EAAC8
_020BF678: .word 0x020EAAE4
_020BF67C: .word 0x020EAACC
_020BF680: .word 0x02099F14
_020BF684: .word 0x020A0640
_020BF688: .word 0x0209A2C0
_020BF68C: .word 0x020E9482
	arm_func_end FUN_ov1_020bf534

	arm_func_start FUN_ov1_020bf690
FUN_ov1_020bf690: ; 0x020BF690
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, lr}
	ldr r7, _020BF8B0 ; =0x02099EF0
	mov r5, r0
	ldr r0, [r7]
	mov r4, r1
	mov r8, #1
	mov r11, #0
	bl FUN_ov132_02159df0
	ldr r6, _020BF8B4 ; =0x020A0640
	mov r10, r0
	ldrb r0, [r6, #0x1a]
	cmp r0, #0
	beq _020BF714
	ldrb r0, [r5, #0x58]
	cmp r0, #0
	bne _020BF714
	ldr r0, _020BF8B8 ; =0x0209AEC0
	bl FUN_02046744
	str r0, [sp]
	bl FUN_ov16_020f0944 ; may be ov17
	cmp r0, #0
	beq _020BF714
	ldrh r0, [r5, #0x5a]
	bl FUN_ov16_020f085c
	mov r9, r0
	bl FUN_ov16_020f081c
	cmp r9, r0
	bne _020BF710
	ldrh r1, [r5, #0x5a]
	ldr r0, [sp]
	tst r0, r8, lsl r1
	bne _020BF714
_020BF710:
	strb r8, [r5, #0x58]
_020BF714:
	ldrsb r3, [r10, #2]
	ldr r2, _020BF8BC ; =0x020EAAD0
	mov r0, r5
	mov r1, #0x4c
	str r3, [r2]
	bl FUN_ov1_020bf9f4
	mov r9, #0
	mov r0, #8
	str r9, [r5, #0x4c]
	strb r9, [r5, #0x1c]
	str r0, [r5, #0x18]
	cmp r4, #0
	beq _020BF7BC
	mov r0, r5
	bl FUN_ov1_020bead0
	ldr r0, [r7]
	bl FUN_ov132_02159afc
	cmp r0, #0
	beq _020BF7B8
	ldrsb r0, [r10, #2]
	cmp r0, #0
	ldrb r0, [r10, #4]
	moveq r9, #1
	orr r0, r0, r8, lsl r9
	strb r0, [r10, #4]
	ldrb r0, [r6, #0x1a]
	cmp r0, #0
	beq _020BF7B8
	ldr r0, _020BF8BC ; =0x020EAAD0
	ldr r0, [r0]
	bl FUN_ov16_020f0a30
	cmp r0, #0
	beq _020BF7B8
	mov r1, #0
	ldr r0, _020BF8C0 ; =0x020EAADC
	b _020BF7AC
_020BF7A4:
	strb r8, [r0, r1]
	add r1, r1, #1
_020BF7AC:
	cmp r1, #4
	blt _020BF7A4
	str r11, [r5, #0x18]
_020BF7B8:
	str r11, [r5, #0x5c]
_020BF7BC:
	ldr r0, _020BF8C4 ; =0x020EAACC
	strb r8, [r5, #0x25]
	mov r1, #4
	str r1, [r0]
	str r11, [r5, #0x60]
	cmp r4, #0
	beq _020BF7EC
	bl FUN_ov16_020f081c
	mov r1, r0
	mov r0, r5
	bl FUN_ov1_020ce99c
	b _020BF81C
_020BF7EC:
	ldr r0, [r7]
	bl FUN_ov132_02159afc
	cmp r0, #0
	ldrneb r0, [r5, #0x58]
	cmpne r0, #0
	beq _020BF814
	bl FUN_ov16_020f081c
	mov r1, r0
	mov r0, r5
	bl FUN_ov1_020ce99c
_020BF814:
	mov r0, r5
	bl FUN_ov1_020d0628
_020BF81C:
	cmp r4, #0
	beq _020BF840
	mov r4, #2
	ldr r0, [r7]
	mov r1, r4
	bl FUN_ov132_02148ad8
	ldr r0, [r7]
	mov r1, r4
	bl FUN_ov132_02148ba4
_020BF840:
	ldrb r0, [r6, #0x1a]
	cmp r0, #0
	ldrne r0, _020BF8C8 ; =0x020E9482
	strneb r11, [r0]
	ldrb r0, [r6, #0x1a]
	cmp r0, #0
	beq _020BF868
	ldrb r0, [r5, #0x58]
	cmp r0, #0
	beq _020BF890
_020BF868:
	bl FUN_ov16_020f081c
	mov r1, r0
	ldr r0, [r7]
	mov r2, #0
	bl FUN_ov132_02159fd8
	cmp r0, #0
	beq _020BF890
	mov r0, r5
	mov r1, #0x4e
	bl FUN_ov1_020bea78
_020BF890:
	ldrb r0, [r6, #0x1a]
	cmp r0, #0
	ldmeqfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
	mov r0, r5
	ldr r1, [r0]
	ldr r1, [r1, #0x4c]
	blx r1
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_020BF8B0: .word 0x02099EF0
_020BF8B4: .word 0x020A0640
_020BF8B8: .word 0x0209AEC0
_020BF8BC: .word 0x020EAAD0
_020BF8C0: .word 0x020EAADC
_020BF8C4: .word 0x020EAACC
_020BF8C8: .word 0x020E9482
	arm_func_end FUN_ov1_020bf690

	arm_func_start FUN_ov1_020bf8cc
FUN_ov1_020bf8cc: ; 0x020BF8CC
	stmfd sp!, {r4, lr}
	mov r4, r0
	mov r1, #0
	ldr r0, _020BF95C ; =0x020A0640
	str r1, [r4, #0x4c]
	ldrb r0, [r0, #0x1a]
	cmp r0, #0
	beq _020BF8FC
	ldr r0, _020BF960 ; =0x0209AEC0
	ldrb r0, [r0, #0x64]
	cmp r0, #0
	beq _020BF91C
_020BF8FC:
	ldr r0, _020BF964 ; =0x020EAA98
	mov r3, #1
	ldrb r0, [r0]
	mov r1, #0
	cmp r0, #0
	movne r3, #0
	ldr r0, _020BF968 ; =0x02099EF0
	b _020BF924
_020BF91C:
	ldr r0, _020BF968 ; =0x02099EF0
	mov r3, r1
_020BF924:
	ldr r0, [r0]
	mov r2, #0x5a
	bl FUN_ov132_0214314c
	ldr r0, _020BF96C ; =0x02099F14
	ldr r0, [r0]
	bl FUN_ov1_020e3d50
	ldr r0, _020BF964 ; =0x020EAA98
	mov r1, #1
	strb r1, [r0]
	mov r1, #0
	mov r0, #1
	strb r1, [r4, #0x1c]
	strb r0, [r4, #0x1d]
	ldmfd sp!, {r4, pc}
_020BF95C: .word 0x020A0640
_020BF960: .word 0x0209AEC0
_020BF964: .word 0x020EAA98
_020BF968: .word 0x02099EF0
_020BF96C: .word 0x02099F14
	arm_func_end FUN_ov1_020bf8cc

	arm_func_start FUN_ov1_020bf970
FUN_ov1_020bf970: ; 0x020BF970
	stmfd sp!, {r4, r5, r6, lr}
	ldr r1, _020BF9DC ; =0x02099F14
	mov r5, r0
	ldr r0, [r1]
	ldr r1, _020BF9E0 ; =0x0000029E
	bl FUN_ov1_020e4354
	mov r4, #0
	ldr r6, _020BF9E4 ; =0x02099EF0
	str r4, [r5, #0x4c]
	ldr r0, [r6]
	mov r1, r4
	bl FUN_ov132_02148ba4
	ldr r0, _020BF9E8 ; =0x020A0640
	ldrb r0, [r0, #0x1a]
	cmp r0, #0
	beq _020BF9D0
	ldr r0, _020BF9EC ; =0x0209AEC0
	ldrb r0, [r0, #0x64]
	cmp r0, #0
	bne _020BF9D0
	ldr r0, [r6]
	bl FUN_ov132_02143138
	ldr r0, _020BF9F0 ; =0x020EAA98
	strb r4, [r0]
_020BF9D0:
	mov r0, #1
	strb r0, [r5, #0x1d]
	ldmfd sp!, {r4, r5, r6, pc}
_020BF9DC: .word 0x02099F14
_020BF9E0: .word 0x0000029E
_020BF9E4: .word 0x02099EF0
_020BF9E8: .word 0x020A0640
_020BF9EC: .word 0x0209AEC0
_020BF9F0: .word 0x020EAA98
	arm_func_end FUN_ov1_020bf970

	arm_func_start FUN_ov1_020bf9f4
FUN_ov1_020bf9f4: ; 0x020BF9F4
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, lr}
	mov r9, r0
	ldr r2, [r9, #0xc]
	ldr r4, _020BFFC0 ; =0x02099F14
	ldr r5, _020BFFC4 ; =0x02099EF0
	mov r6, #8
	mov r7, #0
	mov r8, #1
	cmp r1, r2
	ldmeqfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
	sub r2, r1, #0xa
	str r1, [r9, #0xc]
	ldr r1, _020BFFC8 ; =0x020A0640
	cmp r2, #0x4b
	addls pc, pc, r2, lsl #2
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
_020BFA34: ; jump table
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc} ; case 0
	b _020BFB64 ; case 1
	b _020BFBB0 ; case 2
	b _020BFBC0 ; case 3
	b _020BFBE4 ; case 4
	b _020BFBF8 ; case 5
	b _020BFC10 ; case 6
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc} ; case 7
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc} ; case 8
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc} ; case 9
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc} ; case 10
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc} ; case 11
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc} ; case 12
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc} ; case 13
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc} ; case 14
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc} ; case 15
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc} ; case 16
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc} ; case 17
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc} ; case 18
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc} ; case 19
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc} ; case 20
	b _020BFC18 ; case 21
	b _020BFC24 ; case 22
	b _020BFC70 ; case 23
	b _020BFC94 ; case 24
	b _020BFCBC ; case 25
	b _020BFCC4 ; case 26
	b _020BFCD4 ; case 27
	b _020BFC80 ; case 28
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc} ; case 29
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc} ; case 30
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc} ; case 31
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc} ; case 32
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc} ; case 33
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc} ; case 34
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc} ; case 35
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc} ; case 36
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc} ; case 37
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc} ; case 38
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc} ; case 39
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc} ; case 40
	b _020BFF78 ; case 41
	b _020BFF80 ; case 42
	b _020BFF90 ; case 43
	b _020BFFAC ; case 44
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc} ; case 45
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc} ; case 46
	b _020BFCF8 ; case 47
	b _020BFD18 ; case 48
	b _020BFDB0 ; case 49
	b _020BFDD4 ; case 50
	b _020BFDC0 ; case 51
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc} ; case 52
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc} ; case 53
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc} ; case 54
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc} ; case 55
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc} ; case 56
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc} ; case 57
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc} ; case 58
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc} ; case 59
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc} ; case 60
	b _020BFE04 ; case 61
	b _020BFE10 ; case 62
	b _020BFE58 ; case 63
	b _020BFE7C ; case 64
	b _020BFE68 ; case 65
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc} ; case 66
	b _020BFEA0 ; case 67
	b _020BFEC0 ; case 68
	b _020BFEC8 ; case 69
	b _020BFF04 ; case 70
	b _020BFEF0 ; case 71
	b _020BFF30 ; case 72
	b _020BFF44 ; case 73
	b _020BFF60 ; case 74
	b _020BFF70 ; case 75
_020BFB64:
	ldr r1, _020BFFC8 ; =0x020A0640
	ldrb r1, [r1, #0x1a]
	cmp r1, #0
	bne _020BFB78
	bl FUN_ov1_020d6e3c
_020BFB78:
	strb r8, [r9, #0x1d]
	ldr r0, [r5]
	mov r1, r7
	bl FUN_ov132_02146378
	mov r6, r0
	ldr r0, [r5]
	mov r1, r8
	bl FUN_ov132_02146378
	mov r2, r0
	ldr r0, [r4]
	mov r1, r6
	mov r3, r7
	bl FUN_ov1_020e4784
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
_020BFBB0:
	ldr r0, [r5]
	mov r1, r7
	bl FUN_ov132_02148ba4
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
_020BFBC0:
	strb r8, [r9, #0x1d]
	strb r7, [r9, #0x24]
	str r6, [r9, #0x18]
	ldr r0, [r4]
	bl FUN_ov1_020e4968
	ldr r0, [r5]
	mov r1, r7
	bl FUN_ov132_02148ba4
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
_020BFBE4:
	strb r8, [r9, #0x1d]
	ldr r0, [r5]
	mov r1, r7
	bl FUN_ov132_02148ba4
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
_020BFBF8:
	mov r1, r7
	strb r8, [r9, #0x1d]
	bl FUN_ov1_020d51bc
	ldr r0, [r4]
	bl FUN_ov1_020e4968
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
_020BFC10:
	strb r8, [r9, #0x1d]
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
_020BFC18:
	strb r8, [r9, #0x1d]
	bl FUN_ov1_020d4c18
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
_020BFC24:
	ldr r1, _020BFFC8 ; =0x020A0640
	ldrb r1, [r1, #0x1a]
	cmp r1, #0
	bne _020BFC38
	bl FUN_ov1_020d7164
_020BFC38:
	strb r8, [r9, #0x1d]
	ldr r0, [r5]
	mov r1, #0
	bl FUN_ov132_021463c4
	mov r6, r0
	ldr r0, [r5]
	mov r1, r8
	bl FUN_ov132_021463c4
	mov r2, r0
	ldr r0, [r4]
	mov r1, r6
	mov r3, r8
	bl FUN_ov1_020e4784
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
_020BFC70:
	ldr r0, [r5]
	mov r1, r7
	bl FUN_ov132_02148ba4
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
_020BFC80:
	strb r8, [r9, #0x1d]
	ldr r0, [r5]
	mov r1, r7
	bl FUN_ov132_02148ba4
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
_020BFC94:
	bl FUN_ov16_020f081c
	add r0, r9, r0
	mov r1, #2
	strb r1, [r0, #0x2b4]
	mov r0, r9
	strb r8, [r9, #0x1d]
	bl FUN_ov1_020d05c0
	mov r0, r9
	bl FUN_ov1_020d5104
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
_020BFCBC:
	strb r8, [r9, #0x1d]
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
_020BFCC4:
	ldr r0, [r5]
	mov r1, r7
	bl FUN_ov132_02148ba4
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
_020BFCD4:
	strb r8, [r9, #0x1d]
	strb r7, [r9, #0x24]
	str r6, [r9, #0x18]
	ldr r0, [r4]
	bl FUN_ov1_020e4968
	ldr r0, [r5]
	mov r1, r7
	bl FUN_ov132_02148ba4
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
_020BFCF8:
	strb r8, [r9, #0x1d]
	ldr r0, [r5]
	bl FUN_ov132_021434f8
	cmp r0, #0
	ldmnefd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
	mov r0, r9
	bl FUN_ov1_020d4d80
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
_020BFD18:
	ldr r6, _020BFFC8 ; =0x020A0640
	ldrb r1, [r6, #0x1a]
	cmp r1, #0
	bne _020BFD2C
	bl FUN_ov1_020d71a8
_020BFD2C:
	strb r8, [r9, #0x1d]
	ldrb r0, [r6, #0x1a]
	cmp r0, #0
	bne _020BFD64
	ldr r1, _020BFFCC ; =0x020EAAC0
	mov r0, r9
	ldr r1, [r1]
	bl FUN_ov1_020bf4e0
	cmp r0, #0
	bne _020BFD64
	ldr r0, _020BFFD0 ; =0x020EAAF4
	ldrh r0, [r0, #4]
	cmp r0, #0
	ldmeqfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
_020BFD64:
	ldr r1, _020BFFCC ; =0x020EAAC0
	mov r0, r9
	ldr r1, [r1]
	bl FUN_ov1_020bf4e0
	cmp r0, #0
	ldmeqfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
	ldr r0, [r5]
	mov r1, r7
	bl FUN_ov132_021463c4
	mov r6, r0
	ldr r0, [r5]
	mov r1, #1
	bl FUN_ov132_021463c4
	mov r2, r0
	ldr r0, [r4]
	mov r1, r6
	mov r3, r7
	bl FUN_ov1_020e4784
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
_020BFDB0:
	ldr r0, [r5]
	mov r1, r7
	bl FUN_ov132_02148ba4
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
_020BFDC0:
	strb r8, [r9, #0x1d]
	ldr r0, [r5]
	mov r1, r7
	bl FUN_ov132_02148ba4
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
_020BFDD4:
	strb r8, [r9, #0x1d]
	strb r7, [r9, #0x24]
	str r6, [r9, #0x18]
	ldr r0, [r4]
	bl FUN_ov1_020e4968
	ldr r0, _020BFFCC ; =0x020EAAC0
	ldr r0, [r0]
	bl FUN_ov16_020efa80
	mov r1, r0
	ldr r0, [r4]
	bl FUN_ov1_020e3964
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
_020BFE04:
	strb r8, [r9, #0x1d]
	bl FUN_ov1_020d4c18
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
_020BFE10:
	ldrb r1, [r1, #0x1a]
	cmp r1, #0
	bne _020BFE20
	bl FUN_ov1_020d722c
_020BFE20:
	strb r8, [r9, #0x1d]
	ldr r0, [r5]
	mov r1, #0
	bl FUN_ov132_021463c4
	mov r6, r0
	ldr r0, [r5]
	mov r1, r8
	bl FUN_ov132_021463c4
	mov r2, r0
	ldr r0, [r4]
	mov r1, r6
	mov r3, r8
	bl FUN_ov1_020e4784
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
_020BFE58:
	ldr r0, [r5]
	mov r1, r7
	bl FUN_ov132_02148ba4
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
_020BFE68:
	strb r8, [r9, #0x1d]
	ldr r0, [r5]
	mov r1, r7
	bl FUN_ov132_02148ba4
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
_020BFE7C:
	strb r8, [r9, #0x1d]
	strb r7, [r9, #0x24]
	str r6, [r9, #0x18]
	ldr r0, [r4]
	bl FUN_ov1_020e4968
	ldr r0, [r5]
	mov r1, r7
	bl FUN_ov132_02148ba4
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
_020BFEA0:
	strb r8, [r9, #0x1d]
	ldr r0, [r5]
	bl FUN_ov132_021434f8
	cmp r0, #0
	ldmnefd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
	mov r0, r9
	bl FUN_ov1_020d4fd0
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
_020BFEC0:
	strb r8, [r9, #0x1d]
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
_020BFEC8:
	ldr r0, [r9, #0x60]
	cmp r0, #0
	beq _020BFEE0
	ldr r0, [r4]
	mov r1, r8
	bl FUN_ov1_020e450c
_020BFEE0:
	ldr r0, [r5]
	mov r1, #0
	bl FUN_ov132_02148ba4
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
_020BFEF0:
	strb r8, [r9, #0x1d]
	ldr r0, [r5]
	mov r1, r7
	bl FUN_ov132_02148ba4
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
_020BFF04:
	ldr r0, [r5]
	bl FUN_ov132_021434f8
	cmp r0, #0
	bne _020BFF20
	ldr r0, [r4]
	mov r1, r7
	bl FUN_ov1_020e450c
_020BFF20:
	strb r8, [r9, #0x1d]
	strb r7, [r9, #0x24]
	str r6, [r9, #0x18]
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
_020BFF30:
	ldr r0, [r4]
	mov r1, r7
	bl FUN_ov1_020e450c
	strb r8, [r9, #0x1d]
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
_020BFF44:
	ldr r0, [r5]
	bl FUN_ov132_021434f8
	cmp r0, #0
	ldmnefd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
	mov r0, r9
	bl FUN_ov1_020d5070
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
_020BFF60:
	mov r1, r8
	strb r1, [r9, #0x1d]
	bl FUN_ov1_020d51bc
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
_020BFF70:
	strb r8, [r9, #0x1d]
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
_020BFF78:
	strb r8, [r9, #0x1d]
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
_020BFF80:
	ldr r0, [r5]
	mov r1, r7
	bl FUN_ov132_02148ba4
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
_020BFF90:
	mov r1, r7
	strb r8, [r9, #0x1d]
	strb r1, [r9, #0x24]
	str r6, [r9, #0x18]
	ldr r0, [r5]
	bl FUN_ov132_02148ba4
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
_020BFFAC:
	strb r8, [r9, #0x1d]
	ldr r0, [r5]
	mov r1, r7
	bl FUN_ov132_02148ba4
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
_020BFFC0: .word 0x02099F14
_020BFFC4: .word 0x02099EF0
_020BFFC8: .word 0x020A0640
_020BFFCC: .word 0x020EAAC0
_020BFFD0: .word 0x020EAAF4
	arm_func_end FUN_ov1_020bf9f4

	arm_func_start FUN_ov1_020bffd4
FUN_ov1_020bffd4: ; 0x020BFFD4
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, lr}
	mov r8, r0
	ldr r3, [r8, #8]
	ldr r9, _020C0574 ; =0x020A0640
	ldr r5, _020C0578 ; =0x02099EF0
	mov r6, #0
	mov r7, #1
	cmp r1, r3
	ldmeqfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
	ldr r2, _020C057C ; =0x020EAAD4
	str r3, [r2]
	str r1, [r8, #8]
	bl FUN_ov1_020beb24
	ldr r0, [r8, #8]
	cmp r0, #0x64
	bgt _020C0148
	cmp r0, #0x64
	mov r4, r9
	bge _020C044C
	cmp r0, #0x46
	addls pc, pc, r0, lsl #2
	b _020C0564
_020C002C: ; jump table
	b _020C0564 ; case 0
	b _020C0564 ; case 1
	b _020C0564 ; case 2
	b _020C04D8 ; case 3
	b _020C0154 ; case 4
	b _020C0564 ; case 5
	b _020C0564 ; case 6
	b _020C0564 ; case 7
	b _020C0564 ; case 8
	b _020C0564 ; case 9
	b _020C046C ; case 10
	b _020C0160 ; case 11
	b _020C046C ; case 12
	b _020C0170 ; case 13
	b _020C046C ; case 14
	b _020C01B0 ; case 15
	b _020C02D0 ; case 16
	b _020C02D0 ; case 17
	b _020C046C ; case 18
	b _020C0180 ; case 19
	b _020C046C ; case 20
	b _020C0564 ; case 21
	b _020C046C ; case 22
	b _020C01A0 ; case 23
	b _020C046C ; case 24
	b _020C02B4 ; case 25
	b _020C0190 ; case 26
	b _020C01C0 ; case 27
	b _020C01D4 ; case 28
	b _020C0564 ; case 29
	b _020C04D8 ; case 30
	b _020C01E4 ; case 31
	b _020C04D8 ; case 32
	b _020C025C ; case 33
	b _020C04D8 ; case 34
	b _020C02E0 ; case 35
	b _020C0564 ; case 36
	b _020C0564 ; case 37
	b _020C0564 ; case 38
	b _020C0564 ; case 39
	b _020C04D8 ; case 40
	b _020C0348 ; case 41
	b _020C04D8 ; case 42
	b _020C0380 ; case 43
	b _020C0564 ; case 44
	b _020C0564 ; case 45
	b _020C0564 ; case 46
	b _020C0564 ; case 47
	b _020C0564 ; case 48
	b _020C0564 ; case 49
	b _020C0564 ; case 50
	b _020C0400 ; case 51
	b _020C0564 ; case 52
	b _020C0564 ; case 53
	b _020C0564 ; case 54
	b _020C0564 ; case 55
	b _020C0564 ; case 56
	b _020C0564 ; case 57
	b _020C0564 ; case 58
	b _020C0564 ; case 59
	b _020C03E8 ; case 60
	b _020C03F4 ; case 61
	b _020C04D8 ; case 62
	b _020C0564 ; case 63
	b _020C0564 ; case 64
	b _020C0564 ; case 65
	b _020C0564 ; case 66
	b _020C0564 ; case 67
	b _020C0564 ; case 68
	b _020C0564 ; case 69
	b _020C04D8 ; case 70
_020C0148:
	cmp r0, #0x66
	beq _020C041C
	b _020C0564
_020C0154:
	mov r0, r8
	bl FUN_ov1_020bed3c
	b _020C0564
_020C0160:
	mov r0, r8
	mov r1, r7
	bl FUN_ov1_020bee3c
	b _020C0564
_020C0170:
	mov r0, r8
	mov r1, r7
	bl FUN_ov1_020befdc
	b _020C0564
_020C0180:
	mov r0, r8
	mov r1, r7
	bl FUN_ov1_020bf2d8
	b _020C0564
_020C0190:
	mov r0, r8
	mov r1, r7
	bl FUN_ov1_020bf690
	b _020C0564
_020C01A0:
	mov r0, r8
	mov r1, r7
	bl FUN_ov1_020bf534
	b _020C0564
_020C01B0:
	mov r0, r8
	mov r1, r7
	bl FUN_ov1_020bf1d4
	b _020C0564
_020C01C0:
	mov r0, r8
	ldr r1, [r0]
	ldr r1, [r1, #0x50]
_020C01CC:
	blx r1
	b _020C0564
_020C01D4:
	mov r0, r8
	ldr r1, [r0]
	ldr r1, [r1, #0x4c]
	b _020C01CC
_020C01E4:
	mov r0, r8
	bl FUN_ov1_020d06d0
	mov r0, r8
	bl FUN_ov1_020bead0
	ldr r1, [r8, #0x2bc]
	ldr r0, [r5]
	ldr r3, _020C0580 ; =0x020E9485
	mov r2, r7
	strb r2, [r3, r1]
	bl FUN_ov132_02145184
	ldrb r0, [r4, #0x1a]
	cmp r0, #0
	beq _020C0228
	ldr r0, [r8, #0x2bc]
	bl FUN_ov16_020f0a30
	cmp r0, #0
	beq _020C0238
_020C0228:
	ldr r0, [r5]
	ldr r1, [r8, #0x2bc]
	bl FUN_ov132_02145040
	b _020C0248
_020C0238:
	ldrb r2, [r8, #0x2c0]
	ldr r0, [r5]
	ldr r1, [r8, #0x2bc]
	bl FUN_ov132_021450a0
_020C0248:
	ldr r0, _020C0584 ; =0x0209AC44
	mov r1, #0
	mov r2, #0x3e8
	bl FUN_0202c44c
	b _020C02D8
_020C025C:
	mov r0, r8
	bl FUN_ov1_020d06d0
	ldr r1, [r8, #0x2bc]
	ldr r2, _020C0580 ; =0x020E9485
	ldr r0, [r5]
	strb r6, [r2, r1]
	bl FUN_ov132_02145140
	ldr r0, [r5]
	mov r1, r6
	bl FUN_ov132_02145190
	cmp r0, #0
	bne _020C02B0
	ldr r0, [r5]
	mov r1, r7
	bl FUN_ov132_02145190
	cmp r0, #0
	bne _020C02B0
	ldr r0, _020C0584 ; =0x0209AC44
	mov r1, r6
	mov r2, #0x3e8
	bl FUN_0202c44c
_020C02B0:
	b _020C02D8
_020C02B4:
	ldr r0, [r5]
	bl FUN_ov132_02159df0
	ldrsb r2, [r0, #2]
	ldr r1, _020C0588 ; =0x020EAAD0
	mov r0, r8
	str r2, [r1]
	b _020C02D4
_020C02D0:
	mov r0, r8
_020C02D4:
	bl FUN_ov1_020d06d0
_020C02D8:
	str r7, [r8, #0x14]
	b _020C0560
_020C02E0:
	str r6, [r8, #0x4c]
	strb r7, [r8, #0x1d]
	ldr r0, [r5]
	bl FUN_ov132_021447c8
	cmp r0, #0xf
	bne _020C030C
	str r7, [r8, #0x14]
	ldr r0, [r5]
	mov r1, r6
	bl FUN_ov132_021491bc
	b _020C0338
_020C030C:
	mov r0, #0x3c
	str r0, [r8, #0x14]
	ldr r0, [r5]
	bl FUN_ov132_0214538c
	cmp r0, #0
	movgt r0, #0xf
	strgt r0, [r8, #0x14]
	bgt _020C0338
	ldr r0, _020C0584 ; =0x0209AC44
	ldr r1, _020C058C ; =0x0000407A
	bl FUN_0202cf6c
_020C0338:
	ldr r0, [r5]
	mov r1, #0
	bl FUN_ov132_02148ba4
	b _020C0564
_020C0348:
	mov r1, r6
	str r1, [r8, #0x4c]
	ldr r0, [r5]
	bl FUN_ov132_02148ba4
	strb r7, [r8, #0x1d]
	str r7, [r8, #0x14]
	ldr r0, [r5]
	ldrb r0, [r0, #0x376]
	cmp r0, #0
	beq _020C0564
	ldr r0, _020C0584 ; =0x0209AC44
	ldr r1, _020C0590 ; =0x0000407D
	bl FUN_0202cf6c
	b _020C03C8
_020C0380:
	mov r1, r6
	str r1, [r8, #0x4c]
	ldr r0, [r5]
	bl FUN_ov132_02148ba4
	strb r7, [r4, #0x8c]
	strb r7, [r8, #0x1d]
	str r7, [r8, #0x14]
	ldr r0, [r5]
	ldrb r0, [r0, #0x376]
	cmp r0, #0
	beq _020C0564
	ldr r0, _020C0594 ; =0x0209BA20
	bl FUN_020731a4
	cmp r0, #0
	bne _020C03C8
	ldr r0, _020C0584 ; =0x0209AC44
	ldr r1, _020C0598 ; =0x0000407C
	bl FUN_0202cf6c
_020C03C8:
	ldr r0, _020C0594 ; =0x0209BA20
	bl FUN_020731a4
	cmp r0, #0
	movne r0, #0x1e
	strne r0, [r8, #0x14]
	moveq r0, #0x5a
	streq r0, [r8, #0x14]
	b _020C0564
_020C03E8:
	mov r0, r8
	bl FUN_ov1_020bf8cc
	b _020C0564
_020C03F4:
	mov r0, r8
	bl FUN_ov1_020bf970
	b _020C0564
_020C0400:
	ldr r0, [r5]
	mov r1, r6
	bl FUN_ov132_02148ba4
	mov r0, #0x3c
	strb r7, [r8, #0x1d]
	str r0, [r8, #0x14]
	b _020C0564
_020C041C:
	ldrb r0, [r9, #0x1a]
	cmp r0, #0
	beq _020C0440
	ldrh r0, [r8, #0x56]
	bl FUN_ov16_020f085c
	mov r4, r0
	bl FUN_ov16_020f081c
	cmp r4, r0
	bne _020C0448
_020C0440:
	mov r0, r8
	bl FUN_ov1_020be714
_020C0448:
	b _020C0560
_020C044C:
	ldrb r0, [r4, #0x1a]
	cmp r0, #0
	ldrne r0, _020C059C ; =0x0209AEC0
	ldrneb r0, [r0, #0x64]
	cmpne r0, #0
	ldrne r0, _020C05A0 ; =0x020E9482
	strneb r6, [r0]
	b _020C0564
_020C046C:
	ldrb r0, [r4, #0x1a]
	cmp r0, #0
	beq _020C04B4
	ldr r0, _020C059C ; =0x0209AEC0
	ldrb r0, [r0, #0x64]
	cmp r0, #0
	bne _020C04B4
	mov r9, r6
	b _020C04AC
_020C0490:
	ldr r0, [r5]
	mov r1, r9
	bl FUN_ov126_0213922c
	cmp r0, #0
	ldrne r0, [r0, #0x88]
	add r9, r9, #1
	strne r6, [r0, #0x14]
_020C04AC:
	cmp r9, #0x16
	blt _020C0490
_020C04B4:
	ldr r0, [r8, #8]
	cmp r0, #0x14
	beq _020C04D8
	cmp r0, #0x12
	ldreq r0, _020C05A4 ; =0x020EAAF4
	streqh r6, [r0, #4]
	beq _020C04D8
	mov r0, r8
	bl FUN_ov1_020bead0
_020C04D8:
	ldr r0, [r8, #8]
	cmp r0, #0x46
	bne _020C0528
	ldrb r0, [r4, #0x1a]
	cmp r0, #0
	beq _020C051C
	ldr r0, _020C059C ; =0x0209AEC0
	ldrb r0, [r0, #0x64]
	cmp r0, #0
	bne _020C051C
	ldr r0, _020C057C ; =0x020EAAD4
	ldr r0, [r0]
	cmp r0, #0x15
	beq _020C051C
	ldr r0, _020C05A8 ; =0x0209A114
	ldr r0, [r0]
	bl FUN_ov1_020de1e8
_020C051C:
	ldr r0, _020C05A0 ; =0x020E9482
	strb r6, [r0]
	b _020C053C
_020C0528:
	cmp r0, #0x22
	bne _020C053C
	ldr r0, _020C05A8 ; =0x0209A114
	ldr r0, [r0]
	bl FUN_ov1_020de1e8
_020C053C:
	ldrb r0, [r4, #0x1a]
	cmp r0, #0
	ldrne r0, _020C059C ; =0x0209AEC0
	ldrneb r0, [r0, #0x64]
	cmpne r0, #0
	ldrne r0, _020C05AC ; =0x020EAAC4
	ldrne r1, [r0]
	addne r1, r1, #1
	strne r1, [r0]
_020C0560:
	strb r7, [r8, #0x1d]
_020C0564:
	str r6, [r8, #0x70]
	str r6, [r8, #0x2a8]
	strh r6, [r8, #0x86]
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
_020C0574: .word 0x020A0640
_020C0578: .word 0x02099EF0
_020C057C: .word 0x020EAAD4
_020C0580: .word 0x020E9485
_020C0584: .word 0x0209AC44
_020C0588: .word 0x020EAAD0
_020C058C: .word 0x0000407A
_020C0590: .word 0x0000407D
_020C0594: .word 0x0209BA20
_020C0598: .word 0x0000407C
_020C059C: .word 0x0209AEC0
_020C05A0: .word 0x020E9482
_020C05A4: .word 0x020EAAF4
_020C05A8: .word 0x0209A114
_020C05AC: .word 0x020EAAC4
	arm_func_end FUN_ov1_020bffd4

	arm_func_start FUN_ov1_020c05b0
FUN_ov1_020c05b0: ; 0x020C05B0
	stmfd sp!, {r3, r4, r5, lr}
	mov r4, r1
	mov r5, r0
	mov r1, #5
	bl FUN_ov1_020bffd4
	ldr r1, [r5, #4]
	ldr r0, _020C05DC ; =0x020AF81C
	bl FUN_02044de0
	ldr r0, _020C05E0 ; =0x020EAAD8
	str r4, [r0]
	ldmfd sp!, {r3, r4, r5, pc}
_020C05DC: .word 0x020AF81C
_020C05E0: .word 0x020EAAD8
	arm_func_end FUN_ov1_020c05b0

	arm_func_start FUN_ov1_020c05e4
FUN_ov1_020c05e4: ; 0x020C05E4
	stmfd sp!, {r4, lr}
	ldr r1, _020C0664 ; =0x02099EF0
	mov r4, r0
	ldr r0, [r1]
	bl FUN_ov132_02149c88
	cmp r0, #0
	bne _020C0610
	mov r0, r4
	ldr r1, [r0]
	ldr r1, [r1, #0x4c]
	blx r1
_020C0610:
	ldr r0, _020C0668 ; =0x020EAAB8
	ldr r0, [r0]
	str r0, [r4, #8]
	cmp r0, #5
	ldmeqfd sp!, {r4, pc}
	cmp r0, #0x66
	bne _020C064C
	mov r1, #0
	mov r0, r4
	str r1, [r4, #0x338]
	bl FUN_ov1_020cebf4
	mov r0, r4
	mov r1, #4
	bl FUN_ov1_020bffd4
	ldmfd sp!, {r4, pc}
_020C064C:
	mov r2, #0
	mov r0, r4
	mov r1, #4
	str r2, [r4, #0x338]
	bl FUN_ov1_020bffd4
	ldmfd sp!, {r4, pc}
_020C0664: .word 0x02099EF0
_020C0668: .word 0x020EAAB8
	arm_func_end FUN_ov1_020c05e4

	arm_func_start FUN_ov1_020c066c
FUN_ov1_020c066c: ; 0x020C066C
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, lr}
	sub sp, sp, #0x10
	ldr r1, _020C0A74 ; =0x020EAAD8
	mov r6, r0
	ldr r2, [r1]
	mov r5, #1
	cmp r2, #0x2b
	ldr r7, _020C0A78 ; =0x02099EF0
	mov r4, #0
	bgt _020C070C
	cmp r2, #0x2b
	bge _020C0A58
	cmp r2, #0x1b
	bgt _020C0700
	subs r1, r2, #0xb
	addpl pc, pc, r1, lsl #2
	b _020C06F4
_020C06B0: ; jump table
	b _020C0A58 ; case 0
	b _020C0A68 ; case 1
	b _020C0A58 ; case 2
	b _020C0A68 ; case 3
	b _020C0A68 ; case 4
	b _020C0A68 ; case 5
	b _020C0A68 ; case 6
	b _020C0A68 ; case 7
	b _020C0A30 ; case 8
	b _020C0A68 ; case 9
	b _020C0A3C ; case 10
	b _020C0A68 ; case 11
	b _020C0A58 ; case 12
	b _020C0A68 ; case 13
	b _020C0A68 ; case 14
	b _020C0A58 ; case 15
	b _020C0A58 ; case 16
_020C06F4:
	cmp r2, #4
	beq _020C0A58
	b _020C0A68
_020C0700:
	cmp r2, #0x2a
	beq _020C0A58
	b _020C0A68
_020C070C:
	cmp r2, #0x48
	bgt _020C0724
	bge _020C09C4
	cmp r2, #0x47
	beq _020C0740
	b _020C0A68
_020C0724:
	cmp r2, #0x64
	bgt _020C0734
	beq _020C0A58
	b _020C0A68
_020C0734:
	cmp r2, #0x65
	beq _020C0A58
	b _020C0A68
_020C0740:
	mov r1, #0x38
	bl FUN_ov1_020bea78
	ldr r0, _020C0A7C ; =0x020A0640
	ldrb r0, [r0, #0x1a]
	cmp r0, #0
	beq _020C0774
	ldr r0, _020C0A80 ; =0x0209AEC0
	ldrb r0, [r0, #0x64]
	cmp r0, #0
	bne _020C0774
	ldr r0, [r7]
	mov r1, r4
	bl FUN_ov132_021447d0
_020C0774:
	ldr r0, _020C0A84 ; =0x02099F14
	mov r1, r5
	ldr r0, [r0]
	bl FUN_ov1_020e3de4
	ldr r0, [r6, #0x338]
	cmp r0, #0x14
	addls pc, pc, r0, lsl #2
	b _020C09C0
_020C0794: ; jump table
	b _020C09C0 ; case 0
	b _020C09C0 ; case 1
	b _020C08F0 ; case 2
	b _020C08F0 ; case 3
	b _020C08F0 ; case 4
	b _020C07E8 ; case 5
	b _020C09C0 ; case 6
	b _020C09C0 ; case 7
	b _020C09C0 ; case 8
	b _020C09C0 ; case 9
	b _020C07E8 ; case 10
	b _020C09C0 ; case 11
	b _020C09C0 ; case 12
	b _020C09C0 ; case 13
	b _020C08F0 ; case 14
	b _020C07E8 ; case 15
	b _020C07E8 ; case 16
	b _020C07E8 ; case 17
	b _020C0950 ; case 18
	b _020C0954 ; case 19
	b _020C0958 ; case 20
_020C07E8:
	bl FUN_ov1_020db2c0
	cmp r0, #0
	beq _020C0804
	mov r0, r6
	mov r1, #0x3c
	str r4, [r6, #0x340]
	b _020C0A64
_020C0804:
	ldr r0, [r7]
	bl FUN_ov132_021458e4
	cmp r0, #0
	bne _020C08BC
	ldr r9, _020C0A88 ; =0x0209AC44
	mov r8, #0x3e8
	mov r0, r9
	mov r1, r4
	mov r2, r8
	bl FUN_0202d774
	ldr r0, [r7]
	mov r1, r4
	bl FUN_ov132_02145190
	cmp r0, #0
	bne _020C0884
	ldr r0, [r7]
	mov r1, r5
	bl FUN_ov132_02145190
	cmp r0, #0
	bne _020C0884
	mov r7, #0x7d0
	mov r0, r9
	mov r1, r4
	mov r2, r7
	mov r3, r8
	bl FUN_0202c314
	mov r0, r9
	mov r1, r5
	mov r2, r7
	mov r3, r8
_020C087C:
	bl FUN_0202c314
	b _020C08CC
_020C0884:
	ldr r7, _020C0A88 ; =0x0209AC44
	mov r5, #0x7d0
	mov r8, #0x3e8
	mov r0, r7
	mov r3, r5
	mov r1, #0
	mov r2, #9
	str r8, [sp]
	bl FUN_0202c184
	mov r0, r7
	mov r2, r5
	mov r3, r8
	mov r1, #1
	b _020C087C
_020C08BC:
	ldr r0, _020C0A88 ; =0x0209AC44
	ldr r2, _020C0A8C ; =0x00000BB8
	mov r1, #0
	bl FUN_0202d774
_020C08CC:
	mov r0, r6
	mov r5, #1
	bl FUN_ov1_020c1304
	cmp r0, #0
	strneb r5, [r6, #0x344]
	bne _020C0A68
	mov r0, r6
	bl FUN_ov1_020c0f4c
	b _020C0A68
_020C08F0:
	mov r0, r6
	bl FUN_ov1_020c1304
	cmp r0, #0
	strneb r5, [r6, #0x345]
	bne _020C090C
	mov r0, r6
	bl FUN_ov1_020c10a4
_020C090C:
	ldr r0, [r7]
	bl FUN_ov132_02144f4c
	cmp r0, #0
	bne _020C0A68
	ldr r0, [r7]
	bl FUN_ov126_021375d4
	movs r5, r0
	beq _020C0A68
	ldrsb r0, [r5, #0xd]
	bl FUN_ov16_020efa80
	cmp r0, #0
	beq _020C0A68
	ldrsh r1, [r5, #0xa]
	add r3, sp, #0xc
	mov r2, #1
	bl FUN_0206d1e4
	b _020C0A68
_020C0950:
	b _020C0A4C
_020C0954:
	b _020C0A44
_020C0958:
	ldr r0, [r7]
	bl FUN_ov132_021434f8
	cmp r0, #0
	bne _020C09B0
	ldr r0, [r7]
	mov r1, #0
	bl FUN_ov132_02147df8
	ldr r0, [r7]
	bl FUN_ov132_02159960
	ldr r0, [r7]
	bl FUN_ov132_02159afc
	cmp r0, #0
	beq _020C0994
	mov r0, r6
	bl FUN_ov1_020cebf4
_020C0994:
	ldr r0, [r7]
	bl FUN_ov132_02159840
	ldr r0, [r7]
	mov r1, #0
	bl FUN_ov132_021447f4
	mov r0, r6
	bl FUN_ov1_020be758
_020C09B0:
	ldr r0, [r7]
	mov r1, #0
	bl FUN_ov132_021447d0
	b _020C0A4C
_020C09C0:
	b _020C0A4C
_020C09C4:
	mov r1, #0x38
	bl FUN_ov1_020bea78
	ldr r0, [r7]
	bl FUN_ov132_021434f8
	cmp r0, #0
	ldr r0, [r7]
	mov r1, r5
	beq _020C09EC
	bl FUN_ov132_0214a758
	b _020C0A68
_020C09EC:
	bl FUN_ov126_02131c04
	bl FUN_ov16_020f0a4c
	ldr r2, _020C0A90 ; =0x020EAB04
	mov r12, r0
	ldr r0, [r2, r12, lsl #3]
	cmp r0, #0x80000000
	ble _020C0A2C
	stmia sp, {r4, r5}
	str r5, [sp, #8]
	add r3, r2, r12, lsl #3
	ldr r1, _020C0A94 ; =0x0209A2C0
	ldr r0, [r7]
	ldr r1, [r1, #0x48]
	ldr r2, [r2, r12, lsl #3]
	ldr r3, [r3, #4]
	bl FUN_ov126_0212d668
_020C0A2C:
	b _020C0A4C
_020C0A30:
	mov r1, #0x38
	bl FUN_ov1_020bea78
	b _020C0A4C
_020C0A3C:
	mov r1, #0x38
	bl FUN_ov1_020bea78
_020C0A44:
	ldr r0, [r7]
	bl FUN_ov132_02147d68
_020C0A4C:
	mov r0, r6
	mov r1, #4
	b _020C0A64
_020C0A58:
	ldr r1, _020C0A74 ; =0x020EAAD8
	mov r0, r6
	ldr r1, [r1]
_020C0A64:
	bl FUN_ov1_020bffd4
_020C0A68:
	str r4, [r6, #0x338]
	add sp, sp, #0x10
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
_020C0A74: .word 0x020EAAD8
_020C0A78: .word 0x02099EF0
_020C0A7C: .word 0x020A0640
_020C0A80: .word 0x0209AEC0
_020C0A84: .word 0x02099F14
_020C0A88: .word 0x0209AC44
_020C0A8C: .word 0x00000BB8
_020C0A90: .word 0x020EAB04
_020C0A94: .word 0x0209A2C0
	arm_func_end FUN_ov1_020c066c

	arm_func_start FUN_ov1_020c0a98
FUN_ov1_020c0a98: ; 0x020C0A98
	stmfd sp!, {r4, lr}
	mov r4, r0
	ldr r0, [r4, #4]
	bl FUN_0204201c
	cmp r0, #0x37
	ldmeqfd sp!, {r4, pc}
	ldr r0, _020C0B3C ; =0x020A0640
	ldrb r0, [r0, #0x1a]
	cmp r0, #0
	bne _020C0AE0
	ldr r0, _020C0B40 ; =0x02099EF0
	ldr r0, [r0]
	bl FUN_01ff9524
	cmp r0, #0
	beq _020C0AE0
	mov r0, r4
	bl FUN_ov1_020d80cc
	ldmfd sp!, {r4, pc}
_020C0AE0:
	ldr r0, _020C0B3C ; =0x020A0640
	ldrb r0, [r0, #0x1a]
	cmp r0, #0
	ldrne r0, _020C0B44 ; =0x0209AEC0
	ldrneb r0, [r0, #0x64]
	cmpne r0, #0
	beq _020C0B18
	mov r0, #0x64
	sub r1, r0, #0x65
	mov r2, r1
	mov r3, #0
	bl FUN_ov1_020db97c
	cmp r0, #0
	ldmeqfd sp!, {r4, pc}
_020C0B18:
	mov r0, r4
	ldr r1, [r0]
	ldr r1, [r1, #0x50]
	blx r1
	ldr r0, [r4, #4]
	mov r1, #0
	mov r2, #0x37
	bl FUN_02041eac
	ldmfd sp!, {r4, pc}
_020C0B3C: .word 0x020A0640
_020C0B40: .word 0x02099EF0
_020C0B44: .word 0x0209AEC0
	arm_func_end FUN_ov1_020c0a98

	arm_func_start FUN_ov1_020c0b48
FUN_ov1_020c0b48: ; 0x020C0B48
	stmfd sp!, {r4, r5, r6, lr}
	mov r4, r0
	ldr r0, [r4, #4]
	ldr r5, _020C0CB0 ; =0x020A0640
	bl FUN_0204201c
	cmp r0, #0x3c
	ldmeqfd sp!, {r4, r5, r6, pc}
	ldrb r0, [r5, #0x8f]
	cmp r0, #2
	movls r0, #1
	bls _020C0BD4
	cmp r0, #3
	blo _020C0B88
	cmp r0, #5
	movls r0, #2
	bls _020C0BD4
_020C0B88:
	ldrb r0, [r5, #0x8f]
	cmp r0, #6
	blo _020C0BA0
	cmp r0, #8
	movls r0, #3
	bls _020C0BD4
_020C0BA0:
	ldrb r0, [r5, #0x8f]
	cmp r0, #9
	blo _020C0BB8
	cmp r0, #0xb
	movls r0, #4
	bls _020C0BD4
_020C0BB8:
	ldrb r0, [r5, #0x8f]
	cmp r0, #0xc
	blo _020C0BD0
	cmp r0, #0xe
	movls r0, #5
	bls _020C0BD4
_020C0BD0:
	mvn r0, #0
_020C0BD4:
	cmp r0, #1
	cmpne r0, #3
	bne _020C0BEC
	ldr r0, _020C0CB4 ; =0x0209AC44
	mov r1, #0x3e8
	bl FUN_0202c470
_020C0BEC:
	ldrb r0, [r5, #0x8c]
	cmp r0, #0
	beq _020C0C40
	bl FUN_ov1_020db304
	cmp r0, #0
	beq _020C0C40
	bl FUN_ov1_020db274
	cmp r0, #0
	bne _020C0C40
	bl FUN_ov1_020db2ac
	cmp r0, #0
	bne _020C0C40
	ldr r6, _020C0CB4 ; =0x0209AC44
	mov r5, #0xfa
	mov r0, r6
	mov r2, r5
	mov r1, #0
	bl FUN_0202d774
	mov r0, r6
	mov r1, r5
	bl FUN_0202c470
_020C0C40:
	ldr r0, _020C0CB8 ; =0x0209BA20
	bl FUN_020731a4
	cmp r0, #0
	beq _020C0C7C
	bl FUN_ov16_020f081c
	ldr r2, _020C0CBC ; =0x02099EF0
	mov r1, r0
	ldr r0, [r2]
	mov r2, #1
	bl FUN_ov132_02145a44
	cmp r0, #0
	bne _020C0C7C
	ldr r0, _020C0CB4 ; =0x0209AC44
	mov r1, #0
	bl FUN_0202d578
_020C0C7C:
	mov r0, #6
	bl FUN_ov16_020f153c
	ldr r5, [r4, #4]
	mov r4, #0x3c
	mov r0, r5
	mov r2, r4
	mov r1, #0
	bl FUN_02041eac
	mov r0, r5
	mov r2, r4
	mov r1, #1
	bl FUN_02041eac
	ldmfd sp!, {r4, r5, r6, pc}
_020C0CB0: .word 0x020A0640
_020C0CB4: .word 0x0209AC44
_020C0CB8: .word 0x0209BA20
_020C0CBC: .word 0x02099EF0
	arm_func_end FUN_ov1_020c0b48

	arm_func_start FUN_ov1_020c0cc0
FUN_ov1_020c0cc0: ; 0x020C0CC0
	stmfd sp!, {r4, lr}
	mov r4, r0
	ldr r0, [r4, #4]
	bl FUN_0204201c
	cmp r0, #0x3e
	ldmeqfd sp!, {r4, pc}
	ldr r1, _020C0D14 ; =0x020EAB04
	mov r2, #0x80000000
	str r2, [r1]
	str r2, [r1, #4]
	str r2, [r1, #8]
	mov r0, r4
	str r2, [r1, #0xc]
	ldr r1, [r0]
	ldr r1, [r1, #0x50]
	blx r1
	ldr r0, [r4, #4]
	mov r1, #0
	mov r2, #0x3e
	bl FUN_02041eac
	ldmfd sp!, {r4, pc}
_020C0D14: .word 0x020EAB04
	arm_func_end FUN_ov1_020c0cc0

	arm_func_start FUN_ov1_020c0d18
FUN_ov1_020c0d18: ; 0x020C0D18
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, lr}
	ldr r7, _020C0E40 ; =0x02099EF0
	mov r6, r0
	ldr r0, [r7]
	bl FUN_ov132_02143138
	ldr r4, _020C0E44 ; =0x0209AC44
	mov r5, #0
	ldr r3, _020C0E48 ; =0x020EAA98
	ldr r2, _020C0E4C ; =0x00000BB8
	mov r0, r4
	mov r1, r5
	strb r5, [r3]
	bl FUN_0202d774
	ldr r0, [r7]
	mov r1, r5
	bl FUN_ov132_02145190
	cmp r0, #0
	bne _020C0DAC
	mov r9, #1
	ldr r0, [r7]
	mov r1, r9
	bl FUN_ov132_02145190
	cmp r0, #0
	bne _020C0DAC
	mov r8, #0x7d0
	mov r7, #0x3e8
	mov r0, r4
	mov r1, r5
	mov r2, r8
	mov r3, r7
	bl FUN_0202c314
	mov r0, r4
	mov r1, r9
	mov r2, r8
	mov r3, r7
	bl FUN_0202c314
	b _020C0DE4
_020C0DAC:
	ldr r5, _020C0E44 ; =0x0209AC44
	mov r4, #0x7d0
	mov r7, #0x3e8
	mov r0, r5
	mov r3, r4
	mov r1, #0
	mov r2, #9
	str r7, [sp]
	bl FUN_0202c184
	mov r0, r5
	mov r2, r4
	mov r3, r7
	mov r1, #1
	bl FUN_0202c314
_020C0DE4:
	ldr r0, _020C0E50 ; =0x020A0640
	ldrb r0, [r0, #0x1a]
	cmp r0, #0
	beq _020C0E04
	ldr r0, _020C0E54 ; =0x0209AEC0
	ldrb r0, [r0, #0x64]
	cmp r0, #0
	beq _020C0E1C
_020C0E04:
	mov r0, r6
	bl FUN_ov1_020c1304
	cmp r0, #0
	bne _020C0E1C
	mov r0, r6
	bl FUN_ov1_020c0f4c
_020C0E1C:
	mov r5, #0
	ldr r4, _020C0E40 ; =0x02099EF0
	b _020C0E34
_020C0E28:
	ldr r0, [r4]
	bl FUN_ov126_02137644
	add r5, r5, #1
_020C0E34:
	cmp r5, #0x10
	blt _020C0E28
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
_020C0E40: .word 0x02099EF0
_020C0E44: .word 0x0209AC44
_020C0E48: .word 0x020EAA98
_020C0E4C: .word 0x00000BB8
_020C0E50: .word 0x020A0640
_020C0E54: .word 0x0209AEC0
	arm_func_end FUN_ov1_020c0d18

	arm_func_start FUN_ov1_020c0e58
FUN_ov1_020c0e58: ; 0x020C0E58
	stmfd sp!, {r3, r4, lr}
	sub sp, sp, #4
	ldr r1, _020C0F3C ; =0x02099EF0
	mov r4, r0
	ldr r0, [r1]
	ldr r0, [r0, #0x1c0]
	cmp r0, #3
	bne _020C0EB8
	ldr r12, [r4, #4]
	mov r2, #0
	ldr r0, _020C0F40 ; =0x020AF81C
	mov r3, r2
	mov r1, #7
	str r12, [sp]
	bl FUN_02044798
	cmp r0, #0
	beq _020C0EB8
	mov r2, #3
	mov r0, r4
	mov r1, #0x64
	str r2, [r4, #0x33c]
	bl FUN_ov1_020c05b0
	add sp, sp, #4
	ldmfd sp!, {r3, r4, pc}
_020C0EB8:
	ldr r0, _020C0F3C ; =0x02099EF0
	ldr r0, [r0]
	ldr r0, [r0, #0x1c0]
	cmp r0, #4
	bne _020C0F0C
	ldr r12, [r4, #4]
	mov r2, #0
	ldr r0, _020C0F40 ; =0x020AF81C
	ldr r1, _020C0F44 ; =0x00010008
	mov r3, r2
	str r12, [sp]
	bl FUN_02044798
	cmp r0, #0
	beq _020C0F0C
	mov r2, #4
	mov r0, r4
	mov r1, #0x64
	str r2, [r4, #0x33c]
	bl FUN_ov1_020c05b0
	add sp, sp, #4
	ldmfd sp!, {r3, r4, pc}
_020C0F0C:
	mov r0, r4
	mov r1, #0x64
	bl FUN_ov1_020bffd4
	ldr r0, _020C0F48 ; =0x020A0640
	ldrb r0, [r0, #0x1a]
	cmp r0, #0
	addne sp, sp, #4
	ldmnefd sp!, {r3, r4, pc}
	mov r0, r4
	bl FUN_ov1_020c0a98
	add sp, sp, #4
	ldmfd sp!, {r3, r4, pc}
_020C0F3C: .word 0x02099EF0
_020C0F40: .word 0x020AF81C
_020C0F44: .word 0x00010008
_020C0F48: .word 0x020A0640
	arm_func_end FUN_ov1_020c0e58

	arm_func_start FUN_ov1_020c0f4c
FUN_ov1_020c0f4c: ; 0x020C0F4C
	stmfd sp!, {r3, r4, r5, lr}
	mov r4, r0
	ldr r5, [r4, #4]
	mov r2, #0
	ldr r0, _020C1098 ; =0x020AF81C
	mov r3, r2
	mov r1, #6
	str r5, [sp]
	bl FUN_02044798
	cmp r0, #0
	beq _020C1000
	mov r0, #1
	str r0, [r4, #0x33c]
	bl FUN_ov1_020db338
	cmp r0, #0
	beq _020C0FF0
	ldr r5, _020C109C ; =0x02099EF0
	ldr r0, [r5]
	bl FUN_ov132_021458e4
	cmp r0, #0
	beq _020C0FE0
	ldr r0, [r5]
	bl FUN_ov132_02143c40
	ldr r0, [r5]
	mov r1, #0xc
	bl FUN_ov132_021447d0
	ldr r0, _020C10A0 ; =0x020A0640
	ldrb r0, [r0, #0x1a]
	cmp r0, #0
	mov r0, r4
	beq _020C0FD4
	mov r1, #0x2a
	bl FUN_ov1_020c05b0
	ldmfd sp!, {r3, r4, r5, pc}
_020C0FD4:
	mov r1, #0x2b
	bl FUN_ov1_020c05b0
	ldmfd sp!, {r3, r4, r5, pc}
_020C0FE0:
	mov r0, r4
	mov r1, #0x1b
	bl FUN_ov1_020c05b0
	ldmfd sp!, {r3, r4, r5, pc}
_020C0FF0:
	mov r0, r4
	mov r1, #0x64
	bl FUN_ov1_020c05b0
	ldmfd sp!, {r3, r4, r5, pc}
_020C1000:
	bl FUN_ov1_020db338
	cmp r0, #0
	beq _020C1070
	ldr r5, _020C109C ; =0x02099EF0
	ldr r0, [r5]
	bl FUN_ov132_021458e4
	cmp r0, #0
	beq _020C1060
	ldr r0, [r5]
	bl FUN_ov132_02143c40
	ldr r0, [r5]
	mov r1, #0xc
	bl FUN_ov132_021447d0
	ldr r0, _020C10A0 ; =0x020A0640
	ldrb r0, [r0, #0x1a]
	cmp r0, #0
	mov r0, r4
	beq _020C1054
	mov r1, #0x2a
	bl FUN_ov1_020bffd4
	ldmfd sp!, {r3, r4, r5, pc}
_020C1054:
	mov r1, #0x2b
	bl FUN_ov1_020bffd4
	ldmfd sp!, {r3, r4, r5, pc}
_020C1060:
	mov r0, r4
	mov r1, #0x1b
	bl FUN_ov1_020bffd4
	ldmfd sp!, {r3, r4, r5, pc}
_020C1070:
	mov r0, r4
	mov r1, #0x64
	bl FUN_ov1_020bffd4
	ldr r0, _020C10A0 ; =0x020A0640
	ldrb r0, [r0, #0x1a]
	cmp r0, #0
	ldmnefd sp!, {r3, r4, r5, pc}
	mov r0, r4
	bl FUN_ov1_020c0a98
	ldmfd sp!, {r3, r4, r5, pc}
_020C1098: .word 0x020AF81C
_020C109C: .word 0x02099EF0
_020C10A0: .word 0x020A0640
	arm_func_end FUN_ov1_020c0f4c

	arm_func_start FUN_ov1_020c10a4
FUN_ov1_020c10a4: ; 0x020C10A4
	stmfd sp!, {r3, r4, r5, r6, lr}
	sub sp, sp, #4
	ldr r5, _020C11D4 ; =0x02099EF0
	mov r4, r0
	mov r6, #0
	ldr r0, [r5]
	mov r1, r6
	bl FUN_ov132_021447d0
	ldr r1, _020C11D8 ; =0x0209A2C0
	ldr r0, [r5]
	ldrb r1, [r1, #0x59]
	bl FUN_ov126_0212d4b4
	cmp r0, #0
	beq _020C1144
	ldr r12, [r4, #4]
	ldr r0, _020C11DC ; =0x020AF81C
	mov r2, r6
	mov r3, r6
	mov r1, #7
	str r12, [sp]
	bl FUN_02044798
	cmp r0, #0
	beq _020C1144
	mov r0, #2
	str r0, [r4, #0x33c]
	bl FUN_ov1_020db338
	cmp r0, #0
	beq _020C1130
	ldr r0, [r5]
	bl FUN_ov132_02143c40
	mov r0, r4
	mov r1, #0x1b
	bl FUN_ov1_020c05b0
	add sp, sp, #4
	ldmfd sp!, {r3, r4, r5, r6, pc}
_020C1130:
	mov r0, r4
	mov r1, #4
	bl FUN_ov1_020c05b0
	add sp, sp, #4
	ldmfd sp!, {r3, r4, r5, r6, pc}
_020C1144:
	bl FUN_ov1_020db338
	cmp r0, #0
	beq _020C11C0
	ldr r5, _020C11D4 ; =0x02099EF0
	ldr r0, [r5]
	bl FUN_ov132_02143c40
	ldr r0, [r5]
	bl FUN_ov132_021458e4
	cmp r0, #0
	beq _020C11AC
	ldr r0, [r5]
	mov r1, #0xc
	bl FUN_ov132_021447d0
	ldr r0, _020C11E0 ; =0x020A0640
	ldrb r0, [r0, #0x1a]
	cmp r0, #0
	mov r0, r4
	beq _020C119C
	mov r1, #0x2a
	bl FUN_ov1_020c05b0
	add sp, sp, #4
	ldmfd sp!, {r3, r4, r5, r6, pc}
_020C119C:
	mov r1, #0x2b
	bl FUN_ov1_020c05b0
	add sp, sp, #4
	ldmfd sp!, {r3, r4, r5, r6, pc}
_020C11AC:
	mov r0, r4
	mov r1, #0x1b
	bl FUN_ov1_020c05b0
	add sp, sp, #4
	ldmfd sp!, {r3, r4, r5, r6, pc}
_020C11C0:
	mov r0, r4
	mov r1, #4
	bl FUN_ov1_020bffd4
	add sp, sp, #4
	ldmfd sp!, {r3, r4, r5, r6, pc}
_020C11D4: .word 0x02099EF0
_020C11D8: .word 0x0209A2C0
_020C11DC: .word 0x020AF81C
_020C11E0: .word 0x020A0640
	arm_func_end FUN_ov1_020c10a4

	arm_func_start FUN_ov1_020c11e4
FUN_ov1_020c11e4: ; 0x020C11E4
	ldr r1, [r0, #8]
	cmp r1, #0x13
	bgt _020C1224
	bge _020C1290
	cmp r1, #4
	bgt _020C1204
	beq _020C12FC
	b _020C12F4
_020C1204:
	cmp r1, #0xd
	bgt _020C12F4
	cmp r1, #0xb
	blt _020C12F4
	beq _020C1248
	cmp r1, #0xd
	beq _020C1268
	b _020C12F4
_020C1224:
	cmp r1, #0x1a
	bgt _020C123C
	bge _020C12B0
	cmp r1, #0x17
	beq _020C12D4
	b _020C12F4
_020C123C:
	cmp r1, #0x23
	beq _020C12FC
	b _020C12F4
_020C1248:
	ldr r0, [r0, #0xc]
	cmp r0, #0xb
	cmpne r0, #0xc
	cmpne r0, #0xd
	cmpne r0, #0xe
	beq _020C12FC
	mov r0, #0
	bx lr
_020C1268:
	ldr r0, [r0, #0xc]
	cmp r0, #0x20
	cmpne r0, #0x21
	cmpne r0, #0x23
	cmpne r0, #0x24
	cmpne r0, #0x25
	cmpne r0, #0x26
	beq _020C12FC
	mov r0, #0
	bx lr
_020C1290:
	ldr r0, [r0, #0xc]
	cmp r0, #0x3a
	cmpne r0, #0x3b
	cmpne r0, #0x3c
	cmpne r0, #0x3d
	beq _020C12FC
	mov r0, #0
	bx lr
_020C12B0:
	ldr r0, [r0, #0xc]
	cmp r0, #0x4e
	cmpne r0, #0x4f
	cmpne r0, #0x50
	cmpne r0, #0x51
	cmpne r0, #0x52
	beq _020C12FC
	mov r0, #0
	bx lr
_020C12D4:
	ldr r0, [r0, #0xc]
	cmp r0, #0x49
	cmpne r0, #0x48
	cmpne r0, #0x4a
	cmpne r0, #0x4b
	beq _020C12FC
	mov r0, #0
	bx lr
_020C12F4:
	mov r0, #0
	bx lr
_020C12FC:
	mov r0, #1
	bx lr
	arm_func_end FUN_ov1_020c11e4

	arm_func_start FUN_ov1_020c1304
FUN_ov1_020c1304: ; 0x020C1304
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, lr}
	mov r6, r0
	mov r5, #0
	ldr r8, _020C14D0 ; =0x02099EF0
	strb r5, [r6, #0x344]
	strb r5, [r6, #0x345]
	ldr r0, [r8]
	mov r4, #1
	bl FUN_ov132_021434f8
	cmp r0, #0
	movne r0, r5
	ldmnefd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
	bl FUN_ov16_020f1810
	cmp r0, #0
	movne r0, r5
	ldmnefd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
	mov r0, r6
	bl FUN_ov1_020c11e4
	cmp r0, #0
	moveq r0, r5
	ldmeqfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
	ldr r7, _020C14D4 ; =0x020A0640
	ldrb r0, [r7, #0x1a]
	cmp r0, #0
	beq _020C1418
	bl FUN_ov16_020f081c
	ldr r7, _020C14D8 ; =0x0209AEC0
	mov r9, r0
	mov r0, r7
	bl FUN_02046730
	mov r1, r0
	and r2, r1, #0xff
	ldr r0, [r8]
	mov r1, r9
	bl FUN_ov132_02144eac
	cmp r0, #0
	beq _020C13B8
	mov r0, r6
	mov r2, r9
	mov r3, r5
	mov r1, #0xd
	str r5, [sp]
	bl FUN_ov1_020c3a24
	mov r0, r4
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
_020C13B8:
	ldrb r0, [r7, #0x64]
	cmp r0, #0
	beq _020C1410
	bl FUN_ov16_020f083c
	bl FUN_ov16_020f0a30
	cmp r0, #0
	beq _020C1410
	bl FUN_ov16_020f083c
	mov r1, r0
	ldr r0, [r8]
	bl FUN_ov132_02144d30
	cmp r0, #0
	beq _020C1410
	bl FUN_ov16_020f083c
	mov r2, r0
	mov r0, r6
	mov r3, r4
	mov r1, #0xd
	str r5, [sp]
	bl FUN_ov1_020c3a24
	mov r0, r4
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
_020C1410:
	mov r0, #0
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
_020C1418:
	ldr r0, [r8]
	mov r1, r5
	bl FUN_ov132_02144d30
	cmp r0, #0
	beq _020C1460
	ldr r0, [r6, #8]
	str r5, [r6, #0x2bc]
	str r0, [r6, #0x2b8]
	ldrb r0, [r7, #0x1a]
	cmp r0, #0
	mov r0, r6
	beq _020C1450
	mov r1, #0x1e
	b _020C1454
_020C1450:
	mov r1, #0x1f
_020C1454:
	bl FUN_ov1_020bffd4
	mov r0, #1
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
_020C1460:
	ldr r0, [r8]
	mov r1, r4
	bl FUN_ov132_02144d30
	cmp r0, #0
	beq _020C14C8
	mov r0, r4
	bl FUN_ov16_020f0a30
	cmp r0, #0
	ldrne r0, [r6, #8]
	cmpne r0, #4
	movne r0, r5
	ldmnefd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
	ldr r1, [r6, #8]
	ldr r0, _020C14D4 ; =0x020A0640
	str r1, [r6, #0x2b8]
	str r4, [r6, #0x2bc]
	ldrb r0, [r0, #0x1a]
	cmp r0, #0
	mov r0, r6
	beq _020C14B8
	mov r1, #0x1e
	b _020C14BC
_020C14B8:
	mov r1, #0x1f
_020C14BC:
	bl FUN_ov1_020bffd4
	mov r0, #1
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
_020C14C8:
	mov r0, r5
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
_020C14D0: .word 0x02099EF0
_020C14D4: .word 0x020A0640
_020C14D8: .word 0x0209AEC0
	arm_func_end FUN_ov1_020c1304

	arm_func_start FUN_ov1_020c14dc
FUN_ov1_020c14dc: ; 0x020C14DC
	stmfd sp!, {r3, r4, r5, lr}
	mov r4, r0
	ldrb r1, [r4, #0x344]
	mov r5, #0
	cmp r1, #0
	beq _020C1500
	bl FUN_ov1_020c0f4c
	strb r5, [r4, #0x344]
	ldmfd sp!, {r3, r4, r5, pc}
_020C1500:
	ldr r1, [r4, #0x2b8]
	cmp r1, #0x1a
	bgt _020C1558
	cmp r1, #0x15
	blt _020C1524
	cmpne r1, #0x17
	cmpne r1, #0x1a
	beq _020C15D0
	b _020C15E0
_020C1524:
	cmp r1, #0xd
	bgt _020C154C
	cmp r1, #0xb
	blt _020C1540
	cmpne r1, #0xd
	beq _020C15D0
	b _020C15E0
_020C1540:
	cmp r1, #5
	beq _020C15AC
	b _020C15E0
_020C154C:
	cmp r1, #0x13
	beq _020C15D0
	b _020C15E0
_020C1558:
	cmp r1, #0x3d
	bgt _020C1570
	bge _020C15C4
	cmp r1, #0x23
	beq _020C158C
	b _020C15E0
_020C1570:
	cmp r1, #0x3e
	bgt _020C1580
	beq _020C15C4
	b _020C15E0
_020C1580:
	cmp r1, #0x47
	beq _020C1594
	b _020C15E0
_020C158C:
	bl FUN_ov1_020c0e58
	ldmfd sp!, {r3, r4, r5, pc}
_020C1594:
	ldrb r1, [r4, #0x345]
	cmp r1, #0
	ldmeqfd sp!, {r3, r4, r5, pc}
	bl FUN_ov1_020c10a4
	strb r5, [r4, #0x345]
	ldmfd sp!, {r3, r4, r5, pc}
_020C15AC:
	ldrb r1, [r4, #0x345]
	cmp r1, #0
	ldmeqfd sp!, {r3, r4, r5, pc}
	bl FUN_ov1_020c10a4
	strb r5, [r4, #0x345]
	ldmfd sp!, {r3, r4, r5, pc}
_020C15C4:
	mov r0, r4
	bl FUN_ov1_020c0f4c
	ldmfd sp!, {r3, r4, r5, pc}
_020C15D0:
	ldr r1, [r4, #0x2b8]
	mov r0, r4
	bl FUN_ov1_020bffd4
	ldmfd sp!, {r3, r4, r5, pc}
_020C15E0:
	ldr r5, _020C1658 ; =0x02099EF0
	ldr r0, [r5]
	bl FUN_ov132_021447c8
	cmp r0, #0xd
	bne _020C1638
	ldr r0, [r4, #4]
	mov r2, #0
	str r0, [sp]
	ldr r1, [r5]
	ldr r0, _020C165C ; =0x020AF81C
	ldr r1, [r1, #0x1bc]
	mov r3, r2
	bl FUN_02044798
	cmp r0, #0
	beq _020C1638
	ldr r1, [r5]
	mov r0, r4
	ldr r2, [r1, #0x1c0]
	mov r1, #4
	str r2, [r4, #0x33c]
	bl FUN_ov1_020c05b0
	b _020C1644
_020C1638:
	mov r0, r4
	mov r1, #4
	bl FUN_ov1_020bffd4
_020C1644:
	ldr r0, _020C1658 ; =0x02099EF0
	mov r1, #0
	ldr r0, [r0]
	bl FUN_ov132_021447d0
	ldmfd sp!, {r3, r4, r5, pc}
_020C1658: .word 0x02099EF0
_020C165C: .word 0x020AF81C
	arm_func_end FUN_ov1_020c14dc

	arm_func_start FUN_ov1_020c1660
FUN_ov1_020c1660: ; 0x020C1660
	stmfd sp!, {r3, r4, r5, lr}
	ldr r1, _020C1758 ; =0x0209A2C0
	mov r4, r0
	ldrb r0, [r1, #0x5c]
	cmp r0, #0
	movne r0, #1
	moveq r0, #0
	cmp r0, #0
	movne r0, #0
	ldmnefd sp!, {r3, r4, r5, pc}
	ldr r0, _020C175C ; =0x020E9485
	ldrb r0, [r0]
	cmp r0, #0
	beq _020C16EC
	ldr r0, _020C1760 ; =0x02099EF0
	mov r5, #0
	ldr r0, [r0]
	mov r1, r5
	bl FUN_ov132_02144f90
	cmp r0, #0
	bgt _020C16EC
	ldr r1, [r4, #8]
	ldr r0, _020C1764 ; =0x020A0640
	str r1, [r4, #0x2b8]
	str r5, [r4, #0x2bc]
	ldrb r0, [r0, #0x1a]
	cmp r0, #0
	mov r0, r4
	beq _020C16DC
	mov r1, #0x20
	b _020C16E0
_020C16DC:
	mov r1, #0x21
_020C16E0:
	bl FUN_ov1_020bffd4
	mov r0, #1
	ldmfd sp!, {r3, r4, r5, pc}
_020C16EC:
	ldr r0, _020C175C ; =0x020E9485
	ldrb r0, [r0, #1]
	cmp r0, #0
	beq _020C1750
	ldr r0, _020C1760 ; =0x02099EF0
	mov r5, #1
	ldr r0, [r0]
	mov r1, r5
	bl FUN_ov132_02144f90
	cmp r0, #0
	bgt _020C1750
	ldr r1, [r4, #8]
	ldr r0, _020C1764 ; =0x020A0640
	str r1, [r4, #0x2b8]
	str r5, [r4, #0x2bc]
	ldrb r0, [r0, #0x1a]
	cmp r0, #0
	mov r0, r4
	beq _020C1740
	mov r1, #0x20
	b _020C1744
_020C1740:
	mov r1, #0x21
_020C1744:
	bl FUN_ov1_020bffd4
	mov r0, #1
	ldmfd sp!, {r3, r4, r5, pc}
_020C1750:
	mov r0, #0
	ldmfd sp!, {r3, r4, r5, pc}
_020C1758: .word 0x0209A2C0
_020C175C: .word 0x020E9485
_020C1760: .word 0x02099EF0
_020C1764: .word 0x020A0640
	arm_func_end FUN_ov1_020c1660

	arm_func_start FUN_ov1_020c1768
FUN_ov1_020c1768: ; 0x020C1768
	ldr r1, [r0, #0x2b8]
	ldr r12, _020C1774 ; =FUN_ov1_020bffd4
	bx r12
_020C1774: .word FUN_ov1_020bffd4
	arm_func_end FUN_ov1_020c1768

	arm_func_start FUN_ov1_020c1778
FUN_ov1_020c1778: ; 0x020C1778
	stmfd sp!, {r3, r4, r5, lr}
	ldr r1, [r0]
	mov r4, r0
	ldr r1, [r1, #0x58]
	blx r1
	cmp r0, #0
	ldmnefd sp!, {r3, r4, r5, pc}
	ldr r0, [r4, #8]
	cmp r0, #4
	bne _020C17E0
	ldr r0, [r4, #0x50]
	cmp r0, #0
	ble _020C17E0
	sub r0, r0, #1
	str r0, [r4, #0x50]
	cmp r0, #0
	bgt _020C17E0
	bl FUN_ov16_020f081c
	ldr r1, _020C1874 ; =0x020EAB04
	ldr r0, [r1, r0, lsl #3]
	cmp r0, #0x80000000
	ble _020C17E0
	bl FUN_ov16_020f081c
	mov r1, r0
	mov r0, r4
	bl FUN_ov1_020ce99c
_020C17E0:
	ldr r0, [r4, #0x4c]
	ldr r5, _020C1878 ; =0x020EAA9D
	cmp r0, #0
	subgt r0, r0, #1
	strgt r0, [r4, #0x4c]
	ldrb r0, [r5]
	cmp r0, #0
	bne _020C1830
	ldrb r0, [r4, #0x21]
	cmp r0, #0
	beq _020C1830
	mov r0, r4
	bl FUN_ov1_020c1910
	cmp r0, #0
	bne _020C1830
	ldr r0, _020C187C ; =0x0209AC44
	mov r2, #1
	mov r1, #7
	strb r2, [r5]
	bl FUN_0202cf6c
_020C1830:
	ldr r5, _020C1880 ; =0x020EAA9C
	ldrb r0, [r5]
	cmp r0, #0
	ldmnefd sp!, {r3, r4, r5, pc}
	ldrb r0, [r4, #0x23]
	cmp r0, #0
	ldmeqfd sp!, {r3, r4, r5, pc}
	mov r0, r4
	bl FUN_ov1_020c1988
	cmp r0, #0
	ldmnefd sp!, {r3, r4, r5, pc}
	ldr r0, _020C187C ; =0x0209AC44
	mov r2, #1
	mov r1, #7
	strb r2, [r5]
	bl FUN_0202cf6c
	ldmfd sp!, {r3, r4, r5, pc}
_020C1874: .word 0x020EAB04
_020C1878: .word 0x020EAA9D
_020C187C: .word 0x0209AC44
_020C1880: .word 0x020EAA9C
	arm_func_end FUN_ov1_020c1778

	arm_func_start FUN_ov1_020c1884
FUN_ov1_020c1884: ; 0x020C1884
	stmfd sp!, {r3, lr}
	ldr r1, [r0, #8]
	cmp r1, #4
	ldmnefd sp!, {r3, pc}
	ldr r1, _020C1904 ; =0x020A0640
	ldrb r1, [r1, #0x8f]
	cmp r1, #0xc
	blo _020C18AC
	cmp r1, #0xe
	ldmlsfd sp!, {r3, pc}
_020C18AC:
	ldr r1, [r0]
	ldr r1, [r1, #0x58]
	blx r1
	cmp r0, #0
	ldmnefd sp!, {r3, pc}
	ldr r0, _020C1908 ; =0x02099EF0
	mov r1, #0
	ldr r0, [r0]
	bl FUN_01ff96c0
	ldr r0, _020C1904 ; =0x020A0640
	ldrb r0, [r0, #0x1a]
	cmp r0, #0
	beq _020C18F0
	ldr r0, _020C190C ; =0x0209AEC0
	ldrb r0, [r0, #0x64]
	cmp r0, #0
	ldmeqfd sp!, {r3, pc}
_020C18F0:
	ldr r0, _020C1908 ; =0x02099EF0
	mov r1, #0
	ldr r0, [r0]
	bl FUN_01ff95b0
	ldmfd sp!, {r3, pc}
_020C1904: .word 0x020A0640
_020C1908: .word 0x02099EF0
_020C190C: .word 0x0209AEC0
	arm_func_end FUN_ov1_020c1884

	arm_func_start FUN_ov1_020c1910
FUN_ov1_020c1910: ; 0x020C1910
	stmfd sp!, {r3, lr}
	ldr r0, _020C197C ; =0x020EAAA4
	ldr r12, [r0]
	cmp r12, #0
	blt _020C1974
	ldr r0, _020C1980 ; =0x0209C120
	ldr r1, _020C1984 ; =0x02099EF0
	ldrh r3, [r0, #0xc0]
	mov r0, #0x1e
	ldr r2, [r1]
	mul r1, r3, r0
	mov r0, #0xa
	mla r0, r1, r0, r12
	ldr r2, [r2, #0x5c0]
	cmp r2, r0
	bge _020C1974
	sub r0, r0, r2
	add r0, r1, r0
	sub r0, r0, #1
	bl FUN_0201f9bc
	cmp r0, #0
	movlt r0, #0
	cmp r0, #0xa
	movgt r0, #0xa
	ldmfd sp!, {r3, pc}
_020C1974:
	mov r0, #0
	ldmfd sp!, {r3, pc}
_020C197C: .word 0x020EAAA4
_020C1980: .word 0x0209C120
_020C1984: .word 0x02099EF0
	arm_func_end FUN_ov1_020c1910

	arm_func_start FUN_ov1_020c1988
FUN_ov1_020c1988: ; 0x020C1988
	stmfd sp!, {r3, lr}
	ldr r0, _020C19F4 ; =0x020EAAA0
	ldr r12, [r0]
	cmp r12, #0
	blt _020C19EC
	ldr r0, _020C19F8 ; =0x0209C120
	ldr r1, _020C19FC ; =0x02099EF0
	ldrh r3, [r0, #0xc0]
	mov r0, #0x1e
	ldr r2, [r1]
	mul r1, r3, r0
	mov r0, #0xa
	mla r0, r1, r0, r12
	ldr r2, [r2, #0x5c0]
	cmp r2, r0
	bge _020C19EC
	sub r0, r0, r2
	add r0, r1, r0
	sub r0, r0, #1
	bl FUN_0201f9bc
	cmp r0, #0
	movlt r0, #0
	cmp r0, #0xa
	movgt r0, #0xa
	ldmfd sp!, {r3, pc}
_020C19EC:
	mov r0, #0
	ldmfd sp!, {r3, pc}
_020C19F4: .word 0x020EAAA0
_020C19F8: .word 0x0209C120
_020C19FC: .word 0x02099EF0
	arm_func_end FUN_ov1_020c1988

	arm_func_start FUN_ov1_020c1a00
FUN_ov1_020c1a00: ; 0x020C1A00
	stmfd sp!, {r3, r4, r5, lr}
	mov r4, r0
	ldr r1, [r4, #8]
	cmp r1, #0x23
	bgt _020C1A24
	bge _020C1AFC
	cmp r1, #4
	beq _020C1A4C
	ldmfd sp!, {r3, r4, r5, pc}
_020C1A24:
	cmp r1, #0x2b
	bgt _020C1A40
	cmp r1, #0x29
	ldmltfd sp!, {r3, r4, r5, pc}
	cmpne r1, #0x2b
	beq _020C1B74
	ldmfd sp!, {r3, r4, r5, pc}
_020C1A40:
	cmp r1, #0x3c
	beq _020C1AA0
	ldmfd sp!, {r3, r4, r5, pc}
_020C1A4C:
	bl FUN_ov1_020cc010
	cmp r0, #0
	beq _020C1A64
	ldr r0, _020C1BE4 ; =0x02099EF0
	mov r1, #2
	b _020C1A6C
_020C1A64:
	ldr r0, _020C1BE4 ; =0x02099EF0
	mov r1, #0
_020C1A6C:
	ldr r0, [r0]
	bl FUN_ov132_02148ba4
	mov r0, r4
	bl FUN_ov1_020c1660
	ldr r0, _020C1BE8 ; =0x020A0640
	ldrb r0, [r0, #0x1a]
	cmp r0, #0
	beq _020C1A94
	mov r0, r4
	bl FUN_ov1_020c1304
_020C1A94:
	mov r0, r4
	bl FUN_ov1_020d7ce4
	ldmfd sp!, {r3, r4, r5, pc}
_020C1AA0:
	ldr r0, _020C1BE8 ; =0x020A0640
	ldrb r0, [r0, #0x1a]
	cmp r0, #0
	beq _020C1AC0
	ldr r0, _020C1BEC ; =0x0209AEC0
	ldrb r0, [r0, #0x64]
	cmp r0, #0
	ldmeqfd sp!, {r3, r4, r5, pc}
_020C1AC0:
	ldr r0, _020C1BE4 ; =0x02099EF0
	ldr r0, [r0]
	bl FUN_ov132_021434f8
	cmp r0, #0
	ldmnefd sp!, {r3, r4, r5, pc}
	ldr r0, [r4, #0x340]
	cmp r0, #0
	mov r0, r4
	bne _020C1AF0
	mov r1, #0x3d
	bl FUN_ov1_020bffd4
	ldmfd sp!, {r3, r4, r5, pc}
_020C1AF0:
	mov r1, #4
	bl FUN_ov1_020bffd4
	ldmfd sp!, {r3, r4, r5, pc}
_020C1AFC:
	ldr r0, [r4, #0x14]
	cmp r0, #0
	ldmlefd sp!, {r3, r4, r5, pc}
	sub r0, r0, #1
	str r0, [r4, #0x14]
	cmp r0, #0
	ldmgtfd sp!, {r3, r4, r5, pc}
	ldr r0, _020C1BE4 ; =0x02099EF0
	ldr r0, [r0]
	bl FUN_ov132_0214538c
	cmp r0, #0
	ble _020C1B38
	mov r0, r4
	bl FUN_ov1_020c0e58
	ldmfd sp!, {r3, r4, r5, pc}
_020C1B38:
	ldr r0, _020C1BE8 ; =0x020A0640
	ldrb r0, [r0, #0x1a]
	cmp r0, #0
	beq _020C1B58
	ldr r0, _020C1BEC ; =0x0209AEC0
	ldrb r0, [r0, #0x64]
	cmp r0, #0
	ldmeqfd sp!, {r3, r4, r5, pc}
_020C1B58:
	mov r0, r4
	bl FUN_ov1_020c1304
	cmp r0, #0
	ldmnefd sp!, {r3, r4, r5, pc}
	mov r0, r4
	bl FUN_ov1_020c0e58
	ldmfd sp!, {r3, r4, r5, pc}
_020C1B74:
	ldr r0, [r4, #0x14]
	cmp r0, #0
	ldmlefd sp!, {r3, r4, r5, pc}
	sub r0, r0, #1
	str r0, [r4, #0x14]
	cmp r0, #0
	ldmgtfd sp!, {r3, r4, r5, pc}
	mov r5, #0
	ldr r0, _020C1BF0 ; =0x0209F5C0
	mov r1, r5
	bl FUN_ov16_020f5af0
	ldr r12, [r4, #4]
	ldr r0, _020C1BF4 ; =0x020AF81C
	mov r2, r5
	mov r3, r5
	mov r1, #4
	str r12, [sp]
	bl FUN_02044798
	cmp r0, #0
	mov r0, r4
	mov r1, #0x65
	beq _020C1BD4
	bl FUN_ov1_020c05b0
	ldmfd sp!, {r3, r4, r5, pc}
_020C1BD4:
	bl FUN_ov1_020bffd4
	mov r0, r4
	bl FUN_ov1_020c0b48
	ldmfd sp!, {r3, r4, r5, pc}
_020C1BE4: .word 0x02099EF0
_020C1BE8: .word 0x020A0640
_020C1BEC: .word 0x0209AEC0
_020C1BF0: .word 0x0209F5C0
_020C1BF4: .word 0x020AF81C
	arm_func_end FUN_ov1_020c1a00

	arm_func_start FUN_ov1_020c1bf8
FUN_ov1_020c1bf8: ; 0x020C1BF8
	stmfd sp!, {r4, lr}
	mov r4, r0
	ldr r1, [r4, #0xc]
	sub r1, r1, #0xa
	cmp r1, #6
	addls pc, pc, r1, lsl #2
	ldmfd sp!, {r4, pc}
_020C1C14: ; jump table
	b _020C1C30 ; case 0
	b _020C1D04 ; case 1
	b _020C1D28 ; case 2
	b _020C1D28 ; case 3
	b _020C1D28 ; case 4
	b _020C1D48 ; case 5
	b _020C1D88 ; case 6
_020C1C30:
	add r0, r4, #0x348
	mov r1, #0x4f
	bl FUN_ov16_020f330c
	cmp r0, #0
	ldmeqfd sp!, {r4, pc}
	mov r0, r4
	ldr r1, [r0]
	ldr r1, [r1, #0x58]
	blx r1
	cmp r0, #0
	ldmnefd sp!, {r4, pc}
	mov r0, r4
	mov r1, #0xb
	bl FUN_ov1_020d51e0
	ldr r0, _020C1DA8 ; =0x0209AEC0
	ldrb r0, [r0, #0x64]
	cmp r0, #0
	ldrne r0, _020C1DAC ; =0x020A0640
	ldrneb r0, [r0, #0x1a]
	cmpne r0, #0
	beq _020C1CAC
	mov r0, #0
	bl FUN_ov16_020f0a30
	cmp r0, #0
	bne _020C1CA4
	mov r0, #1
	bl FUN_ov16_020f0a30
	cmp r0, #0
	beq _020C1CAC
_020C1CA4:
	mov r0, r4
	bl FUN_ov1_020d6e3c
_020C1CAC:
	ldr r0, _020C1DAC ; =0x020A0640
	ldrb r0, [r0, #0x1a]
	cmp r0, #0
	beq _020C1CE4
	ldr r0, _020C1DB0 ; =0x020EAAC8
	ldr r0, [r0]
	bl FUN_ov16_020f077c
	cmp r0, #0
	bne _020C1CE4
	ldr r0, _020C1DB4 ; =0x020EAAE4
	ldr r0, [r0]
	bl FUN_ov16_020f077c
	cmp r0, #0
	beq _020C1CF4
_020C1CE4:
	mov r0, r4
	mov r1, #0xb
	bl FUN_ov1_020bf9f4
	ldmfd sp!, {r4, pc}
_020C1CF4:
	mov r0, r4
	mov r1, #0xe
	bl FUN_ov1_020bf9f4
	ldmfd sp!, {r4, pc}
_020C1D04:
	ldr r0, _020C1DB8 ; =0x0209F5C0
	mov r1, #0
	bl FUN_ov16_020f6678
	cmp r0, #0
	ldmnefd sp!, {r4, pc}
	mov r0, r4
	mov r1, #0xc
	bl FUN_ov1_020bf9f4
	ldmfd sp!, {r4, pc}
_020C1D28:
	ldr r1, [r0]
	ldr r1, [r1, #0x58]
	blx r1
	cmp r0, #0
	ldmnefd sp!, {r4, pc}
	mov r0, r4
	bl FUN_ov1_020d6fa4
	ldmfd sp!, {r4, pc}
_020C1D48:
	ldr r1, [r0]
	ldr r1, [r1, #0x58]
	blx r1
	cmp r0, #0
	ldmnefd sp!, {r4, pc}
	ldr r0, _020C1DBC ; =0x02099F14
	ldr r0, [r0]
	bl FUN_ov1_020e4e10
	cmp r0, #0
	ldmeqfd sp!, {r4, pc}
	mov r0, r4
	bl FUN_ov1_020d587c
	mov r0, r4
	mov r1, #0x10
	bl FUN_ov1_020bf9f4
	ldmfd sp!, {r4, pc}
_020C1D88:
	mov r1, #0
	bl FUN_ov1_020d497c
	ldrb r0, [r4, #0x1f]
	cmp r0, #0
	ldmnefd sp!, {r4, pc}
	mov r0, r4
	bl FUN_ov1_020d6e90
	ldmfd sp!, {r4, pc}
_020C1DA8: .word 0x0209AEC0
_020C1DAC: .word 0x020A0640
_020C1DB0: .word 0x020EAAC8
_020C1DB4: .word 0x020EAAE4
_020C1DB8: .word 0x0209F5C0
_020C1DBC: .word 0x02099F14
	arm_func_end FUN_ov1_020c1bf8

	arm_func_start FUN_ov1_020c1dc0
FUN_ov1_020c1dc0: ; 0x020C1DC0
	stmfd sp!, {r3, r4, r5, lr}
	mov r4, r0
	ldr r2, [r4, #0xc]
	ldr r5, _020C20B8 ; =0x020A0640
	cmp r2, #0x3a
	bgt _020C1E28
	bge _020C2088
	cmp r2, #0x38
	bgt _020C1E1C
	bge _020C1FA8
	sub r1, r2, #0x1e
	cmp r1, #8
	addls pc, pc, r1, lsl #2
	ldmfd sp!, {r3, r4, r5, pc}
_020C1DF8: ; jump table
	b _020C1E4C ; case 0
	b _020C1E58 ; case 1
	b _020C1F24 ; case 2
	b _020C1F48 ; case 3
	b _020C1F50 ; case 4
	b _020C1F84 ; case 5
	b _020C1F48 ; case 6
	b _020C1F48 ; case 7
	b _020C1F48 ; case 8
_020C1E1C:
	cmp r2, #0x39
	beq _020C1FB4
	ldmfd sp!, {r3, r4, r5, pc}
_020C1E28:
	cmp r2, #0x3c
	bgt _020C1E40
	bge _020C20AC
	cmp r2, #0x3b
	beq _020C20AC
	ldmfd sp!, {r3, r4, r5, pc}
_020C1E40:
	cmp r2, #0x3d
	beq _020C20AC
	ldmfd sp!, {r3, r4, r5, pc}
_020C1E4C:
	mov r1, #0x1f
	bl FUN_ov1_020bf9f4
	ldmfd sp!, {r3, r4, r5, pc}
_020C1E58:
	add r0, r4, #0x348
	mov r1, #0x4f
	bl FUN_ov16_020f330c
	cmp r0, #0
	ldmeqfd sp!, {r3, r4, r5, pc}
	mov r0, r4
	ldr r1, [r0]
	ldr r1, [r1, #0x58]
	blx r1
	cmp r0, #0
	ldmnefd sp!, {r3, r4, r5, pc}
	mov r0, r4
	mov r1, #0xd
	bl FUN_ov1_020d51e0
	ldr r0, _020C20BC ; =0x0209AEC0
	ldrb r0, [r0, #0x64]
	cmp r0, #0
	ldrneb r0, [r5, #0x1a]
	cmpne r0, #0
	beq _020C1ED0
	mov r0, #0
	bl FUN_ov16_020f0a30
	cmp r0, #0
	bne _020C1EC8
	mov r0, #1
	bl FUN_ov16_020f0a30
	cmp r0, #0
	beq _020C1ED0
_020C1EC8:
	mov r0, r4
	bl FUN_ov1_020d7164
_020C1ED0:
	ldrb r0, [r5, #0x1a]
	cmp r0, #0
	beq _020C1F04
	ldr r0, _020C20C0 ; =0x020EAAC8
	ldr r0, [r0]
	bl FUN_ov16_020f077c
	cmp r0, #0
	bne _020C1F04
	ldr r0, _020C20C4 ; =0x020EAAE4
	ldr r0, [r0]
	bl FUN_ov16_020f077c
	cmp r0, #0
	beq _020C1F14
_020C1F04:
	mov r0, r4
	mov r1, #0x20
	bl FUN_ov1_020bf9f4
	ldmfd sp!, {r3, r4, r5, pc}
_020C1F14:
	mov r0, r4
	mov r1, #0x26
	bl FUN_ov1_020bf9f4
	ldmfd sp!, {r3, r4, r5, pc}
_020C1F24:
	ldr r0, _020C20C8 ; =0x0209F5C0
	mov r1, #0
	bl FUN_ov16_020f6678
	cmp r0, #0
	ldmnefd sp!, {r3, r4, r5, pc}
	mov r0, r4
	mov r1, #0x21
	bl FUN_ov1_020bf9f4
	ldmfd sp!, {r3, r4, r5, pc}
_020C1F48:
	bl FUN_ov1_020d7270
	ldmfd sp!, {r3, r4, r5, pc}
_020C1F50:
	add r0, r4, #0x348
	mov r1, #0x4f
	bl FUN_ov16_020f330c
	cmp r0, #0
	ldmeqfd sp!, {r3, r4, r5, pc}
	mov r0, r4
	bl FUN_ov1_020d519c
	mov r0, r4
	bl FUN_ov1_020d5728
	mov r0, r4
	mov r1, #0x23
	bl FUN_ov1_020bf9f4
	ldmfd sp!, {r3, r4, r5, pc}
_020C1F84:
	ldr r0, _020C20C8 ; =0x0209F5C0
	mov r1, #0
	bl FUN_ov16_020f6678
	cmp r0, #0
	ldmnefd sp!, {r3, r4, r5, pc}
	mov r0, r4
	mov r1, #0x24
	bl FUN_ov1_020bf9f4
	ldmfd sp!, {r3, r4, r5, pc}
_020C1FA8:
	mov r1, #0x39
	bl FUN_ov1_020bf9f4
	ldmfd sp!, {r3, r4, r5, pc}
_020C1FB4:
	add r0, r4, #0x348
	mov r1, #0x4f
	bl FUN_ov16_020f330c
	cmp r0, #0
	ldmeqfd sp!, {r3, r4, r5, pc}
	mov r0, r4
	ldr r1, [r0]
	ldr r1, [r1, #0x58]
	blx r1
	cmp r0, #0
	ldmnefd sp!, {r3, r4, r5, pc}
	mov r0, r4
	mov r1, #0x13
	bl FUN_ov1_020d51e0
	ldrb r0, [r4, #0x2b0]
	cmp r0, #0
	ldrne r0, _020C20BC ; =0x0209AEC0
	ldrneb r0, [r0, #0x64]
	cmpne r0, #0
	ldrneb r0, [r5, #0x1a]
	cmpne r0, #0
	beq _020C2020
	mov r0, r4
	bl FUN_ov1_020d71a8
	mov r0, r4
	mov r1, #0x3c
	bl FUN_ov1_020bf9f4
_020C2020:
	ldrb r0, [r5, #0x1a]
	cmp r0, #0
	ldrneb r0, [r4, #0x2b0]
	cmpne r0, #0
	beq _020C2044
	mov r0, r4
	mov r1, #0x3c
	bl FUN_ov1_020bf9f4
	ldmfd sp!, {r3, r4, r5, pc}
_020C2044:
	ldrb r0, [r5, #0x1a]
	cmp r0, #0
	beq _020C2068
	ldr r1, _020C20CC ; =0x020EAAC0
	mov r0, r4
	ldr r1, [r1]
	bl FUN_ov1_020bf4e0
	cmp r0, #0
	beq _020C2078
_020C2068:
	mov r0, r4
	mov r1, #0x3a
	bl FUN_ov1_020bf9f4
	ldmfd sp!, {r3, r4, r5, pc}
_020C2078:
	mov r0, r4
	mov r1, #0x3d
	bl FUN_ov1_020bf9f4
	ldmfd sp!, {r3, r4, r5, pc}
_020C2088:
	ldr r0, _020C20C8 ; =0x0209F5C0
	mov r1, #0
	bl FUN_ov16_020f6678
	cmp r0, #0
	ldmnefd sp!, {r3, r4, r5, pc}
	mov r0, r4
	mov r1, #0x3b
	bl FUN_ov1_020bf9f4
	ldmfd sp!, {r3, r4, r5, pc}
_020C20AC:
	mov r0, r4
	bl FUN_ov1_020d74d4
	ldmfd sp!, {r3, r4, r5, pc}
_020C20B8: .word 0x020A0640
_020C20BC: .word 0x0209AEC0
_020C20C0: .word 0x020EAAC8
_020C20C4: .word 0x020EAAE4
_020C20C8: .word 0x0209F5C0
_020C20CC: .word 0x020EAAC0
	arm_func_end FUN_ov1_020c1dc0

	arm_func_start FUN_ov1_020c20d0
FUN_ov1_020c20d0: ; 0x020C20D0
	stmfd sp!, {r4, lr}
	mov r4, r0
	ldr r1, [r4, #0xc]
	sub r1, r1, #0x46
	cmp r1, #5
	addls pc, pc, r1, lsl #2
	ldmfd sp!, {r4, pc}
_020C20EC: ; jump table
	b _020C2104 ; case 0
	b _020C2110 ; case 1
	b _020C21D0 ; case 2
	b _020C21F4 ; case 3
	b _020C21F4 ; case 4
	b _020C21F4 ; case 5
_020C2104:
	mov r1, #0x47
	bl FUN_ov1_020bf9f4
	ldmfd sp!, {r4, pc}
_020C2110:
	add r0, r4, #0x348
	mov r1, #0x4f
	bl FUN_ov16_020f330c
	cmp r0, #0
	ldmeqfd sp!, {r4, pc}
	mov r0, r4
	ldr r1, [r0]
	ldr r1, [r1, #0x58]
	blx r1
	cmp r0, #0
	ldmnefd sp!, {r4, pc}
	mov r0, r4
	mov r1, #0x17
	bl FUN_ov1_020d51e0
	ldr r0, _020C21FC ; =0x0209AEC0
	ldrb r0, [r0, #0x64]
	cmp r0, #0
	ldrne r0, _020C2200 ; =0x020A0640
	ldrneb r0, [r0, #0x1a]
	cmpne r0, #0
	beq _020C218C
	mov r0, #0
	bl FUN_ov16_020f0a30
	cmp r0, #0
	bne _020C2184
	mov r0, #1
	bl FUN_ov16_020f0a30
	cmp r0, #0
	beq _020C218C
_020C2184:
	mov r0, r4
	bl FUN_ov1_020d722c
_020C218C:
	ldr r0, _020C2200 ; =0x020A0640
	ldrb r0, [r0, #0x1a]
	cmp r0, #0
	beq _020C21B0
	ldr r0, _020C2204 ; =0x020EAAE4
	ldr r0, [r0]
	bl FUN_ov16_020f077c
	cmp r0, #0
	beq _020C21C0
_020C21B0:
	mov r0, r4
	mov r1, #0x48
	bl FUN_ov1_020bf9f4
	ldmfd sp!, {r4, pc}
_020C21C0:
	mov r0, r4
	mov r1, #0x4b
	bl FUN_ov1_020bf9f4
	ldmfd sp!, {r4, pc}
_020C21D0:
	ldr r0, _020C2208 ; =0x0209F5C0
	mov r1, #0
	bl FUN_ov16_020f6678
	cmp r0, #0
	ldmnefd sp!, {r4, pc}
	mov r0, r4
	mov r1, #0x49
	bl FUN_ov1_020bf9f4
	ldmfd sp!, {r4, pc}
_020C21F4:
	bl FUN_ov1_020d7768
	ldmfd sp!, {r4, pc}
_020C21FC: .word 0x0209AEC0
_020C2200: .word 0x020A0640
_020C2204: .word 0x020EAAE4
_020C2208: .word 0x0209F5C0
	arm_func_end FUN_ov1_020c20d0

	arm_func_start FUN_ov1_020c220c
FUN_ov1_020c220c: ; 0x020C220C
	stmfd sp!, {r4, lr}
	mov r4, r0
	ldr r1, [r4, #0xc]
	sub r1, r1, #0x32
	cmp r1, #5
	addls pc, pc, r1, lsl #2
	ldmfd sp!, {r4, pc}
_020C2228: ; jump table
	b _020C2240 ; case 0
	b _020C22D4 ; case 1
	b _020C22F8 ; case 2
	b _020C22F8 ; case 3
	b _020C22F8 ; case 4
	b _020C2300 ; case 5
_020C2240:
	add r0, r4, #0x348
	mov r1, #0x4f
	bl FUN_ov16_020f330c
	cmp r0, #0
	ldmeqfd sp!, {r4, pc}
	mov r0, r4
	ldr r1, [r0]
	ldr r1, [r1, #0x58]
	blx r1
	cmp r0, #0
	ldmnefd sp!, {r4, pc}
	mov r0, r4
	bl FUN_ov1_020d17e8
	mov r0, r4
	bl FUN_ov1_020d1808
	ldr r0, _020C235C ; =0x020A0640
	ldrb r0, [r0, #0x1a]
	cmp r0, #0
	beq _020C22B4
	ldr r0, _020C2360 ; =0x020EAAC8
	ldr r0, [r0]
	bl FUN_ov16_020f077c
	cmp r0, #0
	bne _020C22B4
	ldr r0, _020C2364 ; =0x020EAAE4
	ldr r0, [r0]
	bl FUN_ov16_020f077c
	cmp r0, #0
	beq _020C22C4
_020C22B4:
	mov r0, r4
	mov r1, #0x33
	bl FUN_ov1_020bf9f4
	ldmfd sp!, {r4, pc}
_020C22C4:
	mov r0, r4
	mov r1, #0x36
	bl FUN_ov1_020bf9f4
	ldmfd sp!, {r4, pc}
_020C22D4:
	ldr r0, _020C2368 ; =0x0209F5C0
	mov r1, #0
	bl FUN_ov16_020f6678
	cmp r0, #0
	ldmnefd sp!, {r4, pc}
	mov r0, r4
	mov r1, #0x34
	bl FUN_ov1_020bf9f4
	ldmfd sp!, {r4, pc}
_020C22F8:
	bl FUN_ov1_020d7f28
	ldmfd sp!, {r4, pc}
_020C2300:
	ldr r0, _020C235C ; =0x020A0640
	ldrb r0, [r0, #0x1a]
	cmp r0, #0
	beq _020C2338
	ldr r0, _020C2360 ; =0x020EAAC8
	ldr r0, [r0]
	bl FUN_ov16_020f077c
	cmp r0, #0
	bne _020C2338
	ldr r0, _020C2364 ; =0x020EAAE4
	ldr r0, [r0]
	bl FUN_ov16_020f077c
	cmp r0, #0
	beq _020C2344
_020C2338:
	mov r0, r4
	mov r1, #0x33
	b _020C234C
_020C2344:
	mov r0, r4
	mov r1, #0x36
_020C234C:
	bl FUN_ov1_020bf9f4
	mov r0, r4
	bl FUN_ov1_020d7f28
	ldmfd sp!, {r4, pc}
_020C235C: .word 0x020A0640
_020C2360: .word 0x020EAAC8
_020C2364: .word 0x020EAAE4
_020C2368: .word 0x0209F5C0
	arm_func_end FUN_ov1_020c220c

	arm_func_start FUN_ov1_020c236c
FUN_ov1_020c236c: ; 0x020C236C
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, lr}
	mov r4, r0
	ldr r2, [r4, #0xc]
	ldr r5, _020C2658 ; =0x02099EF0
	sub r1, r2, #0x4c
	mov r6, #1
	cmp r1, #9
	mov r7, #0
	addls pc, pc, r1, lsl #2
	b _020C264C
_020C2394: ; jump table
	b _020C23BC ; case 0
	b _020C23C8 ; case 1
	b _020C2558 ; case 2
	b _020C2578 ; case 3
	b _020C2578 ; case 4
	b _020C2578 ; case 5
	b _020C2578 ; case 6
	b _020C25B8 ; case 7
	b _020C25E0 ; case 8
	b _020C261C ; case 9
_020C23BC:
	mov r1, #0x4d
_020C23C0:
	bl FUN_ov1_020bf9f4
	b _020C264C
_020C23C8:
	add r0, r4, #0x348
	mov r1, #0x4f
	bl FUN_ov16_020f330c
	cmp r0, #0
	beq _020C264C
	mov r0, r4
	ldr r1, [r0]
	ldr r1, [r1, #0x58]
	blx r1
	cmp r0, #0
	bne _020C264C
	ldr r0, [r5]
	mov r8, r6
	mov r9, r7
	bl FUN_ov132_02159afc
	cmp r0, #0
	beq _020C2420
	bl FUN_ov16_020f081c
	ldr r1, _020C265C ; =0x020EAAD0
	ldr r1, [r1]
	cmp r1, r0
	movne r9, r8
_020C2420:
	cmp r9, #0
	bne _020C2448
	bl FUN_ov16_020f081c
	mov r1, r0
	ldr r0, [r5]
	mov r2, r7
	mov r3, #1
	bl FUN_ov132_0215a168
	cmp r0, #0
	movne r8, r7
_020C2448:
	ldr r0, [r4, #4]
	mov r7, #1
	cmp r8, #0
	movne r7, #0
	bl FUN_02042084
	mov r8, r0
	ldr r0, [r4, #4]
	bl FUN_02042054
	cmp r8, r0
	bne _020C264C
	mov r0, r4
	mov r1, #0x1a
	bl FUN_ov1_020d51e0
	ldr r0, _020C2660 ; =0x020A0640
	ldrb r0, [r0, #0x1a]
	cmp r0, #0
	beq _020C24AC
	ldr r0, _020C2664 ; =0x0209AEC0
	ldrb r0, [r0, #0x64]
	cmp r0, #0
	beq _020C24B4
	bl FUN_ov16_020f083c
	bl FUN_ov16_020f0a30
	cmp r0, #0
	beq _020C24B4
_020C24AC:
	mov r0, r4
	bl FUN_ov1_020d7880
_020C24B4:
	ldr r0, [r5]
	bl FUN_ov132_02159afc
	cmp r0, #0
	beq _020C24DC
	ldr r0, _020C265C ; =0x020EAAD0
	ldr r0, [r0]
	bl FUN_ov16_020f0a30
	cmp r0, #0
	beq _020C24DC
	b _020C2514
_020C24DC:
	ldr r0, _020C2660 ; =0x020A0640
	ldrb r0, [r0, #0x1a]
	cmp r0, #0
	beq _020C24FC
	ldrb r0, [r4, #0x58]
	cmp r0, #0
	bne _020C24FC
	b _020C253C
_020C24FC:
	cmp r7, #0
	bne _020C2548
	ldr r0, _020C2660 ; =0x020A0640
	ldrb r0, [r0, #0x1a]
	cmp r0, #0
	bne _020C253C
_020C2514:
	ldr r0, [r5]
	bl FUN_ov132_02159df0
	mov r5, r0
	bl FUN_ov16_020f081c
	ldrb r2, [r5, #4]
	mov r1, #0x50
	orr r2, r2, r6, lsl r0
	mov r0, r4
	strb r2, [r5, #4]
	b _020C23C0
_020C253C:
	mov r0, r4
	mov r1, #0x56
	b _020C23C0
_020C2548:
	ldr r0, _020C2668 ; =0x0209AC44
	mov r1, #0x1e
	bl FUN_0202cf6c
	b _020C25D4
_020C2558:
	ldr r0, _020C266C ; =0x0209F5C0
	mov r1, r7
	bl FUN_ov16_020f6678
	cmp r0, #0
	bne _020C264C
	mov r0, r4
	mov r1, #0x4f
	b _020C23C0
_020C2578:
	cmp r2, #0x4f
	bne _020C25AC
	bl FUN_ov16_020f081c
	mov r1, r0
	ldr r0, [r5]
	ldr r2, [r4, #0x5c]
	bl FUN_ov132_0215a2c0
	strh r0, [r4, #0x26]
	ldr r0, [r4, #4]
	add r1, r4, #0x26
	ldr r2, [r0]
	ldr r2, [r2, #0x3c]
	blx r2
_020C25AC:
	mov r0, r4
	bl FUN_ov1_020d7930
	b _020C264C
_020C25B8:
	add r0, r4, #0x348
	mov r1, #0x4f
	bl FUN_ov16_020f330c
	cmp r0, #0
	beq _020C264C
	mov r0, r4
	bl FUN_ov1_020d588c
_020C25D4:
	mov r0, r4
	mov r1, #0x4e
	b _020C23C0
_020C25E0:
	ldr r1, [r0]
	ldr r1, [r1, #0x58]
	blx r1
	cmp r0, #0
	bne _020C264C
	ldr r0, _020C2670 ; =0x02099F14
	ldr r0, [r0]
	bl FUN_ov1_020e4e10
	cmp r0, #0
	beq _020C264C
	mov r0, r4
	bl FUN_ov1_020d587c
	mov r0, r4
	mov r1, #0x55
	b _020C23C0
_020C261C:
	mov r1, r7
	bl FUN_ov1_020d497c
	ldrb r0, [r4, #0x1f]
	cmp r0, #0
	bne _020C264C
	ldr r5, _020C2670 ; =0x02099F14
	ldr r0, [r5]
	bl FUN_ov1_020e4dec
	ldr r0, [r5]
	bl FUN_ov1_020e4d70
	mov r0, r4
	bl FUN_ov1_020d7b14
_020C264C:
	ldr r0, _020C266C ; =0x0209F5C0
	bl FUN_ov16_020f6274
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
_020C2658: .word 0x02099EF0
_020C265C: .word 0x020EAAD0
_020C2660: .word 0x020A0640
_020C2664: .word 0x0209AEC0
_020C2668: .word 0x0209AC44
_020C266C: .word 0x0209F5C0
_020C2670: .word 0x02099F14
	arm_func_end FUN_ov1_020c236c

	arm_func_start FUN_ov1_020c2674
FUN_ov1_020c2674: ; 0x020C2674
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, lr}
	sub sp, sp, #8
	mov r8, #0
	mov r4, r0
	str r1, [sp, #4]
	mov r5, r8
	strb r8, [r4, #0x20]
	ldr r9, _020C318C ; =0x0209AEC0
	ldr r6, _020C3190 ; =0x020A0640
	ldr r7, _020C3194 ; =0x02099EF0
	bl FUN_ov1_020c1778
	mov r0, r4
	bl FUN_ov1_020c1884
	ldr r0, [r4, #8]
	cmp r0, #0x64
	bgt _020C27BC
	bge _020C2B64
	cmp r0, #0x3d
	addls pc, pc, r0, lsl #2
	b _020C2C30
_020C26C4: ; jump table
	b _020C2C30 ; case 0
	b _020C2C30 ; case 1
	b _020C2C30 ; case 2
	b _020C2C30 ; case 3
	b _020C2A8C ; case 4
	b _020C2BAC ; case 5
	b _020C2C30 ; case 6
	b _020C2C30 ; case 7
	b _020C2C30 ; case 8
	b _020C2C30 ; case 9
	b _020C2A44 ; case 10
	b _020C27D8 ; case 11
	b _020C2A44 ; case 12
	b _020C27E4 ; case 13
	b _020C2C30 ; case 14
	b _020C2818 ; case 15
	b _020C29CC ; case 16
	b _020C2A04 ; case 17
	b _020C2A44 ; case 18
	b _020C27F0 ; case 19
	b _020C2A44 ; case 20
	b _020C27F4 ; case 21
	b _020C2A44 ; case 22
	b _020C2800 ; case 23
	b _020C2A44 ; case 24
	b _020C298C ; case 25
	b _020C280C ; case 26
	b _020C2844 ; case 27
	b _020C28A0 ; case 28
	b _020C2C30 ; case 29
	b _020C2C30 ; case 30
	b _020C28C4 ; case 31
	b _020C2C30 ; case 32
	b _020C2918 ; case 33
	b _020C2C30 ; case 34
	b _020C2A8C ; case 35
	b _020C2C30 ; case 36
	b _020C2C30 ; case 37
	b _020C2C30 ; case 38
	b _020C2C30 ; case 39
	b _020C2C30 ; case 40
	b _020C2A8C ; case 41
	b _020C2C30 ; case 42
	b _020C2A8C ; case 43
	b _020C2C30 ; case 44
	b _020C2C30 ; case 45
	b _020C2C30 ; case 46
	b _020C2C30 ; case 47
	b _020C2C30 ; case 48
	b _020C2C30 ; case 49
	b _020C2C30 ; case 50
	b _020C2B7C ; case 51
	b _020C2C30 ; case 52
	b _020C2C30 ; case 53
	b _020C2C30 ; case 54
	b _020C2C30 ; case 55
	b _020C2C30 ; case 56
	b _020C2C30 ; case 57
	b _020C2C30 ; case 58
	b _020C2C30 ; case 59
	b _020C2A8C ; case 60
	b _020C2C08 ; case 61
_020C27BC:
	cmp r0, #0x65
	bgt _020C27CC
	beq _020C2B70
	b _020C2C30
_020C27CC:
	cmp r0, #0x66
	beq _020C2BA0
	b _020C2C30
_020C27D8:
	mov r0, r4
	bl FUN_ov1_020c1bf8
	b _020C2C30
_020C27E4:
	mov r0, r4
	bl FUN_ov1_020c1dc0
	b _020C2C30
_020C27F0:
	b _020C27E4
_020C27F4:
	mov r0, r4
	bl FUN_ov1_020d759c
	b _020C2C30
_020C2800:
	mov r0, r4
	bl FUN_ov1_020c20d0
	b _020C2C30
_020C280C:
	mov r0, r4
	bl FUN_ov1_020c236c
	b _020C2C30
_020C2818:
	mov r0, r4
	ldr r1, [r0]
	ldr r1, [r1, #0x58]
	blx r1
	cmp r0, #0
	bne _020C2C30
	mov r0, r4
	bl FUN_ov1_020c220c
	mov r0, r4
	bl FUN_ov1_020d100c
	b _020C2C30
_020C2844:
	mov r0, r4
	ldr r1, [r0]
	ldr r1, [r1, #0x58]
	blx r1
	cmp r0, #0
	bne _020C2C30
	ldr r0, [r7]
	mov r1, #8
	bl FUN_ov132_0214478c
	ldr r0, [r7]
	mov r1, r8
	bl FUN_ov132_021447d0
	ldr r0, [r7]
	bl FUN_ov126_02136c44
	ldr r0, [r7]
	mov r1, #1
	bl FUN_ov132_02148ba4
	ldr r0, [r7]
	bl FUN_ov132_02148bac
	mov r0, r4
	mov r1, #0x1c
_020C2898:
	bl FUN_ov1_020bffd4
	b _020C2C30
_020C28A0:
	mov r0, r4
	ldr r1, [r0]
	ldr r1, [r1, #0x58]
	blx r1
	cmp r0, #0
	bne _020C2C30
	mov r0, r4
	mov r1, #4
	b _020C2898
_020C28C4:
	ldr r0, [r4, #0x14]
	cmp r0, #0
	blt _020C28DC
	subs r0, r0, #1
	str r0, [r4, #0x14]
	bpl _020C2C30
_020C28DC:
	mov r0, r4
	mov r1, r8
	mov r2, r8
	bl FUN_ov1_020ccc10
	ldrb r0, [r4, #0x1f]
	cmp r0, #0
	bne _020C2C30
	mov r0, r4
	bl FUN_ov1_020c14dc
	ldr r0, _020C3198 ; =0x0209AC44
	mov r1, r8
	mov r3, r8
	mov r2, #9
	bl FUN_0202c3c8
	b _020C2C30
_020C2918:
	ldr r0, [r4, #0x14]
	cmp r0, #0
	blt _020C2930
	subs r0, r0, #1
	str r0, [r4, #0x14]
	bpl _020C2C30
_020C2930:
	mov r0, r4
	mov r1, r8
	bl FUN_ov1_020cd2b8
	ldrb r0, [r4, #0x1f]
	cmp r0, #0
	bne _020C2C30
	mov r0, r4
	bl FUN_ov1_020c1768
	ldr r0, [r7]
	mov r1, r8
	bl FUN_ov132_02145190
	cmp r0, #0
	bne _020C2C30
	ldr r0, [r7]
	mov r1, #1
	bl FUN_ov132_02145190
	cmp r0, #0
	bne _020C2C30
	ldr r0, _020C3198 ; =0x0209AC44
	mov r1, r8
	mov r2, r8
	bl FUN_0202c3b4
	b _020C2C30
_020C298C:
	ldr r0, [r4, #0x14]
	cmp r0, #0
	blt _020C29A4
	subs r0, r0, #1
	str r0, [r4, #0x14]
	bpl _020C2C30
_020C29A4:
	mov r0, r4
	mov r1, #0
	mov r2, #1
	bl FUN_ov1_020ccc10
	ldrb r0, [r4, #0x1f]
	cmp r0, #0
	bne _020C2C30
	mov r0, r4
	mov r1, #0x1a
	b _020C2898
_020C29CC:
	ldr r0, [r4, #0x14]
	cmp r0, #0
	blt _020C29E4
	subs r0, r0, #1
	str r0, [r4, #0x14]
	bpl _020C2C30
_020C29E4:
	mov r0, r4
	mov r1, #0
	mov r2, #3
	bl FUN_ov1_020ccc10
	ldrb r0, [r4, #0x1f]
	cmp r0, #0
	bne _020C2C30
	b _020C2A38
_020C2A04:
	ldr r0, [r4, #0x14]
	cmp r0, #0
	blt _020C2A1C
	subs r0, r0, #1
	str r0, [r4, #0x14]
	bpl _020C2C30
_020C2A1C:
	mov r0, r4
	mov r1, #0
	mov r2, #2
	bl FUN_ov1_020ccc10
	ldrb r0, [r4, #0x1f]
	cmp r0, #0
	bne _020C2C30
_020C2A38:
	mov r0, r4
	mov r1, #0x13
	b _020C2898
_020C2A44:
	ldrb r1, [r6, #0x1a]
	mov r0, r9
	cmp r1, #0
	beq _020C2C30
	ldrb r0, [r0, #0x64]
	cmp r0, #0
	bne _020C2C30
	ldr r0, [r7]
	bl FUN_ov132_021434f8
	cmp r0, #0
	bne _020C2A7C
	ldr r0, [r7]
	mov r1, r8
	bl FUN_ov132_0214a98c
_020C2A7C:
	ldr r0, [r7]
	mov r1, #1
	mov r2, #0
	b _020C2C2C
_020C2A8C:
	mov r0, r4
	ldr r1, [r0]
	mov r8, r9
	ldr r1, [r1, #0x58]
	blx r1
	cmp r0, #0
	bne _020C2C30
	mov r5, #1
	strb r5, [r4, #0x20]
	ldrb r0, [r6, #0x1a]
	cmp r0, #0
	beq _020C2AC8
	ldrb r0, [r8, #0x64]
	cmp r0, #0
	beq _020C2B30
_020C2AC8:
	ldr r0, [r4, #8]
	mov r6, #0
	cmp r0, #4
	bne _020C2AE8
	mov r0, r4
	bl FUN_ov1_020d7d98
	cmp r0, #0
	movne r6, #1
_020C2AE8:
	cmp r6, #0
	bne _020C2B24
	ldr r0, [r7]
	bl FUN_ov132_021447c8
	cmp r0, #0
	mov r1, #1
	ldr r0, [r7]
	movne r1, #0
	bl FUN_ov132_0214a758
	ldr r0, [r7]
	bl FUN_ov132_0213c17c
	mov r1, #0
	ldr r0, [r7]
	mov r2, r1
	bl FUN_ov132_021435c0
_020C2B24:
	mov r0, r4
	bl FUN_ov1_020d80cc
	b _020C2B58
_020C2B30:
	ldr r0, [r4, #8]
	cmp r0, #0x3c
	beq _020C2B48
	ldr r0, [r7]
	mov r1, r5
	bl FUN_ov132_0214a98c
_020C2B48:
	ldr r0, [r7]
	mov r1, #1
	mov r2, #0
	bl FUN_ov132_021435c0
_020C2B58:
	mov r0, r4
	bl FUN_ov1_020c1a00
	b _020C2C30
_020C2B64:
	mov r0, r4
	bl FUN_ov1_020c0a98
	b _020C2C30
_020C2B70:
	mov r0, r4
	bl FUN_ov1_020c0b48
	b _020C2C30
_020C2B7C:
	ldr r0, [r4, #0x14]
	cmp r0, #0
	blt _020C2B94
	subs r0, r0, #1
	str r0, [r4, #0x14]
	bpl _020C2C30
_020C2B94:
	mov r0, r4
	mov r1, #0x66
	b _020C2898
_020C2BA0:
	mov r0, r4
	bl FUN_ov1_020c0cc0
	b _020C2C30
_020C2BAC:
	ldr r0, [r7]
	bl FUN_ov132_02147e24
	cmp r0, #0
	beq _020C2BD4
	mov r5, #1
	strb r5, [r4, #0x20]
	ldr r0, [r7]
	mov r1, r5
	mov r2, r8
	bl FUN_ov132_021435c0
_020C2BD4:
	ldr r6, _020C319C ; =0x020AF81C
	mov r1, #1
	mov r0, r6
	bl FUN_0204451c
	mov r0, r6
	bl FUN_02044600
	cmp r0, #0
	bne _020C2C30
	mov r0, r4
	bl FUN_ov1_020c066c
	ldr r0, [r7]
	bl FUN_ov132_02143ce0
	b _020C2C30
_020C2C08:
	ldrb r0, [r6, #0x1a]
	cmp r0, #0
	beq _020C2C30
	ldrb r0, [r9, #0x64]
	cmp r0, #0
	bne _020C2C30
	ldr r0, [r7]
	mov r2, r8
	mov r1, #1
_020C2C2C:
	bl FUN_ov132_021435c0
_020C2C30:
	mov r6, #0
	mov r7, r6
	mov r11, r6
	bl FUN_ov16_020f081c
	cmp r0, #0
	mov r10, #1
	ldr r0, [r4, #8]
	movne r10, r6
	cmp r0, #0xb
	mov r8, #0
	cmpne r0, #0xd
	beq _020C2C68
	cmp r0, #0xf
	bne _020C2C90
_020C2C68:
	ldr r9, _020C31A0 ; =0x020EAAC8
	ldr r0, [r9]
	cmp r0, #0
	blt _020C2C90
	bl FUN_ov16_020efa80
	cmp r0, #0
	beq _020C2C90
	ldr r0, [r9]
	bl FUN_ov16_020f077c
	mov r6, r0
_020C2C90:
	ldr r0, [r4, #8]
	ldr r9, _020C31A4 ; =0x020EAAE4
	cmp r0, #0xb
	cmpne r0, #0xd
	cmpne r0, #0xf
	beq _020C2CB0
	cmp r0, #0x17
	bne _020C2CD4
_020C2CB0:
	ldr r0, [r9]
	cmp r0, #0
	blt _020C2CD4
	bl FUN_ov16_020efa80
	cmp r0, #0
	beq _020C2CD4
	ldr r0, [r9]
	bl FUN_ov16_020f077c
	mov r7, r0
_020C2CD4:
	ldr r0, [r4, #8]
	cmp r0, #0x13
	bne _020C2D0C
	ldr r9, _020C31A8 ; =0x020EAAC0
	ldr r0, [r9]
	cmp r0, #0
	blt _020C2D0C
	bl FUN_ov16_020efa80
	cmp r0, #0
	beq _020C2D0C
	ldr r1, [r9]
	mov r0, r4
	bl FUN_ov1_020bf4e0
	mov r11, r0
_020C2D0C:
	ldr r0, _020C3190 ; =0x020A0640
	ldrb r0, [r0, #0x1a]
	cmp r0, #0
	beq _020C2D28
	mov r0, r10
	bl FUN_ov16_020f0a30
	mov r8, r0
_020C2D28:
	ldr r0, _020C3190 ; =0x020A0640
	ldrb r0, [r0, #0x1a]
	cmp r0, #0
	beq _020C3144
	bl FUN_ov1_020dbb44
	cmp r0, #0
	beq _020C3144
	ldr r0, _020C318C ; =0x0209AEC0
	bl FUN_02046744
	ldr r1, [r4, #0xc]
	mov r9, r0
	cmp r1, #0xd
	cmpne r1, #0x25
	cmpne r1, #0x35
	cmpne r1, #0x50
	moveq r0, #1
	streqb r0, [r4, #0x1d]
	ldr r0, [r4, #8]
	cmp r0, #0xb
	bne _020C2E00
	ldr r0, [r4, #0xc]
	cmp r0, #0xe
	beq _020C2D8C
	cmp r0, #0xd
	bne _020C2E00
_020C2D8C:
	ldr r0, _020C31A0 ; =0x020EAAC8
	ldr r11, _020C31A4 ; =0x020EAAE4
	ldr r0, [r0]
	mov r9, #0
	bl FUN_ov16_020f077c
	cmp r0, #0
	beq _020C2DB0
	cmp r6, #0
	beq _020C2DC8
_020C2DB0:
	ldr r0, [r11]
	bl FUN_ov16_020f077c
	cmp r0, #0
	beq _020C309C
	cmp r7, #0
	bne _020C309C
_020C2DC8:
	ldr r0, [r4, #0xc]
	cmp r0, #0xd
	bne _020C2DF0
	bl FUN_ov16_020f081c
	mov r2, r0
	mov r0, r4
	mov r1, #9
	mov r3, #0x32
	str r9, [sp]
	bl FUN_ov1_020c3a24
_020C2DF0:
	mov r0, r4
	mov r1, #0xb
_020C2DF8:
	bl FUN_ov1_020bf9f4
	b _020C309C
_020C2E00:
	ldr r0, [r4, #8]
	cmp r0, #0xd
	bne _020C2E98
	ldr r0, [r4, #0xc]
	cmp r0, #0x26
	beq _020C2E20
	cmp r0, #0x25
	bne _020C2E98
_020C2E20:
	ldr r0, _020C31A0 ; =0x020EAAC8
	ldr r11, _020C31A4 ; =0x020EAAE4
	ldr r0, [r0]
	mov r9, #0
	bl FUN_ov16_020f077c
	cmp r0, #0
	beq _020C2E44
	cmp r6, #0
	beq _020C2E5C
_020C2E44:
	ldr r0, [r11]
	bl FUN_ov16_020f077c
	cmp r0, #0
	beq _020C309C
	cmp r7, #0
	bne _020C309C
_020C2E5C:
	ldr r0, [r4, #0xc]
	cmp r0, #0x25
	bne _020C2E84
	bl FUN_ov16_020f081c
	mov r2, r0
	mov r0, r4
	mov r1, #0xa
	mov r3, #0x32
	str r9, [sp]
	bl FUN_ov1_020c3a24
_020C2E84:
	mov r0, r4
	bl FUN_ov1_020d05c0
	mov r0, r4
	mov r1, #0x1f
	b _020C2DF8
_020C2E98:
	ldr r0, [r4, #8]
	cmp r0, #0x13
	bne _020C2EE4
	ldr r0, [r4, #0xc]
	cmp r0, #0x3d
	beq _020C2EB8
	cmp r0, #0x3c
	bne _020C2EE4
_020C2EB8:
	ldr r1, _020C31A8 ; =0x020EAAC0
	mov r0, r4
	ldr r1, [r1]
	bl FUN_ov1_020bf4e0
	cmp r0, #0
	beq _020C309C
	cmp r11, #0
	bne _020C309C
	mov r0, r4
	mov r1, #0x3a
	b _020C2DF8
_020C2EE4:
	ldr r0, [r4, #8]
	cmp r0, #0x17
	bne _020C2F58
	ldr r0, [r4, #0xc]
	mov r11, #0
	cmp r0, #0x4b
	beq _020C2F08
	cmp r0, #0x4a
	bne _020C2F58
_020C2F08:
	ldr r0, _020C31A4 ; =0x020EAAE4
	ldr r0, [r0]
	bl FUN_ov16_020f077c
	cmp r0, #0
	beq _020C309C
	cmp r7, #0
	bne _020C309C
	ldr r0, [r4, #0xc]
	cmp r0, #0x4a
	bne _020C2F4C
	bl FUN_ov16_020f081c
	mov r2, r0
	mov r0, r4
	mov r1, #0xa
	mov r3, #0x32
	str r11, [sp]
	bl FUN_ov1_020c3a24
_020C2F4C:
	mov r0, r4
	mov r1, #0x48
	b _020C2DF8
_020C2F58:
	ldr r0, [r4, #8]
	cmp r0, #0x1a
	bne _020C2FFC
	ldr r0, [r4, #0xc]
	mov r11, #0
	cmp r0, #0x51
	beq _020C2F7C
	cmp r0, #0x50
	bne _020C2FFC
_020C2F7C:
	ldrb r0, [r4, #0x58]
	mov r6, #1
	cmp r0, #0
	bne _020C309C
	bl FUN_ov16_020f0944 ; may be ov17
	cmp r0, #0
	beq _020C309C
	ldrh r0, [r4, #0x5a]
	bl FUN_ov16_020f085c
	mov r7, r0
	bl FUN_ov16_020f081c
	cmp r7, r0
	bne _020C2FC0
	ldrh r0, [r4, #0x5a]
	mov r1, r6
	tst r9, r1, lsl r0
	bne _020C309C
_020C2FC0:
	ldr r0, [r4, #0xc]
	strb r6, [r4, #0x58]
	cmp r0, #0x50
	bne _020C2FEC
	bl FUN_ov16_020f081c
	mov r2, r0
	mov r0, r4
	mov r1, #0xa
	mov r3, #0x32
	str r11, [sp]
	bl FUN_ov1_020c3a24
_020C2FEC:
	mov r0, r4
	mov r1, #0
	bl FUN_ov1_020bf690
	b _020C309C
_020C2FFC:
	ldr r0, [r4, #8]
	cmp r0, #0xf
	mov r0, #1
	bne _020C3090
	ldr r1, [r4, #0xc]
	ldr r9, _020C31A4 ; =0x020EAAE4
	cmp r1, #0x36
	beq _020C3024
	cmp r1, #0x35
	bne _020C3090
_020C3024:
	ldr r0, _020C31A0 ; =0x020EAAC8
	ldr r0, [r0]
	bl FUN_ov16_020f077c
	cmp r0, #0
	beq _020C3040
	cmp r6, #0
	beq _020C3058
_020C3040:
	ldr r0, [r9]
	bl FUN_ov16_020f077c
	cmp r0, #0
	beq _020C309C
	cmp r7, #0
	bne _020C309C
_020C3058:
	ldr r0, [r4, #0xc]
	cmp r0, #0x35
	bne _020C3084
	bl FUN_ov16_020f081c
	mov r3, #0
	mov r2, r0
	str r3, [sp]
	mov r0, r4
	mov r1, #0xc
	mov r3, #0x32
	bl FUN_ov1_020c3a24
_020C3084:
	mov r0, r4
	mov r1, #0x33
	b _020C2DF8
_020C3090:
	ldr r1, [r4, #8]
	cmp r1, #0x3d
	streqb r0, [r4, #0x1d]
_020C309C:
	cmp r8, #0
	ldr r7, _020C318C ; =0x0209AEC0
	ldr r6, _020C3194 ; =0x02099EF0
	bne _020C3144
	mov r0, r10
	bl FUN_ov16_020f0a30
	cmp r0, #0
	ldrneb r0, [r7, #0x64]
	cmpne r0, #0
	beq _020C3144
	ldr r0, [r4, #8]
	cmp r0, #0xb
	bne _020C30DC
	mov r0, r4
	bl FUN_ov1_020d6e3c
	b _020C3144
_020C30DC:
	cmp r0, #0xd
	bne _020C30F0
	mov r0, r4
	bl FUN_ov1_020d7164
	b _020C3144
_020C30F0:
	cmp r0, #0x13
	bne _020C3120
	ldr r0, [r6]
	bl FUN_ov126_0213777c
	ldrsb r0, [r0, #0x20]
	bl FUN_ov16_020efa80
	mov r1, r0
	ldr r0, [r6]
	bl FUN_ov126_021378fc
	mov r0, r4
	bl FUN_ov1_020d71a8
	b _020C3144
_020C3120:
	cmp r0, #0x1a
	bne _020C3134
	mov r0, r4
	bl FUN_ov1_020d7880
	b _020C3144
_020C3134:
	cmp r0, #0xf
	bne _020C3144
	mov r0, r4
	bl FUN_ov1_020d7e80
_020C3144:
	ldr r0, _020C3194 ; =0x02099EF0
	mov r1, #0
	ldr r0, [r0]
	mov r2, r1
	bl FUN_ov132_021435c0
	ldr r0, [r4, #0x4c]
	cmp r0, #0
	bgt _020C3170
	ldr r0, _020C3194 ; =0x02099EF0
	ldr r0, [r0]
	bl FUN_ov132_02148bac
_020C3170:
	ldr r0, [sp, #4]
	cmp r0, #0
	mov r0, #0
	cmpne r5, #0
	movne r0, #1
	add sp, sp, #8
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_020C318C: .word 0x0209AEC0
_020C3190: .word 0x020A0640
_020C3194: .word 0x02099EF0
_020C3198: .word 0x0209AC44
_020C319C: .word 0x020AF81C
_020C31A0: .word 0x020EAAC8
_020C31A4: .word 0x020EAAE4
_020C31A8: .word 0x020EAAC0
	arm_func_end FUN_ov1_020c2674

	arm_func_start FUN_ov1_020c31ac
FUN_ov1_020c31ac: ; 0x020C31AC
	stmfd sp!, {r3, r4, r5, lr}
	mov r4, r0
	ldr r2, [r4, #8]
	cmp r2, #0
	ldmeqfd sp!, {r3, r4, r5, pc}
	cmp r2, #1
	beq _020C31D4
	cmp r2, #2
	ldmeqfd sp!, {r3, r4, r5, pc}
	b _020C322C
_020C31D4:
	ldr r0, _020C32B8 ; =0x02099F14
	ldr r0, [r0]
	bl FUN_ov1_020e3d74
	cmp r0, #0
	ldmeqfd sp!, {r3, r4, r5, pc}
	add r0, r4, #0x348
	mov r1, #0x4f
	bl FUN_ov16_020f330c
	cmp r0, #0
	ldmeqfd sp!, {r3, r4, r5, pc}
	ldr r0, [r4, #0x10]
	cmp r0, #1
	mov r0, r4
	bne _020C3218
	mov r1, #2
	bl FUN_ov1_020d0364
	ldmfd sp!, {r3, r4, r5, pc}
_020C3218:
	bl FUN_ov1_020d05a0
	mov r0, r4
	mov r1, #2
	bl FUN_ov1_020bffd4
	ldmfd sp!, {r3, r4, r5, pc}
_020C322C:
	bl FUN_ov1_020c2674
	mov r5, r0
	mov r0, r4
	bl FUN_ov1_020ce4d0
	ldr r0, _020C32BC ; =0x0209F5C0
	mov r1, #0
	bl FUN_ov16_020f672c
	mov r0, r4
	bl FUN_ov1_020cc964
	mov r0, r4
	bl FUN_ov1_020cc760
	ldr r0, _020C32C0 ; =0x02099F10
	ldr r1, _020C32C4 ; =0x0209A110
	ldr r0, [r0]
	ldr r1, [r1]
	bl FUN_0205bf14
	mov r1, r5
	mov r0, r4
	bl FUN_ov1_020ccae4
	ldr r0, _020C32C8 ; =0x020A0640
	ldrb r0, [r0, #0x1a]
	cmp r0, #0
	beq _020C3298
	ldr r0, _020C32CC ; =0x0209AEC0
	ldrb r0, [r0, #0x64]
	cmp r0, #0
	ldmeqfd sp!, {r3, r4, r5, pc}
_020C3298:
	ldr r0, [r4, #8]
	cmp r0, #4
	ldmnefd sp!, {r3, r4, r5, pc}
	ldr r0, _020C32D0 ; =0x02099EF0
	mov r1, #1
	ldr r0, [r0]
	bl FUN_01ff9700
	ldmfd sp!, {r3, r4, r5, pc}
_020C32B8: .word 0x02099F14
_020C32BC: .word 0x0209F5C0
_020C32C0: .word 0x02099F10
_020C32C4: .word 0x0209A110
_020C32C8: .word 0x020A0640
_020C32CC: .word 0x0209AEC0
_020C32D0: .word 0x02099EF0
	arm_func_end FUN_ov1_020c31ac

	arm_func_start FUN_ov1_020c32d4
FUN_ov1_020c32d4: ; 0x020C32D4
	stmfd sp!, {r3, r4, r5, lr}
	mov r4, r0
	ldr r1, [r4, #8]
	mov r5, #0
	cmp r1, #0x21
	addls pc, pc, r1, lsl #2
	b _020C3558
_020C32F0: ; jump table
	ldmfd sp!, {r3, r4, r5, pc} ; case 0
	ldmfd sp!, {r3, r4, r5, pc} ; case 1
	b _020C3378 ; case 2
	b _020C3558 ; case 3
	b _020C3558 ; case 4
	b _020C3558 ; case 5
	b _020C3558 ; case 6
	b _020C3558 ; case 7
	b _020C3558 ; case 8
	b _020C3558 ; case 9
	b _020C3558 ; case 10
	b _020C33C8 ; case 11
	b _020C3558 ; case 12
	b _020C3400 ; case 13
	b _020C3558 ; case 14
	b _020C34D8 ; case 15
	b _020C3528 ; case 16
	b _020C3540 ; case 17
	b _020C3558 ; case 18
	b _020C3438 ; case 19
	b _020C3558 ; case 20
	ldmfd sp!, {r3, r4, r5, pc} ; case 21
	b _020C3558 ; case 22
	b _020C345C ; case 23
	b _020C3558 ; case 24
	b _020C3510 ; case 25
	b _020C3480 ; case 26
	b _020C3558 ; case 27
	b _020C3558 ; case 28
	b _020C3558 ; case 29
	b _020C3558 ; case 30
	b _020C34F8 ; case 31
	b _020C3558 ; case 32
	b _020C34F8 ; case 33
_020C3378:
	bl FUN_ov1_020d0864
	ldr r5, _020C3568 ; =0x02099EF0
	ldr r0, [r5]
	bl FUN_ov132_021434f8
	cmp r0, #0
	bne _020C33A0
	ldr r0, [r5]
	mov r1, #1
	mov r2, #0
	bl FUN_ov132_021435c0
_020C33A0:
	ldr r0, _020C356C ; =0x020A0640
	ldrb r0, [r0, #0x1a]
	cmp r0, #0
	mov r0, r4
	beq _020C33C0
	mov r1, #3
	bl FUN_ov1_020bffd4
	ldmfd sp!, {r3, r4, r5, pc}
_020C33C0:
	bl FUN_ov1_020c05e4
	ldmfd sp!, {r3, r4, r5, pc}
_020C33C8:
	ldr r1, [r4, #0xc]
	cmp r1, #0xb
	beq _020C33E0
	cmp r1, #0x10
	beq _020C33EC
	b _020C33F0
_020C33E0:
	mov r1, #0xb
	bl FUN_ov1_020d5450
	b _020C33F0
_020C33EC:
	bl FUN_ov1_020d5888
_020C33F0:
	ldr r0, _020C3570 ; =0x0209F5C0
	mov r1, #0
	bl FUN_ov16_020f6a9c
	ldmfd sp!, {r3, r4, r5, pc}
_020C3400:
	ldr r1, [r4, #0xc]
	cmp r1, #0x20
	beq _020C3418
	cmp r1, #0x23
	beq _020C3424
	b _020C3428
_020C3418:
	mov r1, #0xd
	bl FUN_ov1_020d5450
	b _020C3428
_020C3424:
	bl FUN_ov1_020d57e0
_020C3428:
	ldr r0, _020C3570 ; =0x0209F5C0
	mov r1, #0
	bl FUN_ov16_020f6a9c
	ldmfd sp!, {r3, r4, r5, pc}
_020C3438:
	ldr r1, [r4, #0xc]
	cmp r1, #0x3a
	bne _020C344C
	mov r1, #0x13
	bl FUN_ov1_020d5450
_020C344C:
	ldr r0, _020C3570 ; =0x0209F5C0
	mov r1, #0
	bl FUN_ov16_020f6a9c
	ldmfd sp!, {r3, r4, r5, pc}
_020C345C:
	ldr r1, [r4, #0xc]
	cmp r1, #0x48
	bne _020C3470
	mov r1, #0x17
	bl FUN_ov1_020d5450
_020C3470:
	ldr r0, _020C3570 ; =0x0209F5C0
	mov r1, #0
	bl FUN_ov16_020f6a9c
	ldmfd sp!, {r3, r4, r5, pc}
_020C3480:
	ldr r1, [r4, #0xc]
	cmp r1, #0x4e
	beq _020C34A0
	cmp r1, #0x55
	beq _020C34C4
	cmp r1, #0x56
	beq _020C34AC
	b _020C34C8
_020C34A0:
	mov r1, #0x1a
	bl FUN_ov1_020d5450
	b _020C34C8
_020C34AC:
	mov r1, #0x1a
	bl FUN_ov1_020d5450
	mov r0, r4
	mov r1, #0x51
	bl FUN_ov1_020bf9f4
	b _020C34C8
_020C34C4:
	bl FUN_ov1_020d5888
_020C34C8:
	ldr r0, _020C3570 ; =0x0209F5C0
	mov r1, #0
	bl FUN_ov16_020f6a9c
	ldmfd sp!, {r3, r4, r5, pc}
_020C34D8:
	ldr r1, [r4, #0xc]
	cmp r1, #0x33
	bne _020C34E8
	bl FUN_ov1_020d18a4
_020C34E8:
	ldr r0, _020C3570 ; =0x0209F5C0
	mov r1, #0
	bl FUN_ov16_020f6a9c
	ldmfd sp!, {r3, r4, r5, pc}
_020C34F8:
	mov r1, r5
	bl FUN_ov1_020d06dc
	ldr r0, _020C3570 ; =0x0209F5C0
	mov r1, r5
	bl FUN_ov16_020f6a9c
	ldmfd sp!, {r3, r4, r5, pc}
_020C3510:
	mov r1, #1
	bl FUN_ov1_020d06dc
	ldr r0, _020C3570 ; =0x0209F5C0
	mov r1, r5
	bl FUN_ov16_020f6a9c
	ldmfd sp!, {r3, r4, r5, pc}
_020C3528:
	mov r1, #3
	bl FUN_ov1_020d06dc
	ldr r0, _020C3570 ; =0x0209F5C0
	mov r1, r5
	bl FUN_ov16_020f6a9c
	ldmfd sp!, {r3, r4, r5, pc}
_020C3540:
	mov r1, #2
	bl FUN_ov1_020d06dc
	ldr r0, _020C3570 ; =0x0209F5C0
	mov r1, r5
	bl FUN_ov16_020f6a9c
	ldmfd sp!, {r3, r4, r5, pc}
_020C3558:
	ldr r0, _020C3570 ; =0x0209F5C0
	mov r1, #0
	bl FUN_ov16_020f6a9c
	ldmfd sp!, {r3, r4, r5, pc}
_020C3568: .word 0x02099EF0
_020C356C: .word 0x020A0640
_020C3570: .word 0x0209F5C0
	arm_func_end FUN_ov1_020c32d4

	arm_func_start FUN_ov1_020c3574
FUN_ov1_020c3574: ; 0x020C3574
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, lr}
	mov r5, #0
	mov r7, r0
	sub r1, r5, #1
	mov r0, #1
	strb r0, [r7, #0x1d]
	ldr r4, _020C3758 ; =0x02099EF0
	str r5, [r7, #8]
	strb r5, [r7, #0x2c]
	strb r5, [r7, #0x2d]
	strb r5, [r7, #0x2e]
	strb r5, [r7, #0x2f]
	str r5, [r7, #0x30]
	str r5, [r7, #0x4c]
	str r5, [r7, #0x14]
	str r5, [r7, #0x50]
	strb r5, [r7, #0x1f]
	strb r5, [r7, #0x1e]
	strb r5, [r7, #0x20]
	strb r5, [r7, #0x54]
	strb r5, [r7, #0x58]
	str r5, [r7, #0x2b8]
	str r5, [r7, #0x2c4]
	str r1, [r7, #0x34]
	str r1, [r7, #0x38]
	str r1, [r7, #0x3c]
	str r1, [r7, #0x40]
	str r1, [r7, #0x44]
	str r1, [r7, #0x48]
	ldr r1, [r4]
	ldr r0, _020C375C ; =0x020EAAB8
	strb r5, [r1, #0x374]
	ldr r1, [r0]
	cmp r1, #0
	strlt r5, [r0]
	mov r0, r7
	bl FUN_ov1_020cc428
	ldr r0, _020C3760 ; =0x0209F5C0
	mov r1, #0
	bl FUN_ov16_020f5a58
	mov r6, #2
	ldr r0, _020C3764 ; =0x0209A070
	mov r1, r6
	bl FUN_ov16_020f6c20
	mov r1, r6
	add r0, r7, #0x2cc
	bl FUN_ov16_020f2f7c
	mov r6, #1
	mov r0, r7
	mov r1, r6
	bl FUN_ov1_020d0364
	ldr r8, _020C3768 ; =0x0209A128
	ldr r0, [r8]
	bl FUN_ov1_020dc268
	ldr r0, [r8]
	bl FUN_ov1_020dc3e8
	ldr r0, [r8]
	bl FUN_ov1_020dc3f0
	ldr r0, _020C376C ; =0x0209A114
	ldr r0, [r0]
	bl FUN_ov1_020dd834
	ldr r0, [r7, #4]
	bl FUN_0204204c
	cmp r0, #0x37
	beq _020C3688
	ldr r0, [r7, #4]
	bl FUN_0204204c
	cmp r0, #0x3e
	bne _020C368C
_020C3688:
	mov r6, #0
_020C368C:
	ldr r0, [r4]
	bl FUN_ov132_021491fc
	ldr r0, _020C3770 ; =0x020A0640
	mov r9, #0
	ldrb r0, [r0, #0x1a]
	cmp r0, #0
	ldr r0, [r4]
	movne r6, #1
	bl FUN_ov132_021458e4
	cmp r0, #0
	bne _020C36C4
	bl FUN_ov1_020db338
	cmp r0, #0
	beq _020C36D8
_020C36C4:
	ldr r0, _020C3774 ; =0x0209BA20
	bl FUN_020731a4
	mov r9, #0x10
	cmp r0, #0
	moveq r9, #0x410
_020C36D8:
	ldr r8, _020C3778 ; =0x02099F14
	mvn r0, r9
	mov r1, r0, lsl #0x10
	ldr r0, [r8]
	mov r2, r6
	mov r1, r1, lsr #0x10
	bl FUN_ov1_020df1dc
	ldr r0, [r8]
	mov r1, #1
	bl FUN_ov1_020e3de4
	ldr r0, [r8]
	mov r1, #0x800
	bl FUN_ov1_020e4354
	strb r5, [r7, #0x21]
	strb r5, [r7, #0x22]
	ldr r0, [r8]
	mov r1, #0x4000
	bl FUN_ov1_020e4354
	strb r5, [r7, #0x23]
	bl FUN_ov1_020db338
	cmp r0, #0
	bne _020C3738
	ldr r0, [r4]
	bl FUN_01ffb144
_020C3738:
	ldr r0, [r4]
	mov r1, #1
	bl FUN_ov132_02148ba4
	ldr r0, [r4]
	bl FUN_ov132_02148bac
	ldr r0, [r4]
	bl FUN_ov132_02149238
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
_020C3758: .word 0x02099EF0
_020C375C: .word 0x020EAAB8
_020C3760: .word 0x0209F5C0
_020C3764: .word 0x0209A070
_020C3768: .word 0x0209A128
_020C376C: .word 0x0209A114
_020C3770: .word 0x020A0640
_020C3774: .word 0x0209BA20
_020C3778: .word 0x02099F14
	arm_func_end FUN_ov1_020c3574

	arm_func_start FUN_ov1_020c377c
FUN_ov1_020c377c: ; 0x020C377C
	stmfd sp!, {r3, r4, r5, lr}
	ldr r1, _020C3824 ; =0x0209A128
	mov r4, r0
	ldr r0, [r1]
	bl FUN_ov1_020dc2f0
	ldr r0, [r4, #4]
	mov r5, #1
	bl FUN_0204201c
	cmp r0, #0x3e
	beq _020C37B4
	ldr r0, [r4, #4]
	bl FUN_0204201c
	cmp r0, #0x37
	bne _020C37B8
_020C37B4:
	mov r5, #0
_020C37B8:
	ldr r0, _020C3828 ; =0x02099F14
	mov r1, r5
	ldr r0, [r0]
	bl FUN_ov1_020df110
	ldr r0, _020C382C ; =0x02099F10
	ldr r0, [r0]
	bl FUN_0205c468
	mov r5, #0
	ldr r0, _020C3830 ; =0x0209F5C0
	mov r1, r5
	bl FUN_ov16_020f5af0
	ldr r0, _020C3834 ; =0x0209A070
	bl FUN_ov16_020f6c58
	mov r0, r4
	ldr r1, [r0]
	ldr r1, [r1, #0x6c]
	blx r1
	add r0, r4, #0x348
	mov r1, #0x4f
	bl FUN_ov16_020f338c
	mov r0, r4
	bl FUN_ov1_020d0698
	ldr r1, [r4, #8]
	ldr r0, _020C3838 ; =0x020EAAB8
	str r1, [r0]
	str r5, [r4, #8]
	ldmfd sp!, {r3, r4, r5, pc}
_020C3824: .word 0x0209A128
_020C3828: .word 0x02099F14
_020C382C: .word 0x02099F10
_020C3830: .word 0x0209F5C0
_020C3834: .word 0x0209A070
_020C3838: .word 0x020EAAB8
	arm_func_end FUN_ov1_020c377c

	arm_func_start FUN_ov1_020c383c
FUN_ov1_020c383c: ; 0x020C383C
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	ldr r4, _020C38D4 ; =0x0209A4E4
	mov r7, r0
	add r0, r4, #0xc
	mov r6, r1
	mov r5, r3
	bl FUN_ov1_020cbd5c
	ldr r0, _020C38D8 ; =0x020EAAB0
	ldrb r2, [r0]
	add r1, r2, #1
	and r1, r1, #0xff
	and r1, r1, #0xf
	strb r1, [r0]
	tst r1, #0xff
	moveq r1, #1
	streqb r1, [r0]
	mov r1, r6
	add r0, r4, #0xc
	strb r2, [r4, #0x13]
	bl FUN_ov1_020cbdf0
	ldr r0, _020C38DC ; =0x0209AEC0
	strb r5, [r4, #0x10]
	bl FUN_02046730
	add r2, r7, #0x8c
	add r2, r2, r0, lsl #7
	ldrb r1, [r4, #0x13]
	ldr r0, [r4, #0xc]
	str r0, [r2, r1, lsl #3]
	ldrb r0, [r4, #0x10]
	add r3, r2, r1, lsl #3
	strb r0, [r3, #4]
	ldrb r0, [r4, #0x11]
	strb r0, [r3, #5]
	ldrb r0, [r4, #0x12]
	strb r0, [r3, #6]
	ldrb r0, [r4, #0x13]
	strb r0, [r3, #7]
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_020C38D4: .word 0x0209A4E4
_020C38D8: .word 0x020EAAB0
_020C38DC: .word 0x0209AEC0
	arm_func_end FUN_ov1_020c383c

	arm_func_start FUN_ov1_020c38e0
FUN_ov1_020c38e0: ; 0x020C38E0
	stmfd sp!, {r0, r1, r2, r3}
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	sub sp, sp, #8
	ldr r4, _020C3A14 ; =0x0209A4E4
	mov r7, r0
	add r0, r4, #0xc
	mov r6, r1
	mov r5, r2
	bl FUN_ov1_020cbd5c
	ldr r0, _020C3A18 ; =0x020EAAB0
	ldrb r2, [r0]
	add r1, r2, #1
	and r1, r1, #0xff
	and r1, r1, #0xf
	strb r1, [r0]
	tst r1, #0xff
	moveq r1, #1
	streqb r1, [r0]
	mov r1, r6
	add r0, r4, #0xc
	strb r2, [r4, #0x13]
	bl FUN_ov1_020cbdf0
	ldrb r0, [sp, #0x34]
	cmp r6, #7
	strb r0, [r4, #0x10]
	beq _020C3950
	cmp r6, #4
	bne _020C396C
_020C3950:
	ldr r0, _020C3A1C ; =0x02099EF0
	mov r1, r5
	ldr r0, [r0]
	bl FUN_ov132_02147e90
	cmp r0, #1
	moveq r0, #0x13
	streqb r0, [r4, #0x12]
_020C396C:
	mov r0, #0
	bl FUN_ov16_020f085c
	mov r5, r0
	ldr r0, _020C3A20 ; =0x0209AEC0
	bl FUN_02046730
	bl FUN_ov16_020f085c
	cmp r5, r0
	beq _020C3998
	add r0, sp, #0x2c
	add r1, sp, #0x30
	bl FUN_ov16_020f025c
_020C3998:
	ldr r0, [sp, #0x2c]
	ldr r1, [sp, #0x30]
	add r2, sp, #4
	add r3, sp, #0
	bl FUN_ov16_020f02f0 ; may be ov17
	ldr r1, [sp, #4]
	add r0, r4, #0xc
	bl FUN_ov1_020cbdb0
	ldr r1, [sp]
	add r0, r4, #0xc
	bl FUN_ov1_020cbdd0
	ldr r0, _020C3A20 ; =0x0209AEC0
	bl FUN_02046730
	add r2, r7, #0x8c
	add r2, r2, r0, lsl #7
	ldrb r1, [r4, #0x13]
	ldr r0, [r4, #0xc]
	str r0, [r2, r1, lsl #3]
	ldrb r0, [r4, #0x10]
	add r3, r2, r1, lsl #3
	strb r0, [r3, #4]
	ldrb r0, [r4, #0x11]
	strb r0, [r3, #5]
	ldrb r0, [r4, #0x12]
	strb r0, [r3, #6]
	ldrb r0, [r4, #0x13]
	strb r0, [r3, #7]
	add sp, sp, #8
	ldmfd sp!, {r3, r4, r5, r6, r7, lr}
	add sp, sp, #0x10
	bx lr
_020C3A14: .word 0x0209A4E4
_020C3A18: .word 0x020EAAB0
_020C3A1C: .word 0x02099EF0
_020C3A20: .word 0x0209AEC0
	arm_func_end FUN_ov1_020c38e0

	arm_func_start FUN_ov1_020c3a24
FUN_ov1_020c3a24: ; 0x020C3A24
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	ldr r4, _020C3AEC ; =0x0209A4E4
	mov r7, r0
	add r0, r4, #0xc
	mov r6, r1
	mov r5, r3
	bl FUN_ov1_020cbd5c
	ldr r0, _020C3AF0 ; =0x020EAAB0
	ldrb r2, [r0]
	add r1, r2, #1
	and r1, r1, #0xff
	and r1, r1, #0xf
	strb r1, [r0]
	tst r1, #0xff
	moveq r1, #1
	streqb r1, [r0]
	mov r1, r6
	add r0, r4, #0xc
	strb r2, [r4, #0x13]
	bl FUN_ov1_020cbdf0
	ldrb r2, [sp, #0x18]
	mov r1, r5
	add r0, r4, #0xc
	bl FUN_ov1_020cbd94
	ldr r0, _020C3AF4 ; =0x0209AEC0
	bl FUN_02046730
	add r2, r7, #0x8c
	add r2, r2, r0, lsl #7
	ldrb r1, [r4, #0x13]
	ldr r0, [r4, #0xc]
	cmp r6, #0xa
	str r0, [r2, r1, lsl #3]
	cmpne r6, #9
	cmpne r6, #0xc
	ldrb r0, [r4, #0x10]
	add r3, r2, r1, lsl #3
	cmpne r6, #0xf
	strb r0, [r3, #4]
	ldrb r0, [r4, #0x11]
	strb r0, [r3, #5]
	ldrb r0, [r4, #0x12]
	strb r0, [r3, #6]
	ldrb r0, [r4, #0x13]
	strb r0, [r3, #7]
	moveq r0, #0x1e
	streqh r0, [r7, #0x86]
	ldreqb r0, [r4, #0x13]
	streqb r0, [r7, #0x88]
	streqb r6, [r7, #0x89]
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_020C3AEC: .word 0x0209A4E4
_020C3AF0: .word 0x020EAAB0
_020C3AF4: .word 0x0209AEC0
	arm_func_end FUN_ov1_020c3a24

	arm_func_start FUN_ov1_020c3af8
FUN_ov1_020c3af8: ; 0x020C3AF8
	stmfd sp!, {r4, lr}
	ldrb r3, [r2, #7]
	add r0, r0, #0xa2
	ldr r4, _020C3B40 ; =0x0209A4E4
	add lr, r0, #0x200
	mov r12, r1, lsl #1
	and r0, r3, #0xf
	mov r3, #1
	mov r0, r3, lsl r0
	ldrh r3, [lr, r12]
	mov r0, r0, lsl #0x10
	add r4, r4, #0x14
	orr r0, r3, r0, lsr #16
	strh r0, [lr, r12]
	ldrb r0, [r2, #7]
	and r0, r0, #0xf
	strb r0, [r4, r1]
	ldmfd sp!, {r4, pc}
_020C3B40: .word 0x0209A4E4
	arm_func_end FUN_ov1_020c3af8

	arm_func_start FUN_ov1_020c3b44
FUN_ov1_020c3b44: ; 0x020C3B44
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	mov r4, r0
	ldrsh r0, [r4, #0x86]
	cmp r0, #0
	ldmlefd sp!, {r3, r4, r5, r6, r7, pc}
	sub r0, r0, #1
	strh r0, [r4, #0x86]
	ldrsh r0, [r4, #0x86]
	cmp r0, #0
	ldmnefd sp!, {r3, r4, r5, r6, r7, pc}
	ldr r0, _020C3BD0 ; =0x0209AEC0
	bl FUN_02046730
	add r2, r4, #0x8c
	ldrb r1, [r4, #0x88]
	add r0, r2, r0, lsl #7
	add r7, r0, r1, lsl #3
	mov r0, r7
	bl FUN_ov1_020cbe28
	ldrb r1, [r4, #0x89]
	cmp r1, r0
	ldmnefd sp!, {r3, r4, r5, r6, r7, pc}
	bl FUN_ov16_020f081c
	mov r6, r0
	mov r0, r7
	bl FUN_ov1_020cbda0
	mov r5, r0
	mov r0, r7
	bl FUN_ov1_020cbda8
	mov r2, r6
	mov r3, r5
	str r0, [sp]
	mov r0, r4
	ldrb r1, [r4, #0x89]
	bl FUN_ov1_020c3a24
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_020C3BD0: .word 0x0209AEC0
	arm_func_end FUN_ov1_020c3b44

	arm_func_start FUN_ov1_020c3bd4
FUN_ov1_020c3bd4: ; 0x020C3BD4
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, lr}
	sub sp, sp, #0x28
	ldr r1, _020C403C ; =0x020A0640
	mov r9, r0
	ldrb r1, [r1, #0x1b]
	mov r7, #0
	mov r11, #1
	add r2, sp, #0
	cmp r1, #0
	moveq r6, r11
	ldr r0, _020C4040 ; =0x0209AEC0
	mov r8, r7
	strb r7, [r2]
	strb r7, [r2, #1]
	strb r7, [r2, #2]
	movne r6, #3
	bl FUN_02046744
	mov r4, r0
	mov r5, #0
	b _020C3C74
_020C3C24:
	add r0, r5, #1
	tst r4, r11, lsl r0
	beq _020C3C70
	mov r1, #0
	bl FUN_ov16_020f0634
	mov r10, r0
	ldrb r3, [r10, #3]
	add r1, sp, #0x1c
	ldr r2, [r10, #0xc]
	str r3, [r1, r5, lsl #2]
	add r1, sp, #0x10
	add r0, r10, #4
	str r2, [r1, r5, lsl #2]
	bl FUN_ov1_020cbfa0
	add r1, sp, #4
	str r0, [r1, r5, lsl #2]
	ldrb r1, [r10, #2]
	add r0, sp, #0
	strb r1, [r0, r5]
_020C3C70:
	add r5, r5, #1
_020C3C74:
	cmp r5, r6
	blt _020C3C24
	ldr r1, _020C403C ; =0x020A0640
	mov r0, #1
	ldrb r1, [r1, #0x1b]
	mov r2, #0
	cmp r1, #0
	beq _020C3D2C
	ldr r1, _020C4044 ; =0x020EAAC4
	mov r5, r2
	ldr r10, [r1]
	add r3, sp, #0x10
	b _020C3CD0
_020C3CA8:
	add r1, r5, #1
	tst r4, r0, lsl r1
	beq _020C3CCC
	ldr r1, [r3, r5, lsl #2]
	mov r7, r0
	cmp r10, r1
	movne r7, r2
	cmp r7, #0
	beq _020C3CD8
_020C3CCC:
	add r5, r5, #1
_020C3CD0:
	cmp r5, r6
	blt _020C3CA8
_020C3CD8:
	ldr r0, [r9, #0x70]
	mov r10, #1
	cmp r0, #0
	mov r0, #0
	ble _020C3D2C
	mov r5, r0
	add r2, sp, #4
	b _020C3D24
_020C3CF8:
	add r1, r5, #1
	tst r4, r10, lsl r1
	beq _020C3D20
	ldr r3, [r9, #0x70]
	ldr r1, [r2, r5, lsl #2]
	mov r8, r10
	cmp r3, r1
	movne r8, r0
	cmp r8, #0
	beq _020C3D2C
_020C3D20:
	add r5, r5, #1
_020C3D24:
	cmp r5, r6
	blt _020C3CF8
_020C3D2C:
	ldr r0, [r9, #0x2a8]
	ldr r1, [r9, #8]
	add r0, r0, #1
	str r0, [r9, #0x2a8]
	cmp r1, #0x22
	mov r2, #1
	bgt _020C3DD4
	cmp r1, #0x22
	bge _020C3F04
	cmp r1, #0x18
	bgt _020C3DB0
	subs r0, r1, #0xa
	addpl pc, pc, r0, lsl #2
	b _020C3DA0
_020C3D64: ; jump table
	b _020C3E50 ; case 0
	b _020C4014 ; case 1
	b _020C3E50 ; case 2
	b _020C4014 ; case 3
	b _020C3E50 ; case 4
	b _020C4014 ; case 5
	b _020C4014 ; case 6
	b _020C4014 ; case 7
	b _020C3E50 ; case 8
	b _020C4014 ; case 9
	b _020C3E50 ; case 10
	b _020C4014 ; case 11
	b _020C3E50 ; case 12
	b _020C4014 ; case 13
	b _020C3E50 ; case 14
_020C3DA0:
	cmp r1, #3
	beq _020C3E28
	add sp, sp, #0x28
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_020C3DB0:
	cmp r1, #0x1e
	bgt _020C3DC4
	beq _020C3F04
	add sp, sp, #0x28
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_020C3DC4:
	cmp r1, #0x20
	beq _020C3F04
	add sp, sp, #0x28
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_020C3DD4:
	cmp r1, #0x32
	bgt _020C3E04
	bge _020C3F1C
	cmp r1, #0x28
	bgt _020C3DF4
	beq _020C3E50
	add sp, sp, #0x28
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_020C3DF4:
	cmp r1, #0x2a
	beq _020C3E50
	add sp, sp, #0x28
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_020C3E04:
	cmp r1, #0x3e
	bgt _020C3E18
	beq _020C3F7C
	add sp, sp, #0x28
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_020C3E18:
	cmp r1, #0x46
	beq _020C3F90
	add sp, sp, #0x28
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_020C3E28:
	mov r0, #3
	mov r1, #4
	mov r2, #0x3c
	mov r3, #0x46
	bl FUN_ov1_020db97c
	cmp r0, #0
	beq _020C401C
	mov r0, r9
	bl FUN_ov1_020c05e4
	b _020C401C
_020C3E50:
	mvn r1, #0
	ldr r0, [r9, #8]
	mov r2, r1
	mov r3, #0
	bl FUN_ov1_020db97c
	cmp r0, #0
	beq _020C3E70
	b _020C3FF4
_020C3E70:
	cmp r7, #0
	beq _020C401C
	ldr r0, [r9, #8]
	cmp r0, #0x18
	bne _020C3EB0
	ldr r0, _020C4048 ; =0x02099EF0
	ldr r0, [r0]
	bl FUN_ov132_021434f8
	cmp r0, #0
	beq _020C3EB0
	mov r2, #0x1a
	mov r0, r9
	mov r1, #0x50
	str r2, [r9, #8]
	bl FUN_ov1_020bf9f4
	b _020C401C
_020C3EB0:
	ldr r1, [r9, #8]
	cmp r1, #0x12
	bne _020C3F00
	ldr r0, _020C4048 ; =0x02099EF0
	ldr r0, [r0]
	bl FUN_ov126_0213777c
	mov r5, r0
	ldrsb r0, [r5, #0x20]
	bl FUN_ov16_020f07f4
	mov r4, r0
	ldrsb r0, [r5, #0x24]
	bl FUN_ov16_020f07f4
	cmp r4, r0
	mov r0, r9
	bne _020C3EF8
	mov r1, #0x11
_020C3EF0:
	bl FUN_ov1_020bffd4
	b _020C401C
_020C3EF8:
	mov r1, #0x10
	b _020C3EF0
_020C3F00:
	b _020C3F10
_020C3F04:
	cmp r7, #0
	beq _020C401C
	ldr r1, [r9, #8]
_020C3F10:
	mov r0, r9
	add r1, r1, #1
	b _020C3EF0
_020C3F1C:
	mov r3, r2
	mov r5, #0
	add r1, sp, #0x1c
	b _020C3F4C
_020C3F2C:
	add r0, r5, #1
	tst r4, r2, lsl r0
	ldrne r0, [r1, r5, lsl #2]
	cmpne r0, #0x33
	cmpne r0, #0x66
	movne r3, #0
	bne _020C3F54
	add r5, r5, #1
_020C3F4C:
	cmp r5, r6
	blt _020C3F2C
_020C3F54:
	cmp r3, #0
	beq _020C401C
	ldrb r0, [r9, #0x54]
	cmp r0, #0
	mov r0, r9
	beq _020C3F74
	mov r1, #0x66
	b _020C3EF0
_020C3F74:
	mov r1, #0x33
	b _020C3EF0
_020C3F7C:
	cmp r7, #0
	beq _020C401C
	mov r0, r9
	bl FUN_ov1_020c0d18
	b _020C401C
_020C3F90:
	ldrb r0, [sp]
	cmp r0, #0
	beq _020C3FA4
	cmp r0, #0x36
	bne _020C3FD8
_020C3FA4:
	ldrb r0, [sp, #1]
	cmp r0, #0
	beq _020C3FB8
	cmp r0, #0x36
	bne _020C3FD8
_020C3FB8:
	ldrb r0, [sp, #2]
	cmp r0, #0
	cmpne r0, #0x36
	bne _020C3FD8
_020C3FC8:
	mov r0, r9
	mov r1, #0x47
	bl FUN_ov1_020c05b0
	b _020C401C
_020C3FD8:
	mov r0, #0x46
	sub r1, r0, #0x47
	mov r2, r1
	mov r3, #0
	bl FUN_ov1_020db97c
	cmp r0, #0
	beq _020C4008
_020C3FF4:
	cmp r8, #0
	ldrne r0, [r9, #0x70]
	addne r0, r0, #1
	strne r0, [r9, #0x70]
	b _020C401C
_020C4008:
	cmp r7, #0
	beq _020C401C
	b _020C3FC8
_020C4014:
	add sp, sp, #0x28
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_020C401C:
	ldr r0, [r9, #0x2a8]
	cmp r0, #0x258
	addlo sp, sp, #0x28
	ldmlofd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
	ldr r0, _020C4040 ; =0x0209AEC0
	bl FUN_02046e28
	add sp, sp, #0x28
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_020C403C: .word 0x020A0640
_020C4040: .word 0x0209AEC0
_020C4044: .word 0x020EAAC4
_020C4048: .word 0x02099EF0
	arm_func_end FUN_ov1_020c3bd4

	arm_func_start FUN_ov1_020c404c
FUN_ov1_020c404c: ; 0x020C404C
	stmfd sp!, {r3, r4, r5, lr}
	ldr r0, _020C40C4 ; =0x0209AEC0
	ldrb r0, [r0, #0x64]
	cmp r0, #0
	ldmnefd sp!, {r3, r4, r5, pc}
	mov r5, #0
	ldr r4, _020C40C8 ; =0x02099EF0
	b _020C40A4
_020C406C:
	ldr r0, [r4]
	mov r1, r5
	bl FUN_ov126_0213922c
	cmp r0, #0
	ldrne r2, [r0, #0x84]
	cmpne r2, #0
	beq _020C40A0
	ldr r1, [r0, #0x88]
	ldr r1, [r1]
	str r1, [r2]
	ldr r0, [r0, #0x88]
	ldr r0, [r0, #4]
	str r0, [r2, #4]
_020C40A0:
	add r5, r5, #1
_020C40A4:
	cmp r5, #0x16
	blt _020C406C
	ldr r0, _020C40C8 ; =0x02099EF0
	mov r1, #1
	ldr r0, [r0]
	mov r2, #0
	bl FUN_ov132_021435c0
	ldmfd sp!, {r3, r4, r5, pc}
_020C40C4: .word 0x0209AEC0
_020C40C8: .word 0x02099EF0
	arm_func_end FUN_ov1_020c404c

	arm_func_start FUN_ov1_020c40cc
FUN_ov1_020c40cc: ; 0x020C40CC
	stmfd sp!, {r4, r5, r6, lr}
	sub sp, sp, #8
	mov r6, r2
	ldr r4, [r1, #0x88]
	add r1, sp, #4
	add r2, sp, #0
	mov r0, r6
	mov r5, r3
	bl FUN_ov16_020f02d0
	ldr r1, [sp, #4]
	mov r0, r5
	bl FUN_ov1_020cae88
	ldr r1, [sp]
	mov r0, r5
	bl FUN_ov1_020caea8
	ldr r0, _020C4180 ; =0x02099EF0
	ldr r0, [r0]
	bl FUN_ov132_021434f8
	cmp r0, #0
	beq _020C4128
	mov r0, r5
	mov r1, #0
	b _020C4150
_020C4128:
	ldrb r0, [r4, #0x85]
	ldrb r1, [r4, #0x84]
	cmp r1, r0
	bhs _020C4140
	cmp r0, #0
	bne _020C414C
_020C4140:
	mov r0, r5
	mov r1, #0xa
	b _020C4150
_020C414C:
	mov r0, r5
_020C4150:
	bl FUN_ov1_020caef8
	ldrb r1, [r6, #0x1c]
	mov r0, r5
	bl FUN_ov1_020caec8
	ldrh r0, [r6, #0x16]
	tst r0, #0x100
	movne r1, #1
	moveq r1, #0
	mov r0, r5
	bl FUN_ov1_020caee0
	add sp, sp, #8
	ldmfd sp!, {r4, r5, r6, pc}
_020C4180: .word 0x02099EF0
	arm_func_end FUN_ov1_020c40cc

	arm_func_start FUN_ov1_020c4184
FUN_ov1_020c4184: ; 0x020C4184
	stmfd sp!, {r3, r4, r5, lr}
	mov r5, r2
	ldrb r1, [r5, #0x1d]
	mov r4, r3
	mov r0, r4
	bl FUN_ov1_020caf60
	ldrb r1, [r5, #0x1b]
	mov r0, r4
	bl FUN_ov1_020caf80
	ldrh r1, [r5, #0x10]
	mov r0, r4
	bl FUN_ov1_020cafa0
	ldmfd sp!, {r3, r4, r5, pc}
	arm_func_end FUN_ov1_020c4184

	arm_func_start FUN_ov1_020c41b8
FUN_ov1_020c41b8: ; 0x020C41B8
	mov r2, r2, asr #6
	mov r0, #0xa
	mul r0, r2, r0
	add r0, r0, r1, asr #6
	bx lr
	arm_func_end FUN_ov1_020c41b8

	arm_func_start FUN_ov1_020c41cc
FUN_ov1_020c41cc: ; 0x020C41CC
	and r0, r1, #0x3f
	bx lr
	arm_func_end FUN_ov1_020c41cc

	arm_func_start FUN_ov1_020c41d4
FUN_ov1_020c41d4: ; 0x020C41D4
	stmfd sp!, {r3, lr}
	ldr r12, _020C4200 ; =0x66666667
	mov r0, r1, lsr #0x1f
	smull r3, lr, r12, r1
	add lr, r0, lr, asr #2
	mov r12, #0xa
	smull r0, r3, r12, lr
	sub lr, r1, r0
	add r0, r2, lr, lsl #6
	mov r0, r0, lsl #0xc
	ldmfd sp!, {r3, pc}
_020C4200: .word 0x66666667
	arm_func_end FUN_ov1_020c41d4

	arm_func_start FUN_ov1_020c4204
FUN_ov1_020c4204: ; 0x020C4204
	ldr r3, _020C4220 ; =0x66666667
	mov r0, r1, lsr #0x1f
	smull r1, r12, r3, r1
	add r12, r0, r12, asr #2
	add r0, r2, r12, lsl #6
	mov r0, r0, lsl #0xc
	bx lr
_020C4220: .word 0x66666667
	arm_func_end FUN_ov1_020c4204

	arm_func_start FUN_ov1_020c4224
FUN_ov1_020c4224: ; 0x020C4224
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, lr}
	sub sp, sp, #0x28
	ldr r6, [r1, #0x88]
	ldr r7, [sp, #0x50]
	str r1, [sp]
	cmp r6, #0
	mov r10, r0
	mov r9, r2
	mov r8, r3
	addeq sp, sp, #0x28
	moveq r0, #0
	ldmeqfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
	ldr r4, [r9]
	ldr r3, [r9, #4]
	mov r1, r4, asr #0xb
	mov r2, r3, asr #0xb
	add r1, r4, r1, lsr #20
	add r2, r3, r2, lsr #20
	mov r5, r1, asr #0xc
	mov r4, r2, asr #0xc
	mov r1, r5
	mov r2, r4
	bl FUN_ov1_020c41b8
	str r0, [sp, #0xc]
	mov r0, r10
	mov r1, r5
	bl FUN_ov1_020c41cc
	mov r11, r0
	mov r0, r10
	mov r1, r4
	bl FUN_ov1_020c41cc
	ldr r1, _020C44D0 ; =0x02099EF0
	mov r4, r0
	ldr r0, [r1]
	mov r5, #0
	bl FUN_ov132_02144780
	cmp r0, #0
	cmpne r0, #4
	cmpne r0, #8
	ldrne r0, _020C44D4 ; =0x0209BA20
	ldrneb r0, [r0, #0x87f]
	cmpne r0, #0
	movne r5, #1
	cmp r5, #0
	bne _020C4340
	ldr r2, [r6]
	ldr r0, [r9]
	cmp r2, r0
	bne _020C42F8
	ldr r1, [r6, #4]
	ldr r0, [r9, #4]
	cmp r1, r0
	beq _020C4340
_020C42F8:
	cmp r2, #0x80000000
	ldrne r0, [r6, #4]
	cmpne r0, #0x80000000
	ldrne r0, [r6, #0x14]
	cmpne r0, #0
	ldrneb r0, [r9, #0x1d]
	cmpne r0, #8
	beq _020C4340
	ldr r0, [sp]
	bl FUN_0206da78
	cmp r0, #0x2d
	beq _020C4340
	ldr r0, [r10, #8]
	cmp r0, #4
	cmpne r0, #0x23
	cmpne r0, #0x29
	cmpne r0, #0x2b
	beq _020C4388
_020C4340:
	add r3, r7, #3
	cmp r3, #0x6e
	addgt sp, sp, #0x28
	movgt r0, #0
	ldmgtfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
	orr r0, r11, r4, lsl #6
	orr r0, r0, #0x4000
	mov r0, r0, lsl #0x10
	mov r0, r0, lsr #0x10
	strb r0, [r8, r7]
	mov r2, r0, asr #8
	add r0, r7, #1
	strb r2, [r8, r0]
	add r1, r7, #2
	ldr r0, [sp, #0xc]
	mov r7, r3
	strb r0, [r8, r1]
	b _020C44C4
_020C4388:
	ldrb r1, [r6, #0x84]
	ldrb r0, [r6, #0x85]
	ldmia r6, {r4, r5}
	cmp r1, r0
	addlo r0, r6, r1, lsl #3
	ldrlo r5, [r0, #0x38]
	ldrlo r4, [r0, #0x34]
	mov r1, r5, asr #0xb
	mov r0, r4, asr #0xb
	add r0, r4, r0, lsr #20
	add r1, r5, r1, lsr #20
	mov r11, r0, asr #0xc
	mov r0, r1, asr #0xc
	str r0, [sp, #8]
	ldr r2, [sp, #8]
	mov r0, r10
	mov r1, r11
	bl FUN_ov1_020c41b8
	str r0, [sp, #4]
	mov r0, r10
	mov r1, r11
	bl FUN_ov1_020c41cc
	mov r11, r0
	ldr r1, [sp, #8]
	mov r0, r10
	bl FUN_ov1_020c41cc
	ldr r1, [r6, #0x18]
	mov r2, #4
	cmp r1, #0
	add r2, r2, #1
	mov r1, #0x1000
	addne r2, r2, #1
	orr r1, r1, #0x4000
	add r2, r7, r2
	orrne r1, r1, #0x2000
	cmp r2, #0x6e
	addgt sp, sp, #0x28
	movgt r0, #0
	ldmgtfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
	orr r0, r11, r0, lsl #6
	orr r0, r1, r0
	mov r0, r0, lsl #0x10
	mov r0, r0, lsr #0x10
	strb r0, [r8, r7]
	add r2, r7, #1
	mov r0, r0, asr #8
	strb r0, [r8, r2]
	tst r1, #0x4000
	ldrne r0, [sp, #4]
	add r7, r7, #2
	strneb r0, [r8, r7]
	ldr r0, [r9]
	mov r2, #0
	str r0, [sp, #0x1c]
	ldr r3, [r9, #4]
	add r0, sp, #0x1c
	add r1, sp, #0x10
	str r3, [sp, #0x20]
	str r2, [sp, #0x24]
	str r4, [sp, #0x10]
	str r5, [sp, #0x14]
	str r2, [sp, #0x18]
	addne r7, r7, #1
	bl FUN_02009a1c
	ldr r1, [r6, #0x14]
	bl FX_Div
	movs r0, r0, asr #0xc
	moveq r0, #1
	strb r0, [r8, r7]
	add r1, r7, #1
	mov r0, r0, asr #8
	strb r0, [r8, r1]
	ldr r0, [r6, #0x18]
	add r7, r7, #2
	cmp r0, #0
	movne r0, r0, asr #7
	addne r0, r0, #0x80
	strneb r0, [r8, r7]
	addne r7, r7, #1
_020C44C4:
	mov r0, r7
	add sp, sp, #0x28
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_020C44D0: .word 0x02099EF0
_020C44D4: .word 0x0209BA20
	arm_func_end FUN_ov1_020c4224

	arm_func_start FUN_ov1_020c44d8
FUN_ov1_020c44d8: ; 0x020C44D8
	stmfd sp!, {r4, r5, r6, lr}
	ldr r0, _020C4574 ; =0x02099EF0
	mov r6, r2
	ldr r0, [r0]
	mov r5, r3
	ldr r4, [r1, #0x88]
	bl FUN_ov132_021434f8
	cmp r0, #0
	beq _020C4508
	mov r0, r5
	mov r1, #0
	b _020C4530
_020C4508:
	ldrb r0, [r4, #0x85]
	ldrb r1, [r4, #0x84]
	cmp r1, r0
	bhs _020C4520
	cmp r0, #0
	bne _020C452C
_020C4520:
	mov r0, r5
	mov r1, #0xa
	b _020C4530
_020C452C:
	mov r0, r5
_020C4530:
	bl FUN_ov1_020cb030
	ldrb r1, [r6, #0x1c]
	mov r0, r5
	bl FUN_ov1_020caff0
	ldrh r0, [r6, #0x16]
	tst r0, #0x100
	movne r1, #1
	moveq r1, #0
	mov r0, r5
	bl FUN_ov1_020cb010
	ldrb r1, [r6, #0x1d]
	mov r0, r5
	bl FUN_ov1_020cb050
	ldrb r1, [r6, #0x1b]
	mov r0, r5
	bl FUN_ov1_020cb070
	ldmfd sp!, {r4, r5, r6, pc}
_020C4574: .word 0x02099EF0
	arm_func_end FUN_ov1_020c44d8

	arm_func_start FUN_ov1_020c4578
FUN_ov1_020c4578: ; 0x020C4578
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	mov r4, r3
	mov r7, r0
	mov r6, r1
	mov r5, r2
	mov r0, r4
	bl FUN_ov1_020cb0e0
	mov r3, r0
	mov r0, r7
	mov r1, r6
	mov r2, r5
	bl FUN_ov1_020c40cc
	mov r0, r4
	bl FUN_ov1_020cb150
	mov r1, r6
	mov r2, r5
	mov r3, r0
	mov r0, r7
	bl FUN_ov1_020c4184
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
	arm_func_end FUN_ov1_020c4578

	arm_func_start FUN_ov1_020c45c8
FUN_ov1_020c45c8: ; 0x020C45C8
	stmfd sp!, {r4, r5, r6, r7, r8, lr}
	ldr r8, _020C469C ; =0x0209A114
	mov r4, #0
	ldr r0, [r8]
	mov r7, r1
	mov r5, r4
	mov r6, r4
	bl FUN_ov1_020de238
	cmp r0, #0
	beq _020C4674
	ldr r0, [r8]
	ldrb r0, [r0, #0x110]
	cmp r0, #0
	movne r0, #1
	moveq r0, r4
	cmp r0, #0
	beq _020C4628
	ldr r0, [r8]
	ldrb r0, [r0, #0x224]
	cmp r0, #0
	movne r0, #1
	moveq r0, #0
	cmp r0, #0
	bne _020C4674
_020C4628:
	ldr r0, [r8]
	mov r4, #1
	ldrb r0, [r0, #0x3a5]
	mov r2, #0
	ldr r1, [r8]
	cmp r0, #0
	ldr r0, [r8]
	moveq r4, #2
	ldrb r0, [r0, #0x224]
	cmp r0, #0
	movne r0, #1
	moveq r0, #0
	cmp r0, #0
	moveq r6, #1
	cmp r6, #0
	movne r2, #1
	mov r0, #0x114
	mla r0, r2, r0, r1
	ldrb r5, [r0, #0x111]
_020C4674:
	mov r0, r7
	and r1, r4, #0xff
	bl FUN_ov1_020cbfb0
	mov r0, r7
	mov r1, r5
	bl FUN_ov1_020cbfc8
	mov r0, r7
	mov r1, r6
	bl FUN_ov1_020cbfd0
	ldmfd sp!, {r4, r5, r6, r7, r8, pc}
_020C469C: .word 0x0209A114
	arm_func_end FUN_ov1_020c45c8

	arm_func_start FUN_ov1_020c46a0
FUN_ov1_020c46a0: ; 0x020C46A0
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, lr}
	sub sp, sp, #0x40
	mov r10, r0
	ldr r0, _020C4BEC ; =0x02099EF0
	mov r9, r1
	ldr r0, [r0]
	bl FUN_ov132_021434f8
	cmp r0, #0
	bne _020C46D0
	ldr r0, [r10, #8]
	cmp r0, #0x3d
	bne _020C46E8
_020C46D0:
	ldr r0, _020C4BEC ; =0x02099EF0
	mov r1, #1
	ldr r0, [r0]
	bl FUN_ov132_02143114
	mov r4, r0
	b _020C4778
_020C46E8:
	ldr r0, _020C4BF0 ; =0x0209A2C0
	add r4, sp, #0x14
	ldr r6, [r0]
	ldr r5, [r0, #4]
	ldr r3, [r0, #8]
	ldr r2, [r0, #0x18]
	ldr r1, [r0, #0x1c]
	str r6, [sp, #0x14]
	str r5, [sp, #0x18]
	str r3, [sp, #0x1c]
	str r2, [sp, #0x20]
	str r1, [sp, #0x24]
	ldr r1, [r0, #0x30]
	str r1, [sp, #0x28]
	ldr r1, [r0, #0x38]
	str r1, [sp, #0x2c]
	ldr r1, [r0, #0x48]
	strh r1, [sp, #0x30]
	ldr r1, [r0, #0x4c]
	strh r1, [sp, #0x32]
	ldrh r1, [r0, #0x52]
	strh r1, [sp, #0x34]
	ldrh r1, [r0, #0x56]
	strh r1, [sp, #0x36]
	ldrb r1, [r0, #0x5c]
	strb r1, [sp, #0x38]
	ldrb r1, [r0, #0x58]
	strb r1, [sp, #0x39]
	ldrb r1, [r0, #0x59]
	strb r1, [sp, #0x3a]
	ldrb r1, [r0, #0x5d]
	strb r1, [sp, #0x3b]
	ldrb r1, [r0, #0x5a]
	strb r1, [sp, #0x3c]
	ldrb r0, [r0, #0x5b]
	strb r0, [sp, #0x3d]
_020C4778:
	add r6, sp, #0x10
	add r5, sp, #0xc
	mov r0, r4
	mov r1, r6
	mov r2, r5
	bl FUN_ov16_020f02d0
	ldr r1, [sp, #0x10]
	mov r0, r9
	bl FUN_ov1_020cac38
	ldr r1, [sp, #0xc]
	mov r0, r9
	bl FUN_ov1_020cac58
	ldr r2, [r4, #0x14]
	mov r0, r9
	mov r1, r2, asr #0xb
	add r1, r2, r1, lsr #20
	mov r1, r1, asr #0xc
	add r1, r1, r1, lsr #31
	mov r1, r1, asr #1
	bl FUN_ov1_020cac78
	ldrsh r1, [r4, #0x1c]
	mov r0, r9
	bl FUN_ov1_020cad1c
	ldrsh r1, [r4, #0x1e]
	mov r0, r9
	bl FUN_ov1_020cad34
	ldrh r1, [r4, #0x20]
	mov r0, r9
	mov r1, r1, lsr #8
	bl FUN_ov1_020cad4c
	ldrh r1, [r4, #0x22]
	mov r0, r9
	mov r1, r1, lsr #8
	bl FUN_ov1_020cad64
	ldr r0, _020C4BF4 ; =0x02099F14
	ldr r0, [r0]
	bl FUN_ov1_020e3df4
	mov r1, r0
	mov r0, r9
	bl FUN_ov1_020cad94
	mov r1, r6
	mov r2, r5
	add r0, r4, #0xc
	bl FUN_ov16_020f02d0
	ldr r1, [sp, #0x10]
	mov r0, r9
	bl FUN_ov1_020cac94
	ldr r1, [sp, #0xc]
	mov r0, r9
	bl FUN_ov1_020cacb4
	ldrb r0, [r4, #0x29]
	mov r1, #1
	tst r0, #0x10
	movne r0, #1
	moveq r0, #0
	cmp r0, #0
	moveq r1, #0
	mov r0, r9
	bl FUN_ov1_020cad7c
	ldr r0, _020C4BF4 ; =0x02099F14
	ldr r0, [r0]
	bl FUN_ov1_020e3e94
	mov r1, r0
	mov r0, r9
	bl FUN_ov1_020cacd4
	ldrb r0, [r4, #0x29]
	tst r0, #0x40
	movne r1, #1
	moveq r1, #0
	mov r0, r9
	bl FUN_ov1_020cacec
	ldr r0, _020C4BF0 ; =0x0209A2C0
	ldrb r0, [r0, #0x5b]
	tst r0, #0x10
	movne r0, #1
	moveq r0, #0
	cmp r0, #0
	beq _020C48BC
	ldr r0, _020C4BF0 ; =0x0209A2C0
	mov r1, #0
	bl FUN_ov126_0212fbcc
_020C48BC:
	ldr r0, _020C4BF0 ; =0x0209A2C0
	ldrb r0, [r0, #0x5b]
	tst r0, #1
	movne r0, #1
	moveq r0, #0
	cmp r0, #0
	mov r0, r9
	bne _020C48E4
	mov r1, #0
	b _020C48E8
_020C48E4:
	mov r1, #1
_020C48E8:
	bl FUN_ov1_020cad04
	add r0, sp, #8
	add r1, r9, #0xae
	bl FUN_ov16_020f056c
	ldrb r1, [sp, #8]
	mov r0, r9
	bl FUN_ov1_020cb1b8
	ldr r0, _020C4BEC ; =0x02099EF0
	mov r11, #0
	ldr r0, [r0]
	mov r1, r11
	bl FUN_ov132_02144f90
	mov r1, r0, lsl #0x10
	mov r0, r9
	mov r1, r1, lsr #0x10
	bl FUN_ov1_020cb188
	ldr r0, _020C4BEC ; =0x02099EF0
	mov r1, #1
	ldr r0, [r0]
	bl FUN_ov132_02144f90
	mov r0, r0, lsl #0x10
	mov r1, r0, lsr #0x10
	mov r0, r9
	bl FUN_ov1_020cb1a0
	ldr r0, _020C4BEC ; =0x02099EF0
	ldr r0, [r0]
	bl FUN_ov132_02152fdc
	strb r0, [r9, #0xaf]
	ldr r0, _020C4BEC ; =0x02099EF0
	ldr r0, [r0]
	bl FUN_ov132_02152f98
	mov r0, r0, lsl #0x10
	mov r1, r0, lsr #0x10
	mov r0, r9
	bl FUN_ov1_020cb1d0
	ldrsh r6, [r4, #0x1c]
	mov r8, r11
	cmp r6, #0
	ldrltsh r6, [r4, #0x1e]
	cmp r6, #0
	blt _020C4A08
	mov r0, r6
	bl FUN_ov16_020efa80
	mov r5, r0
	ldr r0, _020C4BEC ; =0x02099EF0
	mov r1, r6
	ldr r0, [r0]
	mov r2, #0
	bl FUN_ov132_021430b4
	mov r4, r0
	cmp r5, #0
	beq _020C4A08
	mov r0, r5
	bl FUN_0206d688
	cmp r0, #0
	cmpne r4, #0
	beq _020C4A08
	ldr r0, _020C4BEC ; =0x02099EF0
	mov r1, r5
	ldr r0, [r0]
	bl FUN_ov126_02139298
	cmp r0, #0
	blt _020C4A08
	str r11, [sp]
	str r0, [sp, #4]
	mov r0, r10
	mov r1, r5
	mov r2, r4
	add r3, r9, #0xc
	bl FUN_ov1_020c4224
	mov r11, r0
	add r8, r8, #1
_020C4A08:
	ldr r1, [r10, #0x74]
	mov r0, r9
	and r1, r1, #0xff
	bl FUN_ov1_020cb228
	ldr r5, [r10, #0x74]
	mov r7, #0
	b _020C4A94
_020C4A24:
	ldr r0, _020C4BEC ; =0x02099EF0
	add r5, r5, #1
	cmp r5, #0x16
	movge r5, #0
	ldr r0, [r0]
	mov r1, r5
	bl FUN_ov126_0213922c
	movs r4, r0
	ldrnesh r1, [r4, #0x94]
	cmpne r1, r6
	beq _020C4A90
	ldr r0, _020C4BEC ; =0x02099EF0
	mov r2, #0
	ldr r0, [r0]
	bl FUN_ov132_021430b4
	movs r2, r0
	beq _020C4A90
	str r11, [sp]
	mov r0, r10
	mov r1, r4
	add r3, r9, #0xc
	str r5, [sp, #4]
	bl FUN_ov1_020c4224
	movs r11, r0
	beq _020C4A9C
	str r5, [r10, #0x74]
	add r8, r8, #1
_020C4A90:
	add r7, r7, #1
_020C4A94:
	cmp r7, #0x16
	blt _020C4A24
_020C4A9C:
	mov r0, r9
	and r1, r8, #0xff
	bl FUN_ov1_020cb240
	mov r8, #0
	mov r0, r8
	str r0, [r9, #0xa8]
	cmp r6, #0
	blt _020C4B48
	mov r0, r6
	bl FUN_ov16_020efa80
	mov r5, r0
	ldr r0, _020C4BEC ; =0x02099EF0
	mov r1, r6
	ldr r0, [r0]
	mov r2, r8
	bl FUN_ov132_021430b4
	mov r4, r0
	cmp r5, #0
	beq _020C4B48
	mov r0, r5
	bl FUN_0206d688
	cmp r0, #0
	cmpne r4, #0
	beq _020C4B48
	ldr r0, _020C4BEC ; =0x02099EF0
	mov r1, r5
	ldr r0, [r0]
	bl FUN_ov126_02139298
	cmp r0, #0
	blt _020C4B48
	ldr r2, [r9, #0xa8]
	mov r1, #1
	orr r8, r2, r1, lsl r0
	mov r2, r4
	add r7, r9, #0x7a
	mov r3, #0
	mov r0, r10
	mov r1, r5
	add r3, r7, r3, lsl #1
	mov r4, #0
	str r8, [r9, #0xa8]
	add r8, r4, #1
	bl FUN_ov1_020c44d8
_020C4B48:
	ldr r5, [r10, #0x78]
	mov r0, r9
	and r1, r5, #0xff
	bl FUN_ov1_020cb258
	mov r7, #0
	add r11, r9, #0x7a
	b _020C4BD8
_020C4B64:
	ldr r0, _020C4BEC ; =0x02099EF0
	add r5, r5, #1
	cmp r5, #0x16
	movge r5, #0
	ldr r0, [r0]
	mov r1, r5
	bl FUN_ov126_0213922c
	movs r4, r0
	ldrnesh r1, [r4, #0x94]
	cmpne r1, r6
	beq _020C4BD4
	ldr r0, _020C4BEC ; =0x02099EF0
	mov r2, #0
	ldr r0, [r0]
	bl FUN_ov132_021430b4
	movs r2, r0
	beq _020C4BD4
	ldr r3, [r9, #0xa8]
	mov r0, #1
	orr r0, r3, r0, lsl r5
	str r0, [r9, #0xa8]
	add r3, r11, r8, lsl #1
	mov r1, r4
	mov r0, r10
	add r8, r8, #1
	bl FUN_ov1_020c44d8
	cmp r8, #0x16
	beq _020C4BE0
_020C4BD4:
	add r7, r7, #1
_020C4BD8:
	cmp r7, #0x16
	blt _020C4B64
_020C4BE0:
	str r5, [r10, #0x78]
	add sp, sp, #0x40
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_020C4BEC: .word 0x02099EF0
_020C4BF0: .word 0x0209A2C0
_020C4BF4: .word 0x02099F14
	arm_func_end FUN_ov1_020c46a0

	arm_func_start FUN_ov1_020c4bf8
FUN_ov1_020c4bf8: ; 0x020C4BF8
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, lr}
	mov r9, r1
	mov r10, r0
	mov r8, r2
	cmp r9, #0x16
	mov r7, #0
	bge _020C4CE0
	ldr r4, _020C4CE8 ; =0x02099EF0
	mov r11, r7
_020C4C1C:
	cmp r7, #6
	bge _020C4CE0
	add r0, r10, r9
	ldrb r1, [r0, #0x28c]
	ldr r0, [r4]
	bl FUN_ov126_0213922c
	movs r6, r0
	beq _020C4CD4
	ldrsh r1, [r6, #0x94]
	ldr r0, [r4]
	mov r2, r11
	bl FUN_ov132_021430b4
	movs r5, r0
	beq _020C4CD4
	ldrh r1, [r5, #0x18]
	mov r0, r6
	strh r1, [r8, #6]
	bl FUN_0206ccdc
	mov r1, r0, lsl #0x10
	mov r0, r8
	mov r1, r1, lsr #0x10
	bl FUN_ov1_020cbb3c
	ldrb r1, [r5, #0x1a]
	mov r0, r8
	bl FUN_ov1_020cbb5c
	mov r0, r6
	bl FUN_0206cc84
	mov r0, r0, lsl #0x10
	mov r1, r0, lsr #0x10
	mov r0, r8
	bl FUN_ov1_020cbb74
	ldrsh r1, [r6, #0x94]
	mov r0, r8
	bl FUN_ov1_020cbb94
	mov r0, r10
	mov r1, r6
	mov r2, r5
	mov r3, r8
	bl FUN_ov1_020c40cc
	mov r1, r6
	mov r2, r5
	mov r0, r10
	add r3, r8, #4
	bl FUN_ov1_020c4184
	add r8, r8, #0xc
	add r7, r7, #1
_020C4CD4:
	add r9, r9, #1
	cmp r9, #0x16
	blt _020C4C1C
_020C4CE0:
	mov r0, r9
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_020C4CE8: .word 0x02099EF0
	arm_func_end FUN_ov1_020c4bf8

	arm_func_start FUN_ov1_020c4cec
FUN_ov1_020c4cec: ; 0x020C4CEC
	stmfd sp!, {r4, r5, r6, r7, r8, lr}
	mov r6, r0
	ldr r2, [r6, #0x70]
	mov r5, r1
	cmp r2, #0
	bne _020C4D1C
	ldr r0, _020C4E34 ; =0x020EAB14
	mov r1, #0
	str r1, [r0, #0x28]
	str r1, [r0, #0x2c]
	add r0, r2, #1
	str r0, [r6, #0x70]
_020C4D1C:
	ldr r3, [r6, #0x70]
	cmp r3, #1
	bne _020C4DBC
	ldr r2, _020C4E34 ; =0x020EAB14
	ldr r0, [r2, #0x28]
	cmp r0, r3
	ldmeqfd sp!, {r4, r5, r6, r7, r8, pc}
	ldr r4, _020C4E38 ; =0x0209A2C0
	add r0, r5, #0x38
	mov r1, r4
	str r3, [r2, #0x28]
	bl FUN_ov1_020cb4a0
	ldr r7, _020C4E3C ; =0x02099EF0
	ldr r0, [r7]
	bl FUN_ov126_0213246c
	mov r1, r0
	add r0, r5, #0x20
	bl FUN_ov1_020cba04
	add r0, r5, #8
	bl FUN_ov16_020ef97c
	ldr r0, [r7]
	mov r1, #0
	bl FUN_ov132_02144fdc
	str r0, [r5]
	ldr r0, [r7]
	mov r1, #1
	bl FUN_ov132_02144fdc
	str r0, [r5, #4]
	ldr r2, _020C4E40 ; =0x020EAAC4
	ldr r1, [r4]
	ldr r3, [r2]
	mov r0, r6
	add r3, r3, #1
	str r3, [r2]
	ldr r2, [r4, #4]
	bl FUN_ov1_020cc44c
	ldr r0, [r7]
	add r1, r6, #0x28c
	bl FUN_ov126_021392d4
	ldmfd sp!, {r4, r5, r6, r7, r8, pc}
_020C4DBC:
	cmp r3, #2
	ldmltfd sp!, {r4, r5, r6, r7, r8, pc}
	cmp r3, #5
	ldmgtfd sp!, {r4, r5, r6, r7, r8, pc}
	ldr r0, _020C4E34 ; =0x020EAB14
	ldr r1, [r0, #0x28]
	cmp r1, r3
	ldmeqfd sp!, {r4, r5, r6, r7, r8, pc}
	str r3, [r0, #0x28]
	mov r8, #0
	mvn r7, #0
	mov r4, #0xc
	b _020C4E00
_020C4DF0:
	mla r0, r8, r4, r5
	mov r1, r7
	bl FUN_ov1_020cbb94
	add r8, r8, #1
_020C4E00:
	cmp r8, #6
	blt _020C4DF0
	ldr r4, _020C4E34 ; =0x020EAB14
	mov r0, r6
	ldr r1, [r4, #0x2c]
	mov r2, r5
	bl FUN_ov1_020c4bf8
	ldr r1, _020C4E40 ; =0x020EAAC4
	str r0, [r4, #0x2c]
	ldr r0, [r1]
	add r0, r0, #1
	str r0, [r1]
	ldmfd sp!, {r4, r5, r6, r7, r8, pc}
_020C4E34: .word 0x020EAB14
_020C4E38: .word 0x0209A2C0
_020C4E3C: .word 0x02099EF0
_020C4E40: .word 0x020EAAC4
	arm_func_end FUN_ov1_020c4cec

	arm_func_start FUN_ov1_020c4e44
FUN_ov1_020c4e44: ; 0x020C4E44
	ldr r12, _020C4E4C ; =FUN_ov1_020c4bf8
	bx r12
_020C4E4C: .word FUN_ov1_020c4bf8
	arm_func_end FUN_ov1_020c4e44

	arm_func_start FUN_ov1_020c4e50
FUN_ov1_020c4e50: ; 0x020C4E50
	stmfd sp!, {r4, r5, r6, r7, r8, lr}
	mov r5, r0
	ldr r2, [r5, #0x70]
	mov r4, r1
	cmp r2, #0
	bne _020C4E80
	ldr r0, _020C4F94 ; =0x020EAB14
	mov r1, #0
	str r1, [r0, #0x20]
	str r1, [r0, #0x24]
	add r0, r2, #1
	str r0, [r5, #0x70]
_020C4E80:
	ldr r3, [r5, #0x70]
	cmp r3, #1
	bne _020C4F1C
	ldr r2, _020C4F94 ; =0x020EAB14
	ldr r0, [r2, #0x20]
	cmp r3, r0
	ldmeqfd sp!, {r4, r5, r6, r7, r8, pc}
	ldr r7, _020C4F98 ; =0x0209A2C0
	add r0, r4, #0x38
	mov r1, r7
	str r3, [r2, #0x20]
	bl FUN_ov1_020cb4a0
	ldr r6, _020C4F9C ; =0x02099EF0
	ldr r0, [r6]
	bl FUN_ov126_021375d4
	mov r1, r0
	add r0, r4, #0x20
	bl FUN_ov1_020cb8ec
	add r0, r4, #8
	bl FUN_ov16_020ef97c
	ldr r0, [r6]
	mov r1, #0
	bl FUN_ov132_02144fdc
	str r0, [r4]
	ldr r0, [r6]
	mov r1, #1
	bl FUN_ov132_02144fdc
	str r0, [r4, #4]
	mov r0, r5
	ldmia r7, {r1, r2}
	bl FUN_ov1_020cc44c
	ldr r0, [r6]
	add r1, r5, #0x28c
	bl FUN_ov126_021392d4
	ldr r0, _020C4FA0 ; =0x020EAAC4
	ldr r1, [r0]
	add r1, r1, #1
	str r1, [r0]
	ldmfd sp!, {r4, r5, r6, r7, r8, pc}
_020C4F1C:
	cmp r3, #2
	ldmltfd sp!, {r4, r5, r6, r7, r8, pc}
	cmp r3, #5
	ldmgtfd sp!, {r4, r5, r6, r7, r8, pc}
	ldr r0, _020C4F94 ; =0x020EAB14
	ldr r1, [r0, #0x20]
	cmp r1, r3
	ldmeqfd sp!, {r4, r5, r6, r7, r8, pc}
	str r3, [r0, #0x20]
	mov r8, #0
	mvn r7, #0
	mov r6, #0xc
	b _020C4F60
_020C4F50:
	mla r0, r8, r6, r4
	mov r1, r7
	bl FUN_ov1_020cbb94
	add r8, r8, #1
_020C4F60:
	cmp r8, #6
	blt _020C4F50
	ldr r6, _020C4F94 ; =0x020EAB14
	mov r0, r5
	ldr r1, [r6, #0x24]
	mov r2, r4
	bl FUN_ov1_020c4e44
	ldr r1, _020C4FA0 ; =0x020EAAC4
	str r0, [r6, #0x24]
	ldr r0, [r1]
	add r0, r0, #1
	str r0, [r1]
	ldmfd sp!, {r4, r5, r6, r7, r8, pc}
_020C4F94: .word 0x020EAB14
_020C4F98: .word 0x0209A2C0
_020C4F9C: .word 0x02099EF0
_020C4FA0: .word 0x020EAAC4
	arm_func_end FUN_ov1_020c4e50

	arm_func_start FUN_ov1_020c4fa4
FUN_ov1_020c4fa4: ; 0x020C4FA4
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, lr}
	mov r5, r0
	ldr r2, [r5, #0x70]
	ldr r7, _020C5204 ; =0x020EAB14
	mov r0, #0
	cmp r2, #0
	streq r0, [r7, #0x18]
	streq r0, [r7, #0x1c]
	addeq r0, r2, #1
	streq r0, [r5, #0x70]
	ldr r2, [r5, #0x70]
	mov r4, r1
	cmp r2, #1
	bne _020C5064
	ldr r0, [r7, #0x18]
	cmp r2, r0
	ldmeqfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
	ldr r1, _020C5208 ; =0x0209A2C0
	add r0, r4, #0x2c
	str r2, [r7, #0x18]
	bl FUN_ov1_020cb4a0
	ldr r6, _020C520C ; =0x02099EF0
	ldr r0, [r6]
	bl FUN_ov126_0213777c
	mov r1, r0
	add r0, r4, #0x20
	bl FUN_ov1_020cbbec
	add r0, r4, #8
	bl FUN_ov16_020ef97c
	ldr r0, [r6]
	mov r1, #0
	bl FUN_ov132_02144fdc
	str r0, [r4]
	ldr r0, [r6]
	mov r1, #1
	bl FUN_ov132_02144fdc
	str r0, [r4, #4]
	ldr r0, [r6]
	bl FUN_ov132_021471fc
	strh r0, [r4, #0x44]
	ldr r0, [r6]
	add r1, r5, #0x28c
	bl FUN_ov126_021392d4
	ldr r0, _020C5210 ; =0x020EAAC4
	ldr r1, [r0]
	add r1, r1, #1
	str r1, [r0]
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
_020C5064:
	cmp r2, #2
	bne _020C50A8
	ldr r0, [r7, #0x18]
	cmp r0, r2
	ldmeqfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
	ldr r0, _020C520C ; =0x02099EF0
	str r2, [r7, #0x18]
	ldr r0, [r0]
	bl FUN_ov126_021375d4
	mov r1, r0
	mov r0, r4
	bl FUN_ov1_020cb8ec
	ldr r0, _020C5210 ; =0x020EAAC4
	ldr r1, [r0]
	add r1, r1, #1
	str r1, [r0]
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
_020C50A8:
	cmp r2, #3
	ldmltfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
	cmp r2, #6
	ldmgtfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
	ldr r0, [r7, #0x18]
	cmp r0, r2
	ldmeqfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
	str r2, [r7, #0x18]
	mov r9, #0
	mvn r8, #0
	mov r6, #0xc
	b _020C50E8
_020C50D8:
	mla r0, r9, r6, r4
	mov r1, r8
	bl FUN_ov1_020cbb94
	add r9, r9, #1
_020C50E8:
	cmp r9, #6
	blt _020C50D8
	ldr r1, [r7, #0x1c]
	mov r0, r5
	mov r2, r4
	bl FUN_ov1_020c4e44
	ldr r1, _020C520C ; =0x02099EF0
	str r0, [r7, #0x1c]
	ldr r0, [r1]
	bl FUN_ov126_0213777c
	ldrsb r1, [r0, #0x20]
	mov r0, r5
	bl FUN_ov1_020bf4e0
	cmp r0, #0
	movne r0, #1
	moveq r0, #0
	cmp r0, #1
	bne _020C51F0
	ldr r4, _020C520C ; =0x02099EF0
	ldr r0, [r4]
	bl FUN_ov126_0213777c
	mov r5, r0
	ldrsb r1, [r5, #0x20]
	ldr r0, [r4]
	bl FUN_ov132_02149258
	ldrb r1, [r5, #0x2e]
	ldrb r0, [r5, #0x2f]
	cmp r1, #1
	bne _020C51A4
	ldr r0, [r4]
	bl FUN_ov132_02149720
	ldr r0, [r4]
	bl FUN_ov132_02149714
	mov r5, r0
	ldr r6, [r5, #0x28]
	mov r7, #0
	ldr r4, _020C5214 ; =0x02099F14
	b _020C5198
_020C5180:
	ldr r0, [r5, r7, lsl #2]
	bl FUN_ov16_020efa80
	mov r1, r0
	ldr r0, [r4]
	bl FUN_ov1_020e3944
	add r7, r7, #1
_020C5198:
	cmp r7, r6
	blt _020C5180
	b _020C51F0
_020C51A4:
	cmp r0, #1
	bne _020C51F0
	ldr r0, [r4]
	bl FUN_ov132_021492b0
	ldr r0, [r4]
	bl FUN_ov132_021492a4
	mov r5, r0
	ldr r6, [r5, #0x28]
	mov r7, #0
	ldr r4, _020C5214 ; =0x02099F14
	b _020C51E8
_020C51D0:
	ldr r0, [r5, r7, lsl #2]
	bl FUN_ov16_020efa80
	mov r1, r0
	ldr r0, [r4]
	bl FUN_ov1_020e3944
	add r7, r7, #1
_020C51E8:
	cmp r7, r6
	blt _020C51D0
_020C51F0:
	ldr r0, _020C5210 ; =0x020EAAC4
	ldr r1, [r0]
	add r1, r1, #1
	str r1, [r0]
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
_020C5204: .word 0x020EAB14
_020C5208: .word 0x0209A2C0
_020C520C: .word 0x02099EF0
_020C5210: .word 0x020EAAC4
_020C5214: .word 0x02099F14
	arm_func_end FUN_ov1_020c4fa4

	arm_func_start FUN_ov1_020c5218
FUN_ov1_020c5218: ; 0x020C5218
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, lr}
	mov r5, r0
	ldr r2, [r5, #0x70]
	ldr r7, _020C5398 ; =0x020EAB14
	cmp r2, #0
	moveq r0, #0
	streq r0, [r7, #0x10]
	streq r0, [r7, #0x14]
	addeq r0, r2, #1
	streq r0, [r5, #0x70]
	ldr r2, [r5, #0x70]
	mov r4, r1
	cmp r2, #1
	bne _020C52E4
	ldr r0, [r7, #0x10]
	cmp r2, r0
	ldmeqfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
	ldr r1, _020C539C ; =0x0209A2C0
	add r0, r4, #0x2c
	str r2, [r7, #0x10]
	bl FUN_ov1_020cb4a0
	ldr r6, _020C53A0 ; =0x02099EF0
	ldr r0, [r6]
	bl FUN_ov126_0213777c
	ldr r2, _020C53A4 ; =0x020EAAF4
	mov r1, r0
	ldrh r2, [r2, #4]
	add r0, r4, #0x20
	strh r2, [r1, #0x22]
	bl FUN_ov1_020cbbec
	add r0, r4, #8
	bl FUN_ov16_020ef97c
	ldr r0, [r6]
	mov r1, #0
	bl FUN_ov132_02144fdc
	str r0, [r4]
	ldr r0, [r6]
	mov r1, #1
	bl FUN_ov132_02144fdc
	str r0, [r4, #4]
	ldr r0, [r6]
	bl FUN_ov132_021471fc
	strh r0, [r4, #0x44]
	ldr r0, [r6]
	add r1, r5, #0x28c
	bl FUN_ov126_021392d4
	ldr r0, _020C53A8 ; =0x020EAAC4
	ldr r1, [r0]
	add r1, r1, #1
	str r1, [r0]
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
_020C52E4:
	cmp r2, #2
	bne _020C5328
	ldr r0, [r7, #0x10]
	cmp r0, r2
	ldmeqfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
	ldr r0, _020C53A0 ; =0x02099EF0
	str r2, [r7, #0x10]
	ldr r0, [r0]
	bl FUN_ov126_021375d4
	mov r1, r0
	mov r0, r4
	bl FUN_ov1_020cb8ec
	ldr r0, _020C53A8 ; =0x020EAAC4
	ldr r1, [r0]
	add r1, r1, #1
	str r1, [r0]
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
_020C5328:
	cmp r2, #3
	ldmltfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
	cmp r2, #6
	ldmgtfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
	ldr r0, [r7, #0x10]
	cmp r0, r2
	ldmeqfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
	str r2, [r7, #0x10]
	mov r9, #0
	mvn r8, #0
	mov r6, #0xc
	b _020C5368
_020C5358:
	mla r0, r9, r6, r4
	mov r1, r8
	bl FUN_ov1_020cbb94
	add r9, r9, #1
_020C5368:
	cmp r9, #6
	blt _020C5358
	ldr r1, [r7, #0x14]
	mov r0, r5
	mov r2, r4
	bl FUN_ov1_020c4e44
	ldr r1, _020C53A8 ; =0x020EAAC4
	str r0, [r7, #0x14]
	ldr r0, [r1]
	add r0, r0, #1
	str r0, [r1]
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
_020C5398: .word 0x020EAB14
_020C539C: .word 0x0209A2C0
_020C53A0: .word 0x02099EF0
_020C53A4: .word 0x020EAAF4
_020C53A8: .word 0x020EAAC4
	arm_func_end FUN_ov1_020c5218

	arm_func_start FUN_ov1_020c53ac
FUN_ov1_020c53ac: ; 0x020C53AC
	stmfd sp!, {r4, r5, r6, r7, r8, lr}
	mov r5, r0
	ldr r2, [r5, #0x70]
	mov r4, r1
	cmp r2, #0
	bne _020C53DC
	ldr r0, _020C54E8 ; =0x020EAB14
	mov r1, #0
	str r1, [r0, #8]
	str r1, [r0, #0xc]
	add r0, r2, #1
	str r0, [r5, #0x70]
_020C53DC:
	ldr r3, [r5, #0x70]
	cmp r3, #1
	bne _020C5470
	ldr r2, _020C54E8 ; =0x020EAB14
	ldr r0, [r2, #8]
	cmp r3, r0
	ldmeqfd sp!, {r4, r5, r6, r7, r8, pc}
	ldr r1, _020C54EC ; =0x0209A2C0
	add r0, r4, #0x2c
	str r3, [r2, #8]
	bl FUN_ov1_020cb4a0
	ldr r6, _020C54F0 ; =0x02099EF0
	ldr r0, [r6]
	bl FUN_ov132_02159df0
	add r1, r4, #0x24
	mov r2, #8
	bl MI_CpuCopy8
	add r0, r4, #8
	bl FUN_ov16_020ef97c
	ldr r0, [r6]
	mov r1, #0
	bl FUN_ov132_02144fdc
	str r0, [r4]
	ldr r0, [r6]
	mov r1, #1
	bl FUN_ov132_02144fdc
	str r0, [r4, #4]
	ldrh r0, [r5, #0x5a]
	add r1, r5, #0x28c
	strb r0, [r4, #0x20]
	ldr r0, [r6]
	bl FUN_ov126_021392d4
	ldr r0, _020C54F4 ; =0x020EAAC4
	ldr r1, [r0]
	add r1, r1, #1
	str r1, [r0]
	ldmfd sp!, {r4, r5, r6, r7, r8, pc}
_020C5470:
	cmp r3, #2
	ldmltfd sp!, {r4, r5, r6, r7, r8, pc}
	cmp r3, #5
	ldmgtfd sp!, {r4, r5, r6, r7, r8, pc}
	ldr r0, _020C54E8 ; =0x020EAB14
	ldr r1, [r0, #8]
	cmp r1, r3
	ldmeqfd sp!, {r4, r5, r6, r7, r8, pc}
	str r3, [r0, #8]
	mov r8, #0
	mvn r7, #0
	mov r6, #0xc
	b _020C54B4
_020C54A4:
	mla r0, r8, r6, r4
	mov r1, r7
	bl FUN_ov1_020cbb94
	add r8, r8, #1
_020C54B4:
	cmp r8, #6
	blt _020C54A4
	ldr r6, _020C54E8 ; =0x020EAB14
	mov r0, r5
	ldr r1, [r6, #0xc]
	mov r2, r4
	bl FUN_ov1_020c4e44
	ldr r1, _020C54F4 ; =0x020EAAC4
	str r0, [r6, #0xc]
	ldr r0, [r1]
	add r0, r0, #1
	str r0, [r1]
	ldmfd sp!, {r4, r5, r6, r7, r8, pc}
_020C54E8: .word 0x020EAB14
_020C54EC: .word 0x0209A2C0
_020C54F0: .word 0x02099EF0
_020C54F4: .word 0x020EAAC4
	arm_func_end FUN_ov1_020c53ac

	arm_func_start FUN_ov1_020c54f8
FUN_ov1_020c54f8: ; 0x020C54F8
	stmfd sp!, {r4, r5, r6, lr}
	ldr r2, [r0, #0x70]
	mov r4, r1
	cmp r2, #0
	addeq r2, r2, #1
	ldreq r1, _020C55C4 ; =0x020EAB14
	moveq r3, #0
	streq r2, [r0, #0x70]
	streq r3, [r1, #4]
	ldr r3, [r0, #0x70]
	cmp r3, #1
	bne _020C555C
	ldr r2, _020C55C4 ; =0x020EAB14
	ldr r0, [r2, #4]
	cmp r0, r3
	ldmeqfd sp!, {r4, r5, r6, pc}
	ldr r1, _020C55C8 ; =0x0209A2C0
	mov r0, r4
	str r3, [r2, #4]
	bl FUN_ov1_020cb4a0
	ldr r0, _020C55CC ; =0x020EAAC4
	ldr r1, [r0]
	add r1, r1, #1
	str r1, [r0]
	ldmfd sp!, {r4, r5, r6, pc}
_020C555C:
	cmp r3, #2
	ldmnefd sp!, {r4, r5, r6, pc}
	ldr r2, _020C55C4 ; =0x020EAB14
	ldr r0, [r2, #4]
	cmp r0, r3
	ldmeqfd sp!, {r4, r5, r6, pc}
	ldr r6, _020C55D0 ; =0x0209BA20
	mov r1, #0
	mov r0, r6
	str r3, [r2, #4]
	bl FUN_020724dc
	mov r5, #0x10
	mov r1, r4
	mov r2, r5
	bl MI_CpuCopy8
	mov r0, r6
	mov r1, #1
	bl FUN_020724dc
	mov r2, r5
	add r1, r4, #0x10
	bl MI_CpuCopy8
	ldr r0, _020C55CC ; =0x020EAAC4
	ldr r1, [r0]
	add r1, r1, #1
	str r1, [r0]
	ldmfd sp!, {r4, r5, r6, pc}
_020C55C4: .word 0x020EAB14
_020C55C8: .word 0x0209A2C0
_020C55CC: .word 0x020EAAC4
_020C55D0: .word 0x0209BA20
	arm_func_end FUN_ov1_020c54f8

	arm_func_start FUN_ov1_020c55d4
FUN_ov1_020c55d4: ; 0x020C55D4
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, lr}
	mov r9, r1
	mov r10, r0
	mov r8, r2
	cmp r9, #0x64
	mov r7, #0
	bge _020C56D4
	ldr r4, _020C56DC ; =0x02099EF0
	mov r11, r7
_020C55F8:
	cmp r7, #3
	bge _020C56D4
	mov r0, r9
	bl FUN_ov16_020efa80
	movs r6, r0
	beq _020C56C8
	bl FUN_0206d688
	cmp r0, #0
	beq _020C56C8
	ldr r0, [r4]
	mov r1, r9
	mov r2, r11
	bl FUN_ov132_021430b4
	movs r5, r0
	beq _020C56C8
	mov r0, r6
	bl FUN_0206ccdc
	mov r0, r0, lsl #0x10
	mov r1, r0, lsr #0x10
	mov r0, r8
	bl FUN_ov1_020cbcfc
	mov r0, r6
	bl FUN_0206cc84
	mov r0, r0, lsl #0x10
	mov r1, r0, lsr #0x10
	mov r0, r8
	bl FUN_ov1_020cbcf4
	ldrh r1, [r5, #0x18]
	mov r0, r8
	strh r1, [r8, #0x12]
	ldrb r1, [r5, #0x1a]
	bl FUN_ov1_020cbd1c
	mov r2, r5
	mov r0, r10
	mov r1, r6
	mov r3, r8
	bl FUN_ov1_020c4578
	ldr r0, [r4]
	mov r1, r9
	mov r2, #1
	bl FUN_ov132_021430b4
	movs r2, r0
	beq _020C56C8
	mov r0, r10
	mov r1, r6
	add r3, r8, #8
	bl FUN_ov1_020c4578
	mov r0, r6
	bl FUN_0206cbf8
	strh r0, [r8, #0x10]
	add r8, r8, #0x18
	add r7, r7, #1
_020C56C8:
	add r9, r9, #1
	cmp r9, #0x64
	blt _020C55F8
_020C56D4:
	mov r0, r9
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_020C56DC: .word 0x02099EF0
	arm_func_end FUN_ov1_020c55d4

	arm_func_start FUN_ov1_020c56e0
FUN_ov1_020c56e0: ; 0x020C56E0
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, lr}
	sub sp, sp, #0x60
	mov r5, r0
	ldr r0, [r5, #0x70]
	ldr r7, _020C59BC ; =0x020EAB14
	cmp r0, #0
	mov r2, #0
	streq r2, [r7, #0x30]
	streq r2, [r7]
	addeq r0, r0, #1
	streq r0, [r5, #0x70]
	ldr r3, [r5, #0x70]
	mov r4, r1
	mov r8, #1
	ldr r6, _020C59C0 ; =0x02099EF0
	cmp r3, #1
	bne _020C57D8
	ldr r0, [r7, #0x30]
	cmp r0, r3
	addeq sp, sp, #0x60
	ldmeqfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
	add r9, sp, #0
	ldr r0, _020C59C4 ; =0x0209A2C0
	mov r1, r9
	mov r2, #0x60
	str r3, [r7, #0x30]
	bl MI_CpuCopy8
	ldr r0, [r6]
	bl FUN_ov132_021434f8
	cmp r0, #0
	beq _020C5774
	ldr r0, [r6]
	mov r1, #1
	bl FUN_ov132_02143114
	mov r1, r0
	mov r0, r9
	bl FUN_ov126_0212fd10
_020C5774:
	ldr r0, [r5, #0x338]
	mov r1, #0
	strh r0, [r4, #0x4c]
	ldr r0, [r6]
	bl FUN_ov132_02144fdc
	str r0, [r4, #0x44]
	ldr r0, [r6]
	mov r1, r8
	bl FUN_ov132_02144fdc
	str r0, [r4, #0x48]
	add r1, sp, #0
	mov r0, r4
	bl FUN_ov1_020cb4a0
	ldr r0, [r6]
	mov r1, r8
	bl FUN_ov132_02143114
	add r1, r4, #0x18
	mov r2, #0x2c
	bl MI_CpuCopy8
	ldr r0, _020C59C8 ; =0x020EAAC4
	add sp, sp, #0x60
	ldr r1, [r0]
	add r1, r1, #1
	str r1, [r0]
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
_020C57D8:
	cmp r3, #2
	bne _020C5944
	ldr r0, [r7, #0x30]
	cmp r0, r3
	addeq sp, sp, #0x60
	ldmeqfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
	str r3, [r7, #0x30]
	ldr r0, [r6]
	bl FUN_ov132_02143b6c
	cmp r0, #0
	bne _020C5824
	mov r7, #0x10
	mov r0, r4
	mov r2, r7
	mov r1, #0
	bl MI_CpuFill8
	sub r0, r7, #0x11
	strb r0, [r4, #0xc]
	b _020C5834
_020C5824:
	mov r1, r4
	mov r2, #0x10
	bl MI_CpuCopy8
	strb r8, [r4, #0xb]
_020C5834:
	ldr r0, [r6]
	bl FUN_ov126_0213246c
	movs r1, r0
	beq _020C584C
	add r0, r4, #0x10
	bl FUN_ov1_020cba04
_020C584C:
	ldr r0, [r6]
	bl FUN_ov126_021375d4
	movs r1, r0
	beq _020C5864
	add r0, r4, #0x28
	bl FUN_ov1_020cb8ec
_020C5864:
	ldr r0, [r5, #0x338]
	cmp r0, #0x12
	bne _020C58BC
	ldr r0, [r6]
	bl FUN_ov126_0213777c
	movs r1, r0
	beq _020C58D8
	ldrb r0, [r1, #0x29]
	mov r0, r0, lsl #0x1c
	mov r0, r0, lsr #0x1c
	tst r0, #1
	movne r0, #1
	moveq r0, #0
	cmp r0, #0
	bne _020C58B0
	ldr r0, [r6]
	mov r1, #1
	bl FUN_ov126_021377f8
	mov r1, r0
_020C58B0:
	add r0, r4, #0x40
	bl FUN_ov1_020cbbec
	b _020C58D8
_020C58BC:
	cmp r0, #0x14
	bne _020C58D8
	ldr r0, [r6]
	bl FUN_ov132_02159df0
	add r1, r4, #0x40
	mov r2, #8
	bl MI_CpuCopy8
_020C58D8:
	ldr r0, [r5, #0x338]
	cmp r0, #0x13
	bne _020C592C
	ldr r0, [r6]
	bl FUN_ov126_0213777c
	movs r1, r0
	beq _020C592C
	ldrb r0, [r1, #0x29]
	mov r0, r0, lsl #0x1c
	mov r0, r0, lsr #0x1c
	tst r0, #1
	movne r0, #1
	moveq r0, #0
	cmp r0, #0
	bne _020C5924
	ldr r0, [r6]
	mov r1, #1
	bl FUN_ov126_021377f8
	mov r1, r0
_020C5924:
	add r0, r4, #0x40
	bl FUN_ov1_020cbbec
_020C592C:
	ldr r0, _020C59C8 ; =0x020EAAC4
	add sp, sp, #0x60
	ldr r1, [r0]
	add r1, r1, #1
	str r1, [r0]
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
_020C5944:
	cmp r3, #3
	addlt sp, sp, #0x60
	ldmltfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
	cmp r3, #0xa
	addgt sp, sp, #0x60
	ldmgtfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
	ldr r0, [r7, #0x30]
	cmp r0, r3
	addeq sp, sp, #0x60
	ldmeqfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
	str r3, [r7, #0x30]
	mov r3, #0
	mov r0, #0x18
	b _020C5988
_020C597C:
	mla r1, r3, r0, r4
	strh r2, [r1, #0x10]
	add r3, r3, #1
_020C5988:
	cmp r3, #3
	blt _020C597C
	ldr r1, [r7]
	mov r0, r5
	mov r2, r4
	bl FUN_ov1_020c55d4
	ldr r1, _020C59C8 ; =0x020EAAC4
	str r0, [r7]
	ldr r0, [r1]
	add r0, r0, #1
	str r0, [r1]
	add sp, sp, #0x60
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
_020C59BC: .word 0x020EAB14
_020C59C0: .word 0x02099EF0
_020C59C4: .word 0x0209A2C0
_020C59C8: .word 0x020EAAC4
	arm_func_end FUN_ov1_020c56e0

	arm_func_start FUN_ov1_020c59cc
FUN_ov1_020c59cc: ; 0x020C59CC
	stmfd sp!, {r4, r5, r6, lr}
	mov r5, r0
	ldr r0, [r5, #0x70]
	mov r4, r1
	cmp r0, #0
	ldmnefd sp!, {r4, r5, r6, pc}
	add r0, r0, #1
	ldr r6, _020C5A3C ; =0x02099EF0
	str r0, [r5, #0x70]
	ldr r0, [r6]
	mov r1, #0
	bl FUN_ov132_02144fdc
	str r0, [r4]
	ldr r0, [r6]
	mov r1, #1
	bl FUN_ov132_02144fdc
	str r0, [r4, #4]
	ldr r1, [r5, #0x2b8]
	ldr r0, _020C5A40 ; =0x020EAAC4
	strh r1, [r4, #8]
	ldr r1, [r5, #0x2bc]
	strb r1, [r4, #0xa]
	ldrb r1, [r5, #0x2c0]
	strb r1, [r4, #0xb]
	ldr r1, [r0]
	add r1, r1, #1
	str r1, [r0]
	ldmfd sp!, {r4, r5, r6, pc}
_020C5A3C: .word 0x02099EF0
_020C5A40: .word 0x020EAAC4
	arm_func_end FUN_ov1_020c59cc

	arm_func_start FUN_ov1_020c5a44
FUN_ov1_020c5a44: ; 0x020C5A44
	ldr r3, [r0, #0x70]
	cmp r3, #0
	bxne lr
	ldrh r2, [r0, #0x56]
	add r3, r3, #1
	str r3, [r0, #0x70]
	ldr r0, _020C5A74 ; =0x020EAAC4
	strb r2, [r1]
	ldr r1, [r0]
	add r1, r1, #1
	str r1, [r0]
	bx lr
_020C5A74: .word 0x020EAAC4
	arm_func_end FUN_ov1_020c5a44

	arm_func_start FUN_ov1_020c5a78
FUN_ov1_020c5a78: ; 0x020C5A78
	stmfd sp!, {r3, r4, r5, lr}
	ldr r2, [r0, #0x70]
	mov r5, r1
	cmp r2, #0
	ldmnefd sp!, {r3, r4, r5, pc}
	add r1, r2, #1
	str r1, [r0, #0x70]
	ldr r1, _020C5ADC ; =0x0209A2C0
	mov r0, r5
	bl FUN_ov1_020cb4a0
	ldr r4, _020C5AE0 ; =0x02099EF0
	ldr r0, [r4]
	bl FUN_ov132_0214538c
	strb r0, [r5, #0x19]
	ldr r0, [r4]
	bl FUN_ov132_02145374
	strb r0, [r5, #0x18]
	ldr r0, [r4]
	bl FUN_ov132_02145394
	ldr r1, _020C5AE4 ; =0x020EAAC4
	strb r0, [r5, #0x1a]
	ldr r0, [r1]
	add r0, r0, #1
	str r0, [r1]
	ldmfd sp!, {r3, r4, r5, pc}
_020C5ADC: .word 0x0209A2C0
_020C5AE0: .word 0x02099EF0
_020C5AE4: .word 0x020EAAC4
	arm_func_end FUN_ov1_020c5a78

	arm_func_start FUN_ov1_020c5ae8
FUN_ov1_020c5ae8: ; 0x020C5AE8
	stmfd sp!, {r4, r5, r6, lr}
	ldr r4, _020C5D6C ; =0x02099EF0
	mov r6, r0
	ldr r0, [r4]
	ldr r5, _020C5D70 ; =0x0209A4E4
	bl FUN_ov132_02144770
	mov r1, r0
	mov r0, r5
	bl FUN_ov1_020cbe70
	ldr r0, [r4]
	bl FUN_ov132_02144780
	mov r1, r0
	mov r0, r5
	bl FUN_ov1_020cbe90
	ldr r1, _020C5D74 ; =0x020A0640
	mov r0, r5
	ldrb r1, [r1, #0x8f]
	bl FUN_ov1_020cbeb0
	mov r0, r6
	mov r1, r5
	bl FUN_ov1_020c45c8
	ldr r1, [r6, #8]
	cmp r1, #0x22
	bgt _020C5BB0
	bge _020C5D34
	cmp r1, #0x1e
	bgt _020C5BA4
	bge _020C5CFC
	sub r0, r1, #0xa
	cmp r0, #0xe
	addls pc, pc, r0, lsl #2
	b _020C5D50
_020C5B68: ; jump table
	b _020C5BE4 ; case 0
	b _020C5D50 ; case 1
	b _020C5C0C ; case 2
	b _020C5D50 ; case 3
	b _020C5C0C ; case 4
	b _020C5D50 ; case 5
	b _020C5D50 ; case 6
	b _020C5D50 ; case 7
	b _020C5C34 ; case 8
	b _020C5D50 ; case 9
	b _020C5C5C ; case 10
	b _020C5D50 ; case 11
	b _020C5C0C ; case 12
	b _020C5D50 ; case 13
	b _020C5C84 ; case 14
_020C5BA4:
	cmp r1, #0x20
	beq _020C5CFC
	b _020C5D50
_020C5BB0:
	cmp r1, #0x2a
	bgt _020C5BC8
	bge _020C5CAC
	cmp r1, #0x28
	beq _020C5CAC
	b _020C5D50
_020C5BC8:
	cmp r1, #0x32
	bgt _020C5BD8
	beq _020C5D18
	b _020C5D50
_020C5BD8:
	cmp r1, #0x46
	beq _020C5CD4
	b _020C5D50
_020C5BE4:
	mov r0, r5
	mov r1, #1
	bl FUN_ov1_020cbe38
	mov r0, r6
	add r1, r5, #0x24
	bl FUN_ov1_020c4cec
	ldr r1, [r6, #0x70]
	mov r0, r5
	bl FUN_ov1_020cbf10
	ldmfd sp!, {r4, r5, r6, pc}
_020C5C0C:
	mov r0, r5
	mov r1, #2
	bl FUN_ov1_020cbe38
	mov r0, r6
	add r1, r5, #0x24
	bl FUN_ov1_020c4e50
	ldr r1, [r6, #0x70]
	mov r0, r5
	bl FUN_ov1_020cbf10
	ldmfd sp!, {r4, r5, r6, pc}
_020C5C34:
	mov r0, r5
	mov r1, #3
	bl FUN_ov1_020cbe38
	mov r0, r6
	add r1, r5, #0x24
	bl FUN_ov1_020c4fa4
	ldr r1, [r6, #0x70]
	mov r0, r5
	bl FUN_ov1_020cbf10
	ldmfd sp!, {r4, r5, r6, pc}
_020C5C5C:
	mov r0, r5
	mov r1, #4
	bl FUN_ov1_020cbe38
	mov r0, r6
	add r1, r5, #0x24
	bl FUN_ov1_020c5218
	ldr r1, [r6, #0x70]
	mov r0, r5
	bl FUN_ov1_020cbf10
	ldmfd sp!, {r4, r5, r6, pc}
_020C5C84:
	mov r0, r5
	mov r1, #0xe
	bl FUN_ov1_020cbe38
	mov r0, r6
	add r1, r5, #0x24
	bl FUN_ov1_020c53ac
	ldr r1, [r6, #0x70]
	mov r0, r5
	bl FUN_ov1_020cbf10
	ldmfd sp!, {r4, r5, r6, pc}
_020C5CAC:
	mov r0, r5
	mov r1, #5
	bl FUN_ov1_020cbe38
	mov r0, r6
	add r1, r5, #0x24
	bl FUN_ov1_020c54f8
	ldr r1, [r6, #0x70]
	mov r0, r5
	bl FUN_ov1_020cbf10
	ldmfd sp!, {r4, r5, r6, pc}
_020C5CD4:
	mov r0, r5
	mov r1, #6
	bl FUN_ov1_020cbe38
	mov r0, r6
	add r1, r5, #0x24
	bl FUN_ov1_020c56e0
	ldr r1, [r6, #0x70]
	mov r0, r5
	bl FUN_ov1_020cbf10
	ldmfd sp!, {r4, r5, r6, pc}
_020C5CFC:
	mov r0, r5
	mov r1, #7
	bl FUN_ov1_020cbe38
	mov r0, r6
	add r1, r5, #0x24
	bl FUN_ov1_020c59cc
	ldmfd sp!, {r4, r5, r6, pc}
_020C5D18:
	mov r0, r5
	mov r1, #8
	bl FUN_ov1_020cbe38
	mov r0, r6
	add r1, r5, #0x24
	bl FUN_ov1_020c5a44
	ldmfd sp!, {r4, r5, r6, pc}
_020C5D34:
	mov r0, r5
	mov r1, #9
	bl FUN_ov1_020cbe38
	mov r0, r6
	add r1, r5, #0x24
	bl FUN_ov1_020c5a78
	ldmfd sp!, {r4, r5, r6, pc}
_020C5D50:
	mov r0, r5
	mov r1, #0xa
	bl FUN_ov1_020cbe38
	mov r0, r6
	add r1, r5, #0x24
	bl FUN_ov1_020c46a0
	ldmfd sp!, {r4, r5, r6, pc}
_020C5D6C: .word 0x02099EF0
_020C5D70: .word 0x0209A4E4
_020C5D74: .word 0x020A0640
	arm_func_end FUN_ov1_020c5ae8

	arm_func_start FUN_ov1_020c5d78
FUN_ov1_020c5d78: ; 0x020C5D78
	stmfd sp!, {r3, r4, r5, lr}
	ldr r4, _020C5E40 ; =0x0209A4E4
	mov r5, r0
	mov r0, r4
	bl FUN_ov1_020ca880
	ldr r1, [r5, #8]
	cmp r1, #0x22
	bgt _020C5E00
	ldmgefd sp!, {r3, r4, r5, pc}
	cmp r1, #0x1e
	bgt _020C5DF4
	ldmgefd sp!, {r3, r4, r5, pc}
	sub r0, r1, #0xa
	cmp r0, #0xe
	addls pc, pc, r0, lsl #2
	b _020C5E30
_020C5DB8: ; jump table
	ldmfd sp!, {r3, r4, r5, pc} ; case 0
	b _020C5E30 ; case 1
	ldmfd sp!, {r3, r4, r5, pc} ; case 2
	b _020C5E30 ; case 3
	ldmfd sp!, {r3, r4, r5, pc} ; case 4
	b _020C5E30 ; case 5
	b _020C5E30 ; case 6
	b _020C5E30 ; case 7
	ldmfd sp!, {r3, r4, r5, pc} ; case 8
	b _020C5E30 ; case 9
	ldmfd sp!, {r3, r4, r5, pc} ; case 10
	b _020C5E30 ; case 11
	ldmfd sp!, {r3, r4, r5, pc} ; case 12
	b _020C5E30 ; case 13
	ldmfd sp!, {r3, r4, r5, pc} ; case 14
_020C5DF4:
	cmp r1, #0x20
	ldmeqfd sp!, {r3, r4, r5, pc}
	b _020C5E30
_020C5E00:
	cmp r1, #0x2a
	bgt _020C5E18
	ldmgefd sp!, {r3, r4, r5, pc}
	cmp r1, #0x28
	ldmeqfd sp!, {r3, r4, r5, pc}
	b _020C5E30
_020C5E18:
	cmp r1, #0x32
	bgt _020C5E28
	ldmeqfd sp!, {r3, r4, r5, pc}
	b _020C5E30
_020C5E28:
	cmp r1, #0x46
	ldmeqfd sp!, {r3, r4, r5, pc}
_020C5E30:
	mov r0, r4
	mov r1, #0xb
	bl FUN_ov1_020cbe38
	ldmfd sp!, {r3, r4, r5, pc}
_020C5E40: .word 0x0209A4E4
	arm_func_end FUN_ov1_020c5d78

	arm_func_start FUN_ov1_020c5e44
FUN_ov1_020c5e44: ; 0x020C5E44
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, lr}
	ldrb r0, [sp, #0x20]
	mov r8, r1
	mov r6, r3
	cmp r0, #0
	mov r7, r2
	ldr r5, [r8, #0x88]
	mov r4, #0
	mov r0, r6
	bne _020C5F38
	bl FUN_ov1_020caf10
	cmp r0, #0
	mov r0, r6
	ble _020C5E98
	bl FUN_ov1_020caf10
	mov r0, r0, lsl #0xc
	bl FUN_0201f704
	mov r1, r0
	mov r0, #0x3f000000
	bl FUN_02020274
	b _020C5EAC
_020C5E98:
	bl FUN_ov1_020caf10
	mov r0, r0, lsl #0xc
	bl FUN_0201f704
	mov r1, #0x3f000000
	bl FUN_020204a4
_020C5EAC:
	bl FUN_0201fdac
	str r0, [r7]
	mov r0, r6
	bl FUN_ov1_020caf20
	cmp r0, #0
	mov r0, r6
	ble _020C5EE4
	bl FUN_ov1_020caf20
	mov r0, r0, lsl #0xc
	bl FUN_0201f704
	mov r1, r0
	mov r0, #0x3f000000
	bl FUN_02020274
	b _020C5EF8
_020C5EE4:
	bl FUN_ov1_020caf20
	mov r0, r0, lsl #0xc
	bl FUN_0201f704
	mov r1, #0x3f000000
	bl FUN_020204a4
_020C5EF8:
	bl FUN_0201fdac
	str r0, [r7, #4]
	mov r0, #0
	bl FUN_ov16_020f085c
	mov r9, r0
	bl FUN_ov16_020f081c
	cmp r9, r0
	beq _020C5F20
	mov r0, r7
	bl FUN_ov16_020f0298
_020C5F20:
	ldr r0, [r7]
	str r0, [r5]
	ldr r0, [r7, #4]
	str r0, [r5, #4]
	str r4, [r5, #0x14]
	b _020C5FF4
_020C5F38:
	bl FUN_ov1_020caf10
	cmp r0, #0
	mov r0, r6
	ble _020C5F64
	bl FUN_ov1_020caf10
	mov r0, r0, lsl #0xc
	bl FUN_0201f704
	mov r1, r0
	mov r0, #0x3f000000
	bl FUN_02020274
	b _020C5F78
_020C5F64:
	bl FUN_ov1_020caf10
	mov r0, r0, lsl #0xc
	bl FUN_0201f704
	mov r1, #0x3f000000
	bl FUN_020204a4
_020C5F78:
	bl FUN_0201fdac
	str r0, [r5]
	mov r0, r6
	bl FUN_ov1_020caf20
	cmp r0, #0
	mov r0, r6
	ble _020C5FB0
	bl FUN_ov1_020caf20
	mov r0, r0, lsl #0xc
	bl FUN_0201f704
	mov r1, r0
	mov r0, #0x3f000000
	bl FUN_02020274
	b _020C5FC4
_020C5FB0:
	bl FUN_ov1_020caf20
	mov r0, r0, lsl #0xc
	bl FUN_0201f704
	mov r1, #0x3f000000
	bl FUN_020204a4
_020C5FC4:
	bl FUN_0201fdac
	str r0, [r5, #4]
	mov r0, #0
	bl FUN_ov16_020f085c
	mov r9, r0
	bl FUN_ov16_020f081c
	cmp r9, r0
	beq _020C5FEC
	mov r0, r5
	bl FUN_ov16_020f0298
_020C5FEC:
	mov r0, #0x1000
	str r0, [r5, #0x14]
_020C5FF4:
	str r4, [r5, #0x18]
	mov r0, r6
	bl FUN_ov1_020caf50
	and r0, r0, #0xff
	cmp r0, #0xa
	strneb r0, [r5, #0x84]
	bne _020C6018
	mov r0, r8
	bl FUN_0206da98
_020C6018:
	mov r0, r8
	bl FUN_0206d6b0
	cmp r0, #0
	beq _020C6040
	ldrb r1, [r5, #0x84]
	ldrb r0, [r5, #0x85]
	cmp r1, r0
	blo _020C6040
	mov r0, r8
	bl FUN_0206da98
_020C6040:
	mov r0, r6
	bl FUN_ov1_020caf30
	ldrb r1, [r7, #0x1c]
	and r2, r0, #0xff
	cmp r2, r1
	ldrne r0, _020C60AC ; =0x00007FFF
	strneb r2, [r7, #0x1c]
	strneh r0, [r7, #0x12]
	mov r0, r6
	strneh r4, [r7, #0x14]
	bl FUN_ov1_020caf40
	ldrh r1, [r7, #0x16]
	and r0, r0, #0xff
	tst r1, #0x100
	movne r1, #1
	moveq r1, #0
	cmp r0, r1
	ldmeqfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
	cmp r0, #0
	ldrneh r0, [r7, #0x16]
	orrne r0, r0, #0x100
	strneh r0, [r7, #0x16]
	ldreqh r1, [r7, #0x16]
	ldreq r0, _020C60B0 ; =0x0000FEFF
	andeq r0, r1, r0
	streqh r0, [r7, #0x16]
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
_020C60AC: .word 0x00007FFF
_020C60B0: .word 0x0000FEFF
	arm_func_end FUN_ov1_020c5e44

	arm_func_start FUN_ov1_020c60b4
FUN_ov1_020c60b4: ; 0x020C60B4
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	mov r4, r2
	mov r5, r1
	mov r0, r4
	bl FUN_ov1_020cafc0
	strb r0, [r5, #0x1d]
	mov r0, r4
	bl FUN_ov1_020cafd0
	and r7, r0, #0xff
	mov r0, #0
	bl FUN_ov16_020f085c
	mov r6, r0
	ldr r0, _020C6120 ; =0x0209AEC0
	bl FUN_02046730
	bl FUN_ov16_020f085c
	cmp r6, r0
	addne r0, r7, #4
	movne r1, r0, lsr #0x1f
	rsbne r0, r1, r0, lsl #29
	addne r0, r1, r0, ror #29
	andne r7, r0, #0xff
	mov r0, r4
	strb r7, [r5, #0x1b]
	bl FUN_ov1_020cafe0
	and r0, r0, #0xff
	strh r0, [r5, #0x10]
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_020C6120: .word 0x0209AEC0
	arm_func_end FUN_ov1_020c60b4

	arm_func_start FUN_ov1_020c6124
FUN_ov1_020c6124: ; 0x020C6124
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, lr}
	sub sp, sp, #0x28
	ldr r5, [r1, #0x88]
	mov r1, #0x2000
	ldr r7, [sp, #0x50]
	mov r11, r0
	cmp r5, #0
	str r1, [sp, #4]
	mov r9, r2
	mov r8, r3
	mov r4, #0
	addeq sp, sp, #0x28
	moveq r0, r7
	ldmeqfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
	add r2, r7, #1
	ldrb r3, [r8, r7]
	ldrb r2, [r8, r2]
	add r1, r7, #2
	ldrb r10, [r8, r1]
	orr r6, r3, r2, lsl #8
	mov r3, r6, asr #6
	and r3, r3, #0x3f
	add r7, r1, #1
	and r2, r6, #0x3f
	mov r1, r10
	str r3, [sp]
	and r6, r6, #0xf000
	bl FUN_ov1_020c41d4
	str r0, [sp, #8]
	ldr r2, [sp]
	mov r1, r10
	mov r0, r11
	bl FUN_ov1_020c4204
	str r0, [sp, #0xc]
	mov r0, r4
	bl FUN_ov16_020f085c
	mov r10, r0
	ldr r0, _020C62D0 ; =0x0209AEC0
	bl FUN_02046730
	bl FUN_ov16_020f085c
	cmp r10, r0
	beq _020C61D4
	add r0, sp, #8
	bl FUN_ov16_020f0298
_020C61D4:
	ldr r0, [sp, #8]
	tst r6, #0x1000
	str r0, [r5]
	ldr r0, [sp, #0xc]
	str r0, [r5, #4]
	beq _020C6258
	add r0, r7, #1
	ldrb r12, [r8, r7]
	ldrb r10, [r8, r0]
	ldr r0, [r9]
	mov r3, #0
	str r0, [sp, #0x1c]
	ldr r1, [r9, #4]
	add r0, sp, #0x1c
	str r1, [sp, #0x20]
	str r3, [sp, #0x24]
	ldr r2, [r5]
	add r1, sp, #0x10
	str r2, [sp, #0x10]
	ldr r2, [r5, #4]
	add r10, r12, r10, lsl #8
	str r2, [sp, #0x14]
	str r3, [sp, #0x18]
	add r7, r7, #2
	bl FUN_02009a1c
	mov r1, r10
	bl FUN_0201f9bc
	str r0, [sp, #4]
	tst r6, #0x2000
	ldrneb r0, [r8, r7]
	addne r7, r7, #1
	subne r0, r0, #0x80
	movne r4, r0, lsl #7
_020C6258:
	ldr r0, [sp, #4]
	str r0, [r5, #0x14]
	str r4, [r5, #0x18]
	ldr r0, _020C62D4 ; =0x02099EF0
	mov r4, #0
	ldr r0, [r0]
	bl FUN_ov132_02144780
	cmp r0, #0
	cmpne r0, #4
	cmpne r0, #8
	ldrne r0, _020C62D8 ; =0x0209BA20
	ldrneb r0, [r0, #0x87f]
	cmpne r0, #0
	ldr r0, [r11, #8]
	movne r4, #1
	cmp r0, #0x3c
	cmpne r0, #0x3d
	beq _020C62A8
	cmp r4, #0
	beq _020C62C4
_020C62A8:
	ldr r1, [r5]
	mov r0, #0
	str r1, [r9]
	ldr r1, [r5, #4]
	str r1, [r9, #4]
	str r0, [r5, #0x14]
	str r0, [r5, #0x18]
_020C62C4:
	mov r0, r7
	add sp, sp, #0x28
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_020C62D0: .word 0x0209AEC0
_020C62D4: .word 0x02099EF0
_020C62D8: .word 0x0209BA20
	arm_func_end FUN_ov1_020c6124

	arm_func_start FUN_ov1_020c62dc
FUN_ov1_020c62dc: ; 0x020C62DC
	stmfd sp!, {r3, r4, r5, r6, r7, r8, lr}
	sub sp, sp, #4
	mov r4, r3
	mov r6, r1
	mov r0, r4
	ldr r7, [r6, #0x88]
	mov r5, r2
	bl FUN_ov1_020cb0b0
	and r0, r0, #0xff
	cmp r0, #0xa
	strneb r0, [r7, #0x84]
	bne _020C6314
	mov r0, r6
	bl FUN_0206da98
_020C6314:
	mov r0, r6
	bl FUN_0206d6b0
	cmp r0, #0
	beq _020C633C
	ldrb r1, [r7, #0x85]
	ldrb r0, [r7, #0x84]
	cmp r0, r1
	blo _020C633C
	mov r0, r6
	bl FUN_0206da98
_020C633C:
	mov r0, r4
	bl FUN_ov1_020cb090
	ldrb r1, [r5, #0x1c]
	and r2, r0, #0xff
	cmp r2, r1
	ldrne r1, _020C6428 ; =0x00007FFF
	movne r0, #0
	strneh r0, [r5, #0x14]
	mov r0, r4
	strneb r2, [r5, #0x1c]
	strneh r1, [r5, #0x12]
	bl FUN_ov1_020cb0a0
	ldrh r1, [r5, #0x16]
	and r0, r0, #0xff
	tst r1, #0x100
	movne r1, #1
	moveq r1, #0
	cmp r0, r1
	beq _020C63A8
	cmp r0, #0
	ldrneh r0, [r5, #0x16]
	orrne r0, r0, #0x100
	strneh r0, [r5, #0x16]
	ldreqh r1, [r5, #0x16]
	ldreq r0, _020C642C ; =0x0000FEFF
	andeq r0, r1, r0
	streqh r0, [r5, #0x16]
_020C63A8:
	mov r0, r4
	bl FUN_ov1_020cb0d0
	and r8, r0, #0xff
	mov r0, #0
	bl FUN_ov16_020f085c
	mov r7, r0
	ldr r0, _020C6430 ; =0x0209AEC0
	bl FUN_02046730
	bl FUN_ov16_020f085c
	cmp r7, r0
	addne r0, r8, #4
	movne r1, r0, lsr #0x1f
	rsbne r0, r1, r0, lsl #29
	addne r0, r1, r0, ror #29
	andne r8, r0, #0xff
	mov r0, r4
	strb r8, [r5, #0x1b]
	bl FUN_ov1_020cb0c0
	ldrb r1, [r5, #0x1d]
	mov r2, r0
	cmp r2, r1
	addeq sp, sp, #4
	ldmeqfd sp!, {r3, r4, r5, r6, r7, r8, pc}
	ldrb r3, [r5, #0x1b]
	mov r1, #0
	ldr r0, _020C6434 ; =0x02099F14
	str r1, [sp]
	ldr r0, [r0]
	mov r1, r6
	bl FUN_ov1_020e3c14
	add sp, sp, #4
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, pc}
_020C6428: .word 0x00007FFF
_020C642C: .word 0x0000FEFF
_020C6430: .word 0x0209AEC0
_020C6434: .word 0x02099F14
	arm_func_end FUN_ov1_020c62dc

	arm_func_start FUN_ov1_020c6438
FUN_ov1_020c6438: ; 0x020C6438
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, lr}
	sub sp, sp, #0xc
	mov r7, r1
	mov r0, r7
	ldr r9, _020C6598 ; =0x0209A114
	mov r4, #1
	bl FUN_ov1_020cbfe8
	mov r5, r0
	mov r0, r7
	bl FUN_ov1_020cbff8
	mov r6, r0
	mov r0, r7
	bl FUN_ov1_020cc000
	mov r8, #0
	cmp r0, #0
	movne r8, r4
	cmp r5, #0
	cmpne r6, #0
	beq _020C6540
	ldr r0, _020C659C ; =0x0209A2C0
	mov r7, #0
	ldr r0, [r0, #0x4c]
	sub r1, r7, #1
	cmp r0, r1
	beq _020C64A4
	bl FUN_ov16_020efa80
	mov r7, r0
_020C64A4:
	cmp r7, #0
	ldrne r10, _020C659C ; =0x0209A2C0
	ldrne r0, [r10, #0x18]
	cmpne r0, #0x80000000
	addeq sp, sp, #0xc
	ldmeqfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, pc}
	ldr r0, [r9]
	mov r1, #1
	bl FUN_ov1_020de230
	ldr r0, [r10, #0x18]
	mov r1, r8
	str r0, [sp]
	ldr r0, [r10, #0x1c]
	stmib sp, {r0, r6}
	ldr r3, [r7, #0x84]
	ldr r0, [r9]
	ldmia r3, {r2, r3}
	bl FUN_ov1_020dd918
	str r4, [sp]
	ldr r2, _020C65A0 ; =0x0000191F
	cmp r5, #1
	ldrne r2, _020C65A4 ; =0x00005044
	ldr r0, [r9]
	mov r1, r8
	mov r3, #0x14
	bl FUN_ov1_020de1ac
	mov r5, #0
	ldr r0, [r9]
	mov r1, r8
	mov r2, r5
	bl FUN_ov1_020dd8fc
	cmp r8, #1
	movne r5, r4
	ldr r0, [r9]
	mov r1, r5
	mov r2, #1
	bl FUN_ov1_020dd8fc
	add sp, sp, #0xc
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, pc}
_020C6540:
	cmp r5, #0
	addne sp, sp, #0xc
	ldmnefd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, pc}
	ldr r0, [r9]
	bl FUN_ov1_020de238
	cmp r0, #0
	bne _020C657C
	ldr r0, [r9]
	ldrb r0, [r0, #0x10d]
	cmp r0, #1
	moveq r0, #1
	movne r0, #0
	cmp r0, #0
	addeq sp, sp, #0xc
	ldmeqfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, pc}
_020C657C:
	ldr r0, [r9]
	mov r1, #0
	bl FUN_ov1_020de230
	ldr r0, [r9]
	bl FUN_ov1_020de1e8
	add sp, sp, #0xc
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, pc}
_020C6598: .word 0x0209A114
_020C659C: .word 0x0209A2C0
_020C65A0: .word 0x0000191F
_020C65A4: .word 0x00005044
	arm_func_end FUN_ov1_020c6438

	arm_func_start FUN_ov1_020c65a8
FUN_ov1_020c65a8: ; 0x020C65A8
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, lr}
	sub sp, sp, #8
	mov r9, r1
	mov r10, r0
	mov r0, r9
	mov r4, #0
	ldr r7, _020C6B5C ; =0x0209A2C0
	bl FUN_ov1_020cadac
	mov r6, r0
	mov r0, r9
	bl FUN_ov1_020cadbc
	mov r1, #0x400
	rsb r1, r1, #0
	mov r5, r0
	cmp r6, r1
	cmpne r5, r1
	moveq r0, #0x80000000
	streq r0, [r7]
	streq r0, [r7, #4]
	beq _020C6688
	cmp r6, #0
	mov r0, r6, lsl #0xc
	ble _020C6618
	bl FUN_0201f704
	mov r1, r0
	mov r0, #0x3f000000
	bl FUN_02020274
	b _020C6624
_020C6618:
	bl FUN_0201f704
	mov r1, #0x3f000000
	bl FUN_020204a4
_020C6624:
	bl FUN_0201fdac
	str r0, [r7]
	cmp r5, #0
	mov r0, r5, lsl #0xc
	ble _020C664C
	bl FUN_0201f704
	mov r1, r0
	mov r0, #0x3f000000
	bl FUN_02020274
	b _020C6658
_020C664C:
	bl FUN_0201f704
	mov r1, #0x3f000000
	bl FUN_020204a4
_020C6658:
	bl FUN_0201fdac
	str r0, [r7, #4]
	mov r0, #0
	bl FUN_ov16_020f085c
	mov r5, r0
	ldr r0, _020C6B60 ; =0x0209AEC0
	bl FUN_02046730
	bl FUN_ov16_020f085c
	cmp r5, r0
	beq _020C6688
	mov r0, r7
	bl FUN_ov16_020f0298
_020C6688:
	mov r0, r9
	bl FUN_ov1_020cadcc
	mov r0, r0, lsl #1
	cmp r0, #0
	mov r0, r9
	ble _020C66BC
	bl FUN_ov1_020cadcc
	mov r0, r0, lsl #0xd
	bl FUN_0201f704
	mov r1, r0
	mov r0, #0x3f000000
	bl FUN_02020274
	b _020C66D0
_020C66BC:
	bl FUN_ov1_020cadcc
	mov r0, r0, lsl #0xd
	bl FUN_0201f704
	mov r1, #0x3f000000
	bl FUN_020204a4
_020C66D0:
	bl FUN_0201fdac
	str r0, [r7, #0x30]
	mov r0, r9
	bl FUN_ov1_020cae28
	mov r0, r0, lsl #0x18
	mov r1, r0, asr #0x18
	mov r0, r9
	str r1, [r7, #0x48]
	bl FUN_ov1_020cae38
	mov r0, r0, lsl #0x18
	mov r0, r0, asr #0x18
	str r0, [r7, #0x4c]
	ldrh r1, [r7, #0x52]
	mov r0, r9
	mov r1, r1, asr #8
	strb r1, [r7, #0x5d]
	bl FUN_ov1_020cae48
	mov r1, r0, lsl #8
	mov r0, #0
	strh r1, [r7, #0x52]
	bl FUN_ov16_020f085c
	mov r5, r0
	bl FUN_ov16_020f081c
	cmp r5, r0
	ldrneh r0, [r7, #0x52]
	addne r0, r0, #0x8000
	strneh r0, [r7, #0x52]
	mov r0, r9
	bl FUN_ov1_020cae58
	mov r1, r0, lsl #8
	mov r0, r9
	strh r1, [r7, #0x56]
	bl FUN_ov1_020cae18
	cmp r0, #0
	mov r0, r7
	bne _020C6768
	mov r1, #0
	b _020C676C
_020C6768:
	mov r1, #1
_020C676C:
	bl FUN_ov126_0212fbe0
	mov r0, r9
	bl FUN_ov1_020cadd8
	mov r6, r0
	mov r0, r9
	bl FUN_ov1_020cade8
	mov r1, #0x400
	rsb r1, r1, #0
	mov r5, r0
	cmp r6, r1
	cmpne r5, r1
	moveq r0, #0x80000000
	streq r0, [r7, #0x18]
	streq r0, [r7, #0x1c]
	beq _020C6830
	cmp r6, #0
	mov r0, r6, lsl #0xc
	ble _020C67C8
	bl FUN_0201f704
	mov r1, r0
	mov r0, #0x3f000000
	bl FUN_02020274
	b _020C67D4
_020C67C8:
	bl FUN_0201f704
	mov r1, #0x3f000000
	bl FUN_020204a4
_020C67D4:
	bl FUN_0201fdac
	str r0, [r7, #0x18]
	cmp r5, #0
	mov r0, r5, lsl #0xc
	ble _020C67FC
	bl FUN_0201f704
	mov r1, r0
	mov r0, #0x3f000000
	bl FUN_02020274
	b _020C6808
_020C67FC:
	bl FUN_0201f704
	mov r1, #0x3f000000
	bl FUN_020204a4
_020C6808:
	bl FUN_0201fdac
	str r0, [r7, #0x1c]
	mov r0, #0
	bl FUN_ov16_020f085c
	mov r5, r0
	bl FUN_ov16_020f081c
	cmp r5, r0
	beq _020C6830
	ldr r0, _020C6B64 ; =0x0209A2D8
	bl FUN_ov16_020f0298
_020C6830:
	mov r0, r9
	bl FUN_ov1_020cae68
	cmp r0, #0
	beq _020C684C
	ldr r0, _020C6B68 ; =0x02099F14
	ldr r0, [r0]
	bl FUN_ov1_020e3cd0
_020C684C:
	mov r0, r9
	bl FUN_ov1_020cadf8
	ldr r2, _020C6B68 ; =0x02099F14
	mov r1, r0
	ldr r0, [r2]
	bl FUN_ov1_020e3e8c
	mov r0, r9
	bl FUN_ov1_020cae08
	and r1, r0, #1
	ldr r0, _020C6B5C ; =0x0209A2C0
	bl FUN_ov126_0212fc08
	mov r0, r9
	bl FUN_ov1_020cb208
	cmp r0, #0
	ldrneh r0, [r10, #0x84]
	ldrneb r1, [r9, #0xae]
	cmpne r0, r1
	beq _020C68B0
	mov r0, r9
	strh r1, [r10, #0x84]
	bl FUN_ov1_020cb208
	bl FUN_ov16_020f0590
	mov r1, r0
	ldr r0, _020C6B6C ; =0x0209AC44
	bl FUN_0202cf6c
_020C68B0:
	mov r0, r9
	bl FUN_ov1_020cb1e8
	mov r2, r0
	ldr r0, _020C6B70 ; =0x02099EF0
	mov r1, r4
	ldr r0, [r0]
	bl FUN_ov132_02145018
	mov r0, r9
	bl FUN_ov1_020cb1f8
	mov r2, r0
	ldr r0, _020C6B70 ; =0x02099EF0
	mov r5, #1
	ldr r0, [r0]
	mov r1, r5
	bl FUN_ov132_02145018
	mov r0, r9
	bl FUN_ov1_020cb218
	mov r2, r0
	ldr r0, _020C6B70 ; =0x02099EF0
	ldrsb r1, [r9, #0xaf]
	ldr r0, [r0]
	mov r3, r5
	bl FUN_ov132_02152f00
	mov r0, r9
	bl FUN_ov1_020cae78
	cmp r0, #0
	beq _020C6928
	ldr r0, _020C6B68 ; =0x02099F14
	mov r1, r5
	b _020C6930
_020C6928:
	ldr r0, _020C6B68 ; =0x02099F14
	mov r1, r4
_020C6930:
	ldr r0, [r0]
	bl FUN_ov1_020e3de4
	ldr r5, [r7, #0x48]
	mov r8, #0
	cmp r5, #0
	ldrlt r5, [r7, #0x4c]
	mov r6, r8
	cmp r5, #0
	blt _020C69B4
	mov r0, r5
	bl FUN_ov16_020efa80
	movs r4, r0
	beq _020C69B4
	bl FUN_0206d688
	cmp r0, #0
	ldrne r0, [r4, #0x84]
	cmpne r0, #0
	beq _020C69B4
	ldr r0, _020C6B70 ; =0x02099EF0
	mov r1, r4
	ldr r0, [r0]
	bl FUN_ov126_02139298
	cmp r0, #0
	blt _020C69B4
	str r6, [sp]
	str r0, [sp, #4]
	ldr r2, [r4, #0x84]
	mov r0, r10
	mov r1, r4
	add r3, r9, #0xc
	bl FUN_ov1_020c6124
	mov r6, r0
	add r8, r8, #1
_020C69B4:
	mov r0, r9
	bl FUN_ov1_020cb270
	mov r4, r0
	mov r0, r9
	bl FUN_ov1_020cb280
	mov r11, r0
	mov r7, #0
	b _020C6A48
_020C69D4:
	ldr r1, _020C6B74 ; =0x2E8BA2E9
	add r0, r4, #1
	smull r3, r4, r1, r0
	mov r2, r0, lsr #0x1f
	add r4, r2, r4, asr #2
	mov r1, #0x16
	smull r2, r3, r1, r4
	sub r4, r0, r2
	ldr r0, _020C6B70 ; =0x02099EF0
	mov r1, r4
	ldr r0, [r0]
	bl FUN_ov126_0213922c
	movs r1, r0
	ldrne r0, [r1, #0x84]
	cmpne r0, #0
	ldrnesh r0, [r1, #0x94]
	cmpne r5, r0
	beq _020C6A44
	str r6, [sp]
	str r4, [sp, #4]
	ldr r2, [r1, #0x84]
	mov r0, r10
	add r3, r9, #0xc
	bl FUN_ov1_020c6124
	add r8, r8, #1
	mov r6, r0
	cmp r8, r11
	beq _020C6A50
_020C6A44:
	add r7, r7, #1
_020C6A48:
	cmp r7, #0x16
	blt _020C69D4
_020C6A50:
	mov r8, #0
	cmp r5, #0
	ldr r11, _020C6B70 ; =0x02099EF0
	blt _020C6AC4
	mov r0, r5
	bl FUN_ov16_020efa80
	movs r4, r0
	beq _020C6AC4
	bl FUN_0206d688
	cmp r0, #0
	ldrne r0, [r4, #0x84]
	cmpne r0, #0
	beq _020C6AC4
	ldr r0, [r11]
	mov r1, r4
	bl FUN_ov126_02139298
	cmp r0, #0
	blt _020C6AC4
	ldr r2, [r9, #0xa8]
	mov r1, #1
	tst r2, r1, lsl r0
	beq _020C6AC4
	add r3, r9, #0x7a
	ldr r2, [r4, #0x84]
	mov r0, r10
	mov r1, r4
	add r3, r3, r8, lsl #1
	add r8, r8, #1
	bl FUN_ov1_020c62dc
_020C6AC4:
	mov r0, r9
	bl FUN_ov1_020cb290
	mov r4, r0
	mov r7, #0
	add r6, r9, #0x7a
	b _020C6B4C
_020C6ADC:
	ldr r1, _020C6B74 ; =0x2E8BA2E9
	add r0, r4, #1
	smull r3, r4, r1, r0
	mov r2, r0, lsr #0x1f
	add r4, r2, r4, asr #2
	mov r1, #0x16
	smull r2, r3, r1, r4
	sub r4, r0, r2
	ldr r0, [r11]
	mov r1, r4
	bl FUN_ov126_0213922c
	movs r1, r0
	beq _020C6B48
	ldr r2, [r9, #0xa8]
	mov r0, #1
	tst r2, r0, lsl r4
	ldrnesh r0, [r1, #0x94]
	cmpne r5, r0
	beq _020C6B48
	ldr r2, [r1, #0x84]
	add r3, r6, r8, lsl #1
	mov r0, r10
	add r8, r8, #1
	bl FUN_ov1_020c62dc
	cmp r8, #0x16
	addeq sp, sp, #8
	ldmeqfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_020C6B48:
	add r7, r7, #1
_020C6B4C:
	cmp r7, #0x16
	blt _020C6ADC
	add sp, sp, #8
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_020C6B5C: .word 0x0209A2C0
_020C6B60: .word 0x0209AEC0
_020C6B64: .word 0x0209A2D8
_020C6B68: .word 0x02099F14
_020C6B6C: .word 0x0209AC44
_020C6B70: .word 0x02099EF0
_020C6B74: .word 0x2E8BA2E9
	arm_func_end FUN_ov1_020c65a8

	arm_func_start FUN_ov1_020c6b78
FUN_ov1_020c6b78: ; 0x020C6B78
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, lr}
	sub sp, sp, #4
	mov r7, #0
	mov r9, r0
	mov r8, r1
	mov r5, r7
	mov r4, #1
_020C6B94:
	mov r0, r8
	bl FUN_ov1_020cbbdc
	cmp r0, #0
	blt _020C6C68
	bl FUN_ov16_020efa80
	movs r6, r0
	beq _020C6C68
	mov r0, r5
	bl FUN_ov16_020f085c
	mov r10, r0
	bl FUN_ov16_020f081c
	cmp r10, r0
	ldrh r2, [r8, #6]
	ldr r1, [r6, #0x84]
	mov r0, r8
	bne _020C6BE8
	strh r2, [r1, #0x18]
	bl FUN_ov1_020cbbbc
	ldr r1, [r6, #0x84]
	strb r0, [r1, #0x1a]
	b _020C6C0C
_020C6BE8:
	add r2, r2, #0x8000
	strh r2, [r1, #0x18]
	bl FUN_ov1_020cbbbc
	add r0, r0, #4
	mov r1, r0, lsr #0x1f
	rsb r0, r1, r0, lsl #29
	ldr r2, [r6, #0x84]
	add r0, r1, r0, ror #29
	strb r0, [r2, #0x1a]
_020C6C0C:
	mov r0, r8
	bl FUN_ov1_020cbbac
	mov r1, r0, lsl #0x10
	mov r0, r6
	mov r1, r1, asr #0x10
	bl FUN_0206cc9c
	mov r0, r8
	bl FUN_ov1_020cbbcc
	mov r0, r0, lsl #0x10
	mov r1, r0, asr #0x10
	mov r0, r6
	bl FUN_0206cc44
	str r4, [sp]
	ldr r2, [r6, #0x84]
	mov r0, r9
	mov r1, r6
	mov r3, r8
	bl FUN_ov1_020c5e44
	ldr r1, [r6, #0x84]
	mov r0, r9
	add r2, r8, #4
	bl FUN_ov1_020c60b4
	add r8, r8, #0xc
_020C6C68:
	add r7, r7, #1
	cmp r7, #6
	blt _020C6B94
	add sp, sp, #4
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, pc}
	arm_func_end FUN_ov1_020c6b78

	arm_func_start FUN_ov1_020c6c7c
FUN_ov1_020c6c7c: ; 0x020C6C7C
	stmfd sp!, {r4, r5, r6, r7, r8, lr}
	mov r7, r0
	mov r0, r1
	mov r6, r2
	bl FUN_ov1_020cbfa0
	mov r5, r0
	cmp r5, #1
	bne _020C6CA8
	mov r0, r7
	mov r1, #0xa
	bl FUN_ov1_020bffd4
_020C6CA8:
	ldr r0, [r7, #0x70]
	cmp r0, r5
	ldmeqfd sp!, {r4, r5, r6, r7, r8, pc}
	cmp r5, #1
	bne _020C6D8C
	ldr r4, _020C6DD8 ; =0x0209A2C0
	add r0, r6, #0x38
	mov r1, r4
	bl FUN_ov1_020cb5f4
	mov r0, #0
	bl FUN_ov16_020f085c
	mov r8, r0
	bl FUN_ov16_020f081c
	cmp r8, r0
	beq _020C6D24
	mov r0, r4
	bl FUN_ov16_020f0298
	ldr r0, _020C6DDC ; =0x0209A2CC
	bl FUN_ov16_020f0298
	ldr r0, _020C6DE0 ; =0x0209A2D8
	bl FUN_ov16_020f0298
	ldr r0, _020C6DE4 ; =0x0209A2E0
	bl FUN_ov16_020f0298
	ldr r0, _020C6DE8 ; =0x0209A2E8
	bl FUN_ov16_020f0298
	ldrh r0, [r4, #0x52]
	add r0, r0, #0x8000
	strh r0, [r4, #0x52]
	ldrb r0, [r4, #0x5d]
	add r0, r0, #0x80
	strb r0, [r4, #0x5d]
_020C6D24:
	ldr r4, _020C6DEC ; =0x02099EF0
	ldr r0, [r4]
	bl FUN_ov132_0214388c
	ldr r2, _020C6DD8 ; =0x0209A2C0
	mov r0, r7
	ldmia r2, {r1, r2}
	bl FUN_ov1_020cc44c
	ldr r0, [r4]
	bl FUN_ov126_021323b4
	mov r1, r0
	add r0, r6, #0x20
	bl FUN_ov1_020cbaa0
	add r0, r6, #8
	bl FUN_ov16_020ef9b4
	ldr r0, [r4]
	bl FUN_ov126_02137644
	mov r1, #0
	strb r1, [r0, #0x2e]
	ldr r0, [r4]
	ldr r2, [r6]
	bl FUN_ov132_02145030
	ldr r0, [r4]
	ldr r2, [r6, #4]
	mov r1, #1
	bl FUN_ov132_02145030
	b _020C6DC4
_020C6D8C:
	cmp r5, #2
	blt _020C6DC4
	cmp r5, #5
	bgt _020C6DC4
	mov r0, r7
	mov r1, r6
	bl FUN_ov1_020c6b78
	cmp r5, #5
	bne _020C6DC4
	mov r0, r7
	bl FUN_ov1_020c404c
	mov r0, r7
	mov r1, #0xb
	bl FUN_ov1_020bffd4
_020C6DC4:
	ldr r0, _020C6DF0 ; =0x0209A4E4
	mov r1, r5
	str r5, [r7, #0x70]
	bl FUN_ov1_020cbf10
	ldmfd sp!, {r4, r5, r6, r7, r8, pc}
_020C6DD8: .word 0x0209A2C0
_020C6DDC: .word 0x0209A2CC
_020C6DE0: .word 0x0209A2D8
_020C6DE4: .word 0x0209A2E0
_020C6DE8: .word 0x0209A2E8
_020C6DEC: .word 0x02099EF0
_020C6DF0: .word 0x0209A4E4
	arm_func_end FUN_ov1_020c6c7c

	arm_func_start FUN_ov1_020c6df4
FUN_ov1_020c6df4: ; 0x020C6DF4
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, lr}
	mov r8, #1
	mov r7, #0
	cmp r2, #0
	ldr r4, _020C6F14 ; =0x02099EF0
	mov r10, r0
	mov r9, r1
	movne r8, r7
	mov r11, #0
_020C6E18:
	mov r0, r9
	bl FUN_ov1_020cbbdc
	cmp r0, #0
	blt _020C6F04
	bl FUN_ov16_020efa80
	movs r6, r0
	beq _020C6F04
	mov r0, r11
	bl FUN_ov16_020f085c
	mov r5, r0
	bl FUN_ov16_020f081c
	cmp r5, r0
	ldrh r2, [r9, #6]
	ldr r1, [r6, #0x84]
	mov r0, r9
	bne _020C6E6C
	strh r2, [r1, #0x18]
	bl FUN_ov1_020cbbbc
	ldr r1, [r6, #0x84]
	strb r0, [r1, #0x1a]
	b _020C6E90
_020C6E6C:
	add r2, r2, #0x8000
	strh r2, [r1, #0x18]
	bl FUN_ov1_020cbbbc
	add r0, r0, #4
	mov r1, r0, lsr #0x1f
	rsb r0, r1, r0, lsl #29
	ldr r2, [r6, #0x84]
	add r0, r1, r0, ror #29
	strb r0, [r2, #0x1a]
_020C6E90:
	mov r0, r9
	bl FUN_ov1_020cbbac
	mov r1, r0, lsl #0x10
	mov r0, r6
	mov r1, r1, asr #0x10
	bl FUN_0206cc9c
	mov r0, r9
	bl FUN_ov1_020cbbcc
	mov r0, r0, lsl #0x10
	mov r1, r0, asr #0x10
	mov r0, r6
	bl FUN_0206cc44
	ldrsh r1, [r6, #0x94]
	ldr r0, [r4]
	mov r2, #1
	bl FUN_ov132_021430b4
	cmp r0, #0
	beq _020C6F04
	str r8, [sp]
	ldr r2, [r6, #0x84]
	mov r0, r10
	mov r1, r6
	mov r3, r9
	bl FUN_ov1_020c5e44
	ldr r1, [r6, #0x84]
	mov r0, r10
	add r2, r9, #4
	bl FUN_ov1_020c60b4
	add r9, r9, #0xc
_020C6F04:
	add r7, r7, #1
	cmp r7, #6
	blt _020C6E18
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_020C6F14: .word 0x02099EF0
	arm_func_end FUN_ov1_020c6df4

	arm_func_start FUN_ov1_020c6f18
FUN_ov1_020c6f18: ; 0x020C6F18
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, lr}
	mov r8, r0
	mov r0, r1
	mov r7, r2
	mov r6, r3
	bl FUN_ov1_020cbfa0
	mov r5, r0
	cmp r5, #1
	bne _020C6F48
	mov r0, r8
	mov r1, r6
	bl FUN_ov1_020bffd4
_020C6F48:
	ldr r0, [r8, #0x70]
	cmp r0, r5
	ldmeqfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
	cmp r5, #1
	bne _020C703C
	ldr r4, _020C70B8 ; =0x0209A2C0
	add r0, r7, #0x38
	mov r1, r4
	bl FUN_ov1_020cb5f4
	mov r0, #0
	bl FUN_ov16_020f085c
	mov r9, r0
	bl FUN_ov16_020f081c
	cmp r9, r0
	beq _020C6FC4
	mov r0, r4
	bl FUN_ov16_020f0298
	ldr r0, _020C70BC ; =0x0209A2CC
	bl FUN_ov16_020f0298
	ldr r0, _020C70C0 ; =0x0209A2D8
	bl FUN_ov16_020f0298
	ldr r0, _020C70C4 ; =0x0209A2E0
	bl FUN_ov16_020f0298
	ldr r0, _020C70C8 ; =0x0209A2E8
	bl FUN_ov16_020f0298
	ldrh r0, [r4, #0x52]
	add r0, r0, #0x8000
	strh r0, [r4, #0x52]
	ldrb r0, [r4, #0x5d]
	add r0, r0, #0x80
	strb r0, [r4, #0x5d]
_020C6FC4:
	ldr r4, _020C70CC ; =0x02099EF0
	ldr r0, [r4]
	bl FUN_ov132_0214388c
	ldr r2, _020C70B8 ; =0x0209A2C0
	mov r0, r8
	ldmia r2, {r1, r2}
	bl FUN_ov1_020cc44c
	ldr r0, [r4]
	bl FUN_ov126_02137544
	mov r1, r0
	add r0, r7, #0x20
	bl FUN_ov1_020cb97c
	add r0, r7, #8
	bl FUN_ov16_020ef9b4
	cmp r6, #0xc
	bne _020C7014
	ldr r0, [r4]
	bl FUN_ov126_02137644
	ldr r0, [r4]
	bl FUN_ov126_02137644
_020C7014:
	ldr r4, _020C70CC ; =0x02099EF0
	ldr r2, [r7]
	ldr r0, [r4]
	mov r1, #0
	bl FUN_ov132_02145030
	ldr r0, [r4]
	ldr r2, [r7, #4]
	mov r1, #1
	bl FUN_ov132_02145030
	b _020C70A4
_020C703C:
	cmp r5, #2
	blt _020C70A4
	cmp r5, #5
	bgt _020C70A4
	mov r2, #1
	cmp r6, #0xe
	movne r2, #0
	mov r0, r8
	mov r1, r7
	bl FUN_ov1_020c6df4
	cmp r5, #5
	bne _020C70A4
	mov r0, r8
	bl FUN_ov1_020c404c
	cmp r6, #0xe
	bne _020C7088
	mov r0, r8
	mov r1, #0xf
	b _020C70A0
_020C7088:
	cmp r6, #0x16
	mov r0, r8
	bne _020C709C
	mov r1, #0x17
	b _020C70A0
_020C709C:
	mov r1, #0xd
_020C70A0:
	bl FUN_ov1_020bffd4
_020C70A4:
	ldr r0, _020C70D0 ; =0x0209A4E4
	mov r1, r5
	str r5, [r8, #0x70]
	bl FUN_ov1_020cbf10
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
_020C70B8: .word 0x0209A2C0
_020C70BC: .word 0x0209A2CC
_020C70C0: .word 0x0209A2D8
_020C70C4: .word 0x0209A2E0
_020C70C8: .word 0x0209A2E8
_020C70CC: .word 0x02099EF0
_020C70D0: .word 0x0209A4E4
	arm_func_end FUN_ov1_020c6f18

	arm_func_start FUN_ov1_020c70d4
FUN_ov1_020c70d4: ; 0x020C70D4
	stmfd sp!, {r4, r5, r6, r7, r8, r9, r10, lr}
	mov r8, r0
	mov r0, r1
	mov r7, r2
	ldr r4, _020C7398 ; =0x02099EF0
	bl FUN_ov1_020cbfa0
	mov r6, r0
	cmp r6, #1
	bne _020C7104
	mov r0, r8
	mov r1, #0x12
	bl FUN_ov1_020bffd4
_020C7104:
	ldr r0, [r8, #0x70]
	cmp r0, r6
	ldmeqfd sp!, {r4, r5, r6, r7, r8, r9, r10, pc}
	cmp r6, #1
	bne _020C7214
	ldr r5, _020C739C ; =0x0209A2C0
	add r0, r7, #0x2c
	mov r1, r5
	bl FUN_ov1_020cb5f4
	mov r0, #0
	bl FUN_ov16_020f085c
	mov r9, r0
	bl FUN_ov16_020f081c
	cmp r9, r0
	beq _020C7180
	mov r0, r5
	bl FUN_ov16_020f0298
	ldr r0, _020C73A0 ; =0x0209A2CC
	bl FUN_ov16_020f0298
	ldr r0, _020C73A4 ; =0x0209A2D8
	bl FUN_ov16_020f0298
	ldr r0, _020C73A8 ; =0x0209A2E0
	bl FUN_ov16_020f0298
	ldr r0, _020C73AC ; =0x0209A2E8
	bl FUN_ov16_020f0298
	ldrh r0, [r5, #0x52]
	add r0, r0, #0x8000
	strh r0, [r5, #0x52]
	ldrb r0, [r5, #0x5d]
	add r0, r0, #0x80
	strb r0, [r5, #0x5d]
_020C7180:
	ldr r0, [r4]
	bl FUN_ov132_0214388c
	ldr r0, [r4]
	bl FUN_ov126_0213777c
	mov r5, r0
	ldrsb r1, [r5, #0x20]
	mvn r0, #0
	cmp r1, r0
	ldreqsb r1, [r5, #0x24]
	cmpeq r1, r0
	bne _020C71B8
	ldr r0, [r4]
	bl FUN_ov126_02137644
	mov r5, r0
_020C71B8:
	mov r1, r5
	add r0, r7, #0x20
	bl FUN_ov1_020cbc70
	ldrsb r2, [r5, #0x20]
	ldr r0, _020C73B0 ; =0x020EAAC0
	ldr r1, _020C73B4 ; =0x020EAAF4
	str r2, [r0]
	ldrsh r2, [r5, #0x22]
	add r0, r7, #8
	strh r2, [r1, #4]
	bl FUN_ov16_020ef9b4
	ldr r0, [r4]
	ldr r2, [r7]
	mov r1, #0
	bl FUN_ov132_02145030
	ldr r0, [r4]
	ldr r2, [r7, #4]
	mov r1, #1
	bl FUN_ov132_02145030
	ldrsh r1, [r7, #0x44]
	ldr r0, [r4]
	bl FUN_ov132_0214731c
	b _020C7384
_020C7214:
	cmp r6, #2
	bne _020C7234
	ldr r0, [r4]
	bl FUN_ov126_02137544
	mov r1, r0
	mov r0, r7
	bl FUN_ov1_020cb97c
	b _020C7384
_020C7234:
	cmp r6, #3
	blt _020C7384
	cmp r6, #6
	bgt _020C7384
	mov r5, #0
	mov r0, r8
	mov r1, r7
	mov r2, r5
	bl FUN_ov1_020c6df4
	cmp r6, #6
	bne _020C7384
	mov r0, r8
	bl FUN_ov1_020c404c
	ldr r0, [r4]
	bl FUN_ov126_0213777c
	ldrsb r1, [r0, #0x20]
	mov r0, r8
	bl FUN_ov1_020bf4e0
	cmp r0, #0
	movne r5, #1
	cmp r5, #1
	bne _020C7348
	ldr r0, [r4]
	bl FUN_ov126_0213777c
	mov r5, r0
	ldrsb r1, [r5, #0x20]
	ldr r0, [r4]
	bl FUN_ov132_02149258
	ldrb r1, [r5, #0x2e]
	ldrb r0, [r5, #0x2f]
	cmp r1, #1
	bne _020C72FC
	ldr r0, [r4]
	bl FUN_ov132_02149720
	ldr r0, [r4]
	bl FUN_ov132_02149714
	mov r7, r0
	ldr r9, [r7, #0x28]
	mov r10, #0
	ldr r5, _020C73B8 ; =0x02099F14
	b _020C72F0
_020C72D8:
	ldr r0, [r7, r10, lsl #2]
	bl FUN_ov16_020efa80
	mov r1, r0
	ldr r0, [r5]
	bl FUN_ov1_020e3944
	add r10, r10, #1
_020C72F0:
	cmp r10, r9
	blt _020C72D8
	b _020C7348
_020C72FC:
	cmp r0, #1
	bne _020C7348
	ldr r0, [r4]
	bl FUN_ov132_021492b0
	ldr r0, [r4]
	bl FUN_ov132_021492a4
	mov r7, r0
	ldr r9, [r7, #0x28]
	mov r10, #0
	ldr r5, _020C73B8 ; =0x02099F14
	b _020C7340
_020C7328:
	ldr r0, [r7, r10, lsl #2]
	bl FUN_ov16_020efa80
	mov r1, r0
	ldr r0, [r5]
	bl FUN_ov1_020e3944
	add r10, r10, #1
_020C7340:
	cmp r10, r9
	blt _020C7328
_020C7348:
	ldr r0, [r4]
	bl FUN_ov126_0213777c
	mov r5, r0
	ldrsb r0, [r5, #0x20]
	bl FUN_ov16_020f07f4
	mov r4, r0
	ldrsb r0, [r5, #0x24]
	bl FUN_ov16_020f07f4
	cmp r4, r0
	mov r0, r8
	bne _020C737C
	mov r1, #0x11
	b _020C7380
_020C737C:
	mov r1, #0x10
_020C7380:
	bl FUN_ov1_020bffd4
_020C7384:
	ldr r0, _020C73BC ; =0x0209A4E4
	mov r1, r6
	str r6, [r8, #0x70]
	bl FUN_ov1_020cbf10
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, pc}
_020C7398: .word 0x02099EF0
_020C739C: .word 0x0209A2C0
_020C73A0: .word 0x0209A2CC
_020C73A4: .word 0x0209A2D8
_020C73A8: .word 0x0209A2E0
_020C73AC: .word 0x0209A2E8
_020C73B0: .word 0x020EAAC0
_020C73B4: .word 0x020EAAF4
_020C73B8: .word 0x02099F14
_020C73BC: .word 0x0209A4E4
	arm_func_end FUN_ov1_020c70d4

	arm_func_start FUN_ov1_020c73c0
FUN_ov1_020c73c0: ; 0x020C73C0
	stmfd sp!, {r4, r5, r6, r7, r8, lr}
	mov r7, r0
	mov r0, r1
	mov r6, r2
	bl FUN_ov1_020cbfa0
	mov r5, r0
	cmp r5, #1
	bne _020C73EC
	mov r0, r7
	mov r1, #0x14
	bl FUN_ov1_020bffd4
_020C73EC:
	ldr r0, [r7, #0x70]
	cmp r0, r5
	ldmeqfd sp!, {r4, r5, r6, r7, r8, pc}
	cmp r5, #1
	bne _020C74DC
	ldr r4, _020C7550 ; =0x0209A2C0
	add r0, r6, #0x2c
	mov r1, r4
	bl FUN_ov1_020cb5f4
	mov r0, #0
	bl FUN_ov16_020f085c
	mov r8, r0
	bl FUN_ov16_020f081c
	cmp r8, r0
	beq _020C7468
	mov r0, r4
	bl FUN_ov16_020f0298
	ldr r0, _020C7554 ; =0x0209A2CC
	bl FUN_ov16_020f0298
	ldr r0, _020C7558 ; =0x0209A2D8
	bl FUN_ov16_020f0298
	ldr r0, _020C755C ; =0x0209A2E0
	bl FUN_ov16_020f0298
	ldr r0, _020C7560 ; =0x0209A2E8
	bl FUN_ov16_020f0298
	ldrh r0, [r4, #0x52]
	add r0, r0, #0x8000
	strh r0, [r4, #0x52]
	ldrb r0, [r4, #0x5d]
	add r0, r0, #0x80
	strb r0, [r4, #0x5d]
_020C7468:
	ldr r8, _020C7564 ; =0x02099EF0
	ldr r0, [r8]
	bl FUN_ov132_0214388c
	ldr r0, [r8]
	bl FUN_ov126_0213777c
	mov r4, r0
	mov r1, r4
	add r0, r6, #0x20
	bl FUN_ov1_020cbc70
	ldrsb r2, [r4, #0x20]
	ldr r0, _020C7568 ; =0x020EAAC0
	ldr r1, _020C756C ; =0x020EAAF4
	str r2, [r0]
	ldrsh r2, [r4, #0x22]
	add r0, r6, #8
	strh r2, [r1, #4]
	bl FUN_ov16_020ef9b4
	ldr r0, [r8]
	mov r1, #0
	ldr r2, [r6]
	bl FUN_ov132_02145030
	ldr r0, [r8]
	mov r1, #1
	ldr r2, [r6, #4]
	bl FUN_ov132_02145030
	ldr r0, [r8]
	ldrsh r1, [r6, #0x44]
	bl FUN_ov132_0214731c
	b _020C753C
_020C74DC:
	cmp r5, #2
	bne _020C7500
	ldr r0, _020C7564 ; =0x02099EF0
	ldr r0, [r0]
	bl FUN_ov126_02137544
	mov r1, r0
	mov r0, r6
	bl FUN_ov1_020cb97c
	b _020C753C
_020C7500:
	cmp r5, #3
	blt _020C753C
	cmp r5, #6
	bgt _020C753C
	mov r0, r7
	mov r1, r6
	mov r2, #0
	bl FUN_ov1_020c6df4
	cmp r5, #6
	bne _020C753C
	mov r0, r7
	bl FUN_ov1_020c404c
	mov r0, r7
	mov r1, #0x15
	bl FUN_ov1_020bffd4
_020C753C:
	ldr r0, _020C7570 ; =0x0209A4E4
	mov r1, r5
	str r5, [r7, #0x70]
	bl FUN_ov1_020cbf10
	ldmfd sp!, {r4, r5, r6, r7, r8, pc}
_020C7550: .word 0x0209A2C0
_020C7554: .word 0x0209A2CC
_020C7558: .word 0x0209A2D8
_020C755C: .word 0x0209A2E0
_020C7560: .word 0x0209A2E8
_020C7564: .word 0x02099EF0
_020C7568: .word 0x020EAAC0
_020C756C: .word 0x020EAAF4
_020C7570: .word 0x0209A4E4
	arm_func_end FUN_ov1_020c73c0

	arm_func_start FUN_ov1_020c7574
FUN_ov1_020c7574: ; 0x020C7574
	stmfd sp!, {r4, r5, r6, r7, r8, lr}
	mov r7, r0
	mov r0, r1
	mov r6, r2
	bl FUN_ov1_020cbfa0
	mov r5, r0
	cmp r5, #1
	bne _020C75A0
	mov r0, r7
	mov r1, #0x18
	bl FUN_ov1_020bffd4
_020C75A0:
	ldr r0, [r7, #0x70]
	cmp r0, r5
	ldmeqfd sp!, {r4, r5, r6, r7, r8, pc}
	cmp r5, #1
	bne _020C76C4
	ldr r4, _020C775C ; =0x0209A2C0
	add r0, r6, #0x2c
	mov r1, r4
	bl FUN_ov1_020cb5f4
	mov r0, #0
	bl FUN_ov16_020f085c
	mov r8, r0
	bl FUN_ov16_020f081c
	cmp r8, r0
	beq _020C761C
	mov r0, r4
	bl FUN_ov16_020f0298
	ldr r0, _020C7760 ; =0x0209A2CC
	bl FUN_ov16_020f0298
	ldr r0, _020C7764 ; =0x0209A2D8
	bl FUN_ov16_020f0298
	ldr r0, _020C7768 ; =0x0209A2E0
	bl FUN_ov16_020f0298
	ldr r0, _020C776C ; =0x0209A2E8
	bl FUN_ov16_020f0298
	ldrh r0, [r4, #0x52]
	add r0, r0, #0x8000
	strh r0, [r4, #0x52]
	ldrb r0, [r4, #0x5d]
	add r0, r0, #0x80
	strb r0, [r4, #0x5d]
_020C761C:
	ldr r0, _020C7770 ; =0x02099EF0
	ldr r0, [r0]
	bl FUN_ov132_0214388c
	ldrb r1, [r6, #0x20]
	ldr r0, _020C7774 ; =0x0209AEC0
	strh r1, [r7, #0x5a]
	bl FUN_02046730
	ldrb r1, [r6, #0x20]
	cmp r1, r0
	moveq r0, #1
	movne r0, #0
	strb r0, [r7, #0x58]
	tst r0, #0xff
	bne _020C767C
	ldrh r0, [r7, #0x5a]
	bl FUN_ov16_020f085c
	mov r4, r0
	bl FUN_ov16_020f081c
	cmp r4, r0
	beq _020C767C
	bl FUN_ov16_020f0944 ; may be ov17
	cmp r0, #0
	movne r0, #1
	strneb r0, [r7, #0x58]
_020C767C:
	ldr r4, _020C7770 ; =0x02099EF0
	ldr r0, [r4]
	bl FUN_ov132_02159d70
	mov r1, r0
	add r0, r6, #0x24
	mov r2, #8
	bl MI_CpuCopy8
	add r0, r6, #8
	bl FUN_ov16_020ef9b4
	ldr r0, [r4]
	mov r1, #0
	ldr r2, [r6]
	bl FUN_ov132_02145030
	ldr r0, [r4]
	ldr r2, [r6, #4]
	mov r1, #1
	bl FUN_ov132_02145030
	b _020C7748
_020C76C4:
	cmp r5, #2
	blt _020C7748
	cmp r5, #5
	bgt _020C7748
	mov r0, r7
	mov r1, r6
	mov r2, #0
	bl FUN_ov1_020c6df4
	cmp r5, #5
	bne _020C7748
	mov r1, #0x14
	ldr r4, _020C7770 ; =0x02099EF0
	str r1, [r7, #0x338]
	ldr r0, [r4]
	bl FUN_ov132_021447f4
	ldr r0, [r4]
	mov r1, #6
	bl FUN_ov132_021447d0
	mov r0, r7
	bl FUN_ov1_020c404c
	ldr r0, [r4]
	bl FUN_ov132_021434f8
	cmp r0, #0
	bne _020C7734
	mov r0, r7
	mov r1, #0x19
	bl FUN_ov1_020bffd4
	b _020C7748
_020C7734:
	mov r2, #0x1a
	mov r0, r7
	mov r1, #0x50
	str r2, [r7, #8]
	bl FUN_ov1_020bf9f4
_020C7748:
	ldr r0, _020C7778 ; =0x0209A4E4
	mov r1, r5
	str r5, [r7, #0x70]
	bl FUN_ov1_020cbf10
	ldmfd sp!, {r4, r5, r6, r7, r8, pc}
_020C775C: .word 0x0209A2C0
_020C7760: .word 0x0209A2CC
_020C7764: .word 0x0209A2D8
_020C7768: .word 0x0209A2E0
_020C776C: .word 0x0209A2E8
_020C7770: .word 0x02099EF0
_020C7774: .word 0x0209AEC0
_020C7778: .word 0x0209A4E4
	arm_func_end FUN_ov1_020c7574

	arm_func_start FUN_ov1_020c777c
FUN_ov1_020c777c: ; 0x020C777C
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, lr}
	mov r8, #0
	mov r7, r0
	mov r5, r1
	mov r0, r8
	mov r1, r8
	mov r6, r2
	bl FUN_ov16_020f0634
	ldrb r4, [r0, #3]
	mov r0, r5
	bl FUN_ov1_020cbfa0
	ldr r1, [r7, #0x70]
	mov r5, r0
	cmp r1, r5
	ldmeqfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
	cmp r5, #1
	bne _020C785C
	cmp r4, #0x28
	mov r0, r7
	bne _020C77D4
	mov r1, #0x28
	b _020C77D8
_020C77D4:
	mov r1, #0x2a
_020C77D8:
	bl FUN_ov1_020bffd4
	ldr r4, _020C78D4 ; =0x0209A2C0
	mov r0, r6
	mov r1, r4
	bl FUN_ov1_020cb5f4
	mov r0, #0
	bl FUN_ov16_020f085c
	mov r6, r0
	ldr r0, _020C78D8 ; =0x0209AEC0
	bl FUN_02046730
	bl FUN_ov16_020f085c
	cmp r6, r0
	beq _020C784C
	mov r0, r4
	bl FUN_ov16_020f0298
	ldr r0, _020C78DC ; =0x0209A2CC
	bl FUN_ov16_020f0298
	ldr r0, _020C78E0 ; =0x0209A2D8
	bl FUN_ov16_020f0298
	ldr r0, _020C78E4 ; =0x0209A2E0
	bl FUN_ov16_020f0298
	ldr r0, _020C78E8 ; =0x0209A2E8
	bl FUN_ov16_020f0298
	ldrh r0, [r4, #0x52]
	add r0, r0, #0x8000
	strh r0, [r4, #0x52]
	ldrb r0, [r4, #0x5d]
	add r0, r0, #0x80
	strb r0, [r4, #0x5d]
_020C784C:
	ldr r0, _020C78EC ; =0x02099EF0
	ldr r0, [r0]
	bl FUN_ov132_0214388c
	b _020C78C0
_020C785C:
	cmp r5, #2
	bne _020C78C0
	ldr r9, _020C78F0 ; =0x0209BA20
	mov r1, r8
	mov r0, r9
	bl FUN_020724dc
	mov r8, #0x10
	mov r1, r0
	mov r0, r6
	mov r2, r8
	bl MI_CpuCopy8
	mov r0, r9
	mov r1, #1
	bl FUN_020724dc
	mov r1, r0
	mov r2, r8
	add r0, r6, #0x10
	bl MI_CpuCopy8
	cmp r4, #0x28
	mov r0, r7
	bne _020C78B8
	mov r1, #0x29
	b _020C78BC
_020C78B8:
	mov r1, #0x2b
_020C78BC:
	bl FUN_ov1_020bffd4
_020C78C0:
	ldr r0, _020C78F4 ; =0x0209A4E4
	mov r1, r5
	str r5, [r7, #0x70]
	bl FUN_ov1_020cbf10
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
_020C78D4: .word 0x0209A2C0
_020C78D8: .word 0x0209AEC0
_020C78DC: .word 0x0209A2CC
_020C78E0: .word 0x0209A2D8
_020C78E4: .word 0x0209A2E0
_020C78E8: .word 0x0209A2E8
_020C78EC: .word 0x02099EF0
_020C78F0: .word 0x0209BA20
_020C78F4: .word 0x0209A4E4
	arm_func_end FUN_ov1_020c777c

	arm_func_start FUN_ov1_020c78f8
FUN_ov1_020c78f8: ; 0x020C78F8
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, lr}
	mov r7, #0
	ldr r11, _020C7A60 ; =0x02099EF0
	mov r10, r0
	mov r9, r1
	mov r5, r7
_020C7910:
	ldrh r0, [r9, #0x10]
	cmp r0, #0
	beq _020C7A50
	mov r1, r5
	bl FUN_ov16_020efa9c
	movs r6, r0
	beq _020C7A50
	ldrsh r1, [r6, #0x94]
	ldr r0, [r11]
	mov r2, #1
	bl FUN_ov132_021430b4
	movs r4, r0
	beq _020C7A50
	add r0, r9, #8
	bl FUN_ov1_020cb0e0
	mov r3, r0
	mov r0, #1
	str r0, [sp]
	mov r0, r10
	mov r1, r6
	mov r2, r4
	bl FUN_ov1_020c5e44
	add r0, r9, #8
	bl FUN_ov1_020cb150
	mov r2, r0
	mov r1, r4
	mov r0, r10
	bl FUN_ov1_020c60b4
	ldrsh r1, [r6, #0x94]
	ldr r0, [r11]
	mov r2, r5
	bl FUN_ov132_021430b4
	mov r8, r0
	mov r0, r5
	bl FUN_ov16_020f085c
	mov r4, r0
	bl FUN_ov16_020f081c
	cmp r4, r0
	ldrh r1, [r9, #0x12]
	mov r0, r9
	bne _020C79C0
	strh r1, [r8, #0x18]
	bl FUN_ov1_020cbd4c
	b _020C79DC
_020C79C0:
	add r1, r1, #0x8000
	strh r1, [r8, #0x18]
	bl FUN_ov1_020cbd4c
	add r0, r0, #4
	mov r1, r0, lsr #0x1f
	rsb r0, r1, r0, lsl #29
	add r0, r1, r0, ror #29
_020C79DC:
	strb r0, [r8, #0x1a]
	mov r0, r9
	bl FUN_ov1_020cbd3c
	mov r0, r0, lsl #0x10
	mov r1, r0, asr #0x10
	mov r0, r6
	bl FUN_0206cc9c
	mov r0, r9
	bl FUN_ov1_020cbd34
	mov r0, r0, lsl #0x10
	mov r1, r0, asr #0x10
	mov r0, r6
	bl FUN_0206cc44
	mov r0, r9
	bl FUN_ov1_020cb0e0
	mov r2, #1
	str r2, [sp]
	mov r3, r0
	mov r1, r6
	mov r0, r10
	mov r2, r8
	bl FUN_ov1_020c5e44
	mov r0, r9
	bl FUN_ov1_020cb150
	mov r2, r0
	mov r1, r8
	mov r0, r10
	bl FUN_ov1_020c60b4
	add r9, r9, #0x18
_020C7A50:
	add r7, r7, #1
	cmp r7, #3
	blt _020C7910
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_020C7A60: .word 0x02099EF0
	arm_func_end FUN_ov1_020c78f8

	arm_func_start FUN_ov1_020c7a64
FUN_ov1_020c7a64: ; 0x020C7A64
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, lr}
	mov r5, r1
	mov r8, r0
	mov r7, r2
	cmp r5, #1
	mov r6, #0
	ldr r4, _020C7F20 ; =0x02099EF0
	bne _020C7C28
	mov r1, #0x46
	bl FUN_ov1_020bffd4
	ldr r5, _020C7F24 ; =0x0209A2C0
	mov r0, r7
	mov r1, r5
	bl FUN_ov1_020cb5f4
	mov r0, r6
	bl FUN_ov16_020f085c
	mov r9, r0
	ldr r0, _020C7F28 ; =0x0209AEC0
	bl FUN_02046730
	bl FUN_ov16_020f085c
	cmp r9, r0
	beq _020C7AFC
	mov r0, r5
	bl FUN_ov16_020f0298
	ldr r0, _020C7F2C ; =0x0209A2CC
	bl FUN_ov16_020f0298
	ldr r0, _020C7F30 ; =0x0209A2D8
	bl FUN_ov16_020f0298
	ldr r0, _020C7F34 ; =0x0209A2E0
	bl FUN_ov16_020f0298
	ldr r0, _020C7F38 ; =0x0209A2E8
	bl FUN_ov16_020f0298
	ldrh r0, [r5, #0x52]
	add r0, r0, #0x8000
	strh r0, [r5, #0x52]
	ldrb r0, [r5, #0x5d]
	add r0, r0, #0x80
	strb r0, [r5, #0x5d]
_020C7AFC:
	ldr r0, [r4]
	mov r1, r6
	bl FUN_ov132_02143114
	ldr r2, _020C7F24 ; =0x0209A2C0
	mov r1, #1
	ldr r3, [r2]
	str r3, [r0]
	ldr r3, [r2, #4]
	str r3, [r0, #4]
	ldr r3, [r2, #8]
	str r3, [r0, #8]
	ldr r3, [r2, #0x18]
	str r3, [r0, #0xc]
	ldr r3, [r2, #0x1c]
	str r3, [r0, #0x10]
	ldr r3, [r2, #0x30]
	str r3, [r0, #0x14]
	ldr r3, [r2, #0x38]
	str r3, [r0, #0x18]
	ldr r3, [r2, #0x48]
	strh r3, [r0, #0x1c]
	ldr r3, [r2, #0x4c]
	strh r3, [r0, #0x1e]
	ldrh r3, [r2, #0x52]
	strh r3, [r0, #0x20]
	ldrh r3, [r2, #0x56]
	strh r3, [r0, #0x22]
	ldrb r3, [r2, #0x5c]
	strb r3, [r0, #0x24]
	ldrb r3, [r2, #0x58]
	strb r3, [r0, #0x25]
	ldrb r3, [r2, #0x59]
	strb r3, [r0, #0x26]
	ldrb r3, [r2, #0x5d]
	strb r3, [r0, #0x27]
	ldrb r3, [r2, #0x5a]
	strb r3, [r0, #0x28]
	ldrb r2, [r2, #0x5b]
	strb r2, [r0, #0x29]
	ldr r0, [r4]
	bl FUN_ov132_02143114
	mov r5, r0
	mov r1, r5
	add r0, r7, #0x18
	mov r2, #0x2c
	bl MI_CpuCopy8
	mov r0, r6
	bl FUN_ov16_020f085c
	mov r6, r0
	ldr r0, _020C7F28 ; =0x0209AEC0
	bl FUN_02046730
	bl FUN_ov16_020f085c
	cmp r6, r0
	beq _020C7BFC
	mov r0, r5
	bl FUN_ov16_020f0298
	add r0, r5, #0xc
	bl FUN_ov16_020f0298
	ldrh r0, [r5, #0x20]
	add r0, r0, #0x8000
	strh r0, [r5, #0x20]
	ldrb r0, [r5, #0x27]
	add r0, r0, #0x80
	strb r0, [r5, #0x27]
_020C7BFC:
	ldrh r0, [r7, #0x4c]
	mov r1, #0
	str r0, [r8, #0x338]
	ldr r0, [r4]
	ldr r2, [r7, #0x44]
	bl FUN_ov132_02145030
	ldr r0, [r4]
	ldr r2, [r7, #0x48]
	mov r1, #1
	bl FUN_ov132_02145030
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
_020C7C28:
	cmp r5, #2
	bne _020C7DB8
	ldrb r1, [r7, #6]
	ldr r0, [r4]
	bl FUN_ov132_02143a28
	ldrsb r1, [r7, #0xc]
	cmp r1, r0
	beq _020C7C90
	ldrb r1, [r7, #6]
	ldr r0, [r4]
	bl FUN_ov132_02143b2c
	movs r1, r0
	beq _020C7C94
	ldrb r0, [r7, #0xb]
	cmp r0, #1
	bne _020C7C94
	mov r0, r7
	mov r2, #0x10
	strb r6, [r7, #0xb]
	bl MI_CpuCopy8
	ldrb r1, [r7, #9]
	ldr r0, _020C7F3C ; =0x020A0640
	strb r1, [r0, #0x98]
	ldrb r1, [r7, #0xa]
	strb r1, [r0, #0x99]
	b _020C7C94
_020C7C90:
	strb r6, [r7, #0xb]
_020C7C94:
	ldr r0, [r8, #0x338]
	cmp r0, #0x12
	cmpne r0, #0x13
	cmpne r0, #0x14
	beq _020C7D30
	ldr r0, [r4]
	bl FUN_ov126_021323b4
	movs r1, r0
	beq _020C7CC0
	add r0, r7, #0x10
	bl FUN_ov1_020cbaa0
_020C7CC0:
	ldr r0, [r4]
	bl FUN_ov126_02137544
	movs r6, r0
	beq _020C7D04
	mov r1, r6
	add r0, r7, #0x28
	bl FUN_ov1_020cb97c
	mov r0, #0
	bl FUN_ov16_020f085c
	mov r5, r0
	ldr r0, _020C7F28 ; =0x0209AEC0
	bl FUN_02046730
	bl FUN_ov16_020f085c
	cmp r5, r0
	beq _020C7D04
	mov r0, r6
	bl FUN_ov16_020f0298
_020C7D04:
	ldr r0, [r4]
	bl FUN_ov132_021434f8
	cmp r0, #0
	beq _020C7D30
	ldr r0, [r8, #0x338]
	cmp r0, #1
	bne _020C7D30
	ldr r0, [r4]
	bl FUN_ov126_02137644
	ldr r0, [r4]
	bl FUN_ov126_02137644
_020C7D30:
	ldr r0, [r8, #0x338]
	cmp r0, #0x12
	bne _020C7D54
	ldr r0, [r4]
	bl FUN_ov126_02137644
	mov r1, r0
	add r0, r7, #0x40
	bl FUN_ov1_020cbc70
	b _020C7D74
_020C7D54:
	cmp r0, #0x14
	bne _020C7D74
	ldr r0, [r4]
	bl FUN_ov132_02159d70
	mov r1, r0
	add r0, r7, #0x40
	mov r2, #8
	bl MI_CpuCopy8
_020C7D74:
	ldr r0, [r8, #0x338]
	cmp r0, #0x13
	ldmnefd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
	ldr r0, [r4]
	bl FUN_ov126_0213777c
	mov r5, r0
	mov r1, r5
	add r0, r7, #0x40
	bl FUN_ov1_020cbc70
	ldr r0, [r4]
	bl FUN_ov132_021434f8
	cmp r0, #0
	ldmeqfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
	ldr r0, [r4]
	mov r1, r5
	bl FUN_ov126_021378c4
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
_020C7DB8:
	cmp r5, #3
	ldmltfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
	cmp r5, #0xa
	ldmgtfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
	mov r1, r7
	bl FUN_ov1_020c78f8
	cmp r5, #0xa
	ldmnefd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
	ldr r0, [r4]
	ldr r1, [r8, #0x338]
	bl FUN_ov132_021447f4
	ldr r0, [r4]
	mov r1, #6
	bl FUN_ov132_021447d0
	ldr r0, [r8, #0x338]
	cmp r0, #1
	bne _020C7E50
	ldr r0, [r4]
	bl FUN_ov126_021375d4
	mov r4, r0
	ldrsb r0, [r4, #0xc]
	bl FUN_ov16_020f07f4
	cmp r0, #0
	ldrsh r1, [r4, #8]
	ldreq r0, _020C7F40 ; =0x020EAAF4
	streqh r1, [r0]
	ldreqsh r1, [r4, #0xa]
	streqh r1, [r0, #2]
	ldrne r0, _020C7F40 ; =0x020EAAF4
	strneh r1, [r0, #2]
	ldrnesh r1, [r4, #0xa]
	strneh r1, [r0]
	mov r0, r8
	bl FUN_ov1_020d7270
	mov r0, r8
	mov r1, #0x47
	bl FUN_ov1_020c05b0
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
_020C7E50:
	cmp r0, #0xd
	bne _020C7E98
	mov r0, r8
	bl FUN_ov1_020d7f28
	mov r0, r8
	mov r1, #0x47
	bl FUN_ov1_020c05b0
	ldr r0, [r4]
	bl FUN_ov126_021375d4
	movs r5, r0
	ldmeqfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
	bl FUN_ov126_02138638
	cmp r0, #0
	ldmeqfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
	ldr r0, [r4]
	mov r1, r5
	bl FUN_ov126_02136d50
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
_020C7E98:
	cmp r0, #0x12
	bne _020C7EC0
	ldr r0, [r4]
	bl FUN_ov126_0213777c
	ldrsh r2, [r0, #0x22]
	ldr r1, _020C7F40 ; =0x020EAAF4
	mov r0, r8
	strh r2, [r1, #4]
	bl FUN_ov1_020d74d4
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
_020C7EC0:
	cmp r0, #0x13
	bne _020C7EEC
	ldr r0, [r4]
	bl FUN_ov126_0213777c
	ldrsh r3, [r0, #0x22]
	ldr r2, _020C7F40 ; =0x020EAAF4
	mov r0, r8
	mov r1, #0x47
	strh r3, [r2, #4]
	bl FUN_ov1_020c05b0
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
_020C7EEC:
	cmp r0, #0x14
	bne _020C7F14
	ldr r0, [r4]
	bl FUN_ov132_02159df0
	mov r0, r8
	bl FUN_ov1_020d7930
	mov r0, r8
	mov r1, #0x47
	bl FUN_ov1_020c05b0
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
_020C7F14:
	mov r0, r8
	bl FUN_ov1_020d6784
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
_020C7F20: .word 0x02099EF0
_020C7F24: .word 0x0209A2C0
_020C7F28: .word 0x0209AEC0
_020C7F2C: .word 0x0209A2CC
_020C7F30: .word 0x0209A2D8
_020C7F34: .word 0x0209A2E0
_020C7F38: .word 0x0209A2E8
_020C7F3C: .word 0x020A0640
_020C7F40: .word 0x020EAAF4
	arm_func_end FUN_ov1_020c7a64

	arm_func_start FUN_ov1_020c7f44
FUN_ov1_020c7f44: ; 0x020C7F44
	stmfd sp!, {r3, r4, r5, lr}
	mov r5, r1
	ldrh r2, [r5, #8]
	ldr r4, _020C7F8C ; =0x02099EF0
	mov r1, #0
	str r2, [r0, #0x2b8]
	ldrb r2, [r5, #0xa]
	str r2, [r0, #0x2bc]
	ldrb r2, [r5, #0xb]
	strb r2, [r0, #0x2c0]
	ldr r0, [r4]
	ldr r2, [r5]
	bl FUN_ov132_02145030
	ldr r0, [r4]
	ldr r2, [r5, #4]
	mov r1, #1
	bl FUN_ov132_02145030
	ldmfd sp!, {r3, r4, r5, pc}
_020C7F8C: .word 0x02099EF0
	arm_func_end FUN_ov1_020c7f44

	arm_func_start FUN_ov1_020c7f90
FUN_ov1_020c7f90: ; 0x020C7F90
	stmfd sp!, {r3, r4, r5, lr}
	mov r4, r1
	ldrb r1, [r4]
	mov r5, r0
	ldr r0, _020C7FC4 ; =0x0209AEC0
	strh r1, [r5, #0x56]
	bl FUN_02046730
	ldrb r1, [r4]
	cmp r1, r0
	moveq r0, #1
	movne r0, #0
	strb r0, [r5, #0x54]
	ldmfd sp!, {r3, r4, r5, pc}
_020C7FC4: .word 0x0209AEC0
	arm_func_end FUN_ov1_020c7f90

	arm_func_start FUN_ov1_020c7fc8
FUN_ov1_020c7fc8: ; 0x020C7FC8
	stmfd sp!, {r4, r5, r6, lr}
	ldr r6, _020C8090 ; =0x0209A2C0
	mov r4, r1
	mov r0, r4
	mov r1, r6
	bl FUN_ov1_020cb5f4
	mov r0, #0
	bl FUN_ov16_020f085c
	mov r5, r0
	ldr r0, _020C8094 ; =0x0209AEC0
	bl FUN_02046730
	bl FUN_ov16_020f085c
	cmp r5, r0
	beq _020C8040
	mov r0, r6
	bl FUN_ov16_020f0298
	ldr r0, _020C8098 ; =0x0209A2CC
	bl FUN_ov16_020f0298
	ldr r0, _020C809C ; =0x0209A2D8
	bl FUN_ov16_020f0298
	ldr r0, _020C80A0 ; =0x0209A2E0
	bl FUN_ov16_020f0298
	ldr r0, _020C80A4 ; =0x0209A2E8
	bl FUN_ov16_020f0298
	ldrh r0, [r6, #0x52]
	add r0, r0, #0x8000
	strh r0, [r6, #0x52]
	ldrb r0, [r6, #0x5d]
	add r0, r0, #0x80
	strb r0, [r6, #0x5d]
_020C8040:
	ldr r5, _020C80A8 ; =0x02099EF0
	ldrb r1, [r4, #0x19]
	ldr r0, [r5]
	bl FUN_ov132_0214539c
	ldrb r1, [r4, #0x18]
	ldr r0, [r5]
	bl FUN_ov132_0214537c
	ldrb r1, [r4, #0x1a]
	ldr r0, [r5]
	bl FUN_ov132_021453ac
	ldrb r0, [r4, #0x19]
	cmp r0, #0
	ldmeqfd sp!, {r4, r5, r6, pc}
	ldr r0, [r5]
	mov r1, #4
	bl FUN_ov132_021453bc
	ldr r0, [r5]
	ldr r1, _020C80AC ; =0x00010008
	bl FUN_ov132_021453c4
	ldmfd sp!, {r4, r5, r6, pc}
_020C8090: .word 0x0209A2C0
_020C8094: .word 0x0209AEC0
_020C8098: .word 0x0209A2CC
_020C809C: .word 0x0209A2D8
_020C80A0: .word 0x0209A2E0
_020C80A4: .word 0x0209A2E8
_020C80A8: .word 0x02099EF0
_020C80AC: .word 0x00010008
	arm_func_end FUN_ov1_020c7fc8

	arm_func_start FUN_ov1_020c80b0
FUN_ov1_020c80b0: ; 0x020C80B0
	stmfd sp!, {r4, lr}
	mov r4, r1
	bl FUN_ov16_020f081c
	cmp r0, #0
	mov r0, r4
	bne _020C80F4
	bl FUN_ov1_020cbf90
	cmp r0, #0
	ldrne r0, _020C8120 ; =0x020EAB04
	movne r1, #0
	strne r1, [r0, #8]
	strne r1, [r0, #0xc]
	ldreq r0, _020C8120 ; =0x020EAB04
	moveq r1, #0x80000000
	streq r1, [r0, #8]
	streq r1, [r0, #0xc]
	ldmfd sp!, {r4, pc}
_020C80F4:
	bl FUN_ov1_020cbf80
	cmp r0, #0
	ldrne r0, _020C8120 ; =0x020EAB04
	movne r1, #0
	strne r1, [r0]
	strne r1, [r0, #4]
	ldreq r0, _020C8120 ; =0x020EAB04
	moveq r1, #0x80000000
	streq r1, [r0]
	streq r1, [r0, #4]
	ldmfd sp!, {r4, pc}
_020C8120: .word 0x020EAB04
	arm_func_end FUN_ov1_020c80b0

	arm_func_start FUN_ov1_020c8124
FUN_ov1_020c8124: ; 0x020C8124
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, lr}
	sub sp, sp, #0x20
	mov r11, r0
	ldr r6, _020C831C ; =0x020EAAF4
	mov r7, #1
	mov r8, #0
	bl FUN_ov1_020cbf40
	cmp r0, #3
	ldrneb r0, [r11, #0x17]
	strneh r0, [r6]
	ldrneb r0, [r11, #0x18]
	strneh r0, [r6, #2]
	mov r0, r11
	bl FUN_ov1_020cbf40
	cmp r0, #5
	addls pc, pc, r0, lsl #2
	b _020C8300
_020C8168: ; jump table
	b _020C8300 ; case 0
	b _020C81DC ; case 1
	b _020C8180 ; case 2
	b _020C8300 ; case 3
	b _020C8228 ; case 4
	b _020C8280 ; case 5
_020C8180:
	ldrh r0, [r6]
	cmp r0, #0
	beq _020C81AC
	add r4, sp, #0
	mov r0, #0
	mov r1, r4
	bl FUN_ov1_020d23f4
	ldrh r0, [r6]
	sub r0, r0, #1
	ldr r0, [r4, r0, lsl #2]
	strh r0, [r6]
_020C81AC:
	ldrh r0, [r6, #2]
	cmp r0, #0
	beq _020C8300
	add r4, sp, #0
	mov r0, #1
	mov r1, r4
	bl FUN_ov1_020d23f4
_020C81C8:
	ldrh r0, [r6, #2]
	sub r0, r0, #1
	ldr r0, [r4, r0, lsl #2]
	strh r0, [r6, #2]
	b _020C8300
_020C81DC:
	ldrh r0, [r6]
	cmp r0, #0
	beq _020C8208
	add r4, sp, #0
	mov r0, #0
	mov r1, r4
	bl FUN_ov1_020d317c
	ldrh r0, [r6]
	sub r0, r0, #1
	ldr r0, [r4, r0, lsl #2]
	strh r0, [r6]
_020C8208:
	ldrh r0, [r6, #2]
	cmp r0, #0
	beq _020C8300
	add r4, sp, #0
	mov r0, #1
	mov r1, r4
	bl FUN_ov1_020d317c
	b _020C81C8
_020C8228:
	ldr r0, _020C8320 ; =0x02099EF0
	ldr r0, [r0]
	bl FUN_ov132_02159df0
	mov r3, #0
_020C8238:
	mov r2, r3, lsl #1
	ldrh r1, [r6, r2]
	cmp r3, #0
	mov r4, r8
	movne r4, r7
	cmp r1, #0x6e
	ldreqb r1, [r0, #4]
	add r3, r3, #1
	orreq r1, r1, r7, lsl r4
	streqb r1, [r0, #4]
	streqh r8, [r6, r2]
	ldrneb r2, [r0, #4]
	mvnne r1, r7, lsl r4
	andne r1, r2, r1
	strneb r1, [r0, #4]
	cmp r3, #2
	blt _020C8238
	b _020C8300
_020C8280:
	ldr r10, _020C8324 ; =0x000001F9
	ldr r4, _020C8320 ; =0x02099EF0
	mov r9, #0
	sub r5, r10, #3
_020C8290:
	mov r2, r9, lsl #1
	ldrh r0, [r6, r2]
	mov r1, r8
	cmp r9, #0
	sub r0, r0, #0x64
	movne r1, r7
	cmp r0, #3
	addls pc, pc, r0, lsl #2
	b _020C82F4
_020C82B4: ; jump table
	b _020C82C4 ; case 0
	b _020C82D4 ; case 1
	b _020C82DC ; case 2
	b _020C82E4 ; case 3
_020C82C4:
	strh r5, [r6, r2]
_020C82C8:
	ldr r0, [r4]
	mov r2, r8
	b _020C82F0
_020C82D4:
	strh r10, [r6, r2]
	b _020C82C8
_020C82DC:
	strh r5, [r6, r2]
	b _020C82E8
_020C82E4:
	strh r10, [r6, r2]
_020C82E8:
	ldr r0, [r4]
	mov r2, r7
_020C82F0:
	bl FUN_ov126_02136eb4
_020C82F4:
	add r9, r9, #1
	cmp r9, #2
	blt _020C8290
_020C8300:
	ldrb r1, [r11, #0x19]
	ldr r0, _020C8328 ; =0x020EAAFC
	str r1, [r0]
	ldrb r1, [r11, #0x1a]
	str r1, [r0, #4]
	add sp, sp, #0x20
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_020C831C: .word 0x020EAAF4
_020C8320: .word 0x02099EF0
_020C8324: .word 0x000001F9
_020C8328: .word 0x020EAAFC
	arm_func_end FUN_ov1_020c8124

	arm_func_start FUN_ov1_020c832c
FUN_ov1_020c832c: ; 0x020C832C
	cmp r2, #0x32
	ldrne r2, _020C836C ; =0x020EAADC
	movne r3, #1
	ldreq r2, _020C836C ; =0x020EAADC
	moveq r3, #0
	strb r3, [r2, r1]
	ldr r1, [r0, #0xc]
	cmp r1, #0xd
	cmpne r1, #0x25
	cmpne r1, #0x3c
	cmpne r1, #0x4a
	cmpne r1, #0x50
	cmpne r1, #0x35
	moveq r1, #1
	streqb r1, [r0, #0x1d]
	bx lr
_020C836C: .word 0x020EAADC
	arm_func_end FUN_ov1_020c832c

	arm_func_start FUN_ov1_020c8370
FUN_ov1_020c8370: ; 0x020C8370
	stmfd sp!, {r4, r5, r6, r7, r8, r9, r10, lr}
	mov r5, #0
	mov r9, r0
	mov r0, r5
	mov r8, r1
	ldr r4, _020C882C ; =0x020EAAE0
	bl FUN_ov16_020f0634
	ldr r1, _020C8830 ; =0x0209A4E0
	ldrb r0, [r0, #2]
	ldrb r1, [r1, #2]
	cmp r1, r0
	beq _020C83B8
	mov r0, r5
	mov r1, r8
	bl FUN_ov16_020f0634
	ldrb r0, [r0, #2]
	cmp r0, #0x36
	ldmnefd sp!, {r4, r5, r6, r7, r8, r9, r10, pc}
_020C83B8:
	mov r10, #0
	mov r0, r10
	mov r1, r8
	bl FUN_ov16_020f0634
	mov r6, r0
	mov r0, r10
	mov r1, r8
	bl FUN_ov16_020f0634
	ldrb r7, [r0, #3]
	ldr r1, [r6, #4]
	ldr r5, _020C8834 ; =0x020A0640
	add r0, r6, #4
	str r1, [r5]
	ldr r1, [r6, #8]
	str r1, [r5, #4]
	bl FUN_ov1_020cbf70
	strb r0, [r5, #0x8f]
	add r0, r6, #4
	bl FUN_ov1_020c8124
	mov r0, r10
	mov r1, r8
	bl FUN_ov16_020f0634
	ldr r1, _020C8830 ; =0x0209A4E0
	ldrb r0, [r0, #2]
	ldrb r1, [r1, #2]
	cmp r1, r0
	ldmnefd sp!, {r4, r5, r6, r7, r8, r9, r10, pc}
	mov r0, r9
	add r1, r6, #4
	bl FUN_ov1_020c80b0
	add r0, r6, #4
	bl FUN_ov1_020cbf50
	ldr r5, _020C8838 ; =0x02099EF0
	mov r1, r0
	ldr r0, [r5]
	bl FUN_ov132_02144778
	ldr r0, [r5]
	bl FUN_ov132_02144780
	mov r8, r0
	add r0, r6, #4
	bl FUN_ov1_020cbf60
	cmp r8, r0
	beq _020C8480
	add r0, r6, #4
	bl FUN_ov1_020cbf60
	mov r1, r0
	ldr r0, [r5]
	bl FUN_ov132_0214478c
	mov r0, #1
	strb r0, [r9, #0x1d]
_020C8480:
	ldr r1, [r4]
	ldr r0, [r6, #0xc]
	mov r5, #1
	cmp r1, r0
	add r0, r6, #4
	movlo r5, #0
	bl FUN_ov1_020cbf30
	cmp r0, #0xe
	addls pc, pc, r0, lsl #2
	b _020C881C
_020C84A8: ; jump table
	b _020C881C ; case 0
	b _020C84E4 ; case 1
	b _020C8508 ; case 2
	b _020C8530 ; case 3
	b _020C8554 ; case 4
	b _020C859C ; case 5
	b _020C85C0 ; case 6
	b _020C8600 ; case 7
	b _020C863C ; case 8
	b _020C8678 ; case 9
	b _020C8698 ; case 10
	b _020C881C ; case 11
	b _020C881C ; case 12
	b _020C881C ; case 13
	b _020C8578 ; case 14
_020C84E4:
	cmp r5, #0
	bne _020C881C
	ldr r3, [r6, #0xc]
	mov r0, r9
	add r1, r6, #4
	add r2, r6, #0x28
	str r3, [r4]
	bl FUN_ov1_020c6c7c
	b _020C881C
_020C8508:
	cmp r5, #0
	bne _020C881C
	ldr r5, [r6, #0xc]
	mov r0, r9
	mov r3, r7
	add r1, r6, #4
	add r2, r6, #0x28
	str r5, [r4]
	bl FUN_ov1_020c6f18
	b _020C881C
_020C8530:
	cmp r5, #0
	bne _020C881C
	ldr r3, [r6, #0xc]
	mov r0, r9
	add r1, r6, #4
	add r2, r6, #0x28
	str r3, [r4]
	bl FUN_ov1_020c70d4
	b _020C881C
_020C8554:
	cmp r5, #0
	bne _020C881C
	ldr r3, [r6, #0xc]
	mov r0, r9
	add r1, r6, #4
	add r2, r6, #0x28
	str r3, [r4]
	bl FUN_ov1_020c73c0
	b _020C881C
_020C8578:
	cmp r5, #0
	bne _020C881C
	ldr r3, [r6, #0xc]
	mov r0, r9
	add r1, r6, #4
	add r2, r6, #0x28
	str r3, [r4]
	bl FUN_ov1_020c7574
	b _020C881C
_020C859C:
	cmp r5, #0
	bne _020C881C
	ldr r3, [r6, #0xc]
	mov r0, r9
	add r1, r6, #4
	add r2, r6, #0x28
	str r3, [r4]
	bl FUN_ov1_020c777c
	b _020C881C
_020C85C0:
	cmp r5, #0
	bne _020C881C
	ldr r1, [r6, #0xc]
	add r0, r6, #4
	str r1, [r4]
	bl FUN_ov1_020cbfa0
	mov r4, r0
	mov r0, r9
	mov r1, r4
	add r2, r6, #0x28
	bl FUN_ov1_020c7a64
	ldr r0, _020C883C ; =0x0209A4E4
	mov r1, r4
	str r4, [r9, #0x70]
	bl FUN_ov1_020cbf10
	b _020C881C
_020C8600:
	cmp r5, #0
	bne _020C881C
	ldr r2, [r6, #0xc]
	mov r0, r9
	add r1, r6, #0x28
	str r2, [r4]
	bl FUN_ov1_020c7f44
	cmp r7, #0x1e
	mov r0, r9
	bne _020C8634
	mov r1, #0x1f
_020C862C:
	bl FUN_ov1_020bffd4
	b _020C881C
_020C8634:
	mov r1, #0x21
	b _020C862C
_020C863C:
	cmp r5, #0
	bne _020C881C
	ldr r1, [r6, #0xc]
	mov r0, r9
	str r1, [r4]
	add r1, r6, #0x28
	bl FUN_ov1_020c7f90
	ldrb r0, [r9, #0x54]
	cmp r0, #0
	mov r0, r9
	beq _020C8670
	mov r1, #0x66
	b _020C862C
_020C8670:
	mov r1, #0x33
	b _020C862C
_020C8678:
	cmp r5, #0
	bne _020C881C
	ldr r2, [r6, #0xc]
	mov r0, r9
	add r1, r6, #0x28
	str r2, [r4]
	bl FUN_ov1_020c7fc8
	b _020C881C
_020C8698:
	cmp r7, #5
	ldrne r0, [r9, #8]
	cmpne r0, #5
	beq _020C86B4
	mov r0, r9
	add r1, r6, #0x28
	bl FUN_ov1_020c65a8
_020C86B4:
	cmp r7, #0x3d
	bgt _020C8770
	bge _020C87C8
	cmp r7, #0x23
	bgt _020C8764
	cmp r7, #0
	addge pc, pc, r7, lsl #2
	b _020C881C
_020C86D4: ; jump table
	b _020C881C ; case 0
	b _020C881C ; case 1
	b _020C881C ; case 2
	b _020C87E8 ; case 3
	b _020C878C ; case 4
	b _020C87E4 ; case 5
	b _020C881C ; case 6
	b _020C881C ; case 7
	b _020C881C ; case 8
	b _020C881C ; case 9
	b _020C881C ; case 10
	b _020C87E4 ; case 11
	b _020C881C ; case 12
	b _020C87E4 ; case 13
	b _020C881C ; case 14
	b _020C87E4 ; case 15
	b _020C87E4 ; case 16
	b _020C87E4 ; case 17
	b _020C881C ; case 18
	b _020C87E4 ; case 19
	b _020C881C ; case 20
	b _020C87E4 ; case 21
	b _020C881C ; case 22
	b _020C87E4 ; case 23
	b _020C881C ; case 24
	b _020C87E4 ; case 25
	b _020C87E4 ; case 26
	b _020C881C ; case 27
	b _020C881C ; case 28
	b _020C881C ; case 29
	b _020C881C ; case 30
	b _020C87E4 ; case 31
	b _020C881C ; case 32
	b _020C87E4 ; case 33
	b _020C881C ; case 34
	b _020C87C8 ; case 35
_020C8764:
	cmp r7, #0x3c
	beq _020C87C8
	b _020C881C
_020C8770:
	cmp r7, #0x3e
	bgt _020C8780
	beq _020C8800
	b _020C881C
_020C8780:
	cmp r7, #0x64
	beq _020C87C8
	b _020C881C
_020C878C:
	ldr r0, [r9, #8]
	cmp r0, #3
	bne _020C87A8
	mov r0, r9
	ldr r1, [r0]
	ldr r1, [r1, #0x4c]
	blx r1
_020C87A8:
	ldr r0, [r9, #8]
	cmp r0, #0xd
	bne _020C87C8
	ldr r5, _020C8840 ; =0x02099F14
	ldr r0, [r5]
	bl FUN_ov1_020e3d50
	ldr r0, [r5]
	bl FUN_ov1_020e39b8
_020C87C8:
	ldr r0, [r9, #8]
	cmp r0, #5
	beq _020C881C
	mov r0, r9
	mov r1, r7
	bl FUN_ov1_020bffd4
	b _020C8814
_020C87E4:
	b _020C8814
_020C87E8:
	ldr r0, [r9, #8]
	cmp r7, r0
	bne _020C881C
	mov r0, r9
	bl FUN_ov1_020c05e4
	b _020C8814
_020C8800:
	mov r0, r9
	mov r1, r7
	bl FUN_ov1_020bffd4
	mov r0, r9
	bl FUN_ov1_020c0d18
_020C8814:
	ldr r0, [r6, #0xc]
	str r0, [r4]
_020C881C:
	mov r0, r9
	add r1, r6, #4
	bl FUN_ov1_020c6438
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, pc}
_020C882C: .word 0x020EAAE0
_020C8830: .word 0x0209A4E0
_020C8834: .word 0x020A0640
_020C8838: .word 0x02099EF0
_020C883C: .word 0x0209A4E4
_020C8840: .word 0x02099F14
	arm_func_end FUN_ov1_020c8370

	arm_func_start FUN_ov1_020c8844
FUN_ov1_020c8844: ; 0x020C8844
	stmfd sp!, {r4, r5, r6, r7, r8, r9, r10, lr}
	ldr r1, _020C899C ; =0x020A0640
	mov r7, r0
	ldrb r0, [r1, #0x1b]
	mov r6, #1
	cmp r0, #0
	ldr r0, _020C89A0 ; =0x0209AEC0
	movne r6, #3
	bl FUN_02046744
	add r1, r7, #0x200
	mov r2, #0
	mov r4, r0
	strh r2, [r1, #0xa6]
	strh r2, [r1, #0xa4]
	strh r2, [r1, #0xa2]
	b _020C8990
_020C8884:
	mov r0, #1
	tst r4, r0, lsl r6
	beq _020C898C
	mov r0, r6
	mov r1, #0
	bl FUN_ov16_020f0634
	ldr r1, _020C89A4 ; =0x0209A108
	ldrh r5, [r0]
	ldr r0, [r1]
	cmp r0, #1
	ble _020C88FC
	mov r8, r5
	sub r9, r0, #1
	b _020C88F4
_020C88BC:
	mov r0, r6
	mov r1, r9
	bl FUN_ov16_020f0634
	mov r10, r0
	ldrh r0, [r10]
	cmp r0, r5
	cmpne r0, r8
	beq _020C88EC
	mov r0, r7
	mov r1, r6
	mov r2, r9
	bl FUN_ov1_020c89b0
_020C88EC:
	ldrh r8, [r10]
	sub r9, r9, #1
_020C88F4:
	cmp r9, #0
	bgt _020C88BC
_020C88FC:
	mov r5, #0
	mov r0, r7
	mov r1, r6
	mov r2, r5
	bl FUN_ov1_020c89b0
	cmp r6, #0
	subne r3, r6, #1
	addne r0, r7, r3, lsl #1
	addne r10, r0, #0x200
	ldrneh r0, [r10, #0xa2]
	cmpne r0, #0
	beq _020C898C
	ldr r1, _020C89A8 ; =0x0209A4E4
	ldr r0, _020C89AC ; =0x020EAABC
	add r2, r1, #0x14
	ldrb r8, [r0, r6]
	mov r9, r5
	mov r0, #0x10
	mov r1, #1
	mov r12, #0xf
	b _020C8974
_020C8950:
	ldrh lr, [r10, #0xa2]
	tst lr, r1, lsl r8
	movne lr, r0, lsl r9
	andne lr, lr, #0xff
	sub r8, r8, #1
	orrne r5, r5, lr
	ands r8, r8, #0xff
	moveq r8, r12
	add r9, r9, #1
_020C8974:
	cmp r9, #4
	blt _020C8950
	ldrb r0, [r2, r3]
	and r0, r0, #0xf
	orr r0, r0, r5
	strb r0, [r2, r3]
_020C898C:
	sub r6, r6, #1
_020C8990:
	cmp r6, #0
	bge _020C8884
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, pc}
_020C899C: .word 0x020A0640
_020C89A0: .word 0x0209AEC0
_020C89A4: .word 0x0209A108
_020C89A8: .word 0x0209A4E4
_020C89AC: .word 0x020EAABC
	arm_func_end FUN_ov1_020c8844

	arm_func_start FUN_ov1_020c89b0
FUN_ov1_020c89b0: ; 0x020C89B0
	stmfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, lr}
	sub sp, sp, #0x64
	mov r5, r1
	mov r8, r2
	mov r6, r0
	ldr r7, _020C95C4 ; =0x02099EF0
	mov r9, #0
	bl FUN_ov16_020f081c
	mov r4, r0
	mov r0, r5
	mov r1, r8
	bl FUN_ov16_020f0634
	mov r8, r0
	cmp r5, #0
	beq _020C8A18
	ldr r0, _020C95C8 ; =0x020A0640
	ldrb r0, [r0, #0x1b]
	cmp r0, #0
	bne _020C8A0C
	cmp r4, #0
	moveq r4, #1
	movne r4, r9
	b _020C8A18
_020C8A0C:
	mov r0, r5
	bl FUN_ov16_020f085c
	mov r4, r0
_020C8A18:
	ldr r1, _020C95CC ; =0x020EAABC
	ldrb r0, [r8, #0x17]
	ldrb r1, [r1, r5]
	cmp r1, r0
	addeq sp, sp, #0x64
	ldmeqfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
	ldr r10, _020C95D0 ; =0x020EAAF4
	cmp r0, #0
	addeq sp, sp, #0x64
	ldmeqfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
	add r0, r8, #0x10
	bl FUN_ov1_020cbe28
	cmp r0, #0xf
	addls pc, pc, r0, lsl #2
	b _020C95B0
_020C8A54: ; jump table
	b _020C95B0 ; case 0
	b _020C8AB8 ; case 1
	b _020C8B20 ; case 2
	b _020C8A94 ; case 3
	b _020C8CB8 ; case 4
	b _020C8E5C ; case 5
	b _020C8F10 ; case 6
	b _020C8F28 ; case 7
	b _020C9044 ; case 8
	b _020C9080 ; case 9
	b _020C9110 ; case 10
	b _020C8D9C ; case 11
	b _020C92FC ; case 12
	b _020C93AC ; case 13
	b _020C9418 ; case 14
	b _020C9540 ; case 15
_020C8A94:
	add r0, r6, r5, lsl #1
	mov r3, #0
	strh r3, [r0, #0x7c]
	cmp r5, #0
	beq _020C95B0
	mov r0, r6
	sub r1, r5, #1
	add r2, r8, #0x10
_020C8AB4:
	b _020C8B18
_020C8AB8:
	ldr r0, [r6, #8]
	cmp r0, #4
	cmpne r0, #0xb
	cmpne r0, #0xd
	cmpne r0, #0x13
	cmpne r0, #0x17
	beq _020C8ADC
	cmp r0, #0xf
	bne _020C95B0
_020C8ADC:
	ldrb r0, [r8, #0x14]
	bl FUN_ov16_020efa80
	movs r4, r0
	beq _020C95B0
	bl FUN_0206da98
	mov r0, r4
	bl FUN_0206cbf8
	add r1, r6, r5, lsl #1
	strh r0, [r1, #0x7c]
	cmp r5, #0
	beq _020C95B0
_020C8B08:
	mov r0, r6
	sub r1, r5, #1
	add r2, r8, #0x10
	mov r3, #0
_020C8B18:
	bl FUN_ov1_020c3af8
	b _020C95B0
_020C8B20:
	ldr r0, [r6, #8]
	cmp r0, #4
	cmpne r0, #0xb
	cmpne r0, #0xd
	cmpne r0, #0x13
	cmpne r0, #0x17
	beq _020C8B44
	cmp r0, #0xf
	bne _020C95B0
_020C8B44:
	ldrb r0, [r8, #0x14]
	bl FUN_ov16_020efa80
	movs r4, r0
	beq _020C95B0
	bl FUN_0206cbf8
	add r1, r6, r5, lsl #1
	ldrh r1, [r1, #0x7c]
	cmp r1, r0
	beq _020C8B80
	mov r0, r4
	bl FUN_0206da98
	mov r0, r4
	bl FUN_0206cbf8
	add r1, r6, r5, lsl #1
	strh r0, [r1, #0x7c]
_020C8B80:
	ldr r0, [r4, #0x88]
	mov r11, #0
	ldrb r0, [r0, #0x85]
	cmp r0, #0xa
	bhs _020C8C80
	add r0, r8, #0x10
	bl FUN_ov1_020cbe08
	cmp r0, #0
	add r0, r8, #0x10
	ble _020C8BC4
	bl FUN_ov1_020cbe08
	mov r0, r0, lsl #0xc
	bl FUN_0201f704
	mov r1, r0
	mov r0, #0x3f000000
	bl FUN_02020274
	b _020C8BD8
_020C8BC4:
	bl FUN_ov1_020cbe08
	mov r0, r0, lsl #0xc
	bl FUN_0201f704
	mov r1, #0x3f000000
	bl FUN_020204a4
_020C8BD8:
	bl FUN_0201fdac
	mov r9, r0
	add r0, r8, #0x10
	bl FUN_ov1_020cbe18
	cmp r0, #0
	add r0, r8, #0x10
	ble _020C8C10
	bl FUN_ov1_020cbe18
	mov r0, r0, lsl #0xc
	bl FUN_0201f704
	mov r1, r0
	mov r0, #0x3f000000
	bl FUN_02020274
	b _020C8C24
_020C8C10:
	bl FUN_ov1_020cbe18
	mov r0, r0, lsl #0xc
	bl FUN_0201f704
	mov r1, #0x3f000000
	bl FUN_020204a4
_020C8C24:
	bl FUN_0201fdac
	ldr r2, [r4, #0x88]
	mov r10, r0
	ldrb r0, [r2, #0x85]
	cmp r0, #0
	beq _020C8C58
	sub r1, r0, #1
	add r2, r2, r1, lsl #3
	ldr r1, [r2, #0x34]
	cmp r9, r1
	ldreq r1, [r2, #0x38]
	cmpeq r10, r1
	beq _020C8C80
_020C8C58:
	ldr r1, [r4, #0x88]
	mov r11, #1
	add r1, r1, #0x34
	str r9, [r1, r0, lsl #3]
	add r0, r1, r0, lsl #3
	str r10, [r0, #4]
	ldr r1, [r4, #0x88]
	ldrb r0, [r1, #0x85]
	add r0, r0, #1
	strb r0, [r1, #0x85]
_020C8C80:
	ldr r0, [r7]
	mov r1, r4
	bl FUN_ov132_0213bd7c
	cmp r5, #0
	cmpne r11, #0
	beq _020C95B0
	ldr r1, [r4, #0x88]
	mov r0, r6
	ldrb r3, [r1, #0x85]
	sub r1, r5, #1
	add r2, r8, #0x10
	sub r3, r3, #1
	and r3, r3, #0xff
	b _020C8AB4
_020C8CB8:
	ldr r0, [r6, #8]
	cmp r0, #4
	bne _020C95B0
	add r0, r8, #0x10
	bl FUN_ov1_020cbe08
	cmp r0, #0
	add r0, r8, #0x10
	ble _020C8CF4
	bl FUN_ov1_020cbe08
	mov r0, r0, lsl #0xc
	bl FUN_0201f704
	mov r1, r0
	mov r0, #0x3f000000
	bl FUN_02020274
	b _020C8D08
_020C8CF4:
	bl FUN_ov1_020cbe08
	mov r0, r0, lsl #0xc
	bl FUN_0201f704
	mov r1, #0x3f000000
	bl FUN_020204a4
_020C8D08:
	bl FUN_0201fdac
	mov r9, r0
	add r0, r8, #0x10
	bl FUN_ov1_020cbe18
	cmp r0, #0
	add r0, r8, #0x10
	ble _020C8D40
	bl FUN_ov1_020cbe18
	mov r0, r0, lsl #0xc
	bl FUN_0201f704
	mov r1, r0
	mov r0, #0x3f000000
	bl FUN_02020274
	b _020C8D54
_020C8D40:
	bl FUN_ov1_020cbe18
	mov r0, r0, lsl #0xc
	bl FUN_0201f704
	mov r1, #0x3f000000
	bl FUN_020204a4
_020C8D54:
	bl FUN_0201fdac
	ldrb r1, [r8, #0x16]
	mov r10, r0
	ldr r0, [r7]
	cmp r1, #0x13
	mov r1, r4
	bne _020C8D78
	mov r2, #1
	b _020C8D7C
_020C8D78:
	mov r2, #0
_020C8D7C:
	bl FUN_ov132_02147e84
	mov r0, r6
	mov r1, r9
	mov r2, r10
	bl FUN_ov1_020cf4a8
	cmp r5, #0
	beq _020C95B0
	b _020C8B08
_020C8D9C:
	ldr r0, [r7]
	bl FUN_ov132_02144780
	cmp r0, #0
	bne _020C95B0
	add r0, r8, #0x10
	bl FUN_ov1_020cbe08
	cmp r0, #0
	add r0, r8, #0x10
	ble _020C8DDC
	bl FUN_ov1_020cbe08
	mov r0, r0, lsl #0xc
	bl FUN_0201f704
	mov r1, r0
	mov r0, #0x3f000000
	bl FUN_02020274
	b _020C8DF0
_020C8DDC:
	bl FUN_ov1_020cbe08
	mov r0, r0, lsl #0xc
	bl FUN_0201f704
	mov r1, #0x3f000000
	bl FUN_020204a4
_020C8DF0:
	bl FUN_0201fdac
	mov r9, r0
	add r0, r8, #0x10
	bl FUN_ov1_020cbe18
	cmp r0, #0
	add r0, r8, #0x10
	ble _020C8E28
	bl FUN_ov1_020cbe18
	mov r0, r0, lsl #0xc
	bl FUN_0201f704
	mov r1, r0
	mov r0, #0x3f000000
	bl FUN_02020274
	b _020C8E3C
_020C8E28:
	bl FUN_ov1_020cbe18
	mov r0, r0, lsl #0xc
	bl FUN_0201f704
	mov r1, #0x3f000000
	bl FUN_020204a4
_020C8E3C:
	bl FUN_0201fdac
	mov r2, r0
	mov r0, r6
	mov r1, r9
	bl FUN_ov1_020d2804
	cmp r5, #0
	beq _020C95B0
	b _020C8B08
_020C8E5C:
	add r0, r8, #0x10
	bl FUN_ov1_020cbe08
	cmp r0, #0
	add r0, r8, #0x10
	ble _020C8E8C
	bl FUN_ov1_020cbe08
	mov r0, r0, lsl #0xc
	bl FUN_0201f704
	mov r1, r0
	mov r0, #0x3f000000
	bl FUN_02020274
	b _020C8EA0
_020C8E8C:
	bl FUN_ov1_020cbe08
	mov r0, r0, lsl #0xc
	bl FUN_0201f704
	mov r1, #0x3f000000
	bl FUN_020204a4
_020C8EA0:
	bl FUN_0201fdac
	mov r9, r0
	add r0, r8, #0x10
	bl FUN_ov1_020cbe18
	cmp r0, #0
	add r0, r8, #0x10
	ble _020C8ED8
	bl FUN_ov1_020cbe18
	mov r0, r0, lsl #0xc
	bl FUN_0201f704
	mov r1, r0
	mov r0, #0x3f000000
	bl FUN_02020274
	b _020C8EEC
_020C8ED8:
	bl FUN_ov1_020cbe18
	mov r0, r0, lsl #0xc
	bl FUN_0201f704
	mov r1, #0x3f000000
	bl FUN_020204a4
_020C8EEC:
	bl FUN_0201fdac
	mov r3, r0
	mov r0, r6
	mov r1, r4
	mov r2, r9
	bl FUN_ov1_020d354c
	cmp r5, #0
	beq _020C95B0
	b _020C8B08
_020C8F10:
	mov r0, r6
	mov r1, r4
	bl FUN_ov1_020d351c
	cmp r5, #0
	beq _020C95B0
	b _020C8B08
_020C8F28:
	ldr r0, [r6, #8]
	cmp r0, #4
	bne _020C95B0
	ldr r0, [r7]
	bl FUN_ov132_02150af8
	cmp r0, #0
	beq _020C95B0
	ldrb r0, [r8, #0x16]
	mov r1, r4
	cmp r0, #0x13
	ldr r0, [r7]
	bne _020C8F60
	mov r2, #1
	b _020C8F64
_020C8F60:
	mov r2, #0
_020C8F64:
	bl FUN_ov132_02147e84
	add r0, r8, #0x10
	bl FUN_ov1_020cbe08
	cmp r0, #0
	add r0, r8, #0x10
	ble _020C8F98
	bl FUN_ov1_020cbe08
	mov r0, r0, lsl #0xc
	bl FUN_0201f704
	mov r1, r0
	mov r0, #0x3f000000
	bl FUN_02020274
	b _020C8FAC
_020C8F98:
	bl FUN_ov1_020cbe08
	mov r0, r0, lsl #0xc
	bl FUN_0201f704
	mov r1, #0x3f000000
	bl FUN_020204a4
_020C8FAC:
	bl FUN_0201fdac
	mov r9, r0
	add r0, r8, #0x10
	bl FUN_ov1_020cbe18
	cmp r0, #0
	add r0, r8, #0x10
	ble _020C8FE4
	bl FUN_ov1_020cbe18
	mov r0, r0, lsl #0xc
	bl FUN_0201f704
	mov r1, r0
	mov r0, #0x3f000000
	bl FUN_02020274
	b _020C8FF8
_020C8FE4:
	bl FUN_ov1_020cbe18
	mov r0, r0, lsl #0xc
	bl FUN_0201f704
	mov r1, #0x3f000000
	bl FUN_020204a4
_020C8FF8:
	bl FUN_0201fdac
	mov r10, r0
	ldr r0, [r7]
	mov r1, r5
	mov r2, r9
	mov r3, r10
	bl FUN_ov126_0212d498
	cmp r5, #0
	beq _020C9020
	b _020C8B08
_020C9020:
	mov r7, #0
	mov r0, r6
	mov r1, r4
	mov r2, r9
	mov r3, r10
	str r7, [sp]
	bl FUN_ov1_020ce940
	str r7, [r6, #0x4c]
	b _020C95B0
_020C9044:
	ldr r0, [r6, #8]
	cmp r0, #4
	bne _020C95B0
	ldr r0, [r7]
	bl FUN_ov132_02144780
	cmp r0, #0
	bne _020C95B0
	ldrb r0, [r8, #0x14]
	bl FUN_ov16_020efa80
	cmp r0, #0
	beq _020C95B0
	ldrsh r1, [r0, #0x94]
	ldr r0, [r7]
	bl FUN_ov132_02144488
	b _020C95B0
_020C9080:
	ldr r0, [r6, #8]
	mov r11, r10
	cmp r0, #0xb
	bne _020C95B0
	mov r0, r6
	mov r1, r5
	bl FUN_ov1_020d3260
	cmp r0, #0
	ldrneb r0, [r8, #0x15]
	cmpne r0, #0x32
	cmpne r0, #0
	beq _020C90DC
	add r0, r8, #0x10
	bl FUN_ov1_020cbda0
	add r7, sp, #0x44
	mov r10, r0
	mov r0, r4
	mov r1, r7
	bl FUN_ov1_020d317c
	sub r0, r10, #1
	ldr r1, [r7, r0, lsl #2]
	mov r0, r4, lsl #1
	strh r1, [r11, r0]
_020C90DC:
	cmp r5, #0
	streqh r9, [r6, #0x86]
	beq _020C90FC
	mov r0, r6
	sub r1, r5, #1
	add r2, r8, #0x10
	mov r3, #0
	bl FUN_ov1_020c3af8
_020C90FC:
	ldrb r2, [r8, #0x15]
	mov r0, r6
	mov r1, r5
	bl FUN_ov1_020c832c
	b _020C95B0
_020C9110:
	ldr r0, [r6, #8]
	mov r11, r10
	cmp r0, #0xd
	cmpne r0, #0x13
	cmpne r0, #0x17
	beq _020C9130
	cmp r0, #0x1a
	bne _020C95B0
_020C9130:
	add r0, r8, #4
	bl FUN_ov1_020cbf40
	cmp r0, #3
	bne _020C920C
	add r0, r8, #0x10
	bl FUN_ov1_020cbda8
	mov r10, r0
	add r0, r8, #0x10
	bl FUN_ov1_020cbda0
	mov r4, r0
	cmp r4, #0x32
	beq _020C92D8
	cmp r4, #0x6e
	bne _020C91A0
	ldr r0, [r7]
	bl FUN_ov126_0213777c
	strh r9, [r0, #0x22]
	ldrb r2, [r0, #0x29]
	mov r1, r2, lsl #0x1c
	mov r1, r1, lsr #0x1c
	orr r1, r1, #2
	and r1, r1, #0xff
	bic r2, r2, #0xf
	and r1, r1, #0xf
	orr r1, r2, r1
	strb r1, [r0, #0x29]
	strh r9, [r11, #4]
	b _020C92D8
_020C91A0:
	cmp r4, #0
	beq _020C92D8
	ldr r0, [r7]
	bl FUN_ov126_0213777c
	mov r7, r0
	ldrb r0, [r7, #0x29]
	ldr r1, _020C95D4 ; =0x020EAAC0
	mov r2, r0, lsl #0x1c
	mov r2, r2, lsr #0x1c
	bic r2, r2, #2
	and r2, r2, #0xff
	bic r3, r0, #0xf
	and r0, r2, #0xf
	orr r0, r3, r0
	strb r0, [r7, #0x29]
	strb r10, [r7, #0x20]
	add r0, sp, #0x24
	str r10, [r1]
	bl FUN_ov1_020d36f8
	sub r1, r4, #1
	add r0, sp, #0x24
	ldr r0, [r0, r1, lsl #2]
	mov r0, r0, lsl #0x10
	mov r0, r0, asr #0x10
	strh r0, [r7, #0x22]
	strh r0, [r11, #4]
	b _020C92D8
_020C920C:
	add r0, r8, #4
	bl FUN_ov1_020cbf40
	cmp r0, #4
	bne _020C927C
	ldrb r0, [r8, #0x15]
	cmp r0, #0x32
	cmpne r0, #0
	beq _020C92D8
	add r0, r8, #0x10
	bl FUN_ov1_020cbda0
	mov r10, r0
	ldr r0, [r7]
	bl FUN_ov132_02159df0
	cmp r10, #0x6e
	mov r1, r4, lsl #1
	beq _020C9268
	strh r10, [r11, r1]
	mov r1, #1
	ldrb r2, [r0, #4]
	mvn r1, r1, lsl r4
	and r1, r2, r1
_020C9260:
	strb r1, [r0, #4]
	b _020C92D8
_020C9268:
	strh r9, [r11, r1]
	ldrb r2, [r0, #4]
	mov r1, #1
	orr r1, r2, r1, lsl r4
	b _020C9260
_020C927C:
	mov r0, r6
	mov r1, r5
	bl FUN_ov1_020d3260
	cmp r0, #0
	ldrneb r0, [r8, #0x15]
	cmpne r0, #0x32
	cmpne r0, #0
	beq _020C92D8
	add r0, r8, #0x10
	bl FUN_ov1_020cbda0
	add r10, sp, #4
	mov r7, r0
	mov r0, r4
	mov r1, r10
	bl FUN_ov1_020d23f4
	sub r0, r7, #1
	ldr r2, [r10, r0, lsl #2]
	mov r1, r4, lsl #1
	add r0, r8, #0x10
	strh r2, [r11, r1]
	bl FUN_ov1_020cbda8
	add r1, r6, r4
	strb r0, [r1, #0x2b4]
_020C92D8:
	cmp r5, #0
	streqh r9, [r6, #0x86]
	beq _020C92F8
	mov r0, r6
	sub r1, r5, #1
	add r2, r8, #0x10
	mov r3, #0
	bl FUN_ov1_020c3af8
_020C92F8:
	b _020C90FC
_020C92FC:
	ldr r0, [r6, #8]
	cmp r0, #0xf
	bne _020C95B0
	mov r0, r6
	mov r1, r5
	bl FUN_ov1_020d3260
	cmp r0, #0
	ldrneb r0, [r8, #0x15]
	cmpne r0, #0x32
	beq _020C9388
	add r0, r8, #0x10
	bl FUN_ov1_020cbda0
	cmp r0, #0x64
	mov r1, #1
	cmpne r0, #0x66
	movne r1, #0
	cmp r1, #0
	ldr r2, _020C95D8 ; =0x000001F6
	mov r1, r4, lsl #1
	ldreq r2, _020C95DC ; =0x000001F9
	cmp r0, #0x64
	cmpne r0, #0x65
	strh r2, [r10, r1]
	ldr r0, [r7]
	bne _020C936C
	mov r1, r4
	mov r2, #0
	b _020C9374
_020C936C:
	mov r1, r4
	mov r2, #1
_020C9374:
	bl FUN_ov126_02136eb4
	add r0, r8, #0x10
	bl FUN_ov1_020cbda8
	ldr r1, _020C95E0 ; =0x020EAAFC
	str r0, [r1, r4, lsl #2]
_020C9388:
	cmp r5, #0
	streqh r9, [r6, #0x86]
	beq _020C93A8
	mov r0, r6
	sub r1, r5, #1
	add r2, r8, #0x10
	mov r3, #0
	bl FUN_ov1_020c3af8
_020C93A8:
	b _020C90FC
_020C93AC:
	ldr r0, [r7]
	bl FUN_ov132_021434f8
	cmp r0, #0
	bne _020C95B0
	mov r0, r6
	bl FUN_ov1_020c11e4
	cmp r0, #0
	beq _020C95B0
	add r0, r8, #0x10
	bl FUN_ov1_020cbda0
	cmp r0, #1
	mov r7, #1
	ldr r0, [r6, #8]
	movne r7, #0
	cmp r7, #0
	str r0, [r6, #0x2b8]
	beq _020C93F8
	bl FUN_ov16_020f083c
	mov r4, r0
_020C93F8:
	and r2, r5, #0xff
	cmp r7, #0
	movne r2, #4
	str r4, [r6, #0x2bc]
	mov r0, r6
	mov r1, #0x1e
	strb r2, [r6, #0x2c0]
	b _020C9468
_020C9418:
	ldrb r0, [r8, #0x14]
	cmp r0, #0
	bne _020C9470
	ldr r0, [r6, #8]
	cmp r0, #4
	bne _020C95B0
	ldr r0, _020C95E4 ; =0x0209A2C0
	ldrb r0, [r0, #0x5c]
	cmp r0, #0
	movne r0, #1
	moveq r0, #0
	cmp r0, #0
	bne _020C95B0
	cmp r5, #0
	strneb r9, [r6, #0x54]
	moveq r0, #1
	streqb r0, [r6, #0x54]
	mov r0, r6
	mov r1, #0x32
	strh r5, [r6, #0x56]
_020C9468:
	bl FUN_ov1_020bffd4
	b _020C95B0
_020C9470:
	cmp r0, #2
	beq _020C9480
	cmp r0, #3
	bne _020C95B0
_020C9480:
	ldr r0, [r6, #8]
	cmp r0, #4
	bne _020C95B0
	ldrb r0, [r8, #0x14]
	mov r10, #1
	cmp r0, #3
	movne r10, #0
	cmp r10, #0
	beq _020C94AC
	bl FUN_ov16_020f083c
	mov r4, r0
_020C94AC:
	ldr r0, [r7]
	bl FUN_ov132_02159d70
	strb r4, [r0, #2]
	cmp r10, #0
	moveq r0, r5, lsl #0x10
	moveq r0, r0, lsr #0x10
	movne r0, #4
	strh r0, [r6, #0x5a]
	cmp r5, #0
	beq _020C94FC
	mov r0, r4
	strb r9, [r6, #0x58]
	bl FUN_ov16_020f0a14
	cmp r0, #0
	bne _020C9518
	bl FUN_ov16_020f0944 ; may be ov17
	cmp r0, #0
	movne r0, #1
	strneb r0, [r6, #0x58]
	b _020C9518
_020C94FC:
	mov r0, #1
	strb r0, [r6, #0x58]
	cmp r10, #0
	beq _020C9518
	bl FUN_ov16_020f0944 ; may be ov17
	cmp r0, #0
	streqb r9, [r6, #0x58]
_020C9518:
	mov r1, #0x14
	str r1, [r6, #0x338]
	ldr r0, [r7]
	bl FUN_ov132_021447f4
	ldr r0, [r7]
	mov r1, #6
	bl FUN_ov132_021447d0
	mov r0, r6
	bl FUN_ov1_020d6784
	b _020C95B0
_020C9540:
	ldr r0, [r6, #8]
	cmp r0, #0x3d
	beq _020C9554
	cmp r0, #0x3c
	bne _020C95B0
_020C9554:
	cmp r5, #0
	streqh r9, [r6, #0x86]
	beq _020C95B0
	add r0, r8, #0x10
	bl FUN_ov1_020cbda0
	cmp r0, #0x1a
	bne _020C957C
	mov r0, r6
	mov r1, #0x3c
	b _020C9468
_020C957C:
	add r0, r8, #0x10
	bl FUN_ov1_020cbda0
	cmp r0, #0x1b
	bne _020C9598
	mov r0, r6
	mov r1, #0x3e
	b _020C9468
_020C9598:
	add r0, r8, #0x10
	bl FUN_ov1_020cbda0
	cmp r0, #0x1c
	bne _020C95B0
	ldr r0, [r7]
	bl FUN_ov132_02144764
_020C95B0:
	ldrb r1, [r8, #0x17]
	ldr r0, _020C95CC ; =0x020EAABC
	strb r1, [r0, r5]
	add sp, sp, #0x64
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
_020C95C4: .word 0x02099EF0
_020C95C8: .word 0x020A0640
_020C95CC: .word 0x020EAABC
_020C95D0: .word 0x020EAAF4
_020C95D4: .word 0x020EAAC0
_020C95D8: .word 0x000001F6
_020C95DC: .word 0x000001F9
_020C95E0: .word 0x020EAAFC
_020C95E4: .word 0x0209A2C0
	arm_func_end FUN_ov1_020c89b0

	arm_func_start FUN_ov1_020c95e8
FUN_ov1_020c95e8: ; 0x020C95E8
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, lr}
	sub sp, sp, #0x10
	mov r5, r1
	mov r7, r2
	mov r9, r0
	mov r0, r5
	mov r1, r7
	ldr r4, _020C9D78 ; =0x0209AEC0
	bl FUN_ov16_020f0634
	add r6, r0, #4
	bl FUN_ov16_020f081c
	mov r10, r0
	mov r0, r5
	mov r1, r7
	bl FUN_ov16_020f0634
	ldr r1, _020C9D7C ; =0x0209A4E0
	ldrb r0, [r0, #2]
	ldrb r1, [r1, #2]
	cmp r1, r0
	addne sp, sp, #0x10
	ldmnefd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
	cmp r5, #0
	bne _020C9688
	mov r0, r4
	bl FUN_02046730
	mov r5, r0
	mov r0, r4
	bl FUN_02046730
	sub r0, r0, #1
	add r0, r6, r0
	ldrb r1, [r0, #0x14]
	and r0, r1, #0xf0
	mov r0, r0, asr #4
	and r1, r1, #0xf
	and r0, r0, #0xff
	ands r11, r1, #0xff
	str r0, [sp, #4]
	bne _020C96C4
	add sp, sp, #0x10
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_020C9688:
	ldrb r1, [r6, #0x13]
	add r0, r9, r5, lsl #7
	ldr r2, [r6, #0xc]
	add r1, r0, r1, lsl #3
	str r2, [r1, #0x8c]
	ldrb r0, [r6, #0x10]
	add sp, sp, #0x10
	strb r0, [r1, #0x90]
	ldrb r0, [r6, #0x11]
	strb r0, [r1, #0x91]
	ldrb r0, [r6, #0x12]
	strb r0, [r1, #0x92]
	ldrb r0, [r6, #0x13]
	strb r0, [r1, #0x93]
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_020C96C4:
	ldr r0, _020C9D80 ; =0x020EAABC
	ldrb r0, [r0, r5]
	cmp r0, r11
	addeq sp, sp, #0x10
	ldmeqfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
	mov r8, #3
	b _020C9D60
_020C96E0:
	ldr r0, [sp, #4]
	mov r1, #1
	tst r0, r1, lsl r8
	beq _020C9D5C
	mov r4, r11
	mov r2, #0
	mov r0, #0xf
	b _020C9710
_020C9700:
	sub r1, r4, #1
	ands r4, r1, #0xff
	moveq r4, r0
	add r2, r2, #1
_020C9710:
	cmp r2, r8
	blt _020C9700
	ldr r0, _020C9D78 ; =0x0209AEC0
	bl FUN_02046730
	add r1, r9, #0x8c
	add r0, r1, r0, lsl #7
	add r7, r0, r4, lsl #3
	mov r0, r7
	bl FUN_ov1_020cbe28
	cmp r0, #0xf
	bhi _020C9D50
	mov r1, #0
	add pc, pc, r0, lsl #2
	mov r0, r0
	b _020C9D50
_020C974C:
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
	bl FUN_ov16_020efa80
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
	bl FUN_ov16_020efa80
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
	bl FUN_ov16_020f085c
	mov r4, r0
	ldr r0, _020C9D78 ; = 0209AEC0h
	bl FUN_02046730
	bl FUN_ov16_020f085c
	cmp r4, r0
	beq _020C9904
	add r0, sp, #0xc
	add r1, sp, #0x8
	bl FUN_ov16_020f025c
_020C9904:
	ldr r1, [r6, #0x88]
	ldrb r0, [r1, #0x85]
	cmp r0, #0xa
	movcs r0, #0x9
	strcsb r0, [r1, #0x85]
	ldr r2, [r6, #0x88]
	ldrb r1, [r2, #0x85]
	cmp r1, #0xa
	bcs _020C9D50
	cmp r1, #0x0
	beq _020C9958
	sub r0, r1, #0x1
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
	bl FUN_ov16_020f085c
	mov r4, r0
	ldr r0, _020C9D78 ; =0209AEC0h
	bl FUN_02046730
	bl FUN_ov16_020f085c
	cmp r4, r0
	beq _020C9A58
	add r0, sp, #0xc
	add r1, sp, #0x8
	bl FUN_ov16_020f025c
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
	ldr r0, _020C9D84 ; = 02099EF0h
	ldr r0, [r0, #0x0] ; =_02099ef0
	bl FUN_ov132_02144780
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
	bl FUN_ov16_020f085c
	mov r4, r0
	ldr r0, _020C9D78 ; = 0x0209AEC0
	bl FUN_02046730
	bl FUN_ov16_020f085c
	cmp r4, r0
	beq _020C9B54
	add r0, sp, #0xc
	add r1, sp, #0x8
	bl FUN_ov16_020f025c
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
	bl FUN_ov16_020f085c
	mov r4, r0
	ldr r0, _020C9D78 ; = 0209AEC0h
	bl FUN_02046730
	bl FUN_ov16_020f085c
	cmp r4, r0
	beq _020C9C2C
	add r0, sp, #0xc
	add r1, sp, #0x8
	bl FUN_ov16_020f025c
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
	ldr r0, _020C9D84 ; = 02099EF0h
	ldr r0, [r0, #0x0] ; =_02099ef0
	bl FUN_ov132_02144780
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
	bl FUN_ov16_020f085c
	cmp r10, r0
	beq _020C9D2C
	add r0, sp, #0xc
	add r1, sp, #0x8
	bl FUN_ov16_020f025c
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
_020C9D50:
	mov r0, r7
	mov r1, #0
	bl FUN_ov1_020cbdf0
_020C9D5C:
	sub r8, r8, #1
_020C9D60:
	cmp r8, #0
	bge _020C96E0
	ldr r0, _020C9D80 ; =0x020EAABC
	strb r11, [r0, r5]
	add sp, sp, #0x10
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_020C9D78: .word 0x0209AEC0
_020C9D7C: .word 0x0209A4E0
_020C9D80: .word 0x020EAABC
_020C9D84: .word 0x02099EF0
	arm_func_end FUN_ov1_020c95e8

	arm_func_start FUN_ov1_020c9d88
FUN_ov1_020c9d88: ; 0x020C9D88
	stmfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, lr}
	sub sp, sp, #0x24
	mov r9, r0
	ldr r0, _020CA6C4 ; =0x0209AEC0
	mov r4, r1
	mov r11, #3
	bl FUN_02046744
	str r0, [sp, #0x10]
	mov r0, #0
	mov r1, r4
	bl FUN_ov16_020f0634
	ldr r1, _020CA6C8 ; =0x0209A4E0
	ldrb r0, [r0, #2]
	ldrb r1, [r1, #2]
	cmp r1, r0
	addne sp, sp, #0x24
	ldmnefd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
	mov r0, #0
	mov r1, r4
	bl FUN_ov16_020f0634
	add r0, r0, #4
	str r0, [sp, #8]
	b _020CA24C
_020C9DE4:
	ldr r1, [sp, #0x10]
	mov r0, #1
	tst r1, r0, lsl r11
	beq _020CA248
	ldr r0, _020CA6C4 ; =0x0209AEC0
	bl FUN_02046730
	cmp r11, r0
	beq _020CA248
	ldr r0, [sp, #8]
	sub r1, r11, #1
	add r0, r0, r1
	ldrb r1, [r0, #0x14]
	mov r0, r11
	and r2, r1, #0xf0
	and r1, r1, #0xf
	str r1, [sp, #0x14]
	mov r1, r2, asr #4
	and r1, r1, #0xff
	str r1, [sp, #4]
	bl FUN_ov16_020f085c
	ldr r2, _020CA6CC ; =0x020EAABC
	str r0, [sp, #0xc]
	ldrb r1, [r2, r11]
	ldr r0, [sp, #0x14]
	cmp r1, r0
	beq _020CA248
	strb r0, [r2, r11]
	add r0, r9, #0x8c
	add r0, r0, r11, lsl #7
	mov r8, #3
	add r5, r9, r11, lsl #1
	str r0, [sp, #0x18]
	mov r10, #0xf
	b _020CA240
_020C9E6C:
	ldr r1, [sp, #4]
	mov r0, #1
	tst r1, r0, lsl r8
	beq _020CA23C
	ldr r1, [sp, #0x14]
	mov r2, #0
	b _020C9E98
_020C9E88:
	sub r0, r1, #1
	ands r1, r0, #0xff
	moveq r1, r10
	add r2, r2, #1
_020C9E98:
	cmp r2, r8
	blt _020C9E88
	ldr r0, [sp, #0x18]
	add r7, r0, r1, lsl #3
	mov r0, r7
	bl FUN_ov1_020cbe28
	cmp r0, #0xc
	addls pc, pc, r0, lsl #2
	b _020CA230
_020C9EBC: ; jump table
	b _020CA230 ; case 0
	b _020C9F10 ; case 1
	b _020C9F58 ; case 2
	b _020C9F04 ; case 3
	b _020CA0EC ; case 4
	b _020CA0EC ; case 5
	b _020CA224 ; case 6
	b _020CA0EC ; case 7
	b _020CA230 ; case 8
	b _020C9EF0 ; case 9
	b _020C9EF0 ; case 10
	b _020CA0EC ; case 11
	b _020C9EF0 ; case 12
_020C9EF0:
	mov r0, r9
	mov r1, r11
	ldrb r2, [r7, #5]
	bl FUN_ov1_020c832c
	b _020CA230
_020C9F04:
	mov r0, #0
	strh r0, [r5, #0x7c]
	b _020CA230
_020C9F10:
	ldr r0, [r9, #8]
	cmp r0, #4
	cmpne r0, #0xb
	cmpne r0, #0xd
	cmpne r0, #0x13
	cmpne r0, #0x17
	beq _020C9F34
	cmp r0, #0xf
	bne _020CA230
_020C9F34:
	ldrb r0, [r7, #4]
	bl FUN_ov16_020efa80
	movs r4, r0
	beq _020CA230
	bl FUN_0206cbf8
	strh r0, [r5, #0x7c]
	mov r0, r4
	bl FUN_0206da98
	b _020CA230
_020C9F58:
	ldr r0, [r9, #8]
	cmp r0, #4
	cmpne r0, #0xb
	cmpne r0, #0xd
	cmpne r0, #0x13
	cmpne r0, #0x17
	beq _020C9F7C
	cmp r0, #0xf
	bne _020CA230
_020C9F7C:
	ldrb r0, [r7, #4]
	bl FUN_ov16_020efa80
	movs r6, r0
	beq _020CA230
	bl FUN_0206cbf8
	ldrh r1, [r5, #0x7c]
	cmp r1, r0
	beq _020C9FB0
	mov r0, r6
	bl FUN_0206da98
	mov r0, r6
	bl FUN_0206cbf8
	strh r0, [r5, #0x7c]
_020C9FB0:
	ldr r0, [r6, #0x88]
	ldrb r0, [r0, #0x85]
	cmp r0, #0xa
	bhs _020CA230
	mov r0, r7
	bl FUN_ov1_020cbe08
	cmp r0, #0
	mov r0, r7
	ble _020C9FF0
	bl FUN_ov1_020cbe08
	mov r0, r0, lsl #0xc
	bl FUN_0201f704
	mov r1, r0
	mov r0, #0x3f000000
	bl FUN_02020274
	b _020CA004
_020C9FF0:
	bl FUN_ov1_020cbe08
	mov r0, r0, lsl #0xc
	bl FUN_0201f704
	mov r1, #0x3f000000
	bl FUN_020204a4
_020CA004:
	bl FUN_0201fdac
	str r0, [sp, #0x20]
	mov r0, r7
	bl FUN_ov1_020cbe18
	cmp r0, #0
	mov r0, r7
	ble _020CA03C
	bl FUN_ov1_020cbe18
	mov r0, r0, lsl #0xc
	bl FUN_0201f704
	mov r1, r0
	mov r0, #0x3f000000
	bl FUN_02020274
	b _020CA050
_020CA03C:
	bl FUN_ov1_020cbe18
	mov r0, r0, lsl #0xc
	bl FUN_0201f704
	mov r1, #0x3f000000
	bl FUN_020204a4
_020CA050:
	bl FUN_0201fdac
	str r0, [sp, #0x1c]
	mov r0, #0
	bl FUN_ov16_020f085c
	mov r4, r0
	ldr r0, _020CA6C4 ; =0x0209AEC0
	bl FUN_02046730
	bl FUN_ov16_020f085c
	cmp r4, r0
	beq _020CA084
	add r0, sp, #0x20
	add r1, sp, #0x1c
	bl FUN_ov16_020f025c
_020CA084:
	ldr r2, [r6, #0x88]
	ldrb r1, [r2, #0x85]
	cmp r1, #0
	beq _020CA0BC
	ldr r3, [sp, #0x20]
	sub r0, r1, #1
	add r2, r2, r0, lsl #3
	ldr r0, [r2, #0x34]
	cmp r3, r0
	bne _020CA0BC
	ldr r0, [r2, #0x38]
	ldr r2, [sp, #0x1c]
	cmp r2, r0
	beq _020CA230
_020CA0BC:
	ldr r0, [sp, #0x1c]
	ldr r3, [sp, #0x20]
	ldr r2, [r6, #0x88]
	add r2, r2, #0x34
	str r3, [r2, r1, lsl #3]
	add r1, r2, r1, lsl #3
	str r0, [r1, #4]
	ldr r1, [r6, #0x88]
	ldrb r0, [r1, #0x85]
	add r0, r0, #1
	strb r0, [r1, #0x85]
	b _020CA230
_020CA0EC:
	ldr r0, [r9, #8]
	cmp r0, #4
	cmpne r0, #0xb
	cmpne r0, #0xd
	cmpne r0, #0x13
	cmpne r0, #0x17
	cmpne r0, #0xf
	beq _020CA114
	cmp r0, #0x1a
	bne _020CA230
_020CA114:
	mov r0, r7
	bl FUN_ov1_020cbe08
	cmp r0, #0
	mov r0, r7
	ble _020CA144
	bl FUN_ov1_020cbe08
	mov r0, r0, lsl #0xc
	bl FUN_0201f704
	mov r1, r0
	mov r0, #0x3f000000
	bl FUN_02020274
	b _020CA158
_020CA144:
	bl FUN_ov1_020cbe08
	mov r0, r0, lsl #0xc
	bl FUN_0201f704
	mov r1, #0x3f000000
	bl FUN_020204a4
_020CA158:
	bl FUN_0201fdac
	str r0, [sp, #0x20]
	mov r0, r7
	bl FUN_ov1_020cbe18
	cmp r0, #0
	mov r0, r7
	ble _020CA190
	bl FUN_ov1_020cbe18
	mov r0, r0, lsl #0xc
	bl FUN_0201f704
	mov r1, r0
	mov r0, #0x3f000000
	bl FUN_02020274
	b _020CA1A4
_020CA190:
	bl FUN_ov1_020cbe18
	mov r0, r0, lsl #0xc
	bl FUN_0201f704
	mov r1, #0x3f000000
	bl FUN_020204a4
_020CA1A4:
	bl FUN_0201fdac
	str r0, [sp, #0x1c]
	mov r0, #0
	bl FUN_ov16_020f085c
	mov r4, r0
	ldr r0, _020CA6C4 ; =0x0209AEC0
	bl FUN_02046730
	bl FUN_ov16_020f085c
	cmp r4, r0
	beq _020CA1D8
	add r0, sp, #0x20
	add r1, sp, #0x1c
	bl FUN_ov16_020f025c
_020CA1D8:
	mov r0, r7
	mov r4, #1
	bl FUN_ov1_020cbe28
	cmp r0, #0xb
	beq _020CA1FC
	mov r0, r7
	bl FUN_ov1_020cbe28
	cmp r0, #7
	movne r4, #0
_020CA1FC:
	mov r0, #1
	cmp r4, #0
	moveq r0, #0
	str r0, [sp]
	ldr r1, [sp, #0xc]
	ldr r2, [sp, #0x20]
	ldr r3, [sp, #0x1c]
	mov r0, r9
	bl FUN_ov1_020ce940
	b _020CA230
_020CA224:
	ldr r1, [sp, #0xc]
	mov r0, r9
	bl FUN_ov1_020d351c
_020CA230:
	mov r0, r7
	mov r1, #0
	bl FUN_ov1_020cbdf0
_020CA23C:
	sub r8, r8, #1
_020CA240:
	cmp r8, #0
	bge _020C9E6C
_020CA248:
	sub r11, r11, #1
_020CA24C:
	cmp r11, #0
	bgt _020C9DE4
	ldr r1, [sp, #8]
	mov r0, #0
	ldrb r1, [r1, #0x13]
	str r1, [sp, #0x14]
	bl FUN_ov16_020f085c
	mov r4, r0
	ldr r3, _020CA6CC ; =0x020EAABC
	mov r0, #0
	ldrb r1, [r3, r0]
	ldr r0, [sp, #0x14]
	cmp r1, r0
	addeq sp, sp, #0x24
	ldmeqfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
	ldr r0, [sp, #8]
	ldr r2, [sp, #0x14]
	mov r1, #0
	add r0, r0, #0xc
	strb r2, [r3, r1]
	bl FUN_ov1_020cbe28
	cmp r0, #0xc
	addls pc, pc, r0, lsl #2
	b _020CA6BC
_020CA2AC: ; jump table
	b _020CA6BC ; case 0
	b _020CA2F4 ; case 1
	b _020CA354 ; case 2
	b _020CA2E0 ; case 3
	b _020CA548 ; case 4
	b _020CA548 ; case 5
	b _020CA6B0 ; case 6
	b _020CA548 ; case 7
	b _020CA6BC ; case 8
	b _020CA52C ; case 9
	b _020CA52C ; case 10
	b _020CA548 ; case 11
	b _020CA52C ; case 12
_020CA2E0:
	mov r0, #0
	add r1, r9, r0, lsl #1
	strh r0, [r1, #0x7c]
	add sp, sp, #0x24
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
_020CA2F4:
	ldr r0, [r9, #8]
	cmp r0, #4
	cmpne r0, #0xb
	cmpne r0, #0xd
	cmpne r0, #0x13
	cmpne r0, #0x17
	beq _020CA31C
	cmp r0, #0xf
	addne sp, sp, #0x24
	ldmnefd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
_020CA31C:
	ldr r0, [sp, #8]
	ldrb r0, [r0, #0x10]
	bl FUN_ov16_020efa80
	movs r4, r0
	addeq sp, sp, #0x24
	ldmeqfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
	bl FUN_0206cbf8
	mov r1, #0
	add r1, r9, r1, lsl #1
	strh r0, [r1, #0x7c]
	mov r0, r4
	bl FUN_0206da98
	add sp, sp, #0x24
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
_020CA354:
	ldr r0, [r9, #8]
	cmp r0, #4
	cmpne r0, #0xb
	cmpne r0, #0xd
	cmpne r0, #0x13
	cmpne r0, #0x17
	beq _020CA37C
	cmp r0, #0xf
	addne sp, sp, #0x24
	ldmnefd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
_020CA37C:
	ldr r0, [sp, #8]
	ldrb r0, [r0, #0x10]
	bl FUN_ov16_020efa80
	movs r6, r0
	addeq sp, sp, #0x24
	ldmeqfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
	bl FUN_0206cbf8
	mov r1, #0
	add r1, r9, r1, lsl #1
	ldrh r1, [r1, #0x7c]
	cmp r1, r0
	beq _020CA3C8
	mov r0, r6
	bl FUN_0206da98
	mov r0, r6
	bl FUN_0206cbf8
	mov r1, #0
	add r1, r9, r1, lsl #1
	strh r0, [r1, #0x7c]
_020CA3C8:
	ldr r0, [r6, #0x88]
	ldrb r0, [r0, #0x85]
	cmp r0, #0xa
	addhs sp, sp, #0x24
	ldmhsfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
	ldr r0, [sp, #8]
	add r0, r0, #0xc
	bl FUN_ov1_020cbe08
	cmp r0, #0
	ble _020CA414
	ldr r0, [sp, #8]
	add r0, r0, #0xc
	bl FUN_ov1_020cbe08
	mov r0, r0, lsl #0xc
	bl FUN_0201f704
	mov r1, r0
	mov r0, #0x3f000000
	bl FUN_02020274
	b _020CA430
_020CA414:
	ldr r0, [sp, #8]
	add r0, r0, #0xc
	bl FUN_ov1_020cbe08
	mov r0, r0, lsl #0xc
	bl FUN_0201f704
	mov r1, #0x3f000000
	bl FUN_020204a4
_020CA430:
	bl FUN_0201fdac
	str r0, [sp, #0x20]
	ldr r0, [sp, #8]
	add r0, r0, #0xc
	bl FUN_ov1_020cbe18
	cmp r0, #0
	ble _020CA470
	ldr r0, [sp, #8]
	add r0, r0, #0xc
	bl FUN_ov1_020cbe18
	mov r0, r0, lsl #0xc
	bl FUN_0201f704
	mov r1, r0
	mov r0, #0x3f000000
	bl FUN_02020274
	b _020CA48C
_020CA470:
	ldr r0, [sp, #8]
	add r0, r0, #0xc
	bl FUN_ov1_020cbe18
	mov r0, r0, lsl #0xc
	bl FUN_0201f704
	mov r1, #0x3f000000
	bl FUN_020204a4
_020CA48C:
	bl FUN_0201fdac
	str r0, [sp, #0x1c]
	mov r0, #0
	bl FUN_ov16_020f085c
	mov r4, r0
	ldr r0, _020CA6C4 ; =0x0209AEC0
	bl FUN_02046730
	bl FUN_ov16_020f085c
	cmp r4, r0
	beq _020CA4C0
	add r0, sp, #0x20
	add r1, sp, #0x1c
	bl FUN_ov16_020f025c
_020CA4C0:
	ldr r2, [r6, #0x88]
	ldrb r0, [r2, #0x85]
	cmp r0, #0
	beq _020CA4FC
	sub r1, r0, #1
	add r3, r2, r1, lsl #3
	ldr r2, [sp, #0x20]
	ldr r1, [r3, #0x34]
	cmp r2, r1
	bne _020CA4FC
	ldr r2, [sp, #0x1c]
	ldr r1, [r3, #0x38]
	cmp r2, r1
	addeq sp, sp, #0x24
	ldmeqfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
_020CA4FC:
	ldr r1, [r6, #0x88]
	ldr r4, [sp, #0x1c]
	add r1, r1, #0x34
	ldr r3, [sp, #0x20]
	add r2, r1, r0, lsl #3
	stmia r2, {r3, r4}
	ldr r1, [r6, #0x88]
	add sp, sp, #0x24
	ldrb r0, [r1, #0x85]
	add r0, r0, #1
	strb r0, [r1, #0x85]
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
_020CA52C:
	ldr r0, [sp, #8]
	mov r1, #0
	ldrb r2, [r0, #0x11]
	mov r0, r9
	bl FUN_ov1_020c832c
	add sp, sp, #0x24
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
_020CA548:
	ldr r0, [r9, #8]
	cmp r0, #4
	cmpne r0, #0xb
	cmpne r0, #0xd
	cmpne r0, #0x13
	cmpne r0, #0x17
	cmpne r0, #0xf
	beq _020CA574
	cmp r0, #0x1a
	addne sp, sp, #0x24
	ldmnefd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
_020CA574:
	ldr r0, [sp, #8]
	add r0, r0, #0xc
	bl FUN_ov1_020cbe08
	cmp r0, #0
	ble _020CA5AC
	ldr r0, [sp, #8]
	add r0, r0, #0xc
	bl FUN_ov1_020cbe08
	mov r0, r0, lsl #0xc
	bl FUN_0201f704
	mov r1, r0
	mov r0, #0x3f000000
	bl FUN_02020274
	b _020CA5C8
_020CA5AC:
	ldr r0, [sp, #8]
	add r0, r0, #0xc
	bl FUN_ov1_020cbe08
	mov r0, r0, lsl #0xc
	bl FUN_0201f704
	mov r1, #0x3f000000
	bl FUN_020204a4
_020CA5C8:
	bl FUN_0201fdac
	str r0, [sp, #0x20]
	ldr r0, [sp, #8]
	add r0, r0, #0xc
	bl FUN_ov1_020cbe18
	cmp r0, #0
	ble _020CA608
	ldr r0, [sp, #8]
	add r0, r0, #0xc
	bl FUN_ov1_020cbe18
	mov r0, r0, lsl #0xc
	bl FUN_0201f704
	mov r1, r0
	mov r0, #0x3f000000
	bl FUN_02020274
	b _020CA624
_020CA608:
	ldr r0, [sp, #8]
	add r0, r0, #0xc
	bl FUN_ov1_020cbe18
	mov r0, r0, lsl #0xc
	bl FUN_0201f704
	mov r1, #0x3f000000
	bl FUN_020204a4
_020CA624:
	bl FUN_0201fdac
	str r0, [sp, #0x1c]
	mov r0, #0
	bl FUN_ov16_020f085c
	mov r5, r0
	ldr r0, _020CA6C4 ; =0x0209AEC0
	bl FUN_02046730
	bl FUN_ov16_020f085c
	cmp r5, r0
	beq _020CA658
	add r0, sp, #0x20
	add r1, sp, #0x1c
	bl FUN_ov16_020f025c
_020CA658:
	ldr r0, [sp, #8]
	mov r5, #1
	add r0, r0, #0xc
	bl FUN_ov1_020cbe28
	cmp r0, #0xb
	beq _020CA684
	ldr r0, [sp, #8]
	add r0, r0, #0xc
	bl FUN_ov1_020cbe28
	cmp r0, #7
	movne r5, #0
_020CA684:
	mov r0, #1
	cmp r5, #0
	moveq r0, #0
	str r0, [sp]
	ldr r2, [sp, #0x20]
	ldr r3, [sp, #0x1c]
	mov r0, r9
	mov r1, r4
	bl FUN_ov1_020ce940
	add sp, sp, #0x24
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
_020CA6B0:
	mov r0, r9
	mov r1, r4
	bl FUN_ov1_020d351c
_020CA6BC:
	add sp, sp, #0x24
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
_020CA6C4: .word 0x0209AEC0
_020CA6C8: .word 0x0209A4E0
_020CA6CC: .word 0x020EAABC
	arm_func_end FUN_ov1_020c9d88

	arm_func_start FUN_ov1_020ca6d0
FUN_ov1_020ca6d0: ; 0x020CA6D0
	stmfd sp!, {r3, lr}
	mov r1, #0
	str r1, [r0, #0x74]
	str r1, [r0, #0x78]
	strh r1, [r0, #0x84]
	strh r1, [r0, #0x86]
	str r1, [r0, #0x2a8]
	strh r1, [r0, #0x7c]
	strh r1, [r0, #0x7e]
	strh r1, [r0, #0x80]
	strh r1, [r0, #0x82]
	ldr r0, _020CA73C ; =0x0209AEC0
	mov r1, #7
	bl FUN_02046cb4
	bl FUN_ov1_020db338
	cmp r0, #0
	ldrne r0, _020CA740 ; =0x0209A4E0
	movne r1, #0x46
	ldreq r0, _020CA740 ; =0x0209A4E0
	moveq r1, #0x38
	strb r1, [r0, #2]
	ldr r2, _020CA740 ; =0x0209A4E0
	mov r1, #0
	ldr r0, _020CA744 ; =0x0209A4E4
	strb r1, [r2, #3]
	bl FUN_ov1_020cbe38
	ldmfd sp!, {r3, pc}
_020CA73C: .word 0x0209AEC0
_020CA740: .word 0x0209A4E0
_020CA744: .word 0x0209A4E4
	arm_func_end FUN_ov1_020ca6d0

	arm_func_start FUN_ov1_020ca748
FUN_ov1_020ca748: ; 0x020CA748
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, lr}
	ldr r4, _020CA878 ; =0x0209AEC0
	mov r10, r0
	ldrb r1, [r4, #0x64]
	cmp r1, #0
	beq _020CA770
	bl FUN_ov1_020c8844
	mov r0, r10
	bl FUN_ov1_020c3bd4
	b _020CA870
_020CA770:
	mov r0, r4
	bl FUN_02046744
	str r0, [sp]
	mov r0, r4
	bl FUN_02046730
	mov r11, r0
	mov r5, #3
	mov r4, #0
	b _020CA868
_020CA794:
	ldr r1, [sp]
	mov r0, #1
	tst r1, r0, lsl r5
	cmpne r5, r11
	beq _020CA864
	mov r0, r5
	mov r1, #0
	bl FUN_ov16_020f0634
	ldr r1, _020CA87C ; =0x0209A108
	ldrh r6, [r0]
	ldr r0, [r1]
	cmp r0, #1
	ble _020CA834
	mov r7, r6
	sub r8, r0, #1
	b _020CA82C
_020CA7D4:
	mov r0, r5
	mov r1, r8
	bl FUN_ov16_020f0634
	mov r9, r0
	ldrh r0, [r9]
	cmp r0, r6
	cmpne r0, r7
	beq _020CA824
	mov r0, r10
	mov r1, r5
	mov r2, r8
	bl FUN_ov1_020c95e8
	cmp r5, #0
	bne _020CA824
	mov r0, r10
	mov r1, r8
	bl FUN_ov1_020c9d88
	mov r0, r10
	mov r1, r8
	bl FUN_ov1_020c8370
_020CA824:
	ldrh r7, [r9]
	sub r8, r8, #1
_020CA82C:
	cmp r8, #0
	bgt _020CA7D4
_020CA834:
	mov r0, r10
	mov r1, r5
	mov r2, r4
	bl FUN_ov1_020c95e8
	cmp r5, #0
	bne _020CA864
	mov r0, r10
	mov r1, r4
	bl FUN_ov1_020c9d88
	mov r0, r10
	mov r1, r4
	bl FUN_ov1_020c8370
_020CA864:
	sub r5, r5, #1
_020CA868:
	cmp r5, #0
	bge _020CA794
_020CA870:
	mov r0, #1
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_020CA878: .word 0x0209AEC0
_020CA87C: .word 0x0209A108
	arm_func_end FUN_ov1_020ca748

	arm_func_start FUN_ov1_020ca880
FUN_ov1_020ca880: ; 0x020CA880
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, lr}
	ldr r1, _020CAA60 ; =0x020EAACC
	mov r4, r0
	ldr r0, [r1]
	ldr r9, _020CAA64 ; =0x020EAAF4
	cmp r0, #3
	ldrneh r0, [r9]
	mov r5, #0
	strneb r0, [r4, #0x17]
	ldrneh r0, [r9, #2]
	strneb r0, [r4, #0x18]
	ldr r0, _020CAA60 ; =0x020EAACC
	ldr r0, [r0]
	cmp r0, #5
	addls pc, pc, r0, lsl #2
	b _020CAA38
_020CA8C0: ; jump table
	b _020CAA38 ; case 0
	b _020CA988 ; case 1
	b _020CA8D8 ; case 2
	b _020CAA38 ; case 3
	b _020CA914 ; case 4
	b _020CA9BC ; case 5
_020CA8D8:
	ldrh r1, [r9]
	cmp r1, #0
	beq _020CA8F4
	mov r0, #0
	bl FUN_ov1_020d2494
	add r0, r0, #1
	strb r0, [r4, #0x17]
_020CA8F4:
	ldrh r1, [r9, #2]
	cmp r1, #0
	beq _020CAA38
	mov r0, #1
	bl FUN_ov1_020d2494
_020CA908:
	add r0, r0, #1
	strb r0, [r4, #0x18]
	b _020CAA38
_020CA914:
	ldr r0, _020CAA68 ; =0x02099EF0
	ldr r0, [r0]
	bl FUN_ov132_02159df0
	mov r1, #1
	mov r2, #0
	mov r8, r1
	mov r6, #0x6e
_020CA930:
	ldrb r3, [r0, #4]
	mov r7, r5
	cmp r2, #0
	movne r7, r1
	tst r3, r8, lsl r7
	movne r3, r8
	moveq r3, r5
	cmp r3, #0
	bne _020CA970
	mov r3, r2, lsl #1
	ldrh r7, [r9, r3]
	add r3, r4, r2
	cmp r7, #0
	strneb r7, [r3, #0x17]
	streqb r5, [r3, #0x17]
	b _020CA978
_020CA970:
	add r3, r4, r2
	strb r6, [r3, #0x17]
_020CA978:
	add r2, r2, #1
	cmp r2, #2
	blt _020CA930
	b _020CAA38
_020CA988:
	ldrh r1, [r9]
	cmp r1, #0
	beq _020CA9A4
	mov r0, #0
	bl FUN_ov1_020d321c
	add r0, r0, #1
	strb r0, [r4, #0x17]
_020CA9A4:
	ldrh r1, [r9, #2]
	cmp r1, #0
	beq _020CAA38
	mov r0, #1
	bl FUN_ov1_020d321c
	b _020CA908
_020CA9BC:
	ldr r5, _020CAA6C ; =0x000001F9
	ldr r7, _020CAA68 ; =0x02099EF0
	mov r10, #0
	sub r6, r5, #3
	mov r11, #0x66
	mov r8, #0x64
_020CA9D4:
	mov r0, r10, lsl #1
	ldrh r0, [r9, r0]
	cmp r0, r6
	beq _020CA9F0
	cmp r0, r5
	beq _020CAA0C
	b _020CAA2C
_020CA9F0:
	ldr r0, [r7]
	mov r1, r10
	bl FUN_ov126_02136ec0
	mov r1, r8
	cmp r0, #0
	movne r1, r11
	b _020CAA24
_020CAA0C:
	ldr r0, [r7]
	mov r1, r10
	bl FUN_ov126_02136ec0
	mov r1, #0x65
	cmp r0, #0
	movne r1, #0x67
_020CAA24:
	add r0, r4, r10
	strb r1, [r0, #0x17]
_020CAA2C:
	add r10, r10, #1
	cmp r10, #2
	blt _020CA9D4
_020CAA38:
	ldr r1, _020CAA60 ; =0x020EAACC
	mov r0, r4
	ldr r1, [r1]
	bl FUN_ov1_020cbe54
	ldr r0, _020CAA70 ; =0x020EAAFC
	ldr r1, [r0]
	strb r1, [r4, #0x19]
	ldr r0, [r0, #4]
	strb r0, [r4, #0x1a]
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_020CAA60: .word 0x020EAACC
_020CAA64: .word 0x020EAAF4
_020CAA68: .word 0x02099EF0
_020CAA6C: .word 0x000001F9
_020CAA70: .word 0x020EAAFC
	arm_func_end FUN_ov1_020ca880

	arm_func_start FUN_ov1_020caa74
FUN_ov1_020caa74: ; 0x020CAA74
	stmfd sp!, {r3, r4, r5, lr}
	ldr r1, _020CABCC ; =0x0209AEC0
	mov r5, r0
	ldrb r1, [r1, #0x64]
	cmp r1, #0
	beq _020CAA94
	bl FUN_ov1_020c5ae8
	b _020CAA98
_020CAA94:
	bl FUN_ov1_020c5d78
_020CAA98:
	mov r0, r5
	bl FUN_ov1_020c3b44
	bl FUN_ov1_020db338
	cmp r0, #0
	ldrne r0, _020CABD0 ; =0x0209A4E0
	movne r1, #0x46
	ldreq r0, _020CABD0 ; =0x0209A4E0
	moveq r1, #0x38
	strb r1, [r0, #2]
	ldr r0, _020CABCC ; =0x0209AEC0
	ldr r2, [r5, #8]
	ldrb r1, [r0, #0x64]
	ldr r0, _020CABD0 ; =0x0209A4E0
	ldr r4, _020CABD4 ; =0x0209A4E4
	strb r2, [r0, #3]
	cmp r1, #0
	ldr r0, _020CABD8 ; =0x020EAAC4
	ldr r1, _020CABDC ; =0x020A0640
	ldreq r0, _020CABE0 ; =0x020EAAE0
	ldr r2, [r1]
	ldr r0, [r0]
	ldr r1, [r1, #4]
	str r0, [r4, #8]
	ldr r0, _020CABE4 ; =0x020EAB04
	str r2, [r4]
	ldr r0, [r0]
	str r1, [r4, #4]
	cmp r0, #0x80000000
	mov r0, r4
	ble _020CAB18
	mov r1, #1
	b _020CAB1C
_020CAB18:
	mov r1, #0
_020CAB1C:
	bl FUN_ov1_020cbed0
	ldr r0, _020CABE4 ; =0x020EAB04
	ldr r0, [r0, #8]
	cmp r0, #0x80000000
	mov r0, r4
	ble _020CAB3C
	mov r1, #1
	b _020CAB40
_020CAB3C:
	mov r1, #0
_020CAB40:
	bl FUN_ov1_020cbef0
	mov r0, r4
	bl FUN_ov1_020ca880
	ldr r0, _020CABE8 ; =0x020EAACC
	ldr r0, [r0]
	cmp r0, #2
	cmpne r0, #1
	cmpne r0, #5
	cmpne r0, #3
	beq _020CAB70
	cmp r0, #4
	bne _020CABC4
_020CAB70:
	ldr r0, _020CABCC ; =0x0209AEC0
	bl FUN_02046744
	mov r12, #0
	ldr r2, _020CABEC ; =0x020EAADC
	mov r3, #1
	b _020CABBC
_020CAB88:
	ldr r1, [r5, #0x18]
	cmp r1, #0
	bgt _020CABA8
	tst r0, r3, lsl r12
	beq _020CABB8
	ldrb r1, [r2, r12]
	cmp r1, #0
	bne _020CABB8
_020CABA8:
	mov r0, #0
	strb r0, [r4, #0x17]
	strb r0, [r4, #0x18]
	b _020CABC4
_020CABB8:
	add r12, r12, #1
_020CABBC:
	cmp r12, #4
	blt _020CAB88
_020CABC4:
	mov r0, #1
	ldmfd sp!, {r3, r4, r5, pc}
_020CABCC: .word 0x0209AEC0
_020CABD0: .word 0x0209A4E0
_020CABD4: .word 0x0209A4E4
_020CABD8: .word 0x020EAAC4
_020CABDC: .word 0x020A0640
_020CABE0: .word 0x020EAAE0
_020CABE4: .word 0x020EAB04
_020CABE8: .word 0x020EAACC
_020CABEC: .word 0x020EAADC
	arm_func_end FUN_ov1_020caa74

	arm_func_start FUN_ov1_020cabf0
FUN_ov1_020cabf0: ; 0x020CABF0
	ldr r0, [r0, #8]
	cmp r0, #2
	movhi r0, #1
	movls r0, #0
	bx lr
	arm_func_end FUN_ov1_020cabf0

	arm_func_start FUN_ov1_020cac04
FUN_ov1_020cac04: ; 0x020CAC04
	ldr r0, [r0, #8]
	cmp r0, #0
	cmpne r0, #1
	cmpne r0, #2
	cmpne r0, #0x33
	beq _020CAC28
	sub r0, r0, #0x65
	cmp r0, #1
	bhi _020CAC30
_020CAC28:
	mov r0, #0
	bx lr
_020CAC30:
	mov r0, #1
	bx lr
	arm_func_end FUN_ov1_020cac04

	arm_func_start FUN_ov1_020cac38
FUN_ov1_020cac38: ; 0x020CAC38
	mov r2, #0x800
	rsb r2, r2, #0
	ldr r3, [r0]
	and r1, r1, r2, lsr #21
	and r2, r3, r2
	orr r1, r2, r1
	str r1, [r0]
	bx lr
	arm_func_end FUN_ov1_020cac38

	arm_func_start FUN_ov1_020cac58
FUN_ov1_020cac58: ; 0x020CAC58
	ldr r3, [r0]
	ldr r2, _020CAC74 ; =0xFFC007FF
	mov r1, r1, lsl #0x15
	and r2, r3, r2
	orr r1, r2, r1, lsr #10
	str r1, [r0]
	bx lr
_020CAC74: .word 0xFFC007FF
	arm_func_end FUN_ov1_020cac58

	arm_func_start FUN_ov1_020cac78
FUN_ov1_020cac78: ; 0x020CAC78
	ldr r3, [r0]
	ldr r2, _020CAC90 ; =0x003FFFFF
	and r2, r3, r2
	orr r1, r2, r1, lsl #22
	str r1, [r0]
	bx lr
_020CAC90: .word 0x003FFFFF
	arm_func_end FUN_ov1_020cac78

	arm_func_start FUN_ov1_020cac94
FUN_ov1_020cac94: ; 0x020CAC94
	mov r2, #0x800
	rsb r2, r2, #0
	ldr r3, [r0, #8]
	and r1, r1, r2, lsr #21
	and r2, r3, r2
	orr r1, r2, r1
	str r1, [r0, #8]
	bx lr
	arm_func_end FUN_ov1_020cac94

	arm_func_start FUN_ov1_020cacb4
FUN_ov1_020cacb4: ; 0x020CACB4
	ldr r3, [r0, #8]
	ldr r2, _020CACD0 ; =0xFFC007FF
	mov r1, r1, lsl #0x15
	and r2, r3, r2
	orr r1, r2, r1, lsr #10
	str r1, [r0, #8]
	bx lr
_020CACD0: .word 0xFFC007FF
	arm_func_end FUN_ov1_020cacb4

	arm_func_start FUN_ov1_020cacd4
FUN_ov1_020cacd4: ; 0x020CACD4
	ldr r2, [r0, #8]
	mov r1, r1, lsl #0x1c
	bic r2, r2, #0x3c00000
	orr r1, r2, r1, lsr #6
	str r1, [r0, #8]
	bx lr
	arm_func_end FUN_ov1_020cacd4

	arm_func_start FUN_ov1_020cacec
FUN_ov1_020cacec: ; 0x020CACEC
	ldr r2, [r0, #8]
	mov r1, r1, lsl #0x1f
	bic r2, r2, #0x4000000
	orr r1, r2, r1, lsr #5
	str r1, [r0, #8]
	bx lr
	arm_func_end FUN_ov1_020cacec

	arm_func_start FUN_ov1_020cad04
FUN_ov1_020cad04: ; 0x020CAD04
	ldr r2, [r0, #8]
	mov r1, r1, lsl #0x1f
	bic r2, r2, #0x8000000
	orr r1, r2, r1, lsr #4
	str r1, [r0, #8]
	bx lr
	arm_func_end FUN_ov1_020cad04

	arm_func_start FUN_ov1_020cad1c
FUN_ov1_020cad1c: ; 0x020CAD1C
	ldr r2, [r0, #4]
	and r1, r1, #0x3f
	bic r2, r2, #0x3f
	orr r1, r2, r1
	str r1, [r0, #4]
	bx lr
	arm_func_end FUN_ov1_020cad1c

	arm_func_start FUN_ov1_020cad34
FUN_ov1_020cad34: ; 0x020CAD34
	ldr r2, [r0, #4]
	mov r1, r1, lsl #0x1a
	bic r2, r2, #0xfc0
	orr r1, r2, r1, lsr #20
	str r1, [r0, #4]
	bx lr
	arm_func_end FUN_ov1_020cad34

	arm_func_start FUN_ov1_020cad4c
FUN_ov1_020cad4c: ; 0x020CAD4C
	ldr r2, [r0, #4]
	mov r1, r1, lsl #0x18
	bic r2, r2, #0xff000
	orr r1, r2, r1, lsr #12
	str r1, [r0, #4]
	bx lr
	arm_func_end FUN_ov1_020cad4c

	arm_func_start FUN_ov1_020cad64
FUN_ov1_020cad64: ; 0x020CAD64
	ldr r2, [r0, #4]
	mov r1, r1, lsl #0x18
	bic r2, r2, #0xff00000
	orr r1, r2, r1, lsr #4
	str r1, [r0, #4]
	bx lr
	arm_func_end FUN_ov1_020cad64

	arm_func_start FUN_ov1_020cad7c
FUN_ov1_020cad7c: ; 0x020CAD7C
	ldr r2, [r0, #4]
	mov r1, r1, lsl #0x1f
	bic r2, r2, #0x10000000
	orr r1, r2, r1, lsr #3
	str r1, [r0, #4]
	bx lr
	arm_func_end FUN_ov1_020cad7c

	arm_func_start FUN_ov1_020cad94
FUN_ov1_020cad94: ; 0x020CAD94
	ldr r2, [r0, #4]
	mov r1, r1, lsl #0x1f
	bic r2, r2, #0x20000000
	orr r1, r2, r1, lsr #2
	str r1, [r0, #4]
	bx lr
	arm_func_end FUN_ov1_020cad94

	arm_func_start FUN_ov1_020cadac
FUN_ov1_020cadac: ; 0x020CADAC
	ldr r0, [r0]
	mov r0, r0, lsl #0x15
	mov r0, r0, asr #0x15
	bx lr
	arm_func_end FUN_ov1_020cadac

	arm_func_start FUN_ov1_020cadbc
FUN_ov1_020cadbc: ; 0x020CADBC
	ldr r0, [r0]
	mov r0, r0, lsl #0xa
	mov r0, r0, asr #0x15
	bx lr
	arm_func_end FUN_ov1_020cadbc

	arm_func_start FUN_ov1_020cadcc
FUN_ov1_020cadcc: ; 0x020CADCC
	ldr r0, [r0]
	mov r0, r0, asr #0x16
	bx lr
	arm_func_end FUN_ov1_020cadcc

	arm_func_start FUN_ov1_020cadd8
FUN_ov1_020cadd8: ; 0x020CADD8
	ldr r0, [r0, #8]
	mov r0, r0, lsl #0x15
	mov r0, r0, asr #0x15
	bx lr
	arm_func_end FUN_ov1_020cadd8

	arm_func_start FUN_ov1_020cade8
FUN_ov1_020cade8: ; 0x020CADE8
	ldr r0, [r0, #8]
	mov r0, r0, lsl #0xa
	mov r0, r0, asr #0x15
	bx lr
	arm_func_end FUN_ov1_020cade8

	arm_func_start FUN_ov1_020cadf8
FUN_ov1_020cadf8: ; 0x020CADF8
	ldr r0, [r0, #8]
	mov r0, r0, lsl #6
	mov r0, r0, lsr #0x1c
	bx lr
	arm_func_end FUN_ov1_020cadf8

	arm_func_start FUN_ov1_020cae08
FUN_ov1_020cae08: ; 0x020CAE08
	ldr r0, [r0, #8]
	mov r0, r0, lsl #5
	mov r0, r0, lsr #0x1f
	bx lr
	arm_func_end FUN_ov1_020cae08

	arm_func_start FUN_ov1_020cae18
FUN_ov1_020cae18: ; 0x020CAE18
	ldr r0, [r0, #8]
	mov r0, r0, lsl #4
	mov r0, r0, lsr #0x1f
	bx lr
	arm_func_end FUN_ov1_020cae18

	arm_func_start FUN_ov1_020cae28
FUN_ov1_020cae28: ; 0x020CAE28
	ldr r0, [r0, #4]
	mov r0, r0, lsl #0x1a
	mov r0, r0, asr #0x1a
	bx lr
	arm_func_end FUN_ov1_020cae28

	arm_func_start FUN_ov1_020cae38
FUN_ov1_020cae38: ; 0x020CAE38
	ldr r0, [r0, #4]
	mov r0, r0, lsl #0x14
	mov r0, r0, asr #0x1a
	bx lr
	arm_func_end FUN_ov1_020cae38

	arm_func_start FUN_ov1_020cae48
FUN_ov1_020cae48: ; 0x020CAE48
	ldr r0, [r0, #4]
	mov r0, r0, lsl #0xc
	mov r0, r0, lsr #0x18
	bx lr
	arm_func_end FUN_ov1_020cae48

	arm_func_start FUN_ov1_020cae58
FUN_ov1_020cae58: ; 0x020CAE58
	ldr r0, [r0, #4]
	mov r0, r0, lsl #4
	mov r0, r0, lsr #0x18
	bx lr
	arm_func_end FUN_ov1_020cae58

	arm_func_start FUN_ov1_020cae68
FUN_ov1_020cae68: ; 0x020CAE68
	ldr r0, [r0, #4]
	mov r0, r0, lsl #3
	mov r0, r0, lsr #0x1f
	bx lr
	arm_func_end FUN_ov1_020cae68

	arm_func_start FUN_ov1_020cae78
FUN_ov1_020cae78: ; 0x020CAE78
	ldr r0, [r0, #4]
	mov r0, r0, lsl #2
	mov r0, r0, lsr #0x1f
	bx lr
	arm_func_end FUN_ov1_020cae78

	arm_func_start FUN_ov1_020cae88
FUN_ov1_020cae88: ; 0x020CAE88
	mov r2, #0x800
	rsb r2, r2, #0
	ldr r3, [r0]
	and r1, r1, r2, lsr #21
	and r2, r3, r2
	orr r1, r2, r1
	str r1, [r0]
	bx lr
	arm_func_end FUN_ov1_020cae88

	arm_func_start FUN_ov1_020caea8
FUN_ov1_020caea8: ; 0x020CAEA8
	ldr r3, [r0]
	ldr r2, _020CAEC4 ; =0xFFC007FF
	mov r1, r1, lsl #0x15
	and r2, r3, r2
	orr r1, r2, r1, lsr #10
	str r1, [r0]
	bx lr
_020CAEC4: .word 0xFFC007FF
	arm_func_end FUN_ov1_020caea8

	arm_func_start FUN_ov1_020caec8
FUN_ov1_020caec8: ; 0x020CAEC8
	ldr r2, [r0]
	mov r1, r1, lsl #0x1c
	bic r2, r2, #0x3c00000
	orr r1, r2, r1, lsr #6
	str r1, [r0]
	bx lr
	arm_func_end FUN_ov1_020caec8

	arm_func_start FUN_ov1_020caee0
FUN_ov1_020caee0: ; 0x020CAEE0
	ldr r2, [r0]
	mov r1, r1, lsl #0x1f
	bic r2, r2, #0x4000000
	orr r1, r2, r1, lsr #5
	str r1, [r0]
	bx lr
	arm_func_end FUN_ov1_020caee0

	arm_func_start FUN_ov1_020caef8
FUN_ov1_020caef8: ; 0x020CAEF8
	ldr r2, [r0]
	mov r1, r1, lsl #0x1c
	bic r2, r2, #0x78000000
	orr r1, r2, r1, lsr #1
	str r1, [r0]
	bx lr
	arm_func_end FUN_ov1_020caef8

	arm_func_start FUN_ov1_020caf10
FUN_ov1_020caf10: ; 0x020CAF10
	ldr r0, [r0]
	mov r0, r0, lsl #0x15
	mov r0, r0, asr #0x15
	bx lr
	arm_func_end FUN_ov1_020caf10

	arm_func_start FUN_ov1_020caf20
FUN_ov1_020caf20: ; 0x020CAF20
	ldr r0, [r0]
	mov r0, r0, lsl #0xa
	mov r0, r0, asr #0x15
	bx lr
	arm_func_end FUN_ov1_020caf20

	arm_func_start FUN_ov1_020caf30
FUN_ov1_020caf30: ; 0x020CAF30
	ldr r0, [r0]
	mov r0, r0, lsl #6
	mov r0, r0, lsr #0x1c
	bx lr
	arm_func_end FUN_ov1_020caf30

	arm_func_start FUN_ov1_020caf40
FUN_ov1_020caf40: ; 0x020CAF40
	ldr r0, [r0]
	mov r0, r0, lsl #5
	mov r0, r0, lsr #0x1f
	bx lr
	arm_func_end FUN_ov1_020caf40

	arm_func_start FUN_ov1_020caf50
FUN_ov1_020caf50: ; 0x020CAF50
	ldr r0, [r0]
	mov r0, r0, lsl #1
	mov r0, r0, lsr #0x1c
	bx lr
	arm_func_end FUN_ov1_020caf50

	arm_func_start FUN_ov1_020caf60
FUN_ov1_020caf60: ; 0x020CAF60
	ldrh r2, [r0]
	mov r1, r1, lsl #0x10
	mov r1, r1, lsr #0x10
	bic r2, r2, #0xf
	and r1, r1, #0xf
	orr r1, r2, r1
	strh r1, [r0]
	bx lr
	arm_func_end FUN_ov1_020caf60

	arm_func_start FUN_ov1_020caf80
FUN_ov1_020caf80: ; 0x020CAF80
	ldrh r2, [r0]
	mov r1, r1, lsl #0x10
	mov r1, r1, lsr #0x10
	bic r2, r2, #0x70
	mov r1, r1, lsl #0x1d
	orr r1, r2, r1, lsr #25
	strh r1, [r0]
	bx lr
	arm_func_end FUN_ov1_020caf80

	arm_func_start FUN_ov1_020cafa0
FUN_ov1_020cafa0: ; 0x020CAFA0
	ldrh r2, [r0]
	mov r1, r1, lsl #0x10
	mov r1, r1, lsr #0x10
	bic r2, r2, #0x380
	mov r1, r1, lsl #0x1d
	orr r1, r2, r1, lsr #22
	strh r1, [r0]
	bx lr
	arm_func_end FUN_ov1_020cafa0

	arm_func_start FUN_ov1_020cafc0
FUN_ov1_020cafc0: ; 0x020CAFC0
	ldrh r0, [r0]
	mov r0, r0, lsl #0x1c
	mov r0, r0, lsr #0x1c
	bx lr
	arm_func_end FUN_ov1_020cafc0

	arm_func_start FUN_ov1_020cafd0
FUN_ov1_020cafd0: ; 0x020CAFD0
	ldrh r0, [r0]
	mov r0, r0, lsl #0x19
	mov r0, r0, lsr #0x1d
	bx lr
	arm_func_end FUN_ov1_020cafd0

	arm_func_start FUN_ov1_020cafe0
FUN_ov1_020cafe0: ; 0x020CAFE0
	ldrh r0, [r0]
	mov r0, r0, lsl #0x16
	mov r0, r0, lsr #0x1d
	bx lr
	arm_func_end FUN_ov1_020cafe0

	arm_func_start FUN_ov1_020caff0
FUN_ov1_020caff0: ; 0x020CAFF0
	ldrh r2, [r0]
	mov r1, r1, lsl #0x10
	mov r1, r1, lsr #0x10
	bic r2, r2, #0xf
	and r1, r1, #0xf
	orr r1, r2, r1
	strh r1, [r0]
	bx lr
	arm_func_end FUN_ov1_020caff0

	arm_func_start FUN_ov1_020cb010
FUN_ov1_020cb010: ; 0x020CB010
	ldrh r2, [r0]
	mov r1, r1, lsl #0x10
	mov r1, r1, lsr #0x10
	bic r2, r2, #0x10
	mov r1, r1, lsl #0x1f
	orr r1, r2, r1, lsr #27
	strh r1, [r0]
	bx lr
	arm_func_end FUN_ov1_020cb010

	arm_func_start FUN_ov1_020cb030
FUN_ov1_020cb030: ; 0x020CB030
	ldrh r2, [r0]
	mov r1, r1, lsl #0x10
	mov r1, r1, lsr #0x10
	bic r2, r2, #0x1e0
	mov r1, r1, lsl #0x1c
	orr r1, r2, r1, lsr #23
	strh r1, [r0]
	bx lr
	arm_func_end FUN_ov1_020cb030

	arm_func_start FUN_ov1_020cb050
FUN_ov1_020cb050: ; 0x020CB050
	ldrh r2, [r0]
	mov r1, r1, lsl #0x10
	mov r1, r1, lsr #0x10
	bic r2, r2, #0x1e00
	mov r1, r1, lsl #0x1c
	orr r1, r2, r1, lsr #19
	strh r1, [r0]
	bx lr
	arm_func_end FUN_ov1_020cb050

	arm_func_start FUN_ov1_020cb070
FUN_ov1_020cb070: ; 0x020CB070
	ldrh r2, [r0]
	mov r1, r1, lsl #0x10
	mov r1, r1, lsr #0x10
	bic r2, r2, #0xe000
	mov r1, r1, lsl #0x1d
	orr r1, r2, r1, lsr #16
	strh r1, [r0]
	bx lr
	arm_func_end FUN_ov1_020cb070

	arm_func_start FUN_ov1_020cb090
FUN_ov1_020cb090: ; 0x020CB090
	ldrh r0, [r0]
	mov r0, r0, lsl #0x1c
	mov r0, r0, lsr #0x1c
	bx lr
	arm_func_end FUN_ov1_020cb090

	arm_func_start FUN_ov1_020cb0a0
FUN_ov1_020cb0a0: ; 0x020CB0A0
	ldrh r0, [r0]
	mov r0, r0, lsl #0x1b
	mov r0, r0, lsr #0x1f
	bx lr
	arm_func_end FUN_ov1_020cb0a0

	arm_func_start FUN_ov1_020cb0b0
FUN_ov1_020cb0b0: ; 0x020CB0B0
	ldrh r0, [r0]
	mov r0, r0, lsl #0x17
	mov r0, r0, lsr #0x1c
	bx lr
	arm_func_end FUN_ov1_020cb0b0

	arm_func_start FUN_ov1_020cb0c0
FUN_ov1_020cb0c0: ; 0x020CB0C0
	ldrh r0, [r0]
	mov r0, r0, lsl #0x13
	mov r0, r0, lsr #0x1c
	bx lr
	arm_func_end FUN_ov1_020cb0c0

	arm_func_start FUN_ov1_020cb0d0
FUN_ov1_020cb0d0: ; 0x020CB0D0
	ldrh r0, [r0]
	mov r0, r0, lsl #0x10
	mov r0, r0, lsr #0x1d
	bx lr
	arm_func_end FUN_ov1_020cb0d0

	arm_func_start FUN_ov1_020cb0e0
FUN_ov1_020cb0e0: ; 0x020CB0E0
	bx lr
	arm_func_end FUN_ov1_020cb0e0

	arm_func_start FUN_ov1_020cb0e4
FUN_ov1_020cb0e4: ; 0x020CB0E4
	ldr r12, _020CB0EC ; =FUN_ov1_020cae88
	bx r12
_020CB0EC: .word FUN_ov1_020cae88
	arm_func_end FUN_ov1_020cb0e4

	arm_func_start FUN_ov1_020cb0f0
FUN_ov1_020cb0f0: ; 0x020CB0F0
	ldr r12, _020CB0F8 ; =FUN_ov1_020caea8
	bx r12
_020CB0F8: .word FUN_ov1_020caea8
	arm_func_end FUN_ov1_020cb0f0

	arm_func_start FUN_ov1_020cb0fc
FUN_ov1_020cb0fc: ; 0x020CB0FC
	ldr r12, _020CB104 ; =FUN_ov1_020caef8
	bx r12
_020CB104: .word FUN_ov1_020caef8
	arm_func_end FUN_ov1_020cb0fc

	arm_func_start FUN_ov1_020cb108
FUN_ov1_020cb108: ; 0x020CB108
	ldr r12, _020CB114 ; =FUN_ov1_020caf60
	add r0, r0, #4
	bx r12
_020CB114: .word FUN_ov1_020caf60
	arm_func_end FUN_ov1_020cb108

	arm_func_start FUN_ov1_020cb118
FUN_ov1_020cb118: ; 0x020CB118
	ldr r12, _020CB124 ; =FUN_ov1_020caf80
	add r0, r0, #4
	bx r12
_020CB124: .word FUN_ov1_020caf80
	arm_func_end FUN_ov1_020cb118

	arm_func_start FUN_ov1_020cb128
FUN_ov1_020cb128: ; 0x020CB128
	ldr r12, _020CB134 ; =FUN_ov1_020cafa0
	add r0, r0, #4
	bx r12
_020CB134: .word FUN_ov1_020cafa0
	arm_func_end FUN_ov1_020cb128

	arm_func_start FUN_ov1_020cb138
FUN_ov1_020cb138: ; 0x020CB138
	ldr r12, _020CB140 ; =FUN_ov1_020caf10
	bx r12
_020CB140: .word FUN_ov1_020caf10
	arm_func_end FUN_ov1_020cb138

	arm_func_start FUN_ov1_020cb144
FUN_ov1_020cb144: ; 0x020CB144
	ldr r12, _020CB14C ; =FUN_ov1_020caf20
	bx r12
_020CB14C: .word FUN_ov1_020caf20
	arm_func_end FUN_ov1_020cb144

	arm_func_start FUN_ov1_020cb150
FUN_ov1_020cb150: ; 0x020CB150
	add r0, r0, #4
	bx lr
	arm_func_end FUN_ov1_020cb150

	arm_func_start FUN_ov1_020cb158
FUN_ov1_020cb158: ; 0x020CB158
	ldr r12, _020CB164 ; =FUN_ov1_020cafc0
	add r0, r0, #4
	bx r12
_020CB164: .word FUN_ov1_020cafc0
	arm_func_end FUN_ov1_020cb158

	arm_func_start FUN_ov1_020cb168
FUN_ov1_020cb168: ; 0x020CB168
	ldr r12, _020CB174 ; =FUN_ov1_020cafd0
	add r0, r0, #4
	bx r12
_020CB174: .word FUN_ov1_020cafd0
	arm_func_end FUN_ov1_020cb168

	arm_func_start FUN_ov1_020cb178
FUN_ov1_020cb178: ; 0x020CB178
	ldr r12, _020CB184 ; =FUN_ov1_020cafe0
	add r0, r0, #4
	bx r12
_020CB184: .word FUN_ov1_020cafe0
	arm_func_end FUN_ov1_020cb178

	arm_func_start FUN_ov1_020cb188
FUN_ov1_020cb188: ; 0x020CB188
	ldrh r2, [r0, #0xac]
	and r1, r1, #0xf
	bic r2, r2, #0xf
	orr r1, r2, r1
	strh r1, [r0, #0xac]
	bx lr
	arm_func_end FUN_ov1_020cb188

	arm_func_start FUN_ov1_020cb1a0
FUN_ov1_020cb1a0: ; 0x020CB1A0
	ldrh r2, [r0, #0xac]
	mov r1, r1, lsl #0x1c
	bic r2, r2, #0xf0
	orr r1, r2, r1, lsr #24
	strh r1, [r0, #0xac]
	bx lr
	arm_func_end FUN_ov1_020cb1a0

	arm_func_start FUN_ov1_020cb1b8
FUN_ov1_020cb1b8: ; 0x020CB1B8
	ldrh r2, [r0, #0xac]
	mov r1, r1, lsl #0x1c
	bic r2, r2, #0xf00
	orr r1, r2, r1, lsr #20
	strh r1, [r0, #0xac]
	bx lr
	arm_func_end FUN_ov1_020cb1b8

	arm_func_start FUN_ov1_020cb1d0
FUN_ov1_020cb1d0: ; 0x020CB1D0
	ldrh r2, [r0, #0xac]
	mov r1, r1, lsl #0x1c
	bic r2, r2, #0xf000
	orr r1, r2, r1, lsr #16
	strh r1, [r0, #0xac]
	bx lr
	arm_func_end FUN_ov1_020cb1d0

	arm_func_start FUN_ov1_020cb1e8
FUN_ov1_020cb1e8: ; 0x020CB1E8
	ldrh r0, [r0, #0xac]
	mov r0, r0, lsl #0x1c
	mov r0, r0, lsr #0x1c
	bx lr
	arm_func_end FUN_ov1_020cb1e8

	arm_func_start FUN_ov1_020cb1f8
FUN_ov1_020cb1f8: ; 0x020CB1F8
	ldrh r0, [r0, #0xac]
	mov r0, r0, lsl #0x18
	mov r0, r0, lsr #0x1c
	bx lr
	arm_func_end FUN_ov1_020cb1f8

	arm_func_start FUN_ov1_020cb208
FUN_ov1_020cb208: ; 0x020CB208
	ldrh r0, [r0, #0xac]
	mov r0, r0, lsl #0x14
	mov r0, r0, lsr #0x1c
	bx lr
	arm_func_end FUN_ov1_020cb208

	arm_func_start FUN_ov1_020cb218
FUN_ov1_020cb218: ; 0x020CB218
	ldrh r0, [r0, #0xac]
	mov r0, r0, lsl #0x10
	mov r0, r0, lsr #0x1c
	bx lr
	arm_func_end FUN_ov1_020cb218

	arm_func_start FUN_ov1_020cb228
FUN_ov1_020cb228: ; 0x020CB228
	ldrh r2, [r0, #0xb0]
	and r1, r1, #0x1f
	bic r2, r2, #0x1f
	orr r1, r2, r1
	strh r1, [r0, #0xb0]
	bx lr
	arm_func_end FUN_ov1_020cb228

	arm_func_start FUN_ov1_020cb240
FUN_ov1_020cb240: ; 0x020CB240
	ldrh r2, [r0, #0xb0]
	mov r1, r1, lsl #0x1b
	bic r2, r2, #0x3e0
	orr r1, r2, r1, lsr #22
	strh r1, [r0, #0xb0]
	bx lr
	arm_func_end FUN_ov1_020cb240

	arm_func_start FUN_ov1_020cb258
FUN_ov1_020cb258: ; 0x020CB258
	ldrh r2, [r0, #0xb0]
	mov r1, r1, lsl #0x1b
	bic r2, r2, #0x7c00
	orr r1, r2, r1, lsr #17
	strh r1, [r0, #0xb0]
	bx lr
	arm_func_end FUN_ov1_020cb258

	arm_func_start FUN_ov1_020cb270
FUN_ov1_020cb270: ; 0x020CB270
	ldrh r0, [r0, #0xb0]
	mov r0, r0, lsl #0x1b
	mov r0, r0, lsr #0x1b
	bx lr
	arm_func_end FUN_ov1_020cb270

	arm_func_start FUN_ov1_020cb280
FUN_ov1_020cb280: ; 0x020CB280
	ldrh r0, [r0, #0xb0]
	mov r0, r0, lsl #0x16
	mov r0, r0, lsr #0x1b
	bx lr
	arm_func_end FUN_ov1_020cb280

	arm_func_start FUN_ov1_020cb290
FUN_ov1_020cb290: ; 0x020CB290
	ldrh r0, [r0, #0xb0]
	mov r0, r0, lsl #0x11
	mov r0, r0, lsr #0x1b
	bx lr
	arm_func_end FUN_ov1_020cb290

	arm_func_start FUN_ov1_020cb2a0
FUN_ov1_020cb2a0: ; 0x020CB2A0
	mov r2, #0x800
	rsb r2, r2, #0
	ldr r3, [r0]
	and r1, r1, r2, lsr #21
	and r2, r3, r2
	orr r1, r2, r1
	str r1, [r0]
	bx lr
	arm_func_end FUN_ov1_020cb2a0

	arm_func_start FUN_ov1_020cb2c0
FUN_ov1_020cb2c0: ; 0x020CB2C0
	ldr r3, [r0]
	ldr r2, _020CB2DC ; =0xFFC007FF
	mov r1, r1, lsl #0x15
	and r2, r3, r2
	orr r1, r2, r1, lsr #10
	str r1, [r0]
	bx lr
_020CB2DC: .word 0xFFC007FF
	arm_func_end FUN_ov1_020cb2c0

	arm_func_start FUN_ov1_020cb2e0
FUN_ov1_020cb2e0: ; 0x020CB2E0
	ldr r3, [r0]
	ldr r2, _020CB2F8 ; =0x003FFFFF
	and r2, r3, r2
	orr r1, r2, r1, lsl #22
	str r1, [r0]
	bx lr
_020CB2F8: .word 0x003FFFFF
	arm_func_end FUN_ov1_020cb2e0

	arm_func_start FUN_ov1_020cb2fc
FUN_ov1_020cb2fc: ; 0x020CB2FC
	mov r2, #0x800
	rsb r2, r2, #0
	ldr r3, [r0, #4]
	and r1, r1, r2, lsr #21
	and r2, r3, r2
	orr r1, r2, r1
	str r1, [r0, #4]
	bx lr
	arm_func_end FUN_ov1_020cb2fc

	arm_func_start FUN_ov1_020cb31c
FUN_ov1_020cb31c: ; 0x020CB31C
	ldr r3, [r0, #4]
	ldr r2, _020CB338 ; =0xFFC007FF
	mov r1, r1, lsl #0x15
	and r2, r3, r2
	orr r1, r2, r1, lsr #10
	str r1, [r0, #4]
	bx lr
_020CB338: .word 0xFFC007FF
	arm_func_end FUN_ov1_020cb31c

	arm_func_start FUN_ov1_020cb33c
FUN_ov1_020cb33c: ; 0x020CB33C
	ldr r2, [r0, #4]
	mov r1, r1, lsl #0x1b
	bic r2, r2, #0x7c00000
	orr r1, r2, r1, lsr #5
	str r1, [r0, #4]
	bx lr
	arm_func_end FUN_ov1_020cb33c

	arm_func_start FUN_ov1_020cb354
FUN_ov1_020cb354: ; 0x020CB354
	ldr r2, [r0, #4]
	bic r2, r2, #0xf8000000
	orr r1, r2, r1, lsl #27
	str r1, [r0, #4]
	bx lr
	arm_func_end FUN_ov1_020cb354

	arm_func_start FUN_ov1_020cb368
FUN_ov1_020cb368: ; 0x020CB368
	ldrsh r2, [r0, #0x16]
	mov r1, r1, lsl #0x10
	mov r1, r1, asr #0x10
	bic r2, r2, #0x3f
	and r1, r1, #0x3f
	orr r1, r2, r1
	strh r1, [r0, #0x16]
	bx lr
	arm_func_end FUN_ov1_020cb368

	arm_func_start FUN_ov1_020cb388
FUN_ov1_020cb388: ; 0x020CB388
	ldrsh r2, [r0, #0x16]
	mov r1, r1, lsl #0x10
	mov r1, r1, asr #0x10
	bic r2, r2, #0xfc0
	mov r1, r1, lsl #0x1a
	orr r1, r2, r1, lsr #20
	strh r1, [r0, #0x16]
	bx lr
	arm_func_end FUN_ov1_020cb388

	arm_func_start FUN_ov1_020cb3a8
FUN_ov1_020cb3a8: ; 0x020CB3A8
	ldrh r2, [r0, #0x16]
	mov r1, r1, lsl #0x10
	mov r1, r1, lsr #0x10
	bic r2, r2, #0x3000
	mov r1, r1, lsl #0x1e
	orr r1, r2, r1, lsr #18
	strh r1, [r0, #0x16]
	bx lr
	arm_func_end FUN_ov1_020cb3a8

	arm_func_start FUN_ov1_020cb3c8
FUN_ov1_020cb3c8: ; 0x020CB3C8
	ldrh r2, [r0, #0x16]
	mov r1, r1, lsl #0x10
	mov r1, r1, lsr #0x10
	bic r2, r2, #0xc000
	mov r1, r1, lsl #0x1e
	orr r1, r2, r1, lsr #16
	strh r1, [r0, #0x16]
	bx lr
	arm_func_end FUN_ov1_020cb3c8

	arm_func_start FUN_ov1_020cb3e8
FUN_ov1_020cb3e8: ; 0x020CB3E8
	ldr r0, [r0]
	mov r0, r0, lsl #0x15
	mov r0, r0, asr #0x15
	bx lr
	arm_func_end FUN_ov1_020cb3e8

	arm_func_start FUN_ov1_020cb3f8
FUN_ov1_020cb3f8: ; 0x020CB3F8
	ldr r0, [r0]
	mov r0, r0, lsl #0xa
	mov r0, r0, asr #0x15
	bx lr
	arm_func_end FUN_ov1_020cb3f8

	arm_func_start FUN_ov1_020cb408
FUN_ov1_020cb408: ; 0x020CB408
	ldr r0, [r0]
	mov r0, r0, asr #0x16
	bx lr
	arm_func_end FUN_ov1_020cb408

	arm_func_start FUN_ov1_020cb414
FUN_ov1_020cb414: ; 0x020CB414
	ldr r0, [r0, #4]
	mov r0, r0, lsl #0x15
	mov r0, r0, asr #0x15
	bx lr
	arm_func_end FUN_ov1_020cb414

	arm_func_start FUN_ov1_020cb424
FUN_ov1_020cb424: ; 0x020CB424
	ldr r0, [r0, #4]
	mov r0, r0, lsl #0xa
	mov r0, r0, asr #0x15
	bx lr
	arm_func_end FUN_ov1_020cb424

	arm_func_start FUN_ov1_020cb434
FUN_ov1_020cb434: ; 0x020CB434
	ldr r0, [r0, #4]
	mov r0, r0, lsl #5
	mov r0, r0, lsr #0x1b
	and r0, r0, #0xff
	bx lr
	arm_func_end FUN_ov1_020cb434

	arm_func_start FUN_ov1_020cb448
FUN_ov1_020cb448: ; 0x020CB448
	ldr r0, [r0, #4]
	mov r0, r0, lsr #0x1b
	and r0, r0, #0xff
	bx lr
	arm_func_end FUN_ov1_020cb448

	arm_func_start FUN_ov1_020cb458
FUN_ov1_020cb458: ; 0x020CB458
	ldrsh r0, [r0, #0x16]
	mov r0, r0, lsl #0x1a
	mov r0, r0, asr #0x1a
	bx lr
	arm_func_end FUN_ov1_020cb458

	arm_func_start FUN_ov1_020cb468
FUN_ov1_020cb468: ; 0x020CB468
	ldrsh r0, [r0, #0x16]
	mov r0, r0, lsl #0x14
	mov r0, r0, asr #0x1a
	bx lr
	arm_func_end FUN_ov1_020cb468

	arm_func_start FUN_ov1_020cb478
FUN_ov1_020cb478: ; 0x020CB478
	ldrh r0, [r0, #0x16]
	mov r0, r0, lsl #0x12
	mov r0, r0, lsr #0x1e
	and r0, r0, #0xff
	bx lr
	arm_func_end FUN_ov1_020cb478

	arm_func_start FUN_ov1_020cb48c
FUN_ov1_020cb48c: ; 0x020CB48C
	ldrh r0, [r0, #0x16]
	mov r0, r0, lsl #0x10
	mov r0, r0, lsr #0x1e
	and r0, r0, #0xff
	bx lr
	arm_func_end FUN_ov1_020cb48c

	arm_func_start FUN_ov1_020cb4a0
FUN_ov1_020cb4a0: ; 0x020CB4A0
	stmfd sp!, {r4, r5, r6, r7, r8, lr}
	sub sp, sp, #8
	ldr r2, _020CB5F0 ; =0x02099EF0
	mov r6, r0
	ldr r0, [r2]
	mov r5, r1
	mov r1, #0
	bl FUN_ov132_02143114
	mov r4, r0
	ldr r2, [r4]
	mov r0, r6
	mov r1, r2, asr #0xb
	add r1, r2, r1, lsr #20
	mov r1, r1, asr #0xc
	bl FUN_ov1_020cb2a0
	ldr r2, [r4, #4]
	mov r0, r6
	mov r1, r2, asr #0xb
	add r1, r2, r1, lsr #20
	mov r1, r1, asr #0xc
	bl FUN_ov1_020cb2c0
	ldr r2, [r4, #8]
	mov r0, r6
	mov r1, r2, asr #0xb
	add r1, r2, r1, lsr #20
	mov r1, r1, asr #0xc
	bl FUN_ov1_020cb2e0
	add r8, sp, #4
	add r7, sp, #0
	add r0, r5, #0x20
	mov r1, r8
	mov r2, r7
	bl FUN_ov16_020f02d0
	ldr r1, [sp, #4]
	mov r0, r6
	bl FUN_ov1_020cb2fc
	ldr r1, [sp]
	mov r0, r6
	bl FUN_ov1_020cb31c
	add r0, r5, #0x18
	mov r1, r8
	mov r2, r7
	bl FUN_ov16_020f02d0
	ldr r3, [sp, #4]
	mov r1, r8
	strh r3, [r6, #8]
	ldr r3, [sp]
	mov r2, r7
	add r0, r5, #0x28
	strh r3, [r6, #0xa]
	bl FUN_ov16_020f02d0
	ldr r1, [sp, #4]
	mov r0, r6
	strh r1, [r6, #0xc]
	ldr r1, [sp]
	strh r1, [r6, #0xe]
	ldrh r1, [r5, #0x50]
	strh r1, [r6, #0x10]
	ldrh r1, [r4, #0x20]
	mov r1, r1, asr #8
	strb r1, [r6, #0x12]
	ldrb r1, [r4, #0x27]
	strb r1, [r6, #0x13]
	ldrh r1, [r4, #0x22]
	strh r1, [r6, #0x14]
	ldrb r1, [r4, #0x25]
	bl FUN_ov1_020cb33c
	ldrb r1, [r4, #0x26]
	mov r0, r6
	bl FUN_ov1_020cb354
	ldrb r1, [r4, #0x28]
	mov r0, r6
	bl FUN_ov1_020cb3a8
	ldr r1, [r5, #0x48]
	mov r0, r6
	bl FUN_ov1_020cb368
	ldr r1, [r5, #0x4c]
	mov r0, r6
	bl FUN_ov1_020cb388
	ldrb r1, [r5, #0x5c]
	mov r0, r6
	bl FUN_ov1_020cb3c8
	add sp, sp, #8
	ldmfd sp!, {r4, r5, r6, r7, r8, pc}
_020CB5F0: .word 0x02099EF0
	arm_func_end FUN_ov1_020cb4a0

	arm_func_start FUN_ov1_020cb5f4
FUN_ov1_020cb5f4: ; 0x020CB5F4
	stmfd sp!, {r3, r4, r5, lr}
	mov r5, r0
	mov r4, r1
	bl FUN_ov1_020cb3e8
	cmp r0, #0
	mov r0, r5
	ble _020CB62C
	bl FUN_ov1_020cb3e8
	mov r0, r0, lsl #0xc
	bl FUN_0201f704
	mov r1, r0
	mov r0, #0x3f000000
	bl FUN_02020274
	b _020CB640
_020CB62C:
	bl FUN_ov1_020cb3e8
	mov r0, r0, lsl #0xc
	bl FUN_0201f704
	mov r1, #0x3f000000
	bl FUN_020204a4
_020CB640:
	bl FUN_0201fdac
	str r0, [r4]
	mov r0, r5
	bl FUN_ov1_020cb3f8
	cmp r0, #0
	mov r0, r5
	ble _020CB678
	bl FUN_ov1_020cb3f8
	mov r0, r0, lsl #0xc
	bl FUN_0201f704
	mov r1, r0
	mov r0, #0x3f000000
	bl FUN_02020274
	b _020CB68C
_020CB678:
	bl FUN_ov1_020cb3f8
	mov r0, r0, lsl #0xc
	bl FUN_0201f704
	mov r1, #0x3f000000
	bl FUN_020204a4
_020CB68C:
	bl FUN_0201fdac
	str r0, [r4, #4]
	mov r0, r5
	bl FUN_ov1_020cb408
	cmp r0, #0
	mov r0, r5
	ble _020CB6C4
	bl FUN_ov1_020cb408
	mov r0, r0, lsl #0xc
	bl FUN_0201f704
	mov r1, r0
	mov r0, #0x3f000000
	bl FUN_02020274
	b _020CB6D8
_020CB6C4:
	bl FUN_ov1_020cb408
	mov r0, r0, lsl #0xc
	bl FUN_0201f704
	mov r1, #0x3f000000
	bl FUN_020204a4
_020CB6D8:
	bl FUN_0201fdac
	str r0, [r4, #8]
	mov r0, r5
	bl FUN_ov1_020cb414
	cmp r0, #0
	mov r0, r5
	ble _020CB710
	bl FUN_ov1_020cb414
	mov r0, r0, lsl #0xc
	bl FUN_0201f704
	mov r1, r0
	mov r0, #0x3f000000
	bl FUN_02020274
	b _020CB724
_020CB710:
	bl FUN_ov1_020cb414
	mov r0, r0, lsl #0xc
	bl FUN_0201f704
	mov r1, #0x3f000000
	bl FUN_020204a4
_020CB724:
	bl FUN_0201fdac
	str r0, [r4, #0x20]
	mov r0, r5
	bl FUN_ov1_020cb424
	cmp r0, #0
	mov r0, r5
	ble _020CB75C
	bl FUN_ov1_020cb424
	mov r0, r0, lsl #0xc
	bl FUN_0201f704
	mov r1, r0
	mov r0, #0x3f000000
	bl FUN_02020274
	b _020CB770
_020CB75C:
	bl FUN_ov1_020cb424
	mov r0, r0, lsl #0xc
	bl FUN_0201f704
	mov r1, #0x3f000000
	bl FUN_020204a4
_020CB770:
	bl FUN_0201fdac
	str r0, [r4, #0x24]
	mov r0, #0x400
	ldrsh r2, [r5, #8]
	rsb r0, r0, #0
	cmp r2, r0
	ldrnesh r1, [r5, #0xa]
	cmpne r1, r0
	moveq r0, #0x80000000
	streq r0, [r4, #0x18]
	streq r0, [r4, #0x1c]
	beq _020CB80C
	cmp r2, #0
	mov r0, r2, lsl #0xc
	ble _020CB7C0
	bl FUN_0201f704
	mov r1, r0
	mov r0, #0x3f000000
	bl FUN_02020274
	b _020CB7CC
_020CB7C0:
	bl FUN_0201f704
	mov r1, #0x3f000000
	bl FUN_020204a4
_020CB7CC:
	bl FUN_0201fdac
	str r0, [r4, #0x18]
	ldrsh r0, [r5, #0xa]
	cmp r0, #0
	mov r0, r0, lsl #0xc
	ble _020CB7F8
	bl FUN_0201f704
	mov r1, r0
	mov r0, #0x3f000000
	bl FUN_02020274
	b _020CB804
_020CB7F8:
	bl FUN_0201f704
	mov r1, #0x3f000000
	bl FUN_020204a4
_020CB804:
	bl FUN_0201fdac
	str r0, [r4, #0x1c]
_020CB80C:
	ldrsh r0, [r5, #0xc]
	cmp r0, #0
	mov r0, r0, lsl #0xc
	ble _020CB830
	bl FUN_0201f704
	mov r1, r0
	mov r0, #0x3f000000
	bl FUN_02020274
	b _020CB83C
_020CB830:
	bl FUN_0201f704
	mov r1, #0x3f000000
	bl FUN_020204a4
_020CB83C:
	bl FUN_0201fdac
	str r0, [r4, #0x28]
	ldrsh r0, [r5, #0xe]
	cmp r0, #0
	mov r0, r0, lsl #0xc
	ble _020CB868
	bl FUN_0201f704
	mov r1, r0
	mov r0, #0x3f000000
	bl FUN_02020274
	b _020CB874
_020CB868:
	bl FUN_0201f704
	mov r1, #0x3f000000
	bl FUN_020204a4
_020CB874:
	bl FUN_0201fdac
	str r0, [r4, #0x2c]
	ldrh r1, [r5, #0x10]
	mov r0, r5
	strh r1, [r4, #0x50]
	ldrb r1, [r5, #0x12]
	mov r1, r1, lsl #8
	strh r1, [r4, #0x52]
	ldrb r1, [r5, #0x13]
	strb r1, [r4, #0x5d]
	ldrh r1, [r5, #0x14]
	strh r1, [r4, #0x56]
	bl FUN_ov1_020cb434
	strb r0, [r4, #0x58]
	mov r0, r5
	bl FUN_ov1_020cb448
	strb r0, [r4, #0x59]
	mov r0, r5
	bl FUN_ov1_020cb478
	strb r0, [r4, #0x5a]
	mov r0, r5
	bl FUN_ov1_020cb458
	str r0, [r4, #0x48]
	mov r0, r5
	bl FUN_ov1_020cb468
	str r0, [r4, #0x4c]
	mov r0, r5
	bl FUN_ov1_020cb48c
	strb r0, [r4, #0x5c]
	ldmfd sp!, {r3, r4, r5, pc}
	arm_func_end FUN_ov1_020cb5f4

	arm_func_start FUN_ov1_020cb8ec
FUN_ov1_020cb8ec: ; 0x020CB8EC
	stmfd sp!, {r3, r4, r5, lr}
	mov r5, r0
	mov r4, r1
	mov r0, r4
	mov r1, r5
	mov r2, #8
	bl MI_CpuCopy8
	ldrsh r0, [r4, #8]
	strh r0, [r5, #8]
	ldrsh r0, [r4, #0xa]
	strh r0, [r5, #0xa]
	ldrsb r0, [r4, #0xc]
	strb r0, [r5, #0xc]
	ldrsb r0, [r4, #0xd]
	strb r0, [r5, #0xd]
	ldrb r0, [r4, #0xe]
	strb r0, [r5, #0xe]
	ldrb r0, [r4, #0xf]
	strb r0, [r5, #0xf]
	ldrb r0, [r4, #0x10]
	strb r0, [r5, #0x10]
	ldrb r0, [r4, #0x11]
	strb r0, [r5, #0x11]
	ldrb r0, [r4, #0x12]
	strb r0, [r5, #0x12]
	ldrb r0, [r4, #0x13]
	strb r0, [r5, #0x13]
	ldrb r0, [r4, #0x14]
	strb r0, [r5, #0x14]
	ldrb r0, [r4, #0x15]
	strb r0, [r5, #0x15]
	ldrb r0, [r4, #0x16]
	strb r0, [r5, #0x16]
	ldrb r0, [r4, #0x17]
	strb r0, [r5, #0x17]
	ldmfd sp!, {r3, r4, r5, pc}
	arm_func_end FUN_ov1_020cb8ec

	arm_func_start FUN_ov1_020cb97c
FUN_ov1_020cb97c: ; 0x020CB97C
	stmfd sp!, {r3, r4, r5, lr}
	mov r5, r0
	mov r2, #8
	mov r4, r1
	bl MI_CpuCopy8
	ldrsh r0, [r5, #8]
	strh r0, [r4, #8]
	ldrsh r0, [r5, #0xa]
	strh r0, [r4, #0xa]
	ldrsb r0, [r5, #0xc]
	strb r0, [r4, #0xc]
	ldrsb r0, [r5, #0xd]
	strb r0, [r4, #0xd]
	ldrb r0, [r5, #0xe]
	strb r0, [r4, #0xe]
	ldrb r0, [r5, #0xf]
	strb r0, [r4, #0xf]
	ldrb r0, [r5, #0x10]
	strb r0, [r4, #0x10]
	ldrb r0, [r5, #0x11]
	strb r0, [r4, #0x11]
	ldrb r0, [r5, #0x12]
	strb r0, [r4, #0x12]
	ldrb r0, [r5, #0x13]
	strb r0, [r4, #0x13]
	ldrb r0, [r5, #0x14]
	strb r0, [r4, #0x14]
	ldrb r0, [r5, #0x15]
	strb r0, [r4, #0x15]
	ldrb r0, [r5, #0x16]
	strb r0, [r4, #0x16]
	ldrb r0, [r5, #0x17]
	strb r0, [r4, #0x17]
	ldmfd sp!, {r3, r4, r5, pc}
	arm_func_end FUN_ov1_020cb97c

	arm_func_start FUN_ov1_020cba04
FUN_ov1_020cba04: ; 0x020CBA04
	stmfd sp!, {r4, r5, r6, lr}
	mov r4, r1
	ldrsh r1, [r4]
	mov r5, r0
	mov r6, #3
	strh r1, [r5]
	ldrsh r3, [r4, #2]
	mov r2, r6
	add r0, r4, #4
	add r1, r5, #4
	strh r3, [r5, #2]
	bl MI_CpuCopy8
	mov r2, r6
	add r0, r4, #7
	add r1, r5, #7
	bl MI_CpuCopy8
	mov r2, r6
	add r0, r4, #0xa
	add r1, r5, #0xa
	bl MI_CpuCopy8
	mov r2, r6
	add r0, r4, #0xd
	add r1, r5, #0xd
	bl MI_CpuCopy8
	ldrb r0, [r4, #0x10]
	strb r0, [r5, #0x10]
	ldrb r0, [r4, #0x11]
	strb r0, [r5, #0x11]
	ldrb r0, [r4, #0x12]
	strb r0, [r5, #0x12]
	ldrb r0, [r4, #0x13]
	strb r0, [r5, #0x13]
	ldrb r0, [r4, #0x14]
	strb r0, [r5, #0x14]
	ldrb r0, [r4, #0x15]
	strb r0, [r5, #0x15]
	ldrb r0, [r4, #0x17]
	strb r0, [r5, #0x17]
	ldmfd sp!, {r4, r5, r6, pc}
	arm_func_end FUN_ov1_020cba04

	arm_func_start FUN_ov1_020cbaa0
FUN_ov1_020cbaa0: ; 0x020CBAA0
	stmfd sp!, {r4, r5, r6, lr}
	mov r5, r0
	ldrsh r0, [r5]
	mov r4, r1
	mov r6, #3
	strh r0, [r4]
	ldrsh r3, [r5, #2]
	mov r2, r6
	add r0, r5, #4
	add r1, r4, #4
	strh r3, [r4, #2]
	bl MI_CpuCopy8
	mov r2, r6
	add r0, r5, #7
	add r1, r4, #7
	bl MI_CpuCopy8
	mov r2, r6
	add r0, r5, #0xa
	add r1, r4, #0xa
	bl MI_CpuCopy8
	mov r2, r6
	add r0, r5, #0xd
	add r1, r4, #0xd
	bl MI_CpuCopy8
	ldrb r0, [r5, #0x10]
	strb r0, [r4, #0x10]
	ldrb r0, [r5, #0x11]
	strb r0, [r4, #0x11]
	ldrb r0, [r5, #0x12]
	strb r0, [r4, #0x12]
	ldrb r0, [r5, #0x13]
	strb r0, [r4, #0x13]
	ldrb r0, [r5, #0x14]
	strb r0, [r4, #0x14]
	ldrb r0, [r5, #0x15]
	strb r0, [r4, #0x15]
	ldrb r0, [r5, #0x17]
	strb r0, [r4, #0x17]
	ldmfd sp!, {r4, r5, r6, pc}
	arm_func_end FUN_ov1_020cbaa0

	arm_func_start FUN_ov1_020cbb3c
FUN_ov1_020cbb3c: ; 0x020CBB3C
	ldrh r3, [r0, #8]
	mov r2, #0x400
	rsb r2, r2, #0
	and r3, r3, r2
	and r1, r1, r2, lsr #22
	orr r1, r3, r1
	strh r1, [r0, #8]
	bx lr
	arm_func_end FUN_ov1_020cbb3c

	arm_func_start FUN_ov1_020cbb5c
FUN_ov1_020cbb5c: ; 0x020CBB5C
	ldrh r2, [r0, #8]
	mov r1, r1, lsl #0x1d
	bic r2, r2, #0x1c00
	orr r1, r2, r1, lsr #19
	strh r1, [r0, #8]
	bx lr
	arm_func_end FUN_ov1_020cbb5c

	arm_func_start FUN_ov1_020cbb74
FUN_ov1_020cbb74: ; 0x020CBB74
	ldrh r3, [r0, #0xa]
	mov r2, #0x400
	rsb r2, r2, #0
	and r3, r3, r2
	and r1, r1, r2, lsr #22
	orr r1, r3, r1
	strh r1, [r0, #0xa]
	bx lr
	arm_func_end FUN_ov1_020cbb74

	arm_func_start FUN_ov1_020cbb94
FUN_ov1_020cbb94: ; 0x020CBB94
	ldrsh r2, [r0, #0xa]
	mov r1, r1, lsl #0x1a
	bic r2, r2, #0xfc00
	orr r1, r2, r1, lsr #16
	strh r1, [r0, #0xa]
	bx lr
	arm_func_end FUN_ov1_020cbb94

	arm_func_start FUN_ov1_020cbbac
FUN_ov1_020cbbac: ; 0x020CBBAC
	ldrh r0, [r0, #8]
	mov r0, r0, lsl #0x16
	mov r0, r0, lsr #0x16
	bx lr
	arm_func_end FUN_ov1_020cbbac

	arm_func_start FUN_ov1_020cbbbc
FUN_ov1_020cbbbc: ; 0x020CBBBC
	ldrh r0, [r0, #8]
	mov r0, r0, lsl #0x13
	mov r0, r0, lsr #0x1d
	bx lr
	arm_func_end FUN_ov1_020cbbbc

	arm_func_start FUN_ov1_020cbbcc
FUN_ov1_020cbbcc: ; 0x020CBBCC
	ldrh r0, [r0, #0xa]
	mov r0, r0, lsl #0x16
	mov r0, r0, lsr #0x16
	bx lr
	arm_func_end FUN_ov1_020cbbcc

	arm_func_start FUN_ov1_020cbbdc
FUN_ov1_020cbbdc: ; 0x020CBBDC
	ldrsh r0, [r0, #0xa]
	mov r0, r0, lsl #0x10
	mov r0, r0, asr #0x1a
	bx lr
	arm_func_end FUN_ov1_020cbbdc

	arm_func_start FUN_ov1_020cbbec
FUN_ov1_020cbbec: ; 0x020CBBEC
	ldrb r3, [r1]
	ldrb r2, [r0, #4]
	strb r3, [r0]
	ldrsb r12, [r1, #0x20]
	bic r3, r2, #0xf
	strb r12, [r0, #1]
	ldrsh r2, [r1, #0x22]
	strh r2, [r0, #2]
	ldrb r2, [r1, #0x29]
	mov r2, r2, lsl #0x1c
	mov r2, r2, lsr #0x1c
	and r2, r2, #0xf
	orr r3, r3, r2
	strb r3, [r0, #4]
	ldrb r2, [r1, #0x29]
	and r3, r3, #0xff
	bic r3, r3, #0xf0
	mov r2, r2, lsl #0x18
	mov r2, r2, lsr #0x1c
	mov r2, r2, lsl #0x1c
	orr r2, r3, r2, lsr #24
	strb r2, [r0, #4]
	ldrsb r2, [r1, #0x24]
	strb r2, [r0, #5]
	ldrsh r2, [r1, #0x26]
	strh r2, [r0, #6]
	ldrsb r2, [r1, #0x28]
	strb r2, [r0, #8]
	ldrb r2, [r1, #0x2e]
	strb r2, [r0, #9]
	ldrb r1, [r1, #0x2f]
	strb r1, [r0, #0xa]
	bx lr
	arm_func_end FUN_ov1_020cbbec

	arm_func_start FUN_ov1_020cbc70
FUN_ov1_020cbc70: ; 0x020CBC70
	ldrb r3, [r0]
	ldrb r2, [r1, #0x29]
	strb r3, [r1]
	ldrsb r12, [r0, #1]
	bic r3, r2, #0xf
	strb r12, [r1, #0x20]
	ldrsh r2, [r0, #2]
	strh r2, [r1, #0x22]
	ldrb r2, [r0, #4]
	mov r2, r2, lsl #0x1c
	mov r2, r2, lsr #0x1c
	and r2, r2, #0xf
	orr r3, r3, r2
	strb r3, [r1, #0x29]
	ldrb r2, [r0, #4]
	and r3, r3, #0xff
	bic r3, r3, #0xf0
	mov r2, r2, lsl #0x18
	mov r2, r2, lsr #0x1c
	mov r2, r2, lsl #0x1c
	orr r2, r3, r2, lsr #24
	strb r2, [r1, #0x29]
	ldrsb r2, [r0, #5]
	strb r2, [r1, #0x24]
	ldrsh r2, [r0, #6]
	strh r2, [r1, #0x26]
	ldrsb r2, [r0, #8]
	strb r2, [r1, #0x28]
	ldrb r2, [r0, #9]
	strb r2, [r1, #0x2e]
	ldrb r0, [r0, #0xa]
	strb r0, [r1, #0x2f]
	bx lr
	arm_func_end FUN_ov1_020cbc70

	arm_func_start FUN_ov1_020cbcf4
FUN_ov1_020cbcf4: ; 0x020CBCF4
	strh r1, [r0, #0x16]
	bx lr
	arm_func_end FUN_ov1_020cbcf4

	arm_func_start FUN_ov1_020cbcfc
FUN_ov1_020cbcfc: ; 0x020CBCFC
	ldrh r3, [r0, #0x14]
	mov r2, #0x400
	rsb r2, r2, #0
	and r3, r3, r2
	and r1, r1, r2, lsr #22
	orr r1, r3, r1
	strh r1, [r0, #0x14]
	bx lr
	arm_func_end FUN_ov1_020cbcfc

	arm_func_start FUN_ov1_020cbd1c
FUN_ov1_020cbd1c: ; 0x020CBD1C
	ldrh r2, [r0, #0x14]
	mov r1, r1, lsl #0x1d
	bic r2, r2, #0x1c00
	orr r1, r2, r1, lsr #19
	strh r1, [r0, #0x14]
	bx lr
	arm_func_end FUN_ov1_020cbd1c

	arm_func_start FUN_ov1_020cbd34
FUN_ov1_020cbd34: ; 0x020CBD34
	ldrh r0, [r0, #0x16]
	bx lr
	arm_func_end FUN_ov1_020cbd34

	arm_func_start FUN_ov1_020cbd3c
FUN_ov1_020cbd3c: ; 0x020CBD3C
	ldrh r0, [r0, #0x14]
	mov r0, r0, lsl #0x16
	mov r0, r0, lsr #0x16
	bx lr
	arm_func_end FUN_ov1_020cbd3c

	arm_func_start FUN_ov1_020cbd4c
FUN_ov1_020cbd4c: ; 0x020CBD4C
	ldrh r0, [r0, #0x14]
	mov r0, r0, lsl #0x13
	mov r0, r0, lsr #0x1d
	bx lr
	arm_func_end FUN_ov1_020cbd4c

	arm_func_start FUN_ov1_020cbd5c
FUN_ov1_020cbd5c: ; 0x020CBD5C
	mov r1, #0x800
	ldr r12, [r0]
	rsb r1, r1, #0
	ldr r2, _020CBD90 ; =0xFFC007FF
	mov r3, #0
	and r1, r12, r1
	and r1, r1, r2
	bic r1, r1, #0x3fc00000
	str r1, [r0]
	strb r3, [r0, #4]
	strb r3, [r0, #5]
	strb r3, [r0, #6]
	bx lr
_020CBD90: .word 0xFFC007FF
	arm_func_end FUN_ov1_020cbd5c

	arm_func_start FUN_ov1_020cbd94
FUN_ov1_020cbd94: ; 0x020CBD94
	strb r1, [r0, #5]
	strb r2, [r0, #6]
	bx lr
	arm_func_end FUN_ov1_020cbd94

	arm_func_start FUN_ov1_020cbda0
FUN_ov1_020cbda0: ; 0x020CBDA0
	ldrb r0, [r0, #5]
	bx lr
	arm_func_end FUN_ov1_020cbda0

	arm_func_start FUN_ov1_020cbda8
FUN_ov1_020cbda8: ; 0x020CBDA8
	ldrb r0, [r0, #6]
	bx lr
	arm_func_end FUN_ov1_020cbda8

	arm_func_start FUN_ov1_020cbdb0
FUN_ov1_020cbdb0: ; 0x020CBDB0
	mov r2, #0x800
	rsb r2, r2, #0
	ldr r3, [r0]
	and r1, r1, r2, lsr #21
	and r2, r3, r2
	orr r1, r2, r1
	str r1, [r0]
	bx lr
	arm_func_end FUN_ov1_020cbdb0

	arm_func_start FUN_ov1_020cbdd0
FUN_ov1_020cbdd0: ; 0x020CBDD0
	ldr r3, [r0]
	ldr r2, _020CBDEC ; =0xFFC007FF
	mov r1, r1, lsl #0x15
	and r2, r3, r2
	orr r1, r2, r1, lsr #10
	str r1, [r0]
	bx lr
_020CBDEC: .word 0xFFC007FF
	arm_func_end FUN_ov1_020cbdd0

	arm_func_start FUN_ov1_020cbdf0
FUN_ov1_020cbdf0: ; 0x020CBDF0
	ldr r2, [r0]
	mov r1, r1, lsl #0x18
	bic r2, r2, #0x3fc00000
	orr r1, r2, r1, lsr #2
	str r1, [r0]
	bx lr
	arm_func_end FUN_ov1_020cbdf0

	arm_func_start FUN_ov1_020cbe08
FUN_ov1_020cbe08: ; 0x020CBE08
	ldr r0, [r0]
	mov r0, r0, lsl #0x15
	mov r0, r0, asr #0x15
	bx lr
	arm_func_end FUN_ov1_020cbe08

	arm_func_start FUN_ov1_020cbe18
FUN_ov1_020cbe18: ; 0x020CBE18
	ldr r0, [r0]
	mov r0, r0, lsl #0xa
	mov r0, r0, asr #0x15
	bx lr
	arm_func_end FUN_ov1_020cbe18

	arm_func_start FUN_ov1_020cbe28
FUN_ov1_020cbe28: ; 0x020CBE28
	ldr r0, [r0]
	mov r0, r0, lsl #2
	mov r0, r0, asr #0x18
	bx lr
	arm_func_end FUN_ov1_020cbe28

	arm_func_start FUN_ov1_020cbe38
FUN_ov1_020cbe38: ; 0x020CBE38
	ldrb r2, [r0, #0x1b]
	and r1, r1, #0xff
	and r1, r1, #0xf
	bic r2, r2, #0xf
	orr r1, r2, r1
	strb r1, [r0, #0x1b]
	bx lr
	arm_func_end FUN_ov1_020cbe38

	arm_func_start FUN_ov1_020cbe54
FUN_ov1_020cbe54: ; 0x020CBE54
	ldrb r2, [r0, #0x1b]
	and r1, r1, #0xff
	mov r1, r1, lsl #0x1d
	bic r2, r2, #0x70
	orr r1, r2, r1, lsr #25
	strb r1, [r0, #0x1b]
	bx lr
	arm_func_end FUN_ov1_020cbe54

	arm_func_start FUN_ov1_020cbe70
FUN_ov1_020cbe70: ; 0x020CBE70
	ldrh r2, [r0, #0x1e]
	mov r1, r1, lsl #0x10
	mov r1, r1, lsr #0x10
	bic r2, r2, #1
	and r1, r1, #1
	orr r1, r2, r1
	strh r1, [r0, #0x1e]
	bx lr
	arm_func_end FUN_ov1_020cbe70

	arm_func_start FUN_ov1_020cbe90
FUN_ov1_020cbe90: ; 0x020CBE90
	ldrh r2, [r0, #0x1e]
	mov r1, r1, lsl #0x10
	mov r1, r1, lsr #0x10
	bic r2, r2, #0x1e
	mov r1, r1, lsl #0x1c
	orr r1, r2, r1, lsr #27
	strh r1, [r0, #0x1e]
	bx lr
	arm_func_end FUN_ov1_020cbe90

	arm_func_start FUN_ov1_020cbeb0
FUN_ov1_020cbeb0: ; 0x020CBEB0
	ldrh r2, [r0, #0x1e]
	mov r1, r1, lsl #0x10
	mov r1, r1, lsr #0x10
	bic r2, r2, #0x1e0
	mov r1, r1, lsl #0x1c
	orr r1, r2, r1, lsr #23
	strh r1, [r0, #0x1e]
	bx lr
	arm_func_end FUN_ov1_020cbeb0

	arm_func_start FUN_ov1_020cbed0
FUN_ov1_020cbed0: ; 0x020CBED0
	ldrh r2, [r0, #0x1e]
	mov r1, r1, lsl #0x10
	mov r1, r1, lsr #0x10
	bic r2, r2, #0x200
	mov r1, r1, lsl #0x1f
	orr r1, r2, r1, lsr #22
	strh r1, [r0, #0x1e]
	bx lr
	arm_func_end FUN_ov1_020cbed0

	arm_func_start FUN_ov1_020cbef0
FUN_ov1_020cbef0: ; 0x020CBEF0
	ldrh r2, [r0, #0x1e]
	mov r1, r1, lsl #0x10
	mov r1, r1, lsr #0x10
	bic r2, r2, #0x400
	mov r1, r1, lsl #0x1f
	orr r1, r2, r1, lsr #21
	strh r1, [r0, #0x1e]
	bx lr
	arm_func_end FUN_ov1_020cbef0

	arm_func_start FUN_ov1_020cbf10
FUN_ov1_020cbf10: ; 0x020CBF10
	ldrh r2, [r0, #0x1e]
	mov r1, r1, lsl #0x10
	mov r1, r1, lsr #0x10
	bic r2, r2, #0x7800
	mov r1, r1, lsl #0x1c
	orr r1, r2, r1, lsr #17
	strh r1, [r0, #0x1e]
	bx lr
	arm_func_end FUN_ov1_020cbf10

	arm_func_start FUN_ov1_020cbf30
FUN_ov1_020cbf30: ; 0x020CBF30
	ldrb r0, [r0, #0x1b]
	mov r0, r0, lsl #0x1c
	mov r0, r0, lsr #0x1c
	bx lr
	arm_func_end FUN_ov1_020cbf30

	arm_func_start FUN_ov1_020cbf40
FUN_ov1_020cbf40: ; 0x020CBF40
	ldrb r0, [r0, #0x1b]
	mov r0, r0, lsl #0x19
	mov r0, r0, lsr #0x1d
	bx lr
	arm_func_end FUN_ov1_020cbf40

	arm_func_start FUN_ov1_020cbf50
FUN_ov1_020cbf50: ; 0x020CBF50
	ldrh r0, [r0, #0x1e]
	mov r0, r0, lsl #0x1f
	mov r0, r0, lsr #0x1f
	bx lr
	arm_func_end FUN_ov1_020cbf50

	arm_func_start FUN_ov1_020cbf60
FUN_ov1_020cbf60: ; 0x020CBF60
	ldrh r0, [r0, #0x1e]
	mov r0, r0, lsl #0x1b
	mov r0, r0, lsr #0x1c
	bx lr
	arm_func_end FUN_ov1_020cbf60

	arm_func_start FUN_ov1_020cbf70
FUN_ov1_020cbf70: ; 0x020CBF70
	ldrh r0, [r0, #0x1e]
	mov r0, r0, lsl #0x17
	mov r0, r0, lsr #0x1c
	bx lr
	arm_func_end FUN_ov1_020cbf70

	arm_func_start FUN_ov1_020cbf80
FUN_ov1_020cbf80: ; 0x020CBF80
	ldrh r0, [r0, #0x1e]
	mov r0, r0, lsl #0x16
	mov r0, r0, lsr #0x1f
	bx lr
	arm_func_end FUN_ov1_020cbf80

	arm_func_start FUN_ov1_020cbf90
FUN_ov1_020cbf90: ; 0x020CBF90
	ldrh r0, [r0, #0x1e]
	mov r0, r0, lsl #0x15
	mov r0, r0, lsr #0x1f
	bx lr
	arm_func_end FUN_ov1_020cbf90

	arm_func_start FUN_ov1_020cbfa0
FUN_ov1_020cbfa0: ; 0x020CBFA0
	ldrh r0, [r0, #0x1e]
	mov r0, r0, lsl #0x11
	mov r0, r0, lsr #0x1c
	bx lr
	arm_func_end FUN_ov1_020cbfa0

	arm_func_start FUN_ov1_020cbfb0
FUN_ov1_020cbfb0: ; 0x020CBFB0
	ldrb r2, [r0, #0x20]
	and r1, r1, #3
	bic r2, r2, #3
	orr r1, r2, r1
	strb r1, [r0, #0x20]
	bx lr
	arm_func_end FUN_ov1_020cbfb0

	arm_func_start FUN_ov1_020cbfc8
FUN_ov1_020cbfc8: ; 0x020CBFC8
	strb r1, [r0, #0x1c]
	bx lr
	arm_func_end FUN_ov1_020cbfc8

	arm_func_start FUN_ov1_020cbfd0
FUN_ov1_020cbfd0: ; 0x020CBFD0
	ldrb r2, [r0, #0x20]
	mov r1, r1, lsl #0x1f
	bic r2, r2, #4
	orr r1, r2, r1, lsr #29
	strb r1, [r0, #0x20]
	bx lr
	arm_func_end FUN_ov1_020cbfd0

	arm_func_start FUN_ov1_020cbfe8
FUN_ov1_020cbfe8: ; 0x020CBFE8
	ldrb r0, [r0, #0x20]
	mov r0, r0, lsl #0x1e
	mov r0, r0, lsr #0x1e
	bx lr
	arm_func_end FUN_ov1_020cbfe8

	arm_func_start FUN_ov1_020cbff8
FUN_ov1_020cbff8: ; 0x020CBFF8
	ldrb r0, [r0, #0x1c]
	bx lr
	arm_func_end FUN_ov1_020cbff8

	arm_func_start FUN_ov1_020cc000
FUN_ov1_020cc000: ; 0x020CC000
	ldrb r0, [r0, #0x20]
	mov r0, r0, lsl #0x1d
	mov r0, r0, lsr #0x1f
	bx lr
	arm_func_end FUN_ov1_020cc000

	arm_func_start FUN_ov1_020cc010
FUN_ov1_020cc010: ; 0x020CC010
	stmfd sp!, {r3, lr}
	ldr r0, _020CC030 ; =0x02099EF0
	ldr r0, [r0]
	bl FUN_ov132_02144780
	cmp r0, #0
	moveq r0, #1
	movne r0, #0
	ldmfd sp!, {r3, pc}
_020CC030: .word 0x02099EF0
	arm_func_end FUN_ov1_020cc010

	arm_func_start FUN_ov1_020cc034
FUN_ov1_020cc034: ; 0x020CC034
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, lr}
	ldr r4, [r0, #8]
	mov r1, #1
	mov r2, r1
	mov r3, r1
	mov r12, r1
	mov lr, r1
	mov r7, r1
	mov r6, r1
	cmp r4, #4
	beq _020CC07C
	cmp r4, #0xb
	bne _020CC078
	ldr r5, [r0, #0xc]
	sub r5, r5, #0xc
	cmp r5, #2
	bls _020CC07C
_020CC078:
	mov r6, #0
_020CC07C:
	cmp r6, #0
	bne _020CC0C4
	cmp r4, #0xd
	mov r8, #0
	bne _020CC0BC
	ldr r5, [r0, #0xc]
	mov r9, r8
	sub r6, r5, #0x21
	cmp r6, #5
	bhi _020CC0B4
	mov r5, #1
	mov r6, r5, lsl r6
	tst r6, #0x39
	movne r9, r5
_020CC0B4:
	cmp r9, #0
	movne r8, #1
_020CC0BC:
	cmp r8, #0
	moveq r7, #0
_020CC0C4:
	cmp r7, #0
	bne _020CC0E8
	cmp r4, #0xf
	bne _020CC0E4
	ldr r5, [r0, #0xc]
	sub r5, r5, #0x34
	cmp r5, #2
	bls _020CC0E8
_020CC0E4:
	mov lr, #0
_020CC0E8:
	cmp lr, #0
	bne _020CC0F8
	cmp r4, #0x3d
	movne r12, #0
_020CC0F8:
	cmp r12, #0
	bne _020CC11C
	cmp r4, #0x13
	bne _020CC118
	ldr r12, [r0, #0xc]
	sub r12, r12, #0x3b
	cmp r12, #2
	bls _020CC11C
_020CC118:
	mov r3, #0
_020CC11C:
	cmp r3, #0
	bne _020CC140
	cmp r4, #0x17
	bne _020CC13C
	ldr r3, [r0, #0xc]
	sub r3, r3, #0x49
	cmp r3, #2
	bls _020CC140
_020CC13C:
	mov r2, #0
_020CC140:
	cmp r2, #0
	bne _020CC164
	cmp r4, #0x1a
	bne _020CC160
	ldr r0, [r0, #0xc]
	sub r0, r0, #0x4f
	cmp r0, #3
	bls _020CC164
_020CC160:
	mov r1, #0
_020CC164:
	mov r0, r1
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
	arm_func_end FUN_ov1_020cc034

	arm_func_start FUN_ov1_020cc16c
FUN_ov1_020cc16c: ; 0x020CC16C
	stmfd sp!, {r4, r5, r6, lr}
	ldr r1, _020CC2BC ; =0x020A0640
	ldrb r1, [r1, #0x1a]
	cmp r1, #0
	movne r0, #0
	ldmnefd sp!, {r4, r5, r6, pc}
	ldr r1, _020CC2C0 ; =0x0209A160
	ldrsh r1, [r1, #4]
	cmp r1, #0
	movne r0, #0
	ldmnefd sp!, {r4, r5, r6, pc}
	ldr r1, [r0, #8]
	mov r2, #1
	mov r3, r2
	mov r12, r2
	mov lr, r2
	mov r4, r2
	mov r5, r2
	cmp r1, #4
	beq _020CC1D8
	cmp r1, #0xb
	ldreq r1, [r0, #0xc]
	mov r6, #0
	cmpeq r1, #0xc
	moveq r6, r2
	cmp r6, #0
	moveq r5, #0
_020CC1D8:
	cmp r5, #0
	bne _020CC214
	ldr r1, [r0, #8]
	mov r5, #0
	cmp r1, #0xd
	bne _020CC20C
	ldr r1, [r0, #0xc]
	mov r6, #1
	cmp r1, #0x21
	cmpne r1, #0x24
	movne r6, r5
	cmp r6, #0
	movne r5, #1
_020CC20C:
	cmp r5, #0
	moveq r4, #0
_020CC214:
	cmp r4, #0
	bne _020CC23C
	ldr r1, [r0, #8]
	mov r4, #0
	cmp r1, #0xf
	ldreq r1, [r0, #0xc]
	cmpeq r1, #0x34
	moveq r4, #1
	cmp r4, #0
	moveq lr, #0
_020CC23C:
	cmp lr, #0
	bne _020CC264
	ldr r1, [r0, #8]
	mov r4, #0
	cmp r1, #0x13
	ldreq r1, [r0, #0xc]
	cmpeq r1, #0x3b
	moveq r4, #1
	cmp r4, #0
	moveq r12, #0
_020CC264:
	cmp r12, #0
	bne _020CC28C
	ldr r1, [r0, #8]
	mov r4, #0
	cmp r1, #0x17
	ldreq r1, [r0, #0xc]
	cmpeq r1, #0x49
	moveq r4, #1
	cmp r4, #0
	moveq r3, #0
_020CC28C:
	cmp r3, #0
	bne _020CC2B4
	ldr r1, [r0, #8]
	mov r3, #0
	cmp r1, #0x1a
	ldreq r0, [r0, #0xc]
	cmpeq r0, #0x4f
	moveq r3, #1
	cmp r3, #0
	moveq r2, #0
_020CC2B4:
	mov r0, r2
	ldmfd sp!, {r4, r5, r6, pc}
_020CC2BC: .word 0x020A0640
_020CC2C0: .word 0x0209A160
	arm_func_end FUN_ov1_020cc16c

	arm_func_start FUN_ov1_020cc2c4
FUN_ov1_020cc2c4: ; 0x020CC2C4
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	ldr r1, [r0, #8]
	mov r3, #1
	mov r12, r3
	mov lr, r3
	mov r4, r3
	mov r5, r3
	cmp r1, #4
	beq _020CC318
	cmp r1, #0xb
	mov r6, #0
	bne _020CC310
	ldr r2, [r0, #0xc]
	mov r7, r3
	cmp r2, #0xc
	cmpne r2, #0xe
	movne r7, r6
	cmp r7, #0
	movne r6, #1
_020CC310:
	cmp r6, #0
	moveq r5, #0
_020CC318:
	cmp r5, #0
	bne _020CC350
	cmp r1, #0xd
	mov r5, #0
	bne _020CC348
	ldr r2, [r0, #0xc]
	mov r6, #1
	cmp r2, #0x21
	cmpne r2, #0x26
	movne r6, r5
	cmp r6, #0
	movne r5, #1
_020CC348:
	cmp r5, #0
	moveq r4, #0
_020CC350:
	cmp r4, #0
	bne _020CC3B0
	mov r4, #0
	mov r5, r4
	cmp r1, #0xf
	bne _020CC384
	ldr r2, [r0, #0xc]
	mov r6, #1
	cmp r2, #0x34
	cmpne r2, #0x36
	movne r6, r4
	cmp r6, #0
	movne r5, #1
_020CC384:
	cmp r5, #0
	beq _020CC3A8
	ldr r2, [r0, #0x30]
	mov r5, #1
	cmp r2, #0
	cmpne r2, #1
	movne r5, #0
	cmp r5, #0
	movne r4, #1
_020CC3A8:
	cmp r4, #0
	moveq lr, #0
_020CC3B0:
	cmp lr, #0
	bne _020CC3E8
	cmp r1, #0x13
	mov r4, #0
	bne _020CC3E0
	ldr r2, [r0, #0xc]
	mov r5, #1
	cmp r2, #0x3b
	cmpne r2, #0x3d
	movne r5, r4
	cmp r5, #0
	movne r4, #1
_020CC3E0:
	cmp r4, #0
	moveq r12, #0
_020CC3E8:
	cmp r12, #0
	bne _020CC420
	cmp r1, #0x17
	mov r1, #0
	bne _020CC418
	ldr r0, [r0, #0xc]
	mov r2, #1
	cmp r0, #0x49
	cmpne r0, #0x4b
	movne r2, r1
	cmp r2, #0
	movne r1, #1
_020CC418:
	cmp r1, #0
	moveq r3, #0
_020CC420:
	mov r0, r3
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
	arm_func_end FUN_ov1_020cc2c4

	arm_func_start FUN_ov1_020cc428
FUN_ov1_020cc428: ; 0x020CC428
	stmfd sp!, {r3, r4, r5, lr}
	mov r5, r0
	mov r4, #0
	mov r1, r4
	add r0, r5, #0x2f4
	mov r2, #0x40
	bl MI_CpuFill8
	strb r4, [r5, #0x334]
	ldmfd sp!, {r3, r4, r5, pc}
	arm_func_end FUN_ov1_020cc428

	arm_func_start FUN_ov1_020cc44c
FUN_ov1_020cc44c: ; 0x020CC44C
	stmfd sp!, {r4, r5, r6, lr}
	ldrb r4, [r0, #0x334]
	add r3, r0, #0x2f4
	mov r6, #1
	strb r6, [r3, r4, lsl #4]
	add r4, r3, r4, lsl #4
	stmib r4, {r1, r2}
	mov r5, #0
	strh r5, [r4, #0xc]
	strh r5, [r4, #0xe]
	ldrb r12, [r0, #0x334]
	mov r4, #4
	add r12, r12, #1
	and r12, r12, #0xff
	mov lr, r12, lsr #0x1f
	rsb r12, lr, r12, lsl #30
	add lr, lr, r12, ror #30
	and r12, lr, #0xff
	strb lr, [r0, #0x334]
	strb r6, [r3, r12, lsl #4]
	add r0, r3, r12, lsl #4
	stmib r0, {r1, r2}
	strh r4, [r0, #0xc]
	strh r5, [r0, #0xe]
	ldmfd sp!, {r4, r5, r6, pc}
	arm_func_end FUN_ov1_020cc44c

	arm_func_start FUN_ov1_020cc4b0
FUN_ov1_020cc4b0: ; 0x020CC4B0
	stmfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, lr}
	sub sp, sp, #0x14
	mov r9, #0
	mov r10, r1
	add r8, r0, #0x2f4
	mov r5, r9
	mov r7, #0x1f
	ldr r6, _020CC564 ; =0x0000201F
	mov r11, #6
	ldr r4, _020CC568 ; =0x0209A128
	b _020CC554
_020CC4DC:
	ldrb r0, [r8]
	cmp r0, #0
	beq _020CC54C
	ldrh r0, [r8, #0xc]
	cmp r0, #0
	subne r0, r0, #1
	strneh r0, [r8, #0xc]
	bne _020CC54C
	ldrh r3, [r8, #0xe]
	mov r1, r10
	mov r2, r6
	add r0, r3, #1
	strh r0, [r8, #0xe]
	ldr r0, [r8, #4]
	mov r3, r3, lsl #4
	str r0, [sp]
	ldr r0, [r8, #8]
	add r3, r3, #1
	stmib sp, {r0, r3}
	str r3, [sp, #0xc]
	str r7, [sp, #0x10]
	ldr r0, [r4]
	mov r3, r11
	bl FUN_ov1_020dc5dc
	ldrh r0, [r8, #0xe]
	add r10, r10, #1
	cmp r0, #0x10
	strhib r5, [r8]
_020CC54C:
	add r9, r9, #1
	add r8, r8, #0x10
_020CC554:
	cmp r9, #4
	blt _020CC4DC
	add sp, sp, #0x14
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
_020CC564: .word 0x0000201F
_020CC568: .word 0x0209A128
	arm_func_end FUN_ov1_020cc4b0

	arm_func_start FUN_ov1_020cc56c
FUN_ov1_020cc56c: ; 0x020CC56C
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, lr}
	sub sp, sp, #0xb0
	ldr r4, _020CC744 ; =0x020EAAC8
	mov r7, r1
	ldr r0, [r4]
	cmp r0, #0
	blt _020CC5A8
	bl FUN_ov16_020f07f4
	bl FUN_ov16_020f0a14
	cmp r0, #0
	beq _020CC5A8
_020CC598:
	ldr r0, [r4]
_020CC59C:
	bl FUN_ov16_020efa80
	mov r4, r0
	b _020CC600
_020CC5A8:
	ldr r4, _020CC748 ; =0x020EAAE4
	ldr r0, [r4]
	cmp r0, #0
	blt _020CC5CC
	bl FUN_ov16_020f07f4
	bl FUN_ov16_020f0a14
	cmp r0, #0
	beq _020CC5CC
	b _020CC598
_020CC5CC:
	ldr r4, _020CC74C ; =0x0209A2C0
	ldr r0, [r4, #0x48]
	cmp r0, #0
	blt _020CC5F4
	bl FUN_ov16_020f07f4
	bl FUN_ov16_020f0a14
	cmp r0, #0
	beq _020CC5F4
	ldr r0, [r4, #0x48]
	b _020CC59C
_020CC5F4:
	add sp, sp, #0xb0
	mov r0, r7
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
_020CC600:
	bl FUN_ov16_020f081c
	ldr r1, _020CC750 ; =0x020EAB04
	mov r12, r0
	ldr r0, [r1, r12, lsl #3]
	cmp r0, #0x80000000
	ble _020CC738
	ldr r8, _020CC74C ; =0x0209A2C0
	add r6, sp, #0x50
	mov r5, #6
_020CC624:
	ldmia r8!, {r0, r1, r2, r3}
	stmia r6!, {r0, r1, r2, r3}
	subs r5, r5, #1
	bne _020CC624
	mov r6, #0
	ldr r1, _020CC750 ; =0x020EAB04
	add r5, sp, #0x50
	str r6, [sp]
	str r5, [sp, #4]
	str r4, [sp, #8]
	add r2, r1, r12, lsl #3
	ldr r8, _020CC754 ; =0x02099EF0
	mov r4, #2
	ldr r0, [r8]
	ldr r1, [r1, r12, lsl #3]
	ldr r2, [r2, #4]
	mov r3, r4
	bl FUN_ov126_0212cbdc
	str r6, [sp]
	add r9, sp, #0x18
	ldr r0, [r8]
	mov r1, r9
	mov r3, r5
	mov r2, #6
	bl FUN_ov126_0212aff8
	cmp r0, #0
	beq _020CC6CC
	stmia sp, {r6, r9}
	add r1, sp, #0x20
	str r1, [sp, #8]
	add r0, sp, #0x50
	str r0, [sp, #0xc]
	mov r0, #0xf
	str r0, [sp, #0x10]
	ldr r0, _020CC758 ; =0x0209A128
	str r6, [sp, #0x14]
	ldr r0, [r0]
	mov r1, r7
	mov r2, r6
	mov r3, r4
	bl FUN_ov1_020dc44c
	add r7, r7, #1
_020CC6CC:
	mov r1, #1
	ldr r0, _020CC754 ; =0x02099EF0
	str r1, [sp]
	add r4, sp, #0x18
	ldr r0, [r0]
	add r3, sp, #0x50
	mov r1, r4
	mov r2, #6
	bl FUN_ov126_0212aff8
	cmp r0, #0
	beq _020CC738
	mov r2, #0
	stmia sp, {r2, r4}
	add r1, sp, #0x20
	str r1, [sp, #8]
	add r0, sp, #0x50
	str r0, [sp, #0xc]
	mov r0, #0x1f
	str r0, [sp, #0x10]
	str r2, [sp, #0x14]
	ldr r0, _020CC758 ; =0x0209A128
	ldr r2, _020CC75C ; =0x00007FE0
	ldr r0, [r0]
	mov r1, r7
	mov r3, #3
	bl FUN_ov1_020dc44c
	add r7, r7, #1
_020CC738:
	mov r0, r7
	add sp, sp, #0xb0
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
_020CC744: .word 0x020EAAC8
_020CC748: .word 0x020EAAE4
_020CC74C: .word 0x0209A2C0
_020CC750: .word 0x020EAB04
_020CC754: .word 0x02099EF0
_020CC758: .word 0x0209A128
_020CC75C: .word 0x00007FE0
	arm_func_end FUN_ov1_020cc56c

	arm_func_start FUN_ov1_020cc760
FUN_ov1_020cc760: ; 0x020CC760
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, lr}
	sub sp, sp, #0x18
	ldr r4, _020CC8D8 ; =0x0209A128
	mov r10, r0
	ldr r0, [r4]
	bl FUN_ov1_020dc708
	ldr r0, _020CC8DC ; =0x020AF81C
	bl FUN_02044600
	cmp r0, #0
	addne sp, sp, #0x18
	ldmnefd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
	ldr r0, [r10, #8]
	cmp r0, #0x3d
	addeq sp, sp, #0x18
	ldmeqfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
	mov r6, #0
	mov r7, r6
	mov r11, #0xc
	b _020CC88C
_020CC7AC:
	mov r0, r7
	bl FUN_ov16_020efa80
	movs r5, r0
	beq _020CC888
	bl FUN_0206d660
	cmp r0, #0
	beq _020CC888
	mov r0, r5
	bl FUN_0206d688
	cmp r0, #0
	beq _020CC888
	mov r0, r5
	bl FUN_0206d6b0
	cmp r0, #0
	bne _020CC810
	ldr r0, _020CC8E0 ; =0x020A0640
	ldrb r0, [r0, #0x1b]
	cmp r0, #0
	beq _020CC888
	mov r0, r5
	bl FUN_0206d5f0
	mov r8, r0
	bl FUN_ov16_020f081c
	cmp r8, r0
	bne _020CC888
_020CC810:
	ldr r0, [r5, #0x88]
	ldrb r8, [r0, #0x85]
	ldrb r9, [r0, #0x84]
	cmp r9, r8
	bhs _020CC888
	mov r0, r5
	bl FUN_0206d6b0
	str r11, [sp]
	cmp r0, #0
	ldr r0, [r5, #0x84]
	mov r2, #0x3e0
	str r0, [sp, #4]
	ldr r0, [r5, #0x88]
	ldreq r2, _020CC8E4 ; =0x0000319F
	add r0, r0, #0x34
	add r0, r0, r9, lsl #3
	str r0, [sp, #8]
	ldr r0, [r5, #0x88]
	mov r1, r6
	add r0, r0, #0x34
	add r0, r0, r8, lsl #3
	str r0, [sp, #0xc]
	mov r0, #0x1f
	str r0, [sp, #0x10]
	mov r0, #0x19
	str r0, [sp, #0x14]
	ldr r0, [r4]
	mov r3, #6
	bl FUN_ov1_020dc44c
	add r6, r6, #1
_020CC888:
	add r7, r7, #1
_020CC88C:
	cmp r7, #0x64
	blt _020CC7AC
	ldr r0, [r10, #8]
	cmp r0, #0xb
	bne _020CC8C4
	ldr r0, [r10, #0xc]
	cmp r0, #0xc
	cmpne r0, #0xe
	cmpne r0, #0xd
	bne _020CC8C4
	mov r0, r10
	mov r1, r6
	bl FUN_ov1_020cc56c
	mov r6, r0
_020CC8C4:
	mov r0, r10
	mov r1, r6
	bl FUN_ov1_020cc4b0
	add sp, sp, #0x18
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_020CC8D8: .word 0x0209A128
_020CC8DC: .word 0x020AF81C
_020CC8E0: .word 0x020A0640
_020CC8E4: .word 0x0000319F
	arm_func_end FUN_ov1_020cc760

	arm_func_start FUN_ov1_020cc8e8
FUN_ov1_020cc8e8: ; 0x020CC8E8
	stmfd sp!, {r3, lr}
	ldr r0, _020CC954 ; =0x02099EF0
	ldr r1, _020CC958 ; =0x0209A2C0
	ldr r0, [r0]
	ldr r1, [r1, #0x48]
	mov r2, #0
	bl FUN_ov132_021430b4
	cmp r0, #0
	ldmeqfd sp!, {r3, pc}
	ldrb r1, [r0, #0x1d]
	cmp r1, #1
	ldmnefd sp!, {r3, pc}
	ldr r1, _020CC95C ; =0x020EAB48
	ldr r2, [r1, #8]
	ands r2, r2, #0xf
	str r2, [r1, #8]
	bne _020CC940
	ldr r3, _020CC960 ; =0x02099F14
	ldmia r0, {r1, r2}
	ldr r0, [r3]
	mov r3, #0x10
	bl FUN_ov1_020e40b4
_020CC940:
	ldr r0, _020CC95C ; =0x020EAB48
	ldr r1, [r0, #8]
	add r1, r1, #1
	str r1, [r0, #8]
	ldmfd sp!, {r3, pc}
_020CC954: .word 0x02099EF0
_020CC958: .word 0x0209A2C0
_020CC95C: .word 0x020EAB48
_020CC960: .word 0x02099F14
	arm_func_end FUN_ov1_020cc8e8

	arm_func_start FUN_ov1_020cc964
FUN_ov1_020cc964: ; 0x020CC964
	stmfd sp!, {r4, r5, r6, r7, r8, lr}
	mov r6, r0
	ldrb r0, [r6, #0x2d]
	ldr r4, _020CCAD0 ; =0x02099F14
	ldr r7, _020CCAD4 ; =0x02099EF0
	cmp r0, #0
	beq _020CC9E4
	ldr r8, [r6, #0x34]
	cmp r8, #0
	blt _020CC9E4
	ldr r0, [r4]
	mov r1, r8
	bl FUN_ov1_020e3b40
	ldr r0, [r7]
	bl FUN_ov132_02149260
	cmp r8, r0
	bne _020CC9D0
	ldr r0, [r7]
	bl FUN_ov126_0213777c
	ldrb r1, [r0, #0x2e]
	ldrb r0, [r0, #0x2f]
	cmp r1, #1
	moveq r5, #3
	beq _020CC9D4
	cmp r0, #1
	moveq r5, #2
	b _020CC9D4
_020CC9D0:
	mov r5, #1
_020CC9D4:
	ldr r0, [r7]
	mov r1, r5
	bl FUN_ov132_02149268
	b _020CCA38
_020CC9E4:
	ldr r0, [r7]
	bl FUN_ov132_02149260
	cmn r0, #1
	beq _020CCA30
	ldr r0, [r7]
	bl FUN_ov132_02149260
	mov r1, r0
	ldr r0, [r4]
	bl FUN_ov1_020e3b40
	ldr r0, [r7]
	bl FUN_ov126_0213777c
	ldrb r1, [r0, #0x2e]
	ldrb r0, [r0, #0x2f]
	cmp r1, #1
	moveq r5, #3
	beq _020CCA2C
	cmp r0, #1
	moveq r5, #2
_020CCA2C:
	b _020CC9D4
_020CCA30:
	ldr r0, [r4]
	bl FUN_ov1_020e3b48
_020CCA38:
	mov r0, r6
	bl FUN_ov1_020cc8e8
	mov r0, r6
	bl FUN_ov1_020c1910
	ldr r2, _020CCAD8 ; =0x020EAAF0
	mov r3, r0
	ldrsh r1, [r2]
	ldrsh r2, [r2, #2]
	ldr r0, [r4]
	bl FUN_ov1_020e4384
	ldr r2, _020CCADC ; =0x020EAAEC
	mov r5, #0
	ldrsh r1, [r2]
	ldrsh r2, [r2, #2]
	ldr r0, [r4]
	mov r3, r5
	bl FUN_ov1_020e43e0
	mov r0, r6
	bl FUN_ov1_020c1988
	mov r8, r0
	mov r6, #1
	bl FUN_ov16_020f081c
	mov r1, r0
	ldr r0, [r7]
	mov r2, r6
	bl FUN_ov132_02159fd8
	cmp r0, #0
	ldr r0, _020CCAE0 ; =0x020EAAE8
	cmpeq r8, #0
	moveq r6, r5
	cmp r6, #0
	moveq r8, #0xb
	ldrsh r1, [r0]
	ldrsh r2, [r0, #2]
	ldr r0, [r4]
	mov r3, r8
	bl FUN_ov1_020e443c
	ldmfd sp!, {r4, r5, r6, r7, r8, pc}
_020CCAD0: .word 0x02099F14
_020CCAD4: .word 0x02099EF0
_020CCAD8: .word 0x020EAAF0
_020CCADC: .word 0x020EAAEC
_020CCAE0: .word 0x020EAAE8
	arm_func_end FUN_ov1_020cc964

	arm_func_start FUN_ov1_020ccae4
FUN_ov1_020ccae4: ; 0x020CCAE4
	stmfd sp!, {r4, r5, r6, r7, r8, lr}
	ldr r2, _020CCBEC ; =0x020A0640
	mov r5, r0
	ldrb r0, [r2, #0x1a]
	mov r4, r1
	cmp r0, #0
	beq _020CCB10
	ldr r0, _020CCBF0 ; =0x0209AEC0
	ldrb r0, [r0, #0x64]
	cmp r0, #0
	beq _020CCB2C
_020CCB10:
	ldr r6, _020CCBF4 ; =0x02099F14
	ldr r0, [r6]
	bl FUN_ov1_020e3df4
	mov r7, r0
	ldr r0, [r6]
	bl FUN_ov1_020e3e9c
	b _020CCB44
_020CCB2C:
	ldr r6, _020CCBF4 ; =0x02099F14
	ldr r0, [r6]
	bl FUN_ov1_020e3dec
	mov r7, r0
	ldr r0, [r6]
	bl FUN_ov1_020e3e94
_020CCB44:
	mov r8, r0
	ldr r6, _020CCBF4 ; =0x02099F14
	mov r1, r7
	ldr r0, [r6]
	bl FUN_ov1_020e3de4
	ldr r0, [r6]
	mov r1, r8
	bl FUN_ov1_020e3e8c
	ldrb r2, [r5, #0x20]
	ldr r0, [r6]
	mov r1, r4
	bl FUN_ov1_020e03b0
	ldr r0, _020CCBF8 ; =0x02099EE8
	ldr r1, _020CCBFC ; =0x0209A110
	ldr r0, [r0]
	ldr r1, [r1]
	bl FUN_0205ef30
	ldr r0, _020CCC00 ; =0x02099F24
	ldr r0, [r0]
	bl FUN_ov16_020f7908
	ldr r0, _020CCC04 ; =0x02099EF0
	ldr r0, [r0]
	bl FUN_ov132_021434f8
	cmp r0, #0
	bne _020CCBC4
	ldr r0, _020CCC08 ; =0x0209A128
	ldr r0, [r0]
	bl FUN_ov1_020dc344
	ldr r0, _020CCC0C ; =0x0209A114
	ldr r0, [r0]
	bl FUN_ov1_020dd83c
	b _020CCBDC
_020CCBC4:
	ldr r0, _020CCC08 ; =0x0209A128
	ldr r0, [r0]
	bl FUN_ov1_020dc708
	ldr r0, _020CCC0C ; =0x0209A114
	ldr r0, [r0]
	bl FUN_ov1_020de1e8
_020CCBDC:
	ldr r0, _020CCC00 ; =0x02099F24
	ldr r0, [r0]
	bl FUN_ov16_020f792c
	ldmfd sp!, {r4, r5, r6, r7, r8, pc}
_020CCBEC: .word 0x020A0640
_020CCBF0: .word 0x0209AEC0
_020CCBF4: .word 0x02099F14
_020CCBF8: .word 0x02099EE8
_020CCBFC: .word 0x0209A110
_020CCC00: .word 0x02099F24
_020CCC04: .word 0x02099EF0
_020CCC08: .word 0x0209A128
_020CCC0C: .word 0x0209A114
	arm_func_end FUN_ov1_020ccae4

	arm_func_start FUN_ov1_020ccc10
FUN_ov1_020ccc10: ; 0x020CCC10
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, lr}
	sub sp, sp, #0x38
	ldr r3, _020CD29C ; =0x02099EF0
	mov r9, r0
	ldr r0, [r3]
	mov r11, r2
	str r1, [sp, #0x14]
	mov r1, #0
	str r1, [sp, #0x1c]
	bl FUN_ov126_0213777c
	cmp r0, #0
	ldrnesb r0, [r0, #0x20]
	strne r0, [sp, #0x1c]
	ldr r0, [sp, #0x14]
	cmp r0, #0
	beq _020CD1AC
	cmp r11, #3
	addls pc, pc, r11, lsl #2
	b _020CCCF4
_020CCC5C: ; jump table
	b _020CCC6C ; case 0
	b _020CCC8C ; case 1
	b _020CCCB0 ; case 2
	b _020CCCD0 ; case 3
_020CCC6C:
	mov r8, #8
	str r8, [sp, #0x18]
	ldr r4, [r9, #0x2bc]
	mov r10, #0x27
	mov r5, #0x28
	mov r6, #0x20
	mov r7, #0xd
	b _020CCCF4
_020CCC8C:
	ldr r0, _020CD2A0 ; =0x020EAAD0
	mov r8, #6
	ldr r4, [r0]
	mov r0, #0xb
	mov r10, #0x49
	mov r5, #0x4a
	mov r6, #0x20
	str r0, [sp, #0x18]
	b _020CCCF0
_020CCCB0:
	ldr r0, [sp, #0x1c]
	bl FUN_ov16_020f07f4
	mov r8, #8
	mov r4, r0
	str r8, [sp, #0x18]
	mov r10, #0x4b
	mov r5, #0x4c
	b _020CCCEC
_020CCCD0:
	ldr r0, [sp, #0x1c]
	bl FUN_ov16_020f07f4
	mov r8, #8
	mov r4, r0
	str r8, [sp, #0x18]
	mov r10, #0x4d
	mov r5, #0x4e
_020CCCEC:
	mov r6, #0x20
_020CCCF0:
	mov r7, #0xe
_020CCCF4:
	mov r0, #0xc
	mla r0, r5, r0, r9
	ldr r2, [r0, #0x348]
	mov r5, #1
	cmp r2, #0
	beq _020CCD6C
	ldr r0, [r2, #0xc]
	mov r1, #0
	strh r1, [sp, #0x20]
	strh r1, [sp, #0x22]
	strh r6, [sp, #0x24]
	add r2, r2, r0
	ldr r0, [sp, #0x18]
	mov r3, #0x1f
	strh r0, [sp, #0x26]
	str r2, [sp, #0x34]
	strh r1, [sp, #0x28]
	strh r1, [sp, #0x2a]
	strh r1, [sp, #0x2c]
	strh r1, [sp, #0x2e]
	strb r7, [sp, #0x30]
	mov r2, #9
	str r2, [sp]
	add r0, sp, #0x20
	stmib sp, {r0, r1}
	str r1, [sp, #0xc]
	ldr r0, _020CD2A4 ; =0x0209F5C0
	mov r2, #2
	str r1, [sp, #0x10]
	bl FUN_ov16_020f5c34
_020CCD6C:
	mov r0, #0xc
	mla r0, r10, r0, r9
	ldr r2, [r0, #0x348]
	mov r10, #9
	cmp r2, #0
	ldr r6, _020CD2A8 ; =0x020A3D14
	beq _020CCDE8
	ldr r0, [r2, #0xc]
	mov r1, #0
	add r3, r2, r0
	mov r2, #0x1c
	mov r0, #3
	strh r2, [sp, #0x24]
	strh r0, [sp, #0x26]
	str r3, [sp, #0x34]
	strh r1, [sp, #0x20]
	strh r1, [sp, #0x22]
	strh r1, [sp, #0x28]
	strh r1, [sp, #0x2a]
	strh r1, [sp, #0x2c]
	strh r1, [sp, #0x2e]
	strb r7, [sp, #0x30]
	add r0, sp, #0x20
	str r10, [sp]
	stmib sp, {r0, r1}
	str r1, [sp, #0xc]
	ldr r0, _020CD2A4 ; =0x0209F5C0
	mov r2, #1
	mov r3, #0x1d
	str r1, [sp, #0x10]
	bl FUN_ov16_020f5c34
_020CCDE8:
	mov r0, r4
	mov r11, #0xe
	ldr r7, _020CD2AC ; =0x020EAB48
	bl FUN_ov1_020dc150
	cmp r0, #0
	beq _020CCE60
	and r1, r4, #1
	mov r0, #0x14
	mla r0, r1, r0, r9
	ldr r3, [r0, #0x2cc]
	mov r1, #0
	cmp r3, #0
	ldrne r0, [r0, #0x2d0]
	mov r2, r11
	cmpne r0, #0
	movne r1, #1
	cmp r1, #0
	beq _020CCEDC
	mov r1, #0
	mov r0, #3
	strh r1, [sp, #0x20]
	strh r1, [sp, #0x22]
	strh r2, [sp, #0x24]
	strh r0, [sp, #0x26]
	strh r1, [sp, #0x28]
	strh r1, [sp, #0x2a]
	strh r1, [sp, #0x2c]
	strh r1, [sp, #0x2e]
	strb r1, [sp, #0x30]
	b _020CCEB4
_020CCE60:
	and r0, r4, #1
	add r1, r0, #0x1e
	mov r0, #0xc
	mla r0, r1, r0, r9
	ldr r2, [r0, #0x348]
	cmp r2, #0
	beq _020CCEDC
	ldr r0, [r2, #0xc]
	mov r1, #0
	add r3, r2, r0
	mov r2, #3
	mov r0, #0xd
	strh r1, [sp, #0x20]
	strh r1, [sp, #0x22]
	strh r11, [sp, #0x24]
	strh r2, [sp, #0x26]
	strh r1, [sp, #0x28]
	strh r1, [sp, #0x2a]
	strh r1, [sp, #0x2c]
	strh r1, [sp, #0x2e]
	strb r0, [sp, #0x30]
_020CCEB4:
	str r3, [sp, #0x34]
	add r0, sp, #0x20
	str r10, [sp]
	stmib sp, {r0, r1}
	str r1, [sp, #0xc]
	ldr r0, _020CD2A4 ; =0x0209F5C0
	mov r2, #1
	mov r3, #0x1e
	str r1, [sp, #0x10]
	bl FUN_ov16_020f5c34
_020CCEDC:
	mov r0, r6
	bl FUN_ov16_020f591c
	strb r0, [r7, #2]
	mov r0, r6
	bl FUN_ov16_020f591c
	strb r0, [r7, #3]
	mov r0, r6
	bl FUN_ov16_020f591c
	strb r0, [r7, #4]
	and r4, r0, #0xff
	mov r7, #0x20
	mov r10, #0
_020CCF0C:
	mov r0, r6
	mov r1, r4
	mov r2, r7
	mov r3, r8
	str r5, [sp]
	bl FUN_ov16_020f5964
	sub r0, r7, #8
	mov r0, r0, lsl #0x10
	add r10, r10, #1
	cmp r10, #4
	mov r7, r0, asr #0x10
	blt _020CCF0C
	ldr r5, _020CD2A8 ; =0x020A3D14
	mov r6, #1
	mov r10, #0
_020CCF48:
	mov r0, r5
	mov r1, r4
	mov r2, r7
	mov r3, r8
	str r6, [sp]
	bl FUN_ov16_020f5964
	add r10, r10, #1
	cmp r10, #0x3c
	blt _020CCF48
	ldr r5, _020CD2A8 ; =0x020A3D14
	mov r6, #1
	mov r10, #0
_020CCF78:
	sub r0, r7, #8
	mov r0, r0, lsl #0x10
	mov r7, r0, asr #0x10
	mov r0, r5
	mov r1, r4
	mov r2, r7
	mov r3, r8
	str r6, [sp]
	bl FUN_ov16_020f5964
	add r10, r10, #1
	cmp r10, #4
	blt _020CCF78
	ldr r0, _020CD2AC ; =0x020EAB48
	mov r4, #0x20
	ldrb r8, [r0, #2]
	ldr r5, _020CD2A8 ; =0x020A3D14
	mov r11, #9
	mov r6, #1
	mov r10, r4
	mov r7, #0
_020CCFC8:
	mov r0, r5
	mov r1, r8
	mov r2, r4
	mov r3, r11
	str r6, [sp]
	bl FUN_ov16_020f5964
	add r7, r7, #1
	cmp r7, #0xa
	blt _020CCFC8
	ldr r5, _020CD2A8 ; =0x020A3D14
	mov r4, #9
	mov r6, #1
	mov r7, #0
_020CCFFC:
	mov r0, r5
	mov r1, r8
	mov r2, r10
	mov r3, r4
	str r6, [sp]
	bl FUN_ov16_020f5964
	sub r0, r10, #5
	mov r0, r0, lsl #0x10
	add r7, r7, #1
	cmp r7, #6
	mov r10, r0, asr #0x10
	blt _020CCFFC
	ldr r5, _020CD2A8 ; =0x020A3D14
	mov r4, #9
	mov r6, #1
	mov r7, #0
_020CD03C:
	mov r0, r5
	mov r1, r8
	mov r2, r10
	mov r3, r4
	str r6, [sp]
	bl FUN_ov16_020f5964
	add r7, r7, #1
	cmp r7, #0x24
	blt _020CD03C
	adds r0, r10, #0x1c
	mov r4, #9
	ldr r5, _020CD2A8 ; =0x020A3D14
	mov r6, #1
	bmi _020CD0A0
_020CD074:
	sub r0, r10, #5
	mov r0, r0, lsl #0x10
	mov r10, r0, asr #0x10
	mov r0, r5
	mov r1, r8
	mov r2, r10
	mov r3, r4
	str r6, [sp]
	bl FUN_ov16_020f5964
	adds r0, r10, #0x1c
	bpl _020CD074
_020CD0A0:
	ldr r0, _020CD2AC ; =0x020EAB48
	ldr r5, _020CD2A8 ; =0x020A3D14
	ldrb r8, [r0, #3]
	mov r11, #0xc
	mov r4, #0x20
	mov r6, #1
	mov r10, #0x22
	mov r7, #0
_020CD0C0:
	mov r0, r5
	mov r1, r8
	mov r2, r4
	mov r3, r11
	str r6, [sp]
	bl FUN_ov16_020f5964
	add r7, r7, #1
	cmp r7, #0x10
	blt _020CD0C0
	ldr r5, _020CD2A8 ; =0x020A3D14
	mov r4, #0xc
	mov r6, #1
	mov r7, #0
_020CD0F4:
	mov r0, r5
	mov r1, r8
	mov r2, r10
	mov r3, r4
	str r6, [sp]
	bl FUN_ov16_020f5964
	sub r0, r10, #5
	mov r0, r0, lsl #0x10
	add r7, r7, #1
	cmp r7, #5
	mov r10, r0, asr #0x10
	blt _020CD0F4
	ldr r5, _020CD2A8 ; =0x020A3D14
	mov r4, #0xc
	mov r6, #1
	mov r7, #0
_020CD134:
	mov r0, r5
	mov r1, r8
	mov r2, r10
	mov r3, r4
	str r6, [sp]
	bl FUN_ov16_020f5964
	add r7, r7, #1
	cmp r7, #0x24
	blt _020CD134
	adds r0, r10, #0xe
	mov r4, #0xc
	ldr r5, _020CD2A8 ; =0x020A3D14
	mov r6, #1
	bmi _020CD198
_020CD16C:
	sub r0, r10, #5
	mov r0, r0, lsl #0x10
	mov r10, r0, asr #0x10
	mov r0, r5
	mov r1, r8
	mov r2, r10
	mov r3, r4
	str r6, [sp]
	bl FUN_ov16_020f5964
	adds r0, r10, #0xe
	bpl _020CD16C
_020CD198:
	ldr r0, _020CD2AC ; =0x020EAB48
	mov r1, #0
	strb r1, [r0]
	mov r0, #1
	strb r0, [r9, #0x1f]
_020CD1AC:
	ldr r7, _020CD2AC ; =0x020EAB48
	ldr r6, _020CD2A8 ; =0x020A3D14
	ldrb r1, [r7, #2]
	mov r0, r6
	mov r8, #0
	bl FUN_ov16_020f5a04
	mov r4, r0
	ldrb r1, [r7, #3]
	mov r0, r6
	bl FUN_ov16_020f5a04
	mov r5, r0
	ldrb r1, [r7, #4]
	mov r0, r6
	bl FUN_ov16_020f5a04
	cmp r4, #0
	mov r6, r0
	cmpeq r5, #0
	cmpeq r6, #0
	addeq sp, sp, #0x38
	streqb r8, [r9, #0x1f]
	ldmeqfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
	ldrb r0, [r7]
	add r1, r0, #1
	and r0, r1, #0xff
	strb r1, [r7]
	cmp r0, #0xa
	bne _020CD224
	ldr r0, _020CD2B0 ; =0x0209AC44
	ldr r1, _020CD2B4 ; =0x00004080
	bl FUN_0202cf6c
_020CD224:
	cmp r4, #0
	beq _020CD248
	ldrsh r2, [r4, #2]
	ldr r0, _020CD2A4 ; =0x0209F5C0
	mov r1, #0
	str r2, [sp]
	ldrsh r3, [r4]
	mov r2, #0x1d
	bl FUN_ov16_020f63f0
_020CD248:
	cmp r5, #0
	beq _020CD26C
	ldrsh r2, [r5, #2]
	ldr r0, _020CD2A4 ; =0x0209F5C0
	mov r1, #0
	str r2, [sp]
	ldrsh r3, [r5]
	mov r2, #0x1e
	bl FUN_ov16_020f63f0
_020CD26C:
	cmp r6, #0
	addeq sp, sp, #0x38
	ldmeqfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
	ldrsh r2, [r6, #2]
	ldr r0, _020CD2A4 ; =0x0209F5C0
	mov r1, #0
	str r2, [sp]
	ldrsh r3, [r6]
	mov r2, #0x1f
	bl FUN_ov16_020f63f0
	add sp, sp, #0x38
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_020CD29C: .word 0x02099EF0
_020CD2A0: .word 0x020EAAD0
_020CD2A4: .word 0x0209F5C0
_020CD2A8: .word 0x020A3D14
_020CD2AC: .word 0x020EAB48
_020CD2B0: .word 0x0209AC44
_020CD2B4: .word 0x00004080
	arm_func_end FUN_ov1_020ccc10

	arm_func_start FUN_ov1_020cd2b8
FUN_ov1_020cd2b8: ; 0x020CD2B8
	stmfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, lr}
	sub sp, sp, #0x2c
	mov r10, r0
	cmp r1, #0
	mov r3, #0x20
	mov r5, #0xc
	mov r4, #9
	mov r7, #1
	beq _020CD798
	ldr r2, [r10, #0x534]
	cmp r2, #0
	beq _020CD348
	ldr r0, [r2, #0xc]
	mov r1, #0
	add r6, r2, r0
	mov r2, #8
	mov r0, #0xd
	strh r3, [sp, #0x18]
	strh r2, [sp, #0x1a]
	strb r0, [sp, #0x24]
	strh r1, [sp, #0x14]
	strh r1, [sp, #0x16]
	strh r1, [sp, #0x1c]
	strh r1, [sp, #0x1e]
	strh r1, [sp, #0x20]
	strh r1, [sp, #0x22]
	str r6, [sp, #0x28]
	add r0, sp, #0x14
	str r4, [sp]
	stmib sp, {r0, r1}
	str r1, [sp, #0xc]
	ldr r0, _020CD894 ; =0x0209F5C0
	mov r2, #2
	mov r3, #0x1f
	str r1, [sp, #0x10]
	bl FUN_ov16_020f5c34
_020CD348:
	ldr r2, [r10, #0x540]
	cmp r2, #0
	beq _020CD3B8
	ldr r0, [r2, #0xc]
	mov r1, #0
	add r6, r2, r0
	mov r3, #0x1c
	mov r2, #3
	mov r0, #0xd
	strh r3, [sp, #0x18]
	strh r2, [sp, #0x1a]
	strb r0, [sp, #0x24]
	strh r1, [sp, #0x14]
	strh r1, [sp, #0x16]
	strh r1, [sp, #0x1c]
	strh r1, [sp, #0x1e]
	strh r1, [sp, #0x20]
	strh r1, [sp, #0x22]
	str r6, [sp, #0x28]
	add r0, sp, #0x14
	str r4, [sp]
	stmib sp, {r0, r1}
	str r1, [sp, #0xc]
	ldr r0, _020CD894 ; =0x0209F5C0
	mov r2, #1
	mov r3, #0x1d
	str r1, [sp, #0x10]
	bl FUN_ov16_020f5c34
_020CD3B8:
	ldr r0, [r10, #0x2bc]
	bl FUN_ov1_020dc150
	cmp r0, #0
	beq _020CD430
	ldr r1, [r10, #0x2bc]
	mov r0, #0x14
	and r1, r1, #1
	mla r0, r1, r0, r10
	ldr r3, [r0, #0x2cc]
	mov r1, #0
	cmp r3, #0
	ldrne r0, [r0, #0x2d0]
	cmpne r0, #0
	movne r1, #1
	cmp r1, #0
	beq _020CD4B0
	mov r1, #0
	mov r2, #0xe
	mov r0, #3
	strh r1, [sp, #0x14]
	strh r1, [sp, #0x16]
	strh r2, [sp, #0x18]
	strh r0, [sp, #0x1a]
	strh r1, [sp, #0x1c]
	strh r1, [sp, #0x1e]
	strh r1, [sp, #0x20]
	strh r1, [sp, #0x22]
	strb r1, [sp, #0x24]
	str r3, [sp, #0x28]
	b _020CD48C
_020CD430:
	ldr r0, [r10, #0x2bc]
	and r0, r0, #1
	add r1, r0, #0x1e
	mla r0, r1, r5, r10
	ldr r2, [r0, #0x348]
	cmp r2, #0
	beq _020CD4B0
	ldr r0, [r2, #0xc]
	mov r1, #0
	add r5, r2, r0
	mov r3, #0xe
	mov r2, #3
	mov r0, #0xd
	strh r1, [sp, #0x14]
	strh r1, [sp, #0x16]
	strh r3, [sp, #0x18]
	strh r2, [sp, #0x1a]
	strh r1, [sp, #0x1c]
	strh r1, [sp, #0x1e]
	strh r1, [sp, #0x20]
	strh r1, [sp, #0x22]
	strb r0, [sp, #0x24]
	str r5, [sp, #0x28]
_020CD48C:
	add r0, sp, #0x14
	str r4, [sp]
	stmib sp, {r0, r1}
	str r1, [sp, #0xc]
	ldr r0, _020CD894 ; =0x0209F5C0
	mov r2, #1
	mov r3, #0x1e
	str r1, [sp, #0x10]
	bl FUN_ov16_020f5c34
_020CD4B0:
	ldr r0, _020CD898 ; =0x020A3D14
	bl FUN_ov16_020f591c
	ldr r1, _020CD89C ; =0x020EAB48
	strb r0, [r1, #5]
	ldr r0, _020CD898 ; =0x020A3D14
	bl FUN_ov16_020f591c
	ldr r1, _020CD89C ; =0x020EAB48
	strb r0, [r1, #6]
	ldr r0, _020CD898 ; =0x020A3D14
	bl FUN_ov16_020f591c
	ldr r1, _020CD89C ; =0x020EAB48
	and r4, r0, #0xff
	strb r0, [r1, #7]
	mov r5, #0x20
	mov r8, #0
	mov r6, #8
_020CD4F0:
	ldr r0, _020CD898 ; =0x020A3D14
	mov r1, r4
	mov r2, r5
	mov r3, r6
	str r7, [sp]
	bl FUN_ov16_020f5964
	sub r0, r5, #8
	mov r0, r0, lsl #0x10
	add r8, r8, #1
	cmp r8, #4
	mov r5, r0, asr #0x10
	blt _020CD4F0
	ldr r7, _020CD898 ; =0x020A3D14
	mov r8, #1
	mov r9, #0
	mov r6, #8
_020CD530:
	mov r0, r7
	mov r1, r4
	mov r2, r5
	mov r3, r6
	str r8, [sp]
	bl FUN_ov16_020f5964
	add r9, r9, #1
	cmp r9, #0x3c
	blt _020CD530
	ldr r7, _020CD898 ; =0x020A3D14
	mov r8, #1
	mov r9, #0
	mov r6, #8
_020CD564:
	sub r0, r5, #8
	mov r0, r0, lsl #0x10
	mov r5, r0, asr #0x10
	mov r0, r7
	mov r1, r4
	mov r2, r5
	str r8, [sp]
	mov r3, r6
	bl FUN_ov16_020f5964
	add r9, r9, #1
	cmp r9, #4
	blt _020CD564
	ldr r0, _020CD89C ; =0x020EAB48
	mov r4, #0x20
	ldrb r8, [r0, #5]
	ldr r5, _020CD898 ; =0x020A3D14
	mov r11, #9
	mov r6, #1
	mov r9, r4
	mov r7, #0
_020CD5B4:
	mov r0, r5
	mov r1, r8
	mov r2, r4
	str r6, [sp]
	mov r3, r11
	bl FUN_ov16_020f5964
	add r7, r7, #1
	cmp r7, #0xa
	blt _020CD5B4
	ldr r5, _020CD898 ; =0x020A3D14
	mov r4, #9
	mov r6, #1
	mov r7, #0
_020CD5E8:
	mov r0, r5
	mov r1, r8
	mov r2, r9
	mov r3, r4
	str r6, [sp]
	bl FUN_ov16_020f5964
	sub r0, r9, #5
	mov r0, r0, lsl #0x10
	add r7, r7, #1
	cmp r7, #6
	mov r9, r0, asr #0x10
	blt _020CD5E8
	ldr r5, _020CD898 ; =0x020A3D14
	mov r4, #9
	mov r6, #1
	mov r7, #0
_020CD628:
	mov r0, r5
	mov r1, r8
	mov r2, r9
	mov r3, r4
	str r6, [sp]
	bl FUN_ov16_020f5964
	add r7, r7, #1
	cmp r7, #0x24
	blt _020CD628
	adds r0, r9, #0x1c
	mov r4, #9
	ldr r5, _020CD898 ; =0x020A3D14
	mov r6, #1
	bmi _020CD68C
_020CD660:
	sub r0, r9, #5
	mov r0, r0, lsl #0x10
	mov r9, r0, asr #0x10
	mov r0, r5
	mov r1, r8
	mov r2, r9
	mov r3, r4
	str r6, [sp]
	bl FUN_ov16_020f5964
	adds r0, r9, #0x1c
	bpl _020CD660
_020CD68C:
	ldr r0, _020CD89C ; =0x020EAB48
	ldr r5, _020CD898 ; =0x020A3D14
	ldrb r8, [r0, #6]
	mov r4, #0x20
	mov r11, #0xc
	mov r6, #1
	mov r9, #0x22
	mov r7, #0
_020CD6AC:
	mov r0, r5
	mov r1, r8
	mov r2, r4
	str r6, [sp]
	mov r3, r11
	bl FUN_ov16_020f5964
	add r7, r7, #1
	cmp r7, #0x10
	blt _020CD6AC
	ldr r5, _020CD898 ; =0x020A3D14
	mov r4, #0xc
	mov r6, #1
	mov r7, #0
_020CD6E0:
	mov r0, r5
	mov r1, r8
	mov r2, r9
	mov r3, r4
	str r6, [sp]
	bl FUN_ov16_020f5964
	sub r0, r9, #5
	mov r0, r0, lsl #0x10
	add r7, r7, #1
	cmp r7, #5
	mov r9, r0, asr #0x10
	blt _020CD6E0
	ldr r5, _020CD898 ; =0x020A3D14
	mov r4, #0xc
	mov r6, #1
	mov r7, #0
_020CD720:
	mov r0, r5
	mov r1, r8
	mov r2, r9
	mov r3, r4
	str r6, [sp]
	bl FUN_ov16_020f5964
	add r7, r7, #1
	cmp r7, #0x24
	blt _020CD720
	adds r0, r9, #0xe
	mov r4, #0xc
	ldr r5, _020CD898 ; =0x020A3D14
	mov r6, #1
	bmi _020CD784
_020CD758:
	sub r0, r9, #5
	mov r0, r0, lsl #0x10
	mov r9, r0, asr #0x10
	mov r0, r5
	mov r1, r8
	mov r2, r9
	mov r3, r4
	str r6, [sp]
	bl FUN_ov16_020f5964
	adds r0, r9, #0xe
	bpl _020CD758
_020CD784:
	ldr r0, _020CD89C ; =0x020EAB48
	mov r1, #0
	strb r1, [r0, #1]
	mov r0, #1
	strb r0, [r10, #0x1f]
_020CD798:
	ldr r0, _020CD89C ; =0x020EAB48
	ldrb r1, [r0, #5]
	ldr r0, _020CD898 ; =0x020A3D14
	bl FUN_ov16_020f5a04
	mov r4, r0
	ldr r0, _020CD89C ; =0x020EAB48
	ldrb r1, [r0, #6]
	ldr r0, _020CD898 ; =0x020A3D14
	bl FUN_ov16_020f5a04
	mov r5, r0
	ldr r0, _020CD89C ; =0x020EAB48
	ldrb r1, [r0, #7]
	ldr r0, _020CD898 ; =0x020A3D14
	bl FUN_ov16_020f5a04
	cmp r4, #0
	mov r6, r0
	cmpeq r5, #0
	cmpeq r6, #0
	moveq r0, #0
	addeq sp, sp, #0x2c
	streqb r0, [r10, #0x1f]
	ldmeqfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
	ldr r0, _020CD89C ; =0x020EAB48
	ldrb r0, [r0, #1]
	add r2, r0, #1
	ldr r0, _020CD89C ; =0x020EAB48
	and r1, r2, #0xff
	strb r2, [r0, #1]
	cmp r1, #0xa
	bne _020CD81C
	ldr r0, _020CD8A0 ; =0x0209AC44
	ldr r1, _020CD8A4 ; =0x00004081
	bl FUN_0202cf6c
_020CD81C:
	cmp r4, #0
	beq _020CD840
	ldrsh r2, [r4, #2]
	ldr r0, _020CD894 ; =0x0209F5C0
	mov r1, #0
	str r2, [sp]
	ldrsh r3, [r4]
	mov r2, #0x1d
	bl FUN_ov16_020f63f0
_020CD840:
	cmp r5, #0
	beq _020CD864
	ldrsh r2, [r5, #2]
	ldr r0, _020CD894 ; =0x0209F5C0
	mov r1, #0
	str r2, [sp]
	ldrsh r3, [r5]
	mov r2, #0x1e
	bl FUN_ov16_020f63f0
_020CD864:
	cmp r6, #0
	addeq sp, sp, #0x2c
	ldmeqfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
	ldrsh r2, [r6, #2]
	ldr r0, _020CD894 ; =0x0209F5C0
	mov r1, #0
	str r2, [sp]
	ldrsh r3, [r6]
	mov r2, #0x1f
	bl FUN_ov16_020f63f0
	add sp, sp, #0x2c
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
_020CD894: .word 0x0209F5C0
_020CD898: .word 0x020A3D14
_020CD89C: .word 0x020EAB48
_020CD8A0: .word 0x0209AC44
_020CD8A4: .word 0x00004081
	arm_func_end FUN_ov1_020cd2b8

	arm_func_start FUN_ov1_020cd8a8
FUN_ov1_020cd8a8: ; 0x020CD8A8
	stmfd sp!, {r4, r5, r6, r7, lr}
	sub sp, sp, #0x2c
	ldr r1, _020CDA24 ; =0x02099EF0
	mov r4, r0
	ldr r0, [r1]
	ldrb r1, [r0, #0x376]
	cmp r1, #0
	addeq sp, sp, #0x2c
	ldmeqfd sp!, {r4, r5, r6, r7, pc}
	ldr r1, _020CDA28 ; =0x020A0640
	ldrb r1, [r1, #0x8f]
	bl FUN_ov131_02145c40 ; may be ov132
	cmp r0, #0xc
	bgt _020CD920
	cmp r0, #0
	addge pc, pc, r0, lsl #2
	b _020CD958
_020CD8EC: ; jump table
	b _020CD958 ; case 0
	b _020CD958 ; case 1
	b _020CD958 ; case 2
	b _020CD930 ; case 3
	b _020CD958 ; case 4
	b _020CD958 ; case 5
	b _020CD938 ; case 6
	b _020CD958 ; case 7
	b _020CD958 ; case 8
	b _020CD940 ; case 9
	b _020CD958 ; case 10
	b _020CD958 ; case 11
	b _020CD950 ; case 12
_020CD920:
	cmp r0, #0xf
	beq _020CD948
	add sp, sp, #0x2c
	ldmfd sp!, {r4, r5, r6, r7, pc}
_020CD930:
	mov r7, #0
	b _020CD960
_020CD938:
	mov r7, #1
	b _020CD960
_020CD940:
	mov r7, #2
	b _020CD960
_020CD948:
	mov r7, #4
	b _020CD960
_020CD950:
	mov r7, #5
	b _020CD960
_020CD958:
	add sp, sp, #0x2c
	ldmfd sp!, {r4, r5, r6, r7, pc}
_020CD960:
	ldr r6, _020CDA2C ; =0x0209F5C0
	mov r5, #0
	mov r0, r6
	mov r1, r5
	bl FUN_ov16_020f5af0
	mov r0, r6
	mov r1, r5
	bl FUN_ov16_020f5a58
	ldr r5, [r4, #0x510]
	cmp r5, #0
	addeq sp, sp, #0x2c
	ldmeqfd sp!, {r4, r5, r6, r7, pc}
	ldr r0, [r4, #8]
	cmp r0, #0x2b
	bne _020CD9B0
	ldr r0, _020CDA30 ; =0x0209BA20
	bl FUN_020731a4
	cmp r0, #0
	addne sp, sp, #0x2c
	ldmnefd sp!, {r4, r5, r6, r7, pc}
_020CD9B0:
	ldr r0, [r5, #0xc]
	mov r1, #0
	add r0, r5, r0
	add r12, r0, r7, lsl #8
	mov r4, #0xa
	mov r3, #0x20
	mov r0, #4
	mov r2, #2
	strh r3, [sp, #0x18]
	strh r0, [sp, #0x1a]
	strh r1, [sp, #0x14]
	strh r4, [sp, #0x16]
	strh r1, [sp, #0x1c]
	strh r1, [sp, #0x1e]
	strh r1, [sp, #0x20]
	strh r1, [sp, #0x22]
	strb r2, [sp, #0x24]
	str r12, [sp, #0x28]
	mov r3, #7
	str r3, [sp]
	add r0, sp, #0x14
	stmib sp, {r0, r1}
	str r1, [sp, #0xc]
	ldr r0, _020CDA2C ; =0x0209F5C0
	mov r3, #1
	str r1, [sp, #0x10]
	bl FUN_ov16_020f5c34
	add sp, sp, #0x2c
	ldmfd sp!, {r4, r5, r6, r7, pc}
_020CDA24: .word 0x02099EF0
_020CDA28: .word 0x020A0640
_020CDA2C: .word 0x0209F5C0
_020CDA30: .word 0x0209BA20
	arm_func_end FUN_ov1_020cd8a8

	arm_func_start FUN_ov1_020cda34
FUN_ov1_020cda34: ; 0x020CDA34
	stmfd sp!, {r3, r4, r5, r6, lr}
	sub sp, sp, #0x2c
	ldr r1, _020CDBB0 ; =0x020A0640
	mov r4, r0
	ldrb r1, [r1, #0x1a]
	cmp r1, #0
	beq _020CDA6C
	bl FUN_ov1_020cf59c
	cmp r0, #0
	bne _020CDA6C
	mov r0, r4
	bl FUN_ov1_020ce28c
	add sp, sp, #0x2c
	ldmfd sp!, {r3, r4, r5, r6, pc}
_020CDA6C:
	ldr r1, [r4, #0x594]
	cmp r1, #0
	addeq sp, sp, #0x2c
	ldmeqfd sp!, {r3, r4, r5, r6, pc}
	ldr r0, [r1, #0xc]
	mov r6, #0
	add r4, r1, r0
	mov r5, #6
	mov r12, #9
	mov r3, #0xe
	mov r2, #4
	mov r1, #0x70
	mov r0, #0x20
	strh r3, [sp, #0x18]
	strh r1, [sp, #0x20]
	strh r0, [sp, #0x22]
	strh r12, [sp, #0x14]
	strh r5, [sp, #0x16]
	strh r2, [sp, #0x1a]
	strh r6, [sp, #0x1c]
	strh r6, [sp, #0x1e]
	strb r5, [sp, #0x24]
	str r4, [sp, #0x28]
	str r2, [sp]
	add r0, sp, #0x14
	stmib sp, {r0, r6}
	str r6, [sp, #0xc]
	ldr r0, _020CDBB4 ; =0x0209F5C0
	mov r1, r6
	mov r2, #2
	mov r3, #0x1a
	str r6, [sp, #0x10]
	bl FUN_ov16_020f5c34
	ldr r5, _020CDBB8 ; =0x02099EF0
	mov r1, r6
	ldr r0, [r5]
	mov r2, r6
	add r4, r4, #0x70
	bl FUN_ov132_02145a44
	cmp r0, #0
	bne _020CDB28
	ldr r0, [r5]
	mov r2, r6
	mov r1, #1
	bl FUN_ov132_02145a44
	cmp r0, #0
	beq _020CDB2C
_020CDB28:
	add r4, r4, #0x70
_020CDB2C:
	mov r6, #0
	mov r3, #0xe
	mov r12, #9
	mov r2, #4
	mov r1, #0x70
	mov r0, #0x20
	mov r5, #6
	strh r1, [sp, #0x20]
	strh r0, [sp, #0x22]
	strh r12, [sp, #0x14]
	strh r3, [sp, #0x16]
	strh r3, [sp, #0x18]
	strh r2, [sp, #0x1a]
	strh r6, [sp, #0x1c]
	strh r6, [sp, #0x1e]
	strb r5, [sp, #0x24]
	str r4, [sp, #0x28]
	str r2, [sp]
	add r0, sp, #0x14
	stmib sp, {r0, r6}
	str r6, [sp, #0xc]
	ldr r0, _020CDBB4 ; =0x0209F5C0
	mov r1, r6
	mov r2, #2
	mov r3, #0x1b
	str r6, [sp, #0x10]
	bl FUN_ov16_020f5c34
	mov r0, r6
	mov r1, r5
	mov r2, #1
	bl FUN_ov16_020f0e9c
	add sp, sp, #0x2c
	ldmfd sp!, {r3, r4, r5, r6, pc}
_020CDBB0: .word 0x020A0640
_020CDBB4: .word 0x0209F5C0
_020CDBB8: .word 0x02099EF0
	arm_func_end FUN_ov1_020cda34

	arm_func_start FUN_ov1_020cdbbc
FUN_ov1_020cdbbc: ; 0x020CDBBC
	stmfd sp!, {r3, r4, r5, r6, r7, r8, lr}
	sub sp, sp, #0x2c
	ldr r4, _020CDCE8 ; =0x02099EF0
	mov r8, r0
	ldr r0, [r4]
	mov r7, r1
	bl FUN_ov132_02144780
	movs r5, r0
	cmpne r5, #4
	cmpne r5, #8
	ldrne r0, _020CDCEC ; =0x0209BA20
	ldrneb r0, [r0, #0x87f]
	cmpne r0, #0
	addeq sp, sp, #0x2c
	ldmeqfd sp!, {r3, r4, r5, r6, r7, r8, pc}
	ldr r0, [r4]
	bl FUN_ov132_02144770
	bl FUN_ov16_020f0a14
	ldr r1, _020CDCF0 ; =0x020A0640
	mov r6, r0
	ldrb r0, [r1, #0x1a]
	cmp r0, #0
	beq _020CDC40
	ldr r0, _020CDCF4 ; =0x0209A2C0
	ldr r0, [r0, #0x48]
	cmp r0, #0
	bge _020CDC30
	ldr r0, [r4]
	bl FUN_ov126_0212f530
_020CDC30:
	cmp r0, #0
	blt _020CDC40
	bl FUN_ov16_020f077c
	mov r6, r0
_020CDC40:
	cmp r6, #0
	bne _020CDC54
	cmp r7, #0
	addeq sp, sp, #0x2c
	ldmeqfd sp!, {r3, r4, r5, r6, r7, r8, pc}
_020CDC54:
	cmp r5, #5
	ldreq r2, [r8, #0x5ac]
	ldrne r2, [r8, #0x5a0]
	cmp r2, #0
	beq _020CDCD0
	ldr r0, [r2, #0xc]
	mov r1, #0
	add r5, r2, r0
	mov r4, #5
	mov r3, #0x16
	mov r2, #2
	mov r0, #4
	strh r3, [sp, #0x18]
	strb r0, [sp, #0x24]
	strh r4, [sp, #0x14]
	strh r1, [sp, #0x16]
	strh r2, [sp, #0x1a]
	strh r1, [sp, #0x1c]
	strh r1, [sp, #0x1e]
	strh r1, [sp, #0x20]
	strh r1, [sp, #0x22]
	str r5, [sp, #0x28]
	mov r3, #8
	str r3, [sp]
	add r0, sp, #0x14
	stmib sp, {r0, r1}
	str r1, [sp, #0xc]
	ldr r0, _020CDCF8 ; =0x0209F5C0
	mov r3, #6
	str r1, [sp, #0x10]
	bl FUN_ov16_020f5c34
_020CDCD0:
	mov r0, #0
	mov r2, r0
	mov r1, #4
	bl FUN_ov16_020f0e9c
	add sp, sp, #0x2c
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, pc}
_020CDCE8: .word 0x02099EF0
_020CDCEC: .word 0x0209BA20
_020CDCF0: .word 0x020A0640
_020CDCF4: .word 0x0209A2C0
_020CDCF8: .word 0x0209F5C0
	arm_func_end FUN_ov1_020cdbbc

	arm_func_start FUN_ov1_020cdcfc
FUN_ov1_020cdcfc: ; 0x020CDCFC
	stmfd sp!, {r3, r4, lr}
	sub sp, sp, #0x2c
	mov r4, r0
	bl FUN_ov1_020db338
	cmp r0, #0
	mov r1, #0x800
	beq _020CDD34
	ldr r0, _020CDDBC ; =0x02099F14
	ldr r0, [r0]
	bl FUN_ov1_020e4354
	mov r0, #0
	add sp, sp, #0x2c
	strb r0, [r4, #0x21]
	ldmfd sp!, {r3, r4, pc}
_020CDD34:
	ldr r0, _020CDDBC ; =0x02099F14
	ldr r0, [r0]
	bl FUN_ov1_020e4328
	mov r1, #1
	strb r1, [r4, #0x21]
	ldr r0, _020CDDC0 ; =0x020EAAF0
	mov r1, #0
	ldrsh lr, [r0, #2]
	ldrsh r12, [r0]
	mov r2, #0x18
	mov r3, #0x100
	mov r0, #0xc0
	strh r3, [sp, #0x18]
	strh r0, [sp, #0x1a]
	strh r1, [sp, #0x14]
	strh r1, [sp, #0x16]
	strh r12, [sp, #0x1c]
	strh lr, [sp, #0x1e]
	strh r2, [sp, #0x20]
	strh r2, [sp, #0x22]
	strb r1, [sp, #0x24]
	str r1, [sp, #0x28]
	mov r2, #6
	str r2, [sp]
	add r0, sp, #0x14
	stmib sp, {r0, r1}
	str r1, [sp, #0xc]
	ldr r0, _020CDDC4 ; =0x0209F5C0
	mov r2, #2
	mov r3, #0x14
	str r1, [sp, #0x10]
	bl FUN_ov16_020f5c34
	add sp, sp, #0x2c
	ldmfd sp!, {r3, r4, pc}
_020CDDBC: .word 0x02099F14
_020CDDC0: .word 0x020EAAF0
_020CDDC4: .word 0x0209F5C0
	arm_func_end FUN_ov1_020cdcfc

	arm_func_start FUN_ov1_020cddc8
FUN_ov1_020cddc8: ; 0x020CDDC8
	stmfd sp!, {r3, r4, lr}
	sub sp, sp, #0x2c
	ldr r1, _020CDEA0 ; =0x02099EF0
	mov r4, r0
	ldr r0, [r1]
	bl FUN_ov132_02145ff0
	cmp r0, #0
	addeq sp, sp, #0x2c
	ldmeqfd sp!, {r3, r4, pc}
	bl FUN_ov1_020db338
	cmp r0, #0
	mov r1, #0x1000
	beq _020CDE18
	ldr r0, _020CDEA4 ; =0x02099F14
	ldr r0, [r0]
	bl FUN_ov1_020e4354
	mov r0, #0
	add sp, sp, #0x2c
	strb r0, [r4, #0x22]
	ldmfd sp!, {r3, r4, pc}
_020CDE18:
	ldr r0, _020CDEA4 ; =0x02099F14
	ldr r0, [r0]
	bl FUN_ov1_020e4328
	mov r1, #1
	strb r1, [r4, #0x22]
	ldr r0, _020CDEA8 ; =0x020EAAEC
	mov r1, #0
	ldrsh lr, [r0, #2]
	ldrsh r12, [r0]
	mov r2, #0x18
	mov r3, #0x100
	mov r0, #0xc0
	strh r3, [sp, #0x18]
	strh r0, [sp, #0x1a]
	strh r1, [sp, #0x14]
	strh r1, [sp, #0x16]
	strh r12, [sp, #0x1c]
	strh lr, [sp, #0x1e]
	strh r2, [sp, #0x20]
	strh r2, [sp, #0x22]
	strb r1, [sp, #0x24]
	str r1, [sp, #0x28]
	mov r2, #6
	str r2, [sp]
	add r0, sp, #0x14
	stmib sp, {r0, r1}
	str r1, [sp, #0xc]
	ldr r0, _020CDEAC ; =0x0209F5C0
	mov r2, #2
	mov r3, #0x15
	str r1, [sp, #0x10]
	bl FUN_ov16_020f5c34
	add sp, sp, #0x2c
	ldmfd sp!, {r3, r4, pc}
_020CDEA0: .word 0x02099EF0
_020CDEA4: .word 0x02099F14
_020CDEA8: .word 0x020EAAEC
_020CDEAC: .word 0x0209F5C0
	arm_func_end FUN_ov1_020cddc8

	arm_func_start FUN_ov1_020cdeb0
FUN_ov1_020cdeb0: ; 0x020CDEB0
	stmfd sp!, {r3, r4, lr}
	sub sp, sp, #0x2c
	ldr r1, _020CDF88 ; =0x02099EF0
	mov r4, r0
	ldr r0, [r1]
	bl FUN_ov132_02145ff0
	cmp r0, #0
	addeq sp, sp, #0x2c
	ldmeqfd sp!, {r3, r4, pc}
	bl FUN_ov1_020db338
	cmp r0, #0
	mov r1, #0x4000
	beq _020CDF00
	ldr r0, _020CDF8C ; =0x02099F14
	ldr r0, [r0]
	bl FUN_ov1_020e4354
	mov r0, #0
	add sp, sp, #0x2c
	strb r0, [r4, #0x23]
	ldmfd sp!, {r3, r4, pc}
_020CDF00:
	ldr r0, _020CDF8C ; =0x02099F14
	ldr r0, [r0]
	bl FUN_ov1_020e4328
	mov r1, #1
	strb r1, [r4, #0x23]
	ldr r0, _020CDF90 ; =0x020EAAE8
	mov r1, #0
	ldrsh lr, [r0, #2]
	ldrsh r12, [r0]
	mov r2, #0x18
	mov r3, #0x100
	mov r0, #0xc0
	strh r3, [sp, #0x18]
	strh r0, [sp, #0x1a]
	strh r1, [sp, #0x14]
	strh r1, [sp, #0x16]
	strh r12, [sp, #0x1c]
	strh lr, [sp, #0x1e]
	strh r2, [sp, #0x20]
	strh r2, [sp, #0x22]
	strb r1, [sp, #0x24]
	str r1, [sp, #0x28]
	mov r2, #6
	str r2, [sp]
	add r0, sp, #0x14
	stmib sp, {r0, r1}
	str r1, [sp, #0xc]
	ldr r0, _020CDF94 ; =0x0209F5C0
	mov r2, #2
	mov r3, #0x16
	str r1, [sp, #0x10]
	bl FUN_ov16_020f5c34
	add sp, sp, #0x2c
	ldmfd sp!, {r3, r4, pc}
_020CDF88: .word 0x02099EF0
_020CDF8C: .word 0x02099F14
_020CDF90: .word 0x020EAAE8
_020CDF94: .word 0x0209F5C0
	arm_func_end FUN_ov1_020cdeb0

	arm_func_start FUN_ov1_020cdf98
FUN_ov1_020cdf98: ; 0x020CDF98
	stmfd sp!, {r3, r4, lr}
	sub sp, sp, #0x2c
	ldr r2, [r0, #0x54c]
	cmp r2, #0
	addeq sp, sp, #0x2c
	ldmeqfd sp!, {r3, r4, pc}
	ldr r0, [r2, #0xc]
	mov r1, #0
	add r0, r2, r0
	add r4, r0, #0x18c
	mov lr, #5
	mov r12, #0xa
	mov r3, #0x16
	mov r2, #3
	mov r0, #7
	strh r3, [sp, #0x18]
	strh r2, [sp, #0x1a]
	strb r0, [sp, #0x24]
	strh lr, [sp, #0x14]
	strh r12, [sp, #0x16]
	strh r1, [sp, #0x1c]
	strh r1, [sp, #0x1e]
	strh r1, [sp, #0x20]
	strh r1, [sp, #0x22]
	str r4, [sp, #0x28]
	add r0, sp, #0x14
	str lr, [sp]
	stmib sp, {r0, r1}
	str r1, [sp, #0xc]
	ldr r0, _020CE028 ; =0x0209F5C0
	mov r2, #2
	mov r3, #8
	str r1, [sp, #0x10]
	bl FUN_ov16_020f5c34
	add sp, sp, #0x2c
	ldmfd sp!, {r3, r4, pc}
_020CE028: .word 0x0209F5C0
	arm_func_end FUN_ov1_020cdf98

	arm_func_start FUN_ov1_020ce02c
FUN_ov1_020ce02c: ; 0x020CE02C
	stmfd sp!, {r4, r5, r6, r7, lr}
	sub sp, sp, #0x2c
	mov r4, r0
	ldr r1, [r4, #0x54c]
	cmp r1, #0
	addeq sp, sp, #0x2c
	ldmeqfd sp!, {r4, r5, r6, r7, pc}
	ldr r0, [r1, #0xc]
	mov r7, #0
	add r0, r1, r0
	add lr, r0, #0x108
	mov r12, #5
	mov r3, #0xf
	mov r2, #0x16
	mov r1, #3
	mov r0, #7
	strh r2, [sp, #0x18]
	strh r1, [sp, #0x1a]
	strb r0, [sp, #0x24]
	strh r12, [sp, #0x14]
	strh r3, [sp, #0x16]
	mov r5, #8
	strh r7, [sp, #0x1c]
	strh r7, [sp, #0x1e]
	strh r7, [sp, #0x20]
	strh r7, [sp, #0x22]
	str lr, [sp, #0x28]
	add r0, sp, #0x14
	str r12, [sp]
	stmib sp, {r0, r7}
	ldr r6, _020CE118 ; =0x0209F5C0
	str r7, [sp, #0xc]
	mov r0, r6
	mov r1, r7
	mov r3, r5
	str r7, [sp, #0x10]
	mov r2, #2
	bl FUN_ov16_020f5c34
	ldrb r0, [r4, #0x1c]
	cmp r0, #0
	bne _020CE0EC
	mov r0, r6
	mov r1, r7
	mov r2, r5
	mov r3, #0x1e
	bl FUN_ov16_020f637c
	mov r0, #1
	strb r0, [r4, #0x1c]
_020CE0EC:
	ldr r0, _020CE11C ; =0x0209A100
	ldrb r0, [r0]
	cmp r0, #0
	addne sp, sp, #0x2c
	ldmnefd sp!, {r4, r5, r6, r7, pc}
	mov r0, #0
	mov r1, #7
	mov r2, #1
	bl FUN_ov16_020f0e9c
	add sp, sp, #0x2c
	ldmfd sp!, {r4, r5, r6, r7, pc}
_020CE118: .word 0x0209F5C0
_020CE11C: .word 0x0209A100
	arm_func_end FUN_ov1_020ce02c

	arm_func_start FUN_ov1_020ce120
FUN_ov1_020ce120: ; 0x020CE120
	stmfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, lr}
	sub sp, sp, #0x2c
	ldr r4, _020CE280 ; =0x0209AEC0
	mov r5, r0
	mov r0, r4
	bl FUN_02046744
	mov r11, r0
	mov r0, r4
	bl FUN_02046730
	ldr r6, [r5, #0x564]
	mov r8, r0
	cmp r6, #0
	ldrne r7, [r5, #0x570]
	cmpne r7, #0
	addeq sp, sp, #0x2c
	ldmeqfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
	mov r9, #0
	mov r10, r9
	mov r4, r9
	mov r5, #1
	b _020CE270
_020CE174:
	tst r11, r5, lsl r10
	cmpne r8, r10
	beq _020CE26C
	ldr r0, _020CE284 ; =0x020EAADC
	ldr r2, [r6, #0xc]
	ldrb r1, [r0, r10]
	mov r0, #0x1c
	add r2, r6, r2
	strh r0, [sp, #0x14]
	add r0, r2, r1, lsl #2
	str r0, [sp, #0x28]
	mov r0, #2
	strh r0, [sp, #0x18]
	mov r0, #0xb
	strb r0, [sp, #0x24]
	strh r9, [sp, #0x16]
	strh r5, [sp, #0x1a]
	strh r4, [sp, #0x1c]
	strh r4, [sp, #0x1e]
	strh r4, [sp, #0x20]
	strh r4, [sp, #0x22]
	mov r0, #5
	str r0, [sp]
	add r0, sp, #0x14
	stmib sp, {r0, r4}
	str r4, [sp, #0xc]
	ldr r0, _020CE288 ; =0x0209F5C0
	mov r1, r4
	mov r2, #2
	add r3, r9, #0xa
	str r4, [sp, #0x10]
	bl FUN_ov16_020f5c34
	mov r0, r10
	bl FUN_ov16_020f08a4
	ldr r2, [r7, #0xc]
	mov r1, r4
	add r2, r7, r2
	add r0, r2, r0, lsl #2
	str r0, [sp, #0x28]
	mov r0, #0x1e
	strh r0, [sp, #0x14]
	mov r0, #2
	strh r0, [sp, #0x18]
	mov r0, #0xb
	strb r0, [sp, #0x24]
	strh r9, [sp, #0x16]
	strh r5, [sp, #0x1a]
	strh r4, [sp, #0x1c]
	strh r4, [sp, #0x1e]
	strh r4, [sp, #0x20]
	strh r4, [sp, #0x22]
	mov r0, #5
	str r0, [sp]
	add r0, sp, #0x14
	stmib sp, {r0, r4}
	str r4, [sp, #0xc]
	ldr r0, _020CE288 ; =0x0209F5C0
	mov r2, #2
	add r3, r9, #0xd
	str r4, [sp, #0x10]
	bl FUN_ov16_020f5c34
	add r9, r9, #1
_020CE26C:
	add r10, r10, #1
_020CE270:
	cmp r10, #4
	blt _020CE174
	add sp, sp, #0x2c
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
_020CE280: .word 0x0209AEC0
_020CE284: .word 0x020EAADC
_020CE288: .word 0x0209F5C0
	arm_func_end FUN_ov1_020ce120

	arm_func_start FUN_ov1_020ce28c
FUN_ov1_020ce28c: ; 0x020CE28C
	stmfd sp!, {r3, r4, r5, r6, lr}
	sub sp, sp, #0x44
	ldr r1, _020CE4C4 ; =0x020A0640
	mov r4, r0
	ldrb r0, [r1, #0x1a]
	cmp r0, #0
	addeq sp, sp, #0x44
	ldmeqfd sp!, {r3, r4, r5, r6, pc}
	ldr r1, [r4, #8]
	cmp r1, #0x2a
	bgt _020CE348
	subs r0, r1, #0xa
	addpl pc, pc, r0, lsl #2
	b _020CE4BC
_020CE2C4: ; jump table
	b _020CE398 ; case 0
	b _020CE358 ; case 1
	b _020CE398 ; case 2
	b _020CE358 ; case 3
	b _020CE4BC ; case 4
	b _020CE358 ; case 5
	b _020CE4BC ; case 6
	b _020CE4BC ; case 7
	b _020CE398 ; case 8
	b _020CE358 ; case 9
	b _020CE434 ; case 10
	b _020CE4BC ; case 11
	b _020CE398 ; case 12
	b _020CE358 ; case 13
	b _020CE398 ; case 14
	b _020CE4BC ; case 15
	b _020CE358 ; case 16
	b _020CE4BC ; case 17
	b _020CE4BC ; case 18
	b _020CE4BC ; case 19
	b _020CE398 ; case 20
	b _020CE4BC ; case 21
	b _020CE4BC ; case 22
	b _020CE4BC ; case 23
	b _020CE398 ; case 24
	b _020CE4BC ; case 25
	b _020CE4BC ; case 26
	b _020CE4BC ; case 27
	b _020CE4BC ; case 28
	b _020CE4BC ; case 29
	b _020CE398 ; case 30
	b _020CE4BC ; case 31
	b _020CE398 ; case 32
_020CE348:
	cmp r1, #0x3d
	beq _020CE388
	add sp, sp, #0x44
	ldmfd sp!, {r3, r4, r5, r6, pc}
_020CE358:
	ldr r0, _020CE4C8 ; =0x02099EF0
	ldr r0, [r0]
	bl FUN_ov132_021434f8
	cmp r0, #0
	addne sp, sp, #0x44
	ldmnefd sp!, {r3, r4, r5, r6, pc}
	mov r0, r4
	bl FUN_ov1_020ce120
	mov r0, r4
	bl FUN_ov1_020ce02c
	add sp, sp, #0x44
	ldmfd sp!, {r3, r4, r5, r6, pc}
_020CE388:
	mov r0, r4
	bl FUN_ov1_020ce02c
	add sp, sp, #0x44
	ldmfd sp!, {r3, r4, r5, r6, pc}
_020CE398:
	ldr r1, [r4, #0x558]
	cmp r1, #0
	addeq sp, sp, #0x44
	ldmeqfd sp!, {r3, r4, r5, r6, pc}
	ldr r0, [r1, #0xc]
	mov r6, #0
	add r12, r1, r0
	mov r3, #0x1d
	mov r1, #3
	mov r2, #2
	mov r0, #7
	strh r1, [sp, #0x30]
	strb r0, [sp, #0x3c]
	strh r3, [sp, #0x2c]
	mov r4, #9
	strh r6, [sp, #0x2e]
	strh r2, [sp, #0x32]
	strh r6, [sp, #0x34]
	strh r6, [sp, #0x36]
	strh r6, [sp, #0x38]
	strh r6, [sp, #0x3a]
	str r12, [sp, #0x40]
	mov r1, #5
	str r1, [sp]
	add r0, sp, #0x2c
	stmib sp, {r0, r6}
	ldr r5, _020CE4CC ; =0x0209F5C0
	str r6, [sp, #0xc]
	mov r0, r5
	mov r1, r6
	mov r3, r4
	str r6, [sp, #0x10]
	bl FUN_ov16_020f5c34
	mov r0, r5
	mov r1, r6
	mov r2, r4
	bl FUN_ov16_020f63b0
	add sp, sp, #0x44
	ldmfd sp!, {r3, r4, r5, r6, pc}
_020CE434:
	ldr r1, [r4, #0x558]
	mov r6, #0
	ldr r0, [r1, #0xc]
	mov r3, #0x1d
	add r12, r1, r0
	mov r1, #3
	mov r2, #2
	mov r0, #7
	strh r1, [sp, #0x18]
	strb r0, [sp, #0x24]
	strh r3, [sp, #0x14]
	mov r4, #9
	strh r6, [sp, #0x16]
	strh r2, [sp, #0x1a]
	strh r6, [sp, #0x1c]
	strh r6, [sp, #0x1e]
	strh r6, [sp, #0x20]
	strh r6, [sp, #0x22]
	str r12, [sp, #0x28]
	mov r1, #5
	str r1, [sp]
	add r0, sp, #0x14
	stmib sp, {r0, r6}
	ldr r5, _020CE4CC ; =0x0209F5C0
	str r6, [sp, #0xc]
	mov r0, r5
	mov r1, r6
	mov r3, r4
	str r6, [sp, #0x10]
	bl FUN_ov16_020f5c34
	mov r0, r5
	mov r1, r6
	mov r2, r4
	bl FUN_ov16_020f63b0
_020CE4BC:
	add sp, sp, #0x44
	ldmfd sp!, {r3, r4, r5, r6, pc}
_020CE4C4: .word 0x020A0640
_020CE4C8: .word 0x02099EF0
_020CE4CC: .word 0x0209F5C0
	arm_func_end FUN_ov1_020ce28c

	arm_func_start FUN_ov1_020ce4d0
FUN_ov1_020ce4d0: ; 0x020CE4D0
	stmfd sp!, {r3, r4, r5, lr}
	mov r5, r0
	ldrb r0, [r5, #0x1d]
	cmp r0, #0
	ldmeqfd sp!, {r3, r4, r5, pc}
	ldr r0, _020CE930 ; =0x02099EF0
	ldr r0, [r0]
	bl FUN_ov132_021434f8
	cmp r0, #0
	beq _020CE504
	ldr r0, [r5, #8]
	cmp r0, #0x3d
	ldmnefd sp!, {r3, r4, r5, pc}
_020CE504:
	mov r4, #0
	ldr r0, _020CE934 ; =0x0209F5C0
	mov r1, r4
	mov r2, r4
	bl FUN_ov16_020f5ff4
	ldr r0, _020CE938 ; =0x0209A070
	bl FUN_ov16_020f6c4c
	mov r0, r4
	bl FUN_ov16_020f0e0c
	ldr r0, [r5, #8]
	cmp r0, #0x3d
	addls pc, pc, r0, lsl #2
	b _020CE924
_020CE538: ; jump table
	b _020CE924 ; case 0
	b _020CE924 ; case 1
	b _020CE924 ; case 2
	b _020CE924 ; case 3
	b _020CE630 ; case 4
	b _020CE924 ; case 5
	b _020CE924 ; case 6
	b _020CE924 ; case 7
	b _020CE924 ; case 8
	b _020CE924 ; case 9
	b _020CE91C ; case 10
	b _020CE658 ; case 11
	b _020CE91C ; case 12
	b _020CE6E4 ; case 13
	b _020CE924 ; case 14
	b _020CE864 ; case 15
	b _020CE8F0 ; case 16
	b _020CE900 ; case 17
	b _020CE91C ; case 18
	b _020CE750 ; case 19
	b _020CE924 ; case 20
	b _020CE924 ; case 21
	b _020CE91C ; case 22
	b _020CE7A8 ; case 23
	b _020CE91C ; case 24
	b _020CE8E0 ; case 25
	b _020CE7F4 ; case 26
	b _020CE924 ; case 27
	b _020CE924 ; case 28
	b _020CE924 ; case 29
	b _020CE91C ; case 30
	b _020CE8BC ; case 31
	b _020CE924 ; case 32
	b _020CE8D0 ; case 33
	b _020CE91C ; case 34
	b _020CE924 ; case 35
	b _020CE924 ; case 36
	b _020CE924 ; case 37
	b _020CE924 ; case 38
	b _020CE924 ; case 39
	b _020CE91C ; case 40
	b _020CE8A4 ; case 41
	b _020CE91C ; case 42
	b _020CE8A4 ; case 43
	b _020CE924 ; case 44
	b _020CE924 ; case 45
	b _020CE924 ; case 46
	b _020CE924 ; case 47
	b _020CE924 ; case 48
	b _020CE924 ; case 49
	b _020CE924 ; case 50
	b _020CE910 ; case 51
	b _020CE924 ; case 52
	b _020CE924 ; case 53
	b _020CE924 ; case 54
	b _020CE924 ; case 55
	b _020CE924 ; case 56
	b _020CE924 ; case 57
	b _020CE924 ; case 58
	b _020CE924 ; case 59
	b _020CE924 ; case 60
	b _020CE8B0 ; case 61
_020CE630:
	mov r0, r5
	bl FUN_ov1_020cdcfc
	mov r0, r5
	bl FUN_ov1_020cddc8
	mov r0, r5
	bl FUN_ov1_020cdeb0
	mov r0, r5
	mov r1, r4
	bl FUN_ov1_020cdbbc
	b _020CE924
_020CE658:
	ldr r0, [r5, #0xc]
	sub r0, r0, #0xb
	cmp r0, #5
	addls pc, pc, r0, lsl #2
	b _020CE924
_020CE66C: ; jump table
	b _020CE684 ; case 0
	b _020CE924 ; case 1
	b _020CE6B4 ; case 2
	b _020CE6C8 ; case 3
	b _020CE924 ; case 4
	b _020CE6D4 ; case 5
_020CE684:
	ldr r0, _020CE93C ; =0x0209AC44
	mov r1, #0x1e
	str r4, [r5, #0x5c]
	str r4, [r5, #0x60]
	bl FUN_0202cf6c
	mov r0, r5
	mov r1, #1
	bl FUN_ov1_020d2eb0
_020CE6A4:
	ldr r0, _020CE930 ; =0x02099EF0
	ldr r0, [r0]
	bl FUN_ov132_02147e9c
	b _020CE924
_020CE6B4:
	mov r0, r5
	bl FUN_ov1_020ce28c
	mov r0, r5
	bl FUN_ov1_020d30a0
	b _020CE924
_020CE6C8:
	mov r0, r5
	bl FUN_ov1_020d2f9c
	b _020CE924
_020CE6D4:
	mov r0, r5
	mov r1, #1
	bl FUN_ov1_020d497c
	b _020CE924
_020CE6E4:
	ldr r0, [r5, #0xc]
	sub r0, r0, #0x20
	cmp r0, #6
	addls pc, pc, r0, lsl #2
	b _020CE924
_020CE6F8: ; jump table
	b _020CE714 ; case 0
	b _020CE924 ; case 1
	b _020CE924 ; case 2
	b _020CE738 ; case 3
	b _020CE924 ; case 4
	b _020CE748 ; case 5
	b _020CE74C ; case 6
_020CE714:
	ldr r0, _020CE93C ; =0x0209AC44
	mov r1, #0x1e
	str r4, [r5, #0x5c]
	str r4, [r5, #0x60]
	bl FUN_0202cf6c
	mov r0, r5
	mov r1, #1
	bl FUN_ov1_020d2314
	b _020CE924
_020CE738:
	mov r0, r5
	mov r1, #1
	bl FUN_ov1_020d29d0
	b _020CE924
_020CE748:
	b _020CE6B4
_020CE74C:
	b _020CE6C8
_020CE750:
	ldr r0, [r5, #0xc]
	cmp r0, #0x3a
	beq _020CE770
	cmp r0, #0x3c
	beq _020CE794
	cmp r0, #0x3d
	beq _020CE7A4
	b _020CE924
_020CE770:
	ldr r0, _020CE93C ; =0x0209AC44
	mov r1, #0x1e
	str r4, [r5, #0x5c]
	str r4, [r5, #0x60]
	bl FUN_0202cf6c
	mov r0, r5
	mov r1, #1
	bl FUN_ov1_020d3828
	b _020CE6A4
_020CE794:
	ldrb r0, [r5, #0x2b0]
	cmp r0, #0
	bne _020CE924
	b _020CE6B4
_020CE7A4:
	b _020CE6C8
_020CE7A8:
	ldr r0, [r5, #0xc]
	cmp r0, #0x48
	beq _020CE7C8
	cmp r0, #0x4a
	beq _020CE7EC
	cmp r0, #0x4b
	beq _020CE7F0
	b _020CE924
_020CE7C8:
	ldr r0, _020CE93C ; =0x0209AC44
	mov r1, #0x1e
	str r4, [r5, #0x5c]
	str r4, [r5, #0x60]
	bl FUN_0202cf6c
	mov r0, r5
	mov r1, #1
	bl FUN_ov1_020d2314
	b _020CE6A4
_020CE7EC:
	b _020CE6B4
_020CE7F0:
	b _020CE6C8
_020CE7F4:
	ldr r0, [r5, #0xc]
	sub r0, r0, #0x4e
	cmp r0, #7
	addls pc, pc, r0, lsl #2
	b _020CE924
_020CE808: ; jump table
	b _020CE828 ; case 0
	b _020CE924 ; case 1
	b _020CE838 ; case 2
	b _020CE83C ; case 3
	b _020CE840 ; case 4
	b _020CE924 ; case 5
	b _020CE924 ; case 6
	b _020CE860 ; case 7
_020CE828:
	ldrb r1, [r5, #0x25]
	mov r0, r5
	bl FUN_ov1_020d3e48
	b _020CE924
_020CE838:
	b _020CE6B4
_020CE83C:
	b _020CE6C8
_020CE840:
	mov r0, r5
	mov r1, #1
	bl FUN_ov1_020cdbbc
	mov r0, r4
	mov r2, r4
	mov r1, #4
	bl FUN_ov16_020f0e9c
	b _020CE924
_020CE860:
	b _020CE6D4
_020CE864:
	ldr r0, [r5, #0xc]
	cmp r0, #0x33
	beq _020CE884
	cmp r0, #0x35
	beq _020CE89C
	cmp r0, #0x36
	beq _020CE8A0
	b _020CE924
_020CE884:
	ldr r0, _020CE93C ; =0x0209AC44
	mov r1, #0x1e
	bl FUN_0202cf6c
	mov r0, r5
	bl FUN_ov1_020d121c
	b _020CE924
_020CE89C:
	b _020CE6B4
_020CE8A0:
	b _020CE6C8
_020CE8A4:
	mov r0, r5
	bl FUN_ov1_020cd8a8
	b _020CE924
_020CE8B0:
	mov r0, r5
	bl FUN_ov1_020cda34
	b _020CE924
_020CE8BC:
	mov r0, r5
	mov r2, r4
	mov r1, #1
_020CE8C8:
	bl FUN_ov1_020ccc10
	b _020CE924
_020CE8D0:
	mov r0, r5
	mov r1, #1
	bl FUN_ov1_020cd2b8
	b _020CE924
_020CE8E0:
	mov r1, #1
	mov r0, r5
	mov r2, r1
	b _020CE8C8
_020CE8F0:
	mov r0, r5
	mov r1, #1
	mov r2, #3
	b _020CE8C8
_020CE900:
	mov r0, r5
	mov r1, #1
	mov r2, #2
	b _020CE8C8
_020CE910:
	mov r0, r5
	bl FUN_ov1_020cdf98
	b _020CE924
_020CE91C:
	mov r0, r5
	bl FUN_ov1_020ce28c
_020CE924:
	mov r0, #0
	strb r0, [r5, #0x1d]
	ldmfd sp!, {r3, r4, r5, pc}
_020CE930: .word 0x02099EF0
_020CE934: .word 0x0209F5C0
_020CE938: .word 0x0209A070
_020CE93C: .word 0x0209AC44
	arm_func_end FUN_ov1_020ce4d0

	arm_func_start FUN_ov1_020ce940
FUN_ov1_020ce940: ; 0x020CE940
	stmfd sp!, {r4, r5, r6, lr}
	ldr r12, _020CE994 ; =0x020EAB04
	mov r5, r2
	mov r6, r0
	mov r4, r3
	mov r0, r1
	str r5, [r12, r1, lsl #3]
	add r1, r12, r1, lsl #3
	str r4, [r1, #4]
	bl FUN_ov16_020f0a14
	cmp r0, #0
	ldmeqfd sp!, {r4, r5, r6, pc}
	ldr r0, _020CE998 ; =0x02099F14
	ldr r3, [sp, #0x10]
	ldr r0, [r0]
	mov r1, r5
	mov r2, r4
	bl FUN_ov1_020e3a24
	mov r0, #0x1e
	str r0, [r6, #0x50]
	ldmfd sp!, {r4, r5, r6, pc}
_020CE994: .word 0x020EAB04
_020CE998: .word 0x02099F14
	arm_func_end FUN_ov1_020ce940

	arm_func_start FUN_ov1_020ce99c
FUN_ov1_020ce99c: ; 0x020CE99C
	stmfd sp!, {r4, lr}
	ldr r2, _020CE9E0 ; =0x020EAB04
	mov r3, #0x80000000
	mov r4, r0
	mov r0, r1
	str r3, [r2, r1, lsl #3]
	add r1, r2, r1, lsl #3
	str r3, [r1, #4]
	bl FUN_ov16_020f0a14
	cmp r0, #0
	ldmeqfd sp!, {r4, pc}
	ldr r0, _020CE9E4 ; =0x02099F14
	ldr r0, [r0]
	bl FUN_ov1_020e3b14
	mov r0, #0
	str r0, [r4, #0x50]
	ldmfd sp!, {r4, pc}
_020CE9E0: .word 0x020EAB04
_020CE9E4: .word 0x02099F14
	arm_func_end FUN_ov1_020ce99c

	arm_func_start FUN_ov1_020ce9e8
FUN_ov1_020ce9e8: ; 0x020CE9E8
	stmfd sp!, {r3, r4, r5, lr}
	movs r4, r1
	mov r5, r0
	ldmmifd sp!, {r3, r4, r5, pc}
	ldr r0, _020CEA34 ; =0x020A0640
	ldrb r0, [r0, #0x1a]
	cmp r0, #0
	ldmeqfd sp!, {r3, r4, r5, pc}
	mov r0, r4
	bl FUN_ov16_020efa80
	cmp r0, #0
	ldmeqfd sp!, {r3, r4, r5, pc}
	bl FUN_ov16_020f081c
	mov r2, r0
	mov r0, r5
	and r3, r4, #0xff
	mov r1, #3
	bl FUN_ov1_020c383c
	ldmfd sp!, {r3, r4, r5, pc}
_020CEA34: .word 0x020A0640
	arm_func_end FUN_ov1_020ce9e8

	arm_func_start FUN_ov1_020cea38
FUN_ov1_020cea38: ; 0x020CEA38
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	mov r7, r0
	ldrb r0, [r7, #0x2c]
	mov r6, r1
	mov r5, r2
	cmp r0, #0
	mov r4, #0
	beq _020CEA78
	ldr r0, _020CEBD8 ; =0x0209A3E0
	ldr r0, [r0, #4]
	cmp r0, #0
	movne r0, #1
	moveq r0, r4
	cmp r0, #0
	ldmnefd sp!, {r3, r4, r5, r6, r7, pc}
	strb r4, [r7, #0x2c]
_020CEA78:
	ldr r0, [r7, #8]
	cmp r0, #2
	ldmlsfd sp!, {r3, r4, r5, r6, r7, pc}
	mov r0, r7
	bl FUN_ov1_020cc16c
	cmp r0, #0
	beq _020CEADC
	tst r6, #8
	beq _020CEADC
	ldr r0, _020CEBD8 ; =0x0209A3E0
	mov r1, r4
	bl FUN_ov16_020fe47c
	cmp r0, #0
	beq _020CEADC
	mov r5, #1
	ldr r0, _020CEBDC ; =0x0209AC44
	mov r1, r5
	bl FUN_0202cf6c
	sub r0, r5, #2
	strb r5, [r7, #0x2c]
	strb r4, [r7, #0x2e]
	strb r4, [r7, #0x2d]
	str r0, [r7, #0x38]
	str r0, [r7, #0x34]
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_020CEADC:
	tst r6, #4
	beq _020CEAF4
	mov r0, r7
	ldr r1, [r0]
	ldr r1, [r1, #0x70]
	blx r1
_020CEAF4:
	tst r5, #0x300
	beq _020CEB40
	ldr r0, _020CEBE0 ; =0x020AF81C
	bl FUN_02044600
	cmp r0, #0
	ldreq r0, [r7, #0x2c4]
	addeq r0, r0, #1
	streq r0, [r7, #0x2c4]
	strne r4, [r7, #0x2c4]
	ldr r0, [r7, #0x2c4]
	cmp r0, #0x3c
	ble _020CEB44
	ldr r0, _020CEBE4 ; =0x02099EF0
	ldr r1, [r0]
	ldrb r0, [r1, #0x374]
	cmp r0, #0
	moveq r0, #1
	streqb r0, [r1, #0x374]
	b _020CEB40
_020CEB40:
	str r4, [r7, #0x2c4]
_020CEB44:
	mov r0, r7
	bl FUN_ov1_020c1304
	mov r0, r7
	bl FUN_ov1_020cc034
	cmp r0, #0
	ldmeqfd sp!, {r3, r4, r5, r6, r7, pc}
	ldr r0, _020CEBE8 ; =0x00000CF3
	tst r5, r0
	beq _020CEBB8
	mov r3, #1
	mov r2, #0x1e
	ldr r1, _020CEBEC ; =0x0209A12C
	ldr r0, _020CEBF0 ; =0x0209A140
	strb r3, [r7, #0x2f]
	str r2, [r7, #0x4c]
	ldr r2, [r0]
	ldr r0, _020CEBE4 ; =0x02099EF0
	ldr r1, [r1]
	tst r5, #0x11
	addne r1, r1, #8
	tst r5, #0x820
	subne r1, r1, #8
	tst r5, #0x440
	subne r2, r2, #8
	tst r5, #0x82
	ldr r0, [r0]
	addne r2, r2, #8
	bl FUN_ov132_02148d74
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_020CEBB8:
	ldrb r0, [r7, #0x2f]
	cmp r0, #0
	ldmeqfd sp!, {r3, r4, r5, r6, r7, pc}
	ldr r0, _020CEBE4 ; =0x02099EF0
	strb r4, [r7, #0x2f]
	ldr r0, [r0]
	bl FUN_ov132_02148b24
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_020CEBD8: .word 0x0209A3E0
_020CEBDC: .word 0x0209AC44
_020CEBE0: .word 0x020AF81C
_020CEBE4: .word 0x02099EF0
_020CEBE8: .word 0x00000CF3
_020CEBEC: .word 0x0209A12C
_020CEBF0: .word 0x0209A140
	arm_func_end FUN_ov1_020cea38

	arm_func_start FUN_ov1_020cebf4
FUN_ov1_020cebf4: ; 0x020CEBF4
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, lr}
	mov r9, #0
	mov r10, r0
	ldr r6, _020CECC4 ; =0x020EAB04
	mov r11, #0x80000000
	mov r5, r9
	ldr r4, _020CECC8 ; =0x0209A2C0
	b _020CECB8
_020CEC14:
	add r0, r6, r9, lsl #3
	ldr r7, [r6, r9, lsl #3]
	ldr r8, [r0, #4]
	cmp r7, #0x80000000
	cmpgt r8, #0x80000000
	ble _020CECA8
	ldr r0, [r4, #0x48]
	cmp r0, #0
	blt _020CEC58
	bl FUN_ov16_020f07f4
	cmp r9, r0
	bne _020CECB4
	mov r0, r10
	mov r1, r7
	mov r2, r8
	bl FUN_ov1_020cf4a8
	b _020CECB4
_020CEC58:
	ldr r0, [r4, #0x4c]
	cmp r0, #0
	blt _020CECB4
	bl FUN_ov16_020f07f4
	cmp r9, r0
	bne _020CECB4
	ldr r0, _020CECCC ; =0x02099EF0
	mov r1, r9
	ldr r0, [r0]
	mov r2, r7
	mov r3, r8
	bl FUN_ov126_0212d47c
	mov r0, r10
	mov r2, r7
	mov r3, r8
	str r5, [sp]
	mov r1, r9
	bl FUN_ov1_020ce940
	str r5, [r10, #0x4c]
	b _020CECB4
_020CECA8:
	str r11, [r6, r9, lsl #3]
	add r0, r6, r9, lsl #3
	str r11, [r0, #4]
_020CECB4:
	add r9, r9, #1
_020CECB8:
	cmp r9, #2
	blt _020CEC14
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_020CECC4: .word 0x020EAB04
_020CECC8: .word 0x0209A2C0
_020CECCC: .word 0x02099EF0
	arm_func_end FUN_ov1_020cebf4

	arm_func_start FUN_ov1_020cecd0
FUN_ov1_020cecd0: ; 0x020CECD0
	stmfd sp!, {r3, r4, r5, lr}
	ldr r4, _020CED58 ; =0x02099EF0
	mov r5, r0
	ldr r0, [r4]
	bl FUN_ov132_021434f8
	cmp r0, #0
	ldmeqfd sp!, {r3, r4, r5, pc}
	ldr r0, _020CED5C ; =0x020A0640
	ldrb r0, [r0, #0x1a]
	cmp r0, #0
	beq _020CED4C
	mov r0, r5
	bl FUN_ov1_020cf59c
	cmp r0, #0
	ldmeqfd sp!, {r3, r4, r5, pc}
	ldr r0, _020CED60 ; =0x0209AEC0
	ldrb r0, [r0, #0x64]
	cmp r0, #0
	beq _020CED28
	ldr r0, [r4]
	bl FUN_ov132_02144764
	ldmfd sp!, {r3, r4, r5, pc}
_020CED28:
	bl FUN_ov16_020f081c
	mov r2, r0
	mov r4, #0
	mov r0, r5
	mov r1, #0xf
	mov r3, #0x1c
	str r4, [sp]
	bl FUN_ov1_020c3a24
	ldmfd sp!, {r3, r4, r5, pc}
_020CED4C:
	ldr r0, [r4]
	bl FUN_ov132_02144764
	ldmfd sp!, {r3, r4, r5, pc}
_020CED58: .word 0x02099EF0
_020CED5C: .word 0x020A0640
_020CED60: .word 0x0209AEC0
	arm_func_end FUN_ov1_020cecd0

	arm_func_start FUN_ov1_020ced64
FUN_ov1_020ced64: ; 0x020CED64
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	ldr r7, _020CEE90 ; =0x0209F5C0
	mov r4, r1
	mov r5, #0
	mov r6, r0
	mov r3, r2
	mov r0, r7
	mov r1, r5
	mov r2, r4
	bl FUN_ov16_020f6b3c
	mov r4, r0
	cmp r4, #0x1a
	beq _020CEDA4
	cmp r4, #0x1b
	beq _020CEE14
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_020CEDA4:
	ldr r0, _020CEE94 ; =0x0209AC44
	mov r1, #1
	bl FUN_0202cf6c
	mov r0, r7
	mov r1, r5
	mov r3, r5
	mov r2, #4
	bl FUN_ov16_020f5f64
	ldr r0, _020CEE98 ; =0x020A0640
	ldrb r0, [r0, #0x1a]
	cmp r0, #0
	beq _020CEE04
	ldr r0, _020CEE9C ; =0x0209AEC0
	ldrb r0, [r0, #0x64]
	cmp r0, #0
	bne _020CEE04
	bl FUN_ov16_020f081c
	mov r2, r0
	mov r0, r6
	and r3, r4, #0xff
	mov r1, #0xf
	str r5, [sp]
	bl FUN_ov1_020c3a24
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_020CEE04:
	mov r0, r6
	mov r1, #0x3c
	bl FUN_ov1_020bffd4
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_020CEE14:
	ldr r0, _020CEE94 ; =0x0209AC44
	mov r1, #1
	bl FUN_0202cf6c
	mov r0, r7
	mov r1, r5
	mov r3, r5
	mov r2, #4
	bl FUN_ov16_020f5f64
	ldr r0, _020CEE98 ; =0x020A0640
	ldrb r0, [r0, #0x1a]
	cmp r0, #0
	beq _020CEE84
	ldr r0, _020CEE9C ; =0x0209AEC0
	ldrb r0, [r0, #0x64]
	cmp r0, #0
	beq _020CEE64
	mov r0, r6
	mov r1, #0x3e
	bl FUN_ov1_020bffd4
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_020CEE64:
	bl FUN_ov16_020f081c
	mov r2, r0
	mov r0, r6
	and r3, r4, #0xff
	mov r1, #0xf
	str r5, [sp]
	bl FUN_ov1_020c3a24
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_020CEE84:
	mov r0, r6
	bl FUN_ov1_020c0d18
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_020CEE90: .word 0x0209F5C0
_020CEE94: .word 0x0209AC44
_020CEE98: .word 0x020A0640
_020CEE9C: .word 0x0209AEC0
	arm_func_end FUN_ov1_020ced64

	arm_func_start FUN_ov1_020ceea0
FUN_ov1_020ceea0: ; 0x020CEEA0
	stmfd sp!, {r4, r5, r6, r7, r8, lr}
	sub sp, sp, #0x20
	mov r7, r0
	mov r5, r2
	mov r6, r1
	mov r4, #0
	ldr r0, _020CF0E0 ; =0x0209F5C0
	mov r1, r4
	mov r2, r6
	mov r3, r5
	mov r8, #1
	bl FUN_ov16_020f6b3c
	cmp r0, #0x14
	beq _020CEEEC
	cmp r0, #0x15
	beq _020CEF84
	cmp r0, #0x16
	beq _020CF018
	b _020CF0A0
_020CEEEC:
	ldr r0, _020CF0E4 ; =0x0209A2C0
	ldrb r0, [r0, #0x5c]
	cmp r0, #0
	movne r4, r8
	cmp r4, #0
	addne sp, sp, #0x20
	ldmnefd sp!, {r4, r5, r6, r7, r8, pc}
	ldr r0, _020CF0E8 ; =0x02099EF0
	ldr r0, [r0]
	bl FUN_ov132_02144780
	cmp r0, #0
	addne sp, sp, #0x20
	ldmnefd sp!, {r4, r5, r6, r7, r8, pc}
	mov r0, r7
	bl FUN_ov1_020c1910
	cmp r0, #0
	addne sp, sp, #0x20
	ldmnefd sp!, {r4, r5, r6, r7, r8, pc}
	ldr r0, _020CF0EC ; =0x0209AC44
	mov r1, #1
	bl FUN_0202cf6c
	ldr r0, _020CF0F0 ; =0x020A0640
	ldrb r0, [r0, #0x1a]
	cmp r0, #0
	beq _020CEF70
	bl FUN_ov16_020f081c
	mov r2, r0
	mov r0, r7
	mov r1, #0xe
	mov r3, #0
	bl FUN_ov1_020c383c
	add sp, sp, #0x20
	ldmfd sp!, {r4, r5, r6, r7, r8, pc}
_020CEF70:
	mov r0, r7
	mov r1, #0x66
	bl FUN_ov1_020bffd4
	add sp, sp, #0x20
	ldmfd sp!, {r4, r5, r6, r7, r8, pc}
_020CEF84:
	ldr r0, _020CF0E4 ; =0x0209A2C0
	ldrb r0, [r0, #0x5c]
	cmp r0, #0
	movne r4, r8
	cmp r4, #0
	addne sp, sp, #0x20
	ldmnefd sp!, {r4, r5, r6, r7, r8, pc}
	ldr r0, _020CF0E8 ; =0x02099EF0
	ldr r0, [r0]
	bl FUN_ov132_02144780
	cmp r0, #0
	addne sp, sp, #0x20
	ldmnefd sp!, {r4, r5, r6, r7, r8, pc}
	mov r4, #1
	ldr r0, _020CF0EC ; =0x0209AC44
	mov r1, r4
	bl FUN_0202cf6c
	ldr r0, _020CF0F4 ; =0x0209A80C
	add r8, sp, #0x10
	ldmia r0, {r0, r1, r2, r3}
	stmia r8, {r0, r1, r2, r3}
	cmp r4, #0
	ldr r1, [sp, #0x10]
	ldr r0, [sp, #0x18]
	moveq r4, #0
	add r0, r1, r0
	add r0, r0, r0, lsr #31
	mov r3, r0, asr #1
	ldr r0, [sp, #0x1c]
	mov r1, r6
	str r0, [sp]
	mov r0, r7
	mov r2, r5
	str r4, [sp, #4]
	bl FUN_ov1_020cf0f8
	add sp, sp, #0x20
	ldmfd sp!, {r4, r5, r6, r7, r8, pc}
_020CF018:
	mov r0, r7
	bl FUN_ov1_020c1988
	cmp r0, #0
	addne sp, sp, #0x20
	ldmnefd sp!, {r4, r5, r6, r7, r8, pc}
	bl FUN_ov16_020f081c
	ldr r4, _020CF0E8 ; =0x02099EF0
	mov r5, r0
	ldr r0, [r4]
	bl FUN_ov132_02144780
	mov r2, r0
	ldr r0, [r4]
	mov r1, r5
	bl FUN_ov132_02159aa4
	cmp r0, #0
	addeq sp, sp, #0x20
	ldmeqfd sp!, {r4, r5, r6, r7, r8, pc}
	bl FUN_ov16_020f081c
	mov r1, r0
	ldr r0, [r4]
	mov r2, r8
	bl FUN_ov132_02159fd8
	cmp r0, #0
	addeq sp, sp, #0x20
	ldmeqfd sp!, {r4, r5, r6, r7, r8, pc}
	ldr r0, _020CF0EC ; =0x0209AC44
	mov r1, r8
	bl FUN_0202cf6c
	bl FUN_ov16_020f081c
	mov r1, r0
	mov r0, r7
	bl FUN_ov1_020d7c70
	add sp, sp, #0x20
	ldmfd sp!, {r4, r5, r6, r7, r8, pc}
_020CF0A0:
	add r2, sp, #0xc
	add r3, sp, #8
	mov r0, r6
	mov r1, r5
	bl FUN_ov16_020efd94 ; may be ov17
	cmp r4, #0
	ldr r1, [sp, #8]
	movne r4, r8
	stmia sp, {r1, r4}
	ldr r3, [sp, #0xc]
	mov r0, r7
	mov r1, r6
	mov r2, r5
	bl FUN_ov1_020cf0f8
	add sp, sp, #0x20
	ldmfd sp!, {r4, r5, r6, r7, r8, pc}
_020CF0E0: .word 0x0209F5C0
_020CF0E4: .word 0x0209A2C0
_020CF0E8: .word 0x02099EF0
_020CF0EC: .word 0x0209AC44
_020CF0F0: .word 0x020A0640
_020CF0F4: .word 0x0209A80C
	arm_func_end FUN_ov1_020ceea0

	arm_func_start FUN_ov1_020cf0f8
FUN_ov1_020cf0f8: ; 0x020CF0F8
	stmfd sp!, {r3, r4, r5, lr}
	ldrb r12, [sp, #0x14]
	mov r5, r0
	mov r4, r3
	cmp r12, #0
	bne _020CF11C
	bl FUN_ov1_020cf3d0
	cmp r0, #1
	ldmeqfd sp!, {r3, r4, r5, pc}
_020CF11C:
	ldrb r3, [sp, #0x14]
	ldr r2, [sp, #0x10]
	mov r0, r5
	mov r1, r4
	bl FUN_ov1_020cf150
	cmp r0, #1
	ldmeqfd sp!, {r3, r4, r5, pc}
	ldrb r3, [sp, #0x14]
	ldr r2, [sp, #0x10]
	mov r0, r5
	mov r1, r4
	bl FUN_ov1_020cf2bc
	ldmfd sp!, {r3, r4, r5, pc}
	arm_func_end FUN_ov1_020cf0f8

	arm_func_start FUN_ov1_020cf150
FUN_ov1_020cf150: ; 0x020CF150
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, lr}
	sub sp, sp, #8
	ldr r9, _020CF2AC ; =0x02099EF0
	mov r8, r0
	ldr r0, [r9]
	mov r7, r1
	mov r6, r2
	mov r5, r3
	mov r4, #0
	bl FUN_ov132_02144780
	mov r2, r0
	cmp r2, #4
	bne _020CF19C
	ldr r0, _020CF2B0 ; =0x0209AC44
	mov r1, #9
	bl FUN_0202cf6c
	add sp, sp, #8
	mov r0, r4
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
_020CF19C:
	cmp r2, #8
	bne _020CF1BC
	ldr r0, _020CF2B0 ; =0x0209AC44
	mov r1, #9
	bl FUN_0202cf6c
	add sp, sp, #8
	mov r0, r4
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
_020CF1BC:
	ldr r1, _020CF2B4 ; =0x0209A2C0
	ldr r0, [r1, #0x48]
	cmp r0, #0
	blt _020CF1FC
	str r6, [sp]
	ldr r0, [r9]
	mov r3, r7
	bl FUN_ov132_021454b4
	cmp r0, #0
	bne _020CF1FC
	ldr r0, _020CF2B0 ; =0x0209AC44
	mov r1, #9
	bl FUN_0202cf6c
	add sp, sp, #8
	mov r0, r4
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
_020CF1FC:
	ldr r0, _020CF2B4 ; =0x0209A2C0
	ldr r0, [r0, #0x48]
	cmp r0, #0
	blt _020CF2A0
	bl FUN_ov16_020f077c
	cmp r0, #1
	bne _020CF2A0
	cmp r5, #1
	bne _020CF238
	bl FUN_ov16_020f081c
	ldr r2, _020CF2AC ; =0x02099EF0
	mov r1, r0
	ldr r0, [r2]
	mov r2, #1
	b _020CF24C
_020CF238:
	bl FUN_ov16_020f081c
	ldr r2, _020CF2AC ; =0x02099EF0
	mov r1, r0
	ldr r0, [r2]
	mov r2, #0
_020CF24C:
	bl FUN_ov132_02147e84
	ldr r0, _020CF2B8 ; =0x020A0640
	ldrb r0, [r0, #0x1a]
	cmp r0, #0
	beq _020CF284
	bl FUN_ov16_020f081c
	mov r2, r0
	str r6, [sp]
	mov r0, r8
	mov r3, r7
	mov r1, #4
	str r4, [sp, #4]
	bl FUN_ov1_020c38e0
	b _020CF294
_020CF284:
	mov r0, r8
	mov r1, r7
	mov r2, r6
	bl FUN_ov1_020cf4a8
_020CF294:
	add sp, sp, #8
	mov r0, #1
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
_020CF2A0:
	mov r0, #0
	add sp, sp, #8
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
_020CF2AC: .word 0x02099EF0
_020CF2B0: .word 0x0209AC44
_020CF2B4: .word 0x0209A2C0
_020CF2B8: .word 0x020A0640
	arm_func_end FUN_ov1_020cf150

	arm_func_start FUN_ov1_020cf2bc
FUN_ov1_020cf2bc: ; 0x020CF2BC
	stmfd sp!, {r4, r5, r6, r7, r8, lr}
	sub sp, sp, #8
	ldr r4, _020CF3C4 ; =0x0209A2C0
	mov r6, r0
	ldr r0, [r4, #0x4c]
	mov r5, r1
	mov r4, r2
	mov r8, r3
	cmp r0, #0
	blt _020CF3B8
	bl FUN_ov16_020f077c
	cmp r0, #1
	bne _020CF3B8
	ldr r7, _020CF3C8 ; =0x02099EF0
	ldr r0, [r7]
	bl FUN_ov132_02150af8
	cmp r0, #1
	bne _020CF3B8
	cmp r8, #1
	bne _020CF320
	bl FUN_ov16_020f081c
	mov r1, r0
	ldr r0, [r7]
	mov r2, #1
	b _020CF330
_020CF320:
	bl FUN_ov16_020f081c
	mov r1, r0
	ldr r0, [r7]
	mov r2, #0
_020CF330:
	bl FUN_ov132_02147e84
	ldr r0, _020CF3CC ; =0x020A0640
	ldrb r0, [r0, #0x1a]
	cmp r0, #0
	beq _020CF36C
	bl FUN_ov16_020f081c
	mov r2, r0
	mov r0, r6
	mov r3, r5
	str r4, [sp]
	mov r4, #0
	mov r1, #7
	str r4, [sp, #4]
	bl FUN_ov1_020c38e0
	b _020CF3AC
_020CF36C:
	bl FUN_ov16_020f081c
	ldr r2, _020CF3C8 ; =0x02099EF0
	mov r1, r0
	ldr r0, [r2]
	mov r2, r5
	mov r3, r4
	bl FUN_ov126_0212d47c
	bl FUN_ov16_020f081c
	mov r2, r5
	mov r3, r4
	mov r1, r0
	mov r4, #0
	str r4, [sp]
	mov r0, r6
	bl FUN_ov1_020ce940
	str r4, [r6, #0x4c]
_020CF3AC:
	add sp, sp, #8
	mov r0, #1
	ldmfd sp!, {r4, r5, r6, r7, r8, pc}
_020CF3B8:
	mov r0, #0
	add sp, sp, #8
	ldmfd sp!, {r4, r5, r6, r7, r8, pc}
_020CF3C4: .word 0x0209A2C0
_020CF3C8: .word 0x02099EF0
_020CF3CC: .word 0x020A0640
	arm_func_end FUN_ov1_020cf2bc

	arm_func_start FUN_ov1_020cf3d0
FUN_ov1_020cf3d0: ; 0x020CF3D0
	stmfd sp!, {r4, r5, r6, r7, r8, lr}
	ldr r6, _020CF498 ; =0x02099EF0
	mov r4, r0
	ldr r0, [r6]
	mov r8, r1
	mov r7, r2
	bl FUN_ov132_02144780
	cmp r0, #0
	beq _020CF414
	cmp r0, #4
	cmpne r0, #8
	bne _020CF40C
	ldr r0, _020CF49C ; =0x0209AC44
	mov r1, #9
	bl FUN_0202cf6c
_020CF40C:
	mov r0, #0
	ldmfd sp!, {r4, r5, r6, r7, r8, pc}
_020CF414:
	ldr r5, _020CF4A0 ; =0x0209A2C0
	ldr r0, [r5, #0x48]
	cmp r0, #0
	blt _020CF490
	bl FUN_ov16_020f077c
	cmp r0, #1
	bne _020CF490
	mov r0, r4
	mov r1, r8
	mov r2, r7
	bl FUN_ov1_020be6c8
	ldr r1, [r5, #0x48]
	mov r5, r0
	cmp r5, r1
	bne _020CF490
	ldr r0, _020CF4A4 ; =0x020A0640
	ldrb r0, [r0, #0x1a]
	cmp r0, #1
	bne _020CF47C
	bl FUN_ov16_020f081c
	mov r2, r0
	mov r0, r4
	and r3, r5, #0xff
	mov r1, #8
	bl FUN_ov1_020c383c
	b _020CF488
_020CF47C:
	ldr r0, [r6]
	mov r1, r5
	bl FUN_ov132_02144488
_020CF488:
	mov r0, #1
	ldmfd sp!, {r4, r5, r6, r7, r8, pc}
_020CF490:
	mov r0, #0
	ldmfd sp!, {r4, r5, r6, r7, r8, pc}
_020CF498: .word 0x02099EF0
_020CF49C: .word 0x0209AC44
_020CF4A0: .word 0x0209A2C0
_020CF4A4: .word 0x020A0640
	arm_func_end FUN_ov1_020cf3d0

	arm_func_start FUN_ov1_020cf4a8
FUN_ov1_020cf4a8: ; 0x020CF4A8
	stmfd sp!, {r4, r5, r6, r7, r8, r9, r10, lr}
	sub sp, sp, #0x10
	ldr r3, _020CF594 ; =0x0209A2C0
	mov r9, r0
	ldr r0, [r3, #0x48]
	mov r8, r1
	mov r7, r2
	cmp r0, #0
	blt _020CF504
	bl FUN_ov16_020f07f4
	mov r4, r0
	bl FUN_ov16_020f081c
	cmp r4, r0
	bne _020CF504
	bl FUN_ov16_020f081c
	mov r1, r0
	mov r4, #0
	mov r0, r9
	mov r2, r8
	mov r3, r7
	str r4, [sp]
	bl FUN_ov1_020ce940
	str r4, [r9, #0x4c]
_020CF504:
	ldr r10, _020CF598 ; =0x02099EF0
	mov r4, #0
	ldr r0, [r10]
	mov r5, r4
	bl FUN_ov132_02144780
	movs r6, r0
	beq _020CF544
	ldr r0, [r10]
	ldrb r1, [r0, #0x32b]
	cmp r1, #0
	bne _020CF538
	mov r1, r4
	bl FUN_ov132_0214478c
_020CF538:
	mov r4, #1
	strb r4, [r9, #0x1d]
	orr r5, r5, #0x20
_020CF544:
	str r6, [sp]
	mov r0, #1
	str r0, [sp, #4]
	str r0, [sp, #8]
	ldr r6, _020CF598 ; =0x02099EF0
	str r5, [sp, #0xc]
	ldr r0, [r6]
	mov r1, r8
	mov r2, r7
	mov r3, #0
	bl FUN_ov126_0212c3bc
	cmp r4, #1
	addne sp, sp, #0x10
	ldmnefd sp!, {r4, r5, r6, r7, r8, r9, r10, pc}
	ldr r0, [r6]
	bl FUN_ov132_0213be70
	mov r0, r9
	bl FUN_ov1_020d80cc
	add sp, sp, #0x10
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, pc}
_020CF594: .word 0x0209A2C0
_020CF598: .word 0x02099EF0
	arm_func_end FUN_ov1_020cf4a8

	arm_func_start FUN_ov1_020cf59c
FUN_ov1_020cf59c: ; 0x020CF59C
	stmfd sp!, {r3, r4, r5, lr}
	ldr r4, _020CF634 ; =0x020A0640
	ldrb r0, [r4, #0x1a]
	cmp r0, #0
	moveq r0, #0
	ldmeqfd sp!, {r3, r4, r5, pc}
	ldr r0, _020CF638 ; =0x02099EF0
	ldr r0, [r0]
	bl FUN_ov132_02143b6c
	cmp r0, #0
	moveq r0, #0
	ldmeqfd sp!, {r3, r4, r5, pc}
	ldrb r1, [r4, #0x1b]
	cmp r1, #0
	beq _020CF628
	ldrsh r0, [r0, #4]
	bl FUN_ov16_020efa80
	movs r4, r0
	beq _020CF5FC
	cmp r4, #0
	beq _020CF604
	bl FUN_0206d6c4
	cmp r0, #0
	beq _020CF604
_020CF5FC:
	bl FUN_ov16_020f0944 ; may be ov17
	ldmfd sp!, {r3, r4, r5, pc}
_020CF604:
	cmp r4, #0
	mov r5, #0
	beq _020CF620
	mov r0, r4
	bl FUN_ov16_020f08bc
	cmp r0, #0
	movne r5, #1
_020CF620:
	mov r0, r5
	ldmfd sp!, {r3, r4, r5, pc}
_020CF628:
	ldrb r0, [r0, #6]
	bl FUN_ov16_020f0a14
	ldmfd sp!, {r3, r4, r5, pc}
_020CF634: .word 0x020A0640
_020CF638: .word 0x02099EF0
	arm_func_end FUN_ov1_020cf59c

	arm_func_start FUN_ov1_020cf63c
FUN_ov1_020cf63c: ; 0x020CF63C
	stmfd sp!, {r3, lr}
	ldr r12, [r0, #8]
	cmp r12, #0x17
	bgt _020CF694
	bge _020CF77C
	cmp r12, #4
	bgt _020CF660
	beq _020CF6B8
	ldmfd sp!, {r3, pc}
_020CF660:
	sub r3, r12, #0xb
	cmp r3, #8
	addls pc, pc, r3, lsl #2
	ldmfd sp!, {r3, pc}
_020CF670: ; jump table
	b _020CF6C0 ; case 0
	ldmfd sp!, {r3, pc} ; case 1
	b _020CF6F8 ; case 2
	ldmfd sp!, {r3, pc} ; case 3
	b _020CF810 ; case 4
	ldmfd sp!, {r3, pc} ; case 5
	ldmfd sp!, {r3, pc} ; case 6
	ldmfd sp!, {r3, pc} ; case 7
	b _020CF73C ; case 8
_020CF694:
	cmp r12, #0x3c
	bgt _020CF6AC
	bge _020CF844
	cmp r12, #0x1a
	beq _020CF7B0
	ldmfd sp!, {r3, pc}
_020CF6AC:
	cmp r12, #0x3d
	beq _020CF84C
	ldmfd sp!, {r3, pc}
_020CF6B8:
	bl FUN_ov1_020ceea0
	ldmfd sp!, {r3, pc}
_020CF6C0:
	ldr r3, [r0, #0xc]
	cmp r3, #0xc
	bne _020CF6D8
	mov r3, #0
	bl FUN_ov1_020d3590
	ldmfd sp!, {r3, pc}
_020CF6D8:
	sub r3, r3, #0xd
	cmp r3, #1
	ldmhifd sp!, {r3, pc}
	mov r12, #0xd
	mov r3, #9
	str r12, [sp]
	bl FUN_ov1_020d47a4
	ldmfd sp!, {r3, pc}
_020CF6F8:
	ldr r3, [r0, #0xc]
	cmp r3, #0x21
	bne _020CF70C
	bl FUN_ov1_020d2888
	ldmfd sp!, {r3, pc}
_020CF70C:
	cmp r3, #0x24
	bne _020CF71C
	bl FUN_ov1_020d2d44
	ldmfd sp!, {r3, pc}
_020CF71C:
	sub r3, r3, #0x25
	cmp r3, #1
	ldmhifd sp!, {r3, pc}
	mov r12, #0x25
	mov r3, #0xa
	str r12, [sp]
	bl FUN_ov1_020d47a4
	ldmfd sp!, {r3, pc}
_020CF73C:
	ldrb r3, [r0, #0x2b0]
	cmp r3, #0
	ldmnefd sp!, {r3, pc}
	ldr r3, [r0, #0xc]
	cmp r3, #0x3b
	bne _020CF75C
	bl FUN_ov1_020d3cd4
	ldmfd sp!, {r3, pc}
_020CF75C:
	sub r3, r3, #0x3c
	cmp r3, #1
	ldmhifd sp!, {r3, pc}
	mov r12, #0x3c
	mov r3, #0xa
	str r12, [sp]
	bl FUN_ov1_020d47a4
	ldmfd sp!, {r3, pc}
_020CF77C:
	ldr r3, [r0, #0xc]
	cmp r3, #0x49
	bne _020CF790
	bl FUN_ov1_020d2888
	ldmfd sp!, {r3, pc}
_020CF790:
	sub r3, r3, #0x4a
	cmp r3, #1
	ldmhifd sp!, {r3, pc}
	mov r12, #0x4a
	mov r3, #0xa
	str r12, [sp]
	bl FUN_ov1_020d47a4
	ldmfd sp!, {r3, pc}
_020CF7B0:
	ldr r12, [r0, #0xc]
	cmp r12, #0x4f
	bne _020CF7DC
	ldr r12, [r0, #0x38]
	cmp r12, #0
	ldmeqfd sp!, {r3, pc}
	ldr r3, [r0, #0x34]
	cmp r3, r12
	ldmnefd sp!, {r3, pc}
	bl FUN_ov1_020d4708
	ldmfd sp!, {r3, pc}
_020CF7DC:
	sub r3, r12, #0x50
	cmp r3, #1
	bhi _020CF7FC
	mov r12, #0x50
	mov r3, #0xa
	str r12, [sp]
	bl FUN_ov1_020d47a4
	ldmfd sp!, {r3, pc}
_020CF7FC:
	cmp r12, #0x52
	ldmnefd sp!, {r3, pc}
	mov r3, #1
	bl FUN_ov1_020d3590
	ldmfd sp!, {r3, pc}
_020CF810:
	ldr r3, [r0, #0xc]
	cmp r3, #0x34
	bne _020CF824
	bl FUN_ov1_020d1124
	ldmfd sp!, {r3, pc}
_020CF824:
	sub r3, r3, #0x35
	cmp r3, #1
	ldmhifd sp!, {r3, pc}
	mov r12, #0x35
	mov r3, #0xc
	str r12, [sp]
	bl FUN_ov1_020d47a4
	ldmfd sp!, {r3, pc}
_020CF844:
	bl FUN_ov1_020cecd0
	ldmfd sp!, {r3, pc}
_020CF84C:
	bl FUN_ov1_020ced64
	ldmfd sp!, {r3, pc}
	arm_func_end FUN_ov1_020cf63c

	arm_func_start FUN_ov1_020cf854
FUN_ov1_020cf854: ; 0x020CF854
	stmfd sp!, {r4, r5, r6, r7, r8, r9, r10, lr}
	sub sp, sp, #0x10
	mov r8, r0
	ldr r0, [r8, #0x34]
	mov r4, #0
	cmp r0, #0
	ldrlt r0, [r8, #0x38]
	mov r7, r1
	strlt r0, [r8, #0x34]
	ldr r0, [r8, #0x34]
	mov r6, r2
	movlt r4, #1
	mov r9, #0
	bl FUN_ov16_020efa80
	movs r5, r0
	addeq sp, sp, #0x10
	ldmeqfd sp!, {r4, r5, r6, r7, r8, r9, r10, pc}
	ldr r0, _020CFA78 ; =0x02099EF0
	ldr r0, [r0]
	cmp r0, #0
	beq _020CF8C4
	bl FUN_ov126_021375d4
	cmp r0, #0
	addeq sp, sp, #0x10
	ldmeqfd sp!, {r4, r5, r6, r7, r8, r9, r10, pc}
	ldrsb r0, [r0, #0xc]
	bl FUN_ov16_020f07f4
	mov r9, r0
_020CF8C4:
	mov r0, r5
	bl FUN_0206d6d8
	cmp r0, #0
	beq _020CF904
	mov r0, r5
	bl FUN_ov16_020f0810
	cmp r9, r0
	beq _020CF904
	ldr r0, [r8, #8]
	cmp r0, #0xd
	cmpne r0, #0xf
	cmpne r0, #0x17
	mvneq r0, #0
	addeq sp, sp, #0x10
	streq r0, [r8, #0x34]
	ldmeqfd sp!, {r4, r5, r6, r7, r8, r9, r10, pc}
_020CF904:
	ldr r9, _020CFA78 ; =0x02099EF0
	mov r1, r5
	ldr r0, [r9]
	bl FUN_ov126_02139298
	cmp r4, #0
	beq _020CF960
	ldr r0, _020CFA7C ; =0x020A0640
	ldrb r0, [r0, #0x1a]
	cmp r0, #0
	beq _020CF950
	bl FUN_ov16_020f081c
	ldrsh r1, [r5, #0x94]
	mov r2, r0
	mov r0, r8
	and r3, r1, #0xff
	mov r1, #1
	bl FUN_ov1_020c383c
	add sp, sp, #0x10
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, pc}
_020CF950:
	mov r0, r5
	bl FUN_0206da98
	add sp, sp, #0x10
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, pc}
_020CF960:
	ldr r0, [r5, #0x88]
	ldrb r0, [r0, #0x85]
	cmp r0, #0xa
	addhs sp, sp, #0x10
	ldmhsfd sp!, {r4, r5, r6, r7, r8, r9, r10, pc}
	add r10, sp, #0xc
	add r4, sp, #8
	mov r0, r7
	mov r1, r6
	mov r2, r10
	mov r3, r4
	str r7, [r8, #0x44]
	str r6, [r8, #0x48]
	bl FUN_ov16_020efd94 ; may be ov17
	str r10, [sp]
	str r4, [sp, #4]
	ldr r0, [r9]
	ldr r2, [sp, #0xc]
	ldr r3, [sp, #8]
	mov r1, r5
	bl FUN_ov132_021453cc
	ldr r1, [r5, #0x88]
	ldrb r0, [r1, #0x85]
	cmp r0, #0
	ble _020CF9F0
	sub r0, r0, #1
	add r2, r1, r0, lsl #3
	ldr r1, [sp, #0xc]
	ldr r0, [r2, #0x34]
	cmp r1, r0
	bne _020CF9F0
	ldr r1, [sp, #8]
	ldr r0, [r2, #0x38]
	cmp r1, r0
	addeq sp, sp, #0x10
	ldmeqfd sp!, {r4, r5, r6, r7, r8, r9, r10, pc}
_020CF9F0:
	ldr r0, _020CFA7C ; =0x020A0640
	ldrb r0, [r0, #0x1a]
	cmp r0, #0
	beq _020CFA34
	bl FUN_ov16_020f081c
	ldr r1, [sp, #8]
	mov r2, r0
	str r1, [sp]
	ldrsh r3, [r5, #0x94]
	mov r0, r8
	mov r1, #2
	and r3, r3, #0xff
	str r3, [sp, #4]
	ldr r3, [sp, #0xc]
	bl FUN_ov1_020c38e0
	add sp, sp, #0x10
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, pc}
_020CFA34:
	ldr r0, [r5, #0x88]
	ldr r3, [sp, #8]
	ldrb r1, [r0, #0x85]
	add r0, r0, #0x34
	ldr r2, [sp, #0xc]
	add r0, r0, r1, lsl #3
	stmia r0, {r2, r3}
	ldr r3, [r5, #0x88]
	ldr r0, _020CFA78 ; =0x02099EF0
	ldrb r2, [r3, #0x85]
	mov r1, r5
	add r2, r2, #1
	strb r2, [r3, #0x85]
	ldr r0, [r0]
	bl FUN_ov132_0213bd7c
	add sp, sp, #0x10
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, pc}
_020CFA78: .word 0x02099EF0
_020CFA7C: .word 0x020A0640
	arm_func_end FUN_ov1_020cf854

	arm_func_start FUN_ov1_020cfa80
FUN_ov1_020cfa80: ; 0x020CFA80
	ldrb r0, [r0, #0x21]
	cmp r0, #0
	beq _020CFAC4
	ldr r0, _020CFACC ; =0x020EAAF0
	ldrsh r3, [r0]
	cmp r1, r3
	blt _020CFAC4
	add r3, r3, #0x18
	cmp r1, r3
	bge _020CFAC4
	ldrsh r0, [r0, #2]
	cmp r2, r0
	blt _020CFAC4
	add r0, r0, #0x18
	cmp r2, r0
	movlt r0, #1
	bxlt lr
_020CFAC4:
	mov r0, #0
	bx lr
_020CFACC: .word 0x020EAAF0
	arm_func_end FUN_ov1_020cfa80

	arm_func_start FUN_ov1_020cfad0
FUN_ov1_020cfad0: ; 0x020CFAD0
	stmfd sp!, {r3, r4, r5, r6, lr}
	sub sp, sp, #0x14
	mov r6, r0
	ldrb r0, [r6, #0x21]
	mov r5, r1
	mov r4, r2
	cmp r0, #0
	addeq sp, sp, #0x14
	ldmeqfd sp!, {r3, r4, r5, r6, pc}
	str r5, [r6, #0x44]
	subs r5, r5, #0xc
	str r4, [r6, #0x48]
	movmi r5, #0
	cmp r5, #0xe8
	movgt r5, #0xe8
	sub r4, r4, #0xc
	cmp r4, #0
	movlt r4, #0
	cmp r4, #0xa8
	movgt r4, #0xa8
	str r5, [sp, #0xc]
	str r4, [sp, #0x10]
	ldrb r0, [r6, #0x22]
	cmp r0, #0
	beq _020CFBCC
	ldr r0, _020CFC20 ; =0x020EAAEC
	sub lr, sp, #4
	ldrh r3, [r0]
	ldrh r2, [r0, #2]
	ldr r0, _020CFC24 ; =0x020EAAE8
	add r1, sp, #0xc
	strh r3, [lr]
	strh r2, [lr, #2]
	ldrh r12, [r0]
	ldrh r3, [r0, #2]
	ldr r2, [lr]
	mov r0, r6
	strh r12, [lr]
	strh r3, [lr, #2]
	ldr r3, [lr]
	bl FUN_ov1_020be8c4
	cmp r0, #0
	ldr r0, _020CFC24 ; =0x020EAAE8
	ldrne r5, [sp, #0xc]
	ldrh r3, [r0]
	ldrh r2, [r0, #2]
	ldrne r4, [sp, #0x10]
	sub lr, sp, #4
	strh r3, [lr]
	strh r2, [lr, #2]
	ldr r0, _020CFC20 ; =0x020EAAEC
	ldr r2, [lr]
	ldrh r12, [r0]
	ldrh r3, [r0, #2]
	add r1, sp, #0xc
	mov r0, r6
	strh r12, [lr]
	strh r3, [lr, #2]
	ldr r3, [lr]
	bl FUN_ov1_020be8c4
	cmp r0, #0
	ldrne r5, [sp, #0xc]
	ldrne r4, [sp, #0x10]
_020CFBCC:
	ldr r1, _020CFC28 ; =0x020EAAF0
	mov r0, r5, lsl #0x10
	ldrsh r2, [r1]
	cmp r2, r0, asr #16
	ldreqsh r0, [r1, #2]
	cmpeq r0, r4
	addeq sp, sp, #0x14
	ldmeqfd sp!, {r3, r4, r5, r6, pc}
	ldr r0, _020CFC28 ; =0x020EAAF0
	mov r6, #0x18
	strh r5, [r0]
	strh r4, [r0, #2]
	stmia sp, {r4, r6}
	ldr r0, _020CFC2C ; =0x0209F5C0
	mov r3, r5
	mov r1, #0
	mov r2, #0x14
	str r6, [sp, #8]
	bl FUN_ov16_020f6470
	add sp, sp, #0x14
	ldmfd sp!, {r3, r4, r5, r6, pc}
_020CFC20: .word 0x020EAAEC
_020CFC24: .word 0x020EAAE8
_020CFC28: .word 0x020EAAF0
_020CFC2C: .word 0x0209F5C0
	arm_func_end FUN_ov1_020cfad0

	arm_func_start FUN_ov1_020cfc30
FUN_ov1_020cfc30: ; 0x020CFC30
	ldrb r0, [r0, #0x22]
	cmp r0, #0
	beq _020CFC74
	ldr r0, _020CFC7C ; =0x020EAAEC
	ldrsh r3, [r0]
	cmp r1, r3
	blt _020CFC74
	add r3, r3, #0x18
	cmp r1, r3
	bge _020CFC74
	ldrsh r0, [r0, #2]
	cmp r2, r0
	blt _020CFC74
	add r0, r0, #0x18
	cmp r2, r0
	movlt r0, #1
	bxlt lr
_020CFC74:
	mov r0, #0
	bx lr
_020CFC7C: .word 0x020EAAEC
	arm_func_end FUN_ov1_020cfc30

	arm_func_start FUN_ov1_020cfc80
FUN_ov1_020cfc80: ; 0x020CFC80
	ldrb r0, [r0, #0x23]
	cmp r0, #0
	beq _020CFCC4
	ldr r0, _020CFCCC ; =0x020EAAE8
	ldrsh r3, [r0]
	cmp r1, r3
	blt _020CFCC4
	add r3, r3, #0x18
	cmp r1, r3
	bge _020CFCC4
	ldrsh r0, [r0, #2]
	cmp r2, r0
	blt _020CFCC4
	add r0, r0, #0x18
	cmp r2, r0
	movlt r0, #1
	bxlt lr
_020CFCC4:
	mov r0, #0
	bx lr
_020CFCCC: .word 0x020EAAE8
	arm_func_end FUN_ov1_020cfc80

	arm_func_start FUN_ov1_020cfcd0
FUN_ov1_020cfcd0: ; 0x020CFCD0
	stmfd sp!, {r3, r4, r5, r6, lr}
	sub sp, sp, #0x14
	mov r6, r0
	ldrb r0, [r6, #0x22]
	mov r5, r1
	mov r4, r2
	cmp r0, #0
	addeq sp, sp, #0x14
	ldmeqfd sp!, {r3, r4, r5, r6, pc}
	str r5, [r6, #0x44]
	sub r5, r5, #0xc
	cmp r5, #0xe8
	str r4, [r6, #0x48]
	movgt r5, #0xe8
	bgt _020CFD14
	cmp r5, #0
	movlt r5, #0
_020CFD14:
	sub r4, r4, #0xc
	cmp r4, #0xa8
	movgt r4, #0xa8
	bgt _020CFD2C
	cmp r4, #0
	movlt r4, #0
_020CFD2C:
	ldr r0, _020CFE20 ; =0x020EAAF0
	str r5, [sp, #0xc]
	str r4, [sp, #0x10]
	ldrh r2, [r0]
	ldrh r1, [r0, #2]
	sub r12, sp, #4
	ldr r0, _020CFE24 ; =0x020EAAE8
	strh r2, [r12]
	strh r1, [r12, #2]
	ldrh r3, [r0]
	ldrh r0, [r0, #2]
	ldr r2, [r12]
	add r1, sp, #0xc
	strh r3, [r12]
	strh r0, [r12, #2]
	ldr r3, [r12]
	mov r0, r6
	bl FUN_ov1_020be8c4
	cmp r0, #0
	ldr r0, _020CFE24 ; =0x020EAAE8
	ldrne r5, [sp, #0xc]
	ldrh r3, [r0]
	ldrh r2, [r0, #2]
	ldrne r4, [sp, #0x10]
	sub lr, sp, #4
	strh r3, [lr]
	strh r2, [lr, #2]
	ldr r0, _020CFE20 ; =0x020EAAF0
	ldr r2, [lr]
	ldrh r12, [r0]
	ldrh r3, [r0, #2]
	add r1, sp, #0xc
	mov r0, r6
	strh r12, [lr]
	strh r3, [lr, #2]
	ldr r3, [lr]
	bl FUN_ov1_020be8c4
	cmp r0, #0
	ldr r1, _020CFE28 ; =0x020EAAEC
	ldrne r5, [sp, #0xc]
	ldrsh r2, [r1]
	mov r0, r5, lsl #0x10
	ldrne r4, [sp, #0x10]
	cmp r2, r0, asr #16
	ldreqsh r0, [r1, #2]
	cmpeq r0, r4
	addeq sp, sp, #0x14
	ldmeqfd sp!, {r3, r4, r5, r6, pc}
	ldr r0, _020CFE28 ; =0x020EAAEC
	mov r6, #0x18
	strh r5, [r0]
	strh r4, [r0, #2]
	stmia sp, {r4, r6}
	ldr r0, _020CFE2C ; =0x0209F5C0
	mov r3, r5
	mov r1, #0
	mov r2, #0x15
	str r6, [sp, #8]
	bl FUN_ov16_020f6470
	add sp, sp, #0x14
	ldmfd sp!, {r3, r4, r5, r6, pc}
_020CFE20: .word 0x020EAAF0
_020CFE24: .word 0x020EAAE8
_020CFE28: .word 0x020EAAEC
_020CFE2C: .word 0x0209F5C0
	arm_func_end FUN_ov1_020cfcd0

	arm_func_start FUN_ov1_020cfe30
FUN_ov1_020cfe30: ; 0x020CFE30
	stmfd sp!, {r3, r4, r5, r6, lr}
	sub sp, sp, #0x14
	mov r6, r0
	ldrb r0, [r6, #0x23]
	mov r5, r1
	mov r4, r2
	cmp r0, #0
	addeq sp, sp, #0x14
	ldmeqfd sp!, {r3, r4, r5, r6, pc}
	str r5, [r6, #0x44]
	sub r5, r5, #0xc
	cmp r5, #0xe8
	str r4, [r6, #0x48]
	movgt r5, #0xe8
	bgt _020CFE74
	cmp r5, #0
	movlt r5, #0
_020CFE74:
	sub r4, r4, #0xc
	cmp r4, #0xa8
	movgt r4, #0xa8
	bgt _020CFE8C
	cmp r4, #0
	movlt r4, #0
_020CFE8C:
	ldr r0, _020CFF80 ; =0x020EAAF0
	str r5, [sp, #0xc]
	str r4, [sp, #0x10]
	ldrh r2, [r0]
	ldrh r1, [r0, #2]
	sub r12, sp, #4
	ldr r0, _020CFF84 ; =0x020EAAEC
	strh r2, [r12]
	strh r1, [r12, #2]
	ldrh r3, [r0]
	ldrh r0, [r0, #2]
	ldr r2, [r12]
	add r1, sp, #0xc
	strh r3, [r12]
	strh r0, [r12, #2]
	ldr r3, [r12]
	mov r0, r6
	bl FUN_ov1_020be8c4
	cmp r0, #0
	ldr r0, _020CFF84 ; =0x020EAAEC
	ldrne r5, [sp, #0xc]
	ldrh r3, [r0]
	ldrh r2, [r0, #2]
	ldrne r4, [sp, #0x10]
	sub lr, sp, #4
	strh r3, [lr]
	strh r2, [lr, #2]
	ldr r0, _020CFF80 ; =0x020EAAF0
	ldr r2, [lr]
	ldrh r12, [r0]
	ldrh r3, [r0, #2]
	add r1, sp, #0xc
	mov r0, r6
	strh r12, [lr]
	strh r3, [lr, #2]
	ldr r3, [lr]
	bl FUN_ov1_020be8c4
	cmp r0, #0
	ldr r1, _020CFF88 ; =0x020EAAE8
	ldrne r5, [sp, #0xc]
	ldrsh r2, [r1]
	mov r0, r5, lsl #0x10
	ldrne r4, [sp, #0x10]
	cmp r2, r0, asr #16
	ldreqsh r0, [r1, #2]
	cmpeq r0, r4
	addeq sp, sp, #0x14
	ldmeqfd sp!, {r3, r4, r5, r6, pc}
	ldr r0, _020CFF88 ; =0x020EAAE8
	mov r6, #0x18
	strh r5, [r0]
	strh r4, [r0, #2]
	stmia sp, {r4, r6}
	ldr r0, _020CFF8C ; =0x0209F5C0
	mov r3, r5
	mov r1, #0
	mov r2, #0x16
	str r6, [sp, #8]
	bl FUN_ov16_020f6470
	add sp, sp, #0x14
	ldmfd sp!, {r3, r4, r5, r6, pc}
_020CFF80: .word 0x020EAAF0
_020CFF84: .word 0x020EAAEC
_020CFF88: .word 0x020EAAE8
_020CFF8C: .word 0x0209F5C0
	arm_func_end FUN_ov1_020cfe30

	arm_func_start FUN_ov1_020cff90
FUN_ov1_020cff90: ; 0x020CFF90
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	mov r6, r0
	ldrb r3, [r6, #0x2d]
	ldr r0, [r6, #0x44]
	mov r5, r1
	cmp r0, #0
	mov r4, r2
	strlt r5, [r6, #0x44]
	strlt r4, [r6, #0x48]
	cmp r3, #0
	bne _020CFFE8
	ldr r0, [r6, #0x48]
	ldr r1, [r6, #0x44]
	sub r2, r0, r4
	mul r0, r2, r2
	sub r1, r1, r5
	mla r0, r1, r1, r0
	cmp r0, #0x100
	movge r0, #1
	movlt r0, #0
	cmp r0, #0
	beq _020D0108
_020CFFE8:
	cmp r3, #0
	bne _020D0094
	ldr r1, [r6, #0x44]
	mvn r7, #0
	mov r3, #0
	ldr r2, [r6, #0x48]
	mov r0, r6
	str r7, [r6, #0x38]
	str r3, [r6, #0x30]
	bl FUN_ov1_020cfa80
	cmp r0, #0
	movne r0, #2
	strne r0, [r6, #0x30]
	bne _020D008C
	ldr r1, [r6, #0x44]
	ldr r2, [r6, #0x48]
	mov r0, r6
	bl FUN_ov1_020cfc30
	cmp r0, #0
	movne r0, #3
	strne r0, [r6, #0x30]
	bne _020D008C
	ldr r1, [r6, #0x44]
	ldr r2, [r6, #0x48]
	mov r0, r6
	bl FUN_ov1_020cfc80
	cmp r0, #0
	movne r0, #4
	strne r0, [r6, #0x30]
	bne _020D008C
	ldr r1, [r6, #0x44]
	ldr r2, [r6, #0x48]
	mov r0, r6
	bl FUN_ov1_020be6c8
	movs r7, r0
	bmi _020D008C
	bl FUN_ov16_020f077c
	cmp r0, #0
	movne r0, #1
	strne r7, [r6, #0x38]
	strne r0, [r6, #0x30]
_020D008C:
	mov r0, #1
	strb r0, [r6, #0x2d]
_020D0094:
	ldr r0, [r6, #0x30]
	cmp r0, #2
	bne _020D00B4
	mov r0, r6
	mov r1, r5
	mov r2, r4
	bl FUN_ov1_020cfad0
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_020D00B4:
	cmp r0, #3
	bne _020D00D0
	mov r0, r6
	mov r1, r5
	mov r2, r4
	bl FUN_ov1_020cfcd0
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_020D00D0:
	cmp r0, #4
	bne _020D00EC
	mov r0, r6
	mov r1, r5
	mov r2, r4
	bl FUN_ov1_020cfe30
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_020D00EC:
	cmp r0, #1
	ldmnefd sp!, {r3, r4, r5, r6, r7, pc}
	mov r0, r6
	mov r1, r5
	mov r2, r4
	bl FUN_ov1_020cf854
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_020D0108:
	mov r0, #0
	strb r0, [r6, #0x2d]
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
	arm_func_end FUN_ov1_020cff90

	arm_func_start FUN_ov1_020d0114
FUN_ov1_020d0114: ; 0x020D0114
	stmfd sp!, {r4, r5, r6, lr}
	mov r6, r0
	ldrb r0, [r6, #0x2c]
	mov r5, r1
	cmp r0, #0
	ldmnefd sp!, {r4, r5, r6, pc}
	ldr r0, _020D0358 ; =0x0209A3E0
	ldr r0, [r0, #4]
	cmp r0, #0
	movne r0, #1
	moveq r0, #0
	cmp r0, #0
	ldmnefd sp!, {r4, r5, r6, pc}
	mov r4, #0
	ldr r0, _020D035C ; =0x0209F5C0
	mov r1, r4
	bl FUN_ov16_020f6584
	cmp r0, #0
	ldmnefd sp!, {r4, r5, r6, pc}
	ldrh r0, [r5, #4]
	cmp r0, #1
	bne _020D02B4
	ldrh r0, [r5, #6]
	cmp r0, #0
	ldmnefd sp!, {r4, r5, r6, pc}
	ldrb r0, [r6, #0x2e]
	cmp r0, #0
	bne _020D01F0
	mov r2, #1
	sub r1, r2, #2
	ldr r0, [r6, #8]
	strb r2, [r6, #0x2e]
	strb r4, [r6, #0x2d]
	str r1, [r6, #0x44]
	str r1, [r6, #0x48]
	str r1, [r6, #0x38]
	str r1, [r6, #0x34]
	str r4, [r6, #0x30]
	cmp r0, #0xf
	beq _020D01BC
	cmp r0, #0x1a
	bne _020D01F0
_020D01BC:
	ldrh r1, [r5]
	ldrh r2, [r5, #2]
	mov r0, r6
	bl FUN_ov1_020d1104
	movs r1, r0
	str r1, [r6, #0x38]
	beq _020D01F0
	ldr r0, _020D0360 ; =0x0209A070
	mov r2, #5
	str r1, [r6, #0x38]
	str r1, [r6, #0x34]
	str r2, [r6, #0x30]
	bl FUN_ov16_020f6e2c
_020D01F0:
	mov r0, r6
	ldr r1, [r0]
	ldr r1, [r1, #0x7c]
	blx r1
	cmp r0, #0
	beq _020D0218
	ldrh r1, [r5]
	ldrh r2, [r5, #2]
	mov r0, r6
	bl FUN_ov1_020cff90
_020D0218:
	ldr r0, [r6, #8]
	cmp r0, #5
	beq _020D023C
	ldrh r2, [r5, #2]
	ldrh r1, [r5]
	mov r0, #2
	str r1, [r6, #0x3c]
	str r2, [r6, #0x40]
	str r0, [r6, #0x4c]
_020D023C:
	ldr r0, [r6, #8]
	cmp r0, #0xf
	beq _020D0250
	cmp r0, #0x1a
	ldmnefd sp!, {r4, r5, r6, pc}
_020D0250:
	ldr r0, [r6, #0x30]
	cmp r0, #5
	ldmnefd sp!, {r4, r5, r6, pc}
	ldr r1, [r6, #0x3c]
	ldr r2, [r6, #0x40]
	mov r0, r6
	bl FUN_ov1_020d1104
	ldr r1, [r6, #0x38]
	str r0, [r6, #0x34]
	cmp r1, #0
	ldmeqfd sp!, {r4, r5, r6, pc}
	cmp r0, r1
	bne _020D0290
	ldr r0, _020D0360 ; =0x0209A070
	bl FUN_ov16_020f6e2c
	ldmfd sp!, {r4, r5, r6, pc}
_020D0290:
	ldr r4, _020D0360 ; =0x0209A070
	mov r0, r4
	bl FUN_ov16_020f6d3c
	movs r1, r0
	ldmmifd sp!, {r4, r5, r6, pc}
	mov r0, r4
	mov r2, #0
	bl FUN_ov16_020f6e8c
	ldmfd sp!, {r4, r5, r6, pc}
_020D02B4:
	ldrb r0, [r6, #0x2d]
	cmp r0, #0
	beq _020D02E8
	mov r0, r6
	ldr r1, [r0]
	ldr r1, [r1, #0x7c]
	blx r1
	cmp r0, #0
	beq _020D033C
	ldr r1, [r6, #0x34]
	mov r0, r6
	bl FUN_ov1_020ce9e8
	b _020D033C
_020D02E8:
	ldrb r0, [r6, #0x2e]
	cmp r0, #0
	beq _020D033C
	ldr r1, [r6, #0x3c]
	ldr r2, [r6, #0x40]
	mov r0, r6
	bl FUN_ov1_020cf63c
	ldr r1, [r6, #0x38]
	cmp r1, #0
	beq _020D033C
	ldr r0, [r6, #0x34]
	cmp r0, r1
	bne _020D033C
	ldr r5, _020D0360 ; =0x0209A070
	mov r0, r5
	bl FUN_ov16_020f6d3c
	movs r1, r0
	bmi _020D033C
	mov r0, r5
	mov r2, r4
	bl FUN_ov16_020f6e8c
_020D033C:
	mov r1, #0
	sub r0, r1, #1
	strb r1, [r6, #0x2e]
	strb r1, [r6, #0x2d]
	str r0, [r6, #0x38]
	str r0, [r6, #0x34]
	ldmfd sp!, {r4, r5, r6, pc}
_020D0358: .word 0x0209A3E0
_020D035C: .word 0x0209F5C0
_020D0360: .word 0x0209A070
	arm_func_end FUN_ov1_020d0114

	arm_func_start FUN_ov1_020d0364
FUN_ov1_020d0364: ; 0x020D0364
	stmfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, lr}
	sub sp, sp, #0xc
	mov r10, r0
	str r1, [r10, #0x10]
	cmp r1, #1
	mov r7, #1
	beq _020D038C
	cmp r1, #2
	beq _020D049C
	b _020D0564
_020D038C:
	add r0, r10, #0x348
	mov r1, #0
	mov r2, #0x3b4
	bl MI_CpuFill8
	ldr r0, _020D0574 ; =0x020E879C
	add r1, r10, #0x354
	bl FUN_ov1_020dbe38
	ldr r0, _020D0578 ; =0x020E87AC
	add r1, r10, #0x360
	bl FUN_ov1_020dbe38
	ldr r0, _020D057C ; =0x020E87BC
	add r1, r10, #0x36c
	bl FUN_ov1_020dbe38
	ldr r0, _020D0580 ; =0x020A0640
	ldrb r0, [r0, #0x1a]
	cmp r0, #0
	bne _020D03DC
	bl FUN_ov16_020f068c ; may be ov17
	cmp r0, #0
	beq _020D0438
_020D03DC:
	mov r8, #0
	mov r4, #0x14
	add r6, r10, #0x2cc
	mov r11, r8
	mov r5, r4
	b _020D0430
_020D03F4:
	mov r9, r11
	cmp r8, #0
	movne r9, r7
	mov r0, r9
	bl FUN_ov1_020dc150
	cmp r0, #0
	beq _020D042C
	mla r0, r8, r4, r6
	mov r1, #0xe
	mov r2, #3
	bl FUN_ov16_020f2fa8
	mla r0, r8, r5, r6
	mov r1, r9
	bl FUN_ov1_020db4f0
_020D042C:
	add r8, r8, #1
_020D0430:
	cmp r8, #2
	blt _020D03F4
_020D0438:
	ldr r0, _020D0580 ; =0x020A0640
	ldrb r0, [r0, #0x1a]
	cmp r0, #0
	bne _020D0454
	bl FUN_ov16_020f068c ; may be ov17
	cmp r0, #0
	beq _020D0464
_020D0454:
	bl FUN_ov16_020f083c
	bl FUN_ov1_020dc150
	cmp r0, #0
	bne _020D0474
_020D0464:
	add r1, r10, #0xa4
	ldr r0, _020D0584 ; =0x020E87CC
	add r1, r1, #0x400
	bl FUN_ov1_020dbec4
_020D0474:
	ldr r0, _020D0588 ; =0x020E87D8
	add r1, r10, #0x348
	bl FUN_ov1_020dbe00
	ldr r0, _020D058C ; =0x020E87E4
	add r1, r10, #0x390
	bl FUN_ov1_020dbe38
	ldr r0, _020D0590 ; =0x020E87F0
	add r1, r10, #0x39c
	bl FUN_ov1_020dbe38
	b _020D0564
_020D049C:
	mov r4, #0
	mov r0, r4
	ldr r5, [r10, #0x4a4]
	bl FUN_ov1_020dc150
	cmp r0, #0
	bne _020D04FC
	ldr r0, _020D0594 ; =0x0209BA20
	mov r1, r4
	bl FUN_0207249c
	ldrh r1, [r0, #0x2a]
	add r2, sp, #8
	add r3, sp, #4
	cmp r1, #0
	ldreqh r1, [r0, #0x20]
	mov r0, r5
	bl FUN_ov16_020f34f0
	cmp r0, #0
	beq _020D04FC
	str r7, [sp]
	ldr r2, [sp, #8]
	ldr r3, [sp, #4]
	ldr r0, _020D0598 ; =0x020E87FC
	add r1, r10, #0x4b0
	bl FUN_ov1_020dbefc
_020D04FC:
	mov r0, r7
	bl FUN_ov1_020dc150
	cmp r0, #0
	bne _020D0558
	ldr r0, _020D0594 ; =0x0209BA20
	mov r1, r7
	bl FUN_0207249c
	ldrh r1, [r0, #0x2a]
	add r2, sp, #8
	add r3, sp, #4
	cmp r1, #0
	ldreqh r1, [r0, #0x20]
	mov r0, r5
	bl FUN_ov16_020f34f0
	cmp r0, #0
	beq _020D0558
	str r7, [sp]
	add r1, r10, #0xbc
	ldr r2, [sp, #8]
	ldr r3, [sp, #4]
	ldr r0, _020D059C ; =0x020E8808
	add r1, r1, #0x400
	bl FUN_ov1_020dbefc
_020D0558:
	add r0, r10, #0x348
	add r0, r0, #0x15c
	bl FUN_ov16_020f33fc
_020D0564:
	mov r0, #1
	str r0, [r10, #8]
	add sp, sp, #0xc
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
_020D0574: .word 0x020E879C
_020D0578: .word 0x020E87AC
_020D057C: .word 0x020E87BC
_020D0580: .word 0x020A0640
_020D0584: .word 0x020E87CC
_020D0588: .word 0x020E87D8
_020D058C: .word 0x020E87E4
_020D0590: .word 0x020E87F0
_020D0594: .word 0x0209BA20
_020D0598: .word 0x020E87FC
_020D059C: .word 0x020E8808
	arm_func_end FUN_ov1_020d0364

	arm_func_start FUN_ov1_020d05a0
FUN_ov1_020d05a0: ; 0x020D05A0
	mov r1, r0
	ldr r0, [r1, #0x348]
	ldr r2, _020D05B8 ; =0x020E792C
	ldr r12, _020D05BC ; =FUN_ov1_020dbfdc
	add r1, r1, #0x348
	bx r12
_020D05B8: .word 0x020E792C
_020D05BC: .word FUN_ov1_020dbfdc
	arm_func_end FUN_ov1_020d05a0

	arm_func_start FUN_ov1_020d05c0
FUN_ov1_020d05c0: ; 0x020D05C0
	stmfd sp!, {r4, lr}
	mov r4, r0
	add r0, r4, #0x3a8
	bl FUN_ov16_020f33fc
	add r0, r4, #0x3b4
	bl FUN_ov16_020f33fc
	add r0, r4, #0x3c0
	bl FUN_ov16_020f33fc
	add r0, r4, #0x3cc
	bl FUN_ov16_020f33fc
	add r0, r4, #0x378
	bl FUN_ov16_020f33fc
	ldmfd sp!, {r4, pc}
	arm_func_end FUN_ov1_020d05c0

	arm_func_start FUN_ov1_020d05f4
FUN_ov1_020d05f4: ; 0x020D05F4
	stmfd sp!, {r4, lr}
	mov r4, r0
	add r0, r4, #0x3a8
	bl FUN_ov16_020f33fc
	add r0, r4, #0x378
	bl FUN_ov16_020f33fc
	add r0, r4, #0x348
	add r0, r0, #0x12c
	bl FUN_ov16_020f33fc
	add r0, r4, #0x348
	add r0, r0, #0x114
	bl FUN_ov16_020f33fc
	ldmfd sp!, {r4, pc}
	arm_func_end FUN_ov1_020d05f4

	arm_func_start FUN_ov1_020d0628
FUN_ov1_020d0628: ; 0x020D0628
	stmfd sp!, {r4, lr}
	mov r4, r0
	bl FUN_ov1_020d05c0
	mov r0, r4
	bl FUN_ov1_020d05f4
	add r0, r4, #0x348
	add r0, r0, #0x2ac
	bl FUN_ov16_020f33fc
	add r0, r4, #0x348
	add r0, r0, #0x360
	bl FUN_ov16_020f33fc
	add r0, r4, #0x348
	add r0, r0, #0x2d0
	bl FUN_ov16_020f33fc
	add r0, r4, #0x630
	bl FUN_ov16_020f33fc
	add r0, r4, #0x348
	add r0, r0, #0x2f4
	bl FUN_ov16_020f33fc
	add r0, r4, #0x348
	add r0, r0, #0x30c
	bl FUN_ov16_020f33fc
	add r0, r4, #0x660
	bl FUN_ov16_020f33fc
	add r0, r4, #0x348
	add r0, r0, #0x324
	bl FUN_ov16_020f33fc
	ldmfd sp!, {r4, pc}
	arm_func_end FUN_ov1_020d0628

	arm_func_start FUN_ov1_020d0698
FUN_ov1_020d0698: ; 0x020D0698
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	mov r7, r0
	mov r6, #0
	add r5, r7, #0x348
	mov r4, #0xc
_020D06AC:
	mla r0, r6, r4, r5
	bl FUN_ov16_020f33fc
	add r6, r6, #1
	cmp r6, #0x4f
	blt _020D06AC
	add r0, r7, #0x2cc
	mov r1, #2
	bl FUN_ov16_020f2fe4
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
	arm_func_end FUN_ov1_020d0698

	arm_func_start FUN_ov1_020d06d0
FUN_ov1_020d06d0: ; 0x020D06D0
	mov r1, #1
	strb r1, [r0, #0x1e]
	bx lr
	arm_func_end FUN_ov1_020d06d0

	arm_func_start FUN_ov1_020d06dc
FUN_ov1_020d06dc: ; 0x020D06DC
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, lr}
	mov r10, r0
	ldrb r0, [r10, #0x1e]
	mov r6, #1
	cmp r0, #0
	ldmeqfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
	mov r7, #0
	strb r7, [r10, #0x1e]
	cmp r1, #1
	beq _020D0718
	cmp r1, #2
	beq _020D0720
	cmp r1, #3
	beq _020D0728
	b _020D073C
_020D0718:
	ldr r0, [r10, #0x6b4]
	b _020D072C
_020D0720:
	ldr r0, [r10, #0x6cc]
	b _020D072C
_020D0728:
	ldr r0, [r10, #0x6e4]
_020D072C:
	mov r1, r7
	mov r2, #0xe
	bl FUN_ov16_020f1138
	mov r7, r6
_020D073C:
	cmp r7, #0
	beq _020D0748
	bl FUN_ov16_020f10ac
_020D0748:
	ldr r1, [r10, #0x51c]
	mov r0, r6
	mov r2, #0x20
	bl FUN_ov16_020f19d4
	mov r2, r0
	ldr r1, [r10, #0x540]
	mov r0, r6
	bl FUN_ov16_020f19d4
	mov r2, r0
	ldr r1, [r10, #0x6b4]
	mov r0, r6
	bl FUN_ov16_020f19d4
	mov r2, r0
	ldr r1, [r10, #0x6cc]
	mov r0, r6
	bl FUN_ov16_020f19d4
	mov r2, r0
	ldr r1, [r10, #0x6e4]
	mov r0, r6
	bl FUN_ov16_020f19d4
	mov r9, #0
	mov r8, r0
	mov r11, r9
	mov r5, #0x14
	mov r4, #0xc
_020D07AC:
	mov r0, r11
	cmp r9, #0
	movne r0, r6
	bl FUN_ov1_020dc150
	cmp r0, #0
	beq _020D0800
	mla r2, r9, r5, r10
	ldr r0, [r2, #0x2cc]
	mov r1, #0
	cmp r0, #0
	ldrne r0, [r2, #0x2d0]
	cmpne r0, #0
	movne r1, r6
	cmp r1, #0
	beq _020D0818
	ldr r0, [r2, #0x2d0]
	mov r1, r8
	mov r2, #0x540
	bl FUN_0200585c
	add r8, r8, #0x540
	b _020D0818
_020D0800:
	mla r0, r9, r4, r10
	ldr r1, [r0, #0x4b0]
	mov r0, r6
	mov r2, r8
	bl FUN_ov16_020f19d4
	mov r8, r0
_020D0818:
	add r9, r9, #1
	cmp r9, #2
	blt _020D07AC
	cmp r7, #0
	ldmeqfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
	mov r4, #2
	ldr r1, [r10, #0x6c0]
	ldr r2, [r10, #0x64]
	mov r0, r4
	bl FUN_ov16_020f19d4
	mov r2, r0
	ldr r1, [r10, #0x6d8]
	mov r0, r4
	bl FUN_ov16_020f19d4
	mov r2, r0
	ldr r1, [r10, #0x6f0]
	mov r0, r4
	bl FUN_ov16_020f19d4
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
	arm_func_end FUN_ov1_020d06dc

	arm_func_start FUN_ov1_020d0864
FUN_ov1_020d0864: ; 0x020D0864
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, lr}
	ldr r5, _020D0EA0 ; =0x020A6C40
	mov r4, #0x800
	mov r6, #0
	mov r10, r0
	mov r0, r6
	mov r1, r5
	mov r2, r4
	mov r7, #0x20
	bl MIi_CpuClearFast
	mov r0, r5
	mov r1, r4
	bl DC_FlushRange
	mov r0, r5
	mov r1, r6
	mov r2, r4
	bl FUN_020054dc
	mov r0, r5
	mov r1, r6
	mov r2, r4
	bl FUN_020055bc
	mov r0, r5
	mov r2, r4
	mov r1, r6
	bl FUN_0200569c
	bl FUN_02004f78
	mov r1, r0
	mov r0, r6
	mov r2, r7
	bl MIi_CpuClearFast
	bl FUN_02004fcc
	mov r1, r0
	mov r0, r6
	mov r2, r7
	bl MIi_CpuClearFast
	bl FUN_0200505c
	mov r1, r0
	mov r0, r6
	mov r2, r7
	bl MIi_CpuClearFast
	bl FUN_02004f78
	mov r1, r7
	bl DC_FlushRange
	bl FUN_02004fcc
	mov r1, r7
	bl DC_FlushRange
	bl FUN_0200505c
	mov r1, r7
	bl DC_FlushRange
	ldr r0, [r10, #0x510]
	mov r1, r6
	mov r5, #2
	mov r2, r5
	bl FUN_ov16_020f1138
	ldr r0, [r10, #0x510]
	add r1, r6, #1
	sub r4, r5, #3
	mov r2, r4
	bl FUN_ov16_020f18e8
	mov r2, r7
	mov r8, r0
	mov r0, r5
	ldr r1, [r10, #0x510]
	bl FUN_ov16_020f19d4
	mov r7, r0
	ldr r0, [r10, #0x51c]
	mov r1, r6
	mov r2, #0xd
	bl FUN_ov16_020f1138
	add r1, r8, #1
	ldr r0, [r10, #0x528]
	mov r2, r4
	bl FUN_ov16_020f18e8
	mov r2, r7
	mov r7, r0
	mov r0, r5
	ldr r1, [r10, #0x528]
	bl FUN_ov16_020f19d4
	add r1, r7, #1
	mov r7, r0
	ldr r0, [r10, #0x534]
	mov r2, r4
	bl FUN_ov16_020f18e8
	mov r2, r7
	mov r8, r0
	mov r0, r5
	ldr r1, [r10, #0x534]
	bl FUN_ov16_020f19d4
	mov r7, r0
	ldr r0, [r10, #0x594]
	mov r1, r6
	mov r2, #6
	bl FUN_ov16_020f1138
	add r1, r8, #1
	ldr r0, [r10, #0x594]
	mov r2, r4
	bl FUN_ov16_020f18e8
	mov r2, r7
	mov r7, r0
	mov r0, r5
	ldr r1, [r10, #0x594]
	bl FUN_ov16_020f19d4
	mov r1, r6
	mov r6, r0
	ldr r0, [r10, #0x384]
	mov r2, #0xc
	bl FUN_ov16_020f1138
	add r1, r7, #1
	ldr r0, [r10, #0x384]
	mov r2, r4
	bl FUN_ov16_020f18e8
	mov r2, r6
	mov r8, r0
	mov r0, r5
	ldr r1, [r10, #0x384]
	bl FUN_ov16_020f19d4
	mov r7, r0
	ldr r0, _020D0EA4 ; =0x02099EF0
	ldr r0, [r0]
	bl FUN_ov132_02144780
	cmp r0, #5
	bne _020D0A6C
	ldr r6, [r10, #0x5ac]
	mov r2, r4
	mov r0, r6
	add r1, r8, #1
	bl FUN_ov16_020f18e8
	mov r8, r0
	ldr r1, [r10, #0x5ac]
	b _020D0A88
_020D0A6C:
	ldr r6, [r10, #0x5a0]
	mov r2, r4
	mov r0, r6
	add r1, r8, #1
	bl FUN_ov16_020f18e8
	ldr r1, [r10, #0x5a0]
	mov r8, r0
_020D0A88:
	mov r0, r5
	mov r2, r7
	bl FUN_ov16_020f19d4
	mov r9, #0
	mov r5, r0
	mov r0, r6
	mov r1, r9
	mov r2, #4
	bl FUN_ov16_020f1138
	mov r4, #5
	ldr r0, [r10, #0x36c]
	mov r1, r9
	mov r2, r4
	bl FUN_ov16_020f1138
	sub r7, r4, #6
	ldr r0, [r10, #0x54c]
	mov r2, r7
	add r1, r8, #1
	bl FUN_ov16_020f18e8
	mov r2, r5
	mov r8, #2
	mov r5, r0
	ldr r1, [r10, #0x54c]
	mov r0, r8
	bl FUN_ov16_020f19d4
	mov r4, r0
	mov r6, #7
	ldr r0, [r10, #0x54c]
	mov r1, r9
	mov r2, r6
	bl FUN_ov16_020f1138
	ldr r0, [r10, #0x558]
	add r1, r5, #1
	mov r2, r7
	bl FUN_ov16_020f18e8
	mov r5, r0
	ldr r1, [r10, #0x558]
	mov r2, r4
	mov r0, r8
	bl FUN_ov16_020f19d4
	mov r4, r0
	ldr r0, [r10, #0x558]
	mov r1, r9
	mov r2, r6
	bl FUN_ov16_020f1138
	ldr r0, [r10, #0x564]
	add r1, r5, #1
	mov r2, r7
	bl FUN_ov16_020f18e8
	mov r5, r0
	ldr r1, [r10, #0x564]
	mov r2, r4
	mov r0, r8
	bl FUN_ov16_020f19d4
	mov r4, r0
	mov r11, #0xb
	ldr r0, [r10, #0x564]
	mov r1, r9
	mov r2, r11
	bl FUN_ov16_020f1138
	ldr r0, [r10, #0x570]
	add r1, r5, #1
	mov r2, r7
	bl FUN_ov16_020f18e8
	mov r2, r4
	mov r4, r0
	ldr r1, [r10, #0x570]
	mov r0, r8
	bl FUN_ov16_020f19d4
	mov r5, r0
	ldr r0, [r10, #0x570]
	mov r2, r11
	mov r1, r9
	bl FUN_ov16_020f1138
	ldr r0, [r10, #0x57c]
	add r1, r4, #1
	mov r2, r7
	bl FUN_ov16_020f18e8
	mov r2, r5
	mov r5, r0
	ldr r1, [r10, #0x57c]
	mov r0, r8
	bl FUN_ov16_020f19d4
	mov r4, r0
	ldr r0, [r10, #0x57c]
	mov r1, r9
	mov r2, r6
	bl FUN_ov16_020f1138
	ldr r0, [r10, #0x588]
	add r1, r5, #1
	mov r2, r7
	bl FUN_ov16_020f18e8
	mov r5, r0
	ldr r1, [r10, #0x588]
	mov r2, r4
	mov r0, r8
	bl FUN_ov16_020f19d4
	mov r4, r0
	ldr r0, [r10, #0x588]
	mov r2, r6
	mov r1, r9
	bl FUN_ov16_020f1138
	ldr r0, [r10, #0x5dc]
	add r1, r5, #1
	mov r2, r7
	bl FUN_ov16_020f18e8
	mov r2, r4
	mov r4, r0
	ldr r1, [r10, #0x5dc]
	mov r0, r8
	bl FUN_ov16_020f19d4
	str r0, [r10, #0x64]
	ldr r0, [r10, #0x4c8]
	add r1, r4, #1
	mov r2, r7
	str r4, [r10, #0x68]
	bl FUN_ov16_020f18e8
	add r1, r0, #1
	ldr r0, [r10, #0x504]
	mov r2, r7
	bl FUN_ov16_020f18e8
	add r1, r0, #1
	ldr r0, [r10, #0x5b8]
	mov r2, r7
	bl FUN_ov16_020f18e8
	mov r5, r0
	ldr r0, [r10, #0x354]
	add r1, r5, #1
	mov r2, r7
	bl FUN_ov16_020f18e8
	add r1, r0, #1
	ldr r0, [r10, #0x4d4]
	mov r2, r7
	bl FUN_ov16_020f18e8
	add r1, r0, #1
	ldr r0, [r10, #0x4e0]
	mov r2, r7
	bl FUN_ov16_020f18e8
	ldr r0, [r10, #0x360]
	add r1, r5, #1
	mov r2, r7
	bl FUN_ov16_020f18e8
	mov r4, r0
	ldr r0, [r10, #0x4ec]
	add r1, r4, #1
	mov r2, r7
	bl FUN_ov16_020f18e8
	add r1, r0, #1
	ldr r0, [r10, #0x4f8]
	mov r2, r7
	bl FUN_ov16_020f18e8
	ldr r0, [r10, #0x5e8]
	add r1, r4, #1
	mov r2, r7
	bl FUN_ov16_020f18e8
	add r1, r0, #1
	ldr r0, [r10, #0x600]
	mov r2, r7
	bl FUN_ov16_020f18e8
	str r0, [r10, #0x6c]
	add r1, r0, #1
	ldr r0, [r10, #0x654]
	mov r2, r7
	bl FUN_ov16_020f18e8
	add r1, r0, #1
	ldr r0, [r10, #0x660]
	mov r2, r7
	bl FUN_ov16_020f18e8
	ldr r0, [r10, #0x678]
	add r1, r5, #1
	mov r2, r7
	bl FUN_ov16_020f18e8
	add r1, r0, #1
	ldr r0, [r10, #0x690]
	mov r2, r7
	bl FUN_ov16_020f18e8
	add r1, r0, #1
	ldr r0, [r10, #0x69c]
	mov r2, r7
	bl FUN_ov16_020f18e8
	add r1, r0, #1
	ldr r0, [r10, #0x60c]
	mov r2, r7
	bl FUN_ov16_020f18e8
	ldr r1, [r10, #0x68]
	ldr r0, [r10, #0x6c0]
	add r1, r1, #1
	mov r2, r7
	bl FUN_ov16_020f18e8
	add r1, r0, #1
	ldr r0, [r10, #0x6d8]
	mov r2, r7
	bl FUN_ov16_020f18e8
	add r1, r0, #1
	ldr r0, [r10, #0x6f0]
	mov r2, r7
	bl FUN_ov16_020f18e8
	bl FUN_ov16_020f10ac
	ldr r0, [r10, #0x51c]
	add r1, r9, #1
	mov r2, r7
	bl FUN_ov16_020f18e8
	add r1, r0, #1
	ldr r0, [r10, #0x540]
	mov r2, r7
	bl FUN_ov16_020f18e8
	add r1, r0, #1
	ldr r0, [r10, #0x6b4]
	mov r2, r7
	bl FUN_ov16_020f18e8
	add r1, r0, #1
	ldr r0, [r10, #0x6cc]
	mov r2, r7
	bl FUN_ov16_020f18e8
	add r1, r0, #1
	ldr r0, [r10, #0x6e4]
	mov r2, r7
	bl FUN_ov16_020f18e8
	mov r6, #0x14
	mov r8, r0
	mov r11, #0xc
	mov r4, r6
	mov r5, r6
	b _020D0E94
_020D0E08:
	mov r0, #0
	cmp r9, #0
	movne r0, #1
	bl FUN_ov1_020dc150
	cmp r0, #0
	beq _020D0E74
	mla r1, r9, r6, r10
	ldr r0, [r1, #0x2cc]
	mov r2, #0
	cmp r0, #0
	ldrne r0, [r1, #0x2d0]
	cmpne r0, #0
	movne r2, #1
	cmp r2, #0
	beq _020D0E90
	mla r0, r9, r4, r10
	ldr r0, [r0, #0x2cc]
	mov r1, #0xe
	mov r2, #3
	bl FUN_ov16_020f2ea8
	mla r0, r9, r5, r10
	ldr r0, [r0, #0x2cc]
	mov r1, #0x54
	add r2, r8, #1
	mov r3, #0
	bl FUN_ov16_020f1868
	b _020D0E8C
_020D0E74:
	add r1, r9, #0x1e
	mla r0, r1, r11, r10
	ldr r0, [r0, #0x348]
	add r1, r8, #1
	mov r2, r7
	bl FUN_ov16_020f18e8
_020D0E8C:
	mov r8, r0
_020D0E90:
	add r9, r9, #1
_020D0E94:
	cmp r9, #2
	blt _020D0E08
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_020D0EA0: .word 0x020A6C40
_020D0EA4: .word 0x02099EF0
	arm_func_end FUN_ov1_020d0864

	arm_func_start FUN_ov1_020d0ea8
FUN_ov1_020d0ea8: ; 0x020D0EA8
	stmfd sp!, {r4, lr}
	mov r4, r0
	bl FUN_0201e078
	mov r0, r4
	ldmfd sp!, {r4, pc}
	arm_func_end FUN_ov1_020d0ea8

	arm_func_start FUN_ov1_020d0ebc
FUN_ov1_020d0ebc: ; 0x020D0EBC
	ldr r0, [r0, #8]
	bx lr
	arm_func_end FUN_ov1_020d0ebc

	arm_func_start FUN_ov1_020d0ec4
FUN_ov1_020d0ec4: ; 0x020D0EC4
	mov r0, #1
	bx lr
	arm_func_end FUN_ov1_020d0ec4

	arm_func_start FUN_ov1_020d0ecc
FUN_ov1_020d0ecc: ; 0x020D0ECC
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	ldr r2, _020D0FF0 ; =0x02099EF0
	mov r7, r0
	ldr r0, [r2]
	mov r5, r1
	bl FUN_ov126_021375d4
	ldrsb r0, [r0, #0xc]
	bl FUN_ov16_020f077c
	cmp r0, #0
	beq _020D0F28
	cmp r5, #0x23
	ldr r4, _020D0FF4 ; =0x000001F6
	beq _020D0F14
	cmp r5, #0x24
	beq _020D0F18
	cmp r5, #0x25
	beq _020D0F20
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_020D0F14:
	b _020D0F50
_020D0F18:
	mov r6, #2
	b _020D0F54
_020D0F20:
	mov r6, #3
	b _020D0F54
_020D0F28:
	cmp r5, #0x23
	ldr r4, _020D0FF8 ; =0x000001F9
	beq _020D0F48
	cmp r5, #0x24
	beq _020D0F4C
	cmp r5, #0x25
	beq _020D0F50
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_020D0F48:
	b _020D0F20
_020D0F4C:
	b _020D0F18
_020D0F50:
	mov r6, #1
_020D0F54:
	ldr r0, _020D0FFC ; =0x0209AC44
	mov r1, #1
	bl FUN_0202cf6c
	bl FUN_ov16_020f081c
	ldr r1, _020D1000 ; =0x020A0640
	mov r5, r0
	ldrb r0, [r1, #0x1a]
	cmp r0, #0
	beq _020D0FCC
	ldr r0, _020D0FF0 ; =0x02099EF0
	mov r1, r5
	ldr r0, [r0]
	bl FUN_ov126_02136ec0
	cmp r0, #0
	ldr r0, _020D0FF4 ; =0x000001F6
	bne _020D0FA4
	mov r3, #0x64
	cmp r4, r0
	movne r3, #0x65
	b _020D0FB0
_020D0FA4:
	mov r3, #0x66
	cmp r4, r0
	movne r3, #0x67
_020D0FB0:
	and r4, r6, #0xff
	mov r0, r7
	mov r2, r5
	mov r1, #0xc
	str r4, [sp]
	bl FUN_ov1_020c3a24
	b _020D0FE0
_020D0FCC:
	ldr r0, _020D1004 ; =0x020EAAFC
	ldr r1, _020D1008 ; =0x020EAAF4
	mov r2, r5, lsl #1
	strh r4, [r1, r2]
	str r6, [r0, r5, lsl #2]
_020D0FE0:
	mov r0, r7
	mov r1, #0x35
	bl FUN_ov1_020bf9f4
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_020D0FF0: .word 0x02099EF0
_020D0FF4: .word 0x000001F6
_020D0FF8: .word 0x000001F9
_020D0FFC: .word 0x0209AC44
_020D1000: .word 0x020A0640
_020D1004: .word 0x020EAAFC
_020D1008: .word 0x020EAAF4
	arm_func_end FUN_ov1_020d0ecc

	arm_func_start FUN_ov1_020d100c
FUN_ov1_020d100c: ; 0x020D100C
	stmfd sp!, {r4, r5, r6, lr}
	ldr r5, _020D10F8 ; =0x0209F5C0
	mov r4, #0
	mov r6, r0
	mov r0, r5
	mov r1, r4
	bl FUN_ov16_020f6678
	cmp r0, #0
	ldmnefd sp!, {r4, r5, r6, pc}
	mov r0, r5
	mov r1, r4
	mov r2, #0xa
	bl FUN_ov16_020f616c
	ldr r2, [r6, #0x38]
	cmp r2, #0x23
	blt _020D1068
	cmp r2, #0x25
	ldrle r0, [r6, #0x34]
	cmple r2, r0
	bne _020D1068
	mov r0, r5
	mov r1, r4
	b _020D1074
_020D1068:
	ldr r0, _020D10F8 ; =0x0209F5C0
	mov r1, #0
	mov r2, #0x22
_020D1074:
	bl FUN_ov16_020f60f8
	ldr r0, _020D10FC ; =0x020A0640
	ldrb r0, [r0, #0x8f]
	cmp r0, #0xc
	ldmnefd sp!, {r4, r5, r6, pc}
	bl FUN_ov16_020f081c
	ldr r2, _020D1100 ; =0x02099EF0
	mov r1, r0
	ldr r0, [r2]
	bl FUN_ov126_02136ec0
	cmp r0, #1
	mov r4, #0
	bne _020D10D0
	ldr r5, _020D10F8 ; =0x0209F5C0
	mov r1, r4
	mov r0, r5
	mov r2, #0x27
	bl FUN_ov16_020f60f8
	mov r0, r5
	mov r1, r4
	mov r2, #0x26
	bl FUN_ov16_020f6084
	ldmfd sp!, {r4, r5, r6, pc}
_020D10D0:
	ldr r5, _020D10F8 ; =0x0209F5C0
	mov r1, r4
	mov r0, r5
	mov r2, #0x26
	bl FUN_ov16_020f60f8
	mov r0, r5
	mov r1, r4
	mov r2, #0x27
	bl FUN_ov16_020f6084
	ldmfd sp!, {r4, r5, r6, pc}
_020D10F8: .word 0x0209F5C0
_020D10FC: .word 0x020A0640
_020D1100: .word 0x02099EF0
	arm_func_end FUN_ov1_020d100c

	arm_func_start FUN_ov1_020d1104
FUN_ov1_020d1104: ; 0x020D1104
	ldr r0, _020D111C ; =0x0209F5C0
	mov r3, r2
	mov r2, r1
	ldr r12, _020D1120 ; =FUN_ov16_020f6b3c
	mov r1, #0
	bx r12
_020D111C: .word 0x0209F5C0
_020D1120: .word FUN_ov16_020f6b3c
	arm_func_end FUN_ov1_020d1104

	arm_func_start FUN_ov1_020d1124
FUN_ov1_020d1124: ; 0x020D1124
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	mov r4, r0
	ldr r2, [r4, #0x3c]
	ldr r3, [r4, #0x40]
	ldr r0, _020D1208 ; =0x0209F5C0
	mov r1, #0
	bl FUN_ov16_020f6b3c
	cmp r0, #0x26
	beq _020D1150
	cmp r0, #0x27
	bne _020D11C8
_020D1150:
	ldr r1, _020D120C ; =0x0209A454
	ldr r0, _020D1210 ; =0x02099EF0
	ldrb r6, [r1, #0x28]
	ldr r0, [r0]
	mov r1, r6
	bl FUN_ov126_02136ec0
	ldr r5, _020D1210 ; =0x02099EF0
	cmp r0, #1
	mov r7, #0
	ldr r0, [r5]
	mov r1, r6
	movne r7, #1
	bl FUN_ov126_02136ed8
	ldr r1, _020D1214 ; =0x020A0640
	ldrb r1, [r1, #0x8f]
	cmp r1, #0xc
	bne _020D11BC
	cmp r0, #0
	ble _020D11BC
	ldr r0, _020D1218 ; =0x0209AC44
	mov r1, #1
	bl FUN_0202cf6c
	ldr r0, [r5]
	mov r1, r6
	mov r2, r7
	bl FUN_ov126_02136eb4
	b _020D11C8
_020D11BC:
	ldr r0, _020D1218 ; =0x0209AC44
	mov r1, #9
	bl FUN_0202cf6c
_020D11C8:
	ldr r1, [r4, #0x3c]
	ldr r2, [r4, #0x40]
	mov r0, r4
	bl FUN_ov1_020d1104
	ldr r1, [r4, #0x38]
	cmp r1, r0
	ldmnefd sp!, {r3, r4, r5, r6, r7, pc}
	cmp r1, #0
	beq _020D11F8
	mov r0, r4
	bl FUN_ov1_020d0ecc
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_020D11F8:
	ldr r0, _020D1218 ; =0x0209AC44
	mov r1, #9
	bl FUN_0202cf6c
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_020D1208: .word 0x0209F5C0
_020D120C: .word 0x0209A454
_020D1210: .word 0x02099EF0
_020D1214: .word 0x020A0640
_020D1218: .word 0x0209AC44
	arm_func_end FUN_ov1_020d1124

	arm_func_start FUN_ov1_020d121c
FUN_ov1_020d121c: ; 0x020D121C
	stmfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, lr}
	sub sp, sp, #0x74
	ldr r1, _020D17BC ; =0x02099EF0
	mov r10, r0
	ldr r0, [r1]
	bl FUN_ov126_021375d4
	mov r8, #0
	mov r7, #5
	mov r5, r0
	ldr r0, _020D17C0 ; =0x0209F5C0
	mov r1, r8
	mov r2, r7
	mov r3, r8
	bl FUN_ov16_020f5f64
	mov r4, #6
	ldr r0, _020D17C0 ; =0x0209F5C0
	mov r1, r8
	mov r2, r4
	mov r3, r8
	bl FUN_ov16_020f5f64
	ldrsb r0, [r5, #0xc]
	bl FUN_ov16_020f077c
	movs r5, r0
	add r0, sp, #0x5c
	beq _020D12FC
	ldr r3, [r10, #0x5c4]
	mov r1, #1
	cmp r3, #0
	mov r6, #0x12
	beq _020D1374
	ldr r2, [r3, #0xc]
	mov r11, #0x10
	add r12, r3, r2
	mov r9, #0x16
	mov r2, #2
	mov r3, #4
	strb r3, [sp, #0x6c]
	strh r11, [sp, #0x5e]
	strh r7, [sp, #0x5c]
	strh r9, [sp, #0x60]
	strh r2, [sp, #0x62]
	strh r8, [sp, #0x64]
	strh r8, [sp, #0x66]
	strh r8, [sp, #0x68]
	strh r8, [sp, #0x6a]
	str r12, [sp, #0x70]
	str r1, [sp]
	mov r4, #8
	stmib sp, {r0, r4}
	str r8, [sp, #0xc]
	sub r4, r4, #9
	ldr r0, _020D17C0 ; =0x0209F5C0
	mov r1, r8
	mov r3, r7
	str r4, [sp, #0x10]
	b _020D1370
_020D12FC:
	ldr r2, [r10, #0x5d0]
	mov r6, r8
	cmp r2, #0
	mov r9, #1
	beq _020D1374
	ldr r1, [r2, #0xc]
	mov r3, #0x16
	add r11, r2, r1
	mov r2, #2
	mov r1, #4
	strh r3, [sp, #0x60]
	strb r1, [sp, #0x6c]
	strh r7, [sp, #0x5c]
	strh r4, [sp, #0x5e]
	strh r2, [sp, #0x62]
	strh r8, [sp, #0x64]
	strh r8, [sp, #0x66]
	strh r8, [sp, #0x68]
	strh r8, [sp, #0x6a]
	str r11, [sp, #0x70]
	str r9, [sp]
	str r0, [sp, #4]
	mov r0, #8
	str r0, [sp, #8]
	str r8, [sp, #0xc]
	ldr r0, _020D17C0 ; =0x0209F5C0
	mov r1, r8
	mov r3, r7
	str r9, [sp, #0x10]
_020D1370:
	bl FUN_ov16_020f5c34
_020D1374:
	ldr r2, [r10, #0x420]
	mov r9, #6
	cmp r2, #0
	add r7, sp, #0x5c
	mov r8, #0xa
	beq _020D13E0
	ldr r0, [r2, #0xc]
	mov r1, #0
	add r0, r2, r0
	mov r3, #1
	mov r2, #2
	str r0, [sp, #0x70]
	strh r9, [sp, #0x60]
	strh r1, [sp, #0x5c]
	strh r3, [sp, #0x5e]
	strh r2, [sp, #0x62]
	strh r1, [sp, #0x64]
	strh r1, [sp, #0x66]
	strh r1, [sp, #0x68]
	strh r1, [sp, #0x6a]
	strb r8, [sp, #0x6c]
	stmia sp, {r3, r7}
	str r1, [sp, #8]
	str r1, [sp, #0xc]
	ldr r0, _020D17C0 ; =0x0209F5C0
	str r1, [sp, #0x10]
	bl FUN_ov16_020f5c34
_020D13E0:
	mov r4, #0
	mov r1, #7
	mov r0, #0x12
	strh r1, [sp, #0x5c]
	strh r0, [sp, #0x60]
	strh r9, [sp, #0x62]
	strh r4, [sp, #0x64]
	strh r4, [sp, #0x66]
	strh r4, [sp, #0x68]
	strh r4, [sp, #0x6a]
	strb r8, [sp, #0x6c]
	str r4, [sp, #0x70]
	strh r6, [sp, #0x5e]
	ldr r6, [r10, #0x414]
	mov r1, #0
	cmp r6, #0
	ldrne r0, [r6, #0xc]
	mov r2, #2
	addne r4, r6, r0
	str r4, [sp, #0x70]
	str r8, [sp]
	cmp r5, #0
	mvnne r5, #0
	str r7, [sp, #4]
	mov r0, #8
	str r0, [sp, #8]
	ldr r0, _020D17C0 ; =0x0209F5C0
	moveq r5, #1
	str r1, [sp, #0xc]
	mov r3, #0x22
	str r5, [sp, #0x10]
	bl FUN_ov16_020f5c34
	cmp r6, #0
	addne r4, r4, #0xd8
	mov r3, #8
	mov r2, #6
	mov r1, #0x27
	mov r0, #0x24
	strh r3, [sp, #0x64]
	strh r2, [sp, #0x66]
	strh r1, [sp, #0x68]
	strh r0, [sp, #0x6a]
	str r4, [sp, #0x70]
	add r0, sp, #0x5c
	str r8, [sp]
	str r0, [sp, #4]
	mov r1, #0
	str r1, [sp, #8]
	str r1, [sp, #0xc]
	ldr r0, _020D17C0 ; =0x0209F5C0
	mov r2, #2
	mov r3, #0x23
	str r1, [sp, #0x10]
	bl FUN_ov16_020f5c34
	mov r3, #0x24
	cmp r6, #0
	addne r4, r4, #0xd8
	mov r1, #0x36
	mov r0, #6
	strh r1, [sp, #0x64]
	strh r0, [sp, #0x66]
	str r4, [sp, #0x70]
	strh r3, [sp, #0x68]
	strh r3, [sp, #0x6a]
	add r0, sp, #0x5c
	str r8, [sp]
	str r0, [sp, #4]
	mov r1, #0
	str r1, [sp, #8]
	str r1, [sp, #0xc]
	ldr r0, _020D17C0 ; =0x0209F5C0
	mov r2, #2
	str r1, [sp, #0x10]
	bl FUN_ov16_020f5c34
	cmp r6, #0
	addne r4, r4, #0xd8
	mov r1, #0x61
	mov r7, #6
	mov r6, #0x27
	mov r0, #0x24
	strh r0, [sp, #0x6a]
	str r4, [sp, #0x70]
	strh r1, [sp, #0x64]
	mov r9, #0
	strh r7, [sp, #0x66]
	strh r6, [sp, #0x68]
	add r0, sp, #0x5c
	str r8, [sp]
	stmib sp, {r0, r9}
	str r9, [sp, #0xc]
	ldr r0, _020D17C0 ; =0x0209F5C0
	mov r1, r9
	mov r2, #2
	mov r3, #0x25
	str r9, [sp, #0x10]
	bl FUN_ov16_020f5c34
	ldr r0, _020D17C0 ; =0x0209F5C0
	mov r1, r9
	mov r2, r8
	bl FUN_ov16_020f616c
	ldr r0, _020D17C0 ; =0x0209F5C0
	mov r1, r9
	mov r2, #0x22
	bl FUN_ov16_020f60f8
	ldr r1, [r10, #0x42c]
	mov r5, #0x1a
	ldr r0, [r1, #0xc]
	mov r4, #4
	add r0, r1, r0
	str r0, [sp, #0x58]
	mov r11, #0x30
	mov r0, #0x20
	strh r0, [sp, #0x52]
	strh r5, [sp, #0x44]
	strh r9, [sp, #0x46]
	strh r7, [sp, #0x48]
	strh r4, [sp, #0x4a]
	strh r9, [sp, #0x4c]
	strh r9, [sp, #0x4e]
	strb r8, [sp, #0x54]
	strh r11, [sp, #0x50]
	str r7, [sp]
	add r1, sp, #0x44
	stmib sp, {r1, r9}
	str r9, [sp, #0xc]
	ldr r0, _020D17C0 ; =0x0209F5C0
	str r9, [sp, #0x10]
	mov r1, r9
	mov r2, #2
	mov r3, #0x26
	bl FUN_ov16_020f5c34
	ldr r12, [r10, #0x438]
	mov r3, r6
	ldr r6, [r12, #0xc]
	add lr, sp, #0x2c
	add r6, r12, r6
	strh r4, [sp, #0x32]
	mov r4, #0x20
	strh r5, [sp, #0x2c]
	strh r11, [sp, #0x38]
	strh r4, [sp, #0x3a]
	strb r8, [sp, #0x3c]
	str r6, [sp, #0x40]
	strh r9, [sp, #0x2e]
	strh r7, [sp, #0x30]
	strh r9, [sp, #0x34]
	strh r9, [sp, #0x36]
	stmia sp, {r7, lr}
	str r9, [sp, #8]
	str r9, [sp, #0xc]
	ldr r0, _020D17C0 ; =0x0209F5C0
	mov r2, #2
	mov r1, r9
	str r9, [sp, #0x10]
	bl FUN_ov16_020f5c34
	ldr r0, _020D17C4 ; =0x020A0640
	ldrb r0, [r0, #0x8f]
	cmp r0, #0xc
	bne _020D1674
	ldr r1, _020D17C8 ; =0x0209A454
	ldr r0, _020D17BC ; =0x02099EF0
	ldrb r1, [r1, #0x28]
	ldr r0, [r0]
	bl FUN_ov126_02136ed8
	mov r9, r0
_020D1674:
	mov r1, r9, lsl #3
	mov r0, r1, asr #2
	add r0, r1, r0, lsr #29
	mov r0, r0, asr #3
	ldr r8, [r10, #0x444]
	mov r1, r0, lsl #3
	mov r0, r1, asr #2
	add r0, r1, r0, lsr #29
	ldr r5, [r8, #0xc]
	mov r6, #0
	mov r7, #1
	mov r3, #0x1d
	mov r2, #2
	mov r1, #0xa
	strh r3, [sp, #0x14]
	strh r2, [sp, #0x16]
	strb r1, [sp, #0x24]
	add r5, r8, r5
	mov r0, r0, asr #3
	add r0, r5, r0, lsl #1
	str r0, [sp, #0x28]
	strh r7, [sp, #0x18]
	strh r7, [sp, #0x1a]
	strh r6, [sp, #0x1c]
	strh r6, [sp, #0x1e]
	strh r6, [sp, #0x20]
	strh r6, [sp, #0x22]
	mov r5, #6
	add r0, sp, #0x14
	str r5, [sp]
	stmib sp, {r0, r6}
	ldr r4, _020D17C0 ; =0x0209F5C0
	str r6, [sp, #0xc]
	mov r0, r4
	mov r1, r6
	mov r2, r7
	mov r3, r7
	str r6, [sp, #0x10]
	bl FUN_ov16_020f5c34
	ldr r0, _020D17C4 ; =0x020A0640
	ldrb r0, [r0, #0x8f]
	cmp r0, #0xc
	bne _020D17A4
	ldr r3, _020D17C8 ; =0x0209A454
	mov r2, r5
	mov r0, r4
	mov r1, r6
	ldrb r5, [r3, #0x28]
	bl FUN_ov16_020f616c
	mov r0, r4
	mov r1, r6
	mov r2, r7
	bl FUN_ov16_020f60f8
	ldr r0, _020D17BC ; =0x02099EF0
	mov r1, r5
	ldr r0, [r0]
	bl FUN_ov126_02136ec0
	cmp r0, #0
	mov r0, r4
	mov r2, #0x26
	mov r1, r6
	beq _020D1788
	bl FUN_ov16_020f6084
	mov r0, r4
	mov r1, r6
	mov r2, #0x27
	bl FUN_ov16_020f60f8
	add sp, sp, #0x74
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
_020D1788:
	bl FUN_ov16_020f60f8
	mov r0, r4
	mov r1, r6
	mov r2, #0x27
	bl FUN_ov16_020f6084
	add sp, sp, #0x74
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
_020D17A4:
	mov r0, r4
	mov r1, r6
	mov r2, r5
	bl FUN_ov16_020f616c
	add sp, sp, #0x74
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
_020D17BC: .word 0x02099EF0
_020D17C0: .word 0x0209F5C0
_020D17C4: .word 0x020A0640
_020D17C8: .word 0x0209A454
	arm_func_end FUN_ov1_020d121c

	arm_func_start FUN_ov1_020d17cc
FUN_ov1_020d17cc: ; 0x020D17CC
	add r1, r0, #8
	ldr r0, _020D17E0 ; =0x020E887C
	ldr r12, _020D17E4 ; =FUN_ov1_020dbe00
	add r1, r1, #0x400
	bx r12
_020D17E0: .word 0x020E887C
_020D17E4: .word FUN_ov1_020dbe00
	arm_func_end FUN_ov1_020d17cc

	arm_func_start FUN_ov1_020d17e8
FUN_ov1_020d17e8: ; 0x020D17E8
	mov r1, r0
	ldr r0, [r1, #0x408]
	ldr r2, _020D1800 ; =0x020E7A7C
	ldr r12, _020D1804 ; =FUN_ov1_020dbfdc
	add r1, r1, #0x348
	bx r12
_020D1800: .word 0x020E7A7C
_020D1804: .word FUN_ov1_020dbfdc
	arm_func_end FUN_ov1_020d17e8

	arm_func_start FUN_ov1_020d1808
FUN_ov1_020d1808: ; 0x020D1808
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	mov r5, #1
	mov r7, r0
	sub r4, r5, #2
	ldr r0, [r7, #0x444]
	mov r1, r5
	mov r2, r4
	bl FUN_ov16_020f18e8
	ldr r0, [r7, #0x414]
	ldr r6, [r7, #0x68]
	mov r1, #0
	mov r2, #0xa
	bl FUN_ov16_020f1138
	ldr r0, [r7, #0x414]
	mov r2, r4
	add r1, r6, #1
	bl FUN_ov16_020f18e8
	add r1, r0, #1
	ldr r0, [r7, #0x420]
	mov r2, r4
	bl FUN_ov16_020f18e8
	add r1, r0, #1
	ldr r0, [r7, #0x42c]
	mov r2, r4
	bl FUN_ov16_020f18e8
	add r1, r0, #1
	ldr r0, [r7, #0x438]
	mov r2, r4
	bl FUN_ov16_020f18e8
	add r1, r0, #1
	ldr r0, [r7, #0x5c4]
	mov r2, r4
	bl FUN_ov16_020f18e8
	add r1, r0, #1
	ldr r0, [r7, #0x5d0]
	mov r2, r4
	bl FUN_ov16_020f18e8
	strb r5, [r7, #0x1e]
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
	arm_func_end FUN_ov1_020d1808

	arm_func_start FUN_ov1_020d18a4
FUN_ov1_020d18a4: ; 0x020D18A4
	stmfd sp!, {r3, r4, r5, lr}
	mov r5, r0
	ldrb r0, [r5, #0x1e]
	cmp r0, #0
	ldmeqfd sp!, {r3, r4, r5, pc}
	ldr r1, [r5, #0x444]
	mov r3, #0
	mov r0, #1
	mov r2, #0x20
	strb r3, [r5, #0x1e]
	bl FUN_ov16_020f19d4
	mov r4, #2
	ldr r1, [r5, #0x414]
	ldr r2, [r5, #0x64]
	mov r0, r4
	bl FUN_ov16_020f19d4
	mov r2, r0
	ldr r1, [r5, #0x420]
	mov r0, r4
	bl FUN_ov16_020f19d4
	mov r2, r0
	ldr r1, [r5, #0x42c]
	mov r0, r4
	bl FUN_ov16_020f19d4
	mov r2, r0
	mov r0, r4
	ldr r1, [r5, #0x438]
	bl FUN_ov16_020f19d4
	mov r2, r0
	mov r0, r4
	ldr r1, [r5, #0x5c4]
	bl FUN_ov16_020f19d4
	ldr r1, [r5, #0x5d0]
	mov r2, r0
	mov r0, r4
	bl FUN_ov16_020f19d4
	bl FUN_ov16_020f10ac
	ldmfd sp!, {r3, r4, r5, pc}
	arm_func_end FUN_ov1_020d18a4

	arm_func_start FUN_ov1_020d193c
FUN_ov1_020d193c: ; 0x020D193C
	stmfd sp!, {r4, r5, lr}
	sub sp, sp, #0x2c
	mov r12, #0xc
	mla r0, r1, r12, r0
	ldr r1, [r0, #0x348]
	cmp r1, #0
	addeq sp, sp, #0x2c
	ldmeqfd sp!, {r4, r5, pc}
	ldr r0, [r1, #0xc]
	mov r5, #0
	add lr, r1, r0
	rsb r12, r3, #0x14
	mov r3, #5
	mov r0, #0x16
	mov r1, #2
	mov r4, #4
	strh r0, [sp, #0x18]
	strh r3, [sp, #0x14]
	strh r12, [sp, #0x16]
	strh r1, [sp, #0x1a]
	strh r5, [sp, #0x1c]
	strh r5, [sp, #0x1e]
	strh r5, [sp, #0x20]
	strh r5, [sp, #0x22]
	strb r4, [sp, #0x24]
	str lr, [sp, #0x28]
	str r1, [sp]
	add r0, sp, #0x14
	stmib sp, {r0, r5}
	str r5, [sp, #0xc]
	ldr r0, _020D19DC ; =0x0209F5C0
	mov r1, r5
	str r5, [sp, #0x10]
	bl FUN_ov16_020f5c34
	mov r0, r5
	mov r1, r4
	mov r2, #1
	bl FUN_ov16_020f0e9c
	add sp, sp, #0x2c
	ldmfd sp!, {r4, r5, pc}
_020D19DC: .word 0x0209F5C0
	arm_func_end FUN_ov1_020d193c

	arm_func_start FUN_ov1_020d19e0
FUN_ov1_020d19e0: ; 0x020D19E0
	stmfd sp!, {r3, r4, r5, r6, lr}
	sub sp, sp, #0x2c
	mov r2, #0xc
	mla r0, r1, r2, r0
	ldr r1, [r0, #0x348]
	cmp r1, #0
	addeq sp, sp, #0x2c
	ldmeqfd sp!, {r3, r4, r5, r6, pc}
	ldr r0, [r1, #0xc]
	mov r6, #0
	add lr, r1, r0
	mov r12, #5
	mov r3, #0xa
	mov r1, #0x16
	mov r2, #2
	mov r0, #4
	strh r1, [sp, #0x18]
	strb r0, [sp, #0x24]
	strh r12, [sp, #0x14]
	strh r3, [sp, #0x16]
	mov r4, #7
	strh r2, [sp, #0x1a]
	strh r6, [sp, #0x1c]
	strh r6, [sp, #0x1e]
	strh r6, [sp, #0x20]
	strh r6, [sp, #0x22]
	str lr, [sp, #0x28]
	add r0, sp, #0x14
	str r2, [sp]
	stmib sp, {r0, r6}
	ldr r5, _020D1A90 ; =0x0209F5C0
	str r6, [sp, #0xc]
	mov r0, r5
	mov r1, r6
	mov r3, r4
	str r6, [sp, #0x10]
	bl FUN_ov16_020f5c34
	mov r0, r5
	mov r1, r6
	mov r2, r4
	mov r3, #0x5a
	bl FUN_ov16_020f5eec
	add sp, sp, #0x2c
	ldmfd sp!, {r3, r4, r5, r6, pc}
_020D1A90: .word 0x0209F5C0
	arm_func_end FUN_ov1_020d19e0

	arm_func_start FUN_ov1_020d1a94
FUN_ov1_020d1a94: ; 0x020D1A94
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, lr}
	sub sp, sp, #0x48
	ldr r4, [sp, #0x78]
	mov r10, r0
	mov r0, #0xc
	mla r0, r4, r0, r10
	ldr r0, [r0, #0x348]
	ldr r7, [sp, #0x90]
	str r2, [sp, #0x14]
	str r3, [sp, #0x18]
	ldr r8, [sp, #0x70]
	ldr r4, [sp, #0x84]
	cmp r0, #0
	mov r9, r1
	addeq sp, sp, #0x48
	ldmeqfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
	ldrb r2, [sp, #0x94]
	mov r1, #0
	cmp r9, #0
	moveq r1, #0x12
	mov r1, r1, lsl #0x10
	cmp r2, #0
	mov r6, r1, asr #0x10
	ldr r2, [r0, #0xc]
	movne r6, #3
	ldr r1, [sp, #0x7c]
	add r0, r0, r2
	add r5, r0, r1, lsl #1
	ldr r0, [sp, #0x18]
	mov r3, #0
	strh r6, [sp, #0x30]
	mov r2, r0, lsl #3
	ldr r0, [sp, #0x14]
	mov r1, #0x20
	strh r0, [sp, #0x32]
	ldr r0, [sp, #0x18]
	cmp r8, #6
	strh r0, [sp, #0x34]
	strh r1, [sp, #0x3e]
	str r5, [sp, #0x44]
	strh r3, [sp, #0x3a]
	moveq r0, #0x10
	streqh r0, [sp, #0x3a]
	strh r8, [sp, #0x36]
	strh r3, [sp, #0x38]
	ldr r5, [sp, #0x74]
	strh r2, [sp, #0x3c]
	mov r1, #0
	strb r4, [sp, #0x40]
	mov r11, #1
	add r0, sp, #0x30
	str r11, [sp]
	str r0, [sp, #4]
	mov r0, #6
	str r0, [sp, #8]
	mov r2, r1
	str r2, [sp, #0xc]
	sub r2, r2, #1
	str r2, [sp, #0x10]
	ldr r0, _020D2208 ; =0x0209F5C0
	mov r2, #2
	mov r3, r5
	bl FUN_ov16_020f5c34
	ldr r1, [sp, #0x80]
	mov r0, #0xc
	mla r0, r1, r0, r10
	ldr r3, [r0, #0x348]
	cmp r3, #0
	addeq sp, sp, #0x48
	ldmeqfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
	ldrb r0, [sp, #0x94]
	ldr r2, [r3, #0xc]
	mov r1, #0x15
	cmp r0, #0
	movne r11, #0
	mov r0, #0xe
	add r2, r3, r2
	cmp r11, #0
	moveq r0, #0x11
	strh r0, [sp, #0x34]
	mov r0, #2
	strh r0, [sp, #0x36]
	mov r0, #0
	strh r1, [sp, #0x32]
	str r2, [sp, #0x44]
	strh r6, [sp, #0x30]
	strh r0, [sp, #0x38]
	strh r0, [sp, #0x3a]
	strh r0, [sp, #0x3c]
	strh r0, [sp, #0x3e]
	strb r4, [sp, #0x40]
	mov r0, #1
	str r0, [sp]
	add r1, sp, #0x30
	mov r0, #6
	str r1, [sp, #4]
	str r0, [sp, #8]
	sub r1, r0, #7
	mov r0, #0
	str r0, [sp, #0xc]
	str r1, [sp, #0x10]
	ldr r0, _020D2208 ; =0x0209F5C0
	mov r1, #0
	mov r2, #1
	mov r3, r5
	bl FUN_ov16_020f5c34
	ldr r0, [sp, #0x88]
	cmp r0, #1
	blt _020D1CEC
	cmp r0, #4
	bgt _020D1CEC
	ldr r3, [r10, #0x384]
	cmp r3, #0
	beq _020D1CEC
	ldr r2, [r3, #0xc]
	add r1, r6, #0xa
	strh r1, [sp, #0x30]
	mov r1, #1
	strh r1, [sp, #0x34]
	mov r1, #2
	strh r1, [sp, #0x36]
	mov r1, #0x16
	strh r1, [sp, #0x32]
	mov r1, #0
	add r2, r3, r2
	sub r0, r0, #1
	add r0, r2, r0, lsl #2
	str r0, [sp, #0x44]
	cmp r4, #5
	strh r1, [sp, #0x38]
	strh r1, [sp, #0x3a]
	strh r1, [sp, #0x3c]
	strh r1, [sp, #0x3e]
	moveq r1, #5
	movne r1, #0xc
	strb r1, [sp, #0x40]
	mov r2, #1
	add r0, sp, #0x30
	str r2, [sp]
	str r0, [sp, #4]
	mov r0, #6
	mov r1, #0
	str r0, [sp, #8]
	ldr r0, _020D2208 ; =0x0209F5C0
	str r1, [sp, #0xc]
	sub r2, r1, #1
	str r2, [sp, #0x10]
	mov r3, r5
	mov r2, #2
	bl FUN_ov16_020f5c34
_020D1CEC:
	ldr r0, [sp, #0x8c]
	cmp r0, #0
	addlt sp, sp, #0x48
	ldmltfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
	ldr r0, [r10, #0x378]
	str r0, [sp, #0x20]
	cmp r0, #0
	addeq sp, sp, #0x48
	ldmeqfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
	add r0, r6, #0xb
	cmp r11, #0
	addeq r0, r6, #0x11
	mov r0, r0, lsl #0x10
	mov r6, r0, asr #0x10
	ldr r0, [sp, #0x8c]
	ldr r3, _020D220C ; =0x66666667
	mov r1, r0, lsr #0x1f
	smull r2, r0, r3, r0
	add r0, r1, r0, asr #2
	cmp r0, #0
	ble _020D1DB8
	ldr r1, [sp, #0x20]
	ldr r2, [sp, #0x20]
	ldr r3, [r1, #0xc]
	mov r1, #0
	add r2, r2, r3
	add r3, r2, r0, lsl #2
	mov r0, #0x15
	strh r0, [sp, #0x32]
	mov r2, #1
	mov r0, #2
	str r3, [sp, #0x44]
	strh r0, [sp, #0x36]
	mov r3, #6
	strh r6, [sp, #0x30]
	strh r2, [sp, #0x34]
	strh r1, [sp, #0x38]
	strh r1, [sp, #0x3a]
	strh r1, [sp, #0x3c]
	strh r1, [sp, #0x3e]
	strb r4, [sp, #0x40]
	str r2, [sp]
	add r11, sp, #0x30
	str r11, [sp, #4]
	str r3, [sp, #8]
	sub r0, r3, #7
	str r1, [sp, #0xc]
	str r0, [sp, #0x10]
	ldr r0, _020D2208 ; =0x0209F5C0
	mov r3, r5
	bl FUN_ov16_020f5c34
_020D1DB8:
	ldr r0, [sp, #0x8c]
	ldr r11, _020D220C ; =0x66666667
	mov r2, r0, lsr #0x1f
	smull r3, r1, r11, r0
	add r1, r2, r1, asr #2
	ldr r2, [sp, #0x20]
	mov r11, #0xa
	ldr r3, [r2, #0xc]
	add r3, r2, r3
	smull r1, r2, r11, r1
	sub r1, r0, r1
	add r0, r3, r1, lsl #2
	mov r1, #0
	str r0, [sp, #0x44]
	add r0, r6, #1
	strh r0, [sp, #0x30]
	mov r0, #0x15
	strh r0, [sp, #0x32]
	mov r2, #1
	mov r0, #2
	strh r0, [sp, #0x36]
	strb r4, [sp, #0x40]
	strh r1, [sp, #0x38]
	strh r1, [sp, #0x3a]
	strh r1, [sp, #0x3c]
	strh r1, [sp, #0x3e]
	strh r2, [sp, #0x34]
	str r2, [sp]
	add r3, sp, #0x30
	str r3, [sp, #4]
	mov r0, #6
	str r0, [sp, #8]
	sub r0, r0, #7
	str r1, [sp, #0xc]
	str r0, [sp, #0x10]
	ldr r0, _020D2208 ; =0x0209F5C0
	mov r3, r5
	bl FUN_ov16_020f5c34
	ldrb r0, [sp, #0x94]
	cmp r0, #0
	addne sp, sp, #0x48
	ldmnefd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
	ldr r1, _020D2210 ; =0x51EB851F
	cmp r4, #5
	smull r2, r3, r1, r7
	mov r0, r7, lsr #0x1f
	moveq r11, #5
	mov r4, r11, lsl #0x10
	mov r2, r7
	smull r11, r7, r1, r7
	add r3, r0, r3, asr #5
	ands r1, r3, #0xff
	add r7, r0, r7, asr #5
	mov r3, #0x64
	str r1, [sp, #0x28]
	smull r0, r1, r3, r7
	mov r4, r4, lsr #0x10
	mov r11, #0
	sub r7, r2, r0
	beq _020D1EC0
	ldr r0, [sp, #0x28]
	cmp r0, #1
	beq _020D1ED4
	cmp r0, #2
	beq _020D1F14
	b _020D1F50
_020D1EC0:
	cmp r7, #1
	movle r7, r11
	cmp r9, #0
	mov r0, #0x3e
	b _020D1F24
_020D1ED4:
	cmp r7, #1
	movle r7, r11
	sub r0, r7, #2
	mov r11, r0, lsl #3
	mov r0, #0x3d
	mov r8, #2
	cmp r9, #0
	str r0, [sp, #0x24]
	movne r0, #2
	moveq r0, #0x1d
	mov r0, r0, lsl #0x10
	mov r6, r0, asr #0x10
	str r8, [sp, #0x18]
	mov r0, #0x13
	str r0, [sp, #0x14]
	b _020D1F54
_020D1F14:
	cmp r7, #1
	movle r7, r11
	cmp r9, #0
	mov r0, #0x40
_020D1F24:
	str r0, [sp, #0x24]
	movne r0, #1
	moveq r0, #0x1c
	mov r0, r0, lsl #0x10
	mov r6, r0, asr #0x10
	mov r0, #0x13
	str r0, [sp, #0x14]
	mov r0, #1
	str r0, [sp, #0x18]
	mov r8, #2
	b _020D1F54
_020D1F50:
	mov r7, r11
_020D1F54:
	cmp r7, #0
	addeq sp, sp, #0x48
	ldmeqfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
	cmp r9, #0
	movne r0, #0
	movne r1, r0
	ldr r12, [r10, #0x618]
	moveq r0, #0x1b
	moveq r1, #0xa
	cmp r12, #0
	addeq sp, sp, #0x48
	ldmeqfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
	ldr r3, [r12, #0xc]
	mov r2, #0x13
	strh r0, [sp, #0x30]
	mov r0, #5
	add r3, r12, r3
	add r1, r3, r1, lsl #1
	strh r0, [sp, #0x34]
	mov r0, #2
	strh r2, [sp, #0x32]
	str r1, [sp, #0x44]
	str r0, [sp, #0x1c]
	strh r0, [sp, #0x36]
	mov r0, #0
	strh r0, [sp, #0x38]
	strh r0, [sp, #0x3a]
	strh r0, [sp, #0x3c]
	strh r0, [sp, #0x3e]
	strb r4, [sp, #0x40]
	mov r0, #1
	str r0, [sp]
	add r0, sp, #0x30
	str r0, [sp, #4]
	mov r0, #6
	str r0, [sp, #8]
	mov r0, #0
	str r0, [sp, #0xc]
	mov r0, #6
	sub r0, r0, #7
	str r0, [sp, #0x2c]
	str r0, [sp, #0x10]
	ldr r0, _020D2208 ; =0x0209F5C0
	mov r1, #0
	mov r2, #1
	mov r3, r5
	bl FUN_ov16_020f5c34
	ldr r0, [sp, #0x24]
	mov r1, #0xc
	mla r1, r0, r1, r10
	ldr r3, [r1, #0x348]
	cmp r3, #0
	addeq sp, sp, #0x48
	ldmeqfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
	ldr r2, [r3, #0xc]
	mov r1, #0
	add r2, r3, r2
	strh r6, [sp, #0x30]
	add r3, r11, r2
	ldr r2, [sp, #0x14]
	ldr r6, [sp, #0x2c]
	strh r2, [sp, #0x32]
	ldr r2, [sp, #0x18]
	ldr r0, _020D2208 ; =0x0209F5C0
	strh r2, [sp, #0x34]
	mov r2, r1
	str r3, [sp, #0x44]
	strh r8, [sp, #0x36]
	strh r2, [sp, #0x38]
	strh r2, [sp, #0x3a]
	strh r2, [sp, #0x3c]
	strh r2, [sp, #0x3e]
	strb r4, [sp, #0x40]
	mov r2, #1
	str r2, [sp]
	add r2, sp, #0x30
	str r2, [sp, #4]
	mov r2, #6
	str r2, [sp, #8]
	mov r2, r1
	str r2, [sp, #0xc]
	mov r2, #1
	mov r3, r5
	str r6, [sp, #0x10]
	bl FUN_ov16_020f5c34
	ldr r0, [sp, #0x28]
	cmp r0, #1
	addeq sp, sp, #0x48
	ldmeqfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
	ldr r10, [r10, #0x63c]
	mov r11, #0
	cmp r10, #0
	mov r8, #1
	addeq sp, sp, #0x48
	ldmeqfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
	ldr r1, _020D220C ; =0x66666667
	cmp r9, #0
	moveq r0, #0x1d
	streq r0, [sp, #0x1c]
	smull r3, r0, r1, r7
	ldr r3, [r10, #0xc]
	ldr r1, [sp, #0x1c]
	mov r2, r7, lsr #0x1f
	mov r1, r1, lsl #0x10
	mov r9, r1, asr #0x10
	add r1, r9, #1
	add r0, r2, r0, asr #2
	mov r2, #0x13
	strh r1, [sp, #0x30]
	add r1, r10, r3
	strh r2, [sp, #0x32]
	mov r2, #2
	mov r3, #0xa
	strh r2, [sp, #0x36]
	smull r0, r2, r3, r0
	sub r0, r7, r0
	add r0, r1, r0, lsl #2
	str r0, [sp, #0x44]
	strh r8, [sp, #0x34]
	strh r11, [sp, #0x38]
	strh r11, [sp, #0x3a]
	strh r11, [sp, #0x3c]
	strh r11, [sp, #0x3e]
	strb r4, [sp, #0x40]
	str r8, [sp]
	add r0, sp, #0x30
	str r0, [sp, #4]
	mov r0, #6
	str r0, [sp, #8]
	sub r6, r0, #7
	str r11, [sp, #0xc]
	ldr r0, _020D2208 ; =0x0209F5C0
	mov r1, r11
	mov r2, r8
	mov r3, r5
	str r6, [sp, #0x10]
	bl FUN_ov16_020f5c34
	cmp r7, #0xa
	addlt sp, sp, #0x48
	ldmltfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
	ldr r0, _020D220C ; =0x66666667
	mov r3, r5
	ldr r5, [r10, #0xc]
	smull r1, r2, r0, r7
	mov r0, r7, lsr #0x1f
	add r2, r0, r2, asr #2
	add r5, r10, r5
	add r5, r5, r2, lsl #2
	mov r2, #0x13
	strh r2, [sp, #0x32]
	mov r2, #2
	strh r2, [sp, #0x36]
	strh r9, [sp, #0x30]
	strh r8, [sp, #0x34]
	strh r11, [sp, #0x38]
	strh r11, [sp, #0x3a]
	strh r11, [sp, #0x3c]
	strh r11, [sp, #0x3e]
	strb r4, [sp, #0x40]
	str r5, [sp, #0x44]
	str r8, [sp]
	add r2, sp, #0x30
	str r2, [sp, #4]
	mov r2, #6
	str r2, [sp, #8]
	str r11, [sp, #0xc]
	ldr r0, _020D2208 ; =0x0209F5C0
	mov r1, r11
	mov r2, r8
	str r6, [sp, #0x10]
	bl FUN_ov16_020f5c34
	add sp, sp, #0x48
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_020D2208: .word 0x0209F5C0
_020D220C: .word 0x66666667
_020D2210: .word 0x51EB851F
	arm_func_end FUN_ov1_020d1a94

	arm_func_start FUN_ov1_020d2214
FUN_ov1_020d2214: ; 0x020D2214
	stmfd sp!, {r3, r4, r5, r6, lr}
	sub sp, sp, #0x2c
	ldr r5, [r0, #0x4c8]
	mov r4, r3
	cmp r5, #0
	addeq sp, sp, #0x2c
	ldmeqfd sp!, {r3, r4, r5, r6, pc}
	ldr r1, [r1, #0x10]
	cmp r1, #0
	ble _020D2258
	ldr r3, [r0, #0x5c]
	ldr r0, [r0, #0x60]
	add r1, r3, #1
	cmp r1, r0
	movge r1, #1
	addlt r1, r3, #2
	b _020D2268
_020D2258:
	ldr r0, [r0, #0x5c]
	mov r1, #1
	cmp r0, #0
	moveq r1, #0
_020D2268:
	ldr r0, [r5, #0xc]
	mov r6, #0
	add r0, r5, r0
	add r12, r0, r1, lsl #5
	mov r3, #4
	mov r0, #0x20
	cmp r2, #0
	mov lr, #3
	moveq lr, #5
	mov r5, #0xe
	mov r1, #0x14
	strh r5, [sp, #0x14]
	strh r1, [sp, #0x16]
	strh r3, [sp, #0x18]
	strh r3, [sp, #0x1a]
	strh r6, [sp, #0x1c]
	strh r6, [sp, #0x1e]
	strh r0, [sp, #0x20]
	strh r0, [sp, #0x22]
	strb lr, [sp, #0x24]
	str r12, [sp, #0x28]
	mov r5, #1
	mov r2, #6
	add r0, sp, #0x14
	str r5, [sp]
	stmib sp, {r0, r2}
	sub r12, r2, #7
	str r6, [sp, #0xc]
	ldr r0, _020D2310 ; =0x0209F5C0
	mov r1, r6
	mov r2, #2
	str r12, [sp, #0x10]
	bl FUN_ov16_020f5c34
	cmp r4, #0
	addeq sp, sp, #0x2c
	ldmeqfd sp!, {r3, r4, r5, r6, pc}
	mov r0, r6
	mov r2, r5
	mov r1, #3
	bl FUN_ov16_020f0e9c
	add sp, sp, #0x2c
	ldmfd sp!, {r3, r4, r5, r6, pc}
_020D2310: .word 0x0209F5C0
	arm_func_end FUN_ov1_020d2214

	arm_func_start FUN_ov1_020d2314
FUN_ov1_020d2314: ; 0x020D2314
	stmfd sp!, {r3, r4, r5, r6, r7, r8, lr}
	sub sp, sp, #0x24
	ldr r2, _020D23F0 ; =0x02099EF0
	mov r6, r0
	ldr r0, [r2]
	mov r5, r1
	bl FUN_ov126_021375d4
	mov r8, r0
	ldrsb r0, [r8, #0xc]
	bl FUN_ov16_020f077c
	cmp r0, #0
	beq _020D2364
	ldrsb r0, [r8, #0xc]
	mov r7, #0
	bl FUN_ov16_020efa80
	mov r4, r0
	ldrsb r0, [r8, #0xd]
	bl FUN_ov16_020efa80
	mov r2, #0x23
	b _020D238C
_020D2364:
	ldrsb r0, [r8, #0xd]
	mov r7, #1
	bl FUN_ov16_020efa80
	mov r4, r0
	ldrsb r0, [r8, #0xc]
	bl FUN_ov16_020efa80
	cmp r4, #0
	addeq sp, sp, #0x24
	mov r2, #0x24
	ldmeqfd sp!, {r3, r4, r5, r6, r7, r8, pc}
_020D238C:
	ldrb r1, [r8, #0xf]
	mov r12, #0
	mov r3, r4
	str r0, [sp]
	mov r0, #1
	stmib sp, {r0, r2}
	tst r1, #0x20
	movne r1, #1
	moveq r1, #0
	cmp r1, #0
	movne r1, #1
	str r7, [sp, #0xc]
	mov r0, #9
	str r0, [sp, #0x10]
	moveq r1, #0
	str r1, [sp, #0x14]
	str r12, [sp, #0x18]
	str r12, [sp, #0x1c]
	mov r0, r6
	mov r1, r5
	mov r2, #2
	str r12, [sp, #0x20]
	bl FUN_ov1_020d59a8
	add sp, sp, #0x24
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, pc}
_020D23F0: .word 0x02099EF0
	arm_func_end FUN_ov1_020d2314

	arm_func_start FUN_ov1_020d23f4
FUN_ov1_020d23f4: ; 0x020D23F4
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	sub sp, sp, #8
	ldr r2, _020D2490 ; =0x02099EF0
	mov r5, r0
	ldr r0, [r2]
	mov r7, r1
	bl FUN_ov126_021375d4
	mov r4, r0
	ldrsb r0, [r4, #0xc]
	bl FUN_ov16_020f07f4
	cmp r5, r0
	bne _020D2440
	ldrsb r0, [r4, #0xc]
	mov r5, #0
	bl FUN_ov16_020efa80
	mov r6, r0
	ldrsb r0, [r4, #0xd]
	bl FUN_ov16_020efa80
	b _020D2464
_020D2440:
	ldrsb r0, [r4, #0xd]
	mov r5, #1
	bl FUN_ov16_020efa80
	mov r6, r0
	ldrsb r0, [r4, #0xc]
	bl FUN_ov16_020efa80
	cmp r6, #0
	addeq sp, sp, #8
	ldmeqfd sp!, {r3, r4, r5, r6, r7, pc}
_020D2464:
	mov r0, #0
	str r0, [sp]
	ldr r0, _020D2490 ; =0x02099EF0
	str r7, [sp, #4]
	ldr r0, [r0]
	mov r1, r6
	mov r3, r5
	mov r2, #1
	bl FUN_ov126_0212fdc0
	add sp, sp, #8
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_020D2490: .word 0x02099EF0
	arm_func_end FUN_ov1_020d23f4

	arm_func_start FUN_ov1_020d2494
FUN_ov1_020d2494: ; 0x020D2494
	stmfd sp!, {r3, r4, r5, lr}
	sub sp, sp, #0x20
	add r4, sp, #0
	mov r5, r1
	mov r1, r4
	bl FUN_ov1_020d23f4
	mov r0, #0
_020D24B0:
	ldr r1, [r4, r0, lsl #2]
	cmp r5, r1
	addeq sp, sp, #0x20
	ldmeqfd sp!, {r3, r4, r5, pc}
	add r0, r0, #1
	cmp r0, #8
	blt _020D24B0
	mvn r0, #0
	add sp, sp, #0x20
	ldmfd sp!, {r3, r4, r5, pc}
	arm_func_end FUN_ov1_020d2494

	arm_func_start FUN_ov1_020d24d8
FUN_ov1_020d24d8: ; 0x020D24D8
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, lr}
	sub sp, sp, #0x38
	ldr r2, _020D27F0 ; =0x02099EF0
	mov r10, r0
	ldr r0, [r2]
	mov r9, r1
	mov r4, #0
	bl FUN_ov126_021375d4
	mov r8, r0
	ldrsb r0, [r8, #0xc]
	bl FUN_ov16_020f07f4
	mov r6, r0
	ldrsb r0, [r8, #0xc]
	bl FUN_ov16_020f077c
	cmp r0, #0
	beq _020D2538
	ldrsb r0, [r8, #0xc]
	mov r5, r4
	bl FUN_ov16_020efa80
	mov r7, r0
	ldrsb r0, [r8, #0xd]
	bl FUN_ov16_020efa80
	str r0, [sp, #0x14]
	b _020D256C
_020D2538:
	ldrsb r0, [r8, #0xd]
	mov r5, #1
	cmp r6, #0
	moveq r4, r5
	mov r6, r4
	bl FUN_ov16_020efa80
	mov r7, r0
	ldrsb r0, [r8, #0xc]
	bl FUN_ov16_020efa80
	str r0, [sp, #0x14]
	cmp r7, #0
	addeq sp, sp, #0x38
	ldmeqfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_020D256C:
	ldr r4, _020D27F0 ; =0x02099EF0
	mov r1, r6
	ldr r0, [r4]
	bl FUN_ov132_02145190
	mov r11, r0
	cmp r9, #4
	bne _020D25E0
	ldr r0, [r4]
	mov r1, r7
	mov r2, #1
	mov r3, r5
	bl FUN_ov126_02130898
	cmp r0, #0
	ldrne r1, [r10, #0x60]
	cmpne r1, #1
	addle sp, sp, #0x38
	ldmlefd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
	ldr r0, [r10, #0x5c]
	add r0, r0, #1
	bl FUN_0201f9bc
	str r1, [r10, #0x5c]
	mov r0, r10
	mov r1, #0
	bl FUN_ov1_020d2314
	ldr r0, _020D27F4 ; =0x0209AC44
	mov r1, #1
	bl FUN_0202cf6c
	add sp, sp, #0x38
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_020D25E0:
	bl FUN_ov16_020f081c
	add r4, sp, #0x18
	mov r1, r4
	bl FUN_ov1_020d23f4
	sub r0, r9, #0x2d
	ldr r0, [r4, r0, lsl #2]
	ldrb r1, [r8, #0xf]
	mov r0, r0, lsl #0x10
	mov r4, r0, lsr #0x10
	mov r0, #1
	stmia sp, {r0, r5, r11}
	tst r1, #0x20
	movne r1, #1
	mov r0, #0
	str r0, [sp, #0xc]
	moveq r1, #0
	str r1, [sp, #0x10]
	ldr r0, _020D27F0 ; =0x02099EF0
	ldr r2, [sp, #0x14]
	ldr r0, [r0]
	mov r1, r7
	mov r3, r4
	bl FUN_ov126_021300d8
	cmp r0, #0
	bne _020D2698
	ldr r0, _020D27F8 ; =0x0209BA20
	mov r1, r4
	bl FUN_0204a2c4
	movs r5, r0
	beq _020D2684
	mov r0, r7
	bl FUN_0206cc84
	mov r4, r0
	mov r0, r5
	mov r1, r7
	bl FUN_0204b114
	cmp r4, r0
	bge _020D2684
	mov r0, r10
	mov r1, #0x25
	bl FUN_ov1_020d19e0
_020D2684:
	ldr r0, _020D27F4 ; =0x0209AC44
	mov r1, #9
	bl FUN_0202cf6c
	add sp, sp, #0x38
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_020D2698:
	ldr r0, [r10, #0x5c]
	cmp r0, #0
	beq _020D26D0
	bl FUN_ov16_020f081c
	add r2, r10, r0
	mov r1, #2
	ldr r0, _020D27FC ; =0x020A0640
	strb r1, [r2, #0x2b4]
	ldrb r0, [r0, #0x1a]
	cmp r0, #0
	beq _020D26C8
	b _020D26D0
_020D26C8:
	ldr r0, _020D27F4 ; =0x0209AC44
	b _020D26D8
_020D26D0:
	ldr r0, _020D27F4 ; =0x0209AC44
	mov r1, #1
_020D26D8:
	bl FUN_0202cf6c
	ldr r0, _020D27F8 ; =0x0209BA20
	mov r1, r4
	bl FUN_0204a2c4
	mov r5, r0
	ldrsb r0, [r8, #0xc]
	bl FUN_ov16_020f077c
	cmp r0, #0
	beq _020D2784
	cmp r5, #0
	beq _020D2750
	ldrb r0, [r5]
	mov r1, #1
	mov r3, r1
	cmp r0, #5
	cmpne r0, #6
	movne r3, #0
	mov r2, r1
	cmp r3, #0
	bne _020D2734
	ldrb r0, [r5]
	cmp r0, #7
	movne r2, #0
_020D2734:
	cmp r2, #0
	bne _020D2748
	ldrb r0, [r5]
	cmp r0, #8
	movne r1, #0
_020D2748:
	cmp r1, #0
	bne _020D2784
_020D2750:
	ldrb r0, [r8, #0xf]
	tst r0, #0x20
	movne r0, #1
	moveq r0, #0
	cmp r0, #0
	bne _020D2784
	add r2, r10, #0x200
	mov r0, r10
	mov r1, #0x22
	strh r4, [r2, #0xb2]
	bl FUN_ov1_020bf9f4
	add sp, sp, #0x38
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_020D2784:
	ldr r0, _020D27FC ; =0x020A0640
	ldrb r0, [r0, #0x1a]
	cmp r0, #0
	ldreq r0, _020D2800 ; =0x020EAAF4
	moveq r1, r6, lsl #1
	streqh r4, [r0, r1]
	beq _020D27C0
	sub r1, r9, #0x2c
	mov r4, #2
	and r3, r1, #0xff
	mov r0, r10
	mov r2, r6
	mov r1, #0xa
	str r4, [sp]
	bl FUN_ov1_020c3a24
_020D27C0:
	ldr r0, [r10, #8]
	cmp r0, #0x17
	mov r0, r10
	beq _020D27E0
	mov r1, #0x25
	bl FUN_ov1_020bf9f4
	add sp, sp, #0x38
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_020D27E0:
	mov r1, #0x4a
	bl FUN_ov1_020bf9f4
	add sp, sp, #0x38
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_020D27F0: .word 0x02099EF0
_020D27F4: .word 0x0209AC44
_020D27F8: .word 0x0209BA20
_020D27FC: .word 0x020A0640
_020D2800: .word 0x020EAAF4
	arm_func_end FUN_ov1_020d24d8

	arm_func_start FUN_ov1_020d2804
FUN_ov1_020d2804: ; 0x020D2804
	stmfd sp!, {r3, r4, r5, r6, r7, r8, lr}
	sub sp, sp, #4
	ldr r4, _020D2880 ; =0x02099EF0
	mov r8, r0
	ldr r0, [r4]
	mov r7, r1
	mov r6, r2
	bl FUN_ov126_021375d4
	mov r5, r0
	ldr r0, [r4]
	mov r1, r7
	mov r2, r6
	bl FUN_ov126_0212d470
	ldrsb r0, [r5, #0xc]
	bl FUN_ov16_020f077c
	cmp r0, #0
	addeq sp, sp, #4
	ldmeqfd sp!, {r3, r4, r5, r6, r7, r8, pc}
	bl FUN_ov16_020f081c
	mov r1, r0
	mov r4, #1
	mov r0, r8
	mov r2, r7
	mov r3, r6
	str r4, [sp]
	bl FUN_ov1_020ce940
	ldr r0, _020D2884 ; =0x0209AC44
	mov r1, #3
	bl FUN_0202cf6c
	add sp, sp, #4
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, pc}
_020D2880: .word 0x02099EF0
_020D2884: .word 0x0209AC44
	arm_func_end FUN_ov1_020d2804

	arm_func_start FUN_ov1_020d2888
FUN_ov1_020d2888: ; 0x020D2888
	stmfd sp!, {r4, r5, r6, r7, r8, r9, lr}
	sub sp, sp, #0x14
	mov r5, r0
	mov r8, r2
	mov r9, r1
	mov r4, #0
	ldr r0, _020D29BC ; =0x0209F5C0
	mov r1, r4
	mov r2, r9
	mov r3, r8
	bl FUN_ov16_020f6b3c
	movs r1, r0
	beq _020D28CC
	mov r0, r5
	bl FUN_ov1_020d24d8
	add sp, sp, #0x14
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, pc}
_020D28CC:
	ldr r6, _020D29C0 ; =0x02099EF0
	ldr r0, [r6]
	bl FUN_ov126_021375d4
	mov r7, r0
	ldrsb r0, [r7, #0xc]
	bl FUN_ov16_020f077c
	cmp r0, #0
	addeq sp, sp, #0x14
	ldmeqfd sp!, {r4, r5, r6, r7, r8, r9, pc}
	ldrsb r0, [r7, #0xc]
	bl FUN_ov16_020efa80
	mov r7, r0
	add r2, sp, #0x10
	add r3, sp, #0xc
	mov r0, r9
	mov r1, r8
	bl FUN_ov16_020efd94 ; may be ov17
	ldr r0, [r6]
	bl FUN_ov132_021452f8
	cmp r0, #0
	bne _020D2950
	ldr r0, [sp, #0x10]
	ldr r3, _020D29C4 ; =0x0209A2C0
	str r0, [sp]
	ldr r0, [sp, #0xc]
	mov r1, r7
	stmib sp, {r0, r4}
	ldr r2, [r3, #0x20]
	ldr r0, [r6]
	ldr r3, [r3, #0x24]
	bl FUN_ov132_021408a4
	cmp r0, #0
	beq _020D29A8
_020D2950:
	ldr r0, _020D29C8 ; =0x020A0640
	ldrb r0, [r0, #0x1a]
	cmp r0, #0
	beq _020D2990
	bl FUN_ov16_020f081c
	ldr r2, [sp, #0xc]
	mov r1, #0
	str r2, [sp]
	str r1, [sp, #4]
	mov r2, r0
	ldr r3, [sp, #0x10]
	mov r0, r5
	mov r1, #0xb
	bl FUN_ov1_020c38e0
	add sp, sp, #0x14
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, pc}
_020D2990:
	ldr r1, [sp, #0x10]
	ldr r2, [sp, #0xc]
	mov r0, r5
	bl FUN_ov1_020d2804
	add sp, sp, #0x14
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, pc}
_020D29A8:
	ldr r0, _020D29CC ; =0x0209AC44
	mov r1, #9
	bl FUN_0202cf6c
	add sp, sp, #0x14
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, pc}
_020D29BC: .word 0x0209F5C0
_020D29C0: .word 0x02099EF0
_020D29C4: .word 0x0209A2C0
_020D29C8: .word 0x020A0640
_020D29CC: .word 0x0209AC44
	arm_func_end FUN_ov1_020d2888

	arm_func_start FUN_ov1_020d29d0
FUN_ov1_020d29d0: ; 0x020D29D0
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, lr}
	sub sp, sp, #0x60
	movs r9, r1
	mov r10, r0
	mov r6, #3
	mov r7, #0
	bne _020D2A00
	mov r1, r7
	ldr r0, _020D2D38 ; =0x0209F5C0
	mov r3, r1
	mov r2, r6
	bl FUN_ov16_020f5f64
_020D2A00:
	ldr r4, [r10, #0x480]
	cmp r4, #0
	beq _020D2AE0
	bl FUN_ov16_020f081c
	add r0, r10, r0
	ldrb r0, [r0, #0x2b4]
	mov r8, #0x28
	ldr r2, [r4, #0xc]
	sub r0, r0, #1
	mul r1, r0, r8
	add r0, r4, r2
	add r12, r0, r1, lsl #1
	mov r11, #0xe
	mov r5, #0x14
	mov r4, #0xa
	mov r3, #4
	mov r2, #8
	mov r1, #0xf
	mov r0, #0x20
	strh r11, [sp, #0x28]
	strh r5, [sp, #0x2a]
	strh r4, [sp, #0x2c]
	ldr r11, _020D2D38 ; =0x0209F5C0
	strh r3, [sp, #0x2e]
	strh r2, [sp, #0x30]
	strh r7, [sp, #0x32]
	strh r1, [sp, #0x34]
	strh r0, [sp, #0x36]
	strb r6, [sp, #0x38]
	str r12, [sp, #0x3c]
	add r5, sp, #0x28
	mvn r4, #0
_020D2A80:
	cmp r9, #0
	str r6, [sp]
	mov r2, #2
	beq _020D2AA8
	str r5, [sp, #4]
	mov r0, #6
	str r0, [sp, #8]
	str r7, [sp, #0xc]
	str r4, [sp, #0x10]
	b _020D2AB4
_020D2AA8:
	stmib sp, {r5, r7}
	str r7, [sp, #0xc]
	str r7, [sp, #0x10]
_020D2AB4:
	mov r0, r11
	mov r1, r7
	mov r3, r8
	bl FUN_ov16_020f5c34
	str r7, [sp, #0x3c]
	ldrh r0, [sp, #0x30]
	add r8, r8, #1
	cmp r8, #0x2b
	add r0, r0, #0x10
	strh r0, [sp, #0x30]
	ble _020D2A80
_020D2AE0:
	cmp r9, #0
	mov r5, #1
	mov r4, #0
	addeq sp, sp, #0x60
	ldmeqfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
	ldr r1, [r10, #0x48c]
	cmp r1, #0
	beq _020D2B7C
	ldr r0, [r1, #0xc]
	mov r2, #0x19
	add r0, r1, r0
	mov r12, #0x14
	mov r11, #6
	mov r9, #4
	mov r1, r4
	mov r8, #5
	mov r7, #0x30
	mov r6, #0x18
	mov r3, #9
	strh r2, [sp, #0x28]
	strh r6, [sp, #0x36]
	str r0, [sp, #0x3c]
	strh r12, [sp, #0x2a]
	strh r11, [sp, #0x2c]
	strh r9, [sp, #0x2e]
	strh r1, [sp, #0x30]
	strh r8, [sp, #0x32]
	strh r7, [sp, #0x34]
	strb r3, [sp, #0x38]
	mov r2, #2
	add r0, sp, #0x28
	str r5, [sp]
	stmib sp, {r0, r11}
	ldr r0, _020D2D38 ; =0x0209F5C0
	mov r3, r2
	str r1, [sp, #0xc]
	sub r6, r5, #2
	str r6, [sp, #0x10]
	bl FUN_ov16_020f5c34
_020D2B7C:
	ldr r6, [r10, #0x498]
	cmp r6, #0
	beq _020D2BF4
	ldr r2, [r6, #0xc]
	mov r3, #3
	add r8, r6, r2
	mov r1, #0
	mov r0, #0x18
	mov r7, #0x1c
	mov r6, #0x11
	strh r7, [sp, #0x28]
	strh r6, [sp, #0x2a]
	strh r3, [sp, #0x2c]
	strh r3, [sp, #0x2e]
	strh r1, [sp, #0x30]
	strh r1, [sp, #0x32]
	strh r0, [sp, #0x34]
	strh r0, [sp, #0x36]
	strb r3, [sp, #0x38]
	str r8, [sp, #0x3c]
	mov r2, #6
	str r5, [sp]
	add r0, sp, #0x28
	stmib sp, {r0, r2}
	sub r5, r2, #7
	str r1, [sp, #0xc]
	ldr r0, _020D2D38 ; =0x0209F5C0
	mov r2, #2
	str r5, [sp, #0x10]
	bl FUN_ov16_020f5c34
_020D2BF4:
	ldr r7, _020D2D3C ; =0x02099EF0
	ldr r0, [r7]
	bl FUN_ov126_021375d4
	ldrsb r0, [r0, #0xc]
	bl FUN_ov16_020efa80
	mov r6, r0
	mov r5, #1
	add r0, sp, #0x40
	str r4, [sp]
	str r0, [sp, #4]
	ldr r0, [r7]
	mov r1, r6
	mov r2, r5
	mov r3, r4
	bl FUN_ov126_0212fdc0
	add r0, r10, #0x200
	ldrh r1, [r0, #0xb2]
	ldr r0, [sp, #0x40]
	cmp r1, r0
	moveq r8, r4
	beq _020D2C5C
	ldr r0, [sp, #0x44]
	cmp r1, r0
	moveq r8, #0x38
	movne r5, r4
	movne r8, #0x70
_020D2C5C:
	cmp r5, #0
	beq _020D2CAC
	mov r0, #4
	str r0, [sp]
	mov r1, #1
	str r1, [sp, #4]
	mov r0, #0x19
	str r0, [sp, #8]
	str r8, [sp, #0xc]
	mov r0, #8
	str r0, [sp, #0x10]
	mov r0, #9
	str r0, [sp, #0x14]
	str r4, [sp, #0x18]
	sub r0, r4, #1
	str r0, [sp, #0x1c]
	str r4, [sp, #0x20]
	mov r0, r10
	mov r2, #0x14
	b _020D2D10
_020D2CAC:
	ldr r0, _020D2D40 ; =0x0209BA20
	mov r5, #0
	bl FUN_0204a2c4
	movs r7, r0
	beq _020D2CCC
	mov r1, r6
	bl FUN_0204b114
	mov r5, r0
_020D2CCC:
	mov r0, #6
	str r0, [sp]
	mov r1, #1
	str r1, [sp, #4]
	mov r0, #0x19
	str r0, [sp, #8]
	str r8, [sp, #0xc]
	mov r0, #8
	str r0, [sp, #0x10]
	mov r0, #9
	str r0, [sp, #0x14]
	ldrb r2, [r7, #8]
	mov r0, r10
	str r2, [sp, #0x18]
	str r5, [sp, #0x1c]
	str r4, [sp, #0x20]
	mov r2, #0x12
_020D2D10:
	mov r3, #0xe
	str r4, [sp, #0x24]
	bl FUN_ov1_020d1a94
	mov r2, #2
	mov r0, r10
	mov r3, r2
	mov r1, #0x18
	bl FUN_ov1_020d193c
	add sp, sp, #0x60
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_020D2D38: .word 0x0209F5C0
_020D2D3C: .word 0x02099EF0
_020D2D40: .word 0x0209BA20
	arm_func_end FUN_ov1_020d29d0

	arm_func_start FUN_ov1_020d2d44
FUN_ov1_020d2d44: ; 0x020D2D44
	stmfd sp!, {r3, r4, r5, lr}
	mov r5, r0
	mov r3, r2
	mov r2, r1
	ldr r0, _020D2EA0 ; =0x0209F5C0
	mov r1, #0
	bl FUN_ov16_020f6b3c
	mov r4, r0
	cmp r4, #0x28
	bgt _020D2D98
	bge _020D2E68
	cmp r4, #3
	ldmgtfd sp!, {r3, r4, r5, pc}
	cmp r4, #0
	ldmltfd sp!, {r3, r4, r5, pc}
	ldmeqfd sp!, {r3, r4, r5, pc}
	cmp r4, #2
	beq _020D2DC4
	cmp r4, #3
	beq _020D2E3C
	ldmfd sp!, {r3, r4, r5, pc}
_020D2D98:
	cmp r4, #0x29
	bgt _020D2DA8
	beq _020D2E68
	ldmfd sp!, {r3, r4, r5, pc}
_020D2DA8:
	cmp r4, #0x2b
	ldmgtfd sp!, {r3, r4, r5, pc}
	cmp r4, #0x2a
	ldmltfd sp!, {r3, r4, r5, pc}
	cmpne r4, #0x2b
	beq _020D2E68
	ldmfd sp!, {r3, r4, r5, pc}
_020D2DC4:
	bl FUN_ov16_020f081c
	ldr r1, _020D2EA4 ; =0x020A0640
	mov r4, r0
	ldrb r1, [r1, #0x1a]
	cmp r1, #0
	addeq r0, r5, #0x200
	ldreqh r2, [r0, #0xb2]
	ldreq r0, _020D2EA8 ; =0x020EAAF4
	moveq r1, r4, lsl #1
	streqh r2, [r0, r1]
	beq _020D2E20
	add r1, r5, #0x200
	ldrh r1, [r1, #0xb2]
	bl FUN_ov1_020d2494
	add r1, r5, r4
	ldrb r12, [r1, #0x2b4]
	add r1, r0, #1
	and r3, r1, #0xff
	mov r0, r5
	mov r2, r4
	mov r1, #0xa
	str r12, [sp]
	bl FUN_ov1_020c3a24
_020D2E20:
	ldr r0, _020D2EAC ; =0x0209AC44
	mov r1, #2
	bl FUN_0202cf6c
	mov r0, r5
	mov r1, #0x25
	bl FUN_ov1_020bf9f4
	ldmfd sp!, {r3, r4, r5, pc}
_020D2E3C:
	ldr r0, _020D2EAC ; =0x0209AC44
	mov r1, #4
	bl FUN_0202cf6c
	mov r1, #1
	mov r0, r5
	strb r1, [r5, #0x1d]
	bl FUN_ov1_020d05f4
	mov r0, r5
	mov r1, #0x1f
	bl FUN_ov1_020bf9f4
	ldmfd sp!, {r3, r4, r5, pc}
_020D2E68:
	bl FUN_ov16_020f081c
	add r2, r5, r0
	ldrb r0, [r2, #0x2b4]
	sub r3, r4, #0x27
	cmp r3, r0
	ldmeqfd sp!, {r3, r4, r5, pc}
	ldr r0, _020D2EAC ; =0x0209AC44
	mov r1, #1
	strb r3, [r2, #0x2b4]
	bl FUN_0202cf6c
	mov r0, r5
	mov r1, #0
	bl FUN_ov1_020d29d0
	ldmfd sp!, {r3, r4, r5, pc}
_020D2EA0: .word 0x0209F5C0
_020D2EA4: .word 0x020A0640
_020D2EA8: .word 0x020EAAF4
_020D2EAC: .word 0x0209AC44
	arm_func_end FUN_ov1_020d2d44

	arm_func_start FUN_ov1_020d2eb0
FUN_ov1_020d2eb0: ; 0x020D2EB0
	stmfd sp!, {r4, r5, r6, r7, r8, r9, lr}
	sub sp, sp, #0x24
	ldr r2, _020D2F90 ; =0x02099EF0
	mov r8, r0
	ldr r0, [r2]
	mov r7, r1
	mov r6, #0
	bl FUN_ov126_0213246c
	cmp r0, #0
	beq _020D2EF0
	ldrb r0, [r0, #0x12]
	tst r0, #8
	moveq r6, #1
	cmp r6, #0
	movne r6, #1
	moveq r6, #0
_020D2EF0:
	ldr r9, _020D2F94 ; =0x020EAAC8
	ldr r0, [r9]
	bl FUN_ov16_020f077c
	cmp r0, #0
	beq _020D2F28
	ldr r0, [r9]
	mov r4, #0
	bl FUN_ov16_020efa80
	ldr r1, _020D2F98 ; =0x020EAAE4
	mov r5, r0
	ldr r0, [r1]
	bl FUN_ov16_020efa80
	mov r1, #0x21
	b _020D2F48
_020D2F28:
	ldr r0, _020D2F98 ; =0x020EAAE4
	mov r4, #1
	ldr r0, [r0]
	bl FUN_ov16_020efa80
	mov r5, r0
	ldr r0, [r9]
	bl FUN_ov16_020efa80
	mov r1, #0x22
_020D2F48:
	str r0, [sp]
	mov r9, #0
	str r9, [sp, #4]
	str r1, [sp, #8]
	str r4, [sp, #0xc]
	mov r0, #9
	str r0, [sp, #0x10]
	str r9, [sp, #0x14]
	str r6, [sp, #0x18]
	str r9, [sp, #0x1c]
	mov r0, r8
	mov r1, r7
	mov r3, r5
	mov r2, #1
	str r9, [sp, #0x20]
	bl FUN_ov1_020d59a8
	add sp, sp, #0x24
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, pc}
_020D2F90: .word 0x02099EF0
_020D2F94: .word 0x020EAAC8
_020D2F98: .word 0x020EAAE4
	arm_func_end FUN_ov1_020d2eb0

	arm_func_start FUN_ov1_020d2f9c
FUN_ov1_020d2f9c: ; 0x020D2F9C
	stmfd sp!, {r4, r5, r6, r7, r8, r9, lr}
	sub sp, sp, #0x2c
	ldr r1, _020D3098 ; =0x020A0640
	mov r4, r0
	ldrb r0, [r1, #0x1a]
	cmp r0, #0
	addeq sp, sp, #0x2c
	ldmeqfd sp!, {r4, r5, r6, r7, r8, r9, pc}
	ldr r1, [r4, #0x57c]
	cmp r1, #0
	beq _020D3048
	ldr r0, [r1, #0xc]
	mov r5, #4
	add r9, r1, r0
	mov r8, #0xc
	mov r7, #0x13
	mov r6, #8
	mov r1, #0
	mov lr, #0x40
	mov r3, #0x18
	mov r0, #7
	strh r3, [sp, #0x22]
	strb r0, [sp, #0x24]
	strh r8, [sp, #0x14]
	strh r7, [sp, #0x16]
	strh r6, [sp, #0x18]
	strh r5, [sp, #0x1a]
	strh r1, [sp, #0x1c]
	strh r5, [sp, #0x1e]
	strh lr, [sp, #0x20]
	str r9, [sp, #0x28]
	mov r3, #1
	mov r12, #6
	add r0, sp, #0x14
	str r3, [sp]
	stmib sp, {r0, r12}
	mov r2, #2
	ldr r0, _020D309C ; =0x0209F5C0
	mov r3, r2
	str r1, [sp, #0xc]
	sub r12, r12, #7
	str r12, [sp, #0x10]
	bl FUN_ov16_020f5c34
_020D3048:
	bl FUN_ov1_020db338
	cmp r0, #0
	bne _020D3080
	ldr r0, [r4, #8]
	mov r2, #2
	cmp r0, #0x1a
	ldr r0, [r4, #8]
	moveq r2, #1
	cmp r0, #0x1a
	mov r1, #0x37
	moveq r1, #0x39
	mov r0, r4
	mov r3, #3
	bl FUN_ov1_020d193c
_020D3080:
	mov r0, #0
	mov r1, #7
	mov r2, #1
	bl FUN_ov16_020f0e9c
	add sp, sp, #0x2c
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, pc}
_020D3098: .word 0x020A0640
_020D309C: .word 0x0209F5C0
	arm_func_end FUN_ov1_020d2f9c

	arm_func_start FUN_ov1_020d30a0
FUN_ov1_020d30a0: ; 0x020D30A0
	stmfd sp!, {r4, r5, r6, r7, lr}
	sub sp, sp, #0x2c
	ldr r1, _020D3174 ; =0x020A0640
	mov r4, r0
	ldrb r1, [r1, #0x1a]
	cmp r1, #0
	addeq sp, sp, #0x2c
	ldmeqfd sp!, {r4, r5, r6, r7, pc}
	bl FUN_ov1_020d473c
	cmp r0, #0
	ldrne r1, [r4, #0x588]
	cmpne r1, #0
	addeq sp, sp, #0x2c
	ldmeqfd sp!, {r4, r5, r6, r7, pc}
	ldr r0, [r1, #0xc]
	mov r3, #4
	add r7, r1, r0
	mov r6, #0xc
	mov lr, #0x13
	mov r5, #8
	mov r12, #0
	mov r2, #0x40
	mov r1, #7
	mov r0, #0x18
	strh r5, [sp, #0x18]
	strh r2, [sp, #0x20]
	strh r6, [sp, #0x14]
	strh lr, [sp, #0x16]
	strh r3, [sp, #0x1a]
	strh r3, [sp, #0x1e]
	strh r12, [sp, #0x1c]
	strb r1, [sp, #0x24]
	str r7, [sp, #0x28]
	strh r0, [sp, #0x22]
	ldrb r0, [r4, #0x24]
	mov r5, #1
	mov r2, #2
	cmp r0, #0
	subeq r12, r1, #8
	add r0, sp, #0x14
	str r5, [sp]
	str r0, [sp, #4]
	mov r0, #6
	str r0, [sp, #8]
	mov r1, #0
	str r1, [sp, #0xc]
	ldr r0, _020D3178 ; =0x0209F5C0
	mov r3, #3
	str r12, [sp, #0x10]
	bl FUN_ov16_020f5c34
	strb r5, [r4, #0x24]
	add sp, sp, #0x2c
	ldmfd sp!, {r4, r5, r6, r7, pc}
_020D3174: .word 0x020A0640
_020D3178: .word 0x0209F5C0
	arm_func_end FUN_ov1_020d30a0

	arm_func_start FUN_ov1_020d317c
FUN_ov1_020d317c: ; 0x020D317C
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	sub sp, sp, #8
	ldr r2, _020D3210 ; =0x02099EF0
	mov r7, r0
	ldr r0, [r2]
	mov r6, r1
	mov r5, #0
	bl FUN_ov126_0213246c
	cmp r0, #0
	beq _020D31BC
	ldrb r0, [r0, #0x12]
	tst r0, #8
	moveq r5, #1
	cmp r5, #0
	movne r5, #1
	moveq r5, #0
_020D31BC:
	ldr r4, _020D3214 ; =0x020EAAC8
	ldr r0, [r4]
	bl FUN_ov16_020f07f4
	cmp r7, r0
	bne _020D31DC
	ldr r0, [r4]
	mov r4, #0
	b _020D31E8
_020D31DC:
	ldr r0, _020D3218 ; =0x020EAAE4
	mov r4, #1
	ldr r0, [r0]
_020D31E8:
	bl FUN_ov16_020efa80
	mov r1, r0
	ldr r0, _020D3210 ; =0x02099EF0
	stmia sp, {r5, r6}
	ldr r0, [r0]
	mov r3, r4
	mov r2, #0
	bl FUN_ov126_0212fdc0
	add sp, sp, #8
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_020D3210: .word 0x02099EF0
_020D3214: .word 0x020EAAC8
_020D3218: .word 0x020EAAE4
	arm_func_end FUN_ov1_020d317c

	arm_func_start FUN_ov1_020d321c
FUN_ov1_020d321c: ; 0x020D321C
	stmfd sp!, {r3, r4, r5, lr}
	sub sp, sp, #0x20
	add r4, sp, #0
	mov r5, r1
	mov r1, r4
	bl FUN_ov1_020d317c
	mov r0, #0
_020D3238:
	ldr r1, [r4, r0, lsl #2]
	cmp r5, r1
	addeq sp, sp, #0x20
	ldmeqfd sp!, {r3, r4, r5, pc}
	add r0, r0, #1
	cmp r0, #8
	blt _020D3238
	mvn r0, #0
	add sp, sp, #0x20
	ldmfd sp!, {r3, r4, r5, pc}
	arm_func_end FUN_ov1_020d321c

	arm_func_start FUN_ov1_020d3260
FUN_ov1_020d3260: ; 0x020D3260
	stmfd sp!, {r4, lr}
	ldr r0, _020D32B8 ; =0x020EAAC8
	mov r4, r1
	ldr r0, [r0]
	bl FUN_ov16_020efa80
	cmp r0, #0
	beq _020D328C
	bl FUN_0206d554
	cmp r4, r0
	moveq r0, #1
	ldmeqfd sp!, {r4, pc}
_020D328C:
	ldr r0, _020D32BC ; =0x020EAAE4
	ldr r0, [r0]
	bl FUN_ov16_020efa80
	cmp r0, #0
	beq _020D32B0
	bl FUN_0206d554
	cmp r4, r0
	moveq r0, #1
	ldmeqfd sp!, {r4, pc}
_020D32B0:
	mov r0, #0
	ldmfd sp!, {r4, pc}
_020D32B8: .word 0x020EAAC8
_020D32BC: .word 0x020EAAE4
	arm_func_end FUN_ov1_020d3260

	arm_func_start FUN_ov1_020d32c0
FUN_ov1_020d32c0: ; 0x020D32C0
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, lr}
	sub sp, sp, #0x38
	ldr r4, _020D3500 ; =0x020EAAC8
	mov r10, r0
	ldr r0, [r4]
	mov r9, r1
	bl FUN_ov16_020f077c
	cmp r0, #0
	beq _020D330C
	ldr r0, [r4]
	mov r5, #0
	bl FUN_ov16_020efa80
	ldr r1, _020D3504 ; =0x020EAAE4
	mov r7, r0
	ldr r0, [r1]
	bl FUN_ov16_020efa80
	mov r8, r0
	ldr r0, [r4]
	b _020D3330
_020D330C:
	ldr r6, _020D3504 ; =0x020EAAE4
	mov r5, #1
	ldr r0, [r6]
	bl FUN_ov16_020efa80
	mov r7, r0
	ldr r0, [r4]
	bl FUN_ov16_020efa80
	mov r8, r0
	ldr r0, [r6]
_020D3330:
	bl FUN_ov16_020f07f4
	ldr r11, _020D3508 ; =0x02099EF0
	mov r6, r0
	ldr r0, [r11]
	mov r1, r6
	bl FUN_ov132_02145190
	mov r4, r0
	cmp r9, #4
	bne _020D33B8
	ldr r0, [r11]
	mov r1, r7
	mov r2, #0
	mov r3, r5
	bl FUN_ov126_02130898
	cmp r0, #0
	beq _020D33A4
	ldr r0, [r10, #0x5c]
	ldr r1, [r10, #0x60]
	add r0, r0, #1
	bl FUN_0201f9bc
	str r1, [r10, #0x5c]
	mov r0, r10
	mov r1, #0
	bl FUN_ov1_020d2eb0
	ldr r0, _020D350C ; =0x0209AC44
	mov r1, #1
	bl FUN_0202cf6c
	add sp, sp, #0x38
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_020D33A4:
	ldr r0, _020D350C ; =0x0209AC44
	mov r1, #9
	bl FUN_0202cf6c
	add sp, sp, #0x38
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_020D33B8:
	bl FUN_ov16_020f081c
	add r1, sp, #0x18
	bl FUN_ov1_020d317c
	sub r1, r9, #0x2d
	add r0, sp, #0x18
	ldr r3, [r0, r1, lsl #2]
	mov r0, #0
	stmia sp, {r0, r5}
	add r1, sp, #0x14
	str r4, [sp, #8]
	mov r0, r3, lsl #0x10
	mov r4, r0, lsr #0x10
	str r1, [sp, #0xc]
	mov r0, #0
	str r0, [sp, #0x10]
	ldr r0, [r11]
	mov r2, r8
	mov r1, r7
	mov r3, r4
	bl FUN_ov126_021300d8
	cmp r0, #0
	bne _020D347C
	ldr r0, _020D3510 ; =0x0209BA20
	mov r1, r4
	bl FUN_0204a2c4
	movs r5, r0
	beq _020D3450
	mov r0, r7
	bl FUN_0206cc84
	mov r4, r0
	mov r0, r5
	mov r1, r7
	bl FUN_0204b114
	cmp r4, r0
	bge _020D3450
	mov r0, r10
	mov r1, #0x25
	b _020D3464
_020D3450:
	ldr r0, [sp, #0x14]
	cmp r0, #5
	bne _020D3468
	mov r0, r10
	mov r1, #0x34
_020D3464:
	bl FUN_ov1_020d19e0
_020D3468:
	ldr r0, _020D350C ; =0x0209AC44
	mov r1, #9
	bl FUN_0202cf6c
	add sp, sp, #0x38
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_020D347C:
	ldr r0, [r10, #0x5c]
	cmp r0, #0
	beq _020D34A4
	ldr r0, _020D3514 ; =0x020A0640
	ldrb r0, [r0, #0x1a]
	cmp r0, #0
	bne _020D34A4
	ldr r0, _020D350C ; =0x0209AC44
	mov r1, #2
	b _020D34AC
_020D34A4:
	ldr r0, _020D350C ; =0x0209AC44
	mov r1, #1
_020D34AC:
	bl FUN_0202cf6c
	ldr r0, _020D3514 ; =0x020A0640
	ldrb r0, [r0, #0x1a]
	cmp r0, #0
	ldreq r0, _020D3518 ; =0x020EAAF4
	moveq r1, r6, lsl #1
	streqh r4, [r0, r1]
	beq _020D34EC
	sub r1, r9, #0x2c
	mov r4, #0
	and r3, r1, #0xff
	mov r0, r10
	mov r2, r6
	mov r1, #9
	str r4, [sp]
	bl FUN_ov1_020c3a24
_020D34EC:
	mov r0, r10
	mov r1, #0xd
	bl FUN_ov1_020bf9f4
	add sp, sp, #0x38
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_020D3500: .word 0x020EAAC8
_020D3504: .word 0x020EAAE4
_020D3508: .word 0x02099EF0
_020D350C: .word 0x0209AC44
_020D3510: .word 0x0209BA20
_020D3514: .word 0x020A0640
_020D3518: .word 0x020EAAF4
	arm_func_end FUN_ov1_020d32c0

	arm_func_start FUN_ov1_020d351c
FUN_ov1_020d351c: ; 0x020D351C
	stmfd sp!, {r4, lr}
	mov r4, r1
	bl FUN_ov1_020ce99c
	mov r0, r4
	bl FUN_ov16_020f0a14
	cmp r0, #0
	ldmeqfd sp!, {r4, pc}
	ldr r0, _020D3548 ; =0x0209AC44
	mov r1, #4
	bl FUN_0202cf6c
	ldmfd sp!, {r4, pc}
_020D3548: .word 0x0209AC44
	arm_func_end FUN_ov1_020d351c

	arm_func_start FUN_ov1_020d354c
FUN_ov1_020d354c: ; 0x020D354C
	stmfd sp!, {r3, r4, lr}
	sub sp, sp, #4
	mov r12, #0
	mov r4, r1
	str r12, [sp]
	bl FUN_ov1_020ce940
	mov r0, r4
	bl FUN_ov16_020f0a14
	cmp r0, #0
	addeq sp, sp, #4
	ldmeqfd sp!, {r3, r4, pc}
	ldr r0, _020D358C ; =0x0209AC44
	mov r1, #3
	bl FUN_0202cf6c
	add sp, sp, #4
	ldmfd sp!, {r3, r4, pc}
_020D358C: .word 0x0209AC44
	arm_func_end FUN_ov1_020d354c

	arm_func_start FUN_ov1_020d3590
FUN_ov1_020d3590: ; 0x020D3590
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	sub sp, sp, #0x10
	mov r5, r0
	mov r7, r1
	mov r6, r2
	mov r4, r3
	ldr r0, _020D36EC ; =0x0209F5C0
	mov r2, r7
	mov r3, r6
	mov r1, #0
	bl FUN_ov16_020f6b3c
	movs r1, r0
	beq _020D35E0
	cmp r4, #0
	addne sp, sp, #0x10
	ldmnefd sp!, {r3, r4, r5, r6, r7, pc}
	mov r0, r5
	bl FUN_ov1_020d32c0
	add sp, sp, #0x10
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_020D35E0:
	add r2, sp, #0xc
	add r3, sp, #8
	mov r0, r7
	mov r1, r6
	bl FUN_ov16_020efd94 ; may be ov17
	bl FUN_ov16_020f081c
	ldr r1, _020D36F0 ; =0x020EAB04
	mov r2, r0
	ldr r1, [r1, r2, lsl #3]
	cmp r1, #0x80000000
	ble _020D3678
	ldr r0, [sp, #0xc]
	subs r0, r1, r0
	rsbmi r0, r0, #0
	cmp r0, #0x8000
	bgt _020D3678
	ldr r1, _020D36F0 ; =0x020EAB04
	ldr r0, [sp, #8]
	add r1, r1, r2, lsl #3
	ldr r1, [r1, #4]
	subs r0, r1, r0
	rsbmi r0, r0, #0
	cmp r0, #0x8000
	bgt _020D3678
	ldr r0, _020D36F4 ; =0x020A0640
	ldrb r0, [r0, #0x1a]
	cmp r0, #0
	mov r0, r5
	beq _020D3668
	mov r1, #6
	mov r3, #0
	bl FUN_ov1_020c383c
	add sp, sp, #0x10
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_020D3668:
	mov r1, r2
	bl FUN_ov1_020d351c
	add sp, sp, #0x10
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_020D3678:
	ldr r0, _020D36F4 ; =0x020A0640
	ldrb r0, [r0, #0x1a]
	cmp r0, #0
	beq _020D36AC
	ldr r1, [sp, #8]
	mov r0, #0
	str r1, [sp]
	str r0, [sp, #4]
	ldr r3, [sp, #0xc]
	mov r0, r5
	mov r1, #5
	bl FUN_ov1_020c38e0
	b _020D36C0
_020D36AC:
	mov r1, r2
	ldr r2, [sp, #0xc]
	ldr r3, [sp, #8]
	mov r0, r5
	bl FUN_ov1_020d354c
_020D36C0:
	cmp r4, #0
	addeq sp, sp, #0x10
	ldmeqfd sp!, {r3, r4, r5, r6, r7, pc}
	mov r0, r5
	mov r1, #0x38
	bl FUN_ov1_020bea78
	mov r0, r5
	mov r1, #0x50
	bl FUN_ov1_020bf9f4
	add sp, sp, #0x10
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_020D36EC: .word 0x0209F5C0
_020D36F0: .word 0x020EAB04
_020D36F4: .word 0x020A0640
	arm_func_end FUN_ov1_020d3590

	arm_func_start FUN_ov1_020d36f8
FUN_ov1_020d36f8: ; 0x020D36F8
	stmfd sp!, {r3, r4, r5, lr}
	sub sp, sp, #8
	ldr r4, _020D3744 ; =0x02099EF0
	mov r5, r0
	ldr r0, [r4]
	bl FUN_ov126_0213777c
	ldrsb r0, [r0, #0x20]
	bl FUN_ov16_020efa80
	movs r1, r0
	addeq sp, sp, #8
	ldmeqfd sp!, {r3, r4, r5, pc}
	mov r0, #0
	stmia sp, {r0, r5}
	ldr r0, [r4]
	mov r2, #2
	mov r3, #1
	bl FUN_ov126_0212fdc0
	add sp, sp, #8
	ldmfd sp!, {r3, r4, r5, pc}
_020D3744: .word 0x02099EF0
	arm_func_end FUN_ov1_020d36f8

	arm_func_start FUN_ov1_020d3748
FUN_ov1_020d3748: ; 0x020D3748
	stmfd sp!, {r3, r4, r5, r6, lr}
	sub sp, sp, #0x2c
	ldr r5, [r0, #0x4c8]
	mov r4, r3
	cmp r5, #0
	addeq sp, sp, #0x2c
	ldmeqfd sp!, {r3, r4, r5, r6, pc}
	ldr r3, [r0, #0x5c]
	ldr r0, [r0, #0x60]
	add r1, r3, #1
	cmp r1, r0
	ldr r0, [r5, #0xc]
	movge r1, #2
	addlt r1, r3, #3
	add r0, r5, r0
	add r12, r0, r1, lsl #5
	mov r6, #0
	mov r3, #4
	mov r0, #0x20
	cmp r2, #0
	mov lr, #3
	moveq lr, #5
	mov r5, #0xe
	mov r1, #0x14
	strh r5, [sp, #0x14]
	strh r1, [sp, #0x16]
	strh r3, [sp, #0x18]
	strh r3, [sp, #0x1a]
	strh r6, [sp, #0x1c]
	strh r6, [sp, #0x1e]
	strh r0, [sp, #0x20]
	strh r0, [sp, #0x22]
	strb lr, [sp, #0x24]
	str r12, [sp, #0x28]
	mov r5, #1
	mov r2, #6
	add r0, sp, #0x14
	str r5, [sp]
	stmib sp, {r0, r2}
	sub r12, r2, #7
	str r6, [sp, #0xc]
	ldr r0, _020D3824 ; =0x0209F5C0
	mov r1, r6
	mov r2, #2
	str r12, [sp, #0x10]
	bl FUN_ov16_020f5c34
	cmp r4, #0
	addeq sp, sp, #0x2c
	ldmeqfd sp!, {r3, r4, r5, r6, pc}
	mov r0, r6
	mov r2, r5
	mov r1, #3
	bl FUN_ov16_020f0e9c
	add sp, sp, #0x2c
	ldmfd sp!, {r3, r4, r5, r6, pc}
_020D3824: .word 0x0209F5C0
	arm_func_end FUN_ov1_020d3748

	arm_func_start FUN_ov1_020d3828
FUN_ov1_020d3828: ; 0x020D3828
	stmfd sp!, {r3, r4, r5, r6, r7, r8, lr}
	sub sp, sp, #0x24
	ldr r2, _020D392C ; =0x02099EF0
	mov r8, r0
	ldr r0, [r2]
	mov r7, r1
	bl FUN_ov126_0213777c
	mov r4, r0
	ldrsb r0, [r4, #0x20]
	bl FUN_ov16_020efa80
	mov r5, r0
	ldrsb r0, [r4, #0x24]
	bl FUN_ov16_020efa80
	cmp r5, #0
	mov r6, r0
	addeq sp, sp, #0x24
	ldmeqfd sp!, {r3, r4, r5, r6, r7, r8, pc}
	mov r0, r5
	bl FUN_0206d6c4
	cmp r0, #0
	addne sp, sp, #0x24
	ldmnefd sp!, {r3, r4, r5, r6, r7, r8, pc}
	ldrsb r1, [r4, #0x20]
	mov r0, r8
	bl FUN_ov1_020bf4e0
	cmp r0, #0
	beq _020D38B8
	ldrb r1, [r4, #0x29]
	mov r0, r1, lsl #0x1c
	mov r0, r0, lsr #0x1c
	bic r0, r0, #2
	and r0, r0, #0xff
	bic r1, r1, #0xf
	and r0, r0, #0xf
	orr r0, r1, r0
	strb r0, [r4, #0x29]
_020D38B8:
	mov r0, r6
	bl FUN_0206d5f0
	mov r4, r0
	mov r0, r5
	bl FUN_0206d5f0
	cmp r4, r0
	moveq r0, #0x3a
	moveq r1, #0
	str r6, [sp]
	mov r2, #2
	movne r0, #0x38
	str r2, [sp, #4]
	str r0, [sp, #8]
	movne r1, #1
	str r1, [sp, #0xc]
	mov r0, #9
	str r0, [sp, #0x10]
	mov r0, #0
	str r0, [sp, #0x14]
	str r0, [sp, #0x18]
	mov r4, #1
	str r4, [sp, #0x1c]
	mov r0, r8
	mov r1, r7
	mov r3, r5
	str r4, [sp, #0x20]
	bl FUN_ov1_020d59a8
	add sp, sp, #0x24
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, pc}
_020D392C: .word 0x02099EF0
	arm_func_end FUN_ov1_020d3828

	arm_func_start FUN_ov1_020d3930
FUN_ov1_020d3930: ; 0x020D3930
	stmfd sp!, {r3, r4, r5, lr}
	sub sp, sp, #8
	ldr r4, _020D3970 ; =0x02099EF0
	mov r5, r2
	ldr r0, [r4]
	bl FUN_ov126_0213777c
	ldrsb r0, [r0, #0x20]
	bl FUN_ov16_020efa80
	mov r3, #0
	stmia sp, {r3, r5}
	mov r1, r0
	ldr r0, [r4]
	mov r2, #2
	bl FUN_ov126_0212fdc0
	add sp, sp, #8
	ldmfd sp!, {r3, r4, r5, pc}
_020D3970: .word 0x02099EF0
	arm_func_end FUN_ov1_020d3930

	arm_func_start FUN_ov1_020d3974
FUN_ov1_020d3974: ; 0x020D3974
	stmfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, lr}
	sub sp, sp, #0x34
	mov r9, r1
	mov r10, r0
	cmp r9, #4
	mov r6, #0
	ldr r4, _020D3CBC ; =0x02099EF0
	bne _020D39C8
	ldr r0, [r10, #0x5c]
	ldr r1, [r10, #0x60]
	add r0, r0, #1
	bl FUN_0201f9bc
	str r1, [r10, #0x5c]
	mov r0, r10
	mov r1, r6
	bl FUN_ov1_020d3828
	ldr r0, _020D3CC0 ; =0x0209AC44
	mov r1, #1
	bl FUN_0202cf6c
	add sp, sp, #0x34
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
_020D39C8:
	cmp r9, #3
	bne _020D3A5C
	ldr r0, _020D3CC4 ; =0x020A0640
	ldrb r0, [r0, #0x1a]
	cmp r0, #0
	bne _020D3A1C
	ldr r0, [r4]
	bl FUN_ov126_0213777c
	ldrb r3, [r0, #0x29]
	ldr r1, _020D3CC8 ; =0x020EAAF4
	mov r2, r3, lsl #0x1c
	mov r2, r2, lsr #0x1c
	orr r2, r2, #2
	and r2, r2, #0xff
	bic r3, r3, #0xf
	and r2, r2, #0xf
	orr r2, r3, r2
	strb r2, [r0, #0x29]
	strh r6, [r0, #0x22]
	strh r6, [r1, #4]
	b _020D3A3C
_020D3A1C:
	bl FUN_ov16_020f081c
	mov r2, r0
	mov r4, #0xff
	mov r0, r10
	mov r1, #0xa
	mov r3, #0x6e
	str r4, [sp]
	bl FUN_ov1_020c3a24
_020D3A3C:
	ldr r0, _020D3CC0 ; =0x0209AC44
	mov r1, #4
	bl FUN_0202cf6c
	mov r0, r10
	mov r1, #0x3c
	bl FUN_ov1_020bf9f4
	add sp, sp, #0x34
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
_020D3A5C:
	cmp r9, #0x2c
	ldr r0, [r4]
	bne _020D3B10
	bl FUN_ov126_0213777c
	ldrb r1, [r0, #0x2e]
	ldrb r0, [r0, #0x2f]
	cmp r1, #1
	bne _020D3A88
	ldr r0, [r4]
	bl FUN_ov132_02149714
	b _020D3A98
_020D3A88:
	cmp r0, #1
	bne _020D3AB8
	ldr r0, [r4]
	bl FUN_ov132_021492a4
_020D3A98:
	ldr r1, [r0, #0x2c]
	ldr r2, [r0, #0x28]
	add r1, r1, #1
	str r1, [r0, #0x2c]
	cmp r1, r2
	streq r6, [r0, #0x2c]
	ldr r1, [r0, #0x2c]
	ldr r5, [r0, r1, lsl #2]
_020D3AB8:
	ldr r0, [r4]
	bl FUN_ov126_0213777c
	strb r5, [r0, #0x20]
	ldr r2, _020D3CCC ; =0x020EAAC0
	ldr r0, [r4]
	mov r1, r5
	str r5, [r2]
	bl FUN_ov132_02149258
	ldr r0, [r10, #4]
	bl FUN_02042054
	cmp r0, #0x3b
	mov r0, r10
	bne _020D3AF4
	mov r1, #0x51
	b _020D3AF8
_020D3AF4:
	mov r1, #0x3b
_020D3AF8:
	bl FUN_ov1_020bea78
	mov r0, r10
	mov r1, #0x39
	bl FUN_ov1_020bf9f4
	add sp, sp, #0x34
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
_020D3B10:
	bl FUN_ov126_0213777c
	ldrsb r0, [r0, #0x20]
	bl FUN_ov16_020efa80
	mov r7, r0
	ldr r0, [r4]
	bl FUN_ov126_0213777c
	mov r5, r0
	ldrsb r0, [r5, #0x24]
	bl FUN_ov16_020f07f4
	bl FUN_ov16_020f0a14
	cmp r0, #1
	ldreqsb r0, [r5, #0x28]
	ldrnesb r0, [r5, #0x24]
	bl FUN_ov16_020efa80
	mov r5, r0
	bl FUN_ov16_020f081c
	add r8, sp, #0x14
	mov r1, r0
	mov r0, r10
	mov r2, r8
	bl FUN_ov1_020d3930
	sub r0, r9, #0x2d
	ldr r0, [r8, r0, lsl #2]
	mov r11, #2
	mov r0, r0, lsl #0x10
	mov r8, r0, asr #0x10
	bl FUN_ov16_020f081c
	mov r1, r0
	ldr r0, [r4]
	bl FUN_ov132_02145190
	str r11, [sp]
	str r6, [sp, #4]
	str r0, [sp, #8]
	str r6, [sp, #0xc]
	str r6, [sp, #0x10]
	ldr r0, [r4]
	mov r2, r5
	mov r1, r7
	mov r3, r8
	bl FUN_ov126_021300d8
	cmp r0, #0
	bne _020D3C08
	ldr r0, _020D3CD0 ; =0x0209BA20
	mov r1, r8
	bl FUN_0204a2c4
	mov r5, r0
	mov r0, r7
	bl FUN_0206cc84
	mov r4, r0
	mov r0, r5
	mov r1, r7
	bl FUN_0204b114
	cmp r4, r0
	bge _020D3BF4
	mov r0, r10
	mov r1, #0x25
	bl FUN_ov1_020d19e0
_020D3BF4:
	ldr r0, _020D3CC0 ; =0x0209AC44
	mov r1, #9
	bl FUN_0202cf6c
	add sp, sp, #0x34
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
_020D3C08:
	ldr r0, [r10, #0x5c]
	ldr r4, _020D3CBC ; =0x02099EF0
	cmp r0, #0
	beq _020D3C38
	ldr r0, _020D3CC4 ; =0x020A0640
	ldrb r0, [r0, #0x1a]
	cmp r0, #0
	beq _020D3C2C
	b _020D3C38
_020D3C2C:
	ldr r0, _020D3CC0 ; =0x0209AC44
	mov r1, r11
	b _020D3C40
_020D3C38:
	ldr r0, _020D3CC0 ; =0x0209AC44
	mov r1, #1
_020D3C40:
	bl FUN_0202cf6c
	ldr r0, _020D3CC4 ; =0x020A0640
	ldrb r0, [r0, #0x1a]
	cmp r0, #1
	bne _020D3C88
	bl FUN_ov16_020f081c
	mov r5, r0
	ldr r0, [r4]
	bl FUN_ov126_0213777c
	ldrb r0, [r0, #0x20]
	sub r1, r9, #0x2c
	and r3, r1, #0xff
	str r0, [sp]
	mov r2, r5
	mov r0, r10
	mov r1, #0xa
	bl FUN_ov1_020c3a24
	b _020D3C9C
_020D3C88:
	ldr r0, [r4]
	bl FUN_ov126_0213777c
	ldr r1, _020D3CC8 ; =0x020EAAF4
	strh r8, [r0, #0x22]
	strh r8, [r1, #4]
_020D3C9C:
	ldr r0, [r4]
	mov r1, r7
	bl FUN_ov132_02149b64
	mov r0, r10
	mov r1, #0x3c
	bl FUN_ov1_020bf9f4
	add sp, sp, #0x34
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
_020D3CBC: .word 0x02099EF0
_020D3CC0: .word 0x0209AC44
_020D3CC4: .word 0x020A0640
_020D3CC8: .word 0x020EAAF4
_020D3CCC: .word 0x020EAAC0
_020D3CD0: .word 0x0209BA20
	arm_func_end FUN_ov1_020d3974

	arm_func_start FUN_ov1_020d3cd4
FUN_ov1_020d3cd4: ; 0x020D3CD4
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	mov r6, r0
	mov r4, r2
	mov r7, r1
	mov r5, #0
	ldr r0, _020D3E3C ; =0x0209F5C0
	mov r1, r5
	mov r2, r7
	mov r3, r4
	bl FUN_ov16_020f6b3c
	movs r1, r0
	mov r0, r6
	beq _020D3D10
	bl FUN_ov1_020d3974
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_020D3D10:
	mov r1, r7
	mov r2, r4
	bl FUN_ov1_020be6c8
	mov r4, r0
	sub r0, r5, #1
	cmp r4, r0
	ldmeqfd sp!, {r3, r4, r5, r6, r7, pc}
	ldr r7, _020D3E40 ; =0x02099EF0
	ldr r0, [r7]
	bl FUN_ov132_02149260
	cmp r4, r0
	ldmeqfd sp!, {r3, r4, r5, r6, r7, pc}
	ldr r0, [r7]
	bl FUN_ov126_0213777c
	ldrb r1, [r0, #0x2e]
	ldrb r0, [r0, #0x2f]
	cmp r1, #1
	bne _020D3D9C
	ldr r0, [r7]
	bl FUN_ov132_02149714
	ldr r3, [r0, #0x28]
	mov r7, r5
	cmp r3, #0
	ble _020D3D90
	mov r1, #1
_020D3D74:
	ldr r2, [r0, r7, lsl #2]
	cmp r4, r2
	streq r7, [r0, #0x2c]
	add r7, r7, #1
	moveq r5, r1
	cmp r7, r3
	blt _020D3D74
_020D3D90:
	cmp r5, #0
	bne _020D3DE4
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_020D3D9C:
	cmp r0, #1
	bne _020D3DE4
	ldr r0, [r7]
	bl FUN_ov132_021492a4
	ldr r3, [r0, #0x28]
	mov r7, r5
	cmp r3, #0
	ble _020D3DDC
	mov r1, #1
_020D3DC0:
	ldr r2, [r0, r7, lsl #2]
	cmp r4, r2
	streq r7, [r0, #0x2c]
	add r7, r7, #1
	moveq r5, r1
	cmp r7, r3
	blt _020D3DC0
_020D3DDC:
	cmp r5, #0
	ldmeqfd sp!, {r3, r4, r5, r6, r7, pc}
_020D3DE4:
	ldr r5, _020D3E40 ; =0x02099EF0
	ldr r0, [r5]
	bl FUN_ov126_0213777c
	strb r4, [r0, #0x20]
	ldr r2, _020D3E44 ; =0x020EAAC0
	ldr r0, [r5]
	mov r1, r4
	str r4, [r2]
	bl FUN_ov132_02149258
	ldr r0, [r6, #4]
	bl FUN_02042054
	cmp r0, #0x3b
	mov r0, r6
	bne _020D3E24
	mov r1, #0x51
	b _020D3E28
_020D3E24:
	mov r1, #0x3b
_020D3E28:
	bl FUN_ov1_020bea78
	mov r0, r6
	mov r1, #0x39
	bl FUN_ov1_020bf9f4
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_020D3E3C: .word 0x0209F5C0
_020D3E40: .word 0x02099EF0
_020D3E44: .word 0x020EAAC0
	arm_func_end FUN_ov1_020d3cd4

	arm_func_start FUN_ov1_020d3e48
FUN_ov1_020d3e48: ; 0x020D3E48
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, lr}
	sub sp, sp, #0xc0
	mov r4, r1
	mov r10, r0
	mov r8, #0xa
	mov r7, #1
	mov r6, #0
	bl FUN_ov16_020f081c
	mov r5, r0
	cmp r4, #0
	bne _020D3EB4
	ldr r9, _020D4248 ; =0x0209F5C0
	mov r1, r6
	mov r0, r9
	mov r3, r6
	mov r2, r7
	bl FUN_ov16_020f5f64
	mov r0, r9
	mov r1, r6
	mov r3, r6
	mov r2, #2
	bl FUN_ov16_020f5f64
	mov r0, r9
	mov r1, r6
	mov r3, r6
	mov r2, r8
	bl FUN_ov16_020f5f64
_020D3EB4:
	ldr r2, [r10, #0x69c]
	cmp r2, #0
	beq _020D3F48
	ldr r1, [r2, #0xc]
	mov r0, #0x18
	add r12, r2, r1
	mov r11, #0x1b
	mov r9, #0x15
	mov r3, #5
	mov r2, #3
	mov r1, #8
	mov r6, #0
	strh r3, [sp, #0x2c]
	strh r2, [sp, #0x2e]
	strh r1, [sp, #0x30]
	strh r11, [sp, #0x28]
	strh r9, [sp, #0x2a]
	strh r6, [sp, #0x32]
	cmp r4, #0
	subne r6, r8, #0xb
	strh r0, [sp, #0x34]
	strh r0, [sp, #0x36]
	strb r8, [sp, #0x38]
	str r12, [sp, #0x3c]
	mov r1, #6
	cmp r4, #0
	moveq r1, #0
	add r0, sp, #0x28
	str r7, [sp]
	stmib sp, {r0, r1}
	mov r1, #0
	str r1, [sp, #0xc]
	ldr r0, _020D4248 ; =0x0209F5C0
	mov r2, #2
	mov r3, #3
	str r6, [sp, #0x10]
	bl FUN_ov16_020f5c34
_020D3F48:
	ldr r9, _020D424C ; =0x02099EF0
	add r8, sp, #0x40
	ldr r0, [r9]
	mov r1, r5
	mov r2, r8
	mov r3, #0
	bl FUN_ov132_0215a168
	ldr r6, [r10, #0x5c]
	str r0, [r10, #0x60]
	mov r0, r6, lsl #1
	ldrh r1, [r8, r0]
	ldr r0, _020D4250 ; =0x0209BA20
	bl FUN_0204b0ac
	movs r7, r0
	addeq sp, sp, #0xc0
	ldmeqfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
	mov r0, r6, lsl #1
	ldrh r2, [r8, r0]
	ldr r0, [r9]
	ldrh r8, [r7, #4]
	mov r1, r5
	bl FUN_ov132_02159f8c
	cmp r0, #0
	mov r0, #6
	mov r2, #9
	str r0, [sp]
	mov r1, #0x2d
	str r1, [sp, #4]
	mov r1, #0x44
	moveq r2, #5
	mov r0, r2, lsl #0x10
	str r1, [sp, #8]
	mov r11, #0
	str r11, [sp, #0xc]
	mov r1, #8
	str r1, [sp, #0x10]
	mov r0, r0, lsr #0x10
	str r0, [sp, #0x14]
	str r11, [sp, #0x18]
	str r8, [sp, #0x1c]
	mov r0, r10
	mov r1, r11
	str r11, [sp, #0x20]
	mov r9, #1
	mov r2, #0x12
	mov r3, #0x14
	str r9, [sp, #0x24]
	bl FUN_ov1_020d1a94
	mov r0, r10
	mov r1, r11
	mov r2, r4
	bl FUN_ov1_020d4314
	mov r0, r10
	mov r1, r9
	mov r2, r4
	bl FUN_ov1_020d4314
	cmp r4, #0
	beq _020D4130
	ldr r1, [r10, #0x60]
	ldr r4, _020D4254 ; =0x66666667
	mov r0, r1, lsr #0x1f
	smull r1, r8, r4, r1
	adds r8, r0, r8, asr #2
	moveq r9, r11
	ldr r11, _020D4258 ; =0x02099F14
	mov r2, r8
	ldr r0, [r11]
	mov r3, r9
	mov r1, #3
	bl FUN_ov1_020e4498
	ldr r1, [r10, #0x60]
	ldr r0, [r11]
	smull r8, r2, r4, r1
	mov r3, r1, lsr #0x1f
	add r2, r3, r2, asr #2
	mov r3, #0xa
	smull r2, r8, r3, r2
	mov r9, #1
	sub r2, r1, r2
	mov r1, #4
	mov r3, r9
	bl FUN_ov1_020e4498
	ldr r0, _020D4250 ; =0x0209BA20
	mov r1, r5
	bl FUN_0207249c
	ldrb r5, [r0, #0x43]
	ldr r1, _020D425C ; =0x51EB851F
	smull r0, r8, r1, r5
	mov r0, r5, lsr #0x1f
	add r8, r0, r8, asr #5
	ldr r0, _020D4258 ; =0x02099F14
	cmp r5, #0x64
	movlt r9, #0
	ldr r0, [r0]
	mov r2, r8
	mov r3, r9
	mov r1, #6
	bl FUN_ov1_020e4498
	mov r0, #0x64
	mul r0, r8, r0
	sub r1, r5, r0
	smull r0, r8, r4, r1
	mov r0, r1, lsr #0x1f
	cmp r5, #0xa
	add r8, r0, r8, asr #2
	ldr r9, _020D4258 ; =0x02099F14
	movge r3, #1
	ldr r0, [r9]
	movlt r3, #0
	mov r2, r8
	mov r1, #7
	bl FUN_ov1_020e4498
	smull r1, r2, r4, r5
	mov r0, r5, lsr #0x1f
	add r2, r0, r2, asr #2
	mov r3, #0xa
	smull r1, r0, r3, r2
	sub r2, r5, r1
	ldr r0, [r9]
	mov r1, #8
	mov r3, #1
	bl FUN_ov1_020e4498
_020D4130:
	ldr r4, _020D4254 ; =0x66666667
	add r1, r6, #1
	smull r0, r8, r4, r1
	mov r0, r1, lsr #0x1f
	adds r8, r0, r8, asr #2
	ldr r5, _020D4258 ; =0x02099F14
	mov r9, #0
	movne r3, #1
	ldr r0, [r5]
	moveq r3, r9
	mov r1, #1
	mov r2, r8
	mov r11, #0xa
	bl FUN_ov1_020e4498
	add r3, r6, #1
	smull r1, r2, r4, r3
	mov r0, r3, lsr #0x1f
	add r2, r0, r2, asr #2
	smull r0, r1, r11, r2
	sub r2, r3, r0
	mov r4, #2
	ldr r0, [r5]
	mov r1, r4
	mov r3, #1
	bl FUN_ov1_020e4498
	mov r0, r10
	mov r1, #0x39
	mov r2, #1
	mov r3, r4
	bl FUN_ov1_020d193c
	cmp r7, #0
	ldrneb r5, [r7]
	cmpne r5, #0
	ldrne r2, [r10, #0x6a8]
	cmpne r2, #0
	beq _020D423C
	ldr r0, [r2, #0xc]
	mov r1, #0
	add r3, r2, r0
	sub r2, r5, #1
	mov r0, #0xc
	mla r7, r2, r0, r3
	mov r6, #4
	mov r3, #0x13
	mov r2, #3
	mov r0, #0xe
	strh r2, [sp, #0x2c]
	strb r0, [sp, #0x38]
	mov r5, #6
	strh r4, [sp, #0x2e]
	strh r6, [sp, #0x28]
	strh r3, [sp, #0x2a]
	strh r1, [sp, #0x30]
	strh r1, [sp, #0x32]
	strh r1, [sp, #0x34]
	strh r1, [sp, #0x36]
	str r7, [sp, #0x3c]
	add r2, sp, #0x28
	mov r0, #1
	stmia sp, {r0, r2, r5}
	mov r2, #1
	ldr r0, _020D4248 ; =0x0209F5C0
	mov r3, r2
	str r1, [sp, #0xc]
	sub r4, r5, #7
	str r4, [sp, #0x10]
	bl FUN_ov16_020f5c34
_020D423C:
	strb r9, [r10, #0x25]
	add sp, sp, #0xc0
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_020D4248: .word 0x0209F5C0
_020D424C: .word 0x02099EF0
_020D4250: .word 0x0209BA20
_020D4254: .word 0x66666667
_020D4258: .word 0x02099F14
_020D425C: .word 0x51EB851F
	arm_func_end FUN_ov1_020d3e48

	arm_func_start FUN_ov1_020d4260
FUN_ov1_020d4260: ; 0x020D4260
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	ldr r1, _020D4308 ; =0x020A0640
	mov r4, #1
	ldrb r1, [r1, #0x1a]
	mov r6, #0
	mov r5, r4
	cmp r1, #0
	mov r1, r6
	beq _020D4290
	ldrb r0, [r0, #0x58]
	cmp r0, #0
	moveq r1, r4
_020D4290:
	cmp r1, #0
	bne _020D42CC
	ldr r0, _020D430C ; =0x02099EF0
	mov r7, #0
	ldr r0, [r0]
	bl FUN_ov132_02159afc
	cmp r0, #0
	beq _020D42C4
	bl FUN_ov16_020f081c
	ldr r1, _020D4310 ; =0x020EAAD0
	ldr r1, [r1]
	cmp r1, r0
	movne r7, #1
_020D42C4:
	cmp r7, #0
	moveq r5, #0
_020D42CC:
	cmp r5, #0
	bne _020D42F8
	bl FUN_ov16_020f081c
	ldr r2, _020D430C ; =0x02099EF0
	mov r1, r0
	ldr r0, [r2]
	mov r2, r6
	mov r3, #1
	bl FUN_ov132_0215a168
	cmp r0, #0
	movne r4, r6
_020D42F8:
	mov r0, #1
	cmp r4, #0
	movne r0, #0
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_020D4308: .word 0x020A0640
_020D430C: .word 0x02099EF0
_020D4310: .word 0x020EAAD0
	arm_func_end FUN_ov1_020d4260

	arm_func_start FUN_ov1_020d4314
FUN_ov1_020d4314: ; 0x020D4314
	stmfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, lr}
	sub sp, sp, #0x2c
	mov r10, r0
	ldr r3, [r10, #0x690]
	mov r9, r1
	cmp r3, #0
	addeq sp, sp, #0x2c
	ldmeqfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
	mov r0, #0x18
	mul r0, r9, r0
	ldr r1, [r3, #0xc]
	mov r4, #4
	add r1, r3, r1
	add r7, r1, r0, lsl #1
	mov r6, #0x14
	mov r5, #3
	mov r11, #0
	mov r3, #0x10
	mov r1, #0x20
	mov r0, #9
	strh r6, [sp, #0x16]
	strh r5, [sp, #0x18]
	strh r3, [sp, #0x20]
	strb r0, [sp, #0x24]
	mov r8, #0x17
	cmp r9, #0
	moveq r8, #0
	strh r8, [sp, #0x14]
	strh r4, [sp, #0x1a]
	strh r4, [sp, #0x1c]
	strh r11, [sp, #0x1e]
	cmp r2, #0
	movne r11, #1
	cmp r2, #0
	mov r0, #6
	rsb r12, r11, #0
	strh r1, [sp, #0x22]
	mov r4, #0
	str r7, [sp, #0x28]
	mov r6, #1
	add r5, sp, #0x14
	str r6, [sp]
	moveq r0, #0
	str r5, [sp, #4]
	str r0, [sp, #8]
	ldr r11, _020D4490 ; =0x0209F5C0
	str r4, [sp, #0xc]
	mov r0, r11
	mov r1, r4
	mov r2, #2
	add r3, r9, #0x10
	str r12, [sp, #0x10]
	bl FUN_ov16_020f5c34
	mov r2, #4
	mov r1, #0x14
	strh r1, [sp, #0x16]
	mov r1, #3
	strh r1, [sp, #0x18]
	mov r1, #0x10
	strh r1, [sp, #0x20]
	mov r1, #0x20
	add r0, r7, #0x18
	strh r1, [sp, #0x22]
	mov r1, #9
	strb r1, [sp, #0x24]
	str r0, [sp, #0x28]
	strh r8, [sp, #0x14]
	strh r2, [sp, #0x1a]
	strh r2, [sp, #0x1c]
	strh r4, [sp, #0x1e]
	str r6, [sp]
	str r5, [sp, #4]
	str r4, [sp, #8]
	str r4, [sp, #0xc]
	mov r0, r11
	mov r1, r4
	mov r2, #2
	add r3, r9, #0x12
	str r4, [sp, #0x10]
	bl FUN_ov16_020f5c34
	mov r0, r11
	mov r1, r4
	add r2, r9, #0x12
	bl FUN_ov16_020f6084
	mov r0, #2
	str r0, [sp]
	ldr r0, _020D4494 ; =0x0209A070
	mov r3, r4
	add r1, r9, #0x10
	add r2, r9, #0x12
	bl FUN_ov16_020f6c8c
	add r1, r10, r9
	strb r0, [r1, #0x2c8]
	add sp, sp, #0x2c
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
_020D4490: .word 0x0209F5C0
_020D4494: .word 0x0209A070
	arm_func_end FUN_ov1_020d4314

	arm_func_start FUN_ov1_020d4498
FUN_ov1_020d4498: ; 0x020D4498
	stmfd sp!, {r3, r4, r5, r6, r7, r8, lr}
	sub sp, sp, #4
	mov r6, r0
	mov r8, r1
	bl FUN_ov16_020f081c
	ldr r7, _020D46F4 ; =0x02099EF0
	mov r5, r0
	ldr r0, [r7]
	bl FUN_ov132_02159df0
	mov r4, r0
	ldr r0, [r7]
	mov r1, r5
	bl FUN_ov132_02145190
	cmp r8, #0x10
	beq _020D44DC
	cmp r8, #0x11
	bne _020D456C
_020D44DC:
	cmp r8, #0x10
	ldr r0, [r6, #0x5c]
	bne _020D44FC
	cmp r0, #0
	ldrle r0, [r6, #0x60]
	sub r0, r0, #1
	str r0, [r6, #0x5c]
	b _020D450C
_020D44FC:
	ldr r1, [r6, #0x60]
	add r0, r0, #1
	bl FUN_0201f9bc
	str r1, [r6, #0x5c]
_020D450C:
	mov r1, #0
	ldr r0, _020D46F8 ; =0x0209F5C0
	mov r3, r1
	mov r2, #0x2d
	bl FUN_ov16_020f5eec
	ldr r0, _020D46FC ; =0x0209AC44
	mov r1, #1
	bl FUN_0202cf6c
	ldr r0, _020D46F4 ; =0x02099EF0
	ldr r2, [r6, #0x5c]
	ldr r0, [r0]
	mov r1, r5
	bl FUN_ov132_0215a2c0
	strh r0, [r6, #0x26]
	ldr r0, [r6, #4]
	add r1, r6, #0x26
	ldr r2, [r0]
	ldr r2, [r2, #0x3c]
	blx r2
	mov r0, r6
	mov r1, #0x53
	bl FUN_ov1_020bf9f4
	add sp, sp, #4
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, pc}
_020D456C:
	cmp r8, #3
	bne _020D45E4
	ldr r0, _020D4700 ; =0x020A0640
	ldrb r0, [r0, #0x1a]
	cmp r0, #0
	bne _020D459C
	bl FUN_ov16_020f081c
	ldrb r2, [r4, #4]
	mov r1, #1
	orr r0, r2, r1, lsl r0
	strb r0, [r4, #4]
	b _020D45B8
_020D459C:
	mov r4, #0
	mov r0, r6
	mov r2, r5
	mov r1, #0xa
	mov r3, #0x6e
	str r4, [sp]
	bl FUN_ov1_020c3a24
_020D45B8:
	mov r0, r6
	mov r1, #0x38
	bl FUN_ov1_020bea78
	ldr r0, _020D46FC ; =0x0209AC44
	mov r1, #4
	bl FUN_0202cf6c
	mov r0, r6
	mov r1, #0x50
	bl FUN_ov1_020bf9f4
	add sp, sp, #4
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, pc}
_020D45E4:
	cmp r8, #0x2d
	addne sp, sp, #4
	ldmnefd sp!, {r3, r4, r5, r6, r7, r8, pc}
	ldr r0, [r7]
	ldr r2, [r6, #0x5c]
	mov r1, r5
	bl FUN_ov132_0215a2c0
	mov r4, r0
	ldr r0, [r7]
	mov r1, r5
	mov r2, r4
	bl FUN_ov132_02159f8c
	cmp r0, #0
	bne _020D463C
	mov r0, r6
	mov r1, #0x3b
	bl FUN_ov1_020d19e0
	ldr r0, _020D46FC ; =0x0209AC44
	mov r1, #9
	bl FUN_0202cf6c
	add sp, sp, #4
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, pc}
_020D463C:
	bl FUN_ov16_020f081c
	mov r1, r0
	ldr r0, [r7]
	ldr r2, [r6, #0x5c]
	bl FUN_ov132_0215a314
	ldr r0, _020D4700 ; =0x020A0640
	ldrb r0, [r0, #0x1a]
	cmp r0, #0
	beq _020D466C
	ldr r0, _020D46FC ; =0x0209AC44
	mov r1, #1
	b _020D4674
_020D466C:
	ldr r0, _020D46FC ; =0x0209AC44
	mov r1, #2
_020D4674:
	bl FUN_0202cf6c
	ldr r0, _020D4700 ; =0x020A0640
	ldrb r0, [r0, #0x1a]
	cmp r0, #0
	ldreq r0, _020D4704 ; =0x020EAAF4
	moveq r1, r5, lsl #1
	streqh r4, [r0, r1]
	beq _020D46B0
	mov r7, #0
	mov r0, r6
	mov r2, r5
	and r3, r4, #0xff
	mov r1, #0xa
	str r7, [sp]
	bl FUN_ov1_020c3a24
_020D46B0:
	ldr r0, _020D46F4 ; =0x02099EF0
	ldr r0, [r0]
	bl FUN_ov132_02159afc
	cmp r0, #0
	mov r0, r6
	bne _020D46E4
	mov r1, #0x38
	bl FUN_ov1_020bea78
	mov r0, r6
	mov r1, #0x50
	bl FUN_ov1_020bf9f4
	add sp, sp, #4
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, pc}
_020D46E4:
	mov r1, #0x52
	bl FUN_ov1_020bf9f4
	add sp, sp, #4
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, pc}
_020D46F4: .word 0x02099EF0
_020D46F8: .word 0x0209F5C0
_020D46FC: .word 0x0209AC44
_020D4700: .word 0x020A0640
_020D4704: .word 0x020EAAF4
	arm_func_end FUN_ov1_020d4498

	arm_func_start FUN_ov1_020d4708
FUN_ov1_020d4708: ; 0x020D4708
	stmfd sp!, {r4, lr}
	mov r4, r0
	mov r3, r2
	mov r2, r1
	ldr r0, _020D4738 ; =0x0209F5C0
	mov r1, #0
	bl FUN_ov16_020f6b3c
	movs r1, r0
	ldmeqfd sp!, {r4, pc}
	mov r0, r4
	bl FUN_ov1_020d4498
	ldmfd sp!, {r4, pc}
_020D4738: .word 0x0209F5C0
	arm_func_end FUN_ov1_020d4708

	arm_func_start FUN_ov1_020d473c
FUN_ov1_020d473c: ; 0x020D473C
	stmfd sp!, {r3, r4, r5, lr}
	ldr r4, _020D479C ; =0x0209AEC0
	mov r0, r4
	bl FUN_02046744
	mov r5, r0
	mov r0, r4
	bl FUN_02046730
	mov r4, #0
	ldr r2, _020D47A0 ; =0x020EAADC
	mov r3, #1
	b _020D478C
_020D4768:
	cmp r4, r0
	beq _020D4788
	tst r5, r3, lsl r4
	beq _020D4788
	ldrb r1, [r2, r4]
	cmp r1, #0
	moveq r0, r3
	ldmeqfd sp!, {r3, r4, r5, pc}
_020D4788:
	add r4, r4, #1
_020D478C:
	cmp r4, #4
	blt _020D4768
	mov r0, #0
	ldmfd sp!, {r3, r4, r5, pc}
_020D479C: .word 0x0209AEC0
_020D47A0: .word 0x020EAADC
	arm_func_end FUN_ov1_020d473c

	arm_func_start FUN_ov1_020d47a4
FUN_ov1_020d47a4: ; 0x020D47A4
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	mov r6, r0
	mov r12, r1
	mov r7, r2
	mov r4, #0
	mov r5, r3
	ldr r0, _020D4970 ; =0x0209F5C0
	mov r1, r4
	mov r2, r12
	mov r3, r7
	bl FUN_ov16_020f6b3c
	cmp r0, #2
	beq _020D47E4
	cmp r0, #3
	beq _020D4878
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_020D47E4:
	mov r7, #1
	ldr r0, _020D4974 ; =0x0209AC44
	mov r1, r7
	bl FUN_0202cf6c
	ldr r0, [r6, #8]
	cmp r0, #0x1a
	bne _020D484C
	bl FUN_ov16_020f081c
	ldr r2, _020D4978 ; =0x02099EF0
	mov r1, r0
	ldr r0, [r2]
	mov r2, r4
	mov r3, r7
	bl FUN_ov132_0215a168
	cmp r0, #0
	bne _020D484C
	ldrb r0, [r6, #0x58]
	cmp r0, #0
	beq _020D484C
	bl FUN_ov16_020f081c
	mov r2, r0
	mov r0, r6
	mov r1, r5
	mov r3, #0x6e
	str r4, [sp]
	b _020D4864
_020D484C:
	bl FUN_ov16_020f081c
	mov r2, r0
	mov r3, #0
	mov r0, r6
	mov r1, r5
	str r3, [sp]
_020D4864:
	bl FUN_ov1_020c3a24
	ldr r1, [sp, #0x18]
	mov r0, r6
	bl FUN_ov1_020bf9f4
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_020D4878:
	mov r0, r6
	bl FUN_ov1_020d473c
	cmp r0, #0
	beq _020D4960
	ldr r0, _020D4974 ; =0x0209AC44
	mov r1, #4
	bl FUN_0202cf6c
	bl FUN_ov16_020f081c
	mov r2, r0
	mov r0, r6
	mov r1, r5
	str r4, [sp]
	mov r3, #0x32
	bl FUN_ov1_020c3a24
	ldr r1, [r6, #8]
	cmp r1, #0x17
	bgt _020D48F4
	bge _020D4920
	sub r0, r1, #0xb
	cmp r0, #8
	addls pc, pc, r0, lsl #2
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_020D48D0: ; jump table
	b _020D4900 ; case 0
	ldmfd sp!, {r3, r4, r5, r6, r7, pc} ; case 1
	b _020D4910 ; case 2
	ldmfd sp!, {r3, r4, r5, r6, r7, pc} ; case 3
	b _020D4940 ; case 4
	ldmfd sp!, {r3, r4, r5, r6, r7, pc} ; case 5
	ldmfd sp!, {r3, r4, r5, r6, r7, pc} ; case 6
	ldmfd sp!, {r3, r4, r5, r6, r7, pc} ; case 7
	b _020D4930 ; case 8
_020D48F4:
	cmp r1, #0x1a
	beq _020D4950
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_020D4900:
	mov r0, r6
	mov r1, r4
	bl FUN_ov1_020bee3c
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_020D4910:
	mov r0, r6
	mov r1, r4
	bl FUN_ov1_020befdc
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_020D4920:
	mov r0, r6
	mov r1, r4
	bl FUN_ov1_020bf534
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_020D4930:
	mov r0, r6
	mov r1, r4
	bl FUN_ov1_020bf2d8
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_020D4940:
	mov r0, r6
	mov r1, r4
	bl FUN_ov1_020bf1d4
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_020D4950:
	mov r0, r6
	mov r1, #0
	bl FUN_ov1_020bf690
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_020D4960:
	ldr r0, _020D4974 ; =0x0209AC44
	mov r1, #9
	bl FUN_0202cf6c
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_020D4970: .word 0x0209F5C0
_020D4974: .word 0x0209AC44
_020D4978: .word 0x02099EF0
	arm_func_end FUN_ov1_020d47a4

	arm_func_start FUN_ov1_020d497c
FUN_ov1_020d497c: ; 0x020D497C
	stmfd sp!, {r4, r5, r6, r7, r8, lr}
	mov r6, r0
	ldr r0, [r6, #8]
	mov r5, r1
	cmp r0, #0xb
	mov r7, #1
	mov r4, #0
	bne _020D49C8
	ldr r0, _020D4A3C ; =0x0209A2C0
	ldr r0, [r0, #0x48]
	bl FUN_ov16_020f07f4
	mov r8, r0
	bl FUN_ov16_020f081c
	cmp r8, r0
	ldr r0, [r6, #0x2ac]
	mov r1, r7
	bne _020D49C4
	b _020D49EC
_020D49C4:
	b _020D49F8
_020D49C8:
	cmp r0, #0x1a
	bne _020D4A08
	ldr r0, _020D4A40 ; =0x020EAAD0
	ldr r0, [r0]
	bl FUN_ov16_020f0a14
	cmp r0, #0
	ldr r0, [r6, #0x2ac]
	mov r1, r7
	beq _020D49F8
_020D49EC:
	cmp r0, #1
	cmpne r0, #3
	b _020D4A00
_020D49F8:
	cmp r0, #2
	cmpne r0, #4
_020D4A00:
	movne r1, r4
	mov r4, r1
_020D4A08:
	ldr r0, _020D4A44 ; =0x02099F14
	mov r1, r5
	ldr r0, [r0]
	mov r2, r4
	bl FUN_ov1_020e4988
	cmp r0, #0
	beq _020D4A30
	cmp r5, #0
	strneb r7, [r6, #0x1f]
	ldmfd sp!, {r4, r5, r6, r7, r8, pc}
_020D4A30:
	mov r0, #0
	strb r0, [r6, #0x1f]
	ldmfd sp!, {r4, r5, r6, r7, r8, pc}
_020D4A3C: .word 0x0209A2C0
_020D4A40: .word 0x020EAAD0
_020D4A44: .word 0x02099F14
	arm_func_end FUN_ov1_020d497c

	arm_func_start FUN_ov1_020d4a48
FUN_ov1_020d4a48: ; 0x020D4A48
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, lr}
	sub sp, sp, #0x30
	ldr r1, _020D4C00 ; =0x02099EF0
	mov r10, r0
	ldr r0, [r1]
	mov r4, #0
	mov r8, r4
	bl FUN_ov126_0213246c
	cmp r0, #0
	beq _020D4A8C
	ldrb r0, [r0, #0x12]
	mov r8, #0
	tst r0, #8
	movne r0, #1
	moveq r0, r4
	cmp r0, #0
	moveq r8, #1
_020D4A8C:
	ldr r5, _020D4C04 ; =0x020EAAC8
	ldr r0, [r5]
	bl FUN_ov16_020efa80
	ldr r1, _020D4C08 ; =0x020A0640
	ldrb r1, [r1, #0x1b]
	cmp r1, #0
	bne _020D4AB4
	ldr r0, [r5]
	bl FUN_ov16_020f077c
	b _020D4ACC
_020D4AB4:
	bl FUN_ov16_020f0810
	mov r5, r0
	bl FUN_ov16_020f081c
	cmp r5, r0
	moveq r0, #1
	movne r0, #0
_020D4ACC:
	cmp r0, #0
	beq _020D4AEC
	ldr r0, _020D4C04 ; =0x020EAAC8
	mov r5, #0
	ldr r0, [r0]
	bl FUN_ov16_020efa80
	ldr r1, _020D4C0C ; =0x020EAAE4
	b _020D4B00
_020D4AEC:
	ldr r0, _020D4C0C ; =0x020EAAE4
	mov r5, #1
	ldr r0, [r0]
	bl FUN_ov16_020efa80
	ldr r1, _020D4C04 ; =0x020EAAC8
_020D4B00:
	mov r6, r0
	ldr r0, [r1]
	bl FUN_ov16_020efa80
	ldr r9, _020D4C00 ; =0x02099EF0
	mov r7, r0
	add r0, sp, #0x10
	str r8, [sp]
	str r0, [sp, #4]
	ldr r0, [r9]
	mov r1, r6
	mov r2, r4
	mov r3, r5
	bl FUN_ov126_0212fdc0
	stmia sp, {r5, r8}
	ldr r0, [r9]
	mov r1, r6
	mov r2, r7
	mov r3, r4
	bl FUN_ov126_02130914
	mov r3, #0
	mov r7, r3
	mov r0, #0xc
	b _020D4B6C
_020D4B5C:
	add r2, r3, #8
	mla r1, r2, r0, r10
	str r7, [r1, #0x348]
	add r3, r3, #1
_020D4B6C:
	cmp r3, #8
	blt _020D4B5C
	ldr r8, [r10, #0x390]
	cmp r8, #0
	beq _020D4BE4
	mov r9, #0
	add r5, r10, #0x348
	add r11, sp, #0xc
	add r6, sp, #0x10
	mov r4, #0xc
	b _020D4BDC
_020D4B98:
	ldr r1, [r6, r9, lsl #2]
	cmp r1, #0
	beq _020D4BD8
	mov r0, r8
	mov r2, r11
	add r3, sp, #8
	bl FUN_ov16_020f34f0
	cmp r0, #0
	beq _020D4BD8
	add r0, r9, #8
	mla r1, r0, r4, r5
	str r7, [sp]
	ldr r2, [sp, #0xc]
	ldr r3, [sp, #8]
	ldr r0, _020D4C10 ; =0x020E88D4
	bl FUN_ov1_020dbe70
_020D4BD8:
	add r9, r9, #1
_020D4BDC:
	cmp r9, #8
	blt _020D4B98
_020D4BE4:
	ldr r0, _020D4C14 ; =0x020E88E0
	add r1, r10, #0x378
	bl FUN_ov1_020dbe00
	mov r0, r10
	bl FUN_ov1_020d58b0
	add sp, sp, #0x30
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_020D4C00: .word 0x02099EF0
_020D4C04: .word 0x020EAAC8
_020D4C08: .word 0x020A0640
_020D4C0C: .word 0x020EAAE4
_020D4C10: .word 0x020E88D4
_020D4C14: .word 0x020E88E0
	arm_func_end FUN_ov1_020d4a48

	arm_func_start FUN_ov1_020d4c18
FUN_ov1_020d4c18: ; 0x020D4C18
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, lr}
	sub sp, sp, #0x30
	ldr r1, _020D4D74 ; =0x02099EF0
	mov r10, r0
	ldr r0, [r1]
	bl FUN_ov126_021375d4
	mov r6, r0
	ldrsb r0, [r6, #0xc]
	bl FUN_ov16_020f077c
	cmp r0, #0
	beq _020D4C64
	ldrsb r0, [r6, #0xc]
	mov r4, #0
	bl FUN_ov16_020efa80
	mov r5, r0
	ldrsb r0, [r6, #0xd]
	bl FUN_ov16_020efa80
	mov r6, r0
	b _020D4C8C
_020D4C64:
	ldrsb r0, [r6, #0xd]
	mov r4, #1
	bl FUN_ov16_020efa80
	mov r5, r0
	ldrsb r0, [r6, #0xc]
	bl FUN_ov16_020efa80
	cmp r5, #0
	mov r6, r0
	addeq sp, sp, #0x30
	ldmeqfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_020D4C8C:
	mov r7, #0
	ldr r8, _020D4D74 ; =0x02099EF0
	mov r9, #1
	add r0, sp, #0x10
	str r7, [sp]
	str r0, [sp, #4]
	ldr r0, [r8]
	mov r1, r5
	mov r2, r9
	mov r3, r4
	bl FUN_ov126_0212fdc0
	stmia sp, {r4, r7}
	ldr r0, [r8]
	mov r1, r5
	mov r2, r6
	mov r3, r9
	bl FUN_ov126_02130914
	mov r9, r7
	mov r0, #0xc
_020D4CD8:
	mla r1, r7, r0, r10
	add r7, r7, #1
	str r9, [r1, #0x3a8]
	cmp r7, #8
	blt _020D4CD8
	ldr r8, [r10, #0x390]
	cmp r8, #0
	beq _020D4D58
	add r5, r10, #0x348
	mov r6, #0
	add r11, sp, #0xc
	add r7, sp, #0x10
	mov r4, #0xc
_020D4D0C:
	ldr r1, [r7, r9, lsl #2]
	cmp r1, #0
	beq _020D4D4C
	mov r0, r8
	mov r2, r11
	add r3, sp, #8
	bl FUN_ov16_020f34f0
	cmp r0, #0
	beq _020D4D4C
	add r0, r9, #8
	mla r1, r0, r4, r5
	str r6, [sp]
	ldr r2, [sp, #0xc]
	ldr r3, [sp, #8]
	ldr r0, _020D4D78 ; =0x020E88F0
	bl FUN_ov1_020dbe70
_020D4D4C:
	add r9, r9, #1
	cmp r9, #8
	blt _020D4D0C
_020D4D58:
	ldr r0, _020D4D7C ; =0x020E88FC
	add r1, r10, #0x378
	bl FUN_ov1_020dbe00
	mov r0, r10
	bl FUN_ov1_020d58b0
	add sp, sp, #0x30
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_020D4D74: .word 0x02099EF0
_020D4D78: .word 0x020E88F0
_020D4D7C: .word 0x020E88FC
	arm_func_end FUN_ov1_020d4c18

	arm_func_start FUN_ov1_020d4d80
FUN_ov1_020d4d80: ; 0x020D4D80
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, lr}
	sub sp, sp, #0x30
	ldr r4, _020D4FB8 ; =0x02099EF0
	mov r10, r0
	ldr r0, [r4]
	bl FUN_ov126_021375d4
	mov r6, r0
	ldr r0, [r4]
	bl FUN_ov126_0213777c
	mov r5, r0
	ldrsb r0, [r6, #0xc]
	bl FUN_ov16_020f07f4
	mov r4, r0
	bl FUN_ov16_020f081c
	cmp r4, r0
	ldrsb r0, [r5, #0x20]
	bne _020D4DF8
	mov r4, #0
	bl FUN_ov16_020efa80
	mov r5, r0
	ldrsb r0, [r6, #0xd]
	bl FUN_ov16_020efa80
	cmp r5, #0
	mov r6, r0
	addeq sp, sp, #0x30
	ldmeqfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
	cmp r6, #0
	bne _020D4E20
	add sp, sp, #0x30
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_020D4DF8:
	mov r4, #1
	bl FUN_ov16_020efa80
	mov r5, r0
	ldrsb r0, [r6, #0xc]
	bl FUN_ov16_020efa80
	mov r6, r0
	cmp r5, #0
	cmpne r6, #0
	addeq sp, sp, #0x30
	ldmeqfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_020D4E20:
	mov r7, #0
	ldr r8, _020D4FB8 ; =0x02099EF0
	mov r9, #2
	add r0, sp, #0x10
	str r7, [sp]
	str r0, [sp, #4]
	ldr r0, [r8]
	mov r1, r5
	mov r2, r9
	mov r3, r4
	bl FUN_ov126_0212fdc0
	stmia sp, {r4, r7}
	ldr r0, [r8]
	mov r1, r5
	mov r2, r6
	mov r3, r9
	bl FUN_ov126_02130914
	add r5, r10, #0x348
	mov r4, #0xc
_020D4E6C:
	add r1, r7, #8
	mla r0, r1, r4, r5
	bl FUN_ov16_020f33fc
	add r7, r7, #1
	cmp r7, #8
	blt _020D4E6C
	add r0, r10, #0x348
	add r0, r0, #0x30c
	bl FUN_ov16_020f33fc
	add r0, r10, #0x660
	bl FUN_ov16_020f33fc
	add r0, r10, #0x348
	add r0, r0, #0x324
	bl FUN_ov16_020f33fc
	add r0, r10, #0x378
	bl FUN_ov16_020f33fc
	add r0, r10, #0x348
	add r0, r0, #0x2d0
	bl FUN_ov16_020f33fc
	add r0, r10, #0x348
	add r0, r0, #0x2dc
	bl FUN_ov16_020f33fc
	add r0, r10, #0x630
	bl FUN_ov16_020f33fc
	add r0, r10, #0x348
	add r0, r0, #0x2f4
	bl FUN_ov16_020f33fc
	add r0, r10, #0x348
	add r0, r0, #0x300
	bl FUN_ov16_020f33fc
	mov r2, #0
	mov r9, r2
	mov r0, #0xc
_020D4EF0:
	mla r1, r2, r0, r10
	add r2, r2, #1
	str r9, [r1, #0x3a8]
	cmp r2, #8
	blt _020D4EF0
	ldr r8, [r10, #0x390]
	cmp r8, #0
	beq _020D4F70
	add r5, r10, #0x348
	mov r6, #0
	add r11, sp, #0xc
	add r7, sp, #0x10
	mov r4, #0xc
_020D4F24:
	ldr r1, [r7, r9, lsl #2]
	cmp r1, #0
	beq _020D4F64
	mov r0, r8
	mov r2, r11
	add r3, sp, #8
	bl FUN_ov16_020f34f0
	cmp r0, #0
	beq _020D4F64
	add r0, r9, #8
	mla r1, r0, r4, r5
	str r6, [sp]
	ldr r2, [sp, #0xc]
	ldr r3, [sp, #8]
	ldr r0, _020D4FBC ; =0x020E890C
	bl FUN_ov1_020dbe70
_020D4F64:
	add r9, r9, #1
	cmp r9, #8
	blt _020D4F24
_020D4F70:
	add r1, r10, #0x254
	ldr r0, _020D4FC0 ; =0x020E8918
	add r1, r1, #0x400
	bl FUN_ov1_020dbe00
	ldr r0, _020D4FC4 ; =0x020E8924
	add r1, r10, #0x660
	bl FUN_ov1_020dbe00
	add r1, r10, #0x26c
	ldr r0, _020D4FC8 ; =0x020E8930
	add r1, r1, #0x400
	bl FUN_ov1_020dbe00
	ldr r0, _020D4FCC ; =0x020E893C
	add r1, r10, #0x378
	bl FUN_ov1_020dbe00
	mov r0, r10
	bl FUN_ov1_020d58b0
	add sp, sp, #0x30
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_020D4FB8: .word 0x02099EF0
_020D4FBC: .word 0x020E890C
_020D4FC0: .word 0x020E8918
_020D4FC4: .word 0x020E8924
_020D4FC8: .word 0x020E8930
_020D4FCC: .word 0x020E893C
	arm_func_end FUN_ov1_020d4d80

	arm_func_start FUN_ov1_020d4fd0
FUN_ov1_020d4fd0: ; 0x020D4FD0
	stmfd sp!, {r4, lr}
	sub sp, sp, #0x40
	mov r3, #0
	mov r4, r0
	mov r2, r3
	mov r0, #0xc
_020D4FE8:
	mla r1, r3, r0, r4
	add r3, r3, #1
	str r2, [r1, #0x3a8]
	cmp r3, #8
	blt _020D4FE8
	mov r0, r4
	bl FUN_ov1_020d4260
	cmp r0, #0
	add r0, sp, #0
	bne _020D501C
	ldr r1, _020D5060 ; =0x020E894C
	bl STD_CopyString
	b _020D502C
_020D501C:
	ldr r1, _020D5064 ; =0x020E895C
	bl STD_CopyString
	mov r0, r4
	bl FUN_ov1_020d5070
_020D502C:
	ldr r0, _020D5068 ; =0x020E896C
	add r1, r4, #0x378
	bl FUN_ov1_020dbe00
	add r1, r4, #0x1f4
	add r0, sp, #0
	add r1, r1, #0x400
	bl FUN_ov1_020dbe00
	add r1, r4, #0x2a8
	ldr r0, _020D506C ; =0x020E897C
	add r1, r1, #0x400
	bl FUN_ov1_020dbe38
	add sp, sp, #0x40
	ldmfd sp!, {r4, pc}
_020D5060: .word 0x020E894C
_020D5064: .word 0x020E895C
_020D5068: .word 0x020E896C
_020D506C: .word 0x020E897C
	arm_func_end FUN_ov1_020d4fd0

	arm_func_start FUN_ov1_020d5070
FUN_ov1_020d5070: ; 0x020D5070
	stmfd sp!, {r4, r5, lr}
	sub sp, sp, #0xc
	mov r5, r0
	add r0, r5, #0x3a8
	bl FUN_ov16_020f33fc
	mov r0, r5
	bl FUN_ov1_020d4260
	cmp r0, #0
	ldrne r4, [r5, #0x39c]
	cmpne r4, #0
	addeq sp, sp, #0xc
	ldmeqfd sp!, {r4, r5, pc}
	bl FUN_ov16_020f081c
	ldr r2, _020D50FC ; =0x02099EF0
	mov r1, r0
	ldr r0, [r2]
	ldr r2, [r5, #0x5c]
	bl FUN_ov132_0215a2c0
	mov r1, r0
	add r2, sp, #8
	add r3, sp, #4
	mov r0, r4
	bl FUN_ov16_020f34f0
	cmp r0, #0
	addeq sp, sp, #0xc
	ldmeqfd sp!, {r4, r5, pc}
	mov r0, #0
	str r0, [sp]
	ldr r2, [sp, #8]
	ldr r3, [sp, #4]
	ldr r0, _020D5100 ; =0x020E8988
	add r1, r5, #0x3a8
	bl FUN_ov1_020dbe70
	add sp, sp, #0xc
	ldmfd sp!, {r4, r5, pc}
_020D50FC: .word 0x02099EF0
_020D5100: .word 0x020E8988
	arm_func_end FUN_ov1_020d5070

	arm_func_start FUN_ov1_020d5104
FUN_ov1_020d5104: ; 0x020D5104
	stmfd sp!, {r4, r5, lr}
	sub sp, sp, #0xc
	mov r5, r0
	ldr r0, [r5, #0x390]
	mov r4, #0
	str r4, [r5, #0x3a8]
	cmp r0, #0
	beq _020D5158
	add r1, r5, #0x200
	ldrh r1, [r1, #0xb2]
	add r2, sp, #8
	add r3, sp, #4
	bl FUN_ov16_020f34f0
	cmp r0, #0
	beq _020D5158
	str r4, [sp]
	ldr r2, [sp, #8]
	ldr r3, [sp, #4]
	ldr r0, _020D518C ; =0x020E8994
	add r1, r5, #0x3a8
	bl FUN_ov1_020dbe70
_020D5158:
	ldr r0, _020D5190 ; =0x020E89A0
	add r1, r5, #0x378
	bl FUN_ov1_020dbe00
	add r1, r5, #0x74
	ldr r0, _020D5194 ; =0x020E89B0
	add r1, r1, #0x400
	bl FUN_ov1_020dbe38
	add r1, r5, #0x5c
	ldr r0, _020D5198 ; =0x020E89C0
	add r1, r1, #0x400
	bl FUN_ov1_020dbe00
	add sp, sp, #0xc
	ldmfd sp!, {r4, r5, pc}
_020D518C: .word 0x020E8994
_020D5190: .word 0x020E89A0
_020D5194: .word 0x020E89B0
_020D5198: .word 0x020E89C0
	arm_func_end FUN_ov1_020d5104

	arm_func_start FUN_ov1_020d519c
FUN_ov1_020d519c: ; 0x020D519C
	mov r1, r0
	ldr r0, [r1, #0x45c]
	ldr r2, _020D51B4 ; =0x020E7ADC
	ldr r12, _020D51B8 ; =FUN_ov1_020dbfdc
	add r1, r1, #0x348
	bx r12
_020D51B4: .word 0x020E7ADC
_020D51B8: .word FUN_ov1_020dbfdc
	arm_func_end FUN_ov1_020d519c

	arm_func_start FUN_ov1_020d51bc
FUN_ov1_020d51bc: ; 0x020D51BC
	ldr r0, _020D51D4 ; =0x02099F14
	mov r2, r1
	ldr r0, [r0]
	ldr r1, _020D51D8 ; =0x020EAAF4
	ldr r12, _020D51DC ; =FUN_ov0_020e4c08
	bx r12
_020D51D4: .word 0x02099F14
_020D51D8: .word 0x020EAAF4
_020D51DC: .word FUN_ov0_020e4c08
	arm_func_end FUN_ov1_020d51bc

	arm_func_start FUN_ov1_020d51e0
FUN_ov1_020d51e0: ; 0x020D51E0
	stmfd sp!, {r4, r5, r6, r7, r8, r9, r10, lr}
	mov r8, r0
	ldr r2, [r8, #8]
	mov r4, #0
	mov r7, r1
	cmp r2, #0x1a
	mov r6, r4
	bne _020D520C
	bl FUN_ov1_020d4260
	cmp r0, #0
	beq _020D5278
_020D520C:
	ldr r0, [r8, #8]
	cmp r0, #0x1a
	beq _020D5254
	mov r5, #0
	mvn r10, #0
	mov r9, #0xc
_020D5224:
	mla r0, r5, r9, r8
	ldr r0, [r0, #0x3a8]
	cmp r0, #0
	beq _020D5244
	mov r2, r10
	add r1, r6, #1
	bl FUN_ov16_020f18e8
	mov r6, r0
_020D5244:
	add r5, r5, #1
	cmp r5, #8
	blt _020D5224
	b _020D5268
_020D5254:
	mov r1, #1
	ldr r0, [r8, #0x3a8]
	sub r2, r1, #2
	bl FUN_ov16_020f18e8
	mov r6, r0
_020D5268:
	ldr r0, [r8, #0x3a8]
	mov r1, #0
	mov r2, #8
	bl FUN_ov16_020f1138
_020D5278:
	mvn r5, #0
	ldr r0, [r8, #0x378]
	mov r2, r5
	add r1, r6, #1
	bl FUN_ov16_020f18e8
	mov r1, r0
	cmp r7, #0x1a
	beq _020D5310
	ldr r0, [r8, #0x618]
	mov r2, r5
	add r1, r1, #1
	bl FUN_ov16_020f18e8
	mov r1, r0
	ldr r0, [r8, #0x624]
	mov r2, r5
	add r1, r1, #1
	bl FUN_ov16_020f18e8
	mov r1, r0
	ldr r0, [r8, #0x630]
	mov r2, r5
	add r1, r1, #1
	bl FUN_ov16_020f18e8
	add r1, r0, #1
	ldr r0, [r8, #0x63c]
	mov r2, r5
	bl FUN_ov16_020f18e8
	add r1, r0, #1
	ldr r0, [r8, #0x648]
	mov r2, r5
	bl FUN_ov16_020f18e8
	mov r5, r0
	ldr r0, [r8, #0x36c]
	mov r1, r4
	mov r2, #5
	bl FUN_ov16_020f1138
	mov r1, r4
	ldr r0, [r8, #0x618]
	b _020D5360
_020D5310:
	ldr r0, [r8, #0x5f4]
	mov r2, r5
	add r1, r1, #1
	bl FUN_ov16_020f18e8
	mov r1, r0
	ldr r0, [r8, #0x6a8]
	mov r2, r5
	add r1, r1, #1
	bl FUN_ov16_020f18e8
	mov r5, r0
	ldr r0, [r8, #0x684]
	mov r1, r4
	mov r2, #5
	bl FUN_ov16_020f1138
	ldr r0, [r8, #0x6a8]
	mov r1, r4
	mov r2, #0xe
	bl FUN_ov16_020f1138
	ldr r0, [r8, #0x69c]
	mov r1, r4
_020D5360:
	mov r2, #0xa
	bl FUN_ov16_020f1138
	cmp r7, #0x13
	bne _020D5390
	ldr r0, [r8, #0x66c]
	add r1, r5, #1
	mvn r2, #0
	bl FUN_ov16_020f18e8
	ldr r0, [r8, #0x66c]
	mov r1, #0
	mov r2, #0xe
	bl FUN_ov16_020f1138
_020D5390:
	mov r5, #3
	ldr r0, [r8, #0x4c8]
	mov r1, r4
	mov r2, r5
	bl FUN_ov16_020f1138
	cmp r7, #0x13
	bgt _020D53D0
	bge _020D5404
	cmp r7, #0xd
	bgt _020D5444
	cmp r7, #0xb
	blt _020D5444
	beq _020D53EC
	cmp r7, #0xd
	beq _020D53F4
	b _020D5444
_020D53D0:
	cmp r7, #0x17
	bgt _020D53E0
	beq _020D53F4
	b _020D5444
_020D53E0:
	cmp r7, #0x1a
	beq _020D5434
	b _020D5444
_020D53EC:
	ldr r0, [r8, #0x354]
	b _020D5438
_020D53F4:
	ldr r0, [r8, #0x360]
	mov r1, #0
	mov r2, #9
_020D5400:
	b _020D5440
_020D5404:
	ldr r0, [r8, #0x360]
	mov r1, r4
	mov r2, #9
	bl FUN_ov16_020f1138
	ldr r0, [r8, #0x654]
	mov r1, r4
	mov r2, r5
	bl FUN_ov16_020f1138
	ldr r0, [r8, #0x660]
	mov r1, r4
	mov r2, r5
	b _020D5400
_020D5434:
	ldr r0, [r8, #0x678]
_020D5438:
	mov r1, r4
	mov r2, #9
_020D5440:
	bl FUN_ov16_020f1138
_020D5444:
	mov r0, #1
	strb r0, [r8, #0x1e]
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, pc}
	arm_func_end FUN_ov1_020d51e0

	arm_func_start FUN_ov1_020d5450
FUN_ov1_020d5450: ; 0x020D5450
	stmfd sp!, {r4, r5, r6, r7, r8, r9, r10, lr}
	mov r9, r0
	ldrb r2, [r9, #0x1e]
	mov r8, r1
	cmp r2, #0
	ldmeqfd sp!, {r4, r5, r6, r7, r8, r9, r10, pc}
	mov r7, #0
	strb r7, [r9, #0x1e]
	cmp r8, #0x1a
	mov r4, #8
	mov r5, #0x20
	beq _020D54C4
	mov r10, #0xc
_020D5484:
	mla r0, r4, r10, r9
	ldr r6, [r0, #0x348]
	cmp r6, #0
	beq _020D54B0
	ldr r0, [r6, #0x14]
	ldr r2, [r6, #0x18]
	mov r1, r5
	add r0, r6, r0
	bl FUN_0200585c
	ldr r0, [r6, #0x18]
	add r5, r5, r0
_020D54B0:
	add r7, r7, #1
	cmp r7, #8
	add r4, r4, #1
	blt _020D5484
	b _020D54E4
_020D54C4:
	bl FUN_ov1_020d4260
	cmp r0, #0
	beq _020D54E4
	ldr r1, [r9, #0x3a8]
	mov r2, r5
	mov r0, #1
	bl FUN_ov16_020f19d4
	mov r5, r0
_020D54E4:
	mov r4, #1
	ldr r1, [r9, #0x378]
	mov r0, r4
	mov r2, r5
	bl FUN_ov16_020f19d4
	mov r2, r0
	cmp r8, #0x1a
	beq _020D5554
	ldr r1, [r9, #0x618]
	mov r0, r4
	bl FUN_ov16_020f19d4
	mov r2, r0
	ldr r1, [r9, #0x624]
	mov r0, r4
	bl FUN_ov16_020f19d4
	mov r2, r0
	ldr r1, [r9, #0x630]
	mov r0, r4
	bl FUN_ov16_020f19d4
	mov r2, r0
	ldr r1, [r9, #0x63c]
	mov r0, r4
	bl FUN_ov16_020f19d4
	mov r2, r0
	ldr r1, [r9, #0x648]
	mov r0, r4
	bl FUN_ov16_020f19d4
	b _020D5570
_020D5554:
	ldr r1, [r9, #0x5f4]
	mov r0, r4
	bl FUN_ov16_020f19d4
	mov r2, r0
	ldr r1, [r9, #0x6a8]
	mov r0, r4
	bl FUN_ov16_020f19d4
_020D5570:
	mov r2, r0
	cmp r8, #0x13
	bne _020D5588
	ldr r1, [r9, #0x66c]
	mov r0, #1
	bl FUN_ov16_020f19d4
_020D5588:
	mov r4, #2
	ldr r1, [r9, #0x4c8]
	ldr r2, [r9, #0x64]
	mov r0, r4
	bl FUN_ov16_020f19d4
	mov r2, r0
	ldr r1, [r9, #0x504]
	mov r0, r4
	bl FUN_ov16_020f19d4
	mov r2, r0
	ldr r1, [r9, #0x5b8]
	mov r0, r4
	bl FUN_ov16_020f19d4
	mov r2, r0
	cmp r8, #0x13
	bgt _020D55EC
	bge _020D5664
	cmp r8, #0xd
	bgt _020D5720
	cmp r8, #0xb
	blt _020D5720
	beq _020D5608
	cmp r8, #0xd
	beq _020D5634
	b _020D5720
_020D55EC:
	cmp r8, #0x17
	bgt _020D55FC
	beq _020D5634
	b _020D5720
_020D55FC:
	cmp r8, #0x1a
	beq _020D56E4
	b _020D5720
_020D5608:
	ldr r1, [r9, #0x354]
	mov r0, r4
	bl FUN_ov16_020f19d4
	mov r2, r0
	ldr r1, [r9, #0x4d4]
	mov r0, r4
	bl FUN_ov16_020f19d4
	mov r2, r0
	ldr r1, [r9, #0x4e0]
	mov r0, r4
_020D5630:
	b _020D571C
_020D5634:
	mov r4, #2
	ldr r1, [r9, #0x360]
	mov r0, r4
	bl FUN_ov16_020f19d4
	mov r2, r0
	ldr r1, [r9, #0x4ec]
	mov r0, r4
	bl FUN_ov16_020f19d4
	mov r2, r0
	ldr r1, [r9, #0x4f8]
	mov r0, r4
	b _020D5630
_020D5664:
	ldr r1, [r9, #0x360]
	mov r0, r4
	bl FUN_ov16_020f19d4
	mov r2, r0
	ldr r1, [r9, #0x5e8]
	mov r0, r4
	bl FUN_ov16_020f19d4
	mov r2, r0
	ldr r1, [r9, #0x600]
	mov r0, r4
	bl FUN_ov16_020f19d4
	ldr r1, [r9, #0x6c]
	mov r5, r0
	sub r6, r4, #3
	add r1, r1, #1
	ldr r0, [r9, #0x654]
	mov r2, r6
	bl FUN_ov16_020f18e8
	mov r2, r5
	mov r5, r0
	mov r0, r4
	ldr r1, [r9, #0x654]
	bl FUN_ov16_020f19d4
	add r1, r5, #1
	mov r2, r6
	mov r5, r0
	ldr r0, [r9, #0x660]
	bl FUN_ov16_020f18e8
	mov r0, r4
	ldr r1, [r9, #0x660]
	mov r2, r5
	b _020D5630
_020D56E4:
	ldr r1, [r9, #0x678]
	mov r0, r4
	bl FUN_ov16_020f19d4
	mov r2, r0
	ldr r1, [r9, #0x690]
	mov r0, r4
	bl FUN_ov16_020f19d4
	mov r2, r0
	ldr r1, [r9, #0x69c]
	mov r0, r4
	bl FUN_ov16_020f19d4
	mov r2, r0
	ldr r1, [r9, #0x60c]
	mov r0, r4
_020D571C:
	bl FUN_ov16_020f19d4
_020D5720:
	bl FUN_ov16_020f10ac
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, pc}
	arm_func_end FUN_ov1_020d5450

	arm_func_start FUN_ov1_020d5728
FUN_ov1_020d5728: ; 0x020D5728
	stmfd sp!, {r4, r5, r6, r7, r8, lr}
	mov r7, #1
	mov r8, r0
	sub r6, r7, #2
	ldr r0, [r8, #0x3a8]
	mov r1, r7
	mov r2, r6
	bl FUN_ov16_020f18e8
	mov r5, r0
	mov r4, #0
	ldr r0, [r8, #0x3a8]
	mov r1, r4
	mov r2, #8
	bl FUN_ov16_020f1138
	ldr r0, [r8, #0x378]
	mov r2, r6
	add r1, r5, #1
	bl FUN_ov16_020f18e8
	ldr r1, [r8, #0x68]
	ldr r0, [r8, #0x468]
	mov r2, r6
	add r1, r1, #1
	bl FUN_ov16_020f18e8
	add r1, r0, #1
	ldr r0, [r8, #0x474]
	mov r2, r6
	bl FUN_ov16_020f18e8
	mov r1, r4
	mov r4, r0
	ldr r0, [r8, #0x474]
	mov r2, #9
	bl FUN_ov16_020f1138
	ldr r0, [r8, #0x480]
	add r1, r4, #1
	mov r2, r6
	bl FUN_ov16_020f18e8
	add r1, r0, #1
	ldr r0, [r8, #0x48c]
	mov r2, r6
	bl FUN_ov16_020f18e8
	add r1, r0, #1
	ldr r0, [r8, #0x498]
	mov r2, r6
	bl FUN_ov16_020f18e8
	strb r7, [r8, #0x1e]
	ldmfd sp!, {r4, r5, r6, r7, r8, pc}
	arm_func_end FUN_ov1_020d5728

	arm_func_start FUN_ov1_020d57e0
FUN_ov1_020d57e0: ; 0x020D57E0
	stmfd sp!, {r3, r4, r5, lr}
	mov r5, r0
	ldrb r0, [r5, #0x1e]
	cmp r0, #0
	ldmeqfd sp!, {r3, r4, r5, pc}
	mov r4, #1
	mov r3, #0
	ldr r1, [r5, #0x3a8]
	mov r0, r4
	mov r2, #0x20
	strb r3, [r5, #0x1e]
	bl FUN_ov16_020f19d4
	mov r2, r0
	ldr r1, [r5, #0x378]
	mov r0, r4
	bl FUN_ov16_020f19d4
	mov r4, #2
	ldr r1, [r5, #0x468]
	ldr r2, [r5, #0x64]
	mov r0, r4
	bl FUN_ov16_020f19d4
	mov r2, r0
	ldr r1, [r5, #0x474]
	mov r0, r4
	bl FUN_ov16_020f19d4
	mov r2, r0
	mov r0, r4
	ldr r1, [r5, #0x480]
	bl FUN_ov16_020f19d4
	mov r2, r0
	mov r0, r4
	ldr r1, [r5, #0x48c]
	bl FUN_ov16_020f19d4
	ldr r1, [r5, #0x498]
	mov r2, r0
	mov r0, r4
	bl FUN_ov16_020f19d4
	bl FUN_ov16_020f10ac
	ldmfd sp!, {r3, r4, r5, pc}
	arm_func_end FUN_ov1_020d57e0

	arm_func_start FUN_ov1_020d587c
FUN_ov1_020d587c: ; 0x020D587C
	mov r1, #1
	strb r1, [r0, #0x1e]
	bx lr
	arm_func_end FUN_ov1_020d587c

	arm_func_start FUN_ov1_020d5888
FUN_ov1_020d5888: ; 0x020D5888
	bx lr
	arm_func_end FUN_ov1_020d5888

	arm_func_start FUN_ov1_020d588c
FUN_ov1_020d588c: ; 0x020D588C
	stmfd sp!, {r3, r4, r5, lr}
	mov r5, r0
	mov r4, #1
	ldr r0, [r5, #0x3a8]
	mov r1, r4
	sub r2, r4, #2
	bl FUN_ov16_020f18e8
	strb r4, [r5, #0x1e]
	ldmfd sp!, {r3, r4, r5, pc}
	arm_func_end FUN_ov1_020d588c

	arm_func_start FUN_ov1_020d58b0
FUN_ov1_020d58b0: ; 0x020D58B0
	stmfd sp!, {r4, lr}
	mov r4, r0
	bl FUN_ov1_020d5920
	add r1, r4, #0x218
	ldr r0, _020D590C ; =0x020E89D0
	add r1, r1, #0x400
	bl FUN_ov1_020dbe00
	add r1, r4, #0x224
	ldr r0, _020D5910 ; =0x020E89E0
	add r1, r1, #0x400
	bl FUN_ov1_020dbe00
	ldr r0, _020D5914 ; =0x020E89F0
	add r1, r4, #0x630
	bl FUN_ov1_020dbe00
	add r1, r4, #0x23c
	ldr r0, _020D5918 ; =0x020E8A00
	add r1, r1, #0x400
	bl FUN_ov1_020dbe00
	add r1, r4, #0x248
	ldr r0, _020D591C ; =0x020E8A10
	add r1, r1, #0x400
	bl FUN_ov1_020dbe00
	ldmfd sp!, {r4, pc}
_020D590C: .word 0x020E89D0
_020D5910: .word 0x020E89E0
_020D5914: .word 0x020E89F0
_020D5918: .word 0x020E8A00
_020D591C: .word 0x020E8A10
	arm_func_end FUN_ov1_020d58b0

	arm_func_start FUN_ov1_020d5920
FUN_ov1_020d5920: ; 0x020D5920
	stmfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, lr}
	sub sp, sp, #0x14
	ldr r4, _020D59A4 ; =0x020E7B04
	mov r6, r0
	ldmia r4!, {r0, r1, r2, r3}
	add r5, sp, #0
	mov r8, r5
	stmia r5!, {r0, r1, r2, r3}
	ldr r4, [r4]
	mov r9, #0
	str r4, [r5]
	add r7, r6, #0x348
	mov r11, #1
	mov r5, r9
	mov r4, #0xc
_020D595C:
	ldr r0, [r8, r9, lsl #2]
	mov r1, r11
	mul r6, r0, r4
	add r10, r7, r6
	mov r0, r10
	bl FUN_ov16_020f338c
	mov r0, r10
	bl FUN_ov16_020f33fc
	str r5, [r7, r6]
	str r5, [r10, #4]
	strb r5, [r10, #8]
	strb r5, [r10, #9]
	add r9, r9, #1
	strb r5, [r10, #0xa]
	cmp r9, #5
	blt _020D595C
	add sp, sp, #0x14
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
_020D59A4: .word 0x020E7B04
	arm_func_end FUN_ov1_020d5920

	arm_func_start FUN_ov1_020d59a8
FUN_ov1_020d59a8: ; 0x020D59A8
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, lr}
	sub sp, sp, #0x110
	mov r10, r0
	ldr r0, [sp, #0x138]
	str r2, [sp, #0x28]
	str r0, [sp, #0x138]
	ldr r0, [sp, #0x13c]
	mov r9, r3
	cmp r1, #0
	str r0, [sp, #0x13c]
	ldr r11, [sp, #0x144]
	bne _020D5A1C
	ldr r4, _020D618C ; =0x0209F5C0
	mov r8, #0
	mov r0, r4
	mov r1, r8
	mov r3, r8
	mov r2, #1
	bl FUN_ov16_020f5f64
	mov r0, r4
	mov r1, r8
	mov r2, #2
	mov r3, r8
	bl FUN_ov16_020f5f64
	mov r0, r4
	mov r1, r8
	mov r3, r8
	mov r2, #0xa
	bl FUN_ov16_020f5f64
_020D5A1C:
	mov r0, r9
	bl FUN_0206d5f0
	ldr r4, _020D6190 ; =0x02099EF0
	mov r1, r0
	ldr r0, [r4]
	bl FUN_ov132_02145190
	str r0, [sp, #0x48]
	ldr r1, [sp, #0x150]
	add r0, sp, #0xf0
	str r1, [sp]
	str r0, [sp, #4]
	ldr r0, [r4]
	ldr r2, [sp, #0x13c]
	mov r1, r9
	mov r3, r11
	bl FUN_ov126_0212fdc0
	ldr r0, [r4]
	ldr r2, [sp, #0x13c]
	mov r1, r9
	mov r3, r11
	bl FUN_ov126_02130898
	str r11, [sp]
	str r0, [sp, #0x40]
	ldr r0, [sp, #0x150]
	ldr r2, [sp, #0x138]
	str r0, [sp, #4]
	ldr r0, [r4]
	ldr r3, [sp, #0x13c]
	mov r1, r9
	bl FUN_ov126_02130914
	str r0, [sp, #0x44]
	ldrb r0, [sp, #0x158]
	cmp r0, #0
	beq _020D5F18
	ldr r2, [r10, #0x654]
	cmp r2, #0
	beq _020D5B2C
	ldr r1, [r2, #0xc]
	mov r0, #0x1b
	strh r0, [sp, #0xd8]
	mov r0, #0x18
	add r1, r2, r1
	mov r3, #3
	str r1, [sp, #0xec]
	mov r1, #0
	strh r0, [sp, #0xe4]
	strh r0, [sp, #0xe6]
	mov r0, #0xf
	strh r0, [sp, #0xda]
	mov r0, #5
	strh r0, [sp, #0xdc]
	mov r0, #8
	strh r0, [sp, #0xe0]
	strh r3, [sp, #0xde]
	strh r1, [sp, #0xe2]
	strb r3, [sp, #0xe8]
	mov r0, #1
	str r0, [sp]
	add r2, sp, #0xd8
	str r2, [sp, #4]
	mov r0, #6
	str r0, [sp, #8]
	sub r0, r0, #7
	str r1, [sp, #0xc]
	str r0, [sp, #0x10]
	ldr r0, _020D618C ; =0x0209F5C0
	mov r2, #2
	bl FUN_ov16_020f5c34
_020D5B2C:
	ldr r4, _020D6190 ; =0x02099EF0
	ldr r0, [r4]
	bl FUN_ov126_0213777c
	ldrb r1, [r0, #0x2f]
	ldrb r0, [r0, #0x2e]
	cmp r0, #1
	bne _020D5B54
	ldr r0, [r4]
	bl FUN_ov132_02149714
	b _020D5B64
_020D5B54:
	cmp r1, #1
	bne _020D5B68
	ldr r0, [r4]
	bl FUN_ov132_021492a4
_020D5B64:
	ldr r5, [r0, #0x28]
_020D5B68:
	cmp r5, #1
	ble _020D5F18
	ldr r2, [r10, #0x660]
	cmp r2, #0
	beq _020D5BFC
	ldr r0, [r2, #0xc]
	mov r1, #0
	add r0, r2, r0
	mov r2, #0x19
	strh r2, [sp, #0xc0]
	mov r2, #0xa
	strh r2, [sp, #0xc2]
	mov r2, #7
	strh r2, [sp, #0xc4]
	mov r2, #4
	strh r2, [sp, #0xc6]
	mov r2, #0x38
	strh r2, [sp, #0xcc]
	mov r2, #0x20
	strh r2, [sp, #0xce]
	mov r2, #3
	str r0, [sp, #0xd4]
	strb r2, [sp, #0xd0]
	mov r3, #6
	strh r1, [sp, #0xc8]
	strh r1, [sp, #0xca]
	mov r0, #1
	str r0, [sp]
	add r0, sp, #0xc0
	stmib sp, {r0, r3}
	sub r2, r3, #7
	str r1, [sp, #0xc]
	str r2, [sp, #0x10]
	ldr r0, _020D618C ; =0x0209F5C0
	mov r2, #2
	mov r3, #0x2c
	bl FUN_ov16_020f5c34
_020D5BFC:
	ldr r4, _020D6190 ; =0x02099EF0
	ldr r0, [r4]
	bl FUN_ov126_0213777c
	ldrb r1, [r0, #0x2e]
	ldrb r0, [r0, #0x2f]
	cmp r1, #1
	bne _020D5C24
	ldr r0, [r4]
	bl FUN_ov132_02149714
	b _020D5C34
_020D5C24:
	cmp r0, #1
	bne _020D5C40
	ldr r0, [r4]
	bl FUN_ov132_021492a4
_020D5C34:
	ldr r1, [r0, #0x2c]
	ldr r7, [r0, #0x28]
	add r6, r1, #1
_020D5C40:
	ldr r5, [r10, #0x66c]
	cmp r5, #0
	beq _020D5CFC
	ldr r2, _020D6194 ; =0x66666667
	mov r0, r6, lsr #0x1f
	smull r1, r4, r2, r6
	add r4, r0, r4, asr #2
	mov r3, #0xa
	smull r1, r2, r3, r4
	sub r4, r6, r1
	mov r2, r4, lsl #3
	mov r1, r2, asr #2
	add r1, r2, r1, lsr #29
	mov r1, r1, asr #3
	mov r2, r1, lsl #3
	ldr r0, [r5, #0xc]
	mov r1, r2, asr #2
	add r1, r2, r1, lsr #29
	add r0, r5, r0
	mov r2, #1
	mov r1, r1, asr #3
	add r0, r0, r1, lsl #1
	mov r1, #0
	str r0, [sp, #0xbc]
	mov r0, #0x1b
	strh r0, [sp, #0xa8]
	mov r0, #0xc
	strh r0, [sp, #0xaa]
	mov r0, #0xe
	strb r0, [sp, #0xb8]
	strh r1, [sp, #0xb0]
	strh r1, [sp, #0xb2]
	strh r1, [sp, #0xb4]
	strh r1, [sp, #0xb6]
	strh r2, [sp, #0xac]
	strh r2, [sp, #0xae]
	str r2, [sp]
	add r3, sp, #0xa8
	str r3, [sp, #4]
	mov r0, #6
	str r0, [sp, #8]
	sub r0, r0, #7
	str r1, [sp, #0xc]
	str r0, [sp, #0x10]
	ldr r0, _020D618C ; =0x0209F5C0
	mov r3, #0x2c
	bl FUN_ov16_020f5c34
_020D5CFC:
	ldr r0, [r10, #0x66c]
	cmp r0, #0
	beq _020D5DAC
	ldr r3, _020D6194 ; =0x66666667
	mov r1, r6, lsr #0x1f
	smull r2, r4, r3, r6
	adds r4, r1, r4, asr #2
	beq _020D5DAC
	mov r2, r4, lsl #3
	mov r1, r2, asr #2
	add r1, r2, r1, lsr #29
	mov r1, r1, asr #3
	mov r2, r1, lsl #3
	mov r1, r2, asr #2
	add r3, r2, r1, lsr #29
	ldr r4, [r0, #0xc]
	mov r1, #0
	add r4, r0, r4
	mov r0, r3, asr #3
	add r4, r4, r0, lsl #1
	mov r2, #1
	mov r0, #0x1a
	strh r0, [sp, #0x90]
	mov r0, #0xc
	strh r0, [sp, #0x92]
	mov r0, #0xe
	strb r0, [sp, #0xa0]
	str r4, [sp, #0xa4]
	strh r2, [sp, #0x94]
	strh r2, [sp, #0x96]
	strh r1, [sp, #0x98]
	strh r1, [sp, #0x9a]
	strh r1, [sp, #0x9c]
	strh r1, [sp, #0x9e]
	mov r3, #6
	add r0, sp, #0x90
	str r2, [sp]
	stmib sp, {r0, r3}
	ldr r0, _020D618C ; =0x0209F5C0
	sub r3, r3, #7
	str r1, [sp, #0xc]
	str r3, [sp, #0x10]
	mov r3, #0x2c
	bl FUN_ov16_020f5c34
_020D5DAC:
	ldr r0, [r10, #0x66c]
	cmp r0, #0
	beq _020D5E68
	ldr r3, _020D6194 ; =0x66666667
	mov r1, r7, lsr #0x1f
	smull r2, r4, r3, r7
	add r4, r1, r4, asr #2
	mov r3, #0xa
	smull r1, r2, r3, r4
	sub r4, r7, r1
	mov r2, r4, lsl #3
	ldr r3, [r0, #0xc]
	mov r1, r2, asr #2
	add r3, r0, r3
	add r0, r2, r1, lsr #29
	mov r0, r0, asr #3
	mov r1, r0, lsl #3
	mov r0, r1, asr #2
	add r0, r1, r0, lsr #29
	mov r1, #0
	mov r2, #1
	mov r0, r0, asr #3
	add r0, r3, r0, lsl #1
	str r0, [sp, #0x8c]
	mov r0, #0x1e
	strh r0, [sp, #0x78]
	mov r0, #0xc
	strh r0, [sp, #0x7a]
	mov r0, #0xe
	strb r0, [sp, #0x88]
	strh r2, [sp, #0x7c]
	strh r2, [sp, #0x7e]
	strh r1, [sp, #0x80]
	strh r1, [sp, #0x82]
	strh r1, [sp, #0x84]
	strh r1, [sp, #0x86]
	str r2, [sp]
	add r3, sp, #0x78
	str r3, [sp, #4]
	mov r0, #6
	str r0, [sp, #8]
	sub r0, r0, #7
	str r1, [sp, #0xc]
	str r0, [sp, #0x10]
	ldr r0, _020D618C ; =0x0209F5C0
	mov r3, #0x2c
	bl FUN_ov16_020f5c34
_020D5E68:
	ldr r0, [r10, #0x66c]
	cmp r0, #0
	beq _020D5F18
	ldr r3, _020D6194 ; =0x66666667
	mov r1, r7, lsr #0x1f
	smull r2, r4, r3, r7
	adds r4, r1, r4, asr #2
	beq _020D5F18
	mov r2, r4, lsl #3
	mov r1, r2, asr #2
	add r1, r2, r1, lsr #29
	mov r1, r1, asr #3
	mov r2, r1, lsl #3
	mov r1, r2, asr #2
	add r3, r2, r1, lsr #29
	ldr r4, [r0, #0xc]
	mov r1, #0
	mov r2, #1
	add r4, r0, r4
	mov r0, r3, asr #3
	add r4, r4, r0, lsl #1
	mov r0, #0x1d
	mov r3, #0xc
	strh r0, [sp, #0x60]
	mov r0, #0xe
	strh r3, [sp, #0x62]
	strb r0, [sp, #0x70]
	strh r2, [sp, #0x64]
	strh r2, [sp, #0x66]
	strh r1, [sp, #0x68]
	strh r1, [sp, #0x6a]
	strh r1, [sp, #0x6c]
	strh r1, [sp, #0x6e]
	str r4, [sp, #0x74]
	mov r3, #6
	add r0, sp, #0x60
	str r2, [sp]
	stmib sp, {r0, r3}
	sub r4, r3, #7
	str r1, [sp, #0xc]
	ldr r0, _020D618C ; =0x0209F5C0
	mov r3, #0x2c
	str r4, [sp, #0x10]
	bl FUN_ov16_020f5c34
_020D5F18:
	mov r2, #0
	str r2, [r10, #0x60]
	add r1, sp, #0xf0
_020D5F24:
	ldr r0, [r1, r2, lsl #2]
	add r2, r2, #2
	cmp r0, #0
	ldrne r0, [r10, #0x60]
	addne r0, r0, #1
	strne r0, [r10, #0x60]
	cmp r2, #8
	blt _020D5F24
	ldr r0, [r10, #0x5c]
	cmp r0, #0
	ldreqb r1, [sp, #0x154]
	cmpeq r1, #0
	bne _020D5F80
	mov r1, #0x38
	str r1, [sp, #0x5c]
	mov r1, #4
	mov r2, #0
	str r1, [sp, #0x3c]
	mov r1, #0x14
	str r1, [sp, #0x38]
	str r2, [sp, #0x58]
	mov r1, #1
	b _020D5FA4
_020D5F80:
	mov r1, #0xc4
	str r1, [sp, #0x5c]
	mov r1, #6
	mov r2, #0x70
	str r1, [sp, #0x3c]
	mov r1, #0x12
	str r1, [sp, #0x38]
	str r2, [sp, #0x58]
	mov r1, #0
_020D5FA4:
	str r1, [sp, #0x34]
	ldrb r1, [sp, #0x14c]
	mov r7, #0
	str r1, [sp, #0x30]
	mov r1, r0, lsl #1
	add r0, sp, #0x138
	ldrh r0, [r0, #0x10]
	str r0, [sp, #0x2c]
	mvn r0, #0
	str r0, [sp, #0x4c]
	add r0, sp, #0xf0
	add r4, r0, r1, lsl #2
	add r0, r1, #0x2d
	str r0, [sp, #0x50]
	add r0, r1, #8
	str r0, [sp, #0x54]
_020D5FE4:
	ldr r3, [r4, r7, lsl #2]
	cmp r3, #0
	ble _020D6120
	ldr r0, [sp, #0x13c]
	ldr r2, [sp, #0x138]
	stmia sp, {r0, r11}
	ldr r0, [sp, #0x48]
	mov r1, r9
	str r0, [sp, #8]
	mov r0, #0
	str r0, [sp, #0xc]
	ldr r0, [sp, #0x30]
	str r0, [sp, #0x10]
	ldr r0, _020D6190 ; =0x02099EF0
	ldr r0, [r0]
	bl FUN_ov126_021300d8
	cmp r0, #0
	ldrne r0, [sp, #0x2c]
	ldr r1, [r4, r7, lsl #2]
	moveq r0, #5
	mov r0, r0, lsl #0x10
	mov r5, r0, lsr #0x10
	ldr r0, _020D6198 ; =0x0209BA20
	bl FUN_0204a2c4
	movs r6, r0
	beq _020D606C
	ldr r1, [sp, #0x34]
	cmp r1, #0
	ldrne r8, [sp, #0x4c]
	bne _020D6070
	mov r1, r9
	bl FUN_0204b114
	mov r8, r0
	b _020D6070
_020D606C:
	mov r8, #0
_020D6070:
	ldr r0, _020D6198 ; =0x0209BA20
	ldr r2, [r4, r7, lsl #2]
	mov r1, r9
	bl FUN_0207224c
	ldrb r2, [r6, #0x14]
	cmp r2, #0
	moveq r3, #0
	beq _020D60B4
	ldr r3, _020D619C ; =0x51EB851F
	add r1, r0, r2
	smull r12, r0, r3, r2
	mov r3, r2, lsr #0x1f
	add r0, r3, r0, asr #5
	mov r3, #0x64
	smull r0, r12, r3, r0
	sub r0, r2, r0
	sub r3, r1, r0
_020D60B4:
	ldr r0, [sp, #0x3c]
	mov r1, #1
	str r0, [sp]
	ldr r0, [sp, #0x50]
	cmp r7, #0
	add r0, r0, r7
	str r0, [sp, #4]
	ldr r0, [sp, #0x28]
	movne r1, #0
	str r0, [sp, #8]
	add r0, sp, #0x58
	ldr r2, [r0, r7, lsl #2]
	ldr r0, [sp, #0x54]
	str r2, [sp, #0xc]
	add r0, r0, r7
	str r0, [sp, #0x10]
	str r5, [sp, #0x14]
	ldrb r5, [r6, #8]
	ldr r2, [sp, #0x38]
	mov r0, r10
	str r5, [sp, #0x18]
	str r8, [sp, #0x1c]
	str r3, [sp, #0x20]
	mov r3, #0
	str r3, [sp, #0x24]
	mov r3, #0xe
	bl FUN_ov1_020d1a94
_020D6120:
	add r7, r7, #1
	cmp r7, #2
	blt _020D5FE4
	ldrb r0, [sp, #0x154]
	cmp r0, #0
	beq _020D615C
	ldr r0, [r10, #0x60]
	cmp r0, #1
	ble _020D6170
	ldr r2, [sp, #0x40]
	ldr r3, [sp, #0x44]
	add r1, sp, #0xf0
	mov r0, r10
	bl FUN_ov1_020d3748
	b _020D6170
_020D615C:
	ldr r2, [sp, #0x40]
	ldr r3, [sp, #0x44]
	add r1, sp, #0xf0
	mov r0, r10
	bl FUN_ov1_020d2214
_020D6170:
	mov r2, #2
	ldr r1, [sp, #0x140]
	mov r0, r10
	mov r3, r2
	bl FUN_ov1_020d193c
	add sp, sp, #0x110
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_020D618C: .word 0x0209F5C0
_020D6190: .word 0x02099EF0
_020D6194: .word 0x66666667
_020D6198: .word 0x0209BA20
_020D619C: .word 0x51EB851F
	arm_func_end FUN_ov1_020d59a8

	arm_func_start FUN_ov1_020d61a0
FUN_ov1_020d61a0: ; 0x020D61A0
	stmfd sp!, {r3, lr}
	ldr r0, _020D61EC ; =0x020EAAF4
	mov r1, r1, lsl #1
	ldrh r1, [r0, r1]
	ldr r0, _020D61F0 ; =0x0209BA20
	bl FUN_0204a2c4
	cmp r0, #0
	beq _020D61E4
	ldrb r0, [r0]
	add r0, r0, #0xfb
	and r0, r0, #0xff
	cmp r0, #3
	movls r0, #1
	movhi r0, #0
	cmp r0, #0
	movne r0, #1
	ldmnefd sp!, {r3, pc}
_020D61E4:
	mov r0, #0
	ldmfd sp!, {r3, pc}
_020D61EC: .word 0x020EAAF4
_020D61F0: .word 0x0209BA20
	arm_func_end FUN_ov1_020d61a0

	arm_func_start FUN_ov1_020d61f4
FUN_ov1_020d61f4: ; 0x020D61F4
	stmfd sp!, {r3, lr}
	ldr r0, _020D6238 ; =0x02099EF0
	ldr r0, [r0]
	bl FUN_ov132_02143b6c
	cmp r0, #0
	ldmeqfd sp!, {r3, pc}
	ldrsh r0, [r0, #4]
	bl FUN_ov16_020efa80
	cmp r0, #0
	ldmeqfd sp!, {r3, pc}
	mov r2, #0
	ldr r0, _020D623C ; =0x020AF81C
	ldr r1, _020D6240 ; =0x00010006
	mov r3, r2
	str r2, [sp]
	bl FUN_02044798
	ldmfd sp!, {r3, pc}
_020D6238: .word 0x02099EF0
_020D623C: .word 0x020AF81C
_020D6240: .word 0x00010006
	arm_func_end FUN_ov1_020d61f4

	arm_func_start FUN_ov1_020d6244
FUN_ov1_020d6244: ; 0x020D6244
	stmfd sp!, {r3, r4, lr}
	sub sp, sp, #4
	mov r4, r0
	ldr r0, [r4, #0x338]
	cmp r0, #7
	moveq r0, #0xf
	streq r0, [r4, #0x338]
	beq _020D6290
	cmp r0, #9
	moveq r0, #0x10
	streq r0, [r4, #0x338]
	beq _020D6290
	cmp r0, #0xe
	moveq r0, #0x11
	streq r0, [r4, #0x338]
	beq _020D6290
	cmp r0, #5
	cmpne r0, #0xf
	cmpne r0, #0x10
_020D6290:
	mov r2, #0
	ldr r0, _020D6310 ; =0x020AF81C
	ldr r1, _020D6314 ; =0x00010005
	mov r3, r2
	str r2, [sp]
	bl FUN_02044798
	cmp r0, #0
	addeq sp, sp, #4
	ldmeqfd sp!, {r3, r4, pc}
	ldr r0, _020D6318 ; =0x02099EF0
	ldr r0, [r0]
	bl FUN_ov132_021434f8
	cmp r0, #0
	bne _020D62D0
	mov r0, r4
	bl FUN_ov1_020d61f4
_020D62D0:
	ldr r0, _020D631C ; =0x020A0640
	ldrb r0, [r0, #0x1a]
	cmp r0, #0
	ldrne r0, _020D6320 ; =0x0209AEC0
	ldrneb r0, [r0, #0x64]
	cmpne r0, #0
	mov r0, r4
	beq _020D6300
	mov r1, #0x46
	bl FUN_ov1_020bffd4
	add sp, sp, #4
	ldmfd sp!, {r3, r4, pc}
_020D6300:
	mov r1, #0x47
	bl FUN_ov1_020c05b0
	add sp, sp, #4
	ldmfd sp!, {r3, r4, pc}
_020D6310: .word 0x020AF81C
_020D6314: .word 0x00010005
_020D6318: .word 0x02099EF0
_020D631C: .word 0x020A0640
_020D6320: .word 0x0209AEC0
	arm_func_end FUN_ov1_020d6244

	arm_func_start FUN_ov1_020d6324
FUN_ov1_020d6324: ; 0x020D6324
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	ldr r5, _020D6438 ; =0x02099EF0
	mov r4, r0
	mov r6, #0
	ldr r0, [r5]
	mov r1, r6
	bl FUN_ov132_02143114
	cmp r0, #0
	bne _020D6364
	mov r0, r4
	mov r1, #4
	bl FUN_ov1_020bffd4
	ldr r0, [r5]
	mov r1, r6
	bl FUN_ov132_021447d0
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_020D6364:
	ldrsh r7, [r0, #0x1c]
	ldr r5, _020D6438 ; =0x02099EF0
	ldrb r1, [r0, #0x25]
	cmp r7, #0
	ldrltsh r7, [r0, #0x1e]
	ldr r0, [r5]
	bl FUN_ov126_0212d4b4
	cmp r0, #0
	beq _020D6394
	ldr r0, [r5]
	bl FUN_ov126_021375d4
	mov r6, r0
_020D6394:
	cmp r7, #0
	blt _020D63A4
	cmp r6, #0
	bne _020D63C4
_020D63A4:
	mov r0, r4
	mov r1, #4
	bl FUN_ov1_020bffd4
	ldr r0, _020D6438 ; =0x02099EF0
	mov r1, #0
	ldr r0, [r0]
	bl FUN_ov132_021447d0
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_020D63C4:
	mov r2, #0
	ldr r0, _020D643C ; =0x020AF81C
	ldr r1, _020D6440 ; =0x00010003
	mov r3, r2
	str r2, [sp]
	bl FUN_02044798
	cmp r0, #0
	ldmeqfd sp!, {r3, r4, r5, r6, r7, pc}
	ldr r0, _020D6444 ; =0x020A0640
	ldrb r0, [r0, #0x1a]
	cmp r0, #0
	ldrne r0, _020D6448 ; =0x0209AEC0
	ldrneb r0, [r0, #0x64]
	cmpne r0, #0
	mov r0, r4
	beq _020D6410
	mov r1, #0x46
	bl FUN_ov1_020bffd4
	b _020D6418
_020D6410:
	mov r1, #0x47
	bl FUN_ov1_020c05b0
_020D6418:
	ldr r0, _020D6438 ; =0x02099EF0
	mov r1, #0
	ldr r0, [r0]
	bl FUN_ov132_021447d0
	ldr r0, _020D644C ; =0x02099F14
	ldr r0, [r0]
	bl FUN_ov1_020e39b8
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_020D6438: .word 0x02099EF0
_020D643C: .word 0x020AF81C
_020D6440: .word 0x00010003
_020D6444: .word 0x020A0640
_020D6448: .word 0x0209AEC0
_020D644C: .word 0x02099F14
	arm_func_end FUN_ov1_020d6324

	arm_func_start FUN_ov1_020d6450
FUN_ov1_020d6450: ; 0x020D6450
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	ldr r5, _020D6578 ; =0x02099EF0
	mov r4, r0
	mov r6, #0
	ldr r0, [r5]
	mov r1, r6
	bl FUN_ov132_02143114
	cmp r0, #0
	bne _020D6490
	mov r0, r4
	mov r1, #4
	bl FUN_ov1_020bffd4
	ldr r0, [r5]
	mov r1, r6
	bl FUN_ov132_021447d0
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_020D6490:
	ldrsh r1, [r0, #0x1c]
	cmp r1, #0
	ldrltsh r1, [r0, #0x1e]
	cmp r1, #0
	bge _020D64C4
	mov r0, r4
	mov r1, #4
	bl FUN_ov1_020bffd4
	ldr r0, _020D6578 ; =0x02099EF0
	mov r1, #0
	ldr r0, [r0]
	bl FUN_ov132_021447d0
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_020D64C4:
	ldr r5, _020D6578 ; =0x02099EF0
	ldr r0, [r5]
	bl FUN_ov126_021375d4
	movs r1, r0
	beq _020D64E0
	ldr r0, [r5]
	bl FUN_ov132_02143da8
_020D64E0:
	ldr r6, _020D657C ; =0x020AF81C
	mov r7, #0
	ldr r5, _020D6580 ; =0x00010003
	mov r0, r6
	mov r1, r5
	mov r2, r7
	mov r3, r7
	str r7, [sp]
	bl FUN_02044798
	cmp r0, #0
	ldmeqfd sp!, {r3, r4, r5, r6, r7, pc}
	mov r0, r6
	mov r2, r7
	mov r3, r7
	add r1, r5, #2
	str r7, [sp]
	bl FUN_02044798
	ldr r0, _020D6578 ; =0x02099EF0
	ldr r0, [r0]
	bl FUN_ov132_021434f8
	cmp r0, #0
	bne _020D6540
	mov r0, r4
	bl FUN_ov1_020d61f4
_020D6540:
	ldr r0, _020D6584 ; =0x020A0640
	ldrb r0, [r0, #0x1a]
	cmp r0, #0
	ldrne r0, _020D6588 ; =0x0209AEC0
	ldrneb r0, [r0, #0x64]
	cmpne r0, #0
	mov r0, r4
	beq _020D656C
	mov r1, #0x46
	bl FUN_ov1_020bffd4
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_020D656C:
	mov r1, #0x47
	bl FUN_ov1_020c05b0
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_020D6578: .word 0x02099EF0
_020D657C: .word 0x020AF81C
_020D6580: .word 0x00010003
_020D6584: .word 0x020A0640
_020D6588: .word 0x0209AEC0
	arm_func_end FUN_ov1_020d6450

	arm_func_start FUN_ov1_020d658c
FUN_ov1_020d658c: ; 0x020D658C
	stmfd sp!, {r4, r5, r6, r7, lr}
	sub sp, sp, #0xc
	ldr r1, _020D6680 ; =0x02099EF0
	mov r4, r0
	ldr r0, [r1]
	bl FUN_ov126_021375d4
	mov r7, #0
	mov r5, r0
	ldr r0, _020D6684 ; =0x020AF81C
	ldr r1, _020D6688 ; =0x0001000A
	mov r2, r7
	mov r3, r7
	str r7, [sp]
	bl FUN_02044798
	cmp r0, #0
	addeq sp, sp, #0xc
	ldmeqfd sp!, {r4, r5, r6, r7, pc}
	ldr r0, [r4, #0x338]
	cmp r0, #0x11
	moveq r7, #1
	cmp r5, #0
	beq _020D6640
	mov r0, r5
	bl FUN_ov126_02138638
	cmp r0, #0
	beq _020D6640
	mov r0, r5
	bl FUN_ov126_02138654
	cmp r0, #0
	beq _020D6640
	ldr r5, _020D6680 ; =0x02099EF0
	add r6, sp, #4
	ldr r0, [r5]
	mov r1, r6
	mov r2, r7
	mov r3, #0
	bl FUN_ov132_02143d10
	cmp r0, #0
	beq _020D6640
	ldr r0, [r5]
	mov r1, r6
	bl FUN_ov132_02143da8
	mov r0, r4
	mov r1, #1
	bl FUN_ov1_020d6244
_020D6640:
	ldr r0, _020D668C ; =0x020A0640
	ldrb r0, [r0, #0x1a]
	cmp r0, #0
	ldrne r0, _020D6690 ; =0x0209AEC0
	ldrneb r0, [r0, #0x64]
	cmpne r0, #0
	mov r0, r4
	beq _020D6670
	mov r1, #0x46
	bl FUN_ov1_020bffd4
	add sp, sp, #0xc
	ldmfd sp!, {r4, r5, r6, r7, pc}
_020D6670:
	mov r1, #0x47
	bl FUN_ov1_020c05b0
	add sp, sp, #0xc
	ldmfd sp!, {r4, r5, r6, r7, pc}
_020D6680: .word 0x02099EF0
_020D6684: .word 0x020AF81C
_020D6688: .word 0x0001000A
_020D668C: .word 0x020A0640
_020D6690: .word 0x0209AEC0
	arm_func_end FUN_ov1_020d658c

	arm_func_start FUN_ov1_020d6694
FUN_ov1_020d6694: ; 0x020D6694
	stmfd sp!, {r4, r5, r6, r7, lr}
	sub sp, sp, #0xc
	ldr r5, _020D6770 ; =0x02099EF0
	mov r4, r0
	ldr r0, [r5]
	bl FUN_ov126_021375d4
	mov r6, r0
	ldr r0, [r5]
	mov r1, #0
	bl FUN_ov132_02143114
	mov r7, #0
	ldr r0, _020D6774 ; =0x020AF81C
	ldr r1, _020D6778 ; =0x00010004
	mov r2, r7
	mov r3, r7
	cmp r6, #0
	str r7, [sp]
	bl FUN_02044798
	cmp r0, #0
	addeq sp, sp, #0xc
	ldmeqfd sp!, {r4, r5, r6, r7, pc}
	ldr r0, [r4, #0x338]
	ldr r5, _020D6770 ; =0x02099EF0
	cmp r0, #0x10
	moveq r7, #1
	add r6, sp, #4
	ldr r0, [r5]
	mov r1, r6
	mov r2, r7
	mov r3, #0
	bl FUN_ov132_02143d10
	cmp r0, #0
	beq _020D6730
	ldr r0, [r5]
	mov r1, r6
	bl FUN_ov132_02143da8
	mov r0, r4
	mov r1, #1
	bl FUN_ov1_020d6244
_020D6730:
	ldr r0, _020D677C ; =0x020A0640
	ldrb r0, [r0, #0x1a]
	cmp r0, #0
	ldrne r0, _020D6780 ; =0x0209AEC0
	ldrneb r0, [r0, #0x64]
	cmpne r0, #0
	mov r0, r4
	beq _020D6760
	mov r1, #0x46
	bl FUN_ov1_020bffd4
	add sp, sp, #0xc
	ldmfd sp!, {r4, r5, r6, r7, pc}
_020D6760:
	mov r1, #0x47
	bl FUN_ov1_020c05b0
	add sp, sp, #0xc
	ldmfd sp!, {r4, r5, r6, r7, pc}
_020D6770: .word 0x02099EF0
_020D6774: .word 0x020AF81C
_020D6778: .word 0x00010004
_020D677C: .word 0x020A0640
_020D6780: .word 0x0209AEC0
	arm_func_end FUN_ov1_020d6694

	arm_func_start FUN_ov1_020d6784
FUN_ov1_020d6784: ; 0x020D6784
	stmfd sp!, {r4, r5, r6, r7, r8, r9, lr}
	sub sp, sp, #0xc
	ldr r1, _020D6E14 ; =0x02099F14
	mov r6, r0
	mov r5, #0
	ldr r0, [r1]
	mov r1, r5
	ldr r9, _020D6E18 ; =0x020EAAF4
	ldr r4, _020D6E1C ; =0x020AF81C
	ldr r8, _020D6E20 ; =0x02099EF0
	ldr r7, _020D6E24 ; =0x020A0640
	bl FUN_ov1_020e3de4
	ldr r0, [r6, #0x338]
	cmp r0, #0x14
	addls pc, pc, r0, lsl #2
	b _020D6E0C
_020D67C4: ; jump table
	b _020D6E0C ; case 0
	b _020D6818 ; case 1
	b _020D69D0 ; case 2
	b _020D69D0 ; case 3
	b _020D69D0 ; case 4
	b _020D6AA4 ; case 5
	b _020D6AB8 ; case 6
	b _020D6AC8 ; case 7
	b _020D6B6C ; case 8
	b _020D6BE8 ; case 9
	b _020D6BF8 ; case 10
	b _020D6C08 ; case 11
	b _020D69D0 ; case 12
	b _020D6900 ; case 13
	b _020D69C0 ; case 14
	b _020D6AC8 ; case 15
	b _020D6BE8 ; case 16
	b _020D69C0 ; case 17
	b _020D6C18 ; case 18
	b _020D6D14 ; case 19
	b _020D6D64 ; case 20
_020D6818:
	ldr r0, [r8]
	bl FUN_ov132_021434f8
	cmp r0, #0
	bne _020D68B0
	ldrb r0, [r7, #0x1a]
	cmp r0, #0
	beq _020D6848
	mov r0, r6
	mov r1, #0xc
	bl FUN_ov1_020bffd4
	add sp, sp, #0xc
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, pc}
_020D6848:
	ldr r8, [r6, #4]
	mov r7, #9
	mov r0, r4
	mov r1, r7
	mov r2, r5
	mov r3, r5
	str r8, [sp]
	bl FUN_02044798
	cmp r0, #0
	beq _020D689C
	ldr r0, [r6, #4]
	bl FUN_02041fec
	mov r1, r0
	mov r0, r4
	sub r2, r7, #0xa
	bl FUN_02044e40
	mov r0, r6
	mov r1, #0xd
	bl FUN_ov1_020c05b0
	add sp, sp, #0xc
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, pc}
_020D689C:
	mov r0, r6
	mov r1, #0xd
	bl FUN_ov1_020bffd4
	add sp, sp, #0xc
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, pc}
_020D68B0:
	ldr r0, [r8]
	bl FUN_ov126_021375d4
	mov r4, r0
	ldrsb r0, [r4, #0xc]
	bl FUN_ov16_020f07f4
	cmp r0, #0
	ldrsh r0, [r4, #8]
	mov r2, #0xd
	mov r1, #0x25
	streqh r0, [r9]
	ldreqsh r0, [r4, #0xa]
	streqh r0, [r9, #2]
	strneh r0, [r9, #2]
	ldrnesh r0, [r4, #0xa]
	strneh r0, [r9]
	mov r0, r6
	str r2, [r6, #8]
	bl FUN_ov1_020bf9f4
	add sp, sp, #0xc
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, pc}
_020D6900:
	ldr r0, [r8]
	bl FUN_ov132_021434f8
	cmp r0, #0
	bne _020D6940
	ldrb r0, [r7, #0x1a]
	cmp r0, #0
	mov r0, r6
	beq _020D6930
	mov r1, #0xe
	bl FUN_ov1_020bffd4
	add sp, sp, #0xc
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, pc}
_020D6930:
	mov r1, #0xf
	bl FUN_ov1_020bffd4
	add sp, sp, #0xc
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, pc}
_020D6940:
	ldr r0, [r8]
	bl FUN_ov126_021375d4
	mov r4, r0
	ldrsb r0, [r4, #0xc]
	bl FUN_ov16_020f07f4
	cmp r0, #0
	ldrsh r1, [r4, #8]
	bne _020D6984
	strh r1, [r9]
	ldrsh r1, [r4, #0xa]
	ldr r0, _020D6E28 ; =0x020EAAFC
	strh r1, [r9, #2]
	ldrb r1, [r4, #0x12]
	str r1, [r0]
	ldrb r1, [r4, #0x13]
	str r1, [r0, #4]
	b _020D69A4
_020D6984:
	strh r1, [r9, #2]
	ldrsh r1, [r4, #0xa]
	ldr r0, _020D6E28 ; =0x020EAAFC
	strh r1, [r9]
	ldrb r1, [r4, #0x12]
	str r1, [r0, #4]
	ldrb r1, [r4, #0x13]
	str r1, [r0]
_020D69A4:
	mov r2, #0xf
	mov r0, r6
	mov r1, #0x35
	str r2, [r6, #8]
	bl FUN_ov1_020bf9f4
	add sp, sp, #0xc
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, pc}
_020D69C0:
	mov r0, r6
	bl FUN_ov1_020d658c
	add sp, sp, #0xc
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, pc}
_020D69D0:
	ldr r0, _020D6E1C ; =0x020AF81C
	ldr r1, _020D6E2C ; =0x00010004
	mov r2, r5
	mov r3, r5
	str r5, [sp]
	bl FUN_02044798
	cmp r0, #0
	addeq sp, sp, #0xc
	ldmeqfd sp!, {r4, r5, r6, r7, r8, r9, pc}
	ldr r0, _020D6E30 ; =0x0209A2C0
	ldr r0, [r0, #0x48]
	bl FUN_ov16_020efa80
	ldrb r1, [r7, #0x1a]
	mov r4, r0
	cmp r1, #0
	bne _020D6A68
	cmp r4, #0
	beq _020D6A68
	bl FUN_0206d6d8
	cmp r0, #0
	beq _020D6A68
	ldr r0, [r8]
	mov r1, r4
	bl FUN_ov132_02145280
	mov r0, r4
	bl FUN_0206d5f0
	mov r1, r0
	mov r0, r6
	bl FUN_ov1_020d61a0
	cmp r0, #0
	beq _020D6A68
	mov r0, r4
	bl FUN_0206d5f0
	mov r0, r0, lsl #1
	ldrh r2, [r9, r0]
	ldr r0, [r8]
	mov r1, r4
	bl FUN_ov126_02130a98
_020D6A68:
	ldrb r0, [r7, #0x1a]
	cmp r0, #0
	ldrne r0, _020D6E34 ; =0x0209AEC0
	ldrneb r0, [r0, #0x64]
	cmpne r0, #0
	mov r0, r6
	beq _020D6A94
	mov r1, #0x46
	bl FUN_ov1_020bffd4
	add sp, sp, #0xc
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, pc}
_020D6A94:
	mov r1, #0x47
	bl FUN_ov1_020c05b0
	add sp, sp, #0xc
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, pc}
_020D6AA4:
	mov r0, r6
	mov r1, #1
	bl FUN_ov1_020d6244
	add sp, sp, #0xc
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, pc}
_020D6AB8:
	mov r0, r6
	bl FUN_ov1_020d804c
	add sp, sp, #0xc
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, pc}
_020D6AC8:
	mov r9, #0
	cmp r0, #0xf
	ldr r0, _020D6E1C ; =0x020AF81C
	ldr r1, _020D6E2C ; =0x00010004
	mov r2, r9
	mov r3, r9
	moveq r5, #1
	str r9, [sp]
	bl FUN_02044798
	cmp r0, #0
	addeq sp, sp, #0xc
	ldmeqfd sp!, {r4, r5, r6, r7, r8, r9, pc}
	add r4, sp, #4
	ldr r0, [r8]
	mov r1, r4
	mov r2, r5
	mov r3, r9
	bl FUN_ov132_02143d10
	cmp r0, #0
	beq _020D6B30
	ldr r0, [r8]
	mov r1, r4
	bl FUN_ov132_02143da8
	mov r0, r6
	mov r1, #1
	bl FUN_ov1_020d6244
_020D6B30:
	ldrb r0, [r7, #0x1a]
	cmp r0, #0
	ldrne r0, _020D6E34 ; =0x0209AEC0
	ldrneb r0, [r0, #0x64]
	cmpne r0, #0
	mov r0, r6
	beq _020D6B5C
	mov r1, #0x46
	bl FUN_ov1_020bffd4
	add sp, sp, #0xc
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, pc}
_020D6B5C:
	mov r1, #0x47
	bl FUN_ov1_020c05b0
	add sp, sp, #0xc
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, pc}
_020D6B6C:
	ldr r0, [r8]
	mov r1, r5
	bl FUN_ov132_02143114
	ldrsh r0, [r0, #0x1c]
	cmp r0, #0
	addlt sp, sp, #0xc
	ldmltfd sp!, {r4, r5, r6, r7, r8, r9, pc}
	ldr r0, _020D6E1C ; =0x020AF81C
	ldr r1, _020D6E38 ; =0x00010007
	mov r2, r5
	mov r3, r5
	str r5, [sp]
	bl FUN_02044798
	cmp r0, #0
	addeq sp, sp, #0xc
	ldmeqfd sp!, {r4, r5, r6, r7, r8, r9, pc}
	ldrb r0, [r7, #0x1a]
	cmp r0, #0
	ldrne r0, _020D6E34 ; =0x0209AEC0
	ldrneb r0, [r0, #0x64]
	cmpne r0, #0
	mov r0, r6
	beq _020D6BD8
	mov r1, #0x46
	bl FUN_ov1_020bffd4
	add sp, sp, #0xc
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, pc}
_020D6BD8:
	mov r1, #0x47
	bl FUN_ov1_020c05b0
	add sp, sp, #0xc
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, pc}
_020D6BE8:
	mov r0, r6
	bl FUN_ov1_020d6694
	add sp, sp, #0xc
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, pc}
_020D6BF8:
	mov r0, r6
	bl FUN_ov1_020d6450
	add sp, sp, #0xc
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, pc}
_020D6C08:
	mov r0, r6
	bl FUN_ov1_020d6324
	add sp, sp, #0xc
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, pc}
_020D6C18:
	ldr r0, [r8]
	bl FUN_ov132_021434f8
	cmp r0, #0
	addne sp, sp, #0xc
	ldmnefd sp!, {r4, r5, r6, r7, r8, r9, pc}
	ldr r0, [r8]
	bl FUN_ov126_0213777c
	ldrb r1, [r7, #0x1a]
	mov r7, r0
	cmp r1, #1
	bne _020D6C58
	mov r0, r6
	mov r1, #0x12
	bl FUN_ov1_020bffd4
	add sp, sp, #0xc
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, pc}
_020D6C58:
	ldr r8, [r6, #4]
	mov r0, r4
	mov r1, r5
	mov r2, r5
	mov r3, r5
	str r8, [sp]
	bl FUN_02044798
	cmp r0, #1
	bne _020D6CD4
	ldr r0, [r6, #4]
	bl FUN_02041fec
	mov r1, r0
	mov r0, r4
	sub r2, r5, #1
	bl FUN_02044e40
	ldrsb r0, [r7, #0x20]
	bl FUN_ov16_020f07f4
	mov r4, r0
	ldrsb r0, [r7, #0x24]
	bl FUN_ov16_020f07f4
	cmp r4, r0
	mov r0, r6
	bne _020D6CC4
	mov r1, #0x11
	bl FUN_ov1_020c05b0
	add sp, sp, #0xc
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, pc}
_020D6CC4:
	mov r1, #0x10
	bl FUN_ov1_020c05b0
	add sp, sp, #0xc
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, pc}
_020D6CD4:
	ldrsb r0, [r7, #0x20]
	bl FUN_ov16_020f07f4
	mov r4, r0
	ldrsb r0, [r7, #0x24]
	bl FUN_ov16_020f07f4
	cmp r4, r0
	mov r0, r6
	bne _020D6D04
	mov r1, #0x11
	bl FUN_ov1_020bffd4
	add sp, sp, #0xc
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, pc}
_020D6D04:
	mov r1, #0x10
	bl FUN_ov1_020bffd4
	add sp, sp, #0xc
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, pc}
_020D6D14:
	ldr r0, [r8]
	bl FUN_ov132_021434f8
	cmp r0, #0
	beq _020D6D34
	ldr r0, [r8]
	bl FUN_ov126_0213777c
	ldrsh r0, [r0, #0x22]
	strh r0, [r9, #4]
_020D6D34:
	ldrb r0, [r7, #0x1a]
	cmp r0, #1
	mov r0, r6
	bne _020D6D54
	mov r1, #0x14
	bl FUN_ov1_020bffd4
	add sp, sp, #0xc
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, pc}
_020D6D54:
	mov r1, #0x15
	bl FUN_ov1_020bffd4
	add sp, sp, #0xc
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, pc}
_020D6D64:
	ldrb r0, [r7, #0x1a]
	cmp r0, #0
	beq _020D6D84
	mov r0, r6
	mov r1, #0x18
	bl FUN_ov1_020bffd4
	add sp, sp, #0xc
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, pc}
_020D6D84:
	ldr r0, [r8]
	bl FUN_ov132_021434f8
	cmp r0, #0
	beq _020D6DB0
	mov r2, #0x1a
	mov r0, r6
	mov r1, #0x50
	str r2, [r6, #8]
	bl FUN_ov1_020bf9f4
	add sp, sp, #0xc
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, pc}
_020D6DB0:
	ldr r7, [r6, #4]
	mov r0, r4
	mov r1, r5
	mov r2, r5
	mov r3, r5
	str r7, [sp]
	bl FUN_02044798
	cmp r0, #0
	beq _020D6E00
	ldr r0, [r6, #4]
	bl FUN_02041fec
	mov r1, r0
	mov r0, r4
	sub r2, r5, #1
	bl FUN_02044e40
	mov r0, r6
	mov r1, #0x19
	bl FUN_ov1_020c05b0
	add sp, sp, #0xc
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, pc}
_020D6E00:
	mov r0, r6
	mov r1, #0x19
	bl FUN_ov1_020bffd4
_020D6E0C:
	add sp, sp, #0xc
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, pc}
_020D6E14: .word 0x02099F14
_020D6E18: .word 0x020EAAF4
_020D6E1C: .word 0x020AF81C
_020D6E20: .word 0x02099EF0
_020D6E24: .word 0x020A0640
_020D6E28: .word 0x020EAAFC
_020D6E2C: .word 0x00010004
_020D6E30: .word 0x0209A2C0
_020D6E34: .word 0x0209AEC0
_020D6E38: .word 0x00010007
	arm_func_end FUN_ov1_020d6784

	arm_func_start FUN_ov1_020d6e3c
FUN_ov1_020d6e3c: ; 0x020D6E3C
	stmfd sp!, {r3, r4, lr}
	sub sp, sp, #4
	ldr r0, _020D6E84 ; =0x0209A2C0
	ldr r0, [r0, #0x48]
	bl FUN_ov16_020f07f4
	bl FUN_ov16_020f083c
	mov r4, r0
	ldr r0, _020D6E88 ; =0x02099EF0
	add r2, sp, #0
	ldr r0, [r0]
	mov r1, r4
	bl FUN_ov126_02131048
	ldr r2, [sp]
	ldr r0, _020D6E8C ; =0x020EAAF4
	mov r1, r4, lsl #1
	strh r2, [r0, r1]
	add sp, sp, #4
	ldmfd sp!, {r3, r4, pc}
_020D6E84: .word 0x0209A2C0
_020D6E88: .word 0x02099EF0
_020D6E8C: .word 0x020EAAF4
	arm_func_end FUN_ov1_020d6e3c

	arm_func_start FUN_ov1_020d6e90
FUN_ov1_020d6e90: ; 0x020D6E90
	stmfd sp!, {r3, r4, lr}
	sub sp, sp, #4
	mov r4, r0
	ldr r12, [r4, #4]
	mov r2, #0
	ldr r0, _020D6EEC ; =0x020AF81C
	ldr r1, _020D6EF0 ; =0x00010001
	mov r3, r2
	str r12, [sp]
	bl FUN_02044798
	cmp r0, #0
	mov r0, r4
	beq _020D6ED0
	mov r1, #0x48
	bl FUN_ov1_020c05b0
	b _020D6ED8
_020D6ED0:
	mov r1, #4
	bl FUN_ov1_020bffd4
_020D6ED8:
	ldr r0, _020D6EF4 ; =0x02099F14
	ldr r0, [r0]
	bl FUN_ov1_020e39b8
	add sp, sp, #4
	ldmfd sp!, {r3, r4, pc}
_020D6EEC: .word 0x020AF81C
_020D6EF0: .word 0x00010001
_020D6EF4: .word 0x02099F14
	arm_func_end FUN_ov1_020d6e90

	arm_func_start FUN_ov1_020d6ef8
FUN_ov1_020d6ef8: ; 0x020D6EF8
	stmfd sp!, {r3, r4, r5, lr}
	ldr r1, _020D6F94 ; =0x020A0640
	mov r4, r0
	ldrb r0, [r1, #0x1a]
	cmp r0, #0
	ldrne r5, _020D6F98 ; =0x0209AEC0
	ldrneb r0, [r5, #0x64]
	cmpne r0, #0
	beq _020D6F8C
	ldr r0, _020D6F9C ; =0x02099EF0
	ldr r0, [r0]
	bl FUN_ov132_021434f8
	cmp r0, #0
	bne _020D6F8C
	mov r0, r5
	bl FUN_02046744
	mov r5, #0
	ldr r2, _020D6FA0 ; =0x020EAADC
	mov r3, #1
	b _020D6F64
_020D6F48:
	tst r0, r3, lsl r5
	beq _020D6F60
	ldrb r1, [r2, r5]
	cmp r1, #0
	moveq r0, r3
	ldmeqfd sp!, {r3, r4, r5, pc}
_020D6F60:
	add r5, r5, #1
_020D6F64:
	cmp r5, #4
	blt _020D6F48
	ldr r0, [r4, #0x18]
	sub r0, r0, #1
	str r0, [r4, #0x18]
	cmp r0, #0
	movgt r0, #1
	ldmgtfd sp!, {r3, r4, r5, pc}
	mov r0, #0
	str r0, [r4, #0x18]
_020D6F8C:
	mov r0, #0
	ldmfd sp!, {r3, r4, r5, pc}
_020D6F94: .word 0x020A0640
_020D6F98: .word 0x0209AEC0
_020D6F9C: .word 0x02099EF0
_020D6FA0: .word 0x020EAADC
	arm_func_end FUN_ov1_020d6ef8

	arm_func_start FUN_ov1_020d6fa4
FUN_ov1_020d6fa4: ; 0x020D6FA4
	stmfd sp!, {r3, r4, r5, r6, r7, r8, lr}
	sub sp, sp, #0xc
	ldr r1, _020D7150 ; =0x020EAAF4
	mov r6, r0
	ldrh r2, [r1]
	mov r7, #1
	mov r5, #0
	cmp r2, #0
	ldrneh r1, [r1, #2]
	cmpne r1, #0
	addeq sp, sp, #0xc
	ldmeqfd sp!, {r3, r4, r5, r6, r7, r8, pc}
	bl FUN_ov1_020d6ef8
	cmp r0, #0
	addne sp, sp, #0xc
	ldmnefd sp!, {r3, r4, r5, r6, r7, r8, pc}
	ldr r0, _020D7154 ; =0x0209A2C0
	str r5, [sp, #4]
	ldr r4, [r0, #0x48]
	str r5, [sp, #8]
	mov r0, r4
	bl FUN_ov16_020f07f4
	mov r5, r0
	cmp r4, #0
	blt _020D7028
	mov r0, r4
	bl FUN_ov16_020f0750
	cmp r0, #0
	ldrne r0, _020D7158 ; =0x020EAB04
	ldrne r0, [r0, r5, lsl #3]
	cmpne r0, #0x80000000
	addgt r0, sp, #4
	strgt r7, [r0, r5, lsl #2]
_020D7028:
	ldr r1, [sp, #8]
	ldr r0, _020D7150 ; =0x020EAAF4
	str r1, [sp]
	ldr r7, _020D715C ; =0x02099EF0
	ldrh r1, [r0]
	ldrh r3, [r0, #2]
	ldr r0, [r7]
	ldr r2, [sp, #4]
	bl FUN_ov126_021315d4
	str r0, [r6, #0x2ac]
	ldr r0, [r7]
	bl FUN_ov126_0213246c
	mov r7, r0
	ldrsb r0, [r7, #7]
	mov r8, #1
	cmp r4, r0
	bne _020D707C
	cmp r5, #0
	movne r8, #0
	mov r5, r8
	mov r8, #0
_020D707C:
	mov r0, r7
	mov r1, #2
	bl FUN_ov126_021327b8
	cmp r0, #0
	beq _020D70A8
	cmp r5, #0
	moveq r5, #1
	movne r5, #0
	cmp r8, #0
	moveq r8, #1
	movne r8, #0
_020D70A8:
	cmp r8, #0
	beq _020D70B8
	ldrsb r0, [r7, #4]
	b _020D70BC
_020D70B8:
	ldrsb r0, [r7, #7]
_020D70BC:
	bl FUN_ov16_020efa80
	mov r4, r0
	ldr r0, _020D7160 ; =0x020A0640
	ldrb r0, [r0, #0x1a]
	cmp r0, #0
	bne _020D7104
	mov r0, r6
	mov r1, r5
	bl FUN_ov1_020d61a0
	cmp r0, #0
	beq _020D7104
	ldr r1, _020D7150 ; =0x020EAAF4
	mov r2, r5, lsl #1
	ldr r0, _020D715C ; =0x02099EF0
	ldrh r2, [r1, r2]
	ldr r0, [r0]
	mov r1, r4
	bl FUN_ov126_02130a98
_020D7104:
	mov r0, r6
	mov r1, #0
	bl FUN_ov1_020d61a0
	cmp r0, #0
	beq _020D7140
	mov r0, r6
	mov r1, #1
	bl FUN_ov1_020d61a0
	cmp r0, #0
	beq _020D7140
	mov r0, r6
	mov r1, #0xf
	bl FUN_ov1_020bf9f4
	add sp, sp, #0xc
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, pc}
_020D7140:
	mov r0, r6
	bl FUN_ov1_020d6e90
	add sp, sp, #0xc
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, pc}
_020D7150: .word 0x020EAAF4
_020D7154: .word 0x0209A2C0
_020D7158: .word 0x020EAB04
_020D715C: .word 0x02099EF0
_020D7160: .word 0x020A0640
	arm_func_end FUN_ov1_020d6fa4

	arm_func_start FUN_ov1_020d7164
FUN_ov1_020d7164: ; 0x020D7164
	stmfd sp!, {r3, r4, lr}
	sub sp, sp, #4
	bl FUN_ov16_020f083c
	mov r4, r0
	ldr r0, _020D71A0 ; =0x02099EF0
	add r2, sp, #0
	ldr r0, [r0]
	mov r1, r4
	bl FUN_ov126_02136ee4
	ldr r2, [sp]
	ldr r0, _020D71A4 ; =0x020EAAF4
	mov r1, r4, lsl #1
	strh r2, [r0, r1]
	add sp, sp, #4
	ldmfd sp!, {r3, r4, pc}
_020D71A0: .word 0x02099EF0
_020D71A4: .word 0x020EAAF4
	arm_func_end FUN_ov1_020d7164

	arm_func_start FUN_ov1_020d71a8
FUN_ov1_020d71a8: ; 0x020D71A8
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	ldr r5, _020D7220 ; =0x02099EF0
	mov r4, r0
	ldr r0, [r5]
	bl FUN_ov126_0213777c
	mov r7, r0
	ldrsb r0, [r7, #0x20]
	bl FUN_ov16_020efa80
	bl FUN_0206d5f0
	mov r6, r0
	bl FUN_ov16_020f0a30
	cmp r0, #1
	ldmnefd sp!, {r3, r4, r5, r6, r7, pc}
	ldr r0, [r5]
	add r2, sp, #0
	mov r1, r6
	bl FUN_ov126_021379b4
	ldr r0, [sp]
	ldr r1, _020D7224 ; =0x020EAAF4
	strh r0, [r7, #0x22]
	ldr r2, [sp]
	ldr r0, _020D7228 ; =0x020A0640
	strh r2, [r1, #4]
	ldrb r0, [r0, #0x1a]
	cmp r0, #0
	ldmnefd sp!, {r3, r4, r5, r6, r7, pc}
	mov r0, r4
	mov r1, #0x3c
	bl FUN_ov1_020bf9f4
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_020D7220: .word 0x02099EF0
_020D7224: .word 0x020EAAF4
_020D7228: .word 0x020A0640
	arm_func_end FUN_ov1_020d71a8

	arm_func_start FUN_ov1_020d722c
FUN_ov1_020d722c: ; 0x020D722C
	stmfd sp!, {r3, r4, lr}
	sub sp, sp, #4
	bl FUN_ov16_020f083c
	mov r4, r0
	ldr r0, _020D7268 ; =0x02099EF0
	add r2, sp, #0
	ldr r0, [r0]
	mov r1, r4
	bl FUN_ov126_0213847c
	ldr r2, [sp]
	ldr r0, _020D726C ; =0x020EAAF4
	mov r1, r4, lsl #1
	strh r2, [r0, r1]
	add sp, sp, #4
	ldmfd sp!, {r3, r4, pc}
_020D7268: .word 0x02099EF0
_020D726C: .word 0x020EAAF4
	arm_func_end FUN_ov1_020d722c

	arm_func_start FUN_ov1_020d7270
FUN_ov1_020d7270: ; 0x020D7270
	stmfd sp!, {r4, lr}
	ldr r1, _020D72E8 ; =0x020EAAE4
	mov r4, r0
	ldr r0, [r1]
	cmp r0, #0
	blt _020D72A0
	ldr r0, _020D72EC ; =0x020EAAF4
	ldrh r1, [r0]
	cmp r1, #0
	ldrneh r0, [r0, #2]
	cmpne r0, #0
	ldmeqfd sp!, {r4, pc}
_020D72A0:
	ldr r0, _020D72F0 ; =0x020EAAC8
	ldr r0, [r0]
	cmp r0, #0
	mov r0, r4
	bge _020D72D0
	mov r1, #4
	bl FUN_ov1_020bffd4
	ldr r0, _020D72F4 ; =0x02099EF0
	mov r1, #0
	ldr r0, [r0]
	bl FUN_ov132_021447d0
	ldmfd sp!, {r4, pc}
_020D72D0:
	bl FUN_ov1_020d6ef8
	cmp r0, #0
	ldmnefd sp!, {r4, pc}
	mov r0, r4
	bl FUN_ov1_020d72f8
	ldmfd sp!, {r4, pc}
_020D72E8: .word 0x020EAAE4
_020D72EC: .word 0x020EAAF4
_020D72F0: .word 0x020EAAC8
_020D72F4: .word 0x02099EF0
	arm_func_end FUN_ov1_020d7270

	arm_func_start FUN_ov1_020d72f8
FUN_ov1_020d72f8: ; 0x020D72F8
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	ldr r7, _020D74B8 ; =0x02099EF0
	mov r6, r0
	ldr r0, [r7]
	bl FUN_ov126_021375d4
	mov r4, r0
	ldrsb r0, [r4, #0xc]
	bl FUN_ov16_020efa80
	mov r5, r0
	bl FUN_0206d5f0
	add r0, r6, r0
	ldrb r3, [r0, #0x2b4]
	ldr r0, [r7]
	ldr r2, _020D74BC ; =0x020EAAF4
	ldrh r1, [r2]
	ldrh r2, [r2, #2]
	bl FUN_ov126_021371c0
	ldr r0, _020D74C0 ; =0x020A0640
	ldrb r0, [r0, #0x1a]
	cmp r0, #0
	bne _020D7378
	mov r0, r5
	bl FUN_0206d5f0
	mov r1, r0
	mov r0, r6
	bl FUN_ov1_020d61a0
	cmp r0, #0
	beq _020D7378
	ldrh r2, [r4, #8]
	ldr r0, [r7]
	mov r1, r5
	bl FUN_ov126_02130a98
_020D7378:
	ldrb r0, [r4, #0xf]
	tst r0, #0x20
	movne r0, #1
	moveq r0, #0
	cmp r0, #0
	beq _020D7438
	mov r0, r5
	bl FUN_0206d5f0
	ldr r7, _020D74BC ; =0x020EAAF4
	mov r0, r0, lsl #1
	ldrh r0, [r7, r0]
	cmp r0, #0x14
	beq _020D73C4
	mov r0, r5
	bl FUN_0206d5f0
	mov r0, r0, lsl #1
	ldrh r0, [r7, r0]
	cmp r0, #0x16
	bne _020D7438
_020D73C4:
	mov r0, r6
	mov r1, #0x38
	bl FUN_ov1_020bea78
	ldrb r1, [r4, #0xf]
	mov r0, r5
	and r1, r1, #0xdf
	and r1, r1, #0xff
	orr r1, r1, #0x10
	strb r1, [r4, #0xf]
	bl FUN_0206d5f0
	ldr r2, _020D74B8 ; =0x02099EF0
	mov r1, r0
	ldr r0, [r2]
	mov r2, #0
	bl FUN_ov132_02147e84
	ldr r0, _020D74C4 ; =0x02099F14
	ldr r0, [r0]
	bl FUN_ov1_020e3d50
	ldr r0, _020D74C0 ; =0x020A0640
	mov r1, #4
	ldrb r0, [r0, #0x1a]
	cmp r0, #0
	ldrne r0, _020D74C8 ; =0x0209AEC0
	ldrneb r0, [r0, #0x64]
	cmpne r0, #0
	mov r0, r6
	beq _020D7434
	b _020D7494
_020D7434:
	b _020D7494
_020D7438:
	mov r2, #0
	ldr r0, _020D74CC ; =0x020AF81C
	ldr r1, _020D74D0 ; =0x00010003
	mov r3, r2
	str r2, [sp]
	bl FUN_02044798
	cmp r0, #0
	beq _020D748C
	ldr r0, _020D74C0 ; =0x020A0640
	ldrb r0, [r0, #0x1a]
	cmp r0, #0
	ldrne r0, _020D74C8 ; =0x0209AEC0
	ldrneb r0, [r0, #0x64]
	cmpne r0, #0
	mov r0, r6
	beq _020D7480
	mov r1, #0x46
	b _020D7494
_020D7480:
	mov r1, #0x47
	bl FUN_ov1_020c05b0
	b _020D7498
_020D748C:
	mov r0, r6
	mov r1, #4
_020D7494:
	bl FUN_ov1_020bffd4
_020D7498:
	ldr r0, _020D74B8 ; =0x02099EF0
	mov r1, #0
	ldr r0, [r0]
	bl FUN_ov132_021447d0
	ldr r0, _020D74C4 ; =0x02099F14
	ldr r0, [r0]
	bl FUN_ov1_020e39b8
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_020D74B8: .word 0x02099EF0
_020D74BC: .word 0x020EAAF4
_020D74C0: .word 0x020A0640
_020D74C4: .word 0x02099F14
_020D74C8: .word 0x0209AEC0
_020D74CC: .word 0x020AF81C
_020D74D0: .word 0x00010003
	arm_func_end FUN_ov1_020d72f8

	arm_func_start FUN_ov1_020d74d4
FUN_ov1_020d74d4: ; 0x020D74D4
	stmfd sp!, {r4, r5, r6, lr}
	ldr r1, _020D7590 ; =0x02099EF0
	mov r5, r0
	ldr r0, [r1]
	bl FUN_ov126_0213777c
	mov r4, r0
	ldrb r0, [r4, #0x29]
	mov r0, r0, lsl #0x1c
	mov r0, r0, lsr #0x1c
	tst r0, #2
	movne r0, #1
	moveq r0, #0
	cmp r0, #0
	bne _020D751C
	ldr r0, _020D7594 ; =0x020EAAF4
	ldrh r0, [r0, #4]
	cmp r0, #0
	ldmeqfd sp!, {r4, r5, r6, pc}
_020D751C:
	mov r0, r5
	bl FUN_ov1_020d6ef8
	cmp r0, #1
	ldmeqfd sp!, {r4, r5, r6, pc}
	ldrb r1, [r4, #0x29]
	ldr r6, _020D7598 ; =0x02099F14
	mov r0, r1, lsl #0x1c
	mov r0, r0, lsr #0x1c
	orr r0, r0, #1
	and r0, r0, #0xff
	bic r1, r1, #0xf
	and r0, r0, #0xf
	orr r0, r1, r0
	strb r0, [r4, #0x29]
	ldr r0, [r6]
	bl FUN_ov1_020e39b8
	ldr r0, [r6]
	bl FUN_ov1_020e4968
	ldr r0, _020D7590 ; =0x02099EF0
	mov r1, #0
	ldr r0, [r0]
	bl FUN_ov132_021447d0
	mov r0, r5
	mov r1, #4
	bl FUN_ov1_020bffd4
	mov r0, r5
	mov r1, #0x38
	bl FUN_ov1_020bea78
	ldmfd sp!, {r4, r5, r6, pc}
_020D7590: .word 0x02099EF0
_020D7594: .word 0x020EAAF4
_020D7598: .word 0x02099F14
	arm_func_end FUN_ov1_020d74d4

	arm_func_start FUN_ov1_020d759c
FUN_ov1_020d759c: ; 0x020D759C
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, lr}
	ldr r4, _020D7748 ; =0x02099EF0
	mov r9, r0
	ldr r0, [r4]
	mov r5, #0
	bl FUN_ov126_021375d4
	mov r8, r0
	ldr r0, [r4]
	bl FUN_ov126_0213777c
	mov r6, r0
	ldrsb r0, [r8, #0xc]
	bl FUN_ov16_020efa80
	ldrsb r0, [r6, #0x20]
	bl FUN_ov16_020efa80
	ldr r0, [r4]
	ldrsb r8, [r6, #0x20]
	bl FUN_ov132_021434f8
	cmp r0, #1
	bne _020D75F4
	ldrsb r1, [r6, #0x20]
	ldrsh r2, [r6, #0x22]
	b _020D7600
_020D75F4:
	ldr r0, _020D774C ; =0x020EAAF4
	ldrsb r1, [r6, #0x20]
	ldrsh r2, [r0, #4]
_020D7600:
	ldr r0, [r4]
	bl FUN_ov126_02137ab4
	cmp r0, #5
	addls pc, pc, r0, lsl #2
	b _020D764C
_020D7614: ; jump table
	b _020D762C ; case 0
	b _020D7634 ; case 1
	b _020D7638 ; case 2
	b _020D763C ; case 3
	b _020D7644 ; case 4
	b _020D7648 ; case 5
_020D762C:
	mov r7, #0
	b _020D764C
_020D7634:
	b _020D762C
_020D7638:
	b _020D7648
_020D763C:
	ldr r7, _020D7750 ; =0x00010001
	b _020D764C
_020D7644:
	b _020D763C
_020D7648:
	ldr r7, _020D7754 ; =0x00010003
_020D764C:
	cmp r7, #0
	beq _020D76F8
	ldr r0, [r4]
	bl FUN_ov132_021434f8
	cmp r0, #0
	bne _020D7680
	mov r0, r8
	bl FUN_ov16_020f076c
	cmp r0, #0
	beq _020D7680
	mov r0, r9
	mov r1, #0x3b
	bl FUN_ov1_020bea78
_020D7680:
	ldr r0, _020D7758 ; =0x020AF81C
	mov r1, r7
	mov r2, r5
	mov r3, r5
	str r5, [sp]
	bl FUN_02044798
	cmp r0, #0
	beq _020D76D8
	ldr r0, _020D775C ; =0x020A0640
	ldrb r0, [r0, #0x1a]
	cmp r0, #0
	ldrne r0, _020D7760 ; =0x0209AEC0
	ldrneb r0, [r0, #0x64]
	cmpne r0, #0
	mov r0, r9
	beq _020D76CC
	mov r1, #0x46
_020D76C4:
	bl FUN_ov1_020bffd4
	b _020D7724
_020D76CC:
	mov r1, #0x47
	bl FUN_ov1_020c05b0
	b _020D7724
_020D76D8:
	ldr r0, _020D774C ; =0x020EAAF4
	mov r1, r5
	strh r5, [r0, #4]
	ldr r0, [r4]
	bl FUN_ov132_02147c64
	mov r0, r9
	mov r1, #4
	b _020D76C4
_020D76F8:
	ldr r0, _020D774C ; =0x020EAAF4
	mov r1, #0
	strh r1, [r0, #4]
	ldr r0, [r4]
	bl FUN_ov132_02147c64
	mov r0, r9
	mov r1, #4
	bl FUN_ov1_020bffd4
	mov r0, r9
	mov r1, #0x38
	bl FUN_ov1_020bea78
_020D7724:
	ldr r0, [r4]
	mov r1, #0
	bl FUN_ov132_021447d0
	ldr r4, _020D7764 ; =0x02099F14
	ldr r0, [r4]
	bl FUN_ov1_020e39b8
	ldr r0, [r4]
	bl FUN_ov1_020e4968
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
_020D7748: .word 0x02099EF0
_020D774C: .word 0x020EAAF4
_020D7750: .word 0x00010001
_020D7754: .word 0x00010003
_020D7758: .word 0x020AF81C
_020D775C: .word 0x020A0640
_020D7760: .word 0x0209AEC0
_020D7764: .word 0x02099F14
	arm_func_end FUN_ov1_020d759c

	arm_func_start FUN_ov1_020d7768
FUN_ov1_020d7768: ; 0x020D7768
	stmfd sp!, {r3, r4, r5, lr}
	ldr r4, _020D77CC ; =0x02099EF0
	mov r5, r0
	ldr r0, [r4]
	bl FUN_ov126_021375d4
	ldrsb r0, [r0, #0xd]
	bl FUN_ov16_020efa80
	bl FUN_0206d5f0
	ldr r1, _020D77D0 ; =0x020EAAF4
	mov r0, r0, lsl #1
	ldrh r0, [r1, r0]
	cmp r0, #0
	ldmeqfd sp!, {r3, r4, r5, pc}
	mov r0, r5
	bl FUN_ov1_020d6ef8
	cmp r0, #0
	ldmnefd sp!, {r3, r4, r5, pc}
	mov r0, r5
	bl FUN_ov1_020d77d4
	ldr r0, [r4]
	bl FUN_ov132_02147e9c
	mov r0, r5
	mov r1, #0x38
	bl FUN_ov1_020bea78
	ldmfd sp!, {r3, r4, r5, pc}
_020D77CC: .word 0x02099EF0
_020D77D0: .word 0x020EAAF4
	arm_func_end FUN_ov1_020d7768

	arm_func_start FUN_ov1_020d77d4
FUN_ov1_020d77d4: ; 0x020D77D4
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	ldr r6, _020D7870 ; =0x02099EF0
	mov r5, r0
	ldr r0, [r6]
	bl FUN_ov126_021375d4
	ldrsb r0, [r0, #0xd]
	bl FUN_ov16_020efa80
	mov r4, r0
	bl FUN_0206d5f0
	ldr r7, _020D7874 ; =0x020EAAF4
	mov r0, r0, lsl #1
	ldrh r1, [r7, r0]
	ldr r0, [r6]
	bl FUN_ov126_021385cc
	ldr r0, _020D7878 ; =0x020A0640
	ldrb r0, [r0, #0x1a]
	cmp r0, #0
	bne _020D7854
	mov r0, r4
	bl FUN_0206d5f0
	mov r1, r0
	mov r0, r5
	bl FUN_ov1_020d61a0
	cmp r0, #0
	beq _020D7854
	mov r0, r4
	bl FUN_0206d5f0
	mov r0, r0, lsl #1
	ldrh r2, [r7, r0]
	ldr r0, [r6]
	mov r1, r4
	bl FUN_ov126_02130a98
_020D7854:
	mov r0, r5
	mov r1, #4
	bl FUN_ov1_020bffd4
	ldr r0, _020D787C ; =0x02099F14
	ldr r0, [r0]
	bl FUN_ov1_020e39b8
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_020D7870: .word 0x02099EF0
_020D7874: .word 0x020EAAF4
_020D7878: .word 0x020A0640
_020D787C: .word 0x02099F14
	arm_func_end FUN_ov1_020d77d4

	arm_func_start FUN_ov1_020d7880
FUN_ov1_020d7880: ; 0x020D7880
	stmfd sp!, {r3, r4, r5, r6, lr}
	sub sp, sp, #0xc
	mov r5, r0
	bl FUN_ov16_020f083c
	mov r4, r0
	ldr r6, _020D791C ; =0x02099EF0
	add r2, sp, #8
	ldr r0, [r6]
	mov r1, r4
	bl FUN_ov132_021594f0
	ldr r0, _020D7920 ; =0x020A0640
	ldrb r0, [r0, #0x1a]
	cmp r0, #0
	beq _020D7904
	ldr r0, [r6]
	bl FUN_ov132_02159afc
	cmp r0, #0
	beq _020D7904
	ldr r0, _020D7924 ; =0x020EAAD0
	ldr r0, [r0]
	cmp r0, r4
	bne _020D7904
	ldr r3, _020D7928 ; =0x020EAB04
	mov r1, #0
	add r0, r3, r4, lsl #3
	ldr r2, [r0, #4]
	mov r0, r5
	str r2, [sp]
	str r1, [sp, #4]
	ldr r3, [r3, r4, lsl #3]
	mov r2, r4
	mov r1, #5
	bl FUN_ov1_020c38e0
_020D7904:
	ldr r2, [sp, #8]
	ldr r0, _020D792C ; =0x020EAAF4
	mov r1, r4, lsl #1
	strh r2, [r0, r1]
	add sp, sp, #0xc
	ldmfd sp!, {r3, r4, r5, r6, pc}
_020D791C: .word 0x02099EF0
_020D7920: .word 0x020A0640
_020D7924: .word 0x020EAAD0
_020D7928: .word 0x020EAB04
_020D792C: .word 0x020EAAF4
	arm_func_end FUN_ov1_020d7880

	arm_func_start FUN_ov1_020d7930
FUN_ov1_020d7930: ; 0x020D7930
	stmfd sp!, {r4, r5, r6, lr}
	ldr r6, _020D7B00 ; =0x02099EF0
	mov r5, r0
	ldr r0, [r6]
	bl FUN_ov132_02159df0
	mov r4, r0
	ldr r0, [r6]
	bl FUN_ov132_021434f8
	cmp r0, #0
	bne _020D7A08
	ldrb r0, [r4, #4]
	tst r0, #1
	movne r0, #1
	moveq r0, #0
	cmp r0, #0
	bne _020D7980
	ldr r0, _020D7B04 ; =0x020EAAF4
	ldrh r0, [r0]
	cmp r0, #0
	ldmeqfd sp!, {r4, r5, r6, pc}
_020D7980:
	ldrb r0, [r4, #4]
	tst r0, #2
	movne r0, #1
	moveq r0, #0
	cmp r0, #0
	bne _020D79A8
	ldr r0, _020D7B04 ; =0x020EAAF4
	ldrh r0, [r0, #2]
	cmp r0, #0
	ldmeqfd sp!, {r4, r5, r6, pc}
_020D79A8:
	ldr r0, _020D7B00 ; =0x02099EF0
	ldr r0, [r0]
	bl FUN_ov132_02159afc
	cmp r0, #0
	beq _020D79EC
	ldrsb r1, [r4, #2]
	ldrb r0, [r4, #4]
	mov r2, #1
	tst r0, r2, lsl r1
	moveq r2, #0
	cmp r2, #0
	bne _020D79EC
	ldrsb r1, [r4, #2]
	ldr r0, _020D7B08 ; =0x020EAB04
	ldr r0, [r0, r1, lsl #3]
	cmp r0, #0x80000000
	ldmeqfd sp!, {r4, r5, r6, pc}
_020D79EC:
	bl FUN_ov16_020f1660
	cmp r0, #0
	ldmnefd sp!, {r4, r5, r6, pc}
	mov r0, r5
	bl FUN_ov1_020d6ef8
	cmp r0, #0
	ldmnefd sp!, {r4, r5, r6, pc}
_020D7A08:
	ldrb r0, [r4, #4]
	tst r0, #1
	movne r0, #1
	moveq r0, #0
	cmp r0, #0
	beq _020D7A74
	ldrb r0, [r4, #4]
	tst r0, #2
	movne r0, #1
	moveq r0, #0
	cmp r0, #0
	beq _020D7A74
	ldr r0, _020D7B0C ; =0x020A0640
	ldrb r0, [r0, #0x1a]
	cmp r0, #0
	bne _020D7A58
	mov r0, r5
	mov r1, #4
	bl FUN_ov1_020bffd4
	ldmfd sp!, {r4, r5, r6, pc}
_020D7A58:
	ldr r3, [r5, #8]
	ldr r2, _020D7B10 ; =0x020EAAB8
	mov r0, r5
	mov r1, #3
	str r3, [r2]
	bl FUN_ov1_020bffd4
	ldmfd sp!, {r4, r5, r6, pc}
_020D7A74:
	ldr r6, _020D7B00 ; =0x02099EF0
	ldr r0, [r6]
	bl FUN_ov132_021434f8
	cmp r0, #0
	bne _020D7AA0
	ldr r2, _020D7B04 ; =0x020EAAF4
	ldr r0, [r6]
	ldrh r1, [r2]
	ldrh r2, [r2, #2]
	bl FUN_ov132_021597cc
	str r0, [r5, #0x2ac]
_020D7AA0:
	ldrb r0, [r4, #4]
	tst r0, #1
	movne r0, #1
	moveq r0, #0
	cmp r0, #0
	bne _020D7AF4
	ldrb r0, [r4, #4]
	tst r0, #2
	movne r0, #1
	moveq r0, #0
	cmp r0, #0
	bne _020D7AF4
	ldr r0, _020D7B00 ; =0x02099EF0
	ldr r0, [r0]
	bl FUN_ov132_021434f8
	cmp r0, #0
	bne _020D7AF4
	mov r0, r5
	mov r1, #0x54
	bl FUN_ov1_020bf9f4
	ldmfd sp!, {r4, r5, r6, pc}
_020D7AF4:
	mov r0, r5
	bl FUN_ov1_020d7b14
	ldmfd sp!, {r4, r5, r6, pc}
_020D7B00: .word 0x02099EF0
_020D7B04: .word 0x020EAAF4
_020D7B08: .word 0x020EAB04
_020D7B0C: .word 0x020A0640
_020D7B10: .word 0x020EAAB8
	arm_func_end FUN_ov1_020d7930

	arm_func_start FUN_ov1_020d7b14
FUN_ov1_020d7b14: ; 0x020D7B14
	stmfd sp!, {r3, r4, r5, r6, lr}
	sub sp, sp, #4
	ldr r5, _020D7C1C ; =0x02099EF0
	mov r4, r0
	ldr r0, [r5]
	bl FUN_ov132_02159df0
	bl FUN_ov132_0215a440
	mov r1, r0
	ldr r0, _020D7C20 ; =0x0209BA20
	bl FUN_0204b0ac
	mov r6, r0
	ldr r0, [r5]
	bl FUN_ov132_021434f8
	cmp r0, #0
	beq _020D7B94
	ldrb r0, [r6, #2]
	cmp r0, #1
	bne _020D7B94
	ldr r0, _020D7C24 ; =0x020A0640
	ldrb r0, [r0, #0x1a]
	cmp r0, #0
	bne _020D7B7C
	mov r0, r4
	mov r1, #4
_020D7B74:
	bl FUN_ov1_020bffd4
	b _020D7C04
_020D7B7C:
	ldr r3, [r4, #8]
	ldr r2, _020D7C28 ; =0x020EAAB8
	mov r0, r4
	mov r1, #3
	str r3, [r2]
	b _020D7B74
_020D7B94:
	mov r2, #0
	ldr r0, _020D7C2C ; =0x020AF81C
	ldr r1, _020D7C30 ; =0x0001000B
	mov r3, r2
	str r2, [sp]
	bl FUN_02044798
	cmp r0, #0
	beq _020D7C04
	ldr r5, _020D7C1C ; =0x02099EF0
	ldr r0, [r5]
	bl FUN_ov132_021434f8
	cmp r0, #0
	ldreqb r0, [r6, #2]
	cmpeq r0, #1
	bne _020D7BF8
	mov r6, #1
	ldr r0, [r5]
	mov r1, r6
	bl FUN_ov132_02147df8
	ldr r0, [r5]
	mov r1, r6
	bl FUN_ov132_02148ad8
	ldr r0, [r5]
	mov r1, #2
	bl FUN_ov132_02148ba4
_020D7BF8:
	mov r0, r4
	mov r1, #0x47
	bl FUN_ov1_020c05b0
_020D7C04:
	ldr r0, _020D7C1C ; =0x02099EF0
	mov r1, #0
	ldr r0, [r0]
	bl FUN_ov132_021447d0
	add sp, sp, #4
	ldmfd sp!, {r3, r4, r5, r6, pc}
_020D7C1C: .word 0x02099EF0
_020D7C20: .word 0x0209BA20
_020D7C24: .word 0x020A0640
_020D7C28: .word 0x020EAAB8
_020D7C2C: .word 0x020AF81C
_020D7C30: .word 0x0001000B
	arm_func_end FUN_ov1_020d7b14

	arm_func_start FUN_ov1_020d7c34
FUN_ov1_020d7c34: ; 0x020D7C34
	stmfd sp!, {r3, r4, r5, lr}
	ldr r5, _020D7C6C ; =0x0209F5C0
	mov r4, #0
	mov r0, r5
	mov r1, r4
	mov r3, r4
	mov r2, #5
	bl FUN_ov16_020f5f64
	mov r0, r5
	mov r1, r4
	mov r3, r4
	mov r2, #1
	bl FUN_ov16_020f5f64
	ldmfd sp!, {r3, r4, r5, pc}
_020D7C6C: .word 0x0209F5C0
	arm_func_end FUN_ov1_020d7c34

	arm_func_start FUN_ov1_020d7c70
FUN_ov1_020d7c70: ; 0x020D7C70
	stmfd sp!, {r3, r4, r5, lr}
	ldr r2, _020D7CDC ; =0x020A0640
	mov r4, r0
	ldrb r0, [r2, #0x1a]
	mov r5, r1
	cmp r0, #0
	beq _020D7CB0
	mov r0, r5
	bl FUN_ov16_020f0a30
	add r1, r0, #2
	and r3, r1, #0xff
	mov r0, r4
	mov r2, r5
	mov r1, #0xe
	bl FUN_ov1_020c383c
	ldmfd sp!, {r3, r4, r5, pc}
_020D7CB0:
	ldr r4, _020D7CE0 ; =0x02099EF0
	ldr r0, [r4]
	bl FUN_ov132_02159d70
	strb r5, [r0, #2]
	ldr r0, [r4]
	mov r1, #0x14
	bl FUN_ov132_021447f4
	ldr r0, [r4]
	mov r1, #6
	bl FUN_ov132_021447d0
	ldmfd sp!, {r3, r4, r5, pc}
_020D7CDC: .word 0x020A0640
_020D7CE0: .word 0x02099EF0
	arm_func_end FUN_ov1_020d7c70

	arm_func_start FUN_ov1_020d7ce4
FUN_ov1_020d7ce4: ; 0x020D7CE4
	stmfd sp!, {r3, r4, r5, lr}
	mov r5, r0
	bl FUN_ov16_020f083c
	ldr r1, _020D7D88 ; =0x02099EF0
	mov r4, r0
	ldr r0, [r1]
	bl FUN_ov132_021434f8
	cmp r0, #0
	movne r0, #0
	ldmnefd sp!, {r3, r4, r5, pc}
	ldr r0, _020D7D8C ; =0x020A0640
	ldrb r0, [r0, #0x1a]
	cmp r0, #0
	beq _020D7D3C
	mov r0, r4
	bl FUN_ov16_020f0a30
	cmp r0, #0
	ldrne r0, _020D7D90 ; =0x0209AEC0
	ldrneb r0, [r0, #0x64]
	cmpne r0, #0
	moveq r0, #0
	ldmeqfd sp!, {r3, r4, r5, pc}
_020D7D3C:
	ldr r0, _020D7D94 ; =0x020EAA9C
	ldrb r0, [r0]
	cmp r0, #0
	ldrneb r0, [r5, #0x23]
	cmpne r0, #0
	moveq r0, #0
	ldmeqfd sp!, {r3, r4, r5, pc}
	ldr r0, _020D7D88 ; =0x02099EF0
	mov r1, r4
	ldr r0, [r0]
	bl FUN_ov132_02159b28
	cmp r0, #0
	moveq r0, #0
	ldmeqfd sp!, {r3, r4, r5, pc}
	mov r0, r5
	mov r1, r4
	bl FUN_ov1_020d7c70
	mov r0, #1
	ldmfd sp!, {r3, r4, r5, pc}
_020D7D88: .word 0x02099EF0
_020D7D8C: .word 0x020A0640
_020D7D90: .word 0x0209AEC0
_020D7D94: .word 0x020EAA9C
	arm_func_end FUN_ov1_020d7ce4

	arm_func_start FUN_ov1_020d7d98
FUN_ov1_020d7d98: ; 0x020D7D98
	stmfd sp!, {r3, r4, r5, lr}
	sub sp, sp, #8
	mov r5, r0
	bl FUN_ov16_020f083c
	ldr r1, _020D7E6C ; =0x02099EF0
	mov r4, r0
	ldr r0, [r1]
	bl FUN_ov132_021434f8
	cmp r0, #0
	addne sp, sp, #8
	movne r0, #0
	ldmnefd sp!, {r3, r4, r5, pc}
	ldr r0, _020D7E70 ; =0x020A0640
	ldrb r0, [r0, #0x1a]
	cmp r0, #0
	beq _020D7DFC
	mov r0, r4
	bl FUN_ov16_020f0a30
	cmp r0, #0
	ldrne r0, _020D7E74 ; =0x0209AEC0
	ldrneb r0, [r0, #0x64]
	cmpne r0, #0
	addeq sp, sp, #8
	moveq r0, #0
	ldmeqfd sp!, {r3, r4, r5, pc}
_020D7DFC:
	ldr r0, _020D7E78 ; =0x020EAA9C
	ldrb r0, [r0]
	cmp r0, #0
	ldrneb r0, [r5, #0x23]
	cmpne r0, #0
	addeq sp, sp, #8
	moveq r0, #0
	ldmeqfd sp!, {r3, r4, r5, pc}
	ldr r0, _020D7E6C ; =0x02099EF0
	add r2, sp, #0
	ldr r0, [r0]
	mov r1, r4
	bl FUN_ov132_02159c5c
	cmp r0, #0
	addeq sp, sp, #8
	moveq r0, #0
	ldmeqfd sp!, {r3, r4, r5, pc}
	ldr r2, _020D7E7C ; =0x020EAB04
	ldr r12, [sp]
	ldr r3, [sp, #4]
	mov r0, r5
	str r12, [r2, r4, lsl #3]!
	mov r1, r4
	str r3, [r2, #4]
	bl FUN_ov1_020d7c70
	mov r0, #1
	add sp, sp, #8
	ldmfd sp!, {r3, r4, r5, pc}
_020D7E6C: .word 0x02099EF0
_020D7E70: .word 0x020A0640
_020D7E74: .word 0x0209AEC0
_020D7E78: .word 0x020EAA9C
_020D7E7C: .word 0x020EAB04
	arm_func_end FUN_ov1_020d7d98

	arm_func_start FUN_ov1_020d7e80
FUN_ov1_020d7e80: ; 0x020D7E80
	stmfd sp!, {r4, lr}
	sub sp, sp, #8
	ldr r0, _020D7F14 ; =0x020A0640
	ldrb r0, [r0, #0x1a]
	cmp r0, #0
	beq _020D7ED0
	mov r0, #0
	bl FUN_ov16_020f0a30
	cmp r0, #0
	bne _020D7EBC
	mov r0, #1
	bl FUN_ov16_020f0a30
	cmp r0, #0
	addeq sp, sp, #8
	ldmeqfd sp!, {r4, pc}
_020D7EBC:
	ldr r0, _020D7F18 ; =0x0209AEC0
	ldrb r0, [r0, #0x64]
	cmp r0, #0
	addeq sp, sp, #8
	ldmeqfd sp!, {r4, pc}
_020D7ED0:
	bl FUN_ov16_020f083c
	mov r4, r0
	ldr r0, _020D7F1C ; =0x02099EF0
	add r2, sp, #4
	ldr r0, [r0]
	add r3, sp, #0
	mov r1, r4
	bl FUN_ov126_02136598
	ldr r12, [sp, #4]
	ldr r1, [sp]
	ldr r0, _020D7F20 ; =0x020EAAFC
	ldr r2, _020D7F24 ; =0x020EAAF4
	mov r3, r4, lsl #1
	strh r12, [r2, r3]
	str r1, [r0, r4, lsl #2]
	add sp, sp, #8
	ldmfd sp!, {r4, pc}
_020D7F14: .word 0x020A0640
_020D7F18: .word 0x0209AEC0
_020D7F1C: .word 0x02099EF0
_020D7F20: .word 0x020EAAFC
_020D7F24: .word 0x020EAAF4
	arm_func_end FUN_ov1_020d7e80

	arm_func_start FUN_ov1_020d7f28
FUN_ov1_020d7f28: ; 0x020D7F28
	stmfd sp!, {r4, lr}
	ldr r1, _020D7F74 ; =0x020EAAF4
	mov r4, r0
	ldrh r2, [r1]
	cmp r2, #0
	ldrneh r1, [r1, #2]
	cmpne r1, #0
	ldrne r1, _020D7F78 ; =0x020EAAFC
	ldrne r2, [r1]
	cmpne r2, #0
	ldrne r1, [r1, #4]
	cmpne r1, #0
	ldmeqfd sp!, {r4, pc}
	bl FUN_ov1_020d6ef8
	cmp r0, #0
	ldmnefd sp!, {r4, pc}
	mov r0, r4
	bl FUN_ov1_020d7f7c
	ldmfd sp!, {r4, pc}
_020D7F74: .word 0x020EAAF4
_020D7F78: .word 0x020EAAFC
	arm_func_end FUN_ov1_020d7f28

	arm_func_start FUN_ov1_020d7f7c
FUN_ov1_020d7f7c: ; 0x020D7F7C
	stmfd sp!, {r3, r4, lr}
	sub sp, sp, #4
	ldr r12, _020D802C ; =0x020EAAFC
	ldr r2, _020D8030 ; =0x020EAAF4
	ldr r1, [r12, #4]
	ldr r3, _020D8034 ; =0x02099EF0
	str r1, [sp]
	ldrh r1, [r2]
	mov r4, r0
	ldr r0, [r3]
	ldrh r2, [r2, #2]
	ldr r3, [r12]
	bl FUN_ov126_02136754
	mov r2, #0
	ldr r0, _020D8038 ; =0x020AF81C
	ldr r1, _020D803C ; =0x00010009
	mov r3, r2
	str r2, [sp]
	bl FUN_02044798
	cmp r0, #0
	addeq sp, sp, #4
	ldmeqfd sp!, {r3, r4, pc}
	ldr r0, _020D8040 ; =0x020A0640
	ldrb r0, [r0, #0x1a]
	cmp r0, #0
	ldrne r0, _020D8044 ; =0x0209AEC0
	ldrneb r0, [r0, #0x64]
	cmpne r0, #0
	mov r0, r4
	beq _020D8000
	mov r1, #0x46
	bl FUN_ov1_020bffd4
	b _020D8008
_020D8000:
	mov r1, #0x47
	bl FUN_ov1_020c05b0
_020D8008:
	ldr r0, _020D8034 ; =0x02099EF0
	mov r1, #0
	ldr r0, [r0]
	bl FUN_ov132_021447d0
	ldr r0, _020D8048 ; =0x02099F14
	ldr r0, [r0]
	bl FUN_ov1_020e39b8
	add sp, sp, #4
	ldmfd sp!, {r3, r4, pc}
_020D802C: .word 0x020EAAFC
_020D8030: .word 0x020EAAF4
_020D8034: .word 0x02099EF0
_020D8038: .word 0x020AF81C
_020D803C: .word 0x00010009
_020D8040: .word 0x020A0640
_020D8044: .word 0x0209AEC0
_020D8048: .word 0x02099F14
	arm_func_end FUN_ov1_020d7f7c

	arm_func_start FUN_ov1_020d804c
FUN_ov1_020d804c: ; 0x020D804C
	stmfd sp!, {r3, r4, lr}
	sub sp, sp, #4
	mov r2, #0
	mov r4, r0
	ldr r0, _020D80BC ; =0x020AF81C
	ldr r1, _020D80C0 ; =0x00010002
	mov r3, r2
	str r2, [sp]
	bl FUN_02044798
	cmp r0, #0
	addeq sp, sp, #4
	ldmeqfd sp!, {r3, r4, pc}
	ldr r0, _020D80C4 ; =0x020A0640
	ldrb r0, [r0, #0x1a]
	cmp r0, #0
	ldrne r0, _020D80C8 ; =0x0209AEC0
	ldrneb r0, [r0, #0x64]
	cmpne r0, #0
	mov r0, r4
	beq _020D80AC
	mov r1, #0x46
	bl FUN_ov1_020bffd4
	add sp, sp, #4
	ldmfd sp!, {r3, r4, pc}
_020D80AC:
	mov r1, #0x47
	bl FUN_ov1_020c05b0
	add sp, sp, #4
	ldmfd sp!, {r3, r4, pc}
_020D80BC: .word 0x020AF81C
_020D80C0: .word 0x00010002
_020D80C4: .word 0x020A0640
_020D80C8: .word 0x0209AEC0
	arm_func_end FUN_ov1_020d804c

	arm_func_start FUN_ov1_020d80cc
FUN_ov1_020d80cc: ; 0x020D80CC
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	ldr r4, _020D83D8 ; =0x02099EF0
	mov r6, r0
	ldr r0, [r4]
	ldr r7, _020D83DC ; =0x020A0640
	bl FUN_ov132_021447c8
	cmp r0, #0x11
	addls pc, pc, r0, lsl #2
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_020D80F0: ; jump table
	ldmfd sp!, {r3, r4, r5, r6, r7, pc} ; case 0
	b _020D8138 ; case 1
	b _020D81B8 ; case 2
	b _020D81B8 ; case 3
	b _020D81B8 ; case 4
	b _020D81F4 ; case 5
	b _020D8228 ; case 6
	b _020D81B8 ; case 7
	b _020D825C ; case 8
	b _020D825C ; case 9
	b _020D825C ; case 10
	b _020D825C ; case 11
	b _020D828C ; case 12
	b _020D82BC ; case 13
	ldmfd sp!, {r3, r4, r5, r6, r7, pc} ; case 14
	b _020D81B8 ; case 15
	ldmfd sp!, {r3, r4, r5, r6, r7, pc} ; case 16
	b _020D832C ; case 17
_020D8138:
	ldrb r0, [r7, #0x1a]
	cmp r0, #0
	beq _020D8154
	mov r0, r6
	mov r1, #0xa
	bl FUN_ov1_020bffd4
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_020D8154:
	ldr r5, _020D83E0 ; =0x020AF81C
	mov r4, #0
	ldr r7, [r6, #4]
	mov r0, r5
	mov r2, r4
	mov r3, r4
	mov r1, #8
	str r7, [sp]
	bl FUN_02044798
	cmp r0, #0
	beq _020D81A8
	ldr r0, [r6, #4]
	bl FUN_02041fec
	mov r1, r0
	mov r0, r5
	sub r2, r4, #1
	bl FUN_02044e40
	mov r0, r6
	mov r1, #0xb
	bl FUN_ov1_020c05b0
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_020D81A8:
	mov r0, r6
	mov r1, #0xb
	bl FUN_ov1_020bffd4
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_020D81B8:
	ldr r0, _020D83E4 ; =0x0209A114
	ldr r0, [r0]
	bl FUN_ov1_020de1e8
	ldrb r0, [r7, #0x1a]
	cmp r0, #0
	ldrne r0, [r6, #8]
	cmpne r0, #0x23
	mov r0, r6
	beq _020D81E8
	mov r1, #0x22
	bl FUN_ov1_020bffd4
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_020D81E8:
	mov r1, #0x23
	bl FUN_ov1_020bffd4
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_020D81F4:
	ldrb r0, [r7, #0x1a]
	cmp r0, #0
	beq _020D8210
	ldr r0, _020D83E8 ; =0x0209AEC0
	ldrb r0, [r0, #0x64]
	cmp r0, #0
	ldmeqfd sp!, {r3, r4, r5, r6, r7, pc}
_020D8210:
	ldr r0, [r4]
	bl FUN_ov132_021447ec
	str r0, [r6, #0x338]
	mov r0, r6
	bl FUN_ov1_020d6784
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_020D8228:
	ldrb r0, [r7, #0x1a]
	cmp r0, #0
	beq _020D8244
	ldr r0, _020D83E8 ; =0x0209AEC0
	ldrb r0, [r0, #0x64]
	cmp r0, #0
	ldmeqfd sp!, {r3, r4, r5, r6, r7, pc}
_020D8244:
	ldr r0, [r4]
	bl FUN_ov132_021447ec
	str r0, [r6, #0x338]
	mov r0, r6
	bl FUN_ov1_020d6784
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_020D825C:
	ldrb r0, [r7, #0x1a]
	cmp r0, #0
	ldrne r0, [r6, #8]
	cmpne r0, #0x29
	mov r0, r6
	beq _020D8280
	mov r1, #0x28
	bl FUN_ov1_020bffd4
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_020D8280:
	mov r1, #0x29
	bl FUN_ov1_020bffd4
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_020D828C:
	ldrb r0, [r7, #0x1a]
	cmp r0, #0
	ldrne r0, [r6, #8]
	cmpne r0, #0x2b
	mov r0, r6
	beq _020D82B0
	mov r1, #0x2a
	bl FUN_ov1_020bffd4
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_020D82B0:
	mov r1, #0x2b
	bl FUN_ov1_020bffd4
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_020D82BC:
	mov r0, r6
	bl FUN_ov1_020c1304
	cmp r0, #0
	ldmnefd sp!, {r3, r4, r5, r6, r7, pc}
	ldr r0, [r4]
	mov r2, #0
	ldr r1, [r0, #0x1bc]
	ldr r5, [r6, #4]
	ldr r0, _020D83E0 ; =0x020AF81C
	mov r3, r2
	str r5, [sp]
	bl FUN_02044798
	cmp r0, #0
	beq _020D8310
	ldr r1, [r4]
	mov r0, r6
	ldr r2, [r1, #0x1c0]
	mov r1, #4
	str r2, [r6, #0x33c]
	bl FUN_ov1_020c05b0
	b _020D831C
_020D8310:
	mov r0, r6
	mov r1, #4
	bl FUN_ov1_020bffd4
_020D831C:
	ldr r0, [r4]
	mov r1, #0
	bl FUN_ov132_021447d0
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_020D832C:
	ldrb r0, [r7, #0x1a]
	cmp r0, #0
	beq _020D8348
	ldr r0, _020D83E8 ; =0x0209AEC0
	ldrb r0, [r0, #0x64]
	cmp r0, #0
	ldmeqfd sp!, {r3, r4, r5, r6, r7, pc}
_020D8348:
	mov r5, #0
	ldr r0, [r4]
	mov r1, r5
	bl FUN_ov132_021447d0
	ldrb r0, [r7, #0x1a]
	cmp r0, #0
	beq _020D8374
	mov r0, r6
	mov r1, #0x16
	bl FUN_ov1_020bffd4
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_020D8374:
	ldr r7, _020D83E0 ; =0x020AF81C
	ldr r12, [r6, #4]
	mov r4, #9
	mov r0, r7
	mov r1, r4
	mov r2, r5
	mov r3, r5
	str r12, [sp]
	bl FUN_02044798
	cmp r0, #0
	beq _020D83C8
	ldr r0, [r6, #4]
	bl FUN_02041fec
	mov r1, r0
	mov r0, r7
	sub r2, r4, #0xa
	bl FUN_02044e40
	mov r0, r6
	mov r1, #0x17
	bl FUN_ov1_020c05b0
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_020D83C8:
	mov r0, r6
	mov r1, #0x17
	bl FUN_ov1_020bffd4
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_020D83D8: .word 0x02099EF0
_020D83DC: .word 0x020A0640
_020D83E0: .word 0x020AF81C
_020D83E4: .word 0x0209A114
_020D83E8: .word 0x0209AEC0
	arm_func_end FUN_ov1_020d80cc

	arm_func_start FUN_ov1_020d83ec
FUN_ov1_020d83ec: ; 0x020D83EC
	stmfd sp!, {r3, lr}
	tst r1, #8
	ldmeqfd sp!, {r3, pc}
	ldr r0, _020D8404 ; =0x0209A8A0
	bl FUN_0202e958
	ldmfd sp!, {r3, pc}
_020D8404: .word 0x0209A8A0
	arm_func_end FUN_ov1_020d83ec

	arm_func_start FUN_ov1_020d8408
FUN_ov1_020d8408: ; 0x020D8408
	bx lr
	arm_func_end FUN_ov1_020d8408

	arm_func_start FUN_ov1_020d840c
FUN_ov1_020d840c: ; 0x020D840C
	stmfd sp!, {r4, lr}
	mov r4, r0
	bl FUN_ov16_020f1d64
	ldr r0, [r4, #4]
	mov r1, #0
	ldr r2, [r0]
	ldr r2, [r2, #0x28]
	blx r2
	ldmfd sp!, {r4, pc}
	arm_func_end FUN_ov1_020d840c

	arm_func_start FUN_ov1_020d8430
FUN_ov1_020d8430: ; 0x020D8430
	ldr r0, _020D8440 ; =0x020AF81C
	ldr r12, _020D8444 ; =FUN_0204451c
	mov r1, #1
	bx r12
_020D8440: .word 0x020AF81C
_020D8444: .word FUN_0204451c
	arm_func_end FUN_ov1_020d8430

	arm_func_start FUN_ov1_020d8448
FUN_ov1_020d8448: ; 0x020D8448
	ldr r12, _020D8450 ; =FUN_ov16_020f2ab4
	bx r12
_020D8450: .word FUN_ov16_020f2ab4
	arm_func_end FUN_ov1_020d8448

	arm_func_start FUN_ov1_020d8454
FUN_ov1_020d8454: ; 0x020D8454
	stmfd sp!, {r4, lr}
	mov r4, r0
	bl FUN_02006b80
	ldr r0, [r4, #4]
	mov r1, #0
	ldr r2, [r0]
	ldr r2, [r2, #0xc]
	blx r2
	bl FUN_ov16_020f1e14
	ldmfd sp!, {r4, pc}
	arm_func_end FUN_ov1_020d8454

	arm_func_start FUN_ov1_020d847c
FUN_ov1_020d847c: ; 0x020D847C
	stmfd sp!, {r4, lr}
	mov r4, r0
	bl FUN_0201e078
	mov r0, r4
	ldmfd sp!, {r4, pc}
	arm_func_end FUN_ov1_020d847c

	arm_func_start FUN_ov1_020d8490
FUN_ov1_020d8490: ; 0x020D8490
	ldr r0, _020D84A0 ; =0x020E9481
	mov r1, #0
	strb r1, [r0]
	bx lr
_020D84A0: .word 0x020E9481
	arm_func_end FUN_ov1_020d8490

	arm_func_start FUN_ov1_020d84a4
FUN_ov1_020d84a4: ; 0x020D84A4
	stmfd sp!, {r3, r4, r5, r6, r7, r8, lr}
	sub sp, sp, #4
	mov r2, #0x4000000
	ldr r1, [r2]
	mov r8, r0
	bic r0, r1, #0x1f00
	str r0, [r2]
	add r2, r2, #0x1000
	ldr r1, [r2]
	ldr r0, _020D85A0 ; =0x0209BA20
	bic r1, r1, #0x1f00
	str r1, [r2]
	bl FUN_02073384
	ldr r6, _020D85A4 ; =0x0209AEC0
	mov r0, r6
	bl FUN_0204665c
	ldr r5, _020D85A8 ; =0x020AF81C
	ldr r1, _020D85AC ; =0x020A0640
	mov r0, r5
	ldrb r7, [r1, #0x1a]
	bl FUN_020443e8
	mov r4, #1
	mov r0, r5
	mov r1, r4
	bl FUN_0204451c
	ldr r0, _020D85B0 ; =0x02099F38
	ldr r0, [r0]
	bl FUN_ov16_021123b4
	ldr r1, [r8, #4]
	mov r2, #0
	str r1, [sp]
	mov r0, r5
	mov r1, #5
	mov r3, r2
	bl FUN_02044798
	mov r5, r0
	bl FUN_ov16_020f067c
	cmp r0, #0
	ldrneb r0, [r6, #0x64]
	cmpne r0, #0
	beq _020D8554
	mov r1, r4
	mov r0, #0x1a
	b _020D856C
_020D8554:
	cmp r5, #0
	beq _020D8564
	cmp r7, #0
	beq _020D8570
_020D8564:
	mov r0, #0x15
	mov r1, #1
_020D856C:
	bl FUN_ov16_020f2604
_020D8570:
	ldr r0, _020D85A8 ; =0x020AF81C
	mov r3, #0
	mov r1, #1
	mov r2, #2
	str r3, [sp]
	bl FUN_02044690
	ldr r1, _020D85B4 ; =0x020EAAA8
	ldr r0, _020D85A0 ; =0x0209BA20
	ldr r1, [r1]
	strb r1, [r0, #0x890]
	add sp, sp, #4
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, pc}
_020D85A0: .word 0x0209BA20
_020D85A4: .word 0x0209AEC0
_020D85A8: .word 0x020AF81C
_020D85AC: .word 0x020A0640
_020D85B0: .word 0x02099F38
_020D85B4: .word 0x020EAAA8
	arm_func_end FUN_ov1_020d84a4

	arm_func_start FUN_ov1_020d85b8
FUN_ov1_020d85b8: ; 0x020D85B8
	bx lr
	arm_func_end FUN_ov1_020d85b8

	arm_func_start FUN_ov1_020d85bc
FUN_ov1_020d85bc: ; 0x020D85BC
	bx lr
	arm_func_end FUN_ov1_020d85bc

	arm_func_start FUN_ov1_020d85c0
FUN_ov1_020d85c0: ; 0x020D85C0
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, lr}
	mov r4, r0
	ldr r0, [r4, #4]
	bl FUN_0204204c
	cmp r0, #0x61
	beq _020D8614
	ldr r0, [r4, #4]
	bl FUN_0204204c
	cmp r0, #0x4f
	beq _020D8614
	ldr r0, _020D877C ; =0x020A0640
	ldrb r1, [r0, #0x87]
	cmp r1, #0
	ldreqb r0, [r0, #0x88]
	cmpeq r0, #0
	bne _020D8614
	ldr r4, _020D8780 ; =0x02099EF0
	ldr r0, [r4]
	bl FUN_ov126_0213a418
	ldr r0, [r4]
	bl FUN_01ffac60
_020D8614:
	ldr r0, _020D8784 ; =0x02099E98
	ldrb r0, [r0]
	cmp r0, #0
	beq _020D870C
	mov r10, #0
	ldr r0, _020D8788 ; =0x0209BA20
	mov r1, r10
	mov r2, #2
	bl FUN_0204b9c4
	bl FUN_ov16_020f068c ; may be ov17
	cmp r0, #0
	bne _020D86F8
	mov r6, #0x2000
	mov r7, #0x8000
	mov r5, r7
	mov r4, r6
	mov r11, r6
	ldr r8, _020D878C ; =0x0209A0AC
	b _020D86F0
_020D8660:
	mov r0, r8
	mov r1, r10
	bl FUN_0206c6fc
	movs r9, r0
	beq _020D86EC
	mov r1, r7
	bl FUN_0206d434
	cmp r0, #0
	beq _020D8698
	mov r0, r9
	mov r1, r6
	bl FUN_0206d434
	cmp r0, #0
	bne _020D86F8
_020D8698:
	mov r0, r9
	mov r1, r5
	bl FUN_0206d434
	cmp r0, #0
	mov r0, r9
	beq _020D86C4
	mov r1, r5
	bl FUN_0206d3fc
	mov r0, r9
	mov r1, r11
	b _020D86E8
_020D86C4:
	mov r1, r4
	bl FUN_0206d434
	cmp r0, #0
	beq _020D86EC
	mov r0, r9
	mov r1, r4
	bl FUN_0206d3fc
	mov r0, r9
	mov r1, r5
_020D86E8:
	bl FUN_0206d3c8
_020D86EC:
	add r10, r10, #1
_020D86F0:
	cmp r10, #0x64
	blt _020D8660
_020D86F8:
	ldr r0, _020D8788 ; =0x0209BA20
	bl FUN_0204ba78
	ldr r0, _020D8784 ; =0x02099E98
	mov r1, #0
	strb r1, [r0]
_020D870C:
	ldr r1, _020D877C ; =0x020A0640
	mov r5, #0
	strb r5, [r1, #0x1a]
	strb r5, [r1, #0x1b]
	strb r5, [r1, #0x87]
	strb r5, [r1, #0x88]
	ldr r0, _020D8790 ; =0x020A1640
	strb r5, [r1, #0x89]
	strb r5, [r0, #0x245]
	ldr r0, _020D8780 ; =0x02099EF0
	ldr r4, _020D8794 ; =0x0209AC44
	ldr r2, [r0]
	strb r5, [r1, #0x8b]
	mov r0, r4
	mov r1, r5
	str r5, [r2, #0x4d8]
	bl FUN_0202c470
	mov r0, r4
	mov r1, r5
	bl FUN_0202cff8
	mov r0, r4
	mov r1, r5
	mov r2, r5
	bl FUN_0202d774
	ldr r0, _020D8798 ; =0x02099F38
	ldr r0, [r0]
	bl FUN_ov16_021123c4
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_020D877C: .word 0x020A0640
_020D8780: .word 0x02099EF0
_020D8784: .word 0x02099E98
_020D8788: .word 0x0209BA20
_020D878C: .word 0x0209A0AC
_020D8790: .word 0x020A1640
_020D8794: .word 0x0209AC44
_020D8798: .word 0x02099F38
	arm_func_end FUN_ov1_020d85c0

	arm_func_start FUN_ov1_020d879c
FUN_ov1_020d879c: ; 0x020D879C
	stmfd sp!, {r4, lr}
	mov r4, r0
	bl FUN_0201e078
	mov r0, r4
	ldmfd sp!, {r4, pc}
	arm_func_end FUN_ov1_020d879c

	arm_func_start FUN_ov1_020d87b0
FUN_ov1_020d87b0: ; 0x020D87B0
	bx lr
	arm_func_end FUN_ov1_020d87b0

	arm_func_start FUN_ov1_020d87b4
FUN_ov1_020d87b4: ; 0x020D87B4
	bx lr
	arm_func_end FUN_ov1_020d87b4

	arm_func_start FUN_ov1_020d87b8
FUN_ov1_020d87b8: ; 0x020D87B8
	stmfd sp!, {r3, lr}
	ldr r0, _020D87E4 ; =0x0209BA20
	bl FUN_020731a4
	cmp r0, #0
	ldmnefd sp!, {r3, pc}
	ldr r0, _020D87E8 ; =0x02099F14
	mov r1, #0
	ldr r0, [r0]
	mov r2, #1
	bl FUN_ov1_020df1dc
	ldmfd sp!, {r3, pc}
_020D87E4: .word 0x0209BA20
_020D87E8: .word 0x02099F14
	arm_func_end FUN_ov1_020d87b8

	arm_func_start FUN_ov1_020d87ec
FUN_ov1_020d87ec: ; 0x020D87EC
	ldr r0, _020D8800 ; =0x02099F14
	ldr r12, _020D8804 ; =FUN_ov1_020df110
	ldr r0, [r0]
	mov r1, #1
	bx r12
_020D8800: .word 0x02099F14
_020D8804: .word FUN_ov1_020df110
	arm_func_end FUN_ov1_020d87ec

	arm_func_start FUN_ov1_020d8808
FUN_ov1_020d8808: ; 0x020D8808
	stmfd sp!, {r4, r5, r6, lr}
	ldr r4, _020D887C ; =0x02099F14
	mov r6, r0
	ldr r0, [r4]
	bl FUN_ov1_020e3d74
	cmp r0, #0
	beq _020D8848
	mov r5, #0
	ldr r0, [r4]
	mov r1, r5
	mov r2, r5
	bl FUN_ov1_020e03b0
	ldr r0, _020D8880 ; =0x02099EE8
	mov r1, r5
	ldr r0, [r0]
	bl FUN_0205ef30
_020D8848:
	ldr r4, _020D8884 ; =0x020AF81C
	mov r1, #1
	mov r0, r4
	bl FUN_0204451c
	mov r0, r4
	bl FUN_02044600
	cmp r0, #0
	ldmnefd sp!, {r4, r5, r6, pc}
	mov r0, r6
	ldr r1, [r0]
	ldr r1, [r1, #0x50]
	blx r1
	ldmfd sp!, {r4, r5, r6, pc}
_020D887C: .word 0x02099F14
_020D8880: .word 0x02099EE8
_020D8884: .word 0x020AF81C
	arm_func_end FUN_ov1_020d8808

	arm_func_start FUN_ov1_020d8888
FUN_ov1_020d8888: ; 0x020D8888
	stmfd sp!, {r4, lr}
	mov r4, r0
	bl FUN_0201e078
	mov r0, r4
	ldmfd sp!, {r4, pc}
	arm_func_end FUN_ov1_020d8888

	arm_func_start FUN_ov1_020d889c
FUN_ov1_020d889c: ; 0x020D889C
	bx lr
	arm_func_end FUN_ov1_020d889c

	arm_func_start FUN_ov1_020d88a0
FUN_ov1_020d88a0: ; 0x020D88A0
	bx lr
	arm_func_end FUN_ov1_020d88a0

	arm_func_start FUN_ov1_020d88a4
FUN_ov1_020d88a4: ; 0x020D88A4
	bx lr
	arm_func_end FUN_ov1_020d88a4

	arm_func_start FUN_ov1_020d88a8
FUN_ov1_020d88a8: ; 0x020D88A8
	mov r0, #0
	bx lr
	arm_func_end FUN_ov1_020d88a8

	arm_func_start FUN_ov1_020d88b0
FUN_ov1_020d88b0: ; 0x020D88B0
	stmfd sp!, {r4, lr}
	mov r4, r0
	bl FUN_0201e078
	mov r0, r4
	ldmfd sp!, {r4, pc}
	arm_func_end FUN_ov1_020d88b0

	arm_func_start FUN_ov1_020d88c4
FUN_ov1_020d88c4: ; 0x020D88C4
	ldr r0, _020D88D4 ; =0x020E9481
	mov r1, #0
	strb r1, [r0]
	bx lr
_020D88D4: .word 0x020E9481
	arm_func_end FUN_ov1_020d88c4

	arm_func_start FUN_ov1_020d88d8
FUN_ov1_020d88d8: ; 0x020D88D8
	mov r1, #1
	strb r1, [r0, #0x56]
	bx lr
	arm_func_end FUN_ov1_020d88d8

	arm_func_start FUN_ov1_020d88e4
FUN_ov1_020d88e4: ; 0x020D88E4
	stmfd sp!, {r3, r4, r5, lr}
	mov r5, r0
	mov r4, r1
	add r0, r5, r4
	ldrb r0, [r0, #0x56]
	cmp r0, #0
	ldmeqfd sp!, {r3, r4, r5, pc}
	ldr r0, _020D8940 ; =0x020A0B00
	and r1, r4, #0xff
	bl FUN_0207477c
	add r0, r5, r4, lsl #2
	ldr r0, [r0, #0x50]
	ldr r0, [r0, #8]
	cmp r0, #0
	mov r0, r5
	bne _020D8934
	ldr r1, [r0]
	ldr r1, [r1, #0x80]
	blx r1
	ldmfd sp!, {r3, r4, r5, pc}
_020D8934:
	mov r1, #2
	bl FUN_ov61_0211a340 ; may be ov67
	ldmfd sp!, {r3, r4, r5, pc}
_020D8940: .word 0x020A0B00
	arm_func_end FUN_ov1_020d88e4

	arm_func_start FUN_ov1_020d8944
FUN_ov1_020d8944: ; 0x020D8944
	ldr r12, _020D8950 ; =FUN_ov61_0211a340 ; may be ov67
	mov r1, #9
	bx r12
_020D8950: .word FUN_ov61_0211a340 ; may be ov67
	arm_func_end FUN_ov1_020d8944

	arm_func_start FUN_ov1_020d8954
FUN_ov1_020d8954: ; 0x020D8954
	stmfd sp!, {r3, r4, r5, lr}
	mov r4, r0
	mov r0, #6
	bl FUN_ov16_020f153c
	ldr r5, [r4, #4]
	mov r4, #0
	mov r0, r5
	mov r1, r4
	mov r2, #0x3d
	bl FUN_02041eac
	mov r0, r5
	mov r2, r4
	mov r1, #1
	bl FUN_02041eac
	ldmfd sp!, {r3, r4, r5, pc}
	arm_func_end FUN_ov1_020d8954

	arm_func_start FUN_ov1_020d8990
FUN_ov1_020d8990: ; 0x020D8990
	stmfd sp!, {r3, r4, r5, lr}
	mov r5, r0
	bl FUN_ov16_020f081c
	ldr r1, _020D89EC ; =0x0209A454
	mov r2, #1
	strb r2, [r1, #0x2e]
	strb r2, [r1, #0x2f]
	mov r4, #0
	strb r4, [r1, #0x30]
	strb r4, [r1, #0x32]
	strb r4, [r1, #0x33]
	strb r0, [r1, #0x28]
	strb r4, [r1, #0x29]
	strb r4, [r1, #0x2a]
	strb r4, [r1, #0x2b]
	strb r4, [r1, #0x31]
	mov r0, #6
	bl FUN_ov16_020f153c
	ldr r0, [r5, #4]
	mov r1, r4
	mov r2, #0x68
	bl FUN_02041ef0
	ldmfd sp!, {r3, r4, r5, pc}
_020D89EC: .word 0x0209A454
	arm_func_end FUN_ov1_020d8990

	arm_func_start FUN_ov1_020d89f0
FUN_ov1_020d89f0: ; 0x020D89F0
	stmfd sp!, {r4, lr}
	mov r4, r0
	ldr r2, [r4, #0x200]
	cmp r2, #0
	bne _020D8A18
	mov r2, #7
	mov r1, #5
	str r2, [r4, #8]
	bl FUN_ov60_0211d840 ; may be ov61
	ldmfd sp!, {r4, pc}
_020D8A18:
	ldr r0, _020D8AA4 ; =0x0209A5D0
	mov r1, #0
	bl FUN_020628dc
	cmp r0, #0
	bgt _020D8A5C
	bge _020D8A98
	add r1, r0, #0x7f
	cmp r1, #6
	addls pc, pc, r1, lsl #2
	b _020D8A64
_020D8A40: ; jump table
	b _020D8A80 ; case 0
	b _020D8A64 ; case 1
	b _020D8A64 ; case 2
	b _020D8A80 ; case 3
	b _020D8A80 ; case 4
	b _020D8A80 ; case 5
	b _020D8A80 ; case 6
_020D8A5C:
	cmp r0, #1
	beq _020D8A98
_020D8A64:
	mov r2, #7
	mov r0, r4
	mov r1, #6
	str r2, [r4, #8]
	bl FUN_ov60_0211d840 ; may be ov61
_020D8A78:
	bl FUN_0206ee5c
	b _020D8A78
_020D8A80:
	mov r2, #7
	mov r0, r4
	mov r1, #5
	str r2, [r4, #8]
	bl FUN_ov60_0211d840 ; may be ov61
	ldmfd sp!, {r4, pc}
_020D8A98:
	mov r0, #6
	str r0, [r4, #8]
	ldmfd sp!, {r4, pc}
_020D8AA4: .word 0x0209A5D0
	arm_func_end FUN_ov1_020d89f0

	arm_func_start FUN_ov1_020d8aa8
FUN_ov1_020d8aa8: ; 0x020D8AA8
	stmfd sp!, {r4, r5, r6, r7, r8, r9, lr}
	sub sp, sp, #0xc
	mov r7, r0
	ldr r1, [r7, #0x200]
	mov r5, #0
	cmp r1, #0
	bne _020D8ADC
	mov r2, #7
	mov r1, #5
	str r2, [r7, #8]
	bl FUN_ov60_0211d840 ; may be ov61
	add sp, sp, #0xc
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, pc}
_020D8ADC:
	bl FUN_ov16_020f067c
	cmp r0, #0
	beq _020D8B10
	ldr r1, [r7, #0x200]
	mov r4, #0x13c
	ldr r0, _020D8DD4 ; =0x020A0B00
	mov r2, r4
	add r1, r1, #0x480
	bl MI_CpuCopy8
	ldr r0, [r7, #0x200]
	mov r1, r4
	add r0, r0, #0x480
	bl DC_FlushRange
_020D8B10:
	bl FUN_ov16_020f067c
	cmp r0, #0
	ldrne r0, _020D8DD8 ; =0x0209AEC0
	ldrneb r0, [r0, #0x64]
	cmpne r0, #0
	beq _020D8B50
	ldr r1, [r7, #0x200]
	mov r4, #0x348
	ldr r0, _020D8DDC ; =0x020A12C0
	mov r2, r4
	add r1, r1, #0xc40
	bl MI_CpuCopy8
	ldr r0, [r7, #0x200]
	mov r1, r4
	add r0, r0, #0xc40
	bl DC_FlushRange
_020D8B50:
	bl FUN_ov16_020f068c ; may be ov17
	cmp r0, #0
	beq _020D8BC0
	ldr r1, [r7, #0x200]
	ldr r0, _020D8DE0 ; =0x020A0640
	add r1, r1, #0x18c
	add r1, r1, #0x5800
	bl FUN_02063248
	mov r6, #0
	ldr r4, _020D8DE4 ; =0x02099EE0
	b _020D8BB8
_020D8B7C:
	mov r0, r6, lsl #1
	ldrh r1, [r4, r0]
	cmp r1, #0
	beq _020D8BB4
	ldr r0, [r7, #0x200]
	add r0, r0, #0x80
	ldrb r2, [r0, r1]
	cmp r2, #0x63
	bhs _020D8BAC
	add r2, r2, #1
	and r2, r2, #0xff
	bl FUN_ov16_020eef64
_020D8BAC:
	mov r0, r6, lsl #1
	strh r5, [r4, r0]
_020D8BB4:
	add r6, r6, #1
_020D8BB8:
	cmp r6, #2
	blt _020D8B7C
_020D8BC0:
	ldr r0, _020D8DE0 ; =0x020A0640
	ldrb r1, [r0, #0x87]
	cmp r1, #0
	bne _020D8BDC
	ldrb r0, [r0, #0x88]
	cmp r0, #0
	beq _020D8D14
_020D8BDC:
	ldr r4, _020D8DE8 ; =0x0209BA20
	ldr r6, [r7, #0x200]
	mov r0, r4
	mov r1, r5
	bl FUN_020724c8
	strb r0, [r6, #0x15]
	mov r0, r4
	mov r1, r5
	bl FUN_0204c4cc
	strb r0, [r6, #0x16]
	mov r0, r4
	mov r1, r5
	bl FUN_0204c420
	ldr r1, _020D8DE0 ; =0x020A0640
	strb r0, [r6, #0x17]
	ldrb r0, [r1, #0x88]
	cmp r0, #0
	beq _020D8C70
	ldr r0, [r7, #0x200]
	mov r4, #4
	add r1, r0, #0x388
	ldr r0, _020D8DEC ; =0x020A1608
	mov r2, r4
	add r1, r1, #0xc00
	bl MI_CpuCopy8
	ldr r1, [r7, #0x200]
	ldr r0, _020D8DF0 ; =0x020A160C
	add r1, r1, #0x38c
	mov r2, r4
	add r1, r1, #0xc00
	bl MI_CpuCopy8
	ldr r1, [r7, #0x200]
	ldr r0, _020D8DF4 ; =0x020A0700
	add r1, r1, #0x80
	mov r2, #0x400
	bl MI_CpuCopy8
	b _020D8C90
_020D8C70:
	ldrb r0, [r1, #0x87]
	cmp r0, #0
	beq _020D8C90
	ldr r1, [r7, #0x200]
	ldr r0, _020D8DF4 ; =0x020A0700
	ldr r2, _020D8DF8 ; =0x000010BC
	add r1, r1, #0x80
	bl MI_CpuCopy8
_020D8C90:
	ldr r0, [r7, #0x200]
	ldr r4, _020D8DE8 ; =0x0209BA20
	add r1, r0, #0x80
	mov r0, r4
	bl FUN_02072b54
	ldr r0, _020D8DE0 ; =0x020A0640
	ldrb r0, [r0, #0x87]
	cmp r0, #0
	beq _020D8D34
	ldr r1, [r7, #0x200]
	add r0, r7, #0x210
	add r1, r1, #0x68
	add r1, r1, #0x3c00
	mov r2, #0x620
	bl MI_CpuCopy8
	add r9, sp, #4
	mov r8, #8
	mov r0, r9
	mov r1, r5
	mov r2, r8
	bl MI_CpuFill8
	mov r2, #1
	str r2, [sp]
	mov r0, r4
	mov r1, r5
	mov r2, r9
	mov r3, #4
	bl FUN_0204b2f4
	mov r0, r9
	add r1, r6, #0x58
	mov r2, r8
	bl MI_CpuCopy8
	b _020D8D34
_020D8D14:
	ldr r4, _020D8DFC ; =0x02099EF0
	ldr r1, [r7, #0x200]
	ldr r0, [r4]
	add r1, r1, #0x480
	bl FUN_ov132_02152bfc
	ldr r0, [r4]
	ldr r1, _020D8DD4 ; =0x020A0B00
	bl FUN_ov132_02152bfc
_020D8D34:
	ldr r2, [r7, #0x200]
	ldr r0, _020D8E00 ; =0x0209A5D0
	mov r1, r5
	bl FUN_020626f4
	cmp r0, #0
	bgt _020D8D84
	bge _020D8DC4
	sub r1, r5, #0x79
	cmp r0, r1
	bgt _020D8D8C
	sub r1, r5, #0x7d
	cmp r0, r1
	blt _020D8D8C
	beq _020D8D8C
	sub r1, r5, #0x7c
	cmp r0, r1
	subne r1, r5, #0x79
	cmpne r0, r1
	beq _020D8DA8
	b _020D8D8C
_020D8D84:
	cmp r0, #1
	beq _020D8DC4
_020D8D8C:
	mov r2, #7
	mov r0, r7
	mov r1, #6
	str r2, [r7, #8]
	bl FUN_ov61_0211a340 ; may be ov67
	add sp, sp, #0xc
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, pc}
_020D8DA8:
	mov r2, #7
	mov r0, r7
	mov r1, #5
	str r2, [r7, #8]
	bl FUN_ov61_0211a340 ; may be ov67
	add sp, sp, #0xc
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, pc}
_020D8DC4:
	mov r0, #5
	str r0, [r7, #8]
	add sp, sp, #0xc
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, pc}
_020D8DD4: .word 0x020A0B00
_020D8DD8: .word 0x0209AEC0
_020D8DDC: .word 0x020A12C0
_020D8DE0: .word 0x020A0640
_020D8DE4: .word 0x02099EE0
_020D8DE8: .word 0x0209BA20
_020D8DEC: .word 0x020A1608
_020D8DF0: .word 0x020A160C
_020D8DF4: .word 0x020A0700
_020D8DF8: .word 0x000010BC
_020D8DFC: .word 0x02099EF0
_020D8E00: .word 0x0209A5D0
	arm_func_end FUN_ov1_020d8aa8

	arm_func_start FUN_ov1_020d8e04
FUN_ov1_020d8e04: ; 0x020D8E04
	stmfd sp!, {r3, r4, r5, lr}
	ldr r4, _020D8E7C ; =0x0209A5D0
	mov r5, r0
_020D8E10:
	mov r0, r4
	bl FUN_02062924
	cmp r0, #0
	bgt _020D8E50
	ldmgefd sp!, {r3, r4, r5, pc}
	add r1, r0, #0x7f
	cmp r1, #6
	addls pc, pc, r1, lsl #2
	b _020D8E58
_020D8E34: ; jump table
	b _020D8E58 ; case 0
	b _020D8E58 ; case 1
	b _020D8E58 ; case 2
	b _020D8E58 ; case 3
	b _020D8E58 ; case 4
	b _020D8E58 ; case 5
	b _020D8E58 ; case 6
_020D8E50:
	cmp r0, #1
	beq _020D8E70
_020D8E58:
	mov r2, #7
	mov r0, r5
	mov r1, #5
	str r2, [r5, #8]
	bl FUN_ov60_0211d840 ; may be ov61
	ldmfd sp!, {r3, r4, r5, pc}
_020D8E70:
	bl FUN_0206ee5c
	b _020D8E10
	arm_func_end FUN_ov1_020d8e04

	arm_func_start FUN_ov1_020d8e78
FUN_ov1_020d8e78: ; 0x020D8E78
	ldmfd sp!, {r3, r4, r5, pc}
_020D8E7C: .word 0x0209A5D0
	arm_func_end FUN_ov1_020d8e78

	arm_func_start FUN_ov1_020d8e80
FUN_ov1_020d8e80: ; 0x020D8E80
	stmfd sp!, {r4, lr}
	mov r4, r0
	bl FUN_ov24_0211d1b8 ; may be ov61 ov72
	ldr r0, _020D8F00 ; =0x0209AEC0
	bl FUN_0204665c
	ldr r0, [r4, #4]
	bl FUN_0204204c
	cmp r0, #0x68
	bne _020D8EB8
	mov r0, r4
	ldr r1, [r0]
	ldr r1, [r1, #0x90]
	blx r1
	ldmfd sp!, {r4, pc}
_020D8EB8:
	ldr r0, _020D8F04 ; =0x020A0640
	ldrb r0, [r0, #0x87]
	cmp r0, #0
	beq _020D8ED8
	ldr r0, _020D8F08 ; =0x02099ED8
	add r1, r4, #0x210
	ldr r0, [r0]
	bl FUN_020560b4
_020D8ED8:
	ldr r0, _020D8F0C ; =0x02099F18
	mov r1, #0
	ldr r0, [r0]
	ldr r12, _020D8F10 ; =0x0209A454
	mov lr, #4
	mov r2, r1
	mov r3, r1
	str lr, [r12, #0x24]
	bl FUN_020512a8
	ldmfd sp!, {r4, pc}
_020D8F00: .word 0x0209AEC0
_020D8F04: .word 0x020A0640
_020D8F08: .word 0x02099ED8
_020D8F0C: .word 0x02099F18
_020D8F10: .word 0x0209A454
	arm_func_end FUN_ov1_020d8e80

	arm_func_start FUN_ov1_020d8f14
FUN_ov1_020d8f14: ; 0x020D8F14
	stmfd sp!, {r4, lr}
	mov r4, r0
	bl FUN_ov61_0211bb60
	mov r0, r4
	bl FUN_ov61_0211b8bc ; may be ov63
	ldmfd sp!, {r4, pc}
	arm_func_end FUN_ov1_020d8f14

	arm_func_start FUN_ov1_020d8f2c
FUN_ov1_020d8f2c: ; 0x020D8F2C
	ldr r12, _020D8F34 ; =0x0211D4DC
	bx r12
_020D8F34: .word 0x0211D4DC
	arm_func_end FUN_ov1_020d8f2c

	arm_func_start FUN_ov1_020d8f38
FUN_ov1_020d8f38: ; 0x020D8F38
	ldr r12, _020D8F40 ; =0x0211D55C
	bx r12
_020D8F40: .word 0x0211D55C
	arm_func_end FUN_ov1_020d8f38

	arm_func_start FUN_ov1_020d8f44
FUN_ov1_020d8f44: ; 0x020D8F44
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, lr}
	mov r10, r0
	bl FUN_ov45_0211d9b4 ; may be ov61
	mov r0, r10
	bl FUN_ov61_0211b1b0
	mov r0, r10
	bl FUN_ov61_0211b150 ; may be ov67
	mov r0, r10
	bl FUN_ov39_0211b220 ; may be ov61 ov84 ov91
	mov r0, #2
	str r0, [r10, #8]
_020D8F70:
	bl FUN_0206ee5c
	ldr r0, [r10, #8]
	cmp r0, #3
	bne _020D8F70
	mov r0, r10
	bl FUN_ov39_0211b9cc ; may be ov61
	mov r0, r10
	mov r1, #1
	bl FUN_ov31_0211a2d0 ; may be ov39 ov61
	mov r1, #6
	mov r0, r10
	str r1, [r10, #8]
	bl FUN_ov21_0211d060 ; may be ov61
	mov r0, r10
	ldr r1, [r0]
	ldr r1, [r1, #0x4c]
	blx r1
	bl FUN_ov16_020f2cdc
	mov r6, #3
	mov r8, #1
	mov r7, #4
	mov r9, r6
	mov r5, r6
	mov r4, r8
	mov r11, r7
_020D8FD4:
	mov r0, r10
	ldr r1, [r0]
	ldr r1, [r1, #0x70]
	blx r1
	ldr r0, [r10, #0xc]
	cmp r0, #5
	cmpne r0, #9
	mov r0, r10
	bne _020D9014
	bl FUN_ov61_0211d6c0
	mov r0, r10
	mov r1, r8
	str r9, [r10, #8]
	bl FUN_ov60_0211d840 ; may be ov61
	mov r0, r7
	b _020D9054
_020D9014:
	mov r1, r6
	bl FUN_ov60_0211d840 ; may be ov61
	bl FUN_0206ee5c
	mov r0, r10
	bl FUN_ov1_020d8e04
	ldr r0, [r10, #0xc]
	cmp r0, #5
	cmpne r0, #9
	bne _020D905C
	mov r0, r10
	bl FUN_ov61_0211d6c0
	mov r0, r10
	mov r1, r4
	str r5, [r10, #8]
	bl FUN_ov60_0211d840 ; may be ov61
	mov r0, r11
_020D9054:
	bl FUN_0206eed0
	b _020D8FD4
_020D905C:
	mov r0, r10
	mov r1, #0
	bl FUN_ov61_0211d730
	mov r0, r10
	mov r1, #4
	bl FUN_ov61_0211d864
	mov r0, r10
	bl FUN_ov50_0211a688 ; may be ov61
	cmp r0, #0
	beq _020D908C
	mov r0, r10
	bl FUN_ov21_0211d060 ; may be ov61
_020D908C:
	mov r0, #4
	bl FUN_0206eed0
	bl FUN_ov16_020f068c ; may be ov17
	cmp r0, #0
	ldreq r0, _020D90D8 ; =0x020A0640
	ldreqb r1, [r0, #0x87]
	cmpeq r1, #0
	ldreqb r0, [r0, #0x88]
	cmpeq r0, #0
	mov r0, r10
	beq _020D90C4
	ldr r1, [r0]
	ldr r1, [r1, #0x90]
	b _020D90CC
_020D90C4:
	ldr r1, [r0]
	ldr r1, [r1, #0x94]
_020D90CC:
	blx r1
_020D90D0:
	bl FUN_0206ee5c
	b _020D90D0
_020D90D8: .word 0x020A0640
	arm_func_end FUN_ov1_020d8f44

	arm_func_start FUN_ov1_020d90dc
FUN_ov1_020d90dc: ; 0x020D90DC
	stmfd sp!, {r4, lr}
	mov r4, r0
	bl FUN_0201e078
	mov r0, r4
	ldmfd sp!, {r4, pc}
	arm_func_end FUN_ov1_020d90dc

	arm_func_start FUN_ov1_020d90f0
FUN_ov1_020d90f0: ; 0x020D90F0
	bx lr
	arm_func_end FUN_ov1_020d90f0

	arm_func_start FUN_ov1_020d90f4
FUN_ov1_020d90f4: ; 0x020D90F4
	stmfd sp!, {r4, r5, lr}
	sub sp, sp, #0xc
	mov r5, r0
	ldr r0, [r5, #0x31c]
	mov r4, r1
	cmp r0, #0
	addeq sp, sp, #0xc
	ldmeqfd sp!, {r4, r5, pc}
	add r12, sp, #4
	mov r1, r2
	add r3, sp, #8
	mov r2, #0
	str r12, [sp]
	bl FUN_ov16_020f366c
	cmp r0, #0
	addeq sp, sp, #0xc
	ldmeqfd sp!, {r4, r5, pc}
	add r1, r5, #0xc4
	mov r0, #0xc
	mla r1, r4, r0, r1
	mov r0, #1
	str r0, [sp]
	ldr r2, [sp, #8]
	ldr r3, [sp, #4]
	ldr r0, _020D9164 ; =0x020E8F80
	bl FUN_ov1_020dbf88
	add sp, sp, #0xc
	ldmfd sp!, {r4, r5, pc}
_020D9164: .word 0x020E8F80
	arm_func_end FUN_ov1_020d90f4

	arm_func_start FUN_ov1_020d9168
FUN_ov1_020d9168: ; 0x020D9168
	stmfd sp!, {r4, r5, r6, r7, r8, lr}
	sub sp, sp, #0x10
	ldr r4, [sp, #0x28]
	mov r8, r3
	mov r7, r0
	mov r6, r1
	mov r0, r8
	mov r1, r4
	mov r5, r2
	bl FUN_ov16_020f0b3c
	mov r4, r0
	ldr r0, [r7, #0x328]
	cmp r0, #0
	beq _020D91EC
	add r1, sp, #0xc
	str r1, [sp]
	add r12, sp, #8
	ldr r3, [sp, #0x2c]
	mov r1, r8
	mov r2, r4
	str r12, [sp, #4]
	bl FUN_ov16_020f36f4
	cmp r0, #0
	beq _020D91EC
	add r1, r7, #0xc4
	mov r0, #0xc
	mla r1, r6, r0, r1
	mov r0, #1
	str r0, [sp]
	ldr r2, [sp, #0xc]
	ldr r3, [sp, #8]
	ldr r0, _020D924C ; =0x020E8F88
	bl FUN_ov1_020dbf88
_020D91EC:
	ldr r0, [r7, #0x334]
	cmp r0, #0
	addeq sp, sp, #0x10
	ldmeqfd sp!, {r4, r5, r6, r7, r8, pc}
	ldr r2, [sp, #0x2c]
	add r6, sp, #8
	add r3, sp, #0xc
	mov r1, r4
	str r6, [sp]
	bl FUN_ov16_020f3744
	cmp r0, #0
	addeq sp, sp, #0x10
	ldmeqfd sp!, {r4, r5, r6, r7, r8, pc}
	add r1, r7, #0xc4
	mov r0, #0xc
	mla r1, r5, r0, r1
	mov r0, #0
	str r0, [sp]
	ldr r2, [sp, #0xc]
	ldr r3, [sp, #8]
	ldr r0, _020D9250 ; =0x020E8F90
	bl FUN_ov1_020dbf88
	add sp, sp, #0x10
	ldmfd sp!, {r4, r5, r6, r7, r8, pc}
_020D924C: .word 0x020E8F88
_020D9250: .word 0x020E8F90
	arm_func_end FUN_ov1_020d9168

	arm_func_start FUN_ov1_020d9254
FUN_ov1_020d9254: ; 0x020D9254
	stmfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, lr}
	sub sp, sp, #0xc
	mov r10, r0
	str r1, [r10, #0xc]
	cmp r1, #1
	beq _020D927C
	cmp r1, #2
	cmpne r1, #3
	beq _020D9328
	b _020D93FC
_020D927C:
	mov r6, #0
	mov r1, r6
	add r0, r10, #0xc4
	mov r2, #0x27c
	bl MI_CpuFill8
	ldr r4, _020D940C ; =0x020A9440
	mov r5, #0x800
	mov r0, r6
	mov r1, r4
	mov r2, r5
	bl MIi_CpuClearFast
	mov r0, r4
	mov r1, r5
	bl DC_FlushRange
	ldr r4, _020D9410 ; =0x020A8C40
	mov r0, r6
	mov r1, r4
	mov r2, r5
	bl MIi_CpuClearFast
	mov r0, r4
	mov r1, r5
	bl DC_FlushRange
	mov r0, r6
	ldr r4, _020D9414 ; =0x020A8440
	mov r2, r5
	mov r1, r4
	bl MIi_CpuClearFast
	mov r0, r4
	mov r1, r5
	bl DC_FlushRange
	ldr r0, _020D9418 ; =0x020E8F98
	add r1, r10, #0xc4
	bl FUN_ov1_020dbe00
	ldr r0, _020D941C ; =0x020E8FA4
	add r1, r10, #0x31c
	bl FUN_ov1_020dbf50
	ldr r0, _020D9420 ; =0x020E8FAC
	add r1, r10, #0x328
	bl FUN_ov1_020dbf50
	ldr r0, _020D9424 ; =0x020E8FB4
	add r1, r10, #0x334
	bl FUN_ov1_020dbf50
	b _020D93FC
_020D9328:
	mov r5, #0
	str r5, [sp, #8]
	b _020D93F0
_020D9334:
	ldr r0, _020D9428 ; =0x0209BA20
	ldr r1, [sp, #8]
	bl FUN_0207249c
	mov r8, r0
	ldr r0, [sp, #8]
	mov r1, #0x54
	mla r4, r0, r1, r10
	mov r9, #0
	add r11, r10, r0
	b _020D93D8
_020D935C:
	mov r0, #0x1c
	mla r0, r9, r0, r4
	ldrsh r0, [r0, #0x1c]
	bl FUN_ov16_020efa80
	movs r7, r0
	beq _020D93D0
	ldr r0, [r10, #0xc]
	cmp r0, #2
	bne _020D9394
	mov r0, r10
	mov r2, r7
	add r1, r5, #0x26
	bl FUN_ov1_020d90f4
	b _020D93D0
_020D9394:
	mov r0, r8
	mov r1, r7
	bl FUN_ov16_020f0bcc
	ldrh r1, [r8, #0x28]
	mov r6, r0
	mov r0, r7
	cmp r1, #0
	ldreqh r1, [r8, #0x26]
	bl FUN_ov16_020f0b3c
	stmia sp, {r0, r6}
	mov r3, r7
	mov r0, r10
	add r1, r5, #0x20
	add r2, r5, #0x2c
	bl FUN_ov1_020d9168
_020D93D0:
	add r9, r9, #1
	add r5, r5, #1
_020D93D8:
	ldrb r0, [r11, #0x19]
	cmp r9, r0
	blt _020D935C
	ldr r0, [sp, #8]
	add r0, r0, #1
	str r0, [sp, #8]
_020D93F0:
	ldr r0, [sp, #8]
	cmp r0, #2
	blt _020D9334
_020D93FC:
	mov r0, #1
	str r0, [r10, #8]
	add sp, sp, #0xc
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
_020D940C: .word 0x020A9440
_020D9410: .word 0x020A8C40
_020D9414: .word 0x020A8440
_020D9418: .word 0x020E8F98
_020D941C: .word 0x020E8FA4
_020D9420: .word 0x020E8FAC
_020D9424: .word 0x020E8FB4
_020D9428: .word 0x0209BA20
	arm_func_end FUN_ov1_020d9254

	arm_func_start FUN_ov1_020d942c
FUN_ov1_020d942c: ; 0x020D942C
	stmfd sp!, {r4, lr}
	mov r4, r0
	ldr r0, [r4, #0xc4]
	ldr r2, _020D9478 ; =0x020E7B98
	add r1, r4, #0xc4
	bl FUN_ov1_020dbfdc
	ldr r0, _020D947C ; =0x020A0640
	ldrb r0, [r0, #0x1a]
	cmp r0, #0
	ldr r0, [r4, #0xc4]
	bne _020D9468
	ldr r2, _020D9480 ; =0x020E7B18
	add r1, r4, #0xc4
	bl FUN_ov1_020dbfdc
	ldmfd sp!, {r4, pc}
_020D9468:
	ldr r2, _020D9484 ; =0x020E7B40
	add r1, r4, #0xc4
	bl FUN_ov1_020dbfdc
	ldmfd sp!, {r4, pc}
_020D9478: .word 0x020E7B98
_020D947C: .word 0x020A0640
_020D9480: .word 0x020E7B18
_020D9484: .word 0x020E7B40
	arm_func_end FUN_ov1_020d942c

	arm_func_start FUN_ov1_020d9488
FUN_ov1_020d9488: ; 0x020D9488
	stmfd sp!, {r4, r5, r6, lr}
	mov r6, #0
	add r5, r0, #0xc4
	mov r4, #0xc
_020D9498:
	mla r0, r6, r4, r5
	bl FUN_ov16_020f33fc
	add r6, r6, #1
	cmp r6, #0x35
	blt _020D9498
	ldmfd sp!, {r4, r5, r6, pc}
	arm_func_end FUN_ov1_020d9488

	arm_func_start FUN_ov1_020d94b0
FUN_ov1_020d94b0: ; 0x020D94B0
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, lr}
	sub sp, sp, #0x28
	mov r4, r0
	ldr r1, [r4, #0x10]
	mov r5, #0
	mov r0, r5
	ldr r7, _020D9DFC ; =0x020A0640
	mov r6, #2
	cmp r1, #3
	str r0, [sp, #0x24]
	addls pc, pc, r1, lsl #2
	b _020D9DE4
_020D94E0: ; jump table
	b _020D94F0 ; case 0
	b _020D98DC ; case 1
	b _020D9BA8 ; case 2
	b _020D9C50 ; case 3
_020D94F0:
	mov r1, #1
	ldr r0, [r4, #0xd0]
	mov r2, r6
	sub r1, r1, #2
	bl FUN_ov1_020dc13c
	ldrb r2, [r4, #0x18]
	mov r1, r0
	cmp r2, #0
	beq _020D951C
	ldr r0, [r4, #0xe8]
	b _020D9520
_020D951C:
	ldr r0, [r4, #0xdc]
_020D9520:
	mov r2, r6
	bl FUN_ov1_020dc13c
	mov r8, r0
	ldr r0, [r4, #0x118]
	mov r1, r8
	mov r2, #3
	mov r11, #0xc
	bl FUN_ov1_020dc13c
	mov r1, r0
	ldr r0, [r4, #0x130]
	mov r2, #3
	bl FUN_ov1_020dc13c
	ldrb r2, [r7, #0x1a]
	mov r1, r0
	cmp r2, #0
	beq _020D958C
	ldr r0, [r4, #0x148]
	mov r2, #3
	bl FUN_ov1_020dc13c
	mov r1, r0
	ldr r0, [r4, #0x160]
	mov r2, #3
	bl FUN_ov1_020dc13c
	mov r1, r0
	ldr r0, [r4, #0x178]
	mov r2, #3
	bl FUN_ov1_020dc13c
_020D958C:
	mov r8, #0
	str r8, [sp, #0x20]
	mov r7, #4
	mov r6, #0x20
	b _020D9600
_020D95A0:
	ldr r0, [sp, #0x20]
	mov r10, r5
	add r9, r4, r0
	b _020D95E8
_020D95B0:
	mla r0, r6, r11, r4
	ldr r2, [r0, #0xc4]
	cmp r2, #0
	beq _020D95DC
	ldr r0, [r2, #0xc]
	ldr r1, [r2, #0x10]
	add r0, r2, r0
	mov r3, r7
	add r2, r8, #1
	bl FUN_ov16_020f1868
	mov r8, r0
_020D95DC:
	add r10, r10, #1
	add r7, r7, #1
	add r6, r6, #1
_020D95E8:
	ldrb r0, [r9, #0x19]
	cmp r10, r0
	blt _020D95B0
	ldr r0, [sp, #0x20]
	add r0, r0, #1
	str r0, [sp, #0x20]
_020D9600:
	ldr r0, [sp, #0x20]
	cmp r0, #2
	blt _020D95A0
	mov r9, #0xc
	mov r11, #1
	mov r7, #4
	mov r6, #0x2c
	mov r10, #0
	b _020D9644
_020D9624:
	mla r0, r6, r9, r4
	ldr r0, [r0, #0xc4]
	mov r1, r11
	mov r2, r7
	bl FUN_ov16_020f1160
	add r10, r10, #1
	add r7, r7, #1
	add r6, r6, #1
_020D9644:
	cmp r10, #6
	blt _020D9624
	mov r6, #3
	ldr r0, [r4, #0x1a8]
	mov r1, r8
	mov r2, r6
	bl FUN_ov1_020dc13c
	mov r1, r0
	ldr r0, [r4, #0x124]
	mov r2, r6
	bl FUN_ov1_020dc13c
	mov r1, r0
	ldr r0, [r4, #0x13c]
	mov r2, r6
	bl FUN_ov1_020dc13c
	mov r8, r0
	ldr r0, _020D9DFC ; =0x020A0640
	ldrb r0, [r0, #0x1a]
	cmp r0, #0
	beq _020D96C8
	ldr r0, [r4, #0x154]
	mov r1, r8
	mov r2, r6
	bl FUN_ov1_020dc13c
	mov r1, r0
	ldr r0, [r4, #0x16c]
	mov r2, r6
	bl FUN_ov1_020dc13c
	mov r2, r6
	mov r1, r0
	ldr r0, [r4, #0x184]
	bl FUN_ov1_020dc13c
	mov r8, r0
_020D96C8:
	ldr r0, [r4, #0xf4]
	mov r1, r8
	mov r2, #1
	bl FUN_ov1_020dc13c
	mov r1, r0
	ldr r0, [r4, #0x10c]
	mov r2, #1
	bl FUN_ov1_020dc13c
	mov r1, r0
	ldr r0, [r4, #0x1e4]
	mov r2, #1
	bl FUN_ov1_020dc13c
	mov r6, r0
	ldr r0, [r4, #0x344]
	cmp r0, #0
	beq _020D9728
	mov r1, #6
	mov r2, r1
	bl FUN_ov16_020f2ea8
	ldr r0, [r4, #0x344]
	add r2, r6, #1
	mov r1, #0x48
	mov r3, #0
	bl FUN_ov16_020f1868
_020D9728:
	mov r8, #0
	str r8, [sp, #0x1c]
	mov r7, #0xa
	mov r6, #0x26
	b _020D97B0
_020D973C:
	ldr r0, [sp, #0x1c]
	mov r10, r5
	add r11, r4, r0
	b _020D9798
_020D974C:
	mov r0, #0xc
	mla r0, r6, r0, r4
	ldr r9, [r0, #0xc4]
	cmp r9, #0
	beq _020D978C
	ldr r0, [r9, #0xc]
	ldr r1, [r9, #0x10]
	add r0, r9, r0
	add r2, r8, #1
	mov r3, r7
	bl FUN_ov16_020f1868
	mov r8, r0
	mov r0, r9
	mov r1, #1
	mov r2, r7
	bl FUN_ov16_020f1138
_020D978C:
	add r10, r10, #1
	add r7, r7, #1
	add r6, r6, #1
_020D9798:
	ldrb r0, [r11, #0x19]
	cmp r10, r0
	blt _020D974C
	ldr r0, [sp, #0x1c]
	add r0, r0, #1
	str r0, [sp, #0x1c]
_020D97B0:
	ldr r0, [sp, #0x1c]
	cmp r0, #2
	blt _020D973C
	mov r6, #3
	ldr r0, [r4, #0x190]
	mov r1, r8
	mov r2, r6
	bl FUN_ov1_020dc13c
	mov r1, r0
	ldr r0, [r4, #0x19c]
	mov r2, r6
	bl FUN_ov1_020dc13c
	mov r1, r0
	ldr r0, [r4, #0x1b4]
	mov r2, r6
	bl FUN_ov1_020dc13c
	mov r1, r0
	ldr r0, [r4, #0x1c0]
	mov r2, r6
	bl FUN_ov1_020dc13c
	mov r1, r0
	ldr r0, [r4, #0x208]
	mov r5, #1
	mov r2, r5
	bl FUN_ov1_020dc13c
	mov r1, r0
	ldr r0, [r4, #0x214]
	mov r2, r5
	bl FUN_ov1_020dc13c
	mov r1, r0
	ldr r0, [r4, #0x220]
	mov r2, r5
	bl FUN_ov1_020dc13c
	mov r1, r0
	ldr r0, [r4, #0x22c]
	mov r2, r5
	bl FUN_ov1_020dc13c
	mov r2, r6
	mov r1, r0
	ldr r0, [r4, #0x238]
	bl FUN_ov1_020dc13c
	mov r1, r0
	ldr r0, [r4, #0x100]
	mov r2, r5
	bl FUN_ov1_020dc13c
	mov r1, r0
	ldr r0, [r4, #0x1cc]
	mov r2, #2
	bl FUN_ov1_020dc13c
	mov r1, r0
	ldr r0, [r4, #0x1d8]
	mov r2, r5
	bl FUN_ov1_020dc13c
	mov r1, r0
	ldr r0, _020D9DFC ; =0x020A0640
	ldrb r0, [r0, #0x1a]
	cmp r0, #0
	beq _020D9DE4
	ldr r0, [r4, #0x1f0]
	cmp r0, #0
	beq _020D98B0
	mov r2, r5
	add r1, r1, #1
	bl FUN_ov16_020f18e8
_020D98B0:
	movs r0, #1
	bne _020D98C8
	ldr r0, [r4, #0x1fc]
	mov r1, #1
	mov r2, #2
	bl FUN_ov16_020f1138
_020D98C8:
	ldr r0, [r4, #0x118]
	mov r1, #1
	mov r2, #3
	bl FUN_ov16_020f1138
	b _020D9DE4
_020D98DC:
	ldr r0, [sp, #0x24]
	ldr r1, [r4, #0xd0]
	mov r2, r0
	mov r9, #0xc
	bl FUN_ov16_020f1a60
	ldrb r1, [r4, #0x18]
	mov r2, r0
	cmp r1, #0
	beq _020D9908
	ldr r1, [r4, #0xe8]
	b _020D990C
_020D9908:
	ldr r1, [r4, #0xdc]
_020D990C:
	ldr r0, [sp, #0x24]
	bl FUN_ov16_020f1a60
	mov r8, r0
	ldr r1, [r4, #0x118]
	mov r0, r5
	mov r2, r8
	bl FUN_ov16_020f1a60
	mov r2, r0
	ldr r1, [r4, #0x130]
	mov r0, r5
	bl FUN_ov16_020f1a60
	ldrb r1, [r7, #0x1a]
	mov r2, r0
	cmp r1, #0
	beq _020D9974
	ldr r1, [r4, #0x148]
	mov r0, r5
	bl FUN_ov16_020f1a60
	mov r2, r0
	ldr r1, [r4, #0x160]
	mov r0, r5
	bl FUN_ov16_020f1a60
	mov r2, r0
	mov r0, r5
	ldr r1, [r4, #0x178]
	bl FUN_ov16_020f1a60
_020D9974:
	bl FUN_02004fac
	mov r8, #0x20
	mov r1, r0
	mov r2, r8
	mov r0, #0
	bl MIi_CpuClearFast
	bl FUN_02004fac
	mov r1, r8
	bl DC_FlushRange
	mov r5, r8
	b _020D99BC
_020D99A0:
	mla r0, r5, r9, r4
	ldr r1, [r0, #0xc4]
	mov r0, #1
	mov r2, r8
	bl FUN_ov16_020f1a60
	mov r8, r0
	add r5, r5, #1
_020D99BC:
	cmp r5, #0x25
	ble _020D99A0
	ldr r1, [r4, #0x1a8]
	mov r0, #1
	mov r2, r8
	bl FUN_ov16_020f1a60
	mov r2, r0
	ldr r1, [r4, #0x124]
	mov r0, #1
	bl FUN_ov16_020f1a60
	mov r2, r0
	ldr r1, [r4, #0x13c]
	mov r0, #1
	bl FUN_ov16_020f1a60
	mov r8, r0
	ldrb r0, [r7, #0x1a]
	cmp r0, #0
	beq _020D9A38
	ldr r1, [r4, #0x154]
	mov r0, #1
	mov r2, r8
	bl FUN_ov16_020f1a60
	mov r2, r0
	ldr r1, [r4, #0x16c]
	mov r0, #1
	bl FUN_ov16_020f1a60
	mov r2, r0
	ldr r1, [r4, #0x184]
	mov r0, #1
	bl FUN_ov16_020f1a60
	mov r8, r0
_020D9A38:
	ldr r1, [r4, #0xf4]
	mov r0, #1
	mov r2, r8
	bl FUN_ov16_020f1a60
	mov r2, r0
	ldr r1, [r4, #0x10c]
	mov r0, #1
	bl FUN_ov16_020f1a60
	mov r2, r0
	ldr r1, [r4, #0x1e4]
	mov r0, #1
	bl FUN_ov16_020f1a60
	mov r5, r0
	bl FUN_02004fac
	add r0, r5, r0
	mov r1, #0
	mov r2, #0x480
	str r0, [r4, #0x348]
	bl MI_CpuFill8
	mov r8, #0x20
	mov r5, #0x26
	b _020D9AAC
_020D9A90:
	mla r0, r5, r9, r4
	ldr r1, [r0, #0xc4]
	mov r0, r6
	mov r2, r8
	bl FUN_ov16_020f1a60
	mov r8, r0
	add r5, r5, #1
_020D9AAC:
	cmp r5, #0x2b
	ble _020D9A90
	ldr r1, [r4, #0x190]
	mov r0, r6
	mov r2, r8
	bl FUN_ov16_020f1a60
	mov r2, r0
	ldr r1, [r4, #0x19c]
	mov r0, r6
	bl FUN_ov16_020f1a60
	mov r2, r0
	ldr r1, [r4, #0x1b4]
	mov r0, r6
	bl FUN_ov16_020f1a60
	mov r2, r0
	ldr r1, [r4, #0x1c0]
	mov r0, r6
	bl FUN_ov16_020f1a60
	mov r2, r0
	ldr r1, [r4, #0x208]
	mov r0, r6
	bl FUN_ov16_020f1a60
	mov r2, r0
	ldr r1, [r4, #0x214]
	mov r0, r6
	bl FUN_ov16_020f1a60
	mov r2, r0
	ldr r1, [r4, #0x220]
	mov r0, r6
	bl FUN_ov16_020f1a60
	mov r2, r0
	ldr r1, [r4, #0x22c]
	mov r0, r6
	bl FUN_ov16_020f1a60
	mov r2, r0
	ldr r1, [r4, #0x238]
	mov r0, r6
	bl FUN_ov16_020f1a60
	mov r2, r0
	ldr r1, [r4, #0x100]
	mov r0, r6
	bl FUN_ov16_020f1a60
	mov r2, r0
	ldr r1, [r4, #0x1cc]
	mov r0, r6
	bl FUN_ov16_020f1a60
	mov r2, r0
	ldr r1, [r4, #0x1d8]
	mov r0, r6
	bl FUN_ov16_020f1a60
	mov r2, r0
	ldrb r0, [r7, #0x1a]
	cmp r0, #0
	beq _020D9DE4
	ldr r1, [r4, #0x1f0]
	mov r0, r6
	bl FUN_ov16_020f1a60
	ldr r1, [r4, #0x1f0]
	cmp r1, #0
	ldrne r0, [r1, #0xc]
	addne r0, r1, r0
	strne r0, [r4, #0x340]
	b _020D9DE4
_020D9BA8:
	ldr r9, [sp, #0x24]
	mov r7, #0x30
	mov r11, #8
	b _020D9C44
_020D9BB8:
	mov r0, #0x54
	mla r8, r9, r0, r4
	mov r10, r5
	add r6, r4, r9
	b _020D9C34
_020D9BCC:
	mov r0, #0x1c
	mla r0, r10, r0, r8
	ldrsh r0, [r0, #0x1c]
	bl FUN_ov16_020efa80
	cmp r0, #0
	beq _020D9C30
	add r3, r0, #0x1c
	mov r0, #3
	stmia sp, {r0, r5}
	ldr r0, [r4, #0x348]
	mov r1, r5
	str r0, [sp, #8]
	str r7, [sp, #0xc]
	str r11, [sp, #0x10]
	str r5, [sp, #0x14]
	ldr r0, _020D9E00 ; =0x02099ED0
	str r5, [sp, #0x18]
	ldr r0, [r0]
	mov r2, r5
	ldr r12, [r0]
	ldr r12, [r12, #8]
	blx r12
	ldr r0, [r4, #0x348]
	add r0, r0, #0xc0
	str r0, [r4, #0x348]
_020D9C30:
	add r10, r10, #1
_020D9C34:
	ldrb r0, [r6, #0x19]
	cmp r10, r0
	blt _020D9BCC
	add r9, r9, #1
_020D9C44:
	cmp r9, #2
	blt _020D9BB8
	b _020D9DE4
_020D9C50:
	ldr r2, [r4, #0xd0]
	mov r8, #0xc
	cmp r2, #0
	beq _020D9C74
	ldr r0, [r2, #0xc]
	ldr r1, _020D9E04 ; =0x020A9440
	add r0, r2, r0
	mov r2, #0x800
	bl MIi_CpuCopyFast
_020D9C74:
	mov r0, r4
	bl FUN_ov1_020dae3c
	ldrb r0, [r4, #0x18]
	cmp r0, #0
	movne r6, #3
	moveq r6, #2
	mla r1, r6, r8, r4
	movne r0, #0xb
	movne r2, #0xa
	ldr r3, [r1, #0xc4]
	moveq r0, #0xa
	moveq r2, #0xc
	cmp r3, #0
	beq _020D9CCC
	ldr r1, [r3, #0xc]
	ldr r6, _020D9E04 ; =0x020A9440
	add r1, r3, r1
	str r1, [sp]
	mov r1, #0
	mov r3, #3
	str r6, [sp, #4]
	bl FUN_ov16_020f191c
_020D9CCC:
	ldr r9, [r4, #0x1cc]
	cmp r9, #0
	beq _020D9D8C
	ldrb r0, [r4, #0x18]
	cmp r0, #0
	movne r1, #4
	bne _020D9D5C
	ldrb r0, [r7, #0x8f]
	cmp r0, #2
	movls r0, #1
	bls _020D9D58
	cmp r0, #3
	blo _020D9D0C
	cmp r0, #5
	movls r0, #2
	bls _020D9D58
_020D9D0C:
	ldrb r0, [r7, #0x8f]
	cmp r0, #6
	blo _020D9D24
	cmp r0, #8
	movls r0, #3
	bls _020D9D58
_020D9D24:
	ldrb r0, [r7, #0x8f]
	cmp r0, #9
	blo _020D9D3C
	cmp r0, #0xb
	movls r0, #4
	bls _020D9D58
_020D9D3C:
	ldrb r0, [r7, #0x8f]
	cmp r0, #0xc
	blo _020D9D54
	cmp r0, #0xe
	movls r0, #5
	bls _020D9D58
_020D9D54:
	mvn r0, #0
_020D9D58:
	sub r1, r0, #1
_020D9D5C:
	mov r2, #6
	mul r0, r1, r2
	ldr r1, [r9, #0xc]
	ldr r6, _020D9E08 ; =0x020A8440
	add r1, r9, r1
	add r0, r1, r0, lsl #1
	str r0, [sp]
	mov r0, #0xd
	mov r1, #0
	mov r3, #1
	str r6, [sp, #4]
	bl FUN_ov16_020f191c
_020D9D8C:
	ldrb r0, [r4, #0x18]
	cmp r0, #0
	bne _020D9DDC
	ldr r6, _020D9E0C ; =0x02099EF0
	mov r1, r5
	ldr r0, [r6]
	bl FUN_ov132_02143c28
	mov r3, r0
	mov r0, r4
	mov r2, r5
	mov r1, #0xb
	bl FUN_ov1_020da404
	ldr r0, [r6]
	mov r1, #1
	bl FUN_ov132_02143c28
	mov r3, r0
	mov r2, r5
	mov r0, r4
	mov r1, #0x13
	bl FUN_ov1_020da404
_020D9DDC:
	mov r0, #1
	str r0, [sp, #0x24]
_020D9DE4:
	ldr r1, [r4, #0x10]
	ldr r0, [sp, #0x24]
	add r1, r1, #1
	str r1, [r4, #0x10]
	add sp, sp, #0x28
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_020D9DFC: .word 0x020A0640
_020D9E00: .word 0x02099ED0
_020D9E04: .word 0x020A9440
_020D9E08: .word 0x020A8440
_020D9E0C: .word 0x02099EF0
	arm_func_end FUN_ov1_020d94b0

	arm_func_start FUN_ov1_020d9e10
FUN_ov1_020d9e10: ; 0x020D9E10
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, lr}
	sub sp, sp, #0x10
	mov r4, #0
	mov r10, r0
	mov r1, r4
	add r0, r10, #0x1c
	mov r2, #0xa8
	strb r4, [r10, #0x19]
	strb r4, [r10, #0x1a]
	mov r6, #0x1c
	mov r5, r4
	bl MI_CpuFill8
	mvn r0, #0
_020D9E44:
	mla r1, r4, r6, r10
	strh r0, [r1, #0x1c]
	add r4, r4, #1
	strh r0, [r1, #0x70]
	cmp r4, #3
	blt _020D9E44
	ldr r0, _020DA10C ; =0x02099EF0
	ldr r0, [r0]
	bl FUN_ov126_0213246c
	mov r4, r0
	ldrsb r0, [r4, #4]
	bl FUN_ov16_020f07f4
	cmp r0, #0
	mov r2, #0
	bne _020D9EF0
	ldrb r0, [r4, #0x10]
	strb r0, [r10, #0x19]
	ldrb r0, [r4, #0x10]
	cmp r0, #0
	ble _020D9EB4
_020D9E94:
	mla r0, r2, r6, r10
	add r1, r4, r2
	ldrsb r1, [r1, #4]
	add r2, r2, #1
	strh r1, [r0, #0x1c]
	ldrb r0, [r4, #0x10]
	cmp r2, r0
	blt _020D9E94
_020D9EB4:
	ldrb r0, [r4, #0x11]
	mov r2, #0
	strb r0, [r10, #0x1a]
	ldrb r0, [r4, #0x11]
	cmp r0, #0
	ble _020D9F5C
_020D9ECC:
	mla r0, r2, r6, r10
	add r1, r4, r2
	ldrsb r1, [r1, #7]
	add r2, r2, #1
	strh r1, [r0, #0x70]
	ldrb r0, [r4, #0x11]
	cmp r2, r0
	blt _020D9ECC
	b _020D9F5C
_020D9EF0:
	ldrb r0, [r4, #0x11]
	strb r0, [r10, #0x19]
	ldrb r0, [r4, #0x11]
	cmp r0, #0
	ble _020D9F24
_020D9F04:
	mla r0, r2, r6, r10
	add r1, r4, r2
	ldrsb r1, [r1, #7]
	add r2, r2, #1
	strh r1, [r0, #0x1c]
	ldrb r0, [r4, #0x11]
	cmp r2, r0
	blt _020D9F04
_020D9F24:
	ldrb r0, [r4, #0x10]
	mov r2, #0
	strb r0, [r10, #0x1a]
	ldrb r0, [r4, #0x10]
	cmp r0, #0
	ble _020D9F5C
_020D9F3C:
	mla r0, r2, r6, r10
	add r1, r4, r2
	ldrsb r1, [r1, #4]
	add r2, r2, #1
	strh r1, [r0, #0x70]
	ldrb r0, [r4, #0x10]
	cmp r2, r0
	blt _020D9F3C
_020D9F5C:
	ldr r9, _020DA110 ; =0x0209BA20
	mov r6, #0
	mov r8, #0xf
	add r4, sp, #8
	mov r7, #0x54
_020D9F70:
	mla r0, r6, r7, r10
	ldrsh r0, [r0, #0x1c]
	str r5, [r4, r6, lsl #2]
	bl FUN_ov16_020efa80
	movs r1, r0
	beq _020D9F9C
	mov r0, r9
	mov r2, r8
	mov r3, r5
	bl FUN_0204f02c
	str r0, [r4, r6, lsl #2]
_020D9F9C:
	add r6, r6, #1
	cmp r6, #2
	blt _020D9F70
	mov r8, #0
_020D9FAC:
	add r0, r8, #1
	mov r1, r0, lsr #0x1f
	rsb r0, r1, r0, lsl #31
	add r3, r1, r0, ror #31
	mov r0, #0x54
	mla r4, r3, r0, r10
	mov r5, #0
	add r2, sp, #8
	ldr r1, [r2, r8, lsl #2]
	ldr r0, _020DA10C ; =0x02099EF0
	strb r5, [r4, #0x37]
	ldr r0, [r0]
	ldr r2, [r2, r3, lsl #2]
	bl FUN_ov132_02141568
	cmp r0, #0
	movne r0, #1
	add r7, r10, r8
	strneb r0, [r4, #0x37]
	ldrb r0, [r7, #0x19]
	cmp r0, #2
	blo _020DA0F8
	mov r0, #0x54
	mla r6, r8, r0, r10
	ldrsh r0, [r6, #0x1c]
	bl FUN_ov16_020efa80
	movs r1, r0
	beq _020DA0F8
	ldr r0, [r1, #0x90]
	tst r0, #0x8000
	bne _020DA0F8
	ldr r4, _020DA10C ; =0x02099EF0
	ldr r0, [r4]
	bl FUN_ov132_02142000
	ldrb r1, [r7, #0x19]
	str r0, [sp]
	mov r9, #1
	cmp r1, #1
	ble _020DA090
	mov r11, #0x1c
_020DA048:
	mla r0, r9, r11, r6
	ldrsh r0, [r0, #0x1c]
	bl FUN_ov16_020efa80
	movs r1, r0
	beq _020DA080
	ldr r0, [r1, #0x90]
	tst r0, #0x8000
	bne _020DA080
	ldr r0, [r4]
	bl FUN_ov132_02142000
	ldr r1, [sp]
	str r0, [sp, #4]
	cmp r1, r0
	addeq r5, r5, #1
_020DA080:
	ldrb r0, [r7, #0x19]
	add r9, r9, #1
	cmp r9, r0
	blt _020DA048
_020DA090:
	cmp r5, #0
	ldrneb r0, [r7, #0x19]
	movne r9, #0
	cmpne r0, #0
	ble _020DA0F8
	ldr r11, _020DA10C ; =0x02099EF0
	and r4, r5, #0xff
_020DA0AC:
	mov r0, #0x1c
	mla r5, r9, r0, r6
	ldrsh r0, [r5, #0x1c]
	bl FUN_ov16_020efa80
	movs r1, r0
	beq _020DA0E8
	ldr r0, [r1, #0x90]
	tst r0, #0x8000
	bne _020DA0E8
	ldr r0, [r11]
	bl FUN_ov132_02142000
	ldr r1, [sp]
	str r0, [sp, #4]
	cmp r1, r0
	streqb r4, [r5, #0x36]
_020DA0E8:
	ldrb r0, [r7, #0x19]
	add r9, r9, #1
	cmp r9, r0
	blt _020DA0AC
_020DA0F8:
	add r8, r8, #1
	cmp r8, #2
	blt _020D9FAC
	add sp, sp, #0x10
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_020DA10C: .word 0x02099EF0
_020DA110: .word 0x0209BA20
	arm_func_end FUN_ov1_020d9e10

	arm_func_start FUN_ov1_020da114
FUN_ov1_020da114: ; 0x020DA114
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, lr}
	mov r6, #0
	ldr r5, _020DA1A8 ; =0x02099F04
	mov r10, r0
	str r6, [sp]
	mov r11, #0xc
	mov r4, #0x1c
_020DA130:
	ldr r0, [sp]
	mov r7, #0
	add r9, r10, r0
	ldrb r0, [r9, #0x19]
	cmp r0, #0
	ble _020DA190
	ldr r1, [sp]
	mov r0, #0x54
	mla r8, r1, r0, r10
_020DA154:
	mla r0, r7, r4, r8
	ldrsh r0, [r0, #0x1c]
	bl FUN_ov16_020efa80
	cmp r0, #0
	mlane r1, r6, r11, r10
	ldrne r1, [r1, #0x2d4]
	cmpne r1, #0
	beq _020DA17C
	ldr r2, [r5]
	bl FUN_ov16_020f0c30 ; may be ov17
_020DA17C:
	ldrb r0, [r9, #0x19]
	add r7, r7, #1
	add r6, r6, #1
	cmp r7, r0
	blt _020DA154
_020DA190:
	ldr r0, [sp]
	add r0, r0, #1
	str r0, [sp]
	cmp r0, #2
	blt _020DA130
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_020DA1A8: .word 0x02099F04
	arm_func_end FUN_ov1_020da114

	arm_func_start FUN_ov1_020da1ac
FUN_ov1_020da1ac: ; 0x020DA1AC
	stmfd sp!, {r3, r4, r5, lr}
	mov r4, #1
	mov r5, r0
	mov r0, r4
	bl FUN_ov16_020f0e0c
	mov r0, r4
	mov r2, r4
	mov r1, #0xa
	bl FUN_ov16_020f0e9c
	ldrb r1, [r5, #0x19]
	mov r0, r4
	mov r2, r4
	add r1, r1, #0xa
	bl FUN_ov16_020f0e9c
	mov r0, r4
	mov r2, r4
	mov r1, #4
	bl FUN_ov16_020f0e9c
	ldrb r1, [r5, #0x19]
	mov r0, r4
	mov r2, r4
	add r1, r1, #4
	bl FUN_ov16_020f0e9c
	ldmfd sp!, {r3, r4, r5, pc}
	arm_func_end FUN_ov1_020da1ac

	arm_func_start FUN_ov1_020da20c
FUN_ov1_020da20c: ; 0x020DA20C
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, lr}
	sub sp, sp, #8
	mov r11, r0
	ldr r4, [r11, #0x1d8]
	mov r10, r1
	cmp r4, #0
	mov r9, r2
	mov r8, r3
	addeq sp, sp, #8
	ldmeqfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
	ldr r0, [r4, #0xc]
	mov r7, #0
	add r6, r4, r0
	ldr r5, _020DA31C ; =0x020A8440
	mov r4, #1
	b _020DA290
_020DA24C:
	ldrsb r0, [r8]
	cmp r0, #0x30
	blt _020DA298
	cmp r0, #0x39
	bgt _020DA298
	sub r0, r0, #0x30
	add r0, r6, r0, lsl #1
	str r0, [sp]
	mov r0, r10
	mov r1, r9
	mov r2, r4
	mov r3, r4
	str r5, [sp, #4]
	bl FUN_ov16_020f191c
	add r7, r7, #1
	add r8, r8, #1
	add r10, r10, #1
_020DA290:
	cmp r7, #2
	blt _020DA24C
_020DA298:
	ldr r1, [r11, #0x1e4]
	cmp r1, #0
	addeq sp, sp, #8
	ldmeqfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
	ldr r0, [r1, #0xc]
	mov r4, #0
	add r6, r1, r0
	ldr r7, _020DA320 ; =0x020A8C40
	mov r5, #1
	b _020DA30C
_020DA2C0:
	ldrsb r0, [r8]
	cmp r0, #0x30
	addlt sp, sp, #8
	ldmltfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
	cmp r0, #0x39
	addgt sp, sp, #8
	ldmgtfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
	sub r0, r0, #0x30
	add r0, r6, r0, lsl #1
	str r0, [sp]
	mov r0, r10
	mov r1, r9
	mov r2, r5
	mov r3, r5
	str r7, [sp, #4]
	bl FUN_ov16_020f191c
	add r4, r4, #1
	add r8, r8, #1
	add r10, r10, #1
_020DA30C:
	cmp r4, #2
	blt _020DA2C0
	add sp, sp, #8
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_020DA31C: .word 0x020A8440
_020DA320: .word 0x020A8C40
	arm_func_end FUN_ov1_020da20c

	arm_func_start FUN_ov1_020da324
FUN_ov1_020da324: ; 0x020DA324
	stmfd sp!, {r3, r4, r5, lr}
	sub sp, sp, #8
	mov r5, r0
	ldrb r0, [r5, #0x18]
	cmp r0, #0
	ldreq r1, _020DA3F4 ; =0x020A0640
	ldreq r0, _020DA3F8 ; =0x88888889
	ldreq r1, [r1]
	umulleq r0, r12, r1, r0
	moveq r12, r12, lsr #4
	beq _020DA374
	ldr r0, _020DA3F4 ; =0x020A0640
	ldr r1, _020DA3F8 ; =0x88888889
	ldr r2, [r0, #8]
	ldr r0, [r0]
	sub r2, r2, r0
	smull r0, r12, r1, r2
	add r12, r2, r12
	mov r0, r2, lsr #0x1f
	add r12, r0, r12, asr #4
_020DA374:
	ldr r0, _020DA3FC ; =0x0000176F
	cmp r12, #0
	movlt r12, #0
	cmp r12, r0
	movgt r12, r0
	ldr r0, [r5, #0x14]
	cmp r0, r12
	addeq sp, sp, #8
	ldmeqfd sp!, {r3, r4, r5, pc}
	ldr r1, _020DA3F8 ; =0x88888889
	mov lr, r12, lsr #0x1f
	smull r0, r3, r1, r12
	smull r0, r2, r1, r12
	add r3, r12, r3
	add r3, lr, r3, asr #5
	mov r1, #0x3c
	smull r3, r0, r1, r3
	add r4, sp, #0
	add r2, r12, r2
	ldr r1, _020DA400 ; =0x020E8FBC
	mov r0, r4
	add r2, lr, r2, asr #5
	sub r3, r12, r3
	str r12, [r5, #0x14]
	bl FUN_02023c40
	mov r0, r5
	mov r3, r4
	mov r1, #0xe
	mov r2, #1
	bl FUN_ov1_020da20c
	add sp, sp, #8
	ldmfd sp!, {r3, r4, r5, pc}
_020DA3F4: .word 0x020A0640
_020DA3F8: .word 0x88888889
_020DA3FC: .word 0x0000176F
_020DA400: .word 0x020E8FBC
	arm_func_end FUN_ov1_020da324

	arm_func_start FUN_ov1_020da404
FUN_ov1_020da404: ; 0x020DA404
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	sub sp, sp, #8
	ldr r4, [r0, #0x10c]
	mov r7, r1
	cmp r4, #0
	mov r6, r2
	mov r5, r3
	addeq sp, sp, #8
	ldmeqfd sp!, {r3, r4, r5, r6, r7, pc}
	ldr r2, _020DA4BC ; =0x66666667
	cmp r5, #0x64
	movge r5, #0x63
	ldr r0, [r4, #0xc]
	smull r1, r3, r2, r5
	add r4, r4, r0
	mov r0, r5, lsr #0x1f
	add r3, r0, r3, asr #2
	cmp r3, #0
	ble _020DA474
	add r0, r4, r3, lsl #2
	ldr r12, _020DA4C0 ; =0x020A8C40
	str r0, [sp]
	mov r0, r7
	mov r1, r6
	mov r2, #1
	mov r3, #2
	str r12, [sp, #4]
	bl FUN_ov16_020f191c
_020DA474:
	ldr r2, _020DA4BC ; =0x66666667
	mov r0, r5, lsr #0x1f
	smull r1, r3, r2, r5
	add r3, r0, r3, asr #2
	mov r2, #0xa
	smull r0, r1, r2, r3
	sub r3, r5, r0
	add r0, r4, r3, lsl #2
	ldr r4, _020DA4C0 ; =0x020A8C40
	str r0, [sp]
	mov r1, r6
	add r0, r7, #1
	mov r2, #1
	mov r3, #2
	str r4, [sp, #4]
	bl FUN_ov16_020f191c
	add sp, sp, #8
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_020DA4BC: .word 0x66666667
_020DA4C0: .word 0x020A8C40
	arm_func_end FUN_ov1_020da404

	arm_func_start FUN_ov1_020da4c4
FUN_ov1_020da4c4: ; 0x020DA4C4
	stmfd sp!, {r4, r5, r6, r7, r8, r9, r10, lr}
	sub sp, sp, #0x10
	mov r5, r1
	mov r4, r2
	ldr r6, [sp, #0x30]
	ldr r7, _020DA5B4 ; =0x000003E7
	ldr r2, [sp, #0x34]
	cmp r6, r7
	ldr r1, _020DA5B4 ; =0x000003E7
	movgt r6, r7
	cmp r2, r1
	movgt r2, r1
	mov r1, #0xc
	mla r0, r3, r1, r0
	cmp r6, r2
	ldr r9, [r0, #0xc4]
	movgt r6, r2
	cmp r9, #0
	addeq sp, sp, #0x10
	ldmeqfd sp!, {r4, r5, r6, r7, r8, r9, r10, pc}
	ldr r7, [r9, #0xc]
	mov r10, #0
	ldr r8, _020DA5B8 ; =0x020A8440
	str r10, [sp]
	mov r0, r5
	mov r1, r4
	mov r2, #3
	mov r3, #1
	str r8, [sp, #4]
	add r9, r9, r7
	bl FUN_ov16_020f197c
	add r7, sp, #8
	ldr r1, _020DA5BC ; =0x020E8FC8
	mov r0, r7
	mov r2, r6
	bl FUN_02023c40
	mov r6, #1
	b _020DA594
_020DA55C:
	ldrsb r0, [r7, r10]
	cmp r0, #0x20
	beq _020DA58C
	add r0, r9, r0, lsl #1
	sub r0, r0, #0x60
	str r0, [sp]
	mov r0, r5
	mov r1, r4
	mov r2, r6
	mov r3, r6
	str r8, [sp, #4]
	bl FUN_ov16_020f191c
_020DA58C:
	add r5, r5, #1
	add r10, r10, #1
_020DA594:
	cmp r10, #3
	addge sp, sp, #0x10
	ldmgefd sp!, {r4, r5, r6, r7, r8, r9, r10, pc}
	ldrsb r0, [r7, r10]
	cmp r0, #0
	bne _020DA55C
	add sp, sp, #0x10
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, pc}
_020DA5B4: .word 0x000003E7
_020DA5B8: .word 0x020A8440
_020DA5BC: .word 0x020E8FC8
	arm_func_end FUN_ov1_020da4c4

	arm_func_start FUN_ov1_020da5c0
FUN_ov1_020da5c0: ; 0x020DA5C0
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, lr}
	sub sp, sp, #8
	mov r10, r1
	mov r9, r2
	ldr r4, [sp, #0x30]
	ldr r5, _020DA6AC ; =0x000003E7
	ldr r1, [sp, #0x34]
	cmp r4, r5
	ldr r2, _020DA6AC ; =0x000003E7
	movgt r4, r5
	cmp r1, r2
	movgt r1, r2
	mov r2, #0xc
	mla r0, r3, r2, r0
	cmp r4, r1
	ldr r3, [r0, #0xc4]
	movgt r4, r1
	ldr r8, [sp, #0x38]
	cmp r3, #0
	addeq sp, sp, #8
	ldmeqfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
	ldr r2, [r3, #0xc]
	mov r0, r4, lsl #5
	add r5, r3, r2
	bl FUN_0201f9bc
	movs r6, r0
	bne _020DA634
	cmp r4, #0
	movgt r6, #1
_020DA634:
	mov r7, #0
	mov r0, r10
	mov r1, r9
	mov r2, #4
	mov r3, #1
	stmia sp, {r7, r8}
	bl FUN_ov16_020f197c
	add r4, r5, #0x10
	mov r5, #8
	mov r11, #1
_020DA65C:
	mov r0, r6
	cmp r6, #0
	ble _020DA690
	cmp r6, #8
	movgt r0, r5
	sub r0, r4, r0, lsl #1
	str r0, [sp]
	mov r0, r10
	mov r1, r9
	mov r2, r11
	mov r3, r11
	str r8, [sp, #4]
	bl FUN_ov16_020f191c
_020DA690:
	add r7, r7, #1
	cmp r7, #4
	sub r6, r6, #8
	add r10, r10, #1
	blt _020DA65C
	add sp, sp, #8
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_020DA6AC: .word 0x000003E7
	arm_func_end FUN_ov1_020da5c0

	arm_func_start FUN_ov1_020da6b0
FUN_ov1_020da6b0: ; 0x020DA6B0
	stmfd sp!, {r4, r5, r6, r7, lr}
	sub sp, sp, #0xc
	mov r6, r1
	mov r7, r0
	ldrsh r0, [r6]
	bl FUN_ov16_020efa80
	movs r5, r0
	addeq sp, sp, #0xc
	ldmeqfd sp!, {r4, r5, r6, r7, pc}
	bl FUN_0206ccec
	ldrsh r1, [r6, #2]
	mov r3, #0x15
	str r1, [sp]
	str r0, [sp, #4]
	ldrsh r1, [r6, #0x16]
	ldrsh r2, [r6, #0x18]
	mov r0, r7
	bl FUN_ov1_020da4c4
	mov r0, r5
	bl FUN_0206ccec
	ldrsh r1, [r6, #2]
	ldr r4, _020DA7DC ; =0x020A8440
	mov r3, #0x12
	str r1, [sp]
	stmib sp, {r0, r4}
	ldrsh r2, [r6, #0x18]
	ldrsh r1, [r6, #0x14]
	mov r0, r7
	add r2, r2, #1
	bl FUN_ov1_020da5c0
	mov r0, r5
	bl FUN_0206cc94
	ldr r2, [r6, #8]
	mov r3, #0x14
	mov r1, r2, asr #0xb
	add r1, r2, r1, lsr #20
	mov r1, r1, asr #0xc
	str r1, [sp]
	str r0, [sp, #4]
	ldrsh r2, [r6, #0x18]
	ldrsh r1, [r6, #0x16]
	mov r0, r7
	add r2, r2, #3
	bl FUN_ov1_020da4c4
	mov r0, r5
	bl FUN_0206cc94
	ldr r2, [r6, #8]
	mov r3, #0x11
	mov r1, r2, asr #0xb
	add r1, r2, r1, lsr #20
	mov r1, r1, asr #0xc
	str r1, [sp]
	stmib sp, {r0, r4}
	ldrsh r2, [r6, #0x18]
	ldrsh r1, [r6, #0x14]
	mov r0, r7
	add r2, r2, #2
	bl FUN_ov1_020da5c0
	mov r0, r5
	bl FUN_0206cc94
	ldr r3, [r6, #0x10]
	ldr r2, _020DA7E0 ; =0x020A8C40
	mov r1, r3, asr #0xb
	add r1, r3, r1, lsr #20
	mov r1, r1, asr #0xc
	str r1, [sp]
	stmib sp, {r0, r2}
	ldrsh r2, [r6, #0x18]
	ldrsh r1, [r6, #0x14]
	mov r0, r7
	mov r3, #0x13
	add r2, r2, #2
	bl FUN_ov1_020da5c0
	add sp, sp, #0xc
	ldmfd sp!, {r4, r5, r6, r7, pc}
_020DA7DC: .word 0x020A8440
_020DA7E0: .word 0x020A8C40
	arm_func_end FUN_ov1_020da6b0

	arm_func_start FUN_ov1_020da7e4
FUN_ov1_020da7e4: ; 0x020DA7E4
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, lr}
	sub sp, sp, #8
	ldr r5, [sp, #0x34]
	mov r9, r0
	ldrsh r0, [r5]
	mov r8, r1
	mov r7, r2
	mov r6, r3
	bl FUN_ov16_020efa80
	movs r10, r0
	addeq sp, sp, #8
	ldmeqfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
	ldr r1, _020DAC3C ; =0x0209A2C0
	mov r0, #0xd
	ldr r2, [r1, #0x48]
	cmp r6, #0
	movne r0, #1
	cmn r2, #1
	ldrle r2, [r1, #0x4c]
	ldrsh r1, [r5]
	cmp r1, r2
	bne _020DA870
	ldr r3, [r9, #0x100]
	cmp r3, #0
	beq _020DA870
	ldr r1, [r3, #0xc]
	mov r2, #2
	add r1, r3, r1
	ldr r4, _020DAC40 ; =0x020A8440
	str r1, [sp]
	mov r3, r2
	add r0, r8, r0
	add r1, r7, #6
	str r4, [sp, #4]
	bl FUN_ov16_020f191c
_020DA870:
	mov r2, #8
	cmp r6, #0
	movne r2, #2
	mov r0, r10
	mov r1, #1
	add r4, r8, r2
	bl FUN_0206d9b0
	cmp r0, #1
	blo _020DA900
	mov r0, r10
	mov r1, #1
	bl FUN_0206d9b0
	cmp r0, #0x14
	bhi _020DA900
	ldr r11, [r9, #0xf4]
	cmp r11, #0
	beq _020DA900
	mov r0, r10
	mov r1, #1
	bl FUN_0206d9b0
	ldr r2, [r11, #0xc]
	ldr r1, [r11, #0x10]
	add r2, r11, r2
	ldr r3, _020DAC44 ; =0xCCCCCCCD
	sub r11, r0, #1
	umull r0, r3, r1, r3
	mov r3, r3, lsr #4
	mla r0, r3, r11, r2
	str r0, [sp]
	ldr r1, _020DAC48 ; =0x020A8C40
	mov r2, #1
	str r1, [sp, #4]
	mov r0, r4
	add r1, r7, #3
	mov r3, r2
	bl FUN_ov16_020f191c
_020DA900:
	ldr r3, [r9, #0x344]
	cmp r3, #0
	beq _020DA938
	ldr r0, [sp, #0x30]
	mov r2, #6
	mul r1, r0, r2
	add r0, r3, r1, lsl #1
	ldr r11, _020DAC48 ; =0x020A8C40
	str r0, [sp]
	add r0, r4, #1
	add r1, r7, #3
	mov r3, #1
	str r11, [sp, #4]
	bl FUN_ov16_020f191c
_020DA938:
	mov r0, r10
	bl FUN_0206cc84
	cmp r0, #0
	mov r0, r10
	ble _020DA968
	bl FUN_0206cc84
	mov r0, r0, lsl #0xc
	bl FUN_0201f704
	mov r1, r0
	mov r0, #0x3f000000
	bl FUN_02020274
	b _020DA97C
_020DA968:
	bl FUN_0206cc84
	mov r0, r0, lsl #0xc
	bl FUN_0201f704
	mov r1, #0x3f000000
	bl FUN_020204a4
_020DA97C:
	bl FUN_0201fdac
	str r0, [r5, #4]
	str r0, [r5, #8]
	str r0, [r5, #0xc]
	str r0, [r5, #0x10]
	mov r0, r10
	bl FUN_0206ccdc
	strh r0, [r5, #2]
	add r0, r7, #4
	strh r0, [r5, #0x18]
	add r0, r4, #1
	strh r0, [r5, #0x14]
	add r1, r4, #2
	ldr r0, _020DAC4C ; =0x020A0640
	strh r1, [r5, #0x16]
	ldrb r0, [r0, #0x1a]
	cmp r0, #0
	moveq r0, r6
	beq _020DA9D4
	mov r0, r10
	bl FUN_0206d554
	bl FUN_ov16_020f08a4
_020DA9D4:
	mov r11, r0, lsl #1
	add r1, r11, #7
	mov r0, #0xc
	mla r0, r1, r0, r9
	ldr r2, [r0, #0xc4]
	cmp r2, #0
	beq _020DAA30
	ldr r1, [r2, #0xc]
	ldr r0, [r2, #0x10]
	add r1, r2, r1
	mov r0, r0, lsr #1
	mla r0, r6, r0, r1
	mov r4, r8
	cmp r6, #0
	addne r4, r8, #1
	str r0, [sp]
	ldr r12, _020DAC50 ; =0x020A9440
	mov r0, r4
	add r1, r7, #4
	mov r2, #0xf
	mov r3, #4
	str r12, [sp, #4]
	bl FUN_ov16_020f191c
_020DAA30:
	add r1, r11, #8
	mov r0, #0xc
	mla r0, r1, r0, r9
	ldr r2, [r0, #0xc4]
	cmp r2, #0
	beq _020DAA88
	ldr r1, [r2, #0xc]
	ldr r0, [r2, #0x10]
	add r1, r2, r1
	mov r0, r0, lsr #1
	mla r0, r6, r0, r1
	mov r4, r8
	cmp r6, #0
	addeq r4, r8, #0xf
	str r0, [sp]
	ldr r11, _020DAC48 ; =0x020A8C40
	mov r0, r4
	add r1, r7, #4
	mov r2, #1
	mov r3, #4
	str r11, [sp, #4]
	bl FUN_ov16_020f191c
_020DAA88:
	ldr r0, [sp, #0x30]
	mov r4, r8
	add r1, r0, #0x20
	mov r0, #0xc
	mla r0, r1, r0, r9
	ldr r1, [r0, #0xc4]
	cmp r6, #0
	addne r4, r8, #8
	cmp r1, #0
	beq _020DAAD8
	ldr r0, [r1, #0xc]
	mov r2, #8
	add r0, r1, r0
	ldr r11, _020DAC48 ; =0x020A8C40
	str r0, [sp]
	mov r0, r4
	mov r1, r7
	mov r3, r2
	str r11, [sp, #4]
	bl FUN_ov16_020f191c
_020DAAD8:
	ldr r1, [sp, #0x30]
	mov r0, #0xc
	add r1, r1, #0x26
	mla r0, r1, r0, r9
	ldr r1, [r0, #0xc4]
	cmp r1, #0
	beq _020DAB1C
	ldr r0, [r1, #0xc]
	mov r2, #8
	add r0, r1, r0
	ldr r11, _020DAC40 ; =0x020A8440
	str r0, [sp]
	mov r0, r4
	mov r1, r7
	mov r3, r2
	str r11, [sp, #4]
	bl FUN_ov16_020f191c
_020DAB1C:
	ldr r0, _020DAC54 ; =0x0209BA20
	mov r4, r8
	cmp r6, #0
	mov r3, #0
	mov r1, r10
	mov r2, #0xf
	addne r4, r8, #0xe
	sub r10, r3, #1
	bl FUN_0204f02c
	cmp r0, #4
	addls pc, pc, r0, lsl #2
	b _020DAB7C
_020DAB4C: ; jump table
	b _020DAB7C ; case 0
	b _020DAB60 ; case 1
	b _020DAB68 ; case 2
	b _020DAB70 ; case 3
	b _020DAB78 ; case 4
_020DAB60:
	mov r10, #0x1b
	b _020DAB7C
_020DAB68:
	mov r10, #0x1c
	b _020DAB7C
_020DAB70:
	mov r10, #0x1d
	b _020DAB7C
_020DAB78:
	mov r10, #0x1e
_020DAB7C:
	cmp r10, #0
	mov r0, #0xc
	blt _020DABCC
	mla r0, r10, r0, r9
	ldr r2, [r0, #0xc4]
	cmp r2, #0
	beq _020DABCC
	ldrb r0, [r5, #0x1b]
	ldr r1, [r2, #0xc]
	ldr r10, _020DAC40 ; =0x020A8440
	cmp r0, #0
	add r0, r2, r1
	addne r0, r0, #8
	str r0, [sp]
	mov r2, #2
	mov r0, r4
	mov r3, r2
	add r1, r7, #6
	str r10, [sp, #4]
	bl FUN_ov16_020f191c
_020DABCC:
	ldrb r0, [r5, #0x1a]
	cmp r0, #0
	beq _020DAC28
	ldr r3, [r9, #0x238]
	cmp r6, #0
	moveq r6, #2
	movne r6, #8
	cmp r3, #0
	beq _020DAC28
	ldrb r1, [r5, #0x1a]
	ldr r2, [r3, #0xc]
	mov r0, #0x18
	add r2, r3, r2
	sub r1, r1, #1
	mla r0, r1, r0, r2
	ldr r4, _020DAC40 ; =0x020A8440
	str r0, [sp]
	add r0, r8, r6
	add r1, r7, #6
	mov r2, #6
	mov r3, #2
	str r4, [sp, #4]
	bl FUN_ov16_020f191c
_020DAC28:
	mov r0, r9
	mov r1, r5
	bl FUN_ov1_020da6b0
	add sp, sp, #8
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_020DAC3C: .word 0x0209A2C0
_020DAC40: .word 0x020A8440
_020DAC44: .word 0xCCCCCCCD
_020DAC48: .word 0x020A8C40
_020DAC4C: .word 0x020A0640
_020DAC50: .word 0x020A9440
_020DAC54: .word 0x0209BA20
	arm_func_end FUN_ov1_020da7e4

	arm_func_start FUN_ov1_020dac58
FUN_ov1_020dac58: ; 0x020DAC58
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, lr}
	mov r7, r0
	mov r0, #0
	mov r8, #0x3f000000
	str r0, [sp]
_020DAC6C:
	ldr r0, [sp]
	mov r4, #0
	add r6, r7, r0
	ldrb r0, [r6, #0x19]
	cmp r0, #0
	ble _020DAE20
	ldr r0, [sp]
	mov r1, #0x54
	mul r1, r0, r1
	add r0, r7, #0x1c
	add r11, r7, r1
	add r5, r0, r1
_020DAC9C:
	mov r0, #0x1c
	mul r10, r4, r0
	add r0, r11, r10
	ldrsh r0, [r0, #0x1c]
	bl FUN_ov16_020efa80
	movs r9, r0
	beq _020DAE10
	add r10, r5, r10
	bl FUN_0206cc84
	cmp r0, #0
	mov r0, r9
	ble _020DACE8
	bl FUN_0206cc84
	mov r0, r0, lsl #0xc
	bl FUN_0201f704
	mov r1, r0
	mov r0, r8
	bl FUN_02020274
	b _020DACFC
_020DACE8:
	bl FUN_0206cc84
	mov r0, r0, lsl #0xc
	bl FUN_0201f704
	mov r1, r8
	bl FUN_020204a4
_020DACFC:
	bl FUN_0201fdac
	mov r9, r0
	ldr r0, [r10, #8]
	cmp r9, r0
	bge _020DAD84
	ldr r0, _020DAE38 ; =0x0209A110
	ldr r0, [r0]
	cmp r0, #0
	mov r0, r0, lsl #0xc
	beq _020DAD38
	bl FUN_0201f74c
	mov r1, r0
	mov r0, r8
	bl FUN_02020274
	b _020DAD44
_020DAD38:
	bl FUN_0201f74c
	mov r1, r8
	bl FUN_020204a4
_020DAD44:
	bl FUN_0201fdac
	ldr r2, [r10, #4]
	mov r1, #0x10000
	sub r2, r2, r9
	smull r3, r0, r2, r0
	adds r3, r3, #0x800
	adc r2, r0, #0
	mov r0, r3, lsr #0xc
	orr r0, r0, r2, lsl #20
	bl FX_Div
	ldr r1, [r10, #8]
	sub r0, r1, r0
	cmp r0, r9
	movlt r0, r9
	str r0, [r10, #8]
	b _020DAE04
_020DAD84:
	bne _020DAE10
	ldr r0, [r10, #0x10]
	cmp r9, r0
	bge _020DAE10
	ldr r0, _020DAE38 ; =0x0209A110
	ldr r0, [r0]
	cmp r0, #0
	mov r0, r0, lsl #0xc
	beq _020DADBC
	bl FUN_0201f74c
	mov r1, r0
	mov r0, r8
	bl FUN_02020274
	b _020DADC8
_020DADBC:
	bl FUN_0201f74c
	mov r1, r8
	bl FUN_020204a4
_020DADC8:
	bl FUN_0201fdac
	ldr r2, [r10, #0xc]
	mov r1, #0x10000
	sub r2, r2, r9
	smull r3, r0, r2, r0
	adds r3, r3, #0x800
	adc r2, r0, #0
	mov r0, r3, lsr #0xc
	orr r0, r0, r2, lsl #20
	bl FX_Div
	ldr r1, [r10, #0x10]
	sub r0, r1, r0
	cmp r0, r9
	movlt r0, r9
	str r0, [r10, #0x10]
_020DAE04:
	mov r1, r10
	mov r0, r7
	bl FUN_ov1_020da6b0
_020DAE10:
	add r4, r4, #1
	ldrb r0, [r6, #0x19]
	cmp r4, r0
	blt _020DAC9C
_020DAE20:
	ldr r0, [sp]
	add r0, r0, #1
	str r0, [sp]
	cmp r0, #2
	blt _020DAC6C
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_020DAE38: .word 0x0209A110
	arm_func_end FUN_ov1_020dac58

	arm_func_start FUN_ov1_020dae3c
FUN_ov1_020dae3c: ; 0x020DAE3C
	stmfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, lr}
	sub sp, sp, #0xc
	mov r4, r0
	mov r7, #0
	add r0, r4, #0x54
	mov r8, r7
	mov r9, r7
	add r6, r4, #0x1c
	add r5, r4, #0x38
	str r0, [sp, #8]
_020DAE64:
	add r11, r4, r9
	ldrb r0, [r11, #0x19]
	cmp r0, #1
	beq _020DAE88
	cmp r0, #2
	beq _020DAEA8
	cmp r0, #3
	beq _020DAEF0
	b _020DAF64
_020DAE88:
	mov r0, #0x54
	mla r0, r9, r0, r6
	str r8, [sp]
	str r0, [sp, #4]
	mov r0, r4
	mov r1, r7
	mov r2, #8
	b _020DAF5C
_020DAEA8:
	mov r0, #0x54
	mul r10, r9, r0
	str r8, [sp]
	add r0, r6, r10
	str r0, [sp, #4]
	mov r0, r4
	mov r1, r7
	mov r2, #0xd
	mov r3, r9
	bl FUN_ov1_020da7e4
	add r1, r8, #1
	str r1, [sp]
	add r0, r5, r10
	str r0, [sp, #4]
	mov r0, r4
	mov r1, r7
	mov r2, #3
	b _020DAF5C
_020DAEF0:
	mov r0, #0x54
	mul r10, r9, r0
	str r8, [sp]
	add r0, r6, r10
	str r0, [sp, #4]
	mov r0, r4
	mov r1, r7
	mov r2, #8
	mov r3, r9
	bl FUN_ov1_020da7e4
	add r0, r8, #1
	str r0, [sp]
	add r0, r5, r10
	str r0, [sp, #4]
	mov r0, r4
	mov r1, r7
	mov r2, #0
	mov r3, r9
	bl FUN_ov1_020da7e4
	ldr r0, [sp, #8]
	add r1, r8, #2
	str r1, [sp]
	add r0, r0, r10
	str r0, [sp, #4]
	mov r0, r4
	mov r1, r7
	mov r2, #0x10
_020DAF5C:
	mov r3, r9
	bl FUN_ov1_020da7e4
_020DAF64:
	ldrb r0, [r11, #0x19]
	add r7, r7, #0x10
	add r9, r9, #1
	add r8, r8, r0
	cmp r9, #2
	blt _020DAE64
	add sp, sp, #0xc
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
	arm_func_end FUN_ov1_020dae3c

	arm_func_start FUN_ov1_020daf84
FUN_ov1_020daf84: ; 0x020DAF84
	stmfd sp!, {r4, lr}
	mov r4, r0
	ldr r1, [r4, #8]
	cmp r1, #1
	beq _020DAFA4
	cmp r1, #3
	beq _020DB034
	ldmfd sp!, {r4, pc}
_020DAFA4:
	add r0, r4, #0xc4
	mov r1, #0x35
	bl FUN_ov16_020f330c
	cmp r0, #0
	ldmeqfd sp!, {r4, pc}
	ldr r0, [r4, #0xc]
	cmp r0, #1
	beq _020DAFD8
	cmp r0, #2
	beq _020DAFF0
	cmp r0, #3
	beq _020DB000
	ldmfd sp!, {r4, pc}
_020DAFD8:
	mov r0, r4
	bl FUN_ov1_020d942c
	mov r0, r4
	mov r1, #2
	bl FUN_ov1_020d9254
	ldmfd sp!, {r4, pc}
_020DAFF0:
	mov r0, r4
	mov r1, #3
	bl FUN_ov1_020d9254
	ldmfd sp!, {r4, pc}
_020DB000:
	mov r0, r4
	bl FUN_ov1_020da114
	add r0, r4, #0x31c
	bl FUN_ov16_020f33fc
	add r0, r4, #0x328
	bl FUN_ov16_020f33fc
	add r0, r4, #0x334
	bl FUN_ov16_020f33fc
	mov r1, #2
	mov r0, #0
	str r1, [r4, #8]
	str r0, [r4, #0x10]
	ldmfd sp!, {r4, pc}
_020DB034:
	bl FUN_ov1_020da324
	mov r0, r4
	bl FUN_ov1_020dac58
	ldr r2, [r4, #0x340]
	ldr r3, _020DB058 ; =0x020A8440
	mov r0, #0x16
	mov r1, #0
	bl FUN_ov1_020dbccc
	ldmfd sp!, {r4, pc}
_020DB058: .word 0x020A8440
	arm_func_end FUN_ov1_020daf84

	arm_func_start FUN_ov1_020db05c
FUN_ov1_020db05c: ; 0x020DB05C
	stmfd sp!, {r4, r5, r6, lr}
	mov r4, r0
	ldr r1, [r4, #8]
	cmp r1, #2
	beq _020DB07C
	cmp r1, #3
	beq _020DB104
	ldmfd sp!, {r4, r5, r6, pc}
_020DB07C:
	bl FUN_ov1_020d94b0
	cmp r0, #0
	ldmeqfd sp!, {r4, r5, r6, pc}
	mov r0, r4
	bl FUN_ov1_020da1ac
	ldr r0, _020DB17C ; =0x020A0640
	ldrb r0, [r0, #0x1a]
	cmp r0, #0
	beq _020DB0E8
	ldr r2, _020DB180 ; =0x04001040
	ldr r1, _020DB184 ; =0x0000B0BF
	mov r0, #0xf
	strh r1, [r2]
	strh r0, [r2, #4]
	sub r1, r2, #0x40
	ldr r0, [r1]
	bic r0, r0, #0xe000
	orr r0, r0, #0x2000
	str r0, [r1]
	ldrh r0, [r2, #8]
	bic r0, r0, #0x3f
	orr r0, r0, #0xf
	strh r0, [r2, #8]
	ldrh r0, [r2, #0xa]
	bic r0, r0, #0x3f
	orr r0, r0, #0x2f
	strh r0, [r2, #0xa]
_020DB0E8:
	mov r0, r4
	ldr r1, [r0]
	ldr r1, [r1, #0x4c]
	blx r1
	mov r0, #3
	str r0, [r4, #8]
	ldmfd sp!, {r4, r5, r6, pc}
_020DB104:
	ldr r4, _020DB188 ; =0x020A9440
	mov r6, #0x800
	mov r0, r4
	mov r1, r6
	bl DC_FlushRange
	mov r5, #0
	mov r0, r4
	mov r1, r5
	mov r2, r6
	bl FUN_0200546c
	ldr r4, _020DB18C ; =0x020A8C40
	mov r1, r6
	mov r0, r4
	bl DC_FlushRange
	mov r0, r4
	mov r1, r5
	mov r2, r6
	bl FUN_0200554c
	ldr r4, _020DB190 ; =0x020A8440
	mov r1, r6
	mov r0, r4
	bl DC_FlushRange
	mov r0, r4
	mov r1, r5
	mov r2, r6
	bl FUN_0200562c
	mov r0, #1
	bl FUN_ov16_020f0f58
	bl FUN_ov16_020f10c8
	ldmfd sp!, {r4, r5, r6, pc}
_020DB17C: .word 0x020A0640
_020DB180: .word 0x04001040
_020DB184: .word 0x0000B0BF
_020DB188: .word 0x020A9440
_020DB18C: .word 0x020A8C40
_020DB190: .word 0x020A8440
	arm_func_end FUN_ov1_020db05c

	arm_func_start FUN_ov1_020db194
FUN_ov1_020db194: ; 0x020DB194
	stmfd sp!, {r4, lr}
	mov r4, r0
	mov r3, #0
	mov r0, #6
	sub r2, r3, #1
	mov r1, r0
	str r3, [r4, #8]
	str r2, [r4, #0x14]
	str r3, [r4, #0x340]
	bl FUN_ov16_020f2edc
	str r0, [r4, #0x344]
	mov r0, r4
	ldr r1, [r0]
	ldr r1, [r1, #0x6c]
	blx r1
	bl FUN_ov1_020db2d8
	strb r0, [r4, #0x18]
	mov r0, r4
	mov r1, #1
	bl FUN_ov1_020d9254
	ldmfd sp!, {r4, pc}
	arm_func_end FUN_ov1_020db194

	arm_func_start FUN_ov1_020db1e8
FUN_ov1_020db1e8: ; 0x020DB1E8
	stmfd sp!, {r4, lr}
	ldr r1, _020DB240 ; =0x020A0640
	mov r4, r0
	ldrb r0, [r1, #0x1a]
	cmp r0, #0
	ldrne r1, _020DB244 ; =0x04001000
	ldrne r0, [r1]
	bicne r0, r0, #0xe000
	strne r0, [r1]
	add r0, r4, #0xc4
	mov r1, #0x35
	bl FUN_ov16_020f338c
	mov r0, r4
	bl FUN_ov1_020d9488
	ldr r1, [r4, #0x344]
	cmp r1, #0
	ldmeqfd sp!, {r4, pc}
	ldr r0, _020DB248 ; =0x0209A250
	bl FUN_0202e1c0
	mov r0, #0
	str r0, [r4, #0x344]
	ldmfd sp!, {r4, pc}
_020DB240: .word 0x020A0640
_020DB244: .word 0x04001000
_020DB248: .word 0x0209A250
	arm_func_end FUN_ov1_020db1e8

	arm_func_start FUN_ov1_020db24c
FUN_ov1_020db24c: ; 0x020DB24C
	stmfd sp!, {r4, lr}
	mov r4, r0
	bl FUN_0201e078
	mov r0, r4
	ldmfd sp!, {r4, pc}
	arm_func_end FUN_ov1_020db24c

	arm_func_start FUN_ov1_020db260
FUN_ov1_020db260: ; 0x020DB260
	ldr r0, _020DB26C ; =0x0209BA20
	ldr r12, _020DB270 ; =FUN_02072a0c
	bx r12
_020DB26C: .word 0x0209BA20
_020DB270: .word FUN_02072a0c
	arm_func_end FUN_ov1_020db260

	arm_func_start FUN_ov1_020db274
FUN_ov1_020db274: ; 0x020DB274
	stmfd sp!, {r3, lr}
	ldr r0, _020DB2A4 ; =0x020A0640
	ldrb r1, [r0, #0x8c]
	cmp r1, #0
	beq _020DB294
	ldr r0, _020DB2A8 ; =0x0209BA20
	bl FUN_02072ac4
	ldmfd sp!, {r3, pc}
_020DB294:
	ldrb r1, [r0, #0x8f]
	ldr r0, _020DB2A8 ; =0x0209BA20
	bl FUN_02072a24
	ldmfd sp!, {r3, pc}
_020DB2A4: .word 0x020A0640
_020DB2A8: .word 0x0209BA20
	arm_func_end FUN_ov1_020db274

	arm_func_start FUN_ov1_020db2ac
FUN_ov1_020db2ac: ; 0x020DB2AC
	ldr r0, _020DB2B8 ; =0x0209BA20
	ldr r12, _020DB2BC ; =FUN_02072adc
	bx r12
_020DB2B8: .word 0x0209BA20
_020DB2BC: .word FUN_02072adc
	arm_func_end FUN_ov1_020db2ac

	arm_func_start FUN_ov1_020db2c0
FUN_ov1_020db2c0: ; 0x020DB2C0
	ldr r0, _020DB2D0 ; =0x02099EF0
	ldr r12, _020DB2D4 ; =FUN_ov132_02145fb0
	ldr r0, [r0]
	bx r12
_020DB2D0: .word 0x02099EF0
_020DB2D4: .word FUN_ov132_02145fb0
	arm_func_end FUN_ov1_020db2c0

	arm_func_start FUN_ov1_020db2d8
FUN_ov1_020db2d8: ; 0x020DB2D8
	ldr r0, _020DB2E8 ; =0x02099EF0
	ldr r12, _020DB2EC ; =FUN_ov131_021462a0 ; may be ov132
	ldr r0, [r0]
	bx r12
_020DB2E8: .word 0x02099EF0
_020DB2EC: .word FUN_ov131_021462a0 ; may be ov132
	arm_func_end FUN_ov1_020db2d8

	arm_func_start FUN_ov1_020db2f0
FUN_ov1_020db2f0: ; 0x020DB2F0
	ldr r0, _020DB2FC ; =0x0209BA20
	ldr r12, _020DB300 ; =FUN_020731a4
	bx r12
_020DB2FC: .word 0x0209BA20
_020DB300: .word FUN_020731a4
	arm_func_end FUN_ov1_020db2f0

	arm_func_start FUN_ov1_020db304
FUN_ov1_020db304: ; 0x020DB304
	ldr r0, _020DB310 ; =0x0209BA20
	ldr r12, _020DB314 ; =FUN_02072b0c
	bx r12
_020DB310: .word 0x0209BA20
_020DB314: .word FUN_02072b0c
	arm_func_end FUN_ov1_020db304

	arm_func_start FUN_ov1_020db318
FUN_ov1_020db318: ; 0x020DB318
	stmfd sp!, {r3, lr}
	ldr r0, _020DB334 ; =0x0209BA20
	bl FUN_020731a4
	cmp r0, #0
	moveq r0, #1
	movne r0, #0
	ldmfd sp!, {r3, pc}
_020DB334: .word 0x0209BA20
	arm_func_end FUN_ov1_020db318

	arm_func_start FUN_ov1_020db338
FUN_ov1_020db338: ; 0x020DB338
	ldr r0, _020DB3C8 ; =0x020A0640
	ldrb r0, [r0, #0x8f]
	cmp r0, #2
	movls r0, #1
	bls _020DB3B8
	cmp r0, #3
	blo _020DB360
	cmp r0, #5
	movls r0, #2
	bls _020DB3B8
_020DB360:
	ldr r0, _020DB3C8 ; =0x020A0640
	ldrb r0, [r0, #0x8f]
	cmp r0, #6
	blo _020DB37C
	cmp r0, #8
	movls r0, #3
	bls _020DB3B8
_020DB37C:
	ldr r0, _020DB3C8 ; =0x020A0640
	ldrb r0, [r0, #0x8f]
	cmp r0, #9
	blo _020DB398
	cmp r0, #0xb
	movls r0, #4
	bls _020DB3B8
_020DB398:
	ldr r0, _020DB3C8 ; =0x020A0640
	ldrb r0, [r0, #0x8f]
	cmp r0, #0xc
	blo _020DB3B4
	cmp r0, #0xe
	movls r0, #5
	bls _020DB3B8
_020DB3B4:
	mvn r0, #0
_020DB3B8:
	cmp r0, #5
	moveq r0, #1
	movne r0, #0
	bx lr
_020DB3C8: .word 0x020A0640
	arm_func_end FUN_ov1_020db338

	arm_func_start FUN_ov1_020db3cc
FUN_ov1_020db3cc: ; 0x020DB3CC
	ldr r0, _020DB3D8 ; =0x0209BA20
	ldr r12, _020DB3DC ; =FUN_02072af4
	bx r12
_020DB3D8: .word 0x0209BA20
_020DB3DC: .word FUN_02072af4
	arm_func_end FUN_ov1_020db3cc

	arm_func_start FUN_ov1_020db3e0
FUN_ov1_020db3e0: ; 0x020DB3E0
	stmfd sp!, {r4, r5, r6, lr}
	ldr r5, _020DB4E8 ; =0x020A0640
	ldrb r1, [r5, #0x8f]
	cmp r1, #0xe
	addls pc, pc, r1, lsl #2
	ldmfd sp!, {r4, r5, r6, pc}
_020DB3F8: ; jump table
	b _020DB434 ; case 0
	b _020DB458 ; case 1
	b _020DB47C ; case 2
	b _020DB434 ; case 3
	b _020DB458 ; case 4
	b _020DB47C ; case 5
	b _020DB434 ; case 6
	b _020DB458 ; case 7
	b _020DB47C ; case 8
	b _020DB434 ; case 9
	b _020DB458 ; case 10
	b _020DB47C ; case 11
	b _020DB434 ; case 12
	b _020DB458 ; case 13
	b _020DB47C ; case 14
_020DB434:
	cmp r0, #0x37
	beq _020DB444
	cmp r0, #0x47
	ldmnefd sp!, {r4, r5, r6, pc}
_020DB444:
	ldr r0, _020DB4E8 ; =0x020A0640
	ldrb r1, [r0, #0x8f]
	add r1, r1, #1
	strb r1, [r0, #0x8f]
	ldmfd sp!, {r4, r5, r6, pc}
_020DB458:
	cmp r0, #0x38
	beq _020DB468
	cmp r0, #0x46
	ldmnefd sp!, {r4, r5, r6, pc}
_020DB468:
	ldr r0, _020DB4E8 ; =0x020A0640
	ldrb r1, [r0, #0x8f]
	add r1, r1, #1
	strb r1, [r0, #0x8f]
	ldmfd sp!, {r4, r5, r6, pc}
_020DB47C:
	cmp r0, #0x3c
	ldmnefd sp!, {r4, r5, r6, pc}
	ldr r4, _020DB4EC ; =0x02099EF0
	ldr r0, [r4]
	bl FUN_ov132_021447c8
	cmp r0, #0xc
	ldmeqfd sp!, {r4, r5, r6, pc}
	mov r6, #0
	str r6, [r5]
	str r6, [r5, #4]
	ldrb r1, [r5, #0x8f]
	ldr r0, [r4]
	bl FUN_ov131_02145c40 ; may be ov132
	strb r0, [r5, #0x8f]
	ldr r0, [r4]
	bl FUN_ov132_02144780
	cmp r0, #1
	ldreqb r0, [r5, #0x8f]
	cmpeq r0, #0xc
	ldmnefd sp!, {r4, r5, r6, pc}
	ldr r0, [r4]
	mov r1, #8
	bl FUN_ov132_0214478c
	ldr r0, [r4]
	mov r1, r6
	bl FUN_ov132_021447d0
	ldmfd sp!, {r4, r5, r6, pc}
_020DB4E8: .word 0x020A0640
_020DB4EC: .word 0x02099EF0
	arm_func_end FUN_ov1_020db3e0

	arm_func_start FUN_ov1_020db4f0
FUN_ov1_020db4f0: ; 0x020DB4F0
	stmfd sp!, {r3, r4, r5, r6, r7, r8, lr}
	sub sp, sp, #0x1c
	ldr r2, _020DB5F4 ; =0x020A0640
	mov r6, r0
	ldrb r0, [r2, #0x1a]
	mov r4, r1
	cmp r0, #0
	bne _020DB520
	bl FUN_ov16_020f068c ; may be ov17
	cmp r0, #0
	addeq sp, sp, #0x1c
	ldmeqfd sp!, {r3, r4, r5, r6, r7, r8, pc}
_020DB520:
	ldr r0, [r6, #4]
	cmp r0, #0
	addeq sp, sp, #0x1c
	ldmeqfd sp!, {r3, r4, r5, r6, r7, r8, pc}
	ldrh r3, [r6, #0xc]
	ldrh r2, [r6, #0xe]
	mov r5, #0
	mov r1, r5
	mul r2, r3, r2
	mov r2, r2, lsl #5
	bl MI_CpuFill8
	ldr r0, _020DB5F8 ; =0x0209BA20
	mov r1, r4
	bl FUN_0207249c
	movs r4, r0
	beq _020DB5D4
	ldr r7, _020DB5FC ; =0x02099EDC
	mov r8, #1
	ldr r0, [r7]
	mov r1, r8
	mov r2, r5
	bl FUN_02043780
	mov r0, #3
	stmia sp, {r0, r8}
	ldr r0, [r6, #4]
	mov r3, r4
	str r0, [sp, #8]
	ldrh r0, [r6, #0xc]
	mov r1, r5
	mov r0, r0, lsl #3
	str r0, [sp, #0xc]
	ldrh r0, [r6, #0xe]
	mov r0, r0, lsl #3
	str r0, [sp, #0x10]
	str r5, [sp, #0x14]
	str r5, [sp, #0x18]
	ldrh r2, [r6, #0xe]
	ldr r0, [r7]
	mov r2, r2, lsl #3
	ldr r4, [r0]
	sub r2, r2, #0xc
	add r2, r2, r2, lsr #31
	ldr r4, [r4, #8]
	mov r2, r2, asr #1
	blx r4
_020DB5D4:
	ldrh r2, [r6, #0xc]
	ldrh r1, [r6, #0xe]
	ldr r0, [r6, #4]
	mul r1, r2, r1
	mov r1, r1, lsl #5
	bl DC_FlushRange
	add sp, sp, #0x1c
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, pc}
_020DB5F4: .word 0x020A0640
_020DB5F8: .word 0x0209BA20
_020DB5FC: .word 0x02099EDC
	arm_func_end FUN_ov1_020db4f0

	arm_func_start FUN_ov1_020db600
FUN_ov1_020db600: ; 0x020DB600
	stmfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, lr}
	sub sp, sp, #0x2c
	mov r5, r0
	ldr r0, [r5]
	mov r11, r1
	cmp r0, #0
	ldrne r0, [r5, #4]
	str r2, [sp, #0x1c]
	cmpne r0, #0
	movne r0, #1
	moveq r0, #0
	str r3, [sp, #0x20]
	cmp r0, #0
	mov r7, #0
	addeq sp, sp, #0x2c
	ldmeqfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
	mov r0, r5
	bl FUN_ov16_020f2f20
	ldr r1, _020DB95C ; =0x020E9014
	add r0, sp, #0x28
	bl FUN_02023c40
	ldr r0, [sp, #0x20]
	mov r9, #0
	mov r4, r9
	cmp r0, #0
	ble _020DB934
	mvn r0, #0
	ldr r6, _020DB960 ; =0x02099ED0
	str r0, [sp, #0x24]
_020DB674:
	ldr r0, [sp, #0x1c]
	ldr r2, [r0, r4, lsl #2]
	cmp r2, #0
	blt _020DB934
	ldr r0, _020DB964 ; =0x02099EF0
	mov r1, r11
	ldr r0, [r0]
	bl FUN_ov132_02143c08
	movs r8, r0
	beq _020DB934
	ldrsh r0, [r8, #4]
	bl FUN_ov16_020efa80
	movs r10, r0
	beq _020DB934
	ldrb r0, [r8, #8]
	cmp r0, #0xa
	addls pc, pc, r0, lsl #2
	b _020DB708
_020DB6BC: ; jump table
	b _020DB708 ; case 0
	b _020DB6E8 ; case 1
	b _020DB708 ; case 2
	b _020DB708 ; case 3
	b _020DB6F0 ; case 4
	b _020DB708 ; case 5
	b _020DB708 ; case 6
	b _020DB6F8 ; case 7
	b _020DB708 ; case 8
	b _020DB708 ; case 9
	b _020DB700 ; case 10
_020DB6E8:
	mov r1, r7
	b _020DB70C
_020DB6F0:
	mov r1, #1
	b _020DB70C
_020DB6F8:
	mov r1, #2
	b _020DB70C
_020DB700:
	mov r1, #3
	b _020DB70C
_020DB708:
	ldr r1, [sp, #0x24]
_020DB70C:
	cmp r1, #0
	blt _020DB934
	ldr r0, _020DB968 ; =0x020E8FE4
	mov r2, r9
	ldr r3, [r0, r1, lsl #2]
	mov r0, #3
	stmia sp, {r0, r7}
	ldr r0, [r5, #4]
	mov r1, r7
	str r0, [sp, #8]
	ldrh r0, [r5, #0xc]
	mov r0, r0, lsl #3
	str r0, [sp, #0xc]
	ldrh r0, [r5, #0xe]
	mov r0, r0, lsl #3
	str r0, [sp, #0x10]
	str r7, [sp, #0x14]
	str r7, [sp, #0x18]
	ldr r0, [r6]
	ldr r12, [r0]
	ldr r12, [r12, #8]
	blx r12
	ldr r2, [r8]
	ldr r0, _020DB96C ; =0x88888889
	umull r1, r0, r2, r0
	ldr r1, _020DB96C ; =0x88888889
	mov r0, r0, lsr #4
	umull r1, r8, r0, r1
	mov r8, r8, lsr #5
	cmp r8, #0xa
	blt _020DB7EC
	ldr r0, _020DB970 ; =0x66666667
	add r3, sp, #0x28
	smull r1, r2, r0, r8
	mov r0, r8, lsr #0x1f
	add r2, r0, r2, asr #2
	add r0, r2, #0x4f
	strb r0, [sp, #0x29]
	mov r0, #3
	stmia sp, {r0, r7}
	ldr r0, [r5, #4]
	mov r1, #0x10
	str r0, [sp, #8]
	ldrh r0, [r5, #0xc]
	mov r2, r9
	mov r0, r0, lsl #3
	str r0, [sp, #0xc]
	ldrh r0, [r5, #0xe]
	mov r0, r0, lsl #3
	str r0, [sp, #0x10]
	str r7, [sp, #0x14]
	str r7, [sp, #0x18]
	ldr r0, [r6]
	ldr r12, [r0]
	ldr r12, [r12, #8]
	blx r12
_020DB7EC:
	ldr r1, _020DB970 ; =0x66666667
	add r3, sp, #0x28
	smull r2, r0, r1, r8
	mov r1, r8, lsr #0x1f
	add r0, r1, r0, asr #2
	mov r1, #0xa
	smull r0, r2, r1, r0
	sub r0, r8, r0
	add r0, r0, #0x4f
	strb r0, [sp, #0x29]
	mov r0, #3
	stmia sp, {r0, r7}
	ldr r0, [r5, #4]
	mov r1, #0x18
	str r0, [sp, #8]
	ldrh r0, [r5, #0xc]
	mov r2, r9
	mov r0, r0, lsl #3
	str r0, [sp, #0xc]
	ldrh r0, [r5, #0xe]
	mov r0, r0, lsl #3
	str r0, [sp, #0x10]
	str r7, [sp, #0x14]
	str r7, [sp, #0x18]
	ldr r0, [r6]
	ldr r8, [r0]
	ldr r8, [r8, #8]
	blx r8
	mov r0, #3
	stmia sp, {r0, r7}
	ldr r0, [r5, #4]
	ldr r3, _020DB974 ; =0x020E9018
	str r0, [sp, #8]
	ldrh r0, [r5, #0xc]
	mov r1, #0x20
	mov r2, r9
	mov r0, r0, lsl #3
	str r0, [sp, #0xc]
	ldrh r0, [r5, #0xe]
	mov r0, r0, lsl #3
	str r0, [sp, #0x10]
	str r7, [sp, #0x14]
	str r7, [sp, #0x18]
	ldr r0, [r6]
	ldr r8, [r0]
	ldr r8, [r8, #8]
	blx r8
	mov r0, r10
	bl FUN_0206d5f0
	cmp r11, r0
	mov r0, #3
	mov r1, #0x30
	beq _020DB8DC
	stmia sp, {r0, r7}
	ldr r0, [r5, #4]
	mov r2, r9
	str r0, [sp, #8]
	ldrh r0, [r5, #0xc]
	ldr r3, _020DB978 ; =0x020E901C
	b _020DB8F4
_020DB8DC:
	stmia sp, {r0, r7}
	ldr r0, [r5, #4]
	add r3, r10, #0x1c
	str r0, [sp, #8]
	ldrh r0, [r5, #0xc]
	mov r2, r9
_020DB8F4:
	mov r0, r0, lsl #3
	str r0, [sp, #0xc]
	ldrh r0, [r5, #0xe]
	mov r0, r0, lsl #3
	str r0, [sp, #0x10]
	str r7, [sp, #0x14]
	str r7, [sp, #0x18]
	ldr r0, [r6]
	ldr r8, [r0]
	ldr r8, [r8, #8]
	blx r8
	ldr r0, [sp, #0x20]
	add r4, r4, #1
	add r9, r9, #8
	cmp r4, r0
	blt _020DB674
_020DB934:
	ldrh r2, [r5, #0xc]
	ldrh r1, [r5, #0xe]
	ldr r0, [r5, #4]
	mul r1, r2, r1
	mov r1, r1, lsl #5
	bl DC_FlushRange
	mov r0, #1
	strb r0, [r5, #0x10]
	add sp, sp, #0x2c
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
_020DB95C: .word 0x020E9014
_020DB960: .word 0x02099ED0
_020DB964: .word 0x02099EF0
_020DB968: .word 0x020E8FE4
_020DB96C: .word 0x88888889
_020DB970: .word 0x66666667
_020DB974: .word 0x020E9018
_020DB978: .word 0x020E901C
	arm_func_end FUN_ov1_020db600

	arm_func_start FUN_ov1_020db97c
FUN_ov1_020db97c: ; 0x020DB97C
	stmfd sp!, {r3, lr}
	sub sp, sp, #0x10
	add lr, sp, #0
	mov r12, #0
	str r12, [lr]
	str r12, [lr, #4]
	str r12, [lr, #8]
	str r0, [sp]
	str r1, [sp, #4]
	mov r0, lr
	mov r1, r3
	str r12, [lr, #0xc]
	str r2, [sp, #8]
	bl FUN_ov1_020db9bc
	add sp, sp, #0x10
	ldmfd sp!, {r3, pc}
	arm_func_end FUN_ov1_020db97c

	arm_func_start FUN_ov1_020db9bc
FUN_ov1_020db9bc: ; 0x020DB9BC
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, lr}
	ldr r4, _020DBA84 ; =0x0209AEC0
	mov r10, r0
	mov r0, r4
	mov r9, r1
	bl FUN_02046730
	mov r6, r0
	mov r0, r4
	bl FUN_02046744
	mov r8, #0
	mov r7, r0
	mov r4, r8
	mov r5, #1
	ldr r11, _020DBA88 ; =0x0209A4E0
	b _020DBA74
_020DB9F8:
	cmp r6, r8
	beq _020DBA70
	tst r7, r5, lsl r8
	beq _020DBA70
	mov r0, r8
	mov r1, r4
	bl FUN_ov16_020f0634
	ldrb r2, [r0, #2]
	ldrb r1, [r11, #2]
	cmp r2, r1
	beq _020DBA34
	cmp r9, #0
	beq _020DBA70
	mov r0, r4
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_020DBA34:
	mov r3, r4
	b _020DBA5C
_020DBA3C:
	ldrb r2, [r0, #3]
	ldr r1, [r10, r3, lsl #2]
	cmp r2, r1
	beq _020DBA64
	cmp r1, #0
	moveq r0, #0
	ldmeqfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
	add r3, r3, #1
_020DBA5C:
	cmp r3, #0x10
	blt _020DBA3C
_020DBA64:
	cmp r3, #0x10
	movge r0, #0
	ldmgefd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_020DBA70:
	add r8, r8, #1
_020DBA74:
	cmp r8, #4
	blt _020DB9F8
	mov r0, #1
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_020DBA84: .word 0x0209AEC0
_020DBA88: .word 0x0209A4E0
	arm_func_end FUN_ov1_020db9bc

	arm_func_start FUN_ov1_020dba8c
FUN_ov1_020dba8c: ; 0x020DBA8C
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, lr}
	ldr r4, _020DBB3C ; =0x0209AEC0
	mov r10, r0
	mov r0, r4
	mov r9, r1
	mov r8, r2
	bl FUN_02046730
	mov r5, r0
	mov r0, r4
	bl FUN_02046744
	mov r6, r0
	mov r7, #0
	mov r11, #1
	b _020DBB2C
_020DBAC4:
	cmp r5, r7
	beq _020DBB28
	tst r6, r11, lsl r7
	beq _020DBB28
	bl FUN_ov16_020f081c
	mov r4, r0
	mov r0, r7
	bl FUN_ov16_020f085c
	cmp r4, r0
	bne _020DBB28
	mov r0, r7
	mov r1, #0
	bl FUN_ov16_020f0634
	ldr r1, _020DBB40 ; =0x0209A4E0
	ldrb r2, [r0, #2]
	ldrb r1, [r1, #2]
	cmp r2, r1
	movne r0, #0
	ldmnefd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
	ldrb r0, [r0, #3]
	cmp r0, r10
	cmpne r0, r9
	cmpne r0, r8
	movne r0, #0
	ldmnefd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_020DBB28:
	add r7, r7, #1
_020DBB2C:
	cmp r7, #4
	blt _020DBAC4
	mov r0, #1
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_020DBB3C: .word 0x0209AEC0
_020DBB40: .word 0x0209A4E0
	arm_func_end FUN_ov1_020dba8c

	arm_func_start FUN_ov1_020dbb44
FUN_ov1_020dbb44: ; 0x020DBB44
	stmfd sp!, {r4, r5, r6, r7, r8, r9, r10, lr}
	sub sp, sp, #8
	ldr r8, _020DBCBC ; =0x020A0640
	mov r5, #0
	ldrb r0, [r8, #0x1a]
	mov r4, #1
	cmp r0, #0
	beq _020DBCB0
	ldrb r0, [r8, #0x8c]
	cmp r0, #0
	bne _020DBCB0
	ldr r6, _020DBCC0 ; =0x0209AEC0
	mov r0, r6
	bl FUN_020467c0
	cmp r0, #0
	beq _020DBCB0
	mov r0, r6
	bl FUN_02046744
	ldr r7, _020DBCC4 ; =0x02099EF0
	mov r6, r0
	ldr r0, [r7]
	bl FUN_ov126_021391b8
	mov r0, r5
	bl FUN_ov16_020f09c0
	str r0, [sp]
	mov r0, r4
	bl FUN_ov16_020f09c0
	ldr r1, [sp]
	str r0, [sp, #4]
	cmp r1, #0
	bne _020DBBE8
	mov r0, r5
	bl FUN_ov16_020f0a30
	cmp r0, #0
	bne _020DBBE8
	ldr r0, [r7]
	mov r3, #2
	mov r1, r5
	mov r2, r4
	strb r3, [r8, #0x96]
	bl FUN_ov126_021390d0
_020DBBE8:
	ldr r0, [sp, #4]
	cmp r0, #0
	bne _020DBC24
	mov r0, r4
	bl FUN_ov16_020f0a30
	cmp r0, #0
	bne _020DBC24
	ldr r0, _020DBCC4 ; =0x02099EF0
	ldr r3, _020DBCBC ; =0x020A0640
	ldr r0, [r0]
	mov r7, #2
	mov r1, r4
	mov r2, r4
	strb r7, [r3, #0x97]
	bl FUN_ov126_021390d0
_020DBC24:
	mov r10, #0
	ldr r8, _020DBCC8 ; =0x020A0670
	b _020DBC94
_020DBC30:
	mov r7, r5
	cmp r10, #0
	movne r7, r4
	mov r0, r7
	bl FUN_ov16_020f0920
	mov r9, r0
	mov r0, r7
	bl FUN_ov16_020f0a30
	cmp r0, #0
	bne _020DBC90
	tst r6, r4, lsl r9
	bne _020DBC90
	mov r9, r5
	b _020DBC88
_020DBC68:
	tst r6, r4, lsl r9
	beq _020DBC84
	mov r0, r9
	bl FUN_ov16_020f085c
	cmp r7, r0
	streqb r9, [r8, r7]
	beq _020DBC90
_020DBC84:
	add r9, r9, #1
_020DBC88:
	cmp r9, #4
	blt _020DBC68
_020DBC90:
	add r10, r10, #1
_020DBC94:
	cmp r10, #2
	blt _020DBC30
	ldr r0, _020DBCC0 ; =0x0209AEC0
	bl FUN_020467ac
	add sp, sp, #8
	mov r0, #1
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, pc}
_020DBCB0:
	mov r0, #0
	add sp, sp, #8
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, pc}
_020DBCBC: .word 0x020A0640
_020DBCC0: .word 0x0209AEC0
_020DBCC4: .word 0x02099EF0
_020DBCC8: .word 0x020A0670
	arm_func_end FUN_ov1_020dbb44

	arm_func_start FUN_ov1_020dbccc
FUN_ov1_020dbccc: ; 0x020DBCCC
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	sub sp, sp, #8
	ldr r12, _020DBD30 ; =0x020A0640
	mov r7, r0
	ldrb r0, [r12, #0x1a]
	mov r5, r2
	mov r4, r3
	cmp r0, #0
	cmpne r5, #0
	cmpne r4, #0
	mov r6, r1
	addeq sp, sp, #8
	ldmeqfd sp!, {r3, r4, r5, r6, r7, pc}
	ldr r0, _020DBD34 ; =0x0209AEC0
	bl FUN_020466c0
	add r0, r5, r0, lsl #3
	mov r2, #2
	str r0, [sp]
	mov r0, r7
	mov r1, r6
	mov r3, r2
	str r4, [sp, #4]
	bl FUN_ov16_020f191c
	add sp, sp, #8
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_020DBD30: .word 0x020A0640
_020DBD34: .word 0x0209AEC0
	arm_func_end FUN_ov1_020dbccc

	arm_func_start FUN_ov1_020dbd38
FUN_ov1_020dbd38: ; 0x020DBD38
	stmfd sp!, {r4, r5, r6, r7, r8, r9, r10, lr}
	sub sp, sp, #0x20
	ldr r4, _020DBDF4 ; =0x020A0640
	mov r10, r0
	ldrb r0, [r4, #0x1a]
	ldr r6, [sp, #0x40]
	mov r9, r1
	cmp r0, #0
	cmpne r6, #0
	mov r8, r2
	mov r7, r3
	addeq sp, sp, #0x20
	ldmeqfd sp!, {r4, r5, r6, r7, r8, r9, r10, pc}
	ldr r5, _020DBDF8 ; =0x0209F5C0
	mov r4, #0
	ldr r2, [sp, #0x44]
	mov r0, r5
	mov r1, r8
	mov r3, r4
	bl FUN_ov16_020f5eec
	ldr r0, _020DBDFC ; =0x0209AEC0
	bl FUN_020466c0
	mov r1, r10, lsl #0x18
	mov r10, r1, asr #0x18
	mov r1, r9, lsl #0x18
	mov r3, r1, asr #0x18
	mov r1, r8
	ldr r8, [sp, #0x44]
	mov r2, r7
	str r8, [sp]
	stmib sp, {r4, r10}
	str r3, [sp, #0xc]
	mov r7, #2
	ldr r3, [sp, #0x48]
	str r7, [sp, #0x10]
	str r7, [sp, #0x14]
	and r3, r3, #0xff
	str r3, [sp, #0x18]
	ldr r4, [r6, #0xc]
	mov r3, #1
	add r4, r6, r4
	add r4, r4, r0, lsl #3
	mov r0, r5
	str r4, [sp, #0x1c]
	bl FUN_ov16_020f5da0
	add sp, sp, #0x20
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, pc}
_020DBDF4: .word 0x020A0640
_020DBDF8: .word 0x0209F5C0
_020DBDFC: .word 0x0209AEC0
	arm_func_end FUN_ov1_020dbd38

	arm_func_start FUN_ov1_020dbe00
FUN_ov1_020dbe00: ; 0x020DBE00
	stmfd sp!, {r3, r4, r5, lr}
	sub sp, sp, #0x50
	mov r5, r1
	add r4, sp, #0
	mov r2, r0
	ldr r1, _020DBE34 ; =0x020E9024
	mov r0, r4
	bl FUN_02023c40
	mov r0, r4
	mov r1, r5
	bl FUN_ov16_020f316c
	add sp, sp, #0x50
	ldmfd sp!, {r3, r4, r5, pc}
_020DBE34: .word 0x020E9024
	arm_func_end FUN_ov1_020dbe00

	arm_func_start FUN_ov1_020dbe38
FUN_ov1_020dbe38: ; 0x020DBE38
	stmfd sp!, {r3, r4, r5, lr}
	sub sp, sp, #0x50
	mov r5, r1
	add r4, sp, #0
	mov r2, r0
	ldr r1, _020DBE6C ; =0x020E9038
	mov r0, r4
	bl FUN_02023c40
	mov r0, r4
	mov r1, r5
	bl FUN_ov16_020f316c
	add sp, sp, #0x50
	ldmfd sp!, {r3, r4, r5, pc}
_020DBE6C: .word 0x020E9038
	arm_func_end FUN_ov1_020dbe38

	arm_func_start FUN_ov1_020dbe70
FUN_ov1_020dbe70: ; 0x020DBE70
	stmfd sp!, {r4, r5, r6, r7, lr}
	sub sp, sp, #0x54
	mov r7, r1
	add r4, sp, #4
	mov r5, r0
	mov r6, r2
	mov r2, r5
	ldr r1, _020DBEC0 ; =0x020E9050
	mov r0, r4
	mov r5, r3
	bl FUN_02023c40
	ldrb r12, [sp, #0x68]
	mov r0, r4
	mov r1, r7
	mov r2, r6
	mov r3, r5
	str r12, [sp]
	bl FUN_ov16_020f31fc
	add sp, sp, #0x54
	ldmfd sp!, {r4, r5, r6, r7, pc}
_020DBEC0: .word 0x020E9050
	arm_func_end FUN_ov1_020dbe70

	arm_func_start FUN_ov1_020dbec4
FUN_ov1_020dbec4: ; 0x020DBEC4
	stmfd sp!, {r3, r4, r5, lr}
	sub sp, sp, #0x50
	mov r5, r1
	add r4, sp, #0
	mov r2, r0
	ldr r1, _020DBEF8 ; =0x020E9068
	mov r0, r4
	bl FUN_02023c40
	mov r0, r4
	mov r1, r5
	bl FUN_ov16_020f316c
	add sp, sp, #0x50
	ldmfd sp!, {r3, r4, r5, pc}
_020DBEF8: .word 0x020E9068
	arm_func_end FUN_ov1_020dbec4

	arm_func_start FUN_ov1_020dbefc
FUN_ov1_020dbefc: ; 0x020DBEFC
	stmfd sp!, {r4, r5, r6, r7, lr}
	sub sp, sp, #0x54
	mov r7, r1
	add r4, sp, #4
	mov r5, r0
	mov r6, r2
	mov r2, r5
	ldr r1, _020DBF4C ; =0x020E9080
	mov r0, r4
	mov r5, r3
	bl FUN_02023c40
	ldrb r12, [sp, #0x68]
	mov r0, r4
	mov r1, r7
	mov r2, r6
	mov r3, r5
	str r12, [sp]
	bl FUN_ov16_020f31fc
	add sp, sp, #0x54
	ldmfd sp!, {r4, r5, r6, r7, pc}
_020DBF4C: .word 0x020E9080
	arm_func_end FUN_ov1_020dbefc

	arm_func_start FUN_ov1_020dbf50
FUN_ov1_020dbf50: ; 0x020DBF50
	stmfd sp!, {r3, r4, r5, lr}
	sub sp, sp, #0x50
	mov r5, r1
	add r4, sp, #0
	mov r2, r0
	ldr r1, _020DBF84 ; =0x020E9098
	mov r0, r4
	bl FUN_02023c40
	mov r0, r4
	mov r1, r5
	bl FUN_ov16_020f316c
	add sp, sp, #0x50
	ldmfd sp!, {r3, r4, r5, pc}
_020DBF84: .word 0x020E9098
	arm_func_end FUN_ov1_020dbf50

	arm_func_start FUN_ov1_020dbf88
FUN_ov1_020dbf88: ; 0x020DBF88
	stmfd sp!, {r4, r5, r6, r7, lr}
	sub sp, sp, #0x54
	mov r7, r1
	add r4, sp, #4
	mov r5, r0
	mov r6, r2
	mov r2, r5
	ldr r1, _020DBFD8 ; =0x020E90AC
	mov r0, r4
	mov r5, r3
	bl FUN_02023c40
	ldrb r12, [sp, #0x68]
	mov r0, r4
	mov r1, r7
	mov r2, r6
	mov r3, r5
	str r12, [sp]
	bl FUN_ov16_020f31fc
	add sp, sp, #0x54
	ldmfd sp!, {r4, r5, r6, r7, pc}
_020DBFD8: .word 0x020E90AC
	arm_func_end FUN_ov1_020dbf88

	arm_func_start FUN_ov1_020dbfdc
FUN_ov1_020dbfdc: ; 0x020DBFDC
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	mov r6, r1
	movs r7, r0
	mov r5, r2
	cmpne r6, #0
	ldrne r0, [r5]
	cmpne r0, #0
	ldmeqfd sp!, {r3, r4, r5, r6, r7, pc}
	mov r4, #0xc
_020DC000:
	ldr r3, [r5, #4]
	mov r2, r7
	mla r1, r3, r4, r6
	bl FUN_ov16_020f32b4
	ldr r0, [r5, #8]!
	cmp r0, #0
	bne _020DC000
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
	arm_func_end FUN_ov1_020dbfdc

	arm_func_start FUN_ov1_020dc020
FUN_ov1_020dc020: ; 0x020DC020
	stmfd sp!, {r4, r5, r6, r7, r8, lr}
	ldr r4, [sp, #0x18]
	movs r8, r0
	mov r7, r1
	mov r6, r2
	mov r5, r3
	moveq r0, r7
	ldmeqfd sp!, {r4, r5, r6, r7, r8, pc}
	add r1, r7, #1
	bl FUN_ov16_020f18e8
	mov r7, r0
	cmp r4, #0
	beq _020DC068
	ldr r2, [r4]
	mov r0, r5
	mov r1, r8
	bl FUN_ov16_020f19d4
	str r0, [r4]
_020DC068:
	cmp r6, #0
	blt _020DC080
	mov r0, r8
	mov r2, r6
	mov r1, #0
	bl FUN_ov16_020f1138
_020DC080:
	mov r0, r7
	ldmfd sp!, {r4, r5, r6, r7, r8, pc}
	arm_func_end FUN_ov1_020dc020

	arm_func_start FUN_ov1_020dc088
FUN_ov1_020dc088: ; 0x020DC088
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	ldr r4, [sp, #0x18]
	movs r7, r0
	mov r6, r1
	mov r5, r3
	moveq r0, r6
	ldmeqfd sp!, {r3, r4, r5, r6, r7, pc}
	add r1, r6, #1
	bl FUN_ov16_020f18e8
	mov r6, r0
	cmp r4, #0
	beq _020DC0CC
	ldr r2, [r4]
	mov r0, r5
	mov r1, r7
	bl FUN_ov16_020f19d4
	str r0, [r4]
_020DC0CC:
	mov r0, r6
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
	arm_func_end FUN_ov1_020dc088

	arm_func_start FUN_ov1_020dc0d4
FUN_ov1_020dc0d4: ; 0x020DC0D4
	stmfd sp!, {r4, r5, r6, r7, r8, lr}
	ldr r4, [sp, #0x18]
	movs r8, r0
	mov r7, r1
	mov r6, r2
	mov r5, r3
	moveq r0, r7
	ldmeqfd sp!, {r4, r5, r6, r7, r8, pc}
	add r1, r7, #1
	bl FUN_ov16_020f18e8
	mov r7, r0
	cmp r4, #0
	beq _020DC11C
	ldr r2, [r4]
	mov r0, r5
	mov r1, r8
	bl FUN_ov16_020f1a60
	str r0, [r4]
_020DC11C:
	cmp r6, #0
	blt _020DC134
	mov r0, r8
	mov r2, r6
	mov r1, #1
	bl FUN_ov16_020f1138
_020DC134:
	mov r0, r7
	ldmfd sp!, {r4, r5, r6, r7, r8, pc}
	arm_func_end FUN_ov1_020dc0d4

	arm_func_start FUN_ov1_020dc13c
FUN_ov1_020dc13c: ; 0x020DC13C
	stmfd sp!, {r3, lr}
	mov r3, #0
	str r3, [sp]
	bl FUN_ov1_020dc0d4
	ldmfd sp!, {r3, pc}
	arm_func_end FUN_ov1_020dc13c

	arm_func_start FUN_ov1_020dc150
FUN_ov1_020dc150: ; 0x020DC150
	stmfd sp!, {r3, r4, r5, lr}
	mov r5, r0
	ldr r0, _020DC1EC ; =0x0209BA20
	mov r1, r5
	bl FUN_0207249c
	mov r4, r0
	bl FUN_ov16_020f068c ; may be ov17
	cmp r0, #0
	movne r0, #1
	moveq r0, #0
	cmp r0, #0
	ldmnefd sp!, {r3, r4, r5, pc}
	ldr r0, _020DC1F0 ; =0x020A0640
	ldrb r0, [r0, #0x1a]
	cmp r0, #0
	movne r0, #1
	moveq r0, #0
	cmp r0, #0
	beq _020DC1DC
	mov r0, r5
	bl FUN_ov16_020f0a30
	cmp r0, #0
	moveq r0, #1
	movne r0, #0
	cmp r0, #0
	bne _020DC1D0
	ldrh r0, [r4, #0x2a]
	cmp r0, #0
	ldreqh r0, [r4, #0x20]
	cmp r0, #1
	movls r0, #1
	movhi r0, #0
_020DC1D0:
	cmp r0, #0
	movne r0, #1
	moveq r0, #0
_020DC1DC:
	cmp r0, #0
	movne r0, #1
	moveq r0, #0
	ldmfd sp!, {r3, r4, r5, pc}
_020DC1EC: .word 0x0209BA20
_020DC1F0: .word 0x020A0640
	arm_func_end FUN_ov1_020dc150

	arm_func_start FUN_ov1_020dc1f4
FUN_ov1_020dc1f4: ; 0x020DC1F4
	stmfd sp!, {r3, r4, r5, lr}
	mov r5, r0
	ldr r0, _020DC230 ; =0x0209BA20
	mov r1, r5
	bl FUN_0207249c
	mov r4, r0
	mov r0, r5
	bl FUN_ov1_020dc150
	cmp r0, #0
	ldrneb r0, [r4, #0x2d]
	ldmnefd sp!, {r3, r4, r5, pc}
	ldrh r0, [r4, #0x2a]
	cmp r0, #0
	ldreqh r0, [r4, #0x20]
	ldmfd sp!, {r3, r4, r5, pc}
_020DC230: .word 0x0209BA20
	arm_func_end FUN_ov1_020dc1f4

	arm_func_start FUN_ov1_020dc234
FUN_ov1_020dc234: ; 0x020DC234
	stmfd sp!, {r3, r4, r5, lr}
	mov r5, r0
	mov r4, #0
	mov r0, r4
	mov r1, r5
	mov r2, #0xe500
	bl MIi_CpuClearFast
	add r0, r5, #0xe000
	strb r4, [r0, #0x504]
	strb r4, [r0, #0x505]
	strb r4, [r0, #0x506]
	str r4, [r0, #0x500]
	ldmfd sp!, {r3, r4, r5, pc}
	arm_func_end FUN_ov1_020dc234

	arm_func_start FUN_ov1_020dc268
FUN_ov1_020dc268: ; 0x020DC268
	stmfd sp!, {r3, r4, r5, r6, lr}
	sub sp, sp, #0xc
	mov r6, r0
	mov r5, #0
	add r3, r6, #0xe000
	mov r4, #1
	mov r0, r5
	mov r1, r6
	mov r2, #0xe500
	strb r5, [r3, #0x504]
	strb r5, [r3, #0x505]
	strb r4, [r3, #0x506]
	bl MIi_CpuClearFast
	ldr r1, _020DC2E4 ; =0x0209A200
	ldr r0, _020DC2E8 ; =0x02099F38
	ldr r2, [r1]
	ldr r0, [r0]
	ldr r3, _020DC2EC ; =0x020E90D8
	str r5, [sp]
	str r5, [sp, #4]
	mov r1, #5
	str r5, [sp, #8]
	bl FUN_02058684
	add r1, r6, #0xe000
	cmp r0, #0
	str r0, [r1, #0x500]
	movle r0, r5
	strleb r4, [r1, #0x505]
	movgt r0, r4
	add sp, sp, #0xc
	ldmfd sp!, {r3, r4, r5, r6, pc}
_020DC2E4: .word 0x0209A200
_020DC2E8: .word 0x02099F38
_020DC2EC: .word 0x020E90D8
	arm_func_end FUN_ov1_020dc268

	arm_func_start FUN_ov1_020dc2f0
FUN_ov1_020dc2f0: ; 0x020DC2F0
	stmfd sp!, {r3, r4, r5, lr}
	mov r5, r0
	add r0, r5, #0xe000
	ldr r1, [r0, #0x500]
	cmp r1, #0
	ble _020DC334
	ldr r4, _020DC340 ; =0x02099F38
	ldr r0, [r4]
	bl FUN_020591e8
	add r0, r5, #0xe000
	ldr r1, [r0, #0x500]
	ldr r0, [r4]
	bl FUN_02058ee0
	add r0, r5, #0xe000
	ldr r1, [r0, #0x500]
	ldr r0, [r4]
	bl FUN_02058ee0
_020DC334:
	mov r0, r5
	bl FUN_ov1_020dc234
	ldmfd sp!, {r3, r4, r5, pc}
_020DC340: .word 0x02099F38
	arm_func_end FUN_ov1_020dc2f0

	arm_func_start FUN_ov1_020dc344
FUN_ov1_020dc344: ; 0x020DC344
	stmfd sp!, {r4, r5, r6, r7, r8, lr}
	sub sp, sp, #8
	mov r4, r0
	add r0, r4, #0xe000
	ldrb r1, [r0, #0x504]
	cmp r1, #0
	addeq sp, sp, #8
	ldmeqfd sp!, {r4, r5, r6, r7, r8, pc}
	ldrb r1, [r0, #0x505]
	cmp r1, #0
	addne sp, sp, #8
	ldmnefd sp!, {r4, r5, r6, r7, r8, pc}
	ldrb r0, [r0, #0x506]
	cmp r0, #0
	addeq sp, sp, #8
	ldmeqfd sp!, {r4, r5, r6, r7, r8, pc}
	ldr r1, _020DC3E0 ; =0x0209A12C
	ldr r0, _020DC3E4 ; =0x0209A140
	ldr r1, [r1]
	ldr r0, [r0]
	mov r1, r1, lsl #0xc
	rsb r1, r1, #0
	mov r0, r0, lsl #0xc
	str r1, [sp, #4]
	str r0, [sp]
	mov r8, #0
	add r7, sp, #4
	add r6, sp, #0
	mov r5, #0xe50
_020DC3B8:
	mla r1, r8, r5, r4
	mov r0, r4
	mov r2, r7
	mov r3, r6
	bl FUN_ov1_020dc758
	add r8, r8, #1
	cmp r8, #0x10
	blt _020DC3B8
	add sp, sp, #8
	ldmfd sp!, {r4, r5, r6, r7, r8, pc}
_020DC3E0: .word 0x0209A12C
_020DC3E4: .word 0x0209A140
	arm_func_end FUN_ov1_020dc344

	arm_func_start FUN_ov1_020dc3e8
FUN_ov1_020dc3e8: ; 0x020DC3E8
	mov r0, #0
	bx lr
	arm_func_end FUN_ov1_020dc3e8

	arm_func_start FUN_ov1_020dc3f0
FUN_ov1_020dc3f0: ; 0x020DC3F0
	stmfd sp!, {r4, r5, r6, lr}
	mov r6, r0
	bl FUN_ov1_020dc3e8
	cmp r0, #0
	movne r0, #0
	ldmnefd sp!, {r4, r5, r6, pc}
	ldr r2, _020DC448 ; =0x02099F38
	add r0, r6, #0xe000
	mov r4, #0
	ldr r1, [r0, #0x500]
	mov r5, #1
	ldr r0, [r2]
	mov r2, r5
	mov r3, r4
	bl FUN_02059038
	cmp r0, #0
	add r1, r6, #0xe000
	moveq r0, r4
	streqb r5, [r1, #0x505]
	movne r0, r5
	strneb r5, [r1, #0x504]
	ldmfd sp!, {r4, r5, r6, pc}
_020DC448: .word 0x02099F38
	arm_func_end FUN_ov1_020dc3f0

	arm_func_start FUN_ov1_020dc44c
FUN_ov1_020dc44c: ; 0x020DC44C
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, lr}
	sub sp, sp, #0x28
	mov r10, r0
	mov r6, r1
	mov r5, r2
	mov r11, r3
	ldr r7, [sp, #0x54]
	ldr r9, [sp, #0x58]
	ldr r8, [sp, #0x5c]
	bl FUN_ov1_020dc72c
	add r0, r10, #0xe000
	ldrb r0, [r0, #0x506]
	cmp r0, #0
	addeq sp, sp, #0x28
	ldmeqfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
	cmp r6, #0
	addlt sp, sp, #0x28
	ldmltfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
	cmp r6, #0x10
	addge sp, sp, #0x28
	ldmgefd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
	mov r2, #0xe50
	mla r4, r6, r2, r10
	mov r0, #0
	mov r1, r4
	bl MIi_CpuClearFast
	mov r0, #1
	strb r0, [r4, #0xe48]
	add r0, r4, #0xe00
	strh r5, [r0, #0x4a]
	ldr r1, [sp, #0x50]
	strb r11, [r4, #0xe4c]
	strb r1, [r4, #0xe4d]
	ldrb r2, [sp, #0x60]
	ldrh r1, [sp, #0x64]
	add r5, sp, #0x10
	strb r2, [r4, #0xe49]
	strh r1, [r0, #0x4e]
	ldmia r7, {r1, r2}
	str r1, [sp, #4]
	mov r1, #0
	str r2, [sp, #8]
	str r1, [sp, #0xc]
	ldr r3, [r9, #4]
	ldr r2, [r9], #8
	add r6, sp, #4
	stmia r5, {r2, r3}
	str r1, [r5, #8]
	add r7, r1, #2
	mov r0, r10
	mov r1, r4
	mov r2, #0
	mov r3, r6
	str r5, [sp]
	bl FUN_ov1_020dd36c
	cmp r9, r8
	beq _020DC590
	mov r11, r6
_020DC534:
	mov r0, #0xc
	mov r2, r6
	mov r6, r5
	mla r5, r7, r0, r11
	ldr r3, [r9, #4]
	ldr r1, [r9], #8
	mov r0, r10
	stmia r5, {r1, r3}
	mov r1, #0
	str r1, [r5, #8]
	mov r1, r4
	mov r3, r6
	str r5, [sp]
	bl FUN_ov1_020dd36c
	ldr r1, _020DC5D8 ; =0x55555556
	add r0, r7, #1
	smull r2, r7, r1, r0
	add r7, r7, r0, lsr #31
	mov r1, #3
	smull r2, r3, r1, r7
	cmp r9, r8
	sub r7, r0, r2
	bne _020DC534
_020DC590:
	mov r7, #0
	mov r0, r10
	mov r1, r4
	mov r2, r6
	mov r3, r5
	str r7, [sp]
	bl FUN_ov1_020dd36c
	ldr r0, [sp, #0x50]
	cmp r0, #0
	addle sp, sp, #0x28
	ldmlefd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
	mov r0, r10
	mov r1, r4
	mov r2, r5
	mov r3, r6
	bl FUN_ov1_020dd228
	add sp, sp, #0x28
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_020DC5D8: .word 0x55555556
	arm_func_end FUN_ov1_020dc44c

	arm_func_start FUN_ov1_020dc5dc
FUN_ov1_020dc5dc: ; 0x020DC5DC
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, lr}
	mov r10, r0
	mov r9, r1
	mov r11, r2
	mov r8, r3
	ldr r7, [sp, #0x28]
	ldr r6, [sp, #0x2c]
	ldr r5, [sp, #0x30]
	ldr r4, [sp, #0x34]
	bl FUN_ov1_020dc72c
	add r0, r10, #0xe000
	ldrb r0, [r0, #0x506]
	cmp r0, #0
	ldmeqfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
	cmp r9, #0
	ldmltfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
	cmp r9, #0x10
	ldmgefd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
	mov r0, #0xe50
	mla r10, r9, r0, r10
	mov r9, #0
	str r9, [r10, #0xe40]
	mov r0, #2
	strb r0, [r10, #0xe48]
	add r0, r10, #0xe00
	strh r11, [r0, #0x4a]
	strb r8, [r10, #0xe4c]
	ldrb r1, [sp, #0x38]
	strb r9, [r10, #0xe4d]
	mov r0, #0x4c
	strb r1, [r10, #0xe49]
	ldr r1, [r10, #0xe40]
	sub r5, r5, r8, asr #1
	mla r11, r1, r0, r10
	sub r4, r4, r8, asr #1
	add r12, r5, r8
	ldr r3, _020DC704 ; =0x02087874
	add r8, r4, r8
	mov r1, #0x18000
_020DC678:
	mov r2, r9, lsl #0x10
	mov r0, r2, asr #4
	add r0, r2, r0, lsr #27
	mov r0, r0, lsl #0xb
	mov r0, r0, lsr #0x10
	mov r0, r0, asr #4
	mov r2, r0, lsl #1
	mov r0, r2, lsl #1
	ldrsh r0, [r3, r0]
	add r2, r3, r2, lsl #1
	add r9, r9, #1
	mla lr, r5, r0, r7
	ldrsh r2, [r2, #2]
	str lr, [r11, #8]
	mla r0, r12, r0, r7
	mla lr, r4, r2, r6
	str lr, [r11, #0xc]
	mla lr, r8, r2, r6
	mov r2, #0x4000
	str r2, [r11, #0x28]
	str r1, [r11, #0x2c]
	str r0, [r11, #0x10]
	str lr, [r11, #0x14]
	mov r0, #0xc000
	str r0, [r11, #0x30]
	str r1, [r11, #0x34]
	ldr r0, [r10, #0xe40]
	cmp r9, #0x20
	add r0, r0, #1
	str r0, [r10, #0xe40]
	mov r0, #2
	str r0, [r11, #0x48]
	add r11, r11, #0x4c
	ble _020DC678
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_020DC704: .word 0x02087874
	arm_func_end FUN_ov1_020dc5dc

	arm_func_start FUN_ov1_020dc708
FUN_ov1_020dc708: ; 0x020DC708
	mov r12, #0
	mov r3, r12
	mov r1, #0xe50
_020DC714:
	mla r2, r12, r1, r0
	add r12, r12, #1
	str r3, [r2, #0xe40]
	cmp r12, #0x10
	blt _020DC714
	bx lr
	arm_func_end FUN_ov1_020dc708

	arm_func_start FUN_ov1_020dc72c
FUN_ov1_020dc72c: ; 0x020DC72C
	cmp r1, #0
	bxlt lr
	cmp r1, #0x10
	movlt r2, #0xe50
	mlalt r0, r1, r2, r0
	movlt r1, #0
	strlt r1, [r0, #0xe40]
	bx lr
	arm_func_end FUN_ov1_020dc72c

	arm_func_start FUN_ov1_020dc74c
FUN_ov1_020dc74c: ; 0x020DC74C
	add r0, r0, #0xe000
	strb r1, [r0, #0x506]
	bx lr
	arm_func_end FUN_ov1_020dc74c

	arm_func_start FUN_ov1_020dc758
FUN_ov1_020dc758: ; 0x020DC758
	stmfd sp!, {r4, r5, r6, r7, r8, lr}
	sub sp, sp, #0x20
	movs r6, r1
	mov r7, r0
	ldrne r0, [r6, #0xe40]
	mov r5, r2
	cmpne r0, #0
	mov r4, r3
	addle sp, sp, #0x20
	ldmlefd sp!, {r4, r5, r6, r7, r8, pc}
	mov r1, #0
	mov r2, r1
	mov r0, #0x11
	bl NNS_G3dGeBufferOP_N
	bl NNS_G3dGlbFlushVP
	mov r0, r7
	bl FUN_ov1_020dc8c4
	mov r0, r7
	mov r1, r6
	bl FUN_ov1_020dc904
	mov r0, r7
	bl FUN_ov1_020dc930
	add r0, r6, #0xe00
	ldrh r0, [r0, #0x4e]
	add r0, r0, #0x6e
	add r0, r0, #0xf00
	rsb r0, r0, #0
	cmp r0, #0
	mov r0, r0, lsl #0xc
	ble _020DC7E4
	bl FUN_0201f704
	mov r1, r0
	mov r0, #0x3f000000
	bl FUN_02020274
	b _020DC7F0
_020DC7E4:
	bl FUN_0201f704
	mov r1, #0x3f000000
	bl FUN_020204a4
_020DC7F0:
	bl FUN_0201fdac
	mov r8, #3
	ldr r4, [r4]
	ldr r3, [r5]
	add r1, sp, #0x14
	str r0, [sp, #0x1c]
	mov r2, r8
	mov r0, #0x1c
	str r3, [sp, #0x14]
	str r4, [sp, #0x18]
	bl NNS_G3dGeBufferOP_N
	mov r4, #0x400000
	mov r3, #0x1000
	add r1, sp, #8
	mov r2, r8
	mov r0, #0x1b
	str r4, [sp, #8]
	str r4, [sp, #0xc]
	str r3, [sp, #0x10]
	bl NNS_G3dGeBufferOP_N
	add r0, r6, #0xe00
	ldrh r2, [r0, #0x4a]
	add r1, sp, #4
	mov r0, #0x20
	str r2, [sp, #4]
	mov r2, #1
	bl NNS_G3dGeBufferOP_N
	ldrb r0, [r6, #0xe48]
	cmp r0, #0
	beq _020DC87C
	cmp r0, #1
	beq _020DC88C
	cmp r0, #2
	beq _020DC89C
	b _020DC8A8
_020DC87C:
	mov r0, r7
	mov r1, r6
	bl FUN_ov1_020dcd58
	b _020DC8A8
_020DC88C:
	mov r0, r7
	mov r1, r6
	bl FUN_ov1_020dca08
	b _020DC8A8
_020DC89C:
	mov r0, r7
	mov r1, r6
	bl FUN_ov1_020dd090
_020DC8A8:
	mov r2, #1
	add r1, sp, #0
	mov r0, #0x12
	str r2, [sp]
	bl NNS_G3dGeBufferOP_N
	add sp, sp, #0x20
	ldmfd sp!, {r4, r5, r6, r7, r8, pc}
	arm_func_end FUN_ov1_020dc758

	arm_func_start FUN_ov1_020dc8c4
FUN_ov1_020dc8c4: ; 0x020DC8C4
	stmfd sp!, {r3, r4, r5, lr}
	sub sp, sp, #8
	mov r4, #1
	mov r5, #0
	add r1, sp, #4
	mov r2, r4
	mov r0, #0x30
	str r5, [sp, #4]
	bl NNS_G3dGeBufferOP_N
	add r1, sp, #0
	mov r2, r4
	mov r0, #0x31
	str r5, [sp]
	bl NNS_G3dGeBufferOP_N
	add sp, sp, #8
	ldmfd sp!, {r3, r4, r5, pc}
	arm_func_end FUN_ov1_020dc8c4

	arm_func_start FUN_ov1_020dc904
FUN_ov1_020dc904: ; 0x020DC904
	stmfd sp!, {r3, lr}
	ldrb r2, [r1, #0xe49]
	ldr r0, _020DC92C ; =0x3F0000C0
	add r1, sp, #0
	orr r3, r0, r2, lsl #16
	mov r0, #0x29
	mov r2, #1
	str r3, [sp]
	bl NNS_G3dGeBufferOP_N
	ldmfd sp!, {r3, pc}
_020DC92C: .word 0x3F0000C0
	arm_func_end FUN_ov1_020dc904

	arm_func_start FUN_ov1_020dc930
FUN_ov1_020dc930: ; 0x020DC930
	stmfd sp!, {r4, r5, lr}
	sub sp, sp, #0x14
	ldr r2, _020DCA00 ; =0x02099F38
	add r0, r0, #0xe000
	ldr r1, [r0, #0x500]
	ldr r0, [r2]
	bl FUN_0205998c
	mvn r1, #0
	movs r5, r0
	str r1, [sp, #0x10]
	str r1, [sp, #0xc]
	ldrne r0, [r5, #4]
	cmpne r0, #0
	beq _020DC98C
	ldr r4, _020DCA04 ; =0x02099F30
	add r2, sp, #0x10
	ldr r0, [r4]
	add r1, r5, #0x18
	bl FUN_02051bb8
	ldr r0, [r4]
	add r2, sp, #0xc
	add r1, r5, #0x24
	bl FUN_02051bb8
_020DC98C:
	ldr r0, [sp, #0x10]
	mov r2, #1
	cmn r0, #1
	beq _020DC9BC
	mov r0, r0, lsr #3
	orr r0, r0, #0x4c000000
	orr r0, r0, #0x300000
	orr r3, r0, #0x21800000
	add r1, sp, #8
	mov r0, #0x2a
	str r3, [sp, #8]
	b _020DC9CC
_020DC9BC:
	mov r3, #0
	add r1, sp, #4
	mov r0, #0x2a
	str r3, [sp, #4]
_020DC9CC:
	bl NNS_G3dGeBufferOP_N
	ldr r0, [sp, #0xc]
	cmn r0, #1
	addeq sp, sp, #0x14
	ldmeqfd sp!, {r4, r5, pc}
	mov r3, r0, lsr #4
	add r1, sp, #0
	mov r0, #0x2b
	mov r2, #1
	str r3, [sp]
	bl NNS_G3dGeBufferOP_N
	add sp, sp, #0x14
	ldmfd sp!, {r4, r5, pc}
_020DCA00: .word 0x02099F38
_020DCA04: .word 0x02099F30
	arm_func_end FUN_ov1_020dc930

	arm_func_start FUN_ov1_020dca08
FUN_ov1_020dca08: ; 0x020DCA08
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, lr}
	sub sp, sp, #0x40
	ldr r0, [r1, #0xe44]
	str r1, [sp]
	cmp r0, #4
	mov r4, #0
	addlt sp, sp, #0x40
	ldmltfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
	mov r0, r1
	ldrb r1, [r0, #0xe4d]
	ldr r0, [sp]
	mov r10, #1
	ldr r0, [r0, #0xe40]
	cmp r1, #0
	str r0, [sp, #4]
	subne r0, r0, #1
	strne r0, [sp, #4]
	mov r3, #3
	add r1, sp, #0x30
	mov r2, r10
	mov r0, #0x40
	str r3, [sp, #0x30]
	bl NNS_G3dGeBufferOP_N
	ldr r0, [sp, #4]
	cmp r0, #0
	mov r0, #0
	str r0, [sp, #8]
	ble _020DCBB0
_020DCA78:
	ldr r1, [sp, #8]
	ldr r0, [sp]
	mov r2, #0x4c
	mla r8, r1, r2, r0
	ldr r0, [r8, #0x48]
	mov r9, #0
	cmp r0, #0
	ble _020DCB98
	mov r5, #0x1000
	mov r7, #0x22
	add r11, sp, #0x2c
	mov r6, #1
_020DCAA8:
	add r1, r8, r9, lsl #3
	ldr r0, [r1, #0x28]
	ldr r1, [r1, #0x2c]
	mov r0, r0, lsl #8
	mov r1, r1, lsl #8
	mov r1, r1, asr #0x10
	mov r1, r1, lsl #0x10
	mov r0, r0, asr #0x10
	mov r1, r1, lsr #0x10
	mov r0, r0, lsl #0x10
	mov r1, r1, lsl #0x10
	orr r0, r1, r0, lsr #16
	str r0, [sp, #0x2c]
	mov r0, r7
	mov r1, r11
	mov r2, r6
	bl NNS_G3dGeBufferOP_N
	add r0, r8, r9, lsl #3
	ldr r2, [r0, #0xc]
	ldr r1, [r0, #8]
	rsb r2, r2, #0
	mov r0, r1, asr #9
	add r0, r1, r0, lsr #22
	mov r1, r0, asr #0xa
	mov r0, r2, asr #9
	add r0, r2, r0, lsr #22
	mov r1, r1, lsl #0x10
	mov r0, r0, asr #0xa
	mov r1, r1, asr #0x10
	cmp r10, #0
	mov r1, r1, lsl #0x10
	mov r0, r0, lsl #0x10
	beq _020DCB60
	mov r0, r0, asr #0x10
	mov r0, r0, lsl #0x10
	mov r0, r0, lsr #0x10
	mov r0, r0, lsl #0x10
	orr r0, r0, r1, lsr #16
	str r0, [sp, #0x24]
	mov r0, #0x23
	add r1, sp, #0x24
	mov r2, #2
	str r5, [sp, #0x28]
	bl NNS_G3dGeBufferOP_N
	mov r10, r4
	b _020DCB88
_020DCB60:
	mov r0, r0, asr #0x10
	mov r0, r0, lsl #0x10
	mov r0, r0, lsr #0x10
	mov r0, r0, lsl #0x10
	orr r0, r0, r1, lsr #16
	str r0, [sp, #0x20]
	mov r0, #0x25
	add r1, sp, #0x20
	mov r2, r6
	bl NNS_G3dGeBufferOP_N
_020DCB88:
	add r9, r9, #1
	ldr r0, [r8, #0x48]
	cmp r9, r0
	blt _020DCAA8
_020DCB98:
	ldr r0, [sp, #8]
	add r1, r0, #1
	ldr r0, [sp, #4]
	str r1, [sp, #8]
	cmp r1, r0
	blt _020DCA78
_020DCBB0:
	mov r10, #0
	mov r1, r10
	mov r2, r10
	mov r0, #0x41
	bl NNS_G3dGeBufferOP_N
	ldr r0, [sp]
	mov r8, #1
	ldrb r0, [r0, #0xe4d]
	cmp r0, #0
	addeq sp, sp, #0x40
	ldmeqfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
	ldr r1, [sp, #4]
	ldr r0, [sp]
	mov r2, #0x4c
	mla r9, r1, r2, r0
	ldr r0, [r9, #0x48]
	cmp r0, #3
	addne sp, sp, #0x40
	ldmnefd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
	mov r3, #0x800
	add r1, sp, #0x34
	mov r0, #0x1c
	mov r2, #3
	str r10, [sp, #0x34]
	str r10, [sp, #0x38]
	str r3, [sp, #0x3c]
	bl NNS_G3dGeBufferOP_N
	add r1, sp, #0x1c
	mov r2, r8
	str r10, [sp, #0x1c]
	mov r0, #0x40
	bl NNS_G3dGeBufferOP_N
	ldr r0, [r9, #0x48]
	cmp r0, #0
	ble _020DCD40
	mov r4, #0x1000
	mov r11, #0x23
	mov r7, #0x22
	add r6, sp, #0x18
	mov r5, r8
_020DCC50:
	add r1, r9, r10, lsl #3
	ldr r0, [r1, #0x28]
	ldr r1, [r1, #0x2c]
	mov r0, r0, lsl #8
	mov r1, r1, lsl #8
	mov r1, r1, asr #0x10
	mov r1, r1, lsl #0x10
	mov r0, r0, asr #0x10
	mov r1, r1, lsr #0x10
	mov r0, r0, lsl #0x10
	mov r1, r1, lsl #0x10
	orr r0, r1, r0, lsr #16
	str r0, [sp, #0x18]
	mov r0, r7
	mov r1, r6
	mov r2, r5
	bl NNS_G3dGeBufferOP_N
	add r0, r9, r10, lsl #3
	ldr r2, [r0, #0xc]
	ldr r1, [r0, #8]
	rsb r2, r2, #0
	mov r0, r1, asr #9
	add r0, r1, r0, lsr #22
	mov r1, r0, asr #0xa
	mov r0, r2, asr #9
	add r0, r2, r0, lsr #22
	mov r1, r1, lsl #0x10
	mov r0, r0, asr #0xa
	mov r1, r1, asr #0x10
	cmp r8, #0
	mov r1, r1, lsl #0x10
	mov r0, r0, lsl #0x10
	beq _020DCD08
	mov r0, r0, asr #0x10
	mov r0, r0, lsl #0x10
	mov r0, r0, lsr #0x10
	mov r0, r0, lsl #0x10
	orr r1, r0, r1, lsr #16
	str r1, [sp, #0x10]
	mov r0, r11
	add r1, sp, #0x10
	mov r2, #2
	str r4, [sp, #0x14]
	bl NNS_G3dGeBufferOP_N
	mov r8, #0
	b _020DCD30
_020DCD08:
	mov r0, r0, asr #0x10
	mov r0, r0, lsl #0x10
	mov r0, r0, lsr #0x10
	mov r0, r0, lsl #0x10
	orr r0, r0, r1, lsr #16
	str r0, [sp, #0xc]
	mov r0, #0x25
	add r1, sp, #0xc
	mov r2, r5
	bl NNS_G3dGeBufferOP_N
_020DCD30:
	ldr r0, [r9, #0x48]
	add r10, r10, #1
	cmp r10, r0
	blt _020DCC50
_020DCD40:
	mov r1, #0
	mov r2, r1
	mov r0, #0x41
	bl NNS_G3dGeBufferOP_N
	add sp, sp, #0x40
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
	arm_func_end FUN_ov1_020dca08

	arm_func_start FUN_ov1_020dcd58
FUN_ov1_020dcd58: ; 0x020DCD58
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, lr}
	sub sp, sp, #0x40
	str r1, [sp]
	ldr r0, [sp]
	ldrb r1, [r1, #0xe4d]
	ldr r0, [r0, #0xe40]
	mov r10, #1
	cmp r1, #0
	str r0, [sp, #4]
	subne r0, r0, #1
	strne r0, [sp, #4]
	add r1, sp, #0x30
	mov r2, r10
	mov r0, #0x40
	mov r4, #0
	str r10, [sp, #0x30]
	bl NNS_G3dGeBufferOP_N
	ldr r0, [sp, #4]
	cmp r0, #0
	mov r0, #0
	str r0, [sp, #8]
	ble _020DCEE8
_020DCDB0:
	ldr r1, [sp, #8]
	ldr r0, [sp]
	mov r2, #0x4c
	mla r8, r1, r2, r0
	ldr r0, [r8, #0x48]
	mov r9, #0
	cmp r0, #0
	ble _020DCED0
	mov r5, #0x1000
	mov r7, #0x22
	add r11, sp, #0x2c
	mov r6, #1
_020DCDE0:
	add r1, r8, r9, lsl #3
	ldr r0, [r1, #0x28]
	ldr r1, [r1, #0x2c]
	mov r0, r0, lsl #8
	mov r1, r1, lsl #8
	mov r1, r1, asr #0x10
	mov r1, r1, lsl #0x10
	mov r0, r0, asr #0x10
	mov r1, r1, lsr #0x10
	mov r0, r0, lsl #0x10
	mov r1, r1, lsl #0x10
	orr r0, r1, r0, lsr #16
	str r0, [sp, #0x2c]
	mov r0, r7
	mov r1, r11
	mov r2, r6
	bl NNS_G3dGeBufferOP_N
	add r0, r8, r9, lsl #3
	ldr r2, [r0, #0xc]
	ldr r1, [r0, #8]
	rsb r2, r2, #0
	mov r0, r1, asr #9
	add r0, r1, r0, lsr #22
	mov r1, r0, asr #0xa
	mov r0, r2, asr #9
	add r0, r2, r0, lsr #22
	mov r1, r1, lsl #0x10
	mov r0, r0, asr #0xa
	mov r1, r1, asr #0x10
	cmp r10, #0
	mov r1, r1, lsl #0x10
	mov r0, r0, lsl #0x10
	beq _020DCE98
	mov r0, r0, asr #0x10
	mov r0, r0, lsl #0x10
	mov r0, r0, lsr #0x10
	mov r0, r0, lsl #0x10
	orr r0, r0, r1, lsr #16
	str r0, [sp, #0x24]
	mov r0, #0x23
	add r1, sp, #0x24
	mov r2, #2
	str r5, [sp, #0x28]
	bl NNS_G3dGeBufferOP_N
	mov r10, r4
	b _020DCEC0
_020DCE98:
	mov r0, r0, asr #0x10
	mov r0, r0, lsl #0x10
	mov r0, r0, lsr #0x10
	mov r0, r0, lsl #0x10
	orr r0, r0, r1, lsr #16
	str r0, [sp, #0x20]
	mov r0, #0x25
	add r1, sp, #0x20
	mov r2, r6
	bl NNS_G3dGeBufferOP_N
_020DCEC0:
	add r9, r9, #1
	ldr r0, [r8, #0x48]
	cmp r9, r0
	blt _020DCDE0
_020DCED0:
	ldr r0, [sp, #8]
	add r1, r0, #1
	ldr r0, [sp, #4]
	str r1, [sp, #8]
	cmp r1, r0
	blt _020DCDB0
_020DCEE8:
	mov r10, #0
	mov r1, r10
	mov r2, r10
	mov r0, #0x41
	bl NNS_G3dGeBufferOP_N
	ldr r0, [sp]
	mov r8, #1
	ldrb r0, [r0, #0xe4d]
	cmp r0, #0
	addeq sp, sp, #0x40
	ldmeqfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
	ldr r1, [sp, #4]
	ldr r0, [sp]
	mov r2, #0x4c
	mla r9, r1, r2, r0
	ldr r0, [r9, #0x48]
	cmp r0, #3
	addne sp, sp, #0x40
	ldmnefd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
	mov r3, #0x800
	add r1, sp, #0x34
	mov r0, #0x1c
	mov r2, #3
	str r10, [sp, #0x34]
	str r10, [sp, #0x38]
	str r3, [sp, #0x3c]
	bl NNS_G3dGeBufferOP_N
	add r1, sp, #0x1c
	mov r2, r8
	str r10, [sp, #0x1c]
	mov r0, #0x40
	bl NNS_G3dGeBufferOP_N
	ldr r0, [r9, #0x48]
	cmp r0, #0
	ble _020DD078
	mov r4, #0x1000
	mov r11, #0x23
	mov r7, #0x22
	add r6, sp, #0x18
	mov r5, r8
_020DCF88:
	add r1, r9, r10, lsl #3
	ldr r0, [r1, #0x28]
	ldr r1, [r1, #0x2c]
	mov r0, r0, lsl #8
	mov r1, r1, lsl #8
	mov r1, r1, asr #0x10
	mov r1, r1, lsl #0x10
	mov r0, r0, asr #0x10
	mov r1, r1, lsr #0x10
	mov r0, r0, lsl #0x10
	mov r1, r1, lsl #0x10
	orr r0, r1, r0, lsr #16
	str r0, [sp, #0x18]
	mov r0, r7
	mov r1, r6
	mov r2, r5
	bl NNS_G3dGeBufferOP_N
	add r0, r9, r10, lsl #3
	ldr r2, [r0, #0xc]
	ldr r1, [r0, #8]
	rsb r2, r2, #0
	mov r0, r1, asr #9
	add r0, r1, r0, lsr #22
	mov r1, r0, asr #0xa
	mov r0, r2, asr #9
	add r0, r2, r0, lsr #22
	mov r1, r1, lsl #0x10
	mov r0, r0, asr #0xa
	mov r1, r1, asr #0x10
	cmp r8, #0
	mov r1, r1, lsl #0x10
	mov r0, r0, lsl #0x10
	beq _020DD040
	mov r0, r0, asr #0x10
	mov r0, r0, lsl #0x10
	mov r0, r0, lsr #0x10
	mov r0, r0, lsl #0x10
	orr r1, r0, r1, lsr #16
	str r1, [sp, #0x10]
	mov r0, r11
	add r1, sp, #0x10
	mov r2, #2
	str r4, [sp, #0x14]
	bl NNS_G3dGeBufferOP_N
	mov r8, #0
	b _020DD068
_020DD040:
	mov r0, r0, asr #0x10
	mov r0, r0, lsl #0x10
	mov r0, r0, lsr #0x10
	mov r0, r0, lsl #0x10
	orr r0, r0, r1, lsr #16
	str r0, [sp, #0xc]
	mov r0, #0x25
	add r1, sp, #0xc
	mov r2, r5
	bl NNS_G3dGeBufferOP_N
_020DD068:
	ldr r0, [r9, #0x48]
	add r10, r10, #1
	cmp r10, r0
	blt _020DCF88
_020DD078:
	mov r1, #0
	mov r2, r1
	mov r0, #0x41
	bl NNS_G3dGeBufferOP_N
	add sp, sp, #0x40
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
	arm_func_end FUN_ov1_020dcd58

	arm_func_start FUN_ov1_020dd090
FUN_ov1_020dd090: ; 0x020DD090
	stmfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, lr}
	sub sp, sp, #0x1c
	mov r0, #3
	mov r10, #1
	str r1, [sp]
	str r0, [sp, #0x18]
	add r1, sp, #0x18
	mov r2, r10
	mov r0, #0x40
	bl NNS_G3dGeBufferOP_N
	ldr r0, [sp]
	ldr r1, [r0, #0xe40]
	mov r0, #0
	str r0, [sp, #4]
	cmp r1, #0
	ble _020DD210
_020DD0D0:
	ldr r1, [sp, #4]
	ldr r0, [sp]
	mov r2, #0x4c
	mla r8, r1, r2, r0
	ldr r0, [r8, #0x48]
	mov r9, #0
	cmp r0, #0
	ble _020DD1F4
	mov r4, #0x1000
	mov r11, #0x23
	mov r7, #0x22
	add r6, sp, #0x14
	mov r5, #1
_020DD104:
	add r1, r8, r9, lsl #3
	ldr r0, [r1, #0x28]
	ldr r1, [r1, #0x2c]
	mov r0, r0, lsl #8
	mov r1, r1, lsl #8
	mov r1, r1, asr #0x10
	mov r1, r1, lsl #0x10
	mov r0, r0, asr #0x10
	mov r1, r1, lsr #0x10
	mov r0, r0, lsl #0x10
	mov r1, r1, lsl #0x10
	orr r0, r1, r0, lsr #16
	str r0, [sp, #0x14]
	mov r0, r7
	mov r1, r6
	mov r2, r5
	bl NNS_G3dGeBufferOP_N
	add r0, r8, r9, lsl #3
	ldr r2, [r0, #0xc]
	ldr r1, [r0, #8]
	rsb r2, r2, #0
	mov r0, r1, asr #9
	add r0, r1, r0, lsr #22
	mov r1, r0, asr #0xa
	mov r0, r2, asr #9
	add r0, r2, r0, lsr #22
	mov r1, r1, lsl #0x10
	mov r0, r0, asr #0xa
	mov r1, r1, asr #0x10
	cmp r10, #0
	mov r1, r1, lsl #0x10
	mov r0, r0, lsl #0x10
	beq _020DD1BC
	mov r0, r0, asr #0x10
	mov r0, r0, lsl #0x10
	mov r0, r0, lsr #0x10
	mov r0, r0, lsl #0x10
	orr r0, r0, r1, lsr #16
	str r0, [sp, #0xc]
	mov r0, r11
	add r1, sp, #0xc
	mov r2, #2
	str r4, [sp, #0x10]
	bl NNS_G3dGeBufferOP_N
	mov r10, #0
	b _020DD1E4
_020DD1BC:
	mov r0, r0, asr #0x10
	mov r0, r0, lsl #0x10
	mov r0, r0, lsr #0x10
	mov r0, r0, lsl #0x10
	orr r0, r0, r1, lsr #16
	str r0, [sp, #8]
	mov r0, #0x25
	add r1, sp, #8
	mov r2, r5
	bl NNS_G3dGeBufferOP_N
_020DD1E4:
	add r9, r9, #1
	ldr r0, [r8, #0x48]
	cmp r9, r0
	blt _020DD104
_020DD1F4:
	ldr r0, [sp]
	ldr r1, [r0, #0xe40]
	ldr r0, [sp, #4]
	add r0, r0, #1
	str r0, [sp, #4]
	cmp r0, r1
	blt _020DD0D0
_020DD210:
	mov r1, #0
	mov r2, r1
	mov r0, #0x41
	bl NNS_G3dGeBufferOP_N
	add sp, sp, #0x1c
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
	arm_func_end FUN_ov1_020dd090

	arm_func_start FUN_ov1_020dd228
FUN_ov1_020dd228: ; 0x020DD228
	stmfd sp!, {r4, r5, r6, lr}
	sub sp, sp, #0x18
	mov r6, r1
	movs r5, r2
	cmpne r6, #0
	cmpne r3, #0
	ldrne r12, [r6, #0xe40]
	cmpne r12, #0x30
	addge sp, sp, #0x18
	ldmgefd sp!, {r4, r5, r6, pc}
	mov r4, #0x4c
	add r2, sp, #0
	mov r0, r5
	mov r1, r3
	mla r4, r12, r4, r6
	bl FUN_02009764
	ldr r0, [sp]
	cmp r0, #0
	ldreq r0, [sp, #4]
	cmpeq r0, #0
	addeq sp, sp, #0x18
	ldmeqfd sp!, {r4, r5, r6, pc}
	add r0, sp, #0
	mov r1, r0
	bl VEC_Normalize
	ldrb r1, [r6, #0xe4d]
	ldr r2, [sp]
	ldr r0, [sp, #4]
	mul r3, r2, r1
	mul r1, r0, r1
	mov r2, r3, asr #1
	mov r0, r1, asr #1
	str r2, [sp]
	str r0, [sp, #4]
	ldr r0, [r5]
	add r0, r0, r1, asr #1
	sub r0, r0, r3, asr #1
	bl FUN_02053438
	str r0, [r4, #8]
	ldr r2, [r5, #4]
	ldr r1, [sp]
	ldr r0, [sp, #4]
	sub r1, r2, r1
	sub r0, r1, r0
	bl FUN_02053438
	str r0, [r4, #0xc]
	ldr r1, [r4, #8]
	ldr r0, [sp, #4]
	sub r0, r1, r0, lsl #1
	bl FUN_02053438
	str r0, [r4, #0x10]
	ldr r1, [r4, #0xc]
	ldr r0, [sp]
	add r0, r1, r0, lsl #1
	bl FUN_02053438
	str r0, [r4, #0x14]
	ldr r1, [r5]
	ldr r0, [sp]
	add r0, r1, r0
	bl FUN_02053438
	str r0, [r4, #0x18]
	ldr r1, [r5, #4]
	ldr r0, [sp, #4]
	add r0, r1, r0
	bl FUN_02053438
	str r0, [r4, #0x1c]
	mov r1, #0
	str r1, [r4, #0x28]
	mov r0, #0x10000
	str r0, [r4, #0x2c]
	str r0, [r4, #0x30]
	str r0, [r4, #0x34]
	str r1, [r4, #0x38]
	str r1, [r4, #0x3c]
	mov r0, #3
	str r0, [r4, #0x48]
	ldr r0, [r6, #0xe40]
	add r0, r0, #1
	str r0, [r6, #0xe40]
	add sp, sp, #0x18
	ldmfd sp!, {r4, r5, r6, pc}
	arm_func_end FUN_ov1_020dd228

	arm_func_start FUN_ov1_020dd36c
FUN_ov1_020dd36c: ; 0x020DD36C
	stmfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, lr}
	sub sp, sp, #0x8c
	mov r10, r1
	ldr r0, [r10, #0xe40]
	ldr r7, [sp, #0xb0]
	mov r9, r2
	mov r8, r3
	cmp r0, #0x30
	add r4, sp, #0x74
	addge sp, sp, #0x8c
	ldmgefd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
	cmp r8, #0
	addeq sp, sp, #0x8c
	ldmeqfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
	cmp r9, #0
	beq _020DD3C8
	ldr r1, [r9]
	ldr r0, [r8]
	cmp r1, r0
	ldreq r1, [r9, #4]
	ldreq r0, [r8, #4]
	cmpeq r1, r0
	moveq r9, #0
_020DD3C8:
	cmp r7, #0
	beq _020DD3EC
	ldr r1, [r7]
	ldr r0, [r8]
	cmp r1, r0
	ldreq r1, [r7, #4]
	ldreq r0, [r8, #4]
	cmpeq r1, r0
	moveq r7, #0
_020DD3EC:
	cmp r9, #0
	cmpne r7, #0
	beq _020DD414
	ldr r1, [r9]
	ldr r0, [r7]
	cmp r1, r0
	ldreq r1, [r9, #4]
	ldreq r0, [r7, #4]
	cmpeq r1, r0
	moveq r9, #0
_020DD414:
	cmp r9, #0
	bne _020DD428
	cmp r7, #0
	addeq sp, sp, #0x8c
	ldmeqfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
_020DD428:
	mov r5, #0
	cmp r7, #0
	str r5, [sp, #4]
	cmpne r9, #0
	beq _020DD470
	mov r0, r8
	mov r1, r9
	mov r2, r4
	bl FUN_02009764
	add r6, sp, #0x80
	mov r0, r7
	mov r1, r8
	mov r2, r6
	bl FUN_02009764
	mov r0, r4
	mov r1, r6
	bl FUN_0205330c
	str r0, [sp, #4]
_020DD470:
	cmp r7, #0
	beq _020DD498
	mov r0, r7
	mov r1, r8
	mov r2, r4
	bl FUN_02009764
	mov r0, r4
	mov r1, r4
	bl VEC_Normalize
	add r5, r5, #1
_020DD498:
	cmp r9, #0
	beq _020DD4C8
	mov r0, #0xc
	mul r6, r5, r0
	mov r0, r8
	mov r1, r9
	add r2, r4, r6
	bl FUN_02009764
	add r0, r4, r6
	mov r1, r0
	bl VEC_Normalize
	add r5, r5, #1
_020DD4C8:
	cmp r5, #0
	mov r6, #0
	ble _020DD518
	mov r11, #0xc
_020DD4D8:
	mul r1, r6, r11
	ldrb r2, [r10, #0xe4c]
	ldr r3, [r4, r1]
	add r0, r4, r1
	mul r3, r2, r3
	mov r3, r3, asr #1
	str r3, [r4, r1]
	ldr r3, [r0, #4]
	mov r1, r0
	mul r3, r2, r3
	mov r2, r3, asr #1
	str r2, [r0, #4]
	bl FUN_0205341c
	add r6, r6, #1
	cmp r6, r5
	blt _020DD4D8
_020DD518:
	cmp r9, #0
	add r4, sp, #0x74
	cmpne r7, #0
	beq _020DD730
	ldr r0, [sp, #4]
	cmp r0, #0
	bne _020DD730
	add r6, sp, #0x44
	mov r0, r8
	mov r1, r4
	mov r2, r6
	bl FUN_02009734
	add r5, sp, #0x50
	mov r0, r7
	mov r1, r4
	mov r2, r5
	bl FUN_02009734
	add r4, sp, #0x80
	add r11, sp, #0x5c
	mov r0, r8
	mov r1, r4
	mov r2, r11
	bl FUN_02009734
	mov r1, r4
	add r4, sp, #0x68
	mov r0, r9
	mov r2, r4
	bl FUN_02009734
	mov r3, r4
	add r4, sp, #8
	mov r2, r11
	mov r0, r6
	mov r1, r5
	str r4, [sp]
	bl FUN_02053324
	cmp r0, #0
	beq _020DD5FC
	mov r0, r6
	mov r1, r5
	mov r2, r4
	bl FUN_0205344c
	cmp r0, #0
	bne _020DD5E0
	ldr r5, [sp, #0x5c]
	ldr r4, [sp, #0x60]
	ldr r3, [sp, #0x64]
	ldr r2, [sp, #0x44]
	ldr r1, [sp, #0x48]
	ldr r0, [sp, #0x4c]
	b _020DD614
_020DD5E0:
	ldr r2, [sp, #8]
	ldr r1, [sp, #0xc]
	ldr r0, [sp, #0x10]
	str r2, [sp, #0x14]
	str r1, [sp, #0x18]
	str r0, [sp, #0x1c]
	b _020DD620
_020DD5FC:
	ldr r5, [sp, #0x44]
	ldr r4, [sp, #0x48]
	ldr r3, [sp, #0x4c]
	ldr r2, [sp, #0x50]
	ldr r1, [sp, #0x54]
	ldr r0, [sp, #0x58]
_020DD614:
	str r5, [sp, #0x14]
	str r4, [sp, #0x18]
	str r3, [sp, #0x1c]
_020DD620:
	str r2, [sp, #0x2c]
	str r1, [sp, #0x30]
	str r0, [sp, #0x34]
	add r6, sp, #0x74
	add r5, sp, #0x44
	mov r0, r8
	mov r1, r6
	mov r2, r5
	bl FUN_02009764
	add r4, sp, #0x50
	mov r0, r7
	mov r1, r6
	mov r2, r4
	bl FUN_02009764
	add r6, sp, #0x80
	add r7, sp, #0x5c
	mov r0, r8
	mov r1, r6
	mov r2, r7
	bl FUN_02009764
	mov r1, r6
	add r6, sp, #0x68
	mov r0, r9
	mov r2, r6
	bl FUN_02009764
	mov r3, r6
	add r6, sp, #8
	mov r2, r7
	mov r0, r5
	mov r1, r4
	str r6, [sp]
	bl FUN_02053324
	cmp r0, #0
	beq _020DD6F8
	mov r0, r5
	mov r1, r4
	mov r2, r6
	bl FUN_0205344c
	cmp r0, #0
	bne _020DD6DC
	ldr r5, [sp, #0x5c]
	ldr r4, [sp, #0x60]
	ldr r3, [sp, #0x64]
	ldr r2, [sp, #0x44]
	ldr r1, [sp, #0x48]
	ldr r0, [sp, #0x4c]
	b _020DD710
_020DD6DC:
	ldr r2, [sp, #8]
	ldr r1, [sp, #0xc]
	ldr r0, [sp, #0x10]
	str r2, [sp, #0x20]
	str r1, [sp, #0x24]
	str r0, [sp, #0x28]
	b _020DD71C
_020DD6F8:
	ldr r5, [sp, #0x44]
	ldr r4, [sp, #0x48]
	ldr r3, [sp, #0x4c]
	ldr r2, [sp, #0x50]
	ldr r1, [sp, #0x54]
	ldr r0, [sp, #0x58]
_020DD710:
	str r5, [sp, #0x20]
	str r4, [sp, #0x24]
	str r3, [sp, #0x28]
_020DD71C:
	str r2, [sp, #0x38]
	str r1, [sp, #0x3c]
	str r0, [sp, #0x40]
	mov r7, #4
	b _020DD754
_020DD730:
	add r2, sp, #0x14
	mov r0, r8
	mov r1, r4
	bl FUN_02009734
	add r2, sp, #0x20
	mov r0, r8
	mov r1, r4
	bl FUN_02009764
	mov r7, #2
_020DD754:
	cmp r7, #0
	addle sp, sp, #0x8c
	ldmlefd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
	ldr r1, [r10, #0xe40]
	mov r0, #0x4c
	mul r2, r1, r0
	ldr r0, [r8]
	add r6, r10, r2
	str r0, [r10, r2]
	ldr r0, [r8, #4]
	cmp r7, #0
	str r0, [r6, #4]
	mov r9, #0
	ble _020DD7EC
	mov r4, #0x18000
	add r5, sp, #0x14
	mov r11, #0xc
_020DD798:
	mul r1, r9, r11
	ldr r0, [r5, r1]
	add r8, r5, r1
	bl FUN_02053438
	add r1, r6, r9, lsl #3
	str r0, [r1, #8]
	ldr r0, [r8, #4]
	bl FUN_02053438
	mov r2, r9, lsr #0x1f
	add r3, r6, r9, lsl #3
	rsb r1, r2, r9, lsl #31
	str r0, [r3, #0xc]
	adds r0, r2, r1, ror #31
	moveq r1, #0x4000
	add r0, r6, r9, lsl #3
	movne r1, #0xc000
	str r1, [r0, #0x28]
	add r9, r9, #1
	str r4, [r0, #0x2c]
	cmp r9, r7
	blt _020DD798
_020DD7EC:
	str r7, [r6, #0x48]
	ldr r1, [r10, #0xe44]
	ldr r0, [r10, #0xe40]
	add r1, r1, r7
	add r0, r0, #1
	str r1, [r10, #0xe44]
	str r0, [r10, #0xe40]
	add sp, sp, #0x8c
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
	arm_func_end FUN_ov1_020dd36c

	arm_func_start FUN_ov1_020dd810
FUN_ov1_020dd810: ; 0x020DD810
	stmfd sp!, {r3, r4, r5, lr}
	mov r5, r0
	mov r4, #0
	mov r0, r4
	mov r1, r5
	mov r2, #0x228
	bl MIi_CpuClearFast
	strb r4, [r5, #0x3a4]
	ldmfd sp!, {r3, r4, r5, pc}
	arm_func_end FUN_ov1_020dd810

	arm_func_start FUN_ov1_020dd834
FUN_ov1_020dd834: ; 0x020DD834
	mov r0, #1
	bx lr
	arm_func_end FUN_ov1_020dd834

	arm_func_start FUN_ov1_020dd83c
FUN_ov1_020dd83c: ; 0x020DD83C
	stmfd sp!, {r4, r5, r6, r7, r8, lr}
	sub sp, sp, #8
	mov r5, r0
	bl FUN_ov1_020de238
	cmp r0, #0
	addeq sp, sp, #8
	ldmeqfd sp!, {r4, r5, r6, r7, r8, pc}
	ldr r1, _020DD8F4 ; =0x0209A12C
	ldr r0, _020DD8F8 ; =0x0209A140
	ldr r1, [r1]
	ldr r0, [r0]
	mov r1, r1, lsl #0xc
	rsb r1, r1, #0
	mov r0, r0, lsl #0xc
	str r1, [sp, #4]
	str r0, [sp]
	mov r4, #0
	add r8, sp, #4
	add r7, sp, #0
	mov r6, #0x114
_020DD88C:
	mla r1, r4, r6, r5
	ldrb r0, [r1, #0x110]
	cmp r0, #0
	bne _020DD8E0
	ldrb r0, [r1, #0x10e]
	add r0, r0, #1
	and r0, r0, #0x3f
	strb r0, [r1, #0x10e]
	ldrb r0, [r1, #0x10f]
	cmp r0, #0
	beq _020DD8D0
	ldrb r0, [r1, #0x10e]
	mov r0, r0, lsr #1
	cmp r0, #0xf
	rsbgt r0, r0, #0x1f
	add r0, r0, #8
	strb r0, [r1, #0x10c]
_020DD8D0:
	mov r0, r5
	mov r2, r8
	mov r3, r7
	bl FUN_ov1_020de9f4
_020DD8E0:
	add r4, r4, #1
	cmp r4, #2
	blt _020DD88C
	add sp, sp, #8
	ldmfd sp!, {r4, r5, r6, r7, r8, pc}
_020DD8F4: .word 0x0209A12C
_020DD8F8: .word 0x0209A140
	arm_func_end FUN_ov1_020dd83c

	arm_func_start FUN_ov1_020dd8fc
FUN_ov1_020dd8fc: ; 0x020DD8FC
	cmp r2, #0
	mov r2, #0x114
	mla r0, r1, r2, r0
	mov r3, #1
	moveq r3, #0
	strb r3, [r0, #0x110]
	bx lr
	arm_func_end FUN_ov1_020dd8fc

	arm_func_start FUN_ov1_020dd918
FUN_ov1_020dd918: ; 0x020DD918
	stmfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, lr}
	sub sp, sp, #0x8c
	mov r9, r2
	movs r2, r1
	ldr r2, [sp, #0xb0]
	str r1, [sp, #8]
	str r2, [sp, #0xb0]
	ldr r2, [sp, #0xb4]
	mov r10, r0
	str r2, [sp, #0xb4]
	mov r8, r3
	addmi sp, sp, #0x8c
	ldmmifd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
	mov r2, r1
	cmp r2, #2
	addge sp, sp, #0x8c
	ldmgefd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
	bl FUN_ov1_020de210
	mov r0, r10
	bl FUN_ov1_020de238
	cmp r0, #0
	addeq sp, sp, #0x8c
	ldmeqfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
	ldr r0, [sp, #8]
	mov r1, #0x114
	mul r1, r0, r1
	mov r0, r1
	add r4, r10, r0
	ldr r3, [sp, #0xb8]
	str r1, [sp, #0x10]
	add r0, r3, r3, lsr #31
	mov r5, r0, asr #1
	str r9, [r4, #0xf4]
	ldr r1, _020DE1A4 ; =0xB60B60B7
	ldr r0, [sp, #0xb0]
	str r8, [r4, #0xf8]
	mov r6, r5, lsl #0x10
	str r0, [r4, #0xfc]
	smull r0, r2, r1, r6
	ldr r0, [sp, #0xb4]
	ldr r1, [sp, #0xb0]
	str r0, [r4, #0x100]
	add r2, r2, r5, lsl #16
	mov r0, r6, lsr #0x1f
	add r2, r0, r2, asr #8
	ldr r0, [sp, #0xb4]
	mov r2, r2, lsl #0x10
	sub r0, r0, r8
	sub r1, r1, r9
	strb r3, [r4, #0x111]
	str r2, [sp, #0x54]
	bl FUN_02009a98
	ldr r1, [sp, #0xb0]
	str r0, [sp, #0x34]
	sub r1, r9, r1
	str r1, [sp, #0x3c]
	ldr r1, [sp, #0xb4]
	mov r5, #0
	sub r1, r8, r1
	mov r0, r1
	mov r0, r0, asr #2
	str r1, [sp, #0x38]
	smull r2, r1, r0, r0
	ldr r0, [sp, #0x3c]
	mov r4, r0, asr #2
	smull r3, r0, r4, r4
	adds r3, r3, #0x800
	adc r0, r0, #0
	mov r3, r3, lsr #0xc
	adds r2, r2, #0x800
	orr r3, r3, r0, lsl #20
	adc r0, r1, #0
	mov r1, r2, lsr #0xc
	orr r1, r1, r0, lsl #20
	mov r0, r1, asr #4
	add r0, r0, r3, asr #4
	bl FUN_020095ac
	mov r0, r0, lsl #4
	str r0, [sp, #0x4c]
	mov r0, r10
	bl FUN_ov1_020decc0
	mov r0, r10
	bl FUN_ov1_020ded24
	mov r11, r0
	mov r0, r10
	mov r1, r11
	bl FUN_ov1_020ded80
	mov r0, r10
	bl FUN_ov1_020ded24
	str r0, [sp, #0x48]
	ldr r1, [sp, #0x48]
	mov r0, r10
	bl FUN_ov1_020ded80
	ldr r0, [sp, #0x34]
	ldr r4, _020DE1A8 ; =0x02087874
	add r7, r0, #0x6000
_020DDA98:
	mov r0, r10
	bl FUN_ov1_020ded24
	mov r6, r0
	mov r0, r10
	mov r1, r6
	bl FUN_ov1_020ded80
	mov r1, r5, lsl #0x10
	mov r0, r1, asr #4
	add r0, r1, r0, lsr #27
	add r0, r7, r0, asr #5
	mov r0, r0, lsl #0x10
	mov r0, r0, lsr #0x10
	mov r0, r0, asr #4
	mov r0, r0, lsl #1
	mov r2, r0, lsl #1
	add r0, r4, r0, lsl #1
	ldrsh r1, [r0, #2]
	ldrsh r0, [r4, r2]
	add r5, r5, #1
	add r1, r9, r1, lsl #3
	str r1, [r6]
	add r0, r8, r0, lsl #3
	str r0, [r6, #4]
	cmp r5, #9
	blt _020DDA98
	mov r0, r10
	mov r1, #2
	bl FUN_ov1_020dee64
	mov r7, r0
	ldr r1, [sp, #0x34]
	ldr r0, [sp, #0x54]
	ldr lr, [r6]
	sub r3, r1, r0, lsr #16
	add r2, r1, r0, lsr #16
	mov r0, r3, lsl #0x10
	mov r0, r0, lsr #0x10
	mov r0, r0, asr #4
	mov r1, r0, lsl #1
	mov r0, r2, lsl #0x10
	add r2, r1, #1
	mov r1, r1, lsl #1
	ldrsh r1, [r4, r1]
	mov r2, r2, lsl #1
	ldrsh r2, [r4, r2]
	str r1, [sp, #0x24]
	ldr r1, [sp, #0x4c]
	mov r0, r0, lsr #0x10
	mov r5, r1, lsl #1
	mov r1, r2
	str r2, [sp, #0x2c]
	mov r1, r1, asr #0x1f
	str r1, [sp, #0x30]
	ldr r1, [sp, #0x24]
	mov r0, r0, asr #4
	mov r1, r1, asr #0x1f
	mov r0, r0, lsl #1
	str r1, [sp, #0x28]
	add r1, r0, #1
	mov r1, r1, lsl #1
	mov r0, r0, lsl #1
	ldrsh r1, [r4, r1]
	ldrsh r0, [r4, r0]
	ldr r3, [sp, #0x2c]
	str r1, [sp, #0x1c]
	smull r12, r4, r3, r5
	adds r3, r12, #0x800
	adc r4, r4, #0
	mov r3, r3, lsr #0xc
	orr r3, r3, r4, lsl #20
	add r3, lr, r3
	ldr r4, [sp, #0x24]
	str r3, [r11]
	smull r12, lr, r4, r5
	adds r4, r12, #0x800
	ldr r3, [r6, #4]
	str r0, [sp, #0x14]
	str r3, [sp, #0x58]
	mov r0, r1
	mov r0, r0, asr #0x1f
	str r0, [sp, #0x20]
	ldr r0, [sp, #0x3c]
	adc r12, lr, #0
	mov r4, r4, lsr #0xc
	orr r4, r4, r12, lsl #20
	ldr r12, [sp, #0x58]
	mov r0, r0, asr #0x1f
	add r4, r12, r4
	str r4, [r11, #4]
	ldr r4, [r7]
	mov r9, r0, lsl #0xd
	str r4, [sp, #0x5c]
	ldr r4, [sp, #0x1c]
	ldr r0, [sp, #0x14]
	smull r12, lr, r4, r5
	adds r4, r12, #0x800
	mov r0, r0, asr #0x1f
	str r0, [sp, #0x18]
	ldr r0, [sp, #0x3c]
	adc r12, lr, #0
	mov r4, r4, lsr #0xc
	orr r4, r4, r12, lsl #20
	ldr r12, [sp, #0x5c]
	orr r9, r9, r0, lsr #19
	add r12, r12, r4
	ldr r4, [sp, #0x48]
	ldr r0, [sp, #0x38]
	str r12, [r4]
	ldr r4, [sp, #0x14]
	mov r0, r0, asr #0x1f
	smull r12, r5, r4, r5
	adds r12, r12, #0x800
	adc r4, r5, #0
	mov lr, r12, lsr #0xc
	orr lr, lr, r4, lsl #20
	mov r1, r0, lsl #0xd
	ldr r0, [sp, #0x38]
	ldr r4, [sp, #0x3c]
	orr r0, r1, r0, lsr #19
	mov r5, #0x800
	adds r12, r5, r4, lsl #13
	adc r5, r9, #0
	str r0, [sp, #0x50]
	ldr r4, [sp, #0x38]
	mov r9, #0x800
	adds r4, r9, r4, lsl #13
	mov r9, r12, lsr #0xc
	orr r9, r9, r5, lsl #20
	ldr r5, [sp, #0x50]
	mov r4, r4, lsr #0xc
	adc r5, r5, #0
	orr r4, r4, r5, lsl #20
	ldr r12, [sp, #0xb0]
	ldr r5, [r7, #4]
	add r12, r12, r4
	str r12, [sp, #0x60]
	ldr r12, [sp, #0xb0]
	add r5, r5, lr
	sub r4, r12, r4
	ldr r12, [sp, #0x48]
	mov r0, r10
	str r5, [r12, #4]
	ldr r5, [sp, #0x60]
	str r4, [sp, #0x84]
	ldr r4, [sp, #0xb4]
	str r5, [sp, #0x7c]
	sub r5, r4, r9
	add r4, r4, r9
	str r4, [sp, #0x88]
	str r5, [sp, #0x80]
	add r4, sp, #0x84
	mov r1, r6
	mov r2, r11
	add r3, sp, #0x7c
	stmia sp, {r4, r11}
	mov r8, #0
	bl FUN_ov1_020de2f0
	mov r0, r4
	str r0, [sp]
	ldr r0, [sp, #0x48]
	ldr r2, [sp, #0x48]
	str r0, [sp, #4]
	add r3, sp, #0x7c
	mov r0, r10
	mov r1, r7
	bl FUN_ov1_020de2f0
	ldr r0, [sp, #0x48]
	ldr r3, [r10, #0x234]
	ldr r0, [r0, #4]
	cmp r0, r3
	orrlt r8, r8, #1
	blt _020DDDAC
	ldr r2, [r10, #0x244]
	cmp r0, r2
	orrgt r8, r8, #2
	bgt _020DDDAC
	ldr r0, [sp, #0x48]
	ldr r1, [r10, #0x230]
	ldr r0, [r0]
	cmp r0, r1
	orrlt r8, r8, #4
	blt _020DDDAC
	cmp r0, r2
	orrgt r8, r8, #8
	bgt _020DDDAC
	ldr r0, [r11, #4]
	cmp r0, r3
	orrlt r8, r8, #1
	blt _020DDDAC
	cmp r0, r2
	orrgt r8, r8, #2
	bgt _020DDDAC
	ldr r0, [r11]
	cmp r0, r1
	orrlt r8, r8, #4
	blt _020DDDAC
	cmp r0, r2
	orrgt r8, r8, #8
_020DDDAC:
	cmp r8, #0
	beq _020DDE88
	ldr r0, [sp, #0x4c]
	ldr r3, [sp, #0x2c]
	add r2, r0, r0, lsl #1
	mov r1, r2, asr #0x1f
	umull r5, r4, r3, r2
	mla r4, r3, r1, r4
	ldr r3, [sp, #0x30]
	adds r5, r5, #0x800
	mla r4, r3, r2, r4
	adc r3, r4, #0
	mov r4, r5, lsr #0xc
	orr r4, r4, r3, lsl #20
	ldr r0, [r6]
	ldr r3, [sp, #0x24]
	add r0, r0, r4
	umull r5, r4, r3, r2
	mla r4, r3, r1, r4
	ldr r3, [sp, #0x28]
	str r0, [r11]
	mla r4, r3, r2, r4
	adds r5, r5, #0x800
	adc r3, r4, #0
	mov r4, r5, lsr #0xc
	ldr r0, [r6, #4]
	orr r4, r4, r3, lsl #20
	add r0, r0, r4
	str r0, [r11, #4]
	ldr r0, [sp, #0x1c]
	ldr r5, [r7]
	umull r4, r3, r0, r2
	mla r3, r0, r1, r3
	ldr r0, [sp, #0x20]
	adds r4, r4, #0x800
	mla r3, r0, r2, r3
	adc r0, r3, #0
	mov r3, r4, lsr #0xc
	orr r3, r3, r0, lsl #20
	ldr r0, [sp, #0x48]
	add r3, r5, r3
	str r3, [r0]
	ldr r0, [sp, #0x14]
	ldr r5, [r7, #4]
	umull r4, r3, r0, r2
	mla r3, r0, r1, r3
	ldr r0, [sp, #0x18]
	adds r1, r4, #0x800
	mla r3, r0, r2, r3
	adc r0, r3, #0
	mov r1, r1, lsr #0xc
	orr r1, r1, r0, lsl #20
	ldr r0, [sp, #0x48]
	add r1, r5, r1
	str r1, [r0, #4]
_020DDE88:
	mov r0, #0
	str r0, [sp, #0x44]
_020DDE90:
	mov r7, #0
	mov r0, r10
	mov r1, r7
	bl FUN_ov1_020dee24
	mov r8, r0
	mov r0, r10
	bl FUN_ov1_020dedac
	str r0, [sp, #0x40]
	mov r4, r7
	str r7, [sp, #0xc]
	cmp r0, #0
	ble _020DDFCC
	ldr r0, [sp, #0x44]
	add r2, r10, #0x258
	add r1, r10, #0x250
	add r5, r2, r0, lsl #4
	add r11, r1, r0, lsl #4
_020DDED4:
	cmp r4, #0
	mov r0, r10
	mov r1, r8
	bne _020DDEEC
	bl FUN_ov1_020dee24
	b _020DDEF0
_020DDEEC:
	bl FUN_ov1_020dee00
_020DDEF0:
	mov r9, r0
	add r0, sp, #0x6c
	str r5, [sp]
	add r0, r0, r7, lsl #3
	str r0, [sp, #4]
	mov r0, r10
	mov r1, r8
	mov r2, r9
	mov r3, r11
	bl FUN_ov1_020de2f0
	cmp r0, #0
	beq _020DDFA8
	mov r0, r10
	bl FUN_ov1_020ded24
	add r1, sp, #0x64
	str r0, [r1, r7, lsl #2]
	mov r0, r1
	ldr r6, [r0, r7, lsl #2]
	cmp r4, #0
	mov r0, r10
	mov r1, r6
	bne _020DDF50
	mov r2, r9
	b _020DDF54
_020DDF50:
	mov r2, r8
_020DDF54:
	bl FUN_ov1_020ded90
	add r0, sp, #0x6c
	ldr r1, [r0, r7, lsl #3]!
	cmp r7, #0
	str r1, [r6]
	ldr r0, [r0, #4]
	str r0, [r6, #4]
	bne _020DDFA4
	mov r3, r8
	mov r0, r10
	mov r1, r11
	mov r2, r5
	bl FUN_ov1_020de680
	cmp r0, #0
	bne _020DDFA4
	mov r0, r10
	mov r1, #0
	mov r4, #1
	bl FUN_ov1_020dee24
	mov r9, r0
_020DDFA4:
	add r7, r7, #1
_020DDFA8:
	mov r8, r9
	cmp r7, #2
	bge _020DDFCC
	ldr r0, [sp, #0xc]
	add r1, r0, #1
	ldr r0, [sp, #0x40]
	str r1, [sp, #0xc]
	cmp r1, r0
	blt _020DDED4
_020DDFCC:
	cmp r7, #0
	cmpne r7, #1
	beq _020DE004
	cmp r7, #2
	bgt _020DE004
	cmp r4, #0
	bne _020DDFF4
	ldr r1, [sp, #0x64]
	ldr r2, [sp, #0x68]
	b _020DDFFC
_020DDFF4:
	ldr r1, [sp, #0x68]
	ldr r2, [sp, #0x64]
_020DDFFC:
	mov r0, r10
	bl FUN_ov1_020dedb8
_020DE004:
	ldr r0, [sp, #0x44]
	add r0, r0, #1
	str r0, [sp, #0x44]
	cmp r0, #4
	blt _020DDE90
	mov r4, #0
	mov r0, r10
	mov r1, r4
	bl FUN_ov1_020dee4c
	mov r1, r0
	ldr r0, [sp, #0x10]
	add r6, r10, r0
_020DE034:
	cmp r1, #0
	beq _020DE064
	ldr r0, [r1]
	add r3, r6, r4, lsl #3
	str r0, [r3, #4]
	ldr r2, [r1, #4]
	mov r0, r10
	str r2, [r3, #8]
	bl FUN_ov1_020dee4c
	mov r1, r0
	add r4, r4, #1
	b _020DE034
_020DE064:
	ldr r0, [sp, #8]
	mov r1, #0x114
	mul r7, r0, r1
	sub r0, r4, #1
	add r11, r10, r7
	str r4, [r10, r7]
	cmp r0, #0
	add r4, r11, #4
	mov r5, #0
	ble _020DE0D0
_020DE08C:
	ldr r0, [r6]
	add r2, r5, #1
	cmp r2, r0
	subge r2, r2, r0
	add r3, r5, #2
	cmp r3, r0
	subge r3, r3, r0
	mov r0, r10
	add r1, r4, r5, lsl #3
	add r2, r4, r2, lsl #3
	add r3, r4, r3, lsl #3
	bl FUN_ov1_020de680
	ldr r0, [r6]
	add r5, r5, #1
	sub r0, r0, #1
	cmp r5, r0
	blt _020DE08C
_020DE0D0:
	add r0, r10, #0x300
	ldrh r5, [r0, #0x94]
	mov r4, #0
	mov r8, r4
	cmp r5, #0
	ble _020DE148
_020DE0E8:
	mov r0, r10
	mov r1, r4
	bl FUN_ov1_020dee4c
	movs r9, r0
	beq _020DE148
	mov r0, r10
	mov r1, r9
	bl FUN_ov1_020dee7c
	mov r0, r10
	mov r1, r9
	bl FUN_ov1_020dee9c
	mov r0, r10
	bl FUN_ov1_020dee5c
	movs r9, r0
	beq _020DE148
	mov r0, r10
	mov r1, r9
	bl FUN_ov1_020dee7c
	mov r0, r10
	mov r1, r9
	bl FUN_ov1_020dee9c
	add r8, r8, #1
	cmp r8, r5
	blt _020DE0E8
_020DE148:
	mov r4, #0
	mov r0, r10
	mov r1, r4
	bl FUN_ov1_020dee8c
	mov r1, r0
_020DE15C:
	cmp r1, #0
	beq _020DE18C
	ldr r0, [r1]
	add r3, r6, r4, lsl #3
	str r0, [r3, #0x7c]
	ldr r2, [r1, #4]
	mov r0, r10
	str r2, [r3, #0x80]
	bl FUN_ov1_020dee8c
	mov r1, r0
	add r4, r4, #1
	b _020DE15C
_020DE18C:
	str r4, [r11]
	add r0, r10, r7
	mov r1, #1
	strb r1, [r0, #0x10d]
	add sp, sp, #0x8c
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
_020DE1A4: .word 0xB60B60B7
_020DE1A8: .word 0x02087874
	arm_func_end FUN_ov1_020dd918

	arm_func_start FUN_ov1_020de1ac
FUN_ov1_020de1ac: ; 0x020DE1AC
	cmp r1, #0
	bxlt lr
	cmp r1, #2
	bxge lr
	mov r12, #0x114
	mla r12, r1, r12, r0
	add r0, r12, #0x100
	strh r2, [r0, #0xa]
	ldr r1, [sp]
	mov r0, #1
	cmp r1, #0
	strb r3, [r12, #0x10c]
	moveq r0, #0
	strb r0, [r12, #0x10f]
	bx lr
	arm_func_end FUN_ov1_020de1ac

	arm_func_start FUN_ov1_020de1e8
FUN_ov1_020de1e8: ; 0x020DE1E8
	stmfd sp!, {r3, r4, r5, lr}
	mov r5, r0
	mov r4, #0
_020DE1F4:
	mov r0, r5
	mov r1, r4
	bl FUN_ov1_020de210
	add r4, r4, #1
	cmp r4, #2
	blt _020DE1F4
	ldmfd sp!, {r3, r4, r5, pc}
	arm_func_end FUN_ov1_020de1e8

	arm_func_start FUN_ov1_020de210
FUN_ov1_020de210: ; 0x020DE210
	cmp r1, #0
	bxlt lr
	cmp r1, #2
	movlt r2, #0x114
	mlalt r0, r1, r2, r0
	movlt r1, #0
	strltb r1, [r0, #0x10d]
	bx lr
	arm_func_end FUN_ov1_020de210

	arm_func_start FUN_ov1_020de230
FUN_ov1_020de230: ; 0x020DE230
	strb r1, [r0, #0x3a4]
	bx lr
	arm_func_end FUN_ov1_020de230

	arm_func_start FUN_ov1_020de238
FUN_ov1_020de238: ; 0x020DE238
	ldrb r0, [r0, #0x3a4]
	bx lr
	arm_func_end FUN_ov1_020de238

	arm_func_start FUN_ov1_020de240
FUN_ov1_020de240: ; 0x020DE240
	stmfd sp!, {r4, r5, r6, r7, r8, r9, r10, lr}
	sub sp, sp, #8
	cmp r1, #2
	mov r4, r0
	addhs sp, sp, #8
	movhs r0, #0
	ldmhsfd sp!, {r4, r5, r6, r7, r8, r9, r10, pc}
	mov r0, #0x114
	mul r0, r1, r0
	str r2, [sp]
	str r3, [sp, #4]
	ldr r7, [r4, r0]
	add r10, r4, r0
	mov r9, #0
	mov r8, r9
	cmp r7, #0
	add r6, r10, #4
	ble _020DE2C0
	add r5, sp, #0
_020DE28C:
	add r2, r8, #1
	cmp r2, r7
	subge r2, r2, r7
	mov r0, r4
	mov r3, r5
	add r1, r6, r8, lsl #3
	add r2, r6, r2, lsl #3
	bl FUN_ov1_020de680
	cmp r0, #0
	add r8, r8, #1
	orreq r9, r9, #1
	cmp r8, r7
	blt _020DE28C
_020DE2C0:
	cmp r9, #0
	mvnne r0, #0
	bne _020DE2E0
	add r3, sp, #0
	mov r0, r4
	add r1, r10, #0xf4
	add r2, r10, #0xfc
	bl FUN_ov1_020de6f8
_020DE2E0:
	cmp r0, #0
	mvnlt r0, #0
	add sp, sp, #8
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, pc}
	arm_func_end FUN_ov1_020de240

	arm_func_start FUN_ov1_020de2f0
FUN_ov1_020de2f0: ; 0x020DE2F0
	stmfd sp!, {r4, r5, r6, r7, r8, r9, lr}
	sub sp, sp, #0x24
	ldr r7, [sp, #0x40]
	mov r0, r3
	ldr r4, [r0]
	str r3, [sp]
	ldr r3, [r0, #4]
	ldr r0, [r2, #4]
	ldr r2, [r2]
	ldr r5, [r7]
	mov r4, r4, asr #4
	ldr r6, [r1]
	rsb r8, r4, r5, asr #4
	mov r2, r2, asr #4
	sub r5, r2, r6, asr #4
	mov r2, r8, asr #2
	str r2, [sp, #4]
	mov r2, r5, asr #2
	str r2, [sp, #0x14]
	ldr r5, [r1, #4]
	mov r1, r0, asr #4
	sub r1, r1, r5, asr #4
	mov r1, r1, asr #2
	str r1, [sp, #0xc]
	ldr r2, [r7, #4]
	mov r3, r3, asr #4
	rsb r0, r3, r2, asr #4
	str r0, [sp, #0x1c]
	ldr r2, [sp, #0x14]
	mov r0, r0, asr #2
	smull r7, r1, r2, r0
	adds r2, r7, #0x800
	sub r4, r4, r6, asr #4
	ldr r9, [sp, #0xc]
	ldr r7, [sp, #4]
	sub r3, r3, r5, asr #4
	smull r12, r7, r9, r7
	adc r6, r1, #0
	adds r5, r12, #0x800
	mov r9, r2, lsr #0xc
	adc r1, r7, #0
	mov r2, r5, lsr #0xc
	orr r2, r2, r1, lsl #20
	ldr r1, [sp, #4]
	orr r9, r9, r6, lsl #20
	sub r2, r9, r2
	mov r1, r1, asr #0x1f
	str r1, [sp, #8]
	ldr r1, [sp, #0xc]
	movs r7, r2, lsl #2
	mov r1, r1, asr #0x1f
	str r1, [sp, #0x10]
	ldr r1, [sp, #0x14]
	ldr r9, [sp, #0x44]
	mov r1, r1, asr #0x1f
	str r1, [sp, #0x18]
	rsbmi r1, r7, #0
	movpl r1, r7
	cmp r1, #2
	mov r2, r0, asr #0x1f
	addlt sp, sp, #0x24
	movlt r0, #0
	ldmltfd sp!, {r4, r5, r6, r7, r8, r9, pc}
	mov r1, r4, asr #2
	str r1, [sp, #0x20]
	mov r6, r3, asr #2
	ldr r3, [sp, #0x20]
	mov r4, r1, asr #0x1f
	umull lr, r12, r3, r0
	mla r12, r3, r2, r12
	mla r12, r4, r0, r12
	adds r0, lr, #0x800
	adc r2, r12, #0
	mov r0, r0, lsr #0xc
	orr r0, r0, r2, lsl #20
	ldr r2, [sp, #4]
	mov r5, r6, asr #0x1f
	umull r12, r3, r6, r2
	ldr r2, [sp, #8]
	adds r12, r12, #0x800
	mla r3, r6, r2, r3
	ldr r2, [sp, #4]
	mov r1, r7
	mla r3, r5, r2, r3
	adc r2, r3, #0
	mov r3, r12, lsr #0xc
	orr r3, r3, r2, lsl #20
	sub r0, r0, r3
	mov r0, r0, lsl #2
	bl FX_Div
	mov r1, r7
	mov r7, r0
	ldr r2, [sp, #0x20]
	ldr r0, [sp, #0xc]
	umull r12, r3, r2, r0
	ldr r0, [sp, #0x10]
	mla r3, r2, r0, r3
	ldr r0, [sp, #0xc]
	mla r3, r4, r0, r3
	adds r0, r12, #0x800
	adc r2, r3, #0
	mov r0, r0, lsr #0xc
	orr r0, r0, r2, lsl #20
	ldr r2, [sp, #0x14]
	umull r4, r3, r6, r2
	ldr r2, [sp, #0x18]
	adds r4, r4, #0x800
	mla r3, r6, r2, r3
	ldr r2, [sp, #0x14]
	mla r3, r5, r2, r3
	adc r2, r3, #0
	mov r3, r4, lsr #0xc
	orr r3, r3, r2, lsl #20
	sub r0, r0, r3
	mov r0, r0, lsl #2
	bl FX_Div
	adds r1, r7, #2
	bmi _020DE4E8
	sub r1, r7, #2
	cmp r1, #0x1000
	bgt _020DE4E8
	adds r1, r0, #2
	bmi _020DE4E8
	sub r1, r0, #2
	cmp r1, #0x1000
	ble _020DE4F4
_020DE4E8:
	add sp, sp, #0x24
	mov r0, #0
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, pc}
_020DE4F4:
	smull r2, r4, r8, r0
	ldr r1, [sp, #0x1c]
	adds r5, r2, #0x800
	smull r3, r2, r1, r0
	mov r0, #0
	adc r1, r4, r0
	mov r0, #0x800
	adds r3, r3, r0
	ldr r0, [sp]
	mov r4, r5, lsr #0xc
	ldr r0, [r0]
	orr r4, r4, r1, lsl #20
	add r0, r0, r4, lsl #4
	str r0, [r9]
	mov r0, #0
	adc r1, r2, r0
	ldr r0, [sp]
	mov r2, r3, lsr #0xc
	ldr r0, [r0, #4]
	orr r2, r2, r1, lsl #20
	add r0, r0, r2, lsl #4
	str r0, [r9, #4]
	mov r0, #1
	add sp, sp, #0x24
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, pc}
	arm_func_end FUN_ov1_020de2f0

	arm_func_start FUN_ov1_020de558
FUN_ov1_020de558: ; 0x020DE558
	stmfd sp!, {r4, r5, r6, r7, r8, lr}
	ldr r8, [sp, #0x18]
	sub r7, r1, #0x30000
	add r6, r3, #0x30000
	rsb r5, r3, r1, lsl #1
	rsb r4, r1, r3, lsl #1
	rsb lr, r8, r2, lsl #1
	rsb r12, r2, r8, lsl #1
	str r7, [r0, #0x230]
	str r2, [r0, #0x234]
	str r6, [r0, #0x238]
	str r2, [r0, #0x23c]
	str r6, [r0, #0x240]
	str r8, [r0, #0x244]
	str r7, [r0, #0x248]
	str r8, [r0, #0x24c]
	str r5, [r0, #0x250]
	str r2, [r0, #0x254]
	str r4, [r0, #0x258]
	str r2, [r0, #0x25c]
	str r3, [r0, #0x260]
	str lr, [r0, #0x264]
	str r3, [r0, #0x268]
	str r12, [r0, #0x26c]
	str r4, [r0, #0x270]
	str r8, [r0, #0x274]
	str r5, [r0, #0x278]
	str r8, [r0, #0x27c]
	str r1, [r0, #0x280]
	str r12, [r0, #0x284]
	str r1, [r0, #0x288]
	str lr, [r0, #0x28c]
	ldmfd sp!, {r4, r5, r6, r7, r8, pc}
	arm_func_end FUN_ov1_020de558

	arm_func_start FUN_ov1_020de5dc
FUN_ov1_020de5dc: ; 0x020DE5DC
	stmfd sp!, {r3, r4, r5, r6, lr}
	sub sp, sp, #0x24
	ldr r5, [sp, #0x38]
	mov r6, r1, asr #4
	mov r12, r3, asr #4
	mov r3, r5, asr #4
	ldr r1, [sp, #0x40]
	mov lr, r2, asr #4
	ldr r4, [sp, #0x3c]
	mov r1, r1, asr #4
	mov r2, r4, asr #4
	str r12, [sp, #0x14]
	str r3, [sp, #0x18]
	str r2, [sp, #0xc]
	ldr r5, [sp, #0x44]
	str r6, [sp, #0x1c]
	str lr, [sp, #0x20]
	str r1, [sp, #0x10]
	ldr r1, [r5]
	ldr r4, [sp, #0x48]
	mov r1, r1, asr #4
	str r1, [sp, #4]
	ldr r1, [r4]
	add r12, sp, #4
	mov r1, r1, asr #4
	str r1, [sp, #8]
	add r1, sp, #0x1c
	add r2, sp, #0x14
	add r3, sp, #0xc
	str r12, [sp]
	bl FUN_ov1_020de890
	ldr r1, [sp, #4]
	cmn r0, #1
	mov r1, r1, lsl #4
	str r1, [r5]
	ldr r1, [sp, #8]
	movne r0, r0, lsl #4
	mov r1, r1, lsl #4
	str r1, [r4]
	add sp, sp, #0x24
	ldmfd sp!, {r3, r4, r5, r6, pc}
	arm_func_end FUN_ov1_020de5dc

	arm_func_start FUN_ov1_020de680
FUN_ov1_020de680: ; 0x020DE680
	stmfd sp!, {r4, lr}
	ldr r4, [r1]
	ldr r12, [r2]
	ldr r0, [r3]
	sub lr, r4, r12
	sub r12, r4, r0
	ldr r4, [r1, #4]
	ldr r1, [r3, #4]
	ldr r0, [r2, #4]
	sub r2, r4, r1
	sub r1, r4, r0
	mov r0, r2, asr #6
	mov r3, lr, asr #6
	smull r0, lr, r3, r0
	mov r2, r1, asr #6
	mov r1, r12, asr #6
	adds r4, r0, #0x800
	mov r0, #0
	smull r3, r1, r2, r1
	adc r12, lr, r0
	adds r2, r3, #0x800
	mov r3, r4, lsr #0xc
	adc r1, r1, r0
	mov r2, r2, lsr #0xc
	orr r3, r3, r12, lsl #20
	orr r2, r2, r1, lsl #20
	sub r1, r3, r2
	cmp r1, #0
	movgt r0, #1
	ldmfd sp!, {r4, pc}
	arm_func_end FUN_ov1_020de680

	arm_func_start FUN_ov1_020de6f8
FUN_ov1_020de6f8: ; 0x020DE6F8
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, lr}
	ldr r6, [r1]
	ldr r0, [r2]
	ldr r5, [r3]
	sub r4, r0, r6
	sub r10, r5, r6
	ldr r6, [r1, #4]
	ldr r0, [r2, #4]
	ldr r1, [r3, #4]
	sub r5, r0, r6
	smull r0, r2, r5, r5
	adds r3, r0, #0x800
	sub r8, r1, r6
	smull r0, r1, r4, r4
	adc r9, r2, #0
	adds r7, r0, #0x800
	mov r11, r3, lsr #0xc
	smull r0, r2, r4, r10
	adc r6, r1, #0
	adds r3, r0, #0x800
	mov r7, r7, lsr #0xc
	orr r11, r11, r9, lsl #20
	orr r7, r7, r6, lsl #20
	add r6, r7, r11
	smull r1, r0, r5, r8
	adc r2, r2, #0
	adds r1, r1, #0x800
	mov r3, r3, lsr #0xc
	mov r7, r1, lsr #0xc
	adc r0, r0, #0
	orr r3, r3, r2, lsl #20
	orr r7, r7, r0, lsl #20
	add r0, r3, r7
	mov r2, r4, asr #0x1f
	mov r1, r6
	mov r11, r5, asr #0x1f
	str r2, [sp]
	mov r7, r8, asr #0x1f
	mov r9, r10, asr #0x1f
	bl FX_Div
	cmp r0, #0
	blt _020DE7A8
	cmp r0, #0x1000
	ble _020DE800
_020DE7A8:
	umull r3, r2, r10, r10
	mla r2, r10, r9, r2
	umull r1, r0, r8, r8
	mla r0, r8, r7, r0
	adds r3, r3, #0x800
	mla r2, r9, r10, r2
	adc r2, r2, #0
	adds r1, r1, #0x800
	mla r0, r7, r8, r0
	mov r3, r3, lsr #0xc
	adc r0, r0, #0
	mov r1, r1, lsr #0xc
	orr r3, r3, r2, lsl #20
	orr r1, r1, r0, lsl #20
	add r0, r3, r1
	cmp r6, r0
	bge _020DE7F8
	mov r0, r6
	bl FUN_020095ac
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_020DE7F8:
	bl FUN_020095ac
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_020DE800:
	mov r1, r0, asr #0x1f
	umull r7, r6, r5, r0
	mla r6, r5, r1, r6
	umull r3, r2, r4, r0
	mla r2, r4, r1, r2
	ldr r1, [sp]
	mla r6, r11, r0, r6
	adds r5, r7, #0x800
	mla r2, r1, r0, r2
	adc r4, r6, #0
	adds r3, r3, #0x800
	adc r1, r2, #0
	mov r2, r3, lsr #0xc
	orr r2, r2, r1, lsl #20
	sub r1, r2, r10
	mov r0, r5, lsr #0xc
	orr r0, r0, r4, lsl #20
	smull r2, r3, r1, r1
	adds r4, r2, #0x800
	sub r0, r0, r8
	smull r2, r1, r0, r0
	mov r0, #0
	adc r3, r3, r0
	mov r0, #0x800
	adds r2, r2, r0
	mov r0, #0
	adc r0, r1, r0
	mov r1, r2, lsr #0xc
	mov r4, r4, lsr #0xc
	orr r1, r1, r0, lsl #20
	orr r4, r4, r3, lsl #20
	mov r0, r1, asr #4
	add r0, r0, r4, asr #4
	bl FUN_020095ac
	mov r0, r0, lsl #2
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
	arm_func_end FUN_ov1_020de6f8

	arm_func_start FUN_ov1_020de890
FUN_ov1_020de890: ; 0x020DE890
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, lr}
	mov r10, r1
	ldr r4, [r10]
	ldr r1, [r2]
	ldr r0, [r3]
	sub r6, r1, r4
	sub r0, r0, r4
	smull r0, r1, r6, r0
	adds r5, r0, #0x800
	ldr r4, [r10, #4]
	ldr r2, [r2, #4]
	ldr r0, [r3, #4]
	sub r8, r2, r4
	sub r0, r0, r4
	smull r0, r2, r8, r0
	adc r4, r1, #0
	adds r3, r0, #0x800
	mov r5, r5, lsr #0xc
	smull r1, r0, r6, r6
	adc r2, r2, #0
	adds r11, r1, #0x800
	mov r3, r3, lsr #0xc
	smull r1, r7, r8, r8
	adc r0, r0, #0
	adds r9, r1, #0x800
	mov r1, r11, lsr #0xc
	adc r7, r7, #0
	mov r9, r9, lsr #0xc
	orr r5, r5, r4, lsl #20
	orr r3, r3, r2, lsl #20
	orr r1, r1, r0, lsl #20
	orr r9, r9, r7, lsl #20
	add r0, r5, r3
	add r1, r1, r9
	mov r7, r8, asr #0x1f
	mov r5, r6, asr #0x1f
	ldr r9, [sp, #0x28]
	mov r4, #0
	mov r11, #0x800
	bl FX_Div
	cmp r0, #0
	blt _020DE940
	cmp r0, #0x1000
	ble _020DE948
_020DE940:
	mvn r0, #0
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_020DE948:
	mov r3, r0, asr #0x1f
	umull r2, r1, r6, r0
	mla r1, r6, r3, r1
	umull r12, r6, r8, r0
	mla r6, r8, r3, r6
	adds r3, r2, r11
	mla r1, r5, r0, r1
	mla r6, r7, r0, r6
	adc r2, r1, r4
	mov r3, r3, lsr #0xc
	adds r1, r12, r11
	ldr r0, [r10]
	orr r3, r3, r2, lsl #20
	add r3, r0, r3
	str r3, [r9]
	adc r0, r6, r4
	mov r1, r1, lsr #0xc
	ldr r2, [r10, #4]
	orr r1, r1, r0, lsl #20
	add r0, r2, r1
	str r0, [r9, #4]
	ldr r0, [r10]
	ldr r1, [r10, #4]
	subs r3, r0, r3
	ldr r0, [r9, #4]
	rsbmi r3, r3, #0
	subs r4, r1, r0
	smull r0, r2, r3, r3
	rsbmi r4, r4, #0
	adds r3, r0, #0x800
	smull r1, r0, r4, r4
	adc r2, r2, #0
	adds r1, r1, #0x800
	mov r3, r3, lsr #0xc
	adc r0, r0, #0
	mov r1, r1, lsr #0xc
	orr r1, r1, r0, lsl #20
	orr r3, r3, r2, lsl #20
	mov r0, r1, asr #4
	add r0, r0, r3, asr #4
	bl FUN_020095ac
	mov r0, r0, lsl #2
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
	arm_func_end FUN_ov1_020de890

	arm_func_start FUN_ov1_020de9f4
FUN_ov1_020de9f4: ; 0x020DE9F4
	stmfd sp!, {r3, r4, r5, r6, r7, r8, lr}
	sub sp, sp, #0x24
	movs r6, r1
	mov r7, r0
	ldrneb r0, [r6, #0x10d]
	mov r5, r2
	mov r4, r3
	cmpne r0, #0
	addeq sp, sp, #0x24
	ldmeqfd sp!, {r3, r4, r5, r6, r7, r8, pc}
	mov r8, #0
	mov r1, r8
	mov r2, r8
	mov r0, #0x11
	bl NNS_G3dGeBufferOP_N
	bl NNS_G3dGlbFlushVP
	mov r0, r7
	bl FUN_ov1_020deb34
	mov r0, r7
	mov r1, r6
	bl FUN_ov1_020deb74
	mov r0, #0x2a
	add r1, sp, #8
	mov r2, #1
	str r8, [sp, #8]
	bl NNS_G3dGeBufferOP_N
	add r0, r6, #0x100
	ldrh r0, [r0, #8]
	add r0, r0, #0x82
	add r0, r0, #0xf00
	rsb r0, r0, #0
	cmp r0, #0
	mov r0, r0, lsl #0xc
	ble _020DEA90
	bl FUN_0201f704
	mov r1, r0
	mov r0, #0x3f000000
	bl FUN_02020274
	b _020DEA9C
_020DEA90:
	bl FUN_0201f704
	mov r1, #0x3f000000
	bl FUN_020204a4
_020DEA9C:
	bl FUN_0201fdac
	mov r8, #3
	ldr r4, [r4]
	ldr r3, [r5]
	add r1, sp, #0x18
	str r0, [sp, #0x20]
	mov r2, r8
	mov r0, #0x1c
	str r3, [sp, #0x18]
	str r4, [sp, #0x1c]
	bl NNS_G3dGeBufferOP_N
	mov r4, #0x400000
	mov r3, #0x1000
	add r1, sp, #0xc
	mov r2, r8
	mov r0, #0x1b
	str r4, [sp, #0xc]
	str r4, [sp, #0x10]
	str r3, [sp, #0x14]
	bl NNS_G3dGeBufferOP_N
	add r0, r6, #0x100
	ldrh r0, [r0, #0xa]
	mov r4, #1
	add r1, sp, #4
	str r0, [sp, #4]
	mov r2, r4
	mov r0, #0x20
	bl NNS_G3dGeBufferOP_N
	mov r0, r7
	mov r1, r6
	bl FUN_ov1_020deba0
	mov r2, r4
	mov r0, #0x12
	add r1, sp, #0
	str r4, [sp]
	bl NNS_G3dGeBufferOP_N
	add sp, sp, #0x24
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, pc}
	arm_func_end FUN_ov1_020de9f4

	arm_func_start FUN_ov1_020deb34
FUN_ov1_020deb34: ; 0x020DEB34
	stmfd sp!, {r3, r4, r5, lr}
	sub sp, sp, #8
	mov r4, #1
	mov r5, #0
	add r1, sp, #4
	mov r2, r4
	mov r0, #0x30
	str r5, [sp, #4]
	bl NNS_G3dGeBufferOP_N
	add r1, sp, #0
	mov r2, r4
	mov r0, #0x31
	str r5, [sp]
	bl NNS_G3dGeBufferOP_N
	add sp, sp, #8
	ldmfd sp!, {r3, r4, r5, pc}
	arm_func_end FUN_ov1_020deb34

	arm_func_start FUN_ov1_020deb74
FUN_ov1_020deb74: ; 0x020DEB74
	stmfd sp!, {r3, lr}
	ldrb r2, [r1, #0x10c]
	ldr r0, _020DEB9C ; =0x3F0000C0
	add r1, sp, #0
	orr r3, r0, r2, lsl #16
	mov r0, #0x29
	mov r2, #1
	str r3, [sp]
	bl NNS_G3dGeBufferOP_N
	ldmfd sp!, {r3, pc}
_020DEB9C: .word 0x3F0000C0
	arm_func_end FUN_ov1_020deb74

	arm_func_start FUN_ov1_020deba0
FUN_ov1_020deba0: ; 0x020DEBA0
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, lr}
	sub sp, sp, #0x10
	mov r7, #1
	mov r0, #2
	mov r10, r1
	str r0, [sp, #0xc]
	add r1, sp, #0xc
	mov r2, r7
	mov r0, #0x40
	bl NNS_G3dGeBufferOP_N
	ldr r0, [r10]
	add r8, r10, #0x7c
	cmp r0, #0
	mov r9, #0
	ble _020DECA8
	mov r6, #0x1000
	mov r5, #0x23
	add r4, sp, #4
	mov r11, #2
_020DEBEC:
	ldr r0, [r8, #4]
	ldr r1, [r8]
	rsb r2, r0, #0
	cmp r7, #0
	mov r0, r1, asr #9
	add r0, r1, r0, lsr #22
	mov r0, r0, asr #0xa
	mov r1, r2, asr #9
	add r1, r2, r1, lsr #22
	mov r1, r1, asr #0xa
	beq _020DEC5C
	mov r1, r1, lsl #0x10
	mov r1, r1, asr #0x10
	mov r0, r0, lsl #0x10
	mov r1, r1, lsl #0x10
	mov r0, r0, asr #0x10
	mov r1, r1, lsr #0x10
	mov r0, r0, lsl #0x10
	mov r1, r1, lsl #0x10
	orr r2, r1, r0, lsr #16
	str r2, [sp, #4]
	mov r0, r5
	mov r1, r4
	mov r2, r11
	str r6, [sp, #8]
	bl NNS_G3dGeBufferOP_N
	mov r7, #0
	b _020DEC94
_020DEC5C:
	mov r1, r1, lsl #0x10
	mov r1, r1, asr #0x10
	mov r0, r0, lsl #0x10
	mov r1, r1, lsl #0x10
	mov r0, r0, asr #0x10
	mov r1, r1, lsr #0x10
	mov r0, r0, lsl #0x10
	mov r1, r1, lsl #0x10
	orr r1, r1, r0, lsr #16
	str r1, [sp]
	mov r0, #0x25
	add r1, sp, #0
	mov r2, #1
	bl NNS_G3dGeBufferOP_N
_020DEC94:
	ldr r0, [r10]
	add r9, r9, #1
	cmp r9, r0
	add r8, r8, #8
	blt _020DEBEC
_020DECA8:
	mov r1, #0
	mov r2, r1
	mov r0, #0x41
	bl NNS_G3dGeBufferOP_N
	add sp, sp, #0x10
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
	arm_func_end FUN_ov1_020deba0

	arm_func_start FUN_ov1_020decc0
FUN_ov1_020decc0: ; 0x020DECC0
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	mov r7, r0
	mov r4, #8
	mov r1, r4
	add r0, r7, #0x380
	bl FUN_0201769c
	mov r1, r4
	add r0, r7, #0x38c
	bl FUN_0201769c
	mov r1, r4
	add r0, r7, #0x398
	bl FUN_0201769c
	mov r6, #0
	add r4, r7, #0x290
	mov r5, r6
_020DECFC:
	add r2, r7, r6, lsl #4
	str r5, [r2, #0x294]
	add r0, r7, #0x380
	add r1, r4, r6, lsl #4
	str r5, [r2, #0x290]
	bl FUN_02017734
	add r6, r6, #1
	cmp r6, #0xf
	blt _020DECFC
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
	arm_func_end FUN_ov1_020decc0

	arm_func_start FUN_ov1_020ded24
FUN_ov1_020ded24: ; 0x020DED24
	stmfd sp!, {r3, r4, r5, lr}
	mov r5, r0
	add r0, r5, #0x380
	mov r1, #0
	bl FUN_02017874
	mov r4, r0
	mov r1, r4
	add r0, r5, #0x380
	bl FUN_020177e8
	mov r0, r4
	ldmfd sp!, {r3, r4, r5, pc}
	arm_func_end FUN_ov1_020ded24

	arm_func_start FUN_ov1_020ded50
FUN_ov1_020ded50: ; 0x020DED50
	stmfd sp!, {r3, r4, r5, lr}
	mov r5, r0
	mov r4, r1
	add r0, r5, #0x38c
	bl FUN_020177e8
	mov r2, #0
	mov r1, r4
	add r0, r5, #0x380
	str r2, [r4, #4]
	str r2, [r4]
	bl FUN_02017734
	ldmfd sp!, {r3, r4, r5, pc}
	arm_func_end FUN_ov1_020ded50

	arm_func_start FUN_ov1_020ded80
FUN_ov1_020ded80: ; 0x020DED80
	ldr r12, _020DED8C ; =FUN_020176e0
	add r0, r0, #0x38c
	bx r12
_020DED8C: .word FUN_020176e0
	arm_func_end FUN_ov1_020ded80

	arm_func_start FUN_ov1_020ded90
FUN_ov1_020ded90: ; 0x020DED90
	mov r3, r1
	mov r1, r2
	ldr r12, _020DEDA8 ; =FUN_02017784
	mov r2, r3
	add r0, r0, #0x38c
	bx r12
_020DEDA8: .word FUN_02017784
	arm_func_end FUN_ov1_020ded90

	arm_func_start FUN_ov1_020dedac
FUN_ov1_020dedac: ; 0x020DEDAC
	add r0, r0, #0x300
	ldrh r0, [r0, #0x94]
	bx lr
	arm_func_end FUN_ov1_020dedac

	arm_func_start FUN_ov1_020dedb8
FUN_ov1_020dedb8: ; 0x020DEDB8
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	mov r7, r0
	mov r6, r2
	bl FUN_ov1_020dee24
	mov r5, r0
_020DEDCC:
	cmp r5, #0
	cmpne r5, r6
	ldmeqfd sp!, {r3, r4, r5, r6, r7, pc}
	mov r0, r7
	mov r1, r5
	bl FUN_ov1_020dee24
	mov r4, r0
	mov r0, r7
	mov r1, r5
	bl FUN_ov1_020ded50
	mov r5, r4
	b _020DEDCC
	arm_func_end FUN_ov1_020dedb8

	arm_func_start FUN_ov1_020dedfc
FUN_ov1_020dedfc: ; 0x020DEDFC
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
	arm_func_end FUN_ov1_020dedfc

	arm_func_start FUN_ov1_020dee00
FUN_ov1_020dee00: ; 0x020DEE00
	stmfd sp!, {r4, lr}
	mov r4, r0
	add r0, r4, #0x38c
	bl FUN_02017860
	cmp r0, #0
	ldmnefd sp!, {r4, pc}
	mov r0, r4
	bl FUN_ov1_020dee5c
	ldmfd sp!, {r4, pc}
	arm_func_end FUN_ov1_020dee00

	arm_func_start FUN_ov1_020dee24
FUN_ov1_020dee24: ; 0x020DEE24
	stmfd sp!, {r4, lr}
	mov r4, r0
	add r0, r4, #0x38c
	bl FUN_02017848
	cmp r0, #0
	ldmnefd sp!, {r4, pc}
	mov r0, r4
	mov r1, #0
	bl FUN_ov1_020dee4c
	ldmfd sp!, {r4, pc}
	arm_func_end FUN_ov1_020dee24

	arm_func_start FUN_ov1_020dee4c
FUN_ov1_020dee4c: ; 0x020DEE4C
	ldr r12, _020DEE58 ; =FUN_02017848
	add r0, r0, #0x38c
	bx r12
_020DEE58: .word FUN_02017848
	arm_func_end FUN_ov1_020dee4c

	arm_func_start FUN_ov1_020dee5c
FUN_ov1_020dee5c: ; 0x020DEE5C
	ldr r0, [r0, #0x390]
	bx lr
	arm_func_end FUN_ov1_020dee5c

	arm_func_start FUN_ov1_020dee64
FUN_ov1_020dee64: ; 0x020DEE64
	mov r1, r1, lsl #0x10
	ldr r12, _020DEE78 ; =FUN_02017874
	add r0, r0, #0x38c
	mov r1, r1, lsr #0x10
	bx r12
_020DEE78: .word FUN_02017874
	arm_func_end FUN_ov1_020dee64

	arm_func_start FUN_ov1_020dee7c
FUN_ov1_020dee7c: ; 0x020DEE7C
	ldr r12, _020DEE88 ; =FUN_020177e8
	add r0, r0, #0x38c
	bx r12
_020DEE88: .word FUN_020177e8
	arm_func_end FUN_ov1_020dee7c

	arm_func_start FUN_ov1_020dee8c
FUN_ov1_020dee8c: ; 0x020DEE8C
	ldr r12, _020DEE98 ; =FUN_02017848
	add r0, r0, #0x398
	bx r12
_020DEE98: .word FUN_02017848
	arm_func_end FUN_ov1_020dee8c

	arm_func_start FUN_ov1_020dee9c
FUN_ov1_020dee9c: ; 0x020DEE9C
	ldr r12, _020DEEA8 ; =FUN_020176e0
	add r0, r0, #0x398
	bx r12
_020DEEA8: .word FUN_020176e0
	arm_func_end FUN_ov1_020dee9c

	arm_func_start FUN_ov1_020deeac
FUN_ov1_020deeac: ; 0x020DEEAC
	stmfd sp!, {r4, r5, r6, r7, r8, r9, r10, lr}
	sub sp, sp, #0x28
	ldr r8, _020DEF90 ; =0x02099F38
	mov r7, r0
	mov r6, r3
	mov r4, #0
	mov r9, r2
	mov r10, r1
	ldr r0, [r8]
	add r2, sp, #0x20
	add r3, sp, #0x24
	mov r1, r6
	str r4, [sp, #0x20]
	bl FUN_0205935c
	ldr r5, [sp, #0x20]
	cmp r5, #0
	addeq sp, sp, #0x28
	moveq r0, r4
	ldmeqfd sp!, {r4, r5, r6, r7, r8, r9, r10, pc}
	mov r0, r7
	mov r1, r10
	mov r2, r9
	bl FUN_02043310
	ldr r0, [r8]
	mov r1, r6
	bl FUN_ov16_02111438
	mov r9, r0
	ldr r0, [r8]
	mov r1, r6
	bl FUN_ov16_02111458
	stmia sp, {r0, r4}
	mov r3, r9
	str r4, [sp, #8]
	mov r9, #1
	str r9, [sp, #0xc]
	str r4, [sp, #0x10]
	str r4, [sp, #0x14]
	ldr r1, [sp, #0x4c]
	str r4, [sp, #0x18]
	str r1, [sp, #0x1c]
	ldr r1, [sp, #0x48]
	mov r0, r7
	mov r2, r5
	bl FUN_020425fc
	mov r0, r7
	bl FUN_0204331c
	ldr r0, [r8]
	ldr r3, [sp, #0x24]
	mov r1, r6
	str r4, [sp]
	str r4, [sp, #4]
	mov r2, r5
	str r4, [sp, #8]
	bl FUN_02059288
	mov r0, r9
	add sp, sp, #0x28
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, pc}
_020DEF90: .word 0x02099F38
	arm_func_end FUN_ov1_020deeac

	arm_func_start FUN_ov1_020def94
FUN_ov1_020def94: ; 0x020DEF94
	stmfd sp!, {r3, r4, r5, lr}
	ldr r4, _020DF000 ; =0x02099F78
	ldr r2, _020DF004 ; =0x020E9210
	mov r5, r0
	ldr r1, _020DF008 ; =0x020E9314
	mov r0, r4
	str r2, [r5]
	bl FUN_020418b0
	str r0, [r5, #0x210]
	ldr r1, _020DF00C ; =0x020E9328
	mov r0, r4
	bl FUN_020418b0
	str r0, [r5, #0x1f4]
	ldr r1, _020DF010 ; =0x020E9340
	mov r0, r4
	bl FUN_020418b0
	str r0, [r5, #0x1f8]
	ldr r1, _020DF014 ; =0x020E9358
	mov r0, r4
	bl FUN_020418b0
	str r0, [r5, #0x200]
	ldr r1, _020DF018 ; =0x020E9370
	mov r0, r4
	bl FUN_020418b0
	str r0, [r5, #0x204]
	mov r0, r5
	ldmfd sp!, {r3, r4, r5, pc}
_020DF000: .word 0x02099F78
_020DF004: .word 0x020E9210
_020DF008: .word 0x020E9314
_020DF00C: .word 0x020E9328
_020DF010: .word 0x020E9340
_020DF014: .word 0x020E9358
_020DF018: .word 0x020E9370
	arm_func_end FUN_ov1_020def94

	arm_func_start FUN_ov1_020df01c
FUN_ov1_020df01c: ; 0x020DF01C
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	mov r4, r0
	mov r5, #0
	mov r3, #1
	stmib r4, {r3, r5}
	mov r7, r1
	mov r1, r5
	add r0, r4, #0x10
	mov r2, #0xc
	str r5, [r4, #0xc]
	bl MI_CpuFill8
	ldr r0, _020DF10C ; =0x020A9C40
	bl FUN_020463d0
	mov r6, #0
	cmp r0, #0
	mov r1, r6
	add r0, r4, #0x24
	mov r2, #0x14
	streq r5, [r4, #0x20]
	str r6, [r4, #0x1c]
	bl MI_CpuFill8
	mov r1, r6
	add r0, r4, #0x38
	mov r2, #0x38
	bl MI_CpuFill8
	mov r1, r6
	add r0, r4, #0x70
	mov r2, #0x68
	bl MI_CpuFill8
	mov r1, r6
	add r0, r4, #0xd8
	mov r2, #0x48
	bl MI_CpuFill8
	add r0, r4, #0x120
	mov r1, r6
	mov r2, #8
	bl MI_CpuFill8
	cmp r7, #0
	moveq r0, #7
	streq r0, [r4, #0xc]
	beq _020DF0E0
	mov r5, #0xb0
	mov r1, r6
	mov r2, r5
	add r0, r4, #0x128
	bl MI_CpuFill8
	sub r0, r5, #0xb1
	str r0, [r4, #0x1d8]
	str r0, [r4, #0x1dc]
_020DF0E0:
	mov r0, #0
	mvn r1, #0
	str r1, [r4, #0x1e8]
	str r0, [r4, #0x1ec]
	str r0, [r4, #0x1f0]
	str r0, [r4, #0x1fc]
	str r0, [r4, #0x20c]
	str r1, [r4, #0x214]
	str r0, [r4, #0x218]
	mov r0, #1
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_020DF10C: .word 0x020A9C40
	arm_func_end FUN_ov1_020df01c

	arm_func_start FUN_ov1_020df110
FUN_ov1_020df110: ; 0x020DF110
	stmfd sp!, {r4, r5, r6, lr}
	mov r4, r1
	mov r5, r0
	mvn r1, #0
	bl FUN_ov1_020df2fc
	mov r0, r5
	bl FUN_ov1_020e0858
	cmp r4, #0
	beq _020DF198
	ldr r0, _020DF1CC ; =0x02099EC0
	mov r6, #0
	ldr r0, [r0]
	mov r1, r6
	bl FUN_02056e94
	ldr r0, [r5, #0x1c]
	tst r0, #1
	movne r6, #1
	cmp r6, #0
	beq _020DF170
	ldr r6, _020DF1CC ; =0x02099EC0
	ldr r0, [r6]
	bl FUN_0205711c
	ldr r0, [r6]
	bl FUN_02057c60
_020DF170:
	ldr r0, _020DF1CC ; =0x02099EC0
	ldr r0, [r0]
	bl FUN_020568a4
	ldr r6, _020DF1D0 ; =0x02099EE8
	ldr r1, [r5, #0x1d8]
	ldr r0, [r6]
	bl FUN_0205f5ec
	ldr r0, [r6]
	ldr r1, [r5, #0x1dc]
	bl FUN_0205f5ec
_020DF198:
	ldr r0, _020DF1D4 ; =0x02099F38
	ldr r0, [r0]
	bl FUN_ov16_021123c4
	ldr r6, _020DF1D8 ; =0x02099F58
	ldr r0, [r6]
	bl FUN_ov16_02116650
	ldr r0, [r6]
	mov r1, #1
	bl FUN_ov16_021176b0
	mov r0, r5
	mov r1, r4
	bl FUN_ov1_020df01c
	ldmfd sp!, {r4, r5, r6, pc}
_020DF1CC: .word 0x02099EC0
_020DF1D0: .word 0x02099EE8
_020DF1D4: .word 0x02099F38
_020DF1D8: .word 0x02099F58
	arm_func_end FUN_ov1_020df110

	arm_func_start FUN_ov1_020df1dc
FUN_ov1_020df1dc: ; 0x020DF1DC
	stmfd sp!, {r3, r4, r5, r6, lr}
	sub sp, sp, #0xc
	mov r5, r2
	mov r6, r1
	mov r1, r5
	mov r4, r0
	bl FUN_ov1_020df01c
	ldr r0, _020DF2B8 ; =0x02099F18
	mov r1, #0
	ldr r0, [r0]
	mov r3, r1
	mov r2, #0x1f
	bl FUN_020512a8
	ldr r0, _020DF2BC ; =0x02099F58
	ldr r0, [r0]
	bl FUN_ov16_0211661c
	ldr r0, _020DF2C0 ; =0x02099F38
	ldr r0, [r0]
	bl FUN_ov16_021123b4
	mov r1, #1
	ldr r0, _020DF2C4 ; =0x020A9C40
	str r1, [r4, #8]
	str r6, [r4, #0x1c]
	bl FUN_020463d0
	mov r1, #0
	cmp r0, #0
	streq r6, [r4, #0x20]
	str r1, [r4, #0x1e0]
	str r1, [r4, #0x1e4]
	cmp r5, #0
	beq _020DF2AC
	ldr r0, [r4, #0x1c]
	tst r0, #1
	movne r1, #1
	cmp r1, #0
	beq _020DF2AC
	ldr r4, _020DF2C8 ; =0x02099EC0
	ldr r0, [r4]
	bl FUN_02056828
	mov r0, #0x4000
	mov r2, #0x16
	str r0, [sp]
	mov r0, #6
	str r0, [sp, #4]
	mov r0, #0x6400
	str r0, [sp, #8]
	ldr r0, [r4]
	mov r3, r2
	mov r1, #0x94000
	bl FUN_020568c4
	ldr r0, [r4]
	bl FUN_02057be4
_020DF2AC:
	mov r0, #1
	add sp, sp, #0xc
	ldmfd sp!, {r3, r4, r5, r6, pc}
_020DF2B8: .word 0x02099F18
_020DF2BC: .word 0x02099F58
_020DF2C0: .word 0x02099F38
_020DF2C4: .word 0x020A9C40
_020DF2C8: .word 0x02099EC0
	arm_func_end FUN_ov1_020df1dc

	arm_func_start FUN_ov1_020df2cc
FUN_ov1_020df2cc: ; 0x020DF2CC
	stmfd sp!, {r4, lr}
	mov r4, r0
	ldr r0, _020DF2F4 ; =0x0209BA20
	bl FUN_020731a4
	cmp r0, #0
	ldmnefd sp!, {r4, pc}
	ldr r0, _020DF2F8 ; =0x020E9388
	add r1, r4, #0x10
	bl FUN_ov16_020f316c
	ldmfd sp!, {r4, pc}
_020DF2F4: .word 0x0209BA20
_020DF2F8: .word 0x020E9388
	arm_func_end FUN_ov1_020df2cc

	arm_func_start FUN_ov1_020df2fc
FUN_ov1_020df2fc: ; 0x020DF2FC
	stmfd sp!, {r4, r5, r6, lr}
	mov r6, r0
	cmp r1, #1
	blo _020DF33C
	add r0, r6, #0x10
	mov r1, #1
	bl FUN_ov16_020f338c
	add r0, r6, #0x10
	bl FUN_ov16_020f33fc
	mov r0, #0
	str r0, [r6, #0x10]
	str r0, [r6, #0x14]
	strb r0, [r6, #0x18]
	strb r0, [r6, #0x19]
	strb r0, [r6, #0x1a]
	ldmfd sp!, {r4, r5, r6, pc}
_020DF33C:
	mov r0, #0xc
	mul r5, r1, r0
	add r4, r6, #0x10
	add r0, r4, r5
	mov r1, #1
	bl FUN_ov16_020f338c
	add r0, r4, r5
	bl FUN_ov16_020f33fc
	mov r1, #0
	str r1, [r4, r5]
	add r0, r6, r5
	str r1, [r0, #0x14]
	strb r1, [r0, #0x18]
	strb r1, [r0, #0x19]
	strb r1, [r0, #0x1a]
	ldmfd sp!, {r4, r5, r6, pc}
	arm_func_end FUN_ov1_020df2fc

	arm_func_start FUN_ov1_020df37c
FUN_ov1_020df37c: ; 0x020DF37C
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, lr}
	mov r5, r0
	add r2, r5, #0x128
	mov r1, #0
	mvn r0, #0
_020DF390:
	add r1, r1, #1
	cmp r1, #0x16
	str r0, [r2], #8
	blt _020DF390
	mov r8, #0
	mov r9, r8
	mov r4, r8
	add r6, r5, #0x128
_020DF3B0:
	mov r0, r4
	bl FUN_ov16_020efa80
	movs r7, r0
	beq _020DF400
	bl FUN_0206d660
	cmp r0, #0
	beq _020DF400
	mov r0, r7
	bl FUN_0206d688
	cmp r0, #0
	beq _020DF400
	mov r0, r7
	bl FUN_ov16_020f0810
	cmp r0, #0
	addeq r0, r6, r9, lsl #3
	addne r0, r8, #0xb
	addne r0, r6, r0, lsl #3
	addeq r9, r9, #1
	addne r8, r8, #1
	str r4, [r0]
_020DF400:
	add r4, r4, #1
	cmp r4, #0x64
	blt _020DF3B0
	add r0, r5, #0x128
	mov r1, #0xb0
	bl DC_FlushRange
	mov r0, #1
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
	arm_func_end FUN_ov1_020df37c

	arm_func_start FUN_ov1_020df420
FUN_ov1_020df420: ; 0x020DF420
	stmfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, lr}
	sub sp, sp, #0xc
	mov r6, r0
	ldr r0, _020DF504 ; =0x0209BA20
	mov r5, r1
	bl FUN_0207249c
	mov r1, #0xb
	mul r4, r5, r1
	add r1, r6, #0x128
	mov r9, r0
	add r7, r1, r4, lsl #3
	mov r5, #0
	ldr r11, _020DF508 ; =0x02099EC0
	b _020DF4F4
_020DF458:
	ldr r0, [r7]
	cmp r0, #0
	blt _020DF4E8
	bl FUN_ov16_020efa80
	movs r8, r0
	beq _020DF4E8
	mov r0, r9
	mov r1, r8
	bl FUN_ov16_020f0bcc
	ldrh r10, [r9, #0x28]
	mov r6, r0
	mov r0, r8
	cmp r10, #0
	ldreqh r10, [r9, #0x26]
	bl FUN_0206cbf8
	mov r1, #0
	str r1, [sp]
	mov r1, r0
	ldr r0, [r11]
	mov r2, r10
	mov r3, r6
	bl FUN_02056ed4
	ldrh r10, [r9, #0x28]
	mov r0, r8
	cmp r10, #0
	ldreqh r10, [r9, #0x26]
	bl FUN_0206cbf8
	str r10, [sp]
	mov r1, #0
	str r6, [sp, #4]
	str r1, [sp, #8]
	mov r2, r0
	mov r3, r1
	ldr r0, [r11]
	add r1, r4, #1
	bl FUN_02056b24
_020DF4E8:
	add r5, r5, #1
	add r4, r4, #1
	add r7, r7, #8
_020DF4F4:
	cmp r5, #0xb
	blt _020DF458
	add sp, sp, #0xc
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
_020DF504: .word 0x0209BA20
_020DF508: .word 0x02099EC0
	arm_func_end FUN_ov1_020df420

	arm_func_start FUN_ov1_020df50c
FUN_ov1_020df50c: ; 0x020DF50C
	stmfd sp!, {r3, lr}
	ldr r0, _020DF52C ; =0x02099EC0
	ldr r0, [r0]
	bl FUN_020576a0
	cmp r0, #0
	moveq r0, #0
	movne r0, #1
	ldmfd sp!, {r3, pc}
_020DF52C: .word 0x02099EC0
	arm_func_end FUN_ov1_020df50c

	arm_func_start FUN_ov1_020df530
FUN_ov1_020df530: ; 0x020DF530
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, lr}
	sub sp, sp, #0xf0
	ldr r4, _020DF670 ; =0x020E7C7C
	mov r10, r0
	ldmia r4!, {r0, r1, r2, r3}
	add r7, sp, #0x4c
	stmia r7!, {r0, r1, r2, r3}
	ldr r4, [r4]
	ldr r6, _020DF674 ; =0x020E9284
	str r4, [r7]
	add r5, sp, #0x60
	mov r4, #9
_020DF560:
	ldmia r6!, {r0, r1, r2, r3}
	stmia r5!, {r0, r1, r2, r3}
	subs r4, r4, #1
	bne _020DF560
	mov r7, #0
	mov r8, r7
	mov r9, r7
	add r5, sp, #0xc
	add r6, sp, #0x60
	ldr r4, _020DF678 ; =0x0209A200
	ldr r11, _020DF67C ; =0x02099F58
	b _020DF64C
_020DF590:
	ldr r2, [r6, r9, lsl #3]
	cmp r2, #0
	beq _020DF5F4
	add r0, sp, #0x4c
	ldr r1, [r10, #0x1c]
	ldr r0, [r0, r7, lsl #2]
	tst r1, r0
	beq _020DF5F0
	ldr r1, _020DF680 ; =0x020E93A8
	mov r0, r5
	bl FUN_02015184
	ldr r0, [r11]
	ldr r2, [r4, #0x24]
	mov r3, #1
	str r3, [sp]
	mov r3, #0
	str r3, [sp, #4]
	str r3, [sp, #8]
	mov r1, #2
	add r0, r0, #4
	mov r3, r5
	bl FUN_02058684
	add r1, r10, r7, lsl #2
	str r0, [r1, #0x24]
_020DF5F0:
	add r7, r7, #1
_020DF5F4:
	add r0, r6, r9, lsl #3
	ldr r2, [r0, #4]
	cmp r2, #0
	beq _020DF648
	ldr r1, _020DF684 ; =0x020E93B4
	mov r0, r5
	bl FUN_02015184
	ldr r0, [r11]
	ldr r2, [r4, #0x24]
	mov r3, #1
	str r3, [sp]
	mov r3, #0
	str r3, [sp, #4]
	str r3, [sp, #8]
	mov r1, #3
	add r0, r0, #4
	mov r3, r5
	bl FUN_02058684
	add r1, r10, r8, lsl #2
	str r0, [r1, #0x38]
	add r8, r8, #1
_020DF648:
	add r9, r9, #1
_020DF64C:
	ldr r0, [r6, r9, lsl #3]
	cmp r0, #0
	addeq r0, r6, r9, lsl #3
	ldreq r0, [r0, #4]
	cmpeq r0, #0
	bne _020DF590
	mov r0, #0
	add sp, sp, #0xf0
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_020DF670: .word 0x020E7C7C
_020DF674: .word 0x020E9284
_020DF678: .word 0x0209A200
_020DF67C: .word 0x02099F58
_020DF680: .word 0x020E93A8
_020DF684: .word 0x020E93B4
	arm_func_end FUN_ov1_020df530

	arm_func_start FUN_ov1_020df688
FUN_ov1_020df688: ; 0x020DF688
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	mov r5, r0
	mov r4, #0
	mov r7, #1
	ldr r6, _020DF790 ; =0x02099F58
	b _020DF704
_020DF6A0:
	add r0, r5, r4, lsl #2
	ldr r1, [r0, #0x24]
	cmp r1, #0
	ble _020DF700
	ldr r0, [r6]
	add r0, r0, #4
	bl FUN_02058e30
	cmp r0, #0
	ldmnefd sp!, {r3, r4, r5, r6, r7, pc}
	add r1, r5, r4, lsl #2
	ldr r0, [r6]
	ldr r1, [r1, #0x24]
	add r0, r0, #4
	bl FUN_02059004
	cmp r0, #0
	bne _020DF700
	add r1, r5, r4, lsl #2
	ldr r0, [r6]
	ldr r1, [r1, #0x24]
	mov r2, r7
	bl FUN_ov16_021168f8
	cmp r0, #0
	mvneq r0, #0
	ldmeqfd sp!, {r3, r4, r5, r6, r7, pc}
_020DF700:
	add r4, r4, #1
_020DF704:
	cmp r4, #5
	blt _020DF6A0
	mov r4, #0
	mov r7, #1
	ldr r6, _020DF790 ; =0x02099F58
	b _020DF780
_020DF71C:
	add r0, r5, r4, lsl #2
	ldr r1, [r0, #0x38]
	cmp r1, #0
	ble _020DF77C
	ldr r0, [r6]
	add r0, r0, #4
	bl FUN_02058e30
	cmp r0, #0
	ldmnefd sp!, {r3, r4, r5, r6, r7, pc}
	add r1, r5, r4, lsl #2
	ldr r0, [r6]
	ldr r1, [r1, #0x38]
	add r0, r0, #4
	bl FUN_02059004
	cmp r0, #0
	bne _020DF77C
	add r1, r5, r4, lsl #2
	ldr r0, [r6]
	ldr r1, [r1, #0x38]
	mov r2, r7
	bl FUN_ov16_021168f8
	cmp r0, #0
	mvneq r0, #0
	ldmeqfd sp!, {r3, r4, r5, r6, r7, pc}
_020DF77C:
	add r4, r4, #1
_020DF780:
	cmp r4, #0xe
	blt _020DF71C
	mov r0, #0
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_020DF790: .word 0x02099F58
	arm_func_end FUN_ov1_020df688

	arm_func_start FUN_ov1_020df794
FUN_ov1_020df794: ; 0x020DF794
	stmfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, lr}
	sub sp, sp, #0x1ec
	ldr r6, _020DFA14 ; =0x020E7CF0
	add r5, sp, #0x184
	mov r10, r0
	mov r8, #0
	mov r4, #6
_020DF7B0:
	ldmia r6!, {r0, r1, r2, r3}
	stmia r5!, {r0, r1, r2, r3}
	subs r4, r4, #1
	bne _020DF7B0
	ldmia r6, {r0, r1}
	stmia r5, {r0, r1}
	ldr r6, _020DFA18 ; =0x020E921C
	add r5, sp, #0x11c
	mov r4, #6
_020DF7D4:
	ldmia r6!, {r0, r1, r2, r3}
	stmia r5!, {r0, r1, r2, r3}
	subs r4, r4, #1
	bne _020DF7D4
	ldmia r6, {r0, r1}
	stmia r5, {r0, r1}
	add r1, sp, #0xc
	mov r0, #4
_020DF7F4:
	strb r8, [r1]
	strb r8, [r1, #1]
	strb r8, [r1, #2]
	strb r8, [r1, #3]
	add r1, r1, #4
	subs r0, r0, #1
	bne _020DF7F4
	mov r9, #0
	add r7, sp, #0x1c
	add r5, sp, #0xc
	ldr r6, _020DFA1C ; =0x0209A7A0
	add r11, sp, #0x184
	ldr r4, _020DFA20 ; =0x0209A200
	b _020DF8E0
_020DF82C:
	ldr r1, [r10, #0x1c]
	ldr r0, [r11, r9, lsl #2]
	tst r1, r0
	beq _020DF8DC
	cmp r9, #4
	bne _020DF85C
	ldr r1, _020DFA24 ; =0x020E93C0
	mov r0, r7
	mov r2, r6
_020DF850:
	bl FUN_02015184
	ldr r2, [r4, #0x14]
	b _020DF8B4
_020DF85C:
	cmp r9, #5
	bne _020DF894
	mov r0, r5
	mov r1, r6
	bl STD_CopyString
	mov r0, r5
	bl STD_GetStringLength
	sub r1, r0, #2
	mov r0, #0x31
	strb r0, [r5, r1]
	mov r0, r7
	ldr r1, _020DFA28 ; =0x020E93C8
	mov r2, r5
	b _020DF850
_020DF894:
	add r0, sp, #0x11c
	ldr r2, [r0, r9, lsl #2]
	cmp r2, #0
	beq _020DF8DC
	ldr r1, _020DFA2C ; =0x020E93D0
	mov r0, r7
	bl FUN_02015184
	ldr r2, [r4]
_020DF8B4:
	ldr r0, _020DFA30 ; =0x02099F38
	mov r3, #1
	ldr r0, [r0]
	mov r1, #5
	stmia sp, {r3, r8}
	mov r3, r7
	str r8, [sp, #8]
	bl FUN_02058684
	add r1, r10, r9, lsl #2
	str r0, [r1, #0x70]
_020DF8DC:
	add r9, r9, #1
_020DF8E0:
	cmp r9, #0x1a
	blt _020DF82C
	ldr r0, _020DFA30 ; =0x02099F38
	mov r5, #0
	ldr r0, [r0]
	mov r2, r5
	mov r1, #2
	bl FUN_02059630
	ldr r4, _020DFA34 ; =0x0209BA20
	str r0, [r10, #0xa4]
	mov r0, r4
	bl FUN_020731a4
	cmp r0, #0
	bne _020DFA08
	mov r0, r4
	mov r1, r5
	bl FUN_0207249c
	mov r4, r0
	bl FUN_ov16_020f068c ; may be ov17
	cmp r0, #0
	bne _020DF968
	ldr r0, _020DFA38 ; =0x020A0640
	ldrb r0, [r0, #0x1a]
	cmp r0, #0
	beq _020DF970
	mov r0, r5
	bl FUN_ov16_020f0a30
	cmp r0, #0
	beq _020DF968
	ldrh r0, [r4, #0x2a]
	cmp r0, #0
	ldreqh r0, [r4, #0x20]
	cmp r0, #1
	bhi _020DF970
_020DF968:
	ldrb r1, [r4, #0x2d]
	b _020DF97C
_020DF970:
	ldrh r1, [r4, #0x2a]
	cmp r1, #0
	ldreqh r1, [r4, #0x20]
_020DF97C:
	mov r0, r10
	bl FUN_ov1_020dfa3c
	str r0, [r10, #0xb4]
	mov r5, #1
	ldr r0, _020DFA34 ; =0x0209BA20
	mov r1, r5
	bl FUN_0207249c
	mov r4, r0
	bl FUN_ov16_020f068c ; may be ov17
	cmp r0, #0
	bne _020DF9DC
	ldr r0, _020DFA38 ; =0x020A0640
	ldrb r0, [r0, #0x1a]
	cmp r0, #0
	beq _020DF9E4
	mov r0, r5
	bl FUN_ov16_020f0a30
	cmp r0, #0
	beq _020DF9DC
	ldrh r0, [r4, #0x2a]
	cmp r0, #0
	ldreqh r0, [r4, #0x20]
	cmp r0, #1
	bhi _020DF9E4
_020DF9DC:
	ldrb r1, [r4, #0x2d]
	b _020DF9F0
_020DF9E4:
	ldrh r1, [r4, #0x2a]
	cmp r1, #0
	ldreqh r1, [r4, #0x20]
_020DF9F0:
	mov r0, r10
	bl FUN_ov1_020dfa3c
	str r0, [r10, #0xb8]
	mov r0, r10
	mov r1, #0
	bl FUN_ov1_020df2fc
_020DFA08:
	mov r0, #0
	add sp, sp, #0x1ec
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
_020DFA14: .word 0x020E7CF0
_020DFA18: .word 0x020E921C
_020DFA1C: .word 0x0209A7A0
_020DFA20: .word 0x0209A200
_020DFA24: .word 0x020E93C0
_020DFA28: .word 0x020E93C8
_020DFA2C: .word 0x020E93D0
_020DFA30: .word 0x02099F38
_020DFA34: .word 0x0209BA20
_020DFA38: .word 0x020A0640
	arm_func_end FUN_ov1_020df794

	arm_func_start FUN_ov1_020dfa3c
FUN_ov1_020dfa3c: ; 0x020DFA3C
	stmdb sp!, {lr}
	sub sp, sp, #0x1c
	ldr r0, [r0, #0x10]
	add r2, sp, #0x18
	add r3, sp, #0x14
	bl FUN_ov16_020f34f0
	cmp r0, #0
	addeq sp, sp, #0x1c
	moveq r0, #0
	ldmeqia sp!, {pc}
	ldr r0, _020DFAA4 ; =0x02099F38
	ldr r12, [sp, #0x14]
	ldr r2, [sp, #0x18]
	ldr r0, [r0]
	mov r1, #0
	str r1, [sp]
	mov r3, #1
	str r3, [sp, #4]
	str r1, [sp, #8]
	str r2, [sp, #0xc]
	ldr r2, _020DFAA8 ; =0x020E93D8
	mov r1, #5
	str r12, [sp, #0x10]
	bl FUN_02058800
	add sp, sp, #0x1c
	ldmia sp!, {pc}
_020DFAA4: .word 0x02099F38
_020DFAA8: .word 0x020E93D8
	arm_func_end FUN_ov1_020dfa3c

	arm_func_start FUN_ov1_020dfaac
FUN_ov1_020dfaac: ; 0x020DFAAC
	stmfd sp!, {r4, r5, r6, r7, r8, r9, r10, lr}
	mov r7, r0
	mov r6, #0
	ldr r4, _020DFB74 ; =0x02099F38
	b _020DFAE4
_020DFAC0:
	add r0, r7, r6, lsl #2
	ldr r1, [r0, #0x70]
	cmp r1, #0
	ble _020DFAE0
	ldr r0, [r4]
	bl FUN_02058e30
	cmp r0, #0
	ldmnefd sp!, {r4, r5, r6, r7, r8, r9, r10, pc}
_020DFAE0:
	add r6, r6, #1
_020DFAE4:
	cmp r6, #0x1a
	blt _020DFAC0
	mov r6, #0
	mov r5, #5
	mov r4, #3
	mov r10, #1
	mov r9, r6
	ldr r8, _020DFB74 ; =0x02099F38
	b _020DFB64
_020DFB08:
	add r0, r7, r6, lsl #2
	ldr r0, [r0, #0x70]
	cmp r0, #0
	ble _020DFB60
	cmp r6, #0x11
	cmpne r6, #0x12
	bne _020DFB3C
	add r1, r7, r6, lsl #2
	ldr r0, [r8]
	ldr r1, [r1, #0x70]
	mov r2, r5
	mov r3, r4
	bl FUN_ov16_02114918
_020DFB3C:
	add r0, r7, r6, lsl #2
	ldr r1, [r0, #0x70]
	ldr r0, [r8]
	mov r2, r10
	mov r3, r9
	bl FUN_02059038
	cmp r0, #0
	mvneq r0, #0
	ldmeqfd sp!, {r4, r5, r6, r7, r8, r9, r10, pc}
_020DFB60:
	add r6, r6, #1
_020DFB64:
	cmp r6, #0x1a
	blt _020DFB08
	mov r0, #0
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, pc}
_020DFB74: .word 0x02099F38
	arm_func_end FUN_ov1_020dfaac

	arm_func_start FUN_ov1_020dfb78
FUN_ov1_020dfb78: ; 0x020DFB78
	stmfd sp!, {r4, r5, r6, r7, lr}
	sub sp, sp, #0x104
	mov r4, r0
	ldr r0, [r4, #0x1c]
	tst r0, #0x20
	beq _020DFBD8
	ldr r5, _020DFC38 ; =0x02099EE8
	add r7, sp, #4
	ldr r0, [r5]
	ldr r1, _020DFC3C ; =0x020E93F8
	mov r2, r7
	bl FUN_0205e71c
	mov r6, #1
	ldr r0, [r5]
	mov r1, r7
	mov r3, r6
	mov r2, #0
	str r6, [sp]
	bl FUN_0205f26c
	mov r1, r0
	str r1, [r4, #0x1d8]
	ldr r0, [r5]
	mov r2, r6
	bl FUN_0205fe34
_020DFBD8:
	ldr r0, [r4, #0x1c]
	tst r0, #0x40
	beq _020DFC2C
	ldr r5, _020DFC38 ; =0x02099EE8
	add r7, sp, #4
	ldr r0, [r5]
	ldr r1, _020DFC40 ; =0x0209A720
	mov r2, r7
	bl FUN_0205e71c
	mov r2, #0
	ldr r0, [r5]
	mov r6, #1
	mov r1, r7
	mov r3, r2
	str r6, [sp]
	bl FUN_0205f26c
	mov r1, r0
	str r1, [r4, #0x1dc]
	ldr r0, [r5]
	mov r2, r6
	bl FUN_0205fe34
_020DFC2C:
	mov r0, #0
	add sp, sp, #0x104
	ldmfd sp!, {r4, r5, r6, r7, pc}
_020DFC38: .word 0x02099EE8
_020DFC3C: .word 0x020E93F8
_020DFC40: .word 0x0209A720
	arm_func_end FUN_ov1_020dfb78

	arm_func_start FUN_ov1_020dfc44
FUN_ov1_020dfc44: ; 0x020DFC44
	stmfd sp!, {r4, lr}
	mov r4, r0
	ldr r1, [r4, #0x1d8]
	cmp r1, #0
	ble _020DFC6C
	ldr r0, _020DFCC4 ; =0x02099EE8
	ldr r0, [r0]
	bl FUN_0205f990
	cmp r0, #0
	ldmnefd sp!, {r4, pc}
_020DFC6C:
	ldr r1, [r4, #0x1dc]
	cmp r1, #0
	ble _020DFC8C
	ldr r0, _020DFCC4 ; =0x02099EE8
	ldr r0, [r0]
	bl FUN_0205f990
	cmp r0, #0
	ldmnefd sp!, {r4, pc}
_020DFC8C:
	ldr r1, [r4, #0x1d8]
	cmp r1, #0
	ble _020DFCA4
	ldr r0, _020DFCC4 ; =0x02099EE8
	ldr r0, [r0]
	bl FUN_0205f56c
_020DFCA4:
	ldr r1, [r4, #0x1dc]
	cmp r1, #0
	ble _020DFCBC
	ldr r0, _020DFCC4 ; =0x02099EE8
	ldr r0, [r0]
	bl FUN_0205f56c
_020DFCBC:
	mov r0, #0
	ldmfd sp!, {r4, pc}
_020DFCC4: .word 0x02099EE8
	arm_func_end FUN_ov1_020dfc44

	arm_func_start FUN_ov1_020dfcc8
FUN_ov1_020dfcc8: ; 0x020DFCC8
	stmfd sp!, {r4, lr}
	mov r4, r0
	ldr r0, [r4, #0xc]
	cmp r0, #0xc
	addls pc, pc, r0, lsl #2
	b _020DFEF8
_020DFCE0: ; jump table
	b _020DFD14 ; case 0
	b _020DFD54 ; case 1
	b _020DFD84 ; case 2
	b _020DFDB8 ; case 3
	b _020DFDE8 ; case 4
	b _020DFE1C ; case 5
	b _020DFE38 ; case 6
	b _020DFE54 ; case 7
	b _020DFE70 ; case 8
	b _020DFE8C ; case 9
	b _020DFEA0 ; case 10
	b _020DFEC0 ; case 11
	b _020DFEDC ; case 12
_020DFD14:
	ldr r0, [r4, #0x1c]
	tst r0, #1
	movne r0, #1
	moveq r0, #0
	cmp r0, #0
	beq _020DFD40
	ldr r0, _020DFF08 ; =0x02099EC0
	ldr r0, [r0]
	bl FUN_02057c2c
	cmp r0, #0
	bne _020DFF00
_020DFD40:
	mov r0, r4
	bl FUN_ov1_020df37c
	ldr r0, [r4, #0xc]
	add r0, r0, #1
	str r0, [r4, #0xc]
_020DFD54:
	ldr r0, [r4, #0x1c]
	tst r0, #1
	movne r0, #1
	moveq r0, #0
	cmp r0, #0
	beq _020DFD78
	mov r0, r4
	mov r1, #0
	bl FUN_ov1_020df420
_020DFD78:
	ldr r0, [r4, #0xc]
	add r0, r0, #1
	str r0, [r4, #0xc]
_020DFD84:
	ldr r0, [r4, #0x1c]
	tst r0, #1
	movne r0, #1
	moveq r0, #0
	cmp r0, #0
	beq _020DFDAC
	mov r0, r4
	bl FUN_ov1_020df50c
	cmp r0, #0
	bgt _020DFF00
_020DFDAC:
	ldr r0, [r4, #0xc]
	add r0, r0, #1
	str r0, [r4, #0xc]
_020DFDB8:
	ldr r0, [r4, #0x1c]
	tst r0, #1
	movne r0, #1
	moveq r0, #0
	cmp r0, #0
	beq _020DFDDC
	mov r0, r4
	mov r1, #1
	bl FUN_ov1_020df420
_020DFDDC:
	ldr r0, [r4, #0xc]
	add r0, r0, #1
	str r0, [r4, #0xc]
_020DFDE8:
	ldr r0, [r4, #0x1c]
	tst r0, #1
	movne r0, #1
	moveq r0, #0
	cmp r0, #0
	beq _020DFE10
	mov r0, r4
	bl FUN_ov1_020df50c
	cmp r0, #0
	bgt _020DFF00
_020DFE10:
	ldr r0, [r4, #0xc]
	add r0, r0, #1
	str r0, [r4, #0xc]
_020DFE1C:
	mov r0, r4
	bl FUN_ov1_020dfb78
	cmp r0, #0
	bgt _020DFF00
	ldr r0, [r4, #0xc]
	add r0, r0, #1
	str r0, [r4, #0xc]
_020DFE38:
	mov r0, r4
	bl FUN_ov1_020dfc44
	cmp r0, #0
	bgt _020DFF00
	ldr r0, [r4, #0xc]
	add r0, r0, #1
	str r0, [r4, #0xc]
_020DFE54:
	mov r0, r4
	bl FUN_ov1_020df530
	cmp r0, #0
	bgt _020DFF00
	ldr r0, [r4, #0xc]
	add r0, r0, #1
	str r0, [r4, #0xc]
_020DFE70:
	mov r0, r4
	bl FUN_ov1_020df688
	cmp r0, #0
	bgt _020DFF00
	ldr r0, [r4, #0xc]
	add r0, r0, #1
	str r0, [r4, #0xc]
_020DFE8C:
	mov r0, r4
	bl FUN_ov1_020df2cc
	ldr r0, [r4, #0xc]
	add r0, r0, #1
	str r0, [r4, #0xc]
_020DFEA0:
	add r0, r4, #0x10
	mov r1, #1
	bl FUN_ov16_020f330c
	cmp r0, #0
	beq _020DFF00
	ldr r0, [r4, #0xc]
	add r0, r0, #1
	str r0, [r4, #0xc]
_020DFEC0:
	mov r0, r4
	bl FUN_ov1_020df794
	cmp r0, #0
	bgt _020DFF00
	ldr r0, [r4, #0xc]
	add r0, r0, #1
	str r0, [r4, #0xc]
_020DFEDC:
	mov r0, r4
	bl FUN_ov1_020dfaac
	cmp r0, #0
	bgt _020DFF00
	ldr r0, [r4, #0xc]
	add r0, r0, #1
	str r0, [r4, #0xc]
_020DFEF8:
	mov r0, #1
	ldmfd sp!, {r4, pc}
_020DFF00:
	mov r0, #0
	ldmfd sp!, {r4, pc}
_020DFF08: .word 0x02099EC0
	arm_func_end FUN_ov1_020dfcc8

	arm_func_start FUN_ov1_020dff0c
FUN_ov1_020dff0c: ; 0x020DFF0C
	stmfd sp!, {r4, r5, r6, r7, r8, lr}
	mov r6, r0
	ldr r0, [r6, #0x1c]
	mov r5, #1
	tst r0, #1
	movne r0, r5
	moveq r0, #0
	mov r4, #2
	ldr r7, _020E0384 ; =0x02099F38
	cmp r0, #0
	beq _020DFF84
	mov r8, #0x16
	ldr r0, [r7]
	mov r1, r8
	mov r2, r5
	bl FUN_ov16_02112724
	mov r1, r0
	str r1, [r6, #0xd8]
	ldr r0, [r7]
	mov r2, r4
	bl FUN_ov16_02113390
	ldr r0, [r7]
	mov r1, r8
	mov r2, r5
	bl FUN_ov16_02112724
	mov r1, r0
	str r1, [r6, #0xdc]
	ldr r0, [r7]
	mov r2, r4
	bl FUN_ov16_02113390
_020DFF84:
	ldr r0, [r6, #0x1c]
	tst r0, #0x400
	movne r0, #1
	moveq r0, #0
	cmp r0, #0
	beq _020DFFC0
	ldr r0, [r7]
	mov r1, #0x16
	mov r2, #1
	bl FUN_ov16_02112724
	mov r1, r0
	str r1, [r6, #0xe0]
	ldr r0, [r7]
	mov r2, #2
	bl FUN_ov16_02113390
_020DFFC0:
	ldr r0, [r6, #0x1c]
	tst r0, #0x40
	movne r0, #1
	moveq r0, #0
	cmp r0, #0
	beq _020DFFFC
	ldr r0, [r7]
	mov r1, #4
	mov r2, #1
	bl FUN_ov16_02112724
	mov r1, r0
	str r1, [r6, #0xe4]
	ldr r0, [r7]
	mov r2, #2
	bl FUN_ov16_02113390
_020DFFFC:
	ldr r0, [r6, #0x1c]
	tst r0, #0x1e
	movne r0, #1
	moveq r0, #0
	cmp r0, #0
	beq _020E005C
	ldr r0, [r7]
	mov r2, r5
	mov r1, #8
	bl FUN_ov16_02112724
	mov r1, r0
	str r1, [r6, #0xe8]
	ldr r0, [r7]
	mov r2, r4
	bl FUN_ov16_02113390
	ldr r0, [r7]
	mov r2, r5
	mov r1, #0xa
	bl FUN_ov16_02112724
	mov r1, r0
	str r1, [r6, #0xf4]
	ldr r0, [r7]
	mov r2, r4
	bl FUN_ov16_02113390
_020E005C:
	ldr r0, [r6, #0x1c]
	tst r0, #0x20
	movne r0, #1
	moveq r0, #0
	cmp r0, #0
	beq _020E00C0
	ldr r0, [r7]
	mov r1, r4
	mov r2, #1
	bl FUN_ov16_02112724
	mov r1, r0
	str r1, [r6, #0xec]
	ldr r0, [r7]
	mov r2, r4
	bl FUN_ov16_02113390
	ldr r0, [r7]
	ldr r1, [r6, #0xec]
	mov r2, r4
	mov r3, #0x10
	bl FUN_ov16_02113a80
	ldr r0, _020E0388 ; =0x02099F58
	mov r1, #3
	ldr r0, [r0]
	bl FUN_ov16_021169b0
	str r0, [r6, #0x120]
_020E00C0:
	mov r8, #1
	ldr r0, [r7]
	mov r2, r8
	mov r1, #0x16
	bl FUN_ov16_02112724
	mov r1, r0
	str r1, [r6, #0xf0]
	ldr r0, [r7]
	mov r2, #2
	bl FUN_ov16_02113390
	ldr r0, [r6, #0x1c]
	tst r0, #0x100
	moveq r8, #0
	cmp r8, #0
	beq _020E0120
	mov r1, #1
	ldr r0, [r7]
	mov r2, r1
	bl FUN_ov16_02112724
	mov r1, r0
	str r1, [r6, #0xf8]
	ldr r0, [r7]
	mov r2, #2
	bl FUN_ov16_02113390
_020E0120:
	ldr r0, [r6, #0x1c]
	tst r0, #0x200
	movne r0, #1
	moveq r0, #0
	cmp r0, #0
	beq _020E014C
	ldr r0, _020E0388 ; =0x02099F58
	mov r1, #0x20
	ldr r0, [r0]
	bl FUN_ov16_021169b0
	str r0, [r6, #0x124]
_020E014C:
	ldr r0, [r6, #0x1c]
	tst r0, #0x800
	movne r0, #1
	moveq r0, #0
	cmp r0, #0
	beq _020E01AC
	ldr r0, [r7]
	mov r1, r5
	mov r2, r5
	bl FUN_ov16_02112724
	mov r1, r0
	str r1, [r6, #0xfc]
	ldr r0, [r7]
	mov r2, r4
	bl FUN_ov16_02113390
	ldr r0, [r7]
	mov r1, r5
	mov r2, r5
	bl FUN_ov16_02112724
	mov r1, r0
	str r1, [r6, #0x100]
	ldr r0, [r7]
	mov r2, r4
	bl FUN_ov16_02113390
_020E01AC:
	ldr r0, [r6, #0x1c]
	tst r0, #0x4000
	movne r0, #1
	moveq r0, #0
	cmp r0, #0
	beq _020E01E8
	mov r1, #1
	ldr r0, [r7]
	mov r2, r1
	bl FUN_ov16_02112724
	mov r1, r0
	str r1, [r6, #0x104]
	ldr r0, [r7]
	mov r2, #2
	bl FUN_ov16_02113390
_020E01E8:
	ldr r0, [r6, #0x1c]
	tst r0, #1
	movne r0, #1
	moveq r0, #0
	cmp r0, #0
	beq _020E0280
	mov r8, #0x16
	ldr r0, [r7]
	mov r1, r8
	mov r2, r5
	bl FUN_ov16_02112724
	mov r1, r0
	str r1, [r6, #0x108]
	ldr r0, [r7]
	mov r2, r4
	bl FUN_ov16_02113390
	ldr r0, [r7]
	ldr r1, [r6, #0x108]
	mov r2, #0x10
	bl FUN_ov16_02112dac
	ldr r0, [r7]
	mov r1, r4
	mov r2, r5
	bl FUN_ov16_02112724
	mov r1, r0
	str r1, [r6, #0x110]
	ldr r0, [r7]
	mov r2, r4
	bl FUN_ov16_02114370
	ldr r0, [r7]
	mov r1, r8
	mov r2, r5
	bl FUN_ov16_02112724
	mov r1, r0
	str r1, [r6, #0x10c]
	ldr r0, [r7]
	mov r2, r4
	bl FUN_ov16_02113390
_020E0280:
	ldr r0, [r6, #0x1c]
	tst r0, #0x2000
	movne r0, #1
	moveq r0, #0
	cmp r0, #0
	beq _020E02BC
	ldr r0, [r7]
	mov r1, #3
	mov r2, #1
	bl FUN_ov16_02112724
	mov r1, r0
	str r1, [r6, #0x118]
	ldr r0, [r7]
	mov r2, #2
	bl FUN_ov16_02113390
_020E02BC:
	ldr r0, [r6, #0x1c]
	tst r0, #0x8000
	movne r0, #1
	moveq r0, #0
	cmp r0, #0
	beq _020E0308
	ldr r0, [r7]
	mov r1, #9
	mov r2, #1
	bl FUN_ov16_02112724
	mov r1, r0
	str r1, [r6, #0x11c]
	ldr r0, [r7]
	mov r2, r4
	bl FUN_ov16_02113390
	ldr r0, [r7]
	ldr r1, [r6, #0x11c]
	mov r2, r4
	bl FUN_ov16_02114370
_020E0308:
	mov r0, r6
	bl FUN_ov1_020e2880
	mov r0, r6
	bl FUN_ov1_020e28d4
	mov r0, r6
	bl FUN_ov1_020e2a7c
	mov r0, r6
	bl FUN_ov1_020e2bfc
	mov r0, r6
	bl FUN_ov1_020e2dc8
	mov r0, r6
	bl FUN_ov1_020e2e6c
	mov r0, r6
	bl FUN_ov1_020e2ec0
	mov r0, r6
	bl FUN_ov1_020e2f0c
	mov r0, r6
	bl FUN_ov1_020e2f5c
	mov r0, r6
	bl FUN_ov1_020e2fcc
	mov r0, r6
	bl FUN_ov1_020e3048
	mov r0, r6
	bl FUN_ov1_020e30e8
	mov r0, r6
	bl FUN_ov1_020e45cc
	mov r0, r6
	bl FUN_ov1_020e3188
	mov r0, r6
	bl FUN_ov1_020e327c
	ldmfd sp!, {r4, r5, r6, r7, r8, pc}
_020E0384: .word 0x02099F38
_020E0388: .word 0x02099F58
	arm_func_end FUN_ov1_020dff0c

	arm_func_start FUN_ov1_020e038c
FUN_ov1_020e038c: ; 0x020E038C
	stmfd sp!, {r3, lr}
	bl FUN_ov1_020e3d74
	cmp r0, #0
	ldmeqfd sp!, {r3, pc}
	ldr r0, _020E03AC ; =0x02099EC0
	ldr r0, [r0]
	bl FUN_0205722c
	ldmfd sp!, {r3, pc}
_020E03AC: .word 0x02099EC0
	arm_func_end FUN_ov1_020e038c

	arm_func_start FUN_ov1_020e03b0
FUN_ov1_020e03b0: ; 0x020E03B0
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, lr}
	ldr r5, _020E0844 ; =0x02099F58
	mov r10, r0
	mov r9, r1
	mov r8, r2
	mov r11, #0
	bl FUN_ov1_020e3d74
	cmp r0, #0
	ldmeqfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
	cmp r9, #0
	mov r1, #1
	beq _020E03F8
	ldr r0, _020E0848 ; =0x0209A110
	ldr r0, [r0]
	str r0, [r10, #4]
	ldr r0, [r5]
	bl FUN_ov16_021176b0
	b _020E0404
_020E03F8:
	str r11, [r10, #4]
	ldr r0, [r5]
	bl FUN_ov16_021176a0
_020E0404:
	ldr r0, _020E0848 ; =0x0209A110
	ldr r0, [r0]
	cmp r0, #0
	mov r0, r0, lsl #0xc
	beq _020E042C
	bl FUN_0201f74c
	mov r1, r0
	mov r0, #0x3f000000
	bl FUN_02020274
	b _020E0438
_020E042C:
	bl FUN_0201f74c
	mov r1, #0x3f000000
	bl FUN_020204a4
_020E0438:
	bl FUN_0201fdac
	mov r1, r0
	ldr r0, [r5]
	bl FUN_ov16_02116654
	mov r0, r10
	ldr r2, [r0]
	mov r1, r9
	ldr r2, [r2]
	blx r2
	mov r7, #0
	mov r6, #2
	ldr r4, _020E084C ; =0x02099F38
	b _020E048C
_020E046C:
	add r0, r10, r7, lsl #2
	ldr r1, [r0, #0xd8]
	cmp r1, #0
	ble _020E0488
	ldr r0, [r4]
	mov r2, r6
	bl FUN_ov16_02113390
_020E0488:
	add r7, r7, #1
_020E048C:
	cmp r7, #0xe
	blt _020E046C
	mov r7, #0
	mov r4, #2
	b _020E04C0
_020E04A0:
	add r0, r10, r7, lsl #2
	ldr r1, [r0, #0x120]
	cmp r1, #0
	ble _020E04BC
	ldr r0, [r5]
	mov r2, r4
	bl FUN_ov16_021175dc
_020E04BC:
	add r7, r7, #1
_020E04C0:
	cmp r7, #2
	blt _020E04A0
	ldr r6, _020E0850 ; =0x02099EE8
	mov r4, #0
	ldr r0, [r6]
	ldr r1, [r10, #0x1d8]
	mov r2, r4
	bl FUN_0205f9c0
	ldr r0, [r6]
	ldr r1, [r10, #0x1dc]
	mov r2, r4
	bl FUN_0205f9c0
	ldr r0, [r10, #0x1c]
	tst r0, #1
	movne r0, #1
	moveq r0, r4
	cmp r0, #0
	beq _020E0520
	ldr r0, [r10, #0x20]
	tst r0, #1
	movne r0, #1
	moveq r0, #0
	cmp r0, #0
	movne r4, #1
_020E0520:
	cmp r4, #0
	beq _020E0540
	mov r0, r10
	bl FUN_ov1_020e2768
	mov r0, r10
	mov r1, r8
	bl FUN_ov1_020e096c
	b _020E0564
_020E0540:
	add r2, sp, #0
	mov r0, r10
	mov r1, r11
	mov r3, r11
	bl FUN_ov1_020e0f88
	ldr r0, _020E0854 ; =0x02099EC0
	mov r1, r11
	ldr r0, [r0]
	bl FUN_020576e8
_020E0564:
	ldr r0, [r10, #0x1c]
	mov r1, #0
	tst r0, #2
	movne r0, #1
	moveq r0, r1
	cmp r0, #0
	beq _020E0598
	ldr r0, [r10, #0x20]
	tst r0, #2
	movne r0, #1
	moveq r0, #0
	cmp r0, #0
	movne r1, #1
_020E0598:
	cmp r1, #0
	beq _020E05A8
	mov r0, r10
	bl FUN_ov1_020e151c
_020E05A8:
	ldr r0, [r10, #0x1c]
	mov r1, #0
	tst r0, #4
	movne r0, #1
	moveq r0, r1
	cmp r0, #0
	beq _020E05DC
	ldr r0, [r10, #0x20]
	tst r0, #4
	movne r0, #1
	moveq r0, #0
	cmp r0, #0
	movne r1, #1
_020E05DC:
	cmp r1, #0
	beq _020E05EC
	mov r0, r10
	bl FUN_ov1_020e1618
_020E05EC:
	ldr r0, [r10, #0x1c]
	mov r1, #0
	tst r0, #0x20
	movne r0, #1
	moveq r0, r1
	cmp r0, #0
	beq _020E0620
	ldr r0, [r10, #0x20]
	tst r0, #0x20
	movne r0, #1
	moveq r0, #0
	cmp r0, #0
	movne r1, #1
_020E0620:
	cmp r1, #0
	beq _020E0648
	mov r0, r10
	mov r1, r9
	bl FUN_ov1_020e1650
	ldr r0, [r5]
	ldr r1, [r10, #0x120]
	mov r2, #2
	mov r3, #1
	bl FUN_ov16_02117598
_020E0648:
	ldr r0, [r10, #0x1c]
	mov r1, #0
	tst r0, #8
	movne r0, #1
	moveq r0, r1
	cmp r0, #0
	beq _020E067C
	ldr r0, [r10, #0x20]
	tst r0, #8
	movne r0, #1
	moveq r0, #0
	cmp r0, #0
	movne r1, #1
_020E067C:
	cmp r1, #0
	beq _020E068C
	mov r0, r10
	bl FUN_ov1_020e1dd8
_020E068C:
	ldr r0, [r10, #0x1c]
	mov r1, #0
	tst r0, #0x10
	movne r0, #1
	moveq r0, r1
	cmp r0, #0
	beq _020E06C0
	ldr r0, [r10, #0x20]
	tst r0, #0x10
	movne r0, #1
	moveq r0, #0
	cmp r0, #0
	movne r1, #1
_020E06C0:
	cmp r1, #0
	beq _020E06D0
	mov r0, r10
	bl FUN_ov1_020e216c
_020E06D0:
	ldr r0, [r10, #0x1c]
	mov r1, #0
	tst r0, #0x40
	movne r0, #1
	moveq r0, r1
	cmp r0, #0
	beq _020E0704
	ldr r0, [r10, #0x20]
	tst r0, #0x40
	movne r0, #1
	moveq r0, #0
	cmp r0, #0
	movne r1, #1
_020E0704:
	cmp r1, #0
	beq _020E0714
	mov r0, r10
	bl FUN_ov1_020e22c0
_020E0714:
	mov r0, r10
	bl FUN_ov1_020e2498
	ldr r0, [r10, #0x1c]
	mov r1, #0
	tst r0, #0x100
	movne r0, #1
	moveq r0, r1
	cmp r0, #0
	beq _020E0750
	ldr r0, [r10, #0x20]
	tst r0, #0x100
	movne r0, #1
	moveq r0, #0
	cmp r0, #0
	movne r1, #1
_020E0750:
	cmp r1, #0
	beq _020E0760
	mov r0, r10
	bl FUN_ov1_020e249c
_020E0760:
	ldr r0, [r10, #0x1c]
	mov r1, #0
	tst r0, #0x800
	movne r0, #1
	moveq r0, r1
	cmp r0, #0
	beq _020E0794
	ldr r0, [r10, #0x20]
	tst r0, #0x800
	movne r0, #1
	moveq r0, #0
	cmp r0, #0
	movne r1, #1
_020E0794:
	cmp r1, #0
	beq _020E07A4
	mov r0, r10
	bl FUN_ov1_020e2510
_020E07A4:
	ldr r0, [r10, #0x1c]
	mov r1, #0
	tst r0, #0x4000
	movne r0, #1
	moveq r0, r1
	cmp r0, #0
	beq _020E07D8
	ldr r0, [r10, #0x20]
	tst r0, #0x4000
	movne r0, #1
	moveq r0, #0
	cmp r0, #0
	movne r1, #1
_020E07D8:
	cmp r1, #0
	beq _020E07E8
	mov r0, r10
	bl FUN_ov1_020e25a4
_020E07E8:
	ldr r0, [r10, #0x1c]
	mov r1, #0
	tst r0, #0x200
	movne r0, #1
	moveq r0, r1
	cmp r0, #0
	beq _020E081C
	ldr r0, [r10, #0x20]
	tst r0, #0x200
	movne r0, #1
	moveq r0, #0
	cmp r0, #0
	movne r1, #1
_020E081C:
	cmp r1, #0
	beq _020E0838
	ldr r0, [r5]
	ldr r1, [r10, #0x124]
	mov r2, #2
	mov r3, #1
	bl FUN_ov16_02117598
_020E0838:
	mov r0, r10
	bl FUN_ov1_020e364c
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_020E0844: .word 0x02099F58
_020E0848: .word 0x0209A110
_020E084C: .word 0x02099F38
_020E0850: .word 0x02099EE8
_020E0854: .word 0x02099EC0
	arm_func_end FUN_ov1_020e03b0

	arm_func_start FUN_ov1_020e0858
FUN_ov1_020e0858: ; 0x020E0858
	stmfd sp!, {r4, r5, r6, lr}
	mov r5, r0
	mov r4, #0
	ldr r6, _020E0964 ; =0x02099F38
	b _020E0890
_020E086C:
	add r0, r5, r4, lsl #2
	ldr r1, [r0, #0x70]
	ldr r0, [r6]
	bl FUN_020591e8
	add r0, r5, r4, lsl #2
	ldr r1, [r0, #0x70]
	ldr r0, [r6]
	bl FUN_02058ee0
	add r4, r4, #1
_020E0890:
	cmp r4, #0x1a
	blt _020E086C
	mov r4, #0
	ldr r6, _020E0964 ; =0x02099F38
	b _020E08B8
_020E08A4:
	add r1, r5, r4, lsl #2
	ldr r0, [r6]
	ldr r1, [r1, #0xd8]
	bl FUN_ov16_021128c4
	add r4, r4, #1
_020E08B8:
	cmp r4, #0x12
	blt _020E08A4
	mov r4, #0
	ldr r6, _020E0968 ; =0x02099F58
	b _020E08F4
_020E08CC:
	add r1, r5, r4, lsl #2
	ldr r0, [r6]
	ldr r1, [r1, #0x24]
	bl FUN_ov16_02116910
	add r1, r5, r4, lsl #2
	ldr r0, [r6]
	ldr r1, [r1, #0x24]
	add r0, r0, #4
	bl FUN_02058ee0
	add r4, r4, #1
_020E08F4:
	cmp r4, #5
	blt _020E08CC
	mov r4, #0
	ldr r6, _020E0968 ; =0x02099F58
	b _020E0930
_020E0908:
	add r1, r5, r4, lsl #2
	ldr r0, [r6]
	ldr r1, [r1, #0x38]
	bl FUN_ov16_02116910
	add r1, r5, r4, lsl #2
	ldr r0, [r6]
	ldr r1, [r1, #0x38]
	add r0, r0, #4
	bl FUN_02058ee0
	add r4, r4, #1
_020E0930:
	cmp r4, #0xe
	blt _020E0908
	mov r4, #0
	ldr r6, _020E0968 ; =0x02099F58
	b _020E0958
_020E0944:
	add r1, r5, r4, lsl #2
	ldr r0, [r6]
	ldr r1, [r1, #0x120]
	bl FUN_ov16_02116aa8
	add r4, r4, #1
_020E0958:
	cmp r4, #2
	blt _020E0944
	ldmfd sp!, {r4, r5, r6, pc}
_020E0964: .word 0x02099F38
_020E0968: .word 0x02099F58
	arm_func_end FUN_ov1_020e0858

	arm_func_start FUN_ov1_020e096c
FUN_ov1_020e096c: ; 0x020E096C
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, lr}
	sub sp, sp, #0x40
	mov r2, #1
	mov r10, r0
	str r2, [sp, #0x34]
	mov r0, #0
	cmp r1, #0
	str r0, [sp, #0x10]
	beq _020E09A0
	ldr r1, [r10, #0x1f0]
	ldr r0, [r10, #0x1f4]
	cmp r1, r0
	strge r2, [sp, #0x10]
_020E09A0:
	ldr r0, [r10, #0x1ec]
	mov r5, #0
	mov r0, r0, lsl #0xc
	mov r1, r0, asr #4
	ldr r0, _020E0F68 ; =0x02087874
	mov r1, r1, lsl #2
	ldrsh r1, [r0, r1]
	ldr r0, _020E0F6C ; =0x02099EC0
	mov r2, r1, lsl #3
	mov r1, r2, asr #0xb
	add r1, r2, r1, lsr #20
	mov r1, r1, asr #0xc
	add r2, r1, #0x17
	orr r1, r2, r2, lsl #5
	orr r1, r1, r2, lsl #10
	mov r2, r1, lsl #0x10
	ldr r0, [r0]
	mov r2, r2, lsr #0x10
	str r2, [sp, #0x18]
	ldr r2, [r10, #0x108]
	mov r1, r5
	str r2, [sp, #0x1c]
	bl FUN_020576e8
	ldr r11, _020E0F70 ; =0x02099F38
	mov r4, #2
	ldr r0, [r11]
	ldr r1, [sp, #0x1c]
	mov r2, r4
	bl FUN_ov16_02113390
	ldr r0, [r11]
	ldr r1, [r10, #0x10c]
	mov r2, r4
	bl FUN_ov16_02113390
	bl FUN_ov16_020f081c
	str r0, [sp, #0x28]
	ldr r4, _020E0F74 ; =0x02099F58
	b _020E0F58
_020E0A34:
	add r0, r10, r5, lsl #3
	ldr r1, [r0, #0x128]
	cmp r1, #0
	blt _020E0F54
	ldr r0, _020E0F78 ; =0x02099EF0
	mov r2, #1
	ldr r0, [r0]
	bl FUN_ov132_021430b4
	mov r8, r0
	add r0, r10, r5, lsl #3
	ldr r0, [r0, #0x128]
	bl FUN_ov16_020efa80
	movs r9, r0
	cmpne r8, #0
	beq _020E0F54
	ldr r1, [r8, #8]
	mov r0, #1
	str r0, [sp, #0xc]
	mov r0, r1, asr #0xb
	add r0, r1, r0, lsr #20
	mov r2, r0, asr #0xc
	ldr r0, _020E0F7C ; =0x55555556
	mov r7, #0
	smull r1, r3, r0, r2
	add r3, r3, r2, lsr #31
	mov r0, r3, lsl #0x10
	str r0, [sp, #0x30]
	ldr r0, _020E0F80 ; =0x020A0640
	mov r6, #1
	ldrb r0, [r0, #0x1b]
	cmp r0, #0
	bne _020E0AC0
	bl FUN_ov16_020f068c ; may be ov17
	cmp r0, #0
	moveq r6, r7
_020E0AC0:
	cmp r6, #0
	beq _020E0AD8
	mov r0, r9
	bl FUN_0206d6c4
	cmp r0, #0
	moveq r7, #1
_020E0AD8:
	cmp r7, #0
	bne _020E0AF4
	ldr r0, _020E0F84 ; =0x020EAAA8
	ldr r0, [r0]
	cmp r0, #2
	movne r0, #0
	strne r0, [sp, #0xc]
_020E0AF4:
	ldrb r3, [r8, #0x1d]
	ldrb r1, [r8, #0x1b]
	ldr r0, [sp, #0xc]
	ldr r2, [r8, #4]
	add r1, r1, r3, lsl #3
	cmp r0, #0
	movne r0, #1
	str r1, [sp, #0x24]
	mov r1, r2, asr #0xb
	strne r0, [sp, #8]
	moveq r0, #0
	add r1, r2, r1, lsr #20
	streq r0, [sp, #8]
	mov r0, r10
	mov r1, r1, asr #0xc
	bl FUN_ov1_020e1dc4
	ldr r2, [r8, #4]
	str r0, [sp, #0x20]
	mov r1, r2, asr #0xb
	add r1, r2, r1, lsr #20
	mov r2, r1, asr #0xc
	ldr r1, [sp, #0x30]
	mov r0, r10
	add r1, r2, r1, asr #16
	bl FUN_ov1_020e1dc4
	mov r6, r0
	add r2, sp, #0x3c
	add r3, sp, #0x38
	ldmia r8, {r0, r1}
	bl FUN_ov16_020efe30
	ldr r0, _020E0F6C ; =0x02099EC0
	add r1, r5, #1
	ldr r0, [r0]
	mov r2, #1
	bl FUN_020571f8
	mov r1, r0
	ldrh r3, [r8, #0x10]
	ldr r0, [r4]
	ldr r2, [sp, #0x24]
	bl FUN_ov16_02116930
	str r0, [sp, #0x14]
	ldr r0, _020E0F6C ; =0x02099EC0
	add r1, r5, #1
	ldr r0, [r0]
	mov r2, #0
	bl FUN_020571f8
	mov r1, r0
	ldrh r3, [r8, #0x10]
	ldr r0, [r4]
	ldr r2, [sp, #0x24]
	bl FUN_ov16_02116930
	mov r7, r0
	ldr r0, [sp, #0x14]
	cmp r0, #0
	cmpne r7, #0
	beq _020E0F54
	ldr r0, _020E0F6C ; =0x02099EC0
	add r1, r5, #1
	ldr r0, [r0]
	bl FUN_020571e0
	ldrh r2, [r7]
	mov r7, r0
	ldr r0, [sp, #0x3c]
	ldr r1, [sp, #0x38]
	sub r0, r0, r2
	mov r2, #0x20
	sub r1, r1, #0x20
	mov r3, r2
	bl FUN_ov16_020efd68
	cmp r0, #0
	bne _020E0C24
	mov r1, r9
	mov r0, r10
	add r2, sp, #0x34
	bl FUN_ov1_020e2600
	b _020E0F54
_020E0C24:
	add r0, r10, r5, lsl #3
	ldrb r0, [r0, #0x12c]
	cmp r0, #0
	beq _020E0C44
	ldr r0, [r4]
	ldr r2, [sp, #0x18]
	mov r1, r7
	bl FUN_ov16_02116e94
_020E0C44:
	ldr r0, [sp, #0x10]
	cmp r0, #0
	beq _020E0C90
	ldrh r0, [r8, #0x16]
	tst r0, #0x100
	movne r0, #1
	moveq r0, #0
	cmp r0, #0
	beq _020E0C90
	ldr r1, [r10, #0x1f0]
	ldr r0, [r10, #0x1f4]
	cmp r1, r0
	bge _020E0CCC
	ldr r0, [r4]
	mov r1, r7
	mov r2, #1
	bl FUN_ov16_02117324
	cmp r0, #0
	beq _020E0CCC
_020E0C90:
	ldr r0, _020E0F6C ; =0x02099EC0
	add r1, r5, #1
	ldr r0, [r0]
	mov r2, #1
	bl FUN_02057758
	ldr r0, [sp, #8]
	cmp r0, #0
	bne _020E0CCC
	mov r0, #1
	str r0, [sp]
	ldr r0, [r11]
	ldr r1, [sp, #0x1c]
	add r2, r5, #1
	mov r3, #2
	bl FUN_ov16_02113ec0
_020E0CCC:
	ldr r0, [sp, #0x24]
	ldrsh r3, [r8, #0x10]
	mov r0, r0, lsl #0x10
	mov r2, r0, asr #0x10
	ldr r0, [r4]
	mov r1, r7
	bl FUN_ov16_02116fb0
	ldr r2, [sp, #0x3c]
	ldr r3, [sp, #0x38]
	ldr r12, [sp, #0x30]
	mov r2, r2, lsl #0x10
	sub r3, r3, r12, asr #16
	mov r3, r3, lsl #0x10
	ldr r0, [r4]
	mov r1, r7
	mov r2, r2, asr #0x10
	mov r3, r3, asr #0x10
	bl FUN_ov16_02117514
	ldr r2, [sp, #0x38]
	ldr r0, [r10, #0x210]
	ldr r1, [sp, #0x1c]
	sub r0, r2, r0
	mov r0, r0, lsl #0x10
	mov r0, r0, asr #0x10
	str r0, [sp]
	ldr r3, [sp, #0x3c]
	ldr r0, [r11]
	sub r3, r3, #0x10
	mov r3, r3, lsl #0x10
	add r2, r5, #1
	mov r3, r3, asr #0x10
	bl FUN_ov16_02113b78
	add r3, r6, #1
	mov r3, r3, lsl #0x10
	ldr r0, [r4]
	mov r1, r7
	mov r2, #1
	mov r3, r3, asr #0x10
	bl FUN_ov16_0211733c
	add r3, r6, #2
	mov r3, r3, lsl #0x10
	ldr r0, [r4]
	mov r1, r7
	mov r2, #2
	mov r3, r3, asr #0x10
	bl FUN_ov16_0211733c
	ldr r3, [sp, #0x20]
	ldr r0, [r11]
	add r3, r3, #3
	mov r3, r3, lsl #0x10
	ldr r1, [sp, #0x1c]
	add r2, r5, #1
	mov r3, r3, lsr #0x10
	bl FUN_ov16_021139bc
	ldr r0, [sp, #8]
	cmp r0, #0
	beq _020E0EB4
	mov r0, #1
	str r0, [sp]
	ldr r0, [r11]
	ldr r1, [r10, #0x10c]
	add r2, r5, #1
	mov r3, #2
	bl FUN_ov16_02113ec0
	mov r0, r9
	bl FUN_0206d4fc
	bl FUN_ov16_020f08a4
	str r0, [sp, #0x2c]
	mov r0, r9
	bl FUN_0206d5f0
	ldr r1, [sp, #0x28]
	cmp r1, r0
	mov r0, r9
	bne _020E0E10
	bl FUN_0206d6b0
	cmp r0, #0
	ldreq r0, [sp, #0x2c]
	addeq r3, r0, #5
	ldrne r0, [sp, #0x2c]
	addne r3, r0, #1
	b _020E0E24
_020E0E10:
	bl FUN_0206d6c4
	cmp r0, #0
	ldreq r0, [sp, #0x2c]
	addeq r3, r0, #9
	movne r3, #6
_020E0E24:
	mov r0, #0
	str r0, [sp]
	ldr r0, [r11]
	ldr r1, [r10, #0x10c]
	add r2, r5, #1
	bl FUN_ov16_0211401c
	ldr r0, [sp, #0x38]
	add r2, r5, #1
	sub r0, r0, #8
	mov r0, r0, lsl #0x10
	mov r0, r0, asr #0x10
	str r0, [sp]
	ldr r3, [sp, #0x3c]
	ldr r0, [r11]
	sub r3, r3, #0x10
	mov r3, r3, lsl #0x10
	ldr r1, [r10, #0x10c]
	mov r3, r3, asr #0x10
	bl FUN_ov16_02113b78
	ldr r0, [sp, #0x20]
	ldr r1, [r10, #0x10c]
	add r0, r0, #3
	mov r0, r0, lsl #0x10
	mov r3, r0, lsr #0x10
	ldr r0, [r11]
	add r2, r5, #1
	bl FUN_ov16_021139bc
	ldr r0, [r4]
	mov r1, r7
	mov r2, #1
	bl FUN_ov16_02117324
	mov r3, r0
	ldr r0, [r11]
	ldr r1, [r10, #0x10c]
	add r2, r5, #1
	bl FUN_ov16_02113a80
_020E0EB4:
	ldr r0, [sp, #0x14]
	cmp r0, #0
	ldrneh r0, [r0, #2]
	ldrne r1, [sp, #0x38]
	subne r0, r1, r0
	strne r0, [sp, #0x38]
	ldr r2, [sp, #0x38]
	ldr r0, [sp, #0x30]
	add r1, r10, r5, lsl #3
	sub r0, r2, r0, asr #16
	str r0, [sp, #0x38]
	ldr r0, [r1, #0x128]
	ldr r1, [r10, #0x214]
	cmp r1, r0
	bne _020E0F10
	mov r3, r6, lsl #0x10
	ldr r1, [sp, #0x3c]
	mov r0, r10
	add r2, sp, #0x38
	mov r3, r3, lsr #0x10
	bl FUN_ov1_020e0f88
	cmp r0, #0
	bne _020E0F54
_020E0F10:
	mov r0, r6, lsl #0x10
	mov r0, r0, lsr #0x10
	str r0, [sp]
	ldr r2, [sp, #0x3c]
	mov r0, r10
	mov r1, r5
	add r3, sp, #0x38
	bl FUN_ov1_020e139c
	mov r0, r6, lsl #0x10
	mov r1, r0, lsr #0x10
	add r0, sp, #0x38
	stmia sp, {r0, r1}
	ldr r3, [sp, #0x3c]
	mov r2, r8
	mov r0, r10
	mov r1, r5
	bl FUN_ov1_020e1114
_020E0F54:
	add r5, r5, #1
_020E0F58:
	cmp r5, #0x16
	blt _020E0A34
	add sp, sp, #0x40
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_020E0F68: .word 0x02087874
_020E0F6C: .word 0x02099EC0
_020E0F70: .word 0x02099F38
_020E0F74: .word 0x02099F58
_020E0F78: .word 0x02099EF0
_020E0F7C: .word 0x55555556
_020E0F80: .word 0x020A0640
_020E0F84: .word 0x020EAAA8
	arm_func_end FUN_ov1_020e096c

	arm_func_start FUN_ov1_020e0f88
FUN_ov1_020e0f88: ; 0x020E0F88
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, lr}
	sub sp, sp, #0xc
	mov r7, r0
	ldr r0, [r7, #0x218]
	mov r8, #1
	mov r6, r1
	mov r5, r2
	mov r4, r3
	mov r9, r8
	mov r10, r8
	mov r2, r8
	cmp r0, #0
	mov r1, #0
	ble _020E0FCC
	ldr r0, [r7, #0x214]
	cmp r0, #0
	movge r2, r1
_020E0FCC:
	cmp r2, #0
	bne _020E0FE4
	ldr r0, _020E1108 ; =0x020AF81C
	bl FUN_02044600
	cmp r0, #0
	moveq r10, #0
_020E0FE4:
	cmp r10, #0
	bne _020E1004
	ldr r0, [r7, #0x20]
	tst r0, #1
	movne r0, #1
	moveq r0, #0
	cmp r0, #0
	movne r9, #0
_020E1004:
	cmp r9, #0
	bne _020E1020
	ldr r0, _020E110C ; =0x02099EF0
	ldr r0, [r0]
	bl FUN_ov132_021434f8
	cmp r0, #0
	moveq r8, #0
_020E1020:
	ldr r10, _020E1110 ; =0x02099F38
	cmp r8, #0
	mov r9, #1
	ldr r8, [r7, #0x110]
	movne r9, #0
	ldr r0, [r10]
	mov r1, r8
	mov r3, r9
	mov r2, #2
	bl FUN_ov16_021142fc
	cmp r9, #0
	addeq sp, sp, #0xc
	moveq r0, r9
	ldmeqfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, pc}
	add r0, sp, #4
	str r0, [sp]
	ldr r0, [r10]
	add r3, sp, #8
	mov r1, r8
	mov r2, #1
	bl FUN_ov16_02114480
	ldr r1, [r5]
	ldr r0, [sp, #4]
	sub r0, r1, r0
	str r0, [r5]
	ldr r2, [sp, #8]
	ldr r1, [r7, #0x20c]
	sub r2, r6, r2, asr #1
	cmp r1, #0
	bne _020E10C8
	ldr r1, [sp, #8]
	cmp r2, #0
	movlt r2, #0
	rsb r1, r1, #0x100
	cmp r2, r1
	movgt r2, r1
	ldr r1, [sp, #4]
	cmp r0, #0
	movlt r0, #0
	rsb r1, r1, #0xc0
	cmp r0, r1
	movgt r0, r1
_020E10C8:
	ldr r5, _020E1110 ; =0x02099F38
	mov r2, r2, lsl #0x10
	mov r3, r0, lsl #0x10
	ldr r0, [r5]
	mov r1, r8
	mov r2, r2, asr #0x10
	mov r3, r3, asr #0x10
	bl FUN_ov16_02114248
	ldr r0, [r5]
	mov r1, r8
	mov r2, r4
	mvn r3, #0
	bl FUN_ov16_02112c90
	mov r0, r9
	add sp, sp, #0xc
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, pc}
_020E1108: .word 0x020AF81C
_020E110C: .word 0x02099EF0
_020E1110: .word 0x02099F38
	arm_func_end FUN_ov1_020e0f88

	arm_func_start FUN_ov1_020e1114
FUN_ov1_020e1114: ; 0x020E1114
	stmfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, lr}
	sub sp, sp, #0xc
	mov r10, r0
	ldr r0, _020E1384 ; =0x0209BA20
	mov r8, r2
	mov r9, r1
	mov r7, r3
	ldr r6, [sp, #0x30]
	mov r11, #1
	mov r4, #0
	bl FUN_020731a4
	cmp r0, #0
	ldrb r0, [r8, #0x1c]
	bne _020E11A4
	cmp r0, #0
	addeq sp, sp, #0xc
	ldmeqfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
	ldr r0, _020E1388 ; =0x020AF81C
	bl FUN_02044600
	cmp r0, #0
	addne sp, sp, #0xc
	ldmnefd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
	ldr r0, [r10, #0x20]
	tst r0, #1
	movne r4, r11
	cmp r4, #0
	addeq sp, sp, #0xc
	ldmeqfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
	ldr r0, [r10, #0x20]
	tst r0, #0x400
	movne r0, #1
	moveq r0, #0
	cmp r0, #0
	bne _020E11E0
	add sp, sp, #0xc
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
_020E11A4:
	cmp r0, #9
	beq _020E11E0
	ldr r0, [r10, #0x20]
	tst r0, #1
	movne r4, r11
	cmp r4, #0
	addeq sp, sp, #0xc
	ldmeqfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
	ldr r0, [r10, #0x20]
	tst r0, #0x400
	movne r0, #1
	moveq r0, #0
	cmp r0, #0
	addeq sp, sp, #0xc
	ldmeqfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
_020E11E0:
	ldr r5, [r10, #0xe0]
	ldr r4, _020E138C ; =0x02099F38
	str r11, [sp]
	ldr r0, [r4]
	mov r1, r5
	add r2, r9, #1
	mov r3, #2
	bl FUN_ov16_02113ec0
	add r0, sp, #4
	str r0, [sp]
	ldr r0, [r4]
	add r3, sp, #8
	mov r1, r5
	add r2, r9, #1
	bl FUN_ov16_02114480
	ldr r1, [r6]
	ldr r0, [sp, #4]
	sub r2, r1, r0
	str r2, [r6]
	ldr r1, [sp, #8]
	ldr r0, [r10, #0x20c]
	sub r1, r7, r1, asr #1
	cmp r0, #0
	bne _020E1284
	ldrb r0, [r8, #0x1c]
	cmp r0, #2
	cmpne r0, #6
	cmpne r0, #8
	beq _020E1284
	ldr r0, [sp, #8]
	cmp r1, #0
	movlt r1, #0
	rsb r0, r0, #0x100
	cmp r1, r0
	movgt r1, r0
	ldr r0, [sp, #4]
	cmp r2, #0
	movlt r2, #0
	rsb r0, r0, #0xc0
	cmp r2, r0
	movgt r2, r0
_020E1284:
	ldrb r0, [r8, #0x1c]
	mov r6, #0
	cmp r0, #1
	beq _020E129C
	cmp r0, #3
	bne _020E12B4
_020E129C:
	ldrh r0, [r8, #0x14]
	cmp r0, #6
	subls r0, r0, #3
	mulls r3, r0, r0
	subls r0, r3, #9
	addls r2, r2, r0
_020E12B4:
	ldrb r0, [r8, #0x1c]
	cmp r0, #9
	bne _020E12E4
	ldrh r0, [r8, #0x14]
	ldr r10, _020E1390 ; =0x66666667
	mov r7, #0xa
	mov r3, r0, lsr #0x1f
	smull r4, r11, r10, r0
	add r11, r3, r11, asr #2
	smull r3, r4, r7, r11
	sub r11, r0, r3
	sub r2, r2, r11, asr #1
_020E12E4:
	mov r0, r2, lsl #0x10
	mov r0, r0, asr #0x10
	mov r3, r1, lsl #0x10
	ldr r4, _020E138C ; =0x02099F38
	str r0, [sp]
	ldr r0, [r4]
	mov r1, r5
	add r2, r9, #1
	mov r3, r3, asr #0x10
	bl FUN_ov16_02113b78
	ldrb r0, [r8, #0x1c]
	mov r1, r5
	add r2, r9, #1
	sub r0, r0, #1
	mov r3, r0, lsl #0x10
	str r6, [sp]
	ldr r0, [r4]
	mov r3, r3, asr #0x10
	bl FUN_ov16_0211401c
	ldrh r3, [sp, #0x34]
	ldr r0, [r4]
	mov r1, r5
	add r2, r9, #1
	bl FUN_ov16_021139bc
	ldr r0, _020E1394 ; =0x02099EC0
	add r1, r9, #1
	ldr r0, [r0]
	bl FUN_020571e0
	mov r1, r0
	ldr r0, _020E1398 ; =0x02099F58
	mov r2, #1
	ldr r0, [r0]
	bl FUN_ov16_02117324
	mov r3, r0
	ldr r0, [r4]
	mov r1, r5
	add r2, r9, #1
	bl FUN_ov16_02113a80
	add sp, sp, #0xc
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
_020E1384: .word 0x0209BA20
_020E1388: .word 0x020AF81C
_020E138C: .word 0x02099F38
_020E1390: .word 0x66666667
_020E1394: .word 0x02099EC0
_020E1398: .word 0x02099F58
	arm_func_end FUN_ov1_020e1114

	arm_func_start FUN_ov1_020e139c
FUN_ov1_020e139c: ; 0x020E139C
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, lr}
	sub sp, sp, #0xc
	ldr r4, _020E150C ; =0x020EAAA8
	mov r9, r0
	ldr r0, [r4]
	mov r8, r1
	mov r7, r2
	mov r6, r3
	cmp r0, #1
	ldr r5, [sp, #0x30]
	mov r4, #0
	beq _020E13D8
	cmp r0, #3
	ldreq r4, [r9, #0xd8]
	b _020E13DC
_020E13D8:
	ldr r4, [r9, #0xdc]
_020E13DC:
	cmp r4, #0
	addeq sp, sp, #0xc
	ldmeqfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, pc}
	ldr r10, _020E1510 ; =0x02099F38
	mov r0, #1
	str r0, [sp]
	ldr r0, [r10]
	mov r1, r4
	add r2, r8, #1
	mov r3, #2
	bl FUN_ov16_02113ec0
	add r0, sp, #4
	str r0, [sp]
	ldr r0, [r10]
	add r3, sp, #8
	mov r1, r4
	add r2, r8, #1
	bl FUN_ov16_02114480
	ldr r1, [r6]
	ldr r0, [sp, #4]
	sub r0, r1, r0
	str r0, [r6]
	ldr r2, [sp, #8]
	ldr r1, [r9, #0x20c]
	sub r2, r7, r2, asr #1
	cmp r1, #0
	bne _020E1478
	ldr r1, [sp, #8]
	cmp r2, #0
	movlt r2, #0
	rsb r1, r1, #0x100
	cmp r2, r1
	movgt r2, r1
	ldr r1, [sp, #4]
	cmp r0, #0
	movlt r0, #0
	rsb r1, r1, #0xc0
	cmp r0, r1
	movgt r0, r1
_020E1478:
	mov r0, r0, lsl #0x10
	mov r1, r0, asr #0x10
	str r1, [sp]
	mov r3, r2, lsl #0x10
	ldr r0, _020E1510 ; =0x02099F38
	mov r1, r4
	ldr r0, [r0]
	add r2, r8, #1
	mov r3, r3, asr #0x10
	bl FUN_ov16_02113b78
	cmp r5, #0x64
	subhi r0, r5, #0x64
	movhi r0, r0, lsl #0x10
	movhi r5, r0, lsr #0x10
	ldr r6, _020E1510 ; =0x02099F38
	movls r5, #0
	ldr r0, [r6]
	mov r1, r4
	mov r3, r5
	add r2, r8, #1
	bl FUN_ov16_021139bc
	ldr r0, _020E1514 ; =0x02099EC0
	add r1, r8, #1
	ldr r0, [r0]
	bl FUN_020571e0
	ldr r2, _020E1518 ; =0x02099F58
	mov r1, r0
	ldr r0, [r2]
	mov r2, #1
	bl FUN_ov16_02117324
	mov r3, r0
	ldr r0, [r6]
	mov r1, r4
	add r2, r8, #1
	bl FUN_ov16_02113a80
	add sp, sp, #0xc
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, pc}
_020E150C: .word 0x020EAAA8
_020E1510: .word 0x02099F38
_020E1514: .word 0x02099EC0
_020E1518: .word 0x02099F58
	arm_func_end FUN_ov1_020e139c

	arm_func_start FUN_ov1_020e151c
FUN_ov1_020e151c: ; 0x020E151C
	stmfd sp!, {r3, r4, r5, r6, lr}
	sub sp, sp, #0x14
	mov r5, r0
	ldr r0, [r5, #0x1e4]
	cmp r0, #0
	addeq sp, sp, #0x14
	ldmeqfd sp!, {r3, r4, r5, r6, pc}
	ldr r0, _020E1610 ; =0x02099EF0
	mov r4, #1
	ldr r0, [r0]
	mov r1, r4
	bl FUN_ov132_02143114
	movs r1, r0
	addeq sp, sp, #0x14
	ldmeqfd sp!, {r3, r4, r5, r6, pc}
	ldr r0, [r1, #0xc]
	ldr r1, [r1, #0x10]
	add r2, sp, #0x10
	add r3, sp, #0xc
	bl FUN_ov16_020efe30
	add r0, sp, #4
	str r0, [sp]
	ldr r6, _020E1614 ; =0x02099F38
	ldr r1, [r5, #0xe8]
	ldr r0, [r6]
	add r3, sp, #8
	mov r2, r4
	bl FUN_ov16_02114480
	ldr r0, [sp, #0x10]
	ldr r2, [sp, #8]
	ldr r1, [sp, #0xc]
	ldr r3, [sp, #4]
	sub r0, r0, r2, asr #1
	sub r1, r1, r3, asr #1
	bl FUN_ov16_020efd68
	cmp r0, #0
	addeq sp, sp, #0x14
	ldmeqfd sp!, {r3, r4, r5, r6, pc}
	ldr r1, [r5, #0xe8]
	mov r2, r4
	str r4, [sp]
	ldr r0, [r6]
	mov r3, #2
	bl FUN_ov16_02113ec0
	ldr r1, [sp, #0xc]
	ldr r0, [sp, #4]
	mov r2, r4
	sub r0, r1, r0, asr #1
	mov r0, r0, lsl #0x10
	mov r0, r0, asr #0x10
	str r0, [sp]
	ldr r3, [sp, #0x10]
	ldr r1, [sp, #8]
	ldr r0, [r6]
	sub r1, r3, r1, asr #1
	mov r3, r1, lsl #0x10
	ldr r1, [r5, #0xe8]
	mov r3, r3, asr #0x10
	bl FUN_ov16_02113b78
	add sp, sp, #0x14
	ldmfd sp!, {r3, r4, r5, r6, pc}
_020E1610: .word 0x02099EF0
_020E1614: .word 0x02099F38
	arm_func_end FUN_ov1_020e151c

	arm_func_start FUN_ov1_020e1618
FUN_ov1_020e1618: ; 0x020E1618
	stmfd sp!, {r3, lr}
	ldr r1, [r0, #0x1e0]
	cmp r1, #0
	ldmeqfd sp!, {r3, pc}
	ldr r1, [r0, #0xe8]
	mov r2, #1
	ldr r0, _020E164C ; =0x02099F38
	str r2, [sp]
	mov r2, #2
	ldr r0, [r0]
	mov r3, r2
	bl FUN_ov16_02113ec0
	ldmfd sp!, {r3, pc}
_020E164C: .word 0x02099F38
	arm_func_end FUN_ov1_020e1618

	arm_func_start FUN_ov1_020e1650
FUN_ov1_020e1650: ; 0x020E1650
	stmfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, lr}
	sub sp, sp, #0x14
	ldr r6, _020E19AC ; =0x02099EE8
	mov r5, r0
	mov r4, r1
	ldr r0, [r6]
	ldr r1, [r5, #0x1d8]
	mov r2, #0
	bl FUN_0205f9c0
	ldr r0, _020E19B0 ; =0x02099EF0
	mov r9, #1
	ldr r0, [r0]
	mov r1, r9
	bl FUN_ov132_02143114
	movs r7, r0
	bne _020E16AC
	ldr r0, _020E19B4 ; =0x02099F58
	ldr r1, [r5, #0x120]
	ldr r0, [r0]
	mov r2, #2
	bl FUN_ov16_02116d30
	add sp, sp, #0x14
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
_020E16AC:
	ldr r2, [r7, #4]
	mov r0, r5
	mov r1, r2, asr #0xb
	add r1, r2, r1, lsr #20
	mov r1, r1, asr #0xc
	bl FUN_ov1_020e1dc4
	mov r8, r0
	ldr r1, [r7, #0x14]
	ldmia r7, {r0, r3}
	sub r1, r3, r1
	add r2, sp, #0x10
	add r3, sp, #0xc
	bl FUN_ov16_020efe30
	ldr r0, [sp, #0x10]
	ldr r1, [sp, #0xc]
	mov r2, #0x10
	sub r0, r0, #8
	sub r1, r1, #8
	mov r3, r2
	bl FUN_ov16_020efd68
	cmp r0, #0
	beq _020E1898
	ldr r0, [r6]
	ldr r1, [r5, #0x1d8]
	mov r2, r9
	bl FUN_0205f9c0
	ldr r2, [r7, #0x14]
	ldr r1, _020E19B8 ; =0x55555556
	mov r0, r2, asr #0xb
	add r0, r2, r0, lsr #20
	mov r2, r0, asr #0xc
	smull r0, r6, r1, r2
	add r6, r6, r2, lsr #31
	cmp r6, #8
	movgt r6, #8
	mov r1, r6, lsl #8
	rsb r0, r8, #0
	cmp r0, #0
	add r9, r1, #0x2000
	mov r0, r0, lsl #0xc
	ble _020E1764
	bl FUN_0201f704
	mov r1, r0
	mov r0, #0x3f000000
	bl FUN_02020274
	b _020E1770
_020E1764:
	bl FUN_0201f704
	mov r1, #0x3f000000
	bl FUN_020204a4
_020E1770:
	mov r10, r0
	ldr r0, [sp, #0xc]
	rsb r0, r0, #0
	cmp r0, #0
	mov r0, r0, lsl #0xc
	ble _020E179C
	bl FUN_0201f704
	mov r1, r0
	mov r0, #0x3f000000
	bl FUN_02020274
	b _020E17A8
_020E179C:
	bl FUN_0201f704
	mov r1, #0x3f000000
	bl FUN_020204a4
_020E17A8:
	mov r6, r0
	ldr r0, [sp, #0x10]
	cmp r0, #0
	mov r0, r0, lsl #0xc
	ble _020E17D0
	bl FUN_0201f704
	mov r1, r0
	mov r0, #0x3f000000
	bl FUN_02020274
	b _020E17DC
_020E17D0:
	bl FUN_0201f704
	mov r1, #0x3f000000
	bl FUN_020204a4
_020E17DC:
	bl FUN_0201fdac
	mov r11, r0
	mov r0, r6
	bl FUN_0201fdac
	mov r6, r0
	mov r0, r10
	bl FUN_0201fdac
	mov r3, r6
	str r0, [sp]
	ldr r6, _020E19AC ; =0x02099EE8
	ldr r1, [r5, #0x1d8]
	ldr r0, [r6]
	mov r2, r11
	bl FUN_0205fa48
	str r9, [sp]
	ldr r0, [r6]
	ldr r1, [r5, #0x1d8]
	mov r2, r9
	mov r3, r9
	bl FUN_0205faf8
	ldrh r0, [r7, #0x20]
	mov r3, #0
	rsb r0, r0, #0x14000
	mov r0, r0, lsl #0x10
	mov r0, r0, lsr #0x10
	str r0, [sp]
	ldrh r2, [r7, #0x22]
	ldr r0, [r6]
	ldr r1, [r5, #0x1d8]
	bl FUN_0205fab4
	ldr r1, [r7, #0x14]
	mov r2, r7
	mov r0, r1, asr #0xb
	add r0, r1, r0, lsr #20
	mov r1, r0, asr #0xc
	mov r0, r1, asr #2
	add r0, r1, r0, lsr #29
	mov r6, r0, asr #3
	cmp r6, #4
	ldr r1, [sp, #0xc]
	movge r6, #3
	stmia sp, {r1, r6, r8}
	ldr r3, [sp, #0x10]
	mov r0, r5
	mov r1, r4
	bl FUN_ov1_020e1a94
	b _020E18C0
_020E1898:
	ldr r1, [r7, #0x14]
	mov r0, r1, asr #0xb
	add r0, r1, r0, lsr #20
	mov r1, r0, asr #0xc
	mov r0, r1, asr #2
	add r0, r1, r0, lsr #29
	mov r6, r0, asr #3
	cmp r6, #4
	movge r6, #3
	mov r0, #1
_020E18C0:
	cmp r0, #0
	beq _020E18DC
	ldr r0, _020E19B4 ; =0x02099F58
	ldr r1, [r5, #0x120]
	ldr r0, [r0]
	mov r2, #2
	bl FUN_ov16_02116d30
_020E18DC:
	add r2, sp, #0x10
	add r3, sp, #0xc
	ldmia r7, {r0, r1}
	bl FUN_ov16_020efe30
	ldr r0, [sp, #0x10]
	ldr r1, [sp, #0xc]
	mov r2, #0x10
	mov r3, r2
	sub r0, r0, #8
	sub r1, r1, #8
	bl FUN_ov16_020efd68
	cmp r0, #0
	addeq sp, sp, #0x14
	ldmeqfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
	ldr r1, [r5, #0xec]
	mov r0, #1
	ldr r7, _020E19BC ; =0x02099F38
	mov r4, #2
	str r0, [sp]
	ldr r0, [r7]
	mov r2, r4
	mov r3, r4
	bl FUN_ov16_02113ec0
	mov r0, #0
	str r0, [sp]
	ldr r0, [r7]
	ldr r1, [r5, #0xec]
	mov r2, r4
	add r3, r6, #4
	bl FUN_ov16_0211401c
	ldr r0, [sp, #0xc]
	mov r2, r4
	sub r0, r0, #8
	mov r0, r0, lsl #0x10
	mov r0, r0, asr #0x10
	str r0, [sp]
	ldr r1, [sp, #0x10]
	ldr r0, [r7]
	sub r1, r1, #8
	mov r1, r1, lsl #0x10
	mov r3, r1, asr #0x10
	ldr r1, [r5, #0xec]
	bl FUN_ov16_02113b78
	ldr r0, [r7]
	ldr r1, [r5, #0xec]
	mov r2, r4
	add r3, r8, #3
	mov r3, r3, lsl #0x10
	mov r3, r3, lsr #0x10
	bl FUN_ov16_021139bc
	add sp, sp, #0x14
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
_020E19AC: .word 0x02099EE8
_020E19B0: .word 0x02099EF0
_020E19B4: .word 0x02099F58
_020E19B8: .word 0x55555556
_020E19BC: .word 0x02099F38
	arm_func_end FUN_ov1_020e1650

	arm_func_start FUN_ov1_020e19c0
FUN_ov1_020e19c0: ; 0x020E19C0
	stmfd sp!, {r3, r4, r5, lr}
	mov r4, r0
	mov r5, r1
	ldr r0, _020E1A40 ; =0x02099EE8
	cmp r5, #0x1f
	movhi r5, #0x1f
	ldr r1, [r4, #0x1d8]
	ldr r0, [r0]
	mov r2, r5
	bl FUN_0205fb3c
	cmp r5, #0x1f
	moveq r5, #0x10
	beq _020E1A28
	mov r0, #0x64
	mul r3, r5, r0
	ldr r2, _020E1A44 ; =0x84210843
	mov r0, r3, lsr #0x1f
	smull r1, r12, r2, r3
	add r12, r3, r12
	add r12, r0, r12, asr #4
	mov r1, r12, lsl #4
	ldr r2, _020E1A48 ; =0x51EB851F
	mov r0, r1, lsr #0x1f
	smull r1, r3, r2, r1
	add r3, r0, r3, asr #5
	and r5, r3, #0xff
_020E1A28:
	ldr r0, _020E1A4C ; =0x02099F38
	ldr r1, [r4, #0xec]
	ldr r0, [r0]
	mov r2, r5
	bl FUN_ov16_02112dac
	ldmfd sp!, {r3, r4, r5, pc}
_020E1A40: .word 0x02099EE8
_020E1A44: .word 0x84210843
_020E1A48: .word 0x51EB851F
_020E1A4C: .word 0x02099F38
	arm_func_end FUN_ov1_020e19c0

	arm_func_start FUN_ov1_020e1a50
FUN_ov1_020e1a50: ; 0x020E1A50
	stmfd sp!, {r3, r4, r5, lr}
	ldr r2, _020E1A8C ; =0x02099EE8
	mov r5, r0
	mov r4, r1
	ldr r0, [r2]
	ldr r1, [r5, #0x1d8]
	mov r2, r4
	bl FUN_0205f9c0
	ldr r0, _020E1A90 ; =0x02099F38
	ldr r1, [r5, #0xec]
	ldr r0, [r0]
	mov r3, r4
	mov r2, #2
	bl FUN_ov16_0211329c
	ldmfd sp!, {r3, r4, r5, pc}
_020E1A8C: .word 0x02099EE8
_020E1A90: .word 0x02099F38
	arm_func_end FUN_ov1_020e1a50

	arm_func_start FUN_ov1_020e1a94
FUN_ov1_020e1a94: ; 0x020E1A94
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, lr}
	sub sp, sp, #0x10
	mov r4, #0
	mov r9, r0
	str r1, [sp, #8]
	mov r10, r2
	mov r8, r3
	str r4, [sp, #0xc]
	ldr r7, [sp, #0x38]
	ldr r6, [sp, #0x40]
	mov r5, #1
	bl FUN_ov1_020e3e94
	cmp r0, #0xd
	addls pc, pc, r0, lsl #2
	b _020E1B94
_020E1AD0: ; jump table
	b _020E1B94 ; case 0
	b _020E1B08 ; case 1
	b _020E1B34 ; case 2
	b _020E1B3C ; case 3
	b _020E1B44 ; case 4
	b _020E1B4C ; case 5
	b _020E1B54 ; case 6
	b _020E1B5C ; case 7
	b _020E1B64 ; case 8
	b _020E1B6C ; case 9
	b _020E1B74 ; case 10
	b _020E1B7C ; case 11
	b _020E1B84 ; case 12
	b _020E1B8C ; case 13
_020E1B08:
	ldrh r0, [r10, #0x20]
	ldr r1, [sp, #0x3c]
	mov r4, r5
	rsb r0, r0, #0x10000
	add r1, r1, #0xc
	mov r0, r0, lsl #0x10
	str r1, [sp, #0x3c]
	sub r8, r8, #8
	sub r7, r7, #8
	mov r11, r0, lsr #0x10
	b _020E1B9C
_020E1B34:
	mov r5, #2
	b _020E1B9C
_020E1B3C:
	mov r5, #3
	b _020E1B9C
_020E1B44:
	mov r5, #4
	b _020E1B9C
_020E1B4C:
	mov r5, #5
	b _020E1B9C
_020E1B54:
	mov r5, #6
	b _020E1B9C
_020E1B5C:
	mov r5, #7
	b _020E1B9C
_020E1B64:
	mov r5, #8
	b _020E1B9C
_020E1B6C:
	mov r5, #9
	b _020E1B9C
_020E1B74:
	mov r5, #0xa
	b _020E1B9C
_020E1B7C:
	mov r5, #0xb
	b _020E1B9C
_020E1B84:
	mov r5, #0xc
	b _020E1B9C
_020E1B8C:
	mov r5, #0xd
	b _020E1B9C
_020E1B94:
	mov r4, #1
	str r4, [sp, #0xc]
_020E1B9C:
	cmp r4, #1
	bne _020E1C40
	ldr r0, [sp, #0xc]
	mov r10, #1
	cmp r0, #0
	bne _020E1DAC
	ldr r1, [r9, #0xec]
	ldr r5, _020E1DB8 ; =0x02099F38
	str r10, [sp]
	ldr r0, [r5]
	mov r2, r10
	mov r3, #2
	bl FUN_ov16_02113ec0
	mov r0, #0
	str r0, [sp]
	ldr r0, [r5]
	ldr r1, [r9, #0xec]
	ldr r3, [sp, #0x3c]
	mov r2, r10
	bl FUN_ov16_0211401c
	mov r0, r7, lsl #0x10
	mov r0, r0, asr #0x10
	str r0, [sp]
	mov r0, r8, lsl #0x10
	mov r3, r0, asr #0x10
	ldr r0, [r5]
	ldr r1, [r9, #0xec]
	mov r2, r10
	bl FUN_ov16_02113b78
	mov r0, r6, lsl #0x10
	mov r3, r0, lsr #0x10
	ldr r0, [r5]
	ldr r1, [r9, #0xec]
	mov r2, r10
	bl FUN_ov16_021139bc
	ldr r0, [r5]
	ldr r1, [r9, #0xec]
	mov r2, r10
	mov r3, r11
	bl FUN_ov16_02113e30
	b _020E1DAC
_020E1C40:
	ldrh r1, [r10, #0x20]
	sub r2, r5, #2
	mov r0, r2, asr #1
	add r2, r2, r0, lsr #30
	rsb r1, r1, #0x1c000
	ldr r0, [sp, #8]
	mov r1, r1, lsl #0x10
	mov r10, r2, asr #2
	cmp r0, #0
	add r7, r7, #0x18
	mov r11, r1, lsr #0x10
	mov r2, #0
	bne _020E1C94
	str r2, [sp]
	mov r0, #1
	str r0, [sp, #4]
	ldr r0, _020E1DBC ; =0x02099F58
	ldr r1, [r9, #0x120]
	ldr r0, [r0]
	mov r3, r2
	b _020E1CEC
_020E1C94:
	ldr r0, _020E1DBC ; =0x02099F58
	ldr r1, [r9, #0x120]
	ldr r0, [r0]
	add r2, r10, #1
	bl FUN_ov16_02117614
	cmp r0, #0
	beq _020E1CCC
	ldr r0, _020E1DBC ; =0x02099F58
	ldr r1, [r9, #0x120]
	ldr r0, [r0]
	add r2, r10, #1
	bl FUN_ov16_021176ec
	cmp r0, #0
	bne _020E1CF0
_020E1CCC:
	mov r2, #0
	str r2, [sp]
	mov r0, #1
	str r0, [sp, #4]
	ldr r0, _020E1DBC ; =0x02099F58
	ldr r1, [r9, #0x120]
	ldr r0, [r0]
	mov r3, #3
_020E1CEC:
	bl FUN_ov16_0211702c
_020E1CF0:
	ldr r0, _020E1DBC ; =0x02099F58
	ldr r1, [r9, #0x120]
	ldr r0, [r0]
	add r2, r10, #1
	bl FUN_ov16_02117704
	add r1, r9, r5, lsl #2
	ldr r3, [r1, #0x38]
	cmp r3, r0
	beq _020E1D28
	ldr r0, _020E1DBC ; =0x02099F58
	ldr r1, [r9, #0x120]
	ldr r0, [r0]
	add r2, r10, #1
	bl FUN_ov16_02117220
_020E1D28:
	ldr r5, _020E1DBC ; =0x02099F58
	ldr r1, [r9, #0x120]
	ldr r0, [r5]
	ldr r2, _020E1DC0 ; =0x00000102
	bl FUN_ov16_02116d30
	mov r0, #1
	str r0, [sp]
	ldr r3, _020E1DC0 ; =0x00000102
	ldr r0, [r5]
	ldr r1, [r9, #0x120]
	add r2, r10, #1
	bl FUN_ov16_02117284
	mov r0, r8, lsl #0x10
	mov r2, r0, asr #0x10
	mov r0, r7, lsl #0x10
	mov r3, r0, asr #0x10
	ldr r0, [r5]
	ldr r1, [r9, #0x120]
	bl FUN_ov16_02116ee8
	mov r0, r6, lsl #0x10
	mov r2, r0, asr #0x10
	ldr r0, [r5]
	ldr r1, [r9, #0x120]
	bl FUN_ov16_02116df4
	ldr r0, [r5]
	ldr r1, [r9, #0x120]
	mov r2, #0x32
	mov r3, #0x19
	bl FUN_ov16_02117104
	ldr r0, [r5]
	ldr r1, [r9, #0x120]
	mov r2, r11
	bl FUN_ov16_021170b0
_020E1DAC:
	mov r0, r4
	add sp, sp, #0x10
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_020E1DB8: .word 0x02099F38
_020E1DBC: .word 0x02099F58
_020E1DC0: .word 0x00000102
	arm_func_end FUN_ov1_020e1a94

	arm_func_start FUN_ov1_020e1dc4
FUN_ov1_020e1dc4: ; 0x020E1DC4
	ldr r0, _020E1DD4 ; =0x00000F3C
	add r1, r1, r1, lsl #1
	sub r0, r0, r1
	bx lr
_020E1DD4: .word 0x00000F3C
	arm_func_end FUN_ov1_020e1dc4

	arm_func_start FUN_ov1_020e1dd8
FUN_ov1_020e1dd8: ; 0x020E1DD8
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, lr}
	sub sp, sp, #0xc
	mov r9, r0
	ldr r1, [r9, #0x1e8]
	mov r10, #1
	cmp r1, #0
	mov r5, #0x18
	mov r6, #0x28
	addlt sp, sp, #0xc
	ldmltfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, pc}
	ldr r0, _020E2164 ; =0x02099EF0
	mov r2, r10
	ldr r0, [r0]
	bl FUN_ov132_021430b4
	cmp r0, #0
	addeq sp, sp, #0xc
	ldmeqfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, pc}
	ldr r1, [r0, #4]
	ldr r0, [r0]
	add r2, sp, #8
	add r3, sp, #4
	bl FUN_ov16_020efe30
	ldr r1, [sp, #8]
	ldr r0, [sp, #4]
	sub r7, r1, #0xc
	sub r8, r0, #0x23
	mov r0, r7
	mov r1, r8
	mov r2, r5
	mov r3, r6
	bl FUN_ov16_020efd68
	cmp r0, #0
	addeq sp, sp, #0xc
	ldmeqfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, pc}
	mov r2, #8
	mov r0, r7
	mov r1, r8
	mov r3, r2
	bl FUN_ov16_020efd68
	cmp r0, #0
	beq _020E1EC0
	ldr r1, [r9, #0xe8]
	ldr r4, _020E2168 ; =0x02099F38
	str r10, [sp]
	mov r10, #4
	ldr r0, [r4]
	mov r2, r10
	mov r3, #2
	bl FUN_ov16_02113ec0
	mov r0, r8, lsl #0x10
	mov r0, r0, asr #0x10
	str r0, [sp]
	mov r3, r7, lsl #0x10
	ldr r0, [r4]
	ldr r1, [r9, #0xe8]
	mov r2, r10
	mov r3, r3, asr #0x10
	bl FUN_ov16_02113b78
_020E1EC0:
	add r0, r7, r5
	mov r2, #8
	mov r1, r8
	mov r3, r2
	sub r0, r0, #8
	bl FUN_ov16_020efd68
	cmp r0, #0
	beq _020E1F30
	ldr r1, [r9, #0xe8]
	mov r0, #1
	ldr r4, _020E2168 ; =0x02099F38
	str r0, [sp]
	mov r10, #5
	ldr r0, [r4]
	mov r2, r10
	mov r3, #2
	bl FUN_ov16_02113ec0
	mov r0, r8, lsl #0x10
	mov r0, r0, asr #0x10
	str r0, [sp]
	add r0, r7, r5
	sub r0, r0, #8
	mov r3, r0, lsl #0x10
	ldr r0, [r4]
	ldr r1, [r9, #0xe8]
	mov r2, r10
	mov r3, r3, asr #0x10
	bl FUN_ov16_02113b78
_020E1F30:
	add r1, r8, r6
	mov r2, #8
	mov r0, r7
	mov r3, r2
	sub r1, r1, #8
	bl FUN_ov16_020efd68
	cmp r0, #0
	beq _020E1FA0
	ldr r1, [r9, #0xe8]
	mov r0, #1
	ldr r4, _020E2168 ; =0x02099F38
	str r0, [sp]
	mov r10, #6
	ldr r0, [r4]
	mov r2, r10
	mov r3, #2
	bl FUN_ov16_02113ec0
	add r0, r8, r6
	sub r0, r0, #8
	mov r0, r0, lsl #0x10
	mov r0, r0, asr #0x10
	str r0, [sp]
	mov r3, r7, lsl #0x10
	ldr r0, [r4]
	ldr r1, [r9, #0xe8]
	mov r2, r10
	mov r3, r3, asr #0x10
	bl FUN_ov16_02113b78
_020E1FA0:
	add r0, r7, r5
	add r1, r8, r6
	mov r2, #8
	mov r3, r2
	sub r0, r0, #8
	sub r1, r1, #8
	bl FUN_ov16_020efd68
	cmp r0, #0
	beq _020E201C
	ldr r1, [r9, #0xe8]
	mov r0, #1
	ldr r4, _020E2168 ; =0x02099F38
	str r0, [sp]
	mov r10, #7
	ldr r0, [r4]
	mov r2, r10
	mov r3, #2
	bl FUN_ov16_02113ec0
	add r0, r8, r6
	sub r0, r0, #8
	mov r0, r0, lsl #0x10
	mov r0, r0, asr #0x10
	str r0, [sp]
	add r0, r7, r5
	sub r0, r0, #8
	mov r3, r0, lsl #0x10
	ldr r0, [r4]
	ldr r1, [r9, #0xe8]
	mov r2, r10
	mov r3, r3, asr #0x10
	bl FUN_ov16_02113b78
_020E201C:
	ldr r0, _020E2164 ; =0x02099EF0
	ldr r4, _020E2168 ; =0x02099F38
	ldr r0, [r0]
	mov r8, #1
	cmp r0, #0
	mov r5, #8
	addeq sp, sp, #0xc
	ldmeqfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, pc}
	bl FUN_ov132_02149270
	cmp r0, #3
	addls pc, pc, r0, lsl #2
	b _020E215C
_020E204C: ; jump table
	b _020E215C ; case 0
	b _020E215C ; case 1
	b _020E205C ; case 2
	b _020E20E0 ; case 3
_020E205C:
	ldr r6, [sp, #8]
	ldr r7, [sp, #4]
	ldr r1, [r9, #0xe0]
	mov r2, r5
	str r8, [sp]
	ldr r0, [r4]
	mov r3, #2
	sub r6, r6, #0x10
	sub r7, r7, #0x34
	bl FUN_ov16_02113ec0
	mov r0, #0
	str r0, [sp]
	ldr r0, [r4]
	ldr r1, [r9, #0xe0]
	mov r2, r5
	mov r3, #9
	bl FUN_ov16_0211401c
	mov r0, r7, lsl #0x10
	mov r0, r0, asr #0x10
	str r0, [sp]
	mov r2, r6, lsl #0x10
	mov r3, r2, asr #0x10
	ldr r0, [r4]
	ldr r1, [r9, #0xe0]
	mov r2, r5
	bl FUN_ov16_02113b78
	ldr r0, [r4]
	ldr r1, [r9, #0xe0]
	mov r2, r5
	mov r3, #0x3e8
	bl FUN_ov16_021139bc
	add sp, sp, #0xc
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, pc}
_020E20E0:
	ldr r6, [sp, #8]
	ldr r7, [sp, #4]
	ldr r1, [r9, #0xe0]
	mov r2, r5
	str r8, [sp]
	ldr r0, [r4]
	mov r3, #2
	sub r6, r6, #0x10
	sub r7, r7, #0x34
	bl FUN_ov16_02113ec0
	mov r0, #0
	str r0, [sp]
	ldr r0, [r4]
	ldr r1, [r9, #0xe0]
	mov r2, r5
	mov r3, #0xa
	bl FUN_ov16_0211401c
	mov r0, r7, lsl #0x10
	mov r0, r0, asr #0x10
	str r0, [sp]
	mov r2, r6, lsl #0x10
	mov r3, r2, asr #0x10
	ldr r0, [r4]
	ldr r1, [r9, #0xe0]
	mov r2, r5
	bl FUN_ov16_02113b78
	ldr r0, [r4]
	ldr r1, [r9, #0xe0]
	mov r2, r5
	mov r3, #0x3e8
	bl FUN_ov16_021139bc
_020E215C:
	add sp, sp, #0xc
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, pc}
_020E2164: .word 0x02099EF0
_020E2168: .word 0x02099F38
	arm_func_end FUN_ov1_020e1dd8

	arm_func_start FUN_ov1_020e216c
FUN_ov1_020e216c: ; 0x020E216C
	stmfd sp!, {r4, r5, r6, r7, lr}
	sub sp, sp, #0xc
	ldr r4, _020E22B4 ; =0x02099EF0
	mov r5, r0
	ldr r0, [r4]
	bl FUN_ov132_02144780
	ldr r0, [r4]
	mov r1, #1
	bl FUN_ov132_02143114
	movs r7, r0
	addeq sp, sp, #0xc
	ldmeqfd sp!, {r4, r5, r6, r7, pc}
	ldrsh r4, [r7, #0x1c]
	bl FUN_ov16_020f066c
	cmp r0, #0
	beq _020E21BC
	ldr r0, _020E22B8 ; =0x0209AEC0
	ldrb r0, [r0, #0x64]
	cmp r0, #0
	beq _020E21EC
_020E21BC:
	ldr r6, _020E22B4 ; =0x02099EF0
	ldrb r1, [r7, #0x25]
	ldr r0, [r6]
	bl FUN_ov126_0212d4b4
	cmp r0, #0
	ldrneb r0, [r7, #0x24]
	cmpne r0, #2
	beq _020E21EC
	ldr r0, [r6]
	bl FUN_ov126_021375d4
	cmp r0, #0
	ldrnesb r4, [r0, #0xc]
_020E21EC:
	cmp r4, #0
	addlt sp, sp, #0xc
	ldmltfd sp!, {r4, r5, r6, r7, pc}
	ldr r0, _020E22B4 ; =0x02099EF0
	mov r6, #1
	ldr r0, [r0]
	mov r1, r4
	mov r2, r6
	bl FUN_ov132_021430b4
	cmp r0, #0
	addeq sp, sp, #0xc
	ldmeqfd sp!, {r4, r5, r6, r7, pc}
	ldr r1, [r0, #4]
	ldr r0, [r0]
	add r2, sp, #8
	add r3, sp, #4
	bl FUN_ov16_020efe30
	ldr r0, [sp, #8]
	ldr r1, [sp, #4]
	mov r2, #0x10
	mov r3, r2
	sub r0, r0, #8
	sub r1, r1, #0x25
	bl FUN_ov16_020efd68
	cmp r0, #0
	addeq sp, sp, #0xc
	ldmeqfd sp!, {r4, r5, r6, r7, pc}
	ldr r1, [r5, #0xe8]
	ldr r4, _020E22BC ; =0x02099F38
	str r6, [sp]
	mov r6, #3
	ldr r0, [r4]
	mov r2, r6
	mov r3, #2
	bl FUN_ov16_02113ec0
	ldr r0, [sp, #4]
	mov r2, r6
	sub r0, r0, #0x25
	mov r0, r0, lsl #0x10
	mov r0, r0, asr #0x10
	str r0, [sp]
	ldr r1, [sp, #8]
	ldr r0, [r4]
	sub r1, r1, #8
	mov r3, r1, lsl #0x10
	ldr r1, [r5, #0xe8]
	mov r3, r3, asr #0x10
	bl FUN_ov16_02113b78
	add sp, sp, #0xc
	ldmfd sp!, {r4, r5, r6, r7, pc}
_020E22B4: .word 0x02099EF0
_020E22B8: .word 0x0209AEC0
_020E22BC: .word 0x02099F38
	arm_func_end FUN_ov1_020e216c

	arm_func_start FUN_ov1_020e22c0
FUN_ov1_020e22c0: ; 0x020E22C0
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, lr}
	ldr r9, _020E247C ; =0x0209BA20
	mov r8, #1
	mov r5, r0
	mov r0, r9
	mov r1, r8
	bl FUN_02073194
	str r0, [sp]
	ldr r4, _020E2480 ; =0x02099F38
	mov r7, #2
	ldr r0, [r4]
	ldr r1, [r5, #0xe4]
	mov r2, r8
	mov r3, r7
	bl FUN_ov16_02113ec0
	mov r0, r9
	mov r1, r8
	bl FUN_02073194
	str r0, [sp]
	ldr r0, [r4]
	ldr r1, [r5, #0xe4]
	mov r2, #3
	mov r3, r7
	bl FUN_ov16_02113ec0
	mov r6, #0
	mov r0, r9
	mov r1, r6
	bl FUN_02073194
	str r0, [sp]
	ldr r0, [r4]
	ldr r1, [r5, #0xe4]
	mov r2, r7
	mov r3, r7
	bl FUN_ov16_02113ec0
	mov r0, r9
	mov r1, r6
	bl FUN_02073194
	str r0, [sp]
	ldr r0, [r4]
	ldr r1, [r5, #0xe4]
	mov r3, r7
	mov r2, #4
	bl FUN_ov16_02113ec0
	ldr r0, _020E2484 ; =0x02099EE8
	ldr r1, [r5, #0x1dc]
	ldr r0, [r0]
	mov r2, r8
	bl FUN_0205f9c0
	ldr r1, _020E2488 ; =0x0209A720
	ldr r0, _020E248C ; =0x0209A140
	ldrsh r2, [r1, #0xaa]
	ldr r1, [r0]
	add r0, r2, r2, lsr #31
	mov r0, r0, asr #1
	rsb r0, r0, #0
	add r0, r0, r1
	cmp r0, #0
	mov r0, r0, lsl #0xc
	ble _020E23C0
	bl FUN_0201f704
	mov r1, r0
	mov r0, #0x3f000000
	bl FUN_02020274
	b _020E23CC
_020E23C0:
	bl FUN_0201f704
	mov r1, #0x3f000000
	bl FUN_020204a4
_020E23CC:
	ldr r1, _020E2488 ; =0x0209A720
	mov r4, r0
	ldr r0, _020E2490 ; =0x0209A12C
	ldrsh r2, [r1, #0xa8]
	ldr r1, [r0]
	add r0, r2, r2, lsr #31
	rsb r0, r1, r0, asr #1
	cmp r0, #0
	mov r0, r0, lsl #0xc
	ble _020E2408
	bl FUN_0201f704
	mov r1, r0
	mov r0, #0x3f000000
	bl FUN_02020274
	b _020E2414
_020E2408:
	bl FUN_0201f704
	mov r1, #0x3f000000
	bl FUN_020204a4
_020E2414:
	bl FUN_0201fdac
	mov r6, r0
	mov r0, r4
	bl FUN_0201fdac
	mov r1, #0xfa0000
	rsb r1, r1, #0
	str r1, [sp]
	ldr r4, _020E2484 ; =0x02099EE8
	mov r3, r0
	ldr r0, [r4]
	mov r2, r6
	ldr r1, [r5, #0x1dc]
	bl FUN_0205fa48
	mov r3, #0
	str r3, [sp]
	ldr r0, [r4]
	ldr r1, [r5, #0x1dc]
	mov r2, #0x4000
	bl FUN_0205fab4
	ldr r2, _020E2494 ; =0x0004CCCD
	mov r3, #0x1000
	str r2, [sp]
	ldr r0, [r4]
	ldr r1, [r5, #0x1dc]
	bl FUN_0205faf8
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
_020E247C: .word 0x0209BA20
_020E2480: .word 0x02099F38
_020E2484: .word 0x02099EE8
_020E2488: .word 0x0209A720
_020E248C: .word 0x0209A140
_020E2490: .word 0x0209A12C
_020E2494: .word 0x0004CCCD
	arm_func_end FUN_ov1_020e22c0

	arm_func_start FUN_ov1_020e2498
FUN_ov1_020e2498: ; 0x020E2498
	bx lr
	arm_func_end FUN_ov1_020e2498

	arm_func_start FUN_ov1_020e249c
FUN_ov1_020e249c: ; 0x020E249C
	stmfd sp!, {r3, r4, r5, r6, lr}
	sub sp, sp, #4
	ldr r1, _020E2508 ; =0x02099EF0
	mov r6, r0
	ldr r0, [r1]
	bl FUN_ov132_021434f8
	cmp r0, #0
	ldrne r1, [r6, #0x1fc]
	ldrne r0, [r6, #0x200]
	cmpne r1, r0
	addge sp, sp, #4
	ldmgefd sp!, {r3, r4, r5, r6, pc}
	ldr r4, _020E250C ; =0x02099F38
	mov r5, #1
	ldr r0, [r4]
	ldr r1, [r6, #0xf8]
	mov r3, r5
	mov r2, #2
	bl FUN_ov16_0211329c
	mov r3, #0
	str r3, [sp]
	ldr r0, [r4]
	ldr r1, [r6, #0xf8]
	mov r2, r5
	bl FUN_ov16_02113b78
	add sp, sp, #4
	ldmfd sp!, {r3, r4, r5, r6, pc}
_020E2508: .word 0x02099EF0
_020E250C: .word 0x02099F38
	arm_func_end FUN_ov1_020e249c

	arm_func_start FUN_ov1_020e2510
FUN_ov1_020e2510: ; 0x020E2510
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	mov r4, r0
	ldr r0, [r4, #0x20]
	mov r7, #1
	tst r0, #0x200
	movne r0, #1
	moveq r0, #0
	cmp r0, #0
	mov r6, #2
	beq _020E2570
	ldr r5, _020E25A0 ; =0x02099F38
	str r7, [sp]
	ldr r0, [r5]
	ldr r1, [r4, #0xfc]
	mov r2, r7
	mov r3, r6
	bl FUN_ov16_02113ec0
	str r7, [sp]
	ldr r0, [r5]
	ldr r1, [r4, #0x100]
	mov r2, r7
	mov r3, r6
	bl FUN_ov16_02113ec0
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_020E2570:
	ldr r5, _020E25A0 ; =0x02099F38
	ldr r1, [r4, #0xfc]
	ldr r0, [r5]
	mov r2, r7
	mov r3, r6
	bl FUN_ov16_02113f7c
	ldr r0, [r5]
	ldr r1, [r4, #0x100]
	mov r2, r7
	mov r3, r6
	bl FUN_ov16_02113f7c
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_020E25A0: .word 0x02099F38
	arm_func_end FUN_ov1_020e2510

	arm_func_start FUN_ov1_020e25a4
FUN_ov1_020e25a4: ; 0x020E25A4
	stmfd sp!, {r3, lr}
	ldr r1, [r0, #0x20]
	tst r1, #0x200
	movne r1, #1
	moveq r1, #0
	cmp r1, #0
	beq _020E25E0
	mov r2, #1
	str r2, [sp]
	ldr r3, _020E25FC ; =0x02099F38
	ldr r1, [r0, #0x104]
	ldr r0, [r3]
	mov r3, #2
	bl FUN_ov16_02113ec0
	ldmfd sp!, {r3, pc}
_020E25E0:
	ldr r2, _020E25FC ; =0x02099F38
	ldr r1, [r0, #0x104]
	ldr r0, [r2]
	mov r2, #1
	mov r3, #2
	bl FUN_ov16_02113f7c
	ldmfd sp!, {r3, pc}
_020E25FC: .word 0x02099F38
	arm_func_end FUN_ov1_020e25a4

	arm_func_start FUN_ov1_020e2600
FUN_ov1_020e2600: ; 0x020E2600
	stmfd sp!, {r4, r5, r6, r7, lr}
	sub sp, sp, #0x14
	ldr r6, _020E275C ; =0x02099EF0
	mov r5, r0
	ldr r0, [r6]
	mov r4, r2
	add r2, sp, #0xc
	bl FUN_ov132_02143e4c
	mov r7, r0
	ldr r0, [r6]
	bl FUN_ov132_021434f8
	cmp r0, #0
	bne _020E264C
	ldr r0, _020E2760 ; =0x020AF81C
	bl FUN_02044600
	cmp r0, #0
	bne _020E264C
	cmp r7, #0
	bne _020E266C
_020E264C:
	ldr r0, _020E2764 ; =0x02099F38
	ldr r2, [r4]
	ldr r1, [r5, #0xf4]
	ldr r0, [r0]
	mov r3, #2
	bl FUN_ov16_02113f7c
	add sp, sp, #0x14
	ldmfd sp!, {r4, r5, r6, r7, pc}
_020E266C:
	ldr r2, [r4]
	ldr r1, [r5, #0xf4]
	mov r0, #1
	ldr r6, _020E2764 ; =0x02099F38
	str r0, [sp]
	ldr r0, [r6]
	mov r3, #2
	bl FUN_ov16_02113ec0
	mov r3, #0x32
	str r3, [sp]
	ldr r0, [r6]
	ldr r1, [r5, #0xf4]
	ldr r2, [r4]
	bl FUN_ov16_0211409c
	sub r0, r7, #1
	mov r3, r0, lsl #0x1e
	ldr r0, [r6]
	ldr r1, [r5, #0xf4]
	ldr r2, [r4]
	mov r3, r3, lsr #0x10
	bl FUN_ov16_02113e30
	ldr r0, [sp, #0xc]
	ldr r1, [sp, #0x10]
	add r2, sp, #8
	add r3, sp, #4
	bl FUN_ov16_020efe30
	ldr r1, [sp, #8]
	ldr r0, [sp, #4]
	sub r1, r1, #8
	sub r0, r0, #8
	str r1, [sp, #8]
	cmp r1, #0
	movle r1, #0
	strle r1, [sp, #8]
	cmp r1, #0xf0
	movge r1, #0xf0
	strge r1, [sp, #8]
	str r0, [sp, #4]
	cmp r0, #0
	movle r0, #0
	strle r0, [sp, #4]
	cmp r0, #0xb0
	movge r0, #0xb0
	strge r0, [sp, #4]
	mov r0, r0, lsl #0x10
	mov r0, r0, asr #0x10
	str r0, [sp]
	ldr r1, [sp, #8]
	ldr r0, _020E2764 ; =0x02099F38
	mov r3, r1, lsl #0x10
	ldr r0, [r0]
	ldr r1, [r5, #0xf4]
	ldr r2, [r4]
	mov r3, r3, asr #0x10
	bl FUN_ov16_02113b78
	ldr r0, [r4]
	add r0, r0, #1
	str r0, [r4]
	add sp, sp, #0x14
	ldmfd sp!, {r4, r5, r6, r7, pc}
_020E275C: .word 0x02099EF0
_020E2760: .word 0x020AF81C
_020E2764: .word 0x02099F38
	arm_func_end FUN_ov1_020e2600

	arm_func_start FUN_ov1_020e2768
FUN_ov1_020e2768: ; 0x020E2768
	stmfd sp!, {r4, r5, r6, r7, lr}
	sub sp, sp, #0xc
	ldr r5, _020E2824 ; =0x02099EF0
	mov r7, r0
	ldr r0, [r5]
	bl FUN_ov132_02152fdc
	mov r4, r0
	ldr r0, [r5]
	bl FUN_ov132_02152f98
	movs r5, r0
	ldr r0, [r7, #0x218]
	movmi r5, #0
	cmp r0, r5
	movne r0, #1
	moveq r0, #0
	cmp r0, #0
	ldr r6, [r7, #0x110]
	beq _020E2800
	ldr r0, _020E2824 ; =0x02099EF0
	add r2, sp, #8
	ldr r0, [r0]
	mov r1, r5
	bl FUN_ov132_02152fb0
	str r0, [sp]
	mov r0, #1
	str r0, [sp, #4]
	ldr r0, _020E2828 ; =0x02099ED0
	mov r1, #0
	ldr r3, [r7, #0xa4]
	ldr r0, [r0]
	mov r2, r1
	bl FUN_ov1_020deeac
	ldr r0, _020E282C ; =0x02099F38
	ldrh r3, [sp, #8]
	ldr r0, [r0]
	mov r1, r6
	mov r2, #2
	bl FUN_ov16_02113b00
_020E2800:
	ldr r0, _020E282C ; =0x02099F38
	mov r1, r6
	ldr r0, [r0]
	mov r2, #2
	bl FUN_ov16_02114370
	str r4, [r7, #0x214]
	str r5, [r7, #0x218]
	add sp, sp, #0xc
	ldmfd sp!, {r4, r5, r6, r7, pc}
_020E2824: .word 0x02099EF0
_020E2828: .word 0x02099ED0
_020E282C: .word 0x02099F38
	arm_func_end FUN_ov1_020e2768

	arm_func_start FUN_ov1_020e2830
FUN_ov1_020e2830: ; 0x020E2830
	ldr r12, _020E2838 ; =FUN_ov1_020e283c
	bx r12
_020E2838: .word FUN_ov1_020e283c
	arm_func_end FUN_ov1_020e2830

	arm_func_start FUN_ov1_020e283c
FUN_ov1_020e283c: ; 0x020E283C
	stmfd sp!, {r4, r5, r6, lr}
	mov r6, r0
	mov r5, r1
	mov r4, #0
_020E284C:
	add r0, r6, r4, lsl #3
	ldr r0, [r0, #0x128]
	cmp r0, #0
	blt _020E286C
	bl FUN_ov16_020efa80
	cmp r0, r5
	moveq r0, r4
	ldmeqfd sp!, {r4, r5, r6, pc}
_020E286C:
	add r4, r4, #1
	cmp r4, #0x16
	blt _020E284C
	mvn r0, #0
	ldmfd sp!, {r4, r5, r6, pc}
	arm_func_end FUN_ov1_020e283c

	arm_func_start FUN_ov1_020e2880
FUN_ov1_020e2880: ; 0x020E2880
	stmfd sp!, {r4, r5, r6, lr}
	ldr r4, _020E28D0 ; =0x02099F58
	mov r6, r0
	mov r2, #0
	ldr r0, [r4]
	ldr r1, [r6, #0x124]
	sub r3, r2, #1
	bl FUN_ov16_02116b08
	ldr r0, [r4]
	ldr r1, [r6, #0x124]
	mov r2, #2
	bl FUN_ov16_02116d30
	mov r5, #1
	ldr r0, [r4]
	ldr r1, [r6, #0x124]
	mov r3, r5
	mov r2, #0x3100
	bl FUN_ov16_02116cb4
	mov r0, r5
	ldmfd sp!, {r4, r5, r6, pc}
_020E28D0: .word 0x02099F58
	arm_func_end FUN_ov1_020e2880

	arm_func_start FUN_ov1_020e28d4
FUN_ov1_020e28d4: ; 0x020E28D4
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, lr}
	sub sp, sp, #4
	mov r9, #0
	mov r10, r0
	mov r0, r9
	bl FUN_ov16_020efa80
	mov r0, r10
	bl FUN_ov1_020e36a8
	ldr r4, _020E2A78 ; =0x02099F38
	ldr r2, [r10, #0x70]
	ldr r0, [r4]
	ldr r1, [r10, #0xd8]
	and r2, r2, #0xff
	bl FUN_ov16_02112950
	mov r5, #2
	ldr r0, [r4]
	ldr r1, [r10, #0xd8]
	mov r2, r5
	bl FUN_ov16_02113390
	ldr r0, [r4]
	ldr r1, [r10, #0xdc]
	mov r2, r5
	bl FUN_ov16_02113390
	mov r7, #8
	mov r6, #0x20
	mov r5, r9
	b _020E29D0
_020E2940:
	add r0, r10, r9, lsl #3
	ldr r0, [r0, #0x128]
	cmp r0, #0
	blt _020E29CC
	bl FUN_ov16_020efa80
	movs r8, r0
	beq _020E29CC
	str r7, [sp]
	ldr r0, [r4]
	ldr r1, [r10, #0xd8]
	mov r3, r6
	add r2, r9, #1
	bl FUN_ov16_02113d08
	mov r0, r9, lsl #0x13
	mov r0, r0, asr #0x10
	str r0, [sp]
	ldr r0, [r4]
	ldr r1, [r10, #0xd8]
	mov r3, r5
	add r2, r9, #1
	bl FUN_ov16_02113d88
	ldr r3, [r10, #0x74]
	ldr r0, [r4]
	ldr r1, [r10, #0xdc]
	add r2, r9, #1
	and r3, r3, #0xff
	bl FUN_ov16_021137dc
	mov r0, r8
	bl FUN_0206cd88
	str r5, [sp]
	sub r3, r0, #1
	ldr r0, [r4]
	ldr r1, [r10, #0xdc]
	add r2, r9, #1
	bl FUN_ov16_0211401c
_020E29CC:
	add r9, r9, #1
_020E29D0:
	cmp r9, #0x16
	blt _020E2940
	ldr r4, _020E2A78 ; =0x02099F38
	ldr r2, [r10, #0x78]
	ldr r0, [r4]
	ldr r1, [r10, #0xe0]
	and r2, r2, #0xff
	bl FUN_ov16_02112950
	mov r5, #0
	ldr r0, [r4]
	ldr r1, [r10, #0xe0]
	mov r2, r5
	mov r3, r5
	bl FUN_ov16_0211346c
	ldr r0, [r4]
	ldr r1, [r10, #0xe0]
	mov r2, #2
	bl FUN_ov16_02113390
	ldr r0, [r4]
	ldr r1, [r10, #0x108]
	ldr r2, [r10, #0x9c]
	and r2, r2, #0xff
	bl FUN_ov16_02112950
	ldr r0, [r4]
	ldr r1, [r10, #0x108]
	mov r2, r5
	mov r3, r5
	bl FUN_ov16_0211346c
	ldr r0, [r4]
	ldr r1, [r10, #0x10c]
	ldr r2, [r10, #0x9c]
	and r2, r2, #0xff
	bl FUN_ov16_02112950
	ldr r0, [r4]
	ldr r1, [r10, #0x10c]
	mov r3, r5
	mov r4, #1
	mov r2, r4
	bl FUN_ov16_0211346c
	mov r0, r4
	add sp, sp, #4
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, pc}
_020E2A78: .word 0x02099F38
	arm_func_end FUN_ov1_020e28d4

	arm_func_start FUN_ov1_020e2a7c
FUN_ov1_020e2a7c: ; 0x020E2A7C
	stmfd sp!, {r3, r4, r5, r6, r7, r8, lr}
	sub sp, sp, #4
	ldr r6, _020E2BF8 ; =0x02099F38
	mov r5, r0
	mov r7, #2
	ldr r0, [r6]
	ldr r1, [r5, #0xe8]
	mov r2, r7
	bl FUN_ov16_02113390
	ldr r2, [r5, #0x7c]
	ldr r0, [r6]
	ldr r1, [r5, #0xe8]
	and r2, r2, #0xff
	bl FUN_ov16_02112950
	mov r4, #0
	str r4, [sp]
	ldr r0, [r6]
	ldr r1, [r5, #0xe8]
	mov r2, #1
	mov r3, #0xb
	bl FUN_ov16_0211401c
	str r4, [sp]
	ldr r0, [r6]
	ldr r1, [r5, #0xe8]
	mov r2, r7
	mov r3, #0xa
	bl FUN_ov16_0211401c
	str r4, [sp]
	ldr r0, [r6]
	ldr r1, [r5, #0xe8]
	mov r2, #3
	mov r3, #9
	bl FUN_ov16_0211401c
	mov r8, r4
	mov r7, #8
	b _020E2B28
_020E2B0C:
	str r8, [sp]
	ldr r0, [r6]
	ldr r1, [r5, #0xe8]
	mov r3, r7
	add r2, r4, #4
	bl FUN_ov16_0211401c
	add r4, r4, #1
_020E2B28:
	cmp r4, #4
	blt _020E2B0C
	mov r4, #1
	str r4, [sp]
	ldr r6, _020E2BF8 ; =0x02099F38
	ldr r1, [r5, #0xe8]
	ldr r0, [r6]
	mov r2, #5
	mov r3, #0x10
	bl FUN_ov16_02113ec0
	str r4, [sp]
	ldr r0, [r6]
	ldr r1, [r5, #0xe8]
	mov r2, #6
	mov r3, #0x20
	bl FUN_ov16_02113ec0
	str r4, [sp]
	ldr r0, [r6]
	ldr r1, [r5, #0xe8]
	mov r2, #7
	mov r3, #0x30
	bl FUN_ov16_02113ec0
	mov r2, r4
	mov r4, #0x3e8
	ldr r0, [r6]
	ldr r1, [r5, #0xe8]
	mov r3, r4
	bl FUN_ov16_021139bc
	ldr r0, [r6]
	ldr r1, [r5, #0xe8]
	mov r2, #2
	mov r3, r4
	bl FUN_ov16_021139bc
	ldr r0, [r6]
	ldr r1, [r5, #0xe8]
	mov r3, r4
	mov r2, #3
	bl FUN_ov16_021139bc
	mov r4, #0
	mov r7, #0x3e8
	b _020E2BE4
_020E2BCC:
	ldr r0, [r6]
	ldr r1, [r5, #0xe8]
	mov r3, r7
	add r2, r4, #4
	bl FUN_ov16_021139bc
	add r4, r4, #1
_020E2BE4:
	cmp r4, #4
	blt _020E2BCC
	mov r0, #1
	add sp, sp, #4
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, pc}
_020E2BF8: .word 0x02099F38
	arm_func_end FUN_ov1_020e2a7c

	arm_func_start FUN_ov1_020e2bfc
FUN_ov1_020e2bfc: ; 0x020E2BFC
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, lr}
	mov r10, r0
	ldr r4, _020E2DB8 ; =0x02099F38
	ldr r3, [r10, #0x80]
	mov r8, #1
	ldr r0, [r4]
	ldr r1, [r10, #0xe4]
	mov r2, r8
	and r3, r3, #0xff
	bl FUN_ov16_021137dc
	ldr r3, [r10, #0x80]
	mov r7, #2
	ldr r0, [r4]
	ldr r1, [r10, #0xe4]
	mov r2, r7
	and r3, r3, #0xff
	bl FUN_ov16_021137dc
	ldr r1, [r10, #0x84]
	ldr r0, [r4]
	and r3, r1, #0xff
	ldr r1, [r10, #0xe4]
	mov r11, #3
	mov r2, r11
	bl FUN_ov16_021137dc
	ldr r0, [r4]
	ldr r1, [r10, #0xe4]
	mov r6, #4
	mov r2, r6
	ldr r3, [r10, #0x84]
	and r3, r3, #0xff
	bl FUN_ov16_021137dc
	ldr r0, [r4]
	ldr r1, [r10, #0xe4]
	mov r9, #0
	mov r2, r9
	mov r3, r9
	bl FUN_ov16_0211346c
	ldr r0, [r4]
	ldr r1, [r10, #0xe4]
	mov r2, #0xc8
	mov r5, #0x64
	mov r3, r5
	bl FUN_ov16_02113020
	str r8, [sp]
	ldr r0, [r4]
	ldr r1, [r10, #0xe4]
	mov r2, r8
	add r3, r6, #0x3000
	bl FUN_ov16_02113ec0
	str r8, [sp]
	ldr r0, [r4]
	ldr r1, [r10, #0xe4]
	mov r2, r7
	add r3, r6, #0x3000
	bl FUN_ov16_02113ec0
	mov r2, r11
	str r8, [sp]
	ldr r0, [r4]
	ldr r1, [r10, #0xe4]
	add r3, r5, #0xfa0
	bl FUN_ov16_02113ec0
	add r3, r5, #0xfa0
	str r8, [sp]
	ldr r0, [r4]
	ldr r1, [r10, #0xe4]
	mov r2, r6
	bl FUN_ov16_02113ec0
	str r8, [sp]
	mov r5, #0x20
	ldr r0, [r4]
	ldr r1, [r10, #0xe4]
	mov r2, r7
	mov r3, r5
	bl FUN_ov16_02113ec0
	str r8, [sp]
	ldr r0, [r4]
	ldr r1, [r10, #0xe4]
	mov r2, r6
	mov r3, r5
	bl FUN_ov16_02113ec0
	ldr r6, _020E2DBC ; =0x0209A7D4
	ldr r5, _020E2DC0 ; =0x0209A7D6
	b _020E2D78
_020E2D48:
	mov r1, r9, lsr #0x1f
	rsb r0, r1, r9, lsl #31
	add r0, r1, r0, ror #31
	mov r0, r0, lsl #2
	ldrsh r3, [r6, r0]
	ldrsh r0, [r5, r0]
	add r2, r9, #1
	str r0, [sp]
	ldr r0, [r4]
	ldr r1, [r10, #0xe4]
	bl FUN_ov16_02113b78
	add r9, r9, #1
_020E2D78:
	cmp r9, #4
	blt _020E2D48
	ldr r4, _020E2DB8 ; =0x02099F38
	ldr r5, _020E2DC4 ; =0x00000F9F
	ldr r0, [r4]
	ldr r1, [r10, #0xe4]
	mov r3, r5
	mov r2, #3
	bl FUN_ov16_021139bc
	ldr r0, [r4]
	ldr r1, [r10, #0xe4]
	mov r3, r5
	mov r2, #4
	bl FUN_ov16_021139bc
	mov r0, #1
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_020E2DB8: .word 0x02099F38
_020E2DBC: .word 0x0209A7D4
_020E2DC0: .word 0x0209A7D6
_020E2DC4: .word 0x00000F9F
	arm_func_end FUN_ov1_020e2bfc

	arm_func_start FUN_ov1_020e2dc8
FUN_ov1_020e2dc8: ; 0x020E2DC8
	stmfd sp!, {r3, r4, r5, r6, lr}
	sub sp, sp, #4
	mov r5, r0
	ldr r6, _020E2E64 ; =0x02099F38
	ldr r2, [r5, #0x7c]
	ldr r0, [r6]
	ldr r1, [r5, #0xec]
	and r2, r2, #0xff
	bl FUN_ov16_02112950
	mov r4, #0
	ldr r0, [r6]
	ldr r1, [r5, #0xec]
	mov r2, r4
	mov r3, r4
	bl FUN_ov16_0211346c
	ldr r6, _020E2E68 ; =0x02099F58
	b _020E2E3C
_020E2E0C:
	ldr r1, [r5, #0x40]
	add r0, r4, #2
	str r1, [sp]
	add r0, r5, r0, lsl #2
	ldr r1, [r0, #0x24]
	ldr r0, [r6]
	mov r3, r1, lsl #0x10
	ldr r1, [r5, #0x120]
	add r2, r4, #1
	mov r3, r3, lsr #0x10
	bl FUN_ov16_02117180
	add r4, r4, #1
_020E2E3C:
	cmp r4, #3
	blt _020E2E0C
	ldr r0, _020E2E68 ; =0x02099F58
	ldr r1, [r5, #0x120]
	ldr r0, [r0]
	mov r2, #2
	bl FUN_ov16_02116d30
	mov r0, #1
	add sp, sp, #4
	ldmfd sp!, {r3, r4, r5, r6, pc}
_020E2E64: .word 0x02099F38
_020E2E68: .word 0x02099F58
	arm_func_end FUN_ov1_020e2dc8

	arm_func_start FUN_ov1_020e2e6c
FUN_ov1_020e2e6c: ; 0x020E2E6C
	stmfd sp!, {r3, r4, r5, r6, lr}
	sub sp, sp, #4
	ldr r4, _020E2EBC ; =0x02099EE8
	mov r6, r0
	mov r5, #1
	ldr r0, [r4]
	ldr r1, [r6, #0x1dc]
	mov r2, r5
	bl FUN_0205f9c0
	mov r0, #0xfa0000
	rsb r0, r0, #0
	str r0, [sp]
	mov r2, #0
	ldr r0, [r4]
	ldr r1, [r6, #0x1dc]
	mov r3, r2
	bl FUN_0205fa48
	mov r0, r5
	add sp, sp, #4
	ldmfd sp!, {r3, r4, r5, r6, pc}
_020E2EBC: .word 0x02099EE8
	arm_func_end FUN_ov1_020e2e6c

	arm_func_start FUN_ov1_020e2ec0
FUN_ov1_020e2ec0: ; 0x020E2EC0
	stmfd sp!, {r3, r4, r5, lr}
	mov r5, r0
	ldr r4, _020E2F08 ; =0x02099F38
	ldr r2, [r5, #0x88]
	ldr r0, [r4]
	ldr r1, [r5, #0xf0]
	and r2, r2, #0xff
	bl FUN_ov16_02112950
	ldr r0, [r4]
	ldr r1, [r5, #0xf0]
	mov r2, #0x3e8
	bl FUN_ov16_02112b98
	ldr r0, [r4]
	ldr r1, [r5, #0xf0]
	mov r2, #2
	bl FUN_ov16_02113390
	mov r0, #1
	ldmfd sp!, {r3, r4, r5, pc}
_020E2F08: .word 0x02099F38
	arm_func_end FUN_ov1_020e2ec0

	arm_func_start FUN_ov1_020e2f0c
FUN_ov1_020e2f0c: ; 0x020E2F0C
	stmfd sp!, {r3, r4, r5, lr}
	mov r5, r0
	ldr r4, _020E2F58 ; =0x02099F38
	ldr r2, [r5, #0x7c]
	ldr r0, [r4]
	ldr r1, [r5, #0xf4]
	and r2, r2, #0xff
	bl FUN_ov16_02112950
	ldr r0, [r4]
	ldr r1, [r5, #0xf4]
	mov r2, #0x10
	mov r3, #0
	bl FUN_ov16_0211346c
	ldr r0, [r4]
	ldr r1, [r5, #0xf4]
	mov r2, #0x3e8
	bl FUN_ov16_02112b98
	mov r0, #1
	ldmfd sp!, {r3, r4, r5, pc}
_020E2F58: .word 0x02099F38
	arm_func_end FUN_ov1_020e2f0c

	arm_func_start FUN_ov1_020e2f5c
FUN_ov1_020e2f5c: ; 0x020E2F5C
	stmfd sp!, {r3, r4, r5, r6, lr}
	sub sp, sp, #4
	mov r6, r0
	ldr r4, _020E2FC8 ; =0x02099F38
	ldr r2, [r6, #0x8c]
	ldr r0, [r4]
	ldr r1, [r6, #0xf8]
	and r2, r2, #0xff
	bl FUN_ov16_02112950
	mov r3, #0
	str r3, [sp]
	mov r5, #1
	ldr r0, [r4]
	ldr r1, [r6, #0xf8]
	mov r2, r5
	bl FUN_ov16_0211401c
	ldr r0, [r4]
	ldr r1, [r6, #0xf8]
	mov r2, #0x3e8
	bl FUN_ov16_02112b98
	ldr r0, [r4]
	ldr r1, [r6, #0xf8]
	mov r2, #2
	bl FUN_ov16_02113390
	mov r0, r5
	add sp, sp, #4
	ldmfd sp!, {r3, r4, r5, r6, pc}
_020E2FC8: .word 0x02099F38
	arm_func_end FUN_ov1_020e2f5c

	arm_func_start FUN_ov1_020e2fcc
FUN_ov1_020e2fcc: ; 0x020E2FCC
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	mov r7, r0
	ldr r4, _020E3044 ; =0x02099F38
	ldr r3, [r7, #0x90]
	mov r6, #1
	ldr r0, [r4]
	ldr r1, [r7, #0xfc]
	mov r2, r6
	and r3, r3, #0xff
	bl FUN_ov16_021137dc
	ldr r0, [r4]
	ldr r1, [r7, #0xfc]
	mov r2, r6
	mov r3, #0x320
	bl FUN_ov16_021139bc
	mov r5, #0
	str r5, [sp]
	ldr r0, [r4]
	ldr r1, [r7, #0xfc]
	mov r2, r6
	mov r3, r5
	bl FUN_ov16_02113b78
	str r5, [sp]
	ldr r0, [r4]
	ldr r1, [r7, #0xfc]
	mov r3, r5
	mov r2, r6
	bl FUN_ov16_0211401c
	mov r0, r6
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_020E3044: .word 0x02099F38
	arm_func_end FUN_ov1_020e2fcc

	arm_func_start FUN_ov1_020e3048
FUN_ov1_020e3048: ; 0x020E3048
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	ldr r1, _020E30E0 ; =0x02099EF0
	mov r7, r0
	ldr r0, [r1]
	cmp r0, #0
	beq _020E3070
	bl FUN_ov132_02145ff0
	cmp r0, #0
	moveq r0, #1
	ldmeqfd sp!, {r3, r4, r5, r6, r7, pc}
_020E3070:
	ldr r4, _020E30E4 ; =0x02099F38
	ldr r3, [r7, #0x94]
	mov r6, #1
	ldr r0, [r4]
	ldr r1, [r7, #0x100]
	mov r2, r6
	and r3, r3, #0xff
	bl FUN_ov16_021137dc
	ldr r0, [r4]
	ldr r1, [r7, #0x100]
	mov r2, r6
	mov r3, #0x320
	bl FUN_ov16_021139bc
	mov r5, #0
	str r5, [sp]
	ldr r0, [r4]
	ldr r1, [r7, #0x100]
	mov r2, r6
	mov r3, r5
	bl FUN_ov16_02113b78
	str r5, [sp]
	ldr r0, [r4]
	ldr r1, [r7, #0x100]
	mov r3, r5
	mov r2, r6
	bl FUN_ov16_0211401c
	mov r0, r6
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_020E30E0: .word 0x02099EF0
_020E30E4: .word 0x02099F38
	arm_func_end FUN_ov1_020e3048

	arm_func_start FUN_ov1_020e30e8
FUN_ov1_020e30e8: ; 0x020E30E8
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	ldr r1, _020E3180 ; =0x02099EF0
	mov r7, r0
	ldr r0, [r1]
	cmp r0, #0
	beq _020E3110
	bl FUN_ov132_02145ff0
	cmp r0, #0
	moveq r0, #1
	ldmeqfd sp!, {r3, r4, r5, r6, r7, pc}
_020E3110:
	ldr r4, _020E3184 ; =0x02099F38
	ldr r3, [r7, #0x98]
	mov r6, #1
	ldr r0, [r4]
	ldr r1, [r7, #0x104]
	mov r2, r6
	and r3, r3, #0xff
	bl FUN_ov16_021137dc
	ldr r0, [r4]
	ldr r1, [r7, #0x104]
	mov r2, r6
	mov r3, #0x320
	bl FUN_ov16_021139bc
	mov r5, #0
	str r5, [sp]
	ldr r0, [r4]
	ldr r1, [r7, #0x104]
	mov r2, r6
	mov r3, r5
	bl FUN_ov16_02113b78
	str r5, [sp]
	ldr r0, [r4]
	ldr r1, [r7, #0x104]
	mov r3, r5
	mov r2, r6
	bl FUN_ov16_0211401c
	mov r0, r6
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_020E3180: .word 0x02099EF0
_020E3184: .word 0x02099F38
	arm_func_end FUN_ov1_020e30e8

	arm_func_start FUN_ov1_020e3188
FUN_ov1_020e3188: ; 0x020E3188
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, lr}
	mov r9, r0
	ldr r4, _020E3278 ; =0x02099F38
	ldr r8, [r9, #0x110]
	ldr r3, [r9, #0xa0]
	mov r7, #1
	ldr r0, [r4]
	mov r1, r8
	mov r2, r7
	and r3, r3, #0xff
	bl FUN_ov16_021137dc
	mov r6, #0
	str r6, [sp]
	ldr r0, [r4]
	mov r1, r8
	mov r2, r7
	mov r3, r6
	bl FUN_ov16_0211401c
	ldr r1, [r9, #0xa4]
	ldr r0, [r4]
	and r3, r1, #0xff
	mov r1, r8
	mov r5, #2
	mov r2, r5
	bl FUN_ov16_021137dc
	str r6, [sp]
	ldr r0, [r4]
	mov r1, r8
	mov r2, r5
	mov r3, r6
	bl FUN_ov16_02113d88
	ldr r0, [r4]
	ldr r1, [r9, #0xa4]
	bl FUN_ov16_02111438
	ldr r1, [r9, #0xa4]
	mov r9, r0
	ldr r0, [r4]
	bl FUN_ov16_02111458
	mov r1, r9, lsl #0x10
	mov r3, r1, asr #0x10
	mov r0, r0, lsl #0x10
	mov r0, r0, asr #0x10
	str r0, [sp]
	ldr r0, [r4]
	mov r1, r8
	mov r2, r5
	bl FUN_ov16_02113d08
	str r5, [sp]
	ldr r0, [r4]
	mov r1, r8
	mov r2, r5
	mov r3, r6
	bl FUN_ov16_02113b78
	ldr r0, [r4]
	mov r1, r8
	mov r2, r5
	mov r3, r6
	bl FUN_ov16_02113b00
	mov r0, r7
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
_020E3278: .word 0x02099F38
	arm_func_end FUN_ov1_020e3188

	arm_func_start FUN_ov1_020e327c
FUN_ov1_020e327c: ; 0x020E327C
	stmfd sp!, {r4, r5, r6, r7, r8, lr}
	sub sp, sp, #0x28
	ldr r3, _020E3454 ; =0x020E7C54
	add r6, sp, #0x16
	mov r4, r0
	mov r2, #4
_020E3294:
	ldrh r0, [r3, #2]
	ldrh r1, [r3], #4
	subs r2, r2, #1
	strh r0, [r6, #2]
	strh r1, [r6], #4
	bne _020E3294
	ldrh r0, [r3]
	ldr r5, _020E3458 ; =0x020E7C68
	add r3, sp, #4
	strh r0, [r6]
	mov r2, #4
_020E32C0:
	ldrh r0, [r5, #2]
	ldrh r1, [r5], #4
	subs r2, r2, #1
	strh r0, [r3, #2]
	strh r1, [r3], #4
	bne _020E32C0
	ldr r0, _020E345C ; =0x02099EF0
	ldrh r1, [r5]
	ldr r0, [r0]
	strh r1, [r3]
	cmp r0, #0
	beq _020E3304
	bl FUN_ov132_02145ff0
	cmp r0, #0
	addeq sp, sp, #0x28
	moveq r0, #1
	ldmeqfd sp!, {r4, r5, r6, r7, r8, pc}
_020E3304:
	mov r7, #1
	ldr r6, _020E3460 ; =0x000002EE
	ldr r5, _020E3464 ; =0x02099F38
	b _020E3344
_020E3314:
	ldr r3, [r4, #0xc8]
	ldr r0, [r5]
	ldr r1, [r4, #0x11c]
	mov r2, r7
	and r3, r3, #0xff
	bl FUN_ov16_021137dc
	ldr r0, [r5]
	ldr r1, [r4, #0x11c]
	mov r2, r7
	mov r3, r6
	bl FUN_ov16_021139bc
	add r7, r7, #1
_020E3344:
	cmp r7, #4
	ble _020E3314
	ldr r5, _020E3464 ; =0x02099F38
	ldr r3, [r4, #0xd0]
	mov r6, #5
	ldr r0, [r5]
	ldr r1, [r4, #0x11c]
	mov r2, r6
	and r3, r3, #0xff
	bl FUN_ov16_021137dc
	ldr r0, [r5]
	ldr r1, [r4, #0x11c]
	mov r2, r6
	mov r3, #0x320
	bl FUN_ov16_021139bc
	mov r7, #6
	ldr r6, _020E3460 ; =0x000002EE
	b _020E33BC
_020E338C:
	ldr r3, [r4, #0xcc]
	ldr r0, [r5]
	ldr r1, [r4, #0x11c]
	mov r2, r7
	and r3, r3, #0xff
	bl FUN_ov16_021137dc
	ldr r0, [r5]
	ldr r1, [r4, #0x11c]
	mov r2, r7
	mov r3, r6
	bl FUN_ov16_021139bc
	add r7, r7, #1
_020E33BC:
	cmp r7, #8
	ble _020E338C
	ldr r5, _020E3464 ; =0x02099F38
	ldr r3, [r4, #0xd4]
	mov r6, #9
	ldr r0, [r5]
	ldr r1, [r4, #0x11c]
	mov r2, r6
	and r3, r3, #0xff
	bl FUN_ov16_021137dc
	ldr r0, [r5]
	ldr r1, [r4, #0x11c]
	mov r2, r6
	mov r3, #0x320
	bl FUN_ov16_021139bc
	mov r8, #0
	ldr r0, [r5]
	ldr r1, [r4, #0x11c]
	mov r2, r8
	mov r3, r8
	bl FUN_ov16_0211346c
	add r7, sp, #4
	add r6, sp, #0x16
	b _020E3440
_020E341C:
	mov r1, r8, lsl #1
	ldrsh r0, [r7, r1]
	ldrsh r3, [r6, r1]
	add r2, r8, #1
	str r0, [sp]
	ldr r0, [r5]
	ldr r1, [r4, #0x11c]
	bl FUN_ov16_02113b78
	add r8, r8, #1
_020E3440:
	cmp r8, #9
	blt _020E341C
	mov r0, #1
	add sp, sp, #0x28
	ldmfd sp!, {r4, r5, r6, r7, r8, pc}
_020E3454: .word 0x020E7C54
_020E3458: .word 0x020E7C68
_020E345C: .word 0x02099EF0
_020E3460: .word 0x000002EE
_020E3464: .word 0x02099F38
	arm_func_end FUN_ov1_020e327c

	arm_func_start FUN_ov1_020e3468
FUN_ov1_020e3468: ; 0x020E3468
	stmfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, lr}
	sub sp, sp, #0xc
	ldr r2, _020E363C ; =0x02099EF0
	mov r7, r0
	ldr r0, [r2]
	mov r4, r1
	bl FUN_ov132_021434f8
	cmp r0, #0
	beq _020E34B0
	bl FUN_ov16_020f066c
	cmp r0, #0
	addeq sp, sp, #0xc
	ldmeqfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
	ldr r0, _020E3640 ; =0x0209AEC0
	ldrb r0, [r0, #0x64]
	cmp r0, #0
	addne sp, sp, #0xc
	ldmnefd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
_020E34B0:
	cmp r4, #0
	addeq sp, sp, #0xc
	ldmeqfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
	add r5, r7, #0x128
	mov r6, #1
	mov r9, #0
	ldr r8, _020E3644 ; =0x02099EC0
	ldr r11, _020E3648 ; =0x02099F58
	b _020E362C
_020E34D4:
	ldr r0, [r5]
	cmp r0, #0
	blt _020E3624
	bl FUN_ov16_020efa80
	movs r4, r0
	beq _020E3624
	bl FUN_0206d660
	cmp r0, #0
	beq _020E3624
	mov r0, r4
	bl FUN_0206d688
	cmp r0, #0
	beq _020E3624
	ldr r1, [r4, #0x84]
	ldr r0, [r8]
	ldrb r10, [r1, #0x1d]
	ldrb r3, [r1, #0x1b]
	mov r1, r6
	mov r2, #0
	add r10, r3, r10, lsl #3
	bl FUN_020571f8
	mov r1, r0
	ldr r0, [r11]
	mov r2, r10
	bl FUN_ov16_02116974
	movs r10, r0
	beq _020E3624
	ldr r0, [r4, #0x84]
	ldrh r0, [r0, #0x10]
	strh r0, [sp, #4]
	ldr r0, [r4, #0x84]
	ldr r0, [r0, #0xc]
	str r0, [sp, #8]
	ldr r0, [r7, #4]
	cmp r0, #0
	mov r0, r0, lsl #0xc
	beq _020E357C
	bl FUN_0201f74c
	mov r1, r0
	mov r0, #0x3f000000
	bl FUN_02020274
	b _020E3588
_020E357C:
	bl FUN_0201f74c
	mov r1, #0x3f000000
	bl FUN_020204a4
_020E3588:
	bl FUN_0201fdac
	mov r1, r10
	add r2, sp, #4
	add r3, sp, #8
	bl FUN_02053fc0
	cmp r0, #2
	ldrh r1, [sp, #4]
	ldr r0, [r4, #0x84]
	strh r1, [r0, #0x10]
	ldr r1, [sp, #8]
	ldr r0, [r4, #0x84]
	str r1, [r0, #0xc]
	bne _020E3624
	ldr r0, [r4, #0x84]
	ldrb r0, [r0, #0x1d]
	cmp r0, #4
	cmpne r0, #7
	cmpne r0, #8
	cmpne r0, #9
	cmpne r0, #5
	bne _020E35FC
	ldr r0, [r4, #0x84]
	mov r2, #0
	ldrb r3, [r0, #0x1a]
	mov r1, r4
	mov r4, r2
	mov r0, r7
	str r4, [sp]
	b _020E3620
_020E35FC:
	cmp r0, #2
	cmpne r0, #3
	bne _020E3624
	ldr r0, [r4, #0x84]
	mov r1, r4
	ldrb r3, [r0, #0x1a]
	mov r0, r7
	mov r2, #1
	str r9, [sp]
_020E3620:
	bl FUN_ov1_020e3c14
_020E3624:
	add r6, r6, #1
	add r5, r5, #8
_020E362C:
	cmp r6, #0x16
	ble _020E34D4
	add sp, sp, #0xc
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
_020E363C: .word 0x02099EF0
_020E3640: .word 0x0209AEC0
_020E3644: .word 0x02099EC0
_020E3648: .word 0x02099F58
	arm_func_end FUN_ov1_020e3468

	arm_func_start FUN_ov1_020e364c
FUN_ov1_020e364c: ; 0x020E364C
	ldr r2, [r0, #0x1ec]
	ldr r1, [r0, #0x1f0]
	add r2, r2, #1
	and r12, r2, #0xf
	add r3, r1, #1
	ldr r2, [r0, #0x1f4]
	ldr r1, [r0, #0x1f8]
	str r3, [r0, #0x1f0]
	add r1, r2, r1
	cmp r3, r1
	movge r1, #0
	strge r1, [r0, #0x1f0]
	ldr r3, [r0, #0x1fc]
	ldr r2, [r0, #0x200]
	ldr r1, [r0, #0x204]
	add r3, r3, #1
	add r1, r2, r1
	cmp r3, r1
	str r3, [r0, #0x1fc]
	movge r1, #0
	str r12, [r0, #0x1ec]
	strge r1, [r0, #0x1fc]
	bx lr
	arm_func_end FUN_ov1_020e364c

	arm_func_start FUN_ov1_020e36a8
FUN_ov1_020e36a8: ; 0x020E36A8
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, lr}
	sub sp, sp, #0x50
	str r0, [sp, #0x20]
	ldr r0, [r0, #0x70]
	cmp r0, #0
	addle sp, sp, #0x50
	ldmlefd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
	ldr r0, _020E393C ; =0x02099F38
	mov r1, #2
	ldr r0, [r0]
	mov r2, #5
	mov r3, #3
	bl FUN_02059574
	mov r10, r0
	cmp r10, #0
	addle sp, sp, #0x50
	ldmlefd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
	ldr r0, _020E393C ; =0x02099F38
	mov r7, #0
	ldr r0, [r0]
	mov r1, r10
	mov r3, r7
	mov r2, #1
	bl FUN_02059038
	ldr r0, _020E393C ; =0x02099F38
	ldr r1, [sp, #0x20]
	ldr r0, [r0]
	ldr r1, [r1, #0x70]
	bl FUN_ov16_021113cc
	mov r4, r0
	ldr r0, _020E393C ; =0x02099F38
	ldr r1, [sp, #0x20]
	ldr r0, [r0]
	ldr r1, [r1, #0x70]
	bl FUN_ov16_021113f0
	str r0, [sp, #0x2c]
	ldr r0, _020E393C ; =0x02099F38
	mov r1, r10
	ldr r0, [r0]
	add r2, sp, #0x34
	add r3, sp, #0x3c
	str r7, [sp, #0x34]
	bl FUN_0205935c
	ldr r0, _020E393C ; =0x02099F38
	str r7, [sp, #0x30]
	ldr r0, [r0]
	mov r1, r10
	add r2, sp, #0x30
	add r3, sp, #0x38
	ldr r5, [sp, #0x34]
	bl FUN_02059428
	ldr r0, [sp, #0x30]
	mov r1, r10
	str r0, [sp, #0x28]
	ldr r0, [sp, #0x20]
	str r5, [sp, #0x24]
	add r8, r0, #0x128
	ldr r0, _020E393C ; =0x02099F38
	ldr r0, [r0]
	bl FUN_ov16_02111458
	b _020E3888
_020E379C:
	cmp r7, #0xb
	mov r2, #0x80
	bge _020E37B0
	mov r0, r4
	b _020E37B8
_020E37B0:
	mov r0, #0x80
	add r0, r4, r0
_020E37B8:
	mov r1, r5
	bl MIi_CpuCopyFast
	ldr r0, [r8]
	bl FUN_ov16_020efa80
	movs r9, r0
	beq _020E3878
	add r0, r9, #0x1c
	bl _strlen
	mov r6, r0
	cmp r6, #8
	ble _020E3804
	add r0, sp, #0x40
	add r1, r9, #0x1c
	mov r6, #8
	bl FUN_02023e98
	mov r2, #0
	add r1, sp, #0x40
	mov r0, r6
	strb r2, [r1, r0]
_020E3804:
	mov r0, r6, asr #1
	rsb r0, r0, #4
	mov r6, r0, lsl #2
	ldr r0, _020E393C ; =0x02099F38
	mov r1, r10
	ldr r0, [r0]
	bl FUN_ov16_02111438
	mov r11, r0
	ldr r0, _020E393C ; =0x02099F38
	mov r1, r10
	ldr r0, [r0]
	bl FUN_ov16_02111458
	add r2, r6, #1
	stmia sp, {r0, r2}
	mov r0, #0
	str r0, [sp, #8]
	mov r0, #1
	str r0, [sp, #0xc]
	mov r0, #0
	str r0, [sp, #0x10]
	str r0, [sp, #0x14]
	str r0, [sp, #0x18]
	str r0, [sp, #0x1c]
	ldr r0, _020E3940 ; =0x02099ED0
	add r1, r9, #0x1c
	ldr r0, [r0]
	mov r3, r11
	mov r2, r5
	bl FUN_020425fc
_020E3878:
	mov r0, #0x80
	add r7, r7, #1
	add r8, r8, #8
	add r5, r5, r0
_020E3888:
	cmp r7, #0x16
	blt _020E379C
	mov r4, #0x20
	ldr r0, [sp, #0x2c]
	ldr r1, [sp, #0x28]
	mov r2, r4
	bl MIi_CpuCopyFast
	mov r1, #0x16
	mov r0, #0x80
	smulbb r1, r0, r1
	mov r0, r5
	bl DC_FlushRange
	ldr r0, [sp, #0x28]
	mov r1, r4
	bl DC_FlushRange
	ldr r0, [sp, #0x20]
	ldr r4, _020E393C ; =0x02099F38
	ldr r1, [r0, #0x70]
	ldr r0, [r4]
	bl FUN_020591e8
	ldr r0, [sp, #0x20]
	ldr r1, [r0, #0x70]
	ldr r0, [r4]
	bl FUN_02058ee0
	ldr r0, [sp, #0x20]
	mov r5, #0
	str r10, [r0, #0x70]
	ldr r3, [sp, #0x3c]
	ldr r0, [r4]
	ldr r2, [sp, #0x24]
	str r5, [sp]
	str r5, [sp, #4]
	str r5, [sp, #8]
	mov r1, r10
	bl FUN_02059288
	ldr r0, [r4]
	ldr r3, [sp, #0x38]
	ldr r2, [sp, #0x28]
	str r5, [sp]
	str r5, [sp, #4]
	mov r1, r10
	str r5, [sp, #8]
	bl FUN_020592d8
	add sp, sp, #0x50
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_020E393C: .word 0x02099F38
_020E3940: .word 0x02099ED0
	arm_func_end FUN_ov1_020e36a8

	arm_func_start FUN_ov1_020e3944
FUN_ov1_020e3944: ; 0x020E3944
	stmfd sp!, {r4, lr}
	mov r4, r0
	bl FUN_ov1_020e283c
	cmp r0, #0
	addge r0, r4, r0, lsl #3
	movge r1, #1
	strgeb r1, [r0, #0x12c]
	ldmfd sp!, {r4, pc}
	arm_func_end FUN_ov1_020e3944

	arm_func_start FUN_ov1_020e3964
FUN_ov1_020e3964: ; 0x020E3964
	stmfd sp!, {r4, lr}
	mov r4, r0
	bl FUN_ov1_020e283c
	movs r3, r0
	ldmmifd sp!, {r4, pc}
	add r1, r4, r3, lsl #3
	mov r2, #0
	ldr r0, _020E39AC ; =0x02099EC0
	strb r2, [r1, #0x12c]
	ldr r0, [r0]
	add r1, r3, #1
	bl FUN_020571e0
	ldr r2, _020E39B0 ; =0x02099F58
	mov r1, r0
	ldr r0, [r2]
	ldr r2, _020E39B4 ; =0x00007FFF
	bl FUN_ov16_02116e94
	ldmfd sp!, {r4, pc}
_020E39AC: .word 0x02099EC0
_020E39B0: .word 0x02099F58
_020E39B4: .word 0x00007FFF
	arm_func_end FUN_ov1_020e3964

	arm_func_start FUN_ov1_020e39b8
FUN_ov1_020e39b8: ; 0x020E39B8
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, lr}
	mov r5, #0
	mov r6, r0
	ldr r9, _020E3A18 ; =0x00007FFF
	mov r4, r5
	ldr r8, _020E3A1C ; =0x02099EC0
	ldr r7, _020E3A20 ; =0x02099F58
	b _020E3A0C
_020E39D8:
	add r0, r6, r5, lsl #3
	strb r4, [r0, #0x12c]
	ldr r0, [r0, #0x128]
	cmp r0, #0
	blt _020E3A08
	ldr r0, [r8]
	add r1, r5, #1
	bl FUN_020571e0
	mov r1, r0
	ldr r0, [r7]
	mov r2, r9
	bl FUN_ov16_02116e94
_020E3A08:
	add r5, r5, #1
_020E3A0C:
	cmp r5, #0x16
	blt _020E39D8
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
_020E3A18: .word 0x00007FFF
_020E3A1C: .word 0x02099EC0
_020E3A20: .word 0x02099F58
	arm_func_end FUN_ov1_020e39b8

	arm_func_start FUN_ov1_020e3a24
FUN_ov1_020e3a24: ; 0x020E3A24
	stmfd sp!, {r3, r4, r5, r6, r7, r8, lr}
	sub sp, sp, #0xc
	mov r8, r0
	mov r0, #1
	str r0, [r8, #0x1e0]
	mov r0, #0
	mov r6, r2
	mov r7, r1
	cmp r3, #0
	mov r2, #2
	str r0, [sp]
	beq _020E3A68
	ldr r0, _020E3B10 ; =0x02099F38
	ldr r1, [r8, #0xe8]
	ldr r0, [r0]
	mov r3, #0x11
	b _020E3A78
_020E3A68:
	ldr r0, _020E3B10 ; =0x02099F38
	ldr r1, [r8, #0xe8]
	ldr r0, [r0]
	mov r3, #0xa
_020E3A78:
	bl FUN_ov16_0211401c
	add r0, sp, #4
	str r0, [sp]
	ldr r4, _020E3B10 ; =0x02099F38
	mov r5, #2
	mov r12, r7, asr #0xb
	mov lr, r6, asr #0xb
	ldr r0, [r4]
	ldr r1, [r8, #0xe8]
	add r3, sp, #8
	mov r2, r5
	add r7, r7, r12, lsr #20
	add r6, r6, lr, lsr #20
	bl FUN_ov16_02114480
	mov r0, #1
	str r0, [sp]
	ldr r0, [r4]
	ldr r1, [r8, #0xe8]
	mov r2, r5
	add r3, r5, #0x1000
	bl FUN_ov16_02113ec0
	ldr r0, [sp, #4]
	mov r2, r5
	mov r0, r0, asr #1
	rsb r0, r0, r6, asr #12
	mov r0, r0, lsl #0x10
	mov r0, r0, asr #0x10
	str r0, [sp]
	ldr r1, [sp, #8]
	ldr r0, [r4]
	mov r1, r1, asr #1
	rsb r1, r1, r7, asr #12
	mov r3, r1, lsl #0x10
	ldr r1, [r8, #0xe8]
	mov r3, r3, asr #0x10
	bl FUN_ov16_02113b78
	add sp, sp, #0xc
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, pc}
_020E3B10: .word 0x02099F38
	arm_func_end FUN_ov1_020e3a24

	arm_func_start FUN_ov1_020e3b14
FUN_ov1_020e3b14: ; 0x020E3B14
	ldr r3, _020E3B38 ; =0x02099F38
	mov r1, #0
	str r1, [r0, #0x1e0]
	ldr r1, [r0, #0xe8]
	mov r2, #2
	ldr r0, [r3]
	ldr r12, _020E3B3C ; =FUN_ov16_02113f7c
	mov r3, r2
	bx r12
_020E3B38: .word 0x02099F38
_020E3B3C: .word FUN_ov16_02113f7c
	arm_func_end FUN_ov1_020e3b14

	arm_func_start FUN_ov1_020e3b40
FUN_ov1_020e3b40: ; 0x020E3B40
	str r1, [r0, #0x1e8]
	bx lr
	arm_func_end FUN_ov1_020e3b40

	arm_func_start FUN_ov1_020e3b48
FUN_ov1_020e3b48: ; 0x020E3B48
	mvn r1, #0
	str r1, [r0, #0x1e8]
	bx lr
	arm_func_end FUN_ov1_020e3b48

	arm_func_start FUN_ov1_020e3b54
FUN_ov1_020e3b54: ; 0x020E3B54
	stmfd sp!, {r3, lr}
	movs r3, r1
	ldmmifd sp!, {r3, pc}
	cmp r3, #0x16
	ldmgefd sp!, {r3, pc}
	cmp r2, #0
	beq _020E3B94
	ldr r1, [r0, #0xf0]
	mov r2, #1
	str r2, [sp]
	ldr r0, _020E3BB0 ; =0x02099F38
	add r2, r3, #1
	ldr r0, [r0]
	mov r3, #2
	bl FUN_ov16_02113ec0
	ldmfd sp!, {r3, pc}
_020E3B94:
	ldr r2, _020E3BB0 ; =0x02099F38
	ldr r1, [r0, #0xf0]
	ldr r0, [r2]
	add r2, r3, #1
	mov r3, #2
	bl FUN_ov16_02113f7c
	ldmfd sp!, {r3, pc}
_020E3BB0: .word 0x02099F38
	arm_func_end FUN_ov1_020e3b54

	arm_func_start FUN_ov1_020e3bb4
FUN_ov1_020e3bb4: ; 0x020E3BB4
	stmfd sp!, {r4, lr}
	mov r4, r1
	bl FUN_ov1_020e283c
	ldr r1, [r4, #0x84]
	mov r2, r0
	ldr r0, _020E3C0C ; =0x02099EC0
	ldrb r12, [r1, #0x1d]
	ldrb r3, [r1, #0x1b]
	add r1, r2, #1
	ldr r0, [r0]
	mov r2, #1
	add r4, r3, r12, lsl #3
	bl FUN_020571f8
	ldr r2, _020E3C10 ; =0x02099F58
	mov r1, r0
	ldr r0, [r2]
	mov r2, r4
	bl FUN_ov16_02116974
	cmp r0, #0
	moveq r0, #0
	ldrne r0, [r0, #0xc]
	ldmfd sp!, {r4, pc}
_020E3C0C: .word 0x02099EC0
_020E3C10: .word 0x02099F58
	arm_func_end FUN_ov1_020e3bb4

	arm_func_start FUN_ov1_020e3c14
FUN_ov1_020e3c14: ; 0x020E3C14
	stmfd sp!, {r4, r5, r6, lr}
	mov r5, r1
	ldr r1, [r5, #0x84]
	and lr, r3, #0xff
	strb lr, [r1, #0x1a]
	ldrb r1, [sp, #0x10]
	ldr r12, [r5, #0x84]
	mov r6, r0
	mov r4, r2
	strb lr, [r12, #0x1b]
	cmp r1, #0
	beq _020E3C54
	mov r0, r3
	bl FUN_ov16_020efd54
	ldr r1, [r5, #0x84]
	strh r0, [r1, #0x18]
_020E3C54:
	ldr r2, [r5, #0x84]
	ldrb r0, [r2, #0x1d]
	cmp r4, r0
	ldmeqfd sp!, {r4, r5, r6, pc}
	mov r0, r6
	mov r1, r5
	strb r4, [r2, #0x1d]
	bl FUN_ov1_020e3bb4
	cmp r0, #0
	mov r0, r6
	mov r1, r5
	ble _020E3CA0
	bl FUN_ov1_020e3bb4
	mov r0, r0, lsl #0xc
	bl FUN_0201f704
	mov r1, r0
	mov r0, #0x3f000000
	bl FUN_02020274
	b _020E3CB4
_020E3CA0:
	bl FUN_ov1_020e3bb4
	mov r0, r0, lsl #0xc
	bl FUN_0201f704
	mov r1, #0x3f000000
	bl FUN_020204a4
_020E3CB4:
	bl FUN_0201fdac
	ldr r2, [r5, #0x84]
	mov r1, #0
	str r0, [r2, #0xc]
	ldr r0, [r5, #0x84]
	strh r1, [r0, #0x10]
	ldmfd sp!, {r4, r5, r6, pc}
	arm_func_end FUN_ov1_020e3c14

	arm_func_start FUN_ov1_020e3cd0
FUN_ov1_020e3cd0: ; 0x020E3CD0
	stmfd sp!, {r4, r5, r6, lr}
	ldr r1, _020E3D4C ; =0x02099EF0
	mov r6, r0
	ldr r0, [r1]
	mov r1, #1
	bl FUN_ov132_02143114
	movs r4, r0
	ldmeqfd sp!, {r4, r5, r6, pc}
	ldr r3, [r4]
	ldr r2, [r4, #4]
	mov r0, r3, asr #0xb
	mov r1, r2, asr #0xb
	add r0, r3, r0, lsr #20
	add r1, r2, r1, lsr #20
	mov r5, r0, asr #0xc
	mov r2, r1, asr #0xc
	mov r0, r6
	sub r1, r5, #4
	add r2, r2, #8
	mov r3, #0
	bl FUN_ov1_020e4038
	ldr r2, [r4, #4]
	mov r0, r6
	mov r1, r2, asr #0xb
	add r1, r2, r1, lsr #20
	mov r2, r1, asr #0xc
	add r1, r5, #4
	add r2, r2, #8
	mov r3, #4
	bl FUN_ov1_020e4038
	ldmfd sp!, {r4, r5, r6, pc}
_020E3D4C: .word 0x02099EF0
	arm_func_end FUN_ov1_020e3cd0

	arm_func_start FUN_ov1_020e3d50
FUN_ov1_020e3d50: ; 0x020E3D50
	ldr r1, _020E3D6C ; =0x02099F58
	mov r2, r0
	ldr r0, [r1]
	ldr r1, [r2, #0x124]
	ldr r12, _020E3D70 ; =FUN_ov16_02116d30
	mov r2, #2
	bx r12
_020E3D6C: .word 0x02099F58
_020E3D70: .word FUN_ov16_02116d30
	arm_func_end FUN_ov1_020e3d50

	arm_func_start FUN_ov1_020e3d74
FUN_ov1_020e3d74: ; 0x020E3D74
	stmfd sp!, {r4, lr}
	mov r4, r0
	ldr r1, [r4, #8]
	cmp r1, #3
	addls pc, pc, r1, lsl #2
	b _020E3DDC
_020E3D8C: ; jump table
	b _020E3DD4 ; case 0
	b _020E3D9C ; case 1
	b _020E3DB4 ; case 2
	b _020E3DCC ; case 3
_020E3D9C:
	bl FUN_ov1_020dfcc8
	cmp r0, #0
	moveq r0, #0
	ldmeqfd sp!, {r4, pc}
	mov r0, #2
	str r0, [r4, #8]
_020E3DB4:
	mov r0, r4
	bl FUN_ov1_020dff0c
	mov r0, #3
	str r0, [r4, #8]
	mov r0, #0
	ldmfd sp!, {r4, pc}
_020E3DCC:
	mov r0, #1
	ldmfd sp!, {r4, pc}
_020E3DD4:
	mov r0, #1
	ldmfd sp!, {r4, pc}
_020E3DDC:
	mov r0, #0
	ldmfd sp!, {r4, pc}
	arm_func_end FUN_ov1_020e3d74

	arm_func_start FUN_ov1_020e3de4
FUN_ov1_020e3de4: ; 0x020E3DE4
	str r1, [r0, #0x1e4]
	bx lr
	arm_func_end FUN_ov1_020e3de4

	arm_func_start FUN_ov1_020e3dec
FUN_ov1_020e3dec: ; 0x020E3DEC
	ldr r0, [r0, #0x1e4]
	bx lr
	arm_func_end FUN_ov1_020e3dec

	arm_func_start FUN_ov1_020e3df4
FUN_ov1_020e3df4: ; 0x020E3DF4
	stmfd sp!, {r4, r5, r6, lr}
	ldr r4, _020E3E84 ; =0x02099EF0
	mov r6, #1
	ldr r0, [r4]
	mov r1, r6
	bl FUN_ov132_02143114
	mov r5, r0
	ldr r0, [r4]
	bl FUN_ov132_021434f8
	cmp r0, #0
	movne r0, #0
	ldmnefd sp!, {r4, r5, r6, pc}
	ldr r0, [r5, #0xc]
	cmp r0, #0x80000000
	movle r0, #0
	ldmlefd sp!, {r4, r5, r6, pc}
	ldrb r0, [r5, #0x24]
	cmp r0, #1
	moveq r0, #0
	ldmeqfd sp!, {r4, r5, r6, pc}
	ldrb r0, [r5, #0x25]
	cmp r0, #9
	moveq r0, #0
	ldmeqfd sp!, {r4, r5, r6, pc}
	ldrb r0, [r5, #0x29]
	tst r0, #0x40
	moveq r6, #0
	cmp r6, #0
	moveq r0, #0
	ldmeqfd sp!, {r4, r5, r6, pc}
	ldr r0, _020E3E88 ; =0x020AF81C
	bl FUN_02044600
	cmp r0, #0
	moveq r0, #1
	movne r0, #0
	ldmfd sp!, {r4, r5, r6, pc}
_020E3E84: .word 0x02099EF0
_020E3E88: .word 0x020AF81C
	arm_func_end FUN_ov1_020e3df4

	arm_func_start FUN_ov1_020e3e8c
FUN_ov1_020e3e8c: ; 0x020E3E8C
	str r1, [r0, #0x208]
	bx lr
	arm_func_end FUN_ov1_020e3e8c

	arm_func_start FUN_ov1_020e3e94
FUN_ov1_020e3e94: ; 0x020E3E94
	ldr r0, [r0, #0x208]
	bx lr
	arm_func_end FUN_ov1_020e3e94

	arm_func_start FUN_ov1_020e3e9c
FUN_ov1_020e3e9c: ; 0x020E3E9C
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, lr}
	ldr r0, _020E4030 ; =0x02099EF0
	mov r5, #1
	ldr r0, [r0]
	mov r1, r5
	mov r4, r5
	bl FUN_ov132_02143114
	ldrb r0, [r0, #0x24]
	cmp r0, #0
	movne r0, r5
	moveq r0, #0
	cmp r0, #0
	moveq r0, #0
	ldmeqfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
	ldr r0, _020E4030 ; =0x02099EF0
	ldr r0, [r0]
	bl FUN_ov126_021375d4
	cmp r0, #0
	moveq r0, #1
	ldmeqfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
	ldrsh r1, [r0, #8]
	ldr r0, _020E4034 ; =0x0209BA20
	bl FUN_0204a2c4
	cmp r0, #0
	moveq r0, #1
	ldmeqfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
	ldrb r2, [r0, #8]
	cmp r2, #4
	addls pc, pc, r2, lsl #2
	b _020E3F44
_020E3F14: ; jump table
	b _020E3F44 ; case 0
	b _020E3F28 ; case 1
	b _020E3F30 ; case 2
	b _020E3F38 ; case 3
	b _020E3F40 ; case 4
_020E3F28:
	mov r5, #2
	b _020E3F44
_020E3F30:
	mov r5, #3
	b _020E3F44
_020E3F38:
	mov r5, #4
	b _020E3F44
_020E3F40:
	mov r5, #5
_020E3F44:
	ldrb r1, [r0, #0x13]
	sub r0, r2, #1
	str r0, [sp]
	tst r1, #8
	beq _020E4028
	ldr r6, _020E4030 ; =0x02099EF0
	mov r1, r4
	ldr r0, [r6]
	bl FUN_ov126_021377f8
	ldrb r0, [r0, #0x29]
	mov r0, r0, lsl #0x18
	mov r0, r0, lsr #0x1c
	cmp r0, #5
	bne _020E4028
	ldr r0, [r6]
	mov r1, r4
	bl FUN_ov126_021377f8
	mov r6, r0
	ldrsb r0, [r6, #0x24]
	bl FUN_ov16_020efa80
	bl FUN_0206cc00
	mov r8, r0
	ldrsb r0, [r6, #0x20]
	ldrsh r5, [r6, #0x26]
	bl FUN_ov16_020efa80
	bl FUN_0206cc00
	ldr r4, _020E4034 ; =0x0209BA20
	mov r9, r0
	mov r0, r4
	ldrsh r6, [r6, #0x22]
	bl FUN_02071c18
	mov r10, r0
	mov r11, #0
	mov r7, r11
	cmp r10, #0
	ble _020E4014
_020E3FD4:
	mov r0, r4
	and r1, r7, #0xff
	bl FUN_02071bd8
	ldrsh r1, [r0]
	ldrsh r3, [r0, #2]
	ldrsh r2, [r0, #4]
	cmp r8, r1
	cmpeq r5, r3
	ldrsh r0, [r0, #6]
	cmpeq r9, r2
	cmpeq r6, r0
	moveq r11, #1
	beq _020E4014
	add r7, r7, #1
	cmp r7, r10
	blt _020E3FD4
_020E4014:
	mov r1, #0xa
	cmp r11, #1
	ldr r0, [sp]
	movne r1, #6
	add r5, r1, r0
_020E4028:
	mov r0, r5
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_020E4030: .word 0x02099EF0
_020E4034: .word 0x0209BA20
	arm_func_end FUN_ov1_020e3e9c

	arm_func_start FUN_ov1_020e4038
FUN_ov1_020e4038: ; 0x020E4038
	stmfd sp!, {r3, r4, r5, r6, lr}
	sub sp, sp, #0x14
	mov r6, r0
	mov r5, r1
	mov r4, r2
	cmp r3, #0
	mov r0, r3, lsl #0xc
	beq _020E406C
	bl FUN_0201f74c
	mov r1, r0
	mov r0, #0x3f000000
	bl FUN_02020274
	b _020E4078
_020E406C:
	bl FUN_0201f74c
	mov r1, #0x3f000000
	bl FUN_020204a4
_020E4078:
	bl FUN_0201fdac
	str r5, [sp]
	str r4, [sp, #4]
	str r0, [sp, #8]
	mov r1, #0x3100
	mov r2, #1
	mov r0, r6
	mov r3, r2
	str r1, [sp, #0xc]
	mov r12, #3
	mov r1, #0
	str r12, [sp, #0x10]
	bl FUN_ov1_020e41dc
	add sp, sp, #0x14
	ldmfd sp!, {r3, r4, r5, r6, pc}
	arm_func_end FUN_ov1_020e4038

	arm_func_start FUN_ov1_020e40b4
FUN_ov1_020e40b4: ; 0x020E40B4
	stmfd sp!, {r3, r4, r5, r6, lr}
	sub sp, sp, #0x14
	mov r4, r0
	mov r6, r1
	mov r5, r2
	cmp r3, #0
	mov r0, r3, lsl #0xc
	beq _020E40E8
	bl FUN_0201f74c
	mov r1, r0
	mov r0, #0x3f000000
	bl FUN_02020274
	b _020E40F4
_020E40E8:
	bl FUN_0201f74c
	mov r1, #0x3f000000
	bl FUN_020204a4
_020E40F4:
	bl FUN_0201fdac
	mov r1, r6, asr #0xb
	add r1, r6, r1, lsr #20
	mov r2, r5, asr #0xb
	mov r3, r1, asr #0xc
	add r2, r5, r2, lsr #20
	mov r1, #0
	str r3, [sp]
	mov r2, r2, asr #0xc
	str r2, [sp, #4]
	str r0, [sp, #8]
	mov r2, #0x3100
	mov r0, r4
	mov r3, r1
	str r2, [sp, #0xc]
	mov r4, #3
	mov r2, #1
	str r4, [sp, #0x10]
	bl FUN_ov1_020e41dc
	add sp, sp, #0x14
	ldmfd sp!, {r3, r4, r5, r6, pc}
	arm_func_end FUN_ov1_020e40b4

	arm_func_start FUN_ov1_020e4148
FUN_ov1_020e4148: ; 0x020E4148
	stmfd sp!, {r3, r4, r5, r6, lr}
	sub sp, sp, #0x14
	mov r4, r0
	mov r6, r1
	mov r5, r2
	cmp r3, #0
	mov r0, r3, lsl #0xc
	beq _020E417C
	bl FUN_0201f74c
	mov r1, r0
	mov r0, #0x3f000000
	bl FUN_02020274
	b _020E4188
_020E417C:
	bl FUN_0201f74c
	mov r1, #0x3f000000
	bl FUN_020204a4
_020E4188:
	bl FUN_0201fdac
	mov r1, r6, asr #0xb
	add r1, r6, r1, lsr #20
	mov r2, r5, asr #0xb
	mov r3, r1, asr #0xc
	add r1, r5, r2, lsr #20
	str r3, [sp]
	mov r1, r1, asr #0xc
	str r1, [sp, #4]
	str r0, [sp, #8]
	mov r1, #0x1100
	mov r0, r4
	str r1, [sp, #0xc]
	mov r4, #0x3e8
	mov r1, #1
	mov r2, #4
	mov r3, #0
	str r4, [sp, #0x10]
	bl FUN_ov1_020e41dc
	add sp, sp, #0x14
	ldmfd sp!, {r3, r4, r5, r6, pc}
	arm_func_end FUN_ov1_020e4148

	arm_func_start FUN_ov1_020e41dc
FUN_ov1_020e41dc: ; 0x020E41DC
	stmfd sp!, {r4, r5, r6, r7, r8, r9, lr}
	sub sp, sp, #0xc
	ldr r4, _020E42FC ; =0x02099F58
	mov r9, r0
	mov r5, r1
	ldr r0, [r4]
	ldr r1, [r9, #0x124]
	mov r8, r2
	mov r7, r3
	bl FUN_ov16_02117640
	mov r6, r0
	cmp r6, #0
	addle sp, sp, #0xc
	movle r0, #0
	ldmlefd sp!, {r4, r5, r6, r7, r8, r9, pc}
	add r1, r9, r5, lsl #2
	ldr r0, [r1, #0x38]
	mov r2, r6
	mov r0, r0, lsl #0x10
	mov r0, r0, lsr #0x10
	str r0, [sp]
	ldr r1, [r1, #0x24]
	ldr r0, [r4]
	mov r3, r1, lsl #0x10
	ldr r1, [r9, #0x124]
	mov r3, r3, lsr #0x10
	bl FUN_ov16_02117180
	ldr r0, [sp, #0x2c]
	ldr r1, [sp, #0x28]
	mov r0, r0, lsl #0x10
	mov r0, r0, asr #0x10
	str r0, [sp]
	mov r3, r1, lsl #0x10
	ldr r0, [r4]
	ldr r1, [r9, #0x124]
	mov r2, r6
	mov r3, r3, asr #0x10
	bl FUN_ov16_02117390
	ldr r0, [r4]
	ldr r1, [r9, #0x124]
	ldr r3, _020E4300 ; =0x0000FFFE
	mov r2, r6
	bl FUN_ov16_021172cc
	mov r5, #1
	str r5, [sp]
	ldr r0, [r4]
	ldr r1, [r9, #0x124]
	ldr r3, [sp, #0x34]
	mov r2, r6
	bl FUN_ov16_02117284
	and r0, r8, #0xff
	str r0, [sp]
	mov r0, r7, lsl #0x10
	mov r3, r0, asr #0x10
	ldr r0, [sp, #0x30]
	mov r2, r6
	stmib sp, {r0, r5}
	ldr r0, [r4]
	ldr r1, [r9, #0x124]
	bl FUN_ov16_02117414
	ldr r0, [sp, #0x38]
	cmp r0, #0
	blt _020E42F0
	mov r3, r0, lsl #0x10
	ldr r0, [r4]
	ldr r1, [r9, #0x124]
	mov r2, r6
	mov r3, r3, asr #0x10
	bl FUN_ov16_0211733c
_020E42F0:
	mov r0, #1
	add sp, sp, #0xc
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, pc}
_020E42FC: .word 0x02099F58
_020E4300: .word 0x0000FFFE
	arm_func_end FUN_ov1_020e41dc

	arm_func_start FUN_ov1_020e4304
FUN_ov1_020e4304: ; 0x020E4304
	stmfd sp!, {r3, r4, r5, lr}
	mov r5, r0
	ldr r0, _020E4324 ; =0x020A9C40
	mov r4, r1
	bl FUN_020463d0
	cmp r0, #0
	streq r4, [r5, #0x20]
	ldmfd sp!, {r3, r4, r5, pc}
_020E4324: .word 0x020A9C40
	arm_func_end FUN_ov1_020e4304

	arm_func_start FUN_ov1_020e4328
FUN_ov1_020e4328: ; 0x020E4328
	stmfd sp!, {r3, r4, r5, lr}
	mov r5, r0
	ldr r0, _020E4350 ; =0x020A9C40
	mov r4, r1
	bl FUN_020463d0
	cmp r0, #0
	ldreq r0, [r5, #0x20]
	orreq r0, r0, r4
	streq r0, [r5, #0x20]
	ldmfd sp!, {r3, r4, r5, pc}
_020E4350: .word 0x020A9C40
	arm_func_end FUN_ov1_020e4328

	arm_func_start FUN_ov1_020e4354
FUN_ov1_020e4354: ; 0x020E4354
	stmfd sp!, {r3, r4, r5, lr}
	mov r5, r0
	ldr r0, _020E4380 ; =0x020A9C40
	mov r4, r1
	bl FUN_020463d0
	cmp r0, #0
	ldreq r1, [r5, #0x20]
	mvneq r0, r4
	andeq r0, r1, r0
	streq r0, [r5, #0x20]
	ldmfd sp!, {r3, r4, r5, pc}
_020E4380: .word 0x020A9C40
	arm_func_end FUN_ov1_020e4354

	arm_func_start FUN_ov1_020e4384
FUN_ov1_020e4384: ; 0x020E4384
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	mov r2, r2, lsl #0x10
	mov r2, r2, asr #0x10
	ldr r4, _020E43DC ; =0x02099F38
	mov r7, r0
	str r2, [sp]
	mov r5, #1
	mov r12, r1, lsl #0x10
	mov r6, r3
	ldr r0, [r4]
	ldr r1, [r7, #0xfc]
	mov r2, r5
	mov r3, r12, asr #0x10
	bl FUN_ov16_02113b78
	mov r0, #0
	str r0, [sp]
	ldr r0, [r4]
	ldr r1, [r7, #0xfc]
	mov r2, r5
	mov r3, r6
	bl FUN_ov16_0211401c
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_020E43DC: .word 0x02099F38
	arm_func_end FUN_ov1_020e4384

	arm_func_start FUN_ov1_020e43e0
FUN_ov1_020e43e0: ; 0x020E43E0
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	mov r2, r2, lsl #0x10
	mov r2, r2, asr #0x10
	ldr r4, _020E4438 ; =0x02099F38
	mov r7, r0
	str r2, [sp]
	mov r5, #1
	mov r12, r1, lsl #0x10
	mov r6, r3
	ldr r0, [r4]
	ldr r1, [r7, #0x100]
	mov r2, r5
	mov r3, r12, asr #0x10
	bl FUN_ov16_02113b78
	mov r0, #0
	str r0, [sp]
	ldr r0, [r4]
	ldr r1, [r7, #0x100]
	mov r2, r5
	mov r3, r6
	bl FUN_ov16_0211401c
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_020E4438: .word 0x02099F38
	arm_func_end FUN_ov1_020e43e0

	arm_func_start FUN_ov1_020e443c
FUN_ov1_020e443c: ; 0x020E443C
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	mov r2, r2, lsl #0x10
	mov r2, r2, asr #0x10
	ldr r4, _020E4494 ; =0x02099F38
	mov r7, r0
	str r2, [sp]
	mov r5, #1
	mov r12, r1, lsl #0x10
	mov r6, r3
	ldr r0, [r4]
	ldr r1, [r7, #0x104]
	mov r2, r5
	mov r3, r12, asr #0x10
	bl FUN_ov16_02113b78
	mov r0, #0
	str r0, [sp]
	ldr r0, [r4]
	ldr r1, [r7, #0x104]
	mov r2, r5
	mov r3, r6
	bl FUN_ov16_0211401c
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_020E4494: .word 0x02099F38
	arm_func_end FUN_ov1_020e443c

	arm_func_start FUN_ov1_020e4498
FUN_ov1_020e4498: ; 0x020E4498
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	mov r12, #0
	str r12, [sp]
	ldr r4, _020E4508 ; =0x02099F38
	mov r7, r0
	mov r6, r1
	mov r12, r2
	mov r5, r3
	ldr r0, [r4]
	ldr r1, [r7, #0x11c]
	mov r2, r6
	mov r3, r12
	bl FUN_ov16_0211401c
	cmp r5, #0
	mov r3, #2
	beq _020E44F4
	mov r0, #1
	str r0, [sp]
	ldr r0, [r4]
	ldr r1, [r7, #0x11c]
	mov r2, r6
	bl FUN_ov16_02113ec0
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_020E44F4:
	ldr r0, [r4]
	ldr r1, [r7, #0x11c]
	mov r2, r6
	bl FUN_ov16_02113f7c
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_020E4508: .word 0x02099F38
	arm_func_end FUN_ov1_020e4498

	arm_func_start FUN_ov1_020e450c
FUN_ov1_020e450c: ; 0x020E450C
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	mov r7, r0
	cmp r1, #0
	beq _020E4570
	ldr r4, _020E45B4 ; =0x02099F38
	mov r6, #2
	mov r5, #1
	ldr r0, [r4]
	ldr r1, [r7, #0x11c]
	mov r2, r6
	mov r3, r5
	bl FUN_ov16_021142fc
	str r5, [sp]
	ldr r0, [r4]
	ldr r1, [r7, #0x11c]
	mov r3, r6
	mov r2, #5
	bl FUN_ov16_02113ec0
	str r5, [sp]
	ldr r0, [r4]
	ldr r1, [r7, #0x11c]
	mov r3, r6
	mov r2, #9
	bl FUN_ov16_02113ec0
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_020E4570:
	ldr r4, _020E45B4 ; =0x02099F38
	mov r5, #2
	ldr r0, [r4]
	ldr r1, [r7, #0x11c]
	mov r2, r5
	bl FUN_ov16_02114370
	ldr r0, [r4]
	ldr r1, [r7, #0x11c]
	mov r3, r5
	mov r2, #5
	bl FUN_ov16_02113f7c
	ldr r0, [r4]
	ldr r1, [r7, #0x11c]
	mov r3, r5
	mov r2, #9
	bl FUN_ov16_02113f7c
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_020E45B4: .word 0x02099F38
	arm_func_end FUN_ov1_020e450c

	arm_func_start FUN_ov1_020e45b8
FUN_ov1_020e45b8: ; 0x020E45B8
	cmp r1, #0
	movne r1, #0
	moveq r1, #1
	str r1, [r0, #0x20c]
	bx lr
	arm_func_end FUN_ov1_020e45b8

	arm_func_start FUN_ov1_020e45cc
FUN_ov1_020e45cc: ; 0x020E45CC
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, lr}
	ldr r7, _020E477C ; =0x02099F38
	mov r6, r0
	mov r8, #1
	ldr r0, [r7]
	mov r2, r8
	mov r1, #9
	bl FUN_ov16_02112724
	mov r5, r0
	str r5, [r6, #0x114]
	ldr r0, [r7]
	mov r1, r5
	sub r3, r8, #2
	mov r2, #0x320
	bl FUN_ov16_02112c90
	ldr r1, [r6, #0xac]
	ldr r0, [r7]
	and r3, r1, #0xff
	mov r1, r5
	mov r2, r8
	bl FUN_ov16_021137dc
	mov r4, #0
	str r4, [sp]
	ldr r0, [r7]
	mov r1, r5
	mov r2, r8
	mov r3, r4
	bl FUN_ov16_0211401c
	mov r2, r8
	str r4, [sp]
	ldr r0, [r7]
	mov r1, r5
	mov r3, r4
	bl FUN_ov16_02113b78
	ldr r0, _020E4780 ; =0x0209BA20
	bl FUN_020731a4
	cmp r0, #0
	beq _020E4694
	mov r4, #2
	ldr r0, [r7]
	mov r1, r5
	mov r2, r4
	mov r3, r4
	bl FUN_ov16_02113f7c
	ldr r0, [r7]
	mov r1, r5
	mov r3, r4
	mov r2, #3
	bl FUN_ov16_02113f7c
	b _020E4730
_020E4694:
	ldr r3, [r6, #0xb4]
	mov r8, #2
	ldr r0, [r7]
	mov r1, r5
	mov r2, r8
	and r3, r3, #0xff
	bl FUN_ov16_021137dc
	str r4, [sp]
	ldr r0, [r7]
	mov r1, r5
	mov r2, r8
	mov r3, r4
	bl FUN_ov16_0211401c
	sub r9, r8, #6
	mov r2, r8
	str r9, [sp]
	ldr r0, [r7]
	mov r1, r5
	mov r3, #8
	bl FUN_ov16_02113b78
	ldr r0, [r7]
	mov r1, r5
	mov r8, #3
	mov r2, r8
	ldr r3, [r6, #0xb8]
	and r3, r3, #0xff
	bl FUN_ov16_021137dc
	str r4, [sp]
	mov r3, r4
	ldr r0, [r7]
	mov r1, r5
	mov r2, r8
	bl FUN_ov16_0211401c
	str r9, [sp]
	ldr r0, [r7]
	mov r2, r8
	mov r1, r5
	mov r3, #0xd0
	bl FUN_ov16_02113b78
_020E4730:
	mov r7, #4
	ldr r4, _020E477C ; =0x02099F38
	b _020E4758
_020E473C:
	ldr r3, [r6, #0xa8]
	ldr r0, [r4]
	mov r1, r5
	mov r2, r7
	and r3, r3, #0xff
	bl FUN_ov16_021137dc
	add r7, r7, #1
_020E4758:
	cmp r7, #9
	ble _020E473C
	ldr r0, _020E477C ; =0x02099F38
	mov r1, r5
	ldr r0, [r0]
	mov r2, #2
	bl FUN_ov16_02114370
	mov r0, #1
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
_020E477C: .word 0x02099F38
_020E4780: .word 0x0209BA20
	arm_func_end FUN_ov1_020e45cc

	arm_func_start FUN_ov1_020e4784
FUN_ov1_020e4784: ; 0x020E4784
	stmfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, lr}
	sub sp, sp, #0x1c
	str r3, [sp, #0x10]
	str r0, [sp, #4]
	ldr r4, [r0, #0x114]
	str r1, [sp, #8]
	str r2, [sp, #0xc]
	mov r6, #4
	mov r0, #0
	b _020E48DC
_020E47AC:
	ldr r0, [sp, #0x18]
	mov r8, #0
	cmp r0, #0
	mov r0, #0
	ldreq r5, [sp, #8]
	streq r0, [sp, #0x14]
	strne r0, [sp, #0x14]
	moveq r9, #0x50
	ldrne r5, [sp, #0xc]
	ldr r0, _020E495C ; =0x000003E7
	movne r9, #0xc0
	cmp r5, r0
	movgt r5, r0
	mov r11, r6
	mov r7, r8
	b _020E487C
_020E47EC:
	ldr r0, _020E4960 ; =0x66666667
	cmp r7, #0
	smull r1, r3, r0, r5
	mov r0, r5, lsr #0x1f
	add r3, r0, r3, asr #2
	mov r0, #0xa
	smull r1, r2, r0, r3
	sub r3, r5, r1
	mov r10, #1
	beq _020E481C
	cmp r5, #0
	moveq r10, #0
_020E481C:
	mov r0, #0
	str r0, [sp]
	ldr r0, _020E4964 ; =0x02099F38
	cmp r10, #0
	ldr r0, [r0]
	mov r1, r4
	mov r2, r6
	addne r8, r8, #1
	bl FUN_ov16_0211401c
	ldr r0, _020E4964 ; =0x02099F38
	str r10, [sp]
	ldr r0, [r0]
	mov r1, r4
	mov r2, r6
	mov r3, #2
	bl FUN_ov16_02113ec0
	cmp r5, #0
	ldrgt r0, _020E4960 ; =0x66666667
	movgt r2, r5
	smullgt r1, r5, r0, r2
	movgt r0, r2, lsr #0x1f
	add r6, r6, #1
	addgt r5, r0, r5, asr #2
	add r7, r7, #1
_020E487C:
	cmp r7, #3
	blt _020E47EC
	sub r0, r8, #3
	add r9, r9, r0, lsl #3
	ldr r0, [sp, #0x14]
	mov r7, #0
	mov r0, r0, lsl #0x10
	mov r5, r0, asr #0x10
	ldr r10, _020E4964 ; =0x02099F38
	b _020E48CC
_020E48A4:
	str r5, [sp]
	mov r0, r9, lsl #0x10
	mov r3, r0, asr #0x10
	ldr r0, [r10]
	mov r1, r4
	mov r2, r11
	bl FUN_ov16_02113b78
	sub r9, r9, #0x10
	add r7, r7, #1
	add r11, r11, #1
_020E48CC:
	cmp r7, r8
	blt _020E48A4
	ldr r0, [sp, #0x18]
	add r0, r0, #1
_020E48DC:
	str r0, [sp, #0x18]
	ldr r0, [sp, #0x18]
	cmp r0, #2
	blt _020E47AC
	ldr r6, _020E4964 ; =0x02099F38
	mov r5, #1
	ldr r0, [r6]
	mov r1, r4
	mov r3, r5
	mov r2, #2
	bl FUN_ov16_021142fc
	ldr r0, [sp, #0x10]
	cmp r0, #0
	bne _020E4938
	ldr r0, [sp, #4]
	mov r1, r4
	ldr r3, [r0, #0xac]
	ldr r0, [r6]
	mov r2, r5
	and r3, r3, #0xff
	bl FUN_ov16_021137dc
	add sp, sp, #0x1c
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
_020E4938:
	ldr r0, [sp, #4]
	mov r1, r4
	ldr r3, [r0, #0xb0]
	ldr r0, [r6]
	mov r2, r5
	and r3, r3, #0xff
	bl FUN_ov16_021137dc
	add sp, sp, #0x1c
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
_020E495C: .word 0x000003E7
_020E4960: .word 0x66666667
_020E4964: .word 0x02099F38
	arm_func_end FUN_ov1_020e4784

	arm_func_start FUN_ov1_020e4968
FUN_ov1_020e4968: ; 0x020E4968
	ldr r2, _020E4980 ; =0x02099F38
	ldr r1, [r0, #0x114]
	ldr r0, [r2]
	ldr r12, _020E4984 ; =FUN_ov16_02114370
	mov r2, #2
	bx r12
_020E4980: .word 0x02099F38
_020E4984: .word FUN_ov16_02114370
	arm_func_end FUN_ov1_020e4968

	arm_func_start FUN_ov1_020e4988
FUN_ov1_020e4988: ; 0x020E4988
	stmfd sp!, {r3, r4, r5, r6, r7, r8, lr}
	sub sp, sp, #4
	mov r8, r0
	mov r7, r2
	cmp r1, #0
	mov r6, #0
	mov r5, #1
	ldr r4, _020E4BE8 ; =0x020EAB54
	beq _020E4A3C
	mvn r0, #0
	str r0, [r4, #4]
	strb r6, [r4]
	bl FUN_ov16_020f081c
	cmp r0, #0
	moveq r6, #2
	movne r5, #2
	movne r6, #1
	cmp r7, #0
	beq _020E49F8
	ldr r3, _020E4BEC ; =0x020E7C90
	ldr r2, _020E4BF0 ; =0x020EAB5C
	cmp r0, #0
	mvneq r0, #0
	ldr r1, _020E4BF4 ; =0x020E7CBF
	str r3, [r2, r5, lsl #2]
	str r1, [r2, r6, lsl #2]
	movne r0, #1
	b _020E4A18
_020E49F8:
	ldr r3, _020E4BF4 ; =0x020E7CBF
	ldr r2, _020E4BF0 ; =0x020EAB5C
	cmp r0, #0
	moveq r0, #1
	ldr r1, _020E4BEC ; =0x020E7C90
	str r3, [r2, r5, lsl #2]
	str r1, [r2, r6, lsl #2]
	mvnne r0, #0
_020E4A18:
	strb r0, [r4]
	ldr r2, _020E4BF4 ; =0x020E7CBF
	ldr r0, _020E4BF8 ; =0x0209AC44
	ldr r1, _020E4BFC ; =0x0000407E
	str r2, [r4, #8]
	bl FUN_0202cf6c
	add sp, sp, #4
	mov r0, #1
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, pc}
_020E4A3C:
	ldr r0, [r4, #8]
	cmp r0, #0
	ldreq r0, [r4, #0xc]
	cmpeq r0, #0
	ldreq r0, [r4, #0x10]
	cmpeq r0, #0
	addeq sp, sp, #4
	moveq r0, r6
	ldmeqfd sp!, {r3, r4, r5, r6, r7, r8, pc}
	ldr r0, [r4, #4]
	add r0, r0, #1
	str r0, [r4, #4]
	cmp r0, #0x24
	bne _020E4A80
	ldr r0, _020E4BF8 ; =0x0209AC44
	ldr r1, _020E4C00 ; =0x0000407F
	bl FUN_0202cf6c
_020E4A80:
	ldmib r4, {r0, r1}
	ldrsb r0, [r1, r0]
	cmp r0, #0x7f
	streq r6, [r4, #8]
	ldr r1, [r4, #8]
	cmp r1, #0
	beq _020E4AE0
	ldr r0, [r4, #4]
	cmp r0, #0x24
	blt _020E4AE0
	ldrsb r0, [r1, r0]
	ldrsb r2, [r4]
	ldr r1, _020E4C04 ; =0x02099F38
	mov r0, r0, lsl #3
	mul r0, r2, r0
	add r0, r0, #0x60
	mov r0, r0, lsl #0x10
	mov r0, r0, asr #0x10
	str r0, [sp]
	ldr r0, [r1]
	ldr r1, [r8, #0x118]
	mov r2, #1
	mov r3, #0x80
	bl FUN_ov16_02113b78
_020E4AE0:
	ldr r1, [r4, #0xc]
	ldr r0, [r4, #4]
	ldrsb r0, [r1, r0]
	cmp r0, #0x7f
	streq r6, [r4, #0xc]
	ldr r2, [r4, #0xc]
	cmp r2, #0
	beq _020E4B34
	ldr r0, [r4, #4]
	ldr r1, _020E4C04 ; =0x02099F38
	ldrsb r0, [r2, r0]
	mov r2, #2
	mov r3, #0x80
	mov r0, r0, lsl #3
	add r0, r0, #0x6c
	mov r0, r0, lsl #0x10
	mov r0, r0, asr #0x10
	str r0, [sp]
	ldr r0, [r1]
	ldr r1, [r8, #0x118]
	bl FUN_ov16_02113b78
_020E4B34:
	ldr r1, [r4, #0x10]
	ldr r0, [r4, #4]
	ldrsb r0, [r1, r0]
	cmp r0, #0x7f
	streq r6, [r4, #0x10]
	ldr r2, [r4, #0x10]
	cmp r2, #0
	beq _020E4B8C
	ldr r0, [r4, #4]
	ldr r1, _020E4C04 ; =0x02099F38
	ldrsb r0, [r2, r0]
	mov r2, #3
	mov r3, #0x80
	mov r0, r0, lsl #3
	rsb r0, r0, #0
	add r0, r0, #0x54
	mov r0, r0, lsl #0x10
	mov r0, r0, asr #0x10
	str r0, [sp]
	ldr r0, [r1]
	ldr r1, [r8, #0x118]
	bl FUN_ov16_02113b78
_020E4B8C:
	ldr r4, _020E4C04 ; =0x02099F38
	str r5, [sp]
	mov r6, #2
	ldr r0, [r4]
	ldr r1, [r8, #0x118]
	mov r2, r5
	mov r3, r6
	bl FUN_ov16_02113ec0
	str r5, [sp]
	ldr r0, [r4]
	ldr r1, [r8, #0x118]
	mov r2, r6
	mov r3, r6
	bl FUN_ov16_02113ec0
	str r5, [sp]
	ldr r0, [r4]
	ldr r1, [r8, #0x118]
	mov r3, r6
	mov r2, #3
	bl FUN_ov16_02113ec0
	mov r0, r5
	add sp, sp, #4
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, pc}
_020E4BE8: .word 0x020EAB54
_020E4BEC: .word 0x020E7C90
_020E4BF0: .word 0x020EAB5C
_020E4BF4: .word 0x020E7CBF
_020E4BF8: .word 0x0209AC44
_020E4BFC: .word 0x0000407E
_020E4C00: .word 0x0000407F
_020E4C04: .word 0x02099F38
	arm_func_end FUN_ov1_020e4988

	arm_func_start FUN_ov0_020e4c08
FUN_ov0_020e4c08: ; 0x020E4C08
	stmfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, lr}
	sub sp, sp, #0x34
	ldr r5, _020E4D54 ; =0x0209A200
	ldr r4, _020E4D58 ; =0x02099F38
	mov r10, r0
	mov r8, r2
	ldr r2, [r5, #0x1c]
	ldr r0, [r4]
	mov r7, #1
	str r7, [sp]
	mov r6, #0
	str r6, [sp, #4]
	ldr r3, _020E4D5C ; =0x020E9404
	mov r11, #5
	mov r9, r1
	str r6, [sp, #8]
	mov r1, r11
	bl FUN_02058684
	str r0, [r10, #0xbc]
	cmp r8, #0
	ldrh r2, [r9]
	add r0, sp, #0xc
	bne _020E4C74
	ldr r1, _020E4D60 ; =0x020E9414
	bl FUN_02015184
	ldr r2, [r5, #0x1c]
	b _020E4C80
_020E4C74:
	ldr r1, _020E4D64 ; =0x020E9424
	bl FUN_02015184
	ldr r2, [r5, #0x20]
_020E4C80:
	ldr r0, [r4]
	mov r1, r11
	str r7, [sp]
	str r6, [sp, #4]
	add r3, sp, #0xc
	str r6, [sp, #8]
	bl FUN_02058684
	str r0, [r10, #0xc0]
	cmp r8, #0
	bne _020E4CEC
	ldrh r2, [r9, #2]
	add r4, sp, #0xc
	ldr r1, _020E4D68 ; =0x020E9434
	mov r0, r4
	bl FUN_02015184
	ldr r1, _020E4D54 ; =0x0209A200
	ldr r0, _020E4D58 ; =0x02099F38
	ldr r2, [r1, #0x1c]
	ldr r0, [r0]
	mov r1, #1
	str r1, [sp]
	mov r1, #0
	str r1, [sp, #4]
	str r1, [sp, #8]
	mov r3, r4
	mov r1, #5
	b _020E4D2C
_020E4CEC:
	ldrh r2, [r9, #2]
	add r5, sp, #0xc
	ldr r1, _020E4D6C ; =0x020E9444
	mov r0, r5
	bl FUN_02015184
	ldr r1, _020E4D54 ; =0x0209A200
	ldr r0, _020E4D58 ; =0x02099F38
	ldr r2, [r1, #0x20]
	ldr r0, [r0]
	mov r1, #1
	str r1, [sp]
	mov r4, #0
	str r4, [sp, #4]
	mov r3, r5
	mov r1, #5
	str r4, [sp, #8]
_020E4D2C:
	bl FUN_02058684
	str r0, [r10, #0xc4]
	ldr r0, _020E4D58 ; =0x02099F38
	ldr r1, [r10, #0x118]
	ldr r0, [r0]
	mov r2, #2
	bl FUN_ov16_02113390
	mov r0, #1
	add sp, sp, #0x34
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
_020E4D54: .word 0x0209A200
_020E4D58: .word 0x02099F38
_020E4D5C: .word 0x020E9404
_020E4D60: .word 0x020E9414
_020E4D64: .word 0x020E9424
_020E4D68: .word 0x020E9434
_020E4D6C: .word 0x020E9444
	arm_func_end FUN_ov0_020e4c08

	arm_func_start FUN_ov1_020e4d70
FUN_ov1_020e4d70: ; 0x020E4D70
	stmfd sp!, {r4, r5, r6, r7, r8, r9, lr}
	sub sp, sp, #0xc
	ldr r1, _020E4DE4 ; =0x020E7C48
	mov r6, #0
	mov r7, r0
	add r4, sp, #0
	ldmia r1, {r0, r1, r2}
	stmia r4, {r0, r1, r2}
	mov r9, r6
	ldr r8, _020E4DE8 ; =0x02099F38
	b _020E4DD4
_020E4D9C:
	ldr r5, [r4, r6, lsl #2]
	add r0, r7, r5, lsl #2
	ldr r1, [r0, #0x70]
	cmp r1, #0
	ble _020E4DD0
	ldr r0, [r8]
	bl FUN_020591e8
	add r0, r7, r5, lsl #2
	ldr r1, [r0, #0x70]
	ldr r0, [r8]
	bl FUN_02058ee0
	add r0, r7, r5, lsl #2
	str r9, [r0, #0x70]
_020E4DD0:
	add r6, r6, #1
_020E4DD4:
	cmp r6, #3
	blt _020E4D9C
	add sp, sp, #0xc
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, pc}
_020E4DE4: .word 0x020E7C48
_020E4DE8: .word 0x02099F38
	arm_func_end FUN_ov1_020e4d70

	arm_func_start FUN_ov1_020e4dec
FUN_ov1_020e4dec: ; 0x020E4DEC
	ldr r1, _020E4E08 ; =0x02099F38
	mov r2, r0
	ldr r0, [r1]
	ldr r1, [r2, #0x118]
	ldr r12, _020E4E0C ; =FUN_ov16_02113390
	mov r2, #2
	bx r12
_020E4E08: .word 0x02099F38
_020E4E0C: .word FUN_ov16_02113390
	arm_func_end FUN_ov1_020e4dec

	arm_func_start FUN_ov1_020e4e10
FUN_ov1_020e4e10: ; 0x020E4E10
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, lr}
	sub sp, sp, #4
	ldr r6, _020E5008 ; =0x02099F38
	mov r8, r0
	ldr r1, [r8, #0xbc]
	ldr r0, [r6]
	mov r7, #0
	bl FUN_02058e30
	cmp r0, #0
	bne _020E4E60
	ldr r1, [r8, #0xc0]
	ldr r0, [r6]
	bl FUN_02058e30
	cmp r0, #0
	bne _020E4E60
	ldr r1, [r8, #0xc4]
	ldr r0, [r6]
	bl FUN_02058e30
	cmp r0, #0
	beq _020E4E6C
_020E4E60:
	add sp, sp, #4
	mov r0, #0
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, pc}
_020E4E6C:
	ldr r1, [r8, #0xbc]
	ldr r0, [r6]
	bl FUN_02059328
	cmp r0, #0
	beq _020E4EA8
	ldr r1, [r8, #0xc0]
	ldr r0, [r6]
	bl FUN_02059328
	cmp r0, #0
	beq _020E4EA8
	ldr r1, [r8, #0xc4]
	ldr r0, [r6]
	bl FUN_02059328
	cmp r0, #0
	bne _020E4EB4
_020E4EA8:
	add sp, sp, #4
	mov r0, #0
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, pc}
_020E4EB4:
	mov r5, r7
	mov r4, #0xa
	b _020E4F40
_020E4EC0:
	add r0, r5, #0x13
	add r0, r8, r0, lsl #2
	ldr r1, [r0, #0x70]
	ldr r0, [r6]
	mov r2, r7
	mov r3, r7
	bl FUN_02059038
	ldr r0, [r6]
	ldr r1, [r8, #0x118]
	mov r3, r4
	add r2, r5, #1
	bl FUN_ov16_02113f7c
	add r0, r5, #0x13
	add r0, r8, r0, lsl #2
	ldr r1, [r0, #0x70]
	ldr r0, [r6]
	and r3, r1, #0xff
	ldr r1, [r8, #0x118]
	add r2, r5, #1
	bl FUN_ov16_021137dc
	ldr r0, [r6]
	ldr r1, [r8, #0x118]
	add r2, r5, #1
	mov r3, r4
	bl FUN_ov16_021139bc
	str r7, [sp]
	ldr r0, [r6]
	ldr r1, [r8, #0x118]
	add r2, r5, #1
	mov r3, r7
	bl FUN_ov16_0211401c
	add r5, r5, #1
_020E4F40:
	cmp r5, #3
	blt _020E4EC0
	mov r6, #0x32
	str r6, [sp]
	ldr r9, _020E5008 ; =0x02099F38
	mov r5, #1
	ldr r0, [r9]
	ldr r1, [r8, #0x118]
	mov r2, r5
	mov r3, r6
	bl FUN_ov16_02114150
	mov r0, #0x60
	str r0, [sp]
	mov r4, #0x80
	ldr r0, [r9]
	ldr r1, [r8, #0x118]
	mov r2, r5
	mov r3, r4
	bl FUN_ov16_02113b78
	str r7, [sp]
	mov r10, #2
	ldr r0, [r9]
	ldr r1, [r8, #0x118]
	mov r2, r10
	mov r3, r6
	bl FUN_ov16_02114150
	mov r0, #0xc0
	str r0, [sp]
	ldr r0, [r9]
	ldr r1, [r8, #0x118]
	mov r2, r10
	mov r3, r4
	bl FUN_ov16_02113b78
	mov r0, #0x64
	str r0, [sp]
	mov r3, r6
	mov r6, #3
	ldr r0, [r9]
	ldr r1, [r8, #0x118]
	mov r2, r6
	bl FUN_ov16_02114150
	str r7, [sp]
	ldr r0, [r9]
	ldr r1, [r8, #0x118]
	mov r2, r6
	mov r3, r4
	bl FUN_ov16_02113b78
	mov r0, r5
	add sp, sp, #4
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, pc}
_020E5008: .word 0x02099F38
	arm_func_end FUN_ov1_020e4e10

	arm_func_start FUN_ov1_020e500c
FUN_ov1_020e500c: ; 0x020E500C
	adds r2, r0, #0xd8
	moveq r0, #0
	bxeq lr
	cmp r1, #0x12
	movhs r0, #0
	addlo r0, r0, r1, lsl #2
	ldrlo r0, [r0, #0xd8]
	bx lr
	arm_func_end FUN_ov1_020e500c

	arm_func_start FUN_ov1_020e502c
FUN_ov1_020e502c: ; 0x020E502C
	bx lr
	arm_func_end FUN_ov1_020e502c

	arm_func_start FUN_ov1_020e5030
FUN_ov1_020e5030: ; 0x020E5030
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, lr}
	ldr r6, _020E52C8 ; =0x0209AEC0
	mov r4, r0
	mov r0, r6
	mov r5, r1
	bl FUN_02046730
	mov r9, r0
	mov r0, r6
	mov r1, #6
	bl FUN_02046cb4
	add r1, r4, r9, lsl #2
	str r5, [r1, #4]
	mov r0, #0xe
	str r0, [r4, #0x14]
	mov r8, #0
	str r8, [r1, #0x18]
	str r8, [r1, #0x28]
	str r8, [r1, #0x38]
	str r8, [r4, #0x48]
	cmp r5, #0xd
	addls pc, pc, r5, lsl #2
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_020E5088: ; jump table
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc} ; case 0
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc} ; case 1
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc} ; case 2
	b _020E50C0 ; case 3
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc} ; case 4
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc} ; case 5
	b _020E5240 ; case 6
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc} ; case 7
	b _020E5240 ; case 8
	b _020E513C ; case 9
	b _020E513C ; case 10
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc} ; case 11
	b _020E51B4 ; case 12
	b _020E51B4 ; case 13
_020E50C0:
	mov r10, r8
	sub r7, r8, #1
	add r5, r4, #0x38
	mov r11, #1
	b _020E5128
_020E50D4:
	add r0, r10, r8
	bl FUN_ov16_020efa80
	movs r6, r0
	beq _020E5124
	bl FUN_0206d64c
	cmp r0, #0
	beq _020E5124
	mov r0, r6
	bl FUN_0206d660
	cmp r0, #0
	beq _020E5124
	mov r0, r6
	bl FUN_ov16_020f08bc
	cmp r0, #0
	bne _020E5124
	ldr r0, [r5, r9, lsl #2]
	cmp r7, #0
	orr r0, r0, r11, lsl r10
	str r0, [r5, r9, lsl #2]
	addlt r7, r10, r8
_020E5124:
	add r10, r10, #1
_020E5128:
	cmp r10, #0x20
	blt _020E50D4
	add r0, r4, r9, lsl #2
	str r7, [r0, #0x18]
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_020E513C:
	sub r7, r8, #1
	bl FUN_ov16_020f081c
	cmp r0, #0
	movne r8, #0x10
	mov r10, #0
	add r5, r4, #0x38
	mov r11, #1
	b _020E51A0
_020E515C:
	add r0, r10, r8
	bl FUN_ov16_020efa80
	movs r6, r0
	beq _020E519C
	bl FUN_0206d64c
	cmp r0, #0
	beq _020E519C
	mov r0, r6
	bl FUN_0206d660
	cmp r0, #0
	beq _020E519C
	ldr r0, [r5, r9, lsl #2]
	cmp r7, #0
	orr r0, r0, r11, lsl r10
	str r0, [r5, r9, lsl #2]
	addlt r7, r10, r8
_020E519C:
	add r10, r10, #1
_020E51A0:
	cmp r10, #0x10
	blt _020E515C
	add r0, r4, r9, lsl #2
	str r7, [r0, #0x18]
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_020E51B4:
	sub r7, r8, #1
	bl FUN_ov16_020f081c
	cmp r0, #0
	movne r8, #0x10
	mov r10, #0
	add r5, r4, #0x38
	mov r11, #1
	b _020E522C
_020E51D4:
	add r0, r10, r8
	bl FUN_ov16_020efa80
	movs r6, r0
	beq _020E5228
	bl FUN_0206d64c
	cmp r0, #0
	beq _020E5228
	mov r0, r6
	bl FUN_0206d660
	cmp r0, #0
	beq _020E5228
	ldr r0, _020E52CC ; =0x020A0640
	add r1, r10, r8
	ldr r0, [r0, #0x78]
	tst r0, r11, lsl r1
	beq _020E5228
	ldr r0, [r5, r9, lsl #2]
	cmp r7, #0
	orr r0, r0, r11, lsl r10
	str r0, [r5, r9, lsl #2]
	movlt r7, r1
_020E5228:
	add r10, r10, #1
_020E522C:
	cmp r10, #0x10
	blt _020E51D4
	add r0, r4, r9, lsl #2
	str r7, [r0, #0x18]
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_020E5240:
	sub r7, r8, #1
	bl FUN_ov16_020f081c
	cmp r0, #0
	movne r8, #0x10
	mov r10, #0
	add r5, r4, #0x38
	mov r11, #1
	b _020E52B4
_020E5260:
	add r0, r10, r8
	bl FUN_ov16_020efa80
	movs r6, r0
	beq _020E52B0
	bl FUN_0206d64c
	cmp r0, #0
	beq _020E52B0
	mov r0, r6
	bl FUN_0206d660
	cmp r0, #0
	beq _020E52B0
	mov r0, r6
	bl FUN_ov16_020f08bc
	cmp r0, #0
	beq _020E52B0
	ldr r0, [r5, r9, lsl #2]
	cmp r7, #0
	orr r0, r0, r11, lsl r10
	str r0, [r5, r9, lsl #2]
	addlt r7, r10, r8
_020E52B0:
	add r10, r10, #1
_020E52B4:
	cmp r10, #0x10
	blt _020E5260
	add r0, r4, r9, lsl #2
	str r7, [r0, #0x18]
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_020E52C8: .word 0x0209AEC0
_020E52CC: .word 0x020A0640
	arm_func_end FUN_ov1_020e5030

	arm_func_start FUN_ov1_020e52d0
FUN_ov1_020e52d0: ; 0x020E52D0
	stmfd sp!, {r3, r4, r5, lr}
	mov r5, r0
	mov r4, r2
	add r2, r5, r4, lsl #2
	ldr r0, _020E5324 ; =0x0209AEC0
	str r1, [r2, #4]
	bl FUN_02046730
	cmp r4, r0
	mov r2, r4
	add r3, r5, r4, lsl #2
	mvn r1, #0
	str r1, [r3, #0x18]
	str r1, [r3, #0x28]
	mov r1, #0
	subge r2, r4, #1
	add r0, r5, #0x4c
	add r0, r0, r2, lsl #5
	mov r2, #0x20
	str r1, [r3, #0x38]
	bl MI_CpuFill8
	ldmfd sp!, {r3, r4, r5, pc}
_020E5324: .word 0x0209AEC0
	arm_func_end FUN_ov1_020e52d0

	arm_func_start FUN_ov1_020e5328
FUN_ov1_020e5328: ; 0x020E5328
	stmfd sp!, {r3, r4, r5, lr}
	ldr r3, [r0]
	ldr r2, _020E5388 ; =0x0209A4E0
	mov r5, #0
	strb r3, [r2, #2]
	strb r1, [r2, #3]
	ldr lr, _020E538C ; =0x0209A538
	ldr r12, _020E5390 ; =0x0209A53C
	ldr r3, _020E5394 ; =0x0209A550
	ldr r1, _020E5398 ; =0x0209A540
	b _020E537C
_020E5354:
	add r4, r0, r5, lsl #2
	ldr r2, [r4, #4]
	strb r2, [lr, r5]
	ldr r2, [r4, #0x18]
	strb r2, [r12, r5]
	ldr r2, [r4, #0x28]
	strb r2, [r3, r5]
	ldr r2, [r4, #0x38]
	str r2, [r1, r5, lsl #2]
	add r5, r5, #1
_020E537C:
	cmp r5, #4
	blt _020E5354
	ldmfd sp!, {r3, r4, r5, pc}
_020E5388: .word 0x0209A4E0
_020E538C: .word 0x0209A538
_020E5390: .word 0x0209A53C
_020E5394: .word 0x0209A550
_020E5398: .word 0x0209A540
	arm_func_end FUN_ov1_020e5328

	arm_func_start FUN_ov1_020e539c
FUN_ov1_020e539c: ; 0x020E539C
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	mov r6, r0
	ldr r0, _020E55A4 ; =0x0209AEC0
	mov r5, r1
	bl FUN_02046730
	mov r4, r0
	add r1, r6, #0x28
	ldr r0, [r1, r4, lsl #2]
	add r12, r6, r4, lsl #2
	add r0, r0, #1
	str r0, [r1, r4, lsl #2]
	ldr r1, [r12, #4]
	ldr r2, [r12, #0x28]
	mov r0, #0x54
	mul r0, r2, r0
	cmp r1, #0xe
	addls pc, pc, r1, lsl #2
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_020E53E4: ; jump table
	ldmfd sp!, {r3, r4, r5, r6, r7, pc} ; case 0
	b _020E5420 ; case 1
	b _020E5430 ; case 2
	b _020E5448 ; case 3
	b _020E5578 ; case 4
	b _020E5594 ; case 5
	b _020E54F0 ; case 6
	b _020E5568 ; case 7
	b _020E552C ; case 8
	b _020E5470 ; case 9
	b _020E5470 ; case 10
	ldmfd sp!, {r3, r4, r5, r6, r7, pc} ; case 11
	b _020E54B0 ; case 12
	b _020E54B0 ; case 13
	ldmfd sp!, {r3, r4, r5, r6, r7, pc} ; case 14
_020E5420:
	mov r0, r6
	mov r1, r5
	bl FUN_ov1_020e5030
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_020E5430:
	cmp r0, #0xc0
	ldmlofd sp!, {r3, r4, r5, r6, r7, pc}
	mov r0, r6
	mov r1, r5
	bl FUN_ov1_020e5030
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_020E5448:
	rsb r0, r0, #0x4c
	cmp r0, #0
	ldmgtfd sp!, {r3, r4, r5, r6, r7, pc}
	mov r2, #0
	mov r0, r6
	mov r1, r5
	mov r3, #0x1f
	str r2, [r12, #0x28]
	bl FUN_ov1_020e55a8
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_020E5470:
	rsb r0, r0, #0x4c
	cmp r0, #0
	ldmgtfd sp!, {r3, r4, r5, r6, r7, pc}
	mov r4, #0
	mov r7, #0xf
	str r4, [r12, #0x28]
	bl FUN_ov16_020f081c
	cmp r0, #1
	moveq r4, #0x10
	moveq r7, #0x1f
	mov r0, r6
	mov r1, r5
	mov r2, r4
	mov r3, r7
	bl FUN_ov1_020e55a8
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_020E54B0:
	rsb r0, r0, #0x3e
	cmp r0, #0
	ldmgtfd sp!, {r3, r4, r5, r6, r7, pc}
	mov r4, #0
	mov r7, #0xf
	str r4, [r12, #0x28]
	bl FUN_ov16_020f081c
	cmp r0, #1
	moveq r4, #0x10
	moveq r7, #0x1f
	mov r0, r6
	mov r1, r5
	mov r2, r4
	mov r3, r7
	bl FUN_ov1_020e55a8
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_020E54F0:
	rsb r0, r0, #0x1b4
	cmp r0, #0
	ldmgtfd sp!, {r3, r4, r5, r6, r7, pc}
	mov r4, #0
	str r4, [r12, #0x28]
	bl FUN_ov16_020f081c
	cmp r0, #0
	moveq r3, #0xf
	movne r4, #0x10
	movne r3, #0x1f
	mov r0, r6
	mov r1, r5
	mov r2, r4
	bl FUN_ov1_020e55a8
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_020E552C:
	rsb r0, r0, #0x4c
	cmp r0, #0
	ldmgtfd sp!, {r3, r4, r5, r6, r7, pc}
	bl FUN_ov16_020f081c
	cmp r0, #0
	moveq r3, #0xf
	add r1, r6, r4, lsl #2
	mov r2, #0
	str r2, [r1, #0x28]
	movne r2, #0x10
	movne r3, #0x1f
	mov r0, r6
	mov r1, r5
	bl FUN_ov1_020e55a8
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_020E5568:
	mov r0, r6
	mov r1, r5
	bl FUN_ov1_020e5030
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_020E5578:
	rsb r0, r0, #0x4c
	cmp r0, #0
	ldmgtfd sp!, {r3, r4, r5, r6, r7, pc}
	mov r0, r6
	mov r1, r5
	bl FUN_ov1_020e5030
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_020E5594:
	mov r0, r6
	mov r1, r5
	bl FUN_ov1_020e5030
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_020E55A4: .word 0x0209AEC0
	arm_func_end FUN_ov1_020e539c

	arm_func_start FUN_ov1_020e55a8
FUN_ov1_020e55a8: ; 0x020E55A8
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	mov r7, r0
	ldr r0, _020E5630 ; =0x0209AEC0
	mov r6, r1
	mov r5, r2
	mov r4, r3
	bl FUN_02046730
	add r1, r7, r0, lsl #2
	mov r2, #0
	str r2, [r1, #0x28]
	ldr r3, [r7, #0x48]
	ldr r2, [r1, #0x38]
	eors r12, r3, r2
	bne _020E55F0
	mov r0, r7
	mov r1, r6
	bl FUN_ov1_020e5030
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_020E55F0:
	ldr lr, [r1, #0x18]
	cmp lr, r4
	ldmgefd sp!, {r3, r4, r5, r6, r7, pc}
	add r6, r7, #0x18
	mov r3, #1
_020E5604:
	ldr r2, [r6, r0, lsl #2]
	add r2, r2, #1
	str r2, [r6, r0, lsl #2]
	ldr r2, [r1, #0x18]
	cmp r2, r4
	strgt lr, [r1, #0x18]
	ldmgtfd sp!, {r3, r4, r5, r6, r7, pc}
	sub r2, r2, r5
	tst r12, r3, lsl r2
	beq _020E5604
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_020E5630: .word 0x0209AEC0
	arm_func_end FUN_ov1_020e55a8

	arm_func_start FUN_ov1_020e5634
FUN_ov1_020e5634: ; 0x020E5634
	stmfd sp!, {r4, r5, r6, lr}
	ldr r2, _020E5704 ; =0x0209AEC0
	mov r5, r1
	cmp r0, #0
	ldrb r4, [r2, #0x64]
	beq _020E567C
	b _020E5654
_020E5650:
	add r5, r5, #4
_020E5654:
	ldr r1, [r5]
	cmp r1, r0
	beq _020E5668
	cmp r1, #0xe
	bne _020E5650
_020E5668:
	ldr r0, [r5]
	cmp r0, #0xe
	bne _020E5680
	mov r0, #0xe
	ldmfd sp!, {r4, r5, r6, pc}
_020E567C:
	sub r5, r5, #4
_020E5680:
	ldr r6, _020E5708 ; =0x020A0640
_020E5684:
	ldr r0, [r5, #4]!
	cmp r0, #0xc
	cmpne r0, #0xd
	bne _020E56A0
	ldr r0, [r6, #0x78]
	cmp r0, #0
	beq _020E56F0
_020E56A0:
	bl FUN_ov16_020f0944 ; may be ov17
	cmp r0, #0
	bne _020E56C0
	ldr r0, [r5]
	cmp r0, #9
	cmpne r0, #0xa
	cmpne r0, #0xd
	beq _020E56F0
_020E56C0:
	cmp r4, #0
	beq _020E56D4
	ldr r0, [r5]
	cmp r0, #5
	bne _020E56FC
_020E56D4:
	cmp r4, #0
	bne _020E56F0
	ldr r0, [r5]
	cmp r0, #1
	cmpne r0, #2
	cmpne r0, #3
	bne _020E56FC
_020E56F0:
	ldr r0, [r5]
	cmp r0, #0xe
	bne _020E5684
_020E56FC:
	ldr r0, [r5]
	ldmfd sp!, {r4, r5, r6, pc}
_020E5704: .word 0x0209AEC0
_020E5708: .word 0x020A0640
	arm_func_end FUN_ov1_020e5634

	arm_func_start FUN_ov1_020e570c
FUN_ov1_020e570c: ; 0x020E570C
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, lr}
	sub sp, sp, #0x10
	ldr r4, _020E5B58 ; =0x020A0640
	mov r8, r0
	ldrb r0, [r4, #0x87]
	str r1, [sp, #4]
	mov r9, #1
	cmp r0, #0
	ldreqb r0, [r4, #0x88]
	mov r1, #0
	str r2, [sp, #8]
	cmpeq r0, #0
	moveq r1, r9
	cmp r1, #0
	movne r0, #0x1b4
	strne r0, [sp, #0xc]
	moveq r0, #0x1ac
	streq r0, [sp, #0xc]
	ldrb r0, [r4, #0x87]
	mov r5, r3
	cmp r0, #0
	bne _020E5770
	ldrb r0, [r4, #0x88]
	cmp r0, #0
	beq _020E5780
_020E5770:
	ldrb r0, [r4, #0x89]
	cmp r0, #0
	movne r0, #0x1b4
	strne r0, [sp, #0xc]
_020E5780:
	ldr r0, [sp, #0xc]
	ldr r1, _020E5B5C ; =0x86186187
	add r2, r0, #0x53
	umull r0, r1, r2, r1
	sub r0, r2, r1
	add r1, r1, r0, lsr #1
	mov r1, r1, lsr #6
	mov r0, r9, lsl r1
	sub r1, r0, #1
	ldr r6, _020E5B60 ; =0x0209AEC0
	and r4, r1, #0xff
	mov r0, r6
	bl FUN_02046730
	mov r0, r6
	bl FUN_02046730
	add r2, r8, r5, lsl #2
	cmp r5, r0
	ldr r0, [r2, #0x28]
	mov r7, r5
	mov r3, r9, lsl r0
	and r9, r3, #0xff
	ldr r6, [r2, #0x18]
	ldr r0, [sp, #8]
	subge r7, r5, #1
	add r1, r8, #0x4c
	add r1, r1, r7, lsl #5
	sub r0, r6, r0
	ldrb r10, [r1, r0]
	ldr r3, _020E5B64 ; =0x020E9488
	orr r9, r10, r9
	strb r9, [r1, r0]
	ldr r3, [r3]
	ldr r2, [r2, #0x28]
	mov r1, #0x54
	mla r3, r2, r1, r3
	ldr r1, [sp, #0xc]
	mla r2, r1, r0, r3
	mov r0, r1
	mov r0, r0, lsl #4
	mla r1, r7, r0, r2
	ldr r0, [sp, #4]
	ldrb r2, [r0, #0x70]
	bl MI_CpuCopy8
	ldr r1, [sp, #8]
	add r0, r8, r7, lsl #5
	sub r1, r6, r1
	add r1, r0, r1
	ldrb r1, [r1, #0x4c]
	cmp r4, r1
	bne _020E5B4C
	add r1, r8, r5, lsl #2
	mov r6, #0
	str r6, [r1, #0x38]
	add r3, r8, #0x38
	mov r1, #1
	b _020E587C
_020E5860:
	add r2, r0, r6
	ldrb r2, [r2, #0x4c]
	teq r4, r2
	ldreq r2, [r3, r5, lsl #2]
	orreq r2, r2, r1, lsl r6
	streq r2, [r3, r5, lsl #2]
	add r6, r6, #1
_020E587C:
	cmp r6, #0x20
	blt _020E5860
	ldr r0, [sp, #4]
	add r1, r0, r5, lsl #2
	add r0, r8, r5, lsl #2
	ldr r1, [r1, #0x5c]
	ldr r0, [r0, #0x38]
	cmp r1, r0
	bne _020E5B4C
	ldr r4, _020E5B64 ; =0x020E9488
	ldr r1, _020E5B68 ; =0x000051C0
	ldr r0, [r4]
	bl DC_FlushRange
	ldr r0, [sp, #0xc]
	ldr r2, [r4]
	mov r0, r0, lsl #4
	mov r11, #0
	mla r4, r7, r0, r2
	ldr r1, _020E5B6C ; =0x020E948C
	mov r8, r11
	ldr r7, [r1]
	b _020E5B38
_020E58D4:
	ldr r0, [sp, #4]
	add r0, r0, r5, lsl #2
	ldr r1, [r0, #0x5c]
	mov r0, #1
	tst r1, r0, lsl r8
	beq _020E5B2C
	ldr r0, _020E5B58 ; =0x020A0640
	ldrb r1, [r0, #0x87]
	cmp r1, #0
	bne _020E5908
	ldrb r0, [r0, #0x88]
	cmp r0, #0
	beq _020E5A40
_020E5908:
	cmp r11, #0x10
	ldr r0, _020E5B58 ; =0x020A0640
	beq _020E5B40
	ldrb r0, [r0, #0x89]
	mov r10, #0
	cmp r0, #0
	ldr r0, _020E5B70 ; =0x00000FFF
	bne _020E59AC
	ldrh r1, [r4, #0x42]
	add r9, r4, #0x60
	ldr r6, _020E5B74 ; =0x0209BA20
	and r0, r1, r0
	strh r0, [r7]
	ldrb r0, [r9, #0x4a]
	strb r0, [r7, #2]
	ldrb r0, [r4, #0x55]
	mov r0, r0, asr #5
	strb r0, [r7, #3]
	ldrb r0, [r4, #0x52]
	strb r0, [r7, #4]
	ldrb r0, [r4, #0x5a]
	strb r0, [r7, #5]
	ldrh r0, [r4, #0xd0]
	strh r0, [r7, #6]
	ldrh r0, [r4, #0xd2]
	strh r0, [r7, #8]
	b _020E59A0
_020E5974:
	add r0, r9, r10, lsl #1
	ldrh r1, [r0, #0x38]
	add r2, r7, r10, lsl #1
	add r0, r9, r10
	strh r1, [r2, #0xa]
	ldrb r2, [r0, #0x44]
	mov r0, r6
	bl FUN_02072188
	add r1, r7, r10
	strb r0, [r1, #0x16]
	add r10, r10, #1
_020E59A0:
	cmp r10, #6
	blt _020E5974
	b _020E5A34
_020E59AC:
	ldrh r1, [r4, #0x4e]
	add r9, r4, #0x98
	and r0, r1, r0
	strh r0, [r7]
	ldrb r1, [r9, #0x4a]
	mov r0, r4
	strb r1, [r7, #2]
	bl FUN_0204fb60
	strb r0, [r7, #3]
	ldrb r1, [r4, #0x5a]
	mov r0, r4
	strb r1, [r7, #4]
	ldrb r1, [r4, #0x62]
	strb r1, [r7, #5]
	bl FUN_0206ccec
	strh r0, [r7, #6]
	mov r0, r4
	bl FUN_0206cc94
	strh r0, [r7, #8]
	ldr r6, _020E5B74 ; =0x0209BA20
	b _020E5A2C
_020E5A00:
	add r0, r9, r10, lsl #1
	ldrh r1, [r0, #0x38]
	add r2, r7, r10, lsl #1
	add r0, r9, r10
	strh r1, [r2, #0xa]
	ldrb r2, [r0, #0x44]
	mov r0, r6
	bl FUN_02072188
	add r1, r7, r10
	strb r0, [r1, #0x16]
	add r10, r10, #1
_020E5A2C:
	cmp r10, #6
	blt _020E5A00
_020E5A34:
	add r7, r7, #0x1c
	add r11, r11, #1
	b _020E5B2C
_020E5A40:
	ldr r0, [sp, #8]
	add r0, r8, r0
	bl FUN_ov16_020efa80
	movs r6, r0
	bne _020E5A78
	mov r2, #0
	ldr r1, [sp, #8]
	ldr r0, _020E5B78 ; =0x0209A11C
	str r2, [sp]
	ldr r0, [r0]
	mov r3, r2
	add r1, r8, r1
	bl FUN_0206c300
	mov r6, r0
_020E5A78:
	cmp r6, #0
	beq _020E5B2C
	mov r0, r4
	mov r1, r6
	mov r2, #0
	bl FUN_ov16_020efc70
	ldr r1, [r6, #0x84]
	cmp r1, #0
	beq _020E5AA8
	add r0, r4, #0x104
	mov r2, #0x20
	bl MI_CpuCopy8
_020E5AA8:
	ldr r1, [r6, #0x88]
	cmp r1, #0
	beq _020E5AC0
	add r0, r4, #0x124
	mov r2, #0x90
	bl MI_CpuCopy8
_020E5AC0:
	mov r0, r6
	bl FUN_0206dcdc
	cmp r0, #0
	bne _020E5AE0
	mov r0, r6
	bl FUN_0206dcd4
	add r1, r4, #0x98
	bl FUN_0206ed40
_020E5AE0:
	ldr r0, _020E5B7C ; =0x020A0660
	ldr r0, [r0, r5, lsl #2]
	bl FUN_ov16_020f0a14
	cmp r0, #0
	bne _020E5AFC
	mov r0, r6
	bl FUN_0206dbf0
_020E5AFC:
	mov r0, r6
	bl FUN_ov16_020f08bc
	cmp r0, #0
	mov r0, r6
	mov r1, #0x20
	beq _020E5B1C
	bl FUN_0206d620
	b _020E5B20
_020E5B1C:
	bl FUN_0206d634
_020E5B20:
	mov r0, r6
	mov r1, #0x98
	bl DC_FlushRange
_020E5B2C:
	ldr r0, [sp, #0xc]
	add r8, r8, #1
	add r4, r4, r0
_020E5B38:
	cmp r8, #0x20
	blt _020E58D4
_020E5B40:
	add sp, sp, #0x10
	mov r0, #1
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_020E5B4C:
	mov r0, #0
	add sp, sp, #0x10
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_020E5B58: .word 0x020A0640
_020E5B5C: .word 0x86186187
_020E5B60: .word 0x0209AEC0
_020E5B64: .word 0x020E9488
_020E5B68: .word 0x000051C0
_020E5B6C: .word 0x020E948C
_020E5B70: .word 0x00000FFF
_020E5B74: .word 0x0209BA20
_020E5B78: .word 0x0209A11C
_020E5B7C: .word 0x020A0660
	arm_func_end FUN_ov1_020e570c

	arm_func_start FUN_ov1_020e5b80
FUN_ov1_020e5b80: ; 0x020E5B80
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, lr}
	ldr r6, _020E5FC4 ; =0x0209AEC0
	mov r8, r0
	mov r0, r6
	mov r11, r1
	mov r5, r2
	mov r4, r3
	mov r9, #1
	bl FUN_02046730
	mov r0, r6
	bl FUN_02046730
	add r2, r8, r4, lsl #2
	cmp r4, r0
	mov r7, r4
	ldr r0, [r2, #0x28]
	ldr r6, [r2, #0x18]
	mov r3, r9, lsl r0
	and r9, r3, #0xff
	subge r7, r4, #1
	add r1, r8, #0x4c
	add r1, r1, r7, lsl #5
	sub r0, r6, r5
	ldrb r10, [r1, r0]
	ldr r3, _020E5FC8 ; =0x020E9488
	orr r9, r10, r9
	strb r9, [r1, r0]
	ldr r3, [r3]
	ldr r2, [r2, #0x28]
	mov r1, #0x54
	mla r3, r2, r1, r3
	mov r1, #0x4c
	mla r1, r0, r1, r3
	mov r0, #0x4c0
	mla r1, r7, r0, r1
	ldrb r2, [r11, #0x70]
	mov r0, r11
	bl MI_CpuCopy8
	add r0, r8, r7, lsl #5
	sub r1, r6, r5
	add r1, r0, r1
	ldrb r1, [r1, #0x4c]
	cmp r1, #1
	bne _020E5FBC
	add r2, r8, r4, lsl #2
	mov r1, #0
	str r1, [r2, #0x38]
	mov r2, #1
	mov r6, #0x3f000000
	add r9, r8, #0x38
	b _020E5C64
_020E5C48:
	add r3, r0, r1
	ldrb r3, [r3, #0x4c]
	teq r3, #1
	ldreq r3, [r9, r4, lsl #2]
	orreq r3, r3, r2, lsl r1
	streq r3, [r9, r4, lsl #2]
	add r1, r1, #1
_020E5C64:
	cmp r1, #0x20
	blt _020E5C48
	add r1, r11, r4, lsl #2
	add r0, r8, r4, lsl #2
	ldr r1, [r1, #0x5c]
	ldr r0, [r0, #0x38]
	cmp r1, r0
	bne _020E5FBC
	ldrb r0, [sp, #0x28]
	cmp r0, #0
	moveq r0, #1
	ldmeqfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
	ldr r8, _020E5FC8 ; =0x020E9488
	ldr r1, _020E5FCC ; =0x000051C0
	ldr r0, [r8]
	bl DC_FlushRange
	ldr r1, [r8]
	mov r0, #0x4c0
	mla r9, r7, r0, r1
	mov r8, #0
	b _020E5FAC
_020E5CB8:
	add r0, r11, r4, lsl #2
	ldr r1, [r0, #0x5c]
	mov r0, #1
	tst r1, r0, lsl r8
	beq _020E5FA4
	add r0, r8, r5
	bl FUN_ov16_020efa80
	movs r7, r0
	beq _020E5FA4
	ldrb r1, [r9]
	ldr r0, [r7, #0x88]
	mov r10, #0
	strb r1, [r0, #0x84]
	ldrb r1, [r9, #1]
	ldr r0, [r7, #0x88]
	strb r1, [r0, #0x85]
	ldrsh r1, [r9, #2]
	ldr r0, [r7, #0x88]
	strh r1, [r0, #0x86]
	b _020E5D94
_020E5D08:
	add r0, r9, r10, lsl #2
	ldrsh r0, [r0, #4]
	cmp r0, #0
	mov r0, r0, lsl #0xc
	ble _020E5D30
	bl FUN_0201f704
	mov r1, r0
	mov r0, r6
	bl FUN_02020274
	b _020E5D3C
_020E5D30:
	bl FUN_0201f704
	mov r1, r6
	bl FUN_020204a4
_020E5D3C:
	bl FUN_0201fdac
	ldr r2, [r7, #0x88]
	add r1, r9, r10, lsl #2
	add r2, r2, r10, lsl #3
	str r0, [r2, #0x34]
	ldrsh r0, [r1, #6]
	cmp r0, #0
	mov r0, r0, lsl #0xc
	ble _020E5D74
	bl FUN_0201f704
	mov r1, r0
	mov r0, r6
	bl FUN_02020274
	b _020E5D80
_020E5D74:
	bl FUN_0201f704
	mov r1, r6
	bl FUN_020204a4
_020E5D80:
	bl FUN_0201fdac
	ldr r1, [r7, #0x88]
	add r1, r1, r10, lsl #3
	str r0, [r1, #0x38]
	add r10, r10, #1
_020E5D94:
	cmp r10, #0xa
	blt _020E5D08
	ldrh r1, [r9, #0x34]
	add r0, r9, #0x2c
	strh r1, [r7, #0x8e]
	bl FUN_ov1_020cb138
	cmp r0, #0
	add r0, r9, #0x2c
	ble _020E5DD4
	bl FUN_ov1_020cb138
	mov r0, r0, lsl #0xc
	bl FUN_0201f704
	mov r1, r0
	mov r0, #0x3f000000
	bl FUN_02020274
	b _020E5DE8
_020E5DD4:
	bl FUN_ov1_020cb138
	mov r0, r0, lsl #0xc
	bl FUN_0201f704
	mov r1, #0x3f000000
	bl FUN_020204a4
_020E5DE8:
	bl FUN_0201fdac
	ldr r1, [r7, #0x84]
	str r0, [r1]
	add r0, r9, #0x2c
	bl FUN_ov1_020cb144
	cmp r0, #0
	add r0, r9, #0x2c
	ble _020E5E24
	bl FUN_ov1_020cb144
	mov r0, r0, lsl #0xc
	bl FUN_0201f704
	mov r1, r0
	mov r0, #0x3f000000
	bl FUN_02020274
	b _020E5E38
_020E5E24:
	bl FUN_ov1_020cb144
	mov r0, r0, lsl #0xc
	bl FUN_0201f704
	mov r1, #0x3f000000
	bl FUN_020204a4
_020E5E38:
	bl FUN_0201fdac
	ldr r1, [r7, #0x84]
	str r0, [r1, #4]
	ldrh r2, [r9, #0x36]
	ldr r1, [r7, #0x84]
	mov r0, r7
	strh r2, [r1, #0x16]
	bl FUN_0206dcd4
	ldrh r1, [r9, #0x38]
	bl FUN_0206e91c
	mov r0, r4
	bl FUN_ov16_020f085c
	bl FUN_ov16_020f0a14
	cmp r0, #0
	bne _020E5E7C
	ldr r0, [r7, #0x84]
	bl FUN_ov16_020f0298
_020E5E7C:
	add r0, r9, #0x2c
	bl FUN_ov1_020cb158
	ldr r1, [r7, #0x84]
	strb r0, [r1, #0x1d]
	mov r0, r4
	bl FUN_ov16_020f085c
	bl FUN_ov16_020f0a14
	cmp r0, #0
	bne _020E5EE0
	mov r10, #0
	b _020E5EBC
_020E5EA8:
	ldr r0, [r7, #0x88]
	add r0, r0, #0x34
	add r0, r0, r10, lsl #3
	bl FUN_ov16_020f0298
	add r10, r10, #1
_020E5EBC:
	cmp r10, #0xa
	blt _020E5EA8
	add r0, r9, #0x2c
	bl FUN_ov1_020cb168
	add r1, r0, #4
	ldr r0, [r7, #0x84]
	and r1, r1, #7
	strb r1, [r0, #0x1b]
	b _020E5EF0
_020E5EE0:
	add r0, r9, #0x2c
	bl FUN_ov1_020cb168
	ldr r1, [r7, #0x84]
	strb r0, [r1, #0x1b]
_020E5EF0:
	add r0, r9, #0x2c
	bl FUN_ov1_020cb178
	and r2, r0, #0xff
	ldr r1, [r7, #0x84]
	mov r10, #7
	strh r2, [r1, #0x10]
	add r0, r9, #0x3c
	mov r2, r10
	add r1, r7, #0x74
	bl MI_CpuCopy8
	mov r2, r10
	add r0, r9, #0x43
	add r1, r7, #0x7b
	bl MI_CpuCopy8
	ldrb r1, [r9, #0x3a]
	mov r0, r7
	bl FUN_0206d998
	mov r0, r7
	bl FUN_ov16_020f08bc
	cmp r0, #0
	mov r0, r7
	mov r1, #0x20
	beq _020E5F54
	bl FUN_0206d620
	b _020E5F58
_020E5F54:
	bl FUN_0206d634
_020E5F58:
	ldrb r0, [r9, #0x3a]
	cmp r0, #0
	ble _020E5F7C
	cmp r0, #0xb
	bgt _020E5F7C
	mov r0, r7
	mov r1, #0x18
	bl FUN_0206d620
	b _020E5F88
_020E5F7C:
	mov r0, r7
	mov r1, #8
	bl FUN_0206d634
_020E5F88:
	ldrb r1, [r9, #0x3b]
	mov r0, r7
	mov r2, #1
	bl FUN_0206d9cc
	mov r0, r7
	mov r1, #0x98
	bl DC_FlushRange
_020E5FA4:
	add r9, r9, #0x4c
	add r8, r8, #1
_020E5FAC:
	cmp r8, #0x20
	blt _020E5CB8
	mov r0, #1
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_020E5FBC:
	mov r0, #0
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_020E5FC4: .word 0x0209AEC0
_020E5FC8: .word 0x020E9488
_020E5FCC: .word 0x000051C0
	arm_func_end FUN_ov1_020e5b80

	arm_func_start FUN_ov1_020e5fd0
FUN_ov1_020e5fd0: ; 0x020E5FD0
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, lr}
	ldr r5, _020E62B4 ; =0x0209AEC0
	mov r6, r0
	mov r0, r5
	str r1, [sp]
	mov r11, r2
	mov r4, r3
	mov r8, #1
	bl FUN_02046730
	mov r0, r5
	bl FUN_02046730
	add r1, r6, r4, lsl #2
	cmp r4, r0
	mov r7, r4
	ldr r0, [r1, #0x28]
	ldr r5, [r1, #0x18]
	mov r2, r8, lsl r0
	subge r7, r4, #1
	add r3, r6, #0x4c
	add r9, r3, r7, lsl #5
	sub r0, r5, r11
	and r3, r2, #0xff
	ldrb r8, [r9, r0]
	ldr r2, _020E62B8 ; =0x020E9488
	orr r3, r8, r3
	strb r3, [r9, r0]
	ldr r3, [r2]
	ldr r2, [r1, #0x28]
	mov r1, #0x54
	mla r3, r2, r1, r3
	mov r1, #0x3e
	mla r1, r0, r1, r3
	mov r0, #0x3e0
	mla r1, r7, r0, r1
	ldr r0, [sp]
	ldrb r2, [r0, #0x70]
	bl MI_CpuCopy8
	add r0, r6, r7, lsl #5
	sub r1, r5, r11
	add r1, r0, r1
	ldrb r1, [r1, #0x4c]
	cmp r1, #1
	bne _020E62AC
	mov r1, #0
	add r2, r6, r4, lsl #2
	str r1, [r2, #0x38]
	mov r2, #1
	mov r5, r1
	add r8, r6, #0x38
	b _020E60B4
_020E6098:
	add r3, r0, r1
	ldrb r3, [r3, #0x4c]
	teq r3, #1
	ldreq r3, [r8, r4, lsl #2]
	orreq r3, r3, r2, lsl r1
	streq r3, [r8, r4, lsl #2]
	add r1, r1, #1
_020E60B4:
	cmp r1, #0x20
	blt _020E6098
	ldr r0, [sp]
	add r1, r0, r4, lsl #2
	add r0, r6, r4, lsl #2
	ldr r1, [r1, #0x5c]
	ldr r0, [r0, #0x38]
	mov r6, #1
	cmp r1, r0
	bne _020E62AC
	ldrb r0, [sp, #0x28]
	cmp r0, #0
	moveq r0, r6
	ldmeqfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
	ldr r8, _020E62B8 ; =0x020E9488
	ldr r1, _020E62BC ; =0x000051C0
	ldr r0, [r8]
	bl DC_FlushRange
	ldr r1, [r8]
	mov r0, #0x3e0
	mla r9, r7, r0, r1
	mov r8, #0
	b _020E629C
_020E6110:
	ldr r0, [sp]
	add r0, r0, r4, lsl #2
	ldr r0, [r0, #0x5c]
	tst r0, r6, lsl r8
	beq _020E6294
	add r0, r8, r11
	bl FUN_ov16_020efa80
	movs r7, r0
	beq _020E6294
	bl FUN_0206cbf8
	ldrh r1, [r9, #8]
	cmp r1, r0
	addne r9, r9, #0x3e
	bne _020E6298
	mov r0, r7
	bl FUN_0206dcd4
	ldrsb r1, [r9]
	bl FUN_0206e50c
	mov r0, r7
	bl FUN_0206dcd4
	ldrsb r1, [r9, #1]
	bl FUN_0206e574
	mov r0, r7
	bl FUN_0206dcd4
	ldrsb r1, [r9, #2]
	bl FUN_0206e5dc
	mov r0, r7
	bl FUN_0206dcd4
	ldrsb r1, [r9, #3]
	bl FUN_0206e644
	mov r0, r7
	bl FUN_0206dcd4
	ldrsb r1, [r9, #4]
	bl FUN_0206e6ac
	mov r0, r7
	bl FUN_0206dcd4
	ldrsb r1, [r9, #5]
	bl FUN_0206e714
	mov r0, r7
	bl FUN_0206dcd4
	ldrsb r1, [r9, #6]
	bl FUN_0206e77c
	mov r0, r7
	bl FUN_0206dcd4
	ldrsh r1, [r9, #0xa]
	bl FUN_0206df6c
	mov r0, r7
	bl FUN_0206dcd4
	ldrsh r1, [r9, #0xc]
	bl FUN_0206dfd4
	ldrsh r1, [r9, #0xe]
	mov r0, r7
	bl FUN_0206cc9c
	ldrsh r1, [r9, #0x10]
	mov r0, r7
	bl FUN_0206cc44
	mov r10, #0
	b _020E6254
_020E61F8:
	mov r0, r7
	bl FUN_0206dcd4
	mov r1, r10
	mov r2, r5
	add r3, r9, r10, lsl #2
	ldrh r3, [r3, #0x12]
	bl FUN_0206e03c
	mov r0, r7
	bl FUN_0206dcd4
	mov r1, r10
	mov r2, r6
	mov r3, r10, lsl #1
	add r3, r3, #1
	add r3, r9, r3, lsl #1
	ldrh r3, [r3, #0x12]
	bl FUN_0206e03c
	mov r0, r7
	bl FUN_0206dcd4
	mov r1, r10
	add r2, r9, r10, lsl #1
	ldrh r2, [r2, #0x2a]
	bl FUN_0206e354
	add r10, r10, #1
_020E6254:
	cmp r10, #6
	blt _020E61F8
	mov r10, #0
	b _020E6280
_020E6264:
	mov r0, r7
	bl FUN_0206dcd4
	add r1, r9, r10, lsl #1
	ldrh r2, [r1, #0x36]
	mov r1, r10
	bl FUN_0206def8
	add r10, r10, #1
_020E6280:
	cmp r10, #4
	blt _020E6264
	mov r0, r7
	mov r1, #0x98
	bl DC_FlushRange
_020E6294:
	add r9, r9, #0x3e
_020E6298:
	add r8, r8, #1
_020E629C:
	cmp r8, #0x20
	blt _020E6110
	mov r0, #1
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_020E62AC:
	mov r0, #0
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_020E62B4: .word 0x0209AEC0
_020E62B8: .word 0x020E9488
_020E62BC: .word 0x000051C0
	arm_func_end FUN_ov1_020e5fd0

	arm_func_start FUN_ov1_020e62c0
FUN_ov1_020e62c0: ; 0x020E62C0
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, lr}
	sub sp, sp, #8
	ldr r8, _020E64EC ; =0x0209AEC0
	mov r9, r0
	mov r0, r8
	mov r7, #1
	str r1, [sp]
	bl FUN_02046744
	mov r11, r0
	mov r5, #0
	mov r6, r7
	b _020E6344
_020E62F0:
	mov r0, r8
	bl FUN_02046730
	cmp r5, r0
	beq _020E6340
	tst r11, r6, lsl r5
	beq _020E6340
	ldrb r0, [r9, #0x3ac]
	cmp r0, #0
	beq _020E632C
	mov r0, r5
	bl FUN_ov16_020f085c
	mov r4, r0
	bl FUN_ov16_020f081c
	cmp r4, r0
	bne _020E6340
_020E632C:
	mov r0, r9
	mov r1, r5
	bl FUN_ov1_020e64f0
	cmp r0, #0
	moveq r7, #0
_020E6340:
	add r5, r5, #1
_020E6344:
	cmp r5, #4
	blt _020E62F0
	cmp r7, #0
	addne sp, sp, #8
	movne r0, #1
	ldmnefd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
	ldr r0, _020E64EC ; =0x0209AEC0
	bl FUN_02046730
	mov r6, r0
	add r0, r9, r6, lsl #2
	ldr r7, [r0, #4]
	ldr r10, [r0, #0x28]
	ldr r0, [r0, #0x18]
	mov r5, #0
	str r0, [sp, #4]
	b _020E6468
_020E6384:
	cmp r6, r5
	beq _020E6464
	mov r0, #1
	tst r11, r0, lsl r5
	beq _020E6464
	mov r0, r5
	mov r1, #0
	bl FUN_ov16_020f0634
	ldrb r1, [r9, #0x3ac]
	add r8, r0, #4
	cmp r1, #0
	beq _020E63CC
	bl FUN_ov16_020f081c
	mov r4, r0
	mov r0, r5
	bl FUN_ov16_020f085c
	cmp r4, r0
	bne _020E6464
_020E63CC:
	add r0, r8, r6
	ldrb r0, [r0, #0x54]
	cmp r7, r0
	addne sp, sp, #8
	movne r0, #0
	ldmnefd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
	cmp r7, #4
	cmpne r7, #5
	cmpne r7, #1
	cmpne r7, #2
	beq _020E6400
	cmp r7, #7
	bne _020E641C
_020E6400:
	add r0, r8, r6
	ldrb r0, [r0, #0x6c]
	cmp r10, r0
	beq _020E6464
	add sp, sp, #8
	mov r0, #0
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_020E641C:
	cmp r7, #6
	cmpne r7, #8
	cmpne r7, #3
	cmpne r7, #9
	cmpne r7, #0xa
	cmpne r7, #0xc
	beq _020E6440
	cmp r7, #0xd
	bne _020E6464
_020E6440:
	add r1, r8, r6
	ldrb r0, [r1, #0x6c]
	cmp r10, r0
	ldreqsb r1, [r1, #0x58]
	ldreq r0, [sp, #4]
	cmpeq r0, r1
	addne sp, sp, #8
	movne r0, #0
	ldmnefd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_020E6464:
	add r5, r5, #1
_020E6468:
	cmp r5, #4
	blt _020E6384
	cmp r7, #0xd
	addls pc, pc, r7, lsl #2
	b _020E64E0
_020E647C: ; jump table
	b _020E64E0 ; case 0
	b _020E64B8 ; case 1
	b _020E64B8 ; case 2
	b _020E64B4 ; case 3
	b _020E64B8 ; case 4
	b _020E64B8 ; case 5
	b _020E64B4 ; case 6
	b _020E64B8 ; case 7
	b _020E64B4 ; case 8
	b _020E64B4 ; case 9
	b _020E64B4 ; case 10
	b _020E64E0 ; case 11
	b _020E64B4 ; case 12
	b _020E64B4 ; case 13
_020E64B4:
	b _020E64C8
_020E64B8:
	add r0, r9, r6, lsl #2
	ldr r0, [r0, #0x28]
	cmp r10, r0
	bne _020E64E0
_020E64C8:
	ldr r1, [sp]
	mov r0, r7
	bl FUN_ov1_020e5634
	mov r1, r0
	mov r0, r9
	bl FUN_ov1_020e539c
_020E64E0:
	mov r0, #0
	add sp, sp, #8
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_020E64EC: .word 0x0209AEC0
	arm_func_end FUN_ov1_020e62c0

	arm_func_start FUN_ov1_020e64f0
FUN_ov1_020e64f0: ; 0x020E64F0
	stmfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, lr}
	sub sp, sp, #0x1c
	mov r8, r1
	mov r1, #0
	str r1, [sp, #8]
	mov r9, r0
	mov r0, r8
	mov r1, r1
	bl FUN_ov16_020f0634
	add r6, r0, #4
	ldr r0, _020E6D9C ; =0x0209AEC0
	bl FUN_02046730
	ldr r4, _020E6D9C ; =0x0209AEC0
	cmp r8, r0
	mov r7, r8
	mov r0, r4
	subge r7, r8, #1
	bl FUN_02046730
	add r2, r6, r8
	add r1, r9, r8, lsl #2
	ldrb r5, [r2, #0x54]
	ldr r1, [r1, #4]
	mov r10, r0
	cmp r5, r1
	ldrb r4, [r4, #0x64]
	beq _020E6568
	mov r0, r9
	mov r1, r5
	mov r2, r8
	bl FUN_ov1_020e52d0
_020E6568:
	add r0, r6, r10, lsl #2
	ldr r0, [r0, #0x5c]
	cmp r5, #0xe
	str r0, [r9, #0x48]
	addls pc, pc, r5, lsl #2
	b _020E6D90
_020E6580: ; jump table
	b _020E6D90 ; case 0
	b _020E67CC ; case 1
	b _020E68A8 ; case 2
	b _020E6A7C ; case 3
	b _020E65BC ; case 4
	b _020E674C ; case 5
	b _020E6C48 ; case 6
	b _020E6664 ; case 7
	b _020E6CE0 ; case 8
	b _020E6AD4 ; case 9
	b _020E6AD4 ; case 10
	b _020E6D90 ; case 11
	b _020E6B88 ; case 12
	b _020E6B88 ; case 13
	b _020E6D58 ; case 14
_020E65BC:
	add r0, r6, r8
	add r2, r9, r8, lsl #2
	ldrb r1, [r0, #0x6c]
	ldr r0, [r2, #0x28]
	cmp r0, r1
	beq _020E6D90
	mov r0, #0x54
	mul r4, r1, r0
	add r0, r9, #0xac
	add r0, r0, r4
	mov r5, #0x4c
	str r1, [r2, #0x28]
	mla r1, r7, r5, r0
	ldrb r2, [r6, #0x70]
	mov r0, r6
	bl MI_CpuCopy8
	ldrb r0, [r6, #0x70]
	add r0, r4, r0
	cmp r0, #0x4c
	blo _020E6D90
	add r0, r9, #0xac
	mla r0, r7, r5, r0
	mov r1, r5
	bl DC_FlushRange
	ldr r1, _020E6DA0 ; =0x020A0660
	ldr r0, _020E6DA4 ; =0x020A0670
	ldr r1, [r1, r8, lsl #2]
	ldrb r0, [r0, r1]
	cmp r8, r0
	bne _020E6D90
	ldr r0, _020E6DA8 ; =0x0209BA20
	bl FUN_0207249c
	mov r4, r0
	add r0, r9, #0xac
	mla r0, r7, r5, r0
	mov r1, r4
	mov r2, r5
	bl MI_CpuCopy8
	mov r0, r4
	mov r1, r5
	bl DC_FlushRange
	b _020E6D90
_020E6664:
	add r0, r6, r8
	add r2, r9, r8, lsl #2
	ldrb r0, [r0, #0x6c]
	ldr r1, [r2, #0x28]
	cmp r1, r0
	beq _020E6D90
	str r0, [r2, #0x28]
	add r4, sp, #0xc
	ldrb r2, [r6, #0x70]
	mov r0, r6
	mov r1, r4
	bl MI_CpuCopy8
	ldrb r1, [r6, #0x70]
	mov r0, r4
	bl DC_FlushRange
	mov r0, r8
	bl FUN_ov16_020f085c
	ldr r1, _020E6DAC ; =0x0209A2C0
	mov r4, r0
	ldr r0, [r1, #0x48]
	cmp r0, #0
	blt _020E66D8
	bl FUN_ov16_020efa80
	cmp r0, #0
	beq _020E66FC
	bl FUN_0206d554
	cmp r8, r0
	bne _020E6D90
	b _020E66FC
_020E66D8:
	ldr r0, [r1, #0x4c]
	cmp r0, #0
	blt _020E66FC
	bl FUN_ov16_020efa80
	cmp r0, #0
	beq _020E66FC
	bl FUN_0206d554
	cmp r8, r0
	bne _020E6D90
_020E66FC:
	ldr r1, [sp, #0xc]
	ldr r0, [sp, #0x10]
	str r1, [sp, #0x18]
	str r0, [sp, #0x14]
	bl FUN_ov16_020f081c
	cmp r4, r0
	ldrne r0, [sp, #0x18]
	cmpne r0, #0x80000000
	ldrgt r0, [sp, #0x14]
	cmpgt r0, #0x80000000
	ble _020E6734
	add r0, sp, #0x18
	add r1, sp, #0x14
	bl FUN_ov16_020f025c
_020E6734:
	ldr r0, _020E6DB0 ; =0x020EAB04
	ldr r1, [sp, #0x18]
	ldr r2, [sp, #0x14]
	add r0, r0, r4, lsl #3
	stmia r0, {r1, r2}
	b _020E6D90
_020E674C:
	add r0, r6, r8
	add r3, r9, r8, lsl #2
	ldrb r1, [r0, #0x6c]
	ldr r2, [r3, #0x28]
	ldr r0, _020E6DB4 ; =0x020A0640
	cmp r2, r1
	strne r1, [r3, #0x28]
	cmpne r8, #0
	beq _020E6D90
	ldrb r1, [r0, #0x30]
	cmp r1, r8
	beq _020E6788
	ldrb r0, [r0, #0x31]
	cmp r0, r8
	bne _020E6D90
_020E6788:
	bl FUN_ov16_020f081c
	mov r0, r8
	bl FUN_ov16_020f085c
	mov r4, r0
	mov r3, #0
	str r3, [sp]
	str r3, [sp, #4]
	ldr r2, [r6]
	ldr r0, _020E6DA8 ; =0x0209BA20
	mov r1, r4
	bl FUN_ov126_0212aebc
	mov r1, r4
	ldr r2, [r6, #4]
	ldr r0, _020E6DB8 ; =0x02099EF0
	ldr r0, [r0]
	bl FUN_ov132_0214635c
	b _020E6D90
_020E67CC:
	add r0, r6, r8
	add r2, r9, r8, lsl #2
	ldrb r0, [r0, #0x6c]
	ldr r1, [r2, #0x28]
	ldr r7, _020E6DA0 ; =0x020A0660
	cmp r1, r0
	ldr r5, _020E6DB4 ; =0x020A0640
	beq _020E6D90
	str r0, [r2, #0x28]
	cmp r4, #0
	bne _020E6D90
	ldr r4, _020E6DAC ; =0x0209A2C0
	mov r0, r6
	mov r1, r4
	bl FUN_ov1_020cb5f4
	ldr r0, _020E6D9C ; =0x0209AEC0
	bl FUN_02046730
	ldr r1, [r5, #0x20]
	ldr r0, [r7, r0, lsl #2]
	cmp r1, r0
	beq _020E6860
	mov r0, r4
	bl FUN_ov16_020f0298
	ldr r0, _020E6DBC ; =0x0209A2CC
	bl FUN_ov16_020f0298
	ldr r0, _020E6DC0 ; =0x0209A2D8
	bl FUN_ov16_020f0298
	ldr r0, _020E6DC4 ; =0x0209A2E0
	bl FUN_ov16_020f0298
	ldr r0, _020E6DC8 ; =0x0209A2E8
	bl FUN_ov16_020f0298
	ldrh r0, [r4, #0x52]
	add r0, r0, #0x8000
	strh r0, [r4, #0x52]
	ldrb r0, [r4, #0x5d]
	add r0, r0, #0x80
	strb r0, [r4, #0x5d]
_020E6860:
	add r0, r6, #0x18
	bl FUN_ov16_020ef9b4
	ldr r0, [r6, #0x30]
	ldr r4, _020E6DB8 ; =0x02099EF0
	str r0, [r5]
	ldr r0, [r6, #0x34]
	str r0, [r5, #4]
	ldrb r1, [r6, #0x38]
	ldr r0, [r4]
	strb r1, [r5, #0x98]
	ldrb r1, [r6, #0x39]
	strb r1, [r5, #0x99]
	ldrb r1, [r6, #0x3a]
	bl FUN_ov132_02144778
	ldrb r1, [r6, #0x3b]
	ldr r0, [r4]
	bl FUN_ov132_0214478c
	b _020E6D90
_020E68A8:
	add r0, r6, r8
	add r2, r9, r8, lsl #2
	ldrb r0, [r0, #0x6c]
	ldr r1, [r2, #0x28]
	ldr r7, _020E6DB4 ; =0x020A0640
	cmp r1, r0
	mov r5, #0xc
	beq _020E6D90
	str r0, [r2, #0x28]
	cmp r4, #0
	bne _020E6D90
	ldr r1, [r2, #0x28]
	mov r0, #0x54
	mul r4, r1, r0
	add r1, r9, #0xac
	ldrb r2, [r6, #0x70]
	mov r0, r6
	add r1, r1, r4
	bl MI_CpuCopy8
	ldrb r0, [r6, #0x70]
	add r0, r4, r0
	cmp r0, #0xc0
	blo _020E6D90
	add r0, r9, #0xac
	mov r1, #0xc0
	ldr r4, _020E6DA0 ; =0x020A0660
	bl DC_FlushRange
	add r9, r9, #0xac
	mov r10, #0
	mov r11, #0x3f000000
	ldr r6, _020E6D9C ; =0x0209AEC0
	b _020E6A70
_020E6928:
	mla r0, r10, r5, r9
	ldrh r0, [r0, #8]
	cmp r0, #0
	beq _020E6A6C
	mov r1, #0
	bl FUN_ov16_020efa9c
	movs r8, r0
	beq _020E6A6C
	mla r0, r10, r5, r9
	bl FUN_ov1_020cb138
	cmp r0, #0
	mla r0, r10, r5, r9
	ble _020E6978
	bl FUN_ov1_020cb138
	mov r0, r0, lsl #0xc
	bl FUN_0201f704
	mov r1, r0
	mov r0, r11
	bl FUN_02020274
	b _020E698C
_020E6978:
	bl FUN_ov1_020cb138
	mov r0, r0, lsl #0xc
	bl FUN_0201f704
	mov r1, #0x3f000000
	bl FUN_020204a4
_020E698C:
	bl FUN_0201fdac
	ldr r1, [r8, #0x84]
	str r0, [r1]
	mla r0, r10, r5, r9
	bl FUN_ov1_020cb144
	cmp r0, #0
	mla r0, r10, r5, r9
	ble _020E69C8
	bl FUN_ov1_020cb144
	mov r0, r0, lsl #0xc
	bl FUN_0201f704
	mov r1, r0
	mov r0, #0x3f000000
	bl FUN_02020274
	b _020E69DC
_020E69C8:
	bl FUN_ov1_020cb144
	mov r0, r0, lsl #0xc
	bl FUN_0201f704
	mov r1, #0x3f000000
	bl FUN_020204a4
_020E69DC:
	bl FUN_0201fdac
	ldr r1, [r8, #0x84]
	str r0, [r1, #4]
	mov r0, r6
	bl FUN_02046730
	ldr r0, [r4, r0, lsl #2]
	ldr r1, [r7, #0x20]
	cmp r1, r0
	beq _020E6A08
	ldr r0, [r8, #0x84]
	bl FUN_ov16_020f0298
_020E6A08:
	mla r0, r10, r5, r9
	bl FUN_ov1_020cb158
	ldr r1, [r8, #0x84]
	strb r0, [r1, #0x1d]
	mov r0, r6
	bl FUN_02046730
	ldr r0, [r4, r0, lsl #2]
	ldr r1, [r7, #0x20]
	cmp r1, r0
	mla r0, r10, r5, r9
	beq _020E6A4C
	bl FUN_ov1_020cb168
	add r0, r0, #4
	and r1, r0, #7
	ldr r0, [r8, #0x84]
	strb r1, [r0, #0x1b]
	b _020E6A58
_020E6A4C:
	bl FUN_ov1_020cb168
	ldr r1, [r8, #0x84]
	strb r0, [r1, #0x1b]
_020E6A58:
	mla r0, r10, r5, r9
	bl FUN_ov1_020cb178
	and r1, r0, #0xff
	ldr r0, [r8, #0x84]
	strh r1, [r0, #0x10]
_020E6A6C:
	add r10, r10, #1
_020E6A70:
	cmp r10, #0x10
	blt _020E6928
	b _020E6D90
_020E6A7C:
	add r5, r6, r8
	ldrsb r0, [r5, #0x58]
	add r3, r9, r8, lsl #2
	add r1, r9, r7, lsl #5
	str r0, [r3, #0x18]
	ldrb r2, [r5, #0x6c]
	sub r0, r0, #0
	add r0, r1, r0
	str r2, [r3, #0x28]
	ldrb r1, [r5, #0x6c]
	ldrb r0, [r0, #0x4c]
	mov r5, #1
	mov r2, #0
	tst r0, r5, lsl r1
	cmpeq r4, #0
	bne _020E6D90
	mov r0, r9
	mov r1, r6
_020E6AC4:
	mov r3, r8
	str r5, [sp]
_020E6ACC:
	bl FUN_ov1_020e5b80
	b _020E6D90
_020E6AD4:
	add r1, r6, r8
	ldrsb r4, [r1, #0x58]
	add r2, r9, r8, lsl #2
	and r0, r8, #0xff
	str r4, [r2, #0x18]
	ldrb r1, [r1, #0x6c]
	mov r11, #1
	str r1, [r2, #0x28]
	bl FUN_ov16_020f085c
	mov r10, #0
	cmp r0, #0
	movne r10, #0x10
	add r1, r9, r7, lsl #5
	sub r0, r4, r10
	add r0, r1, r0
	add r2, r6, r8
	ldrb r1, [r2, #0x6c]
	ldrb r0, [r0, #0x4c]
	tst r0, r11, lsl r1
	bne _020E6D90
	cmp r5, #9
	bne _020E6B68
	mov r5, #0
	bl FUN_ov16_020f081c
	mov r4, r0
	and r0, r8, #0xff
	bl FUN_ov16_020f085c
	cmp r4, r0
	bne _020E6B58
	and r0, r8, #0xff
	bl FUN_ov16_020f0988
	cmp r0, #0
	movne r5, r11
_020E6B58:
	mov r0, r9
	mov r1, r6
	mov r2, r10
	b _020E6AC4
_020E6B68:
	and r0, r8, #0xff
	bl FUN_ov16_020f0988
	str r0, [sp]
	mov r0, r9
	mov r1, r6
	mov r2, r10
	mov r3, r8
	b _020E6ACC
_020E6B88:
	add r1, r6, r8
	ldrsb r4, [r1, #0x58]
	add r2, r9, r8, lsl #2
	and r0, r8, #0xff
	str r4, [r2, #0x18]
	ldrb r1, [r1, #0x6c]
	mov r11, #1
	str r1, [r2, #0x28]
	bl FUN_ov16_020f085c
	mov r10, #0
	cmp r0, #0
	movne r10, #0x10
	add r1, r9, r7, lsl #5
	sub r0, r4, r10
	add r0, r1, r0
	add r2, r6, r8
	ldrb r1, [r2, #0x6c]
	ldrb r0, [r0, #0x4c]
	tst r0, r11, lsl r1
	bne _020E6D90
	cmp r5, #0xc
	bne _020E6C28
	mov r5, #0
	bl FUN_ov16_020f081c
	mov r4, r0
	and r0, r8, #0xff
	bl FUN_ov16_020f085c
	cmp r4, r0
	bne _020E6C0C
	and r0, r8, #0xff
	bl FUN_ov16_020f0988
	cmp r0, #0
	movne r5, r11
_020E6C0C:
	mov r0, r9
	mov r1, r6
	mov r2, r10
	mov r3, r8
	str r5, [sp]
_020E6C20:
	bl FUN_ov1_020e5fd0
	b _020E6D90
_020E6C28:
	and r0, r8, #0xff
	bl FUN_ov16_020f0988
	str r0, [sp]
	mov r0, r9
	mov r1, r6
	mov r2, r10
	mov r3, r8
	b _020E6C20
_020E6C48:
	ldr r0, _020E6DA0 ; =0x020A0660
	add r10, r6, r8
	ldr r0, [r0, r8, lsl #2]
	add r5, r9, r8, lsl #2
	cmp r0, #1
	ldrsb r0, [r10, #0x58]
	mov r2, #0
	moveq r2, #0x10
	str r0, [r5, #0x18]
	ldrb r4, [r10, #0x6c]
	add r1, r9, r7, lsl #5
	sub r0, r0, r2
	add r0, r1, r0
	str r4, [r5, #0x28]
	ldrb r1, [r10, #0x6c]
	ldrb r0, [r0, #0x4c]
	mov r3, #1
	tst r0, r3, lsl r1
	bne _020E6D90
	mov r0, r9
	mov r1, r6
	mov r3, r8
	ldr r4, _020E6DB4 ; =0x020A0640
	bl FUN_ov1_020e570c
	cmp r0, #0
	beq _020E6D90
	ldrb r0, [r4, #0x87]
	cmp r0, #0
	ldreqb r0, [r4, #0x88]
	cmpeq r0, #0
	movne r0, #1
	strne r0, [sp, #8]
	bne _020E6D90
	ldr r0, [r9]
	cmp r0, #0x37
	bne _020E6D90
_020E6CD8:
	bl FUN_ov1_020e6dcc
	b _020E6D90
_020E6CE0:
	ldr r0, _020E6DA0 ; =0x020A0660
	add r10, r6, r8
	ldr r0, [r0, r8, lsl #2]
	add r5, r9, r8, lsl #2
	cmp r0, #1
	ldrsb r0, [r10, #0x58]
	mov r2, #0
	moveq r2, #0x10
	str r0, [r5, #0x18]
	ldrb r3, [r10, #0x6c]
	add r1, r9, r7, lsl #5
	sub r0, r0, r2
	add r0, r1, r0
	str r3, [r5, #0x28]
	ldrb r1, [r10, #0x6c]
	ldrb r0, [r0, #0x4c]
	mov r4, #1
	tst r0, r4, lsl r1
	bne _020E6D90
	mov r0, r9
	mov r1, r6
	mov r3, r8
	str r4, [sp]
	bl FUN_ov1_020e5b80
	cmp r0, #0
	beq _020E6D90
	ldr r0, [r9]
	cmp r0, #0x37
	bne _020E6D90
	b _020E6CD8
_020E6D58:
	ldrb r0, [r9, #0x3ac]
	cmp r0, #0
	bne _020E6D70
	cmp r4, #0
	beq _020E6D90
	b _020E6D7C
_020E6D70:
	bl FUN_ov16_020f0944 ; may be ov17
	cmp r0, #0
	beq _020E6D90
_020E6D7C:
	add r0, r9, r10, lsl #2
	ldr r0, [r0, #4]
	cmp r0, #0xe
	moveq r0, #1
	streq r0, [sp, #8]
_020E6D90:
	ldr r0, [sp, #8]
	add sp, sp, #0x1c
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
_020E6D9C: .word 0x0209AEC0
_020E6DA0: .word 0x020A0660
_020E6DA4: .word 0x020A0670
_020E6DA8: .word 0x0209BA20
_020E6DAC: .word 0x0209A2C0
_020E6DB0: .word 0x020EAB04
_020E6DB4: .word 0x020A0640
_020E6DB8: .word 0x02099EF0
_020E6DBC: .word 0x0209A2CC
_020E6DC0: .word 0x0209A2D8
_020E6DC4: .word 0x0209A2E0
_020E6DC8: .word 0x0209A2E8
	arm_func_end FUN_ov1_020e64f0

	arm_func_start FUN_ov1_020e6dcc
FUN_ov1_020e6dcc: ; 0x020E6DCC
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, lr}
	mov r9, #0
	mov r5, #2
	mov r7, r9
	mov r6, #1
	mov r11, #8
	mov r4, #0x18
_020E6DE8:
	mov r0, r9
	bl FUN_ov16_020efa80
	movs r8, r0
	beq _020E6E9C
	bl FUN_0206d64c
	cmp r0, #0
	beq _020E6E9C
	mov r0, r8
	bl FUN_0206d660
	cmp r0, #0
	beq _020E6E9C
	mov r0, r8
	mov r1, r7
	bl FUN_0206d824
	mov r10, r0
	mov r0, r8
	mov r1, r6
	bl FUN_0206d620
	cmp r10, #0
	ble _020E6E4C
	cmp r10, #0x10
	bgt _020E6E4C
	mov r0, r8
	mov r1, r5
	bl FUN_0206d620
_020E6E4C:
	cmp r10, #0
	ble _020E6E6C
	cmp r10, #0xb
	bgt _020E6E6C
	mov r0, r8
	mov r1, r4
	bl FUN_0206d620
	b _020E6E78
_020E6E6C:
	mov r0, r8
	mov r1, r11
	bl FUN_0206d634
_020E6E78:
	mov r0, r8
	bl FUN_ov16_020f08bc
	cmp r0, #0
	mov r0, r8
	mov r1, #0x20
	beq _020E6E98
	bl FUN_0206d620
	b _020E6E9C
_020E6E98:
	bl FUN_0206d634
_020E6E9C:
	add r9, r9, #1
	cmp r9, #0x20
	blt _020E6DE8
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
	arm_func_end FUN_ov1_020e6dcc

	arm_func_start FUN_ov1_020e6eac
FUN_ov1_020e6eac: ; 0x020E6EAC
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, lr}
	sub sp, sp, #0x250
	mov r5, r0
	ldr r0, _020E7590 ; =0x0209AEC0
	mov r6, r1
	mov r4, #0xc
	ldr r11, _020E7594 ; =0x0209A4E4
	bl FUN_02046730
	mov r7, r0
	add r0, r5, r7, lsl #2
	ldr r0, [r0, #4]
	cmp r0, #0
	bne _020E6EEC
	mov r0, r5
	mov r1, r6
	bl FUN_ov1_020e5030
_020E6EEC:
	add r1, r5, r7, lsl #2
	ldr r2, [r1, #0x28]
	mov r0, #0x54
	mul r6, r2, r0
	ldr r1, [r1, #4]
	cmp r1, #0xe
	addls pc, pc, r1, lsl #2
	b _020E7588
_020E6F0C: ; jump table
	b _020E7588 ; case 0
	b _020E6F48 ; case 1
	b _020E6FAC ; case 2
	b _020E71A4 ; case 3
	b _020E74D0 ; case 4
	b _020E7508 ; case 5
	b _020E7108 ; case 6
	b _020E754C ; case 7
	b _020E71A4 ; case 8
	b _020E71A4 ; case 9
	b _020E71A4 ; case 10
	b _020E7588 ; case 11
	b _020E7334 ; case 12
	b _020E7334 ; case 13
	b _020E7574 ; case 14
_020E6F48:
	ldr r1, _020E7598 ; =0x0209A2C0
	mov r0, r11
	bl FUN_ov1_020cb4a0
	add r0, r11, #0x18
	bl FUN_ov16_020ef97c
	ldr r0, _020E759C ; =0x020A0640
	ldr r4, _020E75A0 ; =0x02099EF0
	ldrb r2, [r0, #0x98]
	ldrb r1, [r0, #0x99]
	ldr r5, [r0]
	ldr r3, [r0, #4]
	ldr r0, [r4]
	str r5, [r11, #0x30]
	str r3, [r11, #0x34]
	strb r2, [r11, #0x38]
	strb r1, [r11, #0x39]
	bl FUN_ov132_02144770
	strb r0, [r11, #0x3a]
	ldr r0, [r4]
	bl FUN_ov132_02144780
	mov r1, #0x3c
	add sp, sp, #0x250
	strb r0, [r11, #0x3b]
	strb r1, [r11, #0x70]
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_020E6FAC:
	cmp r2, #0
	add r7, r5, #0xac
	bne _020E6FD0
	mov r8, #0
	mov r0, r7
	mov r1, r8
	mov r2, #0xc0
	bl MI_CpuFill8
	b _020E6FF8
_020E6FD0:
	rsb r4, r6, #0xc0
	cmp r4, #0x54
	movgt r4, r0
	mov r1, r11
	mov r2, r4
	add r0, r7, r6
	strb r4, [r11, #0x70]
	bl MI_CpuCopy8
	add sp, sp, #0x250
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_020E6FF8:
	bl FUN_ov16_020f081c
	mov r10, r8
	cmp r0, #0
	movne r10, #0x10
	mov r9, #0
	b _020E70D8
_020E7010:
	add r0, r10, r9
	bl FUN_ov16_020efa80
	movs r5, r0
	beq _020E70D4
	bl FUN_0206d64c
	cmp r0, #0
	beq _020E70D4
	mov r0, r5
	bl FUN_0206d660
	cmp r0, #0
	beq _020E70D4
	mov r0, r5
	bl FUN_0206d6b0
	cmp r0, #0
	beq _020E70D4
	mov r0, r5
	bl FUN_0206cbf8
	mla r1, r8, r4, r7
	strh r0, [r1, #8]
	mov r0, r5
	bl FUN_0206d8c8
	mla r1, r8, r4, r7
	strb r0, [r1, #0xa]
	ldr r0, [r5, #0x84]
	add r1, sp, #0xc
	add r2, sp, #8
	bl FUN_ov16_020f02d0
	mla r0, r8, r4, r7
	ldr r1, [sp, #0xc]
	bl FUN_ov1_020cb0e4
	mla r0, r8, r4, r7
	ldr r1, [sp, #8]
	bl FUN_ov1_020cb0f0
	ldr r1, [r5, #0x84]
	mla r0, r8, r4, r7
	ldrb r1, [r1, #0x1d]
	bl FUN_ov1_020cb108
	ldr r1, [r5, #0x84]
	mla r0, r8, r4, r7
	ldrb r1, [r1, #0x1b]
	bl FUN_ov1_020cb118
	ldr r1, [r5, #0x84]
	mla r0, r8, r4, r7
	ldrh r1, [r1, #0x10]
	bl FUN_ov1_020cb128
	mla r0, r8, r4, r7
	mov r1, #0
	bl FUN_ov1_020cb0fc
	add r8, r8, #1
_020E70D4:
	add r9, r9, #1
_020E70D8:
	cmp r9, #0x10
	blt _020E7010
	rsb r4, r6, #0xc0
	cmp r4, #0x54
	movgt r4, #0x54
	mov r1, r11
	mov r2, r4
	add r0, r7, r6
	strb r4, [r11, #0x70]
	bl MI_CpuCopy8
	add sp, sp, #0x250
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_020E7108:
	rsb r4, r6, #0x1b4
	cmp r4, #0x54
	movgt r4, r0
	add r0, r5, r7, lsl #2
	ldr r0, [r0, #0x18]
	bl FUN_ov16_020efa80
	add r1, sp, #0x9c
	mov r5, r0
	mov r2, #0
	bl FUN_ov16_020efc70
	ldr r0, [r5, #0x84]
	cmp r0, #0
	beq _020E7148
	add r1, sp, #0x1a0
	mov r2, #0x20
	bl MI_CpuCopy8
_020E7148:
	ldr r0, [r5, #0x88]
	cmp r0, #0
	beq _020E7160
	add r1, sp, #0x1c0
	mov r2, #0x90
	bl MI_CpuCopy8
_020E7160:
	mov r0, r5
	bl FUN_0206dcdc
	cmp r0, #0
	bne _020E7184
	mov r0, r5
	bl FUN_0206dcd4
	mov r1, r0
	add r0, sp, #0x134
	bl FUN_0206ed40
_020E7184:
	add r0, sp, #0x9c
	mov r1, r11
	mov r2, r4
	add r0, r0, r6
	bl MI_CpuCopy8
	add sp, sp, #0x250
	strb r4, [r11, #0x70]
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_020E71A4:
	rsb r4, r6, #0x4c
	cmp r4, #0x54
	movgt r4, r0
	add r0, r5, r7, lsl #2
	ldr r0, [r0, #0x18]
	bl FUN_ov16_020efa80
	mov r5, r0
	ldr r0, [r5, #0x88]
	mov r2, #0
	ldrb r0, [r0, #0x84]
	add r7, sp, #0x56
	strb r0, [sp, #0x50]
	ldr r0, [r5, #0x88]
	ldrb r0, [r0, #0x85]
	strb r0, [sp, #0x51]
	ldr r0, [r5, #0x88]
	ldrsh r0, [r0, #0x86]
	strh r0, [sp, #0x52]
	add r0, sp, #0x54
	b _020E7234
_020E71F4:
	ldr r3, [r5, #0x88]
	mov r1, r2, lsl #2
	add r3, r3, r2, lsl #3
	ldr r8, [r3, #0x34]
	mov r3, r8, asr #0xb
	add r3, r8, r3, lsr #20
	mov r3, r3, asr #0xc
	strh r3, [r0, r1]
	ldr r3, [r5, #0x88]
	add r3, r3, r2, lsl #3
	ldr r8, [r3, #0x38]
	add r2, r2, #1
	mov r3, r8, asr #0xb
	add r3, r8, r3, lsr #20
	mov r3, r3, asr #0xc
	strh r3, [r7, r1]
_020E7234:
	cmp r2, #0xa
	blt _020E71F4
	mov r0, r5
	bl FUN_0206d8c8
	strb r0, [sp, #0x8a]
	ldr r0, [r5, #0x84]
	add r1, sp, #4
	add r2, sp, #0
	bl FUN_ov16_020f02d0
	add r7, sp, #0x7c
	ldr r1, [sp, #4]
	mov r0, r7
	bl FUN_ov1_020cb0e4
	ldr r1, [sp]
	mov r0, r7
	bl FUN_ov1_020cb0f0
	ldr r1, [r5, #0x84]
	mov r0, r7
	ldrb r1, [r1, #0x1d]
	bl FUN_ov1_020cb108
	ldr r1, [r5, #0x84]
	mov r0, r7
	ldrb r1, [r1, #0x1b]
	bl FUN_ov1_020cb118
	ldr r1, [r5, #0x84]
	mov r0, r7
	ldrh r1, [r1, #0x10]
	bl FUN_ov1_020cb128
	mov r0, r7
	mov r1, #0
	bl FUN_ov1_020cb0fc
	mov r7, #7
	add r0, r5, #0x74
	add r1, sp, #0x8c
	mov r2, r7
	bl MI_CpuCopy8
	mov r2, r7
	add r0, r5, #0x7b
	add r1, sp, #0x93
	bl MI_CpuCopy8
	ldrh r1, [r5, #0x8e]
	mov r0, r5
	strh r1, [sp, #0x84]
	ldr r1, [r5, #0x84]
	ldrh r1, [r1, #0x16]
	strh r1, [sp, #0x86]
	bl FUN_0206dcd4
	ldrh r2, [r0, #0x5a]
	mov r0, r5
	mov r1, #1
	strh r2, [sp, #0x88]
	bl FUN_0206d9b0
	strb r0, [sp, #0x8b]
	add r0, sp, #0x50
	mov r1, r11
	add r0, r0, r6
	mov r2, r4
	bl MI_CpuCopy8
	mov r0, r11
	mov r1, r4
	bl DC_FlushRange
	add sp, sp, #0x250
	strb r4, [r11, #0x70]
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_020E7334:
	rsb r4, r6, #0x3e
	cmp r4, #0x54
	movgt r4, r0
	add r0, r5, r7, lsl #2
	ldr r0, [r0, #0x18]
	bl FUN_ov16_020efa80
	mov r5, r0
	bl FUN_0206cbf8
	strh r0, [sp, #0x18]
	mov r0, r5
	bl FUN_0206dcd4
	ldrsb r1, [r0, #0x4f]
	mov r0, r5
	strb r1, [sp, #0x10]
	bl FUN_0206dcd4
	ldrsb r1, [r0, #0x50]
	mov r0, r5
	strb r1, [sp, #0x11]
	bl FUN_0206dcd4
	ldrsb r1, [r0, #0x51]
	mov r0, r5
	strb r1, [sp, #0x12]
	bl FUN_0206dcd4
	ldrsb r1, [r0, #0x52]
	mov r0, r5
	strb r1, [sp, #0x13]
	bl FUN_0206dcd4
	ldrsb r1, [r0, #0x53]
	mov r0, r5
	strb r1, [sp, #0x14]
	bl FUN_0206dcd4
	ldrsb r1, [r0, #0x54]
	mov r0, r5
	strb r1, [sp, #0x15]
	bl FUN_0206dcd4
	ldrsb r1, [r0, #0x55]
	mov r0, r5
	strb r1, [sp, #0x16]
	bl FUN_0206dcd4
	ldrsh r1, [r0, #0x18]
	mov r0, r5
	strh r1, [sp, #0x1a]
	bl FUN_0206dcd4
	ldrsh r1, [r0, #0x1a]
	mov r0, r5
	strh r1, [sp, #0x1c]
	bl FUN_0206ccdc
	strh r0, [sp, #0x1e]
	mov r0, r5
	bl FUN_0206cc84
	strh r0, [sp, #0x20]
	mov r8, #0
	add r7, sp, #0x22
	add r9, sp, #0x3a
	b _020E746C
_020E7410:
	mov r0, r5
	bl FUN_0206dcd4
	mov r1, r8, lsl #1
	add r2, r1, #0
	add r0, r0, r2, lsl #1
	ldrh r2, [r0, #0x1c]
	mov r1, r1, lsl #1
	mov r0, r5
	strh r2, [r7, r1]
	bl FUN_0206dcd4
	mov r1, r8, lsl #1
	add r2, r1, #1
	add r0, r0, r2, lsl #1
	ldrh r1, [r0, #0x1c]
	mov r2, r2, lsl #1
	mov r0, r5
	strh r1, [r7, r2]
	bl FUN_0206dcd4
	add r0, r0, r8, lsl #1
	mov r1, r8, lsl #1
	ldrh r0, [r0, #0x38]
	add r8, r8, #1
	strh r0, [r9, r1]
_020E746C:
	cmp r8, #6
	blt _020E7410
	mov r7, #0
	add r8, sp, #0x46
	b _020E749C
_020E7480:
	mov r0, r5
	bl FUN_0206dcd4
	add r0, r0, r7, lsl #1
	mov r1, r7, lsl #1
	ldrh r0, [r0, #0x10]
	add r7, r7, #1
	strh r0, [r8, r1]
_020E749C:
	cmp r7, #4
	blt _020E7480
	add r0, sp, #0x10
	mov r1, r11
	mov r2, r4
	add r0, r0, r6
	bl MI_CpuCopy8
	mov r0, r11
	mov r1, r4
	bl DC_FlushRange
	add sp, sp, #0x250
	strb r4, [r11, #0x70]
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_020E74D0:
	rsb r4, r6, #0x4c
	cmp r4, #0x54
	movgt r4, r0
	bl FUN_ov16_020f081c
	mov r1, r0
	ldr r0, _020E75A4 ; =0x0209BA20
	bl FUN_0207249c
	mov r1, r11
	mov r2, r4
	add r0, r0, r6
	bl MI_CpuCopy8
	add sp, sp, #0x250
	strb r4, [r11, #0x70]
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_020E7508:
	bl FUN_ov16_020f081c
	mov r4, r0
	mov r2, #0
	ldr r0, _020E75A4 ; =0x0209BA20
	mov r1, r4
	mov r3, r2
	bl FUN_ov126_0212af50
	ldr r1, _020E75A0 ; =0x02099EF0
	str r0, [r11]
	ldr r0, [r1]
	mov r1, r4
	bl FUN_ov132_02146348
	mov r1, #8
	add sp, sp, #0x250
	str r0, [r11, #4]
	strb r1, [r11, #0x70]
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_020E754C:
	bl FUN_ov16_020f081c
	ldr r3, _020E75A8 ; =0x020EAB04
	mov r4, #8
	mov r1, r11
	mov r2, r4
	add r0, r3, r0, lsl #3
	bl MI_CpuCopy8
	add sp, sp, #0x250
	strb r4, [r11, #0x70]
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_020E7574:
	ldrb r0, [r5, #0x3ac]
	cmp r0, #0
	ldreq r1, _020E759C ; =0x020A0640
	moveq r0, #0
	streq r0, [r1, #0x78]
_020E7588:
	add sp, sp, #0x250
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_020E7590: .word 0x0209AEC0
_020E7594: .word 0x0209A4E4
_020E7598: .word 0x0209A2C0
_020E759C: .word 0x020A0640
_020E75A0: .word 0x02099EF0
_020E75A4: .word 0x0209BA20
_020E75A8: .word 0x020EAB04
	arm_func_end FUN_ov1_020e6eac

_020E75AC:
	.byte 0x34, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x7A, 0x00, 0x00, 0x00, 0x38, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x72, 0x00, 0x00, 0x00, 0x41, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x73, 0x00, 0x00, 0x00, 0x39, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x3A, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x74, 0x00, 0x00, 0x00, 0x4C, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x77, 0x00, 0x00, 0x00, 0x3C, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x78, 0x00, 0x00, 0x00, 0x45, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x76, 0x00, 0x00, 0x00, 0x46, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x79, 0x00, 0x00, 0x00, 0x47, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x6D, 0x00, 0x00, 0x00, 0x5A, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x6D, 0x00, 0x00, 0x00, 0x5B, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x6D, 0x00, 0x00, 0x00, 0x5C, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x6D, 0x00, 0x00, 0x00, 0x5D, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x6D, 0x00, 0x00, 0x00, 0x76, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x6D, 0x00, 0x00, 0x00, 0x4D, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x7C, 0x00, 0x00, 0x00, 0x50, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x7D, 0x00, 0x00, 0x00, 0x61, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x6D, 0x00, 0x00, 0x00, 0x69, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x6B, 0x00, 0x00, 0x00, 0x3B, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x75, 0x00, 0x00, 0x00, 0x51, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x75, 0x00, 0x00, 0x00, 0x4E, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x7B, 0x00, 0x00, 0x00, 0x4F, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x6D, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x38, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x36, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x4D, 0x00, 0x00, 0x00, 0x35, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x37, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x52, 0x00, 0x00, 0x00, 0x3E, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x51, 0x00, 0x00, 0x00, 0x3C, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x53, 0x00, 0x00, 0x00, 0x3D, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x32, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x4B, 0x00, 0x00, 0x00, 0x33, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x4C, 0x00, 0x00, 0x00, 0x34, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x55, 0x00, 0x00, 0x00, 0x3F, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x57, 0x00, 0x00, 0x00, 0x40, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x58, 0x00, 0x00, 0x00, 0x45, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x50, 0x00, 0x00, 0x00, 0x47, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x54, 0x00, 0x00, 0x00, 0x46, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x4A, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x4F, 0x00, 0x00, 0x00, 0x4B, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x3D, 0x00, 0x00, 0x00, 0x48, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x43, 0x00, 0x00, 0x00, 0x4D, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x59, 0x00, 0x00, 0x00, 0x50, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x5A, 0x00, 0x00, 0x00, 0x61, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x3C, 0x00, 0x00, 0x00, 0x62, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x43, 0x00, 0x00, 0x00, 0x5D, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x38, 0x00, 0x00, 0x00, 0x5A, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x39, 0x00, 0x00, 0x00, 0x5B, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x3B, 0x00, 0x00, 0x00, 0x5C, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x3F, 0x00, 0x00, 0x00, 0x68, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x47, 0x00, 0x00, 0x00, 0x76, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x29, 0x00, 0x00, 0x00, 0x77, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x28, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x4F, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x1E, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x84, 0x86, 0x0E, 0x02
	.byte 0x26, 0x00, 0x00, 0x00, 0x94, 0x86, 0x0E, 0x02, 0x27, 0x00, 0x00, 0x00, 0xA4, 0x86, 0x0E, 0x02
	.byte 0x28, 0x00, 0x00, 0x00, 0xB4, 0x86, 0x0E, 0x02, 0x29, 0x00, 0x00, 0x00, 0xC4, 0x86, 0x0E, 0x02
	.byte 0x2A, 0x00, 0x00, 0x00, 0x2C, 0x85, 0x0E, 0x02, 0x2B, 0x00, 0x00, 0x00, 0x38, 0x85, 0x0E, 0x02
	.byte 0x2C, 0x00, 0x00, 0x00, 0x44, 0x85, 0x0E, 0x02, 0x2D, 0x00, 0x00, 0x00, 0x50, 0x85, 0x0E, 0x02
	.byte 0x2E, 0x00, 0x00, 0x00, 0x20, 0x85, 0x0E, 0x02, 0x30, 0x00, 0x00, 0x00, 0x14, 0x85, 0x0E, 0x02
	.byte 0x2F, 0x00, 0x00, 0x00, 0x34, 0x86, 0x0E, 0x02, 0x31, 0x00, 0x00, 0x00, 0x74, 0x85, 0x0E, 0x02
	.byte 0x32, 0x00, 0x00, 0x00, 0xBC, 0x85, 0x0E, 0x02, 0x33, 0x00, 0x00, 0x00, 0xB0, 0x85, 0x0E, 0x02
	.byte 0x05, 0x00, 0x00, 0x00, 0x8C, 0x85, 0x0E, 0x02, 0x20, 0x00, 0x00, 0x00, 0x98, 0x85, 0x0E, 0x02
	.byte 0x21, 0x00, 0x00, 0x00, 0xA4, 0x85, 0x0E, 0x02, 0x22, 0x00, 0x00, 0x00, 0xC8, 0x85, 0x0E, 0x02
	.byte 0x23, 0x00, 0x00, 0x00, 0xD4, 0x85, 0x0E, 0x02, 0x24, 0x00, 0x00, 0x00, 0xE0, 0x85, 0x0E, 0x02
	.byte 0x25, 0x00, 0x00, 0x00, 0xF8, 0x85, 0x0E, 0x02, 0x34, 0x00, 0x00, 0x00, 0x10, 0x86, 0x0E, 0x02
	.byte 0x3B, 0x00, 0x00, 0x00, 0x1C, 0x86, 0x0E, 0x02, 0x35, 0x00, 0x00, 0x00, 0x28, 0x86, 0x0E, 0x02
	.byte 0x36, 0x00, 0x00, 0x00, 0x5C, 0x85, 0x0E, 0x02, 0x37, 0x00, 0x00, 0x00, 0x68, 0x85, 0x0E, 0x02
	.byte 0x38, 0x00, 0x00, 0x00, 0x80, 0x85, 0x0E, 0x02, 0x3A, 0x00, 0x00, 0x00, 0xF4, 0x86, 0x0E, 0x02
	.byte 0x44, 0x00, 0x00, 0x00, 0x04, 0x87, 0x0E, 0x02, 0x45, 0x00, 0x00, 0x00, 0xEC, 0x85, 0x0E, 0x02
	.byte 0x46, 0x00, 0x00, 0x00, 0x04, 0x86, 0x0E, 0x02, 0x47, 0x00, 0x00, 0x00, 0xD4, 0x86, 0x0E, 0x02
	.byte 0x49, 0x00, 0x00, 0x00, 0x44, 0x86, 0x0E, 0x02, 0x4A, 0x00, 0x00, 0x00, 0x54, 0x86, 0x0E, 0x02
	.byte 0x4B, 0x00, 0x00, 0x00, 0x74, 0x86, 0x0E, 0x02, 0x4C, 0x00, 0x00, 0x00, 0xE4, 0x86, 0x0E, 0x02
	.byte 0x4D, 0x00, 0x00, 0x00, 0x64, 0x86, 0x0E, 0x02, 0x4E, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x08, 0x00, 0x00, 0x00, 0x20, 0x00, 0x00, 0x00, 0x30, 0x00, 0x00, 0x00
	.byte 0x08, 0x00, 0x00, 0x00, 0x20, 0x00, 0x00, 0x00, 0x30, 0x00, 0x00, 0x00, 0x2C, 0x88, 0x0E, 0x02
	.byte 0x11, 0x00, 0x00, 0x00, 0x3C, 0x88, 0x0E, 0x02, 0x12, 0x00, 0x00, 0x00, 0x4C, 0x88, 0x0E, 0x02
	.byte 0x13, 0x00, 0x00, 0x00, 0x5C, 0x88, 0x0E, 0x02, 0x14, 0x00, 0x00, 0x00, 0x6C, 0x88, 0x0E, 0x02
	.byte 0x15, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x08, 0x00, 0x00, 0x00
	.byte 0x08, 0x00, 0x00, 0x00, 0x08, 0x00, 0x00, 0x00, 0x38, 0x00, 0x00, 0x00, 0x18, 0x00, 0x00, 0x00
	.byte 0x28, 0x00, 0x00, 0x00, 0x08, 0x00, 0x00, 0x00, 0x08, 0x00, 0x00, 0x00, 0x08, 0x00, 0x00, 0x00
	.byte 0x08, 0x00, 0x00, 0x00, 0x08, 0x00, 0x00, 0x00, 0x20, 0x00, 0x00, 0x00, 0xB0, 0x88, 0x0E, 0x02
	.byte 0x18, 0x00, 0x00, 0x00, 0xBC, 0x88, 0x0E, 0x02, 0x1A, 0x00, 0x00, 0x00, 0xC8, 0x88, 0x0E, 0x02
	.byte 0x1B, 0x00, 0x00, 0x00, 0xA4, 0x88, 0x0E, 0x02, 0x1C, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x3C, 0x00, 0x00, 0x00, 0x3D, 0x00, 0x00, 0x00, 0x3E, 0x00, 0x00, 0x00
	.byte 0x3F, 0x00, 0x00, 0x00, 0x40, 0x00, 0x00, 0x00, 0x1C, 0x8E, 0x0E, 0x02, 0x07, 0x00, 0x00, 0x00
	.byte 0x88, 0x8E, 0x0E, 0x02, 0x08, 0x00, 0x00, 0x00, 0xB0, 0x8D, 0x0E, 0x02, 0x09, 0x00, 0x00, 0x00
	.byte 0xA4, 0x8D, 0x0E, 0x02, 0x0A, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x74, 0x8D, 0x0E, 0x02, 0x07, 0x00, 0x00, 0x00, 0x80, 0x8D, 0x0E, 0x02, 0x08, 0x00, 0x00, 0x00
	.byte 0x8C, 0x8D, 0x0E, 0x02, 0x09, 0x00, 0x00, 0x00, 0xD4, 0x8D, 0x0E, 0x02, 0x0A, 0x00, 0x00, 0x00
	.byte 0xDC, 0x8E, 0x0E, 0x02, 0x0B, 0x00, 0x00, 0x00, 0x5C, 0x8D, 0x0E, 0x02, 0x0C, 0x00, 0x00, 0x00
	.byte 0x98, 0x8D, 0x0E, 0x02, 0x0D, 0x00, 0x00, 0x00, 0xBC, 0x8D, 0x0E, 0x02, 0x0E, 0x00, 0x00, 0x00
	.byte 0xE0, 0x8D, 0x0E, 0x02, 0x0F, 0x00, 0x00, 0x00, 0x68, 0x8D, 0x0E, 0x02, 0x10, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0xD0, 0x8E, 0x0E, 0x02, 0x01, 0x00, 0x00, 0x00
	.byte 0xC4, 0x8E, 0x0E, 0x02, 0x02, 0x00, 0x00, 0x00, 0xB8, 0x8E, 0x0E, 0x02, 0x03, 0x00, 0x00, 0x00
	.byte 0xAC, 0x8E, 0x0E, 0x02, 0x11, 0x00, 0x00, 0x00, 0xA0, 0x8E, 0x0E, 0x02, 0x12, 0x00, 0x00, 0x00
	.byte 0x94, 0x8E, 0x0E, 0x02, 0x13, 0x00, 0x00, 0x00, 0x28, 0x8E, 0x0E, 0x02, 0x04, 0x00, 0x00, 0x00
	.byte 0x7C, 0x8E, 0x0E, 0x02, 0x05, 0x00, 0x00, 0x00, 0x70, 0x8E, 0x0E, 0x02, 0x06, 0x00, 0x00, 0x00
	.byte 0x64, 0x8E, 0x0E, 0x02, 0x14, 0x00, 0x00, 0x00, 0x58, 0x8E, 0x0E, 0x02, 0x15, 0x00, 0x00, 0x00
	.byte 0x4C, 0x8E, 0x0E, 0x02, 0x16, 0x00, 0x00, 0x00, 0x40, 0x8E, 0x0E, 0x02, 0x17, 0x00, 0x00, 0x00
	.byte 0x34, 0x8E, 0x0E, 0x02, 0x18, 0x00, 0x00, 0x00, 0xE8, 0x8E, 0x0E, 0x02, 0x1A, 0x00, 0x00, 0x00
	.byte 0xF8, 0x8E, 0x0E, 0x02, 0x19, 0x00, 0x00, 0x00, 0x10, 0x8E, 0x0E, 0x02, 0x1B, 0x00, 0x00, 0x00
	.byte 0x04, 0x8E, 0x0E, 0x02, 0x1C, 0x00, 0x00, 0x00, 0xF8, 0x8D, 0x0E, 0x02, 0x1D, 0x00, 0x00, 0x00
	.byte 0xEC, 0x8D, 0x0E, 0x02, 0x1E, 0x00, 0x00, 0x00, 0xC8, 0x8D, 0x0E, 0x02, 0x1F, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x13, 0x00, 0x00, 0x00, 0x14, 0x00, 0x00, 0x00
	.byte 0x15, 0x00, 0x00, 0x00, 0xD0, 0x00, 0xD8, 0x00, 0xE8, 0x00, 0xF0, 0x00, 0xC8, 0x00, 0xE0, 0x00
	.byte 0xE8, 0x00, 0xF0, 0x00, 0xC0, 0x00, 0x00, 0x00, 0x98, 0x00, 0x98, 0x00, 0x98, 0x00, 0x98, 0x00
	.byte 0x98, 0x00, 0x88, 0x00, 0x88, 0x00, 0x88, 0x00, 0x88, 0x00, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00
	.byte 0x80, 0x00, 0x00, 0x00, 0x20, 0x00, 0x00, 0x00, 0x20, 0x00, 0x00, 0x00, 0x20, 0x00, 0x00, 0x00
	.byte 0x0F, 0x0C, 0x09, 0x04, 0x00, 0x00, 0x00, 0x01, 0x02, 0x03, 0x04, 0x05, 0x06, 0x05, 0x03, 0x02
	.byte 0x01, 0x00, 0x03, 0x05, 0x03, 0x01, 0x00, 0x00, 0x01, 0x02, 0x03, 0x04, 0x05, 0x06, 0x07, 0x08
	.byte 0x09, 0x09, 0x00, 0xFD, 0xFD, 0xFD, 0xFD, 0xFD, 0xFD, 0xFD, 0xFD, 0xFD, 0xFD, 0xFD, 0x7F, 0x0F
	.byte 0x0C, 0x09, 0x04, 0x00, 0x00, 0x00, 0x01, 0x02, 0x03, 0x04, 0x05, 0x06, 0x05, 0x03, 0x02, 0x01
	.byte 0x00, 0x03, 0x05, 0x03, 0x01, 0x00, 0x00, 0x01, 0x02, 0x03, 0x04, 0x05, 0x06, 0x07, 0x08, 0x09
	.byte 0x09, 0x00, 0x04, 0x07, 0x0A, 0x0F, 0x12, 0x12, 0x12, 0x12, 0x12, 0x12, 0x12, 0x7F, 0x00, 0x00
	.byte 0x01, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x00, 0x04, 0x00, 0x00, 0x1E, 0x00, 0x00, 0x00
	.byte 0x40, 0x00, 0x00, 0x00, 0x40, 0x00, 0x00, 0x00, 0xFF, 0xFF, 0xFF, 0xFF, 0x00, 0x01, 0x00, 0x00
	.byte 0x00, 0x08, 0x00, 0x00, 0x00, 0x10, 0x00, 0x00, 0x00, 0x40, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00
	.byte 0x01, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00
	.byte 0x01, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x00, 0x20, 0x00, 0x00
	.byte 0x00, 0x20, 0x00, 0x00, 0x00, 0x20, 0x00, 0x00, 0x00, 0x80, 0x00, 0x00, 0x00, 0x80, 0x00, 0x00
	.byte 0x00, 0x80, 0x00, 0x00, 0x00, 0x80, 0x00, 0x00

	arm_func_start FUN_ov1_020e7d58
FUN_ov1_020e7d58: ; 0x020E7D58
	stmfd sp!, {r3, r4, r5, lr}
	mov r5, #0x2000
	mov r0, r5
	bl FUN_020095ac
	ldr r4, _020E7DA0 ; =0x020E83E0
	str r0, [r4, #0xc]
	ldr r0, _020E7DA4 ; =0x00009CCD
	bl FUN_020095ac
	mov r1, #0x800
	str r0, [r4, #4]
	ldr r0, _020E7DA8 ; =0x0000EA3C
	str r1, [r4, #0x10]
	str r0, [r4, #0x14]
	add r0, r5, #0x4e0000
	str r0, [r4]
	add r0, r1, #0x840000
	str r0, [r4, #8]
	ldmfd sp!, {r3, r4, r5, pc}
_020E7DA0: .word 0x020E83E0
_020E7DA4: .word 0x00009CCD
_020E7DA8: .word 0x0000EA3C
	arm_func_end FUN_ov1_020e7d58

	arm_func_start FUN_ov1_020e7dac
FUN_ov1_020e7dac: ; 0x020E7DAC
	stmfd sp!, {r3, r4, r5, lr}
	mov r5, #0x2000
	mov r0, r5
	bl FUN_020095ac
	ldr r4, _020E7DF4 ; =0x020E84B4
	str r0, [r4]
	ldr r0, _020E7DF8 ; =0x00009CCD
	bl FUN_020095ac
	mov r1, #0x800
	str r0, [r4, #4]
	ldr r0, _020E7DFC ; =0x0000EA3C
	str r1, [r4, #8]
	str r0, [r4, #0x14]
	add r0, r5, #0x4e0000
	str r0, [r4, #0x10]
	add r0, r1, #0x840000
	str r0, [r4, #0xc]
	ldmfd sp!, {r3, r4, r5, pc}
_020E7DF4: .word 0x020E84B4
_020E7DF8: .word 0x00009CCD
_020E7DFC: .word 0x0000EA3C
	arm_func_end FUN_ov1_020e7dac

	arm_func_start FUN_ov1_020e7e00
FUN_ov1_020e7e00: ; 0x020E7E00
	stmfd sp!, {r3, r4, r5, lr}
	mov r5, #0x2000
	mov r0, r5
	bl FUN_020095ac
	ldr r4, _020E7E44 ; =0x020E84CC
	str r0, [r4, #0x10]
	ldr r0, _020E7E48 ; =0x00009CCD
	bl FUN_020095ac
	str r0, [r4, #0xc]
	ldr r0, _020E7E4C ; =0x0000EA3C
	mov r1, #0x800
	stmib r4, {r0, r1}
	add r0, r5, #0x4e0000
	str r0, [r4]
	add r0, r1, #0x840000
	str r0, [r4, #0x14]
	ldmfd sp!, {r3, r4, r5, pc}
_020E7E44: .word 0x020E84CC
_020E7E48: .word 0x00009CCD
_020E7E4C: .word 0x0000EA3C
	arm_func_end FUN_ov1_020e7e00

	arm_func_start FUN_ov1_020e7e50
FUN_ov1_020e7e50: ; 0x020E7E50
	stmfd sp!, {r3, r4, r5, lr}
	mov r5, #0x2000
	mov r0, r5
	bl FUN_020095ac
	ldr r4, _020E7E98 ; =0x020E84E4
	str r0, [r4, #0x14]
	ldr r0, _020E7E9C ; =0x00009CCD
	bl FUN_020095ac
	mov r1, #0x800
	str r0, [r4, #0x10]
	ldr r0, _020E7EA0 ; =0x0000EA3C
	str r1, [r4, #0xc]
	str r0, [r4, #8]
	add r0, r5, #0x4e0000
	str r0, [r4, #4]
	add r0, r1, #0x840000
	str r0, [r4]
	ldmfd sp!, {r3, r4, r5, pc}
_020E7E98: .word 0x020E84E4
_020E7E9C: .word 0x00009CCD
_020E7EA0: .word 0x0000EA3C
	arm_func_end FUN_ov1_020e7e50

	arm_func_start FUN_ov1_020e7ea4
FUN_ov1_020e7ea4: ; 0x020E7EA4
	stmfd sp!, {r3, r4, r5, lr}
	mov r5, #0x2000
	mov r0, r5
	bl FUN_020095ac
	ldr r4, _020E7EEC ; =0x020E84FC
	str r0, [r4]
	ldr r0, _020E7EF0 ; =0x00009CCD
	bl FUN_020095ac
	mov r1, #0x800
	str r0, [r4, #0x10]
	ldr r0, _020E7EF4 ; =0x0000EA3C
	str r1, [r4, #0x14]
	str r0, [r4, #0xc]
	add r0, r5, #0x4e0000
	str r0, [r4, #8]
	add r0, r1, #0x840000
	str r0, [r4, #4]
	ldmfd sp!, {r3, r4, r5, pc}
_020E7EEC: .word 0x020E84FC
_020E7EF0: .word 0x00009CCD
_020E7EF4: .word 0x0000EA3C
	arm_func_end FUN_ov1_020e7ea4

	arm_func_start FUN_ov1_020e7ef8
FUN_ov1_020e7ef8: ; 0x020E7EF8
	stmfd sp!, {r3, r4, r5, lr}
	mov r5, #0x2000
	mov r0, r5
	bl FUN_020095ac
	ldr r4, _020E7F40 ; =0x020E8814
	str r0, [r4, #8]
	ldr r0, _020E7F44 ; =0x00009CCD
	bl FUN_020095ac
	mov r1, #0x800
	str r0, [r4, #0x10]
	ldr r0, _020E7F48 ; =0x0000EA3C
	str r1, [r4, #0xc]
	str r0, [r4]
	add r0, r5, #0x4e0000
	str r0, [r4, #4]
	add r0, r1, #0x840000
	str r0, [r4, #0x14]
	ldmfd sp!, {r3, r4, r5, pc}
_020E7F40: .word 0x020E8814
_020E7F44: .word 0x00009CCD
_020E7F48: .word 0x0000EA3C
	arm_func_end FUN_ov1_020e7ef8

	arm_func_start FUN_ov1_020e7f4c
FUN_ov1_020e7f4c: ; 0x020E7F4C
	stmfd sp!, {r3, r4, r5, lr}
	mov r5, #0x2000
	mov r0, r5
	bl FUN_020095ac
	ldr r4, _020E7F94 ; =0x020E888C
	str r0, [r4, #0xc]
	ldr r0, _020E7F98 ; =0x00009CCD
	bl FUN_020095ac
	mov r1, #0x800
	str r0, [r4, #0x10]
	ldr r0, _020E7F9C ; =0x0000EA3C
	str r1, [r4, #8]
	str r0, [r4]
	add r0, r5, #0x4e0000
	str r0, [r4, #4]
	add r0, r1, #0x840000
	str r0, [r4, #0x14]
	ldmfd sp!, {r3, r4, r5, pc}
_020E7F94: .word 0x020E888C
_020E7F98: .word 0x00009CCD
_020E7F9C: .word 0x0000EA3C
	arm_func_end FUN_ov1_020e7f4c

	arm_func_start FUN_ov1_020e7fa0
FUN_ov1_020e7fa0: ; 0x020E7FA0
	stmfd sp!, {r3, r4, r5, lr}
	mov r5, #0x2000
	mov r0, r5
	bl FUN_020095ac
	ldr r4, _020E7FE4 ; =0x020E8A20
	str r0, [r4, #0x10]
	ldr r0, _020E7FE8 ; =0x00009CCD
	bl FUN_020095ac
	str r0, [r4, #0xc]
	ldr r0, _020E7FEC ; =0x0000EA3C
	mov r1, #0x800
	stmib r4, {r0, r1}
	add r0, r5, #0x4e0000
	str r0, [r4]
	add r0, r1, #0x840000
	str r0, [r4, #0x14]
	ldmfd sp!, {r3, r4, r5, pc}
_020E7FE4: .word 0x020E8A20
_020E7FE8: .word 0x00009CCD
_020E7FEC: .word 0x0000EA3C
	arm_func_end FUN_ov1_020e7fa0

	arm_func_start FUN_ov1_020e7ff0
FUN_ov1_020e7ff0: ; 0x020E7FF0
	stmfd sp!, {r3, r4, r5, lr}
	mov r5, #0x2000
	mov r0, r5
	bl FUN_020095ac
	ldr r4, _020E8038 ; =0x020E8A38
	str r0, [r4, #0x14]
	ldr r0, _020E803C ; =0x00009CCD
	bl FUN_020095ac
	mov r1, #0x800
	str r0, [r4, #0x10]
	ldr r0, _020E8040 ; =0x0000EA3C
	str r1, [r4, #0xc]
	str r0, [r4, #8]
	add r0, r5, #0x4e0000
	str r0, [r4, #4]
	add r0, r1, #0x840000
	str r0, [r4]
	ldmfd sp!, {r3, r4, r5, pc}
_020E8038: .word 0x020E8A38
_020E803C: .word 0x00009CCD
_020E8040: .word 0x0000EA3C
	arm_func_end FUN_ov1_020e7ff0

	arm_func_start FUN_ov1_020e8044
FUN_ov1_020e8044: ; 0x020E8044
	stmfd sp!, {r3, r4, r5, lr}
	mov r5, #0x2000
	mov r0, r5
	bl FUN_020095ac
	ldr r4, _020E808C ; =0x020E8AC4
	str r0, [r4, #0x14]
	ldr r0, _020E8090 ; =0x00009CCD
	bl FUN_020095ac
	mov r1, #0x800
	str r0, [r4, #0x10]
	ldr r0, _020E8094 ; =0x0000EA3C
	str r1, [r4, #0xc]
	str r0, [r4, #8]
	add r0, r5, #0x4e0000
	str r0, [r4, #4]
	add r0, r1, #0x840000
	str r0, [r4]
	ldmfd sp!, {r3, r4, r5, pc}
_020E808C: .word 0x020E8AC4
_020E8090: .word 0x00009CCD
_020E8094: .word 0x0000EA3C
	arm_func_end FUN_ov1_020e8044

	arm_func_start FUN_ov1_020e8098
FUN_ov1_020e8098: ; 0x020E8098
	stmfd sp!, {r3, r4, r5, lr}
	mov r5, #0x2000
	mov r0, r5
	bl FUN_020095ac
	ldr r4, _020E80E0 ; =0x020E8B60
	str r0, [r4, #0x14]
	ldr r0, _020E80E4 ; =0x00009CCD
	bl FUN_020095ac
	mov r1, #0x800
	str r0, [r4, #0x10]
	ldr r0, _020E80E8 ; =0x0000EA3C
	str r1, [r4, #0xc]
	str r0, [r4, #8]
	add r0, r5, #0x4e0000
	str r0, [r4, #4]
	add r0, r1, #0x840000
	str r0, [r4]
	ldmfd sp!, {r3, r4, r5, pc}
_020E80E0: .word 0x020E8B60
_020E80E4: .word 0x00009CCD
_020E80E8: .word 0x0000EA3C
	arm_func_end FUN_ov1_020e8098

	arm_func_start FUN_ov1_020e80ec
FUN_ov1_020e80ec: ; 0x020E80EC
	stmfd sp!, {r3, r4, r5, lr}
	mov r5, #0x2000
	mov r0, r5
	bl FUN_020095ac
	ldr r4, _020E8134 ; =0x020E8BEC
	str r0, [r4, #0x14]
	ldr r0, _020E8138 ; =0x00009CCD
	bl FUN_020095ac
	mov r1, #0x800
	str r0, [r4, #0x10]
	ldr r0, _020E813C ; =0x0000EA3C
	str r1, [r4, #0xc]
	str r0, [r4, #8]
	add r0, r5, #0x4e0000
	str r0, [r4, #4]
	add r0, r1, #0x840000
	str r0, [r4]
	ldmfd sp!, {r3, r4, r5, pc}
_020E8134: .word 0x020E8BEC
_020E8138: .word 0x00009CCD
_020E813C: .word 0x0000EA3C
	arm_func_end FUN_ov1_020e80ec

	arm_func_start FUN_ov1_020e8140
FUN_ov1_020e8140: ; 0x020E8140
	stmfd sp!, {r3, r4, r5, lr}
	mov r5, #0x2000
	mov r0, r5
	bl FUN_020095ac
	ldr r4, _020E8188 ; =0x020E8C8C
	str r0, [r4, #0x14]
	ldr r0, _020E818C ; =0x00009CCD
	bl FUN_020095ac
	mov r1, #0x800
	str r0, [r4, #0x10]
	ldr r0, _020E8190 ; =0x0000EA3C
	str r1, [r4, #0xc]
	str r0, [r4, #8]
	add r0, r5, #0x4e0000
	str r0, [r4, #4]
	add r0, r1, #0x840000
	str r0, [r4]
	ldmfd sp!, {r3, r4, r5, pc}
_020E8188: .word 0x020E8C8C
_020E818C: .word 0x00009CCD
_020E8190: .word 0x0000EA3C
	arm_func_end FUN_ov1_020e8140

	arm_func_start FUN_ov1_020e8194
FUN_ov1_020e8194: ; 0x020E8194
	stmfd sp!, {r3, r4, r5, lr}
	mov r5, #0x2000
	mov r0, r5
	bl FUN_020095ac
	ldr r4, _020E81DC ; =0x020E8D44
	str r0, [r4, #4]
	ldr r0, _020E81E0 ; =0x00009CCD
	bl FUN_020095ac
	mov r1, #0x800
	str r0, [r4, #0x10]
	ldr r0, _020E81E4 ; =0x0000EA3C
	str r1, [r4, #0x14]
	str r0, [r4, #8]
	add r0, r5, #0x4e0000
	str r0, [r4, #0xc]
	add r0, r1, #0x840000
	str r0, [r4]
	ldmfd sp!, {r3, r4, r5, pc}
_020E81DC: .word 0x020E8D44
_020E81E0: .word 0x00009CCD
_020E81E4: .word 0x0000EA3C
	arm_func_end FUN_ov1_020e8194

	arm_func_start FUN_ov1_020e81e8
FUN_ov1_020e81e8: ; 0x020E81E8
	stmfd sp!, {r3, r4, r5, lr}
	mov r5, #0x2000
	mov r0, r5
	bl FUN_020095ac
	ldr r4, _020E8230 ; =0x020E8FCC
	str r0, [r4, #8]
	ldr r0, _020E8234 ; =0x00009CCD
	bl FUN_020095ac
	mov r1, #0x800
	str r0, [r4, #0xc]
	ldr r0, _020E8238 ; =0x0000EA3C
	str r1, [r4]
	str r0, [r4, #4]
	add r0, r5, #0x4e0000
	str r0, [r4, #0x14]
	add r0, r1, #0x840000
	str r0, [r4, #0x10]
	ldmfd sp!, {r3, r4, r5, pc}
_020E8230: .word 0x020E8FCC
_020E8234: .word 0x00009CCD
_020E8238: .word 0x0000EA3C
	arm_func_end FUN_ov1_020e81e8

	arm_func_start FUN_ov1_020e823c
FUN_ov1_020e823c: ; 0x020E823C
	stmfd sp!, {r3, r4, r5, lr}
	mov r5, #0x2000
	mov r0, r5
	bl FUN_020095ac
	ldr r4, _020E8280 ; =0x020E90C0
	str r0, [r4, #0x10]
	ldr r0, _020E8284 ; =0x00009CCD
	bl FUN_020095ac
	str r0, [r4, #0xc]
	ldr r0, _020E8288 ; =0x0000EA3C
	mov r1, #0x800
	stmib r4, {r0, r1}
	add r0, r5, #0x4e0000
	str r0, [r4]
	add r0, r1, #0x840000
	str r0, [r4, #0x14]
	ldmfd sp!, {r3, r4, r5, pc}
_020E8280: .word 0x020E90C0
_020E8284: .word 0x00009CCD
_020E8288: .word 0x0000EA3C
	arm_func_end FUN_ov1_020e823c

	arm_func_start FUN_ov1_020e828c
FUN_ov1_020e828c: ; 0x020E828C
	stmfd sp!, {r3, r4, r5, lr}
	mov r5, #0x2000
	mov r0, r5
	bl FUN_020095ac
	ldr r4, _020E82D0 ; =0x020E90E4
	str r0, [r4, #0x10]
	ldr r0, _020E82D4 ; =0x00009CCD
	bl FUN_020095ac
	str r0, [r4, #0xc]
	ldr r0, _020E82D8 ; =0x0000EA3C
	mov r1, #0x800
	stmib r4, {r0, r1}
	add r0, r5, #0x4e0000
	str r0, [r4]
	add r0, r1, #0x840000
	str r0, [r4, #0x14]
	ldmfd sp!, {r3, r4, r5, pc}
_020E82D0: .word 0x020E90E4
_020E82D4: .word 0x00009CCD
_020E82D8: .word 0x0000EA3C
	arm_func_end FUN_ov1_020e828c

	arm_func_start FUN_ov1_020e82dc
FUN_ov1_020e82dc: ; 0x020E82DC
	stmfd sp!, {r3, r4, r5, lr}
	mov r5, #0x2000
	mov r0, r5
	bl FUN_020095ac
	ldr r4, _020E8324 ; =0x020E90FC
	str r0, [r4, #0xc]
	ldr r0, _020E8328 ; =0x00009CCD
	bl FUN_020095ac
	mov r1, #0x800
	str r0, [r4, #0x14]
	ldr r0, _020E832C ; =0x0000EA3C
	str r1, [r4]
	str r0, [r4, #4]
	add r0, r5, #0x4e0000
	str r0, [r4, #8]
	add r0, r1, #0x840000
	str r0, [r4, #0x10]
	ldmfd sp!, {r3, r4, r5, pc}
_020E8324: .word 0x020E90FC
_020E8328: .word 0x00009CCD
_020E832C: .word 0x0000EA3C
	arm_func_end FUN_ov1_020e82dc

	arm_func_start FUN_ov1_020e8330
FUN_ov1_020e8330: ; 0x020E8330
	stmfd sp!, {r3, r4, r5, lr}
	mov r5, #0x2000
	mov r0, r5
	bl FUN_020095ac
	ldr r4, _020E8378 ; =0x020E9454
	str r0, [r4, #0x14]
	ldr r0, _020E837C ; =0x00009CCD
	bl FUN_020095ac
	mov r1, #0x800
	str r0, [r4, #0x10]
	ldr r0, _020E8380 ; =0x0000EA3C
	str r1, [r4, #0xc]
	str r0, [r4, #8]
	add r0, r5, #0x4e0000
	str r0, [r4, #4]
	add r0, r1, #0x840000
	str r0, [r4]
	ldmfd sp!, {r3, r4, r5, pc}
_020E8378: .word 0x020E9454
_020E837C: .word 0x00009CCD
_020E8380: .word 0x0000EA3C
	arm_func_end FUN_ov1_020e8330

_020E8384:
	.byte 0x58, 0x7d, 0x0e, 0x02, 0xac, 0x7d, 0x0e, 0x02, 0x00, 0x7e, 0x0e, 0x02, 0x50, 0x7e, 0x0e, 0x02 ; 020E8384
	.byte 0xa4, 0x7e, 0x0e, 0x02, 0xf8, 0x7e, 0x0e, 0x02, 0x4c, 0x7f, 0x0e, 0x02, 0xa0, 0x7f, 0x0e, 0x02 ; 020E8394
	.byte 0xf0, 0x7f, 0x0e, 0x02, 0x44, 0x80, 0x0e, 0x02, 0x98, 0x80, 0x0e, 0x02, 0xec, 0x80, 0x0e, 0x02 ; 020E83A4
	.byte 0x40, 0x81, 0x0e, 0x02, 0x94, 0x81, 0x0e, 0x02, 0xe8, 0x81, 0x0e, 0x02, 0x3c, 0x82, 0x0e, 0x02 ; 020E83B4
	.byte 0x8c, 0x82, 0x0e, 0x02, 0xdc, 0x82, 0x0e, 0x02, 0x30, 0x83, 0x0e, 0x02, 0x00, 0x00, 0x00, 0x00 ; 020E83C4
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00 ; 020E83D4
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00 ; 020E83E4
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x3c, 0xe5, 0x0b, 0x02 ; 020E83F4
	.byte 0x14, 0xe5, 0x0b, 0x02, 0xd4, 0xcf, 0x0b, 0x02, 0xa4, 0xe4, 0x0b, 0x02, 0xf0, 0xce, 0x0b, 0x02 ; 020E8404
	.byte 0x64, 0x1b, 0x04, 0x02, 0xec, 0x1b, 0x04, 0x02, 0x6c, 0xd5, 0x0b, 0x02, 0x54, 0xcf, 0x0b, 0x02 ; 020E8414
	.byte 0xc8, 0x1c, 0x04, 0x02, 0xd4, 0xe4, 0x0b, 0x02, 0x98, 0xd5, 0x0b, 0x02, 0xbc, 0x20, 0x04, 0x02 ; 020E8424
	.byte 0x4c, 0xe1, 0x0b, 0x02, 0xd4, 0x1d, 0x04, 0x02, 0xf8, 0x1d, 0x04, 0x02, 0x1c, 0x1e, 0x04, 0x02 ; 020E8434
	.byte 0x40, 0x1e, 0x04, 0x02, 0x64, 0x1e, 0x04, 0x02, 0x88, 0x1e, 0x04, 0x02, 0x70, 0x69, 0x63, 0x32 ; 020E8444
	.byte 0x64, 0x2f, 0x53, 0x54, 0x53, 0x57, 0x69, 0x63, 0x2e, 0x53, 0x50, 0x46, 0x5f, 0x00, 0x00, 0x00 ; 020E8454
	.byte 0x77, 0x6d, 0x75, 0x70, 0x5f, 0x62, 0x67, 0x30, 0x30, 0x2e, 0x70, 0x61, 0x63, 0x00, 0x00, 0x00 ; 020E8464
	.byte 0x70, 0x69, 0x63, 0x33, 0x64, 0x2f, 0x6d, 0x66, 0x00, 0x00, 0x00, 0x00, 0x70, 0x69, 0x63, 0x33 ; 020E8474
	.byte 0x64, 0x2f, 0x6d, 0x62, 0x64, 0x5f, 0x73, 0x00, 0x70, 0x69, 0x63, 0x33, 0x64, 0x2f, 0x73, 0x63 ; 020E8484
	.byte 0x72, 0x69, 0x70, 0x74, 0x2f, 0x6d, 0x62, 0x76, 0x5f, 0x63, 0x00, 0x00, 0x70, 0x69, 0x63, 0x33 ; 020E8494
	.byte 0x64, 0x2f, 0x73, 0x63, 0x72, 0x69, 0x70, 0x74, 0x2f, 0x74, 0x63, 0x76, 0x5f, 0x63, 0x00, 0x00 ; 020E84A4
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00 ; 020E84B4
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00 ; 020E84C4
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00 ; 020E84D4
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00 ; 020E84E4
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00 ; 020E84F4
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00 ; 020E8504
	.byte 0x77, 0x63, 0x5f, 0x62, 0x30, 0x31, 0x2e, 0x70, 0x61, 0x63, 0x00, 0x00, 0x77, 0x63, 0x5f, 0x62 ; 020E8514
	.byte 0x30, 0x30, 0x2e, 0x70, 0x61, 0x63, 0x00, 0x00, 0x77, 0x63, 0x5f, 0x6d, 0x73, 0x67, 0x2e, 0x70 ; 020E8524
	.byte 0x61, 0x63, 0x00, 0x00, 0x77, 0x63, 0x5f, 0x69, 0x30, 0x30, 0x2e, 0x70, 0x61, 0x63, 0x00, 0x00 ; 020E8534
	.byte 0x77, 0x63, 0x5f, 0x69, 0x30, 0x31, 0x2e, 0x70, 0x61, 0x63, 0x00, 0x00, 0x77, 0x63, 0x5f, 0x69 ; 020E8544
	.byte 0x30, 0x32, 0x2e, 0x70, 0x61, 0x63, 0x00, 0x00, 0x6d, 0x62, 0x64, 0x5f, 0x63, 0x31, 0x39, 0x2e ; 020E8554
	.byte 0x70, 0x61, 0x63, 0x00, 0x6d, 0x62, 0x64, 0x5f, 0x63, 0x32, 0x30, 0x2e, 0x70, 0x61, 0x63, 0x00 ; 020E8564
	.byte 0x6d, 0x62, 0x64, 0x5f, 0x63, 0x31, 0x33, 0x2e, 0x70, 0x61, 0x63, 0x00, 0x6d, 0x62, 0x64, 0x5f ; 020E8574
	.byte 0x63, 0x32, 0x32, 0x2e, 0x70, 0x61, 0x63, 0x00, 0x6d, 0x62, 0x64, 0x5f, 0x63, 0x30, 0x31, 0x2e ; 020E8584
	.byte 0x70, 0x61, 0x63, 0x00, 0x6d, 0x62, 0x64, 0x5f, 0x63, 0x30, 0x32, 0x2e, 0x70, 0x61, 0x63, 0x00 ; 020E8594
	.byte 0x6d, 0x62, 0x64, 0x5f, 0x63, 0x30, 0x33, 0x2e, 0x70, 0x61, 0x63, 0x00, 0x6d, 0x62, 0x64, 0x5f ; 020E85A4
	.byte 0x7a, 0x30, 0x30, 0x2e, 0x70, 0x61, 0x63, 0x00, 0x6d, 0x62, 0x64, 0x5f, 0x63, 0x31, 0x34, 0x2e ; 020E85B4
	.byte 0x70, 0x61, 0x63, 0x00, 0x6d, 0x62, 0x64, 0x5f, 0x63, 0x30, 0x38, 0x2e, 0x70, 0x61, 0x63, 0x00 ; 020E85C4
	.byte 0x6d, 0x62, 0x64, 0x5f, 0x63, 0x30, 0x39, 0x2e, 0x70, 0x61, 0x63, 0x00, 0x6d, 0x62, 0x64, 0x5f ; 020E85D4
	.byte 0x63, 0x31, 0x32, 0x2e, 0x70, 0x61, 0x63, 0x00, 0x74, 0x63, 0x64, 0x5f, 0x62, 0x30, 0x30, 0x2e ; 020E85E4
	.byte 0x70, 0x61, 0x63, 0x00, 0x6d, 0x62, 0x64, 0x5f, 0x63, 0x31, 0x35, 0x2e, 0x70, 0x61, 0x63, 0x00 ; 020E85F4
	.byte 0x74, 0x63, 0x64, 0x5f, 0x62, 0x30, 0x31, 0x2e, 0x70, 0x61, 0x63, 0x00, 0x6d, 0x62, 0x64, 0x5f ; 020E8604
	.byte 0x63, 0x32, 0x34, 0x2e, 0x70, 0x61, 0x63, 0x00, 0x6d, 0x62, 0x64, 0x5f, 0x63, 0x31, 0x37, 0x2e ; 020E8614
	.byte 0x70, 0x61, 0x63, 0x00, 0x6d, 0x62, 0x64, 0x5f, 0x63, 0x31, 0x38, 0x2e, 0x70, 0x61, 0x63, 0x00 ; 020E8624
	.byte 0x67, 0x6d, 0x64, 0x6e, 0x5f, 0x72, 0x30, 0x31, 0x2e, 0x70, 0x61, 0x63, 0x00, 0x00, 0x00, 0x00 ; 020E8634
	.byte 0x67, 0x6d, 0x64, 0x6e, 0x5f, 0x75, 0x30, 0x37, 0x2e, 0x70, 0x61, 0x63, 0x00, 0x00, 0x00, 0x00 ; 020E8644
	.byte 0x67, 0x6d, 0x64, 0x6e, 0x5f, 0x75, 0x30, 0x38, 0x2e, 0x70, 0x61, 0x63, 0x00, 0x00, 0x00, 0x00 ; 020E8654
	.byte 0x67, 0x6d, 0x64, 0x6e, 0x5f, 0x75, 0x31, 0x31, 0x2e, 0x70, 0x61, 0x63, 0x00, 0x00, 0x00, 0x00 ; 020E8664
	.byte 0x67, 0x6d, 0x64, 0x6e, 0x5f, 0x75, 0x30, 0x39, 0x2e, 0x70, 0x61, 0x63, 0x00, 0x00, 0x00, 0x00 ; 020E8674
	.byte 0x67, 0x6d, 0x64, 0x6e, 0x5f, 0x75, 0x30, 0x30, 0x2e, 0x70, 0x61, 0x63, 0x00, 0x00, 0x00, 0x00 ; 020E8684
	.byte 0x67, 0x6d, 0x64, 0x6e, 0x5f, 0x75, 0x30, 0x31, 0x2e, 0x70, 0x61, 0x63, 0x00, 0x00, 0x00, 0x00 ; 020E8694
	.byte 0x67, 0x6d, 0x64, 0x6e, 0x5f, 0x75, 0x30, 0x34, 0x2e, 0x70, 0x61, 0x63, 0x00, 0x00, 0x00, 0x00 ; 020E86A4
	.byte 0x67, 0x6d, 0x64, 0x6e, 0x5f, 0x75, 0x30, 0x35, 0x2e, 0x70, 0x61, 0x63, 0x00, 0x00, 0x00, 0x00 ; 020E86B4
	.byte 0x67, 0x6d, 0x64, 0x6e, 0x5f, 0x75, 0x30, 0x36, 0x2e, 0x70, 0x61, 0x63, 0x00, 0x00, 0x00, 0x00 ; 020E86C4
	.byte 0x67, 0x6d, 0x64, 0x6e, 0x5f, 0x75, 0x30, 0x32, 0x2e, 0x70, 0x61, 0x63, 0x00, 0x00, 0x00, 0x00 ; 020E86D4
	.byte 0x67, 0x6d, 0x64, 0x6e, 0x5f, 0x75, 0x31, 0x30, 0x2e, 0x70, 0x61, 0x63, 0x00, 0x00, 0x00, 0x00 ; 020E86E4
	.byte 0x74, 0x63, 0x64, 0x5f, 0x63, 0x30, 0x30, 0x30, 0x62, 0x2e, 0x70, 0x61, 0x63, 0x00, 0x00, 0x00 ; 020E86F4
	.byte 0x74, 0x63, 0x64, 0x5f, 0x63, 0x30, 0x30, 0x30, 0x70, 0x2e, 0x70, 0x61, 0x63, 0x00, 0x00, 0x00 ; 020E8704
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x70, 0xa2, 0x02, 0x02, 0xa8, 0x0e, 0x0d, 0x02 ; 020E8714
	.byte 0x38, 0xea, 0x0c, 0x02, 0x14, 0x01, 0x0d, 0x02, 0x74, 0x35, 0x0c, 0x02, 0xc4, 0x0e, 0x0d, 0x02 ; 020E8724
	.byte 0xac, 0x31, 0x0c, 0x02, 0xd4, 0x32, 0x0c, 0x02, 0x7c, 0x37, 0x0c, 0x02, 0xd0, 0xa6, 0x0c, 0x02 ; 020E8734
	.byte 0x00, 0xb2, 0x02, 0x02, 0x04, 0xac, 0x0c, 0x02, 0x48, 0xa7, 0x0c, 0x02, 0xf0, 0xab, 0x0c, 0x02 ; 020E8744
	.byte 0x74, 0xaa, 0x0c, 0x02, 0x20, 0xb3, 0x02, 0x02, 0x10, 0xb3, 0x02, 0x02, 0x04, 0xb3, 0x02, 0x02 ; 020E8754
	.byte 0xf8, 0xb2, 0x02, 0x02, 0xe8, 0xb2, 0x02, 0x02, 0xd8, 0xb2, 0x02, 0x02, 0xc8, 0xb2, 0x02, 0x02 ; 020E8764
	.byte 0xbc, 0xb2, 0x02, 0x02, 0xb0, 0xb2, 0x02, 0x02, 0xd8, 0xb1, 0x02, 0x02, 0xd0, 0xb1, 0x02, 0x02 ; 020E8774
	.byte 0xbc, 0x0e, 0x0d, 0x02, 0x00, 0xe6, 0x0b, 0x02, 0x5c, 0xe5, 0x0b, 0x02, 0xbc, 0xe5, 0x0b, 0x02 ; 020E8784
	.byte 0xe0, 0xe5, 0x0b, 0x02, 0xc4, 0xc2, 0x0c, 0x02, 0x6d, 0x62, 0x64, 0x5f, 0x63, 0x30, 0x30, 0x30 ; 020E8794
	.byte 0x62, 0x2e, 0x70, 0x61, 0x63, 0x00, 0x00, 0x00, 0x6d, 0x62, 0x64, 0x5f, 0x63, 0x30, 0x30, 0x30 ; 020E87A4
	.byte 0x73, 0x2e, 0x70, 0x61, 0x63, 0x00, 0x00, 0x00, 0x6d, 0x62, 0x64, 0x5f, 0x63, 0x30, 0x30, 0x30 ; 020E87B4
	.byte 0x70, 0x2e, 0x70, 0x61, 0x63, 0x00, 0x00, 0x00, 0x67, 0x6d, 0x64, 0x6e, 0x5f, 0x73, 0x2e, 0x70 ; 020E87C4
	.byte 0x6b, 0x68, 0x00, 0x00, 0x4d, 0x50, 0x53, 0x41, 0x63, 0x74, 0x2e, 0x53, 0x50, 0x46, 0x5f, 0x00 ; 020E87D4
	.byte 0x6d, 0x62, 0x64, 0x5f, 0x63, 0x2e, 0x70, 0x6b, 0x68, 0x00, 0x00, 0x00, 0x74, 0x63, 0x64, 0x5f ; 020E87E4
	.byte 0x63, 0x2e, 0x70, 0x6b, 0x68, 0x00, 0x00, 0x00, 0x67, 0x6d, 0x64, 0x6e, 0x5f, 0x73, 0x2e, 0x70 ; 020E87F4
	.byte 0x6b, 0x62, 0x00, 0x00, 0x67, 0x6d, 0x64, 0x6e, 0x5f, 0x73, 0x2e, 0x70, 0x6b, 0x62, 0x00, 0x00 ; 020E8804
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00 ; 020E8814
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x70, 0x6b, 0x64, 0x6e, 0x5f, 0x63, 0x30, 0x31 ; 020E8824
	.byte 0x2e, 0x70, 0x61, 0x63, 0x00, 0x00, 0x00, 0x00, 0x70, 0x6b, 0x64, 0x6e, 0x5f, 0x63, 0x30, 0x32 ; 020E8834
	.byte 0x2e, 0x70, 0x61, 0x63, 0x00, 0x00, 0x00, 0x00, 0x70, 0x6b, 0x64, 0x6e, 0x5f, 0x63, 0x30, 0x33 ; 020E8844
	.byte 0x2e, 0x70, 0x61, 0x63, 0x00, 0x00, 0x00, 0x00, 0x70, 0x6b, 0x64, 0x6e, 0x5f, 0x63, 0x30, 0x34 ; 020E8854
	.byte 0x2e, 0x70, 0x61, 0x63, 0x00, 0x00, 0x00, 0x00, 0x70, 0x6b, 0x64, 0x6e, 0x5f, 0x6e, 0x30, 0x31 ; 020E8864
	.byte 0x2e, 0x70, 0x61, 0x63, 0x00, 0x00, 0x00, 0x00, 0x4d, 0x50, 0x53, 0x41, 0x63, 0x74, 0x50, 0x6b ; 020E8874
	.byte 0x2e, 0x53, 0x50, 0x46, 0x5f, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00 ; 020E8884
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00 ; 020E8894
	.byte 0x6d, 0x62, 0x64, 0x5f, 0x67, 0x30, 0x33, 0x2e, 0x70, 0x61, 0x63, 0x00, 0x6d, 0x62, 0x64, 0x5f ; 020E88A4
	.byte 0x63, 0x31, 0x36, 0x2e, 0x70, 0x61, 0x63, 0x00, 0x6d, 0x62, 0x64, 0x5f, 0x67, 0x30, 0x31, 0x2e ; 020E88B4
	.byte 0x70, 0x61, 0x63, 0x00, 0x6d, 0x62, 0x64, 0x5f, 0x67, 0x30, 0x32, 0x2e, 0x70, 0x61, 0x63, 0x00 ; 020E88C4
	.byte 0x6d, 0x62, 0x64, 0x5f, 0x63, 0x2e, 0x70, 0x6b, 0x62, 0x00, 0x00, 0x00, 0x6d, 0x62, 0x64, 0x5f ; 020E88D4
	.byte 0x63, 0x31, 0x31, 0x2e, 0x70, 0x61, 0x63, 0x5f, 0x00, 0x00, 0x00, 0x00, 0x6d, 0x62, 0x64, 0x5f ; 020E88E4
	.byte 0x63, 0x2e, 0x70, 0x6b, 0x62, 0x00, 0x00, 0x00, 0x6d, 0x62, 0x64, 0x5f, 0x63, 0x31, 0x31, 0x2e ; 020E88F4
	.byte 0x70, 0x61, 0x63, 0x5f, 0x00, 0x00, 0x00, 0x00, 0x6d, 0x62, 0x64, 0x5f, 0x63, 0x2e, 0x70, 0x6b ; 020E8904
	.byte 0x62, 0x00, 0x00, 0x00, 0x73, 0x62, 0x5f, 0x67, 0x30, 0x31, 0x2e, 0x70, 0x61, 0x63, 0x5f, 0x00 ; 020E8914
	.byte 0x73, 0x62, 0x5f, 0x67, 0x30, 0x32, 0x2e, 0x70, 0x61, 0x63, 0x5f, 0x00, 0x73, 0x62, 0x5f, 0x6e ; 020E8924
	.byte 0x30, 0x31, 0x2e, 0x70, 0x61, 0x63, 0x5f, 0x00, 0x6d, 0x62, 0x64, 0x5f, 0x63, 0x31, 0x31, 0x2e ; 020E8934
	.byte 0x70, 0x61, 0x63, 0x5f, 0x00, 0x00, 0x00, 0x00, 0x6d, 0x62, 0x64, 0x5f, 0x63, 0x32, 0x33, 0x2e ; 020E8944
	.byte 0x70, 0x61, 0x63, 0x5f, 0x00, 0x00, 0x00, 0x00, 0x6d, 0x62, 0x64, 0x5f, 0x63, 0x32, 0x31, 0x2e ; 020E8954
	.byte 0x70, 0x61, 0x63, 0x5f, 0x00, 0x00, 0x00, 0x00, 0x6d, 0x62, 0x64, 0x5f, 0x63, 0x31, 0x31, 0x2e ; 020E8964
	.byte 0x70, 0x61, 0x63, 0x5f, 0x00, 0x00, 0x00, 0x00, 0x74, 0x63, 0x64, 0x5f, 0x69, 0x30, 0x30, 0x2e ; 020E8974
	.byte 0x70, 0x61, 0x63, 0x00, 0x74, 0x63, 0x64, 0x5f, 0x63, 0x2e, 0x70, 0x6b, 0x62, 0x00, 0x00, 0x00 ; 020E8984
	.byte 0x6d, 0x62, 0x64, 0x5f, 0x63, 0x2e, 0x70, 0x6b, 0x62, 0x00, 0x00, 0x00, 0x6d, 0x62, 0x64, 0x5f ; 020E8994
	.byte 0x63, 0x31, 0x31, 0x2e, 0x70, 0x61, 0x63, 0x5f, 0x00, 0x00, 0x00, 0x00, 0x6d, 0x62, 0x64, 0x5f ; 020E89A4
	.byte 0x63, 0x30, 0x30, 0x30, 0x73, 0x2e, 0x70, 0x61, 0x63, 0x00, 0x00, 0x00, 0x4d, 0x50, 0x53, 0x41 ; 020E89B4
	.byte 0x63, 0x74, 0x53, 0x50, 0x6f, 0x77, 0x2e, 0x53, 0x50, 0x46, 0x5f, 0x00, 0x6d, 0x62, 0x64, 0x5f ; 020E89C4
	.byte 0x7a, 0x30, 0x31, 0x2e, 0x70, 0x61, 0x63, 0x5f, 0x00, 0x00, 0x00, 0x00, 0x6d, 0x62, 0x64, 0x5f ; 020E89D4
	.byte 0x7a, 0x30, 0x32, 0x2e, 0x70, 0x61, 0x63, 0x5f, 0x00, 0x00, 0x00, 0x00, 0x6d, 0x62, 0x64, 0x5f ; 020E89E4
	.byte 0x7a, 0x30, 0x33, 0x2e, 0x70, 0x61, 0x63, 0x5f, 0x00, 0x00, 0x00, 0x00, 0x6d, 0x62, 0x64, 0x5f ; 020E89F4
	.byte 0x7a, 0x30, 0x34, 0x2e, 0x70, 0x61, 0x63, 0x5f, 0x00, 0x00, 0x00, 0x00, 0x6d, 0x62, 0x64, 0x5f ; 020E8A04
	.byte 0x7a, 0x30, 0x35, 0x2e, 0x70, 0x61, 0x63, 0x5f, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00 ; 020E8A14
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00 ; 020E8A24
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00 ; 020E8A34
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00 ; 020E8A44
	.byte 0x00, 0x00, 0x00, 0x00, 0x80, 0xa2, 0x02, 0x02, 0x7c, 0x84, 0x0d, 0x02, 0xec, 0x83, 0x0d, 0x02 ; 020E8A54
	.byte 0x08, 0x84, 0x0d, 0x02, 0x0c, 0x84, 0x0d, 0x02, 0x08, 0xb2, 0x02, 0x02, 0x30, 0x84, 0x0d, 0x02 ; 020E8A64
	.byte 0x48, 0x84, 0x0d, 0x02, 0x54, 0x84, 0x0d, 0x02, 0x04, 0xb2, 0x02, 0x02, 0x00, 0xb2, 0x02, 0x02 ; 020E8A74
	.byte 0xf8, 0xb1, 0x02, 0x02, 0xf0, 0xb1, 0x02, 0x02, 0xe8, 0xb1, 0x02, 0x02, 0xe0, 0xb1, 0x02, 0x02 ; 020E8A84
	.byte 0x20, 0xb3, 0x02, 0x02, 0x10, 0xb3, 0x02, 0x02, 0x04, 0xb3, 0x02, 0x02, 0xf8, 0xb2, 0x02, 0x02 ; 020E8A94
	.byte 0xe8, 0xb2, 0x02, 0x02, 0xd8, 0xb2, 0x02, 0x02, 0xc8, 0xb2, 0x02, 0x02, 0xbc, 0xb2, 0x02, 0x02 ; 020E8AA4
	.byte 0xb0, 0xb2, 0x02, 0x02, 0xd8, 0xb1, 0x02, 0x02, 0xd0, 0xb1, 0x02, 0x02, 0xc8, 0xb1, 0x02, 0x02 ; 020E8AB4
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00 ; 020E8AC4
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00 ; 020E8AD4
	.byte 0x78, 0xa2, 0x02, 0x02, 0x9c, 0x87, 0x0d, 0x02, 0xb4, 0x87, 0x0d, 0x02, 0xb0, 0x87, 0x0d, 0x02 ; 020E8AE4
	.byte 0xa4, 0x84, 0x0d, 0x02, 0x08, 0xb2, 0x02, 0x02, 0xb8, 0x85, 0x0d, 0x02, 0xbc, 0x85, 0x0d, 0x02 ; 020E8AF4
	.byte 0xc0, 0x85, 0x0d, 0x02, 0x90, 0x84, 0x0d, 0x02, 0x00, 0xb2, 0x02, 0x02, 0xf8, 0xb1, 0x02, 0x02 ; 020E8B04
	.byte 0xf0, 0xb1, 0x02, 0x02, 0xe8, 0xb1, 0x02, 0x02, 0xe0, 0xb1, 0x02, 0x02, 0x20, 0xb3, 0x02, 0x02 ; 020E8B14
	.byte 0x10, 0xb3, 0x02, 0x02, 0x04, 0xb3, 0x02, 0x02, 0xf8, 0xb2, 0x02, 0x02, 0xe8, 0xb2, 0x02, 0x02 ; 020E8B24
	.byte 0xd8, 0xb2, 0x02, 0x02, 0xc8, 0xb2, 0x02, 0x02, 0xbc, 0xb2, 0x02, 0x02, 0xb0, 0xb2, 0x02, 0x02 ; 020E8B34
	.byte 0xd8, 0xb1, 0x02, 0x02, 0xd0, 0xb1, 0x02, 0x02, 0xc8, 0xb1, 0x02, 0x02, 0x00, 0xe6, 0x0b, 0x02 ; 020E8B44
	.byte 0x5c, 0xe5, 0x0b, 0x02, 0xbc, 0xe5, 0x0b, 0x02, 0xe0, 0xe5, 0x0b, 0x02, 0x00, 0x00, 0x00, 0x00 ; 020E8B54
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00 ; 020E8B64
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x7c, 0xa2, 0x02, 0x02 ; 020E8B74
	.byte 0x88, 0x88, 0x0d, 0x02, 0xa4, 0x88, 0x0d, 0x02, 0xa0, 0x88, 0x0d, 0x02, 0xb8, 0x87, 0x0d, 0x02 ; 020E8B84
	.byte 0x08, 0xb2, 0x02, 0x02, 0x08, 0x88, 0x0d, 0x02, 0x9c, 0x88, 0x0d, 0x02, 0xec, 0x87, 0x0d, 0x02 ; 020E8B94
	.byte 0x04, 0xb2, 0x02, 0x02, 0x00, 0xb2, 0x02, 0x02, 0xf8, 0xb1, 0x02, 0x02, 0xf0, 0xb1, 0x02, 0x02 ; 020E8BA4
	.byte 0xe8, 0xb1, 0x02, 0x02, 0xe0, 0xb1, 0x02, 0x02, 0x20, 0xb3, 0x02, 0x02, 0x10, 0xb3, 0x02, 0x02 ; 020E8BB4
	.byte 0x04, 0xb3, 0x02, 0x02, 0xf8, 0xb2, 0x02, 0x02, 0xe8, 0xb2, 0x02, 0x02, 0xd8, 0xb2, 0x02, 0x02 ; 020E8BC4
	.byte 0xc8, 0xb2, 0x02, 0x02, 0xbc, 0xb2, 0x02, 0x02, 0xb0, 0xb2, 0x02, 0x02, 0xd8, 0xb1, 0x02, 0x02 ; 020E8BD4
	.byte 0xd0, 0xb1, 0x02, 0x02, 0xc8, 0xb1, 0x02, 0x02, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00 ; 020E8BE4
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00 ; 020E8BF4
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x74, 0xa2, 0x02, 0x02, 0xb0, 0x88, 0x0d, 0x02 ; 020E8C04
	.byte 0x38, 0xea, 0x0c, 0x02, 0x14, 0x01, 0x0d, 0x02, 0x74, 0x35, 0x0c, 0x02, 0xc4, 0x0e, 0x0d, 0x02 ; 020E8C14
	.byte 0xac, 0x31, 0x0c, 0x02, 0xd4, 0x32, 0x0c, 0x02, 0x7c, 0x37, 0x0c, 0x02, 0xd0, 0xa6, 0x0c, 0x02 ; 020E8C24
	.byte 0x00, 0xb2, 0x02, 0x02, 0x04, 0xac, 0x0c, 0x02, 0x48, 0xa7, 0x0c, 0x02, 0xf0, 0xab, 0x0c, 0x02 ; 020E8C34
	.byte 0x74, 0xaa, 0x0c, 0x02, 0x20, 0xb3, 0x02, 0x02, 0x10, 0xb3, 0x02, 0x02, 0x04, 0xb3, 0x02, 0x02 ; 020E8C44
	.byte 0xf8, 0xb2, 0x02, 0x02, 0xe8, 0xb2, 0x02, 0x02, 0xd8, 0xb2, 0x02, 0x02, 0xc8, 0xb2, 0x02, 0x02 ; 020E8C54
	.byte 0xbc, 0xb2, 0x02, 0x02, 0xb0, 0xb2, 0x02, 0x02, 0xd8, 0xb1, 0x02, 0x02, 0xd0, 0xb1, 0x02, 0x02 ; 020E8C64
	.byte 0xbc, 0x0e, 0x0d, 0x02, 0x00, 0xe6, 0x0b, 0x02, 0x5c, 0xe5, 0x0b, 0x02, 0xbc, 0xe5, 0x0b, 0x02 ; 020E8C74
	.byte 0xe0, 0xe5, 0x0b, 0x02, 0xa8, 0x88, 0x0d, 0x02, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00 ; 020E8C84
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00 ; 020E8C94
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0xf0, 0x90, 0x0d, 0x02, 0xdc, 0x90, 0x0d, 0x02 ; 020E8CA4
	.byte 0xe8, 0xa8, 0x11, 0x02, 0xc8, 0xaf, 0x11, 0x02, 0x80, 0x8e, 0x0d, 0x02, 0x08, 0xb2, 0x02, 0x02 ; 020E8CB4
	.byte 0x14, 0x8f, 0x0d, 0x02, 0x2c, 0x8f, 0x0d, 0x02, 0x38, 0x8f, 0x0d, 0x02, 0xc4, 0x88, 0x0d, 0x02 ; 020E8CC4
	.byte 0x00, 0xb2, 0x02, 0x02, 0xf8, 0xb1, 0x02, 0x02, 0xf0, 0xb1, 0x02, 0x02, 0xe8, 0xb1, 0x02, 0x02 ; 020E8CD4
	.byte 0xe0, 0xb1, 0x02, 0x02, 0x20, 0xb3, 0x02, 0x02, 0x10, 0xb3, 0x02, 0x02, 0x04, 0xb3, 0x02, 0x02 ; 020E8CE4
	.byte 0xf8, 0xb2, 0x02, 0x02, 0xe8, 0xb2, 0x02, 0x02, 0xd8, 0xb2, 0x02, 0x02, 0xc8, 0xb2, 0x02, 0x02 ; 020E8CF4
	.byte 0xbc, 0xb2, 0x02, 0x02, 0xb0, 0xb2, 0x02, 0x02, 0xd8, 0xb1, 0x02, 0x02, 0xd0, 0xb1, 0x02, 0x02 ; 020E8D04
	.byte 0xc8, 0xb1, 0x02, 0x02, 0xa8, 0x8a, 0x0d, 0x02, 0xf0, 0x89, 0x0d, 0x02, 0xd8, 0x88, 0x0d, 0x02 ; 020E8D14
	.byte 0x44, 0x89, 0x0d, 0x02, 0xe4, 0x88, 0x0d, 0x02, 0x4c, 0xa0, 0x11, 0x02, 0x70, 0xa0, 0x11, 0x02 ; 020E8D24
	.byte 0x28, 0xa2, 0x11, 0x02, 0x44, 0x8f, 0x0d, 0x02, 0x54, 0x89, 0x0d, 0x02, 0x90, 0x89, 0x0d, 0x02 ; 020E8D34
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00 ; 020E8D44
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x6d, 0x62, 0x75, 0x5f, 0x70, 0x30, 0x39, 0x2e ; 020E8D54
	.byte 0x70, 0x61, 0x63, 0x00, 0x6d, 0x62, 0x75, 0x5f, 0x70, 0x31, 0x33, 0x2e, 0x70, 0x61, 0x63, 0x00 ; 020E8D64
	.byte 0x6d, 0x62, 0x75, 0x5f, 0x70, 0x30, 0x34, 0x2e, 0x70, 0x61, 0x63, 0x00, 0x6d, 0x62, 0x75, 0x5f ; 020E8D74
	.byte 0x70, 0x30, 0x35, 0x2e, 0x70, 0x61, 0x63, 0x00, 0x6d, 0x62, 0x75, 0x5f, 0x70, 0x30, 0x36, 0x2e ; 020E8D84
	.byte 0x70, 0x61, 0x63, 0x00, 0x6d, 0x62, 0x75, 0x5f, 0x70, 0x31, 0x30, 0x2e, 0x70, 0x61, 0x63, 0x00 ; 020E8D94
	.byte 0x6d, 0x62, 0x75, 0x5f, 0x70, 0x30, 0x33, 0x2e, 0x70, 0x61, 0x63, 0x00, 0x6d, 0x62, 0x75, 0x5f ; 020E8DA4
	.byte 0x70, 0x30, 0x32, 0x2e, 0x70, 0x61, 0x63, 0x00, 0x6d, 0x62, 0x75, 0x5f, 0x70, 0x31, 0x31, 0x2e ; 020E8DB4
	.byte 0x70, 0x61, 0x63, 0x00, 0x6d, 0x62, 0x75, 0x5f, 0x7a, 0x30, 0x35, 0x2e, 0x70, 0x61, 0x63, 0x00 ; 020E8DC4
	.byte 0x6d, 0x62, 0x75, 0x5f, 0x70, 0x30, 0x37, 0x2e, 0x70, 0x61, 0x63, 0x00, 0x6d, 0x62, 0x75, 0x5f ; 020E8DD4
	.byte 0x70, 0x31, 0x32, 0x2e, 0x70, 0x61, 0x63, 0x00, 0x6d, 0x62, 0x75, 0x5f, 0x7a, 0x30, 0x34, 0x2e ; 020E8DE4
	.byte 0x70, 0x61, 0x63, 0x00, 0x6d, 0x62, 0x75, 0x5f, 0x7a, 0x30, 0x33, 0x2e, 0x70, 0x61, 0x63, 0x00 ; 020E8DF4
	.byte 0x6d, 0x62, 0x75, 0x5f, 0x7a, 0x30, 0x32, 0x2e, 0x70, 0x61, 0x63, 0x00, 0x6d, 0x62, 0x75, 0x5f ; 020E8E04
	.byte 0x7a, 0x30, 0x31, 0x2e, 0x70, 0x61, 0x63, 0x00, 0x6d, 0x62, 0x75, 0x5f, 0x70, 0x30, 0x30, 0x2e ; 020E8E14
	.byte 0x70, 0x61, 0x63, 0x00, 0x6d, 0x62, 0x75, 0x5f, 0x6e, 0x30, 0x30, 0x2e, 0x70, 0x61, 0x63, 0x00 ; 020E8E24
	.byte 0x6d, 0x62, 0x75, 0x5f, 0x6e, 0x30, 0x37, 0x2e, 0x70, 0x61, 0x63, 0x00, 0x6d, 0x62, 0x75, 0x5f ; 020E8E34
	.byte 0x6e, 0x30, 0x36, 0x2e, 0x70, 0x61, 0x63, 0x00, 0x6d, 0x62, 0x75, 0x5f, 0x6e, 0x30, 0x35, 0x2e ; 020E8E44
	.byte 0x70, 0x61, 0x63, 0x00, 0x6d, 0x62, 0x75, 0x5f, 0x6e, 0x30, 0x34, 0x2e, 0x70, 0x61, 0x63, 0x00 ; 020E8E54
	.byte 0x6d, 0x62, 0x75, 0x5f, 0x6e, 0x30, 0x33, 0x2e, 0x70, 0x61, 0x63, 0x00, 0x6d, 0x62, 0x75, 0x5f ; 020E8E64
	.byte 0x6e, 0x30, 0x32, 0x2e, 0x70, 0x61, 0x63, 0x00, 0x6d, 0x62, 0x75, 0x5f, 0x6e, 0x30, 0x31, 0x2e ; 020E8E74
	.byte 0x70, 0x61, 0x63, 0x00, 0x6d, 0x62, 0x75, 0x5f, 0x70, 0x30, 0x31, 0x2e, 0x70, 0x61, 0x63, 0x00 ; 020E8E84
	.byte 0x6d, 0x62, 0x75, 0x5f, 0x67, 0x30, 0x32, 0x2e, 0x70, 0x61, 0x63, 0x00, 0x6d, 0x62, 0x75, 0x5f ; 020E8E94
	.byte 0x67, 0x30, 0x31, 0x2e, 0x70, 0x61, 0x63, 0x00, 0x6d, 0x62, 0x75, 0x5f, 0x67, 0x30, 0x30, 0x2e ; 020E8EA4
	.byte 0x70, 0x61, 0x63, 0x00, 0x6d, 0x62, 0x75, 0x5f, 0x62, 0x30, 0x33, 0x2e, 0x70, 0x61, 0x63, 0x00 ; 020E8EB4
	.byte 0x6d, 0x62, 0x75, 0x5f, 0x62, 0x30, 0x32, 0x2e, 0x70, 0x61, 0x63, 0x00, 0x6d, 0x62, 0x75, 0x5f ; 020E8EC4
	.byte 0x62, 0x30, 0x31, 0x2e, 0x70, 0x61, 0x63, 0x00, 0x6d, 0x62, 0x75, 0x5f, 0x70, 0x30, 0x38, 0x2e ; 020E8ED4
	.byte 0x70, 0x61, 0x63, 0x00, 0x6d, 0x62, 0x75, 0x5f, 0x70, 0x6c, 0x30, 0x30, 0x2e, 0x70, 0x61, 0x63 ; 020E8EE4
	.byte 0x00, 0x00, 0x00, 0x00, 0x6d, 0x62, 0x75, 0x5f, 0x6c, 0x65, 0x76, 0x65, 0x6c, 0x2e, 0x70, 0x61 ; 020E8EF4
	.byte 0x63, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x84, 0xa2, 0x02, 0x02 ; 020E8F04
	.byte 0x4c, 0xb2, 0x0d, 0x02, 0xa8, 0xb2, 0x02, 0x02, 0xa4, 0xb2, 0x02, 0x02, 0x94, 0xb1, 0x0d, 0x02 ; 020E8F14
	.byte 0x08, 0xb2, 0x02, 0x02, 0x84, 0xaf, 0x0d, 0x02, 0x5c, 0xb0, 0x0d, 0x02, 0xe8, 0xb1, 0x0d, 0x02 ; 020E8F24
	.byte 0x04, 0xb2, 0x02, 0x02, 0x00, 0xb2, 0x02, 0x02, 0xf8, 0xb1, 0x02, 0x02, 0xf0, 0xb1, 0x02, 0x02 ; 020E8F34
	.byte 0xe8, 0xb1, 0x02, 0x02, 0xe0, 0xb1, 0x02, 0x02, 0x94, 0xb2, 0x02, 0x02, 0x84, 0xb2, 0x02, 0x02 ; 020E8F44
	.byte 0x78, 0xb2, 0x02, 0x02, 0x6c, 0xb2, 0x02, 0x02, 0x5c, 0xb2, 0x02, 0x02, 0x4c, 0xb2, 0x02, 0x02 ; 020E8F54
	.byte 0x3c, 0xb2, 0x02, 0x02, 0x30, 0xb2, 0x02, 0x02, 0x24, 0xb2, 0x02, 0x02, 0xd8, 0xb1, 0x02, 0x02 ; 020E8F64
	.byte 0xd0, 0xb1, 0x02, 0x02, 0xc8, 0xb1, 0x02, 0x02, 0x10, 0x9e, 0x0d, 0x02, 0x66, 0x61, 0x63, 0x2e ; 020E8F74
	.byte 0x70, 0x6b, 0x62, 0x00, 0x66, 0x61, 0x62, 0x2e, 0x70, 0x6b, 0x62, 0x00, 0x70, 0x70, 0x75, 0x2e ; 020E8F84
	.byte 0x70, 0x6b, 0x62, 0x00, 0x53, 0x50, 0x53, 0x45, 0x6e, 0x63, 0x2e, 0x53, 0x50, 0x46, 0x5f, 0x00 ; 020E8F94
	.byte 0x66, 0x61, 0x63, 0x2e, 0x70, 0x6b, 0x68, 0x00, 0x66, 0x61, 0x62, 0x2e, 0x70, 0x6b, 0x68, 0x00 ; 020E8FA4
	.byte 0x70, 0x70, 0x75, 0x2e, 0x70, 0x6b, 0x68, 0x00, 0x25, 0x30, 0x32, 0x64, 0x25, 0x30, 0x32, 0x64 ; 020E8FB4
	.byte 0x00, 0x00, 0x00, 0x00, 0x25, 0x33, 0x64, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00 ; 020E8FC4
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00 ; 020E8FD4
	.byte 0xfc, 0x8f, 0x0e, 0x02, 0x04, 0x90, 0x0e, 0x02, 0xf4, 0x8f, 0x0e, 0x02, 0x0c, 0x90, 0x0e, 0x02 ; 020E8FE4
	.byte 0x89, 0x84, 0x91, 0x4f, 0x00, 0x00, 0x00, 0x00, 0x91, 0x4f, 0x94, 0xbc, 0x00, 0x00, 0x00, 0x00 ; 020E8FF4
	.byte 0x8c, 0xe3, 0x94, 0xbc, 0x00, 0x00, 0x00, 0x00, 0x89, 0x84, 0x8c, 0xe3, 0x00, 0x00, 0x00, 0x00 ; 020E9004
	.byte 0x82, 0x4f, 0x00, 0x00, 0x95, 0xaa, 0x00, 0x00, 0x82, 0x6e, 0x82, 0x66, 0x00, 0x00, 0x00, 0x00 ; 020E9014
	.byte 0x2f, 0x64, 0x61, 0x74, 0x61, 0x5f, 0x69, 0x7a, 0x2f, 0x70, 0x69, 0x63, 0x32, 0x64, 0x2f, 0x25 ; 020E9024
	.byte 0x73, 0x00, 0x00, 0x00, 0x2f, 0x64, 0x61, 0x74, 0x61, 0x5f, 0x69, 0x7a, 0x2f, 0x70, 0x69, 0x63 ; 020E9034
	.byte 0x32, 0x64, 0x2f, 0x63, 0x6d, 0x64, 0x2f, 0x25, 0x73, 0x00, 0x00, 0x00, 0x2f, 0x64, 0x61, 0x74 ; 020E9044
	.byte 0x61, 0x5f, 0x69, 0x7a, 0x2f, 0x70, 0x69, 0x63, 0x32, 0x64, 0x2f, 0x63, 0x6d, 0x64, 0x2f, 0x25 ; 020E9054
	.byte 0x73, 0x00, 0x00, 0x00, 0x2f, 0x64, 0x61, 0x74, 0x61, 0x5f, 0x69, 0x7a, 0x2f, 0x70, 0x69, 0x63 ; 020E9064
	.byte 0x32, 0x64, 0x2f, 0x74, 0x65, 0x61, 0x6d, 0x2f, 0x25, 0x73, 0x00, 0x00, 0x2f, 0x64, 0x61, 0x74 ; 020E9074
	.byte 0x61, 0x5f, 0x69, 0x7a, 0x2f, 0x70, 0x69, 0x63, 0x32, 0x64, 0x2f, 0x74, 0x65, 0x61, 0x6d, 0x2f ; 020E9084
	.byte 0x25, 0x73, 0x00, 0x00, 0x2f, 0x64, 0x61, 0x74, 0x61, 0x5f, 0x69, 0x7a, 0x2f, 0x66, 0x61, 0x63 ; 020E9094
	.byte 0x65, 0x32, 0x64, 0x2f, 0x25, 0x73, 0x00, 0x00, 0x2f, 0x64, 0x61, 0x74, 0x61, 0x5f, 0x69, 0x7a ; 020E90A4
	.byte 0x2f, 0x66, 0x61, 0x63, 0x65, 0x32, 0x64, 0x2f, 0x25, 0x73, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00 ; 020E90B4
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00 ; 020E90C4
	.byte 0x00, 0x00, 0x00, 0x00, 0x61, 0x72, 0x72, 0x6f, 0x77, 0x2e, 0x70, 0x61, 0x63, 0x5f, 0x00, 0x00 ; 020E90D4
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00 ; 020E90E4
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00 ; 020E90F4
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00 ; 020E9104
	.byte 0x30, 0x31, 0x35, 0x00, 0x30, 0x31, 0x38, 0x00, 0x30, 0x32, 0x30, 0x00, 0x30, 0x30, 0x37, 0x00 ; 020E9114
	.byte 0x30, 0x31, 0x33, 0x00, 0x30, 0x30, 0x32, 0x00, 0x30, 0x30, 0x36, 0x00, 0x30, 0x31, 0x31, 0x00 ; 020E9124
	.byte 0x30, 0x31, 0x37, 0x00, 0x30, 0x31, 0x39, 0x00, 0x30, 0x31, 0x34, 0x00, 0x30, 0x30, 0x33, 0x00 ; 020E9134
	.byte 0x30, 0x30, 0x31, 0x00, 0x30, 0x30, 0x31, 0x00, 0x30, 0x30, 0x35, 0x00, 0x30, 0x30, 0x34, 0x00 ; 020E9144
	.byte 0x30, 0x30, 0x33, 0x00, 0x30, 0x31, 0x32, 0x00, 0x30, 0x31, 0x36, 0x00, 0x6d, 0x62, 0x64, 0x5f ; 020E9154
	.byte 0x77, 0x30, 0x31, 0x00, 0x74, 0x63, 0x64, 0x5f, 0x6e, 0x30, 0x30, 0x00, 0x74, 0x63, 0x64, 0x5f ; 020E9164
	.byte 0x6e, 0x30, 0x31, 0x00, 0x70, 0x6c, 0x79, 0x5f, 0x6e, 0x75, 0x6d, 0x00, 0x74, 0x63, 0x64, 0x5f ; 020E9174
	.byte 0x77, 0x30, 0x30, 0x00, 0x74, 0x63, 0x64, 0x5f, 0x77, 0x30, 0x31, 0x00, 0x70, 0x6c, 0x79, 0x5f ; 020E9184
	.byte 0x73, 0x30, 0x30, 0x00, 0x6d, 0x62, 0x64, 0x5f, 0x6e, 0x30, 0x30, 0x00, 0x6d, 0x62, 0x64, 0x5f ; 020E9194
	.byte 0x77, 0x30, 0x30, 0x00, 0x70, 0x6c, 0x79, 0x5f, 0x6e, 0x61, 0x6d, 0x65, 0x00, 0x00, 0x00, 0x00 ; 020E91A4
	.byte 0x70, 0x61, 0x72, 0x74, 0x73, 0x49, 0x6d, 0x67, 0x00, 0x00, 0x00, 0x00, 0x67, 0x6d, 0x64, 0x6e ; 020E91B4
	.byte 0x5f, 0x72, 0x30, 0x30, 0x00, 0x00, 0x00, 0x00, 0x67, 0x6d, 0x64, 0x6e, 0x5f, 0x63, 0x30, 0x31 ; 020E91C4
	.byte 0x00, 0x00, 0x00, 0x00, 0x67, 0x6d, 0x64, 0x6e, 0x5f, 0x63, 0x30, 0x32, 0x00, 0x00, 0x00, 0x00 ; 020E91D4
	.byte 0x67, 0x6d, 0x64, 0x6e, 0x5f, 0x63, 0x30, 0x33, 0x00, 0x00, 0x00, 0x00, 0x67, 0x6d, 0x64, 0x6e ; 020E91E4
	.byte 0x5f, 0x77, 0x30, 0x30, 0x00, 0x00, 0x00, 0x00, 0x70, 0x6c, 0x79, 0x5f, 0x62, 0x6b, 0x72, 0x30 ; 020E91F4
	.byte 0x31, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x68, 0x34, 0x0e, 0x02 ; 020E9204
	.byte 0x2c, 0x50, 0x0e, 0x02, 0xdc, 0xd7, 0x0b, 0x02, 0xa8, 0x91, 0x0e, 0x02, 0x78, 0x91, 0x0e, 0x02 ; 020E9214
	.byte 0xfc, 0x91, 0x0e, 0x02, 0xb4, 0x91, 0x0e, 0x02, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00 ; 020E9224
	.byte 0x00, 0x00, 0x00, 0x00, 0xc0, 0x91, 0x0e, 0x02, 0xcc, 0x91, 0x0e, 0x02, 0xd8, 0x91, 0x0e, 0x02 ; 020E9234
	.byte 0xe4, 0x91, 0x0e, 0x02, 0x90, 0x91, 0x0e, 0x02, 0xf0, 0x91, 0x0e, 0x02, 0x00, 0x00, 0x00, 0x00 ; 020E9244
	.byte 0x98, 0x91, 0x0e, 0x02, 0xa0, 0x91, 0x0e, 0x02, 0x60, 0x91, 0x0e, 0x02, 0x00, 0x00, 0x00, 0x00 ; 020E9254
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00 ; 020E9264
	.byte 0x68, 0x91, 0x0e, 0x02, 0x70, 0x91, 0x0e, 0x02, 0x80, 0x91, 0x0e, 0x02, 0x88, 0x91, 0x0e, 0x02 ; 020E9274
	.byte 0x44, 0x91, 0x0e, 0x02, 0x48, 0x91, 0x0e, 0x02, 0x40, 0x91, 0x0e, 0x02, 0x54, 0x91, 0x0e, 0x02 ; 020E9284
	.byte 0x28, 0x91, 0x0e, 0x02, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x50, 0x91, 0x0e, 0x02 ; 020E9294
	.byte 0x00, 0x00, 0x00, 0x00, 0x4c, 0x91, 0x0e, 0x02, 0x00, 0x00, 0x00, 0x00, 0x2c, 0x91, 0x0e, 0x02 ; 020E92A4
	.byte 0x00, 0x00, 0x00, 0x00, 0x20, 0x91, 0x0e, 0x02, 0x30, 0x91, 0x0e, 0x02, 0x00, 0x00, 0x00, 0x00 ; 020E92B4
	.byte 0x00, 0x00, 0x00, 0x00, 0x58, 0x91, 0x0e, 0x02, 0x00, 0x00, 0x00, 0x00, 0x24, 0x91, 0x0e, 0x02 ; 020E92C4
	.byte 0x00, 0x00, 0x00, 0x00, 0x3c, 0x91, 0x0e, 0x02, 0x00, 0x00, 0x00, 0x00, 0x14, 0x91, 0x0e, 0x02 ; 020E92D4
	.byte 0x5c, 0x91, 0x0e, 0x02, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x34, 0x91, 0x0e, 0x02 ; 020E92E4
	.byte 0x00, 0x00, 0x00, 0x00, 0x18, 0x91, 0x0e, 0x02, 0x00, 0x00, 0x00, 0x00, 0x38, 0x91, 0x0e, 0x02 ; 020E92F4
	.byte 0x00, 0x00, 0x00, 0x00, 0x1c, 0x91, 0x0e, 0x02, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00 ; 020E9304
	.byte 0x4d, 0x41, 0x54, 0x43, 0x48, 0x5f, 0x53, 0x48, 0x41, 0x44, 0x4f, 0x57, 0x5f, 0x4f, 0x46, 0x46 ; 020E9314
	.byte 0x53, 0x45, 0x54, 0x00, 0x55, 0x4e, 0x49, 0x54, 0x5f, 0x46, 0x4c, 0x49, 0x43, 0x4b, 0x45, 0x52 ; 020E9324
	.byte 0x5f, 0x54, 0x49, 0x4d, 0x45, 0x5f, 0x4f, 0x4e, 0x00, 0x00, 0x00, 0x00, 0x55, 0x4e, 0x49, 0x54 ; 020E9334
	.byte 0x5f, 0x46, 0x4c, 0x49, 0x43, 0x4b, 0x45, 0x52, 0x5f, 0x54, 0x49, 0x4d, 0x45, 0x5f, 0x4f, 0x46 ; 020E9344
	.byte 0x46, 0x00, 0x00, 0x00, 0x52, 0x45, 0x50, 0x4c, 0x41, 0x59, 0x5f, 0x46, 0x4c, 0x49, 0x43, 0x4b ; 020E9354
	.byte 0x45, 0x52, 0x5f, 0x54, 0x49, 0x4d, 0x45, 0x5f, 0x4f, 0x4e, 0x00, 0x00, 0x52, 0x45, 0x50, 0x4c ; 020E9364
	.byte 0x41, 0x59, 0x5f, 0x46, 0x4c, 0x49, 0x43, 0x4b, 0x45, 0x52, 0x5f, 0x54, 0x49, 0x4d, 0x45, 0x5f ; 020E9374
	.byte 0x4f, 0x46, 0x46, 0x00, 0x2f, 0x64, 0x61, 0x74, 0x61, 0x5f, 0x69, 0x7a, 0x2f, 0x70, 0x69, 0x63 ; 020E9384
	.byte 0x32, 0x64, 0x2f, 0x74, 0x65, 0x61, 0x6d, 0x2f, 0x70, 0x6b, 0x75, 0x70, 0x5f, 0x65, 0x2e, 0x70 ; 020E9394
	.byte 0x6b, 0x68, 0x00, 0x00, 0x65, 0x66, 0x5f, 0x63, 0x25, 0x73, 0x61, 0x2e, 0x70, 0x61, 0x63, 0x00 ; 020E93A4
	.byte 0x65, 0x66, 0x5f, 0x63, 0x25, 0x73, 0x61, 0x2e, 0x50, 0x4c, 0x54, 0x00, 0x25, 0x73, 0x2e, 0x70 ; 020E93B4
	.byte 0x61, 0x63, 0x5f, 0x00, 0x25, 0x73, 0x2e, 0x70, 0x61, 0x63, 0x5f, 0x00, 0x25, 0x73, 0x2e, 0x70 ; 020E93C4
	.byte 0x61, 0x63, 0x5f, 0x00, 0x2f, 0x64, 0x61, 0x74, 0x61, 0x5f, 0x69, 0x7a, 0x2f, 0x70, 0x69, 0x63 ; 020E93D4
	.byte 0x32, 0x64, 0x2f, 0x74, 0x65, 0x61, 0x6d, 0x2f, 0x70, 0x6b, 0x75, 0x70, 0x5f, 0x65, 0x2e, 0x70 ; 020E93E4
	.byte 0x6b, 0x62, 0x00, 0x00, 0x62, 0x61, 0x6c, 0x6c, 0x30, 0x30, 0x31, 0x30, 0x00, 0x00, 0x00, 0x00 ; 020E93F4
	.byte 0x6d, 0x62, 0x76, 0x5f, 0x63, 0x30, 0x30, 0x30, 0x2e, 0x70, 0x61, 0x63, 0x5f, 0x00, 0x00, 0x00 ; 020E9404
	.byte 0x6d, 0x62, 0x76, 0x5f, 0x63, 0x25, 0x30, 0x33, 0x64, 0x2e, 0x70, 0x61, 0x63, 0x5f, 0x00, 0x00 ; 020E9414
	.byte 0x74, 0x63, 0x76, 0x5f, 0x63, 0x25, 0x30, 0x33, 0x64, 0x2e, 0x70, 0x61, 0x63, 0x5f, 0x00, 0x00 ; 020E9424
	.byte 0x6d, 0x62, 0x76, 0x5f, 0x63, 0x25, 0x30, 0x33, 0x64, 0x2e, 0x70, 0x61, 0x63, 0x5f, 0x00, 0x00 ; 020E9434
	.byte 0x74, 0x63, 0x76, 0x5f, 0x63, 0x25, 0x30, 0x33, 0x64, 0x2e, 0x70, 0x61, 0x63, 0x5f, 0x00, 0x00 ; 020E9444
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00 ; 020E9454
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 
