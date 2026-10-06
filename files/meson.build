python3 = find_program('python3')

image_py_gen = generator(
    image_py,
    arguments: [
      '-t', 'PSCM',
      '-c',
      '@INPUT@',
      '@OUTPUT@',
    ],
    output: '@BASENAME@.pac',
)

compression_exe_gen = generator(
    compression_exe,
    arguments: [
        '-c',
        '@INPUT@',
        '@OUTPUT@',
    ],
    output: '@PLAINNAME@' + '_',
)

nitrofs_files = []

subdir('data_iz')
subdir('dwc')
