
; ndsdisasm don't want to disassemble this portion, so i did it myself

_02095cbc:
    b _02095cd0
    b _02095ce4
    b _02095cec
    b _02095d00
    b _02095d08
_02095cd0:
    mov r0, r4
    strb r5, [r4, #0x39a]
    bl FUN_021e370c
    strb r10, [r6, #0x8f] ; =0x020a06cf
    b _02095D10
_02095ce4:
    mov r0, #0x3
    b _02095d0c
_02095cec:
    mov r0, r4
    strb r5, [r4, #0x39a]
    bl FUN_021e370c
    mov r0, #0x6
    b _02095d0c
_02095d00:
    mov r0, #0x9
    b _02095d0c
_02095d08:
    mov r0, #0xc
_02095d0c:
    strb r0, [r6, #0x8f] ; =0x020a06cf