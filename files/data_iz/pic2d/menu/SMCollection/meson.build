SMCollection_png_files = files(
    'BGMUP_BG01.png',
    'CLUP_BG00.png',
)

SMCollection_files = []

foreach SMCollection_png : SMCollection_png_files
    pac = custom_target(fs.name(SMCollection_png).replace('.png', '.PAC'),
        input: SMCollection_png,
        output: '@BASENAME@.PAC',
        command: [
            python3,
            image_py,
            '@INPUT@',
            '-t', 'PSC',
            '-c', '@OUTPUT@',
        ]
    )
    SMCollection_files += pac
endforeach

