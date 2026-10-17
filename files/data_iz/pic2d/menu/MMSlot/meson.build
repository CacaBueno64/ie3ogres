MMSlot_png_files = files(
    'ATDN_BG00.png',
    'ATDN_BG01.png',
    'ATDN_I00.png',
    'SFDN_B00.png',
    'SFDN_B01.png',
    'SFDN_B02.png',
    'SFDN_B03.png',
    'SFDN_B04.png',
    'SFDN_B05.png',
    'SFDN_B06.png',
    'SFDN_BG00.png',
    'SFDN_BG01.png',
    'SFDN_BG02.png',
    'SFDN_C00.png',
    'SFDN_C01.png',
    'SFDN_G00.png',
    'SFDN_I00.png',
    'SFDN_I01.png',
    'SFDN_N00.png',
    'SFDN_N01.png',
    'SFDN_O01.png',
    'SFDN_W00.png',
    'SFDN_W01.png',
    'SFDN_W02.png',
    'SFDN_W03.png',
    'SFDN_W04.png',
    'SFDN_W05.png',
    'SFDN_W06.png',
    'SFDN_W07.png',
    'SFDN_W08.png',
    'SFDN_W09.png',
    'SFDN_W10.png',
)

MMSlot_files = []

foreach MMSlot_png : MMSlot_png_files
    pac = custom_target(fs.name(MMSlot_png).replace('.png', '.PAC'),
        input: MMSlot_png,
        output: '@BASENAME@.PAC',
        command: [
            python3,
            image_py,
            '@INPUT@',
            '-t', 'PSC',
            '-c', '@OUTPUT@',
        ]
    )
    MMSlot_files += pac
endforeach

