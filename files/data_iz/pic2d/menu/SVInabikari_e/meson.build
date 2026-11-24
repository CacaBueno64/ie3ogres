SVInabikari_e_png_files = files(
    'INUP_BG00.png',
    'INUP_T01.png',
    'INUP_C00.png',
    'INUP_C01.png',
    'INUP_W00.png',
    'INUP_Y00.png',
)

SVInabikari_e_files = []

foreach SVInabikari_e_png : SVInabikari_e_png_files
    pac = custom_target(fs.name(SVInabikari_e_png).replace('.png', '.PAC'),
        input: SVInabikari_e_png,
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
    SVInabikari_e_files += pac
endforeach

