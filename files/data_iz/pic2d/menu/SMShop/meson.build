SMShop_png_files = files(
    'SHUP_A00.png',
    'SHUP_BG00.png',
    'SHUP_C00.png',
    'SHUP_F00.png',
    'SHUP_F01.png',
    'SHUP_F02.png',
    'SHUP_F03.png',
    'SHUP_I00.png',
    'SHUP_W00_01.png',
    'SHUP_W00_02.png',
    'SHUP_W00_03.png',
)

SMShop_files = []

foreach SMShop_png : SMShop_png_files
    pac = custom_target(fs.name(SMShop_png).replace('.png', '.PAC'),
        input: SMShop_png,
        output: '@BASENAME@.PAC',
        command: [
            python3,
            image_py,
            '@INPUT@',
            '-t', 'PSC',
            '-c', '@OUTPUT@',
        ]
    )
    SMShop_files += pac
endforeach

