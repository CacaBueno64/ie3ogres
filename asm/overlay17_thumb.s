
	.include "/macros/function.inc"
	.include "/include/overlay17.inc"

	.text

	thumb_func_start AOSS_MALLOC
AOSS_MALLOC: ; 0x020EDE60
	push {r3, lr}
	ldr r1, _020EDE6C ; =AOSSi_Alloc
	ldr r1, [r1]
	blx r1
	pop {r3, pc}
	nop
_020EDE6C: .word AOSSi_Alloc
	thumb_func_end AOSS_MALLOC

	thumb_func_start AOSS_FREE
AOSS_FREE: ; 0x020EDE70
	push {r3, lr}
	ldr r1, _020EDE7C ; =AOSSi_Free
	ldr r1, [r1]
	blx r1
	pop {r3, pc}
	nop
_020EDE7C: .word AOSSi_Free
	thumb_func_end AOSS_FREE

	thumb_func_start AOSSi_Init
AOSSi_Init: ; 0x020EDE80
	push {r4, lr}
	ldr r2, _020EDF54 ; =0x00000106
	add r4, r0, #0
	ldrsh r0, [r4, r2]
	cmp r0, #0
	beq _020EDED0
	mov r1, #0
	mvn r1, r1
	cmp r0, r1
	blt _020EDED0
	add r0, r2, #2
	ldrsh r0, [r4, r0]
	cmp r0, r1
	blt _020EDED0
	add r0, r2, #4
	ldrsh r0, [r4, r0]
	cmp r0, #0
	beq _020EDED0
	cmp r0, r1
	blt _020EDED0
	add r0, r2, #6
	ldrsh r0, [r4, r0]
	cmp r0, r1
	blt _020EDED0
	add r0, r2, #0
	add r0, #8
	ldrsh r0, [r4, r0]
	cmp r0, r1
	blt _020EDED0
	ldrh r1, [r4, #4]
	cmp r1, #0
	beq _020EDED0
	sub r0, r2, #6
	cmp r1, r0
	bhi _020EDED0
	sub r0, r1, #1
	add r0, r4, r0
	ldrb r0, [r0, #6]
	cmp r0, #0
	beq _020EDED6
_020EDED0:
	mov r1, #0
	mvn r1, r1
	b _020EDED8
_020EDED6:
	mov r1, #0
_020EDED8:
	ldr r0, _020EDF58 ; =AOSSi_Alloc
	ldr r0, [r0]
	cmp r0, #0
	beq _020EDEE8
	ldr r0, _020EDF5C ; =AOSSi_Free
	ldr r0, [r0]
	cmp r0, #0
	bne _020EDEEC
_020EDEE8:
	mov r1, #0
	mvn r1, r1
_020EDEEC:
	mov r0, #0
	mvn r0, r0
	cmp r1, r0
	bne _020EDF04
	ldr r0, _020EDF60 ; =0x00000116
	mov r1, #0xf
	strb r1, [r4, r0]
	bl aoss_release
	mov r0, #0
	mvn r0, r0
	pop {r4, pc}
_020EDF04:
	ldr r0, _020EDF64 ; =0x000005F8
	bl AOSS_MALLOC
	ldr r1, _020EDF68 ; =aoss_SecurityType
	cmp r0, #0
	str r0, [r1, #0x14]
	bne _020EDF22
	ldr r0, _020EDF60 ; =0x00000116
	mov r1, #0xf
	strb r1, [r4, r0]
	bl aoss_release
	mov r0, #0
	mvn r0, r0
	pop {r4, pc}
_020EDF22:
	mov r0, #0
	mvn r0, r0
	bl AOSS_StatusExclusion
	add r0, r4, #0
	bl AOSS_Init_old
	add r4, r0, #0
	ldr r0, _020EDF68 ; =aoss_SecurityType
	ldr r0, [r0, #0x14]
	bl AOSS_FREE
	bl aoss_release
	ldr r0, _020EDF6C ; =aoss_s_sFd
	mov r1, #0
	ldr r0, [r0]
	mvn r1, r1
	cmp r0, r1
	beq _020EDF4E
	bl AOSS_Close
_020EDF4E:
	add r0, r4, #0
	pop {r4, pc}
	nop
_020EDF54: .word 0x00000106
_020EDF58: .word AOSSi_Alloc
_020EDF5C: .word AOSSi_Free
_020EDF60: .word 0x00000116
_020EDF64: .word 0x000005F8
_020EDF68: .word aoss_SecurityType
_020EDF6C: .word aoss_s_sFd
	thumb_func_end AOSSi_Init

	thumb_func_start AOSS_Init_old
AOSS_Init_old: ; 0x020EDF70
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0xc8
	ldr r1, _020EE2C4 ; =0x0210F440
	str r0, [sp, #8]
	ldrh r2, [r1]
	ldrh r1, [r1, #2]
	add r0, sp, #0x2c
	strh r2, [r0, #0x30]
	strh r1, [r0, #0x32]
	mov r0, #0
	add r1, sp, #0x58
	strh r0, [r1]
	str r0, [sp, #0x24]
	strh r0, [r1, #2]
	mov r0, #1
	str r0, [sp, #0x54]
	ldr r0, [sp, #0x24]
	ldr r1, [sp, #0x24]
	str r0, [sp, #0x50]
	str r0, [sp, #0x1c]
	add r0, sp, #0xb0
	mov r2, #0x18
	bl AOSS_Memset
	ldr r1, _020EE2C8 ; =0x00000106
	ldr r0, [sp, #8]
	ldrsh r0, [r0, r1]
	add r1, sp, #0x2c
	strh r0, [r1, #0x30]
	mov r0, #0x30
	ldrsh r2, [r1, r0]
	sub r0, #0x31
	cmp r2, r0
	bne _020EDFB8
	mov r0, #0xa
	strh r0, [r1, #0x30]
_020EDFB8:
	ldr r1, _020EE2CC ; =0x0000010A
	ldr r0, [sp, #8]
	ldrsh r0, [r0, r1]
	add r1, sp, #0x2c
	strh r0, [r1, #0x2c]
	mov r0, #0x2c
	ldrsh r2, [r1, r0]
	sub r0, #0x2d
	cmp r2, r0
	bne _020EDFD0
	mov r0, #0xa
	strh r0, [r1, #0x2c]
_020EDFD0:
	mov r1, #0x42
	ldr r0, [sp, #8]
	lsl r1, r1, #2
	ldrsh r0, [r0, r1]
	add r1, sp, #0x2c
	strh r0, [r1, #0x32]
	mov r0, #0x32
	ldrsh r2, [r1, r0]
	sub r0, #0x33
	cmp r2, r0
	bne _020EDFEA
	mov r0, #0x64
	strh r0, [r1, #0x32]
_020EDFEA:
	mov r1, #0x43
	ldr r0, [sp, #8]
	lsl r1, r1, #2
	ldrsh r0, [r0, r1]
	add r1, sp, #0x2c
	strh r0, [r1, #0x2e]
	mov r0, #0x2e
	ldrsh r2, [r1, r0]
	sub r0, #0x2f
	cmp r2, r0
	bne _020EE004
	mov r0, #0x64
	strh r0, [r1, #0x2e]
_020EE004:
	ldr r1, _020EE2D0 ; =0x0000010E
	ldr r0, [sp, #8]
	ldrsh r0, [r0, r1]
	mov r1, #0
	mvn r1, r1
	str r0, [sp, #0xc]
	cmp r0, r1
	bne _020EE01A
	mov r0, #0x7d
	lsl r0, r0, #4
	str r0, [sp, #0xc]
_020EE01A:
	ldr r0, [sp, #8]
	bl aoss_data_init
	ldr r0, _020EE2D4 ; =aoss_SecurityType
	ldr r1, [r0, #0x2c]
	mov r0, #1
	and r0, r1
	cmp r0, #1
	beq _020EE046
	mov r0, #0x13
	bl aoss_set_error
	ldr r1, _020EE2D8 ; =0x00000116
	ldr r0, [sp, #8]
	mov r2, #0xf
	strb r2, [r0, r1]
	bl aoss_release
	mov r0, #0
	add sp, #0xc8
	mvn r0, r0
	pop {r3, r4, r5, r6, r7, pc}
_020EE046:
	mov r4, #0
	add r0, r4, #0
	bl AOSS_StatusExclusion
	add r1, sp, #0x2c
	mov r0, #0x32
	ldrsh r6, [r1, r0]
	mov r0, #0x30
	ldrsh r7, [r1, r0]
	ldr r5, _020EE2D4 ; =aoss_SecurityType
_020EE05A:
	ldr r0, [r5, #4]
	cmp r0, #0
	beq _020EE068
	bl AOSS_FREE
	mov r0, #0
	str r0, [r5, #4]
_020EE068:
	ldr r0, _020EE2DC ; =0x02113CA4
	bl FUN_ov17_020f0328
	mov r1, #0
	mvn r1, r1
	cmp r0, r1
	bne _020EE08A
	ldr r1, _020EE2D8 ; =0x00000116
	ldr r0, [sp, #8]
	mov r2, #0xf
	strb r2, [r0, r1]
	bl aoss_release
	mov r0, #0
	add sp, #0xc8
	mvn r0, r0
	pop {r3, r4, r5, r6, r7, pc}
_020EE08A:
	ldr r0, [r5, #4]
	bl aoss_checkAP
	cmp r0, #4
	bne _020EE0A8
	ldr r1, _020EE2D8 ; =0x00000116
	ldr r0, [sp, #8]
	mov r2, #2
	strb r2, [r0, r1]
	bl aoss_release
	mov r0, #0
	add sp, #0xc8
	mvn r0, r0
	pop {r3, r4, r5, r6, r7, pc}
_020EE0A8:
	cmp r0, #0
	beq _020EE0D2
	cmp r4, r7
	blt _020EE0C4
	ldr r1, _020EE2D8 ; =0x00000116
	ldr r0, [sp, #8]
	mov r2, #1
	strb r2, [r0, r1]
	bl aoss_release
	mov r0, #0
	add sp, #0xc8
	mvn r0, r0
	pop {r3, r4, r5, r6, r7, pc}
_020EE0C4:
	add r0, r6, #0
	bl FUN_020f0670
	add r0, r4, #1
	lsl r0, r0, #0x10
	asr r4, r0, #0x10
	b _020EE05A
_020EE0D2:
	mov r0, #1
	bl AOSS_StatusExclusion
	add r0, sp, #0x74
	mov r1, #0
	mov r2, #0x3c
	bl AOSS_Memset
	add r0, sp, #0x74
	bl AOSS_set_APInfo
	cmp r0, #0
	beq _020EE100
	ldr r1, _020EE2D8 ; =0x00000116
	ldr r0, [sp, #8]
	mov r2, #0xf
	strb r2, [r0, r1]
	bl aoss_release
	mov r0, #0
	add sp, #0xc8
	mvn r0, r0
	pop {r3, r4, r5, r6, r7, pc}
_020EE100:
	mov r0, #0x58
	bl AOSS_MALLOC
	ldr r1, _020EE2D4 ; =aoss_SecurityType
	cmp r0, #0
	str r0, [r1, #0xc]
	bne _020EE122
	ldr r1, _020EE2D8 ; =0x00000116
	ldr r0, [sp, #8]
	mov r2, #0xf
	strb r2, [r0, r1]
	bl aoss_release
	mov r0, #0
	add sp, #0xc8
	mvn r0, r0
	pop {r3, r4, r5, r6, r7, pc}
_020EE122:
	mov r1, #0
	mov r2, #0x58
	bl AOSS_Memset
	add r1, sp, #0x2c
	mov r0, #0x30
	ldrsh r5, [r1, r0]
	mov r4, #0
	cmp r5, #0
	ble _020EE17A
	ldr r7, _020EE2D4 ; =aoss_SecurityType
_020EE138:
	ldr r1, [r7, #0xc]
	add r0, sp, #0x74
	bl FUN_ov17_020f04a0
	mov r1, #0
	mvn r1, r1
	cmp r0, r1
	bne _020EE15C
	ldr r1, _020EE2D8 ; =0x00000116
	ldr r0, [sp, #8]
	mov r2, #0xf
	strb r2, [r0, r1]
	bl aoss_release
	mov r0, #0
	add sp, #0xc8
	mvn r0, r0
	pop {r3, r4, r5, r6, r7, pc}
_020EE15C:
	cmp r0, #0
	bne _020EE16A
	bne _020EE17A
	ldr r0, [r7, #0xc]
	ldr r0, [r0]
	cmp r0, #1
	beq _020EE17A
_020EE16A:
	add r0, r6, #0
	bl FUN_020f0670
	add r0, r4, #1
	lsl r0, r0, #0x10
	asr r4, r0, #0x10
	cmp r4, r5
	blt _020EE138
_020EE17A:
	add r0, sp, #0x2c
	mov r1, #0x30
	ldrsh r0, [r0, r1]
	cmp r4, r0
	bne _020EE198
	ldr r0, [sp, #8]
	mov r2, #0xf
	add r1, #0xe6
	strb r2, [r0, r1]
	bl aoss_release
	mov r0, #0
	add sp, #0xc8
	mvn r0, r0
	pop {r3, r4, r5, r6, r7, pc}
_020EE198:
	ldr r0, _020EE2E0 ; =0xC0A80B65
	mov r1, #0xff
	mvn r1, r1
	add r2, r0, #0
	bl FUN_ov17_020efe44
	cmp r0, #0
	beq _020EE1C2
	mov r0, #0xc
	bl aoss_set_error
	ldr r1, _020EE2D8 ; =0x00000116
	ldr r0, [sp, #8]
	mov r2, #0xf
	strb r2, [r0, r1]
	bl aoss_release
	mov r0, #0
	add sp, #0xc8
	mvn r0, r0
	pop {r3, r4, r5, r6, r7, pc}
_020EE1C2:
	bl aoss_release
	mov r3, #0x11
	ldr r2, [sp, #8]
	lsl r3, r3, #4
	mov r0, #3
	add r1, sp, #0xb0
	add r2, r2, r3
	bl aoss_MakeSendSeqID
	mov r0, #2
	add r1, r0, #0
	mov r2, #0
	bl FUN_020eff78
	ldr r1, _020EE2E4 ; =aoss_s_sFd
	cmp r0, #0
	str r0, [r1]
	bge _020EE1FC
	ldr r1, _020EE2D8 ; =0x00000116
	ldr r0, [sp, #8]
	mov r2, #0xf
	strb r2, [r0, r1]
	bl aoss_release
	mov r0, #0
	add sp, #0xc8
	mvn r0, r0
	pop {r3, r4, r5, r6, r7, pc}
_020EE1FC:
	mov r1, #4
	str r1, [sp]
	ldr r1, _020EE2E8 ; =0x0000FFFF
	mov r2, #1
	add r3, sp, #0x54
	bl FUN_ov17_020eff74
	cmp r0, #0
	bge _020EE228
	mov r0, #0xb
	bl aoss_set_error
	ldr r1, _020EE2D8 ; =0x00000116
	ldr r0, [sp, #8]
	mov r2, #0xf
	strb r2, [r0, r1]
	bl aoss_release
	mov r0, #0
	add sp, #0xc8
	mvn r0, r0
	pop {r3, r4, r5, r6, r7, pc}
_020EE228:
	add r0, sp, #0x2c
	mov r1, #0
	mov r2, #8
	bl AOSS_Memset
	mov r1, #2
	add r0, sp, #0x2c
	strb r1, [r0, #1]
	ldr r0, _020EE2E0 ; =0xC0A80B65
	bl AOSS_Htonl
	str r0, [sp, #0x30]
	ldr r0, _020EE2EC ; =0x00005790
	bl AOSS_Htons
	add r1, sp, #0x2c
	strh r0, [r1, #2]
	ldr r0, _020EE2E4 ; =aoss_s_sFd
	add r1, sp, #0x2c
	ldr r0, [r0]
	mov r2, #8
	bl FUN_ov17_020eff80
	cmp r0, #0
	bge _020EE26E
	ldr r1, _020EE2D8 ; =0x00000116
	ldr r0, [sp, #8]
	mov r2, #0xf
	strb r2, [r0, r1]
	bl aoss_release
	mov r0, #0
	add sp, #0xc8
	mvn r0, r0
	pop {r3, r4, r5, r6, r7, pc}
_020EE26E:
	ldr r0, _020EE2D4 ; =aoss_SecurityType
	mov r1, #0
	ldr r0, [r0, #0x14]
	mov r2, #0x14
	str r0, [sp, #0x18]
	add r0, sp, #0x60
	bl AOSS_Memset
	ldr r0, _020EE2E0 ; =0xC0A80B65
	mov r1, #0xfa
	str r0, [sp, #0x70]
	sub r0, #0x64
	str r0, [sp, #0x60]
	ldr r0, [sp, #0xc]
	lsl r1, r1, #2
	blx _s32_div_f
	str r0, [sp, #0x14]
	mov r1, #0xfa
	ldr r0, [sp, #0xc]
	lsl r1, r1, #2
	blx _s32_div_f
	mov r0, #0xfa
	lsl r0, r0, #2
	mul r0, r1
	str r0, [sp, #0x10]
	mov r1, #0x30
	add r0, sp, #0x2c
	ldrsh r7, [r0, r1]
	ldr r5, _020EE2D4 ; =aoss_SecurityType
_020EE2AC:
	ldr r0, [sp, #0x24]
	cmp r0, #1
	bne _020EE2BC
	ldr r1, _020EE2F0 ; =0x02113CC0
	mov r0, #0x1c
	ldrsb r0, [r1, r0]
	cmp r0, #1
	bne _020EE2BE
_020EE2BC:
	b _020EE538
_020EE2BE:
	ldr r0, _020EE2E4 ; =aoss_s_sFd
	b _020EE2F4
	nop
_020EE2C4: .word ov17_0210F440
_020EE2C8: .word 0x00000106
_020EE2CC: .word 0x0000010A
_020EE2D0: .word 0x0000010E
_020EE2D4: .word aoss_SecurityType
_020EE2D8: .word 0x00000116
_020EE2DC: .word ov17_02113CA4
_020EE2E0: .word 0xC0A80B65
_020EE2E4: .word aoss_s_sFd
_020EE2E8: .word 0x0000FFFF
_020EE2EC: .word 0x00005790
_020EE2F0: .word ov17_02113CC0
_020EE2F4:
	mov r1, #0
	ldr r0, [r0]
	mvn r1, r1
	cmp r0, r1
	beq _020EE302
	bl AOSS_Close
_020EE302:
	mov r1, #0
	ldr r0, _020EE634 ; =aoss_s_sFd
	mvn r1, r1
	str r1, [r0]
	bl FUN_ov17_020efe9c
	cmp r0, #0
	beq _020EE326
	ldr r1, _020EE638 ; =0x00000116
	ldr r0, [sp, #8]
	mov r2, #0xf
	strb r2, [r0, r1]
	bl aoss_release
	mov r0, #0
	add sp, #0xc8
	mvn r0, r0
	pop {r3, r4, r5, r6, r7, pc}
_020EE326:
	mov r0, #0x58
	bl AOSS_MALLOC
	str r0, [r5, #4]
	cmp r0, #0
	bne _020EE346
	ldr r1, _020EE638 ; =0x00000116
	ldr r0, [sp, #8]
	mov r2, #0xf
	strb r2, [r0, r1]
	bl aoss_release
	mov r0, #0
	add sp, #0xc8
	mvn r0, r0
	pop {r3, r4, r5, r6, r7, pc}
_020EE346:
	ldr r0, [r5, #4]
	cmp r0, #0
	beq _020EE354
	bl AOSS_FREE
	mov r0, #0
	str r0, [r5, #4]
_020EE354:
	ldr r0, _020EE63C ; =0x02113CA4
	bl FUN_ov17_020f0328
	mov r1, #0
	mvn r1, r1
	str r0, [sp, #0x28]
	cmp r0, r1
	bne _020EE378
	ldr r1, _020EE638 ; =0x00000116
	ldr r0, [sp, #8]
	mov r2, #0xf
	strb r2, [r0, r1]
	bl aoss_release
	mov r0, #0
	add sp, #0xc8
	mvn r0, r0
	pop {r3, r4, r5, r6, r7, pc}
_020EE378:
	ldr r0, [r5, #4]
	bl aoss_checkAP
	cmp r0, #4
	bne _020EE396
	ldr r1, _020EE638 ; =0x00000116
	ldr r0, [sp, #8]
	mov r2, #2
	strb r2, [r0, r1]
	bl aoss_release
	mov r0, #0
	add sp, #0xc8
	mvn r0, r0
	pop {r3, r4, r5, r6, r7, pc}
_020EE396:
	cmp r0, #0
	beq _020EE3C0
	cmp r4, r7
	blt _020EE3B2
	ldr r1, _020EE638 ; =0x00000116
	ldr r0, [sp, #8]
	mov r2, #1
	strb r2, [r0, r1]
	bl aoss_release
	mov r0, #0
	add sp, #0xc8
	mvn r0, r0
	pop {r3, r4, r5, r6, r7, pc}
_020EE3B2:
	add r0, r6, #0
	bl FUN_020f0670
	add r0, r4, #1
	lsl r0, r0, #0x10
	asr r4, r0, #0x10
	b _020EE346
_020EE3C0:
	mov r0, #0
	ldr r1, [sp, #0x28]
	mvn r0, r0
	cmp r1, r0
	bne _020EE3DE
	ldr r1, _020EE638 ; =0x00000116
	ldr r0, [sp, #8]
	mov r2, #0xf
	strb r2, [r0, r1]
	bl aoss_release
	mov r0, #0
	add sp, #0xc8
	mvn r0, r0
	pop {r3, r4, r5, r6, r7, pc}
_020EE3DE:
	mov r0, #0x58
	bl AOSS_MALLOC
	str r0, [r5, #0xc]
	cmp r0, #0
	bne _020EE3FE
	ldr r1, _020EE638 ; =0x00000116
	ldr r0, [sp, #8]
	mov r2, #0xf
	strb r2, [r0, r1]
	bl aoss_release
	mov r0, #0
	add sp, #0xc8
	mvn r0, r0
	pop {r3, r4, r5, r6, r7, pc}
_020EE3FE:
	mov r1, #0
	mov r2, #0x58
	bl AOSS_Memset
	mov r4, #0
	cmp r7, #0
	ble _020EE44E
_020EE40C:
	ldr r1, [r5, #0xc]
	add r0, sp, #0x74
	bl FUN_ov17_020f04a0
	mov r1, #0
	mvn r1, r1
	cmp r0, r1
	bne _020EE430
	ldr r1, _020EE638 ; =0x00000116
	ldr r0, [sp, #8]
	mov r2, #0xf
	strb r2, [r0, r1]
	bl aoss_release
	mov r0, #0
	add sp, #0xc8
	mvn r0, r0
	pop {r3, r4, r5, r6, r7, pc}
_020EE430:
	cmp r0, #0
	bne _020EE43E
	bne _020EE44E
	ldr r0, [r5, #0xc]
	ldr r0, [r0]
	cmp r0, #1
	beq _020EE44E
_020EE43E:
	add r0, r6, #0
	bl FUN_020f0670
	add r0, r4, #1
	lsl r0, r0, #0x10
	asr r4, r0, #0x10
	cmp r4, r7
	blt _020EE40C
_020EE44E:
	cmp r4, r7
	bne _020EE466
	ldr r1, _020EE638 ; =0x00000116
	ldr r0, [sp, #8]
	mov r2, #0xf
	strb r2, [r0, r1]
	bl aoss_release
	mov r0, #0
	add sp, #0xc8
	mvn r0, r0
	pop {r3, r4, r5, r6, r7, pc}
_020EE466:
	ldr r0, [r5, #0x34]
	ldr r1, [r5, #0x38]
	bl aoss_IP_sta
	ldr r1, [r5, #0x38]
	add r2, r0, #0
	str r0, [sp, #0x1c]
	bl FUN_ov17_020efe44
	cmp r0, #0
	beq _020EE496
	mov r0, #0xc
	bl aoss_set_error
	ldr r1, _020EE638 ; =0x00000116
	ldr r0, [sp, #8]
	mov r2, #0xf
	strb r2, [r0, r1]
	bl aoss_release
	mov r0, #0
	add sp, #0xc8
	mvn r0, r0
	pop {r3, r4, r5, r6, r7, pc}
_020EE496:
	ldr r0, _020EE640 ; =0x02113CC0
	mov r1, #1
	strb r1, [r0, #0x1c]
	bl aoss_release
	mov r0, #2
	add r1, r0, #0
	mov r2, #0
	bl FUN_020eff78
	ldr r1, _020EE634 ; =aoss_s_sFd
	cmp r0, #0
	str r0, [r1]
	bge _020EE4C6
	ldr r1, _020EE638 ; =0x00000116
	ldr r0, [sp, #8]
	mov r2, #0xf
	strb r2, [r0, r1]
	bl aoss_release
	mov r0, #0
	add sp, #0xc8
	mvn r0, r0
	pop {r3, r4, r5, r6, r7, pc}
_020EE4C6:
	mov r1, #4
	str r1, [sp]
	ldr r1, _020EE644 ; =0x0000FFFF
	mov r2, #1
	add r3, sp, #0x54
	bl FUN_ov17_020eff74
	cmp r0, #0
	bge _020EE4F2
	mov r0, #0xb
	bl aoss_set_error
	ldr r1, _020EE638 ; =0x00000116
	ldr r0, [sp, #8]
	mov r2, #0xf
	strb r2, [r0, r1]
	bl aoss_release
	mov r0, #0
	add sp, #0xc8
	mvn r0, r0
	pop {r3, r4, r5, r6, r7, pc}
_020EE4F2:
	add r0, sp, #0x2c
	mov r1, #0
	mov r2, #8
	bl AOSS_Memset
	mov r1, #2
	add r0, sp, #0x2c
	strb r1, [r0, #1]
	ldr r0, [sp, #0x1c]
	bl AOSS_Htonl
	str r0, [sp, #0x30]
	ldr r0, _020EE648 ; =0x00005790
	bl AOSS_Htons
	add r1, sp, #0x2c
	strh r0, [r1, #2]
	ldr r0, _020EE634 ; =aoss_s_sFd
	add r1, sp, #0x2c
	ldr r0, [r0]
	mov r2, #8
	bl FUN_ov17_020eff80
	cmp r0, #0
	bge _020EE538
	ldr r1, _020EE638 ; =0x00000116
	ldr r0, [sp, #8]
	mov r2, #0xf
	strb r2, [r0, r1]
	bl aoss_release
	mov r0, #0
	add sp, #0xc8
	mvn r0, r0
	pop {r3, r4, r5, r6, r7, pc}
_020EE538:
	ldr r3, _020EE634 ; =aoss_s_sFd
	ldr r0, [sp, #0x24]
	ldr r3, [r3]
	add r1, sp, #0x60
	add r2, sp, #0xb0
	bl aoss_SendMessage
	mov r1, #0
	mvn r1, r1
	cmp r0, r1
	bne _020EE56E
	mov r1, #1
	ldr r0, [sp, #0x24]
	lsl r1, r1, #0xc
	add r0, r0, r1
	bl aoss_set_error
	ldr r1, _020EE638 ; =0x00000116
	ldr r0, [sp, #8]
	mov r2, #0xf
	strb r2, [r0, r1]
	bl aoss_release
	mov r0, #0
	add sp, #0xc8
	mvn r0, r0
	pop {r3, r4, r5, r6, r7, pc}
_020EE56E:
	ldr r0, [sp, #0x18]
	ldr r2, _020EE64C ; =0x000005F8
	mov r1, #0
	bl AOSS_Memset
	add r0, sp, #0x3c
	bl FUN_ov17_020f0098
	ldr r0, _020EE634 ; =aoss_s_sFd
	add r1, sp, #0x3c
	ldr r0, [r0]
	bl FUN_ov17_020f00a4
	ldr r0, [sp, #0x14]
	mov r2, #0
	str r0, [sp, #0x34]
	ldr r0, [sp, #0x10]
	add r1, sp, #0x3c
	str r0, [sp, #0x38]
	add r0, sp, #0x34
	str r0, [sp]
	ldr r0, _020EE634 ; =aoss_s_sFd
	add r3, r2, #0
	ldr r0, [r0]
	add r0, r0, #1
	bl FUN_ov17_020eff10
	cmp r0, #0
	bgt _020EE5E8
	ldr r0, [sp, #0x50]
	add r1, sp, #0x2c
	add r2, r0, #1
	str r2, [sp, #0x50]
	mov r0, #0x2c
	ldrsh r0, [r1, r0]
	cmp r2, r0
	ble _020EE5DE
	ldr r0, [sp, #0x24]
	cmp r0, #0
	bne _020EE5C6
	mov r0, #0xf
	bl aoss_set_error
	b _020EE5D8
_020EE5C6:
	cmp r0, #1
	bne _020EE5D2
	mov r0, #0x10
	bl aoss_set_error
	b _020EE5D8
_020EE5D2:
	mov r0, #0x11
	bl aoss_set_error
_020EE5D8:
	mov r5, #0
	mvn r5, r5
	b _020EE8C6
_020EE5DE:
	mov r0, #0x2e
	ldrsh r0, [r1, r0]
	bl FUN_020f0670
	b _020EE2AC
_020EE5E8:
	mov r0, #8
	str r0, [sp, #0x44]
	add r0, sp, #0x48
	str r0, [sp]
	add r0, sp, #0x44
	str r0, [sp, #4]
	ldr r0, _020EE634 ; =aoss_s_sFd
	ldr r1, [sp, #0x18]
	ldr r0, [r0]
	ldr r2, _020EE650 ; =0x000005DC
	add r1, #0xc
	mov r3, #0
	bl FUN_ov17_020efefc
	ldr r1, _020EE634 ; =aoss_s_sFd
	lsl r0, r0, #0x10
	ldr r2, [r1]
	ldr r1, [sp, #0x18]
	lsr r0, r0, #0x10
	str r2, [r1]
	bl AOSS_Ntohs
	ldr r1, [sp, #0x18]
	add r2, sp, #0x50
	str r0, [r1, #4]
	ldr r0, _020EE634 ; =aoss_s_sFd
	add r3, sp, #0xb0
	ldr r0, [r0]
	str r0, [sp]
	ldr r0, [sp, #0x24]
	bl aoss_RecvMessage
	str r0, [sp, #0x20]
	cmp r0, #0x64
	bne _020EE654
	mov r5, #0
	b _020EE8C6
	nop
_020EE634: .word aoss_s_sFd
_020EE638: .word 0x00000116
_020EE63C: .word ov17_02113CA4
_020EE640: .word ov17_02113CC0
_020EE644: .word 0x0000FFFF
_020EE648: .word 0x00005790
_020EE64C: .word 0x000005F8
_020EE650: .word 0x000005DC
_020EE654:
	mov r5, #0
	mvn r5, r5
	cmp r0, r5
	bne _020EE65E
	b _020EE8C6
_020EE65E:
	ldr r1, [sp, #0x24]
	cmp r1, r0
	bne _020EE666
	b _020EE888
_020EE666:
	cmp r0, #2
	beq _020EE66C
	b _020EE882
_020EE66C:
	ldr r0, _020EE970 ; =aoss_s_sFd
	ldr r0, [r0]
	cmp r0, r5
	beq _020EE678
	bl AOSS_Close
_020EE678:
	mov r1, #0
	ldr r0, _020EE970 ; =aoss_s_sFd
	mvn r1, r1
	str r1, [r0]
	bl FUN_ov17_020efe9c
	cmp r0, #0
	beq _020EE69C
	ldr r1, _020EE974 ; =0x00000116
	ldr r0, [sp, #8]
	mov r2, #0xf
	strb r2, [r0, r1]
	bl aoss_release
	mov r0, #0
	add sp, #0xc8
	mvn r0, r0
	pop {r3, r4, r5, r6, r7, pc}
_020EE69C:
	mov r0, #4
	mov r4, #0
	bl AOSS_StatusExclusion
	add r1, sp, #0x2c
	mov r0, #0x30
	ldrsh r7, [r1, r0]
	ldr r5, _020EE978 ; =aoss_SecurityType
_020EE6AC:
	ldr r0, [r5, #4]
	cmp r0, #0
	beq _020EE6BA
	bl AOSS_FREE
	mov r0, #0
	str r0, [r5, #4]
_020EE6BA:
	ldr r0, _020EE97C ; =0x02113CA4
	bl FUN_ov17_020f0328
	mov r1, #0
	mvn r1, r1
	cmp r0, r1
	bne _020EE6DC
	ldr r1, _020EE974 ; =0x00000116
	ldr r0, [sp, #8]
	mov r2, #0xf
	strb r2, [r0, r1]
	bl aoss_release
	mov r0, #0
	add sp, #0xc8
	mvn r0, r0
	pop {r3, r4, r5, r6, r7, pc}
_020EE6DC:
	ldr r0, [r5, #4]
	bl aoss_checkAP
	cmp r0, #4
	bne _020EE6FA
	ldr r1, _020EE974 ; =0x00000116
	ldr r0, [sp, #8]
	mov r2, #2
	strb r2, [r0, r1]
	bl aoss_release
	mov r0, #0
	add sp, #0xc8
	mvn r0, r0
	pop {r3, r4, r5, r6, r7, pc}
_020EE6FA:
	cmp r0, #0
	beq _020EE724
	cmp r4, r7
	blt _020EE716
	ldr r1, _020EE974 ; =0x00000116
	ldr r0, [sp, #8]
	mov r2, #1
	strb r2, [r0, r1]
	bl aoss_release
	mov r0, #0
	add sp, #0xc8
	mvn r0, r0
	pop {r3, r4, r5, r6, r7, pc}
_020EE716:
	add r0, r6, #0
	bl FUN_020f0670
	add r0, r4, #1
	lsl r0, r0, #0x10
	asr r4, r0, #0x10
	b _020EE6AC
_020EE724:
	mov r0, #0x58
	bl AOSS_MALLOC
	ldr r1, _020EE978 ; =aoss_SecurityType
	cmp r0, #0
	str r0, [r1, #0xc]
	bne _020EE746
	ldr r1, _020EE974 ; =0x00000116
	ldr r0, [sp, #8]
	mov r2, #0xf
	strb r2, [r0, r1]
	bl aoss_release
	mov r0, #0
	add sp, #0xc8
	mvn r0, r0
	pop {r3, r4, r5, r6, r7, pc}
_020EE746:
	mov r1, #0
	mov r2, #0x58
	bl AOSS_Memset
	add r1, sp, #0x2c
	mov r0, #0x30
	ldrsh r5, [r1, r0]
	mov r4, #0
	cmp r5, #0
	ble _020EE79E
	ldr r7, _020EE978 ; =aoss_SecurityType
_020EE75C:
	ldr r1, [r7, #0xc]
	add r0, sp, #0x74
	bl FUN_ov17_020f04a0
	mov r1, #0
	mvn r1, r1
	cmp r0, r1
	bne _020EE780
	ldr r1, _020EE974 ; =0x00000116
	ldr r0, [sp, #8]
	mov r2, #0xf
	strb r2, [r0, r1]
	bl aoss_release
	mov r0, #0
	add sp, #0xc8
	mvn r0, r0
	pop {r3, r4, r5, r6, r7, pc}
_020EE780:
	cmp r0, #0
	bne _020EE78E
	bne _020EE79E
	ldr r0, [r7, #0xc]
	ldr r0, [r0]
	cmp r0, #1
	beq _020EE79E
_020EE78E:
	add r0, r6, #0
	bl FUN_020f0670
	add r0, r4, #1
	lsl r0, r0, #0x10
	asr r4, r0, #0x10
	cmp r4, r5
	blt _020EE75C
_020EE79E:
	add r0, sp, #0x2c
	mov r1, #0x30
	ldrsh r0, [r0, r1]
	cmp r4, r0
	bne _020EE7BC
	ldr r0, [sp, #8]
	mov r2, #0xf
	add r1, #0xe6
	strb r2, [r0, r1]
	bl aoss_release
	mov r0, #0
	add sp, #0xc8
	mvn r0, r0
	pop {r3, r4, r5, r6, r7, pc}
_020EE7BC:
	ldr r1, _020EE978 ; =aoss_SecurityType
	ldr r0, [sp, #0x1c]
	ldr r1, [r1, #0x38]
	add r2, r0, #0
	bl FUN_ov17_020efe44
	cmp r0, #0
	beq _020EE7E6
	mov r0, #0xc
	bl aoss_set_error
	ldr r1, _020EE974 ; =0x00000116
	ldr r0, [sp, #8]
	mov r2, #0xf
	strb r2, [r0, r1]
	bl aoss_release
	mov r0, #0
	add sp, #0xc8
	mvn r0, r0
	pop {r3, r4, r5, r6, r7, pc}
_020EE7E6:
	bl aoss_release
	mov r0, #2
	add r1, r0, #0
	mov r2, #0
	bl FUN_020eff78
	ldr r1, _020EE970 ; =aoss_s_sFd
	cmp r0, #0
	str r0, [r1]
	bge _020EE810
	ldr r1, _020EE974 ; =0x00000116
	ldr r0, [sp, #8]
	mov r2, #0xf
	strb r2, [r0, r1]
	bl aoss_release
	mov r0, #0
	add sp, #0xc8
	mvn r0, r0
	pop {r3, r4, r5, r6, r7, pc}
_020EE810:
	mov r1, #4
	str r1, [sp]
	ldr r1, _020EE980 ; =0x0000FFFF
	mov r2, #1
	add r3, sp, #0x54
	bl FUN_ov17_020eff74
	cmp r0, #0
	bge _020EE83C
	mov r0, #0xb
	bl aoss_set_error
	ldr r1, _020EE974 ; =0x00000116
	ldr r0, [sp, #8]
	mov r2, #0xf
	strb r2, [r0, r1]
	bl aoss_release
	mov r0, #0
	add sp, #0xc8
	mvn r0, r0
	pop {r3, r4, r5, r6, r7, pc}
_020EE83C:
	add r0, sp, #0x2c
	mov r1, #0
	mov r2, #8
	bl AOSS_Memset
	mov r1, #2
	add r0, sp, #0x2c
	strb r1, [r0, #1]
	ldr r0, [sp, #0x1c]
	bl AOSS_Htonl
	str r0, [sp, #0x30]
	ldr r0, _020EE984 ; =0x00005790
	bl AOSS_Htons
	add r1, sp, #0x2c
	strh r0, [r1, #2]
	ldr r0, _020EE970 ; =aoss_s_sFd
	add r1, sp, #0x2c
	ldr r0, [r0]
	mov r2, #8
	bl FUN_ov17_020eff80
	cmp r0, #0
	bge _020EE882
	ldr r1, _020EE974 ; =0x00000116
	ldr r0, [sp, #8]
	mov r2, #0xf
	strb r2, [r0, r1]
	bl aoss_release
	mov r0, #0
	add sp, #0xc8
	mvn r0, r0
	pop {r3, r4, r5, r6, r7, pc}
_020EE882:
	ldr r0, [sp, #0x20]
	str r0, [sp, #0x24]
	b _020EE26E
_020EE888:
	str r0, [sp, #0x24]
	add r1, sp, #0x2c
	mov r0, #0x2c
	ldrsh r0, [r1, r0]
	ldr r2, [sp, #0x50]
	cmp r2, r0
	ble _020EE8BC
	ldr r0, [sp, #0x20]
	cmp r0, #0
	bne _020EE8A4
	mov r0, #0xf
	bl aoss_set_error
	b _020EE8B6
_020EE8A4:
	cmp r0, #1
	bne _020EE8B0
	mov r0, #0x10
	bl aoss_set_error
	b _020EE8B6
_020EE8B0:
	mov r0, #0x11
	bl aoss_set_error
_020EE8B6:
	mov r5, #0
	mvn r5, r5
	b _020EE8C6
_020EE8BC:
	mov r0, #0x2e
	ldrsh r0, [r1, r0]
	bl FUN_020f0670
	b _020EE26E
_020EE8C6:
	ldr r0, _020EE970 ; =aoss_s_sFd
	mov r1, #0
	ldr r0, [r0]
	mvn r1, r1
	cmp r0, r1
	beq _020EE8D6
	bl AOSS_Close
_020EE8D6:
	mov r1, #0
	ldr r0, _020EE970 ; =aoss_s_sFd
	mvn r1, r1
	str r1, [r0]
	bl FUN_ov17_020efe9c
	cmp r0, #0
	beq _020EE8FA
	ldr r1, _020EE974 ; =0x00000116
	ldr r0, [sp, #8]
	mov r2, #0xf
	strb r2, [r0, r1]
	bl aoss_release
	mov r0, #0
	add sp, #0xc8
	mvn r0, r0
	pop {r3, r4, r5, r6, r7, pc}
_020EE8FA:
	cmp r5, #0
	beq _020EE94A
	bl aoss_get_error
	sub r0, #0xf
	cmp r0, #6
	bhi _020EE936
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_020EE914: ; jump table
	.short _020EE922 - _020EE914 - 2 ; case 0
	.short _020EE926 - _020EE914 - 2 ; case 1
	.short _020EE92A - _020EE914 - 2 ; case 2
	.short _020EE936 - _020EE914 - 2 ; case 3
	.short _020EE936 - _020EE914 - 2 ; case 4
	.short _020EE92E - _020EE914 - 2 ; case 5
	.short _020EE932 - _020EE914 - 2 ; case 6
_020EE922:
	mov r2, #3
	b _020EE938
_020EE926:
	mov r2, #4
	b _020EE938
_020EE92A:
	mov r2, #5
	b _020EE938
_020EE92E:
	mov r2, #7
	b _020EE938
_020EE932:
	mov r2, #8
	b _020EE938
_020EE936:
	mov r2, #0xf
_020EE938:
	ldr r1, _020EE974 ; =0x00000116
	ldr r0, [sp, #8]
	strb r2, [r0, r1]
	bl aoss_release
	mov r0, #0
	add sp, #0xc8
	mvn r0, r0
	pop {r3, r4, r5, r6, r7, pc}
_020EE94A:
	ldr r0, [sp, #8]
	bl AOSS_seq_data_copy
	cmp r0, #0
	beq _020EE968
	ldr r1, _020EE974 ; =0x00000116
	ldr r0, [sp, #8]
	mov r2, #6
	strb r2, [r0, r1]
	bl aoss_release
	mov r0, #0
	add sp, #0xc8
	mvn r0, r0
	pop {r3, r4, r5, r6, r7, pc}
_020EE968:
	mov r0, #0
	add sp, #0xc8
	pop {r3, r4, r5, r6, r7, pc}
	nop
_020EE970: .word aoss_s_sFd
_020EE974: .word 0x00000116
_020EE978: .word aoss_SecurityType
_020EE97C: .word ov17_02113CA4
_020EE980: .word 0x0000FFFF
_020EE984: .word 0x00005790
	thumb_func_end AOSS_Init_old

	thumb_func_start aoss_IP_sta
aoss_IP_sta: ; 0x020EE988
	add r2, r0, #0
	and r2, r1
	mvn r1, r1
	and r0, r1
	add r0, r0, #1
	orr r0, r2
	orr r1, r2
	cmp r0, r1
	blo _020EE99E
	mov r0, #1
	orr r0, r2
_020EE99E:
	bx lr
	thumb_func_end aoss_IP_sta

	thumb_func_start aoss_release
aoss_release: ; 0x020EE9A0
	push {r3, lr}
	ldr r0, _020EE9C8 ; =aoss_SecurityType
	ldr r0, [r0, #0xc]
	cmp r0, #0
	beq _020EE9B4
	bl AOSS_FREE
	ldr r0, _020EE9C8 ; =aoss_SecurityType
	mov r1, #0
	str r1, [r0, #0xc]
_020EE9B4:
	ldr r0, _020EE9C8 ; =aoss_SecurityType
	ldr r0, [r0, #4]
	cmp r0, #0
	beq _020EE9C6
	bl AOSS_FREE
	ldr r0, _020EE9C8 ; =aoss_SecurityType
	mov r1, #0
	str r1, [r0, #4]
_020EE9C6:
	pop {r3, pc}
_020EE9C8: .word aoss_SecurityType
	thumb_func_end aoss_release

	thumb_func_start aoss_data_init
aoss_data_init: ; 0x020EE9CC
	push {r4, lr}
	add r4, r0, #0
	ldr r0, _020EEA10 ; =aoss_gSeqID
	mov r1, #0
	mov r2, #8
	bl AOSS_Memset
	ldr r0, _020EEA14 ; =aoss_SecurityType
	mov r1, #1
	str r1, [r0, #0x10]
	ldr r0, _020EEA18 ; =gData
	mov r1, #0
	mov r2, #0x1c
	bl AOSS_Memset
	ldr r1, _020EEA14 ; =aoss_SecurityType
	add r0, r4, #6
	str r0, [r1, #0x24]
	ldrh r0, [r4, #4]
	mov r3, #0
	str r0, [r1, #0x28]
	ldrh r2, [r4]
	mov r0, #0xf
	and r0, r2
	str r0, [r1, #0x2c]
	ldrb r2, [r4, #2]
	ldr r0, _020EEA1C ; =0x02113CC0
	strb r2, [r0, #0x1d]
	ldr r2, _020EEA20 ; =0xC0A80B01
	str r3, [r1, #0x30]
	str r2, [r1, #0x34]
	strb r3, [r0, #0x1c]
	pop {r4, pc}
	nop
_020EEA10: .word aoss_gSeqID
_020EEA14: .word aoss_SecurityType
_020EEA18: .word gData
_020EEA1C: .word ov17_02113CC0
_020EEA20: .word 0xC0A80B01
	thumb_func_end aoss_data_init

	thumb_func_start aoss_set_error
aoss_set_error: ; 0x020EEA24
	ldr r1, _020EEA2C ; =aoss_SecurityType
	str r0, [r1, #0x10]
	bx lr
	nop
_020EEA2C: .word aoss_SecurityType
	thumb_func_end aoss_set_error

	thumb_func_start aoss_get_error
aoss_get_error: ; 0x020EEA30
	ldr r0, _020EEA38 ; =aoss_SecurityType
	ldr r0, [r0, #0x10]
	bx lr
	nop
_020EEA38: .word aoss_SecurityType
	thumb_func_end aoss_get_error

	thumb_func_start AOSS_seq_data_copy
AOSS_seq_data_copy: ; 0x020EEA3C
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	add r7, r0, #0
	ldr r0, _020EEC14 ; =0x021145C8
	ldr r2, _020EEC18 ; =0x00000117
	str r0, [sp, #4]
	ldr r0, _020EEC1C ; =0x02114638
	add r4, r7, r2
	ldr r6, _020EEC20 ; =0x02114368
	ldr r5, _020EEC24 ; =0x02114498
	str r0, [sp]
	bne _020EEA5C
	mov r0, #0
	add sp, #8
	mvn r0, r0
	pop {r3, r4, r5, r6, r7, pc}
_020EEA5C:
	ldr r1, _020EEC28 ; =aoss_SecurityType
	add r2, #0x3d
	ldr r0, [r1, #0x2c]
	ldr r1, [r1, #0x30]
	and r0, r1
	strh r0, [r7]
	add r0, r4, #0
	mov r1, #0
	bl AOSS_Memset
	ldrh r1, [r7]
	mov r0, #1
	tst r0, r1
	beq _020EEADA
	add r1, r6, #0
	ldr r2, [r6, #4]
	add r0, r4, #0
	add r1, #0x30
	bl AOSS_Memcpy
	add r1, r6, #0
	ldr r2, [r6, #4]
	add r0, r4, #6
	add r1, #0x70
	bl AOSS_Memcpy
	add r0, r4, #0
	add r1, r6, #0
	ldr r2, [r6, #4]
	add r0, #0xc
	add r1, #0xb0
	bl AOSS_Memcpy
	add r0, r4, #0
	add r1, r6, #0
	ldr r2, [r6, #4]
	add r0, #0x12
	add r1, #0xf0
	bl AOSS_Memcpy
	add r0, r6, #0
	add r0, #8
	bl AOSS_Strlen
	add r1, r0, #0
	add r0, r6, #0
	add r0, #8
	bl aoss_check_str
	cmp r0, #0
	beq _020EEAC4
	b _020EEC00
_020EEAC4:
	add r0, r6, #0
	add r0, #8
	bl AOSS_Strlen
	add r2, r0, #0
	add r0, r4, #0
	add r6, #8
	add r0, #0x18
	add r1, r6, #0
	bl AOSS_Memcpy
_020EEADA:
	ldrh r1, [r7]
	mov r0, #2
	tst r0, r1
	beq _020EEB46
	add r0, r4, #0
	add r1, r5, #0
	ldr r2, [r5, #4]
	add r0, #0x39
	add r1, #0x30
	bl AOSS_Memcpy
	add r0, r4, #0
	add r1, r5, #0
	ldr r2, [r5, #4]
	add r0, #0x47
	add r1, #0x70
	bl AOSS_Memcpy
	add r0, r4, #0
	add r1, r5, #0
	ldr r2, [r5, #4]
	add r0, #0x55
	add r1, #0xb0
	bl AOSS_Memcpy
	add r0, r4, #0
	add r1, r5, #0
	ldr r2, [r5, #4]
	add r0, #0x63
	add r1, #0xf0
	bl AOSS_Memcpy
	add r0, r5, #0
	add r0, #8
	bl AOSS_Strlen
	add r1, r0, #0
	add r0, r5, #0
	add r0, #8
	bl aoss_check_str
	cmp r0, #0
	bne _020EEC00
	add r0, r5, #0
	add r0, #8
	bl AOSS_Strlen
	add r2, r0, #0
	add r0, r4, #0
	add r5, #8
	add r0, #0x71
	add r1, r5, #0
	bl AOSS_Memcpy
_020EEB46:
	ldrh r1, [r7]
	mov r0, #4
	tst r0, r1
	beq _020EEB9E
	ldr r1, [sp, #4]
	ldr r0, [sp, #4]
	ldr r1, [r1, #4]
	add r0, #0x30
	sub r1, r1, #1
	bl aoss_check_str
	cmp r0, #0
	bne _020EEC00
	ldr r2, [sp, #4]
	ldr r1, [sp, #4]
	add r0, r4, #0
	ldr r2, [r2, #4]
	add r0, #0x92
	add r1, #0x30
	bl AOSS_Memcpy
	ldr r0, [sp, #4]
	add r0, #8
	bl AOSS_Strlen
	add r1, r0, #0
	ldr r0, [sp, #4]
	add r0, #8
	bl aoss_check_str
	cmp r0, #0
	bne _020EEC00
	ldr r0, [sp, #4]
	add r0, #8
	bl AOSS_Strlen
	ldr r1, [sp, #4]
	add r2, r0, #0
	add r0, r4, #0
	add r1, #8
	add r0, #0xd2
	str r1, [sp, #4]
	bl AOSS_Memcpy
_020EEB9E:
	ldrh r1, [r7]
	mov r0, #8
	tst r0, r1
	beq _020EEBF6
	ldr r1, [sp]
	ldr r0, [sp]
	ldr r1, [r1, #4]
	add r0, #0x30
	sub r1, r1, #1
	bl aoss_check_str
	cmp r0, #0
	bne _020EEC00
	ldr r2, [sp]
	ldr r1, [sp]
	add r0, r4, #0
	ldr r2, [r2, #4]
	add r0, #0xf3
	add r1, #0x30
	bl AOSS_Memcpy
	ldr r0, [sp]
	add r0, #8
	bl AOSS_Strlen
	add r1, r0, #0
	ldr r0, [sp]
	add r0, #8
	bl aoss_check_str
	cmp r0, #0
	bne _020EEC00
	ldr r0, [sp]
	add r0, #8
	bl AOSS_Strlen
	add r2, r0, #0
	ldr r0, _020EEC2C ; =0x00000133
	ldr r1, [sp]
	add r0, r4, r0
	add r1, #8
	str r1, [sp]
	bl AOSS_Memcpy
_020EEBF6:
	ldr r1, _020EEC30 ; =0x00000116
	mov r0, #0
	add sp, #8
	strb r0, [r7, r1]
	pop {r3, r4, r5, r6, r7, pc}
_020EEC00:
	mov r2, #0x55
	add r0, r4, #0
	mov r1, #0
	lsl r2, r2, #2
	bl AOSS_Memset
	mov r0, #0
	mvn r0, r0
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
_020EEC14: .word ov17_021145C8
_020EEC18: .word 0x00000117
_020EEC1C: .word ov17_02114638
_020EEC20: .word ov17_02114368
_020EEC24: .word ov17_02114498
_020EEC28: .word aoss_SecurityType
_020EEC2C: .word 0x00000133
_020EEC30: .word 0x00000116
	thumb_func_end AOSS_seq_data_copy

	thumb_func_start aoss_check_str
aoss_check_str: ; 0x020EEC34
	mov r3, #0
	cmp r1, #0
	ble _020EEC52
_020EEC3A:
	ldrb r2, [r0]
	add r0, r0, #1
	cmp r2, #0x20
	blo _020EEC46
	cmp r2, #0x7f
	bls _020EEC4C
_020EEC46:
	mov r0, #0
	mvn r0, r0
	bx lr
_020EEC4C:
	add r3, r3, #1
	cmp r3, r1
	blt _020EEC3A
_020EEC52:
	mov r0, #0
	bx lr
	thumb_func_end aoss_check_str

	thumb_func_start aoss_checkAP
aoss_checkAP: ; 0x020EEC58
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	add r5, r0, #0
	ldr r0, [r5]
	mov r4, #0
	str r4, [sp, #4]
	str r0, [sp]
	cmp r0, #0
	bne _020EEC70
	add sp, #8
	mov r0, #5
	pop {r3, r4, r5, r6, r7, pc}
_020EEC70:
	cmp r0, #0x40
	bls _020EEC78
	mov r0, #0x40
	str r0, [sp]
_020EEC78:
	ldr r0, [sp]
	mov r7, #0
	cmp r0, #0
	ble _020EECBA
	add r6, r5, #0
	add r6, #8
_020EEC84:
	ldr r1, [r5, #0x54]
	mov r0, #1
	tst r0, r1
	beq _020EECAE
	ldr r0, _020EECD0 ; =0x02112784
	bl AOSS_Strlen
	ldr r1, [r5, #4]
	cmp r1, r0
	bne _020EECAE
	ldr r0, _020EECD0 ; =0x02112784
	bl AOSS_Strlen
	add r2, r0, #0
	ldr r1, _020EECD0 ; =0x02112784
	add r0, r6, #0
	bl AOSS_Memcmp
	cmp r0, #0
	bne _020EECAE
	add r4, r4, #1
_020EECAE:
	ldr r0, [sp]
	add r7, r7, #1
	add r5, #0x54
	add r6, #0x54
	cmp r7, r0
	blt _020EEC84
_020EECBA:
	cmp r4, #1
	ble _020EECC2
	mov r0, #4
	str r0, [sp, #4]
_020EECC2:
	cmp r4, #0
	bne _020EECCA
	mov r0, #5
	str r0, [sp, #4]
_020EECCA:
	ldr r0, [sp, #4]
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
_020EECD0: .word ov17_02112784
	thumb_func_end aoss_checkAP

	thumb_func_start AOSS_set_APInfo
AOSS_set_APInfo: ; 0x020EECD4
	push {r4, lr}
	add r4, r0, #0
	ldr r0, _020EED10 ; =0x02112784
	bl AOSS_Strlen
	str r0, [r4]
	ldr r1, _020EED10 ; =0x02112784
	ldr r2, [r4]
	add r0, r4, #4
	bl AOSS_Memcpy
	mov r0, #1
	str r0, [r4, #0x24]
	ldr r0, _020EED14 ; =0x02112790
	bl AOSS_Strlen
	add r2, r0, #0
	str r0, [r4, #0x28]
	cmp r2, #0xd
	bls _020EED02
	mov r0, #0
	mvn r0, r0
	pop {r4, pc}
_020EED02:
	add r4, #0x2c
	ldr r1, _020EED14 ; =0x02112790
	add r0, r4, #0
	bl AOSS_Memcpy
	mov r0, #0
	pop {r4, pc}
_020EED10: .word ov17_02112784
_020EED14: .word ov17_02112790
	thumb_func_end AOSS_set_APInfo

	thumb_func_start aoss_MakeSendSeqID
aoss_MakeSendSeqID: ; 0x020EED18
	push {r3, r4, r5, r6, r7, lr}
	add r6, r0, #0
	add r5, r1, #0
	add r7, r2, #0
	mov r4, #0
	cmp r6, #0
	ble _020EED46
_020EED26:
	add r0, r5, #0
	add r1, r7, #0
	mov r2, #6
	bl AOSS_Memcpy
	bl AOSS_Rand
	strh r0, [r5, #6]
	ldrh r0, [r5, #6]
	bl AOSS_Htons
	strh r0, [r5, #6]
	add r4, r4, #1
	add r5, #8
	cmp r4, r6
	blt _020EED26
_020EED46:
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end aoss_MakeSendSeqID

	thumb_func_start AOSS_StatusExclusion
AOSS_StatusExclusion: ; 0x020EED48
	push {r3, lr}
	mov r1, #0
	mvn r1, r1
	cmp r0, r1
	bne _020EED5A
	ldr r1, _020EED70 ; =aoss_s_sFd
	str r0, [r1, #4]
	mov r0, #0
	pop {r3, pc}
_020EED5A:
	ldr r1, _020EED70 ; =aoss_s_sFd
	ldr r2, [r1, #4]
	cmp r2, r0
	beq _020EED6A
	str r0, [r1, #4]
	bl AOSSi_Status
	pop {r3, pc}
_020EED6A:
	mov r0, #0
	pop {r3, pc}
	nop
_020EED70: .word aoss_s_sFd
	thumb_func_end AOSS_StatusExclusion

	thumb_func_start aoss_RecvMessage
aoss_RecvMessage: ; 0x020EED74
	push {r3, r4, r5, r6, r7, lr}
	add r6, r1, #0
	add r5, r0, #0
	ldrh r0, [r6, #0xc]
	add r7, r6, #0
	add r4, r2, #0
	str r3, [sp]
	add r7, #0xc
	bl AOSS_Ntohs
	cmp r0, #1
	bhs _020EED96
	ldr r0, [r4]
	add r0, r0, #1
	str r0, [r4]
	add r0, r5, #0
	pop {r3, r4, r5, r6, r7, pc}
_020EED96:
	ldrb r0, [r7, #0xf]
	cmp r0, #0x11
	beq _020EEDA6
	ldr r0, [r4]
	add r0, r0, #1
	str r0, [r4]
	add r0, r5, #0
	pop {r3, r4, r5, r6, r7, pc}
_020EEDA6:
	add r0, r6, #0
	add r0, #0xc
	bl aoss_DecodePacket
	cmp r0, #0
	ble _020EEDBC
	ldr r0, [r4]
	add r0, r0, #1
	str r0, [r4]
	add r0, r5, #0
	pop {r3, r4, r5, r6, r7, pc}
_020EEDBC:
	ldrh r0, [r7, #6]
	bl AOSS_Ntohs
	ldr r1, _020EEE08 ; =0x00001010
	cmp r0, r1
	beq _020EEDD6
	ldr r1, _020EEE0C ; =0x00002010
	cmp r0, r1
	beq _020EEDE6
	ldr r1, _020EEE10 ; =0x00003010
	cmp r0, r1
	beq _020EEDF6
	b _020EEE04
_020EEDD6:
	ldr r3, [sp]
	add r0, r5, #0
	add r1, r6, #0
	add r2, r4, #0
	bl aoss_AstsSetInitRes
	add r5, r0, #0
	b _020EEE04
_020EEDE6:
	ldr r3, [sp]
	add r0, r5, #0
	add r1, r6, #0
	add r2, r4, #0
	bl aoss_AstsSetSecureRes
	add r5, r0, #0
	b _020EEE04
_020EEDF6:
	ldr r3, [sp]
	add r0, r5, #0
	add r1, r6, #0
	add r2, r4, #0
	bl aoss_AstsRestartRes
	add r5, r0, #0
_020EEE04:
	add r0, r5, #0
	pop {r3, r4, r5, r6, r7, pc}
_020EEE08: .word 0x00001010
_020EEE0C: .word 0x00002010
_020EEE10: .word 0x00003010
	thumb_func_end aoss_RecvMessage

	thumb_func_start aoss_AstsSetInitRes
aoss_AstsSetInitRes: ; 0x020EEE14
	push {r3, r4, r5, r6, r7, lr}
	add r6, r0, #0
	add r5, r2, #0
	cmp r6, #0
	beq _020EEE26
	ldr r1, [r5]
	add r1, r1, #1
	str r1, [r5]
	pop {r3, r4, r5, r6, r7, pc}
_020EEE26:
	add r7, r1, #0
	add r7, #0xc
	add r4, r1, #0
	add r1, r7, #0
	add r0, r3, #0
	add r1, #0x10
	add r4, #0x24
	bl aoss_CheckRecvSeqID
	cmp r0, #0
	bge _020EEE46
	ldr r0, [r5]
	add r0, r0, #1
	str r0, [r5]
	add r0, r6, #0
	pop {r3, r4, r5, r6, r7, pc}
_020EEE46:
	ldrh r0, [r4, #2]
	bl AOSS_Ntohs
	cmp r0, #0
	bne _020EEE5A
	ldr r0, [r5]
	add r0, r0, #1
	str r0, [r5]
	add r0, r6, #0
	pop {r3, r4, r5, r6, r7, pc}
_020EEE5A:
	ldrb r0, [r4]
	cmp r0, #7
	bne _020EEE98
	ldr r0, [r4, #4]
	bl AOSS_Ntohl
	mov r1, #1
	mvn r1, r1
	cmp r0, r1
	bne _020EEE76
	mov r0, #0x14
	bl aoss_set_error
	b _020EEE92
_020EEE76:
	ldr r0, [r4, #4]
	bl AOSS_Ntohl
	mov r1, #2
	mvn r1, r1
	cmp r0, r1
	bne _020EEE8C
	mov r0, #0x15
	bl aoss_set_error
	b _020EEE92
_020EEE8C:
	mov r0, #0x18
	bl aoss_set_error
_020EEE92:
	mov r0, #0
	mvn r0, r0
	pop {r3, r4, r5, r6, r7, pc}
_020EEE98:
	cmp r0, #1
	beq _020EEEA6
	ldr r0, [r5]
	add r0, r0, #1
	str r0, [r5]
	add r0, r6, #0
	pop {r3, r4, r5, r6, r7, pc}
_020EEEA6:
	ldr r1, _020EEEE8 ; =aoss_ProductInfo
	add r0, r4, #4
	bl aoss_GetProductInfo
	cmp r0, #0
	bge _020EEED0
	mov r1, #1
	mvn r1, r1
	cmp r0, r1
	bne _020EEEC6
	mov r0, #0x16
	bl aoss_set_error
	mov r0, #0
	mvn r0, r0
	pop {r3, r4, r5, r6, r7, pc}
_020EEEC6:
	ldr r0, [r5]
	add r0, r0, #1
	str r0, [r5]
	add r0, r6, #0
	pop {r3, r4, r5, r6, r7, pc}
_020EEED0:
	ldrh r0, [r7, #0xc]
	bl AOSS_Ntohs
	bl aoss_GetSecurityType
	ldr r1, _020EEEEC ; =aoss_SecurityType
	str r0, [r1]
	mov r0, #0
	str r0, [r5]
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
	nop
_020EEEE8: .word aoss_ProductInfo
_020EEEEC: .word aoss_SecurityType
	thumb_func_end aoss_AstsSetInitRes

	thumb_func_start aoss_AstsSetSecureRes
aoss_AstsSetSecureRes: ; 0x020EEEF0
	push {r3, r4, r5, r6, r7, lr}
	add r6, r0, #0
	add r5, r2, #0
	cmp r6, #1
	beq _020EEF02
	ldr r1, [r5]
	add r1, r1, #1
	str r1, [r5]
	pop {r3, r4, r5, r6, r7, pc}
_020EEF02:
	add r7, r1, #0
	add r7, #0xc
	add r4, r1, #0
	add r3, #8
	add r1, r7, #0
	add r0, r3, #0
	add r1, #0x10
	add r4, #0x24
	bl aoss_CheckRecvSeqID
	cmp r0, #0
	bge _020EEF24
	ldr r0, [r5]
	add r0, r0, #1
	str r0, [r5]
	add r0, r6, #0
	pop {r3, r4, r5, r6, r7, pc}
_020EEF24:
	ldrh r0, [r4, #2]
	bl AOSS_Ntohs
	cmp r0, #0
	bne _020EEF38
	ldr r0, [r5]
	add r0, r0, #1
	str r0, [r5]
	add r0, r6, #0
	pop {r3, r4, r5, r6, r7, pc}
_020EEF38:
	ldrb r0, [r4]
	cmp r0, #7
	bne _020EEF76
	ldr r0, [r4, #4]
	bl AOSS_Ntohl
	mov r1, #1
	mvn r1, r1
	cmp r0, r1
	bne _020EEF54
	mov r0, #0x14
	bl aoss_set_error
	b _020EEF70
_020EEF54:
	ldr r0, [r4, #4]
	bl AOSS_Ntohl
	mov r1, #2
	mvn r1, r1
	cmp r0, r1
	bne _020EEF6A
	mov r0, #0x15
	bl aoss_set_error
	b _020EEF70
_020EEF6A:
	mov r0, #0x18
	bl aoss_set_error
_020EEF70:
	mov r0, #0
	mvn r0, r0
	pop {r3, r4, r5, r6, r7, pc}
_020EEF76:
	mov r2, #0x6a
	ldr r0, _020EEFBC ; =aoss_SecurityInfo
	mov r1, #0
	lsl r2, r2, #4
	bl AOSS_Memset
	ldrh r0, [r7, #0xa]
	bl AOSS_Ntohs
	add r2, r0, #0
	ldr r0, _020EEFC0 ; =aoss_ProductInfo
	ldr r3, _020EEFBC ; =aoss_SecurityInfo
	str r0, [sp]
	mov r0, #0
	add r1, r4, #0
	bl aoss_GetSecurityData
	cmp r0, #0
	bge _020EEFA6
	ldr r0, [r5]
	add r0, r0, #1
	str r0, [r5]
	add r0, r6, #0
	pop {r3, r4, r5, r6, r7, pc}
_020EEFA6:
	ldr r0, _020EEFC4 ; =aoss_SecurityType
	ldr r1, [r0, #0x30]
	ldr r0, [r0, #0x2c]
	tst r0, r1
	bne _020EEFB4
	add r0, r6, #0
	pop {r3, r4, r5, r6, r7, pc}
_020EEFB4:
	mov r0, #0
	str r0, [r5]
	mov r0, #2
	pop {r3, r4, r5, r6, r7, pc}
_020EEFBC: .word aoss_SecurityInfo
_020EEFC0: .word aoss_ProductInfo
_020EEFC4: .word aoss_SecurityType
	thumb_func_end aoss_AstsSetSecureRes

	thumb_func_start aoss_AstsRestartRes
aoss_AstsRestartRes: ; 0x020EEFC8
	push {r4, r5, r6, lr}
	add r6, r0, #0
	add r5, r2, #0
	cmp r6, #2
	beq _020EEFDA
	ldr r1, [r5]
	add r1, r1, #1
	str r1, [r5]
	pop {r4, r5, r6, pc}
_020EEFDA:
	add r4, r1, #0
	add r3, #0x10
	add r1, #0xc
	add r0, r3, #0
	add r1, #0x10
	add r4, #0x24
	bl aoss_CheckRecvSeqID
	cmp r0, #0
	bge _020EEFF8
	ldr r0, [r5]
	add r0, r0, #1
	str r0, [r5]
	add r0, r6, #0
	pop {r4, r5, r6, pc}
_020EEFF8:
	ldrb r0, [r4]
	cmp r0, #7
	beq _020EF008
	ldr r0, [r5]
	add r0, r0, #1
	str r0, [r5]
	add r0, r6, #0
	pop {r4, r5, r6, pc}
_020EF008:
	ldrh r0, [r4, #2]
	bl AOSS_Ntohs
	cmp r0, #0
	bne _020EF01C
	ldr r0, [r5]
	add r0, r0, #1
	str r0, [r5]
	add r0, r6, #0
	pop {r4, r5, r6, pc}
_020EF01C:
	ldr r0, [r4, #4]
	bl AOSS_Ntohl
	cmp r0, #0
	bne _020EF02A
	mov r0, #0x64
	pop {r4, r5, r6, pc}
_020EF02A:
	ldr r0, [r4, #4]
	bl AOSS_Ntohl
	mov r1, #1
	mvn r1, r1
	cmp r0, r1
	bne _020EF044
	mov r0, #0x14
	bl aoss_set_error
	mov r0, #0
	mvn r0, r0
	pop {r4, r5, r6, pc}
_020EF044:
	ldr r0, [r4, #4]
	bl AOSS_Ntohl
	mov r1, #2
	mvn r1, r1
	cmp r0, r1
	bne _020EF05E
	mov r0, #0x15
	bl aoss_set_error
	mov r0, #0
	mvn r0, r0
	pop {r4, r5, r6, pc}
_020EF05E:
	mov r0, #0x18
	bl aoss_set_error
	mov r0, #0
	mvn r0, r0
	pop {r4, r5, r6, pc}
	thumb_func_end aoss_AstsRestartRes

	thumb_func_start aoss_DecodePacket
aoss_DecodePacket: ; 0x020EF06C
	push {r4, r5, r6, r7, lr}
	sub sp, #0x14
	add r5, r0, #0
	add r1, r5, #0
	add r4, r5, #0
	add r0, sp, #0xc
	add r1, #0x10
	mov r2, #8
	add r4, #0x18
	bl AOSS_Memcpy
	ldr r0, _020EF158 ; =0x02112790
	bl AOSS_Strlen
	add r3, r0, #0
	ldr r2, _020EF158 ; =0x02112790
	add r0, sp, #0xc
	mov r1, #8
	bl aoss_CryptSeqNo
	mov r1, #0
	mvn r1, r1
	cmp r0, r1
	bne _020EF0AA
	mov r0, #2
	bl aoss_set_error
	mov r0, #0x63
	add sp, #0x14
	mvn r0, r0
	pop {r4, r5, r6, r7, pc}
_020EF0AA:
	ldrh r0, [r5, #6]
	bl AOSS_Ntohs
	add r1, sp, #0xc
	bl aoss_CheckSeqID
	cmp r0, #0
	bne _020EF152
	ldrh r0, [r5, #6]
	bl AOSS_Ntohs
	mov r1, #1
	lsl r1, r1, #0xc
	cmp r0, r1
	bne _020EF0D2
	ldr r0, _020EF15C ; =aoss_gSeqID
	add r1, sp, #0xc
	mov r2, #8
	bl AOSS_Memcpy
_020EF0D2:
	ldrh r0, [r5, #0xc]
	bl AOSS_Ntohs
	mov r1, #0xf
	tst r0, r1
	bne _020EF0E4
	add sp, #0x14
	mov r0, #0
	pop {r4, r5, r6, r7, pc}
_020EF0E4:
	ldrh r0, [r4]
	bl AOSS_Ntohs
	add r6, r0, #0
	bl AOSS_MALLOC
	add r7, r0, #0
	bne _020EF100
	mov r0, #2
	bl aoss_set_error
	add sp, #0x14
	mov r0, #0x64
	pop {r4, r5, r6, r7, pc}
_020EF100:
	add r0, r4, #2
	str r0, [sp]
	ldr r0, _020EF15C ; =aoss_gSeqID
	add r1, r7, #0
	str r0, [sp, #4]
	mov r0, #8
	str r0, [sp, #8]
	ldrb r3, [r5, #0xe]
	add r0, r4, #4
	add r2, r6, #0
	bl DecodeRC4
	cmp r0, #0
	bge _020EF136
	add r0, r7, #0
	bl AOSS_FREE
	bl aoss_get_error
	cmp r0, #2
	bne _020EF130
	add sp, #0x14
	mov r0, #0x64
	pop {r4, r5, r6, r7, pc}
_020EF130:
	add sp, #0x14
	mov r0, #0xc8
	pop {r4, r5, r6, r7, pc}
_020EF136:
	add r0, r4, #0
	add r1, r7, #0
	add r2, r6, #0
	bl AOSS_Memcpy
	lsl r0, r6, #0x10
	lsr r0, r0, #0x10
	bl AOSS_Htons
	strh r0, [r5, #0xa]
	add r0, r7, #0
	bl AOSS_FREE
	mov r0, #0
_020EF152:
	add sp, #0x14
	pop {r4, r5, r6, r7, pc}
	nop
_020EF158: .word ov17_02112790
_020EF15C: .word aoss_gSeqID
	thumb_func_end aoss_DecodePacket

	thumb_func_start aoss_CheckSeqID
aoss_CheckSeqID: ; 0x020EF160
	push {r4, r5, r6, lr}
	mov r4, #0
	ldr r6, _020EF1A0 ; =aoss_gSeqID
	add r5, r4, #0
	add r3, r4, #0
_020EF16A:
	ldrb r2, [r6]
	cmp r2, #0
	beq _020EF174
	mov r5, #1
	b _020EF17C
_020EF174:
	add r3, r3, #1
	add r6, r6, #1
	cmp r3, #6
	blt _020EF16A
_020EF17C:
	cmp r5, #0
	beq _020EF190
	ldr r0, _020EF1A0 ; =aoss_gSeqID
	mov r2, #6
	bl AOSS_Memcmp
	cmp r0, #0
	beq _020EF19A
	mov r4, #1
	b _020EF19A
_020EF190:
	mov r1, #1
	lsl r1, r1, #0xc
	cmp r0, r1
	beq _020EF19A
	mov r4, #2
_020EF19A:
	add r0, r4, #0
	pop {r4, r5, r6, pc}
	nop
_020EF1A0: .word aoss_gSeqID
	thumb_func_end aoss_CheckSeqID

	thumb_func_start aoss_CheckRecvSeqID
aoss_CheckRecvSeqID: ; 0x020EF1A4
	push {r4, r5, r6, lr}
	add r6, r0, #0
	ldr r0, _020EF1EC ; =0x02112790
	add r5, r1, #0
	mov r4, #0
	bl AOSS_Strlen
	add r3, r0, #0
	ldr r2, _020EF1EC ; =0x02112790
	add r0, r5, #0
	mov r1, #8
	bl aoss_CryptSeqNo
	add r0, r6, #0
	add r1, r5, #0
	mov r2, #6
	bl AOSS_Memcmp
	cmp r0, #0
	beq _020EF1D0
	sub r4, r4, #1
	b _020EF1E6
_020EF1D0:
	ldrh r0, [r6, #6]
	bl AOSS_Ntohs
	add r6, r0, #0
	ldrh r0, [r5, #6]
	bl AOSS_Ntohs
	add r1, r6, #1
	cmp r1, r0
	beq _020EF1E6
	sub r4, r4, #2
_020EF1E6:
	add r0, r4, #0
	pop {r4, r5, r6, pc}
	nop
_020EF1EC: .word ov17_02112790
	thumb_func_end aoss_CheckRecvSeqID

	thumb_func_start aoss_GetProductInfo
aoss_GetProductInfo: ; 0x020EF1F0
	push {r3, r4, r5, r6, r7, lr}
	add r5, r1, #0
	mov r2, #0x41
	add r6, r0, #0
	add r0, r5, #0
	mov r1, #0
	lsl r2, r2, #2
	bl AOSS_Memset
	add r7, r5, #0
	add r4, r6, #0
	add r7, #0x80
_020EF208:
	ldrh r0, [r4, #2]
	bl AOSS_Ntohs
	add r2, r0, #0
	cmp r2, #0
	bgt _020EF21A
	mov r0, #0
	mvn r0, r0
	pop {r3, r4, r5, r6, r7, pc}
_020EF21A:
	ldrb r0, [r4]
	cmp r0, #6
	bhi _020EF290
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_020EF22C: ; jump table
	.short _020EF23A - _020EF22C - 2 ; case 0
	.short _020EF244 - _020EF22C - 2 ; case 1
	.short _020EF24E - _020EF22C - 2 ; case 2
	.short _020EF25C - _020EF22C - 2 ; case 3
	.short _020EF25C - _020EF22C - 2 ; case 4
	.short _020EF26C - _020EF22C - 2 ; case 5
	.short _020EF27E - _020EF22C - 2 ; case 6
_020EF23A:
	add r0, r5, #0
	add r1, r4, #6
	bl AOSS_Memcpy
	b _020EF296
_020EF244:
	add r0, r7, #0
	add r1, r4, #6
	bl AOSS_Memcpy
	b _020EF296
_020EF24E:
	mov r0, #1
	lsl r0, r0, #8
	add r0, r5, r0
	add r1, r4, #6
	bl AOSS_Memcpy
	b _020EF296
_020EF25C:
	ldrb r0, [r4, #6]
	bl AOSS_Ntohs
	cmp r0, #0
	bgt _020EF296
	mov r0, #1
	mvn r0, r0
	pop {r3, r4, r5, r6, r7, pc}
_020EF26C:
	add r0, r4, #6
	add r1, r2, #0
	bl aoss_get_bin
	bl AOSS_Ntohl
	ldr r1, _020EF2A8 ; =aoss_SecurityType
	str r0, [r1, #0x34]
	b _020EF296
_020EF27E:
	add r0, r4, #6
	add r1, r2, #0
	bl aoss_get_bin
	bl AOSS_Ntohl
	ldr r1, _020EF2A8 ; =aoss_SecurityType
	str r0, [r1, #0x38]
	b _020EF296
_020EF290:
	mov r0, #0
	mvn r0, r0
	pop {r3, r4, r5, r6, r7, pc}
_020EF296:
	ldrh r0, [r4, #4]
	cmp r0, #0
	beq _020EF2A4
	bl AOSS_Ntohs
	add r4, r6, r0
	b _020EF208
_020EF2A4:
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
_020EF2A8: .word aoss_SecurityType
	thumb_func_end aoss_GetProductInfo

	thumb_func_start aoss_get_bin
aoss_get_bin: ; 0x020EF2AC
	push {r4, r5}
	mov r3, #0
	sub r2, r1, #1
	add r5, r0, r2
	add r4, r3, #0
	cmp r1, #0
	ble _020EF2C8
_020EF2BA:
	ldrb r0, [r5]
	lsl r2, r3, #8
	add r4, r4, #1
	sub r5, r5, #1
	add r3, r2, r0
	cmp r4, r1
	blt _020EF2BA
_020EF2C8:
	add r0, r3, #0
	pop {r4, r5}
	bx lr
	thumb_func_end aoss_get_bin

	thumb_func_start aoss_GetWEPData
aoss_GetWEPData: ; 0x020EF2D0
	push {r4, r5, r6, r7, lr}
	sub sp, #0x14
	add r6, r1, #0
	add r5, r0, #6
	add r0, r6, #0
	str r0, [sp, #0xc]
	add r0, #8
	str r0, [sp, #0xc]
	add r0, r6, #0
	str r0, [sp, #8]
	add r0, #0xf0
	str r0, [sp, #8]
	add r0, r6, #0
	str r0, [sp, #4]
	add r0, #0xb0
	str r0, [sp, #4]
	add r0, r6, #0
	str r0, [sp]
	add r0, #0x70
	add r7, r6, #0
	str r0, [sp]
	add r7, #0x30
	str r5, [sp, #0x10]
_020EF2FE:
	ldrh r0, [r5, #2]
	bl AOSS_Ntohs
	add r4, r0, #0
	ldrb r0, [r5]
	cmp r0, #0x21
	bgt _020EF336
	bge _020EF354
	cmp r0, #0x15
	bgt _020EF330
	add r1, r0, #0
	sub r1, #0x10
	bmi _020EF36C
	add r1, r1, r1
	add r1, pc
	ldrh r1, [r1, #6]
	lsl r1, r1, #0x10
	asr r1, r1, #0x10
	add pc, r1
_020EF324: ; jump table
	.short _020EF348 - _020EF324 - 2 ; case 0
	.short _020EF348 - _020EF324 - 2 ; case 1
	.short _020EF348 - _020EF324 - 2 ; case 2
	.short _020EF348 - _020EF324 - 2 ; case 3
	.short _020EF36C - _020EF324 - 2 ; case 4
	.short _020EF360 - _020EF324 - 2 ; case 5
_020EF330:
	cmp r0, #0x20
	beq _020EF354
	b _020EF36C
_020EF336:
	cmp r0, #0x23
	bgt _020EF342
	bge _020EF354
	cmp r0, #0x22
	beq _020EF354
	b _020EF36C
_020EF342:
	cmp r0, #0x25
	beq _020EF360
	b _020EF36C
_020EF348:
	cmp r4, #5
	bls _020EF36C
	mov r0, #0
	add sp, #0x14
	mvn r0, r0
	pop {r4, r5, r6, r7, pc}
_020EF354:
	cmp r4, #0xd
	bls _020EF36C
	mov r0, #0
	add sp, #0x14
	mvn r0, r0
	pop {r4, r5, r6, r7, pc}
_020EF360:
	cmp r4, #0x21
	bls _020EF36C
	mov r0, #0
	add sp, #0x14
	mvn r0, r0
	pop {r4, r5, r6, r7, pc}
_020EF36C:
	cmp r0, #0x21
	bgt _020EF39A
	bge _020EF3BA
	cmp r0, #0x15
	bgt _020EF394
	add r1, r0, #0
	sub r1, #0x10
	bmi _020EF404
	add r1, r1, r1
	add r1, pc
	ldrh r1, [r1, #6]
	lsl r1, r1, #0x10
	asr r1, r1, #0x10
	add pc, r1
_020EF388: ; jump table
	.short _020EF3AC - _020EF388 - 2 ; case 0
	.short _020EF3BA - _020EF388 - 2 ; case 1
	.short _020EF3C8 - _020EF388 - 2 ; case 2
	.short _020EF3D6 - _020EF388 - 2 ; case 3
	.short _020EF404 - _020EF388 - 2 ; case 4
	.short _020EF3E4 - _020EF388 - 2 ; case 5
_020EF394:
	cmp r0, #0x20
	beq _020EF3AC
	b _020EF404
_020EF39A:
	cmp r0, #0x23
	bgt _020EF3A6
	bge _020EF3D6
	cmp r0, #0x22
	beq _020EF3C8
	b _020EF404
_020EF3A6:
	cmp r0, #0x25
	beq _020EF3E4
	b _020EF404
_020EF3AC:
	add r0, r7, #0
	add r1, r5, #6
	add r2, r4, #0
	bl AOSS_Memcpy
	str r4, [r6, #4]
	b _020EF40C
_020EF3BA:
	ldr r0, [sp]
	add r1, r5, #6
	add r2, r4, #0
	bl AOSS_Memcpy
	str r4, [r6, #4]
	b _020EF40C
_020EF3C8:
	ldr r0, [sp, #4]
	add r1, r5, #6
	add r2, r4, #0
	bl AOSS_Memcpy
	str r4, [r6, #4]
	b _020EF40C
_020EF3D6:
	ldr r0, [sp, #8]
	add r1, r5, #6
	add r2, r4, #0
	bl AOSS_Memcpy
	str r4, [r6, #4]
	b _020EF40C
_020EF3E4:
	cmp r4, #0
	beq _020EF3F8
	add r0, r5, r4
	ldrb r0, [r0, #5]
	cmp r0, #0
	beq _020EF3F8
	mov r0, #0
	add sp, #0x14
	mvn r0, r0
	pop {r4, r5, r6, r7, pc}
_020EF3F8:
	ldr r0, [sp, #0xc]
	add r1, r5, #6
	add r2, r4, #0
	bl AOSS_Memcpy
	b _020EF40C
_020EF404:
	mov r0, #0
	add sp, #0x14
	mvn r0, r0
	pop {r4, r5, r6, r7, pc}
_020EF40C:
	ldrh r0, [r5, #4]
	cmp r0, #0
	beq _020EF41C
	bl AOSS_Ntohs
	ldr r1, [sp, #0x10]
	add r5, r1, r0
	b _020EF2FE
_020EF41C:
	mov r0, #0
	add sp, #0x14
	pop {r4, r5, r6, r7, pc}
	thumb_func_end aoss_GetWEPData

	thumb_func_start aoss_GetWPAData
aoss_GetWPAData: ; 0x020EF424
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	add r6, r1, #0
	add r4, r0, #6
	add r0, r6, #0
	str r0, [sp]
	add r0, #8
	add r7, r6, #0
	str r0, [sp]
	add r7, #0x30
	str r4, [sp, #4]
_020EF43A:
	ldrh r0, [r4, #2]
	bl AOSS_Ntohs
	add r5, r0, #0
	ldrb r0, [r4]
	cmp r0, #0x35
	bgt _020EF450
	bge _020EF46A
	cmp r0, #0x30
	beq _020EF45E
	b _020EF476
_020EF450:
	cmp r0, #0x40
	bgt _020EF458
	beq _020EF45E
	b _020EF476
_020EF458:
	cmp r0, #0x45
	beq _020EF46A
	b _020EF476
_020EF45E:
	cmp r5, #0x40
	bls _020EF476
	mov r0, #0
	add sp, #8
	mvn r0, r0
	pop {r3, r4, r5, r6, r7, pc}
_020EF46A:
	cmp r5, #0x21
	bls _020EF476
	mov r0, #0
	add sp, #8
	mvn r0, r0
	pop {r3, r4, r5, r6, r7, pc}
_020EF476:
	cmp r0, #0x35
	bgt _020EF482
	bge _020EF49E
	cmp r0, #0x30
	beq _020EF490
	b _020EF4BE
_020EF482:
	cmp r0, #0x40
	bgt _020EF48A
	beq _020EF490
	b _020EF4BE
_020EF48A:
	cmp r0, #0x45
	beq _020EF49E
	b _020EF4BE
_020EF490:
	add r0, r7, #0
	add r1, r4, #6
	add r2, r5, #0
	bl AOSS_Memcpy
	str r5, [r6, #4]
	b _020EF4C6
_020EF49E:
	cmp r5, #0
	beq _020EF4B2
	add r0, r4, r5
	ldrb r0, [r0, #5]
	cmp r0, #0
	beq _020EF4B2
	mov r0, #0
	add sp, #8
	mvn r0, r0
	pop {r3, r4, r5, r6, r7, pc}
_020EF4B2:
	ldr r0, [sp]
	add r1, r4, #6
	add r2, r5, #0
	bl AOSS_Memcpy
	b _020EF4C6
_020EF4BE:
	mov r0, #0
	add sp, #8
	mvn r0, r0
	pop {r3, r4, r5, r6, r7, pc}
_020EF4C6:
	ldrh r0, [r4, #4]
	cmp r0, #0
	beq _020EF4D6
	bl AOSS_Ntohs
	ldr r1, [sp, #4]
	add r4, r1, r0
	b _020EF43A
_020EF4D6:
	mov r0, #0
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end aoss_GetWPAData

	thumb_func_start aoss_GetBssidData
aoss_GetBssidData: ; 0x020EF4DC
	push {r3, r4, r5, lr}
	add r4, r0, #6
	ldrh r0, [r4, #2]
	add r5, r1, #0
	bl AOSS_Ntohs
	add r2, r0, #0
	cmp r2, #0
	bgt _020EF4F4
	mov r0, #0
	mvn r0, r0
	pop {r3, r4, r5, pc}
_020EF4F4:
	ldrb r0, [r4]
	cmp r0, #0x70
	beq _020EF500
	mov r0, #0
	mvn r0, r0
	pop {r3, r4, r5, pc}
_020EF500:
	add r0, r5, #0
	add r1, r4, #6
	bl AOSS_Memcpy
	mov r0, #0
	pop {r3, r4, r5, pc}
	thumb_func_end aoss_GetBssidData

	thumb_func_start aoss_GetSecurityData
aoss_GetSecurityData: ; 0x020EF50C
	push {r4, r5, r6, r7, lr}
	sub sp, #0x14
	add r6, r2, #0
	str r0, [sp]
	add r4, r1, #0
	mov r5, #0
	str r3, [sp, #4]
	cmp r6, #0
	bgt _020EF524
	add sp, #0x14
	sub r0, r5, #2
	pop {r4, r5, r6, r7, pc}
_020EF524:
	ldr r7, _020EF614 ; =aoss_AttrNo
_020EF526:
	ldr r2, [sp]
	ldrb r0, [r4]
	ldrb r2, [r7, r2]
	add r1, r4, #0
	cmp r0, r2
	beq _020EF54A
	ldrh r0, [r4, #2]
	bl AOSS_Ntohs
	add r0, r0, #4
	sub r6, r6, r0
	add r4, r4, r0
	cmp r6, #0
	bgt _020EF526
	mov r0, #3
	add sp, #0x14
	mvn r0, r0
	pop {r4, r5, r6, r7, pc}
_020EF54A:
	ldrh r0, [r1, #2]
	add r4, r4, #4
	bl AOSS_Ntohs
	add r7, r0, #0
	mov r1, #0x35
	ldr r0, [sp]
	lsl r1, r1, #4
	mul r1, r0
	ldr r0, [sp, #4]
	add r6, r0, r1
	ldr r0, [sp, #0x28]
	str r0, [sp, #8]
	ldr r0, [sp]
	add r0, r0, #3
	lsl r0, r0, #7
	str r0, [sp, #0xc]
	add r0, r6, #0
	str r0, [sp, #0x10]
	add r0, #8
	str r0, [sp, #0x10]
_020EF574:
	ldrb r0, [r4]
	cmp r0, #0xa
	bhi _020EF5EE
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_020EF586: ; jump table
	.short _020EF5EE - _020EF586 - 2 ; case 0
	.short _020EF5EE - _020EF586 - 2 ; case 1
	.short _020EF5EE - _020EF586 - 2 ; case 2
	.short _020EF59C - _020EF586 - 2 ; case 3
	.short _020EF5AA - _020EF586 - 2 ; case 4
	.short _020EF5BC - _020EF586 - 2 ; case 5
	.short _020EF5CE - _020EF586 - 2 ; case 6
	.short _020EF5EE - _020EF586 - 2 ; case 7
	.short _020EF5EE - _020EF586 - 2 ; case 8
	.short _020EF5EE - _020EF586 - 2 ; case 9
	.short _020EF5E0 - _020EF586 - 2 ; case 10
_020EF59C:
	ldr r1, [sp, #0x10]
	add r0, r4, #0
	bl aoss_GetWEPData
	mov r1, #1
	orr r5, r1
	b _020EF5F2
_020EF5AA:
	mov r1, #0x4e
	lsl r1, r1, #2
	add r0, r4, #0
	add r1, r6, r1
	bl aoss_GetWEPData
	mov r1, #2
	orr r5, r1
	b _020EF5F2
_020EF5BC:
	mov r1, #0x9a
	lsl r1, r1, #2
	add r0, r4, #0
	add r1, r6, r1
	bl aoss_GetWPAData
	mov r1, #4
	orr r5, r1
	b _020EF5F2
_020EF5CE:
	mov r1, #0xb6
	lsl r1, r1, #2
	add r0, r4, #0
	add r1, r6, r1
	bl aoss_GetWPAData
	mov r1, #8
	orr r5, r1
	b _020EF5F2
_020EF5E0:
	ldr r2, [sp, #8]
	ldr r1, [sp, #0xc]
	add r0, r4, #0
	add r1, r2, r1
	bl aoss_GetBssidData
	b _020EF5F2
_020EF5EE:
	mov r0, #2
	mvn r0, r0
_020EF5F2:
	cmp r0, #0
	bne _020EF610
	ldrh r0, [r4, #2]
	bl AOSS_Ntohs
	add r0, r0, #4
	sub r7, r7, r0
	add r4, r4, r0
	cmp r7, #0
	bgt _020EF574
	ldr r0, _020EF618 ; =aoss_SecurityType
	ldr r1, [r0, #0x30]
	orr r1, r5
	str r1, [r0, #0x30]
	mov r0, #0
_020EF610:
	add sp, #0x14
	pop {r4, r5, r6, r7, pc}
_020EF614: .word aoss_AttrNo
_020EF618: .word aoss_SecurityType
	thumb_func_end aoss_GetSecurityData

	thumb_func_start aoss_GetSecurityType
aoss_GetSecurityType: ; 0x020EF61C
	mov r1, #0x10
	mov r2, #0
	tst r0, r1
	beq _020EF626
	mov r2, #1
_020EF626:
	add r0, r2, #0
	bx lr
	thumb_func_end aoss_GetSecurityType

	thumb_func_start aoss_SendMessage
aoss_SendMessage: ; 0x020EF62C
	push {r4, r5, r6, lr}
	add r5, r1, #0
	add r4, r2, #0
	add r6, r3, #0
	cmp r0, #0
	beq _020EF642
	cmp r0, #1
	beq _020EF654
	cmp r0, #2
	beq _020EF666
	b _020EF678
_020EF642:
	mov r0, #2
	bl AOSS_StatusExclusion
	add r0, r5, #0
	add r1, r4, #0
	add r2, r6, #0
	bl aoss_AstsSetInitReq
	pop {r4, r5, r6, pc}
_020EF654:
	mov r0, #3
	bl AOSS_StatusExclusion
	add r0, r5, #0
	add r1, r4, #0
	add r2, r6, #0
	bl aoss_AstsSetSecureReq
	pop {r4, r5, r6, pc}
_020EF666:
	mov r0, #5
	bl AOSS_StatusExclusion
	add r0, r5, #0
	add r1, r4, #0
	add r2, r6, #0
	bl aoss_AstsRestartReq
	pop {r4, r5, r6, pc}
_020EF678:
	mov r0, #0
	mvn r0, r0
	pop {r4, r5, r6, pc}
	thumb_func_end aoss_SendMessage

	thumb_func_start aoss_AstsSetInitReq
aoss_AstsSetInitReq: ; 0x020EF680
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x20
	add r7, r1, #0
	mov r1, #0
	add r0, sp, #0x10
	strb r1, [r0]
	strh r1, [r0, #4]
	strh r1, [r0, #2]
	ldr r0, _020EF7B4 ; =aoss_SecurityType
	str r2, [sp, #0xc]
	ldr r5, [r0, #0x14]
	ldr r2, _020EF7B8 ; =0x000005DC
	add r0, r5, #0
	bl AOSS_Memset
	mov r0, #0x21
	lsl r0, r0, #4
	bl AOSS_MALLOC
	add r4, r0, #0
	bne _020EF6B8
	mov r0, #2
	bl aoss_set_error
	mov r0, #0
	add sp, #0x20
	mvn r0, r0
	pop {r3, r4, r5, r6, r7, pc}
_020EF6B8:
	mov r2, #0x21
	mov r1, #0
	lsl r2, r2, #4
	bl AOSS_Memset
	add r6, r5, #0
	ldr r0, _020EF7BC ; =aoss_gSeqID
	add r1, r7, #0
	mov r2, #8
	add r6, #0x18
	bl AOSS_Memcpy
	add r0, sp, #0x14
	ldr r1, _020EF7BC ; =aoss_gSeqID
	add r0, #2
	mov r2, #8
	bl AOSS_Memcpy
	add r0, r4, #4
	bl aoss_SetStaData
	add r1, sp, #0x10
	strh r0, [r1, #4]
	mov r0, #4
	ldrsh r0, [r1, r0]
	cmp r0, #0
	bge _020EF706
	mov r0, #3
	bl aoss_set_error
	cmp r4, #0
	beq _020EF6FE
	add r0, r4, #0
	bl AOSS_FREE
_020EF6FE:
	mov r0, #0
	add sp, #0x20
	mvn r0, r0
	pop {r3, r4, r5, r6, r7, pc}
_020EF706:
	mov r0, #0
	strb r0, [r4]
	ldrh r0, [r1, #4]
	bl AOSS_Htons
	strh r0, [r4, #2]
	add r1, sp, #0x10
	mov r0, #4
	ldrsh r0, [r1, r0]
	add r2, r4, #0
	add r3, sp, #0x14
	add r0, r0, #4
	strh r0, [r1, #4]
	add r0, sp, #0x10
	add r0, #2
	str r0, [sp]
	add r0, sp, #0x10
	str r0, [sp, #4]
	mov r0, #0
	add r1, r6, #0
	bl aoss_PacketDataSet
	add r1, sp, #0x10
	mov r0, #2
	ldrsh r2, [r1, r0]
	mov r0, #0x10
	mov r3, #6
	orr r0, r2
	strh r0, [r1, #2]
	add r0, sp, #0x14
	ldr r2, _020EF7C0 ; =0x02112790
	add r0, #2
	mov r1, #8
	bl aoss_CryptSeqNo
	cmp r0, #0
	beq _020EF768
	mov r0, #2
	bl aoss_set_error
	cmp r4, #0
	beq _020EF760
	add r0, r4, #0
	bl AOSS_FREE
_020EF760:
	mov r0, #0
	add sp, #0x20
	mvn r0, r0
	pop {r3, r4, r5, r6, r7, pc}
_020EF768:
	add r3, sp, #0x10
	mov r0, #0
	ldrsb r0, [r3, r0]
	mov r1, #1
	mov r2, #4
	str r0, [sp]
	mov r0, #0x11
	str r0, [sp, #4]
	add r0, sp, #0x14
	add r0, #2
	str r0, [sp, #8]
	mov r6, #2
	ldrsh r2, [r3, r2]
	ldrsh r3, [r3, r6]
	add r0, r5, #0
	lsl r1, r1, #0xc
	bl aoss_SetPacketHeader
	add r2, sp, #0x10
	mov r1, #4
	ldrsh r0, [r2, r1]
	ldr r3, [sp, #0xc]
	add r0, #0x18
	strh r0, [r2, #4]
	ldrsh r1, [r2, r1]
	add r0, r5, #0
	mov r2, #0xff
	bl aoss_SendPacketUDP
	cmp r4, #0
	beq _020EF7AC
	add r0, r4, #0
	bl AOSS_FREE
_020EF7AC:
	mov r0, #0
	add sp, #0x20
	pop {r3, r4, r5, r6, r7, pc}
	nop
_020EF7B4: .word aoss_SecurityType
_020EF7B8: .word 0x000005DC
_020EF7BC: .word aoss_gSeqID
_020EF7C0: .word ov17_02112790
	thumb_func_end aoss_AstsSetInitReq

	thumb_func_start aoss_AstsSetSecureReq
aoss_AstsSetSecureReq: ; 0x020EF7C4
	push {r3, r4, r5, r6, lr}
	sub sp, #0x24
	add r5, r1, #0
	mov r1, #0
	add r0, sp, #0xc
	strb r1, [r0]
	strh r1, [r0, #4]
	strh r1, [r0, #2]
	ldr r0, _020EF894 ; =aoss_SecurityType
	add r6, r2, #0
	ldr r4, [r0, #0x14]
	add r0, sp, #0x14
	mov r2, #8
	bl AOSS_Memset
	ldr r2, _020EF898 ; =0x000005DC
	add r0, r4, #0
	mov r1, #0
	bl AOSS_Memset
	mov r1, #2
	add r0, sp, #0xc
	strb r1, [r0, #8]
	mov r1, #0
	strb r1, [r0, #9]
	mov r0, #4
	bl AOSS_Htons
	add r1, sp, #0xc
	strh r0, [r1, #0xa]
	ldr r0, _020EF894 ; =aoss_SecurityType
	ldr r0, [r0, #0x2c]
	str r0, [sp, #0x18]
	bl AOSS_Htonl
	str r0, [sp, #0x18]
	mov r1, #8
	add r0, sp, #0xc
	strh r1, [r0, #4]
	add r0, sp, #0xc
	add r0, #2
	str r0, [sp]
	add r0, sp, #0xc
	str r0, [sp, #4]
	ldr r0, _020EF894 ; =aoss_SecurityType
	add r1, r4, #0
	ldr r0, [r0]
	add r1, #0x18
	add r2, sp, #0x14
	add r3, sp, #0x10
	bl aoss_PacketDataSet
	add r5, #8
	add r0, sp, #0x1c
	add r1, r5, #0
	mov r2, #8
	bl AOSS_Memcpy
	ldr r2, _020EF89C ; =0x02112790
	add r0, sp, #0x1c
	mov r1, #8
	mov r3, #6
	bl aoss_CryptSeqNo
	cmp r0, #0
	beq _020EF856
	mov r0, #2
	bl aoss_set_error
	mov r0, #0
	add sp, #0x24
	mvn r0, r0
	pop {r3, r4, r5, r6, pc}
_020EF856:
	add r3, sp, #0xc
	mov r0, #0
	ldrsb r0, [r3, r0]
	mov r1, #2
	mov r2, #4
	str r0, [sp]
	mov r0, #0x11
	str r0, [sp, #4]
	add r0, sp, #0x1c
	str r0, [sp, #8]
	mov r5, #2
	ldrsh r2, [r3, r2]
	ldrsh r3, [r3, r5]
	add r0, r4, #0
	lsl r1, r1, #0xc
	bl aoss_SetPacketHeader
	add r2, sp, #0xc
	mov r1, #4
	ldrsh r0, [r2, r1]
	add r3, r6, #0
	add r0, #0x18
	strh r0, [r2, #4]
	ldrsh r1, [r2, r1]
	add r0, r4, #0
	mov r2, #0
	bl aoss_SendPacketUDP
	mov r0, #0
	add sp, #0x24
	pop {r3, r4, r5, r6, pc}
_020EF894: .word aoss_SecurityType
_020EF898: .word 0x000005DC
_020EF89C: .word ov17_02112790
	thumb_func_end aoss_AstsSetSecureReq

	thumb_func_start aoss_AstsRestartReq
aoss_AstsRestartReq: ; 0x020EF8A0
	push {r3, r4, r5, r6, lr}
	sub sp, #0x14
	ldr r0, _020EF900 ; =aoss_SecurityType
	add r6, r2, #0
	ldr r4, [r0, #0x14]
	ldr r2, _020EF904 ; =0x000005DC
	add r5, r1, #0
	add r0, r4, #0
	mov r1, #0
	bl AOSS_Memset
	add r5, #0x10
	add r0, sp, #0xc
	add r1, r5, #0
	mov r2, #8
	bl AOSS_Memcpy
	ldr r0, _020EF908 ; =0x02112790
	bl AOSS_Strlen
	add r3, r0, #0
	ldr r2, _020EF908 ; =0x02112790
	add r0, sp, #0xc
	mov r1, #8
	bl aoss_CryptSeqNo
	mov r2, #0
	mov r1, #3
	str r2, [sp]
	mov r0, #0x11
	str r0, [sp, #4]
	add r0, sp, #0xc
	str r0, [sp, #8]
	add r0, r4, #0
	lsl r1, r1, #0xc
	add r3, r2, #0
	bl aoss_SetPacketHeader
	add r0, r4, #0
	mov r1, #0x18
	mov r2, #0
	add r3, r6, #0
	bl aoss_SendPacketUDP
	mov r0, #0
	add sp, #0x14
	pop {r3, r4, r5, r6, pc}
	nop
_020EF900: .word aoss_SecurityType
_020EF904: .word 0x000005DC
_020EF908: .word ov17_02112790
	thumb_func_end aoss_AstsRestartReq

	thumb_func_start aoss_SetStaData
aoss_SetStaData: ; 0x020EF90C
	push {r3, r4, r5, r6, r7, lr}
	ldr r1, _020EF990 ; =0x02113CC0
	add r5, r0, #0
	mov r0, #0x1d
	ldrsb r0, [r1, r0]
	ldr r1, _020EF994 ; =aoss_SecurityType
	mov r6, #0
	strb r0, [r5]
	mov r0, #1
	strb r0, [r5, #1]
	ldr r0, [r1, #0x28]
	ldr r1, [r1, #0x24]
	lsl r0, r0, #0x10
	asr r4, r0, #0x10
	add r0, r5, #6
	add r2, r4, #0
	bl AOSS_Memcpy
	lsl r0, r4, #0x10
	lsr r0, r0, #0x10
	bl AOSS_Htons
	strh r0, [r5, #2]
	add r0, r4, #6
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add r1, r0, #1
	lsr r0, r1, #0x1f
	add r0, r1, r0
	asr r0, r0, #1
	lsl r0, r0, #0x11
	asr r7, r0, #0x10
	lsl r0, r7, #0x10
	lsr r0, r0, #0x10
	bl AOSS_Htons
	strh r0, [r5, #4]
	add r0, r6, r7
	lsl r0, r0, #0x10
	asr r6, r0, #0x10
	mov r0, #0x60
	strb r0, [r5, r7]
	add r4, r5, r7
	mov r0, #0
	strb r0, [r4, #1]
	bl AOSS_Htons
	strh r0, [r4, #4]
	mov r0, #0xe
	bl AOSS_Htonl
	str r0, [sp]
	add r0, r4, #6
	add r1, sp, #0
	mov r2, #4
	bl AOSS_Memcpy
	mov r0, #4
	bl AOSS_Htons
	add r6, #0xa
	strh r0, [r4, #2]
	lsl r0, r6, #0x10
	asr r0, r0, #0x10
	pop {r3, r4, r5, r6, r7, pc}
	nop
_020EF990: .word ov17_02113CC0
_020EF994: .word aoss_SecurityType
	thumb_func_end aoss_SetStaData

	thumb_func_start aoss_PacketDataSet
aoss_PacketDataSet: ; 0x020EF998
	push {r4, r5, lr}
	sub sp, #0xc
	add r5, r1, #0
	add r4, r3, #0
	cmp r0, #1
	bne _020EF9D8
	ldr r0, [sp, #0x18]
	mov r1, #1
	strh r1, [r0]
	add r0, r5, #2
	str r0, [sp]
	ldr r0, _020EF9E8 ; =aoss_gSeqID
	ldr r3, [sp, #0x1c]
	str r0, [sp, #4]
	mov r0, #8
	str r0, [sp, #8]
	add r0, r2, #0
	mov r2, #0
	ldrsh r2, [r4, r2]
	add r1, r5, #4
	bl EncodeRC4
	ldrh r0, [r4]
	bl AOSS_Htons
	strh r0, [r5]
	mov r0, #0
	ldrsh r0, [r4, r0]
	add sp, #0xc
	add r0, r0, #4
	strh r0, [r4]
	pop {r4, r5, pc}
_020EF9D8:
	add r1, r2, #0
	mov r2, #0
	ldrsh r2, [r4, r2]
	add r0, r5, #0
	bl AOSS_Memcpy
	add sp, #0xc
	pop {r4, r5, pc}
_020EF9E8: .word aoss_gSeqID
	thumb_func_end aoss_PacketDataSet

	thumb_func_start aoss_SetPacketHeader
aoss_SetPacketHeader: ; 0x020EF9EC
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	mov r0, #1
	add r4, r1, #0
	add r6, r2, #0
	add r7, r3, #0
	bl AOSS_Htons
	strh r0, [r5]
	mov r0, #0
	strh r0, [r5, #2]
	strh r0, [r5, #4]
	lsl r0, r4, #0x10
	lsr r0, r0, #0x10
	bl AOSS_Htons
	strh r0, [r5, #6]
	mov r0, #0
	strh r0, [r5, #8]
	lsl r0, r6, #0x10
	lsr r0, r0, #0x10
	bl AOSS_Htons
	strh r0, [r5, #0xa]
	lsl r0, r7, #0x10
	lsr r0, r0, #0x10
	bl AOSS_Htons
	strh r0, [r5, #0xc]
	add r1, sp, #8
	mov r0, #0x10
	ldrsb r0, [r1, r0]
	mov r2, #8
	strb r0, [r5, #0xe]
	mov r0, #0x14
	ldrsb r0, [r1, r0]
	ldr r1, [sp, #0x20]
	strb r0, [r5, #0xf]
	add r5, #0x10
	add r0, r5, #0
	bl AOSS_Memcpy
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end aoss_SetPacketHeader

	thumb_func_start aoss_SendPacketUDP
aoss_SendPacketUDP: ; 0x020EFA44
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x10
	add r5, r0, #0
	add r6, r1, #0
	add r4, r2, #0
	add r0, sp, #8
	mov r1, #0
	mov r2, #8
	add r7, r3, #0
	bl AOSS_Memset
	mov r1, #2
	add r0, sp, #8
	strb r1, [r0, #1]
	ldr r0, _020EFAA0 ; =0x00005790
	bl AOSS_Htons
	add r1, sp, #8
	strh r0, [r1, #2]
	ldr r0, _020EFAA4 ; =aoss_SecurityType
	ldr r0, [r0, #0x34]
	bl AOSS_Htonl
	str r0, [sp, #0xc]
	cmp r4, #0xff
	beq _020EFA82
	ldr r1, _020EFAA8 ; =0x02113CC0
	mov r0, #0x1c
	ldrsb r0, [r1, r0]
	cmp r0, #0
	bne _020EFA88
_020EFA82:
	mov r0, #0
	mvn r0, r0
	str r0, [sp, #0xc]
_020EFA88:
	add r0, sp, #8
	str r0, [sp]
	mov r0, #8
	str r0, [sp, #4]
	add r0, r7, #0
	add r1, r5, #0
	add r2, r6, #0
	mov r3, #0
	bl FUN_ov17_020eff64
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
_020EFAA0: .word 0x00005790
_020EFAA4: .word aoss_SecurityType
_020EFAA8: .word ov17_02113CC0
	thumb_func_end aoss_SendPacketUDP

	thumb_func_start EncodeRC4
EncodeRC4: ; 0x020EFAAC
	push {r4, r5, r6, r7, lr}
	sub sp, #0x14
	add r5, r2, #0
	add r7, r1, #0
	add r4, r3, #0
	add r1, r5, #0
	add r6, r0, #0
	bl FUN_ov17_020efc80
	strb r0, [r4]
	add r0, r5, #0
	bl AOSS_MALLOC
	str r0, [sp, #0xc]
	cmp r0, #0
	bne _020EFAD4
	mov r0, #0
	add sp, #0x14
	mvn r0, r0
	pop {r4, r5, r6, r7, pc}
_020EFAD4:
	bl AOSS_Rand
	add r1, sp, #0
	strh r0, [r1]
	ldr r0, [sp, #0x28]
	add r1, sp, #0
	mov r2, #2
	bl AOSS_Memcpy
	ldr r0, _020EFB20 ; =0x02114A08
	ldr r1, [sp, #0x28]
	mov r2, #2
	bl AOSS_Memcpy
	ldr r0, _020EFB24 ; =0x02114A0A
	ldr r1, [sp, #0x2c]
	ldr r2, [sp, #0x30]
	bl AOSS_Memcpy
	ldr r2, [sp, #0x30]
	ldr r1, _020EFB20 ; =0x02114A08
	add r0, sp, #4
	add r2, r2, #2
	add r3, r5, #0
	bl FUN_ov17_020efbb0
	add r0, sp, #4
	add r1, r7, #0
	add r2, r6, #0
	add r3, r5, #0
	bl FUN_ov17_020efc14
	ldr r0, [sp, #0xc]
	bl AOSS_FREE
	mov r0, #0
	add sp, #0x14
	pop {r4, r5, r6, r7, pc}
_020EFB20: .word ov17_02114A08
_020EFB24: .word ov17_02114A0A
	thumb_func_end EncodeRC4

	thumb_func_start DecodeRC4
DecodeRC4: ; 0x020EFB28
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x10
	add r4, r2, #0
	add r7, r0, #0
	add r0, r4, #0
	add r5, r1, #0
	add r6, r3, #0
	bl AOSS_MALLOC
	str r0, [sp, #8]
	cmp r0, #0
	bne _020EFB4E
	mov r0, #2
	bl aoss_set_error
	mov r0, #0
	add sp, #0x10
	mvn r0, r0
	pop {r3, r4, r5, r6, r7, pc}
_020EFB4E:
	ldr r0, _020EFBA8 ; =0x02114A08
	ldr r1, [sp, #0x28]
	mov r2, #2
	bl AOSS_Memcpy
	ldr r0, _020EFBAC ; =0x02114A0A
	ldr r1, [sp, #0x2c]
	ldr r2, [sp, #0x30]
	bl AOSS_Memcpy
	ldr r2, [sp, #0x30]
	ldr r1, _020EFBA8 ; =0x02114A08
	add r0, sp, #0
	add r2, r2, #2
	add r3, r4, #0
	bl FUN_ov17_020efbb0
	add r0, sp, #0
	add r1, r5, #0
	add r2, r7, #0
	add r3, r4, #0
	bl FUN_ov17_020efc14
	add r0, r5, #0
	add r1, r4, #0
	bl FUN_ov17_020efc80
	cmp r0, r6
	beq _020EFB9C
	mov r0, #0x12
	bl aoss_set_error
	ldr r0, [sp, #8]
	bl AOSS_FREE
	mov r0, #0
	add sp, #0x10
	mvn r0, r0
	pop {r3, r4, r5, r6, r7, pc}
_020EFB9C:
	ldr r0, [sp, #8]
	bl AOSS_FREE
	mov r0, #0
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
_020EFBA8: .word ov17_02114A08
_020EFBAC: .word ov17_02114A0A
	thumb_func_end DecodeRC4

	thumb_func_start FUN_ov17_020efbb0
FUN_ov17_020efbb0: ; 0x020EFBB0
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x10
	str r0, [sp]
	str r1, [sp, #4]
	ldr r4, [r0, #8]
	ldr r1, [sp]
	mov r0, #0
	str r0, [r1, #4]
	str r2, [sp, #8]
	str r0, [r1]
	add r2, r3, #0
	str r2, [r1, #0xc]
	str r3, [sp, #0xc]
	add r1, r3, #0
	beq _020EFBD8
_020EFBCE:
	ldr r1, [sp, #0xc]
	strb r0, [r4, r0]
	add r0, r0, #1
	cmp r0, r1
	blo _020EFBCE
_020EFBD8:
	ldr r0, [sp, #0xc]
	mov r1, #0
	add r6, r1, #0
	add r5, r1, #0
	cmp r0, #0
	bls _020EFC0E
_020EFBE4:
	ldr r0, [sp, #4]
	ldrb r7, [r4, r5]
	ldrb r0, [r0, r6]
	add r0, r1, r0
	ldr r1, [sp]
	add r0, r7, r0
	ldr r1, [r1, #0xc]
	blx _u32_div_f
	ldrb r0, [r4, r1]
	add r6, r6, #1
	strb r7, [r4, r1]
	strb r0, [r4, r5]
	ldr r0, [sp, #8]
	cmp r6, r0
	blo _020EFC06
	mov r6, #0
_020EFC06:
	ldr r0, [sp, #0xc]
	add r5, r5, #1
	cmp r5, r0
	blo _020EFBE4
_020EFC0E:
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end FUN_ov17_020efbb0

	thumb_func_start FUN_ov17_020efc14
FUN_ov17_020efc14: ; 0x020EFC14
	push {r3, r4, r5, r6, r7, lr}
	str r0, [sp]
	add r5, r1, #0
	add r6, r2, #0
	add r7, r3, #0
	ldr r4, _020EFC3C ; =0x00000000
	beq _020EFC38
_020EFC22:
	ldr r0, [sp]
	bl FUN_ov17_020efc40
	lsl r0, r0, #0x18
	lsr r1, r0, #0x18
	ldrb r0, [r6, r4]
	eor r0, r1
	strb r0, [r5, r4]
	add r4, r4, #1
	cmp r4, r7
	blo _020EFC22
_020EFC38:
	pop {r3, r4, r5, r6, r7, pc}
	nop
_020EFC3C: .word 0x00000000
	thumb_func_end FUN_ov17_020efc14

	thumb_func_start FUN_ov17_020efc40
FUN_ov17_020efc40: ; 0x020EFC40
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	ldr r0, [r5, #0xc]
	ldr r4, [r5, #8]
	str r0, [sp]
	ldr r0, [r5]
	ldr r1, [sp]
	add r0, r0, #1
	blx _u32_div_f
	lsl r0, r1, #0x18
	lsr r7, r0, #0x18
	ldrb r6, [r4, r7]
	ldr r0, [r5, #4]
	ldr r1, [sp]
	add r0, r6, r0
	blx _u32_div_f
	lsl r0, r1, #0x18
	lsr r1, r0, #0x18
	ldrb r0, [r4, r1]
	str r7, [r5]
	str r1, [r5, #4]
	strb r6, [r4, r1]
	strb r0, [r4, r7]
	ldr r1, [r5, #0xc]
	add r0, r6, r0
	blx _u32_div_f
	ldrb r0, [r4, r1]
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end FUN_ov17_020efc40

	thumb_func_start FUN_ov17_020efc80
FUN_ov17_020efc80: ; 0x020EFC80
	push {r3, lr}
	add r3, r0, #0
	ldr r0, _020EFCA4 ; =0x02113F60
	add r2, r1, #0
	str r0, [sp]
	mov r0, #0
	add r1, r3, #0
	mvn r0, r0
	mov r3, #0
	bl FUN_ov17_020efca8
	mov r1, #0
	mvn r1, r1
	eor r0, r1
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	pop {r3, pc}
	nop
_020EFCA4: .word ov17_02113F60
	thumb_func_end FUN_ov17_020efc80

	thumb_func_start FUN_ov17_020efca8
FUN_ov17_020efca8: ; 0x020EFCA8
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	add r7, r1, #0
	add r4, r2, #0
	ldr r6, [sp, #0x18]
	cmp r3, #0
	bne _020EFCBE
	add r0, r3, #0
	add r1, r6, #0
	bl FUN_ov17_020efce0
_020EFCBE:
	mov r1, #0
	cmp r4, #0
	ble _020EFCDA
_020EFCC4:
	ldrb r2, [r7, r1]
	lsr r0, r5, #8
	add r1, r1, #1
	eor r2, r5
	lsl r2, r2, #0x18
	lsr r2, r2, #0x16
	ldr r2, [r6, r2]
	add r5, r0, #0
	eor r5, r2
	cmp r1, r4
	blt _020EFCC4
_020EFCDA:
	add r0, r5, #0
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end FUN_ov17_020efca8

	thumb_func_start FUN_ov17_020efce0
FUN_ov17_020efce0: ; 0x020EFCE0
	push {r4, r5, r6, r7}
	mov r5, #1
	add r3, r5, #0
	ldr r4, _020EFD14 ; =0xEDB88320
	mov r0, #0
	add r3, #0xff
_020EFCEC:
	add r7, r0, #0
	mov r2, #0
_020EFCF0:
	add r6, r7, #0
	tst r6, r5
	beq _020EFCFE
	lsr r6, r7, #1
	add r7, r6, #0
	eor r7, r4
	b _020EFD00
_020EFCFE:
	lsr r7, r7, #1
_020EFD00:
	add r2, r2, #1
	cmp r2, #8
	blt _020EFCF0
	add r0, r0, #1
	stmia r1!, {r7}
	cmp r0, r3
	blt _020EFCEC
	pop {r4, r5, r6, r7}
	bx lr
	nop
_020EFD14: .word 0xEDB88320
	thumb_func_end FUN_ov17_020efce0

	thumb_func_start aoss_CryptSeqNo
aoss_CryptSeqNo: ; 0x020EFD18
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x10
	add r5, r1, #0
	add r7, r0, #0
	lsr r0, r5, #0x1f
	add r0, r5, r0
	asr r0, r0, #1
	str r2, [sp, #4]
	str r3, [sp, #8]
	bl AOSS_MALLOC
	add r6, r0, #0
	bne _020EFD3A
	mov r0, #0
	add sp, #0x10
	mvn r0, r0
	pop {r3, r4, r5, r6, r7, pc}
_020EFD3A:
	add r0, r5, #0
	bl AOSS_MALLOC
	str r0, [sp, #0xc]
	cmp r0, #0
	bne _020EFD54
	add r0, r6, #0
	bl AOSS_FREE
	mov r0, #0
	add sp, #0x10
	mvn r0, r0
	pop {r3, r4, r5, r6, r7, pc}
_020EFD54:
	mov r4, #0
_020EFD56:
	ldr r0, [sp, #8]
	ldr r3, [sp, #4]
	str r0, [sp]
	add r0, r4, #0
	add r1, r6, #0
	add r2, r5, #0
	bl FUN_ov17_020efd94
	add r0, r6, #0
	add r1, r7, #0
	add r2, r5, #0
	bl FUN_ov17_020efdc8
	ldr r2, [sp, #0xc]
	add r0, r7, #0
	add r1, r5, #0
	bl FUN_ov17_020efdec
	add r4, r4, #1
	cmp r4, #2
	blt _020EFD56
	add r0, r6, #0
	bl AOSS_FREE
	ldr r0, [sp, #0xc]
	bl AOSS_FREE
	mov r0, #0
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end aoss_CryptSeqNo

	thumb_func_start FUN_ov17_020efd94
FUN_ov17_020efd94: ; 0x020EFD94
	push {r3, r4, r5, r6, r7, lr}
	add r5, r1, #0
	lsr r1, r2, #0x1f
	add r1, r2, r1
	ldr r6, [sp, #0x18]
	asr r4, r1, #1
	add r1, r6, #0
	add r7, r3, #0
	blx _s32_div_f
	mov r0, #0
	cmp r4, #0
	ble _020EFDC6
_020EFDAE:
	strb r0, [r5, r0]
	ldrsb r2, [r7, r1]
	ldrsb r3, [r5, r0]
	add r1, r1, #1
	eor r2, r3
	strb r2, [r5, r0]
	cmp r1, r6
	blt _020EFDC0
	mov r1, #0
_020EFDC0:
	add r0, r0, #1
	cmp r0, r4
	blt _020EFDAE
_020EFDC6:
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end FUN_ov17_020efd94

	thumb_func_start FUN_ov17_020efdc8
FUN_ov17_020efdc8: ; 0x020EFDC8
	push {r4, r5}
	lsr r3, r2, #0x1f
	add r3, r2, r3
	asr r4, r3, #1
	mov r3, #0
	cmp r4, #0
	ble _020EFDE8
	add r5, r1, r4
_020EFDD8:
	ldrsb r1, [r0, r3]
	ldrb r2, [r5]
	add r3, r3, #1
	eor r1, r2
	strb r1, [r5]
	add r5, r5, #1
	cmp r3, r4
	blt _020EFDD8
_020EFDE8:
	pop {r4, r5}
	bx lr
	thumb_func_end FUN_ov17_020efdc8

	thumb_func_start FUN_ov17_020efdec
FUN_ov17_020efdec: ; 0x020EFDEC
	push {r3, r4, r5, r6, r7, lr}
	add r6, r1, #0
	add r5, r0, #0
	lsr r0, r6, #0x1f
	add r0, r6, r0
	asr r7, r0, #1
	add r4, r2, #0
	add r0, r4, #0
	add r1, r5, r7
	add r2, r7, #0
	bl AOSS_Memcpy
	add r0, r4, r7
	add r1, r5, #0
	add r2, r7, #0
	bl AOSS_Memcpy
	add r0, r5, #0
	add r1, r4, #0
	add r2, r6, #0
	bl AOSS_Memcpy
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end FUN_ov17_020efdec

	thumb_func_start FUN_ov17_020efe1c
FUN_ov17_020efe1c:
	push {r3, lr}
	cmp r1, #0x0
	ble _020EFE2C
	add r0, r1, #0x0
	ldr r1, _020EFE30 ; =AOSSi_Alloc
	ldr r1, [r1, #0x0]
	blx r1
	pop {r3, pc}
_020EFE2C:
	mov r0,#0x0
	pop {r3, pc}
_020EFE30: .word AOSSi_Alloc
	thumb_func_end FUN_ov17_020efe1c

	thumb_func_start FUN_ov17_020efe34
FUN_ov17_020efe34:
	push {r3, lr}
	add r0, r1, #0x0
	ldr r1, _020EFE40 ; =AOSSi_Free
	ldr r1, [r1, #0x0]
	blx r1
	pop {r3, pc}
_020EFE40: .word AOSSi_Free
	thumb_func_end FUN_ov17_020efe34

	thumb_func_start FUN_ov17_020efe44
FUN_ov17_020efe44: ; 0x020EFE44
	push {r3, r4, r5, lr}
	add r5, r1, #0
	add r4, r2, #0
	bl AOSS_Htonl
	ldr r1, _020EFE90 ; =aoss_s_sFd
	str r0, [r1, #0x18]
	add r0, r5, #0
	bl AOSS_Htonl
	ldr r1, _020EFE90 ; =aoss_s_sFd
	str r0, [r1, #0x1c]
	add r0, r4, #0
	bl AOSS_Htonl
	ldr r1, _020EFE90 ; =aoss_s_sFd
	str r0, [r1, #0x20]
	ldr r0, _020EFE94 ; =0x0211272C
	blx  SOC_Startup
	cmp r0, #0
	bge _020EFE76
	mov r0, #0
	mvn r0, r0
	pop {r3, r4, r5, pc}
_020EFE76:
	ldr r5, _020EFE98 ; =0x020E6D90
	ldr r0, [r5]
	cmp r0, #0
	bne _020EFE8C
	mov r4, #0x64
_020EFE80:
	add r0, r4, #0
	blx OS_Sleep
	ldr r0, [r5]
	cmp r0, #0
	beq _020EFE80
_020EFE8C:
	mov r0, #0
	pop {r3, r4, r5, pc}
_020EFE90: .word aoss_s_sFd
_020EFE94: .word ov17_0211272C
_020EFE98: .word 0x020E6D90
	thumb_func_end FUN_ov17_020efe44

	thumb_func_start FUN_ov17_020efe9c
FUN_ov17_020efe9c: ; 0x020EFE9C
	push {r3, lr}
	blx  SOC_Cleanup
	cmp r0, #0
	bge _020EFEAC
	mov r0, #0
	mvn r0, r0
	pop {r3, pc}
_020EFEAC:
	bl FUN_ov17_020f02f0
	cmp r0, #0
	beq _020EFEB8
	mov r0, #1
	b _020EFEBA
_020EFEB8:
	mov r0, #0
_020EFEBA:
	neg r0, r0
	pop {r3, pc}
	thumb_func_end FUN_ov17_020efe9c

	thumb_func_start AOSS_Memcmp
AOSS_Memcmp: ; 0x020EFEC0
	push {r3, r4}
	mov r3, #0
	b _020EFECA
_020EFEC6:
	add r0, r0, #1
	add r1, r1, #1
_020EFECA:
	add r4, r2, #0
	sub r2, r2, #1
	cmp r4, #0
	ble _020EFEDA
	ldrb r4, [r0]
	ldrb r3, [r1]
	sub r3, r4, r3
	beq _020EFEC6
_020EFEDA:
	add r0, r3, #0
	pop {r3, r4}
	bx lr
	thumb_func_end AOSS_Memcmp

	thumb_func_start AOSS_Memcpy
AOSS_Memcpy: ; 0x020EFEE0
	add r3, r0, #0
	add r0, r1, #0
	add r1, r3, #0
	ldr r3, _020EFEEC ; =MI_CpuCopy8
	bx r3
	nop
_020EFEEC: .word MI_CpuCopy8
	thumb_func_end AOSS_Memcpy

	thumb_func_start AOSS_Memset
AOSS_Memset: ; 0x020EFEF0
	ldr r3, _020EFEF8 ; =MI_CpuFill8
	lsl r1, r1, #0x18
	lsr r1, r1, #0x18
	bx r3
_020EFEF8: .word MI_CpuFill8
	thumb_func_end AOSS_Memset

	thumb_func_start FUN_ov17_020efefc
FUN_ov17_020efefc: ; 0x020EFEFC
	push {r3, r4, r5, lr}
	ldr r4, [sp, #0x14]
	ldr r5, [r4]
	ldr r4, [sp, #0x10]
	strb r5, [r4]
	str r4, [sp]
	blx  SOC_RecvFrom
	pop {r3, r4, r5, pc}
	thumb_func_end FUN_ov17_020efefc

	thumb_func_start FUN_ov17_020eff10
FUN_ov17_020eff10: ; 0x020EFF10
	push {r4, r5, r6, lr}
	sub sp, #8
	ldr r2, [r1]
	ldr r0, [r1, #4]
	ldr r5, [sp, #0x18]
	str r2, [sp]
	str r0, [sp, #4]
	ldr r0, [r5]
	mov r4, #0
	ldr r2, _020EFF60 ; =0x01FF6210
	asr r1, r0, #0x1f
	add r3, r4, #0
	blx __llmul
	lsr r3, r0, #6
	lsl r2, r1, #0x1a
	orr r3, r2
	lsr r0, r1, #6
	add r6, r4, r3
	adc r4, r0
	ldr r0, [r5, #4]
	ldr r2, _020EFF60 ; =0x01FF6210
	asr r1, r0, #0x1f
	mov r3, #0
	blx __llmul
	lsr r3, r0, #6
	lsl r2, r1, #0x1a
	orr r3, r2
	lsr r0, r1, #6
	add r2, r6, r3
	adc r4, r0
	add r0, sp, #0
	mov r1, #1
	add r3, r4, #0
	blx  SOC_Poll
	add sp, #8
	pop {r4, r5, r6, pc}
	nop
_020EFF60: .word 0x01FF6210
	thumb_func_end FUN_ov17_020eff10

	thumb_func_start FUN_ov17_020eff64
FUN_ov17_020eff64: ; 0x020EFF64
	push {r3, r4, r5, lr}
	ldr r5, [sp, #0x14]
	ldr r4, [sp, #0x10]
	strb r5, [r4]
	str r4, [sp]
	blx  SOC_SendTo
	pop {r3, r4, r5, pc}
	thumb_func_end FUN_ov17_020eff64

	thumb_func_start FUN_ov17_020eff74
FUN_ov17_020eff74: ; 0x020EFF74
	bx lr
	thumb_func_end FUN_ov17_020eff74

	thumb_func_start FUN_020eff78
FUN_020eff78: ; 0x020EFF78
	ldr r3, _020EFF7C ; = SOC_Socket
	bx r3
_020EFF7C: .word  SOC_Socket
	thumb_func_end FUN_020eff78

	thumb_func_start FUN_ov17_020eff80
FUN_ov17_020eff80: ; 0x020EFF80
	ldr r3, _020EFF88 ; = SOC_Bind
	strb r2, [r1]
	bx r3
	nop
_020EFF88: .word  SOC_Bind
	thumb_func_end FUN_ov17_020eff80

	thumb_func_start AOSS_Close
AOSS_Close: ; 0x020EFF8C
	ldr r3, _020EFF90 ; = SOC_Close
	bx r3
_020EFF90: .word  SOC_Close
	thumb_func_end AOSS_Close

	thumb_func_start AOSS_Htonl
AOSS_Htonl: ; 0x020EFF94
	push {r4, r5}
	mov r3, #0xff
	lsl r1, r0, #0x18
	lsl r3, r3, #0x18
	add r2, r1, #0
	lsl r4, r0, #8
	lsr r1, r3, #8
	and r1, r4
	lsr r4, r0, #0x18
	lsl r4, r4, #0x18
	lsr r5, r4, #0x18
	lsr r4, r0, #8
	lsr r0, r3, #0x10
	and r0, r4
	orr r0, r5
	and r2, r3
	orr r0, r1
	orr r0, r2
	pop {r4, r5}
	bx lr
	thumb_func_end AOSS_Htonl

	thumb_func_start AOSS_Htons
AOSS_Htons: ; 0x020EFFBC
	asr r1, r0, #8
	lsl r1, r1, #0x18
	lsr r2, r1, #0x18
	lsl r1, r0, #8
	mov r0, #0xff
	lsl r0, r0, #8
	and r0, r1
	orr r0, r2
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	bx lr
	thumb_func_end AOSS_Htons

	thumb_func_start AOSS_Ntohl
AOSS_Ntohl: ; 0x020EFFD4
	push {r4, r5}
	mov r3, #0xff
	lsl r1, r0, #0x18
	lsl r3, r3, #0x18
	add r2, r1, #0
	lsl r4, r0, #8
	lsr r1, r3, #8
	and r1, r4
	lsr r4, r0, #0x18
	lsl r4, r4, #0x18
	lsr r5, r4, #0x18
	lsr r4, r0, #8
	lsr r0, r3, #0x10
	and r0, r4
	orr r0, r5
	and r2, r3
	orr r0, r1
	orr r0, r2
	pop {r4, r5}
	bx lr
	thumb_func_end AOSS_Ntohl

	thumb_func_start AOSS_Ntohs
AOSS_Ntohs: ; 0x020EFFFC
	asr r1, r0, #8
	lsl r1, r1, #0x18
	lsr r2, r1, #0x18
	lsl r1, r0, #8
	mov r0, #0xff
	lsl r0, r0, #8
	and r0, r1
	orr r0, r2
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	bx lr
	thumb_func_end AOSS_Ntohs

	thumb_func_start AOSS_Strlen
AOSS_Strlen: ; 0x020F0014
	mov r2, #0
	ldrsb r1, [r0, r2]
	cmp r1, #0
	beq _020F0024
_020F001C:
	add r2, r2, #1
	ldrsb r1, [r0, r2]
	cmp r1, #0
	bne _020F001C
_020F0024:
	add r0, r2, #0
	bx lr
	thumb_func_end AOSS_Strlen

	thumb_func_start AOSS_Rand
AOSS_Rand: ; 0x020F0028
	push {r3, r4, lr}
	sub sp, #0xc
	ldr r0, _020F0088 ; =aoss_SecurityType
	ldr r0, [r0, #8]
	cmp r0, #0
	bne _020F006A
	mov r4, #0
	add r0, sp, #0
	add r1, r4, #0
	mov r2, #0xc
	bl AOSS_Memset
	add r0, sp, #0
	blx RTC_GetTime
	cmp r0, #0
	bne _020F005A
	ldr r0, [sp]
	lsl r0, r0, #0xa
	add r1, r4, r0
	ldr r0, [sp, #4]
	lsl r0, r0, #3
	add r1, r1, r0
	ldr r0, [sp, #8]
	add r4, r1, r0
_020F005A:
	ldr r0, _020F0088 ; =aoss_SecurityType
	ldr r1, _020F008C ; =0x5D588B65
	str r4, [r0, #0x18]
	str r1, [r0, #0x1c]
	ldr r1, _020F0090 ; =0x00269EC3
	str r1, [r0, #0x20]
	mov r1, #1
	str r1, [r0, #8]
_020F006A:
	ldr r0, _020F0088 ; =aoss_SecurityType
	ldr r2, [r0, #0x1c]
	ldr r1, [r0, #0x18]
	ldr r3, [r0, #0x20]
	mul r1, r2
	add r1, r3, r1
	str r1, [r0, #0x18]
	ldr r0, _020F0094 ; =0x00007FFF
	lsr r1, r1, #0x10
	mul r0, r1
	lsr r0, r0, #0x10
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	add sp, #0xc
	pop {r3, r4, pc}
_020F0088: .word aoss_SecurityType
_020F008C: .word 0x5D588B65
_020F0090: .word 0x00269EC3
_020F0094: .word 0x00007FFF
	thumb_func_end AOSS_Rand

	thumb_func_start FUN_ov17_020f0098
FUN_ov17_020f0098: ; 0x020F0098
	mov r1, #0
	str r1, [r0]
	strh r1, [r0, #4]
	strh r1, [r0, #6]
	bx lr
	thumb_func_end FUN_ov17_020f0098

	thumb_func_start FUN_ov17_020f00a4
FUN_ov17_020f00a4: ; 0x020F00A4
	str r0, [r1]
	mov r0, #1
	strh r0, [r1, #4]
	bx lr
	thumb_func_end FUN_ov17_020f00a4

	thumb_func_start FUN_ov17_020f00ac
FUN_ov17_020f00ac: ; 0x020F00AC
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
	ldr r2, _020F0134 ; =0x02112798
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
_020F0134: .word ov17_02112798
	thumb_func_end FUN_ov17_020f00ac

	thumb_func_start FUN_ov17_020f0138
FUN_ov17_020f0138: ; 0x020F0138
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
	thumb_func_end FUN_ov17_020f0138

	thumb_func_start FUN_ov17_020f015c
FUN_ov17_020f015c: ; 0x020F015C
	add r3, r0, #0
	add r0, r1, #0
	str r2, [r3]
	add r1, r3, #4
	ldr r3, _020F0168 ; =FUN_ov17_020f00ac
	bx r3
_020F0168: .word FUN_ov17_020f00ac
	thumb_func_end FUN_ov17_020f015c

	thumb_func_start FUN_ov17_020f016c
FUN_ov17_020f016c: ; 0x020F016C
	ldr r3, _020F0178 ; =OS_SendMessage
	add r1, r0, #0
	ldr r0, _020F017C ; =0x02114AA0
	mov r2, #0
	bx r3
	nop
_020F0178: .word OS_SendMessage
_020F017C: .word ov17_02114AA0
	thumb_func_end FUN_ov17_020f016c

	thumb_func_start FUN_overlay_d_17__020f0180
FUN_overlay_d_17__020f0180:
	ldr r3, _020F018C ; =OS_SendMessage
	add r1, r0, #0x0
	ldr r0, _020F0190 ; =0x02114AA0
	mov r2, #0x0
	bx r3
	nop
_020F018C: .word OS_SendMessage
_020F0190: .word ov17_02114AA0
	thumb_func_end FUN_overlay_d_17__020f0180

	thumb_func_start FUN_ov17_020f0194
FUN_ov17_020f0194: ; 0x020F0194
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	add r6, r1, #0
	ldr r0, _020F0244 ; =0x02114AA0
	ldr r1, _020F0248 ; =0x02114A90
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
	ldr r0, _020F0254 ; =FUN_ov17_020f016c
	ldr r2, _020F0250 ; =0x00005890
	bl FUN_ov17_020f0c30
	cmp r0, #0
	bne _020F01E4
	mov r4, #0
_020F01E4:
	cmp r4, #0
	beq _020F0234
	ldr r5, _020F0244 ; =0x02114AA0
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
_020F0244: .word ov17_02114AA0
_020F0248: .word ov17_02114A90
_020F024C: .word AOSSi_Alloc
_020F0250: .word 0x00005890
_020F0254: .word FUN_ov17_020f016c
	thumb_func_end FUN_ov17_020f0194

	thumb_func_start FUN_ov17_020f0258
FUN_ov17_020f0258: ; 0x020F0258
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
	bl FUN_ov17_020f0b54
	cmp r0, #0
	bne _020F0276
	sub r0, r4, #2
	pop {r3, r4, r5, r6, r7, pc}
_020F0276:
	ldr r7, _020F02EC ; =0x02114AA0
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
_020F02EC: .word ov17_02114AA0
	thumb_func_end FUN_ov17_020f0258

	thumb_func_start FUN_ov17_020f02f0
FUN_ov17_020f02f0: ; 0x020F02F0
	push {r3, r4, r5, r6, r7, lr}
	mov r5, #0
	mvn r5, r5
	bl FUN_ov17_020f0b1c
	cmp r0, #0
	beq _020F0320
	ldr r4, _020F0324 ; =0x02114AA0
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
_020F0324: .word ov17_02114AA0
	thumb_func_end FUN_ov17_020f02f0

	thumb_func_start FUN_ov17_020f0328
FUN_ov17_020f0328: ; 0x020F0328
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
	bl FUN_ov17_020f09f0
	cmp r0, #0
	bne _020F0378
	b _020F047C
_020F0378:
	add r0, sp, #0x18
	blx OS_CreateAlarm
	mov r0, #0x13
	str r0, [sp]
	ldr r1, _020F0494 ; =0x003FEC42
	ldr r3, _020F0498 ; =0x020F0181
	add r0, sp, #0x18
	add r2, r6, #0
	blx OS_SetAlarm
_020F038E:
	ldr r0, _020F049C ; =0x02114AA0
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
	bl FUN_ov17_020f09ac
	add r7, r0, #0
_020F03E4:
	bl FUN_ov17_020f0ae0
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
	bl FUN_ov17_020f09ac
	add r7, r0, #0
	bl FUN_ov17_020f0ae0
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
	bl FUN_ov17_020f00ac
	add r6, r6, #1
	add r4, #0xc0
	add r5, #0x54
	cmp r6, r7
	blt _020F0450
_020F0462:
	add r0, sp, #0x18
	blx OS_CancelAlarm
	ldr r5, _020F049C ; =0x02114AA0
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
_020F0498: .word 0x020F0181
_020F049C: .word ov17_02114AA0
	thumb_func_end FUN_ov17_020f0328

	thumb_func_start FUN_ov17_020f04a0
FUN_ov17_020f04a0: ; 0x020F04A0
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
	ldr r0, _020F0654 ; =0x02114B80
	mov r1, #0
	mov r2, #0x60
	blx MI_CpuFill8
	ldr r0, [r7, #0x28]
	cmp r0, #5
	bne _020F04E0
	ldr r0, _020F0654 ; =0x02114B80
	mov r1, #1
	strb r1, [r0]
	b _020F0500
_020F04E0:
	cmp r0, #0xd
	bne _020F04EC
	ldr r0, _020F0654 ; =0x02114B80
	mov r1, #2
	strb r1, [r0]
	b _020F0500
_020F04EC:
	cmp r0, #0x10
	bne _020F04F8
	ldr r0, _020F0654 ; =0x02114B80
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
	ldr r2, _020F0654 ; =0x02114B80
	mul r1, r6
	add r1, r1, #2
	add r0, r7, #0
	strb r6, [r2, #1]
	add r1, r2, r1
	ldr r2, [r7, #0x28]
	add r0, #0x2c
	blx MI_CpuCopy8
	blx  WCM_ClearApList
	ldr r2, [r7]
	ldr r3, _020F0658 ; =0x0030BFFE
	mov r0, #0
	add r1, r7, #4
	bl FUN_ov17_020f09f0
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
	ldr r3, _020F0660 ; =0x020F0181
	add r0, sp, #0x14
	mov r2, #0
	blx OS_SetAlarm
	b _020F061C
_020F0548:
	ldr r0, _020F0664 ; =0x02114AA0
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
	ldr r0, _020F0668 ; =0x02114AC0
	mov r1, #1
	bl FUN_ov17_020f09ac
	cmp r0, #1
	beq _020F05AE
	mov r4, #0
	b _020F061C
_020F05AE:
	ldr r1, _020F0668 ; =0x02114AC0
	add r0, r7, #0
	bl FUN_ov17_020f0138
	ldr r1, _020F066C ; =0x02114AC0
	mov r0, #0
	ldrh r1, [r1, #0xa]
	b _020F05C0
_020F05BE:
	add r0, r0, #1
_020F05C0:
	cmp r0, r1
	blt _020F05BE
	ldr r0, _020F0668 ; =0x02114AC0
	ldr r1, _020F0654 ; =0x02114B80
	add r2, r5, #0
	bl FUN_020f0bac
	cmp r0, #0
	bne _020F05D6
	mov r4, #0
	b _020F061C
_020F05D6:
	mov r6, #1
	b _020F061C
_020F05DA:
	ldr r1, _020F0668 ; =0x02114AC0
	add r0, r7, #0
	bl FUN_ov17_020f0138
	ldr r0, _020F0668 ; =0x02114AC0
	ldr r1, _020F0654 ; =0x02114B80
	add r2, r5, #0
	bl FUN_020f0bac
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
	ldr r0, _020F0668 ; =0x02114AC0
	ldr r1, _020F0654 ; =0x02114B80
	add r2, r5, #0
	bl FUN_020f0bac
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
	ldr r5, _020F0664 ; =0x02114AA0
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
	ldr r1, _020F0668 ; =0x02114AC0
	bl FUN_ov17_020f015c
	ldr r0, [sp, #0xc]
	add sp, #0x40
	pop {r3, r4, r5, r6, r7, pc}
_020F0654: .word ov17_02114B80
_020F0658: .word 0x0030BFFE
_020F065C: .word 0x003FEC42
_020F0660: .word 0x020F0181
_020F0664: .word ov17_02114AA0
_020F0668: .word ov17_02114AC0
_020F066C: .word ov17_02114AC0
	thumb_func_end FUN_ov17_020f04a0

	thumb_func_start FUN_020f0670
FUN_020f0670: ; 0x020F0670
	ldr r3, _020F0674 ; =OS_Sleep
	bx r3
_020F0674: .word OS_Sleep
	thumb_func_end FUN_020f0670

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

	thumb_func_start FUN_ov17_020f068c
FUN_ov17_020f068c: ; 0x020F068C
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
	ldr r2, _020F0940 ; =0x02114BE0
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
	blx  WCM_SearchAsync
	cmp r0, #3
	beq _020F0732
	ldr r0, _020F0940 ; =0x02114BE0
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
	blx  WCM_ConnectAsync
	cmp r0, #3
	beq _020F0732
	ldr r0, _020F0940 ; =0x02114BE0
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
	ldr r0, _020F0940 ; =0x02114BE0
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
	ldr r0, _020F0940 ; =0x02114BE0
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
	ldr r0, _020F0940 ; =0x02114BE0
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
	ldr r0, _020F0940 ; =0x02114BE0
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
	ldr r0, _020F0940 ; =0x02114BE0
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
	ldr r2, _020F0940 ; =0x02114BE0
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
	blx  WCM_SearchAsync
	cmp r0, #3
	beq _020F0836
	ldr r0, _020F0940 ; =0x02114BE0
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
	blx  WCM_CleanupAsync
	cmp r0, #3
	beq _020F0836
	ldr r0, _020F0940 ; =0x02114BE0
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
	blx  WCM_ConnectAsync
	cmp r0, #3
	beq _020F0836
	ldr r0, _020F0940 ; =0x02114BE0
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
	ldr r0, _020F0940 ; =0x02114BE0
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
	ldr r2, _020F0940 ; =0x02114BE0
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
	blx  WCM_SearchAsync
	cmp r0, #3
	beq _020F093C
	ldr r0, _020F0940 ; =0x02114BE0
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
	blx  WCM_CleanupAsync
	cmp r0, #3
	beq _020F093C
	ldr r0, _020F0940 ; =0x02114BE0
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
	blx  WCM_ConnectAsync
	cmp r0, #3
	beq _020F093C
	ldr r0, _020F0940 ; =0x02114BE0
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
	ldr r0, _020F0940 ; =0x02114BE0
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
	ldr r0, _020F0940 ; =0x02114BE0
	ldr r0, [r0, #0x18]
	cmp r0, #2
	bne _020F093C
	blx  WCM_Finish
	ldr r0, _020F0940 ; =0x02114BE0
	mov r1, #0
	str r1, [r0, #0x18]
	ldr r2, [r0, #0x1c]
	cmp r2, #0
	beq _020F093C
	mov r0, #0x14
	blx r2
	pop {r3, pc}
_020F0908:
	ldr r0, _020F0940 ; =0x02114BE0
	mov r3, #3
	str r3, [r0, #0x18]
	ldr r3, [r0, #0x1c]
	cmp r3, #0
	beq _020F093C
	add r0, r2, #0
	blx r3
	pop {r3, pc}
_020F091A:
	ldr r0, _020F0940 ; =0x02114BE0
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
	ldr r0, _020F0940 ; =0x02114BE0
	ldr r2, [r0, #0x1c]
	cmp r2, #0
	beq _020F093C
	mov r0, #1
	mov r1, #0
	blx r2
_020F093C:
	pop {r3, pc}
	nop
_020F0940: .word ov17_02114BE0
	thumb_func_end FUN_ov17_020f068c

	thumb_func_start FUN_ov17_020f0944
FUN_ov17_020f0944: ; 0x020F0944
	push {r3, lr}
	ldr r1, _020F09A4 ; =0x02114BE0
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
	blx  WCM_SearchAsync
	cmp r0, #3
	beq _020F099E
	mov r0, #0
	pop {r3, pc}
_020F097E:
	blx  WCM_DisconnectAsync
	cmp r0, #3
	beq _020F099E
	mov r0, #0
	pop {r3, pc}
_020F098A:
	ldr r0, [r1, #8]
	ldr r1, _020F09A8 ; =FUN_ov17_020f068c
	blx  WCM_StartupAsync
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
_020F09A4: .word ov17_02114BE0
_020F09A8: .word FUN_ov17_020f068c
	thumb_func_end FUN_ov17_020f0944

	thumb_func_start FUN_ov17_020f09ac
FUN_ov17_020f09ac: ; 0x020F09AC
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	mov r0, #1
	add r7, r1, #0
	blx  WCM_LockApList
	blx  WCM_CountApList
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
	blx  WCM_PointApList
	add r1, r5, #0
	mov r2, #0xc0
	blx MIi_CpuCopy32
	add r4, r4, #1
	add r5, #0xc0
	cmp r4, r6
	blt _020F09C8
_020F09E4:
	mov r0, #0
	blx  WCM_LockApList
	add r0, r6, #0
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end FUN_ov17_020f09ac

	thumb_func_start FUN_ov17_020f09f0
FUN_ov17_020f09f0: ; 0x020F09F0
	push {r3, r4, r5, r6, r7, lr}
	str r3, [sp]
	add r5, r0, #0
	add r4, r1, #0
	add r6, r2, #0
	blx OS_DisableInterrupts
	add r7, r0, #0
	ldr r1, _020F0ACC ; =0x02114BE0
	ldr r0, [sp]
	cmp r5, #0
	str r0, [r1, #4]
	beq _020F0A24
	ldr r2, _020F0AD0 ; =0x02114C08
	mov r1, #0
_020F0A0E:
	ldrb r0, [r5]
	add r1, r1, #1
	add r5, r5, #1
	strb r0, [r2]
	add r2, r2, #1
	cmp r1, #6
	blt _020F0A0E
	ldr r1, _020F0AD0 ; =0x02114C08
	ldr r0, _020F0ACC ; =0x02114BE0
	str r1, [r0, #0x10]
	b _020F0A34
_020F0A24:
	ldr r0, _020F0AD0 ; =0x02114C08
	mov r1, #0xff
	mov r2, #6
	blx MI_CpuFill8
	ldr r1, _020F0AD4 ; =0x020E3FE8
	ldr r0, _020F0ACC ; =0x02114BE0
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
	ldr r0, _020F0ACC ; =0x02114BE0
	str r1, [r0, #0x14]
	b _020F0A82
_020F0A72:
	ldr r0, _020F0AD8 ; =0x02114C10
	mov r1, #0xff
	mov r2, #0x20
	blx MI_CpuFill8
	ldr r1, _020F0ADC ; =0x020E3FF0
	ldr r0, _020F0ACC ; =0x02114BE0
	str r1, [r0, #0x14]
_020F0A82:
	ldr r2, _020F0ACC ; =0x02114BE0
	ldr r0, [r2, #0x18]
	cmp r0, #3
	bne _020F0AA8
	ldr r0, [r2, #0x10]
	ldr r1, [r2, #0x14]
	ldr r2, [r2, #4]
	blx  WCM_SearchAsync
	cmp r0, #3
	bne _020F0AC0
	ldr r0, _020F0ACC ; =0x02114BE0
	mov r1, #6
	str r1, [r0, #0x18]
	add r0, r7, #0
	blx OS_RestoreInterrupts
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_020F0AA8:
	bl FUN_ov17_020f0944
	cmp r0, #1
	bne _020F0AC0
	ldr r0, _020F0ACC ; =0x02114BE0
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
_020F0ACC: .word ov17_02114BE0
_020F0AD0: .word ov17_02114C08
_020F0AD4: .word 0x020E3FE8
_020F0AD8: .word ov17_02114C10
_020F0ADC: .word 0x020E3FF0
	thumb_func_end FUN_ov17_020f09f0

	thumb_func_start FUN_ov17_020f0ae0
FUN_ov17_020f0ae0: ; 0x020F0AE0
	push {r4, lr}
	blx OS_DisableInterrupts
	add r4, r0, #0
	ldr r0, _020F0B18 ; =0x02114BE0
	ldr r0, [r0, #0x18]
	cmp r0, #5
	bne _020F0B0E
	mov r0, #0
	add r1, r0, #0
	add r2, r0, #0
	blx  WCM_SearchAsync
	cmp r0, #3
	bne _020F0B0E
	ldr r0, _020F0B18 ; =0x02114BE0
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
_020F0B18: .word ov17_02114BE0
	thumb_func_end FUN_ov17_020f0ae0

	thumb_func_start FUN_ov17_020f0b1c
FUN_ov17_020f0b1c: ; 0x020F0B1C
	push {r4, lr}
	blx OS_DisableInterrupts
	add r4, r0, #0
	ldr r0, _020F0B50 ; =0x02114BE0
	ldr r0, [r0, #0x18]
	cmp r0, #7
	bne _020F0B44
	blx  WCM_DisconnectAsync
	cmp r0, #3
	bne _020F0B44
	ldr r0, _020F0B50 ; =0x02114BE0
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
_020F0B50: .word ov17_02114BE0
	thumb_func_end FUN_ov17_020f0b1c

	thumb_func_start FUN_ov17_020f0b54
FUN_ov17_020f0b54: ; 0x020F0B54
	push {r4, lr}
	blx OS_DisableInterrupts
	add r4, r0, #0
	ldr r0, _020F0BA8 ; =0x02114BE0
	ldr r0, [r0, #0x18]
	cmp r0, #3
	bne _020F0B86
	blx  WCM_CleanupAsync
	cmp r0, #3
	beq _020F0B76
	add r0, r4, #0
	blx OS_RestoreInterrupts
	mov r0, #0
	pop {r4, pc}
_020F0B76:
	ldr r0, _020F0BA8 ; =0x02114BE0
	mov r1, #2
	str r1, [r0, #0x18]
	add r0, r4, #0
	blx OS_RestoreInterrupts
	mov r0, #1
	pop {r4, pc}
_020F0B86:
	bl FUN_ov17_020f0944
	cmp r0, #1
	bne _020F0B9E
	ldr r0, _020F0BA8 ; =0x02114BE0
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
_020F0BA8: .word ov17_02114BE0
	thumb_func_end FUN_ov17_020f0b54

	thumb_func_start FUN_020f0bac
FUN_020f0bac: ; 0x020F0BAC
	push {r3, r4, r5, r6, r7, lr}
	add r7, r0, #0
	add r5, r1, #0
	add r6, r2, #0
	blx OS_DisableInterrupts
	ldr r1, _020F0C2C ; =0x02114BE0
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
	ldr r1, _020F0C2C ; =0x02114BE0
	add r0, r7, #0
	ldr r1, [r1, #0x20]
	mov r2, #0xc0
	blx MIi_CpuCopy32
	bl FUN_ov17_020f0944
	cmp r0, #1
	bne _020F0BFC
	ldr r0, _020F0C2C ; =0x02114BE0
	mov r1, #8
	str r1, [r0, #0x18]
	add r0, r4, #0
	blx OS_RestoreInterrupts
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_020F0BFC:
	ldr r2, _020F0C2C ; =0x02114BE0
	ldr r0, [r2, #0x18]
	cmp r0, #3
	bne _020F0C22
	ldr r0, [r2, #0x20]
	ldr r1, [r2, #0x24]
	ldr r2, [r2, #0xc]
	blx  WCM_ConnectAsync
	cmp r0, #3
	bne _020F0C22
	ldr r0, _020F0C2C ; =0x02114BE0
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
_020F0C2C: .word ov17_02114BE0
	thumb_func_end FUN_020f0bac

	thumb_func_start FUN_ov17_020f0c30
FUN_ov17_020f0c30: ; 0x020F0C30
	push {r3, r4, r5, r6, r7, lr}
	add r5, r1, #0
	add r7, r0, #0
	str r2, [sp]
	blx OS_DisableInterrupts
	add r4, r0, #0
	add r0, r5, #0
	ldr r2, _020F0CDC ; =0x02114BE0
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
	blx  WCM_Init
	cmp r0, #0
	beq _020F0C9C
	add r0, r4, #0
	blx OS_RestoreInterrupts
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
_020F0C9C:
	ldr r0, _020F0CDC ; =0x02114BE0
	mov r1, #1
	str r1, [r0, #0x18]
_020F0CA2:
	ldr r0, _020F0CDC ; =0x02114BE0
	ldr r1, [r0, #0x18]
	cmp r1, #1
	bne _020F0CD0
	ldr r0, [r0, #8]
	ldr r1, _020F0CE4 ; =FUN_ov17_020f068c
	blx  WCM_StartupAsync
	cmp r0, #3
	beq _020F0CC0
	add r0, r4, #0
	blx OS_RestoreInterrupts
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
_020F0CC0:
	ldr r0, _020F0CDC ; =0x02114BE0
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
_020F0CDC: .word ov17_02114BE0
_020F0CE0: .word 0x0000231F
_020F0CE4: .word FUN_ov17_020f068c
	thumb_func_end FUN_ov17_020f0c30

	thumb_func_start FUN_ov17_020f0ce8
FUN_ov17_020f0ce8: ; 0x020F0CE8
	push {r3, lr}
	cmp r0, #0
	bne _020F0CF0
	b _020F0FEA
_020F0CF0:
	mov r1, #0
	ldrsh r2, [r0, r1]
	cmp r2, #9
	bls _020F0CFA
	b _020F0FDC
_020F0CFA:
	add r2, r2, r2
	add r2, pc
	ldrh r2, [r2, #6]
	lsl r2, r2, #0x10
	asr r2, r2, #0x10
	add pc, r2
_020F0D06: ; jump table
	.short _020F0FDC - _020F0D06 - 2 ; case 0
	.short _020F0D1A - _020F0D06 - 2 ; case 1
	.short _020F0F6A - _020F0D06 - 2 ; case 2
	.short _020F0DA0 - _020F0D06 - 2 ; case 3
	.short _020F0E0E - _020F0D06 - 2 ; case 4
	.short _020F0DD8 - _020F0D06 - 2 ; case 5
	.short _020F0EB6 - _020F0D06 - 2 ; case 6
	.short _020F0FA6 - _020F0D06 - 2 ; case 7
	.short _020F0FBC - _020F0D06 - 2 ; case 8
	.short _020F0FCA - _020F0D06 - 2 ; case 9
_020F0D1A:
	mov r2, #2
	ldrsh r0, [r0, r2]
	cmp r0, #0
	bne _020F0D8C
	ldr r2, _020F0FEC ; =0x02114C30
	ldr r0, [r2, #0x2c]
	cmp r0, #4
	bne _020F0D3C
	mov r0, #3
	str r0, [r2, #0x2c]
	ldr r0, _020F0FF0 ; =0x02114CB0
	ldr r2, [r0]
	cmp r2, #0
	beq _020F0DD0
	mov r0, #6
	blx r2
	pop {r3, pc}
_020F0D3C:
	cmp r0, #6
	bne _020F0D64
	ldr r0, [r2, #0x44]
	ldr r1, [r2, #0x48]
	ldr r2, [r2, #0x60]
	blx  WCM_SearchAsync
	cmp r0, #3
	beq _020F0DD0
	ldr r0, _020F0FEC ; =0x02114C30
	mov r1, #3
	str r1, [r0, #0x2c]
	ldr r0, _020F0FF0 ; =0x02114CB0
	ldr r2, [r0]
	cmp r2, #0
	beq _020F0DD0
	mov r0, #2
	mov r1, #0
	blx r2
	pop {r3, pc}
_020F0D64:
	cmp r0, #8
	bne _020F0DD0
	ldr r0, [r2, #0x4c]
	ldr r1, [r2, #0x28]
	ldr r2, [r2, #0x58]
	blx  WCM_ConnectAsync
	cmp r0, #3
	beq _020F0DD0
	ldr r0, _020F0FEC ; =0x02114C30
	mov r1, #3
	str r1, [r0, #0x2c]
	ldr r0, _020F0FF0 ; =0x02114CB0
	ldr r2, [r0]
	cmp r2, #0
	beq _020F0DD0
	mov r0, #2
	mov r1, #0
	blx r2
	pop {r3, pc}
_020F0D8C:
	ldr r0, _020F0FEC ; =0x02114C30
	mov r3, #1
	str r3, [r0, #0x2c]
	ldr r0, _020F0FF0 ; =0x02114CB0
	ldr r3, [r0]
	cmp r3, #0
	beq _020F0DD0
	add r0, r2, #0
	blx r3
	pop {r3, pc}
_020F0DA0:
	mov r2, #2
	ldrsh r0, [r0, r2]
	cmp r0, #0
	bne _020F0DC2
	ldr r0, _020F0FEC ; =0x02114C30
	ldr r2, [r0, #0x2c]
	cmp r2, #6
	bne _020F0DD0
	mov r2, #5
	str r2, [r0, #0x2c]
	ldr r0, _020F0FF0 ; =0x02114CB0
	ldr r2, [r0]
	cmp r2, #0
	beq _020F0DD0
	mov r0, #8
	blx r2
	pop {r3, pc}
_020F0DC2:
	ldr r0, _020F0FEC ; =0x02114C30
	mov r2, #3
	str r2, [r0, #0x2c]
	ldr r0, _020F0FF0 ; =0x02114CB0
	ldr r2, [r0]
	cmp r2, #0
	bne _020F0DD2
_020F0DD0:
	b _020F0FEA
_020F0DD2:
	mov r0, #9
	blx r2
	pop {r3, pc}
_020F0DD8:
	mov r2, #2
	ldrsh r0, [r0, r2]
	cmp r0, #0
	bne _020F0DFA
	ldr r0, _020F0FEC ; =0x02114C30
	ldr r2, [r0, #0x2c]
	cmp r2, #8
	bne _020F0ED2
	mov r2, #7
	str r2, [r0, #0x2c]
	ldr r0, _020F0FF0 ; =0x02114CB0
	ldr r2, [r0]
	cmp r2, #0
	beq _020F0ED2
	mov r0, #0xc
	blx r2
	pop {r3, pc}
_020F0DFA:
	ldr r0, _020F0FEC ; =0x02114C30
	mov r2, #3
	str r2, [r0, #0x2c]
	ldr r0, _020F0FF0 ; =0x02114CB0
	ldr r2, [r0]
	cmp r2, #0
	beq _020F0ED2
	mov r0, #0xd
	blx r2
	pop {r3, pc}
_020F0E0E:
	mov r2, #2
	ldrsh r0, [r0, r2]
	cmp r0, #0
	bne _020F0EA2
	ldr r2, _020F0FEC ; =0x02114C30
	ldr r0, [r2, #0x2c]
	cmp r0, #4
	bne _020F0E30
	mov r0, #3
	str r0, [r2, #0x2c]
	ldr r0, _020F0FF0 ; =0x02114CB0
	ldr r2, [r0]
	cmp r2, #0
	beq _020F0ED2
	mov r0, #0xa
	blx r2
	pop {r3, pc}
_020F0E30:
	cmp r0, #6
	bne _020F0E58
	ldr r0, [r2, #0x44]
	ldr r1, [r2, #0x48]
	ldr r2, [r2, #0x60]
	blx  WCM_SearchAsync
	cmp r0, #3
	beq _020F0ED2
	ldr r0, _020F0FEC ; =0x02114C30
	mov r1, #3
	str r1, [r0, #0x2c]
	ldr r0, _020F0FF0 ; =0x02114CB0
	ldr r2, [r0]
	cmp r2, #0
	beq _020F0ED2
	mov r0, #2
	mov r1, #0
	blx r2
	pop {r3, pc}
_020F0E58:
	cmp r0, #2
	bne _020F0E7A
	blx  WCM_CleanupAsync
	cmp r0, #3
	beq _020F0ED2
	ldr r0, _020F0FEC ; =0x02114C30
	mov r1, #3
	str r1, [r0, #0x2c]
	ldr r0, _020F0FF0 ; =0x02114CB0
	ldr r2, [r0]
	cmp r2, #0
	beq _020F0ED2
	mov r0, #2
	mov r1, #0
	blx r2
	pop {r3, pc}
_020F0E7A:
	cmp r0, #8
	bne _020F0ED2
	ldr r0, [r2, #0x4c]
	ldr r1, [r2, #0x28]
	ldr r2, [r2, #0x58]
	blx  WCM_ConnectAsync
	cmp r0, #3
	beq _020F0ED2
	ldr r0, _020F0FEC ; =0x02114C30
	mov r1, #3
	str r1, [r0, #0x2c]
	ldr r0, _020F0FF0 ; =0x02114CB0
	ldr r2, [r0]
	cmp r2, #0
	beq _020F0ED2
	mov r0, #2
	mov r1, #0
	blx r2
	pop {r3, pc}
_020F0EA2:
	ldr r0, _020F0FEC ; =0x02114C30
	mov r2, #3
	str r2, [r0, #0x2c]
	ldr r0, _020F0FF0 ; =0x02114CB0
	ldr r2, [r0]
	cmp r2, #0
	beq _020F0ED2
	mov r0, #0xb
	blx r2
	pop {r3, pc}
_020F0EB6:
	mov r2, #2
	ldrsh r0, [r0, r2]
	cmp r0, #0
	bne _020F0F56
	ldr r2, _020F0FEC ; =0x02114C30
	ldr r0, [r2, #0x2c]
	cmp r0, #4
	bne _020F0EDA
	mov r0, #3
	str r0, [r2, #0x2c]
	ldr r0, _020F0FF0 ; =0x02114CB0
	ldr r2, [r0]
	cmp r2, #0
	bne _020F0ED4
_020F0ED2:
	b _020F0FEA
_020F0ED4:
	mov r0, #0xe
	blx r2
	pop {r3, pc}
_020F0EDA:
	cmp r0, #6
	bne _020F0F02
	ldr r0, [r2, #0x44]
	ldr r1, [r2, #0x48]
	ldr r2, [r2, #0x60]
	blx  WCM_SearchAsync
	cmp r0, #3
	beq _020F0FEA
	ldr r0, _020F0FEC ; =0x02114C30
	mov r1, #3
	str r1, [r0, #0x2c]
	ldr r0, _020F0FF0 ; =0x02114CB0
	ldr r2, [r0]
	cmp r2, #0
	beq _020F0FEA
	mov r0, #2
	mov r1, #0
	blx r2
	pop {r3, pc}
_020F0F02:
	cmp r0, #2
	bne _020F0F24
	blx  WCM_CleanupAsync
	cmp r0, #3
	beq _020F0FEA
	ldr r0, _020F0FEC ; =0x02114C30
	mov r1, #3
	str r1, [r0, #0x2c]
	ldr r0, _020F0FF0 ; =0x02114CB0
	ldr r2, [r0]
	cmp r2, #0
	beq _020F0FEA
	mov r0, #2
	mov r1, #0
	blx r2
	pop {r3, pc}
_020F0F24:
	cmp r0, #8
	bne _020F0F4C
	ldr r0, [r2, #0x4c]
	ldr r1, [r2, #0x28]
	ldr r2, [r2, #0x58]
	blx  WCM_ConnectAsync
	cmp r0, #3
	beq _020F0FEA
	ldr r0, _020F0FEC ; =0x02114C30
	mov r1, #3
	str r1, [r0, #0x2c]
	ldr r0, _020F0FF0 ; =0x02114CB0
	ldr r2, [r0]
	cmp r2, #0
	beq _020F0FEA
	mov r0, #2
	mov r1, #0
	blx r2
	pop {r3, pc}
_020F0F4C:
	cmp r0, #7
	bne _020F0FEA
	mov r0, #3
	str r0, [r2, #0x2c]
	pop {r3, pc}
_020F0F56:
	ldr r0, _020F0FEC ; =0x02114C30
	mov r2, #3
	str r2, [r0, #0x2c]
	ldr r0, _020F0FF0 ; =0x02114CB0
	ldr r2, [r0]
	cmp r2, #0
	beq _020F0FEA
	mov r0, #0xf
	blx r2
	pop {r3, pc}
_020F0F6A:
	mov r2, #2
	ldrsh r0, [r0, r2]
	cmp r0, #0
	bne _020F0F92
	ldr r0, _020F0FEC ; =0x02114C30
	ldr r0, [r0, #0x2c]
	cmp r0, #2
	bne _020F0FEA
	blx  WCM_Finish
	ldr r0, _020F0FEC ; =0x02114C30
	mov r1, #0
	str r1, [r0, #0x2c]
	ldr r0, _020F0FF0 ; =0x02114CB0
	ldr r2, [r0]
	cmp r2, #0
	beq _020F0FEA
	mov r0, #0x14
	blx r2
	pop {r3, pc}
_020F0F92:
	ldr r0, _020F0FEC ; =0x02114C30
	mov r3, #3
	str r3, [r0, #0x2c]
	ldr r0, _020F0FF0 ; =0x02114CB0
	ldr r3, [r0]
	cmp r3, #0
	beq _020F0FEA
	add r0, r2, #0
	blx r3
	pop {r3, pc}
_020F0FA6:
	ldr r0, _020F0FEC ; =0x02114C30
	ldr r0, [r0, #0x2c]
	cmp r0, #5
	bne _020F0FEA
	ldr r0, _020F0FF0 ; =0x02114CB0
	ldr r2, [r0]
	cmp r2, #0
	beq _020F0FEA
	mov r0, #5
	blx r2
	pop {r3, pc}
_020F0FBC:
	ldr r0, _020F0FF0 ; =0x02114CB0
	ldr r2, [r0]
	cmp r2, #0
	beq _020F0FEA
	mov r0, #4
	blx r2
	pop {r3, pc}
_020F0FCA:
	ldr r0, _020F0FEC ; =0x02114C30
	str r1, [r0, #0x2c]
	ldr r0, _020F0FF0 ; =0x02114CB0
	ldr r2, [r0]
	cmp r2, #0
	beq _020F0FEA
	mov r0, #3
	blx r2
	pop {r3, pc}
_020F0FDC:
	ldr r0, _020F0FF0 ; =0x02114CB0
	ldr r2, [r0]
	cmp r2, #0
	beq _020F0FEA
	mov r0, #1
	mov r1, #0
	blx r2
_020F0FEA:
	pop {r3, pc}
_020F0FEC: .word ov17_02114C30
_020F0FF0: .word ov17_02114CB0
	thumb_func_end FUN_ov17_020f0ce8

	thumb_func_start FUN_ov17_020f0ff4
FUN_ov17_020f0ff4: ; 0x020F0FF4
	push {r3, lr}
	ldr r1, _020F1054 ; =0x02114C30
	ldr r0, [r1, #0x2c]
	cmp r0, #8
	bhi _020F104A
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_020F100A: ; jump table
	.short _020F104A - _020F100A - 2 ; case 0
	.short _020F103A - _020F100A - 2 ; case 1
	.short _020F104A - _020F100A - 2 ; case 2
	.short _020F104A - _020F100A - 2 ; case 3
	.short _020F104A - _020F100A - 2 ; case 4
	.short _020F101C - _020F100A - 2 ; case 5
	.short _020F104A - _020F100A - 2 ; case 6
	.short _020F102E - _020F100A - 2 ; case 7
	.short _020F104A - _020F100A - 2 ; case 8
_020F101C:
	mov r0, #0
	add r1, r0, #0
	add r2, r0, #0
	blx  WCM_SearchAsync
	cmp r0, #3
	beq _020F104E
	mov r0, #0
	pop {r3, pc}
_020F102E:
	blx  WCM_DisconnectAsync
	cmp r0, #3
	beq _020F104E
	mov r0, #0
	pop {r3, pc}
_020F103A:
	ldr r0, [r1, #8]
	ldr r1, _020F1058 ; =FUN_ov17_020f0ce8
	blx  WCM_StartupAsync
	cmp r0, #3
	beq _020F104E
	mov r0, #0
	pop {r3, pc}
_020F104A:
	mov r0, #0
	pop {r3, pc}
_020F104E:
	mov r0, #1
	pop {r3, pc}
	nop
_020F1054: .word ov17_02114C30
_020F1058: .word FUN_ov17_020f0ce8
	thumb_func_end FUN_ov17_020f0ff4

	thumb_func_start FUN_ov17_020f105c
FUN_ov17_020f105c: ; 0x020F105C
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	mov r0, #1
	add r7, r1, #0
	blx  WCM_LockApList
	blx  WCM_CountApList
	add r6, r0, #0
	cmp r6, #0
	ble _020F1094
	mov r4, #0
	cmp r6, #0
	ble _020F1094
_020F1078:
	cmp r4, r7
	bge _020F1094
	lsl r0, r4, #0x10
	lsr r0, r0, #0x10
	blx  WCM_PointApList
	add r1, r5, #0
	mov r2, #0xc0
	blx MIi_CpuCopy32
	add r4, r4, #1
	add r5, #0xc0
	cmp r4, r6
	blt _020F1078
_020F1094:
	mov r0, #0
	blx  WCM_LockApList
	add r0, r6, #0
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end FUN_ov17_020f105c

	thumb_func_start FUN_ov17_020f10a0
FUN_ov17_020f10a0: ; 0x020F10A0
	push {r3, r4, r5, r6, r7, lr}
	str r3, [sp]
	add r5, r0, #0
	add r4, r1, #0
	add r6, r2, #0
	blx OS_DisableInterrupts
	add r7, r0, #0
	ldr r1, _020F1174 ; =0x02114C30
	ldr r0, [sp]
	cmp r5, #0
	str r0, [r1, #0x60]
	ldr r0, _020F1178 ; =0x021150E8
	str r0, [r1, #0x44]
	beq _020F10D0
	mov r2, #0
_020F10C0:
	ldrb r1, [r5]
	add r2, r2, #1
	add r5, r5, #1
	strb r1, [r0]
	add r0, r0, #1
	cmp r2, #6
	blt _020F10C0
	b _020F10DE
_020F10D0:
	mov r1, #0xff
	mov r2, #6
	blx MI_CpuFill8
	ldr r1, _020F117C ; =0x020E3FE8
	ldr r0, _020F1174 ; =0x02114C30
	str r1, [r0, #0x44]
_020F10DE:
	ldr r2, _020F1180 ; =0x02115120
	ldr r0, _020F1174 ; =0x02114C30
	cmp r4, #0
	str r2, [r0, #0x48]
	beq _020F111A
	cmp r6, #0
	ble _020F111A
	cmp r6, #0x20
	bge _020F111A
	mov r0, #0
	cmp r6, #0
	ble _020F1104
_020F10F6:
	ldrb r1, [r4]
	add r0, r0, #1
	add r4, r4, #1
	strb r1, [r2]
	add r2, r2, #1
	cmp r0, r6
	blt _020F10F6
_020F1104:
	cmp r0, #0x20
	bge _020F112A
	ldr r1, _020F1180 ; =0x02115120
	add r2, r1, r0
	mov r1, #0
_020F110E:
	add r0, r0, #1
	strb r1, [r2]
	add r2, r2, #1
	cmp r0, #0x20
	blt _020F110E
	b _020F112A
_020F111A:
	ldr r0, _020F1180 ; =0x02115120
	mov r1, #0xff
	mov r2, #0x20
	blx MI_CpuFill8
	ldr r1, _020F1184 ; =0x020E3FF0
	ldr r0, _020F1174 ; =0x02114C30
	str r1, [r0, #0x48]
_020F112A:
	ldr r2, _020F1174 ; =0x02114C30
	ldr r0, [r2, #0x2c]
	cmp r0, #3
	bne _020F1150
	ldr r1, [r2, #0x48]
	ldr r0, _020F1178 ; =0x021150E8
	ldr r2, [r2, #0x60]
	blx  WCM_SearchAsync
	cmp r0, #3
	bne _020F1168
	ldr r0, _020F1174 ; =0x02114C30
	mov r1, #6
	str r1, [r0, #0x2c]
	add r0, r7, #0
	blx OS_RestoreInterrupts
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_020F1150:
	bl FUN_ov17_020f0ff4
	cmp r0, #1
	bne _020F1168
	ldr r0, _020F1174 ; =0x02114C30
	mov r1, #6
	str r1, [r0, #0x2c]
	add r0, r7, #0
	blx OS_RestoreInterrupts
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_020F1168:
	add r0, r7, #0
	blx OS_RestoreInterrupts
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
	nop
_020F1174: .word ov17_02114C30
_020F1178: .word ov17_021150E8
_020F117C: .word 0x020E3FE8
_020F1180: .word ov17_02115120
_020F1184: .word 0x020E3FF0
	thumb_func_end FUN_ov17_020f10a0

	thumb_func_start FUN_ov17_020f1188
FUN_ov17_020f1188: ; 0x020F1188
	push {r4, lr}
	blx OS_DisableInterrupts
	add r4, r0, #0
	ldr r0, _020F11BC ; =0x02114C30
	ldr r0, [r0, #0x2c]
	cmp r0, #7
	bne _020F11B0
	blx  WCM_DisconnectAsync
	cmp r0, #3
	bne _020F11B0
	ldr r0, _020F11BC ; =0x02114C30
	mov r1, #4
	str r1, [r0, #0x2c]
	add r0, r4, #0
	blx OS_RestoreInterrupts
	mov r0, #1
	pop {r4, pc}
_020F11B0:
	add r0, r4, #0
	blx OS_RestoreInterrupts
	mov r0, #0
	pop {r4, pc}
	nop
_020F11BC: .word ov17_02114C30
	thumb_func_end FUN_ov17_020f1188

	thumb_func_start FUN_ov17_020f11c0
FUN_ov17_020f11c0: ; 0x020F11C0
	push {r4, lr}
	blx OS_DisableInterrupts
	add r4, r0, #0
	ldr r0, _020F1214 ; =0x02114C30
	ldr r0, [r0, #0x2c]
	cmp r0, #3
	bne _020F11F2
	blx  WCM_CleanupAsync
	cmp r0, #3
	beq _020F11E2
	add r0, r4, #0
	blx OS_RestoreInterrupts
	mov r0, #0
	pop {r4, pc}
_020F11E2:
	ldr r0, _020F1214 ; =0x02114C30
	mov r1, #2
	str r1, [r0, #0x2c]
	add r0, r4, #0
	blx OS_RestoreInterrupts
	mov r0, #1
	pop {r4, pc}
_020F11F2:
	bl FUN_ov17_020f0ff4
	cmp r0, #1
	bne _020F120A
	ldr r0, _020F1214 ; =0x02114C30
	mov r1, #2
	str r1, [r0, #0x2c]
	add r0, r4, #0
	blx OS_RestoreInterrupts
	mov r0, #1
	pop {r4, pc}
_020F120A:
	add r0, r4, #0
	blx OS_RestoreInterrupts
	mov r0, #0
	pop {r4, pc}
_020F1214: .word ov17_02114C30
	thumb_func_end FUN_ov17_020f11c0

	thumb_func_start FUN_ov17_020f1218
FUN_ov17_020f1218: ; 0x020F1218
	push {r3, r4, r5, r6, r7, lr}
	add r7, r0, #0
	add r5, r1, #0
	add r6, r2, #0
	blx OS_DisableInterrupts
	ldr r1, _020F1298 ; =0x02114C30
	add r4, r0, #0
	str r6, [r1, #0x58]
	cmp r5, #0
	beq _020F123A
	ldr r1, [r1, #0x28]
	add r0, r5, #0
	mov r2, #0x60
	blx MI_CpuCopy8
	b _020F1244
_020F123A:
	ldr r0, [r1, #0x28]
	mov r1, #0
	mov r2, #0x60
	blx MI_CpuFill8
_020F1244:
	ldr r1, _020F1298 ; =0x02114C30
	add r0, r7, #0
	ldr r1, [r1, #0x4c]
	mov r2, #0xc0
	blx MIi_CpuCopy32
	bl FUN_ov17_020f0ff4
	cmp r0, #1
	bne _020F1268
	ldr r0, _020F1298 ; =0x02114C30
	mov r1, #8
	str r1, [r0, #0x2c]
	add r0, r4, #0
	blx OS_RestoreInterrupts
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_020F1268:
	ldr r2, _020F1298 ; =0x02114C30
	ldr r0, [r2, #0x2c]
	cmp r0, #3
	bne _020F128E
	ldr r0, [r2, #0x4c]
	ldr r1, [r2, #0x28]
	ldr r2, [r2, #0x58]
	blx  WCM_ConnectAsync
	cmp r0, #3
	bne _020F128E
	ldr r0, _020F1298 ; =0x02114C30
	mov r1, #8
	str r1, [r0, #0x2c]
	add r0, r4, #0
	blx OS_RestoreInterrupts
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_020F128E:
	add r0, r4, #0
	blx OS_RestoreInterrupts
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
_020F1298: .word ov17_02114C30
	thumb_func_end FUN_ov17_020f1218

	thumb_func_start FUN_ov17_020f129c
FUN_ov17_020f129c: ; 0x020F129C
	push {r3, r4, r5, r6, r7, lr}
	add r5, r1, #0
	add r7, r0, #0
	str r2, [sp]
	blx OS_DisableInterrupts
	add r4, r0, #0
	add r0, r5, #0
	ldr r2, _020F1348 ; =0x02114C30
	add r0, #0x63
	mov r1, #3
	bic r0, r1
	add r6, r0, #0
	str r5, [r2, #0x28]
	add r6, #0x2f
	mov r1, #0x1f
	ldr r3, _020F134C ; =0x0000231F
	str r0, [r2, #8]
	bic r6, r1
	str r6, [r2, #0x3c]
	add r6, r6, r3
	bic r6, r1
	str r6, [r2, #0x4c]
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
	ldr r0, _020F1350 ; =0x02114CB0
	str r7, [r0]
	ldr r0, [r2, #0x2c]
	cmp r0, #0
	bne _020F1310
	sub r3, #0x1f
	ldr r0, [r2, #0x3c]
	add r1, r3, #0
	blx  WCM_Init
	cmp r0, #0
	beq _020F130A
	add r0, r4, #0
	blx OS_RestoreInterrupts
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
_020F130A:
	ldr r0, _020F1348 ; =0x02114C30
	mov r1, #1
	str r1, [r0, #0x2c]
_020F1310:
	ldr r0, _020F1348 ; =0x02114C30
	ldr r1, [r0, #0x2c]
	cmp r1, #1
	bne _020F133E
	ldr r0, [r0, #8]
	ldr r1, _020F1354 ; =FUN_ov17_020f0ce8
	blx  WCM_StartupAsync
	cmp r0, #3
	beq _020F132E
	add r0, r4, #0
	blx OS_RestoreInterrupts
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
_020F132E:
	ldr r0, _020F1348 ; =0x02114C30
	mov r1, #4
	str r1, [r0, #0x2c]
	add r0, r4, #0
	blx OS_RestoreInterrupts
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_020F133E:
	add r0, r4, #0
	blx OS_RestoreInterrupts
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
_020F1348: .word ov17_02114C30
_020F134C: .word 0x0000231F
_020F1350: .word ov17_02114CB0
_020F1354: .word FUN_ov17_020f0ce8
	thumb_func_end FUN_ov17_020f129c

	thumb_func_start FUN_ov17_020f1358
FUN_ov17_020f1358: ; 0x020F1358
	ldr r0, _020F1360 ; =0x02114C30
	ldr r0, [r0, #0x2c]
	bx lr
	nop
_020F1360: .word ov17_02114C30
	thumb_func_end FUN_ov17_020f1358

	thumb_func_start FUN_ov17_020f1364
FUN_ov17_020f1364: ; 0x020F1364
	push {r4, lr}
	add r4, r1, #0
	cmp r4, #0
	ble _020F1386
	ldr r0, _020F138C ; =0x02114CC4
	blx OS_LockMutex
	ldr r1, _020F1390 ; =0x02114C30
	add r0, r4, #0
	ldr r1, [r1, #4]
	blx r1
	add r4, r0, #0
	ldr r0, _020F138C ; =0x02114CC4
	blx OS_UnlockMutex
	add r0, r4, #0
	pop {r4, pc}
_020F1386:
	mov r0, #0
	pop {r4, pc}
	nop
_020F138C: .word ov17_02114CC4
_020F1390: .word ov17_02114C30
	thumb_func_end FUN_ov17_020f1364

	thumb_func_start FUN_ov17_020f1394
FUN_ov17_020f1394: ; 0x020F1394
	push {r4, lr}
	add r4, r1, #0
	beq _020F13B2
	cmp r2, #0
	ble _020F13B2
	ldr r0, _020F13B4 ; =0x02114CC4
	blx OS_LockMutex
	ldr r1, _020F13B8 ; =0x02114C30
	add r0, r4, #0
	ldr r1, [r1, #0xc]
	blx r1
	ldr r0, _020F13B4 ; =0x02114CC4
	blx OS_UnlockMutex
_020F13B2:
	pop {r4, pc}
_020F13B4: .word ov17_02114CC4
_020F13B8: .word ov17_02114C30
	thumb_func_end FUN_ov17_020f1394

	thumb_func_start FUN_ov17_020f13bc
FUN_ov17_020f13bc: ; 0x020F13BC
	push {r3, lr}
	blx OS_DisableInterrupts
	ldr r1, _020F13DC ; =0x02114C30
	mov r2, #0
	str r2, [r1, #0x68]
	str r2, [r1, #0x6c]
	ldr r3, _020F13E0 ; =0x02114CB4
	add r1, r2, #0
_020F13CE:
	add r2, r2, #1
	stmia r3!, {r1}
	cmp r2, #4
	blt _020F13CE
	blx OS_RestoreInterrupts
	pop {r3, pc}
_020F13DC: .word ov17_02114C30
_020F13E0: .word ov17_02114CB4
	thumb_func_end FUN_ov17_020f13bc

	thumb_func_start FUN_ov17_020f13e4
FUN_ov17_020f13e4: ; 0x020F13E4
	push {r3, r4, r5, lr}
	blx OS_DisableInterrupts
	ldr r1, _020F1414 ; =0x02114C30
	ldr r5, [r1, #0x6c]
	ldr r2, [r1, #0x68]
	cmp r2, r5
	bne _020F13F8
	mov r4, #0
	b _020F140A
_020F13F8:
	ldr r2, _020F1418 ; =0x02114CB4
	lsl r3, r5, #2
	ldr r4, [r2, r3]
	add r2, r5, #1
	str r2, [r1, #0x6c]
	cmp r2, #4
	blt _020F140A
	mov r2, #0
	str r2, [r1, #0x6c]
_020F140A:
	blx OS_RestoreInterrupts
	add r0, r4, #0
	pop {r3, r4, r5, pc}
	nop
_020F1414: .word ov17_02114C30
_020F1418: .word ov17_02114CB4
	thumb_func_end FUN_ov17_020f13e4

	thumb_func_start FUN_ov17_020f141c
FUN_ov17_020f141c:
	push {r3, r4}
	ldr r1, _020F1444 ; =0x02114C30
	ldr r3, [r1, #0x68]
	ldr r2, [r1, #0x6c]
	add r4, r3, #0x1
	cmp r4, r2
	beq _020F1440
	add r2, r2, #0x3
	cmp r3, r2
	beq _020F1440
	ldr r2, _020F1448 ; =0x02114CB4
	lsl r3, r3, #0x2
	str r0, [r2, r3]
	str r4, [r1, #0x68]
	cmp r4, #0x4
	blt _020F1440
	mov r0, #0x0
	str r0, [r1, #0x68]
_020F1440:
	pop {r3, r4}
	bx lr
_020F1444: .word ov17_02114C30
_020F1448: .word ov17_02114CB4
	thumb_func_start FUN_ov17_020f141c

	thumb_func_start FUN_ov17_020f144c
FUN_ov17_020f144c:
	ldr r3, _020F1454 ; =0x020F141D
	mov r1, #0x0
	bx r3
	nop
_020F1454: .word 0x020F141D
	thumb_func_end FUN_ov17_020f144c

	thumb_func_start FUN_ov17_020f1458
FUN_ov17_020f1458: ; 0x020F1458
	push {r3, r4, r5, r6, r7, lr}
	add r6, r0, #0
	ldr r0, _020F14EC ; =0x02114C30
	mov r4, #1
	str r6, [r0, #0x70]
	bl FUN_ov17_020f13bc
	mov r0, #0xd0
	add r7, r6, #0
	mul r7, r0
	ldr r0, _020F14F0 ; =0x000024D0
	add r1, r7, r0
	mov r0, #0xc0
	mul r0, r6
	add r0, r1, r0
	ldr r1, _020F14EC ; =0x02114C30
	ldr r1, [r1, #4]
	blx r1
	ldr r6, _020F14EC ; =0x02114C30
	cmp r0, #0
	str r0, [r6, #0x54]
	bne _020F1488
	sub r0, r4, #2
	pop {r3, r4, r5, r6, r7, pc}
_020F1488:
	mov r1, #0x1f
	add r2, r0, r1
	add r0, r1, #0
	sub r0, #0x3f
	add r3, r2, #0
	and r3, r0
	ldr r0, _020F14F4 ; =0x00002490
	str r3, [r6, #0x40]
	add r2, r7, r0
	add r0, r3, r2
	add r0, r0, r1
	sub r1, #0x3f
	and r0, r1
	str r0, [r6, #0x5c]
	ldr r0, _020F14F8 ; =0x020F141D
	add r1, r3, #0
	bl FUN_ov17_020f129c
	cmp r0, #0
	bne _020F14B4
	sub r0, r4, #3
	pop {r3, r4, r5, r6, r7, pc}
_020F14B4:
	mov r6, #0
	add r7, r4, #0
_020F14B8:
	mov r0, #0xa
	blx OS_Sleep
	bl FUN_ov17_020f13e4
	cmp r0, #0
	beq _020F14E4
_020F14C6:
	cmp r0, #4
	beq _020F14DC
	cmp r0, #5
	beq _020F14DC
	cmp r0, #6
	bne _020F14D8
	add r4, r6, #0
	add r5, r7, #0
	b _020F14DC
_020F14D8:
	mov r4, #0
	sub r5, r4, #2
_020F14DC:
	bl FUN_ov17_020f13e4
	cmp r0, #0
	bne _020F14C6
_020F14E4:
	cmp r4, #0
	bne _020F14B8
	add r0, r5, #0
	pop {r3, r4, r5, r6, r7, pc}
_020F14EC: .word ov17_02114C30
_020F14F0: .word 0x000024D0
_020F14F4: .word 0x00002490
_020F14F8: .word 0x020F141D
	thumb_func_end FUN_ov17_020f1458

	thumb_func_start FUN_ov17_020f14fc
FUN_ov17_020f14fc: ; 0x020F14FC
	push {r3, r4, r5, r6, r7, lr}
	mov r5, #1
	bl FUN_ov17_020f11c0
	cmp r0, #0
	beq _020F153A
	mov r6, #0
	add r4, r6, #0
	mov r7, #0xa
_020F150E:
	add r0, r7, #0
	blx OS_Sleep
	bl FUN_ov17_020f13e4
	cmp r0, #0
	beq _020F1536
_020F151C:
	cmp r0, #4
	beq _020F152E
	cmp r0, #5
	beq _020F152E
	cmp r0, #0x14
	bne _020F152C
	add r5, r4, #0
	b _020F152E
_020F152C:
	add r5, r6, #0
_020F152E:
	bl FUN_ov17_020f13e4
	cmp r0, #0
	bne _020F151C
_020F1536:
	cmp r5, #0
	bne _020F150E
_020F153A:
	ldr r1, _020F1550 ; =0x02114C30
	ldr r0, [r1, #0x54]
	cmp r0, #0
	beq _020F154C
	ldr r1, [r1, #0xc]
	blx r1
	ldr r0, _020F1550 ; =0x02114C30
	mov r1, #0
	str r1, [r0, #0x54]
_020F154C:
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_020F1550: .word ov17_02114C30
	thumb_func_end FUN_ov17_020f14fc

	thumb_func_start FUN_ov17_020f1554
FUN_ov17_020f1554: ; 0x020F1554
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x30
	ldr r0, _020F1664 ; =0x02114C30
	mov r4, #1
	ldr r3, [r0, #0x5c]
	ldr r0, [r0, #0x18]
	mov r2, #0xc0
	add r1, r0, #0
	mul r1, r2
	sub r5, r4, #3
	add r6, r3, r1
	bne _020F1572
	add sp, #0x30
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
_020F1572:
	add r0, r6, #0
	mov r1, #0
	lsl r2, r2, #0xa
	bl FUN_ov17_020f1218
	cmp r0, #0
	bne _020F1586
	add sp, #0x30
	sub r0, r4, #3
	pop {r3, r4, r5, r6, r7, pc}
_020F1586:
	add r0, sp, #4
	blx OS_CreateAlarm
	mov r0, #0x12
	str r0, [sp]
	ldr r1, _020F1668 ; =0x003FEC42
	ldr r3, _020F166C ; =0x020F144D
	add r0, sp, #4
	mov r2, #0
	blx OS_SetAlarm
	mov r7, #0
_020F159E:
	bl FUN_ov17_020f4234
	ldr r1, _020F1670 ; =0x021127C8
	ldr r1, [r1, #0xc]
	cmp r0, r1
	blo _020F15B0
	mov r5, #2
	mvn r5, r5
	b _020F1630
_020F15B0:
	ldr r0, _020F1664 ; =0x02114C30
	ldr r0, [r0, #0x10]
	cmp r0, #0
	beq _020F15BE
	mov r5, #7
	mvn r5, r5
	b _020F1630
_020F15BE:
	mov r0, #0xa
	blx OS_Sleep
	bl FUN_ov17_020f13e4
	cmp r0, #0
	beq _020F162C
_020F15CC:
	cmp r0, #0xc
	bgt _020F15E2
	bge _020F15F6
	cmp r0, #5
	bgt _020F1622
	cmp r0, #4
	blt _020F1622
	beq _020F1624
	cmp r0, #5
	beq _020F1624
	b _020F1622
_020F15E2:
	cmp r0, #0x13
	bgt _020F1622
	cmp r0, #0xd
	blt _020F1622
	beq _020F15FC
	cmp r0, #0x12
	beq _020F1624
	cmp r0, #0x13
	beq _020F1624
	b _020F1622
_020F15F6:
	add r4, r7, #0
	mov r5, #1
	b _020F1624
_020F15FC:
	ldr r0, _020F1664 ; =0x02114C30
	ldr r0, [r0, #0x10]
	cmp r0, #0
	beq _020F160C
	mov r4, #0
	add r5, r4, #0
	sub r5, #8
	b _020F1624
_020F160C:
	mov r2, #3
	add r0, r6, #0
	mov r1, #0
	lsl r2, r2, #0x10
	bl FUN_ov17_020f1218
	cmp r0, #0
	bne _020F1624
	add sp, #0x30
	add r0, r5, #0
	pop {r3, r4, r5, r6, r7, pc}
_020F1622:
	mov r4, #0
_020F1624:
	bl FUN_ov17_020f13e4
	cmp r0, #0
	bne _020F15CC
_020F162C:
	cmp r4, #0
	bne _020F159E
_020F1630:
	add r0, sp, #4
	blx OS_CancelAlarm
_020F1636:
	bl FUN_ov17_020f13e4
	cmp r0, #0
	bne _020F1636
	cmp r5, #0
	ble _020F165E
	ldr r0, _020F1664 ; =0x02114C30
	mov r1, #1
	str r1, [r0, #0x20]
	ldr r0, _020F1674 ; =0x021127DC
	blx  SOC_Startup
	cmp r0, #0
	bge _020F1658
	mov r5, #1
	mvn r5, r5
	b _020F165E
_020F1658:
	ldr r0, _020F1664 ; =0x02114C30
	mov r1, #1
	str r1, [r0, #0x24]
_020F165E:
	add r0, r5, #0
	add sp, #0x30
	pop {r3, r4, r5, r6, r7, pc}
_020F1664: .word ov17_02114C30
_020F1668: .word 0x003FEC42
_020F166C: .word 0x020F144D
_020F1670: .word ov17_021127C8
_020F1674: .word ov17_021127DC
	thumb_func_end FUN_ov17_020f1554

	thumb_func_start FUN_ov17_020f1678
FUN_ov17_020f1678: ; 0x020F1678
	push {r3, r4, r5, r6, r7, lr}
	ldr r0, _020F16D8 ; =0x02114C30
	mov r5, #1
	ldr r0, [r0, #0x20]
	cmp r0, #0
	beq _020F16C4
	bl FUN_ov17_020f1188
	cmp r0, #0
	beq _020F16BE
	mov r6, #0
	add r4, r6, #0
	mov r7, #0xa
_020F1692:
	add r0, r7, #0
	blx OS_Sleep
	bl FUN_ov17_020f13e4
	cmp r0, #0
	beq _020F16BA
_020F16A0:
	cmp r0, #4
	beq _020F16B2
	cmp r0, #5
	beq _020F16B2
	cmp r0, #0xe
	bne _020F16B0
	add r5, r4, #0
	b _020F16B2
_020F16B0:
	add r5, r6, #0
_020F16B2:
	bl FUN_ov17_020f13e4
	cmp r0, #0
	bne _020F16A0
_020F16BA:
	cmp r5, #0
	bne _020F1692
_020F16BE:
	ldr r0, _020F16D8 ; =0x02114C30
	mov r1, #0
	str r1, [r0, #0x20]
_020F16C4:
	ldr r0, _020F16D8 ; =0x02114C30
	ldr r1, [r0, #0x24]
	cmp r1, #0
	beq _020F16D4
	mov r1, #0
	str r1, [r0, #0x24]
	blx  SOC_Cleanup
_020F16D4:
	pop {r3, r4, r5, r6, r7, pc}
	nop
_020F16D8: .word ov17_02114C30
	thumb_func_end FUN_ov17_020f1678

	thumb_func_start FUN_ov17_020f16dc
FUN_ov17_020f16dc: ; 0x020F16DC
	push {r4, r5, r6, r7, lr}
	sub sp, #0x6c
	str r0, [sp]
	mov r0, #0
	str r0, [sp, #0x20]
	str r0, [sp, #0x1c]
	ldr r0, [sp]
	str r1, [sp, #4]
	add r6, r0, #4
	add r0, r1, #0
	add r4, r0, #4
	ldr r0, [sp, #0x20]
	str r2, [sp, #8]
	str r0, [sp, #0xc]
	ldr r0, [sp]
	ldr r0, [r0]
	cmp r0, #0
	bls _020F17B0
_020F1700:
	add r2, sp, #0x48
	add r2, #2
	mov r1, #0x22
	mov r0, #0
_020F1708:
	strb r0, [r2]
	add r2, r2, #1
	sub r1, r1, #1
	bne _020F1708
	add r0, sp, #0x48
	add r0, #2
	add r1, r6, #4
	mov r2, #0x20
	blx memcpy
	add r0, sp, #0x48
	ldr r1, [r6]
	mov r7, #0
	add r0, #2
	strb r7, [r0, r1]
	ldr r0, [sp, #4]
	ldr r0, [r0]
	str r0, [sp, #0x10]
	cmp r0, #0
	bls _020F1794
	add r0, r6, #0
	str r0, [sp, #0x24]
	add r0, #0x28
	ldr r5, [r6]
	str r0, [sp, #0x24]
_020F173A:
	cmp r5, #0
	beq _020F1794
	cmp r5, #0x20
	bhi _020F1794
	cmp r5, #1
	bne _020F1750
	ldrb r0, [r6, #4]
	cmp r0, #0
	beq _020F1794
	cmp r0, #0x20
	beq _020F1794
_020F1750:
	add r0, sp, #0x48
	add r0, #2
	blx strlen
	add r2, r0, #0
	add r0, sp, #0x48
	add r0, #2
	add r1, r4, #4
	blx memcmp
	cmp r0, #0
	bne _020F178A
	add r1, r4, #0
	ldr r0, [sp, #0x24]
	add r1, #0x28
	mov r2, #6
	blx memcmp
	cmp r0, #0
	bne _020F178A
	ldrh r1, [r6, #0x2e]
	ldrh r0, [r4, #0x2e]
	cmp r1, r0
	beq _020F178A
	cmp r1, #0
	bne _020F178A
	mov r0, #1
	str r0, [sp, #0x20]
	b _020F1794
_020F178A:
	ldr r0, [sp, #0x10]
	add r7, r7, #1
	add r4, #0x30
	cmp r7, r0
	blo _020F173A
_020F1794:
	ldr r0, [sp, #0x20]
	cmp r0, #0
	bne _020F17B0
	ldr r0, [sp, #4]
	add r6, #0x30
	add r4, r0, #4
	ldr r0, [sp, #0xc]
	add r0, r0, #1
	str r0, [sp, #0xc]
	ldr r0, [sp]
	ldr r1, [r0]
	ldr r0, [sp, #0xc]
	cmp r0, r1
	blo _020F1700
_020F17B0:
	ldr r0, [sp, #0x20]
	cmp r0, #0
	bne _020F188C
	add r2, sp, #0x28
	mov r1, #0x22
	mov r0, #0
_020F17BC:
	strb r0, [r2]
	add r2, r2, #1
	sub r1, r1, #1
	bne _020F17BC
	mov r0, #0
	str r0, [sp, #0x18]
	str r0, [sp, #0x14]
	ldr r0, [sp]
	ldr r6, [sp, #0x18]
	add r4, r0, #4
	ldr r0, [sp, #4]
	add r5, r0, #4
	ldr r0, [r0]
	cmp r0, #0
	bls _020F1818
	add r7, sp, #0x28
_020F17DC:
	add r0, r7, #0
	add r1, r5, #4
	mov r2, #0x20
	blx memcpy
	ldr r1, [r5]
	mov r0, #0
	strb r0, [r7, r1]
	ldr r0, _020F18A4 ; =0x02112834
	blx strlen
	add r2, r0, #0
	ldr r1, _020F18A4 ; =0x02112834
	add r0, r7, #0
	blx memcmp
	cmp r0, #0
	bne _020F180C
	ldrh r0, [r5, #0x2e]
	cmp r0, #0
	bne _020F180C
	mov r0, #1
	str r0, [sp, #0x14]
	b _020F1818
_020F180C:
	ldr r0, [sp, #4]
	add r6, r6, #1
	ldr r0, [r0]
	add r5, #0x30
	cmp r6, r0
	blo _020F17DC
_020F1818:
	mov r0, #0
	str r0, [sp, #0xc]
	ldr r0, [sp]
	ldr r0, [r0]
	cmp r0, #0
	bls _020F187C
	ldr r7, _020F18A4 ; =0x02112834
	add r5, sp, #0x28
_020F1828:
	add r0, r5, #0
	add r1, r4, #4
	mov r2, #0x20
	blx memcpy
	ldr r1, [r4]
	mov r0, #0
	strb r0, [r5, r1]
	add r0, r5, #0
	blx strlen
	add r6, r0, #0
	add r0, r7, #0
	blx strlen
	cmp r6, r0
	bne _020F186A
	add r0, r7, #0
	blx strlen
	add r2, r0, #0
	add r0, r5, #0
	add r1, r7, #0
	blx memcmp
	cmp r0, #0
	bne _020F186A
	ldrh r0, [r4, #0x2e]
	cmp r0, #0
	bne _020F186A
	mov r0, #1
	str r0, [sp, #0x18]
	b _020F187C
_020F186A:
	ldr r0, [sp, #0xc]
	add r4, #0x30
	add r0, r0, #1
	str r0, [sp, #0xc]
	ldr r0, [sp]
	ldr r1, [r0]
	ldr r0, [sp, #0xc]
	cmp r0, r1
	blo _020F1828
_020F187C:
	ldr r0, [sp, #0x18]
	cmp r0, #0
	beq _020F188C
	ldr r0, [sp, #0x14]
	cmp r0, #0
	bne _020F188C
	mov r0, #1
	str r0, [sp, #0x20]
_020F188C:
	ldr r0, [sp, #0x20]
	cmp r0, #0
	beq _020F189C
	ldr r1, [sp, #0xc]
	ldr r0, [sp, #8]
	str r1, [r0]
	mov r0, #1
	str r0, [sp, #0x1c]
_020F189C:
	ldr r0, [sp, #0x1c]
	add sp, #0x6c
	pop {r4, r5, r6, r7, pc}
	nop
_020F18A4: .word ov17_02112834
	thumb_func_end FUN_ov17_020f16dc

	thumb_func_start FUN_ov17_020f18a8
FUN_ov17_020f18a8: ; 0x020F18A8
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x70
	mov r0, #0
	str r0, [sp, #8]
	str r0, [sp, #0x20]
	ldr r0, _020F1B20 ; =0x02114C30
	mov r4, #0
	ldr r1, [r0, #0x70]
	mov r0, #0x30
	mul r0, r1
	str r0, [sp, #0x10]
	add r0, #0x34
	str r0, [sp, #0x10]
	ldr r1, [sp, #0x10]
	mov r0, #1
	mvn r4, r4
	bl FUN_ov17_020f4250
	str r0, [sp, #0xc]
	cmp r0, #0
	beq _020F18E0
	ldr r1, [sp, #0x10]
	mov r0, #1
	bl FUN_ov17_020f4250
	str r0, [sp, #8]
	cmp r0, #0
	bne _020F18E2
_020F18E0:
	b _020F1B06
_020F18E2:
	mov r0, #0
	str r0, [sp, #0x1c]
	b _020F1ACE
_020F18E8:
	bl FUN_ov17_020f4234
	ldr r1, _020F1B24 ; =0x021127C8
	ldr r1, [r1, #0xc]
	cmp r0, r1
	bhs _020F19D2
	mov r0, #0
	ldr r3, _020F1B28 ; =0x0030BFFE
	add r1, r0, #0
	add r2, r0, #0
	bl FUN_ov17_020f10a0
	cmp r0, #0
	bne _020F190A
	mov r4, #1
	mvn r4, r4
	b _020F1B06
_020F190A:
	add r0, sp, #0x24
	blx OS_CreateAlarm
	mov r0, #0x13
	str r0, [sp]
	ldr r1, _020F1B2C ; =0x000FFB10
	ldr r3, _020F1B30 ; =0x020F144D
	add r0, sp, #0x24
	mov r2, #0
	blx OS_SetAlarm
	ldr r7, _020F1B20 ; =0x02114C30
	mov r5, #1
	mov r4, #0
	add r6, sp, #0x24
_020F1928:
	mov r0, #0xa
	blx OS_Sleep
	bl FUN_ov17_020f4234
	ldr r1, _020F1B24 ; =0x021127C8
	ldr r1, [r1, #0xc]
	cmp r0, r1
	bhs _020F19BC
	ldr r0, [r7, #0x10]
	cmp r0, #0
	bne _020F19BC
	bl FUN_ov17_020f13e4
	cmp r0, #0
	beq _020F19B8
_020F1948:
	cmp r0, #0x13
	bhi _020F19AE
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_020F1958: ; jump table
	.short _020F19AE - _020F1958 - 2 ; case 0
	.short _020F19AE - _020F1958 - 2 ; case 1
	.short _020F19AE - _020F1958 - 2 ; case 2
	.short _020F19AE - _020F1958 - 2 ; case 3
	.short _020F19B0 - _020F1958 - 2 ; case 4
	.short _020F1984 - _020F1958 - 2 ; case 5
	.short _020F19AE - _020F1958 - 2 ; case 6
	.short _020F19AE - _020F1958 - 2 ; case 7
	.short _020F19B0 - _020F1958 - 2 ; case 8
	.short _020F19AE - _020F1958 - 2 ; case 9
	.short _020F19AA - _020F1958 - 2 ; case 10
	.short _020F19AE - _020F1958 - 2 ; case 11
	.short _020F19AE - _020F1958 - 2 ; case 12
	.short _020F19AE - _020F1958 - 2 ; case 13
	.short _020F19AE - _020F1958 - 2 ; case 14
	.short _020F19AE - _020F1958 - 2 ; case 15
	.short _020F19AE - _020F1958 - 2 ; case 16
	.short _020F19AE - _020F1958 - 2 ; case 17
	.short _020F19B0 - _020F1958 - 2 ; case 18
	.short _020F1980 - _020F1958 - 2 ; case 19
_020F1980:
	mov r5, #0
	b _020F19B0
_020F1984:
	ldr r0, [r7, #0x5c]
	ldr r1, [r7, #0x70]
	bl FUN_ov17_020f105c
	cmp r0, r4
	ble _020F19B0
	add r4, r0, #0
	add r0, r6, #0
	blx OS_CancelAlarm
	mov r0, #0x13
	str r0, [sp]
	ldr r1, _020F1B2C ; =0x000FFB10
	ldr r3, _020F1B30 ; =0x020F144D
	add r0, r6, #0
	mov r2, #0
	blx OS_SetAlarm
	b _020F19B0
_020F19AA:
	mov r5, #0
	b _020F19B0
_020F19AE:
	mov r5, #0
_020F19B0:
	bl FUN_ov17_020f13e4
	cmp r0, #0
	bne _020F1948
_020F19B8:
	cmp r5, #0
	bne _020F1928
_020F19BC:
	add r0, sp, #0x24
	blx OS_CancelAlarm
_020F19C2:
	bl FUN_ov17_020f13e4
	cmp r0, #0
	bne _020F19C2
	ldr r1, _020F1B20 ; =0x02114C30
	ldr r0, [r1, #0x10]
	cmp r0, #0
	beq _020F19D4
_020F19D2:
	b _020F1ADE
_020F19D4:
	mov r0, #0
	str r0, [sp, #0x14]
	ldr r0, [r1, #0x70]
	cmp r4, r0
	blt _020F19E4
	ldr r0, [sp, #0x14]
	sub r4, r0, #6
	b _020F1B06
_020F19E4:
	ldr r0, [sp, #0x14]
	ldr r5, [r1, #0x5c]
	str r0, [sp, #0x18]
	cmp r4, #0
	ble _020F1A5A
	ble _020F1A5A
	ldr r0, [sp, #0xc]
	ldr r7, [sp, #0xc]
	str r0, [sp, #4]
	add r0, #8
	add r6, r7, #0
	str r0, [sp, #4]
	add r6, #0x2c
_020F19FE:
	add r1, r5, #0
	ldr r0, [sp, #4]
	add r1, #0xc
	mov r2, #0x20
	blx memcpy
	ldrh r0, [r5, #0xa]
	str r0, [r7, #4]
	ldrh r0, [r5, #0xa]
	add r1, r7, r0
	mov r0, #0
	strb r0, [r1, #8]
	ldrh r1, [r5, #0x2c]
	mov r0, #0x10
	tst r0, r1
	beq _020F1A22
	mov r0, #1
	b _020F1A24
_020F1A22:
	mov r0, #0
_020F1A24:
	strh r0, [r7, #0x32]
	ldrb r0, [r5, #4]
	add r7, #0x30
	strb r0, [r6]
	ldrb r0, [r5, #5]
	strb r0, [r6, #1]
	ldrb r0, [r5, #6]
	strb r0, [r6, #2]
	ldrb r0, [r5, #7]
	strb r0, [r6, #3]
	ldrb r0, [r5, #8]
	strb r0, [r6, #4]
	ldrb r0, [r5, #9]
	add r5, #0xc0
	strb r0, [r6, #5]
	ldr r0, [sp, #4]
	add r6, #0x30
	add r0, #0x30
	str r0, [sp, #4]
	ldr r0, [sp, #0x14]
	add r0, r0, #1
	str r0, [sp, #0x14]
	ldr r0, [sp, #0x18]
	add r0, r0, #1
	str r0, [sp, #0x18]
	cmp r0, r4
	blt _020F19FE
_020F1A5A:
	ldr r0, [sp, #0xc]
	str r4, [r0]
	ldr r0, _020F1B20 ; =0x02114C30
	ldr r0, [r0, #0x38]
	cmp r0, #1
	beq _020F1AB4
	ldr r0, [sp, #0xc]
	ldr r1, [sp, #8]
	add r2, sp, #0x20
	bl FUN_ov17_020f16dc
	cmp r0, #0
	beq _020F1AB4
	ldr r0, [sp, #0xc]
	ldr r2, [sp, #0x20]
	add r1, r0, #4
	mov r0, #0x30
	mul r0, r2
	add r4, r1, r0
	ldr r0, _020F1B20 ; =0x02114C30
	add r1, r4, #4
	str r2, [r0, #0x18]
	ldr r0, _020F1B34 ; =0x02115140
	blx strcpy
	add r0, r4, #0
	add r4, #0x28
	ldrb r2, [r4]
	ldr r1, _020F1B38 ; =0x021150E0
	add r0, #0x28
	strb r2, [r1]
	ldrb r2, [r0, #1]
	strb r2, [r1, #1]
	ldrb r2, [r0, #2]
	strb r2, [r1, #2]
	ldrb r2, [r0, #3]
	strb r2, [r1, #3]
	ldrb r2, [r0, #4]
	strb r2, [r1, #4]
	ldrb r0, [r0, #5]
	strb r0, [r1, #5]
	add r0, sp, #0x50
	bl FUN_ov17_020f42b8
	b _020F1ADE
_020F1AB4:
	ldr r0, [sp, #8]
	ldr r1, [sp, #0xc]
	ldr r2, [sp, #0x10]
	blx memcpy
	ldr r0, _020F1B20 ; =0x02114C30
	mov r1, #2
	str r1, [r0, #0x38]
	bl FUN_ov17_020f44b4
	ldr r0, [sp, #0x1c]
	add r0, r0, #1
	str r0, [sp, #0x1c]
_020F1ACE:
	ldr r0, [sp, #0x1c]
	cmp r0, #0x1e
	bge _020F1ADE
	ldr r0, _020F1B20 ; =0x02114C30
	ldr r0, [r0, #0x10]
	cmp r0, #0
	bne _020F1ADE
	b _020F18E8
_020F1ADE:
	ldr r0, [sp, #0x1c]
	cmp r0, #0x1e
	bge _020F1AF0
	bl FUN_ov17_020f4234
	ldr r1, _020F1B24 ; =0x021127C8
	ldr r1, [r1, #0xc]
	cmp r0, r1
	bls _020F1AF6
_020F1AF0:
	mov r4, #2
	mvn r4, r4
	b _020F1B06
_020F1AF6:
	ldr r0, _020F1B20 ; =0x02114C30
	ldr r0, [r0, #0x10]
	cmp r0, #0
	beq _020F1B04
	mov r4, #7
	mvn r4, r4
	b _020F1B06
_020F1B04:
	mov r4, #1
_020F1B06:
	ldr r0, [sp, #0xc]
	cmp r0, #0
	beq _020F1B10
	bl FUN_ov17_020f4274
_020F1B10:
	ldr r0, [sp, #8]
	cmp r0, #0
	beq _020F1B1A
	bl FUN_ov17_020f4274
_020F1B1A:
	add r0, r4, #0
	add sp, #0x70
	pop {r3, r4, r5, r6, r7, pc}
_020F1B20: .word ov17_02114C30
_020F1B24: .word ov17_021127C8
_020F1B28: .word 0x0030BFFE
_020F1B2C: .word 0x000FFB10
_020F1B30: .word 0x020F144D
_020F1B34: .word ov17_02115140
_020F1B38: .word ov17_021150E0
	thumb_func_end FUN_ov17_020f18a8

	thumb_func_start FUN_ov17_020f1b3c
FUN_ov17_020f1b3c: ; 0x020F1B3C
	push {r3, lr}
	ldr r2, [sp, #8]
	str r1, [sp]
	add r1, r3, #0
	mov r3, #0
	blx  SOC_SendTo
	cmp r0, #0
	bge _020F1B52
	mov r0, #3
	mvn r0, r0
_020F1B52:
	pop {r3, pc}
	thumb_func_end FUN_ov17_020f1b3c

	thumb_func_start FUN_ov17_020f1b54
FUN_ov17_020f1b54: ; 0x020F1B54
	push {r4, r5, r6, lr}
	sub sp, #0x10
	add r5, r0, #0
	add r6, r1, #0
	mov r1, #8
	add r0, sp, #4
	strb r1, [r0, #4]
	mov r1, #2
	strb r1, [r0, #5]
	sub r1, r1, #3
	str r1, [sp, #0xc]
	ldr r1, _020F1B8C ; =0x000001E6
	add r4, r2, #0
	strh r1, [r0, #6]
	blx  SOCL_GetHostID
	add r1, sp, #4
	blx  SOC_U32to4U8
	add r0, r5, #0
	add r1, sp, #8
	add r2, sp, #4
	add r3, r6, #0
	str r4, [sp]
	bl FUN_ov17_020f1b3c
	add sp, #0x10
	pop {r4, r5, r6, pc}
_020F1B8C: .word 0x000001E6
	thumb_func_end FUN_ov17_020f1b54

	thumb_func_start FUN_ov17_020f1b90
FUN_ov17_020f1b90: ; 0x020F1B90
	add r1, r2, #0
	add r2, r3, #0
	ldr r3, _020F1B98 ; =FUN_ov17_020f1b54
	bx r3
_020F1B98: .word FUN_ov17_020f1b54
	thumb_func_end FUN_ov17_020f1b90

	thumb_func_start FUN_ov17_020f1b9c
FUN_ov17_020f1b9c: ; 0x020F1B9C
	push {r3, r4, r5, r6}
	ldrh r5, [r0]
	mov r3, #0
	asr r4, r5, #8
	lsl r4, r4, #0x18
	lsr r6, r4, #0x18
	lsl r4, r5, #8
	mov r5, #0xff
	lsl r5, r5, #8
	and r4, r5
	orr r4, r6
	lsl r4, r4, #0x10
	lsr r4, r4, #0x10
	str r4, [r1]
	ldrh r6, [r0, #2]
	asr r1, r6, #8
	lsl r1, r1, #0x18
	lsr r4, r1, #0x18
	lsl r1, r6, #8
	and r1, r5
	orr r1, r4
	lsl r1, r1, #0x10
	lsr r4, r1, #0x10
	add r1, r0, #6
	str r4, [r2]
	add r2, r1, r4
	add r4, r0, #0
	cmp r0, r2
	bhs _020F1BE0
_020F1BD6:
	ldrb r1, [r4]
	add r4, r4, #1
	add r3, r3, r1
	cmp r4, r2
	blo _020F1BD6
_020F1BE0:
	ldrh r5, [r2]
	lsl r1, r3, #0x10
	lsr r1, r1, #0x10
	asr r2, r5, #8
	lsl r2, r2, #0x18
	lsr r4, r2, #0x18
	mov r2, #0xff
	lsl r3, r5, #8
	lsl r2, r2, #8
	and r2, r3
	orr r2, r4
	lsl r2, r2, #0x10
	lsr r2, r2, #0x10
	cmp r1, r2
	beq _020F1C04
	mov r0, #0
	pop {r3, r4, r5, r6}
	bx lr
_020F1C04:
	add r0, r0, #6
	pop {r3, r4, r5, r6}
	bx lr
	thumb_func_end FUN_ov17_020f1b9c

	thumb_func_start FUN_ov17_020f1c0c
FUN_ov17_020f1c0c: ; 0x020F1C0C
	push {r3, r4, r5, r6}
	add r4, r0, #0
	ldr r0, [r4]
	cmp r0, r1
	blo _020F1C1C
	mov r0, #0
	pop {r3, r4, r5, r6}
	bx lr
_020F1C1C:
	ldrh r5, [r0]
	asr r1, r5, #8
	lsl r1, r1, #0x18
	lsr r6, r1, #0x18
	lsl r1, r5, #8
	mov r5, #0xff
	lsl r5, r5, #8
	and r1, r5
	orr r1, r6
	lsl r1, r1, #0x10
	lsr r1, r1, #0x10
	str r1, [r2]
	ldrh r6, [r0, #2]
	add r0, r0, #4
	asr r1, r6, #8
	lsl r1, r1, #0x18
	lsr r2, r1, #0x18
	lsl r1, r6, #8
	and r1, r5
	orr r1, r2
	lsl r1, r1, #0x10
	lsr r2, r1, #0x10
	str r2, [r3]
	add r2, #0xb
	mov r1, #7
	bic r2, r1
	sub r1, r2, #4
	add r1, r0, r1
	str r1, [r4]
	pop {r3, r4, r5, r6}
	bx lr
	thumb_func_end FUN_ov17_020f1c0c

	thumb_func_start FUN_ov17_020f1c5c
FUN_ov17_020f1c5c: ; 0x020F1C5C
	push {r3, r4, r5, r6, lr}
	sub sp, #4
	add r5, r0, #0
	add r5, #8
	str r5, [sp]
	add r3, r2, #0
	ldrh r2, [r0]
	add r4, r1, #0
	add r0, sp, #0
	asr r1, r2, #8
	lsl r6, r2, #8
	mov r2, #0xff
	lsl r1, r1, #0x18
	lsl r2, r2, #8
	lsr r1, r1, #0x18
	and r2, r6
	orr r1, r2
	lsl r1, r1, #0x10
	lsr r1, r1, #0x10
	add r1, r5, r1
	add r2, r4, #0
	bl FUN_ov17_020f1c0c
	add sp, #4
	pop {r3, r4, r5, r6, pc}
	thumb_func_end FUN_ov17_020f1c5c

	thumb_func_start FUN_ov17_020f1c90
FUN_ov17_020f1c90: ; 0x020F1C90
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	add r7, r3, #0
	add r6, r0, #0
	add r0, r7, #0
	sub r0, #8
	str r1, [sp, #4]
	lsl r0, r0, #0x10
	add r1, r2, #0
	mov r5, #0
	strb r5, [r1]
	lsr r0, r0, #0x10
	strb r5, [r1, #1]
	asr r2, r0, #8
	strb r5, [r1, #2]
	lsl r2, r2, #0x18
	strb r5, [r1, #3]
	lsr r3, r2, #0x18
	lsl r2, r0, #8
	mov r0, #0xff
	strb r5, [r1, #4]
	lsl r0, r0, #8
	strb r5, [r1, #5]
	and r0, r2
	strb r5, [r1, #6]
	orr r0, r3
	strb r5, [r1, #7]
	ldr r3, [sp, #0x20]
	add r4, r6, #0
	strh r0, [r1]
	cmp r3, #0
	beq _020F1CE0
	mov r0, #0x10
	str r0, [sp]
	add r0, r6, #6
	add r2, r7, #0
	bl FUN_ov17_020f28d0
	add r7, #8
	b _020F1CE8
_020F1CE0:
	add r0, r6, #6
	add r2, r7, #0
	blx memcpy
_020F1CE8:
	mov r0, #0
	strb r0, [r6]
	strb r0, [r6, #1]
	strb r0, [r6, #2]
	strb r0, [r6, #3]
	strb r0, [r6, #4]
	strb r0, [r6, #5]
	ldr r0, [sp, #4]
	lsl r0, r0, #0x10
	lsr r1, r0, #0x10
	asr r0, r1, #8
	lsl r0, r0, #0x18
	lsr r2, r0, #0x18
	mov r0, #0xff
	lsl r1, r1, #8
	lsl r0, r0, #8
	and r1, r0
	orr r1, r2
	strh r1, [r6]
	lsl r1, r7, #0x10
	lsr r2, r1, #0x10
	asr r1, r2, #8
	lsl r1, r1, #0x18
	lsl r2, r2, #8
	lsr r1, r1, #0x18
	and r0, r2
	orr r0, r1
	strh r0, [r6, #2]
	add r0, r4, #6
	add r4, r0, r7
	add r1, r6, #0
	cmp r6, r4
	bhs _020F1D34
_020F1D2A:
	ldrb r0, [r1]
	add r1, r1, #1
	add r5, r5, r0
	cmp r1, r4
	blo _020F1D2A
_020F1D34:
	lsl r0, r5, #0x10
	lsr r1, r0, #0x10
	asr r0, r1, #8
	lsl r0, r0, #0x18
	lsr r2, r0, #0x18
	mov r0, #0xff
	lsl r1, r1, #8
	lsl r0, r0, #8
	and r0, r1
	orr r0, r2
	strh r0, [r4]
	add r0, r4, #2
	sub r0, r0, r6
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end FUN_ov17_020f1c90

	thumb_func_start FUN_ov17_020f1d54
FUN_ov17_020f1d54: ; 0x020F1D54
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	lsl r0, r1, #0x10
	add r4, r3, #0
	mov r3, #0
	lsr r0, r0, #0x10
	add r7, r2, #0
	strb r3, [r5]
	asr r1, r0, #8
	lsl r2, r0, #8
	mov r0, #0xff
	strb r3, [r5, #1]
	lsl r1, r1, #0x18
	lsl r0, r0, #8
	strb r3, [r5, #2]
	lsr r1, r1, #0x18
	and r2, r0
	orr r1, r2
	strb r3, [r5, #3]
	add r2, r4, #0
	strh r1, [r5]
	add r2, #0xb
	mov r1, #7
	bic r2, r1
	lsl r1, r4, #0x10
	sub r6, r2, #4
	lsr r2, r1, #0x10
	asr r1, r2, #8
	lsl r1, r1, #0x18
	lsl r2, r2, #8
	and r0, r2
	lsr r1, r1, #0x18
	orr r0, r1
	strh r0, [r5, #2]
	add r5, r5, #4
	add r0, r5, #0
	add r1, r3, #0
	add r2, r6, #0
	blx memset
	add r0, r5, #0
	add r1, r7, #0
	add r2, r4, #0
	blx memcpy
	add r0, r5, r6
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end FUN_ov17_020f1d54

	thumb_func_start FUN_ov17_020f1db4
FUN_ov17_020f1db4: ; 0x020F1DB4
	push {r4, lr}
	add r4, r0, #0
	mov r0, #0
	strb r0, [r4]
	strb r0, [r4, #1]
	strb r0, [r4, #2]
	strb r0, [r4, #3]
	strb r0, [r4, #4]
	strb r0, [r4, #5]
	strb r0, [r4, #6]
	strb r0, [r4, #7]
	add r0, r4, #0
	add r0, #8
	bl FUN_ov17_020f1d54
	sub r0, r0, r4
	add r1, r0, #0
	sub r1, #8
	strh r1, [r4]
	pop {r4, pc}
	thumb_func_end FUN_ov17_020f1db4

	thumb_func_start FUN_ov17_020f1ddc
FUN_ov17_020f1ddc: ; 0x020F1DDC
	push {r4, r5, r6, r7, lr}
	sub sp, #0x1c
	str r1, [sp]
	add r1, sp, #0x18
	add r2, sp, #0x14
	bl FUN_ov17_020f1b9c
	mov r6, #0
	add r5, r0, #0
	add r7, r6, #0
	str r5, [sp, #8]
	str r6, [sp, #4]
	cmp r5, #0
	bne _020F1DFE
	add sp, #0x1c
	add r0, r6, #0
	pop {r4, r5, r6, r7, pc}
_020F1DFE:
	ldr r0, [sp, #0x18]
	cmp r0, #1
	beq _020F1E0A
	add sp, #0x1c
	add r0, r6, #0
	pop {r4, r5, r6, r7, pc}
_020F1E0A:
	ldr r4, [sp, #0x14]
	add r0, r5, #0
	add r0, #8
	str r0, [sp, #8]
	add r0, sp, #8
	add r1, r5, r4
	add r2, sp, #0x10
	add r3, sp, #0xc
	bl FUN_ov17_020f1c0c
	cmp r0, #0
	beq _020F1E8A
_020F1E22:
	ldr r1, [sp, #0x10]
	cmp r1, #1
	beq _020F1E32
	cmp r1, #2
	beq _020F1E4A
	cmp r1, #5
	beq _020F1E64
	b _020F1E7A
_020F1E32:
	ldrh r1, [r0]
	asr r0, r1, #8
	lsl r0, r0, #0x18
	lsr r2, r0, #0x18
	mov r0, #0xff
	lsl r1, r1, #8
	lsl r0, r0, #8
	and r0, r1
	orr r0, r2
	lsl r0, r0, #0x10
	lsr r6, r0, #0x10
	b _020F1E7A
_020F1E4A:
	ldrh r1, [r0]
	asr r0, r1, #8
	lsl r2, r1, #8
	mov r1, #0xff
	lsl r0, r0, #0x18
	lsl r1, r1, #8
	lsr r0, r0, #0x18
	and r1, r2
	orr r0, r1
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	str r0, [sp, #4]
	b _020F1E7A
_020F1E64:
	ldrh r1, [r0]
	asr r0, r1, #8
	lsl r0, r0, #0x18
	lsr r2, r0, #0x18
	mov r0, #0xff
	lsl r1, r1, #8
	lsl r0, r0, #8
	and r0, r1
	orr r0, r2
	lsl r0, r0, #0x10
	lsr r7, r0, #0x10
_020F1E7A:
	add r0, sp, #8
	add r1, r5, r4
	add r2, sp, #0x10
	add r3, sp, #0xc
	bl FUN_ov17_020f1c0c
	cmp r0, #0
	bne _020F1E22
_020F1E8A:
	cmp r6, #1
	bne _020F1E94
	ldr r0, [sp, #4]
	cmp r0, #1
	beq _020F1E9A
_020F1E94:
	add sp, #0x1c
	mov r0, #0
	pop {r4, r5, r6, r7, pc}
_020F1E9A:
	cmp r7, #1
	blt _020F1EA4
	mov r1, #1
	ldr r0, [sp]
	b _020F1EA8
_020F1EA4:
	ldr r0, [sp]
	mov r1, #0
_020F1EA8:
	str r1, [r0]
	mov r0, #1
	add sp, #0x1c
	pop {r4, r5, r6, r7, pc}
	thumb_func_end FUN_ov17_020f1ddc

	thumb_func_start FUN_ov17_020f1eb0
FUN_ov17_020f1eb0: ; 0x020F1EB0
	push {r3, r4, r5, r6, lr}
	sub sp, #0xc
	add r5, r1, #0
	add r6, r2, #0
	add r1, sp, #8
	add r2, sp, #4
	add r4, r3, #0
	bl FUN_ov17_020f1b9c
	add r1, r0, #0
	bne _020F1ECC
	add sp, #0xc
	mov r0, #0
	pop {r3, r4, r5, r6, pc}
_020F1ECC:
	ldr r0, [sp, #8]
	cmp r0, r5
	beq _020F1ED8
	add sp, #0xc
	mov r0, #0
	pop {r3, r4, r5, r6, pc}
_020F1ED8:
	cmp r4, #0
	beq _020F1EF2
	mov r0, #0x10
	str r0, [sp]
	ldr r2, [sp, #4]
	add r0, r6, #0
	add r3, r4, #0
	bl FUN_ov17_020f2a88
	ldr r0, [sp, #4]
	sub r0, #8
	str r0, [sp, #4]
	b _020F1EFA
_020F1EF2:
	ldr r2, [sp, #4]
	add r0, r6, #0
	blx memcpy
_020F1EFA:
	ldr r0, [sp, #4]
	add sp, #0xc
	pop {r3, r4, r5, r6, pc}
	thumb_func_end FUN_ov17_020f1eb0

	thumb_func_start FUN_ov17_020f1f00
FUN_ov17_020f1f00: ; 0x020F1F00
	push {r4, lr}
	sub sp, #0x10
	mov r1, #1
	add r4, r0, #0
	add r2, sp, #4
	lsl r1, r1, #8
	add r0, sp, #4
	strh r1, [r0]
	ldr r3, _020F1F88 ; =0x0210F444
	add r2, #2
	mov r1, #7
_020F1F16:
	ldrb r0, [r3]
	add r3, r3, #1
	strb r0, [r2]
	add r2, r2, #1
	sub r1, r1, #1
	bne _020F1F16
	ldr r0, _020F1F8C ; =0x021127C8
	mov r1, #1
	ldr r0, [r0]
	add r2, sp, #4
	mov r3, #2
	bl FUN_ov17_020f1d54
	mov r1, #2
	add r2, sp, #4
	add r3, r1, #0
	bl FUN_ov17_020f1d54
	ldr r1, _020F1F90 ; =0x02114C30
	ldr r1, [r1, #0x50]
	cmp r1, #0
	beq _020F1F4C
	mov r1, #5
	add r2, sp, #4
	mov r3, #2
	bl FUN_ov17_020f1d54
_020F1F4C:
	add r2, sp, #4
	mov r1, #3
	add r2, #2
	mov r3, #7
	bl FUN_ov17_020f1d54
	ldr r1, _020F1F90 ; =0x02114C30
	add r3, r0, #0
	ldr r1, [r1, #0x50]
	cmp r1, #0
	beq _020F1F6E
	ldr r2, _020F1F94 ; =0x021150D8
	mov r1, #4
	mov r3, #6
	bl FUN_ov17_020f1d54
	add r3, r0, #0
_020F1F6E:
	mov r0, #0
	str r0, [sp]
	add r0, r4, #0
	ldr r4, _020F1F8C ; =0x021127C8
	ldr r2, _020F1F98 ; =0x02115164
	ldr r4, [r4]
	mov r1, #2
	sub r3, r3, r4
	add r3, #8
	bl FUN_ov17_020f1c90
	add sp, #0x10
	pop {r4, pc}
_020F1F88: .word ov17_0210F444
_020F1F8C: .word ov17_021127C8
_020F1F90: .word ov17_02114C30
_020F1F94: .word ov17_021150D8
_020F1F98: .word ov17_02115164
	thumb_func_end FUN_ov17_020f1f00

	thumb_func_start FUN_ov17_020f1f9c
FUN_ov17_020f1f9c: ; 0x020F1F9C
	push {r3, lr}
	blx OS_GetMacAddress
	mov r0, #1
	pop {r3, pc}
	thumb_func_end FUN_ov17_020f1f9c

	thumb_func_start FUN_ov17_020f1fa8
FUN_ov17_020f1fa8: ; 0x020F1FA8
	push {r3, r4, lr}
	sub sp, #0x4c
	ldr r1, _020F2094 ; =0x02112888
	add r4, r0, #0
	ldrb r0, [r1]
	add r2, r4, #0
	add r2, #0xc
	strb r0, [r4, #0xc]
	ldrb r0, [r1, #1]
	strb r0, [r2, #1]
	ldrb r0, [r1, #2]
	strb r0, [r2, #2]
	ldrb r0, [r1, #3]
	add r1, sp, #4
	add r1, #2
	strb r0, [r2, #3]
	ldr r0, _020F2098 ; =0x021150E0
	ldrb r2, [r0]
	strb r2, [r1]
	ldrb r2, [r0, #1]
	strb r2, [r1, #1]
	ldrb r2, [r0, #2]
	strb r2, [r1, #2]
	ldrb r2, [r0, #3]
	strb r2, [r1, #3]
	ldrb r2, [r0, #4]
	ldrb r0, [r0, #5]
	strb r2, [r1, #4]
	strb r0, [r1, #5]
	add r1, sp, #0
	ldrb r2, [r1, #6]
	mov r0, #0xfd
	and r0, r2
	strb r0, [r1, #6]
	add r0, sp, #0
	bl FUN_ov17_020f1f9c
	add r1, sp, #0
	ldrb r2, [r1]
	ldr r0, _020F209C ; =0x021150D8
	strb r2, [r0]
	ldrb r2, [r1, #1]
	strb r2, [r0, #1]
	ldrb r2, [r1, #2]
	strb r2, [r0, #2]
	ldrb r2, [r1, #3]
	strb r2, [r0, #3]
	ldrb r2, [r1, #4]
	strb r2, [r0, #4]
	ldrb r2, [r1, #5]
	strb r2, [r0, #5]
	add r0, sp, #4
	add r0, #2
	mov r2, #6
	blx memcmp
	cmp r0, #0
	bgt _020F203C
	add r1, sp, #0
	ldrb r0, [r1]
	strb r0, [r4]
	ldrb r0, [r1, #1]
	strb r0, [r4, #1]
	ldrb r0, [r1, #2]
	strb r0, [r4, #2]
	ldrb r0, [r1, #3]
	strb r0, [r4, #3]
	ldrb r0, [r1, #4]
	strb r0, [r4, #4]
	ldrb r0, [r1, #5]
	add r1, sp, #4
	add r1, #2
	strb r0, [r4, #5]
	b _020F205A
_020F203C:
	add r1, sp, #4
	add r1, #2
	ldrb r0, [r1]
	strb r0, [r4]
	ldrb r0, [r1, #1]
	strb r0, [r4, #1]
	ldrb r0, [r1, #2]
	strb r0, [r4, #2]
	ldrb r0, [r1, #3]
	strb r0, [r4, #3]
	ldrb r0, [r1, #4]
	strb r0, [r4, #4]
	ldrb r0, [r1, #5]
	add r1, sp, #0
	strb r0, [r4, #5]
_020F205A:
	ldrb r0, [r1]
	strb r0, [r4, #6]
	ldrb r0, [r1, #1]
	strb r0, [r4, #7]
	ldrb r0, [r1, #2]
	strb r0, [r4, #8]
	ldrb r0, [r1, #3]
	strb r0, [r4, #9]
	ldrb r0, [r1, #4]
	strb r0, [r4, #0xa]
	ldrb r0, [r1, #5]
	strb r0, [r4, #0xb]
	ldr r0, _020F20A0 ; =0x021127C8
	ldr r0, [r0, #4]
	cmp r0, #0
	beq _020F208C
	add r0, sp, #0x2c
	add r1, sp, #0
	bl FUN_ov17_020f42b8
	add r1, sp, #4
	add r0, sp, #0xc
	add r1, #2
	bl FUN_ov17_020f42b8
_020F208C:
	mov r0, #1
	add sp, #0x4c
	pop {r3, r4, pc}
	nop
_020F2094: .word ov17_02112888
_020F2098: .word ov17_021150E0
_020F209C: .word ov17_021150D8
_020F20A0: .word ov17_021127C8
	thumb_func_end FUN_ov17_020f1fa8

	thumb_func_start FUN_ov17_020f20a4
FUN_ov17_020f20a4: ; 0x020F20A4
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x18
	add r1, r0, #0
	str r1, [sp, #4]
	add r1, #8
	str r1, [sp, #4]
	str r1, [sp, #0x14]
	mov r1, #0
	str r1, [sp]
	ldrh r1, [r0]
	add r3, sp, #0xc
	asr r0, r1, #8
	lsl r0, r0, #0x18
	lsr r2, r0, #0x18
	mov r0, #0xff
	lsl r1, r1, #8
	lsl r0, r0, #8
	and r0, r1
	orr r0, r2
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	str r0, [sp, #8]
	ldr r2, [sp, #4]
	ldr r1, [sp, #8]
	add r0, sp, #0x14
	add r1, r2, r1
	add r2, sp, #0x10
	bl FUN_ov17_020f1c0c
	add r5, r0, #0
	bne _020F20E4
	b _020F2254
_020F20E4:
	ldr r2, [sp, #0x10]
	ldr r0, _020F225C ; =0x00000201
	sub r1, r2, r0
	cmp r1, #9
	bhi _020F2172
	add r1, r1, r1
	add r1, pc
	ldrh r1, [r1, #6]
	lsl r1, r1, #0x10
	asr r1, r1, #0x10
	add pc, r1
_020F20FA: ; jump table
	.short _020F210E - _020F20FA - 2 ; case 0
	.short _020F212E - _020F20FA - 2 ; case 1
	.short _020F214A - _020F20FA - 2 ; case 2
	.short _020F2174 - _020F20FA - 2 ; case 3
	.short _020F219E - _020F20FA - 2 ; case 4
	.short _020F21BA - _020F20FA - 2 ; case 5
	.short _020F21BA - _020F20FA - 2 ; case 6
	.short _020F21BA - _020F20FA - 2 ; case 7
	.short _020F21BA - _020F20FA - 2 ; case 8
	.short _020F221A - _020F20FA - 2 ; case 9
_020F210E:
	ldr r3, _020F2260 ; =0x02114F84
	mov r0, #0
	add r2, r3, #0
	add r1, r0, #0
	stmia r2!, {r0, r1}
	stmia r2!, {r0, r1}
	stmia r2!, {r0, r1}
	stmia r2!, {r0, r1}
	ldr r2, [sp, #0xc]
	add r0, r3, #0
	add r1, r5, #0
	blx memcpy
	mov r0, #1
	str r0, [sp]
	b _020F223E
_020F212E:
	ldrh r1, [r5]
	asr r0, r1, #8
	lsl r0, r0, #0x18
	lsr r2, r0, #0x18
	mov r0, #0xff
	lsl r1, r1, #8
	lsl r0, r0, #8
	and r0, r1
	orr r0, r2
	lsl r0, r0, #0x10
	lsr r1, r0, #0x10
	ldr r0, _020F2264 ; =0x02114FB0
	str r1, [r0]
	b _020F223E
_020F214A:
	ldrh r3, [r5]
	ldr r1, _020F2268 ; =0x02114E84
	mov r0, #0
	asr r2, r3, #8
	lsl r2, r2, #0x18
	lsr r4, r2, #0x18
	mov r2, #0xff
	lsl r3, r3, #8
	lsl r2, r2, #8
	and r2, r3
	orr r2, r4
	lsl r2, r2, #0x10
	lsr r3, r2, #0x10
	mov r2, #0x57
	lsl r2, r2, #2
_020F2168:
	add r0, r0, #1
	str r3, [r1, r2]
	add r1, #0x28
	cmp r0, #4
	blt _020F2168
_020F2172:
	b _020F223E
_020F2174:
	ldrh r3, [r5]
	ldr r0, _020F2268 ; =0x02114E84
	mov r1, #0
	asr r2, r3, #8
	lsl r2, r2, #0x18
	lsr r4, r2, #0x18
	mov r2, #0xff
	lsl r3, r3, #8
	lsl r2, r2, #8
	and r2, r3
	orr r2, r4
	lsl r2, r2, #0x10
	lsr r3, r2, #0x10
	mov r2, #0x16
	lsl r2, r2, #4
_020F2192:
	add r1, r1, #1
	str r3, [r0, r2]
	add r0, #0x28
	cmp r1, #4
	blt _020F2192
	b _020F223E
_020F219E:
	ldrh r1, [r5]
	asr r0, r1, #8
	lsl r0, r0, #0x18
	lsr r2, r0, #0x18
	mov r0, #0xff
	lsl r1, r1, #8
	lsl r0, r0, #8
	and r0, r1
	orr r0, r2
	lsl r0, r0, #0x10
	lsr r1, r0, #0x10
	ldr r0, _020F2264 ; =0x02114FB0
	str r1, [r0, #4]
	b _020F223E
_020F21BA:
	add r0, r0, #5
	sub r2, r2, r0
	mov r0, #0x28
	mul r0, r2
	ldr r1, _020F226C ; =0x02114FE8
	mov r2, #0x20
	add r0, r1, r0
	mov r1, #0
	blx memset
	ldr r0, _020F2264 ; =0x02114FB0
	ldr r1, _020F2270 ; =0x00000206
	ldr r0, [r0, #0x30]
	cmp r0, #1
	bne _020F2204
	ldr r2, [sp, #0x10]
	ldr r0, _020F226C ; =0x02114FE8
	sub r2, r2, r1
	mov r1, #0x28
	mul r1, r2
	add r4, r0, r1
	ldr r0, [sp, #0xc]
	mov r6, #0
	cmp r0, #0
	ble _020F223E
	add r7, r6, #0
_020F21EE:
	ldrsb r1, [r5, r7]
	add r0, r4, #0
	add r5, r5, #1
	bl FUN_ov17_020f4284
	add r4, r4, r0
	ldr r0, [sp, #0xc]
	add r6, r6, #1
	cmp r6, r0
	blt _020F21EE
	b _020F223E
_020F2204:
	ldr r2, [sp, #0x10]
	ldr r0, _020F226C ; =0x02114FE8
	sub r2, r2, r1
	mov r1, #0x28
	mul r1, r2
	add r0, r0, r1
	ldr r2, [sp, #0xc]
	add r1, r5, #0
	blx memcpy
	b _020F223E
_020F221A:
	ldr r3, _020F2274 ; =0x02115080
	mov r0, #0
	add r2, r3, #0
	add r1, r0, #0
	stmia r2!, {r0, r1}
	stmia r2!, {r0, r1}
	stmia r2!, {r0, r1}
	stmia r2!, {r0, r1}
	stmia r2!, {r0, r1}
	stmia r2!, {r0, r1}
	stmia r2!, {r0, r1}
	stmia r2!, {r0, r1}
	stmia r2!, {r0, r1}
	ldr r2, [sp, #0xc]
	add r0, r3, #0
	add r1, r5, #0
	blx memcpy
_020F223E:
	ldr r2, [sp, #4]
	ldr r1, [sp, #8]
	add r0, sp, #0x14
	add r1, r2, r1
	add r2, sp, #0x10
	add r3, sp, #0xc
	bl FUN_ov17_020f1c0c
	add r5, r0, #0
	beq _020F2254
	b _020F20E4
_020F2254:
	ldr r0, [sp]
	add sp, #0x18
	pop {r3, r4, r5, r6, r7, pc}
	nop
_020F225C: .word 0x00000201
_020F2260: .word ov17_02114F84
_020F2264: .word ov17_02114FB0
_020F2268: .word ov17_02114E84
_020F226C: .word ov17_02114FE8
_020F2270: .word 0x00000206
_020F2274: .word ov17_02115080
	thumb_func_end FUN_ov17_020f20a4

	thumb_func_start FUN_ov17_020f2278
FUN_ov17_020f2278: ; 0x020F2278
	push {r4, r5, r6, r7}
	add r4, r2, #0
	mov r2, #0
	add r5, r1, #0
	add r3, r2, #0
	cmp r4, #0
	ble _020F2326
	mov r7, #0x1f
_020F2288:
	ldrsb r1, [r5, r3]
	cmp r1, #0x63
	bgt _020F22DE
	bge _020F22F6
	cmp r1, #0x61
	bgt _020F22D8
	bge _020F22F6
	add r6, r1, #0
	sub r6, #0x30
	cmp r6, #0x16
	bhi _020F2302
	add r6, r6, r6
	add r6, pc
	ldrh r6, [r6, #6]
	lsl r6, r6, #0x10
	asr r6, r6, #0x10
	add pc, r6
_020F22AA: ; jump table
	.short _020F22F0 - _020F22AA - 2 ; case 0
	.short _020F22F0 - _020F22AA - 2 ; case 1
	.short _020F22F0 - _020F22AA - 2 ; case 2
	.short _020F22F0 - _020F22AA - 2 ; case 3
	.short _020F22F0 - _020F22AA - 2 ; case 4
	.short _020F22F0 - _020F22AA - 2 ; case 5
	.short _020F22F0 - _020F22AA - 2 ; case 6
	.short _020F22F0 - _020F22AA - 2 ; case 7
	.short _020F22F0 - _020F22AA - 2 ; case 8
	.short _020F22F0 - _020F22AA - 2 ; case 9
	.short _020F2302 - _020F22AA - 2 ; case 10
	.short _020F2302 - _020F22AA - 2 ; case 11
	.short _020F2302 - _020F22AA - 2 ; case 12
	.short _020F2302 - _020F22AA - 2 ; case 13
	.short _020F2302 - _020F22AA - 2 ; case 14
	.short _020F2302 - _020F22AA - 2 ; case 15
	.short _020F2302 - _020F22AA - 2 ; case 16
	.short _020F22FC - _020F22AA - 2 ; case 17
	.short _020F22FC - _020F22AA - 2 ; case 18
	.short _020F22FC - _020F22AA - 2 ; case 19
	.short _020F22FC - _020F22AA - 2 ; case 20
	.short _020F22FC - _020F22AA - 2 ; case 21
	.short _020F22FC - _020F22AA - 2 ; case 22
_020F22D8:
	cmp r1, #0x62
	beq _020F22F6
	b _020F2302
_020F22DE:
	cmp r1, #0x65
	bgt _020F22EA
	bge _020F22F6
	cmp r1, #0x64
	beq _020F22F6
	b _020F2302
_020F22EA:
	cmp r1, #0x66
	beq _020F22F6
	b _020F2302
_020F22F0:
	sub r1, #0x30
	add r2, r2, r1
	b _020F2308
_020F22F6:
	sub r1, #0x57
	add r2, r2, r1
	b _020F2308
_020F22FC:
	sub r1, #0x37
	add r2, r2, r1
	b _020F2308
_020F2302:
	mov r0, #0
	pop {r4, r5, r6, r7}
	bx lr
_020F2308:
	lsr r6, r3, #0x1f
	lsl r1, r3, #0x1f
	sub r1, r1, r6
	ror r1, r7
	add r1, r6, r1
	bne _020F2318
	lsl r2, r2, #4
	b _020F2320
_020F2318:
	add r6, r3, r6
	asr r1, r6, #1
	strb r2, [r0, r1]
	mov r2, #0
_020F2320:
	add r3, r3, #1
	cmp r3, r4
	blt _020F2288
_020F2326:
	mov r0, #1
	pop {r4, r5, r6, r7}
	bx lr
	thumb_func_end FUN_ov17_020f2278

	thumb_func_start FUN_ov17_020f232c
FUN_ov17_020f232c: ; 0x020F232C
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x28
	mov r0, #1
	str r0, [sp]
	ldr r0, _020F2494 ; =0x02114D9C
	ldr r1, _020F2498 ; =0x02114F84
	blx strcpy
	ldr r1, _020F249C ; =0x02114FB0
	ldr r0, [r1]
	cmp r0, #3
	bls _020F2346
	b _020F2486
_020F2346:
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_020F2352: ; jump table
	.short _020F235A - _020F2352 - 2 ; case 0
	.short _020F2362 - _020F2352 - 2 ; case 1
	.short _020F245A - _020F2352 - 2 ; case 2
	.short _020F2470 - _020F2352 - 2 ; case 3
_020F235A:
	ldr r0, _020F24A0 ; =0x02114DB0
	mov r1, #0
	str r1, [r0, #0xc]
	b _020F248C
_020F2362:
	ldr r1, [r1, #4]
	cmp r1, #0
	bne _020F2370
	mov r0, #6
	mvn r0, r0
	str r0, [sp]
	b _020F248C
_020F2370:
	ldr r0, _020F24A0 ; =0x02114DB0
	ldr r6, _020F24A4 ; =0x02114FE8
	ldr r5, _020F24A8 ; =0x02114DC4
	str r1, [r0, #0x10]
	mov r7, #0
	add r4, sp, #4
_020F237C:
	add r0, sp, #4
	add r1, r6, #0
	mov r2, #0x20
	blx memcpy
	mov r1, #0
	add r0, sp, #0x24
	strb r1, [r0]
	add r0, sp, #4
	blx strlen
	cmp r0, #0x10
	bhi _020F23B4
	cmp r0, #0xa
	blo _020F23A6
	beq _020F23DE
	cmp r0, #0xd
	beq _020F23F0
	cmp r0, #0x10
	beq _020F241C
	b _020F2448
_020F23A6:
	cmp r0, #0
	bhi _020F23AE
	beq _020F244E
	b _020F2448
_020F23AE:
	cmp r0, #5
	beq _020F23C2
	b _020F2448
_020F23B4:
	cmp r0, #0x1a
	bhi _020F23BC
	beq _020F240A
	b _020F2448
_020F23BC:
	cmp r0, #0x20
	beq _020F2436
	b _020F2448
_020F23C2:
	ldr r0, _020F24A0 ; =0x02114DB0
	mov r1, #1
	str r1, [r0, #0xc]
	ldrb r0, [r4]
	strb r0, [r5]
	ldrb r0, [r4, #1]
	strb r0, [r5, #1]
	ldrb r0, [r4, #2]
	strb r0, [r5, #2]
	ldrb r0, [r4, #3]
	strb r0, [r5, #3]
	ldrb r0, [r4, #4]
	strb r0, [r5, #4]
	b _020F244E
_020F23DE:
	ldr r0, _020F24A0 ; =0x02114DB0
	mov r1, #1
	str r1, [r0, #0xc]
	add r0, r5, #0
	add r1, r4, #0
	mov r2, #0xa
	bl FUN_ov17_020f2278
	b _020F244E
_020F23F0:
	ldr r0, _020F24A0 ; =0x02114DB0
	mov r1, #2
	str r1, [r0, #0xc]
	add r3, r4, #0
	add r2, r5, #0
	mov r1, #0xd
_020F23FC:
	ldrb r0, [r3]
	add r3, r3, #1
	strb r0, [r2]
	add r2, r2, #1
	sub r1, r1, #1
	bne _020F23FC
	b _020F244E
_020F240A:
	ldr r0, _020F24A0 ; =0x02114DB0
	mov r1, #2
	str r1, [r0, #0xc]
	add r0, r5, #0
	add r1, r4, #0
	mov r2, #0x1a
	bl FUN_ov17_020f2278
	b _020F244E
_020F241C:
	ldr r0, _020F24A0 ; =0x02114DB0
	mov r1, #3
	str r1, [r0, #0xc]
	add r3, r4, #0
	add r2, r5, #0
	mov r1, #0x10
_020F2428:
	ldrb r0, [r3]
	add r3, r3, #1
	strb r0, [r2]
	add r2, r2, #1
	sub r1, r1, #1
	bne _020F2428
	b _020F244E
_020F2436:
	ldr r0, _020F24A0 ; =0x02114DB0
	mov r1, #3
	str r1, [r0, #0xc]
	add r0, r5, #0
	add r1, r4, #0
	mov r2, #0x20
	bl FUN_ov17_020f2278
	b _020F244E
_020F2448:
	mov r0, #6
	mvn r0, r0
	str r0, [sp]
_020F244E:
	add r7, r7, #1
	add r6, #0x28
	add r5, #0x20
	cmp r7, #4
	blt _020F237C
	b _020F248C
_020F245A:
	ldr r0, _020F24A0 ; =0x02114DB0
	mov r1, #4
	ldr r4, _020F24AC ; =0x02114E44
	ldr r3, _020F24B0 ; =0x02115080
	str r1, [r0, #0xc]
	mov r2, #8
_020F2466:
	ldmia r3!, {r0, r1}
	stmia r4!, {r0, r1}
	sub r2, r2, #1
	bne _020F2466
	b _020F248C
_020F2470:
	ldr r0, _020F24A0 ; =0x02114DB0
	mov r1, #5
	ldr r4, _020F24AC ; =0x02114E44
	ldr r3, _020F24B0 ; =0x02115080
	str r1, [r0, #0xc]
	mov r2, #8
_020F247C:
	ldmia r3!, {r0, r1}
	stmia r4!, {r0, r1}
	sub r2, r2, #1
	bne _020F247C
	b _020F248C
_020F2486:
	mov r0, #6
	mvn r0, r0
	str r0, [sp]
_020F248C:
	ldr r0, [sp]
	add sp, #0x28
	pop {r3, r4, r5, r6, r7, pc}
	nop
_020F2494: .word ov17_02114D9C
_020F2498: .word ov17_02114F84
_020F249C: .word ov17_02114FB0
_020F24A0: .word ov17_02114DB0
_020F24A4: .word ov17_02114FE8
_020F24A8: .word ov17_02114DC4
_020F24AC: .word ov17_02114E44
_020F24B0: .word ov17_02115080
	thumb_func_end FUN_ov17_020f232c

	thumb_func_start FUN_ov17_020f24b4
FUN_ov17_020f24b4: ; 0x020F24B4
	push {r4, r5, r6, r7, lr}
	sub sp, #0x2c
	mov r4, #0
	sub r0, r4, #5
	str r0, [sp, #8]
	ldr r0, _020F27FC ; =0x02114C30
	mov r1, #1
	str r4, [sp, #0xc]
	str r4, [sp, #4]
	add r6, r4, #0
	str r1, [r0, #0x1c]
	b _020F2866
_020F24CC:
	mov r0, #0x7d
	lsl r0, r0, #2
	blx OS_Sleep
	ldr r0, _020F27FC ; =0x02114C30
	ldr r0, [r0, #0x1c]
	cmp r0, #0xa
	bls _020F24DE
	b _020F2866
_020F24DE:
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_020F24EA: ; jump table
	.short _020F2866 - _020F24EA - 2 ; case 0
	.short _020F2500 - _020F24EA - 2 ; case 1
	.short _020F2520 - _020F24EA - 2 ; case 2
	.short _020F2536 - _020F24EA - 2 ; case 3
	.short _020F2584 - _020F24EA - 2 ; case 4
	.short _020F25EC - _020F24EA - 2 ; case 5
	.short _020F2610 - _020F24EA - 2 ; case 6
	.short _020F26BA - _020F24EA - 2 ; case 7
	.short _020F2716 - _020F24EA - 2 ; case 8
	.short _020F279E - _020F24EA - 2 ; case 9
	.short _020F283C - _020F24EA - 2 ; case 10
_020F2500:
	bl FUN_ov17_020f18a8
	str r0, [sp, #8]
	cmp r0, #1
	beq _020F250E
	mov r6, #1
	b _020F2866
_020F250E:
	ldr r0, _020F27FC ; =0x02114C30
	mov r1, #3
	str r1, [r0, #0x38]
	bl FUN_ov17_020f44b4
	ldr r0, _020F27FC ; =0x02114C30
	mov r1, #2
	str r1, [r0, #0x1c]
	b _020F2866
_020F2520:
	bl FUN_ov17_020f1554
	str r0, [sp, #8]
	cmp r0, #1
	beq _020F252E
	mov r6, #1
	b _020F2866
_020F252E:
	ldr r0, _020F27FC ; =0x02114C30
	mov r1, #3
	str r1, [r0, #0x1c]
	b _020F2866
_020F2536:
	mov r0, #2
	add r1, r0, #0
	mov r2, #0
	blx  SOC_Socket
	add r4, r0, #0
	bpl _020F254E
	mov r0, #1
	mvn r0, r0
	str r0, [sp, #8]
	mov r6, #1
	b _020F2866
_020F254E:
	add r5, sp, #0x24
	mov r1, #0
	str r1, [r5]
	str r1, [r5, #4]
	mov r3, #8
	add r2, sp, #0x10
	strb r3, [r2, #0x14]
	mov r3, #2
	strb r3, [r2, #0x15]
	ldr r3, _020F2800 ; =0x000001E6
	strh r3, [r2, #0x16]
	str r1, [sp, #0x28]
	add r1, r5, #0
	blx  SOC_Bind
	str r0, [sp, #8]
	cmp r0, #0
	bge _020F257C
	mov r0, #1
	mvn r0, r0
	str r0, [sp, #8]
	mov r6, #1
	b _020F2866
_020F257C:
	ldr r0, _020F27FC ; =0x02114C30
	mov r1, #4
	str r1, [r0, #0x1c]
	b _020F2866
_020F2584:
	bl FUN_ov17_020f4234
	ldr r1, _020F2804 ; =0x021127C8
	ldr r1, [r1, #0xc]
	cmp r0, r1
	blo _020F25A0
	add r0, r4, #0
	blx  SOC_Close
	mov r0, #2
	mvn r0, r0
	str r0, [sp, #8]
	mov r6, #1
	b _020F2866
_020F25A0:
	mov r1, #8
	add r0, sp, #0x10
	strb r1, [r0, #0xc]
	ldr r0, _020F2808 ; =0x021150F0
	add r1, sp, #0x1c
	bl FUN_ov17_020f1fa8
	add r0, sp, #0x1c
	mov r2, #2
	str r0, [sp]
	ldr r1, _020F280C ; =0x02115964
	add r0, r4, #0
	lsl r2, r2, #0xa
	mov r3, #4
	blx  SOC_RecvFrom
	cmp r0, #0
	ble _020F269E
	ldr r0, _020F280C ; =0x02115964
	ldr r1, _020F2810 ; =0x02114C80
	bl FUN_ov17_020f1ddc
	cmp r0, #0
	beq _020F269E
	bl FUN_ov17_020f4234
	ldr r1, _020F2814 ; =0x00007530
	add r1, r0, r1
	ldr r0, _020F2804 ; =0x021127C8
	str r1, [r0, #0xc]
	ldr r0, _020F27FC ; =0x02114C30
	mov r1, #5
	str r1, [r0, #0x1c]
	mov r1, #4
	str r1, [r0, #0x38]
	bl FUN_ov17_020f44b4
	b _020F2866
_020F25EC:
	ldr r0, _020F280C ; =0x02115964
	bl FUN_ov17_020f1f00
	add r3, r0, #0
	ldr r0, _020F27FC ; =0x02114C30
	ldr r2, _020F280C ; =0x02115964
	str r3, [r0, #0x14]
	add r0, r4, #0
	add r1, sp, #0x1c
	bl FUN_ov17_020f1b90
	bl FUN_ov17_020f4234
	str r0, [sp, #0xc]
	ldr r0, _020F27FC ; =0x02114C30
	mov r1, #6
	str r1, [r0, #0x1c]
	b _020F2866
_020F2610:
	bl FUN_ov17_020f4234
	ldr r1, _020F2804 ; =0x021127C8
	ldr r1, [r1, #0xc]
	cmp r0, r1
	blo _020F262C
	add r0, r4, #0
	blx  SOC_Close
	mov r0, #3
	mvn r0, r0
	str r0, [sp, #8]
	mov r6, #1
	b _020F2866
_020F262C:
	add r0, sp, #0x1c
	mov r2, #2
	str r0, [sp]
	ldr r1, _020F280C ; =0x02115964
	add r0, r4, #0
	lsl r2, r2, #0xa
	mov r3, #4
	blx  SOC_RecvFrom
	cmp r0, #0
	ble _020F26A0
	ldr r0, _020F280C ; =0x02115964
	ldr r2, _020F2818 ; =0x02115164
	ldr r3, _020F2808 ; =0x021150F0
	mov r1, #3
	bl FUN_ov17_020f1eb0
	cmp r0, #0
	beq _020F26A0
	ldr r0, _020F2818 ; =0x02115164
	add r1, sp, #0x18
	add r2, sp, #0x14
	bl FUN_ov17_020f1c5c
	add r5, r0, #0
	ldr r1, [sp, #0x18]
	ldr r0, _020F281C ; =0x00000101
	cmp r1, r0
	bne _020F269E
	bl FUN_ov17_020f4234
	ldr r2, _020F2820 ; =0x02115100
	str r0, [sp, #0x10]
	mov r1, #8
_020F2670:
	ldrb r0, [r5]
	add r5, r5, #1
	strb r0, [r2]
	add r2, r2, #1
	sub r1, r1, #1
	bne _020F2670
	ldr r0, _020F2824 ; =0x02115108
	add r1, sp, #0x10
	mov r2, #4
	bl FUN_ov17_020f420c
	mov r0, #0
	str r0, [sp, #4]
	ldr r0, _020F27FC ; =0x02114C30
	mov r1, #7
	str r1, [r0, #0x1c]
	mov r1, #5
	str r1, [r0, #0x38]
	ldr r0, _020F2804 ; =0x021127C8
	sub r1, r1, #6
	str r1, [r0, #0xc]
	bl FUN_ov17_020f44b4
_020F269E:
	b _020F2866
_020F26A0:
	bl FUN_ov17_020f4234
	mov r2, #0xfa
	ldr r1, [sp, #0xc]
	lsl r2, r2, #2
	add r1, r1, r2
	cmp r0, r1
	bhs _020F26B2
	b _020F2866
_020F26B2:
	ldr r0, _020F27FC ; =0x02114C30
	mov r1, #5
	str r1, [r0, #0x1c]
	b _020F2866
_020F26BA:
	ldr r0, _020F2818 ; =0x02115164
	ldr r1, _020F2828 ; =0x00000102
	ldr r2, _020F2824 ; =0x02115108
	mov r3, #8
	bl FUN_ov17_020f1db4
	ldr r3, _020F27FC ; =0x02114C30
	ldr r2, _020F2818 ; =0x02115164
	str r0, [r3, #0x34]
	ldr r0, _020F2808 ; =0x021150F0
	mov r1, #4
	str r0, [sp]
	ldr r0, _020F280C ; =0x02115964
	ldr r3, [r3, #0x34]
	bl FUN_ov17_020f1c90
	add r3, r0, #0
	ldr r0, _020F27FC ; =0x02114C30
	ldr r2, _020F280C ; =0x02115964
	str r3, [r0, #0x14]
	add r0, r4, #0
	add r1, sp, #0x1c
	bl FUN_ov17_020f1b90
	bl FUN_ov17_020f4234
	str r0, [sp, #0xc]
	mov r0, #0
	mov r5, #0x12
	ldr r7, _020F282C ; =0x02114E84
	add r1, r0, #0
	add r2, r0, #0
	add r3, r0, #0
	mov r12, r5
_020F26FE:
	stmia r7!, {r0, r1, r2, r3}
	mov r5, r12
	sub r5, r5, #1
	stmia r7!, {r0, r1, r2, r3}
	mov r12, r5
	bne _020F26FE
	stmia r7!, {r0, r1, r2, r3}
	str r0, [r7]
	ldr r0, _020F27FC ; =0x02114C30
	mov r1, #8
	str r1, [r0, #0x1c]
	b _020F2866
_020F2716:
	add r0, sp, #0x1c
	mov r2, #2
	str r0, [sp]
	ldr r1, _020F280C ; =0x02115964
	add r0, r4, #0
	lsl r2, r2, #0xa
	mov r3, #4
	blx  SOC_RecvFrom
	cmp r0, #0
	ble _020F276C
	ldr r0, _020F280C ; =0x02115964
	ldr r2, _020F2818 ; =0x02115164
	ldr r3, _020F2820 ; =0x02115100
	mov r1, #5
	bl FUN_ov17_020f1eb0
	ldr r1, _020F27FC ; =0x02114C30
	cmp r0, #0
	str r0, [r1, #0x34]
	beq _020F276C
	ldr r0, _020F2818 ; =0x02115164
	bl FUN_ov17_020f20a4
	cmp r0, #0
	beq _020F276C
	ldr r1, _020F2830 ; =0x02114F70
	mov r0, #0x14
	ldrsb r0, [r1, r0]
	cmp r0, #0
	beq _020F275A
	mov r1, #1
	ldr r0, _020F27FC ; =0x02114C30
	b _020F275E
_020F275A:
	ldr r0, _020F27FC ; =0x02114C30
	mov r1, #0
_020F275E:
	strb r1, [r0]
	mov r0, #0
	str r0, [sp, #4]
	ldr r0, _020F27FC ; =0x02114C30
	mov r1, #9
	str r1, [r0, #0x1c]
	b _020F2866
_020F276C:
	bl FUN_ov17_020f4234
	mov r2, #0xfa
	ldr r1, [sp, #0xc]
	lsl r2, r2, #2
	add r1, r1, r2
	cmp r0, r1
	blo _020F2866
	ldr r0, [sp, #4]
	add r0, r0, #1
	str r0, [sp, #4]
	cmp r0, #0xa
	blt _020F2796
	add r0, r4, #0
	blx  SOC_Close
	mov r0, #1
	mvn r0, r0
	str r0, [sp, #8]
	mov r6, #1
	b _020F2866
_020F2796:
	ldr r0, _020F27FC ; =0x02114C30
	mov r1, #7
	str r1, [r0, #0x1c]
	b _020F2866
_020F279E:
	ldr r0, _020F2818 ; =0x02115164
	ldr r1, _020F2834 ; =0x00000301
	ldr r2, _020F2838 ; =0x02114C30
	mov r3, #1
	bl FUN_ov17_020f1db4
	ldr r3, _020F27FC ; =0x02114C30
	ldr r2, _020F2818 ; =0x02115164
	str r0, [r3, #0x34]
	ldr r0, _020F2820 ; =0x02115100
	mov r1, #6
	str r0, [sp]
	ldr r0, _020F280C ; =0x02115964
	ldr r3, [r3, #0x34]
	bl FUN_ov17_020f1c90
	ldr r1, _020F27FC ; =0x02114C30
	str r0, [r1, #0x14]
	bl FUN_ov17_020f1358
	cmp r0, #7
	beq _020F27E0
	bl FUN_ov17_020f4234
	mov r1, #0xfa
	lsl r1, r1, #2
	add r0, r0, r1
	str r0, [sp, #0xc]
	mov r0, #0xa
	ldr r1, _020F27FC ; =0x02114C30
	str r0, [sp, #4]
	str r0, [r1, #0x1c]
	b _020F2866
_020F27E0:
	ldr r3, _020F27FC ; =0x02114C30
	ldr r2, _020F280C ; =0x02115964
	ldr r3, [r3, #0x14]
	add r0, r4, #0
	add r1, sp, #0x1c
	bl FUN_ov17_020f1b90
	bl FUN_ov17_020f4234
	str r0, [sp, #0xc]
	ldr r0, _020F27FC ; =0x02114C30
	mov r1, #0xa
	str r1, [r0, #0x1c]
	b _020F2866
_020F27FC: .word ov17_02114C30
_020F2800: .word 0x000001E6
_020F2804: .word ov17_021127C8
_020F2808: .word ov17_021150F0
_020F280C: .word ov17_02115964
_020F2810: .word ov17_02114C80
_020F2814: .word 0x00007530
_020F2818: .word ov17_02115164
_020F281C: .word 0x00000101
_020F2820: .word ov17_02115100
_020F2824: .word ov17_02115108
_020F2828: .word 0x00000102
_020F282C: .word ov17_02114E84
_020F2830: .word ov17_02114F70
_020F2834: .word 0x00000301
_020F2838: .word ov17_02114C30
_020F283C:
	bl FUN_ov17_020f4234
	mov r2, #0xfa
	ldr r1, [sp, #0xc]
	lsl r2, r2, #2
	add r1, r1, r2
	cmp r0, r1
	blo _020F2866
	ldr r0, [sp, #4]
	add r0, r0, #1
	str r0, [sp, #4]
	cmp r0, #0xa
	blt _020F2860
	mov r6, #1
	bl FUN_ov17_020f232c
	str r0, [sp, #8]
	b _020F2866
_020F2860:
	ldr r0, _020F2894 ; =0x02114C30
	mov r1, #9
	str r1, [r0, #0x1c]
_020F2866:
	cmp r6, #0
	bne _020F2874
	ldr r0, _020F2894 ; =0x02114C30
	ldr r0, [r0, #0x10]
	cmp r0, #0
	bne _020F2874
	b _020F24CC
_020F2874:
	cmp r4, #0
	beq _020F287E
	add r0, r4, #0
	blx  SOC_Close
_020F287E:
	ldr r0, _020F2894 ; =0x02114C30
	ldr r0, [r0, #0x10]
	cmp r0, #0
	beq _020F288C
	mov r0, #7
	mvn r0, r0
	str r0, [sp, #8]
_020F288C:
	ldr r0, [sp, #8]
	add sp, #0x2c
	pop {r4, r5, r6, r7, pc}
	nop
_020F2894: .word ov17_02114C30
	thumb_func_end FUN_ov17_020f24b4

	thumb_func_start FUN_ov17_020f2898
FUN_ov17_020f2898:
	push {r4, lr}
	bl FUN_ov17_020f24b4
	add r4, r0, #0x0
	ldr r0, _020F28C8 ; =0x02114C30
	str r4, [r0, #0x78]
	bl FUN_ov17_020f1678
	cmp r4, #0x1
	bne _020F28B2
	mov r1, #0x6
	ldr r0, _020F28C8 ; =0x02114C30
	b _020F28B6
_020F28B2:
	ldr r0, _020F28C8 ; =0x02114C30
	mov r1, #0x7
_020F28B6:
	str r1, [r0, #0x38]
	mov r1, #0x0
	ldr r0, _020F28CC ; =0x021127C8
	mvn r1, r1
	str r1, [r0, #0xc]
	bl FUN_ov17_020f44b4
	pop {r4, pc}
	nop
_020F28C8: .word ov17_02114C30
_020F28CC: .word ov17_021127C8
	thumb_func_end FUN_ov17_020f2898

	thumb_func_start FUN_ov17_020f28d0
FUN_ov17_020f28d0: ; 0x020F28D0
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x1a8
	str r0, [sp]
	ldr r0, _020F2A84 ; =0xA6A6A6A6
	add r4, r2, #0
	add r5, r1, #0
	str r0, [sp, #0x48]
	str r0, [sp, #0x4c]
	mov r0, #7
	add r1, r4, #0
	tst r1, r0
	bne _020F28EE
	ldr r2, [sp, #0x1c0]
	tst r0, r2
	beq _020F28F4
_020F28EE:
	add sp, #0x1a8
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
_020F28F4:
	lsr r0, r4, #3
	str r0, [sp, #0x14]
	cmp r0, #2
	bge _020F2902
	add sp, #0x1a8
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
_020F2902:
	add r0, sp, #0x68
	add r1, r3, #0
	lsl r2, r2, #3
	bl FUN_ov17_020f2c88
	str r0, [sp, #0x1c]
	ldr r0, [sp]
	add r1, r5, #0
	add r0, #8
	add r2, r4, #0
	blx memcpy
	add r3, sp, #0x58
	add r2, sp, #0x48
	mov r1, #8
_020F2920:
	ldrb r0, [r2]
	add r2, r2, #1
	strb r0, [r3]
	add r3, r3, #1
	sub r1, r1, #1
	bne _020F2920
	mov r0, #0
	str r0, [sp, #0x20]
	ldr r0, [sp, #0x14]
	asr r0, r0, #0x1f
	str r0, [sp, #0x18]
_020F2936:
	ldr r0, [sp, #0x14]
	mov r4, #1
	cmp r0, #1
	bge _020F2940
	b _020F2A5C
_020F2940:
	ldr r2, [sp, #0x20]
	ldr r1, [sp, #0x18]
	asr r3, r2, #0x1f
	blx __llmul
	str r0, [sp, #0xc]
	mov r0, #0
	str r1, [sp, #8]
	str r0, [sp, #0x28]
	mov r0, #0
	mov r1, #0
	str r0, [sp, #0x30]
	add r0, r1, #0
	orr r0, r1
	str r0, [sp, #0x40]
_020F295E:
	ldr r0, [sp]
	lsl r1, r4, #3
	add r5, r0, r1
	add r3, r5, #0
	add r2, sp, #0x60
	mov r1, #8
_020F296A:
	ldrb r0, [r3]
	add r3, r3, #1
	strb r0, [r2]
	add r2, r2, #1
	sub r1, r1, #1
	bne _020F296A
	add r2, sp, #0x58
	ldr r1, [sp, #0x1c]
	add r0, sp, #0x68
	add r3, r2, #0
	bl FUN_ov17_020f30d0
	ldr r0, [sp, #0xc]
	asr r1, r4, #0x1f
	add r3, r4, r0
	ldr r0, [sp, #8]
	adc r1, r0
	mov r0, #0xff
	lsl r0, r0, #0x18
	and r0, r1
	lsr r0, r0, #0x18
	str r0, [sp, #0x24]
	mov r0, #0xff
	lsl r0, r0, #0x10
	and r0, r1
	lsr r0, r0, #8
	str r0, [sp, #0x2c]
	mov r0, #0xff
	lsl r0, r0, #8
	mov r2, #0
	and r0, r1
	and r2, r3
	lsl r6, r0, #8
	lsr r2, r2, #0x18
	str r2, [sp, #0x34]
	orr r2, r6
	lsr r0, r0, #0x18
	str r2, [sp, #0x34]
	str r0, [sp, #0x38]
	mov r0, #0xff
	mov r2, #0
	and r0, r1
	and r2, r3
	lsl r6, r0, #0x18
	lsr r2, r2, #8
	str r2, [sp, #0x44]
	orr r2, r6
	lsr r0, r0, #8
	str r2, [sp, #0x44]
	str r0, [sp, #0x3c]
	mov r0, #0
	add r2, r1, #0
	and r2, r0
	mov r0, #0xff
	lsl r0, r0, #0x18
	and r0, r3
	lsr r6, r0, #0x18
	lsl r0, r0, #8
	mov r12, r0
	mov r0, #0
	and r1, r0
	mov r0, #0xff
	lsl r0, r0, #0x10
	lsl r2, r2, #8
	and r0, r3
	orr r2, r6
	lsr r6, r0, #8
	lsl r7, r0, #0x18
	mov r0, #0xff
	lsl r1, r1, #0x18
	and r0, r3
	orr r1, r6
	lsl r6, r0, #0x18
	mov r0, #0xff
	lsl r0, r0, #8
	and r0, r3
	lsl r0, r0, #8
	orr r0, r6
	orr r1, r0
	ldr r0, [sp, #0x40]
	add r3, r7, #0
	orr r3, r0
	mov r0, r12
	orr r1, r2
	add r2, r0, #0
	ldr r0, [sp, #0x3c]
	orr r2, r3
	orr r1, r0
	ldr r0, [sp, #0x44]
	orr r2, r0
	ldr r0, [sp, #0x38]
	orr r1, r0
	ldr r0, [sp, #0x34]
	orr r2, r0
	ldr r0, [sp, #0x30]
	orr r1, r0
	ldr r0, [sp, #0x2c]
	orr r2, r0
	ldr r0, [sp, #0x28]
	orr r1, r0
	ldr r0, [sp, #0x24]
	str r1, [sp, #0x54]
	orr r0, r2
	str r0, [sp, #0x50]
	add r0, sp, #0x58
	add r1, sp, #0x50
	add r2, r0, #0
	bl FUN_ov17_020f2c40
	add r2, sp, #0x60
	mov r1, #8
_020F2A48:
	ldrb r0, [r2]
	add r2, r2, #1
	strb r0, [r5]
	add r5, r5, #1
	sub r1, r1, #1
	bne _020F2A48
	ldr r0, [sp, #0x14]
	add r4, r4, #1
	cmp r4, r0
	ble _020F295E
_020F2A5C:
	ldr r0, [sp, #0x20]
	add r0, r0, #1
	str r0, [sp, #0x20]
	cmp r0, #6
	bge _020F2A68
	b _020F2936
_020F2A68:
	add r3, sp, #0x58
	mov r2, #8
_020F2A6C:
	ldrb r1, [r3]
	ldr r0, [sp]
	add r3, r3, #1
	strb r1, [r0]
	add r0, r0, #1
	str r0, [sp]
	sub r2, r2, #1
	bne _020F2A6C
	mov r0, #1
	add sp, #0x1a8
	pop {r3, r4, r5, r6, r7, pc}
	nop
_020F2A84: .word 0xA6A6A6A6
	thumb_func_end FUN_ov17_020f28d0

	thumb_func_start FUN_ov17_020f2a88
FUN_ov17_020f2a88: ; 0x020F2A88
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x1a8
	str r0, [sp]
	mov r0, #1
	str r0, [sp, #0x1c]
	ldr r0, _020F2C3C ; =0xA6A6A6A6
	add r4, r2, #0
	add r5, r1, #0
	str r0, [sp, #0x48]
	str r0, [sp, #0x4c]
	mov r0, #7
	add r1, r4, #0
	tst r1, r0
	bne _020F2AAA
	ldr r2, [sp, #0x1c0]
	tst r0, r2
	beq _020F2AB0
_020F2AAA:
	add sp, #0x1a8
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
_020F2AB0:
	sub r0, r4, #1
	lsr r0, r0, #3
	str r0, [sp, #0x14]
	cmp r0, #2
	bge _020F2AC0
	add sp, #0x1a8
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
_020F2AC0:
	add r0, sp, #0x68
	add r1, r3, #0
	lsl r2, r2, #3
	bl FUN_ov17_020f2f40
	str r0, [sp, #0x20]
	add r3, sp, #0x58
	add r2, r5, #0
	mov r1, #8
_020F2AD2:
	ldrb r0, [r2]
	add r2, r2, #1
	strb r0, [r3]
	add r3, r3, #1
	sub r1, r1, #1
	bne _020F2AD2
	add r5, #8
	ldr r0, [sp]
	add r1, r5, #0
	sub r2, r4, #1
	blx memcpy
	mov r0, #5
	str r0, [sp, #0x24]
	ldr r0, [sp, #0x14]
	asr r0, r0, #0x1f
	str r0, [sp, #0x18]
_020F2AF4:
	ldr r4, [sp, #0x14]
	add r0, r4, #0
	cmp r0, #0
	bgt _020F2AFE
	b _020F2C18
_020F2AFE:
	ldr r2, [sp, #0x24]
	ldr r1, [sp, #0x18]
	asr r3, r2, #0x1f
	blx __llmul
	str r0, [sp, #0xc]
	mov r0, #0
	str r1, [sp, #8]
	str r0, [sp, #0x2c]
	mov r0, #0
	mov r1, #0
	str r0, [sp, #0x34]
	add r0, r1, #0
	orr r0, r1
	str r0, [sp, #0x40]
_020F2B1C:
	ldr r0, [sp, #0xc]
	asr r1, r4, #0x1f
	add r5, r4, r0
	ldr r0, [sp, #8]
	adc r1, r0
	mov r0, #0xff
	lsl r0, r0, #0x18
	and r0, r1
	lsr r0, r0, #0x18
	str r0, [sp, #0x28]
	mov r0, #0xff
	lsl r0, r0, #0x10
	and r0, r1
	lsr r0, r0, #8
	str r0, [sp, #0x30]
	mov r0, #0xff
	lsl r0, r0, #8
	add r2, r1, #0
	and r2, r0
	mov r0, #0
	add r3, r5, #0
	and r3, r0
	lsl r0, r2, #8
	lsr r3, r3, #0x18
	orr r3, r0
	lsr r0, r2, #0x18
	str r0, [sp, #0x38]
	mov r0, #0xff
	mov r2, #0
	and r0, r1
	and r2, r5
	lsl r6, r0, #0x18
	lsr r2, r2, #8
	str r2, [sp, #0x44]
	orr r2, r6
	lsr r0, r0, #8
	str r2, [sp, #0x44]
	str r0, [sp, #0x3c]
	mov r0, #0
	add r2, r1, #0
	and r2, r0
	mov r0, #0xff
	lsl r0, r0, #0x18
	and r0, r5
	lsr r6, r0, #0x18
	lsl r0, r0, #8
	mov r12, r0
	mov r0, #0
	and r1, r0
	mov r0, #0xff
	lsl r0, r0, #0x10
	lsl r2, r2, #8
	and r0, r5
	orr r2, r6
	lsr r6, r0, #8
	lsl r7, r0, #0x18
	mov r0, #0xff
	lsl r1, r1, #0x18
	and r0, r5
	orr r1, r6
	lsl r6, r0, #0x18
	mov r0, #0xff
	lsl r0, r0, #8
	and r0, r5
	lsl r0, r0, #8
	orr r0, r6
	orr r1, r0
	ldr r0, [sp, #0x40]
	add r5, r7, #0
	orr r5, r0
	mov r0, r12
	orr r1, r2
	add r2, r0, #0
	ldr r0, [sp, #0x3c]
	orr r2, r5
	orr r1, r0
	ldr r0, [sp, #0x44]
	orr r2, r0
	ldr r0, [sp, #0x38]
	orr r2, r3
	orr r1, r0
	ldr r0, [sp, #0x34]
	orr r1, r0
	ldr r0, [sp, #0x30]
	orr r2, r0
	ldr r0, [sp, #0x2c]
	orr r1, r0
	ldr r0, [sp, #0x28]
	str r1, [sp, #0x54]
	orr r0, r2
	str r0, [sp, #0x50]
	add r0, sp, #0x58
	add r1, sp, #0x50
	add r2, r0, #0
	bl FUN_ov17_020f2c40
	sub r0, r4, #1
	lsl r1, r0, #3
	ldr r0, [sp]
	add r2, sp, #0x60
	add r5, r0, r1
	add r3, r5, #0
	mov r1, #8
_020F2BEA:
	ldrb r0, [r3]
	add r3, r3, #1
	strb r0, [r2]
	add r2, r2, #1
	sub r1, r1, #1
	bne _020F2BEA
	add r2, sp, #0x58
	ldr r1, [sp, #0x20]
	add r0, sp, #0x68
	add r3, r2, #0
	bl FUN_ov17_020f348c
	add r2, sp, #0x60
	mov r1, #8
_020F2C06:
	ldrb r0, [r2]
	add r2, r2, #1
	strb r0, [r5]
	add r5, r5, #1
	sub r1, r1, #1
	bne _020F2C06
	sub r4, r4, #1
	cmp r4, #0
	bgt _020F2B1C
_020F2C18:
	ldr r0, [sp, #0x24]
	sub r0, r0, #1
	str r0, [sp, #0x24]
	bmi _020F2C22
	b _020F2AF4
_020F2C22:
	add r0, sp, #0x48
	add r1, sp, #0x58
	mov r2, #8
	blx memcmp
	cmp r0, #0
	beq _020F2C34
	mov r0, #0
	str r0, [sp, #0x1c]
_020F2C34:
	ldr r0, [sp, #0x1c]
	add sp, #0x1a8
	pop {r3, r4, r5, r6, r7, pc}
	nop
_020F2C3C: .word 0xA6A6A6A6
	thumb_func_end FUN_ov17_020f2a88

	thumb_func_start FUN_ov17_020f2c40
FUN_ov17_020f2c40: ; 0x020F2C40
	push {r3, r4}
	ldrb r4, [r0]
	ldrb r3, [r1]
	eor r3, r4
	strb r3, [r2]
	ldrb r4, [r0, #1]
	ldrb r3, [r1, #1]
	eor r3, r4
	strb r3, [r2, #1]
	ldrb r4, [r0, #2]
	ldrb r3, [r1, #2]
	eor r3, r4
	strb r3, [r2, #2]
	ldrb r4, [r0, #3]
	ldrb r3, [r1, #3]
	eor r3, r4
	strb r3, [r2, #3]
	ldrb r4, [r0, #4]
	ldrb r3, [r1, #4]
	eor r3, r4
	strb r3, [r2, #4]
	ldrb r4, [r0, #5]
	ldrb r3, [r1, #5]
	eor r3, r4
	strb r3, [r2, #5]
	ldrb r4, [r0, #6]
	ldrb r3, [r1, #6]
	eor r3, r4
	strb r3, [r2, #6]
	ldrb r3, [r0, #7]
	ldrb r0, [r1, #7]
	eor r0, r3
	strb r0, [r2, #7]
	pop {r3, r4}
	bx lr
	thumb_func_end FUN_ov17_020f2c40

	thumb_func_start FUN_ov17_020f2c88
FUN_ov17_020f2c88: ; 0x020F2C88
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x18
	add r3, r1, #0
	add r1, r2, #0
	mov r2, #0
	str r2, [sp]
	ldrb r2, [r3, #2]
	ldrb r6, [r3, #1]
	ldrb r5, [r3, #3]
	lsl r4, r2, #8
	ldrb r2, [r3]
	lsl r6, r6, #0x10
	lsl r2, r2, #0x18
	eor r2, r6
	eor r2, r4
	eor r2, r5
	str r2, [r0]
	ldrb r2, [r3, #6]
	ldrb r6, [r3, #5]
	ldrb r5, [r3, #7]
	lsl r4, r2, #8
	ldrb r2, [r3, #4]
	lsl r6, r6, #0x10
	lsl r2, r2, #0x18
	eor r2, r6
	eor r2, r4
	eor r2, r5
	str r2, [r0, #4]
	ldrb r2, [r3, #0xa]
	ldrb r6, [r3, #9]
	ldrb r5, [r3, #0xb]
	lsl r4, r2, #8
	ldrb r2, [r3, #8]
	lsl r6, r6, #0x10
	lsl r2, r2, #0x18
	eor r2, r6
	eor r2, r4
	eor r2, r5
	str r2, [r0, #8]
	ldrb r2, [r3, #0xe]
	ldrb r6, [r3, #0xd]
	ldrb r5, [r3, #0xf]
	lsl r4, r2, #8
	ldrb r2, [r3, #0xc]
	lsl r6, r6, #0x10
	lsl r2, r2, #0x18
	eor r2, r6
	eor r2, r4
	eor r2, r5
	str r2, [r0, #0xc]
	cmp r1, #0x80
	bne _020F2D6C
	ldr r5, _020F2F38 ; =0x0210F44C
	ldr r2, _020F2F3C ; =0x02111074
_020F2CF4:
	ldr r4, [r0, #0xc]
	ldr r3, [r5]
	lsr r1, r4, #0x18
	lsl r1, r1, #2
	ldr r1, [r2, r1]
	add r5, r5, #4
	lsl r1, r1, #0x18
	lsr r1, r1, #0x18
	str r1, [sp, #8]
	lsl r1, r4, #0x18
	lsr r1, r1, #0x16
	ldr r6, [r2, r1]
	mov r1, #0xff
	lsl r1, r1, #8
	add r7, r6, #0
	and r7, r1
	ldr r1, [r0]
	str r1, [sp, #4]
	lsr r1, r4, #0x10
	lsl r1, r1, #0x18
	lsr r1, r1, #0x16
	ldr r6, [r2, r1]
	mov r1, #0xff
	lsl r1, r1, #0x18
	lsr r4, r4, #8
	and r6, r1
	ldr r1, [sp, #4]
	lsl r4, r4, #0x18
	lsr r4, r4, #0x16
	eor r1, r6
	ldr r6, [r2, r4]
	mov r4, #0xff
	lsl r4, r4, #0x10
	and r4, r6
	eor r1, r4
	add r4, r7, #0
	eor r4, r1
	ldr r1, [sp, #8]
	eor r1, r4
	eor r3, r1
	str r3, [r0, #0x10]
	ldr r1, [r0, #4]
	eor r3, r1
	str r3, [r0, #0x14]
	ldr r1, [r0, #8]
	eor r3, r1
	str r3, [r0, #0x18]
	ldr r1, [r0, #0xc]
	eor r1, r3
	str r1, [r0, #0x1c]
	ldr r1, [sp]
	add r1, r1, #1
	str r1, [sp]
	cmp r1, #0xa
	blt _020F2D68
	add sp, #0x18
	mov r0, #0xa
	pop {r3, r4, r5, r6, r7, pc}
_020F2D68:
	add r0, #0x10
	b _020F2CF4
_020F2D6C:
	ldrb r2, [r3, #0x12]
	ldrb r6, [r3, #0x11]
	ldrb r5, [r3, #0x13]
	lsl r4, r2, #8
	ldrb r2, [r3, #0x10]
	lsl r6, r6, #0x10
	lsl r2, r2, #0x18
	eor r2, r6
	eor r2, r4
	eor r2, r5
	str r2, [r0, #0x10]
	ldrb r2, [r3, #0x16]
	ldrb r6, [r3, #0x15]
	ldrb r5, [r3, #0x17]
	lsl r4, r2, #8
	ldrb r2, [r3, #0x14]
	lsl r6, r6, #0x10
	lsl r2, r2, #0x18
	eor r2, r6
	eor r2, r4
	eor r2, r5
	str r2, [r0, #0x14]
	cmp r1, #0xc0
	bne _020F2E28
	ldr r5, _020F2F38 ; =0x0210F44C
	ldr r3, _020F2F3C ; =0x02111074
_020F2DA0:
	ldr r4, [r0, #0x14]
	ldr r6, [r5]
	lsr r1, r4, #0x18
	lsl r1, r1, #2
	ldr r1, [r3, r1]
	add r5, r5, #4
	lsl r1, r1, #0x18
	lsr r1, r1, #0x18
	str r1, [sp, #0xc]
	lsl r1, r4, #0x18
	lsr r1, r1, #0x16
	ldr r2, [r3, r1]
	mov r1, #0xff
	lsl r1, r1, #8
	add r7, r2, #0
	and r7, r1
	ldr r1, [r0]
	mov lr, r1
	lsr r1, r4, #0x10
	lsl r1, r1, #0x18
	lsr r1, r1, #0x16
	ldr r2, [r3, r1]
	mov r1, #0xff
	lsl r1, r1, #0x18
	and r1, r2
	mov r2, lr
	eor r1, r2
	lsr r2, r4, #8
	lsl r2, r2, #0x18
	lsr r2, r2, #0x16
	ldr r4, [r3, r2]
	mov r2, #0xff
	lsl r2, r2, #0x10
	and r2, r4
	eor r1, r2
	add r2, r7, #0
	eor r2, r1
	ldr r1, [sp, #0xc]
	eor r1, r2
	add r2, r6, #0
	eor r2, r1
	str r2, [r0, #0x18]
	ldr r1, [r0, #4]
	eor r2, r1
	str r2, [r0, #0x1c]
	ldr r1, [r0, #8]
	eor r2, r1
	str r2, [r0, #0x20]
	ldr r1, [r0, #0xc]
	eor r1, r2
	str r1, [r0, #0x24]
	ldr r1, [sp]
	add r1, r1, #1
	str r1, [sp]
	cmp r1, #8
	blt _020F2E16
	add sp, #0x18
	mov r0, #0xc
	pop {r3, r4, r5, r6, r7, pc}
_020F2E16:
	ldr r2, [r0, #0x10]
	ldr r1, [r0, #0x24]
	eor r2, r1
	str r2, [r0, #0x28]
	ldr r1, [r0, #0x14]
	eor r1, r2
	str r1, [r0, #0x2c]
	add r0, #0x18
	b _020F2DA0
_020F2E28:
	ldrb r2, [r3, #0x1a]
	ldrb r6, [r3, #0x19]
	ldrb r5, [r3, #0x1b]
	lsl r4, r2, #8
	ldrb r2, [r3, #0x18]
	lsl r6, r6, #0x10
	lsl r2, r2, #0x18
	eor r2, r6
	eor r2, r4
	eor r2, r5
	str r2, [r0, #0x18]
	ldrb r2, [r3, #0x1e]
	ldrb r5, [r3, #0x1f]
	lsl r4, r2, #8
	ldrb r2, [r3, #0x1c]
	ldrb r3, [r3, #0x1d]
	lsl r2, r2, #0x18
	lsl r3, r3, #0x10
	eor r2, r3
	eor r2, r4
	eor r2, r5
	str r2, [r0, #0x1c]
	mov r2, #1
	lsl r2, r2, #8
	cmp r1, r2
	bne _020F2F32
	ldr r5, _020F2F38 ; =0x0210F44C
	ldr r3, _020F2F3C ; =0x02111074
_020F2E60:
	ldr r4, [r0, #0x1c]
	ldr r6, [r5]
	lsr r1, r4, #0x18
	lsl r1, r1, #2
	ldr r1, [r3, r1]
	add r5, r5, #4
	lsl r1, r1, #0x18
	lsr r1, r1, #0x18
	str r1, [sp, #0x10]
	lsl r1, r4, #0x18
	lsr r1, r1, #0x16
	ldr r2, [r3, r1]
	mov r1, #0xff
	lsl r1, r1, #8
	add r7, r2, #0
	and r7, r1
	ldr r1, [r0]
	mov r12, r1
	lsr r1, r4, #0x10
	lsl r1, r1, #0x18
	lsr r1, r1, #0x16
	ldr r2, [r3, r1]
	mov r1, #0xff
	lsl r1, r1, #0x18
	and r1, r2
	mov r2, r12
	eor r1, r2
	lsr r2, r4, #8
	lsl r2, r2, #0x18
	lsr r2, r2, #0x16
	ldr r4, [r3, r2]
	mov r2, #0xff
	lsl r2, r2, #0x10
	and r2, r4
	eor r1, r2
	add r2, r7, #0
	eor r2, r1
	ldr r1, [sp, #0x10]
	eor r1, r2
	add r2, r6, #0
	eor r2, r1
	str r2, [r0, #0x20]
	ldr r1, [r0, #4]
	eor r2, r1
	str r2, [r0, #0x24]
	ldr r1, [r0, #8]
	eor r2, r1
	str r2, [r0, #0x28]
	ldr r1, [r0, #0xc]
	eor r1, r2
	str r1, [r0, #0x2c]
	ldr r1, [sp]
	add r1, r1, #1
	str r1, [sp]
	cmp r1, #7
	blt _020F2ED6
	add sp, #0x18
	mov r0, #0xe
	pop {r3, r4, r5, r6, r7, pc}
_020F2ED6:
	ldr r6, [r0, #0x2c]
	ldr r7, [r0, #0x10]
	lsl r1, r6, #0x18
	lsr r1, r1, #0x16
	ldr r1, [r3, r1]
	lsl r1, r1, #0x18
	lsr r4, r1, #0x18
	lsr r1, r6, #8
	lsl r1, r1, #0x18
	lsr r1, r1, #0x16
	ldr r2, [r3, r1]
	mov r1, #0xff
	lsl r1, r1, #8
	and r1, r2
	str r1, [sp, #0x14]
	lsr r1, r6, #0x18
	lsl r1, r1, #2
	ldr r2, [r3, r1]
	mov r1, #0xff
	lsl r1, r1, #0x18
	and r1, r2
	lsr r2, r6, #0x10
	lsl r2, r2, #0x18
	lsr r2, r2, #0x16
	ldr r6, [r3, r2]
	mov r2, #0xff
	lsl r2, r2, #0x10
	eor r1, r7
	and r2, r6
	eor r2, r1
	ldr r1, [sp, #0x14]
	eor r1, r2
	add r2, r4, #0
	eor r2, r1
	str r2, [r0, #0x30]
	ldr r1, [r0, #0x14]
	eor r2, r1
	str r2, [r0, #0x34]
	ldr r1, [r0, #0x18]
	eor r2, r1
	str r2, [r0, #0x38]
	ldr r1, [r0, #0x1c]
	eor r1, r2
	str r1, [r0, #0x3c]
	add r0, #0x20
	b _020F2E60
_020F2F32:
	ldr r0, [sp]
	add sp, #0x18
	pop {r3, r4, r5, r6, r7, pc}
_020F2F38: .word ov17_0210F44C
_020F2F3C: .word ov17_02111074
	thumb_func_end FUN_ov17_020f2c88

	thumb_func_start FUN_ov17_020f2f40
FUN_ov17_020f2f40: ; 0x020F2F40
	push {r3, r4, r5, r6, r7, lr}
	add r4, r0, #0
	bl FUN_ov17_020f2c88
	mov r12, r0
	mov r1, r12
	lsl r6, r1, #2
	mov r0, #0
	cmp r6, #0
	ble _020F2F86
	lsl r2, r6, #2
	add r1, r4, #0
	add r2, r4, r2
_020F2F5A:
	ldr r5, [r1]
	ldr r3, [r2]
	add r0, r0, #4
	str r3, [r1]
	str r5, [r2]
	ldr r5, [r1, #4]
	ldr r3, [r2, #4]
	sub r6, r6, #4
	str r3, [r1, #4]
	str r5, [r2, #4]
	ldr r5, [r1, #8]
	ldr r3, [r2, #8]
	str r3, [r1, #8]
	str r5, [r2, #8]
	ldr r5, [r1, #0xc]
	ldr r3, [r2, #0xc]
	str r3, [r1, #0xc]
	str r5, [r2, #0xc]
	add r1, #0x10
	sub r2, #0x10
	cmp r0, r6
	blt _020F2F5A
_020F2F86:
	mov r0, #1
	str r0, [sp]
	mov r0, r12
	cmp r0, #1
	bgt _020F2F92
	b _020F30B6
_020F2F92:
	ldr r2, _020F30BC ; =0x02111074
	ldr r7, _020F30C0 ; =0x0210F874
_020F2F96:
	add r4, #0x10
	ldr r3, [r4]
	lsl r0, r3, #0x18
	lsr r0, r0, #0x16
	ldr r0, [r2, r0]
	lsl r0, r0, #0x18
	lsr r0, r0, #0x16
	ldr r1, [r7, r0]
	lsr r0, r3, #8
	lsl r0, r0, #0x18
	lsr r0, r0, #0x16
	ldr r0, [r2, r0]
	lsl r0, r0, #0x18
	lsr r5, r0, #0x16
	ldr r0, _020F30C4 ; =0x0210F474
	ldr r6, [r0, r5]
	lsr r0, r3, #0x18
	lsl r0, r0, #2
	lsr r3, r3, #0x10
	ldr r0, [r2, r0]
	lsl r3, r3, #0x18
	lsr r3, r3, #0x16
	lsl r0, r0, #0x18
	ldr r3, [r2, r3]
	lsr r5, r0, #0x16
	ldr r0, _020F30C8 ; =0x02111474
	lsl r3, r3, #0x18
	ldr r0, [r0, r5]
	lsr r5, r3, #0x16
	ldr r3, _020F30CC ; =0x02111874
	ldr r3, [r3, r5]
	eor r0, r3
	eor r0, r6
	eor r0, r1
	str r0, [r4]
	ldr r3, [r4, #4]
	lsl r0, r3, #0x18
	lsr r0, r0, #0x16
	ldr r0, [r2, r0]
	lsl r0, r0, #0x18
	lsr r0, r0, #0x16
	ldr r1, [r7, r0]
	lsr r0, r3, #8
	lsl r0, r0, #0x18
	lsr r0, r0, #0x16
	ldr r0, [r2, r0]
	lsl r0, r0, #0x18
	lsr r5, r0, #0x16
	ldr r0, _020F30C4 ; =0x0210F474
	ldr r6, [r0, r5]
	lsr r0, r3, #0x18
	lsl r0, r0, #2
	lsr r3, r3, #0x10
	ldr r0, [r2, r0]
	lsl r3, r3, #0x18
	lsr r3, r3, #0x16
	lsl r0, r0, #0x18
	ldr r3, [r2, r3]
	lsr r5, r0, #0x16
	ldr r0, _020F30C8 ; =0x02111474
	lsl r3, r3, #0x18
	ldr r0, [r0, r5]
	lsr r5, r3, #0x16
	ldr r3, _020F30CC ; =0x02111874
	ldr r3, [r3, r5]
	eor r0, r3
	eor r0, r6
	eor r0, r1
	str r0, [r4, #4]
	ldr r3, [r4, #8]
	lsl r0, r3, #0x18
	lsr r0, r0, #0x16
	ldr r0, [r2, r0]
	lsl r0, r0, #0x18
	lsr r0, r0, #0x16
	ldr r1, [r7, r0]
	lsr r0, r3, #8
	lsl r0, r0, #0x18
	lsr r0, r0, #0x16
	ldr r0, [r2, r0]
	lsl r0, r0, #0x18
	lsr r5, r0, #0x16
	ldr r0, _020F30C4 ; =0x0210F474
	ldr r6, [r0, r5]
	lsr r0, r3, #0x18
	lsl r0, r0, #2
	lsr r3, r3, #0x10
	ldr r0, [r2, r0]
	lsl r3, r3, #0x18
	lsr r3, r3, #0x16
	lsl r0, r0, #0x18
	ldr r3, [r2, r3]
	lsr r5, r0, #0x16
	ldr r0, _020F30C8 ; =0x02111474
	lsl r3, r3, #0x18
	ldr r0, [r0, r5]
	lsr r5, r3, #0x16
	ldr r3, _020F30CC ; =0x02111874
	ldr r3, [r3, r5]
	eor r0, r3
	eor r0, r6
	eor r0, r1
	str r0, [r4, #8]
	ldr r3, [r4, #0xc]
	lsl r0, r3, #0x18
	lsr r0, r0, #0x16
	ldr r0, [r2, r0]
	lsl r0, r0, #0x18
	lsr r0, r0, #0x16
	ldr r1, [r7, r0]
	lsr r0, r3, #8
	lsl r0, r0, #0x18
	lsr r0, r0, #0x16
	ldr r0, [r2, r0]
	lsl r0, r0, #0x18
	lsr r5, r0, #0x16
	ldr r0, _020F30C4 ; =0x0210F474
	ldr r6, [r0, r5]
	lsr r0, r3, #0x18
	lsl r0, r0, #2
	lsr r3, r3, #0x10
	ldr r0, [r2, r0]
	lsl r3, r3, #0x18
	lsr r3, r3, #0x16
	lsl r0, r0, #0x18
	ldr r3, [r2, r3]
	lsr r5, r0, #0x16
	ldr r0, _020F30C8 ; =0x02111474
	lsl r3, r3, #0x18
	ldr r0, [r0, r5]
	lsr r5, r3, #0x16
	ldr r3, _020F30CC ; =0x02111874
	ldr r3, [r3, r5]
	eor r0, r3
	eor r0, r6
	eor r0, r1
	str r0, [r4, #0xc]
	ldr r0, [sp]
	add r1, r0, #1
	mov r0, r12
	str r1, [sp]
	cmp r1, r0
	bge _020F30B6
	b _020F2F96
_020F30B6:
	mov r0, r12
	pop {r3, r4, r5, r6, r7, pc}
	nop
_020F30BC: .word ov17_02111074
_020F30C0: .word ov17_0210F874
_020F30C4: .word ov17_0210F474
_020F30C8: .word ov17_02111474
_020F30CC: .word ov17_02111874
	thumb_func_end FUN_ov17_020f2f40

	thumb_func_start FUN_ov17_020f30d0
FUN_ov17_020f30d0: ; 0x020F30D0
	push {r4, r5, r6, r7, lr}
	sub sp, #0x4c
	add r7, r1, #0
	add r1, r2, #0
	ldrb r2, [r1, #2]
	str r3, [sp]
	ldrb r6, [r1, #1]
	lsl r3, r2, #8
	ldrb r2, [r1]
	ldrb r4, [r1, #3]
	lsl r6, r6, #0x10
	lsl r2, r2, #0x18
	eor r2, r6
	eor r2, r3
	eor r2, r4
	ldr r5, [r0]
	ldrb r6, [r1, #5]
	eor r2, r5
	str r2, [sp, #0xc]
	ldrb r2, [r1, #6]
	ldrb r4, [r1, #7]
	lsl r6, r6, #0x10
	lsl r3, r2, #8
	ldrb r2, [r1, #4]
	ldr r5, [r0, #4]
	lsl r2, r2, #0x18
	eor r2, r6
	eor r2, r3
	eor r2, r4
	eor r2, r5
	str r2, [sp, #8]
	ldrb r2, [r1, #0xa]
	ldrb r6, [r1, #9]
	ldrb r4, [r1, #0xb]
	lsl r3, r2, #8
	ldrb r2, [r1, #8]
	lsl r6, r6, #0x10
	ldr r5, [r0, #8]
	lsl r2, r2, #0x18
	eor r2, r6
	eor r2, r3
	eor r2, r4
	eor r5, r2
	ldrb r2, [r1, #0xe]
	ldrb r4, [r1, #0xf]
	ldr r6, [r0, #0xc]
	lsl r3, r2, #8
	ldrb r2, [r1, #0xc]
	ldrb r1, [r1, #0xd]
	lsl r2, r2, #0x18
	lsl r1, r1, #0x10
	eor r1, r2
	eor r1, r3
	eor r1, r4
	eor r6, r1
	asr r1, r7, #1
	str r1, [sp, #4]
_020F3142:
	lsl r1, r6, #0x18
	lsr r2, r1, #0x16
	ldr r1, _020F3478 ; =0x02110C74
	ldr r4, [r0, #0x10]
	ldr r3, [r1, r2]
	lsr r1, r5, #8
	lsl r1, r1, #0x18
	lsr r2, r1, #0x16
	ldr r1, _020F347C ; =0x02110874
	ldr r1, [r1, r2]
	str r1, [sp, #0x40]
	ldr r1, [sp, #0xc]
	lsr r1, r1, #0x18
	lsl r2, r1, #2
	ldr r1, _020F3480 ; =0x02110074
	ldr r7, [r1, r2]
	ldr r1, [sp, #8]
	lsr r1, r1, #0x10
	lsl r1, r1, #0x18
	lsr r2, r1, #0x16
	ldr r1, _020F3484 ; =0x02110474
	ldr r1, [r1, r2]
	add r2, r7, #0
	eor r2, r1
	ldr r1, [sp, #0x40]
	eor r1, r2
	eor r1, r3
	eor r1, r4
	str r1, [sp, #0x10]
	ldr r1, [sp, #0xc]
	ldr r4, [r0, #0x14]
	lsl r1, r1, #0x18
	lsr r2, r1, #0x16
	ldr r1, _020F3478 ; =0x02110C74
	ldr r3, [r1, r2]
	lsr r1, r6, #8
	lsl r1, r1, #0x18
	lsr r2, r1, #0x16
	ldr r1, _020F347C ; =0x02110874
	ldr r1, [r1, r2]
	str r1, [sp, #0x48]
	ldr r1, [sp, #8]
	lsr r1, r1, #0x18
	lsl r2, r1, #2
	ldr r1, _020F3480 ; =0x02110074
	ldr r7, [r1, r2]
	lsr r1, r5, #0x10
	lsl r1, r1, #0x18
	lsr r2, r1, #0x16
	ldr r1, _020F3484 ; =0x02110474
	ldr r1, [r1, r2]
	add r2, r7, #0
	eor r2, r1
	ldr r1, [sp, #0x48]
	eor r1, r2
	eor r1, r3
	eor r1, r4
	str r1, [sp, #0x44]
	ldr r1, [sp, #8]
	ldr r4, [r0, #0x18]
	lsl r1, r1, #0x18
	lsr r2, r1, #0x16
	ldr r1, _020F3478 ; =0x02110C74
	ldr r3, [r1, r2]
	ldr r1, [sp, #0xc]
	lsr r1, r1, #8
	lsl r1, r1, #0x18
	lsr r2, r1, #0x16
	ldr r1, _020F347C ; =0x02110874
	ldr r1, [r1, r2]
	str r1, [sp, #0x14]
	lsr r1, r5, #0x18
	lsl r2, r1, #2
	ldr r1, _020F3480 ; =0x02110074
	ldr r7, [r1, r2]
	lsr r1, r6, #0x10
	lsl r1, r1, #0x18
	lsr r2, r1, #0x16
	ldr r1, _020F3484 ; =0x02110474
	ldr r1, [r1, r2]
	add r2, r7, #0
	eor r2, r1
	ldr r1, [sp, #0x14]
	ldr r7, [r0, #0x1c]
	eor r1, r2
	eor r1, r3
	add r2, r4, #0
	eor r2, r1
	lsl r1, r5, #0x18
	lsr r3, r1, #0x16
	ldr r1, _020F3478 ; =0x02110C74
	add r0, #0x20
	ldr r3, [r1, r3]
	ldr r1, [sp, #8]
	lsr r1, r1, #8
	lsl r1, r1, #0x18
	lsr r4, r1, #0x16
	ldr r1, _020F347C ; =0x02110874
	ldr r1, [r1, r4]
	lsr r4, r6, #0x18
	lsl r5, r4, #2
	ldr r4, _020F3480 ; =0x02110074
	ldr r6, [r4, r5]
	ldr r4, [sp, #0xc]
	lsr r4, r4, #0x10
	lsl r4, r4, #0x18
	lsr r5, r4, #0x16
	ldr r4, _020F3484 ; =0x02110474
	ldr r4, [r4, r5]
	eor r4, r6
	eor r1, r4
	eor r1, r3
	ldr r3, [sp, #4]
	eor r1, r7
	sub r3, r3, #1
	str r3, [sp, #4]
	beq _020F330C
	lsl r3, r1, #0x18
	lsr r5, r3, #0x16
	ldr r3, _020F3478 ; =0x02110C74
	ldr r4, [r0]
	ldr r3, [r3, r5]
	lsr r5, r2, #8
	lsl r5, r5, #0x18
	lsr r6, r5, #0x16
	ldr r5, _020F347C ; =0x02110874
	ldr r7, [r5, r6]
	ldr r5, [sp, #0x10]
	lsr r5, r5, #0x18
	lsl r6, r5, #2
	ldr r5, _020F3480 ; =0x02110074
	ldr r5, [r5, r6]
	str r5, [sp, #0x18]
	ldr r5, [sp, #0x44]
	lsr r5, r5, #0x10
	lsl r5, r5, #0x18
	lsr r6, r5, #0x16
	ldr r5, _020F3484 ; =0x02110474
	ldr r6, [r5, r6]
	ldr r5, [sp, #0x18]
	eor r5, r6
	eor r5, r7
	eor r3, r5
	eor r3, r4
	str r3, [sp, #0xc]
	ldr r3, [sp, #0x10]
	ldr r4, [r0, #4]
	lsl r3, r3, #0x18
	lsr r5, r3, #0x16
	ldr r3, _020F3478 ; =0x02110C74
	ldr r3, [r3, r5]
	lsr r5, r1, #8
	lsl r5, r5, #0x18
	lsr r6, r5, #0x16
	ldr r5, _020F347C ; =0x02110874
	ldr r7, [r5, r6]
	ldr r5, [sp, #0x44]
	lsr r5, r5, #0x18
	lsl r6, r5, #2
	ldr r5, _020F3480 ; =0x02110074
	ldr r5, [r5, r6]
	str r5, [sp, #0x1c]
	lsr r5, r2, #0x10
	lsl r5, r5, #0x18
	lsr r6, r5, #0x16
	ldr r5, _020F3484 ; =0x02110474
	ldr r6, [r5, r6]
	ldr r5, [sp, #0x1c]
	eor r5, r6
	eor r5, r7
	eor r3, r5
	eor r3, r4
	str r3, [sp, #8]
	ldr r3, [sp, #0x44]
	ldr r6, [r0, #8]
	lsl r3, r3, #0x18
	lsr r4, r3, #0x16
	ldr r3, _020F3478 ; =0x02110C74
	ldr r5, [r3, r4]
	ldr r3, [sp, #0x10]
	lsr r3, r3, #8
	lsl r3, r3, #0x18
	lsr r4, r3, #0x16
	ldr r3, _020F347C ; =0x02110874
	ldr r3, [r3, r4]
	str r3, [sp, #0x20]
	lsr r3, r2, #0x18
	lsl r4, r3, #2
	ldr r3, _020F3480 ; =0x02110074
	lsl r2, r2, #0x18
	ldr r7, [r3, r4]
	lsr r3, r1, #0x10
	lsl r3, r3, #0x18
	lsr r4, r3, #0x16
	ldr r3, _020F3484 ; =0x02110474
	lsr r1, r1, #0x18
	ldr r3, [r3, r4]
	add r4, r7, #0
	eor r4, r3
	ldr r3, [sp, #0x20]
	ldr r7, [r0, #0xc]
	eor r3, r4
	eor r3, r5
	add r5, r6, #0
	eor r5, r3
	lsr r3, r2, #0x16
	ldr r2, _020F3478 ; =0x02110C74
	ldr r3, [r2, r3]
	ldr r2, [sp, #0x44]
	lsr r2, r2, #8
	lsl r2, r2, #0x18
	lsr r4, r2, #0x16
	ldr r2, _020F347C ; =0x02110874
	ldr r2, [r2, r4]
	lsl r4, r1, #2
	ldr r1, _020F3480 ; =0x02110074
	ldr r6, [r1, r4]
	ldr r1, [sp, #0x10]
	lsr r1, r1, #0x10
	lsl r1, r1, #0x18
	lsr r4, r1, #0x16
	ldr r1, _020F3484 ; =0x02110474
	ldr r1, [r1, r4]
	eor r1, r6
	eor r1, r2
	eor r1, r3
	add r6, r7, #0
	eor r6, r1
	b _020F3142
_020F330C:
	ldr r3, [r0]
	mov r6, #0xff
	str r3, [sp, #0x24]
	lsl r3, r1, #0x18
	lsr r4, r3, #0x16
	ldr r3, _020F3488 ; =0x02111074
	lsl r6, r6, #0x10
	ldr r4, [r3, r4]
	lsl r4, r4, #0x18
	lsr r4, r4, #0x18
	str r4, [sp, #0x28]
	lsr r4, r2, #8
	lsl r4, r4, #0x18
	lsr r4, r4, #0x16
	ldr r5, [r3, r4]
	mov r4, #0xff
	lsl r4, r4, #8
	and r4, r5
	str r4, [sp, #0x2c]
	ldr r4, [sp, #0x10]
	lsr r4, r4, #0x18
	lsl r4, r4, #2
	ldr r5, [r3, r4]
	mov r4, #0xff
	lsl r4, r4, #0x18
	and r5, r4
	ldr r4, [sp, #0x44]
	lsr r4, r4, #0x10
	lsl r4, r4, #0x18
	lsr r4, r4, #0x16
	ldr r4, [r3, r4]
	and r4, r6
	eor r5, r4
	ldr r4, [sp, #0x2c]
	eor r5, r4
	ldr r4, [sp, #0x28]
	eor r5, r4
	ldr r4, [sp, #0x24]
	eor r4, r5
	ldr r5, [sp]
	lsr r6, r4, #0x18
	strb r6, [r5]
	lsr r6, r4, #0x10
	strb r6, [r5, #1]
	lsr r6, r4, #8
	strb r6, [r5, #2]
	strb r4, [r5, #3]
	ldr r4, [r0, #4]
	mov r6, #0xff
	str r4, [sp, #0x30]
	ldr r4, [sp, #0x10]
	lsl r6, r6, #0x10
	lsl r4, r4, #0x18
	lsr r4, r4, #0x16
	ldr r4, [r3, r4]
	lsl r4, r4, #0x18
	lsr r4, r4, #0x18
	str r4, [sp, #0x34]
	lsr r4, r1, #8
	lsl r4, r4, #0x18
	lsr r4, r4, #0x16
	ldr r5, [r3, r4]
	mov r4, #0xff
	lsl r4, r4, #8
	and r4, r5
	str r4, [sp, #0x38]
	ldr r4, [sp, #0x44]
	lsr r4, r4, #0x18
	lsl r4, r4, #2
	ldr r5, [r3, r4]
	mov r4, #0xff
	lsl r4, r4, #0x18
	and r5, r4
	lsr r4, r2, #0x10
	lsl r4, r4, #0x18
	lsr r4, r4, #0x16
	ldr r4, [r3, r4]
	and r4, r6
	eor r5, r4
	ldr r4, [sp, #0x38]
	eor r5, r4
	ldr r4, [sp, #0x34]
	eor r5, r4
	ldr r4, [sp, #0x30]
	eor r4, r5
	ldr r5, [sp]
	lsr r6, r4, #0x18
	strb r6, [r5, #4]
	lsr r6, r4, #0x10
	strb r6, [r5, #5]
	lsr r6, r4, #8
	strb r6, [r5, #6]
	strb r4, [r5, #7]
	ldr r4, [r0, #8]
	str r4, [sp, #0x3c]
	ldr r4, [sp, #0x44]
	lsl r4, r4, #0x18
	lsr r4, r4, #0x16
	ldr r4, [r3, r4]
	lsl r4, r4, #0x18
	lsr r4, r4, #0x18
	mov lr, r4
	ldr r4, [sp, #0x10]
	lsr r4, r4, #8
	lsl r4, r4, #0x18
	lsr r4, r4, #0x16
	ldr r5, [r3, r4]
	mov r4, #0xff
	lsl r4, r4, #8
	and r4, r5
	mov r12, r4
	lsr r4, r2, #0x18
	lsl r4, r4, #2
	ldr r5, [r3, r4]
	mov r4, #0xff
	lsl r4, r4, #0x18
	add r6, r5, #0
	and r6, r4
	lsr r4, r1, #0x10
	lsl r4, r4, #0x18
	lsr r4, r4, #0x16
	ldr r5, [r3, r4]
	mov r4, #0xff
	lsl r4, r4, #0x10
	and r4, r5
	eor r4, r6
	mov r5, r12
	eor r5, r4
	mov r4, lr
	eor r5, r4
	ldr r4, [sp, #0x3c]
	eor r4, r5
	ldr r5, [sp]
	lsr r6, r4, #0x18
	strb r6, [r5, #8]
	lsr r6, r4, #0x10
	strb r6, [r5, #9]
	lsr r6, r4, #8
	strb r6, [r5, #0xa]
	strb r4, [r5, #0xb]
	ldr r5, [r0, #0xc]
	lsl r0, r2, #0x18
	lsr r0, r0, #0x16
	ldr r0, [r3, r0]
	lsl r0, r0, #0x18
	lsr r4, r0, #0x18
	ldr r0, [sp, #0x44]
	lsr r0, r0, #8
	lsl r0, r0, #0x18
	lsr r0, r0, #0x16
	ldr r2, [r3, r0]
	mov r0, #0xff
	lsl r0, r0, #8
	and r2, r0
	lsr r0, r1, #0x18
	lsl r0, r0, #2
	ldr r1, [r3, r0]
	mov r0, #0xff
	lsl r0, r0, #0x18
	and r0, r1
	ldr r1, [sp, #0x10]
	lsr r1, r1, #0x10
	lsl r1, r1, #0x18
	lsr r1, r1, #0x16
	ldr r3, [r3, r1]
	mov r1, #0xff
	lsl r1, r1, #0x10
	and r1, r3
	eor r0, r1
	eor r0, r2
	eor r0, r4
	eor r0, r5
	ldr r1, [sp]
	lsr r2, r0, #0x18
	strb r2, [r1, #0xc]
	lsr r2, r0, #0x10
	strb r2, [r1, #0xd]
	lsr r2, r0, #8
	strb r2, [r1, #0xe]
	strb r0, [r1, #0xf]
	add sp, #0x4c
	pop {r4, r5, r6, r7, pc}
_020F3478: .word ov17_02110C74
_020F347C: .word ov17_02110874
_020F3480: .word ov17_02110074
_020F3484: .word ov17_02110474
_020F3488: .word ov17_02111074
	thumb_func_end FUN_ov17_020f30d0

	thumb_func_start FUN_ov17_020f348c
FUN_ov17_020f348c: ; 0x020F348C
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x48
	add r7, r1, #0
	add r1, r2, #0
	ldrb r2, [r1, #2]
	str r3, [sp]
	ldrb r6, [r1, #1]
	lsl r3, r2, #8
	ldrb r2, [r1]
	ldrb r4, [r1, #3]
	lsl r6, r6, #0x10
	lsl r2, r2, #0x18
	eor r2, r6
	eor r2, r3
	eor r2, r4
	ldr r5, [r0]
	ldrb r6, [r1, #5]
	eor r2, r5
	str r2, [sp, #0xc]
	ldrb r2, [r1, #6]
	ldrb r4, [r1, #7]
	lsl r6, r6, #0x10
	lsl r3, r2, #8
	ldrb r2, [r1, #4]
	ldr r5, [r0, #4]
	lsl r2, r2, #0x18
	eor r2, r6
	eor r2, r3
	eor r2, r4
	eor r2, r5
	str r2, [sp, #8]
	ldrb r2, [r1, #0xa]
	ldrb r6, [r1, #9]
	ldrb r4, [r1, #0xb]
	lsl r3, r2, #8
	ldrb r2, [r1, #8]
	lsl r6, r6, #0x10
	ldr r5, [r0, #8]
	lsl r2, r2, #0x18
	eor r2, r6
	eor r2, r3
	eor r2, r4
	eor r2, r5
	str r2, [sp, #0x40]
	ldrb r2, [r1, #0xe]
	ldr r5, [r0, #0xc]
	ldrb r4, [r1, #0xf]
	lsl r3, r2, #8
	ldrb r2, [r1, #0xc]
	ldrb r1, [r1, #0xd]
	add r6, r5, #0
	lsl r2, r2, #0x18
	lsl r1, r1, #0x10
	eor r1, r2
	eor r1, r3
	eor r1, r4
	eor r6, r1
	asr r1, r7, #1
	str r1, [sp, #4]
_020F3502:
	ldr r1, [sp, #8]
	ldr r5, [r0, #0x10]
	lsl r1, r1, #0x18
	lsr r2, r1, #0x16
	ldr r1, _020F3834 ; =0x0210F874
	ldr r4, [r1, r2]
	ldr r1, [sp, #0x40]
	lsr r1, r1, #8
	lsl r1, r1, #0x18
	lsr r2, r1, #0x16
	ldr r1, _020F3838 ; =0x0210F474
	ldr r3, [r1, r2]
	ldr r1, [sp, #0xc]
	lsr r1, r1, #0x18
	lsl r2, r1, #2
	ldr r1, _020F383C ; =0x02111474
	ldr r7, [r1, r2]
	lsr r1, r6, #0x10
	lsl r1, r1, #0x18
	lsr r2, r1, #0x16
	ldr r1, _020F3840 ; =0x02111874
	ldr r1, [r1, r2]
	eor r1, r7
	eor r1, r3
	eor r1, r4
	eor r1, r5
	str r1, [sp, #0x10]
	ldr r1, [sp, #0x40]
	ldr r5, [r0, #0x14]
	lsl r1, r1, #0x18
	lsr r2, r1, #0x16
	ldr r1, _020F3834 ; =0x0210F874
	ldr r4, [r1, r2]
	lsr r1, r6, #8
	lsl r1, r1, #0x18
	lsr r2, r1, #0x16
	ldr r1, _020F3838 ; =0x0210F474
	ldr r3, [r1, r2]
	ldr r1, [sp, #8]
	lsr r1, r1, #0x18
	lsl r2, r1, #2
	ldr r1, _020F383C ; =0x02111474
	ldr r7, [r1, r2]
	ldr r1, [sp, #0xc]
	lsr r1, r1, #0x10
	lsl r1, r1, #0x18
	lsr r2, r1, #0x16
	ldr r1, _020F3840 ; =0x02111874
	ldr r1, [r1, r2]
	eor r1, r7
	eor r1, r3
	eor r1, r4
	eor r1, r5
	str r1, [sp, #0x44]
	lsl r1, r6, #0x18
	lsr r2, r1, #0x16
	ldr r1, _020F3834 ; =0x0210F874
	ldr r3, [r0, #0x18]
	ldr r2, [r1, r2]
	ldr r1, [sp, #0xc]
	lsr r1, r1, #8
	lsl r1, r1, #0x18
	lsr r4, r1, #0x16
	ldr r1, _020F3838 ; =0x0210F474
	ldr r1, [r1, r4]
	str r1, [sp, #0x14]
	ldr r1, [sp, #0x40]
	lsr r1, r1, #0x18
	lsl r4, r1, #2
	ldr r1, _020F383C ; =0x02111474
	ldr r1, [r1, r4]
	ldr r4, [sp, #8]
	lsr r4, r4, #0x10
	lsl r4, r4, #0x18
	lsr r5, r4, #0x16
	ldr r4, _020F3840 ; =0x02111874
	ldr r4, [r4, r5]
	eor r4, r1
	ldr r1, [sp, #0x14]
	eor r1, r4
	eor r1, r2
	add r2, r3, #0
	eor r2, r1
	ldr r1, [sp, #0xc]
	ldr r3, [r0, #0x1c]
	lsl r1, r1, #0x18
	lsr r4, r1, #0x16
	ldr r1, _020F3834 ; =0x0210F874
	add r0, #0x20
	ldr r1, [r1, r4]
	ldr r4, [sp, #8]
	lsr r4, r4, #8
	lsl r4, r4, #0x18
	lsr r5, r4, #0x16
	ldr r4, _020F3838 ; =0x0210F474
	ldr r7, [r4, r5]
	lsr r4, r6, #0x18
	lsl r5, r4, #2
	ldr r4, _020F383C ; =0x02111474
	ldr r6, [r4, r5]
	ldr r4, [sp, #0x40]
	lsr r4, r4, #0x10
	lsl r4, r4, #0x18
	lsr r5, r4, #0x16
	ldr r4, _020F3840 ; =0x02111874
	ldr r4, [r4, r5]
	eor r4, r6
	eor r4, r7
	eor r1, r4
	eor r1, r3
	ldr r3, [sp, #4]
	sub r3, r3, #1
	str r3, [sp, #4]
	beq _020F36C6
	ldr r3, [sp, #0x44]
	ldr r4, [r0]
	lsl r3, r3, #0x18
	lsr r5, r3, #0x16
	ldr r3, _020F3834 ; =0x0210F874
	ldr r3, [r3, r5]
	lsr r5, r2, #8
	lsl r5, r5, #0x18
	lsr r6, r5, #0x16
	ldr r5, _020F3838 ; =0x0210F474
	ldr r7, [r5, r6]
	ldr r5, [sp, #0x10]
	lsr r5, r5, #0x18
	lsl r6, r5, #2
	ldr r5, _020F383C ; =0x02111474
	ldr r5, [r5, r6]
	str r5, [sp, #0x18]
	lsr r5, r1, #0x10
	lsl r5, r5, #0x18
	lsr r6, r5, #0x16
	ldr r5, _020F3840 ; =0x02111874
	ldr r6, [r5, r6]
	ldr r5, [sp, #0x18]
	eor r5, r6
	eor r5, r7
	eor r3, r5
	eor r3, r4
	str r3, [sp, #0xc]
	lsl r3, r2, #0x18
	lsr r5, r3, #0x16
	ldr r3, _020F3834 ; =0x0210F874
	ldr r4, [r0, #4]
	ldr r3, [r3, r5]
	lsr r5, r1, #8
	lsl r5, r5, #0x18
	lsr r6, r5, #0x16
	ldr r5, _020F3838 ; =0x0210F474
	ldr r7, [r5, r6]
	ldr r5, [sp, #0x44]
	lsr r5, r5, #0x18
	lsl r6, r5, #2
	ldr r5, _020F383C ; =0x02111474
	ldr r5, [r5, r6]
	str r5, [sp, #0x1c]
	ldr r5, [sp, #0x10]
	lsr r5, r5, #0x10
	lsl r5, r5, #0x18
	lsr r6, r5, #0x16
	ldr r5, _020F3840 ; =0x02111874
	ldr r6, [r5, r6]
	ldr r5, [sp, #0x1c]
	eor r5, r6
	eor r5, r7
	eor r3, r5
	eor r3, r4
	str r3, [sp, #8]
	lsl r3, r1, #0x18
	lsr r4, r3, #0x16
	ldr r3, _020F3834 ; =0x0210F874
	ldr r6, [r0, #8]
	ldr r5, [r3, r4]
	ldr r3, [sp, #0x10]
	lsr r1, r1, #0x18
	lsr r3, r3, #8
	lsl r3, r3, #0x18
	lsr r4, r3, #0x16
	ldr r3, _020F3838 ; =0x0210F474
	ldr r3, [r3, r4]
	str r3, [sp, #0x20]
	lsr r3, r2, #0x18
	lsl r4, r3, #2
	ldr r3, _020F383C ; =0x02111474
	lsr r2, r2, #0x10
	ldr r7, [r3, r4]
	ldr r3, [sp, #0x44]
	lsl r2, r2, #0x18
	lsr r3, r3, #0x10
	lsl r3, r3, #0x18
	lsr r4, r3, #0x16
	ldr r3, _020F3840 ; =0x02111874
	ldr r3, [r3, r4]
	add r4, r7, #0
	eor r4, r3
	ldr r3, [sp, #0x20]
	eor r3, r4
	eor r3, r5
	eor r3, r6
	str r3, [sp, #0x40]
	ldr r3, [sp, #0x10]
	ldr r5, [r0, #0xc]
	lsl r3, r3, #0x18
	lsr r4, r3, #0x16
	ldr r3, _020F3834 ; =0x0210F874
	ldr r4, [r3, r4]
	ldr r3, [sp, #0x44]
	lsr r3, r3, #8
	lsl r3, r3, #0x18
	lsr r6, r3, #0x16
	ldr r3, _020F3838 ; =0x0210F474
	ldr r3, [r3, r6]
	lsl r6, r1, #2
	ldr r1, _020F383C ; =0x02111474
	ldr r1, [r1, r6]
	lsr r6, r2, #0x16
	ldr r2, _020F3840 ; =0x02111874
	ldr r2, [r2, r6]
	add r6, r5, #0
	eor r1, r2
	eor r1, r3
	eor r1, r4
	eor r6, r1
	b _020F3502
_020F36C6:
	ldr r3, [r0]
	mov r6, #0xff
	str r3, [sp, #0x24]
	ldr r3, [sp, #0x44]
	lsl r6, r6, #0x10
	lsl r3, r3, #0x18
	lsr r4, r3, #0x16
	ldr r3, _020F3844 ; =0x0210FC74
	ldr r4, [r3, r4]
	lsl r4, r4, #0x18
	lsr r4, r4, #0x18
	str r4, [sp, #0x28]
	lsr r4, r2, #8
	lsl r4, r4, #0x18
	lsr r4, r4, #0x16
	ldr r5, [r3, r4]
	mov r4, #0xff
	lsl r4, r4, #8
	and r4, r5
	str r4, [sp, #0x2c]
	ldr r4, [sp, #0x10]
	lsr r4, r4, #0x18
	lsl r4, r4, #2
	ldr r5, [r3, r4]
	mov r4, #0xff
	lsl r4, r4, #0x18
	and r5, r4
	lsr r4, r1, #0x10
	lsl r4, r4, #0x18
	lsr r4, r4, #0x16
	ldr r4, [r3, r4]
	and r4, r6
	eor r5, r4
	ldr r4, [sp, #0x2c]
	eor r5, r4
	ldr r4, [sp, #0x28]
	eor r5, r4
	ldr r4, [sp, #0x24]
	eor r4, r5
	ldr r5, [sp]
	lsr r6, r4, #0x18
	strb r6, [r5]
	lsr r6, r4, #0x10
	strb r6, [r5, #1]
	lsr r6, r4, #8
	strb r6, [r5, #2]
	strb r4, [r5, #3]
	ldr r4, [r0, #4]
	mov r6, #0xff
	str r4, [sp, #0x30]
	lsl r4, r2, #0x18
	lsr r4, r4, #0x16
	ldr r4, [r3, r4]
	lsl r6, r6, #0x10
	lsl r4, r4, #0x18
	lsr r4, r4, #0x18
	str r4, [sp, #0x34]
	lsr r4, r1, #8
	lsl r4, r4, #0x18
	lsr r4, r4, #0x16
	ldr r5, [r3, r4]
	mov r4, #0xff
	lsl r4, r4, #8
	and r4, r5
	str r4, [sp, #0x38]
	ldr r4, [sp, #0x44]
	lsr r4, r4, #0x18
	lsl r4, r4, #2
	ldr r5, [r3, r4]
	mov r4, #0xff
	lsl r4, r4, #0x18
	and r5, r4
	ldr r4, [sp, #0x10]
	lsr r4, r4, #0x10
	lsl r4, r4, #0x18
	lsr r4, r4, #0x16
	ldr r4, [r3, r4]
	and r4, r6
	eor r5, r4
	ldr r4, [sp, #0x38]
	eor r5, r4
	ldr r4, [sp, #0x34]
	eor r5, r4
	ldr r4, [sp, #0x30]
	eor r4, r5
	ldr r5, [sp]
	lsr r6, r4, #0x18
	strb r6, [r5, #4]
	lsr r6, r4, #0x10
	strb r6, [r5, #5]
	lsr r6, r4, #8
	strb r6, [r5, #6]
	strb r4, [r5, #7]
	ldr r4, [r0, #8]
	str r4, [sp, #0x3c]
	lsl r4, r1, #0x18
	lsr r4, r4, #0x16
	ldr r4, [r3, r4]
	lsl r4, r4, #0x18
	lsr r4, r4, #0x18
	mov lr, r4
	ldr r4, [sp, #0x10]
	lsr r4, r4, #8
	lsl r4, r4, #0x18
	lsr r4, r4, #0x16
	ldr r5, [r3, r4]
	mov r4, #0xff
	lsl r4, r4, #8
	and r4, r5
	mov r12, r4
	lsr r4, r2, #0x18
	lsl r4, r4, #2
	ldr r5, [r3, r4]
	mov r4, #0xff
	lsl r4, r4, #0x18
	add r6, r5, #0
	and r6, r4
	ldr r4, [sp, #0x44]
	lsr r4, r4, #0x10
	lsl r4, r4, #0x18
	lsr r4, r4, #0x16
	ldr r5, [r3, r4]
	mov r4, #0xff
	lsl r4, r4, #0x10
	and r4, r5
	eor r4, r6
	mov r5, r12
	eor r5, r4
	mov r4, lr
	eor r5, r4
	ldr r4, [sp, #0x3c]
	eor r4, r5
	ldr r5, [sp]
	lsr r6, r4, #0x18
	strb r6, [r5, #8]
	lsr r6, r4, #0x10
	strb r6, [r5, #9]
	lsr r6, r4, #8
	strb r6, [r5, #0xa]
	strb r4, [r5, #0xb]
	ldr r5, [r0, #0xc]
	ldr r0, [sp, #0x10]
	lsr r2, r2, #0x10
	lsl r0, r0, #0x18
	lsr r0, r0, #0x16
	ldr r0, [r3, r0]
	lsr r1, r1, #0x18
	lsl r0, r0, #0x18
	lsr r4, r0, #0x18
	ldr r0, [sp, #0x44]
	lsl r2, r2, #0x18
	lsr r0, r0, #8
	lsl r0, r0, #0x18
	lsr r0, r0, #0x16
	ldr r6, [r3, r0]
	mov r0, #0xff
	lsl r0, r0, #8
	lsl r1, r1, #2
	and r0, r6
	mov r6, #0xff
	lsr r2, r2, #0x16
	ldr r1, [r3, r1]
	ldr r3, [r3, r2]
	mov r2, #0xff
	lsl r6, r6, #0x18
	lsl r2, r2, #0x10
	and r1, r6
	and r2, r3
	eor r1, r2
	eor r0, r1
	eor r0, r4
	eor r0, r5
	ldr r1, [sp]
	lsr r2, r0, #0x18
	strb r2, [r1, #0xc]
	lsr r2, r0, #0x10
	strb r2, [r1, #0xd]
	lsr r2, r0, #8
	strb r2, [r1, #0xe]
	strb r0, [r1, #0xf]
	add sp, #0x48
	pop {r3, r4, r5, r6, r7, pc}
	nop
_020F3834: .word ov17_0210F874
_020F3838: .word ov17_0210F474
_020F383C: .word ov17_02111474
_020F3840: .word ov17_02111874
_020F3844: .word ov17_0210FC74
	thumb_func_end FUN_ov17_020f348c

	thumb_func_start FUN_ov17_020f3848
FUN_ov17_020f3848: ; 0x020F3848
	mov r1, #0
	str r1, [r0, #0x14]
	str r1, [r0, #0x10]
	ldr r1, _020F3860 ; =0x67452301
	str r1, [r0]
	ldr r1, _020F3864 ; =0xEFCDAB89
	str r1, [r0, #4]
	ldr r1, _020F3868 ; =0x98BADCFE
	str r1, [r0, #8]
	ldr r1, _020F386C ; =0x10325476
	str r1, [r0, #0xc]
	bx lr
_020F3860: .word 0x67452301
_020F3864: .word 0xEFCDAB89
_020F3868: .word 0x98BADCFE
_020F386C: .word 0x10325476
	thumb_func_end FUN_ov17_020f3848

	thumb_func_start FUN_ov17_020f3870
FUN_ov17_020f3870: ; 0x020F3870
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	add r7, r1, #0
	ldr r1, [r5, #0x10]
	add r6, r2, #0
	lsr r2, r1, #3
	mov r0, #0x3f
	and r0, r2
	lsl r2, r6, #3
	add r1, r1, r2
	str r1, [r5, #0x10]
	cmp r1, r2
	bhs _020F3890
	ldr r1, [r5, #0x14]
	add r1, r1, #1
	str r1, [r5, #0x14]
_020F3890:
	ldr r2, [r5, #0x14]
	lsr r1, r6, #0x1d
	add r1, r2, r1
	str r1, [r5, #0x14]
	mov r1, #0x40
	sub r4, r1, r0
	cmp r6, r4
	blo _020F38D6
	add r1, r5, #0
	add r1, #0x18
	add r0, r1, r0
	add r1, r7, #0
	add r2, r4, #0
	bl FUN_ov17_020f41dc
	add r1, r5, #0
	add r0, r5, #0
	add r1, #0x18
	bl FUN_ov17_020f393c
	add r0, r4, #0
	add r0, #0x3f
	cmp r0, r6
	bhs _020F38D2
_020F38C0:
	add r0, r5, #0
	add r1, r7, r4
	bl FUN_ov17_020f393c
	add r4, #0x40
	add r0, r4, #0
	add r0, #0x3f
	cmp r0, r6
	blo _020F38C0
_020F38D2:
	mov r0, #0
	b _020F38D8
_020F38D6:
	mov r4, #0
_020F38D8:
	add r5, #0x18
	add r0, r5, r0
	add r1, r7, r4
	sub r2, r6, r4
	bl FUN_ov17_020f41dc
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end FUN_ov17_020f3870

	thumb_func_start FUN_ov17_020f38e8
FUN_ov17_020f38e8: ; 0x020F38E8
	push {r3, r4, r5, lr}
	sub sp, #8
	add r5, r0, #0
	add r4, r1, #0
	add r0, sp, #0
	add r1, #0x10
	mov r2, #8
	bl FUN_ov17_020f4184
	ldr r0, [r4, #0x10]
	lsr r1, r0, #3
	mov r0, #0x3f
	and r1, r0
	cmp r1, #0x38
	bhs _020F390A
	mov r0, #0x38
	b _020F390C
_020F390A:
	mov r0, #0x78
_020F390C:
	sub r2, r0, r1
	ldr r1, _020F3938 ; =0x02112848
	add r0, r4, #0
	bl FUN_ov17_020f3870
	add r0, r4, #0
	add r1, sp, #0
	mov r2, #8
	bl FUN_ov17_020f3870
	add r0, r5, #0
	add r1, r4, #0
	mov r2, #0x10
	bl FUN_ov17_020f4184
	add r0, r4, #0
	mov r1, #0
	mov r2, #0x58
	bl FUN_ov17_020f41f4
	add sp, #8
	pop {r3, r4, r5, pc}
_020F3938: .word ov17_02112848
	thumb_func_end FUN_ov17_020f38e8

	thumb_func_start FUN_ov17_020f393c
FUN_ov17_020f393c: ; 0x020F393C
	push {r4, r5, r6, r7, lr}
	sub sp, #0x84
	add r7, r0, #0
	ldr r0, [r7]
	mov r2, #0x40
	str r0, [sp]
	add r0, sp, #0x44
	ldr r4, [r7, #4]
	ldr r5, [r7, #8]
	ldr r6, [r7, #0xc]
	bl FUN_ov17_020f41b0
	ldr r0, [sp, #0x44]
	add r1, r4, #0
	str r0, [sp, #4]
	mvn r0, r4
	and r1, r5
	and r0, r6
	orr r1, r0
	ldr r0, [sp, #4]
	add r1, r0, r1
	ldr r0, _020F3D14 ; =0x28955B88
	sub r1, r1, r0
	ldr r0, [sp]
	add r0, r0, r1
	lsl r1, r0, #7
	lsr r0, r0, #0x19
	orr r0, r1
	add r3, r0, r4
	ldr r0, [sp, #0x48]
	mvn r1, r3
	str r0, [sp, #8]
	add r0, r3, #0
	and r0, r4
	and r1, r5
	orr r1, r0
	ldr r0, [sp, #8]
	add r1, r0, r1
	ldr r0, _020F3D18 ; =0x173848AA
	sub r0, r1, r0
	add r0, r6, r0
	lsl r1, r0, #0xc
	lsr r0, r0, #0x14
	orr r0, r1
	add r2, r0, r3
	ldr r0, [sp, #0x4c]
	mvn r1, r2
	str r0, [sp, #0xc]
	add r0, r2, #0
	and r0, r3
	and r1, r4
	orr r1, r0
	ldr r0, [sp, #0xc]
	add r1, r0, r1
	ldr r0, _020F3D1C ; =0x242070DB
	add r0, r1, r0
	add r0, r5, r0
	lsl r1, r0, #0x11
	lsr r0, r0, #0xf
	orr r0, r1
	add r1, r0, r2
	ldr r0, [sp, #0x50]
	mvn r5, r1
	str r0, [sp, #0x10]
	add r0, r1, #0
	and r0, r2
	and r5, r3
	orr r5, r0
	ldr r0, [sp, #0x10]
	add r5, r0, r5
	ldr r0, _020F3D20 ; =0x3E423112
	sub r0, r5, r0
	add r0, r4, r0
	lsl r4, r0, #0x16
	lsr r0, r0, #0xa
	orr r0, r4
	ldr r4, [sp, #0x54]
	add r0, r0, r1
	str r4, [sp, #0x14]
	add r4, r0, #0
	mvn r5, r0
	and r4, r1
	and r5, r2
	orr r5, r4
	ldr r4, [sp, #0x14]
	add r5, r4, r5
	ldr r4, _020F3D24 ; =0x0A83F051
	sub r4, r5, r4
	add r3, r3, r4
	lsl r4, r3, #7
	lsr r3, r3, #0x19
	orr r3, r4
	ldr r4, [sp, #0x58]
	add r3, r3, r0
	str r4, [sp, #0x18]
	add r4, r3, #0
	mvn r5, r3
	and r4, r0
	and r5, r1
	orr r5, r4
	ldr r4, [sp, #0x18]
	add r5, r4, r5
	ldr r4, _020F3D28 ; =0x4787C62A
	add r4, r5, r4
	add r2, r2, r4
	lsl r4, r2, #0xc
	lsr r2, r2, #0x14
	orr r2, r4
	ldr r4, [sp, #0x5c]
	add r2, r2, r3
	str r4, [sp, #0x1c]
	add r4, r2, #0
	mvn r5, r2
	and r4, r3
	and r5, r0
	orr r5, r4
	ldr r4, [sp, #0x1c]
	add r5, r4, r5
	ldr r4, _020F3D2C ; =0x57CFB9ED
	sub r4, r5, r4
	add r1, r1, r4
	lsl r4, r1, #0x11
	lsr r1, r1, #0xf
	orr r1, r4
	ldr r4, [sp, #0x60]
	add r1, r1, r2
	str r4, [sp, #0x20]
	add r4, r1, #0
	mvn r5, r1
	and r4, r2
	and r5, r3
	orr r5, r4
	ldr r4, [sp, #0x20]
	add r5, r4, r5
	ldr r4, _020F3D30 ; =0x02B96AFF
	sub r4, r5, r4
	add r0, r0, r4
	lsl r4, r0, #0x16
	lsr r0, r0, #0xa
	orr r0, r4
	ldr r4, [sp, #0x64]
	add r0, r0, r1
	str r4, [sp, #0x24]
	add r4, r0, #0
	mvn r5, r0
	and r4, r1
	and r5, r2
	orr r5, r4
	ldr r4, [sp, #0x24]
	add r5, r4, r5
	ldr r4, _020F3D34 ; =0x698098D8
	add r4, r5, r4
	add r3, r3, r4
	lsl r4, r3, #7
	lsr r3, r3, #0x19
	orr r3, r4
	ldr r4, [sp, #0x68]
	add r3, r3, r0
	str r4, [sp, #0x28]
	add r4, r3, #0
	mvn r5, r3
	and r4, r0
	and r5, r1
	orr r5, r4
	ldr r4, [sp, #0x28]
	add r5, r4, r5
	ldr r4, _020F3D38 ; =0x74BB0851
	sub r4, r5, r4
	add r2, r2, r4
	lsl r4, r2, #0xc
	lsr r2, r2, #0x14
	orr r2, r4
	ldr r4, [sp, #0x6c]
	add r2, r2, r3
	str r4, [sp, #0x2c]
	add r4, r2, #0
	mvn r5, r2
	and r4, r3
	and r5, r0
	orr r5, r4
	ldr r4, [sp, #0x2c]
	add r5, r4, r5
	ldr r4, _020F3D3C ; =0x0000A44F
	sub r4, r5, r4
	add r1, r1, r4
	lsl r4, r1, #0x11
	lsr r1, r1, #0xf
	orr r1, r4
	ldr r4, [sp, #0x70]
	add r1, r1, r2
	str r4, [sp, #0x30]
	add r4, r1, #0
	mvn r5, r1
	and r4, r2
	and r5, r3
	orr r5, r4
	ldr r4, [sp, #0x30]
	add r5, r4, r5
	ldr r4, _020F3D40 ; =0x76A32842
	sub r4, r5, r4
	add r0, r0, r4
	lsl r4, r0, #0x16
	lsr r0, r0, #0xa
	orr r0, r4
	add r0, r0, r1
	ldr r4, [sp, #0x74]
	mvn r5, r0
	str r4, [sp, #0x34]
	add r4, r0, #0
	and r4, r1
	and r5, r2
	orr r5, r4
	ldr r4, [sp, #0x34]
	add r5, r4, r5
	ldr r4, _020F3D44 ; =0x6B901122
	add r4, r5, r4
	add r3, r3, r4
	lsl r4, r3, #7
	lsr r3, r3, #0x19
	orr r3, r4
	add r4, r3, r0
	ldr r3, [sp, #0x78]
	mvn r5, r4
	str r3, [sp, #0x38]
	add r3, r4, #0
	and r3, r0
	and r5, r1
	orr r5, r3
	ldr r3, [sp, #0x38]
	add r5, r3, r5
	ldr r3, _020F3D48 ; =0x02678E6D
	sub r3, r5, r3
	add r2, r2, r3
	lsl r3, r2, #0xc
	lsr r2, r2, #0x14
	orr r2, r3
	add r3, r2, r4
	mvn r2, r3
	str r2, [sp, #0x3c]
	ldr r2, [sp, #0x7c]
	ldr r5, [sp, #0x3c]
	str r2, [sp, #0x40]
	add r2, r3, #0
	and r2, r4
	and r5, r0
	orr r5, r2
	ldr r2, [sp, #0x40]
	add r5, r2, r5
	ldr r2, _020F3D4C ; =0x5986BC72
	sub r2, r5, r2
	add r1, r1, r2
	lsl r2, r1, #0x11
	lsr r1, r1, #0xf
	orr r1, r2
	add r2, r1, r3
	ldr r1, [sp, #0x80]
	add r5, r2, #0
	mvn r6, r2
	mov r12, r1
	add r1, r6, #0
	and r5, r3
	and r1, r4
	orr r5, r1
	mov r1, r12
	add r5, r1, r5
	ldr r1, _020F3D50 ; =0x49B40821
	add r1, r5, r1
	add r0, r0, r1
	lsl r1, r0, #0x16
	lsr r0, r0, #0xa
	orr r0, r1
	add r1, r0, r2
	ldr r5, [sp, #0x3c]
	add r0, r1, #0
	and r0, r3
	and r5, r2
	orr r5, r0
	ldr r0, [sp, #8]
	add r5, r0, r5
	ldr r0, _020F3D54 ; =0x09E1DA9E
	sub r0, r5, r0
	add r0, r4, r0
	lsl r4, r0, #5
	lsr r0, r0, #0x1b
	orr r0, r4
	add r0, r0, r1
	add r4, r0, #0
	add r5, r1, #0
	and r4, r2
	bic r5, r2
	orr r5, r4
	ldr r4, [sp, #0x1c]
	add r5, r4, r5
	ldr r4, _020F3D58 ; =0x3FBF4CC0
	sub r4, r5, r4
	add r3, r3, r4
	lsl r4, r3, #9
	lsr r3, r3, #0x17
	orr r3, r4
	add r3, r3, r0
	add r4, r3, #0
	mvn r5, r1
	and r4, r1
	and r5, r0
	orr r5, r4
	ldr r4, [sp, #0x30]
	add r5, r4, r5
	ldr r4, _020F3D5C ; =0x265E5A51
	add r4, r5, r4
	add r2, r2, r4
	lsl r4, r2, #0xe
	lsr r2, r2, #0x12
	orr r2, r4
	add r2, r2, r3
	add r4, r2, #0
	mvn r5, r0
	and r4, r0
	and r5, r3
	orr r5, r4
	ldr r4, [sp, #4]
	add r5, r4, r5
	ldr r4, _020F3D60 ; =0x16493856
	sub r4, r5, r4
	add r1, r1, r4
	lsl r4, r1, #0x14
	lsr r1, r1, #0xc
	orr r1, r4
	add r1, r1, r2
	add r4, r1, #0
	mvn r5, r3
	and r4, r3
	and r5, r2
	orr r5, r4
	ldr r4, [sp, #0x18]
	add r5, r4, r5
	ldr r4, _020F3D64 ; =0x29D0EFA3
	sub r4, r5, r4
	add r0, r0, r4
	lsl r4, r0, #5
	lsr r0, r0, #0x1b
	orr r0, r4
	add r4, r0, r1
	add r0, r4, #0
	mvn r5, r2
	and r0, r2
	and r5, r1
	orr r5, r0
	ldr r0, [sp, #0x2c]
	add r5, r0, r5
	ldr r0, _020F3D68 ; =0x02441453
	add r0, r5, r0
	add r0, r3, r0
	lsl r3, r0, #9
	lsr r0, r0, #0x17
	orr r0, r3
	add r3, r0, r4
	add r0, r3, #0
	mvn r5, r1
	and r0, r1
	and r5, r4
	orr r5, r0
	mov r0, r12
	add r5, r0, r5
	ldr r0, _020F3D6C ; =0x275E197F
	sub r0, r5, r0
	add r0, r2, r0
	lsl r2, r0, #0xe
	lsr r0, r0, #0x12
	orr r0, r2
	add r0, r0, r3
	add r2, r0, #0
	mvn r5, r4
	and r2, r4
	and r5, r3
	orr r5, r2
	ldr r2, [sp, #0x14]
	add r5, r2, r5
	ldr r2, _020F3D70 ; =0x182C0438
	sub r2, r5, r2
	add r1, r1, r2
	lsl r2, r1, #0x14
	lsr r1, r1, #0xc
	orr r1, r2
	add r5, r1, r0
	add r1, r5, #0
	mvn r2, r3
	and r1, r3
	and r2, r0
	orr r2, r1
	ldr r1, [sp, #0x28]
	add r2, r1, r2
	ldr r1, _020F3D74 ; =0x21E1CDE6
	add r1, r2, r1
	add r1, r4, r1
	lsl r2, r1, #5
	lsr r1, r1, #0x1b
	orr r1, r2
	add r2, r1, r5
	add r1, r2, #0
	mvn r4, r0
	and r1, r0
	and r4, r5
	orr r4, r1
	ldr r1, [sp, #0x40]
	add r4, r1, r4
	ldr r1, _020F3D78 ; =0x3CC8F82A
	sub r1, r4, r1
	add r1, r3, r1
	lsl r3, r1, #9
	lsr r1, r1, #0x17
	orr r1, r3
	add r1, r1, r2
	add r3, r1, #0
	mvn r4, r5
	and r3, r5
	and r4, r2
	orr r4, r3
	ldr r3, [sp, #0x10]
	add r4, r3, r4
	ldr r3, _020F3D7C ; =0x0B2AF279
	sub r3, r4, r3
	add r0, r0, r3
	lsl r3, r0, #0xe
	lsr r0, r0, #0x12
	orr r0, r3
	add r4, r0, r1
	add r0, r4, #0
	mvn r3, r2
	and r0, r2
	and r3, r1
	orr r3, r0
	ldr r0, [sp, #0x24]
	add r3, r0, r3
	ldr r0, _020F3D80 ; =0x455A14ED
	add r0, r3, r0
	add r0, r5, r0
	lsl r3, r0, #0x14
	lsr r0, r0, #0xc
	orr r0, r3
	add r3, r0, r4
	add r0, r3, #0
	mvn r5, r1
	and r0, r1
	and r5, r4
	orr r5, r0
	ldr r0, [sp, #0x38]
	add r5, r0, r5
	ldr r0, _020F3D84 ; =0x561C16FB
	sub r0, r5, r0
	add r0, r2, r0
	lsl r2, r0, #5
	lsr r0, r0, #0x1b
	orr r0, r2
	add r0, r0, r3
	add r2, r0, #0
	mvn r5, r4
	and r2, r4
	and r5, r3
	orr r5, r2
	ldr r2, [sp, #0xc]
	add r5, r2, r5
	ldr r2, _020F3D88 ; =0x03105C08
	sub r2, r5, r2
	add r1, r1, r2
	lsl r2, r1, #9
	lsr r1, r1, #0x17
	orr r1, r2
	add r5, r1, r0
	add r1, r5, #0
	mvn r2, r3
	and r1, r3
	and r2, r0
	orr r2, r1
	ldr r1, [sp, #0x20]
	add r2, r1, r2
	ldr r1, _020F3D8C ; =0x676F02D9
	add r1, r2, r1
	add r1, r4, r1
	lsl r2, r1, #0xe
	lsr r1, r1, #0x12
	orr r1, r2
	add r2, r1, r5
	add r1, r2, #0
	mvn r4, r0
	and r1, r0
	and r4, r5
	orr r4, r1
	ldr r1, [sp, #0x34]
	add r4, r1, r4
	ldr r1, _020F3D90 ; =0x72D5B376
	b _020F3D94
	nop
_020F3D14: .word 0x28955B88
_020F3D18: .word 0x173848AA
_020F3D1C: .word 0x242070DB
_020F3D20: .word 0x3E423112
_020F3D24: .word 0x0A83F051
_020F3D28: .word 0x4787C62A
_020F3D2C: .word 0x57CFB9ED
_020F3D30: .word 0x02B96AFF
_020F3D34: .word 0x698098D8
_020F3D38: .word 0x74BB0851
_020F3D3C: .word 0x0000A44F
_020F3D40: .word 0x76A32842
_020F3D44: .word 0x6B901122
_020F3D48: .word 0x02678E6D
_020F3D4C: .word 0x5986BC72
_020F3D50: .word 0x49B40821
_020F3D54: .word 0x09E1DA9E
_020F3D58: .word 0x3FBF4CC0
_020F3D5C: .word 0x265E5A51
_020F3D60: .word 0x16493856
_020F3D64: .word 0x29D0EFA3
_020F3D68: .word 0x02441453
_020F3D6C: .word 0x275E197F
_020F3D70: .word 0x182C0438
_020F3D74: .word 0x21E1CDE6
_020F3D78: .word 0x3CC8F82A
_020F3D7C: .word 0x0B2AF279
_020F3D80: .word 0x455A14ED
_020F3D84: .word 0x561C16FB
_020F3D88: .word 0x03105C08
_020F3D8C: .word 0x676F02D9
_020F3D90: .word 0x72D5B376
_020F3D94:
	sub r1, r4, r1
	add r1, r3, r1
	lsl r3, r1, #0x14
	lsr r1, r1, #0xc
	orr r1, r3
	add r1, r1, r2
	add r3, r1, #0
	eor r3, r2
	add r4, r5, #0
	eor r4, r3
	ldr r3, [sp, #0x18]
	add r4, r3, r4
	ldr r3, _020F4104 ; =0x0005C6BE
	sub r3, r4, r3
	add r0, r0, r3
	lsl r3, r0, #4
	lsr r0, r0, #0x1c
	orr r0, r3
	add r4, r0, r1
	add r0, r4, #0
	eor r0, r1
	add r3, r2, #0
	eor r3, r0
	ldr r0, [sp, #0x24]
	add r3, r0, r3
	ldr r0, _020F4108 ; =0x788E097F
	sub r0, r3, r0
	add r0, r5, r0
	lsl r3, r0, #0xb
	lsr r0, r0, #0x15
	orr r0, r3
	add r3, r0, r4
	add r0, r3, #0
	eor r0, r4
	add r5, r1, #0
	eor r5, r0
	ldr r0, [sp, #0x30]
	add r5, r0, r5
	ldr r0, _020F410C ; =0x6D9D6122
	add r0, r5, r0
	add r0, r2, r0
	lsl r2, r0, #0x10
	lsr r0, r0, #0x10
	orr r0, r2
	add r0, r0, r3
	add r2, r0, #0
	eor r2, r3
	add r5, r4, #0
	eor r5, r2
	ldr r2, [sp, #0x40]
	add r5, r2, r5
	ldr r2, _020F4110 ; =0x021AC7F4
	sub r2, r5, r2
	add r1, r1, r2
	lsl r2, r1, #0x17
	lsr r1, r1, #9
	orr r1, r2
	add r5, r1, r0
	add r1, r5, #0
	eor r1, r0
	add r2, r3, #0
	eor r2, r1
	ldr r1, [sp, #8]
	add r2, r1, r2
	ldr r1, _020F4114 ; =0x5B4115BC
	sub r1, r2, r1
	add r1, r4, r1
	lsl r2, r1, #4
	lsr r1, r1, #0x1c
	orr r1, r2
	add r2, r1, r5
	add r1, r2, #0
	eor r1, r5
	add r4, r0, #0
	eor r4, r1
	ldr r1, [sp, #0x14]
	add r4, r1, r4
	ldr r1, _020F4118 ; =0x4BDECFA9
	add r1, r4, r1
	add r1, r3, r1
	lsl r3, r1, #0xb
	lsr r1, r1, #0x15
	orr r1, r3
	add r1, r1, r2
	add r3, r1, #0
	eor r3, r2
	add r4, r5, #0
	eor r4, r3
	ldr r3, [sp, #0x20]
	add r4, r3, r4
	ldr r3, _020F411C ; =0x0944B4A0
	sub r3, r4, r3
	add r0, r0, r3
	lsl r3, r0, #0x10
	lsr r0, r0, #0x10
	orr r0, r3
	add r4, r0, r1
	add r0, r4, #0
	eor r0, r1
	add r3, r2, #0
	eor r3, r0
	ldr r0, [sp, #0x2c]
	add r3, r0, r3
	ldr r0, _020F4120 ; =0x41404390
	sub r0, r3, r0
	add r0, r5, r0
	lsl r3, r0, #0x17
	lsr r0, r0, #9
	orr r0, r3
	add r3, r0, r4
	add r0, r3, #0
	eor r0, r4
	add r5, r1, #0
	eor r5, r0
	ldr r0, [sp, #0x38]
	add r5, r0, r5
	ldr r0, _020F4124 ; =0x289B7EC6
	add r0, r5, r0
	add r0, r2, r0
	lsl r2, r0, #4
	lsr r0, r0, #0x1c
	orr r0, r2
	add r0, r0, r3
	add r2, r0, #0
	eor r2, r3
	add r5, r4, #0
	eor r5, r2
	ldr r2, [sp, #4]
	add r5, r2, r5
	ldr r2, _020F4128 ; =0x155ED806
	sub r2, r5, r2
	add r1, r1, r2
	lsl r2, r1, #0xb
	lsr r1, r1, #0x15
	orr r1, r2
	add r5, r1, r0
	add r1, r5, #0
	eor r1, r0
	add r2, r3, #0
	eor r2, r1
	ldr r1, [sp, #0x10]
	add r2, r1, r2
	ldr r1, _020F412C ; =0x2B10CF7B
	sub r1, r2, r1
	add r1, r4, r1
	lsl r2, r1, #0x10
	lsr r1, r1, #0x10
	orr r1, r2
	add r2, r1, r5
	add r1, r2, #0
	eor r1, r5
	add r4, r0, #0
	eor r4, r1
	ldr r1, [sp, #0x1c]
	add r4, r1, r4
	ldr r1, _020F4130 ; =0x04881D05
	add r1, r4, r1
	add r1, r3, r1
	lsl r3, r1, #0x17
	lsr r1, r1, #9
	orr r1, r3
	add r1, r1, r2
	add r3, r1, #0
	eor r3, r2
	add r4, r5, #0
	eor r4, r3
	ldr r3, [sp, #0x28]
	add r4, r3, r4
	ldr r3, _020F4134 ; =0x262B2FC7
	sub r3, r4, r3
	add r0, r0, r3
	lsl r3, r0, #4
	lsr r0, r0, #0x1c
	orr r0, r3
	add r4, r0, r1
	add r0, r4, #0
	eor r0, r1
	add r3, r2, #0
	eor r3, r0
	ldr r0, [sp, #0x34]
	add r3, r0, r3
	ldr r0, _020F4138 ; =0x1924661B
	sub r0, r3, r0
	add r0, r5, r0
	lsl r3, r0, #0xb
	lsr r0, r0, #0x15
	orr r0, r3
	add r3, r0, r4
	add r0, r3, #0
	eor r0, r4
	add r5, r1, #0
	eor r5, r0
	mov r0, r12
	add r5, r0, r5
	ldr r0, _020F413C ; =0x1FA27CF8
	add r0, r5, r0
	add r0, r2, r0
	lsl r2, r0, #0x10
	lsr r0, r0, #0x10
	orr r0, r2
	add r0, r0, r3
	add r2, r0, #0
	eor r2, r3
	add r5, r4, #0
	eor r5, r2
	ldr r2, [sp, #0xc]
	add r5, r2, r5
	ldr r2, _020F4140 ; =0x3B53A99B
	sub r2, r5, r2
	add r1, r1, r2
	lsl r2, r1, #0x17
	lsr r1, r1, #9
	orr r1, r2
	add r5, r1, r0
	mvn r1, r3
	orr r1, r5
	add r2, r0, #0
	eor r2, r1
	ldr r1, [sp, #4]
	add r2, r1, r2
	ldr r1, _020F4144 ; =0x0BD6DDBC
	sub r1, r2, r1
	add r1, r4, r1
	lsl r2, r1, #6
	lsr r1, r1, #0x1a
	orr r1, r2
	add r2, r1, r5
	mvn r1, r0
	orr r1, r2
	add r4, r5, #0
	eor r4, r1
	ldr r1, [sp, #0x20]
	add r4, r1, r4
	ldr r1, _020F4148 ; =0x432AFF97
	add r1, r4, r1
	add r1, r3, r1
	lsl r3, r1, #0xa
	lsr r1, r1, #0x16
	orr r1, r3
	add r1, r1, r2
	mvn r3, r5
	orr r3, r1
	add r4, r2, #0
	eor r4, r3
	ldr r3, [sp, #0x40]
	add r4, r3, r4
	ldr r3, _020F414C ; =0x546BDC59
	sub r3, r4, r3
	add r0, r0, r3
	lsl r3, r0, #0xf
	lsr r0, r0, #0x11
	orr r0, r3
	add r4, r0, r1
	mvn r0, r2
	orr r0, r4
	add r3, r1, #0
	eor r3, r0
	ldr r0, [sp, #0x18]
	add r3, r0, r3
	ldr r0, _020F4150 ; =0x036C5FC7
	sub r0, r3, r0
	add r0, r5, r0
	lsl r3, r0, #0x15
	lsr r0, r0, #0xb
	orr r0, r3
	add r3, r0, r4
	mvn r0, r1
	orr r0, r3
	add r5, r4, #0
	eor r5, r0
	ldr r0, [sp, #0x34]
	add r5, r0, r5
	ldr r0, _020F4154 ; =0x655B59C3
	add r0, r5, r0
	add r0, r2, r0
	lsl r2, r0, #6
	lsr r0, r0, #0x1a
	orr r0, r2
	add r0, r0, r3
	mvn r2, r4
	orr r2, r0
	add r5, r3, #0
	eor r5, r2
	ldr r2, [sp, #0x10]
	add r5, r2, r5
	ldr r2, _020F4158 ; =0x70F3336E
	sub r2, r5, r2
	add r1, r1, r2
	lsl r2, r1, #0xa
	lsr r1, r1, #0x16
	orr r1, r2
	add r5, r1, r0
	mvn r1, r3
	orr r1, r5
	add r2, r0, #0
	eor r2, r1
	ldr r1, [sp, #0x2c]
	add r2, r1, r2
	ldr r1, _020F415C ; =0x00100B83
	sub r1, r2, r1
	add r1, r4, r1
	lsl r2, r1, #0xf
	lsr r1, r1, #0x11
	orr r1, r2
	add r2, r1, r5
	mvn r1, r0
	orr r1, r2
	add r4, r5, #0
	eor r4, r1
	ldr r1, [sp, #8]
	add r4, r1, r4
	ldr r1, _020F4160 ; =0x7A7BA22F
	sub r1, r4, r1
	add r1, r3, r1
	lsl r3, r1, #0x15
	lsr r1, r1, #0xb
	orr r1, r3
	add r1, r1, r2
	mvn r3, r5
	orr r3, r1
	add r4, r2, #0
	eor r4, r3
	ldr r3, [sp, #0x24]
	add r4, r3, r4
	ldr r3, _020F4164 ; =0x6FA87E4F
	add r3, r4, r3
	add r0, r0, r3
	lsl r3, r0, #6
	lsr r0, r0, #0x1a
	orr r0, r3
	add r3, r0, r1
	mvn r0, r2
	orr r0, r3
	eor r0, r1
	mov r4, r12
	add r4, r4, r0
	ldr r0, _020F4168 ; =0x01D31920
	sub r0, r4, r0
	add r0, r5, r0
	lsl r4, r0, #0xa
	lsr r0, r0, #0x16
	orr r0, r4
	add r0, r0, r3
	mvn r4, r1
	orr r4, r0
	add r5, r3, #0
	eor r5, r4
	ldr r4, [sp, #0x1c]
	add r5, r4, r5
	ldr r4, _020F416C ; =0x5CFEBCEC
	sub r4, r5, r4
	add r2, r2, r4
	lsl r4, r2, #0xf
	lsr r2, r2, #0x11
	orr r2, r4
	add r4, r2, r0
	mvn r2, r3
	orr r2, r4
	add r5, r0, #0
	eor r5, r2
	ldr r2, [sp, #0x38]
	add r5, r2, r5
	ldr r2, _020F4170 ; =0x4E0811A1
	add r2, r5, r2
	add r1, r1, r2
	lsl r2, r1, #0x15
	lsr r1, r1, #0xb
	orr r1, r2
	add r2, r1, r4
	mvn r1, r0
	orr r1, r2
	add r5, r4, #0
	eor r5, r1
	ldr r1, [sp, #0x14]
	add r5, r1, r5
	ldr r1, _020F4174 ; =0x08AC817E
	sub r1, r5, r1
	add r1, r3, r1
	lsl r3, r1, #6
	lsr r1, r1, #0x1a
	orr r1, r3
	add r1, r1, r2
	mvn r3, r4
	orr r3, r1
	add r5, r2, #0
	eor r5, r3
	ldr r3, [sp, #0x30]
	add r5, r3, r5
	ldr r3, _020F4178 ; =0x42C50DCB
	sub r3, r5, r3
	add r0, r0, r3
	lsl r3, r0, #0xa
	lsr r0, r0, #0x16
	orr r0, r3
	add r5, r0, r1
	mvn r0, r2
	orr r0, r5
	add r3, r1, #0
	eor r3, r0
	ldr r0, [sp, #0xc]
	add r3, r0, r3
	ldr r0, _020F417C ; =0x2AD7D2BB
	add r0, r3, r0
	add r0, r4, r0
	lsl r3, r0, #0xf
	lsr r0, r0, #0x11
	orr r0, r3
	add r3, r0, r5
	mvn r0, r1
	orr r0, r3
	add r4, r5, #0
	eor r4, r0
	ldr r0, [sp, #0x28]
	add r4, r0, r4
	ldr r0, _020F4180 ; =0x14792C6F
	sub r0, r4, r0
	add r0, r2, r0
	lsl r2, r0, #0x15
	lsr r0, r0, #0xb
	orr r0, r2
	ldr r2, [r7]
	add r0, r0, r3
	add r1, r2, r1
	str r1, [r7]
	ldr r1, [r7, #4]
	mov r2, #0x40
	add r0, r1, r0
	str r0, [r7, #4]
	ldr r0, [r7, #8]
	mov r1, #0
	add r0, r0, r3
	str r0, [r7, #8]
	ldr r0, [r7, #0xc]
	add r0, r0, r5
	str r0, [r7, #0xc]
	add r0, sp, #0x44
	bl FUN_ov17_020f41f4
	add sp, #0x84
	pop {r4, r5, r6, r7, pc}
_020F4104: .word 0x0005C6BE
_020F4108: .word 0x788E097F
_020F410C: .word 0x6D9D6122
_020F4110: .word 0x021AC7F4
_020F4114: .word 0x5B4115BC
_020F4118: .word 0x4BDECFA9
_020F411C: .word 0x0944B4A0
_020F4120: .word 0x41404390
_020F4124: .word 0x289B7EC6
_020F4128: .word 0x155ED806
_020F412C: .word 0x2B10CF7B
_020F4130: .word 0x04881D05
_020F4134: .word 0x262B2FC7
_020F4138: .word 0x1924661B
_020F413C: .word 0x1FA27CF8
_020F4140: .word 0x3B53A99B
_020F4144: .word 0x0BD6DDBC
_020F4148: .word 0x432AFF97
_020F414C: .word 0x546BDC59
_020F4150: .word 0x036C5FC7
_020F4154: .word 0x655B59C3
_020F4158: .word 0x70F3336E
_020F415C: .word 0x00100B83
_020F4160: .word 0x7A7BA22F
_020F4164: .word 0x6FA87E4F
_020F4168: .word 0x01D31920
_020F416C: .word 0x5CFEBCEC
_020F4170: .word 0x4E0811A1
_020F4174: .word 0x08AC817E
_020F4178: .word 0x42C50DCB
_020F417C: .word 0x2AD7D2BB
_020F4180: .word 0x14792C6F
	thumb_func_end FUN_ov17_020f393c

	thumb_func_start FUN_ov17_020f4184
FUN_ov17_020f4184: ; 0x020F4184
	push {r4, r5}
	mov r4, #0
	cmp r2, #0
	bls _020F41AC
_020F418C:
	ldr r5, [r1]
	add r3, r0, r4
	strb r5, [r0, r4]
	ldr r5, [r1]
	add r4, r4, #4
	lsr r5, r5, #8
	strb r5, [r3, #1]
	ldr r5, [r1]
	lsr r5, r5, #0x10
	strb r5, [r3, #2]
	ldr r5, [r1]
	add r1, r1, #4
	lsr r5, r5, #0x18
	strb r5, [r3, #3]
	cmp r4, r2
	blo _020F418C
_020F41AC:
	pop {r4, r5}
	bx lr
	thumb_func_end FUN_ov17_020f4184

	thumb_func_start FUN_ov17_020f41b0
FUN_ov17_020f41b0: ; 0x020F41B0
	push {r4, r5, r6, r7}
	mov r7, #0
	cmp r2, #0
	bls _020F41D6
_020F41B8:
	add r6, r1, r7
	ldrb r3, [r6, #3]
	lsl r5, r3, #0x18
	ldrb r3, [r6, #2]
	ldrb r6, [r6, #1]
	lsl r4, r3, #0x10
	ldrb r3, [r1, r7]
	lsl r6, r6, #8
	add r7, r7, #4
	orr r3, r6
	orr r3, r4
	orr r3, r5
	stmia r0!, {r3}
	cmp r7, r2
	blo _020F41B8
_020F41D6:
	pop {r4, r5, r6, r7}
	bx lr
	thumb_func_end FUN_ov17_020f41b0

	thumb_func_start FUN_ov17_020f41dc
FUN_ov17_020f41dc: ; 0x020F41DC
	push {r3, r4}
	mov r4, #0
	cmp r2, #0
	bls _020F41EE
_020F41E4:
	ldrb r3, [r1, r4]
	strb r3, [r0, r4]
	add r4, r4, #1
	cmp r4, r2
	blo _020F41E4
_020F41EE:
	pop {r3, r4}
	bx lr
	thumb_func_end FUN_ov17_020f41dc

	thumb_func_start FUN_ov17_020f41f4
FUN_ov17_020f41f4: ; 0x020F41F4
	mov r3, #0
	cmp r2, #0
	bls _020F4208
	lsl r1, r1, #0x18
	asr r1, r1, #0x18
_020F41FE:
	add r3, r3, #1
	strb r1, [r0]
	add r0, r0, #1
	cmp r3, r2
	blo _020F41FE
_020F4208:
	bx lr
	thumb_func_end FUN_ov17_020f41f4

	thumb_func_start FUN_ov17_020f420c
FUN_ov17_020f420c: ; 0x020F420C
	push {r4, r5, r6, lr}
	sub sp, #0x58
	add r5, r0, #0
	add r4, r1, #0
	add r6, r2, #0
	add r0, sp, #0
	bl FUN_ov17_020f3848
	add r0, sp, #0
	add r1, r4, #0
	add r2, r6, #0
	bl FUN_ov17_020f3870
	add r0, r5, #0
	add r1, sp, #0
	bl FUN_ov17_020f38e8
	add sp, #0x58
	pop {r4, r5, r6, pc}
	thumb_func_end FUN_ov17_020f420c

	thumb_func_start FUN_ov17_020f4234
FUN_ov17_020f4234: ; 0x020F4234
	push {r3, lr}
	blx OS_GetTick
	lsr r2, r0, #0x1a
	lsl r1, r1, #6
	orr r1, r2
	ldr r2, _020F424C ; =0x000082EA
	lsl r0, r0, #6
	mov r3, #0
	blx _ull_div
	pop {r3, pc}
_020F424C: .word 0x000082EA
	thumb_func_end FUN_ov17_020f4234

	thumb_func_start FUN_ov17_020f4250
FUN_ov17_020f4250: ; 0x020F4250
	push {r3, r4, r5, lr}
	add r4, r0, #0
	mul r4, r1
	ldr r1, _020F4270 ; =0x02114C30
	add r0, r4, #0
	ldr r1, [r1, #4]
	blx r1
	add r5, r0, #0
	beq _020F426A
	mov r1, #0
	add r2, r4, #0
	blx memset
_020F426A:
	add r0, r5, #0
	pop {r3, r4, r5, pc}
	nop
_020F4270: .word ov17_02114C30
	thumb_func_end FUN_ov17_020f4250

	thumb_func_start FUN_ov17_020f4274
FUN_ov17_020f4274: ; 0x020F4274
	push {r3, lr}
	ldr r1, _020F4280 ; =0x02114C30
	ldr r1, [r1, #0xc]
	blx r1
	pop {r3, pc}
	nop
_020F4280: .word ov17_02114C30
	thumb_func_end FUN_ov17_020f4274

	thumb_func_start FUN_ov17_020f4284
FUN_ov17_020f4284: ; 0x020F4284
	push {r4, r5}
	lsl r1, r1, #0x18
	lsr r3, r1, #0x18
	mov r1, #0xf0
	and r1, r3
	asr r5, r1, #4
	mov r1, #0xf
	add r2, r0, #0
	mov r4, #0
	and r1, r3
_020F4298:
	cmp r5, #9
	bgt _020F42A0
	add r5, #0x30
	b _020F42A2
_020F42A0:
	add r5, #0x37
_020F42A2:
	add r4, r4, #1
	strb r5, [r2]
	add r2, r2, #1
	add r5, r1, #0
	cmp r4, #2
	blt _020F4298
	mov r1, #0
	strb r1, [r2]
	sub r0, r2, r0
	pop {r4, r5}
	bx lr
	thumb_func_end FUN_ov17_020f4284

	thumb_func_start FUN_ov17_020f42b8
FUN_ov17_020f42b8: ; 0x020F42B8
	push {r3, r4, r5, r6, r7, lr}
	str r0, [sp]
	add r6, r1, #0
	add r4, r0, #0
	mov r5, #0
	mov r7, #0x3a
_020F42C4:
	mov r1, #0
	ldrsb r1, [r6, r1]
	add r0, r4, #0
	add r6, r6, #1
	bl FUN_ov17_020f4284
	add r0, r4, r0
	add r4, r0, #0
	cmp r5, #5
	bge _020F42DC
	add r4, r0, #1
	strb r7, [r0]
_020F42DC:
	add r5, r5, #1
	cmp r5, #6
	blt _020F42C4
	mov r0, #0
	strb r0, [r4]
	ldr r0, [sp]
	sub r0, r4, r0
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end FUN_ov17_020f42b8

	thumb_func_start FUN_ov17_020f42ec
FUN_ov17_020f42ec: ; 0x020F42EC
	push {r4, r5, r6, lr}
	sub sp, #8
	add r4, r0, #0
	ldr r0, _020F43BC ; =0x02114C30
	ldr r0, [r0, #0x38]
	cmp r0, #1
	blt _020F4306
	cmp r0, #5
	bgt _020F4306
	mov r0, #9
	add sp, #8
	mvn r0, r0
	pop {r4, r5, r6, pc}
_020F4306:
	ldr r5, _020F43C0 ; =0x021127C8
	ldr r0, _020F43BC ; =0x02114C30
	mov r6, #7
	str r1, [r5, #0x10]
	str r6, [r0, #0x38]
	str r2, [r0, #0x7c]
	ldr r2, [sp, #0x18]
	str r3, [r0, #4]
	str r2, [r0, #0xc]
	ldr r0, [sp, #0x1c]
	str r0, [r5, #8]
	add r0, r1, #0
	bl FUN_ov17_020f1458
	mov r2, #1
	ldr r1, _020F43BC ; =0x02114C30
	cmp r0, #0
	str r2, [r1, #0x74]
	bge _020F4332
	str r0, [r1, #0x78]
	add sp, #8
	pop {r4, r5, r6, pc}
_020F4332:
	add r0, r5, #0
	ldr r0, [r0, #8]
	ldr r1, [r1, #4]
	blx r1
	ldr r1, _020F43BC ; =0x02114C30
	cmp r0, #0
	str r0, [r1, #0x30]
	bne _020F434C
	add r0, r6, #0
	sub r0, #8
	str r0, [r1, #0x78]
	add sp, #8
	pop {r4, r5, r6, pc}
_020F434C:
	blx OS_IsThreadAvailable
	cmp r0, #1
	beq _020F4360
	add r0, r6, #0
	ldr r1, _020F43BC ; =0x02114C30
	sub r0, #0x10
	str r0, [r1, #0x78]
	add sp, #8
	pop {r4, r5, r6, pc}
_020F4360:
	add r0, r5, #0
	ldr r3, [r0, #8]
	ldr r0, _020F43C4 ; =0x02114CDC
	str r3, [sp]
	str r4, [sp, #4]
	ldr r4, _020F43BC ; =0x02114C30
	ldr r1, _020F43C8 ; =0x020F2899
	ldr r5, [r4, #0x30]
	mov r4, #7
	bic r3, r4
	mov r2, #0
	add r3, r5, r3
	blx OS_CreateThread
	ldr r0, _020F43BC ; =0x02114C30
	mov r1, #1
	str r1, [r0, #0x38]
	bl FUN_ov17_020f4234
	ldr r1, _020F43CC ; =0x0000EA60
	ldr r5, _020F43D0 ; =0x02114D9C
	add r1, r0, r1
	ldr r0, _020F43C0 ; =0x021127C8
	add r4, r6, #0
	str r1, [r0, #0xc]
	mov r0, #0
	ldr r1, _020F43BC ; =0x02114C30
	add r2, r0, #0
	str r0, [r1, #0x10]
	add r1, r0, #0
	add r3, r0, #0
_020F439E:
	stmia r5!, {r0, r1, r2, r3}
	stmia r5!, {r0, r1, r2, r3}
	sub r4, r4, #1
	bne _020F439E
	stmia r5!, {r0, r1}
	bl FUN_ov17_020f44b4
	ldr r0, _020F43C4 ; =0x02114CDC
	blx OS_WakeupThreadDirect
	ldr r1, _020F43BC ; =0x02114C30
	mov r0, #1
	str r0, [r1, #0x64]
	add sp, #8
	pop {r4, r5, r6, pc}
_020F43BC: .word ov17_02114C30
_020F43C0: .word ov17_021127C8
_020F43C4: .word ov17_02114CDC
_020F43C8: .word 0x020F2899
_020F43CC: .word 0x0000EA60
_020F43D0: .word ov17_02114D9C
	thumb_func_end FUN_ov17_020f42ec

	thumb_func_start FUN_ov17_020f43d4
FUN_ov17_020f43d4: ; 0x020F43D4
	push {r4, r5, r6, lr}
	ldr r4, _020F4460 ; =0x02114C30
	ldr r0, [r4, #0x64]
	cmp r0, #0
	beq _020F4444
	ldr r6, [r4, #0x38]
	mov r0, #1
	str r0, [r4, #0x10]
	mov r5, #0x64
	b _020F43EE
_020F43E8:
	add r0, r5, #0
	blx OS_Sleep
_020F43EE:
	ldr r0, [r4, #0x38]
	cmp r0, #1
	blt _020F43F8
	cmp r0, #5
	ble _020F43E8
_020F43F8:
	mov r0, #0x7d
	lsl r0, r0, #2
	blx OS_Sleep
	ldr r0, _020F4464 ; =0x02114CDC
	blx OS_IsThreadTerminated
	cmp r0, #0
	bne _020F4422
	ldr r4, _020F4464 ; =0x02114CDC
_020F440C:
	add r0, r4, #0
	blx OS_WakeupThreadDirect
	add r0, r4, #0
	blx OS_JoinThread
	add r0, r4, #0
	blx OS_IsThreadTerminated
	cmp r0, #0
	beq _020F440C
_020F4422:
	ldr r1, _020F4460 ; =0x02114C30
	ldr r0, [r1, #0x30]
	cmp r0, #0
	beq _020F4434
	ldr r1, [r1, #0xc]
	blx r1
	ldr r0, _020F4460 ; =0x02114C30
	mov r1, #0
	str r1, [r0, #0x30]
_020F4434:
	ldr r0, _020F4460 ; =0x02114C30
	mov r1, #0
	str r1, [r0, #0x64]
	ldr r0, [r0, #0x38]
	cmp r6, r0
	beq _020F4444
	bl FUN_ov17_020f44b4
_020F4444:
	ldr r0, _020F4460 ; =0x02114C30
	ldr r0, [r0, #0x74]
	cmp r0, #0
	ble _020F4458
	bl FUN_ov17_020f14fc
	ldr r1, _020F4460 ; =0x02114C30
	mov r2, #0
	str r2, [r1, #0x74]
	pop {r4, r5, r6, pc}
_020F4458:
	mov r0, #9
	mvn r0, r0
	pop {r4, r5, r6, pc}
	nop
_020F4460: .word ov17_02114C30
_020F4464: .word ov17_02114CDC
	thumb_func_end FUN_ov17_020f43d4

	thumb_func_start FUN_ov17_020f4468
FUN_ov17_020f4468: ; 0x020F4468
	push {r4, lr}
	add r4, r0, #0
	ldr r0, _020F4498 ; =0x02114C30
	ldr r0, [r0, #0x38]
	str r0, [r4]
	ldr r0, _020F449C ; =0x021127C8
	ldr r1, [r0, #0xc]
	mov r0, #0
	mvn r0, r0
	cmp r1, r0
	bne _020F4480
	b _020F448A
_020F4480:
	bl FUN_ov17_020f4234
	ldr r1, _020F449C ; =0x021127C8
	ldr r1, [r1, #0xc]
	sub r0, r1, r0
_020F448A:
	str r0, [r4, #4]
	ldr r0, _020F4498 ; =0x02114C30
	ldr r0, [r0, #0x78]
	str r0, [r4, #8]
	mov r0, #1
	pop {r4, pc}
	nop
_020F4498: .word ov17_02114C30
_020F449C: .word ov17_021127C8
	thumb_func_end FUN_ov17_020f4468

	thumb_func_start FUN_ov17_020f44a0
FUN_ov17_020f44a0: ; 0x020F44A0
	push {r3, lr}
	ldr r1, _020F44B0 ; =0x02114D9C
	mov r2, #0xe8
	blx memcpy
	mov r0, #1
	pop {r3, pc}
	nop
_020F44B0: .word ov17_02114D9C
	thumb_func_end FUN_ov17_020f44a0

	thumb_func_start FUN_ov17_020f44b4
FUN_ov17_020f44b4: ; 0x020F44B4
	push {lr}
	sub sp, #0xc
	add r0, sp, #0
	bl FUN_ov17_020f4468
	ldr r1, _020F44CC ; =0x02114C30
	add r0, sp, #0
	ldr r1, [r1, #0x7c]
	blx r1
	add sp, #0xc
	pop {pc}
	nop
_020F44CC: .word ov17_02114C30
	thumb_func_end FUN_ov17_020f44b4
