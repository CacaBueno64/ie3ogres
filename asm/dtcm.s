
	.include "/include/dtcm.inc"

	.bss
	.global OSi_IrqThreadQueue
OSi_IrqThreadQueue:
	.space 0x20

	.section .dtcm
	.global OS_IRQTable
OS_IRQTable:
	.word OS_IrqDummy
	.word OS_IrqDummy
	
	.word OS_IrqDummy

	.word OSi_IrqTimer0
	.word OSi_IrqTimer1
	.word OSi_IrqTimer2
	.word OSi_IrqTimer3 
	
	.word OS_IrqDummy

	.word OSi_IrqDma0
	.word OSi_IrqDma1
	.word OSi_IrqDma2
	
	.word OSi_IrqDma3

	.word OS_IrqDummy
	.word OS_IrqDummy
	.word OS_IrqDummy
	.word OS_IrqDummy
	.word OS_IrqDummy
	.word OS_IrqDummy
	.word OS_IrqDummy
	.word OS_IrqDummy
	.word OS_IrqDummy
	.word OS_IrqDummy