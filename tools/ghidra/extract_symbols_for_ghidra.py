#!/usr/bin/env python3
# Author:      Mica
# Description: Tool for extracting symbols from an ELF file for use in Ghidra. 
#              Run the ImportSymbols script from inside Ghidra on the output.

import sys
import subprocess

from collections import defaultdict
from dataclasses import dataclass

import argparse
import re

@dataclass
class Symbol:
    address: int
    name: str
    
generic_patterns = [
    re.compile(r'^ov\d+_[0-9A-Fa-f]+$'),
    re.compile(r'^FUN_ov\d+_[0-9A-Fa-f]+$'),
    re.compile(r'^FUN_[0-9A-Fa-f]+$'),
    re.compile(r'^unk_[0-9A-Fa-f]+$'),
    re.compile(r'^sub_[0-9A-Fa-f]+$'),
    re.compile(r'^_[0-9A-Fa-f]+$'),
    re.compile(r'^SDK_'),
]

garbage_patterns = [
    re.compile(r'\$'),
    re.compile(r'\@'),
    re.compile(r'^\.'),
]

def should_ignore(symbol: str, flip: bool, all_symbols: bool) -> bool:
    is_garbage = any(p.match(symbol) for p in garbage_patterns)
    is_generic = any(p.match(symbol) for p in generic_patterns)
    if all_symbols:
        return is_garbage
    return (is_generic or is_garbage)
    
def get_symbols_with_sections(file_path, flip, all_symbols):
    sym_output = subprocess.check_output(['readelf', '-Ws', file_path], text=True)
    sec_output = subprocess.check_output(['readelf', '-WS', file_path], text=True)

    # parse section names
    section_map = {}
    for line in sec_output.splitlines():
        line = line.strip()
        if not line.startswith('['):
            continue
        idx_part, _, rest = line.partition(']')
        try:
            idx = int(idx_part[1:])
            name = rest.strip().split()[0]
            section_map[idx] = name
        except (ValueError, IndexError):
            continue
            
    # parse symbol names
    section_symbols = defaultdict(list)
    for line in sym_output.splitlines():
        line = line.strip()
        if not line or not line[0].isdigit():
            continue
        parts = line.split()
        if len(parts) >= 8:
            try:
                address = int(parts[1], 16)
                if address > 0x2fffffff or address < 0x1ff8000:
                    continue
                section_idx = parts[6]
                name = parts[7]
            except ValueError:
                continue
            if flip != should_ignore(name, flip, all_symbols):
                continue
            try:
                idx = int(section_idx)
                section = section_map.get(idx, '?')
            except ValueError:
                section = section_idx
            section_symbols[section].append(Symbol(address, name))
            
    return dict(section_symbols)
   
if __name__ == "__main__":
    parser = argparse.ArgumentParser(description='Tool to convert ELF symbols into a format readable by Ghidra')
    parser.add_argument('elfpath')
    parser.add_argument('outputpath')
    parser.add_argument('-u','--unnamed', help='only output unnamed symbols', action='store_true')
    parser.add_argument('-a','--all_symbols', help='output all non-garbage symbols', action='store_true')
    parser.add_argument('-f','--format', help='format overlay name', type=str) # cursed, use at own discretion
    args = parser.parse_args()
    
    
        
    sections = get_symbols_with_sections(args.elfpath, args.unnamed, args.all_symbols)
    
    # output formatted symbol names
    with open(args.outputpath, 'w') as f:
        for s in sections:
            if s.startswith("overlay") or s.startswith("main") or s=="ITCM":
                sorted_syms = sorted(sections[s], key=lambda sym: sym.address)
                for sym in sorted_syms:
                    if s.startswith("overlay"):
                        if args.format:
                            try:
                                overlay_id = int(s[7:])
                                f.write(f"{sym.name} {args.format.format(overlay_id)}:{hex(sym.address)} l\n")
                            except ValueError:
                                print(f"Warning: Unexpected overlay format \"{s}\"")
                        else:
                                f.write(f"{sym.name} {s}:{hex(sym.address)} l\n")
                    else:
                        f.write(f"{sym.name} {hex(sym.address)} l\n")