MGMap_03_png_files = files(
    'MADNP11.png',
    'MADNP12.png',
    'MADNP13.png',
    'MADNR01.png',
    'MADNC01.png',
    'MADNG03.png',
    'MADNE01.png',
)

MGMap_03_files = []

foreach MGMap_03_png : MGMap_03_png_files
    pac = custom_target(fs.name(MGMap_03_png).replace('.png', '.PAC'),
        input: MGMap_03_png,
        output: '@BASENAME@.PAC',
        command: [
            image_exe,
            '-c',
            '@INPUT@',
            '@OUTPUT@',
            '--type', 'PSC',
        ]
    )
    MGMap_03_files += pac
endforeach

MGMap_03_prebuilt_files = [
    'GMAP_DRAW_INFO_03.DAT',
]
foreach f : MGMap_03_prebuilt_files
    MGMap_03_files += fs.copyfile(f)
endforeach
