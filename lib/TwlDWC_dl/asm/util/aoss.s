
	.include "asm/macros/function.inc"
	.public AOSSi_Alloc
	.public AOSSi_Disconnect
	.public AOSSi_Free
	.public AOSSi_Sleep
	.public AOSSi_Status
	.public AOSSi_WLANConnect
	.public AOSSi_WLANGetBSSList
	.public CPSMyIp
	.public MI_CpuCopy8
	.public MI_CpuFill8
	.public OS_Sleep
	.public RTC_GetTime
	.public SOC_Bind
	.public SOC_Cleanup
	.public SOC_Close
	.public SOC_Poll
	.public SOC_RecvFrom
	.public SOC_SendTo
	.public SOC_Socket
	.public SOC_Startup
	.public __llmul
	.public _s32_div_f
	.public _u32_div_f

	.text
	thumb_static_func_start AOSS_MALLOC
AOSS_MALLOC: ; 0x020EDE60
	push {r3, lr}
	ldr r1, _020EDE6C ; =AOSSi_Alloc
	ldr r1, [r1]
	blx r1
	pop {r3, pc}
	nop
_020EDE6C: .word AOSSi_Alloc
	thumb_func_end AOSS_MALLOC

	thumb_static_func_start AOSS_FREE
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
	ldr r1, _020EDF68 ; =SecurityType
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
	ldr r0, _020EDF68 ; =SecurityType
	ldr r0, [r0, #0x14]
	bl AOSS_FREE
	bl aoss_release
	ldr r0, _020EDF6C ; =s_sFd
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
_020EDF68: .word SecurityType
_020EDF6C: .word s_sFd
	thumb_func_end AOSSi_Init

	thumb_static_func_start AOSS_Init_old
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
	ldr r0, _020EE2D4 ; =SecurityType
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
	ldr r5, _020EE2D4 ; =SecurityType
_020EE05A:
	ldr r0, [r5, #4]
	cmp r0, #0
	beq _020EE068
	bl AOSS_FREE
	mov r0, #0
	str r0, [r5, #4]
_020EE068:
	ldr r0, _020EE2DC ; =bssList
	bl AOSSi_WLANGetBSSList
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
	bl checkAP
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
	bl AOSSi_Sleep
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
	ldr r1, _020EE2D4 ; =SecurityType
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
	ldr r7, _020EE2D4 ; =SecurityType
_020EE138:
	ldr r1, [r7, #0xc]
	add r0, sp, #0x74
	bl AOSSi_WLANConnect
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
	bl AOSSi_Sleep
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
	bl AOSS_SetIPAddr
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
	bl MakeSendSeqID
	mov r0, #2
	add r1, r0, #0
	mov r2, #0
	bl AOSS_Socket
	ldr r1, _020EE2E4 ; =s_sFd
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
	bl AOSS_Setsockopt
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
	ldr r0, _020EE2E4 ; =s_sFd
	add r1, sp, #0x2c
	ldr r0, [r0]
	mov r2, #8
	bl AOSS_Bind
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
	ldr r0, _020EE2D4 ; =SecurityType
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
	ldr r5, _020EE2D4 ; =SecurityType
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
	ldr r0, _020EE2E4 ; =s_sFd
	b _020EE2F4
	nop
_020EE2C4: .word ov17_0210F440
_020EE2C8: .word 0x00000106
_020EE2CC: .word 0x0000010A
_020EE2D0: .word 0x0000010E
_020EE2D4: .word SecurityType
_020EE2D8: .word 0x00000116
_020EE2DC: .word bssList
_020EE2E0: .word 0xC0A80B65
_020EE2E4: .word s_sFd
_020EE2E8: .word 0x0000FFFF
_020EE2EC: .word 0x00005790
_020EE2F0: .word gData-0x4
_020EE2F4:
	mov r1, #0
	ldr r0, [r0]
	mvn r1, r1
	cmp r0, r1
	beq _020EE302
	bl AOSS_Close
_020EE302:
	mov r1, #0
	ldr r0, _020EE634 ; =s_sFd
	mvn r1, r1
	str r1, [r0]
	bl AOSS_Disconnect
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
	ldr r0, _020EE63C ; =bssList
	bl AOSSi_WLANGetBSSList
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
	bl checkAP
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
	bl AOSSi_Sleep
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
	bl AOSSi_WLANConnect
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
	bl AOSSi_Sleep
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
	bl AOSS_SetIPAddr
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
	bl AOSS_Socket
	ldr r1, _020EE634 ; =s_sFd
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
	bl AOSS_Setsockopt
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
	ldr r0, _020EE634 ; =s_sFd
	add r1, sp, #0x2c
	ldr r0, [r0]
	mov r2, #8
	bl AOSS_Bind
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
	ldr r3, _020EE634 ; =s_sFd
	ldr r0, [sp, #0x24]
	ldr r3, [r3]
	add r1, sp, #0x60
	add r2, sp, #0xb0
	bl SendMessage
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
	bl AOSS_FD_ZERO
	ldr r0, _020EE634 ; =s_sFd
	add r1, sp, #0x3c
	ldr r0, [r0]
	bl AOSS_FD_SET
	ldr r0, [sp, #0x14]
	mov r2, #0
	str r0, [sp, #0x34]
	ldr r0, [sp, #0x10]
	add r1, sp, #0x3c
	str r0, [sp, #0x38]
	add r0, sp, #0x34
	str r0, [sp]
	ldr r0, _020EE634 ; =s_sFd
	add r3, r2, #0
	ldr r0, [r0]
	add r0, r0, #1
	bl AOSS_Select
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
	bl AOSSi_Sleep
	b _020EE2AC
_020EE5E8:
	mov r0, #8
	str r0, [sp, #0x44]
	add r0, sp, #0x48
	str r0, [sp]
	add r0, sp, #0x44
	str r0, [sp, #4]
	ldr r0, _020EE634 ; =s_sFd
	ldr r1, [sp, #0x18]
	ldr r0, [r0]
	ldr r2, _020EE650 ; =0x000005DC
	add r1, #0xc
	mov r3, #0
	bl AOSS_Recvfrom
	ldr r1, _020EE634 ; =s_sFd
	lsl r0, r0, #0x10
	ldr r2, [r1]
	ldr r1, [sp, #0x18]
	lsr r0, r0, #0x10
	str r2, [r1]
	bl AOSS_Ntohs
	ldr r1, [sp, #0x18]
	add r2, sp, #0x50
	str r0, [r1, #4]
	ldr r0, _020EE634 ; =s_sFd
	add r3, sp, #0xb0
	ldr r0, [r0]
	str r0, [sp]
	ldr r0, [sp, #0x24]
	bl RecvMessage
	str r0, [sp, #0x20]
	cmp r0, #0x64
	bne _020EE654
	mov r5, #0
	b _020EE8C6
	nop
_020EE634: .word s_sFd
_020EE638: .word 0x00000116
_020EE63C: .word bssList
_020EE640: .word gData-0x4
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
	ldr r0, _020EE970 ; =s_sFd
	ldr r0, [r0]
	cmp r0, r5
	beq _020EE678
	bl AOSS_Close
_020EE678:
	mov r1, #0
	ldr r0, _020EE970 ; =s_sFd
	mvn r1, r1
	str r1, [r0]
	bl AOSS_Disconnect
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
	ldr r5, _020EE978 ; =SecurityType
_020EE6AC:
	ldr r0, [r5, #4]
	cmp r0, #0
	beq _020EE6BA
	bl AOSS_FREE
	mov r0, #0
	str r0, [r5, #4]
_020EE6BA:
	ldr r0, _020EE97C ; =bssList
	bl AOSSi_WLANGetBSSList
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
	bl checkAP
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
	bl AOSSi_Sleep
	add r0, r4, #1
	lsl r0, r0, #0x10
	asr r4, r0, #0x10
	b _020EE6AC
_020EE724:
	mov r0, #0x58
	bl AOSS_MALLOC
	ldr r1, _020EE978 ; =SecurityType
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
	ldr r7, _020EE978 ; =SecurityType
_020EE75C:
	ldr r1, [r7, #0xc]
	add r0, sp, #0x74
	bl AOSSi_WLANConnect
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
	bl AOSSi_Sleep
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
	ldr r1, _020EE978 ; =SecurityType
	ldr r0, [sp, #0x1c]
	ldr r1, [r1, #0x38]
	add r2, r0, #0
	bl AOSS_SetIPAddr
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
	bl AOSS_Socket
	ldr r1, _020EE970 ; =s_sFd
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
	bl AOSS_Setsockopt
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
	ldr r0, _020EE970 ; =s_sFd
	add r1, sp, #0x2c
	ldr r0, [r0]
	mov r2, #8
	bl AOSS_Bind
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
	bl AOSSi_Sleep
	b _020EE26E
_020EE8C6:
	ldr r0, _020EE970 ; =s_sFd
	mov r1, #0
	ldr r0, [r0]
	mvn r1, r1
	cmp r0, r1
	beq _020EE8D6
	bl AOSS_Close
_020EE8D6:
	mov r1, #0
	ldr r0, _020EE970 ; =s_sFd
	mvn r1, r1
	str r1, [r0]
	bl AOSS_Disconnect
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
_020EE970: .word s_sFd
_020EE974: .word 0x00000116
_020EE978: .word SecurityType
_020EE97C: .word bssList
_020EE980: .word 0x0000FFFF
_020EE984: .word 0x00005790
	thumb_func_end AOSS_Init_old

	thumb_static_func_start aoss_IP_sta
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

	thumb_static_func_start aoss_release
aoss_release: ; 0x020EE9A0
	push {r3, lr}
	ldr r0, _020EE9C8 ; =SecurityType
	ldr r0, [r0, #0xc]
	cmp r0, #0
	beq _020EE9B4
	bl AOSS_FREE
	ldr r0, _020EE9C8 ; =SecurityType
	mov r1, #0
	str r1, [r0, #0xc]
_020EE9B4:
	ldr r0, _020EE9C8 ; =SecurityType
	ldr r0, [r0, #4]
	cmp r0, #0
	beq _020EE9C6
	bl AOSS_FREE
	ldr r0, _020EE9C8 ; =SecurityType
	mov r1, #0
	str r1, [r0, #4]
_020EE9C6:
	pop {r3, pc}
_020EE9C8: .word SecurityType
	thumb_func_end aoss_release

	thumb_static_func_start aoss_data_init
aoss_data_init: ; 0x020EE9CC
	push {r4, lr}
	add r4, r0, #0
	ldr r0, _020EEA10 ; =gSeqID
	mov r1, #0
	mov r2, #8
	bl AOSS_Memset
	ldr r0, _020EEA14 ; =SecurityType
	mov r1, #1
	str r1, [r0, #0x10]
	ldr r0, _020EEA18 ; =gData
	mov r1, #0
	mov r2, #0x1c
	bl AOSS_Memset
	ldr r1, _020EEA14 ; =SecurityType
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
_020EEA10: .word gSeqID
_020EEA14: .word SecurityType
_020EEA18: .word gData
_020EEA1C: .word gData-0x4
_020EEA20: .word 0xC0A80B01
	thumb_func_end aoss_data_init

	thumb_static_func_start aoss_set_error
aoss_set_error: ; 0x020EEA24
	ldr r1, _020EEA2C ; =SecurityType
	str r0, [r1, #0x10]
	bx lr
	nop
_020EEA2C: .word SecurityType
	thumb_func_end aoss_set_error

	thumb_static_func_start aoss_get_error
aoss_get_error: ; 0x020EEA30
	ldr r0, _020EEA38 ; =SecurityType
	ldr r0, [r0, #0x10]
	bx lr
	nop
_020EEA38: .word SecurityType
	thumb_func_end aoss_get_error

	thumb_static_func_start AOSS_seq_data_copy
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
	ldr r1, _020EEC28 ; =SecurityType
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
_020EEC14: .word SecurityInfo+0x268
_020EEC18: .word 0x00000117
_020EEC1C: .word SecurityInfo+0x2d8
_020EEC20: .word SecurityInfo+8
_020EEC24: .word SecurityInfo+0x138
_020EEC28: .word SecurityType
_020EEC2C: .word 0x00000133
_020EEC30: .word 0x00000116
	thumb_func_end AOSS_seq_data_copy

	thumb_static_func_start aoss_check_str
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

	thumb_static_func_start checkAP
checkAP: ; 0x020EEC58
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
	thumb_func_end checkAP

	thumb_static_func_start AOSS_set_APInfo
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

	thumb_static_func_start MakeSendSeqID
MakeSendSeqID: ; 0x020EED18
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
	thumb_func_end MakeSendSeqID

	thumb_static_func_start AOSS_StatusExclusion
AOSS_StatusExclusion: ; 0x020EED48
	push {r3, lr}
	mov r1, #0
	mvn r1, r1
	cmp r0, r1
	bne _020EED5A
	ldr r1, _020EED70 ; =s_sFd
	str r0, [r1, #4]
	mov r0, #0
	pop {r3, pc}
_020EED5A:
	ldr r1, _020EED70 ; =s_sFd
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
_020EED70: .word s_sFd
	thumb_func_end AOSS_StatusExclusion

	thumb_static_func_start RecvMessage
RecvMessage: ; 0x020EED74
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
	bl DecodePacket
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
	bl AstsSetInitRes
	add r5, r0, #0
	b _020EEE04
_020EEDE6:
	ldr r3, [sp]
	add r0, r5, #0
	add r1, r6, #0
	add r2, r4, #0
	bl AstsSetSecureRes
	add r5, r0, #0
	b _020EEE04
_020EEDF6:
	ldr r3, [sp]
	add r0, r5, #0
	add r1, r6, #0
	add r2, r4, #0
	bl AstsRestartRes
	add r5, r0, #0
_020EEE04:
	add r0, r5, #0
	pop {r3, r4, r5, r6, r7, pc}
_020EEE08: .word 0x00001010
_020EEE0C: .word 0x00002010
_020EEE10: .word 0x00003010
	thumb_func_end RecvMessage

	thumb_static_func_start AstsSetInitRes
AstsSetInitRes: ; 0x020EEE14
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
	bl CheckRecvSeqID
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
	bl GetProductInfo
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
	bl GetSecurityType
	ldr r1, _020EEEEC ; =SecurityType
	str r0, [r1]
	mov r0, #0
	str r0, [r5]
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
	nop
_020EEEE8: .word aoss_ProductInfo
_020EEEEC: .word SecurityType
	thumb_func_end AstsSetInitRes

	thumb_static_func_start AstsSetSecureRes
AstsSetSecureRes: ; 0x020EEEF0
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
	bl CheckRecvSeqID
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
	ldr r0, _020EEFBC ; =SecurityInfo
	mov r1, #0
	lsl r2, r2, #4
	bl AOSS_Memset
	ldrh r0, [r7, #0xa]
	bl AOSS_Ntohs
	add r2, r0, #0
	ldr r0, _020EEFC0 ; =aoss_ProductInfo
	ldr r3, _020EEFBC ; =SecurityInfo
	str r0, [sp]
	mov r0, #0
	add r1, r4, #0
	bl GetSecurityData
	cmp r0, #0
	bge _020EEFA6
	ldr r0, [r5]
	add r0, r0, #1
	str r0, [r5]
	add r0, r6, #0
	pop {r3, r4, r5, r6, r7, pc}
_020EEFA6:
	ldr r0, _020EEFC4 ; =SecurityType
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
_020EEFBC: .word SecurityInfo
_020EEFC0: .word aoss_ProductInfo
_020EEFC4: .word SecurityType
	thumb_func_end AstsSetSecureRes

	thumb_static_func_start AstsRestartRes
AstsRestartRes: ; 0x020EEFC8
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
	bl CheckRecvSeqID
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
	thumb_func_end AstsRestartRes

	thumb_static_func_start DecodePacket
DecodePacket: ; 0x020EF06C
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
	bl CryptSeqNo
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
	bl CheckSeqID
	cmp r0, #0
	bne _020EF152
	ldrh r0, [r5, #6]
	bl AOSS_Ntohs
	mov r1, #1
	lsl r1, r1, #0xc
	cmp r0, r1
	bne _020EF0D2
	ldr r0, _020EF15C ; =gSeqID
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
	ldr r0, _020EF15C ; =gSeqID
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
_020EF15C: .word gSeqID
	thumb_func_end DecodePacket

	thumb_static_func_start CheckSeqID
CheckSeqID: ; 0x020EF160
	push {r4, r5, r6, lr}
	mov r4, #0
	ldr r6, _020EF1A0 ; =gSeqID
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
	ldr r0, _020EF1A0 ; =gSeqID
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
_020EF1A0: .word gSeqID
	thumb_func_end CheckSeqID

	thumb_static_func_start CheckRecvSeqID
CheckRecvSeqID: ; 0x020EF1A4
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
	bl CryptSeqNo
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
	thumb_func_end CheckRecvSeqID

	thumb_static_func_start GetProductInfo
GetProductInfo: ; 0x020EF1F0
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
	ldr r1, _020EF2A8 ; =SecurityType
	str r0, [r1, #0x34]
	b _020EF296
_020EF27E:
	add r0, r4, #6
	add r1, r2, #0
	bl aoss_get_bin
	bl AOSS_Ntohl
	ldr r1, _020EF2A8 ; =SecurityType
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
_020EF2A8: .word SecurityType
	thumb_func_end GetProductInfo

	thumb_static_func_start aoss_get_bin
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

	thumb_static_func_start GetWEPData
GetWEPData: ; 0x020EF2D0
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
	thumb_func_end GetWEPData

	thumb_static_func_start GetWPAData
GetWPAData: ; 0x020EF424
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
	thumb_func_end GetWPAData

	thumb_static_func_start GetBssidData
GetBssidData: ; 0x020EF4DC
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
	thumb_func_end GetBssidData

	thumb_static_func_start GetSecurityData
GetSecurityData: ; 0x020EF50C
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
	ldr r7, _020EF614 ; =AttrNo
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
	bl GetWEPData
	mov r1, #1
	orr r5, r1
	b _020EF5F2
_020EF5AA:
	mov r1, #0x4e
	lsl r1, r1, #2
	add r0, r4, #0
	add r1, r6, r1
	bl GetWEPData
	mov r1, #2
	orr r5, r1
	b _020EF5F2
_020EF5BC:
	mov r1, #0x9a
	lsl r1, r1, #2
	add r0, r4, #0
	add r1, r6, r1
	bl GetWPAData
	mov r1, #4
	orr r5, r1
	b _020EF5F2
_020EF5CE:
	mov r1, #0xb6
	lsl r1, r1, #2
	add r0, r4, #0
	add r1, r6, r1
	bl GetWPAData
	mov r1, #8
	orr r5, r1
	b _020EF5F2
_020EF5E0:
	ldr r2, [sp, #8]
	ldr r1, [sp, #0xc]
	add r0, r4, #0
	add r1, r2, r1
	bl GetBssidData
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
	ldr r0, _020EF618 ; =SecurityType
	ldr r1, [r0, #0x30]
	orr r1, r5
	str r1, [r0, #0x30]
	mov r0, #0
_020EF610:
	add sp, #0x14
	pop {r4, r5, r6, r7, pc}
_020EF614: .word AttrNo
_020EF618: .word SecurityType
	thumb_func_end GetSecurityData

	thumb_static_func_start GetSecurityType
GetSecurityType: ; 0x020EF61C
	mov r1, #0x10
	mov r2, #0
	tst r0, r1
	beq _020EF626
	mov r2, #1
_020EF626:
	add r0, r2, #0
	bx lr
	thumb_func_end GetSecurityType

	thumb_static_func_start SendMessage
SendMessage: ; 0x020EF62C
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
	bl AstsSetInitReq
	pop {r4, r5, r6, pc}
_020EF654:
	mov r0, #3
	bl AOSS_StatusExclusion
	add r0, r5, #0
	add r1, r4, #0
	add r2, r6, #0
	bl AstsSetSecureReq
	pop {r4, r5, r6, pc}
_020EF666:
	mov r0, #5
	bl AOSS_StatusExclusion
	add r0, r5, #0
	add r1, r4, #0
	add r2, r6, #0
	bl AstsRestartReq
	pop {r4, r5, r6, pc}
_020EF678:
	mov r0, #0
	mvn r0, r0
	pop {r4, r5, r6, pc}
	thumb_func_end SendMessage

	thumb_static_func_start AstsSetInitReq
AstsSetInitReq: ; 0x020EF680
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x20
	add r7, r1, #0
	mov r1, #0
	add r0, sp, #0x10
	strb r1, [r0]
	strh r1, [r0, #4]
	strh r1, [r0, #2]
	ldr r0, _020EF7B4 ; =SecurityType
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
	ldr r0, _020EF7BC ; =gSeqID
	add r1, r7, #0
	mov r2, #8
	add r6, #0x18
	bl AOSS_Memcpy
	add r0, sp, #0x14
	ldr r1, _020EF7BC ; =gSeqID
	add r0, #2
	mov r2, #8
	bl AOSS_Memcpy
	add r0, r4, #4
	bl SetStaData
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
	bl PacketDataSet
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
	bl CryptSeqNo
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
	bl SetPacketHeader
	add r2, sp, #0x10
	mov r1, #4
	ldrsh r0, [r2, r1]
	ldr r3, [sp, #0xc]
	add r0, #0x18
	strh r0, [r2, #4]
	ldrsh r1, [r2, r1]
	add r0, r5, #0
	mov r2, #0xff
	bl SendPacketUDP
	cmp r4, #0
	beq _020EF7AC
	add r0, r4, #0
	bl AOSS_FREE
_020EF7AC:
	mov r0, #0
	add sp, #0x20
	pop {r3, r4, r5, r6, r7, pc}
	nop
_020EF7B4: .word SecurityType
_020EF7B8: .word 0x000005DC
_020EF7BC: .word gSeqID
_020EF7C0: .word ov17_02112790
	thumb_func_end AstsSetInitReq

	thumb_static_func_start AstsSetSecureReq
AstsSetSecureReq: ; 0x020EF7C4
	push {r3, r4, r5, r6, lr}
	sub sp, #0x24
	add r5, r1, #0
	mov r1, #0
	add r0, sp, #0xc
	strb r1, [r0]
	strh r1, [r0, #4]
	strh r1, [r0, #2]
	ldr r0, _020EF894 ; =SecurityType
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
	ldr r0, _020EF894 ; =SecurityType
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
	ldr r0, _020EF894 ; =SecurityType
	add r1, r4, #0
	ldr r0, [r0]
	add r1, #0x18
	add r2, sp, #0x14
	add r3, sp, #0x10
	bl PacketDataSet
	add r5, #8
	add r0, sp, #0x1c
	add r1, r5, #0
	mov r2, #8
	bl AOSS_Memcpy
	ldr r2, _020EF89C ; =0x02112790
	add r0, sp, #0x1c
	mov r1, #8
	mov r3, #6
	bl CryptSeqNo
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
	bl SetPacketHeader
	add r2, sp, #0xc
	mov r1, #4
	ldrsh r0, [r2, r1]
	add r3, r6, #0
	add r0, #0x18
	strh r0, [r2, #4]
	ldrsh r1, [r2, r1]
	add r0, r4, #0
	mov r2, #0
	bl SendPacketUDP
	mov r0, #0
	add sp, #0x24
	pop {r3, r4, r5, r6, pc}
_020EF894: .word SecurityType
_020EF898: .word 0x000005DC
_020EF89C: .word ov17_02112790
	thumb_func_end AstsSetSecureReq

	thumb_static_func_start AstsRestartReq
AstsRestartReq: ; 0x020EF8A0
	push {r3, r4, r5, r6, lr}
	sub sp, #0x14
	ldr r0, _020EF900 ; =SecurityType
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
	bl CryptSeqNo
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
	bl SetPacketHeader
	add r0, r4, #0
	mov r1, #0x18
	mov r2, #0
	add r3, r6, #0
	bl SendPacketUDP
	mov r0, #0
	add sp, #0x14
	pop {r3, r4, r5, r6, pc}
	nop
_020EF900: .word SecurityType
_020EF904: .word 0x000005DC
_020EF908: .word ov17_02112790
	thumb_func_end AstsRestartReq

	thumb_static_func_start SetStaData
SetStaData: ; 0x020EF90C
	push {r3, r4, r5, r6, r7, lr}
	ldr r1, _020EF990 ; =0x02113CC0
	add r5, r0, #0
	mov r0, #0x1d
	ldrsb r0, [r1, r0]
	ldr r1, _020EF994 ; =SecurityType
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
_020EF990: .word gData-0x4
_020EF994: .word SecurityType
	thumb_func_end SetStaData

	thumb_static_func_start PacketDataSet
PacketDataSet: ; 0x020EF998
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
	ldr r0, _020EF9E8 ; =gSeqID
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
_020EF9E8: .word gSeqID
	thumb_func_end PacketDataSet

	thumb_static_func_start SetPacketHeader
SetPacketHeader: ; 0x020EF9EC
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
	thumb_func_end SetPacketHeader

	thumb_static_func_start SendPacketUDP
SendPacketUDP: ; 0x020EFA44
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
	ldr r0, _020EFAA4 ; =SecurityType
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
	bl AOSS_Sendto
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
_020EFAA0: .word 0x00005790
_020EFAA4: .word SecurityType
_020EFAA8: .word gData-0x4
	thumb_func_end SendPacketUDP

	thumb_static_func_start EncodeRC4
EncodeRC4: ; 0x020EFAAC
	push {r4, r5, r6, r7, lr}
	sub sp, #0x14
	add r5, r2, #0
	add r7, r1, #0
	add r4, r3, #0
	add r1, r5, #0
	add r6, r0, #0
	bl crc
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
	ldr r0, _020EFB20 ; =TANE
	ldr r1, [sp, #0x28]
	mov r2, #2
	bl AOSS_Memcpy
	ldr r0, _020EFB24 ; =TANE + 2
	ldr r1, [sp, #0x2c]
	ldr r2, [sp, #0x30]
	bl AOSS_Memcpy
	ldr r2, [sp, #0x30]
	ldr r1, _020EFB20 ; =TANE
	add r0, sp, #4
	add r2, r2, #2
	add r3, r5, #0
	bl RC4init
	add r0, sp, #4
	add r1, r7, #0
	add r2, r6, #0
	add r3, r5, #0
	bl RC4encrypt
	ldr r0, [sp, #0xc]
	bl AOSS_FREE
	mov r0, #0
	add sp, #0x14
	pop {r4, r5, r6, r7, pc}
_020EFB20: .word TANE
_020EFB24: .word TANE + 2
	thumb_func_end EncodeRC4

	thumb_static_func_start DecodeRC4
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
	ldr r0, _020EFBA8 ; =TANE
	ldr r1, [sp, #0x28]
	mov r2, #2
	bl AOSS_Memcpy
	ldr r0, _020EFBAC ; =TANE + 2
	ldr r1, [sp, #0x2c]
	ldr r2, [sp, #0x30]
	bl AOSS_Memcpy
	ldr r2, [sp, #0x30]
	ldr r1, _020EFBA8 ; =TANE
	add r0, sp, #0
	add r2, r2, #2
	add r3, r4, #0
	bl RC4init
	add r0, sp, #0
	add r1, r5, #0
	add r2, r7, #0
	add r3, r4, #0
	bl RC4encrypt
	add r0, r5, #0
	add r1, r4, #0
	bl crc
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
_020EFBA8: .word TANE
_020EFBAC: .word TANE + 2
	thumb_func_end DecodeRC4

	thumb_static_func_start RC4init
RC4init: ; 0x020EFBB0
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
	thumb_func_end RC4init

	thumb_static_func_start RC4encrypt
RC4encrypt: ; 0x020EFC14
	push {r3, r4, r5, r6, r7, lr}
	str r0, [sp]
	add r5, r1, #0
	add r6, r2, #0
	add r7, r3, #0
	ldr r4, _020EFC3C ; =0x00000000
	beq _020EFC38
_020EFC22:
	ldr r0, [sp]
	bl arcfour_byte
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
	thumb_func_end RC4encrypt

	thumb_static_func_start arcfour_byte
arcfour_byte: ; 0x020EFC40
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
	thumb_func_end arcfour_byte

	thumb_static_func_start crc
crc: ; 0x020EFC80
	push {r3, lr}
	add r3, r0, #0
	ldr r0, _020EFCA4 ; =crc_table
	add r2, r1, #0
	str r0, [sp]
	mov r0, #0
	add r1, r3, #0
	mvn r0, r0
	mov r3, #0
	bl update_crc
	mov r1, #0
	mvn r1, r1
	eor r0, r1
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	pop {r3, pc}
	nop
_020EFCA4: .word crc_table
	thumb_func_end crc

	thumb_static_func_start update_crc
update_crc: ; 0x020EFCA8
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	add r7, r1, #0
	add r4, r2, #0
	ldr r6, [sp, #0x18]
	cmp r3, #0
	bne _020EFCBE
	add r0, r3, #0
	add r1, r6, #0
	bl make_crc_table
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
	thumb_func_end update_crc

	thumb_static_func_start make_crc_table
make_crc_table: ; 0x020EFCE0
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
	thumb_func_end make_crc_table

	thumb_static_func_start CryptSeqNo
CryptSeqNo: ; 0x020EFD18
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
	bl MakeKey
	add r0, r6, #0
	add r1, r7, #0
	add r2, r5, #0
	bl AddKey
	ldr r2, [sp, #0xc]
	add r0, r7, #0
	add r1, r5, #0
	bl Rotate
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
	thumb_func_end CryptSeqNo

	thumb_static_func_start MakeKey
MakeKey: ; 0x020EFD94
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
	thumb_func_end MakeKey

	thumb_static_func_start AddKey
AddKey: ; 0x020EFDC8
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
	thumb_func_end AddKey

	thumb_static_func_start Rotate
Rotate: ; 0x020EFDEC
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
	thumb_func_end Rotate

	thumb_static_func_start Alloc
Alloc:
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
	thumb_func_end Alloc

	thumb_static_func_start Free
Free:
	push {r3, lr}
	add r0, r1, #0x0
	ldr r1, _020EFE40 ; =AOSSi_Free
	ldr r1, [r1, #0x0]
	blx r1
	pop {r3, pc}
_020EFE40: .word AOSSi_Free
	thumb_func_end Free

	thumb_static_func_start AOSS_SetIPAddr
AOSS_SetIPAddr: ; 0x020EFE44
	push {r3, r4, r5, lr}
	add r5, r1, #0
	add r4, r2, #0
	bl AOSS_Htonl
	ldr r1, _020EFE90 ; =s_sFd
	str r0, [r1, #0x18]
	add r0, r5, #0
	bl AOSS_Htonl
	ldr r1, _020EFE90 ; =s_sFd
	str r0, [r1, #0x1c]
	add r0, r4, #0
	bl AOSS_Htonl
	ldr r1, _020EFE90 ; =s_sFd
	str r0, [r1, #0x20]
	ldr r0, _020EFE94 ; =soconfig
	blx SOC_Startup
	cmp r0, #0
	bge _020EFE76
	mov r0, #0
	mvn r0, r0
	pop {r3, r4, r5, pc}
_020EFE76:
	ldr r5, _020EFE98 ; =CPSMyIp
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
_020EFE90: .word s_sFd
_020EFE94: .word soconfig
_020EFE98: .word CPSMyIp
	thumb_func_end AOSS_SetIPAddr

	thumb_static_func_start AOSS_Disconnect
AOSS_Disconnect: ; 0x020EFE9C
	push {r3, lr}
	blx SOC_Cleanup
	cmp r0, #0
	bge _020EFEAC
	mov r0, #0
	mvn r0, r0
	pop {r3, pc}
_020EFEAC:
	bl AOSSi_Disconnect
	cmp r0, #0
	beq _020EFEB8
	mov r0, #1
	b _020EFEBA
_020EFEB8:
	mov r0, #0
_020EFEBA:
	neg r0, r0
	pop {r3, pc}
	thumb_func_end AOSS_Disconnect

	thumb_static_func_start AOSS_Memcmp
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

	thumb_static_func_start AOSS_Memcpy
AOSS_Memcpy: ; 0x020EFEE0
	add r3, r0, #0
	add r0, r1, #0
	add r1, r3, #0
	ldr r3, _020EFEEC ; =MI_CpuCopy8
	bx r3
	nop
_020EFEEC: .word MI_CpuCopy8
	thumb_func_end AOSS_Memcpy

	thumb_static_func_start AOSS_Memset
AOSS_Memset: ; 0x020EFEF0
	ldr r3, _020EFEF8 ; =MI_CpuFill8
	lsl r1, r1, #0x18
	lsr r1, r1, #0x18
	bx r3
_020EFEF8: .word MI_CpuFill8
	thumb_func_end AOSS_Memset

	thumb_static_func_start AOSS_Recvfrom
AOSS_Recvfrom: ; 0x020EFEFC
	push {r3, r4, r5, lr}
	ldr r4, [sp, #0x14]
	ldr r5, [r4]
	ldr r4, [sp, #0x10]
	strb r5, [r4]
	str r4, [sp]
	blx SOC_RecvFrom
	pop {r3, r4, r5, pc}
	thumb_func_end AOSS_Recvfrom

	thumb_static_func_start AOSS_Select
AOSS_Select: ; 0x020EFF10
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
	blx SOC_Poll
	add sp, #8
	pop {r4, r5, r6, pc}
	nop
_020EFF60: .word 0x01FF6210
	thumb_func_end AOSS_Select

	thumb_static_func_start AOSS_Sendto
AOSS_Sendto: ; 0x020EFF64
	push {r3, r4, r5, lr}
	ldr r5, [sp, #0x14]
	ldr r4, [sp, #0x10]
	strb r5, [r4]
	str r4, [sp]
	blx SOC_SendTo
	pop {r3, r4, r5, pc}
	thumb_func_end AOSS_Sendto

	thumb_static_func_start AOSS_Setsockopt
AOSS_Setsockopt: ; 0x020EFF74
	bx lr
	thumb_func_end AOSS_Setsockopt

	thumb_static_func_start AOSS_Socket
AOSS_Socket: ; 0x020EFF78
	ldr r3, _020EFF7C ; = SOC_Socket
	bx r3
_020EFF7C: .word  SOC_Socket
	thumb_func_end AOSS_Socket

	thumb_static_func_start AOSS_Bind
AOSS_Bind: ; 0x020EFF80
	ldr r3, _020EFF88 ; = SOC_Bind
	strb r2, [r1]
	bx r3
	nop
_020EFF88: .word  SOC_Bind
	thumb_func_end AOSS_Bind

	thumb_static_func_start AOSS_Close
AOSS_Close: ; 0x020EFF8C
	ldr r3, _020EFF90 ; = SOC_Close
	bx r3
_020EFF90: .word  SOC_Close
	thumb_func_end AOSS_Close

	thumb_static_func_start AOSS_Htonl
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

	thumb_static_func_start AOSS_Htons
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

	thumb_static_func_start AOSS_Ntohl
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

	thumb_static_func_start AOSS_Ntohs
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

	thumb_static_func_start AOSS_Strlen
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

	thumb_static_func_start AOSS_Rand
AOSS_Rand: ; 0x020F0028
	push {r3, r4, lr}
	sub sp, #0xc
	ldr r0, _020F0088 ; =SecurityType
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
	ldr r0, _020F0088 ; =SecurityType
	ldr r1, _020F008C ; =0x5D588B65
	str r4, [r0, #0x18]
	str r1, [r0, #0x1c]
	ldr r1, _020F0090 ; =0x00269EC3
	str r1, [r0, #0x20]
	mov r1, #1
	str r1, [r0, #8]
_020F006A:
	ldr r0, _020F0088 ; =SecurityType
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
_020F0088: .word SecurityType
_020F008C: .word 0x5D588B65
_020F0090: .word 0x00269EC3
_020F0094: .word 0x00007FFF
	thumb_func_end AOSS_Rand

	thumb_static_func_start AOSS_FD_ZERO
AOSS_FD_ZERO: ; 0x020F0098
	mov r1, #0
	str r1, [r0]
	strh r1, [r0, #4]
	strh r1, [r0, #6]
	bx lr
	thumb_func_end AOSS_FD_ZERO

	thumb_static_func_start AOSS_FD_SET
AOSS_FD_SET: ; 0x020F00A4
	str r0, [r1]
	mov r0, #1
	strh r0, [r1, #4]
	bx lr
	thumb_func_end AOSS_FD_SET

	.rodata
ov17_0210F440:
	.byte 0xFF, 0xFF, 0xFF, 0xFF

	.data
AttrNo:
	.byte 0x09, 0x08, 0x00, 0x00
s_sFd:
	.word -1
before:
	.word -1
soconfig:
	.byte 0x00, 0x00, 0x00, 0x01
	.word Alloc, Free
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x10, 0x00, 0x00, 0x00, 0x10, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00
ov17_02112784:
	.asciz "ESSID-AOSS"
	.balign 4, 0
ov17_02112790:
	.asciz "MELCO"

	.bss
SecurityType:
	.space 0x04
bssList:
	.space 0x04
initflg:
	.space 0x04
linkInfo:
	.space 0x04
gError:
	.space 0x04
s_buf:
	.space 0x04
randContext:
	.space 0x0C
gData:
	.space 0x1C
aoss_ProductInfo:
	.space 0x280
crc_table:
	.space 0x400
SecurityInfo:
	.space 0x6A0
gSeqID:
	.space 0x08
TANE:
	.space 0x78
