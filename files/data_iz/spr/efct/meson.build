subdir('efct')

efct_pack = custom_target('efct_pack',
    output: [
        'efct.pkb',
        'efct.pkh',
    ],
    input: efct_files,
    command: [
        python3,
        archive_py,
        '-t', 'PKB',
        '-c', '@INPUT0@',
        '@OUTDIR@',
    ]
)

nitrofs_files += efct_pack
