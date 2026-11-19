project('ie3ogre', ['c', 'cpp', 'nasm'],
    version: '1.0',
    meson_version: '>=1.10.0',
    default_options : [
        'buildtype=plain',
        'warning_level=0'
    ]
)

fs = import('fs')

ie3ogre_cpp = []
ie3ogre_asm = []

############################################################
###                    INCLUDE PATHS                     ###
############################################################
public_includes = [
    include_directories('include', 'asm')
]

############################################################
###                    COMPILER FLAGS                    ###
############################################################
shared_args = [
    '-O4,p',
    '-proc', 'arm946e',
    '-enum', 'int',
    '-Cpp_exceptions', 'off',
    '-gccext,on',
    '-ipa', 'file',
    '-interworking',
    '-inline', 'on,noauto',
    '-char', 'signed',
    '-nosyspath',
    '-sym', 'on',
    '-str', 'noreuse',
    '-fp', 'soft',
]

sdk_args = [
    '-DSDK_CW_FORCE_EXPORT_SUPPORT',
    '-DSDK_TS',
    '-DSDK_NO_MESSAGE',
    '-DSDK_ARM9',
    '-DSDK_FINALROM',
    '-DSDK_NITRO',
    '-DSDK_CODE_ARM',
]

cpp_args = shared_args + sdk_args + [
    '-lang', 'c++',
    '-RTTI', 'off'
]

asm_args = [
    '-proc', 'arm5TE',
    '-16',
    '-gccinc'
]

link_args = [
    '-w', 'off',
    '-proc', 'arm946e',
    '-nopic',
    '-nopid',
    '-interworking',
    '-map', 'closure,unused',
    '-symtab', 'sort',
    '-msgstyle' ,'gcc',
    '-m', '_start',
    '-sym', 'on',
    '-nostdlib',
    '-Llib',
]

############################################################
###                     DEPENDENCIES                     ###
############################################################
libdsprot_dep = dependency('dsprot',
    default_options: {
        'mwrap_sdk': '2.0/sp2p3'
    }
)

############################################################
###                      LIBRARIES                       ###
############################################################
subdir('lib')

############################################################
###                        TOOLS                         ###
############################################################
subdir('tools')

############################################################
###                      SPEC FILES                      ###
############################################################
subdir('ogre.jp')

############################################################
###                     ARM9 BINARIES                    ###
############################################################
subdir('asm')
subdir('src')

main = executable('main',
    sources: [
        ie3ogre_asm,
        ie3ogre_cpp
    ],
    cpp_args: [
       cpp_args 
    ],
    nasm_args: [
        asm_args
    ],
    include_directories: [
        public_includes,
    ],
    dependencies: [
        libdsprot_dep,
    ],
    link_with: [
        libsyscall,
        libMobiclip
    ],
    link_args: [
        link_args,
        'ogre.jp/main.lcf'
    ],
    link_depends: main_lcf,
    native: false
)

############################################################
###                   ARM9 COMPRESSION                   ###
############################################################

main_lz = custom_target(
    command: [
        compstatic_exe,
        '-9', '-c', '-f',
        'component.files'
    ],
    depends: [
        main,
        compstatic_exe
    ],
    output: 'main.sbin_LZ',
)

############################################################
###                    ARM7 BINARIES                     ###
############################################################
subdir('sub')

############################################################
###                    FILESYSTEM                        ###
############################################################
subdir('files')


############################################################
###                        DS ROM                        ###
############################################################
ie3ogre_nds = custom_target('ie3ogre.jp.nds',
    output: 'ie3ogre.jp.nds',
    input: [
        main_lz,
        rom_header_template,
        icon_png,
        mongoose_sub,
        mongoose_sub_defs,
        nitrofs_files,
    ],
    command : [
        nitrorom_exe,
        'pack',
        '-DHEADER_TEMPLATE=@INPUT1@', # rom_header_template
        '-DICON_PNG=@INPUT2@',        # icon_png
        '-DARM7_STATIC=@INPUT3@',     # mongoose_sub
        '-DARM7_DEFINE=@INPUT4@',     # mongoose_sub_defs
        '--output=@OUTPUT0@',         # ie3ogre.jp.nds
        rom_ini,
        filesys_csv,
    ],
    build_by_default: true
)

############################################################
###                        TESTS                         ###
############################################################
sha1sum = find_program(['sha1sum', 'shasum'], native: true)

test('SBIN Checksum',
    sha1sum,
    args: ['-c', '--quiet', sbins_sha1]
)

test('Filesystem Checksums',
    sha1sum,
    args: ['-c', '--quiet', filesys_sha1]
)

test('ROM Checksum',
    sha1sum,
    args: ['-c', '--quiet', rom_sha1]
)

############################################################
###                       POSTCONF                       ###
############################################################
meson.add_postconf_script(postconf_py)
