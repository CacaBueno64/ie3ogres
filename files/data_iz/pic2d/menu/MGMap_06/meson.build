MGMap_06_png_files = files(
    'MADNP22.png',
    'MADNP23.png',
    'MADNR01.png',
    'MADNC01.png',
    'MADNG06.png',
    'MADNE01.png',
)

MGMap_06_files = []

foreach MGMap_06_png : MGMap_06_png_files
    pac = custom_target(fs.name(MGMap_06_png).replace('.png', '.PAC'),
        input: MGMap_06_png,
        output: '@BASENAME@.PAC',
        command: [
            python3,
            image_py,
            '@INPUT@',
            '-t', 'PSC',
            '-c', '@OUTPUT@',
        ]
    )
    MGMap_06_files += pac
endforeach

MGMap_06_prebuilt_files = [
    'GMAP_DRAW_INFO_06.DAT',
]
foreach f : MGMap_06_prebuilt_files
    MGMap_06_files += fs.copyfile(f)
endforeach
