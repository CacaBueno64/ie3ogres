
	.include "/macros/function.inc"
	.include "/include/commonmainscreen.inc"

	.text
	arm_func_start _ZN16CommonMainScreen16isBrightAdjustedEv
_ZN16CommonMainScreen16isBrightAdjustedEv: ; 0x0202B2B0
	ldr r12, _0202B2B8 ; =_ZN8Graphics20IsMainBrightAdjustedEv
	bx r12
_0202B2B8: .word _ZN8Graphics20IsMainBrightAdjustedEv
	arm_func_end _ZN16CommonMainScreen16isBrightAdjustedEv

	arm_func_start _ZN16CommonMainScreen8isFadingEv
_ZN16CommonMainScreen8isFadingEv: ; 0x0202B2BC
	ldr r12, _0202B2C4 ; =_ZN8Graphics12IsMainFadingEv
	bx r12
_0202B2C4: .word _ZN8Graphics12IsMainFadingEv
	arm_func_end _ZN16CommonMainScreen8isFadingEv

	arm_func_start _ZN16CommonMainScreen9fadeWhiteEv
_ZN16CommonMainScreen9fadeWhiteEv: ; 0x0202B2C8
	ldr r12, _0202B2D4 ; =_ZN8Graphics13FadeMainWhiteEl
	mov r0, #8
	bx r12
_0202B2D4: .word _ZN8Graphics13FadeMainWhiteEl
	arm_func_end _ZN16CommonMainScreen9fadeWhiteEv

	arm_func_start _ZN16CommonMainScreen9fadeBlackEv
_ZN16CommonMainScreen9fadeBlackEv: ; 0x0202B2D8
	ldr r12, _0202B2E4 ; =_ZN8Graphics13FadeMainBlackEl
	mov r0, #6
	bx r12
_0202B2E4: .word _ZN8Graphics13FadeMainBlackEl
	arm_func_end _ZN16CommonMainScreen9fadeBlackEv

	arm_func_start _ZN16CommonMainScreen6fadeInEv
_ZN16CommonMainScreen6fadeInEv: ; 0x0202B2E8
	ldr r12, _0202B2F4 ; =_ZN8Graphics10FadeInMainEl
	mov r0, #6
	bx r12
_0202B2F4: .word _ZN8Graphics10FadeInMainEl
	arm_func_end _ZN16CommonMainScreen6fadeInEv

	arm_func_start _ZN16CommonMainScreen8whiteOutEv
_ZN16CommonMainScreen8whiteOutEv: ; 0x0202B2F8
	ldr r12, _0202B300 ; =_ZN8Graphics12WhiteOutMainEv
	bx r12
_0202B300: .word _ZN8Graphics12WhiteOutMainEv
	arm_func_end _ZN16CommonMainScreen8whiteOutEv

	arm_func_start _ZN16CommonMainScreen8blackOutEv
_ZN16CommonMainScreen8blackOutEv: ; 0x0202B304
	ldr r12, _0202B30C ; =_ZN8Graphics12BlackOutMainEv
	bx r12
_0202B30C: .word _ZN8Graphics12BlackOutMainEv
	arm_func_end _ZN16CommonMainScreen8blackOutEv

	arm_func_start _ZN16CommonMainScreen10fadeUpdateEv
_ZN16CommonMainScreen10fadeUpdateEv: ; 0x0202B310
	ldr r12, _0202B31C ; =_ZN8Graphics16UpdateScreenFadeE12EngineSelect
	mov r0, #0
	bx r12
_0202B31C: .word _ZN8Graphics16UpdateScreenFadeE12EngineSelect
	arm_func_end _ZN16CommonMainScreen10fadeUpdateEv

	arm_func_start _ZN16CommonMainScreen9fadeResetEv
_ZN16CommonMainScreen9fadeResetEv: ; 0x0202B320
	ldr r12, _0202B32C ; =_ZN8Graphics15ResetScreenFadeE12EngineSelect
	mov r0, #0
	bx r12
_0202B32C: .word _ZN8Graphics15ResetScreenFadeE12EngineSelect
	arm_func_end _ZN16CommonMainScreen9fadeResetEv
