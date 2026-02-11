
	.include "/macros/function.inc"
	.include "/include/arm9_0202dbf8.inc"

    .text
    arm_func_start _ZN9AllocatorC1Ev
_ZN9AllocatorC1Ev: ; 0x0202DBF8
	mov r3, #0
	mov r2, r3
_0202DC00:
	add r1, r0, r3, lsl #2
	str r2, [r1, #0x24]
	add r3, r3, #1
	str r2, [r1, #0x38]
	cmp r3, #5
	blt _0202DC00
	bx lr
	arm_func_end _ZN9AllocatorC1Ev

	arm_func_start _ZN9AllocatorD1Ev
_ZN9AllocatorD1Ev: ; 0x0202DC1C
	stmfd sp!, {r3, r4, r5, lr}
	mov r5, r0
	mov r4, #0
_0202DC28:
	add r0, r5, r4, lsl #2
	ldr r2, [r0, #0x24]
	cmp r2, #0
	beq _0202DC40
	ldmib r5, {r0, r1}
	bl OS_FreeToHeap
_0202DC40:
	add r4, r4, #1
	cmp r4, #5
	blt _0202DC28
	mov r0, r5
	ldmfd sp!, {r3, r4, r5, pc}
	arm_func_end _ZN9AllocatorD1Ev

	arm_func_start _ZN9Allocator10initArenasE9OSArenaIdPvS1_
_ZN9Allocator10initArenasE9OSArenaIdPvS1_: ; 0x0202DC54
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, lr}
	mov r10, r0
	mov r0, r1
	str r1, [r10, #4]
	mov r1, r2
	mov r2, r3
	bl OS_CreateHeap
	str r0, [r10, #8]
	add r0, r10, #0xc
	bl OS_InitMutex
	mov r7, #1
_0202DC80:
	mov r8, #0
	ldr r5, _0202DD9C ; =0x0208C348
	mov r6, r8
	mov r11, r8
	mov r4, #0x14
_0202DC94:
	cmp r7, #1
	bne _0202DCA4
	cmp r8, #1
	beq _0202DD70
_0202DCA4:
	cmp r7, #2
	bne _0202DCB4
	cmp r8, #1
	bne _0202DD70
_0202DCB4:
	add r0, r10, r8, lsl #2
	str r6, [r0, #0x24]
	str r6, [r0, #0x38]
	ldmib r10, {r0, r1}
	bl OS_GetTotalFreeSize
	cmp r0, #0
	beq _0202DD7C
	ldr r1, [r5, r8, lsl #2]
	mov r9, r0
	mov r1, r1, lsl #0xa
	cmp r7, #2
	movne r9, r1
	cmp r9, #0
	beq _0202DD68
	cmp r7, #1
	bne _0202DCFC
	cmp r9, r1
	bhi _0202DD0C
_0202DCFC:
	cmp r7, #2
	bne _0202DD1C
	cmp r9, r0
	bls _0202DD1C
_0202DD0C:
	cmp r7, #1
	bne _0202DD1C
	bl OS_Terminate
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_0202DD1C:
	ldmib r10, {r0, r1}
	mov r2, r9
	bl OS_AllocFromHeap
	add r1, r10, r8, lsl #2
	str r0, [r1, #0x24]
	cmp r0, #0
	bne _0202DD40
	bl OS_Terminate
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_0202DD40:
	str r9, [r1, #0x38]
	ldr r1, [r1, #0x24]
	mov r0, r11
	mov r2, r9
	bl MIi_CpuClearFast
	add r0, r10, r8, lsl #2
	ldr r1, [r0, #0x24]
	sub r0, r9, #0x10
	str r0, [r1, #4]
	strh r4, [r1, #2]
_0202DD68:
	cmp r7, #2
	beq _0202DD7C
_0202DD70:
	add r8, r8, #1
	cmp r8, #5
	blt _0202DC94
_0202DD7C:
	add r7, r7, #1
	cmp r7, #2
	ble _0202DC80
	mvn r1, #0
	mov r0, #1
	str r1, [r10, #0x4c]
	str r0, [r10, #0x50]
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_0202DD9C: .word unk_0208C348
	arm_func_end _ZN9Allocator10initArenasE9OSArenaIdPvS1_

	arm_func_start _ZN9Allocator8tryMergeEPNS_17AllocatorMetadataE
_ZN9Allocator8tryMergeEPNS_17AllocatorMetadataE: ; 0x0202DDA0
	stmfd sp!, {r3, r4, r5, lr}
	mov r4, r0
	ldr r0, [r4, #0xc]
	ldr r1, [r0, #4]
	ldr r2, [r0, #0xc]
	add r1, r0, r1
	add r1, r1, #0x10
	cmp r2, r1
	ldmnefd sp!, {r3, r4, r5, pc}
	ldrb r1, [r4]
	cmp r1, #0
	ldreqb r1, [r0]
	cmpeq r1, #0
	sub r1, r0, r4
	beq _0202DDF0
	sub r1, r1, #0x10
	str r1, [r4, #4]
	str r0, [r4, #0xc]
	str r4, [r0, #8]
	b _0202DE18
_0202DDF0:
	sub r2, r1, #0x10
	str r2, [r4, #4]
	ldr r1, [r0, #4]
	add r1, r1, #0x10
	add r1, r2, r1
	str r1, [r4, #4]
	ldr r0, [r0, #0xc]
	str r0, [r4, #0xc]
	cmp r0, #0
	strne r4, [r0, #8]
_0202DE18:
	mov r5, #0x10
	mov r0, r4
	mov r1, r5
	bl DC_FlushRange
	ldr r0, [r4, #0xc]
	cmp r0, #0
	beq _0202DE3C
	mov r1, r5
	bl DC_FlushRange
_0202DE3C:
	bl DC_WaitWriteBufferEmpty
	ldmfd sp!, {r3, r4, r5, pc}
	arm_func_end _ZN9Allocator8tryMergeEPNS_17AllocatorMetadataE

	arm_func_start _ZN9Allocator8allocateEm
_ZN9Allocator8allocateEm: ; 0x0202DE44
	ldr r12, _0202DE54 ; =_ZN9Allocator8allocateEmii
	mov r2, #0
	mov r3, #1
	bx r12
_0202DE54: .word _ZN9Allocator8allocateEmii
	arm_func_end _ZN9Allocator8allocateEm

	arm_func_start _ZN9Allocator8allocateEmii ; https://decomp.me/scratch/RvyQ1
_ZN9Allocator8allocateEmii: ; 0x0202DE58
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, lr}
	sub sp, sp, #8
	ldr r7, _0202E198 ; =0x0208C340
	mov r10, r0
	ldrb r11, [r7]
	ldrb r6, [r7, #1]
	ldrb r5, [r7, #2]
	ldrb r4, [r7, #3]
	ldrb r12, [r7, #4]
	add r0, r10, #0xc
	mov r9, r1
	mov r8, r2
	mov r7, r3
	strb r11, [sp]
	strb r6, [sp, #1]
	strb r5, [sp, #2]
	strb r4, [sp, #3]
	strb r12, [sp, #4]
	bl OS_LockMutex
	bl OS_DisableInterrupts
	ldr r2, [r10, #0x4c]
	add r1, r9, #3
	mov r11, r0
	cmp r2, #0
	mvnge r0, #0
	bic r9, r1, #3
	strge r0, [r10, #0x4c]
	bge _0202DF10
	cmp r8, #4
	bgt _0202DED8
	beq _0202DF04
	b _0202DF0C
_0202DED8:
	cmp r8, #0x13
	bgt _0202DF0C
	cmp r8, #0xd
	blt _0202DF0C
	cmpne r8, #0xe
	beq _0202DEF8
	cmp r8, #0x13
	bne _0202DF0C
_0202DEF8:
	mov r2, #3
	mov r7, #1
	b _0202DF10
_0202DF04:
	mov r2, #2
	b _0202DF10
_0202DF0C:
	ldr r2, [r10, #0x50]
_0202DF10:
	cmp r8, #4
	moveq r2, #2
	tst r2, #0x100
	bicne r2, r2, #0x100
	add r0, r10, r2, lsl #2
	ldr r5, [r0, #0x24]
	movne r7, #0
	cmp r2, #2
	mov r6, r5
	mov r4, #0
	beq _0202DF44
	cmp r9, #0x32000
	movge r7, r4
_0202DF44:
	cmp r7, #0
	beq _0202DFD4
	cmp r5, #0
	beq _0202E028
_0202DF54:
	ldrb r0, [r5]
	cmp r0, #0
	bne _0202DFC4
	ldr r0, [r5, #4]
	cmp r0, r9
	blo _0202DFC4
	ldrb r1, [r6]
	cmp r1, #0
	movne r6, r5
	ldr r1, [r6, #4]
	cmp r1, r9
	movlo r6, r5
	cmp r0, r9, lsl #1
	bhs _0202DF98
	ldr r1, [r6, #4]
	cmp r1, r0
	movhi r6, r5
_0202DF98:
	ldr r1, [r6, #4]
	cmp r1, r9
	beq _0202E028
	ldr r1, [r5, #0xc]
	cmp r1, #0
	addne r0, r5, r0
	addne r0, r0, #0x10
	cmpne r1, r0
	beq _0202DFC4
	mov r0, r5
	bl _ZN9Allocator8tryMergeEPNS_17AllocatorMetadataE
_0202DFC4:
	ldr r5, [r5, #0xc]
	cmp r5, #0
	bne _0202DF54
	b _0202E028
_0202DFD4:
	ldr r0, [r5, #0xc]
	cmp r0, #0
	beq _0202DFF0
_0202DFE0:
	mov r5, r0
	ldr r0, [r0, #0xc]
	cmp r0, #0
	bne _0202DFE0
_0202DFF0:
	ldr r1, [r5, #8]
	cmp r1, #0
	beq _0202E024
_0202DFFC:
	ldr r0, [r5, #4]
	cmp r0, r9
	blo _0202E014
	ldrb r0, [r5]
	cmp r0, #0
	beq _0202E024
_0202E014:
	mov r5, r1
	ldr r1, [r1, #8]
	cmp r1, #0
	bne _0202DFFC
_0202E024:
	mov r6, r5
_0202E028:
	ldrb r1, [r6]
	mov r0, #0
	cmp r1, #0
	bne _0202E044
	ldr r2, [r6, #4]
	cmp r2, r9
	bhs _0202E088
_0202E044:
	cmp r4, #5
	bge _0202E06C
	add r0, sp, #0
	ldrb r0, [r0, r4]
	mov r7, #1
	add r4, r4, #1
	add r0, r10, r0, lsl #2
	ldr r5, [r0, #0x24]
	mov r6, r5
	b _0202DF44
_0202E06C:
	mov r0, r11
	bl OS_RestoreInterrupts
	add r0, r10, #0xc
	bl OS_UnlockMutex
	add sp, sp, #8
	mov r0, #0
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_0202E088:
	cmp r7, #1
	add r1, r9, #0x40
	bne _0202E0E4
	cmp r2, r1
	bls _0202E134
	add r1, r6, #0x10
	strb r0, [r1, r9]
	ldr r0, [r6, #4]
	add r1, r1, r9
	sub r0, r0, r9
	sub r0, r0, #0x10
	str r0, [r1, #4]
	ldrh r0, [r6, #2]
	strh r0, [r1, #2]
	str r6, [r1, #8]
	ldr r0, [r6, #0xc]
	str r0, [r1, #0xc]
	str r1, [r6, #0xc]
	ldr r0, [r1, #0xc]
	cmp r0, #0
	strne r1, [r0, #8]
	str r9, [r6, #4]
	b _0202E134
_0202E0E4:
	cmp r2, r1
	bls _0202E134
	ldr r1, [r5, #4]
	add r2, r6, #0x10
	sub r1, r1, r9
	add r1, r2, r1
	strb r0, [r1, #-0x10]
	sub r6, r1, #0x10
	str r9, [r6, #4]
	str r5, [r6, #8]
	ldr r0, [r5, #0xc]
	str r0, [r6, #0xc]
	str r6, [r5, #0xc]
	ldr r0, [r6, #0xc]
	cmp r0, #0
	strne r6, [r0, #8]
	ldr r1, [r5, #4]
	add r0, r9, #0x10
	sub r0, r1, r0
	str r0, [r5, #4]
_0202E134:
	mov r0, #1
	strb r0, [r6]
	mov r4, #0x10
	mov r0, r6
	mov r1, r4
	strh r8, [r6, #2]
	bl DC_FlushRange
	ldr r0, [r6, #8]
	cmp r0, #0
	beq _0202E164
	mov r1, r4
	bl DC_FlushRange
_0202E164:
	ldr r0, [r6, #0xc]
	cmp r0, #0
	beq _0202E178
	mov r1, #0x10
	bl DC_FlushRange
_0202E178:
	bl DC_WaitWriteBufferEmpty
	mov r0, r11
	bl OS_RestoreInterrupts
	add r0, r10, #0xc
	bl OS_UnlockMutex
	add r0, r6, #0x10
	add sp, sp, #8
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_0202E198: .word unk_0208C340
	arm_func_end _ZN9Allocator8allocateEmii

	arm_func_start _ZN9Allocator12setNextArenaEi
_ZN9Allocator12setNextArenaEi: ; 0x0202E19C
	ldr r2, [r0, #0x4c]
	str r1, [r0, #0x4c]
	mov r0, r2
	bx lr
	arm_func_end _ZN9Allocator12setNextArenaEi

	arm_func_start _ZN9Allocator15setDefaultArenaEi
_ZN9Allocator15setDefaultArenaEi: ; 0x0202E1AC
	ldr r2, [r0, #0x50]
	cmp r1, #0
	strge r1, [r0, #0x50]
	mov r0, r2
	bx lr
	arm_func_end _ZN9Allocator15setDefaultArenaEi

	arm_func_start _ZN9Allocator10deallocateEPv ; https://decomp.me/scratch/lyon1
_ZN9Allocator10deallocateEPv: ; 0x0202E1C0
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	movs r6, r1
	mov r7, r0
	ldmeqfd sp!, {r3, r4, r5, r6, r7, pc}
	mov r2, #0
	mov r3, r2
_0202E1D8:
	add r0, r7, r3, lsl #2
	ldr r1, [r0, #0x24]
	cmp r6, r1
	blo _0202E1FC
	ldr r0, [r0, #0x38]
	add r0, r1, r0
	cmp r6, r0
	movlo r2, r1
	blo _0202E208
_0202E1FC:
	add r3, r3, #1
	cmp r3, #5
	blt _0202E1D8
_0202E208:
	cmp r2, #0
	bne _0202E218
	bl OS_Terminate
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_0202E218:
	add r0, r7, #0xc
	bl OS_LockMutex
	bl OS_DisableInterrupts
	sub r5, r6, #0x10
	ldrb r1, [r5]
	mov r4, r0
	cmp r1, #0
	bne _0202E248
	bl OS_RestoreInterrupts
	add r0, r7, #0xc
	bl OS_UnlockMutex
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_0202E248:
	ldr r2, [r5, #0xc]
	cmp r2, #0
	ldrne r1, [r5, #4]
	addne r1, r6, r1
	cmpne r2, r1
	beq _0202E270
	bl OS_RestoreInterrupts
	add r0, r7, #0xc
	bl OS_UnlockMutex
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
_0202E270:
	mov r0, #0
	strb r0, [r5]
	ldr r2, [r5, #8]
	cmp r2, #0
	beq _0202E2C4
	ldrb r0, [r2]
	cmp r0, #0
	bne _0202E2C4
	ldr r0, [r5, #4]
	ldr r1, [r2, #4]
	add r0, r0, #0x10
	add r0, r1, r0
	str r0, [r2, #4]
	ldr r1, [r5, #0xc]
	ldr r0, [r5, #8]
	str r1, [r0, #0xc]
	ldr r1, [r5, #0xc]
	cmp r1, #0
	ldrne r0, [r5, #8]
	strne r0, [r1, #8]
	ldr r5, [r5, #8]
_0202E2C4:
	mov r6, #0x10
	mov r0, r5
	mov r1, r6
	bl DC_FlushRange
	ldr r0, [r5, #8]
	cmp r0, #0
	beq _0202E2E8
	mov r1, r6
	bl DC_FlushRange
_0202E2E8:
	ldr r0, [r5, #0xc]
	cmp r0, #0
	beq _0202E2FC
	mov r1, #0x10
	bl DC_FlushRange
_0202E2FC:
	ldr r1, [r5, #0xc]
	cmp r1, #0
	beq _0202E33C
	ldrb r0, [r1]
	cmp r0, #0
	bne _0202E33C
	ldr r0, [r1, #4]
	ldr r1, [r5, #4]
	add r0, r0, #0x10
	add r0, r1, r0
	str r0, [r5, #4]
	ldr r0, [r5, #0xc]
	ldr r0, [r0, #0xc]
	str r0, [r5, #0xc]
	cmp r0, #0
	strne r5, [r0, #8]
_0202E33C:
	mov r6, #0x10
	mov r0, r5
	mov r1, r6
	bl DC_FlushRange
	ldr r0, [r5, #8]
	cmp r0, #0
	beq _0202E360
	mov r1, r6
	bl DC_FlushRange
_0202E360:
	ldr r0, [r5, #0xc]
	cmp r0, #0
	beq _0202E374
	mov r1, #0x10
	bl DC_FlushRange
_0202E374:
	bl DC_WaitWriteBufferEmpty
	mov r0, r4
	bl OS_RestoreInterrupts
	add r0, r7, #0xc
	bl OS_UnlockMutex
	ldmfd sp!, {r3, r4, r5, r6, r7, pc}
	arm_func_end _ZN9Allocator10deallocateEPv

	arm_func_start _ZN9Allocator11getHeapInfoEPiS0_S0_
_ZN9Allocator11getHeapInfoEPiS0_S0_: ; 0x0202E38C
	stmfd sp!, {r4, r5, r6, r7, r8, lr}
	movs r7, r1
	mov r8, r0
	movne r0, #0
	mov r6, r2
	strne r0, [r7]
	cmp r6, #0
	movne r0, #0
	mov r5, r3
	strne r0, [r6]
	cmp r5, #0
	mvnne r0, #0
	strne r0, [r5]
	ldmib r8, {r0, r1}
	bl OS_GetTotalFreeSize
	mov r4, #0
	mov r0, r4
	bl OS_GetArenaLo
	mov r0, r4
	bl OS_GetArenaHi
	mov r0, r4
_0202E3E0:
	add r1, r8, r4, lsl #2
	ldr r12, [r1, #0x24]
	cmp r12, #0
	beq _0202E464
	mov r2, r0
	mov r1, r0
	mov lr, r0
	beq _0202E42C
_0202E400:
	ldrb r3, [r12]
	cmp r3, #0
	ldr r3, [r12, #4]
	addne lr, lr, r3
	bne _0202E420
	cmp r3, r2
	add r1, r1, r3
	movhi r2, r3
_0202E420:
	ldr r12, [r12, #0xc]
	cmp r12, #0
	bne _0202E400
_0202E42C:
	cmp r7, #0
	ldrne r3, [r7]
	addne r3, r3, lr
	strne r3, [r7]
	cmp r6, #0
	ldrne r3, [r6]
	addne r1, r3, r1
	strne r1, [r6]
	cmp r5, #0
	beq _0202E464
	ldr r1, [r5]
	cmp r1, #0
	cmpge r1, r2
	strlt r2, [r5]
_0202E464:
	add r4, r4, #1
	cmp r4, #5
	blt _0202E3E0
	ldmfd sp!, {r4, r5, r6, r7, r8, pc}
	arm_func_end _ZN9Allocator11getHeapInfoEPiS0_S0_
