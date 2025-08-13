from struct import unpack, unpack_from
from math import ceil

from archive import open_pac, open_pkb

# IMAGES

def read_footer(data: bytes) -> list[dict]:
    image_count, unk0, unk1, unk2 = unpack_from("<H BB I", data)
    image_config = []
    offset = 8
    for i in range(image_count):
        x1, y1, x2, y2 = unpack_from("HHHH", data, offset)
        offset += 8
        image_config.append({f"image{str(i).zfill(4)}": [x1, y1, x2, y2]})
    
    return image_config

class NBFP:
    """Palette"""
    
    def __init__(self):
        self.Colors = []
        self.numColors = 0
    
    def read(self, data: bytes):
        if len(data) % 2 != 0:
            raise ValueError("the filesize is not a multiple of 2: " + hex(len(data)))
        
        self.numColors = len(data) // 2
        offset = 0
        for i in range(self.numColors):
            r = g = b = unpack_from("<H", data, offset)[0]
            offset += 2
            r = ceil(((((r) >> 0)  & 0x1F) * 255) / 31)
            g = ceil(((((g) >> 5)  & 0x1F) * 255) / 31)
            b = ceil(((((b) >> 10) & 0x1F) * 255) / 31)
            self.Colors.append([r, g, b])

class NBFC:
    def __init__(self):
        self.Tiles = []
        self.width = 0
        self.height = 0
        self.bitDepth = 8
        self.hasPalette = False
        self.Palette: NBFP = None
        self.hasTransparency = False
    
    def read(self, data: bytes, image_config: list[dict]):
        for i, config in enumerate(image_config):
            # top left corner
            x1, y1 = (config[f"image{str(i).zfill(4)}"][0], config[f"image{str(i).zfill(4)}"][1])
            # bottom right corner
            x2, y2 = (config[f"image{str(i).zfill(4)}"][2], config[f"image{str(i).zfill(4)}"][3])
            
# ARCHIVES

def read_face2d_fac(filepath: str):
    with open(filepath, "rb") as file:
        data = file.read()
    pac = open_pac(data, False)
    
    nbfs_data = pac[1]
    image_config = read_footer(pac[3])
    nbfp = NBFP()
    nbfp.read(pac[0])
    nbfc = NBFC()
    nbfc.bitDepth = 4
    nbfc.hasPalette = True
    nbfc.read(pac[2], image_config)
    print(nbfp.Colors)

read_face2d_fac("./tools/ie3tools/fac/fac00000100.pac_")
