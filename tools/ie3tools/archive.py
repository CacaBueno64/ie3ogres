from ndspy import lz10
from struct import unpack, unpack_from, Struct
import os
import ieutil
from dataclasses import dataclass

def open_pkb(filename: str, extension: str, filepath: str, compressed: bool) -> dict[str, bytes]:
    files = {}
    with open(filepath, "rb") as pkb, open(filepath.replace(".pkb", ".pkh"), "rb") as pkh:
        pkb_data = pkb.read()
        pkh_data = pkh.read()
    
    if not os.path.isdir("./tools/ie3archives/" + filename):
        os.makedirs("./tools/ie3archives/" + filename)
    
    if b"PackNum " in pkh_data[:8]:
        HEADER = Struct("<16s HHHH II 16s")
        packnum, size, arctype, unk0, count, unk1, entries_len, pad = \
            unpack_from(HEADER.format, pkh_data)
        entries_data = pkh_data[HEADER.size : size]
        
        if arctype == 0:
            ENTRY = Struct("<III")
            offset = 0
            for i in range(count):
                Id, ptr, size = unpack_from(ENTRY.format, entries_data, offset)
                offset += 12
                
                finalname = filename + str(Id).zfill(8) + extension
                data      = pkb_data[ptr : ptr + size]
                if compressed:
                    data = lz10.decompress(data)
                
                files[finalname] = data
        
        elif arctype == 2 or arctype == 3:
            offset = 0
            for i in range(count):
                Id = unpack_from("<I", entries_data, offset)
                offset += 4
                
                finalname = filename + str(Id).zfill(8) + extension
                ptr       = i * entries_len
                size      = entries_len
                data      = pkb_data[ptr : ptr + size]
                if compressed:
                    data = lz10.decompress(data)
                
                files[finalname] = data
    
    else:
        count = len(pkb_data) // 0x10
        offset = 0
        for i in range(count):
            Id, ptr, size, flags = unpack_from("<IIII", pkh_data, offset)
            offset += 16

            print(Id // 0x1000, hex(Id))
            if i > 10:
                break
    
    return files

open_pkb("eve", ".ssd", "./files/data_iz/spr/char/pch.pkb", True)

def open_pac(data: bytes = None, filepath: str = None, compressed: bool = False) -> list[bytes]:
    if filepath and not data:
        with open(filepath, "rb") as file:
            data = file.read()
    if compressed:
        data = lz10.decompress(data)
    
    filecount = unpack("<I", data[0:4])[0]
    if filecount == 0:
        raise ValueError("there's no files inside this archive")
    
    offset = 4
    files = []
    totalsize = 0
    for i in range(filecount):
        ptr, size = unpack_from("<II", data, offset)
        offset += 8
        
        files.append(data[ptr : ptr + size])
        totalsize += size
    
    totalsize_check = unpack_from("<I", data, offset)[0]
    if totalsize != totalsize_check:
        print("unread data")
    
    return files

@dataclass
class SFPHeader:
    magic: str
    unk_4: int
    unk_8: int
    chunk_size: int
    size: int
    unk_14: int
    unk_18: int
    unk_1c: int
    
@dataclass
class SFPMember:
    str_off: int
    size: int
    data_off: int
    unk_c: int
    
## extensions: .SPF_
def open_sfp(filename: str, filepath: str) -> None:
    sfp_data = None
    with open(filepath, "rb") as sfp:
        sfp_data = sfp.read()
        
    if not sfp_data or len(sfp_data) < 1:
        return
       
    if filepath.endswith("_") and sfp_data[0] == 0x10:
        sfp_data = lz10.decompress(sfp_data)
            
    HEADER = Struct("<4sIIIIIII")
    if len(sfp_data) <  HEADER.size:
        return
        
    ## Member table header
    header = SFPHeader(*unpack_from(HEADER.format, sfp_data))
    
    MEMBER = Struct("<IIII")
    members = []
    min_str_off = 0xffffffff ## in-game the first member is used to determine the start, we use the lowest address instead
    pos = HEADER.size
    while pos < min_str_off:
        if pos >= len(sfp_data):
            break
        member = SFPMember(*unpack_from(MEMBER.format, sfp_data, pos))
        if member.str_off < min_str_off:
            min_str_off = member.str_off
        members.append(member)
        pos += MEMBER.size
    
    ## Member content/unk header
    fc_header = SFPHeader(*unpack_from(HEADER.format, sfp_data, header.size))
    
    os.makedirs(f"./tools/ie3tools/scratch/{filename}", exist_ok=True)
        
    for member in members:
        with open(f"./tools/ie3tools/scratch/{filename}/{ieutil.read_string(sfp_data, member.str_off)}", "wb") as file:
            pos = header.size + fc_header.chunk_size * member.data_off
            file.write(sfp_data[pos:pos + member.size])
    
#open_pkb("eve", ".ssd", "./files/data_iz/script/eve.pkb", True)
#open_sfp("MASConfig", "./files/data_iz/pic2d/menu/MASConfig.SPF_")
