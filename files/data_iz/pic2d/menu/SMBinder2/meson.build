SMBinder2_png_files = files(
    'CHUP_F00.png',
    'CHUP_F01.png',
    'CHUP_S02.png',
    'CHUP_W00.png',
    'CHUP_W01.png',
    'CHUP_W02.png',
    'CHUP_W03.png',
    'CHUP_W04.png',
    'CHUP_W05.png',
    'CHUP_W06.png',
    'CHUP_W07.png',
)

SMBinder2_files = []

foreach SMBinder2_png : SMBinder2_png_files
    pac = custom_target(fs.name(SMBinder2_png).replace('.png', '.PAC'),
        input: SMBinder2_png,
        output: '@BASENAME@.PAC',
        command: [
            python3,
            image_py,
            '@INPUT@',
            '-t', 'PSC',
            '-c', '@OUTPUT@',
        ]
    )
    SMBinder2_files += pac
endforeach

