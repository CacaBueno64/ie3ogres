TaikenIni_png_files = files(
    'STDN_BG00T.png',
    'STDN_C00.png',
    'STDN_C01.png',
    'STDN_I01.png',
    'STDN_I02.png',
    'STDN_I03.png',
    'STDN_I04.png',
    'STDN_I05.png',
    'STDN_I06.png',
    'STDN_I07.png',
    'STDN_I08.png',
)

TaikenIni_files = []

foreach TaikenIni_png : TaikenIni_png_files
    pac = custom_target(fs.name(TaikenIni_png).replace('.png', '.PAC'),
        input: TaikenIni_png,
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
    TaikenIni_files += pac
endforeach
