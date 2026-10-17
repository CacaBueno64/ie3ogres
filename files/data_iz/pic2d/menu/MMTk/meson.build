MMTk_png_files = files(
    'MBDN_BG00.png',
    'TKDN_N00.png',
    'TKDN_N01.png',
    'TKDN_N02.png',
    'TKDN_N03.png',
    'TKDN_W01.png',
    'TKDN_W02.png',
)

MMTk_files = []

foreach MMTk_png : MMTk_png_files
    pac = custom_target(fs.name(MMTk_png).replace('.png', '.PAC'),
        input: MMTk_png,
        output: '@BASENAME@.PAC',
        command: [
            python3,
            image_py,
            '@INPUT@',
            '-t', 'PSC',
            '-c', '@OUTPUT@',
        ]
    )
    MMTk_files += pac
endforeach

