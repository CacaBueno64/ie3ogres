
	.include "asm/macros/function.inc"
	.public DWCi_CEINlSet
	.public DWCi_CEINlSetExCell
	.public DWCi_CEINlSetExObj
	.public DWCi_CELLlDelete
	.public DWCi_CELLlForm
	.public DWCi_CELLlGetObj
	.public DWCi_CELLlGetPosition
	.public DWCi_CELLlSetEffect
	.public DWCi_CELLlSetPalette
	.public DWCi_CELLlSetPosition
	.public DWCi_CELLlSetPriority
	.public DWCi_Coord2Rect
	.public DWCi_FNTlDelete
	.public DWCi_FNTlDisp
	.public DWCi_FNTlDrawRect
	.public DWCi_FNTlFormEx
	.public DWCi_HEAPlAllocEx
	.public DWCi_HEAPlFree_
	.public DWCi_IPTlCheckRelease
	.public DWCi_IPTlCheckRepeat
	.public DWCi_IPTlCheckTrigger
	.public DWCi_OBJlDelete
	.public DWCi_R_SCR
	.public DWCi_SNDlPlay
	.public DWCi_TPlCheck
	.public DWCi_TPlCheckRelease
	.public DWCi_TPlCheckTrigger
	.public DWCi_TSKlChangeFunc
	.public DWCi_TSKlDelete
	.public DWCi_TSKlForm

	.text
	arm_func_start DWCi_KB10lInit
DWCi_KB10lInit: ; 0x020F7040
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, lr}
	sub sp, sp, #0x20
	ldr r0, _020F7344 ; =0x021120DC
	mov r3, #0x1c
	ldrh r5, [r0]
	ldrh r4, [r0, #2]
	mov r2, #0x14
	mov r0, #0x6c
	mov r1, #4
	strh r5, [sp, #0x18]
	strh r4, [sp, #0x1a]
	strh r3, [sp, #0x1c]
	strh r2, [sp, #0x1e]
	bl DWCi_HEAPlAllocEx
	ldr r8, _020F7348 ; =0x021161C0
	mov r5, #0
	mov r1, #0x1f
	str r0, [r8]
	strb r1, [r0, #0x60]
	ldr r0, [r8]
	mov r1, #1
	strb r5, [r0, #0x63]
	ldr r0, [r8]
	ldr r7, _020F734C ; =0xC1FFFCFF
	strb r1, [r0, #0x66]
	ldr r0, [r8]
	mov r6, r5
	strb r1, [r0, #0x67]
	ldr r0, [r8]
	mov r4, #0x36
	strb r1, [r0, #0x68]
_020F70BC:
	mov r0, r6
	mov r1, r4
	bl DWCi_CEINlSetExObj
	ldr r1, [r8]
	add r1, r1, r5, lsl #2
	str r0, [r1, #0x10]
	ldr r0, [r8]
	add r0, r0, r5, lsl #2
	ldr r1, [r0, #0x10]
	ldr r0, [r1]
	and r0, r0, r7
	orr r0, r0, #0x200
	str r0, [r1]
	ldr r0, [r8]
	add r0, r0, r5, lsl #2
	ldr r1, [r0, #0x10]
	add r5, r5, #1
	ldrh r0, [r1, #4]
	cmp r5, #0xa
	bic r0, r0, #0xc00
	orr r0, r0, #0xc00
	strh r0, [r1, #4]
	blt _020F70BC
	ldr r4, _020F7350 ; =0x02111FDA
	ldr r7, _020F7348 ; =0x021161C0
	ldr r5, _020F734C ; =0xC1FFFCFF
	mov r9, #0
_020F7128:
	ldrb r1, [r4, r6]
	mov r0, r9
	bl DWCi_CEINlSetExObj
	ldr r1, [r7]
	add r1, r1, r6, lsl #2
	str r0, [r1, #0x38]
	ldr r0, [r7]
	add r0, r0, r6, lsl #2
	ldr r1, [r0, #0x38]
	ldr r0, [r1]
	and r0, r0, r5
	orr r0, r0, #0x200
	str r0, [r1]
	ldr r0, [r7]
	add r0, r0, r6, lsl #2
	ldr r1, [r0, #0x38]
	add r6, r6, #1
	ldrh r0, [r1, #4]
	cmp r6, #2
	bic r0, r0, #0xc00
	orr r0, r0, #0xc00
	strh r0, [r1, #4]
	blt _020F7128
	ldr r8, _020F7354 ; =0x02111FDC
	ldr r4, _020F7348 ; =0x021161C0
	mov r10, #0
	mov r7, #1
	mvn r6, #0
	mov r5, #0x200
	mov r11, #3
_020F71A0:
	ldrb r1, [r8, r9]
	mov r0, r10
	mov r2, r7
	bl DWCi_CEINlSetExCell
	ldr r2, [r4]
	mov r1, r6
	add r2, r2, r9, lsl #2
	str r0, [r2, #0x40]
	ldr r0, [r4]
	mov r2, r5
	add r0, r0, r9, lsl #2
	ldr r0, [r0, #0x40]
	mov r3, r10
	bl DWCi_CELLlSetEffect
	ldr r0, [r4]
	mov r1, r6
	add r0, r0, r9, lsl #2
	ldr r0, [r0, #0x40]
	mov r2, r11
	bl DWCi_CELLlSetPriority
	add r9, r9, #1
	cmp r9, #2
	blt _020F71A0
	ldr r4, _020F7348 ; =0x021161C0
	strh r10, [sp, #0x12]
_020F7204:
	add r0, sp, #0x14
	mov r9, #0
	str r0, [sp]
	mov r0, r9
	mov r3, r9
	mov r1, #0xc
	mov r2, #4
	str r9, [sp, #4]
	bl DWCi_FNTlFormEx
	ldr r1, [r4]
	ldr r7, _020F7358 ; =0x02112012
	strh r9, [sp, #0x18]
	str r0, [r1, r10, lsl #2]
	add r8, r10, r10, lsl #1
	mov r6, #2
	mov r5, #0x480
	add r11, sp, #0x10
_020F7248:
	mov r0, r8, lsl #1
	ldrh r2, [r7, r0]
	ldrh r0, [sp, #0x1e]
	ldrh r1, [sp, #0x18]
	strh r2, [sp, #0x10]
	stmia sp, {r0, r6}
	str r5, [sp, #8]
	str r11, [sp, #0xc]
	ldr r0, [r4]
	ldrh r2, [sp, #0x1a]
	ldrh r3, [sp, #0x1c]
	ldr r0, [r0, r10, lsl #2]
	bl DWCi_FNTlDrawRect
	ldrh r0, [sp, #0x18]
	add r9, r9, #1
	cmp r9, #3
	add r0, r0, #0x20
	strh r0, [sp, #0x18]
	add r8, r8, #1
	blt _020F7248
	mov r5, #0
	ldr r1, [sp, #0x14]
	mov r0, r5
	mov r2, r5
	bl DWCi_CELLlForm
	ldr r7, _020F7348 ; =0x021161C0
	ldr r1, [r7]
	add r1, r1, r10, lsl #2
	add r10, r10, #1
	str r0, [r1, #0x48]
	cmp r10, #4
	blt _020F7204
	mov r4, #1
	mov r0, r5
	mov r2, r4
	mov r1, #0x44
	bl DWCi_CEINlSetExCell
	ldr r1, [r7]
	sub r4, r4, #2
	str r0, [r1, #0x58]
	ldr r0, [r7]
	mov r1, r4
	ldr r0, [r0, #0x58]
	mov r3, r5
	mov r2, #0x200
	bl DWCi_CELLlSetEffect
	ldr r0, [r7]
	mov r1, r4
	ldr r0, [r0, #0x58]
	mov r2, r6
	bl DWCi_CELLlSetPriority
	mov r0, r5
	ldr r1, _020F735C ; =taskStart0
	mov r2, r5
	mov r3, #0x78
	bl DWCi_TSKlForm
	ldr r2, [r7]
	mov r1, #0xc0
	str r0, [r2, #0x5c]
	mov r0, r5
	bl disp
	add sp, sp, #0x20
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_020F7344: .word ov17_021120DC
_020F7348: .word MemKb10
_020F734C: .word 0xC1FFFCFF
_020F7350: .word CN_SKEY
_020F7354: .word CN_BTN
_020F7358: .word KEY_CHR
_020F735C: .word taskStart0
	arm_func_end DWCi_KB10lInit

	arm_func_start DWCi_KB10lEnd
DWCi_KB10lEnd: ; 0x020F7360
	stmfd sp!, {r4, lr}
	ldr r4, _020F7388 ; =0x021161C0
	ldr r0, [r4]
	ldr r0, [r0, #0x58]
	bl DWCi_CELLlDelete
	ldr r0, [r4]
	ldr r1, _020F738C ; =taskEnd0
	ldr r0, [r0, #0x5c]
	bl DWCi_TSKlChangeFunc
	ldmfd sp!, {r4, pc}
_020F7388: .word MemKb10
_020F738C: .word taskEnd0
	arm_func_end DWCi_KB10lEnd

	arm_func_start DWCi_KB10lGet
DWCi_KB10lGet: ; 0x020F7390
	ldr r0, _020F73A0 ; =0x021161C0
	ldr r0, [r0]
	ldrb r0, [r0, #0x60]
	bx lr
_020F73A0: .word MemKb10
	arm_func_end DWCi_KB10lGet

	arm_func_start DWCi_KB10lSetErase
DWCi_KB10lSetErase: ; 0x020F73A4
	ldr r1, _020F73B4 ; =0x021161C0
	ldr r1, [r1]
	strb r0, [r1, #0x66]
	bx lr
_020F73B4: .word MemKb10
	arm_func_end DWCi_KB10lSetErase

	arm_func_start DWCi_KB10lSetInput
DWCi_KB10lSetInput: ; 0x020F73B8
	ldr r1, _020F73C8 ; =0x021161C0
	ldr r1, [r1]
	strb r0, [r1, #0x67]
	bx lr
_020F73C8: .word MemKb10
	arm_func_end DWCi_KB10lSetInput

	arm_func_start DWCi_KB10lSetShift
DWCi_KB10lSetShift: ; 0x020F73CC
	ldr r1, _020F73DC ; =0x021161C0
	ldr r1, [r1]
	strb r0, [r1, #0x68]
	bx lr
_020F73DC: .word MemKb10
	arm_func_end DWCi_KB10lSetShift

	arm_func_start DWCi_KB10lIsInit
DWCi_KB10lIsInit: ; 0x020F73E0
	ldr r0, _020F73F8 ; =0x021161C0
	ldr r0, [r0]
	cmp r0, #0
	movne r0, #1
	moveq r0, #0
	bx lr
_020F73F8: .word MemKb10
	arm_func_end DWCi_KB10lIsInit

	arm_static_func_start taskStart0
taskStart0: ; 0x020F73FC
	stmfd sp!, {r4, lr}
	sub sp, sp, #8
	ldr r1, _020F7460 ; =0x021161C0
	mov r4, r0
	ldr r0, [r1]
	ldr r0, [r0, #0x10]
	ldr r0, [r0]
	and r0, r0, #0xff
	sub r1, r0, #0xc
	cmp r1, #0x4c
	mov r0, #0
	ble _020F7438
	bl disp
	add sp, sp, #8
	ldmfd sp!, {r4, pc}
_020F7438:
	mov r1, #0x4c
	bl disp
	mov r0, #1
	mov r1, #0xc0
	bl disp
	ldr r1, _020F7464 ; =taskStart1
	mov r0, r4
	bl DWCi_TSKlChangeFunc
	add sp, sp, #8
	ldmfd sp!, {r4, pc}
_020F7460: .word MemKb10
_020F7464: .word taskStart1
	arm_func_end taskStart0

	arm_static_func_start taskStart1
taskStart1: ; 0x020F7468
	stmfd sp!, {r4, lr}
	sub sp, sp, #8
	ldr r1, _020F74CC ; =0x021161C0
	mov r4, r0
	ldr r0, [r1]
	ldr r0, [r0, #0x1c]
	ldr r0, [r0]
	and r0, r0, #0xff
	sub r1, r0, #0xc
	cmp r1, #0x63
	mov r0, #1
	ble _020F74A4
	bl disp
	add sp, sp, #8
	ldmfd sp!, {r4, pc}
_020F74A4:
	mov r1, #0x63
	bl disp
	mov r0, #2
	mov r1, #0xc0
	bl disp
	ldr r1, _020F74D0 ; =taskStart2
	mov r0, r4
	bl DWCi_TSKlChangeFunc
	add sp, sp, #8
	ldmfd sp!, {r4, pc}
_020F74CC: .word MemKb10
_020F74D0: .word taskStart2
	arm_func_end taskStart1

	arm_static_func_start taskStart2
taskStart2: ; 0x020F74D4
	stmfd sp!, {r4, lr}
	sub sp, sp, #8
	ldr r1, _020F7538 ; =0x021161C0
	mov r4, r0
	ldr r0, [r1]
	ldr r0, [r0, #0x28]
	ldr r0, [r0]
	and r0, r0, #0xff
	sub r1, r0, #0xc
	cmp r1, #0x7a
	mov r0, #2
	ble _020F7510
	bl disp
	add sp, sp, #8
	ldmfd sp!, {r4, pc}
_020F7510:
	mov r1, #0x7a
	bl disp
	mov r0, #3
	mov r1, #0xc0
	bl disp
	ldr r1, _020F753C ; =taskStart3
	mov r0, r4
	bl DWCi_TSKlChangeFunc
	add sp, sp, #8
	ldmfd sp!, {r4, pc}
_020F7538: .word MemKb10
_020F753C: .word taskStart3
	arm_func_end taskStart2

	arm_static_func_start taskStart3
taskStart3: ; 0x020F7540
	stmfd sp!, {r4, lr}
	sub sp, sp, #8
	ldr r1, _020F75A4 ; =0x021161C0
	mov r4, r0
	ldr r0, [r1]
	ldr r0, [r0, #0x34]
	ldr r0, [r0]
	and r0, r0, #0xff
	sub r1, r0, #0xc
	cmp r1, #0x91
	mov r0, #3
	ble _020F757C
	bl disp
	add sp, sp, #8
	ldmfd sp!, {r4, pc}
_020F757C:
	mov r1, #0x91
	bl disp
	mov r0, #4
	mov r1, #0xc0
	bl disp
	ldr r1, _020F75A8 ; =taskStart4
	mov r0, r4
	bl DWCi_TSKlChangeFunc
	add sp, sp, #8
	ldmfd sp!, {r4, pc}
_020F75A4: .word MemKb10
_020F75A8: .word taskStart4
	arm_func_end taskStart3

	arm_static_func_start taskStart4
taskStart4: ; 0x020F75AC
	stmfd sp!, {r4, lr}
	sub sp, sp, #8
	ldr r1, _020F7618 ; =0x021161C0
	mov r4, r0
	ldr r0, [r1]
	add r2, sp, #4
	ldr r0, [r0, #0x40]
	add r3, sp, #0
	mov r1, #0
	bl DWCi_CELLlGetPosition
	ldr r0, [sp]
	sub r1, r0, #0xc
	str r1, [sp]
	cmp r1, #0xaa
	mov r0, #4
	ble _020F75F8
	bl disp
	add sp, sp, #8
	ldmfd sp!, {r4, pc}
_020F75F8:
	mov r1, #0xaa
	bl disp
	bl dispFocus
	ldr r1, _020F761C ; =taskMain
	mov r0, r4
	bl DWCi_TSKlChangeFunc
	add sp, sp, #8
	ldmfd sp!, {r4, pc}
_020F7618: .word MemKb10
_020F761C: .word taskMain
	arm_func_end taskStart4

	arm_static_func_start taskMain
taskMain: ; 0x020F7620
	stmfd sp!, {r3, lr}
	bl touchTrigger
	bl touchRelease
	bl touch
	bl key
	ldmfd sp!, {r3, pc}
	arm_func_end taskMain

	arm_static_func_start touchTrigger
touchTrigger: ; 0x020F7638
	stmfd sp!, {r4, r5, r6, r7, r8, lr}
	sub sp, sp, #8
	ldr r0, _020F77C8 ; =0x021126F8
	ldr r5, _020F77CC ; =0x021161C0
	bl DWCi_TPlCheckTrigger
	cmp r0, #0
	addeq sp, sp, #8
	ldmeqfd sp!, {r4, r5, r6, r7, r8, pc}
	ldr r0, [r5]
	mvn r1, #0
	ldr r8, _020F77D0 ; =0x0211202C
	ldr r7, _020F77D4 ; =0x02111FE6
	strb r1, [r0, #0x61]
	mov r4, #0
	add r6, sp, #0
_020F7674:
	mov r1, r7
	mov r2, r6
	add r0, r8, r4, lsl #2
	bl DWCi_Coord2Rect
	mov r0, r6
	bl DWCi_TPlCheckTrigger
	cmp r0, #0
	beq _020F76CC
	ldr r0, [r5]
	ldrb r0, [r0, #0x67]
	cmp r0, #0
	bne _020F76B4
	mov r0, #9
	bl DWCi_SNDlPlay
	add sp, sp, #8
	ldmfd sp!, {r4, r5, r6, r7, r8, pc}
_020F76B4:
	mov r0, #0
	bl DWCi_SNDlPlay
	ldr r0, [r5]
	add sp, sp, #8
	strb r4, [r0, #0x61]
	ldmfd sp!, {r4, r5, r6, r7, r8, pc}
_020F76CC:
	add r4, r4, #1
	cmp r4, #0xa
	blt _020F7674
	ldr r8, _020F77D8 ; =0x02111FF6
	ldr r7, _020F77DC ; =0x02111FEE
	mov r4, #0
	add r6, sp, #0
_020F76E8:
	mov r1, r7
	mov r2, r6
	add r0, r8, r4, lsl #2
	bl DWCi_Coord2Rect
	mov r0, r6
	bl DWCi_TPlCheckTrigger
	cmp r0, #0
	beq _020F775C
	cmp r4, #0
	ldreq r0, [r5]
	ldreqb r0, [r0, #0x66]
	cmpeq r0, #0
	beq _020F7730
	cmp r4, #1
	ldreq r0, [r5]
	ldreqb r0, [r0, #0x68]
	cmpeq r0, #0
	bne _020F7740
_020F7730:
	mov r0, #9
	bl DWCi_SNDlPlay
	add sp, sp, #8
	ldmfd sp!, {r4, r5, r6, r7, r8, pc}
_020F7740:
	mov r0, #0
	bl DWCi_SNDlPlay
	ldr r0, [r5]
	add r1, r4, #0xa
	strb r1, [r0, #0x61]
	add sp, sp, #8
	ldmfd sp!, {r4, r5, r6, r7, r8, pc}
_020F775C:
	add r4, r4, #1
	cmp r4, #2
	blt _020F76E8
	ldr r7, _020F77E0 ; =0x02111FFE
	ldr r6, _020F77E4 ; =0x02111FF2
	mov r8, #0
	add r4, sp, #0
_020F7778:
	mov r1, r6
	mov r2, r4
	add r0, r7, r8, lsl #2
	bl DWCi_Coord2Rect
	mov r0, r4
	bl DWCi_TPlCheckTrigger
	cmp r0, #0
	beq _020F77B4
	mov r0, #0
	bl DWCi_SNDlPlay
	ldr r0, [r5]
	add r1, r8, #0xc
	strb r1, [r0, #0x61]
	add sp, sp, #8
	ldmfd sp!, {r4, r5, r6, r7, r8, pc}
_020F77B4:
	add r8, r8, #1
	cmp r8, #2
	blt _020F7778
	add sp, sp, #8
	ldmfd sp!, {r4, r5, r6, r7, r8, pc}
_020F77C8: .word DWCi_R_SCR
_020F77CC: .word MemKb10
_020F77D0: .word C_KEY
_020F77D4: .word S_KEY
_020F77D8: .word C_SKEY
_020F77DC: .word S_SKEY
_020F77E0: .word C_BTN
_020F77E4: .word S_BTN
	arm_func_end touchTrigger

	arm_static_func_start touchRelease
touchRelease: ; 0x020F77E8
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	sub sp, sp, #8
	ldr r1, _020F797C ; =0x021161C0
	ldr r0, _020F7980 ; =0x021126F8
	ldr r1, [r1]
	mov r4, #0
	strb r4, [r1, #0x60]
	bl DWCi_TPlCheckRelease
	cmp r0, #0
	addeq sp, sp, #8
	ldmeqfd sp!, {r3, r4, r5, r6, r7, pc}
	ldr r7, _020F7984 ; =0x0211202C
	ldr r6, _020F7988 ; =0x02111FE6
	add r5, sp, #0
_020F7820:
	mov r1, r6
	mov r2, r5
	add r0, r7, r4, lsl #2
	bl DWCi_Coord2Rect
	mov r0, r5
	bl DWCi_TPlCheckRelease
	cmp r0, #0
	beq _020F7878
	ldr r0, _020F797C ; =0x021161C0
	ldr r2, [r0]
	ldrsb r1, [r2, #0x61]
	cmp r1, r4
	addne sp, sp, #8
	ldmnefd sp!, {r3, r4, r5, r6, r7, pc}
	ldr r1, _020F798C ; =0x02112006
	ldrb r1, [r1, r4]
	strb r1, [r2, #0x60]
	ldr r0, [r0]
	strb r4, [r0, #0x63]
	bl dispFocus
	add sp, sp, #8
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_020F7878:
	add r4, r4, #1
	cmp r4, #0xa
	blt _020F7820
	ldr r7, _020F7990 ; =0x02111FF6
	ldr r6, _020F7994 ; =0x02111FEE
	mov r4, #0
	add r5, sp, #0
_020F7894:
	mov r1, r6
	mov r2, r5
	add r0, r7, r4, lsl #2
	bl DWCi_Coord2Rect
	mov r0, r5
	bl DWCi_TPlCheckRelease
	cmp r0, #0
	beq _020F78F0
	ldr r0, _020F797C ; =0x021161C0
	add r2, r4, #0xa
	ldr r3, [r0]
	ldrsb r1, [r3, #0x61]
	cmp r1, r2
	addne sp, sp, #8
	ldmnefd sp!, {r3, r4, r5, r6, r7, pc}
	ldr r1, _020F7998 ; =0x02111FE3
	ldrb r1, [r1, r4]
	strb r1, [r3, #0x60]
	ldr r0, [r0]
	strb r2, [r0, #0x63]
	bl dispFocus
	add sp, sp, #8
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_020F78F0:
	add r4, r4, #1
	cmp r4, #2
	blt _020F7894
	ldr r7, _020F799C ; =0x02111FFE
	ldr r6, _020F79A0 ; =0x02111FF2
	mov r4, #0
	add r5, sp, #0
_020F790C:
	mov r1, r6
	mov r2, r5
	add r0, r7, r4, lsl #2
	bl DWCi_Coord2Rect
	mov r0, r5
	bl DWCi_TPlCheckRelease
	cmp r0, #0
	beq _020F7968
	ldr r0, _020F797C ; =0x021161C0
	add r2, r4, #0xc
	ldr r3, [r0]
	ldrsb r1, [r3, #0x61]
	cmp r1, r2
	addne sp, sp, #8
	ldmnefd sp!, {r3, r4, r5, r6, r7, pc}
	ldr r1, _020F79A4 ; =0x02111FE0
	ldrb r1, [r1, r4]
	strb r1, [r3, #0x60]
	ldr r0, [r0]
	strb r2, [r0, #0x63]
	bl dispFocus
	add sp, sp, #8
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_020F7968:
	add r4, r4, #1
	cmp r4, #2
	blt _020F790C
	add sp, sp, #8
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_020F797C: .word MemKb10
_020F7980: .word DWCi_R_SCR
_020F7984: .word C_KEY
_020F7988: .word S_KEY
_020F798C: .word KEY_OUT
_020F7990: .word C_SKEY
_020F7994: .word S_SKEY
_020F7998: .word SKEY_OUT
_020F799C: .word C_BTN
_020F79A0: .word S_BTN
_020F79A4: .word BTN_OUT
	arm_func_end touchRelease

	arm_static_func_start touch
touch: ; 0x020F79A8
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	sub sp, sp, #8
	ldr r0, _020F7B60 ; =0x021126F8
	bl DWCi_TPlCheck
	cmp r0, #0
	beq _020F7B40
	ldr r6, _020F7B64 ; =0x0211202C
	ldr r5, _020F7B68 ; =0x02111FE6
	mov r7, #0
	add r4, sp, #0
_020F79D0:
	mov r1, r5
	mov r2, r4
	add r0, r6, r7, lsl #2
	bl DWCi_Coord2Rect
	mov r0, r4
	bl DWCi_TPlCheck
	cmp r0, #0
	beq _020F7A0C
	ldr r0, _020F7B6C ; =0x021161C0
	ldr r0, [r0]
	ldrsb r0, [r0, #0x61]
	cmp r0, r7
	bne _020F7B40
	mov r0, r7
	b _020F7B44
_020F7A0C:
	add r7, r7, #1
	cmp r7, #0xa
	blt _020F79D0
	ldr r6, _020F7B70 ; =0x02111FF6
	ldr r5, _020F7B74 ; =0x02111FEE
	mov r7, #0
	add r4, sp, #0
_020F7A28:
	mov r1, r5
	mov r2, r4
	add r0, r6, r7, lsl #2
	bl DWCi_Coord2Rect
	mov r0, r4
	bl DWCi_TPlCheck
	cmp r0, #0
	beq _020F7ADC
	ldr r4, _020F7B6C ; =0x021161C0
	add r0, r7, #0xa
	ldr r1, [r4]
	ldrsb r1, [r1, #0x61]
	cmp r1, r0
	bne _020F7B40
	bl exchangeBack
	cmp r7, #0
	bne _020F7B48
	ldr r1, [r4]
	ldrb r0, [r1, #0x65]
	add r0, r0, #1
	strb r0, [r1, #0x65]
	ldr r1, [r4]
	ldrb r0, [r1, #0x65]
	cmp r0, #0x28
	addlo sp, sp, #8
	ldmlofd sp!, {r3, r4, r5, r6, r7, pc}
	ldrb r0, [r1, #0x66]
	cmp r0, #0
	bne _020F7ABC
	mov r5, #9
	mov r0, r5
	bl DWCi_SNDlPlay
	ldr r0, [r4]
	sub r1, r5, #0xa
	strb r1, [r0, #0x61]
	add sp, sp, #8
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_020F7ABC:
	mov r0, #0x10
	strb r0, [r1, #0x60]
	ldr r1, [r4]
	add sp, sp, #8
	ldrb r0, [r1, #0x65]
	sub r0, r0, #7
	strb r0, [r1, #0x65]
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_020F7ADC:
	add r7, r7, #1
	cmp r7, #2
	blt _020F7A28
	ldr r6, _020F7B78 ; =0x02111FFE
	ldr r5, _020F7B7C ; =0x02111FF2
	mov r7, #0
	add r4, sp, #0
_020F7AF8:
	mov r1, r5
	mov r2, r4
	add r0, r6, r7, lsl #2
	bl DWCi_Coord2Rect
	mov r0, r4
	bl DWCi_TPlCheck
	cmp r0, #0
	beq _020F7B34
	ldr r1, _020F7B6C ; =0x021161C0
	add r0, r7, #0xc
	ldr r1, [r1]
	ldrsb r1, [r1, #0x61]
	cmp r1, r0
	bne _020F7B40
	b _020F7B44
_020F7B34:
	add r7, r7, #1
	cmp r7, #2
	blt _020F7AF8
_020F7B40:
	mvn r0, #0
_020F7B44:
	bl exchangeBack
_020F7B48:
	ldr r0, _020F7B6C ; =0x021161C0
	mov r1, #0
	ldr r0, [r0]
	strb r1, [r0, #0x65]
	add sp, sp, #8
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_020F7B60: .word DWCi_R_SCR
_020F7B64: .word C_KEY
_020F7B68: .word S_KEY
_020F7B6C: .word MemKb10
_020F7B70: .word C_SKEY
_020F7B74: .word S_SKEY
_020F7B78: .word C_BTN
_020F7B7C: .word S_BTN
	arm_func_end touch

	arm_static_func_start exchangeBack
exchangeBack: ; 0x020F7B80
	stmfd sp!, {r3, r4, r5, lr}
	ldr r4, _020F7BC0 ; =0x021161C0
	mov r5, r0
	ldr r1, [r4]
	ldrsb r1, [r1, #0x62]
	cmp r5, r1
	ldmeqfd sp!, {r3, r4, r5, pc}
	mov r1, #1
	bl changeColor
	ldr r0, [r4]
	mov r1, #0
	ldrsb r0, [r0, #0x62]
	bl changeColor
	ldr r0, [r4]
	strb r5, [r0, #0x62]
	ldmfd sp!, {r3, r4, r5, pc}
_020F7BC0: .word MemKb10
	arm_func_end exchangeBack

	arm_static_func_start key
key: ; 0x020F7BC4
	stmfd sp!, {r4, lr}
	mov r0, #0x20
	bl DWCi_IPTlCheckRepeat
	cmp r0, #0
	beq _020F7BE0
	mov r0, #0
	bl moveFocus
_020F7BE0:
	mov r0, #0x40
	bl DWCi_IPTlCheckRepeat
	cmp r0, #0
	beq _020F7BF8
	mov r0, #1
	bl moveFocus
_020F7BF8:
	mov r0, #0x10
	bl DWCi_IPTlCheckRepeat
	cmp r0, #0
	beq _020F7C10
	mov r0, #2
	bl moveFocus
_020F7C10:
	mov r0, #0x80
	bl DWCi_IPTlCheckRepeat
	cmp r0, #0
	beq _020F7C28
	mov r0, #3
	bl moveFocus
_020F7C28:
	mov r0, #1
	bl DWCi_IPTlCheckTrigger
	cmp r0, #0
	beq _020F7CD0
	ldr r0, _020F7D48 ; =0x021161C0
	ldr r0, [r0]
	ldrsb r2, [r0, #0x63]
	cmp r2, #0xa
	bge _020F7C70
	ldrb r1, [r0, #0x67]
	cmp r1, #0
	ldrne r1, _020F7D4C ; =0x02112006
	ldrneb r1, [r1, r2]
	strneb r1, [r0, #0x60]
	ldmnefd sp!, {r4, pc}
	mov r0, #9
	bl DWCi_SNDlPlay
	ldmfd sp!, {r4, pc}
_020F7C70:
	sub r1, r2, #0xa
	cmp r1, #2
	bge _020F7CC0
	cmp r1, #0
	ldreqb r1, [r0, #0x66]
	cmpeq r1, #0
	beq _020F7CA0
	sub r1, r2, #0xa
	cmp r1, #1
	ldreqb r1, [r0, #0x68]
	cmpeq r1, #0
	bne _020F7CAC
_020F7CA0:
	mov r0, #9
	bl DWCi_SNDlPlay
	ldmfd sp!, {r4, pc}
_020F7CAC:
	ldr r1, _020F7D50 ; =0x02111FE3
	sub r2, r2, #0xa
	ldrb r1, [r1, r2]
	strb r1, [r0, #0x60]
	ldmfd sp!, {r4, pc}
_020F7CC0:
	ldr r1, _020F7D54 ; =0x02111FE0
	sub r2, r2, #0xc
	ldrb r1, [r1, r2]
	strb r1, [r0, #0x60]
_020F7CD0:
	mov r4, #2
	mov r0, r4
	bl DWCi_IPTlCheckRepeat
	cmp r0, #0
	beq _020F7D28
	ldr r4, _020F7D48 ; =0x021161C0
	ldr r1, [r4]
	ldrb r0, [r1, #0x66]
	cmp r0, #0
	bne _020F7D1C
	ldrb r0, [r1, #0x69]
	cmp r0, #0
	ldmnefd sp!, {r4, pc}
	mov r0, #9
	bl DWCi_SNDlPlay
	ldr r0, [r4]
	mov r1, #1
	strb r1, [r0, #0x69]
	ldmfd sp!, {r4, pc}
_020F7D1C:
	mov r0, #0x10
	strb r0, [r1, #0x60]
	ldmfd sp!, {r4, pc}
_020F7D28:
	mov r0, r4
	bl DWCi_IPTlCheckRelease
	cmp r0, #0
	ldrne r0, _020F7D48 ; =0x021161C0
	movne r1, #0
	ldrne r0, [r0]
	strneb r1, [r0, #0x69]
	ldmfd sp!, {r4, pc}
_020F7D48: .word MemKb10
_020F7D4C: .word KEY_OUT
_020F7D50: .word SKEY_OUT
_020F7D54: .word BTN_OUT
	arm_func_end key

	arm_static_func_start disp
disp: ; 0x020F7D58
	stmfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, lr}
	sub sp, sp, #0x1c
	ldr r3, _020F7FB4 ; =0x021120CC
	ldr r2, _020F7FB8 ; =0x021120C4
	ldr r11, _020F7FBC ; =0x021120D4
	ldrb r10, [r3]
	ldrb r9, [r3, #1]
	ldrb r8, [r3, #2]
	ldrb r7, [r3, #3]
	ldrb r6, [r3, #4]
	mov r4, r0
	ldrb r0, [r2]
	ldrb r3, [r11, #3]
	strb r9, [sp, #0x17]
	strb r8, [sp, #0x18]
	strb r7, [sp, #0x19]
	add r7, r4, r4, lsl #1
	strb r6, [sp, #0x1a]
	ldrb r5, [r11]
	ldrb lr, [r11, #1]
	ldrb r12, [r11, #2]
	ldrb r11, [r11, #4]
	str r0, [sp, #8]
	ldrb r0, [r2, #1]
	ldrb r9, [r2, #2]
	ldrb r8, [r2, #3]
	ldrb r2, [r2, #4]
	strb r3, [sp, #0x14]
	ldr r3, [sp, #8]
	strb r5, [sp, #0x11]
	strb r10, [sp, #0x16]
	add r6, sp, #0x16
	str r7, [sp, #4]
	ldrb r7, [r6, r4]
	mov r5, r1
	strb lr, [sp, #0x12]
	cmp r7, #0
	ldr r1, [sp, #4]
	strb r12, [sp, #0x13]
	strb r11, [sp, #0x15]
	strb r3, [sp, #0xc]
	strb r0, [sp, #0xd]
	strb r9, [sp, #0xe]
	strb r8, [sp, #0xf]
	strb r2, [sp, #0x10]
	mov r7, #0
	ble _020F7E80
	ldrb r11, [r6, r4]
	ldr r0, _020F7FC0 ; =0x0211202C
	ldr r10, _020F7FC4 ; =0x021161C0
	ldr r6, _020F7FC8 ; =0xC1FFFCFF
	ldr r9, _020F7FCC ; =0xFE00FF00
	and r8, r5, #0xff
_020F7E2C:
	ldr r2, [r10]
	mov r3, r1, lsl #2
	add r2, r2, r1, lsl #2
	ldr r2, [r2, #0x10]
	ldrh r3, [r0, r3]
	ldr r12, [r2]
	add r7, r7, #1
	and r12, r12, r6
	str r12, [r2]
	ldr r12, [r10]
	mov r2, r3, lsl #0x17
	add r3, r12, r1, lsl #2
	ldr r3, [r3, #0x10]
	cmp r7, r11
	ldr r12, [r3]
	add r1, r1, #1
	and r12, r12, r9
	orr r12, r12, r8
	orr r2, r12, r2, lsr #7
	str r2, [r3]
	blt _020F7E2C
_020F7E80:
	cmp r4, #4
	bge _020F7EBC
	ldr r0, _020F7FC4 ; =0x021161C0
	ldr r1, _020F7FC0 ; =0x0211202C
	ldr r3, [r0]
	ldr r0, [sp, #4]
	mov r2, #2
	mov r0, r0, lsl #2
	str r2, [sp]
	ldrh r1, [r1, r0]
	add r2, r3, r4, lsl #2
	ldr r0, [r3, r4, lsl #2]
	ldr r3, [r2, #0x48]
	mov r2, r5
	bl DWCi_FNTlDisp
_020F7EBC:
	add r1, sp, #0x11
	ldrb r0, [r1, r4]
	mov r6, #0
	cmp r0, #0
	ble _020F7F38
	mov r10, r0
	ldr r0, _020F7FD0 ; =0x02111FF6
	ldr r9, _020F7FC4 ; =0x021161C0
	ldr r7, _020F7FC8 ; =0xC1FFFCFF
	ldr r8, _020F7FCC ; =0xFE00FF00
	and r3, r5, #0xff
_020F7EE8:
	ldr r1, [r9]
	mov r2, r6, lsl #2
	add r1, r1, r6, lsl #2
	ldr r11, [r1, #0x38]
	ldrh r1, [r0, r2]
	ldr r2, [r11]
	and r2, r2, r7
	str r2, [r11]
	ldr r2, [r9]
	mov r1, r1, lsl #0x17
	add r2, r2, r6, lsl #2
	ldr r2, [r2, #0x38]
	add r6, r6, #1
	ldr r11, [r2]
	cmp r6, r10
	and r11, r11, r8
	orr r11, r11, r3
	orr r1, r11, r1, lsr #7
	str r1, [r2]
	blt _020F7EE8
_020F7F38:
	add r1, sp, #0xc
	ldrb r0, [r1, r4]
	mov r7, #0
	cmp r0, #0
	addle sp, sp, #0x1c
	ldmlefd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
	ldr r10, _020F7FD4 ; =0x02111FFE
	ldr r8, _020F7FC4 ; =0x021161C0
	mov r9, r0
	mvn r6, #0
	mov r4, r7
_020F7F64:
	ldr r0, [r8]
	mov r1, r6
	add r0, r0, r7, lsl #2
	ldr r0, [r0, #0x40]
	mov r2, r4
	mov r3, r4
	bl DWCi_CELLlSetEffect
	ldr r0, [r8]
	mov r1, r7, lsl #2
	add r0, r0, r7, lsl #2
	ldrh r2, [r10, r1]
	ldr r0, [r0, #0x40]
	mov r1, r6
	mov r3, r5
	bl DWCi_CELLlSetPosition
	add r7, r7, #1
	cmp r7, r9
	blt _020F7F64
	add sp, sp, #0x1c
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, r11, pc}
_020F7FB4: .word ov17_021120CC
_020F7FB8: .word ov17_021120C4
_020F7FBC: .word ov17_021120D4
_020F7FC0: .word C_KEY
_020F7FC4: .word MemKb10
_020F7FC8: .word 0xC1FFFCFF
_020F7FCC: .word 0xFE00FF00
_020F7FD0: .word C_SKEY
_020F7FD4: .word C_BTN
	arm_func_end disp

	arm_static_func_start changeColor
changeColor: ; 0x020F7FD8
	stmfd sp!, {r3, lr}
	cmp r0, #0
	ldmltfd sp!, {r3, pc}
	cmp r0, #0xa
	bge _020F8024
	ldr r2, _020F8094 ; =0x021161C0
	ldr r3, _020F8098 ; =0x02111FDE
	ldr r2, [r2]
	ldrb r1, [r3, r1]
	add r0, r2, r0, lsl #2
	ldr r2, [r0, #0x10]
	ldr r0, [r2]
	bic r0, r0, #0xc00
	str r0, [r2]
	ldrh r0, [r2, #4]
	bic r0, r0, #0xf000
	orr r0, r0, r1, lsl #12
	strh r0, [r2, #4]
	ldmfd sp!, {r3, pc}
_020F8024:
	sub r12, r0, #0xa
	cmp r12, #2
	bge _020F8068
	ldr r0, _020F8094 ; =0x021161C0
	ldr r2, _020F8098 ; =0x02111FDE
	ldr r3, [r0]
	ldrb r0, [r2, r1]
	add r1, r3, r12, lsl #2
	ldr r2, [r1, #0x38]
	ldr r1, [r2]
	bic r1, r1, #0xc00
	str r1, [r2]
	ldrh r1, [r2, #4]
	bic r1, r1, #0xf000
	orr r0, r1, r0, lsl #12
	strh r0, [r2, #4]
	ldmfd sp!, {r3, pc}
_020F8068:
	ldr r2, _020F8094 ; =0x021161C0
	ldr r3, _020F809C ; =0x02111FD8
	ldr r2, [r2]
	sub r0, r0, #0xc
	add r0, r2, r0, lsl #2
	ldrb r3, [r3, r1]
	ldr r0, [r0, #0x40]
	mvn r1, #0
	mov r2, #0
	bl DWCi_CELLlSetPalette
	ldmfd sp!, {r3, pc}
_020F8094: .word MemKb10
_020F8098: .word CL_KEY
_020F809C: .word CL_BTN
	arm_func_end changeColor

	arm_static_func_start dispFocus
dispFocus: ; 0x020F80A0
	stmfd sp!, {r3, r4, r5, lr}
	ldr r0, _020F8124 ; =0x021161C0
	mov r4, #0x44
	ldr r1, [r0]
	mov r5, #0
	ldrsb r0, [r1, #0x63]
	cmp r0, #0xb
	ldr r0, [r1, #0x58]
	movgt r4, #0x45
	mov r1, r5
	bl DWCi_CELLlGetObj
	mov r2, r0
	mov r0, r5
	mov r1, r4
	bl DWCi_CEINlSet
	ldr r4, _020F8124 ; =0x021161C0
	sub r5, r5, #1
	ldr r0, [r4]
	mov r1, r5
	ldr r0, [r0, #0x58]
	mov r2, #2
	bl DWCi_CELLlSetPriority
	ldr r0, [r4]
	ldr r2, _020F8128 ; =0x02112054
	ldrsb r3, [r0, #0x63]
	ldr r0, [r0, #0x58]
	mov r1, r5
	mov r4, r3, lsl #2
	ldr r3, _020F812C ; =0x02112056
	ldrh r2, [r2, r4]
	ldrh r3, [r3, r4]
	bl DWCi_CELLlSetPosition
	ldmfd sp!, {r3, r4, r5, pc}
_020F8124: .word MemKb10
_020F8128: .word C_FOCUS
_020F812C: .word C_FOCUS+2
	arm_func_end dispFocus

	arm_static_func_start moveFocus
moveFocus: ; 0x020F8130
	stmfd sp!, {r3, lr}
	ldr r1, _020F81D0 ; =0x021161C0
	ldr r2, _020F81D4 ; =0x0211208C
	ldr r3, [r1]
	ldrsb r12, [r3, #0x63]
	add r2, r2, r12, lsl #2
	ldrsb r2, [r0, r2]
	strb r2, [r3, #0x63]
	ldr r2, [r1]
	ldrsb r1, [r2, #0x63]
	cmp r1, #0xd
	bne _020F8170
	cmp r0, #1
	cmpne r0, #3
	streqb r12, [r2, #0x64]
	beq _020F81C0
_020F8170:
	mvn r0, #0
	cmp r1, r0
	bne _020F8198
	ldrsb r0, [r2, #0x64]
	cmp r0, #1
	cmpne r0, #0xa
	moveq r0, #0xa
	streqb r0, [r2, #0x63]
	movne r0, #0xb
	b _020F81BC
_020F8198:
	sub r0, r0, #1
	cmp r1, r0
	bne _020F81C0
	ldrsb r0, [r2, #0x64]
	cmp r0, #1
	cmpne r0, #0xa
	moveq r0, #1
	streqb r0, [r2, #0x63]
	movne r0, #2
_020F81BC:
	strneb r0, [r2, #0x63]
_020F81C0:
	bl dispFocus
	mov r0, #8
	bl DWCi_SNDlPlay
	ldmfd sp!, {r3, pc}
_020F81D0: .word MemKb10
_020F81D4: .word MOVE_TBL
	arm_func_end moveFocus

	arm_static_func_start taskEnd0
taskEnd0: ; 0x020F81D8
	stmfd sp!, {r3, r4, r5, lr}
	sub sp, sp, #8
	ldr r1, _020F8230 ; =0x021161C0
	mov r5, r0
	ldr r0, [r1]
	mov r1, #0
	ldr r0, [r0, #0x40]
	bl DWCi_CELLlGetObj
	ldr r1, [r0]
	mov r0, #4
	and r1, r1, #0xff
	add r4, r1, #0xc
	mov r1, r4
	bl disp
	cmp r4, #0xc0
	addlt sp, sp, #8
	ldmltfd sp!, {r3, r4, r5, pc}
	ldr r1, _020F8234 ; =taskEnd1
	mov r0, r5
	bl DWCi_TSKlChangeFunc
	add sp, sp, #8
	ldmfd sp!, {r3, r4, r5, pc}
_020F8230: .word MemKb10
_020F8234: .word taskEnd1
	arm_func_end taskEnd0

	arm_static_func_start taskEnd1
taskEnd1: ; 0x020F8238
	stmfd sp!, {r3, r4, r5, lr}
	sub sp, sp, #8
	ldr r1, _020F8288 ; =0x021161C0
	mov r5, r0
	ldr r1, [r1]
	mov r0, #3
	ldr r1, [r1, #0x34]
	ldr r1, [r1]
	and r1, r1, #0xff
	add r4, r1, #0xc
	mov r1, r4
	bl disp
	cmp r4, #0xc0
	addlt sp, sp, #8
	ldmltfd sp!, {r3, r4, r5, pc}
	ldr r1, _020F828C ; =taskEnd2
	mov r0, r5
	bl DWCi_TSKlChangeFunc
	add sp, sp, #8
	ldmfd sp!, {r3, r4, r5, pc}
_020F8288: .word MemKb10
_020F828C: .word taskEnd2
	arm_func_end taskEnd1

	arm_static_func_start taskEnd2
taskEnd2: ; 0x020F8290
	stmfd sp!, {r3, r4, r5, lr}
	sub sp, sp, #8
	ldr r1, _020F82E0 ; =0x021161C0
	mov r5, r0
	ldr r1, [r1]
	mov r0, #2
	ldr r1, [r1, #0x28]
	ldr r1, [r1]
	and r1, r1, #0xff
	add r4, r1, #0xc
	mov r1, r4
	bl disp
	cmp r4, #0xc0
	addlt sp, sp, #8
	ldmltfd sp!, {r3, r4, r5, pc}
	ldr r1, _020F82E4 ; =taskEnd3
	mov r0, r5
	bl DWCi_TSKlChangeFunc
	add sp, sp, #8
	ldmfd sp!, {r3, r4, r5, pc}
_020F82E0: .word MemKb10
_020F82E4: .word taskEnd3
	arm_func_end taskEnd2

	arm_static_func_start taskEnd3
taskEnd3: ; 0x020F82E8
	stmfd sp!, {r3, r4, r5, lr}
	sub sp, sp, #8
	ldr r1, _020F8338 ; =0x021161C0
	mov r5, r0
	ldr r1, [r1]
	mov r0, #1
	ldr r1, [r1, #0x1c]
	ldr r1, [r1]
	and r1, r1, #0xff
	add r4, r1, #0xc
	mov r1, r4
	bl disp
	cmp r4, #0xc0
	addlt sp, sp, #8
	ldmltfd sp!, {r3, r4, r5, pc}
	ldr r1, _020F833C ; =taskEnd4
	mov r0, r5
	bl DWCi_TSKlChangeFunc
	add sp, sp, #8
	ldmfd sp!, {r3, r4, r5, pc}
_020F8338: .word MemKb10
_020F833C: .word taskEnd4
	arm_func_end taskEnd3

	arm_static_func_start taskEnd4
taskEnd4: ; 0x020F8340
	stmfd sp!, {r3, r4, r5, lr}
	sub sp, sp, #8
	ldr r1, _020F8390 ; =0x021161C0
	mov r5, r0
	ldr r1, [r1]
	mov r0, #0
	ldr r1, [r1, #0x10]
	ldr r1, [r1]
	and r1, r1, #0xff
	add r4, r1, #0xc
	mov r1, r4
	bl disp
	cmp r4, #0xc0
	addlt sp, sp, #8
	ldmltfd sp!, {r3, r4, r5, pc}
	ldr r1, _020F8394 ; =taskEnd5
	mov r0, r5
	bl DWCi_TSKlChangeFunc
	add sp, sp, #8
	ldmfd sp!, {r3, r4, r5, pc}
_020F8390: .word MemKb10
_020F8394: .word taskEnd5
	arm_func_end taskEnd4

	arm_static_func_start taskEnd5
taskEnd5: ; 0x020F8398
	stmfd sp!, {r3, r4, r5, lr}
	mov r5, #0
	mov r1, r0
	mov r0, r5
	bl DWCi_TSKlDelete
	ldr r4, _020F8450 ; =0x021161C0
_020F83B0:
	ldr r0, [r4]
	add r0, r0, r5, lsl #2
	ldr r0, [r0, #0x48]
	bl DWCi_CELLlDelete
	ldr r0, [r4]
	ldr r0, [r0, r5, lsl #2]
	bl DWCi_FNTlDelete
	add r5, r5, #1
	cmp r5, #4
	blt _020F83B0
	ldr r4, _020F8450 ; =0x021161C0
	mov r5, #0
_020F83E0:
	ldr r0, [r4]
	add r0, r0, r5, lsl #2
	ldr r0, [r0, #0x40]
	bl DWCi_CELLlDelete
	add r5, r5, #1
	cmp r5, #2
	blt _020F83E0
	ldr r4, _020F8450 ; =0x021161C0
	mov r5, #0
_020F8404:
	ldr r0, [r4]
	add r0, r0, r5, lsl #2
	ldr r0, [r0, #0x38]
	bl DWCi_OBJlDelete
	add r5, r5, #1
	cmp r5, #2
	blt _020F8404
	ldr r4, _020F8450 ; =0x021161C0
	mov r5, #0
_020F8428:
	ldr r0, [r4]
	add r0, r0, r5, lsl #2
	ldr r0, [r0, #0x10]
	bl DWCi_OBJlDelete
	add r5, r5, #1
	cmp r5, #0xa
	blt _020F8428
	ldr r0, _020F8454 ; =0x021161C0
	bl DWCi_HEAPlFree_
	ldmfd sp!, {r3, r4, r5, pc}
_020F8450: .word MemKb10
_020F8454: .word MemKb10
	arm_func_end taskEnd5

	.rodata
CL_BTN:
	.byte 0x04, 0x05
CN_SKEY:
	.byte 0x37, 0x38
CN_BTN:
	.byte 0x3C, 0x3D
CL_KEY:
	.byte 0x02, 0x03
BTN_OUT:
	.byte 0x12, 0x13, 0x00
SKEY_OUT:
	.byte 0x10, 0x11, 0x00
S_KEY:
	.byte 0x1C, 0x00, 0x14, 0x00
S_CANV:
	.byte 0x0C, 0x00, 0x04, 0x00
S_SKEY:
	.byte 0x1C, 0x00, 0x14, 0x00
S_BTN:
	.byte 0x78, 0x00, 0x12, 0x00
C_SKEY:
	.byte 0x72, 0x00, 0x91, 0x00, 0x92, 0x00, 0x91, 0x00
C_BTN:
	.byte 0x04, 0x00, 0xAA, 0x00, 0x84, 0x00, 0xAA, 0x00
KEY_OUT:
	.byte 0x37, 0x38, 0x39, 0x34, 0x35, 0x36, 0x31, 0x32, 0x33, 0x30, 0x00, 0x00
KEY_CHR:
	.byte 0x37, 0x00, 0x38, 0x00, 0x39, 0x00, 0x34, 0x00, 0x35, 0x00, 0x36, 0x00, 0x31, 0x00
	.byte 0x32, 0x00, 0x33, 0x00, 0x30, 0x00, 0x20, 0x00, 0x20, 0x00, 0x00, 0x00
C_KEY:
	.byte 0x52, 0x00, 0x4C, 0x00, 0x72, 0x00, 0x4C, 0x00, 0x92, 0x00, 0x4C, 0x00, 0x52, 0x00, 0x63, 0x00
	.byte 0x72, 0x00, 0x63, 0x00, 0x92, 0x00, 0x63, 0x00, 0x52, 0x00, 0x7A, 0x00, 0x72, 0x00, 0x7A, 0x00
	.byte 0x92, 0x00, 0x7A, 0x00, 0x52, 0x00, 0x91, 0x00
C_FOCUS:
	.byte 0x50, 0x00, 0x4A, 0x00, 0x70, 0x00, 0x4A, 0x00, 0x90, 0x00, 0x4A, 0x00, 0x50, 0x00, 0x61, 0x00
	.byte 0x70, 0x00, 0x61, 0x00, 0x90, 0x00, 0x61, 0x00, 0x50, 0x00, 0x78, 0x00, 0x70, 0x00, 0x78, 0x00
	.byte 0x90, 0x00, 0x78, 0x00, 0x50, 0x00, 0x8F, 0x00, 0x70, 0x00, 0x8F, 0x00, 0x90, 0x00, 0x8F, 0x00
	.byte 0x02, 0x00, 0xA8, 0x00, 0x82, 0x00, 0xA8, 0x00
MOVE_TBL:
	.byte 0x02, 0x0C, 0x01, 0x03, 0x00, 0x0D, 0x02, 0x04, 0x01, 0x0D, 0x00, 0x05, 0x05, 0x00, 0x04, 0x06
	.byte 0x03, 0x01, 0x05, 0x07, 0x04, 0x02, 0x03, 0x08, 0x08, 0x03, 0x07, 0x09, 0x06, 0x04, 0x08, 0x0A
	.byte 0x07, 0x05, 0x06, 0x0B, 0x0B, 0x06, 0x0A, 0x0C, 0x09, 0x07, 0x0B, 0x0D, 0x0A, 0x08, 0x09, 0x0D
	.byte 0x0D, 0x09, 0x0D, 0x00, 0x0C, 0xFF, 0x0C, 0xFE
ov17_021120C4:
	.byte 0x00, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00
ov17_021120CC:
	.byte 0x03, 0x03, 0x03, 0x01, 0x00, 0x00, 0x00, 0x00
ov17_021120D4:
	.byte 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x00
ov17_021120DC:
	.byte 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x00, 0x00

	.bss
MemKb10:
	.space 0x04
