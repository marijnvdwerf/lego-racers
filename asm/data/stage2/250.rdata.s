.include "macro.inc"

.section .rdata

glabel D_8003D4F0
.word 0x00000000

glabel D_8003D4F4
.ascii ": Duplicate name encountered\0\0\0\0\0\0\0\0"

glabel D_8003D518
.word 0x00000000, 0x00000000, 0x00000000, func_80058E0C, 0x00000000, func_80058E5C, 0x00000000, func_80058EE4
