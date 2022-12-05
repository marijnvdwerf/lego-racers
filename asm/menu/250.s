.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text, "ax"

glabel func_menu_800ECF10
/* 10B000 800ECF10 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 10B004 800ECF14 AFB00010 */  sw         $s0, 0x10($sp)
/* 10B008 800ECF18 00808021 */  addu       $s0, $a0, $zero
/* 10B00C 800ECF1C 3C02800D */  lui        $v0, %hi(D_menu_800CB930)
/* 10B010 800ECF20 2442B930 */  addiu      $v0, $v0, %lo(D_menu_800CB930)
/* 10B014 800ECF24 AFBF0014 */  sw         $ra, 0x14($sp)
/* 10B018 800ECF28 0C03B3D1 */  jal        func_menu_800ECF44
/* 10B01C 800ECF2C AE020000 */   sw        $v0, 0x0($s0)
/* 10B020 800ECF30 02001021 */  addu       $v0, $s0, $zero
/* 10B024 800ECF34 8FBF0014 */  lw         $ra, 0x14($sp)
/* 10B028 800ECF38 8FB00010 */  lw         $s0, 0x10($sp)
/* 10B02C 800ECF3C 03E00008 */  jr         $ra
/* 10B030 800ECF40 27BD0018 */   addiu     $sp, $sp, 0x18

glabel func_menu_800ECF44
/* 10B034 800ECF44 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 10B038 800ECF48 AFB00010 */  sw         $s0, 0x10($sp)
/* 10B03C 800ECF4C 00808021 */  addu       $s0, $a0, $zero
/* 10B040 800ECF50 26040010 */  addiu      $a0, $s0, 0x10
/* 10B044 800ECF54 00002821 */  addu       $a1, $zero, $zero
/* 10B048 800ECF58 24060004 */  addiu      $a2, $zero, 0x4
/* 10B04C 800ECF5C 240200FF */  addiu      $v0, $zero, 0xFF
/* 10B050 800ECF60 AFBF0014 */  sw         $ra, 0x14($sp)
/* 10B054 800ECF64 A202000C */  sb         $v0, 0xC($s0)
/* 10B058 800ECF68 A202000D */  sb         $v0, 0xD($s0)
/* 10B05C 800ECF6C A202000E */  sb         $v0, 0xE($s0)
/* 10B060 800ECF70 A202000F */  sb         $v0, 0xF($s0)
/* 10B064 800ECF74 A2020018 */  sb         $v0, 0x18($s0)
/* 10B068 800ECF78 A2020019 */  sb         $v0, 0x19($s0)
/* 10B06C 800ECF7C A202001A */  sb         $v0, 0x1A($s0)
/* 10B070 800ECF80 A202001B */  sb         $v0, 0x1B($s0)
/* 10B074 800ECF84 AE000004 */  sw         $zero, 0x4($s0)
/* 10B078 800ECF88 0C000697 */  jal        func_80001A5C
/* 10B07C 800ECF8C AE000008 */   sw        $zero, 0x8($s0)
/* 10B080 800ECF90 26040024 */  addiu      $a0, $s0, 0x24
/* 10B084 800ECF94 00002821 */  addu       $a1, $zero, $zero
/* 10B088 800ECF98 0C000697 */  jal        func_80001A5C
/* 10B08C 800ECF9C 24060004 */   addiu     $a2, $zero, 0x4
/* 10B090 800ECFA0 26040028 */  addiu      $a0, $s0, 0x28
/* 10B094 800ECFA4 00002821 */  addu       $a1, $zero, $zero
/* 10B098 800ECFA8 0C000697 */  jal        func_80001A5C
/* 10B09C 800ECFAC 2406000C */   addiu     $a2, $zero, 0xC
/* 10B0A0 800ECFB0 26040034 */  addiu      $a0, $s0, 0x34
/* 10B0A4 800ECFB4 00002821 */  addu       $a1, $zero, $zero
/* 10B0A8 800ECFB8 0C000697 */  jal        func_80001A5C
/* 10B0AC 800ECFBC 2406000C */   addiu     $a2, $zero, 0xC
/* 10B0B0 800ECFC0 3C038012 */  lui        $v1, %hi(D_menu_80126BB0)
/* 10B0B4 800ECFC4 8E020004 */  lw         $v0, 0x4($s0)
/* 10B0B8 800ECFC8 24636BB0 */  addiu      $v1, $v1, %lo(D_menu_80126BB0)
/* 10B0BC 800ECFCC AE000014 */  sw         $zero, 0x14($s0)
/* 10B0C0 800ECFD0 AE00001C */  sw         $zero, 0x1C($s0)
/* 10B0C4 800ECFD4 AE000020 */  sw         $zero, 0x20($s0)
/* 10B0C8 800ECFD8 000210C0 */  sll        $v0, $v0, 3
/* 10B0CC 800ECFDC 00431021 */  addu       $v0, $v0, $v1
/* 10B0D0 800ECFE0 8C470000 */  lw         $a3, 0x0($v0)
/* 10B0D4 800ECFE4 8C480004 */  lw         $t0, 0x4($v0)
/* 10B0D8 800ECFE8 AE070040 */  sw         $a3, 0x40($s0)
/* 10B0DC 800ECFEC AE080044 */  sw         $t0, 0x44($s0)
/* 10B0E0 800ECFF0 8FBF0014 */  lw         $ra, 0x14($sp)
/* 10B0E4 800ECFF4 8FB00010 */  lw         $s0, 0x10($sp)
/* 10B0E8 800ECFF8 03E00008 */  jr         $ra
/* 10B0EC 800ECFFC 27BD0018 */   addiu     $sp, $sp, 0x18

glabel func_menu_800ED000
/* 10B0F0 800ED000 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 10B0F4 800ED004 AFBF0010 */  sw         $ra, 0x10($sp)
/* 10B0F8 800ED008 0C03B3D1 */  jal        func_menu_800ECF44
/* 10B0FC 800ED00C 00000000 */   nop
/* 10B100 800ED010 8FBF0010 */  lw         $ra, 0x10($sp)
/* 10B104 800ED014 03E00008 */  jr         $ra
/* 10B108 800ED018 27BD0018 */   addiu     $sp, $sp, 0x18

glabel func_menu_800ED01C
/* 10B10C 800ED01C 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 10B110 800ED020 3C038012 */  lui        $v1, %hi(D_menu_80126BB0)
/* 10B114 800ED024 AFBF0010 */  sw         $ra, 0x10($sp)
/* 10B118 800ED028 AC850008 */  sw         $a1, 0x8($a0)
/* 10B11C 800ED02C 88A60000 */  lwl        $a2, 0x0($a1)
/* 10B120 800ED030 98A60003 */  lwr        $a2, 0x3($a1)
/* 10B124 800ED034 A886000C */  swl        $a2, 0xC($a0)
/* 10B128 800ED038 B886000F */  swr        $a2, 0xF($a0)
/* 10B12C 800ED03C 8C820004 */  lw         $v0, 0x4($a0)
/* 10B130 800ED040 24636BB0 */  addiu      $v1, $v1, %lo(D_menu_80126BB0)
/* 10B134 800ED044 000210C0 */  sll        $v0, $v0, 3
/* 10B138 800ED048 00431021 */  addu       $v0, $v0, $v1
/* 10B13C 800ED04C 8C460000 */  lw         $a2, 0x0($v0)
/* 10B140 800ED050 8C470004 */  lw         $a3, 0x4($v0)
/* 10B144 800ED054 AC860040 */  sw         $a2, 0x40($a0)
/* 10B148 800ED058 AC870044 */  sw         $a3, 0x44($a0)
/* 10B14C 800ED05C 0C03B443 */  jal        func_menu_800ED10C
/* 10B150 800ED060 00000000 */   nop
/* 10B154 800ED064 8FBF0010 */  lw         $ra, 0x10($sp)
/* 10B158 800ED068 03E00008 */  jr         $ra
/* 10B15C 800ED06C 27BD0018 */   addiu     $sp, $sp, 0x18

glabel func_menu_800ED070
/* 10B160 800ED070 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 10B164 800ED074 AFBF0010 */  sw         $ra, 0x10($sp)
/* 10B168 800ED078 8C820004 */  lw         $v0, 0x4($a0)
/* 10B16C 800ED07C 14400020 */  bnez       $v0, .Lmenu_800ED100
/* 10B170 800ED080 00000000 */   nop
/* 10B174 800ED084 88A60000 */  lwl        $a2, 0x0($a1)
/* 10B178 800ED088 98A60003 */  lwr        $a2, 0x3($a1)
/* 10B17C 800ED08C A8860024 */  swl        $a2, 0x24($a0)
/* 10B180 800ED090 B8860027 */  swr        $a2, 0x27($a0)
/* 10B184 800ED094 8C830004 */  lw         $v1, 0x4($a0)
/* 10B188 800ED098 00031040 */  sll        $v0, $v1, 1
/* 10B18C 800ED09C 00431021 */  addu       $v0, $v0, $v1
/* 10B190 800ED0A0 00021080 */  sll        $v0, $v0, 2
/* 10B194 800ED0A4 00441021 */  addu       $v0, $v0, $a0
/* 10B198 800ED0A8 8CA60004 */  lw         $a2, 0x4($a1)
/* 10B19C 800ED0AC 8CA70008 */  lw         $a3, 0x8($a1)
/* 10B1A0 800ED0B0 8CA8000C */  lw         $t0, 0xC($a1)
/* 10B1A4 800ED0B4 AC460034 */  sw         $a2, 0x34($v0)
/* 10B1A8 800ED0B8 AC470038 */  sw         $a3, 0x38($v0)
/* 10B1AC 800ED0BC AC48003C */  sw         $t0, 0x3C($v0)
/* 10B1B0 800ED0C0 8C820004 */  lw         $v0, 0x4($a0)
/* 10B1B4 800ED0C4 00021880 */  sll        $v1, $v0, 2
/* 10B1B8 800ED0C8 24420001 */  addiu      $v0, $v0, 0x1
/* 10B1BC 800ED0CC 00831821 */  addu       $v1, $a0, $v1
/* 10B1C0 800ED0D0 AC650010 */  sw         $a1, 0x10($v1)
/* 10B1C4 800ED0D4 3C038012 */  lui        $v1, %hi(D_menu_80126BB0)
/* 10B1C8 800ED0D8 24636BB0 */  addiu      $v1, $v1, %lo(D_menu_80126BB0)
/* 10B1CC 800ED0DC AC820004 */  sw         $v0, 0x4($a0)
/* 10B1D0 800ED0E0 000210C0 */  sll        $v0, $v0, 3
/* 10B1D4 800ED0E4 00431021 */  addu       $v0, $v0, $v1
/* 10B1D8 800ED0E8 8C460000 */  lw         $a2, 0x0($v0)
/* 10B1DC 800ED0EC 8C470004 */  lw         $a3, 0x4($v0)
/* 10B1E0 800ED0F0 AC860040 */  sw         $a2, 0x40($a0)
/* 10B1E4 800ED0F4 AC870044 */  sw         $a3, 0x44($a0)
/* 10B1E8 800ED0F8 0C03B443 */  jal        func_menu_800ED10C
/* 10B1EC 800ED0FC 00000000 */   nop
.Lmenu_800ED100:
/* 10B1F0 800ED100 8FBF0010 */  lw         $ra, 0x10($sp)
/* 10B1F4 800ED104 03E00008 */  jr         $ra
/* 10B1F8 800ED108 27BD0018 */   addiu     $sp, $sp, 0x18

glabel func_menu_800ED10C
/* 10B1FC 800ED10C 8C820014 */  lw         $v0, 0x14($a0)
/* 10B200 800ED110 14400014 */  bnez       $v0, .Lmenu_800ED164
/* 10B204 800ED114 27BDFFF0 */   addiu     $sp, $sp, -0x10
/* 10B208 800ED118 00002821 */  addu       $a1, $zero, $zero
/* 10B20C 800ED11C 8C830004 */  lw         $v1, 0x4($a0)
/* 10B210 800ED120 240200FF */  addiu      $v0, $zero, 0xFF
/* 10B214 800ED124 A0800018 */  sb         $zero, 0x18($a0)
/* 10B218 800ED128 A0800019 */  sb         $zero, 0x19($a0)
/* 10B21C 800ED12C A080001A */  sb         $zero, 0x1A($a0)
/* 10B220 800ED130 1060004C */  beqz       $v1, .Lmenu_800ED264
/* 10B224 800ED134 A082001B */   sb        $v0, 0x1B($a0)
/* 10B228 800ED138 00801821 */  addu       $v1, $a0, $zero
.Lmenu_800ED13C:
/* 10B22C 800ED13C AC600028 */  sw         $zero, 0x28($v1)
/* 10B230 800ED140 AC60002C */  sw         $zero, 0x2C($v1)
/* 10B234 800ED144 AC600030 */  sw         $zero, 0x30($v1)
/* 10B238 800ED148 8C820004 */  lw         $v0, 0x4($a0)
/* 10B23C 800ED14C 24A50001 */  addiu      $a1, $a1, 0x1
/* 10B240 800ED150 00A2102B */  sltu       $v0, $a1, $v0
/* 10B244 800ED154 1440FFF9 */  bnez       $v0, .Lmenu_800ED13C
/* 10B248 800ED158 2463000C */   addiu     $v1, $v1, 0xC
/* 10B24C 800ED15C 0803B499 */  j          .Lmenu_800ED264
/* 10B250 800ED160 00000000 */   nop
.Lmenu_800ED164:
/* 10B254 800ED164 8848000C */  lwl        $t0, 0xC($v0)
/* 10B258 800ED168 9848000F */  lwr        $t0, 0xF($v0)
/* 10B25C 800ED16C ABA80000 */  swl        $t0, 0x0($sp)
/* 10B260 800ED170 BBA80003 */  swr        $t0, 0x3($sp)
/* 10B264 800ED174 93A30000 */  lbu        $v1, 0x0($sp)
/* 10B268 800ED178 9082000C */  lbu        $v0, 0xC($a0)
/* 10B26C 800ED17C 00620018 */  mult       $v1, $v0
/* 10B270 800ED180 00004012 */  mflo       $t0
/* 10B274 800ED184 00081202 */  srl        $v0, $t0, 8
/* 10B278 800ED188 A0820018 */  sb         $v0, 0x18($a0)
/* 10B27C 800ED18C 93A30001 */  lbu        $v1, 0x1($sp)
/* 10B280 800ED190 9082000D */  lbu        $v0, 0xD($a0)
/* 10B284 800ED194 00620018 */  mult       $v1, $v0
/* 10B288 800ED198 00004012 */  mflo       $t0
/* 10B28C 800ED19C 00081202 */  srl        $v0, $t0, 8
/* 10B290 800ED1A0 A0820019 */  sb         $v0, 0x19($a0)
/* 10B294 800ED1A4 93A30002 */  lbu        $v1, 0x2($sp)
/* 10B298 800ED1A8 9082000E */  lbu        $v0, 0xE($a0)
/* 10B29C 800ED1AC 00620018 */  mult       $v1, $v0
/* 10B2A0 800ED1B0 8C830014 */  lw         $v1, 0x14($a0)
/* 10B2A4 800ED1B4 00004012 */  mflo       $t0
/* 10B2A8 800ED1B8 00081202 */  srl        $v0, $t0, 8
/* 10B2AC 800ED1BC A082001A */  sb         $v0, 0x1A($a0)
/* 10B2B0 800ED1C0 93A20003 */  lbu        $v0, 0x3($sp)
/* 10B2B4 800ED1C4 A082001B */  sb         $v0, 0x1B($a0)
/* 10B2B8 800ED1C8 88690008 */  lwl        $t1, 0x8($v1)
/* 10B2BC 800ED1CC 9869000B */  lwr        $t1, 0xB($v1)
/* 10B2C0 800ED1D0 ABA90008 */  swl        $t1, 0x8($sp)
/* 10B2C4 800ED1D4 BBA9000B */  swr        $t1, 0xB($sp)
/* 10B2C8 800ED1D8 8C820004 */  lw         $v0, 0x4($a0)
/* 10B2CC 800ED1DC 10400021 */  beqz       $v0, .Lmenu_800ED264
/* 10B2D0 800ED1E0 00002821 */   addu      $a1, $zero, $zero
/* 10B2D4 800ED1E4 00803821 */  addu       $a3, $a0, $zero
/* 10B2D8 800ED1E8 00803021 */  addu       $a2, $a0, $zero
.Lmenu_800ED1EC:
/* 10B2DC 800ED1EC 93A30008 */  lbu        $v1, 0x8($sp)
/* 10B2E0 800ED1F0 90E20024 */  lbu        $v0, 0x24($a3)
/* 10B2E4 800ED1F4 00620018 */  mult       $v1, $v0
/* 10B2E8 800ED1F8 00004012 */  mflo       $t0
/* 10B2EC 800ED1FC 00081202 */  srl        $v0, $t0, 8
/* 10B2F0 800ED200 44820000 */  mtc1       $v0, $f0
/* 10B2F4 800ED204 46800020 */  cvt.s.w    $f0, $f0
/* 10B2F8 800ED208 E4C00028 */  swc1       $f0, 0x28($a2)
/* 10B2FC 800ED20C 93A30009 */  lbu        $v1, 0x9($sp)
/* 10B300 800ED210 90E20025 */  lbu        $v0, 0x25($a3)
/* 10B304 800ED214 00620018 */  mult       $v1, $v0
/* 10B308 800ED218 00004012 */  mflo       $t0
/* 10B30C 800ED21C 00081202 */  srl        $v0, $t0, 8
/* 10B310 800ED220 44820000 */  mtc1       $v0, $f0
/* 10B314 800ED224 46800020 */  cvt.s.w    $f0, $f0
/* 10B318 800ED228 E4C0002C */  swc1       $f0, 0x2C($a2)
/* 10B31C 800ED22C 93A3000A */  lbu        $v1, 0xA($sp)
/* 10B320 800ED230 90E20026 */  lbu        $v0, 0x26($a3)
/* 10B324 800ED234 00620018 */  mult       $v1, $v0
/* 10B328 800ED238 24A50001 */  addiu      $a1, $a1, 0x1
/* 10B32C 800ED23C 24E70004 */  addiu      $a3, $a3, 0x4
/* 10B330 800ED240 00004012 */  mflo       $t0
/* 10B334 800ED244 00081202 */  srl        $v0, $t0, 8
/* 10B338 800ED248 44820000 */  mtc1       $v0, $f0
/* 10B33C 800ED24C 46800020 */  cvt.s.w    $f0, $f0
/* 10B340 800ED250 E4C00030 */  swc1       $f0, 0x30($a2)
/* 10B344 800ED254 8C820004 */  lw         $v0, 0x4($a0)
/* 10B348 800ED258 00A2102B */  sltu       $v0, $a1, $v0
/* 10B34C 800ED25C 1440FFE3 */  bnez       $v0, .Lmenu_800ED1EC
/* 10B350 800ED260 24C6000C */   addiu     $a2, $a2, 0xC
.Lmenu_800ED264:
/* 10B354 800ED264 03E00008 */  jr         $ra
/* 10B358 800ED268 27BD0010 */   addiu     $sp, $sp, 0x10

glabel func_menu_800ED26C
/* 10B35C 800ED26C 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 10B360 800ED270 00802821 */  addu       $a1, $a0, $zero
/* 10B364 800ED274 00073880 */  sll        $a3, $a3, 2
/* 10B368 800ED278 00C73021 */  addu       $a2, $a2, $a3
/* 10B36C 800ED27C AFBF0010 */  sw         $ra, 0x10($sp)
/* 10B370 800ED280 8CC40078 */  lw         $a0, 0x78($a2)
/* 10B374 800ED284 ACA4001C */  sw         $a0, 0x1C($a1)
/* 10B378 800ED288 8C83003C */  lw         $v1, 0x3C($a0)
/* 10B37C 800ED28C 84620058 */  lh         $v0, 0x58($v1)
/* 10B380 800ED290 00822021 */  addu       $a0, $a0, $v0
/* 10B384 800ED294 8C62005C */  lw         $v0, 0x5C($v1)
/* 10B388 800ED298 0040F809 */  jalr       $v0
/* 10B38C 800ED29C 24A50020 */   addiu     $a1, $a1, 0x20
/* 10B390 800ED2A0 8FBF0010 */  lw         $ra, 0x10($sp)
/* 10B394 800ED2A4 03E00008 */  jr         $ra
/* 10B398 800ED2A8 27BD0018 */   addiu     $sp, $sp, 0x18

glabel func_menu_800ED2AC
/* 10B39C 800ED2AC 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 10B3A0 800ED2B0 AFBF0010 */  sw         $ra, 0x10($sp)
/* 10B3A4 800ED2B4 8C82001C */  lw         $v0, 0x1C($a0)
/* 10B3A8 800ED2B8 8C43003C */  lw         $v1, 0x3C($v0)
/* 10B3AC 800ED2BC 84640060 */  lh         $a0, 0x60($v1)
/* 10B3B0 800ED2C0 24050001 */  addiu      $a1, $zero, 0x1
/* 10B3B4 800ED2C4 00442021 */  addu       $a0, $v0, $a0
/* 10B3B8 800ED2C8 8C620064 */  lw         $v0, 0x64($v1)
/* 10B3BC 800ED2CC 0040F809 */  jalr       $v0
/* 10B3C0 800ED2D0 00003021 */   addu      $a2, $zero, $zero
/* 10B3C4 800ED2D4 8FBF0010 */  lw         $ra, 0x10($sp)
/* 10B3C8 800ED2D8 03E00008 */  jr         $ra
/* 10B3CC 800ED2DC 27BD0018 */   addiu     $sp, $sp, 0x18

glabel func_menu_800ED2E0
/* 10B3D0 800ED2E0 27BDFFD0 */  addiu      $sp, $sp, -0x30
/* 10B3D4 800ED2E4 AFB00018 */  sw         $s0, 0x18($sp)
/* 10B3D8 800ED2E8 00808021 */  addu       $s0, $a0, $zero
/* 10B3DC 800ED2EC AFB1001C */  sw         $s1, 0x1C($sp)
/* 10B3E0 800ED2F0 00A08821 */  addu       $s1, $a1, $zero
/* 10B3E4 800ED2F4 AFBF0028 */  sw         $ra, 0x28($sp)
/* 10B3E8 800ED2F8 AFB30024 */  sw         $s3, 0x24($sp)
/* 10B3EC 800ED2FC AFB20020 */  sw         $s2, 0x20($sp)
/* 10B3F0 800ED300 8E230008 */  lw         $v1, 0x8($s1)
/* 10B3F4 800ED304 8E020014 */  lw         $v0, 0x14($s0)
/* 10B3F8 800ED308 10620003 */  beq        $v1, $v0, .Lmenu_800ED318
/* 10B3FC 800ED30C 00000000 */   nop
/* 10B400 800ED310 0C03B443 */  jal        func_menu_800ED10C
/* 10B404 800ED314 AE030014 */   sw        $v1, 0x14($s0)
.Lmenu_800ED318:
/* 10B408 800ED318 86040042 */  lh         $a0, 0x42($s0)
/* 10B40C 800ED31C 1880000A */  blez       $a0, .Lmenu_800ED348
/* 10B410 800ED320 00000000 */   nop
/* 10B414 800ED324 86020044 */  lh         $v0, 0x44($s0)
/* 10B418 800ED328 02021021 */  addu       $v0, $s0, $v0
/* 10B41C 800ED32C 8C430000 */  lw         $v1, 0x0($v0)
/* 10B420 800ED330 000410C0 */  sll        $v0, $a0, 3
/* 10B424 800ED334 00431021 */  addu       $v0, $v0, $v1
/* 10B428 800ED338 8C52FFF8 */  lw         $s2, -0x8($v0)
/* 10B42C 800ED33C 8C53FFFC */  lw         $s3, -0x4($v0)
/* 10B430 800ED340 0803B4D3 */  j          .Lmenu_800ED34C
/* 10B434 800ED344 02604021 */   addu      $t0, $s3, $zero
.Lmenu_800ED348:
/* 10B438 800ED348 8E080044 */  lw         $t0, 0x44($s0)
.Lmenu_800ED34C:
/* 10B43C 800ED34C 86030040 */  lh         $v1, 0x40($s0)
/* 10B440 800ED350 18800002 */  blez       $a0, .Lmenu_800ED35C
/* 10B444 800ED354 00121403 */   sra       $v0, $s2, 16
/* 10B448 800ED358 00431821 */  addu       $v1, $v0, $v1
.Lmenu_800ED35C:
/* 10B44C 800ED35C 8E220018 */  lw         $v0, 0x18($s1)
/* 10B450 800ED360 AFA20010 */  sw         $v0, 0x10($sp)
/* 10B454 800ED364 8E25000C */  lw         $a1, 0xC($s1)
/* 10B458 800ED368 8E260010 */  lw         $a2, 0x10($s1)
/* 10B45C 800ED36C 8E270014 */  lw         $a3, 0x14($s1)
/* 10B460 800ED370 0100F809 */  jalr       $t0
/* 10B464 800ED374 02032021 */   addu      $a0, $s0, $v1
/* 10B468 800ED378 8FBF0028 */  lw         $ra, 0x28($sp)
/* 10B46C 800ED37C 8FB30024 */  lw         $s3, 0x24($sp)
/* 10B470 800ED380 8FB20020 */  lw         $s2, 0x20($sp)
/* 10B474 800ED384 8FB1001C */  lw         $s1, 0x1C($sp)
/* 10B478 800ED388 8FB00018 */  lw         $s0, 0x18($sp)
/* 10B47C 800ED38C 03E00008 */  jr         $ra
/* 10B480 800ED390 27BD0030 */   addiu     $sp, $sp, 0x30

glabel func_menu_800ED394
/* 10B484 800ED394 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* 10B488 800ED398 8FA20030 */  lw         $v0, 0x30($sp)
/* 10B48C 800ED39C AFB20018 */  sw         $s2, 0x18($sp)
/* 10B490 800ED3A0 AFB00010 */  sw         $s0, 0x10($sp)
/* 10B494 800ED3A4 00E08021 */  addu       $s0, $a3, $zero
/* 10B498 800ED3A8 AFBF001C */  sw         $ra, 0x1C($sp)
/* 10B49C 800ED3AC AFB10014 */  sw         $s1, 0x14($sp)
/* 10B4A0 800ED3B0 02028821 */  addu       $s1, $s0, $v0
/* 10B4A4 800ED3B4 0211102B */  sltu       $v0, $s0, $s1
/* 10B4A8 800ED3B8 1040000D */  beqz       $v0, .Lmenu_800ED3F0
/* 10B4AC 800ED3BC 00809021 */   addu      $s2, $a0, $zero
.Lmenu_800ED3C0:
/* 10B4B0 800ED3C0 8E420020 */  lw         $v0, 0x20($s2)
/* 10B4B4 800ED3C4 8C430008 */  lw         $v1, 0x8($v0)
/* 10B4B8 800ED3C8 02002821 */  addu       $a1, $s0, $zero
/* 10B4BC 800ED3CC 84640068 */  lh         $a0, 0x68($v1)
/* 10B4C0 800ED3D0 26100001 */  addiu      $s0, $s0, 0x1
/* 10B4C4 800ED3D4 00442021 */  addu       $a0, $v0, $a0
/* 10B4C8 800ED3D8 8C62006C */  lw         $v0, 0x6C($v1)
/* 10B4CC 800ED3DC 0040F809 */  jalr       $v0
/* 10B4D0 800ED3E0 26460018 */   addiu     $a2, $s2, 0x18
/* 10B4D4 800ED3E4 0211102B */  sltu       $v0, $s0, $s1
/* 10B4D8 800ED3E8 1440FFF5 */  bnez       $v0, .Lmenu_800ED3C0
/* 10B4DC 800ED3EC 00000000 */   nop
.Lmenu_800ED3F0:
/* 10B4E0 800ED3F0 8FBF001C */  lw         $ra, 0x1C($sp)
/* 10B4E4 800ED3F4 8FB20018 */  lw         $s2, 0x18($sp)
/* 10B4E8 800ED3F8 8FB10014 */  lw         $s1, 0x14($sp)
/* 10B4EC 800ED3FC 8FB00010 */  lw         $s0, 0x10($sp)
/* 10B4F0 800ED400 03E00008 */  jr         $ra
/* 10B4F4 800ED404 27BD0020 */   addiu     $sp, $sp, 0x20

glabel func_menu_800ED408
/* 10B4F8 800ED408 27BDFFC0 */  addiu      $sp, $sp, -0x40
/* 10B4FC 800ED40C AFB1001C */  sw         $s1, 0x1C($sp)
/* 10B500 800ED410 00808821 */  addu       $s1, $a0, $zero
/* 10B504 800ED414 AFB60030 */  sw         $s6, 0x30($sp)
/* 10B508 800ED418 00E0B021 */  addu       $s6, $a3, $zero
/* 10B50C 800ED41C 8FA20050 */  lw         $v0, 0x50($sp)
/* 10B510 800ED420 00063140 */  sll        $a2, $a2, 5
/* 10B514 800ED424 AFB20020 */  sw         $s2, 0x20($sp)
/* 10B518 800ED428 00A69021 */  addu       $s2, $a1, $a2
/* 10B51C 800ED42C AFBF003C */  sw         $ra, 0x3C($sp)
/* 10B520 800ED430 AFBE0038 */  sw         $fp, 0x38($sp)
/* 10B524 800ED434 AFB70034 */  sw         $s7, 0x34($sp)
/* 10B528 800ED438 AFB5002C */  sw         $s5, 0x2C($sp)
/* 10B52C 800ED43C AFB40028 */  sw         $s4, 0x28($sp)
/* 10B530 800ED440 AFB30024 */  sw         $s3, 0x24($sp)
/* 10B534 800ED444 AFB00018 */  sw         $s0, 0x18($sp)
/* 10B538 800ED448 92350018 */  lbu        $s5, 0x18($s1)
/* 10B53C 800ED44C 92340019 */  lbu        $s4, 0x19($s1)
/* 10B540 800ED450 9233001A */  lbu        $s3, 0x1A($s1)
/* 10B544 800ED454 9223001B */  lbu        $v1, 0x1B($s1)
/* 10B548 800ED458 00021140 */  sll        $v0, $v0, 5
/* 10B54C 800ED45C 0242B821 */  addu       $s7, $s2, $v0
/* 10B550 800ED460 0257102B */  sltu       $v0, $s2, $s7
/* 10B554 800ED464 10400043 */  beqz       $v0, .Lmenu_800ED574
/* 10B558 800ED468 A3A30013 */   sb        $v1, 0x13($sp)
/* 10B55C 800ED46C 241E00FF */  addiu      $fp, $zero, 0xFF
/* 10B560 800ED470 2650001C */  addiu      $s0, $s2, 0x1C
.Lmenu_800ED474:
/* 10B564 800ED474 C6240034 */  lwc1       $f4, 0x34($s1)
/* 10B568 800ED478 C600FFF8 */  lwc1       $f0, -0x8($s0)
/* 10B56C 800ED47C 46002102 */  mul.s      $f4, $f4, $f0
/* 10B570 800ED480 C6260038 */  lwc1       $f6, 0x38($s1)
/* 10B574 800ED484 C600FFFC */  lwc1       $f0, -0x4($s0)
/* 10B578 800ED488 46003182 */  mul.s      $f6, $f6, $f0
/* 10B57C 800ED48C C622003C */  lwc1       $f2, 0x3C($s1)
/* 10B580 800ED490 C6000000 */  lwc1       $f0, 0x0($s0)
/* 10B584 800ED494 46001082 */  mul.s      $f2, $f2, $f0
/* 10B588 800ED498 46062100 */  add.s      $f4, $f4, $f6
/* 10B58C 800ED49C 46022100 */  add.s      $f4, $f4, $f2
/* 10B590 800ED4A0 C6200028 */  lwc1       $f0, 0x28($s1)
/* 10B594 800ED4A4 46040002 */  mul.s      $f0, $f0, $f4
/* 10B598 800ED4A8 C622002C */  lwc1       $f2, 0x2C($s1)
/* 10B59C 800ED4AC 46041082 */  mul.s      $f2, $f2, $f4
/* 10B5A0 800ED4B0 C6260030 */  lwc1       $f6, 0x30($s1)
/* 10B5A4 800ED4B4 46043182 */  mul.s      $f6, $f6, $f4
/* 10B5A8 800ED4B8 4600020D */  trunc.w.s  $f8, $f0
/* 10B5AC 800ED4BC 44024000 */  mfc1       $v0, $f8
/* 10B5B0 800ED4C0 02A21823 */  subu       $v1, $s5, $v0
/* 10B5B4 800ED4C4 4600120D */  trunc.w.s  $f8, $f2
/* 10B5B8 800ED4C8 44024000 */  mfc1       $v0, $f8
/* 10B5BC 800ED4CC 02822023 */  subu       $a0, $s4, $v0
/* 10B5C0 800ED4D0 4600320D */  trunc.w.s  $f8, $f6
/* 10B5C4 800ED4D4 44024000 */  mfc1       $v0, $f8
/* 10B5C8 800ED4D8 02622823 */  subu       $a1, $s3, $v0
/* 10B5CC 800ED4DC 0075102A */  slt        $v0, $v1, $s5
/* 10B5D0 800ED4E0 10400003 */  beqz       $v0, .Lmenu_800ED4F0
/* 10B5D4 800ED4E4 28620100 */   slti      $v0, $v1, 0x100
/* 10B5D8 800ED4E8 0803B53F */  j          .Lmenu_800ED4FC
/* 10B5DC 800ED4EC A3B50010 */   sb        $s5, 0x10($sp)
.Lmenu_800ED4F0:
/* 10B5E0 800ED4F0 54400002 */  bnel       $v0, $zero, .Lmenu_800ED4FC
/* 10B5E4 800ED4F4 A3A30010 */   sb        $v1, 0x10($sp)
/* 10B5E8 800ED4F8 A3BE0010 */  sb         $fp, 0x10($sp)
.Lmenu_800ED4FC:
/* 10B5EC 800ED4FC 0094102A */  slt        $v0, $a0, $s4
/* 10B5F0 800ED500 10400003 */  beqz       $v0, .Lmenu_800ED510
/* 10B5F4 800ED504 28820100 */   slti      $v0, $a0, 0x100
/* 10B5F8 800ED508 0803B547 */  j          .Lmenu_800ED51C
/* 10B5FC 800ED50C A3B40011 */   sb        $s4, 0x11($sp)
.Lmenu_800ED510:
/* 10B600 800ED510 54400002 */  bnel       $v0, $zero, .Lmenu_800ED51C
/* 10B604 800ED514 A3A40011 */   sb        $a0, 0x11($sp)
/* 10B608 800ED518 A3BE0011 */  sb         $fp, 0x11($sp)
.Lmenu_800ED51C:
/* 10B60C 800ED51C 00B3102A */  slt        $v0, $a1, $s3
/* 10B610 800ED520 10400003 */  beqz       $v0, .Lmenu_800ED530
/* 10B614 800ED524 28A20100 */   slti      $v0, $a1, 0x100
/* 10B618 800ED528 0803B54F */  j          .Lmenu_800ED53C
/* 10B61C 800ED52C A3B30012 */   sb        $s3, 0x12($sp)
.Lmenu_800ED530:
/* 10B620 800ED530 54400002 */  bnel       $v0, $zero, .Lmenu_800ED53C
/* 10B624 800ED534 A3A50012 */   sb        $a1, 0x12($sp)
/* 10B628 800ED538 A3BE0012 */  sb         $fp, 0x12($sp)
.Lmenu_800ED53C:
/* 10B62C 800ED53C 02C02821 */  addu       $a1, $s6, $zero
/* 10B630 800ED540 8E220020 */  lw         $v0, 0x20($s1)
/* 10B634 800ED544 26D60001 */  addiu      $s6, $s6, 0x1
/* 10B638 800ED548 8C430008 */  lw         $v1, 0x8($v0)
/* 10B63C 800ED54C 26100020 */  addiu      $s0, $s0, 0x20
/* 10B640 800ED550 84640068 */  lh         $a0, 0x68($v1)
/* 10B644 800ED554 26520020 */  addiu      $s2, $s2, 0x20
/* 10B648 800ED558 00442021 */  addu       $a0, $v0, $a0
/* 10B64C 800ED55C 8C62006C */  lw         $v0, 0x6C($v1)
/* 10B650 800ED560 0040F809 */  jalr       $v0
/* 10B654 800ED564 27A60010 */   addiu     $a2, $sp, 0x10
/* 10B658 800ED568 0257102B */  sltu       $v0, $s2, $s7
/* 10B65C 800ED56C 1440FFC1 */  bnez       $v0, .Lmenu_800ED474
/* 10B660 800ED570 00000000 */   nop
.Lmenu_800ED574:
/* 10B664 800ED574 8FBF003C */  lw         $ra, 0x3C($sp)
/* 10B668 800ED578 8FBE0038 */  lw         $fp, 0x38($sp)
/* 10B66C 800ED57C 8FB70034 */  lw         $s7, 0x34($sp)
/* 10B670 800ED580 8FB60030 */  lw         $s6, 0x30($sp)
/* 10B674 800ED584 8FB5002C */  lw         $s5, 0x2C($sp)
/* 10B678 800ED588 8FB40028 */  lw         $s4, 0x28($sp)
/* 10B67C 800ED58C 8FB30024 */  lw         $s3, 0x24($sp)
/* 10B680 800ED590 8FB20020 */  lw         $s2, 0x20($sp)
/* 10B684 800ED594 8FB1001C */  lw         $s1, 0x1C($sp)
/* 10B688 800ED598 8FB00018 */  lw         $s0, 0x18($sp)
/* 10B68C 800ED59C 03E00008 */  jr         $ra
/* 10B690 800ED5A0 27BD0040 */   addiu     $sp, $sp, 0x40
