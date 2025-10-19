
	.include "asm/macros/function.inc"
	.public MI_CpuCopy8
	.public MI_CpuFill8
	.public MIi_CpuCopy32
	.public OS_DisableInterrupts
	.public OS_RestoreInterrupts
	.public WCM_Bssid_Any
	.public WCM_CleanupAsync
	.public WCM_ConnectAsync
	.public WCM_CountApList
	.public WCM_DisconnectAsync
	.public WCM_Essid_Any
	.public WCM_Finish
	.public WCM_Init
	.public WCM_LockApList
	.public WCM_PointApList
	.public WCM_SearchAsync
	.public WCM_StartupAsync

	.text
	thumb_static_func_start APCi_Notify
APCi_Notify: ; 0x020F068C
	push {r3, lr}
	cmp r0, #0
	bne _020F0694
	b _020F093C
_020F0694:
	mov r1, #0
	ldrsh r2, [r0, r1]
	cmp r2, #7
	bls _020F069E
	b _020F092E
_020F069E:
	add r2, r2, r2
	add r2, pc
	ldrh r2, [r2, #6]
	lsl r2, r2, #0x10
	asr r2, r2, #0x10
	add pc, r2
_020F06AA: ; jump table
	.short _020F092E - _020F06AA - 2 ; case 0
	.short _020F06BA - _020F06AA - 2 ; case 1
	.short _020F08E2 - _020F06AA - 2 ; case 2
	.short _020F073A - _020F06AA - 2 ; case 3
	.short _020F079E - _020F06AA - 2 ; case 4
	.short _020F076C - _020F06AA - 2 ; case 5
	.short _020F083E - _020F06AA - 2 ; case 6
	.short _020F091A - _020F06AA - 2 ; case 7
_020F06BA:
	mov r2, #2
	ldrsh r0, [r0, r2]
	cmp r0, #0
	bne _020F0726
	ldr r2, _020F0940 ; =apci_WCMBuffer
	ldr r0, [r2, #0x18]
	cmp r0, #4
	bne _020F06DA
	mov r0, #3
	str r0, [r2, #0x18]
	ldr r2, [r2, #0x1c]
	cmp r2, #0
	beq _020F0732
	mov r0, #6
	blx r2
	pop {r3, pc}
_020F06DA:
	cmp r0, #6
	bne _020F0700
	ldr r0, [r2, #0x10]
	ldr r1, [r2, #0x14]
	ldr r2, [r2, #4]
	blx WCM_SearchAsync
	cmp r0, #3
	beq _020F0732
	ldr r0, _020F0940 ; =apci_WCMBuffer
	mov r1, #3
	str r1, [r0, #0x18]
	ldr r2, [r0, #0x1c]
	cmp r2, #0
	beq _020F0732
	mov r0, #2
	mov r1, #0
	blx r2
	pop {r3, pc}
_020F0700:
	cmp r0, #8
	bne _020F0732
	ldr r0, [r2, #0x20]
	ldr r1, [r2, #0x24]
	ldr r2, [r2, #0xc]
	blx WCM_ConnectAsync
	cmp r0, #3
	beq _020F0732
	ldr r0, _020F0940 ; =apci_WCMBuffer
	mov r1, #3
	str r1, [r0, #0x18]
	ldr r2, [r0, #0x1c]
	cmp r2, #0
	beq _020F0732
	mov r0, #2
	mov r1, #0
	blx r2
	pop {r3, pc}
_020F0726:
	ldr r0, _020F0940 ; =apci_WCMBuffer
	mov r3, #1
	str r3, [r0, #0x18]
	ldr r3, [r0, #0x1c]
	cmp r3, #0
	bne _020F0734
_020F0732:
	b _020F093C
_020F0734:
	add r0, r2, #0
	blx r3
	pop {r3, pc}
_020F073A:
	mov r2, #2
	ldrsh r0, [r0, r2]
	cmp r0, #0
	bne _020F075A
	ldr r0, _020F0940 ; =apci_WCMBuffer
	ldr r2, [r0, #0x18]
	cmp r2, #6
	bne _020F0836
	mov r2, #5
	str r2, [r0, #0x18]
	ldr r2, [r0, #0x1c]
	cmp r2, #0
	beq _020F0836
	mov r0, #8
	blx r2
	pop {r3, pc}
_020F075A:
	ldr r0, _020F0940 ; =apci_WCMBuffer
	mov r2, #3
	str r2, [r0, #0x18]
	ldr r2, [r0, #0x1c]
	cmp r2, #0
	beq _020F0836
	mov r0, #9
	blx r2
	pop {r3, pc}
_020F076C:
	mov r2, #2
	ldrsh r0, [r0, r2]
	cmp r0, #0
	bne _020F078C
	ldr r0, _020F0940 ; =apci_WCMBuffer
	ldr r2, [r0, #0x18]
	cmp r2, #8
	bne _020F0836
	mov r2, #7
	str r2, [r0, #0x18]
	ldr r2, [r0, #0x1c]
	cmp r2, #0
	beq _020F0836
	mov r0, #0xc
	blx r2
	pop {r3, pc}
_020F078C:
	ldr r0, _020F0940 ; =apci_WCMBuffer
	mov r2, #3
	str r2, [r0, #0x18]
	ldr r2, [r0, #0x1c]
	cmp r2, #0
	beq _020F0836
	mov r0, #0xd
	blx r2
	pop {r3, pc}
_020F079E:
	mov r2, #2
	ldrsh r0, [r0, r2]
	cmp r0, #0
	bne _020F082A
	ldr r2, _020F0940 ; =apci_WCMBuffer
	ldr r0, [r2, #0x18]
	cmp r0, #4
	bne _020F07BE
	mov r0, #3
	str r0, [r2, #0x18]
	ldr r2, [r2, #0x1c]
	cmp r2, #0
	beq _020F0836
	mov r0, #0xa
	blx r2
	pop {r3, pc}
_020F07BE:
	cmp r0, #6
	bne _020F07E4
	ldr r0, [r2, #0x10]
	ldr r1, [r2, #0x14]
	ldr r2, [r2, #4]
	blx WCM_SearchAsync
	cmp r0, #3
	beq _020F0836
	ldr r0, _020F0940 ; =apci_WCMBuffer
	mov r1, #3
	str r1, [r0, #0x18]
	ldr r2, [r0, #0x1c]
	cmp r2, #0
	beq _020F0836
	mov r0, #2
	mov r1, #0
	blx r2
	pop {r3, pc}
_020F07E4:
	cmp r0, #2
	bne _020F0804
	blx WCM_CleanupAsync
	cmp r0, #3
	beq _020F0836
	ldr r0, _020F0940 ; =apci_WCMBuffer
	mov r1, #3
	str r1, [r0, #0x18]
	ldr r2, [r0, #0x1c]
	cmp r2, #0
	beq _020F0836
	mov r0, #2
	mov r1, #0
	blx r2
	pop {r3, pc}
_020F0804:
	cmp r0, #8
	bne _020F0836
	ldr r0, [r2, #0x20]
	ldr r1, [r2, #0x24]
	ldr r2, [r2, #0xc]
	blx WCM_ConnectAsync
	cmp r0, #3
	beq _020F0836
	ldr r0, _020F0940 ; =apci_WCMBuffer
	mov r1, #3
	str r1, [r0, #0x18]
	ldr r2, [r0, #0x1c]
	cmp r2, #0
	beq _020F0836
	mov r0, #2
	mov r1, #0
	blx r2
	pop {r3, pc}
_020F082A:
	ldr r0, _020F0940 ; =apci_WCMBuffer
	mov r2, #3
	str r2, [r0, #0x18]
	ldr r2, [r0, #0x1c]
	cmp r2, #0
	bne _020F0838
_020F0836:
	b _020F093C
_020F0838:
	mov r0, #0xb
	blx r2
	pop {r3, pc}
_020F083E:
	mov r2, #2
	ldrsh r0, [r0, r2]
	cmp r0, #0
	bne _020F08D0
	ldr r2, _020F0940 ; =apci_WCMBuffer
	ldr r0, [r2, #0x18]
	cmp r0, #4
	bne _020F085E
	mov r0, #3
	str r0, [r2, #0x18]
	ldr r2, [r2, #0x1c]
	cmp r2, #0
	beq _020F093C
	mov r0, #0xe
	blx r2
	pop {r3, pc}
_020F085E:
	cmp r0, #6
	bne _020F0884
	ldr r0, [r2, #0x10]
	ldr r1, [r2, #0x14]
	ldr r2, [r2, #4]
	blx WCM_SearchAsync
	cmp r0, #3
	beq _020F093C
	ldr r0, _020F0940 ; =apci_WCMBuffer
	mov r1, #3
	str r1, [r0, #0x18]
	ldr r2, [r0, #0x1c]
	cmp r2, #0
	beq _020F093C
	mov r0, #2
	mov r1, #0
	blx r2
	pop {r3, pc}
_020F0884:
	cmp r0, #2
	bne _020F08A4
	blx WCM_CleanupAsync
	cmp r0, #3
	beq _020F093C
	ldr r0, _020F0940 ; =apci_WCMBuffer
	mov r1, #3
	str r1, [r0, #0x18]
	ldr r2, [r0, #0x1c]
	cmp r2, #0
	beq _020F093C
	mov r0, #2
	mov r1, #0
	blx r2
	pop {r3, pc}
_020F08A4:
	cmp r0, #8
	bne _020F08CA
	ldr r0, [r2, #0x20]
	ldr r1, [r2, #0x24]
	ldr r2, [r2, #0xc]
	blx WCM_ConnectAsync
	cmp r0, #3
	beq _020F093C
	ldr r0, _020F0940 ; =apci_WCMBuffer
	mov r1, #3
	str r1, [r0, #0x18]
	ldr r2, [r0, #0x1c]
	cmp r2, #0
	beq _020F093C
	mov r0, #2
	mov r1, #0
	blx r2
	pop {r3, pc}
_020F08CA:
	mov r0, #3
	str r0, [r2, #0x18]
	pop {r3, pc}
_020F08D0:
	ldr r0, _020F0940 ; =apci_WCMBuffer
	mov r2, #3
	str r2, [r0, #0x18]
	ldr r2, [r0, #0x1c]
	cmp r2, #0
	beq _020F093C
	mov r0, #0xf
	blx r2
	pop {r3, pc}
_020F08E2:
	mov r2, #2
	ldrsh r0, [r0, r2]
	cmp r0, #0
	bne _020F0908
	ldr r0, _020F0940 ; =apci_WCMBuffer
	ldr r0, [r0, #0x18]
	cmp r0, #2
	bne _020F093C
	blx WCM_Finish
	ldr r0, _020F0940 ; =apci_WCMBuffer
	mov r1, #0
	str r1, [r0, #0x18]
	ldr r2, [r0, #0x1c]
	cmp r2, #0
	beq _020F093C
	mov r0, #0x14
	blx r2
	pop {r3, pc}
_020F0908:
	ldr r0, _020F0940 ; =apci_WCMBuffer
	mov r3, #3
	str r3, [r0, #0x18]
	ldr r3, [r0, #0x1c]
	cmp r3, #0
	beq _020F093C
	add r0, r2, #0
	blx r3
	pop {r3, pc}
_020F091A:
	ldr r0, _020F0940 ; =apci_WCMBuffer
	ldr r2, [r0, #0x18]
	cmp r2, #5
	bne _020F093C
	ldr r2, [r0, #0x1c]
	cmp r2, #0
	beq _020F093C
	mov r0, #5
	blx r2
	pop {r3, pc}
_020F092E:
	ldr r0, _020F0940 ; =apci_WCMBuffer
	ldr r2, [r0, #0x1c]
	cmp r2, #0
	beq _020F093C
	mov r0, #1
	mov r1, #0
	blx r2
_020F093C:
	pop {r3, pc}
	nop
_020F0940: .word apci_WCMBuffer
	thumb_func_end APCi_Notify

	thumb_static_func_start APCi_MoveIdleState
APCi_MoveIdleState: ; 0x020F0944
	push {r3, lr}
	ldr r1, _020F09A4 ; =apci_WCMBuffer
	ldr r0, [r1, #0x18]
	cmp r0, #8
	bhi _020F099A
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_020F095A: ; jump table
	.short _020F099A - _020F095A - 2 ; case 0
	.short _020F098A - _020F095A - 2 ; case 1
	.short _020F099A - _020F095A - 2 ; case 2
	.short _020F099A - _020F095A - 2 ; case 3
	.short _020F099A - _020F095A - 2 ; case 4
	.short _020F096C - _020F095A - 2 ; case 5
	.short _020F099A - _020F095A - 2 ; case 6
	.short _020F097E - _020F095A - 2 ; case 7
	.short _020F099A - _020F095A - 2 ; case 8
_020F096C:
	mov r0, #0
	add r1, r0, #0
	add r2, r0, #0
	blx WCM_SearchAsync
	cmp r0, #3
	beq _020F099E
	mov r0, #0
	pop {r3, pc}
_020F097E:
	blx WCM_DisconnectAsync
	cmp r0, #3
	beq _020F099E
	mov r0, #0
	pop {r3, pc}
_020F098A:
	ldr r0, [r1, #8]
	ldr r1, _020F09A8 ; =APCi_Notify
	blx WCM_StartupAsync
	cmp r0, #3
	beq _020F099E
	mov r0, #0
	pop {r3, pc}
_020F099A:
	mov r0, #0
	pop {r3, pc}
_020F099E:
	mov r0, #1
	pop {r3, pc}
	nop
_020F09A4: .word apci_WCMBuffer
_020F09A8: .word APCi_Notify
	thumb_func_end APCi_MoveIdleState

	thumb_func_start APC_GetAPList
APC_GetAPList: ; 0x020F09AC
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	mov r0, #1
	add r7, r1, #0
	blx WCM_LockApList
	blx WCM_CountApList
	add r6, r0, #0
	cmp r6, #0
	ble _020F09E4
	mov r4, #0
	cmp r6, #0
	ble _020F09E4
_020F09C8:
	cmp r4, r7
	bge _020F09E4
	lsl r0, r4, #0x10
	lsr r0, r0, #0x10
	blx WCM_PointApList
	add r1, r5, #0
	mov r2, #0xc0
	blx MIi_CpuCopy32
	add r4, r4, #1
	add r5, #0xc0
	cmp r4, r6
	blt _020F09C8
_020F09E4:
	mov r0, #0
	blx WCM_LockApList
	add r0, r6, #0
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end APC_GetAPList

	thumb_func_start APC_SearchStart
APC_SearchStart: ; 0x020F09F0
	push {r3, r4, r5, r6, r7, lr}
	str r3, [sp]
	add r5, r0, #0
	add r4, r1, #0
	add r6, r2, #0
	blx OS_DisableInterrupts
	add r7, r0, #0
	ldr r1, _020F0ACC ; =apci_WCMBuffer
	ldr r0, [sp]
	cmp r5, #0
	str r0, [r1, #4]
	beq _020F0A24
	ldr r2, _020F0AD0 ; =apci_bssid_buf
	mov r1, #0
_020F0A0E:
	ldrb r0, [r5]
	add r1, r1, #1
	add r5, r5, #1
	strb r0, [r2]
	add r2, r2, #1
	cmp r1, #6
	blt _020F0A0E
	ldr r1, _020F0AD0 ; =apci_bssid_buf
	ldr r0, _020F0ACC ; =apci_WCMBuffer
	str r1, [r0, #0x10]
	b _020F0A34
_020F0A24:
	ldr r0, _020F0AD0 ; =apci_bssid_buf
	mov r1, #0xff
	mov r2, #6
	blx MI_CpuFill8
	ldr r1, _020F0AD4 ; =WCM_Bssid_Any
	ldr r0, _020F0ACC ; =apci_WCMBuffer
	str r1, [r0, #0x10]
_020F0A34:
	cmp r4, #0
	beq _020F0A72
	cmp r6, #0
	ble _020F0A72
	cmp r6, #0x20
	bgt _020F0A72
	mov r0, #0
	cmp r6, #0
	ble _020F0A56
	ldr r2, _020F0AD8 ; =0x02114C10
_020F0A48:
	ldrb r1, [r4]
	add r0, r0, #1
	add r4, r4, #1
	strb r1, [r2]
	add r2, r2, #1
	cmp r0, r6
	blt _020F0A48
_020F0A56:
	cmp r0, #0x20
	bge _020F0A6A
	ldr r1, _020F0AD8 ; =0x02114C10
	add r2, r1, r0
	mov r1, #0
_020F0A60:
	add r0, r0, #1
	strb r1, [r2]
	add r2, r2, #1
	cmp r0, #0x20
	blt _020F0A60
_020F0A6A:
	ldr r1, _020F0AD8 ; =0x02114C10
	ldr r0, _020F0ACC ; =apci_WCMBuffer
	str r1, [r0, #0x14]
	b _020F0A82
_020F0A72:
	ldr r0, _020F0AD8 ; =0x02114C10
	mov r1, #0xff
	mov r2, #0x20
	blx MI_CpuFill8
	ldr r1, _020F0ADC ; =WCM_Essid_Any
	ldr r0, _020F0ACC ; =apci_WCMBuffer
	str r1, [r0, #0x14]
_020F0A82:
	ldr r2, _020F0ACC ; =apci_WCMBuffer
	ldr r0, [r2, #0x18]
	cmp r0, #3
	bne _020F0AA8
	ldr r0, [r2, #0x10]
	ldr r1, [r2, #0x14]
	ldr r2, [r2, #4]
	blx WCM_SearchAsync
	cmp r0, #3
	bne _020F0AC0
	ldr r0, _020F0ACC ; =apci_WCMBuffer
	mov r1, #6
	str r1, [r0, #0x18]
	add r0, r7, #0
	blx OS_RestoreInterrupts
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_020F0AA8:
	bl APCi_MoveIdleState
	cmp r0, #1
	bne _020F0AC0
	ldr r0, _020F0ACC ; =apci_WCMBuffer
	mov r1, #6
	str r1, [r0, #0x18]
	add r0, r7, #0
	blx OS_RestoreInterrupts
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_020F0AC0:
	add r0, r7, #0
	blx OS_RestoreInterrupts
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
	nop
_020F0ACC: .word apci_WCMBuffer
_020F0AD0: .word apci_bssid_buf
_020F0AD4: .word WCM_Bssid_Any
_020F0AD8: .word apci_essid_buf
_020F0ADC: .word WCM_Essid_Any
	thumb_func_end APC_SearchStart

	thumb_func_start APC_SearchEnd
APC_SearchEnd: ; 0x020F0AE0
	push {r4, lr}
	blx OS_DisableInterrupts
	add r4, r0, #0
	ldr r0, _020F0B18 ; =apci_WCMBuffer
	ldr r0, [r0, #0x18]
	cmp r0, #5
	bne _020F0B0E
	mov r0, #0
	add r1, r0, #0
	add r2, r0, #0
	blx WCM_SearchAsync
	cmp r0, #3
	bne _020F0B0E
	ldr r0, _020F0B18 ; =apci_WCMBuffer
	mov r1, #4
	str r1, [r0, #0x18]
	add r0, r4, #0
	blx OS_RestoreInterrupts
	mov r0, #1
	pop {r4, pc}
_020F0B0E:
	add r0, r4, #0
	blx OS_RestoreInterrupts
	mov r0, #0
	pop {r4, pc}
_020F0B18: .word apci_WCMBuffer
	thumb_func_end APC_SearchEnd

	thumb_func_start APC_Disconnect
APC_Disconnect: ; 0x020F0B1C
	push {r4, lr}
	blx OS_DisableInterrupts
	add r4, r0, #0
	ldr r0, _020F0B50 ; =apci_WCMBuffer
	ldr r0, [r0, #0x18]
	cmp r0, #7
	bne _020F0B44
	blx WCM_DisconnectAsync
	cmp r0, #3
	bne _020F0B44
	ldr r0, _020F0B50 ; =apci_WCMBuffer
	mov r1, #4
	str r1, [r0, #0x18]
	add r0, r4, #0
	blx OS_RestoreInterrupts
	mov r0, #1
	pop {r4, pc}
_020F0B44:
	add r0, r4, #0
	blx OS_RestoreInterrupts
	mov r0, #0
	pop {r4, pc}
	nop
_020F0B50: .word apci_WCMBuffer
	thumb_func_end APC_Disconnect

	thumb_func_start APC_End
APC_End: ; 0x020F0B54
	push {r4, lr}
	blx OS_DisableInterrupts
	add r4, r0, #0
	ldr r0, _020F0BA8 ; =apci_WCMBuffer
	ldr r0, [r0, #0x18]
	cmp r0, #3
	bne _020F0B86
	blx WCM_CleanupAsync
	cmp r0, #3
	beq _020F0B76
	add r0, r4, #0
	blx OS_RestoreInterrupts
	mov r0, #0
	pop {r4, pc}
_020F0B76:
	ldr r0, _020F0BA8 ; =apci_WCMBuffer
	mov r1, #2
	str r1, [r0, #0x18]
	add r0, r4, #0
	blx OS_RestoreInterrupts
	mov r0, #1
	pop {r4, pc}
_020F0B86:
	bl APCi_MoveIdleState
	cmp r0, #1
	bne _020F0B9E
	ldr r0, _020F0BA8 ; =apci_WCMBuffer
	mov r1, #2
	str r1, [r0, #0x18]
	add r0, r4, #0
	blx OS_RestoreInterrupts
	mov r0, #1
	pop {r4, pc}
_020F0B9E:
	add r0, r4, #0
	blx OS_RestoreInterrupts
	mov r0, #0
	pop {r4, pc}
_020F0BA8: .word apci_WCMBuffer
	thumb_func_end APC_End

	thumb_func_start APC_Connect
APC_Connect: ; 0x020F0BAC
	push {r3, r4, r5, r6, r7, lr}
	add r7, r0, #0
	add r5, r1, #0
	add r6, r2, #0
	blx OS_DisableInterrupts
	ldr r1, _020F0C2C ; =apci_WCMBuffer
	add r4, r0, #0
	str r6, [r1, #0xc]
	cmp r5, #0
	beq _020F0BCE
	ldr r1, [r1, #0x24]
	add r0, r5, #0
	mov r2, #0x50
	blx MI_CpuCopy8
	b _020F0BD8
_020F0BCE:
	ldr r0, [r1, #0x24]
	mov r1, #0
	mov r2, #0x50
	blx MI_CpuFill8
_020F0BD8:
	ldr r1, _020F0C2C ; =apci_WCMBuffer
	add r0, r7, #0
	ldr r1, [r1, #0x20]
	mov r2, #0xc0
	blx MIi_CpuCopy32
	bl APCi_MoveIdleState
	cmp r0, #1
	bne _020F0BFC
	ldr r0, _020F0C2C ; =apci_WCMBuffer
	mov r1, #8
	str r1, [r0, #0x18]
	add r0, r4, #0
	blx OS_RestoreInterrupts
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_020F0BFC:
	ldr r2, _020F0C2C ; =apci_WCMBuffer
	ldr r0, [r2, #0x18]
	cmp r0, #3
	bne _020F0C22
	ldr r0, [r2, #0x20]
	ldr r1, [r2, #0x24]
	ldr r2, [r2, #0xc]
	blx WCM_ConnectAsync
	cmp r0, #3
	bne _020F0C22
	ldr r0, _020F0C2C ; =apci_WCMBuffer
	mov r1, #8
	str r1, [r0, #0x18]
	add r0, r4, #0
	blx OS_RestoreInterrupts
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_020F0C22:
	add r0, r4, #0
	blx OS_RestoreInterrupts
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
_020F0C2C: .word apci_WCMBuffer
	thumb_func_end APC_Connect

	thumb_func_start APC_Init
APC_Init: ; 0x020F0C30
	push {r3, r4, r5, r6, r7, lr}
	add r5, r1, #0
	add r7, r0, #0
	str r2, [sp]
	blx OS_DisableInterrupts
	add r4, r0, #0
	add r0, r5, #0
	ldr r2, _020F0CDC ; =apci_WCMBuffer
	add r0, #0x53
	mov r1, #3
	bic r0, r1
	add r6, r0, #0
	str r5, [r2, #0x24]
	add r6, #0x2f
	mov r1, #0x1f
	ldr r3, _020F0CE0 ; =0x0000231F
	str r0, [r2, #8]
	bic r6, r1
	str r6, [r2]
	add r6, r6, r3
	bic r6, r1
	str r6, [r2, #0x20]
	add r6, #0xdf
	bic r6, r1
	str r6, [r0, #4]
	ldr r1, [sp]
	ldr r0, [r2, #8]
	add r5, r5, r1
	ldr r1, [r0, #4]
	sub r1, r5, r1
	str r1, [r0, #8]
	ldr r0, [r2, #8]
	mov r1, #0
	str r1, [r0, #0xc]
	ldr r0, [r2, #8]
	mov r1, #3
	str r1, [r0]
	str r7, [r2, #0x1c]
	ldr r0, [r2, #0x18]
	cmp r0, #0
	bne _020F0CA2
	sub r3, #0x1f
	ldr r0, [r2]
	add r1, r3, #0
	blx WCM_Init
	cmp r0, #0
	beq _020F0C9C
	add r0, r4, #0
	blx OS_RestoreInterrupts
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
_020F0C9C:
	ldr r0, _020F0CDC ; =apci_WCMBuffer
	mov r1, #1
	str r1, [r0, #0x18]
_020F0CA2:
	ldr r0, _020F0CDC ; =apci_WCMBuffer
	ldr r1, [r0, #0x18]
	cmp r1, #1
	bne _020F0CD0
	ldr r0, [r0, #8]
	ldr r1, _020F0CE4 ; =APCi_Notify
	blx WCM_StartupAsync
	cmp r0, #3
	beq _020F0CC0
	add r0, r4, #0
	blx OS_RestoreInterrupts
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
_020F0CC0:
	ldr r0, _020F0CDC ; =apci_WCMBuffer
	mov r1, #4
	str r1, [r0, #0x18]
	add r0, r4, #0
	blx OS_RestoreInterrupts
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_020F0CD0:
	add r0, r4, #0
	blx OS_RestoreInterrupts
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
	nop
_020F0CDC: .word apci_WCMBuffer
_020F0CE0: .word 0x0000231F
_020F0CE4: .word APCi_Notify
	thumb_func_end APC_Init

	.bss
apci_WCMBuffer:
	.space 0x04
apci_search_option:
	.space 0x04
apci_WCMConfig:
	.space 0x04
apci_connect_option:
	.space 0x04
apci_bssid_ptr:
	.space 0x04
apci_essid_ptr:
	.space 0x04
apci_state:
	.space 0x04
apci_user_callback:
	.space 0x04
apci_wmbssdesc:
	.space 0x04
apci_Wep:
	.space 0x04
apci_bssid_buf:
	.space 0x08
apci_essid_buf:
	.space 0x20
