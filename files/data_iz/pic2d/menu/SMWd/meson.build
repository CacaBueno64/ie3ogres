SMWd_png_files = files(
    'WDUP_W00.png',
    'WDDN_N00.png',
)

SMWd_files = []

foreach SMWd_png : SMWd_png_files
    pac = custom_target(fs.name(SMWd_png).replace('.png', '.PAC'),
        input: SMWd_png,
        output: '@BASENAME@.PAC',
        command: [
            image_exe,
            '-c',
            '@INPUT@',
            '@OUTPUT@',
            '--type', 'PSC',
            '--opt', 'true',
        ]
    )
    SMWd_files += pac
endforeach

