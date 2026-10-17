MGMap_10_png_files = files(
    'MADNP34.png',
    'MADNP35.png',
    'MADNR01.png',
    'MADNC01.png',
    'MADNG10.png',
    'MADNE01.png',
)

MGMap_10_files = []

foreach MGMap_10_png : MGMap_10_png_files
    pac = custom_target(fs.name(MGMap_10_png).replace('.png', '.PAC'),
        input: MGMap_10_png,
        output: '@BASENAME@.PAC',
        command: [
            python3,
            image_py,
            '@INPUT@',
            '-t', 'PSC',
            '-c', '@OUTPUT@',
        ]
    )
    MGMap_10_files += pac
endforeach

MGMap_10_prebuilt_files = [
    'GMAP_DRAW_INFO_10.DAT',
]
foreach f : MGMap_10_prebuilt_files
    MGMap_10_files += fs.copyfile(f)
endforeach
