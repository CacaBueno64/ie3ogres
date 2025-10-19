
	.include "asm/macros/function.inc"
	.public OS_GetMacAddress
	.public OS_Terminate
	.public WM_Disconnect
	.public WM_End
	.public WM_EndKeySharing
	.public WM_EndMP
	.public WM_EndParent
	.public WM_GetAllowedChannel
	.public WM_GetDispersionBeaconPeriod
	.public WM_GetSharedDataAddress
	.public WM_Initialize
	.public WM_MeasureChannel
	.public WM_Reset
	.public WM_SetIndCallback
	.public WM_SetParentParameter
	.public WM_SetWEPKey
	.public WM_StartDataSharing
	.public WM_StartKeySharing
	.public WM_StartMP
	.public WM_StartParent
	.public WM_StepDataSharing

	.text
	arm_func_start DWCi_MOV_WH_MemInit
DWCi_MOV_WH_MemInit: ; 0x0210A620
	ldr r1, _0210A658 ; =wh_trace
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
_0210A658: .word wh_trace
	arm_func_end DWCi_MOV_WH_MemInit

	arm_static_func_start DWCi_MOV_WH_ChangeSysState
DWCi_MOV_WH_ChangeSysState: ; 0x0210A65C
	stmfd sp!, {r4, lr}
	ldr r1, _0210A6C8 ; =wh_trace
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
	ldr r0, _0210A6C8 ; =wh_trace
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
_0210A6C8: .word wh_trace
_0210A6CC: .word ov17_021139FC
_0210A6D0: .word ov17_02113A24
_0210A6D4: .word ov17_02113A2C
	arm_func_end DWCi_MOV_WH_ChangeSysState

	arm_static_func_start DWCi_MOV_WH_SetError
DWCi_MOV_WH_SetError: ; 0x0210A6D8
	ldr r1, _0210A6F4 ; =wh_trace
	ldr r2, [r1, #4]
	ldr r1, [r2, #0x40]
	sub r1, r1, #9
	cmp r1, #1
	strhi r0, [r2, #0x54]
	bx lr
_0210A6F4: .word wh_trace
	arm_func_end DWCi_MOV_WH_SetError

	arm_static_func_start DWCi_MOV_WH_StateInSetParentParam
DWCi_MOV_WH_StateInSetParentParam: ; 0x0210A6F8
	stmfd sp!, {r3, lr}
	mov r0, #3
	bl DWCi_MOV_WH_ChangeSysState
	ldr r1, _0210A734 ; =wh_trace
	ldr r0, _0210A738 ; =DWCi_MOV_WH_StateOutSetParentParam
	ldr r1, [r1, #4]
	bl WM_SetParentParameter
	cmp r0, #2
	moveq r0, #1
	ldmeqfd sp!, {r3, pc}
	bl DWCi_MOV_WH_SetError
	mov r0, #9
	bl DWCi_MOV_WH_ChangeSysState
	mov r0, #0
	ldmfd sp!, {r3, pc}
_0210A734: .word wh_trace
_0210A738: .word DWCi_MOV_WH_StateOutSetParentParam
	arm_func_end DWCi_MOV_WH_StateInSetParentParam

	arm_static_func_start DWCi_MOV_WH_StateOutSetParentParam
DWCi_MOV_WH_StateOutSetParentParam: ; 0x0210A73C
	stmfd sp!, {r3, lr}
	ldrh r0, [r0, #2]
	cmp r0, #0
	beq _0210A75C
	bl DWCi_MOV_WH_SetError
	mov r0, #9
	bl DWCi_MOV_WH_ChangeSysState
	ldmfd sp!, {r3, pc}
_0210A75C:
	ldr r0, _0210A7A4 ; =wh_trace
	ldr r0, [r0, #4]
	add r0, r0, #0x1000
	ldr r0, [r0, #0x3ac]
	cmp r0, #0
	beq _0210A78C
	bl WCi_MOV_WH_StateInSetParentWEPKey
	cmp r0, #0
	ldmnefd sp!, {r3, pc}
	mov r0, #9
	bl DWCi_MOV_WH_ChangeSysState
	ldmfd sp!, {r3, pc}
_0210A78C:
	bl DWCi_MOV_WH_StateInStartParent
	cmp r0, #0
	ldmnefd sp!, {r3, pc}
	mov r0, #9
	bl DWCi_MOV_WH_ChangeSysState
	ldmfd sp!, {r3, pc}
_0210A7A4: .word wh_trace
	arm_func_end DWCi_MOV_WH_StateOutSetParentParam

	arm_static_func_start WCi_MOV_WH_StateInSetParentWEPKey
WCi_MOV_WH_StateInSetParentWEPKey: ; 0x0210A7A8
	stmfd sp!, {r4, lr}
	mov r0, #3
	bl DWCi_MOV_WH_ChangeSysState
	ldr r4, _0210A800 ; =wh_trace
	ldr r1, [r4, #4]
	add r0, r1, #0x1000
	ldr r2, [r0, #0x3ac]
	add r0, r1, #0x13c0
	blx r2
	ldr r2, [r4, #4]
	mov r1, r0
	ldr r0, _0210A804 ; =DWCi_MOV_WH_StateOutSetParentWEPKey
	add r2, r2, #0x13c0
	bl WM_SetWEPKey
	cmp r0, #2
	moveq r0, #1
	ldmeqfd sp!, {r4, pc}
	bl DWCi_MOV_WH_SetError
	mov r0, #9
	bl DWCi_MOV_WH_ChangeSysState
	mov r0, #0
	ldmfd sp!, {r4, pc}
_0210A800: .word wh_trace
_0210A804: .word DWCi_MOV_WH_StateOutSetParentWEPKey
	arm_func_end WCi_MOV_WH_StateInSetParentWEPKey

	arm_static_func_start DWCi_MOV_WH_StateOutSetParentWEPKey
DWCi_MOV_WH_StateOutSetParentWEPKey: ; 0x0210A808
	stmfd sp!, {r3, lr}
	ldrh r0, [r0, #2]
	cmp r0, #0
	beq _0210A828
	bl DWCi_MOV_WH_SetError
	mov r0, #9
	bl DWCi_MOV_WH_ChangeSysState
	ldmfd sp!, {r3, pc}
_0210A828:
	bl DWCi_MOV_WH_StateInStartParent
	cmp r0, #0
	ldmnefd sp!, {r3, pc}
	mov r0, #9
	bl DWCi_MOV_WH_ChangeSysState
	ldmfd sp!, {r3, pc}
	arm_func_end DWCi_MOV_WH_StateOutSetParentWEPKey

	arm_static_func_start DWCi_MOV_WH_StateInStartParent
DWCi_MOV_WH_StateInStartParent: ; 0x0210A840
	stmfd sp!, {r4, lr}
	ldr r4, _0210A898 ; =wh_trace
	ldr r0, [r4, #4]
	ldr r0, [r0, #0x40]
	sub r0, r0, #4
	cmp r0, #2
	movls r0, #1
	ldmlsfd sp!, {r4, pc}
	ldr r0, _0210A89C ; =DWCi_MOV_WH_StateOutStartParent
	bl WM_StartParent
	cmp r0, #2
	beq _0210A87C
	bl DWCi_MOV_WH_SetError
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
_0210A898: .word wh_trace
_0210A89C: .word DWCi_MOV_WH_StateOutStartParent
	arm_func_end DWCi_MOV_WH_StateInStartParent

	arm_static_func_start DWCi_MOV_WH_StateOutStartParent
DWCi_MOV_WH_StateOutStartParent: ; 0x0210A8A0
	stmfd sp!, {r4, r5, r6, lr}
	mov r4, r0
	ldrh r2, [r4, #0x10]
	ldrh r0, [r4, #2]
	mov r1, #1
	mov r1, r1, lsl r2
	cmp r0, #0
	mov r5, r1, lsl #0x10
	ldr r6, _0210A9F0 ; =wh_trace
	beq _0210A8D8
	bl DWCi_MOV_WH_SetError
	mov r0, #9
	bl DWCi_MOV_WH_ChangeSysState
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
	bl WM_Disconnect
	cmp r0, #2
	ldmeqfd sp!, {r4, r5, r6, pc}
	bl DWCi_MOV_WH_SetError
	mov r0, #9
	bl DWCi_MOV_WH_ChangeSysState
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
	bl DWCi_MOV_WH_StateInStartParentMP
	cmp r0, #0
	ldmnefd sp!, {r4, r5, r6, pc}
	mov r0, #9
	bl DWCi_MOV_WH_ChangeSysState
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
_0210A9F0: .word wh_trace
_0210A9F4: .word ov17_02113A30
_0210A9F8: .word ov17_02113A5C
_0210A9FC: .word ov17_02113A88
	arm_func_end DWCi_MOV_WH_StateOutStartParent

	arm_static_func_start DWCi_MOV_WH_StateInStartParentMP
DWCi_MOV_WH_StateInStartParentMP: ; 0x0210AA00
	stmfd sp!, {r4, lr}
	sub sp, sp, #8
	ldr r4, _0210AA8C ; =wh_trace
	ldr r0, [r4, #4]
	ldr r0, [r0, #0x40]
	sub r0, r0, #4
	cmp r0, #2
	addls sp, sp, #8
	movls r0, #1
	ldmlsfd sp!, {r4, pc}
	mov r0, #4
	bl DWCi_MOV_WH_ChangeSysState
	ldr r3, [r4, #4]
	mov r4, #1
	add r2, r3, #0x1000
	ldr r0, [r2, #0x2a0]
	add r1, r3, #0x60
	mov r0, r0, lsl #0x10
	mov r0, r0, lsr #0x10
	stmia sp, {r0, r4}
	ldr r2, [r2, #0x2a4]
	ldr r0, _0210AA90 ; =DWCi_MOV_WH_StateOutStartParentMP
	mov r2, r2, lsl #0x10
	add r1, r1, #0x1000
	mov r2, r2, lsr #0x10
	add r3, r3, #0xf80
	bl WM_StartMP
	cmp r0, #2
	addeq sp, sp, #8
	moveq r0, r4
	ldmeqfd sp!, {r4, pc}
	bl DWCi_MOV_WH_SetError
	mov r0, #0
	add sp, sp, #8
	ldmfd sp!, {r4, pc}
_0210AA8C: .word wh_trace
_0210AA90: .word DWCi_MOV_WH_StateOutStartParentMP
	arm_func_end DWCi_MOV_WH_StateInStartParentMP

	arm_static_func_start DWCi_MOV_WH_StateOutStartParentMP
DWCi_MOV_WH_StateOutStartParentMP: ; 0x0210AA94
	stmfd sp!, {r3, r4, lr}
	sub sp, sp, #4
	ldrh r1, [r0, #2]
	cmp r1, #0
	beq _0210AAC0
	mov r0, r1
	bl DWCi_MOV_WH_SetError
	mov r0, #9
	bl DWCi_MOV_WH_ChangeSysState
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
	ldr r4, _0210ABD8 ; =wh_trace
	ldr r1, [r4, #4]
	ldr r0, [r1, #0x44]
	cmp r0, #2
	bne _0210AB4C
	ldr r0, [r1, #0x40]
	cmp r0, #4
	bne _0210AB3C
	bl DWCi_MOV_WH_StateInStartParentKeyShare
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
	bl DWCi_MOV_WH_ChangeSysState
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
	bl WM_StartDataSharing
	cmp r0, #0
	beq _0210AB90
	bl DWCi_MOV_WH_SetError
	mov r0, #9
	bl DWCi_MOV_WH_ChangeSysState
	add sp, sp, #4
	ldmfd sp!, {r3, r4, pc}
_0210AB90:
	mov r0, #5
	bl DWCi_MOV_WH_ChangeSysState
	add sp, sp, #4
	ldmfd sp!, {r3, r4, pc}
_0210ABA0:
	mov r0, #4
	bl DWCi_MOV_WH_ChangeSysState
	add sp, sp, #4
	ldmfd sp!, {r3, r4, pc}
_0210ABB0:
	ldr r0, _0210ABD8 ; =wh_trace
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
_0210ABD8: .word wh_trace
_0210ABDC: .word ov17_02113AA8
_0210ABE0: .word ov17_02113A88
	arm_func_end DWCi_MOV_WH_StateOutStartParentMP

	arm_static_func_start DWCi_MOV_WH_StateInStartParentKeyShare
DWCi_MOV_WH_StateInStartParentKeyShare: ; 0x0210ABE4
	stmfd sp!, {r3, lr}
	mov r0, #6
	bl DWCi_MOV_WH_ChangeSysState
	ldr r0, _0210AC1C ; =wh_trace
	mov r1, #0xd
	ldr r0, [r0, #4]
	add r0, r0, #0x1e00
	bl WM_StartKeySharing
	cmp r0, #2
	moveq r0, #1
	ldmeqfd sp!, {r3, pc}
	bl DWCi_MOV_WH_SetError
	mov r0, #0
	ldmfd sp!, {r3, pc}
_0210AC1C: .word wh_trace
	arm_func_end DWCi_MOV_WH_StateInStartParentKeyShare

	arm_static_func_start DWCi_MOV_WH_StateInEndParentKeyShare
DWCi_MOV_WH_StateInEndParentKeyShare: ; 0x0210AC20
	stmfd sp!, {r3, lr}
	ldr r0, _0210AC4C ; =wh_trace
	ldr r0, [r0, #4]
	add r0, r0, #0x1e00
	bl WM_EndKeySharing
	cmp r0, #2
	moveq r0, #1
	ldmeqfd sp!, {r3, pc}
	bl DWCi_MOV_WH_SetError
	mov r0, #0
	ldmfd sp!, {r3, pc}
_0210AC4C: .word wh_trace
	arm_func_end DWCi_MOV_WH_StateInEndParentKeyShare

	arm_static_func_start DWCi_MOV_WH_StateInEndParentMP
DWCi_MOV_WH_StateInEndParentMP: ; 0x0210AC50
	stmfd sp!, {r3, lr}
	mov r0, #3
	bl DWCi_MOV_WH_ChangeSysState
	ldr r0, _0210AC7C ; =DWCi_MOV_WH_StateOutEndParentMP
	bl WM_EndMP
	cmp r0, #2
	moveq r0, #1
	ldmeqfd sp!, {r3, pc}
	bl DWCi_MOV_WH_SetError
	mov r0, #0
	ldmfd sp!, {r3, pc}
_0210AC7C: .word DWCi_MOV_WH_StateOutEndParentMP
	arm_func_end DWCi_MOV_WH_StateInEndParentMP

	arm_static_func_start DWCi_MOV_WH_StateOutEndParentMP
DWCi_MOV_WH_StateOutEndParentMP: ; 0x0210AC80
	stmfd sp!, {r3, lr}
	ldrh r0, [r0, #2]
	cmp r0, #0
	beq _0210AC9C
	bl DWCi_MOV_WH_SetError
	bl DWCi_MOV_WH_Reset
	ldmfd sp!, {r3, pc}
_0210AC9C:
	bl DWCi_MOV_WH_StateInEndParent
	cmp r0, #0
	ldmnefd sp!, {r3, pc}
	ldr r0, _0210ACCC ; =wh_trace
	ldr r2, [r0]
	cmp r2, #0
	beq _0210ACC4
	ldr r1, _0210ACD0 ; =0x02113AD8
	mov r0, #0x8000000
	blx r2
_0210ACC4:
	bl DWCi_MOV_WH_Reset
	ldmfd sp!, {r3, pc}
_0210ACCC: .word wh_trace
_0210ACD0: .word ov17_02113AD8
	arm_func_end DWCi_MOV_WH_StateOutEndParentMP

	arm_static_func_start DWCi_MOV_WH_StateInEndParent
DWCi_MOV_WH_StateInEndParent: ; 0x0210ACD4
	stmfd sp!, {r3, lr}
	ldr r0, _0210ACF8 ; =DWCi_MOV_WH_StateOutEndParent
	bl WM_EndParent
	cmp r0, #2
	moveq r0, #1
	ldmeqfd sp!, {r3, pc}
	bl DWCi_MOV_WH_SetError
	mov r0, #0
	ldmfd sp!, {r3, pc}
_0210ACF8: .word DWCi_MOV_WH_StateOutEndParent
	arm_func_end DWCi_MOV_WH_StateInEndParent

	arm_static_func_start DWCi_MOV_WH_StateOutEndParent
DWCi_MOV_WH_StateOutEndParent: ; 0x0210ACFC
	stmfd sp!, {r3, lr}
	ldrh r0, [r0, #2]
	cmp r0, #0
	beq _0210AD14
	bl DWCi_MOV_WH_SetError
	ldmfd sp!, {r3, pc}
_0210AD14:
	mov r0, #1
	bl DWCi_MOV_WH_ChangeSysState
	ldmfd sp!, {r3, pc}
	arm_func_end DWCi_MOV_WH_StateOutEndParent

	arm_static_func_start DWCi_MOV_WH_StateInEndChildKeyShare
DWCi_MOV_WH_StateInEndChildKeyShare: ; 0x0210AD20
	stmfd sp!, {r4, lr}
	ldr r4, _0210AD68 ; =wh_trace
	ldr r0, [r4, #4]
	ldr r0, [r0, #0x40]
	cmp r0, #6
	movne r0, #0
	ldmnefd sp!, {r4, pc}
	mov r0, #3
	bl DWCi_MOV_WH_ChangeSysState
	ldr r0, [r4, #4]
	add r0, r0, #0x1e00
	bl WM_EndKeySharing
	cmp r0, #2
	moveq r0, #1
	ldmeqfd sp!, {r4, pc}
	bl DWCi_MOV_WH_SetError
	mov r0, #0
	ldmfd sp!, {r4, pc}
_0210AD68: .word wh_trace
	arm_func_end DWCi_MOV_WH_StateInEndChildKeyShare

	arm_static_func_start DWCi_MOV_WH_StateInEndChildMP
DWCi_MOV_WH_StateInEndChildMP: ; 0x0210AD6C
	stmfd sp!, {r3, lr}
	mov r0, #3
	bl DWCi_MOV_WH_ChangeSysState
	ldr r0, _0210AD98 ; =DWCi_MOV_WH_StateOutEndChildMP
	bl WM_EndMP
	cmp r0, #2
	moveq r0, #1
	ldmeqfd sp!, {r3, pc}
	bl DWCi_MOV_WH_SetError
	mov r0, #0
	ldmfd sp!, {r3, pc}
_0210AD98: .word DWCi_MOV_WH_StateOutEndChildMP
	arm_func_end DWCi_MOV_WH_StateInEndChildMP

	arm_static_func_start DWCi_MOV_WH_StateOutEndChildMP
DWCi_MOV_WH_StateOutEndChildMP: ; 0x0210AD9C
	stmfd sp!, {r3, lr}
	ldrh r0, [r0, #2]
	cmp r0, #0
	beq _0210ADB8
	bl DWCi_MOV_WH_SetError
	bl DWCi_MOV_WH_Finalize
	ldmfd sp!, {r3, pc}
_0210ADB8:
	bl DWCi_MOV_WH_StateInEndChild
	cmp r0, #0
	ldmnefd sp!, {r3, pc}
	mov r0, #9
	bl DWCi_MOV_WH_ChangeSysState
	ldmfd sp!, {r3, pc}
	arm_func_end DWCi_MOV_WH_StateOutEndChildMP

	arm_static_func_start DWCi_MOV_WH_StateInEndChild
DWCi_MOV_WH_StateInEndChild: ; 0x0210ADD0
	stmfd sp!, {r4, lr}
	mov r0, #3
	bl DWCi_MOV_WH_ChangeSysState
	mov r4, #0
	ldr r0, _0210AE08 ; =DWCi_MOV_WH_StateOutEndChild
	mov r1, r4
	bl WM_Disconnect
	cmp r0, #2
	moveq r0, #1
	ldmeqfd sp!, {r4, pc}
	bl DWCi_MOV_WH_SetError
	bl DWCi_MOV_WH_Reset
	mov r0, r4
	ldmfd sp!, {r4, pc}
_0210AE08: .word DWCi_MOV_WH_StateOutEndChild
	arm_func_end DWCi_MOV_WH_StateInEndChild

	arm_static_func_start DWCi_MOV_WH_StateOutEndChild
DWCi_MOV_WH_StateOutEndChild: ; 0x0210AE0C
	stmfd sp!, {r3, lr}
	ldrh r0, [r0, #2]
	cmp r0, #0
	beq _0210AE24
	bl DWCi_MOV_WH_SetError
	ldmfd sp!, {r3, pc}
_0210AE24:
	mov r0, #1
	bl DWCi_MOV_WH_ChangeSysState
	ldmfd sp!, {r3, pc}
	arm_func_end DWCi_MOV_WH_StateOutEndChild

	arm_static_func_start DWCi_MOV_WH_StateInReset
DWCi_MOV_WH_StateInReset: ; 0x0210AE30
	stmfd sp!, {r3, lr}
	mov r0, #3
	bl DWCi_MOV_WH_ChangeSysState
	ldr r0, _0210AE5C ; =DWCi_MOV_WH_StateOutReset
	bl WM_Reset
	cmp r0, #2
	moveq r0, #1
	ldmeqfd sp!, {r3, pc}
	bl DWCi_MOV_WH_SetError
	mov r0, #0
	ldmfd sp!, {r3, pc}
_0210AE5C: .word DWCi_MOV_WH_StateOutReset
	arm_func_end DWCi_MOV_WH_StateInReset

	arm_static_func_start DWCi_MOV_WH_StateOutReset
DWCi_MOV_WH_StateOutReset: ; 0x0210AE60
	stmfd sp!, {r4, lr}
	mov r4, r0
	ldrh r0, [r4, #2]
	cmp r0, #0
	beq _0210AE88
	mov r0, #9
	bl DWCi_MOV_WH_ChangeSysState
	ldrh r0, [r4, #2]
	bl DWCi_MOV_WH_SetError
	ldmfd sp!, {r4, pc}
_0210AE88:
	mov r0, #1
	bl DWCi_MOV_WH_ChangeSysState
	ldmfd sp!, {r4, pc}
	arm_func_end DWCi_MOV_WH_StateOutReset

	arm_static_func_start DWCi_MOV_WH_StateOutEnd
DWCi_MOV_WH_StateOutEnd: ; 0x0210AE94
	stmfd sp!, {r3, lr}
	ldrh r0, [r0, #2]
	cmp r0, #0
	beq _0210AEB0
	mov r0, #0xa
	bl DWCi_MOV_WH_ChangeSysState
	ldmfd sp!, {r3, pc}
_0210AEB0:
	mov r0, #0
	bl DWCi_MOV_WH_ChangeSysState
	ldmfd sp!, {r3, pc}
	arm_func_end DWCi_MOV_WH_StateOutEnd

	arm_func_start DWCi_MOV_WH_SetGgid
DWCi_MOV_WH_SetGgid: ; 0x0210AEBC
	ldr r1, _0210AECC ; =wh_trace
	ldr r1, [r1, #4]
	str r0, [r1, #8]
	bx lr
_0210AECC: .word wh_trace
	arm_func_end DWCi_MOV_WH_SetGgid

	arm_func_start DWCi_MOV_WH_GetBitmap
DWCi_MOV_WH_GetBitmap: ; 0x0210AED0
	ldr r0, _0210AEE0 ; =wh_trace
	ldr r0, [r0, #4]
	ldrh r0, [r0, #0x52]
	bx lr
_0210AEE0: .word wh_trace
	arm_func_end DWCi_MOV_WH_GetBitmap

	arm_func_start DWCi_MOV_WH_GetSystemState
DWCi_MOV_WH_GetSystemState: ; 0x0210AEE4
	ldr r0, _0210AEF4 ; =wh_trace
	ldr r0, [r0, #4]
	ldr r0, [r0, #0x40]
	bx lr
_0210AEF4: .word wh_trace
	arm_func_end DWCi_MOV_WH_GetSystemState

	arm_func_start DWCi_MOV_WH_StartMeasureChannel
DWCi_MOV_WH_StartMeasureChannel: ; 0x0210AEF8
	stmfd sp!, {r3, r4, r5, lr}
	sub sp, sp, #8
	add r0, sp, #0
	bl OS_GetMacAddress
	ldr r2, _0210AFC8 ; =0x02FFFC3C
	ldrh r0, [sp]
	ldr r3, [r2]
	ldrh r2, [sp, #2]
	add r0, r0, r3
	ldr r1, _0210AFCC ; =wh_trace
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
	bl DWCi_MOV_WH_ChangeSysState
	mov r5, #1
	mov r0, r5
	bl DWCi_MOV_WH_StateInMeasureChannel
	cmp r0, #0x18
	bne _0210AFA0
	mov r0, #0x18
	bl DWCi_MOV_WH_SetError
	mov r0, #9
	bl DWCi_MOV_WH_ChangeSysState
	add sp, sp, #8
	mov r0, r4
	ldmfd sp!, {r3, r4, r5, pc}
_0210AFA0:
	cmp r0, #2
	addeq sp, sp, #8
	moveq r0, r5
	ldmeqfd sp!, {r3, r4, r5, pc}
	bl DWCi_MOV_WH_SetError
	mov r0, #9
	bl DWCi_MOV_WH_ChangeSysState
	mov r0, r4
	add sp, sp, #8
	ldmfd sp!, {r3, r4, r5, pc}
_0210AFC8: .word 0x02FFFC3C
_0210AFCC: .word wh_trace
_0210AFD0: .word 0x00010DCD
	arm_func_end DWCi_MOV_WH_StartMeasureChannel

	arm_static_func_start DWCi_MOV_WH_StateInMeasureChannel
DWCi_MOV_WH_StateInMeasureChannel: ; 0x0210AFD4
	stmfd sp!, {r4, lr}
	mov r4, r0
	bl WM_GetAllowedChannel
	cmp r0, #0x8000
	bne _0210B004
	mov r4, #3
	mov r0, r4
	bl DWCi_MOV_WH_SetError
	mov r0, #9
	bl DWCi_MOV_WH_ChangeSysState
	mov r0, r4
	ldmfd sp!, {r4, pc}
_0210B004:
	cmp r0, #0
	bne _0210B024
	mov r0, #0x16
	bl DWCi_MOV_WH_SetError
	mov r0, #9
	bl DWCi_MOV_WH_ChangeSysState
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
	ldr r0, _0210B070 ; =DWCi_MOV_WH_StateOutMeasureChannel
	mov r1, r4
	bl WHi_MeasureChannel
	mov r0, r0, lsl #0x10
	mov r0, r0, lsr #0x10
	ldmfd sp!, {r4, pc}
_0210B070: .word DWCi_MOV_WH_StateOutMeasureChannel
	arm_func_end DWCi_MOV_WH_StateInMeasureChannel

	arm_static_func_start DWCi_MOV_WH_StateOutMeasureChannel
DWCi_MOV_WH_StateOutMeasureChannel: ; 0x0210B074
	stmfd sp!, {r4, lr}
	mov r4, r0
	ldrh r0, [r4, #2]
	cmp r0, #0
	beq _0210B098
	bl DWCi_MOV_WH_SetError
	mov r0, #9
	bl DWCi_MOV_WH_ChangeSysState
	ldmfd sp!, {r4, pc}
_0210B098:
	ldr r0, _0210B14C ; =wh_trace
	ldr r12, [r0]
	cmp r12, #0
	beq _0210B0BC
	ldrh r2, [r4, #8]
	ldrh r3, [r4, #0xa]
	ldr r1, _0210B150 ; =0x02113B30
	mov r0, #0x8000000
	blx r12
_0210B0BC:
	ldr r1, _0210B14C ; =wh_trace
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
	bl DWCi_MOV_WH_StateInMeasureChannel
	cmp r0, #0x18
	bne _0210B138
	mov r0, #7
	bl DWCi_MOV_WH_ChangeSysState
	ldmfd sp!, {r4, pc}
_0210B138:
	cmp r0, #2
	ldmeqfd sp!, {r4, pc}
	mov r0, #9
	bl DWCi_MOV_WH_ChangeSysState
	ldmfd sp!, {r4, pc}
_0210B14C: .word wh_trace
_0210B150: .word ov17_02113B30
	arm_func_end DWCi_MOV_WH_StateOutMeasureChannel

	arm_static_func_start WHi_MeasureChannel
WHi_MeasureChannel: ; 0x0210B154
	stmfd sp!, {r3, lr}
	mov r3, r1
	mov r12, #0x1e
	mov r1, #3
	mov r2, #0x11
	str r12, [sp]
	bl WM_MeasureChannel
	ldmfd sp!, {r3, pc}
	arm_func_end WHi_MeasureChannel

	arm_func_start DWCi_MOV_WH_GetMeasureChannel
DWCi_MOV_WH_GetMeasureChannel: ; 0x0210B174
	stmfd sp!, {r4, lr}
	ldr r0, _0210B1E0 ; =wh_trace
	ldr r0, [r0, #4]
	ldr r0, [r0, #0x40]
	cmp r0, #7
	beq _0210B190
	bl OS_Terminate
_0210B190:
	mov r0, #1
	bl DWCi_MOV_WH_ChangeSysState
	ldr r4, _0210B1E0 ; =wh_trace
	ldr r0, [r4, #4]
	ldrh r0, [r0, #0x60]
	bl SelectChannel
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
	ldr r0, _0210B1E0 ; =wh_trace
	ldr r0, [r0, #4]
	ldrh r0, [r0, #0x5c]
	ldmfd sp!, {r4, pc}
_0210B1E0: .word wh_trace
_0210B1E4: .word ov17_02113B48
	arm_func_end DWCi_MOV_WH_GetMeasureChannel

	arm_static_func_start SelectChannel
SelectChannel: ; 0x0210B1E8
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
	ldr r12, _0210B2C4 ; =wh_trace
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
_0210B2C4: .word wh_trace
_0210B2C8: .word 0x00010DCD
	arm_func_end SelectChannel

	arm_func_start DWCi_MOV_WH_Initialize
DWCi_MOV_WH_Initialize: ; 0x0210B2CC
	stmfd sp!, {r3, r4, r5, lr}
	ldr r1, _0210B340 ; =wh_trace
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
	bl DWCi_MOV_WH_StateInInitialize
	cmp r0, #0
	moveq r0, r5
	movne r0, r4
	ldmfd sp!, {r3, r4, r5, pc}
_0210B340: .word wh_trace
	arm_func_end DWCi_MOV_WH_Initialize

	arm_static_func_start DWCi_MOV_WH_IndicateHandler
DWCi_MOV_WH_IndicateHandler: ; 0x0210B344
	stmfd sp!, {r3, lr}
	ldrh r0, [r0, #2]
	cmp r0, #8
	ldmnefd sp!, {r3, pc}
	mov r0, #9
	bl DWCi_MOV_WH_ChangeSysState
	bl OS_Terminate
	ldmfd sp!, {r3, pc}
	arm_func_end DWCi_MOV_WH_IndicateHandler

	arm_static_func_start DWCi_MOV_WH_StateInInitialize
DWCi_MOV_WH_StateInInitialize: ; 0x0210B364
	stmfd sp!, {r3, lr}
	mov r0, #3
	bl DWCi_MOV_WH_ChangeSysState
	ldr r0, _0210B3A8 ; =wh_trace
	ldr r1, _0210B3AC ; =DWCi_MOV_WH_StateOutInitialize
	ldr r0, [r0, #4]
	mov r2, #2
	add r0, r0, #0x80
	bl WM_Initialize
	cmp r0, #2
	moveq r0, #1
	ldmeqfd sp!, {r3, pc}
	bl DWCi_MOV_WH_SetError
	mov r0, #0xa
	bl DWCi_MOV_WH_ChangeSysState
	mov r0, #0
	ldmfd sp!, {r3, pc}
_0210B3A8: .word wh_trace
_0210B3AC: .word DWCi_MOV_WH_StateOutInitialize
	arm_func_end DWCi_MOV_WH_StateInInitialize

	arm_static_func_start DWCi_MOV_WH_StateOutInitialize
DWCi_MOV_WH_StateOutInitialize: ; 0x0210B3B0
	stmfd sp!, {r3, lr}
	ldrh r0, [r0, #2]
	cmp r0, #0
	beq _0210B3D0
	bl DWCi_MOV_WH_SetError
	mov r0, #0xa
	bl DWCi_MOV_WH_ChangeSysState
	ldmfd sp!, {r3, pc}
_0210B3D0:
	ldr r0, _0210B3FC ; =DWCi_MOV_WH_IndicateHandler
	bl WM_SetIndCallback
	cmp r0, #0
	beq _0210B3F0
	bl DWCi_MOV_WH_SetError
	mov r0, #0xa
	bl DWCi_MOV_WH_ChangeSysState
	ldmfd sp!, {r3, pc}
_0210B3F0:
	mov r0, #1
	bl DWCi_MOV_WH_ChangeSysState
	ldmfd sp!, {r3, pc}
_0210B3FC: .word DWCi_MOV_WH_IndicateHandler
	arm_func_end DWCi_MOV_WH_StateOutInitialize

	arm_func_start DWCi_MOV_WH_ParentConnect
DWCi_MOV_WH_ParentConnect: ; 0x0210B400
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	ldr r4, _0210B54C ; =wh_trace
	mov r7, r0
	ldr r0, [r4, #4]
	mov r6, r1
	ldr r0, [r0, #0x40]
	mov r5, r2
	cmp r0, #1
	beq _0210B428
	bl OS_Terminate
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
	bl DWCi_MOV_WH_ChangeSysState
	ldr r0, [r4, #4]
	strh r6, [r0, #0xc]
	ldr r0, [r4, #4]
	strh r5, [r0, #0x32]
	bl WM_GetDispersionBeaconPeriod
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
	bl DWCi_MOV_WH_StateInSetParentParam
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
_0210B54C: .word wh_trace
_0210B550: .word ov17_02113B00
_0210B554: .word ov17_02113B18
_0210B558: .word ov17_02113B60
	arm_func_end DWCi_MOV_WH_ParentConnect

	arm_func_start DWCi_MOV_WH_SetJudgeAcceptFunc
DWCi_MOV_WH_SetJudgeAcceptFunc: ; 0x0210B55C
	ldr r1, _0210B56C ; =wh_trace
	ldr r1, [r1, #4]
	str r0, [r1, #0x4c]
	bx lr
_0210B56C: .word wh_trace
	arm_func_end DWCi_MOV_WH_SetJudgeAcceptFunc

	arm_func_start DWCi_MOV_WH_GetSharedDataAdr
DWCi_MOV_WH_GetSharedDataAdr: ; 0x0210B570
	ldr r1, _0210B590 ; =wh_trace
	mov r2, r0
	ldr r1, [r1, #4]
	ldr r12, _0210B594 ; =WM_GetSharedDataAddress
	add r0, r1, #0x3e0
	add r0, r0, #0x1000
	add r1, r1, #0x1c00
	bx r12
_0210B590: .word wh_trace
_0210B594: .word WM_GetSharedDataAddress
	arm_func_end DWCi_MOV_WH_GetSharedDataAdr

	arm_func_start DWCi_MOV_WH_StepDS
DWCi_MOV_WH_StepDS: ; 0x0210B598
	stmfd sp!, {r3, r4, r5, lr}
	ldr r4, _0210B62C ; =wh_trace
	mov r1, r0
	ldr r2, [r4, #4]
	add r0, r2, #0x3e0
	add r0, r0, #0x1000
	add r2, r2, #0x1c00
	bl WM_StepDataSharing
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
	bl DWCi_MOV_WH_SetError
	mov r0, #0
	ldmfd sp!, {r3, r4, r5, pc}
_0210B614:
	cmp r5, #0
	moveq r0, #1
	ldmeqfd sp!, {r3, r4, r5, pc}
	bl DWCi_MOV_WH_SetError
	mov r0, #0
	ldmfd sp!, {r3, r4, r5, pc}
_0210B62C: .word wh_trace
_0210B630: .word ov17_02113B7C
_0210B634: .word ov17_02113BAC
	arm_func_end DWCi_MOV_WH_StepDS

	arm_func_start DWCi_MOV_WH_Reset
DWCi_MOV_WH_Reset: ; 0x0210B638
	stmfd sp!, {r3, lr}
	bl DWCi_MOV_WH_StateInReset
	cmp r0, #0
	ldmnefd sp!, {r3, pc}
	mov r0, #0xa
	bl DWCi_MOV_WH_ChangeSysState
	ldmfd sp!, {r3, pc}
	arm_func_end DWCi_MOV_WH_Reset

	arm_func_start DWCi_MOV_WH_Finalize
DWCi_MOV_WH_Finalize: ; 0x0210B654
	stmfd sp!, {r3, lr}
	ldr r0, _0210B750 ; =wh_trace
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
	ldr r0, _0210B750 ; =wh_trace
	ldr r0, [r0, #4]
	ldr r0, [r0, #0x40]
	cmp r0, #6
	cmpne r0, #5
	cmpne r0, #4
	mov r0, #3
	beq _0210B6CC
	bl DWCi_MOV_WH_ChangeSysState
	bl DWCi_MOV_WH_Reset
	ldmfd sp!, {r3, pc}
_0210B6CC:
	bl DWCi_MOV_WH_ChangeSysState
	ldr r0, _0210B750 ; =wh_trace
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
	bl DWCi_MOV_WH_StateInEndChildKeyShare
	cmp r0, #0
	ldmnefd sp!, {r3, pc}
	bl DWCi_MOV_WH_Reset
	ldmfd sp!, {r3, pc}
_0210B714:
	bl DWCi_MOV_WH_StateInEndChildMP
	cmp r0, #0
	ldmnefd sp!, {r3, pc}
	bl DWCi_MOV_WH_Reset
	ldmfd sp!, {r3, pc}
_0210B728:
	bl DWCi_MOV_WH_StateInEndParentKeyShare
	cmp r0, #0
	ldmnefd sp!, {r3, pc}
	bl DWCi_MOV_WH_Reset
	ldmfd sp!, {r3, pc}
_0210B73C:
	bl DWCi_MOV_WH_StateInEndParentMP
	cmp r0, #0
	ldmnefd sp!, {r3, pc}
	bl DWCi_MOV_WH_Reset
	ldmfd sp!, {r3, pc}
_0210B750: .word wh_trace
_0210B754: .word ov17_02113BE0
_0210B758: .word ov17_02113C04
	arm_func_end DWCi_MOV_WH_Finalize

	arm_func_start DWCi_MOV_WH_End
DWCi_MOV_WH_End: ; 0x0210B75C
	stmfd sp!, {r3, lr}
	ldr r0, _0210B7A4 ; =wh_trace
	ldr r0, [r0, #4]
	ldr r0, [r0, #0x40]
	cmp r0, #1
	beq _0210B778
	bl OS_Terminate
_0210B778:
	mov r0, #3
	bl DWCi_MOV_WH_ChangeSysState
	ldr r0, _0210B7A8 ; =DWCi_MOV_WH_StateOutEnd
	bl WM_End
	cmp r0, #2
	moveq r0, #1
	ldmeqfd sp!, {r3, pc}
	mov r0, #9
	bl DWCi_MOV_WH_ChangeSysState
	mov r0, #0
	ldmfd sp!, {r3, pc}
_0210B7A4: .word wh_trace
_0210B7A8: .word DWCi_MOV_WH_StateOutEnd
	arm_func_end DWCi_MOV_WH_End

	.data
ov17_021138C0:
	.asciz "DWCi_MOV_WH_SYSSTATE_STOP"
	.balign 4, 0
ov17_021138DC:
	.asciz "DWCi_MOV_WH_SYSSTATE_IDLE"
	.balign 4, 0
ov17_021138F8:
	.asciz "DWCi_MOV_WH_SYSSTATE_BUSY"
	.balign 4, 0
ov17_02113914:
	.asciz "DWCi_MOV_WH_SYSSTATE_ERROR"
	.balign 4, 0
ov17_02113930:
	.asciz "DWCi_MOV_WH_SYSSTATE_SCANNING"
	.balign 4, 0
ov17_02113950:
	.asciz "DWCi_MOV_WH_SYSSTATE_CONNECTED"
	.balign 4, 0
ov17_02113970:
	.asciz "DWCi_MOV_WH_SYSSTATE_KEYSHARING"
	.balign 4, 0
ov17_02113990:
	.asciz "DWCi_MOV_WH_SYSSTATE_DATASHARING"
	.balign 4, 0
ov17_021139B4:
	.asciz "DWCi_MOV_WH_SYSSTATE_CONNECT_FAIL"
	.balign 4, 0
ov17_021139D8:
	.asciz "DWCi_MOV_WH_SYSSTATE_MEASURECHANNEL"
	.balign 4, 0
ov17_021139FC:
	.word ov17_021138C0, ov17_021138DC, ov17_02113930, ov17_021138F8, ov17_02113950
	.word ov17_02113990, ov17_02113970, ov17_021139D8, ov17_021139B4, ov17_02113914
ov17_02113A24:
	.asciz "%s -> "
	.balign 4, 0
ov17_02113A2C:
	.asciz "%s\n"
	.balign 4, 0
ov17_02113A30:
	.asciz "StartParent - new child (aid %x) connected\n"
	.balign 4, 0
ov17_02113A5C:
	.asciz "StartParent - child (aid %x) disconnected\n"
	.balign 4, 0
ov17_02113A88:
	.asciz "unknown indicate, state = %d\n"
	.balign 4, 0
ov17_02113AA8:
	.asciz "DWCi_MOV_WH_StateInStartParentKeyShare failed\n"
	.balign 4, 0
ov17_02113AD8:
	.asciz "DWCi_MOV_WH_StateInEndParent failed\n"
	.balign 4, 0
ov17_02113B00:
	.asciz "recv buffer size = %d\n"
	.balign 4, 0
ov17_02113B18:
	.asciz "send buffer size = %d\n"
	.balign 4, 0
ov17_02113B30:
	.asciz "channel %d bratio = %x\n"
	.balign 4, 0
ov17_02113B48:
	.asciz "decided channel = %d\n"
	.balign 4, 0
ov17_02113B60:
	.asciz "unknown connect mode %d\n"
	.balign 4, 0
ov17_02113B7C:
	.asciz "DWCi_MOV_WH_StepDataSharing - Warning No Child\n"
	.balign 4, 0
ov17_02113BAC:
	.asciz "DWCi_MOV_WH_StepDataSharing - Warning No DataSet\n"
	.balign 4, 0
ov17_02113BE0:
	.asciz "already DWCi_MOV_WH_SYSSTATE_IDLE\n"
	.balign 4, 0
ov17_02113C04:
	.asciz "DWCi_MOV_WH_Finalize, state = %d\n"

	.bss
wh_trace:
	.space 0x04
wh:
	.space 0x04
