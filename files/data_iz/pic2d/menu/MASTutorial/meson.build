MASTutorial_png_files = files(
    'SYDN_B00.png',
    'SYDN_B01.png',
    'SYDN_B02.png',
    'SYDN_B03.png',
    'SYDN_B05.png',
    'SYDN_B06.png',
    'SYDN_BG00.png',
    'SYDN_C00.png',
    'SYDN_T00.png',
)

MASTutorial_files = []

foreach MASTutorial_png : MASTutorial_png_files
    pac = custom_target(fs.name(MASTutorial_png).replace('.png', '.PAC'),
        input: MASTutorial_png,
        output: '@BASENAME@.PAC',
        command: [
            python3,
            image_py,
            '@INPUT@',
            '-t', 'PSC',
            '-c', '@OUTPUT@',
        ]
    )
    MASTutorial_files += pac
endforeach

