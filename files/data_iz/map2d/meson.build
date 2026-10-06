subdir('map2d')

map2d_pack = custom_target('map2d_pack',
    output: [
        'map2d.pkb',
        'map2d.pkh',
    ],
    input: map2d_pac_files_comp,
    command: [
        python3,
        archive_py,
        '-t', 'PKB',
        '-c',
        '@INPUT0@',
        '@OUTDIR@',
    ],
)

nitrofs_files += map2d_pack
