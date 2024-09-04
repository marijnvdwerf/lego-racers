from splat.segtypes.common.data import CommonSegData
from splat.util import options


class N64SegStart(CommonSegData):
    def get_linker_section(self):
        return ".start"

    def get_file_header(self):
        ret = []

        ret.append('.include "macro.inc"')
        ret.append("")
        ret.append("/* assembler directives */")
        ret.append(".set noat      /* allow manual use of $at */")
        ret.append(".set noreorder /* don't insert nops after branches */")

        if options.opts.add_set_gp_64:
            ret.append(".set gp=64     /* allow use of 64-bit general purpose registers */")
        ret.append("")
        preamble = options.opts.generated_s_preamble
        if preamble:
            ret.append(preamble)
            ret.append("")
        ret.append('.section .start, "ax"')
        ret.append("")

        return ret
