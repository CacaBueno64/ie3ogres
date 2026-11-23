compression_exe = executable('compression',
    sources: [
        'compression.cpp',
    ],
    cpp_args: [
        '-std=c++20',
    ],
    native: true
)

zlib_dep = dependency('zlib', native: true)

image_exe = executable('image',
    sources: [
        'image.cpp',
        'spng/spng.c',
    ],
    cpp_args: [
        '-std=c++20',
    ],
    dependencies: [
        zlib_dep,
    ],
    native: true
)

archive_py = find_program('archive.py', native: true)
compression_py = find_program('compression.py', native: true)
image_py = find_program('image.py', native: true)
