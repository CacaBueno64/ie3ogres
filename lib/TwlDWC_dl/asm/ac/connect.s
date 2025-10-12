
	.include "asm/macros/function.inc"
	.public DWCi_AC_GetPhase
	.public DWCi_AC_GetMemPtr
	.public MI_CpuFill8
	.public WCM_GetPhase
	.public WCM_ConnectAsync
	.public OS_GetTick
	.public DWCi_AC_SetError
	.public DWCi_AC_GetSearchListNum
	.public DWCi_AC_CheckNintendoSSID
	.public DWCi_AC_CheckFreespot
	.public strncmp
	.public MI_CpuCopy8
	.public DWCi_AC_GetNintendoUSBWepKey
	.public DWCi_AC_GetNintendoShopWepKey

	.text
	arm_func_start DWCi_AC_ConnectAP
DWCi_AC_ConnectAP: ; 0x020C31EC
	stmfd sp!, {r4, lr}
	bl DWCi_AC_GetPhase
	mov r4, r0
	mov r0, #0x10
	bl DWCi_AC_GetMemPtr
	cmp r4, #7
	beq _020C3214
	cmp r4, #8
	beq _020C321C
	b _020C3224
_020C3214:
	bl ConnectStart
	b _020C3220
_020C321C:
	bl ConnectAP
_020C3220:
	mov r4, r0
_020C3224:
	mov r0, r4
	ldmfd sp!, {r4, pc}
	arm_func_end DWCi_AC_ConnectAP

	arm_static_func_start ConnectStart
ConnectStart: ; 0x020C322C
	stmfd sp!, {r3, r4, r5, lr}
	mov r5, r0
	ldrb r2, [r5, #0xd13]
	add r3, r5, #0x470
	mov r1, #0xc0
	mla r4, r2, r1, r3
	bl GetConnectType
	add r1, r5, #0xb8
	strb r0, [r5, #0xd0d]
	add r0, r1, #0xc00
	mov r1, #0
	mov r2, #0x52
	bl MI_CpuFill8
	add r2, r5, #0xb8
	ldrb r1, [r5, #0xd0d]
	mov r0, r5
	add r2, r2, #0xc00
	bl GetWepKey
	cmp r0, #0
	ldrb r0, [r5, #0xd0b]
	bic r0, r0, #0xc
	beq _020C32E0
	orr r0, r0, #4
	strb r0, [r5, #0xd0b]
	ldrh r0, [r4, #0x2c]
	mov r0, r0, asr #4
	tst r0, #1
	bne _020C32B4
	ldrb r1, [r5, #0xd13]
	mov r2, #3
	mov r0, #9
	add r1, r5, r1, lsl #2
	strb r2, [r1, #0x444]
	ldmfd sp!, {r3, r4, r5, pc}
_020C32B4:
	ldrb r0, [r5, #0xd0d]
	cmp r0, #6
	ldreqb r0, [r4, #0x15]
	cmpeq r0, #0
	bne _020C3310
	ldrb r1, [r5, #0xd13]
	mov r2, #3
	mov r0, #9
	add r1, r5, r1, lsl #2
	strb r2, [r1, #0x444]
	ldmfd sp!, {r3, r4, r5, pc}
_020C32E0:
	strb r0, [r5, #0xd0b]
	ldrh r0, [r4, #0x2c]
	mov r0, r0, asr #4
	and r0, r0, #1
	cmp r0, #1
	bne _020C3310
	ldrb r1, [r5, #0xd13]
	mov r2, #3
	mov r0, #9
	add r1, r5, r1, lsl #2
	strb r2, [r1, #0x444]
	ldmfd sp!, {r3, r4, r5, pc}
_020C3310:
	mov r0, #0
	strb r0, [r5, #0xd15]
	strb r0, [r5, #0xd14]
	mov r0, #8
	ldmfd sp!, {r3, r4, r5, pc}
	arm_func_end ConnectStart

	arm_static_func_start ConnectAP
ConnectAP: ; 0x020C3324
	stmfd sp!, {r4, r5, r6, r7, r8, lr}
	mov r8, r0
	mov r4, #0
	bl WCM_GetPhase
	ldrb r2, [r8, #0xd13]
	mov r1, #0xc0
	cmp r0, #3
	add r6, r8, #0x470
	smulbb r5, r2, r1
	bne _020C3428
	mov r0, r8
	bl GetPowerMode
	ldrb r1, [r8, #0xd15]
	mov r7, r0
	add r0, r1, #1
	and r1, r0, #0xff
	strb r0, [r8, #0xd15]
	cmp r1, #3
	bls _020C338C
	ldrb r0, [r8, #0xd13]
	strb r4, [r8, #0xd15]
	mov r1, #1
	add r0, r8, r0, lsl #2
	strb r1, [r0, #0x444]
	mov r0, #9
	ldmfd sp!, {r4, r5, r6, r7, r8, pc}
_020C338C:
	cmp r1, #1
	beq _020C3404
	ldrb r0, [r8, #0xd14]
	cmp r0, #1
	ldreqb r0, [r8, #0xd0b]
	biceq r0, r0, #0xc
	streqb r0, [r8, #0xd0b]
	beq _020C3404
	cmp r0, #2
	bne _020C33D0
	ldrb r0, [r8, #0xd13]
	strb r4, [r8, #0xd15]
	mov r1, #3
	add r0, r8, r0, lsl #2
	strb r1, [r0, #0x444]
	mov r0, #9
	ldmfd sp!, {r4, r5, r6, r7, r8, pc}
_020C33D0:
	cmp r0, #3
	bne _020C33F4
	ldrb r0, [r8, #0xd13]
	strb r4, [r8, #0xd15]
	mov r1, #4
	add r0, r8, r0, lsl #2
	strb r1, [r0, #0x444]
	mov r0, #9
	ldmfd sp!, {r4, r5, r6, r7, r8, pc}
_020C33F4:
	cmp r1, #3
	ldreqb r0, [r8, #0xd0b]
	biceq r0, r0, #0xc
	streqb r0, [r8, #0xd0b]
_020C3404:
	mov r0, r8
	bl GetAuthMode
	mov r2, r0
	add r1, r8, #0xb8
	add r0, r6, r5
	add r1, r1, #0xc00
	orr r2, r7, r2
	bl WCM_ConnectAsync
	b _020C3474
_020C3428:
	cmp r0, #9
	bne _020C3448
	strb r4, [r8, #0xd15]
	bl OS_GetTick
	str r0, [r8, #0xcb0]
	str r1, [r8, #0xcb4]
	mov r0, #0xa
	ldmfd sp!, {r4, r5, r6, r7, r8, pc}
_020C3448:
	cmp r0, #0xb
	bne _020C3460
	mov r0, r4
	bl DWCi_AC_SetError
	mov r0, #0x11
	ldmfd sp!, {r4, r5, r6, r7, r8, pc}
_020C3460:
	ble _020C3474
	mov r0, #4
	bl DWCi_AC_SetError
	mov r0, #0x11
	ldmfd sp!, {r4, r5, r6, r7, r8, pc}
_020C3474:
	mov r0, #8
	ldmfd sp!, {r4, r5, r6, r7, r8, pc}
	arm_func_end ConnectAP

	arm_static_func_start GetConnectType
GetConnectType: ; 0x020C347C
	stmfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, lr}
	sub sp, sp, #0xc
	mov r10, r0
	ldrb r1, [r10, #0xd13]
	mov r9, #0
	add r2, r10, #0x470
	mov r0, #0xc0
	str r9, [sp, #4]
	mla r5, r1, r0, r2
	bl DWCi_AC_GetSearchListNum
	ldrb r1, [r10, #0xd0c]
	mov r8, r0
	mov r0, r1, lsl #0x19
	movs r0, r0, lsr #0x1f
	bne _020C3598
	ldrh r0, [r5, #0xa]
	cmp r0, #0x20
	bne _020C34E0
	mov r0, r5
	bl DWCi_AC_CheckNintendoSSID
	cmp r0, #0
	str r0, [sp, #4]
	addgt r9, r9, #1
	strle r9, [sp, #4]
	b _020C3500
_020C34E0:
	cmp r0, #8
	bne _020C3500
	mov r0, r5
	bl DWCi_AC_CheckFreespot
	cmp r0, #0
	str r0, [sp, #4]
	addne r9, r9, #1
	streq r9, [sp, #4]
_020C3500:
	cmp r8, #0
	mov r6, #0
	ble _020C35FC
	add r0, r10, #0x304
	add r4, r10, #0x300
	add r11, r10, #0x10c
	str r0, [sp, #8]
_020C351C:
	mov r0, #0x24
	mul r7, r6, r0
	add r0, r10, r7
	str r0, [sp]
	ldrh r2, [r5, #0xa]
	ldrb r0, [r0, #0x303]
	cmp r2, r0
	bne _020C3588
	ldr r1, [sp, #8]
	add r0, r5, #0xc
	add r1, r1, r7
	bl strncmp
	cmp r0, #0
	bne _020C3588
	cmp r9, #0
	ldreq r0, [sp]
	ldreqb r0, [r0, #0x301]
	streq r0, [sp, #4]
	beq _020C3584
	ldrb r0, [r4, r7]
	bic r0, r0, #0xf0
	orr r0, r0, #0x10
	strb r0, [r4, r7]
	ldrb r0, [r11, #0xc00]
	orr r0, r0, #0x40
	strb r0, [r11, #0xc00]
_020C3584:
	add r9, r9, #1
_020C3588:
	add r6, r6, #1
	cmp r6, r8
	blt _020C351C
	b _020C35FC
_020C3598:
	mov r5, r9
	cmp r8, #0
	ble _020C35EC
	add r3, r10, #0x300
	mov r1, #0x24
_020C35AC:
	mul r4, r9, r1
	ldrb r0, [r3, r4]
	mov r2, r0, lsl #0x18
	mov r2, r2, lsr #0x1c
	cmp r2, #1
	bne _020C35E0
	cmp r5, #0
	biceq r0, r0, #0xf0
	streqb r0, [r3, r4]
	addeq r0, r10, r4
	ldreqb r0, [r0, #0x301]
	add r5, r5, #1
	streq r0, [sp, #4]
_020C35E0:
	add r9, r9, #1
	cmp r9, r8
	blt _020C35AC
_020C35EC:
	cmp r5, #1
	ldreqb r0, [r10, #0xd0c]
	biceq r0, r0, #0x40
	streqb r0, [r10, #0xd0c]
_020C35FC:
	ldr r0, [sp, #4]
	and r0, r0, #0xff
	add sp, sp, #0xc
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
	arm_func_end GetConnectType

	arm_static_func_start GetPowerMode
GetPowerMode: ; 0x020C360C
	ldrb r0, [r0, #0xd0b]
	mov r0, r0, lsl #0x1e
	mov r0, r0, lsr #0x1e
	cmp r0, #1
	moveq r0, #0x30000
	movne r0, #0x20000
	bx lr
	arm_func_end GetPowerMode

	arm_static_func_start GetAuthMode
GetAuthMode: ; 0x020C3628
	ldrb r0, [r0, #0xd0b]
	mov r0, r0, lsl #0x1c
	mov r0, r0, lsr #0x1e
	cmp r0, #1
	moveq r0, #0xc0000
	movne r0, #0x80000
	bx lr
	arm_func_end GetAuthMode

	arm_static_func_start GetWepKey
GetWepKey: ; 0x020C3644
	stmfd sp!, {r4, lr}
	mov r4, r2
	cmp r1, #9
	addls pc, pc, r1, lsl #2
	b _020C3714
_020C3658: ; jump table
	b _020C3688 ; case 0
	b _020C3684 ; case 1
	b _020C3680 ; case 2
	b _020C36B4 ; case 3
	b _020C36B0 ; case 4
	b _020C36AC ; case 5
	b _020C36C8 ; case 6
	b _020C36F0 ; case 7
	b _020C3714 ; case 8
	b _020C3714 ; case 9
_020C3680:
	add r0, r0, #0x100
_020C3684:
	add r0, r0, #0x100
_020C3688:
	ldrb r2, [r0, #0xe6]
	add r0, r0, #0x80
	add r1, r4, #2
	mov r2, r2, lsl #0x1e
	mov r3, r2, lsr #0x1e
	mov r2, #0x10
_020C36A0:
	strb r3, [r4]
	bl MI_CpuCopy8
	b _020C3714
_020C36AC:
	add r0, r0, #0x100
_020C36B0:
	add r0, r0, #0x100
_020C36B4:
	mov r3, #1
	add r0, r0, #0xd1
	add r1, r4, #2
	mov r2, #5
	b _020C36A0
_020C36C8:
	mov r1, #2
	strb r1, [r4]
	ldrb r1, [r0, #0xd13]
	add r0, r0, #0x7c
	add r2, r0, #0x400
	mov r0, #0xc0
	mla r0, r1, r0, r2
	add r1, r4, #2
	bl DWCi_AC_GetNintendoUSBWepKey
	b _020C3714
_020C36F0:
	mov r1, #2
	strb r1, [r4]
	ldrb r1, [r0, #0xd13]
	add r0, r0, #0x7c
	add r2, r0, #0x400
	mov r0, #0xc0
	mla r0, r1, r0, r2
	add r1, r4, #2
	bl DWCi_AC_GetNintendoShopWepKey
_020C3714:
	ldrb r0, [r4]
	cmp r0, #0
	movne r0, #1
	moveq r0, #0
	ldmfd sp!, {r4, pc}
	arm_func_end GetWepKey