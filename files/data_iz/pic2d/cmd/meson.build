subdir('mbd_c')
subdir('tcd_c')

mbd_c_pack = custom_target('mbd_c_pack',
    output: [
        'mbd_c.pkb',
        'mbd_c.pkh',
    ],
    input: mbd_c_pac_files,
    command: [
        archive_py,
        '-t', 'PKB',
        '-c',
        '@INPUT0@',
        '@OUTDIR@',
    ],
)

nitrofs_files += mbd_c_pack

tcd_c_pack = custom_target('tcd_c_pack',
    output: [
        'tcd_c.pkb',
        'tcd_c.pkh',
    ],
    input: tcd_c_pac_files,
    command: [
        archive_py,
        '-t', 'PKB',
        '-c',
        '@INPUT0@',
        '@OUTDIR@',
    ],
)

nitrofs_files += tcd_c_pack

pic2d_cmd_png_files = files(
    'mbd_c000b.png',
    'mbd_c000p.png',
    'mbd_c000s.png',
    'tcd_i00.png',
)

pic2d_cmd_pac_files = []

foreach pic2d_cmd_png : pic2d_cmd_png_files
    pac = custom_target(fs.name(pic2d_cmd_png).replace('.png', '.pac'),
        input: pic2d_cmd_png,
        output: '@BASENAME@.pac',
        command: [
            image_exe,
            '-c',
            '@INPUT@',
            '@OUTPUT@',
            '--type', 'PSC',
            '--opt', 'true',
        ]
    )
    pic2d_cmd_pac_files += pac
endforeach

nitrofs_files += pic2d_cmd_pac_files
