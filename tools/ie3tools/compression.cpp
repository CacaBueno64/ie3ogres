#include "compression.hpp"

#include <cstdlib>
#include <cstdint>
#include <cstring>

bool IsCompressed(const void *data)
{
    CompressionType type = GetCompressionType(data);

    switch (type) {
    case COMPRESSION_LZ:
    case COMPRESSION_HUFFMAN:
    case COMPRESSION_RL:
    case COMPRESSION_DIFF:
        return true;
    default:
        return false;
    }
}

size_t Uncompress(void *dst, const void *src)
{
    CompressionType type = GetCompressionType(src);

    switch (type) {
    case COMPRESSION_LZ:
        UncompressLZ8(src, dst);
        break;
    case COMPRESSION_HUFFMAN:
        UncompressHuffman(src, dst);
        break;
    case COMPRESSION_RL:
    case COMPRESSION_DIFF:
    default:
        fprintf(stderr, "compression: type %d not supported\n", type);
        return 0;
    }

    return GetUncompressedSize(src);
}

void UncompressLZ8(const void* srcp, void* destp)
{
    const uint8_t* src = static_cast<const uint8_t*>(srcp);
    uint8_t* dst = static_cast<uint8_t*>(destp);

    uint32_t header = *(const uint32_t*)src;
    uint32_t destCount = header >> 8;
    bool isExFormat = (header & 0x0F) != 0;

    src += 4;

    while (destCount > 0)
    {
        uint8_t flags = *src++;

        for (int i = 0; i < 8 && destCount > 0; i++)
        {
            if ((flags & 0x80) == 0)
            {
                *dst++ = *src++;
                destCount--;
            }
            else
            {
                uint32_t length;
                uint32_t offset;

                uint8_t b = *src;
                length = b >> 4;

                if (!isExFormat)
                {
                    length += 3;
                }
                else
                {
                    if (length > 1)
                    {
                        length += 1;
                    }
                    else
                    {
                        bool isWide = (length == 1);

                        length = (*src++ & 0x0F) << 4;

                        if (isWide)
                        {
                            length <<= 8;
                            length += (*src++) << 4;
                            length += 0x100;
                        }

                        length += 0x11;
                        length += (*src >> 4);
                    }
                }

                offset = (*src++ & 0x0F) << 8;
                offset |= *src++;
                offset += 1;

                destCount -= length;

                do
                {
                    *dst = *(dst - offset);
                    dst++;
                }
                while (--length);
            }

            flags <<= 1;
        }
    }
}

void UncompressHuffman(const void* srcp, void* destp)
{
    const uint8_t* src8 = static_cast<const uint8_t*>(srcp);
    uint32_t* dst = static_cast<uint32_t*>(destp);

    uint32_t header = *(const uint32_t*)src8;

    const uint8_t dataBit = header & 0x0F;
    uint32_t destCount = header >> 8;

    const uint8_t* tree = src8 + 4;
    const uint8_t* treeStart = tree + 1;

    const uint32_t* src =
        reinterpret_cast<const uint32_t*>(
            tree + ((tree[0] + 1) << 1));

    tree = treeStart;

    uint32_t destTmp = 0;
    uint32_t destTmpCount = 0;
    const uint32_t destTmpDataNum = 4 + (dataBit & 7);

    while (destCount > 0)
    {
        uint32_t srcTmp = *src++;

        for (int srcCount = 32; --srcCount >= 0;)
        {
            uint32_t treeShift = srcTmp >> 31;
            uint8_t treeCheck = *tree;

            treeCheck <<= treeShift;

            tree = reinterpret_cast<const uint8_t*>(
                (((uintptr_t)tree & ~1u) +
                (((*tree & 0x3F) + 1) << 1) +
                treeShift));

            if (treeCheck & 0x80)
            {
                destTmp >>= dataBit;
                destTmp |= uint32_t(*tree) << (32 - dataBit);

                tree = treeStart;

                if (++destTmpCount == destTmpDataNum)
                {
                    *dst++ = destTmp;

                    destCount -= 4;
                    destTmpCount = 0;
                }
            }

            if (destCount == 0)
                break;

            srcTmp <<= 1;
        }
    }
}

void *Compress(void *src, size_t size, CompressionType type, size_t *compressedSize)
{
    switch (type) {
    case COMPRESSION_LZ:
    {
        int outSize;
        void *dst = CompressLZ(static_cast<uint8_t *>(src), size, &outSize, 2, true, true);
        *compressedSize = outSize;
        return dst;
    }
    case COMPRESSION_HUFFMAN:
    case COMPRESSION_RL:
    case COMPRESSION_DIFF:
    default:
        fprintf(stderr, "compression: type %d not supported\n", type);
        return NULL;
    }
}

static void FindBestBlockForwards(uint8_t *src, int srcPos, int srcSize, const int minDistance, int *outBestBlockDistance, int *outBestBlockSize)
{
    int blockStart = srcPos < 0x1000 ? 0 : srcPos - 0x1000;
    while (blockStart != srcPos) {
        int blockSize = 0;

        while (blockSize < 18
            && srcPos + blockSize < srcSize
            && src[blockStart + blockSize] == src[srcPos + blockSize])
            blockSize++;

        if (blockSize > *outBestBlockSize
            && srcPos - blockStart >= minDistance) {
            *outBestBlockDistance = srcPos - blockStart;
            *outBestBlockSize = blockSize;

            if (blockSize == 18)
                break;
        }

        blockStart++;
    }
}

static void FindBestBlockBackwards(uint8_t *src, int srcPos, int srcSize, const int minDistance, int *outBestBlockDistance, int *outBestBlockSize)
{
    int blockDistance = minDistance;

    while (blockDistance <= srcPos && blockDistance <= 0x1000) {
        int blockStart = srcPos - blockDistance;
        int blockSize = 0;

        while (blockSize < 18
            && srcPos + blockSize < srcSize
            && src[blockStart + blockSize] == src[srcPos + blockSize])
            blockSize++;

        if (blockSize > *outBestBlockSize) {
            *outBestBlockDistance = blockDistance;
            *outBestBlockSize = blockSize;

            if (blockSize == 18)
                break;
        }

        blockDistance++;
    }
}

typedef void (*FindBestBlockFunc)(uint8_t *src, int srcPos, int srcSize, const int minDistance, int *outBestBlockDistance, int *outBestBlockSize);

void *CompressLZ(uint8_t *src, int srcSize, int *compressedSize, const int minDistance, bool forwardIteration, bool pad)
{
    if (srcSize <= 0) {
        fprintf(stderr, "Fatal error while compressing LZ file.\n");
        exit(-1);
    }

    int worstCaseDestSize = 4 + srcSize + ((srcSize + 7) / 8);

    // Round up to the next multiple of four.
    worstCaseDestSize = (worstCaseDestSize + 3) & ~3;

    uint8_t *dest = (uint8_t *)(malloc(worstCaseDestSize));

    if (dest == NULL) {
        fprintf(stderr, "Fatal error while compressing LZ file.\n");
        exit(-1);
    }

    // header
    dest[0] = 0x10; // LZ compression type
    dest[1] = (uint8_t)srcSize;
    dest[2] = (uint8_t)(srcSize >> 8);
    dest[3] = (uint8_t)(srcSize >> 16);

    int srcPos = 0;
    int destPos = 4;
    FindBestBlockFunc FindBestBlock = forwardIteration ? FindBestBlockForwards : FindBestBlockBackwards;

    for (;;) {
        uint8_t *flags = &dest[destPos++];
        *flags = 0;

        for (int i = 0; i < 8; i++) {
            int bestBlockDistance = 0;
            int bestBlockSize = 0;

            FindBestBlock(src, srcPos, srcSize, minDistance, &bestBlockDistance, &bestBlockSize);

            if (bestBlockSize >= 3) {
                *flags |= (0x80 >> i);
                srcPos += bestBlockSize;
                bestBlockSize -= 3;
                bestBlockDistance--;
                dest[destPos++] = (bestBlockSize << 4) | ((unsigned int)bestBlockDistance >> 8);
                dest[destPos++] = (uint8_t)bestBlockDistance;
            } else {
                dest[destPos++] = src[srcPos++];
            }

            if (srcPos == srcSize) {
                if (pad) {
                    // Pad to multiple of 4 bytes.
                    int remainder = destPos % 4;

                    if (remainder != 0) {
                        for (int i = 0; i < 4 - remainder; i++)
                            dest[destPos++] = 0;
                    }
                }

                *compressedSize = destPos;
                return dest;
            }
        }
    }
}
