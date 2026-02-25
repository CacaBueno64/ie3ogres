
	.include "/macros/function.inc"
	.include "/include/gamemodes_0.inc"

	.text
    arm_func_start _Z11SetNextMode8GameMode
_Z11SetNextMode8GameMode: ; 0x02029D44
	ldr r1, _02029D50 ; =0x020B5AE0
	str r0, [r1, #4]
	bx lr
_02029D50: .word unk_020B5AE0
	arm_func_end _Z11SetNextMode8GameMode

	arm_func_start _Z14GetCurrentModev
_Z14GetCurrentModev: ; 0x02029D54
	ldr r0, _02029D60 ; =0x020B5AE0
	ldr r0, [r0, #8]
	bx lr
_02029D60: .word unk_020B5AE0
	arm_func_end _Z14GetCurrentModev

	arm_func_start FUN_02029d64 ; https://decomp.me/scratch/hQu3p
FUN_02029d64: ; 0x02029D64
	ldr r1, _02029D94 ; =0x0208F898
	ldr r2, [r1]
	cmp r2, #0
	beq _02029D8C
_02029D74:
	cmp r0, r2
	moveq r0, r1
	bxeq lr
	ldr r2, [r1, #0xc]!
	cmp r2, #0
	bne _02029D74
_02029D8C:
	mov r0, #0
	bx lr
_02029D94: .word unk_0208F898
	arm_func_end FUN_02029d64

	arm_func_start FUN_02029d98 ; https://decomp.me/scratch/f1Qbf
FUN_02029d98: ; 0x02029D98
	stmfd sp!, {r3, lr}
	ldr r1, [r0]
	cmp r1, #8
	addls pc, pc, r1, lsl #2
	ldmfd sp!, {r3, pc}
_02029DAC: ; jump table
	ldmfd sp!, {r3, pc} ; case 0
	b _02029DE0 ; case 1
	b _02029DD8 ; case 2
	b _02029DD0 ; case 3
	b _02029DE8 ; case 4
	b _02029DF0 ; case 5
	b _02029DF8 ; case 6
	b _02029E00 ; case 7
	b _02029E08 ; case 8
_02029DD0:
	bl FUN_0202a288
	ldmfd sp!, {r3, pc}
_02029DD8:
	bl FUN_0202a1a0
	ldmfd sp!, {r3, pc}
_02029DE0:
	bl FUN_0202a020
	ldmfd sp!, {r3, pc}
_02029DE8:
	bl _Z14LogoScreenLoadP15GameModeContext
	ldmfd sp!, {r3, pc}
_02029DF0:
	bl _Z14CardScreenLoadP15GameModeContext
	ldmfd sp!, {r3, pc}
_02029DF8:
	bl _Z17EndrollScreenLoadP15GameModeContext
	ldmfd sp!, {r3, pc}
_02029E00:
	bl FUN_02029ea4
	ldmfd sp!, {r3, pc}
_02029E08:
	bl FUN_02029e10
	ldmfd sp!, {r3, pc}
	arm_func_end FUN_02029d98

	arm_func_start FUN_02029e10
FUN_02029e10: ; 0x02029E10
	stmfd sp!, {r3, r4, r5, lr}
	mov r5, r0
	ldr r0, [r5, #8]
	bl FUN_ov16_LoadOverlay
	cmp r0, #0
	ldmeqfd sp!, {r3, r4, r5, pc}
	ldr r0, _02029E84 ; =0x00000714
	bl _Znwm
	movs r4, r0
	beq _02029E7C
	bl _ZN14CScreenManagerC2Ev
	ldr r1, _02029E88 ; =0x020E6508
	ldr r0, _02029E8C ; =0x020E6698
	str r1, [r4]
	str r0, [r4, #0x4a4]
	add r0, r4, #0xa4
	ldr r1, _02029E90 ; =0x020E6B64
	str r4, [r0, #0x404]
	str r1, [r4, #0x644]
	add r0, r4, #0x244
	ldr r1, _02029E94 ; =0x020E6C98
	str r4, [r0, #0x408]
	str r1, [r4, #0x68c]
	add r0, r4, #0x28c
	str r4, [r0, #0x404]
	mov r0, #0
	str r0, [r4, #0x710]
_02029E7C:
	str r4, [r5, #4]
	ldmfd sp!, {r3, r4, r5, pc}
_02029E84: .word 0x00000714
_02029E88: .word ov15_020E6500+0x8
_02029E8C: .word ov15_020E6698
_02029E90: .word ov15_020E6B64
_02029E94: .word ov15_020E6C98
	arm_func_end FUN_02029e10

	arm_func_start FUN_02029e98
FUN_02029e98: ; 0x02029E98
	bx lr
	arm_func_end FUN_02029e98

	arm_func_start FUN_02029e9c
FUN_02029e9c: ; 0x02029E9C
	bx lr
	arm_func_end FUN_02029e9c

	arm_func_start FUN_02029ea0
FUN_02029ea0: ; 0x02029EA0
	bx lr
	arm_func_end FUN_02029ea0

	arm_func_start FUN_02029ea4
FUN_02029ea4: ; 0x02029EA4
	stmfd sp!, {r3, r4, r5, lr}
	mov r5, r0
	ldr r0, [r5, #8]
	bl FUN_ov16_LoadOverlay
	cmp r0, #0
	ldmeqfd sp!, {r3, r4, r5, pc}
	mov r0, #0x90
	bl _Znwm
	movs r4, r0
	beq _02029ED8
	bl _ZN14CScreenManagerC2Ev
	ldr r0, _02029EE0 ; =0x020E6578
	str r0, [r4]
_02029ED8:
	str r4, [r5, #4]
	ldmfd sp!, {r3, r4, r5, pc}
_02029EE0: .word ov15_020E6578
	arm_func_end FUN_02029ea4

	.data
	.global unk_0208F880
unk_0208F880:
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.global unk_0208F898
unk_0208F898:
	.word 3, 0, 0, 2
	.word 0, 1, 1, 0
	.word 4, 4, 0, 5
	.word 5, 0, 3, 6
	.word 0, 6, 7, 0
	.word 15, 8, 0, 15
	.word 0, 0, 0
	.global unk_0208F904
unk_0208F904:
	.byte 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00
	.word FUN_0202b2ac
	.word FUN_0202b210
	.word _ZN15CommonSubScreen10updateKeysEtt
	.word _ZN15CommonSubScreen8updateTPEP6TPData
	.word 0
	.word _ZN12CommonScreen7vFUN_14Ev
	.word 0
	.word 0
	.word 0
	.word _ZN12CommonScreen7vFUN_24Ev
	.word _ZN12CommonScreen7vFUN_28Ev
	.word _ZN12CommonScreen7vFUN_2CEv
	.word _ZN12CommonScreen7vFUN_30Ev
	.word _ZN12CommonScreen7vFUN_34Ev
	.word _ZN12CommonScreen7vFUN_38Ev
	.word _ZN15CommonSubScreen9fadeResetEv
	.word _ZN15CommonSubScreen10fadeUpdateEv
	.word _ZN15CommonSubScreen8blackOutEv
	.word _ZN15CommonSubScreen8whiteOutEv
	.word _ZN15CommonSubScreen6fadeInEv
	.word _ZN15CommonSubScreen9fadeBlackEv
	.word _ZN15CommonSubScreen9fadeWhiteEv
	.word _ZN15CommonSubScreen8isFadingEv
	.word _ZN15CommonSubScreen16isBrightAdjustedEv
	.word _ZN12CommonScreen8transferEPv
	.word _ZN12CommonScreen6signalEi
	.word _ZN12CommonScreen5stateEv
	.global unk_0208F978
unk_0208F978:
	.asciz "MDL_SCALE_CHAR"
	.balign 4, 0
	.global unk_0208F988
unk_0208F988:
	.asciz "MDL_SCALE_EFFECT"
	.balign 4, 0
	.global unk_0208F99C
unk_0208F99C:
	.asciz "MDL_SCALE_MAPOBJECT"
	.balign 4, 0
	.global unk_0208F9B0
unk_0208F9B0:
	.asciz "MDL_SCALE_CAMERA"
	.balign 4, 0
	.global unk_0208F9C4
unk_0208F9C4:
	.asciz "MDL_FIELD_WIDTH"
	.balign 4, 0
	.global unk_0208F9D4
unk_0208F9D4:
	.asciz "MDL_FIELD_HEIGHT"
	.balign 4, 0
	.global unk_0208F9E8
unk_0208F9E8:
	.asciz "MDL_FIELD_MARGIN_W"
	.balign 4, 0
	.global unk_0208F9FC
unk_0208F9FC:
	.asciz "MDL_FIELD_MARGIN_H"
	.balign 4, 0
	.global unk_0208FA10
unk_0208FA10:
	.asciz "/data_iz/pic2d/debfont8.pac"
	.balign 4, 0

	.bss
	.global unk_020B5AE0
unk_020B5AE0:
	.space 0x20
	.global unk_020B5B00
unk_020B5B00:
	.space 0x08
	.global unk_020B5B08
unk_020B5B08:
	.space 0x0C
	.global unk_020B5B14
unk_020B5B14:
	.space 0x10
	.global unk_020B5B24
unk_020B5B24:
	.space 0x1C
	.global unk_020B5B40
unk_020B5B40:
	.space 0x18
	.global unk_020B5B58
unk_020B5B58:
	.space 0x20
