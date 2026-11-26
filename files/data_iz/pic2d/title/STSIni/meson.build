STSIni_png_files = files(
    'ST_UP_F01_1.png',
    'ST_UP_F01_2.png',
    'ST_UP_F01_3.png',
    'ST_UP_F01_4.png',
    'ST_UP_F02_1.png',
    'ST_UP_F02_2.png',
    'ST_UP_F02_3.png',
    'ST_UP_F02_4.png',
    'ST_UP12.png',
)

STSIni_files = []

foreach STSIni_png : STSIni_png_files
    pac = custom_target(fs.name(STSIni_png).replace('.png', '.PAC'),
        input: STSIni_png,
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
    STSIni_files += pac
endforeach
