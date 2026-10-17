MGMap_png_files = files(
    'MADN_01.png',
    'MADN_02.png',
    'MADN_03.png',
    'MADN_04.png',
    'MADN_05.png',
    'MADN_06.png',
    'MADN_07.png',
    'MADN_BG.png',
    'MMDN_C00.png',
    'MMDN_C01.png',
    'MMDN_W00.png',
    'MMDN_W01.png',
    'MMDN_W02.png',
)

MGMap_files = []

foreach MGMap_png : MGMap_png_files
    pac = custom_target(fs.name(MGMap_png).replace('.png', '.PAC'),
        input: MGMap_png,
        output: '@BASENAME@.PAC',
        command: [
            python3,
            image_py,
            '@INPUT@',
            '-t', 'PSC',
            '-c', '@OUTPUT@',
        ]
    )
    MGMap_files += pac
endforeach

MGMap_prebuilt_files = [
    'GMAP_DRAW_INFO.DAT',
]
foreach f : MGMap_prebuilt_files
    MGMap_files += fs.copyfile(f)
endforeach
