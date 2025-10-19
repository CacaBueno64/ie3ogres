
	.include "asm/macros/function.inc"
	.public DC_FlushRange
	.public DWCi_ARClReadEx
	.public DWCi_ARClRelease
	.public DWCi_CMNlLoadResource
	.public DWCi_Char
	.public DWCi_Entry
	.public DWCi_HEAPlAllocEx
	.public DWCi_HEAPlFree_
	.public DWCi_SETTIGNlGet
	.public DWCi_TSKlDelete
	.public DWCi_TSKlForm
	.public GX_LoadBG1Char
	.public GX_LoadBG1Scr
	.public MIi_CpuCopyFast

	.text
	arm_func_start DWCi_HLlInit
DWCi_HLlInit: ; 0x020F5298
	stmfd sp!, {r3, lr}
	mov r0, #0xc0
	mov r1, #4
	bl DWCi_HEAPlAllocEx
	ldr r2, _020F52FC ; =0x021161B4
	ldr r1, _020F5300 ; =GX_LoadBG1Char
	str r0, [r2]
	ldr r0, _020F5304 ; =0x02112AC4
	bl DWCi_CMNlLoadResource
	bl DWCi_Entry
	cmp r0, #0
	beq _020F52D4
	cmp r0, #1
	beq _020F52E8
	ldmfd sp!, {r3, pc}
_020F52D4:
	ldr r0, _020F5308 ; =0x02112A74
	ldr r1, _020F530C ; =GX_LoadBG1Scr
	ldr r0, [r0]
	bl DWCi_CMNlLoadResource
	ldmfd sp!, {r3, pc}
_020F52E8:
	ldr r0, _020F5308 ; =0x02112A74
	ldr r1, _020F530C ; =GX_LoadBG1Scr
	ldr r0, [r0, #4]
	bl DWCi_CMNlLoadResource
	ldmfd sp!, {r3, pc}
_020F52FC: .word Buffer
_020F5300: .word GX_LoadBG1Char
_020F5304: .word ov17_02112AC4
_020F5308: .word FILE_NAME
_020F530C: .word GX_LoadBG1Scr
	arm_func_end DWCi_HLlInit

	arm_func_start DWCi_HLlEnd
DWCi_HLlEnd: ; 0x020F5310
	ldr r0, _020F531C ; =0x021161B4
	ldr r12, _020F5320 ; =DWCi_HEAPlFree_
	bx r12
_020F531C: .word Buffer
_020F5320: .word DWCi_HEAPlFree_
	arm_func_end DWCi_HLlEnd

	arm_func_start DWCi_HLlLoad
DWCi_HLlLoad: ; 0x020F5324
	stmfd sp!, {r3, r4, r5, lr}
	ldr r1, _020F5378 ; =0x02112A74
	ldr r0, [r1, r0, lsl #2]
	bl DWCi_Char
	mov r5, #0
	mov r1, r5
	mov r2, #4
	bl DWCi_ARClReadEx
	ldr r1, _020F537C ; =0x021161B4
	mov r4, r0
	ldr r1, [r1]
	mov r2, #0xc0
	bl MIi_CpuCopyFast
	mov r0, r4
	bl DWCi_ARClRelease
	mov r2, r5
	mov r0, #1
	ldr r1, _020F5380 ; =taskLoad
	mov r3, #0x78
	bl DWCi_TSKlForm
	ldmfd sp!, {r3, r4, r5, pc}
_020F5378: .word FILE_NAME
_020F537C: .word Buffer
_020F5380: .word taskLoad
	arm_func_end DWCi_HLlLoad

	arm_func_start DWCi_HLlLoadSet
DWCi_HLlLoadSet: ; 0x020F5384
	stmfd sp!, {r3, lr}
	bl DWCi_SETTIGNlGet
	ldrb r0, [r0, #0xf4]
	add r0, r0, #5
	bl DWCi_HLlLoad
	ldmfd sp!, {r3, pc}
	arm_func_end DWCi_HLlLoadSet

	arm_func_start DWCi_HLlLoadList
DWCi_HLlLoadList: ; 0x020F539C
	stmfd sp!, {r3, lr}
	bl DWCi_SETTIGNlGet
	ldrb r0, [r0, #0xf4]
	add r0, r0, #2
	bl DWCi_HLlLoad
	ldmfd sp!, {r3, pc}
	arm_func_end DWCi_HLlLoadList

	arm_static_func_start taskLoad
taskLoad: ; 0x020F53B4
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
	bl GX_LoadBG1Scr
	mov r1, r6
	mov r0, #1
	bl DWCi_TSKlDelete
	ldmfd sp!, {r4, r5, r6, pc}
_020F53F0: .word Buffer
	arm_func_end taskLoad

	.data
ov17_021128A4:
	.asciz "char/jb2HlAp.nsc.l"
	.balign 4, 0
ov17_021128B8:
	.asciz "char/jb4HlIp.nsc.l"
	.balign 4, 0
ov17_021128CC:
	.asciz "char/jb4HlWep.nsc.l"
	.balign 4, 0
ov17_021128E0:
	.asciz "char/jb4HlUsb.nsc.l"
	.balign 4, 0
ov17_021128F4:
	.asciz "char/jb4HlDns1.nsc.l"
	.balign 4, 0
ov17_0211290C:
	.asciz "char/jb4HlSsid.nsc.l"
	.balign 4, 0
ov17_02112924:
	.asciz "char/jb5HlMove.nsc.l"
	.balign 4, 0
ov17_0211293C:
	.asciz "char/jb2HlWiFi.nsc.l"
	.balign 4, 0
ov17_02112954:
	.asciz "char/jb5HlInfo.nsc.l"
	.balign 4, 0
ov17_0211296C:
	.asciz "char/jb4HlMask.nsc.l"
	.balign 4, 0
ov17_02112984:
	.asciz "char/jb4HlSet2.nsc.l"
	.balign 4, 0
ov17_0211299C:
	.asciz "char/jb4HlDns0.nsc.l"
	.balign 4, 0
ov17_021129B4:
	.asciz "char/jb4HlSet3.nsc.l"
	.balign 4, 0
ov17_021129CC:
	.asciz "char/jb4HlSet1.nsc.l"
	.balign 4, 0
ov17_021129E4:
	.asciz "char/jb3HlList1.nsc.l"
	.balign 4, 0
ov17_021129FC:
	.asciz "char/jb3HlList2.nsc.l"
	.balign 4, 0
ov17_02112A14:
	.asciz "char/jb3HlList3.nsc.l"
	.balign 4, 0
ov17_02112A2C:
	.asciz "char/jb5HlErase.nsc.l"
	.balign 4, 0
ov17_02112A44:
	.asciz "char/jb5HlOption.nsc.l"
	.balign 4, 0
ov17_02112A5C:
	.asciz "char/jb4HlGateway.nsc.l"
	.balign 4, 0
FILE_NAME:
	.word ov17_0211293C, ov17_021128A4, ov17_021129E4, ov17_021129FC, ov17_02112A14
	.word ov17_021129CC, ov17_02112984, ov17_021129B4, ov17_021128E0, ov17_0211290C
	.word ov17_021128CC, ov17_021128B8, ov17_0211296C, ov17_02112A5C, ov17_0211299C
	.word ov17_021128F4, ov17_02112A44, ov17_02112954, ov17_02112A2C, ov17_02112924
ov17_02112AC4:
	.asciz "char/jbBgHl.ncg.l"

	.bss
Buffer:
	.space 0x04
