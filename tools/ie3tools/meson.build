compression_exe = executable('compression',
    sources: [
        'compression.cpp',
    ],
    cpp_args: [
        '-std=c++20',
    ],
    native: true
)

archive_py = find_program('archive.py', native: true)
compression_py = find_program('compression.py', native: true)
image_py = find_program('image.py', native: true)
