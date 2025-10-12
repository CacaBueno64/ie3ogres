
	.include "asm/macros/function.inc"
	.public DWC_Alloc
	.public DWC_Auth_CheckWiFiIDNeedCreate
	.public DWC_BM_Init
	.public DWC_Free
	.public DWCi_AUTH_MakeWiFiID
	.public DWCi_Auth_InitInterface
	.public DWCi_SetMemFunc
	.public OS_InitAlarm
	.public OS_InitTick
	.public OSi_ReferSymbol
	.public RTC_Init
	.public _version_NINTENDO_DWC

	.text
	arm_func_start DWC_InitForProduction
DWC_InitForProduction: ; 0x020CC2D0
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	mov r7, r0
	ldr r0, _020CC308 ; =_version_NINTENDO_DWC
	mov r6, r1
	mov r5, r2
	mov r4, r3
	bl OSi_ReferSymbol
	mov r1, r7
	mov r2, r6
	mov r3, r5
	mov r0, #1
	str r4, [sp]
	bl DWCi_Init
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_020CC308: .word _version_NINTENDO_DWC
	arm_func_end DWC_InitForProduction

	arm_static_func_start DWCi_Init
DWCi_Init: ; 0x020CC30C
	stmfd sp!, {r4, r5, r6, r7, r8, r9, r10, lr}
	ldr r1, [sp, #0x20]
	mov r10, r0
	mov r0, r3
	mov r9, r2
	mov r7, #0
	bl DWCi_SetMemFunc
	bl OS_InitTick
	bl OS_InitAlarm
	bl RTC_Init
	mov r0, #2
	mov r1, #0x700
	bl DWC_Alloc
	movs r8, r0
	moveq r0, #4
	ldmeqfd sp!, {r4, r5, r6, r7, r8, r9, r10, pc}
	bl DWC_BM_Init
	mov r5, r0
	bl DWC_Auth_CheckWiFiIDNeedCreate
	cmp r0, #0
	beq _020CC36C
	mov r0, r8
	bl DWCi_AUTH_MakeWiFiID
	mov r7, #1
_020CC36C:
	mov r6, #2
	mov r4, #0
	mov r0, r6
	mov r1, r8
	mov r2, r4
	bl DWC_Free
	cmp r5, #0
	bge _020CC398
	cmp r7, #0
	moveq r6, #3
	b _020CC3A4
_020CC398:
	mov r6, #1
	cmp r7, #0
	moveq r6, r4
_020CC3A4:
	mov r0, r10
	bl DWCi_Auth_InitInterface
	ldr r1, _020CC3C4 ; =dwci_gamecode
	mov r0, #1
	str r9, [r1]
	bl DWCi_Np_SetInitFlag
	mov r0, r6
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, pc}
_020CC3C4: .word dwci_gamecode
	arm_func_end DWCi_Init

	arm_func_start DWCi_Np_SetInitFlag
DWCi_Np_SetInitFlag: ; 0x020CC3C8
	ldr r1, _020CC3D4 ; =dwci_gamecode
	str r0, [r1, #4]
	bx lr
_020CC3D4: .word dwci_gamecode
	arm_func_end DWCi_Np_SetInitFlag

	.bss
	.global dwci_gamecode
dwci_gamecode:
	.space 0x04
	.global s_initialized
s_initialized:
	.space 0x04
