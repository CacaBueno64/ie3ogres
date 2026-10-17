SMEquip_png_files = files(
    'SBUP_BG00.png',
    'SBUP_I00.png',
    'SBUP_I01.png',
    'SBUP_I02.png',
    'SBUP_N00.png',
    'SBUP_N01.png',
    'SBUP_W00.png',
)

SMEquip_files = []

foreach SMEquip_png : SMEquip_png_files
    pac = custom_target(fs.name(SMEquip_png).replace('.png', '.PAC'),
        input: SMEquip_png,
        output: '@BASENAME@.PAC',
        command: [
            python3,
            image_py,
            '@INPUT@',
            '-t', 'PSC',
            '-c', '@OUTPUT@',
        ]
    )
    SMEquip_files += pac
endforeach

