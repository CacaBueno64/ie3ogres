
	arm_func_start FUN_ov114_02124d00
FUN_ov114_02124d00: ; 0x02124D00
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	sub sp, sp, #0x10
	ldr r6, _02124DC0 ; =0x02099EF0
	mov r4, r2
	ldr r0, [r6]
	mov r5, r1
	mov r1, r4
	bl FUN_02143A34
	mov r7, r0
	ldr r0, [r6]
	mov r1, r4
	bl FUN_02143A40
	mov r3, #0
	mvn r2, #0
	add r1, sp, #0
_02124D3C:
	str r2, [r1, r3, lsl #2]
	add r3, r3, #1
	cmp r3, #4
	blt _02124D3C
	mov r1, #0
	add r6, r7, #0x20
	add r12, sp, #0
	mov lr, #3
	b _02124D94
_02124D60:
	mov r3, lr
_02124D64:
	add r2, r12, r3, lsl #2
	ldr r2, [r2, #-4]
	str r2, [r12, r3, lsl #2]
	sub r3, r3, #1
	cmp r3, #0
	bgt _02124D64
	sub r2, r6, r1
	mov r3, r2, lsr #0x1f
	rsb r2, r3, r2, lsl #27
	add r2, r3, r2, ror #27
	str r2, [sp]
	add r1, r1, #1
_02124D94:
	cmp r1, #4
	bge _02124DA4
	cmp r1, r0
	blt _02124D60
_02124DA4:
	add r2, sp, #0
	mov r0, r5
	mov r1, r4
	mov r3, #4
	bl FUN_020DB600
	add sp, sp, #0x10
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_02124DC0: .word 0x02099EF0
	arm_func_end FUN_ov114_02124d00

	arm_func_start FUN_ov114_02124dc4
FUN_ov114_02124dc4: ; 0x02124DC4
	stmfd sp!, {r3, r4, r5, r6, r7, r8, lr}
	sub sp, sp, #0xc
	mov r6, r0
	str r1, [r6, #0xc]
	cmp r1, #1
	mov r5, #0
	mov r4, #1
	beq _02124DF0
	cmp r1, #2
	beq _02124ECC
	b _02125030
_02124DF0:
	add r0, r6, #0x94
	mov r1, r5
	mov r2, #0xb4
	bl MemWrite
	ldr r0, _0212503C ; =0x02126350
	add r1, r6, #0x94
	bl FUN_020DBE00
	ldr r0, _02125040 ; =0x0212635C
	add r1, r6, #0x130
	bl FUN_020DBEC4
	ldr r0, _02125044 ; =0x02126368
	add r1, r6, #0x13c
	bl FUN_020DBEC4
	ldr r0, _02125048 ; =0x020A0640
	ldrb r0, [r0, #0x1a]
	cmp r0, #0
	bne _02124E40
	bl FUN_020F068C
	cmp r0, #0
	beq _02124E98
_02124E40:
	ldr r0, [r6, #0x54]
	mov r1, #0
	cmp r0, #0
	ldrne r0, [r6, #0x58]
	cmpne r0, #0
	movne r1, #1
	cmp r1, #0
	beq _02124E6C
	add r0, r6, #0x54
	mov r1, #0
	bl FUN_020DB4F0
_02124E6C:
	ldr r0, [r6, #0x68]
	mov r1, #0
	cmp r0, #0
	ldrne r0, [r6, #0x6c]
	cmpne r0, #0
	movne r1, #1
	cmp r1, #0
	beq _02124E98
	add r0, r6, #0x68
	mov r1, #1
	bl FUN_020DB4F0
_02124E98:
	mov r0, r6
	mov r2, r5
	add r1, r6, #0x2c
	bl FUN_ov114_02124d00
	mov r0, r6
	add r1, r6, #0x40
	mov r2, #1
	bl FUN_ov114_02124d00
	ldr r0, _0212504C ; =0x02099EF0
	mov r1, r5
	ldr r0, [r0]
	bl FUN_02143C94
	b _02125030
_02124ECC:
	ldr r0, _02125050 ; =0x0209BA20
	mov r1, r5
	bl FUN_0207249c
	mov r0, r5
	bl FUN_020DC1F4
	mov r7, r0
	ldr r0, [r6, #0x130]
	mov r1, r7
	add r2, sp, #8
	add r3, sp, #4
	bl FUN_020F34F0
	cmp r0, #0
	beq _02124F18
	str r4, [sp]
	ldr r2, [sp, #8]
	ldr r3, [sp, #4]
	ldr r0, _02125054 ; =0x02126374
	add r1, r6, #0x100
	bl FUN_020DBEFC
_02124F18:
	mov r0, #0
	bl FUN_020DC150
	cmp r0, #0
	bne _02124F5C
	ldr r0, [r6, #0x13c]
	add r2, sp, #8
	add r3, sp, #4
	mov r1, r7
	bl FUN_020F34F0
	cmp r0, #0
	beq _02124F5C
	str r4, [sp]
	ldr r2, [sp, #8]
	ldr r3, [sp, #4]
	ldr r0, _02125058 ; =0x02126380
	add r1, r6, #0x118
	bl FUN_020DBEFC
_02124F5C:
	ldr r0, _02125050 ; =0x0209BA20
	mov r1, r4
	bl FUN_0207249c
	mov r0, r4
	bl FUN_020DC1F4
	mov r7, r0
	ldr r0, [r6, #0x130]
	mov r1, r7
	add r2, sp, #8
	add r3, sp, #4
	bl FUN_020F34F0
	cmp r0, #0
	beq _02124FA8
	str r4, [sp]
	ldr r2, [sp, #8]
	ldr r3, [sp, #4]
	ldr r0, _0212505C ; =0x0212638C
	add r1, r6, #0x10c
	bl FUN_020DBEFC
_02124FA8:
	mov r0, r4
	bl FUN_020DC150
	cmp r0, #0
	bne _02124FEC
	ldr r0, [r6, #0x13c]
	add r2, sp, #8
	add r3, sp, #4
	mov r1, r7
	bl FUN_020F34F0
	cmp r0, #0
	beq _02124FEC
	str r4, [sp]
	ldr r2, [sp, #8]
	ldr r3, [sp, #4]
	ldr r0, _02125060 ; =0x02126398
	add r1, r6, #0x124
	bl FUN_020DBEFC
_02124FEC:
	ldr r7, _02125064 ; =0x020A8C40
	mov r8, #0x800
	mov r0, r5
	mov r1, r7
	mov r2, r8
	bl FUN_0200787c
	mov r0, r7
	mov r1, r8
	bl FUN_020026d0
	ldr r7, _02125068 ; =0x020A8440
	mov r0, r5
	mov r1, r7
	mov r2, r8
	bl FUN_0200787c
	mov r0, r7
	mov r1, r8
	bl FUN_020026d0
_02125030:
	str r4, [r6, #8]
	add sp, sp, #0xc
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, pc}
_0212503C: .word 0x02126350
_02125040: .word 0x0212635C
_02125044: .word 0x02126368
_02125048: .word 0x020A0640
_0212504C: .word 0x02099EF0
_02125050: .word 0x0209BA20
_02125054: .word 0x02126374
_02125058: .word 0x02126380
_0212505C: .word 0x0212638C
_02125060: .word 0x02126398
_02125064: .word 0x020A8C40
_02125068: .word 0x020A8440
	arm_func_end FUN_ov114_02124dc4

	arm_func_start FUN_ov114_0212506c
FUN_ov114_0212506c: ; 0x0212506C
	mov r1, r0
	ldr r0, [r1, #0x94]
	ldr r2, _02125084 ; =0x021261B0
	ldr r12, _02125088 ; =FUN_020DBFDC
	add r1, r1, #0x94
	bx r12
_02125084: .word 0x021261B0
_02125088: .word FUN_020DBFDC
	arm_func_end FUN_ov114_0212506c

	arm_func_start FUN_ov114_0212508c
FUN_ov114_0212508c: ; 0x0212508C
	stmfd sp!, {r4, r5, r6, lr}
	mov r6, #0
	add r5, r0, #0x94
	mov r4, #0xc
_0212509C:
	mla r0, r6, r4, r5
	bl FUN_020F33FC
	add r6, r6, #1
	cmp r6, #0xf
	blt _0212509C
	ldmfd sp!, {r4, r5, r6, pc}
	arm_func_end FUN_ov114_0212508c

	arm_func_start FUN_ov114_021250b4
FUN_ov114_021250b4: ; 0x021250B4
	stmfd sp!, {r4, r5, r6, r7, r8, r9, r10, lr}
	sub sp, sp, #8
	mov r4, r0
	ldr r0, [r4, #0x10]
	mov r6, #0
	ldr r7, _021258B0 ; =0x020A8C40
	cmp r0, #0
	ldr r5, _021258B4 ; =0x020A0640
	mov r8, #2
	mov r9, #1
	mov r10, r6
	beq _021250F8
	cmp r0, #1
	beq _0212532C
	cmp r0, #2
	beq _02125670
	b _02125898
_021250F8:
	ldr r0, [r4, #0xc4]
	sub r1, r10, #1
	mov r2, r8
	bl FUN_020DC13C
	ldr r0, [r4, #0x100]
	mov r1, r10
	mov r2, #3
	bl FUN_020DC13C
	mov r1, r0
	ldr r0, [r4, #0x10c]
	mov r2, #4
	bl FUN_020DC13C
	mov r6, r0
	mov r0, r10
	bl FUN_020DC150
	cmp r0, #0
	bne _02125150
	ldr r0, [r4, #0x118]
	mov r1, r6
	mov r2, #5
	bl FUN_020DC13C
	mov r6, r0
_02125150:
	mov r0, #1
	bl FUN_020DC150
	cmp r0, #0
	bne _02125170
	ldr r0, [r4, #0x124]
	mov r1, r6
	mov r2, #6
	bl FUN_020DC13C
_02125170:
	ldr r0, _021258B8 ; =0x0209A144
	ldr r1, [r0]
	ldrb r0, [r5, #0x1a]
	ldr r1, [r1, #0x18]
	mov r1, r1, lsr #5
	cmp r0, #0
	sub r6, r1, #1
	bne _0212519C
	bl FUN_020F068C
	cmp r0, #0
	beq _0212522C
_0212519C:
	ldr r0, [r4, #0x54]
	mov r1, #0
	cmp r0, #0
	ldrne r0, [r4, #0x58]
	cmpne r0, #0
	movne r1, #1
	cmp r1, #0
	beq _021251E4
	ldr r0, [r4, #0x54]
	mov r1, #0xf
	mov r2, #2
	bl FUN_020F2EA8
	ldr r0, [r4, #0x54]
	add r2, r6, #1
	mov r1, #0x3c
	mov r3, #0
	bl FUN_020F1868
	mov r6, r0
_021251E4:
	ldr r0, [r4, #0x68]
	mov r1, #0
	cmp r0, #0
	ldrne r0, [r4, #0x6c]
	cmpne r0, #0
	movne r1, #1
	cmp r1, #0
	beq _0212522C
	ldr r0, [r4, #0x68]
	mov r1, #0xf
	mov r2, #2
	bl FUN_020F2EA8
	ldr r0, [r4, #0x68]
	add r2, r6, #1
	mov r1, #0x3c
	mov r3, #0
	bl FUN_020F1868
	mov r6, r0
_0212522C:
	ldrb r0, [r5, #0x1a]
	cmp r0, #0
	ldrne r0, [r4, #0xf4]
	cmpne r0, #0
	beq _02125250
	add r1, r6, #1
	mov r2, #1
	bl FUN_020F18E8
	mov r6, r0
_02125250:
	ldr r0, [r4, #0xa0]
	mov r1, r6
	mov r2, r9
	bl FUN_020DC13C
	mov r1, r0
	ldr r0, [r4, #0xac]
	mov r2, r9
	bl FUN_020DC13C
	mov r1, r0
	ldr r0, [r4, #0xb8]
	mov r2, r9
	bl FUN_020DC13C
	mov r1, r0
	mov r5, #7
	ldr r0, [r4, #0xd0]
	mov r2, r5
	bl FUN_020DC13C
	mov r1, r0
	ldr r0, [r4, #0xdc]
	mov r2, r5
	bl FUN_020DC13C
	mov r1, r0
	ldr r0, [r4, #0xe8]
	mov r2, #8
	bl FUN_020DC13C
	mov r6, r0
	ldr r0, [r4, #0x2c]
	mov r1, #0
	cmp r0, #0
	ldrne r0, [r4, #0x30]
	cmpne r0, #0
	movne r1, r9
	cmp r1, #0
	beq _021252F0
	ldr r0, [r4, #0x2c]
	add r2, r6, #1
	mov r1, #0x58
	mov r3, #0
	bl FUN_020F1868
	mov r6, r0
_021252F0:
	ldr r0, [r4, #0x40]
	mov r1, #0
	cmp r0, #0
	ldrne r0, [r4, #0x44]
	cmpne r0, #0
	movne r1, #1
	cmp r1, #0
	beq _02125324
	ldr r0, [r4, #0x40]
	add r2, r6, #1
	mov r1, #0x58
	mov r3, #0
	bl FUN_020F1868
_02125324:
	bl FUN_020F10C8
	b _02125898
_0212532C:
	ldr r1, [r4, #0xc4]
	mov r0, r10
	mov r2, r10
	bl FUN_020F1A60
	bl FUN_02004fac
	mov r6, #0x20
	mov r1, r0
	mov r0, r10
	mov r2, r6
	bl FUN_0200787c
	bl FUN_02004fac
	mov r1, r6
	bl FUN_020026d0
	ldr r1, [r4, #0x100]
	mov r2, r6
	mov r0, r9
	bl FUN_020F1A60
	mov r2, r0
	ldr r1, [r4, #0x10c]
	mov r0, r9
	bl FUN_020F1A60
	mov r6, r0
	mov r0, r10
	bl FUN_020DC150
	cmp r0, #0
	bne _021253A8
	ldr r1, [r4, #0x118]
	mov r0, r9
	mov r2, r6
	bl FUN_020F1A60
	mov r6, r0
_021253A8:
	mov r0, r9
	bl FUN_020DC150
	cmp r0, #0
	bne _021253C8
	ldr r1, [r4, #0x124]
	mov r0, r9
	mov r2, r6
	bl FUN_020F1A60
_021253C8:
	ldr r0, _021258B8 ; =0x0209A144
	mov r1, #0
	ldr r7, [r0]
	ldr r0, [r7, #0x14]
	ldr r2, [r7, #0x18]
	add r0, r7, r0
	bl FUN_020059ac
	ldrb r0, [r5, #0x1a]
	ldr r6, [r7, #0x18]
	cmp r0, #0
	bne _02125400
	bl FUN_020F068C
	cmp r0, #0
	beq _02125468
_02125400:
	ldr r0, [r4, #0x54]
	mov r1, #0
	cmp r0, #0
	ldrne r0, [r4, #0x58]
	cmpne r0, #0
	movne r1, #1
	cmp r1, #0
	beq _02125434
	ldr r0, [r4, #0x58]
	mov r1, r6
	mov r2, #0x3c0
	bl FUN_020059ac
	add r6, r6, #0x3c0
_02125434:
	ldr r0, [r4, #0x68]
	mov r1, #0
	cmp r0, #0
	ldrne r0, [r4, #0x6c]
	cmpne r0, #0
	movne r1, #1
	cmp r1, #0
	beq _02125468
	ldr r0, [r4, #0x6c]
	mov r1, r6
	mov r2, #0x3c0
	bl FUN_020059ac
	add r6, r6, #0x3c0
_02125468:
	ldrb r0, [r5, #0x1a]
	cmp r0, #0
	beq _02125488
	ldr r1, [r4, #0xf4]
	mov r2, r6
	mov r0, #2
	bl FUN_020F1A60
	mov r6, r0
_02125488:
	ldr r1, [r4, #0xa0]
	mov r0, r8
	mov r2, r6
	bl FUN_020F1A60
	mov r2, r0
	ldr r1, [r4, #0xac]
	mov r0, r8
	bl FUN_020F1A60
	mov r2, r0
	ldr r1, [r4, #0xb8]
	mov r0, r8
	bl FUN_020F1A60
	mov r2, r0
	ldr r1, [r4, #0xd0]
	mov r0, r8
	bl FUN_020F1A60
	mov r2, r0
	ldr r1, [r4, #0xdc]
	mov r0, r8
	bl FUN_020F1A60
	mov r2, r0
	ldr r1, [r4, #0xe8]
	mov r0, r8
	bl FUN_020F1A60
	mov r6, r0
	ldr r0, [r4, #0x2c]
	mov r1, #0
	cmp r0, #0
	ldrne r0, [r4, #0x30]
	ldr r7, [r4, #0xa0]
	cmpne r0, #0
	movne r1, #1
	cmp r1, #0
	strne r6, [r4, #0x34]
	ldr r0, [r4, #0x40]
	addne r6, r6, #0x580
	cmp r0, #0
	ldrne r0, [r4, #0x44]
	mov r1, #0
	cmpne r0, #0
	movne r1, #1
	cmp r1, #0
	strne r6, [r4, #0x48]
	addne r6, r6, #0x580
	cmp r7, #0
	beq _02125568
	bl FUN_0200501c
	add r0, r6, r0
	str r0, [r4, #0x14]
	ldr r0, [r7, #0xc]
	ldr r2, [r7, #0x10]
	mov r1, r6
	add r0, r7, r0
	bl FUN_020059ac
	ldr r0, [r7, #0x10]
	add r6, r6, r0
_02125568:
	ldr r7, [r4, #0xac]
	cmp r7, #0
	beq _0212559C
	bl FUN_0200501c
	add r0, r6, r0
	str r0, [r4, #0x18]
	ldr r0, [r7, #0xc]
	ldr r2, [r7, #0x10]
	mov r1, r6
	add r0, r7, r0
	bl FUN_020059ac
	ldr r0, [r7, #0x10]
	add r6, r6, r0
_0212559C:
	ldr r7, [r4, #0xb8]
	cmp r7, #0
	beq _021255D0
	bl FUN_0200501c
	add r0, r6, r0
	str r0, [r4, #0x1c]
	ldr r0, [r7, #0xc]
	ldr r2, [r7, #0x10]
	mov r1, r6
	add r0, r7, r0
	bl FUN_020059ac
	ldr r0, [r7, #0x10]
	add r6, r6, r0
_021255D0:
	ldr r7, [r4, #0xd0]
	cmp r7, #0
	beq _02125604
	bl FUN_0200501c
	add r0, r6, r0
	str r0, [r4, #0x20]
	ldr r0, [r7, #0xc]
	ldr r2, [r7, #0x10]
	mov r1, r6
	add r0, r7, r0
	bl FUN_020059ac
	ldr r0, [r7, #0x10]
	add r6, r6, r0
_02125604:
	ldr r7, [r4, #0xdc]
	cmp r7, #0
	beq _02125638
	bl FUN_0200501c
	add r0, r6, r0
	str r0, [r4, #0x24]
	ldr r0, [r7, #0xc]
	ldr r2, [r7, #0x10]
	mov r1, r6
	add r0, r7, r0
	bl FUN_020059ac
	ldr r0, [r7, #0x10]
	add r6, r6, r0
_02125638:
	ldrb r0, [r5, #0x1a]
	cmp r0, #0
	ldrne r7, [r4, #0xf4]
	cmpne r7, #0
	beq _02125898
	bl FUN_0200501c
	add r0, r6, r0
	str r0, [r4, #0x28]
	ldr r0, [r7, #0xc]
	ldr r2, [r7, #0x10]
	mov r1, r6
	add r0, r7, r0
	bl FUN_020059ac
	b _02125898
_02125670:
	ldr r3, [r4, #0xc4]
	cmp r3, #0
	beq _02125690
	ldr r0, [r3, #0xc]
	ldr r2, [r3, #0x10]
	mov r1, r10
	add r0, r3, r0
	bl FUN_0200546c
_02125690:
	ldr r2, [r4, #0x100]
	cmp r2, #0
	beq _021256C0
	ldr r0, [r2, #0xc]
	mov r1, #4
	add r0, r2, r0
	str r0, [sp]
	mov r2, r1
	mov r3, r1
	mov r0, #5
	str r7, [sp, #4]
	bl FUN_020F191C
_021256C0:
	ldr r2, [r4, #0x10c]
	cmp r2, #0
	beq _021256F0
	ldr r0, [r2, #0xc]
	mov r1, #4
	add r0, r2, r0
	str r0, [sp]
	mov r2, r1
	mov r3, r1
	mov r0, #0x17
	str r7, [sp, #4]
	bl FUN_020F191C
_021256F0:
	mov r0, r6
	bl FUN_020DC150
	cmp r0, #0
	bne _02125730
	ldr r1, [r4, #0x118]
	cmp r1, #0
	beq _02125730
	ldr r0, [r1, #0xc]
	mov r2, #0xf
	add r0, r1, r0
	str r0, [sp]
	mov r0, r6
	mov r1, #9
	mov r3, #2
	str r7, [sp, #4]
	bl FUN_020F191C
_02125730:
	mov r0, #1
	bl FUN_020DC150
	cmp r0, #0
	bne _02125770
	ldr r1, [r4, #0x124]
	cmp r1, #0
	beq _02125770
	ldr r0, [r1, #0xc]
	mov r2, #0xf
	add r0, r1, r0
	str r0, [sp]
	mov r0, #0x11
	mov r1, #9
	mov r3, #2
	str r7, [sp, #4]
	bl FUN_020F191C
_02125770:
	mov r6, #0x800
	mov r0, r7
	mov r1, r6
	bl FUN_020026d0
	mov r0, r7
	mov r2, r6
	mov r1, #0
	bl FUN_0200554c
	ldrb r0, [r5, #0x1a]
	cmp r0, #0
	bne _021257A8
	bl FUN_020F068C
	cmp r0, #0
	beq _02125870
_021257A8:
	ldr r0, [r4, #0x54]
	mov r1, #0
	cmp r0, #0
	ldrne r0, [r4, #0x58]
	cmpne r0, #0
	movne r1, #1
	cmp r1, #0
	beq _021257EC
	ldr r0, [r4, #0x54]
	ldr r5, _021258BC ; =0x020A8440
	str r0, [sp]
	mov r0, #0
	mov r1, #9
	mov r2, #0xf
	mov r3, #2
	str r5, [sp, #4]
	bl FUN_020F191C
_021257EC:
	ldr r0, [r4, #0x68]
	mov r1, #0
	cmp r0, #0
	ldrne r0, [r4, #0x6c]
	cmpne r0, #0
	movne r1, #1
	cmp r1, #0
	beq _02125830
	ldr r0, [r4, #0x68]
	ldr r5, _021258BC ; =0x020A8440
	str r0, [sp]
	mov r0, #0x11
	mov r1, #9
	mov r2, #0xf
	mov r3, #2
	str r5, [sp, #4]
	bl FUN_020F191C
_02125830:
	ldr r7, [r4, #0xe8]
	cmp r7, #0
	beq _02125870
	bl FUN_020F081C
	ldr r1, [r7, #0xc]
	cmp r0, #0
	moveq r0, #2
	add r1, r7, r1
	str r1, [sp]
	ldr r5, _021258BC ; =0x020A8440
	movne r0, #0x18
	mov r1, #1
	mov r2, #6
	mov r3, #2
	str r5, [sp, #4]
	bl FUN_020F191C
_02125870:
	ldr r6, _021258BC ; =0x020A8440
	mov r5, #0x800
	mov r0, r6
	mov r1, r5
	bl FUN_020026d0
	mov r0, r6
	mov r2, r5
	mov r1, #0
	bl FUN_0200562c
	mov r10, #1
_02125898:
	ldr r1, [r4, #0x10]
	mov r0, r10
	add r1, r1, #1
	str r1, [r4, #0x10]
	add sp, sp, #8
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, pc}
_021258B0: .word 0x020A8C40
_021258B4: .word 0x020A0640
_021258B8: .word 0x0209A144
_021258BC: .word 0x020A8440
	arm_func_end FUN_ov114_021250b4

	arm_func_start FUN_ov114_021258c0
FUN_ov114_021258c0: ; 0x021258C0
	stmfd sp!, {r4, lr}
	mov r4, r0
	ldr r0, [r4, #0x2c]
	cmp r0, #0
	ldrne r0, [r4, #0x30]
	cmpne r0, #0
	movne r0, #1
	moveq r0, #0
	cmp r0, #0
	ldrneb r0, [r4, #0x3c]
	cmpne r0, #0
	beq _02125908
	ldr r0, [r4, #0x30]
	mov r3, #0
	ldr r1, [r4, #0x34]
	mov r2, #0x580
	strb r3, [r4, #0x3c]
	bl FUN_020059ac
_02125908:
	ldr r0, [r4, #0x40]
	cmp r0, #0
	ldrne r0, [r4, #0x44]
	cmpne r0, #0
	movne r0, #1
	moveq r0, #0
	cmp r0, #0
	ldrneb r0, [r4, #0x50]
	cmpne r0, #0
	ldmeqfd sp!, {r4, pc}
	ldr r0, [r4, #0x44]
	mov r3, #0
	ldr r1, [r4, #0x48]
	mov r2, #0x580
	strb r3, [r4, #0x50]
	bl FUN_020059ac
	ldmfd sp!, {r4, pc}
	arm_func_end FUN_ov114_021258c0

	arm_func_start FUN_ov114_0212594c
FUN_ov114_0212594c: ; 0x0212594C
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, lr}
	sub sp, sp, #8
	mov r7, r0
	ldr r0, [r7, #0x18]
	mov r6, r1
	cmp r0, #0
	mov r5, r2
	mov r4, r3
	addeq sp, sp, #8
	ldmeqfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
	ldr r9, _021259E8 ; =0x020A8440
	mov r8, #2
	b _021259D4
_02125980:
	ldrsb r0, [r4]
	cmp r0, #0x30
	blt _021259A0
	cmp r0, #0x39
	ldrle r1, [r7, #0x18]
	suble r0, r0, #0x30
	addle r0, r1, r0, lsl #3
	ble _021259B0
_021259A0:
	ldrsb r0, [r4]
	cmp r0, #0x3a
	ldr r0, [r7, #0x18]
	addeq r0, r0, #0x50
_021259B0:
	str r0, [sp]
	mov r0, r6
	mov r1, r5
	mov r2, r8
	mov r3, r8
	str r9, [sp, #4]
	bl FUN_020F191C
	add r4, r4, #1
	add r6, r6, #2
_021259D4:
	ldrsb r0, [r4]
	cmp r0, #0
	bne _02125980
	add sp, sp, #8
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
_021259E8: .word 0x020A8440
	arm_func_end FUN_ov114_0212594c

	arm_func_start FUN_ov114_021259ec
FUN_ov114_021259ec: ; 0x021259EC
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, lr}
	sub sp, sp, #8
	mov r10, r0
	ldr r0, [r10, #0x1c]
	ldr r6, _02125ACC ; =0x020A8440
	cmp r0, #0
	mov r9, r1
	mov r8, r2
	mov r7, r3
	addeq sp, sp, #8
	ldmeqfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
	add r0, r6, r8, lsl #6
	add r4, r0, r9, lsl #1
	mov r5, #6
	mov r11, #0
	b _02125A44
_02125A2C:
	mov r0, r11
	mov r1, r4
	mov r2, #0x16
	bl FUN_02007804
	sub r5, r5, #1
	add r4, r4, #0x40
_02125A44:
	cmp r5, #0
	bgt _02125A2C
	cmp r7, #0x63
	movgt r7, #0x63
	add r9, r9, #6
	cmp r7, #0xa
	ldr r5, _02125AD0 ; =0x66666667
	sublt r9, r9, #3
	mov r11, #0xa
	mov r4, #0x1e
_02125A6C:
	smull r1, r2, r5, r7
	mov r0, r7, lsr #0x1f
	add r2, r0, r2, asr #2
	smull r0, r1, r11, r2
	sub r2, r7, r0
	mul r1, r2, r4
	ldr r2, [r10, #0x1c]
	mov r0, r9
	add r1, r2, r1, lsl #1
	str r1, [sp]
	mov r1, r8
	mov r2, #5
	mov r3, #6
	str r6, [sp, #4]
	bl FUN_020F191C
	mov r1, r7
	smull r0, r7, r5, r1
	mov r0, r1, lsr #0x1f
	add r7, r0, r7, asr #2
	cmp r7, #0
	sub r9, r9, #6
	bgt _02125A6C
	add sp, sp, #8
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_02125ACC: .word 0x020A8440
_02125AD0: .word 0x66666667
	arm_func_end FUN_ov114_021259ec

	arm_func_start FUN_ov114_02125ad4
FUN_ov114_02125ad4: ; 0x02125AD4
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	sub sp, sp, #8
	mov r7, r0
	ldr lr, [r7, #0x20]
	mov r6, r1
	mov r5, r2
	mov r4, r3
	cmp lr, #0
	beq _02125B24
	ldr r0, [sp, #0x20]
	ldr r12, _02125B74 ; =0x020A8440
	rsb r0, r0, r0, lsl #4
	add r0, lr, r0, lsl #2
	str r0, [sp]
	mov r0, r6
	mov r1, r5
	mov r2, #0xf
	mov r3, #2
	str r12, [sp, #4]
	bl FUN_020F191C
_02125B24:
	cmp r4, #7
	addge sp, sp, #8
	ldmgefd sp!, {r3, r4, r5, r6, r7, pc}
	ldr r0, [sp, #0x20]
	mov r2, #8
	cmp r0, #0
	rsbeq r1, r4, #6
	rsbne r1, r4, #0xd
	ldr r0, [r7, #0x24]
	addeq r6, r6, #7
	add r0, r0, r1, lsl #4
	str r0, [sp]
	ldr r4, _02125B74 ; =0x020A8440
	mov r0, r6
	mov r1, r5
	mov r3, #1
	str r4, [sp, #4]
	bl FUN_020F191C
	add sp, sp, #8
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_02125B74: .word 0x020A8440
	arm_func_end FUN_ov114_02125ad4

	arm_func_start FUN_ov114_02125b78
FUN_ov114_02125b78: ; 0x02125B78
	stmfd sp!, {r4, r5, r6, r7, r8, r9, r10, lr}
	sub sp, sp, #8
	mov r4, r0
	mov r10, r1
	ldr r5, _02125CB8 ; =0x02099EF0
	mov r8, r3
	add r1, r4, #0x2c
	mov r0, #0x14
	mla r7, r8, r0, r1
	ldr r0, [r5]
	mov r1, r8
	mov r9, r2
	bl FUN_02144F90
	movs r6, r0
	ldreq r0, _02125CBC ; =0x020E9485
	ldreqb r0, [r0, r8]
	cmpeq r0, #0
	bne _02125C70
	mov r0, #0
	ldr r1, _02125CC0 ; =0x020A8440
	str r0, [sp]
	mov r0, r10
	str r1, [sp, #4]
	mov r1, #0x13
	mov r2, #0xf
	mov r3, #2
	bl FUN_020F197C
	ldr r0, [r5]
	mov r1, r8
	bl FUN_02143A34
	add r1, r8, #4
	add r1, r4, r1, lsl #2
	ldr r1, [r1, #0x7c]
	mov r6, r0
	cmp r6, r1
	bne _02125C18
	ldr r0, [r5]
	bl FUN_02143C9C
	cmp r0, #0
	beq _02125C44
_02125C18:
	add r0, r8, #4
	add r3, r4, r0, lsl #2
	mov r0, r4
	mov r1, r7
	mov r2, r8
	str r6, [r3, #0x7c]
	bl FUN_ov114_02124d00
	ldr r0, _02125CB8 ; =0x02099EF0
	mov r1, #0
	ldr r0, [r0]
	bl FUN_02143C94
_02125C44:
	ldr r1, [r7]
	ldr r0, _02125CC0 ; =0x020A8440
	str r1, [sp]
	str r0, [sp, #4]
	ldrh r2, [r7, #0xc]
	ldrh r3, [r7, #0xe]
	mov r0, r9
	mov r1, #0x13
	bl FUN_020F191C
	add sp, sp, #8
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, pc}
_02125C70:
	mov r1, #0
	ldr r0, _02125CC0 ; =0x020A8440
	str r1, [sp]
	str r0, [sp, #4]
	mov r5, #0x13
	ldrh r2, [r7, #0xc]
	ldrh r3, [r7, #0xe]
	mov r0, r9
	mov r1, r5
	bl FUN_020F197C
	mov r0, r4
	mov r1, r10
	mov r2, r5
	mov r3, r6
	str r8, [sp]
	bl FUN_ov114_02125ad4
	add sp, sp, #8
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, pc}
_02125CB8: .word 0x02099EF0
_02125CBC: .word 0x020E9485
_02125CC0: .word 0x020A8440
	arm_func_end FUN_ov114_02125b78

	arm_func_start FUN_ov114_02125cc4
FUN_ov114_02125cc4: ; 0x02125CC4
	stmfd sp!, {r4, r5, r6, lr}
	sub sp, sp, #0x58
	ldr r4, _02125EB4 ; =0x020A0640
	mov r6, r0
	ldr r2, [r4]
	ldr r0, _02125EB8 ; =0x88888889
	ldr r1, [r6, #0x7c]
	umull r0, r12, r2, r0
	mov r12, r12, lsr #4
	cmp r1, r12
	beq _02125D50
	ldr r0, _02125EBC ; =0x0000176F
	ldr r1, _02125EB8 ; =0x88888889
	str r12, [r6, #0x7c]
	cmp r12, r0
	movgt r12, r0
	smull r0, r3, r1, r12
	smull r0, r2, r1, r12
	mov lr, r12, lsr #0x1f
	add r3, r12, r3
	add r3, lr, r3, asr #5
	mov r1, #0x3c
	smull r3, r0, r1, r3
	add r5, sp, #8
	add r2, r12, r2
	ldr r1, _02125EC0 ; =0x021263A4
	mov r0, r5
	add r2, lr, r2, asr #5
	sub r3, r12, r3
	bl FUN_02023c40
	mov r0, r6
	mov r3, r5
	mov r1, #0xb
	mov r2, #2
	bl FUN_ov114_0212594c
_02125D50:
	ldrb r0, [r4, #0x8f]
	cmp r0, #2
	movls r1, #1
	bls _02125DC0
	cmp r0, #3
	blo _02125D74
	cmp r0, #5
	movls r1, #2
	bls _02125DC0
_02125D74:
	ldrb r0, [r4, #0x8f]
	cmp r0, #6
	blo _02125D8C
	cmp r0, #8
	movls r1, #3
	bls _02125DC0
_02125D8C:
	ldrb r0, [r4, #0x8f]
	cmp r0, #9
	blo _02125DA4
	cmp r0, #0xb
	movls r1, #4
	bls _02125DC0
_02125DA4:
	ldrb r0, [r4, #0x8f]
	cmp r0, #0xc
	blo _02125DBC
	cmp r0, #0xe
	movls r1, #5
	bls _02125DC0
_02125DBC:
	mvn r1, #0
_02125DC0:
	ldr r0, [r6, #0x80]
	sub r3, r1, #1
	cmp r0, r3
	ldrne r1, [r6, #0x14]
	strne r3, [r6, #0x80]
	cmpne r1, #0
	beq _02125E04
	mov r2, #6
	mul r0, r3, r2
	add r0, r1, r0, lsl #2
	ldr r4, _02125EC4 ; =0x020A8440
	str r0, [sp]
	mov r0, #0xd
	mov r1, #0
	mov r3, #2
	str r4, [sp, #4]
	bl FUN_020F191C
_02125E04:
	ldr r0, _02125EC8 ; =0x02099EF0
	mov r1, #0
	ldr r0, [r0]
	bl FUN_02143C28
	ldr r1, [r6, #0x84]
	mov r3, r0
	cmp r1, r3
	beq _02125E38
	mov r0, r6
	mov r1, #2
	mov r2, #0xc
	str r3, [r6, #0x84]
	bl FUN_ov114_021259ec
_02125E38:
	ldr r0, _02125EC8 ; =0x02099EF0
	mov r1, #1
	ldr r0, [r0]
	bl FUN_02143C28
	ldr r1, [r6, #0x88]
	mov r3, r0
	cmp r1, r3
	beq _02125E6C
	mov r0, r6
	mov r1, #0x13
	mov r2, #0xc
	str r3, [r6, #0x88]
	bl FUN_ov114_021259ec
_02125E6C:
	mov r4, #0
	mov r0, r6
	mov r1, r4
	mov r3, r4
	mov r2, #2
	bl FUN_ov114_02125b78
	mov r0, r6
	mov r1, #0x11
	mov r2, #0x13
	mov r3, #1
	bl FUN_ov114_02125b78
	ldr r2, [r6, #0x28]
	ldr r3, _02125EC4 ; =0x020A8440
	mov r1, r4
	mov r0, #0x1e
	bl FUN_020DBCCC
	add sp, sp, #0x58
	ldmfd sp!, {r4, r5, r6, pc}
_02125EB4: .word 0x020A0640
_02125EB8: .word 0x88888889
_02125EBC: .word 0x0000176F
_02125EC0: .word 0x021263A4
_02125EC4: .word 0x020A8440
_02125EC8: .word 0x02099EF0
	arm_func_end FUN_ov114_02125cc4

	arm_func_start FUN_ov114_02125ecc
FUN_ov114_02125ecc: ; 0x02125ECC
	stmfd sp!, {r4, r5, r6, lr}
	mov r4, r0
	mov r2, #0
	str r2, [r4, #8]
	mvn r1, #0
	b _02125EF0
_02125EE4:
	add r0, r4, r2, lsl #2
	str r1, [r0, #0x7c]
	add r2, r2, #1
_02125EF0:
	cmp r2, #6
	blt _02125EE4
	mov r2, #0
	add r0, r4, #0x2c
	mov r1, #4
	str r2, [r4, #0x14]
	str r2, [r4, #0x18]
	str r2, [r4, #0x1c]
	str r2, [r4, #0x20]
	str r2, [r4, #0x24]
	str r2, [r4, #0x28]
	bl FUN_020F2F7C
	ldr r0, _02125FB4 ; =0x020A0640
	ldrb r0, [r0, #0x1a]
	cmp r0, #0
	bne _02125F3C
	bl FUN_020F068C
	cmp r0, #0
	beq _02125F7C
_02125F3C:
	mov r0, #0
	bl FUN_020DC150
	cmp r0, #0
	beq _02125F5C
	add r0, r4, #0x54
	mov r1, #0xf
	mov r2, #2
	bl FUN_020F2FA8
_02125F5C:
	mov r0, #1
	bl FUN_020DC150
	cmp r0, #0
	beq _02125F7C
	add r0, r4, #0x68
	mov r1, #0xf
	mov r2, #2
	bl FUN_020F2FA8
_02125F7C:
	mov r6, #0xb
	mov r5, #4
	mov r1, r6
	mov r2, r5
	add r0, r4, #0x2c
	bl FUN_020F2FA8
	mov r1, r6
	mov r2, r5
	add r0, r4, #0x40
	bl FUN_020F2FA8
	mov r0, r4
	mov r1, #1
	bl FUN_ov114_02124dc4
	ldmfd sp!, {r4, r5, r6, pc}
_02125FB4: .word 0x020A0640
	arm_func_end FUN_ov114_02125ecc

	arm_func_start FUN_ov114_02125fb8
FUN_ov114_02125fb8: ; 0x02125FB8
	stmfd sp!, {r4, lr}
	mov r4, r0
	ldr r0, [r4, #4]
	bl FUN_02041fec
	cmp r0, #0x3d
	ldmeqfd sp!, {r4, pc}
	ldr r0, [r4, #8]
	cmp r0, #1
	beq _02125FE8
	cmp r0, #3
	beq _02126040
	ldmfd sp!, {r4, pc}
_02125FE8:
	add r0, r4, #0x94
	mov r1, #0xf
	bl FUN_020F330C
	cmp r0, #0
	ldmeqfd sp!, {r4, pc}
	ldr r0, [r4, #0xc]
	cmp r0, #1
	beq _02126014
	cmp r0, #2
	beq _02126024
	ldmfd sp!, {r4, pc}
_02126014:
	mov r0, r4
	mov r1, #2
	bl FUN_ov114_02124dc4
	ldmfd sp!, {r4, pc}
_02126024:
	mov r0, r4
	bl FUN_ov114_0212506c
	mov r1, #2
	mov r0, #0
	str r1, [r4, #8]
	str r0, [r4, #0x10]
	ldmfd sp!, {r4, pc}
_02126040:
	mov r0, r4
	bl FUN_ov114_02125cc4
	ldmfd sp!, {r4, pc}
	arm_func_end FUN_ov114_02125fb8

	arm_func_start FUN_ov114_0212604c
FUN_ov114_0212604c: ; 0x0212604C
	stmfd sp!, {r3, r4, r5, lr}
	mov r4, r0
	ldr r0, [r4, #4]
	bl FUN_02041fec
	cmp r0, #0x3d
	ldmeqfd sp!, {r3, r4, r5, pc}
	ldr r0, [r4, #8]
	cmp r0, #2
	beq _0212607C
	cmp r0, #3
	beq _02126108
	ldmfd sp!, {r3, r4, r5, pc}
_0212607C:
	mov r0, r4
	bl FUN_ov114_021250b4
	cmp r0, #0
	ldmeqfd sp!, {r3, r4, r5, pc}
	mov r0, r4
	bl FUN_ov114_0212508c
	ldr r0, _02126138 ; =0x020A0640
	ldrb r0, [r0, #0x1a]
	cmp r0, #0
	beq _021260EC
	ldr r2, _0212613C ; =0x04001040
	ldr r1, _02126140 ; =0x0000F0FF
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
_021260EC:
	mov r0, r4
	ldr r1, [r0]
	ldr r1, [r1, #0x4c]
	blx r1
	mov r0, #3
	str r0, [r4, #8]
	ldmfd sp!, {r3, r4, r5, pc}
_02126108:
	mov r0, r4
	bl FUN_ov114_021258c0
	ldr r5, _02126144 ; =0x020A8440
	mov r4, #0x800
	mov r0, r5
	mov r1, r4
	bl FUN_020026d0
	mov r0, r5
	mov r2, r4
	mov r1, #0
	bl FUN_0200562c
	ldmfd sp!, {r3, r4, r5, pc}
_02126138: .word 0x020A0640
_0212613C: .word 0x04001040
_02126140: .word 0x0000F0FF
_02126144: .word 0x020A8440
	arm_func_end FUN_ov114_0212604c

	arm_func_start FUN_ov114_02126148
FUN_ov114_02126148: ; 0x02126148
	stmfd sp!, {r4, lr}
	ldr r1, _02126190 ; =0x020A0640
	mov r4, r0
	ldrb r0, [r1, #0x1a]
	cmp r0, #0
	ldrne r1, _02126194 ; =0x04001000
	ldrne r0, [r1]
	bicne r0, r0, #0xe000
	strne r0, [r1]
	add r0, r4, #0x94
	mov r1, #0xf
	bl FUN_020F338C
	mov r0, r4
	bl FUN_ov114_0212508c
	add r0, r4, #0x2c
	mov r1, #4
	bl FUN_020F2FE4
	ldmfd sp!, {r4, pc}
_02126190: .word 0x020A0640
_02126194: .word 0x04001000
	arm_func_end FUN_ov114_02126148

	arm_func_start FUN_ov114_02126198
FUN_ov114_02126198: ; 0x02126198
	stmfd sp!, {r4, lr}
	mov r4, r0
	bl FUN_0201e078
	mov r0, r4
	ldmfd sp!, {r4, pc}
	arm_func_end FUN_ov114_02126198

	arm_func_start FUN_ov114_021261ac
FUN_ov114_021261ac: ; 0x021261AC
	bx lr
	arm_func_end FUN_ov114_021261ac
_021261B0:
	.byte 0x90, 0x62, 0x12, 0x02, 0x01, 0x00, 0x00, 0x00, 0xA8, 0x62, 0x12, 0x02, 0x02, 0x00, 0x00, 0x00
	.byte 0xB4, 0x62, 0x12, 0x02, 0x03, 0x00, 0x00, 0x00, 0x78, 0x62, 0x12, 0x02, 0x04, 0x00, 0x00, 0x00
	.byte 0x84, 0x62, 0x12, 0x02, 0x07, 0x00, 0x00, 0x00, 0x9C, 0x62, 0x12, 0x02, 0x05, 0x00, 0x00, 0x00
	.byte 0xC0, 0x62, 0x12, 0x02, 0x06, 0x00, 0x00, 0x00, 0xCC, 0x62, 0x12, 0x02, 0x08, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00

	arm_func_start FUN_ov114_021261f8
FUN_ov114_021261f8: ; 0x021261F8
	stmfd sp!, {r3, r4, r5, lr}
	mov r5, #0x2000
	mov r0, r5
	bl FUN_020095ac
	ldr r4, _02126240 ; =0x02126260
	str r0, [r4, #4]
	ldr r0, _02126244 ; =0x00009CCD
	bl FUN_020095ac
	mov r1, #0x800
	str r0, [r4, #0x10]
	ldr r0, _02126248 ; =0x0000EA3C
	str r1, [r4, #0x14]
	str r0, [r4, #8]
	add r0, r5, #0x4e0000
	str r0, [r4]
	add r0, r1, #0x840000
	str r0, [r4, #0xc]
	ldmfd sp!, {r3, r4, r5, pc}
_02126240: .word 0x02126260
_02126244: .word 0x00009CCD
_02126248: .word 0x0000EA3C
	arm_func_end FUN_ov114_021261f8
	; 0x0212624C