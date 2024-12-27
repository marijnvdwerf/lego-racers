#!/usr/bin/env python3

def apply(config, args):
    config['baseimg'] = 'ver/e/baserom.z64'
    config['myimg'] = 'rom.z64'
    config['mapfile'] = 'rom.elf.map'
    config['source_directories'] = ['.']
    config["make_command"] = ["ninja"]
    config["objdump_flags"] = ["-M", "reg-names=32"]
    config["expected_dir"] = f"expected/"
