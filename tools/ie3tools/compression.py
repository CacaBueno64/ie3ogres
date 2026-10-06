#!/usr/bin/env python3

# credits: RoadrunnerWMC
# https://github.com/RoadrunnerWMC/ndspy/blob/master/ndspy/lz10.py
# https://github.com/RoadrunnerWMC/ndspy/blob/master/ndspy/_lzCommon.py

from pathlib import Path
import struct

def lz_uncompress(data: bytes) -> bytes:
    if data[0] != 0x10:
        raise TypeError("This isn't a LZ10-compressed file.")

    dataLen = struct.unpack_from('<I', data)[0] >> 8

    out = bytearray(dataLen)
    inPos, outPos = 4, 0

    while dataLen > 0:
        d = data[inPos]; inPos += 1

        if d:
            for i in range(8):
                if d & 0x80:
                    thing, = struct.unpack_from('>H', data, inPos); inPos += 2

                    length = (thing >> 12) + 3
                    offset = thing & 0xFFF
                    windowOffset = outPos - offset - 1

                    for j in range(length):
                        out[outPos] = out[windowOffset]
                        outPos += 1; windowOffset += 1; dataLen -= 1

                        if dataLen == 0:
                            return bytes(out)

                else:
                    out[outPos] = data[inPos]
                    outPos += 1; inPos += 1; dataLen -= 1

                    if dataLen == 0:
                        return bytes(out)

                d <<= 1
        else:
            for i in range(8):
                out[outPos] = data[inPos]
                outPos += 1; inPos += 1; dataLen -= 1

                if dataLen == 0:
                    return bytes(out)

    return bytes(out)

def lz_compress(data: bytes, pad: bool = False) -> bytes:
    def compressionSearch(pos):
        start = max(0, pos - 0x1000)

        lower = 0
        upper = min(18, len(data) - pos)

        recordMatchPos = recordMatchLen = 0
        while lower <= upper:
            matchLen = (lower + upper) // 2
            match = data[pos : pos + matchLen]
            matchPos = data.find(match, start, pos)

            if matchPos == -1:
                upper = matchLen - 1
            else:
                # Match found!
                if matchLen > recordMatchLen:
                    recordMatchPos, recordMatchLen = matchPos, matchLen
                lower = matchLen + 1

        return recordMatchPos, recordMatchLen

    result = bytearray()

    current = 0

    ignorableDataAmount = 0
    ignorableCompressedAmount = 0

    bestSavingsSoFar = 0

    while current < len(data):
        blockFlags = 0

        blockFlagsOffset = len(result)
        result.append(0)
        ignorableCompressedAmount += 1

        for i in range(8):
            if current >= len(data):
                if pad:
                    result.append(0)
                continue

            searchPos, searchLen = compressionSearch(current)
            searchDisp = current - searchPos - 1

            if searchLen > 2:
                blockFlags |= 1 << (7 - i)

                result.append((((searchLen - 3) & 0xF) << 4) | ((searchDisp >> 8) & 0xF))
                result.append(searchDisp & 0xFF)
                current += searchLen

                ignorableDataAmount += searchLen
                ignorableCompressedAmount += 2

            else:
                result.append(data[current])
                current += 1
                ignorableDataAmount += 1
                ignorableCompressedAmount += 1

            savingsNow = current - len(result)
            if savingsNow > bestSavingsSoFar:
                ignorableDataAmount = 0
                ignorableCompressedAmount = 0
                bestSavingsSoFar = savingsNow

        result[blockFlagsOffset] = blockFlags

    return struct.pack('<I', len(data) << 3 | 0x1) + bytes(result)

import argparse
def main():
    parser = argparse.ArgumentParser(
        description="LZ compression and uncompression."
    )

    parser.add_argument("input", help="Input file")
    parser.add_argument("output", help="Output file")

    mode = parser.add_mutually_exclusive_group(required=True)
    mode.add_argument(
        "-d",
        "--decode",
        action="store_true",
        help="Uncompress",
    )
    mode.add_argument(
        "-c",
        "--encode",
        action="store_true",
        help="Compress",
    )

    args = parser.parse_args()

    path = Path(args.input)
    outpath = Path(args.output)
    if not path.exists():
        raise FileNotFoundError(f"compression: Cannot find {path.name}")
    if not outpath.exists():
        raise FileNotFoundError(f"compression: Cannot find {outpath.name}")
    
    if args.decode:
        output = lz_uncompress(path.read_bytes())
    elif args.encode:
        output = lz_compress(path.read_bytes())
    
    outpath.write_bytes(output)

if __name__ == "__main__":
    main()
