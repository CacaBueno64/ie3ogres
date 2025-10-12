
	.include "asm/macros/function.inc"
	.public DWCi_AC_GetPhase
	.public DWCi_AC_GetMemPtr
	.public WCM_GetPhase
	.public DWC_Netcheck_Abort
	.public DWC_Netcheck_Destroy
	.public SOC_Startup
	.public DWCi_AC_SetError
	.public SOCLiYieldWait
	.public SOC_GetHostID
	.public OS_GetTick
	.public _ll_udiv
	.public DWC_Netcheck_Create
	.public DWC_Netcheck_GetError
	.public DWCi_ConvConnectAPType
	.public DWC_Netcheck_GetReturnCode
	.public CPSNoIpReason
	.public DWCi_AC_SetApType
	.public DWCi_AC_CopyExSetting
	.public SOCL_CalmDown
	.public SOC_Cleanup
	.public MI_CpuCopy8
	.public SOC_SetResolver

	.text
	arm_func_start DWCi_AC_ConnectTest
DWCi_AC_ConnectTest: ; 0x020C66F0
	stmfd sp!, {r3, r4, r5, lr}
	bl DWCi_AC_GetPhase
	mov r4, r0
	mov r0, #0x10
	bl DWCi_AC_GetMemPtr
	mov r5, r0
	bl WCM_GetPhase
	cmp r0, #9
	bne _020C6780
	sub r0, r4, #0xa
	cmp r0, #5
	addls pc, pc, r0, lsl #2
	b _020C67BC
_020C6724: ; jump table
	b _020C673C ; case 0
	b _020C6774 ; case 1
	b _020C6748 ; case 2
	b _020C6754 ; case 3
	b _020C675C ; case 4
	b _020C6768 ; case 5
_020C673C:
	mov r0, r5
	bl ConnectTestStart
_020C6744:
	b _020C6778
_020C6748:
	mov r0, r5
	bl GetIPAddress
	b _020C6744
_020C6754:
	bl ConnectTestCreate
	b _020C6744
_020C675C:
	mov r0, r5
	bl ConnectTestProcess
	b _020C6744
_020C6768:
	mov r0, r5
	bl ConnectTestEnd
	b _020C6778
_020C6774:
	bl ConnectTestRetry
_020C6778:
	mov r4, r0
	b _020C67BC
_020C6780:
	cmp r4, #0xb
	beq _020C679C
	cmp r4, #0xe
	beq _020C67A0
	cmp r4, #0xf
	bne _020C67A8
	b _020C6768
_020C679C:
	b _020C6774
_020C67A0:
	bl DWC_Netcheck_Abort
	bl DWC_Netcheck_Destroy
_020C67A8:
	ldrb r0, [r5, #0xd13]
	mov r1, #2
	mov r4, #0xb
	add r0, r5, r0, lsl #2
	strb r1, [r0, #0x444]
_020C67BC:
	mov r0, r4
	ldmfd sp!, {r3, r4, r5, pc}
	arm_func_end DWCi_AC_ConnectTest

	arm_static_func_start ConnectTestStart
ConnectTestStart: ; 0x020C67C4
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	mov r7, r0
	mov r0, #1
	bl DWCi_AC_GetMemPtr
	mov r5, #4
	mov r6, r0
	mov r0, r5
	bl DWCi_AC_GetMemPtr
	mov r4, r0
	mov r0, r6
	mov r1, r7
	mov r2, r4
	bl MakeSOCConfig
	ldr r1, _020C6824 ; =SOCLiYieldWait
	mov r0, r4
	str r5, [r1]
	bl SOC_Startup
	cmp r0, #0
	moveq r0, #0xc
	ldmeqfd sp!, {r3, r4, r5, r6, r7, pc}
	mov r0, #2
	bl DWCi_AC_SetError
	mov r0, #0x11
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_020C6824: .word SOCLiYieldWait
	arm_func_end ConnectTestStart

	arm_static_func_start GetIPAddress
GetIPAddress: ; 0x020C6828
	stmfd sp!, {r4, lr}
	mov r4, r0
	bl SOC_GetHostID
	cmp r0, #0
	beq _020C6860
	mov r0, r4
	bl CheckSetDNS
	ldrb r0, [r4, #0xd0c]
	mov r0, r0, lsl #0x1b
	mov r0, r0, lsr #0x1f
	cmp r0, #1
	moveq r0, #0xf
	movne r0, #0xd
	ldmfd sp!, {r4, pc}
_020C6860:
	bl OS_GetTick
	ldr r2, [r4, #0xcb0]
	mov r3, #0
	subs r12, r0, r2
	ldr r0, [r4, #0xcb4]
	ldr r2, _020C68B4 ; =0x01FF6210
	sbc r0, r1, r0
	mov r1, r0, lsl #6
	orr r1, r1, r12, lsr #26
	mov r0, r12, lsl #6
	bl _ll_udiv
	cmp r1, #0
	cmpeq r0, #0xa
	movlo r0, #0xc
	ldmlofd sp!, {r4, pc}
	ldrb r1, [r4, #0xd13]
	mov r2, #1
	mov r0, #0xb
	add r1, r4, r1, lsl #2
	strb r2, [r1, #0x444]
	ldmfd sp!, {r4, pc}
_020C68B4: .word 0x01FF6210
	arm_func_end GetIPAddress

	arm_static_func_start ConnectTestCreate
ConnectTestCreate: ; 0x020C68B8
	stmfd sp!, {r3, lr}
	mov r0, #8
	bl DWCi_AC_GetMemPtr
	bl DWC_Netcheck_Create
	cmp r0, #0
	moveq r0, #0xe
	ldmeqfd sp!, {r3, pc}
	mov r0, #3
	bl DWCi_AC_SetError
	mov r0, #0x11
	ldmfd sp!, {r3, pc}
	arm_func_end ConnectTestCreate

	arm_static_func_start ConnectTestProcess
ConnectTestProcess: ; 0x020C68E4
	stmfd sp!, {r4, r5, r6, lr}
	mov r6, r0
	mov r0, #1
	bl DWCi_AC_GetMemPtr
	mov r4, r0
	bl DWC_Netcheck_GetError
	movs r5, r0
	beq _020C6968
	ldrb r0, [r6, #0xd0d]
	bl DWCi_ConvConnectAPType
	ldrb r1, [r4, #0x15]
	cmp r1, r0
	bne _020C6920
	bl DWC_Netcheck_GetReturnCode
	str r0, [r4, #0x10]
_020C6920:
	bl DWC_Netcheck_Destroy
	cmp r5, #0xb
	beq _020C6960
	ldrb r1, [r6, #0xd13]
	mov r2, #1
	ldr r0, _020C6970 ; =0x020E6D8C
	add r1, r6, r1, lsl #2
	strb r2, [r1, #0x444]
	ldr r0, [r0]
	cmp r0, #4
	ldrb r0, [r4, #0xb]
	bic r0, r0, #0xf0
	orreq r0, r0, #0x10
	strb r0, [r4, #0xb]
	mov r0, #0xb
	ldmfd sp!, {r4, r5, r6, pc}
_020C6960:
	mov r0, #0xf
	ldmfd sp!, {r4, r5, r6, pc}
_020C6968:
	mov r0, #0xe
	ldmfd sp!, {r4, r5, r6, pc}
_020C6970: .word CPSNoIpReason
	arm_func_end ConnectTestProcess

	arm_static_func_start ConnectTestEnd
ConnectTestEnd: ; 0x020C6974
	stmfd sp!, {r4, lr}
	mov r4, r0
	ldrb r0, [r4, #0xd0d]
	bl DWCi_AC_SetApType
	ldrb r0, [r4, #0xd0d]
	bl DWCi_AC_CopyExSetting
	mov r0, #0x10
	ldmfd sp!, {r4, pc}
	arm_func_end ConnectTestEnd

	arm_static_func_start ConnectTestRetry
ConnectTestRetry: ; 0x020C6994
	stmfd sp!, {r3, lr}
	bl SOCL_CalmDown
	cmp r0, #0
	movne r0, #0xb
	ldmnefd sp!, {r3, pc}
	bl SOC_Cleanup
	cmp r0, #0
	cmnne r0, #0x27
	moveq r0, #9
	movne r0, #0xb
	ldmfd sp!, {r3, pc}
	arm_func_end ConnectTestRetry

	arm_static_func_start MakeSOCConfig
MakeSOCConfig: ; 0x020C69C0
	stmfd sp!, {r4, r5, r6, lr}
	mov r6, r0
	mov r4, r2
	mov r5, r1
	ldr r0, _020C6A84 ; =DWC_AC_SOC_CONFIG
	mov r1, r4
	mov r2, #0x58
	bl MI_CpuCopy8
	ldr r0, [r6]
	str r0, [r4, #4]
	ldr r0, [r6, #4]
	str r0, [r4, #8]
	ldrb r0, [r5, #0xd0d]
	cmp r0, #6
	ldmhsfd sp!, {r4, r5, r6, pc}
	bl DWCi_ConvConnectAPType
	add r5, r5, r0, lsl #8
	ldrb r0, [r5, #0xc0]
	cmp r0, #0
	mov r0, #0
	beq _020C6A54
	str r0, [r4, #0xc]
	add r0, r5, #0xc0
	bl ConvAddress
	str r0, [r4, #0x10]
	ldrb r0, [r5, #0xd0]
	bl ConvNetMask
	str r0, [r4, #0x14]
	add r0, r5, #0xc4
	bl ConvAddress
	str r0, [r4, #0x18]
	add r0, r5, #0xc8
	bl ConvAddress
	str r0, [r4, #0x1c]
	add r0, r5, #0xcc
	bl ConvAddress
	b _020C6A6C
_020C6A54:
	mov r1, #1
	str r1, [r4, #0xc]
	str r0, [r4, #0x10]
	str r0, [r4, #0x14]
	str r0, [r4, #0x18]
	str r0, [r4, #0x1c]
_020C6A6C:
	str r0, [r4, #0x20]
	mov r1, #0x240
	mov r0, #0
	str r1, [r4, #0x2c]
	str r0, [r4, #0x30]
	ldmfd sp!, {r4, r5, r6, pc}
_020C6A84: .word DWC_AC_SOC_CONFIG
	arm_func_end MakeSOCConfig

	arm_static_func_start ConvAddress
ConvAddress: ; 0x020C6A88
	ldrb r3, [r0]
	ldrb r2, [r0, #1]
	ldrb r1, [r0, #2]
	mov r3, r3, lsl #0x18
	orr r3, r3, #0
	orr r2, r3, r2, lsl #16
	ldrb r0, [r0, #3]
	orr r1, r2, r1, lsl #8
	orr r3, r1, r0
	mov r1, r3, lsr #0x18
	mov r0, r3, lsr #8
	mov r2, r3, lsl #8
	mov r3, r3, lsl #0x18
	and r1, r1, #0xff
	and r0, r0, #0xff00
	and r2, r2, #0xff0000
	orr r0, r1, r0
	and r1, r3, #0xff000000
	orr r0, r2, r0
	orr r0, r1, r0
	bx lr
	arm_func_end ConvAddress

	arm_static_func_start ConvNetMask
ConvNetMask: ; 0x020C6ADC
	rsb r1, r0, #0x20
	cmp r1, #0
	mvn r3, #0
	mov r0, #0
	ble _020C6B00
_020C6AF0:
	add r0, r0, #1
	cmp r0, r1
	mov r3, r3, lsl #1
	blt _020C6AF0
_020C6B00:
	mov r1, r3, lsr #0x18
	mov r0, r3, lsr #8
	mov r2, r3, lsl #8
	mov r3, r3, lsl #0x18
	and r1, r1, #0xff
	and r0, r0, #0xff00
	and r2, r2, #0xff0000
	orr r0, r1, r0
	and r1, r3, #0xff000000
	orr r0, r2, r0
	orr r0, r1, r0
	bx lr
	arm_func_end ConvNetMask

	arm_static_func_start CheckSetDNS
CheckSetDNS: ; 0x020C6B30
	stmfd sp!, {r4, lr}
	sub sp, sp, #8
	mov r4, r0
	ldrb r0, [r4, #0xd0d]
	cmp r0, #6
	addhs sp, sp, #8
	ldmhsfd sp!, {r4, pc}
	bl DWCi_ConvConnectAPType
	add r4, r4, r0, lsl #8
	ldrb r0, [r4, #0xc0]
	ldrb r2, [r4, #0xc8]
	ldrb r1, [r4, #0xc9]
	cmp r0, #0
	ldrb r3, [r4, #0xca]
	add r1, r2, r1
	ldrb r2, [r4, #0xcb]
	add r1, r3, r1
	addne sp, sp, #8
	add r0, r2, r1
	ldmnefd sp!, {r4, pc}
	cmp r0, #0
	addeq sp, sp, #8
	ldmeqfd sp!, {r4, pc}
	add r0, r4, #0xc8
	bl ConvAddress
	str r0, [sp, #4]
	add r0, r4, #0xcc
	bl ConvAddress
	str r0, [sp]
	add r0, sp, #4
	add r1, sp, #0
	bl SOC_SetResolver
	add sp, sp, #8
	ldmfd sp!, {r4, pc}
	arm_func_end CheckSetDNS
	
    .rodata
DWC_AC_SOC_CONFIG:
	.short 0
	.short 0x100
	.word 0
	.word 0
	.word 1
	.word 0
	.word 0
	.word 0
	.word 0
	.word 0
	.word 0x1000
	.word 0x1000
	.word 0
	.word 0
	.word 0
	.word 0
	.word 0
	.word 0
	.word 0
	.word ov15_020E440C
	.word 4
	.word 0
	.word 0
	
    .data
ov15_020E440C:
	.asciz "NINTENDO-DS"
	.balign 4, 0