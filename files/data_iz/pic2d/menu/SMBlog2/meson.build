SMBlog2_png_files = files(
    'BLUP_BG01.png',
    'BLDN_I00.png',
)

SMBlog2_files = []

foreach SMBlog2_png : SMBlog2_png_files
    pac = custom_target(fs.name(SMBlog2_png).replace('.png', '.PAC'),
        input: SMBlog2_png,
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
    SMBlog2_files += pac
endforeach

