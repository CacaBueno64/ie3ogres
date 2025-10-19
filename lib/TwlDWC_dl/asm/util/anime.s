
	.include "asm/macros/function.inc"
	.public DWCi_CEINlSet
	.public DWCi_CEINlSetExObj
	.public DWCi_HEAPlAllocEx
	.public DWCi_HEAPlFree_
	.public DWCi_OBJlDelete
	.public DWCi_TSKlDeleteEx
	.public DWCi_TSKlForm
	.public FX_DivS32
	.public FX_ModS32

	.text
	arm_func_start DWCi_ANIMElInitEx
DWCi_ANIMElInitEx: ; 0x020F44D0
	stmfd sp!, {r4, r5, r6, lr}
	mov r6, r0
	mov r0, #0xc
	mov r1, #4
	bl DWCi_HEAPlAllocEx
	ldr r5, _020F458C ; =MemAni
	mov r4, #0
	str r0, [r5]
	strb r6, [r0, #8]
	mov r0, r4
	mov r1, #0x47
	bl DWCi_CEINlSetExObj
	ldr r2, [r5]
	ldr r1, _020F4590 ; =PLT_ANIME
	str r0, [r2, #4]
	ldr r0, [r5]
	ldrb lr, [r1, r6]
	ldr r6, [r0, #4]
	ldr r12, _020F4594 ; =0xFE00FF00
	mov r2, r4
	ldrh r3, [r6, #4]
	mov r0, #1
	ldr r1, _020F4598 ; =taskAnime
	bic r3, r3, #0xc00
	orr r3, r3, #0x400
	strh r3, [r6, #4]
	ldr r4, [r5]
	mov r3, #0x78
	ldr r6, [r4, #4]
	ldr r4, [r6]
	bic r4, r4, #0xc00
	str r4, [r6]
	ldrh r4, [r6, #4]
	bic r4, r4, #0xf000
	orr r4, r4, lr, lsl #12
	strh r4, [r6, #4]
	ldr r4, [r5]
	ldr lr, [r4, #4]
	ldr r4, [lr]
	and r4, r4, r12
	orr r4, r4, #0x8b
	orr r4, r4, #0xe60000
	str r4, [lr]
	bl DWCi_TSKlForm
	ldr r1, [r5]
	str r0, [r1]
	ldmfd sp!, {r4, r5, r6, pc}
_020F458C: .word MemAni
_020F4590: .word PLT_ANIME
_020F4594: .word 0xFE00FF00
_020F4598: .word taskAnime
	arm_func_end DWCi_ANIMElInitEx

	arm_func_start DWCi_ANIMElEnd
DWCi_ANIMElEnd: ; 0x020F459C
	stmfd sp!, {r4, lr}
	ldr r4, _020F45CC ; =MemAni
	mov r0, #1
	ldr r1, [r4]
	ldr r1, [r1]
	bl DWCi_TSKlDeleteEx
	ldr r0, [r4]
	ldr r0, [r0, #4]
	bl DWCi_OBJlDelete
	ldr r0, _020F45D0 ; =MemAni
	bl DWCi_HEAPlFree_
	ldmfd sp!, {r4, pc}
_020F45CC: .word MemAni
_020F45D0: .word MemAni
	arm_func_end DWCi_ANIMElEnd

	arm_static_func_start taskAnime
taskAnime: ; 0x020F45D4
	stmfd sp!, {r4, lr}
	ldr r4, _020F4688 ; =MemAni
	mov r1, #0x28
	ldr r0, [r4]
	ldrb r0, [r0, #9]
	add r0, r0, #1
	bl FX_ModS32
	ldr r2, [r4]
	mov r1, #5
	strb r0, [r2, #9]
	ldr r0, [r4]
	ldrb r0, [r0, #9]
	bl FX_DivS32
	ldr r2, [r4]
	add r1, r0, #0x47
	ldr r2, [r2, #4]
	mov r0, #0
	bl DWCi_CEINlSet
	ldr r0, [r4]
	ldr r3, _020F468C ; =PLT_ANIME
	ldr r2, [r0, #4]
	ldr r0, _020F4690 ; =0xFE00FF00
	ldrh r1, [r2, #4]
	bic r1, r1, #0xc00
	orr r1, r1, #0x400
	strh r1, [r2, #4]
	ldr r1, [r4]
	ldrb r12, [r1, #8]
	ldr r2, [r1, #4]
	ldr r1, [r2]
	ldrb r3, [r3, r12]
	bic r1, r1, #0xc00
	str r1, [r2]
	ldrh r1, [r2, #4]
	bic r1, r1, #0xf000
	orr r1, r1, r3, lsl #12
	strh r1, [r2, #4]
	ldr r1, [r4]
	ldr r2, [r1, #4]
	ldr r1, [r2]
	and r0, r1, r0
	orr r0, r0, #0x8b
	orr r0, r0, #0xe60000
	str r0, [r2]
	ldmfd sp!, {r4, pc}
_020F4688: .word MemAni
_020F468C: .word PLT_ANIME
_020F4690: .word 0xFE00FF00
	arm_func_end taskAnime

	.rodata
PLT_ANIME:
	.byte 0x0E, 0x04, 0x05, 0x00
C_ANIME:
	.byte 0xE6, 0x00, 0x8B, 0x00

	.bss
MemAni:
	.space 0x04
