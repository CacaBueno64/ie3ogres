
	.include "asm/macros/function.inc"
	.include "libstd.inc"

	.text
	arm_func_start STD_CopyString
STD_CopyString: ; 0x02014C94
	ldrsb r2, [r1]
	mov r3, r0
	cmp r2, #0
	beq _02014CB8
_02014CA4:
	ldrsb r2, [r1]
	strb r2, [r0], #1
	ldrsb r2, [r1, #1]!
	cmp r2, #0
	bne _02014CA4
_02014CB8:
	mov r1, #0
	strb r1, [r0]
	mov r0, r3
	bx lr
	arm_func_end STD_CopyString

	arm_func_start STD_CopyLString
STD_CopyLString: ; 0x02014CC8
	stmfd sp!, {r3, r4, r5, lr}
	and lr, r0, #3
	and r4, r1, #3
	mov r3, r1
	teq lr, r4
	mov r4, #0
	bne _02014D64
	cmp lr, #0
	beq _02014D24
	sub r5, r2, #1
	b _02014D10
_02014CF4:
	ldrsb r12, [r3]
	strb r12, [r0, r4]
	ldrsb r12, [r3]
	cmp r12, #0
	beq _02014D94
	add r3, r3, #1
	add r4, r4, #1
_02014D10:
	add r12, r4, lr
	cmp r12, #4
	bhs _02014D24
	cmp r4, r5
	blt _02014CF4
_02014D24:
	sub r5, r2, #4
	cmp r4, r5
	bge _02014D60
	ldr r3, _02014DC8 ; =0x7F7F7F7F
_02014D34:
	ldr lr, [r1, r4]
	and r12, lr, r3
	add r12, r12, r3
	orr r12, r12, lr
	orr r12, r12, r3
	mvns r12, r12
	bne _02014D60
	str lr, [r0, r4]
	add r4, r4, #4
	cmp r4, r5
	blt _02014D34
_02014D60:
	add r3, r1, r4
_02014D64:
	sub r12, r2, #1
	cmp r4, r12
	bge _02014D94
_02014D70:
	ldrsb r1, [r3]
	strb r1, [r0, r4]
	ldrsb r1, [r3]
	cmp r1, #0
	beq _02014D94
	add r4, r4, #1
	cmp r4, r12
	add r3, r3, #1
	blt _02014D70
_02014D94:
	sub r1, r2, #1
	cmp r4, r1
	cmpge r2, #0
	movgt r1, #0
	strgtb r1, [r0, r4]
	ldrsb r0, [r3]
	cmp r0, #0
	beq _02014DC0
	mov r0, r3
	bl STD_GetStringLength
	add r4, r4, r0
_02014DC0:
	mov r0, r4
	ldmfd sp!, {r3, r4, r5, pc}
_02014DC8: .word 0x7F7F7F7F
	arm_func_end STD_CopyLString

	arm_func_start STD_GetStringLength
STD_GetStringLength: ; 0x02014DCC
	stmfd sp!, {r3, lr}
	tst r0, #3
	mov r12, #0
	beq _02014DFC
_02014DDC:
	ldrsb r1, [r0, r12]
	cmp r1, #0
	moveq r0, r12
	ldmeqfd sp!, {r3, pc}
	add r12, r12, #1
	add r1, r0, r12
	tst r1, #3
	bne _02014DDC
_02014DFC:
	ldr r1, _02014E4C ; =0x7F7F7F7F
	add lr, r0, r12
_02014E04:
	ldr r3, [lr]
	and r2, r3, r1
	add r2, r2, r1
	orr r2, r2, r3
	orr r2, r2, r1
	mvns r2, r2
	addeq lr, lr, #4
	addeq r12, r12, #4
	beq _02014E04
	ldrsb r1, [r0, r12]
	cmp r1, #0
	beq _02014E44
_02014E34:
	add r12, r12, #1
	ldrsb r1, [r0, r12]
	cmp r1, #0
	bne _02014E34
_02014E44:
	mov r0, r12
	ldmfd sp!, {r3, pc}
_02014E4C: .word 0x7F7F7F7F
	arm_func_end STD_GetStringLength

	arm_func_start STD_GetStringNLength
STD_GetStringNLength: ; 0x02014E50
	stmfd sp!, {r3, r4, r5, lr}
	mov r4, #0
	b _02014E70
_02014E5C:
	ldrsb r2, [r0, r4]
	cmp r2, #0
	moveq r0, r4
	ldmeqfd sp!, {r3, r4, r5, pc}
	add r4, r4, #1
_02014E70:
	add r5, r0, r4
	tst r5, #3
	beq _02014E84
	cmp r4, r1
	blt _02014E5C
_02014E84:
	sub lr, r1, #4
	cmp r4, lr
	bge _02014EC8
	ldr r2, _02014EE4 ; =0x7F7F7F7F
_02014E94:
	ldr r12, [r5]
	and r3, r12, r2
	add r3, r3, r2
	orr r3, r3, r12
	orr r3, r3, r2
	mvns r3, r3
	bne _02014EC8
	add r4, r4, #4
	cmp r4, lr
	add r5, r5, #4
	blt _02014E94
	b _02014EC8
_02014EC4:
	add r4, r4, #1
_02014EC8:
	ldrsb r2, [r0, r4]
	cmp r2, #0
	beq _02014EDC
	cmp r4, r1
	blt _02014EC4
_02014EDC:
	mov r0, r4
	ldmfd sp!, {r3, r4, r5, pc}
_02014EE4: .word 0x7F7F7F7F
	arm_func_end STD_GetStringNLength

	arm_func_start STD_ConcatenateString
STD_ConcatenateString: ; 0x02014EE8
	stmfd sp!, {r3, r4, r5, lr}
	mov r5, r0
	mov r4, r1
	bl STD_GetStringLength
	mov r1, r4
	add r0, r5, r0
	bl STD_CopyString
	mov r0, r5
	ldmfd sp!, {r3, r4, r5, pc}
	arm_func_end STD_ConcatenateString

	arm_func_start STD_CompareString
STD_CompareString: ; 0x02014F0C
	stmfd sp!, {r3, lr}
	and r12, r0, #3
	and r2, r1, #3
	teq r12, r2
	mov r2, #0
	bne _02014F94
	cmp r12, #0
	beq _02014F64
	cmp r12, #4
	bhs _02014F64
_02014F34:
	ldrb r3, [r0, r2]
	ldrb lr, [r1, r2]
	cmp r3, lr
	bne _02014F4C
	cmp r3, #0
	bne _02014F54
_02014F4C:
	sub r0, r3, lr
	ldmfd sp!, {r3, pc}
_02014F54:
	add r2, r2, #1
	add r3, r2, r12
	cmp r3, #4
	blo _02014F34
_02014F64:
	ldr r3, _02014FC0 ; =0x7F7F7F7F
_02014F68:
	ldr lr, [r0, r2]
	ldr r12, [r1, r2]
	cmp lr, r12
	bne _02014F94
	and r12, lr, r3
	add r12, r12, r3
	orr r12, r12, lr
	orr r12, r12, r3
	mvns r12, r12
	addeq r2, r2, #4
	beq _02014F68
_02014F94:
	ldrb r3, [r0, r2]
	ldrb r12, [r1, r2]
	cmp r3, r12
	bne _02014FAC
	cmp r3, #0
	bne _02014FB4
_02014FAC:
	sub r0, r3, r12
	ldmfd sp!, {r3, pc}
_02014FB4:
	add r2, r2, #1
	b _02014F94
	ldmfd sp!, {r3, pc}
_02014FC0: .word 0x7F7F7F7F
	arm_func_end STD_CompareString

	arm_func_start STD_CompareNString
STD_CompareNString: ; 0x02014FC4
	stmfd sp!, {r3, r4, r5, lr}
	cmp r2, #0
	beq _020150A0
	and r5, r0, #3
	and r3, r1, #3
	teq r5, r3
	mov r3, #0
	bne _0201506C
	cmp r5, #0
	beq _02015028
	b _02015014
_02014FF0:
	ldrb r4, [r0, r3]
	ldrb r12, [r1, r3]
	cmp r4, r12
	bne _02015008
	cmp r4, #0
	bne _02015010
_02015008:
	sub r0, r4, r12
	ldmfd sp!, {r3, r4, r5, pc}
_02015010:
	add r3, r3, #1
_02015014:
	add r4, r3, r5
	cmp r4, #4
	bhs _02015028
	cmp r3, r2
	blt _02014FF0
_02015028:
	sub r5, r2, #4
	cmp r3, r5
	bgt _0201506C
	ldr r12, _020150A8 ; =0x7F7F7F7F
_02015038:
	ldr r4, [r0, r3]
	ldr lr, [r1, r3]
	cmp r4, lr
	bne _0201506C
	and lr, r4, r12
	add lr, lr, r12
	orr lr, lr, r4
	orr lr, lr, r12
	mvns lr, lr
	bne _0201506C
	add r3, r3, #4
	cmp r3, r5
	ble _02015038
_0201506C:
	cmp r3, r2
	bge _020150A0
_02015074:
	ldrb r4, [r0, r3]
	ldrb r5, [r1, r3]
	cmp r4, r5
	bne _0201508C
	cmp r4, #0
	bne _02015094
_0201508C:
	sub r0, r4, r5
	ldmfd sp!, {r3, r4, r5, pc}
_02015094:
	add r3, r3, #1
	cmp r3, r2
	blt _02015074
_020150A0:
	mov r0, #0
	ldmfd sp!, {r3, r4, r5, pc}
_020150A8: .word 0x7F7F7F7F
	arm_func_end STD_CompareNString

	arm_func_start string_put_char
string_put_char: ; 0x020150AC
	ldr r2, [r0]
	cmp r2, #0
	ldrne r2, [r0, #4]
	strneb r1, [r2]
	ldrne r1, [r0]
	subne r1, r1, #1
	strne r1, [r0]
	ldr r1, [r0, #4]
	add r1, r1, #1
	str r1, [r0, #4]
	bx lr
	arm_func_end string_put_char

	arm_func_start string_fill_char
string_fill_char: ; 0x020150D8
	stmfd sp!, {r3, lr}
	cmp r2, #0
	ldmlefd sp!, {r3, pc}
	ldr lr, [r0]
	mov r12, #0
	cmp lr, r2
	movhi lr, r2
	cmp lr, #0
	bls _02015110
_020150FC:
	ldr r3, [r0, #4]
	strb r1, [r3, r12]
	add r12, r12, #1
	cmp r12, lr
	blo _020150FC
_02015110:
	ldr r3, [r0]
	ldr r1, [r0, #4]
	sub r3, r3, lr
	add r1, r1, r2
	str r3, [r0]
	str r1, [r0, #4]
	ldmfd sp!, {r3, pc}
	arm_func_end string_fill_char

	arm_func_start string_put_string
string_put_string: ; 0x0201512C
	stmfd sp!, {r4, lr}
	cmp r2, #0
	ldmlefd sp!, {r4, pc}
	ldr r4, [r0]
	mov lr, #0
	cmp r4, r2
	movhi r4, r2
	cmp r4, #0
	bls _02015168
_02015150:
	ldrsb r12, [r1, lr]
	ldr r3, [r0, #4]
	strb r12, [r3, lr]
	add lr, lr, #1
	cmp lr, r4
	blo _02015150
_02015168:
	ldr r3, [r0]
	ldr r1, [r0, #4]
	sub r3, r3, r4
	add r1, r1, r2
	str r3, [r0]
	str r1, [r0, #4]
	ldmfd sp!, {r4, pc}
	arm_func_end string_put_string

	arm_func_start STD_TSPrintf
STD_TSPrintf: ; 0x02015184
	stmfd sp!, {r0, r1, r2, r3}
	stmfd sp!, {r3, lr}
	add r1, sp, #0xc
	bic r1, r1, #3
	add r3, r1, #4
	ldr r2, [sp, #0xc]
	mvn r1, #0x80000000
	bl STD_TVSNPrintf
	ldmfd sp!, {r3, lr}
	add sp, sp, #0x10
	bx lr
	arm_func_end STD_TSPrintf

	arm_func_start STD_TVSNPrintf
STD_TVSNPrintf: ; 0x020151B0
	stmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, lr}
	sub sp, sp, #0x30
	mov r10, r2
	ldrsb r2, [r10]
	str r1, [sp]
	mov r11, r3
	str r1, [sp, #0xc]
	str r0, [sp, #0x14]
	str r0, [sp, #0x10]
	cmp r2, #0
	beq _02015948
_020151DC:
	ldrsb r1, [r10]
	and r0, r1, #0xff
	eor r0, r0, #0x20
	sub r0, r0, #0xa1
	cmp r0, #0x3c
	bhs _02015218
	add r0, sp, #0xc
	bl string_put_char
	ldrsb r1, [r10, #1]!
	cmp r1, #0
	beq _0201593C
_02015208:
	add r0, sp, #0xc
	add r10, r10, #1
	bl string_put_char
	b _0201593C
_02015218:
	cmp r1, #0x25
	beq _02015224
	b _02015208
_02015224:
	mov r5, #0
	mov r6, r5
	mov r2, r10
	sub r7, r5, #1
	mov r0, #0xa
	mov r3, #0x57
_0201523C:
	ldrsb r4, [r10, #1]!
	cmp r4, #0x20
	bgt _02015250
	beq _0201528C
	b _020152A4
_02015250:
	cmp r4, #0x30
	bgt _020152A4
	cmp r4, #0x2b
	blt _020152A4
	beq _02015278
	cmp r4, #0x2d
	beq _02015294
	cmp r4, #0x30
	beq _0201529C
	b _020152A4
_02015278:
	ldrsb r1, [r10, #-1]
	cmp r1, #0x20
	bne _020152A4
	orr r5, r5, #2
	b _0201523C
_0201528C:
	orr r5, r5, #1
	b _0201523C
_02015294:
	orr r5, r5, #8
	b _0201523C
_0201529C:
	orr r5, r5, #0x10
	b _0201523C
_020152A4:
	cmp r4, #0x2a
	bne _020152C8
	add r11, r11, #4
	ldr r6, [r11, #-4]
	add r10, r10, #1
	cmp r6, #0
	rsblt r6, r6, #0
	orrlt r5, r5, #8
	b _020152F0
_020152C8:
	mov r1, #0xa
	b _020152DC
_020152D0:
	ldrsb r4, [r10], #1
	mla r4, r6, r1, r4
	sub r6, r4, #0x30
_020152DC:
	ldrsb r4, [r10]
	cmp r4, #0x30
	blt _020152F0
	cmp r4, #0x39
	ble _020152D0
_020152F0:
	ldrsb r1, [r10]
	cmp r1, #0x2e
	bne _0201534C
	ldrsb r1, [r10, #1]!
	mov r7, #0
	cmp r1, #0x2a
	bne _02015324
	add r11, r11, #4
	ldr r7, [r11, #-4]
	add r10, r10, #1
	cmp r7, #0
	mvnlt r7, #0
	b _0201534C
_02015324:
	mov r1, #0xa
	b _02015338
_0201532C:
	ldrsb r4, [r10], #1
	mla r4, r7, r1, r4
	sub r7, r4, #0x30
_02015338:
	ldrsb r4, [r10]
	cmp r4, #0x30
	blt _0201534C
	cmp r4, #0x39
	ble _0201532C
_0201534C:
	ldrsb r1, [r10]
	cmp r1, #0x68
	beq _02015364
	cmp r1, #0x6c
	beq _0201537C
	b _02015390
_02015364:
	ldrsb r1, [r10, #1]!
	cmp r1, #0x68
	orrne r5, r5, #0x40
	addeq r10, r10, #1
	orreq r5, r5, #0x100
	b _02015390
_0201537C:
	ldrsb r1, [r10, #1]!
	cmp r1, #0x6c
	orrne r5, r5, #0x20
	addeq r10, r10, #1
	orreq r5, r5, #0x80
_02015390:
	ldrsb r1, [r10]
	cmp r1, #0x69
	bgt _020153D4
	cmp r1, #0x63
	blt _020153B8
	beq _0201543C
	cmp r1, #0x64
	cmpne r1, #0x69
	beq _02015590
	b _02015574
_020153B8:
	cmp r1, #0x25
	bgt _020153C8
	beq _02015564
	b _02015574
_020153C8:
	cmp r1, #0x58
	beq _02015428
	b _02015574
_020153D4:
	cmp r1, #0x70
	bgt _020153EC
	bge _02015430
	cmp r1, #0x6f
	beq _02015414
	b _02015574
_020153EC:
	cmp r1, #0x78
	bgt _02015574
	cmp r1, #0x73
	blt _02015574
	beq _020154B0
	cmp r1, #0x75
	beq _02015420
	cmp r1, #0x78
	beq _02015588
	b _02015574
_02015414:
	orr r5, r5, #0x1000
	mov r0, #8
	b _02015590
_02015420:
	orr r5, r5, #0x1000
	b _02015590
_02015428:
	mov r3, #0x37
	b _02015588
_02015430:
	orr r5, r5, #4
	mov r7, #8
	b _02015588
_0201543C:
	cmp r7, #0
	add r4, sp, #0xc
	bge _02015574
	add r11, r11, #4
	tst r5, #8
	ldr r7, [r11, #-4]
	beq _0201547C
	mov r1, r7, lsl #0x18
	mov r0, r4
	mov r1, r1, asr #0x18
	bl string_put_char
	mov r0, r4
	sub r2, r6, #1
	mov r1, #0x20
	bl string_fill_char
	b _020154AC
_0201547C:
	tst r5, #0x10
	movne r0, #0x30
	moveq r0, #0x20
	mov r1, r0, lsl #0x18
	mov r0, r4
	mov r1, r1, asr #0x18
	sub r2, r6, #1
	bl string_fill_char
	mov r1, r7, lsl #0x18
	mov r0, r4
	mov r1, r1, asr #0x18
	bl string_put_char
_020154AC:
	b _02015938
_020154B0:
	add r11, r11, #4
	cmp r7, #0
	ldr r8, [r11, #-4]
	add r9, sp, #0xc
	mov r4, #0
	bge _020154EC
	ldrsb r0, [r8]
	cmp r0, #0
	beq _02015500
_020154D4:
	add r4, r4, #1
	ldrsb r0, [r8, r4]
	cmp r0, #0
	bne _020154D4
	b _02015500
_020154E8:
	add r4, r4, #1
_020154EC:
	cmp r4, r7
	bge _02015500
	ldrsb r0, [r8, r4]
	cmp r0, #0
	bne _020154E8
_02015500:
	tst r5, #8
	sub r6, r6, r4
	beq _02015530
	mov r0, r9
	mov r1, r8
	mov r2, r4
	bl string_put_string
	mov r0, r9
	mov r2, r6
	mov r1, #0x20
	bl string_fill_char
	b _02015560
_02015530:
	tst r5, #0x10
	movne r0, #0x30
	moveq r0, #0x20
	mov r1, r0, lsl #0x18
	mov r0, r9
	mov r2, r6
	mov r1, r1, asr #0x18
	bl string_fill_char
	mov r0, r9
	mov r1, r8
	mov r2, r4
	bl string_put_string
_02015560:
	b _02015938
_02015564:
	add r0, r2, #1
	cmp r0, r10
	bne _02015574
	b _02015208
_02015574:
	mov r1, r2
	add r0, sp, #0xc
	sub r2, r10, r2
	bl string_put_string
	b _0201593C
_02015588:
	orr r5, r5, #0x1000
	mov r0, #0x10
_02015590:
	tst r5, #8
	bicne r5, r5, #0x10
	cmp r7, #0
	bicge r5, r5, #0x10
	movlt r7, #1
	mov r4, #0
	tst r5, #0x1000
	beq _02015650
	tst r5, #0x100
	addne r11, r11, #4
	ldrne r2, [r11, #-4]
	movne r1, #0
	andne r8, r2, #0xff
	bne _02015604
	tst r5, #0x40
	beq _020155E8
	add r11, r11, #4
	ldr r2, [r11, #-4]
	mov r1, #0
	mov r2, r2, lsl #0x10
	mov r8, r2, lsr #0x10
	b _02015604
_020155E8:
	tst r5, #0x80
	addne r11, r11, #8
	ldrne r1, [r11, #-4]
	ldrne r8, [r11, #-8]
	addeq r11, r11, #4
	ldreq r8, [r11, #-4]
	moveq r1, #0
_02015604:
	bic r5, r5, #3
	tst r5, #4
	beq _02015718
	cmp r0, #0x10
	bne _0201563C
	cmp r1, #0
	cmpeq r8, #0
	beq _02015718
	add r4, r3, #0x21
	mov r2, #0x30
	strb r4, [sp, #8]
	strb r2, [sp, #9]
	mov r4, #2
	b _02015718
_0201563C:
	cmp r0, #8
	moveq r2, #0x30
	streqb r2, [sp, #8]
	moveq r4, #1
	b _02015718
_02015650:
	tst r5, #0x100
	beq _02015670
	add r11, r11, #4
	ldr r1, [r11, #-4]
	mov r1, r1, lsl #0x18
	mov r8, r1, asr #0x18
_02015668:
	mov r1, r8, asr #0x1f
	b _020156A8
_02015670:
	tst r5, #0x40
	beq _0201568C
	add r11, r11, #4
	ldr r1, [r11, #-4]
	mov r1, r1, lsl #0x10
	mov r8, r1, asr #0x10
	b _02015668
_0201568C:
	tst r5, #0x80
	addne r11, r11, #8
	ldrne r8, [r11, #-8]
	ldrne r1, [r11, #-4]
	addeq r11, r11, #4
	ldreq r8, [r11, #-4]
	moveq r1, r8, asr #0x1f
_020156A8:
	mov r2, #0
	and r9, r2, #0
	cmp r9, #0
	and r9, r1, #0x80000000
	cmpeq r9, #0
	beq _020156E0
	mvn r8, r8
	mov r4, #0x2d
	strb r4, [sp, #8]
	mvn r1, r1
	adds r8, r8, #1
	adc r1, r1, r2
	mov r4, #1
	b _02015718
_020156E0:
	cmp r1, r2
	cmpeq r8, r2
	bne _020156F4
	cmp r7, #0
	beq _02015718
_020156F4:
	tst r5, #2
	movne r2, #0x2b
	strneb r2, [sp, #8]
	movne r4, #1
	bne _02015718
	tst r5, #1
	movne r2, #0x20
	strneb r2, [sp, #8]
	movne r4, #1
_02015718:
	cmp r0, #8
	mov r9, #0
	beq _02015738
	cmp r0, #0xa
	beq _02015778
	cmp r0, #0x10
	beq _02015810
	b _02015854
_02015738:
	cmp r1, r9
	cmpeq r8, r9
	beq _02015854
	add r0, sp, #0x18
_02015748:
	and r2, r8, #7
	mov r8, r8, lsr #3
	add r2, r2, #0x30
	strb r2, [r0, r9]
	mov r2, r1, lsr #3
	cmp r2, #0
	orr r8, r8, r1, lsl #29
	mov r1, r2
	cmpeq r8, #0
	add r9, r9, #1
	bne _02015748
	b _02015854
_02015778:
	mov r0, r9
	cmp r0, r9
	cmpeq r1, r9
	bne _020157C4
	cmp r8, #0
	mov r3, #0xa
	beq _02015854
	ldr r2, _02015988 ; =0xCCCCCCCD
	add r12, sp, #0x18
_0201579C:
	umull r1, r0, r8, r2
	movs r0, r0, lsr #3
	mul r1, r0, r3
	sub r1, r8, r1
	mov r8, r0
	add r0, r1, #0x30
	strb r0, [r12, r9]
	add r9, r9, #1
	bne _0201579C
	b _02015854
_020157C4:
	cmp r1, r9
	cmpeq r8, r9
	beq _02015854
_020157D0:
	mov r0, r8
	mov r2, #0xa
	mov r3, #0
	bl _ll_udiv
	mov r2, #0xa
	umull r3, r2, r0, r2
	subs r2, r8, r3
	add r3, r2, #0x30
	add r2, sp, #0x18
	strb r3, [r2, r9]
	cmp r1, #0
	cmpeq r0, #0
	mov r8, r0
	add r9, r9, #1
	bne _020157D0
	b _02015854
_02015810:
	cmp r1, r9
	cmpeq r8, r9
	beq _02015854
	add r0, sp, #0x18
_02015820:
	and r12, r8, #0xf
	mov r8, r8, lsr #4
	mov r2, r1, lsr #4
	orr r8, r8, r1, lsl #28
	cmp r12, #0xa
	mov r1, r2
	addlt r2, r12, #0x30
	addge r2, r12, r3
	strb r2, [r0, r9]
	cmp r1, #0
	cmpeq r8, #0
	add r9, r9, #1
	bne _02015820
_02015854:
	cmp r4, #0
	add r0, sp, #0x18
	add r8, sp, #0xc
	ble _0201587C
	ldrsb r1, [sp, #8]
	cmp r1, #0x30
	moveq r1, #0x30
	streqb r1, [r0, r9]
	addeq r9, r9, #1
	moveq r4, #0
_0201587C:
	tst r5, #0x10
	subne r0, r6, r9
	sub r7, r7, r9
	subne r0, r0, r4
	cmpne r7, r0
	movlt r7, r0
	cmp r7, #0
	subgt r6, r6, r7
	add r0, r4, r9
	sub r6, r6, r0
	ands r0, r5, #8
	str r0, [sp, #4]
	bne _020158C0
	add r0, sp, #0xc
	mov r2, r6
	mov r1, #0x20
	bl string_fill_char
_020158C0:
	cmp r4, #0
	ble _020158E4
	add r5, sp, #8
_020158CC:
	sub r4, r4, #1
	ldrsb r1, [r5, r4]
	mov r0, r8
	bl string_put_char
	cmp r4, #0
	bgt _020158CC
_020158E4:
	add r5, sp, #0xc
	mov r2, r7
	mov r0, r5
	mov r1, #0x30
	bl string_fill_char
	cmp r9, #0
	ble _0201591C
	add r4, sp, #0x18
_02015904:
	sub r9, r9, #1
	ldrsb r1, [r4, r9]
	mov r0, r5
	bl string_put_char
	cmp r9, #0
	bgt _02015904
_0201591C:
	ldr r0, [sp, #4]
	cmp r0, #0
	beq _02015938
	add r0, sp, #0xc
	mov r2, r6
	mov r1, #0x20
	bl string_fill_char
_02015938:
	add r10, r10, #1
_0201593C:
	ldrsb r0, [r10]
	cmp r0, #0
	bne _020151DC
_02015948:
	ldr r0, [sp, #0xc]
	mov r2, #0
	cmp r0, #0
	ldrne r0, [sp, #0x10]
	strneb r2, [r0]
	bne _02015974
	ldr r0, [sp]
	cmp r0, #0
	ldrne r1, [sp, #0x14]
	addne r0, r1, r0
	strneb r2, [r0, #-1]
_02015974:
	ldr r1, [sp, #0x10]
	ldr r0, [sp, #0x14]
	sub r0, r1, r0
	add sp, sp, #0x30
	ldmfd sp!, {r3, r4, r5, r6, r7, r8, r9, r10, r11, pc}
_02015988: .word 0xCCCCCCCD
	arm_func_end STD_TVSNPrintf
