
	.include "asm/macros/function.inc"
	.public DC_InvalidateRange
	.public DWCi_HEAPlAllocEx
	.public DWCi_HEAPlFree_
	.public DWCi_TSKlDelete
	.public DWCi_TSKlDeleteEx
	.public DWCi_TSKlForm
	.public MI_CpuCopy8
	.public OS_GetOwnerInfo
	.public OS_GetTick
	.public OS_Terminate
	.public WM_End
	.public WM_GetDispersionScanPeriod
	.public WM_Initialize
	.public WM_ReadStatus
	.public WM_Reset
	.public WM_StartScanEx
	.public memcmp

	.text
	arm_func_start DWCi_USBAPlBegin
DWCi_USBAPlBegin: ; 0x021087D8
	stmfd sp!, {r4, r5, lr}
	sub sp, sp, #0x54
	mov r4, r0
	ldr r0, _02108930 ; =0x00001BA0
	mov r1, #0x20
	bl DWCi_HEAPlAllocEx
	ldr r5, _02108934 ; =0x021162B4
	add r1, r0, #0x1000
	str r0, [r5]
	str r4, [r1, #0x370]
	bl OS_GetTick
	ldr r3, [r5]
	mov r2, #3
	add r3, r3, #0x1000
	str r0, [r3, #0xb88]
	str r1, [r3, #0xb8c]
	ldr r0, [r5]
	ldr r1, _02108938 ; =cbWm
	bl WM_Initialize
	cmp r0, #2
	bne _0210891C
_0210882C:
	ldr r0, [r5]
	add r0, r0, #0x3b8
	add r0, r0, #0x1000
	bl WM_ReadStatus
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
	bl WM_GetDispersionScanPeriod
	ldr r5, _02108934 ; =0x021162B4
	ldr r1, [r5]
	add r1, r1, #0x1300
	strh r0, [r1, #0x7c]
	add r0, sp, #0
	bl OS_GetOwnerInfo
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
	bl startScan
	cmp r0, #0
	beq _0210891C
	mov r0, #0
	ldr r1, _02108944 ; =taskFirst
	mov r2, r0
	mov r3, #0x78
	bl DWCi_TSKlForm
	ldr r1, [r5]
	add sp, sp, #0x54
	add r1, r1, #0x1000
	str r0, [r1, #0xb90]
	mov r0, r4
	ldmfd sp!, {r4, r5, pc}
_0210891C:
	ldr r0, _02108948 ; =0x021162B4
	bl DWCi_HEAPlFree_
	mov r0, #0
	add sp, sp, #0x54
	ldmfd sp!, {r4, r5, pc}
_02108930: .word 0x00001BA0
_02108934: .word MemUsb
_02108938: .word cbWm
_0210893C: .word SCAN_PRM
_02108940: .word USBAP_SSID
_02108944: .word taskFirst
_02108948: .word MemUsb
	arm_func_end DWCi_USBAPlBegin

	arm_static_func_start startScan
startScan: ; 0x0210894C
	stmfd sp!, {r3, lr}
	ldr r1, _02108978 ; =0x021162B4
	ldr r0, _0210897C ; =cbWm
	ldr r1, [r1]
	add r1, r1, #0x374
	add r1, r1, #0x1000
	bl WM_StartScanEx
	cmp r0, #2
	moveq r0, #1
	movne r0, #0
	ldmfd sp!, {r3, pc}
_02108978: .word MemUsb
_0210897C: .word cbWm
	arm_func_end startScan

	arm_func_start DWCi_USBAPlEnd
DWCi_USBAPlEnd: ; 0x02108980
	stmfd sp!, {r4, lr}
	ldr r4, _02108A50 ; =0x021162B4
	mov r1, #1
	ldr r0, [r4]
	add r0, r0, #0x1000
	strb r1, [r0, #0xb94]
	ldr r0, [r4]
	add r0, r0, #0x3b8
	add r0, r0, #0x1000
	bl WM_ReadStatus
	ldr r0, [r4]
	add r0, r0, #0x1300
	ldrh r0, [r0, #0xb8]
	cmp r0, #2
	beq _021089F4
	ldr r0, _02108A54 ; =cbWm
	bl WM_Reset
	cmp r0, #2
	movne r0, #0
	ldmnefd sp!, {r4, pc}
_021089D0:
	ldr r0, [r4]
	add r0, r0, #0x3b8
	add r0, r0, #0x1000
	bl WM_ReadStatus
	ldr r0, [r4]
	add r0, r0, #0x1300
	ldrh r0, [r0, #0xb8]
	cmp r0, #2
	bne _021089D0
_021089F4:
	ldr r0, _02108A54 ; =cbWm
	bl WM_End
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
	bl DWCi_TSKlDeleteEx
_02108A28:
	ldr r0, _02108A50 ; =0x021162B4
	ldr r0, [r0]
	add r0, r0, #0x1000
_02108A34:
	ldrb r1, [r0, #0xb94]
	cmp r1, #2
	bne _02108A34
	ldr r0, _02108A58 ; =0x021162B4
	bl DWCi_HEAPlFree_
	mov r0, #1
	ldmfd sp!, {r4, pc}
_02108A50: .word MemUsb
_02108A54: .word cbWm
_02108A58: .word MemUsb
	arm_func_end DWCi_USBAPlEnd

	arm_func_start DWCi_USBAPlSetCallback
DWCi_USBAPlSetCallback: ; 0x02108A5C
	ldr r1, _02108A70 ; =0x021162B4
	ldr r1, [r1]
	add r1, r1, #0x1000
	str r0, [r1, #0x370]
	bx lr
_02108A70: .word MemUsb
	arm_func_end DWCi_USBAPlSetCallback

	arm_static_func_start cbWm
cbWm: ; 0x02108A74
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
	bl scanWait
	b _02108AEC
_02108AE8:
	bl scanFirst
_02108AEC:
	bl startScan
	ldmfd sp!, {r3, pc}
_02108AF4:
	bl startScan
	ldmfd sp!, {r3, pc}
_02108AFC:
	bl OS_Terminate
	ldmfd sp!, {r3, pc}
_02108B04: .word MemUsb
	arm_func_end cbWm

	arm_static_func_start scanFirst
scanFirst: ; 0x02108B08
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
	bl memcmp
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
	bl memcmp
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
	bl memcmp
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
_02108C54: .word USBAP_SSID
_02108C58: .word MemUsb
_02108C5C: .word ESSID_EMPTY
	arm_func_end scanFirst

	arm_static_func_start scanWait
scanWait: ; 0x02108C60
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
	bl memcmp
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
	bl memcmp
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
_02108D64: .word MemUsb
_02108D68: .word USBAP_SSID
	arm_func_end scanWait

	arm_static_func_start taskFirst
taskFirst: ; 0x02108D6C
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, lr}
	str r0, [sp]
	bl OS_GetTick
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
	bl memcmp
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
	bl DWCi_TSKlDelete
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_02108E90: .word MemUsb
_02108E94: .word 0x0017F898
_02108E98: .word ESSID_EMPTY
	arm_func_end taskFirst

	.rodata
ESSID_EMPTY:
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
USBAP_SSID:
	.byte 0x4E, 0x57, 0x43, 0x55, 0x53, 0x42
	.byte 0x41, 0x50, 0x00, 0x00
SCAN_PRM:
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x04, 0xFF, 0x3F, 0x00, 0x00, 0xFF, 0xFF
	.byte 0xFF, 0xFF, 0xFF, 0xFF, 0x02, 0x00, 0x20, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x08, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00

	.bss
MemUsb:
	.space 0x04
