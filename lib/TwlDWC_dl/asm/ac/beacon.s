
	.include "asm/macros/function.inc"
	.public DWCi_AC_GetMemPtr
	.public DWCi_AC_GetPhase
	.public DWCi_AC_SetStealthChannel
	.public DWCi_AC_CheckNintendoShopAP
	.public DWCi_AC_CheckNintendoUsbAP
	.public strncmp
	.public WCMi_BssDescCopy
	.public MIi_CpuCopy32
	.public MIi_CpuClear32

	.text
	arm_func_start DWCi_AC_GetBeacon
DWCi_AC_GetBeacon: ; 0x020C28A4
	stmfd sp!, {r4, r5, r6, r7, r8, lr}
	mov r7, r0
	mov r0, #0x10
	mvn r5, #0
	bl DWCi_AC_GetMemPtr
	mov r4, #1
	mov r6, r0
	mov r0, r4
	bl DWCi_AC_GetMemPtr
	ldrb r1, [r0, #0xb]
	bic r1, r1, #0xf
	orr r1, r1, #1
	strb r1, [r0, #0xb]
	bl DWCi_AC_GetPhase
	cmp r0, #3
	beq _020C28F8
	cmp r0, #4
	beq _020C294C
	cmp r0, #5
	beq _020C2998
	ldmfd sp!, {r4, r5, r6, r7, r8, pc}
_020C28F8:
	ldrh r1, [r7, #0xa]
	ldrb r4, [r6, #0xd11]
	cmp r1, #0
	ldrneb r0, [r7, #0xc]
	cmpne r0, #0
	bne _020C291C
	ldrh r0, [r7, #0x36]
	bl DWCi_AC_SetStealthChannel
	b _020C29DC
_020C291C:
	cmp r1, #1
	cmpeq r0, #0x20
	bne _020C2948
	ldrh r0, [r7, #0x36]
	bl DWCi_AC_SetStealthChannel
_020C2930:
	ldrb r1, [r6, #0xd10]
	mov r0, r7
	add r2, r6, #0x300
	bl CompareList
	mov r5, r0
	b _020C29DC
_020C2948:
	b _020C2930
_020C294C:
	ldrb r2, [r6, #0xd0f]
	mov r1, #0xc0
	mov r0, r7
	mla r1, r2, r1, r6
	add r1, r1, #0x400
	ldrh r2, [r1, #0xa6]
	mov r1, r6
	sub r2, r2, #1
	and r4, r2, #0xff
	bl CompareListDiff
	movs r5, r0
	bmi _020C29DC
	ldrb r1, [r6, #0xd0f]
	add r0, r6, #0x47
	add r2, r0, #0x400
	ldrb r0, [r2, r1, lsl #2]
	orr r0, r0, #0x80
	strb r0, [r2, r1, lsl #2]
	b _020C29DC
_020C2998:
	ldrb r0, [r6, #0xd0f]
	add r1, r6, #0x300
	mov r8, #0x24
	mla r2, r0, r8, r1
	mov r1, r4
	mov r0, r7
	ldrb r4, [r6, #0xd11]
	bl CompareList
	movs r5, r0
	bmi _020C29DC
	ldrb r0, [r6, #0xd0f]
	add r2, r6, #0x300
	mul r1, r0, r8
	ldrb r0, [r2, r1]
	bic r0, r0, #0xf
	orr r0, r0, #1
	strb r0, [r2, r1]
_020C29DC:
	cmp r5, #0
	ldmltfd sp!, {r4, r5, r6, r7, r8, pc}
	mov r0, r5
	mov r1, r7
	mov r2, r4
	mov r3, r6
	bl AddList
	mov r1, r6
	bl SortList
	ldmfd sp!, {r4, r5, r6, r7, r8, pc}
	arm_func_end DWCi_AC_GetBeacon

	arm_func_start DWCi_AC_CheckNintendoSSID
DWCi_AC_CheckNintendoSSID: ; 0x020C2A04
	stmfd sp!, {r3, r4, r5, lr}
	mov r5, r0
	mov r0, #0x10
	bl DWCi_AC_GetMemPtr
	mov r4, r0
	ldrb r0, [r4, #0xd0c]
	mov r0, r0, lsl #0x1c
	movs r0, r0, lsr #0x1c
	beq _020C2A30
	cmp r0, #4
	bne _020C2A58
_020C2A30:
	ldrh r0, [r5, #0x2c]
	mov r0, r0, asr #4
	and r0, r0, #1
	cmp r0, #1
	bne _020C2A58
	add r0, r5, #0xc
	bl DWCi_AC_CheckNintendoUsbAP
	cmp r0, #1
	moveq r0, #6
	ldmeqfd sp!, {r3, r4, r5, pc}
_020C2A58:
	ldrb r0, [r4, #0xd0c]
	mov r0, r0, lsl #0x1c
	movs r0, r0, lsr #0x1c
	beq _020C2A70
	cmp r0, #5
	bne _020C2A98
_020C2A70:
	ldrh r0, [r5, #0x2c]
	mov r0, r0, asr #4
	and r0, r0, #1
	cmp r0, #1
	bne _020C2A98
	add r0, r5, #0xc
	bl DWCi_AC_CheckNintendoShopAP
	cmp r0, #1
	moveq r0, #7
	ldmeqfd sp!, {r3, r4, r5, pc}
_020C2A98:
	mvn r0, #0
	ldmfd sp!, {r3, r4, r5, pc}
	arm_func_end DWCi_AC_CheckNintendoSSID

	arm_func_start DWCi_AC_IsSupportWPA
DWCi_AC_IsSupportWPA: ; 0x020C2AA0
	mov r0, #0
	bx lr
	arm_func_end DWCi_AC_IsSupportWPA

	arm_static_func_start CompareList
CompareList: ; 0x020C2AA8
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, lr}
	mov r6, r0
	ldrh r3, [r6, #0xa]
	mov r5, r1
	mov r4, r2
	cmp r3, #0x20
	bne _020C2AD0
	bl DWCi_AC_CheckNintendoSSID
	cmp r0, #0
	ldmgtfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
_020C2AD0:
	cmp r5, #0
	mov r8, #0
	ble _020C2B1C
	ldrh r9, [r6, #0xa]
	and r7, r9, #0xff
_020C2AE4:
	ldrb r0, [r4, #3]
	cmp r7, r0
	bne _020C2B0C
	mov r2, r9
	add r0, r6, #0xc
	add r1, r4, #4
	bl strncmp
	cmp r0, #0
	ldreqb r0, [r4, #1]
	ldmeqfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
_020C2B0C:
	add r8, r8, #1
	cmp r8, r5
	add r4, r4, #0x24
	blt _020C2AE4
_020C2B1C:
	mvn r0, #0
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
	arm_func_end CompareList

	arm_static_func_start CompareListDiff
CompareListDiff: ; 0x020C2B24
	stmfd sp!, {r4, r5, r6, r7, r8, r9, r10, lr}
	mov r9, r0
	ldrh r2, [r9, #0xa]
	mov r8, r1
	cmp r2, #0x20
	bne _020C2B48
	bl DWCi_AC_CheckNintendoSSID
	cmp r0, #0
	ldmgtfd sp!, {r4, r5, r6, r7, r8, r9, r10, pc}
_020C2B48:
	ldrb r7, [r8, #0xd12]
	mov r5, #0
	cmp r7, #0
	ble _020C2BAC
	ldrh r6, [r9, #0xa]
	add r0, r8, #0x7c
	add r4, r0, #0x400
	mov r10, #0xc0
_020C2B68:
	mul r1, r5, r10
	add r0, r8, r1
	add r0, r0, #0x400
	ldrh r0, [r0, #0x7a]
	cmp r6, r0
	bne _020C2BA0
	mov r2, r6
	add r0, r9, #0xc
	add r1, r4, r1
	bl strncmp
	cmp r0, #0
	addeq r0, r8, r5, lsl #2
	ldreqb r0, [r0, #0x445]
	ldmeqfd sp!, {r4, r5, r6, r7, r8, r9, r10, pc}
_020C2BA0:
	add r5, r5, #1
	cmp r5, r7
	blt _020C2B68
_020C2BAC:
	mvn r0, #0
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, pc}
	arm_func_end CompareListDiff

	arm_static_func_start AddList
AddList: ; 0x020C2BB4
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, lr}
	sub sp, sp, #0x18
	ldrb r4, [r3, #0xd12]
	str r0, [sp]
	mvn r0, #0
	str r3, [sp, #8]
	mov r5, r1
	str r2, [sp, #4]
	cmp r4, #0
	mov r6, #1
	str r0, [sp, #0xc]
	mov r7, #0
	ble _020C2CD8
	mov r0, r3
	add r1, r0, #0x7c
	add r2, r0, #0x74
	add r0, r1, #0x400
	str r0, [sp, #0x14]
	add r0, r2, #0x400
	ldrb r11, [r5, #4]
	str r0, [sp, #0x10]
_020C2C08:
	mov r0, #0xc0
	mul r9, r7, r0
	ldr r0, [sp, #0x10]
	mov r2, #0
	add r10, r0, r9
	ldrb r0, [r0, r9]
	mov r8, r2
	mov r3, r2
	cmp r11, r0
	ldreqb r1, [r5, #5]
	ldreqb r0, [r10, #1]
	mov r12, r2
	mov lr, r2
	cmpeq r1, r0
	moveq r8, r6
	cmp r8, #0
	beq _020C2C5C
	ldrb r1, [r5, #6]
	ldrb r0, [r10, #2]
	cmp r1, r0
	moveq lr, r6
_020C2C5C:
	cmp lr, #0
	beq _020C2C74
	ldrb r1, [r5, #7]
	ldrb r0, [r10, #3]
	cmp r1, r0
	moveq r12, r6
_020C2C74:
	cmp r12, #0
	beq _020C2C8C
	ldrb r1, [r5, #8]
	ldrb r0, [r10, #4]
	cmp r1, r0
	moveq r3, r6
_020C2C8C:
	cmp r3, #0
	beq _020C2CA4
	ldrb r0, [r10, #5]
	ldrb r1, [r5, #9]
	cmp r1, r0
	moveq r2, r6
_020C2CA4:
	cmp r2, #0
	beq _020C2CCC
	ldr r0, [sp, #0x14]
	ldrh r2, [r5, #0xa]
	add r1, r0, r9
	add r0, r5, #0xc
	bl strncmp
	cmp r0, #0
	streq r7, [sp, #0xc]
	beq _020C2CD8
_020C2CCC:
	add r7, r7, #1
	cmp r7, r4
	blt _020C2C08
_020C2CD8:
	ldr r0, [sp, #0xc]
	mov r1, r5
	cmn r0, #1
	bne _020C2D20
	ldr r0, [sp]
	ldr r2, [sp, #4]
	ldr r3, [sp, #8]
	and r0, r0, #0xff
	bl SetDataListTail
	ldr r0, [sp, #8]
	ldrb r0, [r0, #0xd12]
	cmp r0, #0xa
	addlo r1, r0, #1
	ldrlo r0, [sp, #8]
	strlob r1, [r0, #0xd12]
	mov r0, #0xa
	str r0, [sp, #0xc]
	b _020C2D2C
_020C2D20:
	ldr r2, [sp, #4]
	ldr r3, [sp, #8]
	bl UpDateList
_020C2D2C:
	ldr r0, [sp, #0xc]
	add sp, sp, #0x18
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
	arm_func_end AddList

	arm_static_func_start SetDataListTail
SetDataListTail: ; 0x020C2D38
	stmfd sp!, {r4, lr}
	ldrb lr, [r3, #0xd0c]
	add r12, r3, #0x6c
	strb r0, [r12, #0x401]
	mov r0, lr, lsl #0x1a
	mov r0, r0, lsr #0x1f
	cmp r0, #1
	ldrh r4, [r1, #2]
	bne _020C2D70
	mov r0, r4, asr #2
	tst r4, #2
	andne r4, r0, #0xff
	addeq r0, r0, #0x19
	andeq r4, r0, #0xff
_020C2D70:
	ldrb lr, [r12, #0x403]
	mov r0, r1
	and r1, r2, #0x7f
	bic r2, lr, #0x7f
	orr r2, r2, r1
	add r1, r3, #0xbf0
	strb r4, [r12, #0x402]
	strb r2, [r12, #0x403]
	bl WCMi_BssDescCopy
	ldmfd sp!, {r4, pc}
	arm_func_end SetDataListTail

	arm_static_func_start UpDateList
UpDateList: ; 0x020C2D98
	stmfd sp!, {r4, lr}
	ldrb r4, [r3, #0xd0c]
	mov r12, #0xc0
	mul r12, r0, r12
	add lr, r3, #0x44
	mov r4, r4, lsl #0x1a
	add lr, lr, #0x400
	mov r4, r4, lsr #0x1f
	cmp r4, #1
	add r0, lr, r0, lsl #2
	add r3, r3, #0x470
	ldrh r4, [r1, #2]
	bne _020C2DE0
	tst r4, #2
	mov r4, r4, asr #2
	andne r4, r4, #0xff
	addeq r4, r4, #0x19
	andeq r4, r4, #0xff
_020C2DE0:
	ldrb lr, [r0, #2]
	and r4, r4, #0xff
	cmp r4, lr
	bls _020C2E08
	strb r4, [r0, #2]
	ldrb lr, [r0, #3]
	and r2, r2, #0x7f
	bic lr, lr, #0x7f
	orr r2, lr, r2
	strb r2, [r0, #3]
_020C2E08:
	mov r0, r1
	add r1, r3, r12
	mov r2, #0xc0
	bl MIi_CpuCopy32
	ldmfd sp!, {r4, pc}
	arm_func_end UpDateList

	arm_static_func_start SortList
SortList: ; 0x020C2E1C
	stmfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, lr}
	sub sp, sp, #0xc4
	mov r11, r1
	mov r10, r0
	add r0, r11, #0x44
	add r6, r0, #0x400
	add r7, r11, #0x470
	subs r9, r10, #1
	mov r5, #1
	mov r4, #0xc0
	bmi _020C2FDC
_020C2E48:
	ldrb r0, [r11, #0xd0c]
	mov r8, #0
	mov r0, r0, lsl #0x18
	mov r0, r0, lsr #0x1f
	cmp r0, #1
	bne _020C2E94
	mla r0, r10, r4, r7
	bl DWCi_AC_IsSupportWPA
	cmp r0, #1
	bne _020C2E94
	add r0, r6, r10, lsl #2
	ldrb r1, [r0, #2]
	add r0, r6, r9, lsl #2
	ldrb r0, [r0, #2]
	cmp r1, r0
	bhs _020C2E8C
	b _020C2F2C
_020C2E8C:
	mov r8, r5
	b _020C2F58
_020C2E94:
	add r1, r6, r10, lsl #2
	ldrb r0, [r1, #1]
	cmp r0, #7
	blo _020C2F00
	cmp r0, #0xa
	bhi _020C2F00
	ldrb r0, [r1, #2]
	add r1, r6, r9, lsl #2
	ldrb r3, [r1, #2]
	cmp r0, r3
	blo _020C2F58
	ldrb r2, [r1, #1]
	cmp r2, #7
	blo _020C2ED4
	cmp r2, #0xa
	bls _020C2EFC
_020C2ED4:
	add r0, r6, r9, lsl #2
	ldrb r0, [r0, #3]
	ldrb r12, [r6, r9, lsl #2]
	mov r1, r0, lsl #0x18
	add r2, r12, r2
	add r2, r3, r2
	mov r0, r0, lsl #0x19
	add r0, r2, r0, lsr #25
	adds r0, r0, r1, lsr #31
	bne _020C2F58
_020C2EFC:
	b _020C2E8C
_020C2F00:
	add r0, r6, r10, lsl #2
	ldrb r2, [r0, #2]
	add r1, r6, r9, lsl #2
	ldrb r0, [r1, #2]
	cmp r2, r0
	blo _020C2F44
	ldrb r0, [r11, #0xd0c]
	mov r0, r0, lsl #0x18
	mov r0, r0, lsr #0x1f
	cmp r0, #1
	bne _020C2F40
_020C2F2C:
	mla r0, r9, r4, r7
	bl DWCi_AC_IsSupportWPA
	cmp r0, #0
	moveq r8, r5
	b _020C2F58
_020C2F40:
	b _020C2E8C
_020C2F44:
	ldrb r0, [r1, #1]
	cmp r0, #7
	blo _020C2F58
	cmp r0, #0xa
	movls r8, r5
_020C2F58:
	cmp r8, #1
	bne _020C2FD4
	add r8, r6, r9, lsl #2
	mov r0, r8
	add r1, sp, #0
	mov r2, #4
	bl MIi_CpuCopy32
	mov r1, r8
	add r8, r6, r10, lsl #2
	mov r0, r8
	mov r2, #4
	bl MIi_CpuCopy32
	mov r1, r8
	add r0, sp, #0
	mov r2, #4
	bl MIi_CpuCopy32
	mul r8, r9, r4
	add r0, r7, r8
	add r1, sp, #4
	mov r2, r4
	bl MIi_CpuCopy32
	add r1, r7, r8
	mul r8, r10, r4
	add r0, r7, r8
	mov r2, r4
	bl MIi_CpuCopy32
	add r1, r7, r8
	add r0, sp, #4
	mov r2, r4
	bl MIi_CpuCopy32
	mov r10, r9
_020C2FD4:
	subs r9, r9, #1
	bpl _020C2E48
_020C2FDC:
	mov r4, #0
	mov r0, r4
	add r1, r6, #0x28
	mov r2, #4
	bl MIi_CpuClear32
	mov r0, r4
	add r1, r7, #0x780
	mov r2, #0xc0
	bl MIi_CpuClear32
	add sp, sp, #0xc4
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
	arm_func_end SortList
