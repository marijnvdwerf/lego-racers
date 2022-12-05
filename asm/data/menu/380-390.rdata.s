.include "macro.inc"

.section .rdata

glabel D_menu_800CC200
.ascii "MENUDATA\0\0\0\0\0\0\0\0"

glabel jtbl_menu_800CC210
.word Lmenu_800F5560, Lmenu_800F5568, Lmenu_800F5570, Lmenu_800F5578, Lmenu_800F5580, Lmenu_800F5588, Lmenu_800F5590, Lmenu_800F559C, Lmenu_800F559C, Lmenu_800F559C, Lmenu_800F559C, Lmenu_800F559C, Lmenu_800F559C, Lmenu_800F559C, Lmenu_800F559C, Lmenu_800F5598

glabel D_menu_800CC250
.ascii "MENUDATA\\%s\0"

glabel D_menu_800CC25C
.ascii "guy1\0\0\0\0"

glabel D_menu_800CC264
.ascii "carbody\0"

glabel D_menu_800CC26C
.ascii "swap\0\0\0\0"

glabel D_menu_800CC274
.ascii "pleg\0\0\0\0"

glabel D_menu_800CC27C
.ascii "dflt\0\0\0\0"

glabel D_menu_800CC284
.ascii "angry\0\0\0"

glabel D_menu_800CC28C
.ascii "blink\0\0\0"

glabel D_menu_800CC294
.ascii "happy\0\0\0"

glabel D_menu_800CC29C
.word 0x73616400

glabel D_menu_800CC2A0
.ascii "suprz\0\0\0"

glabel D_menu_800CC2A8
.ascii "CHAMP\0\0\0"

glabel D_menu_800CC2B0
.ascii "MENUDATA\\PIECEDB\0\0\0\0\0\0\0\0"

glabel D_menu_800CC2C8
.word 0x00000000, 0x00000000, 0x00000000, func_menu_8011AFA8, 0x00000000, func_menu_8011AFA0, 0x00000000, func_menu_8011AF98, 0x00000000, func_menu_8011AF90, 0x00000000, func_menu_8011AF88, 0x00000000, func_menu_8011AF80, 0x00000000, func_menu_80101580, 0x00000000, func_menu_8010158C, 0x00000000, func_menu_8011AF68, 0x00000000, func_menu_8011AF60, 0x00000000, func_menu_8011AF58, 0x00000000, func_menu_8011AF50, 0x00000000, func_menu_8011AF48, 0x00000000, func_menu_80101598, 0x00000000, func_menu_8011AF28, 0x00000000, func_menu_801015A0, 0x00000000, func_menu_801015A8, 0x00000000, func_menu_8011AF20, 0x00000000, func_menu_8011AF18, 0x00000000, func_menu_800F56D0, 0x00000000, func_menu_80119458, 0x00000000, func_menu_8010081C, 0x00000000, func_menu_801195E4, 0x00000000, func_menu_80101688, 0x00000000, func_menu_8011AE98, 0x00000000, func_menu_80101680, 0x00000000, func_menu_800F544C, 0x00000000, func_menu_8010134C, 0x00000000, func_menu_80119170, 0x00000000, func_menu_800F55FC, 0x00000000, func_menu_800F63D8, 0x00000000, func_menu_8011AE5C, 0x00000000, func_menu_8010141C, 0x00000000, func_menu_800F62D8, 0x00000000, func_menu_801013F8, 0x00000000, func_menu_800F54A0, 0x00000000, func_menu_80101614, 0x00000000, func_menu_8010161C

glabel D_menu_800CC400
.ascii "MENUDATA\\GARAGE\0"

glabel D_menu_800CC410
.ascii "MENUDATA\0\0\0\0"

glabel D_menu_800CC41C
.float 0.001

glabel D_menu_800CC420
.float 1.0

glabel D_menu_800CC424
.float 0.01

glabel D_menu_800CC428
.float 0.01, 0.0

glabel jtbl_menu_800CC430
.word Lmenu_800F729C, Lmenu_800F72D8, Lmenu_800F72EC, Lmenu_800F7334, Lmenu_800F7300, Lmenu_800F7320

glabel D_menu_800CC448
.word 0x00000000, 0x00000000, 0x00000000, func_menu_8011AFA8, 0x00000000, func_menu_8011AFA0, 0x00000000, func_menu_8011AF98, 0x00000000, func_menu_8011AF90, 0x00000000, func_menu_800F7138, 0x00000000, func_menu_8011AF80, 0x00000000, func_menu_80101580, 0x00000000, func_menu_8010158C, 0x00000000, func_menu_8011AF68, 0x00000000, func_menu_8011AF60, 0x00000000, func_menu_8011AF58, 0x00000000, func_menu_8011AF50, 0x00000000, func_menu_8011AF48, 0x00000000, func_menu_80101598, 0x00000000, func_menu_800F7048, 0x00000000, func_menu_801015A0, 0x00000000, func_menu_801015A8, 0x00000000, func_menu_800F7070, 0x00000000, func_menu_8011AF18, 0x00000000, func_menu_800F6A80, 0x00000000, func_menu_80119458, 0x00000000, func_menu_800F6858, 0x00000000, func_menu_801195E4, 0x00000000, func_menu_80101688, 0x00000000, func_menu_8011AE98, 0x00000000, func_menu_80101680, 0x00000000, func_menu_800F6764, 0x00000000, func_menu_8010134C, 0x00000000, func_menu_80119170, 0x00000000, func_menu_801008C8, 0x00000000, func_menu_800F7350, 0x00000000, func_menu_8011AE5C, 0x00000000, func_menu_800F6B24, 0x00000000, func_menu_800F6CDC, 0x00000000, func_menu_801013F8, 0x00000000, func_menu_800F6B6C, 0x00000000, func_menu_80101614, 0x00000000, func_menu_8010161C, 0x00000000, func_80002874, 0x00000000, func_80002874, 0x00000000, func_80002874, 0x00000000, func_80002874, 0x00000000, func_80002874, 0x00000000, func_80002874, 0x00000000, func_80002874, 0x00000000, func_80002874, 0x00000000, func_menu_800F6FF4
