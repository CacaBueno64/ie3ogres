SMTournament_png_files = files(
    'TMU_BS00.png',
    'TMU_BS01.png',
    'TMU_BS02.png',
    'TMU_BS03.png',
    'TMU_I01.png',
    'TMU_N00.png',
    'TMU_N01.png',
    'TMU_N02.png',
)

SMTournament_files = []

foreach SMTournament_png : SMTournament_png_files
    pac = custom_target(fs.name(SMTournament_png).replace('.png', '.PAC'),
        input: SMTournament_png,
        output: '@BASENAME@.PAC',
        command: [
            python3,
            image_py,
            '@INPUT@',
            '-t', 'PSC',
            '-c', '@OUTPUT@',
        ]
    )
    SMTournament_files += pac
endforeach

