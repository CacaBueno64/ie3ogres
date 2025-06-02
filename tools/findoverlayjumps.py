import os

src_dir = "./ie3/asm"
current_file = "overlay1.s"
addresses = {}

def makedict():
    for filename in os.listdir(src_dir):
        if "overlay" in filename and ".s" in filename and current_file not in filename and "_" not in filename:
            src_file = os.path.join(src_dir, filename)
            if os.path.isfile(src_file):
                with open(src_file, "rt") as f:
                    txt = f.read()
                    for line in txt.splitlines():
                        if line.startswith("FUN") and ":" in line:
                            ovname = filename.replace(".s", "")
                            ovname = ovname.replace("erlay", "")
                            idx = line.find("_0")
                            address = line[idx+1:idx+9].upper()
                            if address not in addresses:
                                addresses[address] = []
                            addresses[address].append(ovname)

def replacelabs():
    with open(f"./ie3/asm/{current_file}", "rt") as file, open("./ie3/asm/atest.s", "wt") as out:
        txt = file.read()
        output = ""
        for line in txt.splitlines():
            if "FUN_0" in line or "=FUN_0" in line:
                idx = line.find("FUN_0")
                funaddr = line[idx+4:idx+4+8]
                if funaddr in addresses:
                    ovname = addresses[funaddr][0]
                    funname = f"FUN_{ovname}_{funaddr.lower()}"
                    multiple = ""
                    if len(addresses[funaddr]) > 1:
                        multiple = " ; may be " + " ".join(addresses[funaddr][1:])
                    line = line.replace(f"FUN_{funaddr}", funname + multiple)
            output += line + "\n"
        out.write(output)
makedict()
replacelabs()
