.include "macro.inc"

.section .rdata

glabel D_menu_800CAA90
.word 0x00000000

glabel D_menu_800CAA94
.ascii ".leb\0\0\0\0\0\0\0\0"

glabel D_menu_800CAAA0
.word 0x00000000, 0x00000000, 0x00000000, func_8007DD84, 0x00000000, func_8007DD8C, 0x00000000, func_8007DD94, 0x00000000, func_8007DDB4, 0x00000000, func_80007834, 0x00000000, func_8000783C, 0x00000000, func_menu_800DCBC8, 0x00000000, func_80006624, 0x00000000, func_80009534, 0x00000000, func_80006928, 0x00000000, func_80006CBC, 0x00000000, func_800073F4, 0x00000000, func_800075B0, 0x00000000, func_8000771C, 0x00000000, func_8007DEA0, 0x00000000, func_8007DF68, 0x00000000, func_8000C2E0, 0x00000000, func_8000C2E8, 0x00000000, func_8000C304, 0x00000000, func_8000C2F4, 0x00000000, func_8000C2FC

glabel D_menu_800CAB50
.word 0x00000000

glabel D_menu_800CAB54
.ascii ".bmp\0\0\0\0"

glabel D_menu_800CAB5C
.ascii "MENUDATA\\PARTDB\0"

glabel D_menu_800CAB6C
.ascii "face\0\0\0\0"

glabel D_menu_800CAB74
.ascii "torso\0\0\0"

glabel D_menu_800CAB7C
.ascii "legs\0"
