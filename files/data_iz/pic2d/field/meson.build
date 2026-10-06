subdir('wgd_s')
subdir('wldn_f')

wgd_s_pack = custom_target('wgd_s_pack',
    output: [
        'wgd_s.pkb',
        'wgd_s.pkh',
    ],
    input: wgd_s_pac_files,
    command: [
        python3,
        archive_py,
        '-t', 'PKB',
        '-c',
        '@INPUT0@',
        '@OUTDIR@',
    ],
)

nitrofs_files += wgd_s_pack

wldn_f_pack = custom_target('wldn_f_pack',
    output: [
        'wldn_f.pkb',
        'wldn_f.pkh',
    ],
    input: wldn_f_pac_files,
    command: [
        python3,
        archive_py,
        '-t', 'PKB',
        '-c',
        '@INPUT0@',
        '@OUTDIR@',
    ],
)

nitrofs_files += wldn_f_pack
