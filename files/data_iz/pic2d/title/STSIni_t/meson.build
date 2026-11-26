STSIni_t_png_files = files(
    'ST_UP_BG01T.png',
    'ST_UP_BG02T.png',
    'ST_UP02C.png',
)

STSIni_t_files = []

foreach STSIni_t_png : STSIni_t_png_files
    pac = custom_target(fs.name(STSIni_t_png).replace('.png', '.PAC'),
        input: STSIni_t_png,
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
    STSIni_t_files += pac
endforeach
