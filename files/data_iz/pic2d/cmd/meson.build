subdir('mbd_c')
subdir('tcd_c')

mbd_c_pack = custom_target('mbd_c_pack',
    output: [
        'mbd_c.pkb',
        'mbd_c.pkh',
    ],
    input: [],
    command: [
        archive_exe,
        '-t', 'PKB',
        '-c', '@OUTDIR@/mbd_c',
        '@OUTDIR@',
    ],
    depends: mbd_c_pac_files
)

nitrofs_files += mbd_c_pack

tcd_c_pack = custom_target('tcd_c_pack',
    output: [
        'tcd_c.pkb',
        'tcd_c.pkh',
    ],
    input: [],
    command: [
        archive_exe,
        '-t', 'PKB',
        '-c', '@OUTDIR@/tcd_c',
        '@OUTDIR@',
    ],
    depends: tcd_c_pac_files
)

nitrofs_files += tcd_c_pack

pic2d_cmd_png_files = files(
    'mbd_c000b.png',
    'mbd_c000p.png',
    'mbd_c000s.png',
    'tcd_i00.png',
)

pic2d_cmd_pac_files = []

python3 = find_program('python3')

foreach pic2d_cmd_png : pic2d_cmd_png_files
    pac = custom_target(fs.name(pic2d_cmd_png).replace('.png', '.pac'),
        input: pic2d_cmd_png,
        output: '@BASENAME@.pac',
        command: [
            python3,
            image_py,
            '@INPUT@',
            '-t', 'PSC',
            '-c', '@OUTPUT@',
            '--opt', 'true',
        ]
    )
    pic2d_cmd_pac_files += pac
endforeach

nitrofs_files += pic2d_cmd_pac_files
