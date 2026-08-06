wgd_s_png_files = files(
    'wgd_s00000003.png',
    'wgd_s00000004.png',
    'wgd_s00000006.png',
    'wgd_s00000007.png',
    'wgd_s00000008.png',
    'wgd_s00000009.png',
    'wgd_s00000010.png',
    'wgd_s00000011.png',
    'wgd_s00000012.png',
    'wgd_s00000013.png',
    'wgd_s00000033.png',
    'wgd_s00000046.png',
    'wgd_s00000047.png',
    'wgd_s00000048.png',
    'wgd_s00000049.png',
    'wgd_s00000050.png',
    'wgd_s00000058.png',
    'wgd_s00000061.png',
    'wgd_s00000062.png',
    'wgd_s00000066.png',
    'wgd_s00000101.png',
    'wgd_s00000102.png',
    'wgd_s00000103.png',
    'wgd_s00000104.png',
    'wgd_s00000105.png',
    'wgd_s00000106.png',
    'wgd_s00000107.png',
    'wgd_s00000108.png',
    'wgd_s00000115.png',
    'wgd_s00000142.png',
)

wgd_s_pac_files = []

python3 = find_program('python3')

foreach wgd_s_png : wgd_s_png_files
    pac = custom_target(fs.name(wgd_s_png).replace('.png', '.pac'),
        input: wgd_s_png,
        output: '@BASENAME@.pac',
        command: [
            python3,
            image_py,
            '@INPUT@',
            '-t', 'PSC',
            '-c', '@OUTPUT@',
        ]
    )
    wgd_s_pac_files += pac
endforeach
