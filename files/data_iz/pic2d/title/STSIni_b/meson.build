STSIni_b_png_files = files(
    'ST_UP_BG01B.png',
    'ST_UP_BG02B.png',
    'ST_UP02B.png',
)

STSIni_b_files = []

foreach STSIni_b_png : STSIni_b_png_files
    pac = custom_target(fs.name(STSIni_b_png).replace('.png', '.PAC'),
        input: STSIni_b_png,
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
    STSIni_b_files += pac
endforeach
