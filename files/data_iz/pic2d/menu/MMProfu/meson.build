MMProfu_png_files = files(
    'SRU_BG00.png',
    'SRU_N50.png',
    'SRU_T00.png',
    'SRU_W50.png',
    'SRU_W51.png',
)

MMProfu_files = []

foreach MMProfu_png : MMProfu_png_files
    pac = custom_target(fs.name(MMProfu_png).replace('.png', '.PAC'),
        input: MMProfu_png,
        output: '@BASENAME@.PAC',
        command: [
            python3,
            image_py,
            '@INPUT@',
            '-t', 'PSC',
            '-c', '@OUTPUT@',
        ]
    )
    MMProfu_files += pac
endforeach

