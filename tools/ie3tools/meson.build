archive_exe = executable('archive',
    sources: [
        'archive.cpp',
        'compression.cpp',
    ],
    cpp_args: [
        '-std=c++20',
    ],
    link_args: [
        '-lz',
    ],
    native: true
)

compress_exe = executable('compress',
    sources: [
        'compress.cpp',
        'compression.cpp',
    ],
    cpp_args: [
        '-std=c++20',
    ],
    native: true
)

image_py = find_program('image.py', native: true)
