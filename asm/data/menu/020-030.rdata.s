.include "macro.inc"

.section .rdata

glabel D_menu_800CA8F0
.word 0x00000000

glabel D_menu_800CA8F4
.ascii ".pcb\0\0\0\0"

glabel D_menu_800CA8FC
.ascii "dflt\0\0\0\0"

glabel D_menu_800CA904
.ascii "angry\0\0\0"

glabel D_menu_800CA90C
.ascii "blink\0\0\0"

glabel D_menu_800CA914
.ascii "happy\0\0\0"

glabel D_menu_800CA91C
.word 0x73616400

glabel D_menu_800CA920
.ascii "suprz\0\0\0"

glabel jtbl_menu_800CA928
.word Lmenu_800D6E54, Lmenu_800D6E68, Lmenu_800D6E7C, Lmenu_800D6E90, Lmenu_800D6EA4, Lmenu_800D6EB8, Lmenu_800D6ECC, Lmenu_800D6EE0, Lmenu_800D6EF4, 0

glabel D_menu_800CA950
.word 0x00000000, 0x00000000, 0x00000000, func_8007DD84, 0x00000000, func_8007DD8C, 0x00000000, func_8007DD94, 0x00000000, func_8007DDB4, 0x00000000, func_80007834, 0x00000000, func_8000783C, 0x00000000, func_menu_800D71B0, 0x00000000, func_80006624, 0x00000000, func_80009534, 0x00000000, func_80006928, 0x00000000, func_80006CBC, 0x00000000, func_800073F4, 0x00000000, func_800075B0, 0x00000000, func_8000771C, 0x00000000, func_8007DEA0, 0x00000000, func_8007DF68, 0x00000000, func_8000C2E0, 0x00000000, func_8000C2E8, 0x00000000, func_8000C304, 0x00000000, func_8000C2F4, 0x00000000, func_8000C2FC

glabel D_menu_800CAA00
.word 0x00000000

glabel D_menu_800CAA04
.ascii "MENUDATA\0\0\0\0"

glabel D_menu_800CAA10
.float 1.0
