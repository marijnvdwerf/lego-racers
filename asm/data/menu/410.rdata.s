.include "macro.inc"

.section .rdata

glabel D_menu_800CC710
.ascii "font_ths\0\0\0\0"

glabel D_menu_800CC71C
.ascii "spanish\0"

glabel D_menu_800CC724
.ascii "french\0\0"

glabel D_menu_800CC72C
.ascii "german\0\0"

glabel D_menu_800CC734
.ascii "italian\0"

glabel D_menu_800CC73C
.ascii "danish\0\0"

glabel D_menu_800CC744
.ascii "swedish\0"

glabel D_menu_800CC74C
.ascii "norwegi\0"

glabel D_menu_800CC754
.ascii "dutch\0\0\0"

glabel D_menu_800CC75C
.ascii "finnish\0"

glabel D_menu_800CC764
.ascii ".srf\0\0\0\0"

glabel D_menu_800CC76C
.ascii "MENUDATA\0\0\0\0"

glabel jtbl_menu_800CC778
.word Lmenu_800F97B0, Lmenu_800F97D0, Lmenu_800F97F8, Lmenu_800F9820, Lmenu_800F9840, Lmenu_800F9868, Lmenu_800F9888, Lmenu_800F98A8, Lmenu_800F98C8, 0

glabel D_menu_800CC7A0
.word 0x00000000, 0x00000000, 0x00000000, func_menu_8011AFA8, 0x00000000, func_menu_8011AFA0, 0x00000000, func_menu_8011AF98, 0x00000000, func_menu_8011AF90, 0x00000000, func_menu_8011AF88, 0x00000000, func_menu_8011AF80, 0x00000000, func_menu_80101580, 0x00000000, func_menu_8010158C, 0x00000000, func_menu_8011AF68, 0x00000000, func_menu_8011AF60, 0x00000000, func_menu_8011AF58, 0x00000000, func_menu_8011AF50, 0x00000000, func_menu_8011AF48, 0x00000000, func_menu_80101598, 0x00000000, func_menu_8011AF28, 0x00000000, func_menu_801015A0, 0x00000000, func_menu_801015A8, 0x00000000, func_menu_8011AF20, 0x00000000, func_menu_8011AF18, 0x00000000, func_80002874, 0x00000000, func_menu_80119458, 0x00000000, func_menu_8010081C, 0x00000000, func_menu_801195E4, 0x00000000, func_menu_80101688, 0x00000000, func_menu_8011AE98, 0x00000000, func_menu_80101680, 0x00000000, func_menu_800F9630, 0x00000000, func_menu_8010134C, 0x00000000, func_menu_80119170, 0x00000000, func_menu_800F997C, 0x00000000, func_menu_800F9A04, 0x00000000, func_menu_8011AE5C, 0x00000000, func_menu_8010141C, 0x00000000, func_menu_800F9A44, 0x00000000, func_menu_801013F8, 0x00000000, func_menu_800F9690, 0x00000000, func_menu_80101614, 0x00000000, func_menu_8010161C
