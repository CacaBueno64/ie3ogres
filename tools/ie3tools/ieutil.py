
def read_string(data: bytes, offset: int = 0, encoding: str = "shift_jis") -> str:
    try:
        end = data.index(0, offset)
        return data[offset:end].decode(encoding, errors='replace')
    except ValueError:
        return data[offset:].decode(encoding, errors='replace')
    
def decrypt_dat(buf: bytes, size: int) -> bytearray:
    """
    "encryption" format used in some .dat files such as unitstat.dat and item.dat
    not present before IE3
    """
    data = bytearray(buf[:size])

    for i in range(size):
        data[i] ^= 0xAD

    for i in range(size):
        val = data[i]
        for _ in range(2):
            val = ((val & 1) << 7) | (val >> 1)
        data[i] = val
    
    if size != 2:
        i = 0
        while i + 2 < size:
            data[i], data[i + 2] = data[i + 2], data[i]
            i += 3
            
    if size != 4:
        i = 0
        while i + 4 < size:
            data[i], data[i + 4] = data[i + 4], data[i]
            i += 5

    if size != 6:
        i = 0
        while i + 6 < size:
            data[i], data[i + 6] = data[i + 6], data[i]
            i += 7

    if size != 1:
        i = 0
        while i + 1 < size:
            data[i], data[i + 1] = data[i + 1], data[i]
            i += 2

    return data
    
def encrypt_dat(buf: bytes, size: int) -> bytearray:
    """
    "encryption" format used in some .dat files such as unitstat.dat and item.dat
    not present before IE3
    """
    data = bytearray(buf[:size])

    if size != 1:
        i = ((size - 2) // 2) * 2
        while i >= 0:
            data[i], data[i + 1] = data[i + 1], data[i]
            i -= 2

    if size != 6:
        i = ((size - 7) // 7) * 7
        while i >= 0:
            data[i], data[i + 6] = data[i + 6], data[i]
            i -= 7

    if size != 4:
        i = ((size - 5) // 5) * 5
        while i >= 0:
            data[i], data[i + 4] = data[i + 4], data[i]
            i -= 5

    if size != 2:
        i = ((size - 3) // 3) * 3
        while i >= 0:
            data[i], data[i + 2] = data[i + 2], data[i]
            i -= 3

    for i in range(size):
        val = data[i]
        val = ((val << 2) | (val >> 6)) & 0xFF
        data[i] = val

    for i in range(size):
        data[i] ^= 0xAD
        
    return data
