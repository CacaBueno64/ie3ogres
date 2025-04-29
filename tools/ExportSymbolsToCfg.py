#@author @cacabueno (discord)
#@category Export

# This is a Ghidra script for exporting symbols (functions and labels)
# to a cfg file to use it for ndsdisasm: https://github.com/pikalaxalt/ndsdisasm

import struct
output_file = askFile("Select output file", "Save")

with open(output_file.absolutePath, "wt") as f:
    entries = []
    
    function_manager = currentProgram.getFunctionManager()
    for func in function_manager.getFunctions(True):  # True = forward
        addr = func.getEntryPoint()
        name = func.getName()
        entries.append((addr, name))
    
    symbol_table = currentProgram.getSymbolTable()
    for symbol in symbol_table.getAllSymbols(True):  # True = forward
        if symbol.isPrimary() and not symbol.isExternal():
            addr = symbol.getAddress()
            name = symbol.getName()
            if str(name).startswith(("LAB", "switch", "case")) and not "+" in str(name):
                entries.append((addr, name))
    
    entries.sort(key=lambda x: x[0].getOffset())
    
    with open(output_file.absolutePath, "wt") as f:
        for addr, name in entries:
            f.write("arm_func ")
            address = str(addr)
            if "overlay" in address:
                address = address.split("::")[1]
            f.write("0x" + address + " ")
            f.write(str(name) + "\n")
