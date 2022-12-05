.include "macro.inc"

.section .rdata

glabel D_menu_800CA7F0
.word 0x00000000

glabel D_menu_800CA7F4
.ascii ".leb\0\0\0\0"

glabel D_menu_800CA7FC
.float 1.0

glabel D_menu_800CA800
.word 0x00000000, 0x00000000, 0x00000000, func_8007DD84, 0x00000000, func_8007DD8C, 0x00000000, func_8007DD94, 0x00000000, func_8007DDB4, 0x00000000, func_80007834, 0x00000000, func_8000783C, 0x00000000, func_menu_800D5634, 0x00000000, func_80006624, 0x00000000, func_80009534, 0x00000000, func_80006928, 0x00000000, func_80006CBC, 0x00000000, func_800073F4, 0x00000000, func_800075B0, 0x00000000, func_8000771C, 0x00000000, func_8007DEA0, 0x00000000, func_8007DF68, 0x00000000, func_8000C2E0, 0x00000000, func_8000C2E8, 0x00000000, func_8000C304, 0x00000000, func_8000C2F4, 0x00000000, func_8000C2FC

glabel D_menu_800CA8B0
.word 0x00000000

glabel D_menu_800CA8B4
.ascii "MENUDATA\\PARTDB\0"

glabel D_menu_800CA8C4
.float 1.0

glabel D_menu_800CA8C8
.ascii "bodypart.tdf\0\0\0\0"

glabel D_menu_800CA8D8
.ascii "bodypart.mdf\0\0\0\0"

glabel D_menu_800CA8E8
.ascii "face\0"
