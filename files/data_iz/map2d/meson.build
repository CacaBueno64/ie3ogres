subdir('map2d')

map2d_pack = custom_target('map2d_pack',
    output: [
        'map2d.pkb',
        'map2d.pkh',
    ],
    input: [],
    command: [
        archive_exe,
        '-t', 'PKB',
        '-c', '@OUTDIR@/map2d',
        '@OUTDIR@',
    ],
    depends: map2d_pac_files
)

nitrofs_files += map2d_pack
