from struct import Struct, unpack, unpack_from
import os

class OvTblEntry:
    STRCT = Struct("<IIIIIIII")
    def __init__(self, data, cur):
        self.id, self.start, self.size, self.bssSize, \
        self.sinitStart, self.sinitEnd, self.fileId, self.compression \
            = unpack_from(OvTblEntry.STRCT.format, data, cur)

def datatotxt(data: bytes, offset, ov: OvTblEntry, addresses, dataOffset):
    output = ""
    curOffset = offset
    byteIndex = offset % 16
    newline = True
    
    def readWord(cur, i, d, a):
        try:
            return unpack_from("<I", d, i)[0]
        except:
            return 0
    def readByte(i, d):
        return unpack_from("<B", d, i)[0]
    
    i = 0
    while i < len(data):
        if byteIndex >= 16:
            byteIndex = 0
            newline = True
        
        if curOffset in addresses:
            output += f"\n\t.global ov{ov.id}_{curOffset:08X}\nov{ov.id}_{curOffset:08X}:"
            newline = True
        
        if byteIndex % 4 == 0:
            word = readWord(curOffset, i, data, addresses)
            if word != 0 and word >= 0x02000800 and word < 0x02160000 and (word % 4 == 0):
                symbol = ""
                if word >= 0x02000800 and word < 0x02090000:
                    symbol = f"FUN_" + f"{word:08X}".lower()
                elif word >= 0x020bcb40 and word < 0x020ede60:
                    symbol = f"FUN_ov1_" + f"{word:08X}".lower()
                elif word >= 0x020ede60 and word < 0x0211786c:
                    symbol = f"FUN_ov16_" + f"{word:08X}".lower()
                elif word >= ov.start and word < dataOffset:
                    symbol = f"FUN_ov{ov.id}_" + f"{word:08X}".lower()
                else:
                    symbol = f"ov{ov.id}_{word:08X}"
                output += f"\n\t.word {symbol}"
                byteIndex += 4
                curOffset += 4
                i += 4
                newline = True
                continue
        
        if byteIndex == 0 or newline:
            output += f"\n\t.byte 0x{readByte(i, data):02X}"
            byteIndex += 1
            curOffset += 1
            i += 1
            newline = False
        else:
            output += f", 0x{readByte(i, data):02X}"
            byteIndex += 1
            curOffset += 1
            i += 1
    
    return output

with open(f"./build/ie3ojp/main_table.sbin", "rb") as file:
    data = file.read()
    ovtbl = []
    for i in range(len(data) // 0x20):
        cur = i * 0x20
        ovtbl.append(OvTblEntry(data, cur))

for ovid in [131, 132]:
    if not os.path.exists(f"./asm/overlay{ovid}.s"):
        continue
    #ovid = 26

    ov: OvTblEntry = ovtbl[ovid]

    with open(f"./build/ie3ojp/overlay{ov.id}.sbin", "rb") as file:
        data = file.read()
    with open(f"./asm/overlay{ov.id}.s", "rt") as file:
        txt = file.read()

    hasRodata = True
    if txt.find(".rodata") != -1:
        print(ov.id, "rodataed")
        continue
    rodataIdx = txt.find(f"\t.global ov{ov.id}")
    dataIdx = txt.find(f"\t.data\n\t.global ov{ov.id}_")
    if dataIdx == -1:
        raise ValueError(f"ov{ov.id} not dataing")
    if rodataIdx > dataIdx:
        hasRodata = False
    initOffset = unpack_from("<I", data, ov.sinitStart - ov.start)[0]
    initIdx = txt.find(f"\tarm_func_start FUN_ov{ov.id}_" + f"{initOffset:08X}".lower())
    bssIdx = txt.find("\t.bss")

    addresses = []
    for i in range(len(data) // 4):
        buffer = unpack_from("<I", data, i * 4)[0]
        if buffer >= ov.start and buffer < (ov.start + ov.size):
            addresses.append(buffer)
    for line in txt.splitlines():
        if ".global ov" in line:
            idx = line.find(".global ov") + len(f".global ov{ov.id}_")
            addresses.append(int(line[idx : idx + 8], 16))

    dataOffsetIdx = dataIdx + len(f"\t.data\n\t.global ov{ov.id}_")
    dataOffset = int(txt[dataOffsetIdx : dataOffsetIdx + 8], 16)

    rodataTxt = ""
    dataTxt = ""
    if not hasRodata:
        print(ov.id, "not rodataing")
    if hasRodata:
        rodataOffsetIdx = rodataIdx + len(f"\t.global ov{ov.id}_")
        rodataOffset = int(txt[rodataOffsetIdx : rodataOffsetIdx + 8], 16)
        rodata = data[rodataOffset - ov.start : initOffset - ov.start]
        rodataTxt = datatotxt(rodata, rodataOffset, ov, addresses, dataOffset)

    dataData = data[dataOffset - ov.start : ]
    dataTxt = datatotxt(dataData, dataOffset, ov, addresses, dataOffset)

    output = ""
    output += txt[ : rodataIdx]
    output += "\t.rodata" + rodataTxt + "\n\n"
    output += "\t.section .init, 4\n" + txt[initIdx : dataIdx]
    output += "\t.data" + dataTxt + "\n"
    if ov.bssSize != 0:
        output += "\n" + txt[bssIdx : ] + "\n"

    filename = f"overlay{ov.id}"
    with open("./asm/" + filename + ".s", "wt") as file:
        file.write(output)

    from fixincludes import fixincludes
    includes = fixincludes(output)
    with open("./asm/include/" + filename + ".inc", "wt") as out:
        out.write(includes)
