#ifndef COMPRESSION_HPP
#define COMPRESSION_HPP

#include <cstdint>
#include <cstdio>

typedef enum
{
    COMPRESSION_LZ = 0x10,
    COMPRESSION_HUFFMAN = 0x20,
    COMPRESSION_RL = 0x30,
    COMPRESSION_DIFF = 0x80,

    COMPRESSION_TYPE_MASK = 0xf0,
    COMPRESSION_TYPE_EX_MASK = 0xff,
}
CompressionType;

typedef struct {
    uint32_t compParam:4;
    uint32_t compType:4;
    uint32_t destSize:24;
} CompressionHeader;

static inline size_t GetUncompressedSize(const void *data)
{
    return *reinterpret_cast<const uint32_t *>(data) >> 8;
}

static inline CompressionType GetCompressionType(const void *data)
{
    return static_cast<CompressionType>(*reinterpret_cast<const uint32_t *>(data) & COMPRESSION_TYPE_MASK);
}

bool IsCompressed(const void *data);
size_t Uncompress(void *dst, const void *src);
void UncompressLZ8(const void *srcp, void *destp);
void UncompressHuffman(const void *srcp, void *destp);
void *Compress(void *src, size_t size, CompressionType type, size_t *compressedSize);
void *CompressLZ(uint8_t *src, int srcSize, int *compressedSize, const int minDistance, bool forwardIteration, bool pad);

#endif // COMPRESSION_HPP
