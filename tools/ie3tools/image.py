#!/usr/bin/env/python3

from PIL import Image
from struct import pack, unpack, unpack_from, Struct
from dataclasses import dataclass
from pathlib import Path
import json

PAC_PSCM_HEADER = Struct("<I II II II II I") # Palette Screen Character Metadata
PAC_PSC_HEADER = Struct("<I II II II I") # Palette Screen Character
PAC_BPM_HEADER = Struct("<I II II II I") # Bitmap Palette Metadata
PAC_CP_HEADER = Struct("<I II II I") # Character Palette
PAC_METADATA = Struct("<H BBB 3B")
PAC_METADATA_CELL = Struct("<HHHH")
PAC_get_header = {
    "PSCM": PAC_PSCM_HEADER,
    "PSC": PAC_PSC_HEADER,
    "BPM": PAC_BPM_HEADER,
    "CP": PAC_CP_HEADER,
}

GX_TEXFMT_PLTT16 = 3
GX_TEXFMT_PLTT256 = 4
GXTexSizeST = {
    8: 0,
    16: 1,
    32: 2,
    64: 3,
    128: 4,
    256: 5,
    512: 6,
    1024: 7,
}
def get_st(width: int, height: int) -> tuple[int, int]:
    return (GXTexSizeST[1 << (width - 1).bit_length()], GXTexSizeST[1 << (height - 1).bit_length()])

def pad(data: bytes) -> bytes:
    """32 bytes padding."""
    pad_len = (-len(data)) % 32
    return data + bytes([0xFF]) * pad_len

####################################################
# METADATA
####################################################

class PACMetaData:
    @dataclass
    class Cell:
        s: int
        t: int
        w: int
        h: int
    
    def __init__(self):
        self.count = 0
        self.s = 0
        self.t = 0
        self.fmt = 0
        self.cells: list[PACMetaData.Cell] = [PACMetaData.Cell(0, 0, 0, 0)]
    
    def set_st(self, width: int, height: int):
        self.s, self.t = get_st(width, height)
    
    def read(self, data: bytes):
        self.count, self.s, self.t, self.fmt, pad, pad, pad = \
            unpack_from(PAC_METADATA.format, data)
        
        self.cells = []
        for i in range(self.count):
            self.cells.append(
                PACMetaData.Cell(*unpack_from(PAC_METADATA_CELL.format, data, PAC_METADATA.size + (i * PAC_METADATA_CELL.size)))
            )
    
    def write(self) -> bytes:
        output = b""
        output += pack(PAC_METADATA.format, self.count, self.s, self.t, self.fmt, 0, 0, 0)
        for i in range(self.count):
            output += pack(PAC_METADATA_CELL.format, self.cells[i].s, self.cells[i].t, self.cells[i].w, self.cells[i].h)
        
        return output
    
    def read_config(self, path: Path):
        if not path.exists():
            self.count = 1
            return

        with open(path, "rt") as file:
            text = file.read()
        
        meta = json.loads(text)
        self.count = len(meta["Cells"])
        self.s = meta["GXTexSizeS"]
        self.t = meta["GXTexSizeT"]
        self.fmt = meta["GXTexFmt"]

        self.cells = []
        for i in range(self.count):
            self.cells.append(PACMetaData.Cell(
                meta["Cells"][i]["x"],
                meta["Cells"][i]["y"],
                meta["Cells"][i]["w"],
                meta["Cells"][i]["h"],
            ))
    
    def write_config(self, outpath: Path):
        output = {
            "GXTexSizeS": self.s,
            "GXTexSizeT": self.t,
            "GXTexFmt": self.fmt,
            "Cells": []
        }
        for i in range(self.count):
            output["Cells"].append({
                "x": self.cells[i].s,
                "y": self.cells[i].t,
                "w": self.cells[i].w,
                "h": self.cells[i].h,
            })
        
        with open(outpath, "wt") as out:
            out.write(json.dumps(output, indent=4))

####################################################
# PALETTE
####################################################

def open_palette_pal(path: Path = None) -> list:
    """Get a palette from a `*.pal` file

    >>> open_palette_pal("./path/to/palette.pal")
    [255, 0, 255, 32, 32, 32, 164, 148, 148, ...]
    """

    if not path:
        return None
    
    with open(path, "rt") as file:
        text = file.read()
    
    palette = []
    for line in text.splitlines():
        if (len(palette) // 3) > 255:
            print("warning: the palette exceeds 255 colors")
            break
        split = line.split(" ")
        palette.append([int(split[0]), int(split[1]), int(split[2])])

    return palette

def write_palette_pal(outpath: Path, palette: list):
    output = ""

    for i in range(len(palette) // 3):
        r, g, b = palette[i * 3 : (i * 3) + 3]
        
        output += f"{r}, {g}, {b}\n"

    with open(outpath, "wt") as out:
        out.write(output)

def fill_palette(palette: list, count: int):
    if count <= 16:
        palette += [0 for i in range((16 - count) * 3)]
    elif count > 16 and count < 256:
        palette += [0 for i in range((256 - count) * 3)]
    return palette

def flatten_palette(palette: list):
    flat_palette = []
    for r, g, b in palette:
        flat_palette += [r] + [g] + [b]
    return flat_palette

def swap_palette_index(data: bytes, palette: list, i: int, j: int) -> tuple[bytes, list]:
    """Swap the color of index i with the color of index j"""
    
    data = bytearray(data)
    for n, p in enumerate(data):
        if p == j:
            data[n] = i
        elif p == i:
            data[n] = j
    p0 = palette[j * 3 : (j * 3) + 3]
    p1 = palette[i * 3 : (i * 3) + 3]
    palette[j * 3 : (j * 3) + 3] = p1
    palette[i * 3 : (i * 3) + 3] = p0
    
    return (bytes(data), palette)

def get_palette_from_dict(palette: dict) -> list:
    """Get a [r, g, b, r, g, b, ...] list from a non paletted png
    May not work
    
    >>> get_palette_from_dict(dict(img.getcolors()))
    >>> get_palette_from_dict([(163: (255, 255, 255, 255)), (1660: (255, 4, 214, 255)): (132, (247, 8, 24, 255)), ...])
    [255, 4, 214, 255, 255, 255, 247, 8, 24, ...]
    """
    
    output = []
    count = 0
    for i in palette:
        output.append(palette[i][0])
        output.append(palette[i][1])
        output.append(palette[i][2])
        count += 1
    
    return fill_palette(output, count)

def get_palette_from_data(data: bytes) -> list:
    """Get [r, g, b] list from BGR555 palette data

    >>> get_palette_from_data(data)
    [[255, 0, 255], [32, 32, 32], [164, 148, 148], ...]
    """

    if len(data) % 2 != 0:
        raise ValueError("gfx: the filesize is not a multiple of 2: " + hex(len(data)))
    
    colors = []
    count = len(data) // 2
    offset = 0
    for i in range(count):
        c = unpack_from("<H", data, offset)[0]
        offset += 2
        r = ((((c) >> 0)  & 0x1F) * 255) // 31
        g = ((((c) >> 5)  & 0x1F) * 255) // 31
        b = ((((c) >> 10) & 0x1F) * 255) // 31
        colors.append([r, g, b])
    
    return colors

def write_palette_data(palette: list, fmt: int) -> bytes:
    """Convert RGB palette to BGR555 data

    >>> write_palette_data(img.getpalette())
    >>> write_palette_data([255, 0, 255, 32, 32, 32, 164, 148, 148, ...])
    """

    rbg = [palette[i : i + 3] for i in range(0, len(palette), 3)]
    output = bytes()
    
    count = 16
    if fmt == GX_TEXFMT_PLTT256:
        count = 256
    
    for i in range(count):
        r, g, b = rbg[i]
        
        rgb = (((b // 8) << 10) | ((g // 8) << 5) | (r // 8))

        output += pack("<B", rgb & 0xFF)
        output += pack("<B", rgb >> 8)

    return output

def get_palette_from_png(img: Image.Image) -> list:
    img = img.convert("RGB")

    palette = []
    for x in range(img.width):
        r, g, b = img.getpixel((x, 0))
        palette.append(r)
        palette.append(g)
        palette.append(b)
    
    return palette
    
def write_palette_png(outpath: Path, palette: list):
    img = Image.new("RGB", (len(palette) // 3, 1))

    for i in range(len(palette) // 3):
        r, g, b = palette[i * 3 : (i * 3) + 3]
        img.putpixel((i, 0), (r, g, b))
    
    img.save(outpath)

def set_palette(img: Image.Image, palette: list) -> Image.Image:
    img.putpalette(fill_palette(palette, len(palette) // 3))
    return img

def get_image(img: Image.Image, palette: list = None, alpha: int = None) -> Image.Image:
    """Fix non-paletted png and set the correct bitdepth"""

    if palette:
        pal_img = Image.new("P", (1, 1))
        
        img = img.convert("RGB").quantize(palette=set_palette(pal_img, palette))
    elif alpha:
        img = img.convert("RGB")

        rgb = [(alpha >> 16) & 0xFF, (alpha >> 8) & 0xFF, alpha & 0xFF]
        if not rgb in img.getpalette():
            raise ValueError(f"gfx: invalid alpha color: {hex(alpha)}")
        
        h = img.histogram()
        i = h.index(max(h))
        if i != 0:
            data, palette = swap_palette_index(img.tobytes(), img.getpalette(), i, 0)
        
        img = Image.frombytes("P", img.size, data)
        img = set_palette(palette)
    else:
        img = img.convert("RGB")

    if len(img.getpalette()) > 16:
        return img.quantize()
    else:
        return img.quantize(16)

####################################################
# IMAGE DATA
####################################################

def convert_tiles_to_tex_PSCM(meta: PACMetaData, chara: bytes, screen: bytes) -> bytes:
    """Convert raw character+screen (NBFC+NBFS?) data to NTFT texture"""

    ppby = 1
    if (meta.fmt == GX_TEXFMT_PLTT16):
        ppby = 2
    
    size = ((8 << meta.s) * (8 << meta.t)) // ppby
    dest = bytearray(size)
    
    tile_size_x = 8 // ppby
    width = (8 << meta.s) // 8
    height = (8 << meta.t) // 8
    
    for y in range(height):
        for x in range(width):
            tile_size = tile_size_x * 8
            scrn_idx = (y * width + x) * 2
            char_idx = unpack("<H", screen[scrn_idx : scrn_idx + 2])[0]
            
            for r in range(8):
                dest_idx = tile_size_x * ((r + y * 8) * width + x)
                chara_idx = (tile_size * char_idx) + (r * tile_size_x)
                dest[dest_idx : dest_idx + tile_size_x] = chara[chara_idx : chara_idx + tile_size_x]
    
    return bytes(dest)

def convert_tiles_to_tex_PSC(chara: bytes, screen: bytes, width: int, fmt: int) -> tuple[bytes, int, int]:
    """Convert raw character+screen (NBFC+NBFS?) data to NTFT texture"""

    ppby = 1
    if (fmt == GX_TEXFMT_PLTT16):
        ppby = 2
    
    height = len(screen) // width // 2
    tex_width = width * 8
    tex_height = height * 8
    size = (tex_width * tex_height) // ppby
    
    dest = bytearray(size)

    tile_size_x = 8 // ppby
    tile_size = tile_size_x * 8

    for y in range(height):
        for x in range(width):
            scrn_idx = (y * width + x) * 2
            entry = unpack("<H", screen[scrn_idx : scrn_idx + 2])[0]

            char_idx = entry & 0x03FF
            hflip = bool(entry & 0x0400)
            vflip = bool(entry & 0x0800)

            for r in range(8):
                src_row = r
                if vflip:
                    src_row = 7 - r
                
                dest_idx = tile_size_x * ((r + y * 8) * width + x)
                chara_idx = char_idx * tile_size + src_row * tile_size_x

                row = bytearray(chara[chara_idx : chara_idx + tile_size_x])

                if hflip:
                    if fmt == GX_TEXFMT_PLTT16:
                        pixels = []
                        for b in row:
                            pixels.append(b & 0x0F)
                            pixels.append(b >> 4)
                        pixels.reverse()

                        row = bytearray(4)
                        for i in range(4):
                            row[i] = pixels[i * 2] | (pixels[i * 2 + 1] << 4)
                    else:
                        row.reverse()

                dest[dest_idx : dest_idx + tile_size_x] = row
    
    return (bytes(dest), tex_width, tex_height)

def convert_tiles_to_tex_CP(chara: bytes, width: int, fmt: int) -> tuple[bytes, int, int]:
    """Convert raw character (NBFC?) data to NTFT texture"""

    ppby = 1
    if (fmt == GX_TEXFMT_PLTT16):
        ppby = 2

    tile_size_x = 8 // ppby
    tile_size = tile_size_x * 8

    tile_count = len(chara) // tile_size

    height = tile_count // width

    tex_width = width * 8
    tex_height = height * 8

    size = (tex_width * tex_height) // ppby
    dest = bytearray(size)

    for tile in range(tile_count):
        x = tile % width
        y = tile // width

        src_base = tile * tile_size

        for r in range(8):
            src = src_base + r * tile_size_x
            dst = tile_size_x * ((y * 8 + r) * width + x)

            dest[dst : dst + tile_size_x] = chara[src : src + tile_size_x]

    return (bytes(dest), tex_width, tex_height)

def convert_tex_to_image(texture: bytes, palette: list,
                         width: int, height: int,
                         fmt: int,
                         real_width: int = None, real_height: int = None) -> Image.Image:
    """Convert NTFT texture data to Pillow Image"""

    total = len(texture)
    if fmt == GX_TEXFMT_PLTT16:
        total = len(texture) * 2
    
    if width is None:
        width = (total + height - 1) // height
    if height is None:
        height = (total + width - 1) // width
    
    if fmt == GX_TEXFMT_PLTT16:
        px = bytearray(total)
        for i, t in enumerate(texture):
            px[i * 2] = t & 0x0F
            px[i * 2 + 1] = t >> 4
    elif fmt == GX_TEXFMT_PLTT256:
        px = texture
    else:
        raise ValueError("gfx: unsupported format for paletted image")
    
    rw = real_width or width
    rh = real_height or height

    img = Image.frombytes("P", (width, height), bytes(px[ : width * height]))

    if rw != width or rh != height:
        img = img.crop((0, 0, rw, rh))
    
    img.putpalette(flatten_palette(palette))
    
    return img

def convert_bmp_to_char_and_screen(bitmap: bytes, tex_width: int, tex_height: int, fmt: int) -> tuple[bytes, bytes]:
    """Convert Bitmap data to raw character+screen"""

    ppby = 1
    if fmt == GX_TEXFMT_PLTT16:
        ppby = 2

    tile_size_x = 8 // ppby
    tile_size = tile_size_x * 8

    width = tex_width // 8
    height = tex_height // 8

    chara = bytearray(width * height * tile_size)
    screen = bytearray(width * height * 2)

    char_idx = 0

    for y in range(height):
        for x in range(width):
            screen[(y * width + x) * 2 : (y * width + x + 1) * 2] = pack("<H", char_idx)

            for r in range(8):
                tex_idx = tile_size_x * ((r + y * 8) * width + x)
                chara_idx = char_idx * tile_size + r * tile_size_x
                chara[chara_idx : chara_idx + tile_size_x] = bitmap[tex_idx : tex_idx + tile_size_x]

            char_idx += 1

    return (bytes(screen), bytes(chara))

def convert_bmp_to_char_and_screen_opt(bitmap: bytes, tex_width: int, tex_height: int, fmt: int) -> tuple[bytes, bytes]:
    """Convert Bitmap data to raw character+screen with some optimizations
    (no duplicate tiles, and apply flips if needed)
    """

    ppby = 1
    if fmt == GX_TEXFMT_PLTT16:
        ppby = 2

    width = tex_width // 8
    height = tex_height // 8

    tile_size_x = 8 // ppby
    tile_size = tile_size_x * 8

    chara = bytearray()
    screen = bytearray()

    tile_map = {}

    def flip_tile_h(tile: bytes) -> bytes:
        result = bytearray(tile_size)

        for r in range(8):
            row = tile[r * tile_size_x : (r + 1) * tile_size_x]

            if fmt == GX_TEXFMT_PLTT16:
                pixels = []
                for b in row:
                    pixels.append(b & 0x0F)
                    pixels.append(b >> 4)

                pixels.reverse()

                for i in range(tile_size_x):
                    result[r * tile_size_x + i] = (
                        pixels[i * 2] |
                        (pixels[i * 2 + 1] << 4)
                    )
            else:
                result[r * tile_size_x : (r + 1) * tile_size_x] = reversed(row)

        return bytes(result)

    def flip_tile_v(tile: bytes) -> bytes:
        result = bytearray(tile_size)

        for r in range(8):
            src = (7 - r) * tile_size_x
            dst = r * tile_size_x
            result[dst : dst + tile_size_x] = tile[src : src + tile_size_x]

        return bytes(result)

    def flip_tile_hv(tile: bytes) -> bytes:
        return flip_tile_h(flip_tile_v(tile))

    for y in range(height):
        for x in range(width):
            tile = bytearray(tile_size)

            for r in range(8):
                src_idx = tile_size_x * ((r + y * 8) * width + x)
                dst_idx = r * tile_size_x
                tile[dst_idx : dst_idx + tile_size_x] = bitmap[src_idx : src_idx + tile_size_x]

            tile = bytes(tile)

            flags = 0

            if tile in tile_map:
                idx = tile_map[tile]
            elif flip_tile_h(tile) in tile_map:
                idx = tile_map[flip_tile_h(tile)]
                flags = 0x0400
            elif flip_tile_v(tile) in tile_map:
                idx = tile_map[flip_tile_v(tile)]
                flags = 0x0800
            elif flip_tile_hv(tile) in tile_map:
                idx = tile_map[flip_tile_hv(tile)]
                flags = 0x0C00
            else:
                idx = len(chara) // tile_size
                tile_map[tile] = idx
                chara += tile

            screen += pack("<H", idx | flags)

    return (bytes(screen), bytes(chara))

def convert_bmp_to_char(bitmap: bytes, tex_width: int, tex_height: int, fmt: int) -> bytes:
    """Convert Bitmap data to raw character"""

    ppby = 1
    if fmt == GX_TEXFMT_PLTT16:
        ppby = 2
    
    tile_size_x = 8 // ppby
    tile_size = tile_size_x * 8

    width = tex_width // 8
    height = tex_height // 8

    dest = bytearray(width * height * tile_size)

    for y in range(height):
        for x in range(width):
            tile = y * width + x

            dst_base = tile * tile_size

            for r in range(8):
                src = tile_size_x * ((y * 8 + r) * width + x)
                dst = dst_base + r * tile_size_x

                dest[dst:dst + tile_size_x] = bitmap[src:src + tile_size_x]

    return bytes(dest)

def convert_image_to_bmp(img: Image.Image, fmt: int) -> bytes:
    """Convert Pillow Image to Bitmap data"""

    px = img.tobytes()

    bitmap = None
    if fmt == GX_TEXFMT_PLTT16:
        bitmap = bytearray(len(px) // 2)
        for i in range(len(bitmap)):
            p1, p2 = unpack_from("<BB", px, i * 2)
            bitmap[i] = (p1 & 0x0F) | ((p2 & 0x0F) << 4)
    elif fmt == GX_TEXFMT_PLTT256:
        bitmap = px
    else:
        raise ValueError("gfx: unsupported format for paletted image")
    
    return bitmap

####################################################
# CONVERSION
####################################################

def convert_PAC_PSCM_to_image(path: Path, outpath: Path):
    with open(path, "rb") as file:
        data = file.read()
    file_count, pltt_offset, pltt_size, scrn_offset, scrn_size, char_offset, char_size, meta_offset, meta_size, data_size = \
        unpack_from(PAC_PSCM_HEADER.format, data)
    
    pltt_data = data[pltt_offset : pltt_offset + pltt_size]
    scrn_data = data[scrn_offset : scrn_offset + scrn_size]
    char_data = data[char_offset : char_offset + char_size]
    meta_data = PACMetaData()
    meta_data.read(data[meta_offset : meta_offset + meta_size])
    
    palette = get_palette_from_data(pltt_data)
    texture = convert_tiles_to_tex_PSCM(meta_data, char_data, scrn_data)
    image = convert_tex_to_image(texture, palette, (8 << meta_data.s), (8 << meta_data.t), meta_data.fmt)
    
    image.save(outpath, format="PNG")
    if (meta_data.count > 1):
        meta_data.write_config(outpath.with_suffix(".json"))

def convert_PAC_PSC_to_image(path: Path, outpath: Path, width: int):
    with open(path, "rb") as file:
        data = file.read()
    file_count, pltt_offset, pltt_size, scrn_offset, scrn_size, char_offset, char_size, data_size = \
        unpack_from(PAC_PSC_HEADER.format, data)
    
    pltt_data = data[pltt_offset : pltt_offset + pltt_size]
    scrn_data = data[scrn_offset : scrn_offset + scrn_size]
    char_data = data[char_offset : char_offset + char_size]
    
    palette = get_palette_from_data(pltt_data)
    fmt = GX_TEXFMT_PLTT16
    if (len(palette) > 16):
        fmt = GX_TEXFMT_PLTT256

    texture, width, height = convert_tiles_to_tex_PSC(char_data, scrn_data, width // 8, fmt)
    image = convert_tex_to_image(texture, palette, width, height, fmt)
    
    image.save(outpath, format="PNG")

def convert_PAC_BPM_to_image(path: Path, outpath: Path):
    with open(path, "rb") as file:
        data = file.read()
    file_count, scrn_offset, scrn_size, pltt_offset, pltt_size, meta_offset, meta_size, data_size = \
        unpack_from(PAC_BPM_HEADER.format, data)
    
    texture = data[scrn_offset : scrn_offset + scrn_size]
    pltt_data = data[pltt_offset : pltt_offset + pltt_size]
    meta_data = PACMetaData()
    meta_data.read(data[meta_offset : meta_offset + meta_size])
    
    width = (8 << meta_data.s)
    height = (8 << meta_data.t)
    if width >= height:
        height = None
    elif width < height:
        width = None
    
    palette = get_palette_from_data(pltt_data)
    image = convert_tex_to_image(texture, palette, width, height, meta_data.fmt)
    
    image.save(outpath, format="PNG")
    if (meta_data.count > 1):
        meta_data.write_config(outpath.with_suffix(".json"))

def convert_PAC_CP_to_image(path: Path, outpath: Path, width: int):
    with open(path, "rb") as file:
        data = file.read()
    file_count, char_offset, char_size, pltt_offset, pltt_size, data_size = \
        unpack_from(PAC_CP_HEADER.format, data)
    
    char_data = data[char_offset : char_offset + char_size]
    pltt_data = data[pltt_offset : pltt_offset + pltt_size]
    
    palette = get_palette_from_data(pltt_data)
    fmt = GX_TEXFMT_PLTT16
    if (len(palette) > 16):
        fmt = GX_TEXFMT_PLTT256

    texture, width, height = convert_tiles_to_tex_CP(char_data, width // 8, fmt)
    image = convert_tex_to_image(texture, palette, width, height, fmt)
    
    image.save(outpath, format="PNG")

def find_PAC_type(path: Path) -> str:
    with open(path, "rb") as file:
        data = file.read()
    
    file_count = unpack_from("<I", data)[0]
    if file_count == 2:
        print("gfx: PAC type is CP")
        return "CP"
    elif file_count == 4:
        print("gfx: PAC type is PSCM")
        return "PSCM"
    elif file_count == 3:
        meta_offset, meta_size = unpack_from("<II", data, 0x14)
        count = unpack_from("<H", data, meta_offset)[0]
        size = PAC_METADATA.size + (PAC_METADATA_CELL.size * count)
        if meta_size == size:
            print("gfx: PAC type is BPM")
            return "BPM"
        else:
            print("gfx: PAC type is PSC")
            return "PSC"
    else:
        raise ValueError(f"gfx: could not find the PAC type of {path.__str__()}")

def convert_PAC_to_image(path: Path, outpath: Path, type: str, width: int):
    if type == "PSC":
        convert_PAC_PSC_to_image(path, outpath, width)
    elif type == "PSCM":
        convert_PAC_PSCM_to_image(path, outpath)
    elif type == "BPM":
        convert_PAC_BPM_to_image(path, outpath)
    elif type == "CP":
        convert_PAC_CP_to_image(path, outpath, width)
    else:
        raise ValueError(f"gfx: unknown type {type}")

def convert_image_to_PAC(path: Path, outpath: Path, type: str, opt: bool = None, alpha: int = None, palettePath: Path = None):
    img = Image.open(path)
    
    palette = img.getpalette()
    if palette is None:
        img = get_image(img, open_palette_pal(palettePath), alpha)
        palette = img.getpalette()
    
    fmt = GX_TEXFMT_PLTT16
    if (len(palette) // 3) > 16:
        fmt = GX_TEXFMT_PLTT256
    
    bmp_data = convert_image_to_bmp(img, fmt)

    pltt_data = write_palette_data(palette, fmt)
    
    if type == "CP":
        char_data = convert_bmp_to_char(bmp_data, img.width, img.height, fmt)
    elif type == "PSC" or "PSCM":
        if (img.width >= 256 and img.height >= 192 and opt is None) or opt == True:
            scrn_data, char_data = convert_bmp_to_char_and_screen_opt(bmp_data, img.width, img.height, fmt)
        else:
            scrn_data, char_data = convert_bmp_to_char_and_screen(bmp_data, img.width, img.height, fmt)
    
    output = bytes()
    
    if type == "PSC":
        output += pack(
            PAC_PSC_HEADER.format,
            3,
            32, len(pltt_data),
            32 + len(pad(pltt_data)), len(scrn_data),
            32 + len(pad(pltt_data)) + len(pad(scrn_data)), len(char_data),
            len(pad(pltt_data)) + len(pad(scrn_data)) + len(pad(char_data))
        )
        output += pad(pltt_data)
        output += pad(scrn_data)
        output += pad(char_data)
    
    elif type == "CP":
        output += pad(pack(
            PAC_CP_HEADER.format,
            2,
            32, len(char_data),
            32 + len(pad(char_data)), len(pltt_data),
            len(pad(char_data)) + len(pad(pltt_data))
        ))
        output += pad(char_data)
        output += pad(pltt_data)
    
    elif type == "PSCM":
        meta = PACMetaData()
        meta.read_config(path.with_suffix(".json"))
        meta.set_st(img.width, img.height)
        meta.fmt = fmt
        if (meta.count == 1):
            meta.cells[0].w = img.width
            meta.cells[0].h = img.height
        meta_data = meta.write()
        
        output = bytes()
        output += pad(pack(
            PAC_PSCM_HEADER.format,
            4,
            64, len(pltt_data),
            64 + len(pad(pltt_data)), len(scrn_data),
            64 + len(pad(pltt_data)) + len(pad(scrn_data)), len(char_data),
            64 + len(pad(pltt_data)) + len(pad(scrn_data)) + len(pad(char_data)), PAC_METADATA.size + (PAC_METADATA_CELL.size * meta.count),
            len(pad(pltt_data)) + len(pad(scrn_data)) + len(pad(char_data)) + len(meta_data)
        ))
        output += pad(pltt_data)
        output += pad(scrn_data)
        output += pad(char_data)
        output += meta_data
    
    elif type == "BPM":
        meta = PACMetaData()
        meta.read_config(path.with_suffix(".json"))
        meta.set_st(img.width, img.height)
        meta.fmt = fmt
        if (meta.count == 1):
            meta.cells[0].w = img.width
            meta.cells[0].h = img.height
        meta_data = meta.write()

        output = bytes()
        output += pack(
            PAC_BPM_HEADER.format,
            3,
            32, len(bmp_data),
            32 + len(pad(bmp_data)), len(pltt_data),
            32 + len(pad(bmp_data)) + len(pad(pltt_data)), PAC_METADATA.size + (PAC_METADATA_CELL.size * meta.count),
            len(pad(bmp_data)) + len(pad(pltt_data)) + len(meta_data)
        )
        output += pad(bmp_data)
        output += pad(pltt_data)
        output += meta_data
    
    with open(outpath, "wb") as out:
        out.write(output)

def convert_palette(path: Path, outpath: Path):
    if path.match("*.png"):
        img = Image.open(path)

        palette = img.getpalette()
        if palette is None:
            img = get_image(img)
            palette = img.getpalette()
        
        if img.height != 1:
            palette = get_palette_from_png(img)

    elif path.match("*.pal"):
        palette = open_palette_pal(path)
    
    elif path.match("*.nbfp") or path.match("*.ntfp") or path.match("*.PLT"):
        with open(path, "rb") as file:
            data = file.read()
        palette = flatten_palette(get_palette_from_data(data))
    
    else:
        raise ValueError(f"gfx: unknown file extension {path.__str__()}")
    
    if outpath.match("*.png"):
        write_palette_png(outpath, palette)
    
    elif outpath.match("*.pal"):
        write_palette_pal(outpath, palette)
    
    elif outpath.match("*.nbfp") or outpath.match("*.ntfp") or outpath.match("*.PLT"):
        with open(outpath, "wb") as out:
            out.write(write_palette_data(palette))
    
    else:
        raise ValueError(f"gfx: unknown file extension {path.__str__()}")

import argparse
def main():
    parser = argparse.ArgumentParser(
        description="Convert PAC files to/from PNG."
    )

    parser.add_argument("input", help="Input file")
    parser.add_argument("output", help="Output file")

    mode = parser.add_mutually_exclusive_group(required=True)
    mode.add_argument(
        "-d",
        "--decode",
        action="store_true",
        help="PAC -> PNG",
    )
    mode.add_argument(
        "-c",
        "--encode",
        action="store_true",
        help="PNG -> PAC",
    )
    mode.add_argument(
        "-p",
        "--pltt",
        action="store_true",
        help="Convert palette files",
    )

    parser.add_argument(
        "-t",
        "--type",
        choices=["PSC", "PSCM", "BPM", "CP"],
        help="PAC format",
    )

    parser.add_argument(
        "--opt",
        choices=["true", "false"],
        help="Tile optimization (set to false by default)",
    )

    parser.add_argument(
        "--width",
        type=int,
        help="Image width (required when decoding PSC or CP)",
    )

    parser.add_argument(
        "--alpha",
        type=int,
        help="Set a transparency color, example: BB22FF (the color must exists within the palette)",
    )

    parser.add_argument(
        "--palette",
        type=str,
        help="Get/Set a custom palette (path to a *.pal file)",
    )

    args = parser.parse_args()

    if args.decode:
        type = find_PAC_type(args.input)

        if type == "PSC" and args.width is None:
            parser.error("--width is required when decoding PSC files.")
        if type == "CP" and args.width is None:
            parser.error("--width is required when decoding CP files.")
        
        convert_PAC_to_image(
            Path(args.input),
            Path(args.output),
            type,
            args.width
        )
    
    elif args.encode:
        if args.opt == "true":
            opt = True
        elif args.opt == "false":
            opt = False
        else:
            opt = None

        convert_image_to_PAC(
            Path(args.input),
            Path(args.output),
            args.type,
            opt,
            args.alpha,
            Path(args.palette) if args.palette else None
        )
    
    elif args.pltt:
        convert_palette(
            Path(args.input),
            Path(args.output)
        )

if __name__ == "__main__":
    main()
