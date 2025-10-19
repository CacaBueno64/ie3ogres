
	.include "asm/macros/function.inc"
	.public APC_Connect
	.public APC_Disconnect
	.public APC_End
	.public APC_GetAPList
	.public APC_Init
	.public APC_SearchEnd
	.public APC_SearchStart
	.public MI_CpuCopy8
	.public MI_CpuFill8
	.public MIi_CpuClear16
	.public MIi_CpuCopy16
	.public OS_CancelAlarm
	.public OS_CreateAlarm
	.public OS_DisableInterrupts
	.public OS_InitMessageQueue
	.public OS_ReceiveMessage
	.public OS_RestoreInterrupts
	.public OS_SendMessage
	.public OS_SetAlarm
	.public OS_Sleep
	.public WCM_ClearApList

	.text
	thumb_static_func_start Set_WLLA_BSS_INFO
Set_WLLA_BSS_INFO: ; 0x020F00AC
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	ldrh r0, [r5, #0xa]
	add r4, r1, #0
	add r1, r4, #4
	str r0, [r4]
	add r0, r5, #0
	add r0, #0xc
	mov r2, #0x20
	blx MIi_CpuCopy16
	ldrh r0, [r5, #0x36]
	add r1, r4, #0
	add r1, #0x30
	str r0, [r4, #0x24]
	add r0, r5, #4
	mov r2, #6
	blx MIi_CpuCopy16
	mov r1, #0
	ldr r2, _020F0134 ; =rateset_table
	add r0, r1, #0
	mov r6, #0x80
_020F00DA:
	ldrh r7, [r5, #0x30]
	ldrh r3, [r2]
	tst r3, r7
	beq _020F0104
	ldrb r7, [r2, #2]
	add r3, r4, r1
	add r3, #0x3c
	strb r7, [r3]
	ldrh r7, [r5, #0x2e]
	ldrh r3, [r2]
	tst r3, r7
	beq _020F0102
	add r3, r4, r1
	add r3, #0x3c
	ldrb r3, [r3]
	add r7, r3, #0
	add r3, r4, r1
	orr r7, r6
	add r3, #0x3c
	strb r7, [r3]
_020F0102:
	add r1, r1, #1
_020F0104:
	add r0, r0, #1
	add r2, r2, #4
	cmp r0, #0xc
	blt _020F00DA
	str r1, [r4, #0x38]
	ldrh r0, [r5, #0x32]
	str r0, [r4, #0x4c]
	ldrh r1, [r5, #0x2c]
	mov r0, #3
	and r0, r1
	cmp r0, #1
	bne _020F0122
	mov r0, #1
	str r0, [r4, #0x50]
	pop {r3, r4, r5, r6, r7, pc}
_020F0122:
	cmp r0, #2
	bne _020F012C
	mov r0, #2
	str r0, [r4, #0x50]
	pop {r3, r4, r5, r6, r7, pc}
_020F012C:
	mov r0, #0
	str r0, [r4, #0x50]
	pop {r3, r4, r5, r6, r7, pc}
	nop
_020F0134: .word rateset_table
	thumb_func_end Set_WLLA_BSS_INFO

	thumb_static_func_start Get_WLLA_SSID_PARAM
Get_WLLA_SSID_PARAM: ; 0x020F0138
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r4, r1, #0
	mov r0, #0
	add r1, #0xc
	mov r2, #0x20
	blx MIi_CpuClear16
	ldr r0, [r5]
	add r1, r4, #0
	strh r0, [r4, #0xa]
	ldrh r2, [r4, #0xa]
	add r0, r5, #4
	add r1, #0xc
	blx MI_CpuCopy8
	pop {r3, r4, r5, pc}
	thumb_func_end Get_WLLA_SSID_PARAM

	thumb_static_func_start Set_WLLA_LINK_STAT
Set_WLLA_LINK_STAT: ; 0x020F015C
	add r3, r0, #0
	add r0, r1, #0
	str r2, [r3]
	add r1, r3, #4
	ldr r3, _020F0168 ; =Set_WLLA_BSS_INFO
	bx r3
_020F0168: .word Set_WLLA_BSS_INFO
	thumb_func_end Set_WLLA_LINK_STAT

	thumb_static_func_start aoss_apc_callback
aoss_apc_callback: ; 0x020F016C
	ldr r3, _020F0178 ; =OS_SendMessage
	add r1, r0, #0
	ldr r0, _020F017C ; =aoss_mq
	mov r2, #0
	bx r3
	nop
_020F0178: .word OS_SendMessage
_020F017C: .word aoss_mq
	thumb_func_end aoss_apc_callback

	thumb_static_func_start alarmCallback
alarmCallback: ; 0x020F0181
	ldr r3, _020F018C ; =OS_SendMessage
	add r1, r0, #0x0
	ldr r0, _020F0190 ; =aoss_mq
	mov r2, #0x0
	bx r3
	nop
_020F018C: .word OS_SendMessage
_020F0190: .word aoss_mq
	thumb_func_end alarmCallback

	thumb_func_start AOSSi_InitLocal
AOSSi_InitLocal: ; 0x020F0194
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	add r6, r1, #0
	ldr r0, _020F0244 ; =aoss_mq
	ldr r1, _020F0248 ; =aoss_msgArray
	mov r2, #4
	mov r4, #1
	blx OS_InitMessageQueue
	cmp r5, #0
	beq _020F01AE
	cmp r6, #0
	bne _020F01B4
_020F01AE:
	mov r0, #0
	mvn r0, r0
	pop {r3, r4, r5, r6, r7, pc}
_020F01B4:
	blx OS_DisableInterrupts
	ldr r1, _020F024C ; =AOSSi_Alloc
	str r5, [r1]
	str r6, [r1, #0xc]
	blx OS_RestoreInterrupts
	ldr r1, _020F024C ; =AOSSi_Alloc
	ldr r0, _020F0250 ; =0x00005890
	ldr r1, [r1]
	blx r1
	add r1, r0, #0
	ldr r0, _020F024C ; =AOSSi_Alloc
	str r1, [r0, #8]
	bne _020F01D6
	sub r0, r4, #2
	pop {r3, r4, r5, r6, r7, pc}
_020F01D6:
	ldr r0, _020F0254 ; =aoss_apc_callback
	ldr r2, _020F0250 ; =0x00005890
	bl APC_Init
	cmp r0, #0
	bne _020F01E4
	mov r4, #0
_020F01E4:
	cmp r4, #0
	beq _020F0234
	ldr r5, _020F0244 ; =aoss_mq
	add r6, sp, #0
	mov r7, #1
_020F01EE:
	add r0, r5, #0
	add r1, r6, #0
	add r2, r7, #0
	blx OS_ReceiveMessage
	ldr r0, [sp]
	cmp r0, #0xf
	bhi _020F022E
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_020F020A: ; jump table
	.short _020F022E - _020F020A - 2 ; case 0
	.short _020F022E - _020F020A - 2 ; case 1
	.short _020F022E - _020F020A - 2 ; case 2
	.short _020F022E - _020F020A - 2 ; case 3
	.short _020F0230 - _020F020A - 2 ; case 4
	.short _020F0230 - _020F020A - 2 ; case 5
	.short _020F022A - _020F020A - 2 ; case 6
	.short _020F022E - _020F020A - 2 ; case 7
	.short _020F022E - _020F020A - 2 ; case 8
	.short _020F022E - _020F020A - 2 ; case 9
	.short _020F022E - _020F020A - 2 ; case 10
	.short _020F022E - _020F020A - 2 ; case 11
	.short _020F022E - _020F020A - 2 ; case 12
	.short _020F022E - _020F020A - 2 ; case 13
	.short _020F022E - _020F020A - 2 ; case 14
	.short _020F022E - _020F020A - 2 ; case 15
_020F022A:
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
_020F022E:
	mov r4, #0
_020F0230:
	cmp r4, #0
	bne _020F01EE
_020F0234:
	ldr r1, _020F024C ; =AOSSi_Alloc
	ldr r0, [r1, #8]
	ldr r1, [r1, #0xc]
	blx r1
	mov r0, #0
	mvn r0, r0
	pop {r3, r4, r5, r6, r7, pc}
	nop
_020F0244: .word aoss_mq
_020F0248: .word aoss_msgArray
_020F024C: .word AOSSi_Alloc
_020F0250: .word 0x00005890
_020F0254: .word aoss_apc_callback
	thumb_func_end AOSSi_InitLocal

	thumb_func_start AOSSi_EndLocal
AOSSi_EndLocal: ; 0x020F0258
	push {r3, r4, r5, r6, r7, lr}
	ldr r0, _020F02E8 ; =AOSSi_Alloc
	mov r4, #1
	ldr r0, [r0, #0xc]
	sub r5, r4, #2
	cmp r0, #0
	bne _020F026A
	add r0, r5, #0
	pop {r3, r4, r5, r6, r7, pc}
_020F026A:
	bl APC_End
	cmp r0, #0
	bne _020F0276
	sub r0, r4, #2
	pop {r3, r4, r5, r6, r7, pc}
_020F0276:
	ldr r7, _020F02EC ; =aoss_mq
	ldr r6, _020F02E8 ; =AOSSi_Alloc
_020F027A:
	add r0, r7, #0
	add r1, sp, #0
	mov r2, #1
	blx OS_ReceiveMessage
	ldr r0, [sp]
	cmp r0, #0x14
	bhi _020F02CC
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_020F0296: ; jump table
	.short _020F02CC - _020F0296 - 2 ; case 0
	.short _020F02CC - _020F0296 - 2 ; case 1
	.short _020F02CC - _020F0296 - 2 ; case 2
	.short _020F02CC - _020F0296 - 2 ; case 3
	.short _020F02CE - _020F0296 - 2 ; case 4
	.short _020F02CE - _020F0296 - 2 ; case 5
	.short _020F02CC - _020F0296 - 2 ; case 6
	.short _020F02CC - _020F0296 - 2 ; case 7
	.short _020F02CC - _020F0296 - 2 ; case 8
	.short _020F02CC - _020F0296 - 2 ; case 9
	.short _020F02CC - _020F0296 - 2 ; case 10
	.short _020F02CC - _020F0296 - 2 ; case 11
	.short _020F02CC - _020F0296 - 2 ; case 12
	.short _020F02CC - _020F0296 - 2 ; case 13
	.short _020F02CC - _020F0296 - 2 ; case 14
	.short _020F02CC - _020F0296 - 2 ; case 15
	.short _020F02CC - _020F0296 - 2 ; case 16
	.short _020F02CC - _020F0296 - 2 ; case 17
	.short _020F02CC - _020F0296 - 2 ; case 18
	.short _020F02CC - _020F0296 - 2 ; case 19
	.short _020F02C0 - _020F0296 - 2 ; case 20
_020F02C0:
	ldr r0, [r6, #8]
	mov r4, #0
	ldr r1, [r6, #0xc]
	add r5, r4, #0
	blx r1
	b _020F02CE
_020F02CC:
	mov r4, #0
_020F02CE:
	cmp r4, #0
	bne _020F027A
	blx OS_DisableInterrupts
	ldr r1, _020F02E8 ; =AOSSi_Alloc
	mov r2, #0
	str r2, [r1]
	str r2, [r1, #0xc]
	blx OS_RestoreInterrupts
	add r0, r5, #0
	pop {r3, r4, r5, r6, r7, pc}
	nop
_020F02E8: .word AOSSi_Alloc
_020F02EC: .word aoss_mq
	thumb_func_end AOSSi_EndLocal

	thumb_func_start AOSSi_Disconnect
AOSSi_Disconnect: ; 0x020F02F0
	push {r3, r4, r5, r6, r7, lr}
	mov r5, #0
	mvn r5, r5
	bl APC_Disconnect
	cmp r0, #0
	beq _020F0320
	ldr r4, _020F0324 ; =aoss_mq
	add r6, sp, #0
	mov r7, #1
_020F0304:
	add r0, r4, #0
	add r1, r6, #0
	add r2, r7, #0
	blx OS_ReceiveMessage
	ldr r0, [sp]
	cmp r0, #0xe
	bne _020F031A
	mov r0, #0
	add r5, r0, #0
	b _020F031C
_020F031A:
	mov r0, #0
_020F031C:
	cmp r0, #0
	bne _020F0304
_020F0320:
	add r0, r5, #0
	pop {r3, r4, r5, r6, r7, pc}
_020F0324: .word aoss_mq
	thumb_func_end AOSSi_Disconnect

	thumb_func_start AOSSi_WLANGetBSSList
AOSSi_WLANGetBSSList: ; 0x020F0328
	push {r4, r5, r6, r7, lr}
	sub sp, #0x44
	str r0, [sp, #4]
	mov r0, #0
	mvn r0, r0
	str r0, [sp, #0x10]
	mov r0, #1
	str r0, [sp, #0xc]
	mov r6, #0
	ldr r0, _020F048C ; =AOSSi_Alloc
	add r7, r6, #0
	ldr r1, [r0]
	add r5, r6, #0
	cmp r1, #0
	beq _020F034C
	ldr r0, [r0, #0xc]
	cmp r0, #0
	bne _020F0354
_020F034C:
	mov r0, #0
	add sp, #0x44
	mvn r0, r0
	pop {r4, r5, r6, r7, pc}
_020F0354:
	mov r0, #3
	lsl r0, r0, #0xc
	blx r1
	add r4, r0, #0
	bne _020F0364
	add sp, #0x44
	sub r0, r6, #1
	pop {r4, r5, r6, r7, pc}
_020F0364:
	add r0, r6, #0
	ldr r3, _020F0490 ; =0x0030BFFE
	add r1, r0, #0
	add r2, r0, #0
	str r4, [sp, #8]
	bl APC_SearchStart
	cmp r0, #0
	bne _020F0378
	b _020F047C
_020F0378:
	add r0, sp, #0x18
	blx OS_CreateAlarm
	mov r0, #0x13
	str r0, [sp]
	ldr r1, _020F0494 ; =0x003FEC42
	ldr r3, _020F0498 ; =alarmCallback
	add r0, sp, #0x18
	add r2, r6, #0
	blx OS_SetAlarm
_020F038E:
	ldr r0, _020F049C ; =aoss_mq
	add r1, sp, #0x14
	mov r2, #1
	blx OS_ReceiveMessage
	ldr r0, [sp, #0x14]
	cmp r0, #0x13
	bhi _020F0462
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_020F03AA: ; jump table
	.short _020F0462 - _020F03AA - 2 ; case 0
	.short _020F0462 - _020F03AA - 2 ; case 1
	.short _020F0462 - _020F03AA - 2 ; case 2
	.short _020F0462 - _020F03AA - 2 ; case 3
	.short _020F0418 - _020F03AA - 2 ; case 4
	.short _020F03F0 - _020F03AA - 2 ; case 5
	.short _020F0462 - _020F03AA - 2 ; case 6
	.short _020F0462 - _020F03AA - 2 ; case 7
	.short _020F0418 - _020F03AA - 2 ; case 8
	.short _020F0462 - _020F03AA - 2 ; case 9
	.short _020F0412 - _020F03AA - 2 ; case 10
	.short _020F0462 - _020F03AA - 2 ; case 11
	.short _020F0462 - _020F03AA - 2 ; case 12
	.short _020F0462 - _020F03AA - 2 ; case 13
	.short _020F0462 - _020F03AA - 2 ; case 14
	.short _020F0462 - _020F03AA - 2 ; case 15
	.short _020F0462 - _020F03AA - 2 ; case 16
	.short _020F0462 - _020F03AA - 2 ; case 17
	.short _020F0418 - _020F03AA - 2 ; case 18
	.short _020F03D2 - _020F03AA - 2 ; case 19
_020F03D2:
	cmp r6, #0
	bne _020F0418
	cmp r5, #0
	beq _020F03E4
	add r0, r4, #0
	mov r1, #0x40
	bl APC_GetAPList
	add r7, r0, #0
_020F03E4:
	bl APC_SearchEnd
	cmp r0, #0
	beq _020F0462
	mov r6, #1
	b _020F0418
_020F03F0:
	cmp r6, #0
	bne _020F0418
	cmp r5, #8
	bge _020F03FC
	add r5, r5, #1
	b _020F0418
_020F03FC:
	add r0, r4, #0
	mov r1, #0x40
	bl APC_GetAPList
	add r7, r0, #0
	bl APC_SearchEnd
	cmp r0, #0
	beq _020F0462
	mov r6, #1
	b _020F0418
_020F0412:
	mov r0, #0
	str r0, [sp, #0xc]
	str r0, [sp, #0x10]
_020F0418:
	ldr r0, [sp, #0xc]
	cmp r0, #0
	bne _020F038E
	cmp r7, #0
	beq _020F0436
	sub r1, r7, #1
	mov r0, #0x54
	mul r0, r1
	ldr r1, _020F048C ; =AOSSi_Alloc
	add r0, #0x58
	ldr r1, [r1]
	blx r1
	cmp r0, #0
	bne _020F0442
	b _020F0462
_020F0436:
	ldr r1, _020F048C ; =AOSSi_Alloc
	mov r0, #0x58
	ldr r1, [r1]
	blx r1
	cmp r0, #0
	beq _020F0462
_020F0442:
	ldr r1, [sp, #4]
	mov r6, #0
	str r0, [r1]
	str r7, [r0]
	cmp r7, #0
	ble _020F0462
	add r5, r0, #4
_020F0450:
	add r0, r4, #0
	add r1, r5, #0
	bl Set_WLLA_BSS_INFO
	add r6, r6, #1
	add r4, #0xc0
	add r5, #0x54
	cmp r6, r7
	blt _020F0450
_020F0462:
	add r0, sp, #0x18
	blx OS_CancelAlarm
	ldr r5, _020F049C ; =aoss_mq
	add r4, sp, #0x14
	mov r6, #0
_020F046E:
	add r0, r5, #0
	add r1, r4, #0
	add r2, r6, #0
	blx OS_ReceiveMessage
	cmp r0, #1
	beq _020F046E
_020F047C:
	ldr r1, _020F048C ; =AOSSi_Alloc
	ldr r0, [sp, #8]
	ldr r1, [r1, #0xc]
	blx r1
	ldr r0, [sp, #0x10]
	add sp, #0x44
	pop {r4, r5, r6, r7, pc}
	nop
_020F048C: .word AOSSi_Alloc
_020F0490: .word 0x0030BFFE
_020F0494: .word 0x003FEC42
_020F0498: .word alarmCallback
_020F049C: .word aoss_mq
	thumb_func_end AOSSi_WLANGetBSSList

	thumb_func_start AOSSi_WLANConnect
AOSSi_WLANConnect: ; 0x020F04A0
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x40
	mov r4, #1
	add r7, r0, #0
	sub r0, r4, #2
	str r0, [sp, #0xc]
	ldr r0, [r7, #0x24]
	mov r6, #0
	str r1, [sp, #4]
	cmp r0, #0
	bne _020F04BA
	lsl r5, r4, #0x13
	b _020F04C2
_020F04BA:
	cmp r0, #1
	bne _020F04C2
	mov r5, #3
	lsl r5, r5, #0x12
_020F04C2:
	mov r0, #3
	lsl r0, r0, #0x10
	orr r5, r0
	ldr r0, _020F0654 ; =wep_buf
	mov r1, #0
	mov r2, #0x60
	blx MI_CpuFill8
	ldr r0, [r7, #0x28]
	cmp r0, #5
	bne _020F04E0
	ldr r0, _020F0654 ; =wep_buf
	mov r1, #1
	strb r1, [r0]
	b _020F0500
_020F04E0:
	cmp r0, #0xd
	bne _020F04EC
	ldr r0, _020F0654 ; =wep_buf
	mov r1, #2
	strb r1, [r0]
	b _020F0500
_020F04EC:
	cmp r0, #0x10
	bne _020F04F8
	ldr r0, _020F0654 ; =wep_buf
	mov r1, #3
	strb r1, [r0]
	b _020F0500
_020F04F8:
	mov r0, #0
	add sp, #0x40
	mvn r0, r0
	pop {r3, r4, r5, r6, r7, pc}
_020F0500:
	mov r1, #0x14
	ldr r2, _020F0654 ; =wep_buf
	mul r1, r6
	add r1, r1, #2
	add r0, r7, #0
	strb r6, [r2, #1]
	add r1, r2, r1
	ldr r2, [r7, #0x28]
	add r0, #0x2c
	blx MI_CpuCopy8
	blx WCM_ClearApList
	ldr r2, [r7]
	ldr r3, _020F0658 ; =0x0030BFFE
	mov r0, #0
	add r1, r7, #4
	bl APC_SearchStart
	cmp r0, #0
	bne _020F052C
	b _020F063A
_020F052C:
	mov r0, #0
	str r0, [sp, #8]
	add r0, sp, #0x14
	blx OS_CreateAlarm
	mov r0, #0x12
	str r0, [sp]
	ldr r1, _020F065C ; =0x003FEC42
	ldr r3, _020F0660 ; =alarmCallback
	add r0, sp, #0x14
	mov r2, #0
	blx OS_SetAlarm
	b _020F061C
_020F0548:
	ldr r0, _020F0664 ; =aoss_mq
	add r1, sp, #0x10
	mov r2, #1
	blx OS_ReceiveMessage
	ldr r0, [sp, #0x10]
	cmp r0, #0x13
	bhi _020F061A
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_020F0564: ; jump table
	.short _020F061A - _020F0564 - 2 ; case 0
	.short _020F061A - _020F0564 - 2 ; case 1
	.short _020F061A - _020F0564 - 2 ; case 2
	.short _020F061A - _020F0564 - 2 ; case 3
	.short _020F061C - _020F0564 - 2 ; case 4
	.short _020F0594 - _020F0564 - 2 ; case 5
	.short _020F061A - _020F0564 - 2 ; case 6
	.short _020F061A - _020F0564 - 2 ; case 7
	.short _020F061C - _020F0564 - 2 ; case 8
	.short _020F061A - _020F0564 - 2 ; case 9
	.short _020F05DA - _020F0564 - 2 ; case 10
	.short _020F061A - _020F0564 - 2 ; case 11
	.short _020F05F4 - _020F0564 - 2 ; case 12
	.short _020F05FA - _020F0564 - 2 ; case 13
	.short _020F061A - _020F0564 - 2 ; case 14
	.short _020F061A - _020F0564 - 2 ; case 15
	.short _020F061A - _020F0564 - 2 ; case 16
	.short _020F061A - _020F0564 - 2 ; case 17
	.short _020F058C - _020F0564 - 2 ; case 18
	.short _020F0592 - _020F0564 - 2 ; case 19
_020F058C:
	cmp r6, #0
	bne _020F061C
	mov r4, #0
_020F0592:
	b _020F061C
_020F0594:
	cmp r6, #0
	bne _020F061C
	add r0, sp, #0x14
	blx OS_CancelAlarm
	ldr r0, _020F0668 ; =connect_bssdesc
	mov r1, #1
	bl APC_GetAPList
	cmp r0, #1
	beq _020F05AE
	mov r4, #0
	b _020F061C
_020F05AE:
	ldr r1, _020F0668 ; =connect_bssdesc
	add r0, r7, #0
	bl Get_WLLA_SSID_PARAM
	ldr r1, _020F066C ; =connect_bssdesc
	mov r0, #0
	ldrh r1, [r1, #0xa]
	b _020F05C0
_020F05BE:
	add r0, r0, #1
_020F05C0:
	cmp r0, r1
	blt _020F05BE
	ldr r0, _020F0668 ; =connect_bssdesc
	ldr r1, _020F0654 ; =wep_buf
	add r2, r5, #0
	bl APC_Connect
	cmp r0, #0
	bne _020F05D6
	mov r4, #0
	b _020F061C
_020F05D6:
	mov r6, #1
	b _020F061C
_020F05DA:
	ldr r1, _020F0668 ; =connect_bssdesc
	add r0, r7, #0
	bl Get_WLLA_SSID_PARAM
	ldr r0, _020F0668 ; =connect_bssdesc
	ldr r1, _020F0654 ; =wep_buf
	add r2, r5, #0
	bl APC_Connect
	cmp r0, #0
	bne _020F061C
	mov r4, #0
	b _020F061C
_020F05F4:
	mov r4, #0
	str r4, [sp, #0xc]
	b _020F061C
_020F05FA:
	ldr r0, [sp, #8]
	add r0, r0, #1
	str r0, [sp, #8]
	cmp r0, #3
	bge _020F0616
	ldr r0, _020F0668 ; =connect_bssdesc
	ldr r1, _020F0654 ; =wep_buf
	add r2, r5, #0
	bl APC_Connect
	cmp r0, #0
	bne _020F061C
	mov r4, #0
	b _020F061C
_020F0616:
	mov r4, #0
	b _020F061C
_020F061A:
	mov r4, #0
_020F061C:
	cmp r4, #0
	bne _020F0548
	add r0, sp, #0x14
	blx OS_CancelAlarm
	ldr r5, _020F0664 ; =aoss_mq
	add r4, sp, #0x10
	mov r6, #0
_020F062C:
	add r0, r5, #0
	add r1, r4, #0
	add r2, r6, #0
	blx OS_ReceiveMessage
	cmp r0, #1
	beq _020F062C
_020F063A:
	ldr r0, [sp, #0xc]
	cmp r0, #0
	bne _020F0644
	mov r2, #1
	b _020F0646
_020F0644:
	mov r2, #0
_020F0646:
	ldr r0, [sp, #4]
	ldr r1, _020F0668 ; =connect_bssdesc
	bl Set_WLLA_LINK_STAT
	ldr r0, [sp, #0xc]
	add sp, #0x40
	pop {r3, r4, r5, r6, r7, pc}
_020F0654: .word wep_buf
_020F0658: .word 0x0030BFFE
_020F065C: .word 0x003FEC42
_020F0660: .word alarmCallback
_020F0664: .word aoss_mq
_020F0668: .word connect_bssdesc
_020F066C: .word connect_bssdesc
	thumb_func_end AOSSi_WLANConnect

	thumb_func_start AOSSi_Sleep
AOSSi_Sleep: ; 0x020F0670
	ldr r3, _020F0674 ; =OS_Sleep
	bx r3
_020F0674: .word OS_Sleep
	thumb_func_end AOSSi_Sleep

	thumb_func_start AOSSi_Status
AOSSi_Status: ; 0x020F0678
	push {r3, lr}
	ldr r1, _020F0688 ; =AOSSi_Alloc
	ldr r1, [r1, #4]
	cmp r1, #0
	beq _020F0684
	blx r1
_020F0684:
	mov r0, #0
	pop {r3, pc}
_020F0688: .word AOSSi_Alloc
	thumb_func_end AOSSi_Status

	.data
rateset_table:
	.byte 0x01, 0x00, 0x02, 0x00, 0x02, 0x00, 0x04, 0x00
	.byte 0x04, 0x00, 0x0B, 0x00, 0x08, 0x00, 0x0C, 0x00, 0x10, 0x00, 0x12, 0x00, 0x20, 0x00, 0x16, 0x00
	.byte 0x40, 0x00, 0x18, 0x00, 0x80, 0x00, 0x24, 0x00, 0x00, 0x01, 0x30, 0x00, 0x00, 0x02, 0x48, 0x00
	.byte 0x00, 0x04, 0x60, 0x00, 0x00, 0x08, 0x6C, 0x00

	.bss
	.global AOSSi_Alloc
AOSSi_Alloc:
	.space 0x0C
	.global AOSSi_Free
AOSSi_Free:
	.space 0x04
aoss_msgArray:
	.space 0x10
aoss_mq:
	.space 0x20
connect_bssdesc:
	.space 0xC0
wep_buf:
	.space 0x60
