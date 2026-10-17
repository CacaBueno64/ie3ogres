MGMap_04_png_files = files(
    'MADNP15.png',
    'MADNP16.png',
    'MADNP17.png',
    'MADNR01.png',
    'MADNC01.png',
    'MADNG04.png',
    'MADNE01.png',
)

MGMap_04_files = []

foreach MGMap_04_png : MGMap_04_png_files
    pac = custom_target(fs.name(MGMap_04_png).replace('.png', '.PAC'),
        input: MGMap_04_png,
        output: '@BASENAME@.PAC',
        command: [
            python3,
            image_py,
            '@INPUT@',
            '-t', 'PSC',
            '-c', '@OUTPUT@',
        ]
    )
    MGMap_04_files += pac
endforeach

MGMap_04_prebuilt_files = [
    'GMAP_DRAW_INFO_04.DAT',
]
foreach f : MGMap_04_prebuilt_files
    MGMap_04_files += fs.copyfile(f)
endforeach
