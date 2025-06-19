import os

ov = [
    "2",
    "7",
    "8",
    "9",
    "10",
    "11",
    "12",
    "13",
    "14",
    "78"
]
for i in ov:
    with open(f"./ie3/asm/ov{i}.s", "wt") as out:
        out.write(f"\t.section overlay{i}\n\n\t.fill 0x20")