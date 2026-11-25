po_w_png_files = files(
    'po_w00000001.png',
    'po_w00000002.png',
)

po_w_pac_files = []

foreach po_w_png : po_w_png_files
    pac = custom_target(fs.name(po_w_png).replace('.png', '.pac'),
        input: po_w_png,
        output: '@BASENAME@.pac',
        command: [
            image_exe,
            '-c',
            '@INPUT@',
            '@OUTPUT@',
            '--type', 'PSC',
        ]
    )
    po_w_pac_files += pac
endforeach

po_w_pac_files_comp = []

foreach po_w_pac : po_w_pac_files
    comp = custom_target(fs.name(po_w_pac).replace('.pac', '.pac_'),
        input: po_w_pac,
        output: '@PLAINNAME@' + '_',
        command: [
            compression_exe,
            '-c',
            '@INPUT@',
            '@OUTPUT@',
        ]
    )
    po_w_pac_files_comp += comp
endforeach
