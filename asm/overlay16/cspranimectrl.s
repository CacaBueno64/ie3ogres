.public FUN_ov16_0211685c
.public FUN_ov16_0211689c
.public FUN_ov16_02116b08
.public FUN_ov16_02116bdc
.public FUN_ov16_02116c60
.public FUN_ov16_0211702c
.public FUN_ov16_02117180
.public FUN_ov16_02117220
.public FUN_ov16_0211726c
.public FUN_ov16_02117284
.public FUN_ov16_021172cc
.public FUN_ov16_02117390
.public FUN_ov16_02117414
.public FUN_ov16_02117514
.public FUN_ov16_02117598
.public FUN_ov16_021175dc
.public FX_Sqrt
.public MI_CpuFill8
.public MIi_CpuClearFast
.public _ZN12C3DPlaneCtrl10getPartExtEii
.public _ZN12C3DPlaneCtrl10setPlttAllEih
.public _ZN12C3DPlaneCtrl10setPlttIdxEiih
.public _ZN12C3DPlaneCtrl13setGraphicIdxEiihb
.public _ZN12C3DPlaneCtrl13setPlttIdxAllEih
.public _ZN12C3DPlaneCtrl16setGraphicIdxAllEihb
.public _ZN12C3DPlaneCtrl6setPosEiiss
.public _ZN12C3DPlaneCtrl6setPosEiss
.public _ZN12C3DPlaneCtrl6setTexEiih
.public _ZN12C3DPlaneCtrl7setFlagEiitb
.public _ZN12C3DPlaneCtrl7setFlagEitb
.public _ZN12C3DPlaneCtrl7setPlttEiih
.public _ZN12C3DPlaneCtrl9clearFlagEiit
.public _ZN12C3DPlaneCtrl9clearFlagEit
.public _ZN12C3DPlaneCtrl9getSetExtEi
.public _ZN12C3DPlaneCtrl9setTexAllEih
.public _ZdlPv
.public _s32_div_f
.public g3DPlaneCtrl
.public g3DSpriteCtrl

	.include "/macros/function.inc"

	.text
	arm_func_start FUN_ov16_0210d6dc
FUN_ov16_0210d6dc: ; 0x0210D6DC
	ldr r12, _0210D6F0 ; =MIi_CpuClearFast
	mov r1, r0
	mov r0, #0
	mov r2, #0x20
	bx r12
_0210D6F0: .word MIi_CpuClearFast
	arm_func_end FUN_ov16_0210d6dc

	arm_func_start FUN_ov16_0210d6f4
FUN_ov16_0210d6f4: ; 0x0210D6F4
	cmp r1, #0
	bxeq lr
	ldr r2, [r0]
	cmp r2, #0
	streq r1, [r0]
	moveq r2, #0
	streq r2, [r1, #0xc]
	beq _0210D73C
	ldr r3, [r2, #0xc]
	cmp r3, #0
	beq _0210D730
_0210D720:
	mov r2, r3
	ldr r3, [r3, #0xc]
	cmp r3, #0
	bne _0210D720
_0210D730:
	str r1, [r2, #0xc]
	mov r2, #0
	str r2, [r1, #0xc]
_0210D73C:
	ldr r1, [r0, #4]
	add r1, r1, #1
	str r1, [r0, #4]
	bx lr
	arm_func_end FUN_ov16_0210d6f4

	arm_func_start FUN_ov16_0210d74c
FUN_ov16_0210d74c: ; 0x0210D74C
	mov r2, #0
_0210D750:
	add r1, r0, r2, lsl #5
	ldrb r1, [r1, #8]
	cmp r1, #0
	addeq r0, r0, #4
	addeq r0, r0, r2, lsl #5
	bxeq lr
	add r2, r2, #1
	cmp r2, #0x20
	blt _0210D750
	mov r0, #0
	bx lr
	arm_func_end FUN_ov16_0210d74c

	arm_func_start FUN_ov16_0210d77c
FUN_ov16_0210d77c: ; 0x0210D77C
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, lr}
	mov r10, r1
	ldr r5, [r10]
	mov r8, #0
	mov r11, r0
	mov r9, r2
	mov r7, r8
	cmp r5, #0
	beq _0210D85C
	mov r4, r9, lsl #0x10
_0210D7A4:
	ldrb r0, [r5, #0xa]
	ldr r6, [r5, #0xc]
	cmp r0, #0
	bne _0210D7E8
	mov r0, r11
	mov r1, r5
	mov r2, r9
	bl FUN_ov16_0210d86c
	cmp r0, #0
	movne r0, #1
	strneb r0, [r5, #0xa]
	bne _0210D7E8
	ldrb r0, [r5, #0xb]
	cmp r0, #0
	moveq r0, #1
	ldmeqfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
	add r8, r8, #1
_0210D7E8:
	ldrb r0, [r5, #0xa]
	cmp r0, #0
	beq _0210D84C
	ldrsh r0, [r5, #6]
	cmp r0, #0
	bgt _0210D830
	ldr r1, [r10, #4]
	mov r0, r5
	sub r1, r1, #1
	str r1, [r10, #4]
	bl FUN_ov16_0210d6dc
	ldr r0, [r10]
	cmp r5, r0
	streq r6, [r10]
	cmp r7, #0
	strne r6, [r7, #0xc]
	mov r5, #0
	b _0210D84C
_0210D830:
	sub r0, r0, r4, asr #16
	strh r0, [r5, #6]
	ldrb r0, [r5, #0xb]
	cmp r0, #0
	moveq r0, #1
	ldmeqfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
	add r8, r8, #1
_0210D84C:
	mov r7, r5
	mov r5, r6
	cmp r6, #0
	bne _0210D7A4
_0210D85C:
	mov r0, #1
	cmp r8, #0
	movle r0, #0
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
	arm_func_end FUN_ov16_0210d77c

	arm_func_start FUN_ov16_0210d86c
FUN_ov16_0210d86c: ; 0x0210D86C
	stmfd sp!, {r4, r5, r6, r7, r8, r9, lr}
	sub sp, sp, #0x14
	mov r7, r1
	ldrb r3, [r7, #4]
	ldr r4, _0210DE50 ; =g3DPlaneCtrl
	ldr r5, _0210DE54 ; =g3DSpriteCtrl
	mov r8, r0
	mov r1, #1
	cmp r3, #8
	mov r6, #0
	addls pc, pc, r3, lsl #2
	b _0210DE40
_0210D89C: ; jump table
	b _0210DE40 ; case 0
	b _0210D8C0 ; case 1
	b _0210DA8C ; case 2
	b _0210DB14 ; case 3
	b _0210DBB4 ; case 4
	b _0210DC24 ; case 5
	b _0210DCA4 ; case 6
	b _0210DD84 ; case 7
	b _0210DE40 ; case 8
_0210D8C0:
	ldrsh r9, [r7, #0x1a]
	ldrb r3, [r7, #0x1c]
	mov r1, r2, lsl #0x10
	add r1, r9, r1, asr #16
	strh r1, [r7, #0x1a]
	cmp r3, #0
	mov r9, r6
	beq _0210D914
	add r2, sp, #0x10
	add r1, sp, #0xc
	str r2, [sp]
	str r1, [sp, #4]
	ldrb r1, [r7, #5]
	ldrh r2, [r7]
	ldrh r3, [r7, #2]
	bl FUN_ov16_0210deec
	ldr r0, [sp, #0x10]
	strh r0, [r7, #0x10]
	ldr r0, [sp, #0xc]
	strh r0, [r7, #0x12]
	strb r6, [r7, #0x1c]
_0210D914:
	ldrb r0, [r7, #0x1d]
	cmp r0, #0
	beq _0210D968
	add r1, sp, #0x10
	add r0, sp, #0xc
	str r1, [sp]
	str r0, [sp, #4]
	ldrb r1, [r7, #5]
	ldrh r2, [r7]
	ldrh r3, [r7, #2]
	mov r0, r8
	bl FUN_ov16_0210deec
	ldrsh r3, [r7, #0x14]
	ldrsh r2, [r7, #0x10]
	ldrsh r1, [r7, #0x16]
	ldrsh r0, [r7, #0x12]
	add r2, r3, r2
	strh r2, [r7, #0x14]
	add r0, r1, r0
	strh r0, [r7, #0x16]
	strb r9, [r7, #0x1d]
_0210D968:
	ldrsh r3, [r7, #0x1a]
	ldrsh r1, [r7, #0x18]
	cmp r3, r1
	blt _0210D98C
	ldrsh r8, [r7, #0x14]
	mov r6, #1
	str r8, [sp, #0x10]
	ldrsh r1, [r7, #0x16]
	b _0210D9D0
_0210D98C:
	ldrsh r2, [r7, #0x14]
	ldrsh r0, [r7, #0x10]
	sub r0, r2, r0
	mul r0, r3, r0
	bl _s32_div_f
	ldrsh r1, [r7, #0x10]
	add r8, r1, r0
	str r8, [sp, #0x10]
	ldrsh r2, [r7, #0x16]
	ldrsh r0, [r7, #0x12]
	ldrsh r3, [r7, #0x1a]
	ldrsh r1, [r7, #0x18]
	sub r0, r2, r0
	mul r0, r3, r0
	bl _s32_div_f
	ldrsh r1, [r7, #0x12]
	add r1, r1, r0
_0210D9D0:
	str r1, [sp, #0xc]
	ldrb r0, [r7, #5]
	cmp r0, #0
	ldrh r0, [r7, #2]
	beq _0210DA38
	cmp r0, #0
	bne _0210DA0C
	mov r3, r1, lsl #0x10
	mov r2, r8, lsl #0x10
	ldrh r1, [r7]
	ldr r0, [r5]
	mov r2, r2, asr #0x10
	mov r3, r3, asr #0x10
	bl FUN_ov16_02117514
	b _0210DE44
_0210DA0C:
	mov r0, r1, lsl #0x10
	mov r0, r0, asr #0x10
	str r0, [sp]
	ldr r0, [sp, #0x10]
	ldrh r1, [r7]
	mov r3, r0, lsl #0x10
	ldrh r2, [r7, #2]
	ldr r0, [r5]
	mov r3, r3, asr #0x10
	bl FUN_ov16_02117390
	b _0210DE44
_0210DA38:
	cmp r0, #0
	bne _0210DA60
	mov r3, r1, lsl #0x10
	mov r2, r8, lsl #0x10
	ldrh r1, [r7]
	ldr r0, [r4]
	mov r2, r2, asr #0x10
	mov r3, r3, asr #0x10
	bl _ZN12C3DPlaneCtrl6setPosEiss
	b _0210DE44
_0210DA60:
	mov r0, r1, lsl #0x10
	mov r0, r0, asr #0x10
	str r0, [sp]
	ldr r0, [sp, #0x10]
	ldrh r1, [r7]
	mov r3, r0, lsl #0x10
	ldrh r2, [r7, #2]
	ldr r0, [r4]
	mov r3, r3, asr #0x10
	bl _ZN12C3DPlaneCtrl6setPosEiiss
	b _0210DE44
_0210DA8C:
	ldrb r0, [r7, #5]
	cmp r0, #0
	beq _0210DADC
	ldrh r0, [r7, #2]
	cmp r0, #0
	bne _0210DABC
	ldrh r1, [r7]
	ldrh r2, [r7, #0x10]
	ldr r0, [r5]
	sub r3, r6, #1
	bl FUN_ov16_02116b08
	b _0210DB14
_0210DABC:
	sub r0, r6, #1
	str r0, [sp]
	ldrh r1, [r7]
	ldrh r2, [r7, #2]
	ldrh r3, [r7, #0x10]
	ldr r0, [r5]
	bl FUN_ov16_02117180
	b _0210DB14
_0210DADC:
	ldrh r2, [r7, #2]
	cmp r2, #0
	bne _0210DB00
	ldrsh r2, [r7, #0x10]
	ldrh r1, [r7]
	ldr r0, [r4]
	and r2, r2, #0xff
	bl _ZN12C3DPlaneCtrl9setTexAllEih
	b _0210DB14
_0210DB00:
	ldrsh r3, [r7, #0x10]
	ldrh r1, [r7]
	ldr r0, [r4]
	and r3, r3, #0xff
	bl _ZN12C3DPlaneCtrl6setTexEiih
_0210DB14:
	ldrb r0, [r7, #5]
	mov r2, #0
	mov r1, #1
	cmp r0, #0
	ldrh r0, [r7, #2]
	beq _0210DB78
	cmp r0, #0
	bne _0210DB54
	str r2, [sp]
	str r1, [sp, #4]
	ldrh r1, [r7]
	ldrsh r2, [r7, #0x12]
	ldr r0, [r5]
	mov r3, #4
	bl FUN_ov16_0211702c
	b _0210DBB0
_0210DB54:
	mov r0, #4
	stmia sp, {r0, r2}
	str r1, [sp, #8]
	ldrh r1, [r7]
	ldrh r2, [r7, #2]
	ldrsh r3, [r7, #0x12]
	ldr r0, [r5]
	bl FUN_ov16_02117414
	b _0210DBB0
_0210DB78:
	cmp r0, #0
	bne _0210DB98
	ldrh r1, [r7]
	ldrsh r2, [r7, #0x12]
	ldr r0, [r4]
	mov r3, #0
	bl _ZN12C3DPlaneCtrl16setGraphicIdxAllEihb
	b _0210DBB0
_0210DB98:
	str r2, [sp]
	ldrh r1, [r7]
	ldrh r2, [r7, #2]
	ldrsh r3, [r7, #0x12]
	ldr r0, [r4]
	bl _ZN12C3DPlaneCtrl13setGraphicIdxEiihb
_0210DBB0:
	b _0210DE40
_0210DBB4:
	ldrb r0, [r7, #5]
	ldrh r2, [r7, #2]
	cmp r0, #0
	beq _0210DBF0
	cmp r2, #0
	ldrh r1, [r7]
	bne _0210DBE0
	ldrsh r2, [r7, #0x10]
	ldr r0, [r5]
	bl FUN_ov16_02116bdc
	b _0210DC24
_0210DBE0:
	ldrsh r3, [r7, #0x10]
	ldr r0, [r5]
	bl FUN_ov16_02117220
	b _0210DC24
_0210DBF0:
	cmp r2, #0
	bne _0210DC10
	ldrsh r2, [r7, #0x10]
	ldrh r1, [r7]
	ldr r0, [r4]
	and r2, r2, #0xff
	bl _ZN12C3DPlaneCtrl10setPlttAllEih
	b _0210DC24
_0210DC10:
	ldrsh r3, [r7, #0x10]
	ldrh r1, [r7]
	ldr r0, [r4]
	and r3, r3, #0xff
	bl _ZN12C3DPlaneCtrl7setPlttEiih
_0210DC24:
	ldrb r0, [r7, #5]
	ldrh r2, [r7, #2]
	cmp r0, #0
	beq _0210DC6C
	cmp r2, #0
	bne _0210DC54
	ldrsh r2, [r7, #0x12]
	ldrh r1, [r7]
	ldr r0, [r5]
	and r2, r2, #0xff
	bl FUN_ov16_02116c60
	b _0210DCA0
_0210DC54:
	ldrsh r3, [r7, #0x12]
	ldrh r1, [r7]
	ldr r0, [r5]
	and r3, r3, #0xff
	bl FUN_ov16_0211726c
	b _0210DCA0
_0210DC6C:
	cmp r2, #0
	bne _0210DC8C
	ldrsh r2, [r7, #0x12]
	ldrh r1, [r7]
	ldr r0, [r4]
	and r2, r2, #0xff
	bl _ZN12C3DPlaneCtrl13setPlttIdxAllEih
	b _0210DCA0
_0210DC8C:
	ldrsh r3, [r7, #0x12]
	ldrh r1, [r7]
	ldr r0, [r4]
	and r3, r3, #0xff
	bl _ZN12C3DPlaneCtrl10setPlttIdxEiih
_0210DCA0:
	b _0210DE40
_0210DCA4:
	ldrb r0, [r7, #5]
	ldrh r2, [r7, #2]
	cmp r0, #0
	beq _0210DD1C
	cmp r2, #0
	ldrb r0, [r7, #0x10]
	bne _0210DCE8
	cmp r0, #0
	ldrh r1, [r7]
	mov r2, #2
	ldr r0, [r5]
	beq _0210DCE0
	mov r3, #1
	bl FUN_ov16_02117598
	b _0210DD80
_0210DCE0:
	bl FUN_ov16_021175dc
	b _0210DD80
_0210DCE8:
	cmp r0, #0
	mov r3, #2
	beq _0210DD0C
	str r1, [sp]
	ldrh r1, [r7]
	ldrh r2, [r7, #2]
	ldr r0, [r5]
	bl FUN_ov16_02117284
	b _0210DD80
_0210DD0C:
	ldrh r1, [r7]
	ldr r0, [r5]
	bl FUN_ov16_021172cc
	b _0210DD80
_0210DD1C:
	cmp r2, #0
	ldrb r0, [r7, #0x10]
	bne _0210DD50
	cmp r0, #0
	ldrh r1, [r7]
	mov r2, #2
	ldr r0, [r4]
	beq _0210DD48
	mov r3, #1
	bl _ZN12C3DPlaneCtrl7setFlagEitb
	b _0210DD80
_0210DD48:
	bl _ZN12C3DPlaneCtrl9clearFlagEit
	b _0210DD80
_0210DD50:
	cmp r0, #0
	mov r3, #2
	beq _0210DD74
	str r1, [sp]
	ldrh r1, [r7]
	ldrh r2, [r7, #2]
	ldr r0, [r4]
	bl _ZN12C3DPlaneCtrl7setFlagEiitb
	b _0210DD80
_0210DD74:
	ldrh r1, [r7]
	ldr r0, [r4]
	bl _ZN12C3DPlaneCtrl9clearFlagEiit
_0210DD80:
	b _0210DE40
_0210DD84:
	ldrb r0, [r7, #5]
	cmp r0, #0
	beq _0210DDFC
	ldrh r2, [r7, #2]
	ldrb r0, [r7, #0x10]
	cmp r2, #0
	bne _0210DDC8
	cmp r0, #0
	ldrh r1, [r7]
	mov r2, #0x4000
	ldr r0, [r5]
	beq _0210DDC0
	mov r3, #1
	bl FUN_ov16_02117598
	b _0210DE3C
_0210DDC0:
	bl FUN_ov16_021175dc
	b _0210DE3C
_0210DDC8:
	cmp r0, #0
	mov r3, #0x4000
	beq _0210DDEC
	str r1, [sp]
	ldrh r1, [r7]
	ldrh r2, [r7, #2]
	ldr r0, [r5]
	bl FUN_ov16_02117284
	b _0210DE3C
_0210DDEC:
	ldrh r1, [r7]
	ldr r0, [r5]
	bl FUN_ov16_021172cc
	b _0210DE3C
_0210DDFC:
	ldrh r0, [r7, #2]
	cmp r0, #0
	bne _0210DE20
	ldrh r1, [r7]
	ldrb r3, [r7, #0x10]
	ldr r0, [r4]
	mov r2, #0x4000
	bl _ZN12C3DPlaneCtrl7setFlagEitb
	b _0210DE3C
_0210DE20:
	ldrb r0, [r7, #0x10]
	mov r3, #0x4000
	str r0, [sp]
	ldrh r1, [r7]
	ldrh r2, [r7, #2]
	ldr r0, [r4]
	bl _ZN12C3DPlaneCtrl7setFlagEiitb
_0210DE3C:
	b _0210DE40
_0210DE40:
	mov r6, #1
_0210DE44:
	mov r0, r6
	add sp, sp, #0x14
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, pc}
_0210DE50: .word g3DPlaneCtrl
_0210DE54: .word g3DSpriteCtrl
	arm_func_end FUN_ov16_0210d86c

	arm_func_start FUN_ov16_0210de58
FUN_ov16_0210de58: ; 0x0210DE58
	stmfd sp!, {r4, lr}
	mov r12, #0
	cmp r1, #0
	mov r4, r2
	movlt r1, r12
	blt _0210DE78
	cmp r1, #4
	movge r1, #3
_0210DE78:
	ldrb r3, [r4, #4]
	add r2, r0, #4
	add r2, r2, #0x400
	cmp r3, #1
	add r2, r2, r1, lsl #3
	bne _0210DEA4
	ldrsh r1, [r4, #0x18]
	cmp r1, #0
	ldrlesh r1, [r4, #6]
	cmple r1, #0
	b _0210DEAC
_0210DEA4:
	ldrsh r1, [r4, #6]
	cmp r1, #0
_0210DEAC:
	movle r12, #1
	cmp r12, #0
	beq _0210DEDC
	ldr r1, [r2]
	cmp r1, #0
	bne _0210DEDC
	mov r1, r4
	mov r2, #0
	bl FUN_ov16_0210d86c
	mov r0, r4
	bl FUN_ov16_0210d6dc
	ldmfd sp!, {r4, pc}
_0210DEDC:
	mov r0, r2
	mov r1, r4
	bl FUN_ov16_0210d6f4
	ldmfd sp!, {r4, pc}
	arm_func_end FUN_ov16_0210de58

	arm_func_start FUN_ov16_0210deec
FUN_ov16_0210deec: ; 0x0210DEEC
	stmfd sp!, {r3, r4, r5, lr}
	cmp r1, #0
	ldr r5, [sp, #0x10]
	ldr r4, [sp, #0x14]
	beq _0210DF7C
	cmp r3, #0
	bgt _0210DF40
	ldr r0, _0210E00C ; =g3DSpriteCtrl
	mov r1, r2
	ldr r0, [r0]
	bl FUN_ov16_0211685c
	cmp r0, #0
	moveq r0, #0
	ldmeqfd sp!, {r3, r4, r5, pc}
	ldr r2, [r0, #0xc]
	mov r1, r2, asr #0xb
	add r1, r2, r1, lsr #20
	mov r1, r1, asr #0xc
	str r1, [r5]
	ldr r1, [r0, #0x10]
	b _0210DFF4
_0210DF40:
	ldr r0, _0210E00C ; =g3DSpriteCtrl
	mov r1, r2
	ldr r0, [r0]
	mov r2, r3
	bl FUN_ov16_0211689c
	cmp r0, #0
	moveq r0, #0
	ldmeqfd sp!, {r3, r4, r5, pc}
	ldr r2, [r0, #0x28]
	mov r1, r2, asr #0xb
	add r1, r2, r1, lsr #20
	mov r1, r1, asr #0xc
	str r1, [r5]
	ldr r1, [r0, #0x2c]
	b _0210DFF4
_0210DF7C:
	cmp r3, #0
	bgt _0210DFBC
	ldr r0, _0210E010 ; =g3DPlaneCtrl
	mov r1, r2
	ldr r0, [r0]
	bl _ZN12C3DPlaneCtrl9getSetExtEi
	cmp r0, #0
	moveq r0, #0
	ldmeqfd sp!, {r3, r4, r5, pc}
	ldr r2, [r0, #8]
	mov r1, r2, asr #0xb
	add r1, r2, r1, lsr #20
	mov r1, r1, asr #0xc
	str r1, [r5]
	ldr r1, [r0, #0xc]
	b _0210DFF4
_0210DFBC:
	ldr r0, _0210E010 ; =g3DPlaneCtrl
	mov r1, r2
	ldr r0, [r0]
	mov r2, r3
	bl _ZN12C3DPlaneCtrl10getPartExtEii
	cmp r0, #0
	moveq r0, #0
	ldmeqfd sp!, {r3, r4, r5, pc}
	ldr r2, [r0, #0x1c]
	mov r1, r2, asr #0xb
	add r1, r2, r1, lsr #20
	mov r1, r1, asr #0xc
	str r1, [r5]
	ldr r1, [r0, #0x20]
_0210DFF4:
	mov r0, r1, asr #0xb
	add r0, r1, r0, lsr #20
	mov r0, r0, asr #0xc
	str r0, [r4]
	mov r0, #1
	ldmfd sp!, {r3, r4, r5, pc}
_0210E00C: .word g3DSpriteCtrl
_0210E010: .word g3DPlaneCtrl
	arm_func_end FUN_ov16_0210deec

	arm_func_start _ZN12CSprAnimCtrlC1Ev
_ZN12CSprAnimCtrlC1Ev: ; 0x0210E014
	stmfd sp!, {r3, r4, r5, lr}
	mov r5, r0
	ldr r3, _0210E054 ; =0x02119DF4
	mov r4, #0
	mov r0, r4
	add r1, r5, #4
	mov r2, #0x400
	str r3, [r5]
	bl MIi_CpuClearFast
	add r1, r5, #4
	mov r0, r4
	add r1, r1, #0x400
	mov r2, #0x20
	bl MIi_CpuClearFast
	mov r0, r5
	ldmfd sp!, {r3, r4, r5, pc}
_0210E054: .word ov16_02119DF4
	arm_func_end _ZN12CSprAnimCtrlC1Ev

	arm_func_start FUN_ov16_0210e058
FUN_ov16_0210e058: ; 0x0210E058
	stmfd sp!, {r4, lr}
	ldr r1, _0210E074 ; =0x02119DF4
	mov r4, r0
	str r1, [r4]
	bl FUN_ov16_0210e0d8
	mov r0, r4
	ldmfd sp!, {r4, pc}
_0210E074: .word ov16_02119DF4
	arm_func_end FUN_ov16_0210e058

	arm_func_start FUN_ov16_0210e078
FUN_ov16_0210e078: ; 0x0210E078
	stmfd sp!, {r4, lr}
	ldr r1, _0210E09C ; =0x02119DF4
	mov r4, r0
	str r1, [r4]
	bl FUN_ov16_0210e0d8
	mov r0, r4
	bl _ZdlPv
	mov r0, r4
	ldmfd sp!, {r4, pc}
_0210E09C: .word ov16_02119DF4
	arm_func_end FUN_ov16_0210e078

	arm_func_start FUN_ov16_0210e0a0
FUN_ov16_0210e0a0: ; 0x0210E0A0
	stmfd sp!, {r3, r4, r5, lr}
	mov r5, r0
	mov r4, #0
	mov r1, r4
	add r0, r5, #4
	mov r2, #0x400
	bl MI_CpuFill8
	add r0, r5, #4
	mov r1, r4
	add r0, r0, #0x400
	mov r2, #0x20
	bl MI_CpuFill8
	mov r0, #1
	ldmfd sp!, {r3, r4, r5, pc}
	arm_func_end FUN_ov16_0210e0a0

	arm_func_start FUN_ov16_0210e0d8
FUN_ov16_0210e0d8: ; 0x0210E0D8
	stmfd sp!, {r3, r4, r5, lr}
	mov r5, r0
	mov r4, #0
	mov r1, r4
	add r0, r5, #4
	mov r2, #0x400
	bl MI_CpuFill8
	add r0, r5, #4
	mov r1, r4
	add r0, r0, #0x400
	mov r2, #0x20
	bl MI_CpuFill8
	ldmfd sp!, {r3, r4, r5, pc}
	arm_func_end FUN_ov16_0210e0d8

	arm_func_start FUN_ov16_0210e10c
FUN_ov16_0210e10c: ; 0x0210E10C
	stmfd sp!, {r4, r5, r6, r7, r8, lr}
	mov r8, r0
	mov r6, #0
	add r0, r8, #4
	mov r7, r1
	mov r5, r6
	add r4, r0, #0x400
_0210E128:
	mov r0, r8
	mov r2, r7
	add r1, r4, r5, lsl #3
	bl FUN_ov16_0210d77c
	cmp r0, #0
	add r5, r5, #1
	addne r6, r6, #1
	cmp r5, #4
	blt _0210E128
	mov r0, #1
	cmp r6, #0
	movle r0, #0
	ldmfd sp!, {r4, r5, r6, r7, r8, pc}
	arm_func_end FUN_ov16_0210e10c

	arm_func_start FUN_ov16_0210e15c
FUN_ov16_0210e15c: ; 0x0210E15C
	mov r2, #0
_0210E160:
	add r1, r0, r2, lsl #3
	ldr r1, [r1, #0x404]
	cmp r1, #0
	movne r0, #1
	bxne lr
	add r2, r2, #1
	cmp r2, #4
	blt _0210E160
	mov r0, #0
	bx lr
	arm_func_end FUN_ov16_0210e15c

	arm_func_start FUN_ov16_0210e188
FUN_ov16_0210e188: ; 0x0210E188
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, lr}
	movs r6, r3
	mov r9, r0
	mov r8, r1
	mov r7, r2
	moveq r0, #0
	ldmeqfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
	bl FUN_ov16_0210d74c
	movs r5, r0
	moveq r0, #0
	ldmeqfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
	bl FUN_ov16_0210d6dc
	mov r4, #1
	ldr r0, [sp, #0x44]
	strb r4, [r5, #4]
	strh r0, [r5, #6]
	ldr r0, [sp, #0x24]
	strb r7, [r5, #5]
	ldrb r1, [sp, #0x48]
	strh r0, [r5, #8]
	ldr r0, [sp, #0x20]
	strb r1, [r5, #0xb]
	strh r6, [r5]
	ldr r1, [sp, #0x28]
	strh r0, [r5, #2]
	ldr r0, [sp, #0x2c]
	strh r1, [r5, #0x10]
	ldr r1, [sp, #0x30]
	strh r0, [r5, #0x12]
	ldr r0, [sp, #0x34]
	strh r1, [r5, #0x14]
	ldr r1, [sp, #0x40]
	strh r0, [r5, #0x16]
	ldrb r0, [sp, #0x38]
	strh r1, [r5, #0x18]
	ldrb r3, [sp, #0x3c]
	strb r0, [r5, #0x1c]
	mov r0, r9
	mov r1, r8
	mov r2, r5
	strb r3, [r5, #0x1d]
	bl FUN_ov16_0210de58
	mov r0, r4
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
	arm_func_end FUN_ov16_0210e188

	arm_func_start FUN_ov16_0210e238
FUN_ov16_0210e238: ; 0x0210E238
	stmdb sp!, {lr}
	sub sp, sp, #0x2c
	ldr lr, [sp, #0x30]
	ldr r12, [sp, #0x34]
	str lr, [sp]
	str r12, [sp, #4]
	mov r12, #0
	str r12, [sp, #8]
	ldr lr, [sp, #0x38]
	str r12, [sp, #0xc]
	ldr r12, [sp, #0x3c]
	str lr, [sp, #0x10]
	str r12, [sp, #0x14]
	mov lr, #1
	str lr, [sp, #0x18]
	ldr r12, [sp, #0x40]
	str lr, [sp, #0x1c]
	ldr lr, [sp, #0x44]
	str r12, [sp, #0x20]
	ldrb r12, [sp, #0x48]
	str lr, [sp, #0x24]
	str r12, [sp, #0x28]
	bl FUN_ov16_0210e188
	add sp, sp, #0x2c
	ldmia sp!, {pc}
	arm_func_end FUN_ov16_0210e238

	arm_func_start FUN_ov16_0210e29c
FUN_ov16_0210e29c: ; 0x0210E29C
	stmfd sp!, {r3, r4, lr}
	sub sp, sp, #0x2c
	ldr r12, [sp, #0x38]
	ldr r4, [sp, #0x3c]
	str r12, [sp]
	str r4, [sp, #4]
	mov r4, #0
	str r4, [sp, #8]
	ldr lr, [sp, #0x40]
	str r4, [sp, #0xc]
	ldr r12, [sp, #0x44]
	str lr, [sp, #0x10]
	str r12, [sp, #0x14]
	mov r12, #1
	str r12, [sp, #0x18]
	ldr r12, [sp, #0x48]
	str r4, [sp, #0x1c]
	ldr lr, [sp, #0x4c]
	str r12, [sp, #0x20]
	ldrb r12, [sp, #0x50]
	str lr, [sp, #0x24]
	str r12, [sp, #0x28]
	bl FUN_ov16_0210e188
	add sp, sp, #0x2c
	ldmfd sp!, {r3, r4, pc}
	arm_func_end FUN_ov16_0210e29c

	arm_func_start FUN_ov16_0210e300
FUN_ov16_0210e300: ; 0x0210E300
	stmdb sp!, {lr}
	sub sp, sp, #0x2c
	ldr lr, [sp, #0x30]
	ldr r12, [sp, #0x34]
	str lr, [sp]
	ldr lr, [sp, #0x38]
	str r12, [sp, #4]
	ldr r12, [sp, #0x3c]
	str lr, [sp, #8]
	ldr lr, [sp, #0x40]
	str r12, [sp, #0xc]
	ldr r12, [sp, #0x44]
	str lr, [sp, #0x10]
	str r12, [sp, #0x14]
	mov lr, #0
	str lr, [sp, #0x18]
	ldr r12, [sp, #0x48]
	str lr, [sp, #0x1c]
	ldr lr, [sp, #0x4c]
	str r12, [sp, #0x20]
	ldrb r12, [sp, #0x50]
	str lr, [sp, #0x24]
	str r12, [sp, #0x28]
	bl FUN_ov16_0210e188
	add sp, sp, #0x2c
	ldmia sp!, {pc}
	arm_func_end FUN_ov16_0210e300

	arm_func_start FUN_ov16_0210e368
FUN_ov16_0210e368: ; 0x0210E368
	stmfd sp!, {r4, r5, r6, r7, r8, lr}
	movs r5, r3
	mov r8, r0
	mov r7, r1
	mov r6, r2
	moveq r0, #0
	ldmeqfd sp!, {r4, r5, r6, r7, r8, pc}
	bl FUN_ov16_0210d74c
	movs r4, r0
	moveq r0, #0
	ldmeqfd sp!, {r4, r5, r6, r7, r8, pc}
	bl FUN_ov16_0210d6dc
	mov r1, #2
	ldr r0, [sp, #0x28]
	strb r1, [r4, #4]
	strh r0, [r4, #6]
	ldr r1, [sp, #0x1c]
	strb r6, [r4, #5]
	ldrb r0, [sp, #0x2c]
	strh r1, [r4, #8]
	ldr r1, [sp, #0x18]
	strb r0, [r4, #0xb]
	strh r5, [r4]
	ldr r0, [sp, #0x20]
	strh r1, [r4, #2]
	ldr r3, [sp, #0x24]
	strh r0, [r4, #0x10]
	mov r0, r8
	mov r1, r7
	mov r2, r4
	strh r3, [r4, #0x12]
	bl FUN_ov16_0210de58
	mov r0, #1
	ldmfd sp!, {r4, r5, r6, r7, r8, pc}
	arm_func_end FUN_ov16_0210e368

	arm_func_start FUN_ov16_0210e3f0
FUN_ov16_0210e3f0: ; 0x0210E3F0
	stmfd sp!, {r4, r5, r6, r7, r8, lr}
	movs r5, r3
	mov r8, r0
	mov r7, r1
	mov r6, r2
	moveq r0, #0
	ldmeqfd sp!, {r4, r5, r6, r7, r8, pc}
	bl FUN_ov16_0210d74c
	movs r4, r0
	moveq r0, #0
	ldmeqfd sp!, {r4, r5, r6, r7, r8, pc}
	bl FUN_ov16_0210d6dc
	mov r1, #3
	ldr r0, [sp, #0x24]
	strb r1, [r4, #4]
	strh r0, [r4, #6]
	ldr r0, [sp, #0x1c]
	strb r6, [r4, #5]
	ldrb r1, [sp, #0x28]
	strh r0, [r4, #8]
	ldr r0, [sp, #0x18]
	strb r1, [r4, #0xb]
	strh r5, [r4]
	ldr r3, [sp, #0x20]
	strh r0, [r4, #2]
	mov r0, r8
	mov r1, r7
	mov r2, r4
	strh r3, [r4, #0x12]
	bl FUN_ov16_0210de58
	mov r0, #1
	ldmfd sp!, {r4, r5, r6, r7, r8, pc}
	arm_func_end FUN_ov16_0210e3f0

	arm_func_start FUN_ov16_0210e470
FUN_ov16_0210e470: ; 0x0210E470
	stmfd sp!, {r4, r5, r6, r7, r8, lr}
	movs r5, r3
	mov r8, r0
	mov r7, r1
	mov r6, r2
	moveq r0, #0
	ldmeqfd sp!, {r4, r5, r6, r7, r8, pc}
	bl FUN_ov16_0210d74c
	movs r4, r0
	moveq r0, #0
	ldmeqfd sp!, {r4, r5, r6, r7, r8, pc}
	bl FUN_ov16_0210d6dc
	mov r1, #5
	ldr r0, [sp, #0x24]
	strb r1, [r4, #4]
	strh r0, [r4, #6]
	ldr r0, [sp, #0x1c]
	strb r6, [r4, #5]
	ldrb r1, [sp, #0x28]
	strh r0, [r4, #8]
	ldr r0, [sp, #0x18]
	strb r1, [r4, #0xb]
	strh r5, [r4]
	ldr r3, [sp, #0x20]
	strh r0, [r4, #2]
	mov r0, r8
	mov r1, r7
	mov r2, r4
	strh r3, [r4, #0x12]
	bl FUN_ov16_0210de58
	mov r0, #1
	ldmfd sp!, {r4, r5, r6, r7, r8, pc}
	arm_func_end FUN_ov16_0210e470

	arm_func_start FUN_ov16_0210e4f0
FUN_ov16_0210e4f0: ; 0x0210E4F0
	stmfd sp!, {r4, r5, r6, r7, r8, lr}
	movs r5, r3
	mov r8, r0
	mov r7, r1
	mov r6, r2
	moveq r0, #0
	ldmeqfd sp!, {r4, r5, r6, r7, r8, pc}
	bl FUN_ov16_0210d74c
	movs r4, r0
	moveq r0, #0
	ldmeqfd sp!, {r4, r5, r6, r7, r8, pc}
	bl FUN_ov16_0210d6dc
	mov r1, #6
	ldr r0, [sp, #0x24]
	strb r1, [r4, #4]
	strh r0, [r4, #6]
	ldr r0, [sp, #0x1c]
	strb r6, [r4, #5]
	ldrb r1, [sp, #0x28]
	strh r0, [r4, #8]
	ldr r0, [sp, #0x18]
	strb r1, [r4, #0xb]
	strh r5, [r4]
	ldrb r3, [sp, #0x20]
	strh r0, [r4, #2]
	mov r0, r8
	mov r1, r7
	mov r2, r4
	strb r3, [r4, #0x10]
	bl FUN_ov16_0210de58
	mov r0, #1
	ldmfd sp!, {r4, r5, r6, r7, r8, pc}
	arm_func_end FUN_ov16_0210e4f0

	arm_func_start FUN_ov16_0210e570
FUN_ov16_0210e570: ; 0x0210E570
	stmfd sp!, {r4, r5, r6, r7, r8, lr}
	movs r5, r3
	mov r8, r0
	mov r7, r1
	mov r6, r2
	moveq r0, #0
	ldmeqfd sp!, {r4, r5, r6, r7, r8, pc}
	bl FUN_ov16_0210d74c
	movs r4, r0
	moveq r0, #0
	ldmeqfd sp!, {r4, r5, r6, r7, r8, pc}
	bl FUN_ov16_0210d6dc
	mov r1, #7
	ldr r0, [sp, #0x24]
	strb r1, [r4, #4]
	strh r0, [r4, #6]
	ldr r0, [sp, #0x1c]
	strb r6, [r4, #5]
	ldrb r1, [sp, #0x28]
	strh r0, [r4, #8]
	ldr r0, [sp, #0x18]
	strb r1, [r4, #0xb]
	strh r5, [r4]
	ldrb r3, [sp, #0x20]
	strh r0, [r4, #2]
	mov r0, r8
	mov r1, r7
	mov r2, r4
	strb r3, [r4, #0x10]
	bl FUN_ov16_0210de58
	mov r0, #1
	ldmfd sp!, {r4, r5, r6, r7, r8, pc}
	arm_func_end FUN_ov16_0210e570

	arm_func_start FUN_ov16_0210e5f0
FUN_ov16_0210e5f0: ; 0x0210E5F0
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	mov r7, r0
	mov r6, r1
	mov r5, r2
	bl FUN_ov16_0210d74c
	movs r4, r0
	moveq r0, #0
	ldmeqfd sp!, {r3, r4, r5, r6, r7, pc}
	bl FUN_ov16_0210d6dc
	mov r0, #8
	strb r0, [r4, #4]
	mov r0, r7
	mov r1, r6
	mov r2, r4
	strh r5, [r4, #6]
	bl FUN_ov16_0210de58
	mov r0, #1
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
	arm_func_end FUN_ov16_0210e5f0


	.section .init, 4
	arm_func_start __sinit_CSprAnimeCtrl.cpp
__sinit_CSprAnimeCtrl.cpp: ; 0x02118158
	stmfd sp!, {r3, r4, r5, lr}
	mov r5, #0x2000
	mov r0, r5
	bl FX_Sqrt
	ldr r4, _021181A0 ; =0x02119DD4
	str r0, [r4, #0x14]
	ldr r0, _021181A4 ; =0x00009CCD
	bl FX_Sqrt
	mov r1, #0x800
	str r0, [r4, #0x10]
	ldr r0, _021181A8 ; =0x0000EA3C
	str r1, [r4, #0xc]
	str r0, [r4, #8]
	add r0, r5, #0x4e0000
	str r0, [r4, #4]
	add r0, r1, #0x840000
	str r0, [r4]
	ldmfd sp!, {r3, r4, r5, pc}
_021181A0: .word ov16_02119DD4
_021181A4: .word 0x00009CCD
_021181A8: .word 0x0000EA3C
	arm_func_end __sinit_CSprAnimeCtrl.cpp


	.section .ctor, 4
#pragma force_active on
	.word __sinit_CSprAnimeCtrl.cpp


	.data
	.global ov16_02119DD4
ov16_02119DD4:
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00
	.global ov16_02119DF4
ov16_02119DF4:
	.word FUN_ov16_0210e058
	.word FUN_ov16_0210e078