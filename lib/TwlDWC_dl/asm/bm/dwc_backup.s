
	.include "asm/macros/function.inc"
	.public DC_InvalidateRange
	.public DC_StoreRange
	.public MATH_CalcCRC16
	.public MATHi_CRC16InitTableRev
	.public MI_CpuCopy8
	.public OS_GetTick
	.public OS_Terminate
	.public PXI_IsCallbackReady
	.public PXI_SendWordByFifo
	.public PXI_SetFifoRecvCallback
	.public SVC_WaitByLoop
	.public _ll_udiv
	.public memcmp

	.text
	arm_func_start DWCi_BM_GetApInfo
DWCi_BM_GetApInfo: ; 0x020CA8CC
	ldr r12, _020CA8DC ; =ReadSlotInfo
	mov r1, #0
	mov r2, #3
	bx r12
_020CA8DC: .word ReadSlotInfo
	arm_func_end DWCi_BM_GetApInfo

	arm_func_start DWCi_BM_GetWiFiInfo
DWCi_BM_GetWiFiInfo: ; 0x020CA8E0
	stmfd sp!, {r4, r5, r6, lr}
	mov r5, r0
	mov r4, #6
	ldr r0, _020CA990 ; =Wifi
	mov r1, r5
	mov r2, r4
	bl MI_CpuCopy8
	ldr r6, _020CA994 ; =0x000007FF
	ldr r1, [r5, #4]
	ldr r2, [r5]
	sub r0, r6, #0x800
	and r12, r2, r0
	and lr, r1, r6
	ldr r0, _020CA998 ; =0x020E9011
	stmia r5, {r12, lr}
	mov r2, r4
	add r1, r5, #8
	bl MI_CpuCopy8
	ldr r0, [r5, #8]
	ldr r2, [r5, #0xc]
	mov r3, r0, lsr #3
	and r1, r6, r2, lsr #3
	str r1, [r5, #0xc]
	orr r3, r3, r2, lsl #29
	sub r0, r6, #0x800
	and r2, r3, r0
	mov r4, #2
	str r2, [r5, #8]
	ldr r0, _020CA99C ; =0x020E9016
	mov r2, r4
	add r1, r5, #0x10
	bl MI_CpuCopy8
	mov r2, r4
	ldrh r4, [r5, #0x10]
	sub r3, r6, #0x400
	ldr r0, _020CA9A0 ; =0x020E9018
	mov r4, r4, asr #6
	strh r4, [r5, #0x10]
	ldrh r4, [r5, #0x10]
	add r1, r5, #0x12
	and r3, r4, r3
	strh r3, [r5, #0x10]
	bl MI_CpuCopy8
	ldmfd sp!, {r4, r5, r6, pc}
_020CA990: .word Wifi
_020CA994: .word 0x000007FF
_020CA998: .word Wifi+5
_020CA99C: .word Wifi+10
_020CA9A0: .word Wifi+12
	arm_func_end DWCi_BM_GetWiFiInfo

	arm_static_func_start ReadSlotInfo
ReadSlotInfo: ; 0x020CA9A4
	stmfd sp!, {r3, lr}
	ldr r3, _020CA9C8 ; =nv_result
	mov r12, r0
	ldr r0, [r3, #8]
	add r0, r0, r1, lsl #8
	mov r1, r2, lsl #8
	mov r2, r12
	bl readNvram
	ldmfd sp!, {r3, pc}
_020CA9C8: .word nv_result
	arm_func_end ReadSlotInfo

	arm_static_func_start WriteSlotInfo
WriteSlotInfo: ; 0x020CA9CC
	stmfd sp!, {r4, r5, r6, lr}
	ldr r3, _020CAA08 ; =nv_result
	mov r5, r1
	ldr r1, [r3, #8]
	mov r6, r0
	mov r4, r2
	mov r2, r6
	add r0, r1, r5, lsl #8
	mov r1, #0x100
	bl writeNvram
	mov r0, r6
	mov r1, r5
	mov r2, r4
	bl VerifySlotInfo
	ldmfd sp!, {r4, r5, r6, pc}
_020CAA08: .word nv_result
	arm_func_end WriteSlotInfo

	arm_func_start DWCi_BM_SetWiFiInfo
DWCi_BM_SetWiFiInfo: ; 0x020CAA0C
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, lr}
	mov r9, r1
	bl DWCi_BACKUPlConvWifiInfo
	ldr r1, _020CAAB8 ; =0x0000A001
	add r0, r9, #0x200
	bl MATHi_CRC16InitTableRev
	ldr r6, _020CAABC ; =Wifi
	mov r8, #0
	mov r5, #0xe
	mov r4, #0xfe
	mov r7, #1
_020CAA38:
	mov r0, r9
	mov r1, r8
	mov r2, r7
	bl ReadSlotInfo
	cmp r0, #0
	bne _020CAA5C
	bl OS_Terminate
	mov r0, #0
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
_020CAA5C:
	mov r0, r6
	mov r2, r5
	add r1, r9, #0xf0
	bl MI_CpuCopy8
	mov r1, r9
	mov r2, r4
	add r0, r9, #0x200
	bl MATH_CalcCRC16
	strh r0, [r9, #0xfe]
_020CAA80:
	mov r0, r9
	mov r1, r8
	add r2, r9, #0x100
	bl WriteSlotInfo
	cmp r0, #0
	beq _020CAA80
	add r8, r8, #1
	cmp r8, #2
	blt _020CAA38
	bl writeDisable
	cmp r0, #0
	movne r0, #1
	moveq r0, #0
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
_020CAAB8: .word 0x0000A001
_020CAABC: .word Wifi
	arm_func_end DWCi_BM_SetWiFiInfo

	arm_func_start DWCi_BACKUPlInit
DWCi_BACKUPlInit: ; 0x020CAAC0
	stmfd sp!, {r4, lr}
	mov r4, r0
	mov r0, #0x20
	mov r1, r0
	mov r2, r4
	bl readNvram
	cmp r0, #0
	moveq r0, #0
	ldmeqfd sp!, {r4, pc}
	ldrh r2, [r4]
	ldr r1, _020CAB00 ; =nv_result
	mov r0, #1
	mov r2, r2, lsl #3
	sub r2, r2, #0x400
	str r2, [r1, #8]
	ldmfd sp!, {r4, pc}
_020CAB00: .word nv_result
	arm_func_end DWCi_BACKUPlInit

	arm_func_start DWCi_BACKUPlRead
DWCi_BACKUPlRead: ; 0x020CAB04
	ldr r12, _020CAB14 ; =ReadSlotInfo
	mov r1, #0
	mov r2, #4
	bx r12
_020CAB14: .word ReadSlotInfo
	arm_func_end DWCi_BACKUPlRead

	arm_func_start DWCi_BACKUPlWritePage
DWCi_BACKUPlWritePage: ; 0x020CAB18
	stmfd sp!, {r4, r5, r6, r7, r8, lr}
	mov r8, r0
	mov r7, r1
	mov r6, r2
	mov r4, #0
_020CAB2C:
	ldr r0, [r7, r4, lsl #2]
	cmp r0, #0
	beq _020CAB54
	add r5, r8, r4, lsl #8
_020CAB3C:
	mov r0, r5
	mov r1, r4
	mov r2, r6
	bl WriteSlotInfo
	cmp r0, #0
	beq _020CAB3C
_020CAB54:
	add r4, r4, #1
	cmp r4, #4
	blt _020CAB2C
	bl writeDisable
	cmp r0, #0
	movne r0, #1
	moveq r0, #0
	ldmfd sp!, {r4, r5, r6, r7, r8, pc}
	arm_func_end DWCi_BACKUPlWritePage

	arm_func_start DWCi_BACKUPlWriteAll
DWCi_BACKUPlWriteAll: ; 0x020CAB74
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	mov r7, r0
	mov r5, #0
	mov r4, #0xfe
_020CAB84:
	mov r2, r4
	add r0, r7, #0x500
	add r1, r7, r5, lsl #8
	bl MATH_CalcCRC16
	add r1, r7, r5, lsl #8
	strh r0, [r1, #0xfe]
	mov r6, r1
_020CABA0:
	mov r0, r6
	mov r1, r5
	add r2, r7, #0x400
	bl WriteSlotInfo
	cmp r0, #0
	beq _020CABA0
	add r5, r5, #1
	cmp r5, #4
	blt _020CAB84
	bl writeDisable
	cmp r0, #0
	movne r0, #1
	moveq r0, #0
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
	arm_func_end DWCi_BACKUPlWriteAll

	arm_func_start DWCi_BACKUPlSetWiFi
DWCi_BACKUPlSetWiFi: ; 0x020CABD8
	ldr r1, _020CABE8 ; =Wifi
	ldr r12, _020CABEC ; =MI_CpuCopy8
	mov r2, #0xe
	bx r12
_020CABE8: .word Wifi
_020CABEC: .word MI_CpuCopy8
	arm_func_end DWCi_BACKUPlSetWiFi

	arm_func_start DWCi_BACKUPlConvMaskCidr
DWCi_BACKUPlConvMaskCidr: ; 0x020CABF0
	stmfd sp!, {r4, lr}
	mov r12, #0
	mov r3, r12
	mov r2, r12
_020CAC00:
	ldrb r4, [r0, r12]
	mov lr, r2
_020CAC08:
	mov r1, r4, asr lr
	tst r1, #1
	add lr, lr, #1
	addne r3, r3, #1
	cmp lr, #8
	blt _020CAC08
	add r12, r12, #1
	cmp r12, #4
	blt _020CAC00
	and r0, r3, #0xff
	ldmfd sp!, {r4, pc}
	arm_func_end DWCi_BACKUPlConvMaskCidr

	arm_func_start DWCi_BACKUPlConvMaskAddr
DWCi_BACKUPlConvMaskAddr: ; 0x020CAC34
	mvn r2, #0
	eor r3, r2, r2, lsr r0
	mov r2, #0
_020CAC40:
	mov r0, r2, lsl #3
	rsb r0, r0, #0x18
	mov r0, r3, lsr r0
	strb r0, [r1, r2]
	add r2, r2, #1
	cmp r2, #4
	blt _020CAC40
	bx lr
	arm_func_end DWCi_BACKUPlConvMaskAddr

	arm_func_start DWC_BACKUPlCheckSsid
DWC_BACKUPlCheckSsid: ; 0x020CAC60
	mov r2, #0
_020CAC64:
	ldrb r1, [r0, r2]
	cmp r1, #0
	movne r0, #1
	bxne lr
	add r2, r2, #1
	cmp r2, #0x20
	blt _020CAC64
	mov r0, #0
	bx lr
	arm_func_end DWC_BACKUPlCheckSsid

	arm_func_start DWC_BACKUPlCheckIp
DWC_BACKUPlCheckIp: ; 0x020CAC88
	stmfd sp!, {r4, r5, r6, lr}
	sub sp, sp, #8
	mov r6, r0
	mov r5, r1
	bl DWC_BACKUPlCheckAddress
	cmp r0, #0
	addeq sp, sp, #8
	moveq r0, #0
	ldmeqfd sp!, {r4, r5, r6, pc}
	mov r4, #4
	add r1, sp, #4
	mov r0, r6
	mov r2, r4
	bl MI_CpuCopy8
	add r1, sp, #0
	mov r0, r5
	mov r2, r4
	bl MI_CpuCopy8
	ldr r0, [sp]
	ldr r1, [sp, #4]
	mvn r0, r0
	tst r1, r0
	movne r0, #1
	moveq r0, #0
	add sp, sp, #8
	ldmfd sp!, {r4, r5, r6, pc}
	arm_func_end DWC_BACKUPlCheckIp

	arm_func_start DWC_BACKUPlCheckAddress
DWC_BACKUPlCheckAddress: ; 0x020CACF0
	ldrb r0, [r0]
	cmp r0, #0x7f
	moveq r0, #0
	bxeq lr
	cmp r0, #1
	movlo r0, #0
	bxlo lr
	cmp r0, #0xdf
	movls r0, #1
	movhi r0, #0
	bx lr
	arm_func_end DWC_BACKUPlCheckAddress

	arm_static_func_start NVRAMm_ExecuteCommand
NVRAMm_ExecuteCommand: ; 0x020CAD1C
	stmfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, lr}
	sub sp, sp, #0x44
	ldr r11, _020CB124 ; =Work
	mov r9, r0
	mov r7, r11, lsl #8
	mov r4, r7
	mov r4, r4, lsr #0x10
	orr r4, r4, #0x10000
	str r4, [sp, #0x34]
	and r4, r7, #0xff00
	orr r4, r4, #0x20000
	str r4, [sp, #0x38]
	ldr r5, _020CB128 ; =0x01020000
	mov r6, r3, lsr #0x10
	mov r4, r3, lsl #0x10
	add r3, r5, #0x30000
	orr r3, r3, r4, lsr #16
	str r3, [sp, #0x18]
	mov r3, r4, lsr #0x10
	orr r3, r3, #0x1040000
	ldr r0, _020CB12C ; =0x02002200
	str r3, [sp, #0x2c]
	orr r3, r0, r11, lsr #24
	str r3, [sp, #0x30]
	ldr r3, [sp, #0x38]
	mov r8, #0
	orr r3, r3, #0x1000000
	str r3, [sp, #0x38]
	mov r3, r1, lsr #0x10
	mov r1, r1, lsl #0x10
	mov r1, r1, lsr #0x10
	orr r5, r1, #0x10000
	add r1, r0, #0x300
	and r3, r3, #0xff
	add r0, r0, #0x100
	orr r0, r3, r0
	str r0, [sp, #8]
	orr r0, r2, #0x20000
	str r0, [sp, #0x24]
	orr r0, r6, #0x30000
	str r0, [sp, #0x28]
	orr r0, r6, #0x40000
	str r0, [sp, #0x14]
	ldr r0, _020CB130 ; =0x03002100
	mov r4, #4
	sub r0, r0, #0x100
	str r0, [sp, #0x1c]
	mov r0, r2, lsr #0x10
	orr r0, r0, #0x20000
	str r0, [sp, #0xc]
	mov r0, r2, lsl #0x10
	mov r0, r0, lsr #0x10
	orr r1, r3, r1
	orr r0, r0, #0x30000
	str r1, [sp, #0x20]
	mov r6, r4
	str r0, [sp, #0x10]
	mov r7, r8
_020CAE04:
	cmp r8, #0
	bne _020CAFF4
	ldr r0, _020CB134 ; =nv_result
	cmp r9, #7
	str r7, [r0, #4]
	addls pc, pc, r9, lsl #2
	b _020CAE04
_020CAE20: ; jump table
	b _020CAE04 ; case 0
	b _020CAE40 ; case 1
	b _020CAED8 ; case 2
	b _020CAEE4 ; case 3
	b _020CAF80 ; case 4
	b _020CAF80 ; case 5
	b _020CAFC4 ; case 6
	b _020CAFD4 ; case 7
_020CAE40:
	ldr r1, [sp, #8]
	mov r0, r6
	mov r2, r7
	bl PXI_SendWordByFifo
	cmp r0, #0
	movlt r8, r7
	blt _020CAE04
	mov r0, r6
	mov r1, r5
	mov r2, r7
	bl PXI_SendWordByFifo
	cmp r0, #0
	movlt r8, r7
	blt _020CAE04
	ldr r1, [sp, #0xc]
	mov r0, r6
	mov r2, r7
	bl PXI_SendWordByFifo
	cmp r0, #0
	movlt r8, r7
	blt _020CAE04
	ldr r1, [sp, #0x10]
	mov r0, r6
	mov r2, r7
	bl PXI_SendWordByFifo
	cmp r0, #0
	movlt r8, r7
	blt _020CAE04
	ldr r1, [sp, #0x14]
	mov r0, r6
	mov r2, r7
	bl PXI_SendWordByFifo
	cmp r0, #0
	movlt r8, r7
	blt _020CAE04
	mov r0, r6
	ldr r1, [sp, #0x18]
	b _020CAFDC
_020CAED8:
	mov r0, #4
	ldr r1, [sp, #0x1c]
	b _020CAFDC
_020CAEE4:
	ldr r1, [sp, #0x20]
	mov r0, r4
	mov r2, r7
	bl PXI_SendWordByFifo
	cmp r0, #0
	movlt r8, r7
	blt _020CAF70
	mov r0, r4
	mov r1, r5
	mov r2, r7
	bl PXI_SendWordByFifo
	cmp r0, #0
	movlt r8, r7
	blt _020CAF70
	ldr r1, [sp, #0x24]
	mov r0, r4
	mov r2, r7
	bl PXI_SendWordByFifo
	cmp r0, #0
	movlt r8, r7
	blt _020CAF70
	ldr r1, [sp, #0x28]
	mov r0, r4
	mov r2, r7
	bl PXI_SendWordByFifo
	cmp r0, #0
	movlt r8, r7
	blt _020CAF70
	ldr r1, [sp, #0x2c]
	mov r0, r4
	mov r2, r7
	bl PXI_SendWordByFifo
	mov r8, r7
	cmp r0, #0
	movge r8, #1
_020CAF70:
	bl OS_GetTick
	str r0, [sp]
	str r1, [sp, #0x40]
	b _020CAE04
_020CAF80:
	ldr r1, [sp, #0x30]
	mov r0, #4
	mov r2, r7
	bl PXI_SendWordByFifo
	cmp r0, #0
	movlt r8, r7
	blt _020CAE04
	ldr r1, [sp, #0x34]
	mov r0, #4
	mov r2, r7
	bl PXI_SendWordByFifo
	cmp r0, #0
	movlt r8, r7
	blt _020CAE04
	mov r0, #4
	ldr r1, [sp, #0x38]
	b _020CAFDC
_020CAFC4:
	ldr r1, _020CB130 ; =0x03002100
	mov r0, #4
	add r1, r1, #0xc00
	b _020CAFDC
_020CAFD4:
	ldr r1, _020CB130 ; =0x03002100
	mov r0, #4
_020CAFDC:
	mov r2, r7
	bl PXI_SendWordByFifo
	mov r8, r7
	cmp r0, #0
	movge r8, #1
	b _020CAE04
_020CAFF4:
	ldr r0, _020CB134 ; =nv_result
	ldr r0, [r0, #4]
	cmp r0, #1
	bne _020CAE04
	ldr r0, _020CB134 ; =nv_result
	mov r8, #0
	ldrh r0, [r0]
	cmp r0, #0
	bne _020CB118
	cmp r9, #7
	addls pc, pc, r9, lsl #2
	b _020CAE04
_020CB024: ; jump table
	b _020CAE04 ; case 0
	b _020CB044 ; case 1
	b _020CB050 ; case 2
	b _020CB058 ; case 3
	b _020CB060 ; case 4
	b _020CB060 ; case 5
	b _020CB100 ; case 6
	b _020CB10C ; case 7
_020CB044:
	add sp, sp, #0x44
	mov r0, #1
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
_020CB050:
	mov r9, #4
	b _020CAE04
_020CB058:
	mov r9, #5
	b _020CAE04
_020CB060:
	mov r0, r11
	mov r1, #1
	bl DC_InvalidateRange
	cmp r9, #4
	ldrb r0, [r11]
	bne _020CB090
	tst r0, #2
	movne r9, #3
	bne _020CAE04
	add sp, sp, #0x44
	mov r0, r8
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
_020CB090:
	tst r0, #1
	addeq sp, sp, #0x44
	moveq r0, #1
	ldmeqfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
	tst r0, #0x20
	bne _020CB0EC
	bl OS_GetTick
	ldr r2, [sp]
	mov r12, r8
	subs lr, r0, r2
	ldr r0, [sp, #0x40]
	ldr r2, _020CB138 ; =0x000082EA
	sbc r10, r1, r0
	mov r0, #0x40
	umull r0, r1, lr, r0
	mla r1, lr, r12, r1
	mov r12, #0x40
	mla r1, r10, r12, r1
	mov r3, r8
	bl _ll_udiv
	cmp r1, #0
	cmpeq r0, #0xfa0
	bls _020CB0F4
_020CB0EC:
	mov r9, #6
	b _020CAE04
_020CB0F4:
	mov r0, #0x4000
	blx SVC_WaitByLoop
	b _020CAE04
_020CB100:
	add sp, sp, #0x44
	mov r0, r8
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
_020CB10C:
	add sp, sp, #0x44
	mov r0, #1
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
_020CB118:
	mov r0, r8
	add sp, sp, #0x44
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
_020CB124: .word Work
_020CB128: .word 0x01020000
_020CB12C: .word 0x02002200
_020CB130: .word 0x03002100
_020CB134: .word nv_result
_020CB138: .word 0x000082EA
	arm_func_end NVRAMm_ExecuteCommand

	arm_static_func_start readNvram
readNvram: ; 0x020CB13C
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, lr}
	mov r4, r2
	mov r6, r0
	mov r0, r4
	mov r5, r1
	bl DC_InvalidateRange
	mov r8, #4
	mov r7, #1
_020CB15C:
	mov r0, r8
	mov r1, r7
	bl PXI_IsCallbackReady
	cmp r0, #0
	beq _020CB15C
	ldr r1, _020CB1C8 ; =Callback_NVRAM
	mov r0, r8
	bl PXI_SetFifoRecvCallback
	mov r0, r5, lsl #0x10
	mov r8, r0, lsr #0x10
	mov r7, #0x40000
	mov r9, #1
_020CB18C:
	mov r0, r9
	mov r1, r6
	mov r2, r8
	mov r3, r4
	bl NVRAMm_ExecuteCommand
	cmp r0, #1
	beq _020CB1B4
	mov r0, r7
	blx SVC_WaitByLoop
	b _020CB18C
_020CB1B4:
	mov r0, r4
	mov r1, r5
	bl DC_InvalidateRange
	mov r0, r9
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
_020CB1C8: .word Callback_NVRAM
	arm_func_end readNvram

	arm_static_func_start writeNvram
writeNvram: ; 0x020CB1CC
	stmfd sp!, {r4, r5, r6, r7, r8, lr}
	mov r8, r0
	mov r7, r1
	mov r6, r2
	mov r5, #4
	mov r4, #1
_020CB1E4:
	mov r0, r5
	mov r1, r4
	bl PXI_IsCallbackReady
	cmp r0, #0
	beq _020CB1E4
	ldr r1, _020CB244 ; =Callback_NVRAM
	mov r0, r5
	bl PXI_SetFifoRecvCallback
	mov r0, r6
	mov r1, r7
	bl DC_StoreRange
	mov r4, #0x40000
	mov r5, #2
_020CB218:
	mov r0, r5
	mov r1, r8
	mov r2, r7
	mov r3, r6
	bl NVRAMm_ExecuteCommand
	cmp r0, #1
	ldmeqfd sp!, {r4, r5, r6, r7, r8, pc}
	mov r0, r4
	blx SVC_WaitByLoop
	b _020CB218
	ldmfd sp!, {r4, r5, r6, r7, r8, pc}
_020CB244: .word Callback_NVRAM
	arm_func_end writeNvram

	arm_static_func_start VerifySlotInfo
VerifySlotInfo: ; 0x020CB248
	stmfd sp!, {r4, r5, r6, lr}
	mov r5, r2
	mov r4, #1
	mov r6, r0
	mov r0, r5
	mov r2, r4
	bl ReadSlotInfo
	cmp r0, #0
	moveq r0, #0
	ldmeqfd sp!, {r4, r5, r6, pc}
	mov r0, r6
	mov r1, r5
	mov r2, #0x100
	bl memcmp
	cmp r0, #0
	movne r4, #0
	mov r0, r4
	ldmfd sp!, {r4, r5, r6, pc}
	arm_func_end VerifySlotInfo

	arm_static_func_start writeDisable
writeDisable: ; 0x020CB290
	stmfd sp!, {r4, r5, r6, lr}
	mov r5, #4
	mov r4, #1
_020CB29C:
	mov r0, r5
	mov r1, r4
	bl PXI_IsCallbackReady
	cmp r0, #0
	beq _020CB29C
	ldr r1, _020CB2F8 ; =Callback_NVRAM
	mov r0, r5
	bl PXI_SetFifoRecvCallback
	mov r4, #0x40000
	mov r6, #7
	mov r5, #0
_020CB2C8:
	mov r0, r6
	mov r1, r5
	mov r2, r5
	mov r3, r5
	bl NVRAMm_ExecuteCommand
	cmp r0, #1
	beq _020CB2F0
	mov r0, r4
	blx SVC_WaitByLoop
	b _020CB2C8
_020CB2F0:
	mov r0, #1
	ldmfd sp!, {r4, r5, r6, pc}
_020CB2F8: .word Callback_NVRAM
	arm_func_end writeDisable

	arm_static_func_start Callback_NVRAM
Callback_NVRAM: ; 0x020CB2FC
	ldr r0, _020CB328 ; =nv_result
	and r1, r1, #0xff
	strh r1, [r0]
	mov r1, #1
	str r1, [r0, #4]
	cmp r2, #0
	movne r1, #0xff
	strneh r1, [r0]
	ldr r0, _020CB328 ; =nv_result
	ldrh r0, [r0]
	bx lr
_020CB328: .word nv_result
	arm_func_end Callback_NVRAM

	arm_func_start DWCi_BACKUPlConvWifiInfo
DWCi_BACKUPlConvWifiInfo: ; 0x020CB32C
	stmfd sp!, {r4, r5, r6, lr}
	sub sp, sp, #8
	mov r5, r0
	ldr r2, [r5, #8]
	ldr r4, _020CB3DC ; =Wifi
	ldr r3, [r5, #0xc]
	str r2, [sp]
	mov r1, r4
	mov r2, #5
	str r3, [sp, #4]
	bl MI_CpuCopy8
	ldr r2, [sp]
	ldr r3, [sp, #4]
	mov r12, r2, lsr #5
	mov lr, r3, lsr #5
	orr r12, r12, r3, lsl #27
	ldr r1, [r5, #4]
	mov r0, #7
	and r1, r0, r1, lsr #8
	and r0, r2, #0x1f
	orr r3, r1, r0, lsl #3
	ldr r6, _020CB3E0 ; =nv_result
	ldr r1, _020CB3E4 ; =0x020E9012
	add r0, sp, #0
	mov r2, #4
	strb r3, [r6, #0x11]
	str r12, [sp]
	str lr, [sp, #4]
	bl MI_CpuCopy8
	ldr r2, [sp, #4]
	ldrh r0, [r5, #0x10]
	and r3, r2, #0x3f
	ldr r1, _020CB3E8 ; =0x020E9018
	mov r2, r0, lsl #0x1e
	orr r2, r3, r2, lsr #24
	strb r2, [r6, #0x16]
	mov r3, r0, asr #2
	add r0, r5, #0x12
	mov r2, #2
	strb r3, [r6, #0x17]
	bl MI_CpuCopy8
	mov r0, r4
	add sp, sp, #8
	ldmfd sp!, {r4, r5, r6, pc}
_020CB3DC: .word Wifi
_020CB3E0: .word nv_result
_020CB3E4: .word Wifi+6
_020CB3E8: .word Wifi+12
	arm_func_end DWCi_BACKUPlConvWifiInfo

	arm_func_start DWCi_BACKUPlGetWifi
DWCi_BACKUPlGetWifi: ; 0x020CB3EC
	ldr r0, _020CB3F4 ; =Wifi
	bx lr
_020CB3F4: .word Wifi
	arm_func_end DWCi_BACKUPlGetWifi

	.bss
	.global nv_result
nv_result:
	.space 0x04
	.global nv_cb_occurred
nv_cb_occurred:
	.space 0x04
	.global Address
Address:
	.space 0x04
	.global Wifi
Wifi:
	.space 0x14
	.global Work
Work:
	.space 0x20