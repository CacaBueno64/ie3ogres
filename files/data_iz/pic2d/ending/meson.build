pic2d_ending_png_files = files(
    'eddf01.png',
    'eddf02.png',
    'eddf03.png',
    'eddf04.png',
    'eddf05.png',
    'eddf06.png',
    'eddf07.png',
    'eddf08.png',
    'eddf09.png',
    'eddf10.png',
    'eddf11.png',
    'eddf12.png',
    'eddf13.png',
    'eddf14.png',
    'eddf15.png',
    'eddf16.png',
    'eddf17.png',
    'eddf18.png',
    'eddf19.png',
    'eddf20.png',
    'eddf21.png',
    'eddf22.png',
    'eddf23.png',
    'eddf24.png',
    'eddf25.png',
    'eddf26.png',
    'eddf27.png',
    'eddf28.png',
    'eddf29.png',
    'eddf30.png',
    'eddf31.png',
    'eddf32.png',
    'eddf33.png',
    'eddf34.png',
    'eddf35.png',
    'eddf36.png',
    'eddf37.png',
    'edu00f.png',
    'edu01f.png',
    'edu02.png',
    'edu03.png',
    'edu04.png',
    'edu05.png',
    'edu06.png',
    'edu07.png',
    'edu08.png',
    'edu09.png',
    'edu10.png',
    'edu11.png',
    'edu12.png',
    'edu13.png',
    'edu14.png',
    'edu15.png',
    'edu16.png',
    'edu17.png',
    'edu18.png',
    'edu19.png',
    'edu20.png',
    'edu21.png',
    'edu22.png',
    'edu23.png',
    'edu24.png',
    'edu25.png',
    'edu26.png',
    'edu27.png',
    'edu28.png',
    'edu29.png',
    'edu30.png',
    'edu31.png',
    'edu32.png',
    'edu33.png',
    'edu34.png',
    'edu35.png',
    'edu36.png',
    'edu37.png',
    'edu38.png',
    'edu39.png',
    'edufin.png',
)

pic2d_ending_pac_files = []

python3 = find_program('python3')

foreach pic2d_ending_png : pic2d_ending_png_files
    pac = custom_target(fs.name(pic2d_ending_png).replace('.png', '.pac'),
        input: pic2d_ending_png,
        output: '@BASENAME@.pac',
        command: [
            python3,
            image_py,
            '@INPUT@',
            '-t', 'PSC',
            '-c', '@OUTPUT@',
        ]
    )
    pic2d_ending_pac_files += pac
endforeach

pic2d_ending_comp_files = []

foreach pic2d_ending_pac : pic2d_ending_pac_files
    comp = custom_target(fs.name(pic2d_ending_pac).replace('.pac', '.pac_'),
        input: pic2d_ending_pac,
        output: '@BASENAME@.pac_',
        command: [
            compress_exe,
            '-t', 'LZ',
            '-c', '@INPUT@', '@OUTPUT@',
        ]
    )

    pic2d_ending_comp_files += comp
endforeach

nitrofs_files += pic2d_ending_comp_files
