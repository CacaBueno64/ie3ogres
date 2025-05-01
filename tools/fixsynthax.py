def fix_syntax(text:str):
    output = []
    conds = ("eq", "ne", "gt", "hi", "hs", "ge", "cs", "lt", "cc", "le", "ls", "lo", "mi", "pl")
    for line in text.splitlines():
        if "\t" in line or "    " in line:
            indent = True
        else: indent = False
        
        line = line.strip()
        line = line.replace(" sb", " r9")
        line = line.replace(" sl", " r10")
        line = line.replace(" fp", " r11")
        line = line.replace(" ip", " r12")
        line = line.replace("{sb", "{r9")
        line = line.replace("{sl", "{r10")
        line = line.replace("{fp", "{r11")
        line = line.replace("{ip", "{r12")
        line = line.replace("[sb", "[r9")
        line = line.replace("[sl", "[r10")
        line = line.replace("[fp", "[r11")
        line = line.replace("[ip", "[r12")
        line = line.replace("apsr_nzcvq", "cpsr_flg")
        line = line.replace("apsr", "cpsr")
        line = line.replace("@", ";")
        split = line.split(" ")
        fixed = ""
        
        if line.startswith(("lsr", "lsl", "asr", "ror")):
            if len(split) == 4:
                for ins in ("lsr", "lsl", "asr", "ror"):
                    if ins in split[0]:
                        fixed = f"\t{split[0].replace(ins, 'mov')} {split[1]} {split[2]} {ins} {split[3]}"
                        output.append(fixed)
                        break
                continue
        else:
            if len(split[0]) == 6 and split[0][3:4] == "s" and split[0][4:6] in conds:
                op = split[0][:3]
                dtype = split[0][3:4]
                cond = split[0][4:6]
                fixed = f"\t{op}{cond}{dtype}"
                for j in split[1:]:
                    fixed += f" {j}"
                output.append(fixed)
                continue
        
        if line.startswith(("ldr", "str")):
            if len(split[0]) > 4:
                if split[0][3:5] not in conds:
                    dtype = ""
                    cond = ""
                    if split[0][3:5] in ("sb", "sh"):
                        dtype = split[0][3:5]
                        if len(split[0]) > 5:
                            cond = split[0][5:7]
                    else:
                        dtype = split[0][3:4]
                        cond = split[0][4:]
                    fixed = f"\t{split[0][:3]}{cond}{dtype}"
                    for j in split[1:]:
                        fixed += f" {j}"
                    output.append(fixed)
                    continue
        
        if line.startswith(("ldm", "stm")):
            fixed = None
            if len(split[0]) == 3:
                fixed = f"\t{split[0]}ia"
            if len(split[0]) == 5:
                if split[0][3:] in conds:
                    fixed = f"\t{split[0]}ia"
            if len(split[0]) > 5:
                if split[0][5:7] in conds:
                    dtype = split[0][3:5]
                    cond = split[0][5:7]
                    fixed = f"\t{split[0][:3]}{cond}{dtype}"
            if fixed is not None:
                for j in split[1:]:
                    fixed += f" {j}"
                output.append(fixed)
                continue
        
        if line.startswith("pop"):
            fixed = None
            if len(split[0]) == 3:
                fixed = f"\tldmfd sp!,"
            if len(split[0]) > 3:
                if split[0][3:5] in conds:
                    fixed = f"\tldm{split[0][3:5]}fd sp!,"
            if fixed is not None:
                for j in split[1:]:
                    fixed += f" {j}"
                output.append(fixed)
                continue
        if line.startswith("push"):
            fixed = None
            if len(split[0]) == 4:
                fixed = f"\tstmfd sp!,"
            if len(split[0]) > 3:
                if split[0][4:6] in conds:
                    fixed = f"\tstm{split[0][4:6]}fd sp!,"
            if fixed is not None:
                for j in split[1:]:
                    fixed += f" {j}"
                output.append(fixed)
                continue
        
        if line.startswith(("mcr", "mrc")):
            if len(split) == 7:
                if "#" in line:
                    fst = split[2]
                    snd = split[6]
                    if "#" in fst:
                        fst = fst.replace("#", "")
                    if "#" in snd:
                        snd = snd.replace("#", "")
                    fixed = f"\t{split[0]} {split[1]} {fst} {split[3]} {split[4]} {split[5]} {snd}"
                    output.append(fixed)
                    continue
        
        if line.startswith("rrx"):
            if len(split) == 3:
                fixed = f"\tmov {split[1]} {split[2]}, rrx"
                output.append(fixed)
                continue
        
        if indent:
            line = "\t" + line
        output.append(line)
    
    return "\n".join(output)

with open("./ie3/asm/arm9.s", "rt") as file:
    text = file.read()
    with open("./ie3/asm/arm9fix.s", "wt") as out:
        out.write(fix_syntax(text))