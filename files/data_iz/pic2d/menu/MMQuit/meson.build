MMQuit_png_files = files(
    'PADN_01.png',
    'PADN_B00.png',
    'PADN_B01.png',
    'PADN_B02.png',
)

MMQuit_files = []

foreach MMQuit_png : MMQuit_png_files
    pac = custom_target(fs.name(MMQuit_png).replace('.png', '.PAC'),
        input: MMQuit_png,
        output: '@BASENAME@.PAC',
        command: [
            python3,
            image_py,
            '@INPUT@',
            '-t', 'PSC',
            '-c', '@OUTPUT@',
        ]
    )
    MMQuit_files += pac
endforeach

