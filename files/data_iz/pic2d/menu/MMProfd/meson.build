MMProfd_png_files = files(
    'SRD_B61.png',
    'SRD_B62.png',
    'SRD_B63.png',
    'SRD_B70.png',
    'SRD_BG00.png',
    'SRD_C60.png',
    'SRD_O60.png',
    'SRD_W60.png',
    'SRD_W61.png',
    'SRD_W62.png',
    'SRD_W70.png',
    'WMDN_W00.png',
    'WMDN_B03.png',
)

MMProfd_files = []

foreach MMProfd_png : MMProfd_png_files
    pac = custom_target(fs.name(MMProfd_png).replace('.png', '.PAC'),
        input: MMProfd_png,
        output: '@BASENAME@.PAC',
        command: [
            python3,
            image_py,
            '@INPUT@',
            '-t', 'PSC',
            '-c', '@OUTPUT@',
        ]
    )
    MMProfd_files += pac
endforeach

MMProfd_prebuilt_files = [
    'FCODE0.TXT',
    'FCODE1.TXT',
    'FCODE2.TXT',
    'DAKUTEN.TXT',
    'HANDAKU.TXT',
    'NGWORD.TXT',
    'FCODECK.TXT',
]
foreach f : MMProfd_prebuilt_files
    MMProfd_files += fs.copyfile(f)
endforeach
