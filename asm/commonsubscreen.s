
	.include "/macros/function.inc"
	.include "/include/commonsubscreen.inc"

	.text
    arm_func_start FUN_0202b210
FUN_0202b210: ; 0x0202B210
	stmfd sp!, {r4, lr}
	mov r4, r0
	bl _ZdlPv
	mov r0, r4
	ldmfd sp!, {r4, pc}
	arm_func_end FUN_0202b210

	arm_func_start _ZN15CommonSubScreen16isBrightAdjustedEv
_ZN15CommonSubScreen16isBrightAdjustedEv: ; 0x0202B224
	ldr r12, _0202B22C ; =_ZN8Graphics19IsSubBrightAdjustedEv
	bx r12
_0202B22C: .word _ZN8Graphics19IsSubBrightAdjustedEv
	arm_func_end _ZN15CommonSubScreen16isBrightAdjustedEv

	arm_func_start _ZN15CommonSubScreen8isFadingEv
_ZN15CommonSubScreen8isFadingEv: ; 0x0202B230
	ldr r12, _0202B238 ; =_ZN8Graphics11IsSubFadingEv
	bx r12
_0202B238: .word _ZN8Graphics11IsSubFadingEv
	arm_func_end _ZN15CommonSubScreen8isFadingEv

	arm_func_start _ZN15CommonSubScreen9fadeWhiteEv
_ZN15CommonSubScreen9fadeWhiteEv: ; 0x0202B23C
	ldr r12, _0202B248 ; =_ZN8Graphics12FadeSubWhiteEl
	mov r0, #8
	bx r12
_0202B248: .word _ZN8Graphics12FadeSubWhiteEl
	arm_func_end _ZN15CommonSubScreen9fadeWhiteEv

	arm_func_start _ZN15CommonSubScreen9fadeBlackEv
_ZN15CommonSubScreen9fadeBlackEv: ; 0x0202B24C
	ldr r12, _0202B258 ; =_ZN8Graphics12FadeSubBlackEl
	mov r0, #6
	bx r12
_0202B258: .word _ZN8Graphics12FadeSubBlackEl
	arm_func_end _ZN15CommonSubScreen9fadeBlackEv

	arm_func_start _ZN15CommonSubScreen6fadeInEv
_ZN15CommonSubScreen6fadeInEv: ; 0x0202B25C
	ldr r12, _0202B268 ; =_ZN8Graphics9FadeInSubEl
	mov r0, #6
	bx r12
_0202B268: .word _ZN8Graphics9FadeInSubEl
	arm_func_end _ZN15CommonSubScreen6fadeInEv

	arm_func_start _ZN15CommonSubScreen8whiteOutEv
_ZN15CommonSubScreen8whiteOutEv: ; 0x0202B26C
	ldr r12, _0202B274 ; =_ZN8Graphics11WhiteOutSubEv
	bx r12
_0202B274: .word _ZN8Graphics11WhiteOutSubEv
	arm_func_end _ZN15CommonSubScreen8whiteOutEv

	arm_func_start _ZN15CommonSubScreen8blackOutEv
_ZN15CommonSubScreen8blackOutEv: ; 0x0202B278
	ldr r12, _0202B280 ; =_ZN8Graphics11BlackOutSubEv
	bx r12
_0202B280: .word _ZN8Graphics11BlackOutSubEv
	arm_func_end _ZN15CommonSubScreen8blackOutEv

	arm_func_start _ZN15CommonSubScreen10fadeUpdateEv
_ZN15CommonSubScreen10fadeUpdateEv: ; 0x0202B284
	ldr r12, _0202B290 ; =_ZN8Graphics16UpdateScreenFadeE12EngineSelect
	mov r0, #1
	bx r12
_0202B290: .word _ZN8Graphics16UpdateScreenFadeE12EngineSelect
	arm_func_end _ZN15CommonSubScreen10fadeUpdateEv

	arm_func_start _ZN15CommonSubScreen9fadeResetEv
_ZN15CommonSubScreen9fadeResetEv: ; 0x0202B294
	ldr r12, _0202B2A0 ; =_ZN8Graphics15ResetScreenFadeE12EngineSelect
	mov r0, #1
	bx r12
_0202B2A0: .word _ZN8Graphics15ResetScreenFadeE12EngineSelect
	arm_func_end _ZN15CommonSubScreen9fadeResetEv

	arm_func_start _ZN15CommonSubScreen8updateTPEP6TPData
_ZN15CommonSubScreen8updateTPEP6TPData: ; 0x0202B2A4
	bx lr
	arm_func_end _ZN15CommonSubScreen8updateTPEP6TPData

	arm_func_start _ZN15CommonSubScreen10updateKeysEtt
_ZN15CommonSubScreen10updateKeysEtt: ; 0x0202B2A8
	bx lr
	arm_func_end _ZN15CommonSubScreen10updateKeysEtt

	arm_func_start FUN_0202b2ac
FUN_0202b2ac: ; 0x0202B2AC
	bx lr
	arm_func_end FUN_0202b2ac
