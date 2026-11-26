subdir('MTSIni')
subdir('STSIni')
subdir('STSIni_b')
subdir('STSIni_f')
subdir('STSIni_t')
subdir('TaikenIni')

pic2d_title_png_files = files(
    'ActimagineOriginal.png',
    'atdn_03.png',
    'atdn_04.png',
    'cesa_00.png',
    'level5.png',
    'level5_bottom.png',
    'Nintendo.png',
    'nedn_bg04.png',
)

pic2d_title_pac_files = []

foreach pic2d_title_png : pic2d_title_png_files
    pac = custom_target(fs.name(pic2d_title_png).replace('.png', '.pac'),
        input: pic2d_title_png,
        output: '@BASENAME@.pac',
        command: [
            image_exe,
            '-c',
            '@INPUT@',
            '@OUTPUT@',
            '--type', 'PSC',
        ]
    )
    pic2d_title_pac_files += pac
endforeach

pic2d_title_pac_files_comp = []

foreach pic2d_title_pac : pic2d_title_pac_files
    comp = custom_target(fs.name(pic2d_title_pac).replace('.pac', '.pac_'),
        input: pic2d_title_pac,
        output: '@PLAINNAME@' + '_',
        command: [
            compression_exe,
            '-c',
            '@INPUT@',
            '@OUTPUT@',
        ]
    )
    pic2d_title_pac_files_comp += comp
endforeach

nitrofs_files += pic2d_title_pac_files_comp

spf_archives = {
    'MTSIni' : MTSIni_files,
    'STSIni' : STSIni_files,
    'STSIni_b' : STSIni_b_files,
    'STSIni_f' : STSIni_f_files,
    'STSIni_t' : STSIni_t_files,
    'TaikenIni' : TaikenIni_files,
}

foreach spf_name, spf_entries : spf_archives
    spf_filenames = []
    foreach spf_entry : spf_entries
        spf_filenames += fs.name(spf_entry.full_path())
    endforeach

    spf = custom_target(spf_name + '.SPF',
        input: spf_entries,
        output: spf_name + '.SPF',
        command: [
            archive_py,
            '-t', 'SPF',
            '-c',
            meson.current_build_dir() / spf_name,
            '@OUTPUT@',
            '-f', spf_filenames,
        ],
    )

    spf_comp = custom_target(spf_name + '.SPF_',
        input: spf,
        output: '@PLAINNAME@' + '_',
        command: [
            compression_exe,
            '-c',
            '@INPUT@',
            '@OUTPUT@',
        ],
    )

    nitrofs_files += spf_comp
endforeach
