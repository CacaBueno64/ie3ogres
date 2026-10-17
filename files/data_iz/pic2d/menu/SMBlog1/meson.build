SMBlog1_png_files = files(
    'BLUP_BG00.png',
    'BLUP_W00.png',
    'BLUP_C01.png',
    'BLUP_T00.png',
    'BLUP_T01.png',
)

SMBlog1_files = []

foreach SMBlog1_png : SMBlog1_png_files
    pac = custom_target(fs.name(SMBlog1_png).replace('.png', '.PAC'),
        input: SMBlog1_png,
        output: '@BASENAME@.PAC',
        command: [
            python3,
            image_py,
            '@INPUT@',
            '-t', 'PSC',
            '-c', '@OUTPUT@',
        ]
    )
    SMBlog1_files += pac
endforeach

