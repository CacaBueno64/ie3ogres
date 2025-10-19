
	.include "asm/macros/function.inc"
	.public DC_FlushRange
	.public DWCi_ARClReadEx
	.public DWCi_ARClRelease
	.public DWCi_CELLlGetObj
	.public DWCi_CELLlSetEffect
	.public DWCi_CELLlSetPalette
	.public DWCi_CELLlSetPriority
	.public DWCi_HEAPlAllocEx
	.public DWCi_HEAPlFree_
	.public DWCi_Language
	.public DWCi_OVRlAlloc
	.public DWCi_OVRlFree
	.public DWCi_QUElDelete
	.public DWCi_QUElFormEx
	.public DWCi_QUElPopBack
	.public DWCi_QUElPushBack
	.public DWCi_TSKlDeleteEx
	.public DWCi_TSKlForm
	.public G2S_GetBG0ScrPtr
	.public G2_GetBG0CharPtr
	.public G2_GetBG0ScrPtr
	.public GXS_LoadBG0Char
	.public GX_LoadBG0Char
	.public MIi_CpuClear16
	.public NNS_G2dArrangeOBJ1D
	.public NNS_G2dCharCanvasDrawChar
	.public NNS_G2dCharCanvasInitForBG
	.public NNS_G2dCharCanvasInitForOBJ1D
	.public NNS_G2dFontFindGlyphIndex
	.public NNS_G2dFontGetCharWidthsFromIndex
	.public NNS_G2dFontInitUTF16
	.public NNS_G2dMapScrToCharText
	.public NNSi_G2dCalcRequiredOBJ
	.public NNSi_G2dTextCanvasDrawText
	.public NNSi_G2dTextCanvasDrawTextRect

	.text
	arm_func_start DWCi_FNTlInit
DWCi_FNTlInit: ; 0x0210D4B8
	stmfd sp!, {r4, r5, r6, r7, r8, lr}
	mov r0, #0x680
	mov r1, #4
	bl DWCi_HEAPlAllocEx
	ldr r4, _0210D58C ; =0x021162E0
	add r1, r0, #0x10
	str r0, [r4]
	mov r0, #0x20
	mov r2, #0x30
	bl DWCi_QUElFormEx
	ldr r1, [r4]
	str r0, [r1, #0x670]
	bl DWCi_Language
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
	bl DWCi_ARClReadEx
	ldr r1, [r4]
	add r1, r1, r8, lsl #2
	str r0, [r1, #0x674]
	ldr r2, [r4]
	add r0, r2, r8, lsl #2
	ldr r1, [r0, #0x674]
	add r0, r2, r8, lsl #3
	bl NNS_G2dFontInitUTF16
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
	bl DWCi_ARClReadEx
	ldr r1, [r4]
	add r1, r1, r8, lsl #2
	str r0, [r1, #0x674]
	ldr r2, [r4]
	add r0, r2, r8, lsl #2
	ldr r1, [r0, #0x674]
	add r0, r2, r8, lsl #3
	bl NNS_G2dFontInitUTF16
	add r8, r8, #1
	cmp r8, #2
	blt _0210D54C
	ldmfd sp!, {r4, r5, r6, r7, r8, pc}
_0210D58C: .word MemFont
_0210D590: .word KONT_FILE
_0210D594: .word FONT_FILE
	arm_func_end DWCi_FNTlInit

	arm_func_start DWCi_FNTlEnd
DWCi_FNTlEnd: ; 0x0210D598
	stmfd sp!, {r3, r4, r5, lr}
	ldr r4, _0210D5DC ; =0x021162E0
	mov r5, #0
_0210D5A4:
	ldr r0, [r4]
	add r0, r0, r5, lsl #2
	ldr r0, [r0, #0x674]
	bl DWCi_ARClRelease
	add r5, r5, #1
	cmp r5, #2
	blt _0210D5A4
	ldr r0, _0210D5DC ; =0x021162E0
	ldr r0, [r0]
	ldr r0, [r0, #0x670]
	bl DWCi_QUElDelete
	ldr r0, _0210D5E0 ; =0x021162E0
	bl DWCi_HEAPlFree_
	ldmfd sp!, {r3, r4, r5, pc}
_0210D5DC: .word MemFont
_0210D5E0: .word MemFont
	arm_func_end DWCi_FNTlEnd

	arm_func_start DWCi_FNTlFormEx
DWCi_FNTlFormEx: ; 0x0210D5E4
	stmfd sp!, {r4, r5, r6, r7, r8, lr}
	sub sp, sp, #8
	ldr r4, _0210D6BC ; =0x021162E0
	mov r7, r0
	ldr r0, [r4]
	mov r6, r1
	ldr r0, [r0, #0x670]
	mov r5, r2
	mov r8, r3
	bl DWCi_QUElPopBack
	mov r4, r0
	strb r6, [r4, #0x2e]
	mul r1, r6, r5
	mov r2, r8
	strb r5, [r4, #0x2f]
	mov r0, r7
	add r3, sp, #4
	bl DWCi_OVRlAlloc
	str r0, [r4, #0x28]
	ldr r1, [sp, #4]
	mov r0, r6
	strh r1, [r4, #0x2c]
	mov r1, r5
	bl NNSi_G2dCalcRequiredOBJ
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
	bl NNS_G2dCharCanvasInitForOBJ1D
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
_0210D6BC: .word MemFont
	arm_func_end DWCi_FNTlFormEx

	arm_func_start DWCi_FNTlDelete
DWCi_FNTlDelete: ; 0x0210D6C0
	stmfd sp!, {r4, lr}
	mov r4, r0
	ldr r0, [r4, #0x28]
	bl DWCi_OVRlFree
	ldr r0, _0210D6E8 ; =0x021162E0
	mov r1, r4
	ldr r0, [r0]
	ldr r0, [r0, #0x670]
	bl DWCi_QUElPushBack
	ldmfd sp!, {r4, pc}
_0210D6E8: .word MemFont
	arm_func_end DWCi_FNTlDelete

	arm_func_start DWCi_FNTlFormBgEx
DWCi_FNTlFormBgEx: ; 0x0210D6EC
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
	bl DWCi_HEAPlAllocEx
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
	bl NNS_G2dCharCanvasInitForBG
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
	bl G2S_GetBG0ScrPtr
	b _0210D7BC
_0210D7B8:
	bl G2_GetBG0ScrPtr
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
	bl NNS_G2dMapScrToCharText
	mov r0, r5
	mov r1, r4
	bl DWCi_FNTlClear
	ldr r0, _0210D834 ; =0x021162E0
	ldr r1, _0210D850 ; =taskLoad
	ldr r2, [r0]
	mov r0, #1
	add r2, r2, #0x27c
	add r2, r2, #0x400
	add r2, r2, r8
	mov r3, #0xc8
	bl DWCi_TSKlForm
	str r0, [r5, #0x2c]
	mov r0, r5
	add sp, sp, #0x10
	ldmfd sp!, {r4, r5, r6, r7, r8, pc}
_0210D834: .word MemFont
_0210D838: .word S_CANV+2
_0210D83C: .word S_CANV
_0210D840: .word 0x0000FFBF
_0210D844: .word 0x04001008
_0210D848: .word 0x04000008
_0210D84C: .word START_CHR
_0210D850: .word taskLoad
	arm_func_end DWCi_FNTlFormBgEx

	arm_static_func_start taskLoad
taskLoad: ; 0x0210D854
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
	bl GX_LoadBG0Char
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
	bl GXS_LoadBG0Char
_0210D8CC:
	mov r0, #0
	strb r0, [r4]
	ldmfd sp!, {r4, r5, r6, pc}
_0210D8D8: .word MemFont
	arm_func_end taskLoad

	arm_func_start DWCi_FNTlDeleteBg
DWCi_FNTlDeleteBg: ; 0x0210D8DC
	stmfd sp!, {r4, lr}
	mov r4, r0
	ldr r1, [r4, #0x2c]
	mov r0, #1
	bl DWCi_TSKlDeleteEx
	ldr r0, _0210D938 ; =0x021162E0
	ldr r0, [r0]
	add r0, r0, #0x610
	cmp r4, r0
	bne _0210D918
	bl G2_GetBG0CharPtr
	mov r1, r0
	mov r0, #0
	mov r2, #0x6000
	b _0210D928
_0210D918:
	bl G2_GetBG0CharPtr
	mov r1, r0
	mov r0, #0
	mov r2, #0x3000
_0210D928:
	bl MIi_CpuClear16
	add r0, r4, #0x28
	bl DWCi_HEAPlFree_
	ldmfd sp!, {r4, pc}
_0210D938: .word MemFont
	arm_func_end DWCi_FNTlDeleteBg

	arm_func_start DWCi_FNTlDeleteBgLcd
DWCi_FNTlDeleteBgLcd: ; 0x0210D93C
	ldr r2, _0210D958 ; =0x021162E0
	mov r1, #0x30
	ldr r2, [r2]
	ldr r12, _0210D95C ; =DWCi_FNTlDeleteBg
	add r2, r2, #0x610
	mla r0, r1, r0, r2
	bx r12
_0210D958: .word MemFont
_0210D95C: .word DWCi_FNTlDeleteBg
	arm_func_end DWCi_FNTlDeleteBgLcd

	arm_func_start DWCi_FNTlDraw
DWCi_FNTlDraw: ; 0x0210D960
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
	bl NNSi_G2dTextCanvasDrawText
	add sp, sp, #0x10
	ldmfd sp!, {r4, pc}
	arm_func_end DWCi_FNTlDraw

	arm_func_start DWCi_FNTlDrawCharEx
DWCi_FNTlDrawCharEx: ; 0x0210DA08
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
	bl NNS_G2dCharCanvasDrawChar
	add sp, sp, #8
	ldmfd sp!, {r3, pc}
_0210DA40: .word MemFont
	arm_func_end DWCi_FNTlDrawCharEx

	arm_func_start DWCi_FNTlDrawStringEx
DWCi_FNTlDrawStringEx: ; 0x0210DA44
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
	bl NNS_G2dFontFindGlyphIndex
	mov r1, r0
	ldr r0, _0210DAEC ; =0x0000FFFF
	cmp r1, r0
	ldreq r0, [r4]
	ldreqh r1, [r0, #2]
	mov r0, r4
	bl NNS_G2dFontGetCharWidthsFromIndex
	ldrh r1, [r6]
	mov r2, r0
	mov r0, r10
	stmia sp, {r1, r5}
	ldrsb r1, [r2, #2]
	mov r2, r8
	mov r3, r11
	sub r1, r7, r1
	add r1, r9, r1, asr #1
	bl DWCi_FNTlDrawCharEx
	ldrh r1, [r6, #2]!
	add r9, r9, r7
	cmp r1, #0
	bne _0210DA78
	add sp, sp, #8
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_0210DAE8: .word MemFont
_0210DAEC: .word 0x0000FFFF
	arm_func_end DWCi_FNTlDrawStringEx

	arm_func_start DWCi_FNTlDrawRect
DWCi_FNTlDrawRect: ; 0x0210DAF0
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
	bl NNSi_G2dTextCanvasDrawTextRect
	add sp, sp, #0x18
	ldmfd sp!, {r4, pc}
	arm_func_end DWCi_FNTlDrawRect

	arm_func_start DWCi_FNTlClear
DWCi_FNTlClear: ; 0x0210DBA8
	stmfd sp!, {r3, lr}
	ldr r2, [r0, #0x14]
	ldr r2, [r2, #4]
	blx r2
	ldmfd sp!, {r3, pc}
	arm_func_end DWCi_FNTlClear

	arm_func_start DWCi_FNTlDisp
DWCi_FNTlDisp: ; 0x0210DBBC
	stmfd sp!, {r4, r5, r6, r7, r8, r9, r10, lr}
	sub sp, sp, #0x10
	mov r8, r3
	mov r4, r0
	mov r7, #0
	mov r10, r1
	mov r0, r8
	mov r1, r7
	mov r9, r2
	bl DWCi_CELLlGetObj
	sub r5, r7, #1
	mov r6, r0
	mov r0, r8
	mov r1, r5
	mov r2, r7
	mov r3, r7
	bl DWCi_CELLlSetEffect
	mov r0, r8
	mov r1, r5
	mov r2, r7
	mov r3, #0xf
	bl DWCi_CELLlSetPalette
	mov r0, r8
	mov r1, r5
	ldr r2, [sp, #0x30]
	bl DWCi_CELLlSetPriority
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
	bl NNS_G2dArrangeOBJ1D
	add sp, sp, #0x10
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, pc}
	arm_func_end DWCi_FNTlDisp

	arm_func_start DWCi_FNTlRenewBg
DWCi_FNTlRenewBg: ; 0x0210DC58
	ldr r1, _0210DC78 ; =0x021162E0
	ldr r2, [r1]
	add r1, r2, #0x610
	cmp r0, r1
	mov r0, #1
	streqb r0, [r2, #0x67c]
	strneb r0, [r2, #0x67d]
	bx lr
_0210DC78: .word MemFont
	arm_func_end DWCi_FNTlRenewBg

	.rodata
START_CHR:
	.byte 0x00, 0x00, 0x80, 0x01
S_CANV:
	.byte 0x20, 0x00, 0x18, 0x00, 0x20, 0x00, 0x0C, 0x00

	.data
KONT_FILE:
	.word ov17_02113C74, ov17_02113C64
FONT_FILE:
	.word ov17_02113C84, ov17_02113C64
ov17_02113C64:
	.asciz "msg/lc_s.NFTR.l"
	.balign 4, 0
ov17_02113C74:
	.asciz "msg/kc_m.NFTR.l"
	.balign 4, 0
ov17_02113C84:
	.asciz "msg/lc_m.NFTR.l"
	.balign 4, 0

	.bss
MemFont:
	.space 0x04
