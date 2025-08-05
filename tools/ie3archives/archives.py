from ndspy import lz10
from struct import unpack, unpack_from, Struct
import os

def open_pkb(filename: str, extension: str, filepath: str, compressed):
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
                Id, ptr, size = unpack_from(ENTRY.format, entries_data, offset); offset += 12
                
                finalname = filename + str(Id).zfill(8) + extension
                data      = pkb_data[ptr : ptr + size]
                
                with open("./tools/ie3archives/" + filename + "/" + finalname, "wb") as out:
                    if compressed:
                        data = lz10.decompress(data)
                    out.write(data)
        
        elif arctype == 2 or arctype == 3:
            offset = 0
            for i in range(count):
                Id = unpack_from("<I", entries_data, offset); offset += 4
                
                finalname = filename + str(Id).zfill(8) + extension
                ptr       = i * entries_len
                size      = entries_len
                data      = pkb_data[ptr : ptr + size]
                
                with open("./tools/ie3archives/" + filename + "/" + finalname, "wb") as out:
                    if compressed:
                        data = lz10.decompress(data)
                    out.write(data)

open_pkb("eve", ".ssd", "./files/data_iz/script/eve.pkb", True)
