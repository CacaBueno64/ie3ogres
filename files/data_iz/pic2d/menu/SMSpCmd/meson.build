SMSpCmd_png_files = files(
    'SCUP_BG00.png',
    'SCUP_I00.png',
    'SCUP_I01.png',
    'SCUP_I02.png',
    'SCUP_I03.png',
    'SCUP_I04.png',
    'SCUP_I05.png',
    'SCUP_I06.png',
    'SCUP_I07.png',
    'SCUP_I08.png',
    'SCUP_I09.png',
    'SCUP_N00.png',
    'SCUP_N01.png',
    'SCUP_N02.png',
    'SCUP_N03.png',
    'SCUP_N04.png',
    'SCUP_Z00.png',
    'SCUP_Z01.png',
    'SCUP_Z02.png',
    'SCUP_Z03.png',
    'SCUP_Z04.png',
)

SMSpCmd_files = []

foreach SMSpCmd_png : SMSpCmd_png_files
    pac = custom_target(fs.name(SMSpCmd_png).replace('.png', '.PAC'),
        input: SMSpCmd_png,
        output: '@BASENAME@.PAC',
        command: [
            python3,
            image_py,
            '@INPUT@',
            '-t', 'PSC',
            '-c', '@OUTPUT@',
        ]
    )
    SMSpCmd_files += pac
endforeach

