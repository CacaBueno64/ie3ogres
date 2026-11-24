menu_MovieViewSub_png_files = files(
    'menu_MovieViewSub00000001.png',
    'menu_MovieViewSub00000002.png',
    'menu_MovieViewSub00000004.png',
    'menu_MovieViewSub00000006.png',
    'menu_MovieViewSub00000007.png',
    'menu_MovieViewSub00000008.png',
    'menu_MovieViewSub00000009.png',
    'menu_MovieViewSub00000010.png',
    'menu_MovieViewSub00000012.png',
    'menu_MovieViewSub00000013.png',
    'menu_MovieViewSub00000014.png',
    'menu_MovieViewSub00000015.png',
    'menu_MovieViewSub00000016.png',
    'menu_MovieViewSub00000017.png',
    'menu_MovieViewSub00000018.png',
    'menu_MovieViewSub00000019.png',
    'menu_MovieViewSub00000020.png',
    'menu_MovieViewSub00000021.png',
    'menu_MovieViewSub00000022.png',
    'menu_MovieViewSub00000023.png',
    'menu_MovieViewSub00000024.png',
    'menu_MovieViewSub00000025.png',
    'menu_MovieViewSub00000026.png',
    'menu_MovieViewSub00000027.png',
    'menu_MovieViewSub00000028.png',
    'menu_MovieViewSub00000029.png',
    'menu_MovieViewSub00000030.png',
    'menu_MovieViewSub00000031.png',
    'menu_MovieViewSub00000032.png',
    'menu_MovieViewSub00000033.png',
    'menu_MovieViewSub00000034.png',
    'menu_MovieViewSub00000035.png',
    'menu_MovieViewSub00000036.png',
    'menu_MovieViewSub00000037.png',
    'menu_MovieViewSub00000038.png',
    'menu_MovieViewSub00000039.png',
    'menu_MovieViewSub00000040.png',
    'menu_MovieViewSub00000041.png',
    'menu_MovieViewSub00000042.png',
    'menu_MovieViewSub00000043.png',
    'menu_MovieViewSub00000045.png',
    'menu_MovieViewSub00000046.png',
    'menu_MovieViewSub00000047.png',
    'menu_MovieViewSub00000051.png',
    'menu_MovieViewSub00000052.png',
    'menu_MovieViewSub00000053.png',
    'menu_MovieViewSub00000054.png',
    'menu_MovieViewSub00000055.png',
    'menu_MovieViewSub00000056.png',
    'menu_MovieViewSub00000061.png',
    'menu_MovieViewSub00000062.png',
    'menu_MovieViewSub00000071.png',
    'menu_MovieViewSub00000072.png',
    'menu_MovieViewSub00000081.png',
    'menu_MovieViewSub00000082.png',
    'menu_MovieViewSub00000083.png',
    'menu_MovieViewSub00000084.png',
    'menu_MovieViewSub00000085.png',
)

menu_MovieViewSub_pac_files = []

foreach menu_MovieViewSub_png : menu_MovieViewSub_png_files
    pac = custom_target(fs.name(menu_MovieViewSub_png).replace('.png', '.pac'),
        input: menu_MovieViewSub_png,
        output: '@BASENAME@.pac',
        command: [
            image_exe,
            '-c',
            '@INPUT@',
            '@OUTPUT@',
            '--type', 'PSC',
        ]
    )
    menu_MovieViewSub_pac_files += pac
endforeach

menu_MovieViewSub_pac_files_comp = []

foreach menu_MovieViewSub_pac : menu_MovieViewSub_pac_files
    comp = custom_target(fs.name(menu_MovieViewSub_pac).replace('.pac', '.pac_'),
        input: menu_MovieViewSub_pac,
        output: '@PLAINNAME@' + '_',
        command: [
            compression_exe,
            '-c',
            '@INPUT@',
            '@OUTPUT@',
        ]
    )
    menu_MovieViewSub_pac_files_comp += comp
endforeach
