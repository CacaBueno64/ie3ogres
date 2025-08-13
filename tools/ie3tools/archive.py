from ndspy import lz10
from struct import unpack, unpack_from, Struct
import os

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
    
    return files

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

#open_pkb("eve", ".ssd", "./files/data_iz/script/eve.pkb", True)
