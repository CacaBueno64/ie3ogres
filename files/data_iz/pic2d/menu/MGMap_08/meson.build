MGMap_08_png_files = files(
    'MADNP28.png',
    'MADNP29.png',
    'MADNR01.png',
    'MADNC01.png',
    'MADNG08.png',
    'MADNE01.png',
)

MGMap_08_files = []

foreach MGMap_08_png : MGMap_08_png_files
    pac = custom_target(fs.name(MGMap_08_png).replace('.png', '.PAC'),
        input: MGMap_08_png,
        output: '@BASENAME@.PAC',
        command: [
            python3,
            image_py,
            '@INPUT@',
            '-t', 'PSC',
            '-c', '@OUTPUT@',
        ]
    )
    MGMap_08_files += pac
endforeach

MGMap_08_prebuilt_files = [
    'GMAP_DRAW_INFO_08.DAT',
]
foreach f : MGMap_08_prebuilt_files
    MGMap_08_files += fs.copyfile(f)
endforeach
