from io import BytesIO
import os
from struct import unpack
from zlib import crc32
"""data = bytes().fromhex("28 f2 11 02 10 00 00 00 38 f2 11 02 11 00 00 00 48 f0 11 02 0e 00 00 00 48 f2 11 02 01 00 00 00 58 f2 11 02 02 00 00 00 68 f2 11 02 03 00 00 00 98 f0 11 02 0a 00 00 00 08 f1 11 02 04 00 00 00 18 f1 11 02 07 00 00 00 98 f1 11 02 09 00 00 00 c8 f1 11 02 0c 00 00 00 08 f2 11 02 0d 00 00 00 78 ef 11 02 12 00 00 00 68 ef 11 02 13 00 00 00 38 ef 11 02 14 00 00 00 88 ef 11 02 15 00 00 00 98 ef 11 02 16 00 00 00 b8 ef 11 02 17 00 00 00 c8 ef 11 02 18 00 00 00 f8 ef 11 02 19 00 00 00 08 f0 11 02 1a 00 00 00 28 f0 11 02 1b 00 00 00 38 f0 11 02 08 00 00 00 58 f0 11 02 0f 00 00 00 88 f0 11 02 05 00 00 00 c8 f0 11 02 06 00 00 00 88 f1 11 02 0b 00 00 00 18 f2 11 02 1c 00 00 00 28 ef 11 02 1d 00 00 00 00 00 00 00 00 00 00 00 78 f2 11 02 10 00 00 00 88 f2 11 02 11 00 00 00 f8 f1 11 02 0e 00 00 00 98 f2 11 02 01 00 00 00 a8 f2 11 02 02 00 00 00 b8 f2 11 02 03 00 00 00 a8 f1 11 02 0a 00 00 00 b8 f1 11 02 04 00 00 00 d8 f1 11 02 07 00 00 00 e8 f1 11 02 09 00 00 00 78 f1 11 02 0c 00 00 00 68 f1 11 02 0d 00 00 00 58 f1 11 02 12 00 00 00 48 f1 11 02 13 00 00 00 38 f1 11 02 14 00 00 00 28 f1 11 02 15 00 00 00 48 ef 11 02 16 00 00 00 58 ef 11 02 17 00 00 00 f8 f0 11 02 18 00 00 00 e8 f0 11 02 19 00 00 00 d8 f0 11 02 1a 00 00 00 a8 ef 11 02 1b 00 00 00 b8 f0 11 02 08 00 00 00 a8 f0 11 02 0f 00 00 00 d8 ef 11 02 05 00 00 00 e8 ef 11 02 06 00 00 00 78 f0 11 02 0b 00 00 00 68 f0 11 02 1c 00 00 00 18 f0 11 02 1d 00 00 00 00 00 00 00 00 00 00 00")
output = ""
symbols = []
for filename in os.listdir("./asm"):
    if not ".s" in filename:
        continue
    filepath = "./asm/" + filename
    with open(filepath, "rt") as file:
        txt = file.read()
    lines = txt.splitlines()
    for line in lines:
        if "func_start" in line:
            symbols.append(line.split(" ")[1])

with BytesIO(data) as reader:
    for i in range(len(data) // 4):
        addr = unpack("<I", reader.read(4))[0]
        addrtxt = f"{addr:08X}".lower()
        symbol = ""
        for sym in symbols:
            if addrtxt in sym:
                if symbol != "":
                    print("double : " + addrtxt)
                symbol = sym
        if symbol == "":
            output += f"\t.word 0x{addr:08X}\n"
        else:
            output += f"\t.word {symbol}\n"
        
        
print(output)"""
"""
with open("./asm/overlay15.s", "rt") as file:
    txt = file.read()
sym = []
for line in txt.splitlines():
    if "func_start" in line:
        sym.append(line.split(" ")[1])
with open("./symbols.txt", "wt") as out:
    for s in sym:
        out.write(s + "\n")
"""
print(hex(crc32(b"(20)")))
