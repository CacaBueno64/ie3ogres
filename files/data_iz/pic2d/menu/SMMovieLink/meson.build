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
            python3,
            image_py,
            '@INPUT@',
            '-t', 'PSC',
            '-c', '@OUTPUT@',
        ]
    )
    SMMovieLink_files += pac
endforeach

