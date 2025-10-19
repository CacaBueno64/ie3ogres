
	.include "asm/macros/function.inc"
	.public DWCi_ARClReadEx
	.public DWCi_HEAPlAllocEx
	.public DWCi_HEAPlFree_
	.public DWCi_TSKlDelete
	.public DWCi_TSKlForm
	.public NNS_SndArcInitOnMemory
	.public NNS_SndArcPlayerSetup
	.public NNS_SndArcPlayerStartSeqArc
	.public NNS_SndHandleInit
	.public NNS_SndInit
	.public NNS_SndMain
	.public NNS_SndPlayerSetAllocatableChannel
	.public NNS_SndPlayerSetPlayableSeqCount
	.public NNS_SndPlayerSetPlayerVolume
	.public NNS_SndPlayerSetTrackPitch
	.public NNS_SndPlayerSetVolume
	.public NNS_SndPlayerStopSeq

	.text
	arm_func_start DWCi_SNDlInit
DWCi_SNDlInit: ; 0x02107B50
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	mov r0, #0xac
	mov r1, #4
	bl DWCi_HEAPlAllocEx
	ldr r4, _02107C08 ; =0x021162A8
	add r1, sp, #0
	str r0, [r4]
	ldr r0, _02107C0C ; =0x02113544
	mov r2, #0x20
	bl DWCi_ARClReadEx
	ldr r1, [r4]
	str r0, [r1, #0xa4]
	bl NNS_SndInit
	ldr r0, [r4]
	ldr r1, [r0, #0xa4]
	bl NNS_SndArcInitOnMemory
	mov r7, #0
	mov r0, r7
	bl NNS_SndArcPlayerSetup
	ldr r0, [r4]
	add r0, r0, #0xa0
	bl NNS_SndHandleInit
	mov r6, #0x7f
	mov r5, #1
	mov r4, r7
_02107BB4:
	mov r0, r7
	mov r1, r6
	bl NNS_SndPlayerSetPlayerVolume
	mov r0, r7
	mov r1, r5
	bl NNS_SndPlayerSetPlayableSeqCount
	mov r0, r7
	mov r1, r4
	bl NNS_SndPlayerSetAllocatableChannel
	add r7, r7, #1
	cmp r7, #0x20
	blt _02107BB4
	ldr r1, _02107C10 ; =taskSound
	mov r0, r4
	mov r2, r4
	mov r3, #0xc8
	bl DWCi_TSKlForm
	ldr r1, _02107C08 ; =0x021162A8
	ldr r1, [r1]
	str r0, [r1, #0xa8]
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_02107C08: .word MemSnd
_02107C0C: .word ov17_02113544
_02107C10: .word taskSound
	arm_func_end DWCi_SNDlInit

	arm_func_start DWCi_SNDlEnd
DWCi_SNDlEnd: ; 0x02107C14
	stmfd sp!, {r3, lr}
	ldr r1, _02107C38 ; =0x021162A8
	mov r0, #0
	ldr r1, [r1]
	ldr r1, [r1, #0xa8]
	bl DWCi_TSKlDelete
	ldr r0, _02107C3C ; =0x021162A8
	bl DWCi_HEAPlFree_
	ldmfd sp!, {r3, pc}
_02107C38: .word MemSnd
_02107C3C: .word MemSnd
	arm_func_end DWCi_SNDlEnd

	arm_func_start DWCi_SNDlPlay
DWCi_SNDlPlay: ; 0x02107C40
	ldr r1, _02107C5C ; =0x021162A8
	mov r2, r0
	ldr r0, [r1]
	ldr r12, _02107C60 ; =NNS_SndArcPlayerStartSeqArc
	mov r1, #0
	add r0, r0, #0xa0
	bx r12
_02107C5C: .word MemSnd
_02107C60: .word NNS_SndArcPlayerStartSeqArc
	arm_func_end DWCi_SNDlPlay

	arm_func_start DWCi_SNDlSetVolume
DWCi_SNDlSetVolume: ; 0x02107C64
	ldr r2, _02107C7C ; =0x021162A8
	mov r1, r0
	ldr r0, [r2]
	ldr r12, _02107C80 ; =NNS_SndPlayerSetVolume
	add r0, r0, #0xa0
	bx r12
_02107C7C: .word MemSnd
_02107C80: .word NNS_SndPlayerSetVolume
	arm_func_end DWCi_SNDlSetVolume

	arm_func_start DWCi_SNDlSetPitch
DWCi_SNDlSetPitch: ; 0x02107C84
	ldr r2, _02107CA0 ; =0x021162A8
	ldr r12, _02107CA4 ; =NNS_SndPlayerSetTrackPitch
	ldr r3, [r2]
	mov r2, r1
	mov r1, r0
	add r0, r3, #0xa0
	bx r12
_02107CA0: .word MemSnd
_02107CA4: .word NNS_SndPlayerSetTrackPitch
	arm_func_end DWCi_SNDlSetPitch

	arm_func_start DWCi_SNDlStop
DWCi_SNDlStop: ; 0x02107CA8
	ldr r0, _02107CC0 ; =0x021162A8
	ldr r12, _02107CC4 ; =NNS_SndPlayerStopSeq
	ldr r0, [r0]
	mov r1, #0
	add r0, r0, #0xa0
	bx r12
_02107CC0: .word MemSnd
_02107CC4: .word NNS_SndPlayerStopSeq
	arm_func_end DWCi_SNDlStop

	arm_static_func_start taskSound
taskSound:
	ldr r12, _02107CD0 ; =NNS_SndMain
	bx r12
_02107CD0: .word NNS_SndMain
	arm_func_end taskSound

	.data
ov17_02113544:
	.asciz "sound/sound_data.sdat.l"

	.bss
MemSnd:
	.space 0x04
