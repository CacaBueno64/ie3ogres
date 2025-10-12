
	.include "asm/macros/function.inc"
	.public DWC_Auth_GetCalInfoFromNVRAM
	.public DWC_Auth_SetCalInfoToHttp
	.public DWC_Auth_SetNasTimeDiff
	.public DWC_Http_Add_PostBase64Item
	.public DWC_Http_Create
	.public DWC_Http_Destroy
	.public DWC_Http_FinishHeader
	.public DWC_Http_GetBase64DecodedResult
	.public DWC_Http_GetResult
	.public DWC_Http_ParseResult
	.public DWC_Http_StartThread
	.public DWCauthhttpparam
	.public DWCi_SetError
	.public MI_CpuFill8
	.public OS_GetThreadPriority
	.public OS_IsThreadTerminated
	.public OS_Terminate
	.public OSi_ThreadInfo
	.public atoi
	.public errno
	.public strcmp

	.text
	arm_func_start DWC_Svl_Init
DWC_Svl_Init: ; 0x020CA2AC
	stmfd sp!, {r4, r5, r6, r7, r8, lr}
	ldr r4, _020CA334 ; =intwork
	mov r8, r0
	ldr r0, [r4]
	mov r7, r1
	cmp r0, #0
	beq _020CA2DC
	ldr r1, _020CA338 ; =0xFFFFA1DC
	mov r0, #9
	bl DWCi_SetError
	mov r0, #0
	ldmfd sp!, {r4, r5, r6, r7, r8, pc}
_020CA2DC:
	ldr r5, _020CA33C ; =0x00001C5C
	mov r6, #0
	mov r0, r6
	mov r1, r5
	blx r8
	str r0, [r4]
	cmp r0, #0
	bne _020CA310
	ldr r1, _020CA338 ; =0xFFFFA1DC
	mov r0, #9
	bl DWCi_SetError
	mov r0, r6
	ldmfd sp!, {r4, r5, r6, r7, r8, pc}
_020CA310:
	mov r1, r6
	mov r2, r5
	bl MI_CpuFill8
	ldr r1, [r4]
	mov r0, #1
	str r8, [r1]
	ldr r1, [r4]
	str r7, [r1, #4]
	ldmfd sp!, {r4, r5, r6, r7, r8, pc}
_020CA334: .word intwork
_020CA338: .word 0xFFFFA1DC
_020CA33C: .word 0x00001C5C
	arm_func_end DWC_Svl_Init

	arm_func_start DWC_Svl_Cleanup
DWC_Svl_Cleanup: ; 0x020CA340
	stmfd sp!, {r3, r4, r5, lr}
	ldr r4, _020CA37C ; =intwork
	ldr r0, [r4]
	cmp r0, #0
	ldmeqfd sp!, {r3, r4, r5, pc}
	add r0, r0, #8
	bl DWC_Http_Destroy
	mov r5, #0
	ldr r1, [r4]
	mov r0, r5
	ldr r3, [r1, #4]
	mov r2, r5
	blx r3
	str r5, [r4]
	ldmfd sp!, {r3, r4, r5, pc}
_020CA37C: .word intwork
	arm_func_end DWC_Svl_Cleanup

	arm_func_start DWC_Svl_GetTokenAsync
DWC_Svl_GetTokenAsync: ; 0x020CA380
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	sub sp, sp, #0xb0
	ldr r4, _020CA59C ; =intwork
	mov r7, r0
	ldr r2, [r4]
	mov r0, r1
	add r2, r2, #0x1000
	str r1, [r2, #0xc58]
	mov r1, #0
	mov r2, #0x174
	mov r5, r1
	bl MI_CpuFill8
	ldr r1, [r4]
	add r0, r1, #0x1000
	ldr r0, [r0, #0xbe8]
	cmp r0, #0
	beq _020CA3DC
	add r0, r1, #0x37c
	add r0, r0, #0x1800
	bl OS_IsThreadTerminated
	cmp r0, #0
	bne _020CA3DC
	bl OS_Terminate
_020CA3DC:
	ldr r0, _020CA5A0 ; =DWCauthhttpparam
	mov r1, #0x1000
	ldr r0, [r0]
	ldr r6, [r4]
	str r1, [sp, #8]
	str r0, [sp]
	str r5, [sp, #4]
	ldr r2, [r6]
	ldr r1, _020CA5A4 ; =0x020E4840
	str r2, [sp, #0xc]
	ldr r2, [r6, #4]
	str r2, [sp, #0x10]
	bl strcmp
	cmp r0, #0
	movne r0, #1
	strne r0, [sp, #0x14]
	ldr r2, _020CA5A8 ; =0x00004E20
	add r1, sp, #0
	add r0, r6, #8
	streq r5, [sp, #0x14]
	str r2, [sp, #0x18]
	bl DWC_Http_Create
	cmp r0, #0
	beq _020CA454
	ldr r1, _020CA5AC ; =0xFFFFA1DC
	mov r0, #9
	bl DWCi_SetError
	add sp, sp, #0xb0
	mov r0, #0
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_020CA454:
	add r6, sp, #0x1c
	mov r0, r6
	bl DWC_Auth_GetCalInfoFromNVRAM
	cmp r0, #0
	beq _020CA484
	ldr r0, [r4]
	mov r1, r6
	mov r2, r5
	add r0, r0, #8
	bl DWC_Auth_SetCalInfoToHttp
	cmp r0, #0
	bne _020CA4A8
_020CA484:
	ldr r0, [r4]
	add r0, r0, #8
	bl DWC_Http_Destroy
	ldr r1, _020CA5AC ; =0xFFFFA1DC
	mov r0, #9
	bl DWCi_SetError
	add sp, sp, #0xb0
	mov r0, #0
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_020CA4A8:
	ldr r0, [r4]
	ldr r1, _020CA5B0 ; =0x020E4860
	ldr r2, _020CA5B4 ; =0x020E4868
	add r0, r0, #8
	mov r3, #6
	bl DWC_Http_Add_PostBase64Item
	cmp r0, #0
	bne _020CA4E8
	ldr r0, [r4]
	ldr r1, _020CA5B8 ; =0x020E4870
	mov r2, r7
	add r0, r0, #8
	mov r3, #4
	bl DWC_Http_Add_PostBase64Item
	cmp r0, #0
	beq _020CA50C
_020CA4E8:
	ldr r0, [r4]
	add r0, r0, #8
	bl DWC_Http_Destroy
	ldr r1, _020CA5AC ; =0xFFFFA1DC
	mov r0, #9
	bl DWCi_SetError
	add sp, sp, #0xb0
	mov r0, #0
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_020CA50C:
	ldr r0, [r4]
	add r0, r0, #8
	bl DWC_Http_FinishHeader
	cmp r0, #0
	beq _020CA544
	ldr r0, [r4]
	add r0, r0, #8
	bl DWC_Http_Destroy
	ldr r1, _020CA5AC ; =0xFFFFA1DC
	mov r0, #9
	bl DWCi_SetError
	add sp, sp, #0xb0
	mov r0, r5
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_020CA544:
	ldr r0, _020CA5BC ; =OSi_ThreadInfo
	ldr r0, [r0, #4]
	bl OS_GetThreadPriority
	ldr r2, [r4]
	sub r1, r0, #1
	add r0, r2, #8
	bl DWC_Http_StartThread
	ldr r1, [r4]
	add r0, r1, #0x1000
	ldr r0, [r0, #0xbe8]
	cmp r0, #0
	addne sp, sp, #0xb0
	movne r0, #1
	ldmnefd sp!, {r3, r4, r5, r6, r7, pc}
	add r0, r1, #8
	bl DWC_Http_Destroy
	ldr r1, _020CA5AC ; =0xFFFFA1DC
	mov r0, #9
	bl DWCi_SetError
	mov r0, r5
	add sp, sp, #0xb0
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_020CA59C: .word intwork
_020CA5A0: .word DWCauthhttpparam
_020CA5A4: .word ov15_020E4840
_020CA5A8: .word 0x00004E20
_020CA5AC: .word 0xFFFFA1DC
_020CA5B0: .word ov15_020E4860
_020CA5B4: .word ov15_020E4868
_020CA5B8: .word ov15_020E4870
_020CA5BC: .word OSi_ThreadInfo
	arm_func_end DWC_Svl_GetTokenAsync

	arm_func_start DWC_Svl_Process
DWC_Svl_Process: ; 0x020CA5C0
	stmfd sp!, {r4, lr}
	ldr r4, _020CA67C ; =intwork
	ldr r1, [r4]
	cmp r1, #0
	moveq r0, #0
	ldmeqfd sp!, {r4, pc}
	add r0, r1, #0x1000
	ldr r0, [r0, #0xbe8]
	cmp r0, #0
	moveq r0, #1
	ldmeqfd sp!, {r4, pc}
	add r0, r1, #0x37c
	add r0, r0, #0x1800
	bl OS_IsThreadTerminated
	cmp r0, #1
	bne _020CA674
	ldr r1, [r4]
	add r0, r1, #0x1000
	ldr r0, [r0, #0x28]
	cmp r0, #7
	beq _020CA648
	cmp r0, #8
	bne _020CA658
	bl DWCi_Svl_ParseHttp
	cmp r0, #0
	ldr r0, [r4]
	add r0, r0, #8
	bne _020CA63C
	bl DWC_Http_Destroy
	mov r0, #4
	ldmfd sp!, {r4, pc}
_020CA63C:
	bl DWC_Http_Destroy
	mov r0, #3
	ldmfd sp!, {r4, pc}
_020CA648:
	add r0, r1, #8
	bl DWC_Http_Destroy
	mov r0, #5
	ldmfd sp!, {r4, pc}
_020CA658:
	add r0, r1, #8
	bl DWC_Http_Destroy
	ldr r1, _020CA680 ; =0xFFFFA1DB
	mov r0, #0x10
	bl DWCi_SetError
	mov r0, #4
	ldmfd sp!, {r4, pc}
_020CA674:
	mov r0, #2
	ldmfd sp!, {r4, pc}
_020CA67C: .word intwork
_020CA680: .word 0xFFFFA1DB
	arm_func_end DWC_Svl_Process

	arm_static_func_start DWCi_Svl_ParseHttp
DWCi_Svl_ParseHttp: ; 0x020CA684
	stmfd sp!, {r3, r4, r5, r6, lr}
	sub sp, sp, #4
	ldr r0, _020CA8A0 ; =intwork
	mov r4, #0
	ldr r5, [r0]
	mov r1, r4
	add r0, r5, #8
	bl DWC_Http_ParseResult
	cmp r0, #0
	bne _020CA6C4
	ldr r1, _020CA8A4 ; =0xFFFF9DF3
	mov r0, #0xf
	bl DWCi_SetError
	add sp, sp, #4
	mov r0, r4
	ldmfd sp!, {r3, r4, r5, r6, pc}
_020CA6C4:
	ldr r1, _020CA8A8 ; =0x020E4874
	add r0, r5, #8
	bl DWC_Http_GetResult
	cmp r0, #0
	beq _020CA6DC
	bl DWC_Auth_SetNasTimeDiff
_020CA6DC:
	ldr r1, _020CA8AC ; =0x020E487C
	add r0, r5, #8
	bl DWC_Http_GetResult
	cmp r0, #0
	bne _020CA708
	ldr r1, _020CA8A4 ; =0xFFFF9DF3
	mov r0, #0xf
	bl DWCi_SetError
	add sp, sp, #4
	mov r0, #0
	ldmfd sp!, {r3, r4, r5, r6, pc}
_020CA708:
	bl atoi
	ldr r6, _020CA8B0 ; =errno
	mov r2, r0
	ldr r0, [r6]
	cmp r0, #0x22
	bne _020CA738
	ldr r1, _020CA8A4 ; =0xFFFF9DF3
	mov r0, #0xf
	bl DWCi_SetError
	add sp, sp, #4
	mov r0, #0
	ldmfd sp!, {r3, r4, r5, r6, pc}
_020CA738:
	cmp r2, #0xc8
	beq _020CA75C
	ldr r1, _020CA8B4 ; =0xFFFF9E58
	mov r0, #0xf
	sub r1, r1, r2
	bl DWCi_SetError
	add sp, sp, #4
	mov r0, #0
	ldmfd sp!, {r3, r4, r5, r6, pc}
_020CA75C:
	add r4, sp, #0
	ldr r1, _020CA8B8 ; =0x020E4888
	mov r2, r4
	add r0, r5, #8
	mov r3, #4
	bl DWC_Http_GetBase64DecodedResult
	cmp r0, #0
	bgt _020CA794
	ldr r1, _020CA8A4 ; =0xFFFF9DF3
	mov r0, #0xf
	bl DWCi_SetError
	add sp, sp, #4
	mov r0, #0
	ldmfd sp!, {r3, r4, r5, r6, pc}
_020CA794:
	mov r0, r4
	bl atoi
	ldr r1, [r6]
	mov r2, r0
	cmp r1, #0x22
	bne _020CA7C4
	ldr r1, _020CA8A4 ; =0xFFFF9DF3
	mov r0, #0xf
	bl DWCi_SetError
	add sp, sp, #4
	mov r0, #0
	ldmfd sp!, {r3, r4, r5, r6, pc}
_020CA7C4:
	cmp r2, #0x64
	blt _020CA7E8
	ldr r1, _020CA8BC ; =0xFFFFA240
	mov r0, #0xf
	sub r1, r1, r2
	bl DWCi_SetError
	add sp, sp, #4
	mov r0, #0
	ldmfd sp!, {r3, r4, r5, r6, pc}
_020CA7E8:
	ldr r6, _020CA8A0 ; =intwork
	ldr r1, _020CA8C0 ; =0x020E4894
	ldr r2, [r6]
	add r0, r5, #8
	add r2, r2, #0x1000
	ldr r2, [r2, #0xc58]
	mov r3, #0x40
	add r2, r2, #4
	bl DWC_Http_GetBase64DecodedResult
	cmp r0, #0
	blt _020CA85C
	ldr r0, [r6]
	ldr r1, _020CA8C4 ; =0x020E489C
	add r0, r0, #0x1000
	ldr r2, [r0, #0xc58]
	add r0, r5, #8
	add r2, r2, #0x45
	mov r3, #0x12c
	bl DWC_Http_GetBase64DecodedResult
	cmp r0, #0
	blt _020CA85C
	mov r6, #1
	ldr r1, _020CA8C8 ; =0x020E48AC
	mov r2, r4
	mov r3, r6
	add r0, r5, #8
	bl DWC_Http_GetBase64DecodedResult
	cmp r0, #0
	bge _020CA874
_020CA85C:
	ldr r1, _020CA8A4 ; =0xFFFF9DF3
	mov r0, #0xf
	bl DWCi_SetError
	add sp, sp, #4
	mov r0, #0
	ldmfd sp!, {r3, r4, r5, r6, pc}
_020CA874:
	ldr r1, _020CA8A0 ; =intwork
	ldrsb r0, [sp]
	ldr r1, [r1]
	add r1, r1, #0x1000
	ldr r1, [r1, #0xc58]
	cmp r0, #0x59
	movne r6, #0
	mov r0, #1
	str r6, [r1]
	add sp, sp, #4
	ldmfd sp!, {r3, r4, r5, r6, pc}
_020CA8A0: .word intwork
_020CA8A4: .word 0xFFFF9DF3
_020CA8A8: .word ov15_020E4874
_020CA8AC: .word ov15_020E487C
_020CA8B0: .word errno
_020CA8B4: .word 0xFFFF9E58
_020CA8B8: .word ov15_020E4888
_020CA8BC: .word 0xFFFFA240
_020CA8C0: .word ov15_020E4894
_020CA8C4: .word ov15_020E489C
_020CA8C8: .word ov15_020E48AC
	arm_func_end DWCi_Svl_ParseHttp

	.data
ov15_020E4840:
	.asciz "https://nas.nintendowifi.net/ac"
	.balign 4, 0
ov15_020E4860:
	.asciz "action"
	.balign 4, 0
ov15_020E4868:
	.asciz "SVCLOC"
	.balign 4, 0
ov15_020E4870:
	.asciz "svc"
	.balign 4, 0
ov15_020E4874:
	.asciz "Date"
	.balign 4, 0
ov15_020E487C:
	.asciz "httpresult"
	.balign 4, 0
ov15_020E4888:
	.asciz "returncd"
	.balign 4, 0
ov15_020E4894:
	.asciz "svchost"
	.balign 4, 0
ov15_020E489C:
	.asciz "servicetoken"
	.balign 4, 0
ov15_020E48AC:
	.asciz "statusdata"

	.bss
	.global intwork
intwork:
	.space 0x1C