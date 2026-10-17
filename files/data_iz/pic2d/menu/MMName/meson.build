MMName_png_files = files(
    'NEDN_BG01.png',
    'NEDN_BG02.png',
    'NEDN_BG03.png',
    'NEDN_BG06.png',
    'NEDN_BG09.png',
    'NEDN_BG11.png',
    'NEDN_C00.png',
    'NEDN_I00.png',
    'NEDN_I01.png',
    'NEDN_I02.png',
    'SRD_B70.png',
    'SRD_W70.png',
    'NEDN_W10.png',
)

MMName_files = []

foreach MMName_png : MMName_png_files
    pac = custom_target(fs.name(MMName_png).replace('.png', '.PAC'),
        input: MMName_png,
        output: '@BASENAME@.PAC',
        command: [
            python3,
            image_py,
            '@INPUT@',
            '-t', 'PSC',
            '-c', '@OUTPUT@',
        ]
    )
    MMName_files += pac
endforeach

MMName_prebuilt_files = [
    'FCODE0.TXT',
    'FCODE1.TXT',
    'FCODE2.TXT',
    'DAKUTEN.TXT',
    'HANDAKU.TXT',
    'NGWORD.TXT',
    'FCODECK.TXT',
]
foreach f : MMName_prebuilt_files
    MMName_files += fs.copyfile(f)
endforeach
