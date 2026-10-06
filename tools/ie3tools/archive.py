#!/usr/bin/env python3

from struct import Struct, unpack
from enum import Enum, IntEnum, auto
from pathlib import Path
from zlib import crc32
from typing import Any
import json
import re
import compression

def _align(size: int, align: int = 16) -> int:
    return ((size) + (align) - 1) & ~((align) - 1)

def _read_str(data: bytes, offset: int = 0, encoding: str = "shift-jis") -> str:
    try:
        end = data.index(0, offset)
        return data[offset:end].decode(encoding, errors='replace')
    except ValueError:
        return data[offset:].decode(encoding, errors='replace')

class _jsonwithcomments(json.JSONDecoder):
    def __init__(self, **kw):
        super().__init__(**kw)

    def decode(self, s: str) -> Any:
        regex = r"""("(?:\\"|[^"])*?")|(\/\*(?:.|\s)*?\*\/|\/\/.*)"""
        s = re.sub(regex, r"\1", s)
        return super().decode(s)

class PackBinary:
    PACKNUM = b"PackNum 20080626"
    HEADER = Struct("<16sHHHHIIIHH 8x")
    ENTRY_COS = Struct("<III")
    ENTRY_CO = Struct("<II")
    ENTRY_CS = Struct("<II")
    ENTRY_C = Struct("<I")
    ENTRY_HOSC = Struct("<IIII")

    class Type(IntEnum):
        COS = 0
        CO = 1
        CS = 2
        C = 3
        HOSC = 4

    def __init__(self, name: str = "", entries: dict[str, bytes] = {}, comp: bool = True):
        self.name = name
        self.entries = entries
        self.comp = comp

        self.pkh_data: bytes = None
        self.pkb_data: bytes = None
        self.config: dict[str, int | str | dict[str, int]] = None
        self.count: int = None
        self.type: PackBinary.Type = None
    
    def open(self, path: Path):
        if path.with_suffix(".pkh").exists() and path.with_suffix(".pkb").exists():
            self.pkh_data = path.with_suffix(".pkh").read_bytes()
            self.pkb_data = path.with_suffix(".pkb").read_bytes()
            if not self.pkh_data or not self.pkb_data:
                raise Exception(f"archive: cannot read {path}")
        else:
            raise FileNotFoundError(f"archive: cannot find {path}")
        
        self.name = path.stem

        self.open_config()
        self.check()
        self.read()

        return self
    
    def open_config(self):
        config_path = Path(__file__).with_name("archive.json")
        if not config_path.exists():
            raise FileNotFoundError("archive: Cannot find 'config.json'")
        
        _config = dict(json.loads(config_path.read_text(), cls=_jsonwithcomments))
        
        self.config = _config[self.name]
        self.type = PackBinary.Type(self.config["type"])

        if self.type == PackBinary.Type.HOSC:
            self.count = len(self.config["filenames"])
    
    def open_files(self, path: Path):
        if not path.is_dir():
            path = path.parent
        
        self.name = path.name.split(".")[0]
        
        self.open_config()
        
        if self.type == PackBinary.Type.HOSC:
            for cfg_entry in self.config["filenames"]:
                filename: str = cfg_entry["name"]

                self.entries[filename] = (path / filename).read_bytes()
        else:
            for filepath in path.rglob(f"*{self.config["extension"]}"):
                filename = filepath.name

                self.entries[filename] = filepath.read_bytes()
        
        return self
    
    def export(self, outpath: Path):
        if outpath.is_dir():
            pkh_path = (outpath / self.name).with_suffix(".pkh")
            pkb_path = (outpath / self.name).with_suffix(".pkb")
        elif outpath.suffix == ".pkh":
            pkh_path = outpath
            pkb_path = outpath.with_suffix(".pkb")
        elif outpath.suffix == ".pkb":
            pkh_path = outpath.with_suffix(".pkh")
            pkb_path = outpath
        else:
            raise FileNotFoundError(f"archive: cannot open output {outpath}")
        
        pkh_path.write_bytes(self.pkh_data)
        pkb_path.write_bytes(self.pkb_data)
    
    def read(self):
        self.entries = {}

        if self.type != PackBinary.Type.HOSC:
            _, _, _, _, entry_count, _, entry_size, _, _, _ \
                = PackBinary.HEADER.unpack_from(self.pkh_data)
            
            self.count = entry_count
        
        pos = self.get_header_size()
        
        for i in range(self.count):
            match self.type:
                case PackBinary.Type.COS:
                    code, offset, size = PackBinary.ENTRY_COS.unpack_from(self.pkh_data, pos)
                case PackBinary.Type.CO:
                    code, offset = PackBinary.ENTRY_CO.unpack_from(self.pkh_data, pos)
                    size = entry_size
                case PackBinary.Type.CS:
                    code, size = PackBinary.ENTRY_CS.unpack_from(self.pkh_data, pos)
                    offset = i * entry_size
                case PackBinary.Type.C:
                    code = PackBinary.ENTRY_C.unpack_from(self.pkh_data, pos)
                    offset = i * entry_size
                    size = entry_size
                case PackBinary.Type.HOSC:
                    code, offset, size, comp = PackBinary.ENTRY_HOSC.unpack_from(self.pkh_data, pos)
            
            data = self.pkb_data[offset : offset + size]
            filename = self.get_filename(code)
            
            if self.comp and self.is_compressed(filename):
                data = compression.lz_uncompress(data)
            
            self.entries[filename] = data

            pos += self.get_entry_size()
    
    def write(self):
        if self.comp:
            self.compress_entries()
        
        if self.type == PackBinary.Type.HOSC:
            self.pkh_data = bytearray()
            self.pkb_data = bytearray()

            offsets: dict[str, int] = {}

            for cfg_entry in sorted(self.config["filenames"], key=lambda x: x["idx"]):
                filename: str = cfg_entry["name"]

                offsets[filename] = len(self.pkb_data)
                data = self.entries[filename]

                self.pkb_data += data
                self.pkb_data += b"\xFF" * (_align(len(data)) - len(data))
            
            for cfg_entry in self.config["filenames"]:
                filename: str = cfg_entry["name"]
                
                data = self.entries[filename]
                offset = offsets[filename]
                
                comp = 0
                if self.is_compressed(filename):
                    comp = unpack("<I", data[:4])[0]
                
                self.pkh_data += PackBinary.ENTRY_HOSC.pack(self.get_code(filename), offset, len(data), comp)

            return
        
        self.pkh_data = bytearray(PackBinary.HEADER.size)
        self.pkb_data = bytearray()
        
        max_size: int = 0
        if self.type in (PackBinary.Type.CO, PackBinary.Type.CS, PackBinary.Type.C):
            for _, data in self.entries.items():
                if max_size < len(data):
                    max_size = _align(len(data))

        for filename, data in self.entries.items():
            code = self.get_code(filename)

            match self.type:
                case PackBinary.Type.COS:
                    self.pkh_data += PackBinary.ENTRY_COS.pack(code, len(self.pkb_data), len(data))
                case PackBinary.Type.CO:
                    self.pkh_data += PackBinary.ENTRY_CO.pack(code, len(self.pkb_data))
                case PackBinary.Type.CS:
                    self.pkh_data += PackBinary.ENTRY_CS.pack(code, len(self.pkb_data))
                case PackBinary.Type.C:
                    self.pkh_data += PackBinary.ENTRY_C.pack(code)
            
            self.pkb_data += data
            if max_size > 0:
                self.pkb_data += b"\xFF" * (max_size - len(data))
            else:
                self.pkb_data += b"\xFF" * (_align(len(data)) - len(data))
        
        self.pkh_data += b"\xFF" * (_align(len(self.pkh_data)) - len(self.pkh_data))
        
        entry_size: int = max_size
        if self.type == PackBinary.Type.COS:
            entry_size = self.config["entry_size"]
        
        mask: int = 0
        name_size: int = 0
        if self.config["func"] == "hash_map_name":
            mask = 4
            name_size = 5

        PackBinary.HEADER.pack_into(self.pkh_data, 0,
            PackBinary.PACKNUM, len(self.pkh_data), self.type, 1, len(self.entries), 16, entry_size, mask, name_size, 0)
    
    def check(self):
        if self.type == PackBinary.Type.HOSC:
            if self.count != (len(self.pkh_data) // PackBinary.ENTRY_HOSC.size):
                raise ValueError(f"archive: {self.name} PKH count check failed")
        else:
            packnum, file_size, type, unk14, entry_count, unk18, entry_size, mask, filename_size, unk26 \
                = PackBinary.HEADER.unpack_from(self.pkh_data)
            
            if not self.count:
                self.count = entry_count
            if self.type != type:
                raise ValueError(f"archive: {self.name} PKH type check failed")
            if packnum != PackBinary.PACKNUM:
                raise ValueError(f"archive: {self.name} PKH version check failed")
            if _align(PackBinary.HEADER.size + self.get_entry_size() * self.count) != len(self.pkh_data):
                raise ValueError(f"archive: {self.name} PKH file size check failed")
    
    def export_entries(self, outpath: Path):
        for filename in self.entries:
            self.export_entry(filename, outpath)
    
    def export_entry(self, filename: str, outpath: Path):
        outpath.mkdir(parents=True, exist_ok=True)

        (outpath / filename).write_bytes(self.entries[filename])
    
    def get_header_size(self) -> int:
        if self.type != PackBinary.Type.HOSC:
            return PackBinary.HEADER.size
        else:
            return 0

    def get_entry_size(self) -> int:
        match self.type:
            case PackBinary.Type.COS:
                return PackBinary.ENTRY_COS.size
            case PackBinary.Type.CO:
                return PackBinary.ENTRY_CO.size
            case PackBinary.Type.CS:
                return PackBinary.ENTRY_CS.size
            case PackBinary.Type.C:
                return PackBinary.ENTRY_C.size
            case PackBinary.Type.HOSC:
                return PackBinary.ENTRY_HOSC.size
    
    def get_filename(self, code: int) -> str:
        if self.type != PackBinary.Type.HOSC:
            if self.config["func"] and self.config["func"] == "hash_map_name":
                _, _, _, _, _, _, _, mask, filename_size, _ \
                    = PackBinary.HEADER.unpack_from(self.pkh_data)
                return self.name + self.decode_map_name(code, mask, filename_size) + self.config["extension"]
            
            return self.name + str(code).zfill(8) + self.config["extension"]

        for cfg_entry in self.config["filenames"]:
            filename: str = cfg_entry["name"]
            if code == self.get_code(filename):
                return filename

        raise Exception(f"archive: {self.name} cannot find the name of {hex(code)}")

    def get_code(self, filename: str) -> int:
        if self.config["func"]:
            if self.config["func"] == "hash_default":
                return self.hash_default(filename)
            elif self.config["func"] == "hash_map_name":
                return self.hash_map_name(filename)
            else:
                raise ValueError(f"archive: {self.name} unknown hashing function {self.config["func"]}")
        
        return int(filename[len(self.name) : filename.find(".")])

    def hash_default(self, filename: str) -> int:
        return crc32(filename.lower().encode())
    
    def hash_map_name(self, filename: str) -> int:
        prefixes = ("mv", "mf", "ball", "bal", "mo", "gol")

        prefix = next((p for p in prefixes if filename.startswith(p)), None)
        if not prefix:
            raise ValueError(f"archive: {self.name} cannot hash map name {filename}")
        
        filename = filename[len(prefix) : filename.find(".")]

        _, _, _, _, _, _, _, mask, filename_size, _ \
            = PackBinary.HEADER.unpack_from(self.pkh_data)
        
        if len(filename) > filename_size:
            raise ValueError(f"archive: {self.name} cannot read map name {filename}")
        
        result: int = 0
        
        for i in range(filename_size):
            if i < len(filename):
                if mask & 1:
                    result *= 36
                else:
                    result *= 10
                
                digit: int
                c: int = ord(filename[i])
                if c >= ord('0') and c <= ord('9'):
                    digit = c - ord('0')
                    result += digit
                elif c >= ord('a') and c <= ord('z'):
                    digit = (c - ord('a')) + 10
                    result += digit
                elif c >= ord('A') and c <= ord('Z'):
                    digit = (c - ord('A')) + 10
                    result += digit
                else:
                    digit = 0

            mask >>= 1

        return result
    
    def decode_map_name(self, code: int, mask: int, filename_size: int) -> str:
        # chatgpt wrote it for me, sorry
        
        chars = []
        bases = []
        m = mask

        for i in range(filename_size):
            bases.append(36 if (m & 1) else 10)
            m >>= 1
        
        for base in reversed(bases):
            digit = code % base
            code //= base

            if digit < 10:
                chars.append(chr(ord('0') + digit))
            else:
                chars.append(chr(ord('a') + digit - 10))

        if code != 0:
            raise ValueError("Value does not fit filename_size/mask")

        return "".join(reversed(chars))
    
    def is_compressed(self, filename: str) -> bool:
        return filename.endswith("_")
    
    def compress_entries(self):
        for filename in self.entries:
            if self.is_compressed(filename):
                self.entries[filename] = compression.lz_compress(self.entries[filename])

class SFP:
    MAGIC = b"SFP\x00"
    HEADER = Struct("<4sIIIIIII")
    ENTRY = Struct("<IIII")

    class Type(Enum):
        PAIR = auto()
        SINGLE = auto()

    def __init__(
        self, name: str = "",
        fnt: str | list[str] | tuple[str] | Path = None,
        type = None,
        entries: dict[str, bytes] = {},
        comp: bool = True
    ):
        self.name = name
        self.type: SFP.Type = type
        self.entries = entries
        self.comp = comp
        
        self.fnt: list[str] = None
        if fnt:
            self.fnt = self.open_fnt(fnt)
        self.header: bytes = None
        self.data: bytes = None
        self.count: int = None
    
    def open(self, path: Path):
        data: bytes | list[bytes]

        if path.suffix in (".SPD", ".SPL"):
            data = [path.with_suffix(".SPD").read_bytes(), path.with_suffix(".SPL").read_bytes()]
        elif path.suffix == ".SPF_":
            data = compression.lz_uncompress(path.read_bytes())
            self.type = SFP.Type.SINGLE
            self.name = path.stem
        elif path.suffix == ".SPF":
            data = path.read_bytes()
            self.type = SFP.Type.SINGLE
            self.name = path.stem
        else:
            raise FileNotFoundError(f"archive: cannot read {path}")
        
        self.check(data)
        self.read()

        return self
    
    def open_files(self, path: Path):
        if not path.is_dir():
            raise FileNotFoundError(f"archive: path {path} is not a directory")
        
        self.name = path.stem

        if self.fnt:
            for filename in self.fnt:
                self.entries[filename] = (path / filename).read_bytes()
        else:
            for filepath in path.iterdir():
                if filepath.name == "fnt.txt":
                    continue

                self.entries[filepath.name] = filepath.read_bytes()
        
        self.count = len(self.entries)
        
        return self
    
    def export(self, outpath: Path):
        if self.type == SFP.Type.SINGLE:
            data = self.header + self.data
            if self.comp and self.is_compressed(outpath.name):
                data = compression.lz_compress(data)
            outpath.write_bytes(data)
        elif self.type == SFP.Type.PAIR:
            if outpath.stem != self.name:
                spd_path = outpath.with_suffix(".SPD")
                spl_path = outpath.with_suffix(".SPL")
            elif outpath.suffix == ".SPD":
                spd_path = outpath
                spl_path = outpath.with_suffix(".SPL")
            elif outpath.suffix == ".SPL":
                spd_path = outpath.with_suffix(".SPD")
                spl_path = outpath
            else:
                spd_path = (outpath / self.name).with_suffix(".SPD")
                spl_path = (outpath / self.name).with_suffix(".SPL")
            
            spd_path.write_bytes(self.data)
            spl_path.write_bytes(self.header)
    
    def check(self, data: bytes | list[bytes]):
        if isinstance(data, bytes) and self.type == SFP.Type.SINGLE:
            magic, _, _, _, size, _, _, _ = SFP.HEADER.unpack_from(data)

            if magic != SFP.MAGIC or data[size : size + 4] != SFP.MAGIC:
                raise ValueError(f"archive: {self.name} PKH version check failed")
            
            self.header = data[:size]
            self.data = data[size:]
        elif isinstance(data, list[bytes]) and self.type == SFP.Type.PAIR:
            magic1 = data[0][:4]
            magic2 = data[1][:4]

            if magic1 != SFP.MAGIC or magic2 != SFP.MAGIC:
                raise ValueError(f"archive: {self.name} PKH version check failed")
            
            self.header = data[0]
            self.data = data[1]
    
    def read(self):
        _, _, _, chunk_size, _, _, _, _ \
            = SFP.HEADER.unpack_from(self.data)
        
        self.count = (SFP.ENTRY.unpack_from(self.header, SFP.HEADER.size)[0] - SFP.HEADER.size) // SFP.ENTRY.size

        pos = SFP.HEADER.size
        for i in range(self.count):
            filename_offset, size, offset, _ = SFP.ENTRY.unpack_from(self.header, pos)
            pos += SFP.ENTRY.size
            
            filename = _read_str(self.header, filename_offset)

            data = self.data[chunk_size * offset : (chunk_size * offset) + size]

            if self.comp and self.is_compressed(filename):
                data = compression.lz_uncompress(data)
            
            self.entries[filename] = data
    
    def write(self):
        if self.comp:
            self.compress_entries()
        
        header = bytearray(SFP.HEADER.size)
        data = bytearray(SFP.HEADER.size + 0x400)

        filename_table = bytearray()
        if self.fnt:
            for filename in self.fnt:
                filename_table += filename.encode("shift-jis") + b"\x00"
        else:
            for filename in self.entries:
                filename_table += filename.encode("shift-jis") + b"\x00"
        filename_table += b"\x00" * (_align(len(filename_table)) - len(filename_table))

        fnt_offset = SFP.HEADER.size + (SFP.ENTRY.size * self.count)
        chunk_size = 0x20
        for filename, filedata in self.entries.items():
            offset = len(data) - SFP.HEADER.size
            filename_offset = filename_table.find(filename.encode("shift-jis")) + fnt_offset

            header += SFP.ENTRY.pack(filename_offset, len(filedata), offset // chunk_size, 0)
            
            data += filedata
            data += b"\x00" * (_align(len(data)) - len(data))
        
        header += filename_table
        
        SFP.HEADER.pack_into(header, 0, SFP.MAGIC, 0, 5, chunk_size, len(header), 0, 0, 0)
        SFP.HEADER.pack_into(data, 0, SFP.MAGIC, 0, 5, chunk_size, len(data), 0, 0, 0)

        self.header = header
        self.data = data

    def open_fnt(self, fnt: str | list[str] | tuple[str] | Path = None):
        output: list[str]

        if isinstance(fnt, str):
            output = fnt.split(" ")
        elif isinstance(fnt, list) or isinstance(fnt, tuple):
            output = list(fnt)
        elif isinstance(fnt, Path):
            output = fnt.read_text().splitlines()
        
        self.count = len(output)
        self.fnt = output
    
    def export_entry(self, filename: str, outpath: Path):
        outpath.mkdir(parents=True, exist_ok=True)

        (outpath / filename).write_bytes(self.entries[filename])
    
    def export_entries(self, outpath: Path):
        for filename in self.entries:
            self.export_entry(filename, outpath)
    
    def is_compressed(self, filename: str) -> bool:
        return filename.endswith("_")
    
    def compress_entries(self):
        for filename in self.entries:
            if self.is_compressed(filename):
                self.entries[filename] = compression.lz_compress(self.entries[filename])

import argparse
def main():
    parser = argparse.ArgumentParser(
        description="Pack/Unpack ie3 archives."
    )

    parser.add_argument("input", help="Input file")
    parser.add_argument("output", help="Output file")

    mode = parser.add_mutually_exclusive_group(required=True)
    mode.add_argument(
        "-d",
        "--unpack",
        action="store_true",
        help="Unpack an archive to a directory.",
    )
    mode.add_argument(
        "-c",
        "--pack",
        action="store_true",
        help="Pack a directory to an archive.",
    )

    parser.add_argument(
        "-t",
        "--type",
        choices=["PKB", "SPF", "SPD", "SPL"],
        help="Archive format.",
        default="PKB"
    )

    parser.add_argument(
        "--comp",
        action="store_true",
        help="Enable (un)compression methods (very slow)."
    )

    parser.add_argument(
        "-f",
        "--files",
        nargs="*",
        help="Filename table."
    )

    args = parser.parse_args()

    if args.type == "PKB":
        if args.unpack:
            arc = PackBinary(comp=args.comp).open(Path(args.input))
            arc.export_entries(Path(args.output))
        elif args.pack:
            arc = PackBinary(comp=args.comp).open_files(Path(args.input))
            arc.write()
            arc.export(Path(args.output))
    elif args.type in ("SPF", "SPD", "SPL"):
        if args.unpack:
            arc = SFP(comp=args.comp).open(Path(args.input))
            arc.export_entries(Path(args.output))
        elif args.pack:
            if not args.files:
                fnt = (Path(args.input) / "fnt.txt")
                if not fnt.exists():
                    fnt = []
                    for filepath in Path(args.input).iterdir():
                        fnt.append(filepath.name)
            else:
                fnt = args.files
            if args.type == "SPF":
                type = SFP.Type.SINGLE
            elif args.type in ("SPD", "SPL"):
                type = SFP.Type.PAIR
            arc = SFP(comp=args.comp, fnt=fnt, type=type).open_files(Path(args.input))
            arc.write()
            arc.export(Path(args.output))

if __name__ == "__main__":
    main()
