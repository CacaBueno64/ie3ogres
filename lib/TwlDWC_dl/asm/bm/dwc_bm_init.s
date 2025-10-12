
	.include "asm/macros/function.inc"
	.public DWC_BACKUPlCheckAddress
	.public DWC_BACKUPlCheckIp
	.public DWC_BACKUPlCheckSsid
	.public DWCi_AUTH_GetNewWiFiInfo
	.public DWCi_BACKUPlConvMaskAddr
	.public DWCi_BACKUPlConvWifiInfo
	.public DWCi_BACKUPlInit
	.public DWCi_BACKUPlRead
	.public DWCi_BACKUPlSetWiFi
	.public DWCi_BACKUPlWriteAll
	.public MATH_CalcCRC16
	.public MATHi_CRC16InitTableRev
	.public MI_CpuCopy8
	.public MI_CpuFill8
	.public MIi_CpuClear16
	.public memcmp

	.text
	arm_func_start DWC_BM_Init
DWC_BM_Init: ; 0x020CB3F8
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, lr}
	sub sp, sp, #0x10
	mov r6, #0
	mov r8, r0
	mov r1, r6
	mov r2, #0x700
	bl MI_CpuFill8
	mov r0, r8
	bl DWCi_BACKUPlInit
	cmp r0, #0
	addeq sp, sp, #0x10
	ldreq r0, _020CB6E8 ; =0xFFFFD8EF
	ldmeqfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
	ldr r1, _020CB6EC ; =0x0000A001
	add r0, r8, #0x500
	bl MATHi_CRC16InitTableRev
	mov r0, r8
	bl DWCi_BACKUPlRead
	cmp r0, #0
	addeq sp, sp, #0x10
	ldreq r0, _020CB6E8 ; =0xFFFFD8EF
	ldmeqfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
	add r5, sp, #0
	mov r1, r6
	mov r0, r5
	mov r2, #0x10
	bl MI_CpuFill8
	mov r9, #1
	mov r4, #0xfe
_020CB46C:
	add r7, r8, r6, lsl #8
	mov r1, r7
	mov r2, r4
	add r0, r8, #0x500
	bl MATH_CalcCRC16
	mov r1, r7
	ldrh r1, [r1, #0xfe]
	cmp r0, r1
	bne _020CB4A0
	mov r0, r7
	bl checkAp
	cmp r0, #0
	strne r9, [r5, r6, lsl #2]
_020CB4A0:
	add r6, r6, #1
	cmp r6, #3
	blt _020CB46C
	add r0, r8, #0x500
	add r1, r8, #0x300
	mov r2, #0xfe
	bl MATH_CalcCRC16
	add r1, r8, #0x300
	ldrh r1, [r1, #0xfe]
	cmp r0, r1
	moveq r0, #1
	ldr r1, [sp]
	streq r0, [sp, #0xc]
	cmp r1, #0
	ldrne r0, [sp, #4]
	cmpne r0, #0
	ldrne r0, [sp, #8]
	cmpne r0, #0
	ldrne r0, [sp, #0xc]
	cmpne r0, #0
	beq _020CB508
	add r0, r8, #0xf0
	bl DWCi_BACKUPlSetWiFi
	add sp, sp, #0x10
	mov r0, #0
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
_020CB508:
	cmp r1, #0
	ldreq r0, [sp, #4]
	cmpeq r0, #0
	ldreq r0, [sp, #8]
	cmpeq r0, #0
	ldreq r0, [sp, #0xc]
	cmpeq r0, #0
	bne _020CB54C
	mov r0, r8
	bl init
	mov r0, r8
	bl DWCi_BACKUPlWriteAll
	cmp r0, #0
	movne r0, #0
	add sp, sp, #0x10
	ldreq r0, _020CB6F0 ; =0xFFFFD8F0
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
_020CB54C:
	cmp r1, #0
	beq _020CB560
	ldr r0, [sp, #4]
	cmp r0, #0
	bne _020CB59C
_020CB560:
	ldr r0, [sp, #8]
	cmp r0, #0
	beq _020CB578
	ldr r0, [sp, #0xc]
	cmp r0, #0
	bne _020CB59C
_020CB578:
	mov r0, r8
	bl init
	mov r0, r8
	bl DWCi_BACKUPlWriteAll
	cmp r0, #0
	movne r0, #0
	add sp, sp, #0x10
	ldreq r0, _020CB6F0 ; =0xFFFFD8F0
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
_020CB59C:
	cmp r1, #0
	ldreq r0, [sp, #4]
	cmpeq r0, #0
	bne _020CB5D0
	mov r0, r8
	bl init
	mov r0, r8
	bl DWCi_BACKUPlWriteAll
	cmp r0, #0
	ldrne r0, _020CB6F4 ; =0xFFFFD8ED
	add sp, sp, #0x10
	ldreq r0, _020CB6F0 ; =0xFFFFD8F0
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
_020CB5D0:
	cmp r1, #0
	bne _020CB600
	mov r0, r8
	mov r1, #0
	bl initPage
	add r0, r8, #0x1f0
	add r1, r8, #0xf0
	mov r2, #0xe
	bl MI_CpuCopy8
	ldrb r0, [r8, #0x1ef]
	strb r0, [r8, #0xef]
	b _020CB630
_020CB600:
	ldr r0, [sp, #4]
	cmp r0, #0
	bne _020CB630
	mov r0, r8
	mov r1, #1
	bl initPage
	add r0, r8, #0xf0
	add r1, r8, #0x1f0
	mov r2, #0xe
	bl MI_CpuCopy8
	ldrb r0, [r8, #0xef]
	strb r0, [r8, #0x1ef]
_020CB630:
	add r0, r8, #0xf0
	bl DWCi_BACKUPlSetWiFi
	ldr r0, [sp, #8]
	cmp r0, #0
	bne _020CB650
	mov r0, r8
	mov r1, #2
	bl initPage
_020CB650:
	ldr r0, [sp, #0xc]
	cmp r0, #0
	bne _020CB66C
	add r1, r8, #0x300
	mov r0, #0
	mov r2, #0x100
	bl MIi_CpuClear16
_020CB66C:
	mov r4, #0
	mov r5, r4
	mov r2, #1
	add r3, sp, #0
_020CB67C:
	ldr r0, [r3, r5, lsl #2]
	cmp r0, #0
	bne _020CB6B0
	ldrb r0, [r8, #0xef]
	tst r0, r2, lsl r5
	beq _020CB6B0
	mvn r0, r2, lsl r5
	ldrb r1, [r8, #0xef]
	and r0, r0, #0xff
	mov r4, r2
	and r0, r1, r0
	strb r0, [r8, #0xef]
	strb r0, [r8, #0x1ef]
_020CB6B0:
	add r5, r5, #1
	cmp r5, #3
	blt _020CB67C
	mov r0, r8
	bl DWCi_BACKUPlWriteAll
	cmp r0, #0
	addeq sp, sp, #0x10
	ldreq r0, _020CB6F0 ; =0xFFFFD8F0
	ldmeqfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
	ldr r0, _020CB6F8 ; =0xFFFFD8EE
	cmp r4, #0
	moveq r0, #0
	add sp, sp, #0x10
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
_020CB6E8: .word 0xFFFFD8EF
_020CB6EC: .word 0x0000A001
_020CB6F0: .word 0xFFFFD8F0
_020CB6F4: .word 0xFFFFD8ED
_020CB6F8: .word 0xFFFFD8EE
	arm_func_end DWC_BM_Init

	arm_static_func_start checkAp
checkAp: ; 0x020CB6FC
	stmfd sp!, {r3, r4, r5, lr}
	mov r5, r0
	ldrb r0, [r5, #0xe7]
	cmp r0, #0xff
	moveq r0, #1
	ldmeqfd sp!, {r3, r4, r5, pc}
	cmp r0, #2
	movhi r0, #0
	ldmhifd sp!, {r3, r4, r5, pc}
	add r0, r5, #0x40
	bl DWC_BACKUPlCheckSsid
	cmp r0, #0
	moveq r0, #0
	ldmeqfd sp!, {r3, r4, r5, pc}
	ldr r1, _020CB7D8 ; =DWCi_SETTING_NONE
	add r0, r5, #0xc0
	mov r2, #4
	bl memcmp
	cmp r0, #0
	beq _020CB794
	add r0, r5, #0xc4
	bl DWC_BACKUPlCheckAddress
	cmp r0, #0
	moveq r0, #0
	ldmeqfd sp!, {r3, r4, r5, pc}
	ldrb r0, [r5, #0xd0]
	cmp r0, #0x20
	movhi r0, #0
	ldmhifd sp!, {r3, r4, r5, pc}
	add r4, sp, #0
	mov r1, r4
	bl DWCi_BACKUPlConvMaskAddr
	mov r1, r4
	add r0, r5, #0xc0
	bl DWC_BACKUPlCheckIp
	cmp r0, #0
	moveq r0, #0
	ldmeqfd sp!, {r3, r4, r5, pc}
_020CB794:
	ldr r1, _020CB7D8 ; =DWCi_SETTING_NONE
	add r0, r5, #0xc8
	mov r2, #4
	bl memcmp
	cmp r0, #0
	beq _020CB7D0
	add r0, r5, #0xc8
	bl DWC_BACKUPlCheckAddress
	cmp r0, #0
	bne _020CB7D0
	add r0, r5, #0xcc
	bl DWC_BACKUPlCheckAddress
	cmp r0, #0
	moveq r0, #0
	ldmeqfd sp!, {r3, r4, r5, pc}
_020CB7D0:
	mov r0, #1
	ldmfd sp!, {r3, r4, r5, pc}
_020CB7D8: .word DWCi_SETTING_NONE
	arm_func_end checkAp

	arm_static_func_start init
init: ; 0x020CB7DC
	stmfd sp!, {r4, r5, r6, r7, lr}
	sub sp, sp, #0x14
	mov r4, r0
	mov r5, #0
	mov r0, r5
	mov r1, r4
	mov r2, #0x400
	bl MIi_CpuClear16
	mov r1, #0xff
_020CB800:
	add r0, r4, r5, lsl #8
	add r5, r5, #1
	strb r1, [r0, #0xe7]
	cmp r5, #3
	blt _020CB800
	add r5, sp, #0
	mov r0, r5
	bl DWCi_AUTH_GetNewWiFiInfo
	mov r0, r5
	bl DWCi_BACKUPlConvWifiInfo
	mov r6, r0
	mov r7, #0
	mov r5, #0xe
_020CB834:
	add r1, r4, r7, lsl #8
	mov r0, r6
	mov r2, r5
	add r1, r1, #0xf0
	bl MI_CpuCopy8
	add r7, r7, #1
	cmp r7, #2
	blt _020CB834
	mov r0, #0
	add sp, sp, #0x14
	ldmfd sp!, {r4, r5, r6, r7, pc}
	arm_func_end init

	arm_static_func_start initPage
initPage: ; 0x020CB860
	stmfd sp!, {r3, r4, r5, lr}
	mov r5, r0
	mov r4, r1
	add r1, r5, r4, lsl #8
	mov r0, #0
	mov r2, #0x100
	bl MIi_CpuClear16
	add r0, r5, r4, lsl #8
	mov r1, #0xff
	strb r1, [r0, #0xe7]
	ldmfd sp!, {r3, r4, r5, pc}
	arm_func_end initPage

    .rodata
	.global DWCi_SETTING_NONE
DWCi_SETTING_NONE:
	.byte 0x00, 0x00, 0x00, 0x00