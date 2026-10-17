MGMap_05_png_files = files(
    'MADNP19.png',
    'MADNP20.png',
    'MADNR01.png',
    'MADNC01.png',
    'MADNG05.png',
    'MADNE01.png',
)

MGMap_05_files = []

foreach MGMap_05_png : MGMap_05_png_files
    pac = custom_target(fs.name(MGMap_05_png).replace('.png', '.PAC'),
        input: MGMap_05_png,
        output: '@BASENAME@.PAC',
        command: [
            python3,
            image_py,
            '@INPUT@',
            '-t', 'PSC',
            '-c', '@OUTPUT@',
        ]
    )
    MGMap_05_files += pac
endforeach

MGMap_05_prebuilt_files = [
    'GMAP_DRAW_INFO_05.DAT',
]
foreach f : MGMap_05_prebuilt_files
    MGMap_05_files += fs.copyfile(f)
endforeach
