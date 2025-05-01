from struct import unpack

with open("./ie3/asm/arm9.s", "rt") as file:
    text = file.read()
    functions = {}
    function = ""
    for i, line in enumerate(text.splitlines()):
        line = line.strip()
        split = line.split(" ")
        
        if "arm_func_start" in line:
            function = split[1]
        for s in split:
            if "FUN" in s:
                jump = s.replace(":", "").replace("=", "").replace("thunk_", "").replace("EXT_", "").split("_")[1]
                b = int(jump, 16)
                if b > int("020975d0", 16) and b <= int("021604bf", 16):
                    functions[function]
    
    for f in functions:
        print(f)