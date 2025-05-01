def findholes(text):
    offsets = {}
    offset = ""
    for i, line in enumerate(text.splitlines()):
        #line = line.strip()
        split = line.split(" ")
        
        if line.startswith("_02"):
            offset = line.replace("_", "").replace(":", "")
        if line.startswith("\t.byte"):
            if len(split) == 5:
                if "0xE" in split[4]:
                    offsets[offset] = {}
            if len(split) == 9:
                for s in (split[4], split[8]):
                    if "0xE" in s:
                        offsets[offset] = {}
            if len(split) == 13:
                for s in (split[4], split[8], split[12]):
                    if "0xE" in s:
                        offsets[offset] = {}
            if len(split) == 17:
                for s in (split[4], split[8], split[12], split[16]):
                    if "0xE" in s:
                        offsets[offset] = {}
    
    for addr in offsets:
        print(addr)

with open("./ie3/asm/arm9.s", "rt") as file:
    text = file.read()
    findholes(text)