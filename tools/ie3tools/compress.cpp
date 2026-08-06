#include "compression.hpp"

#include <cstdlib>
#include <cstdint>
#include <cstring>

// g++ -g ./tools/ie3tools/compress.cpp -std=c++20 -o ./tools/ie3tools/compress && ./tools/ie3tools/compress
int main(int argc, char **argv)
{
    if (strcmp("-h", argv[1]) == 0) {
        fprintf(stderr, "usage: compression [-d] [-c] [-t]\n");
        fprintf(stderr, "\noptions:\n");
        fprintf(stderr, "\t[-d] Uncompress.\n");
        fprintf(stderr, "\t[-c] Compress.\n");
        fprintf(stderr, "\t[-t] Compression type (LZ).\n");
        return 0;
    } else if (strcmp("-t", argv[1]) == 0) {
        if (strcmp("LZ", argv[2]) == 0) {
            if (strcmp("-d", argv[3]) == 0) {
                FILE *file = fopen(argv[4], "rb");
                if (file == NULL) {
                    fprintf(stderr, "compression: could not open %s\n", argv[4]);
                    exit(-1);
                }
                fseek(file, 0, SEEK_END);
                size_t size = ftell(file);
                fseek(file, 0, SEEK_SET);

                void *data = malloc(size);
                if (!data) {
                    exit(-1);
                }
                fread(data, size, 1, file);
                fclose(file);

                size_t uncompSize = GetUncompressedSize(data);
                void *uncompData = malloc(uncompSize);
                if (!uncompData) {
                    exit(-1);
                }
                if (!Uncompress(uncompData, data)) {
                    fprintf(stderr, "compression: uncompression failed %s\n", argv[4]);
                    exit(-1);
                }
                free(data);

                FILE *out = fopen(argv[5], "wb");
                if (out == NULL) {
                    fprintf(stderr, "compression: could not open %s\n", argv[5]);
                    exit(-1);
                }
                fwrite(uncompData, uncompSize, 1, out);
                fclose(out);

                free(uncompData);
                return 0;
            } else if (strcmp("-c", argv[3]) == 0) {
                FILE *file = fopen(argv[4], "rb");
                if (file == NULL) {
                    fprintf(stderr, "compression: could not open %s\n", argv[4]);
                    exit(-1);
                }
                fseek(file, 0, SEEK_END);
                size_t size = ftell(file);
                fseek(file, 0, SEEK_SET);

                void *data = malloc(size);
                if (!data) {
                    exit(-1);
                }
                fread(data, size, 1, file);
                fclose(file);

                size_t compSize;
                void *compData = Compress(data, size, COMPRESSION_LZ, &compSize);

                FILE *out = fopen(argv[5], "wb");
                if (out == NULL) {
                    fprintf(stderr, "compression: could not open %s\n", argv[5]);
                    exit(-1);
                }
                fwrite(compData, compSize, 1, out);
                fclose(out);

                free(compData);

                return 0;
            } else {
                exit(-1);
            }
        } else {
            fprintf(stderr, "compression: type not supported %s\n", argv[2]);
            exit(-1);
        }
    } else {
        exit(-1);
    }
}
