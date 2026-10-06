subdir('fab')
subdir('fac')

fab_pack = custom_target('fab_pack',
    output: [
        'fab.pkb',
        'fab.pkh',
    ],
    input: fab_pac_files_comp,
    command: [
        python3,
        archive_py,
        '-t', 'PKB',
        '-c',
        '@INPUT0@',
        '@OUTDIR@',
    ],
)

nitrofs_files += fab_pack

fac_pack = custom_target('fac_pack',
    output: [
        'fac.pkb',
        'fac.pkh',
    ],
    input: fac_pac_files_comp,
    command: [
        python3,
        archive_py,
        '-t', 'PKB',
        '-c',
        '@INPUT0@',
        '@OUTDIR@',
    ],
)

nitrofs_files += fac_pack

prebuilt_files = [
    'ppu.pkb',
    'ppu.pkh'
]

foreach f : prebuilt_files
    nitrofs_files += fs.copyfile(f)
endforeach
