#!/usr/bin/env python3

from struct import Struct, unpack_from, pack_into
from pathlib import Path

LCG_MUL = 0x5D588B65
LCG_INC = 0x00269EC3
LCG_INIT = 0xB5BDCF5A

def LCG_NEXT(state: int) -> int:
    return (state * LCG_MUL + LCG_INC) & 0xFFFFFFFF
def LCG_VALUE(state: int) -> int:
    return state >> 16
def LCG_RANGE(state: int, range: int) -> int:
    return range * (LCG_VALUE(state)) >> 16
def LCD_ZRANGE(state: int, range: int) -> int:
    if range:
        return LCG_RANGE(state, range)
    else:
        return LCG_VALUE(state)

SHUFFLE_TABLE_SIZE = 256

SAVE_DATA_SIZE = 0x7F80


def randRange(state: int, range: int) -> int:
    if range == 0:
        return LCG_VALUE(state) & 0xFFFF
    return ((LCG_VALUE(state) * range) >> 16) & 0xFFFF

def save_decrypt(data: bytearray) -> bytes:
    size: int = SAVE_DATA_SIZE - 12
    keys: bytearray = bytearray(4 * 3)
    table: bytearray = bytearray(2 * SHUFFLE_TABLE_SIZE)
    state: int = None

    state = LCG_INIT
    _range: int = (size & 0xFFFF) // 16
    tail: int = size
    pos: int = 0x20 + randRange(state, _range)
    key: int = 0
    for i in range(12):
        state = LCG_NEXT(state)
        pos += randRange(state, _range) + 2
        keys[key] = data[pos]
        key += 1
        data[pos] = data[tail]
        tail += 1
    
    state = unpack_from("<III", keys)[0]
    for i in range(SHUFFLE_TABLE_SIZE):
        state = LCG_NEXT(state)
        pack_into("<H", table, i * 2, LCG_VALUE(state) & 0xFFFF)
    
    for i in range(size):
        j = (i + ((unpack_from("<H", table, (i % SHUFFLE_TABLE_SIZE) * 2)[0] * size) >> 16)) % size
        if (i < 4 or i > 0x13) and (j < 4 or j > 0x13):
            data[i], data[j] = data[j], data[i]
    
    state = unpack_from("<III", keys)[1]
    for i in range(size):
        state = LCG_NEXT(state)
        v = LCG_RANGE(state, 0x100) & 0xFFFF
        if i < 4 or i > 0x13:
            data[i] = data[i] ^ v
    
    state = unpack_from("<III", keys)[2]
    for i in range(size):
        state = LCG_NEXT(state)
        v = LCG_RANGE(state, 8) & 0xFFFF
        if i < 4 or i > 0x13:
            data[i] = ((data[i] | (data[i] << 8)) >> v) & 0xFF

    return data

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
        "--decrypt",
        action="store_true",
        help="Decrypts the save data"
    )
    mode.add_argument(
        "-c",
        "--encrypt",
        action="store_true",
        help="Encrypts the save data",
    )

    args = parser.parse_args()

    inputData: bytearray = bytearray(Path(args.input).read_bytes())
    if args.decrypt:
        outputData: bytes = save_decrypt(inputData)
    elif args.encrypt:
        raise NotImplementedError("save: Save encrypt not supported.")
    Path(args.output).write_bytes(outputData)

if __name__ == "__main__":
    main()
