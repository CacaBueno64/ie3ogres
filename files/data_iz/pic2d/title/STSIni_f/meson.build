STSIni_f_png_files = files(
    'ST_UP_BG01F.png',
    'ST_UP_BG02F.png',
    'ST_UP02A.png',
)

STSIni_f_files = []

foreach STSIni_f_png : STSIni_f_png_files
    pac = custom_target(fs.name(STSIni_f_png).replace('.png', '.PAC'),
        input: STSIni_f_png,
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
    STSIni_f_files += pac
endforeach
