.include "macro.inc"

.section .rdata

glabel D_menu_800CB470
.ascii ": Unable to find named camera\0\0\0"

glabel D_menu_800CB490
.word 0x00000000, 0x00000000

glabel D_menu_800CB498
.word 0x00000000, 0x00000000, 0x00000000, func_menu_800E8510, 0x00000000, func_menu_800E84E4, 0x00000000, func_menu_800E89B8, 0x00000000, func_menu_800E89C0, 0x00000000, func_menu_800E8364, 0x00000000, func_menu_800E8468

glabel D_menu_800CB4D0
.float 33.33333, 0.0

glabel jtbl_menu_800CB4D8
.word Lmenu_800E85F8, Lmenu_800E8608, Lmenu_800E85B8, Lmenu_800E85B8, Lmenu_800E85B8, Lmenu_800E85B8, Lmenu_800E85B8, Lmenu_800E85B8, Lmenu_800E85B8, Lmenu_800E85B8, Lmenu_800E85B8, Lmenu_800E85B8, Lmenu_800E85B8, Lmenu_800E8618, 0x800E868C, Lmenu_800E85B8, Lmenu_800E85B8, 0x800E86C4

glabel D_menu_800CB520
.word 0x00000000, 0x00000000, 0x00000000, func_menu_800E88EC, 0x00000000, func_menu_800E8848, 0x00000000, func_menu_800E89B8, 0x00000000, func_menu_800E89C0, 0x00000000, func_menu_800E873C, 0x00000000, func_menu_800E87CC
