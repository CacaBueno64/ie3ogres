
	.include "/macros/function.inc"
	.public L5_Main

	.text
	arm_func_start NitroMain
NitroMain: ; 0x02000C8C
	ldr r12, _02000C94 ; =L5_Main
	bx r12
_02000C94: .word L5_Main
	arm_func_end NitroMain
