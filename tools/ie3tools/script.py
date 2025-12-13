from struct import unpack_from, Struct
from io import BytesIO
import math

def ssd_read(data: BytesIO):
    header = Struct("<4s I I hh II II")
    ssd, version, size, instCount, strCount, instSize, strSize, pad0, pad1 = \
        unpack_from(header.format, data.read(header.size))
    
    inst = []
    for i in range(instCount):
        instruction = Struct("<HhHBb")
        num, size, Id, argCount, unk = \
            unpack_from(instruction.format, data.read(instruction.size))
        cur = data.tell()
        if num != i+1: raise ValueError(f"error at {hex(cur)}, num: {num}, id: {hex(Id)}")
        args = []
        argTypes = []
        if argCount != 0:
            for j in range(4 * math.ceil(argCount / 8)):
                types = unpack_from("<B", data.read(1))[0]
                type1 = types & 0xF
                type2 = (types >> 4) & 0xF
                if type1 == 0:
                    break
                argTypes.append(type1)
                if type2 == 0:
                    break
                argTypes.append(type2)
            data.seek(cur + (4 * math.ceil(argCount / 8)))
            for j in range(argCount):
                args.append({"type": argTypes[j], "arg": unpack_from("<I", data.read(4))[0]})
        
        inst.append({"num": hex(num), "id": hex(Id), "args": args})
    
    for i in range(strCount):
        num, arg, size = unpack_from("<hbb", data.read(4))
        size -= 4
        string: bytes = unpack_from("<" + str(size) + "s", data.read(size))[0]
        string = string.decode("shift-jis", errors="ignore").replace("\x00", "")
    
        for ins in inst:
            if hex(num) == ins["num"]:
                ins["args"][arg - 1]["arg"] = string
    
    return inst

#with open("./tools/ie3tools/scripts/eve32010010.ssd", "rb") as file:
#    output = ssd_read(BytesIO(file.read()))
#    #print(output)
#with open("./tools/ie3tools/scripts/eve32010010.txt", "wt", encoding="shift-jis") as out:
#    for o in output:
#        out.write(str(o) + "\n")

print(hex(8 + (4 * 1)))
