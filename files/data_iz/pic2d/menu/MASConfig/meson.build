MASConfig_png_files = files(
    'SYDN_BG01.png',
    'SYDN_B09.png',
    'SYDN_B10.png',
    'SYDN_B04.png',
    'SYDN_C01.png',
    'SYDN_C02.png',
    'SYDN_B07.png',
    'SYDN_B08.png',
)

MASConfig_files = []

foreach MASConfig_png : MASConfig_png_files
    pac = custom_target(fs.name(MASConfig_png).replace('.png', '.PAC'),
        input: MASConfig_png,
        output: '@BASENAME@.PAC',
        command: [
            image_exe,
            '-c',
            '@INPUT@',
            '@OUTPUT@',
            '--type', 'PSC',
        ]
    )
    MASConfig_files += pac
endforeach

