SMBinder1_png_files = files(
    'CHUP_BG.png',
    'CHUP_S00.png',
    'CHUP_S01.png',
    'CHUP_T00.png',
)

SMBinder1_files = []

foreach SMBinder1_png : SMBinder1_png_files
    pac = custom_target(fs.name(SMBinder1_png).replace('.png', '.PAC'),
        input: SMBinder1_png,
        output: '@BASENAME@.PAC',
        command: [
            python3,
            image_py,
            '@INPUT@',
            '-t', 'PSC',
            '-c', '@OUTPUT@',
        ]
    )
    SMBinder1_files += pac
endforeach

