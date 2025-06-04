def fixthumb():
    with open("./ie3/asm/overlay17.s", "rt") as file, open("./ie3/asm/overlay17fix.s", "wt") as out:
        thumb = False
        txt = file.read()
        output = ""
        for line in txt.splitlines():
            if "func_start" in line:
                if "thumb" in line:
                    thumb = True
                else:
                    thumb = False
            
            if thumb:
                if "stmfd sp!," in line:
                    line = line.replace("stmfd sp!,", "push")
                if "ldmfd sp!," in line:
                    line = line.replace("ldmfd sp!,", "pop")
                if "movs" in line:
                    line = line.replace("movs", "mov")
                if "adds" in line:
                    line = line.replace("adds", "add")
                if "subs" in line:
                    line = line.replace("subs", "sub")
                if "muls" in line:
                    line = line.replace("muls", "mul")
                if "orrs" in line:
                    line = line.replace("orrs", "orr")
                if "eors" in line:
                    line = line.replace("eors", "eor")
                if "mvns" in line:
                    line = line.replace("mvns", "mvn")
                if "ands" in line:
                    line = line.replace("ands", "and")
                if "bics" in line:
                    line = line.replace("bics", "bic")
                if "adcs" in line:
                    line = line.replace("adcs", "adc")
                if "rors" in line:
                    line = line.replace("rors", "ror")
                #if "rsbs" in line:
                #    line = line.replace("rsbs", "neg")
                
                if "lsr" in line and "mov" in line:
                    line = line.replace("lsr ", "").replace("mov", "lsr")
                if "lsl" in line and "mov" in line:
                    line = line.replace("lsl ", "").replace("mov", "lsl")
                if "asr" in line and "mov" in line:
                    line = line.replace("asr ", "").replace("mov", "asr")
                
                if "mul" in line:
                    split = line.split(" ")
                    comma = split[1].find(",")
                    if split[1][:comma] == split[3]:
                        split[2] = split[2].replace(",", "")
                        line = " ".join(split[:3])
                
                if ".2byte" in line:
                    line = line.replace(".2byte", ".short")
                
            output += line + "\n"
        out.write(output)

fixthumb()
