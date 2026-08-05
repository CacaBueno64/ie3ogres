subdir('fab')
subdir('fac')

fab_pack = custom_target('fab_pack',
    output: [
        'fab.pkb',
        'fab.pkh',
    ],
    input: [],
    command: [
        archive_exe,
        '-t', 'PKB',
        '-c', '@OUTDIR@/fab',
        '@OUTDIR@',
    ],
    depends: fab_pac_files
)

nitrofs_files += fab_pack

fac_pack = custom_target('fac_pack',
    output: [
        'fac.pkb',
        'fac.pkh',
    ],
    input: [],
    command: [
        archive_exe,
        '-t', 'PKB',
        '-c', '@OUTDIR@/fac',
        '@OUTDIR@',
    ],
    depends: fac_pac_files
)

nitrofs_files += fac_pack

prebuilt_files = [
    'ppu.pkb',
    'ppu.pkh'
]

foreach f : prebuilt_files
    nitrofs_files += fs.copyfile(f)
endforeach
