from struct import unpack, pack
from io import BytesIO

def getInsType(value: int):
    highByte = (value >> 24) & 0xFF
    if (highByte & 0xE) == 0xA:
        if (highByte & 0xF0) == 0xF0:
            return 1
        elif highByte & 1:
            return 2
        else:
            return 3
    return 0

def decrypt(data: BytesIO, ctx: int, bss: int, ovStart: int):
    data.seek(ctx - 12)
    data.write(pack("<III", 0, 0, 0))
    
    while True:
        data.seek(ctx)
        startAddr = unpack("<I", data.read(4))[0] - ovStart
        endAddr = unpack("<I", data.read(4))[0] - ovStart
        
        startPtr = startAddr - (0x1000)
        offsetWords = ((endAddr - bss) - 0x1000)
        endPtr = startPtr + offsetWords
        
        encKey = 0XF0B9A2EA
        
        while startPtr < endPtr:
            data.seek(startPtr)
            instruction = unpack("<I", data.read(4))[0]
            data.seek(startPtr)
            insType = getInsType(instruction)
            if insType == 1 or insType == 3:
                r1 = (instruction & 0x0FFFFFF)
                r1 = r1 + 0XFFFFFBFE
                r0 = instruction & 0xFF000000
                r1 = r1 & 0x0FFFFFF
                r0 = r0 ^ 0x1000000
                r1 = r0 | r1
                r0 = encKey ^ (r1 >> 24)
                data.write(pack("<I", r1))
                encKey = r0 & 0x00FFFFFF
            elif insType == 2:
                instruction ^= 0x01000000
                v0 = instruction
                v1 = v0 ^ encKey
                v0 = encKey ^ v1 ^ (v1 >> 8)
                data.write(pack("<I", v1))
                encKey = v0 & 0x00FFFFFF
            else:
                v0 = instruction
                v1 = v0 ^ encKey
                v0 = encKey ^ v1 ^ (v1 >> 8)
                data.write(pack("<I", v1))
                encKey = v0 & 0x00FFFFFF
            
            startPtr += 4
        
        data.seek(ctx)
        data.write(pack("<II", 0, 0))
        
        ctx += 8
        if unpack("<I", data.read(4))[0] == 0:
            break

def main():
    with open("./build/ie3ojp/main_table.sbin", "rb") as file:
        y9 = file.read()
    with open("./build/ie3ojp/overlay129.sbin", "rb") as file:
        data = BytesIO(file.read())
    y9 = y9[129 * 32: (129 * 32) + 32]
    id         = unpack("<I", y9[0x00:0x04])[0]
    ovStart    = unpack("<I", y9[0x04:0x08])[0]
    ovSize     = unpack("<I", y9[0x08:0x0C])[0]
    bssSize    = unpack("<I", y9[0x0C:0x10])[0]
    sinitStart = unpack("<I", y9[0x10:0x14])[0] - ovStart
    sinitEnd   = unpack("<I", y9[0x14:0x18])[0] - ovStart
    bssAddr    = ovSize
    
    data.seek(sinitStart)
    sinit = data.read(sinitEnd - sinitStart)
    addresses = []
    for i in range((len(sinit) // 4) - 1):
        addr = unpack("<I", sinit[i * 4 : (i * 4) + 4])[0] - ovStart
        
        decrypt(data, addr + 12, bssAddr, ovStart)
    
    with open("./tools/mod129encry/overlay129.dec", "wb") as out:
        out.write(data.getvalue())

main()
