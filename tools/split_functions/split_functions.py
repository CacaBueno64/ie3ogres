import os
from struct import unpack

function_name = "MI_CpuCopy8"

with open("./asm/arm9.s", "rt") as file:
    txt = file.read()
    lines = txt.splitlines()
    curfun = None
    prevtxt = ""
    nexttxt = ""
    fun = False
    first = False
    firstfun = ""
    for line in lines:
        if "func_start" in line:
            if function_name in line:
                fun = True
                curfun = function_name
            else:
                curfun = line.split(" ")[1]
        if fun and curfun != function_name:
            if not first:
                firstfun = curfun
                first = True
            nexttxt += line + "\n"
        if not fun and curfun != function_name:
            prevtxt += line + "\n"
    nexttxt = f'\n\t.include "/macros/function.inc"\n\t.include "/include/arm9.inc"\n\n\t.text\n' + nexttxt
    with open(f"./asm/arm9_split1.s", "wt") as out:
        out.write(prevtxt)
    with open(f"./asm/arm9_split2.s", "wt") as out:
        out.write(nexttxt)
    