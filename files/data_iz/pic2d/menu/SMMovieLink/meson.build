SMMovieLink_png_files = files(
    'EL_BG00.png',
    'ELUP_W01.png',
)

SMMovieLink_files = []

foreach SMMovieLink_png : SMMovieLink_png_files
    pac = custom_target(fs.name(SMMovieLink_png).replace('.png', '.PAC'),
        input: SMMovieLink_png,
        output: '@BASENAME@.PAC',
        command: [
            image_exe,
            '-c',
            '@INPUT@',
            '@OUTPUT@',
            '--type', 'PSC',
        ]
    )
    SMMovieLink_files += pac
endforeach

