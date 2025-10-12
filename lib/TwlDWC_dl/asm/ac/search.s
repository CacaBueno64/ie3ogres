
	.include "asm/macros/function.inc"
	.public DWCi_AC_GetMemPtr
	.public DWCi_AC_GetPhase
	.public WCM_GetPhase
	.public WCM_GetAllowedChannel
	.public DWCi_AC_SetError
	.public OS_GetTick
	.public WCM_SearchAsync
	.public WCM_Bssid_Any
	.public WCM_Essid_Any
	.public DWCi_AC_MakeSearchList
	.public _ll_udiv
	.public DWCi_AC_IsSupportWPA
	.public WCM_EndSearchAsync

	.text
	arm_func_start DWCi_AC_SearchAP
DWCi_AC_SearchAP: ; 0x020C55A8
	stmfd sp!, {r3, r4, r5, lr}
	mov r0, #0x10
	bl DWCi_AC_GetMemPtr
	mov r4, r0
	bl DWCi_AC_GetPhase
	mov r5, r0
	bl WCM_GetPhase
	cmp r5, #2
	cmpeq r0, #3
	bne _020C561C
	bl WCM_GetAllowedChannel
	mov r2, #0
	mov r1, #0x1000
_020C55DC:
	tst r0, r1, asr r2
	bne _020C55F0
	add r2, r2, #1
	cmp r2, #0xc
	ble _020C55DC
_020C55F0:
	rsb r0, r2, #0xd
	add r1, r4, #0xd00
	strh r0, [r1, #0x1e]
	mov r2, #0x12c
	mov r0, r4
	strh r2, [r1, #0x22]
	mov r2, #0x96
	strh r2, [r1, #0x24]
	bl SearchAround1stLap
_020C5614:
	mov r5, r0
	b _020C56C4
_020C561C:
	cmp r5, #6
	bne _020C5634
	mov r0, r4
	mov r1, r5
	bl SearchEndCheck
	b _020C5614
_020C5634:
	cmp r0, #3
	beq _020C5644
	cmp r0, #6
	bne _020C5698
_020C5644:
	mov r0, r4
	mov r1, r5
	bl SearchEndCheck
	mov r5, r0
	cmp r5, #7
	beq _020C56C4
	cmp r5, #3
	bne _020C5670
	mov r0, r4
	bl SearchAround
	b _020C5614
_020C5670:
	cmp r5, #4
	bne _020C5684
	mov r0, r4
	bl SearchDifferChannel
	b _020C5614
_020C5684:
	cmp r5, #5
	bne _020C56C4
	mov r0, r4
	bl SearchStealth
	b _020C5614
_020C5698:
	cmp r0, #0xb
	bne _020C56B0
	mov r0, #0
	bl DWCi_AC_SetError
	mov r0, #0x11
	ldmfd sp!, {r3, r4, r5, pc}
_020C56B0:
	ble _020C56C4
	mov r0, #4
	bl DWCi_AC_SetError
	mov r0, #0x11
	ldmfd sp!, {r3, r4, r5, pc}
_020C56C4:
	mov r0, r5
	ldmfd sp!, {r3, r4, r5, pc}
	arm_func_end DWCi_AC_SearchAP

	arm_func_start DWCi_AC_SetStealthChannel
DWCi_AC_SetStealthChannel: ; 0x020C56CC
	stmfd sp!, {r4, lr}
	mov r4, r0
	mov r0, #0x10
	bl DWCi_AC_GetMemPtr
	add r1, r0, #0xd00
	ldrh r1, [r1, #0x1e]
	add r0, r0, #0xd00
	ldrh r3, [r0, #0x16]
	cmp r4, r1
	movhi r4, r1
	sub r1, r4, #1
	mov r2, #1
	orr r1, r3, r2, lsl r1
	strh r1, [r0, #0x16]
	ldmfd sp!, {r4, pc}
	arm_func_end DWCi_AC_SetStealthChannel

	arm_func_start DWCi_AC_SearchReStart
DWCi_AC_SearchReStart: ; 0x020C5708
	stmfd sp!, {r4, r5, r6, lr}
	mov r5, r0
	mov r0, #0x10
	bl DWCi_AC_GetMemPtr
	mov r4, r0
	cmp r5, #3
	beq _020C5738
	cmp r5, #4
	beq _020C5768
	cmp r5, #5
	beq _020C5810
	ldmfd sp!, {r4, r5, r6, pc}
_020C5738:
	bl OS_GetTick
	str r0, [r4, #0xcb0]
	str r1, [r4, #0xcb4]
	add r0, r4, #0xd00
	ldrsb r2, [r0, #0x11]
	ldr r1, _020C584C ; =DWC_AC_SEARCH_CHANNEL
	ldr r0, _020C5850 ; =WCM_Bssid_Any
	ldr r2, [r1, r2, lsl #2]
	ldr r1, _020C5854 ; =WCM_Essid_Any
	orr r2, r2, #0x200000
	bl WCM_SearchAsync
	ldmfd sp!, {r4, r5, r6, pc}
_020C5768:
	ldrb r1, [r4, #0xd0f]
	mov r0, #0xc0
	mov r5, #1
	mla r0, r1, r0, r4
	add r0, r0, #0x400
	ldrh r0, [r0, #0xa6]
	sub r0, r0, #1
	mov r0, r5, lsl r0
	mov r6, r0, lsl #0x10
	bl WCM_GetAllowedChannel
	tst r0, r6, lsr #16
	moveq r5, #0
	cmp r5, #1
	bne _020C57F4
	bl OS_GetTick
	str r0, [r4, #0xcb0]
	str r1, [r4, #0xcb4]
	ldrb r2, [r4, #0xd0f]
	mov r0, #0xc0
	add r1, r4, #0x74
	smulbb r5, r2, r0
	add r0, r4, r5
	add r0, r0, #0x400
	ldrh r2, [r0, #0xa6]
	add r0, r4, #0x7c
	add r4, r1, #0x400
	sub r1, r2, #1
	orr r1, r1, #0x300000
	add r3, r0, #0x400
	mov r2, r1, lsl #0x10
	add r0, r4, r5
	add r1, r3, r5
	mov r2, r2, lsr #0x10
	bl WCM_SearchAsync
	ldmfd sp!, {r4, r5, r6, pc}
_020C57F4:
	ldrb r1, [r4, #0xd0f]
	add r0, r4, #0x47
	add r2, r0, #0x400
	ldrb r0, [r2, r1, lsl #2]
	orr r0, r0, #0x80
	strb r0, [r2, r1, lsl #2]
	ldmfd sp!, {r4, r5, r6, pc}
_020C5810:
	bl OS_GetTick
	str r0, [r4, #0xcb0]
	str r1, [r4, #0xcb4]
	add r2, r4, #0xd00
	ldrb r3, [r4, #0xd0f]
	add r1, r4, #0x304
	mov r0, #0x24
	mla r1, r3, r0, r1
	ldrsb r3, [r2, #0x11]
	ldr r2, _020C584C ; =DWC_AC_SEARCH_CHANNEL
	ldr r0, _020C5850 ; =WCM_Bssid_Any
	ldr r2, [r2, r3, lsl #2]
	orr r2, r2, #0x300000
	bl WCM_SearchAsync
	ldmfd sp!, {r4, r5, r6, pc}
_020C584C: .word DWC_AC_SEARCH_CHANNEL
_020C5850: .word WCM_Bssid_Any
_020C5854: .word WCM_Essid_Any
	arm_func_end DWCi_AC_SearchReStart

	arm_static_func_start SearchAround1stLap
SearchAround1stLap: ; 0x020C5858
	stmfd sp!, {r4, lr}
	mov r4, r0
	bl OS_GetTick
	str r0, [r4, #0xcb0]
	mov r0, #0
	str r1, [r4, #0xcb4]
	bl GetStartChannel
	strb r0, [r4, #0xd11]
	bl OS_GetTick
	add r2, r4, #0xd00
	str r0, [r4, #0xcb0]
	str r1, [r4, #0xcb4]
	ldrsb r2, [r2, #0x11]
	ldr r1, _020C58AC ; =DWC_AC_SEARCH_CHANNEL
	ldr r0, _020C58B0 ; =WCM_Bssid_Any
	ldr r2, [r1, r2, lsl #2]
	ldr r1, _020C58B4 ; =WCM_Essid_Any
	orr r2, r2, #0x200000
	bl WCM_SearchAsync
	mov r0, #3
	ldmfd sp!, {r4, pc}
_020C58AC: .word DWC_AC_SEARCH_CHANNEL
_020C58B0: .word WCM_Bssid_Any
_020C58B4: .word WCM_Essid_Any
	arm_func_end SearchAround1stLap

	arm_static_func_start SearchAround2ndLap
SearchAround2ndLap: ; 0x020C58B8
	stmfd sp!, {r4, lr}
	mov r4, r0
	ldrb r2, [r4, #0xd0b]
	mov r0, #0
	strb r0, [r4, #0xd15]
	mov r1, r2, lsl #0x18
	mov r1, r1, lsr #0x1c
	add r1, r1, #1
	and r1, r1, #0xff
	bic r2, r2, #0xf0
	mov r1, r1, lsl #0x1c
	orr r1, r2, r1, lsr #24
	strb r1, [r4, #0xd0b]
	bl DWCi_AC_MakeSearchList
	mov r0, #1
	bl GetStartChannel
	strb r0, [r4, #0xd11]
	mov r0, #3
	ldmfd sp!, {r4, pc}
	arm_func_end SearchAround2ndLap

	arm_static_func_start SearchAround
SearchAround: ; 0x020C5904
	stmfd sp!, {r3, r4, r5, lr}
	mov r4, r0
	bl OS_GetTick
	ldr r2, [r4, #0xcb0]
	mov r5, #0
	subs r12, r0, r2
	ldr r0, [r4, #0xcb4]
	ldr r2, _020C59B4 ; =0x000082EA
	sbc r0, r1, r0
	mov r1, r0, lsl #6
	mov r3, r5
	orr r1, r1, r12, lsr #26
	mov r0, r12, lsl #6
	bl _ll_udiv
	add r2, r4, #0xd00
	ldrh r3, [r2, #0x22]
	cmp r1, r3, asr #31
	cmpeq r0, r3
	blo _020C59AC
	ldrsb r0, [r2, #0x11]
	bl GetNextAroundChannel
	strb r0, [r4, #0xd11]
	add r0, r4, #0xd00
	ldrsb r1, [r0, #0x11]
	sub r0, r5, #1
	cmp r1, r0
	bne _020C5980
	mov r0, r4
	mov r1, #3
	bl NextSearchCheck
	ldmfd sp!, {r3, r4, r5, pc}
_020C5980:
	bl OS_GetTick
	add r2, r4, #0xd00
	ldrsb r3, [r2, #0x11]
	ldr r2, _020C59B8 ; =DWC_AC_SEARCH_CHANNEL
	str r0, [r4, #0xcb0]
	ldr r2, [r2, r3, lsl #2]
	str r1, [r4, #0xcb4]
	ldr r0, _020C59BC ; =WCM_Bssid_Any
	ldr r1, _020C59C0 ; =WCM_Essid_Any
	orr r2, r2, #0x200000
	bl WCM_SearchAsync
_020C59AC:
	mov r0, #3
	ldmfd sp!, {r3, r4, r5, pc}
_020C59B4: .word 0x000082EA
_020C59B8: .word DWC_AC_SEARCH_CHANNEL
_020C59BC: .word WCM_Bssid_Any
_020C59C0: .word WCM_Essid_Any
	arm_func_end SearchAround

	arm_static_func_start SearchDifferChannel
SearchDifferChannel: ; 0x020C59C4
	stmfd sp!, {r4, r5, r6, lr}
	mov r4, r0
	bl OS_GetTick
	ldr r2, [r4, #0xcb0]
	ldr r3, [r4, #0xcb4]
	subs r5, r0, r2
	sbc r0, r1, r3
	mov r1, r0, lsl #6
	ldr r2, _020C5B48 ; =0x000082EA
	orr r1, r1, r5, lsr #26
	mov r0, r5, lsl #6
	mov r3, #0
	bl _ll_udiv
	add r2, r4, #0xd00
	ldrh r2, [r2, #0x24]
	cmp r1, r2, asr #31
	cmpeq r0, r2
	bhs _020C5A28
	ldrb r0, [r4, #0xd0f]
	add r0, r4, r0, lsl #2
	ldrb r0, [r0, #0x447]
	mov r0, r0, lsl #0x18
	mov r0, r0, lsr #0x1f
	cmp r0, #1
	bne _020C5B40
_020C5A28:
	ldrb r1, [r4, #0xd0f]
	add r0, r4, #0x47
	add r2, r0, #0x400
	ldrb r0, [r2, r1, lsl #2]
	orr r0, r0, #0x80
	strb r0, [r2, r1, lsl #2]
	ldrb r2, [r4, #0xd12]
	ldrb r1, [r4, #0xd0f]
	cmp r1, r2
	bhs _020C5A80
_020C5A50:
	add r0, r4, r1, lsl #2
	ldrb r0, [r0, #0x447]
	mov r0, r0, lsl #0x18
	movs r0, r0, lsr #0x1f
	beq _020C5A80
	ldrb r0, [r4, #0xd0f]
	ldrb r2, [r4, #0xd12]
	add r0, r0, #1
	and r1, r0, #0xff
	strb r0, [r4, #0xd0f]
	cmp r1, r2
	blo _020C5A50
_020C5A80:
	cmp r2, r1
	bhi _020C5AA0
	mov r2, #0
	mov r0, r4
	mov r1, #4
	strb r2, [r4, #0xd0f]
	bl NextSearchCheck
	ldmfd sp!, {r4, r5, r6, pc}
_020C5AA0:
	mov r0, #0xc0
	mla r0, r1, r0, r4
	add r0, r0, #0x400
	ldrh r0, [r0, #0xa6]
	mov r6, #1
	sub r0, r0, #1
	mov r0, r6, lsl r0
	mov r5, r0, lsl #0x10
	bl WCM_GetAllowedChannel
	tst r0, r5, lsr #16
	moveq r6, #0
	cmp r6, #1
	bne _020C5B28
	bl OS_GetTick
	ldrb r5, [r4, #0xd0f]
	mov r2, #0xc0
	add r3, r4, #0x74
	smulbb r2, r5, r2
	add r5, r4, r2
	str r0, [r4, #0xcb0]
	str r1, [r4, #0xcb4]
	add r0, r5, #0x400
	ldrh r1, [r0, #0xa6]
	add r0, r4, #0x7c
	add r5, r3, #0x400
	sub r1, r1, #1
	orr r1, r1, #0x300000
	add r4, r0, #0x400
	mov r3, r1, lsl #0x10
	add r0, r5, r2
	add r1, r4, r2
	mov r2, r3, lsr #0x10
	bl WCM_SearchAsync
	b _020C5B40
_020C5B28:
	ldrb r1, [r4, #0xd0f]
	add r0, r4, #0x47
	add r2, r0, #0x400
	ldrb r0, [r2, r1, lsl #2]
	orr r0, r0, #0x80
	strb r0, [r2, r1, lsl #2]
_020C5B40:
	mov r0, #4
	ldmfd sp!, {r4, r5, r6, pc}
_020C5B48: .word 0x000082EA
	arm_func_end SearchDifferChannel

	arm_static_func_start SearchStealth
SearchStealth: ; 0x020C5B4C
	stmfd sp!, {r4, lr}
	mov r4, r0
	bl OS_GetTick
	ldr r2, [r4, #0xcb0]
	ldr r3, [r4, #0xcb4]
	subs r12, r0, r2
	sbc r0, r1, r3
	mov r1, r0, lsl #6
	ldr r2, _020C5C70 ; =0x000082EA
	orr r1, r1, r12, lsr #26
	mov r0, r12, lsl #6
	mov r3, #0
	bl _ll_udiv
	add r2, r4, #0xd00
	ldrh r2, [r2, #0x24]
	cmp r1, r2, asr #31
	cmpeq r0, r2
	bhs _020C5BB4
	ldrb r1, [r4, #0xd0f]
	mov r0, #0x24
	mla r0, r1, r0, r4
	ldrb r0, [r0, #0x300]
	mov r0, r0, lsl #0x1c
	mov r0, r0, lsr #0x1c
	cmp r0, #1
	bne _020C5C68
_020C5BB4:
	ldrb r1, [r4, #0xd0f]
	mov r0, #0x24
	add r2, r4, #0x300
	smulbb r1, r1, r0
	ldrb r0, [r2, r1]
	bic r0, r0, #0xf
	strb r0, [r2, r1]
	ldrb r0, [r4, #0xd0f]
	ldrb r1, [r4, #0xd10]
	add r2, r0, #1
	and r0, r2, #0xff
	strb r2, [r4, #0xd0f]
	cmp r1, r0
	bhi _020C5C08
	ldrb r1, [r4, #0xd15]
	mov r0, #0
	strb r0, [r4, #0xd0f]
	add r0, r1, #1
	strb r0, [r4, #0xd15]
	bl GetNextStealthChannel
	strb r0, [r4, #0xd11]
_020C5C08:
	add r0, r4, #0xd00
	ldrsb r0, [r0, #0x11]
	cmp r0, #0
	bge _020C5C30
	mov r2, #0
	mov r0, r4
	mov r1, #5
	strb r2, [r4, #0xd15]
	bl NextSearchCheck
	ldmfd sp!, {r4, pc}
_020C5C30:
	bl OS_GetTick
	add r3, r4, #0xd00
	ldrb r12, [r4, #0xd0f]
	add lr, r4, #0x304
	mov r2, #0x24
	str r1, [r4, #0xcb4]
	str r0, [r4, #0xcb0]
	mla r1, r12, r2, lr
	ldrsb r3, [r3, #0x11]
	ldr r2, _020C5C74 ; =DWC_AC_SEARCH_CHANNEL
	ldr r0, _020C5C78 ; =WCM_Bssid_Any
	ldr r2, [r2, r3, lsl #2]
	orr r2, r2, #0x300000
	bl WCM_SearchAsync
_020C5C68:
	mov r0, #5
	ldmfd sp!, {r4, pc}
_020C5C70: .word 0x000082EA
_020C5C74: .word DWC_AC_SEARCH_CHANNEL
_020C5C78: .word WCM_Bssid_Any
	arm_func_end SearchStealth

	arm_static_func_start NextSearchCheck
NextSearchCheck: ; 0x020C5C7C
	stmfd sp!, {r3, r4, r5, lr}
	mov r4, r1
	mov r5, r0
	cmp r4, #3
	beq _020C5CA4
	cmp r4, #4
	beq _020C5CFC
	cmp r4, #5
	beq _020C5D00
	b _020C5D20
_020C5CA4:
	ldrb r1, [r5, #0xd12]
	cmp r1, #0
	bne _020C5CC0
	add r1, r5, #0xd00
	ldrh r1, [r1, #0x16]
	cmp r1, #0
	beq _020C5CE0
_020C5CC0:
	mov r0, #1
	bl DWCi_AC_MakeSearchList
	cmp r0, #1
	moveq r4, #4
	beq _020C5D20
	mov r0, r5
_020C5CD8:
	bl CheckStartStealthSearch
	b _020C5D1C
_020C5CE0:
	ldrb r1, [r5, #0xd0b]
	mov r1, r1, lsl #0x18
	mov r1, r1, lsr #0x1c
	cmp r1, #1
	movhs r4, #6
	bhs _020C5D20
	b _020C5D18
_020C5CFC:
	b _020C5CD8
_020C5D00:
	ldrb r1, [r5, #0xd0b]
	mov r1, r1, lsl #0x18
	mov r1, r1, lsr #0x1c
	cmp r1, #1
	movhs r4, #6
	bhs _020C5D20
_020C5D18:
	bl SearchAround2ndLap
_020C5D1C:
	mov r4, r0
_020C5D20:
	mov r0, r4
	bl DWCi_AC_SearchReStart
	mov r0, r4
	ldmfd sp!, {r3, r4, r5, pc}
	arm_func_end NextSearchCheck

	arm_static_func_start SearchEndCheck
SearchEndCheck: ; 0x020C5D30
	stmfd sp!, {r4, r5, r6, lr}
	mov r5, r1
	mov r6, r0
	cmp r5, #0x11
	moveq r0, r5
	ldmeqfd sp!, {r4, r5, r6, pc}
	ldrb r1, [r6, #0xd12]
	mov r4, #0
	cmp r1, #0
	bls _020C5D78
_020C5D58:
	add r0, r6, r4, lsl #2
	ldrb r0, [r0, #0x444]
	cmp r0, #0
	beq _020C5D78
	add r0, r4, #1
	and r4, r0, #0xff
	cmp r4, r1
	blo _020C5D58
_020C5D78:
	cmp r5, #6
	bne _020C5DA8
	cmp r1, r4
	bne _020C5E34
	cmp r4, #0
	bne _020C5D98
	mov r0, #5
	b _020C5D9C
_020C5D98:
	mov r0, #6
_020C5D9C:
	bl DWCi_AC_SetError
	mov r0, #0x11
	ldmfd sp!, {r4, r5, r6, pc}
_020C5DA8:
	cmp r1, #0
	moveq r0, r5
	ldmeqfd sp!, {r4, r5, r6, pc}
	cmp r1, r4
	moveq r0, r5
	ldmeqfd sp!, {r4, r5, r6, pc}
	ldrb r0, [r6, #0xd0c]
	mov r0, r0, lsl #0x1a
	mov r0, r0, lsr #0x1f
	cmp r0, #1
	bne _020C5DE8
	add r0, r6, r4, lsl #2
	ldrb r0, [r0, #0x446]
	cmp r0, #0x14
	movlo r0, r5
	ldmlofd sp!, {r4, r5, r6, pc}
_020C5DE8:
	add r0, r6, r4, lsl #2
	ldrb r0, [r0, #0x445]
	cmp r0, #7
	blo _020C5E04
	cmp r0, #0xa
	movls r0, r5
	ldmlsfd sp!, {r4, r5, r6, pc}
_020C5E04:
	ldrb r0, [r6, #0xd0c]
	mov r0, r0, lsl #0x18
	mov r0, r0, lsr #0x1f
	cmp r0, #1
	bne _020C5E34
	add r1, r6, #0x470
	mov r0, #0xc0
	mla r0, r4, r0, r1
	bl DWCi_AC_IsSupportWPA
	cmp r0, #0
	moveq r0, r5
	ldmeqfd sp!, {r4, r5, r6, pc}
_020C5E34:
	strb r4, [r6, #0xd13]
	bl WCM_EndSearchAsync
	cmp r0, #1
	strneb r5, [r6, #0xd0e]
	movne r5, #7
	mov r0, r5
	ldmfd sp!, {r4, r5, r6, pc}
	arm_func_end SearchEndCheck

	arm_static_func_start CheckStartStealthSearch
CheckStartStealthSearch: ; 0x020C5E50
	stmfd sp!, {r4, lr}
	mov r4, r0
	add r0, r4, #0xd00
	ldrh r0, [r0, #0x16]
	cmp r0, #0
	beq _020C5EAC
	mov r0, #2
	bl DWCi_AC_MakeSearchList
	cmp r0, #1
	bne _020C5EAC
	bl GetNextStealthChannel
	strb r0, [r4, #0xd11]
	add r0, r4, #0xd00
	ldrsb r0, [r0, #0x11]
	cmp r0, #0
	movge r0, #5
	ldmgefd sp!, {r4, pc}
	mov r2, #0
	mov r0, r4
	mov r1, #5
	strb r2, [r4, #0xd15]
	bl NextSearchCheck
	ldmfd sp!, {r4, pc}
_020C5EAC:
	ldrb r0, [r4, #0xd0b]
	mov r0, r0, lsl #0x18
	mov r0, r0, lsr #0x1c
	cmp r0, #1
	movhs r0, #6
	ldmhsfd sp!, {r4, pc}
	mov r0, r4
	bl SearchAround2ndLap
	ldmfd sp!, {r4, pc}
	arm_func_end CheckStartStealthSearch

	arm_static_func_start GetStartChannel
GetStartChannel: ; 0x020C5ED0
	stmfd sp!, {r4, r5, r6, r7, r8, r9, r10, lr}
	mov r10, r0
	mov r0, #0x10
	bl DWCi_AC_GetMemPtr
	cmp r10, #0
	mov r7, r0
	add r4, r7, #0xd00
	moveq r8, #0
	moveq r9, #1
	ldrh r0, [r4, #0x1e]
	movne r8, #1
	movne r9, #2
	cmp r8, r0
	bgt _020C5F40
	mov r5, #0
	mov r6, #1
_020C5F10:
	bl WCM_GetAllowedChannel
	tst r0, r9
	movne r0, r6
	moveq r0, r5
	cmp r0, #1
	beq _020C5F40
	ldrh r1, [r4, #0x1e]
	mov r0, r9, lsl #0x12
	add r8, r8, #2
	cmp r8, r1
	mov r9, r0, lsr #0x10
	ble _020C5F10
_020C5F40:
	add r0, r7, #0xd00
	ldrh r0, [r0, #0x1e]
	cmp r8, r0
	ble _020C5F68
	mov r0, #1
	cmp r10, #0
	moveq r0, #0
	mov r0, r0, lsl #0x18
	mov r0, r0, asr #0x18
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, pc}
_020C5F68:
	mov r0, r8, lsl #0x18
	mov r0, r0, asr #0x18
	ldmfd sp!, {r4, r5, r6, r7, r8, r9, r10, pc}
	arm_func_end GetStartChannel

	arm_static_func_start GetNextAroundChannel
GetNextAroundChannel: ; 0x020C5F74
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, lr}
	mov r9, r0
	mov r0, #0x10
	bl DWCi_AC_GetMemPtr
	add r1, r9, #2
	mov r7, r0
	mov r0, r1, lsl #0x18
	add r4, r7, #0xd00
	ldrh r2, [r4, #0x1e]
	mov r9, r0, asr #0x18
	mov r1, #1
	mov r1, r1, lsl r9
	mov r1, r1, lsl #0x10
	cmp r2, r0, asr #24
	mov r8, r1, lsr #0x10
	blt _020C5FF4
	mov r5, #0
	mov r6, #1
_020C5FBC:
	bl WCM_GetAllowedChannel
	tst r0, r8
	movne r0, r6
	moveq r0, r5
	cmp r0, #1
	beq _020C5FF4
	ldrh r2, [r4, #0x1e]
	add r0, r9, #2
	mov r1, r0, lsl #0x18
	mov r0, r8, lsl #0x12
	cmp r2, r1, asr #24
	mov r8, r0, lsr #0x10
	mov r9, r1, asr #0x18
	bge _020C5FBC
_020C5FF4:
	add r0, r7, #0xd00
	ldrh r0, [r0, #0x1e]
	cmp r9, r0
	mvngt r9, #0
	mov r0, r9
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
	arm_func_end GetNextAroundChannel

	arm_static_func_start GetNextStealthChannel
GetNextStealthChannel: ; 0x020C600C
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, lr}
	mov r5, #0x10
	mov r0, r5
	bl DWCi_AC_GetMemPtr
	mov r6, r0
	add r4, r6, #0xd00
	ldrh r9, [r4, #0x16]
	cmp r9, #0
	subeq r0, r5, #0x11
	ldmeqfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
	ldrh r0, [r4, #0x1e]
	mov r7, #0
	mov r8, r7
	cmp r0, #0
	ble _020C60B4
	mov r11, r7
	mov r5, #1
_020C6050:
	tst r9, r5, lsl r7
	mov r10, r5, lsl r7
	beq _020C60A0
	ldrb r0, [r6, #0xd15]
	cmp r8, r0
	bne _020C6098
	bl WCM_GetAllowedChannel
	mov r1, r10, lsl #0x10
	tst r0, r1, lsr #16
	movne r0, r5
	moveq r0, r11
	cmp r0, #1
	moveq r0, r7, lsl #0x18
	moveq r0, r0, asr #0x18
	ldmeqfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
	ldrb r0, [r6, #0xd15]
	add r0, r0, #1
	strb r0, [r6, #0xd15]
_020C6098:
	add r0, r8, #1
	and r8, r0, #0xff
_020C60A0:
	ldrh r0, [r4, #0x1e]
	add r1, r7, #1
	and r7, r1, #0xff
	cmp r7, r0
	blt _020C6050
_020C60B4:
	mvn r0, #0
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
	arm_func_end GetNextStealthChannel

    .rodata
DWC_AC_SEARCH_CHANNEL:
	.word 0x8002, 0x8004, 0x8008, 0x8010, 0x8020, 0x8040, 0x8080, 0x8100,
	.word 0x8200, 0x8400, 0x8800, 0x9000, 0xA000