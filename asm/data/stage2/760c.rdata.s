.include "macro.inc"

.section .rdata

glabel D_800405C0
.ascii "genmidi.ptr\0"

glabel D_800405CC
.word 0x00000000

glabel D_800405D0
.ascii "genmidi.wbk\0\0\0\0\0"

glabel D_800405E0
.word 0x00000000, 0x00000000, 0x00000000, func_8007DD84, 0x00000000, func_8007DD8C, 0x00000000, func_8007DD94, 0x00000000, func_8007DDB4, 0x00000000, func_80007834, 0x00000000, func_8000783C, 0x00000000, func_800803A0, 0x00000000, func_80006624, 0x00000000, func_80006858, 0x00000000, func_80006928, 0x00000000, func_80006CBC, 0x00000000, func_800073F4, 0x00000000, func_800075B0, 0x00000000, func_8000771C, 0x00000000, func_8007DEA0, 0x00000000, func_8007DF68

glabel D_80040668
.word 0x00000000, 0x00000000, 0x00000000, func_8007F99C, 0x00000000, func_8007FA30, 0x00000000, func_8007FD9C, 0x00000000, func_80080174, 0x00000000, func_800801E0, 0x00000000, func_8007FE78, 0x00000000, func_8007FEF8, 0x00000000, func_8007FF94, 0x00000000, func_80080014, 0x00000000, func_800800B0, 0x00000000, func_80080114, 0x00000000, func_8007EF8C, 0x00000000, func_8007EFC0, 0x00000000, func_80080248
