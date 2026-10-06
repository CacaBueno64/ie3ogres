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
            python3,
            image_py,
            '-t', 'PSC',
            '-c',
            '@INPUT@',
            '@OUTPUT@',
        ]
    )
    pic2d_menu_pac_files += pac
endforeach

mvup_bg1_pac = custom_target(fs.name(mvup_bg1_png).replace('.png', '.pac'),
    input: mvup_bg1_png,
    output: '@BASENAME@.pac',
    command: [
        python3,
        image_py,
        '-t', 'PSC',
        '--opt', 'false',
        '-c',
        '@INPUT@',
        '@OUTPUT@',
    ]
)

pic2d_menu_pac_files += mvup_bg1_pac

sfdn_i09_pac = custom_target(fs.name(sfdn_i09_png).replace('.png', '.pac'),
    input: sfdn_i09_png,
    output: '@BASENAME@.pac',
    command: [
        python3,
        image_py,
        '-t', 'PSC',
        '--opt', 'true',
        '-c',
        '@INPUT@',
        '@OUTPUT@',
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

prebuilt_files = [
    'MASConfig.SPF_',
    'MASTutorial.SPF_',
    'menu_MovieViewSub.pkb',
    'menu_MovieViewSub.pkh',
    'MGMap.SPF_',
    'MGMap_01.SPF_',
    'MGMap_02.SPF_',
    'MGMap_03.SPF_',
    'MGMap_04.SPF_',
    'MGMap_05.SPF_',
    'MGMap_06.SPF_',
    'MGMap_07.SPF_',
    'MGMap_08.SPF_',
    'MGMap_09.SPF_',
    'MGMap_10.SPF_',
    'MMName.SPF_',
    'MMProfd.SPF_',
    'MMProfu.SPF_',
    'MMQuit.SPF_',
    'MMSlot.SPF_',
    'MMTk.SPF_',
    'mvdn_e.pkb',
    'mvdn_e.pkh',
    'mvdn_q.pkb',
    'mvdn_q.pkh',
    'SMBinder1.SPF_',
    'SMBinder2.SPF_',
    'SMBlog1.SPF_',
    'SMBlog2.SPF_',
    'SMCollection.SPF_',
    'SMEquip.SPF_',
    'SMJinmyaku.SPF_',
    'SMMovieLink.SPF_',
    'SMPractice.SPF_',
    'SMShop.SPF_',
    'SMSpCmd.SPF_',
    'SMStat.SPF_',
    'SMTournament.SPF_',
    'SMWazaBinder.SPF_',
    'SMWd.SPF_',
    'SVInabikari.SPF_',
    'SVInabikari_e.SPF_',
]

foreach f : prebuilt_files
    nitrofs_files += fs.copyfile(f)
endforeach
