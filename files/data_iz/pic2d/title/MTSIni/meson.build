MTSIni_png_files = files(
    'STDN_BG00B.png',
    'STDN_BG00F.png',
    'STDN_C00.png',
    'STDN_I00.png',
    'STDN_I01.png',
    'STDN_I02.png',
    'STDN_I03.png',
    'STDN_I04.png',
    'STDN_I05.png',
    'STDN_I06.png',
    'STDN_I07.png',
)

MTSIni_files = []

foreach MTSIni_png : MTSIni_png_files
    pac = custom_target(fs.name(MTSIni_png).replace('.png', '.PAC'),
        input: MTSIni_png,
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
    MTSIni_files += pac
endforeach
