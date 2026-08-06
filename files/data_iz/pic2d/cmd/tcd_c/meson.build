tcd_c_png_files = files(
    'tcd_c00000001.png',
    'tcd_c00000002.png',
    'tcd_c00000003.png',
    'tcd_c00000004.png',
    'tcd_c00000005.png',
    'tcd_c00000006.png',
    'tcd_c00000007.png',
    'tcd_c00000008.png',
    'tcd_c00000009.png',
    'tcd_c00000010.png',
    'tcd_c00000011.png',
    'tcd_c00000012.png',
    'tcd_c00000013.png',
    'tcd_c00000014.png',
    'tcd_c00000015.png',
    'tcd_c00000016.png',
    'tcd_c00000017.png',
    'tcd_c00000018.png',
    'tcd_c00000019.png',
    'tcd_c00000020.png',
    'tcd_c00000021.png',
    'tcd_c00000022.png',
)

tcd_c_pac_files = []

python3 = find_program('python3')

foreach tcd_c_png : tcd_c_png_files
    pac = custom_target(fs.name(tcd_c_png).replace('.png', '.pac'),
        input: tcd_c_png,
        output: '@BASENAME@.pac',
        command: [
            python3,
            image_py,
            '@INPUT@',
            '-t', 'PSC',
            '-c', '@OUTPUT@',
        ]
    )
    tcd_c_pac_files += pac
endforeach
