SVInabikari_png_files = files(
    'INUP_BG00.png',
    'INUP_T01.png',
    'INUP_C00.png',
    'INUP_C01.png',
    'INUP_C02.png',
    'INUP_C03.png',
    'INUP_C04.png',
    'INUP_C05.png',
    'INUP_W00.png',
    'INUP_Y00.png',
)

SVInabikari_files = []

foreach SVInabikari_png : SVInabikari_png_files
    pac = custom_target(fs.name(SVInabikari_png).replace('.png', '.PAC'),
        input: SVInabikari_png,
        output: '@BASENAME@.PAC',
        command: [
            python3,
            image_py,
            '@INPUT@',
            '-t', 'PSC',
            '-c', '@OUTPUT@',
        ]
    )
    SVInabikari_files += pac
endforeach

