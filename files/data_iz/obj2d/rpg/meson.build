obj2d_rpg_png_files = files(
    'ina_tpx1.png',
    'ina_tpx2.png',
    'ina_tpx3.png',
    'ina_tpx4.png',
    'ina_tpx5.png',
    'ina_tpx6.png',
    'ina_tpx7.png',
    'ina_tpx8.png',
    'mlup_filter.png',
    'mlup_i00.png',
    'mlup_i01.png',
    'mlup_i02.png',
    'mlup_p00.png',
    'mlup_p01.png',
    'mlup_w00.png'
)

obj2d_rpg_pac_files = []

foreach obj2d_rpg_png : obj2d_rpg_png_files
    pac = custom_target(fs.name(obj2d_rpg_png).replace('.png', '.pac'),
        input: obj2d_rpg_png,
        output: '@BASENAME@.pac',
        command: [
            python3,
            image_py,
            '-t', 'CP',
            '-c',
            '@INPUT@',
            '@OUTPUT@',
        ]
    )
    obj2d_rpg_pac_files += pac
endforeach

obj2d_rpg_pac_files_comp = []

foreach obj2d_rpg_pac : obj2d_rpg_pac_files
    comp = custom_target(fs.name(obj2d_rpg_pac).replace('.pac', '.pac_'),
        input: obj2d_rpg_pac,
        output: '@PLAINNAME@' + '_',
        command: [
            compression_exe,
            '-c',
            '@INPUT@',
            '@OUTPUT@',
        ]
    )
    obj2d_rpg_pac_files_comp += comp
endforeach

nitrofs_files += obj2d_rpg_pac_files_comp
