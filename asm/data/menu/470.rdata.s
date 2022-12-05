.include "macro.inc"

.section .rdata

glabel D_menu_800CD180
.word 0x00000000

glabel D_menu_800CD184
.float 1e37

glabel D_menu_800CD188
.word 0x00000000, 0x00000000, 0x00000000, func_menu_800FEB50, 0x00000000, func_menu_800FEAFC, 0x00000000, func_menu_800FED64, 0x00000000, func_menu_800FEFB8, 0x00000000, func_menu_800FF01C
