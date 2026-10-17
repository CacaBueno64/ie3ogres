mvdn_e_png_files = files(
    'mvdn_e01.png',
    'mvdn_e02.png',
    'mvdn_e04.png',
    'mvdn_e06.png',
    'mvdn_e07.png',
    'mvdn_e08.png',
    'mvdn_e09.png',
    'mvdn_e10.png',
    'mvdn_e12.png',
    'mvdn_e13.png',
    'mvdn_e14.png',
    'mvdn_e15.png',
    'mvdn_e16.png',
    'mvdn_e17.png',
    'mvdn_e18.png',
    'mvdn_e19.png',
    'mvdn_e20.png',
    'mvdn_e21.png',
    'mvdn_e22.png',
    'mvdn_e23.png',
    'mvdn_e24.png',
    'mvdn_e25.png',
    'mvdn_e26.png',
    'mvdn_e27.png',
    'mvdn_e28.png',
    'mvdn_e29.png',
    'mvdn_e30.png',
    'mvdn_e31.png',
    'mvdn_e32.png',
    'mvdn_e33.png',
    'mvdn_e34.png',
    'mvdn_e35.png',
    'mvdn_e36.png',
    'mvdn_e37.png',
    'mvdn_e38.png',
    'mvdn_e39.png',
    'mvdn_e40.png',
    'mvdn_e41.png',
    'mvdn_e42.png',
    'mvdn_e43.png',
    'mvdn_e45.png',
    'mvdn_e46.png',
    'mvdn_e47.png',
    'mvdn_e51.png',
    'mvdn_e52.png',
    'mvdn_e53.png',
    'mvdn_e54.png',
    'mvdn_e55.png',
    'mvdn_e56.png',
    'mvdn_e61.png',
    'mvdn_e62.png',
    'mvdn_e71.png',
    'mvdn_e72.png',
    'mvdn_e81.png',
    'mvdn_e82.png',
    'mvdn_e83.png',
    'mvdn_e84.png',
    'mvdn_e85.png',
)

mvdn_e_pac_files = []

foreach mvdn_e_png : mvdn_e_png_files
    pac = custom_target(fs.name(mvdn_e_png).replace('.png', '.pac'),
        input: mvdn_e_png,
        output: '@BASENAME@.pac',
        command: [
            python3,
            image_py,
            '-t', 'PSC',
            '-c',
            '@INPUT@',
            '@OUTPUT@',
        ]
    )
    mvdn_e_pac_files += pac
endforeach

mvdn_e_pac_files_comp = []

foreach mvdn_e_pac : mvdn_e_pac_files
    comp = custom_target(fs.name(mvdn_e_pac).replace('.pac', '.pac_'),
        input: mvdn_e_pac,
        output: '@PLAINNAME@' + '_',
        command: [
            compression_exe,
            '-c',
            '@INPUT@',
            '@OUTPUT@',
        ]
    )
    mvdn_e_pac_files_comp += comp
endforeach
