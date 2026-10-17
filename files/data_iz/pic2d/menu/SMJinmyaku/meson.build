SMJinmyaku_png_files = files(
    'JMUP_B00.png',
    'JMUP_T00.png',
    'JMUP_T10.png',
    'JMUP_T11.png',
    'JMUP_T12.png',
    'JMUP_T13.png',
    'JMUP_T14.png',
    'JMUP_T20.png',
    'JMUP_T21.png',
    'JMUP_F09.png',
    'JMUP_F07.png',
    'JMUP_Z01.png',
    'JMUP_Z02.png',
    'JMUP_Z03.png',
    'JMUP_Z04.png',
)

SMJinmyaku_files = []

foreach SMJinmyaku_png : SMJinmyaku_png_files
    pac = custom_target(fs.name(SMJinmyaku_png).replace('.png', '.PAC'),
        input: SMJinmyaku_png,
        output: '@BASENAME@.PAC',
        command: [
            python3,
            image_py,
            '@INPUT@',
            '-t', 'PSC',
            '-c', '@OUTPUT@',
        ]
    )
    SMJinmyaku_files += pac
endforeach

