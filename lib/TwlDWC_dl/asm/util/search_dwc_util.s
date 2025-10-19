	; original file is search.s, renamed due to name collision

	.include "asm/macros/function.inc"
	.public DC_InvalidateRange
	.public DWCi_HEAPlAllocEx
	.public DWCi_HEAPlFree_
	.public MI_CpuCopy8
	.public MIi_CpuClear16
	.public OS_Terminate
	.public WM_End
	.public WM_GetAllowedChannel
	.public WM_GetDispersionScanPeriod
	.public WM_GetOtherElements
	.public WM_Initialize
	.public WM_ReadStatus
	.public WM_Reset
	.public WM_StartScanEx
	.public memcmp

	.text
	arm_func_start DWCi_SEARCHlInit
DWCi_SEARCHlInit: ; 0x02106BB4
	stmfd sp!, {r4, lr}
	ldr r4, _02106BDC ; =0x021162A0
	ldr r0, [r4]
	cmp r0, #0
	ldmnefd sp!, {r4, pc}
	ldr r0, _02106BE0 ; =0x00001E60
	mov r1, #0x20
	bl DWCi_HEAPlAllocEx
	str r0, [r4]
	ldmfd sp!, {r4, pc}
_02106BDC: .word MemSearch
_02106BE0: .word 0x00001E60
	arm_func_end DWCi_SEARCHlInit

	arm_func_start DWCi_SEARCHlEnd
DWCi_SEARCHlEnd: ; 0x02106BE4
	stmfd sp!, {r3, lr}
	ldr r0, _02106C10 ; =0x021162A0
	ldr r0, [r0]
	cmp r0, #0
	ldmeqfd sp!, {r3, pc}
_02106BF8:
	bl WM_GetAllowedChannel
	cmp r0, #0x8000
	bne _02106BF8
	ldr r0, _02106C14 ; =0x021162A0
	bl DWCi_HEAPlFree_
	ldmfd sp!, {r3, pc}
_02106C10: .word MemSearch
_02106C14: .word MemSearch
	arm_func_end DWCi_SEARCHlEnd

	arm_func_start DWCi_SEARCHlBegin
DWCi_SEARCHlBegin: ; 0x02106C18
	stmfd sp!, {r3, r4, r5, lr}
	ldr r4, _02106CD4 ; =0x021162A0
	mov r5, #0
	ldr r1, [r4]
	mov r0, r5
	add r1, r1, #0x1300
	mov r2, #0x348
	bl MIi_CpuClear16
	ldr r0, [r4]
	ldr r1, _02106CD8 ; =callback
	mov r2, #3
	bl WM_Initialize
	cmp r0, #2
	movne r0, r5
	ldmnefd sp!, {r3, r4, r5, pc}
_02106C54:
	ldr r0, [r4]
	add r0, r0, #0x28c
	add r0, r0, #0x1400
	bl WM_ReadStatus
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
	bl WM_GetDispersionScanPeriod
	ldr r1, _02106CD4 ; =0x021162A0
	ldr r1, [r1]
	add r1, r1, #0x1600
	strh r0, [r1, #0x50]
	bl startScan
	cmp r0, #0
	movne r0, #1
	moveq r0, #0
	ldmfd sp!, {r3, r4, r5, pc}
_02106CD4: .word MemSearch
_02106CD8: .word callback
_02106CDC: .word SCAN_PRM
	arm_func_end DWCi_SEARCHlBegin

	arm_static_func_start startScan
startScan: ; 0x02106CE0
	stmfd sp!, {r3, lr}
	ldr r1, _02106D0C ; =0x021162A0
	ldr r0, _02106D10 ; =callback
	ldr r1, [r1]
	add r1, r1, #0x248
	add r1, r1, #0x1400
	bl WM_StartScanEx
	cmp r0, #2
	moveq r0, #1
	movne r0, #0
	ldmfd sp!, {r3, pc}
_02106D0C: .word MemSearch
_02106D10: .word callback
	arm_func_end startScan

	arm_func_start DWCi_SEARCHlStop
DWCi_SEARCHlStop: ; 0x02106D14
	stmfd sp!, {r4, lr}
	ldr r4, _02106DA0 ; =0x021162A0
	mov r1, #1
	ldr r0, [r4]
	add r0, r0, #0x1000
	strb r1, [r0, #0xe5c]
	ldr r0, [r4]
	add r0, r0, #0x28c
	add r0, r0, #0x1400
	bl WM_ReadStatus
	ldr r0, [r4]
	add r0, r0, #0x1600
	ldrh r0, [r0, #0x8c]
	cmp r0, #2
	beq _02106D88
	ldr r0, _02106DA4 ; =callback
	bl WM_Reset
	cmp r0, #2
	movne r0, #0
	ldmnefd sp!, {r4, pc}
_02106D64:
	ldr r0, [r4]
	add r0, r0, #0x28c
	add r0, r0, #0x1400
	bl WM_ReadStatus
	ldr r0, [r4]
	add r0, r0, #0x1600
	ldrh r0, [r0, #0x8c]
	cmp r0, #2
	bne _02106D64
_02106D88:
	ldr r0, _02106DA4 ; =callback
	bl WM_End
	cmp r0, #2
	movne r0, #0
	moveq r0, #1
	ldmfd sp!, {r4, pc}
_02106DA0: .word MemSearch
_02106DA4: .word callback
	arm_func_end DWCi_SEARCHlStop

	arm_func_start DWCi_SEARCHlGetApInfo
DWCi_SEARCHlGetApInfo: ; 0x02106DA8
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
	bl memcmp
	cmp r0, #0
	add r8, r8, #1
	addne r7, r7, #1
	cmp r8, #0x14
	blt _02106DD0
	mov r0, r7
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
_02106E00: .word MemSearch
_02106E04: .word ESSID_EMPTY
	arm_func_end DWCi_SEARCHlGetApInfo

	arm_static_func_start callback
callback: ; 0x02106E08
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
	bl renewInfo
	bl startScan
	ldmfd sp!, {r3, pc}
_02106E54:
	bl startScan
	ldmfd sp!, {r3, pc}
_02106E5C:
	bl OS_Terminate
	ldmfd sp!, {r3, pc}
_02106E64: .word MemSearch
	arm_func_end callback

	arm_static_func_start renewInfo
renewInfo: ; 0x02106E68
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
	bl memcmp
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
	bl memcmp
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
	bl WM_GetOtherElements
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
	bl memcmp
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
_02107038: .word MemSearch
_0210703C: .word ESSID_EMPTY
_02107040: .word WPA_BODY
	arm_func_end renewInfo

	.rodata
WPA_BODY:
	.byte 0x00, 0x50, 0xF2, 0x01
ESSID_EMPTY:
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
SCAN_PRM:
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x04, 0xFF, 0x3F
	.byte 0x00, 0x00, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00

	.bss
MemSearch:
	.space 0x04
