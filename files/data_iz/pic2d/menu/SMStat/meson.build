SMStat_png_files = files(
    'MSUP_F00.png',
    'MSUP_F01.png',
    'MSUP_F02.png',
    'MSUP_F03.png',
    'MSUP_F04.png',
    'MSUP_F05.png',
    'MSUP_F06.png',
    'MSUP_F07.png',
    'MSUP_F08.png',
    'MSUP_F09.png',
    'MSUP_F10.png',
    'MSUP_F11.png',
    'MSUP_F12.png',
    'MSUP_F13.png',
    'MSUP_Z01.png',
    'MSUP_Z02.png',
    'MSUP_Z03.png',
    'MSUP_Z04.png',
    'MSUP_W01.png',
)

SMStat_files = []

foreach SMStat_png : SMStat_png_files
    pac = custom_target(fs.name(SMStat_png).replace('.png', '.PAC'),
        input: SMStat_png,
        output: '@BASENAME@.PAC',
        command: [
            python3,
            image_py,
            '@INPUT@',
            '-t', 'PSC',
            '-c', '@OUTPUT@',
        ]
    )
    SMStat_files += pac
endforeach

