mvdn_q_png_files = files(
    'mvdn_q01.png',
    'mvdn_q02.png',
)

mvdn_q_pac_files = []

foreach mvdn_q_png : mvdn_q_png_files
    pac = custom_target(fs.name(mvdn_q_png).replace('.png', '.pac'),
        input: mvdn_q_png,
        output: '@BASENAME@.pac',
        command: [
            python3,
            image_py,
            '-t', 'PSC',
            '-c',
            '@INPUT@',
            '@OUTPUT@',
        ]
    )
    mvdn_q_pac_files += pac
endforeach

mvdn_q_pac_files_comp = []

foreach mvdn_q_pac : mvdn_q_pac_files
    comp = custom_target(fs.name(mvdn_q_pac).replace('.pac', '.pac_'),
        input: mvdn_q_pac,
        output: '@PLAINNAME@' + '_',
        command: [
            compression_exe,
            '-c',
            '@INPUT@',
            '@OUTPUT@',
        ]
    )
    mvdn_q_pac_files_comp += comp
endforeach
