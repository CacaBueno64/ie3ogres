import os

for filename in ["overlay24.s"]:#os.listdir("./asm"):
    #if not filename.endswith(".s") and not "arm_0" in filename:
    #    continue
    filepath = "./asm/" + filename
    with open(filepath, "rt") as file:
        txt = file.read()
        lines = txt.splitlines()
    symbols = []
    includes = {}
    for line in lines:
        if "func_start " in line or ".global " in line:
            sym = line.split()[1]
            symbols.append(sym)
        if line.startswith("_") and line.endswith(":"):
            sym = line[:9]
            symbols.append(sym)
    for line in lines:
        if "b " in line or "bl " in line or "blx " in line:
            if "b" == line.split()[0] or "bl" == line.split()[0] or "blx" == line.split()[0]:
                sym = line.split()[1]
                if not sym in symbols \
                    and not "r0" == sym \
                    and not "r1" == sym \
                    and not "r2" == sym \
                    and not "r3" == sym \
                    and not "r4" == sym \
                    and not "r5" == sym \
                    and not "r6" == sym \
                    and not "r7" == sym \
                    and not "r8" == sym \
                    and not "r9" == sym \
                    and not "r10" == sym \
                    and not "r11" == sym \
                    and not "r12" == sym \
                    and not "sp" == sym \
                    and not "lr" == sym \
                    and not "pc" == sym:
                        includes[sym] = {}
        elif ".word " in line and not "0x" in line and not line.startswith("_") and not "," in line:
            sym = line.split()[1]
            if len(sym) > 1:
                if not sym in symbols:
                    includes[sym] = {}
        elif ".word " in line and not "0x" in line and line.startswith("_") and not "," in line:
            sym = line.split()[2]
            if len(sym) > 1:
                if not sym in symbols:
                    includes[sym] = {}
        elif ".word " in line and "+ 0x" in line and line.startswith("_") and not "," in line:
            sym = line.split()[2]
            if len(sym) > 1:
                if not sym in symbols:
                    includes[sym] = {}
    with open("./asm/include/" + filename.replace(".s", ".inc"), "wt") as out:
        for i in includes:
            out.write(".public " + i + "\n")
        