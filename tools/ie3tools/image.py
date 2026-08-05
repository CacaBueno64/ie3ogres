from struct import pack, unpack, unpack_from, Struct
from dataclasses import dataclass
from PIL import Image

PAC_PSCM_HEADER = Struct("<I II II II II I")
PAC_PSC_HEADER = Struct("<I II II II I")
PAC_SPM_HEADER = Struct("<I II II II I")
PAC_METADATA = Struct("<H BBB 3B")
PAC_METADATA_CHUNK = Struct("<HHHH")

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

class PACMetaData:
    @dataclass
    class Chunk:
        s: int
        t: int
        w: int
        h: int
    
    def __init__(self):
        self.count = 0
        self.s = 0
        self.t = 0
        self.fmt = 0
        self.chunks: list[PACMetaData.Chunk] = [PACMetaData.Chunk(0, 0, 0, 0)]
    
    def set_st(self, width: int, height: int):
        self.s, self.t = get_st(width, height)
    
    def read(self, data: bytes):
        self.count, self.s, self.t, self.fmt, pad, pad, pad = \
            unpack_from(PAC_METADATA.format, data)
        
        for i in range(self.count):
            self.chunks.append(PACMetaData.Chunk(*unpack_from(PAC_METADATA_CHUNK.format, data, PAC_METADATA.size)))
    
    def write(self) -> bytes:
        output = b""
        output += pack(PAC_METADATA.format, self.count, self.s, self.t, self.fmt, 0, 0, 0)
        for i in range(self.count):
            output += pack(PAC_METADATA_CHUNK.format, self.chunks[i].s, self.chunks[i].t, self.chunks[i].w, self.chunks[i].h)
        
        return output
    
    def read_config(self, path: str):
        try:
            with open(path, "rt") as file:
                text = file.read()
        except:
            self.count = 1
            return
        lines = text.splitlines()
        values = lines[1].split(";")
        self.count, self.s, self.t, self.fmt = (int(values[0]), int(values[1]), int(values[2]), int(values[3]))
        for i in range(self.count):
            values = lines[4 + i].split(";")
            self.chunks.append(PACMetaData.Chunk(int(values[0]), int(values[1]), int(values[2]), int(values[3])))
    
    def write_config(self, outpath: str) -> str:
        with open(outpath, "wt") as out:
            out.write("Count;GXTexSizeS;GXTexSizeT;GXTexFmt\n")
            out.write(";".join([str(self.count), str(self.s), str(self.t), str(self.fmt)]) + "\n")
            out.write("\n")
            out.write("X;Y;W;H\n")
            for c in self.chunks:
                out.write(";".join([str(c.s), str(c.t), str(c.w), str(c.h)]) + "\n")

def fill_palette(palette: list, count: int):
    if count <= 16:
        palette += [0 for i in range((16 - count) * 3)]
    elif count > 16 and count < 256:
        palette += [0 for i in range((256 - count) * 3)]
    return palette

def set_palette(img: Image.Image, palette: list) -> Image.Image:
    img.putpalette(fill_palette(palette, len(palette) // 3))
    return img

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

def get_image(img: Image.Image) -> Image.Image:
    """Fix non-paletted png and set the correct bitdepth"""
    
    img = img.convert("RGB")
    if len(img.getcolors()) < 16:
        img = img.quantize(16)
    else:
        img = img.quantize()
    palette = img.getpalette()
    palette = fill_palette(palette, len(palette) // 3)
    img = Image.frombytes("P", img.size, bytes(img.tobytes()))
    img.putpalette(palette)

    return img

####################################################
# READ
####################################################

def get_palette(data: bytes) -> list:
    """Get a [r, g, b] list from a raw BGR555 palette data

    >>> get_palette(data)
    [[255, 0, 255], [32, 32, 32], [164, 148, 148], ...]
    """

    if len(data) % 2 != 0:
        raise ValueError("the filesize is not a multiple of 2: " + hex(len(data)))
    
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

    for y in range(height):
        for x in range(width):
            tile_size = tile_size_x * 8
            scrn_idx = (y * width + x) * 2
            char_idx = unpack("<H", screen[scrn_idx : scrn_idx + 2])[0]

            for r in range(8):
                dest_idx = tile_size_x * ((r + y * 8) * width + x)
                chara_idx = (tile_size * char_idx) + (r * tile_size_x)
                dest[dest_idx : dest_idx + tile_size_x] = chara[chara_idx : chara_idx + tile_size_x]
    
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
        raise ValueError("Unsupported format for paletted image")
    
    rw = real_width or width
    rh = real_height or height

    img = Image.frombytes("P", (width, height), bytes(px[ : width * height]))

    if rw != width or rh != height:
        img = img.crop((0, 0, rw, rh))
    
    flat_palette = []
    for r, g, b in palette:
        flat_palette += [r] + [g] + [b]
    img.putpalette(flat_palette)
    
    return img

def convert_PAC_PSCM_to_image(path: str, outpath: str):
    with open(path, "rb") as file:
        data = file.read()
    file_count, pltt_offset, pltt_size, scrn_offset, scrn_size, char_offset, char_size, meta_offset, meta_size, data_size = \
        unpack_from(PAC_PSCM_HEADER.format, data)
    
    pltt_data = data[pltt_offset : pltt_offset + pltt_size]
    scrn_data = data[scrn_offset : scrn_offset + scrn_size]
    char_data = data[char_offset : char_offset + char_size]
    meta_data = PACMetaData()
    meta_data.read(data[meta_offset : meta_offset + meta_size])
    
    palette = get_palette(pltt_data)
    texture = convert_tiles_to_tex_PSCM(meta_data, char_data, scrn_data)
    image = convert_tex_to_image(texture, palette, (8 << meta_data.s), (8 << meta_data.t), meta_data.fmt)
    
    image.save(outpath, format="PNG")
    if (meta_data.count > 1):
        meta_data.write_config(outpath.replace(".png", ".csv"))

def convert_PAC_PSC_to_image(path: str, outpath: str, width: int):
    with open(path, "rb") as file:
        data = file.read()
    file_count, pltt_offset, pltt_size, scrn_offset, scrn_size, char_offset, char_size, data_size = \
        unpack_from(PAC_PSC_HEADER.format, data)
    
    pltt_data = data[pltt_offset : pltt_offset + pltt_size]
    scrn_data = data[scrn_offset : scrn_offset + scrn_size]
    char_data = data[char_offset : char_offset + char_size]
    
    palette = get_palette(pltt_data)
    fmt = GX_TEXFMT_PLTT16
    if (len(palette) > 16):
        fmt = GX_TEXFMT_PLTT256

    texture, width, height = convert_tiles_to_tex_PSC(char_data, scrn_data, width // 8, fmt)
    image = convert_tex_to_image(texture, palette, width, height, fmt)
    
    image.save(outpath, format="PNG")

def convert_PAC_SPM_to_image(path: str, outpath: str):
    with open(path, "rb") as file:
        data = file.read()
    file_count, scrn_offset, scrn_size, pltt_offset, pltt_size, meta_offset, meta_size, data_size = \
        unpack_from(PAC_SPM_HEADER.format, data)
    
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
    
    palette = get_palette(pltt_data)
    image = convert_tex_to_image(texture, palette, width, height, meta_data.fmt)
    
    image.save(outpath, format="PNG")
    meta_data.write_config(outpath.replace(".png", ".csv"))

####################################################
# WRITE
####################################################

def write_palette(palette: list, fmt: int) -> bytes:
    """Convert RGB palette to BGR555 data

    >>> write_palette(img.getpalette())
    >>> write_palette([255, 0, 255, 32, 32, 32, 164, 148, 148, ...])
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

def convert_tex_to_char_and_screen(texture: bytes, tex_width: int, tex_height: int, fmt: int) -> tuple[bytes, bytes]:
    """Convert NTFT texture to raw character+screen"""

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
                chara[chara_idx : chara_idx + tile_size_x] = texture[tex_idx : tex_idx + tile_size_x]

            char_idx += 1

    return (bytes(screen), bytes(chara))

def convert_tex_to_char_and_screen_opt(texture: bytes, tex_width: int, tex_height: int, fmt: int):
    """Convert NTFT texture to raw character+screen without duplicated tiles"""

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

    for y in range(height):
        for x in range(width):

            tile = bytearray(tile_size)

            for r in range(8):
                src_idx = tile_size_x * ((r + y * 8) * width + x)
                dst_idx = r * tile_size_x
                tile[dst_idx : dst_idx + tile_size_x] = texture[src_idx : src_idx + tile_size_x]

            tile = bytes(tile)

            if tile in tile_map:
                idx = tile_map[tile]
            else:
                idx = len(chara) // tile_size
                tile_map[tile] = idx
                chara += tile

            screen += pack("<H", idx)

    return (bytes(screen), bytes(chara))

def convert_image_to_tex(img: Image.Image, fmt: int) -> bytes:
    """Convert Pillow Image to NTFT texture data"""

    px = img.tobytes()

    texture = None
    if fmt == GX_TEXFMT_PLTT16:
        texture = bytearray(len(px) // 2)
        for i in range(len(texture)):
            p1, p2 = unpack_from("<BB", px, i * 2)
            texture[i] = (p1 & 0x0F) | ((p2 & 0x0F) << 4)
    elif fmt == GX_TEXFMT_PLTT256:
        texture = px
    else:
        raise ValueError("Unsupported format for paletted image")
    
    return texture

def convert_image_to_PAC_PSCM(path: str, outpath: str):
    img = Image.open(path)
    
    palette = img.getpalette()
    if palette is None:
        img = get_image(img)
        palette = img.getpalette()
    
    fmt = GX_TEXFMT_PLTT16
    if (len(palette) // 3) > 16:
        fmt = GX_TEXFMT_PLTT256
    
    texture = convert_image_to_tex(img, fmt)

    pltt_data = write_palette(palette, fmt)
    scrn_data, char_data = convert_tex_to_char_and_screen(texture, img.width, img.height, fmt)

    meta = PACMetaData()
    meta.read_config(path.replace(".png", ".csv"))
    meta.set_st(img.width, img.height)
    meta.fmt = fmt
    if (meta.count == 1):
        meta.chunks[0].w = img.width
        meta.chunks[0].h = img.height
    meta_data = meta.write()
    
    output = bytes()
    output += pad(pack(PAC_PSCM_HEADER.format,
                   4,
                   64, len(pltt_data),
                   64 + len(pad(pltt_data)), len(scrn_data),
                   64 + len(pad(pltt_data)) + len(pad(scrn_data)), len(char_data),
                   64 + len(pad(pltt_data)) + len(pad(scrn_data)) + len(pad(char_data)), PAC_METADATA.size + (PAC_METADATA_CHUNK.size * meta.count),
                   len(pad(pltt_data)) + len(pad(scrn_data)) + len(pad(char_data)) + len(meta_data)))
    output += pad(pltt_data)
    output += pad(scrn_data)
    output += pad(char_data)
    output += meta_data

    with open(outpath, "wb") as out:
        out.write(output)

def convert_image_to_PAC_PSC(path: str, outpath: str):
    img = Image.open(path)
    
    palette = img.getpalette()
    if palette is None:
        img = get_image(img)
        palette = img.getpalette()
    
    fmt = GX_TEXFMT_PLTT16
    if (len(palette) // 3) > 16:
        fmt = GX_TEXFMT_PLTT256
    
    texture = convert_image_to_tex(img, fmt)

    pltt_data = write_palette(palette, fmt)
    if (img.width == 256 and img.height == 192):
        scrn_data, char_data = convert_tex_to_char_and_screen_opt(texture, img.width, img.height, fmt)
    else:
        scrn_data, char_data = convert_tex_to_char_and_screen(texture, img.width, img.height, fmt)

    output = bytes()
    output += pack(PAC_PSC_HEADER.format,
                   3,
                   32, len(pltt_data),
                   32 + len(pad(pltt_data)), len(scrn_data),
                   32 + len(pad(pltt_data)) + len(pad(scrn_data)), len(char_data),
                   len(pad(pltt_data)) + len(pad(scrn_data)) + len(pad(char_data)))
    output += pad(pltt_data)
    output += pad(scrn_data)
    output += pad(char_data)

    with open(outpath, "wb") as out:
        out.write(output)

def convert_image_to_PAC_SPM(path: str, outpath: str):
    img = Image.open(path)
    
    palette = img.getpalette()
    if palette is None:
        img = get_image(img)
        palette = img.getpalette()
    
    fmt = GX_TEXFMT_PLTT16
    if (len(palette) // 3) > 16:
        fmt = GX_TEXFMT_PLTT256
    
    texture = convert_image_to_tex(img, fmt)
    pltt_data = write_palette(palette, fmt)

    meta = PACMetaData()
    meta.read_config(path.replace(".png", ".csv"))
    meta.set_st(img.width, img.height)
    meta.fmt = fmt
    meta_data = meta.write()
    
    output = bytes()
    output += pack(PAC_SPM_HEADER.format,
                   3,
                   32, len(texture),
                   32 + len(pad(texture)), len(pltt_data),
                   32 + len(pad(texture)) + len(pad(pltt_data)), PAC_METADATA.size + (PAC_METADATA_CHUNK.size * meta.count),
                   len(pad(texture)) + len(pad(pltt_data)) + len(meta_data))
    output += pad(texture)
    output += pad(pltt_data)
    output += meta_data

    with open(outpath, "wb") as out:
        out.write(output)

#convert_PAC_PSCM_to_image("./tools/ie3tools/archives/fac/fac00000100.pac", "./test.png")
#convert_image_to_PAC_PSCM("./test.png", "./tools/ie3tools/archives/fac/fac00000100/test.pac")
#convert_PAC_PSC_to_image("./tools/ie3tools/archives/cmd/mbd_c00000001.pac", "./test.png", 112)
#convert_image_to_PAC_PSC("./test.png", "./tools/ie3tools/archives/cmd/test.pac")
#convert_image_to_PAC_PSC("./test2.png", "./test.pac")
#convert_PAC_SPM_to_image("./tools/ie3tools/archives/c3t0100/c3t0100.pac", "./test.png")
#convert_image_to_PAC_SPM("./test.png", "./tools/ie3tools/archives/c3t0100/test.pac")

#def fix_mbd_c_palettes():
#    import os
#    ref = Image.open("./test.png")
#    palette = ref.getpalette()
#    for filename in sorted(os.listdir("./tools/ie3tools/input")):
#        path = "./tools/ie3tools/input/" + filename
#        img = Image.open(path).convert("RGB")
#        img = img.quantize(palette=ref, dither=Image.Dither.NONE)
#        img.save("./tools/ie3tools/input/" + filename, format="PNG")
#def convert_mbd_c():
#    fix_mbd_c_palettes()
#    for filename in sorted(os.listdir("./tools/ie3tools/input2")):
#        path = "./tools/ie3tools/input2/" + filename
#        outpath = "./tools/ie3tools/output/" + filename.replace(".png", ".pac")
#        convert_image_to_PAC_PSC(path, outpath)

def convert_folder():
    import os
    folderpath = ""
    for filename in sorted(os.listdir(folderpath)):
        path = folderpath + "/" + filename
        convert_PAC_PSCM_to_image(path, path.replace(".pac_", ".png"))
        print(path)
        if path.endswith(".pac_"):
            os.remove(path)

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
        help="Convert PAC -> PNG",
    )
    mode.add_argument(
        "-c",
        "--encode",
        action="store_true",
        help="Convert PNG -> PAC",
    )

    parser.add_argument(
        "-t",
        "--type",
        required=True,
        choices=["PSC", "PSCM", "SPM"],
        help="PAC format",
    )

    parser.add_argument(
        "--width",
        type=int,
        help="Image width (required when decoding PSC)",
    )

    args = parser.parse_args()

    # PSC requires width only when decoding
    if args.decode and args.type == "PSC" and args.width is None:
        parser.error("--width is required when decoding PSC files.")

    if args.decode:
        if args.type == "PSC":
            convert_PAC_PSC_to_image(
                args.input,
                args.output,
                args.width,
            )
        elif args.type == "PSCM":
            convert_PAC_PSCM_to_image(
                args.input,
                args.output,
            )
        elif args.type == "SPM":
            convert_PAC_SPM_to_image(
                args.input,
                args.output,
            )

    elif args.encode:
        if args.type == "PSC":
            convert_image_to_PAC_PSC(
                args.input,
                args.output,
            )
        elif args.type == "PSCM":
            convert_image_to_PAC_PSCM(
                args.input,
                args.output,
            )
        elif args.type == "SPM":
            convert_image_to_PAC_SPM(
                args.input,
                args.output,
            )

if __name__ == "__main__":
    main()
    #convert_folder()
