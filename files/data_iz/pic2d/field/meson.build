subdir('wgd_s')
subdir('wldn_f')

wgd_s_pack = custom_target('wgd_s_pack',
    output: [
        'wgd_s.pkb',
        'wgd_s.pkh',
    ],
    input: [],
    command: [
        archive_exe,
        '-t', 'PKB',
        '-c', '@OUTDIR@/wgd_s',
        '@OUTDIR@',
    ],
    depends: wgd_s_pac_files
)

nitrofs_files += wgd_s_pack

wldn_f_pack = custom_target('wldn_f_pack',
    output: [
        'wldn_f.pkb',
        'wldn_f.pkh',
    ],
    input: [],
    command: [
        archive_exe,
        '-t', 'PKB',
        '-c', '@OUTDIR@/wldn_f',
        '@OUTDIR@',
    ],
    depends: wldn_f_pac_files
)

nitrofs_files += wldn_f_pack
