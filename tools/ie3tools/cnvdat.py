from struct import unpack

def parse_c_string(data, offset):
    output = b""
    while True:
        s = data[offset: offset + 1]
        if s == b"\x00":
            break
        output += s
        offset += 1
    return output.decode()


type_table = [  ["","u8","u16","","u32","","","","u64","","","","","","",""], 
                ["","s8","s16","","s32","","","","s64","","","","","","",""]]
with open("./files/data_iz/bfmt/cnvdat.bin", "rb") as cnvdat:
    cnvdat.seek(8)
    unksize = int.from_bytes(cnvdat.read(2),"little")
    strofftablesize = int.from_bytes(cnvdat.read(2),"little")
    cnvdat.seek(0x10)
    unk_table = cnvdat.read(unksize* 8) 
    strofftable = cnvdat.read(strofftablesize* 2) 
    #print(hex(cnvdat.tell()))
    strtable = cnvdat.read()
    indent = 0
    for i in range(0,unksize):
        unk0, idx, unk4, unk6, unk7 = unpack("<HHHBB", unk_table[8*i:8*i+8])
        offset = int.from_bytes(strofftable[idx*2:idx*2+2],"little")
        name = parse_c_string(strtable, offset)
        arr_str = "" if unk4 == 1 else f"[{unk4}]"
        if (unk0&0x1fff == 2):
            print("\t"*indent + f"{type_table[(unk6>>7)&1][(unk6>>3)&0xf]} {name}{arr_str};")
        elif unk0&0x1fff == 3:
            print("\t"*indent + f"struct {{")
            indent += 1
        elif unk0&0x1fff == 0:
            indent -= 1
            print("\t"*indent + f"}} {name}{arr_str};")
        elif unk0&0x1fff == idx:
            print(f"}};\nstruct {name} {{")
            indent = 1
        elif idx == 0:
            s_idx = unk0&0x1fff
            print(f"}};\nstruct {parse_c_string(strtable, int.from_bytes(strofftable[s_idx*2:s_idx*2+2],'little'))} {{")
        else:
            s_idx = unk0&0x1fff
            print("\t"*indent + f"struct {parse_c_string(strtable, int.from_bytes(strofftable[s_idx*2:s_idx*2+2],'little'))} {name}{arr_str};")
        #print(f"{unk0:4X} {idx:4X} {unk4:4X} {unk6:16b} {offset:4X}")