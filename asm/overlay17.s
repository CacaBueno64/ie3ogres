
	.include "/macros/function.inc"
	.include "/include/overlay17.inc"

	.text
	thumb_func_start FUN_ov17_020ede60
FUN_ov17_020ede60: ; 0x020EDE60
	push {r3, lr}
	ldr r1, _020EDE6C ; =0x02114A80
	ldr r1, [r1]
	blx r1
	pop {r3, pc}
	nop
_020EDE6C: .word 0x02114A80
	thumb_func_end FUN_ov17_020ede60

	thumb_func_start FUN_ov17_020ede70
FUN_ov17_020ede70: ; 0x020EDE70
	push {r3, lr}
	ldr r1, _020EDE7C ; =0x02114A8C
	ldr r1, [r1]
	blx r1
	pop {r3, pc}
	nop
_020EDE7C: .word 0x02114A8C
	thumb_func_end FUN_ov17_020ede70

	thumb_func_start FUN_ov17_020ede80
FUN_ov17_020ede80: ; 0x020EDE80
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
	ldr r0, _020EDF58 ; =0x02114A80
	ldr r0, [r0]
	cmp r0, #0
	beq _020EDEE8
	ldr r0, _020EDF5C ; =0x02114A8C
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
	bl FUN_ov17_020ee9a0
	mov r0, #0
	mvn r0, r0
	pop {r4, pc}
_020EDF04:
	ldr r0, _020EDF64 ; =0x000005F8
	bl FUN_ov17_020ede60
	ldr r1, _020EDF68 ; =0x02113CA0
	cmp r0, #0
	str r0, [r1, #0x14]
	bne _020EDF22
	ldr r0, _020EDF60 ; =0x00000116
	mov r1, #0xf
	strb r1, [r4, r0]
	bl FUN_ov17_020ee9a0
	mov r0, #0
	mvn r0, r0
	pop {r4, pc}
_020EDF22:
	mov r0, #0
	mvn r0, r0
	bl FUN_ov17_020eed48
	add r0, r4, #0
	bl FUN_ov17_020edf70
	add r4, r0, #0
	ldr r0, _020EDF68 ; =0x02113CA0
	ldr r0, [r0, #0x14]
	bl FUN_ov17_020ede70
	bl FUN_ov17_020ee9a0
	ldr r0, _020EDF6C ; =0x02112724
	mov r1, #0
	ldr r0, [r0]
	mvn r1, r1
	cmp r0, r1
	beq _020EDF4E
	bl FUN_020eff8c
_020EDF4E:
	add r0, r4, #0
	pop {r4, pc}
	nop
_020EDF54: .word 0x00000106
_020EDF58: .word 0x02114A80
_020EDF5C: .word 0x02114A8C
_020EDF60: .word 0x00000116
_020EDF64: .word 0x000005F8
_020EDF68: .word 0x02113CA0
_020EDF6C: .word 0x02112724
	thumb_func_end FUN_ov17_020ede80

	thumb_func_start FUN_ov17_020edf70
FUN_ov17_020edf70: ; 0x020EDF70
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
	bl FUN_ov17_020efef0
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
	bl FUN_ov17_020ee9cc
	ldr r0, _020EE2D4 ; =0x02113CA0
	ldr r1, [r0, #0x2c]
	mov r0, #1
	and r0, r1
	cmp r0, #1
	beq _020EE046
	mov r0, #0x13
	bl FUN_ov17_020eea24
	ldr r1, _020EE2D8 ; =0x00000116
	ldr r0, [sp, #8]
	mov r2, #0xf
	strb r2, [r0, r1]
	bl FUN_ov17_020ee9a0
	mov r0, #0
	add sp, #0xc8
	mvn r0, r0
	pop {r3, r4, r5, r6, r7, pc}
_020EE046:
	mov r4, #0
	add r0, r4, #0
	bl FUN_ov17_020eed48
	add r1, sp, #0x2c
	mov r0, #0x32
	ldrsh r6, [r1, r0]
	mov r0, #0x30
	ldrsh r7, [r1, r0]
	ldr r5, _020EE2D4 ; =0x02113CA0
_020EE05A:
	ldr r0, [r5, #4]
	cmp r0, #0
	beq _020EE068
	bl FUN_ov17_020ede70
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
	bl FUN_ov17_020ee9a0
	mov r0, #0
	add sp, #0xc8
	mvn r0, r0
	pop {r3, r4, r5, r6, r7, pc}
_020EE08A:
	ldr r0, [r5, #4]
	bl FUN_ov17_020eec58
	cmp r0, #4
	bne _020EE0A8
	ldr r1, _020EE2D8 ; =0x00000116
	ldr r0, [sp, #8]
	mov r2, #2
	strb r2, [r0, r1]
	bl FUN_ov17_020ee9a0
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
	bl FUN_ov17_020ee9a0
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
	bl FUN_ov17_020eed48
	add r0, sp, #0x74
	mov r1, #0
	mov r2, #0x3c
	bl FUN_ov17_020efef0
	add r0, sp, #0x74
	bl FUN_ov17_020eecd4
	cmp r0, #0
	beq _020EE100
	ldr r1, _020EE2D8 ; =0x00000116
	ldr r0, [sp, #8]
	mov r2, #0xf
	strb r2, [r0, r1]
	bl FUN_ov17_020ee9a0
	mov r0, #0
	add sp, #0xc8
	mvn r0, r0
	pop {r3, r4, r5, r6, r7, pc}
_020EE100:
	mov r0, #0x58
	bl FUN_ov17_020ede60
	ldr r1, _020EE2D4 ; =0x02113CA0
	cmp r0, #0
	str r0, [r1, #0xc]
	bne _020EE122
	ldr r1, _020EE2D8 ; =0x00000116
	ldr r0, [sp, #8]
	mov r2, #0xf
	strb r2, [r0, r1]
	bl FUN_ov17_020ee9a0
	mov r0, #0
	add sp, #0xc8
	mvn r0, r0
	pop {r3, r4, r5, r6, r7, pc}
_020EE122:
	mov r1, #0
	mov r2, #0x58
	bl FUN_ov17_020efef0
	add r1, sp, #0x2c
	mov r0, #0x30
	ldrsh r5, [r1, r0]
	mov r4, #0
	cmp r5, #0
	ble _020EE17A
	ldr r7, _020EE2D4 ; =0x02113CA0
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
	bl FUN_ov17_020ee9a0
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
	bl FUN_ov17_020ee9a0
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
	bl FUN_ov17_020eea24
	ldr r1, _020EE2D8 ; =0x00000116
	ldr r0, [sp, #8]
	mov r2, #0xf
	strb r2, [r0, r1]
	bl FUN_ov17_020ee9a0
	mov r0, #0
	add sp, #0xc8
	mvn r0, r0
	pop {r3, r4, r5, r6, r7, pc}
_020EE1C2:
	bl FUN_ov17_020ee9a0
	mov r3, #0x11
	ldr r2, [sp, #8]
	lsl r3, r3, #4
	mov r0, #3
	add r1, sp, #0xb0
	add r2, r2, r3
	bl FUN_ov17_020eed18
	mov r0, #2
	add r1, r0, #0
	mov r2, #0
	bl FUN_020eff78
	ldr r1, _020EE2E4 ; =0x02112724
	cmp r0, #0
	str r0, [r1]
	bge _020EE1FC
	ldr r1, _020EE2D8 ; =0x00000116
	ldr r0, [sp, #8]
	mov r2, #0xf
	strb r2, [r0, r1]
	bl FUN_ov17_020ee9a0
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
	bl FUN_ov17_020eea24
	ldr r1, _020EE2D8 ; =0x00000116
	ldr r0, [sp, #8]
	mov r2, #0xf
	strb r2, [r0, r1]
	bl FUN_ov17_020ee9a0
	mov r0, #0
	add sp, #0xc8
	mvn r0, r0
	pop {r3, r4, r5, r6, r7, pc}
_020EE228:
	add r0, sp, #0x2c
	mov r1, #0
	mov r2, #8
	bl FUN_ov17_020efef0
	mov r1, #2
	add r0, sp, #0x2c
	strb r1, [r0, #1]
	ldr r0, _020EE2E0 ; =0xC0A80B65
	bl FUN_ov17_020eff94
	str r0, [sp, #0x30]
	ldr r0, _020EE2EC ; =0x00005790
	bl FUN_ov17_020effbc
	add r1, sp, #0x2c
	strh r0, [r1, #2]
	ldr r0, _020EE2E4 ; =0x02112724
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
	bl FUN_ov17_020ee9a0
	mov r0, #0
	add sp, #0xc8
	mvn r0, r0
	pop {r3, r4, r5, r6, r7, pc}
_020EE26E:
	ldr r0, _020EE2D4 ; =0x02113CA0
	mov r1, #0
	ldr r0, [r0, #0x14]
	mov r2, #0x14
	str r0, [sp, #0x18]
	add r0, sp, #0x60
	bl FUN_ov17_020efef0
	ldr r0, _020EE2E0 ; =0xC0A80B65
	mov r1, #0xfa
	str r0, [sp, #0x70]
	sub r0, #0x64
	str r0, [sp, #0x60]
	ldr r0, [sp, #0xc]
	lsl r1, r1, #2
	blx FUN_0201f9bc
	str r0, [sp, #0x14]
	mov r1, #0xfa
	ldr r0, [sp, #0xc]
	lsl r1, r1, #2
	blx FUN_0201f9bc
	mov r0, #0xfa
	lsl r0, r0, #2
	mul r0, r1
	str r0, [sp, #0x10]
	mov r1, #0x30
	add r0, sp, #0x2c
	ldrsh r7, [r0, r1]
	ldr r5, _020EE2D4 ; =0x02113CA0
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
	ldr r0, _020EE2E4 ; =0x02112724
	b _020EE2F4
	nop
_020EE2C4: .word 0x0210F440
_020EE2C8: .word 0x00000106
_020EE2CC: .word 0x0000010A
_020EE2D0: .word 0x0000010E
_020EE2D4: .word 0x02113CA0
_020EE2D8: .word 0x00000116
_020EE2DC: .word 0x02113CA4
_020EE2E0: .word 0xC0A80B65
_020EE2E4: .word 0x02112724
_020EE2E8: .word 0x0000FFFF
_020EE2EC: .word 0x00005790
_020EE2F0: .word 0x02113CC0
_020EE2F4:
	mov r1, #0
	ldr r0, [r0]
	mvn r1, r1
	cmp r0, r1
	beq _020EE302
	bl FUN_020eff8c
_020EE302:
	mov r1, #0
	ldr r0, _020EE634 ; =0x02112724
	mvn r1, r1
	str r1, [r0]
	bl FUN_ov17_020efe9c
	cmp r0, #0
	beq _020EE326
	ldr r1, _020EE638 ; =0x00000116
	ldr r0, [sp, #8]
	mov r2, #0xf
	strb r2, [r0, r1]
	bl FUN_ov17_020ee9a0
	mov r0, #0
	add sp, #0xc8
	mvn r0, r0
	pop {r3, r4, r5, r6, r7, pc}
_020EE326:
	mov r0, #0x58
	bl FUN_ov17_020ede60
	str r0, [r5, #4]
	cmp r0, #0
	bne _020EE346
	ldr r1, _020EE638 ; =0x00000116
	ldr r0, [sp, #8]
	mov r2, #0xf
	strb r2, [r0, r1]
	bl FUN_ov17_020ee9a0
	mov r0, #0
	add sp, #0xc8
	mvn r0, r0
	pop {r3, r4, r5, r6, r7, pc}
_020EE346:
	ldr r0, [r5, #4]
	cmp r0, #0
	beq _020EE354
	bl FUN_ov17_020ede70
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
	bl FUN_ov17_020ee9a0
	mov r0, #0
	add sp, #0xc8
	mvn r0, r0
	pop {r3, r4, r5, r6, r7, pc}
_020EE378:
	ldr r0, [r5, #4]
	bl FUN_ov17_020eec58
	cmp r0, #4
	bne _020EE396
	ldr r1, _020EE638 ; =0x00000116
	ldr r0, [sp, #8]
	mov r2, #2
	strb r2, [r0, r1]
	bl FUN_ov17_020ee9a0
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
	bl FUN_ov17_020ee9a0
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
	bl FUN_ov17_020ee9a0
	mov r0, #0
	add sp, #0xc8
	mvn r0, r0
	pop {r3, r4, r5, r6, r7, pc}
_020EE3DE:
	mov r0, #0x58
	bl FUN_ov17_020ede60
	str r0, [r5, #0xc]
	cmp r0, #0
	bne _020EE3FE
	ldr r1, _020EE638 ; =0x00000116
	ldr r0, [sp, #8]
	mov r2, #0xf
	strb r2, [r0, r1]
	bl FUN_ov17_020ee9a0
	mov r0, #0
	add sp, #0xc8
	mvn r0, r0
	pop {r3, r4, r5, r6, r7, pc}
_020EE3FE:
	mov r1, #0
	mov r2, #0x58
	bl FUN_ov17_020efef0
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
	bl FUN_ov17_020ee9a0
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
	bl FUN_ov17_020ee9a0
	mov r0, #0
	add sp, #0xc8
	mvn r0, r0
	pop {r3, r4, r5, r6, r7, pc}
_020EE466:
	ldr r0, [r5, #0x34]
	ldr r1, [r5, #0x38]
	bl FUN_ov17_020ee988
	ldr r1, [r5, #0x38]
	add r2, r0, #0
	str r0, [sp, #0x1c]
	bl FUN_ov17_020efe44
	cmp r0, #0
	beq _020EE496
	mov r0, #0xc
	bl FUN_ov17_020eea24
	ldr r1, _020EE638 ; =0x00000116
	ldr r0, [sp, #8]
	mov r2, #0xf
	strb r2, [r0, r1]
	bl FUN_ov17_020ee9a0
	mov r0, #0
	add sp, #0xc8
	mvn r0, r0
	pop {r3, r4, r5, r6, r7, pc}
_020EE496:
	ldr r0, _020EE640 ; =0x02113CC0
	mov r1, #1
	strb r1, [r0, #0x1c]
	bl FUN_ov17_020ee9a0
	mov r0, #2
	add r1, r0, #0
	mov r2, #0
	bl FUN_020eff78
	ldr r1, _020EE634 ; =0x02112724
	cmp r0, #0
	str r0, [r1]
	bge _020EE4C6
	ldr r1, _020EE638 ; =0x00000116
	ldr r0, [sp, #8]
	mov r2, #0xf
	strb r2, [r0, r1]
	bl FUN_ov17_020ee9a0
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
	bl FUN_ov17_020eea24
	ldr r1, _020EE638 ; =0x00000116
	ldr r0, [sp, #8]
	mov r2, #0xf
	strb r2, [r0, r1]
	bl FUN_ov17_020ee9a0
	mov r0, #0
	add sp, #0xc8
	mvn r0, r0
	pop {r3, r4, r5, r6, r7, pc}
_020EE4F2:
	add r0, sp, #0x2c
	mov r1, #0
	mov r2, #8
	bl FUN_ov17_020efef0
	mov r1, #2
	add r0, sp, #0x2c
	strb r1, [r0, #1]
	ldr r0, [sp, #0x1c]
	bl FUN_ov17_020eff94
	str r0, [sp, #0x30]
	ldr r0, _020EE648 ; =0x00005790
	bl FUN_ov17_020effbc
	add r1, sp, #0x2c
	strh r0, [r1, #2]
	ldr r0, _020EE634 ; =0x02112724
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
	bl FUN_ov17_020ee9a0
	mov r0, #0
	add sp, #0xc8
	mvn r0, r0
	pop {r3, r4, r5, r6, r7, pc}
_020EE538:
	ldr r3, _020EE634 ; =0x02112724
	ldr r0, [sp, #0x24]
	ldr r3, [r3]
	add r1, sp, #0x60
	add r2, sp, #0xb0
	bl FUN_ov17_020ef62c
	mov r1, #0
	mvn r1, r1
	cmp r0, r1
	bne _020EE56E
	mov r1, #1
	ldr r0, [sp, #0x24]
	lsl r1, r1, #0xc
	add r0, r0, r1
	bl FUN_ov17_020eea24
	ldr r1, _020EE638 ; =0x00000116
	ldr r0, [sp, #8]
	mov r2, #0xf
	strb r2, [r0, r1]
	bl FUN_ov17_020ee9a0
	mov r0, #0
	add sp, #0xc8
	mvn r0, r0
	pop {r3, r4, r5, r6, r7, pc}
_020EE56E:
	ldr r0, [sp, #0x18]
	ldr r2, _020EE64C ; =0x000005F8
	mov r1, #0
	bl FUN_ov17_020efef0
	add r0, sp, #0x3c
	bl FUN_ov17_020f0098
	ldr r0, _020EE634 ; =0x02112724
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
	ldr r0, _020EE634 ; =0x02112724
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
	bl FUN_ov17_020eea24
	b _020EE5D8
_020EE5C6:
	cmp r0, #1
	bne _020EE5D2
	mov r0, #0x10
	bl FUN_ov17_020eea24
	b _020EE5D8
_020EE5D2:
	mov r0, #0x11
	bl FUN_ov17_020eea24
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
	ldr r0, _020EE634 ; =0x02112724
	ldr r1, [sp, #0x18]
	ldr r0, [r0]
	ldr r2, _020EE650 ; =0x000005DC
	add r1, #0xc
	mov r3, #0
	bl FUN_ov17_020efefc
	ldr r1, _020EE634 ; =0x02112724
	lsl r0, r0, #0x10
	ldr r2, [r1]
	ldr r1, [sp, #0x18]
	lsr r0, r0, #0x10
	str r2, [r1]
	bl FUN_ov17_020efffc
	ldr r1, [sp, #0x18]
	add r2, sp, #0x50
	str r0, [r1, #4]
	ldr r0, _020EE634 ; =0x02112724
	add r3, sp, #0xb0
	ldr r0, [r0]
	str r0, [sp]
	ldr r0, [sp, #0x24]
	bl FUN_ov17_020eed74
	str r0, [sp, #0x20]
	cmp r0, #0x64
	bne _020EE654
	mov r5, #0
	b _020EE8C6
	nop
_020EE634: .word 0x02112724
_020EE638: .word 0x00000116
_020EE63C: .word 0x02113CA4
_020EE640: .word 0x02113CC0
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
	ldr r0, _020EE970 ; =0x02112724
	ldr r0, [r0]
	cmp r0, r5
	beq _020EE678
	bl FUN_020eff8c
_020EE678:
	mov r1, #0
	ldr r0, _020EE970 ; =0x02112724
	mvn r1, r1
	str r1, [r0]
	bl FUN_ov17_020efe9c
	cmp r0, #0
	beq _020EE69C
	ldr r1, _020EE974 ; =0x00000116
	ldr r0, [sp, #8]
	mov r2, #0xf
	strb r2, [r0, r1]
	bl FUN_ov17_020ee9a0
	mov r0, #0
	add sp, #0xc8
	mvn r0, r0
	pop {r3, r4, r5, r6, r7, pc}
_020EE69C:
	mov r0, #4
	mov r4, #0
	bl FUN_ov17_020eed48
	add r1, sp, #0x2c
	mov r0, #0x30
	ldrsh r7, [r1, r0]
	ldr r5, _020EE978 ; =0x02113CA0
_020EE6AC:
	ldr r0, [r5, #4]
	cmp r0, #0
	beq _020EE6BA
	bl FUN_ov17_020ede70
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
	bl FUN_ov17_020ee9a0
	mov r0, #0
	add sp, #0xc8
	mvn r0, r0
	pop {r3, r4, r5, r6, r7, pc}
_020EE6DC:
	ldr r0, [r5, #4]
	bl FUN_ov17_020eec58
	cmp r0, #4
	bne _020EE6FA
	ldr r1, _020EE974 ; =0x00000116
	ldr r0, [sp, #8]
	mov r2, #2
	strb r2, [r0, r1]
	bl FUN_ov17_020ee9a0
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
	bl FUN_ov17_020ee9a0
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
	bl FUN_ov17_020ede60
	ldr r1, _020EE978 ; =0x02113CA0
	cmp r0, #0
	str r0, [r1, #0xc]
	bne _020EE746
	ldr r1, _020EE974 ; =0x00000116
	ldr r0, [sp, #8]
	mov r2, #0xf
	strb r2, [r0, r1]
	bl FUN_ov17_020ee9a0
	mov r0, #0
	add sp, #0xc8
	mvn r0, r0
	pop {r3, r4, r5, r6, r7, pc}
_020EE746:
	mov r1, #0
	mov r2, #0x58
	bl FUN_ov17_020efef0
	add r1, sp, #0x2c
	mov r0, #0x30
	ldrsh r5, [r1, r0]
	mov r4, #0
	cmp r5, #0
	ble _020EE79E
	ldr r7, _020EE978 ; =0x02113CA0
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
	bl FUN_ov17_020ee9a0
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
	bl FUN_ov17_020ee9a0
	mov r0, #0
	add sp, #0xc8
	mvn r0, r0
	pop {r3, r4, r5, r6, r7, pc}
_020EE7BC:
	ldr r1, _020EE978 ; =0x02113CA0
	ldr r0, [sp, #0x1c]
	ldr r1, [r1, #0x38]
	add r2, r0, #0
	bl FUN_ov17_020efe44
	cmp r0, #0
	beq _020EE7E6
	mov r0, #0xc
	bl FUN_ov17_020eea24
	ldr r1, _020EE974 ; =0x00000116
	ldr r0, [sp, #8]
	mov r2, #0xf
	strb r2, [r0, r1]
	bl FUN_ov17_020ee9a0
	mov r0, #0
	add sp, #0xc8
	mvn r0, r0
	pop {r3, r4, r5, r6, r7, pc}
_020EE7E6:
	bl FUN_ov17_020ee9a0
	mov r0, #2
	add r1, r0, #0
	mov r2, #0
	bl FUN_020eff78
	ldr r1, _020EE970 ; =0x02112724
	cmp r0, #0
	str r0, [r1]
	bge _020EE810
	ldr r1, _020EE974 ; =0x00000116
	ldr r0, [sp, #8]
	mov r2, #0xf
	strb r2, [r0, r1]
	bl FUN_ov17_020ee9a0
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
	bl FUN_ov17_020eea24
	ldr r1, _020EE974 ; =0x00000116
	ldr r0, [sp, #8]
	mov r2, #0xf
	strb r2, [r0, r1]
	bl FUN_ov17_020ee9a0
	mov r0, #0
	add sp, #0xc8
	mvn r0, r0
	pop {r3, r4, r5, r6, r7, pc}
_020EE83C:
	add r0, sp, #0x2c
	mov r1, #0
	mov r2, #8
	bl FUN_ov17_020efef0
	mov r1, #2
	add r0, sp, #0x2c
	strb r1, [r0, #1]
	ldr r0, [sp, #0x1c]
	bl FUN_ov17_020eff94
	str r0, [sp, #0x30]
	ldr r0, _020EE984 ; =0x00005790
	bl FUN_ov17_020effbc
	add r1, sp, #0x2c
	strh r0, [r1, #2]
	ldr r0, _020EE970 ; =0x02112724
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
	bl FUN_ov17_020ee9a0
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
	bl FUN_ov17_020eea24
	b _020EE8B6
_020EE8A4:
	cmp r0, #1
	bne _020EE8B0
	mov r0, #0x10
	bl FUN_ov17_020eea24
	b _020EE8B6
_020EE8B0:
	mov r0, #0x11
	bl FUN_ov17_020eea24
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
	ldr r0, _020EE970 ; =0x02112724
	mov r1, #0
	ldr r0, [r0]
	mvn r1, r1
	cmp r0, r1
	beq _020EE8D6
	bl FUN_020eff8c
_020EE8D6:
	mov r1, #0
	ldr r0, _020EE970 ; =0x02112724
	mvn r1, r1
	str r1, [r0]
	bl FUN_ov17_020efe9c
	cmp r0, #0
	beq _020EE8FA
	ldr r1, _020EE974 ; =0x00000116
	ldr r0, [sp, #8]
	mov r2, #0xf
	strb r2, [r0, r1]
	bl FUN_ov17_020ee9a0
	mov r0, #0
	add sp, #0xc8
	mvn r0, r0
	pop {r3, r4, r5, r6, r7, pc}
_020EE8FA:
	cmp r5, #0
	beq _020EE94A
	bl FUN_ov17_020eea30
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
	bl FUN_ov17_020ee9a0
	mov r0, #0
	add sp, #0xc8
	mvn r0, r0
	pop {r3, r4, r5, r6, r7, pc}
_020EE94A:
	ldr r0, [sp, #8]
	bl FUN_ov17_020eea3c
	cmp r0, #0
	beq _020EE968
	ldr r1, _020EE974 ; =0x00000116
	ldr r0, [sp, #8]
	mov r2, #6
	strb r2, [r0, r1]
	bl FUN_ov17_020ee9a0
	mov r0, #0
	add sp, #0xc8
	mvn r0, r0
	pop {r3, r4, r5, r6, r7, pc}
_020EE968:
	mov r0, #0
	add sp, #0xc8
	pop {r3, r4, r5, r6, r7, pc}
	nop
_020EE970: .word 0x02112724
_020EE974: .word 0x00000116
_020EE978: .word 0x02113CA0
_020EE97C: .word 0x02113CA4
_020EE980: .word 0x0000FFFF
_020EE984: .word 0x00005790
	thumb_func_end FUN_ov17_020edf70

	thumb_func_start FUN_ov17_020ee988
FUN_ov17_020ee988: ; 0x020EE988
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
	thumb_func_end FUN_ov17_020ee988

	thumb_func_start FUN_ov17_020ee9a0
FUN_ov17_020ee9a0: ; 0x020EE9A0
	push {r3, lr}
	ldr r0, _020EE9C8 ; =0x02113CA0
	ldr r0, [r0, #0xc]
	cmp r0, #0
	beq _020EE9B4
	bl FUN_ov17_020ede70
	ldr r0, _020EE9C8 ; =0x02113CA0
	mov r1, #0
	str r1, [r0, #0xc]
_020EE9B4:
	ldr r0, _020EE9C8 ; =0x02113CA0
	ldr r0, [r0, #4]
	cmp r0, #0
	beq _020EE9C6
	bl FUN_ov17_020ede70
	ldr r0, _020EE9C8 ; =0x02113CA0
	mov r1, #0
	str r1, [r0, #4]
_020EE9C6:
	pop {r3, pc}
_020EE9C8: .word 0x02113CA0
	thumb_func_end FUN_ov17_020ee9a0

	thumb_func_start FUN_ov17_020ee9cc
FUN_ov17_020ee9cc: ; 0x020EE9CC
	push {r4, lr}
	add r4, r0, #0
	ldr r0, _020EEA10 ; =0x02114A00
	mov r1, #0
	mov r2, #8
	bl FUN_ov17_020efef0
	ldr r0, _020EEA14 ; =0x02113CA0
	mov r1, #1
	str r1, [r0, #0x10]
	ldr r0, _020EEA18 ; =0x02113CC4
	mov r1, #0
	mov r2, #0x1c
	bl FUN_ov17_020efef0
	ldr r1, _020EEA14 ; =0x02113CA0
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
_020EEA10: .word 0x02114A00
_020EEA14: .word 0x02113CA0
_020EEA18: .word 0x02113CC4
_020EEA1C: .word 0x02113CC0
_020EEA20: .word 0xC0A80B01
	thumb_func_end FUN_ov17_020ee9cc

	thumb_func_start FUN_ov17_020eea24
FUN_ov17_020eea24: ; 0x020EEA24
	ldr r1, _020EEA2C ; =0x02113CA0
	str r0, [r1, #0x10]
	bx lr
	nop
_020EEA2C: .word 0x02113CA0
	thumb_func_end FUN_ov17_020eea24

	thumb_func_start FUN_ov17_020eea30
FUN_ov17_020eea30: ; 0x020EEA30
	ldr r0, _020EEA38 ; =0x02113CA0
	ldr r0, [r0, #0x10]
	bx lr
	nop
_020EEA38: .word 0x02113CA0
	thumb_func_end FUN_ov17_020eea30

	thumb_func_start FUN_ov17_020eea3c
FUN_ov17_020eea3c: ; 0x020EEA3C
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
	ldr r1, _020EEC28 ; =0x02113CA0
	add r2, #0x3d
	ldr r0, [r1, #0x2c]
	ldr r1, [r1, #0x30]
	and r0, r1
	strh r0, [r7]
	add r0, r4, #0
	mov r1, #0
	bl FUN_ov17_020efef0
	ldrh r1, [r7]
	mov r0, #1
	tst r0, r1
	beq _020EEADA
	add r1, r6, #0
	ldr r2, [r6, #4]
	add r0, r4, #0
	add r1, #0x30
	bl FUN_ov17_020efee0
	add r1, r6, #0
	ldr r2, [r6, #4]
	add r0, r4, #6
	add r1, #0x70
	bl FUN_ov17_020efee0
	add r0, r4, #0
	add r1, r6, #0
	ldr r2, [r6, #4]
	add r0, #0xc
	add r1, #0xb0
	bl FUN_ov17_020efee0
	add r0, r4, #0
	add r1, r6, #0
	ldr r2, [r6, #4]
	add r0, #0x12
	add r1, #0xf0
	bl FUN_ov17_020efee0
	add r0, r6, #0
	add r0, #8
	bl FUN_ov17_020f0014
	add r1, r0, #0
	add r0, r6, #0
	add r0, #8
	bl FUN_ov17_020eec34
	cmp r0, #0
	beq _020EEAC4
	b _020EEC00
_020EEAC4:
	add r0, r6, #0
	add r0, #8
	bl FUN_ov17_020f0014
	add r2, r0, #0
	add r0, r4, #0
	add r6, #8
	add r0, #0x18
	add r1, r6, #0
	bl FUN_ov17_020efee0
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
	bl FUN_ov17_020efee0
	add r0, r4, #0
	add r1, r5, #0
	ldr r2, [r5, #4]
	add r0, #0x47
	add r1, #0x70
	bl FUN_ov17_020efee0
	add r0, r4, #0
	add r1, r5, #0
	ldr r2, [r5, #4]
	add r0, #0x55
	add r1, #0xb0
	bl FUN_ov17_020efee0
	add r0, r4, #0
	add r1, r5, #0
	ldr r2, [r5, #4]
	add r0, #0x63
	add r1, #0xf0
	bl FUN_ov17_020efee0
	add r0, r5, #0
	add r0, #8
	bl FUN_ov17_020f0014
	add r1, r0, #0
	add r0, r5, #0
	add r0, #8
	bl FUN_ov17_020eec34
	cmp r0, #0
	bne _020EEC00
	add r0, r5, #0
	add r0, #8
	bl FUN_ov17_020f0014
	add r2, r0, #0
	add r0, r4, #0
	add r5, #8
	add r0, #0x71
	add r1, r5, #0
	bl FUN_ov17_020efee0
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
	bl FUN_ov17_020eec34
	cmp r0, #0
	bne _020EEC00
	ldr r2, [sp, #4]
	ldr r1, [sp, #4]
	add r0, r4, #0
	ldr r2, [r2, #4]
	add r0, #0x92
	add r1, #0x30
	bl FUN_ov17_020efee0
	ldr r0, [sp, #4]
	add r0, #8
	bl FUN_ov17_020f0014
	add r1, r0, #0
	ldr r0, [sp, #4]
	add r0, #8
	bl FUN_ov17_020eec34
	cmp r0, #0
	bne _020EEC00
	ldr r0, [sp, #4]
	add r0, #8
	bl FUN_ov17_020f0014
	ldr r1, [sp, #4]
	add r2, r0, #0
	add r0, r4, #0
	add r1, #8
	add r0, #0xd2
	str r1, [sp, #4]
	bl FUN_ov17_020efee0
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
	bl FUN_ov17_020eec34
	cmp r0, #0
	bne _020EEC00
	ldr r2, [sp]
	ldr r1, [sp]
	add r0, r4, #0
	ldr r2, [r2, #4]
	add r0, #0xf3
	add r1, #0x30
	bl FUN_ov17_020efee0
	ldr r0, [sp]
	add r0, #8
	bl FUN_ov17_020f0014
	add r1, r0, #0
	ldr r0, [sp]
	add r0, #8
	bl FUN_ov17_020eec34
	cmp r0, #0
	bne _020EEC00
	ldr r0, [sp]
	add r0, #8
	bl FUN_ov17_020f0014
	add r2, r0, #0
	ldr r0, _020EEC2C ; =0x00000133
	ldr r1, [sp]
	add r0, r4, r0
	add r1, #8
	str r1, [sp]
	bl FUN_ov17_020efee0
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
	bl FUN_ov17_020efef0
	mov r0, #0
	mvn r0, r0
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
_020EEC14: .word 0x021145C8
_020EEC18: .word 0x00000117
_020EEC1C: .word 0x02114638
_020EEC20: .word 0x02114368
_020EEC24: .word 0x02114498
_020EEC28: .word 0x02113CA0
_020EEC2C: .word 0x00000133
_020EEC30: .word 0x00000116
	thumb_func_end FUN_ov17_020eea3c

	thumb_func_start FUN_ov17_020eec34
FUN_ov17_020eec34: ; 0x020EEC34
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

	thumb_func_end FUN_ov17_020eec34

	thumb_func_start FUN_ov17_020eec58
FUN_ov17_020eec58: ; 0x020EEC58
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
	bl FUN_ov17_020f0014
	ldr r1, [r5, #4]
	cmp r1, r0
	bne _020EECAE
	ldr r0, _020EECD0 ; =0x02112784
	bl FUN_ov17_020f0014
	add r2, r0, #0
	ldr r1, _020EECD0 ; =0x02112784
	add r0, r6, #0
	bl FUN_ov17_020efec0
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
_020EECD0: .word 0x02112784
	thumb_func_end FUN_ov17_020eec58

	thumb_func_start FUN_ov17_020eecd4
FUN_ov17_020eecd4: ; 0x020EECD4
	push {r4, lr}
	add r4, r0, #0
	ldr r0, _020EED10 ; =0x02112784
	bl FUN_ov17_020f0014
	str r0, [r4]
	ldr r1, _020EED10 ; =0x02112784
	ldr r2, [r4]
	add r0, r4, #4
	bl FUN_ov17_020efee0
	mov r0, #1
	str r0, [r4, #0x24]
	ldr r0, _020EED14 ; =0x02112790
	bl FUN_ov17_020f0014
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
	bl FUN_ov17_020efee0
	mov r0, #0
	pop {r4, pc}
_020EED10: .word 0x02112784
_020EED14: .word 0x02112790
	thumb_func_end FUN_ov17_020eecd4

	thumb_func_start FUN_ov17_020eed18
FUN_ov17_020eed18: ; 0x020EED18
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
	bl FUN_ov17_020efee0
	bl FUN_ov17_020f0028
	strh r0, [r5, #6]
	ldrh r0, [r5, #6]
	bl FUN_ov17_020effbc
	strh r0, [r5, #6]
	add r4, r4, #1
	add r5, #8
	cmp r4, r6
	blt _020EED26
_020EED46:
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end FUN_ov17_020eed18

	thumb_func_start FUN_ov17_020eed48
FUN_ov17_020eed48: ; 0x020EED48
	push {r3, lr}
	mov r1, #0
	mvn r1, r1
	cmp r0, r1
	bne _020EED5A
	ldr r1, _020EED70 ; =0x02112724
	str r0, [r1, #4]
	mov r0, #0
	pop {r3, pc}
_020EED5A:
	ldr r1, _020EED70 ; =0x02112724
	ldr r2, [r1, #4]
	cmp r2, r0
	beq _020EED6A
	str r0, [r1, #4]
	bl FUN_ov17_020f0678
	pop {r3, pc}
_020EED6A:
	mov r0, #0
	pop {r3, pc}
	nop
_020EED70: .word 0x02112724
	thumb_func_end FUN_ov17_020eed48

	thumb_func_start FUN_ov17_020eed74
FUN_ov17_020eed74: ; 0x020EED74
	push {r3, r4, r5, r6, r7, lr}
	add r6, r1, #0
	add r5, r0, #0
	ldrh r0, [r6, #0xc]
	add r7, r6, #0
	add r4, r2, #0
	str r3, [sp]
	add r7, #0xc
	bl FUN_ov17_020efffc
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
	bl FUN_ov17_020ef06c
	cmp r0, #0
	ble _020EEDBC
	ldr r0, [r4]
	add r0, r0, #1
	str r0, [r4]
	add r0, r5, #0
	pop {r3, r4, r5, r6, r7, pc}
_020EEDBC:
	ldrh r0, [r7, #6]
	bl FUN_ov17_020efffc
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
	bl FUN_ov17_020eee14
	add r5, r0, #0
	b _020EEE04
_020EEDE6:
	ldr r3, [sp]
	add r0, r5, #0
	add r1, r6, #0
	add r2, r4, #0
	bl FUN_ov17_020eeef0
	add r5, r0, #0
	b _020EEE04
_020EEDF6:
	ldr r3, [sp]
	add r0, r5, #0
	add r1, r6, #0
	add r2, r4, #0
	bl FUN_ov17_020eefc8
	add r5, r0, #0
_020EEE04:
	add r0, r5, #0
	pop {r3, r4, r5, r6, r7, pc}
_020EEE08: .word 0x00001010
_020EEE0C: .word 0x00002010
_020EEE10: .word 0x00003010
	thumb_func_end FUN_ov17_020eed74

	thumb_func_start FUN_ov17_020eee14
FUN_ov17_020eee14: ; 0x020EEE14
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
	bl FUN_ov17_020ef1a4
	cmp r0, #0
	bge _020EEE46
	ldr r0, [r5]
	add r0, r0, #1
	str r0, [r5]
	add r0, r6, #0
	pop {r3, r4, r5, r6, r7, pc}
_020EEE46:
	ldrh r0, [r4, #2]
	bl FUN_ov17_020efffc
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
	bl FUN_ov17_020effd4
	mov r1, #1
	mvn r1, r1
	cmp r0, r1
	bne _020EEE76
	mov r0, #0x14
	bl FUN_ov17_020eea24
	b _020EEE92
_020EEE76:
	ldr r0, [r4, #4]
	bl FUN_ov17_020effd4
	mov r1, #2
	mvn r1, r1
	cmp r0, r1
	bne _020EEE8C
	mov r0, #0x15
	bl FUN_ov17_020eea24
	b _020EEE92
_020EEE8C:
	mov r0, #0x18
	bl FUN_ov17_020eea24
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
	ldr r1, _020EEEE8 ; =0x02113CE0
	add r0, r4, #4
	bl FUN_ov17_020ef1f0
	cmp r0, #0
	bge _020EEED0
	mov r1, #1
	mvn r1, r1
	cmp r0, r1
	bne _020EEEC6
	mov r0, #0x16
	bl FUN_ov17_020eea24
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
	bl FUN_ov17_020efffc
	bl FUN_ov17_020ef61c
	ldr r1, _020EEEEC ; =0x02113CA0
	str r0, [r1]
	mov r0, #0
	str r0, [r5]
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
	nop
_020EEEE8: .word 0x02113CE0
_020EEEEC: .word 0x02113CA0
	thumb_func_end FUN_ov17_020eee14

	thumb_func_start FUN_ov17_020eeef0
FUN_ov17_020eeef0: ; 0x020EEEF0
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
	bl FUN_ov17_020ef1a4
	cmp r0, #0
	bge _020EEF24
	ldr r0, [r5]
	add r0, r0, #1
	str r0, [r5]
	add r0, r6, #0
	pop {r3, r4, r5, r6, r7, pc}
_020EEF24:
	ldrh r0, [r4, #2]
	bl FUN_ov17_020efffc
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
	bl FUN_ov17_020effd4
	mov r1, #1
	mvn r1, r1
	cmp r0, r1
	bne _020EEF54
	mov r0, #0x14
	bl FUN_ov17_020eea24
	b _020EEF70
_020EEF54:
	ldr r0, [r4, #4]
	bl FUN_ov17_020effd4
	mov r1, #2
	mvn r1, r1
	cmp r0, r1
	bne _020EEF6A
	mov r0, #0x15
	bl FUN_ov17_020eea24
	b _020EEF70
_020EEF6A:
	mov r0, #0x18
	bl FUN_ov17_020eea24
_020EEF70:
	mov r0, #0
	mvn r0, r0
	pop {r3, r4, r5, r6, r7, pc}
_020EEF76:
	mov r2, #0x6a
	ldr r0, _020EEFBC ; =0x02114360
	mov r1, #0
	lsl r2, r2, #4
	bl FUN_ov17_020efef0
	ldrh r0, [r7, #0xa]
	bl FUN_ov17_020efffc
	add r2, r0, #0
	ldr r0, _020EEFC0 ; =0x02113CE0
	ldr r3, _020EEFBC ; =0x02114360
	str r0, [sp]
	mov r0, #0
	add r1, r4, #0
	bl FUN_ov17_020ef50c
	cmp r0, #0
	bge _020EEFA6
	ldr r0, [r5]
	add r0, r0, #1
	str r0, [r5]
	add r0, r6, #0
	pop {r3, r4, r5, r6, r7, pc}
_020EEFA6:
	ldr r0, _020EEFC4 ; =0x02113CA0
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
_020EEFBC: .word 0x02114360
_020EEFC0: .word 0x02113CE0
_020EEFC4: .word 0x02113CA0
	thumb_func_end FUN_ov17_020eeef0

	thumb_func_start FUN_ov17_020eefc8
FUN_ov17_020eefc8: ; 0x020EEFC8
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
	bl FUN_ov17_020ef1a4
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
	bl FUN_ov17_020efffc
	cmp r0, #0
	bne _020EF01C
	ldr r0, [r5]
	add r0, r0, #1
	str r0, [r5]
	add r0, r6, #0
	pop {r4, r5, r6, pc}
_020EF01C:
	ldr r0, [r4, #4]
	bl FUN_ov17_020effd4
	cmp r0, #0
	bne _020EF02A
	mov r0, #0x64
	pop {r4, r5, r6, pc}
_020EF02A:
	ldr r0, [r4, #4]
	bl FUN_ov17_020effd4
	mov r1, #1
	mvn r1, r1
	cmp r0, r1
	bne _020EF044
	mov r0, #0x14
	bl FUN_ov17_020eea24
	mov r0, #0
	mvn r0, r0
	pop {r4, r5, r6, pc}
_020EF044:
	ldr r0, [r4, #4]
	bl FUN_ov17_020effd4
	mov r1, #2
	mvn r1, r1
	cmp r0, r1
	bne _020EF05E
	mov r0, #0x15
	bl FUN_ov17_020eea24
	mov r0, #0
	mvn r0, r0
	pop {r4, r5, r6, pc}
_020EF05E:
	mov r0, #0x18
	bl FUN_ov17_020eea24
	mov r0, #0
	mvn r0, r0
	pop {r4, r5, r6, pc}

	thumb_func_end FUN_ov17_020eefc8

	thumb_func_start FUN_ov17_020ef06c
FUN_ov17_020ef06c: ; 0x020EF06C
	push {r4, r5, r6, r7, lr}
	sub sp, #0x14
	add r5, r0, #0
	add r1, r5, #0
	add r4, r5, #0
	add r0, sp, #0xc
	add r1, #0x10
	mov r2, #8
	add r4, #0x18
	bl FUN_ov17_020efee0
	ldr r0, _020EF158 ; =0x02112790
	bl FUN_ov17_020f0014
	add r3, r0, #0
	ldr r2, _020EF158 ; =0x02112790
	add r0, sp, #0xc
	mov r1, #8
	bl FUN_ov17_020efd18
	mov r1, #0
	mvn r1, r1
	cmp r0, r1
	bne _020EF0AA
	mov r0, #2
	bl FUN_ov17_020eea24
	mov r0, #0x63
	add sp, #0x14
	mvn r0, r0
	pop {r4, r5, r6, r7, pc}
_020EF0AA:
	ldrh r0, [r5, #6]
	bl FUN_ov17_020efffc
	add r1, sp, #0xc
	bl FUN_ov17_020ef160
	cmp r0, #0
	bne _020EF152
	ldrh r0, [r5, #6]
	bl FUN_ov17_020efffc
	mov r1, #1
	lsl r1, r1, #0xc
	cmp r0, r1
	bne _020EF0D2
	ldr r0, _020EF15C ; =0x02114A00
	add r1, sp, #0xc
	mov r2, #8
	bl FUN_ov17_020efee0
_020EF0D2:
	ldrh r0, [r5, #0xc]
	bl FUN_ov17_020efffc
	mov r1, #0xf
	tst r0, r1
	bne _020EF0E4
	add sp, #0x14
	mov r0, #0
	pop {r4, r5, r6, r7, pc}
_020EF0E4:
	ldrh r0, [r4]
	bl FUN_ov17_020efffc
	add r6, r0, #0
	bl FUN_ov17_020ede60
	add r7, r0, #0
	bne _020EF100
	mov r0, #2
	bl FUN_ov17_020eea24
	add sp, #0x14
	mov r0, #0x64
	pop {r4, r5, r6, r7, pc}
_020EF100:
	add r0, r4, #2
	str r0, [sp]
	ldr r0, _020EF15C ; =0x02114A00
	add r1, r7, #0
	str r0, [sp, #4]
	mov r0, #8
	str r0, [sp, #8]
	ldrb r3, [r5, #0xe]
	add r0, r4, #4
	add r2, r6, #0
	bl FUN_ov17_020efb28
	cmp r0, #0
	bge _020EF136
	add r0, r7, #0
	bl FUN_ov17_020ede70
	bl FUN_ov17_020eea30
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
	bl FUN_ov17_020efee0
	lsl r0, r6, #0x10
	lsr r0, r0, #0x10
	bl FUN_ov17_020effbc
	strh r0, [r5, #0xa]
	add r0, r7, #0
	bl FUN_ov17_020ede70
	mov r0, #0
_020EF152:
	add sp, #0x14
	pop {r4, r5, r6, r7, pc}
	nop
_020EF158: .word 0x02112790
_020EF15C: .word 0x02114A00
	thumb_func_end FUN_ov17_020ef06c

	thumb_func_start FUN_ov17_020ef160
FUN_ov17_020ef160: ; 0x020EF160
	push {r4, r5, r6, lr}
	mov r4, #0
	ldr r6, _020EF1A0 ; =0x02114A00
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
	ldr r0, _020EF1A0 ; =0x02114A00
	mov r2, #6
	bl FUN_ov17_020efec0
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
_020EF1A0: .word 0x02114A00
	thumb_func_end FUN_ov17_020ef160

	thumb_func_start FUN_ov17_020ef1a4
FUN_ov17_020ef1a4: ; 0x020EF1A4
	push {r4, r5, r6, lr}
	add r6, r0, #0
	ldr r0, _020EF1EC ; =0x02112790
	add r5, r1, #0
	mov r4, #0
	bl FUN_ov17_020f0014
	add r3, r0, #0
	ldr r2, _020EF1EC ; =0x02112790
	add r0, r5, #0
	mov r1, #8
	bl FUN_ov17_020efd18
	add r0, r6, #0
	add r1, r5, #0
	mov r2, #6
	bl FUN_ov17_020efec0
	cmp r0, #0
	beq _020EF1D0
	sub r4, r4, #1
	b _020EF1E6
_020EF1D0:
	ldrh r0, [r6, #6]
	bl FUN_ov17_020efffc
	add r6, r0, #0
	ldrh r0, [r5, #6]
	bl FUN_ov17_020efffc
	add r1, r6, #1
	cmp r1, r0
	beq _020EF1E6
	sub r4, r4, #2
_020EF1E6:
	add r0, r4, #0
	pop {r4, r5, r6, pc}
	nop
_020EF1EC: .word 0x02112790
	thumb_func_end FUN_ov17_020ef1a4

	thumb_func_start FUN_ov17_020ef1f0
FUN_ov17_020ef1f0: ; 0x020EF1F0
	push {r3, r4, r5, r6, r7, lr}
	add r5, r1, #0
	mov r2, #0x41
	add r6, r0, #0
	add r0, r5, #0
	mov r1, #0
	lsl r2, r2, #2
	bl FUN_ov17_020efef0
	add r7, r5, #0
	add r4, r6, #0
	add r7, #0x80
_020EF208:
	ldrh r0, [r4, #2]
	bl FUN_ov17_020efffc
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
	bl FUN_ov17_020efee0
	b _020EF296
_020EF244:
	add r0, r7, #0
	add r1, r4, #6
	bl FUN_ov17_020efee0
	b _020EF296
_020EF24E:
	mov r0, #1
	lsl r0, r0, #8
	add r0, r5, r0
	add r1, r4, #6
	bl FUN_ov17_020efee0
	b _020EF296
_020EF25C:
	ldrb r0, [r4, #6]
	bl FUN_ov17_020efffc
	cmp r0, #0
	bgt _020EF296
	mov r0, #1
	mvn r0, r0
	pop {r3, r4, r5, r6, r7, pc}
_020EF26C:
	add r0, r4, #6
	add r1, r2, #0
	bl FUN_ov17_020ef2ac
	bl FUN_ov17_020effd4
	ldr r1, _020EF2A8 ; =0x02113CA0
	str r0, [r1, #0x34]
	b _020EF296
_020EF27E:
	add r0, r4, #6
	add r1, r2, #0
	bl FUN_ov17_020ef2ac
	bl FUN_ov17_020effd4
	ldr r1, _020EF2A8 ; =0x02113CA0
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
	bl FUN_ov17_020efffc
	add r4, r6, r0
	b _020EF208
_020EF2A4:
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
_020EF2A8: .word 0x02113CA0
	thumb_func_end FUN_ov17_020ef1f0

	thumb_func_start FUN_ov17_020ef2ac
FUN_ov17_020ef2ac: ; 0x020EF2AC
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

	thumb_func_end FUN_ov17_020ef2ac

	thumb_func_start FUN_ov17_020ef2d0
FUN_ov17_020ef2d0: ; 0x020EF2D0
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
	bl FUN_ov17_020efffc
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
	bl FUN_ov17_020efee0
	str r4, [r6, #4]
	b _020EF40C
_020EF3BA:
	ldr r0, [sp]
	add r1, r5, #6
	add r2, r4, #0
	bl FUN_ov17_020efee0
	str r4, [r6, #4]
	b _020EF40C
_020EF3C8:
	ldr r0, [sp, #4]
	add r1, r5, #6
	add r2, r4, #0
	bl FUN_ov17_020efee0
	str r4, [r6, #4]
	b _020EF40C
_020EF3D6:
	ldr r0, [sp, #8]
	add r1, r5, #6
	add r2, r4, #0
	bl FUN_ov17_020efee0
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
	bl FUN_ov17_020efee0
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
	bl FUN_ov17_020efffc
	ldr r1, [sp, #0x10]
	add r5, r1, r0
	b _020EF2FE
_020EF41C:
	mov r0, #0
	add sp, #0x14
	pop {r4, r5, r6, r7, pc}

	thumb_func_end FUN_ov17_020ef2d0

	thumb_func_start FUN_ov17_020ef424
FUN_ov17_020ef424: ; 0x020EF424
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
	bl FUN_ov17_020efffc
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
	bl FUN_ov17_020efee0
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
	bl FUN_ov17_020efee0
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
	bl FUN_ov17_020efffc
	ldr r1, [sp, #4]
	add r4, r1, r0
	b _020EF43A
_020EF4D6:
	mov r0, #0
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end FUN_ov17_020ef424

	thumb_func_start FUN_ov17_020ef4dc
FUN_ov17_020ef4dc: ; 0x020EF4DC
	push {r3, r4, r5, lr}
	add r4, r0, #6
	ldrh r0, [r4, #2]
	add r5, r1, #0
	bl FUN_ov17_020efffc
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
	bl FUN_ov17_020efee0
	mov r0, #0
	pop {r3, r4, r5, pc}
	thumb_func_end FUN_ov17_020ef4dc

	thumb_func_start FUN_ov17_020ef50c
FUN_ov17_020ef50c: ; 0x020EF50C
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
	ldr r7, _020EF614 ; =0x02112720
_020EF526:
	ldr r2, [sp]
	ldrb r0, [r4]
	ldrb r2, [r7, r2]
	add r1, r4, #0
	cmp r0, r2
	beq _020EF54A
	ldrh r0, [r4, #2]
	bl FUN_ov17_020efffc
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
	bl FUN_ov17_020efffc
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
	bl FUN_ov17_020ef2d0
	mov r1, #1
	orr r5, r1
	b _020EF5F2
_020EF5AA:
	mov r1, #0x4e
	lsl r1, r1, #2
	add r0, r4, #0
	add r1, r6, r1
	bl FUN_ov17_020ef2d0
	mov r1, #2
	orr r5, r1
	b _020EF5F2
_020EF5BC:
	mov r1, #0x9a
	lsl r1, r1, #2
	add r0, r4, #0
	add r1, r6, r1
	bl FUN_ov17_020ef424
	mov r1, #4
	orr r5, r1
	b _020EF5F2
_020EF5CE:
	mov r1, #0xb6
	lsl r1, r1, #2
	add r0, r4, #0
	add r1, r6, r1
	bl FUN_ov17_020ef424
	mov r1, #8
	orr r5, r1
	b _020EF5F2
_020EF5E0:
	ldr r2, [sp, #8]
	ldr r1, [sp, #0xc]
	add r0, r4, #0
	add r1, r2, r1
	bl FUN_ov17_020ef4dc
	b _020EF5F2
_020EF5EE:
	mov r0, #2
	mvn r0, r0
_020EF5F2:
	cmp r0, #0
	bne _020EF610
	ldrh r0, [r4, #2]
	bl FUN_ov17_020efffc
	add r0, r0, #4
	sub r7, r7, r0
	add r4, r4, r0
	cmp r7, #0
	bgt _020EF574
	ldr r0, _020EF618 ; =0x02113CA0
	ldr r1, [r0, #0x30]
	orr r1, r5
	str r1, [r0, #0x30]
	mov r0, #0
_020EF610:
	add sp, #0x14
	pop {r4, r5, r6, r7, pc}
_020EF614: .word 0x02112720
_020EF618: .word 0x02113CA0
	thumb_func_end FUN_ov17_020ef50c

	thumb_func_start FUN_ov17_020ef61c
FUN_ov17_020ef61c: ; 0x020EF61C
	mov r1, #0x10
	mov r2, #0
	tst r0, r1
	beq _020EF626
	mov r2, #1
_020EF626:
	add r0, r2, #0
	bx lr

	thumb_func_end FUN_ov17_020ef61c

	thumb_func_start FUN_ov17_020ef62c
FUN_ov17_020ef62c: ; 0x020EF62C
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
	bl FUN_ov17_020eed48
	add r0, r5, #0
	add r1, r4, #0
	add r2, r6, #0
	bl FUN_ov17_020ef680
	pop {r4, r5, r6, pc}
_020EF654:
	mov r0, #3
	bl FUN_ov17_020eed48
	add r0, r5, #0
	add r1, r4, #0
	add r2, r6, #0
	bl FUN_ov17_020ef7c4
	pop {r4, r5, r6, pc}
_020EF666:
	mov r0, #5
	bl FUN_ov17_020eed48
	add r0, r5, #0
	add r1, r4, #0
	add r2, r6, #0
	bl FUN_ov17_020ef8a0
	pop {r4, r5, r6, pc}
_020EF678:
	mov r0, #0
	mvn r0, r0
	pop {r4, r5, r6, pc}

	thumb_func_end FUN_ov17_020ef62c

	thumb_func_start FUN_ov17_020ef680
FUN_ov17_020ef680: ; 0x020EF680
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x20
	add r7, r1, #0
	mov r1, #0
	add r0, sp, #0x10
	strb r1, [r0]
	strh r1, [r0, #4]
	strh r1, [r0, #2]
	ldr r0, _020EF7B4 ; =0x02113CA0
	str r2, [sp, #0xc]
	ldr r5, [r0, #0x14]
	ldr r2, _020EF7B8 ; =0x000005DC
	add r0, r5, #0
	bl FUN_ov17_020efef0
	mov r0, #0x21
	lsl r0, r0, #4
	bl FUN_ov17_020ede60
	add r4, r0, #0
	bne _020EF6B8
	mov r0, #2
	bl FUN_ov17_020eea24
	mov r0, #0
	add sp, #0x20
	mvn r0, r0
	pop {r3, r4, r5, r6, r7, pc}
_020EF6B8:
	mov r2, #0x21
	mov r1, #0
	lsl r2, r2, #4
	bl FUN_ov17_020efef0
	add r6, r5, #0
	ldr r0, _020EF7BC ; =0x02114A00
	add r1, r7, #0
	mov r2, #8
	add r6, #0x18
	bl FUN_ov17_020efee0
	add r0, sp, #0x14
	ldr r1, _020EF7BC ; =0x02114A00
	add r0, #2
	mov r2, #8
	bl FUN_ov17_020efee0
	add r0, r4, #4
	bl FUN_ov17_020ef90c
	add r1, sp, #0x10
	strh r0, [r1, #4]
	mov r0, #4
	ldrsh r0, [r1, r0]
	cmp r0, #0
	bge _020EF706
	mov r0, #3
	bl FUN_ov17_020eea24
	cmp r4, #0
	beq _020EF6FE
	add r0, r4, #0
	bl FUN_ov17_020ede70
_020EF6FE:
	mov r0, #0
	add sp, #0x20
	mvn r0, r0
	pop {r3, r4, r5, r6, r7, pc}
_020EF706:
	mov r0, #0
	strb r0, [r4]
	ldrh r0, [r1, #4]
	bl FUN_ov17_020effbc
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
	bl FUN_ov17_020ef998
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
	bl FUN_ov17_020efd18
	cmp r0, #0
	beq _020EF768
	mov r0, #2
	bl FUN_ov17_020eea24
	cmp r4, #0
	beq _020EF760
	add r0, r4, #0
	bl FUN_ov17_020ede70
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
	bl FUN_ov17_020ef9ec
	add r2, sp, #0x10
	mov r1, #4
	ldrsh r0, [r2, r1]
	ldr r3, [sp, #0xc]
	add r0, #0x18
	strh r0, [r2, #4]
	ldrsh r1, [r2, r1]
	add r0, r5, #0
	mov r2, #0xff
	bl FUN_ov17_020efa44
	cmp r4, #0
	beq _020EF7AC
	add r0, r4, #0
	bl FUN_ov17_020ede70
_020EF7AC:
	mov r0, #0
	add sp, #0x20
	pop {r3, r4, r5, r6, r7, pc}
	nop
_020EF7B4: .word 0x02113CA0
_020EF7B8: .word 0x000005DC
_020EF7BC: .word 0x02114A00
_020EF7C0: .word 0x02112790
	thumb_func_end FUN_ov17_020ef680

	thumb_func_start FUN_ov17_020ef7c4
FUN_ov17_020ef7c4: ; 0x020EF7C4
	push {r3, r4, r5, r6, lr}
	sub sp, #0x24
	add r5, r1, #0
	mov r1, #0
	add r0, sp, #0xc
	strb r1, [r0]
	strh r1, [r0, #4]
	strh r1, [r0, #2]
	ldr r0, _020EF894 ; =0x02113CA0
	add r6, r2, #0
	ldr r4, [r0, #0x14]
	add r0, sp, #0x14
	mov r2, #8
	bl FUN_ov17_020efef0
	ldr r2, _020EF898 ; =0x000005DC
	add r0, r4, #0
	mov r1, #0
	bl FUN_ov17_020efef0
	mov r1, #2
	add r0, sp, #0xc
	strb r1, [r0, #8]
	mov r1, #0
	strb r1, [r0, #9]
	mov r0, #4
	bl FUN_ov17_020effbc
	add r1, sp, #0xc
	strh r0, [r1, #0xa]
	ldr r0, _020EF894 ; =0x02113CA0
	ldr r0, [r0, #0x2c]
	str r0, [sp, #0x18]
	bl FUN_ov17_020eff94
	str r0, [sp, #0x18]
	mov r1, #8
	add r0, sp, #0xc
	strh r1, [r0, #4]
	add r0, sp, #0xc
	add r0, #2
	str r0, [sp]
	add r0, sp, #0xc
	str r0, [sp, #4]
	ldr r0, _020EF894 ; =0x02113CA0
	add r1, r4, #0
	ldr r0, [r0]
	add r1, #0x18
	add r2, sp, #0x14
	add r3, sp, #0x10
	bl FUN_ov17_020ef998
	add r5, #8
	add r0, sp, #0x1c
	add r1, r5, #0
	mov r2, #8
	bl FUN_ov17_020efee0
	ldr r2, _020EF89C ; =0x02112790
	add r0, sp, #0x1c
	mov r1, #8
	mov r3, #6
	bl FUN_ov17_020efd18
	cmp r0, #0
	beq _020EF856
	mov r0, #2
	bl FUN_ov17_020eea24
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
	bl FUN_ov17_020ef9ec
	add r2, sp, #0xc
	mov r1, #4
	ldrsh r0, [r2, r1]
	add r3, r6, #0
	add r0, #0x18
	strh r0, [r2, #4]
	ldrsh r1, [r2, r1]
	add r0, r4, #0
	mov r2, #0
	bl FUN_ov17_020efa44
	mov r0, #0
	add sp, #0x24
	pop {r3, r4, r5, r6, pc}
_020EF894: .word 0x02113CA0
_020EF898: .word 0x000005DC
_020EF89C: .word 0x02112790
	thumb_func_end FUN_ov17_020ef7c4

	thumb_func_start FUN_ov17_020ef8a0
FUN_ov17_020ef8a0: ; 0x020EF8A0
	push {r3, r4, r5, r6, lr}
	sub sp, #0x14
	ldr r0, _020EF900 ; =0x02113CA0
	add r6, r2, #0
	ldr r4, [r0, #0x14]
	ldr r2, _020EF904 ; =0x000005DC
	add r5, r1, #0
	add r0, r4, #0
	mov r1, #0
	bl FUN_ov17_020efef0
	add r5, #0x10
	add r0, sp, #0xc
	add r1, r5, #0
	mov r2, #8
	bl FUN_ov17_020efee0
	ldr r0, _020EF908 ; =0x02112790
	bl FUN_ov17_020f0014
	add r3, r0, #0
	ldr r2, _020EF908 ; =0x02112790
	add r0, sp, #0xc
	mov r1, #8
	bl FUN_ov17_020efd18
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
	bl FUN_ov17_020ef9ec
	add r0, r4, #0
	mov r1, #0x18
	mov r2, #0
	add r3, r6, #0
	bl FUN_ov17_020efa44
	mov r0, #0
	add sp, #0x14
	pop {r3, r4, r5, r6, pc}
	nop
_020EF900: .word 0x02113CA0
_020EF904: .word 0x000005DC
_020EF908: .word 0x02112790
	thumb_func_end FUN_ov17_020ef8a0

	thumb_func_start FUN_ov17_020ef90c
FUN_ov17_020ef90c: ; 0x020EF90C
	push {r3, r4, r5, r6, r7, lr}
	ldr r1, _020EF990 ; =0x02113CC0
	add r5, r0, #0
	mov r0, #0x1d
	ldrsb r0, [r1, r0]
	ldr r1, _020EF994 ; =0x02113CA0
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
	bl FUN_ov17_020efee0
	lsl r0, r4, #0x10
	lsr r0, r0, #0x10
	bl FUN_ov17_020effbc
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
	bl FUN_ov17_020effbc
	strh r0, [r5, #4]
	add r0, r6, r7
	lsl r0, r0, #0x10
	asr r6, r0, #0x10
	mov r0, #0x60
	strb r0, [r5, r7]
	add r4, r5, r7
	mov r0, #0
	strb r0, [r4, #1]
	bl FUN_ov17_020effbc
	strh r0, [r4, #4]
	mov r0, #0xe
	bl FUN_ov17_020eff94
	str r0, [sp]
	add r0, r4, #6
	add r1, sp, #0
	mov r2, #4
	bl FUN_ov17_020efee0
	mov r0, #4
	bl FUN_ov17_020effbc
	add r6, #0xa
	strh r0, [r4, #2]
	lsl r0, r6, #0x10
	asr r0, r0, #0x10
	pop {r3, r4, r5, r6, r7, pc}
	nop
_020EF990: .word 0x02113CC0
_020EF994: .word 0x02113CA0
	thumb_func_end FUN_ov17_020ef90c

	thumb_func_start FUN_ov17_020ef998
FUN_ov17_020ef998: ; 0x020EF998
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
	ldr r0, _020EF9E8 ; =0x02114A00
	ldr r3, [sp, #0x1c]
	str r0, [sp, #4]
	mov r0, #8
	str r0, [sp, #8]
	add r0, r2, #0
	mov r2, #0
	ldrsh r2, [r4, r2]
	add r1, r5, #4
	bl FUN_ov17_020efaac
	ldrh r0, [r4]
	bl FUN_ov17_020effbc
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
	bl FUN_ov17_020efee0
	add sp, #0xc
	pop {r4, r5, pc}
_020EF9E8: .word 0x02114A00
	thumb_func_end FUN_ov17_020ef998

	thumb_func_start FUN_ov17_020ef9ec
FUN_ov17_020ef9ec: ; 0x020EF9EC
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	mov r0, #1
	add r4, r1, #0
	add r6, r2, #0
	add r7, r3, #0
	bl FUN_ov17_020effbc
	strh r0, [r5]
	mov r0, #0
	strh r0, [r5, #2]
	strh r0, [r5, #4]
	lsl r0, r4, #0x10
	lsr r0, r0, #0x10
	bl FUN_ov17_020effbc
	strh r0, [r5, #6]
	mov r0, #0
	strh r0, [r5, #8]
	lsl r0, r6, #0x10
	lsr r0, r0, #0x10
	bl FUN_ov17_020effbc
	strh r0, [r5, #0xa]
	lsl r0, r7, #0x10
	lsr r0, r0, #0x10
	bl FUN_ov17_020effbc
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
	bl FUN_ov17_020efee0
	pop {r3, r4, r5, r6, r7, pc}

	thumb_func_end FUN_ov17_020ef9ec

	thumb_func_start FUN_ov17_020efa44
FUN_ov17_020efa44: ; 0x020EFA44
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x10
	add r5, r0, #0
	add r6, r1, #0
	add r4, r2, #0
	add r0, sp, #8
	mov r1, #0
	mov r2, #8
	add r7, r3, #0
	bl FUN_ov17_020efef0
	mov r1, #2
	add r0, sp, #8
	strb r1, [r0, #1]
	ldr r0, _020EFAA0 ; =0x00005790
	bl FUN_ov17_020effbc
	add r1, sp, #8
	strh r0, [r1, #2]
	ldr r0, _020EFAA4 ; =0x02113CA0
	ldr r0, [r0, #0x34]
	bl FUN_ov17_020eff94
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
_020EFAA4: .word 0x02113CA0
_020EFAA8: .word 0x02113CC0
	thumb_func_end FUN_ov17_020efa44

	thumb_func_start FUN_ov17_020efaac
FUN_ov17_020efaac: ; 0x020EFAAC
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
	bl FUN_ov17_020ede60
	str r0, [sp, #0xc]
	cmp r0, #0
	bne _020EFAD4
	mov r0, #0
	add sp, #0x14
	mvn r0, r0
	pop {r4, r5, r6, r7, pc}
_020EFAD4:
	bl FUN_ov17_020f0028
	add r1, sp, #0
	strh r0, [r1]
	ldr r0, [sp, #0x28]
	add r1, sp, #0
	mov r2, #2
	bl FUN_ov17_020efee0
	ldr r0, _020EFB20 ; =0x02114A08
	ldr r1, [sp, #0x28]
	mov r2, #2
	bl FUN_ov17_020efee0
	ldr r0, _020EFB24 ; =0x02114A0A
	ldr r1, [sp, #0x2c]
	ldr r2, [sp, #0x30]
	bl FUN_ov17_020efee0
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
	bl FUN_ov17_020ede70
	mov r0, #0
	add sp, #0x14
	pop {r4, r5, r6, r7, pc}
_020EFB20: .word 0x02114A08
_020EFB24: .word 0x02114A0A
	thumb_func_end FUN_ov17_020efaac

	thumb_func_start FUN_ov17_020efb28
FUN_ov17_020efb28: ; 0x020EFB28
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x10
	add r4, r2, #0
	add r7, r0, #0
	add r0, r4, #0
	add r5, r1, #0
	add r6, r3, #0
	bl FUN_ov17_020ede60
	str r0, [sp, #8]
	cmp r0, #0
	bne _020EFB4E
	mov r0, #2
	bl FUN_ov17_020eea24
	mov r0, #0
	add sp, #0x10
	mvn r0, r0
	pop {r3, r4, r5, r6, r7, pc}
_020EFB4E:
	ldr r0, _020EFBA8 ; =0x02114A08
	ldr r1, [sp, #0x28]
	mov r2, #2
	bl FUN_ov17_020efee0
	ldr r0, _020EFBAC ; =0x02114A0A
	ldr r1, [sp, #0x2c]
	ldr r2, [sp, #0x30]
	bl FUN_ov17_020efee0
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
	bl FUN_ov17_020eea24
	ldr r0, [sp, #8]
	bl FUN_ov17_020ede70
	mov r0, #0
	add sp, #0x10
	mvn r0, r0
	pop {r3, r4, r5, r6, r7, pc}
_020EFB9C:
	ldr r0, [sp, #8]
	bl FUN_ov17_020ede70
	mov r0, #0
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
_020EFBA8: .word 0x02114A08
_020EFBAC: .word 0x02114A0A
	thumb_func_end FUN_ov17_020efb28

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
	blx FUN_0201fbc8
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
	blx FUN_0201fbc8
	lsl r0, r1, #0x18
	lsr r7, r0, #0x18
	ldrb r6, [r4, r7]
	ldr r0, [r5, #4]
	ldr r1, [sp]
	add r0, r6, r0
	blx FUN_0201fbc8
	lsl r0, r1, #0x18
	lsr r1, r0, #0x18
	ldrb r0, [r4, r1]
	str r7, [r5]
	str r1, [r5, #4]
	strb r6, [r4, r1]
	strb r0, [r4, r7]
	ldr r1, [r5, #0xc]
	add r0, r6, r0
	blx FUN_0201fbc8
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
_020EFCA4: .word 0x02113F60
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

	thumb_func_start FUN_ov17_020efd18
FUN_ov17_020efd18: ; 0x020EFD18
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x10
	add r5, r1, #0
	add r7, r0, #0
	lsr r0, r5, #0x1f
	add r0, r5, r0
	asr r0, r0, #1
	str r2, [sp, #4]
	str r3, [sp, #8]
	bl FUN_ov17_020ede60
	add r6, r0, #0
	bne _020EFD3A
	mov r0, #0
	add sp, #0x10
	mvn r0, r0
	pop {r3, r4, r5, r6, r7, pc}
_020EFD3A:
	add r0, r5, #0
	bl FUN_ov17_020ede60
	str r0, [sp, #0xc]
	cmp r0, #0
	bne _020EFD54
	add r0, r6, #0
	bl FUN_ov17_020ede70
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
	bl FUN_ov17_020ede70
	ldr r0, [sp, #0xc]
	bl FUN_ov17_020ede70
	mov r0, #0
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}

	thumb_func_end FUN_ov17_020efd18

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
	blx FUN_0201f9bc
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
	bl FUN_ov17_020efee0
	add r0, r4, r7
	add r1, r5, #0
	add r2, r7, #0
	bl FUN_ov17_020efee0
	add r0, r5, #0
	add r1, r4, #0
	add r2, r6, #0
	bl FUN_ov17_020efee0
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end FUN_ov17_020efdec

	thumb_func_start FUN_ov17_020efe1c
FUN_ov17_020efe1c:
	push {r3, lr}
	cmp r1, #0x0
	ble _020EFE2C
	add r0, r1, #0x0
	ldr r1, _020EFE30 ; =0x02114A80
	ldr r1, [r1, #0x0]
	blx r1
	pop {r3, pc}
_020EFE2C:
	mov r0,#0x0
	pop {r3, pc}
_020EFE30: .word 0x02114A80
	thumb_func_end FUN_ov17_020efe1c

	thumb_func_start FUN_ov17_020efe34
FUN_ov17_020efe34:
	push {r3, lr}
	add r0, r1, #0x0
	ldr r1, _020EFE40 ; =0x02114A8C
	ldr r1, [r1, #0x0]
	blx r1
	pop {r3, pc}
_020EFE40: .word 0x02114A8C
	thumb_func_end FUN_ov17_020efe34

	thumb_func_start FUN_ov17_020efe44
FUN_ov17_020efe44: ; 0x020EFE44
	push {r3, r4, r5, lr}
	add r5, r1, #0
	add r4, r2, #0
	bl FUN_ov17_020eff94
	ldr r1, _020EFE90 ; =0x02112724
	str r0, [r1, #0x18]
	add r0, r5, #0
	bl FUN_ov17_020eff94
	ldr r1, _020EFE90 ; =0x02112724
	str r0, [r1, #0x1c]
	add r0, r4, #0
	bl FUN_ov17_020eff94
	ldr r1, _020EFE90 ; =0x02112724
	str r0, [r1, #0x20]
	ldr r0, _020EFE94 ; =0x0211272C
	blx  FUN_ov15_020d71f4
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
	blx FUN_02001eb0
	ldr r0, [r5]
	cmp r0, #0
	beq _020EFE80
_020EFE8C:
	mov r0, #0
	pop {r3, r4, r5, pc}
_020EFE90: .word 0x02112724
_020EFE94: .word 0x0211272C
_020EFE98: .word 0x020E6D90
	thumb_func_end FUN_ov17_020efe44

	thumb_func_start FUN_ov17_020efe9c
FUN_ov17_020efe9c: ; 0x020EFE9C
	push {r3, lr}
	blx  FUN_ov15_020d7388
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

	thumb_func_start FUN_ov17_020efec0
FUN_ov17_020efec0: ; 0x020EFEC0
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
	thumb_func_end FUN_ov17_020efec0

	thumb_func_start FUN_ov17_020efee0
FUN_ov17_020efee0: ; 0x020EFEE0
	add r3, r0, #0
	add r0, r1, #0
	add r1, r3, #0
	ldr r3, _020EFEEC ; =MI_CpuCopy8
	bx r3
	nop
_020EFEEC: .word MI_CpuCopy8
	thumb_func_end FUN_ov17_020efee0

	thumb_func_start FUN_ov17_020efef0
FUN_ov17_020efef0: ; 0x020EFEF0
	ldr r3, _020EFEF8 ; =MI_CpuFill8
	lsl r1, r1, #0x18
	lsr r1, r1, #0x18
	bx r3
_020EFEF8: .word MI_CpuFill8
	thumb_func_end FUN_ov17_020efef0

	thumb_func_start FUN_ov17_020efefc
FUN_ov17_020efefc: ; 0x020EFEFC
	push {r3, r4, r5, lr}
	ldr r4, [sp, #0x14]
	ldr r5, [r4]
	ldr r4, [sp, #0x10]
	strb r5, [r4]
	str r4, [sp]
	blx  FUN_ov15_020d6ee4
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
	blx FUN_0201f99c
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
	blx FUN_0201f99c
	lsr r3, r0, #6
	lsl r2, r1, #0x1a
	orr r3, r2
	lsr r0, r1, #6
	add r2, r6, r3
	adc r4, r0
	add r0, sp, #0
	mov r1, #1
	add r3, r4, #0
	blx  FUN_ov15_020d740c
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
	blx  FUN_ov15_020d6f98
	pop {r3, r4, r5, pc}
	thumb_func_end FUN_ov17_020eff64

	thumb_func_start FUN_ov17_020eff74
FUN_ov17_020eff74: ; 0x020EFF74
	bx lr

	thumb_func_end FUN_ov17_020eff74

	thumb_func_start FUN_020eff78
FUN_020eff78: ; 0x020EFF78
	ldr r3, _020EFF7C ; = FUN_ov15_020d6e0c
	bx r3
_020EFF7C: .word  FUN_ov15_020d6e0c
	thumb_func_end FUN_020eff78

	thumb_func_start FUN_ov17_020eff80
FUN_ov17_020eff80: ; 0x020EFF80
	ldr r3, _020EFF88 ; = FUN_ov15_020d6e38
	strb r2, [r1]
	bx r3
	nop
_020EFF88: .word  FUN_ov15_020d6e38
	thumb_func_end FUN_ov17_020eff80

	thumb_func_start FUN_020eff8c
FUN_020eff8c: ; 0x020EFF8C
	ldr r3, _020EFF90 ; = FUN_ov15_020d7028
	bx r3
_020EFF90: .word  FUN_ov15_020d7028
	thumb_func_end FUN_020eff8c

	thumb_func_start FUN_ov17_020eff94
FUN_ov17_020eff94: ; 0x020EFF94
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
	thumb_func_end FUN_ov17_020eff94

	thumb_func_start FUN_ov17_020effbc
FUN_ov17_020effbc: ; 0x020EFFBC
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

	thumb_func_end FUN_ov17_020effbc

	thumb_func_start FUN_ov17_020effd4
FUN_ov17_020effd4: ; 0x020EFFD4
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
	thumb_func_end FUN_ov17_020effd4

	thumb_func_start FUN_ov17_020efffc
FUN_ov17_020efffc: ; 0x020EFFFC
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

	thumb_func_end FUN_ov17_020efffc

	thumb_func_start FUN_ov17_020f0014
FUN_ov17_020f0014: ; 0x020F0014
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
	thumb_func_end FUN_ov17_020f0014

	thumb_func_start FUN_ov17_020f0028
FUN_ov17_020f0028: ; 0x020F0028
	push {r3, r4, lr}
	sub sp, #0xc
	ldr r0, _020F0088 ; =0x02113CA0
	ldr r0, [r0, #8]
	cmp r0, #0
	bne _020F006A
	mov r4, #0
	add r0, sp, #0
	add r1, r4, #0
	mov r2, #0xc
	bl FUN_ov17_020efef0
	add r0, sp, #0
	blx FUN_0200af48
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
	ldr r0, _020F0088 ; =0x02113CA0
	ldr r1, _020F008C ; =0x5D588B65
	str r4, [r0, #0x18]
	str r1, [r0, #0x1c]
	ldr r1, _020F0090 ; =0x00269EC3
	str r1, [r0, #0x20]
	mov r1, #1
	str r1, [r0, #8]
_020F006A:
	ldr r0, _020F0088 ; =0x02113CA0
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
_020F0088: .word 0x02113CA0
_020F008C: .word 0x5D588B65
_020F0090: .word 0x00269EC3
_020F0094: .word 0x00007FFF
	thumb_func_end FUN_ov17_020f0028

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
_020F0134: .word 0x02112798
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
	ldr r3, _020F0178 ; =FUN_0200219c
	add r1, r0, #0
	ldr r0, _020F017C ; =0x02114AA0
	mov r2, #0
	bx r3
	nop
_020F0178: .word FUN_0200219c
_020F017C: .word 0x02114AA0
	thumb_func_end FUN_ov17_020f016c

	thumb_func_start FUN_overlay_d_17__020f0180
FUN_overlay_d_17__020f0180:
	ldr r3, _020F018C ; =FUN_0200219c
	add r1, r0, #0x0
	ldr r0, _020F0190 ; =0x02114AA0
	mov r2, #0x0
	bx r3
	nop
_020F018C: .word FUN_0200219c
_020F0190: .word 0x02114AA0
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
	blx FUN_02002174
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
	ldr r1, _020F024C ; =0x02114A80
	str r5, [r1]
	str r6, [r1, #0xc]
	blx OS_RestoreInterrupts
	ldr r1, _020F024C ; =0x02114A80
	ldr r0, _020F0250 ; =0x00005890
	ldr r1, [r1]
	blx r1
	add r1, r0, #0
	ldr r0, _020F024C ; =0x02114A80
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
	blx FUN_02002230
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
	ldr r1, _020F024C ; =0x02114A80
	ldr r0, [r1, #8]
	ldr r1, [r1, #0xc]
	blx r1
	mov r0, #0
	mvn r0, r0
	pop {r3, r4, r5, r6, r7, pc}
	nop
_020F0244: .word 0x02114AA0
_020F0248: .word 0x02114A90
_020F024C: .word 0x02114A80
_020F0250: .word 0x00005890
_020F0254: .word FUN_ov17_020f016c
	thumb_func_end FUN_ov17_020f0194

	thumb_func_start FUN_ov17_020f0258
FUN_ov17_020f0258: ; 0x020F0258
	push {r3, r4, r5, r6, r7, lr}
	ldr r0, _020F02E8 ; =0x02114A80
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
	ldr r6, _020F02E8 ; =0x02114A80
_020F027A:
	add r0, r7, #0
	add r1, sp, #0
	mov r2, #1
	blx FUN_02002230
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
	ldr r1, _020F02E8 ; =0x02114A80
	mov r2, #0
	str r2, [r1]
	str r2, [r1, #0xc]
	blx OS_RestoreInterrupts
	add r0, r5, #0
	pop {r3, r4, r5, r6, r7, pc}
	nop
_020F02E8: .word 0x02114A80
_020F02EC: .word 0x02114AA0
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
	blx FUN_02002230
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
_020F0324: .word 0x02114AA0
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
	ldr r0, _020F048C ; =0x02114A80
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
	blx FUN_02003604
	mov r0, #0x13
	str r0, [sp]
	ldr r1, _020F0494 ; =0x003FEC42
	ldr r3, _020F0498 ; =0x020F0181
	add r0, sp, #0x18
	add r2, r6, #0
	blx FUN_0200373c
_020F038E:
	ldr r0, _020F049C ; =0x02114AA0
	add r1, sp, #0x14
	mov r2, #1
	blx FUN_02002230
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
	ldr r1, _020F048C ; =0x02114A80
	add r0, #0x58
	ldr r1, [r1]
	blx r1
	cmp r0, #0
	bne _020F0442
	b _020F0462
_020F0436:
	ldr r1, _020F048C ; =0x02114A80
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
	blx FUN_02003818
	ldr r5, _020F049C ; =0x02114AA0
	add r4, sp, #0x14
	mov r6, #0
_020F046E:
	add r0, r5, #0
	add r1, r4, #0
	add r2, r6, #0
	blx FUN_02002230
	cmp r0, #1
	beq _020F046E
_020F047C:
	ldr r1, _020F048C ; =0x02114A80
	ldr r0, [sp, #8]
	ldr r1, [r1, #0xc]
	blx r1
	ldr r0, [sp, #0x10]
	add sp, #0x44
	pop {r4, r5, r6, r7, pc}
	nop
_020F048C: .word 0x02114A80
_020F0490: .word 0x0030BFFE
_020F0494: .word 0x003FEC42
_020F0498: .word 0x020F0181
_020F049C: .word 0x02114AA0
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
	blx  FUN_ov15_020dd284
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
	blx FUN_02003604
	mov r0, #0x12
	str r0, [sp]
	ldr r1, _020F065C ; =0x003FEC42
	ldr r3, _020F0660 ; =0x020F0181
	add r0, sp, #0x14
	mov r2, #0
	blx FUN_0200373c
	b _020F061C
_020F0548:
	ldr r0, _020F0664 ; =0x02114AA0
	add r1, sp, #0x10
	mov r2, #1
	blx FUN_02002230
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
	blx FUN_02003818
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
	blx FUN_02003818
	ldr r5, _020F0664 ; =0x02114AA0
	add r4, sp, #0x10
	mov r6, #0
_020F062C:
	add r0, r5, #0
	add r1, r4, #0
	add r2, r6, #0
	blx FUN_02002230
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
_020F0654: .word 0x02114B80
_020F0658: .word 0x0030BFFE
_020F065C: .word 0x003FEC42
_020F0660: .word 0x020F0181
_020F0664: .word 0x02114AA0
_020F0668: .word 0x02114AC0
_020F066C: .word 0x02114AC0
	thumb_func_end FUN_ov17_020f04a0

	thumb_func_start FUN_020f0670
FUN_020f0670: ; 0x020F0670
	ldr r3, _020F0674 ; =FUN_02001eb0
	bx r3
_020F0674: .word FUN_02001eb0
	thumb_func_end FUN_020f0670

	thumb_func_start FUN_ov17_020f0678
FUN_ov17_020f0678: ; 0x020F0678
	push {r3, lr}
	ldr r1, _020F0688 ; =0x02114A80
	ldr r1, [r1, #4]
	cmp r1, #0
	beq _020F0684
	blx r1
_020F0684:
	mov r0, #0
	pop {r3, pc}
_020F0688: .word 0x02114A80
	thumb_func_end FUN_ov17_020f0678

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
	blx  FUN_ov15_020dc914
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
	blx  FUN_ov15_020dca44
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
	blx  FUN_ov15_020dc914
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
	blx  FUN_ov15_020dc87c
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
	blx  FUN_ov15_020dca44
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
	blx  FUN_ov15_020dc914
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
	blx  FUN_ov15_020dc87c
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
	blx  FUN_ov15_020dca44
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
	blx  FUN_ov15_020dc720
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
_020F0940: .word 0x02114BE0
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
	blx  FUN_ov15_020dc914
	cmp r0, #3
	beq _020F099E
	mov r0, #0
	pop {r3, pc}
_020F097E:
	blx  FUN_ov15_020dcbf4
	cmp r0, #3
	beq _020F099E
	mov r0, #0
	pop {r3, pc}
_020F098A:
	ldr r0, [r1, #8]
	ldr r1, _020F09A8 ; =FUN_ov17_020f068c
	blx  FUN_ov15_020dc7b0
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
_020F09A4: .word 0x02114BE0
_020F09A8: .word FUN_ov17_020f068c
	thumb_func_end FUN_ov17_020f0944

	thumb_func_start FUN_ov17_020f09ac
FUN_ov17_020f09ac: ; 0x020F09AC
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	mov r0, #1
	add r7, r1, #0
	blx  FUN_ov15_020dd32c
	blx  FUN_ov15_020dd2d4
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
	blx  FUN_ov15_020dd3a4
	add r1, r5, #0
	mov r2, #0xc0
	blx MIi_CpuCopy32
	add r4, r4, #1
	add r5, #0xc0
	cmp r4, r6
	blt _020F09C8
_020F09E4:
	mov r0, #0
	blx  FUN_ov15_020dd32c
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
	blx  FUN_ov15_020dc914
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
_020F0ACC: .word 0x02114BE0
_020F0AD0: .word 0x02114C08
_020F0AD4: .word 0x020E3FE8
_020F0AD8: .word 0x02114C10
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
	blx  FUN_ov15_020dc914
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
_020F0B18: .word 0x02114BE0
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
	blx  FUN_ov15_020dcbf4
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
_020F0B50: .word 0x02114BE0
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
	blx  FUN_ov15_020dc87c
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
_020F0BA8: .word 0x02114BE0
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
	blx  FUN_ov15_020dca44
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
_020F0C2C: .word 0x02114BE0
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
	blx  FUN_ov15_020dc5a4
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
	blx  FUN_ov15_020dc7b0
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
_020F0CDC: .word 0x02114BE0
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
	blx  FUN_ov15_020dc914
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
	blx  FUN_ov15_020dca44
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
	blx  FUN_ov15_020dc914
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
	blx  FUN_ov15_020dc87c
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
	blx  FUN_ov15_020dca44
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
	blx  FUN_ov15_020dc914
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
	blx  FUN_ov15_020dc87c
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
	blx  FUN_ov15_020dca44
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
	blx  FUN_ov15_020dc720
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
_020F0FEC: .word 0x02114C30
_020F0FF0: .word 0x02114CB0
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
	blx  FUN_ov15_020dc914
	cmp r0, #3
	beq _020F104E
	mov r0, #0
	pop {r3, pc}
_020F102E:
	blx  FUN_ov15_020dcbf4
	cmp r0, #3
	beq _020F104E
	mov r0, #0
	pop {r3, pc}
_020F103A:
	ldr r0, [r1, #8]
	ldr r1, _020F1058 ; =FUN_ov17_020f0ce8
	blx  FUN_ov15_020dc7b0
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
_020F1054: .word 0x02114C30
_020F1058: .word FUN_ov17_020f0ce8
	thumb_func_end FUN_ov17_020f0ff4

	thumb_func_start FUN_ov17_020f105c
FUN_ov17_020f105c: ; 0x020F105C
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	mov r0, #1
	add r7, r1, #0
	blx  FUN_ov15_020dd32c
	blx  FUN_ov15_020dd2d4
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
	blx  FUN_ov15_020dd3a4
	add r1, r5, #0
	mov r2, #0xc0
	blx MIi_CpuCopy32
	add r4, r4, #1
	add r5, #0xc0
	cmp r4, r6
	blt _020F1078
_020F1094:
	mov r0, #0
	blx  FUN_ov15_020dd32c
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
	blx  FUN_ov15_020dc914
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
_020F1174: .word 0x02114C30
_020F1178: .word 0x021150E8
_020F117C: .word 0x020E3FE8
_020F1180: .word 0x02115120
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
	blx  FUN_ov15_020dcbf4
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
_020F11BC: .word 0x02114C30
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
	blx  FUN_ov15_020dc87c
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
_020F1214: .word 0x02114C30
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
	blx  FUN_ov15_020dca44
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
_020F1298: .word 0x02114C30
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
	blx  FUN_ov15_020dc5a4
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
	blx  FUN_ov15_020dc7b0
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
_020F1348: .word 0x02114C30
_020F134C: .word 0x0000231F
_020F1350: .word 0x02114CB0
_020F1354: .word FUN_ov17_020f0ce8
	thumb_func_end FUN_ov17_020f129c

	thumb_func_start FUN_ov17_020f1358
FUN_ov17_020f1358: ; 0x020F1358
	ldr r0, _020F1360 ; =0x02114C30
	ldr r0, [r0, #0x2c]
	bx lr
	nop
_020F1360: .word 0x02114C30
	thumb_func_end FUN_ov17_020f1358

	thumb_func_start FUN_ov17_020f1364
FUN_ov17_020f1364: ; 0x020F1364
	push {r4, lr}
	add r4, r1, #0
	cmp r4, #0
	ble _020F1386
	ldr r0, _020F138C ; =0x02114CC4
	blx FUN_02002408
	ldr r1, _020F1390 ; =0x02114C30
	add r0, r4, #0
	ldr r1, [r1, #4]
	blx r1
	add r4, r0, #0
	ldr r0, _020F138C ; =0x02114CC4
	blx FUN_02002458
	add r0, r4, #0
	pop {r4, pc}
_020F1386:
	mov r0, #0
	pop {r4, pc}
	nop
_020F138C: .word 0x02114CC4
_020F1390: .word 0x02114C30
	thumb_func_end FUN_ov17_020f1364

	thumb_func_start FUN_ov17_020f1394
FUN_ov17_020f1394: ; 0x020F1394
	push {r4, lr}
	add r4, r1, #0
	beq _020F13B2
	cmp r2, #0
	ble _020F13B2
	ldr r0, _020F13B4 ; =0x02114CC4
	blx FUN_02002408
	ldr r1, _020F13B8 ; =0x02114C30
	add r0, r4, #0
	ldr r1, [r1, #0xc]
	blx r1
	ldr r0, _020F13B4 ; =0x02114CC4
	blx FUN_02002458
_020F13B2:
	pop {r4, pc}
_020F13B4: .word 0x02114CC4
_020F13B8: .word 0x02114C30
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
_020F13DC: .word 0x02114C30
_020F13E0: .word 0x02114CB4
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
_020F1414: .word 0x02114C30
_020F1418: .word 0x02114CB4
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
_020F1444: .word 0x02114C30
_020F1448: .word 0x02114CB4
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
	blx FUN_02001eb0
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
_020F14EC: .word 0x02114C30
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
	blx FUN_02001eb0
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
_020F1550: .word 0x02114C30
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
	blx FUN_02003604
	mov r0, #0x12
	str r0, [sp]
	ldr r1, _020F1668 ; =0x003FEC42
	ldr r3, _020F166C ; =0x020F144D
	add r0, sp, #4
	mov r2, #0
	blx FUN_0200373c
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
	blx FUN_02001eb0
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
	blx FUN_02003818
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
	blx  FUN_ov15_020d71f4
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
_020F1664: .word 0x02114C30
_020F1668: .word 0x003FEC42
_020F166C: .word 0x020F144D
_020F1670: .word 0x021127C8
_020F1674: .word 0x021127DC
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
	blx FUN_02001eb0
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
	blx  FUN_ov15_020d7388
_020F16D4:
	pop {r3, r4, r5, r6, r7, pc}
	nop
_020F16D8: .word 0x02114C30
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
	blx FUN_020218d4
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
	blx _strlen
	add r2, r0, #0
	add r0, sp, #0x48
	add r0, #2
	add r1, r4, #4
	blx FUN_020219ac
	cmp r0, #0
	bne _020F178A
	add r1, r4, #0
	ldr r0, [sp, #0x24]
	add r1, #0x28
	mov r2, #6
	blx FUN_020219ac
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
	blx FUN_020218d4
	ldr r1, [r5]
	mov r0, #0
	strb r0, [r7, r1]
	ldr r0, _020F18A4 ; =0x02112834
	blx _strlen
	add r2, r0, #0
	ldr r1, _020F18A4 ; =0x02112834
	add r0, r7, #0
	blx FUN_020219ac
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
	blx FUN_020218d4
	ldr r1, [r4]
	mov r0, #0
	strb r0, [r5, r1]
	add r0, r5, #0
	blx _strlen
	add r6, r0, #0
	add r0, r7, #0
	blx _strlen
	cmp r6, r0
	bne _020F186A
	add r0, r7, #0
	blx _strlen
	add r2, r0, #0
	add r0, r5, #0
	add r1, r7, #0
	blx FUN_020219ac
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
_020F18A4: .word 0x02112834
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
	blx FUN_02003604
	mov r0, #0x13
	str r0, [sp]
	ldr r1, _020F1B2C ; =0x000FFB10
	ldr r3, _020F1B30 ; =0x020F144D
	add r0, sp, #0x24
	mov r2, #0
	blx FUN_0200373c
	ldr r7, _020F1B20 ; =0x02114C30
	mov r5, #1
	mov r4, #0
	add r6, sp, #0x24
_020F1928:
	mov r0, #0xa
	blx FUN_02001eb0
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
	blx FUN_02003818
	mov r0, #0x13
	str r0, [sp]
	ldr r1, _020F1B2C ; =0x000FFB10
	ldr r3, _020F1B30 ; =0x020F144D
	add r0, r6, #0
	mov r2, #0
	blx FUN_0200373c
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
	blx FUN_02003818
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
	blx FUN_020218d4
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
	blx FUN_02023e98
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
	blx FUN_020218d4
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
_020F1B20: .word 0x02114C30
_020F1B24: .word 0x021127C8
_020F1B28: .word 0x0030BFFE
_020F1B2C: .word 0x000FFB10
_020F1B30: .word 0x020F144D
_020F1B34: .word 0x02115140
_020F1B38: .word 0x021150E0
	thumb_func_end FUN_ov17_020f18a8

	thumb_func_start FUN_ov17_020f1b3c
FUN_ov17_020f1b3c: ; 0x020F1B3C
	push {r3, lr}
	ldr r2, [sp, #8]
	str r1, [sp]
	add r1, r3, #0
	mov r3, #0
	blx  FUN_ov15_020d6f98
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
	blx  FUN_ov15_020d692c
	add r1, sp, #4
	blx  FUN_ov15_020d73ec
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
	blx FUN_020218d4
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
	blx FUN_02021940
	add r0, r5, #0
	add r1, r7, #0
	add r2, r4, #0
	blx FUN_020218d4
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
	blx FUN_020218d4
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
_020F1F88: .word 0x0210F444
_020F1F8C: .word 0x021127C8
_020F1F90: .word 0x02114C30
_020F1F94: .word 0x021150D8
_020F1F98: .word 0x02115164
	thumb_func_end FUN_ov17_020f1f00

	thumb_func_start FUN_ov17_020f1f9c
FUN_ov17_020f1f9c: ; 0x020F1F9C
	push {r3, lr}
	blx FUN_02003f38
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
	blx FUN_020219ac
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
_020F2094: .word 0x02112888
_020F2098: .word 0x021150E0
_020F209C: .word 0x021150D8
_020F20A0: .word 0x021127C8
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
	blx FUN_020218d4
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
	blx FUN_02021940
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
	blx FUN_020218d4
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
	blx FUN_020218d4
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
_020F2260: .word 0x02114F84
_020F2264: .word 0x02114FB0
_020F2268: .word 0x02114E84
_020F226C: .word 0x02114FE8
_020F2270: .word 0x00000206
_020F2274: .word 0x02115080
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
	blx FUN_02023e98
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
	blx FUN_020218d4
	mov r1, #0
	add r0, sp, #0x24
	strb r1, [r0]
	add r0, sp, #4
	blx _strlen
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
_020F2494: .word 0x02114D9C
_020F2498: .word 0x02114F84
_020F249C: .word 0x02114FB0
_020F24A0: .word 0x02114DB0
_020F24A4: .word 0x02114FE8
_020F24A8: .word 0x02114DC4
_020F24AC: .word 0x02114E44
_020F24B0: .word 0x02115080
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
	blx FUN_02001eb0
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
	blx  FUN_ov15_020d6e0c
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
	blx  FUN_ov15_020d6e38
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
	blx  FUN_ov15_020d7028
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
	blx  FUN_ov15_020d6ee4
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
	blx  FUN_ov15_020d7028
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
	blx  FUN_ov15_020d6ee4
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
	blx  FUN_ov15_020d6ee4
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
	blx  FUN_ov15_020d7028
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
_020F27FC: .word 0x02114C30
_020F2800: .word 0x000001E6
_020F2804: .word 0x021127C8
_020F2808: .word 0x021150F0
_020F280C: .word 0x02115964
_020F2810: .word 0x02114C80
_020F2814: .word 0x00007530
_020F2818: .word 0x02115164
_020F281C: .word 0x00000101
_020F2820: .word 0x02115100
_020F2824: .word 0x02115108
_020F2828: .word 0x00000102
_020F282C: .word 0x02114E84
_020F2830: .word 0x02114F70
_020F2834: .word 0x00000301
_020F2838: .word 0x02114C30
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
	blx  FUN_ov15_020d7028
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
_020F2894: .word 0x02114C30
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
_020F28C8: .word 0x02114C30
_020F28CC: .word 0x021127C8
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
	blx FUN_020218d4
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
	blx FUN_0201f99c
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
	blx FUN_020218d4
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
	blx FUN_0201f99c
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
	blx FUN_020219ac
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
_020F2F38: .word 0x0210F44C
_020F2F3C: .word 0x02111074
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
_020F30BC: .word 0x02111074
_020F30C0: .word 0x0210F874
_020F30C4: .word 0x0210F474
_020F30C8: .word 0x02111474
_020F30CC: .word 0x02111874
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
_020F3478: .word 0x02110C74
_020F347C: .word 0x02110874
_020F3480: .word 0x02110074
_020F3484: .word 0x02110474
_020F3488: .word 0x02111074
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
_020F3834: .word 0x0210F874
_020F3838: .word 0x0210F474
_020F383C: .word 0x02111474
_020F3840: .word 0x02111874
_020F3844: .word 0x0210FC74
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
_020F3938: .word 0x02112848
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
	blx FUN_02003410
	lsr r2, r0, #0x1a
	lsl r1, r1, #6
	orr r1, r2
	ldr r2, _020F424C ; =0x000082EA
	lsl r0, r0, #6
	mov r3, #0
	blx FUN_0201f954
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
	blx FUN_02021940
_020F426A:
	add r0, r5, #0
	pop {r3, r4, r5, pc}
	nop
_020F4270: .word 0x02114C30
	thumb_func_end FUN_ov17_020f4250

	thumb_func_start FUN_ov17_020f4274
FUN_ov17_020f4274: ; 0x020F4274
	push {r3, lr}
	ldr r1, _020F4280 ; =0x02114C30
	ldr r1, [r1, #0xc]
	blx r1
	pop {r3, pc}
	nop
_020F4280: .word 0x02114C30
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
	blx FUN_02001938
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
	blx FUN_02001948
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
	blx FUN_02001ce0
	ldr r1, _020F43BC ; =0x02114C30
	mov r0, #1
	str r0, [r1, #0x64]
	add sp, #8
	pop {r4, r5, r6, pc}
_020F43BC: .word 0x02114C30
_020F43C0: .word 0x021127C8
_020F43C4: .word 0x02114CDC
_020F43C8: .word 0x020F2899
_020F43CC: .word 0x0000EA60
_020F43D0: .word 0x02114D9C
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
	blx FUN_02001eb0
_020F43EE:
	ldr r0, [r4, #0x38]
	cmp r0, #1
	blt _020F43F8
	cmp r0, #5
	ble _020F43E8
_020F43F8:
	mov r0, #0x7d
	lsl r0, r0, #2
	blx FUN_02001eb0
	ldr r0, _020F4464 ; =0x02114CDC
	blx FUN_02001c14
	cmp r0, #0
	bne _020F4422
	ldr r4, _020F4464 ; =0x02114CDC
_020F440C:
	add r0, r4, #0
	blx FUN_02001ce0
	add r0, r4, #0
	blx FUN_02001bd8
	add r0, r4, #0
	blx FUN_02001c14
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
_020F4460: .word 0x02114C30
_020F4464: .word 0x02114CDC
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
_020F4498: .word 0x02114C30
_020F449C: .word 0x021127C8
	thumb_func_end FUN_ov17_020f4468

	thumb_func_start FUN_ov17_020f44a0
FUN_ov17_020f44a0: ; 0x020F44A0
	push {r3, lr}
	ldr r1, _020F44B0 ; =0x02114D9C
	mov r2, #0xe8
	blx FUN_020218d4
	mov r0, #1
	pop {r3, pc}
	nop
_020F44B0: .word 0x02114D9C
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
_020F44CC: .word 0x02114C30
	thumb_func_end FUN_ov17_020f44b4

	arm_func_start FUN_ov17_020f44d0
FUN_ov17_020f44d0: ; 0x020F44D0
	stmfd sp!, {r4, r5, r6, lr}
	mov r6, r0
	mov r0, #0xc
	mov r1, #4
	bl FUN_ov17_0210e0a8
	ldr r5, _020F458C ; =0x02116164
	mov r4, #0
	str r0, [r5]
	strb r6, [r0, #8]
	mov r0, r4
	mov r1, #0x47
	bl FUN_ov17_0210cffc
	ldr r2, [r5]
	ldr r1, _020F4590 ; =0x02111C74
	str r0, [r2, #4]
	ldr r0, [r5]
	ldrb lr, [r1, r6]
	ldr r6, [r0, #4]
	ldr r12, _020F4594 ; =0xFE00FF00
	mov r2, r4
	ldrh r3, [r6, #4]
	mov r0, #1
	ldr r1, _020F4598 ; =FUN_ov17_020f45d4
	bic r3, r3, #0xc00
	orr r3, r3, #0x400
	strh r3, [r6, #4]
	ldr r4, [r5]
	mov r3, #0x78
	ldr r6, [r4, #4]
	ldr r4, [r6]
	bic r4, r4, #0xc00
	str r4, [r6]
	ldrh r4, [r6, #4]
	bic r4, r4, #0xf000
	orr r4, r4, lr, lsl #12
	strh r4, [r6, #4]
	ldr r4, [r5]
	ldr lr, [r4, #4]
	ldr r4, [lr]
	and r4, r4, r12
	orr r4, r4, #0x8b
	orr r4, r4, #0xe60000
	str r4, [lr]
	bl FUN_ov17_0210f314
	ldr r1, [r5]
	str r0, [r1]
	ldmfd sp!, {r4, r5, r6, pc}
_020F458C: .word 0x02116164
_020F4590: .word 0x02111C74
_020F4594: .word 0xFE00FF00
_020F4598: .word FUN_ov17_020f45d4
	arm_func_end FUN_ov17_020f44d0

	arm_func_start FUN_ov17_020f459c
FUN_ov17_020f459c: ; 0x020F459C
	stmfd sp!, {r4, lr}
	ldr r4, _020F45CC ; =0x02116164
	mov r0, #1
	ldr r1, [r4]
	ldr r1, [r1]
	bl FUN_ov17_0210f3d8
	ldr r0, [r4]
	ldr r0, [r0, #4]
	bl FUN_ov17_0210ebcc
	ldr r0, _020F45D0 ; =0x02116164
	bl FUN_ov17_0210e0cc
	ldmfd sp!, {r4, pc}
_020F45CC: .word 0x02116164
_020F45D0: .word 0x02116164
	arm_func_end FUN_ov17_020f459c

	arm_func_start FUN_ov17_020f45d4
FUN_ov17_020f45d4: ; 0x020F45D4
	stmfd sp!, {r4, lr}
	ldr r4, _020F4688 ; =0x02116164
	mov r1, #0x28
	ldr r0, [r4]
	ldrb r0, [r0, #9]
	add r0, r0, #1
	bl FUN_020096f8
	ldr r2, [r4]
	mov r1, #5
	strb r0, [r2, #9]
	ldr r0, [r4]
	ldrb r0, [r0, #9]
	bl FUN_020096bc
	ldr r2, [r4]
	add r1, r0, #0x47
	ldr r2, [r2, #4]
	mov r0, #0
	bl FUN_ov17_0210cf68
	ldr r0, [r4]
	ldr r3, _020F468C ; =0x02111C74
	ldr r2, [r0, #4]
	ldr r0, _020F4690 ; =0xFE00FF00
	ldrh r1, [r2, #4]
	bic r1, r1, #0xc00
	orr r1, r1, #0x400
	strh r1, [r2, #4]
	ldr r1, [r4]
	ldrb r12, [r1, #8]
	ldr r2, [r1, #4]
	ldr r1, [r2]
	ldrb r3, [r3, r12]
	bic r1, r1, #0xc00
	str r1, [r2]
	ldrh r1, [r2, #4]
	bic r1, r1, #0xf000
	orr r1, r1, r3, lsl #12
	strh r1, [r2, #4]
	ldr r1, [r4]
	ldr r2, [r1, #4]
	ldr r1, [r2]
	and r0, r1, r0
	orr r0, r0, #0x8b
	orr r0, r0, #0xe60000
	str r0, [r2]
	ldmfd sp!, {r4, pc}
_020F4688: .word 0x02116164
_020F468C: .word 0x02111C74
_020F4690: .word 0xFE00FF00
	arm_func_end FUN_ov17_020f45d4

	arm_func_start FUN_ov17_020f4694
FUN_ov17_020f4694: ; 0x020F4694
	stmfd sp!, {r4, r5, r6, r7, r8, r9, r10, lr}
	mov r5, #4
	mov r4, r0
	ldr r2, _020F4784 ; =0x02111C84
	mov r1, r5
	mov r0, #0x1c
	ldrb r7, [r2, r4]
	bl FUN_ov17_0210e0a8
	ldr r9, _020F4788 ; =0x02116168
	sub r1, r5, #6
	str r0, [r9]
	strb r1, [r0, #0x16]
	ldr r0, [r9]
	cmp r7, #0
	strb r4, [r0, #0x17]
	mov r8, #0
	ble _020F4724
	ldr r0, _020F478C ; =0x02111C94
	mov r6, r8
	add r5, r0, r4, lsl #1
	mov r4, #1
	mvn r10, #0
_020F46EC:
	ldrb r1, [r8, r5]
	mov r0, r6
	mov r2, r4
	bl FUN_ov17_0210d028
	ldr r2, [r9]
	mov r1, r10
	str r0, [r2, r8, lsl #2]
	ldr r0, [r9]
	mov r2, r4
	ldr r0, [r0, r8, lsl #2]
	bl FUN_ov17_0210ce84
	add r8, r8, #1
	cmp r8, r7
	blt _020F46EC
_020F4724:
	mov r5, #1
	mov r6, #0
	mov r0, r6
	mov r1, r5
	mov r2, r5
	bl FUN_ov17_0210d028
	ldr r4, _020F4788 ; =0x02116168
	mov r2, r5
	ldr r3, [r4]
	sub r1, r5, #2
	str r0, [r3, #8]
	ldr r0, [r4]
	ldr r0, [r0, #8]
	bl FUN_ov17_0210ce84
	mov r0, #0xc0
	bl FUN_ov17_020f4864
	mov r0, r6
	mov r2, r6
	ldr r1, _020F4790 ; =FUN_ov17_020f48f4
	mov r3, #0x78
	bl FUN_ov17_0210f314
	ldr r1, [r4]
	str r0, [r1, #0xc]
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, pc}
_020F4784: .word 0x02111C84
_020F4788: .word 0x02116168
_020F478C: .word 0x02111C94
_020F4790: .word FUN_ov17_020f48f4
	arm_func_end FUN_ov17_020f4694

	arm_func_start FUN_ov17_020f4794
FUN_ov17_020f4794: ; 0x020F4794
	ldr r0, _020F47B8 ; =0x02116168
	mov r3, #1
	ldr r2, [r0]
	ldr r1, _020F47BC ; =FUN_ov17_020f4b2c
	strb r3, [r2, #0x19]
	ldr r0, [r0]
	ldr r12, _020F47C0 ; =FUN_ov17_0210f3b0
	ldr r0, [r0, #0xc]
	bx r12
_020F47B8: .word 0x02116168
_020F47BC: .word FUN_ov17_020f4b2c
_020F47C0: .word FUN_ov17_0210f3b0
	arm_func_end FUN_ov17_020f4794

	arm_func_start FUN_ov17_020f47c4
FUN_ov17_020f47c4: ; 0x020F47C4
	ldr r0, _020F47D4 ; =0x02116168
	ldr r0, [r0]
	ldrsb r0, [r0, #0x16]
	bx lr
_020F47D4: .word 0x02116168
	arm_func_end FUN_ov17_020f47c4

	arm_func_start FUN_ov17_020f47d8
FUN_ov17_020f47d8: ; 0x020F47D8
	ldr r1, _020F47F0 ; =0x02116168
	ldr r2, [r1]
	ldrsb r1, [r2, #0x16]
	cmn r1, #1
	streqb r0, [r2, #0x16]
	bx lr
_020F47F0: .word 0x02116168
	arm_func_end FUN_ov17_020f47d8

	arm_func_start FUN_ov17_020f47f4
FUN_ov17_020f47f4: ; 0x020F47F4
	ldr r1, _020F4804 ; =0x02116168
	ldr r1, [r1]
	strb r0, [r1, #0x16]
	bx lr
_020F4804: .word 0x02116168
	arm_func_end FUN_ov17_020f47f4

	arm_func_start FUN_ov17_020f4808
FUN_ov17_020f4808: ; 0x020F4808
	ldr r0, _020F4830 ; =0x02116168
	ldr r0, [r0]
	cmp r0, #0
	moveq r0, #1
	bxeq lr
	ldrb r0, [r0, #0x19]
	cmp r0, #0
	moveq r0, #1
	movne r0, #0
	bx lr
_020F4830: .word 0x02116168
	arm_func_end FUN_ov17_020f4808

	arm_func_start FUN_ov17_020f4834
FUN_ov17_020f4834: ; 0x020F4834
	ldr r0, _020F4848 ; =0x02116168
	mov r1, #0
	ldr r0, [r0]
	strb r1, [r0, #0x18]
	bx lr
_020F4848: .word 0x02116168
	arm_func_end FUN_ov17_020f4834

	arm_func_start FUN_ov17_020f484c
FUN_ov17_020f484c: ; 0x020F484C
	ldr r0, _020F4860 ; =0x02116168
	mov r1, #1
	ldr r0, [r0]
	strb r1, [r0, #0x18]
	bx lr
_020F4860: .word 0x02116168
	arm_func_end FUN_ov17_020f484c

	arm_func_start FUN_ov17_020f4864
FUN_ov17_020f4864: ; 0x020F4864
	stmfd sp!, {r4, r5, r6, r7, r8, r9, r10, lr}
	ldr r9, _020F48E4 ; =0x02116168
	mov r8, r0
	ldr r2, [r9]
	ldr r0, _020F48E8 ; =0x02111C84
	ldrb r1, [r2, #0x17]
	mvn r5, #0
	mov r7, #0
	ldrb r6, [r0, r1]
	ldr r0, [r2, #8]
	mov r1, r5
	mov r2, r7
	mov r3, r8
	bl FUN_ov17_0210cdac
	cmp r6, #0
	ldmlefd sp!, {r4, r5, r6, r7, r8, r9, r10, pc}
	ldr r4, _020F48EC ; =0x02111CA2
	ldr r10, _020F48F0 ; =0x02111C8C
_020F48AC:
	ldr r0, [r9]
	mov r1, r5
	ldrb r2, [r0, #0x17]
	ldr r0, [r0, r7, lsl #2]
	add r3, r8, #4
	add r2, r4, r2, lsl #1
	ldrb r2, [r7, r2]
	mov r2, r2, lsl #2
	ldrh r2, [r10, r2]
	bl FUN_ov17_0210cdac
	add r7, r7, #1
	cmp r7, r6
	blt _020F48AC
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, pc}
_020F48E4: .word 0x02116168
_020F48E8: .word 0x02111C84
_020F48EC: .word 0x02111CA2
_020F48F0: .word 0x02111C8C
	arm_func_end FUN_ov17_020f4864

	arm_func_start FUN_ov17_020f48f4
FUN_ov17_020f48f4: ; 0x020F48F4
	stmfd sp!, {r4, lr}
	sub sp, sp, #8
	ldr r1, _020F4958 ; =0x02116168
	mov r4, r0
	ldr r0, [r1]
	add r2, sp, #4
	ldr r0, [r0, #8]
	add r3, sp, #0
	mov r1, #0
	bl FUN_ov17_0210cee4
	ldr r0, [sp]
	sub r0, r0, #4
	str r0, [sp]
	bl FUN_ov17_020f4864
	ldr r0, [sp]
	cmp r0, #0xa8
	addgt sp, sp, #8
	ldmgtfd sp!, {r4, pc}
	mov r0, #0xa8
	bl FUN_ov17_020f4864
	ldr r1, _020F495C ; =FUN_ov17_020f4960
	mov r0, r4
	bl FUN_ov17_0210f3b0
	add sp, sp, #8
	ldmfd sp!, {r4, pc}
_020F4958: .word 0x02116168
_020F495C: .word FUN_ov17_020f4960
	arm_func_end FUN_ov17_020f48f4

	arm_func_start FUN_ov17_020f4960
FUN_ov17_020f4960: ; 0x020F4960
	stmfd sp!, {r3, lr}
	ldr r1, _020F49A8 ; =0x02116168
	mvn r3, #0
	ldr r2, [r1]
	strb r3, [r2, #0x16]
	ldr r3, [r1]
	ldrh r2, [r3, #0x14]
	add r2, r2, #1
	strh r2, [r3, #0x14]
	ldr r3, [r1]
	ldrh r1, [r3, #0x14]
	cmp r1, #4
	ldmlofd sp!, {r3, pc}
	ldr r1, _020F49AC ; =FUN_ov17_020f49b0
	mov r2, #0
	strh r2, [r3, #0x14]
	bl FUN_ov17_0210f3b0
	ldmfd sp!, {r3, pc}
_020F49A8: .word 0x02116168
_020F49AC: .word FUN_ov17_020f49b0
	arm_func_end FUN_ov17_020f4960

	arm_func_start FUN_ov17_020f49b0
FUN_ov17_020f49b0: ; 0x020F49B0
	stmfd sp!, {r4, r5, r6, r7, r8, r9, r10, lr}
	sub sp, sp, #8
	ldr r5, _020F4B0C ; =0x02116168
	ldr r1, _020F4B10 ; =0x02111C84
	ldr r3, [r5]
	ldrb r2, [r3, #0x17]
	ldrb r0, [r3, #0x18]
	ldrb r4, [r1, r2]
	cmp r0, #0
	bne _020F4AF4
	ldrsb r0, [r3, #0x16]
	cmn r0, #1
	addne sp, sp, #8
	ldmnefd sp!, {r4, r5, r6, r7, r8, r9, r10, pc}
	cmp r4, #0
	mov r8, #0
	ble _020F4AF4
	ldr r7, _020F4B14 ; =0x02111C8C
	ldr r6, _020F4B18 ; =0x02111CA2
	ldr r10, _020F4B1C ; =0x02111C80
	add r9, sp, #0
_020F4A04:
	ldr r0, [r5]
	mov r1, r10
	ldrb r0, [r0, #0x17]
	mov r2, r9
	add r0, r6, r0, lsl #1
	ldrb r0, [r8, r0]
	add r0, r7, r0, lsl #2
	bl FUN_ov17_0210dca0
	mov r0, r9
	bl FUN_ov17_0210e600
	cmp r0, #0
	beq _020F4AE8
	ldr r9, _020F4B0C ; =0x02116168
	ldr r2, [r9]
	ldr r0, [r2, #0x10]
	cmp r0, #0
	bne _020F4AF4
	ldrb r1, [r2, #0x17]
	ldr r0, _020F4B20 ; =0x02111C94
	mov r5, #0
	add r0, r0, r1, lsl #1
	ldrb r4, [r8, r0]
	ldr r0, [r2, r8, lsl #2]
	mov r1, r5
	bl FUN_ov17_0210cc74
	mov r2, r0
	mov r0, r5
	add r1, r4, #1
	bl FUN_ov17_0210cf68
	ldr r0, [r9]
	ldr r3, _020F4B24 ; =0x02111C8E
	ldrb r2, [r0, #0x17]
	sub r4, r5, #1
	ldr r0, [r0, r8, lsl #2]
	add r2, r6, r2, lsl #1
	ldrb r2, [r8, r2]
	mov r1, r4
	mov r6, r2, lsl #2
	ldrh r2, [r7, r6]
	ldrh r3, [r3, r6]
	bl FUN_ov17_0210cdac
	ldr r0, [r9]
	mov r1, r4
	ldr r0, [r0, r8, lsl #2]
	mov r2, #1
	bl FUN_ov17_0210ce84
	ldr r1, _020F4B28 ; =FUN_ov17_020f4c0c
	mov r0, r5
	mov r2, r5
	mov r3, #0x6e
	bl FUN_ov17_0210f314
	ldr r1, [r9]
	add sp, sp, #8
	str r0, [r1, #0x10]
	ldr r0, [r9]
	strb r8, [r0, #0x16]
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, pc}
_020F4AE8:
	add r8, r8, #1
	cmp r8, r4
	blt _020F4A04
_020F4AF4:
	ldr r0, _020F4B0C ; =0x02116168
	mvn r1, #0
	ldr r0, [r0]
	strb r1, [r0, #0x16]
	add sp, sp, #8
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, pc}
_020F4B0C: .word 0x02116168
_020F4B10: .word 0x02111C84
_020F4B14: .word 0x02111C8C
_020F4B18: .word 0x02111CA2
_020F4B1C: .word 0x02111C80
_020F4B20: .word 0x02111C94
_020F4B24: .word 0x02111C8E
_020F4B28: .word FUN_ov17_020f4c0c
	arm_func_end FUN_ov17_020f49b0

	arm_func_start FUN_ov17_020f4b2c
FUN_ov17_020f4b2c: ; 0x020F4B2C
	stmfd sp!, {r4, lr}
	sub sp, sp, #8
	ldr r1, _020F4B88 ; =0x02116168
	mov r4, r0
	ldr r0, [r1]
	add r2, sp, #4
	ldr r0, [r0, #8]
	add r3, sp, #0
	mov r1, #0
	bl FUN_ov17_0210cee4
	ldr r0, [sp]
	add r0, r0, #4
	str r0, [sp]
	bl FUN_ov17_020f4864
	ldr r0, [sp]
	cmp r0, #0xc0
	addlt sp, sp, #8
	ldmltfd sp!, {r4, pc}
	ldr r1, _020F4B8C ; =FUN_ov17_020f4b90
	mov r0, r4
	bl FUN_ov17_0210f3b0
	add sp, sp, #8
	ldmfd sp!, {r4, pc}
_020F4B88: .word 0x02116168
_020F4B8C: .word FUN_ov17_020f4b90
	arm_func_end FUN_ov17_020f4b2c

	arm_func_start FUN_ov17_020f4b90
FUN_ov17_020f4b90: ; 0x020F4B90
	stmfd sp!, {r3, r4, r5, lr}
	mov r4, #0
	mov r1, r0
	mov r0, r4
	bl FUN_ov17_0210f3b8
	ldr r0, _020F4C04 ; =0x02116168
	ldr r0, [r0]
	ldr r1, [r0, #0x10]
	cmp r1, #0
	beq _020F4BC0
	mov r0, r4
	bl FUN_ov17_0210f3b8
_020F4BC0:
	ldr r4, _020F4C04 ; =0x02116168
	mov r5, #0
_020F4BC8:
	ldr r0, [r4]
	ldr r0, [r0, r5, lsl #2]
	cmp r0, #0
	beq _020F4BDC
	bl FUN_ov17_0210cbf4
_020F4BDC:
	add r5, r5, #1
	cmp r5, #2
	blt _020F4BC8
	ldr r0, _020F4C04 ; =0x02116168
	ldr r0, [r0]
	ldr r0, [r0, #8]
	bl FUN_ov17_0210cbf4
	ldr r0, _020F4C08 ; =0x02116168
	bl FUN_ov17_0210e0cc
	ldmfd sp!, {r3, r4, r5, pc}
_020F4C04: .word 0x02116168
_020F4C08: .word 0x02116168
	arm_func_end FUN_ov17_020f4b90

	arm_func_start FUN_ov17_020f4c0c
FUN_ov17_020f4c0c: ; 0x020F4C0C
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, lr}
	ldr r4, _020F4CF0 ; =0x02116168
	str r0, [sp]
	ldr r1, [r4]
	ldrh r0, [r1, #0x14]
	add r0, r0, #1
	strh r0, [r1, #0x14]
	ldr r1, [r4]
	ldrh r0, [r1, #0x14]
	cmp r0, #0x10
	ldmlofd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
	ldrb r1, [r1, #0x17]
	ldr r0, _020F4CF4 ; =0x02111C84
	mov r9, #0
	ldrb r8, [r0, r1]
	cmp r8, #0
	ble _020F4CAC
	ldr r7, _020F4CF8 ; =0x02111C94
	mov r6, r9
	mvn r5, #0
	mov r11, #1
_020F4C60:
	ldr r0, [r4]
	mov r1, r6
	ldrb r2, [r0, #0x17]
	ldr r0, [r0, r9, lsl #2]
	add r2, r7, r2, lsl #1
	ldrb r10, [r9, r2]
	bl FUN_ov17_0210cc74
	mov r2, r0
	mov r0, r6
	mov r1, r10
	bl FUN_ov17_0210cf68
	ldr r0, [r4]
	mov r1, r5
	ldr r0, [r0, r9, lsl #2]
	mov r2, r11
	bl FUN_ov17_0210ce84
	add r9, r9, #1
	cmp r9, r8
	blt _020F4C60
_020F4CAC:
	mov r0, #0xa8
	bl FUN_ov17_020f4864
	ldr r1, _020F4CF0 ; =0x02116168
	mov r0, #0
	ldr r2, [r1]
	sub r3, r0, #1
	strh r0, [r2, #0x14]
	ldr r2, [r1]
	strb r3, [r2, #0x16]
	ldr r2, [r1]
	ldr r1, [r2, #0x10]
	cmp r1, #0
	ldmeqfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
	ldr r1, [sp]
	str r0, [r2, #0x10]
	bl FUN_ov17_0210f3b8
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_020F4CF0: .word 0x02116168
_020F4CF4: .word 0x02111C84
_020F4CF8: .word 0x02111C94
	arm_func_end FUN_ov17_020f4c0c

	arm_func_start FUN_ov17_020f4cfc
FUN_ov17_020f4cfc: ; 0x020F4CFC
	ldr r0, _020F4D0C ; =0x0211616C
	mov r1, #0
	strb r1, [r0]
	bx lr
_020F4D0C: .word 0x0211616C
	arm_func_end FUN_ov17_020f4cfc

	arm_func_start FUN_ov17_020f4d10
FUN_ov17_020f4d10: ; 0x020F4D10
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, lr}
	sub sp, sp, #0x10
	ldr r4, _020F4DD0 ; =0x0211616C
	mov r9, r0
	ldrb r0, [r4]
	mov r8, r1
	mov r5, r2
	cmp r0, #0
	addne sp, sp, #0x10
	movne r0, #0
	ldmnefd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
	ldr r0, _020F4DD4 ; =0x02112890
	ldr r1, _020F4DD8 ; =0x0200546C
	bl FUN_ov17_020f4e84
	mov r7, #1
	mov r6, #0
	ldr r3, _020F4DDC ; =0x01920000
	ldr r2, _020F4DE0 ; =0x04001010
	mov r0, r7
	mov r1, r6
	str r3, [r2]
	bl FUN_ov17_0210d6ec
	mov r1, r9
	mov r2, r8
	mov r3, r5
	mov r5, r0
	ldr r0, _020F4DE4 ; =0x021161F8
	ldr r0, [r0]
	bl FUN_ov17_020f8cdc
	mov r8, r0
	bl FUN_ov17_020f507c
	mov r2, r6
	mov r1, #0x40
	str r1, [sp]
	mov r1, #2
	str r1, [sp, #4]
	str r0, [sp, #8]
	str r8, [sp, #0xc]
	mov r0, r5
	mov r1, #0x14
	mov r3, #0xd8
	bl FUN_ov17_0210daf0
	mov r0, r5
	bl FUN_ov17_0210dc58
	strb r7, [r4]
	mov r0, r7
	add sp, sp, #0x10
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
_020F4DD0: .word 0x0211616C
_020F4DD4: .word 0x02112890
_020F4DD8: .word 0x0200546C
_020F4DDC: .word 0x01920000
_020F4DE0: .word 0x04001010
_020F4DE4: .word 0x021161F8
	arm_func_end FUN_ov17_020f4d10

	arm_func_start FUN_ov17_020f4de8
FUN_ov17_020f4de8: ; 0x020F4DE8
	stmfd sp!, {r3, r4, r5, lr}
	ldr r4, _020F4E1C ; =0x0211616C
	ldrb r0, [r4]
	cmp r0, #0
	moveq r0, #0
	ldmeqfd sp!, {r3, r4, r5, pc}
	mov r5, #1
	mov r0, r5
	bl FUN_ov17_0210d93c
	mov r1, #0
	mov r0, r5
	strb r1, [r4]
	ldmfd sp!, {r3, r4, r5, pc}
_020F4E1C: .word 0x0211616C
	arm_func_end FUN_ov17_020f4de8

	arm_func_start FUN_ov17_020f4e20
FUN_ov17_020f4e20: ; 0x020F4E20
	stmfd sp!, {r3, r4, r5, lr}
	ldr r4, _020F4E7C ; =0x02116170
	mov r5, r0
	mov r0, r4
	mov r1, r5
	mov r2, #0x3f
	bl _strncpy
	ldrb r0, [r5, #5]
	cmp r0, #0x78
	moveq r0, r4
	ldmeqfd sp!, {r3, r4, r5, pc}
	bl FUN_ov17_020f8b5c
	ldrb r1, [r5, #5]
	cmp r1, #0x79
	bne _020F4E68
	cmp r0, #0
	movne r0, r4
	ldmnefd sp!, {r3, r4, r5, pc}
_020F4E68:
	ldr r1, _020F4E80 ; =0x02111CC0
	ldrb r1, [r1, r0]
	ldr r0, _020F4E7C ; =0x02116170
	strb r1, [r0, #5]
	ldmfd sp!, {r3, r4, r5, pc}
_020F4E7C: .word 0x02116170
_020F4E80: .word 0x02111CC0
	arm_func_end FUN_ov17_020f4e20

	arm_func_start FUN_ov17_020f4e84
FUN_ov17_020f4e84: ; 0x020F4E84
	stmfd sp!, {r3, r4, r5, lr}
	mov r5, r1
	bl FUN_ov17_020f4e20
	add r1, sp, #0
	mov r2, #4
	bl FUN_ov17_0210c7fc
	ldr r1, [sp]
	mov r4, r0
	bl DC_FlushRange
	ldr r2, [sp]
	mov r0, r4
	mov r1, #0
	blx r5
	mov r0, r4
	bl FUN_ov17_0210c8fc
	ldmfd sp!, {r3, r4, r5, pc}
	arm_func_end FUN_ov17_020f4e84

	arm_func_start FUN_ov17_020f4ec4
FUN_ov17_020f4ec4: ; 0x020F4EC4
	stmfd sp!, {r3, r4, lr}
	sub sp, sp, #4
	mov r4, r0
	add r0, sp, #0
	mov r1, #0
	bl FUN_ov17_020f8af8
	ldr r0, [sp]
	cmp r0, #1
	bne _020F4EF8
	mov r0, r4
	bl FUN_ov17_02107cd4
	add sp, sp, #4
	ldmfd sp!, {r3, r4, pc}
_020F4EF8:
	cmp r0, #2
	addne sp, sp, #4
	ldmnefd sp!, {r3, r4, pc}
	mov r0, r4
	bl FUN_ov17_02108250
	add sp, sp, #4
	ldmfd sp!, {r3, r4, pc}
	arm_func_end FUN_ov17_020f4ec4

	arm_func_start FUN_ov17_020f4f14
FUN_ov17_020f4f14: ; 0x020F4F14
	stmfd sp!, {r3, r4, lr}
	sub sp, sp, #4
	mov r4, r0
	add r1, sp, #0
	mov r0, #0
	bl FUN_ov17_020f8af8
	ldr r0, [sp]
	cmp r0, #1
	addne sp, sp, #4
	ldmnefd sp!, {r3, r4, pc}
	mov r0, r4
	bl FUN_ov17_020f4694
	add sp, sp, #4
	ldmfd sp!, {r3, r4, pc}
	arm_func_end FUN_ov17_020f4f14

	arm_func_start FUN_ov17_020f4f4c
FUN_ov17_020f4f4c: ; 0x020F4F4C
	stmfd sp!, {r3, r4, r5, lr}
	sub sp, sp, #0x10
	mov r4, r0
	mov r0, #0
	mov r1, r0
	bl FUN_ov17_0210d6ec
	ldr r1, _020F4FBC ; =0x021161F8
	mov r5, r0
	ldr r0, [r1]
	mov r1, r4
	bl FUN_ov17_020f8cc4
	mov r4, r0
	bl FUN_ov17_020f507c
	mov r1, #0x70
	str r1, [sp]
	mov r1, #2
	str r1, [sp, #4]
	str r0, [sp, #8]
	str r4, [sp, #0xc]
	mov r0, r5
	mov r1, #0xd
	mov r2, #0x28
	mov r3, #0xe6
	bl FUN_ov17_0210daf0
	mov r0, r5
	bl FUN_ov17_0210dc58
	add sp, sp, #0x10
	ldmfd sp!, {r3, r4, r5, pc}
_020F4FBC: .word 0x021161F8
	arm_func_end FUN_ov17_020f4f4c

	arm_func_start FUN_ov17_020f4fc0
FUN_ov17_020f4fc0: ; 0x020F4FC0
	stmfd sp!, {r4, r5, r6, r7, r8, lr}
	sub sp, sp, #0x10
	mov r5, r0
	mov r0, #0
	mov r6, r1
	mov r1, r0
	bl FUN_ov17_0210d6ec
	ldr r1, _020F5070 ; =0x021161F8
	mov r4, r0
	ldr r0, [r1]
	mov r1, r6
	bl FUN_ov17_020f8cc4
	mov r6, r0
	bl FUN_ov17_020f507c
	mov r1, #0x5e
	str r1, [sp]
	mov r8, #2
	str r8, [sp, #4]
	str r0, [sp, #8]
	mov r7, #0xd
	mov r0, r4
	mov r1, r7
	mov r2, #0x3c
	mov r3, #0xe6
	str r6, [sp, #0xc]
	bl FUN_ov17_0210daf0
	bl FUN_ov17_020f8b5c
	mov r6, r0
	bl FUN_ov17_020f8b5c
	add r1, r7, #0x1fc
	stmia sp, {r1, r5}
	mov r5, r0, lsl #2
	ldr r2, _020F5074 ; =0x02111CE6
	ldr r1, _020F5078 ; =0x02111CE4
	mov r12, r6, lsl #2
	ldrh r1, [r1, r12]
	ldrh r2, [r2, r5]
	mov r3, r8
	mov r0, r4
	bl FUN_ov17_0210d960
	mov r0, r4
	bl FUN_ov17_0210dc58
	add sp, sp, #0x10
	ldmfd sp!, {r4, r5, r6, r7, r8, pc}
_020F5070: .word 0x021161F8
_020F5074: .word 0x02111CE6
_020F5078: .word 0x02111CE4
	arm_func_end FUN_ov17_020f4fc0

	arm_func_start FUN_ov17_020f507c
FUN_ov17_020f507c: ; 0x020F507C
	stmfd sp!, {r3, lr}
	bl FUN_ov17_020f8b5c
	ldr r1, _020F5090 ; =0x02111CC8
	ldr r0, [r1, r0, lsl #2]
	ldmfd sp!, {r3, pc}
_020F5090: .word 0x02111CC8
	arm_func_end FUN_ov17_020f507c

	arm_func_start FUN_ov17_020f5094
FUN_ov17_020f5094: ; 0x020F5094
	stmfd sp!, {r3, lr}
	mov r0, #0x10
	mov r1, #4
	bl FUN_ov17_0210e0a8
	ldr r1, _020F50B0 ; =0x021161B0
	str r0, [r1]
	ldmfd sp!, {r3, pc}
_020F50B0: .word 0x021161B0
	arm_func_end FUN_ov17_020f5094

	arm_func_start FUN_ov17_020f50b4
FUN_ov17_020f50b4: ; 0x020F50B4
	stmfd sp!, {r3, lr}
	bl FUN_ov17_020f5258
	ldr r0, _020F50C8 ; =0x021161B0
	bl FUN_ov17_0210e0cc
	ldmfd sp!, {r3, pc}
_020F50C8: .word 0x021161B0
	arm_func_end FUN_ov17_020f50b4

	arm_func_start FUN_ov17_020f50cc
FUN_ov17_020f50cc: ; 0x020F50CC
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, lr}
	mov r4, r0
	mov r11, r1
	str r2, [sp]
	mov r10, r3
	bl FUN_ov17_020f5258
	ldr r0, _020F5170 ; =0x02111D00
	mov r9, #0
	add r7, r0, r4, lsl #1
	ldr r4, _020F5174 ; =0x021161B0
	mov r8, r9
	mov r6, #1
	mvn r5, #0
_020F5100:
	ldrb r1, [r9, r7]
	mov r0, r8
	mov r2, r6
	bl FUN_ov17_0210d028
	ldr r2, [r4]
	mov r1, r5
	str r0, [r2, r9, lsl #2]
	ldr r0, [r4]
	mov r2, r6
	ldr r0, [r0, r9, lsl #2]
	bl FUN_ov17_0210ce84
	add r9, r9, #1
	cmp r9, #2
	blt _020F5100
	ldr r4, _020F5174 ; =0x021161B0
	mov r1, r5
	ldr r0, [r4]
	mov r2, r11
	ldr r0, [r0]
	mov r3, r10
	bl FUN_ov17_0210cdac
	ldr r0, [r4]
	ldr r2, [sp]
	ldr r0, [r0, #4]
	mov r1, r5
	mov r3, r10
	bl FUN_ov17_0210cdac
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_020F5170: .word 0x02111D00
_020F5174: .word 0x021161B0
	arm_func_end FUN_ov17_020f50cc

	arm_func_start FUN_ov17_020f5178
FUN_ov17_020f5178: ; 0x020F5178
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, lr}
	sub sp, sp, #8
	mov r10, r0
	mov r11, r1
	str r2, [sp]
	str r3, [sp, #4]
	mov r8, #6
	bl FUN_ov17_020f5258
	mov r9, #0
	ldr r4, _020F5254 ; =0x021161B0
	mov r7, r9
	mov r6, #1
	mvn r5, #0
_020F51AC:
	mov r0, r7
	mov r1, r8
	mov r2, r6
	bl FUN_ov17_0210d028
	ldr r2, [r4]
	mov r1, r5
	str r0, [r2, r9, lsl #2]
	ldr r0, [r4]
	mov r2, r6
	ldr r0, [r0, r9, lsl #2]
	bl FUN_ov17_0210ce84
	add r9, r9, #1
	cmp r9, #4
	add r8, r8, #1
	blt _020F51AC
	ldr r4, _020F5254 ; =0x021161B0
	ldr r3, [sp]
	ldr r0, [r4]
	mov r1, r5
	ldr r0, [r0]
	mov r2, r10
	bl FUN_ov17_0210cdac
	ldr r0, [r4]
	ldr r3, [sp]
	ldr r0, [r0, #4]
	mov r1, r5
	mov r2, r11
	bl FUN_ov17_0210cdac
	ldr r0, [r4]
	ldr r3, [sp, #4]
	ldr r0, [r0, #8]
	mov r2, r10
	mov r1, r5
	bl FUN_ov17_0210cdac
	ldr r0, [r4]
	ldr r3, [sp, #4]
	ldr r0, [r0, #0xc]
	mov r1, r5
	mov r2, r11
	bl FUN_ov17_0210cdac
	add sp, sp, #8
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_020F5254: .word 0x021161B0
	arm_func_end FUN_ov17_020f5178

	arm_func_start FUN_ov17_020f5258
FUN_ov17_020f5258: ; 0x020F5258
	stmfd sp!, {r4, r5, r6, lr}
	mov r6, #0
	ldr r4, _020F5294 ; =0x021161B0
	mov r5, r6
_020F5268:
	ldr r0, [r4]
	ldr r0, [r0, r6, lsl #2]
	cmp r0, #0
	beq _020F5284
	bl FUN_ov17_0210cbf4
	ldr r0, [r4]
	str r5, [r0, r6, lsl #2]
_020F5284:
	add r6, r6, #1
	cmp r6, #4
	blt _020F5268
	ldmfd sp!, {r4, r5, r6, pc}
_020F5294: .word 0x021161B0
	arm_func_end FUN_ov17_020f5258

	arm_func_start FUN_ov17_020f5298
FUN_ov17_020f5298: ; 0x020F5298
	stmfd sp!, {r3, lr}
	mov r0, #0xc0
	mov r1, #4
	bl FUN_ov17_0210e0a8
	ldr r2, _020F52FC ; =0x021161B4
	ldr r1, _020F5300 ; =0x0200585C
	str r0, [r2]
	ldr r0, _020F5304 ; =0x02112AC4
	bl FUN_ov17_020f4e84
	bl FUN_ov17_020f8b6c
	cmp r0, #0
	beq _020F52D4
	cmp r0, #1
	beq _020F52E8
	ldmfd sp!, {r3, pc}
_020F52D4:
	ldr r0, _020F5308 ; =0x02112A74
	ldr r1, _020F530C ; =FUN_020054dc
	ldr r0, [r0]
	bl FUN_ov17_020f4e84
	ldmfd sp!, {r3, pc}
_020F52E8:
	ldr r0, _020F5308 ; =0x02112A74
	ldr r1, _020F530C ; =FUN_020054dc
	ldr r0, [r0, #4]
	bl FUN_ov17_020f4e84
	ldmfd sp!, {r3, pc}
_020F52FC: .word 0x021161B4
_020F5300: .word 0x0200585C
_020F5304: .word 0x02112AC4
_020F5308: .word 0x02112A74
_020F530C: .word FUN_020054dc
	arm_func_end FUN_ov17_020f5298

	arm_func_start FUN_ov17_020f5310
FUN_ov17_020f5310: ; 0x020F5310
	ldr r0, _020F531C ; =0x021161B4
	ldr r12, _020F5320 ; =FUN_ov17_0210e0cc
	bx r12
_020F531C: .word 0x021161B4
_020F5320: .word FUN_ov17_0210e0cc
	arm_func_end FUN_ov17_020f5310

	arm_func_start FUN_ov17_020f5324
FUN_ov17_020f5324: ; 0x020F5324
	stmfd sp!, {r3, r4, r5, lr}
	ldr r1, _020F5378 ; =0x02112A74
	ldr r0, [r1, r0, lsl #2]
	bl FUN_ov17_020f4e20
	mov r5, #0
	mov r1, r5
	mov r2, #4
	bl FUN_ov17_0210c7fc
	ldr r1, _020F537C ; =0x021161B4
	mov r4, r0
	ldr r1, [r1]
	mov r2, #0xc0
	bl MIi_CpuCopyFast
	mov r0, r4
	bl FUN_ov17_0210c8fc
	mov r2, r5
	mov r0, #1
	ldr r1, _020F5380 ; =FUN_ov17_020f53b4
	mov r3, #0x78
	bl FUN_ov17_0210f314
	ldmfd sp!, {r3, r4, r5, pc}
_020F5378: .word 0x02112A74
_020F537C: .word 0x021161B4
_020F5380: .word FUN_ov17_020f53b4
	arm_func_end FUN_ov17_020f5324

	arm_func_start FUN_ov17_020f5384
FUN_ov17_020f5384: ; 0x020F5384
	stmfd sp!, {r3, lr}
	bl FUN_ov17_02107098
	ldrb r0, [r0, #0xf4]
	add r0, r0, #5
	bl FUN_ov17_020f5324
	ldmfd sp!, {r3, pc}
	arm_func_end FUN_ov17_020f5384

	arm_func_start FUN_ov17_020f539c
FUN_ov17_020f539c: ; 0x020F539C
	stmfd sp!, {r3, lr}
	bl FUN_ov17_02107098
	ldrb r0, [r0, #0xf4]
	add r0, r0, #2
	bl FUN_ov17_020f5324
	ldmfd sp!, {r3, pc}
	arm_func_end FUN_ov17_020f539c

	arm_func_start FUN_ov17_020f53b4
FUN_ov17_020f53b4: ; 0x020F53B4
	stmfd sp!, {r4, r5, r6, lr}
	ldr r4, _020F53F0 ; =0x021161B4
	mov r6, r0
	mov r5, #0xc0
	ldr r0, [r4]
	mov r1, r5
	bl DC_FlushRange
	ldr r0, [r4]
	mov r2, r5
	mov r1, #0
	bl FUN_020054dc
	mov r1, r6
	mov r0, #1
	bl FUN_ov17_0210f3b8
	ldmfd sp!, {r4, r5, r6, pc}
_020F53F0: .word 0x021161B4
	arm_func_end FUN_ov17_020f53b4

	arm_func_start FUN_ov17_020f53f4
FUN_ov17_020f53f4: ; 0x020F53F4
	stmfd sp!, {r4, r5, r6, lr}
	ldr r4, _020F5494 ; =0x021161B8
	mov r5, r0
	ldr r0, [r4]
	cmp r0, #0
	ldmnefd sp!, {r4, r5, r6, pc}
	mov r0, #0xc
	mov r1, #4
	bl FUN_ov17_0210e0a8
	ldr r1, _020F5498 ; =0x02111D0C
	str r0, [r4]
	ldrb r1, [r1, r5, lsl #2]
	mov r6, #0
	strb r5, [r0, #8]
	mov r0, r6
	bl FUN_ov17_0210cffc
	ldr r1, [r4]
	ldr r12, _020F549C ; =0xFE00FF00
	str r0, [r1]
	ldr r0, [r4]
	ldr r1, _020F54A0 ; =FUN_ov17_020f54e4
	ldr r5, [r0]
	mov r0, r6
	mov r2, r6
	ldr lr, [r5]
	mov r3, #0x78
	and r12, lr, r12
	orr r12, r12, #0x26
	orr r12, r12, #0xe50000
	str r12, [r5]
	ldr r12, [r4]
	ldr lr, [r12]
	ldrh r12, [lr, #4]
	bic r12, r12, #0xc00
	orr r12, r12, #0x800
	strh r12, [lr, #4]
	bl FUN_ov17_0210f314
	ldr r1, [r4]
	str r0, [r1, #4]
	ldmfd sp!, {r4, r5, r6, pc}
_020F5494: .word 0x021161B8
_020F5498: .word 0x02111D0C
_020F549C: .word 0xFE00FF00
_020F54A0: .word FUN_ov17_020f54e4
	arm_func_end FUN_ov17_020f53f4

	arm_func_start FUN_ov17_020f54a4
FUN_ov17_020f54a4: ; 0x020F54A4
	stmfd sp!, {r4, lr}
	ldr r4, _020F54DC ; =0x021161B8
	ldr r0, [r4]
	cmp r0, #0
	ldmeqfd sp!, {r4, pc}
	ldr r1, [r0, #4]
	mov r0, #0
	bl FUN_ov17_0210f3d8
	ldr r0, [r4]
	ldr r0, [r0]
	bl FUN_ov17_0210ebcc
	ldr r0, _020F54E0 ; =0x021161B8
	bl FUN_ov17_0210e0cc
	ldmfd sp!, {r4, pc}
_020F54DC: .word 0x021161B8
_020F54E0: .word 0x021161B8
	arm_func_end FUN_ov17_020f54a4

	arm_func_start FUN_ov17_020f54e4
FUN_ov17_020f54e4: ; 0x020F54E4
	stmfd sp!, {r4, r5, r6, lr}
	ldr r0, _020F5578 ; =0x04000208
	mov r4, #0
	ldrh r6, [r0]
	strh r4, [r0]
	bl FUN_02012bc0
	cmp r0, #0x8000
	beq _020F550C
	bl FUN_02012be0
	mov r4, r0
_020F550C:
	ldr r2, _020F5578 ; =0x04000208
	ldr r5, _020F557C ; =0x021161B8
	ldrh r0, [r2]
	ldr r1, _020F5580 ; =0x02111D0C
	mov r0, #0
	strh r6, [r2]
	ldr r2, [r5]
	ldrsb r3, [r2, #8]
	ldr r2, [r2]
	add r1, r1, r3, lsl #2
	ldrb r1, [r4, r1]
	bl FUN_ov17_0210cf68
	ldr r1, [r5]
	ldr r0, _020F5584 ; =0xFE00FF00
	ldr r2, [r1]
	ldr r1, [r2]
	and r0, r1, r0
	orr r0, r0, #0x26
	orr r0, r0, #0xe50000
	str r0, [r2]
	ldr r0, [r5]
	ldr r1, [r0]
	ldrh r0, [r1, #4]
	bic r0, r0, #0xc00
	orr r0, r0, #0x800
	strh r0, [r1, #4]
	ldmfd sp!, {r4, r5, r6, pc}
_020F5578: .word 0x04000208
_020F557C: .word 0x021161B8
_020F5580: .word 0x02111D0C
_020F5584: .word 0xFE00FF00
	arm_func_end FUN_ov17_020f54e4

	arm_func_start FUN_ov17_020f5588
FUN_ov17_020f5588: ; 0x020F5588
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, lr}
	sub sp, sp, #0x20
	add r4, sp, #0x18
	mov r5, #0
	strh r5, [r4, #4]
	mov r3, #0x11
	strh r5, [r4, #6]
	mov r2, #0x12
	mov r0, #0x128
	mov r1, #4
	strh r5, [r4]
	strh r5, [r4, #2]
	strh r3, [sp, #0x1c]
	strh r2, [sp, #0x1e]
	bl FUN_ov17_0210e0a8
	ldr r8, _020F58BC ; =0x021161BC
	mov r1, #0xff
	str r0, [r8]
	strb r1, [r0, #0x11c]
	ldr r0, [r8]
	mov r1, #1
	strb r5, [r0, #0x121]
	ldr r0, [r8]
	ldr r7, _020F58C0 ; =0xC1FFFCFF
	strb r1, [r0, #0x123]
	ldr r0, [r8]
	mov r6, r5
	strb r1, [r0, #0x124]
	mov r4, #0x34
_020F55FC:
	mov r0, r6
	mov r1, r4
	bl FUN_ov17_0210cffc
	ldr r1, [r8]
	add r1, r1, r5, lsl #2
	str r0, [r1, #0x30]
	ldr r0, [r8]
	add r0, r0, r5, lsl #2
	ldr r1, [r0, #0x30]
	ldr r0, [r1]
	and r0, r0, r7
	orr r0, r0, #0x200
	str r0, [r1]
	ldr r0, [r8]
	add r0, r0, r5, lsl #2
	ldr r1, [r0, #0x30]
	add r5, r5, #1
	ldrh r0, [r1, #4]
	cmp r5, #0x2f
	bic r0, r0, #0xc00
	orr r0, r0, #0xc00
	strh r0, [r1, #4]
	blt _020F55FC
	ldr r4, _020F58C4 ; =0x02111D1D
	ldr r7, _020F58BC ; =0x021161BC
	ldr r5, _020F58C0 ; =0xC1FFFCFF
	mov r9, #0
_020F5668:
	ldrb r1, [r4, r6]
	mov r0, r9
	bl FUN_ov17_0210cffc
	ldr r1, [r7]
	add r1, r1, r6, lsl #2
	str r0, [r1, #0xec]
	ldr r0, [r7]
	add r0, r0, r6, lsl #2
	ldr r1, [r0, #0xec]
	ldr r0, [r1]
	and r0, r0, r5
	orr r0, r0, #0x200
	str r0, [r1]
	ldr r0, [r7]
	add r0, r0, r6, lsl #2
	ldr r1, [r0, #0xec]
	add r6, r6, #1
	ldrh r0, [r1, #4]
	cmp r6, #4
	bic r0, r0, #0xc00
	orr r0, r0, #0xc00
	strh r0, [r1, #4]
	blt _020F5668
	ldr r8, _020F58C8 ; =0x02111D18
	ldr r4, _020F58BC ; =0x021161BC
	mov r10, #0
	mov r7, #1
	mvn r6, #0
	mov r5, #0x200
	mov r11, #3
_020F56E0:
	ldrb r1, [r8, r9]
	mov r0, r10
	mov r2, r7
	bl FUN_ov17_0210d028
	ldr r2, [r4]
	mov r1, r6
	add r2, r2, r9, lsl #2
	str r0, [r2, #0xfc]
	ldr r0, [r4]
	mov r2, r5
	add r0, r0, r9, lsl #2
	ldr r0, [r0, #0xfc]
	mov r3, r10
	bl FUN_ov17_0210cc88
	ldr r0, [r4]
	mov r1, r6
	add r0, r0, r9, lsl #2
	ldr r0, [r0, #0xfc]
	mov r2, r11
	bl FUN_ov17_0210ce84
	add r9, r9, #1
	cmp r9, #2
	blt _020F56E0
	ldr r4, _020F58BC ; =0x021161BC
	strh r10, [sp, #0x12]
_020F5744:
	ldr r6, _020F58CC ; =0x02112AE4
	mov r9, #0
	mov r11, #2
_020F5750:
	add r0, sp, #0x14
	str r0, [sp]
	mov r0, #0
	mov r1, #0x1c
	mov r2, #2
	mov r3, r0
	str r0, [sp, #4]
	bl FUN_ov17_0210d5e4
	mov r1, #0
	strh r1, [sp, #0x18]
	ldr r1, [r4]
	mov r2, r9, lsl #2
	add r1, r1, r10, lsl #4
	str r0, [r1, r9, lsl #2]
	mov r0, #0xc
	mul r7, r9, r0
	mov r8, #0
	add r5, r2, r10, lsl #4
_020F5798:
	ldr r1, [r6, r10, lsl #2]
	mov r0, r7, lsl #1
	ldrh r2, [r1, r0]
	ldrh r0, [sp, #0x1e]
	ldrh r1, [sp, #0x18]
	strh r2, [sp, #0x10]
	stmia sp, {r0, r11}
	mov r0, #0x480
	str r0, [sp, #8]
	add r0, sp, #0x10
	str r0, [sp, #0xc]
	ldr r0, [r4]
	ldrh r2, [sp, #0x1a]
	ldrh r3, [sp, #0x1c]
	ldr r0, [r0, r5]
	bl FUN_ov17_0210daf0
	ldrh r0, [sp, #0x18]
	add r8, r8, #1
	cmp r8, #0xc
	add r0, r0, #0x12
	add r7, r7, #1
	strh r0, [sp, #0x18]
	blt _020F5798
	cmp r10, #0
	bne _020F5818
	ldr r1, [sp, #0x14]
	mov r0, #0
	mov r2, #1
	bl FUN_ov17_0210cab0
	ldr r1, [r4]
	add r1, r1, r9, lsl #2
	str r0, [r1, #0x104]
_020F5818:
	add r9, r9, #1
	cmp r9, #4
	blt _020F5750
	add r10, r10, #1
	cmp r10, #3
	ldr r6, _020F58BC ; =0x021161BC
	mov r5, #0
	blt _020F5744
	mov r4, #1
	mov r0, r5
	mov r2, r4
	mov r1, #0x40
	bl FUN_ov17_0210d028
	ldr r1, [r6]
	sub r4, r4, #2
	str r0, [r1, #0x114]
	ldr r0, [r6]
	mov r1, r4
	ldr r0, [r0, #0x114]
	mov r3, r5
	mov r2, #0x200
	bl FUN_ov17_0210cc88
	ldr r0, [r6]
	mov r1, r4
	ldr r0, [r0, #0x114]
	mov r2, #2
	bl FUN_ov17_0210ce84
	ldr r1, _020F58D0 ; =FUN_ov17_020f595c
	mov r0, r5
	mov r2, r5
	mov r3, #0x78
	bl FUN_ov17_0210f314
	ldr r3, [r6]
	mov r1, r5
	str r0, [r3, #0x118]
	ldr r0, [r6]
	mov r2, #0xc0
	ldrb r0, [r0, #0x11d]
	bl FUN_ov17_020f64f4
	add sp, sp, #0x20
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_020F58BC: .word 0x021161BC
_020F58C0: .word 0xC1FFFCFF
_020F58C4: .word 0x02111D1D
_020F58C8: .word 0x02111D18
_020F58CC: .word 0x02112AE4
_020F58D0: .word FUN_ov17_020f595c
	arm_func_end FUN_ov17_020f5588

	arm_func_start FUN_ov17_020f58d4
FUN_ov17_020f58d4: ; 0x020F58D4
	stmfd sp!, {r4, lr}
	ldr r4, _020F58FC ; =0x021161BC
	ldr r0, [r4]
	ldr r0, [r0, #0x114]
	bl FUN_ov17_0210cbf4
	ldr r0, [r4]
	ldr r1, _020F5900 ; =FUN_ov17_020f6d88
	ldr r0, [r0, #0x118]
	bl FUN_ov17_0210f3b0
	ldmfd sp!, {r4, pc}
_020F58FC: .word 0x021161BC
_020F5900: .word FUN_ov17_020f6d88
	arm_func_end FUN_ov17_020f58d4

	arm_func_start FUN_ov17_020f5904
FUN_ov17_020f5904: ; 0x020F5904
	ldr r0, _020F5914 ; =0x021161BC
	ldr r0, [r0]
	ldrb r0, [r0, #0x11c]
	bx lr
_020F5914: .word 0x021161BC
	arm_func_end FUN_ov17_020f5904

	arm_func_start FUN_ov17_020f5918
FUN_ov17_020f5918: ; 0x020F5918
	ldr r1, _020F5928 ; =0x021161BC
	ldr r1, [r1]
	strb r0, [r1, #0x123]
	bx lr
_020F5928: .word 0x021161BC
	arm_func_end FUN_ov17_020f5918

	arm_func_start FUN_ov17_020f592c
FUN_ov17_020f592c: ; 0x020F592C
	ldr r1, _020F593C ; =0x021161BC
	ldr r1, [r1]
	strb r0, [r1, #0x124]
	bx lr
_020F593C: .word 0x021161BC
	arm_func_end FUN_ov17_020f592c

	arm_func_start FUN_ov17_020f5940
FUN_ov17_020f5940: ; 0x020F5940
	ldr r0, _020F5958 ; =0x021161BC
	ldr r0, [r0]
	cmp r0, #0
	movne r0, #1
	moveq r0, #0
	bx lr
_020F5958: .word 0x021161BC
	arm_func_end FUN_ov17_020f5940

	arm_func_start FUN_ov17_020f595c
FUN_ov17_020f595c: ; 0x020F595C
	stmfd sp!, {r3, r4, r5, lr}
	sub sp, sp, #8
	ldr r4, _020F59CC ; =0x021161BC
	mov r5, r0
	ldr r1, [r4]
	ldr r0, [r1, #0x30]
	ldr r0, [r0]
	and r0, r0, #0xff
	sub r2, r0, #0xc
	ldrb r0, [r1, #0x11d]
	cmp r2, #0x51
	mov r1, #0
	ble _020F599C
	bl FUN_ov17_020f64f4
	add sp, sp, #8
	ldmfd sp!, {r3, r4, r5, pc}
_020F599C:
	mov r2, #0x51
	bl FUN_ov17_020f64f4
	ldr r0, [r4]
	mov r1, #1
	ldrb r0, [r0, #0x11d]
	mov r2, #0xc0
	bl FUN_ov17_020f64f4
	ldr r1, _020F59D0 ; =FUN_ov17_020f59d4
	mov r0, r5
	bl FUN_ov17_0210f3b0
	add sp, sp, #8
	ldmfd sp!, {r3, r4, r5, pc}
_020F59CC: .word 0x021161BC
_020F59D0: .word FUN_ov17_020f59d4
	arm_func_end FUN_ov17_020f595c

	arm_func_start FUN_ov17_020f59d4
FUN_ov17_020f59d4: ; 0x020F59D4
	stmfd sp!, {r3, r4, r5, lr}
	sub sp, sp, #8
	ldr r4, _020F5A44 ; =0x021161BC
	mov r5, r0
	ldr r1, [r4]
	ldr r0, [r1, #0x60]
	ldr r0, [r0]
	and r0, r0, #0xff
	sub r2, r0, #0xc
	ldrb r0, [r1, #0x11d]
	cmp r2, #0x67
	mov r1, #1
	ble _020F5A14
	bl FUN_ov17_020f64f4
	add sp, sp, #8
	ldmfd sp!, {r3, r4, r5, pc}
_020F5A14:
	mov r2, #0x67
	bl FUN_ov17_020f64f4
	ldr r0, [r4]
	mov r1, #2
	ldrb r0, [r0, #0x11d]
	mov r2, #0xc0
	bl FUN_ov17_020f64f4
	ldr r1, _020F5A48 ; =FUN_ov17_020f5a4c
	mov r0, r5
	bl FUN_ov17_0210f3b0
	add sp, sp, #8
	ldmfd sp!, {r3, r4, r5, pc}
_020F5A44: .word 0x021161BC
_020F5A48: .word FUN_ov17_020f5a4c
	arm_func_end FUN_ov17_020f59d4

	arm_func_start FUN_ov17_020f5a4c
FUN_ov17_020f5a4c: ; 0x020F5A4C
	stmfd sp!, {r3, r4, r5, lr}
	sub sp, sp, #8
	ldr r4, _020F5ABC ; =0x021161BC
	mov r5, r0
	ldr r1, [r4]
	ldr r0, [r1, #0x90]
	ldr r0, [r0]
	and r0, r0, #0xff
	sub r2, r0, #0xc
	ldrb r0, [r1, #0x11d]
	cmp r2, #0x7d
	mov r1, #2
	ble _020F5A8C
	bl FUN_ov17_020f64f4
	add sp, sp, #8
	ldmfd sp!, {r3, r4, r5, pc}
_020F5A8C:
	mov r2, #0x7d
	bl FUN_ov17_020f64f4
	ldr r0, [r4]
	mov r1, #3
	ldrb r0, [r0, #0x11d]
	mov r2, #0xc0
	bl FUN_ov17_020f64f4
	ldr r1, _020F5AC0 ; =FUN_ov17_020f5ac4
	mov r0, r5
	bl FUN_ov17_0210f3b0
	add sp, sp, #8
	ldmfd sp!, {r3, r4, r5, pc}
_020F5ABC: .word 0x021161BC
_020F5AC0: .word FUN_ov17_020f5ac4
	arm_func_end FUN_ov17_020f5a4c

	arm_func_start FUN_ov17_020f5ac4
FUN_ov17_020f5ac4: ; 0x020F5AC4
	stmfd sp!, {r3, r4, r5, lr}
	sub sp, sp, #8
	ldr r4, _020F5B34 ; =0x021161BC
	mov r5, r0
	ldr r1, [r4]
	ldr r0, [r1, #0xc0]
	ldr r0, [r0]
	and r0, r0, #0xff
	sub r2, r0, #0xc
	ldrb r0, [r1, #0x11d]
	cmp r2, #0x93
	mov r1, #3
	ble _020F5B04
	bl FUN_ov17_020f64f4
	add sp, sp, #8
	ldmfd sp!, {r3, r4, r5, pc}
_020F5B04:
	mov r2, #0x93
	bl FUN_ov17_020f64f4
	ldr r0, [r4]
	mov r1, #4
	ldrb r0, [r0, #0x11d]
	mov r2, #0xc0
	bl FUN_ov17_020f64f4
	ldr r1, _020F5B38 ; =FUN_ov17_020f5b3c
	mov r0, r5
	bl FUN_ov17_0210f3b0
	add sp, sp, #8
	ldmfd sp!, {r3, r4, r5, pc}
_020F5B34: .word 0x021161BC
_020F5B38: .word FUN_ov17_020f5b3c
	arm_func_end FUN_ov17_020f5ac4

	arm_func_start FUN_ov17_020f5b3c
FUN_ov17_020f5b3c: ; 0x020F5B3C
	stmfd sp!, {r3, r4, r5, lr}
	sub sp, sp, #8
	ldr r4, _020F5BB0 ; =0x021161BC
	mov r5, r0
	ldr r0, [r4]
	add r2, sp, #4
	ldr r0, [r0, #0xfc]
	add r3, sp, #0
	mov r1, #0
	bl FUN_ov17_0210cee4
	ldr r0, [sp]
	mov r1, #4
	sub r2, r0, #0xc
	ldr r0, [r4]
	str r2, [sp]
	cmp r2, #0xaa
	ldrb r0, [r0, #0x11d]
	ble _020F5B90
	bl FUN_ov17_020f64f4
	add sp, sp, #8
	ldmfd sp!, {r3, r4, r5, pc}
_020F5B90:
	mov r2, #0xaa
	bl FUN_ov17_020f64f4
	bl FUN_ov17_020f68d0
	ldr r1, _020F5BB4 ; =FUN_ov17_020f5bb8
	mov r0, r5
	bl FUN_ov17_0210f3b0
	add sp, sp, #8
	ldmfd sp!, {r3, r4, r5, pc}
_020F5BB0: .word 0x021161BC
_020F5BB4: .word FUN_ov17_020f5bb8
	arm_func_end FUN_ov17_020f5b3c

	arm_func_start FUN_ov17_020f5bb8
FUN_ov17_020f5bb8: ; 0x020F5BB8
	stmfd sp!, {r3, lr}
	bl FUN_ov17_020f5bd0
	bl FUN_ov17_020f5d88
	bl FUN_ov17_020f6094
	bl FUN_ov17_020f62c8
	ldmfd sp!, {r3, pc}
	arm_func_end FUN_ov17_020f5bb8

	arm_func_start FUN_ov17_020f5bd0
FUN_ov17_020f5bd0: ; 0x020F5BD0
	stmfd sp!, {r4, r5, r6, r7, r8, lr}
	sub sp, sp, #8
	ldr r0, _020F5D64 ; =0x021126F8
	ldr r5, _020F5D68 ; =0x021161BC
	bl FUN_ov17_0210e600
	cmp r0, #0
	addeq sp, sp, #8
	ldmeqfd sp!, {r4, r5, r6, r7, r8, pc}
	ldr r0, [r5]
	mvn r1, #0
	ldr r8, _020F5D6C ; =0x02111D74
	ldr r7, _020F5D70 ; =0x02111D2A
	strb r1, [r0, #0x11e]
	mov r4, #0
	add r6, sp, #0
_020F5C0C:
	mov r1, r7
	mov r2, r6
	add r0, r8, r4, lsl #2
	bl FUN_ov17_0210dca0
	mov r0, r6
	bl FUN_ov17_0210e600
	cmp r0, #0
	beq _020F5C64
	ldr r0, [r5]
	ldrb r0, [r0, #0x124]
	cmp r0, #0
	bne _020F5C4C
	mov r0, #9
	bl FUN_ov17_02107c40
	add sp, sp, #8
	ldmfd sp!, {r4, r5, r6, r7, r8, pc}
_020F5C4C:
	mov r0, #0
	bl FUN_ov17_02107c40
	ldr r0, [r5]
	add sp, sp, #8
	strb r4, [r0, #0x11e]
	ldmfd sp!, {r4, r5, r6, r7, r8, pc}
_020F5C64:
	add r4, r4, #1
	cmp r4, #0x2f
	blt _020F5C0C
	ldr r8, _020F5D74 ; =0x02111D3C
	ldr r7, _020F5D78 ; =0x02111D4C
	mov r4, #0
	add r6, sp, #0
_020F5C80:
	mov r2, r6
	add r0, r8, r4, lsl #2
	add r1, r7, r4, lsl #2
	bl FUN_ov17_0210dca0
	mov r0, r6
	bl FUN_ov17_0210e600
	cmp r0, #0
	beq _020F5CF8
	cmp r4, #3
	ldreq r0, [r5]
	ldreqb r0, [r0, #0x123]
	cmpeq r0, #0
	beq _020F5CC8
	cmp r4, #2
	ldreq r0, [r5]
	ldreqb r0, [r0, #0x124]
	cmpeq r0, #0
	bne _020F5CD8
_020F5CC8:
	mov r0, #9
	bl FUN_ov17_02107c40
	add sp, sp, #8
	ldmfd sp!, {r4, r5, r6, r7, r8, pc}
_020F5CD8:
	ldr r0, _020F5D7C ; =0x02112AF0
	ldr r0, [r0, r4, lsl #2]
	bl FUN_ov17_02107c40
	ldr r0, [r5]
	add r1, r4, #0x2f
	strb r1, [r0, #0x11e]
	add sp, sp, #8
	ldmfd sp!, {r4, r5, r6, r7, r8, pc}
_020F5CF8:
	add r4, r4, #1
	cmp r4, #4
	blt _020F5C80
	ldr r7, _020F5D80 ; =0x02111D34
	ldr r6, _020F5D84 ; =0x02111D26
	mov r8, #0
	add r4, sp, #0
_020F5D14:
	mov r1, r6
	mov r2, r4
	add r0, r7, r8, lsl #2
	bl FUN_ov17_0210dca0
	mov r0, r4
	bl FUN_ov17_0210e600
	cmp r0, #0
	beq _020F5D50
	mov r0, #0
	bl FUN_ov17_02107c40
	ldr r0, [r5]
	add r1, r8, #0x33
	strb r1, [r0, #0x11e]
	add sp, sp, #8
	ldmfd sp!, {r4, r5, r6, r7, r8, pc}
_020F5D50:
	add r8, r8, #1
	cmp r8, #2
	blt _020F5D14
	add sp, sp, #8
	ldmfd sp!, {r4, r5, r6, r7, r8, pc}
_020F5D64: .word 0x021126F8
_020F5D68: .word 0x021161BC
_020F5D6C: .word 0x02111D74
_020F5D70: .word 0x02111D2A
_020F5D74: .word 0x02111D3C
_020F5D78: .word 0x02111D4C
_020F5D7C: .word 0x02112AF0
_020F5D80: .word 0x02111D34
_020F5D84: .word 0x02111D26
	arm_func_end FUN_ov17_020f5bd0

	arm_func_start FUN_ov17_020f5d88
FUN_ov17_020f5d88: ; 0x020F5D88
	stmfd sp!, {r4, r5, r6, r7, r8, lr}
	sub sp, sp, #8
	ldr r1, _020F6000 ; =0x021161BC
	ldr r0, _020F6004 ; =0x021126F8
	ldr r1, [r1]
	mov r5, #0
	strb r5, [r1, #0x11c]
	bl FUN_ov17_0210e710
	cmp r0, #0
	addeq sp, sp, #8
	ldmeqfd sp!, {r4, r5, r6, r7, r8, pc}
	ldr r4, _020F6000 ; =0x021161BC
	ldr r8, _020F6008 ; =0x02111D74
	ldr r7, _020F600C ; =0x02111D2A
	add r6, sp, #0
_020F5DC4:
	mov r1, r7
	mov r2, r6
	add r0, r8, r5, lsl #2
	bl FUN_ov17_0210dca0
	mov r0, r6
	bl FUN_ov17_0210e710
	cmp r0, #0
	beq _020F5E3C
	ldr r2, [r4]
	add r0, r2, #0x100
	ldrsb r0, [r0, #0x1e]
	cmp r0, r5
	addne sp, sp, #8
	ldmnefd sp!, {r4, r5, r6, r7, r8, pc}
	ldrb r1, [r2, #0x11d]
	ldr r0, _020F6010 ; =0x02112AD8
	ldr r0, [r0, r1, lsl #2]
	ldrb r0, [r0, r5]
	strb r0, [r2, #0x11c]
	ldr r0, [r4]
	ldrb r0, [r0, #0x11d]
	cmp r0, #1
	bne _020F5E28
	mov r0, #0
	bl FUN_ov17_020f6784
_020F5E28:
	ldr r0, [r4]
	strb r5, [r0, #0x121]
	bl FUN_ov17_020f68d0
	add sp, sp, #8
	ldmfd sp!, {r4, r5, r6, r7, r8, pc}
_020F5E3C:
	add r5, r5, #1
	cmp r5, #0x2f
	blt _020F5DC4
	ldr r8, _020F6014 ; =0x02111D3C
	ldr r7, _020F6018 ; =0x02111D4C
	mov r5, #2
	add r6, sp, #0
_020F5E58:
	mov r2, r6
	add r0, r8, r5, lsl #2
	add r1, r7, r5, lsl #2
	bl FUN_ov17_0210dca0
	mov r0, r6
	bl FUN_ov17_0210e710
	cmp r0, #0
	beq _020F5ED0
	ldr r2, [r4]
	add r1, r5, #0x2f
	add r0, r2, #0x100
	ldrsb r0, [r0, #0x1e]
	cmp r0, r1
	addne sp, sp, #8
	ldmnefd sp!, {r4, r5, r6, r7, r8, pc}
	ldr r0, _020F601C ; =0x02111D2E
	ldrb r0, [r0, r5]
	strb r0, [r2, #0x11c]
	ldr r0, [r4]
	ldrb r0, [r0, #0x11d]
	cmp r0, #1
	bne _020F5EB8
	mov r0, #0
	bl FUN_ov17_020f6784
_020F5EB8:
	ldr r0, [r4]
	add r1, r5, #0x2f
	strb r1, [r0, #0x121]
	bl FUN_ov17_020f68d0
	add sp, sp, #8
	ldmfd sp!, {r4, r5, r6, r7, r8, pc}
_020F5ED0:
	add r5, r5, #1
	cmp r5, #4
	blt _020F5E58
	ldr r8, _020F6020 ; =0x02111D34
	ldr r7, _020F6024 ; =0x02111D26
	mov r5, #0
	add r6, sp, #0
_020F5EEC:
	mov r1, r7
	mov r2, r6
	add r0, r8, r5, lsl #2
	bl FUN_ov17_0210dca0
	mov r0, r6
	bl FUN_ov17_0210e710
	cmp r0, #0
	beq _020F5F48
	ldr r2, [r4]
	add r1, r5, #0x33
	add r0, r2, #0x100
	ldrsb r0, [r0, #0x1e]
	cmp r0, r1
	addne sp, sp, #8
	ldmnefd sp!, {r4, r5, r6, r7, r8, pc}
	ldr r0, _020F6028 ; =0x02111D1A
	ldrb r0, [r0, r5]
	strb r0, [r2, #0x11c]
	ldr r0, [r4]
	strb r1, [r0, #0x121]
	bl FUN_ov17_020f68d0
	add sp, sp, #8
	ldmfd sp!, {r4, r5, r6, r7, r8, pc}
_020F5F48:
	add r5, r5, #1
	cmp r5, #2
	blt _020F5EEC
	ldr r0, _020F6014 ; =0x02111D3C
	ldr r1, _020F6018 ; =0x02111D4C
	mov r2, r6
	bl FUN_ov17_0210dca0
	mov r0, r6
	bl FUN_ov17_0210e710
	cmp r0, #0
	beq _020F5FA8
	ldr r0, [r4]
	add r0, r0, #0x100
	ldrsb r0, [r0, #0x1e]
	cmp r0, #0x2f
	addne sp, sp, #8
	ldmnefd sp!, {r4, r5, r6, r7, r8, pc}
	bl FUN_ov17_020f6034
	ldr r0, [r4]
	mov r1, #0x2f
	strb r1, [r0, #0x121]
	bl FUN_ov17_020f68d0
	add sp, sp, #8
	ldmfd sp!, {r4, r5, r6, r7, r8, pc}
_020F5FA8:
	ldr r0, _020F602C ; =0x02111D40
	ldr r1, _020F6030 ; =0x02111D50
	mov r2, r6
	bl FUN_ov17_0210dca0
	mov r0, r6
	bl FUN_ov17_0210e710
	cmp r0, #0
	addeq sp, sp, #8
	ldmeqfd sp!, {r4, r5, r6, r7, r8, pc}
	ldr r0, [r4]
	add r0, r0, #0x100
	ldrsb r0, [r0, #0x1e]
	cmp r0, #0x30
	addne sp, sp, #8
	ldmnefd sp!, {r4, r5, r6, r7, r8, pc}
	bl FUN_ov17_020f6064
	ldr r0, [r4]
	mov r1, #0x30
	strb r1, [r0, #0x121]
	bl FUN_ov17_020f68d0
	add sp, sp, #8
	ldmfd sp!, {r4, r5, r6, r7, r8, pc}
_020F6000: .word 0x021161BC
_020F6004: .word 0x021126F8
_020F6008: .word 0x02111D74
_020F600C: .word 0x02111D2A
_020F6010: .word 0x02112AD8
_020F6014: .word 0x02111D3C
_020F6018: .word 0x02111D4C
_020F601C: .word 0x02111D2E
_020F6020: .word 0x02111D34
_020F6024: .word 0x02111D26
_020F6028: .word 0x02111D1A
_020F602C: .word 0x02111D40
_020F6030: .word 0x02111D50
	arm_func_end FUN_ov17_020f5d88

	arm_func_start FUN_ov17_020f6034
FUN_ov17_020f6034: ; 0x020F6034
	stmfd sp!, {r3, lr}
	ldr r0, _020F6060 ; =0x021161BC
	ldr r0, [r0]
	ldrb r0, [r0, #0x11d]
	cmp r0, #2
	moveq r0, #0
	movne r0, #2
	bl FUN_ov17_020f6784
	mov r0, #1
	bl FUN_ov17_02107c40
	ldmfd sp!, {r3, pc}
_020F6060: .word 0x021161BC
	arm_func_end FUN_ov17_020f6034

	arm_func_start FUN_ov17_020f6064
FUN_ov17_020f6064: ; 0x020F6064
	stmfd sp!, {r3, lr}
	ldr r0, _020F6090 ; =0x021161BC
	ldr r0, [r0]
	ldrb r0, [r0, #0x11d]
	cmp r0, #1
	movne r0, #1
	moveq r0, #0
	bl FUN_ov17_020f6784
	mov r0, #1
	bl FUN_ov17_02107c40
	ldmfd sp!, {r3, pc}
_020F6090: .word 0x021161BC
	arm_func_end FUN_ov17_020f6064

	arm_func_start FUN_ov17_020f6094
FUN_ov17_020f6094: ; 0x020F6094
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	sub sp, sp, #8
	ldr r0, _020F625C ; =0x021126F8
	bl FUN_ov17_0210e578
	cmp r0, #0
	beq _020F623C
	ldr r7, _020F6260 ; =0x02111D74
	ldr r6, _020F6264 ; =0x02111D2A
	mov r4, #0
	add r5, sp, #0
_020F60BC:
	mov r1, r6
	mov r2, r5
	add r0, r7, r4, lsl #2
	bl FUN_ov17_0210dca0
	mov r0, r5
	bl FUN_ov17_0210e578
	cmp r0, #0
	beq _020F60FC
	ldr r0, _020F6268 ; =0x021161BC
	ldr r0, [r0]
	add r0, r0, #0x100
	ldrsb r0, [r0, #0x1e]
	cmp r0, r4
	bne _020F623C
	mov r0, r4
	b _020F6240
_020F60FC:
	add r4, r4, #1
	cmp r4, #0x2f
	blt _020F60BC
	ldr r7, _020F626C ; =0x02111D3C
	ldr r6, _020F6270 ; =0x02111D4C
	mov r4, #2
	add r5, sp, #0
_020F6118:
	mov r2, r5
	add r0, r7, r4, lsl #2
	add r1, r6, r4, lsl #2
	bl FUN_ov17_0210dca0
	mov r0, r5
	bl FUN_ov17_0210e578
	cmp r0, #0
	beq _020F61D4
	ldr r5, _020F6268 ; =0x021161BC
	add r0, r4, #0x2f
	ldr r1, [r5]
	add r1, r1, #0x100
	ldrsb r1, [r1, #0x1e]
	cmp r1, r0
	bne _020F623C
	bl FUN_ov17_020f627c
	cmp r4, #3
	addne sp, sp, #8
	ldmnefd sp!, {r3, r4, r5, r6, r7, pc}
	ldr r1, [r5]
	ldrb r0, [r1, #0x122]
	add r0, r0, #1
	strb r0, [r1, #0x122]
	ldr r1, [r5]
	ldrb r0, [r1, #0x122]
	cmp r0, #0x28
	addlo sp, sp, #8
	ldmlofd sp!, {r3, r4, r5, r6, r7, pc}
	ldrb r0, [r1, #0x123]
	cmp r0, #0
	bne _020F61B4
	mov r4, #9
	mov r0, r4
	bl FUN_ov17_02107c40
	ldr r0, [r5]
	sub r1, r4, #0xa
	strb r1, [r0, #0x11e]
	add sp, sp, #8
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_020F61B4:
	mov r0, #0x80
	strb r0, [r1, #0x11c]
	ldr r1, [r5]
	add sp, sp, #8
	ldrb r0, [r1, #0x122]
	sub r0, r0, #7
	strb r0, [r1, #0x122]
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_020F61D4:
	add r4, r4, #1
	cmp r4, #4
	blt _020F6118
	ldr r6, _020F6274 ; =0x02111D34
	ldr r5, _020F6278 ; =0x02111D26
	mov r7, #0
	add r4, sp, #0
_020F61F0:
	mov r1, r5
	mov r2, r4
	add r0, r6, r7, lsl #2
	bl FUN_ov17_0210dca0
	mov r0, r4
	bl FUN_ov17_0210e578
	cmp r0, #0
	beq _020F6230
	ldr r1, _020F6268 ; =0x021161BC
	add r0, r7, #0x33
	ldr r1, [r1]
	add r1, r1, #0x100
	ldrsb r1, [r1, #0x1e]
	cmp r1, r0
	bne _020F623C
	b _020F6240
_020F6230:
	add r7, r7, #1
	cmp r7, #2
	blt _020F61F0
_020F623C:
	mvn r0, #0
_020F6240:
	bl FUN_ov17_020f627c
	ldr r0, _020F6268 ; =0x021161BC
	mov r1, #0
	ldr r0, [r0]
	strb r1, [r0, #0x122]
	add sp, sp, #8
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_020F625C: .word 0x021126F8
_020F6260: .word 0x02111D74
_020F6264: .word 0x02111D2A
_020F6268: .word 0x021161BC
_020F626C: .word 0x02111D3C
_020F6270: .word 0x02111D4C
_020F6274: .word 0x02111D34
_020F6278: .word 0x02111D26
	arm_func_end FUN_ov17_020f6094

	arm_func_start FUN_ov17_020f627c
FUN_ov17_020f627c: ; 0x020F627C
	stmfd sp!, {r3, r4, r5, lr}
	ldr r5, _020F62C4 ; =0x021161BC
	mov r4, r0
	ldr r1, [r5]
	add r1, r1, #0x100
	ldrsb r1, [r1, #0x1f]
	cmp r4, r1
	ldmeqfd sp!, {r3, r4, r5, pc}
	mov r1, #1
	bl FUN_ov17_020f6808
	ldr r0, [r5]
	mov r1, #0
	add r0, r0, #0x100
	ldrsb r0, [r0, #0x1f]
	bl FUN_ov17_020f6808
	ldr r0, [r5]
	strb r4, [r0, #0x11f]
	ldmfd sp!, {r3, r4, r5, pc}
_020F62C4: .word 0x021161BC
	arm_func_end FUN_ov17_020f627c

	arm_func_start FUN_ov17_020f62c8
FUN_ov17_020f62c8: ; 0x020F62C8
	stmfd sp!, {r4, lr}
	mov r0, #0x20
	bl FUN_ov17_0210e4f8
	cmp r0, #0
	beq _020F62E4
	mov r0, #0
	bl FUN_ov17_020f69ac
_020F62E4:
	mov r0, #0x40
	bl FUN_ov17_0210e4f8
	cmp r0, #0
	beq _020F62FC
	mov r0, #1
	bl FUN_ov17_020f69ac
_020F62FC:
	mov r0, #0x10
	bl FUN_ov17_0210e4f8
	cmp r0, #0
	beq _020F6314
	mov r0, #2
	bl FUN_ov17_020f69ac
_020F6314:
	mov r0, #0x80
	bl FUN_ov17_0210e4f8
	cmp r0, #0
	beq _020F632C
	mov r0, #3
	bl FUN_ov17_020f69ac
_020F632C:
	mov r0, #1
	bl FUN_ov17_0210e4b8
	cmp r0, #0
	beq _020F6444
	ldr r2, _020F64E4 ; =0x021161BC
	ldr r0, [r2]
	add r1, r0, #0x100
	ldrsb r4, [r1, #0x21]
	cmp r4, #0x2f
	bge _020F639C
	ldrb r1, [r0, #0x124]
	cmp r1, #0
	bne _020F636C
	mov r0, #9
	bl FUN_ov17_02107c40
	ldmfd sp!, {r4, pc}
_020F636C:
	ldrb r3, [r0, #0x11d]
	ldr r1, _020F64E8 ; =0x02112AD8
	ldr r1, [r1, r3, lsl #2]
	ldrb r1, [r1, r4]
	strb r1, [r0, #0x11c]
	ldr r0, [r2]
	ldrb r0, [r0, #0x11d]
	cmp r0, #1
	ldmnefd sp!, {r4, pc}
	mov r0, #0
	bl FUN_ov17_020f6784
	ldmfd sp!, {r4, pc}
_020F639C:
	sub r1, r4, #0x2f
	cmp r1, #4
	bge _020F6434
	cmp r1, #3
	addls pc, pc, r1, lsl #2
	b _020F6404
_020F63B4: ; jump table
	b _020F63C4 ; case 0
	b _020F63CC ; case 1
	b _020F63D4 ; case 2
	b _020F63EC ; case 3
_020F63C4:
	bl FUN_ov17_020f6034
	ldmfd sp!, {r4, pc}
_020F63CC:
	bl FUN_ov17_020f6064
	ldmfd sp!, {r4, pc}
_020F63D4:
	ldrb r1, [r0, #0x124]
	cmp r1, #0
	bne _020F6404
	mov r0, #9
	bl FUN_ov17_02107c40
	ldmfd sp!, {r4, pc}
_020F63EC:
	ldrb r1, [r0, #0x123]
	cmp r1, #0
	bne _020F6404
	mov r0, #9
	bl FUN_ov17_02107c40
	ldmfd sp!, {r4, pc}
_020F6404:
	ldrb r0, [r0, #0x11d]
	cmp r0, #1
	bne _020F6418
	mov r0, #0
	bl FUN_ov17_020f6784
_020F6418:
	ldr r1, _020F64EC ; =0x02111D2E
	sub r2, r4, #0x2f
	ldr r0, _020F64E4 ; =0x021161BC
	ldrb r1, [r1, r2]
	ldr r0, [r0]
	strb r1, [r0, #0x11c]
	ldmfd sp!, {r4, pc}
_020F6434:
	ldr r1, _020F64F0 ; =0x02111D1A
	sub r2, r4, #0x33
	ldrb r1, [r1, r2]
	strb r1, [r0, #0x11c]
_020F6444:
	mov r4, #2
	mov r0, r4
	bl FUN_ov17_0210e4f8
	cmp r0, #0
	beq _020F649C
	ldr r4, _020F64E4 ; =0x021161BC
	ldr r1, [r4]
	ldrb r0, [r1, #0x123]
	cmp r0, #0
	bne _020F6490
	ldrb r0, [r1, #0x125]
	cmp r0, #0
	ldmnefd sp!, {r4, pc}
	mov r0, #9
	bl FUN_ov17_02107c40
	ldr r0, [r4]
	mov r1, #1
	strb r1, [r0, #0x125]
	ldmfd sp!, {r4, pc}
_020F6490:
	mov r0, #0x80
	strb r0, [r1, #0x11c]
	b _020F64B8
_020F649C:
	mov r0, r4
	bl FUN_ov17_0210e538
	cmp r0, #0
	ldrne r0, _020F64E4 ; =0x021161BC
	movne r1, #0
	ldrne r0, [r0]
	strneb r1, [r0, #0x125]
_020F64B8:
	mov r0, #0x400
	bl FUN_ov17_0210e4b8
	cmp r0, #0
	beq _020F64CC
	bl FUN_ov17_020f6034
_020F64CC:
	mov r0, #0x800
	bl FUN_ov17_0210e4b8
	cmp r0, #0
	ldmeqfd sp!, {r4, pc}
	bl FUN_ov17_020f6064
	ldmfd sp!, {r4, pc}
_020F64E4: .word 0x021161BC
_020F64E8: .word 0x02112AD8
_020F64EC: .word 0x02111D2E
_020F64F0: .word 0x02111D1A
	arm_func_end FUN_ov17_020f62c8

	arm_func_start FUN_ov17_020f64f4
FUN_ov17_020f64f4: ; 0x020F64F4
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, lr}
	sub sp, sp, #0x18
	ldr r4, _020F6760 ; =0x02111D64
	ldr lr, _020F6764 ; =0x02111D6C
	ldrb r5, [r4, #4]
	ldrb r9, [r4]
	ldrb r8, [r4, #1]
	strb r5, [sp, #0x16]
	mov r5, r1
	mov r1, #0xc
	mul r1, r5, r1
	ldrb r7, [r4, #2]
	ldrb r6, [r4, #3]
	strb r9, [sp, #0x12]
	str r1, [sp, #4]
	ldrb r12, [lr]
	ldrb r11, [lr, #1]
	ldrb r4, [lr, #2]
	ldrb r10, [lr, #3]
	ldrb r9, [lr, #4]
	ldr r3, _020F6768 ; =0x02111D5C
	strb r8, [sp, #0x13]
	strb r7, [sp, #0x14]
	strb r6, [sp, #0x15]
	add r1, sp, #0x12
	ldrb lr, [r3]
	ldrb r8, [r3, #1]
	ldrb r7, [r3, #2]
	ldrb r6, [r3, #3]
	ldrb r3, [r3, #4]
	ldrb r1, [r1, r5]
	strb r12, [sp, #0xd]
	strb r4, [sp, #0xf]
	strb lr, [sp, #8]
	strb r11, [sp, #0xe]
	mov r4, r2
	ldr r12, [sp, #4]
	strb r10, [sp, #0x10]
	strb r9, [sp, #0x11]
	strb r8, [sp, #9]
	strb r7, [sp, #0xa]
	strb r6, [sp, #0xb]
	strb r3, [sp, #0xc]
	cmp r1, #0
	mov lr, #0
	ble _020F661C
	add r1, sp, #0x12
	ldrb r9, [r1, r5]
	ldr r1, _020F676C ; =0x02111D74
	ldr r8, _020F6770 ; =0x021161BC
	ldr r11, _020F6774 ; =0xC1FFFCFF
	ldr r7, _020F6778 ; =0xFE00FF00
	and r6, r4, #0xff
_020F65C8:
	ldr r2, [r8]
	mov r3, r12, lsl #2
	add r2, r2, r12, lsl #2
	ldr r2, [r2, #0x30]
	ldrh r3, [r1, r3]
	ldr r10, [r2]
	add lr, lr, #1
	and r10, r10, r11
	str r10, [r2]
	mov r2, r3, lsl #0x17
	cmp lr, r9
	ldr r3, [r8]
	add r3, r3, r12, lsl #2
	ldr r3, [r3, #0x30]
	add r12, r12, #1
	ldr r10, [r3]
	and r10, r10, r7
	orr r10, r10, r6
	orr r2, r10, r2, lsr #7
	str r2, [r3]
	blt _020F65C8
_020F661C:
	cmp r5, #4
	bge _020F665C
	ldr r1, _020F6770 ; =0x021161BC
	ldr r3, _020F676C ; =0x02111D74
	ldr r6, [r1]
	ldr r1, [sp, #4]
	mov r2, #2
	mov r1, r1, lsl #2
	str r2, [sp]
	add r0, r6, r0, lsl #4
	add r2, r6, r5, lsl #2
	ldrh r1, [r3, r1]
	ldr r3, [r2, #0x104]
	ldr r0, [r0, r5, lsl #2]
	mov r2, r4
	bl FUN_ov17_0210dbbc
_020F665C:
	add r0, r5, #3
	mov r1, #4
	bl FUN_020096f8
	add r7, sp, #0xd
	ldrb r1, [r7, r5]
	mov r6, #0
	cmp r1, #0
	ble _020F66E4
	ldr r2, _020F677C ; =0x02111D3C
	mov r1, r0, lsl #2
	ldrh r0, [r2, r1]
	ldrb r10, [r7, r5]
	ldr r9, _020F6770 ; =0x021161BC
	ldr r7, _020F6774 ; =0xC1FFFCFF
	ldr r8, _020F6778 ; =0xFE00FF00
	and r3, r4, #0xff
	mov r2, r0, lsl #0x17
_020F66A0:
	ldr r0, [r9]
	add r6, r6, #1
	add r0, r1, r0
	ldr r11, [r0, #0xec]
	cmp r6, r10
	ldr r0, [r11]
	and r0, r0, r7
	str r0, [r11]
	ldr r0, [r9]
	add r0, r1, r0
	ldr r0, [r0, #0xec]
	ldr r11, [r0]
	and r11, r11, r8
	orr r11, r11, r3
	orr r11, r11, r2, lsr #7
	str r11, [r0]
	blt _020F66A0
_020F66E4:
	add r1, sp, #8
	ldrb r0, [r1, r5]
	mov r7, #0
	cmp r0, #0
	addle sp, sp, #0x18
	ldmlefd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
	ldr r10, _020F6780 ; =0x02111D34
	ldr r8, _020F6770 ; =0x021161BC
	mov r9, r0
	mvn r6, #0
	mov r5, r7
_020F6710:
	ldr r0, [r8]
	mov r1, r6
	add r0, r0, r7, lsl #2
	ldr r0, [r0, #0xfc]
	mov r2, r5
	mov r3, r5
	bl FUN_ov17_0210cc88
	ldr r0, [r8]
	mov r1, r7, lsl #2
	add r0, r0, r7, lsl #2
	ldrh r2, [r10, r1]
	ldr r0, [r0, #0xfc]
	mov r1, r6
	mov r3, r4
	bl FUN_ov17_0210cdac
	add r7, r7, #1
	cmp r7, r9
	blt _020F6710
	add sp, sp, #0x18
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_020F6760: .word 0x02111D64
_020F6764: .word 0x02111D6C
_020F6768: .word 0x02111D5C
_020F676C: .word 0x02111D74
_020F6770: .word 0x021161BC
_020F6774: .word 0xC1FFFCFF
_020F6778: .word 0xFE00FF00
_020F677C: .word 0x02111D3C
_020F6780: .word 0x02111D34
	arm_func_end FUN_ov17_020f64f4

	arm_func_start FUN_ov17_020f6784
FUN_ov17_020f6784: ; 0x020F6784
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, lr}
	ldr r1, _020F6800 ; =0x021161BC
	mov r5, #0
	ldr r1, [r1]
	mov r7, r0
	ldr r9, _020F6804 ; =0x02111D74
	mov r6, r5
	mov r4, r5
	strb r7, [r1, #0x11d]
	mov r8, #0xc
_020F67AC:
	mul r0, r4, r8
	add r0, r9, r0, lsl #2
	ldrh r2, [r0, #2]
	mov r0, r7
	mov r1, r4
	bl FUN_ov17_020f64f4
	add r4, r4, #1
	cmp r4, #4
	blt _020F67AC
	cmp r7, #2
	moveq r5, #1
	beq _020F67E4
	cmp r7, #1
	moveq r6, #1
_020F67E4:
	mov r1, r5
	mov r0, #0x2f
	bl FUN_ov17_020f6808
	mov r1, r6
	mov r0, #0x30
	bl FUN_ov17_020f6808
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
_020F6800: .word 0x021161BC
_020F6804: .word 0x02111D74
	arm_func_end FUN_ov17_020f6784

	arm_func_start FUN_ov17_020f6808
FUN_ov17_020f6808: ; 0x020F6808
	stmfd sp!, {r3, lr}
	cmp r0, #0
	ldmltfd sp!, {r3, pc}
	cmp r0, #0x2f
	bge _020F6854
	ldr r2, _020F68C4 ; =0x021161BC
	ldr r3, _020F68C8 ; =0x02111D14
	ldr r2, [r2]
	ldrb r1, [r3, r1]
	add r0, r2, r0, lsl #2
	ldr r2, [r0, #0x30]
	ldr r0, [r2]
	bic r0, r0, #0xc00
	str r0, [r2]
	ldrh r0, [r2, #4]
	bic r0, r0, #0xf000
	orr r0, r0, r1, lsl #12
	strh r0, [r2, #4]
	ldmfd sp!, {r3, pc}
_020F6854:
	sub r12, r0, #0x2f
	cmp r12, #4
	bge _020F6898
	ldr r0, _020F68C4 ; =0x021161BC
	ldr r2, _020F68C8 ; =0x02111D14
	ldr r3, [r0]
	ldrb r0, [r2, r1]
	add r1, r3, r12, lsl #2
	ldr r2, [r1, #0xec]
	ldr r1, [r2]
	bic r1, r1, #0xc00
	str r1, [r2]
	ldrh r1, [r2, #4]
	bic r1, r1, #0xf000
	orr r0, r1, r0, lsl #12
	strh r0, [r2, #4]
	ldmfd sp!, {r3, pc}
_020F6898:
	ldr r2, _020F68C4 ; =0x021161BC
	ldr r3, _020F68CC ; =0x02111D16
	ldr r2, [r2]
	sub r0, r0, #0x33
	add r0, r2, r0, lsl #2
	ldrb r3, [r3, r1]
	ldr r0, [r0, #0xfc]
	mvn r1, #0
	mov r2, #0
	bl FUN_ov17_0210cd2c
	ldmfd sp!, {r3, pc}
_020F68C4: .word 0x021161BC
_020F68C8: .word 0x02111D14
_020F68CC: .word 0x02111D16
	arm_func_end FUN_ov17_020f6808

	arm_func_start FUN_ov17_020f68d0
FUN_ov17_020f68d0: ; 0x020F68D0
	stmfd sp!, {r3, r4, r5, lr}
	ldr r0, _020F69A0 ; =0x021161BC
	ldr r1, [r0]
	add r0, r1, #0x100
	ldrsb r0, [r0, #0x21]
	sub r0, r0, #0x2f
	cmp r0, #5
	addls pc, pc, r0, lsl #2
	b _020F6930
_020F68F4: ; jump table
	b _020F690C ; case 0
	b _020F6914 ; case 1
	b _020F691C ; case 2
	b _020F6924 ; case 3
	b _020F6928 ; case 4
	b _020F6928 ; case 5
_020F690C:
	mov r4, #0x42
	b _020F6934
_020F6914:
	mov r4, #0x41
	b _020F6934
_020F691C:
	mov r4, #0x43
	b _020F6934
_020F6924:
	b _020F6914
_020F6928:
	mov r4, #0x45
	b _020F6934
_020F6930:
	mov r4, #0x40
_020F6934:
	mov r5, #0
	ldr r0, [r1, #0x114]
	mov r1, r5
	bl FUN_ov17_0210cc74
	mov r2, r0
	mov r0, r5
	mov r1, r4
	bl FUN_ov17_0210cf68
	ldr r4, _020F69A0 ; =0x021161BC
	sub r5, r5, #1
	ldr r0, [r4]
	mov r1, r5
	ldr r0, [r0, #0x114]
	mov r2, #2
	bl FUN_ov17_0210ce84
	ldr r2, [r4]
	mov r1, r5
	add r0, r2, #0x100
	ldrsb r3, [r0, #0x21]
	ldr r0, [r2, #0x114]
	ldr r2, _020F69A4 ; =0x02111E30
	mov r4, r3, lsl #2
	ldrh r2, [r2, r4]
	ldr r3, _020F69A8 ; =0x02111E32
	ldrh r3, [r3, r4]
	bl FUN_ov17_0210cdac
	ldmfd sp!, {r3, r4, r5, pc}
_020F69A0: .word 0x021161BC
_020F69A4: .word 0x02111E30
_020F69A8: .word 0x02111E32
	arm_func_end FUN_ov17_020f68d0

	arm_func_start FUN_ov17_020f69ac
FUN_ov17_020f69ac: ; 0x020F69AC
	stmfd sp!, {r3, lr}
	ldr r2, _020F6D80 ; =0x021161BC
	ldr r3, _020F6D84 ; =0x02111F04
	ldr r12, [r2]
	add r1, r12, #0x100
	ldrsb lr, [r1, #0x21]
	add r1, r3, lr, lsl #2
	ldrsb r1, [r0, r1]
	strb r1, [r12, #0x121]
	ldr r1, [r2]
	add r2, r1, #0x100
	ldrsb r3, [r2, #0x21]
	cmp r3, #0x2e
	cmpeq r0, #3
	streqb lr, [r1, #0x120]
	beq _020F6D70
	cmp r3, #0x33
	bne _020F6A04
	cmp r0, #1
	cmpne r0, #3
	streqb lr, [r1, #0x120]
	beq _020F6D70
_020F6A04:
	cmp r3, #0x34
	bne _020F6A28
	cmp r0, #1
	beq _020F6A1C
	cmp r0, #3
	bne _020F6A28
_020F6A1C:
	cmp lr, #0x2e
	strneb lr, [r1, #0x120]
	b _020F6D70
_020F6A28:
	mvn r2, #0
	cmp r3, r2
	bne _020F6A58
	add r0, r1, #0x100
	ldrsb r0, [r0, #0x20]
	cmp r0, #0x23
	cmpne r0, #0x32
	moveq r0, #0x23
	streqb r0, [r1, #0x121]
	movne r0, #0x22
	strneb r0, [r1, #0x121]
	b _020F6D70
_020F6A58:
	sub r0, r2, #1
	cmp r3, r0
	bne _020F6B00
	add r0, r1, #0x100
	ldrsb r0, [r0, #0x20]
	cmp r0, #0x26
	bgt _020F6AB0
	bge _020F6AE0
	cmp r0, #5
	bgt _020F6AA4
	cmp r0, #0
	addge pc, pc, r0, lsl #2
	b _020F6AF8
_020F6A8C: ; jump table
	b _020F6AD0 ; case 0
	b _020F6AD8 ; case 1
	b _020F6AF8 ; case 2
	b _020F6AE0 ; case 3
	b _020F6AE8 ; case 4
	b _020F6AF0 ; case 5
_020F6AA4:
	cmp r0, #0x24
	beq _020F6AD8
	b _020F6AF8
_020F6AB0:
	cmp r0, #0x28
	bgt _020F6AC8
	bge _020F6AF0
	cmp r0, #0x27
	beq _020F6AE8
	b _020F6AF8
_020F6AC8:
	cmp r0, #0x31
	bne _020F6AF8
_020F6AD0:
	mov r0, #0x31
	b _020F6D6C
_020F6AD8:
	mov r0, #0x24
	b _020F6D6C
_020F6AE0:
	mov r0, #0x26
	b _020F6D6C
_020F6AE8:
	mov r0, #0x27
	b _020F6D6C
_020F6AF0:
	mov r0, #0x28
	b _020F6D6C
_020F6AF8:
	mov r0, #0x25
	b _020F6D6C
_020F6B00:
	sub r0, r2, #2
	cmp r3, r0
	bne _020F6BE0
	add r0, r1, #0x100
	ldrsb r0, [r0, #0x20]
	cmp r0, #0x23
	bgt _020F6B70
	bge _020F6BD0
	cmp r0, #0xb
	bgt _020F6B64
	cmp r0, #0
	addge pc, pc, r0, lsl #2
	b _020F6BD8
_020F6B34: ; jump table
	b _020F6BD8 ; case 0
	b _020F6BD8 ; case 1
	b _020F6BD8 ; case 2
	b _020F6BD8 ; case 3
	b _020F6BD8 ; case 4
	b _020F6BD8 ; case 5
	b _020F6BB0 ; case 6
	b _020F6BB8 ; case 7
	b _020F6BD8 ; case 8
	b _020F6BC0 ; case 9
	b _020F6BC8 ; case 10
	b _020F6BD0 ; case 11
_020F6B64:
	cmp r0, #0x22
	beq _020F6BD0
	b _020F6BD8
_020F6B70:
	cmp r0, #0x2a
	bgt _020F6B88
	bge _020F6BB8
	cmp r0, #0x29
	beq _020F6BB0
	b _020F6BD8
_020F6B88:
	cmp r0, #0x32
	bgt _020F6BD8
	cmp r0, #0x2c
	blt _020F6BD8
	beq _020F6BC0
	cmp r0, #0x2d
	beq _020F6BC8
	cmp r0, #0x32
	beq _020F6BD0
	b _020F6BD8
_020F6BB0:
	mov r0, #0x29
	b _020F6D6C
_020F6BB8:
	mov r0, #0x2a
	b _020F6D6C
_020F6BC0:
	mov r0, #0x2c
	b _020F6D6C
_020F6BC8:
	mov r0, #0x2d
	b _020F6D6C
_020F6BD0:
	mov r0, #0x2e
	b _020F6D6C
_020F6BD8:
	mov r0, #0x2b
	b _020F6D6C
_020F6BE0:
	sub r0, r2, #3
	cmp r3, r0
	bne _020F6C88
	add r0, r1, #0x100
	ldrsb r0, [r0, #0x20]
	cmp r0, #0x26
	bgt _020F6C38
	bge _020F6C68
	cmp r0, #5
	bgt _020F6C2C
	cmp r0, #0
	addge pc, pc, r0, lsl #2
	b _020F6C80
_020F6C14: ; jump table
	b _020F6C58 ; case 0
	b _020F6C60 ; case 1
	b _020F6C80 ; case 2
	b _020F6C68 ; case 3
	b _020F6C70 ; case 4
	b _020F6C78 ; case 5
_020F6C2C:
	cmp r0, #0x24
	beq _020F6C60
	b _020F6C80
_020F6C38:
	cmp r0, #0x28
	bgt _020F6C50
	bge _020F6C78
	cmp r0, #0x27
	beq _020F6C70
	b _020F6C80
_020F6C50:
	cmp r0, #0x31
	bne _020F6C80
_020F6C58:
	mov r0, #0
	b _020F6D6C
_020F6C60:
	mov r0, #1
	b _020F6D6C
_020F6C68:
	mov r0, #3
	b _020F6D6C
_020F6C70:
	mov r0, #4
	b _020F6D6C
_020F6C78:
	mov r0, #5
	b _020F6D6C
_020F6C80:
	mov r0, #2
	b _020F6D6C
_020F6C88:
	sub r0, r2, #4
	cmp r3, r0
	bne _020F6D70
	add r0, r1, #0x100
	ldrsb r0, [r0, #0x20]
	cmp r0, #0x23
	bgt _020F6CF8
	bge _020F6D60
	cmp r0, #0xb
	bgt _020F6CEC
	cmp r0, #0
	addge pc, pc, r0, lsl #2
	b _020F6D68
_020F6CBC: ; jump table
	b _020F6D68 ; case 0
	b _020F6D68 ; case 1
	b _020F6D68 ; case 2
	b _020F6D68 ; case 3
	b _020F6D68 ; case 4
	b _020F6D68 ; case 5
	b _020F6D38 ; case 6
	b _020F6D40 ; case 7
	b _020F6D68 ; case 8
	b _020F6D48 ; case 9
	b _020F6D50 ; case 10
	b _020F6D58 ; case 11
_020F6CEC:
	cmp r0, #0x22
	beq _020F6D58
	b _020F6D68
_020F6CF8:
	cmp r0, #0x2a
	bgt _020F6D10
	bge _020F6D40
	cmp r0, #0x29
	beq _020F6D38
	b _020F6D68
_020F6D10:
	cmp r0, #0x32
	bgt _020F6D68
	cmp r0, #0x2c
	blt _020F6D68
	beq _020F6D48
	cmp r0, #0x2d
	beq _020F6D50
	cmp r0, #0x32
	beq _020F6D60
	b _020F6D68
_020F6D38:
	mov r0, #6
	b _020F6D6C
_020F6D40:
	mov r0, #7
	b _020F6D6C
_020F6D48:
	mov r0, #9
	b _020F6D6C
_020F6D50:
	mov r0, #0xa
	b _020F6D6C
_020F6D58:
	mov r0, #0xb
	b _020F6D6C
_020F6D60:
	mov r0, #0x32
	b _020F6D6C
_020F6D68:
	mov r0, #8
_020F6D6C:
	strb r0, [r1, #0x121]
_020F6D70:
	bl FUN_ov17_020f68d0
	mov r0, #8
	bl FUN_ov17_02107c40
	ldmfd sp!, {r3, pc}
_020F6D80: .word 0x021161BC
_020F6D84: .word 0x02111F04
	arm_func_end FUN_ov17_020f69ac

	arm_func_start FUN_ov17_020f6d88
FUN_ov17_020f6d88: ; 0x020F6D88
	stmfd sp!, {r3, r4, r5, lr}
	sub sp, sp, #8
	ldr r4, _020F6DE8 ; =0x021161BC
	mov r5, r0
	ldr r0, [r4]
	mov r1, #0
	ldr r0, [r0, #0xfc]
	bl FUN_ov17_0210cc74
	ldr r1, [r0]
	ldr r0, [r4]
	and r1, r1, #0xff
	add r4, r1, #0xc
	ldrb r0, [r0, #0x11d]
	mov r2, r4
	mov r1, #4
	bl FUN_ov17_020f64f4
	cmp r4, #0xc0
	addlt sp, sp, #8
	ldmltfd sp!, {r3, r4, r5, pc}
	ldr r1, _020F6DEC ; =FUN_ov17_020f6df0
	mov r0, r5
	bl FUN_ov17_0210f3b0
	add sp, sp, #8
	ldmfd sp!, {r3, r4, r5, pc}
_020F6DE8: .word 0x021161BC
_020F6DEC: .word FUN_ov17_020f6df0
	arm_func_end FUN_ov17_020f6d88

	arm_func_start FUN_ov17_020f6df0
FUN_ov17_020f6df0: ; 0x020F6DF0
	stmfd sp!, {r3, r4, r5, lr}
	sub sp, sp, #8
	ldr r1, _020F6E44 ; =0x021161BC
	mov r5, r0
	ldr r0, [r1]
	mov r1, #3
	ldr r2, [r0, #0xc0]
	ldrb r0, [r0, #0x11d]
	ldr r2, [r2]
	and r2, r2, #0xff
	add r4, r2, #0xc
	mov r2, r4
	bl FUN_ov17_020f64f4
	cmp r4, #0xc0
	addlt sp, sp, #8
	ldmltfd sp!, {r3, r4, r5, pc}
	ldr r1, _020F6E48 ; =FUN_ov17_020f6e4c
	mov r0, r5
	bl FUN_ov17_0210f3b0
	add sp, sp, #8
	ldmfd sp!, {r3, r4, r5, pc}
_020F6E44: .word 0x021161BC
_020F6E48: .word FUN_ov17_020f6e4c
	arm_func_end FUN_ov17_020f6df0

	arm_func_start FUN_ov17_020f6e4c
FUN_ov17_020f6e4c: ; 0x020F6E4C
	stmfd sp!, {r3, r4, r5, lr}
	sub sp, sp, #8
	ldr r1, _020F6EA0 ; =0x021161BC
	mov r5, r0
	ldr r0, [r1]
	mov r1, #2
	ldr r2, [r0, #0x90]
	ldrb r0, [r0, #0x11d]
	ldr r2, [r2]
	and r2, r2, #0xff
	add r4, r2, #0xc
	mov r2, r4
	bl FUN_ov17_020f64f4
	cmp r4, #0xc0
	addlt sp, sp, #8
	ldmltfd sp!, {r3, r4, r5, pc}
	ldr r1, _020F6EA4 ; =FUN_ov17_020f6ea8
	mov r0, r5
	bl FUN_ov17_0210f3b0
	add sp, sp, #8
	ldmfd sp!, {r3, r4, r5, pc}
_020F6EA0: .word 0x021161BC
_020F6EA4: .word FUN_ov17_020f6ea8
	arm_func_end FUN_ov17_020f6e4c

	arm_func_start FUN_ov17_020f6ea8
FUN_ov17_020f6ea8: ; 0x020F6EA8
	stmfd sp!, {r3, r4, r5, lr}
	sub sp, sp, #8
	ldr r1, _020F6EFC ; =0x021161BC
	mov r5, r0
	ldr r0, [r1]
	mov r1, #1
	ldr r2, [r0, #0x60]
	ldrb r0, [r0, #0x11d]
	ldr r2, [r2]
	and r2, r2, #0xff
	add r4, r2, #0xc
	mov r2, r4
	bl FUN_ov17_020f64f4
	cmp r4, #0xc0
	addlt sp, sp, #8
	ldmltfd sp!, {r3, r4, r5, pc}
	ldr r1, _020F6F00 ; =FUN_ov17_020f6f04
	mov r0, r5
	bl FUN_ov17_0210f3b0
	add sp, sp, #8
	ldmfd sp!, {r3, r4, r5, pc}
_020F6EFC: .word 0x021161BC
_020F6F00: .word FUN_ov17_020f6f04
	arm_func_end FUN_ov17_020f6ea8

	arm_func_start FUN_ov17_020f6f04
FUN_ov17_020f6f04: ; 0x020F6F04
	stmfd sp!, {r3, r4, r5, lr}
	sub sp, sp, #8
	ldr r1, _020F6F58 ; =0x021161BC
	mov r5, r0
	ldr r0, [r1]
	mov r1, #0
	ldr r2, [r0, #0x30]
	ldrb r0, [r0, #0x11d]
	ldr r2, [r2]
	and r2, r2, #0xff
	add r4, r2, #0xc
	mov r2, r4
	bl FUN_ov17_020f64f4
	cmp r4, #0xc0
	addlt sp, sp, #8
	ldmltfd sp!, {r3, r4, r5, pc}
	ldr r1, _020F6F5C ; =FUN_ov17_020f6f60
	mov r0, r5
	bl FUN_ov17_0210f3b0
	add sp, sp, #8
	ldmfd sp!, {r3, r4, r5, pc}
_020F6F58: .word 0x021161BC
_020F6F5C: .word FUN_ov17_020f6f60
	arm_func_end FUN_ov17_020f6f04

	arm_func_start FUN_ov17_020f6f60
FUN_ov17_020f6f60: ; 0x020F6F60
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	mov r5, #0
	mov r1, r0
	mov r0, r5
	mov r4, r5
	bl FUN_ov17_0210f3b8
	ldr r7, _020F7038 ; =0x021161BC
_020F6F7C:
	mov r6, r4
_020F6F80:
	ldr r0, [r7]
	add r0, r0, r5, lsl #4
	ldr r0, [r0, r6, lsl #2]
	bl FUN_ov17_0210d6c0
	cmp r5, #0
	bne _020F6FA8
	ldr r0, [r7]
	add r0, r0, r6, lsl #2
	ldr r0, [r0, #0x104]
	bl FUN_ov17_0210cbf4
_020F6FA8:
	add r6, r6, #1
	cmp r6, #4
	blt _020F6F80
	add r5, r5, #1
	cmp r5, #3
	blt _020F6F7C
	ldr r4, _020F7038 ; =0x021161BC
	mov r5, #0
_020F6FC8:
	ldr r0, [r4]
	add r0, r0, r5, lsl #2
	ldr r0, [r0, #0xfc]
	bl FUN_ov17_0210cbf4
	add r5, r5, #1
	cmp r5, #2
	blt _020F6FC8
	ldr r4, _020F7038 ; =0x021161BC
	mov r5, #0
_020F6FEC:
	ldr r0, [r4]
	add r0, r0, r5, lsl #2
	ldr r0, [r0, #0xec]
	bl FUN_ov17_0210ebcc
	add r5, r5, #1
	cmp r5, #4
	blt _020F6FEC
	ldr r4, _020F7038 ; =0x021161BC
	mov r5, #0
_020F7010:
	ldr r0, [r4]
	add r0, r0, r5, lsl #2
	ldr r0, [r0, #0x30]
	bl FUN_ov17_0210ebcc
	add r5, r5, #1
	cmp r5, #0x2f
	blt _020F7010
	ldr r0, _020F703C ; =0x021161BC
	bl FUN_ov17_0210e0cc
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_020F7038: .word 0x021161BC
_020F703C: .word 0x021161BC
	arm_func_end FUN_ov17_020f6f60

	arm_func_start FUN_ov17_020f7040
FUN_ov17_020f7040: ; 0x020F7040
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, lr}
	sub sp, sp, #0x20
	ldr r0, _020F7344 ; =0x021120DC
	mov r3, #0x1c
	ldrh r5, [r0]
	ldrh r4, [r0, #2]
	mov r2, #0x14
	mov r0, #0x6c
	mov r1, #4
	strh r5, [sp, #0x18]
	strh r4, [sp, #0x1a]
	strh r3, [sp, #0x1c]
	strh r2, [sp, #0x1e]
	bl FUN_ov17_0210e0a8
	ldr r8, _020F7348 ; =0x021161C0
	mov r5, #0
	mov r1, #0x1f
	str r0, [r8]
	strb r1, [r0, #0x60]
	ldr r0, [r8]
	mov r1, #1
	strb r5, [r0, #0x63]
	ldr r0, [r8]
	ldr r7, _020F734C ; =0xC1FFFCFF
	strb r1, [r0, #0x66]
	ldr r0, [r8]
	mov r6, r5
	strb r1, [r0, #0x67]
	ldr r0, [r8]
	mov r4, #0x36
	strb r1, [r0, #0x68]
_020F70BC:
	mov r0, r6
	mov r1, r4
	bl FUN_ov17_0210cffc
	ldr r1, [r8]
	add r1, r1, r5, lsl #2
	str r0, [r1, #0x10]
	ldr r0, [r8]
	add r0, r0, r5, lsl #2
	ldr r1, [r0, #0x10]
	ldr r0, [r1]
	and r0, r0, r7
	orr r0, r0, #0x200
	str r0, [r1]
	ldr r0, [r8]
	add r0, r0, r5, lsl #2
	ldr r1, [r0, #0x10]
	add r5, r5, #1
	ldrh r0, [r1, #4]
	cmp r5, #0xa
	bic r0, r0, #0xc00
	orr r0, r0, #0xc00
	strh r0, [r1, #4]
	blt _020F70BC
	ldr r4, _020F7350 ; =0x02111FDA
	ldr r7, _020F7348 ; =0x021161C0
	ldr r5, _020F734C ; =0xC1FFFCFF
	mov r9, #0
_020F7128:
	ldrb r1, [r4, r6]
	mov r0, r9
	bl FUN_ov17_0210cffc
	ldr r1, [r7]
	add r1, r1, r6, lsl #2
	str r0, [r1, #0x38]
	ldr r0, [r7]
	add r0, r0, r6, lsl #2
	ldr r1, [r0, #0x38]
	ldr r0, [r1]
	and r0, r0, r5
	orr r0, r0, #0x200
	str r0, [r1]
	ldr r0, [r7]
	add r0, r0, r6, lsl #2
	ldr r1, [r0, #0x38]
	add r6, r6, #1
	ldrh r0, [r1, #4]
	cmp r6, #2
	bic r0, r0, #0xc00
	orr r0, r0, #0xc00
	strh r0, [r1, #4]
	blt _020F7128
	ldr r8, _020F7354 ; =0x02111FDC
	ldr r4, _020F7348 ; =0x021161C0
	mov r10, #0
	mov r7, #1
	mvn r6, #0
	mov r5, #0x200
	mov r11, #3
_020F71A0:
	ldrb r1, [r8, r9]
	mov r0, r10
	mov r2, r7
	bl FUN_ov17_0210d028
	ldr r2, [r4]
	mov r1, r6
	add r2, r2, r9, lsl #2
	str r0, [r2, #0x40]
	ldr r0, [r4]
	mov r2, r5
	add r0, r0, r9, lsl #2
	ldr r0, [r0, #0x40]
	mov r3, r10
	bl FUN_ov17_0210cc88
	ldr r0, [r4]
	mov r1, r6
	add r0, r0, r9, lsl #2
	ldr r0, [r0, #0x40]
	mov r2, r11
	bl FUN_ov17_0210ce84
	add r9, r9, #1
	cmp r9, #2
	blt _020F71A0
	ldr r4, _020F7348 ; =0x021161C0
	strh r10, [sp, #0x12]
_020F7204:
	add r0, sp, #0x14
	mov r9, #0
	str r0, [sp]
	mov r0, r9
	mov r3, r9
	mov r1, #0xc
	mov r2, #4
	str r9, [sp, #4]
	bl FUN_ov17_0210d5e4
	ldr r1, [r4]
	ldr r7, _020F7358 ; =0x02112012
	strh r9, [sp, #0x18]
	str r0, [r1, r10, lsl #2]
	add r8, r10, r10, lsl #1
	mov r6, #2
	mov r5, #0x480
	add r11, sp, #0x10
_020F7248:
	mov r0, r8, lsl #1
	ldrh r2, [r7, r0]
	ldrh r0, [sp, #0x1e]
	ldrh r1, [sp, #0x18]
	strh r2, [sp, #0x10]
	stmia sp, {r0, r6}
	str r5, [sp, #8]
	str r11, [sp, #0xc]
	ldr r0, [r4]
	ldrh r2, [sp, #0x1a]
	ldrh r3, [sp, #0x1c]
	ldr r0, [r0, r10, lsl #2]
	bl FUN_ov17_0210daf0
	ldrh r0, [sp, #0x18]
	add r9, r9, #1
	cmp r9, #3
	add r0, r0, #0x20
	strh r0, [sp, #0x18]
	add r8, r8, #1
	blt _020F7248
	mov r5, #0
	ldr r1, [sp, #0x14]
	mov r0, r5
	mov r2, r5
	bl FUN_ov17_0210cab0
	ldr r7, _020F7348 ; =0x021161C0
	ldr r1, [r7]
	add r1, r1, r10, lsl #2
	add r10, r10, #1
	str r0, [r1, #0x48]
	cmp r10, #4
	blt _020F7204
	mov r4, #1
	mov r0, r5
	mov r2, r4
	mov r1, #0x44
	bl FUN_ov17_0210d028
	ldr r1, [r7]
	sub r4, r4, #2
	str r0, [r1, #0x58]
	ldr r0, [r7]
	mov r1, r4
	ldr r0, [r0, #0x58]
	mov r3, r5
	mov r2, #0x200
	bl FUN_ov17_0210cc88
	ldr r0, [r7]
	mov r1, r4
	ldr r0, [r0, #0x58]
	mov r2, r6
	bl FUN_ov17_0210ce84
	mov r0, r5
	ldr r1, _020F735C ; =FUN_ov17_020f73fc
	mov r2, r5
	mov r3, #0x78
	bl FUN_ov17_0210f314
	ldr r2, [r7]
	mov r1, #0xc0
	str r0, [r2, #0x5c]
	mov r0, r5
	bl FUN_ov17_020f7d58
	add sp, sp, #0x20
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_020F7344: .word 0x021120DC
_020F7348: .word 0x021161C0
_020F734C: .word 0xC1FFFCFF
_020F7350: .word 0x02111FDA
_020F7354: .word 0x02111FDC
_020F7358: .word 0x02112012
_020F735C: .word FUN_ov17_020f73fc
	arm_func_end FUN_ov17_020f7040

	arm_func_start FUN_ov17_020f7360
FUN_ov17_020f7360: ; 0x020F7360
	stmfd sp!, {r4, lr}
	ldr r4, _020F7388 ; =0x021161C0
	ldr r0, [r4]
	ldr r0, [r0, #0x58]
	bl FUN_ov17_0210cbf4
	ldr r0, [r4]
	ldr r1, _020F738C ; =FUN_ov17_020f81d8
	ldr r0, [r0, #0x5c]
	bl FUN_ov17_0210f3b0
	ldmfd sp!, {r4, pc}
_020F7388: .word 0x021161C0
_020F738C: .word FUN_ov17_020f81d8
	arm_func_end FUN_ov17_020f7360

	arm_func_start FUN_ov17_020f7390
FUN_ov17_020f7390: ; 0x020F7390
	ldr r0, _020F73A0 ; =0x021161C0
	ldr r0, [r0]
	ldrb r0, [r0, #0x60]
	bx lr
_020F73A0: .word 0x021161C0
	arm_func_end FUN_ov17_020f7390

	arm_func_start FUN_ov17_020f73a4
FUN_ov17_020f73a4: ; 0x020F73A4
	ldr r1, _020F73B4 ; =0x021161C0
	ldr r1, [r1]
	strb r0, [r1, #0x66]
	bx lr
_020F73B4: .word 0x021161C0
	arm_func_end FUN_ov17_020f73a4

	arm_func_start FUN_ov17_020f73b8
FUN_ov17_020f73b8: ; 0x020F73B8
	ldr r1, _020F73C8 ; =0x021161C0
	ldr r1, [r1]
	strb r0, [r1, #0x67]
	bx lr
_020F73C8: .word 0x021161C0
	arm_func_end FUN_ov17_020f73b8

	arm_func_start FUN_ov17_020f73cc
FUN_ov17_020f73cc: ; 0x020F73CC
	ldr r1, _020F73DC ; =0x021161C0
	ldr r1, [r1]
	strb r0, [r1, #0x68]
	bx lr
_020F73DC: .word 0x021161C0
	arm_func_end FUN_ov17_020f73cc

	arm_func_start FUN_ov17_020f73e0
FUN_ov17_020f73e0: ; 0x020F73E0
	ldr r0, _020F73F8 ; =0x021161C0
	ldr r0, [r0]
	cmp r0, #0
	movne r0, #1
	moveq r0, #0
	bx lr
_020F73F8: .word 0x021161C0
	arm_func_end FUN_ov17_020f73e0

	arm_func_start FUN_ov17_020f73fc
FUN_ov17_020f73fc: ; 0x020F73FC
	stmfd sp!, {r4, lr}
	sub sp, sp, #8
	ldr r1, _020F7460 ; =0x021161C0
	mov r4, r0
	ldr r0, [r1]
	ldr r0, [r0, #0x10]
	ldr r0, [r0]
	and r0, r0, #0xff
	sub r1, r0, #0xc
	cmp r1, #0x4c
	mov r0, #0
	ble _020F7438
	bl FUN_ov17_020f7d58
	add sp, sp, #8
	ldmfd sp!, {r4, pc}
_020F7438:
	mov r1, #0x4c
	bl FUN_ov17_020f7d58
	mov r0, #1
	mov r1, #0xc0
	bl FUN_ov17_020f7d58
	ldr r1, _020F7464 ; =FUN_ov17_020f7468
	mov r0, r4
	bl FUN_ov17_0210f3b0
	add sp, sp, #8
	ldmfd sp!, {r4, pc}
_020F7460: .word 0x021161C0
_020F7464: .word FUN_ov17_020f7468
	arm_func_end FUN_ov17_020f73fc

	arm_func_start FUN_ov17_020f7468
FUN_ov17_020f7468: ; 0x020F7468
	stmfd sp!, {r4, lr}
	sub sp, sp, #8
	ldr r1, _020F74CC ; =0x021161C0
	mov r4, r0
	ldr r0, [r1]
	ldr r0, [r0, #0x1c]
	ldr r0, [r0]
	and r0, r0, #0xff
	sub r1, r0, #0xc
	cmp r1, #0x63
	mov r0, #1
	ble _020F74A4
	bl FUN_ov17_020f7d58
	add sp, sp, #8
	ldmfd sp!, {r4, pc}
_020F74A4:
	mov r1, #0x63
	bl FUN_ov17_020f7d58
	mov r0, #2
	mov r1, #0xc0
	bl FUN_ov17_020f7d58
	ldr r1, _020F74D0 ; =FUN_ov17_020f74d4
	mov r0, r4
	bl FUN_ov17_0210f3b0
	add sp, sp, #8
	ldmfd sp!, {r4, pc}
_020F74CC: .word 0x021161C0
_020F74D0: .word FUN_ov17_020f74d4
	arm_func_end FUN_ov17_020f7468

	arm_func_start FUN_ov17_020f74d4
FUN_ov17_020f74d4: ; 0x020F74D4
	stmfd sp!, {r4, lr}
	sub sp, sp, #8
	ldr r1, _020F7538 ; =0x021161C0
	mov r4, r0
	ldr r0, [r1]
	ldr r0, [r0, #0x28]
	ldr r0, [r0]
	and r0, r0, #0xff
	sub r1, r0, #0xc
	cmp r1, #0x7a
	mov r0, #2
	ble _020F7510
	bl FUN_ov17_020f7d58
	add sp, sp, #8
	ldmfd sp!, {r4, pc}
_020F7510:
	mov r1, #0x7a
	bl FUN_ov17_020f7d58
	mov r0, #3
	mov r1, #0xc0
	bl FUN_ov17_020f7d58
	ldr r1, _020F753C ; =FUN_ov17_020f7540
	mov r0, r4
	bl FUN_ov17_0210f3b0
	add sp, sp, #8
	ldmfd sp!, {r4, pc}
_020F7538: .word 0x021161C0
_020F753C: .word FUN_ov17_020f7540
	arm_func_end FUN_ov17_020f74d4

	arm_func_start FUN_ov17_020f7540
FUN_ov17_020f7540: ; 0x020F7540
	stmfd sp!, {r4, lr}
	sub sp, sp, #8
	ldr r1, _020F75A4 ; =0x021161C0
	mov r4, r0
	ldr r0, [r1]
	ldr r0, [r0, #0x34]
	ldr r0, [r0]
	and r0, r0, #0xff
	sub r1, r0, #0xc
	cmp r1, #0x91
	mov r0, #3
	ble _020F757C
	bl FUN_ov17_020f7d58
	add sp, sp, #8
	ldmfd sp!, {r4, pc}
_020F757C:
	mov r1, #0x91
	bl FUN_ov17_020f7d58
	mov r0, #4
	mov r1, #0xc0
	bl FUN_ov17_020f7d58
	ldr r1, _020F75A8 ; =FUN_ov17_020f75ac
	mov r0, r4
	bl FUN_ov17_0210f3b0
	add sp, sp, #8
	ldmfd sp!, {r4, pc}
_020F75A4: .word 0x021161C0
_020F75A8: .word FUN_ov17_020f75ac
	arm_func_end FUN_ov17_020f7540

	arm_func_start FUN_ov17_020f75ac
FUN_ov17_020f75ac: ; 0x020F75AC
	stmfd sp!, {r4, lr}
	sub sp, sp, #8
	ldr r1, _020F7618 ; =0x021161C0
	mov r4, r0
	ldr r0, [r1]
	add r2, sp, #4
	ldr r0, [r0, #0x40]
	add r3, sp, #0
	mov r1, #0
	bl FUN_ov17_0210cee4
	ldr r0, [sp]
	sub r1, r0, #0xc
	str r1, [sp]
	cmp r1, #0xaa
	mov r0, #4
	ble _020F75F8
	bl FUN_ov17_020f7d58
	add sp, sp, #8
	ldmfd sp!, {r4, pc}
_020F75F8:
	mov r1, #0xaa
	bl FUN_ov17_020f7d58
	bl FUN_ov17_020f80a0
	ldr r1, _020F761C ; =FUN_ov17_020f7620
	mov r0, r4
	bl FUN_ov17_0210f3b0
	add sp, sp, #8
	ldmfd sp!, {r4, pc}
_020F7618: .word 0x021161C0
_020F761C: .word FUN_ov17_020f7620
	arm_func_end FUN_ov17_020f75ac

	arm_func_start FUN_ov17_020f7620
FUN_ov17_020f7620: ; 0x020F7620
	stmfd sp!, {r3, lr}
	bl FUN_ov17_020f7638
	bl FUN_ov17_020f77e8
	bl FUN_ov17_020f79a8
	bl FUN_ov17_020f7bc4
	ldmfd sp!, {r3, pc}
	arm_func_end FUN_ov17_020f7620

	arm_func_start FUN_ov17_020f7638
FUN_ov17_020f7638: ; 0x020F7638
	stmfd sp!, {r4, r5, r6, r7, r8, lr}
	sub sp, sp, #8
	ldr r0, _020F77C8 ; =0x021126F8
	ldr r5, _020F77CC ; =0x021161C0
	bl FUN_ov17_0210e600
	cmp r0, #0
	addeq sp, sp, #8
	ldmeqfd sp!, {r4, r5, r6, r7, r8, pc}
	ldr r0, [r5]
	mvn r1, #0
	ldr r8, _020F77D0 ; =0x0211202C
	ldr r7, _020F77D4 ; =0x02111FE6
	strb r1, [r0, #0x61]
	mov r4, #0
	add r6, sp, #0
_020F7674:
	mov r1, r7
	mov r2, r6
	add r0, r8, r4, lsl #2
	bl FUN_ov17_0210dca0
	mov r0, r6
	bl FUN_ov17_0210e600
	cmp r0, #0
	beq _020F76CC
	ldr r0, [r5]
	ldrb r0, [r0, #0x67]
	cmp r0, #0
	bne _020F76B4
	mov r0, #9
	bl FUN_ov17_02107c40
	add sp, sp, #8
	ldmfd sp!, {r4, r5, r6, r7, r8, pc}
_020F76B4:
	mov r0, #0
	bl FUN_ov17_02107c40
	ldr r0, [r5]
	add sp, sp, #8
	strb r4, [r0, #0x61]
	ldmfd sp!, {r4, r5, r6, r7, r8, pc}
_020F76CC:
	add r4, r4, #1
	cmp r4, #0xa
	blt _020F7674
	ldr r8, _020F77D8 ; =0x02111FF6
	ldr r7, _020F77DC ; =0x02111FEE
	mov r4, #0
	add r6, sp, #0
_020F76E8:
	mov r1, r7
	mov r2, r6
	add r0, r8, r4, lsl #2
	bl FUN_ov17_0210dca0
	mov r0, r6
	bl FUN_ov17_0210e600
	cmp r0, #0
	beq _020F775C
	cmp r4, #0
	ldreq r0, [r5]
	ldreqb r0, [r0, #0x66]
	cmpeq r0, #0
	beq _020F7730
	cmp r4, #1
	ldreq r0, [r5]
	ldreqb r0, [r0, #0x68]
	cmpeq r0, #0
	bne _020F7740
_020F7730:
	mov r0, #9
	bl FUN_ov17_02107c40
	add sp, sp, #8
	ldmfd sp!, {r4, r5, r6, r7, r8, pc}
_020F7740:
	mov r0, #0
	bl FUN_ov17_02107c40
	ldr r0, [r5]
	add r1, r4, #0xa
	strb r1, [r0, #0x61]
	add sp, sp, #8
	ldmfd sp!, {r4, r5, r6, r7, r8, pc}
_020F775C:
	add r4, r4, #1
	cmp r4, #2
	blt _020F76E8
	ldr r7, _020F77E0 ; =0x02111FFE
	ldr r6, _020F77E4 ; =0x02111FF2
	mov r8, #0
	add r4, sp, #0
_020F7778:
	mov r1, r6
	mov r2, r4
	add r0, r7, r8, lsl #2
	bl FUN_ov17_0210dca0
	mov r0, r4
	bl FUN_ov17_0210e600
	cmp r0, #0
	beq _020F77B4
	mov r0, #0
	bl FUN_ov17_02107c40
	ldr r0, [r5]
	add r1, r8, #0xc
	strb r1, [r0, #0x61]
	add sp, sp, #8
	ldmfd sp!, {r4, r5, r6, r7, r8, pc}
_020F77B4:
	add r8, r8, #1
	cmp r8, #2
	blt _020F7778
	add sp, sp, #8
	ldmfd sp!, {r4, r5, r6, r7, r8, pc}
_020F77C8: .word 0x021126F8
_020F77CC: .word 0x021161C0
_020F77D0: .word 0x0211202C
_020F77D4: .word 0x02111FE6
_020F77D8: .word 0x02111FF6
_020F77DC: .word 0x02111FEE
_020F77E0: .word 0x02111FFE
_020F77E4: .word 0x02111FF2
	arm_func_end FUN_ov17_020f7638

	arm_func_start FUN_ov17_020f77e8
FUN_ov17_020f77e8: ; 0x020F77E8
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	sub sp, sp, #8
	ldr r1, _020F797C ; =0x021161C0
	ldr r0, _020F7980 ; =0x021126F8
	ldr r1, [r1]
	mov r4, #0
	strb r4, [r1, #0x60]
	bl FUN_ov17_0210e710
	cmp r0, #0
	addeq sp, sp, #8
	ldmeqfd sp!, {r3, r4, r5, r6, r7, pc}
	ldr r7, _020F7984 ; =0x0211202C
	ldr r6, _020F7988 ; =0x02111FE6
	add r5, sp, #0
_020F7820:
	mov r1, r6
	mov r2, r5
	add r0, r7, r4, lsl #2
	bl FUN_ov17_0210dca0
	mov r0, r5
	bl FUN_ov17_0210e710
	cmp r0, #0
	beq _020F7878
	ldr r0, _020F797C ; =0x021161C0
	ldr r2, [r0]
	ldrsb r1, [r2, #0x61]
	cmp r1, r4
	addne sp, sp, #8
	ldmnefd sp!, {r3, r4, r5, r6, r7, pc}
	ldr r1, _020F798C ; =0x02112006
	ldrb r1, [r1, r4]
	strb r1, [r2, #0x60]
	ldr r0, [r0]
	strb r4, [r0, #0x63]
	bl FUN_ov17_020f80a0
	add sp, sp, #8
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_020F7878:
	add r4, r4, #1
	cmp r4, #0xa
	blt _020F7820
	ldr r7, _020F7990 ; =0x02111FF6
	ldr r6, _020F7994 ; =0x02111FEE
	mov r4, #0
	add r5, sp, #0
_020F7894:
	mov r1, r6
	mov r2, r5
	add r0, r7, r4, lsl #2
	bl FUN_ov17_0210dca0
	mov r0, r5
	bl FUN_ov17_0210e710
	cmp r0, #0
	beq _020F78F0
	ldr r0, _020F797C ; =0x021161C0
	add r2, r4, #0xa
	ldr r3, [r0]
	ldrsb r1, [r3, #0x61]
	cmp r1, r2
	addne sp, sp, #8
	ldmnefd sp!, {r3, r4, r5, r6, r7, pc}
	ldr r1, _020F7998 ; =0x02111FE3
	ldrb r1, [r1, r4]
	strb r1, [r3, #0x60]
	ldr r0, [r0]
	strb r2, [r0, #0x63]
	bl FUN_ov17_020f80a0
	add sp, sp, #8
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_020F78F0:
	add r4, r4, #1
	cmp r4, #2
	blt _020F7894
	ldr r7, _020F799C ; =0x02111FFE
	ldr r6, _020F79A0 ; =0x02111FF2
	mov r4, #0
	add r5, sp, #0
_020F790C:
	mov r1, r6
	mov r2, r5
	add r0, r7, r4, lsl #2
	bl FUN_ov17_0210dca0
	mov r0, r5
	bl FUN_ov17_0210e710
	cmp r0, #0
	beq _020F7968
	ldr r0, _020F797C ; =0x021161C0
	add r2, r4, #0xc
	ldr r3, [r0]
	ldrsb r1, [r3, #0x61]
	cmp r1, r2
	addne sp, sp, #8
	ldmnefd sp!, {r3, r4, r5, r6, r7, pc}
	ldr r1, _020F79A4 ; =0x02111FE0
	ldrb r1, [r1, r4]
	strb r1, [r3, #0x60]
	ldr r0, [r0]
	strb r2, [r0, #0x63]
	bl FUN_ov17_020f80a0
	add sp, sp, #8
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_020F7968:
	add r4, r4, #1
	cmp r4, #2
	blt _020F790C
	add sp, sp, #8
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_020F797C: .word 0x021161C0
_020F7980: .word 0x021126F8
_020F7984: .word 0x0211202C
_020F7988: .word 0x02111FE6
_020F798C: .word 0x02112006
_020F7990: .word 0x02111FF6
_020F7994: .word 0x02111FEE
_020F7998: .word 0x02111FE3
_020F799C: .word 0x02111FFE
_020F79A0: .word 0x02111FF2
_020F79A4: .word 0x02111FE0
	arm_func_end FUN_ov17_020f77e8

	arm_func_start FUN_ov17_020f79a8
FUN_ov17_020f79a8: ; 0x020F79A8
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	sub sp, sp, #8
	ldr r0, _020F7B60 ; =0x021126F8
	bl FUN_ov17_0210e578
	cmp r0, #0
	beq _020F7B40
	ldr r6, _020F7B64 ; =0x0211202C
	ldr r5, _020F7B68 ; =0x02111FE6
	mov r7, #0
	add r4, sp, #0
_020F79D0:
	mov r1, r5
	mov r2, r4
	add r0, r6, r7, lsl #2
	bl FUN_ov17_0210dca0
	mov r0, r4
	bl FUN_ov17_0210e578
	cmp r0, #0
	beq _020F7A0C
	ldr r0, _020F7B6C ; =0x021161C0
	ldr r0, [r0]
	ldrsb r0, [r0, #0x61]
	cmp r0, r7
	bne _020F7B40
	mov r0, r7
	b _020F7B44
_020F7A0C:
	add r7, r7, #1
	cmp r7, #0xa
	blt _020F79D0
	ldr r6, _020F7B70 ; =0x02111FF6
	ldr r5, _020F7B74 ; =0x02111FEE
	mov r7, #0
	add r4, sp, #0
_020F7A28:
	mov r1, r5
	mov r2, r4
	add r0, r6, r7, lsl #2
	bl FUN_ov17_0210dca0
	mov r0, r4
	bl FUN_ov17_0210e578
	cmp r0, #0
	beq _020F7ADC
	ldr r4, _020F7B6C ; =0x021161C0
	add r0, r7, #0xa
	ldr r1, [r4]
	ldrsb r1, [r1, #0x61]
	cmp r1, r0
	bne _020F7B40
	bl FUN_ov17_020f7b80
	cmp r7, #0
	bne _020F7B48
	ldr r1, [r4]
	ldrb r0, [r1, #0x65]
	add r0, r0, #1
	strb r0, [r1, #0x65]
	ldr r1, [r4]
	ldrb r0, [r1, #0x65]
	cmp r0, #0x28
	addlo sp, sp, #8
	ldmlofd sp!, {r3, r4, r5, r6, r7, pc}
	ldrb r0, [r1, #0x66]
	cmp r0, #0
	bne _020F7ABC
	mov r5, #9
	mov r0, r5
	bl FUN_ov17_02107c40
	ldr r0, [r4]
	sub r1, r5, #0xa
	strb r1, [r0, #0x61]
	add sp, sp, #8
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_020F7ABC:
	mov r0, #0x10
	strb r0, [r1, #0x60]
	ldr r1, [r4]
	add sp, sp, #8
	ldrb r0, [r1, #0x65]
	sub r0, r0, #7
	strb r0, [r1, #0x65]
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_020F7ADC:
	add r7, r7, #1
	cmp r7, #2
	blt _020F7A28
	ldr r6, _020F7B78 ; =0x02111FFE
	ldr r5, _020F7B7C ; =0x02111FF2
	mov r7, #0
	add r4, sp, #0
_020F7AF8:
	mov r1, r5
	mov r2, r4
	add r0, r6, r7, lsl #2
	bl FUN_ov17_0210dca0
	mov r0, r4
	bl FUN_ov17_0210e578
	cmp r0, #0
	beq _020F7B34
	ldr r1, _020F7B6C ; =0x021161C0
	add r0, r7, #0xc
	ldr r1, [r1]
	ldrsb r1, [r1, #0x61]
	cmp r1, r0
	bne _020F7B40
	b _020F7B44
_020F7B34:
	add r7, r7, #1
	cmp r7, #2
	blt _020F7AF8
_020F7B40:
	mvn r0, #0
_020F7B44:
	bl FUN_ov17_020f7b80
_020F7B48:
	ldr r0, _020F7B6C ; =0x021161C0
	mov r1, #0
	ldr r0, [r0]
	strb r1, [r0, #0x65]
	add sp, sp, #8
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_020F7B60: .word 0x021126F8
_020F7B64: .word 0x0211202C
_020F7B68: .word 0x02111FE6
_020F7B6C: .word 0x021161C0
_020F7B70: .word 0x02111FF6
_020F7B74: .word 0x02111FEE
_020F7B78: .word 0x02111FFE
_020F7B7C: .word 0x02111FF2
	arm_func_end FUN_ov17_020f79a8

	arm_func_start FUN_ov17_020f7b80
FUN_ov17_020f7b80: ; 0x020F7B80
	stmfd sp!, {r3, r4, r5, lr}
	ldr r4, _020F7BC0 ; =0x021161C0
	mov r5, r0
	ldr r1, [r4]
	ldrsb r1, [r1, #0x62]
	cmp r5, r1
	ldmeqfd sp!, {r3, r4, r5, pc}
	mov r1, #1
	bl FUN_ov17_020f7fd8
	ldr r0, [r4]
	mov r1, #0
	ldrsb r0, [r0, #0x62]
	bl FUN_ov17_020f7fd8
	ldr r0, [r4]
	strb r5, [r0, #0x62]
	ldmfd sp!, {r3, r4, r5, pc}
_020F7BC0: .word 0x021161C0
	arm_func_end FUN_ov17_020f7b80

	arm_func_start FUN_ov17_020f7bc4
FUN_ov17_020f7bc4: ; 0x020F7BC4
	stmfd sp!, {r4, lr}
	mov r0, #0x20
	bl FUN_ov17_0210e4f8
	cmp r0, #0
	beq _020F7BE0
	mov r0, #0
	bl FUN_ov17_020f8130
_020F7BE0:
	mov r0, #0x40
	bl FUN_ov17_0210e4f8
	cmp r0, #0
	beq _020F7BF8
	mov r0, #1
	bl FUN_ov17_020f8130
_020F7BF8:
	mov r0, #0x10
	bl FUN_ov17_0210e4f8
	cmp r0, #0
	beq _020F7C10
	mov r0, #2
	bl FUN_ov17_020f8130
_020F7C10:
	mov r0, #0x80
	bl FUN_ov17_0210e4f8
	cmp r0, #0
	beq _020F7C28
	mov r0, #3
	bl FUN_ov17_020f8130
_020F7C28:
	mov r0, #1
	bl FUN_ov17_0210e4b8
	cmp r0, #0
	beq _020F7CD0
	ldr r0, _020F7D48 ; =0x021161C0
	ldr r0, [r0]
	ldrsb r2, [r0, #0x63]
	cmp r2, #0xa
	bge _020F7C70
	ldrb r1, [r0, #0x67]
	cmp r1, #0
	ldrne r1, _020F7D4C ; =0x02112006
	ldrneb r1, [r1, r2]
	strneb r1, [r0, #0x60]
	ldmnefd sp!, {r4, pc}
	mov r0, #9
	bl FUN_ov17_02107c40
	ldmfd sp!, {r4, pc}
_020F7C70:
	sub r1, r2, #0xa
	cmp r1, #2
	bge _020F7CC0
	cmp r1, #0
	ldreqb r1, [r0, #0x66]
	cmpeq r1, #0
	beq _020F7CA0
	sub r1, r2, #0xa
	cmp r1, #1
	ldreqb r1, [r0, #0x68]
	cmpeq r1, #0
	bne _020F7CAC
_020F7CA0:
	mov r0, #9
	bl FUN_ov17_02107c40
	ldmfd sp!, {r4, pc}
_020F7CAC:
	ldr r1, _020F7D50 ; =0x02111FE3
	sub r2, r2, #0xa
	ldrb r1, [r1, r2]
	strb r1, [r0, #0x60]
	ldmfd sp!, {r4, pc}
_020F7CC0:
	ldr r1, _020F7D54 ; =0x02111FE0
	sub r2, r2, #0xc
	ldrb r1, [r1, r2]
	strb r1, [r0, #0x60]
_020F7CD0:
	mov r4, #2
	mov r0, r4
	bl FUN_ov17_0210e4f8
	cmp r0, #0
	beq _020F7D28
	ldr r4, _020F7D48 ; =0x021161C0
	ldr r1, [r4]
	ldrb r0, [r1, #0x66]
	cmp r0, #0
	bne _020F7D1C
	ldrb r0, [r1, #0x69]
	cmp r0, #0
	ldmnefd sp!, {r4, pc}
	mov r0, #9
	bl FUN_ov17_02107c40
	ldr r0, [r4]
	mov r1, #1
	strb r1, [r0, #0x69]
	ldmfd sp!, {r4, pc}
_020F7D1C:
	mov r0, #0x10
	strb r0, [r1, #0x60]
	ldmfd sp!, {r4, pc}
_020F7D28:
	mov r0, r4
	bl FUN_ov17_0210e538
	cmp r0, #0
	ldrne r0, _020F7D48 ; =0x021161C0
	movne r1, #0
	ldrne r0, [r0]
	strneb r1, [r0, #0x69]
	ldmfd sp!, {r4, pc}
_020F7D48: .word 0x021161C0
_020F7D4C: .word 0x02112006
_020F7D50: .word 0x02111FE3
_020F7D54: .word 0x02111FE0
	arm_func_end FUN_ov17_020f7bc4

	arm_func_start FUN_ov17_020f7d58
FUN_ov17_020f7d58: ; 0x020F7D58
	stmfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, lr}
	sub sp, sp, #0x1c
	ldr r3, _020F7FB4 ; =0x021120CC
	ldr r2, _020F7FB8 ; =0x021120C4
	ldr r11, _020F7FBC ; =0x021120D4
	ldrb r10, [r3]
	ldrb r9, [r3, #1]
	ldrb r8, [r3, #2]
	ldrb r7, [r3, #3]
	ldrb r6, [r3, #4]
	mov r4, r0
	ldrb r0, [r2]
	ldrb r3, [r11, #3]
	strb r9, [sp, #0x17]
	strb r8, [sp, #0x18]
	strb r7, [sp, #0x19]
	add r7, r4, r4, lsl #1
	strb r6, [sp, #0x1a]
	ldrb r5, [r11]
	ldrb lr, [r11, #1]
	ldrb r12, [r11, #2]
	ldrb r11, [r11, #4]
	str r0, [sp, #8]
	ldrb r0, [r2, #1]
	ldrb r9, [r2, #2]
	ldrb r8, [r2, #3]
	ldrb r2, [r2, #4]
	strb r3, [sp, #0x14]
	ldr r3, [sp, #8]
	strb r5, [sp, #0x11]
	strb r10, [sp, #0x16]
	add r6, sp, #0x16
	str r7, [sp, #4]
	ldrb r7, [r6, r4]
	mov r5, r1
	strb lr, [sp, #0x12]
	cmp r7, #0
	ldr r1, [sp, #4]
	strb r12, [sp, #0x13]
	strb r11, [sp, #0x15]
	strb r3, [sp, #0xc]
	strb r0, [sp, #0xd]
	strb r9, [sp, #0xe]
	strb r8, [sp, #0xf]
	strb r2, [sp, #0x10]
	mov r7, #0
	ble _020F7E80
	ldrb r11, [r6, r4]
	ldr r0, _020F7FC0 ; =0x0211202C
	ldr r10, _020F7FC4 ; =0x021161C0
	ldr r6, _020F7FC8 ; =0xC1FFFCFF
	ldr r9, _020F7FCC ; =0xFE00FF00
	and r8, r5, #0xff
_020F7E2C:
	ldr r2, [r10]
	mov r3, r1, lsl #2
	add r2, r2, r1, lsl #2
	ldr r2, [r2, #0x10]
	ldrh r3, [r0, r3]
	ldr r12, [r2]
	add r7, r7, #1
	and r12, r12, r6
	str r12, [r2]
	ldr r12, [r10]
	mov r2, r3, lsl #0x17
	add r3, r12, r1, lsl #2
	ldr r3, [r3, #0x10]
	cmp r7, r11
	ldr r12, [r3]
	add r1, r1, #1
	and r12, r12, r9
	orr r12, r12, r8
	orr r2, r12, r2, lsr #7
	str r2, [r3]
	blt _020F7E2C
_020F7E80:
	cmp r4, #4
	bge _020F7EBC
	ldr r0, _020F7FC4 ; =0x021161C0
	ldr r1, _020F7FC0 ; =0x0211202C
	ldr r3, [r0]
	ldr r0, [sp, #4]
	mov r2, #2
	mov r0, r0, lsl #2
	str r2, [sp]
	ldrh r1, [r1, r0]
	add r2, r3, r4, lsl #2
	ldr r0, [r3, r4, lsl #2]
	ldr r3, [r2, #0x48]
	mov r2, r5
	bl FUN_ov17_0210dbbc
_020F7EBC:
	add r1, sp, #0x11
	ldrb r0, [r1, r4]
	mov r6, #0
	cmp r0, #0
	ble _020F7F38
	mov r10, r0
	ldr r0, _020F7FD0 ; =0x02111FF6
	ldr r9, _020F7FC4 ; =0x021161C0
	ldr r7, _020F7FC8 ; =0xC1FFFCFF
	ldr r8, _020F7FCC ; =0xFE00FF00
	and r3, r5, #0xff
_020F7EE8:
	ldr r1, [r9]
	mov r2, r6, lsl #2
	add r1, r1, r6, lsl #2
	ldr r11, [r1, #0x38]
	ldrh r1, [r0, r2]
	ldr r2, [r11]
	and r2, r2, r7
	str r2, [r11]
	ldr r2, [r9]
	mov r1, r1, lsl #0x17
	add r2, r2, r6, lsl #2
	ldr r2, [r2, #0x38]
	add r6, r6, #1
	ldr r11, [r2]
	cmp r6, r10
	and r11, r11, r8
	orr r11, r11, r3
	orr r1, r11, r1, lsr #7
	str r1, [r2]
	blt _020F7EE8
_020F7F38:
	add r1, sp, #0xc
	ldrb r0, [r1, r4]
	mov r7, #0
	cmp r0, #0
	addle sp, sp, #0x1c
	ldmlefd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
	ldr r10, _020F7FD4 ; =0x02111FFE
	ldr r8, _020F7FC4 ; =0x021161C0
	mov r9, r0
	mvn r6, #0
	mov r4, r7
_020F7F64:
	ldr r0, [r8]
	mov r1, r6
	add r0, r0, r7, lsl #2
	ldr r0, [r0, #0x40]
	mov r2, r4
	mov r3, r4
	bl FUN_ov17_0210cc88
	ldr r0, [r8]
	mov r1, r7, lsl #2
	add r0, r0, r7, lsl #2
	ldrh r2, [r10, r1]
	ldr r0, [r0, #0x40]
	mov r1, r6
	mov r3, r5
	bl FUN_ov17_0210cdac
	add r7, r7, #1
	cmp r7, r9
	blt _020F7F64
	add sp, sp, #0x1c
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
_020F7FB4: .word 0x021120CC
_020F7FB8: .word 0x021120C4
_020F7FBC: .word 0x021120D4
_020F7FC0: .word 0x0211202C
_020F7FC4: .word 0x021161C0
_020F7FC8: .word 0xC1FFFCFF
_020F7FCC: .word 0xFE00FF00
_020F7FD0: .word 0x02111FF6
_020F7FD4: .word 0x02111FFE
	arm_func_end FUN_ov17_020f7d58

	arm_func_start FUN_ov17_020f7fd8
FUN_ov17_020f7fd8: ; 0x020F7FD8
	stmfd sp!, {r3, lr}
	cmp r0, #0
	ldmltfd sp!, {r3, pc}
	cmp r0, #0xa
	bge _020F8024
	ldr r2, _020F8094 ; =0x021161C0
	ldr r3, _020F8098 ; =0x02111FDE
	ldr r2, [r2]
	ldrb r1, [r3, r1]
	add r0, r2, r0, lsl #2
	ldr r2, [r0, #0x10]
	ldr r0, [r2]
	bic r0, r0, #0xc00
	str r0, [r2]
	ldrh r0, [r2, #4]
	bic r0, r0, #0xf000
	orr r0, r0, r1, lsl #12
	strh r0, [r2, #4]
	ldmfd sp!, {r3, pc}
_020F8024:
	sub r12, r0, #0xa
	cmp r12, #2
	bge _020F8068
	ldr r0, _020F8094 ; =0x021161C0
	ldr r2, _020F8098 ; =0x02111FDE
	ldr r3, [r0]
	ldrb r0, [r2, r1]
	add r1, r3, r12, lsl #2
	ldr r2, [r1, #0x38]
	ldr r1, [r2]
	bic r1, r1, #0xc00
	str r1, [r2]
	ldrh r1, [r2, #4]
	bic r1, r1, #0xf000
	orr r0, r1, r0, lsl #12
	strh r0, [r2, #4]
	ldmfd sp!, {r3, pc}
_020F8068:
	ldr r2, _020F8094 ; =0x021161C0
	ldr r3, _020F809C ; =0x02111FD8
	ldr r2, [r2]
	sub r0, r0, #0xc
	add r0, r2, r0, lsl #2
	ldrb r3, [r3, r1]
	ldr r0, [r0, #0x40]
	mvn r1, #0
	mov r2, #0
	bl FUN_ov17_0210cd2c
	ldmfd sp!, {r3, pc}
_020F8094: .word 0x021161C0
_020F8098: .word 0x02111FDE
_020F809C: .word 0x02111FD8
	arm_func_end FUN_ov17_020f7fd8

	arm_func_start FUN_ov17_020f80a0
FUN_ov17_020f80a0: ; 0x020F80A0
	stmfd sp!, {r3, r4, r5, lr}
	ldr r0, _020F8124 ; =0x021161C0
	mov r4, #0x44
	ldr r1, [r0]
	mov r5, #0
	ldrsb r0, [r1, #0x63]
	cmp r0, #0xb
	ldr r0, [r1, #0x58]
	movgt r4, #0x45
	mov r1, r5
	bl FUN_ov17_0210cc74
	mov r2, r0
	mov r0, r5
	mov r1, r4
	bl FUN_ov17_0210cf68
	ldr r4, _020F8124 ; =0x021161C0
	sub r5, r5, #1
	ldr r0, [r4]
	mov r1, r5
	ldr r0, [r0, #0x58]
	mov r2, #2
	bl FUN_ov17_0210ce84
	ldr r0, [r4]
	ldr r2, _020F8128 ; =0x02112054
	ldrsb r3, [r0, #0x63]
	ldr r0, [r0, #0x58]
	mov r1, r5
	mov r4, r3, lsl #2
	ldr r3, _020F812C ; =0x02112056
	ldrh r2, [r2, r4]
	ldrh r3, [r3, r4]
	bl FUN_ov17_0210cdac
	ldmfd sp!, {r3, r4, r5, pc}
_020F8124: .word 0x021161C0
_020F8128: .word 0x02112054
_020F812C: .word 0x02112056
	arm_func_end FUN_ov17_020f80a0

	arm_func_start FUN_ov17_020f8130
FUN_ov17_020f8130: ; 0x020F8130
	stmfd sp!, {r3, lr}
	ldr r1, _020F81D0 ; =0x021161C0
	ldr r2, _020F81D4 ; =0x0211208C
	ldr r3, [r1]
	ldrsb r12, [r3, #0x63]
	add r2, r2, r12, lsl #2
	ldrsb r2, [r0, r2]
	strb r2, [r3, #0x63]
	ldr r2, [r1]
	ldrsb r1, [r2, #0x63]
	cmp r1, #0xd
	bne _020F8170
	cmp r0, #1
	cmpne r0, #3
	streqb r12, [r2, #0x64]
	beq _020F81C0
_020F8170:
	mvn r0, #0
	cmp r1, r0
	bne _020F8198
	ldrsb r0, [r2, #0x64]
	cmp r0, #1
	cmpne r0, #0xa
	moveq r0, #0xa
	streqb r0, [r2, #0x63]
	movne r0, #0xb
	b _020F81BC
_020F8198:
	sub r0, r0, #1
	cmp r1, r0
	bne _020F81C0
	ldrsb r0, [r2, #0x64]
	cmp r0, #1
	cmpne r0, #0xa
	moveq r0, #1
	streqb r0, [r2, #0x63]
	movne r0, #2
_020F81BC:
	strneb r0, [r2, #0x63]
_020F81C0:
	bl FUN_ov17_020f80a0
	mov r0, #8
	bl FUN_ov17_02107c40
	ldmfd sp!, {r3, pc}
_020F81D0: .word 0x021161C0
_020F81D4: .word 0x0211208C
	arm_func_end FUN_ov17_020f8130

	arm_func_start FUN_ov17_020f81d8
FUN_ov17_020f81d8: ; 0x020F81D8
	stmfd sp!, {r3, r4, r5, lr}
	sub sp, sp, #8
	ldr r1, _020F8230 ; =0x021161C0
	mov r5, r0
	ldr r0, [r1]
	mov r1, #0
	ldr r0, [r0, #0x40]
	bl FUN_ov17_0210cc74
	ldr r1, [r0]
	mov r0, #4
	and r1, r1, #0xff
	add r4, r1, #0xc
	mov r1, r4
	bl FUN_ov17_020f7d58
	cmp r4, #0xc0
	addlt sp, sp, #8
	ldmltfd sp!, {r3, r4, r5, pc}
	ldr r1, _020F8234 ; =FUN_ov17_020f8238
	mov r0, r5
	bl FUN_ov17_0210f3b0
	add sp, sp, #8
	ldmfd sp!, {r3, r4, r5, pc}
_020F8230: .word 0x021161C0
_020F8234: .word FUN_ov17_020f8238
	arm_func_end FUN_ov17_020f81d8

	arm_func_start FUN_ov17_020f8238
FUN_ov17_020f8238: ; 0x020F8238
	stmfd sp!, {r3, r4, r5, lr}
	sub sp, sp, #8
	ldr r1, _020F8288 ; =0x021161C0
	mov r5, r0
	ldr r1, [r1]
	mov r0, #3
	ldr r1, [r1, #0x34]
	ldr r1, [r1]
	and r1, r1, #0xff
	add r4, r1, #0xc
	mov r1, r4
	bl FUN_ov17_020f7d58
	cmp r4, #0xc0
	addlt sp, sp, #8
	ldmltfd sp!, {r3, r4, r5, pc}
	ldr r1, _020F828C ; =FUN_ov17_020f8290
	mov r0, r5
	bl FUN_ov17_0210f3b0
	add sp, sp, #8
	ldmfd sp!, {r3, r4, r5, pc}
_020F8288: .word 0x021161C0
_020F828C: .word FUN_ov17_020f8290
	arm_func_end FUN_ov17_020f8238

	arm_func_start FUN_ov17_020f8290
FUN_ov17_020f8290: ; 0x020F8290
	stmfd sp!, {r3, r4, r5, lr}
	sub sp, sp, #8
	ldr r1, _020F82E0 ; =0x021161C0
	mov r5, r0
	ldr r1, [r1]
	mov r0, #2
	ldr r1, [r1, #0x28]
	ldr r1, [r1]
	and r1, r1, #0xff
	add r4, r1, #0xc
	mov r1, r4
	bl FUN_ov17_020f7d58
	cmp r4, #0xc0
	addlt sp, sp, #8
	ldmltfd sp!, {r3, r4, r5, pc}
	ldr r1, _020F82E4 ; =FUN_ov17_020f82e8
	mov r0, r5
	bl FUN_ov17_0210f3b0
	add sp, sp, #8
	ldmfd sp!, {r3, r4, r5, pc}
_020F82E0: .word 0x021161C0
_020F82E4: .word FUN_ov17_020f82e8
	arm_func_end FUN_ov17_020f8290

	arm_func_start FUN_ov17_020f82e8
FUN_ov17_020f82e8: ; 0x020F82E8
	stmfd sp!, {r3, r4, r5, lr}
	sub sp, sp, #8
	ldr r1, _020F8338 ; =0x021161C0
	mov r5, r0
	ldr r1, [r1]
	mov r0, #1
	ldr r1, [r1, #0x1c]
	ldr r1, [r1]
	and r1, r1, #0xff
	add r4, r1, #0xc
	mov r1, r4
	bl FUN_ov17_020f7d58
	cmp r4, #0xc0
	addlt sp, sp, #8
	ldmltfd sp!, {r3, r4, r5, pc}
	ldr r1, _020F833C ; =FUN_ov17_020f8340
	mov r0, r5
	bl FUN_ov17_0210f3b0
	add sp, sp, #8
	ldmfd sp!, {r3, r4, r5, pc}
_020F8338: .word 0x021161C0
_020F833C: .word FUN_ov17_020f8340
	arm_func_end FUN_ov17_020f82e8

	arm_func_start FUN_ov17_020f8340
FUN_ov17_020f8340: ; 0x020F8340
	stmfd sp!, {r3, r4, r5, lr}
	sub sp, sp, #8
	ldr r1, _020F8390 ; =0x021161C0
	mov r5, r0
	ldr r1, [r1]
	mov r0, #0
	ldr r1, [r1, #0x10]
	ldr r1, [r1]
	and r1, r1, #0xff
	add r4, r1, #0xc
	mov r1, r4
	bl FUN_ov17_020f7d58
	cmp r4, #0xc0
	addlt sp, sp, #8
	ldmltfd sp!, {r3, r4, r5, pc}
	ldr r1, _020F8394 ; =FUN_ov17_020f8398
	mov r0, r5
	bl FUN_ov17_0210f3b0
	add sp, sp, #8
	ldmfd sp!, {r3, r4, r5, pc}
_020F8390: .word 0x021161C0
_020F8394: .word FUN_ov17_020f8398
	arm_func_end FUN_ov17_020f8340

	arm_func_start FUN_ov17_020f8398
FUN_ov17_020f8398: ; 0x020F8398
	stmfd sp!, {r3, r4, r5, lr}
	mov r5, #0
	mov r1, r0
	mov r0, r5
	bl FUN_ov17_0210f3b8
	ldr r4, _020F8450 ; =0x021161C0
_020F83B0:
	ldr r0, [r4]
	add r0, r0, r5, lsl #2
	ldr r0, [r0, #0x48]
	bl FUN_ov17_0210cbf4
	ldr r0, [r4]
	ldr r0, [r0, r5, lsl #2]
	bl FUN_ov17_0210d6c0
	add r5, r5, #1
	cmp r5, #4
	blt _020F83B0
	ldr r4, _020F8450 ; =0x021161C0
	mov r5, #0
_020F83E0:
	ldr r0, [r4]
	add r0, r0, r5, lsl #2
	ldr r0, [r0, #0x40]
	bl FUN_ov17_0210cbf4
	add r5, r5, #1
	cmp r5, #2
	blt _020F83E0
	ldr r4, _020F8450 ; =0x021161C0
	mov r5, #0
_020F8404:
	ldr r0, [r4]
	add r0, r0, r5, lsl #2
	ldr r0, [r0, #0x38]
	bl FUN_ov17_0210ebcc
	add r5, r5, #1
	cmp r5, #2
	blt _020F8404
	ldr r4, _020F8450 ; =0x021161C0
	mov r5, #0
_020F8428:
	ldr r0, [r4]
	add r0, r0, r5, lsl #2
	ldr r0, [r0, #0x10]
	bl FUN_ov17_0210ebcc
	add r5, r5, #1
	cmp r5, #0xa
	blt _020F8428
	ldr r0, _020F8454 ; =0x021161C0
	bl FUN_ov17_0210e0cc
	ldmfd sp!, {r3, r4, r5, pc}
_020F8450: .word 0x021161C0
_020F8454: .word 0x021161C0
	arm_func_end FUN_ov17_020f8398

	arm_func_start FUN_ov17_020f8458
FUN_ov17_020f8458: ; 0x020F8458
	stmfd sp!, {r4, r5, lr}
	sub sp, sp, #0x104
	mov r0, #0x26c
	mov r1, #4
	bl FUN_ov17_0210e0a8
	ldr r5, _020F8550 ; =0x021161C4
	add r4, sp, #0
	str r0, [r5, #4]
	mov r0, #0
	mov r1, r4
	mov r2, #0x104
	strb r0, [r5]
	bl MIi_CpuClear16
	mov r3, #0x50
	mov r2, #0xc
	ldr r0, _020F8554 ; =0x021120E4
	add r1, sp, #4
	strb r3, [sp]
	strh r2, [sp, #2]
	bl MI_CpuCopy8
	ldr r0, [r5, #4]
	mov r1, #3
	strh r1, [r0]
	ldr r5, [r5, #4]
	mov r2, #0x41
	add r3, r5, #2
_020F84C0:
	ldrh r1, [r4]
	ldrh r0, [r4, #2]
	add r4, r4, #4
	subs r2, r2, #1
	strh r0, [r3, #2]
	strh r1, [r3], #4
	bne _020F84C0
	ldr r1, _020F8550 ; =0x021161C4
	mov r3, #1
	add r0, r5, #0x100
	strh r3, [r0, #6]
	ldr r0, [r1, #4]
	sub r2, r3, #2
	add r0, r0, #0x100
	strh r2, [r0, #8]
	ldr r0, [r1, #4]
	add r0, r0, #0x100
	strh r3, [r0, #0xa]
	ldr r0, [r1, #4]
	add r0, r0, #0x100
	strh r2, [r0, #0xc]
	ldr r0, [r1, #4]
	add r0, r0, #0x100
	strh r2, [r0, #0xe]
	ldr r0, [r1, #4]
	add r0, r0, #0x110
	bl FUN_02003f38
	ldr r0, _020F8558 ; =FUN_ov17_020f8604
	ldr r1, _020F855C ; =FUN_ov17_020f8614
	blx FUN_ov17_020f0194
	cmp r0, #0
	addeq sp, sp, #0x104
	ldmeqfd sp!, {r4, r5, pc}
	bl FUN_02004160
	add sp, sp, #0x104
	ldmfd sp!, {r4, r5, pc}
_020F8550: .word 0x021161C4
_020F8554: .word 0x021120E4
_020F8558: .word FUN_ov17_020f8604
_020F855C: .word FUN_ov17_020f8614
	arm_func_end FUN_ov17_020f8458

	arm_func_start FUN_ov17_020f8560
FUN_ov17_020f8560: ; 0x020F8560
	stmfd sp!, {r4, lr}
	mov r4, r0
	blx FUN_ov17_020f0258
	cmp r4, #0
	beq _020F859C
	ldr r0, _020F85A8 ; =0x021161C4
	ldr r2, [r0, #4]
	ldrb r1, [r2, #0x116]
	cmp r1, #0
	ldreqb r0, [r0]
	cmpeq r0, #1
	bne _020F859C
	add r0, r2, #0x17
	add r0, r0, #0x100
	bl FUN_ov17_02107750
_020F859C:
	ldr r0, _020F85AC ; =0x021161C8
	bl FUN_ov17_0210e0cc
	ldmfd sp!, {r4, pc}
_020F85A8: .word 0x021161C4
_020F85AC: .word 0x021161C8
	arm_func_end FUN_ov17_020f8560

	arm_func_start FUN_ov17_020f85b0
FUN_ov17_020f85b0: ; 0x020F85B0
	stmfd sp!, {r4, lr}
	ldr r4, _020F8600 ; =0x021161C4
	ldr r0, [r4, #4]
	blx FUN_ov17_020ede80
	cmp r0, #0
	moveq r0, #1
	streqb r0, [r4]
	ldmeqfd sp!, {r4, pc}
	ldr r0, [r4, #4]
	ldrb r0, [r0, #0x116]
	cmp r0, #1
	beq _020F85F0
	add r0, r0, #0xfd
	and r0, r0, #0xff
	cmp r0, #2
	bhi _020F85F8
_020F85F0:
	mov r0, #0
	ldmfd sp!, {r4, pc}
_020F85F8:
	mov r0, #2
	ldmfd sp!, {r4, pc}
_020F8600: .word 0x021161C4
	arm_func_end FUN_ov17_020f85b0

	arm_func_start FUN_ov17_020f8604
FUN_ov17_020f8604: ; 0x020F8604
	ldr r12, _020F8610 ; =FUN_ov17_0210e0a8
	mov r1, #0x20
	bx r12
_020F8610: .word FUN_ov17_0210e0a8
	arm_func_end FUN_ov17_020f8604

	arm_func_start FUN_ov17_020f8614
FUN_ov17_020f8614: ; 0x020F8614
	ldr r12, _020F861C ; =FUN_ov17_0210e110
	bx r12
_020F861C: .word FUN_ov17_0210e110
	arm_func_end FUN_ov17_020f8614

	arm_func_start FUN_ov17_020f8620
FUN_ov17_020f8620: ; 0x020F8620
	stmfd sp!, {r4, r5, r6, lr}
	ldr r4, _020F86B4 ; =0x021161CC
	str r0, [r4, #4]
	mov r0, r1
	mov r1, r2
	bl FUN_ov17_020f86c0
	cmp r0, #0
	mvneq r0, #0
	ldmeqfd sp!, {r4, r5, r6, pc}
	bl  FUN_ov15_020c6bc8
	mov r6, r0
	ldr r0, _020F86B8 ; =0x02112CBC
	bl  FUN_ov15_020c6bb8
	mov r0, #0
	strb r0, [r4, #1]
	bl FUN_ov17_020f873c
	bl FUN_ov17_020f8810
	bl FUN_ov17_02107b50
	ldr r0, _020F86BC ; =FUN_ov17_020f9388
	bl FUN_ov17_020f8ad4
	mov r5, #0
_020F8674:
	bl FUN_ov17_0210e200
	ldr r0, [r4, #0xc]
	blx r0
	mov r0, r5
	bl FUN_ov17_0210f264
	bl FUN_ov17_0210e85c
	bl FUN_ov17_0210f0dc
	bl FUN_02003e40
	ldrb r0, [r4, #1]
	cmp r0, #0
	beq _020F8674
	bl FUN_ov17_020f8a7c
	mov r0, r6
	bl  FUN_ov15_020c6bb8
	mov r0, r5
	ldmfd sp!, {r4, r5, r6, pc}
_020F86B4: .word 0x021161CC
_020F86B8: .word 0x02112CBC
_020F86BC: .word FUN_ov17_020f9388
	arm_func_end FUN_ov17_020f8620

	arm_func_start FUN_ov17_020f86c0
FUN_ov17_020f86c0: ; 0x020F86C0
	ldr r2, _020F8738 ; =0x021161CC
	cmp r0, #0
	strb r0, [r2]
	str r1, [r2, #8]
	blt _020F86DC
	cmp r0, #6
	ble _020F86E4
_020F86DC:
	mov r0, #0
	bx lr
_020F86E4:
	mov r2, r1, lsl #0x1c
	mov r2, r2, lsr #0x1c
	cmp r2, #1
	movhi r0, #0
	bxhi lr
	mov r1, r1, lsr #4
	tst r1, #2
	movne r0, #0
	bxne lr
	cmp r0, #0
	beq _020F871C
	tst r1, #1
	movne r0, #0
	bxne lr
_020F871C:
	cmp r0, #0
	bne _020F8730
	tst r1, #1
	moveq r0, #0
	bxeq lr
_020F8730:
	mov r0, #1
	bx lr
_020F8738: .word 0x021161CC
	arm_func_end FUN_ov17_020f86c0

	arm_func_start FUN_ov17_020f873c
FUN_ov17_020f873c: ; 0x020F873C
	stmfd sp!, {r3, r4, lr}
	sub sp, sp, #4
	ldr r2, _020F8804 ; =0x04000208
	mov r0, #0
	ldrh r1, [r2]
	strh r0, [r2]
	bl FUN_0200445c
	ldr r1, _020F8808 ; =0x04001000
	ldr r0, [r1]
	bic r0, r0, #0x10000
	str r0, [r1]
	bl FUN_02003398
	cmp r0, #0
	bne _020F8778
	bl FUN_02004160
_020F8778:
	bl FUN_020035f4
	cmp r0, #0
	bne _020F8788
	bl FUN_02004160
_020F8788:
	mov r4, #0
	mov r0, r4
	bl FUN_02004414
	bl FUN_02009c28
	sub r0, r4, #1
	bl FUN_0200fd94
	bl FUN_02015ef0
	bl FUN_0200adc4
	bl FUN_0200445c
	ldr r1, _020F8808 ; =0x04001000
	ldr r0, [r1]
	bic r0, r0, #0x10000
	str r0, [r1]
	bl FUN_ov17_0210ef08
	ldr r0, _020F880C ; =0x021161CC
	ldr r0, [r0, #4]
	bl FUN_ov17_0210dff4
	bl FUN_ov17_0210e90c
	bl FUN_ov17_0210f118
	bl FUN_ov17_0210c500
	bl FUN_ov17_0210e14c
	bl FUN_ov17_0210d1b0
	mov r0, #0x700
	mov r1, #0x20
	bl FUN_ov17_0210e0a8
	str r0, [sp]
	bl  FUN_ov1_020cb3f8 ; may be ov15
	add r0, sp, #0
	bl FUN_ov17_0210e0cc
	add sp, sp, #4
	ldmfd sp!, {r3, r4, pc}
_020F8804: .word 0x04000208
_020F8808: .word 0x04001000
_020F880C: .word 0x021161CC
	arm_func_end FUN_ov17_020f873c

	arm_func_start FUN_ov17_020f8810
FUN_ov17_020f8810: ; 0x020F8810
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, lr}
	mov r0, #0
	bl FUN_02004414
	mov r0, #1
	bl FUN_02006058
	mov r0, #2
	bl FUN_0200625c
	mov r1, #0
	mov r0, #1
	mov r2, r1
	bl FUN_020044e0
	mov r10, #0x4000000
	ldr r1, [r10]
	add r0, r10, #0x6c
	bic r1, r1, #0x1f00
	str r1, [r10]
	ldr r2, [r10]
	mov r1, #0
	bic r2, r2, #0xe000
	str r2, [r10]
	bl FUN_02004564
	ldr r1, [r10]
	ldr r4, _020F8A6C ; =0xFFCFFFEF
	ldr r11, _020F8A70 ; =0x0000FFBF
	and r1, r1, r4
	orr r1, r1, #0x10
	orr r1, r1, #0x200000
	str r1, [r10]
	ldrh r1, [r10, #8]
	ldr r0, _020F8A74 ; =0x00200010
	and r1, r1, r11
	strh r1, [r10, #8]
	ldrh r2, [r10, #0xa]
	add r5, r0, #0x3e00000
	add r0, r10, #0x50
	and r2, r2, r11
	strh r2, [r10, #0xa]
	ldrh r3, [r10, #0xc]
	mov r1, #0x3f
	mov r2, #0x10
	and r3, r3, r11
	strh r3, [r10, #0xc]
	ldrh r3, [r10, #0xe]
	and r3, r3, r11
	strh r3, [r10, #0xe]
	mov r3, #0
	str r3, [r5]
	str r3, [r10, #0x14]
	str r3, [r10, #0x18]
	str r3, [r10, #0x1c]
	bl FUN_0200462c
	mov r0, #0x80
	bl FUN_0200693c
	mov r0, #0x100
	bl FUN_020069d8
	mov r0, #0
	bl FUN_02004548
	add r9, r10, #0x1000
	ldr r0, [r9]
	ldr r8, _020F8A78 ; =0x0400106C
	bic r0, r0, #0x1f00
	str r0, [r9]
	ldr r1, [r9]
	mov r0, r8
	bic r1, r1, #0xe000
	str r1, [r9]
	mov r1, #0
	bl FUN_02004564
	ldr r0, [r9]
	sub r7, r8, #0x64
	and r0, r0, r4
	orr r0, r0, #0x10
	str r0, [r9]
	ldrh r0, [r7]
	sub r6, r8, #0x62
	sub r5, r8, #0x60
	and r0, r0, r11
	strh r0, [r7]
	ldrh r0, [r6]
	sub r4, r8, #0x5e
	mov r1, #0x3f
	and r0, r0, r11
	strh r0, [r6]
	ldrh r3, [r5]
	mov r2, #0x10
	sub r0, r8, #0x1c
	and r3, r3, r11
	strh r3, [r5]
	ldrh r3, [r4]
	and r3, r3, r11
	strh r3, [r4]
	mov r3, #0
	str r3, [r8, #-0x5c]
	str r3, [r8, #-0x58]
	str r3, [r8, #-0x54]
	str r3, [r8, #-0x50]
	bl FUN_0200462c
	ldrh r0, [r10, #8]
	and r0, r0, #0x43
	orr r0, r0, #0xc00
	strh r0, [r10, #8]
	ldrh r0, [r10, #0xa]
	and r0, r0, #0x43
	orr r0, r0, #0x108
	orr r0, r0, #0xc00
	strh r0, [r10, #0xa]
	ldrh r0, [r10, #0xc]
	and r0, r0, #0x43
	orr r0, r0, #0xe10
	strh r0, [r10, #0xc]
	ldrh r0, [r10, #0xe]
	and r0, r0, #0x43
	orr r0, r0, #0xf10
	strh r0, [r10, #0xe]
	ldrh r0, [r7]
	and r0, r0, #0x43
	orr r0, r0, #0xc00
	strh r0, [r7]
	ldrh r0, [r6]
	and r0, r0, #0x43
	orr r0, r0, #0xd00
	strh r0, [r6]
	ldrh r0, [r5]
	and r0, r0, #0x43
	orr r0, r0, #0xe00
	strh r0, [r5]
	ldrh r0, [r4]
	and r0, r0, #0x43
	orr r0, r0, #0xf00
	strh r0, [r4]
	ldr r0, [r10]
	add r1, r10, #0x304
	bic r0, r0, #0x38000000
	str r0, [r10]
	ldr r0, [r10]
	bic r0, r0, #0x7000000
	str r0, [r10]
	ldrh r0, [r1]
	bic r0, r0, #0x8000
	strh r0, [r1]
	bl FUN_ov17_0210d4b8
	bl FUN_ov17_0210eaa8
	bl FUN_ov17_0210ec30
	bl FUN_ov17_0210c988
	bl FUN_0200449c
	ldr r1, [r9]
	mov r0, #1
	orr r1, r1, #0x10000
	str r1, [r9]
	bl FUN_02004414
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_020F8A6C: .word 0xFFCFFFEF
_020F8A70: .word 0x0000FFBF
_020F8A74: .word 0x00200010
_020F8A78: .word 0x0400106C
	arm_func_end FUN_ov17_020f8810

	arm_func_start FUN_ov17_020f8a7c
FUN_ov17_020f8a7c: ; 0x020F8A7C
	stmfd sp!, {r3, lr}
	bl FUN_0200445c
	ldr r1, _020F8AD0 ; =0x04001000
	ldr r0, [r1]
	bic r0, r0, #0x10000
	str r0, [r1]
	bl FUN_ov17_0210f108
	mov r0, #1
	bl FUN_02017368
	bl FUN_ov17_0210e1cc
	bl FUN_ov17_0210e978
	bl FUN_ov17_02107c14
	bl FUN_ov17_0210ca5c
	bl FUN_ov17_0210eb80
	bl FUN_ov17_0210d598
	bl FUN_ov17_0210d200
	bl FUN_ov17_0210c6b4
	bl FUN_ov17_0210f21c
	bl FUN_ov17_0210e03c
	bl FUN_ov17_0210ef8c
	ldmfd sp!, {r3, pc}
_020F8AD0: .word 0x04001000
	arm_func_end FUN_ov17_020f8a7c

	arm_func_start FUN_ov17_020f8ad4
FUN_ov17_020f8ad4: ; 0x020F8AD4
	ldr r1, _020F8AE0 ; =0x021161CC
	str r0, [r1, #0xc]
	bx lr
_020F8AE0: .word 0x021161CC
	arm_func_end FUN_ov17_020f8ad4

	arm_func_start FUN_ov17_020f8ae4
FUN_ov17_020f8ae4: ; 0x020F8AE4
	ldr r2, _020F8AF4 ; =0x021161CC
	str r0, [r2, #0x10]
	str r1, [r2, #0x14]
	bx lr
_020F8AF4: .word 0x021161CC
	arm_func_end FUN_ov17_020f8ae4

	arm_func_start FUN_ov17_020f8af8
FUN_ov17_020f8af8: ; 0x020F8AF8
	cmp r0, #0
	ldrne r2, _020F8B1C ; =0x021161CC
	ldrne r2, [r2, #0x10]
	strne r2, [r0]
	cmp r1, #0
	ldrne r0, _020F8B1C ; =0x021161CC
	ldrne r0, [r0, #0x14]
	strne r0, [r1]
	bx lr
_020F8B1C: .word 0x021161CC
	arm_func_end FUN_ov17_020f8af8

	arm_func_start FUN_ov17_020f8b20
FUN_ov17_020f8b20: ; 0x020F8B20
	ldr r2, _020F8B30 ; =0x021161CC
	str r0, [r2, #0x18]
	str r1, [r2, #0x1c]
	bx lr
_020F8B30: .word 0x021161CC
	arm_func_end FUN_ov17_020f8b20

	arm_func_start FUN_ov17_020f8b34
FUN_ov17_020f8b34: ; 0x020F8B34
	cmp r0, #0
	ldrne r2, _020F8B58 ; =0x021161CC
	ldrne r2, [r2, #0x18]
	strne r2, [r0]
	cmp r1, #0
	ldrne r0, _020F8B58 ; =0x021161CC
	ldrne r0, [r0, #0x1c]
	strne r0, [r1]
	bx lr
_020F8B58: .word 0x021161CC
	arm_func_end FUN_ov17_020f8b34

	arm_func_start FUN_ov17_020f8b5c
FUN_ov17_020f8b5c: ; 0x020F8B5C
	ldr r0, _020F8B68 ; =0x021161CC
	ldrb r0, [r0]
	bx lr
_020F8B68: .word 0x021161CC
	arm_func_end FUN_ov17_020f8b5c

	arm_func_start FUN_ov17_020f8b6c
FUN_ov17_020f8b6c: ; 0x020F8B6C
	ldr r0, _020F8B80 ; =0x021161CC
	ldr r0, [r0, #8]
	mov r0, r0, lsl #0x1c
	mov r0, r0, lsr #0x1c
	bx lr
_020F8B80: .word 0x021161CC
	arm_func_end FUN_ov17_020f8b6c

	arm_func_start FUN_ov17_020f8b84
FUN_ov17_020f8b84: ; 0x020F8B84
	ldr r1, _020F8B9C ; =0x021161CC
	ldr r1, [r1, #8]
	tst r0, r1, lsr #4
	movne r0, #1
	moveq r0, #0
	bx lr
_020F8B9C: .word 0x021161CC
	arm_func_end FUN_ov17_020f8b84

	arm_func_start FUN_ov17_020f8ba0
FUN_ov17_020f8ba0: ; 0x020F8BA0
	ldr r0, _020F8BB0 ; =0x021161CC
	mov r1, #1
	strb r1, [r0, #1]
	bx lr
_020F8BB0: .word 0x021161CC
	arm_func_end FUN_ov17_020f8ba0

	arm_func_start FUN_ov17_020f8bb4
FUN_ov17_020f8bb4: ; 0x020F8BB4
	ldr r0, _020F8BF0 ; =0x021161CC
	ldrb r1, [r0]
	cmp r1, #6
	moveq r0, #0x38
	bxeq lr
	cmp r1, #1
	bne _020F8BE4
	ldr r0, [r0, #8]
	mov r0, r0, lsr #4
	tst r0, #2
	moveq r0, #0x37
	bxeq lr
_020F8BE4:
	add r0, r1, #0x31
	and r0, r0, #0xff
	bx lr
_020F8BF0: .word 0x021161CC
	arm_func_end FUN_ov17_020f8bb4

	arm_func_start FUN_ov17_020f8bf4
FUN_ov17_020f8bf4: ; 0x020F8BF4
	stmfd sp!, {r4, lr}
	mov r0, #0x64
	mov r1, #4
	bl FUN_ov17_0210e0a8
	mov r1, r0
	ldr r4, _020F8C28 ; =0x021161EC
	mov r0, #8
	str r1, [r4]
	mov r2, #0xc
	bl FUN_ov17_0210d0a4
	ldr r1, [r4]
	str r0, [r1, #0x60]
	ldmfd sp!, {r4, pc}
_020F8C28: .word 0x021161EC
	arm_func_end FUN_ov17_020f8bf4

	arm_func_start FUN_ov17_020f8c2c
FUN_ov17_020f8c2c: ; 0x020F8C2C
	ldr r0, _020F8C38 ; =0x021161EC
	ldr r12, _020F8C3C ; =FUN_ov17_0210e0cc
	bx r12
_020F8C38: .word 0x021161EC
_020F8C3C: .word FUN_ov17_0210e0cc
	arm_func_end FUN_ov17_020f8c2c

	arm_func_start FUN_ov17_020f8c40
FUN_ov17_020f8c40: ; 0x020F8C40
	stmfd sp!, {r3, r4, r5, lr}
	ldr r1, _020F8C94 ; =0x021161EC
	mov r5, r0
	ldr r0, [r1]
	ldr r0, [r0, #0x60]
	bl FUN_ov17_0210d158
	mov r4, r0
	add r1, sp, #0
	mov r0, r5
	mov r2, #4
	bl FUN_ov17_0210c7fc
	add r2, r0, #0x20
	str r0, [r4, #8]
	add r0, r2, #0x10
	str r0, [r4]
	ldr r1, [r2, #4]
	mov r0, r4
	add r1, r2, r1
	add r1, r1, #8
	str r1, [r4, #4]
	ldmfd sp!, {r3, r4, r5, pc}
_020F8C94: .word 0x021161EC
	arm_func_end FUN_ov17_020f8c40

	arm_func_start FUN_ov17_020f8c98
FUN_ov17_020f8c98: ; 0x020F8C98
	stmfd sp!, {r4, lr}
	mov r4, r0
	ldr r0, [r4, #8]
	bl FUN_ov17_0210c8fc
	ldr r0, _020F8CC0 ; =0x021161EC
	mov r1, r4
	ldr r0, [r0]
	ldr r0, [r0, #0x60]
	bl FUN_ov17_0210d100
	ldmfd sp!, {r4, pc}
_020F8CC0: .word 0x021161EC
	arm_func_end FUN_ov17_020f8c98

	arm_func_start FUN_ov17_020f8cc4
FUN_ov17_020f8cc4: ; 0x020F8CC4
	mov r1, r1, lsl #0x10
	mov r1, r1, lsr #0x10
	ldmia r0, {r2, r3}
	ldr r0, [r2, r1, lsl #2]
	add r0, r3, r0
	bx lr
	arm_func_end FUN_ov17_020f8cc4

	arm_func_start FUN_ov17_020f8cdc
FUN_ov17_020f8cdc: ; 0x020F8CDC
	stmfd sp!, {r3, lr}
	mov r1, r1, lsl #0x10
	mov r1, r1, lsr #0x10
	ldmia r0, {r12, lr}
	ldr r0, [r12, r1, lsl #2]
	cmp r2, #0
	add r0, lr, r0
	addge r3, r3, #0x30
	movge r1, r2, lsl #1
	strgeh r3, [r0, r1]
	ldmfd sp!, {r3, pc}
	arm_func_end FUN_ov17_020f8cdc

	arm_func_start FUN_ov17_020f8d08
FUN_ov17_020f8d08: ; 0x020F8D08
	stmfd sp!, {r3, r4, r5, r6, lr}
	sub sp, sp, #0x1c
	mov r4, r0
	ldr r0, _020F8DDC ; =0x0001E2A4
	mov r1, #0x20
	bl FUN_ov17_0210e0a8
	ldr r5, _020F8DE0 ; =0x021161F0
	add r1, r0, #0x1e000
	str r0, [r5]
	str r4, [r1, #0x298]
	ldr r0, [r5]
	mov r12, #0
	add r0, r0, #0x1e000
	strb r12, [r0, #0x2a0]
	ldr r0, [r5]
	add r4, sp, #0
	add r0, r0, #0x1e000
	ldr lr, _020F8DE4 ; =0x02112D20
	strb r12, [r0, #0x2a1]
	mov r6, r4
	ldmia lr!, {r0, r1, r2, r3}
	stmia r4!, {r0, r1, r2, r3}
	ldmia lr, {r0, r1, r2}
	stmia r4, {r0, r1, r2}
	ldr r4, _020F8DE8 ; =0x021161F8
	mov r1, r12
	ldr r0, [r4]
	bl FUN_ov17_020f8cc4
	str r0, [sp, #4]
	ldr r0, [r4]
	mov r1, #1
	bl FUN_ov17_020f8cc4
	str r0, [sp, #8]
	bl FUN_ov17_020f8bb4
	strb r0, [sp, #0x18]
	ldr r0, [r5]
	mov r1, r6
	bl FUN_ov17_0210b7ac
	bl FUN_ov17_0210b9d8
	cmp r0, #0
	bne _020F8DB0
	bl FUN_02004160
_020F8DB0:
	mov r0, #0
	ldr r1, _020F8DEC ; =FUN_ov17_020f8ea4
	mov r2, r0
	mov r3, #0x78
	bl FUN_ov17_0210f314
	ldr r1, _020F8DE0 ; =0x021161F0
	ldr r1, [r1]
	add r1, r1, #0x1e000
	str r0, [r1, #0x29c]
	add sp, sp, #0x1c
	ldmfd sp!, {r3, r4, r5, r6, pc}
_020F8DDC: .word 0x0001E2A4
_020F8DE0: .word 0x021161F0
_020F8DE4: .word 0x02112D20
_020F8DE8: .word 0x021161F8
_020F8DEC: .word FUN_ov17_020f8ea4
	arm_func_end FUN_ov17_020f8d08

	arm_func_start FUN_ov17_020f8df0
FUN_ov17_020f8df0: ; 0x020F8DF0
	mov r0, #0
	ldr r1, _020F8E08 ; =FUN_ov17_020f8e10
	ldr r12, _020F8E0C ; =FUN_ov17_0210f314
	mov r2, r0
	mov r3, #0x78
	bx r12
_020F8E08: .word FUN_ov17_020f8e10
_020F8E0C: .word FUN_ov17_0210f314
	arm_func_end FUN_ov17_020f8df0

	arm_func_start FUN_ov17_020f8e10
FUN_ov17_020f8e10: ; 0x020F8E10
	stmfd sp!, {r4, lr}
	mov r4, r0
	bl FUN_ov17_0210b88c
	cmp r0, #0
	ldmeqfd sp!, {r4, pc}
	ldr r0, _020F8E48 ; =0x021161F0
	mov r1, r4
	ldr r0, [r0]
	mov r3, #1
	add r2, r0, #0x1e000
	mov r0, #0
	strb r3, [r2, #0x2a1]
	bl FUN_ov17_0210f3b8
	ldmfd sp!, {r4, pc}
_020F8E48: .word 0x021161F0
	arm_func_end FUN_ov17_020f8e10

	arm_func_start FUN_ov17_020f8e4c
FUN_ov17_020f8e4c: ; 0x020F8E4C
	ldr r0, _020F8E64 ; =0x021161F0
	ldr r0, [r0]
	cmp r0, #0
	moveq r0, #1
	movne r0, #0
	bx lr
_020F8E64: .word 0x021161F0
	arm_func_end FUN_ov17_020f8e4c

	arm_func_start FUN_ov17_020f8e68
FUN_ov17_020f8e68: ; 0x020F8E68
	ldr r1, _020F8E7C ; =0x021161F0
	ldr r1, [r1]
	add r1, r1, #0x1e000
	str r0, [r1, #0x298]
	bx lr
_020F8E7C: .word 0x021161F0
	arm_func_end FUN_ov17_020f8e68

	arm_func_start FUN_ov17_020f8e80
FUN_ov17_020f8e80: ; 0x020F8E80
	ldr r12, _020F8E88 ; =FUN_ov17_0210ba20
	bx r12
_020F8E88: .word FUN_ov17_0210ba20
	arm_func_end FUN_ov17_020f8e80

	arm_func_start FUN_ov17_020f8e8c
FUN_ov17_020f8e8c: ; 0x020F8E8C
	ldr r0, _020F8EA0 ; =0x021161F0
	ldr r0, [r0]
	add r0, r0, #0x2280
	add r0, r0, #0x1c000
	bx lr
_020F8EA0: .word 0x021161F0
	arm_func_end FUN_ov17_020f8e8c

	arm_func_start FUN_ov17_020f8ea4
FUN_ov17_020f8ea4: ; 0x020F8EA4
	stmfd sp!, {r3, r4, r5, r6, lr}
	sub sp, sp, #4
	mov r5, r0
	mov r4, #1
	bl FUN_ov17_0210ba54
	ldr r6, _020F9114 ; =0x021161F0
	ldr r0, [r6]
	add r0, r0, #0x1e000
	ldrb r1, [r0, #0x2a0]
	cmp r1, #0
	beq _020F8EFC
	ldrb r1, [r0, #0x2a1]
	cmp r1, #0
	bne _020F8EFC
	ldr r1, [r0, #0x298]
	cmp r1, #0
	addeq sp, sp, #4
	ldmeqfd sp!, {r3, r4, r5, r6, pc}
	mov r0, #0
	blx r1
	add sp, sp, #4
	ldmfd sp!, {r3, r4, r5, r6, pc}
_020F8EFC:
	add r0, sp, #1
	add r1, sp, #0
	bl FUN_ov17_0210bd88
	ldrb r0, [sp, #1]
	cmp r0, #0x1a
	bgt _020F8F90
	bge _020F9080
	cmp r0, #0x14
	bgt _020F8F80
	cmp r0, #0
	addge pc, pc, r0, lsl #2
	b _020F910C
_020F8F2C: ; jump table
	b _020F910C ; case 0
	b _020F910C ; case 1
	b _020F910C ; case 2
	b _020F910C ; case 3
	b _020F910C ; case 4
	b _020F8FB4 ; case 5
	b _020F910C ; case 6
	b _020F910C ; case 7
	b _020F910C ; case 8
	b _020F910C ; case 9
	b _020F910C ; case 10
	b _020F910C ; case 11
	b _020F90BC ; case 12
	b _020F9008 ; case 13
	b _020F910C ; case 14
	b _020F910C ; case 15
	b _020F910C ; case 16
	b _020F910C ; case 17
	b _020F910C ; case 18
	b _020F910C ; case 19
	b _020F9044 ; case 20
_020F8F80:
	cmp r0, #0x17
	beq _020F9044
	add sp, sp, #4
	ldmfd sp!, {r3, r4, r5, r6, pc}
_020F8F90:
	cmp r0, #0x1d
	bgt _020F8FA4
	beq _020F9080
	add sp, sp, #4
	ldmfd sp!, {r3, r4, r5, r6, pc}
_020F8FA4:
	cmp r0, #0x22
	beq _020F90F8
	add sp, sp, #4
	ldmfd sp!, {r3, r4, r5, r6, pc}
_020F8FB4:
	ldrb r0, [sp]
	cmp r0, #0
	addeq sp, sp, #4
	ldmeqfd sp!, {r3, r4, r5, r6, pc}
	ldr r0, [r6]
	add r5, r0, #0x2280
	bl FUN_ov17_0210bdcc
	add r1, r5, #0x1c000
	mov r2, #0x16
	bl MIi_CpuCopy16
	ldr r0, [r6]
	add r0, r0, #0x1e000
	ldr r1, [r0, #0x298]
	cmp r1, #0
	addeq sp, sp, #4
	streqb r4, [r0, #0x2a0]
	ldmeqfd sp!, {r3, r4, r5, r6, pc}
	mov r0, #0
	blx r1
	add sp, sp, #4
	ldmfd sp!, {r3, r4, r5, r6, pc}
_020F9008:
	ldrb r0, [sp]
	cmp r0, #0
	addeq sp, sp, #4
	ldmeqfd sp!, {r3, r4, r5, r6, pc}
	ldr r0, [r6]
	add r0, r0, #0x1e000
	ldr r1, [r0, #0x298]
	cmp r1, #0
	addeq sp, sp, #4
	streqb r4, [r0, #0x2a0]
	ldmeqfd sp!, {r3, r4, r5, r6, pc}
	mov r0, #1
	blx r1
	add sp, sp, #4
	ldmfd sp!, {r3, r4, r5, r6, pc}
_020F9044:
	ldrb r0, [sp]
	cmp r0, #0
	addeq sp, sp, #4
	ldmeqfd sp!, {r3, r4, r5, r6, pc}
	ldr r0, [r6]
	add r0, r0, #0x1e000
	ldr r1, [r0, #0x298]
	cmp r1, #0
	addeq sp, sp, #4
	streqb r4, [r0, #0x2a0]
	ldmeqfd sp!, {r3, r4, r5, r6, pc}
	mov r0, #3
	blx r1
	add sp, sp, #4
	ldmfd sp!, {r3, r4, r5, r6, pc}
_020F9080:
	ldrb r0, [sp]
	cmp r0, #0
	addeq sp, sp, #4
	ldmeqfd sp!, {r3, r4, r5, r6, pc}
	ldr r0, [r6]
	add r0, r0, #0x1e000
	ldr r1, [r0, #0x298]
	cmp r1, #0
	addeq sp, sp, #4
	streqb r4, [r0, #0x2a0]
	ldmeqfd sp!, {r3, r4, r5, r6, pc}
	mov r0, #4
	blx r1
	add sp, sp, #4
	ldmfd sp!, {r3, r4, r5, r6, pc}
_020F90BC:
	ldrb r0, [sp]
	cmp r0, #0
	addeq sp, sp, #4
	ldmeqfd sp!, {r3, r4, r5, r6, pc}
	ldr r0, [r6]
	add r0, r0, #0x1e000
	ldr r1, [r0, #0x298]
	cmp r1, #0
	addeq sp, sp, #4
	streqb r4, [r0, #0x2a0]
	ldmeqfd sp!, {r3, r4, r5, r6, pc}
	mov r0, #2
	blx r1
	add sp, sp, #4
	ldmfd sp!, {r3, r4, r5, r6, pc}
_020F90F8:
	mov r1, r5
	mov r0, #0
	bl FUN_ov17_0210f3b8
	ldr r0, _020F9118 ; =0x021161F0
	bl FUN_ov17_0210e0cc
_020F910C:
	add sp, sp, #4
	ldmfd sp!, {r3, r4, r5, r6, pc}
_020F9114: .word 0x021161F0
_020F9118: .word 0x021161F0
	arm_func_end FUN_ov17_020f8ea4

	arm_func_start FUN_ov17_020f911c
FUN_ov17_020f911c: ; 0x020F911C
	stmfd sp!, {r3, lr}
	sub sp, sp, #8
	mov r0, #0xc
	sub r1, r0, #0x10
	bl FUN_ov17_0210e0a8
	ldr r1, _020F9178 ; =0x021161F4
	ldr r12, _020F917C ; =FUN_ov17_020f92b8
	str r0, [r1]
	ldr r2, _020F9180 ; =FUN_ov17_020f9290
	ldr r3, _020F9184 ; =FUN_ov17_020f92a8
	str r12, [sp]
	mov r12, #0x800
	mov r0, #0xf
	mov r1, #0x40
	str r12, [sp, #4]
	blx FUN_ov17_020f42ec
	cmp r0, #1
	beq _020F9168
	bl FUN_02004160
_020F9168:
	mov r0, #0xa
	bl FUN_02001eb0
	add sp, sp, #8
	ldmfd sp!, {r3, pc}
_020F9178: .word 0x021161F4
_020F917C: .word FUN_ov17_020f92b8
_020F9180: .word FUN_ov17_020f9290
_020F9184: .word FUN_ov17_020f92a8
	arm_func_end FUN_ov17_020f911c

	arm_func_start FUN_ov17_020f9188
FUN_ov17_020f9188: ; 0x020F9188
	stmfd sp!, {r3, lr}
	blx FUN_ov17_020f43d4
	cmp r0, #1
	beq _020F919C
	bl FUN_02004160
_020F919C:
	ldr r0, _020F91A8 ; =0x021161F4
	bl FUN_ov17_0210e0cc
	ldmfd sp!, {r3, pc}
_020F91A8: .word 0x021161F4
	arm_func_end FUN_ov17_020f9188

	arm_func_start FUN_ov17_020f91ac
FUN_ov17_020f91ac: ; 0x020F91AC
	stmfd sp!, {r3, lr}
	sub sp, sp, #0xe8
	ldr r1, _020F9260 ; =0x021161F4
	ldr r1, [r1]
	ldr r1, [r1]
	cmp r1, #7
	addls pc, pc, r1, lsl #2
	b _020F9258
_020F91CC: ; jump table
	b _020F91EC ; case 0
	b _020F91EC ; case 1
	b _020F91F8 ; case 2
	b _020F91EC ; case 3
	b _020F9204 ; case 4
	b _020F91EC ; case 5
	b _020F9210 ; case 6
	b _020F9254 ; case 7
_020F91EC:
	add sp, sp, #0xe8
	mov r0, #0
	ldmfd sp!, {r3, pc}
_020F91F8:
	add sp, sp, #0xe8
	mov r0, #1
	ldmfd sp!, {r3, pc}
_020F9204:
	add sp, sp, #0xe8
	mov r0, #2
	ldmfd sp!, {r3, pc}
_020F9210:
	add r0, sp, #0
	blx FUN_ov17_020f44a0
	cmp r0, #1
	beq _020F9224
	bl FUN_02004160
_020F9224:
	ldr r0, [sp, #0x20]
	cmp r0, #0
	blt _020F9248
	cmp r0, #3
	ldrle r0, [sp, #0x24]
	cmple r0, #1
	addeq sp, sp, #0xe8
	moveq r0, #3
	ldmeqfd sp!, {r3, pc}
_020F9248:
	add sp, sp, #0xe8
	mov r0, #5
	ldmfd sp!, {r3, pc}
_020F9254:
	mov r0, #4
_020F9258:
	add sp, sp, #0xe8
	ldmfd sp!, {r3, pc}
_020F9260: .word 0x021161F4
	arm_func_end FUN_ov17_020f91ac

	arm_func_start FUN_ov17_020f9264
FUN_ov17_020f9264: ; 0x020F9264
	stmfd sp!, {r3, lr}
	sub sp, sp, #0xe8
	add r0, sp, #0
	blx FUN_ov17_020f44a0
	cmp r0, #1
	beq _020F9280
	bl FUN_02004160
_020F9280:
	add r0, sp, #0
	bl FUN_ov17_02107650
	add sp, sp, #0xe8
	ldmfd sp!, {r3, pc}
	arm_func_end FUN_ov17_020f9264

	arm_func_start FUN_ov17_020f9290
FUN_ov17_020f9290: ; 0x020F9290
	ldr r3, _020F92A4 ; =0x021161F4
	ldmia r0, {r0, r1, r2}
	ldr r3, [r3]
	stmia r3, {r0, r1, r2}
	bx lr
_020F92A4: .word 0x021161F4
	arm_func_end FUN_ov17_020f9290

	arm_func_start FUN_ov17_020f92a8
FUN_ov17_020f92a8: ; 0x020F92A8
	ldr r12, _020F92B4 ; =FUN_ov17_0210e0a8
	mov r1, #0x20
	bx r12
_020F92B4: .word FUN_ov17_0210e0a8
	arm_func_end FUN_ov17_020f92a8

	arm_func_start FUN_ov17_020f92b8
FUN_ov17_020f92b8: ; 0x020F92B8
	ldr r12, _020F92C0 ; =FUN_ov17_0210e110
	bx r12
_020F92C0: .word FUN_ov17_0210e110
	arm_func_end FUN_ov17_020f92b8

	arm_func_start FUN_ov17_020f92c4
FUN_ov17_020f92c4: ; 0x020F92C4
	stmfd sp!, {r4, r5, r6, lr}
	mov r6, #3
	mov r5, #0x3f
	mov r4, #0x14
	mov r0, r6
	mov r2, r5
	mov r3, r4
	mov r1, #1
	bl FUN_ov17_0210d238
	mov r0, r6
	mov r2, r5
	mov r3, r4
	mov r1, #0
	bl FUN_ov17_0210d238
	ldr r0, _020F9308 ; =FUN_ov17_020f930c
	bl FUN_ov17_020f8ad4
	ldmfd sp!, {r4, r5, r6, pc}
_020F9308: .word FUN_ov17_020f930c
	arm_func_end FUN_ov17_020f92c4

	arm_func_start FUN_ov17_020f930c
FUN_ov17_020f930c: ; 0x020F930C
	stmfd sp!, {r3, r4, r5, lr}
	mov r5, #1
	mov r0, r5
	bl FUN_ov17_0210d214
	cmp r0, #0
	ldmnefd sp!, {r3, r4, r5, pc}
	mov r4, #0
	mov r0, r4
	bl FUN_ov17_0210d214
	cmp r0, #0
	ldmnefd sp!, {r3, r4, r5, pc}
	mov r0, r4
	mov r1, r4
	bl FUN_ov17_0210f428
	mov r0, r5
	mov r1, r4
	bl FUN_ov17_0210f428
	mov r0, r5
	bl FUN_ov17_0210cf44
	mov r0, r4
	bl FUN_ov17_0210cf44
	bl FUN_ov17_020f5310
	bl FUN_ov17_020f50b4
	ldr r0, _020F9384 ; =0x021161F8
	ldr r0, [r0]
	bl FUN_ov17_020f8c98
	bl FUN_ov17_020f8c2c
	bl FUN_ov17_02107084
	bl FUN_ov17_020f8ba0
	ldmfd sp!, {r3, r4, r5, pc}
_020F9384: .word 0x021161F8
	arm_func_end FUN_ov17_020f930c

	arm_func_start FUN_ov17_020f9388
FUN_ov17_020f9388: ; 0x020F9388
	stmfd sp!, {r4, lr}
	bl FUN_ov17_02107044
	bl FUN_ov17_020f8bf4
	bl FUN_ov17_020f5094
	bl FUN_ov17_020f5298
	bl FUN_ov17_020f4cfc
	bl FUN_ov17_020f8b5c
	cmp r0, #1
	bne _020F93C4
	mov r0, #2
	bl FUN_ov17_020f8b84
	cmp r0, #0
	beq _020F93C4
	ldr r0, _020F94F0 ; =0x02112DC8
	b _020F93D0
_020F93C4:
	bl FUN_ov17_020f8b5c
	ldr r1, _020F94F4 ; =0x02112DAC
	ldr r0, [r1, r0, lsl #2]
_020F93D0:
	bl FUN_ov17_020f8c40
	ldr r1, _020F94F8 ; =0x021161F8
	str r0, [r1]
	ldr r0, _020F94FC ; =0x02112DD8
	bl FUN_ov17_020f4e20
	mov r1, r0
	mov r0, #1
	bl FUN_ov17_0210cf14
	ldr r0, _020F9500 ; =0x02112DEC
	bl FUN_ov17_020f4e20
	mov r1, r0
	mov r0, #0
	bl FUN_ov17_0210cf14
	ldr r0, _020F9504 ; =0x02112E00
	ldr r1, _020F9508 ; =0x020058CC
	bl FUN_ov17_020f4e84
	ldr r0, _020F950C ; =0x02112E14
	ldr r1, _020F9510 ; =0x02005160
	bl FUN_ov17_020f4e84
	ldr r0, _020F9514 ; =0x02112E28
	ldr r1, _020F9518 ; =0x02005398
	bl FUN_ov17_020f4e84
	ldr r0, _020F951C ; =0x02112E40
	ldr r1, _020F9520 ; =0x02005218
	bl FUN_ov17_020f4e84
	ldr r0, _020F9524 ; =0x02112E58
	ldr r1, _020F9528 ; =0x0200593C
	bl FUN_ov17_020f4e84
	ldr r0, _020F952C ; =0x02112E70
	ldr r1, _020F9530 ; =FUN_020050fc
	bl FUN_ov17_020f4e84
	ldr r0, _020F9534 ; =0x02112E88
	ldr r1, _020F9538 ; =0x02005334
	bl FUN_ov17_020f4e84
	ldr r0, _020F953C ; =0x02112EA0
	ldr r1, _020F9540 ; =0x020051BC
	bl FUN_ov17_020f4e84
	bl FUN_ov17_020f8b6c
	cmp r0, #0
	beq _020F947C
	cmp r0, #1
	beq _020F9484
	b _020F9490
_020F947C:
	ldr r0, _020F9544 ; =0x02112EB8
	b _020F9488
_020F9484:
	ldr r0, _020F9548 ; =0x02112ECC
_020F9488:
	ldr r1, _020F954C ; =FUN_0200554c
	bl FUN_ov17_020f4e84
_020F9490:
	ldr r2, _020F9550 ; =0x0400100A
	mov r4, #2
	ldrh r0, [r2]
	sub r3, r2, #0x1000
	mov r1, r4
	bic r0, r0, #3
	orr r0, r0, #3
	strh r0, [r2]
	ldrh r2, [r3]
	mov r0, #1
	bic r2, r2, #3
	orr r2, r2, #3
	strh r2, [r3]
	ldrh r2, [r3]
	bic r2, r2, #3
	orr r2, r2, #3
	strh r2, [r3]
	bl FUN_ov17_0210dcd0
	mov r1, r4
	mov r0, #0
	bl FUN_ov17_0210dcd0
	ldr r0, _020F9554 ; =FUN_ov17_020f9558
	bl FUN_ov17_020f8ad4
	ldmfd sp!, {r4, pc}
_020F94F0: .word 0x02112DC8
_020F94F4: .word 0x02112DAC
_020F94F8: .word 0x021161F8
_020F94FC: .word 0x02112DD8
_020F9500: .word 0x02112DEC
_020F9504: .word 0x02112E00
_020F9508: .word 0x020058CC
_020F950C: .word 0x02112E14
_020F9510: .word 0x02005160
_020F9514: .word 0x02112E28
_020F9518: .word 0x02005398
_020F951C: .word 0x02112E40
_020F9520: .word 0x02005218
_020F9524: .word 0x02112E58
_020F9528: .word 0x0200593C
_020F952C: .word 0x02112E70
_020F9530: .word FUN_020050fc
_020F9534: .word 0x02112E88
_020F9538: .word 0x02005334
_020F953C: .word 0x02112EA0
_020F9540: .word 0x020051BC
_020F9544: .word 0x02112EB8
_020F9548: .word 0x02112ECC
_020F954C: .word FUN_0200554c
_020F9550: .word 0x0400100A
_020F9554: .word FUN_ov17_020f9558
	arm_func_end FUN_ov17_020f9388

	arm_func_start FUN_ov17_020f9558
FUN_ov17_020f9558: ; 0x020F9558
	stmfd sp!, {r3, r4, r5, lr}
	mov r5, #2
	mov r4, #0x14
	mov r0, r5
	mov r2, r5
	mov r3, r4
	mov r1, #1
	bl FUN_ov17_0210d238
	mov r0, r5
	mov r2, r5
	mov r3, r4
	mov r1, #0
	bl FUN_ov17_0210d238
	ldr r0, _020F9598 ; =FUN_ov17_020f959c
	bl FUN_ov17_020f8ad4
	ldmfd sp!, {r3, r4, r5, pc}
_020F9598: .word FUN_ov17_020f959c
	arm_func_end FUN_ov17_020f9558

	arm_func_start FUN_ov17_020f959c
FUN_ov17_020f959c: ; 0x020F959C
	stmfd sp!, {r3, r4, r5, lr}
	mov r5, #1
	mov r0, r5
	bl FUN_ov17_0210d214
	cmp r0, #0
	ldmnefd sp!, {r3, r4, r5, pc}
	mov r4, #0
	mov r0, r4
	bl FUN_ov17_0210d214
	cmp r0, #0
	ldmnefd sp!, {r3, r4, r5, pc}
	bl FUN_ov17_020f8b6c
	cmp r0, #0
	beq _020F95E0
	cmp r0, #1
	beq _020F95F8
	ldmfd sp!, {r3, r4, r5, pc}
_020F95E0:
	mov r0, r4
	mov r1, r5
	bl FUN_ov17_020f8ae4
	ldr r0, _020F9610 ; =FUN_ov17_020f9618
	bl FUN_ov17_020f8ad4
	ldmfd sp!, {r3, r4, r5, pc}
_020F95F8:
	mov r0, r5
	mov r1, r5
	bl FUN_ov17_020f8ae4
	ldr r0, _020F9614 ; =FUN_ov17_02103924
	bl FUN_ov17_020f8ad4
	ldmfd sp!, {r3, r4, r5, pc}
_020F9610: .word FUN_ov17_020f9618
_020F9614: .word FUN_ov17_02103924
	arm_func_end FUN_ov17_020f959c

	arm_func_start FUN_ov17_020f9618
FUN_ov17_020f9618: ; 0x020F9618
	stmfd sp!, {r4, lr}
	bl FUN_ov17_020f9698
	mov r4, #0
	mov r0, r4
	bl FUN_ov17_020f5324
	mov r0, #0x2e
	mov r2, r4
	sub r1, r0, #0x2f
	bl FUN_ov17_020f4d10
	mov r0, #4
	bl FUN_ov17_02108744
	ldr r0, _020F9680 ; =0x021161FC
	ldr r3, _020F9684 ; =0x02112104
	ldrb r0, [r0]
	ldr r1, _020F9688 ; =0x02112108
	ldr r2, _020F968C ; =0x02112106
	mov r12, r0, lsl #3
	ldrh r0, [r3, r12]
	ldrh r1, [r1, r12]
	ldrh r2, [r2, r12]
	ldr r3, _020F9690 ; =0x0211210A
	ldrh r3, [r3, r12]
	bl FUN_ov17_020f5178
	ldr r0, _020F9694 ; =FUN_ov17_020f977c
	bl FUN_ov17_020f8ad4
	ldmfd sp!, {r4, pc}
_020F9680: .word 0x021161FC
_020F9684: .word 0x02112104
_020F9688: .word 0x02112108
_020F968C: .word 0x02112106
_020F9690: .word 0x0211210A
_020F9694: .word FUN_ov17_020f977c
	arm_func_end FUN_ov17_020f9618

	arm_func_start FUN_ov17_020f9698
FUN_ov17_020f9698: ; 0x020F9698
	stmfd sp!, {r3, lr}
	sub sp, sp, #0x18
	ldr r12, _020F9754 ; =0x02112114
	add r3, sp, #0
	mov r2, #0xb
_020F96AC:
	ldrb r0, [r12, #1]
	ldrb r1, [r12], #2
	subs r2, r2, #1
	strb r0, [r3, #1]
	strb r1, [r3], #2
	bne _020F96AC
	ldr r0, _020F9758 ; =0x02112EE0
	ldr r1, _020F975C ; =0x0200593C
	bl FUN_ov17_020f4e84
	ldr r0, _020F9760 ; =0x02112EF8
	ldr r1, _020F9764 ; =FUN_020050fc
	bl FUN_ov17_020f4e84
	ldr r0, _020F9768 ; =0x02112F10
	ldr r1, _020F976C ; =FUN_020055bc
	bl FUN_ov17_020f4e84
	add r0, sp, #0
	bl FUN_ov17_020f4e20
	mov r1, #0
	mov r2, #4
	bl FUN_ov17_0210c7fc
	ldr r1, _020F9770 ; =0x021161FC
	ldr r2, _020F9774 ; =0x04001008
	str r0, [r1, #4]
	ldrh r0, [r2]
	ldr r1, _020F9778 ; =0x0400000A
	bic r0, r0, #3
	orr r0, r0, #3
	strh r0, [r2]
	ldrh r0, [r2, #2]
	bic r0, r0, #3
	orr r0, r0, #3
	strh r0, [r2, #2]
	ldrh r0, [r1]
	bic r0, r0, #3
	orr r0, r0, #3
	strh r0, [r1]
	ldrh r0, [r1, #2]
	bic r0, r0, #3
	orr r0, r0, #3
	strh r0, [r1, #2]
	add sp, sp, #0x18
	ldmfd sp!, {r3, pc}
_020F9754: .word 0x02112114
_020F9758: .word 0x02112EE0
_020F975C: .word 0x0200593C
_020F9760: .word 0x02112EF8
_020F9764: .word FUN_020050fc
_020F9768: .word 0x02112F10
_020F976C: .word FUN_020055bc
_020F9770: .word 0x021161FC
_020F9774: .word 0x04001008
_020F9778: .word 0x0400000A
	arm_func_end FUN_ov17_020f9698

	arm_func_start FUN_ov17_020f977c
FUN_ov17_020f977c: ; 0x020F977C
	stmfd sp!, {r4, r5, r6, r7, r8, lr}
	mov r7, #1
	mov r8, #2
	mov r6, #8
	mov r0, r8
	mov r1, r7
	mov r2, r7
	mov r3, r6
	bl FUN_ov17_0210d238
	mov r5, #0
	mov r4, #0x14
	mov r0, r8
	mov r1, r5
	mov r2, r4
	mov r3, r6
	bl FUN_ov17_0210d238
	mov r0, r7
	mov r1, r7
	bl FUN_ov17_0210dcd0
	mov r0, r5
	mov r1, r4
	bl FUN_ov17_0210dcd0
	ldr r0, _020F97E0 ; =FUN_ov17_020f97e4
	bl FUN_ov17_020f8ad4
	ldmfd sp!, {r4, r5, r6, r7, r8, pc}
_020F97E0: .word FUN_ov17_020f97e4
	arm_func_end FUN_ov17_020f977c

	arm_func_start FUN_ov17_020f97e4
FUN_ov17_020f97e4: ; 0x020F97E4
	stmfd sp!, {r4, lr}
	mov r0, #1
	bl FUN_ov17_0210d214
	cmp r0, #0
	ldmnefd sp!, {r4, pc}
	mov r4, #0
	mov r0, r4
	bl FUN_ov17_0210d214
	cmp r0, #0
	ldmnefd sp!, {r4, pc}
	mov r0, r4
	bl FUN_ov17_020f4f14
	ldr r0, _020F9820 ; =FUN_ov17_020f9824
	bl FUN_ov17_020f8ad4
	ldmfd sp!, {r4, pc}
_020F9820: .word FUN_ov17_020f9824
	arm_func_end FUN_ov17_020f97e4

	arm_func_start FUN_ov17_020f9824
FUN_ov17_020f9824: ; 0x020F9824
	stmfd sp!, {r3, lr}
	bl FUN_ov17_020f47c4
	cmn r0, #2
	ldmeqfd sp!, {r3, pc}
	bl FUN_ov17_020f4834
	ldr r0, _020F9844 ; =FUN_ov17_020f9848
	bl FUN_ov17_020f8ad4
	ldmfd sp!, {r3, pc}
_020F9844: .word FUN_ov17_020f9848
	arm_func_end FUN_ov17_020f9824

	arm_func_start FUN_ov17_020f9848
FUN_ov17_020f9848: ; 0x020F9848
	stmfd sp!, {r3, lr}
	bl FUN_ov17_020f985c
	bl FUN_ov17_020f998c
	bl FUN_ov17_020f9990
	ldmfd sp!, {r3, pc}
	arm_func_end FUN_ov17_020f9848

	arm_func_start FUN_ov17_020f985c
FUN_ov17_020f985c: ; 0x020F985C
	stmfd sp!, {r3, r4, r5, lr}
	ldr r5, _020F9974 ; =0x021120F4
	mov r4, #0
_020F9868:
	add r0, r5, r4, lsl #3
	bl FUN_ov17_0210e600
	cmp r0, #0
	beq _020F98B8
	mov r0, #1
	bl FUN_ov17_020f47d8
	and r1, r4, #0xff
	mov r5, r1, lsl #3
	ldr r0, _020F9978 ; =0x02112104
	ldr r1, _020F997C ; =0x02112108
	ldr r2, _020F9980 ; =0x02112106
	ldr r3, _020F9984 ; =0x0211210A
	ldr r12, _020F9988 ; =0x021161FC
	ldrh r0, [r0, r5]
	ldrh r1, [r1, r5]
	ldrh r2, [r2, r5]
	ldrh r3, [r3, r5]
	strb r4, [r12]
	bl FUN_ov17_020f5178
	ldmfd sp!, {r3, r4, r5, pc}
_020F98B8:
	add r4, r4, #1
	cmp r4, #2
	blo _020F9868
	mov r5, #1
	mov r0, r5
	bl FUN_ov17_0210e4b8
	cmp r0, #0
	beq _020F98E4
	mov r0, r5
	bl FUN_ov17_020f47d8
	ldmfd sp!, {r3, r4, r5, pc}
_020F98E4:
	mov r4, #2
	mov r0, r4
	bl FUN_ov17_0210e4b8
	cmp r0, #0
	beq _020F9904
	mov r0, #0
	bl FUN_ov17_020f47d8
	ldmfd sp!, {r3, r4, r5, pc}
_020F9904:
	mov r0, #0x40
	bl FUN_ov17_0210e4f8
	cmp r0, #0
	beq _020F9920
	mov r0, r5
	bl FUN_ov17_020f9b04
	ldmfd sp!, {r3, r4, r5, pc}
_020F9920:
	mov r0, #0x80
	bl FUN_ov17_0210e4f8
	cmp r0, #0
	beq _020F993C
	mov r0, #3
	bl FUN_ov17_020f9b04
	ldmfd sp!, {r3, r4, r5, pc}
_020F993C:
	mov r0, #0x20
	bl FUN_ov17_0210e4f8
	cmp r0, #0
	beq _020F9958
	mov r0, #0
	bl FUN_ov17_020f9b04
	ldmfd sp!, {r3, r4, r5, pc}
_020F9958:
	mov r0, #0x10
	bl FUN_ov17_0210e4f8
	cmp r0, #0
	ldmeqfd sp!, {r3, r4, r5, pc}
	mov r0, r4
	bl FUN_ov17_020f9b04
	ldmfd sp!, {r3, r4, r5, pc}
_020F9974: .word 0x021120F4
_020F9978: .word 0x02112104
_020F997C: .word 0x02112108
_020F9980: .word 0x02112106
_020F9984: .word 0x0211210A
_020F9988: .word 0x021161FC
	arm_func_end FUN_ov17_020f985c

	arm_func_start FUN_ov17_020f998c
FUN_ov17_020f998c: ; 0x020F998C
	bx lr
	arm_func_end FUN_ov17_020f998c

	arm_func_start FUN_ov17_020f9990
FUN_ov17_020f9990: ; 0x020F9990
	stmfd sp!, {r3, lr}
	bl FUN_ov17_020f47c4
	cmp r0, #0
	beq _020F99AC
	cmp r0, #1
	beq _020F99C0
	ldmfd sp!, {r3, pc}
_020F99AC:
	mov r0, #7
	bl FUN_ov17_02107c40
	ldr r0, _020F99D8 ; =FUN_ov17_020f92c4
	bl FUN_ov17_020f8ad4
	ldmfd sp!, {r3, pc}
_020F99C0:
	mov r0, #6
	bl FUN_ov17_02107c40
	bl FUN_ov17_020f9b70
	ldr r0, _020F99DC ; =FUN_ov17_020f99e0
	bl FUN_ov17_020f8ad4
	ldmfd sp!, {r3, pc}
_020F99D8: .word FUN_ov17_020f92c4
_020F99DC: .word FUN_ov17_020f99e0
	arm_func_end FUN_ov17_020f9990

	arm_func_start FUN_ov17_020f99e0
FUN_ov17_020f99e0: ; 0x020F99E0
	stmfd sp!, {r3, lr}
	bl FUN_ov17_020f484c
	mov r0, #8
	bl FUN_ov17_0210d424
	ldr r0, _020F99FC ; =FUN_ov17_020f9a00
	bl FUN_ov17_020f8ad4
	ldmfd sp!, {r3, pc}
_020F99FC: .word FUN_ov17_020f9a00
	arm_func_end FUN_ov17_020f99e0

	arm_func_start FUN_ov17_020f9a00
FUN_ov17_020f9a00: ; 0x020F9A00
	stmfd sp!, {r4, r5, r6, lr}
	mov r6, #1
	mov r0, r6
	bl FUN_ov17_0210d214
	cmp r0, #0
	ldmnefd sp!, {r4, r5, r6, pc}
	mov r5, #3
	mov r4, #8
	mov r0, r5
	mov r1, r6
	mov r2, r6
	mov r3, r4
	bl FUN_ov17_0210d238
	mov r0, r5
	mov r3, r4
	mov r1, #0
	mov r2, #0x16
	bl FUN_ov17_0210d238
	ldr r0, _020F9A54 ; =FUN_ov17_020f9a58
	bl FUN_ov17_020f8ad4
	ldmfd sp!, {r4, r5, r6, pc}
_020F9A54: .word FUN_ov17_020f9a58
	arm_func_end FUN_ov17_020f9a00

	arm_func_start FUN_ov17_020f9a58
FUN_ov17_020f9a58: ; 0x020F9A58
	stmfd sp!, {r4, r5, r6, lr}
	mov r6, #1
	mov r0, r6
	bl FUN_ov17_0210d214
	cmp r0, #0
	ldmnefd sp!, {r4, r5, r6, pc}
	mov r5, #0
	mov r0, r5
	bl FUN_ov17_0210d214
	cmp r0, #0
	ldmnefd sp!, {r4, r5, r6, pc}
	bl FUN_ov17_020f5258
	bl FUN_ov17_020f4de8
	ldr r4, _020F9AF8 ; =0x021161FC
	ldr r0, [r4, #4]
	bl FUN_ov17_0210c8fc
	mov r0, r6
	mov r1, r6
	bl FUN_ov17_0210dd24
	mov r0, r5
	mov r1, #0x14
	bl FUN_ov17_0210dd24
	ldrb r0, [r4]
	cmp r0, #0
	beq _020F9AC8
	cmp r0, #1
	beq _020F9AE0
	ldmfd sp!, {r4, r5, r6, pc}
_020F9AC8:
	mov r0, r6
	mov r1, r5
	bl FUN_ov17_020f8ae4
	ldr r0, _020F9AFC ; =FUN_ov17_02103924
	bl FUN_ov17_020f8ad4
	ldmfd sp!, {r4, r5, r6, pc}
_020F9AE0:
	mov r0, r5
	mov r1, r5
	bl FUN_ov17_020f8ae4
	ldr r0, _020F9B00 ; =FUN_ov17_020fa6d0
	bl FUN_ov17_020f8ad4
	ldmfd sp!, {r4, r5, r6, pc}
_020F9AF8: .word 0x021161FC
_020F9AFC: .word FUN_ov17_02103924
_020F9B00: .word FUN_ov17_020fa6d0
	arm_func_end FUN_ov17_020f9a58

	arm_func_start FUN_ov17_020f9b04
FUN_ov17_020f9b04: ; 0x020F9B04
	stmfd sp!, {r4, lr}
	cmp r0, #1
	cmpne r0, #3
	ldmeqfd sp!, {r4, pc}
	ldr r4, _020F9B5C ; =0x021161FC
	mov r0, #8
	ldrb r1, [r4]
	eor r1, r1, #1
	strb r1, [r4]
	bl FUN_ov17_02107c40
	ldrb r2, [r4]
	ldr r0, _020F9B60 ; =0x02112104
	ldr r1, _020F9B64 ; =0x02112108
	mov r4, r2, lsl #3
	ldr r2, _020F9B68 ; =0x02112106
	ldr r3, _020F9B6C ; =0x0211210A
	ldrh r0, [r0, r4]
	ldrh r1, [r1, r4]
	ldrh r2, [r2, r4]
	ldrh r3, [r3, r4]
	bl FUN_ov17_020f5178
	ldmfd sp!, {r4, pc}
_020F9B5C: .word 0x021161FC
_020F9B60: .word 0x02112104
_020F9B64: .word 0x02112108
_020F9B68: .word 0x02112106
_020F9B6C: .word 0x0211210A
	arm_func_end FUN_ov17_020f9b04

	arm_func_start FUN_ov17_020f9b70
FUN_ov17_020f9b70: ; 0x020F9B70
	stmfd sp!, {r3, lr}
	ldr r1, _020F9BA8 ; =0x021120F0
	ldr r0, _020F9BAC ; =0x021161FC
	ldrb r3, [r1]
	ldrb r2, [r1, #1]
	ldrb r1, [r0]
	add r12, sp, #0
	strb r3, [sp]
	strb r2, [sp, #1]
	ldrb r1, [r12, r1]
	ldr r0, [r0, #4]
	mov r2, r1
	bl FUN_ov17_02106444
	ldmfd sp!, {r3, pc}
_020F9BA8: .word 0x021120F0
_020F9BAC: .word 0x021161FC
	arm_func_end FUN_ov17_020f9b70

	arm_func_start FUN_ov17_020f9bb0
FUN_ov17_020f9bb0: ; 0x020F9BB0
	stmfd sp!, {r4, lr}
	ldr r0, _020F9BF0 ; =0x02116204
	mov r4, #0
	strb r4, [r0]
	bl FUN_ov17_020f9bf8
	mov r0, #0x12
	bl FUN_ov17_020f5324
	mov r0, #0x3b
	mov r2, r4
	sub r1, r0, #0x3c
	bl FUN_ov17_020f4d10
	mov r0, #0x17
	bl FUN_ov17_020f4f4c
	ldr r0, _020F9BF4 ; =FUN_ov17_020f9c78
	bl FUN_ov17_020f8ad4
	ldmfd sp!, {r4, pc}
_020F9BF0: .word 0x02116204
_020F9BF4: .word FUN_ov17_020f9c78
	arm_func_end FUN_ov17_020f9bb0

	arm_func_start FUN_ov17_020f9bf8
FUN_ov17_020f9bf8: ; 0x020F9BF8
	stmfd sp!, {r3, lr}
	ldr r0, _020F9C68 ; =0x02112F24
	ldr r1, _020F9C6C ; =FUN_020055bc
	bl FUN_ov17_020f4e84
	ldr r3, _020F9C70 ; =0x04001008
	ldr r1, _020F9C74 ; =0x0400000A
	ldrh r0, [r3]
	sub r2, r3, #0x1000
	bic r0, r0, #3
	orr r0, r0, #3
	strh r0, [r3]
	ldrh r0, [r3, #2]
	bic r0, r0, #3
	orr r0, r0, #3
	strh r0, [r3, #2]
	ldrh r0, [r2]
	bic r0, r0, #3
	orr r0, r0, #3
	strh r0, [r2]
	ldrh r0, [r1]
	bic r0, r0, #3
	orr r0, r0, #3
	strh r0, [r1]
	ldrh r0, [r1, #2]
	bic r0, r0, #3
	orr r0, r0, #3
	strh r0, [r1, #2]
	ldmfd sp!, {r3, pc}
_020F9C68: .word 0x02112F24
_020F9C6C: .word FUN_020055bc
_020F9C70: .word 0x04001008
_020F9C74: .word 0x0400000A
	arm_func_end FUN_ov17_020f9bf8

	arm_func_start FUN_ov17_020f9c78
FUN_ov17_020f9c78: ; 0x020F9C78
	stmfd sp!, {r4, r5, r6, r7, r8, lr}
	mov r7, #1
	mov r8, #2
	mov r6, #8
	mov r0, r8
	mov r1, r7
	mov r2, r7
	mov r3, r6
	bl FUN_ov17_0210d238
	mov r5, #0
	mov r4, #0x15
	mov r0, r8
	mov r1, r5
	mov r2, r4
	mov r3, r6
	bl FUN_ov17_0210d238
	mov r0, r7
	mov r1, r7
	bl FUN_ov17_0210dcd0
	mov r0, r5
	mov r1, r4
	bl FUN_ov17_0210dcd0
	ldr r0, _020F9CDC ; =FUN_ov17_020f9ce0
	bl FUN_ov17_020f8ad4
	ldmfd sp!, {r4, r5, r6, r7, r8, pc}
_020F9CDC: .word FUN_ov17_020f9ce0
	arm_func_end FUN_ov17_020f9c78

	arm_func_start FUN_ov17_020f9ce0
FUN_ov17_020f9ce0: ; 0x020F9CE0
	stmfd sp!, {r3, lr}
	mov r0, #1
	bl FUN_ov17_0210d214
	cmp r0, #0
	ldmnefd sp!, {r3, pc}
	mov r0, #0
	bl FUN_ov17_0210d214
	cmp r0, #0
	ldmnefd sp!, {r3, pc}
	mov r0, #3
	bl FUN_ov17_020f4f14
	ldr r0, _020F9D18 ; =FUN_ov17_020f9d1c
	bl FUN_ov17_020f8ad4
	ldmfd sp!, {r3, pc}
_020F9D18: .word FUN_ov17_020f9d1c
	arm_func_end FUN_ov17_020f9ce0

	arm_func_start FUN_ov17_020f9d1c
FUN_ov17_020f9d1c: ; 0x020F9D1C
	stmfd sp!, {r3, lr}
	bl FUN_ov17_020f47c4
	cmn r0, #2
	ldmeqfd sp!, {r3, pc}
	bl FUN_ov17_020f4834
	ldr r0, _020F9D3C ; =FUN_ov17_020f9d40
	bl FUN_ov17_020f8ad4
	ldmfd sp!, {r3, pc}
_020F9D3C: .word FUN_ov17_020f9d40
	arm_func_end FUN_ov17_020f9d1c

	arm_func_start FUN_ov17_020f9d40
FUN_ov17_020f9d40: ; 0x020F9D40
	stmfd sp!, {r3, lr}
	bl FUN_ov17_020f9d54
	bl FUN_ov17_020f9d90
	bl FUN_ov17_020f9d94
	ldmfd sp!, {r3, pc}
	arm_func_end FUN_ov17_020f9d40

	arm_func_start FUN_ov17_020f9d54
FUN_ov17_020f9d54: ; 0x020F9D54
	stmfd sp!, {r4, lr}
	mov r4, #1
	mov r0, r4
	bl FUN_ov17_0210e4b8
	cmp r0, #0
	beq _020F9D74
	mov r0, r4
	bl FUN_ov17_020f47d8
_020F9D74:
	mov r0, #2
	bl FUN_ov17_0210e4b8
	cmp r0, #0
	ldmeqfd sp!, {r4, pc}
	mov r0, #0
	bl FUN_ov17_020f47d8
	ldmfd sp!, {r4, pc}
	arm_func_end FUN_ov17_020f9d54

	arm_func_start FUN_ov17_020f9d90
FUN_ov17_020f9d90: ; 0x020F9D90
	bx lr
	arm_func_end FUN_ov17_020f9d90

	arm_func_start FUN_ov17_020f9d94
FUN_ov17_020f9d94: ; 0x020F9D94
	stmfd sp!, {r3, lr}
	bl FUN_ov17_020f47c4
	cmp r0, #0
	beq _020F9DB0
	cmp r0, #1
	beq _020F9DC4
	ldmfd sp!, {r3, pc}
_020F9DB0:
	mov r0, #7
	bl FUN_ov17_02107c40
	ldr r0, _020F9DF4 ; =FUN_ov17_020f9dfc
	bl FUN_ov17_020f8ad4
	ldmfd sp!, {r3, pc}
_020F9DC4:
	mov r0, #6
	bl FUN_ov17_02107c40
	mov r2, #1
	mov r1, #0
	sub r3, r2, #2
	mov r0, #0x18
	str r1, [sp]
	bl FUN_ov17_02108e9c
	bl FUN_ov17_020f484c
	ldr r0, _020F9DF8 ; =FUN_ov17_020f9f40
	bl FUN_ov17_020f8ad4
	ldmfd sp!, {r3, pc}
_020F9DF4: .word FUN_ov17_020f9dfc
_020F9DF8: .word FUN_ov17_020f9f40
	arm_func_end FUN_ov17_020f9d94

	arm_func_start FUN_ov17_020f9dfc
FUN_ov17_020f9dfc: ; 0x020F9DFC
	stmfd sp!, {r3, lr}
	bl FUN_ov17_020f484c
	mov r0, #8
	bl FUN_ov17_0210d424
	ldr r0, _020F9E18 ; =FUN_ov17_020f9e1c
	bl FUN_ov17_020f8ad4
	ldmfd sp!, {r3, pc}
_020F9E18: .word FUN_ov17_020f9e1c
	arm_func_end FUN_ov17_020f9dfc

	arm_func_start FUN_ov17_020f9e1c
FUN_ov17_020f9e1c: ; 0x020F9E1C
	stmfd sp!, {r4, lr}
	mov r4, #1
	mov r0, r4
	bl FUN_ov17_0210d214
	cmp r0, #0
	ldmnefd sp!, {r4, pc}
	bl FUN_ov17_020f4794
	ldr r0, _020F9E7C ; =0x02116204
	ldrb r0, [r0]
	cmp r0, #0
	bne _020F9E5C
	mov r1, r4
	mov r2, r4
	mov r0, #3
	mov r3, #8
	bl FUN_ov17_0210d238
_020F9E5C:
	mov r0, #3
	mov r1, #0
	mov r2, #0x15
	mov r3, #8
	bl FUN_ov17_0210d238
	ldr r0, _020F9E80 ; =FUN_ov17_020f9e84
	bl FUN_ov17_020f8ad4
	ldmfd sp!, {r4, pc}
_020F9E7C: .word 0x02116204
_020F9E80: .word FUN_ov17_020f9e84
	arm_func_end FUN_ov17_020f9e1c

	arm_func_start FUN_ov17_020f9e84
FUN_ov17_020f9e84: ; 0x020F9E84
	stmfd sp!, {r4, lr}
	mov r0, #0
	bl FUN_ov17_0210d214
	cmp r0, #0
	ldmnefd sp!, {r4, pc}
	ldr r0, _020F9F34 ; =0x02116204
	ldrb r0, [r0]
	cmp r0, #0
	bne _020F9EB8
	mov r0, #1
	bl FUN_ov17_0210d214
	cmp r0, #0
	ldmnefd sp!, {r4, pc}
_020F9EB8:
	bl FUN_ov17_020f4808
	cmp r0, #0
	ldmeqfd sp!, {r4, pc}
	mov r0, #0
	bl FUN_ov17_0210d93c
	ldr r0, _020F9F34 ; =0x02116204
	ldrb r0, [r0]
	cmp r0, #0
	bne _020F9EEC
	bl FUN_ov17_020f4de8
	mov r0, #1
	mov r1, r0
	bl FUN_ov17_0210dd24
_020F9EEC:
	mov r4, #0
	mov r0, r4
	mov r1, #0x15
	bl FUN_ov17_0210dd24
	ldr r0, _020F9F34 ; =0x02116204
	mov r1, #1
	ldrb r0, [r0]
	cmp r0, #0
	mov r0, r4
	bne _020F9F24
	bl FUN_ov17_020f8ae4
	ldr r0, _020F9F38 ; =FUN_ov17_020fa6d0
	bl FUN_ov17_020f8ad4
	ldmfd sp!, {r4, pc}
_020F9F24:
	bl FUN_ov17_020f8ae4
	ldr r0, _020F9F3C ; =FUN_ov17_020f9fb0
	bl FUN_ov17_020f8ad4
	ldmfd sp!, {r4, pc}
_020F9F34: .word 0x02116204
_020F9F38: .word FUN_ov17_020fa6d0
_020F9F3C: .word FUN_ov17_020f9fb0
	arm_func_end FUN_ov17_020f9e84

	arm_func_start FUN_ov17_020f9f40
FUN_ov17_020f9f40: ; 0x020F9F40
	stmfd sp!, {r3, lr}
	bl FUN_ov17_021091fc
	cmp r0, #0
	beq _020F9F70
	cmp r0, #1
	ldmnefd sp!, {r3, pc}
	mov r0, #0xe
	bl FUN_ov17_02107c40
	ldr r0, _020F9F88 ; =0x02116204
	mov r1, #1
	strb r1, [r0]
	b _020F9F78
_020F9F70:
	mov r0, #7
	bl FUN_ov17_02107c40
_020F9F78:
	bl FUN_ov17_021091b8
	ldr r0, _020F9F8C ; =FUN_ov17_020f9f90
	bl FUN_ov17_020f8ad4
	ldmfd sp!, {r3, pc}
_020F9F88: .word 0x02116204
_020F9F8C: .word FUN_ov17_020f9f90
	arm_func_end FUN_ov17_020f9f40

	arm_func_start FUN_ov17_020f9f90
FUN_ov17_020f9f90: ; 0x020F9F90
	stmfd sp!, {r3, lr}
	bl FUN_ov17_02109210
	cmp r0, #0
	ldmnefd sp!, {r3, pc}
	ldr r0, _020F9FAC ; =FUN_ov17_020f9dfc
	bl FUN_ov17_020f8ad4
	ldmfd sp!, {r3, pc}
_020F9FAC: .word FUN_ov17_020f9dfc
	arm_func_end FUN_ov17_020f9f90

	arm_func_start FUN_ov17_020f9fb0
FUN_ov17_020f9fb0: ; 0x020F9FB0
	stmfd sp!, {r3, lr}
	bl FUN_ov17_020f9fd4
	mov r0, #0x19
	bl FUN_ov17_020f4f4c
	bl FUN_ov17_021078b4
	ldr r0, _020F9FD0 ; =FUN_ov17_020fa054
	bl FUN_ov17_020f8ad4
	ldmfd sp!, {r3, pc}
_020F9FD0: .word FUN_ov17_020fa054
	arm_func_end FUN_ov17_020f9fb0

	arm_func_start FUN_ov17_020f9fd4
FUN_ov17_020f9fd4: ; 0x020F9FD4
	stmfd sp!, {r3, lr}
	ldr r0, _020FA044 ; =0x02112F38
	ldr r1, _020FA048 ; =FUN_020055bc
	bl FUN_ov17_020f4e84
	ldr r3, _020FA04C ; =0x04001008
	ldr r1, _020FA050 ; =0x0400000A
	ldrh r0, [r3]
	sub r2, r3, #0x1000
	bic r0, r0, #3
	orr r0, r0, #3
	strh r0, [r3]
	ldrh r0, [r3, #2]
	bic r0, r0, #3
	orr r0, r0, #3
	strh r0, [r3, #2]
	ldrh r0, [r2]
	bic r0, r0, #3
	orr r0, r0, #3
	strh r0, [r2]
	ldrh r0, [r1]
	bic r0, r0, #3
	orr r0, r0, #3
	strh r0, [r1]
	ldrh r0, [r1, #2]
	bic r0, r0, #3
	orr r0, r0, #3
	strh r0, [r1, #2]
	ldmfd sp!, {r3, pc}
_020FA044: .word 0x02112F38
_020FA048: .word FUN_020055bc
_020FA04C: .word 0x04001008
_020FA050: .word 0x0400000A
	arm_func_end FUN_ov17_020f9fd4

	arm_func_start FUN_ov17_020fa054
FUN_ov17_020fa054: ; 0x020FA054
	stmfd sp!, {r3, r4, r5, lr}
	mov r5, #0
	mov r4, #0x15
	mov r1, r5
	mov r2, r4
	mov r0, #2
	mov r3, #8
	bl FUN_ov17_0210d238
	mov r0, r5
	mov r1, r4
	bl FUN_ov17_0210dcd0
	ldr r0, _020FA08C ; =FUN_ov17_020fa090
	bl FUN_ov17_020f8ad4
	ldmfd sp!, {r3, r4, r5, pc}
_020FA08C: .word FUN_ov17_020fa090
	arm_func_end FUN_ov17_020fa054

	arm_func_start FUN_ov17_020fa090
FUN_ov17_020fa090: ; 0x020FA090
	stmfd sp!, {r3, lr}
	mov r0, #0
	bl FUN_ov17_0210d214
	cmp r0, #0
	ldmnefd sp!, {r3, pc}
	mov r0, #5
	bl FUN_ov17_020f4f14
	ldr r0, _020FA0B8 ; =FUN_ov17_020fa0bc
	bl FUN_ov17_020f8ad4
	ldmfd sp!, {r3, pc}
_020FA0B8: .word FUN_ov17_020fa0bc
	arm_func_end FUN_ov17_020fa090

	arm_func_start FUN_ov17_020fa0bc
FUN_ov17_020fa0bc: ; 0x020FA0BC
	stmfd sp!, {r3, lr}
	bl FUN_ov17_020f47c4
	cmn r0, #2
	ldmeqfd sp!, {r3, pc}
	bl FUN_ov17_020f4834
	ldr r0, _020FA0DC ; =FUN_ov17_020fa0e0
	bl FUN_ov17_020f8ad4
	ldmfd sp!, {r3, pc}
_020FA0DC: .word FUN_ov17_020fa0e0
	arm_func_end FUN_ov17_020fa0bc

	arm_func_start FUN_ov17_020fa0e0
FUN_ov17_020fa0e0: ; 0x020FA0E0
	stmfd sp!, {r3, lr}
	bl FUN_ov17_020fa0f4
	bl FUN_ov17_020fa114
	bl FUN_ov17_020fa118
	ldmfd sp!, {r3, pc}
	arm_func_end FUN_ov17_020fa0e0

	arm_func_start FUN_ov17_020fa0f4
FUN_ov17_020fa0f4: ; 0x020FA0F4
	stmfd sp!, {r3, lr}
	mov r0, #1
	bl FUN_ov17_0210e4b8
	cmp r0, #0
	ldmeqfd sp!, {r3, pc}
	mov r0, #0
	bl FUN_ov17_020f47d8
	ldmfd sp!, {r3, pc}
	arm_func_end FUN_ov17_020fa0f4

	arm_func_start FUN_ov17_020fa114
FUN_ov17_020fa114: ; 0x020FA114
	bx lr
	arm_func_end FUN_ov17_020fa114

	arm_func_start FUN_ov17_020fa118
FUN_ov17_020fa118: ; 0x020FA118
	stmfd sp!, {r3, lr}
	bl FUN_ov17_020f47c4
	cmp r0, #0
	ldmnefd sp!, {r3, pc}
	mov r0, #6
	bl FUN_ov17_02107c40
	ldr r0, _020FA13C ; =FUN_ov17_020fa140
	bl FUN_ov17_020f8ad4
	ldmfd sp!, {r3, pc}
_020FA13C: .word FUN_ov17_020fa140
	arm_func_end FUN_ov17_020fa118

	arm_func_start FUN_ov17_020fa140
FUN_ov17_020fa140: ; 0x020FA140
	stmfd sp!, {r3, lr}
	bl FUN_ov17_020f484c
	mov r0, #8
	bl FUN_ov17_0210d424
	ldr r0, _020FA15C ; =FUN_ov17_020fa160
	bl FUN_ov17_020f8ad4
	ldmfd sp!, {r3, pc}
_020FA15C: .word FUN_ov17_020fa160
	arm_func_end FUN_ov17_020fa140

	arm_func_start FUN_ov17_020fa160
FUN_ov17_020fa160: ; 0x020FA160
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	mov r7, #1
	mov r0, r7
	bl FUN_ov17_0210d214
	cmp r0, #0
	ldmnefd sp!, {r3, r4, r5, r6, r7, pc}
	mov r6, #3
	mov r5, #0x3f
	mov r4, #0x40
	mov r0, r6
	mov r1, r7
	mov r2, r5
	mov r3, r4
	bl FUN_ov17_0210d238
	mov r0, r6
	mov r2, r5
	mov r3, r4
	mov r1, #0
	bl FUN_ov17_0210d238
	ldr r0, _020FA1B8 ; =FUN_ov17_020fa1bc
	bl FUN_ov17_020f8ad4
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_020FA1B8: .word FUN_ov17_020fa1bc
	arm_func_end FUN_ov17_020fa160

	arm_func_start FUN_ov17_020fa1bc
FUN_ov17_020fa1bc: ; 0x020FA1BC
	stmfd sp!, {r3, lr}
	mov r0, #1
	bl FUN_ov17_0210d214
	cmp r0, #0
	ldmnefd sp!, {r3, pc}
	mov r0, #0
	bl FUN_ov17_0210d214
	cmp r0, #0
	ldmnefd sp!, {r3, pc}
	mov r0, #0x800000
	bl FUN_02003e24
	bl FUN_02016cf0
	ldmfd sp!, {r3, pc}
	arm_func_end FUN_ov17_020fa1bc

	arm_func_start FUN_ov17_020fa1f0
FUN_ov17_020fa1f0: ; 0x020FA1F0
	stmfd sp!, {r3, lr}
	bl FUN_ov17_020fa224
	mov r0, #0x11
	bl FUN_ov17_020f5324
	mov r0, #0x3a
	sub r1, r0, #0x3b
	mov r2, #0
	bl FUN_ov17_020f4d10
	bl FUN_ov17_020fa2a4
	ldr r0, _020FA220 ; =FUN_ov17_020fa4b4
	bl FUN_ov17_020f8ad4
	ldmfd sp!, {r3, pc}
_020FA220: .word FUN_ov17_020fa4b4
	arm_func_end FUN_ov17_020fa1f0

	arm_func_start FUN_ov17_020fa224
FUN_ov17_020fa224: ; 0x020FA224
	stmfd sp!, {r3, lr}
	ldr r0, _020FA294 ; =0x02112F4C
	ldr r1, _020FA298 ; =FUN_020055bc
	bl FUN_ov17_020f4e84
	ldr r3, _020FA29C ; =0x04001008
	ldr r1, _020FA2A0 ; =0x0400000A
	ldrh r0, [r3]
	sub r2, r3, #0x1000
	bic r0, r0, #3
	orr r0, r0, #3
	strh r0, [r3]
	ldrh r0, [r3, #2]
	bic r0, r0, #3
	orr r0, r0, #3
	strh r0, [r3, #2]
	ldrh r0, [r2]
	bic r0, r0, #3
	orr r0, r0, #3
	strh r0, [r2]
	ldrh r0, [r1]
	bic r0, r0, #3
	orr r0, r0, #3
	strh r0, [r1]
	ldrh r0, [r1, #2]
	bic r0, r0, #3
	orr r0, r0, #3
	strh r0, [r1, #2]
	ldmfd sp!, {r3, pc}
_020FA294: .word 0x02112F4C
_020FA298: .word FUN_020055bc
_020FA29C: .word 0x04001008
_020FA2A0: .word 0x0400000A
	arm_func_end FUN_ov17_020fa224

	arm_func_start FUN_ov17_020fa2a4
FUN_ov17_020fa2a4: ; 0x020FA2A4
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, lr}
	sub sp, sp, #0x7c
	mov r5, #0
	mov r0, r5
	mov r1, r5
	bl FUN_ov17_0210d6ec
	mov r6, r0
	add r0, sp, #0x14
	bl FUN_02003f38
	ldrb r0, [sp, #0x15]
	add r10, sp, #0x1a
	mov r9, #0x14
	str r0, [sp]
	ldrb r1, [sp, #0x16]
	ldr r2, _020FA4A4 ; =0x02112F60
	mov r0, r10
	str r1, [sp, #4]
	ldrb r3, [sp, #0x17]
	mov r1, r9
	str r3, [sp, #8]
	ldrb r3, [sp, #0x18]
	str r3, [sp, #0xc]
	ldrb r3, [sp, #0x19]
	str r3, [sp, #0x10]
	ldrb r3, [sp, #0x14]
	bl FUN_02001508
	add r8, sp, #0x2e
	mov r1, r10
	mov r0, r8
	mov r2, r9
	bl FUN_ov17_0210eec0
	mov r0, #0x1c
	str r0, [sp]
	mov r0, #2
	str r0, [sp, #4]
	mov r0, #0x480
	str r0, [sp, #8]
	mov r0, r6
	mov r1, #8
	mov r2, #0x40
	mov r3, #0xf0
	str r8, [sp, #0xc]
	bl FUN_ov17_0210daf0
	add r0, sp, #0x68
	bl  FUN_ov15_020ca8e0
	ldr r7, [sp, #0x6c]
	ldr r4, [sp, #0x68]
	cmp r7, #0
	cmpeq r4, #0
	beq _020FA440
	mov r8, #0xa
	mov r0, r4
	mov r1, r7
	mov r2, r8
	mov r3, r5
	bl FUN_0201f960
	mov r1, #0x3e8
	umull r9, r1, r0, r1
	mov r0, r4
	mov r1, r7
	mov r2, r8
	mov r3, r5
	str r9, [sp, #0x64]
	bl FUN_0201f954
	ldr r9, _020FA4A8 ; =0x00002710
	mov r4, r0
	mov r7, r1
	mov r8, r5
	add r10, sp, #0x58
_020FA3B8:
	mov r0, r4
	mov r1, r7
	mov r2, r9
	mov r3, r8
	bl FUN_0201f960
	rsb r1, r5, #2
	str r0, [r10, r1, lsl #2]
	mov r0, r4
	mov r1, r7
	mov r2, r9
	mov r3, r8
	bl FUN_0201f954
	add r5, r5, #1
	mov r4, r0
	mov r7, r1
	cmp r5, #3
	blt _020FA3B8
	ldr r1, [sp, #0x5c]
	ldr r0, [sp, #0x60]
	str r1, [sp]
	mov r4, #0x14
	add r5, sp, #0x1a
	str r0, [sp, #4]
	ldr r7, [sp, #0x64]
	ldr r3, [sp, #0x58]
	ldr r2, _020FA4AC ; =0x02112F80
	mov r0, r5
	mov r1, r4
	str r7, [sp, #8]
	bl FUN_02001508
	add r0, sp, #0x2e
	mov r1, r5
	mov r2, r4
	b _020FA45C
_020FA440:
	ldr r2, _020FA4B0 ; =0x02112F94
	mov r0, r10
	mov r1, r9
	bl FUN_02001508
	mov r0, r8
	mov r1, r10
	mov r2, r9
_020FA45C:
	bl FUN_ov17_0210eec0
	mov r0, #0x1c
	str r0, [sp]
	mov r0, #2
	str r0, [sp, #4]
	mov r0, #0x480
	str r0, [sp, #8]
	add r4, sp, #0x2e
	mov r0, r6
	mov r1, #8
	mov r2, #0x78
	mov r3, #0xf0
	str r4, [sp, #0xc]
	bl FUN_ov17_0210daf0
	mov r0, r6
	bl FUN_ov17_0210dc58
	add sp, sp, #0x7c
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, pc}
_020FA4A4: .word 0x02112F60
_020FA4A8: .word 0x00002710
_020FA4AC: .word 0x02112F80
_020FA4B0: .word 0x02112F94
	arm_func_end FUN_ov17_020fa2a4

	arm_func_start FUN_ov17_020fa4b4
FUN_ov17_020fa4b4: ; 0x020FA4B4
	stmfd sp!, {r4, r5, r6, r7, r8, lr}
	mov r7, #1
	mov r8, #2
	mov r6, #8
	mov r0, r8
	mov r1, r7
	mov r2, r7
	mov r3, r6
	bl FUN_ov17_0210d238
	mov r5, #0
	mov r4, #0x15
	mov r0, r8
	mov r1, r5
	mov r2, r4
	mov r3, r6
	bl FUN_ov17_0210d238
	mov r0, r7
	mov r1, r7
	bl FUN_ov17_0210dcd0
	mov r0, r5
	mov r1, r4
	bl FUN_ov17_0210dcd0
	ldr r0, _020FA518 ; =FUN_ov17_020fa51c
	bl FUN_ov17_020f8ad4
	ldmfd sp!, {r4, r5, r6, r7, r8, pc}
_020FA518: .word FUN_ov17_020fa51c
	arm_func_end FUN_ov17_020fa4b4

	arm_func_start FUN_ov17_020fa51c
FUN_ov17_020fa51c: ; 0x020FA51C
	stmfd sp!, {r3, lr}
	mov r0, #1
	bl FUN_ov17_0210d214
	cmp r0, #0
	ldmnefd sp!, {r3, pc}
	mov r0, #0
	bl FUN_ov17_0210d214
	cmp r0, #0
	ldmnefd sp!, {r3, pc}
	mov r0, #2
	bl FUN_ov17_020f4f14
	ldr r0, _020FA554 ; =FUN_ov17_020fa558
	bl FUN_ov17_020f8ad4
	ldmfd sp!, {r3, pc}
_020FA554: .word FUN_ov17_020fa558
	arm_func_end FUN_ov17_020fa51c

	arm_func_start FUN_ov17_020fa558
FUN_ov17_020fa558: ; 0x020FA558
	stmfd sp!, {r3, lr}
	bl FUN_ov17_020f47c4
	cmn r0, #2
	ldmeqfd sp!, {r3, pc}
	bl FUN_ov17_020f4834
	ldr r0, _020FA578 ; =FUN_ov17_020fa57c
	bl FUN_ov17_020f8ad4
	ldmfd sp!, {r3, pc}
_020FA578: .word FUN_ov17_020fa57c
	arm_func_end FUN_ov17_020fa558

	arm_func_start FUN_ov17_020fa57c
FUN_ov17_020fa57c: ; 0x020FA57C
	stmfd sp!, {r3, lr}
	bl FUN_ov17_020fa590
	bl FUN_ov17_020fa5b0
	bl FUN_ov17_020fa5b4
	ldmfd sp!, {r3, pc}
	arm_func_end FUN_ov17_020fa57c

	arm_func_start FUN_ov17_020fa590
FUN_ov17_020fa590: ; 0x020FA590
	stmfd sp!, {r3, lr}
	mov r0, #2
	bl FUN_ov17_0210e4b8
	cmp r0, #0
	ldmeqfd sp!, {r3, pc}
	mov r0, #0
	bl FUN_ov17_020f47d8
	ldmfd sp!, {r3, pc}
	arm_func_end FUN_ov17_020fa590

	arm_func_start FUN_ov17_020fa5b0
FUN_ov17_020fa5b0: ; 0x020FA5B0
	bx lr
	arm_func_end FUN_ov17_020fa5b0

	arm_func_start FUN_ov17_020fa5b4
FUN_ov17_020fa5b4: ; 0x020FA5B4
	stmfd sp!, {r3, lr}
	bl FUN_ov17_020f47c4
	cmp r0, #0
	ldmnefd sp!, {r3, pc}
	mov r0, #7
	bl FUN_ov17_02107c40
	ldr r0, _020FA5D8 ; =FUN_ov17_020fa5dc
	bl FUN_ov17_020f8ad4
	ldmfd sp!, {r3, pc}
_020FA5D8: .word FUN_ov17_020fa5dc
	arm_func_end FUN_ov17_020fa5b4

	arm_func_start FUN_ov17_020fa5dc
FUN_ov17_020fa5dc: ; 0x020FA5DC
	stmfd sp!, {r3, lr}
	bl FUN_ov17_020f484c
	mov r0, #8
	bl FUN_ov17_0210d424
	ldr r0, _020FA5F8 ; =FUN_ov17_020fa5fc
	bl FUN_ov17_020f8ad4
	ldmfd sp!, {r3, pc}
_020FA5F8: .word FUN_ov17_020fa5fc
	arm_func_end FUN_ov17_020fa5dc

	arm_func_start FUN_ov17_020fa5fc
FUN_ov17_020fa5fc: ; 0x020FA5FC
	stmfd sp!, {r4, r5, r6, lr}
	mov r6, #1
	mov r0, r6
	bl FUN_ov17_0210d214
	cmp r0, #0
	ldmnefd sp!, {r4, r5, r6, pc}
	bl FUN_ov17_020f4794
	mov r5, #3
	mov r4, #8
	mov r0, r5
	mov r1, r6
	mov r2, r6
	mov r3, r4
	bl FUN_ov17_0210d238
	mov r0, r5
	mov r3, r4
	mov r1, #0
	mov r2, #0x15
	bl FUN_ov17_0210d238
	ldr r0, _020FA654 ; =FUN_ov17_020fa658
	bl FUN_ov17_020f8ad4
	ldmfd sp!, {r4, r5, r6, pc}
_020FA654: .word FUN_ov17_020fa658
	arm_func_end FUN_ov17_020fa5fc

	arm_func_start FUN_ov17_020fa658
FUN_ov17_020fa658: ; 0x020FA658
	stmfd sp!, {r3, r4, r5, lr}
	mov r5, #1
	mov r0, r5
	bl FUN_ov17_0210d214
	cmp r0, #0
	ldmnefd sp!, {r3, r4, r5, pc}
	mov r4, #0
	mov r0, r4
	bl FUN_ov17_0210d214
	cmp r0, #0
	ldmnefd sp!, {r3, r4, r5, pc}
	bl FUN_ov17_020f4808
	cmp r0, #0
	ldmeqfd sp!, {r3, r4, r5, pc}
	mov r0, r4
	bl FUN_ov17_0210d93c
	bl FUN_ov17_020f4de8
	mov r0, r5
	mov r1, r5
	bl FUN_ov17_0210dd24
	mov r0, r4
	mov r1, #0x15
	bl FUN_ov17_0210dd24
	mov r0, r4
	mov r1, r5
	bl FUN_ov17_020f8ae4
	ldr r0, _020FA6CC ; =FUN_ov17_020fa6d0
	bl FUN_ov17_020f8ad4
	ldmfd sp!, {r3, r4, r5, pc}
_020FA6CC: .word FUN_ov17_020fa6d0
	arm_func_end FUN_ov17_020fa658

	arm_func_start FUN_ov17_020fa6d0
FUN_ov17_020fa6d0: ; 0x020FA6D0
	stmfd sp!, {r3, r4, r5, lr}
	ldr r4, _020FA778 ; =0x02116208
	mov r5, #0
	strb r5, [r4, #1]
	bl FUN_ov17_020fa794
	mov r0, #0x10
	bl FUN_ov17_020f5324
	mov r0, #3
	bl FUN_ov17_02108744
	mov r0, #0x39
	sub r1, r0, #0x3a
	mov r2, r5
	bl FUN_ov17_020f4d10
	mov r0, r5
	mov r1, #0x5b
	bl FUN_ov17_0210cffc
	str r0, [r4, #8]
	ldr r2, [r0]
	ldr r1, _020FA77C ; =0xFE00FF00
	ldr r12, _020FA780 ; =0x0211214C
	and r1, r2, r1
	orr r1, r1, #0x84
	orr r1, r1, #0xe00000
	str r1, [r0]
	ldr lr, [r4, #8]
	ldr r1, _020FA784 ; =0x02112150
	ldrh r0, [lr, #4]
	ldr r2, _020FA788 ; =0x0211214E
	ldr r3, _020FA78C ; =0x02112152
	bic r0, r0, #0xc00
	orr r0, r0, #0xc00
	strh r0, [lr, #4]
	ldrb r0, [r4]
	mov r4, r0, lsl #3
	ldrh r0, [r12, r4]
	ldrh r1, [r1, r4]
	ldrh r2, [r2, r4]
	ldrh r3, [r3, r4]
	bl FUN_ov17_020f5178
	ldr r0, _020FA790 ; =FUN_ov17_020fa928
	bl FUN_ov17_020f8ad4
	ldmfd sp!, {r3, r4, r5, pc}
_020FA778: .word 0x02116208
_020FA77C: .word 0xFE00FF00
_020FA780: .word 0x0211214C
_020FA784: .word 0x02112150
_020FA788: .word 0x0211214E
_020FA78C: .word 0x02112152
_020FA790: .word FUN_ov17_020fa928
	arm_func_end FUN_ov17_020fa6d0

	arm_func_start FUN_ov17_020fa794
FUN_ov17_020fa794: ; 0x020FA794
	stmfd sp!, {r3, r4, r5, r6, r7, r8, lr}
	sub sp, sp, #0x44
	ldr r4, _020FA904 ; =0x02112164
	add r3, sp, #0x2b
	mov r2, #0xb
_020FA7A8:
	ldrb r0, [r4, #1]
	ldrb r1, [r4], #2
	subs r2, r2, #1
	strb r0, [r3, #1]
	strb r1, [r3], #2
	bne _020FA7A8
	ldr r4, _020FA908 ; =0x0211217C
	add r3, sp, #0x14
	mov r2, #0xb
_020FA7CC:
	ldrb r0, [r4, #1]
	ldrb r1, [r4], #2
	subs r2, r2, #1
	strb r0, [r3, #1]
	strb r1, [r3], #2
	bne _020FA7CC
	ldrb r2, [r4]
	ldr r0, _020FA90C ; =0x02112FA8
	ldr r1, _020FA910 ; =0x0200593C
	strb r2, [r3]
	bl FUN_ov17_020f4e84
	ldr r0, _020FA914 ; =0x02112FC0
	ldr r1, _020FA918 ; =FUN_020055bc
	bl FUN_ov17_020f4e84
	add r0, sp, #0x14
	bl FUN_ov17_020f4e20
	mov r4, #0
	mov r5, #4
	mov r1, r4
	mov r2, r5
	bl FUN_ov17_0210c7fc
	ldr r1, _020FA91C ; =0x02116208
	str r0, [r1, #4]
	add r0, sp, #0x2b
	bl FUN_ov17_020f4e20
	mov r2, r5
	mov r1, r4
	bl FUN_ov17_0210c7fc
	mov r5, r0
	add r0, sp, #0
	bl  FUN_ov15_020ca8e0
	ldr r1, [sp, #4]
	ldr r0, [sp]
	cmp r1, #0
	cmpeq r0, #0
	bne _020FA88C
	add r7, r5, #0xc0
	add r8, r5, #0x40
	mov r6, #0x20
_020FA868:
	mov r0, r7
	mov r1, r8
	mov r2, r6
	bl MI_CpuCopy8
	add r4, r4, #1
	cmp r4, #2
	add r7, r7, #0x20
	add r8, r8, #0x20
	blt _020FA868
_020FA88C:
	mov r4, #0x200
	mov r0, r5
	mov r1, r4
	bl DC_FlushRange
	mov r0, r5
	mov r2, r4
	mov r1, #0
	bl FUN_020050fc
	mov r0, r5
	bl FUN_ov17_0210c8fc
	ldr r2, _020FA920 ; =0x04001008
	ldr r1, _020FA924 ; =0x0400000A
	ldrh r0, [r2]
	bic r0, r0, #3
	orr r0, r0, #3
	strh r0, [r2]
	ldrh r0, [r2, #2]
	bic r0, r0, #3
	orr r0, r0, #3
	strh r0, [r2, #2]
	ldrh r0, [r1]
	bic r0, r0, #3
	orr r0, r0, #3
	strh r0, [r1]
	ldrh r0, [r1, #2]
	bic r0, r0, #3
	orr r0, r0, #3
	strh r0, [r1, #2]
	add sp, sp, #0x44
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, pc}
_020FA904: .word 0x02112164
_020FA908: .word 0x0211217C
_020FA90C: .word 0x02112FA8
_020FA910: .word 0x0200593C
_020FA914: .word 0x02112FC0
_020FA918: .word FUN_020055bc
_020FA91C: .word 0x02116208
_020FA920: .word 0x04001008
_020FA924: .word 0x0400000A
	arm_func_end FUN_ov17_020fa794

	arm_func_start FUN_ov17_020fa928
FUN_ov17_020fa928: ; 0x020FA928
	stmfd sp!, {r4, r5, r6, r7, r8, lr}
	mov r7, #1
	mov r8, #2
	mov r6, #8
	mov r0, r8
	mov r1, r7
	mov r2, r7
	mov r3, r6
	bl FUN_ov17_0210d238
	mov r5, #0
	mov r4, #0x14
	mov r0, r8
	mov r1, r5
	mov r2, r4
	mov r3, r6
	bl FUN_ov17_0210d238
	mov r0, r7
	mov r1, r7
	bl FUN_ov17_0210dcd0
	mov r0, r5
	mov r1, r4
	bl FUN_ov17_0210dcd0
	ldr r0, _020FA98C ; =FUN_ov17_020fa990
	bl FUN_ov17_020f8ad4
	ldmfd sp!, {r4, r5, r6, r7, r8, pc}
_020FA98C: .word FUN_ov17_020fa990
	arm_func_end FUN_ov17_020fa928

	arm_func_start FUN_ov17_020fa990
FUN_ov17_020fa990: ; 0x020FA990
	stmfd sp!, {r4, lr}
	mov r0, #1
	bl FUN_ov17_0210d214
	cmp r0, #0
	ldmnefd sp!, {r4, pc}
	mov r4, #0
	mov r0, r4
	bl FUN_ov17_0210d214
	cmp r0, #0
	ldmnefd sp!, {r4, pc}
	mov r0, r4
	bl FUN_ov17_020f4f14
	ldr r0, _020FA9CC ; =FUN_ov17_020fa9d0
	bl FUN_ov17_020f8ad4
	ldmfd sp!, {r4, pc}
_020FA9CC: .word FUN_ov17_020fa9d0
	arm_func_end FUN_ov17_020fa990

	arm_func_start FUN_ov17_020fa9d0
FUN_ov17_020fa9d0: ; 0x020FA9D0
	stmfd sp!, {r3, lr}
	bl FUN_ov17_020f47c4
	cmn r0, #2
	ldmeqfd sp!, {r3, pc}
	bl FUN_ov17_020f4834
	ldr r0, _020FA9F0 ; =FUN_ov17_020fa9f4
	bl FUN_ov17_020f8ad4
	ldmfd sp!, {r3, pc}
_020FA9F0: .word FUN_ov17_020fa9f4
	arm_func_end FUN_ov17_020fa9d0

	arm_func_start FUN_ov17_020fa9f4
FUN_ov17_020fa9f4: ; 0x020FA9F4
	stmfd sp!, {r3, lr}
	bl FUN_ov17_020faa08
	bl FUN_ov17_020faafc
	bl FUN_ov17_020fab00
	ldmfd sp!, {r3, pc}
	arm_func_end FUN_ov17_020fa9f4

	arm_func_start FUN_ov17_020faa08
FUN_ov17_020faa08: ; 0x020FAA08
	stmfd sp!, {r3, r4, r5, lr}
	ldr r5, _020FAAE4 ; =0x02112134
	mov r4, #0
_020FAA14:
	add r0, r5, r4, lsl #3
	bl FUN_ov17_0210e600
	cmp r0, #0
	beq _020FAA64
	mov r0, #1
	bl FUN_ov17_020f47d8
	and r1, r4, #0xff
	mov lr, r1, lsl #3
	ldr r0, _020FAAE8 ; =0x0211214C
	ldr r1, _020FAAEC ; =0x02112150
	ldr r2, _020FAAF0 ; =0x0211214E
	ldr r3, _020FAAF4 ; =0x02112152
	ldr r12, _020FAAF8 ; =0x02116208
	ldrh r0, [r0, lr]
	ldrh r1, [r1, lr]
	ldrh r2, [r2, lr]
	ldrh r3, [r3, lr]
	strb r4, [r12]
	bl FUN_ov17_020f5178
	ldmfd sp!, {r3, r4, r5, pc}
_020FAA64:
	add r4, r4, #1
	cmp r4, #3
	blo _020FAA14
	mov r4, #1
	mov r0, r4
	bl FUN_ov17_0210e4b8
	cmp r0, #0
	beq _020FAA90
	mov r0, r4
	bl FUN_ov17_020f47d8
	ldmfd sp!, {r3, r4, r5, pc}
_020FAA90:
	mov r0, #2
	bl FUN_ov17_0210e4b8
	cmp r0, #0
	beq _020FAAAC
	mov r0, #0
	bl FUN_ov17_020f47d8
	ldmfd sp!, {r3, r4, r5, pc}
_020FAAAC:
	mov r0, #0x40
	bl FUN_ov17_0210e4f8
	cmp r0, #0
	beq _020FAAC8
	mov r0, r4
	bl FUN_ov17_020fad40
	ldmfd sp!, {r3, r4, r5, pc}
_020FAAC8:
	mov r0, #0x80
	bl FUN_ov17_0210e4f8
	cmp r0, #0
	ldmeqfd sp!, {r3, r4, r5, pc}
	mov r0, #3
	bl FUN_ov17_020fad40
	ldmfd sp!, {r3, r4, r5, pc}
_020FAAE4: .word 0x02112134
_020FAAE8: .word 0x0211214C
_020FAAEC: .word 0x02112150
_020FAAF0: .word 0x0211214E
_020FAAF4: .word 0x02112152
_020FAAF8: .word 0x02116208
	arm_func_end FUN_ov17_020faa08

	arm_func_start FUN_ov17_020faafc
FUN_ov17_020faafc: ; 0x020FAAFC
	bx lr
	arm_func_end FUN_ov17_020faafc

	arm_func_start FUN_ov17_020fab00
FUN_ov17_020fab00: ; 0x020FAB00
	stmfd sp!, {r3, r4, lr}
	sub sp, sp, #0x14
	bl FUN_ov17_020f47c4
	cmp r0, #0
	beq _020FAB24
	cmp r0, #1
	beq _020FAB30
	add sp, sp, #0x14
	ldmfd sp!, {r3, r4, pc}
_020FAB24:
	mov r0, #7
	bl FUN_ov17_02107c40
	b _020FAB90
_020FAB30:
	add r0, sp, #0
	bl  FUN_ov15_020ca8e0
	ldr r0, _020FABA0 ; =0x02116208
	ldrb r0, [r0]
	cmp r0, #0
	beq _020FAB78
	ldr r0, [sp, #4]
	ldr r2, [sp]
	cmp r0, #0
	cmpeq r2, #0
	bne _020FAB78
	mov r4, #9
	mov r0, r4
	bl FUN_ov17_02107c40
	sub r0, r4, #0xa
	bl FUN_ov17_020f47f4
	add sp, sp, #0x14
	ldmfd sp!, {r3, r4, pc}
_020FAB78:
	mov r0, #6
	bl FUN_ov17_02107c40
	bl FUN_ov17_020fadc4
	ldr r0, _020FABA0 ; =0x02116208
	mov r1, #1
	strb r1, [r0, #1]
_020FAB90:
	ldr r0, _020FABA4 ; =FUN_ov17_020faba8
	bl FUN_ov17_020f8ad4
	add sp, sp, #0x14
	ldmfd sp!, {r3, r4, pc}
_020FABA0: .word 0x02116208
_020FABA4: .word FUN_ov17_020faba8
	arm_func_end FUN_ov17_020fab00

	arm_func_start FUN_ov17_020faba8
FUN_ov17_020faba8: ; 0x020FABA8
	stmfd sp!, {r3, lr}
	bl FUN_ov17_020f484c
	mov r0, #8
	bl FUN_ov17_0210d424
	ldr r0, _020FABC4 ; =FUN_ov17_020fabc8
	bl FUN_ov17_020f8ad4
	ldmfd sp!, {r3, pc}
_020FABC4: .word FUN_ov17_020fabc8
	arm_func_end FUN_ov17_020faba8

	arm_func_start FUN_ov17_020fabc8
FUN_ov17_020fabc8: ; 0x020FABC8
	stmfd sp!, {r3, r4, r5, lr}
	mov r0, #1
	bl FUN_ov17_0210d214
	cmp r0, #0
	ldmnefd sp!, {r3, r4, r5, pc}
	ldr r0, _020FAC2C ; =0x02116208
	ldrb r0, [r0, #1]
	cmp r0, #0
	beq _020FABF0
	bl FUN_ov17_020f4794
_020FABF0:
	mov r5, #3
	mov r1, #1
	mov r4, #8
	mov r0, r5
	mov r2, r1
	mov r3, r4
	bl FUN_ov17_0210d238
	mov r0, r5
	mov r3, r4
	mov r1, #0
	mov r2, #0x14
	bl FUN_ov17_0210d238
	ldr r0, _020FAC30 ; =FUN_ov17_020fac34
	bl FUN_ov17_020f8ad4
	ldmfd sp!, {r3, r4, r5, pc}
_020FAC2C: .word 0x02116208
_020FAC30: .word FUN_ov17_020fac34
	arm_func_end FUN_ov17_020fabc8

	arm_func_start FUN_ov17_020fac34
FUN_ov17_020fac34: ; 0x020FAC34
	stmfd sp!, {r4, r5, r6, lr}
	mov r6, #1
	mov r0, r6
	bl FUN_ov17_0210d214
	cmp r0, #0
	ldmnefd sp!, {r4, r5, r6, pc}
	mov r5, #0
	mov r0, r5
	bl FUN_ov17_0210d214
	cmp r0, #0
	ldmnefd sp!, {r4, r5, r6, pc}
	bl FUN_ov17_020f4808
	cmp r0, #0
	ldmeqfd sp!, {r4, r5, r6, pc}
	ldr r4, _020FAD2C ; =0x02116208
	ldr r0, [r4, #8]
	bl FUN_ov17_0210ebcc
	bl FUN_ov17_020f5258
	bl FUN_ov17_020f4de8
	ldr r0, [r4, #4]
	bl FUN_ov17_0210c8fc
	mov r0, r6
	mov r1, r6
	bl FUN_ov17_0210dd24
	mov r0, r5
	mov r1, #0x14
	bl FUN_ov17_0210dd24
	ldrb r0, [r4, #1]
	cmp r0, #0
	bne _020FACC4
	mov r0, r5
	mov r1, r5
	bl FUN_ov17_020f8ae4
	ldr r0, _020FAD30 ; =FUN_ov17_020f9618
	bl FUN_ov17_020f8ad4
	ldmfd sp!, {r4, r5, r6, pc}
_020FACC4:
	ldrb r0, [r4]
	cmp r0, #0
	beq _020FACE4
	cmp r0, #1
	beq _020FACFC
	cmp r0, #2
	beq _020FAD14
	ldmfd sp!, {r4, r5, r6, pc}
_020FACE4:
	mov r0, r5
	mov r1, r6
	bl FUN_ov17_020f8ae4
	ldr r0, _020FAD34 ; =FUN_ov17_020fa1f0
	bl FUN_ov17_020f8ad4
	ldmfd sp!, {r4, r5, r6, pc}
_020FACFC:
	mov r0, r5
	mov r1, r6
	bl FUN_ov17_020f8ae4
	ldr r0, _020FAD38 ; =FUN_ov17_020f9bb0
	bl FUN_ov17_020f8ad4
	ldmfd sp!, {r4, r5, r6, pc}
_020FAD14:
	mov r0, r5
	mov r1, r6
	bl FUN_ov17_020f8ae4
	ldr r0, _020FAD3C ; =FUN_ov17_020fb4b8
	bl FUN_ov17_020f8ad4
	ldmfd sp!, {r4, r5, r6, pc}
_020FAD2C: .word 0x02116208
_020FAD30: .word FUN_ov17_020f9618
_020FAD34: .word FUN_ov17_020fa1f0
_020FAD38: .word FUN_ov17_020f9bb0
_020FAD3C: .word FUN_ov17_020fb4b8
	arm_func_end FUN_ov17_020fac34

	arm_func_start FUN_ov17_020fad40
FUN_ov17_020fad40: ; 0x020FAD40
	stmfd sp!, {r4, lr}
	cmp r0, #1
	mov r1, #3
	bne _020FAD60
	ldr r4, _020FADB0 ; =0x02116208
	ldrb r0, [r4]
	add r0, r0, #2
	b _020FAD6C
_020FAD60:
	ldr r4, _020FADB0 ; =0x02116208
	ldrb r0, [r4]
	add r0, r0, #1
_020FAD6C:
	bl FUN_020096f8
	strb r0, [r4]
	mov r0, #8
	bl FUN_ov17_02107c40
	ldr r0, _020FADB0 ; =0x02116208
	ldr r4, _020FADB4 ; =0x0211214C
	ldrb r0, [r0]
	ldr r1, _020FADB8 ; =0x02112150
	ldr r2, _020FADBC ; =0x0211214E
	mov r12, r0, lsl #3
	ldr r3, _020FADC0 ; =0x02112152
	ldrh r0, [r4, r12]
	ldrh r1, [r1, r12]
	ldrh r2, [r2, r12]
	ldrh r3, [r3, r12]
	bl FUN_ov17_020f5178
	ldmfd sp!, {r4, pc}
_020FADB0: .word 0x02116208
_020FADB4: .word 0x0211214C
_020FADB8: .word 0x02112150
_020FADBC: .word 0x0211214E
_020FADC0: .word 0x02112152
	arm_func_end FUN_ov17_020fad40

	arm_func_start FUN_ov17_020fadc4
FUN_ov17_020fadc4: ; 0x020FADC4
	ldr r0, _020FADE4 ; =0x02116208
	ldr r1, _020FADE8 ; =0x0211212C
	ldrb r2, [r0]
	ldr r0, [r0, #4]
	ldr r12, _020FADEC ; =FUN_ov17_02106444
	ldrb r1, [r1, r2]
	mov r2, r1
	bx r12
_020FADE4: .word 0x02116208
_020FADE8: .word 0x0211212C
_020FADEC: .word FUN_ov17_02106444
	arm_func_end FUN_ov17_020fadc4

	arm_func_start FUN_ov17_020fadf0
FUN_ov17_020fadf0: ; 0x020FADF0
	stmfd sp!, {r3, lr}
	bl FUN_ov17_020fae28
	mov r0, #0x1e
	bl FUN_ov17_020f4f4c
	mov r0, #0
	bl FUN_ov17_020f44d0
	mov r0, #1
	bl FUN_ov17_020f53f4
	mov r0, #0xb
	bl FUN_ov17_02107c40
	ldr r0, _020FAE24 ; =FUN_ov17_020faea8
	bl FUN_ov17_020f8ad4
	ldmfd sp!, {r3, pc}
_020FAE24: .word FUN_ov17_020faea8
	arm_func_end FUN_ov17_020fadf0

	arm_func_start FUN_ov17_020fae28
FUN_ov17_020fae28: ; 0x020FAE28
	stmfd sp!, {r3, lr}
	ldr r0, _020FAE98 ; =0x02112FD8
	ldr r1, _020FAE9C ; =FUN_020055bc
	bl FUN_ov17_020f4e84
	ldr r3, _020FAEA0 ; =0x04001008
	ldr r1, _020FAEA4 ; =0x0400000A
	ldrh r0, [r3]
	sub r2, r3, #0x1000
	bic r0, r0, #3
	orr r0, r0, #3
	strh r0, [r3]
	ldrh r0, [r3, #2]
	bic r0, r0, #3
	orr r0, r0, #3
	strh r0, [r3, #2]
	ldrh r0, [r2]
	bic r0, r0, #3
	orr r0, r0, #3
	strh r0, [r2]
	ldrh r0, [r1]
	bic r0, r0, #3
	orr r0, r0, #3
	strh r0, [r1]
	ldrh r0, [r1, #2]
	bic r0, r0, #3
	orr r0, r0, #3
	strh r0, [r1, #2]
	ldmfd sp!, {r3, pc}
_020FAE98: .word 0x02112FD8
_020FAE9C: .word FUN_020055bc
_020FAEA0: .word 0x04001008
_020FAEA4: .word 0x0400000A
	arm_func_end FUN_ov17_020fae28

	arm_func_start FUN_ov17_020faea8
FUN_ov17_020faea8: ; 0x020FAEA8
	stmfd sp!, {r3, r4, r5, lr}
	mov r5, #0
	mov r4, #0x15
	mov r1, r5
	mov r2, r4
	mov r0, #2
	mov r3, #8
	bl FUN_ov17_0210d238
	mov r0, r5
	mov r1, r4
	bl FUN_ov17_0210dcd0
	ldr r0, _020FAEE0 ; =FUN_ov17_020faee4
	bl FUN_ov17_020f8ad4
	ldmfd sp!, {r3, r4, r5, pc}
_020FAEE0: .word FUN_ov17_020faee4
	arm_func_end FUN_ov17_020faea8

	arm_func_start FUN_ov17_020faee4
FUN_ov17_020faee4: ; 0x020FAEE4
	stmfd sp!, {r3, lr}
	mov r0, #0
	bl FUN_ov17_0210d214
	cmp r0, #0
	ldmnefd sp!, {r3, pc}
	ldr r0, _020FAF0C ; =FUN_ov17_020fafec
	bl FUN_ov17_020f8e68
	ldr r0, _020FAF10 ; =FUN_ov17_020faf14
	bl FUN_ov17_020f8ad4
	ldmfd sp!, {r3, pc}
_020FAF0C: .word FUN_ov17_020fafec
_020FAF10: .word FUN_ov17_020faf14
	arm_func_end FUN_ov17_020faee4

	arm_func_start FUN_ov17_020faf14
FUN_ov17_020faf14: ; 0x020FAF14
	stmfd sp!, {r3, lr}
	bl FUN_ov17_020faf24
	bl FUN_ov17_020faf28
	ldmfd sp!, {r3, pc}
	arm_func_end FUN_ov17_020faf14

	arm_func_start FUN_ov17_020faf24
FUN_ov17_020faf24: ; 0x020FAF24
	bx lr
	arm_func_end FUN_ov17_020faf24

	arm_func_start FUN_ov17_020faf28
FUN_ov17_020faf28: ; 0x020FAF28
	bx lr
	arm_func_end FUN_ov17_020faf28

	arm_func_start FUN_ov17_020faf2c
FUN_ov17_020faf2c: ; 0x020FAF2C
	stmfd sp!, {r3, lr}
	mov r0, #3
	mov r1, #0
	mov r2, #0x15
	mov r3, #8
	bl FUN_ov17_0210d238
	ldr r0, _020FAF50 ; =FUN_ov17_020faf54
	bl FUN_ov17_020f8ad4
	ldmfd sp!, {r3, pc}
_020FAF50: .word FUN_ov17_020faf54
	arm_func_end FUN_ov17_020faf2c

	arm_func_start FUN_ov17_020faf54
FUN_ov17_020faf54: ; 0x020FAF54
	stmfd sp!, {r4, lr}
	mov r4, #0
	mov r0, r4
	bl FUN_ov17_0210d214
	cmp r0, #0
	ldmnefd sp!, {r4, pc}
	bl FUN_ov17_020f8e4c
	cmp r0, #0
	ldmeqfd sp!, {r4, pc}
	bl FUN_ov17_020f54a4
	bl FUN_ov17_020f459c
	mov r0, r4
	bl FUN_ov17_0210d93c
	mov r0, r4
	mov r1, #0x15
	bl FUN_ov17_0210dd24
	mov r0, r4
	mov r1, #1
	bl FUN_ov17_020f8ae4
	ldr r0, _020FAFDC ; =0x02116214
	ldrb r0, [r0]
	cmp r0, #0
	bne _020FAFBC
	ldr r0, _020FAFE0 ; =FUN_ov17_020fba20
	bl FUN_ov17_020f8ad4
	ldmfd sp!, {r4, pc}
_020FAFBC:
	cmp r0, #2
	bne _020FAFD0
	ldr r0, _020FAFE4 ; =FUN_ov17_020fb820
	bl FUN_ov17_020f8ad4
	ldmfd sp!, {r4, pc}
_020FAFD0:
	ldr r0, _020FAFE8 ; =FUN_ov17_020fb060
	bl FUN_ov17_020f8ad4
	ldmfd sp!, {r4, pc}
_020FAFDC: .word 0x02116214
_020FAFE0: .word FUN_ov17_020fba20
_020FAFE4: .word FUN_ov17_020fb820
_020FAFE8: .word FUN_ov17_020fb060
	arm_func_end FUN_ov17_020faf54

	arm_func_start FUN_ov17_020fafec
FUN_ov17_020fafec: ; 0x020FAFEC
	stmfd sp!, {r3, lr}
	cmp r0, #2
	bne _020FB014
	bl FUN_ov17_021078b4
	ldr r0, _020FB058 ; =0x02116214
	mov r1, #1
	strb r1, [r0]
	bl FUN_ov17_02107ca8
	mov r0, #0x10
	b _020FB03C
_020FB014:
	cmp r0, #3
	bne _020FB028
	ldr r0, _020FB058 ; =0x02116214
	mov r1, #2
	b _020FB030
_020FB028:
	ldr r0, _020FB058 ; =0x02116214
	mov r1, #0
_020FB030:
	strb r1, [r0]
	bl FUN_ov17_02107ca8
	mov r0, #0x12
_020FB03C:
	bl FUN_ov17_02107c40
	mov r0, #0
	bl FUN_ov17_020f8e68
	bl FUN_ov17_020f8df0
	ldr r0, _020FB05C ; =FUN_ov17_020faf2c
	bl FUN_ov17_020f8ad4
	ldmfd sp!, {r3, pc}
_020FB058: .word 0x02116214
_020FB05C: .word FUN_ov17_020faf2c
	arm_func_end FUN_ov17_020fafec

	arm_func_start FUN_ov17_020fb060
FUN_ov17_020fb060: ; 0x020FB060
	stmfd sp!, {r3, lr}
	bl FUN_ov17_020fb080
	mov r0, #0x1f
	bl FUN_ov17_020f4f4c
	ldr r0, _020FB07C ; =FUN_ov17_020fb0e8
	bl FUN_ov17_020f8ad4
	ldmfd sp!, {r3, pc}
_020FB07C: .word FUN_ov17_020fb0e8
	arm_func_end FUN_ov17_020fb060

	arm_func_start FUN_ov17_020fb080
FUN_ov17_020fb080: ; 0x020FB080
	ldr r3, _020FB0E0 ; =0x04001008
	ldr r1, _020FB0E4 ; =0x0400000A
	ldrh r0, [r3]
	sub r2, r3, #0x1000
	bic r0, r0, #3
	orr r0, r0, #3
	strh r0, [r3]
	ldrh r0, [r3, #2]
	bic r0, r0, #3
	orr r0, r0, #3
	strh r0, [r3, #2]
	ldrh r0, [r2]
	bic r0, r0, #3
	orr r0, r0, #3
	strh r0, [r2]
	ldrh r0, [r1]
	bic r0, r0, #3
	orr r0, r0, #3
	strh r0, [r1]
	ldrh r0, [r1, #2]
	bic r0, r0, #3
	orr r0, r0, #3
	strh r0, [r1, #2]
	bx lr
_020FB0E0: .word 0x04001008
_020FB0E4: .word 0x0400000A
	arm_func_end FUN_ov17_020fb080

	arm_func_start FUN_ov17_020fb0e8
FUN_ov17_020fb0e8: ; 0x020FB0E8
	stmfd sp!, {r3, r4, r5, lr}
	mov r5, #0
	mov r4, #0x15
	mov r1, r5
	mov r2, r4
	mov r0, #2
	mov r3, #8
	bl FUN_ov17_0210d238
	mov r0, r5
	mov r1, r4
	bl FUN_ov17_0210dcd0
	ldr r0, _020FB120 ; =FUN_ov17_020fb124
	bl FUN_ov17_020f8ad4
	ldmfd sp!, {r3, r4, r5, pc}
_020FB120: .word FUN_ov17_020fb124
	arm_func_end FUN_ov17_020fb0e8

	arm_func_start FUN_ov17_020fb124
FUN_ov17_020fb124: ; 0x020FB124
	stmfd sp!, {r3, lr}
	mov r0, #0
	bl FUN_ov17_0210d214
	cmp r0, #0
	ldmnefd sp!, {r3, pc}
	mov r0, #5
	bl FUN_ov17_020f4f14
	ldr r0, _020FB14C ; =FUN_ov17_020fb150
	bl FUN_ov17_020f8ad4
	ldmfd sp!, {r3, pc}
_020FB14C: .word FUN_ov17_020fb150
	arm_func_end FUN_ov17_020fb124

	arm_func_start FUN_ov17_020fb150
FUN_ov17_020fb150: ; 0x020FB150
	stmfd sp!, {r3, lr}
	bl FUN_ov17_020f47c4
	cmn r0, #2
	ldmeqfd sp!, {r3, pc}
	bl FUN_ov17_020f4834
	ldr r0, _020FB170 ; =FUN_ov17_020fb174
	bl FUN_ov17_020f8ad4
	ldmfd sp!, {r3, pc}
_020FB170: .word FUN_ov17_020fb174
	arm_func_end FUN_ov17_020fb150

	arm_func_start FUN_ov17_020fb174
FUN_ov17_020fb174: ; 0x020FB174
	stmfd sp!, {r3, lr}
	bl FUN_ov17_020fb188
	bl FUN_ov17_020fb1a8
	bl FUN_ov17_020fb1ac
	ldmfd sp!, {r3, pc}
	arm_func_end FUN_ov17_020fb174

	arm_func_start FUN_ov17_020fb188
FUN_ov17_020fb188: ; 0x020FB188
	stmfd sp!, {r3, lr}
	mov r0, #1
	bl FUN_ov17_0210e4b8
	cmp r0, #0
	ldmeqfd sp!, {r3, pc}
	mov r0, #0
	bl FUN_ov17_020f47d8
	ldmfd sp!, {r3, pc}
	arm_func_end FUN_ov17_020fb188

	arm_func_start FUN_ov17_020fb1a8
FUN_ov17_020fb1a8: ; 0x020FB1A8
	bx lr
	arm_func_end FUN_ov17_020fb1a8

	arm_func_start FUN_ov17_020fb1ac
FUN_ov17_020fb1ac: ; 0x020FB1AC
	stmfd sp!, {r3, lr}
	bl FUN_ov17_020f47c4
	cmp r0, #0
	ldmnefd sp!, {r3, pc}
	mov r0, #6
	bl FUN_ov17_02107c40
	ldr r0, _020FB1D0 ; =FUN_ov17_020fb1d4
	bl FUN_ov17_020f8ad4
	ldmfd sp!, {r3, pc}
_020FB1D0: .word FUN_ov17_020fb1d4
	arm_func_end FUN_ov17_020fb1ac

	arm_func_start FUN_ov17_020fb1d4
FUN_ov17_020fb1d4: ; 0x020FB1D4
	stmfd sp!, {r3, lr}
	bl FUN_ov17_020f484c
	mov r0, #8
	bl FUN_ov17_0210d424
	ldr r0, _020FB1F0 ; =FUN_ov17_020fb1f4
	bl FUN_ov17_020f8ad4
	ldmfd sp!, {r3, pc}
_020FB1F0: .word FUN_ov17_020fb1f4
	arm_func_end FUN_ov17_020fb1d4

	arm_func_start FUN_ov17_020fb1f4
FUN_ov17_020fb1f4: ; 0x020FB1F4
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	mov r7, #1
	mov r0, r7
	bl FUN_ov17_0210d214
	cmp r0, #0
	ldmnefd sp!, {r3, r4, r5, r6, r7, pc}
	mov r6, #3
	mov r5, #0x3f
	mov r4, #0x40
	mov r0, r6
	mov r1, r7
	mov r2, r5
	mov r3, r4
	bl FUN_ov17_0210d238
	mov r0, r6
	mov r2, r5
	mov r3, r4
	mov r1, #0
	bl FUN_ov17_0210d238
	ldr r0, _020FB24C ; =FUN_ov17_020fb250
	bl FUN_ov17_020f8ad4
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_020FB24C: .word FUN_ov17_020fb250
	arm_func_end FUN_ov17_020fb1f4

	arm_func_start FUN_ov17_020fb250
FUN_ov17_020fb250: ; 0x020FB250
	stmfd sp!, {r3, lr}
	mov r0, #1
	bl FUN_ov17_0210d214
	cmp r0, #0
	ldmnefd sp!, {r3, pc}
	mov r0, #0
	bl FUN_ov17_0210d214
	cmp r0, #0
	ldmnefd sp!, {r3, pc}
	mov r0, #0x800000
	bl FUN_02003e24
	bl FUN_02016cf0
	ldmfd sp!, {r3, pc}
	arm_func_end FUN_ov17_020fb250

	arm_func_start FUN_ov17_020fb284
FUN_ov17_020fb284: ; 0x020FB284
	stmfd sp!, {r3, lr}
	bl FUN_ov17_020fb2a4
	mov r0, #0x1a
	bl FUN_ov17_020f4f4c
	ldr r0, _020FB2A0 ; =FUN_ov17_020fb30c
	bl FUN_ov17_020f8ad4
	ldmfd sp!, {r3, pc}
_020FB2A0: .word FUN_ov17_020fb30c
	arm_func_end FUN_ov17_020fb284

	arm_func_start FUN_ov17_020fb2a4
FUN_ov17_020fb2a4: ; 0x020FB2A4
	ldr r3, _020FB304 ; =0x04001008
	ldr r1, _020FB308 ; =0x0400000A
	ldrh r0, [r3]
	sub r2, r3, #0x1000
	bic r0, r0, #3
	orr r0, r0, #3
	strh r0, [r3]
	ldrh r0, [r3, #2]
	bic r0, r0, #3
	orr r0, r0, #3
	strh r0, [r3, #2]
	ldrh r0, [r2]
	bic r0, r0, #3
	orr r0, r0, #3
	strh r0, [r2]
	ldrh r0, [r1]
	bic r0, r0, #3
	orr r0, r0, #3
	strh r0, [r1]
	ldrh r0, [r1, #2]
	bic r0, r0, #3
	orr r0, r0, #3
	strh r0, [r1, #2]
	bx lr
_020FB304: .word 0x04001008
_020FB308: .word 0x0400000A
	arm_func_end FUN_ov17_020fb2a4

	arm_func_start FUN_ov17_020fb30c
FUN_ov17_020fb30c: ; 0x020FB30C
	stmfd sp!, {r3, r4, r5, lr}
	mov r5, #0
	mov r4, #0x15
	mov r1, r5
	mov r2, r4
	mov r0, #2
	mov r3, #8
	bl FUN_ov17_0210d238
	mov r0, r5
	mov r1, r4
	bl FUN_ov17_0210dcd0
	ldr r0, _020FB344 ; =FUN_ov17_020fb348
	bl FUN_ov17_020f8ad4
	ldmfd sp!, {r3, r4, r5, pc}
_020FB344: .word FUN_ov17_020fb348
	arm_func_end FUN_ov17_020fb30c

	arm_func_start FUN_ov17_020fb348
FUN_ov17_020fb348: ; 0x020FB348
	stmfd sp!, {r3, lr}
	mov r0, #1
	bl FUN_ov17_0210d214
	cmp r0, #0
	ldmnefd sp!, {r3, pc}
	mov r0, #0
	bl FUN_ov17_0210d214
	cmp r0, #0
	ldmnefd sp!, {r3, pc}
	mov r0, #4
	bl FUN_ov17_020f4f14
	ldr r0, _020FB380 ; =FUN_ov17_020fb384
	bl FUN_ov17_020f8ad4
	ldmfd sp!, {r3, pc}
_020FB380: .word FUN_ov17_020fb384
	arm_func_end FUN_ov17_020fb348

	arm_func_start FUN_ov17_020fb384
FUN_ov17_020fb384: ; 0x020FB384
	stmfd sp!, {r3, lr}
	bl FUN_ov17_020f47c4
	cmn r0, #2
	ldmeqfd sp!, {r3, pc}
	bl FUN_ov17_020f4834
	ldr r0, _020FB3A4 ; =FUN_ov17_020fb3a8
	bl FUN_ov17_020f8ad4
	ldmfd sp!, {r3, pc}
_020FB3A4: .word FUN_ov17_020fb3a8
	arm_func_end FUN_ov17_020fb384

	arm_func_start FUN_ov17_020fb3a8
FUN_ov17_020fb3a8: ; 0x020FB3A8
	stmfd sp!, {r3, lr}
	bl FUN_ov17_020fb3bc
	bl FUN_ov17_020fb3dc
	bl FUN_ov17_020fb3e0
	ldmfd sp!, {r3, pc}
	arm_func_end FUN_ov17_020fb3a8

	arm_func_start FUN_ov17_020fb3bc
FUN_ov17_020fb3bc: ; 0x020FB3BC
	stmfd sp!, {r3, lr}
	mov r0, #1
	bl FUN_ov17_0210e4b8
	cmp r0, #0
	ldmeqfd sp!, {r3, pc}
	mov r0, #0
	bl FUN_ov17_020f47d8
	ldmfd sp!, {r3, pc}
	arm_func_end FUN_ov17_020fb3bc

	arm_func_start FUN_ov17_020fb3dc
FUN_ov17_020fb3dc: ; 0x020FB3DC
	bx lr
	arm_func_end FUN_ov17_020fb3dc

	arm_func_start FUN_ov17_020fb3e0
FUN_ov17_020fb3e0: ; 0x020FB3E0
	stmfd sp!, {r3, lr}
	bl FUN_ov17_020f47c4
	cmp r0, #0
	ldmnefd sp!, {r3, pc}
	mov r0, #6
	bl FUN_ov17_02107c40
	ldr r0, _020FB404 ; =FUN_ov17_020fb408
	bl FUN_ov17_020f8ad4
	ldmfd sp!, {r3, pc}
_020FB404: .word FUN_ov17_020fb408
	arm_func_end FUN_ov17_020fb3e0

	arm_func_start FUN_ov17_020fb408
FUN_ov17_020fb408: ; 0x020FB408
	stmfd sp!, {r3, lr}
	bl FUN_ov17_020f484c
	mov r0, #8
	bl FUN_ov17_0210d424
	ldr r0, _020FB424 ; =FUN_ov17_020fb428
	bl FUN_ov17_020f8ad4
	ldmfd sp!, {r3, pc}
_020FB424: .word FUN_ov17_020fb428
	arm_func_end FUN_ov17_020fb408

	arm_func_start FUN_ov17_020fb428
FUN_ov17_020fb428: ; 0x020FB428
	stmfd sp!, {r3, lr}
	mov r0, #1
	bl FUN_ov17_0210d214
	cmp r0, #0
	ldmnefd sp!, {r3, pc}
	bl FUN_ov17_020f4794
	mov r0, #3
	mov r1, #0
	mov r2, #0x15
	mov r3, #8
	bl FUN_ov17_0210d238
	ldr r0, _020FB460 ; =FUN_ov17_020fb464
	bl FUN_ov17_020f8ad4
	ldmfd sp!, {r3, pc}
_020FB460: .word FUN_ov17_020fb464
	arm_func_end FUN_ov17_020fb428

	arm_func_start FUN_ov17_020fb464
FUN_ov17_020fb464: ; 0x020FB464
	stmfd sp!, {r4, lr}
	mov r4, #0
	mov r0, r4
	bl FUN_ov17_0210d214
	cmp r0, #0
	ldmnefd sp!, {r4, pc}
	bl FUN_ov17_020f4808
	cmp r0, #0
	ldmeqfd sp!, {r4, pc}
	mov r0, r4
	bl FUN_ov17_0210d93c
	mov r0, r4
	mov r1, #0x15
	bl FUN_ov17_0210dd24
	mov r0, r4
	mov r1, #1
	bl FUN_ov17_020f8ae4
	ldr r0, _020FB4B4 ; =FUN_ov17_020fc1a0
	bl FUN_ov17_020f8ad4
	ldmfd sp!, {r4, pc}
_020FB4B4: .word FUN_ov17_020fc1a0
	arm_func_end FUN_ov17_020fb464

	arm_func_start FUN_ov17_020fb4b8
FUN_ov17_020fb4b8: ; 0x020FB4B8
	stmfd sp!, {r4, lr}
	ldr r0, _020FB4F8 ; =0x02116218
	mov r4, #0
	strb r4, [r0]
	bl FUN_ov17_020fb500
	mov r0, #0x13
	bl FUN_ov17_020f5324
	mov r0, #0x3c
	mov r2, r4
	sub r1, r0, #0x3d
	bl FUN_ov17_020f4d10
	mov r0, #0x1b
	bl FUN_ov17_020f4f4c
	ldr r0, _020FB4FC ; =FUN_ov17_020fb580
	bl FUN_ov17_020f8ad4
	ldmfd sp!, {r4, pc}
_020FB4F8: .word 0x02116218
_020FB4FC: .word FUN_ov17_020fb580
	arm_func_end FUN_ov17_020fb4b8

	arm_func_start FUN_ov17_020fb500
FUN_ov17_020fb500: ; 0x020FB500
	stmfd sp!, {r3, lr}
	ldr r0, _020FB570 ; =0x02112FEC
	ldr r1, _020FB574 ; =FUN_020055bc
	bl FUN_ov17_020f4e84
	ldr r3, _020FB578 ; =0x04001008
	ldr r1, _020FB57C ; =0x0400000A
	ldrh r0, [r3]
	sub r2, r3, #0x1000
	bic r0, r0, #3
	orr r0, r0, #3
	strh r0, [r3]
	ldrh r0, [r3, #2]
	bic r0, r0, #3
	orr r0, r0, #3
	strh r0, [r3, #2]
	ldrh r0, [r2]
	bic r0, r0, #3
	orr r0, r0, #3
	strh r0, [r2]
	ldrh r0, [r1]
	bic r0, r0, #3
	orr r0, r0, #3
	strh r0, [r1]
	ldrh r0, [r1, #2]
	bic r0, r0, #3
	orr r0, r0, #3
	strh r0, [r1, #2]
	ldmfd sp!, {r3, pc}
_020FB570: .word 0x02112FEC
_020FB574: .word FUN_020055bc
_020FB578: .word 0x04001008
_020FB57C: .word 0x0400000A
	arm_func_end FUN_ov17_020fb500

	arm_func_start FUN_ov17_020fb580
FUN_ov17_020fb580: ; 0x020FB580
	stmfd sp!, {r4, r5, r6, r7, r8, lr}
	mov r7, #1
	mov r8, #2
	mov r6, #8
	mov r0, r8
	mov r1, r7
	mov r2, r7
	mov r3, r6
	bl FUN_ov17_0210d238
	mov r5, #0
	mov r4, #0x15
	mov r0, r8
	mov r1, r5
	mov r2, r4
	mov r3, r6
	bl FUN_ov17_0210d238
	mov r0, r7
	mov r1, r7
	bl FUN_ov17_0210dcd0
	mov r0, r5
	mov r1, r4
	bl FUN_ov17_0210dcd0
	ldr r0, _020FB5E4 ; =FUN_ov17_020fb5e8
	bl FUN_ov17_020f8ad4
	ldmfd sp!, {r4, r5, r6, r7, r8, pc}
_020FB5E4: .word FUN_ov17_020fb5e8
	arm_func_end FUN_ov17_020fb580

	arm_func_start FUN_ov17_020fb5e8
FUN_ov17_020fb5e8: ; 0x020FB5E8
	stmfd sp!, {r3, lr}
	mov r0, #0
	bl FUN_ov17_0210d214
	cmp r0, #0
	ldmnefd sp!, {r3, pc}
	mov r0, #3
	bl FUN_ov17_020f4f14
	ldr r0, _020FB610 ; =FUN_ov17_020fb614
	bl FUN_ov17_020f8ad4
	ldmfd sp!, {r3, pc}
_020FB610: .word FUN_ov17_020fb614
	arm_func_end FUN_ov17_020fb5e8

	arm_func_start FUN_ov17_020fb614
FUN_ov17_020fb614: ; 0x020FB614
	stmfd sp!, {r3, lr}
	bl FUN_ov17_020f47c4
	cmn r0, #2
	ldmeqfd sp!, {r3, pc}
	bl FUN_ov17_020f4834
	ldr r0, _020FB634 ; =FUN_ov17_020fb638
	bl FUN_ov17_020f8ad4
	ldmfd sp!, {r3, pc}
_020FB634: .word FUN_ov17_020fb638
	arm_func_end FUN_ov17_020fb614

	arm_func_start FUN_ov17_020fb638
FUN_ov17_020fb638: ; 0x020FB638
	stmfd sp!, {r3, lr}
	bl FUN_ov17_020fb64c
	bl FUN_ov17_020fb688
	bl FUN_ov17_020fb68c
	ldmfd sp!, {r3, pc}
	arm_func_end FUN_ov17_020fb638

	arm_func_start FUN_ov17_020fb64c
FUN_ov17_020fb64c: ; 0x020FB64C
	stmfd sp!, {r4, lr}
	mov r4, #1
	mov r0, r4
	bl FUN_ov17_0210e4b8
	cmp r0, #0
	beq _020FB66C
	mov r0, r4
	bl FUN_ov17_020f47d8
_020FB66C:
	mov r0, #2
	bl FUN_ov17_0210e4b8
	cmp r0, #0
	ldmeqfd sp!, {r4, pc}
	mov r0, #0
	bl FUN_ov17_020f47d8
	ldmfd sp!, {r4, pc}
	arm_func_end FUN_ov17_020fb64c

	arm_func_start FUN_ov17_020fb688
FUN_ov17_020fb688: ; 0x020FB688
	bx lr
	arm_func_end FUN_ov17_020fb688

	arm_func_start FUN_ov17_020fb68c
FUN_ov17_020fb68c: ; 0x020FB68C
	stmfd sp!, {r3, lr}
	bl FUN_ov17_020f47c4
	cmp r0, #0
	beq _020FB6A8
	cmp r0, #1
	beq _020FB6B4
	ldmfd sp!, {r3, pc}
_020FB6A8:
	mov r0, #7
	bl FUN_ov17_02107c40
	b _020FB6C8
_020FB6B4:
	mov r0, #6
	bl FUN_ov17_02107c40
	ldr r0, _020FB6D4 ; =0x02116218
	mov r1, #1
	strb r1, [r0]
_020FB6C8:
	ldr r0, _020FB6D8 ; =FUN_ov17_020fb6dc
	bl FUN_ov17_020f8ad4
	ldmfd sp!, {r3, pc}
_020FB6D4: .word 0x02116218
_020FB6D8: .word FUN_ov17_020fb6dc
	arm_func_end FUN_ov17_020fb68c

	arm_func_start FUN_ov17_020fb6dc
FUN_ov17_020fb6dc: ; 0x020FB6DC
	stmfd sp!, {r3, lr}
	bl FUN_ov17_020f484c
	mov r0, #8
	bl FUN_ov17_0210d424
	ldr r0, _020FB6F8 ; =FUN_ov17_020fb6fc
	bl FUN_ov17_020f8ad4
	ldmfd sp!, {r3, pc}
_020FB6F8: .word FUN_ov17_020fb6fc
	arm_func_end FUN_ov17_020fb6dc

	arm_func_start FUN_ov17_020fb6fc
FUN_ov17_020fb6fc: ; 0x020FB6FC
	stmfd sp!, {r4, lr}
	mov r4, #1
	mov r0, r4
	bl FUN_ov17_0210d214
	cmp r0, #0
	ldmnefd sp!, {r4, pc}
	bl FUN_ov17_020f4794
	ldr r0, _020FB75C ; =0x02116218
	ldrb r0, [r0]
	cmp r0, #0
	bne _020FB73C
	mov r1, r4
	mov r2, r4
	mov r0, #3
	mov r3, #8
	bl FUN_ov17_0210d238
_020FB73C:
	mov r0, #3
	mov r1, #0
	mov r2, #0x15
	mov r3, #8
	bl FUN_ov17_0210d238
	ldr r0, _020FB760 ; =FUN_ov17_020fb764
	bl FUN_ov17_020f8ad4
	ldmfd sp!, {r4, pc}
_020FB75C: .word 0x02116218
_020FB760: .word FUN_ov17_020fb764
	arm_func_end FUN_ov17_020fb6fc

	arm_func_start FUN_ov17_020fb764
FUN_ov17_020fb764: ; 0x020FB764
	stmfd sp!, {r4, lr}
	mov r0, #0
	bl FUN_ov17_0210d214
	cmp r0, #0
	ldmnefd sp!, {r4, pc}
	ldr r0, _020FB814 ; =0x02116218
	ldrb r0, [r0]
	cmp r0, #0
	bne _020FB798
	mov r0, #1
	bl FUN_ov17_0210d214
	cmp r0, #0
	ldmnefd sp!, {r4, pc}
_020FB798:
	bl FUN_ov17_020f4808
	cmp r0, #0
	ldmeqfd sp!, {r4, pc}
	mov r0, #0
	bl FUN_ov17_0210d93c
	ldr r0, _020FB814 ; =0x02116218
	ldrb r0, [r0]
	cmp r0, #0
	bne _020FB7CC
	bl FUN_ov17_020f4de8
	mov r0, #1
	mov r1, r0
	bl FUN_ov17_0210dd24
_020FB7CC:
	mov r4, #0
	mov r0, r4
	mov r1, #0x15
	bl FUN_ov17_0210dd24
	ldr r0, _020FB814 ; =0x02116218
	mov r1, #1
	ldrb r0, [r0]
	cmp r0, #0
	mov r0, r4
	bne _020FB804
	bl FUN_ov17_020f8ae4
	ldr r0, _020FB818 ; =FUN_ov17_020fa6d0
	bl FUN_ov17_020f8ad4
	ldmfd sp!, {r4, pc}
_020FB804:
	bl FUN_ov17_020f8ae4
	ldr r0, _020FB81C ; =FUN_ov17_020fb284
	bl FUN_ov17_020f8ad4
	ldmfd sp!, {r4, pc}
_020FB814: .word 0x02116218
_020FB818: .word FUN_ov17_020fa6d0
_020FB81C: .word FUN_ov17_020fb284
	arm_func_end FUN_ov17_020fb764

	arm_func_start FUN_ov17_020fb820
FUN_ov17_020fb820: ; 0x020FB820
	stmfd sp!, {r3, lr}
	ldr r0, _020FB848 ; =0x0211621C
	mov r1, #0
	strb r1, [r0]
	bl FUN_ov17_020fb850
	mov r0, #0x21
	bl FUN_ov17_020f4f4c
	ldr r0, _020FB84C ; =FUN_ov17_020fb8bc
	bl FUN_ov17_020f8ad4
	ldmfd sp!, {r3, pc}
_020FB848: .word 0x0211621C
_020FB84C: .word FUN_ov17_020fb8bc
	arm_func_end FUN_ov17_020fb820

	arm_func_start FUN_ov17_020fb850
FUN_ov17_020fb850: ; 0x020FB850
	stmfd sp!, {r3, lr}
	ldr r0, _020FB8AC ; =0x02113000
	ldr r1, _020FB8B0 ; =FUN_020055bc
	bl FUN_ov17_020f4e84
	ldr r2, _020FB8B4 ; =0x04001008
	ldr r1, _020FB8B8 ; =0x0400000A
	ldrh r0, [r2]
	bic r0, r0, #3
	orr r0, r0, #3
	strh r0, [r2]
	ldrh r0, [r2, #2]
	bic r0, r0, #3
	orr r0, r0, #3
	strh r0, [r2, #2]
	ldrh r0, [r1]
	bic r0, r0, #3
	orr r0, r0, #3
	strh r0, [r1]
	ldrh r0, [r1, #2]
	bic r0, r0, #3
	orr r0, r0, #3
	strh r0, [r1, #2]
	ldmfd sp!, {r3, pc}
_020FB8AC: .word 0x02113000
_020FB8B0: .word FUN_020055bc
_020FB8B4: .word 0x04001008
_020FB8B8: .word 0x0400000A
	arm_func_end FUN_ov17_020fb850

	arm_func_start FUN_ov17_020fb8bc
FUN_ov17_020fb8bc: ; 0x020FB8BC
	stmfd sp!, {r3, r4, r5, lr}
	mov r5, #0
	mov r4, #0x15
	mov r1, r5
	mov r2, r4
	mov r0, #2
	mov r3, #8
	bl FUN_ov17_0210d238
	mov r0, r5
	mov r1, r4
	bl FUN_ov17_0210dcd0
	ldr r0, _020FB8F4 ; =FUN_ov17_020fb8f8
	bl FUN_ov17_020f8ad4
	ldmfd sp!, {r3, r4, r5, pc}
_020FB8F4: .word FUN_ov17_020fb8f8
	arm_func_end FUN_ov17_020fb8bc

	arm_func_start FUN_ov17_020fb8f8
FUN_ov17_020fb8f8: ; 0x020FB8F8
	stmfd sp!, {r3, lr}
	mov r0, #0
	bl FUN_ov17_0210d214
	cmp r0, #0
	ldmnefd sp!, {r3, pc}
	bl FUN_ov17_020f8e4c
	cmp r0, #0
	ldmeqfd sp!, {r3, pc}
	ldr r0, _020FB924 ; =FUN_ov17_020fb928
	bl FUN_ov17_020f8ad4
	ldmfd sp!, {r3, pc}
_020FB924: .word FUN_ov17_020fb928
	arm_func_end FUN_ov17_020fb8f8

	arm_func_start FUN_ov17_020fb928
FUN_ov17_020fb928: ; 0x020FB928
	stmfd sp!, {r3, lr}
	bl FUN_ov17_020fb9ec
	bl FUN_ov17_020fb938
	ldmfd sp!, {r3, pc}
	arm_func_end FUN_ov17_020fb928

	arm_func_start FUN_ov17_020fb938
FUN_ov17_020fb938: ; 0x020FB938
	bx lr
	arm_func_end FUN_ov17_020fb938

	arm_func_start FUN_ov17_020fb93c
FUN_ov17_020fb93c: ; 0x020FB93C
	stmfd sp!, {r3, r4, r5, lr}
	mov r5, #3
	mov r1, #1
	mov r4, #8
	mov r0, r5
	mov r2, r1
	mov r3, r4
	bl FUN_ov17_0210d238
	mov r0, r5
	mov r3, r4
	mov r1, #0
	mov r2, #0x15
	bl FUN_ov17_0210d238
	ldr r0, _020FB97C ; =FUN_ov17_020fb980
	bl FUN_ov17_020f8ad4
	ldmfd sp!, {r3, r4, r5, pc}
_020FB97C: .word FUN_ov17_020fb980
	arm_func_end FUN_ov17_020fb93c

	arm_func_start FUN_ov17_020fb980
FUN_ov17_020fb980: ; 0x020FB980
	stmfd sp!, {r3, r4, r5, lr}
	mov r5, #1
	mov r0, r5
	bl FUN_ov17_0210d214
	cmp r0, #0
	ldmnefd sp!, {r3, r4, r5, pc}
	mov r4, #0
	mov r0, r4
	bl FUN_ov17_0210d214
	cmp r0, #0
	ldmnefd sp!, {r3, r4, r5, pc}
	mov r0, r4
	bl FUN_ov17_0210d93c
	bl FUN_ov17_020f4de8
	mov r0, r5
	mov r1, r5
	bl FUN_ov17_0210dd24
	mov r0, r4
	mov r1, #0x15
	bl FUN_ov17_0210dd24
	mov r0, r4
	mov r1, r5
	bl FUN_ov17_020f8ae4
	ldr r0, _020FB9E8 ; =FUN_ov17_020fa6d0
	bl FUN_ov17_020f8ad4
	ldmfd sp!, {r3, r4, r5, pc}
_020FB9E8: .word FUN_ov17_020fa6d0
	arm_func_end FUN_ov17_020fb980

	arm_func_start FUN_ov17_020fb9ec
FUN_ov17_020fb9ec: ; 0x020FB9EC
	stmfd sp!, {r3, lr}
	ldr r1, _020FBA18 ; =0x0211621C
	ldrb r0, [r1]
	add r0, r0, #1
	and r2, r0, #0xff
	strb r0, [r1]
	cmp r2, #0x78
	ldmlofd sp!, {r3, pc}
	ldr r0, _020FBA1C ; =FUN_ov17_020fb93c
	bl FUN_ov17_020f8ad4
	ldmfd sp!, {r3, pc}
_020FBA18: .word 0x0211621C
_020FBA1C: .word FUN_ov17_020fb93c
	arm_func_end FUN_ov17_020fb9ec

	arm_func_start FUN_ov17_020fba20
FUN_ov17_020fba20: ; 0x020FBA20
	stmfd sp!, {r3, lr}
	bl FUN_ov17_020fba5c
	mov r0, #0x20
	bl FUN_ov17_020f4f4c
	mov r0, #0x3c
	sub r1, r0, #0x3d
	mov r2, #0
	bl FUN_ov17_020f4d10
	ldr r1, _020FBA54 ; =0x02116220
	strb r0, [r1]
	ldr r0, _020FBA58 ; =FUN_ov17_020fbadc
	bl FUN_ov17_020f8ad4
	ldmfd sp!, {r3, pc}
_020FBA54: .word 0x02116220
_020FBA58: .word FUN_ov17_020fbadc
	arm_func_end FUN_ov17_020fba20

	arm_func_start FUN_ov17_020fba5c
FUN_ov17_020fba5c: ; 0x020FBA5C
	stmfd sp!, {r3, lr}
	ldr r0, _020FBACC ; =0x02113014
	ldr r1, _020FBAD0 ; =FUN_020055bc
	bl FUN_ov17_020f4e84
	ldr r3, _020FBAD4 ; =0x04001008
	ldr r1, _020FBAD8 ; =0x0400000A
	ldrh r0, [r3]
	sub r2, r3, #0x1000
	bic r0, r0, #3
	orr r0, r0, #3
	strh r0, [r3]
	ldrh r0, [r3, #2]
	bic r0, r0, #3
	orr r0, r0, #3
	strh r0, [r3, #2]
	ldrh r0, [r2]
	bic r0, r0, #3
	orr r0, r0, #3
	strh r0, [r2]
	ldrh r0, [r1]
	bic r0, r0, #3
	orr r0, r0, #3
	strh r0, [r1]
	ldrh r0, [r1, #2]
	bic r0, r0, #3
	orr r0, r0, #3
	strh r0, [r1, #2]
	ldmfd sp!, {r3, pc}
_020FBACC: .word 0x02113014
_020FBAD0: .word FUN_020055bc
_020FBAD4: .word 0x04001008
_020FBAD8: .word 0x0400000A
	arm_func_end FUN_ov17_020fba5c

	arm_func_start FUN_ov17_020fbadc
FUN_ov17_020fbadc: ; 0x020FBADC
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	mov r7, #2
	mov r6, #0
	mov r4, #0x15
	mov r5, #8
	mov r0, r7
	mov r1, r6
	mov r2, r4
	mov r3, r5
	bl FUN_ov17_0210d238
	mov r0, r6
	mov r1, r4
	bl FUN_ov17_0210dcd0
	ldr r0, _020FBB50 ; =0x02116220
	ldrb r0, [r0]
	cmp r0, #0
	beq _020FBB44
	mov r4, #1
	mov r0, r7
	mov r1, r4
	mov r2, r4
	mov r3, r5
	bl FUN_ov17_0210d238
	mov r0, r4
	mov r1, r4
	bl FUN_ov17_0210dcd0
_020FBB44:
	ldr r0, _020FBB54 ; =FUN_ov17_020fbb58
	bl FUN_ov17_020f8ad4
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_020FBB50: .word 0x02116220
_020FBB54: .word FUN_ov17_020fbb58
	arm_func_end FUN_ov17_020fbadc

	arm_func_start FUN_ov17_020fbb58
FUN_ov17_020fbb58: ; 0x020FBB58
	stmfd sp!, {r3, lr}
	mov r0, #1
	bl FUN_ov17_0210d214
	cmp r0, #0
	ldmnefd sp!, {r3, pc}
	mov r0, #0
	bl FUN_ov17_0210d214
	cmp r0, #0
	ldmnefd sp!, {r3, pc}
	mov r0, #3
	bl FUN_ov17_020f4f14
	ldr r0, _020FBB90 ; =FUN_ov17_020fbb94
	bl FUN_ov17_020f8ad4
	ldmfd sp!, {r3, pc}
_020FBB90: .word FUN_ov17_020fbb94
	arm_func_end FUN_ov17_020fbb58

	arm_func_start FUN_ov17_020fbb94
FUN_ov17_020fbb94: ; 0x020FBB94
	stmfd sp!, {r3, lr}
	bl FUN_ov17_020f47c4
	cmn r0, #2
	ldmeqfd sp!, {r3, pc}
	bl FUN_ov17_020f8e4c
	cmp r0, #0
	ldmeqfd sp!, {r3, pc}
	bl FUN_ov17_020f4834
	ldr r0, _020FBBC0 ; =FUN_ov17_020fbbc4
	bl FUN_ov17_020f8ad4
	ldmfd sp!, {r3, pc}
_020FBBC0: .word FUN_ov17_020fbbc4
	arm_func_end FUN_ov17_020fbb94

	arm_func_start FUN_ov17_020fbbc4
FUN_ov17_020fbbc4: ; 0x020FBBC4
	stmfd sp!, {r3, lr}
	bl FUN_ov17_020fbbd8
	bl FUN_ov17_020fbc14
	bl FUN_ov17_020fbc18
	ldmfd sp!, {r3, pc}
	arm_func_end FUN_ov17_020fbbc4

	arm_func_start FUN_ov17_020fbbd8
FUN_ov17_020fbbd8: ; 0x020FBBD8
	stmfd sp!, {r4, lr}
	mov r4, #1
	mov r0, r4
	bl FUN_ov17_0210e4b8
	cmp r0, #0
	beq _020FBBF8
	mov r0, r4
	bl FUN_ov17_020f47d8
_020FBBF8:
	mov r0, #2
	bl FUN_ov17_0210e4b8
	cmp r0, #0
	ldmeqfd sp!, {r4, pc}
	mov r0, #0
	bl FUN_ov17_020f47d8
	ldmfd sp!, {r4, pc}
	arm_func_end FUN_ov17_020fbbd8

	arm_func_start FUN_ov17_020fbc14
FUN_ov17_020fbc14: ; 0x020FBC14
	bx lr
	arm_func_end FUN_ov17_020fbc14

	arm_func_start FUN_ov17_020fbc18
FUN_ov17_020fbc18: ; 0x020FBC18
	stmfd sp!, {r3, lr}
	bl FUN_ov17_020f47c4
	cmp r0, #0
	beq _020FBC40
	cmp r0, #1
	ldmnefd sp!, {r3, pc}
	ldr r1, _020FBC60 ; =0x02116220
	mov r2, #1
	mov r0, #6
	b _020FBC4C
_020FBC40:
	ldr r1, _020FBC60 ; =0x02116220
	mov r2, #0
	mov r0, #7
_020FBC4C:
	strb r2, [r1, #1]
	bl FUN_ov17_02107c40
	ldr r0, _020FBC64 ; =FUN_ov17_020fbc68
	bl FUN_ov17_020f8ad4
	ldmfd sp!, {r3, pc}
_020FBC60: .word 0x02116220
_020FBC64: .word FUN_ov17_020fbc68
	arm_func_end FUN_ov17_020fbc18

	arm_func_start FUN_ov17_020fbc68
FUN_ov17_020fbc68: ; 0x020FBC68
	stmfd sp!, {r3, lr}
	bl FUN_ov17_020f484c
	mov r0, #8
	bl FUN_ov17_0210d424
	ldr r0, _020FBC84 ; =FUN_ov17_020fbc88
	bl FUN_ov17_020f8ad4
	ldmfd sp!, {r3, pc}
_020FBC84: .word FUN_ov17_020fbc88
	arm_func_end FUN_ov17_020fbc68

	arm_func_start FUN_ov17_020fbc88
FUN_ov17_020fbc88: ; 0x020FBC88
	stmfd sp!, {r4, lr}
	mov r4, #1
	mov r0, r4
	bl FUN_ov17_0210d214
	cmp r0, #0
	ldmnefd sp!, {r4, pc}
	bl FUN_ov17_020f4794
	ldr r0, _020FBCE8 ; =0x02116220
	ldrb r0, [r0, #1]
	cmp r0, #0
	bne _020FBCC8
	mov r1, r4
	mov r2, r4
	mov r0, #3
	mov r3, #8
	bl FUN_ov17_0210d238
_020FBCC8:
	mov r0, #3
	mov r1, #0
	mov r2, #0x15
	mov r3, #8
	bl FUN_ov17_0210d238
	ldr r0, _020FBCEC ; =FUN_ov17_020fbcf0
	bl FUN_ov17_020f8ad4
	ldmfd sp!, {r4, pc}
_020FBCE8: .word 0x02116220
_020FBCEC: .word FUN_ov17_020fbcf0
	arm_func_end FUN_ov17_020fbc88

	arm_func_start FUN_ov17_020fbcf0
FUN_ov17_020fbcf0: ; 0x020FBCF0
	stmfd sp!, {r3, r4, r5, lr}
	mov r5, #1
	mov r0, r5
	bl FUN_ov17_0210d214
	cmp r0, #0
	ldmnefd sp!, {r3, r4, r5, pc}
	mov r4, #0
	mov r0, r4
	bl FUN_ov17_0210d214
	cmp r0, #0
	ldmnefd sp!, {r3, r4, r5, pc}
	bl FUN_ov17_020f4808
	cmp r0, #0
	ldmeqfd sp!, {r3, r4, r5, pc}
	mov r0, r4
	bl FUN_ov17_0210d93c
	ldr r0, _020FBD98 ; =0x02116220
	ldrb r0, [r0, #1]
	cmp r0, #0
	bne _020FBD50
	bl FUN_ov17_020f4de8
	mov r0, r5
	mov r1, r5
	bl FUN_ov17_0210dd24
_020FBD50:
	mov r4, #0
	mov r0, r4
	mov r1, #0x15
	bl FUN_ov17_0210dd24
	ldr r0, _020FBD98 ; =0x02116220
	mov r1, #1
	ldrb r0, [r0, #1]
	cmp r0, #0
	mov r0, r4
	bne _020FBD88
	bl FUN_ov17_020f8ae4
	ldr r0, _020FBD9C ; =FUN_ov17_020fa6d0
	bl FUN_ov17_020f8ad4
	ldmfd sp!, {r3, r4, r5, pc}
_020FBD88:
	bl FUN_ov17_020f8ae4
	ldr r0, _020FBDA0 ; =FUN_ov17_020fc1a0
	bl FUN_ov17_020f8ad4
	ldmfd sp!, {r3, r4, r5, pc}
_020FBD98: .word 0x02116220
_020FBD9C: .word FUN_ov17_020fa6d0
_020FBDA0: .word FUN_ov17_020fc1a0
	arm_func_end FUN_ov17_020fbcf0

	arm_func_start FUN_ov17_020fbda4
FUN_ov17_020fbda4: ; 0x020FBDA4
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	sub sp, sp, #0x28
	bl FUN_ov17_020f8e8c
	mov r5, #0
	mov r7, r0
	mov r0, r5
	mov r1, r5
	bl FUN_ov17_0210d6ec
	ldr r1, _020FBE68 ; =0x02116224
	mov r4, r0
	strb r5, [r1, #1]
	strb r5, [r1]
	bl FUN_ov17_020fbe74
	add r6, sp, #0x10
	mov r0, r5
	mov r2, #0x16
	mov r1, r6
	bl MIi_CpuClear16
	ldrb r2, [r7, #1]
	add r0, r7, #2
	mov r1, r6
	mov r2, r2, lsl #1
	bl MIi_CpuCopy16
	mov r0, #0x1c
	str r0, [sp]
	mov r0, #2
	str r0, [sp, #4]
	mov r0, #0x480
	str r0, [sp, #8]
	mov r0, r4
	mov r1, #8
	mov r2, #0x35
	mov r3, #0xf0
	str r6, [sp, #0xc]
	bl FUN_ov17_0210daf0
	mov r0, r4
	bl FUN_ov17_0210dc58
	ldr r0, _020FBE6C ; =FUN_ov17_020fc16c
	bl FUN_ov17_020f8e68
	mov r1, #4
	mov r2, r5
	mov r0, #0x1d
	sub r3, r1, #5
	str r5, [sp]
	bl FUN_ov17_02108e9c
	ldr r0, _020FBE70 ; =FUN_ov17_020fbef4
	bl FUN_ov17_020f8ad4
	add sp, sp, #0x28
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_020FBE68: .word 0x02116224
_020FBE6C: .word FUN_ov17_020fc16c
_020FBE70: .word FUN_ov17_020fbef4
	arm_func_end FUN_ov17_020fbda4

	arm_func_start FUN_ov17_020fbe74
FUN_ov17_020fbe74: ; 0x020FBE74
	stmfd sp!, {r3, lr}
	ldr r0, _020FBEE4 ; =0x02113028
	ldr r1, _020FBEE8 ; =FUN_020055bc
	bl FUN_ov17_020f4e84
	ldr r3, _020FBEEC ; =0x04001008
	ldr r1, _020FBEF0 ; =0x0400000A
	ldrh r0, [r3]
	sub r2, r3, #0x1000
	bic r0, r0, #3
	orr r0, r0, #3
	strh r0, [r3]
	ldrh r0, [r3, #2]
	bic r0, r0, #3
	orr r0, r0, #3
	strh r0, [r3, #2]
	ldrh r0, [r2]
	bic r0, r0, #3
	orr r0, r0, #3
	strh r0, [r2]
	ldrh r0, [r1]
	bic r0, r0, #3
	orr r0, r0, #3
	strh r0, [r1]
	ldrh r0, [r1, #2]
	bic r0, r0, #3
	orr r0, r0, #3
	strh r0, [r1, #2]
	ldmfd sp!, {r3, pc}
_020FBEE4: .word 0x02113028
_020FBEE8: .word FUN_020055bc
_020FBEEC: .word 0x04001008
_020FBEF0: .word 0x0400000A
	arm_func_end FUN_ov17_020fbe74

	arm_func_start FUN_ov17_020fbef4
FUN_ov17_020fbef4: ; 0x020FBEF4
	stmfd sp!, {r3, r4, r5, lr}
	mov r5, #0
	mov r4, #0x15
	mov r1, r5
	mov r2, r4
	mov r0, #2
	mov r3, #8
	bl FUN_ov17_0210d238
	mov r0, r5
	mov r1, r4
	bl FUN_ov17_0210dcd0
	ldr r0, _020FBF2C ; =FUN_ov17_020fbf30
	bl FUN_ov17_020f8ad4
	ldmfd sp!, {r3, r4, r5, pc}
_020FBF2C: .word FUN_ov17_020fbf30
	arm_func_end FUN_ov17_020fbef4

	arm_func_start FUN_ov17_020fbf30
FUN_ov17_020fbf30: ; 0x020FBF30
	stmfd sp!, {r3, lr}
	mov r0, #0
	bl FUN_ov17_0210d214
	cmp r0, #0
	ldmnefd sp!, {r3, pc}
	ldr r0, _020FBF50 ; =FUN_ov17_020fbf54
	bl FUN_ov17_020f8ad4
	ldmfd sp!, {r3, pc}
_020FBF50: .word FUN_ov17_020fbf54
	arm_func_end FUN_ov17_020fbf30

	arm_func_start FUN_ov17_020fbf54
FUN_ov17_020fbf54: ; 0x020FBF54
	stmfd sp!, {r3, lr}
	bl FUN_ov17_021091fc
	cmn r0, #2
	ldmeqfd sp!, {r3, pc}
	ldr r0, _020FBF70 ; =FUN_ov17_020fbf74
	bl FUN_ov17_020f8ad4
	ldmfd sp!, {r3, pc}
_020FBF70: .word FUN_ov17_020fbf74
	arm_func_end FUN_ov17_020fbf54

	arm_func_start FUN_ov17_020fbf74
FUN_ov17_020fbf74: ; 0x020FBF74
	stmfd sp!, {r3, lr}
	bl FUN_ov17_020fbfdc
	bl FUN_ov17_020fbfe0
	bl FUN_ov17_021091fc
	cmp r0, #0
	beq _020FBF98
	cmp r0, #1
	beq _020FBFA8
	ldmfd sp!, {r3, pc}
_020FBF98:
	ldr r1, _020FBFD4 ; =0x02116224
	mov r2, #0
	mov r0, #7
	b _020FBFB4
_020FBFA8:
	ldr r1, _020FBFD4 ; =0x02116224
	mov r2, #1
	mov r0, #0xe
_020FBFB4:
	strb r2, [r1, #1]
	bl FUN_ov17_02107c40
	mov r0, #0
	bl FUN_ov17_020f8e68
	bl FUN_ov17_021091b8
	ldr r0, _020FBFD8 ; =FUN_ov17_020fbfe4
	bl FUN_ov17_020f8ad4
	ldmfd sp!, {r3, pc}
_020FBFD4: .word 0x02116224
_020FBFD8: .word FUN_ov17_020fbfe4
	arm_func_end FUN_ov17_020fbf74

	arm_func_start FUN_ov17_020fbfdc
FUN_ov17_020fbfdc: ; 0x020FBFDC
	bx lr
	arm_func_end FUN_ov17_020fbfdc

	arm_func_start FUN_ov17_020fbfe0
FUN_ov17_020fbfe0: ; 0x020FBFE0
	bx lr
	arm_func_end FUN_ov17_020fbfe0

	arm_func_start FUN_ov17_020fbfe4
FUN_ov17_020fbfe4: ; 0x020FBFE4
	stmfd sp!, {r3, lr}
	bl FUN_ov17_02109210
	cmp r0, #0
	ldmnefd sp!, {r3, pc}
	ldr r0, _020FC038 ; =0x02116224
	ldrb r0, [r0, #1]
	cmp r0, #0
	bne _020FC018
	mov r1, #1
	mov r2, r1
	mov r0, #3
	mov r3, #8
	bl FUN_ov17_0210d238
_020FC018:
	mov r0, #3
	mov r1, #0
	mov r2, #0x15
	mov r3, #8
	bl FUN_ov17_0210d238
	ldr r0, _020FC03C ; =FUN_ov17_020fc040
	bl FUN_ov17_020f8ad4
	ldmfd sp!, {r3, pc}
_020FC038: .word 0x02116224
_020FC03C: .word FUN_ov17_020fc040
	arm_func_end FUN_ov17_020fbfe4

	arm_func_start FUN_ov17_020fc040
FUN_ov17_020fc040: ; 0x020FC040
	stmfd sp!, {r3, lr}
	mov r0, #1
	bl FUN_ov17_0210d214
	cmp r0, #0
	ldmnefd sp!, {r3, pc}
	mov r0, #0
	bl FUN_ov17_0210d214
	cmp r0, #0
	ldmnefd sp!, {r3, pc}
	ldr r0, _020FC094 ; =0x02116224
	ldrb r1, [r0]
	cmp r1, #0
	ldreqb r0, [r0, #1]
	cmpeq r0, #1
	bne _020FC084
	bl FUN_ov17_020f8e80
	b _020FC088
_020FC084:
	bl FUN_ov17_020f8df0
_020FC088:
	ldr r0, _020FC098 ; =FUN_ov17_020fc09c
	bl FUN_ov17_020f8ad4
	ldmfd sp!, {r3, pc}
_020FC094: .word 0x02116224
_020FC098: .word FUN_ov17_020fc09c
	arm_func_end FUN_ov17_020fc040

	arm_func_start FUN_ov17_020fc09c
FUN_ov17_020fc09c: ; 0x020FC09C
	stmfd sp!, {r4, lr}
	ldr r0, _020FC15C ; =0x02116224
	ldrb r1, [r0]
	cmp r1, #0
	bne _020FC0BC
	ldrb r0, [r0, #1]
	cmp r0, #0
	bne _020FC0C8
_020FC0BC:
	bl FUN_ov17_020f8e4c
	cmp r0, #0
	ldmeqfd sp!, {r4, pc}
_020FC0C8:
	mov r4, #0
	mov r0, r4
	bl FUN_ov17_0210d93c
	mov r0, r4
	mov r1, #0x15
	bl FUN_ov17_0210dd24
	ldr r0, _020FC15C ; =0x02116224
	ldrb r0, [r0, #1]
	cmp r0, #0
	bne _020FC100
	bl FUN_ov17_020f4de8
	mov r0, #1
	mov r1, r0
	bl FUN_ov17_0210dd24
_020FC100:
	mov r4, #1
	mov r1, r4
	mov r0, #0
	bl FUN_ov17_020f8ae4
	ldr r0, _020FC15C ; =0x02116224
	ldrb r1, [r0]
	cmp r1, #0
	beq _020FC12C
	ldr r0, _020FC160 ; =FUN_ov17_020fba20
	bl FUN_ov17_020f8ad4
	ldmfd sp!, {r4, pc}
_020FC12C:
	ldrb r0, [r0, #1]
	cmp r0, #0
	bne _020FC150
	mov r0, r4
	mov r1, r4
	bl FUN_ov17_0210dd24
	ldr r0, _020FC164 ; =FUN_ov17_020fa6d0
	bl FUN_ov17_020f8ad4
	ldmfd sp!, {r4, pc}
_020FC150:
	ldr r0, _020FC168 ; =FUN_ov17_020fadf0
	bl FUN_ov17_020f8ad4
	ldmfd sp!, {r4, pc}
_020FC15C: .word 0x02116224
_020FC160: .word FUN_ov17_020fba20
_020FC164: .word FUN_ov17_020fa6d0
_020FC168: .word FUN_ov17_020fadf0
	arm_func_end FUN_ov17_020fc09c

	arm_func_start FUN_ov17_020fc16c
FUN_ov17_020fc16c: ; 0x020FC16C
	ldr r0, _020FC17C ; =0x02116224
	mov r1, #1
	strb r1, [r0]
	bx lr
_020FC17C: .word 0x02116224
	arm_func_end FUN_ov17_020fc16c

	arm_func_start FUN_ov17_020fc180
FUN_ov17_020fc180: ; 0x020FC180
	ldr r0, _020FC19C ; =0x02FFFFA8
	ldrh r0, [r0]
	and r0, r0, #0x8000
	movs r0, r0, asr #0xf
	movne r0, #1
	moveq r0, #0
	bx lr
_020FC19C: .word 0x02FFFFA8
	arm_func_end FUN_ov17_020fc180

	arm_func_start FUN_ov17_020fc1a0
FUN_ov17_020fc1a0: ; 0x020FC1A0
	stmfd sp!, {r4, lr}
	ldr r0, _020FC1E0 ; =FUN_ov17_020fc524
	bl FUN_ov17_020f8d08
	ldr r0, _020FC1E4 ; =0x02116228
	mov r4, #0
	strb r4, [r0]
	bl FUN_ov17_020fc1ec
	mov r0, #0x1c
	bl FUN_ov17_020f4f4c
	mov r0, r4
	bl FUN_ov17_020f44d0
	mov r0, #0xb
	bl FUN_ov17_02107c40
	ldr r0, _020FC1E8 ; =FUN_ov17_020fc26c
	bl FUN_ov17_020f8ad4
	ldmfd sp!, {r4, pc}
_020FC1E0: .word FUN_ov17_020fc524
_020FC1E4: .word 0x02116228
_020FC1E8: .word FUN_ov17_020fc26c
	arm_func_end FUN_ov17_020fc1a0

	arm_func_start FUN_ov17_020fc1ec
FUN_ov17_020fc1ec: ; 0x020FC1EC
	stmfd sp!, {r3, lr}
	ldr r0, _020FC25C ; =0x0211303C
	ldr r1, _020FC260 ; =FUN_020055bc
	bl FUN_ov17_020f4e84
	ldr r3, _020FC264 ; =0x04001008
	ldr r1, _020FC268 ; =0x0400000A
	ldrh r0, [r3]
	sub r2, r3, #0x1000
	bic r0, r0, #3
	orr r0, r0, #3
	strh r0, [r3]
	ldrh r0, [r3, #2]
	bic r0, r0, #3
	orr r0, r0, #3
	strh r0, [r3, #2]
	ldrh r0, [r2]
	bic r0, r0, #3
	orr r0, r0, #3
	strh r0, [r2]
	ldrh r0, [r1]
	bic r0, r0, #3
	orr r0, r0, #3
	strh r0, [r1]
	ldrh r0, [r1, #2]
	bic r0, r0, #3
	orr r0, r0, #3
	strh r0, [r1, #2]
	ldmfd sp!, {r3, pc}
_020FC25C: .word 0x0211303C
_020FC260: .word FUN_020055bc
_020FC264: .word 0x04001008
_020FC268: .word 0x0400000A
	arm_func_end FUN_ov17_020fc1ec

	arm_func_start FUN_ov17_020fc26c
FUN_ov17_020fc26c: ; 0x020FC26C
	stmfd sp!, {r3, r4, r5, lr}
	mov r5, #0
	mov r4, #0x15
	mov r1, r5
	mov r2, r4
	mov r0, #2
	mov r3, #8
	bl FUN_ov17_0210d238
	mov r0, r5
	mov r1, r4
	bl FUN_ov17_0210dcd0
	ldr r0, _020FC2A4 ; =FUN_ov17_020fc2a8
	bl FUN_ov17_020f8ad4
	ldmfd sp!, {r3, r4, r5, pc}
_020FC2A4: .word FUN_ov17_020fc2a8
	arm_func_end FUN_ov17_020fc26c

	arm_func_start FUN_ov17_020fc2a8
FUN_ov17_020fc2a8: ; 0x020FC2A8
	stmfd sp!, {r3, lr}
	mov r0, #0
	bl FUN_ov17_0210d214
	cmp r0, #0
	ldmnefd sp!, {r3, pc}
	mov r0, #1
	bl FUN_ov17_020f4f14
	ldr r0, _020FC2D0 ; =FUN_ov17_020fc2d4
	bl FUN_ov17_020f8ad4
	ldmfd sp!, {r3, pc}
_020FC2D0: .word FUN_ov17_020fc2d4
	arm_func_end FUN_ov17_020fc2a8

	arm_func_start FUN_ov17_020fc2d4
FUN_ov17_020fc2d4: ; 0x020FC2D4
	stmfd sp!, {r3, lr}
	bl FUN_ov17_020f47c4
	cmn r0, #2
	ldmeqfd sp!, {r3, pc}
	ldr r0, _020FC2F0 ; =FUN_ov17_020fc2f4
	bl FUN_ov17_020f8ad4
	ldmfd sp!, {r3, pc}
_020FC2F0: .word FUN_ov17_020fc2f4
	arm_func_end FUN_ov17_020fc2d4

	arm_func_start FUN_ov17_020fc2f4
FUN_ov17_020fc2f4: ; 0x020FC2F4
	stmfd sp!, {r3, lr}
	bl FUN_ov17_020fc308
	bl FUN_ov17_020fc340
	bl FUN_ov17_020fc344
	ldmfd sp!, {r3, pc}
	arm_func_end FUN_ov17_020fc2f4

	arm_func_start FUN_ov17_020fc308
FUN_ov17_020fc308: ; 0x020FC308
	stmfd sp!, {r3, lr}
	mov r0, #2
	bl FUN_ov17_0210e4b8
	cmp r0, #0
	beq _020FC328
	mov r0, #0
	bl FUN_ov17_020f47d8
	ldmfd sp!, {r3, pc}
_020FC328:
	bl FUN_ov17_020fc180
	cmp r0, #0
	ldmeqfd sp!, {r3, pc}
	mov r0, #0
	bl FUN_ov17_020f47d8
	ldmfd sp!, {r3, pc}
	arm_func_end FUN_ov17_020fc308

	arm_func_start FUN_ov17_020fc340
FUN_ov17_020fc340: ; 0x020FC340
	bx lr
	arm_func_end FUN_ov17_020fc340

	arm_func_start FUN_ov17_020fc344
FUN_ov17_020fc344: ; 0x020FC344
	stmfd sp!, {r3, lr}
	bl FUN_ov17_020f47c4
	cmp r0, #0
	ldmnefd sp!, {r3, pc}
	bl FUN_ov17_02107ca8
	mov r0, #7
	bl FUN_ov17_02107c40
	ldr r0, _020FC36C ; =FUN_ov17_020fc370
	bl FUN_ov17_020f8ad4
	ldmfd sp!, {r3, pc}
_020FC36C: .word FUN_ov17_020fc370
	arm_func_end FUN_ov17_020fc344

	arm_func_start FUN_ov17_020fc370
FUN_ov17_020fc370: ; 0x020FC370
	stmfd sp!, {r3, lr}
	ldr r0, _020FC3A0 ; =0x02116228
	ldrb r0, [r0]
	cmp r0, #0
	bne _020FC388
	bl FUN_ov17_020f8df0
_020FC388:
	bl FUN_ov17_020f484c
	mov r0, #8
	bl FUN_ov17_0210d424
	ldr r0, _020FC3A4 ; =FUN_ov17_020fc3a8
	bl FUN_ov17_020f8ad4
	ldmfd sp!, {r3, pc}
_020FC3A0: .word 0x02116228
_020FC3A4: .word FUN_ov17_020fc3a8
	arm_func_end FUN_ov17_020fc370

	arm_func_start FUN_ov17_020fc3a8
FUN_ov17_020fc3a8: ; 0x020FC3A8
	stmfd sp!, {r3, lr}
	mov r0, #1
	bl FUN_ov17_0210d214
	cmp r0, #0
	ldmnefd sp!, {r3, pc}
	ldr r0, _020FC420 ; =0x02116228
	ldrb r0, [r0]
	cmp r0, #0
	bne _020FC3D8
	bl FUN_ov17_020f8e4c
	cmp r0, #0
	ldmeqfd sp!, {r3, pc}
_020FC3D8:
	bl FUN_ov17_020f4794
	ldr r0, _020FC420 ; =0x02116228
	ldrb r0, [r0]
	cmp r0, #0
	bne _020FC400
	mov r1, #1
	mov r2, r1
	mov r0, #3
	mov r3, #8
	bl FUN_ov17_0210d238
_020FC400:
	mov r0, #3
	mov r1, #0
	mov r2, #0x15
	mov r3, #8
	bl FUN_ov17_0210d238
	ldr r0, _020FC424 ; =FUN_ov17_020fc428
	bl FUN_ov17_020f8ad4
	ldmfd sp!, {r3, pc}
_020FC420: .word 0x02116228
_020FC424: .word FUN_ov17_020fc428
	arm_func_end FUN_ov17_020fc3a8

	arm_func_start FUN_ov17_020fc428
FUN_ov17_020fc428: ; 0x020FC428
	stmfd sp!, {r4, lr}
	mov r0, #0
	bl FUN_ov17_0210d214
	cmp r0, #0
	ldmnefd sp!, {r4, pc}
	ldr r0, _020FC514 ; =0x02116228
	ldrb r0, [r0]
	cmp r0, #0
	bne _020FC45C
	mov r0, #1
	bl FUN_ov17_0210d214
	cmp r0, #0
	ldmnefd sp!, {r4, pc}
_020FC45C:
	bl FUN_ov17_020f4808
	cmp r0, #0
	ldmeqfd sp!, {r4, pc}
	ldr r0, _020FC514 ; =0x02116228
	ldrb r0, [r0]
	cmp r0, #0
	bne _020FC484
	bl FUN_ov17_020f8e4c
	cmp r0, #0
	ldmeqfd sp!, {r4, pc}
_020FC484:
	bl FUN_ov17_020f459c
	mov r0, #0
	bl FUN_ov17_0210d93c
	ldr r0, _020FC514 ; =0x02116228
	ldrb r0, [r0]
	cmp r0, #0
	bne _020FC4B0
	bl FUN_ov17_020f4de8
	mov r0, #1
	mov r1, r0
	bl FUN_ov17_0210dd24
_020FC4B0:
	mov r4, #0
	mov r0, r4
	mov r1, #0x15
	bl FUN_ov17_0210dd24
	ldr r0, _020FC514 ; =0x02116228
	mov r1, #1
	ldrb r0, [r0]
	cmp r0, #0
	bne _020FC4E8
	mov r0, r4
	bl FUN_ov17_020f8ae4
	ldr r0, _020FC518 ; =FUN_ov17_020fa6d0
	bl FUN_ov17_020f8ad4
	ldmfd sp!, {r4, pc}
_020FC4E8:
	cmp r0, #2
	mov r0, r4
	bne _020FC504
	bl FUN_ov17_020f8ae4
	ldr r0, _020FC51C ; =FUN_ov17_020fba20
	bl FUN_ov17_020f8ad4
	ldmfd sp!, {r4, pc}
_020FC504:
	bl FUN_ov17_020f8ae4
	ldr r0, _020FC520 ; =FUN_ov17_020fbda4
	bl FUN_ov17_020f8ad4
	ldmfd sp!, {r4, pc}
_020FC514: .word 0x02116228
_020FC518: .word FUN_ov17_020fa6d0
_020FC51C: .word FUN_ov17_020fba20
_020FC520: .word FUN_ov17_020fbda4
	arm_func_end FUN_ov17_020fc428

	arm_func_start FUN_ov17_020fc524
FUN_ov17_020fc524: ; 0x020FC524
	stmfd sp!, {r4, lr}
	mov r4, r0
	bl FUN_ov17_02107ca8
	cmp r4, #0
	bne _020FC548
	ldr r1, _020FC570 ; =0x02116228
	mov r2, #1
	mov r0, #0x10
	b _020FC554
_020FC548:
	ldr r1, _020FC570 ; =0x02116228
	mov r2, #2
	mov r0, #0x12
_020FC554:
	strb r2, [r1]
	bl FUN_ov17_02107c40
	mov r0, #0
	bl FUN_ov17_020f8e68
	ldr r0, _020FC574 ; =FUN_ov17_020fc370
	bl FUN_ov17_020f8ad4
	ldmfd sp!, {r4, pc}
_020FC570: .word 0x02116228
_020FC574: .word FUN_ov17_020fc370
	arm_func_end FUN_ov17_020fc524

	arm_func_start FUN_ov17_020fc578
FUN_ov17_020fc578: ; 0x020FC578
	ldr r0, _020FC594 ; =0x02FFFFA8
	ldrh r0, [r0]
	and r0, r0, #0x8000
	movs r0, r0, asr #0xf
	movne r0, #1
	moveq r0, #0
	bx lr
_020FC594: .word 0x02FFFFA8
	arm_func_end FUN_ov17_020fc578

	arm_func_start FUN_ov17_020fc598
FUN_ov17_020fc598: ; 0x020FC598
	stmfd sp!, {r4, lr}
	ldr r0, _020FC5F0 ; =0x0211622C
	mov r4, #0
	strh r4, [r0, #2]
	bl FUN_ov17_020fc5f8
	bl FUN_ov17_020f5384
	mov r0, #0x36
	mov r2, r4
	sub r1, r0, #0x37
	bl FUN_ov17_020f4d10
	mov r0, #2
	bl FUN_ov17_020f4ec4
	mov r0, #0x22
	bl FUN_ov17_020f4f4c
	mov r0, r4
	bl FUN_ov17_020f44d0
	bl FUN_ov17_020f8458
	mov r0, #0xb
	bl FUN_ov17_02107c40
	ldr r0, _020FC5F4 ; =FUN_ov17_020fc6a0
	bl FUN_ov17_020f8ad4
	ldmfd sp!, {r4, pc}
_020FC5F0: .word 0x0211622C
_020FC5F4: .word FUN_ov17_020fc6a0
	arm_func_end FUN_ov17_020fc598

	arm_func_start FUN_ov17_020fc5f8
FUN_ov17_020fc5f8: ; 0x020FC5F8
	stmfd sp!, {r3, lr}
	ldr r0, _020FC680 ; =0x02113050
	ldr r1, _020FC684 ; =0x0200593C
	bl FUN_ov17_020f4e84
	ldr r0, _020FC688 ; =0x02113068
	ldr r1, _020FC68C ; =FUN_020050fc
	bl FUN_ov17_020f4e84
	ldr r0, _020FC690 ; =0x02113080
	ldr r1, _020FC694 ; =FUN_020055bc
	bl FUN_ov17_020f4e84
	ldr r3, _020FC698 ; =0x04001008
	ldr r1, _020FC69C ; =0x0400000A
	ldrh r0, [r3]
	sub r2, r3, #0x1000
	bic r0, r0, #3
	orr r0, r0, #3
	strh r0, [r3]
	ldrh r0, [r3, #2]
	bic r0, r0, #3
	orr r0, r0, #3
	strh r0, [r3, #2]
	ldrh r0, [r2]
	bic r0, r0, #3
	orr r0, r0, #3
	strh r0, [r2]
	ldrh r0, [r1]
	bic r0, r0, #3
	orr r0, r0, #3
	strh r0, [r1]
	ldrh r0, [r1, #2]
	bic r0, r0, #3
	orr r0, r0, #3
	strh r0, [r1, #2]
	ldmfd sp!, {r3, pc}
_020FC680: .word 0x02113050
_020FC684: .word 0x0200593C
_020FC688: .word 0x02113068
_020FC68C: .word FUN_020050fc
_020FC690: .word 0x02113080
_020FC694: .word FUN_020055bc
_020FC698: .word 0x04001008
_020FC69C: .word 0x0400000A
	arm_func_end FUN_ov17_020fc5f8

	arm_func_start FUN_ov17_020fc6a0
FUN_ov17_020fc6a0: ; 0x020FC6A0
	stmfd sp!, {r4, r5, r6, r7, r8, lr}
	mov r7, #1
	mov r8, #2
	mov r6, #8
	mov r0, r8
	mov r1, r7
	mov r2, r7
	mov r3, r6
	bl FUN_ov17_0210d238
	mov r5, #0
	mov r4, #0x15
	mov r0, r8
	mov r1, r5
	mov r2, r4
	mov r3, r6
	bl FUN_ov17_0210d238
	mov r0, r7
	mov r1, r7
	bl FUN_ov17_0210dcd0
	mov r0, r5
	mov r1, r4
	bl FUN_ov17_0210dcd0
	ldr r0, _020FC704 ; =FUN_ov17_020fc708
	bl FUN_ov17_020f8ad4
	ldmfd sp!, {r4, r5, r6, r7, r8, pc}
_020FC704: .word FUN_ov17_020fc708
	arm_func_end FUN_ov17_020fc6a0

	arm_func_start FUN_ov17_020fc708
FUN_ov17_020fc708: ; 0x020FC708
	stmfd sp!, {r4, lr}
	mov r4, #1
	mov r0, r4
	bl FUN_ov17_0210d214
	cmp r0, #0
	ldmnefd sp!, {r4, pc}
	mov r0, #0
	bl FUN_ov17_0210d214
	cmp r0, #0
	ldmnefd sp!, {r4, pc}
	mov r0, r4
	bl FUN_ov17_020f4f14
	ldr r0, _020FC744 ; =FUN_ov17_020fc748
	bl FUN_ov17_020f8ad4
	ldmfd sp!, {r4, pc}
_020FC744: .word FUN_ov17_020fc748
	arm_func_end FUN_ov17_020fc708

	arm_func_start FUN_ov17_020fc748
FUN_ov17_020fc748: ; 0x020FC748
	stmfd sp!, {r3, lr}
	bl FUN_ov17_020f47c4
	cmn r0, #2
	ldmeqfd sp!, {r3, pc}
	ldr r1, _020FC780 ; =FUN_ov17_020fca78
	mov r0, #1
	mov r2, #0
	mov r3, #0x78
	bl FUN_ov17_0210f314
	ldr r1, _020FC784 ; =0x0211622C
	str r0, [r1, #4]
	ldr r0, _020FC788 ; =FUN_ov17_020fc78c
	bl FUN_ov17_020f8ad4
	ldmfd sp!, {r3, pc}
_020FC780: .word FUN_ov17_020fca78
_020FC784: .word 0x0211622C
_020FC788: .word FUN_ov17_020fc78c
	arm_func_end FUN_ov17_020fc748

	arm_func_start FUN_ov17_020fc78c
FUN_ov17_020fc78c: ; 0x020FC78C
	stmfd sp!, {r3, r4, r5, r6, lr}
	sub sp, sp, #4
	bl FUN_ov17_020fc870
	bl FUN_ov17_020fc8a8
	bl FUN_ov17_020fc8ac
	bl FUN_ov17_020f85b0
	cmp r0, #0
	addeq sp, sp, #4
	ldmeqfd sp!, {r3, r4, r5, r6, pc}
	cmp r0, #1
	beq _020FC7C8
	cmp r0, #2
	beq _020FC800
	add sp, sp, #4
	ldmfd sp!, {r3, r4, r5, r6, pc}
_020FC7C8:
	ldr r4, _020FC864 ; =0x0211622C
	ldr r1, [r4, #4]
	cmp r1, #0
	addeq sp, sp, #4
	ldmeqfd sp!, {r3, r4, r5, r6, pc}
	mov r0, #1
	strb r0, [r4]
	bl FUN_ov17_0210f3d8
	mov r1, #0
	ldr r0, _020FC868 ; =FUN_ov17_020fcae0
	str r1, [r4, #4]
	bl FUN_ov17_020f8ad4
	add sp, sp, #4
	ldmfd sp!, {r3, r4, r5, r6, pc}
_020FC800:
	ldr r4, _020FC864 ; =0x0211622C
	ldr r0, [r4, #4]
	cmp r0, #0
	addeq sp, sp, #4
	ldmeqfd sp!, {r3, r4, r5, r6, pc}
	bl FUN_ov17_02107ca8
	mov r5, #1
	mov r6, #0
	mov r1, r5
	mov r2, r5
	sub r3, r5, #2
	mov r0, #0xc
	str r6, [sp]
	bl FUN_ov17_02108e9c
	mov r0, #9
	bl FUN_ov17_02107c40
	bl FUN_ov17_020f484c
	ldr r1, [r4, #4]
	mov r0, r5
	bl FUN_ov17_0210f3d8
	ldr r0, _020FC86C ; =FUN_ov17_020fca94
	str r6, [r4, #4]
	bl FUN_ov17_020f8ad4
	add sp, sp, #4
	ldmfd sp!, {r3, r4, r5, r6, pc}
_020FC864: .word 0x0211622C
_020FC868: .word FUN_ov17_020fcae0
_020FC86C: .word FUN_ov17_020fca94
	arm_func_end FUN_ov17_020fc78c

	arm_func_start FUN_ov17_020fc870
FUN_ov17_020fc870: ; 0x020FC870
	stmfd sp!, {r3, lr}
	mov r0, #2
	bl FUN_ov17_0210e4b8
	cmp r0, #0
	beq _020FC890
	mov r0, #0
	bl FUN_ov17_020f47d8
	ldmfd sp!, {r3, pc}
_020FC890:
	bl FUN_ov17_020fc578
	cmp r0, #0
	ldmeqfd sp!, {r3, pc}
	mov r0, #0
	bl FUN_ov17_020f47d8
	ldmfd sp!, {r3, pc}
	arm_func_end FUN_ov17_020fc870

	arm_func_start FUN_ov17_020fc8a8
FUN_ov17_020fc8a8: ; 0x020FC8A8
	bx lr
	arm_func_end FUN_ov17_020fc8a8

	arm_func_start FUN_ov17_020fc8ac
FUN_ov17_020fc8ac: ; 0x020FC8AC
	stmfd sp!, {r4, lr}
	bl FUN_ov17_020f47c4
	cmp r0, #0
	ldmnefd sp!, {r4, pc}
	ldr r4, _020FC8EC ; =0x0211622C
	ldr r1, [r4, #4]
	cmp r1, #0
	ldmeqfd sp!, {r4, pc}
	mov r0, #1
	bl FUN_ov17_0210f3b8
	mov r0, #0
	str r0, [r4, #4]
	bl FUN_ov17_020f484c
	ldr r0, _020FC8F0 ; =FUN_ov17_020fcb2c
	bl FUN_ov17_020f8ad4
	ldmfd sp!, {r4, pc}
_020FC8EC: .word 0x0211622C
_020FC8F0: .word FUN_ov17_020fcb2c
	arm_func_end FUN_ov17_020fc8ac

	arm_func_start FUN_ov17_020fc8f4
FUN_ov17_020fc8f4: ; 0x020FC8F4
	stmfd sp!, {r3, lr}
	bl FUN_ov17_020f484c
	ldr r0, _020FC928 ; =0x0211622C
	ldr r1, [r0, #4]
	cmp r1, #0
	beq _020FC914
	mov r0, #1
	bl FUN_ov17_0210f3d8
_020FC914:
	mov r0, #8
	bl FUN_ov17_0210d424
	ldr r0, _020FC92C ; =FUN_ov17_020fc930
	bl FUN_ov17_020f8ad4
	ldmfd sp!, {r3, pc}
_020FC928: .word 0x0211622C
_020FC92C: .word FUN_ov17_020fc930
	arm_func_end FUN_ov17_020fc8f4

	arm_func_start FUN_ov17_020fc930
FUN_ov17_020fc930: ; 0x020FC930
	stmfd sp!, {r4, lr}
	mov r4, #1
	mov r0, r4
	bl FUN_ov17_0210d214
	cmp r0, #0
	ldmnefd sp!, {r4, pc}
	bl FUN_ov17_020f4794
	ldr r0, _020FC990 ; =0x0211622C
	ldrb r0, [r0]
	cmp r0, #0
	bne _020FC970
	mov r1, r4
	mov r2, r4
	mov r0, #3
	mov r3, #8
	bl FUN_ov17_0210d238
_020FC970:
	mov r0, #3
	mov r1, #0
	mov r2, #0x15
	mov r3, #8
	bl FUN_ov17_0210d238
	ldr r0, _020FC994 ; =FUN_ov17_020fc998
	bl FUN_ov17_020f8ad4
	ldmfd sp!, {r4, pc}
_020FC990: .word 0x0211622C
_020FC994: .word FUN_ov17_020fc998
	arm_func_end FUN_ov17_020fc930

	arm_func_start FUN_ov17_020fc998
FUN_ov17_020fc998: ; 0x020FC998
	stmfd sp!, {r4, lr}
	mov r0, #0
	bl FUN_ov17_0210d214
	cmp r0, #0
	ldmnefd sp!, {r4, pc}
	ldr r0, _020FCA6C ; =0x0211622C
	ldrb r0, [r0]
	cmp r0, #0
	bne _020FC9CC
	mov r0, #1
	bl FUN_ov17_0210d214
	cmp r0, #0
	ldmnefd sp!, {r4, pc}
_020FC9CC:
	bl FUN_ov17_020f4808
	cmp r0, #0
	ldmeqfd sp!, {r4, pc}
	ldr r0, _020FCA6C ; =0x0211622C
	ldrb r0, [r0]
	cmp r0, #0
	movne r0, #1
	moveq r0, #0
	bl FUN_ov17_020f8560
	bl FUN_ov17_020f459c
	mov r0, #0
	bl FUN_ov17_0210d93c
	ldr r0, _020FCA6C ; =0x0211622C
	ldrb r0, [r0]
	cmp r0, #0
	bne _020FCA1C
	bl FUN_ov17_020f4de8
	mov r0, #1
	mov r1, r0
	bl FUN_ov17_0210dd24
_020FCA1C:
	mov r4, #0
	mov r0, r4
	mov r1, #0x15
	bl FUN_ov17_0210dd24
	ldr r0, _020FCA6C ; =0x0211622C
	ldrb r0, [r0]
	cmp r0, #0
	bne _020FCA54
	mov r0, #2
	mov r1, #1
	bl FUN_ov17_020f8ae4
	ldr r0, _020FCA70 ; =FUN_ov17_0210462c
	bl FUN_ov17_020f8ad4
	ldmfd sp!, {r4, pc}
_020FCA54:
	mov r0, r4
	mov r1, r4
	bl FUN_ov17_020f8ae4
	ldr r0, _020FCA74 ; =FUN_ov17_020fcb5c
	bl FUN_ov17_020f8ad4
	ldmfd sp!, {r4, pc}
_020FCA6C: .word 0x0211622C
_020FCA70: .word FUN_ov17_0210462c
_020FCA74: .word FUN_ov17_020fcb5c
	arm_func_end FUN_ov17_020fc998

	arm_func_start FUN_ov17_020fca78
FUN_ov17_020fca78: ; 0x020FCA78
	stmfd sp!, {r3, lr}
	bl FUN_ov17_0210e200
	mov r0, #0
	bl FUN_ov17_0210f264
	bl FUN_ov17_020fc870
	bl FUN_ov17_020fc8ac
	ldmfd sp!, {r3, pc}
	arm_func_end FUN_ov17_020fca78

	arm_func_start FUN_ov17_020fca94
FUN_ov17_020fca94: ; 0x020FCA94
	stmfd sp!, {r3, lr}
	bl FUN_ov17_021091fc
	cmp r0, #0
	ldmnefd sp!, {r3, pc}
	mov r0, #6
	bl FUN_ov17_02107c40
	bl FUN_ov17_021091b8
	ldr r0, _020FCABC ; =FUN_ov17_020fcac0
	bl FUN_ov17_020f8ad4
	ldmfd sp!, {r3, pc}
_020FCABC: .word FUN_ov17_020fcac0
	arm_func_end FUN_ov17_020fca94

	arm_func_start FUN_ov17_020fcac0
FUN_ov17_020fcac0: ; 0x020FCAC0
	stmfd sp!, {r3, lr}
	bl FUN_ov17_02109210
	cmp r0, #0
	ldmnefd sp!, {r3, pc}
	ldr r0, _020FCADC ; =FUN_ov17_020fc8f4
	bl FUN_ov17_020f8ad4
	ldmfd sp!, {r3, pc}
_020FCADC: .word FUN_ov17_020fc8f4
	arm_func_end FUN_ov17_020fcac0

	arm_func_start FUN_ov17_020fcae0
FUN_ov17_020fcae0: ; 0x020FCAE0
	stmfd sp!, {r3, lr}
	bl FUN_ov17_020fc870
	bl FUN_ov17_020fc8a8
	bl FUN_ov17_020fc8ac
	ldr r1, _020FCB20 ; =0x0211622C
	ldr r0, _020FCB24 ; =0x00000438
	ldrh r2, [r1, #2]
	add r2, r2, #1
	strh r2, [r1, #2]
	ldrh r1, [r1, #2]
	cmp r1, r0
	ldmlofd sp!, {r3, pc}
	bl FUN_ov17_02107ca8
	ldr r0, _020FCB28 ; =FUN_ov17_020fc8f4
	bl FUN_ov17_020f8ad4
	ldmfd sp!, {r3, pc}
_020FCB20: .word 0x0211622C
_020FCB24: .word 0x00000438
_020FCB28: .word FUN_ov17_020fc8f4
	arm_func_end FUN_ov17_020fcae0

	arm_func_start FUN_ov17_020fcb2c
FUN_ov17_020fcb2c: ; 0x020FCB2C
	stmfd sp!, {r3, lr}
	bl FUN_ov17_02107ca8
	mov r0, #7
	bl FUN_ov17_02107c40
	ldr r1, _020FCB54 ; =0x0211622C
	mov r2, #0
	ldr r0, _020FCB58 ; =FUN_ov17_020fc8f4
	strb r2, [r1]
	bl FUN_ov17_020f8ad4
	ldmfd sp!, {r3, pc}
_020FCB54: .word 0x0211622C
_020FCB58: .word FUN_ov17_020fc8f4
	arm_func_end FUN_ov17_020fcb2c

	arm_func_start FUN_ov17_020fcb5c
FUN_ov17_020fcb5c: ; 0x020FCB5C
	stmfd sp!, {r3, lr}
	ldr r0, _020FCB90 ; =0x02116234
	mov r1, #0
	strb r1, [r0]
	bl FUN_ov17_020fcb98
	bl FUN_ov17_020f5384
	mov r0, #0x23
	bl FUN_ov17_020f4f4c
	mov r0, #0x10
	bl FUN_ov17_02107c40
	ldr r0, _020FCB94 ; =FUN_ov17_020fcc04
	bl FUN_ov17_020f8ad4
	ldmfd sp!, {r3, pc}
_020FCB90: .word 0x02116234
_020FCB94: .word FUN_ov17_020fcc04
	arm_func_end FUN_ov17_020fcb5c

	arm_func_start FUN_ov17_020fcb98
FUN_ov17_020fcb98: ; 0x020FCB98
	stmfd sp!, {r3, lr}
	ldr r0, _020FCBF4 ; =0x02113094
	ldr r1, _020FCBF8 ; =FUN_020055bc
	bl FUN_ov17_020f4e84
	ldr r2, _020FCBFC ; =0x04001008
	ldr r1, _020FCC00 ; =0x0400000A
	ldrh r0, [r2]
	bic r0, r0, #3
	orr r0, r0, #3
	strh r0, [r2]
	ldrh r0, [r2, #2]
	bic r0, r0, #3
	orr r0, r0, #3
	strh r0, [r2, #2]
	ldrh r0, [r1]
	bic r0, r0, #3
	orr r0, r0, #3
	strh r0, [r1]
	ldrh r0, [r1, #2]
	bic r0, r0, #3
	orr r0, r0, #3
	strh r0, [r1, #2]
	ldmfd sp!, {r3, pc}
_020FCBF4: .word 0x02113094
_020FCBF8: .word FUN_020055bc
_020FCBFC: .word 0x04001008
_020FCC00: .word 0x0400000A
	arm_func_end FUN_ov17_020fcb98

	arm_func_start FUN_ov17_020fcc04
FUN_ov17_020fcc04: ; 0x020FCC04
	stmfd sp!, {r3, r4, r5, lr}
	mov r5, #0
	mov r4, #0x15
	mov r1, r5
	mov r2, r4
	mov r0, #2
	mov r3, #8
	bl FUN_ov17_0210d238
	mov r0, r5
	mov r1, r4
	bl FUN_ov17_0210dcd0
	ldr r0, _020FCC3C ; =FUN_ov17_020fcc40
	bl FUN_ov17_020f8ad4
	ldmfd sp!, {r3, r4, r5, pc}
_020FCC3C: .word FUN_ov17_020fcc40
	arm_func_end FUN_ov17_020fcc04

	arm_func_start FUN_ov17_020fcc40
FUN_ov17_020fcc40: ; 0x020FCC40
	stmfd sp!, {r3, lr}
	mov r0, #0
	bl FUN_ov17_0210d214
	cmp r0, #0
	ldmnefd sp!, {r3, pc}
	ldr r0, _020FCC60 ; =FUN_ov17_020fcc64
	bl FUN_ov17_020f8ad4
	ldmfd sp!, {r3, pc}
_020FCC60: .word FUN_ov17_020fcc64
	arm_func_end FUN_ov17_020fcc40

	arm_func_start FUN_ov17_020fcc64
FUN_ov17_020fcc64: ; 0x020FCC64
	stmfd sp!, {r3, lr}
	bl FUN_ov17_020fcd34
	bl FUN_ov17_020fcc74
	ldmfd sp!, {r3, pc}
	arm_func_end FUN_ov17_020fcc64

	arm_func_start FUN_ov17_020fcc74
FUN_ov17_020fcc74: ; 0x020FCC74
	bx lr
	arm_func_end FUN_ov17_020fcc74

	arm_func_start FUN_ov17_020fcc78
FUN_ov17_020fcc78: ; 0x020FCC78
	stmfd sp!, {r3, r4, r5, lr}
	mov r5, #3
	mov r1, #1
	mov r4, #8
	mov r0, r5
	mov r2, r1
	mov r3, r4
	bl FUN_ov17_0210d238
	mov r0, r5
	mov r3, r4
	mov r1, #0
	mov r2, #0x15
	bl FUN_ov17_0210d238
	ldr r0, _020FCCB8 ; =FUN_ov17_020fccbc
	bl FUN_ov17_020f8ad4
	ldmfd sp!, {r3, r4, r5, pc}
_020FCCB8: .word FUN_ov17_020fccbc
	arm_func_end FUN_ov17_020fcc78

	arm_func_start FUN_ov17_020fccbc
FUN_ov17_020fccbc: ; 0x020FCCBC
	stmfd sp!, {r3, r4, r5, lr}
	mov r5, #1
	mov r0, r5
	bl FUN_ov17_0210d214
	cmp r0, #0
	ldmnefd sp!, {r3, r4, r5, pc}
	mov r4, #0
	mov r0, r4
	bl FUN_ov17_0210d214
	cmp r0, #0
	ldmnefd sp!, {r3, r4, r5, pc}
	mov r0, r4
	bl FUN_ov17_0210d93c
	bl FUN_ov17_020f4de8
	mov r0, r5
	mov r1, r5
	bl FUN_ov17_0210dd24
	mov r0, r4
	mov r1, #0x15
	bl FUN_ov17_0210dd24
	mov r0, r4
	mov r1, r4
	bl FUN_ov17_020f8ae4
	mov r0, r4
	mov r1, r5
	bl FUN_ov17_020f8b20
	ldr r0, _020FCD30 ; =FUN_ov17_021054a0
	bl FUN_ov17_020f8ad4
	ldmfd sp!, {r3, r4, r5, pc}
_020FCD30: .word FUN_ov17_021054a0
	arm_func_end FUN_ov17_020fccbc

	arm_func_start FUN_ov17_020fcd34
FUN_ov17_020fcd34: ; 0x020FCD34
	stmfd sp!, {r3, lr}
	ldr r1, _020FCD60 ; =0x02116234
	ldrb r0, [r1]
	add r0, r0, #1
	and r2, r0, #0xff
	strb r0, [r1]
	cmp r2, #0x78
	ldmlofd sp!, {r3, pc}
	ldr r0, _020FCD64 ; =FUN_ov17_020fcc78
	bl FUN_ov17_020f8ad4
	ldmfd sp!, {r3, pc}
_020FCD60: .word 0x02116234
_020FCD64: .word FUN_ov17_020fcc78
	arm_func_end FUN_ov17_020fcd34

	arm_func_start FUN_ov17_020fcd68
FUN_ov17_020fcd68: ; 0x020FCD68
	stmfd sp!, {r3, r4, r5, lr}
	mov r0, #0x5c
	mov r1, #4
	bl FUN_ov17_0210e0a8
	ldr r4, _020FCE24 ; =0x02116238
	mov r5, #0
	str r0, [r4, #4]
	add r0, sp, #0
	mov r1, r5
	bl FUN_ov17_020f8b34
	ldr r0, [sp]
	cmp r0, #0
	streqb r5, [r4]
	streqh r5, [r4, #2]
	ldr r4, _020FCE24 ; =0x02116238
	ldr r0, [r4, #4]
	bl FUN_ov17_02106da8
	ldr r1, [r4, #4]
	strb r0, [r1, #0x51]
	bl FUN_ov17_020fce30
	bl FUN_ov17_020f5384
	mov r0, #0x34
	mov r5, #0
	sub r1, r0, #0x35
	mov r2, r5
	bl FUN_ov17_020f4d10
	mov r0, #2
	bl FUN_ov17_020f4ec4
	bl FUN_ov17_020fcf78
	bl FUN_ov17_020fd01c
	mov r0, r5
	mov r1, r5
	bl FUN_ov17_0210d6ec
	ldr r3, [r4, #4]
	ldr r1, _020FCE28 ; =FUN_ov17_020fdec8
	str r0, [r3, #0xc]
	mov r2, r5
	mov r0, #1
	mov r3, #0x6e
	bl FUN_ov17_0210f314
	ldr r1, [r4, #4]
	str r0, [r1, #0x3c]
	bl FUN_ov17_020fda30
	bl FUN_ov17_020fdf20
	ldr r0, _020FCE2C ; =FUN_ov17_020fd17c
	bl FUN_ov17_020f8ad4
	ldmfd sp!, {r3, r4, r5, pc}
_020FCE24: .word 0x02116238
_020FCE28: .word FUN_ov17_020fdec8
_020FCE2C: .word FUN_ov17_020fd17c
	arm_func_end FUN_ov17_020fcd68

	arm_func_start FUN_ov17_020fce30
FUN_ov17_020fce30: ; 0x020FCE30
	stmfd sp!, {r4, r5, r6, lr}
	sub sp, sp, #0x30
	ldr r3, _020FCF5C ; =0x02112208
	add r5, sp, #0x16
	mov r2, #0xc
_020FCE44:
	ldrb r0, [r3, #1]
	ldrb r1, [r3], #2
	subs r2, r2, #1
	strb r0, [r5, #1]
	strb r1, [r5], #2
	bne _020FCE44
	ldrb r0, [r3]
	ldr r4, _020FCF60 ; =0x021121F0
	add r3, sp, #0
	strb r0, [r5]
	mov r2, #0xb
_020FCE70:
	ldrb r0, [r4, #1]
	ldrb r1, [r4], #2
	subs r2, r2, #1
	strb r0, [r3, #1]
	strb r1, [r3], #2
	bne _020FCE70
	ldr r0, _020FCF64 ; =0x021130A8
	ldr r1, _020FCF68 ; =0x0200569C
	bl FUN_ov17_020f4e84
	add r0, sp, #0x16
	bl FUN_ov17_020f4e20
	mov r6, #0
	mov r5, #4
	mov r1, r6
	mov r2, r5
	bl FUN_ov17_0210c7fc
	ldr r4, _020FCF6C ; =0x02116238
	ldr r1, [r4, #4]
	str r0, [r1, #4]
	ldr r0, [r4, #4]
	ldr r0, [r0, #4]
	bl FUN_ov17_021062fc
	bl FUN_ov17_02106384
	add r0, sp, #0
	bl FUN_ov17_020f4e20
	mov r1, r6
	mov r2, r5
	bl FUN_ov17_0210c7fc
	ldr r1, [r4, #4]
	ldr r3, _020FCF70 ; =0x04001008
	str r0, [r1, #8]
	ldrh r0, [r3]
	sub r2, r3, #0x1000
	ldr r1, _020FCF74 ; =0x0400000A
	bic r0, r0, #3
	orr r0, r0, #3
	strh r0, [r3]
	ldrh r0, [r3, #2]
	bic r0, r0, #3
	orr r0, r0, #3
	strh r0, [r3, #2]
	ldrh r0, [r2]
	bic r0, r0, #3
	orr r0, r0, #3
	strh r0, [r2]
	ldrh r0, [r1]
	bic r0, r0, #3
	orr r0, r0, #2
	strh r0, [r1]
	ldrh r0, [r1, #2]
	bic r0, r0, #3
	orr r0, r0, #3
	strh r0, [r1, #2]
	ldrh r0, [r1, #4]
	bic r0, r0, #3
	orr r0, r0, #2
	strh r0, [r1, #4]
	add sp, sp, #0x30
	ldmfd sp!, {r4, r5, r6, pc}
_020FCF5C: .word 0x02112208
_020FCF60: .word 0x021121F0
_020FCF64: .word 0x021130A8
_020FCF68: .word 0x0200569C
_020FCF6C: .word 0x02116238
_020FCF70: .word 0x04001008
_020FCF74: .word 0x0400000A
	arm_func_end FUN_ov17_020fce30

	arm_func_start FUN_ov17_020fcf78
FUN_ov17_020fcf78: ; 0x020FCF78
	stmfd sp!, {r3, r4, lr}
	sub sp, sp, #4
	ldr r2, _020FD018 ; =0x02116238
	mov r1, #0x1c
	ldr r12, [r2, #4]
	mov r0, #0
	ldrb r3, [r12, #0x51]
	sub r3, r3, #4
	mul r1, r3, r1
	strh r1, [r12, #0x40]
	ldr r2, [r2, #4]
	ldrb r1, [r2, #0x51]
	cmp r1, #4
	movls r4, r0
	strlsb r0, [r2, #0x53]
	bls _020FCFD4
	cmp r1, #8
	movls r1, #0x1f
	strlsb r1, [r2, #0x53]
	movls r4, #1
	movhi r1, #0x37
	strhib r1, [r2, #0x53]
	movhi r4, #2
_020FCFD4:
	cmp r4, #0
	beq _020FCFF8
	ldr r0, _020FD018 ; =0x02116238
	ldr r1, [r0, #4]
	ldrh r2, [r0, #2]
	ldrb r0, [r1, #0x53]
	ldrh r1, [r1, #0x40]
	mul r0, r2, r0
	bl FUN_020096bc
_020FCFF8:
	str r0, [sp]
	mov r0, r4
	mov r1, #0x55
	mov r2, #0xec
	mov r3, #0x3f
	bl FUN_ov17_02106508
	add sp, sp, #4
	ldmfd sp!, {r3, r4, pc}
_020FD018: .word 0x02116238
	arm_func_end FUN_ov17_020fcf78

	arm_func_start FUN_ov17_020fd01c
FUN_ov17_020fd01c: ; 0x020FD01C
	stmfd sp!, {r4, r5, r6, r7, r8, r9, r10, lr}
	ldr r4, _020FD16C ; =0x02116238
	mov r7, #0
	ldr r0, [r4, #4]
	mov r9, #0
	ldrb r8, [r0, #0x51]
	cmp r8, #5
	movgt r8, #5
	cmp r8, #0
	ble _020FD088
	mov r6, #0x2e
	mov r5, #0x18
_020FD04C:
	mov r0, r7
	mov r1, r6
	bl FUN_ov17_0210cffc
	ldr r2, [r4, #4]
	mov r1, r5
	add r2, r2, r9, lsl #2
	str r0, [r2, #0x10]
	mov r0, r7
	bl FUN_ov17_0210cffc
	ldr r1, [r4, #4]
	add r1, r1, r9, lsl #2
	add r9, r9, #1
	str r0, [r1, #0x24]
	cmp r9, r8
	blt _020FD04C
_020FD088:
	mov r7, #0
	ldr r5, _020FD170 ; =0x02112198
	ldr r9, _020FD174 ; =0x000003FF
	mov r6, r7
_020FD098:
	ldr r0, [r4, #4]
	ldrb r1, [r5, r7]
	ldr r2, [r0, #0x10]
	mov r0, r6
	bl FUN_ov17_0210cf68
	ldr r0, [r4, #4]
	ldr r1, [r0, #0x10]
	add r0, r0, r7, lsl #1
	ldrh r1, [r1, #4]
	add r7, r7, #1
	cmp r7, #3
	and r1, r1, r9
	strh r1, [r0, #0x42]
	blo _020FD098
	ldr r4, _020FD178 ; =0x0211219B
	ldr r10, _020FD16C ; =0x02116238
	ldr r7, _020FD174 ; =0x000003FF
	mov r5, #0
_020FD0E0:
	ldr r0, [r10, #4]
	ldrb r1, [r4, r6]
	ldr r2, [r0, #0x24]
	mov r0, r5
	ldr r9, _020FD16C ; =0x02116238
	bl FUN_ov17_0210cf68
	ldr r0, [r10, #4]
	ldr r1, [r0, #0x24]
	add r0, r0, r6, lsl #1
	ldrh r1, [r1, #4]
	add r6, r6, #1
	cmp r6, #4
	and r1, r1, r7
	strh r1, [r0, #0x48]
	blo _020FD0E0
	cmp r8, #0
	ldmlefd sp!, {r4, r5, r6, r7, r8, r9, r10, pc}
_020FD124:
	ldr r0, [r9, #4]
	add r0, r0, r5, lsl #2
	ldr r1, [r0, #0x10]
	ldrh r0, [r1, #4]
	bic r0, r0, #0xc00
	orr r0, r0, #0xc00
	strh r0, [r1, #4]
	ldr r0, [r9, #4]
	add r0, r0, r5, lsl #2
	ldr r1, [r0, #0x24]
	add r5, r5, #1
	ldrh r0, [r1, #4]
	cmp r5, r8
	bic r0, r0, #0xc00
	orr r0, r0, #0xc00
	strh r0, [r1, #4]
	blt _020FD124
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, pc}
_020FD16C: .word 0x02116238
_020FD170: .word 0x02112198
_020FD174: .word 0x000003FF
_020FD178: .word 0x0211219B
	arm_func_end FUN_ov17_020fd01c

	arm_func_start FUN_ov17_020fd17c
FUN_ov17_020fd17c: ; 0x020FD17C
	stmfd sp!, {r4, r5, r6, r7, r8, lr}
	mov r7, #1
	mov r8, #2
	mov r6, #8
	mov r0, r8
	mov r1, r7
	mov r2, r7
	mov r3, r6
	bl FUN_ov17_0210d238
	mov r5, #0
	mov r4, #0x1d
	mov r0, r8
	mov r1, r5
	mov r2, r4
	mov r3, r6
	bl FUN_ov17_0210d238
	mov r0, r7
	mov r1, r7
	bl FUN_ov17_0210dcd0
	mov r0, r5
	mov r1, r4
	bl FUN_ov17_0210dcd0
	ldr r0, _020FD1E0 ; =FUN_ov17_020fd1e4
	bl FUN_ov17_020f8ad4
	ldmfd sp!, {r4, r5, r6, r7, r8, pc}
_020FD1E0: .word FUN_ov17_020fd1e4
	arm_func_end FUN_ov17_020fd17c

	arm_func_start FUN_ov17_020fd1e4
FUN_ov17_020fd1e4: ; 0x020FD1E4
	stmfd sp!, {r4, lr}
	mov r0, #1
	bl FUN_ov17_0210d214
	cmp r0, #0
	ldmnefd sp!, {r4, pc}
	mov r4, #0
	mov r0, r4
	bl FUN_ov17_0210d214
	cmp r0, #0
	ldmnefd sp!, {r4, pc}
	mov r0, r4
	bl FUN_ov17_020f4f14
	ldr r0, _020FD220 ; =FUN_ov17_020fd224
	bl FUN_ov17_020f8ad4
	ldmfd sp!, {r4, pc}
_020FD220: .word FUN_ov17_020fd224
	arm_func_end FUN_ov17_020fd1e4

	arm_func_start FUN_ov17_020fd224
FUN_ov17_020fd224: ; 0x020FD224
	stmfd sp!, {r3, lr}
	bl FUN_ov17_020f47c4
	cmn r0, #2
	ldmeqfd sp!, {r3, pc}
	bl FUN_ov17_020f4834
	ldr r0, _020FD244 ; =FUN_ov17_020fd248
	bl FUN_ov17_020f8ad4
	ldmfd sp!, {r3, pc}
_020FD244: .word FUN_ov17_020fd248
	arm_func_end FUN_ov17_020fd224

	arm_func_start FUN_ov17_020fd248
FUN_ov17_020fd248: ; 0x020FD248
	stmfd sp!, {r3, lr}
	bl FUN_ov17_020fd25c
	bl FUN_ov17_020fd478
	bl FUN_ov17_020fd6a4
	ldmfd sp!, {r3, pc}
	arm_func_end FUN_ov17_020fd248

	arm_func_start FUN_ov17_020fd25c
FUN_ov17_020fd25c: ; 0x020FD25C
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	ldr r5, _020FD46C ; =0x02116238
	mov r4, #0
	ldr r1, [r5, #4]
	ldr r0, [r1, #0x38]
	cmp r0, #0
	ldreqb r0, [r1, #0x57]
	cmpeq r0, #0
	ldmnefd sp!, {r3, r4, r5, r6, r7, pc}
	ldr r0, _020FD470 ; =0x021126F8
	bl FUN_ov17_0210e600
	cmp r0, #0
	beq _020FD2E4
	ldr r0, [r5, #4]
	mvn r1, #0
	ldr r6, _020FD474 ; =0x021121A0
	strb r1, [r0, #0x50]
	mov r7, r4
_020FD2A4:
	add r0, r6, r7, lsl #3
	bl FUN_ov17_0210e600
	cmp r0, #0
	beq _020FD2D8
	cmp r7, #4
	ldrlt r0, [r5, #4]
	strltb r7, [r0, #0x50]
	blt _020FD2E4
	mov r0, #1
	bl FUN_ov17_020f47d8
	strb r7, [r5]
	bl FUN_ov17_020fdf20
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_020FD2D8:
	add r7, r7, #1
	cmp r7, #5
	blo _020FD2A4
_020FD2E4:
	ldr r0, _020FD470 ; =0x021126F8
	bl FUN_ov17_0210e710
	cmp r0, #0
	beq _020FD354
	ldr r6, _020FD474 ; =0x021121A0
	mov r7, #0
_020FD2FC:
	add r0, r6, r7, lsl #3
	bl FUN_ov17_0210e710
	cmp r0, #0
	beq _020FD348
	ldr r1, [r5, #4]
	ldrsb r0, [r1, #0x50]
	cmp r0, r7
	bne _020FD354
	ldrb r0, [r1, #0x51]
	cmp r7, r0
	blt _020FD334
	mov r0, #9
	bl FUN_ov17_02107c40
	b _020FD354
_020FD334:
	mov r0, #1
	bl FUN_ov17_020f47d8
	strb r7, [r5]
	bl FUN_ov17_020fdf20
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_020FD348:
	add r7, r7, #1
	cmp r7, #4
	blt _020FD2FC
_020FD354:
	mov r7, #1
	mov r0, r7
	bl FUN_ov17_0210e4b8
	cmp r0, #0
	beq _020FD378
	mov r0, r7
	bl FUN_ov17_020f47d8
	bl FUN_ov17_02106664
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_020FD378:
	mov r0, #2
	bl FUN_ov17_0210e4b8
	cmp r0, #0
	beq _020FD394
	mov r0, #0
	bl FUN_ov17_020f47d8
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_020FD394:
	mov r6, #0x200
	mov r0, r6
	bl FUN_ov17_0210e4f8
	cmp r0, #0
	beq _020FD3B0
	bl FUN_ov17_020fe11c
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_020FD3B0:
	mov r0, r6
	bl FUN_ov17_0210e538
	cmp r0, #0
	ldrne r0, [r5, #4]
	strneb r4, [r0, #0x59]
	ldmnefd sp!, {r3, r4, r5, r6, r7, pc}
	mov r6, #0x100
	mov r0, r6
	bl FUN_ov17_0210e4f8
	cmp r0, #0
	beq _020FD3E4
	bl FUN_ov17_020fe0b0
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_020FD3E4:
	mov r0, r6
	bl FUN_ov17_0210e538
	cmp r0, #0
	ldrne r0, [r5, #4]
	strneb r4, [r0, #0x59]
	ldmnefd sp!, {r3, r4, r5, r6, r7, pc}
	mov r6, #0x40
	mov r0, r6
	bl FUN_ov17_0210e4f8
	cmp r0, #0
	beq _020FD41C
	mov r0, r7
	bl FUN_ov17_020fdf6c
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_020FD41C:
	mov r0, r6
	bl FUN_ov17_0210e538
	cmp r0, #0
	ldrne r0, [r5, #4]
	strneb r4, [r0, #0x59]
	ldmnefd sp!, {r3, r4, r5, r6, r7, pc}
	mov r6, #0x80
	mov r0, r6
	bl FUN_ov17_0210e4f8
	cmp r0, #0
	beq _020FD454
	mov r0, #3
	bl FUN_ov17_020fdf6c
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_020FD454:
	mov r0, r6
	bl FUN_ov17_0210e538
	cmp r0, #0
	ldrne r0, [r5, #4]
	strneb r4, [r0, #0x59]
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_020FD46C: .word 0x02116238
_020FD470: .word 0x021126F8
_020FD474: .word 0x021121A0
	arm_func_end FUN_ov17_020fd25c

	arm_func_start FUN_ov17_020fd478
FUN_ov17_020fd478: ; 0x020FD478
	stmfd sp!, {r3, r4, r5, lr}
	ldr r4, _020FD698 ; =0x02116238
	ldr r1, [r4, #4]
	ldr r0, [r1, #0x38]
	cmp r0, #0
	ldmnefd sp!, {r3, r4, r5, pc}
	ldrb r0, [r1, #0x55]
	cmp r0, #0
	subne r0, r0, #1
	strneb r0, [r1, #0x55]
	bl FUN_ov17_0210662c
	cmp r0, #7
	addls pc, pc, r0, lsl #2
	ldmfd sp!, {r3, r4, r5, pc}
_020FD4B0: ; jump table
	ldmfd sp!, {r3, r4, r5, pc} ; case 0
	b _020FD4D0 ; case 1
	b _020FD4E4 ; case 2
	b _020FD528 ; case 3
	b _020FD5C0 ; case 4
	b _020FD688 ; case 5
	b _020FD61C ; case 6
	b _020FD688 ; case 7
_020FD4D0:
	ldr r0, [r4, #4]
	mov r1, #1
	strb r1, [r0, #0x57]
	bl FUN_ov17_020f484c
	ldmfd sp!, {r3, r4, r5, pc}
_020FD4E4:
	ldr r0, [r4, #4]
	ldrb r0, [r0, #0x55]
	cmp r0, #0
	ldmnefd sp!, {r3, r4, r5, pc}
	bl FUN_ov17_020f5258
	bl FUN_ov17_02106618
	ldr r1, [r4, #4]
	ldrh r2, [r1, #0x40]
	ldrb r1, [r1, #0x53]
	mul r0, r2, r0
	bl FUN_020096bc
	strh r0, [r4, #2]
	bl FUN_ov17_020fda30
	ldr r0, [r4, #4]
	mov r1, #4
	strb r1, [r0, #0x55]
	ldmfd sp!, {r3, r4, r5, pc}
_020FD528:
	ldr r0, [r4, #4]
	mov r5, #0
	strb r5, [r0, #0x57]
	bl FUN_ov17_020f4834
	bl FUN_ov17_02106618
	ldr r1, [r4, #4]
	ldrh r2, [r1, #0x40]
	ldrb r1, [r1, #0x53]
	mul r0, r2, r0
	bl FUN_020096bc
	strh r0, [r4, #2]
	mov r0, #0x13
	bl FUN_ov17_02107c40
	bl FUN_ov17_020fda30
	ldrh r0, [r4, #2]
	mov r1, #0x1c
	bl FUN_020096f8
	cmp r0, #0
	bne _020FD57C
	bl FUN_ov17_020fdf20
	ldmfd sp!, {r3, r4, r5, pc}
_020FD57C:
	cmp r0, #0xe
	mov r3, #0x78
	bge _020FD5A4
	ldr r1, _020FD69C ; =FUN_ov17_020fdd80
	mov r0, r5
	mov r2, r5
	bl FUN_ov17_0210f314
	ldr r1, [r4, #4]
	str r0, [r1, #0x38]
	ldmfd sp!, {r3, r4, r5, pc}
_020FD5A4:
	ldr r1, _020FD6A0 ; =FUN_ov17_020fde38
	mov r0, r5
	mov r2, r5
	bl FUN_ov17_0210f314
	ldr r1, [r4, #4]
	str r0, [r1, #0x38]
	ldmfd sp!, {r3, r4, r5, pc}
_020FD5C0:
	ldrh r0, [r4, #2]
	cmp r0, #0
	bne _020FD5F4
	ldr r0, [r4, #4]
	ldrb r0, [r0, #0x58]
	cmp r0, #0
	ldmnefd sp!, {r3, r4, r5, pc}
	mov r0, #9
	bl FUN_ov17_02107c40
	ldr r0, [r4, #4]
	mov r1, #1
	strb r1, [r0, #0x58]
	ldmfd sp!, {r3, r4, r5, pc}
_020FD5F4:
	mov r0, #0x13
	bl FUN_ov17_02107c40
	mov r0, #0
	ldr r1, _020FD69C ; =FUN_ov17_020fdd80
	mov r2, r0
	mov r3, #0x78
	bl FUN_ov17_0210f314
	ldr r1, [r4, #4]
	str r0, [r1, #0x38]
	ldmfd sp!, {r3, r4, r5, pc}
_020FD61C:
	ldr r2, [r4, #4]
	ldrb r0, [r2, #0x51]
	cmp r0, #4
	bls _020FD63C
	ldrh r1, [r4, #2]
	ldrh r0, [r2, #0x40]
	cmp r1, r0
	bne _020FD660
_020FD63C:
	ldrb r0, [r2, #0x58]
	cmp r0, #0
	ldmnefd sp!, {r3, r4, r5, pc}
	mov r0, #9
	bl FUN_ov17_02107c40
	ldr r0, [r4, #4]
	mov r1, #1
	strb r1, [r0, #0x58]
	ldmfd sp!, {r3, r4, r5, pc}
_020FD660:
	mov r0, #0x13
	bl FUN_ov17_02107c40
	mov r0, #0
	ldr r1, _020FD6A0 ; =FUN_ov17_020fde38
	mov r2, r0
	mov r3, #0x78
	bl FUN_ov17_0210f314
	ldr r1, [r4, #4]
	str r0, [r1, #0x38]
	ldmfd sp!, {r3, r4, r5, pc}
_020FD688:
	ldr r0, [r4, #4]
	mov r1, #0
	strb r1, [r0, #0x58]
	ldmfd sp!, {r3, r4, r5, pc}
_020FD698: .word 0x02116238
_020FD69C: .word FUN_ov17_020fdd80
_020FD6A0: .word FUN_ov17_020fde38
	arm_func_end FUN_ov17_020fd478

	arm_func_start FUN_ov17_020fd6a4
FUN_ov17_020fd6a4: ; 0x020FD6A4
	stmfd sp!, {r3, r4, lr}
	sub sp, sp, #4
	ldr r4, _020FD7AC ; =0x02116238
	ldr r1, [r4, #4]
	ldr r0, [r1, #0x38]
	cmp r0, #0
	ldreqb r0, [r1, #0x57]
	cmpeq r0, #0
	addne sp, sp, #4
	ldmnefd sp!, {r3, r4, pc}
	bl FUN_ov17_020f47c4
	cmp r0, #0
	beq _020FD6E8
	cmp r0, #1
	beq _020FD6F0
	add sp, sp, #4
	ldmfd sp!, {r3, r4, pc}
_020FD6E8:
	mov r0, #7
	b _020FD798
_020FD6F0:
	ldrb r0, [r4]
	cmp r0, #4
	bne _020FD718
	ldr r1, [r4, #4]
	mov r2, #1
	mov r0, #6
	strb r2, [r1, #0x54]
	bl FUN_ov17_02107c40
	bl FUN_ov17_020fe19c
	b _020FD79C
_020FD718:
	ldrh r0, [r4, #2]
	mov r1, #0x1c
	bl FUN_020096bc
	ldrb r12, [r4]
	ldr r3, [r4, #4]
	mov r1, #0x2a
	ldr r2, [r3]
	add r12, r12, r0
	mla r0, r12, r1, r2
	ldrb r0, [r0, #0x28]
	cmp r0, #2
	bne _020FD784
	mov r0, #9
	bl FUN_ov17_02107c40
	bl FUN_ov17_02106664
	bl FUN_ov17_020f484c
	mov r1, #1
	mov r0, #0
	str r0, [sp]
	mov r2, r1
	mov r0, #0xe
	sub r3, r1, #2
	bl FUN_ov17_02108e9c
	ldr r0, _020FD7B0 ; =FUN_ov17_020fe1c8
	bl FUN_ov17_020f8ad4
	add sp, sp, #4
	ldmfd sp!, {r3, r4, pc}
_020FD784:
	mov r0, #1
	strb r0, [r3, #0x54]
	ldr r1, [r4, #4]
	mov r0, #6
	strb r12, [r1, #0x52]
_020FD798:
	bl FUN_ov17_02107c40
_020FD79C:
	ldr r0, _020FD7B4 ; =FUN_ov17_020fd7b8
	bl FUN_ov17_020f8ad4
	add sp, sp, #4
	ldmfd sp!, {r3, r4, pc}
_020FD7AC: .word 0x02116238
_020FD7B0: .word FUN_ov17_020fe1c8
_020FD7B4: .word FUN_ov17_020fd7b8
	arm_func_end FUN_ov17_020fd6a4

	arm_func_start FUN_ov17_020fd7b8
FUN_ov17_020fd7b8: ; 0x020FD7B8
	stmfd sp!, {r3, lr}
	bl FUN_ov17_020f484c
	mov r0, #8
	bl FUN_ov17_0210d424
	ldr r0, _020FD7D4 ; =FUN_ov17_020fd7d8
	bl FUN_ov17_020f8ad4
	ldmfd sp!, {r3, pc}
_020FD7D4: .word FUN_ov17_020fd7d8
	arm_func_end FUN_ov17_020fd7b8

	arm_func_start FUN_ov17_020fd7d8
FUN_ov17_020fd7d8: ; 0x020FD7D8
	stmfd sp!, {r3, r4, r5, lr}
	mov r0, #1
	bl FUN_ov17_0210d214
	cmp r0, #0
	ldmnefd sp!, {r3, r4, r5, pc}
	ldr r0, _020FD848 ; =0x02116238
	ldr r0, [r0, #4]
	ldrb r0, [r0, #0x54]
	cmp r0, #0
	beq _020FD808
	bl FUN_ov17_020f4794
	b _020FD80C
_020FD808:
	bl FUN_ov17_020f484c
_020FD80C:
	mov r5, #3
	mov r1, #1
	mov r4, #8
	mov r0, r5
	mov r2, r1
	mov r3, r4
	bl FUN_ov17_0210d238
	mov r0, r5
	mov r3, r4
	mov r1, #0
	mov r2, #0x1d
	bl FUN_ov17_0210d238
	ldr r0, _020FD84C ; =FUN_ov17_020fd850
	bl FUN_ov17_020f8ad4
	ldmfd sp!, {r3, r4, r5, pc}
_020FD848: .word 0x02116238
_020FD84C: .word FUN_ov17_020fd850
	arm_func_end FUN_ov17_020fd7d8

	arm_func_start FUN_ov17_020fd850
FUN_ov17_020fd850: ; 0x020FD850
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	mov r6, #1
	mov r0, r6
	bl FUN_ov17_0210d214
	cmp r0, #0
	ldmnefd sp!, {r3, r4, r5, r6, r7, pc}
	mov r4, #0
	mov r0, r4
	bl FUN_ov17_0210d214
	cmp r0, #0
	ldmnefd sp!, {r3, r4, r5, r6, r7, pc}
	bl FUN_ov17_020f4808
	cmp r0, #0
	ldmeqfd sp!, {r3, r4, r5, r6, r7, pc}
	ldr r5, _020FDA14 ; =0x02116238
	mov r0, r6
	ldr r1, [r5, #4]
	ldr r1, [r1, #0x3c]
	bl FUN_ov17_0210f3d8
_020FD89C:
	ldr r0, [r5, #4]
	add r0, r0, r4, lsl #2
	ldr r0, [r0, #0x10]
	cmp r0, #0
	beq _020FD8B4
	bl FUN_ov17_0210ebcc
_020FD8B4:
	ldr r0, [r5, #4]
	add r0, r0, r4, lsl #2
	ldr r0, [r0, #0x24]
	cmp r0, #0
	beq _020FD8CC
	bl FUN_ov17_0210ebcc
_020FD8CC:
	add r4, r4, #1
	cmp r4, #5
	blt _020FD89C
	ldr r7, _020FDA14 ; =0x02116238
	ldr r0, [r7, #4]
	ldr r0, [r0, #0xc]
	bl FUN_ov17_0210d8dc
	bl FUN_ov17_021065e0
	bl FUN_ov17_020f5258
	bl FUN_ov17_020f4de8
	bl FUN_ov17_02106358
	ldr r0, [r7, #4]
	ldr r0, [r0, #4]
	bl FUN_ov17_0210c8fc
	ldr r0, [r7, #4]
	ldr r0, [r0, #8]
	bl FUN_ov17_0210c8fc
	mov r5, #1
	mov r0, r5
	mov r1, r5
	bl FUN_ov17_0210dd24
	mov r4, #0
	mov r0, r4
	mov r1, #0x1d
	bl FUN_ov17_0210dd24
	ldr r0, _020FDA18 ; =0x04000010
	str r4, [r0]
	str r4, [r0, #8]
	ldr r2, [r7, #4]
	ldrb r0, [r2, #0x54]
	cmp r0, #0
	bne _020FD970
	bl FUN_ov17_02106be4
	bl FUN_ov17_02107098
	ldrb r0, [r0, #0xf4]
	bl FUN_ov17_021074a0
	mov r1, r4
	mov r0, #2
	bl FUN_ov17_020f8ae4
	ldr r0, _020FDA1C ; =FUN_ov17_0210462c
	b _020FDA04
_020FD970:
	ldrb r0, [r7]
	cmp r0, #4
	bne _020FD994
	bl FUN_ov17_02106be4
	mov r0, r4
	mov r1, r5
	bl FUN_ov17_020f8ae4
	ldr r0, _020FDA20 ; =FUN_ov17_02103414
	b _020FDA04
_020FD994:
	ldrb r1, [r2, #0x52]
	ldr r0, [r2]
	mov r6, #0x2a
	mla r0, r1, r6, r0
	bl FUN_ov17_021070d4
	mov r0, r4
	mov r1, r4
	bl FUN_ov17_020f8ae4
	ldr r0, [r7, #4]
	ldrb r1, [r0, #0x52]
	ldr r0, [r0]
	mla r0, r1, r6, r0
	ldrb r0, [r0, #0x28]
	mov r1, r5
	cmp r0, #0
	mov r0, r4
	beq _020FD9F0
	bl FUN_ov17_020f8ae4
	mov r0, r5
	mov r1, r5
	bl FUN_ov17_020f8b20
	ldr r0, _020FDA24 ; =FUN_ov17_020fe21c
	b _020FDA04
_020FD9F0:
	bl FUN_ov17_020f8ae4
	mov r0, r4
	mov r1, r5
	bl FUN_ov17_020f8b20
	ldr r0, _020FDA28 ; =FUN_ov17_021054a0
_020FDA04:
	bl FUN_ov17_020f8ad4
	ldr r0, _020FDA2C ; =0x0211623C
	bl FUN_ov17_0210e0cc
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_020FDA14: .word 0x02116238
_020FDA18: .word 0x04000010
_020FDA1C: .word FUN_ov17_0210462c
_020FDA20: .word FUN_ov17_02103414
_020FDA24: .word FUN_ov17_020fe21c
_020FDA28: .word FUN_ov17_021054a0
_020FDA2C: .word 0x0211623C
	arm_func_end FUN_ov17_020fd850

	arm_func_start FUN_ov17_020fda30
FUN_ov17_020fda30: ; 0x020FDA30
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	ldr r4, _020FDAD0 ; =0x02116238
	mov r1, #0x1c
	ldrh r0, [r4, #2]
	bl FUN_020096bc
	ldr r1, [r4, #4]
	mov r7, r0
	ldrb r4, [r1, #0x51]
	ldr r0, [r1, #0xc]
	mov r1, #0
	bl FUN_ov17_0210dba8
	cmp r4, #5
	movgt r4, #5
	mov r5, r7
	cmp r4, #0
	mov r6, #0
	ble _020FDA90
_020FDA74:
	mov r0, r5
	mov r1, r6
	bl FUN_ov17_020fdad4
	add r6, r6, #1
	cmp r6, r4
	add r5, r5, #1
	blt _020FDA74
_020FDA90:
	cmp r4, #0
	mov r5, #0
	ble _020FDAB8
_020FDA9C:
	mov r0, r7
	mov r1, r5
	bl FUN_ov17_020fdc3c
	add r5, r5, #1
	cmp r5, r4
	add r7, r7, #1
	blt _020FDA9C
_020FDAB8:
	ldr r0, _020FDAD0 ; =0x02116238
	ldr r0, [r0, #4]
	ldr r0, [r0, #0xc]
	bl FUN_ov17_0210dc58
	bl FUN_ov17_020fdcc8
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_020FDAD0: .word 0x02116238
	arm_func_end FUN_ov17_020fda30

	arm_func_start FUN_ov17_020fdad4
FUN_ov17_020fdad4: ; 0x020FDAD4
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, lr}
	sub sp, sp, #0x30
	mov r8, r0
	mov r0, #0x2a
	ldr r5, _020FDC38 ; =0x02116238
	mul r7, r8, r0
	ldr r0, [r5, #4]
	mov r4, r1
	ldr r0, [r0]
	mov r1, #0x20
	add r0, r0, r7
	bl FUN_ov17_0210ee94
	ldr r2, [r5, #4]
	mov r1, #0x1c
	ldrb r2, [r2, #0x51]
	mul r6, r4, r1
	cmp r8, r2
	mov r5, r0
	addge sp, sp, #0x30
	ldmgefd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
	add r0, sp, #0xc
	cmp r5, #0x10
	mov r1, #0
	mov r2, #0x22
	addle r6, r6, #6
	bl MI_CpuFill8
	mov r8, r5
	cmp r5, #0x10
	movgt r8, #0x10
	cmp r8, #0
	mov r3, #0
	ble _020FDB80
	ldr r0, _020FDC38 ; =0x02116238
	ldr r4, [r0, #4]
	add r0, sp, #0xc
_020FDB60:
	ldr r2, [r4]
	mov r1, r3, lsl #1
	add r2, r7, r2
	ldrb r2, [r3, r2]
	add r3, r3, #1
	cmp r3, r8
	strh r2, [r0, r1]
	blt _020FDB60
_020FDB80:
	mov r1, #0xa
	add r4, sp, #0xc
	stmia sp, {r1, r4}
	mov r0, #1
	ldr r9, _020FDC38 ; =0x02116238
	str r0, [sp, #8]
	ldr r0, [r9, #4]
	mov r2, r6
	ldr r0, [r0, #0xc]
	mov r3, #2
	bl FUN_ov17_0210da44
	cmp r5, #0x10
	addle sp, sp, #0x30
	ldmlefd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
	mov r8, #0
	mov r0, r4
	mov r1, r8
	mov r2, #0x22
	bl MI_CpuFill8
	sub r2, r5, #0x10
	cmp r2, #0
	ble _020FDC00
	ldr r3, [r9, #4]
_020FDBDC:
	ldr r1, [r3]
	mov r0, r8, lsl #1
	add r1, r7, r1
	add r1, r8, r1
	ldrb r1, [r1, #0x10]
	add r8, r8, #1
	cmp r8, r2
	strh r1, [r4, r0]
	blt _020FDBDC
_020FDC00:
	mov r1, #0xa
	add r0, sp, #0xc
	str r1, [sp]
	str r0, [sp, #4]
	mov r2, #1
	str r2, [sp, #8]
	ldr r0, _020FDC38 ; =0x02116238
	add r2, r6, #0xc
	ldr r0, [r0, #4]
	mov r3, #2
	ldr r0, [r0, #0xc]
	bl FUN_ov17_0210da44
	add sp, sp, #0x30
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
_020FDC38: .word 0x02116238
	arm_func_end FUN_ov17_020fdad4

	arm_func_start FUN_ov17_020fdc3c
FUN_ov17_020fdc3c: ; 0x020FDC3C
	stmfd sp!, {r4, lr}
	ldr r3, _020FDCC4 ; =0x02116238
	ldr lr, [r3, #4]
	ldrb r2, [lr, #0x51]
	cmp r0, r2
	ldmgefd sp!, {r4, pc}
	mov r2, #0x2a
	mul r2, r0, r2
	ldr r0, [lr]
	add r4, lr, r1, lsl #2
	add r0, r0, r2
	ldrb r12, [r0, #0x28]
	ldr r4, [r4, #0x10]
	mov r0, #0x400
	add r12, lr, r12, lsl #1
	ldrh lr, [r4, #4]
	rsb r0, r0, #0
	ldrh r12, [r12, #0x42]
	and lr, lr, r0
	orr r12, lr, r12
	strh r12, [r4, #4]
	ldr lr, [r3, #4]
	ldr r3, [lr]
	add r12, lr, r1, lsl #2
	add r1, r3, r2
	ldrh r1, [r1, #0x26]
	ldr r3, [r12, #0x24]
	add r1, lr, r1, lsl #1
	ldrh r2, [r3, #4]
	ldrh r1, [r1, #0x48]
	and r0, r2, r0
	orr r0, r0, r1
	strh r0, [r3, #4]
	ldmfd sp!, {r4, pc}
_020FDCC4: .word 0x02116238
	arm_func_end FUN_ov17_020fdc3c

	arm_func_start FUN_ov17_020fdcc8
FUN_ov17_020fdcc8: ; 0x020FDCC8
	stmfd sp!, {r4, r5, r6, lr}
	ldr r4, _020FDD78 ; =0x02116238
	mov r1, #0x1c
	ldrh r0, [r4, #2]
	bl FUN_020096f8
	ldr r1, [r4, #4]
	rsb r0, r0, #0x36
	ldrb r1, [r1, #0x51]
	mov r2, #0
	cmp r1, #5
	movgt r1, #5
	cmp r1, #0
	ble _020FDD64
	ldr r12, _020FDD78 ; =0x02116238
	ldr r3, _020FDD7C ; =0xFE00FF00
_020FDD04:
	ldr r4, [r12, #4]
	sub r5, r0, #2
	add r4, r4, r2, lsl #2
	ldr r6, [r4, #0x10]
	add r4, r0, #1
	ldr lr, [r6]
	and r5, r5, #0xff
	and lr, lr, r3
	orr r5, lr, r5
	orr r5, r5, #0xb30000
	str r5, [r6]
	ldr r5, [r12, #4]
	and r4, r4, #0xff
	add r5, r5, r2, lsl #2
	ldr r5, [r5, #0x24]
	add r2, r2, #1
	ldr lr, [r5]
	cmp r2, r1
	and lr, lr, r3
	orr r4, lr, r4
	orr r4, r4, #0xd20000
	str r4, [r5]
	add r0, r0, #0x1c
	blt _020FDD04
_020FDD64:
	ldr r0, _020FDD78 ; =0x02116238
	mov r1, #1
	ldr r0, [r0, #4]
	strb r1, [r0, #0x56]
	ldmfd sp!, {r4, r5, r6, pc}
_020FDD78: .word 0x02116238
_020FDD7C: .word 0xFE00FF00
	arm_func_end FUN_ov17_020fdcc8

	arm_func_start FUN_ov17_020fdd80
FUN_ov17_020fdd80: ; 0x020FDD80
	stmfd sp!, {r4, r5, r6, lr}
	mov r4, r0
	bl FUN_ov17_02106664
	bl FUN_ov17_020f5258
	ldr r0, _020FDE34 ; =0x02116238
	ldr r5, _020FDE34 ; =0x02116238
	ldrh r1, [r0, #2]
	cmp r1, #4
	subhi r1, r1, #4
	movls r1, #0
	strh r1, [r0, #2]
	ldrh r0, [r5, #2]
	mov r1, #0x1c
	bl FUN_020096f8
	mov r6, r0
	cmp r6, #0x18
	bne _020FDDCC
	bl FUN_ov17_020fda30
	ldmfd sp!, {r4, r5, r6, pc}
_020FDDCC:
	ble _020FDDE8
	ldrh r1, [r5, #2]
	rsb r0, r6, #0x1c
	mov r0, r0, lsl #0x10
	add r0, r1, r0, lsr #16
	strh r0, [r5, #2]
	mov r6, #0
_020FDDE8:
	bl FUN_ov17_020fdcc8
	cmp r6, #0
	ldmnefd sp!, {r4, r5, r6, pc}
	ldr r5, _020FDE34 ; =0x02116238
	ldr r1, [r5, #4]
	ldrh r2, [r5, #2]
	ldrb r0, [r1, #0x53]
	ldrh r1, [r1, #0x40]
	mul r0, r2, r0
	bl FUN_020096bc
	bl FUN_ov17_02106640
	bl FUN_ov17_0210664c
	bl FUN_ov17_020fdf20
	ldr r2, [r5, #4]
	mov r0, #0
	mov r1, r4
	str r0, [r2, #0x38]
	bl FUN_ov17_0210f3b8
	ldmfd sp!, {r4, r5, r6, pc}
_020FDE34: .word 0x02116238
	arm_func_end FUN_ov17_020fdd80

	arm_func_start FUN_ov17_020fde38
FUN_ov17_020fde38: ; 0x020FDE38
	stmfd sp!, {r3, r4, r5, lr}
	mov r4, r0
	bl FUN_ov17_02106664
	bl FUN_ov17_020f5258
	ldr r5, _020FDEC4 ; =0x02116238
	mov r1, #0x1c
	ldrh r0, [r5, #2]
	add r0, r0, #4
	strh r0, [r5, #2]
	ldrh r0, [r5, #2]
	bl FUN_020096f8
	cmp r0, #4
	blt _020FDE74
	bl FUN_ov17_020fdcc8
	ldmfd sp!, {r3, r4, r5, pc}
_020FDE74:
	ldrh r1, [r5, #2]
	mov r0, r0, lsl #0x10
	sub r0, r1, r0, lsr #16
	strh r0, [r5, #2]
	bl FUN_ov17_020fda30
	ldr r1, [r5, #4]
	ldrh r2, [r5, #2]
	ldrb r0, [r1, #0x53]
	ldrh r1, [r1, #0x40]
	mul r0, r2, r0
	bl FUN_020096bc
	bl FUN_ov17_02106640
	bl FUN_ov17_0210664c
	bl FUN_ov17_020fdf20
	ldr r2, [r5, #4]
	mov r0, #0
	mov r1, r4
	str r0, [r2, #0x38]
	bl FUN_ov17_0210f3b8
	ldmfd sp!, {r3, r4, r5, pc}
_020FDEC4: .word 0x02116238
	arm_func_end FUN_ov17_020fde38

	arm_func_start FUN_ov17_020fdec8
FUN_ov17_020fdec8: ; 0x020FDEC8
	stmfd sp!, {r4, lr}
	ldr r4, _020FDF14 ; =0x02116238
	ldr r0, [r4, #4]
	ldrb r0, [r0, #0x56]
	cmp r0, #0
	ldmeqfd sp!, {r4, pc}
	ldrh r0, [r4, #2]
	mov r1, #0x1c
	bl FUN_020096f8
	ldr r1, _020FDF18 ; =0x01FF0000
	sub r2, r0, #0x32
	ldr r0, _020FDF1C ; =0x04000010
	and r1, r1, r2, lsl #16
	str r1, [r0]
	str r1, [r0, #8]
	ldr r0, [r4, #4]
	mov r1, #0
	strb r1, [r0, #0x56]
	ldmfd sp!, {r4, pc}
_020FDF14: .word 0x02116238
_020FDF18: .word 0x01FF0000
_020FDF1C: .word 0x04000010
	arm_func_end FUN_ov17_020fdec8

	arm_func_start FUN_ov17_020fdf20
FUN_ov17_020fdf20: ; 0x020FDF20
	stmfd sp!, {r3, lr}
	ldr r0, _020FDF5C ; =0x02116238
	ldr r1, _020FDF60 ; =0x021121C8
	ldrb r2, [r0]
	ldr r3, _020FDF64 ; =0x021121CA
	mov r0, #2
	mov r12, r2, lsl #3
	cmp r2, #4
	ldr r2, _020FDF68 ; =0x021121CC
	ldrh r1, [r1, r12]
	ldrh r2, [r2, r12]
	ldrh r3, [r3, r12]
	movhs r0, #3
	bl FUN_ov17_020f50cc
	ldmfd sp!, {r3, pc}
_020FDF5C: .word 0x02116238
_020FDF60: .word 0x021121C8
_020FDF64: .word 0x021121CA
_020FDF68: .word 0x021121CC
	arm_func_end FUN_ov17_020fdf20

	arm_func_start FUN_ov17_020fdf6c
FUN_ov17_020fdf6c: ; 0x020FDF6C
	stmfd sp!, {r4, r5, r6, lr}
	ldr r5, _020FE0A8 ; =0x02116238
	mov r6, #0
	ldrb r2, [r5]
	mov r4, #1
	cmp r2, #4
	addls pc, pc, r2, lsl #2
	b _020FE064
_020FDF8C: ; jump table
	b _020FDFA0 ; case 0
	b _020FE000 ; case 1
	b _020FE000 ; case 2
	b _020FE02C ; case 3
	b _020FE044 ; case 4
_020FDFA0:
	cmp r0, #1
	bne _020FDFE4
	ldrh r0, [r5, #2]
	cmp r0, #0
	moveq r0, #4
	streqb r0, [r5]
	beq _020FE064
	mov r0, #0x13
	bl FUN_ov17_02107c40
	mov r0, r6
	ldr r1, _020FE0AC ; =FUN_ov17_020fdd80
	mov r2, r0
	mov r3, #0x78
	bl FUN_ov17_0210f314
	ldr r1, [r5, #4]
	str r0, [r1, #0x38]
	ldmfd sp!, {r4, r5, r6, pc}
_020FDFE4:
	ldr r0, [r5, #4]
	ldrb r0, [r0, #0x51]
	cmp r0, #1
	addhi r0, r2, #1
	strhib r0, [r5]
	movls r4, r6
	b _020FE064
_020FE000:
	cmp r0, #1
	subeq r0, r2, #1
	streqb r0, [r5]
	beq _020FE064
	ldr r1, [r5, #4]
	add r0, r2, #1
	ldrb r1, [r1, #0x51]
	cmp r1, r0
	strgtb r0, [r5]
	movle r4, r6
	b _020FE064
_020FE02C:
	cmp r0, #1
	subeq r0, r2, #1
	streqb r0, [r5]
	beq _020FE064
	bl FUN_ov17_020fe11c
	ldmfd sp!, {r4, r5, r6, pc}
_020FE044:
	cmp r0, #1
	moveq r4, r6
	beq _020FE064
	strh r6, [r5, #2]
	strb r6, [r5]
	bl FUN_ov17_020fda30
	mov r0, r6
	bl FUN_ov17_02106640
_020FE064:
	cmp r4, #0
	bne _020FE098
	ldr r4, _020FE0A8 ; =0x02116238
	ldr r0, [r4, #4]
	ldrb r0, [r0, #0x59]
	cmp r0, #0
	ldmnefd sp!, {r4, r5, r6, pc}
	mov r0, #9
	bl FUN_ov17_02107c40
	ldr r0, [r4, #4]
	mov r1, #1
	strb r1, [r0, #0x59]
	ldmfd sp!, {r4, r5, r6, pc}
_020FE098:
	mov r0, #8
	bl FUN_ov17_02107c40
	bl FUN_ov17_020fdf20
	ldmfd sp!, {r4, r5, r6, pc}
_020FE0A8: .word 0x02116238
_020FE0AC: .word FUN_ov17_020fdd80
	arm_func_end FUN_ov17_020fdf6c

	arm_func_start FUN_ov17_020fe0b0
FUN_ov17_020fe0b0: ; 0x020FE0B0
	stmfd sp!, {r4, lr}
	ldr r4, _020FE114 ; =0x02116238
	ldrh r0, [r4, #2]
	cmp r0, #0
	bne _020FE0EC
	ldr r0, [r4, #4]
	ldrb r0, [r0, #0x59]
	cmp r0, #0
	ldmnefd sp!, {r4, pc}
	mov r0, #9
	bl FUN_ov17_02107c40
	ldr r0, [r4, #4]
	mov r1, #1
	strb r1, [r0, #0x59]
	ldmfd sp!, {r4, pc}
_020FE0EC:
	mov r0, #0x13
	bl FUN_ov17_02107c40
	mov r0, #0
	ldr r1, _020FE118 ; =FUN_ov17_020fdd80
	mov r2, r0
	mov r3, #0x78
	bl FUN_ov17_0210f314
	ldr r1, [r4, #4]
	str r0, [r1, #0x38]
	ldmfd sp!, {r4, pc}
_020FE114: .word 0x02116238
_020FE118: .word FUN_ov17_020fdd80
	arm_func_end FUN_ov17_020fe0b0

	arm_func_start FUN_ov17_020fe11c
FUN_ov17_020fe11c: ; 0x020FE11C
	stmfd sp!, {r4, lr}
	ldr r4, _020FE194 ; =0x02116238
	ldr r2, [r4, #4]
	ldrh r1, [r4, #2]
	ldrh r0, [r2, #0x40]
	cmp r1, r0
	beq _020FE144
	ldrb r0, [r2, #0x51]
	cmp r0, #4
	bhi _020FE16C
_020FE144:
	ldrb r0, [r2, #0x59]
	cmp r0, #0
	ldmnefd sp!, {r4, pc}
	mov r0, #9
	bl FUN_ov17_02107c40
	ldr r0, _020FE194 ; =0x02116238
	mov r1, #1
	ldr r0, [r0, #4]
	strb r1, [r0, #0x59]
	ldmfd sp!, {r4, pc}
_020FE16C:
	mov r0, #0x13
	bl FUN_ov17_02107c40
	mov r0, #0
	ldr r1, _020FE198 ; =FUN_ov17_020fde38
	mov r2, r0
	mov r3, #0x78
	bl FUN_ov17_0210f314
	ldr r1, [r4, #4]
	str r0, [r1, #0x38]
	ldmfd sp!, {r4, pc}
_020FE194: .word 0x02116238
_020FE198: .word FUN_ov17_020fde38
	arm_func_end FUN_ov17_020fe11c

	arm_func_start FUN_ov17_020fe19c
FUN_ov17_020fe19c: ; 0x020FE19C
	stmfd sp!, {r3, lr}
	ldr r1, _020FE1C0 ; =0x02112194
	ldr r0, _020FE1C4 ; =0x02116238
	ldrb r1, [r1]
	ldr r0, [r0, #4]
	ldr r0, [r0, #8]
	mov r2, r1
	bl FUN_ov17_02106444
	ldmfd sp!, {r3, pc}
_020FE1C0: .word 0x02112194
_020FE1C4: .word 0x02116238
	arm_func_end FUN_ov17_020fe19c

	arm_func_start FUN_ov17_020fe1c8
FUN_ov17_020fe1c8: ; 0x020FE1C8
	stmfd sp!, {r3, lr}
	bl FUN_ov17_021091fc
	cmp r0, #0
	ldmnefd sp!, {r3, pc}
	mov r0, #6
	bl FUN_ov17_02107c40
	bl FUN_ov17_021091b8
	ldr r0, _020FE1F0 ; =FUN_ov17_020fe1f4
	bl FUN_ov17_020f8ad4
	ldmfd sp!, {r3, pc}
_020FE1F0: .word FUN_ov17_020fe1f4
	arm_func_end FUN_ov17_020fe1c8

	arm_func_start FUN_ov17_020fe1f4
FUN_ov17_020fe1f4: ; 0x020FE1F4
	stmfd sp!, {r3, lr}
	bl FUN_ov17_02109210
	cmp r0, #0
	ldmnefd sp!, {r3, pc}
	bl FUN_ov17_020f4834
	bl FUN_ov17_0210664c
	ldr r0, _020FE218 ; =FUN_ov17_020fd248
	bl FUN_ov17_020f8ad4
	ldmfd sp!, {r3, pc}
_020FE218: .word FUN_ov17_020fd248
	arm_func_end FUN_ov17_020fe1f4

	arm_func_start FUN_ov17_020fe21c
FUN_ov17_020fe21c: ; 0x020FE21C
	stmfd sp!, {r4, r5, lr}
	sub sp, sp, #0xc
	ldr r1, _020FE330 ; =0x02112224
	mov r0, #0x2c
	ldrb r3, [r1]
	ldrb r2, [r1, #1]
	mov r1, #4
	strb r3, [sp]
	strb r2, [sp, #1]
	bl FUN_ov17_0210e0a8
	ldr r4, _020FE334 ; =0x02116240
	add r1, sp, #4
	str r0, [r4]
	add r0, sp, #8
	bl FUN_ov17_020f8b34
	ldr r0, [sp, #8]
	cmp r0, #0
	bne _020FE288
	ldr r0, [r4]
	add r0, r0, #8
	bl FUN_ov17_02107318
	ldr r0, [r4]
	mov r1, #0x20
	add r0, r0, #8
	bl FUN_ov17_0210ee94
	ldr r1, [r4]
	strb r0, [r1, #0x29]
_020FE288:
	bl FUN_ov17_020fe33c
	ldr r0, [sp, #8]
	add r0, r0, #9
	bl FUN_ov17_020f5324
	ldr r0, [sp, #4]
	cmp r0, #1
	bne _020FE2B0
	mov r0, #0x35
	sub r1, r0, #0x36
	b _020FE2C0
_020FE2B0:
	ldr r2, [sp, #8]
	add r0, sp, #0
	ldrb r0, [r0, r2]
	mvn r1, #0
_020FE2C0:
	mov r2, #0
	bl FUN_ov17_020f4d10
	mov r0, #2
	bl FUN_ov17_020f4ec4
	mov r5, #0
	mov r0, r5
	mov r1, r5
	bl FUN_ov17_0210d6ec
	ldr r4, _020FE334 ; =0x02116240
	mov r1, #0x3e
	ldr r2, [r4]
	str r0, [r2]
	mov r0, r5
	bl FUN_ov17_0210cffc
	ldr r1, [r4]
	str r0, [r1, #4]
	ldr r0, [r4]
	ldr r1, [r0, #4]
	ldrh r0, [r1, #4]
	bic r0, r0, #0xc00
	orr r0, r0, #0xc00
	strh r0, [r1, #4]
	bl FUN_ov17_020fe9b8
	bl FUN_ov17_020fe8c4
	ldr r0, _020FE338 ; =FUN_ov17_020fe3f8
	bl FUN_ov17_020f8ad4
	add sp, sp, #0xc
	ldmfd sp!, {r4, r5, pc}
_020FE330: .word 0x02112224
_020FE334: .word 0x02116240
_020FE338: .word FUN_ov17_020fe3f8
	arm_func_end FUN_ov17_020fe21c

	arm_func_start FUN_ov17_020fe33c
FUN_ov17_020fe33c: ; 0x020FE33C
	stmfd sp!, {r3, lr}
	ldr r0, _020FE3D0 ; =0x021130C8
	ldr r1, _020FE3D4 ; =0x020051BC
	bl FUN_ov17_020f4e84
	ldr r0, _020FE3D8 ; =0x021130DC
	ldr r1, _020FE3DC ; =0x0200593C
	bl FUN_ov17_020f4e84
	ldr r0, _020FE3E0 ; =0x021130F4
	ldr r1, _020FE3E4 ; =FUN_020050fc
	bl FUN_ov17_020f4e84
	ldr r0, _020FE3E8 ; =0x0211310C
	ldr r1, _020FE3EC ; =FUN_020055bc
	bl FUN_ov17_020f4e84
	ldr r3, _020FE3F0 ; =0x04001008
	ldr r1, _020FE3F4 ; =0x0400000A
	ldrh r0, [r3]
	sub r2, r3, #0x1000
	bic r0, r0, #3
	orr r0, r0, #3
	strh r0, [r3]
	ldrh r0, [r3, #2]
	bic r0, r0, #3
	orr r0, r0, #3
	strh r0, [r3, #2]
	ldrh r0, [r2]
	bic r0, r0, #3
	orr r0, r0, #2
	strh r0, [r2]
	ldrh r0, [r1]
	bic r0, r0, #3
	orr r0, r0, #3
	strh r0, [r1]
	ldrh r0, [r1, #2]
	bic r0, r0, #3
	orr r0, r0, #3
	strh r0, [r1, #2]
	ldmfd sp!, {r3, pc}
_020FE3D0: .word 0x021130C8
_020FE3D4: .word 0x020051BC
_020FE3D8: .word 0x021130DC
_020FE3DC: .word 0x0200593C
_020FE3E0: .word 0x021130F4
_020FE3E4: .word FUN_020050fc
_020FE3E8: .word 0x0211310C
_020FE3EC: .word FUN_020055bc
_020FE3F0: .word 0x04001008
_020FE3F4: .word 0x0400000A
	arm_func_end FUN_ov17_020fe33c

	arm_func_start FUN_ov17_020fe3f8
FUN_ov17_020fe3f8: ; 0x020FE3F8
	stmfd sp!, {r4, r5, r6, r7, r8, lr}
	mov r7, #1
	mov r8, #2
	mov r6, #8
	mov r0, r8
	mov r1, r7
	mov r2, r7
	mov r3, r6
	bl FUN_ov17_0210d238
	mov r5, #0
	mov r4, #0x15
	mov r0, r8
	mov r1, r5
	mov r2, r4
	mov r3, r6
	bl FUN_ov17_0210d238
	mov r0, r7
	mov r1, r7
	bl FUN_ov17_0210dcd0
	mov r0, r5
	mov r1, r4
	bl FUN_ov17_0210dcd0
	ldr r0, _020FE45C ; =FUN_ov17_020fe460
	bl FUN_ov17_020f8ad4
	ldmfd sp!, {r4, r5, r6, r7, r8, pc}
_020FE45C: .word FUN_ov17_020fe460
	arm_func_end FUN_ov17_020fe3f8

	arm_func_start FUN_ov17_020fe460
FUN_ov17_020fe460: ; 0x020FE460
	stmfd sp!, {r4, lr}
	mov r0, #1
	bl FUN_ov17_0210d214
	cmp r0, #0
	ldmnefd sp!, {r4, pc}
	mov r4, #0
	mov r0, r4
	bl FUN_ov17_0210d214
	cmp r0, #0
	ldmnefd sp!, {r4, pc}
	bl FUN_ov17_020f5588
	mov r0, #0x14
	bl FUN_ov17_02107c40
	ldr r0, _020FE4D8 ; =0x02116240
	ldr r0, [r0]
	ldrb r0, [r0, #0x29]
	cmp r0, #0
	bne _020FE4B0
	mov r0, r4
	bl FUN_ov17_020f5918
_020FE4B0:
	ldr r0, _020FE4D8 ; =0x02116240
	ldr r0, [r0]
	ldrb r0, [r0, #0x29]
	cmp r0, #0x20
	bne _020FE4CC
	mov r0, #0
	bl FUN_ov17_020f592c
_020FE4CC:
	ldr r0, _020FE4DC ; =FUN_ov17_020fe4e0
	bl FUN_ov17_020f8ad4
	ldmfd sp!, {r4, pc}
_020FE4D8: .word 0x02116240
_020FE4DC: .word FUN_ov17_020fe4e0
	arm_func_end FUN_ov17_020fe460

	arm_func_start FUN_ov17_020fe4e0
FUN_ov17_020fe4e0: ; 0x020FE4E0
	stmfd sp!, {r3, lr}
	bl FUN_ov17_020f5904
	cmp r0, #0xff
	ldmeqfd sp!, {r3, pc}
	ldr r0, _020FE4FC ; =FUN_ov17_020fe500
	bl FUN_ov17_020f8ad4
	ldmfd sp!, {r3, pc}
_020FE4FC: .word FUN_ov17_020fe500
	arm_func_end FUN_ov17_020fe4e0

	arm_func_start FUN_ov17_020fe500
FUN_ov17_020fe500: ; 0x020FE500
	stmfd sp!, {r3, lr}
	bl FUN_ov17_020fe510
	bl FUN_ov17_020fe6a0
	ldmfd sp!, {r3, pc}
	arm_func_end FUN_ov17_020fe500

	arm_func_start FUN_ov17_020fe510
FUN_ov17_020fe510: ; 0x020FE510
	stmfd sp!, {r4, r5, r6, lr}
	ldr r5, _020FE694 ; =0x02116240
	bl FUN_ov17_020f5904
	mov r4, r0
	cmp r4, #0x83
	bgt _020FE62C
	cmp r4, #0x80
	blt _020FE548
	beq _020FE554
	cmp r4, #0x82
	beq _020FE5AC
	cmp r4, #0x83
	beq _020FE5CC
	b _020FE62C
_020FE548:
	cmp r4, #0
	beq _020FE688
	b _020FE62C
_020FE554:
	ldr r0, [r5]
	ldrb r0, [r0, #0x29]
	cmp r0, #0
	beq _020FE688
	mov r0, #3
	bl FUN_ov17_02107c40
	ldr r2, [r5]
	mov r0, #0
	ldrb r1, [r2, #0x29]
	sub r1, r1, #1
	strb r1, [r2, #0x29]
	ldr r2, [r5]
	ldrb r1, [r2, #0x29]
	add r1, r2, r1
	strb r0, [r1, #8]
	ldr r1, [r5]
	ldrb r1, [r1, #0x29]
	cmp r1, #0
	bne _020FE5A4
	bl FUN_ov17_020f5918
_020FE5A4:
	mov r0, #1
	b _020FE684
_020FE5AC:
	mov r0, #7
	bl FUN_ov17_02107c40
	ldr r1, [r5]
	mov r2, #0
	ldr r0, _020FE698 ; =FUN_ov17_020fe6a4
	strb r2, [r1, #0x2a]
	bl FUN_ov17_020f8ad4
	ldmfd sp!, {r4, r5, r6, pc}
_020FE5CC:
	bl FUN_ov17_020feb24
	cmp r0, #0
	beq _020FE5F0
	mov r0, #6
	bl FUN_ov17_02107c40
	ldr r0, [r5]
	mov r1, #1
	strb r1, [r0, #0x2a]
	b _020FE604
_020FE5F0:
	ldr r1, [r5]
	mov r2, #2
	mov r0, #9
	strb r2, [r1, #0x2a]
	bl FUN_ov17_02107c40
_020FE604:
	ldr r0, [r5]
	ldr r1, _020FE69C ; =0xC1FFFCFF
	ldr r3, [r0, #4]
	ldr r0, _020FE698 ; =FUN_ov17_020fe6a4
	ldr r2, [r3]
	and r1, r2, r1
	orr r1, r1, #0x200
	str r1, [r3]
	bl FUN_ov17_020f8ad4
	ldmfd sp!, {r4, r5, r6, pc}
_020FE62C:
	ldr r0, [r5]
	ldrb r0, [r0, #0x29]
	cmp r0, #0x20
	beq _020FE688
	mov r6, #1
	mov r0, r6
	bl FUN_ov17_02107c40
	ldr r2, [r5]
	mov r0, r6
	ldrb r1, [r2, #0x29]
	add r1, r2, r1
	strb r4, [r1, #8]
	ldr r2, [r5]
	ldrb r1, [r2, #0x29]
	add r1, r1, #1
	strb r1, [r2, #0x29]
	bl FUN_ov17_020f5918
	ldr r0, [r5]
	ldrb r0, [r0, #0x29]
	cmp r0, #0x20
	bne _020FE688
	mov r0, #0
_020FE684:
	bl FUN_ov17_020f592c
_020FE688:
	bl FUN_ov17_020fe8c4
	bl FUN_ov17_020fe9b8
	ldmfd sp!, {r4, r5, r6, pc}
_020FE694: .word 0x02116240
_020FE698: .word FUN_ov17_020fe6a4
_020FE69C: .word 0xC1FFFCFF
	arm_func_end FUN_ov17_020fe510

	arm_func_start FUN_ov17_020fe6a0
FUN_ov17_020fe6a0: ; 0x020FE6A0
	bx lr
	arm_func_end FUN_ov17_020fe6a0

	arm_func_start FUN_ov17_020fe6a4
FUN_ov17_020fe6a4: ; 0x020FE6A4
	stmfd sp!, {r3, lr}
	mov r0, #8
	bl FUN_ov17_0210d424
	ldr r0, _020FE6BC ; =FUN_ov17_020fe6c0
	bl FUN_ov17_020f8ad4
	ldmfd sp!, {r3, pc}
_020FE6BC: .word FUN_ov17_020fe6c0
	arm_func_end FUN_ov17_020fe6a4

	arm_func_start FUN_ov17_020fe6c0
FUN_ov17_020fe6c0: ; 0x020FE6C0
	stmfd sp!, {r3, lr}
	mov r0, #1
	bl FUN_ov17_0210d214
	cmp r0, #0
	ldmnefd sp!, {r3, pc}
	bl FUN_ov17_020f58d4
	mov r0, #0x15
	bl FUN_ov17_02107c40
	ldr r0, _020FE6EC ; =FUN_ov17_020fe6f0
	bl FUN_ov17_020f8ad4
	ldmfd sp!, {r3, pc}
_020FE6EC: .word FUN_ov17_020fe6f0
	arm_func_end FUN_ov17_020fe6c0

	arm_func_start FUN_ov17_020fe6f0
FUN_ov17_020fe6f0: ; 0x020FE6F0
	stmfd sp!, {r3, r4, r5, lr}
	sub sp, sp, #0x10
	ldr r0, _020FE7B0 ; =0x02112240
	add r5, sp, #8
	ldr r1, [r0]
	ldr r0, [r0, #4]
	str r1, [sp, #8]
	str r0, [sp, #0xc]
	bl FUN_ov17_020f5940
	cmp r0, #0
	addne sp, sp, #0x10
	ldmnefd sp!, {r3, r4, r5, pc}
	ldr r0, _020FE7B4 ; =0x02116240
	ldr r0, [r0]
	ldrb r0, [r0, #0x2a]
	cmp r0, #0
	bne _020FE744
	ldr r0, _020FE7B8 ; =FUN_ov17_020fe7c4
	bl FUN_ov17_020f8ad4
	add sp, sp, #0x10
	ldmfd sp!, {r3, r4, r5, pc}
_020FE744:
	cmp r0, #2
	mov r4, #0
	bne _020FE778
	mov r2, #1
	sub r3, r2, #2
	mov r0, #6
	mov r1, #3
	str r4, [sp]
	bl FUN_ov17_02108e9c
	ldr r0, _020FE7BC ; =FUN_ov17_020fecac
	bl FUN_ov17_020f8ad4
	add sp, sp, #0x10
	ldmfd sp!, {r3, r4, r5, pc}
_020FE778:
	add r1, sp, #4
	mov r0, r4
	bl FUN_ov17_020f8b34
	str r4, [sp]
	ldr r0, [sp, #4]
	mov r2, #1
	ldr r0, [r5, r0, lsl #2]
	sub r3, r2, #2
	mov r1, #2
	bl FUN_ov17_02108e9c
	ldr r0, _020FE7C0 ; =FUN_ov17_020fea20
	bl FUN_ov17_020f8ad4
	add sp, sp, #0x10
	ldmfd sp!, {r3, r4, r5, pc}
_020FE7B0: .word 0x02112240
_020FE7B4: .word 0x02116240
_020FE7B8: .word FUN_ov17_020fe7c4
_020FE7BC: .word FUN_ov17_020fecac
_020FE7C0: .word FUN_ov17_020fea20
	arm_func_end FUN_ov17_020fe6f0

	arm_func_start FUN_ov17_020fe7c4
FUN_ov17_020fe7c4: ; 0x020FE7C4
	stmfd sp!, {r4, r5, r6, lr}
	sub sp, sp, #8
	bl FUN_ov17_020f4de8
	ldr r4, _020FE8A8 ; =0x02116240
	ldr r0, [r4]
	ldr r0, [r0, #4]
	bl FUN_ov17_0210ebcc
	mov r6, #0
	mov r0, r6
	bl FUN_ov17_0210d93c
	ldr r0, _020FE8AC ; =0x02113120
	ldr r1, _020FE8B0 ; =0x020051BC
	bl FUN_ov17_020f4e84
	mov r5, #1
	mov r0, r5
	mov r1, r5
	bl FUN_ov17_0210dd24
	mov r0, r6
	mov r1, #0x15
	bl FUN_ov17_0210dd24
	add r0, sp, #4
	add r1, sp, #0
	bl FUN_ov17_020f8b34
	ldr r0, [sp]
	cmp r0, #0
	bne _020FE84C
	mov r1, r5
	mov r0, #2
	bl FUN_ov17_020f8ae4
	ldr r1, [sp, #4]
	mov r0, r6
	bl FUN_ov17_020f8b20
	ldr r0, _020FE8B4 ; =FUN_ov17_020fff90
	b _020FE894
_020FE84C:
	ldr r0, [r4]
	ldrb r0, [r0, #0x2a]
	cmp r0, #0
	mov r0, r6
	bne _020FE87C
	mov r1, r5
	bl FUN_ov17_020f8ae4
	mov r0, r5
	mov r1, r6
	bl FUN_ov17_020f8b20
	ldr r0, _020FE8B8 ; =FUN_ov17_020fcd68
	b _020FE894
_020FE87C:
	mov r1, r6
	bl FUN_ov17_020f8ae4
	mov r0, r6
	mov r1, r5
	bl FUN_ov17_020f8b20
	ldr r0, _020FE8BC ; =FUN_ov17_021054a0
_020FE894:
	bl FUN_ov17_020f8ad4
	ldr r0, _020FE8C0 ; =0x02116240
	bl FUN_ov17_0210e0cc
	add sp, sp, #8
	ldmfd sp!, {r4, r5, r6, pc}
_020FE8A8: .word 0x02116240
_020FE8AC: .word 0x02113120
_020FE8B0: .word 0x020051BC
_020FE8B4: .word FUN_ov17_020fff90
_020FE8B8: .word FUN_ov17_020fcd68
_020FE8BC: .word FUN_ov17_021054a0
_020FE8C0: .word 0x02116240
	arm_func_end FUN_ov17_020fe7c4

	arm_func_start FUN_ov17_020fe8c4
FUN_ov17_020fe8c4: ; 0x020FE8C4
	stmfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, lr}
	sub sp, sp, #0x1c
	ldr r0, _020FE9AC ; =0x02116240
	mov r10, #0
	ldr r0, [r0]
	add r5, sp, #0x14
	ldr r0, [r0]
	mov r1, r10
	strh r10, [r5, #2]
	mov r4, #0x20
	strh r10, [r5, #4]
	mov r3, #0xe
	strh r10, [r5, #6]
	mov r2, #0x10
	strh r10, [r5]
	strh r4, [sp, #0x16]
	strh r3, [sp, #0x18]
	strh r2, [sp, #0x1a]
	bl FUN_ov17_0210dba8
	ldr r7, _020FE9B0 ; =0x0000E01D
	ldr r6, _020FE9B4 ; =0x0211222E
	mov r9, r10
	strh r10, [sp, #0x12]
	mov r8, #0x31
	mov r5, #2
	mov r4, #0x480
	add r11, sp, #0x10
_020FE930:
	ldr r0, _020FE9AC ; =0x02116240
	cmp r10, #0x10
	ldr r0, [r0]
	moveq r9, #0
	add r1, r0, r10
	ldrb r1, [r1, #8]
	streqh r8, [sp, #0x16]
	ldrb r3, [r6, r9]
	cmp r1, #0x20
	streqh r7, [sp, #0x10]
	strneh r1, [sp, #0x10]
	ldrh r1, [sp, #0x1a]
	strh r3, [sp, #0x14]
	ldrh r2, [sp, #0x16]
	stmia sp, {r1, r5}
	str r4, [sp, #8]
	str r11, [sp, #0xc]
	ldrh r1, [sp, #0x14]
	ldrh r3, [sp, #0x18]
	ldr r0, [r0]
	bl FUN_ov17_0210daf0
	add r10, r10, #1
	cmp r10, #0x20
	add r9, r9, #1
	blt _020FE930
	ldr r0, _020FE9AC ; =0x02116240
	ldr r0, [r0]
	ldr r0, [r0]
	bl FUN_ov17_0210dc58
	add sp, sp, #0x1c
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
_020FE9AC: .word 0x02116240
_020FE9B0: .word 0x0000E01D
_020FE9B4: .word 0x0211222E
	arm_func_end FUN_ov17_020fe8c4

	arm_func_start FUN_ov17_020fe9b8
FUN_ov17_020fe9b8: ; 0x020FE9B8
	stmfd sp!, {r3, lr}
	ldr r0, _020FEA10 ; =0x02116240
	ldr r1, [r0]
	ldrb r0, [r1, #0x29]
	ldr r12, [r1, #4]
	ldr r1, _020FEA14 ; =0x02112228
	cmp r0, #0x20
	and r2, r0, #0xf
	mov lr, r0, asr #4
	movhs lr, #1
	ldr r0, _020FEA18 ; =0x0211222E
	movhs r2, #0xf
	ldrb r3, [r0, r2]
	ldr r2, [r12]
	ldr r0, _020FEA1C ; =0xFE00FF00
	ldrb r1, [r1, lr]
	and r0, r2, r0
	mov r2, r3, lsl #0x17
	orr r0, r0, r1
	orr r0, r0, r2, lsr #7
	str r0, [r12]
	ldmfd sp!, {r3, pc}
_020FEA10: .word 0x02116240
_020FEA14: .word 0x02112228
_020FEA18: .word 0x0211222E
_020FEA1C: .word 0xFE00FF00
	arm_func_end FUN_ov17_020fe9b8

	arm_func_start FUN_ov17_020fea20
FUN_ov17_020fea20: ; 0x020FEA20
	stmfd sp!, {r3, lr}
	bl FUN_ov17_021091fc
	ldr r1, _020FEA70 ; =0x02116240
	ldr r2, [r1]
	strb r0, [r2, #0x2a]
	ldr r0, [r1]
	ldrb r0, [r0, #0x2a]
	cmp r0, #0
	beq _020FEA50
	cmp r0, #1
	beq _020FEA58
	ldmfd sp!, {r3, pc}
_020FEA50:
	mov r0, #7
	b _020FEA5C
_020FEA58:
	mov r0, #0xe
_020FEA5C:
	bl FUN_ov17_02107c40
	bl FUN_ov17_021091b8
	ldr r0, _020FEA74 ; =FUN_ov17_020fea78
	bl FUN_ov17_020f8ad4
	ldmfd sp!, {r3, pc}
_020FEA70: .word 0x02116240
_020FEA74: .word FUN_ov17_020fea78
	arm_func_end FUN_ov17_020fea20

	arm_func_start FUN_ov17_020fea78
FUN_ov17_020fea78: ; 0x020FEA78
	stmfd sp!, {r4, r5, lr}
	sub sp, sp, #0xc
	ldr r0, _020FEB10 ; =0x021130C0
	add r5, sp, #4
	ldr r1, [r0]
	ldr r0, [r0, #4]
	str r1, [sp, #4]
	str r0, [sp, #8]
	bl FUN_ov17_02109210
	cmp r0, #0
	addne sp, sp, #0xc
	ldmnefd sp!, {r4, r5, pc}
	ldr r4, _020FEB14 ; =0x02116240
	ldr r1, [r4]
	ldrb r0, [r1, #0x2a]
	cmp r0, #0
	bne _020FEAE0
	ldr r3, [r1, #4]
	ldr r1, _020FEB18 ; =0xC1FFFCFF
	ldr r2, [r3]
	ldr r0, _020FEB1C ; =FUN_ov17_020fe460
	and r1, r2, r1
	str r1, [r3]
	bl FUN_ov17_020f8ad4
	add sp, sp, #0xc
	ldmfd sp!, {r4, r5, pc}
_020FEAE0:
	add r0, sp, #0
	mov r1, #0
	bl FUN_ov17_020f8b34
	ldr r0, [sp]
	ldr r2, [r4]
	ldr r1, [r5, r0, lsl #2]
	add r0, r2, #8
	blx r1
	ldr r0, _020FEB20 ; =FUN_ov17_020fe7c4
	bl FUN_ov17_020f8ad4
	add sp, sp, #0xc
	ldmfd sp!, {r4, r5, pc}
_020FEB10: .word 0x021130C0
_020FEB14: .word 0x02116240
_020FEB18: .word 0xC1FFFCFF
_020FEB1C: .word FUN_ov17_020fe460
_020FEB20: .word FUN_ov17_020fe7c4
	arm_func_end FUN_ov17_020fea78

	arm_func_start FUN_ov17_020feb24
FUN_ov17_020feb24: ; 0x020FEB24
	stmfd sp!, {r3, lr}
	sub sp, sp, #8
	add r0, sp, #4
	add r1, sp, #0
	bl FUN_ov17_020f8b34
	ldr r0, [sp]
	cmp r0, #1
	bne _020FEB54
	mov r0, #0x35
	sub r1, r0, #0x36
	mov r2, #0
	bl FUN_ov17_020f4d10
_020FEB54:
	add r0, sp, #4
	add r1, sp, #0
	bl FUN_ov17_020f8b34
	ldr r0, [sp, #4]
	cmp r0, #0
	bne _020FEB8C
	ldr r0, _020FECA8 ; =0x02116240
	add sp, sp, #8
	ldr r0, [r0]
	ldrb r0, [r0, #8]
	cmp r0, #0
	movne r0, #1
	moveq r0, #0
	ldmfd sp!, {r3, pc}
_020FEB8C:
	ldr r0, [sp]
	cmp r0, #1
	ldreq r0, _020FECA8 ; =0x02116240
	ldreq r0, [r0]
	ldreqb r0, [r0, #8]
	cmpeq r0, #0
	addeq sp, sp, #8
	moveq r0, #0
	ldmeqfd sp!, {r3, pc}
	ldr r0, _020FECA8 ; =0x02116240
	mov r1, #0x20
	ldr r0, [r0]
	add r0, r0, #8
	bl FUN_ov17_0210ee94
	cmp r0, #0x10
	bgt _020FEC04
	cmp r0, #0xa
	blt _020FEBE8
	beq _020FEC2C
	cmp r0, #0xd
	cmpne r0, #0x10
	beq _020FEC20
	b _020FEC9C
_020FEBE8:
	cmp r0, #0
	bgt _020FEBF8
	beq _020FEC20
	b _020FEC9C
_020FEBF8:
	cmp r0, #5
	beq _020FEC20
	b _020FEC9C
_020FEC04:
	cmp r0, #0x1a
	bgt _020FEC14
	beq _020FEC2C
	b _020FEC9C
_020FEC14:
	cmp r0, #0x20
	beq _020FEC2C
	b _020FEC9C
_020FEC20:
	add sp, sp, #8
	mov r0, #1
	ldmfd sp!, {r3, pc}
_020FEC2C:
	cmp r0, #0
	mov r2, #0
	ble _020FEC90
	ldr r1, _020FECA8 ; =0x02116240
	ldr r3, [r1]
_020FEC40:
	add r1, r3, r2
	ldrb r1, [r1, #8]
	cmp r1, #0x30
	blo _020FEC58
	cmp r1, #0x39
	bls _020FEC84
_020FEC58:
	cmp r1, #0x41
	blo _020FEC68
	cmp r1, #0x46
	bls _020FEC84
_020FEC68:
	cmp r1, #0x61
	blo _020FEC78
	cmp r1, #0x66
	bls _020FEC84
_020FEC78:
	add sp, sp, #8
	mov r0, #0
	ldmfd sp!, {r3, pc}
_020FEC84:
	add r2, r2, #1
	cmp r2, r0
	blt _020FEC40
_020FEC90:
	add sp, sp, #8
	mov r0, #1
	ldmfd sp!, {r3, pc}
_020FEC9C:
	mov r0, #0
	add sp, sp, #8
	ldmfd sp!, {r3, pc}
_020FECA8: .word 0x02116240
	arm_func_end FUN_ov17_020feb24

	arm_func_start FUN_ov17_020fecac
FUN_ov17_020fecac: ; 0x020FECAC
	stmfd sp!, {r3, lr}
	bl FUN_ov17_021091fc
	cmp r0, #0
	ldmnefd sp!, {r3, pc}
	mov r0, #6
	bl FUN_ov17_02107c40
	bl FUN_ov17_021091b8
	ldr r0, _020FECD4 ; =FUN_ov17_020fecd8
	bl FUN_ov17_020f8ad4
	ldmfd sp!, {r3, pc}
_020FECD4: .word FUN_ov17_020fecd8
	arm_func_end FUN_ov17_020fecac

	arm_func_start FUN_ov17_020fecd8
FUN_ov17_020fecd8: ; 0x020FECD8
	stmfd sp!, {r3, lr}
	bl FUN_ov17_02109210
	cmp r0, #0
	ldmnefd sp!, {r3, pc}
	ldr r0, _020FED10 ; =0x02116240
	ldr r1, _020FED14 ; =0xC1FFFCFF
	ldr r2, [r0]
	ldr r0, _020FED18 ; =FUN_ov17_020fe460
	ldr r3, [r2, #4]
	ldr r2, [r3]
	and r1, r2, r1
	str r1, [r3]
	bl FUN_ov17_020f8ad4
	ldmfd sp!, {r3, pc}
_020FED10: .word 0x02116240
_020FED14: .word 0xC1FFFCFF
_020FED18: .word FUN_ov17_020fe460
	arm_func_end FUN_ov17_020fecd8

	arm_func_start FUN_ov17_020fed1c
FUN_ov17_020fed1c: ; 0x020FED1C
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	sub sp, sp, #0x20
	ldr r5, _020FEE70 ; =0x02113138
	ldr r4, _020FEE74 ; =0x0211225C
	ldmia r5!, {r0, r1, r2, r3}
	add r12, sp, #0xc
	ldr r6, [r5]
	mov r5, r12
	stmia r12!, {r0, r1, r2, r3}
	str r6, [r12]
	ldrb lr, [r4]
	ldrb r12, [r4, #1]
	ldrb r6, [r4, #2]
	ldrb r3, [r4, #3]
	ldrb r2, [r4, #4]
	mov r0, #0x18
	mov r1, #4
	strb lr, [sp, #4]
	strb r12, [sp, #5]
	strb r6, [sp, #6]
	strb r3, [sp, #7]
	strb r2, [sp, #8]
	bl FUN_ov17_0210e0a8
	ldr r6, _020FEE78 ; =0x02116244
	mov r4, #0
	str r0, [r6]
	add r0, sp, #0
	mov r1, r4
	bl FUN_ov17_020f8b34
	ldr r0, [sp]
	ldr r2, [r6]
	ldr r1, [r5, r0, lsl #2]
	add r0, r2, #8
	blx r1
	ldr r7, [r6]
	mov r5, #3
	ldr r1, _020FEE7C ; =0x02113160
	add r0, r7, #8
	mov r2, r5
	bl FUN_020219ac
	cmp r0, #0
	strneb r5, [r7, #0x14]
	bne _020FEDE0
	mov r1, r4
	add r0, r7, #8
	mov r2, #0xc
	bl MI_CpuFill8
	ldr r0, [r6]
	strb r4, [r0, #0x14]
_020FEDE0:
	bl FUN_ov17_020fee84
	ldr r0, [sp]
	add r0, r0, #0xb
	bl FUN_ov17_020f5324
	mov r5, #0
	ldr r1, [sp]
	add r0, sp, #4
	ldrb r0, [r0, r1]
	mov r2, r5
	mvn r1, #0
	bl FUN_ov17_020f4d10
	mov r0, #2
	bl FUN_ov17_020f4ec4
	mov r0, r5
	mov r1, r5
	bl FUN_ov17_0210d6ec
	ldr r4, _020FEE78 ; =0x02116244
	mov r1, #0x3f
	ldr r2, [r4]
	str r0, [r2]
	mov r0, r5
	bl FUN_ov17_0210cffc
	ldr r1, [r4]
	str r0, [r1, #4]
	ldr r0, [r4]
	ldr r1, [r0, #4]
	ldrh r0, [r1, #4]
	bic r0, r0, #0xc00
	orr r0, r0, #0xc00
	strh r0, [r1, #4]
	bl FUN_ov17_020ff5f4
	bl FUN_ov17_020ff534
	ldr r0, _020FEE80 ; =FUN_ov17_020fef40
	bl FUN_ov17_020f8ad4
	add sp, sp, #0x20
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_020FEE70: .word 0x02113138
_020FEE74: .word 0x0211225C
_020FEE78: .word 0x02116244
_020FEE7C: .word 0x02113160
_020FEE80: .word FUN_ov17_020fef40
	arm_func_end FUN_ov17_020fed1c

	arm_func_start FUN_ov17_020fee84
FUN_ov17_020fee84: ; 0x020FEE84
	stmfd sp!, {r3, lr}
	ldr r0, _020FEF18 ; =0x02113164
	ldr r1, _020FEF1C ; =0x020051BC
	bl FUN_ov17_020f4e84
	ldr r0, _020FEF20 ; =0x02113178
	ldr r1, _020FEF24 ; =0x0200593C
	bl FUN_ov17_020f4e84
	ldr r0, _020FEF28 ; =0x02113190
	ldr r1, _020FEF2C ; =FUN_020050fc
	bl FUN_ov17_020f4e84
	ldr r0, _020FEF30 ; =0x021131A8
	ldr r1, _020FEF34 ; =FUN_020055bc
	bl FUN_ov17_020f4e84
	ldr r3, _020FEF38 ; =0x04001008
	ldr r1, _020FEF3C ; =0x0400000A
	ldrh r0, [r3]
	sub r2, r3, #0x1000
	bic r0, r0, #3
	orr r0, r0, #3
	strh r0, [r3]
	ldrh r0, [r3, #2]
	bic r0, r0, #3
	orr r0, r0, #3
	strh r0, [r3, #2]
	ldrh r0, [r2]
	bic r0, r0, #3
	orr r0, r0, #2
	strh r0, [r2]
	ldrh r0, [r1]
	bic r0, r0, #3
	orr r0, r0, #3
	strh r0, [r1]
	ldrh r0, [r1, #2]
	bic r0, r0, #3
	orr r0, r0, #3
	strh r0, [r1, #2]
	ldmfd sp!, {r3, pc}
_020FEF18: .word 0x02113164
_020FEF1C: .word 0x020051BC
_020FEF20: .word 0x02113178
_020FEF24: .word 0x0200593C
_020FEF28: .word 0x02113190
_020FEF2C: .word FUN_020050fc
_020FEF30: .word 0x021131A8
_020FEF34: .word FUN_020055bc
_020FEF38: .word 0x04001008
_020FEF3C: .word 0x0400000A
	arm_func_end FUN_ov17_020fee84

	arm_func_start FUN_ov17_020fef40
FUN_ov17_020fef40: ; 0x020FEF40
	stmfd sp!, {r4, r5, r6, r7, r8, lr}
	mov r7, #1
	mov r8, #2
	mov r6, #8
	mov r0, r8
	mov r1, r7
	mov r2, r7
	mov r3, r6
	bl FUN_ov17_0210d238
	mov r5, #0
	mov r4, #0x15
	mov r0, r8
	mov r1, r5
	mov r2, r4
	mov r3, r6
	bl FUN_ov17_0210d238
	mov r0, r7
	mov r1, r7
	bl FUN_ov17_0210dcd0
	mov r0, r5
	mov r1, r4
	bl FUN_ov17_0210dcd0
	ldr r0, _020FEFA4 ; =FUN_ov17_020fefa8
	bl FUN_ov17_020f8ad4
	ldmfd sp!, {r4, r5, r6, r7, r8, pc}
_020FEFA4: .word FUN_ov17_020fefa8
	arm_func_end FUN_ov17_020fef40

	arm_func_start FUN_ov17_020fefa8
FUN_ov17_020fefa8: ; 0x020FEFA8
	stmfd sp!, {r4, lr}
	mov r0, #1
	bl FUN_ov17_0210d214
	cmp r0, #0
	ldmnefd sp!, {r4, pc}
	mov r4, #0
	mov r0, r4
	bl FUN_ov17_0210d214
	cmp r0, #0
	ldmnefd sp!, {r4, pc}
	bl FUN_ov17_020f7040
	mov r0, #0x14
	bl FUN_ov17_02107c40
	ldr r0, _020FF02C ; =0x02116244
	ldr r0, [r0]
	ldrb r0, [r0, #0x14]
	cmp r0, #0
	bne _020FF000
	mov r0, r4
	bl FUN_ov17_020f73a4
	mov r0, r4
	b _020FF01C
_020FF000:
	mov r0, #0x1a
	bl FUN_ov17_020ff324
	cmp r0, #0
	beq _020FF018
	mov r0, r4
	bl FUN_ov17_020f73b8
_020FF018:
	mov r0, #0
_020FF01C:
	bl FUN_ov17_020f73cc
	ldr r0, _020FF030 ; =FUN_ov17_020ff034
	bl FUN_ov17_020f8ad4
	ldmfd sp!, {r4, pc}
_020FF02C: .word 0x02116244
_020FF030: .word FUN_ov17_020ff034
	arm_func_end FUN_ov17_020fefa8

	arm_func_start FUN_ov17_020ff034
FUN_ov17_020ff034: ; 0x020FF034
	stmfd sp!, {r3, lr}
	bl FUN_ov17_020f7390
	cmp r0, #0x1f
	ldmeqfd sp!, {r3, pc}
	ldr r0, _020FF050 ; =FUN_ov17_020ff054
	bl FUN_ov17_020f8ad4
	ldmfd sp!, {r3, pc}
_020FF050: .word FUN_ov17_020ff054
	arm_func_end FUN_ov17_020ff034

	arm_func_start FUN_ov17_020ff054
FUN_ov17_020ff054: ; 0x020FF054
	stmfd sp!, {r3, lr}
	bl FUN_ov17_020ff064
	bl FUN_ov17_020ff3ac
	ldmfd sp!, {r3, pc}
	arm_func_end FUN_ov17_020ff054

	arm_func_start FUN_ov17_020ff064
FUN_ov17_020ff064: ; 0x020FF064
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	mov r4, #1
	mov r5, #0
	ldr r7, _020FF318 ; =0x02116244
	bl FUN_ov17_020f7390
	mov r6, r0
	cmp r6, #0
	bgt _020FF08C
	ldmeqfd sp!, {r3, r4, r5, r6, r7, pc}
	b _020FF220
_020FF08C:
	sub r0, r6, #0x10
	cmp r0, #3
	addls pc, pc, r0, lsl #2
	b _020FF220
_020FF09C: ; jump table
	b _020FF0B0 ; case 0
	b _020FF14C ; case 1
	b _020FF194 ; case 2
	b _020FF1B0 ; case 3
	ldmfd sp!, {r3, r4, r5, r6, r7, pc} ; case 4
_020FF0B0:
	ldr r1, [r7]
	ldrb r0, [r1, #0x14]
	cmp r0, #0
	bne _020FF0CC
	ldrb r0, [r1, #0xa]
	cmp r0, #0
	beq _020FF30C
_020FF0CC:
	mov r0, #3
	bl FUN_ov17_02107c40
	ldr r2, [r7]
	ldrb r1, [r2, #0x14]
	add r0, r1, r1, lsl #1
	add r0, r0, #2
	add r0, r2, r0
	ldrb r0, [r0, #8]
	cmp r0, #0
	subeq r0, r1, #1
	streqb r0, [r2, #0x14]
	ldr r1, [r7]
	ldrb r0, [r1, #0x14]
	add r2, r1, #8
	mov r1, r5
	add r0, r0, r0, lsl #1
	add r0, r2, r0
	mov r2, #3
	bl MI_CpuFill8
	ldr r1, [r7]
	ldrb r0, [r1, #0x14]
	cmp r0, #0
	ldreqb r0, [r1, #0xa]
	cmpeq r0, #0
	bne _020FF138
	mov r0, r5
	bl FUN_ov17_020f73a4
_020FF138:
	mov r0, #1
	bl FUN_ov17_020f73b8
	mov r0, #0
_020FF144:
	bl FUN_ov17_020f73cc
	b _020FF30C
_020FF14C:
	ldr r1, [r7]
	ldrb r0, [r1, #0x14]
	cmp r0, #3
	bhs _020FF30C
	add r0, r0, r0, lsl #1
	add r0, r0, #2
	add r0, r1, r0
	ldrb r0, [r0, #8]
	cmp r0, #0
	beq _020FF30C
	mov r0, r4
	bl FUN_ov17_02107c40
	ldr r2, [r7]
	mov r0, r5
	ldrb r1, [r2, #0x14]
	add r1, r1, #1
	strb r1, [r2, #0x14]
	b _020FF144
_020FF194:
	ldr r1, [r7]
	mov r0, #7
	strb r5, [r1, #0x15]
	bl FUN_ov17_02107c40
	ldr r0, _020FF31C ; =FUN_ov17_020ff3b0
	bl FUN_ov17_020f8ad4
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_020FF1B0:
	bl FUN_ov17_020ff7c8
	cmp r0, #0
	beq _020FF1D0
	mov r0, #6
	bl FUN_ov17_02107c40
	ldr r0, [r7]
	strb r4, [r0, #0x15]
	b _020FF1E4
_020FF1D0:
	ldr r1, [r7]
	mov r2, #2
	mov r0, #9
	strb r2, [r1, #0x15]
	bl FUN_ov17_02107c40
_020FF1E4:
	ldr r0, [r7]
	mov r1, #3
	strb r1, [r0, #0x14]
	ldr r1, [r7]
	ldr r0, _020FF320 ; =0xC1FFFCFF
	ldr r2, [r1, #4]
	ldr r1, [r2]
	and r0, r1, r0
	orr r0, r0, #0x200
	str r0, [r2]
	bl FUN_ov17_020ff5f4
	bl FUN_ov17_020ff750
	ldr r0, _020FF31C ; =FUN_ov17_020ff3b0
	bl FUN_ov17_020f8ad4
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_020FF220:
	ldr r0, [r7]
	ldrb r0, [r0, #0x14]
	cmp r0, #3
	bne _020FF240
	mov r0, #0x1a
	bl FUN_ov17_020ff324
	cmp r0, #0
	bne _020FF30C
_020FF240:
	mov r0, #1
	bl FUN_ov17_02107c40
	ldr r1, [r7]
	ldrb r0, [r1, #0x14]
	add r12, r1, #8
	add r5, r0, r0, lsl #1
	add r3, r5, #2
	ldrb r2, [r12, r3]
	cmp r2, #0
	streqb r6, [r12, r3]
	beq _020FF2BC
	add r1, r5, #1
	ldrb r0, [r12, r1]
	cmp r0, #0
	bne _020FF298
	strb r2, [r12, r1]
	mov r0, #0x1a
	strb r6, [r12, r3]
	bl FUN_ov17_020ff324
	cmp r0, #0
	beq _020FF2BC
	b _020FF2A8
_020FF298:
	strb r0, [r12, r5]
	ldrb r0, [r12, r3]
	strb r0, [r12, r1]
	strb r6, [r12, r3]
_020FF2A8:
	ldr r1, [r7]
	ldrb r0, [r1, #0x14]
	cmp r0, #3
	addlo r0, r0, #1
	strlob r0, [r1, #0x14]
_020FF2BC:
	mov r0, r4
	bl FUN_ov17_020f73a4
	ldr r0, [r7]
	ldrb r0, [r0, #0x14]
	cmp r0, #3
	bhs _020FF2DC
	mov r0, r4
	b _020FF2E0
_020FF2DC:
	mov r0, #0
_020FF2E0:
	bl FUN_ov17_020f73cc
	ldr r0, [r7]
	ldrb r0, [r0, #0x14]
	cmp r0, #3
	bne _020FF30C
	mov r0, #0x1a
	bl FUN_ov17_020ff324
	cmp r0, #0
	beq _020FF30C
	mov r0, #0
	bl FUN_ov17_020f73b8
_020FF30C:
	bl FUN_ov17_020ff534
	bl FUN_ov17_020ff5f4
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_020FF318: .word 0x02116244
_020FF31C: .word FUN_ov17_020ff3b0
_020FF320: .word 0xC1FFFCFF
	arm_func_end FUN_ov17_020ff064

	arm_func_start FUN_ov17_020ff324
FUN_ov17_020ff324: ; 0x020FF324
	stmfd sp!, {r3, r4, r5, lr}
	ldr r1, _020FF3A8 ; =0x02116244
	mov r4, r0
	ldr r1, [r1]
	ldrb r0, [r1, #0x14]
	add r2, r1, #8
	add r1, r0, r0, lsl #1
	ldrb r0, [r2, r1]
	cmp r0, #0
	cmpne r0, #0x20
	movne r0, #1
	ldmnefd sp!, {r3, r4, r5, pc}
	add r5, sp, #0
	add r0, r2, r1
	mov r1, r5
	mov r2, #3
	bl MI_CpuCopy8
	mov r2, #0
	strb r2, [sp, #3]
	mov r0, #0x20
_020FF374:
	ldrb r1, [r5, r2]
	cmp r1, #0
	bne _020FF390
	strb r0, [r5, r2]
	add r2, r2, #1
	cmp r2, #3
	blt _020FF374
_020FF390:
	add r0, sp, #0
	bl FUN_02024640
	cmp r0, r4
	movge r0, #1
	movlt r0, #0
	ldmfd sp!, {r3, r4, r5, pc}
_020FF3A8: .word 0x02116244
	arm_func_end FUN_ov17_020ff324

	arm_func_start FUN_ov17_020ff3ac
FUN_ov17_020ff3ac: ; 0x020FF3AC
	bx lr
	arm_func_end FUN_ov17_020ff3ac

	arm_func_start FUN_ov17_020ff3b0
FUN_ov17_020ff3b0: ; 0x020FF3B0
	stmfd sp!, {r3, lr}
	mov r0, #8
	bl FUN_ov17_0210d424
	ldr r0, _020FF3C8 ; =FUN_ov17_020ff3cc
	bl FUN_ov17_020f8ad4
	ldmfd sp!, {r3, pc}
_020FF3C8: .word FUN_ov17_020ff3cc
	arm_func_end FUN_ov17_020ff3b0

	arm_func_start FUN_ov17_020ff3cc
FUN_ov17_020ff3cc: ; 0x020FF3CC
	stmfd sp!, {r3, lr}
	mov r0, #1
	bl FUN_ov17_0210d214
	cmp r0, #0
	ldmnefd sp!, {r3, pc}
	bl FUN_ov17_020f7360
	mov r0, #0x15
	bl FUN_ov17_02107c40
	ldr r0, _020FF3F8 ; =FUN_ov17_020ff3fc
	bl FUN_ov17_020f8ad4
	ldmfd sp!, {r3, pc}
_020FF3F8: .word FUN_ov17_020ff3fc
	arm_func_end FUN_ov17_020ff3cc

	arm_func_start FUN_ov17_020ff3fc
FUN_ov17_020ff3fc: ; 0x020FF3FC
	stmfd sp!, {r3, lr}
	bl FUN_ov17_020f73e0
	cmp r0, #0
	ldmnefd sp!, {r3, pc}
	ldr r0, _020FF478 ; =0x02116244
	ldr r0, [r0]
	ldrb r0, [r0, #0x15]
	cmp r0, #0
	bne _020FF42C
	ldr r0, _020FF47C ; =FUN_ov17_020ff488
	bl FUN_ov17_020f8ad4
	ldmfd sp!, {r3, pc}
_020FF42C:
	mov r2, #1
	cmp r0, #2
	mov r12, #0
	sub r3, r2, #2
	bne _020FF45C
	mov r0, #6
	mov r1, #3
	str r12, [sp]
	bl FUN_ov17_02108e9c
	ldr r0, _020FF480 ; =FUN_ov17_020ff908
	bl FUN_ov17_020f8ad4
	ldmfd sp!, {r3, pc}
_020FF45C:
	mov r0, #0x47
	mov r1, #2
	str r12, [sp]
	bl FUN_ov17_02108e9c
	ldr r0, _020FF484 ; =FUN_ov17_020ff648
	bl FUN_ov17_020f8ad4
	ldmfd sp!, {r3, pc}
_020FF478: .word 0x02116244
_020FF47C: .word FUN_ov17_020ff488
_020FF480: .word FUN_ov17_020ff908
_020FF484: .word FUN_ov17_020ff648
	arm_func_end FUN_ov17_020ff3fc

	arm_func_start FUN_ov17_020ff488
FUN_ov17_020ff488: ; 0x020FF488
	stmfd sp!, {r3, r4, lr}
	sub sp, sp, #4
	bl FUN_ov17_020f4de8
	ldr r0, _020FF520 ; =0x02116244
	ldr r0, [r0]
	ldr r0, [r0, #4]
	bl FUN_ov17_0210ebcc
	mov r4, #0
	mov r0, r4
	bl FUN_ov17_0210d93c
	ldr r0, _020FF524 ; =0x021131C0
	ldr r1, _020FF528 ; =0x020051BC
	bl FUN_ov17_020f4e84
	mov r0, #1
	mov r1, r0
	bl FUN_ov17_0210dd24
	mov r0, r4
	mov r1, #0x15
	bl FUN_ov17_0210dd24
	add r0, sp, #0
	mov r1, r4
	bl FUN_ov17_020f8b34
	ldr r4, [sp]
	mov r0, #2
	cmp r4, #3
	addge r4, r4, #1
	mov r1, #1
	strge r4, [sp]
	bl FUN_ov17_020f8ae4
	add r1, r4, #3
	mov r0, #0
	bl FUN_ov17_020f8b20
	ldr r0, _020FF52C ; =FUN_ov17_020fff90
	bl FUN_ov17_020f8ad4
	ldr r0, _020FF530 ; =0x02116244
	bl FUN_ov17_0210e0cc
	add sp, sp, #4
	ldmfd sp!, {r3, r4, pc}
_020FF520: .word 0x02116244
_020FF524: .word 0x021131C0
_020FF528: .word 0x020051BC
_020FF52C: .word FUN_ov17_020fff90
_020FF530: .word 0x02116244
	arm_func_end FUN_ov17_020ff488

	arm_func_start FUN_ov17_020ff534
FUN_ov17_020ff534: ; 0x020FF534
	stmfd sp!, {r4, r5, r6, r7, r8, r9, lr}
	sub sp, sp, #0x1c
	ldr r5, _020FF5E8 ; =0x02116244
	ldr r0, _020FF5EC ; =0x02112264
	ldr r1, [r5]
	ldrh r7, [r0]
	ldrh r6, [r0, #2]
	mov r3, #0xb
	mov r2, #0x10
	mov r4, #0
	ldr r0, [r1]
	mov r1, r4
	strh r7, [sp, #0x14]
	strh r6, [sp, #0x16]
	strh r3, [sp, #0x18]
	strh r2, [sp, #0x1a]
	bl FUN_ov17_0210dba8
	ldr r9, _020FF5F0 ; =0x02112250
	strh r4, [sp, #0x12]
	mov r8, #2
	mov r7, #0x480
	add r6, sp, #0x10
_020FF58C:
	ldr r12, [r5]
	ldrb r1, [r9, r4]
	add r0, r12, r4
	ldrb r3, [r0, #8]
	ldrh r0, [sp, #0x1a]
	ldrh r2, [sp, #0x16]
	strh r3, [sp, #0x10]
	stmia sp, {r0, r8}
	str r7, [sp, #8]
	str r6, [sp, #0xc]
	ldrh r3, [sp, #0x18]
	ldr r0, [r12]
	strh r1, [sp, #0x14]
	bl FUN_ov17_0210daf0
	add r4, r4, #1
	cmp r4, #0xc
	blt _020FF58C
	ldr r0, _020FF5E8 ; =0x02116244
	ldr r0, [r0]
	ldr r0, [r0]
	bl FUN_ov17_0210dc58
	add sp, sp, #0x1c
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, pc}
_020FF5E8: .word 0x02116244
_020FF5EC: .word 0x02112264
_020FF5F0: .word 0x02112250
	arm_func_end FUN_ov17_020ff534

	arm_func_start FUN_ov17_020ff5f4
FUN_ov17_020ff5f4: ; 0x020FF5F4
	ldr r0, _020FF63C ; =0x02116244
	ldr r2, [r0]
	ldrb r0, [r2, #0x14]
	ldr r3, [r2, #4]
	cmp r0, #3
	movgt r0, #3
	add r1, r0, r0, lsl #1
	ldr r0, _020FF640 ; =0x02112250
	add r1, r1, #2
	ldrb r2, [r0, r1]
	ldr r1, [r3]
	ldr r0, _020FF644 ; =0xFE00FF00
	mov r2, r2, lsl #0x17
	and r0, r1, r0
	orr r0, r0, #0x28
	orr r0, r0, r2, lsr #7
	str r0, [r3]
	bx lr
_020FF63C: .word 0x02116244
_020FF640: .word 0x02112250
_020FF644: .word 0xFE00FF00
	arm_func_end FUN_ov17_020ff5f4

	arm_func_start FUN_ov17_020ff648
FUN_ov17_020ff648: ; 0x020FF648
	stmfd sp!, {r3, lr}
	bl FUN_ov17_021091fc
	ldr r1, _020FF698 ; =0x02116244
	ldr r2, [r1]
	strb r0, [r2, #0x15]
	ldr r0, [r1]
	ldrb r0, [r0, #0x15]
	cmp r0, #0
	beq _020FF678
	cmp r0, #1
	beq _020FF680
	ldmfd sp!, {r3, pc}
_020FF678:
	mov r0, #7
	b _020FF684
_020FF680:
	mov r0, #0xe
_020FF684:
	bl FUN_ov17_02107c40
	bl FUN_ov17_021091b8
	ldr r0, _020FF69C ; =FUN_ov17_020ff6a0
	bl FUN_ov17_020f8ad4
	ldmfd sp!, {r3, pc}
_020FF698: .word 0x02116244
_020FF69C: .word FUN_ov17_020ff6a0
	arm_func_end FUN_ov17_020ff648

	arm_func_start FUN_ov17_020ff6a0
FUN_ov17_020ff6a0: ; 0x020FF6A0
	stmfd sp!, {r3, r4, r5, lr}
	sub sp, sp, #0x18
	ldr r12, _020FF73C ; =0x0211314C
	add r4, sp, #4
	ldmia r12!, {r0, r1, r2, r3}
	mov r5, r4
	stmia r4!, {r0, r1, r2, r3}
	ldr r0, [r12]
	str r0, [r4]
	bl FUN_ov17_02109210
	cmp r0, #0
	addne sp, sp, #0x18
	ldmnefd sp!, {r3, r4, r5, pc}
	ldr r4, _020FF740 ; =0x02116244
	ldr r1, [r4]
	ldrb r0, [r1, #0x15]
	cmp r0, #0
	bne _020FF70C
	ldr r3, [r1, #4]
	ldr r1, _020FF744 ; =0xC1FFFCFF
	ldr r2, [r3]
	ldr r0, _020FF748 ; =FUN_ov17_020fefa8
	and r1, r2, r1
	str r1, [r3]
	bl FUN_ov17_020f8ad4
	add sp, sp, #0x18
	ldmfd sp!, {r3, r4, r5, pc}
_020FF70C:
	add r0, sp, #0
	mov r1, #0
	bl FUN_ov17_020f8b34
	ldr r0, [sp]
	ldr r2, [r4]
	ldr r1, [r5, r0, lsl #2]
	add r0, r2, #8
	blx r1
	ldr r0, _020FF74C ; =FUN_ov17_020ff488
	bl FUN_ov17_020f8ad4
	add sp, sp, #0x18
	ldmfd sp!, {r3, r4, r5, pc}
_020FF73C: .word 0x0211314C
_020FF740: .word 0x02116244
_020FF744: .word 0xC1FFFCFF
_020FF748: .word FUN_ov17_020fefa8
_020FF74C: .word FUN_ov17_020ff488
	arm_func_end FUN_ov17_020ff6a0

	arm_func_start FUN_ov17_020ff750
FUN_ov17_020ff750: ; 0x020FF750
	stmfd sp!, {r3, r4, r5, lr}
	mov r4, #0
	ldr r0, _020FF7C4 ; =0x02116244
	mov r1, #0x20
	mov r2, #0x30
	mov r12, r4
_020FF768:
	ldr lr, [r0]
	add r3, r4, r4, lsl #1
	add lr, lr, #8
	mov r5, r12
	add lr, lr, r3
_020FF77C:
	ldrb r3, [lr, r5]
	cmp r3, #0x30
	cmpne r3, #0x20
	beq _020FF794
	cmp r3, #0
	bne _020FF7B0
_020FF794:
	mov r3, r2
	cmp r5, #2
	movne r3, r1
	strb r3, [lr, r5]
	add r5, r5, #1
	cmp r5, #3
	blt _020FF77C
_020FF7B0:
	add r4, r4, #1
	cmp r4, #4
	blt _020FF768
	bl FUN_ov17_020ff534
	ldmfd sp!, {r3, r4, r5, pc}
_020FF7C4: .word 0x02116244
	arm_func_end FUN_ov17_020ff750

	arm_func_start FUN_ov17_020ff7c8
FUN_ov17_020ff7c8: ; 0x020FF7C8
	stmfd sp!, {r3, r4, r5, r6, lr}
	sub sp, sp, #0xc
	ldr r1, _020FF900 ; =0x02112248
	ldr r0, _020FF904 ; =0x02116244
	ldrb r4, [r1]
	ldrb r3, [r1, #1]
	ldrb r2, [r1, #2]
	ldrb r1, [r1, #3]
	mov r5, #0
	ldr r0, [r0]
	strb r3, [sp, #9]
	add r6, sp, #8
	strb r4, [sp, #8]
	strb r2, [sp, #0xa]
	strb r1, [sp, #0xb]
	mov r12, r5
	add r3, r0, #8
_020FF80C:
	add r2, r12, r12, lsl #1
	ldrb r1, [r3, r2]
	add r4, r3, r2
	cmp r1, #0x20
	beq _020FF84C
	mov lr, r5
_020FF824:
	ldrb r2, [r4, lr]
	ldrb r1, [r6, lr]
	cmp r2, r1
	addhi sp, sp, #0xc
	movhi r0, #0
	ldmhifd sp!, {r3, r4, r5, r6, pc}
	blo _020FF84C
	add lr, lr, #1
	cmp lr, #3
	blt _020FF824
_020FF84C:
	add r12, r12, #1
	cmp r12, #4
	blt _020FF80C
	add r4, sp, #0
	add r0, r0, #8
	mov r1, r4
	bl FUN_ov17_02107aac
	mov r6, #0
	add r0, sp, #4
	mov r1, r6
	bl FUN_ov17_020f8b34
	ldr r0, [sp, #4]
	cmp r0, #1
	bne _020FF8E4
	mov r1, #1
	mov r12, r6
	mov r2, r1
_020FF890:
	ldrb r3, [r4, r12]
	mov lr, r5
_020FF898:
	cmp r6, #0
	rsb r0, lr, #7
	beq _020FF8B8
	tst r3, r2, lsl r0
	beq _020FF8C0
	add sp, sp, #0xc
	mov r0, #0
	ldmfd sp!, {r3, r4, r5, r6, pc}
_020FF8B8:
	tst r3, r1, lsl r0
	moveq r6, r1
_020FF8C0:
	add lr, lr, #1
	cmp lr, #8
	blt _020FF898
	add r12, r12, #1
	cmp r12, #4
	blt _020FF890
	add sp, sp, #0xc
	mov r0, #1
	ldmfd sp!, {r3, r4, r5, r6, pc}
_020FF8E4:
	mov r0, r4
	bl  FUN_ov15_020cacf0
	cmp r0, #0
	movne r6, #1
	mov r0, r6
	add sp, sp, #0xc
	ldmfd sp!, {r3, r4, r5, r6, pc}
_020FF900: .word 0x02112248
_020FF904: .word 0x02116244
	arm_func_end FUN_ov17_020ff7c8

	arm_func_start FUN_ov17_020ff908
FUN_ov17_020ff908: ; 0x020FF908
	stmfd sp!, {r3, lr}
	bl FUN_ov17_021091fc
	cmp r0, #0
	ldmnefd sp!, {r3, pc}
	mov r0, #6
	bl FUN_ov17_02107c40
	bl FUN_ov17_021091b8
	ldr r0, _020FF930 ; =FUN_ov17_020ff934
	bl FUN_ov17_020f8ad4
	ldmfd sp!, {r3, pc}
_020FF930: .word FUN_ov17_020ff934
	arm_func_end FUN_ov17_020ff908

	arm_func_start FUN_ov17_020ff934
FUN_ov17_020ff934: ; 0x020FF934
	stmfd sp!, {r3, lr}
	bl FUN_ov17_02109210
	cmp r0, #0
	ldmnefd sp!, {r3, pc}
	ldr r0, _020FF96C ; =0x02116244
	ldr r1, _020FF970 ; =0xC1FFFCFF
	ldr r2, [r0]
	ldr r0, _020FF974 ; =FUN_ov17_020fefa8
	ldr r3, [r2, #4]
	ldr r2, [r3]
	and r1, r2, r1
	str r1, [r3]
	bl FUN_ov17_020f8ad4
	ldmfd sp!, {r3, pc}
_020FF96C: .word 0x02116244
_020FF970: .word 0xC1FFFCFF
_020FF974: .word FUN_ov17_020fefa8
	arm_func_end FUN_ov17_020ff934

	arm_func_start FUN_ov17_020ff978
FUN_ov17_020ff978: ; 0x020FF978
	stmfd sp!, {r3, lr}
	bl FUN_ov17_020ff994
	bl FUN_ov17_020ffa14
	ldr r0, _020FF990 ; =FUN_ov17_020ffd4c
	bl FUN_ov17_020f8ad4
	ldmfd sp!, {r3, pc}
_020FF990: .word FUN_ov17_020ffd4c
	arm_func_end FUN_ov17_020ff978

	arm_func_start FUN_ov17_020ff994
FUN_ov17_020ff994: ; 0x020FF994
	stmfd sp!, {r3, lr}
	ldr r0, _020FFA04 ; =0x021131D8
	ldr r1, _020FFA08 ; =FUN_020055bc
	bl FUN_ov17_020f4e84
	ldr r3, _020FFA0C ; =0x04001008
	ldr r1, _020FFA10 ; =0x0400000A
	ldrh r0, [r3]
	sub r2, r3, #0x1000
	bic r0, r0, #3
	orr r0, r0, #3
	strh r0, [r3]
	ldrh r0, [r3, #2]
	bic r0, r0, #3
	orr r0, r0, #3
	strh r0, [r3, #2]
	ldrh r0, [r2]
	bic r0, r0, #3
	orr r0, r0, #3
	strh r0, [r2]
	ldrh r0, [r1]
	bic r0, r0, #3
	orr r0, r0, #3
	strh r0, [r1]
	ldrh r0, [r1, #2]
	bic r0, r0, #3
	orr r0, r0, #3
	strh r0, [r1, #2]
	ldmfd sp!, {r3, pc}
_020FFA04: .word 0x021131D8
_020FFA08: .word FUN_020055bc
_020FFA0C: .word 0x04001008
_020FFA10: .word 0x0400000A
	arm_func_end FUN_ov17_020ff994

	arm_func_start FUN_ov17_020ffa14
FUN_ov17_020ffa14: ; 0x020FFA14
	stmfd sp!, {r4, r5, r6, r7, r8, r9, lr}
	sub sp, sp, #0x2c
	mov r5, #0
	add r1, sp, #0x18
	mov r0, r5
	mov r4, #2
	bl FUN_ov17_020f8b34
	ldr r0, _020FFD20 ; =0x02116248
	ldr r2, _020FFD24 ; =0xFFFFB17D
	ldr r1, [r0]
	cmp r1, r2
	bge _020FFC48
	sub r0, r2, #1
	cmp r1, r0
	movge r5, r4
	bge _020FFC48
	sub r0, r2, #2
	cmp r1, r0
	movge r5, #0x13
	bge _020FFC48
	sub r0, r2, #8
	cmp r1, r0
	movge r5, r4
	bge _020FFC48
	sub r0, r2, #9
	cmp r1, r0
	movge r5, #0x12
	bge _020FFC48
	sub r0, r2, #0xa
	cmp r1, r0
	movge r5, r4
	bge _020FFC48
	sub r0, r2, #0xb
	cmp r1, r0
	movge r5, #3
	bge _020FFC48
	sub r0, r2, #0x384
	cmp r1, r0
	movge r5, r4
	bge _020FFC48
	ldr r0, _020FFD28 ; =0xFFFFA629
	cmp r1, r0
	bge _020FFC48
	sub r0, r0, #0x3e8
	cmp r1, r0
	movge r5, #0x13
	bge _020FFC48
	ldr r0, _020FFD2C ; =0xFFFF3CB1
	cmp r1, r0
	bge _020FFC48
	sub r2, r0, #3
	cmp r1, r2
	movge r5, #7
	bge _020FFC48
	sub r2, r0, #4
	cmp r1, r2
	movge r5, #5
	bge _020FFC48
	sub r2, r0, #0x63
	cmp r1, r2
	bge _020FFC48
	sub r2, r0, #0x64
	cmp r1, r2
	blt _020FFB28
	ldr r0, [sp, #0x18]
	cmp r0, #2
	moveq r5, #5
	movne r5, #7
	b _020FFC48
_020FFB28:
	ldr r3, _020FFD30 ; =0xFFFF3866
	cmp r1, r3
	bge _020FFC48
	sub r2, r3, #1
	cmp r1, r2
	blt _020FFB54
	ldr r0, [sp, #0x18]
	cmp r0, #2
	moveq r5, #5
	movne r5, #8
	b _020FFC48
_020FFB54:
	sub r2, r3, #4
	cmp r1, r2
	movge r5, #9
	bge _020FFC48
	sub r2, r3, #5
	cmp r1, r2
	movge r5, #5
	bge _020FFC48
	sub r2, r3, #0x65
	cmp r1, r2
	bge _020FFC48
	sub r2, r3, #0xc9
	cmp r1, r2
	movge r5, #0x14
	bge _020FFC48
	sub r2, r3, #0xcc
	cmp r1, r2
	movge r5, #0x15
	bge _020FFC48
	sub r2, r3, #0xcd
	cmp r1, r2
	movge r5, #4
	bge _020FFC48
	sub r0, r0, #0x7d0
	cmp r1, r0
	bge _020FFC48
	sub r0, r3, #0x388
	cmp r1, r0
	movge r5, #0xa
	bge _020FFC48
	ldr r2, _020FFD34 ; =0xFFFF34DD
	cmp r1, r2
	movge r5, #0x16
	bge _020FFC48
	sub r0, r2, #0x60
	cmp r1, r0
	bge _020FFC48
	sub r0, r2, #0x64
	cmp r1, r0
	movge r5, #0xb
	bge _020FFC48
	sub r0, r2, #0xc4
	cmp r1, r0
	bge _020FFC48
	sub r0, r2, #0xc8
	cmp r1, r0
	movge r5, #0xb
	bge _020FFC48
	sub r0, r2, #0x128
	cmp r1, r0
	bge _020FFC48
	sub r0, r2, #0x18c
	cmp r1, r0
	movge r5, r4
	bge _020FFC48
	sub r0, r2, #0x3e4
	cmp r1, r0
	bge _020FFC48
	sub r0, r2, #0x510
	cmp r1, r0
	movge r5, r4
_020FFC48:
	bl FUN_ov17_020f8b5c
	ldr r1, _020FFD38 ; =0x0211226C
	mov r9, #0
	ldrb r1, [r1, r0]
	mov r0, r9
	bl FUN_ov17_0210d6ec
	ldr r1, _020FFD3C ; =0x021161F8
	mov r8, r0
	ldr r0, [r1]
	mov r1, r5
	bl FUN_ov17_020f8cc4
	ldr r3, _020FFD20 ; =0x02116248
	mov r5, #8
	ldr r3, [r3]
	add r6, sp, #0x10
	mov r7, r0
	ldr r2, _020FFD40 ; =0x021131EC
	mov r0, r6
	mov r1, r5
	rsb r3, r3, #0
	bl FUN_02001508
	mov r2, r5
	add r5, sp, #0x1c
	mov r1, r6
	mov r0, r5
	bl FUN_ov17_0210eec0
	bl FUN_ov17_020f8b5c
	mov r1, r0, lsl #2
	ldr r0, _020FFD44 ; =0x0211227E
	ldrh r6, [r0, r1]
	bl FUN_ov17_020f8b5c
	mov r3, r0, lsl #2
	ldr r1, _020FFD48 ; =0x0211227C
	mov r0, #0xa
	ldrh r1, [r1, r3]
	stmia sp, {r0, r5, r9}
	mov r2, r6
	mov r0, r8
	mov r3, r4
	bl FUN_ov17_0210da44
	bl FUN_ov17_020f507c
	mov r1, #0x5e
	stmia sp, {r1, r4}
	str r0, [sp, #8]
	mov r0, r8
	mov r1, #0xd
	mov r2, #0x3c
	mov r3, #0xe6
	str r7, [sp, #0xc]
	bl FUN_ov17_0210daf0
	mov r0, r8
	bl FUN_ov17_0210dc58
	add sp, sp, #0x2c
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, pc}
_020FFD20: .word 0x02116248
_020FFD24: .word 0xFFFFB17D
_020FFD28: .word 0xFFFFA629
_020FFD2C: .word 0xFFFF3CB1
_020FFD30: .word 0xFFFF3866
_020FFD34: .word 0xFFFF34DD
_020FFD38: .word 0x0211226C
_020FFD3C: .word 0x021161F8
_020FFD40: .word 0x021131EC
_020FFD44: .word 0x0211227E
_020FFD48: .word 0x0211227C
	arm_func_end FUN_ov17_020ffa14

	arm_func_start FUN_ov17_020ffd4c
FUN_ov17_020ffd4c: ; 0x020FFD4C
	stmfd sp!, {r3, r4, r5, lr}
	mov r5, #0
	mov r4, #0x15
	mov r1, r5
	mov r2, r4
	mov r0, #2
	mov r3, #8
	bl FUN_ov17_0210d238
	mov r0, r5
	mov r1, r4
	bl FUN_ov17_0210dcd0
	ldr r0, _020FFD84 ; =FUN_ov17_020ffd88
	bl FUN_ov17_020f8ad4
	ldmfd sp!, {r3, r4, r5, pc}
_020FFD84: .word FUN_ov17_020ffd88
	arm_func_end FUN_ov17_020ffd4c

	arm_func_start FUN_ov17_020ffd88
FUN_ov17_020ffd88: ; 0x020FFD88
	stmfd sp!, {r3, lr}
	mov r0, #1
	bl FUN_ov17_0210d214
	cmp r0, #0
	ldmnefd sp!, {r3, pc}
	mov r0, #0
	bl FUN_ov17_0210d214
	cmp r0, #0
	ldmnefd sp!, {r3, pc}
	mov r0, #4
	bl FUN_ov17_020f4f14
	ldr r0, _020FFDC0 ; =FUN_ov17_020ffdc4
	bl FUN_ov17_020f8ad4
	ldmfd sp!, {r3, pc}
_020FFDC0: .word FUN_ov17_020ffdc4
	arm_func_end FUN_ov17_020ffd88

	arm_func_start FUN_ov17_020ffdc4
FUN_ov17_020ffdc4: ; 0x020FFDC4
	stmfd sp!, {r3, lr}
	bl FUN_ov17_020f47c4
	cmn r0, #2
	ldmeqfd sp!, {r3, pc}
	bl FUN_ov17_020f4834
	ldr r0, _020FFDE4 ; =FUN_ov17_020ffde8
	bl FUN_ov17_020f8ad4
	ldmfd sp!, {r3, pc}
_020FFDE4: .word FUN_ov17_020ffde8
	arm_func_end FUN_ov17_020ffdc4

	arm_func_start FUN_ov17_020ffde8
FUN_ov17_020ffde8: ; 0x020FFDE8
	stmfd sp!, {r3, lr}
	bl FUN_ov17_020ffdfc
	bl FUN_ov17_020ffe1c
	bl FUN_ov17_020ffe20
	ldmfd sp!, {r3, pc}
	arm_func_end FUN_ov17_020ffde8

	arm_func_start FUN_ov17_020ffdfc
FUN_ov17_020ffdfc: ; 0x020FFDFC
	stmfd sp!, {r3, lr}
	mov r0, #1
	bl FUN_ov17_0210e4b8
	cmp r0, #0
	ldmeqfd sp!, {r3, pc}
	mov r0, #0
	bl FUN_ov17_020f47d8
	ldmfd sp!, {r3, pc}
	arm_func_end FUN_ov17_020ffdfc

	arm_func_start FUN_ov17_020ffe1c
FUN_ov17_020ffe1c: ; 0x020FFE1C
	bx lr
	arm_func_end FUN_ov17_020ffe1c

	arm_func_start FUN_ov17_020ffe20
FUN_ov17_020ffe20: ; 0x020FFE20
	stmfd sp!, {r3, lr}
	bl FUN_ov17_020f47c4
	cmp r0, #0
	ldmnefd sp!, {r3, pc}
	mov r0, #6
	bl FUN_ov17_02107c40
	ldr r0, _020FFE44 ; =FUN_ov17_020ffe48
	bl FUN_ov17_020f8ad4
	ldmfd sp!, {r3, pc}
_020FFE44: .word FUN_ov17_020ffe48
	arm_func_end FUN_ov17_020ffe20

	arm_func_start FUN_ov17_020ffe48
FUN_ov17_020ffe48: ; 0x020FFE48
	stmfd sp!, {r3, lr}
	bl FUN_ov17_020f484c
	mov r0, #8
	bl FUN_ov17_0210d424
	ldr r0, _020FFE64 ; =FUN_ov17_020ffe68
	bl FUN_ov17_020f8ad4
	ldmfd sp!, {r3, pc}
_020FFE64: .word FUN_ov17_020ffe68
	arm_func_end FUN_ov17_020ffe48

	arm_func_start FUN_ov17_020ffe68
FUN_ov17_020ffe68: ; 0x020FFE68
	stmfd sp!, {r4, r5, r6, lr}
	mov r6, #1
	mov r0, r6
	bl FUN_ov17_0210d214
	cmp r0, #0
	ldmnefd sp!, {r4, r5, r6, pc}
	bl FUN_ov17_020f4794
	mov r5, #3
	mov r4, #8
	mov r0, r5
	mov r1, r6
	mov r2, r6
	mov r3, r4
	bl FUN_ov17_0210d238
	mov r0, r5
	mov r3, r4
	mov r1, #0
	mov r2, #0x15
	bl FUN_ov17_0210d238
	ldr r0, _020FFEC0 ; =FUN_ov17_020ffec4
	bl FUN_ov17_020f8ad4
	ldmfd sp!, {r4, r5, r6, pc}
_020FFEC0: .word FUN_ov17_020ffec4
	arm_func_end FUN_ov17_020ffe68

	arm_func_start FUN_ov17_020ffec4
FUN_ov17_020ffec4: ; 0x020FFEC4
	stmfd sp!, {r3, r4, r5, lr}
	mov r5, #1
	mov r0, r5
	bl FUN_ov17_0210d214
	cmp r0, #0
	ldmnefd sp!, {r3, r4, r5, pc}
	mov r4, #0
	mov r0, r4
	bl FUN_ov17_0210d214
	cmp r0, #0
	ldmnefd sp!, {r3, r4, r5, pc}
	bl FUN_ov17_020f4808
	cmp r0, #0
	ldmeqfd sp!, {r3, r4, r5, pc}
	mov r0, r4
	bl FUN_ov17_0210d93c
	bl FUN_ov17_020f4de8
	mov r0, r5
	mov r1, r5
	bl FUN_ov17_0210dd24
	mov r0, r4
	mov r1, #0x15
	bl FUN_ov17_0210dd24
	add r1, sp, #0
	mov r0, r4
	bl FUN_ov17_020f8b34
	ldr r0, [sp]
	cmp r0, #0
	mov r0, #2
	beq _020FFF50
	mov r1, r5
	bl FUN_ov17_020f8ae4
	ldr r0, _020FFF78 ; =FUN_ov17_02103924
	bl FUN_ov17_020f8ad4
	ldmfd sp!, {r3, r4, r5, pc}
_020FFF50:
	mov r1, r4
	bl FUN_ov17_020f8ae4
	mov r0, r4
	mov r1, r4
	bl FUN_ov17_020f8b20
	mov r0, r4
	bl FUN_ov17_02102254
	ldr r0, _020FFF7C ; =FUN_ov17_020fff90
	bl FUN_ov17_020f8ad4
	ldmfd sp!, {r3, r4, r5, pc}
_020FFF78: .word FUN_ov17_02103924
_020FFF7C: .word FUN_ov17_020fff90
	arm_func_end FUN_ov17_020ffec4

	arm_func_start FUN_ov17_020fff80
FUN_ov17_020fff80: ; 0x020FFF80
	ldr r1, _020FFF8C ; =0x02116248
	str r0, [r1]
	bx lr
_020FFF8C: .word 0x02116248
	arm_func_end FUN_ov17_020fff80

	arm_func_start FUN_ov17_020fff90
FUN_ov17_020fff90: ; 0x020FFF90
	stmfd sp!, {r3, r4, r5, r6, r7, r8, lr}
	sub sp, sp, #4
	bl FUN_ov17_02107098
	mov r6, r0
	mov r0, #0x48
	mov r1, #4
	bl FUN_ov17_0210e0a8
	ldr r4, _02100138 ; =0x0211624C
	mov r1, #0xc
	str r0, [r4, #8]
	ldrb r2, [r6, #0xf6]
	strb r2, [r0, #0x43]
	ldr r0, [r4, #8]
	strb r1, [r0, #0x42]
	bl FUN_ov17_0210034c
	bl FUN_ov17_02100150
	ldrb r0, [r4, #1]
	cmp r0, #0
	bne _020FFFF8
	bl FUN_ov17_020f8b5c
	ldrb r2, [r6, #0xf4]
	ldr r1, _0210013C ; =0x0211229B
	ldrsb r1, [r1, r0]
	mov r0, #0x30
	add r2, r2, #1
	b _02100004
_020FFFF8:
	mov r0, #0x45
	sub r1, r0, #0x46
	mov r2, #0
_02100004:
	bl FUN_ov17_020f4d10
	mov r5, #1
	mov r0, r5
	bl FUN_ov17_020f4ec4
	bl FUN_ov17_020f539c
	ldrh r2, [r4, #4]
	mov r0, #0x37
	ldr r1, _02100140 ; =0xE1FC780F
	mul r3, r2, r0
	smull r0, r2, r1, r3
	add r2, r3, r2
	mov r0, r3, lsr #0x1f
	add r2, r0, r2, asr #7
	str r2, [sp]
	mov r0, #2
	mov r1, #0x55
	mov r2, #0xf1
	mov r3, #0x41
	bl FUN_ov17_02106508
	mov r7, #0
	mov r1, r5
	mov r0, r7
	bl FUN_ov17_0210d6ec
	ldr r1, [r4, #8]
	mov r5, r7
	str r0, [r1, #0x14]
	mov r8, #0x29
_02100070:
	mov r0, r5
	mov r1, r8
	bl FUN_ov17_0210cffc
	ldr r1, [r4, #8]
	add r1, r1, r7, lsl #2
	add r7, r7, #1
	str r0, [r1, #0x18]
	cmp r7, #7
	blt _02100070
	ldrb r0, [r6, #0xe7]
	cmp r0, #1
	beq _021000AC
	cmp r0, #2
	beq _021000B8
	b _021000E4
_021000AC:
	mov r0, r5
	mov r1, #0x50
	b _021000C0
_021000B8:
	mov r0, r5
	mov r1, #0x51
_021000C0:
	bl FUN_ov17_0210cffc
	ldr r1, [r4, #8]
	str r0, [r1, #0x34]
	ldr r0, [r4, #8]
	ldr r1, [r0, #0x34]
	ldrh r0, [r1, #4]
	bic r0, r0, #0xc00
	orr r0, r0, #0xc00
	strh r0, [r1, #4]
_021000E4:
	mov r5, #0
	ldr r1, _02100144 ; =FUN_ov17_02101b6c
	mov r2, r5
	mov r0, #1
	mov r3, #0x6e
	bl FUN_ov17_0210f314
	ldr r2, [r4, #8]
	ldr r1, _02100148 ; =FUN_ov17_02102058
	str r0, [r2, #0x3c]
	mov r0, r5
	mov r2, r5
	mov r3, #0x78
	bl FUN_ov17_0210f314
	ldr r1, [r4, #8]
	str r0, [r1]
	bl FUN_ov17_02100e88
	bl FUN_ov17_02101bec
	ldr r0, _0210014C ; =FUN_ov17_0210038c
	bl FUN_ov17_020f8ad4
	add sp, sp, #4
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, pc}
_02100138: .word 0x0211624C
_0210013C: .word 0x0211229B
_02100140: .word 0xE1FC780F
_02100144: .word FUN_ov17_02101b6c
_02100148: .word FUN_ov17_02102058
_0210014C: .word FUN_ov17_0210038c
	arm_func_end FUN_ov17_020fff90

	arm_func_start FUN_ov17_02100150
FUN_ov17_02100150: ; 0x02100150
	stmfd sp!, {r3, r4, r5, r6, r7, r8, lr}
	sub sp, sp, #0x44
	ldr r3, _02100310 ; =0x02112384
	add r4, sp, #0x2b
	mov r2, #0xb
_02100164:
	ldrb r0, [r3, #1]
	ldrb r1, [r3], #2
	subs r2, r2, #1
	strb r0, [r4, #1]
	strb r1, [r4], #2
	bne _02100164
	ldrb r0, [r3]
	ldr r3, _02100314 ; =0x02112354
	add r5, sp, #0x16
	strb r0, [r4]
	mov r2, #0xa
_02100190:
	ldrb r0, [r3, #1]
	ldrb r1, [r3], #2
	subs r2, r2, #1
	strb r0, [r5, #1]
	strb r1, [r5], #2
	bne _02100190
	ldrb r0, [r3]
	ldr r4, _02100318 ; =0x0211236C
	add r3, sp, #0
	strb r0, [r5]
	mov r2, #0xb
_021001BC:
	ldrb r0, [r4, #1]
	ldrb r1, [r4], #2
	subs r2, r2, #1
	strb r0, [r3, #1]
	strb r1, [r3], #2
	bne _021001BC
	ldr r4, _0210031C ; =0x0400000C
	ldr r0, _02100320 ; =0x021131F0
	ldrh r2, [r4]
	ldr r1, _02100324 ; =0x020051BC
	and r2, r2, #0x43
	orr r2, r2, #0x218
	orr r2, r2, #0xc00
	strh r2, [r4]
	bl FUN_ov17_020f4e84
	ldr r0, _02100328 ; =0x02113204
	ldr r1, _0210032C ; =0x02005A1C
	bl FUN_ov17_020f4e84
	ldr r0, _02100330 ; =0x0211321C
	ldr r1, _02100334 ; =0x0200593C
	bl FUN_ov17_020f4e84
	add r8, sp, #0x16
	ldr r1, _02100338 ; =FUN_020050fc
	mov r0, r8
	bl FUN_ov17_020f4e84
	ldr r0, _0210033C ; =0x02113234
	ldr r1, _02100340 ; =0x0200569C
	bl FUN_ov17_020f4e84
	add r0, sp, #0x2b
	bl FUN_ov17_020f4e20
	mov r7, #0
	mov r6, #4
	mov r1, r7
	mov r2, r6
	bl FUN_ov17_0210c7fc
	ldr r5, _02100344 ; =0x0211624C
	ldr r1, [r5, #8]
	str r0, [r1, #8]
	ldr r0, [r5, #8]
	ldr r0, [r0, #8]
	bl FUN_ov17_021062fc
	bl FUN_ov17_02106384
	mov r0, r8
	bl FUN_ov17_020f4e20
	mov r1, r7
	mov r2, r6
	bl FUN_ov17_0210c7fc
	ldr r1, [r5, #8]
	str r0, [r1, #0xc]
	add r0, sp, #0
	bl FUN_ov17_020f4e20
	mov r1, r7
	mov r2, r6
	bl FUN_ov17_0210c7fc
	ldr r2, [r5, #8]
	ldr r1, _02100348 ; =0x04001008
	str r0, [r2, #0x10]
	ldrh r0, [r1]
	bic r0, r0, #3
	orr r0, r0, #3
	strh r0, [r1]
	ldrh r0, [r1, #2]
	bic r0, r0, #3
	orr r0, r0, #3
	strh r0, [r1, #2]
	sub r2, r1, #0x1000
	ldrh r0, [r2]
	sub r1, r4, #2
	bic r0, r0, #3
	orr r0, r0, #3
	strh r0, [r2]
	ldrh r0, [r1]
	bic r0, r0, #3
	orr r0, r0, #2
	strh r0, [r1]
	ldrh r0, [r4]
	bic r0, r0, #3
	orr r0, r0, #3
	strh r0, [r4]
	ldrh r0, [r4, #2]
	bic r0, r0, #3
	orr r0, r0, #2
	strh r0, [r4, #2]
	add sp, sp, #0x44
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, pc}
_02100310: .word 0x02112384
_02100314: .word 0x02112354
_02100318: .word 0x0211236C
_0210031C: .word 0x0400000C
_02100320: .word 0x021131F0
_02100324: .word 0x020051BC
_02100328: .word 0x02113204
_0210032C: .word 0x02005A1C
_02100330: .word 0x0211321C
_02100334: .word 0x0200593C
_02100338: .word FUN_020050fc
_0210033C: .word 0x02113234
_02100340: .word 0x0200569C
_02100344: .word 0x0211624C
_02100348: .word 0x04001008
	arm_func_end FUN_ov17_02100150

	arm_func_start FUN_ov17_0210034c
FUN_ov17_0210034c: ; 0x0210034C
	stmfd sp!, {r3, r4, lr}
	sub sp, sp, #4
	bl FUN_ov17_02107098
	mov r4, #0
	add r1, sp, #0
	mov r0, r4
	bl FUN_ov17_020f8b34
	ldr r0, [sp]
	cmp r0, #0
	ldreq r0, _02100388 ; =0x0211624C
	streqh r4, [r0, #4]
	streqb r4, [r0]
	streqb r4, [r0, #2]
	add sp, sp, #4
	ldmfd sp!, {r3, r4, pc}
_02100388: .word 0x0211624C
	arm_func_end FUN_ov17_0210034c

	arm_func_start FUN_ov17_0210038c
FUN_ov17_0210038c: ; 0x0210038C
	stmfd sp!, {r4, r5, r6, r7, r8, lr}
	mov r7, #1
	mov r8, #2
	mov r6, #8
	mov r0, r8
	mov r1, r7
	mov r2, r7
	mov r3, r6
	bl FUN_ov17_0210d238
	mov r5, #0
	mov r4, #0x1d
	mov r0, r8
	mov r1, r5
	mov r2, r4
	mov r3, r6
	bl FUN_ov17_0210d238
	mov r0, r7
	mov r1, r7
	bl FUN_ov17_0210dcd0
	mov r0, r5
	mov r1, r4
	bl FUN_ov17_0210dcd0
	ldr r0, _021003F0 ; =FUN_ov17_021003f4
	bl FUN_ov17_020f8ad4
	ldmfd sp!, {r4, r5, r6, r7, r8, pc}
_021003F0: .word FUN_ov17_021003f4
	arm_func_end FUN_ov17_0210038c

	arm_func_start FUN_ov17_021003f4
FUN_ov17_021003f4: ; 0x021003F4
	stmfd sp!, {r3, lr}
	mov r0, #1
	bl FUN_ov17_0210d214
	cmp r0, #0
	ldmnefd sp!, {r3, pc}
	mov r0, #0
	bl FUN_ov17_0210d214
	cmp r0, #0
	ldmnefd sp!, {r3, pc}
	ldr r0, _02100424 ; =FUN_ov17_02100428
	bl FUN_ov17_020f8ad4
	ldmfd sp!, {r3, pc}
_02100424: .word FUN_ov17_02100428
	arm_func_end FUN_ov17_021003f4

	arm_func_start FUN_ov17_02100428
FUN_ov17_02100428: ; 0x02100428
	stmfd sp!, {r3, lr}
	bl FUN_ov17_02100438
	bl FUN_ov17_0210091c
	ldmfd sp!, {r3, pc}
	arm_func_end FUN_ov17_02100428

	arm_func_start FUN_ov17_02100438
FUN_ov17_02100438: ; 0x02100438
	stmfd sp!, {r4, r5, r6, r7, r8, lr}
	ldr r7, _0210066C ; =0x0211624C
	mov r4, #0
	ldr r1, [r7, #8]
	ldr r0, [r1, #0x38]
	cmp r0, #0
	ldreqb r0, [r1, #0x45]
	cmpeq r0, #0
	ldmnefd sp!, {r4, r5, r6, r7, r8, pc}
	bl FUN_ov17_0210067c
	cmp r0, #0
	ldmnefd sp!, {r4, r5, r6, r7, r8, pc}
	mov r6, #1
	mov r0, r6
	bl FUN_ov17_0210e4b8
	cmp r0, #0
	beq _02100488
	ldrb r0, [r7]
	bl FUN_ov17_02100700
	ldmfd sp!, {r4, r5, r6, r7, r8, pc}
_02100488:
	mov r5, #2
	mov r0, r5
	bl FUN_ov17_0210e4b8
	cmp r0, #0
	beq _021004BC
	mov r0, #7
	bl FUN_ov17_02107c40
	ldr r1, [r7, #8]
	mov r2, #0xd
	ldr r0, _02100670 ; =FUN_ov17_02100b3c
	strb r2, [r1, #0x40]
	bl FUN_ov17_020f8ad4
	ldmfd sp!, {r4, r5, r6, r7, r8, pc}
_021004BC:
	mov r8, #0x200
	mov r0, r8
	bl FUN_ov17_0210e4f8
	cmp r0, #0
	beq _02100528
	ldrh r0, [r7, #4]
	cmp r0, #0x91
	bne _02100500
	ldr r0, [r7, #8]
	ldrb r0, [r0, #0x47]
	cmp r0, #0
	ldmnefd sp!, {r4, r5, r6, r7, r8, pc}
	mov r0, #9
	bl FUN_ov17_02107c40
	ldr r0, [r7, #8]
	strb r6, [r0, #0x47]
	ldmfd sp!, {r4, r5, r6, r7, r8, pc}
_02100500:
	mov r0, #0x13
	bl FUN_ov17_02107c40
	mov r0, r4
	ldr r1, _02100674 ; =FUN_ov17_02101ad0
	mov r2, r0
	mov r3, #0x78
	bl FUN_ov17_0210f314
	ldr r1, [r7, #8]
	str r0, [r1, #0x38]
	ldmfd sp!, {r4, r5, r6, r7, r8, pc}
_02100528:
	mov r0, r8
	bl FUN_ov17_0210e538
	cmp r0, #0
	ldrne r0, [r7, #8]
	strneb r4, [r0, #0x47]
	ldmnefd sp!, {r4, r5, r6, r7, r8, pc}
	mov r8, #0x100
	mov r0, r8
	bl FUN_ov17_0210e4f8
	cmp r0, #0
	beq _021005AC
	ldrh r0, [r7, #4]
	cmp r0, #0
	bne _02100584
	ldr r0, [r7, #8]
	ldrb r0, [r0, #0x47]
	cmp r0, #0
	ldmnefd sp!, {r4, r5, r6, r7, r8, pc}
	mov r0, #9
	bl FUN_ov17_02107c40
	ldr r0, [r7, #8]
	strb r6, [r0, #0x47]
	ldmfd sp!, {r4, r5, r6, r7, r8, pc}
_02100584:
	mov r0, #0x13
	bl FUN_ov17_02107c40
	mov r0, r4
	ldr r1, _02100678 ; =FUN_ov17_02101a0c
	mov r2, r0
	mov r3, #0x78
	bl FUN_ov17_0210f314
	ldr r1, [r7, #8]
	str r0, [r1, #0x38]
	ldmfd sp!, {r4, r5, r6, r7, r8, pc}
_021005AC:
	mov r0, r8
	bl FUN_ov17_0210e538
	cmp r0, #0
	ldrne r0, [r7, #8]
	strneb r4, [r0, #0x47]
	ldmnefd sp!, {r4, r5, r6, r7, r8, pc}
	mov r8, #0x40
	mov r0, r8
	bl FUN_ov17_0210e4f8
	cmp r0, #0
	beq _021005E4
	mov r0, r6
	bl FUN_ov17_02101d94
	ldmfd sp!, {r4, r5, r6, r7, r8, pc}
_021005E4:
	mov r0, r8
	bl FUN_ov17_0210e538
	cmp r0, #0
	ldrne r0, [r7, #8]
	strneb r4, [r0, #0x47]
	ldmnefd sp!, {r4, r5, r6, r7, r8, pc}
	mov r6, #0x80
	mov r0, r6
	bl FUN_ov17_0210e4f8
	cmp r0, #0
	beq _0210061C
	mov r0, #3
	bl FUN_ov17_02101d94
	ldmfd sp!, {r4, r5, r6, r7, r8, pc}
_0210061C:
	mov r0, r6
	bl FUN_ov17_0210e538
	cmp r0, #0
	ldrne r0, [r7, #8]
	strneb r4, [r0, #0x47]
	ldmnefd sp!, {r4, r5, r6, r7, r8, pc}
	mov r0, #0x20
	bl FUN_ov17_0210e4f8
	cmp r0, #0
	beq _02100650
	mov r0, r4
	bl FUN_ov17_02101d94
	ldmfd sp!, {r4, r5, r6, r7, r8, pc}
_02100650:
	mov r0, #0x10
	bl FUN_ov17_0210e4f8
	cmp r0, #0
	ldmeqfd sp!, {r4, r5, r6, r7, r8, pc}
	mov r0, r5
	bl FUN_ov17_02101d94
	ldmfd sp!, {r4, r5, r6, r7, r8, pc}
_0210066C: .word 0x0211624C
_02100670: .word FUN_ov17_02100b3c
_02100674: .word FUN_ov17_02101ad0
_02100678: .word FUN_ov17_02101a0c
	arm_func_end FUN_ov17_02100438

	arm_func_start FUN_ov17_0210067c
FUN_ov17_0210067c: ; 0x0210067C
	stmfd sp!, {r4, lr}
	bl FUN_ov17_02107098
	bl FUN_ov17_02101728
	mov r4, r0
	cmp r4, #0xe
	moveq r0, #0
	ldmeqfd sp!, {r4, pc}
	bl FUN_ov17_02101218
	cmp r0, #0
	bne _021006B4
	mov r0, #9
	bl FUN_ov17_02107c40
	mov r0, #1
	ldmfd sp!, {r4, pc}
_021006B4:
	mov r0, r4
	bl FUN_ov17_02101d68
	cmp r4, #8
	addls pc, pc, r4, lsl #2
	b _021006F0
_021006C8: ; jump table
	b _021006F0 ; case 0
	b _021006F0 ; case 1
	b _021006EC ; case 2
	b _021006EC ; case 3
	b _021006F0 ; case 4
	b _021006F0 ; case 5
	b _021006F0 ; case 6
	b _021006EC ; case 7
	b _021006EC ; case 8
_021006EC:
	bl FUN_ov17_021020ac
_021006F0:
	mov r0, r4
	bl FUN_ov17_02100700
	mov r0, #1
	ldmfd sp!, {r4, pc}
	arm_func_end FUN_ov17_0210067c

	arm_func_start FUN_ov17_02100700
FUN_ov17_02100700: ; 0x02100700
	stmfd sp!, {r3, r4, lr}
	sub sp, sp, #4
	mov r4, r0
	bl FUN_ov17_02101218
	cmp r0, #0
	bne _02100728
	mov r0, #9
	bl FUN_ov17_02107c40
	add sp, sp, #4
	ldmfd sp!, {r3, r4, pc}
_02100728:
	cmp r4, #8
	addls pc, pc, r4, lsl #2
	b _021007A0
_02100734: ; jump table
	b _021007A0 ; case 0
	b _021007A0 ; case 1
	b _02100758 ; case 2
	b _02100758 ; case 3
	b _021007A0 ; case 4
	b _021007A0 ; case 5
	b _021007A0 ; case 6
	b _0210077C ; case 7
	b _0210077C ; case 8
_02100758:
	mov r0, #6
	bl FUN_ov17_02107c40
	sub r0, r4, #2
	teq r0, #1
	movne r0, #1
	moveq r0, #0
	bl FUN_ov17_02100878
	add sp, sp, #4
	ldmfd sp!, {r3, r4, pc}
_0210077C:
	mov r0, #6
	bl FUN_ov17_02107c40
	sub r0, r4, #7
	teq r0, #1
	movne r0, #1
	moveq r0, #0
	bl FUN_ov17_021008e4
	add sp, sp, #4
	ldmfd sp!, {r3, r4, pc}
_021007A0:
	ldr r0, _02100868 ; =0x0211624C
	sub r1, r4, #0xb
	ldr r0, [r0, #8]
	cmp r1, #1
	strb r4, [r0, #0x40]
	bhi _02100818
	bl FUN_ov17_02102024
	bl FUN_ov17_02102154
	cmp r0, #0
	bne _021007FC
	mov r0, #9
	bl FUN_ov17_02107c40
	mov r1, #1
	mov r12, #0
	mov r2, r1
	sub r3, r1, #2
	mov r0, #6
	str r12, [sp]
	bl FUN_ov17_02108e9c
	ldr r0, _0210086C ; =FUN_ov17_021021f4
	bl FUN_ov17_020f8ad4
	add sp, sp, #4
	ldmfd sp!, {r3, r4, pc}
_021007FC:
	cmp r4, #0xb
	bne _02100810
	mov r0, #6
_02100808:
	bl FUN_ov17_02107c40
	b _02100854
_02100810:
	mov r0, #0xe
	b _02100808
_02100818:
	cmp r4, #0xd
	bne _0210082C
	bl FUN_ov17_02102024
	mov r0, #7
	b _02100808
_0210082C:
	mov r0, #6
	bl FUN_ov17_02107c40
	ldr r0, _02100870 ; =0x021122CC
	ldrb r0, [r0, r4]
	bl FUN_ov17_021019a4
	mov r2, r0
	mov r0, #0
	mov r1, #1
	bl FUN_ov17_021012a4
	bl FUN_ov17_02101578
_02100854:
	bl FUN_ov17_02106664
	ldr r0, _02100874 ; =FUN_ov17_02100b3c
	bl FUN_ov17_020f8ad4
	add sp, sp, #4
	ldmfd sp!, {r3, r4, pc}
_02100868: .word 0x0211624C
_0210086C: .word FUN_ov17_021021f4
_02100870: .word 0x021122CC
_02100874: .word FUN_ov17_02100b3c
	arm_func_end FUN_ov17_02100700

	arm_func_start FUN_ov17_02100878
FUN_ov17_02100878: ; 0x02100878
	stmfd sp!, {r3, r4, r5, lr}
	mov r4, r0
	bl FUN_ov17_02107098
	ldrb r1, [r0, #0xf5]
	cmp r1, r4
	ldmeqfd sp!, {r3, r4, r5, pc}
	cmp r4, #0
	beq _021008B4
	ldr r0, _021008E0 ; =0x0211624C
	mov r5, #1
	ldr r0, [r0, #8]
	ldrb r0, [r0, #0x43]
	cmp r0, #0
	moveq r5, #0
	b _021008C8
_021008B4:
	ldr r1, _021008E0 ; =0x0211624C
	ldrb r2, [r0, #0xf6]
	ldr r0, [r1, #8]
	mov r5, #0
	strb r2, [r0, #0x43]
_021008C8:
	mov r0, r4
	bl FUN_ov17_021070ac
	mov r0, r5
	bl FUN_ov17_021070c0
	bl FUN_ov17_02100e88
	ldmfd sp!, {r3, r4, r5, pc}
_021008E0: .word 0x0211624C
	arm_func_end FUN_ov17_02100878

	arm_func_start FUN_ov17_021008e4
FUN_ov17_021008e4: ; 0x021008E4
	stmfd sp!, {r4, lr}
	mov r4, r0
	bl FUN_ov17_02107098
	ldrb r0, [r0, #0xf6]
	cmp r0, r4
	ldmeqfd sp!, {r4, pc}
	ldr r1, _02100918 ; =0x0211624C
	mov r0, r4
	ldr r1, [r1, #8]
	strb r4, [r1, #0x43]
	bl FUN_ov17_021070c0
	bl FUN_ov17_02100e88
	ldmfd sp!, {r4, pc}
_02100918: .word 0x0211624C
	arm_func_end FUN_ov17_021008e4

	arm_func_start FUN_ov17_0210091c
FUN_ov17_0210091c: ; 0x0210091C
	stmfd sp!, {r3, r4, r5, lr}
	ldr r4, _02100B2C ; =0x0211624C
	ldr r1, [r4, #8]
	ldr r0, [r1, #0x38]
	cmp r0, #0
	ldmnefd sp!, {r3, r4, r5, pc}
	ldrb r0, [r1, #0x41]
	cmp r0, #0
	subne r0, r0, #1
	strneb r0, [r1, #0x41]
	bl FUN_ov17_0210662c
	cmp r0, #7
	addls pc, pc, r0, lsl #2
	ldmfd sp!, {r3, r4, r5, pc}
_02100954: ; jump table
	ldmfd sp!, {r3, r4, r5, pc} ; case 0
	b _02100974 ; case 1
	b _02100984 ; case 2
	b _021009CC ; case 3
	b _02100A64 ; case 4
	b _02100B1C ; case 5
	b _02100AC0 ; case 6
	b _02100B1C ; case 7
_02100974:
	ldr r0, [r4, #8]
	mov r1, #1
	strb r1, [r0, #0x45]
	ldmfd sp!, {r3, r4, r5, pc}
_02100984:
	ldr r0, [r4, #8]
	ldrb r0, [r0, #0x41]
	cmp r0, #0
	ldmnefd sp!, {r3, r4, r5, pc}
	bl FUN_ov17_020f5258
	bl FUN_ov17_02106618
	mov r1, #0x91
	mul r1, r0, r1
	ldr r2, _02100B30 ; =0x094F2095
	mov r0, r1, lsr #0x1f
	smull r1, r3, r2, r1
	add r3, r0, r3, asr #1
	strh r3, [r4, #4]
	bl FUN_ov17_02100e88
	ldr r0, [r4, #8]
	mov r1, #4
	strb r1, [r0, #0x41]
	ldmfd sp!, {r3, r4, r5, pc}
_021009CC:
	ldr r0, [r4, #8]
	mov r5, #0
	strb r5, [r0, #0x45]
	bl FUN_ov17_02106618
	mov r1, #0x91
	mul r1, r0, r1
	ldr r2, _02100B30 ; =0x094F2095
	mov r0, r1, lsr #0x1f
	smull r1, r3, r2, r1
	add r3, r0, r3, asr #1
	strh r3, [r4, #4]
	mov r0, #0x13
	bl FUN_ov17_02107c40
	bl FUN_ov17_02100e88
	ldrh r0, [r4, #4]
	mov r1, #0x1d
	bl FUN_020096f8
	cmp r0, #0
	bne _02100A20
	bl FUN_ov17_02101cc4
	ldmfd sp!, {r3, r4, r5, pc}
_02100A20:
	cmp r0, #0x10
	mov r3, #0x78
	bge _02100A48
	ldr r1, _02100B34 ; =FUN_ov17_02101a0c
	mov r0, r5
	mov r2, r5
	bl FUN_ov17_0210f314
	ldr r1, [r4, #8]
	str r0, [r1, #0x38]
	ldmfd sp!, {r3, r4, r5, pc}
_02100A48:
	ldr r1, _02100B38 ; =FUN_ov17_02101ad0
	mov r0, r5
	mov r2, r5
	bl FUN_ov17_0210f314
	ldr r1, [r4, #8]
	str r0, [r1, #0x38]
	ldmfd sp!, {r3, r4, r5, pc}
_02100A64:
	ldrh r0, [r4, #4]
	cmp r0, #0
	bne _02100A98
	ldr r0, [r4, #8]
	ldrb r0, [r0, #0x46]
	cmp r0, #0
	ldmnefd sp!, {r3, r4, r5, pc}
	mov r0, #9
	bl FUN_ov17_02107c40
	ldr r0, [r4, #8]
	mov r1, #1
	strb r1, [r0, #0x46]
	ldmfd sp!, {r3, r4, r5, pc}
_02100A98:
	mov r0, #0x13
	bl FUN_ov17_02107c40
	mov r0, #0
	ldr r1, _02100B34 ; =FUN_ov17_02101a0c
	mov r2, r0
	mov r3, #0x78
	bl FUN_ov17_0210f314
	ldr r1, [r4, #8]
	str r0, [r1, #0x38]
	ldmfd sp!, {r3, r4, r5, pc}
_02100AC0:
	ldrh r0, [r4, #4]
	cmp r0, #0x91
	bne _02100AF4
	ldr r0, [r4, #8]
	ldrb r0, [r0, #0x46]
	cmp r0, #0
	ldmnefd sp!, {r3, r4, r5, pc}
	mov r0, #9
	bl FUN_ov17_02107c40
	ldr r0, [r4, #8]
	mov r1, #1
	strb r1, [r0, #0x46]
	ldmfd sp!, {r3, r4, r5, pc}
_02100AF4:
	mov r0, #0x13
	bl FUN_ov17_02107c40
	mov r0, #0
	ldr r1, _02100B38 ; =FUN_ov17_02101ad0
	mov r2, r0
	mov r3, #0x78
	bl FUN_ov17_0210f314
	ldr r1, [r4, #8]
	str r0, [r1, #0x38]
	ldmfd sp!, {r3, r4, r5, pc}
_02100B1C:
	ldr r0, [r4, #8]
	mov r1, #0
	strb r1, [r0, #0x46]
	ldmfd sp!, {r3, r4, r5, pc}
_02100B2C: .word 0x0211624C
_02100B30: .word 0x094F2095
_02100B34: .word FUN_ov17_02101a0c
_02100B38: .word FUN_ov17_02101ad0
	arm_func_end FUN_ov17_0210091c

	arm_func_start FUN_ov17_02100b3c
FUN_ov17_02100b3c: ; 0x02100B3C
	stmfd sp!, {r3, lr}
	bl FUN_ov17_02106664
	mov r0, #8
	bl FUN_ov17_0210d424
	ldr r0, _02100B58 ; =FUN_ov17_02100b5c
	bl FUN_ov17_020f8ad4
	ldmfd sp!, {r3, pc}
_02100B58: .word FUN_ov17_02100b5c
	arm_func_end FUN_ov17_02100b3c

	arm_func_start FUN_ov17_02100b5c
FUN_ov17_02100b5c: ; 0x02100B5C
	stmfd sp!, {r4, r5, r6, lr}
	mov r6, #1
	mov r0, r6
	bl FUN_ov17_0210d214
	cmp r0, #0
	ldmnefd sp!, {r4, r5, r6, pc}
	mov r5, #3
	mov r4, #8
	mov r0, r5
	mov r1, r6
	mov r2, r6
	mov r3, r4
	bl FUN_ov17_0210d238
	mov r0, r5
	mov r3, r4
	mov r1, #0
	mov r2, #0x1d
	bl FUN_ov17_0210d238
	ldr r0, _02100BB0 ; =FUN_ov17_02100bb4
	bl FUN_ov17_020f8ad4
	ldmfd sp!, {r4, r5, r6, pc}
_02100BB0: .word FUN_ov17_02100bb4
	arm_func_end FUN_ov17_02100b5c

	arm_func_start FUN_ov17_02100bb4
FUN_ov17_02100bb4: ; 0x02100BB4
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	mov r7, #1
	ldr r6, _02100E5C ; =0x0211624C
	mov r0, r7
	mov r4, #0
	bl FUN_ov17_0210d214
	cmp r0, #0
	ldmnefd sp!, {r3, r4, r5, r6, r7, pc}
	mov r5, r4
	mov r0, r5
	bl FUN_ov17_0210d214
	cmp r0, #0
	ldmnefd sp!, {r3, r4, r5, r6, r7, pc}
	ldr r1, [r6, #8]
	mov r0, r5
	ldr r1, [r1]
	bl FUN_ov17_0210f3d8
	ldr r1, [r6, #8]
	mov r0, r7
	ldr r1, [r1, #0x3c]
	bl FUN_ov17_0210f3d8
_02100C08:
	ldr r0, [r6, #8]
	add r0, r0, r5, lsl #2
	ldr r0, [r0, #0x18]
	bl FUN_ov17_0210ebcc
	add r5, r5, #1
	cmp r5, #7
	blt _02100C08
	ldr r0, [r6, #8]
	ldr r0, [r0, #0x34]
	cmp r0, #0
	beq _02100C38
	bl FUN_ov17_0210ebcc
_02100C38:
	bl FUN_ov17_021065e0
	mov r0, #0
	bl FUN_ov17_0210d93c
	bl FUN_ov17_020f5258
	ldr r0, [r6, #8]
	ldrb r0, [r0, #0x40]
	cmp r0, #0xc
	beq _02100C5C
	bl FUN_ov17_020f4de8
_02100C5C:
	bl FUN_ov17_02106358
	ldr r0, [r6, #8]
	ldr r0, [r0, #8]
	bl FUN_ov17_0210c8fc
	mov r5, #0
_02100C70:
	ldr r0, [r6, #8]
	add r0, r0, r5, lsl #2
	ldr r0, [r0, #0xc]
	bl FUN_ov17_0210c8fc
	add r5, r5, #1
	cmp r5, #2
	blt _02100C70
	ldr r0, _02100E60 ; =0x02113248
	ldr r1, _02100E64 ; =0x020051BC
	bl FUN_ov17_020f4e84
	mov r5, #1
	mov r0, r5
	mov r1, r5
	bl FUN_ov17_0210dd24
	mov r0, r4
	mov r1, #0x1d
	bl FUN_ov17_0210dd24
	ldr r0, _02100E68 ; =0x04000010
	str r4, [r0]
	sub r1, r0, #4
	str r4, [r0, #8]
	ldrh r0, [r1]
	and r0, r0, #0x43
	orr r0, r0, #0xe10
	strh r0, [r1]
	ldr r0, [r6, #8]
	ldrb r0, [r0, #0x40]
	cmp r0, #0xd
	addls pc, pc, r0, lsl #2
	b _02100E50
_02100CE8: ; jump table
	b _02100D20 ; case 0
	b _02100D20 ; case 1
	b _02100E50 ; case 2
	b _02100E50 ; case 3
	b _02100D3C ; case 4
	b _02100D3C ; case 5
	b _02100D3C ; case 6
	b _02100E50 ; case 7
	b _02100E50 ; case 8
	b _02100D3C ; case 9
	b _02100D3C ; case 10
	b _02100D68 ; case 11
	b _02100DFC ; case 12
	b _02100E10 ; case 13
_02100D20:
	mov r1, r4
	bl FUN_ov17_020f8b20
	mov r1, r4
	mov r0, #2
	bl FUN_ov17_020f8ae4
	ldr r0, _02100E6C ; =FUN_ov17_020fe21c
	b _02100E4C
_02100D3C:
	sub r5, r0, #4
	cmp r0, #9
	subhs r5, r5, #2
	mov r1, r4
	mov r0, #2
	bl FUN_ov17_020f8ae4
	mov r0, r5
	mov r1, r4
	bl FUN_ov17_020f8b20
	ldr r0, _02100E70 ; =FUN_ov17_020fed1c
	b _02100E4C
_02100D68:
	bl FUN_ov17_02107098
	mov r6, r0
	add r0, r6, #0xf0
	bl  FUN_ov1_020cabf0 ; may be ov15
	strb r0, [r6, #0xd0]
	ldrb r0, [r6, #0xf5]
	cmp r0, #0
	beq _02100DC0
	mov r5, #4
	mov r1, r4
	mov r2, r5
	add r0, r6, #0xc0
	bl MI_CpuFill8
	mov r1, r4
	mov r2, r5
	add r0, r6, #0xc4
	bl MI_CpuFill8
	mov r1, r4
	mov r2, r5
	add r0, r6, #0xf0
	bl MI_CpuFill8
	strb r4, [r6, #0xd0]
_02100DC0:
	ldrb r0, [r6, #0xf6]
	cmp r0, #0
	beq _02100DDC
	add r0, r6, #0xc8
	mov r1, #0
	mov r2, #8
	bl MI_CpuFill8
_02100DDC:
	mov r1, r4
	mov r0, #2
	bl FUN_ov17_020f8ae4
	mov r0, r4
	mov r1, r4
	bl FUN_ov17_020f8b20
	ldr r0, _02100E74 ; =FUN_ov17_02104df4
	b _02100E4C
_02100DFC:
	mov r0, r4
	mov r1, r4
	bl FUN_ov17_020f8ae4
	ldr r0, _02100E78 ; =FUN_ov17_02102264
	b _02100E4C
_02100E10:
	ldrb r0, [r6, #1]
	cmp r0, #0
	bne _02100E30
	mov r1, r5
	mov r0, #2
	bl FUN_ov17_020f8ae4
	ldr r0, _02100E7C ; =FUN_ov17_02103924
	b _02100E4C
_02100E30:
	bl FUN_ov17_02107098
	ldrb r0, [r0, #0xf4]
	bl FUN_ov17_021074a0
	mov r0, r4
	mov r1, r5
	bl FUN_ov17_020f8ae4
	ldr r0, _02100E80 ; =FUN_ov17_0210462c
_02100E4C:
	bl FUN_ov17_020f8ad4
_02100E50:
	ldr r0, _02100E84 ; =0x02116254
	bl FUN_ov17_0210e0cc
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_02100E5C: .word 0x0211624C
_02100E60: .word 0x02113248
_02100E64: .word 0x020051BC
_02100E68: .word 0x04000010
_02100E6C: .word FUN_ov17_020fe21c
_02100E70: .word FUN_ov17_020fed1c
_02100E74: .word FUN_ov17_02104df4
_02100E78: .word FUN_ov17_02102264
_02100E7C: .word FUN_ov17_02103924
_02100E80: .word FUN_ov17_0210462c
_02100E84: .word 0x02116254
	arm_func_end FUN_ov17_02100bb4

	arm_func_start FUN_ov17_02100e88
FUN_ov17_02100e88: ; 0x02100E88
	stmfd sp!, {r4, r5, r6, lr}
	ldr r4, _02100F3C ; =0x0211624C
	mov r1, #0x1d
	ldrh r0, [r4, #4]
	bl FUN_020096bc
	ldr r1, [r4, #8]
	mov r4, r0
	mov r6, #0
	ldr r0, [r1, #0x14]
	mov r1, r6
	bl FUN_ov17_0210dba8
	mov r5, r4
_02100EB8:
	mov r0, r5
	mov r1, r6
	bl FUN_ov17_02100f44
	add r6, r6, #1
	cmp r6, #5
	add r5, r5, #1
	blt _02100EB8
	ldr r0, _02100F3C ; =0x0211624C
	ldr r1, _02100F40 ; =0x021122E6
	mov r2, r4, lsl #1
	ldr r3, [r0, #8]
	ldrh r0, [r1, r2]
	ldr r2, [r3, #8]
	mov r5, #0
	mov r1, r5
	add r0, r2, r0, lsl #1
	mov r2, #0x1e
	mov r3, #0x13
	bl FUN_ov17_0210639c
_02100F04:
	mov r0, r4
	mov r1, r5
	bl FUN_ov17_021010e4
	add r5, r5, #1
	cmp r5, #5
	add r4, r4, #1
	blt _02100F04
	bl FUN_ov17_02106384
	ldr r0, _02100F3C ; =0x0211624C
	ldr r0, [r0, #8]
	ldr r0, [r0, #0x14]
	bl FUN_ov17_0210dc58
	bl FUN_ov17_02101578
	ldmfd sp!, {r4, r5, r6, pc}
_02100F3C: .word 0x0211624C
_02100F40: .word 0x021122E6
	arm_func_end FUN_ov17_02100e88

	arm_func_start FUN_ov17_02100f44
FUN_ov17_02100f44: ; 0x02100F44
	stmfd sp!, {r3, r4, r5, r6, lr}
	sub sp, sp, #0x24
	mov r6, r0
	mov r5, r1
	bl FUN_ov17_02107098
	cmp r6, #8
	addls pc, pc, r6, lsl #2
	b _021010DC
_02100F64: ; jump table
	b _02100F88 ; case 0
	b _02100F9C ; case 1
	b _021010DC ; case 2
	b _02101030 ; case 3
	b _02101054 ; case 4
	b _02101078 ; case 5
	b _021010DC ; case 6
	b _0210109C ; case 7
	b _021010C0 ; case 8
_02100F88:
	mov r1, r5
	add r0, r0, #0x40
	bl FUN_ov17_02101394
	add sp, sp, #0x24
	ldmfd sp!, {r3, r4, r5, r6, pc}
_02100F9C:
	ldrb r1, [r0, #0xe6]
	mov r1, r1, lsl #0x1e
	mov r1, r1, lsr #0x1e
	cmp r1, #3
	addls pc, pc, r1, lsl #2
	b _02100FE0
_02100FB4: ; jump table
	b _02100FC4 ; case 0
	b _02100FCC ; case 1
	b _02100FD4 ; case 2
	b _02100FDC ; case 3
_02100FC4:
	add sp, sp, #0x24
	ldmfd sp!, {r3, r4, r5, r6, pc}
_02100FCC:
	mov r4, #0xa
	b _02100FE0
_02100FD4:
	mov r4, #0x1a
	b _02100FE0
_02100FDC:
	mov r4, #0x20
_02100FE0:
	ldrb r0, [r0, #0xe6]
	add r6, sp, #0
	mov r1, #0
	mov r0, r0, lsl #0x18
	mov r0, r0, lsr #0x1a
	cmp r0, #1
	addeq r0, r4, r4, lsr #31
	moveq r4, r0, asr #1
	mov r0, r6
	mov r2, #0x21
	bl MI_CpuFill8
	mov r0, r6
	mov r2, r4
	mov r1, #0x2a
	bl FUN_02021940
	mov r0, r6
	mov r1, r5
	bl FUN_ov17_02101394
	add sp, sp, #0x24
	ldmfd sp!, {r3, r4, r5, r6, pc}
_02101030:
	ldrb r1, [r0, #0xf5]
	cmp r1, #0
	addne sp, sp, #0x24
	ldmnefd sp!, {r3, r4, r5, r6, pc}
	mov r1, r5
	add r0, r0, #0xc0
	bl FUN_ov17_021014e0
	add sp, sp, #0x24
	ldmfd sp!, {r3, r4, r5, r6, pc}
_02101054:
	ldrb r1, [r0, #0xf5]
	cmp r1, #0
	addne sp, sp, #0x24
	ldmnefd sp!, {r3, r4, r5, r6, pc}
	mov r1, r5
	add r0, r0, #0xf0
	bl FUN_ov17_021014e0
	add sp, sp, #0x24
	ldmfd sp!, {r3, r4, r5, r6, pc}
_02101078:
	ldrb r1, [r0, #0xf5]
	cmp r1, #0
	addne sp, sp, #0x24
	ldmnefd sp!, {r3, r4, r5, r6, pc}
	mov r1, r5
	add r0, r0, #0xc4
	bl FUN_ov17_021014e0
	add sp, sp, #0x24
	ldmfd sp!, {r3, r4, r5, r6, pc}
_0210109C:
	ldrb r1, [r0, #0xf6]
	cmp r1, #0
	addne sp, sp, #0x24
	ldmnefd sp!, {r3, r4, r5, r6, pc}
	mov r1, r5
	add r0, r0, #0xc8
	bl FUN_ov17_021014e0
	add sp, sp, #0x24
	ldmfd sp!, {r3, r4, r5, r6, pc}
_021010C0:
	ldrb r1, [r0, #0xf6]
	cmp r1, #0
	addne sp, sp, #0x24
	ldmnefd sp!, {r3, r4, r5, r6, pc}
	mov r1, r5
	add r0, r0, #0xcc
	bl FUN_ov17_021014e0
_021010DC:
	add sp, sp, #0x24
	ldmfd sp!, {r3, r4, r5, r6, pc}
	arm_func_end FUN_ov17_02100f44

	arm_func_start FUN_ov17_021010e4
FUN_ov17_021010e4: ; 0x021010E4
	stmfd sp!, {r4, r5, r6, lr}
	mov r4, r0
	mov r6, r1
	bl FUN_ov17_02107098
	cmp r4, #8
	addls pc, pc, r4, lsl #2
	b _021011F8
_02101100: ; jump table
	b _02101124 ; case 0
	b _02101124 ; case 1
	b _02101140 ; case 2
	b _0210118C ; case 3
	b _0210118C ; case 4
	b _0210118C ; case 5
	b _02101194 ; case 6
	b _021011E0 ; case 7
	b _021011E0 ; case 8
_02101124:
	mov r4, #0
	mov r0, r4
	mov r5, r4
	bl FUN_ov17_02101218
	cmp r0, #0
	moveq r5, #2
	b _02101200
_02101140:
	ldr r2, _02101214 ; =0x0211624C
	ldrb r0, [r0, #0xf5]
	ldr r3, [r2, #8]
	mov r1, #0
	ldrb r2, [r3, #4]
	cmp r0, #0
	movne r4, #1
	movne r0, #4
	moveq r4, #2
	moveq r0, #3
	cmp r2, #0
	mov r5, r1
	ldrb r2, [r3, #5]
	movne r5, #1
_02101178:
	cmp r2, #0
	movne r1, #1
	mov r2, r6
	bl FUN_ov17_021012a4
	b _02101200
_0210118C:
	ldrb r0, [r0, #0xf5]
	b _021011E4
_02101194:
	ldrb r2, [r0, #0xf6]
	mov r1, #0
	mov r5, r1
	cmp r2, #0
	movne r4, #1
	movne r0, #4
	bne _021011C4
	ldrb r0, [r0, #0xf5]
	mov r4, #2
	cmp r0, #0
	moveq r5, #2
	mov r0, #3
_021011C4:
	ldr r2, _02101214 ; =0x0211624C
	ldr r3, [r2, #8]
	ldrb r2, [r3, #6]
	cmp r2, #0
	movne r5, #1
	ldrb r2, [r3, #7]
	b _02101178
_021011E0:
	ldrb r0, [r0, #0xf6]
_021011E4:
	cmp r0, #0
	mov r4, #0
	movne r5, #2
	moveq r5, r4
	b _02101200
_021011F8:
	mov r4, #0
	mov r5, #2
_02101200:
	mov r0, r4
	mov r1, r5
	mov r2, r6
	bl FUN_ov17_021012a4
	ldmfd sp!, {r4, r5, r6, pc}
_02101214: .word 0x0211624C
	arm_func_end FUN_ov17_021010e4

	arm_func_start FUN_ov17_02101218
FUN_ov17_02101218: ; 0x02101218
	stmfd sp!, {r4, lr}
	mov r4, r0
	bl FUN_ov17_02107098
	cmp r4, #0xa
	mov r1, #1
	addls pc, pc, r4, lsl #2
	b _0210129C
_02101234: ; jump table
	b _02101270 ; case 0
	b _02101270 ; case 1
	b _0210129C ; case 2
	b _0210129C ; case 3
	b _02101288 ; case 4
	b _02101288 ; case 5
	b _02101288 ; case 6
	b _02101260 ; case 7
	b _0210129C ; case 8
	b _02101290 ; case 9
	b _02101290 ; case 10
_02101260:
	ldrb r0, [r0, #0xf5]
	cmp r0, #0
	moveq r1, #0
	b _0210129C
_02101270:
	ldrb r0, [r0, #0xe7]
	add r0, r0, #0xff
	and r0, r0, #0xff
	cmp r0, #1
	movls r1, #0
	b _0210129C
_02101288:
	ldrb r0, [r0, #0xf5]
	b _02101294
_02101290:
	ldrb r0, [r0, #0xf6]
_02101294:
	cmp r0, #0
	movne r1, #0
_0210129C:
	mov r0, r1
	ldmfd sp!, {r4, pc}
	arm_func_end FUN_ov17_02101218

	arm_func_start FUN_ov17_021012a4
FUN_ov17_021012a4: ; 0x021012A4
	stmfd sp!, {r4, r5, r6, r7, lr}
	sub sp, sp, #0xc
	ldr r7, _02101388 ; =0x0211624C
	mov r12, #0xc0
	ldr r3, [r7, #8]
	mov r6, r0
	mov r4, #0x8f
	add r3, r3, #0x18
	sub r0, r6, #1
	mov lr, #0xcc
	mov r5, r1
	strh lr, [sp]
	strh r12, [sp, #2]
	strh r12, [sp, #4]
	strh r4, [sp, #6]
	strh r4, [sp, #8]
	cmp r0, #1
	add r4, r3, r2, lsl #2
	bhi _02101308
	mov r0, r2
	bl FUN_ov17_021019e8
	cmp r0, #2
	ldr r0, [r7, #8]
	addeq r4, r0, #0x2c
	addne r4, r0, #0x30
_02101308:
	ldr r0, _0210138C ; =0x021122D7
	add r1, r6, r6, lsl #1
	add r0, r0, r1
	ldrb r1, [r5, r0]
	ldr r2, [r4]
	cmp r1, #0
	ldreq r0, _02101390 ; =0xFE00FF00
	ldreq r1, [r2]
	addeq sp, sp, #0xc
	andeq r0, r1, r0
	orreq r0, r0, #0x1000000
	streq r0, [r2]
	ldmeqfd sp!, {r4, r5, r6, r7, pc}
	mov r0, #0
	bl FUN_ov17_0210cf68
	ldr r3, [r4]
	add r0, sp, #0
	mov r1, r6, lsl #1
	ldrh r2, [r0, r1]
	ldr r1, [r3]
	ldr r0, _02101390 ; =0xFE00FF00
	mov r2, r2, lsl #0x17
	and r0, r1, r0
	orr r0, r0, r2, lsr #7
	str r0, [r3]
	ldr r1, [r4]
	ldrh r0, [r1, #4]
	bic r0, r0, #0xc00
	orr r0, r0, #0xc00
	strh r0, [r1, #4]
	add sp, sp, #0xc
	ldmfd sp!, {r4, r5, r6, r7, pc}
_02101388: .word 0x0211624C
_0210138C: .word 0x021122D7
_02101390: .word 0xFE00FF00
	arm_func_end FUN_ov17_021012a4

	arm_func_start FUN_ov17_02101394
FUN_ov17_02101394: ; 0x02101394
	stmfd sp!, {r4, r5, r6, r7, r8, lr}
	sub sp, sp, #0x30
	mov r8, r0
	mov r4, r1
	add r0, sp, #0xc
	mov r1, #0
	mov r2, #0x22
	bl MI_CpuFill8
	mov r0, r8
	mov r1, #0x20
	bl FUN_ov17_0210ee94
	mov r5, r0
	mov r7, r5
	cmp r5, #0x10
	movgt r7, #0x10
	cmp r7, #0
	mov r6, #0
	ble _02101404
	ldr r2, _021014D8 ; =0x0000E01D
	add r1, sp, #0xc
_021013E4:
	ldrb r3, [r8, r6]
	mov r0, r6, lsl #1
	add r6, r6, #1
	cmp r3, #0x20
	streqh r2, [r1, r0]
	strneh r3, [r1, r0]
	cmp r6, r7
	blt _021013E4
_02101404:
	mov r0, #0x1d
	mul r0, r4, r0
	add r6, r0, #2
	mov r0, #8
	add r4, sp, #0xc
	stmia sp, {r0, r4}
	mov r1, #1
	str r1, [sp, #8]
	ldr r0, _021014DC ; =0x0211624C
	cmp r5, #0x10
	ldr r0, [r0, #8]
	addle r6, r6, #5
	ldr r0, [r0, #0x14]
	mov r2, r6
	mov r1, #0x48
	mov r3, #2
	bl FUN_ov17_0210da44
	cmp r5, #0x10
	addle sp, sp, #0x30
	ldmlefd sp!, {r4, r5, r6, r7, r8, pc}
	mov r7, #0
	mov r0, r4
	mov r1, r7
	mov r2, #0x22
	bl MI_CpuFill8
	sub r3, r5, #0x10
	cmp r3, #0
	ble _0210149C
	ldr r1, _021014D8 ; =0x0000E01D
_02101478:
	add r0, r8, r7
	ldrb r2, [r0, #0x10]
	mov r0, r7, lsl #1
	add r7, r7, #1
	cmp r2, #0x20
	streqh r1, [r4, r0]
	strneh r2, [r4, r0]
	cmp r7, r3
	blt _02101478
_0210149C:
	mov r1, #8
	str r1, [sp]
	add r0, sp, #0xc
	str r0, [sp, #4]
	mov r1, #1
	str r1, [sp, #8]
	ldr r0, _021014DC ; =0x0211624C
	add r2, r6, #0xc
	ldr r0, [r0, #8]
	mov r1, #0x48
	ldr r0, [r0, #0x14]
	mov r3, #2
	bl FUN_ov17_0210da44
	add sp, sp, #0x30
	ldmfd sp!, {r4, r5, r6, r7, r8, pc}
_021014D8: .word 0x0000E01D
_021014DC: .word 0x0211624C
	arm_func_end FUN_ov17_02101394

	arm_func_start FUN_ov17_021014e0
FUN_ov17_021014e0: ; 0x021014E0
	stmfd sp!, {r4, r5, r6, r7, lr}
	sub sp, sp, #0x3c
	ldrb r3, [r0, #1]
	ldrb r2, [r0, #2]
	ldrb r5, [r0, #3]
	str r3, [sp]
	str r2, [sp, #4]
	ldrb r3, [r0]
	add r7, sp, #0xc
	mov r6, #0x10
	mov r4, r1
	ldr r2, _02101570 ; =0x02113260
	mov r0, r7
	mov r1, r6
	str r5, [sp, #8]
	bl FUN_02001508
	add r5, sp, #0x1c
	mov r1, r7
	mov r0, r5
	mov r2, r6
	bl FUN_ov17_0210eec0
	mov r2, #7
	mov r0, #0x1d
	mul r1, r4, r0
	stmia sp, {r2, r5}
	mov r2, #1
	str r2, [sp, #8]
	ldr r0, _02101574 ; =0x0211624C
	add r2, r1, #8
	ldr r0, [r0, #8]
	mov r1, #0x5f
	ldr r0, [r0, #0x14]
	mov r3, #2
	bl FUN_ov17_0210da44
	add sp, sp, #0x3c
	ldmfd sp!, {r4, r5, r6, r7, pc}
_02101570: .word 0x02113260
_02101574: .word 0x0211624C
	arm_func_end FUN_ov17_021014e0

	arm_func_start FUN_ov17_02101578
FUN_ov17_02101578: ; 0x02101578
	stmfd sp!, {r4, r5, r6, r7, r8, lr}
	sub sp, sp, #8
	ldr r5, _0210171C ; =0x0211624C
	mov r7, #0x1d
	ldrh r0, [r5, #4]
	mov r1, r7
	ldr r4, _02101720 ; =0xFE00FF00
	bl FUN_020096bc
	mov r6, r0
	ldrh r0, [r5, #4]
	mov r1, r7
	bl FUN_020096f8
	ldr r2, [r5, #8]
	rsb r1, r0, #0x34
	ldr r0, [r2, #0x34]
	cmp r0, #0
	beq _021015E8
	ldr r7, [r2, #0x34]
	mov r3, #0x26
	ldr r2, [r7]
	cmp r6, #0
	movne r3, #0x100
	and r0, r1, #0xff
	and r2, r2, r4
	mov r3, r3, lsl #0x17
	orr r0, r2, r0
	orr r0, r0, r3, lsr #7
	str r0, [r7]
_021015E8:
	ldr r12, _02101724 ; =0x01FF0000
	mov r2, r1
	mov r3, #0
_021015F4:
	ldr r0, [r5, #8]
	and lr, r2, #0xff
	add r0, r0, r3, lsl #2
	ldr r0, [r0, #0x18]
	add r3, r3, #1
	ldr r8, [r0]
	cmp r3, #5
	mov r7, r8
	and r8, r8, r12
	mov r8, r8, lsr #0x10
	and r7, r7, r4
	mov r8, r8, lsl #0x17
	orr r7, r7, lr
	orr r7, r7, r8, lsr #7
	str r7, [r0]
	add r2, r2, #0x1d
	blt _021015F4
	ldr r4, _0210171C ; =0x0211624C
	cmp r6, #2
	ldr r0, [r4, #8]
	ldr r3, _02101720 ; =0xFE00FF00
	ldrgt r2, [r0, #0x2c]
	ldrgt r0, [r2]
	andgt r0, r0, r3
	orrgt r0, r0, #0x1000000
	strgt r0, [r2]
	bgt _0210169C
	rsb r5, r6, #2
	mov r2, #0x1d
	mla r12, r5, r2, r1
	ldr r0, [r0, #0x2c]
	ldr r2, _02101724 ; =0x01FF0000
	ldr lr, [r0]
	mov r5, lr
	and r2, lr, r2
	mov lr, r2, lsr #0x10
	and r2, r12, #0xff
	and r5, r5, r3
	mov r12, lr, lsl #0x17
	orr r2, r5, r2
	orr r2, r2, r12, lsr #7
	str r2, [r0]
_0210169C:
	cmp r6, #2
	blt _021016F0
	cmp r6, #6
	bgt _021016F0
	ldr r0, [r4, #8]
	rsb r5, r6, #6
	mov r2, #0x1d
	mla r2, r5, r2, r1
	ldr r0, [r0, #0x30]
	ldr r1, _02101724 ; =0x01FF0000
	ldr r6, [r0]
	mov r5, r6
	and r1, r6, r1
	mov r6, r1, lsr #0x10
	and r1, r2, #0xff
	and r3, r5, r3
	mov r2, r6, lsl #0x17
	orr r1, r3, r1
	orr r1, r1, r2, lsr #7
	str r1, [r0]
	b _02101708
_021016F0:
	ldr r0, [r4, #8]
	ldr r1, [r0, #0x30]
	ldr r0, [r1]
	and r0, r0, r3
	orr r0, r0, #0x1000000
	str r0, [r1]
_02101708:
	ldr r0, [r4, #8]
	mov r1, #1
	strb r1, [r0, #0x44]
	add sp, sp, #8
	ldmfd sp!, {r4, r5, r6, r7, r8, pc}
_0210171C: .word 0x0211624C
_02101720: .word 0xFE00FF00
_02101724: .word 0x01FF0000
	arm_func_end FUN_ov17_02101578

	arm_func_start FUN_ov17_02101728
FUN_ov17_02101728: ; 0x02101728
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	sub sp, sp, #8
	ldr r0, _02101990 ; =0x021126F8
	mov r7, #0x1d
	bl FUN_ov17_0210e600
	cmp r0, #0
	addeq sp, sp, #8
	moveq r0, #0xe
	ldmeqfd sp!, {r3, r4, r5, r6, r7, pc}
	ldr r0, _02101994 ; =0x0211624C
	mov r1, r7
	ldrh r0, [r0, #4]
	bl FUN_020096bc
	ldr r1, _02101998 ; =0x02112298
	mov r5, r0
	ldrh r3, [r1, #0xa]
	ldrh r2, [r1, #0xc]
	add r4, sp, #0
	strh r3, [sp]
	strh r2, [sp, #2]
	ldrh r2, [r1, #0xe]
	ldrh r0, [r1, #0x10]
	mov r6, #0
	strh r2, [sp, #4]
	strh r0, [sp, #6]
_0210178C:
	cmp r5, #2
	cmpne r5, #6
	beq _021017B4
	mov r0, r4
	bl FUN_ov17_0210e798
	cmp r0, #0
	ldrne r0, _0210199C ; =0x021122BA
	addne sp, sp, #8
	ldrneb r0, [r0, r5]
	ldmnefd sp!, {r3, r4, r5, r6, r7, pc}
_021017B4:
	ldrh r0, [sp, #2]
	add r6, r6, #1
	cmp r6, #4
	add r0, r0, #0x1d
	strh r0, [sp, #2]
	add r5, r5, #1
	blt _0210178C
	ldr r0, _02101994 ; =0x0211624C
	mov r1, #0x1d
	ldrh r0, [r0, #4]
	bl FUN_020096bc
	mov r2, #0
_021017E4:
	cmp r0, #2
	bne _02101884
	ldr r6, _02101998 ; =0x02112298
	mul r5, r2, r7
	ldrh r1, [r6, #0x1c]
	ldrh r0, [r6, #0x1a]
	add r4, sp, #0
	strh r1, [sp, #2]
	strh r0, [sp]
	mov r0, r5, lsl #0x10
	add r1, r1, r0, lsr #16
	ldrh r3, [r6, #0x1e]
	ldrh r2, [r6, #0x20]
	mov r0, r4
	strh r3, [sp, #4]
	strh r2, [sp, #6]
	strh r1, [sp, #2]
	bl FUN_ov17_0210e798
	cmp r0, #0
	addne sp, sp, #8
	movne r0, #2
	ldmnefd sp!, {r3, r4, r5, r6, r7, pc}
	ldrh r1, [r6, #0x14]
	ldrh r2, [r6, #0x12]
	mov r0, r5, lsl #0x10
	strh r1, [sp, #2]
	strh r2, [sp]
	add r1, r1, r0, lsr #16
	ldrh r3, [r6, #0x16]
	ldrh r2, [r6, #0x18]
	mov r0, r4
	strh r3, [sp, #4]
	strh r2, [sp, #6]
	strh r1, [sp, #2]
	bl FUN_ov17_0210e798
	cmp r0, #0
	beq _02101894
	add sp, sp, #8
	mov r0, #3
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_02101884:
	add r2, r2, #1
	cmp r2, #4
	add r0, r0, #1
	blt _021017E4
_02101894:
	ldr r0, _02101994 ; =0x0211624C
	mov r1, #0x1d
	ldrh r0, [r0, #4]
	bl FUN_020096bc
	mov r2, #0
_021018A8:
	cmp r0, #6
	bne _02101948
	ldr r6, _02101998 ; =0x02112298
	mul r5, r2, r7
	ldrh r1, [r6, #0x1c]
	ldrh r0, [r6, #0x1a]
	add r4, sp, #0
	strh r1, [sp, #2]
	strh r0, [sp]
	mov r0, r5, lsl #0x10
	add r1, r1, r0, lsr #16
	ldrh r3, [r6, #0x1e]
	ldrh r2, [r6, #0x20]
	mov r0, r4
	strh r3, [sp, #4]
	strh r2, [sp, #6]
	strh r1, [sp, #2]
	bl FUN_ov17_0210e798
	cmp r0, #0
	addne sp, sp, #8
	movne r0, #7
	ldmnefd sp!, {r3, r4, r5, r6, r7, pc}
	ldrh r1, [r6, #0x14]
	ldrh r2, [r6, #0x12]
	mov r0, r5, lsl #0x10
	strh r1, [sp, #2]
	strh r2, [sp]
	add r1, r1, r0, lsr #16
	ldrh r3, [r6, #0x16]
	ldrh r2, [r6, #0x18]
	mov r0, r4
	strh r3, [sp, #4]
	strh r2, [sp, #6]
	strh r1, [sp, #2]
	bl FUN_ov17_0210e798
	cmp r0, #0
	beq _02101958
	add sp, sp, #8
	mov r0, #8
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_02101948:
	add r2, r2, #1
	cmp r2, #4
	add r0, r0, #1
	blt _021018A8
_02101958:
	ldr r4, _021019A0 ; =0x021122F8
	mov r5, #0
_02101960:
	add r0, r4, r5, lsl #3
	bl FUN_ov17_0210e600
	cmp r0, #0
	addne sp, sp, #8
	addne r0, r5, #0xb
	ldmnefd sp!, {r3, r4, r5, r6, r7, pc}
	add r5, r5, #1
	cmp r5, #3
	blt _02101960
	mov r0, #0xe
	add sp, sp, #8
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_02101990: .word 0x021126F8
_02101994: .word 0x0211624C
_02101998: .word 0x02112298
_0210199C: .word 0x021122BA
_021019A0: .word 0x021122F8
	arm_func_end FUN_ov17_02101728

	arm_func_start FUN_ov17_021019a4
FUN_ov17_021019a4: ; 0x021019A4
	stmfd sp!, {r4, lr}
	ldr r1, _021019E4 ; =0x0211624C
	mov r4, r0
	ldrh r0, [r1, #4]
	mov r1, #0x1d
	bl FUN_020096bc
	mov r1, #0
_021019C0:
	cmp r0, r4
	moveq r0, r1
	ldmeqfd sp!, {r4, pc}
	add r1, r1, #1
	cmp r1, #4
	add r0, r0, #1
	blt _021019C0
	mvn r0, #0
	ldmfd sp!, {r4, pc}
_021019E4: .word 0x0211624C
	arm_func_end FUN_ov17_021019a4

	arm_func_start FUN_ov17_021019e8
FUN_ov17_021019e8: ; 0x021019E8
	stmfd sp!, {r4, lr}
	ldr r1, _02101A08 ; =0x0211624C
	mov r4, r0
	ldrh r0, [r1, #4]
	mov r1, #0x1d
	bl FUN_020096bc
	add r0, r0, r4
	ldmfd sp!, {r4, pc}
_02101A08: .word 0x0211624C
	arm_func_end FUN_ov17_021019e8

	arm_func_start FUN_ov17_02101a0c
FUN_ov17_02101a0c: ; 0x02101A0C
	stmfd sp!, {r4, r5, r6, lr}
	mov r4, r0
	bl FUN_ov17_02106664
	bl FUN_ov17_020f5258
	ldr r0, _02101AC8 ; =0x0211624C
	ldr r5, _02101AC8 ; =0x0211624C
	ldrh r1, [r0, #4]
	cmp r1, #6
	subhi r1, r1, #6
	movls r1, #0
	strh r1, [r0, #4]
	ldrh r0, [r5, #4]
	mov r1, #0x1d
	bl FUN_020096f8
	mov r6, r0
	cmp r6, #0x17
	bne _02101A58
	bl FUN_ov17_02100e88
	ldmfd sp!, {r4, r5, r6, pc}
_02101A58:
	ble _02101A74
	ldrh r1, [r5, #4]
	rsb r0, r6, #0x1d
	mov r0, r0, lsl #0x10
	add r0, r1, r0, lsr #16
	strh r0, [r5, #4]
	mov r6, #0
_02101A74:
	bl FUN_ov17_02101578
	cmp r6, #0
	ldmnefd sp!, {r4, r5, r6, pc}
	ldr r5, _02101AC8 ; =0x0211624C
	mov r0, #0x37
	ldrh r1, [r5, #4]
	ldr r2, _02101ACC ; =0xE1FC780F
	mul r3, r1, r0
	smull r1, r0, r2, r3
	add r0, r3, r0
	mov r1, r3, lsr #0x1f
	add r0, r1, r0, asr #7
	bl FUN_ov17_02106640
	bl FUN_ov17_0210664c
	bl FUN_ov17_02101cc4
	ldr r2, [r5, #8]
	mov r0, #0
	mov r1, r4
	str r0, [r2, #0x38]
	bl FUN_ov17_0210f3b8
	ldmfd sp!, {r4, r5, r6, pc}
_02101AC8: .word 0x0211624C
_02101ACC: .word 0xE1FC780F
	arm_func_end FUN_ov17_02101a0c

	arm_func_start FUN_ov17_02101ad0
FUN_ov17_02101ad0: ; 0x02101AD0
	stmfd sp!, {r3, r4, r5, lr}
	mov r4, r0
	bl FUN_ov17_02106664
	bl FUN_ov17_020f5258
	ldr r5, _02101B64 ; =0x0211624C
	mov r1, #0x1d
	ldrh r0, [r5, #4]
	add r0, r0, #6
	strh r0, [r5, #4]
	ldrh r0, [r5, #4]
	bl FUN_020096f8
	cmp r0, #6
	blt _02101B0C
	bl FUN_ov17_02101578
	ldmfd sp!, {r3, r4, r5, pc}
_02101B0C:
	ldrh r1, [r5, #4]
	mov r0, r0, lsl #0x10
	sub r0, r1, r0, lsr #16
	strh r0, [r5, #4]
	bl FUN_ov17_02100e88
	ldrh r1, [r5, #4]
	mov r0, #0x37
	ldr r2, _02101B68 ; =0xE1FC780F
	mul r3, r1, r0
	smull r1, r0, r2, r3
	add r0, r3, r0
	mov r1, r3, lsr #0x1f
	add r0, r1, r0, asr #7
	bl FUN_ov17_02106640
	bl FUN_ov17_0210664c
	bl FUN_ov17_02101cc4
	ldr r1, [r5, #8]
	mov r0, #0
	str r0, [r1, #0x38]
	mov r1, r4
	bl FUN_ov17_0210f3b8
	ldmfd sp!, {r3, r4, r5, pc}
_02101B64: .word 0x0211624C
_02101B68: .word 0xE1FC780F
	arm_func_end FUN_ov17_02101ad0

	arm_func_start FUN_ov17_02101b6c
FUN_ov17_02101b6c: ; 0x02101B6C
	stmfd sp!, {r4, r5, r6, lr}
	ldr r4, _02101BDC ; =0x0211624C
	ldr r0, [r4, #8]
	ldrb r0, [r0, #0x44]
	cmp r0, #0
	ldmeqfd sp!, {r4, r5, r6, pc}
	ldrh r0, [r4, #4]
	mov r6, #0x1d
	mov r1, r6
	bl FUN_020096bc
	mov r5, r0
	ldrh r0, [r4, #4]
	mov r1, r6
	bl FUN_020096f8
	ldr r2, _02101BE0 ; =0x021122C3
	ldr r1, _02101BE4 ; =0x01FF0000
	sub r12, r0, #0x33
	ldrb r0, [r2, r5]
	ldr r2, _02101BE8 ; =0x04000010
	and r3, r1, r12, lsl #16
	add r0, r12, r0
	str r3, [r2]
	and r0, r1, r0, lsl #16
	str r0, [r2, #8]
	ldr r0, [r4, #8]
	mov r1, #0
	strb r1, [r0, #0x44]
	ldmfd sp!, {r4, r5, r6, pc}
_02101BDC: .word 0x0211624C
_02101BE0: .word 0x021122C3
_02101BE4: .word 0x01FF0000
_02101BE8: .word 0x04000010
	arm_func_end FUN_ov17_02101b6c

	arm_func_start FUN_ov17_02101bec
FUN_ov17_02101bec: ; 0x02101BEC
	stmfd sp!, {r3, lr}
	sub sp, sp, #0x18
	ldr r12, _02101CB0 ; =0x02112344
	add r3, sp, #8
	mov r2, #7
_02101C00:
	ldrb r0, [r12, #1]
	ldrb r1, [r12], #2
	subs r2, r2, #1
	strb r0, [r3, #1]
	strb r1, [r3], #2
	bne _02101C00
	ldr r0, _02101CB4 ; =0x0211624C
	add r1, sp, #8
	ldrb r2, [r0]
	ldrb lr, [r1, r2]
	cmp lr, #3
	blt _02101C5C
	ldr r1, _02101CB8 ; =0x02112310
	mov r3, lr, lsl #3
	ldr r2, _02101CBC ; =0x02112314
	ldr r0, _02101CC0 ; =0x02112312
	ldrh r1, [r1, r3]
	ldrh r2, [r2, r3]
	ldrh r3, [r0, r3]
	mov r0, #3
	bl FUN_ov17_020f50cc
	add sp, sp, #0x18
	ldmfd sp!, {r3, pc}
_02101C5C:
	ldr r2, _02101CB8 ; =0x02112310
	ldrb r1, [r0, #2]
	add r12, r2, lr, lsl #3
	mov r0, #0x1d
	smulbb r0, r1, r0
	ldrh r3, [r12, #2]
	mov r0, r0, lsl #0x10
	mov r1, lr, lsl #3
	ldrh r1, [r2, r1]
	ldrh r2, [r12, #4]
	add r0, r3, r0, lsr #16
	strh r0, [sp, #2]
	ldrh r12, [r12, #6]
	ldrh r3, [sp, #2]
	mov r0, #1
	strh r1, [sp]
	strh r2, [sp, #4]
	strh r12, [sp, #6]
	bl FUN_ov17_020f50cc
	add sp, sp, #0x18
	ldmfd sp!, {r3, pc}
_02101CB0: .word 0x02112344
_02101CB4: .word 0x0211624C
_02101CB8: .word 0x02112310
_02101CBC: .word 0x02112314
_02101CC0: .word 0x02112312
	arm_func_end FUN_ov17_02101bec

	arm_func_start FUN_ov17_02101cc4
FUN_ov17_02101cc4: ; 0x02101CC4
	stmfd sp!, {r3, r4, r5, lr}
	ldr r4, _02101D60 ; =0x0211624C
	ldrb r0, [r4]
	add r0, r0, #0xf5
	and r0, r0, #0xff
	cmp r0, #2
	bhi _02101CE8
	bl FUN_ov17_02101bec
	ldmfd sp!, {r3, r4, r5, pc}
_02101CE8:
	bl FUN_ov17_02107098
	mov r5, r0
	ldrh r0, [r4, #4]
	mov r1, #0x1d
	bl FUN_020096bc
	ldrb r1, [r4, #2]
	add r1, r1, r0
	cmp r1, #2
	beq _02101D18
	cmp r1, #6
	beq _02101D30
	b _02101D4C
_02101D18:
	ldrb r0, [r5, #0xf5]
	cmp r0, #0
	movne r0, #2
	strneb r0, [r4]
	moveq r0, #3
	b _02101D44
_02101D30:
	ldrb r0, [r5, #0xf6]
	cmp r0, #0
	movne r0, #7
	strneb r0, [r4]
	moveq r0, #8
_02101D44:
	streqb r0, [r4]
	b _02101D58
_02101D4C:
	ldr r0, _02101D64 ; =0x021122BA
	ldrb r0, [r0, r1]
	strb r0, [r4]
_02101D58:
	bl FUN_ov17_02101bec
	ldmfd sp!, {r3, r4, r5, pc}
_02101D60: .word 0x0211624C
_02101D64: .word 0x021122BA
	arm_func_end FUN_ov17_02101cc4

	arm_func_start FUN_ov17_02101d68
FUN_ov17_02101d68: ; 0x02101D68
	stmfd sp!, {r4, lr}
	ldr r4, _02101D8C ; =0x0211624C
	ldr r1, _02101D90 ; =0x021122CC
	strb r0, [r4]
	ldrb r0, [r1, r0]
	bl FUN_ov17_021019a4
	strb r0, [r4, #2]
	bl FUN_ov17_02101bec
	ldmfd sp!, {r4, pc}
_02101D8C: .word 0x0211624C
_02101D90: .word 0x021122CC
	arm_func_end FUN_ov17_02101d68

	arm_func_start FUN_ov17_02101d94
FUN_ov17_02101d94: ; 0x02101D94
	stmfd sp!, {r4, r5, r6, lr}
	mov r5, r0
	bl FUN_ov17_02107098
	ldr r6, _02102018 ; =0x0211624C
	mov r4, #0
	ldrb r1, [r6]
	cmp r1, #8
	ldreqb r0, [r0, #0xf5]
	cmpeq r0, #0
	bne _02101DC8
	cmp r5, #0
	cmpne r5, #2
	ldmeqfd sp!, {r4, r5, r6, pc}
_02101DC8:
	cmp r1, #0
	bgt _02101DD8
	beq _02101DF8
	b _02101F24
_02101DD8:
	sub r0, r1, #0xa
	cmp r0, #3
	addls pc, pc, r0, lsl #2
	b _02101F24
_02101DE8: ; jump table
	b _02101E1C ; case 0
	b _02101E48 ; case 1
	b _02101EA4 ; case 2
	b _02101EA4 ; case 3
_02101DF8:
	cmp r5, #1
	moveq r0, #0xb
	streqb r0, [r6]
	beq _02101FF8
	cmp r5, #3
	ldreqb r0, [r6, #2]
	addeq r0, r0, #1
	streqb r0, [r6, #2]
	b _02101E40
_02101E1C:
	cmp r5, #1
	ldreqb r0, [r6, #2]
	subeq r0, r0, #1
	streqb r0, [r6, #2]
	beq _02101FF8
	cmp r5, #3
	ldreq r0, [r6, #8]
	ldreqb r0, [r0, #0x42]
	streqb r0, [r6]
_02101E40:
	movne r4, #2
	b _02101FF8
_02101E48:
	cmp r5, #1
	bne _02101E78
	ldr r0, [r6, #8]
	ldrb r0, [r0, #0x47]
	cmp r0, #0
	ldmnefd sp!, {r4, r5, r6, pc}
	mov r0, #9
	bl FUN_ov17_02107c40
	ldr r0, [r6, #8]
	mov r1, #1
	strb r1, [r0, #0x47]
	ldmfd sp!, {r4, r5, r6, pc}
_02101E78:
	cmp r5, #3
	movne r4, #2
	bne _02101FF8
	mov r5, #0
	strb r5, [r6]
	strb r5, [r6, #2]
	strh r5, [r6, #4]
	bl FUN_ov17_02100e88
	mov r0, r5
	bl FUN_ov17_02106640
	b _02101FF8
_02101EA4:
	ldr r0, [r6, #8]
	cmp r5, #1
	strb r1, [r0, #0x42]
	bne _02101EDC
	mov r0, #0xa
	strb r0, [r6]
	mov r0, #3
	strb r0, [r6, #2]
	mov r0, #0x91
	strh r0, [r6, #4]
	bl FUN_ov17_02100e88
	mov r0, #0x37
	bl FUN_ov17_02106640
	b _02101FF8
_02101EDC:
	cmp r5, #3
	bne _02101F0C
	ldr r0, [r6, #8]
	ldrb r0, [r0, #0x47]
	cmp r0, #0
	ldmnefd sp!, {r4, r5, r6, pc}
	mov r0, #9
	bl FUN_ov17_02107c40
	ldr r0, [r6, #8]
	mov r1, #1
	strb r1, [r0, #0x47]
	ldmfd sp!, {r4, r5, r6, pc}
_02101F0C:
	cmp r1, #0xc
	moveq r0, #0xd
	streqb r0, [r6]
	movne r0, #0xc
	strneb r0, [r6]
	b _02101FF8
_02101F24:
	cmp r5, #1
	bne _02101F68
	ldrb r0, [r6, #2]
	cmp r0, #0
	subne r0, r0, #1
	strneb r0, [r6, #2]
	bne _02101FF8
	mov r0, #0x13
	bl FUN_ov17_02107c40
	mov r0, #0
	ldr r1, _0210201C ; =FUN_ov17_02101a0c
	mov r2, r0
	mov r3, #0x78
	bl FUN_ov17_0210f314
	ldr r1, [r6, #8]
	str r0, [r1, #0x38]
	ldmfd sp!, {r4, r5, r6, pc}
_02101F68:
	cmp r5, #3
	bne _02101FAC
	ldrb r0, [r6, #2]
	cmp r0, #3
	addlo r0, r0, #1
	strlob r0, [r6, #2]
	blo _02101FF8
	mov r0, #0x13
	bl FUN_ov17_02107c40
	mov r0, #0
	ldr r1, _02102020 ; =FUN_ov17_02101ad0
	mov r2, r0
	mov r3, #0x78
	bl FUN_ov17_0210f314
	ldr r1, [r6, #8]
	str r0, [r1, #0x38]
	ldmfd sp!, {r4, r5, r6, pc}
_02101FAC:
	cmp r1, #2
	moveq r0, #3
	mov r4, #2
	streqb r0, [r6]
	beq _02101FEC
	cmp r1, #3
	streqb r4, [r6]
	beq _02101FEC
	cmp r1, #7
	moveq r0, #8
	streqb r0, [r6]
	beq _02101FEC
	cmp r1, #8
	bne _02101FF8
	mov r0, #7
	strb r0, [r6]
_02101FEC:
	mov r0, #8
	bl FUN_ov17_02107c40
	bl FUN_ov17_02101bec
_02101FF8:
	cmp r4, #2
	ldmeqfd sp!, {r4, r5, r6, pc}
	mov r0, #8
	bl FUN_ov17_02107c40
	cmp r4, #0
	ldmnefd sp!, {r4, r5, r6, pc}
	bl FUN_ov17_02101cc4
	ldmfd sp!, {r4, r5, r6, pc}
_02102018: .word 0x0211624C
_0210201C: .word FUN_ov17_02101a0c
_02102020: .word FUN_ov17_02101ad0
	arm_func_end FUN_ov17_02101d94

	arm_func_start FUN_ov17_02102024
FUN_ov17_02102024: ; 0x02102024
	ldr r0, _0210204C ; =0x0211624C
	ldr r1, _02102050 ; =0x02112298
	ldrb r2, [r0]
	ldr r0, [r0, #8]
	ldr r12, _02102054 ; =FUN_ov17_02106444
	sub r2, r2, #0xb
	ldrb r1, [r1, r2]
	ldr r0, [r0, #0x10]
	mov r2, r1
	bx r12
_0210204C: .word 0x0211624C
_02102050: .word 0x02112298
_02102054: .word FUN_ov17_02106444
	arm_func_end FUN_ov17_02102024

	arm_func_start FUN_ov17_02102058
FUN_ov17_02102058: ; 0x02102058
	stmfd sp!, {r3, r4, r5, lr}
	ldr r5, _021020A8 ; =0x0211624C
	mov r4, #0
_02102064:
	ldr r0, [r5, #8]
	add r1, r0, r4
	ldrb r0, [r1, #4]
	cmp r0, #0
	beq _02102098
	sub r0, r0, #1
	strb r0, [r1, #4]
	ldr r0, [r5, #8]
	add r0, r0, r4
	ldrb r0, [r0, #4]
	cmp r0, #0
	bne _02102098
	bl FUN_ov17_02100e88
_02102098:
	add r4, r4, #1
	cmp r4, #4
	blt _02102064
	ldmfd sp!, {r3, r4, r5, pc}
_021020A8: .word 0x0211624C
	arm_func_end FUN_ov17_02102058

	arm_func_start FUN_ov17_021020ac
FUN_ov17_021020ac: ; 0x021020AC
	stmfd sp!, {r3, r4, lr}
	sub sp, sp, #4
	ldr r1, _0210214C ; =0x02112340
	ldr r0, _02102150 ; =0x0211624C
	ldrb r12, [r1]
	ldrb r3, [r1, #1]
	ldrb r2, [r1, #2]
	ldrb r1, [r1, #3]
	strb r3, [sp, #1]
	ldrb r4, [r0]
	add lr, sp, #0
	strb r12, [sp]
	strb r2, [sp, #2]
	strb r1, [sp, #3]
	mov r3, #0
_021020E8:
	ldrb r0, [lr, r3]
	cmp r4, r0
	bne _02102138
	ldr r0, _02102150 ; =0x0211624C
	mov r2, #0x14
	ldr r1, [r0, #8]
	tst r3, #1
	add r1, r1, r3
	strb r2, [r1, #4]
	ldr r1, [r0, #8]
	subne r0, r3, #1
	addne r0, r1, r0
	movne r1, #0
	strneb r1, [r0, #4]
	addeq r0, r3, #1
	addeq r0, r1, r0
	moveq r1, #0
	streqb r1, [r0, #4]
	add sp, sp, #4
	ldmfd sp!, {r3, r4, pc}
_02102138:
	add r3, r3, #1
	cmp r3, #4
	blt _021020E8
	add sp, sp, #4
	ldmfd sp!, {r3, r4, pc}
_0210214C: .word 0x02112340
_02102150: .word 0x0211624C
	arm_func_end FUN_ov17_021020ac

	arm_func_start FUN_ov17_02102154
FUN_ov17_02102154: ; 0x02102154
	stmfd sp!, {r4, lr}
	bl FUN_ov17_02107098
	mov r4, r0
	ldrb r0, [r4, #0x40]
	cmp r0, #0
	moveq r0, #0
	ldmeqfd sp!, {r4, pc}
	ldrb r0, [r4, #0xf6]
	cmp r0, #0
	bne _021021A0
	add r0, r4, #0xc8
	bl  FUN_ov15_020cacf0
	cmp r0, #0
	bne _021021A0
	add r0, r4, #0xcc
	bl  FUN_ov15_020cacf0
	cmp r0, #0
	moveq r0, #0
	ldmeqfd sp!, {r4, pc}
_021021A0:
	ldrb r0, [r4, #0xf5]
	cmp r0, #0
	bne _021021EC
	add r0, r4, #0xc0
	bl  FUN_ov15_020cacf0
	cmp r0, #0
	moveq r0, #0
	ldmeqfd sp!, {r4, pc}
	add r0, r4, #0xc4
	bl  FUN_ov15_020cacf0
	cmp r0, #0
	moveq r0, #0
	ldmeqfd sp!, {r4, pc}
	add r0, r4, #0xc0
	add r1, r4, #0xf0
	bl  FUN_ov15_020cac88
	cmp r0, #0
	moveq r0, #0
	ldmeqfd sp!, {r4, pc}
_021021EC:
	mov r0, #1
	ldmfd sp!, {r4, pc}
	arm_func_end FUN_ov17_02102154

	arm_func_start FUN_ov17_021021f4
FUN_ov17_021021f4: ; 0x021021F4
	stmfd sp!, {r3, lr}
	bl FUN_ov17_021091fc
	cmp r0, #0
	ldmnefd sp!, {r3, pc}
	mov r0, #6
	bl FUN_ov17_02107c40
	bl FUN_ov17_021091b8
	ldr r0, _0210222C ; =0x0211624C
	ldr r0, [r0, #8]
	ldr r0, [r0, #0xc]
	bl FUN_ov17_021064ac
	ldr r0, _02102230 ; =FUN_ov17_02102234
	bl FUN_ov17_020f8ad4
	ldmfd sp!, {r3, pc}
_0210222C: .word 0x0211624C
_02102230: .word FUN_ov17_02102234
	arm_func_end FUN_ov17_021021f4

	arm_func_start FUN_ov17_02102234
FUN_ov17_02102234: ; 0x02102234
	stmfd sp!, {r3, lr}
	bl FUN_ov17_02109210
	cmp r0, #0
	ldmnefd sp!, {r3, pc}
	ldr r0, _02102250 ; =FUN_ov17_02100428
	bl FUN_ov17_020f8ad4
	ldmfd sp!, {r3, pc}
_02102250: .word FUN_ov17_02100428
	arm_func_end FUN_ov17_02102234

	arm_func_start FUN_ov17_02102254
FUN_ov17_02102254: ; 0x02102254
	ldr r1, _02102260 ; =0x0211624C
	strb r0, [r1, #1]
	bx lr
_02102260: .word 0x0211624C
	arm_func_end FUN_ov17_02102254

	arm_func_start FUN_ov17_02102264
FUN_ov17_02102264: ; 0x02102264
	stmfd sp!, {r3, lr}
	bl FUN_ov17_02102284
	bl FUN_ov17_020f5384
	bl FUN_ov17_0210756c
	ldr r0, _02102280 ; =FUN_ov17_02102318
	bl FUN_ov17_020f8ad4
	ldmfd sp!, {r3, pc}
_02102280: .word FUN_ov17_02102318
	arm_func_end FUN_ov17_02102264

	arm_func_start FUN_ov17_02102284
FUN_ov17_02102284: ; 0x02102284
	stmfd sp!, {r3, lr}
	ldr r0, _021022F8 ; =0x02113270
	ldr r1, _021022FC ; =0x0200593C
	bl FUN_ov17_020f4e84
	ldr r0, _02102300 ; =0x02113288
	ldr r1, _02102304 ; =FUN_020050fc
	bl FUN_ov17_020f4e84
	ldr r0, _02102308 ; =0x021132A0
	ldr r1, _0210230C ; =FUN_020055bc
	bl FUN_ov17_020f4e84
	ldr r2, _02102310 ; =0x04001008
	ldr r1, _02102314 ; =0x0400000A
	ldrh r0, [r2]
	bic r0, r0, #3
	orr r0, r0, #3
	strh r0, [r2]
	ldrh r0, [r2, #2]
	bic r0, r0, #3
	orr r0, r0, #3
	strh r0, [r2, #2]
	ldrh r0, [r1]
	bic r0, r0, #3
	orr r0, r0, #3
	strh r0, [r1]
	ldrh r0, [r1, #2]
	bic r0, r0, #3
	orr r0, r0, #3
	strh r0, [r1, #2]
	ldmfd sp!, {r3, pc}
_021022F8: .word 0x02113270
_021022FC: .word 0x0200593C
_02102300: .word 0x02113288
_02102304: .word FUN_020050fc
_02102308: .word 0x021132A0
_0210230C: .word FUN_020055bc
_02102310: .word 0x04001008
_02102314: .word 0x0400000A
	arm_func_end FUN_ov17_02102284

	arm_func_start FUN_ov17_02102318
FUN_ov17_02102318: ; 0x02102318
	stmfd sp!, {r4, r5, r6, r7, r8, lr}
	mov r7, #1
	mov r8, #2
	mov r6, #8
	mov r0, r8
	mov r1, r7
	mov r2, r7
	mov r3, r6
	bl FUN_ov17_0210d238
	mov r5, #0
	mov r4, #0x14
	mov r0, r8
	mov r1, r5
	mov r2, r4
	mov r3, r6
	bl FUN_ov17_0210d238
	mov r0, r7
	mov r1, r7
	bl FUN_ov17_0210dcd0
	mov r0, r5
	mov r1, r4
	bl FUN_ov17_0210dcd0
	ldr r0, _0210237C ; =FUN_ov17_02102380
	bl FUN_ov17_020f8ad4
	ldmfd sp!, {r4, r5, r6, r7, r8, pc}
_0210237C: .word FUN_ov17_02102380
	arm_func_end FUN_ov17_02102318

	arm_func_start FUN_ov17_02102380
FUN_ov17_02102380: ; 0x02102380
	stmfd sp!, {r3, r4, r5, lr}
	mov r5, #1
	mov r0, r5
	bl FUN_ov17_0210d214
	cmp r0, #0
	ldmnefd sp!, {r3, r4, r5, pc}
	mov r4, #0
	mov r0, r4
	bl FUN_ov17_0210d214
	cmp r0, #0
	ldmnefd sp!, {r3, r4, r5, pc}
	mov r1, #5
	mov r2, r5
	sub r3, r1, #6
	mov r0, #0x44
	str r4, [sp]
	bl FUN_ov17_02108e9c
	ldr r0, _021023D0 ; =FUN_ov17_021023d4
	bl FUN_ov17_020f8ad4
	ldmfd sp!, {r3, r4, r5, pc}
_021023D0: .word FUN_ov17_021023d4
	arm_func_end FUN_ov17_02102380

	arm_func_start FUN_ov17_021023d4
FUN_ov17_021023d4: ; 0x021023D4
	stmfd sp!, {r3, lr}
	bl FUN_ov17_021023fc
	bl FUN_ov17_02102400
	bl FUN_ov17_02109210
	cmp r0, #0
	ldmnefd sp!, {r3, pc}
	ldr r0, _021023F8 ; =FUN_ov17_02102404
	bl FUN_ov17_020f8ad4
	ldmfd sp!, {r3, pc}
_021023F8: .word FUN_ov17_02102404
	arm_func_end FUN_ov17_021023d4

	arm_func_start FUN_ov17_021023fc
FUN_ov17_021023fc: ; 0x021023FC
	bx lr
	arm_func_end FUN_ov17_021023fc

	arm_func_start FUN_ov17_02102400
FUN_ov17_02102400: ; 0x02102400
	bx lr
	arm_func_end FUN_ov17_02102400

	arm_func_start FUN_ov17_02102404
FUN_ov17_02102404: ; 0x02102404
	stmfd sp!, {r3, r4, r5, lr}
	mov r5, #3
	mov r1, #1
	mov r4, #8
	mov r0, r5
	mov r2, r1
	mov r3, r4
	bl FUN_ov17_0210d238
	mov r0, r5
	mov r3, r4
	mov r1, #0
	mov r2, #0x14
	bl FUN_ov17_0210d238
	ldr r0, _02102444 ; =FUN_ov17_02102448
	bl FUN_ov17_020f8ad4
	ldmfd sp!, {r3, r4, r5, pc}
_02102444: .word FUN_ov17_02102448
	arm_func_end FUN_ov17_02102404

	arm_func_start FUN_ov17_02102448
FUN_ov17_02102448: ; 0x02102448
	stmfd sp!, {r3, r4, r5, lr}
	mov r5, #1
	mov r0, r5
	bl FUN_ov17_0210d214
	cmp r0, #0
	ldmnefd sp!, {r3, r4, r5, pc}
	mov r4, #0
	mov r0, r4
	bl FUN_ov17_0210d214
	cmp r0, #0
	ldmnefd sp!, {r3, r4, r5, pc}
	bl FUN_ov17_020f4de8
	mov r0, r5
	mov r1, r5
	bl FUN_ov17_0210dd24
	mov r0, r4
	mov r1, #0x14
	bl FUN_ov17_0210dd24
	mov r1, r5
	mov r0, #2
	bl FUN_ov17_020f8ae4
	ldr r0, _021024A8 ; =FUN_ov17_02103924
	bl FUN_ov17_020f8ad4
	ldmfd sp!, {r3, r4, r5, pc}
_021024A8: .word FUN_ov17_02103924
	arm_func_end FUN_ov17_02102448

	arm_func_start FUN_ov17_021024ac
FUN_ov17_021024ac: ; 0x021024AC
	ldr r0, _021024C8 ; =0x02FFFFA8
	ldrh r0, [r0]
	and r0, r0, #0x8000
	movs r0, r0, asr #0xf
	movne r0, #1
	moveq r0, #0
	bx lr
_021024C8: .word 0x02FFFFA8
	arm_func_end FUN_ov17_021024ac

	arm_func_start FUN_ov17_021024cc
FUN_ov17_021024cc: ; 0x021024CC
	stmfd sp!, {r3, lr}
	ldr r0, _02102500 ; =0x02116258
	mov r1, #0
	strb r1, [r0]
	bl FUN_ov17_02102508
	bl FUN_ov17_020f5384
	mov r0, #0x25
	bl FUN_ov17_020f4f4c
	mov r0, #1
	bl FUN_ov17_020f44d0
	ldr r0, _02102504 ; =FUN_ov17_02102588
	bl FUN_ov17_020f8ad4
	ldmfd sp!, {r3, pc}
_02102500: .word 0x02116258
_02102504: .word FUN_ov17_02102588
	arm_func_end FUN_ov17_021024cc

	arm_func_start FUN_ov17_02102508
FUN_ov17_02102508: ; 0x02102508
	stmfd sp!, {r3, lr}
	ldr r0, _02102578 ; =0x021132B4
	ldr r1, _0210257C ; =FUN_020055bc
	bl FUN_ov17_020f4e84
	ldr r3, _02102580 ; =0x04001008
	ldr r1, _02102584 ; =0x0400000A
	ldrh r0, [r3]
	sub r2, r3, #0x1000
	bic r0, r0, #3
	orr r0, r0, #3
	strh r0, [r3]
	ldrh r0, [r3, #2]
	bic r0, r0, #3
	orr r0, r0, #3
	strh r0, [r3, #2]
	ldrh r0, [r2]
	bic r0, r0, #3
	orr r0, r0, #3
	strh r0, [r2]
	ldrh r0, [r1]
	bic r0, r0, #3
	orr r0, r0, #3
	strh r0, [r1]
	ldrh r0, [r1, #2]
	bic r0, r0, #3
	orr r0, r0, #3
	strh r0, [r1, #2]
	ldmfd sp!, {r3, pc}
_02102578: .word 0x021132B4
_0210257C: .word FUN_020055bc
_02102580: .word 0x04001008
_02102584: .word 0x0400000A
	arm_func_end FUN_ov17_02102508

	arm_func_start FUN_ov17_02102588
FUN_ov17_02102588: ; 0x02102588
	stmfd sp!, {r3, r4, r5, lr}
	mov r5, #0
	mov r4, #0x15
	mov r1, r5
	mov r2, r4
	mov r0, #2
	mov r3, #8
	bl FUN_ov17_0210d238
	mov r0, r5
	mov r1, r4
	bl FUN_ov17_0210dcd0
	ldr r0, _021025C0 ; =FUN_ov17_021025c4
	bl FUN_ov17_020f8ad4
	ldmfd sp!, {r3, r4, r5, pc}
_021025C0: .word FUN_ov17_021025c4
	arm_func_end FUN_ov17_02102588

	arm_func_start FUN_ov17_021025c4
FUN_ov17_021025c4: ; 0x021025C4
	stmfd sp!, {r3, lr}
	mov r0, #0
	bl FUN_ov17_0210d214
	cmp r0, #0
	ldmnefd sp!, {r3, pc}
	mov r0, #1
	bl FUN_ov17_020f4f14
	ldr r0, _021025EC ; =FUN_ov17_021025f0
	bl FUN_ov17_020f8ad4
	ldmfd sp!, {r3, pc}
_021025EC: .word FUN_ov17_021025f0
	arm_func_end FUN_ov17_021025c4

	arm_func_start FUN_ov17_021025f0
FUN_ov17_021025f0: ; 0x021025F0
	stmfd sp!, {r3, lr}
	bl FUN_ov17_020f47c4
	cmn r0, #2
	ldmeqfd sp!, {r3, pc}
	bl FUN_ov17_020f4834
	ldr r0, _02102610 ; =FUN_ov17_02102614
	bl FUN_ov17_020f8ad4
	ldmfd sp!, {r3, pc}
_02102610: .word FUN_ov17_02102614
	arm_func_end FUN_ov17_021025f0

	arm_func_start FUN_ov17_02102614
FUN_ov17_02102614: ; 0x02102614
	stmfd sp!, {r3, lr}
	mov r0, #0xa
	bl FUN_02001eb0
	bl FUN_ov17_021027fc
	bl FUN_ov17_02102634
	bl FUN_ov17_0210266c
	bl FUN_ov17_02102670
	ldmfd sp!, {r3, pc}
	arm_func_end FUN_ov17_02102614

	arm_func_start FUN_ov17_02102634
FUN_ov17_02102634: ; 0x02102634
	stmfd sp!, {r3, lr}
	mov r0, #2
	bl FUN_ov17_0210e4b8
	cmp r0, #0
	beq _02102654
	mov r0, #0
	bl FUN_ov17_020f47d8
	ldmfd sp!, {r3, pc}
_02102654:
	bl FUN_ov17_021024ac
	cmp r0, #0
	ldmeqfd sp!, {r3, pc}
	mov r0, #0
	bl FUN_ov17_020f47d8
	ldmfd sp!, {r3, pc}
	arm_func_end FUN_ov17_02102634

	arm_func_start FUN_ov17_0210266c
FUN_ov17_0210266c: ; 0x0210266C
	bx lr
	arm_func_end FUN_ov17_0210266c

	arm_func_start FUN_ov17_02102670
FUN_ov17_02102670: ; 0x02102670
	stmfd sp!, {r3, lr}
	bl FUN_ov17_020f47c4
	cmp r0, #0
	ldmnefd sp!, {r3, pc}
	bl FUN_ov17_02107ca8
	mov r0, #7
	bl FUN_ov17_02107c40
	ldr r0, _02102698 ; =FUN_ov17_0210269c
	bl FUN_ov17_020f8ad4
	ldmfd sp!, {r3, pc}
_02102698: .word FUN_ov17_0210269c
	arm_func_end FUN_ov17_02102670

	arm_func_start FUN_ov17_0210269c
FUN_ov17_0210269c: ; 0x0210269C
	stmfd sp!, {r3, lr}
	bl FUN_ov17_020f484c
	mov r0, #8
	bl FUN_ov17_0210d424
	ldr r0, _021026B8 ; =FUN_ov17_021026bc
	bl FUN_ov17_020f8ad4
	ldmfd sp!, {r3, pc}
_021026B8: .word FUN_ov17_021026bc
	arm_func_end FUN_ov17_0210269c

	arm_func_start FUN_ov17_021026bc
FUN_ov17_021026bc: ; 0x021026BC
	stmfd sp!, {r3, lr}
	mov r0, #1
	bl FUN_ov17_0210d214
	cmp r0, #0
	ldmnefd sp!, {r3, pc}
	ldr r0, _02102728 ; =0x02116258
	ldrb r0, [r0]
	cmp r0, #0
	bne _021026E4
	bl FUN_ov17_020f4794
_021026E4:
	ldr r0, _02102728 ; =0x02116258
	ldrb r0, [r0]
	cmp r0, #0
	bne _02102708
	mov r1, #1
	mov r2, r1
	mov r0, #3
	mov r3, #8
	bl FUN_ov17_0210d238
_02102708:
	mov r0, #3
	mov r1, #0
	mov r2, #0x15
	mov r3, #8
	bl FUN_ov17_0210d238
	ldr r0, _0210272C ; =FUN_ov17_02102730
	bl FUN_ov17_020f8ad4
	ldmfd sp!, {r3, pc}
_02102728: .word 0x02116258
_0210272C: .word FUN_ov17_02102730
	arm_func_end FUN_ov17_021026bc

	arm_func_start FUN_ov17_02102730
FUN_ov17_02102730: ; 0x02102730
	stmfd sp!, {r4, lr}
	mov r0, #0
	bl FUN_ov17_0210d214
	cmp r0, #0
	ldmnefd sp!, {r4, pc}
	ldr r0, _021027F0 ; =0x02116258
	ldrb r0, [r0]
	cmp r0, #0
	bne _02102764
	mov r0, #1
	bl FUN_ov17_0210d214
	cmp r0, #0
	ldmnefd sp!, {r4, pc}
_02102764:
	bl FUN_ov17_020f4808
	cmp r0, #0
	ldmeqfd sp!, {r4, pc}
	bl FUN_ov17_020f459c
	mov r0, #0
	bl FUN_ov17_0210d93c
	ldr r0, _021027F0 ; =0x02116258
	ldrb r0, [r0]
	cmp r0, #0
	bne _0210279C
	bl FUN_ov17_020f4de8
	mov r0, #1
	mov r1, r0
	bl FUN_ov17_0210dd24
_0210279C:
	mov r4, #0
	mov r0, r4
	mov r1, #0x15
	bl FUN_ov17_0210dd24
	ldr r0, _021027F0 ; =0x02116258
	ldrb r0, [r0]
	cmp r0, #0
	bne _021027D8
	bl FUN_ov17_020f9188
	mov r0, #2
	mov r1, #1
	bl FUN_ov17_020f8ae4
	ldr r0, _021027F4 ; =FUN_ov17_0210462c
	bl FUN_ov17_020f8ad4
	ldmfd sp!, {r4, pc}
_021027D8:
	mov r0, r4
	mov r1, r4
	bl FUN_ov17_020f8ae4
	ldr r0, _021027F8 ; =FUN_ov17_021028f8
	bl FUN_ov17_020f8ad4
	ldmfd sp!, {r4, pc}
_021027F0: .word 0x02116258
_021027F4: .word FUN_ov17_0210462c
_021027F8: .word FUN_ov17_021028f8
	arm_func_end FUN_ov17_02102730

	arm_func_start FUN_ov17_021027fc
FUN_ov17_021027fc: ; 0x021027FC
	stmfd sp!, {r3, r4, lr}
	sub sp, sp, #4
	bl FUN_ov17_020f91ac
	cmp r0, #2
	beq _02102820
	cmp r0, #4
	beq _0210283C
	add sp, sp, #4
	ldmfd sp!, {r3, r4, pc}
_02102820:
	ldr r1, _02102880 ; =0x02116258
	mov r2, #1
	ldr r0, _02102884 ; =FUN_ov17_0210269c
	strb r2, [r1]
	bl FUN_ov17_020f8ad4
	add sp, sp, #4
	ldmfd sp!, {r3, r4, pc}
_0210283C:
	ldr r0, _02102880 ; =0x02116258
	mov r4, #0
	strb r4, [r0]
	bl FUN_ov17_02107ca8
	mov r0, #9
	bl FUN_ov17_02107c40
	mov r1, #1
	mov r2, r1
	sub r3, r1, #2
	mov r0, #0xd
	str r4, [sp]
	bl FUN_ov17_02108e9c
	bl FUN_ov17_020f484c
	ldr r0, _02102888 ; =FUN_ov17_0210288c
	bl FUN_ov17_020f8ad4
	add sp, sp, #4
	ldmfd sp!, {r3, r4, pc}
_02102880: .word 0x02116258
_02102884: .word FUN_ov17_0210269c
_02102888: .word FUN_ov17_0210288c
	arm_func_end FUN_ov17_021027fc

	arm_func_start FUN_ov17_0210288c
FUN_ov17_0210288c: ; 0x0210288C
	stmfd sp!, {r3, lr}
	bl FUN_ov17_021091fc
	cmp r0, #0
	ldmnefd sp!, {r3, pc}
	mov r0, #6
	bl FUN_ov17_02107c40
	bl FUN_ov17_021091b8
	ldr r0, _021028B4 ; =FUN_ov17_021028b8
	bl FUN_ov17_020f8ad4
	ldmfd sp!, {r3, pc}
_021028B4: .word FUN_ov17_021028b8
	arm_func_end FUN_ov17_0210288c

	arm_func_start FUN_ov17_021028b8
FUN_ov17_021028b8: ; 0x021028B8
	stmfd sp!, {r3, lr}
	bl FUN_ov17_02109210
	cmp r0, #0
	ldmnefd sp!, {r3, pc}
	ldr r0, _021028D4 ; =FUN_ov17_0210269c
	bl FUN_ov17_020f8ad4
	ldmfd sp!, {r3, pc}
_021028D4: .word FUN_ov17_0210269c
	arm_func_end FUN_ov17_021028b8

	arm_func_start FUN_ov17_021028d8
FUN_ov17_021028d8: ; 0x021028D8
	ldr r0, _021028F4 ; =0x02FFFFA8
	ldrh r0, [r0]
	and r0, r0, #0x8000
	movs r0, r0, asr #0xf
	movne r0, #1
	moveq r0, #0
	bx lr
_021028F4: .word 0x02FFFFA8
	arm_func_end FUN_ov17_021028d8

	arm_func_start FUN_ov17_021028f8
FUN_ov17_021028f8: ; 0x021028F8
	stmfd sp!, {r3, lr}
	ldr r0, _0210292C ; =0x0211625C
	mov r1, #0
	strb r1, [r0]
	bl FUN_ov17_02102934
	bl FUN_ov17_020f5384
	mov r0, #0x2a
	bl FUN_ov17_020f4f4c
	mov r0, #2
	bl FUN_ov17_020f44d0
	ldr r0, _02102930 ; =FUN_ov17_021029b4
	bl FUN_ov17_020f8ad4
	ldmfd sp!, {r3, pc}
_0210292C: .word 0x0211625C
_02102930: .word FUN_ov17_021029b4
	arm_func_end FUN_ov17_021028f8

	arm_func_start FUN_ov17_02102934
FUN_ov17_02102934: ; 0x02102934
	stmfd sp!, {r3, lr}
	ldr r0, _021029A4 ; =0x021132C8
	ldr r1, _021029A8 ; =FUN_020055bc
	bl FUN_ov17_020f4e84
	ldr r3, _021029AC ; =0x04001008
	ldr r1, _021029B0 ; =0x0400000A
	ldrh r0, [r3]
	sub r2, r3, #0x1000
	bic r0, r0, #3
	orr r0, r0, #3
	strh r0, [r3]
	ldrh r0, [r3, #2]
	bic r0, r0, #3
	orr r0, r0, #3
	strh r0, [r3, #2]
	ldrh r0, [r2]
	bic r0, r0, #3
	orr r0, r0, #3
	strh r0, [r2]
	ldrh r0, [r1]
	bic r0, r0, #3
	orr r0, r0, #3
	strh r0, [r1]
	ldrh r0, [r1, #2]
	bic r0, r0, #3
	orr r0, r0, #3
	strh r0, [r1, #2]
	ldmfd sp!, {r3, pc}
_021029A4: .word 0x021132C8
_021029A8: .word FUN_020055bc
_021029AC: .word 0x04001008
_021029B0: .word 0x0400000A
	arm_func_end FUN_ov17_02102934

	arm_func_start FUN_ov17_021029b4
FUN_ov17_021029b4: ; 0x021029B4
	stmfd sp!, {r3, r4, r5, lr}
	mov r5, #0
	mov r4, #0x15
	mov r1, r5
	mov r2, r4
	mov r0, #2
	mov r3, #8
	bl FUN_ov17_0210d238
	mov r0, r5
	mov r1, r4
	bl FUN_ov17_0210dcd0
	ldr r0, _021029EC ; =FUN_ov17_021029f0
	bl FUN_ov17_020f8ad4
	ldmfd sp!, {r3, r4, r5, pc}
_021029EC: .word FUN_ov17_021029f0
	arm_func_end FUN_ov17_021029b4

	arm_func_start FUN_ov17_021029f0
FUN_ov17_021029f0: ; 0x021029F0
	stmfd sp!, {r3, lr}
	mov r0, #0
	bl FUN_ov17_0210d214
	cmp r0, #0
	ldmnefd sp!, {r3, pc}
	mov r0, #1
	bl FUN_ov17_020f4f14
	ldr r0, _02102A18 ; =FUN_ov17_02102a1c
	bl FUN_ov17_020f8ad4
	ldmfd sp!, {r3, pc}
_02102A18: .word FUN_ov17_02102a1c
	arm_func_end FUN_ov17_021029f0

	arm_func_start FUN_ov17_02102a1c
FUN_ov17_02102a1c: ; 0x02102A1C
	stmfd sp!, {r3, lr}
	bl FUN_ov17_020f47c4
	cmn r0, #2
	ldmeqfd sp!, {r3, pc}
	bl FUN_ov17_020f4834
	ldr r0, _02102A3C ; =FUN_ov17_02102a40
	bl FUN_ov17_020f8ad4
	ldmfd sp!, {r3, pc}
_02102A3C: .word FUN_ov17_02102a40
	arm_func_end FUN_ov17_02102a1c

	arm_func_start FUN_ov17_02102a40
FUN_ov17_02102a40: ; 0x02102A40
	stmfd sp!, {r3, lr}
	mov r0, #0xa
	bl FUN_02001eb0
	bl FUN_ov17_02102c0c
	bl FUN_ov17_02102a60
	bl FUN_ov17_02102a98
	bl FUN_ov17_02102a9c
	ldmfd sp!, {r3, pc}
	arm_func_end FUN_ov17_02102a40

	arm_func_start FUN_ov17_02102a60
FUN_ov17_02102a60: ; 0x02102A60
	stmfd sp!, {r3, lr}
	mov r0, #2
	bl FUN_ov17_0210e4b8
	cmp r0, #0
	beq _02102A80
	mov r0, #0
	bl FUN_ov17_020f47d8
	ldmfd sp!, {r3, pc}
_02102A80:
	bl FUN_ov17_021028d8
	cmp r0, #0
	ldmeqfd sp!, {r3, pc}
	mov r0, #0
	bl FUN_ov17_020f47d8
	ldmfd sp!, {r3, pc}
	arm_func_end FUN_ov17_02102a60

	arm_func_start FUN_ov17_02102a98
FUN_ov17_02102a98: ; 0x02102A98
	bx lr
	arm_func_end FUN_ov17_02102a98

	arm_func_start FUN_ov17_02102a9c
FUN_ov17_02102a9c: ; 0x02102A9C
	stmfd sp!, {r3, lr}
	bl FUN_ov17_020f47c4
	cmp r0, #0
	ldmnefd sp!, {r3, pc}
	bl FUN_ov17_02107ca8
	mov r0, #7
	bl FUN_ov17_02107c40
	ldr r0, _02102AC4 ; =FUN_ov17_02102ac8
	bl FUN_ov17_020f8ad4
	ldmfd sp!, {r3, pc}
_02102AC4: .word FUN_ov17_02102ac8
	arm_func_end FUN_ov17_02102a9c

	arm_func_start FUN_ov17_02102ac8
FUN_ov17_02102ac8: ; 0x02102AC8
	stmfd sp!, {r3, lr}
	bl FUN_ov17_020f484c
	mov r0, #8
	bl FUN_ov17_0210d424
	ldr r0, _02102AE4 ; =FUN_ov17_02102ae8
	bl FUN_ov17_020f8ad4
	ldmfd sp!, {r3, pc}
_02102AE4: .word FUN_ov17_02102ae8
	arm_func_end FUN_ov17_02102ac8

	arm_func_start FUN_ov17_02102ae8
FUN_ov17_02102ae8: ; 0x02102AE8
	stmfd sp!, {r4, lr}
	mov r4, #1
	mov r0, r4
	bl FUN_ov17_0210d214
	cmp r0, #0
	ldmnefd sp!, {r4, pc}
	bl FUN_ov17_020f4794
	ldr r0, _02102B48 ; =0x0211625C
	ldrb r0, [r0]
	cmp r0, #0
	bne _02102B28
	mov r1, r4
	mov r2, r4
	mov r0, #3
	mov r3, #8
	bl FUN_ov17_0210d238
_02102B28:
	mov r0, #3
	mov r1, #0
	mov r2, #0x15
	mov r3, #8
	bl FUN_ov17_0210d238
	ldr r0, _02102B4C ; =FUN_ov17_02102b50
	bl FUN_ov17_020f8ad4
	ldmfd sp!, {r4, pc}
_02102B48: .word 0x0211625C
_02102B4C: .word FUN_ov17_02102b50
	arm_func_end FUN_ov17_02102ae8

	arm_func_start FUN_ov17_02102b50
FUN_ov17_02102b50: ; 0x02102B50
	stmfd sp!, {r3, lr}
	mov r0, #0
	bl FUN_ov17_0210d214
	cmp r0, #0
	ldmnefd sp!, {r3, pc}
	ldr r0, _02102C00 ; =0x0211625C
	ldrb r0, [r0]
	cmp r0, #0
	bne _02102B84
	mov r0, #1
	bl FUN_ov17_0210d214
	cmp r0, #0
	ldmnefd sp!, {r3, pc}
_02102B84:
	bl FUN_ov17_020f4808
	cmp r0, #0
	ldmeqfd sp!, {r3, pc}
	bl FUN_ov17_020f459c
	mov r0, #0
	bl FUN_ov17_0210d93c
	ldr r0, _02102C00 ; =0x0211625C
	ldrb r0, [r0]
	cmp r0, #0
	bne _02102BBC
	bl FUN_ov17_020f4de8
	mov r0, #1
	mov r1, r0
	bl FUN_ov17_0210dd24
_02102BBC:
	bl FUN_ov17_020f9188
	ldr r0, _02102C00 ; =0x0211625C
	ldrb r0, [r0]
	cmp r0, #0
	bne _02102BE8
	mov r0, #2
	mov r1, #1
	bl FUN_ov17_020f8ae4
	ldr r0, _02102C04 ; =FUN_ov17_0210462c
	bl FUN_ov17_020f8ad4
	ldmfd sp!, {r3, pc}
_02102BE8:
	mov r0, #0
	mov r1, r0
	bl FUN_ov17_020f8ae4
	ldr r0, _02102C08 ; =FUN_ov17_02102d3c
	bl FUN_ov17_020f8ad4
	ldmfd sp!, {r3, pc}
_02102C00: .word 0x0211625C
_02102C04: .word FUN_ov17_0210462c
_02102C08: .word FUN_ov17_02102d3c
	arm_func_end FUN_ov17_02102b50

	arm_func_start FUN_ov17_02102c0c
FUN_ov17_02102c0c: ; 0x02102C0C
	stmfd sp!, {r3, r4, lr}
	sub sp, sp, #4
	bl FUN_ov17_020f91ac
	cmp r0, #3
	beq _02102C38
	cmp r0, #4
	beq _02102C5C
	cmp r0, #5
	beq _02102CA0
	add sp, sp, #4
	ldmfd sp!, {r3, r4, pc}
_02102C38:
	ldr r0, _02102CE4 ; =0x0211625C
	mov r1, #1
	strb r1, [r0]
	bl FUN_ov17_02107ca8
	bl FUN_ov17_020f9264
	ldr r0, _02102CE8 ; =FUN_ov17_02102ac8
	bl FUN_ov17_020f8ad4
	add sp, sp, #4
	ldmfd sp!, {r3, r4, pc}
_02102C5C:
	ldr r0, _02102CE4 ; =0x0211625C
	mov r4, #0
	strb r4, [r0]
	bl FUN_ov17_02107ca8
	mov r0, #9
	bl FUN_ov17_02107c40
	mov r1, #1
	mov r2, r1
	sub r3, r1, #2
	mov r0, #0xd
	str r4, [sp]
	bl FUN_ov17_02108e9c
	bl FUN_ov17_020f484c
	ldr r0, _02102CEC ; =FUN_ov17_02102cf0
	bl FUN_ov17_020f8ad4
	add sp, sp, #4
	ldmfd sp!, {r3, r4, pc}
_02102CA0:
	ldr r0, _02102CE4 ; =0x0211625C
	mov r4, #0
	strb r4, [r0]
	bl FUN_ov17_02107ca8
	mov r0, #0x12
	bl FUN_ov17_02107c40
	mov r1, #1
	mov r2, r1
	sub r3, r1, #2
	mov r0, #0xe
	str r4, [sp]
	bl FUN_ov17_02108e9c
	bl FUN_ov17_020f484c
	ldr r0, _02102CEC ; =FUN_ov17_02102cf0
	bl FUN_ov17_020f8ad4
	add sp, sp, #4
	ldmfd sp!, {r3, r4, pc}
_02102CE4: .word 0x0211625C
_02102CE8: .word FUN_ov17_02102ac8
_02102CEC: .word FUN_ov17_02102cf0
	arm_func_end FUN_ov17_02102c0c

	arm_func_start FUN_ov17_02102cf0
FUN_ov17_02102cf0: ; 0x02102CF0
	stmfd sp!, {r3, lr}
	bl FUN_ov17_021091fc
	cmp r0, #0
	ldmnefd sp!, {r3, pc}
	mov r0, #6
	bl FUN_ov17_02107c40
	bl FUN_ov17_021091b8
	ldr r0, _02102D18 ; =FUN_ov17_02102d1c
	bl FUN_ov17_020f8ad4
	ldmfd sp!, {r3, pc}
_02102D18: .word FUN_ov17_02102d1c
	arm_func_end FUN_ov17_02102cf0

	arm_func_start FUN_ov17_02102d1c
FUN_ov17_02102d1c: ; 0x02102D1C
	stmfd sp!, {r3, lr}
	bl FUN_ov17_02109210
	cmp r0, #0
	ldmnefd sp!, {r3, pc}
	ldr r0, _02102D38 ; =FUN_ov17_02102ac8
	bl FUN_ov17_020f8ad4
	ldmfd sp!, {r3, pc}
_02102D38: .word FUN_ov17_02102ac8
	arm_func_end FUN_ov17_02102d1c

	arm_func_start FUN_ov17_02102d3c
FUN_ov17_02102d3c: ; 0x02102D3C
	stmfd sp!, {r3, lr}
	ldr r0, _02102D70 ; =0x02116260
	mov r1, #0
	strb r1, [r0]
	bl FUN_ov17_02102d78
	bl FUN_ov17_020f5384
	mov r0, #0x26
	bl FUN_ov17_020f4f4c
	mov r0, #0x10
	bl FUN_ov17_02107c40
	ldr r0, _02102D74 ; =FUN_ov17_02102df8
	bl FUN_ov17_020f8ad4
	ldmfd sp!, {r3, pc}
_02102D70: .word 0x02116260
_02102D74: .word FUN_ov17_02102df8
	arm_func_end FUN_ov17_02102d3c

	arm_func_start FUN_ov17_02102d78
FUN_ov17_02102d78: ; 0x02102D78
	stmfd sp!, {r3, lr}
	ldr r0, _02102DE8 ; =0x021132DC
	ldr r1, _02102DEC ; =FUN_020055bc
	bl FUN_ov17_020f4e84
	ldr r3, _02102DF0 ; =0x04001008
	ldr r1, _02102DF4 ; =0x0400000A
	ldrh r0, [r3]
	sub r2, r3, #0x1000
	bic r0, r0, #3
	orr r0, r0, #3
	strh r0, [r3]
	ldrh r0, [r3, #2]
	bic r0, r0, #3
	orr r0, r0, #3
	strh r0, [r3, #2]
	ldrh r0, [r2]
	bic r0, r0, #3
	orr r0, r0, #3
	strh r0, [r2]
	ldrh r0, [r1]
	bic r0, r0, #3
	orr r0, r0, #3
	strh r0, [r1]
	ldrh r0, [r1, #2]
	bic r0, r0, #3
	orr r0, r0, #3
	strh r0, [r1, #2]
	ldmfd sp!, {r3, pc}
_02102DE8: .word 0x021132DC
_02102DEC: .word FUN_020055bc
_02102DF0: .word 0x04001008
_02102DF4: .word 0x0400000A
	arm_func_end FUN_ov17_02102d78

	arm_func_start FUN_ov17_02102df8
FUN_ov17_02102df8: ; 0x02102DF8
	stmfd sp!, {r3, r4, r5, lr}
	mov r5, #0
	mov r4, #0x15
	mov r1, r5
	mov r2, r4
	mov r0, #2
	mov r3, #8
	bl FUN_ov17_0210d238
	mov r0, r5
	mov r1, r4
	bl FUN_ov17_0210dcd0
	ldr r0, _02102E30 ; =FUN_ov17_02102e34
	bl FUN_ov17_020f8ad4
	ldmfd sp!, {r3, r4, r5, pc}
_02102E30: .word FUN_ov17_02102e34
	arm_func_end FUN_ov17_02102df8

	arm_func_start FUN_ov17_02102e34
FUN_ov17_02102e34: ; 0x02102E34
	stmfd sp!, {r3, lr}
	mov r0, #0
	bl FUN_ov17_0210d214
	cmp r0, #0
	ldmnefd sp!, {r3, pc}
	ldr r0, _02102E54 ; =FUN_ov17_02102e58
	bl FUN_ov17_020f8ad4
	ldmfd sp!, {r3, pc}
_02102E54: .word FUN_ov17_02102e58
	arm_func_end FUN_ov17_02102e34

	arm_func_start FUN_ov17_02102e58
FUN_ov17_02102e58: ; 0x02102E58
	stmfd sp!, {r3, lr}
	bl FUN_ov17_02102f28
	bl FUN_ov17_02102e68
	ldmfd sp!, {r3, pc}
	arm_func_end FUN_ov17_02102e58

	arm_func_start FUN_ov17_02102e68
FUN_ov17_02102e68: ; 0x02102E68
	bx lr
	arm_func_end FUN_ov17_02102e68

	arm_func_start FUN_ov17_02102e6c
FUN_ov17_02102e6c: ; 0x02102E6C
	stmfd sp!, {r3, r4, r5, lr}
	mov r5, #3
	mov r1, #1
	mov r4, #8
	mov r0, r5
	mov r2, r1
	mov r3, r4
	bl FUN_ov17_0210d238
	mov r0, r5
	mov r3, r4
	mov r1, #0
	mov r2, #0x15
	bl FUN_ov17_0210d238
	ldr r0, _02102EAC ; =FUN_ov17_02102eb0
	bl FUN_ov17_020f8ad4
	ldmfd sp!, {r3, r4, r5, pc}
_02102EAC: .word FUN_ov17_02102eb0
	arm_func_end FUN_ov17_02102e6c

	arm_func_start FUN_ov17_02102eb0
FUN_ov17_02102eb0: ; 0x02102EB0
	stmfd sp!, {r3, r4, r5, lr}
	mov r5, #1
	mov r0, r5
	bl FUN_ov17_0210d214
	cmp r0, #0
	ldmnefd sp!, {r3, r4, r5, pc}
	mov r4, #0
	mov r0, r4
	bl FUN_ov17_0210d214
	cmp r0, #0
	ldmnefd sp!, {r3, r4, r5, pc}
	mov r0, r4
	bl FUN_ov17_0210d93c
	bl FUN_ov17_020f4de8
	mov r0, r5
	mov r1, r5
	bl FUN_ov17_0210dd24
	mov r0, r4
	mov r1, #0x15
	bl FUN_ov17_0210dd24
	mov r0, r4
	mov r1, r4
	bl FUN_ov17_020f8ae4
	mov r0, r4
	mov r1, r5
	bl FUN_ov17_020f8b20
	ldr r0, _02102F24 ; =FUN_ov17_021054a0
	bl FUN_ov17_020f8ad4
	ldmfd sp!, {r3, r4, r5, pc}
_02102F24: .word FUN_ov17_021054a0
	arm_func_end FUN_ov17_02102eb0

	arm_func_start FUN_ov17_02102f28
FUN_ov17_02102f28: ; 0x02102F28
	stmfd sp!, {r3, lr}
	ldr r1, _02102F54 ; =0x02116260
	ldrb r0, [r1]
	add r0, r0, #1
	and r2, r0, #0xff
	strb r0, [r1]
	cmp r2, #0x78
	ldmlofd sp!, {r3, pc}
	ldr r0, _02102F58 ; =FUN_ov17_02102e6c
	bl FUN_ov17_020f8ad4
	ldmfd sp!, {r3, pc}
_02102F54: .word 0x02116260
_02102F58: .word FUN_ov17_02102e6c
	arm_func_end FUN_ov17_02102f28

	arm_func_start FUN_ov17_02102f5c
FUN_ov17_02102f5c: ; 0x02102F5C
	ldr r0, _02102F78 ; =0x02FFFFA8
	ldrh r0, [r0]
	and r0, r0, #0x8000
	movs r0, r0, asr #0xf
	movne r0, #1
	moveq r0, #0
	bx lr
_02102F78: .word 0x02FFFFA8
	arm_func_end FUN_ov17_02102f5c

	arm_func_start FUN_ov17_02102f7c
FUN_ov17_02102f7c: ; 0x02102F7C
	stmfd sp!, {r4, lr}
	ldr r0, _02102FD0 ; =0x02116264
	mov r4, #0
	strb r4, [r0]
	bl FUN_ov17_02102fd8
	bl FUN_ov17_020f5384
	mov r0, #0x37
	mov r2, r4
	sub r1, r0, #0x38
	bl FUN_ov17_020f4d10
	mov r0, #2
	bl FUN_ov17_020f4ec4
	mov r0, #0x24
	bl FUN_ov17_020f4f4c
	mov r0, r4
	bl FUN_ov17_020f44d0
	mov r0, #0xb
	bl FUN_ov17_02107c40
	ldr r0, _02102FD4 ; =FUN_ov17_02103080
	bl FUN_ov17_020f8ad4
	ldmfd sp!, {r4, pc}
_02102FD0: .word 0x02116264
_02102FD4: .word FUN_ov17_02103080
	arm_func_end FUN_ov17_02102f7c

	arm_func_start FUN_ov17_02102fd8
FUN_ov17_02102fd8: ; 0x02102FD8
	stmfd sp!, {r3, lr}
	ldr r0, _02103060 ; =0x021132F0
	ldr r1, _02103064 ; =0x0200593C
	bl FUN_ov17_020f4e84
	ldr r0, _02103068 ; =0x02113308
	ldr r1, _0210306C ; =FUN_020050fc
	bl FUN_ov17_020f4e84
	ldr r0, _02103070 ; =0x02113320
	ldr r1, _02103074 ; =FUN_020055bc
	bl FUN_ov17_020f4e84
	ldr r3, _02103078 ; =0x04001008
	ldr r1, _0210307C ; =0x0400000A
	ldrh r0, [r3]
	sub r2, r3, #0x1000
	bic r0, r0, #3
	orr r0, r0, #3
	strh r0, [r3]
	ldrh r0, [r3, #2]
	bic r0, r0, #3
	orr r0, r0, #3
	strh r0, [r3, #2]
	ldrh r0, [r2]
	bic r0, r0, #3
	orr r0, r0, #3
	strh r0, [r2]
	ldrh r0, [r1]
	bic r0, r0, #3
	orr r0, r0, #3
	strh r0, [r1]
	ldrh r0, [r1, #2]
	bic r0, r0, #3
	orr r0, r0, #3
	strh r0, [r1, #2]
	ldmfd sp!, {r3, pc}
_02103060: .word 0x021132F0
_02103064: .word 0x0200593C
_02103068: .word 0x02113308
_0210306C: .word FUN_020050fc
_02103070: .word 0x02113320
_02103074: .word FUN_020055bc
_02103078: .word 0x04001008
_0210307C: .word 0x0400000A
	arm_func_end FUN_ov17_02102fd8

	arm_func_start FUN_ov17_02103080
FUN_ov17_02103080: ; 0x02103080
	stmfd sp!, {r4, r5, r6, r7, r8, lr}
	mov r7, #1
	mov r8, #2
	mov r6, #8
	mov r0, r8
	mov r1, r7
	mov r2, r7
	mov r3, r6
	bl FUN_ov17_0210d238
	mov r5, #0
	mov r4, #0x15
	mov r0, r8
	mov r1, r5
	mov r2, r4
	mov r3, r6
	bl FUN_ov17_0210d238
	mov r0, r7
	mov r1, r7
	bl FUN_ov17_0210dcd0
	mov r0, r5
	mov r1, r4
	bl FUN_ov17_0210dcd0
	ldr r0, _021030E4 ; =FUN_ov17_021030e8
	bl FUN_ov17_020f8ad4
	ldmfd sp!, {r4, r5, r6, r7, r8, pc}
_021030E4: .word FUN_ov17_021030e8
	arm_func_end FUN_ov17_02103080

	arm_func_start FUN_ov17_021030e8
FUN_ov17_021030e8: ; 0x021030E8
	stmfd sp!, {r4, lr}
	mov r4, #1
	mov r0, r4
	bl FUN_ov17_0210d214
	cmp r0, #0
	ldmnefd sp!, {r4, pc}
	mov r0, #0
	bl FUN_ov17_0210d214
	cmp r0, #0
	ldmnefd sp!, {r4, pc}
	bl FUN_ov17_020f911c
	mov r0, r4
	bl FUN_ov17_020f4f14
	ldr r0, _02103128 ; =FUN_ov17_0210312c
	bl FUN_ov17_020f8ad4
	ldmfd sp!, {r4, pc}
_02103128: .word FUN_ov17_0210312c
	arm_func_end FUN_ov17_021030e8

	arm_func_start FUN_ov17_0210312c
FUN_ov17_0210312c: ; 0x0210312C
	stmfd sp!, {r3, lr}
	bl FUN_ov17_020f47c4
	cmn r0, #2
	ldmeqfd sp!, {r3, pc}
	bl FUN_ov17_020f4834
	ldr r0, _0210314C ; =FUN_ov17_02103150
	bl FUN_ov17_020f8ad4
	ldmfd sp!, {r3, pc}
_0210314C: .word FUN_ov17_02103150
	arm_func_end FUN_ov17_0210312c

	arm_func_start FUN_ov17_02103150
FUN_ov17_02103150: ; 0x02103150
	stmfd sp!, {r3, lr}
	mov r0, #0xa
	bl FUN_02001eb0
	bl FUN_ov17_02103338
	bl FUN_ov17_02103170
	bl FUN_ov17_021031a8
	bl FUN_ov17_021031ac
	ldmfd sp!, {r3, pc}
	arm_func_end FUN_ov17_02103150

	arm_func_start FUN_ov17_02103170
FUN_ov17_02103170: ; 0x02103170
	stmfd sp!, {r3, lr}
	mov r0, #2
	bl FUN_ov17_0210e4b8
	cmp r0, #0
	beq _02103190
	mov r0, #0
	bl FUN_ov17_020f47d8
	ldmfd sp!, {r3, pc}
_02103190:
	bl FUN_ov17_02102f5c
	cmp r0, #0
	ldmeqfd sp!, {r3, pc}
	mov r0, #0
	bl FUN_ov17_020f47d8
	ldmfd sp!, {r3, pc}
	arm_func_end FUN_ov17_02103170

	arm_func_start FUN_ov17_021031a8
FUN_ov17_021031a8: ; 0x021031A8
	bx lr
	arm_func_end FUN_ov17_021031a8

	arm_func_start FUN_ov17_021031ac
FUN_ov17_021031ac: ; 0x021031AC
	stmfd sp!, {r3, lr}
	bl FUN_ov17_020f47c4
	cmp r0, #0
	ldmnefd sp!, {r3, pc}
	bl FUN_ov17_02107ca8
	mov r0, #7
	bl FUN_ov17_02107c40
	ldr r0, _021031D4 ; =FUN_ov17_021031d8
	bl FUN_ov17_020f8ad4
	ldmfd sp!, {r3, pc}
_021031D4: .word FUN_ov17_021031d8
	arm_func_end FUN_ov17_021031ac

	arm_func_start FUN_ov17_021031d8
FUN_ov17_021031d8: ; 0x021031D8
	stmfd sp!, {r3, lr}
	bl FUN_ov17_020f484c
	mov r0, #8
	bl FUN_ov17_0210d424
	ldr r0, _021031F4 ; =FUN_ov17_021031f8
	bl FUN_ov17_020f8ad4
	ldmfd sp!, {r3, pc}
_021031F4: .word FUN_ov17_021031f8
	arm_func_end FUN_ov17_021031d8

	arm_func_start FUN_ov17_021031f8
FUN_ov17_021031f8: ; 0x021031F8
	stmfd sp!, {r3, lr}
	mov r0, #1
	bl FUN_ov17_0210d214
	cmp r0, #0
	ldmnefd sp!, {r3, pc}
	ldr r0, _02103264 ; =0x02116264
	ldrb r0, [r0]
	cmp r0, #0
	bne _02103220
	bl FUN_ov17_020f4794
_02103220:
	ldr r0, _02103264 ; =0x02116264
	ldrb r0, [r0]
	cmp r0, #0
	bne _02103244
	mov r1, #1
	mov r2, r1
	mov r0, #3
	mov r3, #8
	bl FUN_ov17_0210d238
_02103244:
	mov r0, #3
	mov r1, #0
	mov r2, #0x14
	mov r3, #8
	bl FUN_ov17_0210d238
	ldr r0, _02103268 ; =FUN_ov17_0210326c
	bl FUN_ov17_020f8ad4
	ldmfd sp!, {r3, pc}
_02103264: .word 0x02116264
_02103268: .word FUN_ov17_0210326c
	arm_func_end FUN_ov17_021031f8

	arm_func_start FUN_ov17_0210326c
FUN_ov17_0210326c: ; 0x0210326C
	stmfd sp!, {r4, lr}
	mov r0, #0
	bl FUN_ov17_0210d214
	cmp r0, #0
	ldmnefd sp!, {r4, pc}
	ldr r0, _0210332C ; =0x02116264
	ldrb r0, [r0]
	cmp r0, #0
	bne _021032A0
	mov r0, #1
	bl FUN_ov17_0210d214
	cmp r0, #0
	ldmnefd sp!, {r4, pc}
_021032A0:
	bl FUN_ov17_020f4808
	cmp r0, #0
	ldmeqfd sp!, {r4, pc}
	bl FUN_ov17_020f459c
	mov r0, #0
	bl FUN_ov17_0210d93c
	ldr r0, _0210332C ; =0x02116264
	ldrb r0, [r0]
	cmp r0, #0
	bne _021032D8
	bl FUN_ov17_020f4de8
	mov r0, #1
	mov r1, r0
	bl FUN_ov17_0210dd24
_021032D8:
	mov r4, #0
	mov r0, r4
	mov r1, #0x15
	bl FUN_ov17_0210dd24
	ldr r0, _0210332C ; =0x02116264
	ldrb r0, [r0]
	cmp r0, #0
	bne _02103314
	bl FUN_ov17_020f9188
	mov r0, #2
	mov r1, #1
	bl FUN_ov17_020f8ae4
	ldr r0, _02103330 ; =FUN_ov17_0210462c
	bl FUN_ov17_020f8ad4
	ldmfd sp!, {r4, pc}
_02103314:
	mov r0, r4
	mov r1, r4
	bl FUN_ov17_020f8ae4
	ldr r0, _02103334 ; =FUN_ov17_021024cc
	bl FUN_ov17_020f8ad4
	ldmfd sp!, {r4, pc}
_0210332C: .word 0x02116264
_02103330: .word FUN_ov17_0210462c
_02103334: .word FUN_ov17_021024cc
	arm_func_end FUN_ov17_0210326c

	arm_func_start FUN_ov17_02103338
FUN_ov17_02103338: ; 0x02103338
	stmfd sp!, {r3, r4, lr}
	sub sp, sp, #4
	bl FUN_ov17_020f91ac
	cmp r0, #1
	beq _0210335C
	cmp r0, #4
	beq _02103378
	add sp, sp, #4
	ldmfd sp!, {r3, r4, pc}
_0210335C:
	ldr r1, _021033BC ; =0x02116264
	mov r2, #1
	ldr r0, _021033C0 ; =FUN_ov17_021031d8
	strb r2, [r1]
	bl FUN_ov17_020f8ad4
	add sp, sp, #4
	ldmfd sp!, {r3, r4, pc}
_02103378:
	ldr r0, _021033BC ; =0x02116264
	mov r4, #0
	strb r4, [r0]
	bl FUN_ov17_02107ca8
	mov r0, #9
	bl FUN_ov17_02107c40
	mov r1, #1
	mov r2, r1
	sub r3, r1, #2
	mov r0, #0xd
	str r4, [sp]
	bl FUN_ov17_02108e9c
	bl FUN_ov17_020f484c
	ldr r0, _021033C4 ; =FUN_ov17_021033c8
	bl FUN_ov17_020f8ad4
	add sp, sp, #4
	ldmfd sp!, {r3, r4, pc}
_021033BC: .word 0x02116264
_021033C0: .word FUN_ov17_021031d8
_021033C4: .word FUN_ov17_021033c8
	arm_func_end FUN_ov17_02103338

	arm_func_start FUN_ov17_021033c8
FUN_ov17_021033c8: ; 0x021033C8
	stmfd sp!, {r3, lr}
	bl FUN_ov17_021091fc
	cmp r0, #0
	ldmnefd sp!, {r3, pc}
	mov r0, #6
	bl FUN_ov17_02107c40
	bl FUN_ov17_021091b8
	ldr r0, _021033F0 ; =FUN_ov17_021033f4
	bl FUN_ov17_020f8ad4
	ldmfd sp!, {r3, pc}
_021033F0: .word FUN_ov17_021033f4
	arm_func_end FUN_ov17_021033c8

	arm_func_start FUN_ov17_021033f4
FUN_ov17_021033f4: ; 0x021033F4
	stmfd sp!, {r3, lr}
	bl FUN_ov17_02109210
	cmp r0, #0
	ldmnefd sp!, {r3, pc}
	ldr r0, _02103410 ; =FUN_ov17_021031d8
	bl FUN_ov17_020f8ad4
	ldmfd sp!, {r3, pc}
_02103410: .word FUN_ov17_021031d8
	arm_func_end FUN_ov17_021033f4

	arm_func_start FUN_ov17_02103414
FUN_ov17_02103414: ; 0x02103414
	stmfd sp!, {r3, r4, r5, lr}
	ldr r0, _02103478 ; =0x02116268
	mov r5, #0
	strh r5, [r0, #2]
	strb r5, [r0]
	bl FUN_ov17_02103480
	mov r4, #0x33
	mov r0, r4
	mov r2, r5
	sub r1, r4, #0x34
	bl FUN_ov17_020f4d10
	bl FUN_ov17_020f5384
	mov r0, #2
	bl FUN_ov17_020f4ec4
	mov r0, r4
	bl FUN_ov17_020f4f4c
	mov r0, r5
	bl FUN_ov17_020f44d0
	bl FUN_ov17_02106bb4
	bl FUN_ov17_02106c18
	mov r0, #0xa
	bl FUN_ov17_02107c40
	ldr r0, _0210347C ; =FUN_ov17_02103528
	bl FUN_ov17_020f8ad4
	ldmfd sp!, {r3, r4, r5, pc}
_02103478: .word 0x02116268
_0210347C: .word FUN_ov17_02103528
	arm_func_end FUN_ov17_02103414

	arm_func_start FUN_ov17_02103480
FUN_ov17_02103480: ; 0x02103480
	stmfd sp!, {r3, lr}
	ldr r0, _02103508 ; =0x02113334
	ldr r1, _0210350C ; =0x0200593C
	bl FUN_ov17_020f4e84
	ldr r0, _02103510 ; =0x0211334C
	ldr r1, _02103514 ; =FUN_020050fc
	bl FUN_ov17_020f4e84
	ldr r0, _02103518 ; =0x02113364
	ldr r1, _0210351C ; =FUN_020055bc
	bl FUN_ov17_020f4e84
	ldr r3, _02103520 ; =0x04001008
	ldr r1, _02103524 ; =0x0400000A
	ldrh r0, [r3]
	sub r2, r3, #0x1000
	bic r0, r0, #3
	orr r0, r0, #3
	strh r0, [r3]
	ldrh r0, [r3, #2]
	bic r0, r0, #3
	orr r0, r0, #3
	strh r0, [r3, #2]
	ldrh r0, [r2]
	bic r0, r0, #3
	orr r0, r0, #3
	strh r0, [r2]
	ldrh r0, [r1]
	bic r0, r0, #3
	orr r0, r0, #3
	strh r0, [r1]
	ldrh r0, [r1, #2]
	bic r0, r0, #3
	orr r0, r0, #3
	strh r0, [r1, #2]
	ldmfd sp!, {r3, pc}
_02103508: .word 0x02113334
_0210350C: .word 0x0200593C
_02103510: .word 0x0211334C
_02103514: .word FUN_020050fc
_02103518: .word 0x02113364
_0210351C: .word FUN_020055bc
_02103520: .word 0x04001008
_02103524: .word 0x0400000A
	arm_func_end FUN_ov17_02103480

	arm_func_start FUN_ov17_02103528
FUN_ov17_02103528: ; 0x02103528
	stmfd sp!, {r4, r5, r6, r7, r8, lr}
	mov r7, #1
	mov r8, #2
	mov r6, #8
	mov r0, r8
	mov r1, r7
	mov r2, r7
	mov r3, r6
	bl FUN_ov17_0210d238
	mov r5, #0
	mov r4, #0x15
	mov r0, r8
	mov r1, r5
	mov r2, r4
	mov r3, r6
	bl FUN_ov17_0210d238
	mov r0, r7
	mov r1, r7
	bl FUN_ov17_0210dcd0
	mov r0, r5
	mov r1, r4
	bl FUN_ov17_0210dcd0
	ldr r0, _0210358C ; =FUN_ov17_02103590
	bl FUN_ov17_020f8ad4
	ldmfd sp!, {r4, r5, r6, r7, r8, pc}
_0210358C: .word FUN_ov17_02103590
	arm_func_end FUN_ov17_02103528

	arm_func_start FUN_ov17_02103590
FUN_ov17_02103590: ; 0x02103590
	stmfd sp!, {r4, lr}
	mov r4, #1
	mov r0, r4
	bl FUN_ov17_0210d214
	cmp r0, #0
	ldmnefd sp!, {r4, pc}
	mov r0, #0
	bl FUN_ov17_0210d214
	cmp r0, #0
	ldmnefd sp!, {r4, pc}
	mov r0, r4
	bl FUN_ov17_020f4f14
	ldr r0, _021035CC ; =FUN_ov17_021035d0
	bl FUN_ov17_020f8ad4
	ldmfd sp!, {r4, pc}
_021035CC: .word FUN_ov17_021035d0
	arm_func_end FUN_ov17_02103590

	arm_func_start FUN_ov17_021035d0
FUN_ov17_021035d0: ; 0x021035D0
	stmfd sp!, {r3, lr}
	bl FUN_ov17_020f47c4
	cmn r0, #2
	ldmeqfd sp!, {r3, pc}
	bl FUN_ov17_020f4834
	ldr r0, _021035F0 ; =FUN_ov17_021035f4
	bl FUN_ov17_020f8ad4
	ldmfd sp!, {r3, pc}
_021035F0: .word FUN_ov17_021035f4
	arm_func_end FUN_ov17_021035d0

	arm_func_start FUN_ov17_021035f4
FUN_ov17_021035f4: ; 0x021035F4
	stmfd sp!, {r3, lr}
	bl FUN_ov17_02103734
	bl FUN_ov17_02103758
	bl FUN_ov17_0210375c
	bl FUN_ov17_0210360c
	ldmfd sp!, {r3, pc}
	arm_func_end FUN_ov17_021035f4

	arm_func_start FUN_ov17_0210360c
FUN_ov17_0210360c: ; 0x0210360C
	stmfd sp!, {r4, lr}
	sub sp, sp, #8
	ldr r4, _02103728 ; =0x02116268
	ldrh r0, [r4, #2]
	add r0, r0, #1
	strh r0, [r4, #2]
	ldrh r0, [r4, #2]
	cmp r0, #0x12c
	addlo sp, sp, #8
	ldmlofd sp!, {r4, pc}
	bl FUN_ov17_02107ca8
	add r0, sp, #4
	bl FUN_ov17_02106da8
	cmp r0, #0
	bne _02103688
	mov r1, #1
	mov r0, #2
	strb r0, [r4]
	mov r4, #0
	mov r2, r1
	sub r3, r1, #2
	mov r0, #0xf
	str r4, [sp]
	bl FUN_ov17_02108e9c
	mov r0, #0x12
	bl FUN_ov17_02107c40
	bl FUN_ov17_020f484c
	ldr r0, _0210372C ; =FUN_ov17_021038d8
	bl FUN_ov17_020f8ad4
	add sp, sp, #8
	ldmfd sp!, {r4, pc}
_02103688:
	cmp r0, #0
	mov r3, #0
	ble _021036B8
	ldr r4, [sp, #4]
	mov r1, #0x2a
_0210369C:
	mla r2, r3, r1, r4
	ldrb r2, [r2, #0x28]
	cmp r2, #2
	bne _021036B8
	add r3, r3, #1
	cmp r3, r0
	blt _0210369C
_021036B8:
	cmp r3, r0
	bne _02103704
	ldr r0, _02103728 ; =0x02116268
	mov r1, #1
	mov r3, #3
	strb r3, [r0]
	mov r4, #0
	mov r2, r1
	sub r3, r1, #2
	mov r0, #0xe
	str r4, [sp]
	bl FUN_ov17_02108e9c
	mov r0, #0x12
	bl FUN_ov17_02107c40
	bl FUN_ov17_020f484c
	ldr r0, _0210372C ; =FUN_ov17_021038d8
	bl FUN_ov17_020f8ad4
	add sp, sp, #8
	ldmfd sp!, {r4, pc}
_02103704:
	ldr r1, _02103728 ; =0x02116268
	mov r2, #1
	mov r0, #0xf
	strb r2, [r1]
	bl FUN_ov17_02107c40
	ldr r0, _02103730 ; =FUN_ov17_02103788
	bl FUN_ov17_020f8ad4
	add sp, sp, #8
	ldmfd sp!, {r4, pc}
_02103728: .word 0x02116268
_0210372C: .word FUN_ov17_021038d8
_02103730: .word FUN_ov17_02103788
	arm_func_end FUN_ov17_0210360c

	arm_func_start FUN_ov17_02103734
FUN_ov17_02103734: ; 0x02103734
	stmfd sp!, {r3, lr}
	mov r0, #2
	bl FUN_ov17_0210e4b8
	cmp r0, #0
	ldmeqfd sp!, {r3, pc}
	bl FUN_ov17_02107ca8
	mov r0, #0
	bl FUN_ov17_020f47d8
	ldmfd sp!, {r3, pc}
	arm_func_end FUN_ov17_02103734

	arm_func_start FUN_ov17_02103758
FUN_ov17_02103758: ; 0x02103758
	bx lr
	arm_func_end FUN_ov17_02103758

	arm_func_start FUN_ov17_0210375c
FUN_ov17_0210375c: ; 0x0210375C
	stmfd sp!, {r3, lr}
	bl FUN_ov17_020f47c4
	cmp r0, #0
	ldmnefd sp!, {r3, pc}
	bl FUN_ov17_02107ca8
	mov r0, #7
	bl FUN_ov17_02107c40
	ldr r0, _02103784 ; =FUN_ov17_02103788
	bl FUN_ov17_020f8ad4
	ldmfd sp!, {r3, pc}
_02103784: .word FUN_ov17_02103788
	arm_func_end FUN_ov17_0210375c

	arm_func_start FUN_ov17_02103788
FUN_ov17_02103788: ; 0x02103788
	stmfd sp!, {r3, lr}
	bl FUN_ov17_020f484c
	mov r0, #8
	bl FUN_ov17_0210d424
	ldr r0, _021037A4 ; =FUN_ov17_021037a8
	bl FUN_ov17_020f8ad4
	ldmfd sp!, {r3, pc}
_021037A4: .word FUN_ov17_021037a8
	arm_func_end FUN_ov17_02103788

	arm_func_start FUN_ov17_021037a8
FUN_ov17_021037a8: ; 0x021037A8
	stmfd sp!, {r4, r5, r6, lr}
	mov r6, #1
	mov r0, r6
	bl FUN_ov17_0210d214
	cmp r0, #0
	ldmnefd sp!, {r4, r5, r6, pc}
	bl FUN_ov17_020f4794
	mov r5, #3
	mov r4, #8
	mov r0, r5
	mov r1, r6
	mov r2, r6
	mov r3, r4
	bl FUN_ov17_0210d238
	mov r0, r5
	mov r3, r4
	mov r1, #0
	mov r2, #0x15
	bl FUN_ov17_0210d238
	ldr r0, _02103800 ; =FUN_ov17_02103804
	bl FUN_ov17_020f8ad4
	ldmfd sp!, {r4, r5, r6, pc}
_02103800: .word FUN_ov17_02103804
	arm_func_end FUN_ov17_021037a8

	arm_func_start FUN_ov17_02103804
FUN_ov17_02103804: ; 0x02103804
	stmfd sp!, {r3, r4, r5, lr}
	mov r0, #1
	bl FUN_ov17_0210d214
	cmp r0, #0
	ldmnefd sp!, {r3, r4, r5, pc}
	mov r0, #0
	bl FUN_ov17_0210d214
	cmp r0, #0
	ldmnefd sp!, {r3, r4, r5, pc}
	bl FUN_ov17_020f4808
	cmp r0, #0
	ldmeqfd sp!, {r3, r4, r5, pc}
_02103834:
	bl FUN_ov17_02106d14
	cmp r0, #0
	beq _02103834
	bl FUN_ov17_020f459c
	mov r5, #0
	mov r0, r5
	bl FUN_ov17_0210d93c
	bl FUN_ov17_020f4de8
	mov r4, #1
	mov r0, r4
	mov r1, r4
	bl FUN_ov17_0210dd24
	mov r0, r5
	mov r1, #0x15
	bl FUN_ov17_0210dd24
	ldr r0, _021038CC ; =0x02116268
	ldrb r0, [r0]
	cmp r0, #1
	beq _021038A8
	bl FUN_ov17_02106be4
	bl FUN_ov17_02107098
	ldrb r0, [r0, #0xf4]
	bl FUN_ov17_021074a0
	mov r1, r4
	mov r0, #2
	bl FUN_ov17_020f8ae4
	ldr r0, _021038D0 ; =FUN_ov17_0210462c
	bl FUN_ov17_020f8ad4
	ldmfd sp!, {r3, r4, r5, pc}
_021038A8:
	mov r0, r5
	mov r1, r4
	bl FUN_ov17_020f8ae4
	mov r0, r5
	mov r1, r5
	bl FUN_ov17_020f8b20
	ldr r0, _021038D4 ; =FUN_ov17_020fcd68
	bl FUN_ov17_020f8ad4
	ldmfd sp!, {r3, r4, r5, pc}
_021038CC: .word 0x02116268
_021038D0: .word FUN_ov17_0210462c
_021038D4: .word FUN_ov17_020fcd68
	arm_func_end FUN_ov17_02103804

	arm_func_start FUN_ov17_021038d8
FUN_ov17_021038d8: ; 0x021038D8
	stmfd sp!, {r3, lr}
	bl FUN_ov17_021091fc
	cmp r0, #0
	ldmnefd sp!, {r3, pc}
	mov r0, #6
	bl FUN_ov17_02107c40
	bl FUN_ov17_021091b8
	ldr r0, _02103900 ; =FUN_ov17_02103904
	bl FUN_ov17_020f8ad4
	ldmfd sp!, {r3, pc}
_02103900: .word FUN_ov17_02103904
	arm_func_end FUN_ov17_021038d8

	arm_func_start FUN_ov17_02103904
FUN_ov17_02103904: ; 0x02103904
	stmfd sp!, {r3, lr}
	bl FUN_ov17_02109210
	cmp r0, #0
	ldmnefd sp!, {r3, pc}
	ldr r0, _02103920 ; =FUN_ov17_02103788
	bl FUN_ov17_020f8ad4
	ldmfd sp!, {r3, pc}
_02103920: .word FUN_ov17_02103788
	arm_func_end FUN_ov17_02103904

	arm_func_start FUN_ov17_02103924
FUN_ov17_02103924: ; 0x02103924
	stmfd sp!, {r4, lr}
	mov r0, #0x20
	mov r1, #4
	bl FUN_ov17_0210e0a8
	ldr r1, _0210397C ; =0x0211626C
	mov r4, #0
	str r0, [r1, #4]
	strb r4, [r0, #0x1d]
	bl FUN_ov17_02103984
	mov r0, #1
	bl FUN_ov17_020f5324
	mov r0, #0x2f
	mov r2, r4
	sub r1, r0, #0x30
	bl FUN_ov17_020f4d10
	mov r0, r4
	bl FUN_ov17_020f4ec4
	bl FUN_ov17_02103a8c
	bl FUN_ov17_02104100
	ldr r0, _02103980 ; =FUN_ov17_02103b94
	bl FUN_ov17_020f8ad4
	ldmfd sp!, {r4, pc}
_0210397C: .word 0x0211626C
_02103980: .word FUN_ov17_02103b94
	arm_func_end FUN_ov17_02103924

	arm_func_start FUN_ov17_02103984
FUN_ov17_02103984: ; 0x02103984
	stmfd sp!, {r3, lr}
	sub sp, sp, #0x18
	ldr r12, _02103A5C ; =0x02112438
	add r3, sp, #0
	mov r2, #0xb
_02103998:
	ldrb r0, [r12, #1]
	ldrb r1, [r12], #2
	subs r2, r2, #1
	strb r0, [r3, #1]
	strb r1, [r3], #2
	bne _02103998
	ldr r0, _02103A60 ; =0x02113378
	ldr r1, _02103A64 ; =0x020051BC
	bl FUN_ov17_020f4e84
	ldr r0, _02103A68 ; =0x0211338C
	ldr r1, _02103A6C ; =0x0200593C
	bl FUN_ov17_020f4e84
	ldr r0, _02103A70 ; =0x021133A4
	ldr r1, _02103A74 ; =FUN_020050fc
	bl FUN_ov17_020f4e84
	ldr r0, _02103A78 ; =0x021133BC
	ldr r1, _02103A7C ; =FUN_020055bc
	bl FUN_ov17_020f4e84
	add r0, sp, #0
	bl FUN_ov17_020f4e20
	mov r1, #0
	mov r2, #4
	bl FUN_ov17_0210c7fc
	ldr r2, _02103A80 ; =0x0211626C
	mov r1, #0x10
	ldr r2, [r2, #4]
	str r0, [r2]
	mov r0, #1
	bl FUN_ov17_0210dcd0
	ldr r2, _02103A84 ; =0x04001008
	ldr r1, _02103A88 ; =0x0400000A
	ldrh r0, [r2]
	bic r0, r0, #3
	orr r0, r0, #3
	strh r0, [r2]
	ldrh r0, [r2, #2]
	bic r0, r0, #3
	orr r0, r0, #3
	strh r0, [r2, #2]
	ldrh r0, [r1]
	bic r0, r0, #3
	orr r0, r0, #3
	strh r0, [r1]
	ldrh r0, [r1, #2]
	bic r0, r0, #3
	orr r0, r0, #3
	strh r0, [r1, #2]
	add sp, sp, #0x18
	ldmfd sp!, {r3, pc}
_02103A5C: .word 0x02112438
_02103A60: .word 0x02113378
_02103A64: .word 0x020051BC
_02103A68: .word 0x0211338C
_02103A6C: .word 0x0200593C
_02103A70: .word 0x021133A4
_02103A74: .word FUN_020050fc
_02103A78: .word 0x021133BC
_02103A7C: .word FUN_020055bc
_02103A80: .word 0x0211626C
_02103A84: .word 0x04001008
_02103A88: .word 0x0400000A
	arm_func_end FUN_ov17_02103984

	arm_func_start FUN_ov17_02103a8c
FUN_ov17_02103a8c: ; 0x02103A8C
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, lr}
	mov r10, #0
	ldr r6, _02103B88 ; =0x021123A8
	ldr r5, _02103B8C ; =0x0211239C
	ldr r4, _02103B90 ; =0x0211626C
	mov r11, r10
	mvn r7, #0
	mov r8, #3
_02103AAC:
	mov r0, r10
	bl FUN_ov17_02107488
	mov r9, r0
	cmp r9, #0xff
	moveq r9, r8
	beq _02103B20
	mov r0, r11
	mov r1, #0x11
	mov r2, #1
	bl FUN_ov17_0210d028
	ldr r1, [r4, #4]
	add r3, r10, #3
	mov r2, r3, lsl #2
	add r1, r1, r10, lsl #2
	str r0, [r1, #0x10]
	ldr r0, [r4, #4]
	add r3, r6, r3, lsl #2
	add r0, r0, r10, lsl #2
	ldrh r2, [r6, r2]
	ldrh r3, [r3, #2]
	ldr r0, [r0, #0x10]
	mov r1, r7
	bl FUN_ov17_0210cdac
	ldr r0, [r4, #4]
	mov r1, r7
	add r0, r0, r10, lsl #2
	ldr r0, [r0, #0x10]
	mov r2, #3
	bl FUN_ov17_0210ce84
_02103B20:
	ldrb r1, [r5, r9]
	mov r0, #0
	mov r2, #1
	bl FUN_ov17_0210d028
	ldr r1, [r4, #4]
	mov r2, r10, lsl #2
	add r1, r1, r10, lsl #2
	str r0, [r1, #4]
	ldr r0, [r4, #4]
	add r3, r6, r10, lsl #2
	add r0, r0, r10, lsl #2
	ldrh r2, [r6, r2]
	ldrh r3, [r3, #2]
	ldr r0, [r0, #4]
	mov r1, r7
	bl FUN_ov17_0210cdac
	ldr r0, [r4, #4]
	mov r1, r7
	add r0, r0, r10, lsl #2
	ldr r0, [r0, #4]
	mov r2, #3
	bl FUN_ov17_0210ce84
	add r10, r10, #1
	cmp r10, #3
	blt _02103AAC
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_02103B88: .word 0x021123A8
_02103B8C: .word 0x0211239C
_02103B90: .word 0x0211626C
	arm_func_end FUN_ov17_02103a8c

	arm_func_start FUN_ov17_02103b94
FUN_ov17_02103b94: ; 0x02103B94
	stmfd sp!, {r4, r5, r6, r7, r8, lr}
	mov r7, #1
	mov r8, #2
	mov r6, #8
	mov r0, r8
	mov r1, r7
	mov r2, r7
	mov r3, r6
	bl FUN_ov17_0210d238
	mov r5, #0
	mov r4, #0x14
	mov r0, r8
	mov r1, r5
	mov r2, r4
	mov r3, r6
	bl FUN_ov17_0210d238
	mov r0, r7
	mov r1, r7
	bl FUN_ov17_0210dcd0
	mov r0, r5
	mov r1, r4
	bl FUN_ov17_0210dcd0
	ldr r0, _02103BF8 ; =FUN_ov17_02103bfc
	bl FUN_ov17_020f8ad4
	ldmfd sp!, {r4, r5, r6, r7, r8, pc}
_02103BF8: .word FUN_ov17_02103bfc
	arm_func_end FUN_ov17_02103b94

	arm_func_start FUN_ov17_02103bfc
FUN_ov17_02103bfc: ; 0x02103BFC
	stmfd sp!, {r4, lr}
	mov r0, #1
	bl FUN_ov17_0210d214
	cmp r0, #0
	ldmnefd sp!, {r4, pc}
	mov r4, #0
	mov r0, r4
	bl FUN_ov17_0210d214
	cmp r0, #0
	ldmnefd sp!, {r4, pc}
	mov r0, r4
	bl FUN_ov17_020f4f14
	ldr r0, _02103C38 ; =FUN_ov17_02103c3c
	bl FUN_ov17_020f8ad4
	ldmfd sp!, {r4, pc}
_02103C38: .word FUN_ov17_02103c3c
	arm_func_end FUN_ov17_02103bfc

	arm_func_start FUN_ov17_02103c3c
FUN_ov17_02103c3c: ; 0x02103C3C
	stmfd sp!, {r3, lr}
	bl FUN_ov17_020f47c4
	cmn r0, #2
	ldmeqfd sp!, {r3, pc}
	bl FUN_ov17_02108318
	cmp r0, #1
	ldmeqfd sp!, {r3, pc}
	bl FUN_ov17_020f4834
	ldr r0, _02103C68 ; =FUN_ov17_02103c6c
	bl FUN_ov17_020f8ad4
	ldmfd sp!, {r3, pc}
_02103C68: .word FUN_ov17_02103c6c
	arm_func_end FUN_ov17_02103c3c

	arm_func_start FUN_ov17_02103c6c
FUN_ov17_02103c6c: ; 0x02103C6C
	stmfd sp!, {r3, lr}
	bl FUN_ov17_02103c80
	bl FUN_ov17_02103d78
	bl FUN_ov17_02103d7c
	ldmfd sp!, {r3, pc}
	arm_func_end FUN_ov17_02103c6c

	arm_func_start FUN_ov17_02103c80
FUN_ov17_02103c80: ; 0x02103C80
	stmfd sp!, {r3, r4, r5, lr}
	ldr r4, _02103D70 ; =0x021123C0
	mov r5, #0
_02103C8C:
	add r0, r4, r5, lsl #3
	bl FUN_ov17_0210e600
	cmp r0, #0
	beq _02103CB4
	mov r0, #1
	bl FUN_ov17_020f47d8
	ldr r0, _02103D74 ; =0x0211626C
	strb r5, [r0]
	bl FUN_ov17_02104100
	ldmfd sp!, {r3, r4, r5, pc}
_02103CB4:
	add r5, r5, #1
	cmp r5, #7
	blo _02103C8C
	mov r5, #1
	mov r0, r5
	bl FUN_ov17_0210e4b8
	cmp r0, #0
	beq _02103CE0
	mov r0, r5
	bl FUN_ov17_020f47d8
	ldmfd sp!, {r3, r4, r5, pc}
_02103CE0:
	mov r4, #2
	mov r0, r4
	bl FUN_ov17_0210e4b8
	cmp r0, #0
	beq _02103D00
	mov r0, #0
	bl FUN_ov17_020f47d8
	ldmfd sp!, {r3, r4, r5, pc}
_02103D00:
	mov r0, #0x40
	bl FUN_ov17_0210e4f8
	cmp r0, #0
	beq _02103D1C
	mov r0, r5
	bl FUN_ov17_0210417c
	ldmfd sp!, {r3, r4, r5, pc}
_02103D1C:
	mov r0, #0x80
	bl FUN_ov17_0210e4f8
	cmp r0, #0
	beq _02103D38
	mov r0, #3
	bl FUN_ov17_0210417c
	ldmfd sp!, {r3, r4, r5, pc}
_02103D38:
	mov r0, #0x20
	bl FUN_ov17_0210e4f8
	cmp r0, #0
	beq _02103D54
	mov r0, #0
	bl FUN_ov17_0210417c
	ldmfd sp!, {r3, r4, r5, pc}
_02103D54:
	mov r0, #0x10
	bl FUN_ov17_0210e4f8
	cmp r0, #0
	ldmeqfd sp!, {r3, r4, r5, pc}
	mov r0, r4
	bl FUN_ov17_0210417c
	ldmfd sp!, {r3, r4, r5, pc}
_02103D70: .word 0x021123C0
_02103D74: .word 0x0211626C
	arm_func_end FUN_ov17_02103c80

	arm_func_start FUN_ov17_02103d78
FUN_ov17_02103d78: ; 0x02103D78
	bx lr
	arm_func_end FUN_ov17_02103d78

	arm_func_start FUN_ov17_02103d7c
FUN_ov17_02103d7c: ; 0x02103D7C
	stmfd sp!, {r3, r4, r5, lr}
	bl FUN_ov17_020f47c4
	cmp r0, #0
	beq _02103D98
	cmp r0, #1
	beq _02103DDC
	ldmfd sp!, {r3, r4, r5, pc}
_02103D98:
	bl FUN_ov17_020f8b6c
	cmp r0, #0
	beq _02103DB0
	cmp r0, #1
	beq _02103DCC
	b _02103E7C
_02103DB0:
	mov r0, #7
	bl FUN_ov17_02107c40
	ldr r0, _02103E88 ; =0x0211626C
	mov r1, #2
	ldr r0, [r0, #4]
	strb r1, [r0, #0x1d]
	b _02103E7C
_02103DCC:
	bl FUN_ov17_020f484c
	ldr r0, _02103E8C ; =FUN_ov17_020f92c4
	bl FUN_ov17_020f8ad4
	ldmfd sp!, {r3, r4, r5, pc}
_02103DDC:
	ldr r0, _02103E88 ; =0x0211626C
	mov r4, #1
	ldr r1, [r0, #4]
	strb r4, [r1, #0x1d]
	ldrb r0, [r0]
	cmp r0, #4
	blo _02103E64
	sub r5, r0, #4
	mov r0, r5
	bl FUN_ov17_02107488
	cmp r0, #0xff
	bne _02103E24
	mov r4, #9
	mov r0, r4
	bl FUN_ov17_02107c40
	sub r0, r4, #0xa
	bl FUN_ov17_020f47f4
	ldmfd sp!, {r3, r4, r5, pc}
_02103E24:
	mov r0, #6
	bl FUN_ov17_02107c40
	bl FUN_ov17_020f8b5c
	ldr r1, _02103E90 ; =0x021123A0
	add r12, r5, #1
	ldrsb r3, [r1, r0]
	mov r2, r4
	mov r0, #0x46
	mov r1, #0
	str r12, [sp]
	bl FUN_ov17_02108e9c
	bl FUN_ov17_02104340
	bl FUN_ov17_020f484c
	ldr r0, _02103E94 ; =FUN_ov17_021043d4
	bl FUN_ov17_020f8ad4
	ldmfd sp!, {r3, r4, r5, pc}
_02103E64:
	cmp r0, #2
	bhi _02103E70
	bl FUN_ov17_021074a0
_02103E70:
	mov r0, #6
	bl FUN_ov17_02107c40
	bl FUN_ov17_02104558
_02103E7C:
	ldr r0, _02103E98 ; =FUN_ov17_02103e9c
	bl FUN_ov17_020f8ad4
	ldmfd sp!, {r3, r4, r5, pc}
_02103E88: .word 0x0211626C
_02103E8C: .word FUN_ov17_020f92c4
_02103E90: .word 0x021123A0
_02103E94: .word FUN_ov17_021043d4
_02103E98: .word FUN_ov17_02103e9c
	arm_func_end FUN_ov17_02103d7c

	arm_func_start FUN_ov17_02103e9c
FUN_ov17_02103e9c: ; 0x02103E9C
	stmfd sp!, {r3, lr}
	ldr r0, _02103ED0 ; =0x0211626C
	ldr r0, [r0, #4]
	ldrb r0, [r0, #0x1d]
	cmp r0, #2
	bne _02103EB8
	bl FUN_ov17_02108214
_02103EB8:
	bl FUN_ov17_020f484c
	mov r0, #8
	bl FUN_ov17_0210d424
	ldr r0, _02103ED4 ; =FUN_ov17_02103ed8
	bl FUN_ov17_020f8ad4
	ldmfd sp!, {r3, pc}
_02103ED0: .word 0x0211626C
_02103ED4: .word FUN_ov17_02103ed8
	arm_func_end FUN_ov17_02103e9c

	arm_func_start FUN_ov17_02103ed8
FUN_ov17_02103ed8: ; 0x02103ED8
	stmfd sp!, {r3, r4, r5, lr}
	mov r0, #1
	bl FUN_ov17_0210d214
	cmp r0, #0
	ldmnefd sp!, {r3, r4, r5, pc}
	ldr r0, _02103F5C ; =0x0211626C
	ldr r1, [r0, #4]
	ldrb r1, [r1, #0x1d]
	cmp r1, #1
	bne _02103F20
	ldrb r0, [r0]
	cmp r0, #3
	beq _02103F1C
	bl FUN_ov17_02107098
	ldrb r0, [r0, #0xe7]
	cmp r0, #0xff
	beq _02103F20
_02103F1C:
	bl FUN_ov17_020f4794
_02103F20:
	mov r5, #3
	mov r1, #1
	mov r4, #8
	mov r0, r5
	mov r2, r1
	mov r3, r4
	bl FUN_ov17_0210d238
	mov r0, r5
	mov r3, r4
	mov r1, #0
	mov r2, #0x14
	bl FUN_ov17_0210d238
	ldr r0, _02103F60 ; =FUN_ov17_02103f64
	bl FUN_ov17_020f8ad4
	ldmfd sp!, {r3, r4, r5, pc}
_02103F5C: .word 0x0211626C
_02103F60: .word FUN_ov17_02103f64
	arm_func_end FUN_ov17_02103ed8

	arm_func_start FUN_ov17_02103f64
FUN_ov17_02103f64: ; 0x02103F64
	stmfd sp!, {r4, r5, r6, lr}
	mov r0, #1
	bl FUN_ov17_0210d214
	cmp r0, #0
	ldmnefd sp!, {r4, r5, r6, pc}
	mov r5, #0
	mov r0, r5
	bl FUN_ov17_0210d214
	cmp r0, #0
	ldmnefd sp!, {r4, r5, r6, pc}
	bl FUN_ov17_02108718
	cmp r0, #0
	ldmeqfd sp!, {r4, r5, r6, pc}
	bl FUN_ov17_020f4808
	cmp r0, #0
	ldmeqfd sp!, {r4, r5, r6, pc}
	ldr r4, _021040E0 ; =0x0211626C
_02103FA8:
	ldr r0, [r4, #4]
	add r0, r0, r5, lsl #2
	ldr r0, [r0, #4]
	cmp r0, #0
	beq _02103FC0
	bl FUN_ov17_0210cbf4
_02103FC0:
	add r5, r5, #1
	cmp r5, #3
	blo _02103FA8
	ldr r4, _021040E0 ; =0x0211626C
	mov r5, #0
_02103FD4:
	ldr r0, [r4, #4]
	add r0, r0, r5, lsl #2
	ldr r0, [r0, #0x10]
	cmp r0, #0
	beq _02103FEC
	bl FUN_ov17_0210cbf4
_02103FEC:
	add r5, r5, #1
	cmp r5, #3
	blo _02103FD4
	bl FUN_ov17_020f5258
	bl FUN_ov17_020f4de8
	ldr r4, _021040E0 ; =0x0211626C
	ldr r0, [r4, #4]
	ldr r0, [r0]
	bl FUN_ov17_0210c8fc
	ldr r0, _021040E4 ; =0x021133D0
	ldr r1, _021040E8 ; =0x020051BC
	bl FUN_ov17_020f4e84
	mov r6, #1
	mov r0, r6
	mov r1, r6
	bl FUN_ov17_0210dd24
	mov r5, #0
	mov r0, r5
	mov r1, #0x14
	bl FUN_ov17_0210dd24
	ldr r0, [r4, #4]
	ldrb r0, [r0, #0x1d]
	cmp r0, #2
	bne _02104060
	mov r0, r5
	mov r1, r5
	bl FUN_ov17_020f8ae4
	ldr r0, _021040EC ; =FUN_ov17_020f9618
	b _021040D0
_02104060:
	ldrb r0, [r4]
	cmp r0, #3
	addls pc, pc, r0, lsl #2
	b _021040D4
_02104070: ; jump table
	b _02104080 ; case 0
	b _02104080 ; case 1
	b _02104080 ; case 2
	b _021040C0 ; case 3
_02104080:
	mov r1, r5
	mov r0, #2
	bl FUN_ov17_020f8ae4
	bl FUN_ov17_02107098
	ldrb r0, [r0, #0xe7]
	cmp r0, #0xff
	bne _021040A4
	ldr r0, _021040F0 ; =FUN_ov17_0210462c
	b _021040D0
_021040A4:
	mov r0, r5
	mov r1, r5
	bl FUN_ov17_020f8b20
	mov r0, r5
	bl FUN_ov17_02102254
	ldr r0, _021040F4 ; =FUN_ov17_020fff90
	b _021040D0
_021040C0:
	mov r1, r6
	mov r0, #2
	bl FUN_ov17_020f8ae4
	ldr r0, _021040F8 ; =FUN_ov17_02105940
_021040D0:
	bl FUN_ov17_020f8ad4
_021040D4:
	ldr r0, _021040FC ; =0x02116270
	bl FUN_ov17_0210e0cc
	ldmfd sp!, {r4, r5, r6, pc}
_021040E0: .word 0x0211626C
_021040E4: .word 0x021133D0
_021040E8: .word 0x020051BC
_021040EC: .word FUN_ov17_020f9618
_021040F0: .word FUN_ov17_0210462c
_021040F4: .word FUN_ov17_020fff90
_021040F8: .word FUN_ov17_02105940
_021040FC: .word 0x02116270
	arm_func_end FUN_ov17_02103f64

	arm_func_start FUN_ov17_02104100
FUN_ov17_02104100: ; 0x02104100
	stmfd sp!, {r3, lr}
	ldr r0, _02104168 ; =0x0211626C
	ldrb r2, [r0]
	cmp r2, #4
	bhs _02104140
	mov r12, r2, lsl #3
	ldr r0, _0210416C ; =0x021123F8
	ldr r1, _02104170 ; =0x021123FC
	ldr r2, _02104174 ; =0x021123FA
	ldr r3, _02104178 ; =0x021123FE
	ldrh r0, [r0, r12]
	ldrh r1, [r1, r12]
	ldrh r2, [r2, r12]
	ldrh r3, [r3, r12]
	bl FUN_ov17_020f5178
	ldmfd sp!, {r3, pc}
_02104140:
	ldr r1, _0210416C ; =0x021123F8
	mov r3, r2, lsl #3
	ldr r2, _02104170 ; =0x021123FC
	ldr r0, _02104174 ; =0x021123FA
	ldrh r1, [r1, r3]
	ldrh r2, [r2, r3]
	ldrh r3, [r0, r3]
	mov r0, #0
	bl FUN_ov17_020f50cc
	ldmfd sp!, {r3, pc}
_02104168: .word 0x0211626C
_0210416C: .word 0x021123F8
_02104170: .word 0x021123FC
_02104174: .word 0x021123FA
_02104178: .word 0x021123FE
	arm_func_end FUN_ov17_02104100

	arm_func_start FUN_ov17_0210417c
FUN_ov17_0210417c: ; 0x0210417C
	stmfd sp!, {r4, lr}
	ldr r2, _0210433C ; =0x0211626C
	mov r4, #0
	ldrb r3, [r2]
	mov lr, #3
	mov r1, #1
	cmp r3, #6
	addls pc, pc, r3, lsl #2
	b _02104324
_021041A0: ; jump table
	b _021041BC ; case 0
	b _021041F0 ; case 1
	b _02104224 ; case 2
	b _0210425C ; case 3
	b _02104284 ; case 4
	b _021042B8 ; case 5
	b _021042EC ; case 6
_021041BC:
	ldr r3, [r2, #4]
	cmp r0, #0
	strb r4, [r3, #0x1c]
	moveq r0, #2
	streqb r0, [r2]
	beq _02104324
	cmp r0, #2
	streqb r1, [r2]
	beq _02104324
	cmp r0, #1
	streqb lr, [r2]
	movne r0, #4
	b _02104254
_021041F0:
	ldr r3, [r2, #4]
	cmp r0, #0
	strb r1, [r3, #0x1c]
	streqb r4, [r2]
	beq _02104324
	cmp r0, #2
	moveq r0, #2
	streqb r0, [r2]
	beq _02104324
	cmp r0, #1
	streqb lr, [r2]
	movne r0, #5
	b _02104254
_02104224:
	ldr r3, [r2, #4]
	mov r12, #2
	strb r12, [r3, #0x1c]
	cmp r0, #0
	streqb r1, [r2]
	beq _02104324
	cmp r0, #2
	streqb r4, [r2]
	beq _02104324
	cmp r0, #1
	streqb lr, [r2]
	movne r0, #6
_02104254:
	strneb r0, [r2]
	b _02104324
_0210425C:
	ldr r3, [r2, #4]
	cmp r0, #1
	ldrb r12, [r3, #0x1c]
	add r3, r12, #4
	streqb r3, [r2]
	beq _02104324
	cmp r0, #3
	streqb r12, [r2]
	movne r1, r4
	b _02104324
_02104284:
	ldr r3, [r2, #4]
	cmp r0, #0
	strb r4, [r3, #0x1c]
	moveq r0, #6
	streqb r0, [r2]
	beq _02104324
	cmp r0, #2
	moveq r0, #5
	streqb r0, [r2]
	beq _02104324
	cmp r0, #1
	streqb r4, [r2]
	b _02104320
_021042B8:
	ldr r3, [r2, #4]
	cmp r0, #0
	strb r1, [r3, #0x1c]
	moveq r0, #4
	streqb r0, [r2]
	beq _02104324
	cmp r0, #2
	moveq r0, #6
	streqb r0, [r2]
	beq _02104324
	cmp r0, #1
	streqb r1, [r2]
	b _02104320
_021042EC:
	ldr r3, [r2, #4]
	mov r12, #2
	cmp r0, #0
	strb r12, [r3, #0x1c]
	moveq r0, #5
	streqb r0, [r2]
	beq _02104324
	cmp r0, #2
	moveq r0, #4
	streqb r0, [r2]
	beq _02104324
	cmp r0, #1
	streqb r12, [r2]
_02104320:
	strneb lr, [r2]
_02104324:
	cmp r1, #0
	ldmeqfd sp!, {r4, pc}
	mov r0, #8
	bl FUN_ov17_02107c40
	bl FUN_ov17_02104100
	ldmfd sp!, {r4, pc}
_0210433C: .word 0x0211626C
	arm_func_end FUN_ov17_0210417c

	arm_func_start FUN_ov17_02104340
FUN_ov17_02104340: ; 0x02104340
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	ldr r5, _021043C8 ; =0x0211626C
	mov r7, #0
	ldrb r2, [r5]
	ldr r0, [r5, #4]
	mov r1, r7
	sub r4, r2, #4
	add r0, r0, r4, lsl #2
	ldr r0, [r0, #0x10]
	bl FUN_ov17_0210cc74
	mov r6, #0x32
	mov r2, r0
	mov r0, r7
	mov r1, r6
	bl FUN_ov17_0210cf68
	add r2, r4, #3
	ldr r0, [r5, #4]
	sub r6, r6, #0x33
	add r0, r0, r4, lsl #2
	ldr r1, _021043CC ; =0x021123A8
	ldr r0, [r0, #0x10]
	mov r12, r2, lsl #2
	ldrh r2, [r1, r12]
	mov r1, r6
	ldr r3, _021043D0 ; =0x021123AA
	ldrh r3, [r3, r12]
	bl FUN_ov17_0210cdac
	ldr r0, [r5, #4]
	mov r1, r6
	add r0, r0, r4, lsl #2
	ldr r0, [r0, #0x10]
	mov r2, #3
	bl FUN_ov17_0210ce84
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_021043C8: .word 0x0211626C
_021043CC: .word 0x021123A8
_021043D0: .word 0x021123AA
	arm_func_end FUN_ov17_02104340

	arm_func_start FUN_ov17_021043d4
FUN_ov17_021043d4: ; 0x021043D4
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	ldr r6, _02104524 ; =0x0211626C
	ldrb r0, [r6]
	sub r5, r0, #4
	bl FUN_ov17_021091fc
	cmp r0, #0
	beq _02104498
	cmp r0, #1
	ldmnefd sp!, {r3, r4, r5, r6, r7, pc}
	mov r0, #0xe
	bl FUN_ov17_02107c40
	mov r0, r5
	bl FUN_ov17_02107878
	ldr r0, [r6, #4]
	mov r4, #0
	add r0, r0, r5, lsl #2
	ldr r0, [r0, #4]
	mov r1, r4
	bl FUN_ov17_0210cc74
	mov r2, r0
	mov r0, r4
	mov r7, #0x56
	mov r1, r7
	bl FUN_ov17_0210cf68
	sub r7, r7, #0x57
	ldr r0, [r6, #4]
	mov r12, r5, lsl #2
	add r0, r0, r5, lsl #2
	ldr r0, [r0, #4]
	mov r1, r7
	ldr r2, _02104528 ; =0x021123A8
	ldr r3, _0210452C ; =0x021123AA
	ldrh r2, [r2, r12]
	ldrh r3, [r3, r12]
	bl FUN_ov17_0210cdac
	mov r1, r7
	ldr r0, [r6, #4]
	mov r2, #3
	add r0, r0, r5, lsl #2
	ldr r0, [r0, #4]
	bl FUN_ov17_0210ce84
	ldr r0, [r6, #4]
	add r0, r0, r5, lsl #2
	ldr r0, [r0, #0x10]
	bl FUN_ov17_0210cbf4
	ldr r0, [r6, #4]
	add r0, r0, r5, lsl #2
	str r4, [r0, #0x10]
	b _02104514
_02104498:
	mov r0, #7
	bl FUN_ov17_02107c40
	ldr r0, [r6, #4]
	mov r7, #0
	add r0, r0, r5, lsl #2
	ldr r0, [r0, #0x10]
	mov r1, r7
	bl FUN_ov17_0210cc74
	mov r4, #0x11
	mov r2, r0
	mov r0, r7
	mov r1, r4
	bl FUN_ov17_0210cf68
	sub r7, r4, #0x12
	add r0, r5, #3
	mov r4, r0, lsl #2
	ldr r0, [r6, #4]
	ldr r2, _02104528 ; =0x021123A8
	ldr r3, _0210452C ; =0x021123AA
	add r0, r0, r5, lsl #2
	ldrh r2, [r2, r4]
	ldrh r3, [r3, r4]
	ldr r0, [r0, #0x10]
	mov r1, r7
	bl FUN_ov17_0210cdac
	ldr r0, [r6, #4]
	mov r1, r7
	add r0, r0, r5, lsl #2
	ldr r0, [r0, #0x10]
	mov r2, #3
	bl FUN_ov17_0210ce84
_02104514:
	bl FUN_ov17_021091b8
	ldr r0, _02104530 ; =FUN_ov17_02104534
	bl FUN_ov17_020f8ad4
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_02104524: .word 0x0211626C
_02104528: .word 0x021123A8
_0210452C: .word 0x021123AA
_02104530: .word FUN_ov17_02104534
	arm_func_end FUN_ov17_021043d4

	arm_func_start FUN_ov17_02104534
FUN_ov17_02104534: ; 0x02104534
	stmfd sp!, {r3, lr}
	bl FUN_ov17_02109210
	cmp r0, #0
	ldmnefd sp!, {r3, pc}
	bl FUN_ov17_020f4834
	ldr r0, _02104554 ; =FUN_ov17_02103c6c
	bl FUN_ov17_020f8ad4
	ldmfd sp!, {r3, pc}
_02104554: .word FUN_ov17_02103c6c
	arm_func_end FUN_ov17_02104534

	arm_func_start FUN_ov17_02104558
FUN_ov17_02104558: ; 0x02104558
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	sub sp, sp, #8
	ldr r1, _02104620 ; =0x02112430
	ldr r0, _02104624 ; =0x02112434
	ldrb r7, [r1]
	ldrb r6, [r1, #1]
	ldrb r5, [r1, #2]
	ldrb lr, [r1, #3]
	ldrb r12, [r0]
	ldrb r3, [r0, #1]
	ldrb r2, [r0, #2]
	ldrb r1, [r0, #3]
	ldr r4, _02104628 ; =0x0211626C
	strb r7, [sp, #4]
	ldrb r0, [r4]
	strb r1, [sp, #3]
	strb r6, [sp, #5]
	strb r5, [sp, #6]
	strb lr, [sp, #7]
	strb r12, [sp]
	strb r3, [sp, #1]
	strb r2, [sp, #2]
	cmp r0, #3
	add r1, sp, #4
	addhi sp, sp, #8
	ldmhifd sp!, {r3, r4, r5, r6, r7, pc}
	ldrb r1, [r1, r0]
	ldr r0, [r4, #4]
	ldr r0, [r0]
	mov r2, r1
	bl FUN_ov17_02106444
	ldrb r0, [r4]
	cmp r0, #3
	addeq sp, sp, #8
	ldmeqfd sp!, {r3, r4, r5, r6, r7, pc}
	bl FUN_ov17_02107488
	ldr r1, _02104628 ; =0x0211626C
	cmp r0, #2
	ldrb r4, [r1]
	ldr r1, [r1, #4]
	movgt r0, #3
	add r2, sp, #0
	ldrb r3, [r2, r0]
	add r0, r1, r4, lsl #2
	ldr r0, [r0, #4]
	mvn r1, #0
	mov r2, #0
	bl FUN_ov17_0210cd2c
	add sp, sp, #8
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_02104620: .word 0x02112430
_02104624: .word 0x02112434
_02104628: .word 0x0211626C
	arm_func_end FUN_ov17_02104558

	arm_func_start FUN_ov17_0210462c
FUN_ov17_0210462c: ; 0x0210462C
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	bl FUN_ov17_02107098
	ldr r1, _02104738 ; =0x02116274
	mov r2, #0
	strb r2, [r1, #2]
	ldrsb r2, [r1]
	mov r4, r0
	cmp r2, #0
	moveq r0, #1
	streqb r0, [r1]
	bl FUN_ov17_020f8b5c
	cmp r0, #0
	beq _02104688
	ldr r0, _02104738 ; =0x02116274
	ldrsb r1, [r0, #1]
	cmp r1, #2
	moveq r1, #0
	streqb r1, [r0, #1]
	ldr r0, _02104738 ; =0x02116274
	ldrsb r1, [r0]
	cmp r1, #2
	moveq r1, #1
	streqb r1, [r0]
_02104688:
	bl FUN_ov17_02104754
	bl FUN_ov17_020f5384
	bl FUN_ov17_020f8b5c
	mov r5, r0
	ldrb r1, [r4, #0xf4]
	mov r0, #0x32
	ldr r3, _0210473C ; =0x02112454
	add r2, r1, #1
	ldrsb r1, [r3, r5]
	bl FUN_ov17_020f4d10
	mov r7, #1
	mov r0, r7
	bl FUN_ov17_020f4ec4
	mov r0, r7
	bl FUN_ov17_020f8b84
	mov r6, r0
	mov r0, r7
	bl FUN_ov17_020f8b84
	mov r5, r0
	mov r0, r7
	bl FUN_ov17_020f8b84
	mov r4, r0
	mov r0, r7
	bl FUN_ov17_020f8b84
	mov r3, r0
	ldr r1, _02104740 ; =0x021124D4
	ldr r0, _02104738 ; =0x02116274
	add r12, r1, r6, lsl #5
	ldrsb lr, [r0, #1]
	ldr r1, _02104744 ; =0x021124D8
	ldr r0, _02104748 ; =0x021124D6
	add r1, r1, r5, lsl #5
	add r2, r0, r4, lsl #5
	mov r5, lr, lsl #3
	ldrh r0, [r5, r12]
	ldrh r1, [r5, r1]
	ldrh r2, [r5, r2]
	ldr r4, _0210474C ; =0x021124DA
	add r3, r4, r3, lsl #5
	ldrh r3, [r5, r3]
	bl FUN_ov17_020f5178
	ldr r0, _02104750 ; =FUN_ov17_02104838
	bl FUN_ov17_020f8ad4
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_02104738: .word 0x02116274
_0210473C: .word 0x02112454
_02104740: .word 0x021124D4
_02104744: .word 0x021124D8
_02104748: .word 0x021124D6
_0210474C: .word 0x021124DA
_02104750: .word FUN_ov17_02104838
	arm_func_end FUN_ov17_0210462c

	arm_func_start FUN_ov17_02104754
FUN_ov17_02104754: ; 0x02104754
	stmfd sp!, {r3, lr}
	sub sp, sp, #0x18
	ldr r12, _02104810 ; =0x0211247C
	add r3, sp, #0
	mov r2, #0xb
_02104768:
	ldrb r0, [r12, #1]
	ldrb r1, [r12], #2
	subs r2, r2, #1
	strb r0, [r3, #1]
	strb r1, [r3], #2
	bne _02104768
	ldr r0, _02104814 ; =0x021133E8
	ldr r1, _02104818 ; =0x0200593C
	bl FUN_ov17_020f4e84
	ldr r0, _0210481C ; =0x02113400
	ldr r1, _02104820 ; =FUN_020050fc
	bl FUN_ov17_020f4e84
	ldr r0, _02104824 ; =0x02113418
	ldr r1, _02104828 ; =FUN_020055bc
	bl FUN_ov17_020f4e84
	add r0, sp, #0
	bl FUN_ov17_020f4e20
	mov r1, #0
	mov r2, #4
	bl FUN_ov17_0210c7fc
	ldr r1, _0210482C ; =0x02116274
	ldr r2, _02104830 ; =0x04001008
	str r0, [r1, #4]
	ldrh r0, [r2]
	ldr r1, _02104834 ; =0x0400000A
	bic r0, r0, #3
	orr r0, r0, #3
	strh r0, [r2]
	ldrh r0, [r2, #2]
	bic r0, r0, #3
	orr r0, r0, #3
	strh r0, [r2, #2]
	ldrh r0, [r1]
	bic r0, r0, #3
	orr r0, r0, #3
	strh r0, [r1]
	ldrh r0, [r1, #2]
	bic r0, r0, #3
	orr r0, r0, #3
	strh r0, [r1, #2]
	add sp, sp, #0x18
	ldmfd sp!, {r3, pc}
_02104810: .word 0x0211247C
_02104814: .word 0x021133E8
_02104818: .word 0x0200593C
_0210481C: .word 0x02113400
_02104820: .word FUN_020050fc
_02104824: .word 0x02113418
_02104828: .word FUN_020055bc
_0210482C: .word 0x02116274
_02104830: .word 0x04001008
_02104834: .word 0x0400000A
	arm_func_end FUN_ov17_02104754

	arm_func_start FUN_ov17_02104838
FUN_ov17_02104838: ; 0x02104838
	stmfd sp!, {r4, r5, r6, r7, r8, lr}
	mov r7, #1
	mov r8, #2
	mov r6, #8
	mov r0, r8
	mov r1, r7
	mov r2, r7
	mov r3, r6
	bl FUN_ov17_0210d238
	mov r5, #0
	mov r4, #0x14
	mov r0, r8
	mov r1, r5
	mov r2, r4
	mov r3, r6
	bl FUN_ov17_0210d238
	mov r0, r7
	mov r1, r7
	bl FUN_ov17_0210dcd0
	mov r0, r5
	mov r1, r4
	bl FUN_ov17_0210dcd0
	ldr r0, _0210489C ; =FUN_ov17_021048a0
	bl FUN_ov17_020f8ad4
	ldmfd sp!, {r4, r5, r6, r7, r8, pc}
_0210489C: .word FUN_ov17_021048a0
	arm_func_end FUN_ov17_02104838

	arm_func_start FUN_ov17_021048a0
FUN_ov17_021048a0: ; 0x021048A0
	stmfd sp!, {r4, lr}
	mov r0, #1
	bl FUN_ov17_0210d214
	cmp r0, #0
	ldmnefd sp!, {r4, pc}
	mov r4, #0
	mov r0, r4
	bl FUN_ov17_0210d214
	cmp r0, #0
	ldmnefd sp!, {r4, pc}
	mov r0, r4
	bl FUN_ov17_020f4f14
	ldr r0, _021048DC ; =FUN_ov17_021048e0
	bl FUN_ov17_020f8ad4
	ldmfd sp!, {r4, pc}
_021048DC: .word FUN_ov17_021048e0
	arm_func_end FUN_ov17_021048a0

	arm_func_start FUN_ov17_021048e0
FUN_ov17_021048e0: ; 0x021048E0
	stmfd sp!, {r3, lr}
	bl FUN_ov17_020f47c4
	cmn r0, #2
	ldmeqfd sp!, {r3, pc}
	bl FUN_ov17_020f4834
	ldr r0, _02104900 ; =FUN_ov17_02104904
	bl FUN_ov17_020f8ad4
	ldmfd sp!, {r3, pc}
_02104900: .word FUN_ov17_02104904
	arm_func_end FUN_ov17_021048e0

	arm_func_start FUN_ov17_02104904
FUN_ov17_02104904: ; 0x02104904
	stmfd sp!, {r3, lr}
	bl FUN_ov17_02104918
	bl FUN_ov17_02104a94
	bl FUN_ov17_02104a98
	ldmfd sp!, {r3, pc}
	arm_func_end FUN_ov17_02104904

	arm_func_start FUN_ov17_02104918
FUN_ov17_02104918: ; 0x02104918
	stmfd sp!, {r4, r5, r6, r7, r8, lr}
	ldr r4, _02104A7C ; =0x02112494
	mov r5, #0
	mov r7, #1
_02104928:
	mov r0, r7
	bl FUN_ov17_020f8b84
	add r0, r4, r0, lsl #5
	add r0, r0, r5, lsl #3
	bl FUN_ov17_0210e600
	cmp r0, #0
	beq _021049C4
	mov r0, r7
	bl FUN_ov17_020f47d8
	ldr r8, _02104A80 ; =0x02116274
	mov r0, r7
	strb r5, [r8, #1]
	bl FUN_ov17_020f8b84
	mov r6, r0
	mov r0, r7
	bl FUN_ov17_020f8b84
	mov r5, r0
	mov r0, r7
	bl FUN_ov17_020f8b84
	mov r4, r0
	mov r0, r7
	bl FUN_ov17_020f8b84
	ldrsb r1, [r8, #1]
	ldr r2, _02104A84 ; =0x021124D8
	mov r12, r0
	mov r3, r1, lsl #3
	ldr r0, _02104A88 ; =0x021124D4
	ldr r1, _02104A8C ; =0x021124D6
	add r5, r2, r5, lsl #5
	add r2, r1, r4, lsl #5
	ldr r4, _02104A90 ; =0x021124DA
	add r0, r0, r6, lsl #5
	add r4, r4, r12, lsl #5
	ldrh r0, [r3, r0]
	ldrh r1, [r3, r5]
	ldrh r2, [r3, r2]
	ldrh r3, [r3, r4]
	bl FUN_ov17_020f5178
	ldmfd sp!, {r4, r5, r6, r7, r8, pc}
_021049C4:
	add r5, r5, #1
	cmp r5, #4
	blo _02104928
	mov r0, r7
	bl FUN_ov17_0210e4b8
	cmp r0, #0
	beq _021049EC
	mov r0, r7
	bl FUN_ov17_020f47d8
	ldmfd sp!, {r4, r5, r6, r7, r8, pc}
_021049EC:
	mov r4, #2
	mov r0, r4
	bl FUN_ov17_0210e4b8
	cmp r0, #0
	beq _02104A0C
	mov r0, #0
	bl FUN_ov17_020f47d8
	ldmfd sp!, {r4, r5, r6, r7, r8, pc}
_02104A0C:
	mov r0, #0x40
	bl FUN_ov17_0210e4f8
	cmp r0, #0
	beq _02104A28
	mov r0, r7
	bl FUN_ov17_02104cac
	ldmfd sp!, {r4, r5, r6, r7, r8, pc}
_02104A28:
	mov r0, #0x80
	bl FUN_ov17_0210e4f8
	cmp r0, #0
	beq _02104A44
	mov r0, #3
	bl FUN_ov17_02104cac
	ldmfd sp!, {r4, r5, r6, r7, r8, pc}
_02104A44:
	mov r0, #0x20
	bl FUN_ov17_0210e4f8
	cmp r0, #0
	beq _02104A60
	mov r0, #0
	bl FUN_ov17_02104cac
	ldmfd sp!, {r4, r5, r6, r7, r8, pc}
_02104A60:
	mov r0, #0x10
	bl FUN_ov17_0210e4f8
	cmp r0, #0
	ldmeqfd sp!, {r4, r5, r6, r7, r8, pc}
	mov r0, r4
	bl FUN_ov17_02104cac
	ldmfd sp!, {r4, r5, r6, r7, r8, pc}
_02104A7C: .word 0x02112494
_02104A80: .word 0x02116274
_02104A84: .word 0x021124D8
_02104A88: .word 0x021124D4
_02104A8C: .word 0x021124D6
_02104A90: .word 0x021124DA
	arm_func_end FUN_ov17_02104918

	arm_func_start FUN_ov17_02104a94
FUN_ov17_02104a94: ; 0x02104A94
	bx lr
	arm_func_end FUN_ov17_02104a94

	arm_func_start FUN_ov17_02104a98
FUN_ov17_02104a98: ; 0x02104A98
	stmfd sp!, {r3, lr}
	bl FUN_ov17_020f47c4
	cmp r0, #0
	beq _02104AB4
	cmp r0, #1
	beq _02104AC0
	ldmfd sp!, {r3, pc}
_02104AB4:
	mov r0, #7
	bl FUN_ov17_02107c40
	b _02104AD8
_02104AC0:
	mov r0, #6
	bl FUN_ov17_02107c40
	bl FUN_ov17_02104d9c
	ldr r0, _02104AE4 ; =0x02116274
	mov r1, #1
	strb r1, [r0, #2]
_02104AD8:
	ldr r0, _02104AE8 ; =FUN_ov17_02104aec
	bl FUN_ov17_020f8ad4
	ldmfd sp!, {r3, pc}
_02104AE4: .word 0x02116274
_02104AE8: .word FUN_ov17_02104aec
	arm_func_end FUN_ov17_02104a98

	arm_func_start FUN_ov17_02104aec
FUN_ov17_02104aec: ; 0x02104AEC
	stmfd sp!, {r3, lr}
	bl FUN_ov17_020f484c
	mov r0, #8
	bl FUN_ov17_0210d424
	ldr r0, _02104B08 ; =FUN_ov17_02104b0c
	bl FUN_ov17_020f8ad4
	ldmfd sp!, {r3, pc}
_02104B08: .word FUN_ov17_02104b0c
	arm_func_end FUN_ov17_02104aec

	arm_func_start FUN_ov17_02104b0c
FUN_ov17_02104b0c: ; 0x02104B0C
	stmfd sp!, {r3, r4, r5, lr}
	mov r0, #1
	bl FUN_ov17_0210d214
	cmp r0, #0
	ldmnefd sp!, {r3, r4, r5, pc}
	ldr r0, _02104B70 ; =0x02116274
	ldrb r0, [r0, #2]
	cmp r0, #0
	beq _02104B34
	bl FUN_ov17_020f4794
_02104B34:
	mov r5, #3
	mov r1, #1
	mov r4, #8
	mov r0, r5
	mov r2, r1
	mov r3, r4
	bl FUN_ov17_0210d238
	mov r0, r5
	mov r3, r4
	mov r1, #0
	mov r2, #0x14
	bl FUN_ov17_0210d238
	ldr r0, _02104B74 ; =FUN_ov17_02104b78
	bl FUN_ov17_020f8ad4
	ldmfd sp!, {r3, r4, r5, pc}
_02104B70: .word 0x02116274
_02104B74: .word FUN_ov17_02104b78
	arm_func_end FUN_ov17_02104b0c

	arm_func_start FUN_ov17_02104b78
FUN_ov17_02104b78: ; 0x02104B78
	stmfd sp!, {r4, r5, r6, lr}
	mov r6, #1
	mov r0, r6
	bl FUN_ov17_0210d214
	cmp r0, #0
	ldmnefd sp!, {r4, r5, r6, pc}
	mov r5, #0
	mov r0, r5
	bl FUN_ov17_0210d214
	cmp r0, #0
	ldmnefd sp!, {r4, r5, r6, pc}
	bl FUN_ov17_020f4808
	cmp r0, #0
	ldmeqfd sp!, {r4, r5, r6, pc}
	bl FUN_ov17_020f5258
	bl FUN_ov17_020f4de8
	ldr r4, _02104C94 ; =0x02116274
	ldr r0, [r4, #4]
	bl FUN_ov17_0210c8fc
	mov r0, r6
	mov r1, r6
	bl FUN_ov17_0210dd24
	mov r0, r5
	mov r1, #0x14
	bl FUN_ov17_0210dd24
	ldrb r0, [r4, #2]
	cmp r0, #0
	bne _02104C00
	mov r1, r5
	mov r0, #2
	bl FUN_ov17_020f8ae4
	ldr r0, _02104C98 ; =FUN_ov17_02103924
	bl FUN_ov17_020f8ad4
	ldmfd sp!, {r4, r5, r6, pc}
_02104C00:
	ldrsb r0, [r4, #1]
	cmp r0, #3
	addls pc, pc, r0, lsl #2
	ldmfd sp!, {r4, r5, r6, pc}
_02104C10: ; jump table
	b _02104C20 ; case 0
	b _02104C38 ; case 1
	b _02104C50 ; case 2
	b _02104C68 ; case 3
_02104C20:
	mov r1, r6
	mov r0, #2
	bl FUN_ov17_020f8ae4
	ldr r0, _02104C9C ; =FUN_ov17_02103414
	bl FUN_ov17_020f8ad4
	ldmfd sp!, {r4, r5, r6, pc}
_02104C38:
	mov r1, r6
	mov r0, #2
	bl FUN_ov17_020f8ae4
	ldr r0, _02104CA0 ; =FUN_ov17_020fc598
	bl FUN_ov17_020f8ad4
	ldmfd sp!, {r4, r5, r6, pc}
_02104C50:
	mov r1, r6
	mov r0, #2
	bl FUN_ov17_020f8ae4
	ldr r0, _02104CA4 ; =FUN_ov17_02102f7c
	bl FUN_ov17_020f8ad4
	ldmfd sp!, {r4, r5, r6, pc}
_02104C68:
	mov r1, r5
	mov r0, #2
	bl FUN_ov17_020f8ae4
	mov r0, r5
	mov r1, r5
	bl FUN_ov17_020f8b20
	mov r0, r6
	bl FUN_ov17_02102254
	ldr r0, _02104CA8 ; =FUN_ov17_020fff90
	bl FUN_ov17_020f8ad4
	ldmfd sp!, {r4, r5, r6, pc}
_02104C94: .word 0x02116274
_02104C98: .word FUN_ov17_02103924
_02104C9C: .word FUN_ov17_02103414
_02104CA0: .word FUN_ov17_020fc598
_02104CA4: .word FUN_ov17_02102f7c
_02104CA8: .word FUN_ov17_020fff90
	arm_func_end FUN_ov17_02104b78

	arm_func_start FUN_ov17_02104cac
FUN_ov17_02104cac: ; 0x02104CAC
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	ldr r6, _02104D84 ; =0x02116274
	mov r7, #1
	mov r5, r0
	mov r0, r7
	ldrsb r4, [r6, #1]
	bl FUN_ov17_020f8b84
	ldr r2, _02104D88 ; =0x0211245B
	sub r1, r7, #2
	add r0, r2, r0, lsl #4
	add r0, r0, r4, lsl #2
	ldrsb r2, [r5, r0]
	cmp r2, r1
	ldmeqfd sp!, {r3, r4, r5, r6, r7, pc}
	cmp r2, #0
	streqb r4, [r6]
	cmn r2, #2
	ldreq r0, _02104D84 ; =0x02116274
	ldreqsb r1, [r0]
	streqb r1, [r0, #1]
	ldrne r0, _02104D84 ; =0x02116274
	strneb r2, [r0, #1]
	mov r0, #8
	bl FUN_ov17_02107c40
	mov r7, #1
	mov r0, r7
	bl FUN_ov17_020f8b84
	mov r6, r0
	mov r0, r7
	bl FUN_ov17_020f8b84
	mov r5, r0
	mov r0, r7
	bl FUN_ov17_020f8b84
	mov r4, r0
	mov r0, r7
	bl FUN_ov17_020f8b84
	mov r3, r0
	ldr r0, _02104D84 ; =0x02116274
	ldr r1, _02104D8C ; =0x021124D4
	ldrsb r12, [r0, #1]
	ldr r0, _02104D90 ; =0x021124D6
	add r6, r1, r6, lsl #5
	ldr r1, _02104D94 ; =0x021124D8
	add r2, r0, r4, lsl #5
	ldr r4, _02104D98 ; =0x021124DA
	add r1, r1, r5, lsl #5
	mov r5, r12, lsl #3
	add r3, r4, r3, lsl #5
	ldrh r0, [r5, r6]
	ldrh r1, [r5, r1]
	ldrh r2, [r5, r2]
	ldrh r3, [r5, r3]
	bl FUN_ov17_020f5178
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_02104D84: .word 0x02116274
_02104D88: .word 0x0211245B
_02104D8C: .word 0x021124D4
_02104D90: .word 0x021124D6
_02104D94: .word 0x021124D8
_02104D98: .word 0x021124DA
	arm_func_end FUN_ov17_02104cac

	arm_func_start FUN_ov17_02104d9c
FUN_ov17_02104d9c: ; 0x02104D9C
	stmfd sp!, {r3, r4, lr}
	sub sp, sp, #4
	ldr r1, _02104DEC ; =0x02112450
	ldr r0, _02104DF0 ; =0x02116274
	ldrb lr, [r1]
	ldrb r12, [r1, #1]
	ldrb r3, [r1, #2]
	ldrb r2, [r1, #3]
	ldrsb r1, [r0, #1]
	add r4, sp, #0
	strb lr, [sp]
	strb r12, [sp, #1]
	strb r3, [sp, #2]
	strb r2, [sp, #3]
	ldrb r1, [r4, r1]
	ldr r0, [r0, #4]
	mov r2, r1
	bl FUN_ov17_02106444
	add sp, sp, #4
	ldmfd sp!, {r3, r4, pc}
_02104DEC: .word 0x02112450
_02104DF0: .word 0x02116274
	arm_func_end FUN_ov17_02104d9c

	arm_func_start FUN_ov17_02104df4
FUN_ov17_02104df4: ; 0x02104DF4
	stmfd sp!, {r3, r4, lr}
	sub sp, sp, #4
	ldr r0, _02104E84 ; =0x0211627C
	mov r4, #0
	strb r4, [r0]
	bl FUN_ov17_02104e8c
	add r1, sp, #0
	mov r0, r4
	bl FUN_ov17_020f8b34
	ldr r0, [sp]
	cmp r0, #0
	bne _02104E34
	mov r0, #0x31
	mov r2, r4
	sub r1, r0, #0x32
	bl FUN_ov17_020f4d10
_02104E34:
	mov r0, #2
	bl FUN_ov17_020f4ec4
	ldr r0, [sp]
	cmp r0, #0
	bne _02104E4C
	bl FUN_ov17_020f5384
_02104E4C:
	mov r0, #0x2c
	bl FUN_ov17_020f4f4c
	mov r4, #0
	mov r0, r4
	bl FUN_ov17_020f44d0
	bl FUN_ov17_02104f34
	mov r0, r4
	bl FUN_ov17_020f53f4
	mov r0, #0xc
	bl FUN_ov17_02107c40
	ldr r0, _02104E88 ; =FUN_ov17_02104fcc
	bl FUN_ov17_020f8ad4
	add sp, sp, #4
	ldmfd sp!, {r3, r4, pc}
_02104E84: .word 0x0211627C
_02104E88: .word FUN_ov17_02104fcc
	arm_func_end FUN_ov17_02104df4

	arm_func_start FUN_ov17_02104e8c
FUN_ov17_02104e8c: ; 0x02104E8C
	stmfd sp!, {r3, lr}
	ldr r0, _02104F14 ; =0x0211342C
	ldr r1, _02104F18 ; =0x0200593C
	bl FUN_ov17_020f4e84
	ldr r0, _02104F1C ; =0x02113444
	ldr r1, _02104F20 ; =FUN_020050fc
	bl FUN_ov17_020f4e84
	ldr r0, _02104F24 ; =0x0211345C
	ldr r1, _02104F28 ; =FUN_020055bc
	bl FUN_ov17_020f4e84
	ldr r3, _02104F2C ; =0x04001008
	ldr r1, _02104F30 ; =0x0400000A
	ldrh r0, [r3]
	sub r2, r3, #0x1000
	bic r0, r0, #3
	orr r0, r0, #3
	strh r0, [r3]
	ldrh r0, [r3, #2]
	bic r0, r0, #3
	orr r0, r0, #3
	strh r0, [r3, #2]
	ldrh r0, [r2]
	bic r0, r0, #3
	orr r0, r0, #3
	strh r0, [r2]
	ldrh r0, [r1]
	bic r0, r0, #3
	orr r0, r0, #3
	strh r0, [r1]
	ldrh r0, [r1, #2]
	bic r0, r0, #3
	orr r0, r0, #3
	strh r0, [r1, #2]
	ldmfd sp!, {r3, pc}
_02104F14: .word 0x0211342C
_02104F18: .word 0x0200593C
_02104F1C: .word 0x02113444
_02104F20: .word FUN_020050fc
_02104F24: .word 0x0211345C
_02104F28: .word FUN_020055bc
_02104F2C: .word 0x04001008
_02104F30: .word 0x0400000A
	arm_func_end FUN_ov17_02104e8c

	arm_func_start FUN_ov17_02104f34
FUN_ov17_02104f34: ; 0x02104F34
	stmfd sp!, {r4, lr}
	sub sp, sp, #0x18
	bl FUN_ov17_02107098
	mov r4, r0
	ldr r0, _02104FC4 ; =0x02112514
	add r1, sp, #4
	mov r2, #0x14
	bl MIi_CpuCopy32
	add r1, sp, #0
	mov r0, #0
	bl FUN_ov17_020f8b34
	ldr r0, [sp]
	cmp r0, #2
	moveq r0, #4
	streqb r0, [sp, #0xe]
	ldrneb r0, [r4, #0xf4]
	addne r0, r0, #1
	strneb r0, [sp, #0xe]
	add r0, sp, #4
	bl  FUN_ov15_020c3728
	cmp r0, #0
	bne _02104F90
	bl FUN_02004160
_02104F90:
	ldr r0, [sp]
	cmp r0, #0
	bne _02104FA8
	ldrb r0, [r4, #0xf4]
	mov r1, r4
	bl  FUN_ov15_020c3c3c
_02104FA8:
	mov r0, #0
	ldr r1, _02104FC8 ; =FUN_ov17_02105188
	mov r2, r0
	mov r3, #0x78
	bl FUN_ov17_0210f314
	add sp, sp, #0x18
	ldmfd sp!, {r4, pc}
_02104FC4: .word 0x02112514
_02104FC8: .word FUN_ov17_02105188
	arm_func_end FUN_ov17_02104f34

	arm_func_start FUN_ov17_02104fcc
FUN_ov17_02104fcc: ; 0x02104FCC
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	mov r7, #2
	mov r6, #0
	mov r4, #0x15
	mov r5, #8
	mov r0, r7
	mov r1, r6
	mov r2, r4
	mov r3, r5
	bl FUN_ov17_0210d238
	mov r0, r6
	mov r1, r4
	bl FUN_ov17_0210dcd0
	add r1, sp, #0
	mov r0, r6
	bl FUN_ov17_020f8b34
	ldr r0, [sp]
	cmp r0, #0
	bne _0210503C
	mov r4, #1
	mov r0, r7
	mov r1, r4
	mov r2, r4
	mov r3, r5
	bl FUN_ov17_0210d238
	mov r0, r4
	mov r1, r4
	bl FUN_ov17_0210dcd0
_0210503C:
	ldr r0, _02105048 ; =FUN_ov17_0210504c
	bl FUN_ov17_020f8ad4
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_02105048: .word FUN_ov17_0210504c
	arm_func_end FUN_ov17_02104fcc

	arm_func_start FUN_ov17_0210504c
FUN_ov17_0210504c: ; 0x0210504C
	stmfd sp!, {r3, lr}
	mov r0, #1
	bl FUN_ov17_0210d214
	cmp r0, #0
	ldmnefd sp!, {r3, pc}
	mov r0, #0
	bl FUN_ov17_0210d214
	cmp r0, #0
	ldmnefd sp!, {r3, pc}
	ldr r0, _0210507C ; =FUN_ov17_02105080
	bl FUN_ov17_020f8ad4
	ldmfd sp!, {r3, pc}
_0210507C: .word FUN_ov17_02105080
	arm_func_end FUN_ov17_0210504c

	arm_func_start FUN_ov17_02105080
FUN_ov17_02105080: ; 0x02105080
	stmfd sp!, {r3, lr}
	bl FUN_ov17_02105094
	bl FUN_ov17_02105098
	bl FUN_ov17_0210509c
	ldmfd sp!, {r3, pc}
	arm_func_end FUN_ov17_02105080

	arm_func_start FUN_ov17_02105094
FUN_ov17_02105094: ; 0x02105094
	bx lr
	arm_func_end FUN_ov17_02105094

	arm_func_start FUN_ov17_02105098
FUN_ov17_02105098: ; 0x02105098
	bx lr
	arm_func_end FUN_ov17_02105098

	arm_func_start FUN_ov17_0210509c
FUN_ov17_0210509c: ; 0x0210509C
	bx lr
	arm_func_end FUN_ov17_0210509c

	arm_func_start FUN_ov17_021050a0
FUN_ov17_021050a0: ; 0x021050A0
	stmfd sp!, {r3, lr}
	mov r0, #3
	mov r1, #0
	mov r2, #0x15
	mov r3, #8
	bl FUN_ov17_0210d238
	ldr r0, _021050C4 ; =FUN_ov17_021050c8
	bl FUN_ov17_020f8ad4
	ldmfd sp!, {r3, pc}
_021050C4: .word FUN_ov17_021050c8
	arm_func_end FUN_ov17_021050a0

	arm_func_start FUN_ov17_021050c8
FUN_ov17_021050c8: ; 0x021050C8
	stmfd sp!, {r3, lr}
	mov r0, #0
	bl FUN_ov17_0210d214
	cmp r0, #0
	ldmnefd sp!, {r3, pc}
	ldr r0, _021050E8 ; =FUN_ov17_021050ec
	bl FUN_ov17_020f8ad4
	ldmfd sp!, {r3, pc}
_021050E8: .word FUN_ov17_021050ec
	arm_func_end FUN_ov17_021050c8

	arm_func_start FUN_ov17_021050ec
FUN_ov17_021050ec: ; 0x021050EC
	stmfd sp!, {r3, r4, r5, lr}
	bl FUN_ov17_02107868
	mov r5, r0
	bl  FUN_ov15_020c3ae4
	cmp r0, #0
	ldmeqfd sp!, {r3, r4, r5, pc}
	bl  FUN_ov15_020cb3ec
	mov r4, #0xe
	mov r2, r4
	add r1, r5, #0xf0
	bl MI_CpuCopy8
	bl  FUN_ov15_020cb3ec
	mov r2, r4
	add r1, r5, #0x1f0
	bl MI_CpuCopy8
	bl FUN_ov17_020f459c
	mov r4, #0
	mov r0, r4
	bl FUN_ov17_0210d93c
	mov r0, r4
	mov r1, #0x15
	bl FUN_ov17_0210dd24
	ldr r0, _0210517C ; =0x0211627C
	mov r1, #1
	ldrb r0, [r0]
	cmp r0, #0
	mov r0, r4
	bne _0210516C
	bl FUN_ov17_020f8ae4
	ldr r0, _02105180 ; =FUN_ov17_020ff978
	bl FUN_ov17_020f8ad4
	ldmfd sp!, {r3, r4, r5, pc}
_0210516C:
	bl FUN_ov17_020f8ae4
	ldr r0, _02105184 ; =FUN_ov17_02105214
	bl FUN_ov17_020f8ad4
	ldmfd sp!, {r3, r4, r5, pc}
_0210517C: .word 0x0211627C
_02105180: .word FUN_ov17_020ff978
_02105184: .word FUN_ov17_02105214
	arm_func_end FUN_ov17_021050ec

	arm_func_start FUN_ov17_02105188
FUN_ov17_02105188: ; 0x02105188
	stmfd sp!, {r3, r4, r5, lr}
	mov r5, r0
	bl  FUN_ov15_020c38f0
	movs r4, r0
	ldmeqfd sp!, {r3, r4, r5, pc}
	bl FUN_ov17_020f54a4
	bl FUN_ov17_02107ca8
	cmp r4, #0
	ble _021051C0
	ldr r1, _021051E8 ; =0x0211627C
	mov r2, #1
	mov r0, #0x11
	strb r2, [r1]
	b _021051CC
_021051C0:
	bl  FUN_ov15_020c39dc
	bl FUN_ov17_020fff80
	mov r0, #0x12
_021051CC:
	bl FUN_ov17_02107c40
	ldr r0, _021051EC ; =FUN_ov17_021050a0
	bl FUN_ov17_020f8ad4
	mov r1, r5
	mov r0, #0
	bl FUN_ov17_0210f3b8
	ldmfd sp!, {r3, r4, r5, pc}
_021051E8: .word 0x0211627C
_021051EC: .word FUN_ov17_021050a0
	arm_func_end FUN_ov17_02105188

	arm_func_start FUN_ov17_021051f0
FUN_ov17_021051f0: ; 0x021051F0
	ldr r12, _02105200 ; =FUN_ov17_0210e0a8
	mov r0, r1
	mov r1, #0x20
	bx r12
_02105200: .word FUN_ov17_0210e0a8
	arm_func_end FUN_ov17_021051f0

	arm_func_start FUN_ov17_02105204
FUN_ov17_02105204: ; 0x02105204
	ldr r12, _02105210 ; =FUN_ov17_0210e110
	mov r0, r1
	bx r12
_02105210: .word FUN_ov17_0210e110
	arm_func_end FUN_ov17_02105204

	arm_func_start FUN_ov17_02105214
FUN_ov17_02105214: ; 0x02105214
	stmfd sp!, {r3, lr}
	ldr r0, _0210523C ; =0x02116280
	mov r1, #0
	strb r1, [r0]
	bl FUN_ov17_02105244
	mov r0, #0x2d
	bl FUN_ov17_020f4f4c
	ldr r0, _02105240 ; =FUN_ov17_021052b0
	bl FUN_ov17_020f8ad4
	ldmfd sp!, {r3, pc}
_0210523C: .word 0x02116280
_02105240: .word FUN_ov17_021052b0
	arm_func_end FUN_ov17_02105214

	arm_func_start FUN_ov17_02105244
FUN_ov17_02105244: ; 0x02105244
	stmfd sp!, {r3, lr}
	ldr r0, _021052A0 ; =0x02113470
	ldr r1, _021052A4 ; =FUN_020055bc
	bl FUN_ov17_020f4e84
	ldr r2, _021052A8 ; =0x04001008
	ldr r1, _021052AC ; =0x0400000A
	ldrh r0, [r2]
	bic r0, r0, #3
	orr r0, r0, #3
	strh r0, [r2]
	ldrh r0, [r2, #2]
	bic r0, r0, #3
	orr r0, r0, #3
	strh r0, [r2, #2]
	ldrh r0, [r1]
	bic r0, r0, #3
	orr r0, r0, #3
	strh r0, [r1]
	ldrh r0, [r1, #2]
	bic r0, r0, #3
	orr r0, r0, #3
	strh r0, [r1, #2]
	ldmfd sp!, {r3, pc}
_021052A0: .word 0x02113470
_021052A4: .word FUN_020055bc
_021052A8: .word 0x04001008
_021052AC: .word 0x0400000A
	arm_func_end FUN_ov17_02105244

	arm_func_start FUN_ov17_021052b0
FUN_ov17_021052b0: ; 0x021052B0
	stmfd sp!, {r3, r4, r5, lr}
	mov r5, #0
	mov r4, #0x15
	mov r1, r5
	mov r2, r4
	mov r0, #2
	mov r3, #8
	bl FUN_ov17_0210d238
	mov r0, r5
	mov r1, r4
	bl FUN_ov17_0210dcd0
	ldr r0, _021052E8 ; =FUN_ov17_021052ec
	bl FUN_ov17_020f8ad4
	ldmfd sp!, {r3, r4, r5, pc}
_021052E8: .word FUN_ov17_021052ec
	arm_func_end FUN_ov17_021052b0

	arm_func_start FUN_ov17_021052ec
FUN_ov17_021052ec: ; 0x021052EC
	stmfd sp!, {r3, lr}
	mov r0, #0
	bl FUN_ov17_0210d214
	cmp r0, #0
	ldmnefd sp!, {r3, pc}
	ldr r0, _0210530C ; =FUN_ov17_02105310
	bl FUN_ov17_020f8ad4
	ldmfd sp!, {r3, pc}
_0210530C: .word FUN_ov17_02105310
	arm_func_end FUN_ov17_021052ec

	arm_func_start FUN_ov17_02105310
FUN_ov17_02105310: ; 0x02105310
	stmfd sp!, {r3, lr}
	bl FUN_ov17_02105430
	bl FUN_ov17_02105320
	ldmfd sp!, {r3, pc}
	arm_func_end FUN_ov17_02105310

	arm_func_start FUN_ov17_02105320
FUN_ov17_02105320: ; 0x02105320
	bx lr
	arm_func_end FUN_ov17_02105320

	arm_func_start FUN_ov17_02105324
FUN_ov17_02105324: ; 0x02105324
	stmfd sp!, {r3, r4, r5, lr}
	add r1, sp, #0
	mov r0, #0
	bl FUN_ov17_020f8b34
	ldr r0, [sp]
	cmp r0, #0
	beq _02105344
	bl FUN_ov17_02108214
_02105344:
	mov r5, #3
	mov r1, #1
	mov r4, #8
	mov r0, r5
	mov r2, r1
	mov r3, r4
	bl FUN_ov17_0210d238
	mov r0, r5
	mov r3, r4
	mov r1, #0
	mov r2, #0x15
	bl FUN_ov17_0210d238
	ldr r0, _02105380 ; =FUN_ov17_02105384
	bl FUN_ov17_020f8ad4
	ldmfd sp!, {r3, r4, r5, pc}
_02105380: .word FUN_ov17_02105384
	arm_func_end FUN_ov17_02105324

	arm_func_start FUN_ov17_02105384
FUN_ov17_02105384: ; 0x02105384
	stmfd sp!, {r3, r4, r5, lr}
	mov r5, #1
	mov r0, r5
	bl FUN_ov17_0210d214
	cmp r0, #0
	ldmnefd sp!, {r3, r4, r5, pc}
	mov r4, #0
	mov r0, r4
	bl FUN_ov17_0210d214
	cmp r0, #0
	ldmnefd sp!, {r3, r4, r5, pc}
	bl FUN_ov17_02108718
	cmp r0, #0
	ldmeqfd sp!, {r3, r4, r5, pc}
	mov r0, r4
	bl FUN_ov17_0210d93c
	bl FUN_ov17_020f4de8
	mov r0, r5
	mov r1, r5
	bl FUN_ov17_0210dd24
	mov r0, r4
	mov r1, #0x15
	bl FUN_ov17_0210dd24
	mov r1, r5
	mov r0, #2
	bl FUN_ov17_020f8ae4
	add r1, sp, #0
	mov r0, r4
	bl FUN_ov17_020f8b34
	ldr r0, [sp]
	cmp r0, #0
	bne _0210541C
	mov r0, r4
	mov r1, r4
	bl FUN_ov17_020f8b20
	ldr r0, _02105428 ; =FUN_ov17_020fff90
	bl FUN_ov17_020f8ad4
	ldmfd sp!, {r3, r4, r5, pc}
_0210541C:
	ldr r0, _0210542C ; =FUN_ov17_020f9618
	bl FUN_ov17_020f8ad4
	ldmfd sp!, {r3, r4, r5, pc}
_02105428: .word FUN_ov17_020fff90
_0210542C: .word FUN_ov17_020f9618
	arm_func_end FUN_ov17_02105384

	arm_func_start FUN_ov17_02105430
FUN_ov17_02105430: ; 0x02105430
	stmfd sp!, {r3, lr}
	ldr r1, _02105494 ; =0x02116280
	ldrb r0, [r1]
	add r0, r0, #1
	and r2, r0, #0xff
	strb r0, [r1]
	cmp r2, #0xb4
	ldmlofd sp!, {r3, pc}
	add r1, sp, #0
	mov r0, #0
	bl FUN_ov17_020f8b34
	bl FUN_ov17_020f8b6c
	cmp r0, #0
	beq _02105488
	cmp r0, #1
	bne _02105488
	ldr r0, [sp]
	cmp r0, #0
	beq _02105488
	ldr r0, _02105498 ; =FUN_ov17_020f92c4
	bl FUN_ov17_020f8ad4
	ldmfd sp!, {r3, pc}
_02105488:
	ldr r0, _0210549C ; =FUN_ov17_02105324
	bl FUN_ov17_020f8ad4
	ldmfd sp!, {r3, pc}
_02105494: .word 0x02116280
_02105498: .word FUN_ov17_020f92c4
_0210549C: .word FUN_ov17_02105324
	arm_func_end FUN_ov17_02105430

	arm_func_start FUN_ov17_021054a0
FUN_ov17_021054a0: ; 0x021054A0
	stmfd sp!, {r3, r4, lr}
	sub sp, sp, #4
	bl FUN_ov17_02106be4
	mov r4, #0
	add r1, sp, #0
	mov r0, r4
	bl FUN_ov17_020f8b34
	bl FUN_ov17_02105504
	mov r0, #0x31
	mov r2, r4
	sub r1, r0, #0x32
	bl FUN_ov17_020f4d10
	ldr r0, [sp]
	cmp r0, #2
	beq _021054E0
	bl FUN_ov17_020f5384
_021054E0:
	ldr r0, [sp]
	cmp r0, #1
	bne _021054F0
	bl FUN_ov17_0210756c
_021054F0:
	ldr r0, _02105500 ; =FUN_ov17_02105570
	bl FUN_ov17_020f8ad4
	add sp, sp, #4
	ldmfd sp!, {r3, r4, pc}
_02105500: .word FUN_ov17_02105570
	arm_func_end FUN_ov17_021054a0

	arm_func_start FUN_ov17_02105504
FUN_ov17_02105504: ; 0x02105504
	stmfd sp!, {r3, lr}
	ldr r0, _02105560 ; =0x02113484
	ldr r1, _02105564 ; =FUN_020055bc
	bl FUN_ov17_020f4e84
	ldr r2, _02105568 ; =0x04001008
	ldr r1, _0210556C ; =0x0400000A
	ldrh r0, [r2]
	bic r0, r0, #3
	orr r0, r0, #3
	strh r0, [r2]
	ldrh r0, [r2, #2]
	bic r0, r0, #3
	orr r0, r0, #3
	strh r0, [r2, #2]
	ldrh r0, [r1]
	bic r0, r0, #3
	orr r0, r0, #3
	strh r0, [r1]
	ldrh r0, [r1, #2]
	bic r0, r0, #3
	orr r0, r0, #3
	strh r0, [r1, #2]
	ldmfd sp!, {r3, pc}
_02105560: .word 0x02113484
_02105564: .word FUN_020055bc
_02105568: .word 0x04001008
_0210556C: .word 0x0400000A
	arm_func_end FUN_ov17_02105504

	arm_func_start FUN_ov17_02105570
FUN_ov17_02105570: ; 0x02105570
	stmfd sp!, {r4, r5, r6, r7, r8, lr}
	mov r7, #1
	mov r8, #2
	mov r6, #8
	mov r0, r8
	mov r1, r7
	mov r2, r7
	mov r3, r6
	bl FUN_ov17_0210d238
	mov r5, #0
	mov r4, #0x14
	mov r0, r8
	mov r1, r5
	mov r2, r4
	mov r3, r6
	bl FUN_ov17_0210d238
	mov r0, r7
	mov r1, r7
	bl FUN_ov17_0210dcd0
	mov r0, r5
	mov r1, r4
	bl FUN_ov17_0210dcd0
	ldr r0, _021055D4 ; =FUN_ov17_021055d8
	bl FUN_ov17_020f8ad4
	ldmfd sp!, {r4, r5, r6, r7, r8, pc}
_021055D4: .word FUN_ov17_021055d8
	arm_func_end FUN_ov17_02105570

	arm_func_start FUN_ov17_021055d8
FUN_ov17_021055d8: ; 0x021055D8
	stmfd sp!, {r3, r4, r5, r6, lr}
	sub sp, sp, #0x14
	ldr r0, _02105658 ; =0x02112528
	add r6, sp, #8
	ldmia r0, {r0, r1, r2}
	mov r5, #1
	stmia r6, {r0, r1, r2}
	mov r0, r5
	bl FUN_ov17_0210d214
	cmp r0, #0
	addne sp, sp, #0x14
	ldmnefd sp!, {r3, r4, r5, r6, pc}
	mov r4, #0
	mov r0, r4
	bl FUN_ov17_0210d214
	cmp r0, #0
	addne sp, sp, #0x14
	ldmnefd sp!, {r3, r4, r5, r6, pc}
	add r1, sp, #4
	mov r0, r4
	bl FUN_ov17_020f8b34
	str r4, [sp]
	ldr r0, [sp, #4]
	mov r1, r5
	ldr r0, [r6, r0, lsl #2]
	mov r2, r5
	sub r3, r4, #1
	bl FUN_ov17_02108e9c
	ldr r0, _0210565C ; =FUN_ov17_02105660
	bl FUN_ov17_020f8ad4
	add sp, sp, #0x14
	ldmfd sp!, {r3, r4, r5, r6, pc}
_02105658: .word 0x02112528
_0210565C: .word FUN_ov17_02105660
	arm_func_end FUN_ov17_021055d8

	arm_func_start FUN_ov17_02105660
FUN_ov17_02105660: ; 0x02105660
	stmfd sp!, {r4, lr}
	bl FUN_ov17_021056a0
	bl FUN_ov17_021056a4
	bl FUN_ov17_021091fc
	cmp r0, #0
	ldmnefd sp!, {r4, pc}
	mov r4, #6
	mov r0, r4
	bl FUN_ov17_02107c40
	bl FUN_ov17_021091b8
	mov r0, r4
	bl FUN_ov17_02107c40
	ldr r0, _0210569C ; =FUN_ov17_021056a8
	bl FUN_ov17_020f8ad4
	ldmfd sp!, {r4, pc}
_0210569C: .word FUN_ov17_021056a8
	arm_func_end FUN_ov17_02105660

	arm_func_start FUN_ov17_021056a0
FUN_ov17_021056a0: ; 0x021056A0
	bx lr
	arm_func_end FUN_ov17_021056a0

	arm_func_start FUN_ov17_021056a4
FUN_ov17_021056a4: ; 0x021056A4
	bx lr
	arm_func_end FUN_ov17_021056a4

	arm_func_start FUN_ov17_021056a8
FUN_ov17_021056a8: ; 0x021056A8
	stmfd sp!, {r3, lr}
	bl FUN_ov17_02109210
	cmp r0, #0
	ldmnefd sp!, {r3, pc}
	mov r0, #3
	mov r1, #0
	mov r2, #0x14
	mov r3, #8
	bl FUN_ov17_0210d238
	ldr r0, _021056D8 ; =FUN_ov17_021056dc
	bl FUN_ov17_020f8ad4
	ldmfd sp!, {r3, pc}
_021056D8: .word FUN_ov17_021056dc
	arm_func_end FUN_ov17_021056a8

	arm_func_start FUN_ov17_021056dc
FUN_ov17_021056dc: ; 0x021056DC
	stmfd sp!, {r4, lr}
	mov r4, #0
	mov r0, r4
	bl FUN_ov17_0210d214
	cmp r0, #0
	ldmnefd sp!, {r4, pc}
	mov r0, r4
	mov r1, #0x14
	bl FUN_ov17_0210dd24
	mov r0, r4
	mov r1, #1
	bl FUN_ov17_020f8ae4
	ldr r0, _02105718 ; =FUN_ov17_02104df4
	bl FUN_ov17_020f8ad4
	ldmfd sp!, {r4, pc}
_02105718: .word FUN_ov17_02104df4
	arm_func_end FUN_ov17_021056dc

	arm_func_start FUN_ov17_0210571c
FUN_ov17_0210571c: ; 0x0210571C
	stmfd sp!, {r3, lr}
	ldr r0, _02105754 ; =0x02116284
	mov r1, #0
	strb r1, [r0]
	bl FUN_ov17_0210575c
	mov r0, #8
	bl FUN_ov17_020f5324
	mov r0, #0x29
	bl FUN_ov17_020f4f4c
	mov r0, #0x10
	bl FUN_ov17_02107c40
	ldr r0, _02105758 ; =FUN_ov17_021057dc
	bl FUN_ov17_020f8ad4
	ldmfd sp!, {r3, pc}
_02105754: .word 0x02116284
_02105758: .word FUN_ov17_021057dc
	arm_func_end FUN_ov17_0210571c

	arm_func_start FUN_ov17_0210575c
FUN_ov17_0210575c: ; 0x0210575C
	stmfd sp!, {r3, lr}
	ldr r0, _021057CC ; =0x02113498
	ldr r1, _021057D0 ; =FUN_020055bc
	bl FUN_ov17_020f4e84
	ldr r3, _021057D4 ; =0x04001008
	ldr r1, _021057D8 ; =0x0400000A
	ldrh r0, [r3]
	sub r2, r3, #0x1000
	bic r0, r0, #3
	orr r0, r0, #3
	strh r0, [r3]
	ldrh r0, [r3, #2]
	bic r0, r0, #3
	orr r0, r0, #3
	strh r0, [r3, #2]
	ldrh r0, [r2]
	bic r0, r0, #3
	orr r0, r0, #3
	strh r0, [r2]
	ldrh r0, [r1]
	bic r0, r0, #3
	orr r0, r0, #3
	strh r0, [r1]
	ldrh r0, [r1, #2]
	bic r0, r0, #3
	orr r0, r0, #3
	strh r0, [r1, #2]
	ldmfd sp!, {r3, pc}
_021057CC: .word 0x02113498
_021057D0: .word FUN_020055bc
_021057D4: .word 0x04001008
_021057D8: .word 0x0400000A
	arm_func_end FUN_ov17_0210575c

	arm_func_start FUN_ov17_021057dc
FUN_ov17_021057dc: ; 0x021057DC
	stmfd sp!, {r3, r4, r5, lr}
	mov r5, #0
	mov r4, #0x15
	mov r1, r5
	mov r2, r4
	mov r0, #2
	mov r3, #8
	bl FUN_ov17_0210d238
	mov r0, r5
	mov r1, r4
	bl FUN_ov17_0210dcd0
	ldr r0, _02105814 ; =FUN_ov17_02105818
	bl FUN_ov17_020f8ad4
	ldmfd sp!, {r3, r4, r5, pc}
_02105814: .word FUN_ov17_02105818
	arm_func_end FUN_ov17_021057dc

	arm_func_start FUN_ov17_02105818
FUN_ov17_02105818: ; 0x02105818
	stmfd sp!, {r3, lr}
	mov r0, #0
	bl FUN_ov17_0210d214
	cmp r0, #0
	ldmnefd sp!, {r3, pc}
	ldr r0, _02105838 ; =FUN_ov17_0210583c
	bl FUN_ov17_020f8ad4
	ldmfd sp!, {r3, pc}
_02105838: .word FUN_ov17_0210583c
	arm_func_end FUN_ov17_02105818

	arm_func_start FUN_ov17_0210583c
FUN_ov17_0210583c: ; 0x0210583C
	stmfd sp!, {r3, lr}
	bl FUN_ov17_0210590c
	bl FUN_ov17_0210584c
	ldmfd sp!, {r3, pc}
	arm_func_end FUN_ov17_0210583c

	arm_func_start FUN_ov17_0210584c
FUN_ov17_0210584c: ; 0x0210584C
	bx lr
	arm_func_end FUN_ov17_0210584c

	arm_func_start FUN_ov17_02105850
FUN_ov17_02105850: ; 0x02105850
	stmfd sp!, {r3, r4, r5, lr}
	mov r5, #3
	mov r1, #1
	mov r4, #8
	mov r0, r5
	mov r2, r1
	mov r3, r4
	bl FUN_ov17_0210d238
	mov r0, r5
	mov r3, r4
	mov r1, #0
	mov r2, #0x15
	bl FUN_ov17_0210d238
	ldr r0, _02105890 ; =FUN_ov17_02105894
	bl FUN_ov17_020f8ad4
	ldmfd sp!, {r3, r4, r5, pc}
_02105890: .word FUN_ov17_02105894
	arm_func_end FUN_ov17_02105850

	arm_func_start FUN_ov17_02105894
FUN_ov17_02105894: ; 0x02105894
	stmfd sp!, {r3, r4, r5, lr}
	mov r5, #1
	mov r0, r5
	bl FUN_ov17_0210d214
	cmp r0, #0
	ldmnefd sp!, {r3, r4, r5, pc}
	mov r4, #0
	mov r0, r4
	bl FUN_ov17_0210d214
	cmp r0, #0
	ldmnefd sp!, {r3, r4, r5, pc}
	mov r0, r4
	bl FUN_ov17_0210d93c
	bl FUN_ov17_020f4de8
	mov r0, r5
	mov r1, r5
	bl FUN_ov17_0210dd24
	mov r0, r4
	mov r1, #0x15
	bl FUN_ov17_0210dd24
	mov r0, r4
	mov r1, r4
	bl FUN_ov17_020f8ae4
	mov r0, r4
	mov r1, #2
	bl FUN_ov17_020f8b20
	ldr r0, _02105908 ; =FUN_ov17_021054a0
	bl FUN_ov17_020f8ad4
	ldmfd sp!, {r3, r4, r5, pc}
_02105908: .word FUN_ov17_021054a0
	arm_func_end FUN_ov17_02105894

	arm_func_start FUN_ov17_0210590c
FUN_ov17_0210590c: ; 0x0210590C
	stmfd sp!, {r3, lr}
	ldr r1, _02105938 ; =0x02116284
	ldrb r0, [r1]
	add r0, r0, #1
	and r2, r0, #0xff
	strb r0, [r1]
	cmp r2, #0x78
	ldmlofd sp!, {r3, pc}
	ldr r0, _0210593C ; =FUN_ov17_02105850
	bl FUN_ov17_020f8ad4
	ldmfd sp!, {r3, pc}
_02105938: .word 0x02116284
_0210593C: .word FUN_ov17_02105850
	arm_func_end FUN_ov17_0210590c

	arm_func_start FUN_ov17_02105940
FUN_ov17_02105940: ; 0x02105940
	stmfd sp!, {r4, lr}
	ldr r0, _02105988 ; =0x02116288
	mov r4, #0
	strb r4, [r0]
	bl FUN_ov17_02105990
	mov r0, #8
	bl FUN_ov17_020f5324
	mov r0, #0x38
	mov r2, r4
	sub r1, r0, #0x39
	bl FUN_ov17_020f4d10
	mov r0, #1
	bl FUN_ov17_020f4ec4
	mov r0, #0x27
	bl FUN_ov17_020f4f4c
	ldr r0, _0210598C ; =FUN_ov17_02105a38
	bl FUN_ov17_020f8ad4
	ldmfd sp!, {r4, pc}
_02105988: .word 0x02116288
_0210598C: .word FUN_ov17_02105a38
	arm_func_end FUN_ov17_02105940

	arm_func_start FUN_ov17_02105990
FUN_ov17_02105990: ; 0x02105990
	stmfd sp!, {r3, lr}
	ldr r0, _02105A18 ; =0x021134AC
	ldr r1, _02105A1C ; =0x0200593C
	bl FUN_ov17_020f4e84
	ldr r0, _02105A20 ; =0x021134C4
	ldr r1, _02105A24 ; =FUN_020050fc
	bl FUN_ov17_020f4e84
	ldr r0, _02105A28 ; =0x021134DC
	ldr r1, _02105A2C ; =FUN_020055bc
	bl FUN_ov17_020f4e84
	ldr r3, _02105A30 ; =0x04001008
	ldr r1, _02105A34 ; =0x0400000A
	ldrh r0, [r3]
	sub r2, r3, #0x1000
	bic r0, r0, #3
	orr r0, r0, #3
	strh r0, [r3]
	ldrh r0, [r3, #2]
	bic r0, r0, #3
	orr r0, r0, #3
	strh r0, [r3, #2]
	ldrh r0, [r2]
	bic r0, r0, #3
	orr r0, r0, #3
	strh r0, [r2]
	ldrh r0, [r1]
	bic r0, r0, #3
	orr r0, r0, #3
	strh r0, [r1]
	ldrh r0, [r1, #2]
	bic r0, r0, #3
	orr r0, r0, #3
	strh r0, [r1, #2]
	ldmfd sp!, {r3, pc}
_02105A18: .word 0x021134AC
_02105A1C: .word 0x0200593C
_02105A20: .word 0x021134C4
_02105A24: .word FUN_020050fc
_02105A28: .word 0x021134DC
_02105A2C: .word FUN_020055bc
_02105A30: .word 0x04001008
_02105A34: .word 0x0400000A
	arm_func_end FUN_ov17_02105990

	arm_func_start FUN_ov17_02105a38
FUN_ov17_02105a38: ; 0x02105A38
	stmfd sp!, {r4, r5, r6, r7, r8, lr}
	mov r7, #1
	mov r8, #2
	mov r6, #8
	mov r0, r8
	mov r1, r7
	mov r2, r7
	mov r3, r6
	bl FUN_ov17_0210d238
	mov r5, #0
	mov r4, #0x15
	mov r0, r8
	mov r1, r5
	mov r2, r4
	mov r3, r6
	bl FUN_ov17_0210d238
	mov r0, r7
	mov r1, r7
	bl FUN_ov17_0210dcd0
	mov r0, r5
	mov r1, r4
	bl FUN_ov17_0210dcd0
	ldr r0, _02105A9C ; =FUN_ov17_02105aa0
	bl FUN_ov17_020f8ad4
	ldmfd sp!, {r4, r5, r6, r7, r8, pc}
_02105A9C: .word FUN_ov17_02105aa0
	arm_func_end FUN_ov17_02105a38

	arm_func_start FUN_ov17_02105aa0
FUN_ov17_02105aa0: ; 0x02105AA0
	stmfd sp!, {r3, lr}
	mov r0, #1
	bl FUN_ov17_0210d214
	cmp r0, #0
	ldmnefd sp!, {r3, pc}
	mov r0, #0
	bl FUN_ov17_0210d214
	cmp r0, #0
	ldmnefd sp!, {r3, pc}
	mov r0, #6
	bl FUN_ov17_020f4f14
	ldr r0, _02105AD8 ; =FUN_ov17_02105adc
	bl FUN_ov17_020f8ad4
	ldmfd sp!, {r3, pc}
_02105AD8: .word FUN_ov17_02105adc
	arm_func_end FUN_ov17_02105aa0

	arm_func_start FUN_ov17_02105adc
FUN_ov17_02105adc: ; 0x02105ADC
	stmfd sp!, {r3, lr}
	bl FUN_ov17_020f47c4
	cmn r0, #2
	ldmeqfd sp!, {r3, pc}
	bl FUN_ov17_020f4834
	ldr r0, _02105AFC ; =FUN_ov17_02105b00
	bl FUN_ov17_020f8ad4
	ldmfd sp!, {r3, pc}
_02105AFC: .word FUN_ov17_02105b00
	arm_func_end FUN_ov17_02105adc

	arm_func_start FUN_ov17_02105b00
FUN_ov17_02105b00: ; 0x02105B00
	stmfd sp!, {r3, lr}
	bl FUN_ov17_02105b14
	bl FUN_ov17_02105b50
	bl FUN_ov17_02105b54
	ldmfd sp!, {r3, pc}
	arm_func_end FUN_ov17_02105b00

	arm_func_start FUN_ov17_02105b14
FUN_ov17_02105b14: ; 0x02105B14
	stmfd sp!, {r4, lr}
	mov r4, #1
	mov r0, r4
	bl FUN_ov17_0210e4b8
	cmp r0, #0
	beq _02105B34
	mov r0, r4
	bl FUN_ov17_020f47d8
_02105B34:
	mov r0, #2
	bl FUN_ov17_0210e4b8
	cmp r0, #0
	ldmeqfd sp!, {r4, pc}
	mov r0, #0
	bl FUN_ov17_020f47d8
	ldmfd sp!, {r4, pc}
	arm_func_end FUN_ov17_02105b14

	arm_func_start FUN_ov17_02105b50
FUN_ov17_02105b50: ; 0x02105B50
	bx lr
	arm_func_end FUN_ov17_02105b50

	arm_func_start FUN_ov17_02105b54
FUN_ov17_02105b54: ; 0x02105B54
	stmfd sp!, {r3, lr}
	bl FUN_ov17_020f47c4
	cmp r0, #0
	beq _02105B70
	cmp r0, #1
	beq _02105B7C
	ldmfd sp!, {r3, pc}
_02105B70:
	mov r0, #7
	bl FUN_ov17_02107c40
	b _02105B90
_02105B7C:
	mov r0, #6
	bl FUN_ov17_02107c40
	ldr r0, _02105B9C ; =0x02116288
	mov r1, #1
	strb r1, [r0]
_02105B90:
	ldr r0, _02105BA0 ; =FUN_ov17_02105ba4
	bl FUN_ov17_020f8ad4
	ldmfd sp!, {r3, pc}
_02105B9C: .word 0x02116288
_02105BA0: .word FUN_ov17_02105ba4
	arm_func_end FUN_ov17_02105b54

	arm_func_start FUN_ov17_02105ba4
FUN_ov17_02105ba4: ; 0x02105BA4
	stmfd sp!, {r3, lr}
	bl FUN_ov17_020f484c
	mov r0, #8
	bl FUN_ov17_0210d424
	ldr r0, _02105BC0 ; =FUN_ov17_02105bc4
	bl FUN_ov17_020f8ad4
	ldmfd sp!, {r3, pc}
_02105BC0: .word FUN_ov17_02105bc4
	arm_func_end FUN_ov17_02105ba4

	arm_func_start FUN_ov17_02105bc4
FUN_ov17_02105bc4: ; 0x02105BC4
	stmfd sp!, {r4, lr}
	mov r4, #1
	mov r0, r4
	bl FUN_ov17_0210d214
	cmp r0, #0
	ldmnefd sp!, {r4, pc}
	bl FUN_ov17_020f4794
	ldr r0, _02105C24 ; =0x02116288
	ldrb r0, [r0]
	cmp r0, #0
	bne _02105C04
	mov r1, r4
	mov r2, r4
	mov r0, #3
	mov r3, #8
	bl FUN_ov17_0210d238
_02105C04:
	mov r0, #3
	mov r1, #0
	mov r2, #0x15
	mov r3, #8
	bl FUN_ov17_0210d238
	ldr r0, _02105C28 ; =FUN_ov17_02105c2c
	bl FUN_ov17_020f8ad4
	ldmfd sp!, {r4, pc}
_02105C24: .word 0x02116288
_02105C28: .word FUN_ov17_02105c2c
	arm_func_end FUN_ov17_02105bc4

	arm_func_start FUN_ov17_02105c2c
FUN_ov17_02105c2c: ; 0x02105C2C
	stmfd sp!, {r3, lr}
	mov r0, #0
	bl FUN_ov17_0210d214
	cmp r0, #0
	ldmnefd sp!, {r3, pc}
	ldr r0, _02105CD8 ; =0x02116288
	ldrb r0, [r0]
	cmp r0, #0
	bne _02105C60
	mov r0, #1
	bl FUN_ov17_0210d214
	cmp r0, #0
	ldmnefd sp!, {r3, pc}
_02105C60:
	bl FUN_ov17_020f4808
	cmp r0, #0
	ldmeqfd sp!, {r3, pc}
	mov r0, #0
	bl FUN_ov17_0210d93c
	ldr r0, _02105CD8 ; =0x02116288
	ldrb r0, [r0]
	cmp r0, #0
	bne _02105C94
	bl FUN_ov17_020f4de8
	mov r0, #1
	mov r1, r0
	bl FUN_ov17_0210dd24
_02105C94:
	mov r0, #0
	mov r1, #0x15
	bl FUN_ov17_0210dd24
	ldr r0, _02105CD8 ; =0x02116288
	mov r1, #1
	ldrb r0, [r0]
	cmp r0, #0
	mov r0, #2
	bne _02105CC8
	bl FUN_ov17_020f8ae4
	ldr r0, _02105CDC ; =FUN_ov17_02103924
	bl FUN_ov17_020f8ad4
	ldmfd sp!, {r3, pc}
_02105CC8:
	bl FUN_ov17_020f8ae4
	ldr r0, _02105CE0 ; =FUN_ov17_02105d04
	bl FUN_ov17_020f8ad4
	ldmfd sp!, {r3, pc}
_02105CD8: .word 0x02116288
_02105CDC: .word FUN_ov17_02103924
_02105CE0: .word FUN_ov17_02105d04
	arm_func_end FUN_ov17_02105c2c

	arm_func_start FUN_ov17_02105ce4
FUN_ov17_02105ce4: ; 0x02105CE4
	ldr r0, _02105D00 ; =0x02FFFFA8
	ldrh r0, [r0]
	and r0, r0, #0x8000
	movs r0, r0, asr #0xf
	movne r0, #1
	moveq r0, #0
	bx lr
_02105D00: .word 0x02FFFFA8
	arm_func_end FUN_ov17_02105ce4

	arm_func_start FUN_ov17_02105d04
FUN_ov17_02105d04: ; 0x02105D04
	stmfd sp!, {r4, r5, lr}
	sub sp, sp, #0x6c
	ldr r0, _02105D90 ; =0x0211628C
	mov r5, #0
	strb r5, [r0]
	bl FUN_ov17_02105d9c
	mov r0, #8
	bl FUN_ov17_020f5324
	mov r0, #2
	bl FUN_ov17_020f4ec4
	add r0, sp, #0x16
	bl FUN_02003f54
	add r4, sp, #0
	mov r0, r5
	mov r1, r4
	mov r2, #0x16
	bl MIi_CpuClear16
	ldrh r2, [sp, #0x30]
	add r0, sp, #0x1a
	mov r1, r4
	mov r2, r2, lsl #1
	bl MIi_CpuCopy16
	mov r0, r4
	mov r1, #0x28
	bl FUN_ov17_020f4fc0
	mov r0, r5
	bl FUN_ov17_020f44d0
	ldr r0, _02105D94 ; =FUN_ov17_021060f0
	bl FUN_ov17_021087d8
	mov r0, #0xb
	bl FUN_ov17_02107c40
	ldr r0, _02105D98 ; =FUN_ov17_02105e44
	bl FUN_ov17_020f8ad4
	add sp, sp, #0x6c
	ldmfd sp!, {r4, r5, pc}
_02105D90: .word 0x0211628C
_02105D94: .word FUN_ov17_021060f0
_02105D98: .word FUN_ov17_02105e44
	arm_func_end FUN_ov17_02105d04

	arm_func_start FUN_ov17_02105d9c
FUN_ov17_02105d9c: ; 0x02105D9C
	stmfd sp!, {r3, lr}
	ldr r0, _02105E24 ; =0x021134F0
	ldr r1, _02105E28 ; =0x0200593C
	bl FUN_ov17_020f4e84
	ldr r0, _02105E2C ; =0x02113508
	ldr r1, _02105E30 ; =FUN_020050fc
	bl FUN_ov17_020f4e84
	ldr r0, _02105E34 ; =0x02113520
	ldr r1, _02105E38 ; =FUN_020055bc
	bl FUN_ov17_020f4e84
	ldr r3, _02105E3C ; =0x04001008
	ldr r1, _02105E40 ; =0x0400000A
	ldrh r0, [r3]
	sub r2, r3, #0x1000
	bic r0, r0, #3
	orr r0, r0, #3
	strh r0, [r3]
	ldrh r0, [r3, #2]
	bic r0, r0, #3
	orr r0, r0, #3
	strh r0, [r3, #2]
	ldrh r0, [r2]
	bic r0, r0, #3
	orr r0, r0, #3
	strh r0, [r2]
	ldrh r0, [r1]
	bic r0, r0, #3
	orr r0, r0, #3
	strh r0, [r1]
	ldrh r0, [r1, #2]
	bic r0, r0, #3
	orr r0, r0, #3
	strh r0, [r1, #2]
	ldmfd sp!, {r3, pc}
_02105E24: .word 0x021134F0
_02105E28: .word 0x0200593C
_02105E2C: .word 0x02113508
_02105E30: .word FUN_020050fc
_02105E34: .word 0x02113520
_02105E38: .word FUN_020055bc
_02105E3C: .word 0x04001008
_02105E40: .word 0x0400000A
	arm_func_end FUN_ov17_02105d9c

	arm_func_start FUN_ov17_02105e44
FUN_ov17_02105e44: ; 0x02105E44
	stmfd sp!, {r3, r4, r5, lr}
	mov r5, #0
	mov r4, #0x15
	mov r1, r5
	mov r2, r4
	mov r0, #2
	mov r3, #8
	bl FUN_ov17_0210d238
	mov r0, r5
	mov r1, r4
	bl FUN_ov17_0210dcd0
	ldr r0, _02105E7C ; =FUN_ov17_02105e80
	bl FUN_ov17_020f8ad4
	ldmfd sp!, {r3, r4, r5, pc}
_02105E7C: .word FUN_ov17_02105e80
	arm_func_end FUN_ov17_02105e44

	arm_func_start FUN_ov17_02105e80
FUN_ov17_02105e80: ; 0x02105E80
	stmfd sp!, {r3, lr}
	mov r0, #0
	bl FUN_ov17_0210d214
	cmp r0, #0
	ldmnefd sp!, {r3, pc}
	mov r0, #2
	bl FUN_ov17_020f4f14
	ldr r0, _02105EA8 ; =FUN_ov17_02105eac
	bl FUN_ov17_020f8ad4
	ldmfd sp!, {r3, pc}
_02105EA8: .word FUN_ov17_02105eac
	arm_func_end FUN_ov17_02105e80

	arm_func_start FUN_ov17_02105eac
FUN_ov17_02105eac: ; 0x02105EAC
	stmfd sp!, {r3, lr}
	bl FUN_ov17_020f47c4
	cmn r0, #2
	ldmeqfd sp!, {r3, pc}
	bl FUN_ov17_020f4834
	ldr r0, _02105ECC ; =FUN_ov17_02105ed0
	bl FUN_ov17_020f8ad4
	ldmfd sp!, {r3, pc}
_02105ECC: .word FUN_ov17_02105ed0
	arm_func_end FUN_ov17_02105eac

	arm_func_start FUN_ov17_02105ed0
FUN_ov17_02105ed0: ; 0x02105ED0
	stmfd sp!, {r3, lr}
	bl FUN_ov17_02105ee4
	bl FUN_ov17_02105f1c
	bl FUN_ov17_02105f20
	ldmfd sp!, {r3, pc}
	arm_func_end FUN_ov17_02105ed0

	arm_func_start FUN_ov17_02105ee4
FUN_ov17_02105ee4: ; 0x02105EE4
	stmfd sp!, {r3, lr}
	mov r0, #2
	bl FUN_ov17_0210e4b8
	cmp r0, #0
	beq _02105F04
	mov r0, #0
	bl FUN_ov17_020f47d8
	ldmfd sp!, {r3, pc}
_02105F04:
	bl FUN_ov17_02105ce4
	cmp r0, #0
	ldmeqfd sp!, {r3, pc}
	mov r0, #0
	bl FUN_ov17_020f47d8
	ldmfd sp!, {r3, pc}
	arm_func_end FUN_ov17_02105ee4

	arm_func_start FUN_ov17_02105f1c
FUN_ov17_02105f1c: ; 0x02105F1C
	bx lr
	arm_func_end FUN_ov17_02105f1c

	arm_func_start FUN_ov17_02105f20
FUN_ov17_02105f20: ; 0x02105F20
	stmfd sp!, {r4, lr}
	ldr r4, _02105F60 ; =0x0211628C
	ldrb r0, [r4]
	cmp r0, #0
	ldmnefd sp!, {r4, pc}
	bl FUN_ov17_020f47c4
	cmp r0, #0
	ldmnefd sp!, {r4, pc}
	mov r0, #2
	strb r0, [r4]
	bl FUN_ov17_02107ca8
	mov r0, #7
	bl FUN_ov17_02107c40
	ldr r0, _02105F64 ; =FUN_ov17_02105f68
	bl FUN_ov17_020f8ad4
	ldmfd sp!, {r4, pc}
_02105F60: .word 0x0211628C
_02105F64: .word FUN_ov17_02105f68
	arm_func_end FUN_ov17_02105f20

	arm_func_start FUN_ov17_02105f68
FUN_ov17_02105f68: ; 0x02105F68
	stmfd sp!, {r3, lr}
	bl FUN_ov17_020f484c
	mov r0, #8
	bl FUN_ov17_0210d424
	ldr r0, _02105F84 ; =FUN_ov17_02105f88
	bl FUN_ov17_020f8ad4
	ldmfd sp!, {r3, pc}
_02105F84: .word FUN_ov17_02105f88
	arm_func_end FUN_ov17_02105f68

	arm_func_start FUN_ov17_02105f88
FUN_ov17_02105f88: ; 0x02105F88
	stmfd sp!, {r4, lr}
	mov r4, #1
	mov r0, r4
	bl FUN_ov17_0210d214
	cmp r0, #0
	ldmnefd sp!, {r4, pc}
	bl FUN_ov17_020f4794
	ldr r0, _02105FF0 ; =0x0211628C
	ldrb r0, [r0]
	add r0, r0, #0xfe
	and r0, r0, #0xff
	cmp r0, #1
	bhi _02105FD0
	mov r1, r4
	mov r2, r4
	mov r0, #3
	mov r3, #8
	bl FUN_ov17_0210d238
_02105FD0:
	mov r0, #3
	mov r1, #0
	mov r2, #0x15
	mov r3, #8
	bl FUN_ov17_0210d238
	ldr r0, _02105FF4 ; =FUN_ov17_02105ff8
	bl FUN_ov17_020f8ad4
	ldmfd sp!, {r4, pc}
_02105FF0: .word 0x0211628C
_02105FF4: .word FUN_ov17_02105ff8
	arm_func_end FUN_ov17_02105f88

	arm_func_start FUN_ov17_02105ff8
FUN_ov17_02105ff8: ; 0x02105FF8
	stmfd sp!, {r4, lr}
	mov r0, #0
	bl FUN_ov17_0210d214
	cmp r0, #0
	ldmnefd sp!, {r4, pc}
	ldr r0, _021060E0 ; =0x0211628C
	ldrb r0, [r0]
	cmp r0, #2
	bne _0210602C
	mov r0, #1
	bl FUN_ov17_0210d214
	cmp r0, #0
	ldmnefd sp!, {r4, pc}
_0210602C:
	bl FUN_ov17_020f4808
	cmp r0, #0
	ldmeqfd sp!, {r4, pc}
	bl FUN_ov17_02108980
	bl FUN_ov17_020f459c
	mov r0, #0
	bl FUN_ov17_0210d93c
	ldr r0, _021060E0 ; =0x0211628C
	ldrb r0, [r0]
	add r0, r0, #0xfe
	and r0, r0, #0xff
	cmp r0, #1
	bhi _02106070
	bl FUN_ov17_020f4de8
	mov r0, #1
	mov r1, r0
	bl FUN_ov17_0210dd24
_02106070:
	mov r4, #0
	mov r0, r4
	mov r1, #0x15
	bl FUN_ov17_0210dd24
	ldr r0, _021060E0 ; =0x0211628C
	ldrb r0, [r0]
	cmp r0, #2
	bne _021060A8
	mov r0, #2
	mov r1, #1
	bl FUN_ov17_020f8ae4
	ldr r0, _021060E4 ; =FUN_ov17_02103924
	bl FUN_ov17_020f8ad4
	ldmfd sp!, {r4, pc}
_021060A8:
	cmp r0, #3
	bne _021060C8
	mov r0, #2
	mov r1, #1
	bl FUN_ov17_020f8ae4
	ldr r0, _021060E8 ; =FUN_ov17_02105940
	bl FUN_ov17_020f8ad4
	ldmfd sp!, {r4, pc}
_021060C8:
	mov r0, r4
	mov r1, r4
	bl FUN_ov17_020f8ae4
	ldr r0, _021060EC ; =FUN_ov17_0210571c
	bl FUN_ov17_020f8ad4
	ldmfd sp!, {r4, pc}
_021060E0: .word 0x0211628C
_021060E4: .word FUN_ov17_02103924
_021060E8: .word FUN_ov17_02105940
_021060EC: .word FUN_ov17_0210571c
	arm_func_end FUN_ov17_02105ff8

	arm_func_start FUN_ov17_021060f0
FUN_ov17_021060f0: ; 0x021060F0
	stmfd sp!, {r3, r4, lr}
	sub sp, sp, #4
	ldr r1, _021061E8 ; =0x0211628C
	ldrb r2, [r1]
	cmp r2, #0
	addne sp, sp, #4
	ldmnefd sp!, {r3, r4, pc}
	cmp r0, #3
	addls pc, pc, r0, lsl #2
	b _021061E0
_02106118: ; jump table
	b _02106128 ; case 0
	b _0210616C ; case 1
	b _02106188 ; case 2
	b _021061C4 ; case 3
_02106128:
	mov r0, #3
	strb r0, [r1]
	bl FUN_ov17_02107ca8
	mov r0, #0x12
	bl FUN_ov17_02107c40
	mov r1, #1
	mov r4, #0
	mov r2, r1
	sub r3, r1, #2
	mov r0, #0x10
	str r4, [sp]
	bl FUN_ov17_02108e9c
	bl FUN_ov17_020f484c
	ldr r0, _021061EC ; =FUN_ov17_021061f8
	bl FUN_ov17_020f8ad4
	add sp, sp, #4
	ldmfd sp!, {r3, r4, pc}
_0210616C:
	mov r0, #1
	strb r0, [r1]
	bl FUN_ov17_02107ca8
	ldr r0, _021061F0 ; =FUN_ov17_02105f68
	bl FUN_ov17_020f8ad4
	add sp, sp, #4
	ldmfd sp!, {r3, r4, pc}
_02106188:
	bl FUN_ov17_02107ca8
	mov r4, #0
	mov r0, r4
	bl FUN_ov17_02108a5c
	mov r2, #1
	mov r1, r4
	sub r3, r2, #2
	mov r0, #0x11
	str r4, [sp]
	bl FUN_ov17_02108e9c
	bl FUN_ov17_020f484c
	ldr r0, _021061F4 ; =FUN_ov17_02106244
	bl FUN_ov17_020f8ad4
	add sp, sp, #4
	ldmfd sp!, {r3, r4, pc}
_021061C4:
	mov r0, #2
	strb r0, [r1]
	bl FUN_ov17_02107ca8
	mov r0, #9
	bl FUN_ov17_02107c40
	ldr r0, _021061F0 ; =FUN_ov17_02105f68
	bl FUN_ov17_020f8ad4
_021061E0:
	add sp, sp, #4
	ldmfd sp!, {r3, r4, pc}
_021061E8: .word 0x0211628C
_021061EC: .word FUN_ov17_021061f8
_021061F0: .word FUN_ov17_02105f68
_021061F4: .word FUN_ov17_02106244
	arm_func_end FUN_ov17_021060f0

	arm_func_start FUN_ov17_021061f8
FUN_ov17_021061f8: ; 0x021061F8
	stmfd sp!, {r3, lr}
	bl FUN_ov17_021091fc
	cmp r0, #0
	ldmnefd sp!, {r3, pc}
	mov r0, #6
	bl FUN_ov17_02107c40
	bl FUN_ov17_021091b8
	ldr r0, _02106220 ; =FUN_ov17_02106224
	bl FUN_ov17_020f8ad4
	ldmfd sp!, {r3, pc}
_02106220: .word FUN_ov17_02106224
	arm_func_end FUN_ov17_021061f8

	arm_func_start FUN_ov17_02106224
FUN_ov17_02106224: ; 0x02106224
	stmfd sp!, {r3, lr}
	bl FUN_ov17_02109210
	cmp r0, #0
	ldmnefd sp!, {r3, pc}
	ldr r0, _02106240 ; =FUN_ov17_02105f68
	bl FUN_ov17_020f8ad4
	ldmfd sp!, {r3, pc}
_02106240: .word FUN_ov17_02105f68
	arm_func_end FUN_ov17_02106224

	arm_func_start FUN_ov17_02106244
FUN_ov17_02106244: ; 0x02106244
	stmfd sp!, {r3, lr}
	bl FUN_ov17_021091fc
	cmp r0, #0
	beq _0210626C
	cmp r0, #1
	ldmnefd sp!, {r3, pc}
	ldr r1, _02106290 ; =0x0211628C
	mov r2, #3
	mov r0, #6
	b _02106278
_0210626C:
	ldr r1, _02106290 ; =0x0211628C
	mov r2, #1
	mov r0, #7
_02106278:
	strb r2, [r1]
	bl FUN_ov17_02107c40
	bl FUN_ov17_021091b8
	ldr r0, _02106294 ; =FUN_ov17_02106298
	bl FUN_ov17_020f8ad4
	ldmfd sp!, {r3, pc}
_02106290: .word 0x0211628C
_02106294: .word FUN_ov17_02106298
	arm_func_end FUN_ov17_02106244

	arm_func_start FUN_ov17_02106298
FUN_ov17_02106298: ; 0x02106298
	stmfd sp!, {r4, lr}
	bl FUN_ov17_02109210
	cmp r0, #0
	ldmnefd sp!, {r4, pc}
	ldr r4, _021062EC ; =0x0211628C
	ldrb r0, [r4]
	cmp r0, #1
	bne _021062C4
	ldr r0, _021062F0 ; =FUN_ov17_02105f68
	bl FUN_ov17_020f8ad4
	ldmfd sp!, {r4, pc}
_021062C4:
	mov r0, #0xb
	bl FUN_ov17_02107c40
	bl FUN_ov17_020f4834
	mov r1, #0
	ldr r0, _021062F4 ; =FUN_ov17_021060f0
	strb r1, [r4]
	bl FUN_ov17_02108a5c
	ldr r0, _021062F8 ; =FUN_ov17_02105ed0
	bl FUN_ov17_020f8ad4
	ldmfd sp!, {r4, pc}
_021062EC: .word 0x0211628C
_021062F0: .word FUN_ov17_02105f68
_021062F4: .word FUN_ov17_021060f0
_021062F8: .word FUN_ov17_02105ed0
	arm_func_end FUN_ov17_02106298

	arm_func_start FUN_ov17_021062fc
FUN_ov17_021062fc: ; 0x021062FC
	stmfd sp!, {r3, r4, r5, lr}
	mov r5, r0
	ldr r0, _0210634C ; =0x00000608
	mov r1, #4
	bl FUN_ov17_0210e0a8
	mov r3, r0
	ldr r4, _02106350 ; =0x02116290
	mov r0, r5
	add r1, r3, #4
	mov r2, #0x600
	str r3, [r4]
	bl MIi_CpuCopyFast
	ldr r1, _02106354 ; =FUN_ov17_021063f4
	mov r0, #1
	mov r2, #0
	mov r3, #0x78
	bl FUN_ov17_0210f314
	ldr r1, [r4]
	str r0, [r1]
	ldmfd sp!, {r3, r4, r5, pc}
_0210634C: .word 0x00000608
_02106350: .word 0x02116290
_02106354: .word FUN_ov17_021063f4
	arm_func_end FUN_ov17_021062fc

	arm_func_start FUN_ov17_02106358
FUN_ov17_02106358: ; 0x02106358
	stmfd sp!, {r3, lr}
	ldr r1, _0210637C ; =0x02116290
	mov r0, #1
	ldr r1, [r1]
	ldr r1, [r1]
	bl FUN_ov17_0210f3d8
	ldr r0, _02106380 ; =0x02116290
	bl FUN_ov17_0210e0cc
	ldmfd sp!, {r3, pc}
_0210637C: .word 0x02116290
_02106380: .word 0x02116290
	arm_func_end FUN_ov17_02106358

	arm_func_start FUN_ov17_02106384
FUN_ov17_02106384: ; 0x02106384
	ldr r0, _02106398 ; =0x02116290
	mov r1, #1
	ldr r0, [r0]
	strb r1, [r0, #0x604]
	bx lr
_02106398: .word 0x02116290
	arm_func_end FUN_ov17_02106384

	arm_func_start FUN_ov17_0210639c
FUN_ov17_0210639c: ; 0x0210639C
	stmfd sp!, {r4, r5, r6, r7, r8, lr}
	ldr r12, _021063F0 ; =0x02116290
	mov r7, r3
	ldr r3, [r12]
	mov r8, r0
	add r0, r3, #4
	add r4, r0, r1, lsl #1
	mov r5, #0
	cmp r7, #0
	ldmlefd sp!, {r4, r5, r6, r7, r8, pc}
	mov r6, r2, lsl #1
_021063C8:
	mov r0, r8
	mov r1, r4
	mov r2, r6
	bl MIi_CpuCopy16
	add r5, r5, #1
	cmp r5, r7
	add r8, r8, #0x40
	add r4, r4, #0x40
	blt _021063C8
	ldmfd sp!, {r4, r5, r6, r7, r8, pc}
_021063F0: .word 0x02116290
	arm_func_end FUN_ov17_0210639c

	arm_func_start FUN_ov17_021063f4
FUN_ov17_021063f4: ; 0x021063F4
	stmfd sp!, {r4, r5, r6, lr}
	ldr r4, _02106440 ; =0x02116290
	ldr r2, [r4]
	ldrb r0, [r2, #0x604]
	cmp r0, #0
	ldmeqfd sp!, {r4, r5, r6, pc}
	mov r6, #0x600
	mov r1, r6
	add r0, r2, #4
	bl DC_FlushRange
	ldr r0, [r4]
	mov r5, #0
	mov r1, r5
	mov r2, r6
	add r0, r0, #4
	bl FUN_020055bc
	ldr r0, [r4]
	strb r5, [r0, #0x604]
	ldmfd sp!, {r4, r5, r6, pc}
_02106440: .word 0x02116290
	arm_func_end FUN_ov17_021063f4

	arm_func_start FUN_ov17_02106444
FUN_ov17_02106444: ; 0x02106444
	stmfd sp!, {r3, lr}
	ldr r12, _02106478 ; =0x02116290
	add r3, r0, r1, lsl #5
	mov r0, r2, lsl #5
	ldr r1, _0210647C ; =FUN_ov17_02106480
	str r3, [r12, #4]
	add lr, r0, #0x5000000
	mov r0, #1
	mov r2, #0
	mov r3, #0x78
	str lr, [r12, #8]
	bl FUN_ov17_0210f314
	ldmfd sp!, {r3, pc}
_02106478: .word 0x02116290
_0210647C: .word FUN_ov17_02106480
	arm_func_end FUN_ov17_02106444

	arm_func_start FUN_ov17_02106480
FUN_ov17_02106480: ; 0x02106480
	stmfd sp!, {r4, lr}
	ldr r1, _021064A8 ; =0x02116290
	mov r4, r0
	mov r2, #0x20
	ldmib r1, {r0, r1}
	bl MIi_CpuCopy16
	mov r1, r4
	mov r0, #1
	bl FUN_ov17_0210f3b8
	ldmfd sp!, {r4, pc}
_021064A8: .word 0x02116290
	arm_func_end FUN_ov17_02106480

	arm_func_start FUN_ov17_021064ac
FUN_ov17_021064ac: ; 0x021064AC
	ldr r2, _021064CC ; =0x02116290
	ldr r1, _021064D0 ; =FUN_ov17_021064d8
	str r0, [r2, #4]
	ldr r12, _021064D4 ; =FUN_ov17_0210f314
	mov r0, #1
	mov r2, #0
	mov r3, #0x78
	bx r12
_021064CC: .word 0x02116290
_021064D0: .word FUN_ov17_021064d8
_021064D4: .word FUN_ov17_0210f314
	arm_func_end FUN_ov17_021064ac

	arm_func_start FUN_ov17_021064d8
FUN_ov17_021064d8: ; 0x021064D8
	stmfd sp!, {r4, lr}
	ldr r1, _02106504 ; =0x02116290
	mov r4, r0
	ldr r0, [r1, #4]
	mov r1, #0x5000000
	mov r2, #0x200
	bl MIi_CpuCopy16
	mov r1, r4
	mov r0, #1
	bl FUN_ov17_0210f3b8
	ldmfd sp!, {r4, pc}
_02106504: .word 0x02116290
	arm_func_end FUN_ov17_021064d8

	arm_func_start FUN_ov17_02106508
FUN_ov17_02106508: ; 0x02106508
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, lr}
	mov r8, r0
	mov r4, r1
	mov r0, #0x20
	mov r1, #4
	mov r7, r2
	mov r6, r3
	bl FUN_ov17_0210e0a8
	ldr r9, _021065D4 ; =0x0211629C
	ldr r3, [sp, #0x20]
	str r0, [r9]
	strb r8, [r0, #0x1b]
	ldr r1, [r9]
	mov r0, r7
	strb r4, [r1, #0x19]
	ldr r2, [r9]
	mov r1, r6
	strb r3, [r2, #0x1a]
	ldr r2, [r9]
	add r2, r2, #0x10
	bl FUN_ov17_0210dc7c
	mov r5, #0
	mov r0, r5
	ldr r1, _021065D8 ; =0x02112534
	mov r4, #1
	ldrb r1, [r1, r8]
	mov r2, r4
	bl FUN_ov17_0210d028
	mov r2, r7
	ldr r1, [r9]
	sub r7, r4, #2
	str r0, [r1]
	ldr r0, [r9]
	mov r1, r7
	ldr r0, [r0]
	ldr r3, [sp, #0x20]
	add r3, r6, r3
	bl FUN_ov17_0210cdac
	mov r1, r7
	mov r2, r4
	ldr r0, [r9]
	ldr r0, [r0]
	bl FUN_ov17_0210ce84
	mov r0, r5
	mov r2, r5
	ldr r1, _021065DC ; =FUN_ov17_0210667c
	mov r3, #0x80
	bl FUN_ov17_0210f314
	ldr r1, [r9]
	str r0, [r1, #0xc]
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
_021065D4: .word 0x0211629C
_021065D8: .word 0x02112534
_021065DC: .word FUN_ov17_0210667c
	arm_func_end FUN_ov17_02106508

	arm_func_start FUN_ov17_021065e0
FUN_ov17_021065e0: ; 0x021065E0
	stmfd sp!, {r4, lr}
	ldr r4, _02106610 ; =0x0211629C
	mov r0, #0
	ldr r1, [r4]
	ldr r1, [r1, #0xc]
	bl FUN_ov17_0210f3d8
	ldr r0, [r4]
	ldr r0, [r0]
	bl FUN_ov17_0210cbf4
	ldr r0, _02106614 ; =0x0211629C
	bl FUN_ov17_0210e0cc
	ldmfd sp!, {r4, pc}
_02106610: .word 0x0211629C
_02106614: .word 0x0211629C
	arm_func_end FUN_ov17_021065e0

	arm_func_start FUN_ov17_02106618
FUN_ov17_02106618: ; 0x02106618
	ldr r0, _02106628 ; =0x0211629C
	ldr r0, [r0]
	ldrb r0, [r0, #0x1a]
	bx lr
_02106628: .word 0x0211629C
	arm_func_end FUN_ov17_02106618

	arm_func_start FUN_ov17_0210662c
FUN_ov17_0210662c: ; 0x0210662C
	ldr r0, _0210663C ; =0x0211629C
	ldr r0, [r0]
	ldrb r0, [r0, #0x1d]
	bx lr
_0210663C: .word 0x0211629C
	arm_func_end FUN_ov17_0210662c

	arm_func_start FUN_ov17_02106640
FUN_ov17_02106640: ; 0x02106640
	ldr r12, _02106648 ; =FUN_ov17_02106b7c
	bx r12
_02106648: .word FUN_ov17_02106b7c
	arm_func_end FUN_ov17_02106640

	arm_func_start FUN_ov17_0210664c
FUN_ov17_0210664c: ; 0x0210664C
	ldr r0, _02106660 ; =0x0211629C
	mov r1, #0
	ldr r0, [r0]
	strb r1, [r0, #0x1e]
	bx lr
_02106660: .word 0x0211629C
	arm_func_end FUN_ov17_0210664c

	arm_func_start FUN_ov17_02106664
FUN_ov17_02106664: ; 0x02106664
	ldr r0, _02106678 ; =0x0211629C
	mov r1, #1
	ldr r0, [r0]
	strb r1, [r0, #0x1e]
	bx lr
_02106678: .word 0x0211629C
	arm_func_end FUN_ov17_02106664

	arm_func_start FUN_ov17_0210667c
FUN_ov17_0210667c: ; 0x0210667C
	stmfd sp!, {r4, r5, r6, lr}
	ldr r5, _021067E4 ; =0x0211629C
	mov r4, #0
	ldr r0, [r5]
	strb r4, [r0, #0x1d]
	ldr r1, [r5]
	ldrb r0, [r1, #0x1c]
	cmp r0, #3
	addls pc, pc, r0, lsl #2
	ldmfd sp!, {r4, r5, r6, pc}
_021066A4: ; jump table
	b _021066B4 ; case 0
	b _02106754 ; case 1
	b _0210675C ; case 2
	b _021067A0 ; case 3
_021066B4:
	ldrb r0, [r1, #0x1e]
	cmp r0, #0
	ldmnefd sp!, {r4, r5, r6, pc}
	bl FUN_ov17_021069c4
	cmp r0, #4
	addls pc, pc, r0, lsl #2
	ldmfd sp!, {r4, r5, r6, pc}
_021066D0: ; jump table
	ldmfd sp!, {r4, r5, r6, pc} ; case 0
	b _021066E4 ; case 1
	b _02106734 ; case 2
	b _02106740 ; case 3
	b _0210674C ; case 4
_021066E4:
	ldr r0, [r5]
	ldrb r0, [r0, #0x1b]
	cmp r0, #0
	ldmeqfd sp!, {r4, r5, r6, pc}
	mov r0, #0x16
	bl FUN_ov17_02107c40
	mov r0, r4
	bl FUN_ov17_02107c64
	ldr r0, [r5]
	mov r4, #1
	strb r4, [r0, #0x1d]
	ldr r0, [r5]
	add r0, r0, #0x14
	bl FUN_ov17_0210e7f8
	ldr r1, [r5]
	ldrb r0, [r1, #0x1a]
	strb r0, [r1, #0x18]
	ldr r0, [r5]
	strb r4, [r0, #0x1c]
	ldmfd sp!, {r4, r5, r6, pc}
_02106734:
	mov r0, #2
	bl FUN_ov17_02106930
	ldmfd sp!, {r4, r5, r6, pc}
_02106740:
	mov r0, #3
	bl FUN_ov17_02106930
	ldmfd sp!, {r4, r5, r6, pc}
_0210674C:
	bl FUN_ov17_0210695c
	ldmfd sp!, {r4, r5, r6, pc}
_02106754:
	bl FUN_ov17_021067e8
	ldmfd sp!, {r4, r5, r6, pc}
_0210675C:
	mov r6, #2
	mov r0, r6
	bl FUN_ov17_02106a58
	cmp r0, #2
	beq _02106788
	ldr r0, [r5]
	mov r1, #5
	strb r1, [r0, #0x1d]
	ldr r0, [r5]
	strb r4, [r0, #0x1c]
	ldmfd sp!, {r4, r5, r6, pc}
_02106788:
	bl FUN_ov17_021069c4
	cmp r0, #2
	ldmnefd sp!, {r4, r5, r6, pc}
	mov r0, r6
	bl FUN_ov17_02106930
	ldmfd sp!, {r4, r5, r6, pc}
_021067A0:
	mov r6, #3
	mov r0, r6
	bl FUN_ov17_02106a58
	cmp r0, #3
	beq _021067CC
	ldr r0, [r5]
	mov r1, #7
	strb r1, [r0, #0x1d]
	ldr r0, [r5]
	strb r4, [r0, #0x1c]
	ldmfd sp!, {r4, r5, r6, pc}
_021067CC:
	bl FUN_ov17_021069c4
	cmp r0, #3
	ldmnefd sp!, {r4, r5, r6, pc}
	mov r0, r6
	bl FUN_ov17_02106930
	ldmfd sp!, {r4, r5, r6, pc}
_021067E4: .word 0x0211629C
	arm_func_end FUN_ov17_0210667c

	arm_func_start FUN_ov17_021067e8
FUN_ov17_021067e8: ; 0x021067E8
	stmfd sp!, {r3, r4, lr}
	sub sp, sp, #4
	ldr r0, _021068AC ; =0x021126F8
	bl FUN_ov17_0210e578
	cmp r0, #0
	beq _02106884
	add r0, sp, #0
	bl FUN_ov17_0210e7f8
	ldr r0, _021068B0 ; =0x0211629C
	ldrh r1, [sp]
	ldr r3, [r0]
	ldrh r0, [r3, #0x10]
	sub r0, r0, #0x1e
	cmp r1, r0
	blt _02106884
	ldrh r1, [sp, #2]
	ldrh r0, [r3, #0x16]
	ldrb r2, [r3, #0x18]
	sub r0, r1, r0
	adds r4, r2, r0
	movmi r4, #0
	bmi _0210685C
	ldrb r1, [r3, #0x1b]
	ldr r0, _021068B4 ; =0x02112537
	ldrb r2, [r3, #0x19]
	ldrb r0, [r0, r1]
	sub r0, r2, r0
	cmp r4, r0
	movge r4, r0
_0210685C:
	mov r0, r4
	bl FUN_ov17_021068b8
	mov r0, r4
	bl FUN_ov17_02106b7c
	ldr r0, _021068B0 ; =0x0211629C
	mov r1, #2
	ldr r0, [r0]
	add sp, sp, #4
	strb r1, [r0, #0x1d]
	ldmfd sp!, {r3, r4, pc}
_02106884:
	bl FUN_ov17_02107ca8
	ldr r0, _021068B0 ; =0x0211629C
	mov r3, #0
	ldr r2, [r0]
	mov r1, #3
	strb r3, [r2, #0x1c]
	ldr r0, [r0]
	strb r1, [r0, #0x1d]
	add sp, sp, #4
	ldmfd sp!, {r3, r4, pc}
_021068AC: .word 0x021126F8
_021068B0: .word 0x0211629C
_021068B4: .word 0x02112537
	arm_func_end FUN_ov17_021067e8

	arm_func_start FUN_ov17_021068b8
FUN_ov17_021068b8: ; 0x021068B8
	stmfd sp!, {r4, lr}
	ldr r1, _02106928 ; =0x0211629C
	ldr r1, [r1]
	ldrb r1, [r1, #0x1a]
	subs r4, r1, r0
	rsbmi r4, r4, #0
	cmp r4, #2
	movlt r0, #0
	blt _021068F0
	cmp r4, #6
	mov r0, #0x7f
	bge _021068F0
	rsb r1, r4, #6
	bl FUN_020096bc
_021068F0:
	bl FUN_ov17_02107c64
	cmp r4, #2
	mvnlt r1, #0xff
	blt _0210691C
	cmp r4, #6
	movge r1, #0x100
	bge _0210691C
	rsb r1, r4, #6
	mov r0, #0x200
	bl FUN_020096bc
	sub r1, r0, #0x100
_0210691C:
	ldr r0, _0210692C ; =0x0000FFFF
	bl FUN_ov17_02107c84
	ldmfd sp!, {r4, pc}
_02106928: .word 0x0211629C
_0210692C: .word 0x0000FFFF
	arm_func_end FUN_ov17_021068b8

	arm_func_start FUN_ov17_02106930
FUN_ov17_02106930: ; 0x02106930
	ldr r1, _02106958 ; =0x0211629C
	cmp r0, #2
	ldr r1, [r1]
	strb r0, [r1, #0x1c]
	ldr r0, _02106958 ; =0x0211629C
	moveq r1, #4
	ldr r0, [r0]
	movne r1, #6
	strb r1, [r0, #0x1d]
	bx lr
_02106958: .word 0x0211629C
	arm_func_end FUN_ov17_02106930

	arm_func_start FUN_ov17_0210695c
FUN_ov17_0210695c: ; 0x0210695C
	stmfd sp!, {r3, lr}
	add r0, sp, #0
	bl FUN_ov17_0210e7f8
	ldr r0, _021069BC ; =0x0211629C
	ldr r2, _021069C0 ; =0x02112537
	ldr r12, [r0]
	ldrh r1, [sp, #2]
	ldrb r3, [r12, #0x1b]
	ldrh r0, [r12, #0x12]
	ldrb r2, [r2, r3]
	sub r0, r1, r0
	subs r0, r0, r2, lsr #1
	movmi r0, #0
	bmi _021069A4
	ldrb r1, [r12, #0x19]
	sub r1, r1, r2
	cmp r0, r1
	movge r0, r1
_021069A4:
	bl FUN_ov17_02106b7c
	ldr r0, _021069BC ; =0x0211629C
	mov r1, #3
	ldr r0, [r0]
	strb r1, [r0, #0x1d]
	ldmfd sp!, {r3, pc}
_021069BC: .word 0x0211629C
_021069C0: .word 0x02112537
	arm_func_end FUN_ov17_0210695c

	arm_func_start FUN_ov17_021069c4
FUN_ov17_021069c4: ; 0x021069C4
	stmfd sp!, {r3, r4, r5, lr}
	sub sp, sp, #8
	add r4, sp, #0
	mov r5, #1
	mov r0, r5
	mov r1, r4
	bl FUN_ov17_02106aa4
	mov r0, r4
	bl FUN_ov17_0210e688
	cmp r0, #0
	addne sp, sp, #8
	movne r0, r5
	ldmnefd sp!, {r3, r4, r5, pc}
	mov r5, #2
_021069FC:
	mov r0, r5
	mov r1, r4
	bl FUN_ov17_02106aa4
	mov r0, r4
	bl FUN_ov17_0210e688
	cmp r0, #0
	addne sp, sp, #8
	movne r0, r5
	ldmnefd sp!, {r3, r4, r5, pc}
	add r5, r5, #1
	cmp r5, #3
	ble _021069FC
	mov r5, #4
	mov r0, r5
	mov r1, r4
	bl FUN_ov17_02106aa4
	mov r0, r4
	bl FUN_ov17_0210e600
	cmp r0, #0
	moveq r5, #0
	mov r0, r5
	add sp, sp, #8
	ldmfd sp!, {r3, r4, r5, pc}
	arm_func_end FUN_ov17_021069c4

	arm_func_start FUN_ov17_02106a58
FUN_ov17_02106a58: ; 0x02106A58
	stmfd sp!, {r3, r4, r5, lr}
	sub sp, sp, #8
	mov r5, #2
	add r4, sp, #0
_02106A68:
	mov r0, r5
	mov r1, r4
	bl FUN_ov17_02106aa4
	mov r0, r4
	bl FUN_ov17_0210e578
	cmp r0, #0
	addne sp, sp, #8
	movne r0, r5
	ldmnefd sp!, {r3, r4, r5, pc}
	add r5, r5, #1
	cmp r5, #3
	ble _02106A68
	mov r0, #0
	add sp, sp, #8
	ldmfd sp!, {r3, r4, r5, pc}
	arm_func_end FUN_ov17_02106a58

	arm_func_start FUN_ov17_02106aa4
FUN_ov17_02106aa4: ; 0x02106AA4
	ldr r2, _02106B74 ; =0x0211629C
	cmp r0, #4
	ldr r3, [r2]
	ldrh r12, [r3, #0x10]
	add r3, r12, #0xc
	strh r12, [r1]
	strh r3, [r1, #4]
	addls pc, pc, r0, lsl #2
	bx lr
_02106AC8: ; jump table
	bx lr ; case 0
	b _02106ADC ; case 1
	b _02106B10 ; case 2
	b _02106B30 ; case 3
	b _02106B54 ; case 4
_02106ADC:
	ldr r3, [r2]
	ldr r0, _02106B78 ; =0x02112537
	ldrh r12, [r3, #0x12]
	ldrb r3, [r3, #0x1a]
	add r3, r12, r3
	strh r3, [r1, #2]
	ldr r2, [r2]
	ldrh r3, [r1, #2]
	ldrb r2, [r2, #0x1b]
	ldrb r0, [r0, r2]
	add r0, r3, r0
	strh r0, [r1, #6]
	bx lr
_02106B10:
	ldr r0, [r2]
	ldrh r0, [r0, #0x12]
	sub r0, r0, #0xd
	strh r0, [r1, #2]
	ldr r0, [r2]
	ldrh r0, [r0, #0x12]
	strh r0, [r1, #6]
	bx lr
_02106B30:
	ldr r0, [r2]
	ldrh r2, [r0, #0x12]
	ldrb r0, [r0, #0x19]
	add r0, r2, r0
	strh r0, [r1, #2]
	ldrh r0, [r1, #2]
	add r0, r0, #0xd
	strh r0, [r1, #6]
	bx lr
_02106B54:
	ldr r0, [r2]
	ldrh r3, [r0, #0x12]
	strh r3, [r1, #2]
	ldr r0, [r2]
	ldrb r0, [r0, #0x19]
	add r0, r3, r0
	strh r0, [r1, #6]
	bx lr
_02106B74: .word 0x0211629C
_02106B78: .word 0x02112537
	arm_func_end FUN_ov17_02106aa4

	arm_func_start FUN_ov17_02106b7c
FUN_ov17_02106b7c: ; 0x02106B7C
	stmfd sp!, {r3, r4, r5, lr}
	ldr r4, _02106BB0 ; =0x0211629C
	mov r5, r0
	ldr r0, [r4]
	mvn r1, #0
	ldrh r3, [r0, #0x12]
	ldrh r2, [r0, #0x10]
	ldr r0, [r0]
	add r3, r5, r3
	bl FUN_ov17_0210cdac
	ldr r0, [r4]
	strb r5, [r0, #0x1a]
	ldmfd sp!, {r3, r4, r5, pc}
_02106BB0: .word 0x0211629C
	arm_func_end FUN_ov17_02106b7c

	arm_func_start FUN_ov17_02106bb4
FUN_ov17_02106bb4: ; 0x02106BB4
	stmfd sp!, {r4, lr}
	ldr r4, _02106BDC ; =0x021162A0
	ldr r0, [r4]
	cmp r0, #0
	ldmnefd sp!, {r4, pc}
	ldr r0, _02106BE0 ; =0x00001E60
	mov r1, #0x20
	bl FUN_ov17_0210e0a8
	str r0, [r4]
	ldmfd sp!, {r4, pc}
_02106BDC: .word 0x021162A0
_02106BE0: .word 0x00001E60
	arm_func_end FUN_ov17_02106bb4

	arm_func_start FUN_ov17_02106be4
FUN_ov17_02106be4: ; 0x02106BE4
	stmfd sp!, {r3, lr}
	ldr r0, _02106C10 ; =0x021162A0
	ldr r0, [r0]
	cmp r0, #0
	ldmeqfd sp!, {r3, pc}
_02106BF8:
	bl FUN_02012bc0
	cmp r0, #0x8000
	bne _02106BF8
	ldr r0, _02106C14 ; =0x021162A0
	bl FUN_ov17_0210e0cc
	ldmfd sp!, {r3, pc}
_02106C10: .word 0x021162A0
_02106C14: .word 0x021162A0
	arm_func_end FUN_ov17_02106be4

	arm_func_start FUN_ov17_02106c18
FUN_ov17_02106c18: ; 0x02106C18
	stmfd sp!, {r3, r4, r5, lr}
	ldr r4, _02106CD4 ; =0x021162A0
	mov r5, #0
	ldr r1, [r4]
	mov r0, r5
	add r1, r1, #0x1300
	mov r2, #0x348
	bl MIi_CpuClear16
	ldr r0, [r4]
	ldr r1, _02106CD8 ; =FUN_ov17_02106e08
	mov r2, #3
	bl FUN_020130b4
	cmp r0, #2
	movne r0, r5
	ldmnefd sp!, {r3, r4, r5, pc}
_02106C54:
	ldr r0, [r4]
	add r0, r0, #0x28c
	add r0, r0, #0x1400
	bl FUN_02012944
	ldr r12, [r4]
	add r0, r12, #0x1600
	ldrh r0, [r0, #0x8c]
	cmp r0, #2
	bne _02106C54
	add r0, r12, #0x248
	ldr r5, _02106CDC ; =0x02112548
	add lr, r0, #0x1400
	mov r4, #4
_02106C88:
	ldmia r5!, {r0, r1, r2, r3}
	stmia lr!, {r0, r1, r2, r3}
	subs r4, r4, #1
	bne _02106C88
	ldr r0, [r5]
	add r1, r12, #0xf00
	str r0, [lr]
	add r0, r12, #0x1000
	str r1, [r0, #0x648]
	bl FUN_02012d08
	ldr r1, _02106CD4 ; =0x021162A0
	ldr r1, [r1]
	add r1, r1, #0x1600
	strh r0, [r1, #0x50]
	bl FUN_ov17_02106ce0
	cmp r0, #0
	movne r0, #1
	moveq r0, #0
	ldmfd sp!, {r3, r4, r5, pc}
_02106CD4: .word 0x021162A0
_02106CD8: .word FUN_ov17_02106e08
_02106CDC: .word 0x02112548
	arm_func_end FUN_ov17_02106c18

	arm_func_start FUN_ov17_02106ce0
FUN_ov17_02106ce0: ; 0x02106CE0
	stmfd sp!, {r3, lr}
	ldr r1, _02106D0C ; =0x021162A0
	ldr r0, _02106D10 ; =FUN_ov17_02106e08
	ldr r1, [r1]
	add r1, r1, #0x248
	add r1, r1, #0x1400
	bl FUN_02013394
	cmp r0, #2
	moveq r0, #1
	movne r0, #0
	ldmfd sp!, {r3, pc}
_02106D0C: .word 0x021162A0
_02106D10: .word FUN_ov17_02106e08
	arm_func_end FUN_ov17_02106ce0

	arm_func_start FUN_ov17_02106d14
FUN_ov17_02106d14: ; 0x02106D14
	stmfd sp!, {r4, lr}
	ldr r4, _02106DA0 ; =0x021162A0
	mov r1, #1
	ldr r0, [r4]
	add r0, r0, #0x1000
	strb r1, [r0, #0xe5c]
	ldr r0, [r4]
	add r0, r0, #0x28c
	add r0, r0, #0x1400
	bl FUN_02012944
	ldr r0, [r4]
	add r0, r0, #0x1600
	ldrh r0, [r0, #0x8c]
	cmp r0, #2
	beq _02106D88
	ldr r0, _02106DA4 ; =FUN_ov17_02106e08
	bl FUN_0201312c
	cmp r0, #2
	movne r0, #0
	ldmnefd sp!, {r4, pc}
_02106D64:
	ldr r0, [r4]
	add r0, r0, #0x28c
	add r0, r0, #0x1400
	bl FUN_02012944
	ldr r0, [r4]
	add r0, r0, #0x1600
	ldrh r0, [r0, #0x8c]
	cmp r0, #2
	bne _02106D64
_02106D88:
	ldr r0, _02106DA4 ; =FUN_ov17_02106e08
	bl FUN_02013168
	cmp r0, #2
	movne r0, #0
	moveq r0, #1
	ldmfd sp!, {r4, pc}
_02106DA0: .word 0x021162A0
_02106DA4: .word FUN_ov17_02106e08
	arm_func_end FUN_ov17_02106d14

	arm_func_start FUN_ov17_02106da8
FUN_ov17_02106da8: ; 0x02106DA8
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, lr}
	ldr r1, _02106E00 ; =0x021162A0
	mov r7, #0
	ldr r1, [r1]
	ldr r6, _02106E04 ; =0x02112540
	add r9, r1, #0x1300
	mov r8, r7
	str r9, [r0]
	mov r5, #6
	mov r4, #0x2a
_02106DD0:
	mla r0, r8, r4, r9
	mov r1, r6
	mov r2, r5
	add r0, r0, #0x20
	bl FUN_020219ac
	cmp r0, #0
	add r8, r8, #1
	addne r7, r7, #1
	cmp r8, #0x14
	blt _02106DD0
	mov r0, r7
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
_02106E00: .word 0x021162A0
_02106E04: .word 0x02112540
	arm_func_end FUN_ov17_02106da8

	arm_func_start FUN_ov17_02106e08
FUN_ov17_02106e08: ; 0x02106E08
	stmfd sp!, {r3, lr}
	ldrh r1, [r0, #2]
	cmp r1, #0
	ldreq r1, _02106E64 ; =0x021162A0
	ldreq r1, [r1]
	addeq r1, r1, #0x1000
	ldreqb r1, [r1, #0xe5c]
	cmpeq r1, #0
	ldreqh r1, [r0]
	cmpeq r1, #0x26
	ldmnefd sp!, {r3, pc}
	ldrh r1, [r0, #8]
	cmp r1, #4
	beq _02106E54
	cmp r1, #5
	bne _02106E5C
	bl FUN_ov17_02106e68
	bl FUN_ov17_02106ce0
	ldmfd sp!, {r3, pc}
_02106E54:
	bl FUN_ov17_02106ce0
	ldmfd sp!, {r3, pc}
_02106E5C:
	bl FUN_02004160
	ldmfd sp!, {r3, pc}
_02106E64: .word 0x021162A0
	arm_func_end FUN_ov17_02106e08

	arm_func_start FUN_ov17_02106e68
FUN_ov17_02106e68: ; 0x02106E68
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, lr}
	sub sp, sp, #0x88
	ldr r1, _02107038 ; =0x021162A0
	str r0, [sp]
	ldr r2, [r1]
	mov r1, #0x400
	add r0, r2, #0xf00
	add r6, r2, #0x1300
	bl DC_InvalidateRange
	ldr r0, [sp]
	mov r10, #0
	ldrh r0, [r0, #0xe]
	cmp r0, #0
	addle sp, sp, #0x88
	ldmlefd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_02106EA4:
	ldr r0, [sp]
	add r0, r0, r10, lsl #2
	ldr r4, [r0, #0x10]
	ldrb r0, [r4, #0xc]
	cmp r0, #0
	beq _0210701C
	ldrh r0, [r4, #0x3c]
	cmp r0, #0
	bne _0210701C
	mov r5, #0
	mov r8, #6
	mov r7, #0x2a
_02106ED4:
	mla r1, r5, r7, r6
	mov r2, r8
	add r0, r4, #4
	add r1, r1, #0x20
	bl FUN_020219ac
	cmp r0, #0
	beq _02106EFC
	add r5, r5, #1
	cmp r5, #0x14
	blt _02106ED4
_02106EFC:
	cmp r5, #0x14
	mov r11, #0
	bne _02106F4C
	ldr r9, _0210703C ; =0x02112540
	mov r5, r11
	mov r8, #6
	mov r7, #0x2a
_02106F18:
	mla r0, r5, r7, r6
	mov r1, r9
	mov r2, r8
	add r0, r0, #0x20
	bl FUN_020219ac
	cmp r0, #0
	beq _02106F40
	add r5, r5, #1
	cmp r5, #0x14
	blt _02106F18
_02106F40:
	cmp r5, #0x14
	addeq sp, sp, #0x88
	ldmeqfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_02106F4C:
	mov r0, #0x2a
	mla r9, r5, r0, r6
	add r0, r4, #4
	add r1, r9, #0x20
	mov r2, #6
	bl MI_CpuCopy8
	mov r1, r9
	add r0, r4, #0xc
	mov r2, #0x20
	bl MI_CpuCopy8
	ldr r0, [sp]
	add r0, r0, r10, lsl #1
	ldrh r0, [r0, #0x50]
	strh r0, [r9, #0x26]
	ldrh r0, [r4, #0x2c]
	tst r0, #0x10
	streqb r11, [r9, #0x28]
	beq _0210701C
	add r5, sp, #4
	mov r2, #1
	mov r0, r5
	mov r1, r4
	strb r2, [r9, #0x28]
	bl FUN_02012da0
	ldrb r8, [sp, #4]
	mov r7, #0
	cmp r8, #0
	ble _0210701C
	ldr r4, _02107040 ; =0x0211253C
	mov r11, #4
_02106FC4:
	add r1, r5, r7, lsl #3
	ldrb r0, [r1, #4]
	cmp r0, #0x30
	moveq r0, #2
	streqb r0, [r9, #0x28]
	beq _0210701C
	cmp r0, #0xdd
	bne _02107010
	ldrb r0, [r1, #5]
	cmp r0, #4
	blo _02107010
	ldr r0, [r1, #8]
	mov r1, r4
	mov r2, r11
	bl FUN_020219ac
	cmp r0, #0
	moveq r0, #2
	streqb r0, [r9, #0x28]
	beq _0210701C
_02107010:
	add r7, r7, #1
	cmp r7, r8
	blt _02106FC4
_0210701C:
	ldr r0, [sp]
	add r10, r10, #1
	ldrh r0, [r0, #0xe]
	cmp r10, r0
	blt _02106EA4
	add sp, sp, #0x88
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_02107038: .word 0x021162A0
_0210703C: .word 0x02112540
_02107040: .word 0x0211253C
	arm_func_end FUN_ov17_02106e68

	arm_func_start FUN_ov17_02107044
FUN_ov17_02107044: ; 0x02107044
	stmfd sp!, {r4, lr}
	ldr r0, _02107078 ; =0x000006F8
	mov r1, #0x20
	bl FUN_ov17_0210e0a8
	ldr r4, _0210707C ; =0x021162A4
	add r2, r0, #0xf8
	str r0, [r4]
	ldr r1, _02107080 ; =0x0000A001
	add r0, r2, #0x400
	bl FUN_0200a944
	ldr r0, [r4]
	bl  FUN_ov15_020cab04
	ldmfd sp!, {r4, pc}
_02107078: .word 0x000006F8
_0210707C: .word 0x021162A4
_02107080: .word 0x0000A001
	arm_func_end FUN_ov17_02107044

	arm_func_start FUN_ov17_02107084
FUN_ov17_02107084: ; 0x02107084
	ldr r0, _02107090 ; =0x021162A4
	ldr r12, _02107094 ; =FUN_ov17_0210e0cc
	bx r12
_02107090: .word 0x021162A4
_02107094: .word FUN_ov17_0210e0cc
	arm_func_end FUN_ov17_02107084

	arm_func_start FUN_ov17_02107098
FUN_ov17_02107098: ; 0x02107098
	ldr r0, _021070A8 ; =0x021162A4
	ldr r0, [r0]
	add r0, r0, #0x400
	bx lr
_021070A8: .word 0x021162A4
	arm_func_end FUN_ov17_02107098

	arm_func_start FUN_ov17_021070ac
FUN_ov17_021070ac: ; 0x021070AC
	ldr r1, _021070BC ; =0x021162A4
	ldr r1, [r1]
	strb r0, [r1, #0x4f5]
	bx lr
_021070BC: .word 0x021162A4
	arm_func_end FUN_ov17_021070ac

	arm_func_start FUN_ov17_021070c0
FUN_ov17_021070c0: ; 0x021070C0
	ldr r1, _021070D0 ; =0x021162A4
	ldr r1, [r1]
	strb r0, [r1, #0x4f6]
	bx lr
_021070D0: .word 0x021162A4
	arm_func_end FUN_ov17_021070c0

	arm_func_start FUN_ov17_021070d4
FUN_ov17_021070d4: ; 0x021070D4
	stmfd sp!, {r4, lr}
	ldr r4, _021070FC ; =0x021162A4
	mov r2, #0x20
	ldr r1, [r4]
	add r1, r1, #0x440
	bl MI_CpuCopy8
	ldr r0, [r4]
	mov r1, #0
	strb r1, [r0, #0x4e7]
	ldmfd sp!, {r4, pc}
_021070FC: .word 0x021162A4
	arm_func_end FUN_ov17_021070d4

	arm_func_start FUN_ov17_02107100
FUN_ov17_02107100: ; 0x02107100
	stmfd sp!, {r4, r5, r6, r7, r8, r9, r10, lr}
	ldr r7, _0210727C ; =0x021162A4
	mov r6, r0
	ldr r0, [r7]
	mov r1, #0
	add r0, r0, #0x480
	mov r2, #0x10
	bl MI_CpuFill8
	mov r0, r6
	mov r1, #0x20
	bl FUN_ov17_0210ee94
	mov r5, r0
	cmp r5, #0xa
	bgt _02107148
	bge _02107160
	cmp r5, #0
	beq _02107160
	b _021071B4
_02107148:
	cmp r5, #0x1a
	bgt _02107158
	beq _02107160
	b _021071B4
_02107158:
	cmp r5, #0x20
	bne _021071B4
_02107160:
	ldr r1, [r7]
	cmp r5, #0
	ldrb r0, [r1, #0x4e6]
	mov r4, #0
	bic r0, r0, #0xfc
	strb r0, [r1, #0x4e6]
	ldr r0, [r7]
	add r9, r0, #0x480
	ble _021071DC
_02107184:
	ldrb r0, [r6, r4]
	add r10, r6, r4
	bl FUN_ov17_02107b34
	mov r8, r0
	ldrb r0, [r10, #1]
	bl FUN_ov17_02107b34
	add r0, r0, r8, lsl #4
	add r4, r4, #2
	cmp r4, r5
	strb r0, [r9], #1
	blt _02107184
	b _021071DC
_021071B4:
	ldr r3, [r7]
	mov r0, r6
	ldrb r1, [r3, #0x4e6]
	mov r2, #0x10
	bic r1, r1, #0xfc
	orr r1, r1, #4
	strb r1, [r3, #0x4e6]
	ldr r1, [r7]
	add r1, r1, #0x480
	bl MI_CpuCopy8
_021071DC:
	cmp r5, #5
	bgt _021071F4
	bge _02107234
	cmp r5, #0
	beq _02107220
	b _02107264
_021071F4:
	cmp r5, #0xd
	bgt _02107214
	cmp r5, #0xa
	blt _02107264
	beq _02107234
	cmp r5, #0xd
	beq _0210724C
	b _02107264
_02107214:
	cmp r5, #0x1a
	beq _0210724C
	b _02107264
_02107220:
	ldr r1, [r7]
	ldrb r0, [r1, #0x4e6]
	bic r0, r0, #3
	strb r0, [r1, #0x4e6]
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, pc}
_02107234:
	ldr r1, [r7]
	ldrb r0, [r1, #0x4e6]
	bic r0, r0, #3
	orr r0, r0, #1
	strb r0, [r1, #0x4e6]
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, pc}
_0210724C:
	ldr r1, [r7]
	ldrb r0, [r1, #0x4e6]
	bic r0, r0, #3
	orr r0, r0, #2
	strb r0, [r1, #0x4e6]
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, pc}
_02107264:
	ldr r1, [r7]
	ldrb r0, [r1, #0x4e6]
	bic r0, r0, #3
	orr r0, r0, #3
	strb r0, [r1, #0x4e6]
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, pc}
_0210727C: .word 0x021162A4
	arm_func_end FUN_ov17_02107100

	arm_func_start FUN_ov17_02107280
FUN_ov17_02107280: ; 0x02107280
	ldr r1, _02107294 ; =0x021162A4
	ldr r12, _02107298 ; =FUN_ov17_02107aac
	ldr r1, [r1]
	add r1, r1, #0x4c0
	bx r12
_02107294: .word 0x021162A4
_02107298: .word FUN_ov17_02107aac
	arm_func_end FUN_ov17_02107280

	arm_func_start FUN_ov17_0210729c
FUN_ov17_0210729c: ; 0x0210729C
	ldr r1, _021072B0 ; =0x021162A4
	ldr r12, _021072B4 ; =FUN_ov17_02107aac
	ldr r1, [r1]
	add r1, r1, #0x4f0
	bx r12
_021072B0: .word 0x021162A4
_021072B4: .word FUN_ov17_02107aac
	arm_func_end FUN_ov17_0210729c

	arm_func_start FUN_ov17_021072b8
FUN_ov17_021072b8: ; 0x021072B8
	ldr r1, _021072D0 ; =0x021162A4
	ldr r12, _021072D4 ; =FUN_ov17_02107aac
	ldr r1, [r1]
	add r1, r1, #0xc4
	add r1, r1, #0x400
	bx r12
_021072D0: .word 0x021162A4
_021072D4: .word FUN_ov17_02107aac
	arm_func_end FUN_ov17_021072b8

	arm_func_start FUN_ov17_021072d8
FUN_ov17_021072d8: ; 0x021072D8
	ldr r1, _021072F0 ; =0x021162A4
	ldr r12, _021072F4 ; =FUN_ov17_02107aac
	ldr r1, [r1]
	add r1, r1, #0xc8
	add r1, r1, #0x400
	bx r12
_021072F0: .word 0x021162A4
_021072F4: .word FUN_ov17_02107aac
	arm_func_end FUN_ov17_021072d8

	arm_func_start FUN_ov17_021072f8
FUN_ov17_021072f8: ; 0x021072F8
	ldr r1, _02107310 ; =0x021162A4
	ldr r12, _02107314 ; =FUN_ov17_02107aac
	ldr r1, [r1]
	add r1, r1, #0xcc
	add r1, r1, #0x400
	bx r12
_02107310: .word 0x021162A4
_02107314: .word FUN_ov17_02107aac
	arm_func_end FUN_ov17_021072f8

	arm_func_start FUN_ov17_02107318
FUN_ov17_02107318: ; 0x02107318
	ldr r2, _02107334 ; =0x021162A4
	mov r1, r0
	ldr r0, [r2]
	ldr r12, _02107338 ; =MI_CpuCopy8
	mov r2, #0x20
	add r0, r0, #0x440
	bx r12
_02107334: .word 0x021162A4
_02107338: .word MI_CpuCopy8
	arm_func_end FUN_ov17_02107318

	arm_func_start FUN_ov17_0210733c
FUN_ov17_0210733c: ; 0x0210733C
	stmfd sp!, {r3, lr}
	sub sp, sp, #8
	ldr r2, _02107374 ; =0x021162A4
	ldr r1, _02107378 ; =0x02113534
	ldr r3, [r2]
	ldrb r2, [r3, #0x4c2]
	str r2, [sp]
	ldrb r2, [r3, #0x4c3]
	str r2, [sp, #4]
	ldrb r2, [r3, #0x4c0]
	ldrb r3, [r3, #0x4c1]
	bl FUN_020014c8
	add sp, sp, #8
	ldmfd sp!, {r3, pc}
_02107374: .word 0x021162A4
_02107378: .word 0x02113534
	arm_func_end FUN_ov17_0210733c

	arm_func_start FUN_ov17_0210737c
FUN_ov17_0210737c: ; 0x0210737C
	stmfd sp!, {r3, lr}
	sub sp, sp, #8
	ldr r2, _021073B4 ; =0x021162A4
	ldr r1, _021073B8 ; =0x02113534
	ldr r3, [r2]
	ldrb r2, [r3, #0x4f2]
	str r2, [sp]
	ldrb r2, [r3, #0x4f3]
	str r2, [sp, #4]
	ldrb r2, [r3, #0x4f0]
	ldrb r3, [r3, #0x4f1]
	bl FUN_020014c8
	add sp, sp, #8
	ldmfd sp!, {r3, pc}
_021073B4: .word 0x021162A4
_021073B8: .word 0x02113534
	arm_func_end FUN_ov17_0210737c

	arm_func_start FUN_ov17_021073bc
FUN_ov17_021073bc: ; 0x021073BC
	stmfd sp!, {r3, lr}
	sub sp, sp, #8
	ldr r2, _021073F8 ; =0x021162A4
	ldr r1, _021073FC ; =0x02113534
	ldr r12, [r2]
	add r3, r12, #0xc4
	ldrb r2, [r3, #0x402]
	str r2, [sp]
	ldrb r2, [r3, #0x403]
	str r2, [sp, #4]
	ldrb r2, [r12, #0x4c4]
	ldrb r3, [r3, #0x401]
	bl FUN_020014c8
	add sp, sp, #8
	ldmfd sp!, {r3, pc}
_021073F8: .word 0x021162A4
_021073FC: .word 0x02113534
	arm_func_end FUN_ov17_021073bc

	arm_func_start FUN_ov17_02107400
FUN_ov17_02107400: ; 0x02107400
	stmfd sp!, {r3, lr}
	sub sp, sp, #8
	ldr r2, _0210743C ; =0x021162A4
	ldr r1, _02107440 ; =0x02113534
	ldr r12, [r2]
	add r3, r12, #0xc8
	ldrb r2, [r3, #0x402]
	str r2, [sp]
	ldrb r2, [r3, #0x403]
	str r2, [sp, #4]
	ldrb r2, [r12, #0x4c8]
	ldrb r3, [r3, #0x401]
	bl FUN_020014c8
	add sp, sp, #8
	ldmfd sp!, {r3, pc}
_0210743C: .word 0x021162A4
_02107440: .word 0x02113534
	arm_func_end FUN_ov17_02107400

	arm_func_start FUN_ov17_02107444
FUN_ov17_02107444: ; 0x02107444
	stmfd sp!, {r3, lr}
	sub sp, sp, #8
	ldr r2, _02107480 ; =0x021162A4
	ldr r1, _02107484 ; =0x02113534
	ldr r12, [r2]
	add r3, r12, #0xcc
	ldrb r2, [r3, #0x402]
	str r2, [sp]
	ldrb r2, [r3, #0x403]
	str r2, [sp, #4]
	ldrb r2, [r12, #0x4cc]
	ldrb r3, [r3, #0x401]
	bl FUN_020014c8
	add sp, sp, #8
	ldmfd sp!, {r3, pc}
_02107480: .word 0x021162A4
_02107484: .word 0x02113534
	arm_func_end FUN_ov17_02107444

	arm_func_start FUN_ov17_02107488
FUN_ov17_02107488: ; 0x02107488
	ldr r1, _0210749C ; =0x021162A4
	ldr r1, [r1]
	add r0, r1, r0, lsl #8
	ldrb r0, [r0, #0xe7]
	bx lr
_0210749C: .word 0x021162A4
	arm_func_end FUN_ov17_02107488

	arm_func_start FUN_ov17_021074a0
FUN_ov17_021074a0: ; 0x021074A0
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	ldr r5, _02107564 ; =0x021162A4
	mov r3, #0x78
	ldr r12, [r5]
	add r4, r12, r0, lsl #8
	mov r7, r4
	add r6, r12, #0x400
_021074BC:
	ldrb r2, [r7]
	ldrb r1, [r7, #1]
	add r7, r7, #2
	subs r3, r3, #1
	strb r1, [r6, #1]
	strb r2, [r6], #2
	bne _021074BC
	ldr r1, _02107568 ; =0x0211258C
	strb r0, [r12, #0x4f4]
	add r0, r4, #0xc0
	mov r2, #4
	bl FUN_020219ac
	cmp r0, #0
	mov r1, #0
	mov r6, #4
	ldr r0, [r5]
	moveq r1, #1
	strb r1, [r0, #0x4f5]
	ldr r7, _02107568 ; =0x0211258C
	mov r2, r6
	mov r1, r7
	add r0, r4, #0xc8
	bl FUN_020219ac
	cmp r0, #0
	bne _02107538
	mov r1, r7
	mov r2, r6
	add r0, r4, #0xcc
	bl FUN_020219ac
	cmp r0, #0
	beq _02107544
_02107538:
	ldr r0, [r5]
	mov r1, #0
	b _0210754C
_02107544:
	ldr r0, [r5]
	mov r1, #1
_0210754C:
	strb r1, [r0, #0x4f6]
	ldr r1, [r5]
	ldrb r0, [r4, #0xd0]
	add r1, r1, #0x4f0
	bl  FUN_ov15_020cac34
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_02107564: .word 0x021162A4
_02107568: .word 0x0211258C
	arm_func_end FUN_ov17_021074a0

	arm_func_start FUN_ov17_0210756c
FUN_ov17_0210756c: ; 0x0210756C
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	ldr r0, _0210764C ; =0x021162A4
	mov r2, #0x78
	ldr r1, [r0]
	add r4, r1, #0x400
	ldrb r0, [r4, #0xf4]
	mov r6, r4
	add r5, r1, r0, lsl #8
	mov r3, r5
_02107590:
	ldrb r1, [r6]
	ldrb r0, [r6, #1]
	add r6, r6, #2
	subs r2, r2, #1
	strb r0, [r3, #1]
	strb r1, [r3], #2
	bne _02107590
	ldrb r0, [r4, #0xf5]
	mov r6, #4
	cmp r0, #0
	beq _021075E8
	mov r7, #0
	mov r1, r7
	mov r2, r6
	add r0, r5, #0xc0
	bl MI_CpuFill8
	mov r1, r7
	mov r2, r6
	add r0, r5, #0xc4
	bl MI_CpuFill8
	strb r7, [r5, #0xd0]
	b _02107614
_021075E8:
	mov r2, r6
	add r0, r4, #0xc0
	add r1, r5, #0xc0
	bl MI_CpuCopy8
	mov r2, r6
	add r0, r4, #0xc4
	add r1, r5, #0xc4
	bl MI_CpuCopy8
	add r0, r4, #0xf0
	bl  FUN_ov1_020cabf0 ; may be ov15
	strb r0, [r5, #0xd0]
_02107614:
	ldrb r0, [r4, #0xf6]
	mov r2, #8
	cmp r0, #0
	beq _02107634
	add r0, r5, #0xc8
	mov r1, #0
	bl MI_CpuFill8
	b _02107640
_02107634:
	add r0, r4, #0xc8
	add r1, r5, #0xc8
	bl MI_CpuCopy8
_02107640:
	ldrb r0, [r4, #0xf4]
	bl FUN_ov17_0210795c
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_0210764C: .word 0x021162A4
	arm_func_end FUN_ov17_0210756c

	arm_func_start FUN_ov17_02107650
FUN_ov17_02107650: ; 0x02107650
	stmfd sp!, {r4, r5, r6, r7, r8, lr}
	ldr r1, _0210774C ; =0x021162A4
	mov r6, #0
	ldr r4, [r1]
	mov r7, r0
	mov r1, r6
	add r0, r4, #0x400
	mov r2, #0xef
	bl MI_CpuFill8
	mov r0, r7
	add r1, r4, #0x440
	mov r2, #0x20
	bl MI_CpuCopy8
	ldr r0, [r7, #0x20]
	cmp r0, #1
	beq _021076A4
	cmp r0, #2
	beq _021076B8
	cmp r0, #3
	beq _021076CC
	b _021076E0
_021076A4:
	ldrb r0, [r4, #0x4e6]
	mov r6, #5
	bic r0, r0, #3
	orr r0, r0, #1
	b _021076E8
_021076B8:
	ldrb r0, [r4, #0x4e6]
	mov r6, #0xd
	bic r0, r0, #3
	orr r0, r0, #2
	b _021076E8
_021076CC:
	ldrb r0, [r4, #0x4e6]
	mov r6, #0x10
	bic r0, r0, #3
	orr r0, r0, #3
	b _021076E8
_021076E0:
	ldrb r0, [r4, #0x4e6]
	bic r0, r0, #3
_021076E8:
	strb r0, [r4, #0x4e6]
	ldrb r0, [r4, #0x4e6]
	add r8, r7, #0x28
	mov r5, #0
	bic r0, r0, #0xfc
	strb r0, [r4, #0x4e6]
	add r7, r4, #0x480
_02107704:
	mov r2, r6
	add r0, r8, r5, lsl #5
	add r1, r7, r5, lsl #4
	bl MI_CpuCopy8
	add r5, r5, #1
	cmp r5, #4
	blt _02107704
	mov r3, #2
	add r0, r4, #0x4f0
	mov r1, #0
	mov r2, #4
	strb r3, [r4, #0x4e7]
	bl MI_CpuFill8
	mov r0, #1
	strb r0, [r4, #0x4f5]
	strb r0, [r4, #0x4f6]
	bl FUN_ov17_0210756c
	ldmfd sp!, {r4, r5, r6, r7, r8, pc}
_0210774C: .word 0x021162A4
	arm_func_end FUN_ov17_02107650

	arm_func_start FUN_ov17_02107750
FUN_ov17_02107750: ; 0x02107750
	stmfd sp!, {r4, r5, r6, r7, r8, lr}
	ldr r1, _02107864 ; =0x021162A4
	mov r7, #0
	ldr r1, [r1]
	mov r8, r0
	add r4, r1, #0x400
	mov r0, r4
	mov r1, r7
	mov r2, #0xef
	bl MI_CpuFill8
	mov r5, #5
	mov r0, r8
	mov r2, r5
	add r1, r4, #0xd1
	bl MI_CpuCopy8
	mov r2, r5
	add r0, r8, #6
	add r1, r4, #0xd6
	bl MI_CpuCopy8
	add r0, r8, #0xc
	add r1, r4, #0xdb
	mov r2, r5
	bl MI_CpuCopy8
	mov r2, r5
	add r0, r8, #0x12
	add r1, r4, #0xe0
	bl MI_CpuCopy8
	add r0, r8, #0x18
	add r1, r4, #0x60
	mov r6, #0x20
	mov r2, r6
	bl MI_CpuCopy8
	add r0, r8, #0x39
	add r1, r4, #0x80
	mov r5, #0xd
	mov r2, r5
	bl MI_CpuCopy8
	add r0, r8, #0x47
	add r1, r4, #0x90
	mov r2, r5
	bl MI_CpuCopy8
	add r0, r8, #0x55
	add r1, r4, #0xa0
	mov r2, r5
	bl MI_CpuCopy8
	mov r2, r5
	add r0, r8, #0x63
	add r1, r4, #0xb0
	bl MI_CpuCopy8
	add r0, r8, #0x71
	mov r2, r6
	add r1, r4, #0x40
	bl MI_CpuCopy8
	mov r1, r7
	ldrb r2, [r4, #0xe6]
	mov r5, #1
	add r0, r4, #0xf0
	bic r2, r2, #3
	orr r2, r2, #2
	and r2, r2, #0xff
	bic r2, r2, #0xfc
	strb r2, [r4, #0xe6]
	strb r5, [r4, #0xe7]
	mov r2, #4
	bl MI_CpuFill8
	strb r5, [r4, #0xf5]
	strb r5, [r4, #0xf6]
	bl FUN_ov17_0210756c
	ldmfd sp!, {r4, r5, r6, r7, r8, pc}
_02107864: .word 0x021162A4
	arm_func_end FUN_ov17_02107750

	arm_func_start FUN_ov17_02107868
FUN_ov17_02107868: ; 0x02107868
	ldr r0, _02107874 ; =0x021162A4
	ldr r0, [r0]
	bx lr
_02107874: .word 0x021162A4
	arm_func_end FUN_ov17_02107868

	arm_func_start FUN_ov17_02107878
FUN_ov17_02107878: ; 0x02107878
	stmfd sp!, {r3, r4, r5, lr}
	ldr r1, _021078B0 ; =0x021162A4
	mov r5, r0
	ldr r0, [r1]
	mov r1, #0
	add r4, r0, r5, lsl #8
	mov r0, r4
	mov r2, #0xef
	bl MI_CpuFill8
	mov r1, #0xff
	mov r0, r5
	strb r1, [r4, #0xe7]
	bl FUN_ov17_0210795c
	ldmfd sp!, {r3, r4, r5, pc}
_021078B0: .word 0x021162A4
	arm_func_end FUN_ov17_02107878

	arm_func_start FUN_ov17_021078b4
FUN_ov17_021078b4: ; 0x021078B4
	stmfd sp!, {r4, r5, r6, r7, lr}
	sub sp, sp, #0x14
	ldr r4, _02107958 ; =0x021162A4
	mov r5, #0
	ldr r1, [r4]
	mov r0, r5
	mov r2, #0x400
	bl MIi_CpuClear16
	mov r1, #0xff
_021078D8:
	ldr r0, [r4]
	add r0, r0, r5, lsl #8
	add r5, r5, #1
	strb r1, [r0, #0xe7]
	cmp r5, #3
	blt _021078D8
	add r4, sp, #0
	mov r0, r4
	bl  FUN_ov15_020cba10
	mov r0, r4
	bl  FUN_ov15_020cb32c
	ldr r4, _02107958 ; =0x021162A4
	mov r6, r0
	mov r7, #0
	mov r5, #0xe
_02107914:
	ldr r1, [r4]
	mov r0, r6
	add r1, r1, r7, lsl #8
	mov r2, r5
	add r1, r1, #0xf0
	bl MI_CpuCopy8
	add r7, r7, #1
	cmp r7, #2
	blt _02107914
	mov r4, #0
_0210793C:
	mov r0, r4
	bl FUN_ov17_0210795c
	add r4, r4, #1
	cmp r4, #4
	blt _0210793C
	add sp, sp, #0x14
	ldmfd sp!, {r4, r5, r6, r7, pc}
_02107958: .word 0x021162A4
	arm_func_end FUN_ov17_021078b4

	arm_func_start FUN_ov17_0210795c
FUN_ov17_0210795c: ; 0x0210795C
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, lr}
	sub sp, sp, #0x14
	ldr r9, _02107AA8 ; =0x021162A4
	mov r8, r0
	ldr r1, [r9]
	mov r4, #1
	add r0, r1, r8, lsl #8
	ldrb r5, [r0, #0xe7]
	mov r7, #0
	add r10, sp, #4
	mov r0, r10
	mov r1, r7
	mov r2, #0x10
	mov r6, r4, lsl r8
	bl MI_CpuFill8
	str r4, [r10, r8, lsl #2]
	cmp r8, #2
	bgt _02107A2C
	ldr r0, [r9]
	ldr r1, _02107AA8 ; =0x021162A4
	ldrb r2, [r0, #0xef]
	tst r2, r6
	movne r7, r4
	cmp r5, #0xff
	bne _021079F0
	cmp r7, #0
	beq _021079F0
	ldrb r2, [r0, #0xef]
	mvn r3, r6
	and r3, r3, #0xff
	and r2, r2, r3
	strb r2, [r0, #0xef]
	ldr r2, [r1]
	mov r0, #1
	ldrb r1, [r2, #0x1ef]
	and r1, r1, r3
	b _02107A20
_021079F0:
	cmp r5, #0xff
	beq _02107A2C
	cmp r7, #0
	bne _02107A2C
	ldrb r2, [r0, #0xef]
	and r3, r6, #0xff
	orr r2, r2, r3
	strb r2, [r0, #0xef]
	ldr r2, [r1]
	mov r0, #1
	ldrb r1, [r2, #0x1ef]
	orr r1, r1, r3
_02107A20:
	strb r1, [r2, #0x1ef]
	str r0, [sp, #8]
	str r0, [sp, #4]
_02107A2C:
	ldr r6, _02107AA8 ; =0x021162A4
	mov r5, #0
	mov r7, #0xfe
	add r4, sp, #4
_02107A3C:
	ldr r0, [r4, r5, lsl #2]
	cmp r0, #0
	beq _02107A6C
	ldr r1, [r6]
	mov r2, r7
	add r0, r1, #0xf8
	add r0, r0, #0x400
	add r1, r1, r5, lsl #8
	bl FUN_0200aa44
	ldr r1, [r6]
	add r1, r1, r5, lsl #8
	strh r0, [r1, #0xfe]
_02107A6C:
	add r5, r5, #1
	cmp r5, #4
	blt _02107A3C
	mov r0, #0x100
	mov r1, #0x20
	bl FUN_ov17_0210e0a8
	mov r2, r0
	str r2, [sp]
	ldr r0, [r6]
	add r1, sp, #4
	bl  FUN_ov15_020cab18
	add r0, sp, #0
	bl FUN_ov17_0210e0cc
	add sp, sp, #0x14
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, pc}
_02107AA8: .word 0x021162A4
	arm_func_end FUN_ov17_0210795c

	arm_func_start FUN_ov17_02107aac
FUN_ov17_02107aac: ; 0x02107AAC
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, lr}
	sub sp, sp, #4
	add r6, sp, #0
	mov r9, r0
	mov r7, #0
	mov r8, r1
	mov r0, r6
	mov r1, r7
	mov r2, #4
	bl MI_CpuFill8
	mov r10, #0x20
	mov r5, #3
	mov r4, r7
_02107AE0:
	add r0, r7, r7, lsl #1
	mov r1, r6
	mov r2, r5
	add r0, r9, r0
	bl MI_CpuCopy8
	mov r1, r4
_02107AF8:
	ldrb r0, [r6, r1]
	cmp r0, #0
	bne _02107B14
	strb r10, [r6, r1]
	add r1, r1, #1
	cmp r1, #3
	blt _02107AF8
_02107B14:
	mov r0, r6
	bl FUN_02024640
	strb r0, [r8, r7]
	add r7, r7, #1
	cmp r7, #4
	blt _02107AE0
	add sp, sp, #4
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, pc}
	arm_func_end FUN_ov17_02107aac

	arm_func_start FUN_ov17_02107b34
FUN_ov17_02107b34: ; 0x02107B34
	cmp r0, #0x39
	subls r0, r0, #0x30
	bxls lr
	cmp r0, #0x46
	subls r0, r0, #0x37
	subhi r0, r0, #0x57
	bx lr
	arm_func_end FUN_ov17_02107b34

	arm_func_start FUN_ov17_02107b50
FUN_ov17_02107b50: ; 0x02107B50
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	mov r0, #0xac
	mov r1, #4
	bl FUN_ov17_0210e0a8
	ldr r4, _02107C08 ; =0x021162A8
	add r1, sp, #0
	str r0, [r4]
	ldr r0, _02107C0C ; =0x02113544
	mov r2, #0x20
	bl FUN_ov17_0210c7fc
	ldr r1, [r4]
	str r0, [r1, #0xa4]
	bl FUN_0201a858
	ldr r0, [r4]
	ldr r1, [r0, #0xa4]
	bl FUN_0201b5ec
	mov r7, #0
	mov r0, r7
	bl FUN_0201c2f0
	ldr r0, [r4]
	add r0, r0, #0xa0
	bl FUN_0201aab4
	mov r6, #0x7f
	mov r5, #1
	mov r4, r7
_02107BB4:
	mov r0, r7
	mov r1, r6
	bl FUN_0201a9d0
	mov r0, r7
	mov r1, r5
	bl FUN_0201a9e8
	mov r0, r7
	mov r1, r4
	bl FUN_0201aa08
	add r7, r7, #1
	cmp r7, #0x20
	blt _02107BB4
	ldr r1, _02107C10 ; =0x02107CC8
	mov r0, r4
	mov r2, r4
	mov r3, #0xc8
	bl FUN_ov17_0210f314
	ldr r1, _02107C08 ; =0x021162A8
	ldr r1, [r1]
	str r0, [r1, #0xa8]
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_02107C08: .word 0x021162A8
_02107C0C: .word 0x02113544
_02107C10: .word 0x02107CC8
	arm_func_end FUN_ov17_02107b50

	arm_func_start FUN_ov17_02107c14
FUN_ov17_02107c14: ; 0x02107C14
	stmfd sp!, {r3, lr}
	ldr r1, _02107C38 ; =0x021162A8
	mov r0, #0
	ldr r1, [r1]
	ldr r1, [r1, #0xa8]
	bl FUN_ov17_0210f3b8
	ldr r0, _02107C3C ; =0x021162A8
	bl FUN_ov17_0210e0cc
	ldmfd sp!, {r3, pc}
_02107C38: .word 0x021162A8
_02107C3C: .word 0x021162A8
	arm_func_end FUN_ov17_02107c14

	arm_func_start FUN_ov17_02107c40
FUN_ov17_02107c40: ; 0x02107C40
	ldr r1, _02107C5C ; =0x021162A8
	mov r2, r0
	ldr r0, [r1]
	ldr r12, _02107C60 ; =FUN_0201c388
	mov r1, #0
	add r0, r0, #0xa0
	bx r12
_02107C5C: .word 0x021162A8
_02107C60: .word FUN_0201c388
	arm_func_end FUN_ov17_02107c40

	arm_func_start FUN_ov17_02107c64
FUN_ov17_02107c64: ; 0x02107C64
	ldr r2, _02107C7C ; =0x021162A8
	mov r1, r0
	ldr r0, [r2]
	ldr r12, _02107C80 ; =FUN_0201aadc
	add r0, r0, #0xa0
	bx r12
_02107C7C: .word 0x021162A8
_02107C80: .word FUN_0201aadc
	arm_func_end FUN_ov17_02107c64

	arm_func_start FUN_ov17_02107c84
FUN_ov17_02107c84: ; 0x02107C84
	ldr r2, _02107CA0 ; =0x021162A8
	ldr r12, _02107CA4 ; =FUN_0201ab24
	ldr r3, [r2]
	mov r2, r1
	mov r1, r0
	add r0, r3, #0xa0
	bx r12
_02107CA0: .word 0x021162A8
_02107CA4: .word FUN_0201ab24
	arm_func_end FUN_ov17_02107c84

	arm_func_start FUN_ov17_02107ca8
FUN_ov17_02107ca8: ; 0x02107CA8
	ldr r0, _02107CC0 ; =0x021162A8
	ldr r12, _02107CC4 ; =FUN_0201aaa4
	ldr r0, [r0]
	mov r1, #0
	add r0, r0, #0xa0
	bx r12
_02107CC0: .word 0x021162A8
_02107CC4: .word FUN_0201aaa4
	arm_func_end FUN_ov17_02107ca8

	arm_func_start FUN_ov17_02107cc8
FUN_ov17_02107cc8:
	ldr r12, _02107CD0 ; =FUN_0201a8d4
	bx r12
_02107CD0: .word FUN_0201a8d4
	arm_func_end FUN_ov17_02107cc8

	arm_func_start FUN_ov17_02107cd4
FUN_ov17_02107cd4: ; 0x02107CD4
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, lr}
	str r0, [sp]
	mov r0, #0x1c
	mov r1, #4
	bl FUN_ov17_0210e0a8
	ldr r1, [sp]
	ldr r4, _02107DBC ; =0x021162AC
	add r3, r1, r1, lsl #2
	ldr r2, _02107DC0 ; =0x02112590
	ldr r1, _02107DC4 ; =0x0211259F
	mov r8, #0
	mvn r7, #0
	ldr r11, _02107DC8 ; =0x021125AE
	str r0, [r4, #4]
	add r9, r2, r3
	add r10, r1, r3
	sub r5, r7, #0x29
	mov r6, r8
_02107D1C:
	ldrb r1, [r9, r8]
	mov r0, #1
	mov r2, r0
	bl FUN_ov17_0210d028
	ldr r2, [r4, #4]
	mov r1, r7
	str r0, [r2, r8, lsl #2]
	ldr r0, [r4, #4]
	mov r2, r6
	ldr r0, [r0, r8, lsl #2]
	bl FUN_ov17_0210ce84
	ldr r0, [r4, #4]
	add r3, r11, r8, lsl #2
	ldrh r3, [r3, #2]
	ldr r0, [r0, r8, lsl #2]
	mov r1, r7
	mov r2, r5
	bl FUN_ov17_0210cdac
	ldr r0, [r4, #4]
	ldrb r3, [r10, r8]
	ldr r0, [r0, r8, lsl #2]
	mov r1, r7
	mov r2, r6
	bl FUN_ov17_0210cd2c
	add r8, r8, #1
	cmp r8, #5
	blt _02107D1C
	ldr r1, _02107DCC ; =FUN_ov17_02107dd0
	mov r0, r6
	mov r2, r6
	mov r3, #0x78
	bl FUN_ov17_0210f314
	ldr r1, _02107DBC ; =0x021162AC
	ldr r1, [r1, #4]
	str r0, [r1, #0x14]
	ldr r0, [sp]
	bl FUN_ov17_02108744
	mov r0, #0xd
	bl FUN_ov17_02107c40
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_02107DBC: .word 0x021162AC
_02107DC0: .word 0x02112590
_02107DC4: .word 0x0211259F
_02107DC8: .word 0x021125AE
_02107DCC: .word FUN_ov17_02107dd0
	arm_func_end FUN_ov17_02107cd4

	arm_func_start FUN_ov17_02107dd0
FUN_ov17_02107dd0: ; 0x02107DD0
	stmfd sp!, {r4, r5, r6, r7, r8, lr}
	sub sp, sp, #8
	ldr r6, _02107EA4 ; =0x021162AC
	mov r4, #0
	ldr r1, [r6, #4]
	mov r5, r0
	ldr r0, [r1]
	add r2, sp, #4
	add r3, sp, #0
	mov r1, r4
	bl FUN_ov17_0210cee4
	ldr r0, [sp, #4]
	add r0, r0, #8
	str r0, [sp, #4]
	cmp r0, #0x20
	blt _02107E18
	cmp r0, #0x100
	ble _02107E58
_02107E18:
	ldr r5, _02107EA8 ; =0x021125AE
	ldr r4, _02107EA4 ; =0x021162AC
	mov r7, #0
	mvn r6, #0
_02107E28:
	add r0, r5, r7, lsl #2
	ldr r1, [r4, #4]
	ldrh r3, [r0, #2]
	ldr r0, [r1, r7, lsl #2]
	ldr r2, [sp, #4]
	mov r1, r6
	bl FUN_ov17_0210cdac
	add r7, r7, #1
	cmp r7, #5
	blt _02107E28
	add sp, sp, #8
	ldmfd sp!, {r4, r5, r6, r7, r8, pc}
_02107E58:
	mov r0, #0x20
	ldr r7, _02107EA8 ; =0x021125AE
	str r0, [sp, #4]
	mvn r8, #0
_02107E68:
	add r0, r7, r4, lsl #2
	ldr r1, [r6, #4]
	ldrh r3, [r0, #2]
	ldr r0, [r1, r4, lsl #2]
	ldr r2, [sp, #4]
	mov r1, r8
	bl FUN_ov17_0210cdac
	add r4, r4, #1
	cmp r4, #5
	blt _02107E68
	ldr r1, _02107EAC ; =FUN_ov17_02107eb0
	mov r0, r5
	bl FUN_ov17_0210f3b0
	add sp, sp, #8
	ldmfd sp!, {r4, r5, r6, r7, r8, pc}
_02107EA4: .word 0x021162AC
_02107EA8: .word 0x021125AE
_02107EAC: .word FUN_ov17_02107eb0
	arm_func_end FUN_ov17_02107dd0

	arm_func_start FUN_ov17_02107eb0
FUN_ov17_02107eb0: ; 0x02107EB0
	stmfd sp!, {r4, r5, r6, r7, r8, lr}
	sub sp, sp, #8
	ldr r5, _02107F84 ; =0x021162AC
	mov r4, r0
	ldr r0, [r5, #4]
	add r2, sp, #4
	ldr r0, [r0, #4]
	add r3, sp, #0
	mov r1, #0
	bl FUN_ov17_0210cee4
	ldr r0, [sp, #4]
	add r0, r0, #8
	str r0, [sp, #4]
	cmp r0, #0x50
	blt _02107EF4
	cmp r0, #0x100
	ble _02107F34
_02107EF4:
	ldr r5, _02107F88 ; =0x021125AE
	ldr r4, _02107F84 ; =0x021162AC
	mov r7, #1
	mvn r6, #0
_02107F04:
	add r0, r5, r7, lsl #2
	ldr r1, [r4, #4]
	ldrh r3, [r0, #2]
	ldr r0, [r1, r7, lsl #2]
	ldr r2, [sp, #4]
	mov r1, r6
	bl FUN_ov17_0210cdac
	add r7, r7, #1
	cmp r7, #5
	blt _02107F04
	add sp, sp, #8
	ldmfd sp!, {r4, r5, r6, r7, r8, pc}
_02107F34:
	mov r0, #0x50
	ldr r6, _02107F88 ; =0x021125AE
	str r0, [sp, #4]
	mov r8, #1
	mvn r7, #0
_02107F48:
	add r0, r6, r8, lsl #2
	ldr r1, [r5, #4]
	ldrh r3, [r0, #2]
	ldr r0, [r1, r8, lsl #2]
	ldr r2, [sp, #4]
	mov r1, r7
	bl FUN_ov17_0210cdac
	add r8, r8, #1
	cmp r8, #5
	blt _02107F48
	ldr r1, _02107F8C ; =FUN_ov17_02107f90
	mov r0, r4
	bl FUN_ov17_0210f3b0
	add sp, sp, #8
	ldmfd sp!, {r4, r5, r6, r7, r8, pc}
_02107F84: .word 0x021162AC
_02107F88: .word 0x021125AE
_02107F8C: .word FUN_ov17_02107f90
	arm_func_end FUN_ov17_02107eb0

	arm_func_start FUN_ov17_02107f90
FUN_ov17_02107f90: ; 0x02107F90
	stmfd sp!, {r4, r5, r6, r7, r8, lr}
	sub sp, sp, #8
	ldr r5, _02108064 ; =0x021162AC
	mov r4, r0
	ldr r0, [r5, #4]
	add r2, sp, #4
	ldr r0, [r0, #8]
	add r3, sp, #0
	mov r1, #0
	bl FUN_ov17_0210cee4
	ldr r0, [sp, #4]
	add r0, r0, #8
	str r0, [sp, #4]
	cmp r0, #0x68
	blt _02107FD4
	cmp r0, #0x100
	ble _02108014
_02107FD4:
	ldr r5, _02108068 ; =0x021125AE
	ldr r4, _02108064 ; =0x021162AC
	mov r7, #2
	mvn r6, #0
_02107FE4:
	add r0, r5, r7, lsl #2
	ldr r1, [r4, #4]
	ldrh r3, [r0, #2]
	ldr r0, [r1, r7, lsl #2]
	ldr r2, [sp, #4]
	mov r1, r6
	bl FUN_ov17_0210cdac
	add r7, r7, #1
	cmp r7, #5
	blt _02107FE4
	add sp, sp, #8
	ldmfd sp!, {r4, r5, r6, r7, r8, pc}
_02108014:
	mov r0, #0x68
	ldr r6, _02108068 ; =0x021125AE
	str r0, [sp, #4]
	mov r8, #2
	mvn r7, #0
_02108028:
	add r0, r6, r8, lsl #2
	ldr r1, [r5, #4]
	ldrh r3, [r0, #2]
	ldr r0, [r1, r8, lsl #2]
	ldr r2, [sp, #4]
	mov r1, r7
	bl FUN_ov17_0210cdac
	add r8, r8, #1
	cmp r8, #5
	blt _02108028
	ldr r1, _0210806C ; =FUN_ov17_02108070
	mov r0, r4
	bl FUN_ov17_0210f3b0
	add sp, sp, #8
	ldmfd sp!, {r4, r5, r6, r7, r8, pc}
_02108064: .word 0x021162AC
_02108068: .word 0x021125AE
_0210806C: .word FUN_ov17_02108070
	arm_func_end FUN_ov17_02107f90

	arm_func_start FUN_ov17_02108070
FUN_ov17_02108070: ; 0x02108070
	stmfd sp!, {r4, r5, r6, r7, r8, lr}
	sub sp, sp, #8
	ldr r5, _02108144 ; =0x021162AC
	mov r4, r0
	ldr r0, [r5, #4]
	add r2, sp, #4
	ldr r0, [r0, #0xc]
	add r3, sp, #0
	mov r1, #0
	bl FUN_ov17_0210cee4
	ldr r0, [sp, #4]
	add r0, r0, #8
	str r0, [sp, #4]
	cmp r0, #0x98
	blt _021080B4
	cmp r0, #0x100
	ble _021080F4
_021080B4:
	ldr r5, _02108148 ; =0x021125AE
	ldr r4, _02108144 ; =0x021162AC
	mov r7, #3
	mvn r6, #0
_021080C4:
	add r0, r5, r7, lsl #2
	ldr r1, [r4, #4]
	ldrh r3, [r0, #2]
	ldr r0, [r1, r7, lsl #2]
	ldr r2, [sp, #4]
	mov r1, r6
	bl FUN_ov17_0210cdac
	add r7, r7, #1
	cmp r7, #5
	blt _021080C4
	add sp, sp, #8
	ldmfd sp!, {r4, r5, r6, r7, r8, pc}
_021080F4:
	mov r0, #0x98
	ldr r6, _02108148 ; =0x021125AE
	str r0, [sp, #4]
	mov r8, #3
	mvn r7, #0
_02108108:
	add r0, r6, r8, lsl #2
	ldr r1, [r5, #4]
	ldrh r3, [r0, #2]
	ldr r0, [r1, r8, lsl #2]
	ldr r2, [sp, #4]
	mov r1, r7
	bl FUN_ov17_0210cdac
	add r8, r8, #1
	cmp r8, #5
	blt _02108108
	ldr r1, _0210814C ; =FUN_ov17_02108150
	mov r0, r4
	bl FUN_ov17_0210f3b0
	add sp, sp, #8
	ldmfd sp!, {r4, r5, r6, r7, r8, pc}
_02108144: .word 0x021162AC
_02108148: .word 0x021125AE
_0210814C: .word FUN_ov17_02108150
	arm_func_end FUN_ov17_02108070

	arm_func_start FUN_ov17_02108150
FUN_ov17_02108150: ; 0x02108150
	stmfd sp!, {r3, r4, r5, lr}
	sub sp, sp, #8
	ldr r4, _021081E4 ; =0x021162AC
	mov r5, r0
	ldr r0, [r4, #4]
	add r2, sp, #4
	ldr r0, [r0, #0x10]
	add r3, sp, #0
	mov r1, #0
	bl FUN_ov17_0210cee4
	ldr r0, [sp, #4]
	add r2, r0, #8
	str r2, [sp, #4]
	cmp r2, #0xb0
	blt _02108194
	cmp r2, #0x100
	ble _021081B4
_02108194:
	ldr r0, _021081E4 ; =0x021162AC
	mvn r1, #0
	ldr r0, [r0, #4]
	mov r3, #0x21
	ldr r0, [r0, #0x10]
	bl FUN_ov17_0210cdac
	add sp, sp, #8
	ldmfd sp!, {r3, r4, r5, pc}
_021081B4:
	mov r2, #0xb0
	ldr r0, [r4, #4]
	str r2, [sp, #4]
	ldr r0, [r0, #0x10]
	sub r1, r2, #0xb1
	mov r3, #0x21
	bl FUN_ov17_0210cdac
	ldr r1, _021081E8 ; =FUN_ov17_021081ec
	mov r0, r5
	bl FUN_ov17_0210f3b0
	add sp, sp, #8
	ldmfd sp!, {r3, r4, r5, pc}
_021081E4: .word 0x021162AC
_021081E8: .word FUN_ov17_021081ec
	arm_func_end FUN_ov17_02108150

	arm_func_start FUN_ov17_021081ec
FUN_ov17_021081ec: ; 0x021081EC
	stmfd sp!, {r4, lr}
	mov r4, #0
	mov r1, r0
	mov r0, r4
	bl FUN_ov17_0210f3b8
	ldr r0, _02108210 ; =0x021162AC
	ldr r0, [r0, #4]
	str r4, [r0, #0x14]
	ldmfd sp!, {r4, pc}
_02108210: .word 0x021162AC
	arm_func_end FUN_ov17_021081ec

	arm_func_start FUN_ov17_02108214
FUN_ov17_02108214: ; 0x02108214
	stmfd sp!, {r4, lr}
	ldr r4, _02108248 ; =0x021162AC
	mov r0, #0
	ldr r3, [r4, #4]
	mov r12, #1
	ldr r1, _0210824C ; =FUN_ov17_02108338
	mov r2, r0
	strb r12, [r3, #0x18]
	mov r3, #0x78
	bl FUN_ov17_0210f314
	ldr r1, [r4, #4]
	str r0, [r1, #0x14]
	ldmfd sp!, {r4, pc}
_02108248: .word 0x021162AC
_0210824C: .word FUN_ov17_02108338
	arm_func_end FUN_ov17_02108214

	arm_func_start FUN_ov17_02108250
FUN_ov17_02108250: ; 0x02108250
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, lr}
	str r0, [sp]
	add r2, r0, r0, lsl #2
	ldr r1, _02108308 ; =0x02112590
	ldr r0, _0210830C ; =0x0211259F
	mov r8, #0
	ldr r5, _02108310 ; =0x021125AE
	ldr r4, _02108314 ; =0x021162AC
	add r9, r1, r2
	add r10, r0, r2
	mov r7, r8
	mov r11, #1
	mvn r6, #0
_02108284:
	ldr r0, [r4, #4]
	mov r1, r7
	ldr r0, [r0, r8, lsl #2]
	bl FUN_ov17_0210cc74
	mov r2, r0
	mov r0, r11
	ldrb r1, [r9, r8]
	bl FUN_ov17_0210cf68
	ldr r0, [r4, #4]
	mov r1, r6
	ldr r0, [r0, r8, lsl #2]
	mov r2, r7
	bl FUN_ov17_0210ce84
	ldr r0, [r4, #4]
	mov r1, r8, lsl #2
	ldr r0, [r0, r8, lsl #2]
	ldrh r2, [r5, r1]
	mov r1, r6
	add r3, r5, r8, lsl #2
	ldrh r3, [r3, #2]
	bl FUN_ov17_0210cdac
	ldr r0, [r4, #4]
	mov r1, r6
	ldr r0, [r0, r8, lsl #2]
	mov r2, r7
	ldrb r3, [r10, r8]
	bl FUN_ov17_0210cd2c
	add r8, r8, #2
	cmp r8, #5
	blt _02108284
	ldr r0, [sp]
	bl FUN_ov17_02108744
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_02108308: .word 0x02112590
_0210830C: .word 0x0211259F
_02108310: .word 0x021125AE
_02108314: .word 0x021162AC
	arm_func_end FUN_ov17_02108250

	arm_func_start FUN_ov17_02108318
FUN_ov17_02108318: ; 0x02108318
	ldr r0, _02108334 ; =0x021162AC
	ldr r0, [r0, #4]
	ldr r0, [r0, #0x14]
	cmp r0, #0
	movne r0, #1
	moveq r0, #0
	bx lr
_02108334: .word 0x021162AC
	arm_func_end FUN_ov17_02108318

	arm_func_start FUN_ov17_02108338
FUN_ov17_02108338: ; 0x02108338
	stmfd sp!, {r4, r5, r6, lr}
	sub sp, sp, #8
	ldr r4, _021083C0 ; =0x021162AC
	mov r5, #0
	ldr r1, [r4, #4]
	mov r6, r0
	ldr r0, [r1, #0x10]
	add r2, sp, #4
	add r3, sp, #0
	mov r1, r5
	bl FUN_ov17_0210cee4
	ldr r0, [sp, #4]
	mov r3, #0x21
	sub r2, r0, #8
	str r2, [sp, #4]
	cmp r2, #0x98
	ble _02108394
	ldr r0, [r4, #4]
	sub r1, r5, #1
	ldr r0, [r0, #0x10]
	bl FUN_ov17_0210cdac
	add sp, sp, #8
	ldmfd sp!, {r4, r5, r6, pc}
_02108394:
	mov r2, #0x98
	ldr r0, [r4, #4]
	str r2, [sp, #4]
	ldr r0, [r0, #0x10]
	sub r1, r2, #0x99
	bl FUN_ov17_0210cdac
	ldr r1, _021083C4 ; =FUN_ov17_021083c8
	mov r0, r6
	bl FUN_ov17_0210f3b0
	add sp, sp, #8
	ldmfd sp!, {r4, r5, r6, pc}
_021083C0: .word 0x021162AC
_021083C4: .word FUN_ov17_021083c8
	arm_func_end FUN_ov17_02108338

	arm_func_start FUN_ov17_021083c8
FUN_ov17_021083c8: ; 0x021083C8
	stmfd sp!, {r4, r5, r6, r7, r8, lr}
	sub sp, sp, #8
	ldr r5, _02108490 ; =0x021162AC
	mov r4, r0
	ldr r0, [r5, #4]
	add r2, sp, #4
	ldr r0, [r0, #0xc]
	add r3, sp, #0
	mov r1, #0
	bl FUN_ov17_0210cee4
	ldr r0, [sp, #4]
	sub r0, r0, #8
	str r0, [sp, #4]
	cmp r0, #0x68
	ble _02108440
	ldr r4, _02108494 ; =0x021125AE
	mov r7, #3
	mvn r6, #0
_02108410:
	add r0, r4, r7, lsl #2
	ldr r1, [r5, #4]
	ldrh r3, [r0, #2]
	ldr r0, [r1, r7, lsl #2]
	ldr r2, [sp, #4]
	mov r1, r6
	bl FUN_ov17_0210cdac
	add r7, r7, #1
	cmp r7, #5
	blt _02108410
	add sp, sp, #8
	ldmfd sp!, {r4, r5, r6, r7, r8, pc}
_02108440:
	mov r0, #0x68
	ldr r6, _02108494 ; =0x021125AE
	str r0, [sp, #4]
	mov r8, #3
	mvn r7, #0
_02108454:
	add r0, r6, r8, lsl #2
	ldr r1, [r5, #4]
	ldrh r3, [r0, #2]
	ldr r0, [r1, r8, lsl #2]
	ldr r2, [sp, #4]
	mov r1, r7
	bl FUN_ov17_0210cdac
	add r8, r8, #1
	cmp r8, #5
	blt _02108454
	ldr r1, _02108498 ; =FUN_ov17_0210849c
	mov r0, r4
	bl FUN_ov17_0210f3b0
	add sp, sp, #8
	ldmfd sp!, {r4, r5, r6, r7, r8, pc}
_02108490: .word 0x021162AC
_02108494: .word 0x021125AE
_02108498: .word FUN_ov17_0210849c
	arm_func_end FUN_ov17_021083c8

	arm_func_start FUN_ov17_0210849c
FUN_ov17_0210849c: ; 0x0210849C
	stmfd sp!, {r4, r5, r6, r7, r8, lr}
	sub sp, sp, #8
	ldr r5, _02108564 ; =0x021162AC
	mov r4, r0
	ldr r0, [r5, #4]
	add r2, sp, #4
	ldr r0, [r0, #8]
	add r3, sp, #0
	mov r1, #0
	bl FUN_ov17_0210cee4
	ldr r0, [sp, #4]
	sub r0, r0, #8
	str r0, [sp, #4]
	cmp r0, #0x50
	ble _02108514
	ldr r4, _02108568 ; =0x021125AE
	mov r7, #2
	mvn r6, #0
_021084E4:
	add r0, r4, r7, lsl #2
	ldr r1, [r5, #4]
	ldrh r3, [r0, #2]
	ldr r0, [r1, r7, lsl #2]
	ldr r2, [sp, #4]
	mov r1, r6
	bl FUN_ov17_0210cdac
	add r7, r7, #1
	cmp r7, #5
	blt _021084E4
	add sp, sp, #8
	ldmfd sp!, {r4, r5, r6, r7, r8, pc}
_02108514:
	mov r0, #0x50
	ldr r6, _02108568 ; =0x021125AE
	str r0, [sp, #4]
	mov r8, #2
	mvn r7, #0
_02108528:
	add r0, r6, r8, lsl #2
	ldr r1, [r5, #4]
	ldrh r3, [r0, #2]
	ldr r0, [r1, r8, lsl #2]
	ldr r2, [sp, #4]
	mov r1, r7
	bl FUN_ov17_0210cdac
	add r8, r8, #1
	cmp r8, #5
	blt _02108528
	ldr r1, _0210856C ; =FUN_ov17_02108570
	mov r0, r4
	bl FUN_ov17_0210f3b0
	add sp, sp, #8
	ldmfd sp!, {r4, r5, r6, r7, r8, pc}
_02108564: .word 0x021162AC
_02108568: .word 0x021125AE
_0210856C: .word FUN_ov17_02108570
	arm_func_end FUN_ov17_0210849c

	arm_func_start FUN_ov17_02108570
FUN_ov17_02108570: ; 0x02108570
	stmfd sp!, {r4, r5, r6, r7, r8, lr}
	sub sp, sp, #8
	ldr r5, _02108638 ; =0x021162AC
	mov r4, r0
	ldr r0, [r5, #4]
	add r2, sp, #4
	ldr r0, [r0, #4]
	add r3, sp, #0
	mov r1, #0
	bl FUN_ov17_0210cee4
	ldr r0, [sp, #4]
	sub r0, r0, #8
	str r0, [sp, #4]
	cmp r0, #0x20
	ble _021085E8
	ldr r4, _0210863C ; =0x021125AE
	mov r7, #1
	mvn r6, #0
_021085B8:
	add r0, r4, r7, lsl #2
	ldr r1, [r5, #4]
	ldrh r3, [r0, #2]
	ldr r0, [r1, r7, lsl #2]
	ldr r2, [sp, #4]
	mov r1, r6
	bl FUN_ov17_0210cdac
	add r7, r7, #1
	cmp r7, #5
	blt _021085B8
	add sp, sp, #8
	ldmfd sp!, {r4, r5, r6, r7, r8, pc}
_021085E8:
	mov r0, #0x20
	ldr r6, _0210863C ; =0x021125AE
	str r0, [sp, #4]
	mov r8, #1
	mvn r7, #0
_021085FC:
	add r0, r6, r8, lsl #2
	ldr r1, [r5, #4]
	ldrh r3, [r0, #2]
	ldr r0, [r1, r8, lsl #2]
	ldr r2, [sp, #4]
	mov r1, r7
	bl FUN_ov17_0210cdac
	add r8, r8, #1
	cmp r8, #5
	blt _021085FC
	ldr r1, _02108640 ; =FUN_ov17_02108644
	mov r0, r4
	bl FUN_ov17_0210f3b0
	add sp, sp, #8
	ldmfd sp!, {r4, r5, r6, r7, r8, pc}
_02108638: .word 0x021162AC
_0210863C: .word 0x021125AE
_02108640: .word FUN_ov17_02108644
	arm_func_end FUN_ov17_02108570

	arm_func_start FUN_ov17_02108644
FUN_ov17_02108644: ; 0x02108644
	stmfd sp!, {r4, r5, r6, r7, r8, lr}
	sub sp, sp, #8
	ldr r6, _02108708 ; =0x021162AC
	mov r4, #0
	ldr r1, [r6, #4]
	mov r5, r0
	ldr r0, [r1]
	add r2, sp, #4
	add r3, sp, #0
	mov r1, r4
	bl FUN_ov17_0210cee4
	ldr r0, [sp, #4]
	ldr r7, _0210870C ; =0x021125AE
	sub r0, r0, #8
	str r0, [sp, #4]
	mvn r8, #0
_02108684:
	add r0, r7, r4, lsl #2
	ldr r1, [r6, #4]
	ldrh r3, [r0, #2]
	ldr r0, [r1, r4, lsl #2]
	ldr r2, [sp, #4]
	mov r1, r8
	bl FUN_ov17_0210cdac
	add r4, r4, #1
	cmp r4, #5
	blt _02108684
	ldr r1, [sp, #4]
	ldr r0, _02108710 ; =0x000001D6
	cmp r1, r0
	addgt sp, sp, #8
	ldmgtfd sp!, {r4, r5, r6, r7, r8, pc}
	cmp r1, #0x100
	addlt sp, sp, #8
	ldmltfd sp!, {r4, r5, r6, r7, r8, pc}
	mov r6, #0
	mov r0, r6
	mov r1, r5
	bl FUN_ov17_0210f3b8
	ldr r4, _02108708 ; =0x021162AC
_021086E0:
	ldr r0, [r4, #4]
	ldr r0, [r0, r6, lsl #2]
	bl FUN_ov17_0210cbf4
	add r6, r6, #1
	cmp r6, #5
	blt _021086E0
	ldr r0, _02108714 ; =0x021162B0
	bl FUN_ov17_0210e0cc
	add sp, sp, #8
	ldmfd sp!, {r4, r5, r6, r7, r8, pc}
_02108708: .word 0x021162AC
_0210870C: .word 0x021125AE
_02108710: .word 0x000001D6
_02108714: .word 0x021162B0
	arm_func_end FUN_ov17_02108644

	arm_func_start FUN_ov17_02108718
FUN_ov17_02108718: ; 0x02108718
	ldr r0, _02108740 ; =0x021162AC
	ldr r0, [r0, #4]
	cmp r0, #0
	moveq r0, #1
	bxeq lr
	ldrb r0, [r0, #0x18]
	cmp r0, #0
	moveq r0, #1
	movne r0, #0
	bx lr
_02108740: .word 0x021162AC
	arm_func_end FUN_ov17_02108718

	arm_func_start FUN_ov17_02108744
FUN_ov17_02108744: ; 0x02108744
	stmfd sp!, {r4, lr}
	ldr r1, _02108784 ; =0x021135C0
	ldr r0, [r1, r0, lsl #2]
	bl FUN_ov17_020f4e20
	mov r4, #0
	mov r1, r4
	mov r2, #4
	bl FUN_ov17_0210c7fc
	ldr r2, _02108788 ; =0x021162AC
	ldr r1, _0210878C ; =FUN_ov17_02108790
	str r0, [r2]
	mov r2, r4
	mov r0, #1
	mov r3, #0x78
	bl FUN_ov17_0210f314
	ldmfd sp!, {r4, pc}
_02108784: .word 0x021135C0
_02108788: .word 0x021162AC
_0210878C: .word FUN_ov17_02108790
	arm_func_end FUN_ov17_02108744

	arm_func_start FUN_ov17_02108790
FUN_ov17_02108790: ; 0x02108790
	stmfd sp!, {r4, r5, r6, lr}
	ldr r4, _021087D4 ; =0x021162AC
	mov r6, r0
	mov r5, #0x600
	ldr r0, [r4]
	mov r1, r5
	bl DC_FlushRange
	ldr r0, [r4]
	mov r2, r5
	mov r1, #0
	bl FUN_0200554c
	ldr r0, [r4]
	bl FUN_ov17_0210c8fc
	mov r1, r6
	mov r0, #1
	bl FUN_ov17_0210f3b8
	ldmfd sp!, {r4, r5, r6, pc}
_021087D4: .word 0x021162AC
	arm_func_end FUN_ov17_02108790

	arm_func_start FUN_ov17_021087d8
FUN_ov17_021087d8: ; 0x021087D8
	stmfd sp!, {r4, r5, lr}
	sub sp, sp, #0x54
	mov r4, r0
	ldr r0, _02108930 ; =0x00001BA0
	mov r1, #0x20
	bl FUN_ov17_0210e0a8
	ldr r5, _02108934 ; =0x021162B4
	add r1, r0, #0x1000
	str r0, [r5]
	str r4, [r1, #0x370]
	bl FUN_02003410
	ldr r3, [r5]
	mov r2, #3
	add r3, r3, #0x1000
	str r0, [r3, #0xb88]
	str r1, [r3, #0xb8c]
	ldr r0, [r5]
	ldr r1, _02108938 ; =FUN_ov17_02108a74
	bl FUN_020130b4
	cmp r0, #2
	bne _0210891C
_0210882C:
	ldr r0, [r5]
	add r0, r0, #0x3b8
	add r0, r0, #0x1000
	bl FUN_02012944
	ldr r4, [r5]
	add r0, r4, #0x1300
	ldrh r0, [r0, #0xb8]
	cmp r0, #2
	bne _0210882C
	add r0, r4, #0x374
	ldr lr, _0210893C ; =0x021125D4
	add r12, r0, #0x1000
	mov r5, #4
_02108860:
	ldmia lr!, {r0, r1, r2, r3}
	stmia r12!, {r0, r1, r2, r3}
	subs r5, r5, #1
	bne _02108860
	ldr r0, [lr]
	add r1, r4, #0xf00
	str r0, [r12]
	add r0, r4, #0x1000
	str r1, [r0, #0x374]
	bl FUN_02012d08
	ldr r5, _02108934 ; =0x021162B4
	ldr r1, [r5]
	add r1, r1, #0x1300
	strh r0, [r1, #0x7c]
	add r0, sp, #0
	bl FUN_02003f54
	ldr r1, [r5]
	ldr r0, _02108940 ; =0x021125CA
	add r1, r1, #0x388
	add r1, r1, #0x1000
	mov r2, #8
	bl MI_CpuCopy8
	ldr r0, [r5]
	mov r4, #1
	add r0, r0, #0x1000
	strb r4, [r0, #0x391]
	ldr r0, [r5]
	ldrh r2, [sp, #0x1a]
	add r1, r0, #0x394
	add r0, sp, #4
	add r1, r1, #0x1000
	mov r2, r2, lsl #1
	bl MI_CpuCopy8
	bl FUN_ov17_0210894c
	cmp r0, #0
	beq _0210891C
	mov r0, #0
	ldr r1, _02108944 ; =FUN_ov17_02108d6c
	mov r2, r0
	mov r3, #0x78
	bl FUN_ov17_0210f314
	ldr r1, [r5]
	add sp, sp, #0x54
	add r1, r1, #0x1000
	str r0, [r1, #0xb90]
	mov r0, r4
	ldmfd sp!, {r4, r5, pc}
_0210891C:
	ldr r0, _02108948 ; =0x021162B4
	bl FUN_ov17_0210e0cc
	mov r0, #0
	add sp, sp, #0x54
	ldmfd sp!, {r4, r5, pc}
_02108930: .word 0x00001BA0
_02108934: .word 0x021162B4
_02108938: .word FUN_ov17_02108a74
_0210893C: .word 0x021125D4
_02108940: .word 0x021125CA
_02108944: .word FUN_ov17_02108d6c
_02108948: .word 0x021162B4
	arm_func_end FUN_ov17_021087d8

	arm_func_start FUN_ov17_0210894c
FUN_ov17_0210894c: ; 0x0210894C
	stmfd sp!, {r3, lr}
	ldr r1, _02108978 ; =0x021162B4
	ldr r0, _0210897C ; =FUN_ov17_02108a74
	ldr r1, [r1]
	add r1, r1, #0x374
	add r1, r1, #0x1000
	bl FUN_02013394
	cmp r0, #2
	moveq r0, #1
	movne r0, #0
	ldmfd sp!, {r3, pc}
_02108978: .word 0x021162B4
_0210897C: .word FUN_ov17_02108a74
	arm_func_end FUN_ov17_0210894c

	arm_func_start FUN_ov17_02108980
FUN_ov17_02108980: ; 0x02108980
	stmfd sp!, {r4, lr}
	ldr r4, _02108A50 ; =0x021162B4
	mov r1, #1
	ldr r0, [r4]
	add r0, r0, #0x1000
	strb r1, [r0, #0xb94]
	ldr r0, [r4]
	add r0, r0, #0x3b8
	add r0, r0, #0x1000
	bl FUN_02012944
	ldr r0, [r4]
	add r0, r0, #0x1300
	ldrh r0, [r0, #0xb8]
	cmp r0, #2
	beq _021089F4
	ldr r0, _02108A54 ; =FUN_ov17_02108a74
	bl FUN_0201312c
	cmp r0, #2
	movne r0, #0
	ldmnefd sp!, {r4, pc}
_021089D0:
	ldr r0, [r4]
	add r0, r0, #0x3b8
	add r0, r0, #0x1000
	bl FUN_02012944
	ldr r0, [r4]
	add r0, r0, #0x1300
	ldrh r0, [r0, #0xb8]
	cmp r0, #2
	bne _021089D0
_021089F4:
	ldr r0, _02108A54 ; =FUN_ov17_02108a74
	bl FUN_02013168
	cmp r0, #2
	movne r0, #0
	ldmnefd sp!, {r4, pc}
	ldr r0, _02108A50 ; =0x021162B4
	ldr r0, [r0]
	add r0, r0, #0x1000
	ldr r1, [r0, #0xb90]
	cmp r1, #0
	beq _02108A28
	mov r0, #0
	bl FUN_ov17_0210f3d8
_02108A28:
	ldr r0, _02108A50 ; =0x021162B4
	ldr r0, [r0]
	add r0, r0, #0x1000
_02108A34:
	ldrb r1, [r0, #0xb94]
	cmp r1, #2
	bne _02108A34
	ldr r0, _02108A58 ; =0x021162B4
	bl FUN_ov17_0210e0cc
	mov r0, #1
	ldmfd sp!, {r4, pc}
_02108A50: .word 0x021162B4
_02108A54: .word FUN_ov17_02108a74
_02108A58: .word 0x021162B4
	arm_func_end FUN_ov17_02108980

	arm_func_start FUN_ov17_02108a5c
FUN_ov17_02108a5c: ; 0x02108A5C
	ldr r1, _02108A70 ; =0x021162B4
	ldr r1, [r1]
	add r1, r1, #0x1000
	str r0, [r1, #0x370]
	bx lr
_02108A70: .word 0x021162B4
	arm_func_end FUN_ov17_02108a5c

	arm_func_start FUN_ov17_02108a74
FUN_ov17_02108a74: ; 0x02108A74
	stmfd sp!, {r3, lr}
	ldrh r1, [r0, #2]
	cmp r1, #0
	ldmnefd sp!, {r3, pc}
	ldr r1, _02108B04 ; =0x021162B4
	ldr r1, [r1]
	add r1, r1, #0x1000
	ldrb r2, [r1, #0xb94]
	cmp r2, #0
	beq _02108AB4
	ldrh r0, [r0]
	cmp r0, #2
	ldmnefd sp!, {r3, pc}
	mov r0, #2
	strb r0, [r1, #0xb94]
	ldmfd sp!, {r3, pc}
_02108AB4:
	ldrh r2, [r0]
	cmp r2, #0x26
	ldmnefd sp!, {r3, pc}
	ldrh r2, [r0, #8]
	cmp r2, #4
	beq _02108AF4
	cmp r2, #5
	bne _02108AFC
	ldrb r1, [r1, #0xb96]
	cmp r1, #0
	beq _02108AE8
	bl FUN_ov17_02108c60
	b _02108AEC
_02108AE8:
	bl FUN_ov17_02108b08
_02108AEC:
	bl FUN_ov17_0210894c
	ldmfd sp!, {r3, pc}
_02108AF4:
	bl FUN_ov17_0210894c
	ldmfd sp!, {r3, pc}
_02108AFC:
	bl FUN_02004160
	ldmfd sp!, {r3, pc}
_02108B04: .word 0x021162B4
	arm_func_end FUN_ov17_02108a74

	arm_func_start FUN_ov17_02108b08
FUN_ov17_02108b08: ; 0x02108B08
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, lr}
	str r0, [sp]
	ldrh r0, [r0, #0xe]
	mov r11, #0
	cmp r0, #0
	ldmlefd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_02108B20:
	ldr r0, [sp]
	mov r1, #0xc0
	add r0, r0, r11, lsl #2
	ldr r7, [r0, #0x10]
	mov r0, r7
	bl DC_InvalidateRange
	ldr r1, _02108C54 ; =0x021125CA
	add r0, r7, #0xc
	mov r2, #8
	bl FUN_020219ac
	cmp r0, #0
	bne _02108C3C
	ldr r0, _02108C58 ; =0x021162B4
	mov r6, #0
	ldr r8, [r0]
	mov r4, #6
	add r5, r8, #0x1300
_02108B64:
	rsb r9, r6, r6, lsl #3
	mov r2, r4
	add r0, r7, #4
	add r1, r5, r9
	bl FUN_020219ac
	cmp r0, #0
	bne _02108BBC
	add r0, r8, r9
	add r0, r0, #0x1000
	ldrb r0, [r0, #0x306]
	cmp r0, #0
	bne _02108C3C
	ldrb r0, [r7, #0x15]
	tst r0, #1
	beq _02108C3C
	add r0, r8, #0x1000
	ldr r1, [r0, #0x370]
	cmp r1, #0
	ldmeqfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
	mov r0, #1
	blx r1
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_02108BBC:
	add r6, r6, #1
	cmp r6, #0x10
	blt _02108B64
	ldr r5, _02108C5C ; =0x021125C4
	mov r10, #0
	add r6, r8, #0x1300
	mov r4, #6
_02108BD8:
	rsb r9, r10, r10, lsl #3
	mov r1, r5
	mov r2, r4
	add r0, r6, r9
	bl FUN_020219ac
	cmp r0, #0
	bne _02108C30
	add r1, r8, #0x1300
	mov r2, r4
	add r0, r7, #4
	add r1, r1, r9
	bl MI_CpuCopy8
	ldrb r0, [r7, #0x15]
	tst r0, #1
	ldr r0, _02108C58 ; =0x021162B4
	movne r1, #1
	ldr r0, [r0]
	moveq r1, #0
	add r0, r0, r9
	add r0, r0, #0x1000
	strb r1, [r0, #0x306]
	b _02108C3C
_02108C30:
	add r10, r10, #1
	cmp r10, #0x10
	blt _02108BD8
_02108C3C:
	ldr r0, [sp]
	add r11, r11, #1
	ldrh r0, [r0, #0xe]
	cmp r11, r0
	blt _02108B20
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_02108C54: .word 0x021125CA
_02108C58: .word 0x021162B4
_02108C5C: .word 0x021125C4
	arm_func_end FUN_ov17_02108b08

	arm_func_start FUN_ov17_02108c60
FUN_ov17_02108c60: ; 0x02108C60
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, lr}
	ldr r4, _02108D64 ; =0x021162B4
	mov r11, r0
	ldr r2, [r4]
	add r1, r2, #0x1000
	ldrb r0, [r1, #0xb95]
	cmp r0, #0
	beq _02108C94
	ldr r1, [r1, #0x370]
	cmp r1, #0
	ldmeqfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
	blx r1
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_02108C94:
	add r0, r2, #0xf00
	mov r1, #0x400
	bl DC_InvalidateRange
	ldrh r0, [r11, #0xe]
	mov r7, #0
	str r0, [sp]
	cmp r0, #0
	ldmlefd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
	ldr r10, [r4]
	mov r4, #6
	add r5, r10, #0x1300
_02108CC0:
	add r0, r11, r7, lsl #2
	ldr r6, [r0, #0x10]
	ldr r1, _02108D68 ; =0x021125CA
	mov r2, #8
	add r0, r6, #0xc
	bl FUN_020219ac
	cmp r0, #0
	bne _02108D50
	ldrb r0, [r6, #0x15]
	tst r0, #1
	beq _02108D50
	mov r8, #0
_02108CF0:
	rsb r9, r8, r8, lsl #3
	mov r2, r4
	add r0, r6, #4
	add r1, r5, r9
	bl FUN_020219ac
	cmp r0, #0
	bne _02108D44
	add r0, r10, r9
	add r0, r0, #0x1000
	ldrb r0, [r0, #0x306]
	cmp r0, #0
	bne _02108D50
	add r0, r10, #0x1000
	ldr r1, [r0, #0x370]
	cmp r1, #0
	moveq r1, #1
	streqb r1, [r0, #0xb95]
	ldmeqfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
	mov r0, #1
	blx r1
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_02108D44:
	add r8, r8, #1
	cmp r8, #0x10
	blt _02108CF0
_02108D50:
	ldr r0, [sp]
	add r7, r7, #1
	cmp r7, r0
	blt _02108CC0
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_02108D64: .word 0x021162B4
_02108D68: .word 0x021125CA
	arm_func_end FUN_ov17_02108c60

	arm_func_start FUN_ov17_02108d6c
FUN_ov17_02108d6c: ; 0x02108D6C
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, lr}
	str r0, [sp]
	bl FUN_02003410
	ldr r2, _02108E90 ; =0x021162B4
	ldr r3, _02108E94 ; =0x0017F898
	ldr r10, [r2]
	mov r8, #0
	add r2, r10, #0x1000
	ldr r4, [r2, #0xb88]
	ldr r5, [r2, #0xb8c]
	adds r3, r4, r3
	adc r2, r5, #0
	cmp r1, r2
	cmpeq r0, r3
	ldmlofd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
	ldr r4, _02108E98 ; =0x021125C4
	mov r7, r8
	mov r6, r8
	add r5, r10, #0x1300
	mov r11, #6
_02108DBC:
	rsb r9, r6, r6, lsl #3
	mov r1, r4
	mov r2, r11
	add r0, r5, r9
	bl FUN_020219ac
	cmp r0, #0
	beq _02108DF0
	add r0, r10, r9
	add r0, r0, #0x1000
	ldrb r0, [r0, #0x306]
	cmp r0, #0
	movne r7, #1
	moveq r8, #1
_02108DF0:
	add r6, r6, #1
	cmp r6, #0x10
	blt _02108DBC
	cmp r7, #0
	cmpne r8, #0
	beq _02108E20
	add r0, r10, #0x1000
	ldr r1, [r0, #0x370]
	cmp r1, #0
	beq _02108E60
	mov r0, #2
	b _02108E5C
_02108E20:
	cmp r7, #0
	beq _02108E40
	add r0, r10, #0x1000
	ldr r1, [r0, #0x370]
	cmp r1, #0
	beq _02108E60
	mov r0, #1
	b _02108E5C
_02108E40:
	cmp r8, #0
	bne _02108E60
	add r0, r10, #0x1000
	ldr r1, [r0, #0x370]
	cmp r1, #0
	beq _02108E60
	mov r0, #0
_02108E5C:
	blx r1
_02108E60:
	ldr r3, _02108E90 ; =0x021162B4
	mov r0, #0
	ldr r2, [r3]
	ldr r1, [sp]
	add r2, r2, #0x1000
	str r0, [r2, #0xb90]
	ldr r2, [r3]
	mov r3, #1
	add r2, r2, #0x1000
	strb r3, [r2, #0xb96]
	bl FUN_ov17_0210f3b8
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_02108E90: .word 0x021162B4
_02108E94: .word 0x0017F898
_02108E98: .word 0x021125C4
	arm_func_end FUN_ov17_02108d6c

	arm_func_start FUN_ov17_02108e9c
FUN_ov17_02108e9c: ; 0x02108E9C
	stmfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, lr}
	sub sp, sp, #0x24
	ldr r5, _02109188 ; =0x021126D4
	ldr r4, _0210918C ; =0x021161F8
	ldrb r10, [r5]
	ldrb r9, [r5, #1]
	ldrb r8, [r5, #2]
	ldrb r7, [r5, #3]
	ldrb r6, [r5, #4]
	ldrb r5, [r5, #5]
	strb r10, [sp, #0x1c]
	mov r11, r0
	str r2, [sp, #0x10]
	mov r2, r3
	mov r10, r1
	ldr r0, [r4]
	ldr r3, [sp, #0x48]
	mov r1, r11
	strb r9, [sp, #0x1d]
	strb r8, [sp, #0x1e]
	strb r7, [sp, #0x1f]
	strb r6, [sp, #0x20]
	strb r5, [sp, #0x21]
	bl FUN_ov17_020f8cdc
	mov r4, #4
	str r0, [sp, #0x14]
	mov r1, r4
	mov r0, #0x20
	bl FUN_ov17_0210e0a8
	sub r3, r4, #6
	ldr r4, _02109190 ; =0x021162B8
	mov r9, #0
	str r0, [r4]
	strb r10, [r0, #0x1c]
	ldr r2, [r4]
	ldr r0, _02109194 ; =0x04000050
	strb r3, [r2, #0x1b]
	ldr r3, [r4]
	ldr r2, [sp, #0x10]
	mov r1, #0x1f
	strb r2, [r3, #0x1e]
	mov r2, r9
	bl FUN_0200462c
	ldr r1, _02109198 ; =0x0211261C
	mov r0, r9
	ldrb r1, [r1, r10]
	mov r2, r9
	bl FUN_ov17_0210d028
	ldr r1, [r4]
	sub r8, r9, #1
	str r0, [r1]
	ldr r0, [r4]
	mov r1, r8
	ldr r0, [r0]
	mov r2, #0x100
	mov r3, r9
	bl FUN_ov17_0210cdac
	ldr r0, [r4]
	mov r1, r8
	ldr r0, [r0]
	mov r2, r9
	bl FUN_ov17_0210ce84
	ldr r1, _0210919C ; =0x02112622
	ldrb r0, [r1, r10]
	cmp r0, #0
	ble _02109014
	ldr r0, _021091A0 ; =0x02112644
	ldrb r5, [r1, r10]
	add r6, r0, r10, lsl #1
	mov r7, r9
	mov r11, #0x100
_02108FB8:
	ldrb r1, [r9, r6]
	mov r0, r7
	mov r2, r7
	bl FUN_ov17_0210d028
	ldr r2, [r4]
	mov r1, r8
	add r2, r2, r9, lsl #2
	str r0, [r2, #8]
	ldr r0, [r4]
	mov r2, r11
	add r0, r0, r9, lsl #2
	ldr r0, [r0, #8]
	mov r3, r7
	bl FUN_ov17_0210cdac
	ldr r0, [r4]
	mov r1, r8
	add r0, r0, r9, lsl #2
	ldr r0, [r0, #8]
	mov r2, r7
	bl FUN_ov17_0210ce84
	add r9, r9, #1
	cmp r9, r5
	blt _02108FB8
_02109014:
	add r0, sp, #0x18
	mov r4, #1
	mov r5, #0
	str r0, [sp]
	mov r0, r5
	mov r3, r4
	mov r1, #0x20
	mov r2, #0xc
	str r5, [sp, #4]
	bl FUN_ov17_0210d5e4
	ldr r6, _02109190 ; =0x021162B8
	mov r2, r5
	ldr r1, [r6]
	str r0, [r1, #0x10]
	ldr r1, [sp, #0x18]
	mov r0, r5
	bl FUN_ov17_0210cab0
	ldr r1, [r6]
	str r0, [r1, #4]
	bl FUN_ov17_020f507c
	ldr r1, _021091A4 ; =0x02112664
	mov r8, r10, lsl #2
	ldrh r7, [r1, r8]
	mov r3, #2
	mov r1, r5
	str r7, [sp]
	str r3, [sp, #4]
	str r0, [sp, #8]
	ldr r0, [sp, #0x14]
	ldr r3, _021091A8 ; =0x02112662
	str r0, [sp, #0xc]
	ldr r0, [r6]
	ldrh r3, [r3, r8]
	ldr r0, [r0, #0x10]
	mov r2, r5
	bl FUN_ov17_0210daf0
	ldr r2, [r6]
	mov r1, #0x100
	str r5, [sp]
	ldr r0, [r2, #0x10]
	ldr r3, [r2, #4]
	mov r2, r5
	bl FUN_ov17_0210dbbc
	mov r8, #0x1f
	mov r0, r5
	mov r1, r5
	mov r2, r8
	mov r3, r5
	bl FUN_ov17_0210de88
	ldr r7, [r6]
	add r3, sp, #0x1c
	ldrb r7, [r7, #0x1c]
	mov r0, r5
	mov r1, r4
	ldrb r3, [r3, r7]
	mov r2, r8
	bl FUN_ov17_0210de88
	mov r2, r8
	mov r0, r5
	mov r1, #3
	mov r3, r4
	bl FUN_ov17_0210de88
	ldr r2, _021091AC ; =0x02112628
	mov r0, r5
	mov r1, r4
	bl FUN_ov17_0210dd80
	mov r0, #0xc0
	bl FUN_ov17_021094fc
	mov r2, #0x4000000
	ldr r0, [sp, #0x10]
	ldr r1, [r2]
	cmp r0, #0
	bic r0, r1, #0xe000
	orr r0, r0, #0x6000
	str r0, [r2]
	mov r3, #0x78
	beq _02109168
	ldr r1, _021091B0 ; =FUN_ov17_0210922c
	mov r0, r4
	mov r2, r5
	bl FUN_ov17_0210f314
	ldr r1, [r6]
	add sp, sp, #0x24
	str r0, [r1, #0x14]
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
_02109168:
	ldr r1, _021091B4 ; =FUN_ov17_02109284
	mov r0, r4
	mov r2, r5
	bl FUN_ov17_0210f314
	ldr r1, [r6]
	str r0, [r1, #0x14]
	add sp, sp, #0x24
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
_02109188: .word 0x021126D4
_0210918C: .word 0x021161F8
_02109190: .word 0x021162B8
_02109194: .word 0x04000050
_02109198: .word 0x0211261C
_0210919C: .word 0x02112622
_021091A0: .word 0x02112644
_021091A4: .word 0x02112664
_021091A8: .word 0x02112662
_021091AC: .word 0x02112628
_021091B0: .word FUN_ov17_0210922c
_021091B4: .word FUN_ov17_02109284
	arm_func_end FUN_ov17_02108e9c

	arm_func_start FUN_ov17_021091b8
FUN_ov17_021091b8: ; 0x021091B8
	stmfd sp!, {r3, r4, r5, lr}
	ldr r4, _021091F4 ; =0x021162B8
	mov r5, #0
	ldr r1, [r4]
	mov r0, r5
	ldr r1, [r1, #0x14]
	bl FUN_ov17_0210f3b8
	ldr r1, _021091F8 ; =FUN_ov17_021097d0
	mov r2, r5
	mov r0, #1
	mov r3, #0x78
	bl FUN_ov17_0210f314
	ldr r1, [r4]
	str r0, [r1, #0x14]
	ldmfd sp!, {r3, r4, r5, pc}
_021091F4: .word 0x021162B8
_021091F8: .word FUN_ov17_021097d0
	arm_func_end FUN_ov17_021091b8

	arm_func_start FUN_ov17_021091fc
FUN_ov17_021091fc: ; 0x021091FC
	ldr r0, _0210920C ; =0x021162B8
	ldr r0, [r0]
	ldrsb r0, [r0, #0x1b]
	bx lr
_0210920C: .word 0x021162B8
	arm_func_end FUN_ov17_021091fc

	arm_func_start FUN_ov17_02109210
FUN_ov17_02109210: ; 0x02109210
	ldr r0, _02109228 ; =0x021162B8
	ldr r0, [r0]
	cmp r0, #0
	movne r0, #1
	moveq r0, #0
	bx lr
_02109228: .word 0x021162B8
	arm_func_end FUN_ov17_02109210

	arm_func_start FUN_ov17_0210922c
FUN_ov17_0210922c: ; 0x0210922C
	stmfd sp!, {r3, r4, r5, lr}
	ldr r5, _02109278 ; =0x021162B8
	mov r4, r0
	ldr r2, [r5]
	ldr r0, _0210927C ; =0x04000050
	ldrsb r1, [r2, #0x1a]
	sub r1, r1, #1
	strb r1, [r2, #0x1a]
	ldr r1, [r5]
	ldrsb r1, [r1, #0x1a]
	bl FUN_02004650
	ldr r0, [r5]
	ldrsb r0, [r0, #0x1a]
	cmn r0, #0xc
	ldmgtfd sp!, {r3, r4, r5, pc}
	ldr r1, _02109280 ; =FUN_ov17_02109284
	mov r0, r4
	bl FUN_ov17_0210f3b0
	ldmfd sp!, {r3, r4, r5, pc}
_02109278: .word 0x021162B8
_0210927C: .word 0x04000050
_02109280: .word FUN_ov17_02109284
	arm_func_end FUN_ov17_0210922c

	arm_func_start FUN_ov17_02109284
FUN_ov17_02109284: ; 0x02109284
	stmfd sp!, {r4, r5, r6, lr}
	sub sp, sp, #8
	ldr r6, _02109334 ; =0x021162B8
	mov r4, #0
	ldr r1, [r6]
	mov r5, r0
	ldr r0, [r1]
	add r2, sp, #4
	add r3, sp, #0
	mov r1, r4
	bl FUN_ov17_0210cee4
	ldr r0, [sp]
	ldr r1, [r6]
	sub r0, r0, #0xc
	str r0, [sp]
	ldrb r2, [r1, #0x1c]
	ldr r1, _02109338 ; =0x0211267C
	mov r2, r2, lsl #2
	ldrh r1, [r1, r2]
	cmp r0, r1
	ble _021092E4
	bl FUN_ov17_021094fc
	add sp, sp, #8
	ldmfd sp!, {r4, r5, r6, pc}
_021092E4:
	mov r0, r1
	bl FUN_ov17_021094fc
	ldr r0, [r6]
	mov r3, #0x78
	ldrb r0, [r0, #0x1c]
	cmp r0, #5
	bne _02109308
	ldr r1, _0210933C ; =FUN_ov17_02109490
	b _0210930C
_02109308:
	ldr r1, _02109340 ; =FUN_ov17_02109344
_0210930C:
	mov r0, r4
	mov r2, r4
	bl FUN_ov17_0210f314
	ldr r1, [r6]
	str r0, [r1, #0x14]
	mov r1, r5
	mov r0, #1
	bl FUN_ov17_0210f3b8
	add sp, sp, #8
	ldmfd sp!, {r4, r5, r6, pc}
_02109334: .word 0x021162B8
_02109338: .word 0x0211267C
_0210933C: .word FUN_ov17_02109490
_02109340: .word FUN_ov17_02109344
	arm_func_end FUN_ov17_02109284

	arm_func_start FUN_ov17_02109344
FUN_ov17_02109344: ; 0x02109344
	stmfd sp!, {r4, r5, r6, r7, r8, r9, r10, lr}
	sub sp, sp, #8
	ldr r4, _02109474 ; =0x021162B8
	ldr r9, _02109478 ; =0x02112622
	ldr r0, [r4]
	mov r10, #0
	ldrb r1, [r0, #0x1c]
	ldrb r0, [r9, r1]
	cmp r0, #0
	ble _021093CC
	ldr r8, _0210947C ; =0x021126AA
	ldr r7, _02109480 ; =0x02112630
	ldr r6, _02109484 ; =0x0211264E
	add r5, sp, #0
_0210937C:
	add r0, r7, r1, lsl #1
	ldrb r0, [r10, r0]
	add r3, r8, r1, lsl #3
	mov r2, r5
	add r0, r3, r0, lsl #2
	add r1, r6, r1, lsl #2
	bl FUN_ov17_0210dca0
	mov r0, r5
	bl FUN_ov17_0210e600
	cmp r0, #0
	ldrne r0, _02109474 ; =0x021162B8
	ldrne r0, [r0]
	strneb r10, [r0, #0x1b]
	bne _021093CC
	ldr r0, [r4]
	add r10, r10, #1
	ldrb r1, [r0, #0x1c]
	ldrb r0, [r9, r1]
	cmp r10, r0
	blt _0210937C
_021093CC:
	mov r0, #1
	bl FUN_ov17_0210e4b8
	cmp r0, #0
	beq _021093F4
	ldr r2, [r4]
	ldr r0, _02109488 ; =0x0211263A
	ldrb r1, [r2, #0x1c]
	mov r1, r1, lsl #1
	ldrsb r0, [r0, r1]
	strb r0, [r2, #0x1b]
_021093F4:
	mov r0, #2
	bl FUN_ov17_0210e4b8
	cmp r0, #0
	beq _0210941C
	ldr r2, [r4]
	ldr r0, _0210948C ; =0x0211263B
	ldrb r1, [r2, #0x1c]
	mov r1, r1, lsl #1
	ldrsb r0, [r0, r1]
	strb r0, [r2, #0x1b]
_0210941C:
	ldr r4, [r4]
	ldr r2, _02109478 ; =0x02112622
	ldrb r1, [r4, #0x1c]
	mov r0, #0
	ldrb r1, [r2, r1]
	cmp r1, #0
	ble _02109464
	ldrsb r3, [r4, #0x1b]
_0210943C:
	cmp r0, r3
	bne _02109450
	bl FUN_ov17_02109714
	add sp, sp, #8
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, pc}
_02109450:
	ldrb r1, [r4, #0x1c]
	add r0, r0, #1
	ldrb r1, [r2, r1]
	cmp r0, r1
	blt _0210943C
_02109464:
	mvn r0, #0
	strb r0, [r4, #0x1b]
	add sp, sp, #8
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, pc}
_02109474: .word 0x021162B8
_02109478: .word 0x02112622
_0210947C: .word 0x021126AA
_02109480: .word 0x02112630
_02109484: .word 0x0211264E
_02109488: .word 0x0211263A
_0210948C: .word 0x0211263B
	arm_func_end FUN_ov17_02109344

	arm_func_start FUN_ov17_02109490
FUN_ov17_02109490: ; 0x02109490
	stmfd sp!, {r3, r4, r5, lr}
	ldr r4, _021094F4 ; =0x021162B8
	mvn r3, #0
	ldr r2, [r4]
	mov r1, r0
	strb r3, [r2, #0x1b]
	ldr r2, [r4]
	ldrh r0, [r2, #0x18]
	add r0, r0, #1
	strh r0, [r2, #0x18]
	ldr r0, [r4]
	ldrh r0, [r0, #0x18]
	cmp r0, #0x78
	ldmlofd sp!, {r3, r4, r5, pc}
	mov r5, #0
	mov r0, r5
	bl FUN_ov17_0210f3b8
	ldr r1, _021094F8 ; =FUN_ov17_021097d0
	mov r2, r5
	mov r0, #1
	mov r3, #0x78
	bl FUN_ov17_0210f314
	ldr r1, [r4]
	str r0, [r1, #0x14]
	ldmfd sp!, {r3, r4, r5, pc}
_021094F4: .word 0x021162B8
_021094F8: .word FUN_ov17_021097d0
	arm_func_end FUN_ov17_02109490

	arm_func_start FUN_ov17_021094fc
FUN_ov17_021094fc: ; 0x021094FC
	stmfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, lr}
	sub sp, sp, #0xc
	ldr r4, _0210966C ; =0x021162B8
	mov r10, r0
	ldr r0, [r4]
	mvn r8, #0
	ldrb r1, [r0, #0x1c]
	ldr r7, _02109670 ; =0x0211267A
	ldr r0, [r0]
	mov r1, r1, lsl #2
	ldrh r2, [r7, r1]
	mov r1, r8
	mov r3, r10
	bl FUN_ov17_0210cdac
	ldr r0, [r4]
	mov r1, r8
	ldrb r2, [r0, #0x1c]
	ldr r0, [r0, #4]
	add r3, r10, #8
	mov r2, r2, lsl #2
	ldrh r2, [r7, r2]
	add r2, r2, #8
	bl FUN_ov17_0210cdac
	ldr r0, [r4]
	mov r1, r10
	ldr r0, [r0]
	bl FUN_ov17_02109688
	ldr r0, [r4]
	mov r1, r10
	ldr r0, [r0, #4]
	bl FUN_ov17_02109688
	ldr r0, [r4]
	mov r9, #0
	ldrb r0, [r0, #0x1c]
	ldr r6, _02109674 ; =0x02112622
	ldrb r1, [r6, r0]
	cmp r1, #0
	ble _02109608
	ldr r5, _02109678 ; =0x02112630
	ldr r11, _0210967C ; =0x021126AA
_0210959C:
	add r1, r5, r0, lsl #1
	ldrb r12, [r9, r1]
	add r2, r11, r0, lsl #3
	add r3, r7, r0, lsl #2
	add r0, r2, r12, lsl #2
	ldr r1, [r4]
	mov r12, r12, lsl #2
	ldrh r2, [r12, r2]
	ldrh r0, [r0, #2]
	add r1, r1, r9, lsl #2
	ldrh r3, [r3, #2]
	add r12, r10, r0
	ldr r0, [r1, #8]
	mov r1, r8
	sub r3, r12, r3
	bl FUN_ov17_0210cdac
	ldr r0, [r4]
	mov r1, r10
	add r0, r0, r9, lsl #2
	ldr r0, [r0, #8]
	bl FUN_ov17_02109688
	ldr r0, [r4]
	add r9, r9, #1
	ldrb r0, [r0, #0x1c]
	ldrb r1, [r6, r0]
	cmp r9, r1
	blt _0210959C
_02109608:
	and r1, r10, #0xff
	cmp r1, #0xc0
	movge r3, #0
	movge r1, r3
	ldrlt r2, _02109680 ; =0x02112694
	movlt r3, r0, lsl #2
	ldrlth r2, [r2, r3]
	ldr r4, _02109670 ; =0x0211267A
	mov r5, r0, lsl #2
	addlt r3, r1, r2
	ldr r2, _02109684 ; =0x02112692
	ldrh r0, [r4, r5]
	ldrh r2, [r2, r5]
	cmp r3, #0xc0
	add r4, sp, #4
	movgt r3, #0xc0
	add r2, r0, r2
	str r4, [sp]
	bl FUN_ov17_0210dc88
	mov r0, #0
	mov r1, r0
	mov r2, r4
	bl FUN_ov17_0210dd80
	add sp, sp, #0xc
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
_0210966C: .word 0x021162B8
_02109670: .word 0x0211267A
_02109674: .word 0x02112622
_02109678: .word 0x02112630
_0210967C: .word 0x021126AA
_02109680: .word 0x02112694
_02109684: .word 0x02112692
	arm_func_end FUN_ov17_021094fc

	arm_func_start FUN_ov17_02109688
FUN_ov17_02109688: ; 0x02109688
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, lr}
	sub sp, sp, #8
	mov r10, r0
	mov r9, r1
	bl FUN_ov17_0210cc80
	mov r7, r0
	cmp r7, #0
	mov r8, #0
	addle sp, sp, #8
	ldmlefd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
	mov r11, #0x200
	mov r4, r8
	add r6, sp, #4
	add r5, sp, #0
_021096C0:
	mov r0, r10
	mov r1, r8
	mov r2, r6
	mov r3, r5
	bl FUN_ov17_0210cee4
	ldr r0, [sp]
	cmp r0, r9
	blt _021096EC
	cmp r0, #0xc0
	movlt r2, r4
	blt _021096F0
_021096EC:
	mov r2, r11
_021096F0:
	mov r0, r10
	mov r1, r8
	mov r3, #0
	bl FUN_ov17_0210cc88
	add r8, r8, #1
	cmp r8, r7
	blt _021096C0
	add sp, sp, #8
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
	arm_func_end FUN_ov17_02109688

	arm_func_start FUN_ov17_02109714
FUN_ov17_02109714: ; 0x02109714
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	ldr r7, _021097BC ; =0x021162B8
	mov r5, #0
	ldr r1, [r7]
	mov r6, r0
	add r0, r1, r6, lsl #2
	ldr r0, [r0, #8]
	mov r1, r5
	bl FUN_ov17_0210cc74
	ldr r2, [r7]
	ldr r1, _021097C0 ; =0x02112644
	ldrb r3, [r2, #0x1c]
	mov r2, r0
	mov r0, r5
	add r1, r1, r3, lsl #1
	ldrb r1, [r6, r1]
	add r1, r1, #1
	bl FUN_ov17_0210cf68
	ldr r0, [r7]
	ldr r1, _021097C4 ; =0x02112630
	ldrb r2, [r0, #0x1c]
	add r0, r0, r6, lsl #2
	ldr r0, [r0, #8]
	add r1, r1, r2, lsl #1
	ldrb r3, [r6, r1]
	sub r4, r5, #1
	mov r1, r4
	mov lr, r3, lsl #2
	ldr r12, _021097C8 ; =0x021126AA
	ldr r3, _021097CC ; =0x021126AC
	add r12, r12, r2, lsl #3
	add r3, r3, r2, lsl #3
	ldrh r2, [lr, r12]
	ldrh r3, [lr, r3]
	bl FUN_ov17_0210cdac
	ldr r0, [r7]
	mov r1, r4
	add r0, r0, r6, lsl #2
	ldr r0, [r0, #8]
	mov r2, r5
	bl FUN_ov17_0210ce84
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_021097BC: .word 0x021162B8
_021097C0: .word 0x02112644
_021097C4: .word 0x02112630
_021097C8: .word 0x021126AA
_021097CC: .word 0x021126AC
	arm_func_end FUN_ov17_02109714

	arm_func_start FUN_ov17_021097d0
FUN_ov17_021097d0: ; 0x021097D0
	stmfd sp!, {r3, lr}
	ldr r1, _02109804 ; =0x021162B8
	ldr r3, [r1]
	ldrb r2, [r3, #0x1d]
	add r2, r2, #1
	strb r2, [r3, #0x1d]
	ldr r1, [r1]
	ldrb r1, [r1, #0x1d]
	cmp r1, #8
	ldmlofd sp!, {r3, pc}
	ldr r1, _02109808 ; =FUN_ov17_0210980c
	bl FUN_ov17_0210f3b0
	ldmfd sp!, {r3, pc}
_02109804: .word 0x021162B8
_02109808: .word FUN_ov17_0210980c
	arm_func_end FUN_ov17_021097d0

	arm_func_start FUN_ov17_0210980c
FUN_ov17_0210980c: ; 0x0210980C
	stmfd sp!, {r3, r4, r5, lr}
	sub sp, sp, #8
	ldr r4, _0210988C ; =0x021162B8
	mov r5, r0
	ldr r0, [r4]
	add r2, sp, #4
	ldr r0, [r0]
	add r3, sp, #0
	mov r1, #0
	bl FUN_ov17_0210cee4
	ldr r0, [sp]
	add r0, r0, #0xc
	str r0, [sp]
	bl FUN_ov17_021094fc
	ldr r0, [sp]
	cmp r0, #0xc0
	addlt sp, sp, #8
	ldmltfd sp!, {r3, r4, r5, pc}
	ldr r0, [r4]
	ldrb r0, [r0, #0x1e]
	cmp r0, #0
	beq _02109878
	ldr r1, _02109890 ; =FUN_ov17_02109898
	mov r0, r5
	bl FUN_ov17_0210f3b0
	add sp, sp, #8
	ldmfd sp!, {r3, r4, r5, pc}
_02109878:
	ldr r1, _02109894 ; =FUN_ov17_021098f0
	mov r0, r5
	bl FUN_ov17_0210f3b0
	add sp, sp, #8
	ldmfd sp!, {r3, r4, r5, pc}
_0210988C: .word 0x021162B8
_02109890: .word FUN_ov17_02109898
_02109894: .word FUN_ov17_021098f0
	arm_func_end FUN_ov17_0210980c

	arm_func_start FUN_ov17_02109898
FUN_ov17_02109898: ; 0x02109898
	stmfd sp!, {r3, r4, r5, lr}
	ldr r5, _021098E4 ; =0x021162B8
	mov r4, r0
	ldr r2, [r5]
	ldr r0, _021098E8 ; =0x04000050
	ldrsb r1, [r2, #0x1a]
	add r1, r1, #1
	strb r1, [r2, #0x1a]
	ldr r1, [r5]
	ldrsb r1, [r1, #0x1a]
	bl FUN_02004650
	ldr r0, [r5]
	ldrsb r0, [r0, #0x1a]
	cmp r0, #0
	ldmltfd sp!, {r3, r4, r5, pc}
	ldr r1, _021098EC ; =FUN_ov17_021098f0
	mov r0, r4
	bl FUN_ov17_0210f3b0
	ldmfd sp!, {r3, r4, r5, pc}
_021098E4: .word 0x021162B8
_021098E8: .word 0x04000050
_021098EC: .word FUN_ov17_021098f0
	arm_func_end FUN_ov17_02109898

	arm_func_start FUN_ov17_021098f0
FUN_ov17_021098f0: ; 0x021098F0
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	mov r2, #0x4000000
	ldr r1, [r2]
	ldr r7, _0210998C ; =0x021162B8
	bic r1, r1, #0xe000
	str r1, [r2]
	ldr r1, [r7]
	mov r6, r0
	ldr r0, [r1]
	bl FUN_ov17_0210cbf4
	ldr r0, [r7]
	ldr r0, [r0, #4]
	bl FUN_ov17_0210cbf4
	ldr r1, [r7]
	ldr r4, _02109990 ; =0x02112622
	ldrb r0, [r1, #0x1c]
	mov r5, #0
	ldrb r0, [r4, r0]
	cmp r0, #0
	ble _0210996C
_02109940:
	add r0, r1, r5, lsl #2
	ldr r0, [r0, #8]
	cmp r0, #0
	beq _02109954
	bl FUN_ov17_0210cbf4
_02109954:
	ldr r1, [r7]
	add r5, r5, #1
	ldrb r0, [r1, #0x1c]
	ldrb r0, [r4, r0]
	cmp r5, r0
	blt _02109940
_0210996C:
	ldr r0, [r1, #0x10]
	bl FUN_ov17_0210d6c0
	mov r1, r6
	mov r0, #1
	bl FUN_ov17_0210f3b8
	ldr r0, _02109994 ; =0x021162B8
	bl FUN_ov17_0210e0cc
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_0210998C: .word 0x021162B8
_02109990: .word 0x02112622
_02109994: .word 0x021162B8
	arm_func_end FUN_ov17_021098f0

	arm_func_start FUN_ov17_02109998
FUN_ov17_02109998: ; 0x02109998
	stmfd sp!, {r4, lr}
	ldr r4, _021099D0 ; =0x021162BC
	add r1, r0, #0x160
	str r0, [r4]
	add r0, r1, #0x1b000
	bl FUN_ov17_0210a620
	ldr r0, [r4]
	mov r1, #0
	add r0, r0, #0x1b000
	str r1, [r0, #0x140]
	ldr r0, [r4]
	add r0, r0, #0x1b000
	str r1, [r0, #0x144]
	ldmfd sp!, {r4, pc}
_021099D0: .word 0x021162BC
	arm_func_end FUN_ov17_02109998

	arm_func_start FUN_ov17_021099d4
FUN_ov17_021099d4: ; 0x021099D4
	stmfd sp!, {r3, r4, r5, lr}
	sub sp, sp, #0x28
	ldrb r3, [sp, #0x12]
	mov r4, r1
	ldr r2, _02109ADC ; =0x02FFFC80
	bic r1, r3, #0xf
	orr r1, r1, #1
	strb r1, [sp, #0x12]
	ldrb r3, [r2, #0x1a]
	mov r5, r0
	add r0, r2, #6
	add r1, sp, #0x14
	mov r2, #0x14
	strb r3, [sp, #0x13]
	bl MI_CpuCopy8
	ldrb r2, [sp, #0x12]
	ldr r0, _02109AE0 ; =0x021162BC
	add lr, sp, #4
	mov r1, #0
	ldr r0, [r0]
	bic r2, r2, #0xf0
	mov r12, r0
	strb r2, [sp, #0x12]
	strh r1, [lr]
	strh r1, [lr, #2]
	strh r1, [lr, #4]
	strh r1, [lr, #6]
	strh r1, [lr, #8]
	strh r1, [lr, #0xa]
	strh r1, [lr, #0xc]
	mov r3, #3
_02109A50:
	ldrh r1, [lr, #2]
	ldrh r2, [lr], #4
	subs r3, r3, #1
	strh r1, [r12, #2]
	strh r2, [r12], #4
	bne _02109A50
	ldrh r2, [lr]
	add r1, r0, #0x40
	add r1, r1, #0x10000
	strh r2, [r12]
	add r0, r0, #0x1b000
	str r1, [r0, #0x140]
	mov r1, #2
	str r1, [sp]
	ldr r0, _02109AE0 ; =0x021162BC
	add r1, sp, #0x12
	ldr r0, [r0]
	mov r2, r5
	add r0, r0, #0x1b000
	ldr r0, [r0, #0x140]
	mov r3, r4
	bl  FUN_ov128_0212e720
	cmp r0, #0
	beq _02109AB4
	bl FUN_02004160
_02109AB4:
	mov r4, #1
	mov r1, r4
	mov r0, #0x100
	bl  FUN_ov128_0212e968
	ldr r0, _02109AE4 ; =FUN_ov17_0210a0e4
	bl  FUN_ov126_0212a9c0 ; may be ov127 ov128 ov130
	mov r0, r4
	bl FUN_ov17_0210a400
	add sp, sp, #0x28
	ldmfd sp!, {r3, r4, r5, pc}
_02109ADC: .word 0x02FFFC80
_02109AE0: .word 0x021162BC
_02109AE4: .word FUN_ov17_0210a0e4
	arm_func_end FUN_ov17_021099d4

	arm_func_start FUN_ov17_02109ae8
FUN_ov17_02109ae8: ; 0x02109AE8
	stmfd sp!, {r3, r4, r5, lr}
	mov r5, r0
	mov r4, r1
	mov r0, #2
	bl FUN_ov17_0210a400
	mov r0, r4
	bl  FUN_ov128_0212ec98
	cmp r0, #0
	beq _02109B18
	mov r0, #7
	bl FUN_ov17_0210a400
	ldmfd sp!, {r3, r4, r5, pc}
_02109B18:
	mov r0, r5
	bl FUN_ov17_02109b30
	cmp r0, #0
	ldmnefd sp!, {r3, r4, r5, pc}
	bl FUN_02004160
	ldmfd sp!, {r3, r4, r5, pc}
	arm_func_end FUN_ov17_02109ae8

	arm_func_start FUN_ov17_02109b30
FUN_ov17_02109b30: ; 0x02109B30
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	sub sp, sp, #0x48
	mov r6, r0
	ldr r0, [r6]
	mov r5, #0
	cmp r0, #0
	moveq r4, r5
	beq _02109B78
	add r4, sp, #0
	mov r0, r4
	bl FS_InitFile
	ldr r1, [r6]
	mov r0, r4
	bl FS_OpenFile
	cmp r0, #0
	addeq sp, sp, #0x48
	moveq r0, r5
	ldmeqfd sp!, {r3, r4, r5, r6, r7, pc}
_02109B78:
	mov r0, r4
	bl  FUN_ov128_0212bd30
	cmp r0, #0
	beq _02109BE0
	ldr r7, _02109BFC ; =0x021162BC
	ldr r0, [r7]
	add r1, r0, #0x2c
	add r0, r0, #0x1b000
	str r1, [r0, #0x144]
	ldr r0, [r7]
	add r0, r0, #0x1b000
	ldr r1, [r0, #0x144]
	cmp r1, #0
	beq _02109BE0
	mov r0, r4
	mov r2, #0x10000
	bl  FUN_ov128_0212bdb4
	cmp r0, #0
	beq _02109BE0
	ldr r1, [r7]
	mov r0, r6
	add r1, r1, #0x1b000
	ldr r1, [r1, #0x144]
	bl  FUN_ov128_0212c358
	cmp r0, #0
	movne r5, #1
_02109BE0:
	add r0, sp, #0
	cmp r4, r0
	bne _02109BF0
	bl FS_CloseFile
_02109BF0:
	mov r0, r5
	add sp, sp, #0x48
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_02109BFC: .word 0x021162BC
	arm_func_end FUN_ov17_02109b30

	arm_func_start FUN_ov17_02109c00
FUN_ov17_02109c00: ; 0x02109C00
	stmfd sp!, {r3, r4, r5, lr}
	mov r5, #1
	mov r1, r5
	mov r4, r0
	bl  FUN_ov128_0212aab4
	cmp r0, #0
	ldmnefd sp!, {r3, r4, r5, pc}
	mvn r0, r5, lsl r4
	mov r5, r0, lsl #0x10
	bl OS_DisableInterrupts
	ldr r1, _02109C9C ; =0x021162BC
	ldr r3, [r1]
	ldrh r2, [r3, #2]
	and r2, r2, r5, lsr #16
	strh r2, [r3, #2]
	ldr r3, [r1]
	ldrh r2, [r3, #4]
	and r2, r2, r5, lsr #16
	strh r2, [r3, #4]
	ldr r3, [r1]
	ldrh r2, [r3, #6]
	and r2, r2, r5, lsr #16
	strh r2, [r3, #6]
	ldr r3, [r1]
	ldrh r2, [r3, #8]
	and r2, r2, r5, lsr #16
	strh r2, [r3, #8]
	ldr r3, [r1]
	ldrh r2, [r3, #0xa]
	and r2, r2, r5, lsr #16
	strh r2, [r3, #0xa]
	ldr r2, [r1]
	ldrh r1, [r2, #0xc]
	and r1, r1, r5, lsr #16
	strh r1, [r2, #0xc]
	bl OS_RestoreInterrupts
	mov r0, r4
	bl  FUN_ov128_0212edcc
	ldmfd sp!, {r3, r4, r5, pc}
_02109C9C: .word 0x021162BC
	arm_func_end FUN_ov17_02109c00

	arm_func_start FUN_ov17_02109ca0
FUN_ov17_02109ca0: ; 0x02109CA0
	stmfd sp!, {r3, r4, r5, lr}
	mov r1, #0
	mov r4, r0
	bl  FUN_ov128_0212aab4
	cmp r0, #0
	bne _02109D3C
	mov r0, #1
	mvn r0, r0, lsl r4
	mov r5, r0, lsl #0x10
	bl OS_DisableInterrupts
	ldr r1, _02109D78 ; =0x021162BC
	ldr r3, [r1]
	ldrh r2, [r3, #2]
	and r2, r2, r5, lsr #16
	strh r2, [r3, #2]
	ldr r3, [r1]
	ldrh r2, [r3, #4]
	and r2, r2, r5, lsr #16
	strh r2, [r3, #4]
	ldr r3, [r1]
	ldrh r2, [r3, #6]
	and r2, r2, r5, lsr #16
	strh r2, [r3, #6]
	ldr r3, [r1]
	ldrh r2, [r3, #8]
	and r2, r2, r5, lsr #16
	strh r2, [r3, #8]
	ldr r3, [r1]
	ldrh r2, [r3, #0xa]
	and r2, r2, r5, lsr #16
	strh r2, [r3, #0xa]
	ldr r2, [r1]
	ldrh r1, [r2, #0xc]
	and r1, r1, r5, lsr #16
	strh r1, [r2, #0xc]
	bl OS_RestoreInterrupts
	mov r0, r4
	bl  FUN_ov128_0212edcc
	ldmfd sp!, {r3, r4, r5, pc}
_02109D3C:
	bl OS_DisableInterrupts
	ldr r2, _02109D78 ; =0x021162BC
	mov r1, #1
	ldr r5, [r2]
	mvn r1, r1, lsl r4
	ldrh r3, [r5, #4]
	mov r1, r1, lsl #0x10
	and r3, r3, r1, lsr #16
	strh r3, [r5, #4]
	ldr r3, [r2]
	ldrh r2, [r3, #2]
	and r1, r2, r1, lsr #16
	strh r1, [r3, #2]
	bl OS_RestoreInterrupts
	ldmfd sp!, {r3, r4, r5, pc}
_02109D78: .word 0x021162BC
	arm_func_end FUN_ov17_02109ca0

	arm_func_start FUN_ov17_02109d7c
FUN_ov17_02109d7c: ; 0x02109D7C
	stmfd sp!, {r3, r4, r5, lr}
	mov r1, #2
	mov r4, r0
	bl  FUN_ov128_0212aab4
	cmp r0, #0
	bne _02109E18
	mov r0, #1
	mvn r0, r0, lsl r4
	mov r5, r0, lsl #0x10
	bl OS_DisableInterrupts
	ldr r1, _02109E5C ; =0x021162BC
	ldr r3, [r1]
	ldrh r2, [r3, #2]
	and r2, r2, r5, lsr #16
	strh r2, [r3, #2]
	ldr r3, [r1]
	ldrh r2, [r3, #4]
	and r2, r2, r5, lsr #16
	strh r2, [r3, #4]
	ldr r3, [r1]
	ldrh r2, [r3, #6]
	and r2, r2, r5, lsr #16
	strh r2, [r3, #6]
	ldr r3, [r1]
	ldrh r2, [r3, #8]
	and r2, r2, r5, lsr #16
	strh r2, [r3, #8]
	ldr r3, [r1]
	ldrh r2, [r3, #0xa]
	and r2, r2, r5, lsr #16
	strh r2, [r3, #0xa]
	ldr r2, [r1]
	ldrh r1, [r2, #0xc]
	and r1, r1, r5, lsr #16
	strh r1, [r2, #0xc]
	bl OS_RestoreInterrupts
	mov r0, r4
	bl  FUN_ov128_0212edcc
	ldmfd sp!, {r3, r4, r5, pc}
_02109E18:
	bl OS_DisableInterrupts
	mov r12, #1
	ldr r2, _02109E5C ; =0x021162BC
	mvn r1, r12, lsl r4
	ldr r5, [r2]
	mov r1, r1, lsl #0x10
	ldrh r3, [r5, #6]
	mov r4, r12, lsl r4
	and r1, r3, r1, lsr #16
	strh r1, [r5, #6]
	ldr r3, [r2]
	mov r1, r4, lsl #0x10
	ldrh r2, [r3, #8]
	orr r1, r2, r1, lsr #16
	strh r1, [r3, #8]
	bl OS_RestoreInterrupts
	ldmfd sp!, {r3, r4, r5, pc}
_02109E5C: .word 0x021162BC
	arm_func_end FUN_ov17_02109d7c

	arm_func_start FUN_ov17_02109e60
FUN_ov17_02109e60: ; 0x02109E60
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	mov r0, #3
	bl FUN_ov17_0210a400
	mov r5, #1
	ldr r7, _02109F3C ; =0x021162BC
	mov r4, r5
_02109E78:
	ldr r1, [r7]
	ldrh r0, [r1, #2]
	tst r0, r4, lsl r5
	beq _02109F24
	ldrh r0, [r1, #4]
	tst r0, r4, lsl r5
	bne _02109F24
	ldrh r0, [r1, #6]
	tst r0, r4, lsl r5
	bne _02109F1C
	mvn r0, r4, lsl r5
	mov r6, r0, lsl #0x10
	bl OS_DisableInterrupts
	ldr r2, [r7]
	ldrh r1, [r2, #2]
	and r1, r1, r6, lsr #16
	strh r1, [r2, #2]
	ldr r2, [r7]
	ldrh r1, [r2, #4]
	and r1, r1, r6, lsr #16
	strh r1, [r2, #4]
	ldr r2, [r7]
	ldrh r1, [r2, #6]
	and r1, r1, r6, lsr #16
	strh r1, [r2, #6]
	ldr r2, [r7]
	ldrh r1, [r2, #8]
	and r1, r1, r6, lsr #16
	strh r1, [r2, #8]
	ldr r2, [r7]
	ldrh r1, [r2, #0xa]
	and r1, r1, r6, lsr #16
	strh r1, [r2, #0xa]
	ldr r2, [r7]
	ldrh r1, [r2, #0xc]
	and r1, r1, r6, lsr #16
	strh r1, [r2, #0xc]
	bl OS_RestoreInterrupts
	mov r0, r5
	bl  FUN_ov128_0212edcc
	b _02109F24
_02109F1C:
	mov r0, r5
	bl FUN_ov17_02109d7c
_02109F24:
	add r0, r5, #1
	mov r0, r0, lsl #0x10
	mov r5, r0, lsr #0x10
	cmp r5, #0x10
	blo _02109E78
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_02109F3C: .word 0x021162BC
	arm_func_end FUN_ov17_02109e60

	arm_func_start FUN_ov17_02109f40
FUN_ov17_02109f40: ; 0x02109F40
	stmfd sp!, {r4, r5, r6, lr}
	ldr r4, _02109FA4 ; =0x021162BC
	ldr r0, [r4]
	ldrh r0, [r0, #2]
	cmp r0, #0
	moveq r0, #0
	ldmeqfd sp!, {r4, r5, r6, pc}
	mov r6, #1
	mov r5, r6
_02109F64:
	ldr r0, [r4]
	ldrh r0, [r0, #2]
	tst r0, r5, lsl r6
	beq _02109F88
	mov r0, r6
	bl  FUN_ov128_0212aa64
	cmp r0, #0
	moveq r0, #0
	ldmeqfd sp!, {r4, r5, r6, pc}
_02109F88:
	add r0, r6, #1
	mov r0, r0, lsl #0x10
	mov r6, r0, lsr #0x10
	cmp r6, #0x10
	blo _02109F64
	mov r0, #1
	ldmfd sp!, {r4, r5, r6, pc}
_02109FA4: .word 0x021162BC
	arm_func_end FUN_ov17_02109f40

	arm_func_start FUN_ov17_02109fa8
FUN_ov17_02109fa8: ; 0x02109FA8
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, lr}
	mov r7, #1
	ldr r4, _0210A09C ; =0x021162BC
	mov r8, #0
	mov r5, #3
	mov r6, r7
_02109FC0:
	ldr r0, [r4]
	mov r9, r6, lsl r7
	ldrh r0, [r0, #0xa]
	tst r0, r6, lsl r7
	beq _0210A068
	mov r0, r7
	mov r1, r5
	bl  FUN_ov128_0212aab4
	cmp r0, #0
	movne r0, r9, lsl #0x10
	orrne r8, r8, r0, lsr #16
	bne _0210A068
	mvn r0, r9
	mov r9, r0, lsl #0x10
	bl OS_DisableInterrupts
	ldr r2, [r4]
	ldrh r1, [r2, #2]
	and r1, r1, r9, lsr #16
	strh r1, [r2, #2]
	ldr r2, [r4]
	ldrh r1, [r2, #4]
	and r1, r1, r9, lsr #16
	strh r1, [r2, #4]
	ldr r2, [r4]
	ldrh r1, [r2, #6]
	and r1, r1, r9, lsr #16
	strh r1, [r2, #6]
	ldr r2, [r4]
	ldrh r1, [r2, #8]
	and r1, r1, r9, lsr #16
	strh r1, [r2, #8]
	ldr r2, [r4]
	ldrh r1, [r2, #0xa]
	and r1, r1, r9, lsr #16
	strh r1, [r2, #0xa]
	ldr r2, [r4]
	ldrh r1, [r2, #0xc]
	and r1, r1, r9, lsr #16
	strh r1, [r2, #0xc]
	bl OS_RestoreInterrupts
	mov r0, r7
	bl  FUN_ov128_0212edcc
_0210A068:
	add r0, r7, #1
	mov r0, r0, lsl #0x10
	mov r7, r0, lsr #0x10
	cmp r7, #0x10
	blo _02109FC0
	cmp r8, #0
	bne _0210A090
	mov r0, #7
	bl FUN_ov17_0210a400
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
_0210A090:
	mov r0, #4
	bl FUN_ov17_0210a400
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
_0210A09C: .word 0x021162BC
	arm_func_end FUN_ov17_02109fa8

	arm_func_start FUN_ov17_0210a0a0
FUN_ov17_0210a0a0: ; 0x0210A0A0
	stmfd sp!, {r3, lr}
	mov r0, #6
	bl FUN_ov17_0210a400
	bl  FUN_ov128_0212ed90
	ldmfd sp!, {r3, pc}
	arm_func_end FUN_ov17_0210a0a0

	arm_func_start FUN_ov17_0210a0b4
FUN_ov17_0210a0b4: ; 0x0210A0B4
	stmfd sp!, {r3, lr}
	ldr r0, _0210A0E0 ; =0x021162BC
	ldr r2, [r0]
	ldrh r0, [r2]
	cmp r0, #4
	ldreqh r1, [r2, #2]
	ldreqh r0, [r2, #0xc]
	cmpeq r1, r0
	ldmnefd sp!, {r3, pc}
	bl  FUN_ov128_0212ed90
	ldmfd sp!, {r3, pc}
_0210A0E0: .word 0x021162BC
	arm_func_end FUN_ov17_0210a0b4

	arm_func_start FUN_ov17_0210a0e4
FUN_ov17_0210a0e4: ; 0x0210A0E4
	stmfd sp!, {r4, r5, r6, r7, r8, lr}
	ldr r4, _0210A3FC ; =0x021162BC
	mov r8, r0
	mov r7, r2
	cmp r1, #0xe
	mov r5, #1
	addls pc, pc, r1, lsl #2
	b _0210A3F4
_0210A104: ; jump table
	b _0210A3F4 ; case 0
	ldmfd sp!, {r4, r5, r6, r7, r8, pc} ; case 1
	b _0210A140 ; case 2
	b _0210A1C4 ; case 3
	ldmfd sp!, {r4, r5, r6, r7, r8, pc} ; case 4
	ldmfd sp!, {r4, r5, r6, r7, r8, pc} ; case 5
	ldmfd sp!, {r4, r5, r6, r7, r8, pc} ; case 6
	b _0210A2F8 ; case 7
	ldmfd sp!, {r4, r5, r6, r7, r8, pc} ; case 8
	b _0210A32C ; case 9
	b _0210A248 ; case 10
	ldmfd sp!, {r4, r5, r6, r7, r8, pc} ; case 11
	b _0210A364 ; case 12
	b _0210A3B4 ; case 13
	b _0210A2B0 ; case 14
_0210A140:
	bl FUN_ov17_0210a414
	cmp r0, #2
	ldmnefd sp!, {r4, r5, r6, r7, r8, pc}
	ldr r6, [r4]
	bl OS_DisableInterrupts
	mov r1, r5, lsl r8
	ldrh r2, [r6, #2]
	mov r1, r1, lsl #0x10
	orr r1, r2, r1, lsr #16
	strh r1, [r6, #2]
	bl OS_RestoreInterrupts
	sub r2, r8, #1
	mov r0, #0x1e
	mul r0, r2, r0
	ldr r1, [r4]
	add r2, r1, #0x24
	ldrb r1, [r7, #0xa]
	add r3, r2, r0
	strb r1, [r2, r0]
	ldrb r1, [r7, #0xb]
	strb r1, [r3, #1]
	ldrb r1, [r7, #0xc]
	strb r1, [r3, #2]
	ldrb r1, [r7, #0xd]
	strb r1, [r3, #3]
	ldrb r1, [r7, #0xe]
	strb r1, [r3, #4]
	ldrb r1, [r7, #0xf]
	strb r1, [r3, #5]
	ldr r1, [r4]
	add r0, r1, r0
	strh r8, [r0, #0x2a]
	ldmfd sp!, {r4, r5, r6, r7, r8, pc}
_0210A1C4:
	bl FUN_ov17_0210a480
	cmp r0, #6
	ldmeqfd sp!, {r4, r5, r6, r7, r8, pc}
	mvn r0, r5, lsl r8
	mov r5, r0, lsl #0x10
	bl OS_DisableInterrupts
	ldr r2, [r4]
	ldrh r1, [r2, #2]
	and r1, r1, r5, lsr #16
	strh r1, [r2, #2]
	ldr r2, [r4]
	ldrh r1, [r2, #4]
	and r1, r1, r5, lsr #16
	strh r1, [r2, #4]
	ldr r2, [r4]
	ldrh r1, [r2, #6]
	and r1, r1, r5, lsr #16
	strh r1, [r2, #6]
	ldr r2, [r4]
	ldrh r1, [r2, #8]
	and r1, r1, r5, lsr #16
	strh r1, [r2, #8]
	ldr r2, [r4]
	ldrh r1, [r2, #0xa]
	and r1, r1, r5, lsr #16
	strh r1, [r2, #0xa]
	ldr r2, [r4]
	ldrh r1, [r2, #0xc]
	and r1, r1, r5, lsr #16
	strh r1, [r2, #0xc]
	bl OS_RestoreInterrupts
	bl FUN_ov17_0210a0b4
	ldmfd sp!, {r4, r5, r6, r7, r8, pc}
_0210A248:
	bl FUN_ov17_0210a414
	cmp r0, #2
	beq _0210A260
	mov r0, r8
	bl FUN_ov17_02109ca0
	ldmfd sp!, {r4, r5, r6, r7, r8, pc}
_0210A260:
	ldr r3, [r4]
	mov r0, r5, lsl r8
	ldrh r2, [r3, #4]
	mov r1, r0, lsl #0x10
	mov r0, r8
	orr r1, r2, r1, lsr #16
	strh r1, [r3, #4]
	bl FUN_ov17_02109c00
	mov r0, r8
	bl  FUN_ov128_0212a9e8
	cmp r0, #0
	ldmeqfd sp!, {r4, r5, r6, r7, r8, pc}
	ldr r1, [r4]
	sub r2, r8, #1
	add r3, r1, #0xe
	mov r1, #0x1e
	mla r1, r2, r1, r3
	mov r2, #0x16
	bl MI_CpuCopy8
	ldmfd sp!, {r4, r5, r6, r7, r8, pc}
_0210A2B0:
	ldr r2, [r4]
	mvn r0, r5, lsl r8
	ldrh r1, [r2, #4]
	mov r0, r0, lsl #0x10
	mov r3, r5, lsl r8
	and r0, r1, r0, lsr #16
	strh r0, [r2, #4]
	ldr r2, [r4]
	mov r0, r3, lsl #0x10
	ldrh r1, [r2, #6]
	orr r0, r1, r0, lsr #16
	strh r0, [r2, #6]
	bl FUN_ov17_0210a414
	cmp r0, #3
	ldmnefd sp!, {r4, r5, r6, r7, r8, pc}
	mov r0, r8
	bl FUN_ov17_02109d7c
	ldmfd sp!, {r4, r5, r6, r7, r8, pc}
_0210A2F8:
	ldr r2, [r4]
	mvn r0, r5, lsl r8
	ldrh r1, [r2, #8]
	mov r0, r0, lsl #0x10
	mov r3, r5, lsl r8
	and r0, r1, r0, lsr #16
	strh r0, [r2, #8]
	ldr r2, [r4]
	mov r0, r3, lsl #0x10
	ldrh r1, [r2, #0xa]
	orr r0, r1, r0, lsr #16
	strh r0, [r2, #0xa]
	ldmfd sp!, {r4, r5, r6, r7, r8, pc}
_0210A32C:
	ldr r2, [r4]
	mvn r0, r5, lsl r8
	ldrh r1, [r2, #0xa]
	mov r0, r0, lsl #0x10
	mov r3, r5, lsl r8
	and r0, r1, r0, lsr #16
	strh r0, [r2, #0xa]
	ldr r2, [r4]
	mov r0, r3, lsl #0x10
	ldrh r1, [r2, #0xc]
	orr r0, r1, r0, lsr #16
	strh r0, [r2, #0xc]
	bl FUN_ov17_0210a0b4
	ldmfd sp!, {r4, r5, r6, r7, r8, pc}
_0210A364:
	bl FUN_ov17_0210a414
	cmp r0, #4
	bne _0210A378
	mov r0, #5
	b _0210A37C
_0210A378:
	mov r0, #0
_0210A37C:
	bl FUN_ov17_0210a400
	ldr r0, [r4]
	add r0, r0, #0x1b000
	ldr r1, [r0, #0x144]
	cmp r1, #0
	movne r1, #0
	strne r1, [r0, #0x144]
	ldr r0, [r4]
	add r0, r0, #0x1b000
	ldr r1, [r0, #0x140]
	cmp r1, #0
	movne r1, #0
	strne r1, [r0, #0x140]
	ldmfd sp!, {r4, r5, r6, r7, r8, pc}
_0210A3B4:
	ldrh r0, [r7]
	cmp r0, #8
	bgt _0210A3E0
	ldmgefd sp!, {r4, r5, r6, r7, r8, pc}
	cmp r0, #2
	ldmgtfd sp!, {r4, r5, r6, r7, r8, pc}
	cmp r0, #1
	ldmltfd sp!, {r4, r5, r6, r7, r8, pc}
	cmpne r0, #2
	beq _0210A3E8
	ldmfd sp!, {r4, r5, r6, r7, r8, pc}
_0210A3E0:
	cmp r0, #9
	ldmnefd sp!, {r4, r5, r6, r7, r8, pc}
_0210A3E8:
	mov r0, #7
	bl FUN_ov17_0210a400
	ldmfd sp!, {r4, r5, r6, r7, r8, pc}
_0210A3F4:
	bl FUN_02004160
	ldmfd sp!, {r4, r5, r6, r7, r8, pc}
_0210A3FC: .word 0x021162BC
	arm_func_end FUN_ov17_0210a0e4

	arm_func_start FUN_ov17_0210a400
FUN_ov17_0210a400: ; 0x0210A400
	ldr r1, _0210A410 ; =0x021162BC
	ldr r1, [r1]
	strh r0, [r1]
	bx lr
_0210A410: .word 0x021162BC
	arm_func_end FUN_ov17_0210a400

	arm_func_start FUN_ov17_0210a414
FUN_ov17_0210a414: ; 0x0210A414
	ldr r0, _0210A424 ; =0x021162BC
	ldr r0, [r0]
	ldrh r0, [r0]
	bx lr
_0210A424: .word 0x021162BC
	arm_func_end FUN_ov17_0210a414

	arm_func_start FUN_ov17_0210a428
FUN_ov17_0210a428: ; 0x0210A428
	ldr r2, _0210A474 ; =0x021162BC
	ldr r1, _0210A478 ; =0x02113644
	ldr r12, [r2]
	ldr r2, _0210A47C ; =0x02113644
	add r3, r12, #2
	str r3, [r1]
	add r3, r12, #4
	str r3, [r1, #4]
	add r3, r12, #6
	str r3, [r1, #8]
	add r3, r12, #8
	str r3, [r1, #0xc]
	add r3, r12, #0xa
	str r3, [r1, #0x10]
	add r3, r12, #0xc
	str r3, [r1, #0x14]
	ldr r0, [r2, r0, lsl #2]
	ldrh r0, [r0]
	bx lr
_0210A474: .word 0x021162BC
_0210A478: .word 0x02113644
_0210A47C: .word 0x02113644
	arm_func_end FUN_ov17_0210a428

	arm_func_start FUN_ov17_0210a480
FUN_ov17_0210a480: ; 0x0210A480
	stmfd sp!, {r4, r5, r6, lr}
	sub sp, sp, #0x10
	mov r5, r0
	bl OS_DisableInterrupts
	ldr r1, _0210A544 ; =0x021162BC
	mov r4, #1
	ldr r2, [r1]
	mov r3, r4, lsl r5
	ldrh r1, [r2, #2]
	mov r5, r3, lsl #0x10
	mov r6, r0
	tst r1, r5, lsr #16
	bne _0210A4C4
	bl OS_RestoreInterrupts
	add sp, sp, #0x10
	mov r0, #0
	ldmfd sp!, {r4, r5, r6, pc}
_0210A4C4:
	mov r0, r2
	add r1, sp, #0
	mov r2, #0xe
	bl MI_CpuCopy8
	mov r0, r6
	bl OS_RestoreInterrupts
	ldrh r0, [sp, #4]
	tst r0, r5, lsr #16
	addne sp, sp, #0x10
	movne r0, #2
	ldmnefd sp!, {r4, r5, r6, pc}
	ldrh r0, [sp, #6]
	tst r0, r5, lsr #16
	addne sp, sp, #0x10
	movne r0, #3
	ldmnefd sp!, {r4, r5, r6, pc}
	ldrh r0, [sp, #8]
	tst r0, r5, lsr #16
	addne sp, sp, #0x10
	movne r0, #4
	ldmnefd sp!, {r4, r5, r6, pc}
	ldrh r0, [sp, #0xa]
	tst r0, r5, lsr #16
	addne sp, sp, #0x10
	movne r0, #5
	ldmnefd sp!, {r4, r5, r6, pc}
	ldrh r0, [sp, #0xc]
	tst r0, r5, lsr #16
	movne r4, #6
	mov r0, r4
	add sp, sp, #0x10
	ldmfd sp!, {r4, r5, r6, pc}
_0210A544: .word 0x021162BC
	arm_func_end FUN_ov17_0210a480

	arm_func_start FUN_ov17_0210a548
FUN_ov17_0210a548: ; 0x0210A548
	ldr r1, _0210A574 ; =0x021162BC
	mov r2, #1
	ldr r3, [r1]
	ldrh r1, [r3, #2]
	tst r1, r2, lsl r0
	subne r1, r0, #1
	addne r2, r3, #0xe
	movne r0, #0x1e
	mlane r0, r1, r0, r2
	moveq r0, #0
	bx lr
_0210A574: .word 0x021162BC
	arm_func_end FUN_ov17_0210a548

	arm_func_start FUN_ov17_0210a578
FUN_ov17_0210a578: ; 0x0210A578
	stmfd sp!, {r4, r5, r6, r7, r8, lr}
	ldr r1, _0210A61C ; =0x021162BC
	mov lr, #1
	ldr r5, [r1]
	mov r12, lr
	ldrh r4, [r5, #2]
	add r1, r5, #0x24
	mov r6, #0x1e
_0210A598:
	tst r4, r12, lsl lr
	beq _0210A600
	sub r2, lr, #1
	mul r3, r2, r6
	ldrb r8, [r0]
	ldrb r7, [r1, r3]
	add r2, r1, r3
	cmp r8, r7
	ldreqb r8, [r0, #1]
	ldreqb r7, [r2, #1]
	cmpeq r8, r7
	ldreqb r8, [r0, #2]
	ldreqb r7, [r2, #2]
	cmpeq r8, r7
	ldreqb r8, [r0, #3]
	ldreqb r7, [r2, #3]
	cmpeq r8, r7
	ldreqb r8, [r0, #4]
	ldreqb r7, [r2, #4]
	cmpeq r8, r7
	ldreqb r7, [r0, #5]
	ldreqb r2, [r2, #5]
	cmpeq r7, r2
	addeq r0, r5, r3
	ldreqh r0, [r0, #0x2a]
	ldmeqfd sp!, {r4, r5, r6, r7, r8, pc}
_0210A600:
	add r2, lr, #1
	mov r2, r2, lsl #0x10
	mov lr, r2, lsr #0x10
	cmp lr, #2
	blo _0210A598
	mov r0, #0
	ldmfd sp!, {r4, r5, r6, r7, r8, pc}
_0210A61C: .word 0x021162BC
	arm_func_end FUN_ov17_0210a578

	arm_func_start FUN_ov17_0210a620
FUN_ov17_0210a620: ; 0x0210A620
	ldr r1, _0210A658 ; =0x021162C0
	mov r2, #0
	str r0, [r1, #4]
	str r2, [r0, #0x40]
	ldr r0, [r1, #4]
	add r0, r0, #0x1000
	str r2, [r0, #0x3a8]
	ldr r0, [r1, #4]
	add r0, r0, #0x1000
	str r2, [r0, #0x3ac]
	ldr r0, [r1, #4]
	add r0, r0, #0x1000
	str r2, [r0, #0x3b0]
	bx lr
_0210A658: .word 0x021162C0
	arm_func_end FUN_ov17_0210a620

	arm_func_start FUN_ov17_0210a65c
FUN_ov17_0210a65c: ; 0x0210A65C
	stmfd sp!, {r4, lr}
	ldr r1, _0210A6C8 ; =0x021162C0
	mov r4, r0
	ldr r3, [r1]
	cmp r3, #0
	beq _0210A690
	ldr r1, [r1, #4]
	ldr r0, _0210A6CC ; =0x021139FC
	ldr r2, [r1, #0x40]
	ldr r1, _0210A6D0 ; =0x02113A24
	ldr r2, [r0, r2, lsl #2]
	mov r0, #0x8000000
	blx r3
_0210A690:
	ldr r0, _0210A6C8 ; =0x021162C0
	ldr r1, [r0, #4]
	str r4, [r1, #0x40]
	ldr r3, [r0]
	cmp r3, #0
	ldmeqfd sp!, {r4, pc}
	ldr r1, [r0, #4]
	ldr r0, _0210A6CC ; =0x021139FC
	ldr r2, [r1, #0x40]
	ldr r1, _0210A6D4 ; =0x02113A2C
	ldr r2, [r0, r2, lsl #2]
	mov r0, #0x8000000
	blx r3
	ldmfd sp!, {r4, pc}
_0210A6C8: .word 0x021162C0
_0210A6CC: .word 0x021139FC
_0210A6D0: .word 0x02113A24
_0210A6D4: .word 0x02113A2C
	arm_func_end FUN_ov17_0210a65c

	arm_func_start FUN_ov17_0210a6d8
FUN_ov17_0210a6d8: ; 0x0210A6D8
	ldr r1, _0210A6F4 ; =0x021162C0
	ldr r2, [r1, #4]
	ldr r1, [r2, #0x40]
	sub r1, r1, #9
	cmp r1, #1
	strhi r0, [r2, #0x54]
	bx lr
_0210A6F4: .word 0x021162C0
	arm_func_end FUN_ov17_0210a6d8

	arm_func_start FUN_ov17_0210a6f8
FUN_ov17_0210a6f8: ; 0x0210A6F8
	stmfd sp!, {r3, lr}
	mov r0, #3
	bl FUN_ov17_0210a65c
	ldr r1, _0210A734 ; =0x021162C0
	ldr r0, _0210A738 ; =FUN_ov17_0210a73c
	ldr r1, [r1, #4]
	bl FUN_020131ac
	cmp r0, #2
	moveq r0, #1
	ldmeqfd sp!, {r3, pc}
	bl FUN_ov17_0210a6d8
	mov r0, #9
	bl FUN_ov17_0210a65c
	mov r0, #0
	ldmfd sp!, {r3, pc}
_0210A734: .word 0x021162C0
_0210A738: .word FUN_ov17_0210a73c
	arm_func_end FUN_ov17_0210a6f8

	arm_func_start FUN_ov17_0210a73c
FUN_ov17_0210a73c: ; 0x0210A73C
	stmfd sp!, {r3, lr}
	ldrh r0, [r0, #2]
	cmp r0, #0
	beq _0210A75C
	bl FUN_ov17_0210a6d8
	mov r0, #9
	bl FUN_ov17_0210a65c
	ldmfd sp!, {r3, pc}
_0210A75C:
	ldr r0, _0210A7A4 ; =0x021162C0
	ldr r0, [r0, #4]
	add r0, r0, #0x1000
	ldr r0, [r0, #0x3ac]
	cmp r0, #0
	beq _0210A78C
	bl FUN_ov17_0210a7a8
	cmp r0, #0
	ldmnefd sp!, {r3, pc}
	mov r0, #9
	bl FUN_ov17_0210a65c
	ldmfd sp!, {r3, pc}
_0210A78C:
	bl FUN_ov17_0210a840
	cmp r0, #0
	ldmnefd sp!, {r3, pc}
	mov r0, #9
	bl FUN_ov17_0210a65c
	ldmfd sp!, {r3, pc}
_0210A7A4: .word 0x021162C0
	arm_func_end FUN_ov17_0210a73c

	arm_func_start FUN_ov17_0210a7a8
FUN_ov17_0210a7a8: ; 0x0210A7A8
	stmfd sp!, {r4, lr}
	mov r0, #3
	bl FUN_ov17_0210a65c
	ldr r4, _0210A800 ; =0x021162C0
	ldr r1, [r4, #4]
	add r0, r1, #0x1000
	ldr r2, [r0, #0x3ac]
	add r0, r1, #0x13c0
	blx r2
	ldr r2, [r4, #4]
	mov r1, r0
	ldr r0, _0210A804 ; =FUN_ov17_0210a808
	add r2, r2, #0x13c0
	bl FUN_0201498c
	cmp r0, #2
	moveq r0, #1
	ldmeqfd sp!, {r4, pc}
	bl FUN_ov17_0210a6d8
	mov r0, #9
	bl FUN_ov17_0210a65c
	mov r0, #0
	ldmfd sp!, {r4, pc}
_0210A800: .word 0x021162C0
_0210A804: .word FUN_ov17_0210a808
	arm_func_end FUN_ov17_0210a7a8

	arm_func_start FUN_ov17_0210a808
FUN_ov17_0210a808: ; 0x0210A808
	stmfd sp!, {r3, lr}
	ldrh r0, [r0, #2]
	cmp r0, #0
	beq _0210A828
	bl FUN_ov17_0210a6d8
	mov r0, #9
	bl FUN_ov17_0210a65c
	ldmfd sp!, {r3, pc}
_0210A828:
	bl FUN_ov17_0210a840
	cmp r0, #0
	ldmnefd sp!, {r3, pc}
	mov r0, #9
	bl FUN_ov17_0210a65c
	ldmfd sp!, {r3, pc}
	arm_func_end FUN_ov17_0210a808

	arm_func_start FUN_ov17_0210a840
FUN_ov17_0210a840: ; 0x0210A840
	stmfd sp!, {r4, lr}
	ldr r4, _0210A898 ; =0x021162C0
	ldr r0, [r4, #4]
	ldr r0, [r0, #0x40]
	sub r0, r0, #4
	cmp r0, #2
	movls r0, #1
	ldmlsfd sp!, {r4, pc}
	ldr r0, _0210A89C ; =FUN_ov17_0210a8a0
	bl FUN_02013340
	cmp r0, #2
	beq _0210A87C
	bl FUN_ov17_0210a6d8
	mov r0, #0
	ldmfd sp!, {r4, pc}
_0210A87C:
	ldr r0, [r4, #4]
	mov r1, #0
	strh r1, [r0, #0x50]
	ldr r1, [r4, #4]
	mov r0, #1
	strh r0, [r1, #0x52]
	ldmfd sp!, {r4, pc}
_0210A898: .word 0x021162C0
_0210A89C: .word FUN_ov17_0210a8a0
	arm_func_end FUN_ov17_0210a840

	arm_func_start FUN_ov17_0210a8a0
FUN_ov17_0210a8a0: ; 0x0210A8A0
	stmfd sp!, {r4, r5, r6, lr}
	mov r4, r0
	ldrh r2, [r4, #0x10]
	ldrh r0, [r4, #2]
	mov r1, #1
	mov r1, r1, lsl r2
	cmp r0, #0
	mov r5, r1, lsl #0x10
	ldr r6, _0210A9F0 ; =0x021162C0
	beq _0210A8D8
	bl FUN_ov17_0210a6d8
	mov r0, #9
	bl FUN_ov17_0210a65c
	ldmfd sp!, {r4, r5, r6, pc}
_0210A8D8:
	ldrh r0, [r4, #8]
	cmp r0, #7
	bgt _0210A908
	bge _0210A914
	cmp r0, #2
	bgt _0210A9D0
	cmp r0, #0
	blt _0210A9D0
	beq _0210A9B8
	cmp r0, #2
	ldmeqfd sp!, {r4, r5, r6, pc}
	b _0210A9D0
_0210A908:
	cmp r0, #9
	beq _0210A984
	b _0210A9D0
_0210A914:
	ldr r3, [r6]
	cmp r3, #0
	beq _0210A92C
	ldr r1, _0210A9F4 ; =0x02113A30
	mov r0, #0x8000000
	blx r3
_0210A92C:
	ldr r0, [r6, #4]
	ldr r1, [r0, #0x4c]
	cmp r1, #0
	beq _0210A970
	mov r0, r4
	blx r1
	cmp r0, #0
	bne _0210A970
	ldrh r1, [r4, #0x10]
	mov r0, #0
	bl FUN_020135f4
	cmp r0, #2
	ldmeqfd sp!, {r4, r5, r6, pc}
	bl FUN_ov17_0210a6d8
	mov r0, #9
	bl FUN_ov17_0210a65c
	ldmfd sp!, {r4, r5, r6, pc}
_0210A970:
	ldr r1, [r6, #4]
	ldrh r0, [r1, #0x52]
	orr r0, r0, r5, lsr #16
	strh r0, [r1, #0x52]
	ldmfd sp!, {r4, r5, r6, pc}
_0210A984:
	ldr r3, [r6]
	cmp r3, #0
	beq _0210A99C
	ldr r1, _0210A9F8 ; =0x02113A5C
	mov r0, #0x8000000
	blx r3
_0210A99C:
	ldr r2, [r6, #4]
	mvn r0, r5, lsr #16
	ldrh r1, [r2, #0x52]
	mov r0, r0, lsl #0x10
	and r0, r1, r0, lsr #16
	strh r0, [r2, #0x52]
	ldmfd sp!, {r4, r5, r6, pc}
_0210A9B8:
	bl FUN_ov17_0210aa00
	cmp r0, #0
	ldmnefd sp!, {r4, r5, r6, pc}
	mov r0, #9
	bl FUN_ov17_0210a65c
	ldmfd sp!, {r4, r5, r6, pc}
_0210A9D0:
	ldr r3, [r6]
	cmp r3, #0
	ldmeqfd sp!, {r4, r5, r6, pc}
	ldr r1, _0210A9FC ; =0x02113A88
	mov r2, r0
	mov r0, #0x8000000
	blx r3
	ldmfd sp!, {r4, r5, r6, pc}
_0210A9F0: .word 0x021162C0
_0210A9F4: .word 0x02113A30
_0210A9F8: .word 0x02113A5C
_0210A9FC: .word 0x02113A88
	arm_func_end FUN_ov17_0210a8a0

	arm_func_start FUN_ov17_0210aa00
FUN_ov17_0210aa00: ; 0x0210AA00
	stmfd sp!, {r4, lr}
	sub sp, sp, #8
	ldr r4, _0210AA8C ; =0x021162C0
	ldr r0, [r4, #4]
	ldr r0, [r0, #0x40]
	sub r0, r0, #4
	cmp r0, #2
	addls sp, sp, #8
	movls r0, #1
	ldmlsfd sp!, {r4, pc}
	mov r0, #4
	bl FUN_ov17_0210a65c
	ldr r3, [r4, #4]
	mov r4, #1
	add r2, r3, #0x1000
	ldr r0, [r2, #0x2a0]
	add r1, r3, #0x60
	mov r0, r0, lsl #0x10
	mov r0, r0, lsr #0x10
	stmia sp, {r0, r4}
	ldr r2, [r2, #0x2a4]
	ldr r0, _0210AA90 ; =FUN_ov17_0210aa94
	mov r2, r2, lsl #0x10
	add r1, r1, #0x1000
	mov r2, r2, lsr #0x10
	add r3, r3, #0xf80
	bl FUN_02013908
	cmp r0, #2
	addeq sp, sp, #8
	moveq r0, r4
	ldmeqfd sp!, {r4, pc}
	bl FUN_ov17_0210a6d8
	mov r0, #0
	add sp, sp, #8
	ldmfd sp!, {r4, pc}
_0210AA8C: .word 0x021162C0
_0210AA90: .word FUN_ov17_0210aa94
	arm_func_end FUN_ov17_0210aa00

	arm_func_start FUN_ov17_0210aa94
FUN_ov17_0210aa94: ; 0x0210AA94
	stmfd sp!, {r3, r4, lr}
	sub sp, sp, #4
	ldrh r1, [r0, #2]
	cmp r1, #0
	beq _0210AAC0
	mov r0, r1
	bl FUN_ov17_0210a6d8
	mov r0, #9
	bl FUN_ov17_0210a65c
	add sp, sp, #4
	ldmfd sp!, {r3, r4, pc}
_0210AAC0:
	ldrh r2, [r0, #4]
	sub r0, r2, #0xa
	cmp r0, #3
	addls pc, pc, r0, lsl #2
	b _0210ABB0
_0210AAD4: ; jump table
	b _0210AAE4 ; case 0
	b _0210ABD0 ; case 1
	b _0210ABB0 ; case 2
	b _0210ABB0 ; case 3
_0210AAE4:
	ldr r4, _0210ABD8 ; =0x021162C0
	ldr r1, [r4, #4]
	ldr r0, [r1, #0x44]
	cmp r0, #2
	bne _0210AB4C
	ldr r0, [r1, #0x40]
	cmp r0, #4
	bne _0210AB3C
	bl FUN_ov17_0210abe4
	cmp r0, #0
	addne sp, sp, #4
	ldmnefd sp!, {r3, r4, pc}
	ldr r2, [r4]
	cmp r2, #0
	beq _0210AB2C
	ldr r1, _0210ABDC ; =0x02113AA8
	mov r0, #0x8000000
	blx r2
_0210AB2C:
	mov r0, #9
	bl FUN_ov17_0210a65c
	add sp, sp, #4
	ldmfd sp!, {r3, r4, pc}
_0210AB3C:
	cmp r0, #6
	bne _0210ABA0
	add sp, sp, #4
	ldmfd sp!, {r3, r4, pc}
_0210AB4C:
	cmp r0, #4
	bne _0210ABA0
	add r0, r1, #0x3e0
	mov r4, #1
	add r0, r0, #0x1000
	mov r1, #0xd
	mov r2, #7
	mov r3, #0x44
	str r4, [sp]
	bl FUN_02013e14
	cmp r0, #0
	beq _0210AB90
	bl FUN_ov17_0210a6d8
	mov r0, #9
	bl FUN_ov17_0210a65c
	add sp, sp, #4
	ldmfd sp!, {r3, r4, pc}
_0210AB90:
	mov r0, #5
	bl FUN_ov17_0210a65c
	add sp, sp, #4
	ldmfd sp!, {r3, r4, pc}
_0210ABA0:
	mov r0, #4
	bl FUN_ov17_0210a65c
	add sp, sp, #4
	ldmfd sp!, {r3, r4, pc}
_0210ABB0:
	ldr r0, _0210ABD8 ; =0x021162C0
	ldr r3, [r0]
	cmp r3, #0
	addeq sp, sp, #4
	ldmeqfd sp!, {r3, r4, pc}
	ldr r1, _0210ABE0 ; =0x02113A88
	mov r0, #0x8000000
	blx r3
_0210ABD0:
	add sp, sp, #4
	ldmfd sp!, {r3, r4, pc}
_0210ABD8: .word 0x021162C0
_0210ABDC: .word 0x02113AA8
_0210ABE0: .word 0x02113A88
	arm_func_end FUN_ov17_0210aa94

	arm_func_start FUN_ov17_0210abe4
FUN_ov17_0210abe4: ; 0x0210ABE4
	stmfd sp!, {r3, lr}
	mov r0, #6
	bl FUN_ov17_0210a65c
	ldr r0, _0210AC1C ; =0x021162C0
	mov r1, #0xd
	ldr r0, [r0, #4]
	add r0, r0, #0x1e00
	bl FUN_02014964
	cmp r0, #2
	moveq r0, #1
	ldmeqfd sp!, {r3, pc}
	bl FUN_ov17_0210a6d8
	mov r0, #0
	ldmfd sp!, {r3, pc}
_0210AC1C: .word 0x021162C0
	arm_func_end FUN_ov17_0210abe4

	arm_func_start FUN_ov17_0210ac20
FUN_ov17_0210ac20: ; 0x0210AC20
	stmfd sp!, {r3, lr}
	ldr r0, _0210AC4C ; =0x021162C0
	ldr r0, [r0, #4]
	add r0, r0, #0x1e00
	bl FUN_02014980
	cmp r0, #2
	moveq r0, #1
	ldmeqfd sp!, {r3, pc}
	bl FUN_ov17_0210a6d8
	mov r0, #0
	ldmfd sp!, {r3, pc}
_0210AC4C: .word 0x021162C0
	arm_func_end FUN_ov17_0210ac20

	arm_func_start FUN_ov17_0210ac50
FUN_ov17_0210ac50: ; 0x0210AC50
	stmfd sp!, {r3, lr}
	mov r0, #3
	bl FUN_ov17_0210a65c
	ldr r0, _0210AC7C ; =FUN_ov17_0210ac80
	bl FUN_02013bb4
	cmp r0, #2
	moveq r0, #1
	ldmeqfd sp!, {r3, pc}
	bl FUN_ov17_0210a6d8
	mov r0, #0
	ldmfd sp!, {r3, pc}
_0210AC7C: .word FUN_ov17_0210ac80
	arm_func_end FUN_ov17_0210ac50

	arm_func_start FUN_ov17_0210ac80
FUN_ov17_0210ac80: ; 0x0210AC80
	stmfd sp!, {r3, lr}
	ldrh r0, [r0, #2]
	cmp r0, #0
	beq _0210AC9C
	bl FUN_ov17_0210a6d8
	bl FUN_ov17_0210b638
	ldmfd sp!, {r3, pc}
_0210AC9C:
	bl FUN_ov17_0210acd4
	cmp r0, #0
	ldmnefd sp!, {r3, pc}
	ldr r0, _0210ACCC ; =0x021162C0
	ldr r2, [r0]
	cmp r2, #0
	beq _0210ACC4
	ldr r1, _0210ACD0 ; =0x02113AD8
	mov r0, #0x8000000
	blx r2
_0210ACC4:
	bl FUN_ov17_0210b638
	ldmfd sp!, {r3, pc}
_0210ACCC: .word 0x021162C0
_0210ACD0: .word 0x02113AD8
	arm_func_end FUN_ov17_0210ac80

	arm_func_start FUN_ov17_0210acd4
FUN_ov17_0210acd4: ; 0x0210ACD4
	stmfd sp!, {r3, lr}
	ldr r0, _0210ACF8 ; =FUN_ov17_0210acfc
	bl FUN_02013350
	cmp r0, #2
	moveq r0, #1
	ldmeqfd sp!, {r3, pc}
	bl FUN_ov17_0210a6d8
	mov r0, #0
	ldmfd sp!, {r3, pc}
_0210ACF8: .word FUN_ov17_0210acfc
	arm_func_end FUN_ov17_0210acd4

	arm_func_start FUN_ov17_0210acfc
FUN_ov17_0210acfc: ; 0x0210ACFC
	stmfd sp!, {r3, lr}
	ldrh r0, [r0, #2]
	cmp r0, #0
	beq _0210AD14
	bl FUN_ov17_0210a6d8
	ldmfd sp!, {r3, pc}
_0210AD14:
	mov r0, #1
	bl FUN_ov17_0210a65c
	ldmfd sp!, {r3, pc}
	arm_func_end FUN_ov17_0210acfc

	arm_func_start FUN_ov17_0210ad20
FUN_ov17_0210ad20: ; 0x0210AD20
	stmfd sp!, {r4, lr}
	ldr r4, _0210AD68 ; =0x021162C0
	ldr r0, [r4, #4]
	ldr r0, [r0, #0x40]
	cmp r0, #6
	movne r0, #0
	ldmnefd sp!, {r4, pc}
	mov r0, #3
	bl FUN_ov17_0210a65c
	ldr r0, [r4, #4]
	add r0, r0, #0x1e00
	bl FUN_02014980
	cmp r0, #2
	moveq r0, #1
	ldmeqfd sp!, {r4, pc}
	bl FUN_ov17_0210a6d8
	mov r0, #0
	ldmfd sp!, {r4, pc}
_0210AD68: .word 0x021162C0
	arm_func_end FUN_ov17_0210ad20

	arm_func_start FUN_ov17_0210ad6c
FUN_ov17_0210ad6c: ; 0x0210AD6C
	stmfd sp!, {r3, lr}
	mov r0, #3
	bl FUN_ov17_0210a65c
	ldr r0, _0210AD98 ; =FUN_ov17_0210ad9c
	bl FUN_02013bb4
	cmp r0, #2
	moveq r0, #1
	ldmeqfd sp!, {r3, pc}
	bl FUN_ov17_0210a6d8
	mov r0, #0
	ldmfd sp!, {r3, pc}
_0210AD98: .word FUN_ov17_0210ad9c
	arm_func_end FUN_ov17_0210ad6c

	arm_func_start FUN_ov17_0210ad9c
FUN_ov17_0210ad9c: ; 0x0210AD9C
	stmfd sp!, {r3, lr}
	ldrh r0, [r0, #2]
	cmp r0, #0
	beq _0210ADB8
	bl FUN_ov17_0210a6d8
	bl FUN_ov17_0210b654
	ldmfd sp!, {r3, pc}
_0210ADB8:
	bl FUN_ov17_0210add0
	cmp r0, #0
	ldmnefd sp!, {r3, pc}
	mov r0, #9
	bl FUN_ov17_0210a65c
	ldmfd sp!, {r3, pc}
	arm_func_end FUN_ov17_0210ad9c

	arm_func_start FUN_ov17_0210add0
FUN_ov17_0210add0: ; 0x0210ADD0
	stmfd sp!, {r4, lr}
	mov r0, #3
	bl FUN_ov17_0210a65c
	mov r4, #0
	ldr r0, _0210AE08 ; =FUN_ov17_0210ae0c
	mov r1, r4
	bl FUN_020135f4
	cmp r0, #2
	moveq r0, #1
	ldmeqfd sp!, {r4, pc}
	bl FUN_ov17_0210a6d8
	bl FUN_ov17_0210b638
	mov r0, r4
	ldmfd sp!, {r4, pc}
_0210AE08: .word FUN_ov17_0210ae0c
	arm_func_end FUN_ov17_0210add0

	arm_func_start FUN_ov17_0210ae0c
FUN_ov17_0210ae0c: ; 0x0210AE0C
	stmfd sp!, {r3, lr}
	ldrh r0, [r0, #2]
	cmp r0, #0
	beq _0210AE24
	bl FUN_ov17_0210a6d8
	ldmfd sp!, {r3, pc}
_0210AE24:
	mov r0, #1
	bl FUN_ov17_0210a65c
	ldmfd sp!, {r3, pc}
	arm_func_end FUN_ov17_0210ae0c

	arm_func_start FUN_ov17_0210ae30
FUN_ov17_0210ae30: ; 0x0210AE30
	stmfd sp!, {r3, lr}
	mov r0, #3
	bl FUN_ov17_0210a65c
	ldr r0, _0210AE5C ; =FUN_ov17_0210ae60
	bl FUN_0201312c
	cmp r0, #2
	moveq r0, #1
	ldmeqfd sp!, {r3, pc}
	bl FUN_ov17_0210a6d8
	mov r0, #0
	ldmfd sp!, {r3, pc}
_0210AE5C: .word FUN_ov17_0210ae60
	arm_func_end FUN_ov17_0210ae30

	arm_func_start FUN_ov17_0210ae60
FUN_ov17_0210ae60: ; 0x0210AE60
	stmfd sp!, {r4, lr}
	mov r4, r0
	ldrh r0, [r4, #2]
	cmp r0, #0
	beq _0210AE88
	mov r0, #9
	bl FUN_ov17_0210a65c
	ldrh r0, [r4, #2]
	bl FUN_ov17_0210a6d8
	ldmfd sp!, {r4, pc}
_0210AE88:
	mov r0, #1
	bl FUN_ov17_0210a65c
	ldmfd sp!, {r4, pc}
	arm_func_end FUN_ov17_0210ae60

	arm_func_start FUN_ov17_0210ae94
FUN_ov17_0210ae94: ; 0x0210AE94
	stmfd sp!, {r3, lr}
	ldrh r0, [r0, #2]
	cmp r0, #0
	beq _0210AEB0
	mov r0, #0xa
	bl FUN_ov17_0210a65c
	ldmfd sp!, {r3, pc}
_0210AEB0:
	mov r0, #0
	bl FUN_ov17_0210a65c
	ldmfd sp!, {r3, pc}
	arm_func_end FUN_ov17_0210ae94

	arm_func_start FUN_ov17_0210aebc
FUN_ov17_0210aebc: ; 0x0210AEBC
	ldr r1, _0210AECC ; =0x021162C0
	ldr r1, [r1, #4]
	str r0, [r1, #8]
	bx lr
_0210AECC: .word 0x021162C0
	arm_func_end FUN_ov17_0210aebc

	arm_func_start FUN_ov17_0210aed0
FUN_ov17_0210aed0: ; 0x0210AED0
	ldr r0, _0210AEE0 ; =0x021162C0
	ldr r0, [r0, #4]
	ldrh r0, [r0, #0x52]
	bx lr
_0210AEE0: .word 0x021162C0
	arm_func_end FUN_ov17_0210aed0

	arm_func_start FUN_ov17_0210aee4
FUN_ov17_0210aee4: ; 0x0210AEE4
	ldr r0, _0210AEF4 ; =0x021162C0
	ldr r0, [r0, #4]
	ldr r0, [r0, #0x40]
	bx lr
_0210AEF4: .word 0x021162C0
	arm_func_end FUN_ov17_0210aee4

	arm_func_start FUN_ov17_0210aef8
FUN_ov17_0210aef8: ; 0x0210AEF8
	stmfd sp!, {r3, r4, r5, lr}
	sub sp, sp, #8
	add r0, sp, #0
	bl FUN_02003f38
	ldr r2, _0210AFC8 ; =0x02FFFC3C
	ldrh r0, [sp]
	ldr r3, [r2]
	ldrh r2, [sp, #2]
	add r0, r0, r3
	ldr r1, _0210AFCC ; =0x021162C0
	add r2, r2, r0
	ldrh r3, [sp, #4]
	ldr r0, [r1, #4]
	mov r4, #0
	add r2, r3, r2
	str r2, [r0, #0x58]
	ldr r3, [r1, #4]
	ldr r0, _0210AFD0 ; =0x00010DCD
	ldr r2, [r3, #0x58]
	mul r0, r2, r0
	add r0, r0, #0x39
	add r0, r0, #0x3000
	str r0, [r3, #0x58]
	ldr r0, [r1, #4]
	mov r2, #0x65
	strh r4, [r0, #0x5c]
	ldr r1, [r1, #4]
	mov r0, #3
	strh r2, [r1, #0x5e]
	bl FUN_ov17_0210a65c
	mov r5, #1
	mov r0, r5
	bl FUN_ov17_0210afd4
	cmp r0, #0x18
	bne _0210AFA0
	mov r0, #0x18
	bl FUN_ov17_0210a6d8
	mov r0, #9
	bl FUN_ov17_0210a65c
	add sp, sp, #8
	mov r0, r4
	ldmfd sp!, {r3, r4, r5, pc}
_0210AFA0:
	cmp r0, #2
	addeq sp, sp, #8
	moveq r0, r5
	ldmeqfd sp!, {r3, r4, r5, pc}
	bl FUN_ov17_0210a6d8
	mov r0, #9
	bl FUN_ov17_0210a65c
	mov r0, r4
	add sp, sp, #8
	ldmfd sp!, {r3, r4, r5, pc}
_0210AFC8: .word 0x02FFFC3C
_0210AFCC: .word 0x021162C0
_0210AFD0: .word 0x00010DCD
	arm_func_end FUN_ov17_0210aef8

	arm_func_start FUN_ov17_0210afd4
FUN_ov17_0210afd4: ; 0x0210AFD4
	stmfd sp!, {r4, lr}
	mov r4, r0
	bl FUN_02012bc0
	cmp r0, #0x8000
	bne _0210B004
	mov r4, #3
	mov r0, r4
	bl FUN_ov17_0210a6d8
	mov r0, #9
	bl FUN_ov17_0210a65c
	mov r0, r4
	ldmfd sp!, {r4, pc}
_0210B004:
	cmp r0, #0
	bne _0210B024
	mov r0, #0x16
	bl FUN_ov17_0210a6d8
	mov r0, #9
	bl FUN_ov17_0210a65c
	mov r0, #0x18
	ldmfd sp!, {r4, pc}
_0210B024:
	sub r1, r4, #1
	mov r2, #1
	tst r0, r2, lsl r1
	bne _0210B058
_0210B034:
	add r1, r4, #1
	mov r1, r1, lsl #0x10
	mov r4, r1, lsr #0x10
	cmp r4, #0x10
	movhi r0, #0x18
	ldmhifd sp!, {r4, pc}
	sub r1, r4, #1
	tst r0, r2, lsl r1
	beq _0210B034
_0210B058:
	ldr r0, _0210B070 ; =FUN_ov17_0210b074
	mov r1, r4
	bl FUN_ov17_0210b154
	mov r0, r0, lsl #0x10
	mov r0, r0, lsr #0x10
	ldmfd sp!, {r4, pc}
_0210B070: .word FUN_ov17_0210b074
	arm_func_end FUN_ov17_0210afd4

	arm_func_start FUN_ov17_0210b074
FUN_ov17_0210b074: ; 0x0210B074
	stmfd sp!, {r4, lr}
	mov r4, r0
	ldrh r0, [r4, #2]
	cmp r0, #0
	beq _0210B098
	bl FUN_ov17_0210a6d8
	mov r0, #9
	bl FUN_ov17_0210a65c
	ldmfd sp!, {r4, pc}
_0210B098:
	ldr r0, _0210B14C ; =0x021162C0
	ldr r12, [r0]
	cmp r12, #0
	beq _0210B0BC
	ldrh r2, [r4, #8]
	ldrh r3, [r4, #0xa]
	ldr r1, _0210B150 ; =0x02113B30
	mov r0, #0x8000000
	blx r12
_0210B0BC:
	ldr r1, _0210B14C ; =0x021162C0
	ldrh r12, [r4, #0xa]
	ldr r3, [r1, #4]
	ldrh r0, [r4, #8]
	ldrh r2, [r3, #0x5e]
	cmp r2, r12
	bls _0210B0F4
	strh r12, [r3, #0x5e]
	sub r2, r0, #1
	mov r3, #1
	mov r2, r3, lsl r2
	ldr r1, [r1, #4]
	strh r2, [r1, #0x60]
	b _0210B114
_0210B0F4:
	bne _0210B114
	sub r1, r0, #1
	mov r2, #1
	mov r1, r2, lsl r1
	ldrh r2, [r3, #0x60]
	mov r1, r1, lsl #0x10
	orr r1, r2, r1, lsr #16
	strh r1, [r3, #0x60]
_0210B114:
	add r0, r0, #1
	mov r0, r0, lsl #0x10
	mov r0, r0, lsr #0x10
	bl FUN_ov17_0210afd4
	cmp r0, #0x18
	bne _0210B138
	mov r0, #7
	bl FUN_ov17_0210a65c
	ldmfd sp!, {r4, pc}
_0210B138:
	cmp r0, #2
	ldmeqfd sp!, {r4, pc}
	mov r0, #9
	bl FUN_ov17_0210a65c
	ldmfd sp!, {r4, pc}
_0210B14C: .word 0x021162C0
_0210B150: .word 0x02113B30
	arm_func_end FUN_ov17_0210b074

	arm_func_start FUN_ov17_0210b154
FUN_ov17_0210b154: ; 0x0210B154
	stmfd sp!, {r3, lr}
	mov r3, r1
	mov r12, #0x1e
	mov r1, #3
	mov r2, #0x11
	str r12, [sp]
	bl FUN_02014c18
	ldmfd sp!, {r3, pc}
	arm_func_end FUN_ov17_0210b154

	arm_func_start FUN_ov17_0210b174
FUN_ov17_0210b174: ; 0x0210B174
	stmfd sp!, {r4, lr}
	ldr r0, _0210B1E0 ; =0x021162C0
	ldr r0, [r0, #4]
	ldr r0, [r0, #0x40]
	cmp r0, #7
	beq _0210B190
	bl FUN_02004160
_0210B190:
	mov r0, #1
	bl FUN_ov17_0210a65c
	ldr r4, _0210B1E0 ; =0x021162C0
	ldr r0, [r4, #4]
	ldrh r0, [r0, #0x60]
	bl FUN_ov17_0210b1e8
	ldr r1, [r4, #4]
	strh r0, [r1, #0x5c]
	ldr r3, [r4]
	cmp r3, #0
	beq _0210B1D0
	ldr r0, [r4, #4]
	ldr r1, _0210B1E4 ; =0x02113B48
	ldrh r2, [r0, #0x5c]
	mov r0, #0x8000000
	blx r3
_0210B1D0:
	ldr r0, _0210B1E0 ; =0x021162C0
	ldr r0, [r0, #4]
	ldrh r0, [r0, #0x5c]
	ldmfd sp!, {r4, pc}
_0210B1E0: .word 0x021162C0
_0210B1E4: .word 0x02113B48
	arm_func_end FUN_ov17_0210b174

	arm_func_start FUN_ov17_0210b1e8
FUN_ov17_0210b1e8: ; 0x0210B1E8
	stmfd sp!, {r4, lr}
	mov r3, #0
	mov r1, r3
	mov r12, r3
	mov r4, #1
_0210B1FC:
	tst r0, r4, lsl r12
	beq _0210B21C
	add r3, r12, #1
	add r2, r1, #1
	mov r1, r3, lsl #0x10
	mov r2, r2, lsl #0x10
	mov r3, r1, asr #0x10
	mov r1, r2, lsr #0x10
_0210B21C:
	add r2, r12, #1
	mov r2, r2, lsl #0x10
	mov r12, r2, asr #0x10
	cmp r12, #0x10
	blt _0210B1FC
	cmp r1, #1
	movls r0, r3
	ldmlsfd sp!, {r4, pc}
	ldr r12, _0210B2C4 ; =0x021162C0
	ldr r3, _0210B2C8 ; =0x00010DCD
	ldr r4, [r12, #4]
	mov r2, #0
	ldr lr, [r4, #0x58]
	mul r3, lr, r3
	add r3, r3, #0x39
	add r3, r3, #0x3000
	str r3, [r4, #0x58]
	ldr r3, [r12, #4]
	ldr r3, [r3, #0x58]
	and r3, r3, #0xff
	mul r3, r1, r3
	mov r1, r3, lsl #8
	mov r3, r1, lsr #0x10
_0210B278:
	tst r0, #1
	beq _0210B2A0
	cmp r3, #0
	addeq r0, r2, #1
	moveq r0, r0, lsl #0x10
	moveq r0, r0, asr #0x10
	ldmeqfd sp!, {r4, pc}
	sub r1, r3, #1
	mov r1, r1, lsl #0x10
	mov r3, r1, lsr #0x10
_0210B2A0:
	add r1, r2, #1
	mov r1, r1, lsl #0x10
	mov r0, r0, lsl #0xf
	mov r2, r1, asr #0x10
	cmp r2, #0x10
	mov r0, r0, lsr #0x10
	blt _0210B278
	mov r0, #0
	ldmfd sp!, {r4, pc}
_0210B2C4: .word 0x021162C0
_0210B2C8: .word 0x00010DCD
	arm_func_end FUN_ov17_0210b1e8

	arm_func_start FUN_ov17_0210b2cc
FUN_ov17_0210b2cc: ; 0x0210B2CC
	stmfd sp!, {r3, r4, r5, lr}
	ldr r1, _0210B340 ; =0x021162C0
	mov r5, #0
	ldr r0, [r1, #4]
	mov r4, #1
	add r0, r0, #0x1000
	str r5, [r0, #0x2a4]
	ldr r0, [r1, #4]
	add r0, r0, #0x1000
	str r5, [r0, #0x2a0]
	ldr r0, [r1, #4]
	str r5, [r0, #0x48]
	ldr r0, [r1, #4]
	strh r5, [r0, #0x50]
	ldr r0, [r1, #4]
	strh r4, [r0, #0x52]
	ldr r0, [r1, #4]
	str r5, [r0, #0x54]
	ldr r0, [r1, #4]
	str r5, [r0]
	ldr r0, [r1, #4]
	strh r5, [r0, #4]
	ldr r0, [r1, #4]
	str r5, [r0, #0x4c]
	bl FUN_ov17_0210b364
	cmp r0, #0
	moveq r0, r5
	movne r0, r4
	ldmfd sp!, {r3, r4, r5, pc}
_0210B340: .word 0x021162C0
	arm_func_end FUN_ov17_0210b2cc

	arm_func_start FUN_ov17_0210b344
FUN_ov17_0210b344: ; 0x0210B344
	stmfd sp!, {r3, lr}
	ldrh r0, [r0, #2]
	cmp r0, #8
	ldmnefd sp!, {r3, pc}
	mov r0, #9
	bl FUN_ov17_0210a65c
	bl FUN_02004160
	ldmfd sp!, {r3, pc}
	arm_func_end FUN_ov17_0210b344

	arm_func_start FUN_ov17_0210b364
FUN_ov17_0210b364: ; 0x0210B364
	stmfd sp!, {r3, lr}
	mov r0, #3
	bl FUN_ov17_0210a65c
	ldr r0, _0210B3A8 ; =0x021162C0
	ldr r1, _0210B3AC ; =FUN_ov17_0210b3b0
	ldr r0, [r0, #4]
	mov r2, #2
	add r0, r0, #0x80
	bl FUN_020130b4
	cmp r0, #2
	moveq r0, #1
	ldmeqfd sp!, {r3, pc}
	bl FUN_ov17_0210a6d8
	mov r0, #0xa
	bl FUN_ov17_0210a65c
	mov r0, #0
	ldmfd sp!, {r3, pc}
_0210B3A8: .word 0x021162C0
_0210B3AC: .word FUN_ov17_0210b3b0
	arm_func_end FUN_ov17_0210b364

	arm_func_start FUN_ov17_0210b3b0
FUN_ov17_0210b3b0: ; 0x0210B3B0
	stmfd sp!, {r3, lr}
	ldrh r0, [r0, #2]
	cmp r0, #0
	beq _0210B3D0
	bl FUN_ov17_0210a6d8
	mov r0, #0xa
	bl FUN_ov17_0210a65c
	ldmfd sp!, {r3, pc}
_0210B3D0:
	ldr r0, _0210B3FC ; =FUN_ov17_0210b344
	bl FUN_02012828
	cmp r0, #0
	beq _0210B3F0
	bl FUN_ov17_0210a6d8
	mov r0, #0xa
	bl FUN_ov17_0210a65c
	ldmfd sp!, {r3, pc}
_0210B3F0:
	mov r0, #1
	bl FUN_ov17_0210a65c
	ldmfd sp!, {r3, pc}
_0210B3FC: .word FUN_ov17_0210b344
	arm_func_end FUN_ov17_0210b3b0

	arm_func_start FUN_ov17_0210b400
FUN_ov17_0210b400: ; 0x0210B400
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	ldr r4, _0210B54C ; =0x021162C0
	mov r7, r0
	ldr r0, [r4, #4]
	mov r6, r1
	ldr r0, [r0, #0x40]
	mov r5, r2
	cmp r0, #1
	beq _0210B428
	bl FUN_02004160
_0210B428:
	ldr r0, [r4, #4]
	mov r1, #0x180
	add r0, r0, #0x1000
	str r1, [r0, #0x2a4]
	ldr r0, [r4, #4]
	mov r1, #0xe0
	add r0, r0, #0x1000
	str r1, [r0, #0x2a0]
	ldr r3, [r4]
	cmp r3, #0
	beq _0210B46C
	ldr r0, [r4, #4]
	ldr r1, _0210B550 ; =0x02113B00
	add r0, r0, #0x1000
	ldr r2, [r0, #0x2a4]
	mov r0, #0x8000000
	blx r3
_0210B46C:
	ldr r3, [r4]
	cmp r3, #0
	beq _0210B490
	ldr r0, [r4, #4]
	ldr r1, _0210B554 ; =0x02113B18
	add r0, r0, #0x1000
	ldr r2, [r0, #0x2a0]
	mov r0, #0x8000000
	blx r3
_0210B490:
	ldr r1, [r4, #4]
	mov r0, #3
	str r7, [r1, #0x44]
	bl FUN_ov17_0210a65c
	ldr r0, [r4, #4]
	strh r6, [r0, #0xc]
	ldr r0, [r4, #4]
	strh r5, [r0, #0x32]
	bl FUN_02012c74
	ldr r1, [r4, #4]
	mov r2, #0xd0
	strh r0, [r1, #0x18]
	ldr r0, [r4, #4]
	mov r1, #0x44
	strh r2, [r0, #0x34]
	ldr r0, [r4, #4]
	mov r2, #2
	strh r1, [r0, #0x36]
	ldr r0, [r4, #4]
	mov r1, #0
	strh r2, [r0, #0x10]
	ldr r0, [r4, #4]
	mov r2, #1
	strh r1, [r0, #0x16]
	ldr r0, [r4, #4]
	cmp r7, #2
	strh r1, [r0, #0x12]
	ldr r0, [r4, #4]
	strh r2, [r0, #0xe]
	movne r2, r1
	ldr r0, [r4, #4]
	cmp r7, #0
	cmpne r7, #2
	strh r2, [r0, #0x14]
	cmpne r7, #4
	bne _0210B528
	bl FUN_ov17_0210a6f8
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_0210B528:
	ldr r3, [r4]
	cmp r3, #0
	beq _0210B544
	ldr r1, _0210B558 ; =0x02113B60
	mov r2, r7
	mov r0, #0x8000000
	blx r3
_0210B544:
	mov r0, #0
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_0210B54C: .word 0x021162C0
_0210B550: .word 0x02113B00
_0210B554: .word 0x02113B18
_0210B558: .word 0x02113B60
	arm_func_end FUN_ov17_0210b400

	arm_func_start FUN_ov17_0210b55c
FUN_ov17_0210b55c: ; 0x0210B55C
	ldr r1, _0210B56C ; =0x021162C0
	ldr r1, [r1, #4]
	str r0, [r1, #0x4c]
	bx lr
_0210B56C: .word 0x021162C0
	arm_func_end FUN_ov17_0210b55c

	arm_func_start FUN_ov17_0210b570
FUN_ov17_0210b570: ; 0x0210B570
	ldr r1, _0210B590 ; =0x021162C0
	mov r2, r0
	ldr r1, [r1, #4]
	ldr r12, _0210B594 ; =FUN_020148e0
	add r0, r1, #0x3e0
	add r0, r0, #0x1000
	add r1, r1, #0x1c00
	bx r12
_0210B590: .word 0x021162C0
_0210B594: .word FUN_020148e0
	arm_func_end FUN_ov17_0210b570

	arm_func_start FUN_ov17_0210b598
FUN_ov17_0210b598: ; 0x0210B598
	stmfd sp!, {r3, r4, r5, lr}
	ldr r4, _0210B62C ; =0x021162C0
	mov r1, r0
	ldr r2, [r4, #4]
	add r0, r2, #0x3e0
	add r0, r0, #0x1000
	add r2, r2, #0x1c00
	bl FUN_020140a0
	mov r5, r0
	cmp r5, #7
	bne _0210B5E4
	ldr r2, [r4]
	cmp r2, #0
	beq _0210B5DC
	ldr r1, _0210B630 ; =0x02113B7C
	mov r0, #0x8000000
	blx r2
_0210B5DC:
	mov r0, #0
	ldmfd sp!, {r3, r4, r5, pc}
_0210B5E4:
	cmp r5, #5
	bne _0210B614
	ldr r2, [r4]
	cmp r2, #0
	beq _0210B604
	ldr r1, _0210B634 ; =0x02113BAC
	mov r0, #0x8000000
	blx r2
_0210B604:
	mov r0, r5
	bl FUN_ov17_0210a6d8
	mov r0, #0
	ldmfd sp!, {r3, r4, r5, pc}
_0210B614:
	cmp r5, #0
	moveq r0, #1
	ldmeqfd sp!, {r3, r4, r5, pc}
	bl FUN_ov17_0210a6d8
	mov r0, #0
	ldmfd sp!, {r3, r4, r5, pc}
_0210B62C: .word 0x021162C0
_0210B630: .word 0x02113B7C
_0210B634: .word 0x02113BAC
	arm_func_end FUN_ov17_0210b598

	arm_func_start FUN_ov17_0210b638
FUN_ov17_0210b638: ; 0x0210B638
	stmfd sp!, {r3, lr}
	bl FUN_ov17_0210ae30
	cmp r0, #0
	ldmnefd sp!, {r3, pc}
	mov r0, #0xa
	bl FUN_ov17_0210a65c
	ldmfd sp!, {r3, pc}
	arm_func_end FUN_ov17_0210b638

	arm_func_start FUN_ov17_0210b654
FUN_ov17_0210b654: ; 0x0210B654
	stmfd sp!, {r3, lr}
	ldr r0, _0210B750 ; =0x021162C0
	ldr r1, [r0, #4]
	ldr r2, [r1, #0x40]
	cmp r2, #1
	bne _0210B688
	ldr r2, [r0]
	cmp r2, #0
	ldmeqfd sp!, {r3, pc}
	ldr r1, _0210B754 ; =0x02113BE0
	mov r0, #0x8000000
	blx r2
	ldmfd sp!, {r3, pc}
_0210B688:
	ldr r3, [r0]
	cmp r3, #0
	beq _0210B6A0
	ldr r1, _0210B758 ; =0x02113C04
	mov r0, #0x8000000
	blx r3
_0210B6A0:
	ldr r0, _0210B750 ; =0x021162C0
	ldr r0, [r0, #4]
	ldr r0, [r0, #0x40]
	cmp r0, #6
	cmpne r0, #5
	cmpne r0, #4
	mov r0, #3
	beq _0210B6CC
	bl FUN_ov17_0210a65c
	bl FUN_ov17_0210b638
	ldmfd sp!, {r3, pc}
_0210B6CC:
	bl FUN_ov17_0210a65c
	ldr r0, _0210B750 ; =0x021162C0
	ldr r0, [r0, #4]
	ldr r0, [r0, #0x44]
	cmp r0, #5
	addls pc, pc, r0, lsl #2
	ldmfd sp!, {r3, pc}
_0210B6E8: ; jump table
	b _0210B73C ; case 0
	b _0210B714 ; case 1
	b _0210B728 ; case 2
	b _0210B700 ; case 3
	b _0210B73C ; case 4
	b _0210B714 ; case 5
_0210B700:
	bl FUN_ov17_0210ad20
	cmp r0, #0
	ldmnefd sp!, {r3, pc}
	bl FUN_ov17_0210b638
	ldmfd sp!, {r3, pc}
_0210B714:
	bl FUN_ov17_0210ad6c
	cmp r0, #0
	ldmnefd sp!, {r3, pc}
	bl FUN_ov17_0210b638
	ldmfd sp!, {r3, pc}
_0210B728:
	bl FUN_ov17_0210ac20
	cmp r0, #0
	ldmnefd sp!, {r3, pc}
	bl FUN_ov17_0210b638
	ldmfd sp!, {r3, pc}
_0210B73C:
	bl FUN_ov17_0210ac50
	cmp r0, #0
	ldmnefd sp!, {r3, pc}
	bl FUN_ov17_0210b638
	ldmfd sp!, {r3, pc}
_0210B750: .word 0x021162C0
_0210B754: .word 0x02113BE0
_0210B758: .word 0x02113C04
	arm_func_end FUN_ov17_0210b654

	arm_func_start FUN_ov17_0210b75c
FUN_ov17_0210b75c: ; 0x0210B75C
	stmfd sp!, {r3, lr}
	ldr r0, _0210B7A4 ; =0x021162C0
	ldr r0, [r0, #4]
	ldr r0, [r0, #0x40]
	cmp r0, #1
	beq _0210B778
	bl FUN_02004160
_0210B778:
	mov r0, #3
	bl FUN_ov17_0210a65c
	ldr r0, _0210B7A8 ; =FUN_ov17_0210ae94
	bl FUN_02013168
	cmp r0, #2
	moveq r0, #1
	ldmeqfd sp!, {r3, pc}
	mov r0, #9
	bl FUN_ov17_0210a65c
	mov r0, #0
	ldmfd sp!, {r3, pc}
_0210B7A4: .word 0x021162C0
_0210B7A8: .word FUN_ov17_0210ae94
	arm_func_end FUN_ov17_0210b75c

	arm_func_start FUN_ov17_0210b7ac
FUN_ov17_0210b7ac: ; 0x0210B7AC
	stmfd sp!, {r3, r4, r5, lr}
	ldr r5, _0210B888 ; =0x021162C8
	mov r4, r1
	str r0, [r5]
	add r0, r0, #0xb00
	bl FUN_ov17_02109998
	ldr r0, [r5]
	mov r2, #0
	add r0, r0, #0x600
	strh r2, [r0, #0x48]
	ldr r0, [r5]
	mov r1, #1
	add r0, r0, #0x600
	strh r2, [r0, #0x4a]
	ldr r0, [r5]
	strb r1, [r0, #0xa90]
	ldr r0, [r5]
	strb r1, [r0, #0xa91]
	ldr r0, [r5]
	str r2, [r0, #0xa9c]
	bl FUN_ov17_0210c274
	ldr r2, [r4]
	ldr r0, [r5]
	mov r1, #2
	str r2, [r0, #0xab4]
	ldr r2, [r4, #4]
	ldr r0, [r5]
	str r2, [r0, #0xab8]
	ldr r2, [r4, #8]
	ldr r0, [r5]
	str r2, [r0, #0xabc]
	ldr r2, [r4, #0xc]
	ldr r0, [r5]
	str r2, [r0, #0xac0]
	ldr r2, [r4, #0x10]
	ldr r0, [r5]
	str r2, [r0, #0xac4]
	ldr r2, [r4, #0x14]
	ldr r0, [r5]
	str r2, [r0, #0xac8]
	ldrb r2, [r4, #0x18]
	ldr r0, [r5]
	strb r2, [r0, #0xa92]
	ldr r0, [r5]
	strb r1, [r0, #0xacc]
	bl FUN_02003410
	ldr r0, [r5]
	add r0, r0, #0x24c
	add r0, r0, #0x400
	bl  FUN_ov15_020cab04
	bl FUN_02003410
	bl FUN_ov17_02107868
	ldr r1, [r5]
	str r0, [r1, #0xaa4]
	ldmfd sp!, {r3, r4, r5, pc}
_0210B888: .word 0x021162C8
	arm_func_end FUN_ov17_0210b7ac

	arm_func_start FUN_ov17_0210b88c
FUN_ov17_0210b88c: ; 0x0210B88C
	stmfd sp!, {r3, lr}
	ldr r0, _0210B960 ; =0x021162C8
	ldr r2, [r0]
	ldrb r1, [r2, #0xa90]
	cmp r1, #1
	cmpne r1, #0x14
	cmpne r1, #0x17
	cmpne r1, #0x1a
	cmpne r1, #0x1d
	bne _0210B8D4
	mov r1, #0x22
	strb r1, [r2, #0xa90]
	ldr r0, _0210B960 ; =0x021162C8
	mov r1, #0
	ldr r0, [r0]
	strb r1, [r0, #0xaac]
	mov r0, #1
	ldmfd sp!, {r3, pc}
_0210B8D4:
	cmp r1, #4
	cmpne r1, #5
	cmpne r1, #6
	beq _0210B8EC
	cmp r1, #0xd
	bne _0210B92C
_0210B8EC:
	cmp r1, #4
	bne _0210B904
	ldr r0, [r2, #0xa98]
	cmp r0, #6
	movlo r0, #0
	ldmlofd sp!, {r3, pc}
_0210B904:
	bl  FUN_ov128_0212ed90
	ldr r0, _0210B960 ; =0x021162C8
	mov r3, #0x10
	ldr r1, [r0]
	mov r2, #2
	strb r3, [r1, #0xa90]
	ldr r1, [r0]
	mov r0, #1
	strb r2, [r1, #0xaac]
	ldmfd sp!, {r3, pc}
_0210B92C:
	add r0, r1, #0xf7
	and r0, r0, #0xff
	cmp r0, #1
	movls r0, #0x20
	strlsb r0, [r2, #0xa90]
	movls r0, #1
	ldmlsfd sp!, {r3, pc}
	cmp r1, #0xc
	moveq r0, #0x22
	streqb r0, [r2, #0xa90]
	moveq r0, #1
	movne r0, #0
	ldmfd sp!, {r3, pc}
_0210B960: .word 0x021162C8
	arm_func_end FUN_ov17_0210b88c

	arm_func_start FUN_ov17_0210b964
FUN_ov17_0210b964: ; 0x0210B964
	stmfd sp!, {r4, lr}
	ldr r4, _0210B9D4 ; =0x021162C8
	ldr r0, [r4]
	ldr r0, [r0, #0xac8]
	bl FUN_ov17_0210aebc
	ldr r0, [r4]
	mov r1, #1
	strb r1, [r0, #0xa90]
	bl FUN_02012ef8
	ldr r1, [r4]
	mov r2, #0x40
	add r1, r1, #0x600
	strh r0, [r1, #0x48]
	ldr r1, [r4]
	ldr r0, [r1, #0xaa4]
	add r1, r1, #0xa50
	bl MI_CpuCopy8
	ldr r0, [r4]
	mov r1, #0
	strb r1, [r0, #0xa93]
	ldr r0, [r4]
	str r1, [r0, #0x204]
	ldr r0, [r4]
	add r0, r0, #0x600
	ldrh r1, [r0, #0x48]
	add r1, r1, #1
	strh r1, [r0, #0x48]
	ldmfd sp!, {r4, pc}
_0210B9D4: .word 0x021162C8
	arm_func_end FUN_ov17_0210b964

	arm_func_start FUN_ov17_0210b9d8
FUN_ov17_0210b9d8: ; 0x0210B9D8
	stmfd sp!, {r3, lr}
	ldr r0, _0210BA1C ; =0x021162C8
	ldr r0, [r0]
	ldrb r0, [r0, #0xa90]
	cmp r0, #1
	cmpne r0, #0x1a
	cmpne r0, #0x1d
	movne r0, #0
	ldmnefd sp!, {r3, pc}
	bl FUN_ov17_0210b964
	bl FUN_ov17_0210b2cc
	ldr r0, _0210BA1C ; =0x021162C8
	mov r2, #2
	ldr r1, [r0]
	mov r0, #1
	strb r2, [r1, #0xa90]
	ldmfd sp!, {r3, pc}
_0210BA1C: .word 0x021162C8
	arm_func_end FUN_ov17_0210b9d8

	arm_func_start FUN_ov17_0210ba20
FUN_ov17_0210ba20: ; 0x0210BA20
	stmfd sp!, {r3, lr}
	ldr r0, _0210BA50 ; =0x021162C8
	ldr r1, [r0]
	ldrb r0, [r1, #0xa90]
	cmp r0, #5
	movne r0, #0
	ldmnefd sp!, {r3, pc}
	mov r0, #6
	strb r0, [r1, #0xa90]
	bl FUN_ov17_02109e60
	mov r0, #1
	ldmfd sp!, {r3, pc}
_0210BA50: .word 0x021162C8
	arm_func_end FUN_ov17_0210ba20

	arm_func_start FUN_ov17_0210ba54
FUN_ov17_0210ba54: ; 0x0210BA54
	stmfd sp!, {r3, r4, r5, lr}
	ldr r5, _0210BD80 ; =0x021162C8
	mov r4, #0
	ldr r0, [r5]
	ldrb r1, [r0, #0xa90]
	cmp r1, #0x22
	addls pc, pc, r1, lsl #2
	ldmfd sp!, {r3, r4, r5, pc}
_0210BA74: ; jump table
	ldmfd sp!, {r3, r4, r5, pc} ; case 0
	b _0210BB00 ; case 1
	b _0210BB30 ; case 2
	b _0210BB38 ; case 3
	b _0210BB4C ; case 4
	b _0210BB60 ; case 5
	b _0210BB60 ; case 6
	b _0210BB68 ; case 7
	b _0210BB70 ; case 8
	b _0210BB70 ; case 9
	b _0210BB70 ; case 10
	b _0210BB78 ; case 11
	ldmfd sp!, {r3, r4, r5, pc} ; case 12
	ldmfd sp!, {r3, r4, r5, pc} ; case 13
	ldmfd sp!, {r3, r4, r5, pc} ; case 14
	ldmfd sp!, {r3, r4, r5, pc} ; case 15
	b _0210BB80 ; case 16
	b _0210BB94 ; case 17
	b _0210BBB0 ; case 18
	b _0210BBCC ; case 19
	ldmfd sp!, {r3, r4, r5, pc} ; case 20
	b _0210BC00 ; case 21
	b _0210BC1C ; case 22
	ldmfd sp!, {r3, r4, r5, pc} ; case 23
	b _0210BC50 ; case 24
	b _0210BC6C ; case 25
	ldmfd sp!, {r3, r4, r5, pc} ; case 26
	b _0210BCA0 ; case 27
	b _0210BCBC ; case 28
	ldmfd sp!, {r3, r4, r5, pc} ; case 29
	b _0210BD78 ; case 30
	ldmfd sp!, {r3, r4, r5, pc} ; case 31
	b _0210BD28 ; case 32
	b _0210BD44 ; case 33
	ldmfd sp!, {r3, r4, r5, pc} ; case 34
_0210BB00:
	ldrb r1, [r0, #0xaac]
	cmp r1, #1
	bne _0210BB18
	strb r4, [r0, #0xaac]
	bl FUN_ov17_0210b9d8
	ldmfd sp!, {r3, r4, r5, pc}
_0210BB18:
	cmp r1, #2
	streqb r4, [r0, #0xaac]
	ldreq r0, [r5]
	moveq r1, #0x22
	streqb r1, [r0, #0xa90]
	ldmfd sp!, {r3, r4, r5, pc}
_0210BB30:
	bl FUN_ov17_0210bddc
	ldmfd sp!, {r3, r4, r5, pc}
_0210BB38:
	bl FUN_ov17_0210be84
	ldr r0, [r5]
	mov r1, #4
	strb r1, [r0, #0xa90]
	ldmfd sp!, {r3, r4, r5, pc}
_0210BB4C:
	ldr r1, [r0, #0xa98]
	add r1, r1, #1
	str r1, [r0, #0xa98]
	bl FUN_ov17_0210bea8
	ldmfd sp!, {r3, r4, r5, pc}
_0210BB60:
	bl FUN_ov17_0210bea8
	ldmfd sp!, {r3, r4, r5, pc}
_0210BB68:
	bl FUN_ov17_0210c030
	ldmfd sp!, {r3, r4, r5, pc}
_0210BB70:
	bl FUN_ov17_0210c05c
	ldmfd sp!, {r3, r4, r5, pc}
_0210BB78:
	bl FUN_ov17_0210c1f0
	ldmfd sp!, {r3, r4, r5, pc}
_0210BB80:
	str r4, [r0, #0xa9c]
	ldr r0, [r5]
	mov r1, #0x11
	strb r1, [r0, #0xa90]
	ldmfd sp!, {r3, r4, r5, pc}
_0210BB94:
	ldr r2, [r0, #0xa9c]
	add r1, r2, #1
	str r1, [r0, #0xa9c]
	cmp r2, #0x1e
	ldmlsfd sp!, {r3, r4, r5, pc}
	bl FUN_ov17_0210c208
	ldmfd sp!, {r3, r4, r5, pc}
_0210BBB0:
	bl  FUN_ov128_0212ed90
	ldr r0, [r5]
	mov r1, #0x16
	str r4, [r0, #0xa9c]
	ldr r0, [r5]
	strb r1, [r0, #0xa90]
	ldmfd sp!, {r3, r4, r5, pc}
_0210BBCC:
	ldr r2, [r0, #0xa9c]
	add r1, r2, #1
	str r1, [r0, #0xa9c]
	cmp r2, #0x1e
	ldmlsfd sp!, {r3, r4, r5, pc}
	bl FUN_ov17_0210aee4
	cmp r0, #1
	ldmnefd sp!, {r3, r4, r5, pc}
	bl FUN_ov17_0210b75c
	ldr r0, [r5]
	mov r1, #0x14
	strb r1, [r0, #0xa90]
	ldmfd sp!, {r3, r4, r5, pc}
_0210BC00:
	bl FUN_ov17_0210b654
	ldr r0, [r5]
	mov r1, #0x16
	str r4, [r0, #0xa9c]
	ldr r0, [r5]
	strb r1, [r0, #0xa90]
	ldmfd sp!, {r3, r4, r5, pc}
_0210BC1C:
	ldr r2, [r0, #0xa9c]
	add r1, r2, #1
	str r1, [r0, #0xa9c]
	cmp r2, #0x1e
	ldmlsfd sp!, {r3, r4, r5, pc}
	bl FUN_ov17_0210aee4
	cmp r0, #1
	ldmnefd sp!, {r3, r4, r5, pc}
	bl FUN_ov17_0210b75c
	ldr r0, [r5]
	mov r1, #0x17
	strb r1, [r0, #0xa90]
	ldmfd sp!, {r3, r4, r5, pc}
_0210BC50:
	bl FUN_ov17_0210b654
	ldr r0, [r5]
	mov r1, #0x19
	str r4, [r0, #0xa9c]
	ldr r0, [r5]
	strb r1, [r0, #0xa90]
	ldmfd sp!, {r3, r4, r5, pc}
_0210BC6C:
	ldr r2, [r0, #0xa9c]
	add r1, r2, #1
	str r1, [r0, #0xa9c]
	cmp r2, #0x1e
	ldmlsfd sp!, {r3, r4, r5, pc}
	bl FUN_ov17_0210aee4
	cmp r0, #1
	ldmnefd sp!, {r3, r4, r5, pc}
	bl FUN_ov17_0210b75c
	ldr r0, [r5]
	mov r1, #0x1a
	strb r1, [r0, #0xa90]
	ldmfd sp!, {r3, r4, r5, pc}
_0210BCA0:
	bl FUN_ov17_0210b654
	ldr r0, [r5]
	mov r1, #0x1c
	str r4, [r0, #0xa9c]
	ldr r0, [r5]
	strb r1, [r0, #0xa90]
	ldmfd sp!, {r3, r4, r5, pc}
_0210BCBC:
	ldr r2, [r0, #0xa9c]
	add r1, r2, #1
	str r1, [r0, #0xa9c]
	cmp r2, #0x1e
	ldmlsfd sp!, {r3, r4, r5, pc}
	bl FUN_ov17_0210aee4
	cmp r0, #1
	bne _0210BCF0
	bl FUN_ov17_0210b75c
	ldr r0, [r5]
	mov r1, #0x1d
	strb r1, [r0, #0xa90]
	ldmfd sp!, {r3, r4, r5, pc}
_0210BCF0:
	ldr r1, [r5]
	ldr r0, _0210BD84 ; =0x88888889
	ldr r3, [r1, #0xa9c]
	mov r2, #0x1e
	umull r0, r1, r3, r0
	mov r1, r1, lsr #4
	umull r0, r1, r2, r1
	sub r1, r3, r0
	cmp r1, #1
	ldmnefd sp!, {r3, r4, r5, pc}
	cmp r3, #0x37
	ldmlsfd sp!, {r3, r4, r5, pc}
	bl FUN_ov17_0210b654
	ldmfd sp!, {r3, r4, r5, pc}
_0210BD28:
	bl FUN_ov17_0210b654
	ldr r0, [r5]
	mov r1, #0x21
	str r4, [r0, #0xa9c]
	ldr r0, [r5]
	strb r1, [r0, #0xa90]
	ldmfd sp!, {r3, r4, r5, pc}
_0210BD44:
	ldr r2, [r0, #0xa9c]
	add r1, r2, #1
	str r1, [r0, #0xa9c]
	cmp r2, #0x1e
	ldmlsfd sp!, {r3, r4, r5, pc}
	bl FUN_ov17_0210aee4
	cmp r0, #1
	ldmnefd sp!, {r3, r4, r5, pc}
	bl FUN_ov17_0210b75c
	ldr r0, [r5]
	mov r1, #0x22
	strb r1, [r0, #0xa90]
	ldmfd sp!, {r3, r4, r5, pc}
_0210BD78:
	bl FUN_ov17_0210b654
	ldmfd sp!, {r3, r4, r5, pc}
_0210BD80: .word 0x021162C8
_0210BD84: .word 0x88888889
	arm_func_end FUN_ov17_0210ba54

	arm_func_start FUN_ov17_0210bd88
FUN_ov17_0210bd88: ; 0x0210BD88
	ldr r2, _0210BDC8 ; =0x021162C8
	ldr r3, [r2]
	ldrb r3, [r3, #0xa90]
	strb r3, [r0]
	ldr r0, [r2]
	ldrb r2, [r0, #0xa90]
	ldrb r0, [r0, #0xa91]
	cmp r2, r0
	movne r0, #1
	moveq r0, #0
	strb r0, [r1]
	ldr r0, _0210BDC8 ; =0x021162C8
	ldr r1, [r0]
	ldrb r0, [r1, #0xa90]
	strb r0, [r1, #0xa91]
	bx lr
_0210BDC8: .word 0x021162C8
	arm_func_end FUN_ov17_0210bd88

	arm_func_start FUN_ov17_0210bdcc
FUN_ov17_0210bdcc: ; 0x0210BDCC
	ldr r12, _0210BDD8 ; = FUN_ov128_0212a9e8
	mov r0, #1
	bx r12
_0210BDD8: .word  FUN_ov128_0212a9e8
	arm_func_end FUN_ov17_0210bdcc

	arm_func_start FUN_ov17_0210bddc
FUN_ov17_0210bddc: ; 0x0210BDDC
	stmfd sp!, {r3, lr}
	bl FUN_ov17_0210aee4
	cmp r0, #9
	addls pc, pc, r0, lsl #2
	b _0210BE78
_0210BDF0: ; jump table
	b _0210BE50 ; case 0
	b _0210BE18 ; case 1
	b _0210BE78 ; case 2
	ldmfd sp!, {r3, pc} ; case 3
	b _0210BE78 ; case 4
	b _0210BE78 ; case 5
	b _0210BE78 ; case 6
	b _0210BE20 ; case 7
	b _0210BE78 ; case 8
	b _0210BE70 ; case 9
_0210BE18:
	bl FUN_ov17_0210aef8
	ldmfd sp!, {r3, pc}
_0210BE20:
	bl FUN_ov17_0210b174
	ldr r2, _0210BE80 ; =0x021162C8
	mov r12, #0
	ldr r1, [r2]
	mov r3, #3
	add r1, r1, #0x600
	strh r0, [r1, #0x4a]
	ldr r0, [r2]
	str r12, [r0, #0xa98]
	ldr r0, [r2]
	strb r3, [r0, #0xa90]
	ldmfd sp!, {r3, pc}
_0210BE50:
	ldr r0, _0210BE80 ; =0x021162C8
	mov r3, #0
	ldr r2, [r0]
	mov r1, #3
	str r3, [r2, #0xa98]
	ldr r0, [r0]
	strb r1, [r0, #0xa90]
	ldmfd sp!, {r3, pc}
_0210BE70:
	bl FUN_ov17_0210b638
	ldmfd sp!, {r3, pc}
_0210BE78:
	bl FUN_02004160
	ldmfd sp!, {r3, pc}
_0210BE80: .word 0x021162C8
	arm_func_end FUN_ov17_0210bddc

	arm_func_start FUN_ov17_0210be84
FUN_ov17_0210be84: ; 0x0210BE84
	ldr r0, _0210BEA0 ; =0x021162C8
	ldr r12, _0210BEA4 ; =FUN_ov17_021099d4
	ldr r2, [r0]
	add r0, r2, #0x600
	ldrh r1, [r0, #0x48]
	ldr r0, [r2, #0xac8]
	bx r12
_0210BEA0: .word 0x021162C8
_0210BEA4: .word FUN_ov17_021099d4
	arm_func_end FUN_ov17_0210be84

	arm_func_start FUN_ov17_0210bea8
FUN_ov17_0210bea8: ; 0x0210BEA8
	stmfd sp!, {r3, r4, r5, lr}
	ldr r4, _0210C02C ; =0x021162C8
	bl FUN_ov17_0210a414
	cmp r0, #7
	addls pc, pc, r0, lsl #2
	ldmfd sp!, {r3, r4, r5, pc}
_0210BEC0: ; jump table
	b _0210BFE4 ; case 0
	b _0210BEE0 ; case 1
	b _0210BEFC ; case 2
	b _0210BF78 ; case 3
	ldmfd sp!, {r3, r4, r5, pc} ; case 4
	b _0210BFC0 ; case 5
	ldmfd sp!, {r3, r4, r5, pc} ; case 6
	b _0210BFD0 ; case 7
_0210BEE0:
	ldr r2, [r4]
	add r0, r2, #0x600
	ldrh r1, [r0, #0x4a]
	add r0, r2, #0x2b4
	add r0, r0, #0x800
	bl FUN_ov17_02109ae8
	ldmfd sp!, {r3, r4, r5, pc}
_0210BEFC:
	mov r5, #2
	mov r0, r5
	bl FUN_ov17_0210a428
	cmp r0, #0
	ldrne r0, [r4]
	movne r1, #5
	strneb r1, [r0, #0xa90]
	ldmnefd sp!, {r3, r4, r5, pc}
	mov r0, #3
	bl FUN_ov17_0210a428
	cmp r0, #0
	bne _0210BF3C
	mov r0, #4
	bl FUN_ov17_0210a428
	cmp r0, #0
	beq _0210BF4C
_0210BF3C:
	ldr r0, [r4]
	mov r1, #6
	strb r1, [r0, #0xa90]
	ldmfd sp!, {r3, r4, r5, pc}
_0210BF4C:
	ldr r0, [r4]
	ldrb r0, [r0, #0xa90]
	cmp r0, #5
	ldmnefd sp!, {r3, r4, r5, pc}
	mov r0, r5
	bl FUN_ov17_0210a428
	cmp r0, #0
	ldreq r0, [r4]
	moveq r1, #0xd
	streqb r1, [r0, #0xa90]
	ldmfd sp!, {r3, r4, r5, pc}
_0210BF78:
	bl FUN_ov17_02109f40
	cmp r0, #0
	beq _0210BF8C
	bl FUN_ov17_02109fa8
	ldmfd sp!, {r3, r4, r5, pc}
_0210BF8C:
	ldr r0, [r4]
	ldrb r0, [r0, #0xa90]
	add r0, r0, #0xfa
	and r0, r0, #0xff
	cmp r0, #1
	ldmhifd sp!, {r3, r4, r5, pc}
	mov r0, #3
	bl FUN_ov17_0210a428
	cmp r0, #0
	ldreq r0, [r4]
	moveq r1, #0x12
	streqb r1, [r0, #0xa90]
	ldmfd sp!, {r3, r4, r5, pc}
_0210BFC0:
	ldr r0, [r4]
	mov r1, #7
	strb r1, [r0, #0xa90]
	ldmfd sp!, {r3, r4, r5, pc}
_0210BFD0:
	bl FUN_ov17_0210a0a0
	ldr r0, [r4]
	mov r1, #1
	strb r1, [r0, #0xa90]
	ldmfd sp!, {r3, r4, r5, pc}
_0210BFE4:
	bl FUN_ov17_0210aee4
	cmp r0, #0
	beq _0210C00C
	cmp r0, #1
	beq _0210C004
	cmp r0, #3
	ldmeqfd sp!, {r3, r4, r5, pc}
	b _0210C01C
_0210C004:
	bl FUN_ov17_0210b75c
	ldmfd sp!, {r3, r4, r5, pc}
_0210C00C:
	ldr r0, [r4]
	mov r1, #0x1f
	strb r1, [r0, #0xa90]
	ldmfd sp!, {r3, r4, r5, pc}
_0210C01C:
	ldr r0, [r4]
	mov r1, #0x1f
	strb r1, [r0, #0xa90]
	ldmfd sp!, {r3, r4, r5, pc}
_0210C02C: .word 0x021162C8
	arm_func_end FUN_ov17_0210bea8

	arm_func_start FUN_ov17_0210c030
FUN_ov17_0210c030: ; 0x0210C030
	stmfd sp!, {r3, lr}
	bl FUN_ov17_0210c274
	ldr r0, _0210C054 ; =FUN_ov17_0210c238
	bl FUN_ov17_0210b55c
	ldr r0, _0210C058 ; =0x021162C8
	mov r1, #8
	ldr r0, [r0]
	strb r1, [r0, #0xa90]
	ldmfd sp!, {r3, pc}
_0210C054: .word FUN_ov17_0210c238
_0210C058: .word 0x021162C8
	arm_func_end FUN_ov17_0210c030

	arm_func_start FUN_ov17_0210c05c
FUN_ov17_0210c05c: ; 0x0210C05C
	stmfd sp!, {r4, lr}
	bl FUN_ov17_0210aee4
	cmp r0, #6
	addls pc, pc, r0, lsl #2
	ldmfd sp!, {r4, pc}
_0210C070: ; jump table
	ldmfd sp!, {r4, pc} ; case 0
	b _0210C08C ; case 1
	ldmfd sp!, {r4, pc} ; case 2
	ldmfd sp!, {r4, pc} ; case 3
	b _0210C0B8 ; case 4
	b _0210C0B8 ; case 5
	b _0210C0B8 ; case 6
_0210C08C:
	ldr r1, _0210C1EC ; =0x021162C8
	mov r0, #4
	ldr r1, [r1]
	add r1, r1, #0x600
	ldrh r3, [r1, #0x48]
	ldrh r2, [r1, #0x4a]
	add r1, r3, #1
	mov r1, r1, lsl #0x10
	mov r1, r1, lsr #0x10
	bl FUN_ov17_0210b400
	ldmfd sp!, {r4, pc}
_0210C0B8:
	ldr r4, _0210C1EC ; =0x021162C8
	mov r0, #0
	ldr r2, [r4]
	add r1, r2, #0x200
	ldrh r1, [r1]
	ldr r12, [r2, #0xaa4]
	mov r3, r1, lsr #0x1f
	rsb r2, r3, r1, lsl #28
	add r2, r3, r2, ror #28
	add r2, r12, r2, lsl #6
	bl FUN_ov17_0210c2b8
	bl FUN_ov17_0210c404
	ldr r1, [r4]
	ldrb r0, [r1, #0xa90]
	cmp r0, #0x1b
	ldmeqfd sp!, {r4, pc}
	ldr r0, [r1, #0x204]
	cmp r0, #0x1e0
	movhi r0, #0x1b
	strhib r0, [r1, #0xa90]
	ldmhifd sp!, {r4, pc}
	bl FUN_ov17_0210c4e8
	cmp r0, #0x10
	beq _0210C124
	bl FUN_ov17_0210c4e8
	cmp r0, #0x20
	bne _0210C13C
_0210C124:
	bl FUN_ov17_0210c4e8
	ldr r0, _0210C1EC ; =0x021162C8
	mov r1, #0xa
	ldr r0, [r0]
	strb r1, [r0, #0xa90]
	ldmfd sp!, {r4, pc}
_0210C13C:
	bl FUN_ov17_0210c4e8
	cmp r0, #0x40
	ldreq r0, [r4]
	moveq r1, #0xb
	streqb r1, [r0, #0xa90]
	ldmeqfd sp!, {r4, pc}
	bl FUN_ov17_0210c4e8
	cmp r0, #0xff
	ldreq r0, [r4]
	moveq r1, #0x1b
	streqb r1, [r0, #0xa90]
	ldmeqfd sp!, {r4, pc}
	bl FUN_ov17_0210c4e8
	cmp r0, #0x50
	ldreq r0, [r4]
	moveq r1, #0x15
	streqb r1, [r0, #0xa90]
	ldmeqfd sp!, {r4, pc}
	bl FUN_ov17_0210c4e8
	cmp r0, #0x60
	ldreq r0, [r4]
	moveq r1, #0x18
	streqb r1, [r0, #0xa90]
	ldmeqfd sp!, {r4, pc}
	bl FUN_ov17_0210c4e8
	cmp r0, #0x70
	ldreq r0, [r4]
	moveq r1, #0x1b
	streqb r1, [r0, #0xa90]
	ldmeqfd sp!, {r4, pc}
	bl FUN_ov17_0210c4e8
	cmp r0, #0
	ldreq r0, [r4]
	moveq r1, #8
	streqb r1, [r0, #0xa90]
	ldmeqfd sp!, {r4, pc}
	bl FUN_ov17_0210c4e8
	cmp r0, #0xbd
	ldr r0, [r4]
	moveq r1, #9
	streqb r1, [r0, #0xa90]
	movne r1, #0x1f
	strneb r1, [r0, #0xa90]
	ldmfd sp!, {r4, pc}
_0210C1EC: .word 0x021162C8
	arm_func_end FUN_ov17_0210c05c

	arm_func_start FUN_ov17_0210c1f0
FUN_ov17_0210c1f0: ; 0x0210C1F0
	ldr r0, _0210C204 ; =0x021162C8
	mov r1, #0xc
	ldr r0, [r0]
	strb r1, [r0, #0xa90]
	bx lr
_0210C204: .word 0x021162C8
	arm_func_end FUN_ov17_0210c1f0

	arm_func_start FUN_ov17_0210c208
FUN_ov17_0210c208: ; 0x0210C208
	stmfd sp!, {r3, lr}
	bl FUN_ov17_0210aee4
	cmp r0, #1
	movne r0, #0
	ldmnefd sp!, {r3, pc}
	bl FUN_ov17_0210b75c
	ldr r1, _0210C234 ; =0x021162C8
	mov r0, #1
	ldr r1, [r1]
	strb r0, [r1, #0xa90]
	ldmfd sp!, {r3, pc}
_0210C234: .word 0x021162C8
	arm_func_end FUN_ov17_0210c208

	arm_func_start FUN_ov17_0210c238
FUN_ov17_0210c238: ; 0x0210C238
	stmfd sp!, {r4, lr}
	add r0, r0, #0xa
	bl FUN_ov17_0210a578
	movs r4, r0
	moveq r0, #0
	ldmeqfd sp!, {r4, pc}
	bl FUN_ov17_0210a548
	ldr r1, _0210C270 ; =0x021162C8
	sub r2, r4, #1
	ldr r1, [r1]
	add r1, r1, r2, lsl #2
	str r0, [r1, #0xaa0]
	mov r0, #1
	ldmfd sp!, {r4, pc}
_0210C270: .word 0x021162C8
	arm_func_end FUN_ov17_0210c238

	arm_func_start FUN_ov17_0210c274
FUN_ov17_0210c274: ; 0x0210C274
	stmfd sp!, {r4, r5, r6, lr}
	ldr r4, _0210C2B4 ; =0x021162C8
	mov r6, #0
	ldr r0, [r4]
	mov r5, #0x100
	mov r1, r6
	mov r2, r5
	add r0, r0, #0x100
	bl MI_CpuFill8
	ldr r0, [r4]
	mov r1, r6
	mov r2, r5
	bl MI_CpuFill8
	ldr r0, [r4]
	str r0, [r0, #0xab0]
	ldmfd sp!, {r4, r5, r6, pc}
_0210C2B4: .word 0x021162C8
	arm_func_end FUN_ov17_0210c274

	arm_func_start FUN_ov17_0210c2b8
FUN_ov17_0210c2b8: ; 0x0210C2B8
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, lr}
	ldr r3, _0210C400 ; =0x021162C8
	ldr r5, [r3]
	ldrb r4, [r5, #0xa93]
	cmp r4, #1
	bne _0210C300
	ldr r4, [r5, #0xab0]
	strh r0, [r4]
	ldr r4, [r3]
	mov r0, r2
	ldr r4, [r4, #0xab0]
	mov r2, #0x40
	strh r1, [r4, #2]
	ldr r1, [r3]
	ldr r1, [r1, #0xab0]
	add r1, r1, #4
	bl MI_CpuCopy8
	b _0210C32C
_0210C300:
	ldr r0, [r5, #0x204]
	mov r1, #0xbc
	add r0, r0, #1
	str r0, [r5, #0x204]
	ldr r0, [r3]
	ldr r0, [r0, #0xab0]
	strh r1, [r0]
	ldr r0, [r3]
	ldrb r1, [r0, #0xa92]
	ldr r0, [r0, #0xab0]
	strb r1, [r0, #4]
_0210C32C:
	bl FUN_ov17_0210aee4
	cmp r0, #5
	ldmnefd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
	ldr r4, _0210C400 ; =0x021162C8
	ldr r0, [r4]
	bl FUN_ov17_0210b598
	ldr r1, [r4]
	cmp r0, #0
	ldreq r0, [r1, #0x204]
	addeq r0, r0, #4
	streq r0, [r1, #0x204]
	ldmeqfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
	ldrb r0, [r1, #0xa93]
	cmp r0, #0
	ldreq r0, [r1, #0x204]
	addeq r0, r0, #1
	streq r0, [r1, #0x204]
	beq _0210C394
	mov r0, #0
	str r0, [r1, #0x204]
	bl FUN_ov17_0210aed0
	cmp r0, #3
	ldrne r0, [r4]
	movne r1, #0x1b
	strneb r1, [r0, #0xa90]
	ldmnefd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
_0210C394:
	mov r7, #0
	mov r6, #0x44
	ldr r9, _0210C400 ; =0x021162C8
	mov r4, r7
	mov r5, #1
	mov r8, r6
_0210C3AC:
	mov r0, r7
	bl FUN_ov17_0210b570
	cmp r0, #0
	ldreq r0, [r9]
	addeq r0, r0, r7, lsl #2
	streq r4, [r0, #0x208]
	beq _0210C3E8
	ldr r1, [r9]
	mov r2, r6
	add r1, r1, #0x100
	mla r1, r7, r8, r1
	bl MI_CpuCopy8
	ldr r0, [r9]
	add r0, r0, r7, lsl #2
	str r5, [r0, #0x208]
_0210C3E8:
	add r0, r7, #1
	mov r0, r0, lsl #0x10
	mov r7, r0, lsr #0x10
	cmp r7, #2
	blo _0210C3AC
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
_0210C400: .word 0x021162C8
	arm_func_end FUN_ov17_0210c2b8

	arm_func_start FUN_ov17_0210c404
FUN_ov17_0210c404: ; 0x0210C404
	stmfd sp!, {r4, r5, r6, r7, r8, lr}
	mov r12, #0
	ldr r4, _0210C4E4 ; =0x021162C8
	mov r0, #1
	mov r5, r12
	mov r1, #0xbc
	mov r2, r12
	mov lr, #0x44
_0210C424:
	ldr r3, [r4]
	add r6, r3, r12, lsl #2
	ldr r6, [r6, #0x208]
	cmp r6, #0
	beq _0210C4D4
	mul r7, r12, lr
	cmp r12, #1
	add r8, r3, #0x100
	bne _0210C4D4
	ldrb r6, [r3, #0xa93]
	cmp r6, #1
	bne _0210C4A4
	ldrh r6, [r8, r7]
	cmp r6, #0x10
	ldmnefd sp!, {r4, r5, r6, r7, r8, pc}
	ldr r6, [r3, #0xa94]
	add r6, r6, #1
	str r6, [r3, #0xa94]
	ldr r6, [r4]
	ldr r3, [r6, #0xa94]
	tst r3, #1
	bne _0210C4D4
	add r3, r6, #0x200
	ldrh r6, [r3]
	add r6, r6, #1
	strh r6, [r3]
	ldr r3, [r4]
	add r3, r3, #0x200
	ldrh r6, [r3]
	cmp r6, #0x24
	strhsh r2, [r3]
	b _0210C4D4
_0210C4A4:
	add r3, r3, #0x200
	strh r1, [r3, #2]
	ldrh r3, [r8, r7]
	cmp r3, #0xbd
	bne _0210C4D4
	ldr r3, [r4]
	strb r0, [r3, #0xa93]
	ldr r3, [r4]
	add r3, r3, #0x200
	strh r5, [r3]
	ldr r3, [r4]
	str r5, [r3, #0xa94]
_0210C4D4:
	add r12, r12, #1
	cmp r12, #0x10
	blt _0210C424
	ldmfd sp!, {r4, r5, r6, r7, r8, pc}
_0210C4E4: .word 0x021162C8
	arm_func_end FUN_ov17_0210c404

	arm_func_start FUN_ov17_0210c4e8
FUN_ov17_0210c4e8: ; 0x0210C4E8
	ldr r0, _0210C4FC ; =0x021162C8
	ldr r0, [r0]
	add r0, r0, #0x100
	ldrh r0, [r0, #0x44]
	bx lr
_0210C4FC: .word 0x021162C8
	arm_func_end FUN_ov17_0210c4e8

	arm_func_start FUN_ov17_0210c500
FUN_ov17_0210c500: ; 0x0210C500
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	sub sp, sp, #0xe8
	mov r0, #0xe8
	mov r1, #4
	bl FUN_ov17_0210e0a8
	ldr r1, _0210C694 ; =0x021162CC
	add r4, sp, #0xa0
	str r0, [r1]
	mov r0, r4
	bl FS_InitFile
	ldr r1, _0210C698 ; =0x02113C28
	mov r0, r4
	bl FS_OpenFile
	cmp r0, #0
	bne _0210C540
	bl FUN_02004160
_0210C540:
	bl FUN_02001440
	ldr r5, _0210C694 ; =0x021162CC
	add r7, sp, #0xa0
	ldr r1, [r5]
	strh r0, [r1, #0xe4]
	mov r0, r7
	bl FUN_0200fad8
	mov r6, #8
	mov r4, r0
	add r1, sp, #0x18
	mov r0, r7
	mov r2, r6
	bl FS_ReadFile
	add r1, sp, #0x10
	mov r2, r6
	mov r0, r7
	bl FS_ReadFile
	mov r0, r7
	bl FS_CloseFile
	ldr r0, [r5]
	add r0, r0, #0x88
	bl FUN_0200d600
	ldr r0, [r5]
	ldr r1, _0210C69C ; =0x021126DC
	add r0, r0, #0x88
	mov r2, #3
	bl FUN_0200d624
	cmp r0, #0
	bne _0210C5B8
	bl FUN_02004160
_0210C5B8:
	ldr r5, _0210C694 ; =0x021162CC
	ldr r1, _0210C6A0 ; =FUN_ov17_0210c728
	ldr r0, [r5]
	ldr r2, _0210C6A4 ; =0x00000602
	add r0, r0, #0x88
	bl FUN_0200f8c4
	ldr r0, [sp, #0x18]
	ldr r1, _0210C6A8 ; =FUN_ov17_0210c790
	str r0, [sp]
	ldr r2, [sp, #0x1c]
	ldr r0, _0210C6AC ; =FUN_ov17_0210c7f4
	str r2, [sp, #4]
	str r1, [sp, #8]
	str r0, [sp, #0xc]
	ldr r0, [r5]
	ldr r2, [sp, #0x10]
	ldr r3, [sp, #0x14]
	mov r1, r4
	add r0, r0, #0x88
	bl FUN_0200f7cc
	cmp r0, #0
	bne _0210C614
	bl FUN_02004160
_0210C614:
	ldr r4, _0210C694 ; =0x021162CC
	mov r1, #0
	ldr r0, [r4]
	mov r2, r1
	add r0, r0, #0x88
	bl FUN_0200f8e4
	mov r5, #4
	mov r1, r5
	mov r6, r0
	bl FUN_ov17_0210e0a8
	ldr r1, [r4]
	mov r2, r6
	str r0, [r1]
	ldr r0, [r4]
	ldr r1, [r0], #0x88
	bl FUN_0200f8e4
	ldr r0, [r4]
	mov r2, r5
	add r1, r0, #4
	mov r0, #0x20
	bl FUN_ov17_0210d0a4
	ldr r1, [r4]
	add r4, sp, #0x20
	str r0, [r1, #0x84]
	ldr r1, _0210C6B0 ; =0x02113C40
	ldr r2, _0210C69C ; =0x021126DC
	mov r0, r4
	bl FUN_020014c8
	mov r0, r4
	bl FUN_0200dff0
	add sp, sp, #0xe8
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_0210C694: .word 0x021162CC
_0210C698: .word 0x02113C28
_0210C69C: .word 0x021126DC
_0210C6A0: .word FUN_ov17_0210c728
_0210C6A4: .word 0x00000602
_0210C6A8: .word FUN_ov17_0210c790
_0210C6AC: .word FUN_ov17_0210c7f4
_0210C6B0: .word 0x02113C40
	arm_func_end FUN_ov17_0210c500

	arm_func_start FUN_ov17_0210c6b4
FUN_ov17_0210c6b4: ; 0x0210C6B4
	stmfd sp!, {r3, r4, r5, lr}
	ldr r0, _0210C71C ; =0x02113C48
	bl FUN_0200dff0
	ldr r4, _0210C720 ; =0x021162CC
	ldr r0, [r4]
	add r0, r0, #0x88
	bl FUN_0200fa24
	ldr r0, [r4]
	add r0, r0, #0x88
	bl FUN_0200f838
	ldr r0, [r4]
	add r0, r0, #0x88
	bl FUN_0200d724
	ldr r0, [r4]
	ldrh r0, [r0, #0xe4]
	bl FUN_02001498
	ldr r0, [r4]
	mov r5, #0
	strh r5, [r0, #0xe4]
	ldr r0, [r4]
	bl FUN_ov17_0210e0cc
	ldr r1, [r4]
	ldr r0, _0210C724 ; =0x021162CC
	str r5, [r1]
	bl FUN_ov17_0210e0cc
	ldmfd sp!, {r3, r4, r5, pc}
_0210C71C: .word 0x02113C48
_0210C720: .word 0x021162CC
_0210C724: .word 0x021162CC
	arm_func_end FUN_ov17_0210c6b4

	arm_func_start FUN_ov17_0210c728
FUN_ov17_0210c728: ; 0x0210C728
	stmfd sp!, {r3, lr}
	cmp r1, #1
	beq _0210C778
	cmp r1, #9
	beq _0210C748
	cmp r1, #0xa
	beq _0210C760
	b _0210C780
_0210C748:
	ldr r0, _0210C788 ; =0x021162CC
	ldr r0, [r0]
	ldrh r0, [r0, #0xe4]
	bl FUN_0200ff8c
	mov r0, #0
	ldmfd sp!, {r3, pc}
_0210C760:
	ldr r0, _0210C788 ; =0x021162CC
	ldr r0, [r0]
	ldrh r0, [r0, #0xe4]
	bl FUN_0200fffc
	mov r0, #0
	ldmfd sp!, {r3, pc}
_0210C778:
	mov r0, #4
	ldmfd sp!, {r3, pc}
_0210C780:
	ldr r0, _0210C78C ; =0x00000102
	ldmfd sp!, {r3, pc}
_0210C788: .word 0x021162CC
_0210C78C: .word 0x00000102
	arm_func_end FUN_ov17_0210c728

	arm_func_start FUN_ov17_0210c790
FUN_ov17_0210c790: ; 0x0210C790
	stmfd sp!, {r4, r5, r6, r7, lr}
	sub sp, sp, #0xc
	mov r7, r0
	mov r6, r1
	mov r5, r2
	mov r4, r3
	bl FUN_0200faa8
	ldr r1, _0210C7E0 ; =FUN_ov17_0210c7e4
	mov lr, r0
	mov r12, #1
	str r1, [sp]
	mov r2, r6
	mov r3, r4
	sub r0, r12, #2
	add r1, r5, lr
	stmib sp, {r7, r12}
	bl FUN_0201121c
	mov r0, #0x100
	add sp, sp, #0xc
	ldmfd sp!, {r4, r5, r6, r7, pc}
_0210C7E0: .word FUN_ov17_0210c7e4
	arm_func_end FUN_ov17_0210c790

	arm_func_start FUN_ov17_0210c7e4
FUN_ov17_0210c7e4: ; 0x0210C7E4
	ldr r12, _0210C7F0 ; =FUN_0200d9d4
	mov r1, #0
	bx r12
_0210C7F0: .word FUN_0200d9d4
	arm_func_end FUN_ov17_0210c7e4

	arm_func_start FUN_ov17_0210c7f4
FUN_ov17_0210c7f4: ; 0x0210C7F4
	mov r0, #1
	bx lr
	arm_func_end FUN_ov17_0210c7f4

	arm_func_start FUN_ov17_0210c7fc
FUN_ov17_0210c7fc: ; 0x0210C7FC
	stmfd sp!, {r3, r4, r5, r6, r7, r8, lr}
	sub sp, sp, #0x4c
	ldr r3, _0210C8F4 ; =0x021162CC
	mov r6, r0
	ldr r0, [r3]
	mov r5, r1
	ldr r0, [r0, #0x84]
	mov r4, r2
	bl FUN_ov17_0210d158
	add r7, sp, #4
	mov r0, r7
	bl FS_InitFile
	mov r0, r7
	mov r1, r6
	bl FS_OpenFile
	cmp r0, #0
	bne _0210C844
	bl FUN_02004160
_0210C844:
	add r0, sp, #4
	bl FS_GetLength
	mov r7, #2
	mov r8, r0
	cmp r5, #0
	ldr r1, _0210C8F8 ; =0x02113C50
	mov r0, r6
	mov r2, r7
	strne r8, [r5]
	bl FUN_ov17_0210c930
	cmp r0, #0
	sub r7, r7, #6
	moveq r7, r4
	mov r0, r8
	mov r1, r7
	bl FUN_ov17_0210e0a8
	mov r1, r0
	add r6, sp, #4
	mov r2, r8
	mov r0, r6
	str r1, [sp]
	bl FS_ReadFile
	mov r0, r6
	bl FS_CloseFile
	cmp r7, #0
	ldrgt r0, [sp]
	addgt sp, sp, #0x4c
	ldmgtfd sp!, {r3, r4, r5, r6, r7, r8, pc}
	ldr r0, [sp]
	cmp r5, #0
	ldr r0, [r0]
	mov r1, r4
	mov r0, r0, lsr #8
	strne r0, [r5]
	bl FUN_ov17_0210e0a8
	mov r4, r0
	ldr r0, [sp]
	mov r1, r4
	bl MI_UncompressLZ8
	add r0, sp, #0
	bl FUN_ov17_0210e0cc
	mov r0, r4
	add sp, sp, #0x4c
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, pc}
_0210C8F4: .word 0x021162CC
_0210C8F8: .word 0x02113C50
	arm_func_end FUN_ov17_0210c7fc

	arm_func_start FUN_ov17_0210c8fc
FUN_ov17_0210c8fc: ; 0x0210C8FC
	stmfd sp!, {r0, r1, r2, r3}
	stmfd sp!, {r3, lr}
	add r0, sp, #8
	bl FUN_ov17_0210e0cc
	ldr r0, _0210C92C ; =0x021162CC
	ldr r1, [sp, #8]
	ldr r0, [r0]
	ldr r0, [r0, #0x84]
	bl FUN_ov17_0210d100
	ldmfd sp!, {r3, lr}
	add sp, sp, #0x10
	bx lr
_0210C92C: .word 0x021162CC
	arm_func_end FUN_ov17_0210c8fc

	arm_func_start FUN_ov17_0210c930
FUN_ov17_0210c930: ; 0x0210C930
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	mov r6, r1
	mov r7, r0
	mov r5, r2
	bl _strlen
	mov r4, r0
	mov r0, r6
	bl _strlen
	cmp r4, r5
	cmpge r0, r5
	movlt r0, #0
	ldmltfd sp!, {r3, r4, r5, r6, r7, pc}
	sub r1, r0, r5
	sub r3, r4, r5
	mov r2, r5
	add r0, r7, r3
	add r1, r6, r1
	bl FUN_020219ac
	cmp r0, #0
	moveq r0, #1
	movne r0, #0
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
	arm_func_end FUN_ov17_0210c930

	arm_func_start FUN_ov17_0210c988
FUN_ov17_0210c988: ; 0x0210C988
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, lr}
	mov r0, #0x450
	mov r1, #4
	bl FUN_ov17_0210e0a8
	ldr r5, _0210CA58 ; =0x021162D0
	mov r9, #0
	str r0, [r5]
	mov r8, #0x20
	mov r7, #0x10
	mov r6, #0x40
	mov r11, #0x7f
	mov r4, #0x228
_0210C9B8:
	mul r10, r9, r4
	ldr r1, [r5]
	mov r0, r8
	mov r2, r7
	add r1, r1, r10
	bl FUN_ov17_0210d0a4
	ldr r1, [r5]
	add r1, r1, r10
	str r0, [r1, #0x224]
	bl FUN_ov17_0210e9d8
	ldr r2, [r5]
	mov r1, r6
	add r2, r2, r10
	str r0, [r2, #0x220]
	mov r0, r9
	bl FUN_ov17_0210ec18
	ldr r2, [r5]
	mov r1, r11
	add r2, r2, r10
	str r0, [r2, #0x208]
	mov r0, r9
	bl FUN_ov17_0210ec18
	add r1, r0, #8
	ldr r0, [r5]
	add r0, r0, r10
	str r1, [r0, #0x218]
	ldr r0, [r5]
	add r1, r0, r10
	ldr r0, [r1, #0x220]
	add r1, r1, #0x200
	bl FUN_ov17_0210ea98
	ldr r0, [r5]
	add r1, r0, r10
	ldr r0, [r1, #0x220]
	add r1, r1, #0x210
	bl FUN_ov17_0210ea88
	add r9, r9, #1
	cmp r9, #2
	blt _0210C9B8
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_0210CA58: .word 0x021162D0
	arm_func_end FUN_ov17_0210c988

	arm_func_start FUN_ov17_0210ca5c
FUN_ov17_0210ca5c: ; 0x0210CA5C
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	ldr r5, _0210CAA8 ; =0x021162D0
	mov r6, #0
	mov r4, #0x228
_0210CA6C:
	mul r7, r6, r4
	ldr r0, [r5]
	add r0, r0, r7
	ldr r0, [r0, #0x220]
	bl FUN_ov17_0210ea04
	ldr r0, [r5]
	add r0, r0, r7
	ldr r0, [r0, #0x224]
	bl FUN_ov17_0210d0e4
	add r6, r6, #1
	cmp r6, #2
	blt _0210CA6C
	ldr r0, _0210CAAC ; =0x021162D0
	bl FUN_ov17_0210e0cc
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_0210CAA8: .word 0x021162D0
_0210CAAC: .word 0x021162D0
	arm_func_end FUN_ov17_0210ca5c

	arm_func_start FUN_ov17_0210cab0
FUN_ov17_0210cab0: ; 0x0210CAB0
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, lr}
	mov r10, r0
	mov r11, #0x228
	mul r7, r10, r11
	ldr r4, _0210CBF0 ; =0x021162D0
	mov r9, r1
	ldr r0, [r4]
	mov r8, r2
	add r0, r0, r7
	ldr r0, [r0, #0x224]
	bl FUN_ov17_0210d158
	mov r5, r0
	mov r0, #1
	bl FUN_0200102c
	ldr r1, [r4]
	mov r6, r0
	mla r0, r10, r11, r1
	cmp r8, #0
	beq _0210CB68
	add r4, r0, #0x200
	add r0, r0, #0x210
	cmp r4, r0
	beq _0210CB4C
	add r0, r1, r7
	add r1, r0, #0x210
_0210CB14:
	ldrb r3, [r4, #0xc]
	ldmib r4, {r0, r8}
	add r8, r8, r3, lsl #3
	ldr r2, [r0, #8]
	add r3, r8, r9, lsl #3
	cmp r3, r2
	bhi _0210CB40
	mov r1, r5
	str r8, [r5, #8]
	bl FUN_ov17_0210ea58
	b _0210CB4C
_0210CB40:
	mov r4, r0
	cmp r0, r1
	bne _0210CB14
_0210CB4C:
	ldr r0, _0210CBF0 ; =0x021162D0
	ldr r0, [r0]
	add r0, r0, r7
	add r0, r0, #0x210
	cmp r4, r0
	bne _0210CBDC
	b _0210CBD8
_0210CB68:
	add r4, r0, #0x210
	add r0, r0, #0x200
	cmp r4, r0
	beq _0210CBC0
	add r0, r1, r7
	add r0, r0, #0x200
_0210CB80:
	ldr r8, [r4]
	ldr r3, [r4, #8]
	ldrb r1, [r8, #0xc]
	ldr r2, [r8, #8]
	sub r3, r3, r9, lsl #3
	add r1, r2, r1, lsl #3
	cmp r3, r1
	blo _0210CBB4
	mov r0, r4
	mov r1, r5
	str r3, [r5, #8]
	bl FUN_ov17_0210ea58
	b _0210CBC0
_0210CBB4:
	mov r4, r8
	cmp r8, r0
	bne _0210CB80
_0210CBC0:
	ldr r0, _0210CBF0 ; =0x021162D0
	ldr r0, [r0]
	add r0, r0, r7
	add r0, r0, #0x200
	cmp r4, r0
	bne _0210CBDC
_0210CBD8:
	bl FUN_02004160
_0210CBDC:
	mov r0, r6
	bl FUN_02000ffc
	mov r0, r5
	strb r9, [r5, #0xc]
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_0210CBF0: .word 0x021162D0
	arm_func_end FUN_ov17_0210cab0

	arm_func_start FUN_ov17_0210cbf4
FUN_ov17_0210cbf4: ; 0x0210CBF4
	stmfd sp!, {r3, r4, r5, lr}
	mov r5, r0
	ldrb r0, [r5, #0xc]
	mov r4, #0
	mov r3, r4
	cmp r0, #0
	ldr r2, [r5, #8]
	ble _0210CC38
	ldr r0, _0210CC6C ; =0xC1FFFCFF
_0210CC18:
	ldr r1, [r2]
	add r3, r3, #1
	and r1, r1, r0
	orr r1, r1, #0x200
	str r1, [r2], #8
	ldrb r1, [r5, #0xc]
	cmp r3, r1
	blt _0210CC18
_0210CC38:
	mov r0, r5
	bl FUN_ov17_0210ea20
	ldr r0, _0210CC70 ; =0x021162D0
	ldr r1, [r0]
	add r0, r1, #0x228
	cmp r5, r0
	movhs r4, #1
	mov r0, #0x228
	mla r0, r4, r0, r1
	ldr r0, [r0, #0x224]
	mov r1, r5
	bl FUN_ov17_0210d100
	ldmfd sp!, {r3, r4, r5, pc}
_0210CC6C: .word 0xC1FFFCFF
_0210CC70: .word 0x021162D0
	arm_func_end FUN_ov17_0210cbf4

	arm_func_start FUN_ov17_0210cc74
FUN_ov17_0210cc74: ; 0x0210CC74
	ldr r0, [r0, #8]
	add r0, r0, r1, lsl #3
	bx lr
	arm_func_end FUN_ov17_0210cc74

	arm_func_start FUN_ov17_0210cc80
FUN_ov17_0210cc80: ; 0x0210CC80
	ldrb r0, [r0, #0xc]
	bx lr
	arm_func_end FUN_ov17_0210cc80

	arm_func_start FUN_ov17_0210cc88
FUN_ov17_0210cc88: ; 0x0210CC88
	stmfd sp!, {r4, lr}
	cmp r1, #0
	ldr r12, [r0, #8]
	blt _0210CCD4
	cmp r2, #0x100
	cmpne r2, #0x300
	ldr r0, _0210CD28 ; =0xC1FFFCFF
	beq _0210CCBC
	ldr r3, [r12, r1, lsl #3]
	and r0, r3, r0
	orr r0, r0, r2
	str r0, [r12, r1, lsl #3]
	ldmfd sp!, {r4, pc}
_0210CCBC:
	ldr r4, [r12, r1, lsl #3]
	and r0, r4, r0
	orr r0, r0, r2
	orr r0, r0, r3, lsl #25
	str r0, [r12, r1, lsl #3]
	ldmfd sp!, {r4, pc}
_0210CCD4:
	ldrb r4, [r0, #0xc]
	mov r1, #0
	cmp r4, #0
	ldmlefd sp!, {r4, pc}
	ldr lr, _0210CD28 ; =0xC1FFFCFF
_0210CCE8:
	cmp r2, #0x100
	cmpne r2, #0x300
	ldrne r4, [r12, r1, lsl #3]
	andne r4, r4, lr
	orrne r4, r4, r2
	strne r4, [r12, r1, lsl #3]
	ldreq r4, [r12, r1, lsl #3]
	andeq r4, r4, lr
	orreq r4, r4, r2
	orreq r4, r4, r3, lsl #25
	streq r4, [r12, r1, lsl #3]
	ldrb r4, [r0, #0xc]
	add r1, r1, #1
	cmp r1, r4
	blt _0210CCE8
	ldmfd sp!, {r4, pc}
_0210CD28: .word 0xC1FFFCFF
	arm_func_end FUN_ov17_0210cc88

	arm_func_start FUN_ov17_0210cd2c
FUN_ov17_0210cd2c: ; 0x0210CD2C
	stmfd sp!, {r4, lr}
	cmp r1, #0
	ldr r12, [r0, #8]
	blt _0210CD64
	ldr r0, [r12, r1, lsl #3]
	add lr, r12, r1, lsl #3
	bic r0, r0, #0xc00
	orr r0, r0, r2, lsl #10
	str r0, [r12, r1, lsl #3]
	ldrh r0, [lr, #4]
	bic r0, r0, #0xf000
	orr r0, r0, r3, lsl #12
	strh r0, [lr, #4]
	ldmfd sp!, {r4, pc}
_0210CD64:
	ldrb r1, [r0, #0xc]
	mov r4, #0
	cmp r1, #0
	ldmlefd sp!, {r4, pc}
_0210CD74:
	ldr r1, [r12, r4, lsl #3]
	add lr, r12, r4, lsl #3
	bic r1, r1, #0xc00
	orr r1, r1, r2, lsl #10
	str r1, [r12, r4, lsl #3]
	ldrh r1, [lr, #4]
	add r4, r4, #1
	bic r1, r1, #0xf000
	orr r1, r1, r3, lsl #12
	strh r1, [lr, #4]
	ldrb r1, [r0, #0xc]
	cmp r4, r1
	blt _0210CD74
	ldmfd sp!, {r4, pc}
	arm_func_end FUN_ov17_0210cd2c

	arm_func_start FUN_ov17_0210cdac
FUN_ov17_0210cdac: ; 0x0210CDAC
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	sub sp, sp, #0x10
	cmp r1, #0
	ldr r12, [r0, #8]
	blt _0210CDE8
	ldr r4, [r12, r1, lsl #3]
	ldr r0, _0210CE7C ; =0xFE00FF00
	and r3, r3, #0xff
	and r0, r4, r0
	mov r2, r2, lsl #0x17
	orr r0, r0, r3
	orr r0, r0, r2, lsr #7
	str r0, [r12, r1, lsl #3]
	add sp, sp, #0x10
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_0210CDE8:
	ldr r5, [r12]
	ldr r4, _0210CE7C ; =0xFE00FF00
	and r1, r3, #0xff
	and r5, r5, r4
	ldr r7, [r12]
	orr r1, r5, r1
	mov r6, r2, lsl #0x17
	orr r1, r1, r6, lsr #7
	str r1, [r12]
	ldrb r1, [r0, #0xc]
	ldr lr, _0210CE80 ; =0x01FF0000
	and r5, r7, #0xff
	cmp r1, #1
	and r6, r7, lr
	sub r3, r3, r5
	addle sp, sp, #0x10
	sub r2, r2, r6, lsr #16
	mov r1, #1
	ldmlefd sp!, {r3, r4, r5, r6, r7, pc}
_0210CE34:
	ldr r7, [r12, r1, lsl #3]
	and r5, r7, #0xff
	mov r6, r7
	and r7, r7, lr
	add r5, r5, r3
	add r7, r2, r7, lsr #16
	and r6, r6, r4
	and r5, r5, #0xff
	mov r7, r7, lsl #0x17
	orr r5, r6, r5
	orr r5, r5, r7, lsr #7
	str r5, [r12, r1, lsl #3]
	ldrb r5, [r0, #0xc]
	add r1, r1, #1
	cmp r1, r5
	blt _0210CE34
	add sp, sp, #0x10
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_0210CE7C: .word 0xFE00FF00
_0210CE80: .word 0x01FF0000
	arm_func_end FUN_ov17_0210cdac

	arm_func_start FUN_ov17_0210ce84
FUN_ov17_0210ce84: ; 0x0210CE84
	stmfd sp!, {r3, lr}
	cmp r1, #0
	ldr r12, [r0, #8]
	blt _0210CEAC
	add r1, r12, r1, lsl #3
	ldrh r0, [r1, #4]
	bic r0, r0, #0xc00
	orr r0, r0, r2, lsl #10
	strh r0, [r1, #4]
	ldmfd sp!, {r3, pc}
_0210CEAC:
	ldrb r1, [r0, #0xc]
	mov lr, #0
	cmp r1, #0
	ldmlefd sp!, {r3, pc}
_0210CEBC:
	add r3, r12, lr, lsl #3
	ldrh r1, [r3, #4]
	add lr, lr, #1
	bic r1, r1, #0xc00
	orr r1, r1, r2, lsl #10
	strh r1, [r3, #4]
	ldrb r1, [r0, #0xc]
	cmp lr, r1
	blt _0210CEBC
	ldmfd sp!, {r3, pc}
	arm_func_end FUN_ov17_0210ce84

	arm_func_start FUN_ov17_0210cee4
FUN_ov17_0210cee4: ; 0x0210CEE4
	stmfd sp!, {r3, lr}
	ldr lr, [r0, #8]
	ldr r0, _0210CF10 ; =0x01FF0000
	ldr r12, [lr, r1, lsl #3]
	and r0, r12, r0
	mov r0, r0, lsr #0x10
	str r0, [r2]
	ldr r0, [lr, r1, lsl #3]
	and r0, r0, #0xff
	str r0, [r3]
	ldmfd sp!, {r3, pc}
_0210CF10: .word 0x01FF0000
	arm_func_end FUN_ov17_0210cee4

	arm_func_start FUN_ov17_0210cf14
FUN_ov17_0210cf14: ; 0x0210CF14
	stmfd sp!, {r3, r4, lr}
	sub sp, sp, #4
	mov r4, r0
	mov r0, r1
	add r1, sp, #0
	mov r2, #4
	bl FUN_ov17_0210c7fc
	ldr r1, _0210CF40 ; =0x021162D4
	str r0, [r1, r4, lsl #2]
	add sp, sp, #4
	ldmfd sp!, {r3, r4, pc}
_0210CF40: .word 0x021162D4
	arm_func_end FUN_ov17_0210cf14

	arm_func_start FUN_ov17_0210cf44
FUN_ov17_0210cf44: ; 0x0210CF44
	stmfd sp!, {r3, r4, r5, lr}
	ldr r4, _0210CF64 ; =0x021162D4
	mov r5, r0
	ldr r0, [r4, r5, lsl #2]
	bl FUN_ov17_0210c8fc
	mov r0, #0
	str r0, [r4, r5, lsl #2]
	ldmfd sp!, {r3, r4, r5, pc}
_0210CF64: .word 0x021162D4
	arm_func_end FUN_ov17_0210cf44

	arm_func_start FUN_ov17_0210cf68
FUN_ov17_0210cf68: ; 0x0210CF68
	stmfd sp!, {r4, r5, r6, r7, r8, r9, r10, lr}
	sub sp, sp, #8
	ldr r3, _0210CFF8 ; =0x021162D4
	mov r6, r2
	ldr r7, [r3, r0, lsl #2]
	mov r2, r1, lsl #3
	add r0, r7, r1, lsl #3
	ldrh r4, [r7, r2]
	add r9, sp, #0
	ldr r3, [r0, #4]
	mov r5, #0
	mov r0, r5
	mov r1, r9
	mov r2, #8
	add r10, r7, r3
	bl MIi_CpuClear32
	cmp r4, #0
	addle sp, sp, #8
	ldmlefd sp!, {r4, r5, r6, r7, r8, r9, r10, pc}
	mov r8, #6
	mov r7, #8
_0210CFBC:
	mov r0, r10
	mov r1, r9
	mov r2, r8
	bl MIi_CpuCopy16
	mov r0, r9
	mov r1, r6
	mov r2, r7
	bl MIi_CpuCopy32
	add r5, r5, #1
	cmp r5, r4
	add r10, r10, #6
	add r6, r6, #8
	blt _0210CFBC
	add sp, sp, #8
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, pc}
_0210CFF8: .word 0x021162D4
	arm_func_end FUN_ov17_0210cf68

	arm_func_start FUN_ov17_0210cffc
FUN_ov17_0210cffc: ; 0x0210CFFC
	stmfd sp!, {r4, r5, r6, lr}
	mov r6, r0
	mov r5, r1
	bl FUN_ov17_0210ebac
	mov r4, r0
	mov r0, r6
	mov r1, r5
	mov r2, r4
	bl FUN_ov17_0210cf68
	mov r0, r4
	ldmfd sp!, {r4, r5, r6, pc}
	arm_func_end FUN_ov17_0210cffc

	arm_func_start FUN_ov17_0210d028
FUN_ov17_0210d028: ; 0x0210D028
	stmfd sp!, {r4, r5, r6, lr}
	ldr r3, _0210D06C ; =0x021162D4
	mov r6, r0
	mov r5, r1
	ldr r3, [r3, r6, lsl #2]
	mov r1, r5, lsl #3
	ldrh r1, [r3, r1]
	bl FUN_ov17_0210cab0
	mov r1, #0
	mov r4, r0
	bl FUN_ov17_0210cc74
	mov r2, r0
	mov r0, r6
	mov r1, r5
	bl FUN_ov17_0210cf68
	mov r0, r4
	ldmfd sp!, {r4, r5, r6, pc}
_0210D06C: .word 0x021162D4
	arm_func_end FUN_ov17_0210d028

	arm_func_start FUN_ov17_0210d070
FUN_ov17_0210d070: ; 0x0210D070
	stmfd sp!, {r4, lr}
	mov r4, r0
	add r0, r4, #1
	mov r0, r0, lsl #2
	add r0, r0, #8
	mov r1, #4
	bl FUN_ov17_0210e0a8
	add r1, r4, #1
	strh r1, [r0]
	mov r1, #0
	strb r1, [r0, #2]
	strb r1, [r0, #3]
	ldmfd sp!, {r4, pc}
	arm_func_end FUN_ov17_0210d070

	arm_func_start FUN_ov17_0210d0a4
FUN_ov17_0210d0a4: ; 0x0210D0A4
	stmfd sp!, {r4, r5, r6, lr}
	mov r6, r0
	mov r5, r1
	mov r4, r2
	bl FUN_ov17_0210d070
	cmp r6, #0
	mov r2, #0
	ble _0210D0DC
_0210D0C4:
	add r1, r0, r2, lsl #2
	add r2, r2, #1
	str r5, [r1, #4]
	cmp r2, r6
	add r5, r5, r4
	blt _0210D0C4
_0210D0DC:
	strb r6, [r0, #3]
	ldmfd sp!, {r4, r5, r6, pc}
	arm_func_end FUN_ov17_0210d0a4

	arm_func_start FUN_ov17_0210d0e4
FUN_ov17_0210d0e4: ; 0x0210D0E4
	stmfd sp!, {r0, r1, r2, r3}
	stmfd sp!, {r3, lr}
	add r0, sp, #8
	bl FUN_ov17_0210e0cc
	ldmfd sp!, {r3, lr}
	add sp, sp, #0x10
	bx lr
	arm_func_end FUN_ov17_0210d0e4

	arm_func_start FUN_ov17_0210d100
FUN_ov17_0210d100: ; 0x0210D100
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	mov r5, r0
	mov r0, #1
	mov r4, r1
	bl FUN_0200102c
	ldrb r2, [r5, #3]
	mov r6, r0
	ldrh r1, [r5]
	add r0, r2, #1
	bl FUN_020096f8
	ldrb r1, [r5, #2]
	mov r7, r0
	cmp r7, r1
	bne _0210D13C
	bl FUN_02004160
_0210D13C:
	ldrb r1, [r5, #3]
	mov r0, r6
	add r1, r5, r1, lsl #2
	str r4, [r1, #4]
	strb r7, [r5, #3]
	bl FUN_02000ffc
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
	arm_func_end FUN_ov17_0210d100

	arm_func_start FUN_ov17_0210d158
FUN_ov17_0210d158: ; 0x0210D158
	stmfd sp!, {r4, r5, r6, lr}
	mov r6, r0
	mov r0, #1
	mov r4, #0
	bl FUN_0200102c
	ldrb r2, [r6, #3]
	ldrb r1, [r6, #2]
	mov r5, r0
	cmp r1, r2
	beq _0210D1A0
	ldrh r1, [r6]
	add r0, r2, r1
	sub r0, r0, #1
	bl FUN_020096f8
	and r1, r0, #0xff
	strb r0, [r6, #3]
	add r0, r6, r1, lsl #2
	ldr r4, [r0, #4]
_0210D1A0:
	mov r0, r5
	bl FUN_02000ffc
	mov r0, r4
	ldmfd sp!, {r4, r5, r6, pc}
	arm_func_end FUN_ov17_0210d158

	arm_func_start FUN_ov17_0210d1b0
FUN_ov17_0210d1b0: ; 0x0210D1B0
	stmfd sp!, {r4, r5, r6, lr}
	mov r0, #0x18
	mov r1, #4
	bl FUN_ov17_0210e0a8
	ldr r1, _0210D1F8 ; =0x021162DC
	mov r5, #0x3f
	mov r4, #0x10
	ldr r6, _0210D1FC ; =0x04000050
	str r0, [r1]
	mov r0, r6
	mov r1, r5
	mov r2, r4
	bl FUN_0200462c
	mov r1, r5
	mov r2, r4
	add r0, r6, #0x1000
	bl FUN_0200462c
	ldmfd sp!, {r4, r5, r6, pc}
_0210D1F8: .word 0x021162DC
_0210D1FC: .word 0x04000050
	arm_func_end FUN_ov17_0210d1b0

	arm_func_start FUN_ov17_0210d200
FUN_ov17_0210d200: ; 0x0210D200
	ldr r0, _0210D20C ; =0x021162DC
	ldr r12, _0210D210 ; =FUN_ov17_0210e0cc
	bx r12
_0210D20C: .word 0x021162DC
_0210D210: .word FUN_ov17_0210e0cc
	arm_func_end FUN_ov17_0210d200

	arm_func_start FUN_ov17_0210d214
FUN_ov17_0210d214: ; 0x0210D214
	cmp r0, #1
	ldreq r0, _0210D234 ; =0x021162DC
	ldreq r0, [r0]
	ldrne r0, _0210D234 ; =0x021162DC
	ldrne r0, [r0]
	addne r0, r0, #0xc
	ldrb r0, [r0, #9]
	bx lr
_0210D234: .word 0x021162DC
	arm_func_end FUN_ov17_0210d214

	arm_func_start FUN_ov17_0210d238
FUN_ov17_0210d238: ; 0x0210D238
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	ldr r4, _0210D2EC ; =0x021126E8
	mov r6, r0
	ldrb r0, [r4, #3]
	ldrb lr, [r4]
	ldrb r12, [r4, #1]
	strb r0, [sp, #3]
	cmp r1, #1
	ldrb r7, [r4, #2]
	ldreq r0, _0210D2F0 ; =0x021162DC
	mov r5, r3
	ldreq r4, [r0]
	ldrne r0, _0210D2F0 ; =0x021162DC
	strb lr, [sp]
	ldrne r0, [r0]
	strb r12, [sp, #1]
	addne r4, r0, #0xc
	ldrb r0, [r4, #9]
	strb r7, [sp, #2]
	cmp r0, #0
	movne r0, #0
	ldmnefd sp!, {r3, r4, r5, r6, r7, pc}
	add r0, sp, #0
	cmp r1, #1
	mov r1, r2
	ldrsb r2, [r0, r6]
	bne _0210D2AC
	ldr r0, _0210D2F4 ; =0x04001050
	b _0210D2B0
_0210D2AC:
	ldr r0, _0210D2F8 ; =0x04000050
_0210D2B0:
	bl FUN_0200462c
	mov r7, #1
	ldr r1, _0210D2FC ; =FUN_ov17_0210d300
	mov r0, r7
	mov r2, r4
	mov r3, #0xc8
	bl FUN_ov17_0210f314
	str r0, [r4]
	mov r0, #0
	strh r0, [r4, #4]
	strb r6, [r4, #8]
	strh r5, [r4, #6]
	mov r0, r7
	strb r7, [r4, #9]
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_0210D2EC: .word 0x021126E8
_0210D2F0: .word 0x021162DC
_0210D2F4: .word 0x04001050
_0210D2F8: .word 0x04000050
_0210D2FC: .word FUN_ov17_0210d300
	arm_func_end FUN_ov17_0210d238

	arm_func_start FUN_ov17_0210d300
FUN_ov17_0210d300: ; 0x0210D300
	stmfd sp!, {r4, r5, r6, r7, r8, r9, r10, lr}
	sub sp, sp, #8
	ldr r3, _0210D410 ; =0x021126E4
	ldr r2, _0210D414 ; =0x021126E0
	mov r4, r1
	ldrsh r1, [r4, #4]
	ldrb r9, [r3]
	ldrb r8, [r3, #1]
	ldrb r7, [r3, #2]
	ldrb r6, [r3, #3]
	ldrb lr, [r2]
	ldrb r12, [r2, #1]
	ldrb r3, [r2, #2]
	ldrb r2, [r2, #3]
	add r5, r1, #1
	strb r6, [sp, #7]
	strh r5, [r4, #4]
	ldrsh r10, [r4, #4]
	mov r5, r0
	ldrh r1, [r4, #6]
	mov r0, r10, lsl #4
	strb r9, [sp, #4]
	strb r8, [sp, #5]
	strb r7, [sp, #6]
	strb lr, [sp]
	strb r12, [sp, #1]
	strb r3, [sp, #2]
	strb r2, [sp, #3]
	add r6, sp, #4
	bl FUN_020096bc
	ldrb r2, [r4, #8]
	mov r1, r0
	ldrb r0, [r6, r2]
	tst r0, #1
	rsbne r1, r1, #0x10
	tst r0, #0x10
	ldr r0, _0210D418 ; =0x021162DC
	rsbne r1, r1, #0
	ldr r0, [r0]
	cmp r4, r0
	bne _0210D3AC
	ldr r0, _0210D41C ; =0x04001050
	b _0210D3B0
_0210D3AC:
	ldr r0, _0210D420 ; =0x04000050
_0210D3B0:
	bl FUN_02004650
	ldrsh r1, [r4, #4]
	ldrh r0, [r4, #6]
	cmp r1, r0
	addlt sp, sp, #8
	ldmltfd sp!, {r4, r5, r6, r7, r8, r9, r10, pc}
	ldr r0, _0210D418 ; =0x021162DC
	ldrb r2, [r4, #8]
	ldr r0, [r0]
	add r1, sp, #0
	cmp r4, r0
	bne _0210D3E8
	ldr r0, _0210D41C ; =0x04001050
	b _0210D3EC
_0210D3E8:
	ldr r0, _0210D420 ; =0x04000050
_0210D3EC:
	ldrsb r1, [r1, r2]
	bl FUN_02004650
	mov r2, #0
	mov r1, r5
	mov r0, #1
	strb r2, [r4, #9]
	bl FUN_ov17_0210f3b8
	add sp, sp, #8
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, pc}
_0210D410: .word 0x021126E4
_0210D414: .word 0x021126E0
_0210D418: .word 0x021162DC
_0210D41C: .word 0x04001050
_0210D420: .word 0x04000050
	arm_func_end FUN_ov17_0210d300

	arm_func_start FUN_ov17_0210d424
FUN_ov17_0210d424: ; 0x0210D424
	stmfd sp!, {r4, r5, r6, lr}
	ldr r1, _0210D478 ; =0x021162DC
	mov r6, r0
	ldr r5, [r1]
	ldrb r0, [r5, #9]
	cmp r0, #0
	movne r0, #0
	ldmnefd sp!, {r4, r5, r6, pc}
	mov r4, #1
	ldr r1, _0210D47C ; =FUN_ov17_0210d480
	mov r0, r4
	mov r2, r5
	mov r3, #0xc8
	bl FUN_ov17_0210f314
	str r0, [r5]
	mov r0, #0
	strh r0, [r5, #4]
	strh r6, [r5, #6]
	mov r0, r4
	strb r4, [r5, #9]
	ldmfd sp!, {r4, r5, r6, pc}
_0210D478: .word 0x021162DC
_0210D47C: .word FUN_ov17_0210d480
	arm_func_end FUN_ov17_0210d424

	arm_func_start FUN_ov17_0210d480
FUN_ov17_0210d480: ; 0x0210D480
	stmfd sp!, {r3, lr}
	ldrsh r3, [r1, #4]
	ldrh r2, [r1, #6]
	add r3, r3, #1
	strh r3, [r1, #4]
	ldrsh r3, [r1, #4]
	cmp r3, r2
	ldmltfd sp!, {r3, pc}
	mov r2, #0
	strb r2, [r1, #9]
	mov r1, r0
	mov r0, #1
	bl FUN_ov17_0210f3b8
	ldmfd sp!, {r3, pc}
	arm_func_end FUN_ov17_0210d480

	arm_func_start FUN_ov17_0210d4b8
FUN_ov17_0210d4b8: ; 0x0210D4B8
	stmfd sp!, {r4, r5, r6, r7, r8, lr}
	mov r0, #0x680
	mov r1, #4
	bl FUN_ov17_0210e0a8
	ldr r4, _0210D58C ; =0x021162E0
	add r1, r0, #0x10
	str r0, [r4]
	mov r0, #0x20
	mov r2, #0x30
	bl FUN_ov17_0210d0a4
	ldr r1, [r4]
	str r0, [r1, #0x670]
	bl FUN_ov17_020f8b5c
	cmp r0, #6
	mov r8, #0
	mov r5, #4
	bne _0210D544
	ldr r7, _0210D590 ; =0x02113C54
	mov r6, r8
_0210D504:
	ldr r0, [r7, r8, lsl #2]
	mov r1, r6
	mov r2, r5
	bl FUN_ov17_0210c7fc
	ldr r1, [r4]
	add r1, r1, r8, lsl #2
	str r0, [r1, #0x674]
	ldr r2, [r4]
	add r0, r2, r8, lsl #2
	ldr r1, [r0, #0x674]
	add r0, r2, r8, lsl #3
	bl FUN_02018264
	add r8, r8, #1
	cmp r8, #2
	blt _0210D504
	ldmfd sp!, {r4, r5, r6, r7, r8, pc}
_0210D544:
	ldr r7, _0210D594 ; =0x02113C5C
	mov r6, r8
_0210D54C:
	ldr r0, [r7, r8, lsl #2]
	mov r1, r6
	mov r2, r5
	bl FUN_ov17_0210c7fc
	ldr r1, [r4]
	add r1, r1, r8, lsl #2
	str r0, [r1, #0x674]
	ldr r2, [r4]
	add r0, r2, r8, lsl #2
	ldr r1, [r0, #0x674]
	add r0, r2, r8, lsl #3
	bl FUN_02018264
	add r8, r8, #1
	cmp r8, #2
	blt _0210D54C
	ldmfd sp!, {r4, r5, r6, r7, r8, pc}
_0210D58C: .word 0x021162E0
_0210D590: .word 0x02113C54
_0210D594: .word 0x02113C5C
	arm_func_end FUN_ov17_0210d4b8

	arm_func_start FUN_ov17_0210d598
FUN_ov17_0210d598: ; 0x0210D598
	stmfd sp!, {r3, r4, r5, lr}
	ldr r4, _0210D5DC ; =0x021162E0
	mov r5, #0
_0210D5A4:
	ldr r0, [r4]
	add r0, r0, r5, lsl #2
	ldr r0, [r0, #0x674]
	bl FUN_ov17_0210c8fc
	add r5, r5, #1
	cmp r5, #2
	blt _0210D5A4
	ldr r0, _0210D5DC ; =0x021162E0
	ldr r0, [r0]
	ldr r0, [r0, #0x670]
	bl FUN_ov17_0210d0e4
	ldr r0, _0210D5E0 ; =0x021162E0
	bl FUN_ov17_0210e0cc
	ldmfd sp!, {r3, r4, r5, pc}
_0210D5DC: .word 0x021162E0
_0210D5E0: .word 0x021162E0
	arm_func_end FUN_ov17_0210d598

	arm_func_start FUN_ov17_0210d5e4
FUN_ov17_0210d5e4: ; 0x0210D5E4
	stmfd sp!, {r4, r5, r6, r7, r8, lr}
	sub sp, sp, #8
	ldr r4, _0210D6BC ; =0x021162E0
	mov r7, r0
	ldr r0, [r4]
	mov r6, r1
	ldr r0, [r0, #0x670]
	mov r5, r2
	mov r8, r3
	bl FUN_ov17_0210d158
	mov r4, r0
	strb r6, [r4, #0x2e]
	mul r1, r6, r5
	mov r2, r8
	strb r5, [r4, #0x2f]
	mov r0, r7
	add r3, sp, #4
	bl FUN_ov17_0210ecf0
	str r0, [r4, #0x28]
	ldr r1, [sp, #4]
	mov r0, r6
	strh r1, [r4, #0x2c]
	mov r1, r5
	bl FUN_02019448
	ldr r1, [sp, #0x20]
	mov r12, #0x6600000
	str r0, [r1]
	cmp r7, #1
	ldr r7, [sp, #4]
	mov r1, #4
	movne r12, #0x6400000
	str r1, [sp]
	mov r0, r4
	mov r2, r6
	mov r3, r5
	add r1, r12, r7, lsl #7
	bl FUN_020192b8
	ldr r1, [r4, #0x14]
	mov r0, r4
	ldr r2, [r1, #4]
	mov r1, #0
	blx r2
	ldr r0, _0210D6BC ; =0x021162E0
	ldr r2, [sp, #0x24]
	ldr r0, [r0]
	mov r1, #1
	str r4, [r4, #0x18]
	add r0, r0, r2, lsl #3
	str r0, [r4, #0x1c]
	str r1, [r4, #0x20]
	mov r0, r4
	str r1, [r4, #0x24]
	add sp, sp, #8
	ldmfd sp!, {r4, r5, r6, r7, r8, pc}
_0210D6BC: .word 0x021162E0
	arm_func_end FUN_ov17_0210d5e4

	arm_func_start FUN_ov17_0210d6c0
FUN_ov17_0210d6c0: ; 0x0210D6C0
	stmfd sp!, {r4, lr}
	mov r4, r0
	ldr r0, [r4, #0x28]
	bl FUN_ov17_0210ee54
	ldr r0, _0210D6E8 ; =0x021162E0
	mov r1, r4
	ldr r0, [r0]
	ldr r0, [r0, #0x670]
	bl FUN_ov17_0210d100
	ldmfd sp!, {r4, pc}
_0210D6E8: .word 0x021162E0
	arm_func_end FUN_ov17_0210d6c0

	arm_func_start FUN_ov17_0210d6ec
FUN_ov17_0210d6ec: ; 0x0210D6EC
	stmfd sp!, {r4, r5, r6, r7, r8, lr}
	sub sp, sp, #0x10
	mov r8, r0
	ldr r0, _0210D834 ; =0x021162E0
	ldr r3, _0210D838 ; =0x021126F2
	mov r4, r8, lsl #2
	ldr r2, _0210D83C ; =0x021126F0
	ldrh r6, [r3, r4]
	ldrh r7, [r2, r4]
	ldr r0, [r0]
	mov r4, r1
	add r3, r0, #0x610
	mov r0, #0x30
	mul r2, r7, r6
	mla r5, r8, r0, r3
	mov r0, r2, lsl #5
	mov r1, #0x20
	bl FUN_ov17_0210e0a8
	str r0, [r5, #0x28]
	cmp r8, #1
	ldr r0, _0210D840 ; =0x0000FFBF
	bne _0210D74C
	ldr r2, _0210D844 ; =0x04001008
	b _0210D750
_0210D74C:
	ldr r2, _0210D848 ; =0x04000008
_0210D750:
	ldrh r1, [r2]
	and r0, r1, r0
	strh r0, [r2]
	ldrh r0, [r2]
	and r0, r0, #0x43
	orr r0, r0, #0xc00
	strh r0, [r2]
	mov r0, #4
	str r0, [sp]
	ldr r1, [r5, #0x28]
	mov r0, r5
	mov r2, r7
	mov r3, r6
	bl FUN_0201928c
	ldr r0, _0210D834 ; =0x021162E0
	mov r1, #1
	ldr r0, [r0]
	cmp r8, #1
	str r5, [r5, #0x18]
	add r0, r0, r4, lsl #3
	str r0, [r5, #0x1c]
	str r1, [r5, #0x20]
	str r1, [r5, #0x24]
	bne _0210D7B8
	bl FUN_02004cc0
	b _0210D7BC
_0210D7B8:
	bl FUN_02004c8c
_0210D7BC:
	ldr r1, _0210D84C ; =0x021126EC
	mov r2, r8, lsl #1
	mov r4, #0
	ldrh r12, [r1, r2]
	str r4, [sp]
	mov r1, #0x20
	str r1, [sp, #4]
	mov r1, r7
	mov r2, r6
	mov r3, r4
	str r12, [sp, #8]
	mov r6, #0xf
	str r6, [sp, #0xc]
	bl FUN_0201933c
	mov r0, r5
	mov r1, r4
	bl FUN_ov17_0210dba8
	ldr r0, _0210D834 ; =0x021162E0
	ldr r1, _0210D850 ; =FUN_ov17_0210d854
	ldr r2, [r0]
	mov r0, #1
	add r2, r2, #0x27c
	add r2, r2, #0x400
	add r2, r2, r8
	mov r3, #0xc8
	bl FUN_ov17_0210f314
	str r0, [r5, #0x2c]
	mov r0, r5
	add sp, sp, #0x10
	ldmfd sp!, {r4, r5, r6, r7, r8, pc}
_0210D834: .word 0x021162E0
_0210D838: .word 0x021126F2
_0210D83C: .word 0x021126F0
_0210D840: .word 0x0000FFBF
_0210D844: .word 0x04001008
_0210D848: .word 0x04000008
_0210D84C: .word 0x021126EC
_0210D850: .word FUN_ov17_0210d854
	arm_func_end FUN_ov17_0210d6ec

	arm_func_start FUN_ov17_0210d854
FUN_ov17_0210d854: ; 0x0210D854
	stmfd sp!, {r4, r5, r6, lr}
	mov r4, r1
	ldrb r0, [r4]
	cmp r0, #0
	ldmeqfd sp!, {r4, r5, r6, pc}
	ldr r5, _0210D8D8 ; =0x021162E0
	ldr r1, [r5]
	add r0, r1, #0x27c
	add r0, r0, #0x400
	cmp r4, r0
	bne _0210D8A8
	mov r6, #0x6000
	ldr r0, [r1, #0x638]
	mov r1, r6
	bl DC_FlushRange
	ldr r0, [r5]
	mov r2, r6
	ldr r0, [r0, #0x638]
	mov r1, #0
	bl FUN_0200577c
	b _0210D8CC
_0210D8A8:
	mov r6, #0x3000
	ldr r0, [r1, #0x668]
	mov r1, r6
	bl DC_FlushRange
	ldr r0, [r5]
	mov r1, r6
	ldr r0, [r0, #0x668]
	mov r2, r6
	bl FUN_020057ec
_0210D8CC:
	mov r0, #0
	strb r0, [r4]
	ldmfd sp!, {r4, r5, r6, pc}
_0210D8D8: .word 0x021162E0
	arm_func_end FUN_ov17_0210d854

	arm_func_start FUN_ov17_0210d8dc
FUN_ov17_0210d8dc: ; 0x0210D8DC
	stmfd sp!, {r4, lr}
	mov r4, r0
	ldr r1, [r4, #0x2c]
	mov r0, #1
	bl FUN_ov17_0210f3d8
	ldr r0, _0210D938 ; =0x021162E0
	ldr r0, [r0]
	add r0, r0, #0x610
	cmp r4, r0
	bne _0210D918
	bl FUN_02004f24
	mov r1, r0
	mov r0, #0
	mov r2, #0x6000
	b _0210D928
_0210D918:
	bl FUN_02004f24
	mov r1, r0
	mov r0, #0
	mov r2, #0x3000
_0210D928:
	bl MIi_CpuClear16
	add r0, r4, #0x28
	bl FUN_ov17_0210e0cc
	ldmfd sp!, {r4, pc}
_0210D938: .word 0x021162E0
	arm_func_end FUN_ov17_0210d8dc

	arm_func_start FUN_ov17_0210d93c
FUN_ov17_0210d93c: ; 0x0210D93C
	ldr r2, _0210D958 ; =0x021162E0
	mov r1, #0x30
	ldr r2, [r2]
	ldr r12, _0210D95C ; =FUN_ov17_0210d8dc
	add r2, r2, #0x610
	mla r0, r1, r0, r2
	bx r12
_0210D958: .word 0x021162E0
_0210D95C: .word FUN_ov17_0210d8dc
	arm_func_end FUN_ov17_0210d93c

	arm_func_start FUN_ov17_0210d960
FUN_ov17_0210d960: ; 0x0210D960
	stmfd sp!, {r4, lr}
	sub sp, sp, #0x10
	ldr r12, [r0, #0x1c]
	add r4, sp, #0xc
	ldr r12, [r12]
	mov lr, #0
	ldr r12, [r12, #8]
	strb lr, [r4]
	ldrb r12, [r12, #7]
	strb lr, [r4, #1]
	cmp r12, #7
	addls pc, pc, r12, lsl #2
	b _0210D9D8
_0210D994: ; jump table
	b _0210D9B4 ; case 0
	b _0210D9C0 ; case 1
	b _0210D9C0 ; case 2
	b _0210D9C8 ; case 3
	b _0210D9C8 ; case 4
	b _0210D9D0 ; case 5
	b _0210D9D0 ; case 6
	b _0210D9B4 ; case 7
_0210D9B4:
	mov r12, #1
_0210D9B8:
	strb r12, [sp, #0xc]
	b _0210D9D8
_0210D9C0:
	mov r12, #1
	b _0210D9D4
_0210D9C8:
	sub r12, lr, #1
	b _0210D9B8
_0210D9D0:
	sub r12, lr, #1
_0210D9D4:
	strb r12, [sp, #0xd]
_0210D9D8:
	ldr lr, [sp, #0x18]
	ldr r12, [sp, #0x1c]
	str lr, [sp]
	ldrb lr, [sp, #0xc]
	str r12, [sp, #4]
	ldrb r12, [sp, #0xd]
	strb lr, [sp, #8]
	add r0, r0, #0x18
	strb r12, [sp, #9]
	bl FUN_020199a8
	add sp, sp, #0x10
	ldmfd sp!, {r4, pc}
	arm_func_end FUN_ov17_0210d960

	arm_func_start FUN_ov17_0210da08
FUN_ov17_0210da08: ; 0x0210DA08
	stmfd sp!, {r3, lr}
	sub sp, sp, #8
	ldrh r12, [sp, #0x10]
	str r3, [sp]
	ldr r3, _0210DA40 ; =0x021162E0
	str r12, [sp, #4]
	ldr lr, [r3]
	ldr r12, [sp, #0x14]
	mov r3, r2
	mov r2, r1
	add r1, lr, r12, lsl #3
	bl FUN_02019170
	add sp, sp, #8
	ldmfd sp!, {r3, pc}
_0210DA40: .word 0x021162E0
	arm_func_end FUN_ov17_0210da08

	arm_func_start FUN_ov17_0210da44
FUN_ov17_0210da44: ; 0x0210DA44
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, lr}
	sub sp, sp, #8
	ldr r6, [sp, #0x34]
	mov r9, r1
	ldrh r1, [r6]
	ldr r7, [sp, #0x30]
	ldr r5, [sp, #0x38]
	cmp r1, #0
	mov r10, r0
	mov r8, r2
	mov r11, r3
	addeq sp, sp, #8
	ldmeqfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_0210DA78:
	ldr r0, _0210DAE8 ; =0x021162E0
	ldr r0, [r0]
	add r4, r0, r5, lsl #3
	mov r0, r4
	bl FUN_020182ac
	mov r1, r0
	ldr r0, _0210DAEC ; =0x0000FFFF
	cmp r1, r0
	ldreq r0, [r4]
	ldreqh r1, [r0, #2]
	mov r0, r4
	bl FUN_020182f4
	ldrh r1, [r6]
	mov r2, r0
	mov r0, r10
	stmia sp, {r1, r5}
	ldrsb r1, [r2, #2]
	mov r2, r8
	mov r3, r11
	sub r1, r7, r1
	add r1, r9, r1, asr #1
	bl FUN_ov17_0210da08
	ldrh r1, [r6, #2]!
	add r9, r9, r7
	cmp r1, #0
	bne _0210DA78
	add sp, sp, #8
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_0210DAE8: .word 0x021162E0
_0210DAEC: .word 0x0000FFFF
	arm_func_end FUN_ov17_0210da44

	arm_func_start FUN_ov17_0210daf0
FUN_ov17_0210daf0: ; 0x0210DAF0
	stmfd sp!, {r4, lr}
	sub sp, sp, #0x18
	ldr r12, [r0, #0x1c]
	add r4, sp, #0x14
	ldr r12, [r12]
	mov lr, #0
	ldr r12, [r12, #8]
	strb lr, [r4]
	ldrb r12, [r12, #7]
	strb lr, [r4, #1]
	cmp r12, #7
	addls pc, pc, r12, lsl #2
	b _0210DB68
_0210DB24: ; jump table
	b _0210DB44 ; case 0
	b _0210DB50 ; case 1
	b _0210DB50 ; case 2
	b _0210DB58 ; case 3
	b _0210DB58 ; case 4
	b _0210DB60 ; case 5
	b _0210DB60 ; case 6
	b _0210DB44 ; case 7
_0210DB44:
	mov r12, #1
_0210DB48:
	strb r12, [sp, #0x14]
	b _0210DB68
_0210DB50:
	mov r12, #1
	b _0210DB64
_0210DB58:
	sub r12, lr, #1
	b _0210DB48
_0210DB60:
	sub r12, lr, #1
_0210DB64:
	strb r12, [sp, #0x15]
_0210DB68:
	ldr lr, [sp, #0x20]
	ldr r12, [sp, #0x24]
	str lr, [sp]
	ldr lr, [sp, #0x28]
	str r12, [sp, #4]
	ldr r12, [sp, #0x2c]
	str lr, [sp, #8]
	ldrb lr, [sp, #0x14]
	str r12, [sp, #0xc]
	ldrb r12, [sp, #0x15]
	strb lr, [sp, #0x10]
	add r0, r0, #0x18
	strb r12, [sp, #0x11]
	bl FUN_02019acc
	add sp, sp, #0x18
	ldmfd sp!, {r4, pc}
	arm_func_end FUN_ov17_0210daf0

	arm_func_start FUN_ov17_0210dba8
FUN_ov17_0210dba8: ; 0x0210DBA8
	stmfd sp!, {r3, lr}
	ldr r2, [r0, #0x14]
	ldr r2, [r2, #4]
	blx r2
	ldmfd sp!, {r3, pc}
	arm_func_end FUN_ov17_0210dba8

	arm_func_start FUN_ov17_0210dbbc
FUN_ov17_0210dbbc: ; 0x0210DBBC
	stmfd sp!, {r4, r5, r6, r7, r8, r9, r10, lr}
	sub sp, sp, #0x10
	mov r8, r3
	mov r4, r0
	mov r7, #0
	mov r10, r1
	mov r0, r8
	mov r1, r7
	mov r9, r2
	bl FUN_ov17_0210cc74
	sub r5, r7, #1
	mov r6, r0
	mov r0, r8
	mov r1, r5
	mov r2, r7
	mov r3, r7
	bl FUN_ov17_0210cc88
	mov r0, r8
	mov r1, r5
	mov r2, r7
	mov r3, #0xf
	bl FUN_ov17_0210cd2c
	mov r0, r8
	mov r1, r5
	ldr r2, [sp, #0x30]
	bl FUN_ov17_0210ce84
	str r9, [sp]
	str r7, [sp, #4]
	mov r0, r6
	mov r3, r10
	ldrh r2, [r4, #0x2c]
	mov r1, #2
	str r2, [sp, #8]
	str r1, [sp, #0xc]
	ldrb r1, [r4, #0x2e]
	ldrb r2, [r4, #0x2f]
	bl FUN_020194a4
	add sp, sp, #0x10
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, pc}
	arm_func_end FUN_ov17_0210dbbc

	arm_func_start FUN_ov17_0210dc58
FUN_ov17_0210dc58: ; 0x0210DC58
	ldr r1, _0210DC78 ; =0x021162E0
	ldr r2, [r1]
	add r1, r2, #0x610
	cmp r0, r1
	mov r0, #1
	streqb r0, [r2, #0x67c]
	strneb r0, [r2, #0x67d]
	bx lr
_0210DC78: .word 0x021162E0
	arm_func_end FUN_ov17_0210dc58

	arm_func_start FUN_ov17_0210dc7c
FUN_ov17_0210dc7c: ; 0x0210DC7C
	strh r0, [r2]
	strh r1, [r2, #2]
	bx lr
	arm_func_end FUN_ov17_0210dc7c

	arm_func_start FUN_ov17_0210dc88
FUN_ov17_0210dc88: ; 0x0210DC88
	ldr r12, [sp]
	strh r0, [r12]
	strh r1, [r12, #2]
	strh r2, [r12, #4]
	strh r3, [r12, #6]
	bx lr
	arm_func_end FUN_ov17_0210dc88

	arm_func_start FUN_ov17_0210dca0
FUN_ov17_0210dca0: ; 0x0210DCA0
	stmfd sp!, {r3, lr}
	ldrh lr, [r0]
	ldrh r12, [r0, #2]
	ldrh r3, [r1]
	ldrh r0, [r1, #2]
	strh lr, [r2]
	add r1, lr, r3
	add r0, r12, r0
	strh r12, [r2, #2]
	strh r1, [r2, #4]
	strh r0, [r2, #6]
	ldmfd sp!, {r3, pc}
	arm_func_end FUN_ov17_0210dca0

	arm_func_start FUN_ov17_0210dcd0
FUN_ov17_0210dcd0: ; 0x0210DCD0
	cmp r0, #1
	bne _0210DCFC
	ldr r3, _0210DD20 ; =0x04001000
	ldr r2, [r3]
	ldr r0, [r3]
	and r12, r2, #0x1f00
	bic r2, r0, #0x1f00
	orr r0, r1, r12, lsr #8
	orr r0, r2, r0, lsl #8
	str r0, [r3]
	bx lr
_0210DCFC:
	mov r3, #0x4000000
	ldr r2, [r3]
	ldr r0, [r3]
	and r12, r2, #0x1f00
	bic r2, r0, #0x1f00
	orr r0, r1, r12, lsr #8
	orr r0, r2, r0, lsl #8
	str r0, [r3]
	bx lr
_0210DD20: .word 0x04001000
	arm_func_end FUN_ov17_0210dcd0

	arm_func_start FUN_ov17_0210dd24
FUN_ov17_0210dd24: ; 0x0210DD24
	cmp r0, #1
	bne _0210DD54
	ldr r3, _0210DD7C ; =0x04001000
	mvn r0, r1
	ldr r2, [r3]
	ldr r1, [r3]
	and r2, r2, #0x1f00
	bic r1, r1, #0x1f00
	and r0, r0, r2, lsr #8
	orr r0, r1, r0, lsl #8
	str r0, [r3]
	bx lr
_0210DD54:
	mov r3, #0x4000000
	ldr r0, [r3]
	ldr r2, [r3]
	and r12, r0, #0x1f00
	mvn r0, r1
	bic r1, r2, #0x1f00
	and r0, r0, r12, lsr #8
	orr r0, r1, r0, lsl #8
	str r0, [r3]
	bx lr
_0210DD7C: .word 0x04001000
	arm_func_end FUN_ov17_0210dd24

	arm_func_start FUN_ov17_0210dd80
FUN_ov17_0210dd80: ; 0x0210DD80
	cmp r0, #1
	bne _0210DE00
	cmp r1, #0
	ldrh r0, [r2]
	ldrh r3, [r2, #2]
	ldrh r1, [r2, #4]
	ldrh r12, [r2, #6]
	bne _0210DDD0
	mov r2, r0, lsl #8
	mov r0, r3, lsl #8
	and r3, r2, #0xff00
	and r1, r1, #0xff
	orr r3, r3, r1
	ldr r2, _0210DE78 ; =0x04001040
	and r1, r0, #0xff00
	and r0, r12, #0xff
	strh r3, [r2]
	orr r0, r1, r0
	strh r0, [r2, #4]
	bx lr
_0210DDD0:
	mov r2, r0, lsl #8
	mov r0, r3, lsl #8
	and r3, r2, #0xff00
	and r1, r1, #0xff
	orr r3, r3, r1
	ldr r2, _0210DE7C ; =0x04001042
	and r1, r0, #0xff00
	and r0, r12, #0xff
	strh r3, [r2]
	orr r0, r1, r0
	strh r0, [r2, #4]
	bx lr
_0210DE00:
	cmp r1, #0
	ldrh r0, [r2]
	ldrh r3, [r2, #2]
	ldrh r1, [r2, #4]
	ldrh r12, [r2, #6]
	bne _0210DE48
	mov r2, r0, lsl #8
	mov r0, r3, lsl #8
	and r3, r2, #0xff00
	and r1, r1, #0xff
	orr r3, r3, r1
	ldr r2, _0210DE80 ; =0x04000040
	and r1, r0, #0xff00
	and r0, r12, #0xff
	strh r3, [r2]
	orr r0, r1, r0
	strh r0, [r2, #4]
	bx lr
_0210DE48:
	mov r2, r0, lsl #8
	mov r0, r3, lsl #8
	and r3, r2, #0xff00
	and r1, r1, #0xff
	orr r3, r3, r1
	ldr r2, _0210DE84 ; =0x04000042
	and r1, r0, #0xff00
	and r0, r12, #0xff
	strh r3, [r2]
	orr r0, r1, r0
	strh r0, [r2, #4]
	bx lr
_0210DE78: .word 0x04001040
_0210DE7C: .word 0x04001042
_0210DE80: .word 0x04000040
_0210DE84: .word 0x04000042
	arm_func_end FUN_ov17_0210dd80

	arm_func_start FUN_ov17_0210de88
FUN_ov17_0210de88: ; 0x0210DE88
	cmp r1, #3
	addls pc, pc, r1, lsl #2
	bx lr
_0210DE94: ; jump table
	b _0210DEA4 ; case 0
	b _0210DEF4 ; case 1
	b _0210DF44 ; case 2
	b _0210DF94 ; case 3
_0210DEA4:
	cmp r0, #1
	bne _0210DED0
	ldr r0, _0210DFE4 ; =0x04001048
	cmp r3, #0
	ldrh r0, [r0]
	bic r0, r0, #0x3f
	orr r1, r0, r2
	ldr r0, _0210DFE4 ; =0x04001048
	orrne r1, r1, #0x20
	strh r1, [r0]
	bx lr
_0210DED0:
	ldr r0, _0210DFE8 ; =0x04000048
	cmp r3, #0
	ldrh r0, [r0]
	bic r0, r0, #0x3f
	orr r1, r0, r2
	ldr r0, _0210DFE8 ; =0x04000048
	orrne r1, r1, #0x20
	strh r1, [r0]
	bx lr
_0210DEF4:
	cmp r0, #1
	bne _0210DF20
	ldr r0, _0210DFE4 ; =0x04001048
	cmp r3, #0
	ldrh r0, [r0]
	bic r0, r0, #0x3f00
	orr r1, r0, r2, lsl #8
	ldr r0, _0210DFE4 ; =0x04001048
	orrne r1, r1, #0x2000
	strh r1, [r0]
	bx lr
_0210DF20:
	ldr r0, _0210DFE8 ; =0x04000048
	cmp r3, #0
	ldrh r0, [r0]
	bic r0, r0, #0x3f00
	orr r1, r0, r2, lsl #8
	ldr r0, _0210DFE8 ; =0x04000048
	orrne r1, r1, #0x2000
	strh r1, [r0]
	bx lr
_0210DF44:
	cmp r0, #1
	bne _0210DF70
	ldr r0, _0210DFEC ; =0x0400104A
	cmp r3, #0
	ldrh r0, [r0]
	bic r0, r0, #0x3f00
	orr r1, r0, r2, lsl #8
	ldr r0, _0210DFEC ; =0x0400104A
	orrne r1, r1, #0x2000
	strh r1, [r0]
	bx lr
_0210DF70:
	ldr r0, _0210DFF0 ; =0x0400004A
	cmp r3, #0
	ldrh r0, [r0]
	bic r0, r0, #0x3f00
	orr r1, r0, r2, lsl #8
	ldr r0, _0210DFF0 ; =0x0400004A
	orrne r1, r1, #0x2000
	strh r1, [r0]
	bx lr
_0210DF94:
	cmp r0, #1
	bne _0210DFC0
	ldr r0, _0210DFEC ; =0x0400104A
	cmp r3, #0
	ldrh r0, [r0]
	bic r0, r0, #0x3f
	orr r1, r0, r2
	ldr r0, _0210DFEC ; =0x0400104A
	orrne r1, r1, #0x20
	strh r1, [r0]
	bx lr
_0210DFC0:
	ldr r0, _0210DFF0 ; =0x0400004A
	cmp r3, #0
	ldrh r0, [r0]
	bic r0, r0, #0x3f
	orr r1, r0, r2
	ldr r0, _0210DFF0 ; =0x0400004A
	orrne r1, r1, #0x20
	strh r1, [r0]
	bx lr
_0210DFE4: .word 0x04001048
_0210DFE8: .word 0x04000048
_0210DFEC: .word 0x0400104A
_0210DFF0: .word 0x0400004A
	arm_func_end FUN_ov17_0210de88

	arm_func_start FUN_ov17_0210dff4
FUN_ov17_0210dff4: ; 0x0210DFF4
	stmfd sp!, {r4, r5, r6, lr}
	mov r5, #0
	mov r4, #0x40000
	mov r6, r0
	mov r1, r5
	mov r2, r4
	bl MI_CpuFill8
	mov r0, r6
	mov r1, r4
	mov r2, r5
	bl FUN_02017ec0
	ldr r1, _0210E038 ; =0x021162E4
	cmp r0, #0
	str r0, [r1]
	ldmnefd sp!, {r4, r5, r6, pc}
	bl FUN_02004160
	ldmfd sp!, {r4, r5, r6, pc}
_0210E038: .word 0x021162E4
	arm_func_end FUN_ov17_0210dff4

	arm_func_start FUN_ov17_0210e03c
FUN_ov17_0210e03c: ; 0x0210E03C
	stmfd sp!, {r4, lr}
	ldr r4, _0210E058 ; =0x021162E4
	ldr r0, [r4]
	bl FUN_02017ef8
	mov r0, #0
	str r0, [r4]
	ldmfd sp!, {r4, pc}
_0210E058: .word 0x021162E4
	arm_func_end FUN_ov17_0210e03c

	arm_func_start FUN_ov17_0210e05c
FUN_ov17_0210e05c: ; 0x0210E05C
	stmfd sp!, {r4, r5, r6, lr}
	mov r6, r0
	mov r0, #1
	mov r4, r1
	bl FUN_0200102c
	ldr r1, _0210E0A4 ; =0x021162E4
	mov r5, r0
	ldr r0, [r1]
	mov r1, r6
	mov r2, r4
	bl FUN_02017f04
	movs r4, r0
	bne _0210E094
	bl FUN_02004160
_0210E094:
	mov r0, r5
	bl FUN_02000ffc
	mov r0, r4
	ldmfd sp!, {r4, r5, r6, pc}
_0210E0A4: .word 0x021162E4
	arm_func_end FUN_ov17_0210e05c

	arm_func_start FUN_ov17_0210e0a8
FUN_ov17_0210e0a8: ; 0x0210E0A8
	stmfd sp!, {r4, lr}
	mov r4, r0
	bl FUN_ov17_0210e05c
	mov r2, r4
	mov r1, #0
	mov r4, r0
	bl MI_CpuFill8
	mov r0, r4
	ldmfd sp!, {r4, pc}
	arm_func_end FUN_ov17_0210e0a8

	arm_func_start FUN_ov17_0210e0cc
FUN_ov17_0210e0cc: ; 0x0210E0CC
	stmfd sp!, {r3, r4, r5, lr}
	mov r5, r0
	mov r0, #1
	bl FUN_0200102c
	ldr r1, [r5]
	mov r4, r0
	cmp r1, #0
	ldmeqfd sp!, {r3, r4, r5, pc}
	ldr r0, _0210E10C ; =0x021162E4
	ldr r0, [r0]
	bl FUN_02017f34
	mov r0, r4
	bl FUN_02000ffc
	mov r0, #0
	str r0, [r5]
	ldmfd sp!, {r3, r4, r5, pc}
_0210E10C: .word 0x021162E4
	arm_func_end FUN_ov17_0210e0cc

	arm_func_start FUN_ov17_0210e110
FUN_ov17_0210e110: ; 0x0210E110
	stmfd sp!, {r3, r4, r5, lr}
	mov r5, r0
	mov r0, #1
	bl FUN_0200102c
	mov r4, r0
	cmp r5, #0
	ldmeqfd sp!, {r3, r4, r5, pc}
	ldr r0, _0210E148 ; =0x021162E4
	mov r1, r5
	ldr r0, [r0]
	bl FUN_02017f34
	mov r0, r4
	bl FUN_02000ffc
	ldmfd sp!, {r3, r4, r5, pc}
_0210E148: .word 0x021162E4
	arm_func_end FUN_ov17_0210e110

	arm_func_start FUN_ov17_0210e14c
FUN_ov17_0210e14c: ; 0x0210E14C
	stmfd sp!, {r4, lr}
	sub sp, sp, #8
	mov r0, #0x3a
	mov r1, #4
	bl FUN_ov17_0210e0a8
	ldr r1, _0210E1C8 ; =0x021162E8
	str r0, [r1, #4]
	add r0, sp, #0
	bl FUN_02015f64
	cmp r0, #0
	bne _0210E17C
	bl FUN_02004160
_0210E17C:
	add r0, sp, #0
	bl FUN_02015ff8
	ldr r1, _0210E1C8 ; =0x021162E8
	mov r0, #0
	ldr r2, [r1, #4]
	mov r1, #4
	mov r3, #5
	bl FUN_020161ec
	mov r4, #2
	mov r0, r4
	bl FUN_020166ac
	mov r0, r4
	bl FUN_020166c4
	cmp r0, #0
	beq _0210E1BC
	bl FUN_02004160
_0210E1BC:
	bl FUN_ov17_0210e200
	add sp, sp, #8
	ldmfd sp!, {r4, pc}
_0210E1C8: .word 0x021162E8
	arm_func_end FUN_ov17_0210e14c

	arm_func_start FUN_ov17_0210e1cc
FUN_ov17_0210e1cc: ; 0x0210E1CC
	stmfd sp!, {r4, lr}
	mov r4, #4
_0210E1D4:
	bl FUN_020162f4
	mov r0, r4
	bl FUN_020166ac
	mov r0, r4
	bl FUN_020166c4
	cmp r0, #0
	bne _0210E1D4
	ldr r0, _0210E1FC ; =0x021162EC
	bl FUN_ov17_0210e0cc
	ldmfd sp!, {r4, pc}
_0210E1FC: .word 0x021162EC
	arm_func_end FUN_ov17_0210e1cc

	arm_func_start FUN_ov17_0210e200
FUN_ov17_0210e200: ; 0x0210E200
	stmfd sp!, {r3, lr}
	bl FUN_ov17_0210e210
	bl FUN_ov17_0210e320
	ldmfd sp!, {r3, pc}
	arm_func_end FUN_ov17_0210e200

	arm_func_start FUN_ov17_0210e210
FUN_ov17_0210e210: ; 0x0210E210
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	ldr r0, _0210E310 ; =0x04000130
	ldr r1, _0210E314 ; =0x02FFFFA8
	ldrh r2, [r0]
	ldrh r0, [r1]
	ldr r4, _0210E318 ; =0x021162E8
	mov r3, #0
	orr r0, r2, r0
	eor r0, r0, r1, lsr #12
	and r0, r0, r1, lsr #12
	mov r1, r0, lsl #0x10
	mov r5, r1, lsr #0x10
	and r2, r5, #0x40
	and r5, r5, #0x20
	mvn r2, r2, lsl #1
	ldr r0, [r4, #4]
	and r1, r2, r1, lsr #16
	mvn r5, r5, asr #1
	and r1, r5, r1
	mov r1, r1, lsl #0x10
	ldrh r2, [r0, #0x30]
	mov r12, r1, lsr #0x10
	mov r5, #0x28
	eor r2, r2, r1, lsr #16
	and r2, r2, r1, lsr #16
	strh r2, [r0, #0x32]
	ldrh r2, [r0, #0x30]
	ldr r0, [r4, #4]
	eor r1, r2, r1, lsr #16
	and r1, r2, r1
	strh r1, [r0, #0x36]
	ldr r0, [r4, #4]
	mov r2, #1
	strh r12, [r0, #0x30]
	ldr r1, [r4, #4]
	ldrh r0, [r1, #0x32]
	strh r0, [r1, #0x34]
	ldr r0, _0210E31C ; =0x021162F0
	mov r1, r3
_0210E2AC:
	mov r6, r2, lsl r3
	mov lr, r6, lsl #0x10
	tst r12, lr, lsr #16
	streqb r1, [r0, r3]
	beq _0210E300
	ldrb r6, [r0, r3]
	add r7, r6, #1
	and r6, r7, #0xff
	strb r7, [r0, r3]
	cmp r6, #0x28
	ldreq r7, [r4, #4]
	ldreqh r6, [r7, #0x34]
	orreq r6, r6, lr, lsr #16
	streqh r6, [r7, #0x34]
	beq _0210E300
	cmp r6, #0x2f
	ldreq r7, [r4, #4]
	streqb r5, [r0, r3]
	ldreqh r6, [r7, #0x34]
	orreq r6, r6, lr, lsr #16
	streqh r6, [r7, #0x34]
_0210E300:
	add r3, r3, #1
	cmp r3, #0xe
	blt _0210E2AC
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_0210E310: .word 0x04000130
_0210E314: .word 0x02FFFFA8
_0210E318: .word 0x021162E8
_0210E31C: .word 0x021162F0
	arm_func_end FUN_ov17_0210e210

	arm_func_start FUN_ov17_0210e320
FUN_ov17_0210e320: ; 0x0210E320
	stmfd sp!, {r4, r5, r6, r7, r8, lr}
	sub sp, sp, #8
	ldr r0, _0210E4B4 ; =0x021162E8
	mov r5, #0
	ldr r0, [r0, #4]
	ldrb r0, [r0, #0x38]
	mov r0, r0, lsl #0x1f
	movs r0, r0, lsr #0x1f
	movne r6, #1
	moveq r6, #0
	bl FUN_02016394
	ldr r7, _0210E4B4 ; =0x021162E8
	mov r4, r5
	ldr r3, [r7, #4]
	mov r8, #5
	ldrh r2, [r3, #0x28]
	ldrh r1, [r3, #0x2a]
	strh r2, [r3, #0x2c]
	strh r1, [r3, #0x2e]
_0210E36C:
	ldr r1, [r7, #4]
	add r1, r1, r0, lsl #3
	ldrh r2, [r1, #4]
	cmp r2, #1
	ldreqh r2, [r1, #6]
	cmpeq r2, #0
	bne _0210E3B0
	add r0, sp, #0
	mov r5, #1
	bl FUN_02016590
	ldr r1, _0210E4B4 ; =0x021162E8
	ldrh r0, [sp]
	ldr r2, [r1, #4]
	ldrh r1, [sp, #2]
	add r2, r2, #0x28
	bl FUN_ov17_0210dc7c
	b _0210E3C8
_0210E3B0:
	mov r1, r8
	add r4, r4, #1
	add r0, r0, #4
	bl FUN_020096f8
	cmp r4, #4
	blt _0210E36C
_0210E3C8:
	ldr r0, _0210E4B4 ; =0x021162E8
	eor r7, r5, r6
	ldr r4, [r0, #4]
	and r1, r5, r7
	ldrb r3, [r4, #0x38]
	and r2, r1, #0xff
	and r1, r6, r7
	bic r3, r3, #2
	mov r2, r2, lsl #0x1f
	orr r2, r3, r2, lsr #30
	strb r2, [r4, #0x38]
	ldr r4, [r0, #4]
	and r1, r1, #0xff
	ldrb r3, [r4, #0x38]
	mov r2, r1, lsl #0x1f
	cmp r5, #0
	bic r3, r3, #8
	orr r2, r3, r2, lsr #28
	strb r2, [r4, #0x38]
	ldr r3, [r0, #4]
	and r1, r5, #1
	ldrb r2, [r3, #0x38]
	addeq sp, sp, #8
	bic r2, r2, #1
	orr r1, r2, r1
	strb r1, [r3, #0x38]
	ldr r3, [r0, #4]
	ldrb r2, [r3, #0x38]
	mov r1, r2, lsl #0x1e
	mov r1, r1, lsr #0x1f
	bic r2, r2, #4
	mov r1, r1, lsl #0x1f
	orr r1, r2, r1, lsr #29
	strb r1, [r3, #0x38]
	moveq r1, #0
	streqb r1, [r0, #1]
	ldmeqfd sp!, {r4, r5, r6, r7, r8, pc}
	ldrb r1, [r0, #1]
	add r2, r1, #1
	and r1, r2, #0xff
	cmp r1, #0x28
	strb r2, [r0, #1]
	ldreq r1, [r0, #4]
	addeq sp, sp, #8
	ldreqb r0, [r1, #0x38]
	orreq r0, r0, #4
	streqb r0, [r1, #0x38]
	ldmeqfd sp!, {r4, r5, r6, r7, r8, pc}
	cmp r1, #0x2f
	addne sp, sp, #8
	ldmnefd sp!, {r4, r5, r6, r7, r8, pc}
	ldr r3, [r0, #4]
	mov r1, #0x28
	ldrb r2, [r3, #0x38]
	orr r2, r2, #4
	strb r2, [r3, #0x38]
	strb r1, [r0, #1]
	add sp, sp, #8
	ldmfd sp!, {r4, r5, r6, r7, r8, pc}
_0210E4B4: .word 0x021162E8
	arm_func_end FUN_ov17_0210e320

	arm_func_start FUN_ov17_0210e4b8
FUN_ov17_0210e4b8: ; 0x0210E4B8
	ldr r1, _0210E4F0 ; =0x02FFFFA8
	ldrh r1, [r1]
	and r1, r1, #0x8000
	movs r1, r1, asr #0xf
	movne r0, #0
	bxne lr
	ldr r1, _0210E4F4 ; =0x021162E8
	ldr r1, [r1, #4]
	ldrh r1, [r1, #0x32]
	and r1, r0, r1
	cmp r0, r1
	moveq r0, #1
	movne r0, #0
	bx lr
_0210E4F0: .word 0x02FFFFA8
_0210E4F4: .word 0x021162E8
	arm_func_end FUN_ov17_0210e4b8

	arm_func_start FUN_ov17_0210e4f8
FUN_ov17_0210e4f8: ; 0x0210E4F8
	ldr r1, _0210E530 ; =0x02FFFFA8
	ldrh r1, [r1]
	and r1, r1, #0x8000
	movs r1, r1, asr #0xf
	movne r0, #0
	bxne lr
	ldr r1, _0210E534 ; =0x021162E8
	ldr r1, [r1, #4]
	ldrh r1, [r1, #0x34]
	and r1, r0, r1
	cmp r0, r1
	moveq r0, #1
	movne r0, #0
	bx lr
_0210E530: .word 0x02FFFFA8
_0210E534: .word 0x021162E8
	arm_func_end FUN_ov17_0210e4f8

	arm_func_start FUN_ov17_0210e538
FUN_ov17_0210e538: ; 0x0210E538
	ldr r1, _0210E570 ; =0x02FFFFA8
	ldrh r1, [r1]
	and r1, r1, #0x8000
	movs r1, r1, asr #0xf
	movne r0, #0
	bxne lr
	ldr r1, _0210E574 ; =0x021162E8
	ldr r1, [r1, #4]
	ldrh r1, [r1, #0x36]
	and r1, r0, r1
	cmp r0, r1
	moveq r0, #1
	movne r0, #0
	bx lr
_0210E570: .word 0x02FFFFA8
_0210E574: .word 0x021162E8
	arm_func_end FUN_ov17_0210e538

	arm_func_start FUN_ov17_0210e578
FUN_ov17_0210e578: ; 0x0210E578
	ldr r1, _0210E5F8 ; =0x02FFFFA8
	ldrh r1, [r1]
	and r1, r1, #0x8000
	movs r1, r1, asr #0xf
	movne r0, #0
	bxne lr
	ldr r1, _0210E5FC ; =0x021162E8
	ldr r3, [r1, #4]
	ldrb r1, [r3, #0x38]
	mov r1, r1, lsl #0x1f
	movs r1, r1, lsr #0x1f
	moveq r0, #0
	bxeq lr
	ldrh r2, [r3, #0x28]
	ldrh r1, [r0]
	cmp r1, r2
	movhi r0, #0
	bxhi lr
	ldrh r1, [r0, #4]
	cmp r1, r2
	movlo r0, #0
	bxlo lr
	ldrh r2, [r3, #0x2a]
	ldrh r1, [r0, #2]
	cmp r1, r2
	movhi r0, #0
	bxhi lr
	ldrh r0, [r0, #6]
	cmp r0, r2
	movhs r0, #1
	movlo r0, #0
	bx lr
_0210E5F8: .word 0x02FFFFA8
_0210E5FC: .word 0x021162E8
	arm_func_end FUN_ov17_0210e578

	arm_func_start FUN_ov17_0210e600
FUN_ov17_0210e600: ; 0x0210E600
	ldr r1, _0210E680 ; =0x02FFFFA8
	ldrh r1, [r1]
	and r1, r1, #0x8000
	movs r1, r1, asr #0xf
	movne r0, #0
	bxne lr
	ldr r1, _0210E684 ; =0x021162E8
	ldr r3, [r1, #4]
	ldrb r1, [r3, #0x38]
	mov r1, r1, lsl #0x1e
	movs r1, r1, lsr #0x1f
	moveq r0, #0
	bxeq lr
	ldrh r2, [r3, #0x28]
	ldrh r1, [r0]
	cmp r1, r2
	movhi r0, #0
	bxhi lr
	ldrh r1, [r0, #4]
	cmp r1, r2
	movlo r0, #0
	bxlo lr
	ldrh r2, [r3, #0x2a]
	ldrh r1, [r0, #2]
	cmp r1, r2
	movhi r0, #0
	bxhi lr
	ldrh r0, [r0, #6]
	cmp r0, r2
	movhs r0, #1
	movlo r0, #0
	bx lr
_0210E680: .word 0x02FFFFA8
_0210E684: .word 0x021162E8
	arm_func_end FUN_ov17_0210e600

	arm_func_start FUN_ov17_0210e688
FUN_ov17_0210e688: ; 0x0210E688
	ldr r1, _0210E708 ; =0x02FFFFA8
	ldrh r1, [r1]
	and r1, r1, #0x8000
	movs r1, r1, asr #0xf
	movne r0, #0
	bxne lr
	ldr r1, _0210E70C ; =0x021162E8
	ldr r3, [r1, #4]
	ldrb r1, [r3, #0x38]
	mov r1, r1, lsl #0x1d
	movs r1, r1, lsr #0x1f
	moveq r0, #0
	bxeq lr
	ldrh r2, [r3, #0x28]
	ldrh r1, [r0]
	cmp r1, r2
	movhi r0, #0
	bxhi lr
	ldrh r1, [r0, #4]
	cmp r1, r2
	movlo r0, #0
	bxlo lr
	ldrh r2, [r3, #0x2a]
	ldrh r1, [r0, #2]
	cmp r1, r2
	movhi r0, #0
	bxhi lr
	ldrh r0, [r0, #6]
	cmp r0, r2
	movhs r0, #1
	movlo r0, #0
	bx lr
_0210E708: .word 0x02FFFFA8
_0210E70C: .word 0x021162E8
	arm_func_end FUN_ov17_0210e688

	arm_func_start FUN_ov17_0210e710
FUN_ov17_0210e710: ; 0x0210E710
	ldr r1, _0210E790 ; =0x02FFFFA8
	ldrh r1, [r1]
	and r1, r1, #0x8000
	movs r1, r1, asr #0xf
	movne r0, #0
	bxne lr
	ldr r1, _0210E794 ; =0x021162E8
	ldr r3, [r1, #4]
	ldrb r1, [r3, #0x38]
	mov r1, r1, lsl #0x1c
	movs r1, r1, lsr #0x1f
	moveq r0, #0
	bxeq lr
	ldrh r2, [r3, #0x28]
	ldrh r1, [r0]
	cmp r1, r2
	movhi r0, #0
	bxhi lr
	ldrh r1, [r0, #4]
	cmp r1, r2
	movlo r0, #0
	bxlo lr
	ldrh r2, [r3, #0x2a]
	ldrh r1, [r0, #2]
	cmp r1, r2
	movhi r0, #0
	bxhi lr
	ldrh r0, [r0, #6]
	cmp r0, r2
	movhs r0, #1
	movlo r0, #0
	bx lr
_0210E790: .word 0x02FFFFA8
_0210E794: .word 0x021162E8
	arm_func_end FUN_ov17_0210e710

	arm_func_start FUN_ov17_0210e798
FUN_ov17_0210e798: ; 0x0210E798
	stmfd sp!, {r3, lr}
	sub sp, sp, #8
	ldr r1, _0210E7F4 ; =0x02FFFFA8
	ldrh r1, [r1]
	and r1, r1, #0x8000
	movs r1, r1, asr #0xf
	addne sp, sp, #8
	movne r0, #0
	ldmnefd sp!, {r3, pc}
	ldrh r12, [r0]
	ldrh r3, [r0, #2]
	ldrh r2, [r0, #4]
	ldrh r1, [r0, #6]
	add r0, sp, #0
	add r2, r12, r2
	add r1, r3, r1
	strh r12, [sp]
	strh r3, [sp, #2]
	strh r2, [sp, #4]
	strh r1, [sp, #6]
	bl FUN_ov17_0210e600
	add sp, sp, #8
	ldmfd sp!, {r3, pc}
_0210E7F4: .word 0x02FFFFA8
	arm_func_end FUN_ov17_0210e798

	arm_func_start FUN_ov17_0210e7f8
FUN_ov17_0210e7f8: ; 0x0210E7F8
	ldr r1, _0210E854 ; =0x02FFFFA8
	ldrh r1, [r1]
	and r1, r1, #0x8000
	movs r1, r1, asr #0xf
	movne r0, #0
	bxne lr
	ldr r1, _0210E858 ; =0x021162E8
	ldr r3, [r1, #4]
	ldrb r1, [r3, #0x38]
	mov r1, r1, lsl #0x1f
	movs r1, r1, lsr #0x1f
	ldrneh r2, [r3, #0x28]
	ldrneh r1, [r3, #0x2a]
	strneh r2, [r0]
	strneh r1, [r0, #2]
	movne r0, #1
	bxne lr
	ldrh r2, [r3, #0x2c]
	ldrh r1, [r3, #0x2e]
	strh r2, [r0]
	strh r1, [r0, #2]
	mov r0, #0
	bx lr
_0210E854: .word 0x02FFFFA8
_0210E858: .word 0x021162E8
	arm_func_end FUN_ov17_0210e7f8

	arm_func_start FUN_ov17_0210e85c
FUN_ov17_0210e85c: ; 0x0210E85C
	stmfd sp!, {r4, lr}
	ldr r4, _0210E900 ; =0x021162E8
	ldrb r0, [r4]
	cmp r0, #0
	ldr r0, _0210E904 ; =0x02FFFFA8
	beq _0210E8BC
	ldrh r0, [r0]
	and r0, r0, #0x8000
	movs r0, r0, asr #0xf
	ldmnefd sp!, {r4, pc}
	mov r0, #1
	bl FUN_02017368
	cmp r0, #0
	ldmeqfd sp!, {r4, pc}
	bl FUN_02003e40
	bl FUN_0200449c
	ldr r1, _0210E908 ; =0x04001000
	ldr r0, [r1]
	orr r0, r0, #0x10000
	str r0, [r1]
	bl FUN_02003e40
	mov r0, #0
	strb r0, [r4]
	ldmfd sp!, {r4, pc}
_0210E8BC:
	ldrh r0, [r0]
	and r0, r0, #0x8000
	movs r0, r0, asr #0xf
	ldmeqfd sp!, {r4, pc}
	bl FUN_02003e40
	bl FUN_0200445c
	ldr r1, _0210E908 ; =0x04001000
	ldr r0, [r1]
	bic r0, r0, #0x10000
	str r0, [r1]
	bl FUN_02003e40
	mov r0, #0
	bl FUN_02017368
	cmp r0, #0
	movne r0, #1
	strneb r0, [r4]
	ldmfd sp!, {r4, pc}
_0210E900: .word 0x021162E8
_0210E904: .word 0x02FFFFA8
_0210E908: .word 0x04001000
	arm_func_end FUN_ov17_0210e85c

	arm_func_start FUN_ov17_0210e90c
FUN_ov17_0210e90c: ; 0x0210E90C
	stmfd sp!, {r4, r5, r6, lr}
	ldr r6, _0210E968 ; =0x04000210
	ldr r4, _0210E96C ; =0x02116300
	ldr r1, [r6]
	ldr r0, _0210E970 ; =0x00040018
	str r1, [r4, #4]
	bl FUN_02000fd0
	mov r5, #1
	mov r0, r5
	bl FUN_02000ffc
	mov r0, r5
	bl FUN_02000eb8
	str r0, [r4]
	ldr r1, _0210E974 ; =FUN_ov17_0210e9b0
	mov r0, r5
	bl FUN_02000e30
	mov r0, r5
	bl FUN_0200105c
	sub r1, r6, #8
	ldrh r0, [r1]
	strh r5, [r1]
	bl OS_EnableInterrupts
	ldmfd sp!, {r4, r5, r6, pc}
_0210E968: .word 0x04000210
_0210E96C: .word 0x02116300
_0210E970: .word 0x00040018
_0210E974: .word FUN_ov17_0210e9b0
	arm_func_end FUN_ov17_0210e90c

	arm_func_start FUN_ov17_0210e978
FUN_ov17_0210e978: ; 0x0210E978
	stmfd sp!, {r4, lr}
	ldr r2, _0210E9A8 ; =0x04000208
	mov r0, #0
	ldrh r1, [r2]
	ldr r4, _0210E9AC ; =0x02116300
	strh r0, [r2]
	ldr r0, [r4, #4]
	bl FUN_02000fd0
	ldr r1, [r4]
	mov r0, #1
	bl FUN_02000e30
	ldmfd sp!, {r4, pc}
_0210E9A8: .word 0x04000208
_0210E9AC: .word 0x02116300
	arm_func_end FUN_ov17_0210e978

	arm_func_start FUN_ov17_0210e9b0
FUN_ov17_0210e9b0: ; 0x0210E9B0
	stmfd sp!, {r3, lr}
	mov r0, #1
	bl FUN_ov17_0210f264
	ldr r0, _0210E9D4 ; =0x027E0000
	add r0, r0, #0x3000
	ldr r1, [r0, #0xff8]
	orr r1, r1, #1
	str r1, [r0, #0xff8]
	ldmfd sp!, {r3, pc}
_0210E9D4: .word 0x027E0000
	arm_func_end FUN_ov17_0210e9b0

	arm_func_start FUN_ov17_0210e9d8
FUN_ov17_0210e9d8: ; 0x0210E9D8
	stmfd sp!, {r3, lr}
	mov r0, #0x10
	mov r1, #4
	bl FUN_ov17_0210e0a8
	mov r2, #0
	str r2, [r0]
	add r1, r0, #8
	str r1, [r0, #4]
	str r0, [r0, #8]
	str r2, [r0, #0xc]
	ldmfd sp!, {r3, pc}
	arm_func_end FUN_ov17_0210e9d8

	arm_func_start FUN_ov17_0210ea04
FUN_ov17_0210ea04: ; 0x0210EA04
	stmfd sp!, {r0, r1, r2, r3}
	stmfd sp!, {r3, lr}
	add r0, sp, #8
	bl FUN_ov17_0210e0cc
	ldmfd sp!, {r3, lr}
	add sp, sp, #0x10
	bx lr
	arm_func_end FUN_ov17_0210ea04

	arm_func_start FUN_ov17_0210ea20
FUN_ov17_0210ea20: ; 0x0210EA20
	stmfd sp!, {r4, lr}
	mov r4, r0
	mov r0, #1
	bl FUN_0200102c
	ldmia r4, {r2, r3}
	str r3, [r2, #4]
	ldr r3, [r4]
	ldr r2, [r4, #4]
	mov r1, #0
	str r3, [r2]
	str r1, [r4, #4]
	str r1, [r4]
	bl FUN_02000ffc
	ldmfd sp!, {r4, pc}
	arm_func_end FUN_ov17_0210ea20

	arm_func_start FUN_ov17_0210ea58
FUN_ov17_0210ea58: ; 0x0210EA58
	stmfd sp!, {r3, r4, r5, lr}
	mov r5, r0
	mov r0, #1
	mov r4, r1
	bl FUN_0200102c
	ldr r1, [r5]
	str r4, [r1, #4]
	ldr r1, [r5]
	stmia r4, {r1, r5}
	str r4, [r5]
	bl FUN_02000ffc
	ldmfd sp!, {r3, r4, r5, pc}
	arm_func_end FUN_ov17_0210ea58

	arm_func_start FUN_ov17_0210ea88
FUN_ov17_0210ea88: ; 0x0210EA88
	ldr r12, _0210EA94 ; =FUN_ov17_0210ea58
	add r0, r0, #8
	bx r12
_0210EA94: .word FUN_ov17_0210ea58
	arm_func_end FUN_ov17_0210ea88

	arm_func_start FUN_ov17_0210ea98
FUN_ov17_0210ea98: ; 0x0210EA98
	ldr r0, [r0, #4]
	ldr r12, _0210EAA4 ; =FUN_ov17_0210ea58
	bx r12
_0210EAA4: .word FUN_ov17_0210ea58
	arm_func_end FUN_ov17_0210ea98

	arm_func_start FUN_ov17_0210eaa8
FUN_ov17_0210eaa8: ; 0x0210EAA8
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	ldr r0, _0210EB2C ; =0x0000080C
	mov r1, #4
	bl FUN_ov17_0210e0a8
	mov r1, r0
	ldr r4, _0210EB30 ; =0x02116308
	mov r0, #0x200
	mov r2, #0x800
	str r1, [r4]
	bl MIi_CpuClearFast
	mov r7, #0
	mov r6, #0x40
	mov r5, #8
_0210EADC:
	ldr r1, [r4]
	mov r0, r6
	mov r2, r5
	add r1, r1, r7, lsl #10
	bl FUN_ov17_0210d0a4
	ldr r1, [r4]
	add r1, r1, r7, lsl #2
	add r7, r7, #1
	str r0, [r1, #0x800]
	cmp r7, #2
	blt _0210EADC
	ldr r1, _0210EB34 ; =FUN_ov17_0210eb38
	mov r0, #1
	mov r2, #0
	mov r3, #0xc8
	bl FUN_ov17_0210f314
	ldr r1, _0210EB30 ; =0x02116308
	ldr r1, [r1]
	str r0, [r1, #0x808]
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_0210EB2C: .word 0x0000080C
_0210EB30: .word 0x02116308
_0210EB34: .word FUN_ov17_0210eb38
	arm_func_end FUN_ov17_0210eaa8

	arm_func_start FUN_ov17_0210eb38
FUN_ov17_0210eb38: ; 0x0210EB38
	stmfd sp!, {r4, r5, r6, lr}
	ldr r4, _0210EB7C ; =0x02116308
	mov r1, #0x800
	ldr r0, [r4]
	bl DC_FlushRange
	mov r6, #0
	mov r5, #0x400
	ldr r0, [r4]
	mov r1, r6
	mov r2, r5
	bl FUN_02005274
	ldr r0, [r4]
	mov r1, r6
	mov r2, r5
	add r0, r0, #0x400
	bl FUN_020052d8
	ldmfd sp!, {r4, r5, r6, pc}
_0210EB7C: .word 0x02116308
	arm_func_end FUN_ov17_0210eb38

	arm_func_start FUN_ov17_0210eb80
FUN_ov17_0210eb80: ; 0x0210EB80
	stmfd sp!, {r3, lr}
	ldr r1, _0210EBA4 ; =0x02116308
	mov r0, #1
	ldr r1, [r1]
	ldr r1, [r1, #0x808]
	bl FUN_ov17_0210f3d8
	ldr r0, _0210EBA8 ; =0x02116308
	bl FUN_ov17_0210e0cc
	ldmfd sp!, {r3, pc}
_0210EBA4: .word 0x02116308
_0210EBA8: .word 0x02116308
	arm_func_end FUN_ov17_0210eb80

	arm_func_start FUN_ov17_0210ebac
FUN_ov17_0210ebac: ; 0x0210EBAC
	ldr r1, _0210EBC4 ; =0x02116308
	ldr r12, _0210EBC8 ; =FUN_ov17_0210d158
	ldr r1, [r1]
	add r0, r1, r0, lsl #2
	ldr r0, [r0, #0x800]
	bx r12
_0210EBC4: .word 0x02116308
_0210EBC8: .word FUN_ov17_0210d158
	arm_func_end FUN_ov17_0210ebac

	arm_func_start FUN_ov17_0210ebcc
FUN_ov17_0210ebcc: ; 0x0210EBCC
	mov r1, r0
	ldr r3, [r1]
	ldr r0, _0210EC0C ; =0xC1FFFCFF
	ldr r2, _0210EC10 ; =0x02116308
	and r0, r3, r0
	orr r0, r0, #0x200
	str r0, [r1]
	ldr r3, [r2]
	mov r2, #0
	add r0, r3, #0x400
	cmp r1, r0
	movhs r2, #1
	add r0, r3, r2, lsl #2
	ldr r0, [r0, #0x800]
	ldr r12, _0210EC14 ; =FUN_ov17_0210d100
	bx r12
_0210EC0C: .word 0xC1FFFCFF
_0210EC10: .word 0x02116308
_0210EC14: .word FUN_ov17_0210d100
	arm_func_end FUN_ov17_0210ebcc

	arm_func_start FUN_ov17_0210ec18
FUN_ov17_0210ec18: ; 0x0210EC18
	ldr r2, _0210EC2C ; =0x02116308
	ldr r2, [r2]
	add r0, r2, r0, lsl #10
	add r0, r0, r1, lsl #3
	bx lr
_0210EC2C: .word 0x02116308
	arm_func_end FUN_ov17_0210ec18

	arm_func_start FUN_ov17_0210ec30
FUN_ov17_0210ec30: ; 0x0210EC30
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, lr}
	mov r0, #0x340
	mov r1, #4
	bl FUN_ov17_0210e0a8
	ldr r5, _0210ECEC ; =0x0211630C
	mov r9, #0
	str r0, [r5]
	mov r8, #0x20
	mov r11, #0xc
	mov r7, #0x300
	mov r6, #0x400
	mov r4, #0x1a0
_0210EC60:
	mul r10, r9, r4
	ldr r1, [r5]
	mov r0, r8
	mov r2, r11
	add r1, r1, r10
	bl FUN_ov17_0210d0a4
	ldr r1, [r5]
	add r1, r1, r10
	str r0, [r1, #0x19c]
	bl FUN_ov17_0210e9d8
	ldr r1, [r5]
	add r1, r1, r10
	str r0, [r1, #0x198]
	ldr r0, [r5]
	add r0, r0, r10
	add r0, r0, #0x100
	strh r7, [r0, #0x88]
	ldr r0, [r5]
	add r0, r0, r10
	add r0, r0, #0x100
	strh r6, [r0, #0x94]
	ldr r0, [r5]
	add r1, r0, r10
	ldr r0, [r1, #0x198]
	add r1, r1, #0x180
	bl FUN_ov17_0210ea98
	ldr r0, [r5]
	add r1, r0, r10
	ldr r0, [r1, #0x198]
	add r1, r1, #0x18c
	bl FUN_ov17_0210ea88
	add r9, r9, #1
	cmp r9, #2
	blt _0210EC60
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_0210ECEC: .word 0x0211630C
	arm_func_end FUN_ov17_0210ec30

	arm_func_start FUN_ov17_0210ecf0
FUN_ov17_0210ecf0: ; 0x0210ECF0
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, lr}
	mov r10, r0
	mov r0, #0x1a0
	mul r7, r10, r0
	ldr r4, _0210EE50 ; =0x0211630C
	mov r5, r1
	ldr r0, [r4]
	mov r9, r2
	add r0, r0, r7
	ldr r0, [r0, #0x19c]
	mov r8, r3
	bl FUN_ov17_0210d158
	add r1, r5, #3
	bic r1, r1, #3
	mov r5, r0
	mov r6, r1, asr #2
	mov r0, #1
	strh r6, [r5, #0xa]
	bl FUN_0200102c
	mov r11, r0
	ldr r1, [r4]
	mov r0, #0x1a0
	mla r0, r10, r0, r1
	cmp r9, #0
	beq _0210EDC4
	add r4, r0, #0x180
	add r0, r0, #0x18c
	cmp r4, r0
	beq _0210EDA8
	add r0, r1, r7
	add r1, r0, #0x18c
_0210ED6C:
	ldr r0, [r4, #4]
	ldrh r9, [r4, #8]
	ldrh r3, [r4, #0xa]
	ldrh r2, [r0, #8]
	add r9, r9, r3
	add r3, r9, r6
	cmp r3, r2
	bgt _0210ED9C
	mov r1, r5
	strh r9, [r5, #8]
	bl FUN_ov17_0210ea58
	b _0210EDA8
_0210ED9C:
	mov r4, r0
	cmp r0, r1
	bne _0210ED6C
_0210EDA8:
	ldr r0, _0210EE50 ; =0x0211630C
	ldr r0, [r0]
	add r0, r0, r7
	add r0, r0, #0x18c
	cmp r4, r0
	bne _0210EE38
	b _0210EE34
_0210EDC4:
	add r4, r0, #0x18c
	add r0, r0, #0x180
	cmp r4, r0
	beq _0210EE1C
	add r0, r1, r7
	add r0, r0, #0x180
_0210EDDC:
	ldr r9, [r4]
	ldrh r3, [r4, #8]
	ldrh r2, [r9, #8]
	ldrh r1, [r9, #0xa]
	sub r3, r3, r6
	add r1, r2, r1
	cmp r3, r1
	blt _0210EE10
	mov r0, r4
	mov r1, r5
	strh r3, [r5, #8]
	bl FUN_ov17_0210ea58
	b _0210EE1C
_0210EE10:
	mov r4, r9
	cmp r9, r0
	bne _0210EDDC
_0210EE1C:
	ldr r0, _0210EE50 ; =0x0211630C
	ldr r0, [r0]
	add r0, r0, r7
	add r0, r0, #0x180
	cmp r4, r0
	bne _0210EE38
_0210EE34:
	bl FUN_02004160
_0210EE38:
	ldrh r1, [r5, #8]
	mov r0, r11
	str r1, [r8]
	bl FUN_02000ffc
	mov r0, r5
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_0210EE50: .word 0x0211630C
	arm_func_end FUN_ov17_0210ecf0

	arm_func_start FUN_ov17_0210ee54
FUN_ov17_0210ee54: ; 0x0210EE54
	stmfd sp!, {r3, r4, r5, lr}
	mov r5, r0
	mov r4, #0
	bl FUN_ov17_0210ea20
	ldr r0, _0210EE90 ; =0x0211630C
	ldr r1, [r0]
	add r0, r1, #0x1a0
	cmp r5, r0
	movhs r4, #1
	mov r0, #0x1a0
	mla r0, r4, r0, r1
	ldr r0, [r0, #0x19c]
	mov r1, r5
	bl FUN_ov17_0210d100
	ldmfd sp!, {r3, r4, r5, pc}
_0210EE90: .word 0x0211630C
	arm_func_end FUN_ov17_0210ee54

	arm_func_start FUN_ov17_0210ee94
FUN_ov17_0210ee94: ; 0x0210EE94
	cmp r1, #0
	mov r3, #0
	ble _0210EEB8
_0210EEA0:
	ldrb r2, [r0, r3]
	cmp r2, #0
	beq _0210EEB8
	add r3, r3, #1
	cmp r3, r1
	blt _0210EEA0
_0210EEB8:
	mov r0, r3
	bx lr
	arm_func_end FUN_ov17_0210ee94

	arm_func_start FUN_ov17_0210eec0
FUN_ov17_0210eec0: ; 0x0210EEC0
	stmfd sp!, {r3, lr}
	sub r12, r2, #1
	cmp r12, #0
	mov lr, #0
	ble _0210EEF4
_0210EED4:
	ldrb r3, [r1, lr]
	cmp r3, #0
	beq _0210EEF4
	mov r2, lr, lsl #1
	add lr, lr, #1
	strh r3, [r0, r2]
	cmp lr, r12
	blt _0210EED4
_0210EEF4:
	mov r1, lr, lsl #1
	mov r2, #0
	strh r2, [r0, r1]
	mov r0, lr
	ldmfd sp!, {r3, pc}
	arm_func_end FUN_ov17_0210eec0

	arm_func_start FUN_ov17_0210ef08
FUN_ov17_0210ef08: ; 0x0210EF08
	stmfd sp!, {r4, lr}
	bl FUN_02006cf0
	ldr r4, _0210EF88 ; =0x02116310
	str r0, [r4]
	bl FUN_02006d04
	str r0, [r4, #4]
	bl FUN_02006d18
	str r0, [r4, #8]
	bl FUN_02006d3c
	str r0, [r4, #0xc]
	bl FUN_02006d60
	str r0, [r4, #0x10]
	bl FUN_02006d74
	str r0, [r4, #0x14]
	bl FUN_02006d88
	str r0, [r4, #0x18]
	bl FUN_02006dc4
	str r0, [r4, #0x1c]
	bl FUN_02006dd8
	str r0, [r4, #0x20]
	bl FUN_02006dec
	str r0, [r4, #0x24]
	bl FUN_02006e14
	str r0, [r4, #0x28]
	bl FUN_02006d9c
	str r0, [r4, #0x2c]
	bl FUN_02006db0
	str r0, [r4, #0x30]
	ldr r0, [r4, #0x2c]
	bl FUN_02006874
	bl FUN_ov17_0210f050
	ldmfd sp!, {r4, pc}
_0210EF88: .word 0x02116310
	arm_func_end FUN_ov17_0210ef08

	arm_func_start FUN_ov17_0210ef8c
FUN_ov17_0210ef8c: ; 0x0210EF8C
	stmfd sp!, {r4, lr}
	bl FUN_02006cf0
	bl FUN_02006d04
	bl FUN_02006dc4
	bl FUN_02006dd8
	bl FUN_ov17_0210f050
	ldr r4, _0210F044 ; =0x02116310
	ldr r0, [r4]
	bl FUN_02006058
	ldr r0, [r4, #4]
	bl FUN_0200625c
	ldr r0, [r4, #8]
	bl FUN_0200638c
	ldr r0, [r4, #0xc]
	bl FUN_02006484
	ldr r0, [r4, #0x10]
	bl FUN_02006520
	ldr r0, [r4, #0x14]
	bl FUN_02006698
	ldr r0, [r4, #0x18]
	bl FUN_02006774
	ldr r0, [r4, #0x1c]
	bl FUN_0200693c
	ldr r0, [r4, #0x20]
	bl FUN_020069d8
	ldr r0, [r4, #0x24]
	bl FUN_02006a48
	ldr r0, [r4, #0x28]
	bl FUN_02006ac8
	ldr r0, [r4, #0x30]
	bl FUN_02006918
	mov r3, #0
	ldr r2, _0210F048 ; =0x04000050
	ldr r0, _0210F04C ; =0x04001014
	strh r3, [r2]
	add r1, r2, #0x1000
	strh r3, [r1]
	str r3, [r2, #-0x40]
	str r3, [r2, #-0x3c]
	str r3, [r2, #-0x38]
	str r3, [r2, #-0x34]
	str r3, [r2, #0xfc0]
	str r3, [r0]
	str r3, [r0, #4]
	str r3, [r0, #8]
	ldmfd sp!, {r4, pc}
_0210F044: .word 0x02116310
_0210F048: .word 0x04000050
_0210F04C: .word 0x04001014
	arm_func_end FUN_ov17_0210ef8c

	arm_func_start FUN_ov17_0210f050
FUN_ov17_0210f050: ; 0x0210F050
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	ldr r0, _0210F0D8 ; =0x000001F3
	bl FUN_02006918
	mov r7, #0
	mov r4, #0x6800000
	mov r0, r7
	mov r1, r4
	mov r2, #0x40000
	bl MIi_CpuClearFast
	mov r0, r7
	add r1, r4, #0x80000
	mov r2, #0x24000
	bl MIi_CpuClearFast
	bl FUN_02006db0
	mov r6, #0x200
	mov r0, r6
	mov r1, #0x7000000
	mov r5, #0x400
	mov r2, r5
	bl MIi_CpuClearFast
	mov r0, r7
	mov r4, #0x5000000
	mov r1, r4
	mov r2, r5
	bl MIi_CpuClearFast
	mov r0, r6
	sub r1, r5, #0xf9000000
	mov r2, r5
	bl MIi_CpuClearFast
	mov r0, r7
	add r1, r4, #0x400
	mov r2, r5
	bl MIi_CpuClearFast
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_0210F0D8: .word 0x000001F3
	arm_func_end FUN_ov17_0210f050

	arm_func_start FUN_ov17_0210f0dc
FUN_ov17_0210f0dc: ; 0x0210F0DC
	stmfd sp!, {r3, lr}
	add r0, sp, #0
	bl FUN_020173dc
	cmp r0, #0
	ldmnefd sp!, {r3, pc}
	ldr r0, [sp]
	cmp r0, #0xf
	ldmeqfd sp!, {r3, pc}
	mov r0, #0xf
	bl FUN_020173c0
	ldmfd sp!, {r3, pc}
	arm_func_end FUN_ov17_0210f0dc

	arm_func_start FUN_ov17_0210f108
FUN_ov17_0210f108: ; 0x0210F108
	ldr r12, _0210F114 ; =FUN_020173c0
	mov r0, #1
	bx r12
_0210F114: .word FUN_020173c0
	arm_func_end FUN_ov17_0210f108

	arm_func_start FUN_ov17_0210f118
FUN_ov17_0210f118: ; 0x0210F118
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, lr}
	mov r0, #0x80
	mov r1, #4
	bl FUN_ov17_0210e0a8
	ldr r4, _0210F214 ; =0x02116344
	mov r9, #0
	ldr r8, _0210F218 ; =0x02112700
	str r0, [r4]
	mov r7, r9
	mov r6, #0xff
	mov r5, #1
	mov r11, #0x14
_0210F148:
	ldrb r10, [r8, r9]
	ldr r2, [r4]
	mov r1, #4
	mul r0, r10, r11
	add r2, r2, r9, lsl #6
	str r10, [r2, #0x34]
	bl FUN_ov17_0210e0a8
	ldr r1, [r4]
	mov r2, #0x14
	add r1, r1, r9, lsl #6
	str r0, [r1, #0x3c]
	ldr r1, [r4]
	mov r0, r10
	add r1, r1, r9, lsl #6
	ldr r1, [r1, #0x3c]
	bl FUN_ov17_0210d0a4
	ldr r1, [r4]
	str r0, [r1, r9, lsl #6]
	mov r0, r10
	bl FUN_ov17_0210d070
	ldr r1, [r4]
	add r1, r1, r9, lsl #6
	str r0, [r1, #4]
	bl FUN_ov17_0210e9d8
	ldr r1, [r4]
	add r1, r1, r9, lsl #6
	str r0, [r1, #8]
	ldr r0, [r4]
	add r0, r0, r9, lsl #6
	strb r7, [r0, #0x1c]
	ldr r0, [r4]
	add r0, r0, r9, lsl #6
	strb r6, [r0, #0x30]
	ldr r0, [r4]
	add r1, r0, r9, lsl #6
	ldr r0, [r1, #8]
	add r1, r1, #0xc
	bl FUN_ov17_0210ea98
	ldr r1, [r4]
	add r0, r1, r9, lsl #6
	add r1, r1, r9, lsl #6
	ldr r0, [r0, #8]
	add r1, r1, #0x20
	bl FUN_ov17_0210ea88
	ldr r0, [r4]
	add r0, r0, r9, lsl #6
	add r9, r9, #1
	strb r5, [r0, #0x38]
	cmp r9, #2
	blt _0210F148
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_0210F214: .word 0x02116344
_0210F218: .word 0x02112700
	arm_func_end FUN_ov17_0210f118

	arm_func_start FUN_ov17_0210f21c
FUN_ov17_0210f21c: ; 0x0210F21C
	stmfd sp!, {r3, r4, r5, lr}
	ldr r4, _0210F25C ; =0x02116344
	mov r5, #0
_0210F228:
	ldr r0, [r4]
	add r0, r0, r5, lsl #6
	ldr r0, [r0, #8]
	bl FUN_ov17_0210ea04
	ldr r0, [r4]
	ldr r0, [r0, r5, lsl #6]
	bl FUN_ov17_0210d0e4
	add r5, r5, #1
	cmp r5, #2
	blt _0210F228
	ldr r0, _0210F260 ; =0x02116344
	bl FUN_ov17_0210e0cc
	ldmfd sp!, {r3, r4, r5, pc}
_0210F25C: .word 0x02116344
_0210F260: .word 0x02116344
	arm_func_end FUN_ov17_0210f21c

	arm_func_start FUN_ov17_0210f264
FUN_ov17_0210f264: ; 0x0210F264
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	ldr r5, _0210F310 ; =0x02116344
	mov r6, r0
	ldr r0, [r5]
	add r2, r0, r6, lsl #6
	ldrb r1, [r2, #0x38]
	cmp r1, #0
	ldmeqfd sp!, {r3, r4, r5, r6, r7, pc}
	ldr r4, [r2, #0x10]
	add r1, r2, #0x20
	cmp r4, r1
	beq _0210F2BC
_0210F294:
	ldr r1, [r4, #0xc]
	ldr r2, [r4, #8]
	mov r0, r4
	blx r2
	ldr r0, [r5]
	ldr r4, [r4, #4]
	add r1, r0, r6, lsl #6
	add r1, r1, #0x20
	cmp r4, r1
	bne _0210F294
_0210F2BC:
	add r1, r0, r6, lsl #6
	ldr r1, [r1, #0x34]
	mov r4, r6, lsl #6
	mov r5, #0
	cmp r1, #0
	ldmlefd sp!, {r3, r4, r5, r6, r7, pc}
	ldr r7, _0210F310 ; =0x02116344
_0210F2D8:
	add r0, r4, r0
	ldr r0, [r0, #4]
	bl FUN_ov17_0210d158
	movs r1, r0
	ldmeqfd sp!, {r3, r4, r5, r6, r7, pc}
	mov r0, r6
	bl FUN_ov17_0210f3e4
	ldr r0, [r7]
	add r5, r5, #1
	add r1, r4, r0
	ldr r1, [r1, #0x34]
	cmp r5, r1
	blt _0210F2D8
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_0210F310: .word 0x02116344
	arm_func_end FUN_ov17_0210f264

	arm_func_start FUN_ov17_0210f314
FUN_ov17_0210f314: ; 0x0210F314
	stmfd sp!, {r3, lr}
	mov r12, #0
	str r12, [sp]
	bl FUN_ov17_0210f328
	ldmfd sp!, {r3, pc}
	arm_func_end FUN_ov17_0210f314

	arm_func_start FUN_ov17_0210f328
FUN_ov17_0210f328: ; 0x0210F328
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, lr}
	ldr r7, _0210F3AC ; =0x02116344
	mov r6, r0
	ldr r0, [r7]
	mov r9, r1
	ldr r0, [r0, r6, lsl #6]
	mov r8, r2
	mov r5, r3
	bl FUN_ov17_0210d158
	mov r4, r0
	str r9, [r4, #8]
	str r8, [r4, #0xc]
	ldrb r1, [sp, #0x20]
	strb r5, [r4, #0x10]
	mov r0, #1
	strb r1, [r4, #0x11]
	bl FUN_0200102c
	ldr r1, [r7]
	mov r7, r0
	add r0, r1, r6, lsl #6
	ldr r0, [r0, #0x10]
_0210F37C:
	ldrb r1, [r0, #0x10]
	cmp r5, r1
	bhs _0210F394
	mov r1, r4
	bl FUN_ov17_0210ea58
	b _0210F39C
_0210F394:
	ldr r0, [r0, #4]
	b _0210F37C
_0210F39C:
	mov r0, r7
	bl FUN_02000ffc
	mov r0, r4
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
_0210F3AC: .word 0x02116344
	arm_func_end FUN_ov17_0210f328

	arm_func_start FUN_ov17_0210f3b0
FUN_ov17_0210f3b0: ; 0x0210F3B0
	str r1, [r0, #8]
	bx lr
	arm_func_end FUN_ov17_0210f3b0

	arm_func_start FUN_ov17_0210f3b8
FUN_ov17_0210f3b8: ; 0x0210F3B8
	ldr r2, _0210F3D0 ; =0x02116344
	ldr r12, _0210F3D4 ; =FUN_ov17_0210d100
	ldr r2, [r2]
	add r0, r2, r0, lsl #6
	ldr r0, [r0, #4]
	bx r12
_0210F3D0: .word 0x02116344
_0210F3D4: .word FUN_ov17_0210d100
	arm_func_end FUN_ov17_0210f3b8

	arm_func_start FUN_ov17_0210f3d8
FUN_ov17_0210f3d8: ; 0x0210F3D8
	ldr r12, _0210F3E0 ; =FUN_ov17_0210f3e4
	bx r12
_0210F3E0: .word FUN_ov17_0210f3e4
	arm_func_end FUN_ov17_0210f3d8

	arm_func_start FUN_ov17_0210f3e4
FUN_ov17_0210f3e4: ; 0x0210F3E4
	stmfd sp!, {r3, r4, r5, lr}
	mov r4, r1
	ldrb r1, [r4, #0x11]
	mov r5, r0
	cmp r1, #0
	beq _0210F404
	add r0, r4, #0xc
	bl FUN_ov17_0210e0cc
_0210F404:
	mov r0, r4
	bl FUN_ov17_0210ea20
	ldr r0, _0210F424 ; =0x02116344
	mov r1, r4
	ldr r0, [r0]
	ldr r0, [r0, r5, lsl #6]
	bl FUN_ov17_0210d100
	ldmfd sp!, {r3, r4, r5, pc}
_0210F424: .word 0x02116344
	arm_func_end FUN_ov17_0210f3e4

	arm_func_start FUN_ov17_0210f428
FUN_ov17_0210f428: ; 0x0210F428
	ldr r2, _0210F43C ; =0x02116344
	ldr r2, [r2]
	add r0, r2, r0, lsl #6
	strb r1, [r0, #0x38]
	bx lr
_0210F43C: .word 0x02116344
	arm_func_end FUN_ov17_0210f428
	; 0x0210F440


	.rodata
	.incbin "/incbin/overlay17_rodata.bin"

	.bss
	.space 0x0