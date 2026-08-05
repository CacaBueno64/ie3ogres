subdir('fac')

fac_pack = custom_target('fac.pkb, fac.pkh',
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
    'fab.pkb',
    'fab.pkh',
    'ppu.pkb',
    'ppu.pkh'
]

foreach f : prebuilt_files
    nitrofs_files += fs.copyfile(f)
endforeach
