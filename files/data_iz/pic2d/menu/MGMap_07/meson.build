MGMap_07_png_files = files(
    'MADNP25.png',
    'MADNP26.png',
    'MADNR01.png',
    'MADNC01.png',
    'MADNG07.png',
    'MADNE01.png',
)

MGMap_07_files = []

foreach MGMap_07_png : MGMap_07_png_files
    pac = custom_target(fs.name(MGMap_07_png).replace('.png', '.PAC'),
        input: MGMap_07_png,
        output: '@BASENAME@.PAC',
        command: [
            python3,
            image_py,
            '@INPUT@',
            '-t', 'PSC',
            '-c', '@OUTPUT@',
        ]
    )
    MGMap_07_files += pac
endforeach

MGMap_07_prebuilt_files = [
    'GMAP_DRAW_INFO_07.DAT',
]
foreach f : MGMap_07_prebuilt_files
    MGMap_07_files += fs.copyfile(f)
endforeach
