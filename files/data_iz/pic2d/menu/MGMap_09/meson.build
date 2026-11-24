MGMap_09_png_files = files(
    'MADNP31.png',
    'MADNP32.png',
    'MADNR01.png',
    'MADNC01.png',
    'MADNG09.png',
    'MADNE01.png',
)

MGMap_09_files = []

foreach MGMap_09_png : MGMap_09_png_files
    pac = custom_target(fs.name(MGMap_09_png).replace('.png', '.PAC'),
        input: MGMap_09_png,
        output: '@BASENAME@.PAC',
        command: [
            image_exe,
            '-c',
            '@INPUT@',
            '@OUTPUT@',
            '--type', 'PSC',
            '--opt', 'true',
        ]
    )
    MGMap_09_files += pac
endforeach

MGMap_09_prebuilt_files = [
    'GMAP_DRAW_INFO_09.DAT',
]
foreach f : MGMap_09_prebuilt_files
    MGMap_09_files += fs.copyfile(f)
endforeach
