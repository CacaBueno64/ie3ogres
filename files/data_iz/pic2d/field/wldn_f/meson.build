wldn_f_png_files = files(
    'wldn_f00000003.png',
    'wldn_f00000004.png',
    'wldn_f00000006.png',
    'wldn_f00000007.png',
    'wldn_f00000008.png',
    'wldn_f00000009.png',
    'wldn_f00000010.png',
    'wldn_f00000011.png',
    'wldn_f00000012.png',
    'wldn_f00000013.png',
    'wldn_f00000033.png',
    'wldn_f00000046.png',
    'wldn_f00000047.png',
    'wldn_f00000048.png',
    'wldn_f00000049.png',
    'wldn_f00000050.png',
    'wldn_f00000058.png',
    'wldn_f00000061.png',
    'wldn_f00000062.png',
    'wldn_f00000066.png',
    'wldn_f00000101.png',
    'wldn_f00000102.png',
    'wldn_f00000103.png',
    'wldn_f00000104.png',
    'wldn_f00000105.png',
    'wldn_f00000106.png',
    'wldn_f00000107.png',
    'wldn_f00000108.png',
    'wldn_f00000115.png',
    'wldn_f00000142.png',
)

wldn_f_pac_files = []

python3 = find_program('python3')

foreach wldn_f_png : wldn_f_png_files
    pac = custom_target(fs.name(wldn_f_png).replace('.png', '.pac'),
        input: wldn_f_png,
        output: '@BASENAME@.pac',
        command: [
            python3,
            image_py,
            '@INPUT@',
            '-t', 'PSC',
            '-c', '@OUTPUT@',
        ]
    )
    wldn_f_pac_files += pac
endforeach
