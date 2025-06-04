import os

src_dir = "./ie3/asm"
current_file = "overlay17.s"
addresses = {}

def makedict():
    ovname = current_file.replace("erlay", "").replace(".s", "")
    with open("./ie3/asm/global.inc", "rt") as file:
        txt = file.read()
        for line in txt.splitlines():
            if ovname not in line and "FUN_02" not in line:
                line = line.strip(" \n")
                funname = line.replace(".public", "")
                idx = funname.find("_0")
                funaddr = funname[idx+1:idx+9]
                if funaddr.upper() not in addresses:
                    addresses[funaddr.upper()] = []
                addresses[funaddr.upper()].append(funname)
def findovname(funname):
    idx1 = funname.find("ov")
    idx2 = funname.find("_0")
    return funname[idx1:idx2]
def replacelabs():
    with open(f"./ie3/asm/{current_file}", "rt") as file, open("./ie3/asm/atest.s", "wt") as out:
        txt = file.read()
        output = ""
        for line in txt.splitlines():
            if "FUN_0" in line or "=FUN_0" in line:
                idx = line.find("FUN_0")
                funaddr = line[idx+4:idx+4+8]
                if funaddr in addresses or funaddr.upper() in addresses:
                    funname: str = addresses[funaddr.upper()][0]
                    idx1 = funname.find("ov")
                    idx2 = funname.find("_0")
                    ovname = funname[idx1:idx2]
                    multiple = ""
                    if len(addresses[funaddr.upper()]) > 1:
                        multiple = " ; may be " + " ".join([findovname(j) for j in addresses[funaddr.upper()][1:]])
                    line = line.replace(f"FUN_{funaddr}", funname + multiple)
            output += line + "\n"
        out.write(output)
makedict()
replacelabs()
