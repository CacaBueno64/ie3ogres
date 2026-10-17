MGMap_02_png_files = files(
    'MADNP02.png',
    'MADNP03.png',
    'MADNP04.png',
    'MADNP05.png',
    'MADNP06.png',
    'MADNP07.png',
    'MADNP08.png',
    'MADNP09.png',
    'MADNP36.png',
    'MADNR01.png',
    'MADNC01.png',
    'MADNG02.png',
    'MADNE01.png',
)

MGMap_02_files = []

foreach MGMap_02_png : MGMap_02_png_files
    pac = custom_target(fs.name(MGMap_02_png).replace('.png', '.PAC'),
        input: MGMap_02_png,
        output: '@BASENAME@.PAC',
        command: [
            python3,
            image_py,
            '@INPUT@',
            '-t', 'PSC',
            '-c', '@OUTPUT@',
        ]
    )
    MGMap_02_files += pac
endforeach

MGMap_02_prebuilt_files = [
    'GMAP_DRAW_INFO_02.DAT',
]
foreach f : MGMap_02_prebuilt_files
    MGMap_02_files += fs.copyfile(f)
endforeach
