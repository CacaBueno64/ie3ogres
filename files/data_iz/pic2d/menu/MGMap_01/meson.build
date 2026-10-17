MGMap_01_png_files = files(
    'MADNP01.png',
    'MADNP10.png',
    'MADNP14.png',
    'MADNP18.png',
    'MADNP21.png',
    'MADNP24.png',
    'MADNP27.png',
    'MADNP30.png',
    'MADNP33.png',
    'MADNC01.png',
    'MADNG01.png',
    'MADNE01.png',
)

MGMap_01_files = []

foreach MGMap_01_png : MGMap_01_png_files
    pac = custom_target(fs.name(MGMap_01_png).replace('.png', '.PAC'),
        input: MGMap_01_png,
        output: '@BASENAME@.PAC',
        command: [
            python3,
            image_py,
            '@INPUT@',
            '-t', 'PSC',
            '-c', '@OUTPUT@',
        ]
    )
    MGMap_01_files += pac
endforeach

MGMap_01_prebuilt_files = [
    'GMAP_DRAW_INFO_01.DAT',
]
foreach f : MGMap_01_prebuilt_files
    MGMap_01_files += fs.copyfile(f)
endforeach
