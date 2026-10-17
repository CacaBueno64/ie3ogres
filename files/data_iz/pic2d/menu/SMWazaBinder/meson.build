SMWazaBinder_png_files = files(
    'CHUP_BG.png',
    'CHUP_T00.png',
    'WAZA_U_BG00.png',
    'WAZA_U_S00.png',
)

SMWazaBinder_files = []

foreach SMWazaBinder_png : SMWazaBinder_png_files
    pac = custom_target(fs.name(SMWazaBinder_png).replace('.png', '.PAC'),
        input: SMWazaBinder_png,
        output: '@BASENAME@.PAC',
        command: [
            python3,
            image_py,
            '@INPUT@',
            '-t', 'PSC',
            '-c', '@OUTPUT@',
        ]
    )
    SMWazaBinder_files += pac
endforeach

