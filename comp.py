from ndspy import codeCompression

curfile = "overlay_0001"

with open(f"../dslazy/NDS_UNPACK/overlay/{curfile}.bin", "rb") as file, \
    open(f"../dslazy/NDS_UNPACK/overlay/{curfile}.decomp", "wb") as out:
        data = file.read()
        decomp = codeCompression.decompress(data)
        out.write(decomp)
