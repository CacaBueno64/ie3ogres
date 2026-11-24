subdir('mvdn_e')
subdir('mvdn_q')
subdir('menu_MovieViewSub')
subdir('MASConfig')
subdir('MASTutorial')
subdir('MGMap')
subdir('MGMap_01')
subdir('MGMap_02')
subdir('MGMap_03')
subdir('MGMap_04')
subdir('MGMap_05')
subdir('MGMap_06')
subdir('MGMap_07')
subdir('MGMap_08')
subdir('MGMap_09')
subdir('MGMap_10')
subdir('MMName')
subdir('MMProfd')
subdir('MMProfu')
subdir('MMQuit')
subdir('MMSlot')
subdir('MMTk')
subdir('SMBinder1')
subdir('SMBinder2')
subdir('SMBlog1')
subdir('SMBlog2')
subdir('SMCollection')
subdir('SMEquip')
subdir('SMJinmyaku')
subdir('SMMovieLink')
subdir('SMPractice')
subdir('SMShop')
subdir('SMSpCmd')
subdir('SMStat')
subdir('SMTournament')
subdir('SMWazaBinder')
subdir('SMWd')
subdir('SVInabikari')
subdir('SVInabikari_e')

mvdn_e_pack = custom_target('mvdn_e_pack',
    output: [
        'mvdn_e.pkb',
        'mvdn_e.pkh',
    ],
    input: mvdn_e_pac_files_comp,
    command: [
        archive_py,
        '-t', 'PKB',
        '-c',
        '@INPUT0@',
        '@OUTDIR@',
    ],
)

nitrofs_files += mvdn_e_pack

mvdn_q_pack = custom_target('mvdn_q_pack',
    output: [
        'mvdn_q.pkb',
        'mvdn_q.pkh',
    ],
    input: mvdn_q_pac_files_comp,
    command: [
        archive_py,
        '-t', 'PKB',
        '-c',
        '@INPUT0@',
        '@OUTDIR@',
    ],
)

nitrofs_files += mvdn_q_pack

menu_MovieViewSub_pack = custom_target('menu_MovieViewSub_pack',
    output: [
        'menu_MovieViewSub.pkb',
        'menu_MovieViewSub.pkh',
    ],
    input: menu_MovieViewSub_pac_files_comp,
    command: [
        archive_py,
        '-t', 'PKB',
        '-c',
        '@INPUT0@',
        '@OUTDIR@',
    ],
)

nitrofs_files += menu_MovieViewSub_pack

pic2d_menu_png_files = files(
    '_mbdn_bg00.png',
    'jmup_bg00.png',
    'klup_bg00.png',
    'msup_bg00.png',
    'msup_bg01.png',
    'msup_bg02.png',
    'msup_bg04.png',
    'msup_bg05.png',
    'msup_bg07.png',
    'msup_bg08.png',
    'msup_bg09.png',
    'msup_f12.png',
    'mvup_w01.png',
    'nedn_bg00.png',
    'nedn_bg04.png',
    'nedn_bg05.png',
    'nedn_bg08.png',
    'nedn_bg10.png',
    'prdn_bg00.png',
    'pwup_bg00.png',
    'scdn_bg00.png',
    'scdn_bg01.png',
    'wdup_bg00.png',
)

mvup_bg1_png = files('mvup_bg1.png')
sfdn_i09_png = files('sfdn_i09.png')

pic2d_menu_pac_files = []

foreach pic2d_menu_png : pic2d_menu_png_files
    pac = custom_target(fs.name(pic2d_menu_png).replace('.png', '.pac'),
        input: pic2d_menu_png,
        output: '@BASENAME@.pac',
        command: [
            image_exe,
            '-c',
            '@INPUT@',
            '@OUTPUT@',
            '--type', 'PSC',
        ]
    )
    pic2d_menu_pac_files += pac
endforeach

mvup_bg1_pac = custom_target(fs.name(mvup_bg1_png).replace('.png', '.pac'),
    input: mvup_bg1_png,
    output: '@BASENAME@.pac',
    command: [
        image_exe,
        '-c',
        '@INPUT@',
        '@OUTPUT@',
        '--type', 'PSC',
        '--opt', 'false',
    ]
)

pic2d_menu_pac_files += mvup_bg1_pac

sfdn_i09_pac = custom_target(fs.name(sfdn_i09_png).replace('.png', '.pac'),
    input: sfdn_i09_png,
    output: '@BASENAME@.pac',
    command: [
        image_exe,
        '-c',
        '@INPUT@',
        '@OUTPUT@',
        '--type', 'PSC',
        '--opt', 'true',
    ]
)

pic2d_menu_pac_files += sfdn_i09_pac

pic2d_menu_pac_files_comp = []

foreach pic2d_menu_pac : pic2d_menu_pac_files
    comp = custom_target(fs.name(pic2d_menu_pac).replace('.pac', '.pac_'),
        input: pic2d_menu_pac,
        output: '@PLAINNAME@' + '_',
        command: [
            compression_exe,
            '-c',
            '@INPUT@',
            '@OUTPUT@',
        ]
    )
    pic2d_menu_pac_files_comp += comp
endforeach

nitrofs_files += pic2d_menu_pac_files_comp

spf_archives = {
    'MASConfig': MASConfig_files,
    'MASTutorial': MASTutorial_files,
    'MGMap': MGMap_files,
    'MGMap_01': MGMap_01_files,
    'MGMap_02': MGMap_02_files,
    'MGMap_03': MGMap_03_files,
    'MGMap_04': MGMap_04_files,
    'MGMap_05': MGMap_05_files,
    'MGMap_06': MGMap_06_files,
    'MGMap_07': MGMap_07_files,
    'MGMap_08': MGMap_08_files,
    'MGMap_09': MGMap_09_files,
    'MGMap_10': MGMap_10_files,
    'MMName': MMName_files,
    'MMProfd': MMProfd_files,
    'MMProfu': MMProfu_files,
    'MMQuit': MMQuit_files,
    'MMSlot': MMSlot_files,
    'MMTk': MMTk_files,
    'SMBinder1': SMBinder1_files,
    'SMBinder2': SMBinder2_files,
    'SMBlog1': SMBlog1_files,
    'SMBlog2': SMBlog2_files,
    'SMCollection': SMCollection_files,
    'SMEquip': SMEquip_files,
    'SMJinmyaku': SMJinmyaku_files,
    'SMMovieLink': SMMovieLink_files,
    'SMPractice': SMPractice_files,
    'SMShop': SMShop_files,
    'SMSpCmd': SMSpCmd_files,
    'SMStat': SMStat_files,
    'SMTournament': SMTournament_files,
    'SMWazaBinder': SMWazaBinder_files,
    'SMWd': SMWd_files,
    'SVInabikari': SVInabikari_files,
    'SVInabikari_e': SVInabikari_e_files,
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
