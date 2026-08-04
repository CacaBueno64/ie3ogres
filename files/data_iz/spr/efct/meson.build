efct_pack = custom_target('efct_pack',
    output: [
        'efct.pkb',
        'efct.pkh',
    ],
    input: [],
    command: [
        archive_exe,
        '-t', 'PKB',
        '-c', '@CURRENT_SOURCE_DIR@/efct',
        '@OUTDIR@',
    ]
)

nitrofs_files += efct_pack
