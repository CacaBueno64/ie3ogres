
	.include "asm/macros/function.inc"
	.public DWCi_CEINlSet
	.public DWCi_CEINlSetExObj
	.public DWCi_HEAPlAllocEx
	.public DWCi_HEAPlFree_
	.public DWCi_OBJlDelete
	.public DWCi_TSKlDeleteEx
	.public DWCi_TSKlForm
	.public WM_GetAllowedChannel
	.public WM_GetLinkLevel

	.text
	arm_func_start DWCi_ICONlInit
DWCi_ICONlInit: ; 0x020F53F4
	stmfd sp!, {r4, r5, r6, lr}
	ldr r4, _020F5494 ; =0x021161B8
	mov r5, r0
	ldr r0, [r4]
	cmp r0, #0
	ldmnefd sp!, {r4, r5, r6, pc}
	mov r0, #0xc
	mov r1, #4
	bl DWCi_HEAPlAllocEx
	ldr r1, _020F5498 ; =0x02111D0C
	str r0, [r4]
	ldrb r1, [r1, r5, lsl #2]
	mov r6, #0
	strb r5, [r0, #8]
	mov r0, r6
	bl DWCi_CEINlSetExObj
	ldr r1, [r4]
	ldr r12, _020F549C ; =0xFE00FF00
	str r0, [r1]
	ldr r0, [r4]
	ldr r1, _020F54A0 ; =taskRenew
	ldr r5, [r0]
	mov r0, r6
	mov r2, r6
	ldr lr, [r5]
	mov r3, #0x78
	and r12, lr, r12
	orr r12, r12, #0x26
	orr r12, r12, #0xe50000
	str r12, [r5]
	ldr r12, [r4]
	ldr lr, [r12]
	ldrh r12, [lr, #4]
	bic r12, r12, #0xc00
	orr r12, r12, #0x800
	strh r12, [lr, #4]
	bl DWCi_TSKlForm
	ldr r1, [r4]
	str r0, [r1, #4]
	ldmfd sp!, {r4, r5, r6, pc}
_020F5494: .word MemIcon
_020F5498: .word CN_ICON
_020F549C: .word 0xFE00FF00
_020F54A0: .word taskRenew
	arm_func_end DWCi_ICONlInit

	arm_func_start DWCi_ICONlEnd
DWCi_ICONlEnd: ; 0x020F54A4
	stmfd sp!, {r4, lr}
	ldr r4, _020F54DC ; =0x021161B8
	ldr r0, [r4]
	cmp r0, #0
	ldmeqfd sp!, {r4, pc}
	ldr r1, [r0, #4]
	mov r0, #0
	bl DWCi_TSKlDeleteEx
	ldr r0, [r4]
	ldr r0, [r0]
	bl DWCi_OBJlDelete
	ldr r0, _020F54E0 ; =0x021161B8
	bl DWCi_HEAPlFree_
	ldmfd sp!, {r4, pc}
_020F54DC: .word MemIcon
_020F54E0: .word MemIcon
	arm_func_end DWCi_ICONlEnd

	arm_static_func_start taskRenew
taskRenew: ; 0x020F54E4
	stmfd sp!, {r4, r5, r6, lr}
	ldr r0, _020F5578 ; =0x04000208
	mov r4, #0
	ldrh r6, [r0]
	strh r4, [r0]
	bl WM_GetAllowedChannel
	cmp r0, #0x8000
	beq _020F550C
	bl WM_GetLinkLevel
	mov r4, r0
_020F550C:
	ldr r2, _020F5578 ; =0x04000208
	ldr r5, _020F557C ; =0x021161B8
	ldrh r0, [r2]
	ldr r1, _020F5580 ; =0x02111D0C
	mov r0, #0
	strh r6, [r2]
	ldr r2, [r5]
	ldrsb r3, [r2, #8]
	ldr r2, [r2]
	add r1, r1, r3, lsl #2
	ldrb r1, [r4, r1]
	bl DWCi_CEINlSet
	ldr r1, [r5]
	ldr r0, _020F5584 ; =0xFE00FF00
	ldr r2, [r1]
	ldr r1, [r2]
	and r0, r1, r0
	orr r0, r0, #0x26
	orr r0, r0, #0xe50000
	str r0, [r2]
	ldr r0, [r5]
	ldr r1, [r0]
	ldrh r0, [r1, #4]
	bic r0, r0, #0xc00
	orr r0, r0, #0x800
	strh r0, [r1, #4]
	ldmfd sp!, {r4, r5, r6, pc}
_020F5578: .word 0x04000208
_020F557C: .word MemIcon
_020F5580: .word CN_ICON
_020F5584: .word 0xFE00FF00
	arm_func_end taskRenew

	.rodata
C_ICON:
	.byte 0xE5, 0x00, 0x26, 0x00
CN_ICON:
	.byte 0x18, 0x17, 0x16, 0x15, 0x5F, 0x5E, 0x5D, 0x5C

	.bss
MemIcon:
	.space 0x04
