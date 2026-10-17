SMPractice_png_files = files(
    'PRUP_BG01.png',
    'PRUP_BG02.png',
    'PRUP_BG03.png',
    'PRUP_N01.png',
    'PRUP_T00.png',
)

SMPractice_files = []

foreach SMPractice_png : SMPractice_png_files
    pac = custom_target(fs.name(SMPractice_png).replace('.png', '.PAC'),
        input: SMPractice_png,
        output: '@BASENAME@.PAC',
        command: [
            python3,
            image_py,
            '@INPUT@',
            '-t', 'PSC',
            '-c', '@OUTPUT@',
        ]
    )
    SMPractice_files += pac
endforeach

