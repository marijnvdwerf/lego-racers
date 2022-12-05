.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text, "ax"

glabel func_menu_800F9DC0
/* 117EB0 800F9DC0 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 117EB4 800F9DC4 AFB00010 */  sw         $s0, 0x10($sp)
/* 117EB8 800F9DC8 AFBF0014 */  sw         $ra, 0x14($sp)
/* 117EBC 800F9DCC 0C043530 */  jal        func_menu_8010D4C0
/* 117EC0 800F9DD0 00808021 */   addu      $s0, $a0, $zero
/* 117EC4 800F9DD4 3C02800D */  lui        $v0, %hi(D_menu_800CCA50)
/* 117EC8 800F9DD8 2442CA50 */  addiu      $v0, $v0, %lo(D_menu_800CCA50)
/* 117ECC 800F9DDC 26041908 */  addiu      $a0, $s0, 0x1908
/* 117ED0 800F9DE0 0C047BA4 */  jal        func_menu_8011EE90
/* 117ED4 800F9DE4 AE020000 */   sw        $v0, 0x0($s0)
/* 117ED8 800F9DE8 0C047CA8 */  jal        func_menu_8011F2A0
/* 117EDC 800F9DEC 26041964 */   addiu     $a0, $s0, 0x1964
/* 117EE0 800F9DF0 0C047CA8 */  jal        func_menu_8011F2A0
/* 117EE4 800F9DF4 260419DC */   addiu     $a0, $s0, 0x19DC
/* 117EE8 800F9DF8 0C047CA8 */  jal        func_menu_8011F2A0
/* 117EEC 800F9DFC 26041A54 */   addiu     $a0, $s0, 0x1A54
/* 117EF0 800F9E00 0C047CA8 */  jal        func_menu_8011F2A0
/* 117EF4 800F9E04 26041ACC */   addiu     $a0, $s0, 0x1ACC
/* 117EF8 800F9E08 0C047CA8 */  jal        func_menu_8011F2A0
/* 117EFC 800F9E0C 26041B44 */   addiu     $a0, $s0, 0x1B44
/* 117F00 800F9E10 0C047CA8 */  jal        func_menu_8011F2A0
/* 117F04 800F9E14 26041BBC */   addiu     $a0, $s0, 0x1BBC
/* 117F08 800F9E18 0C040F38 */  jal        func_menu_80103CE0
/* 117F0C 800F9E1C 26041C34 */   addiu     $a0, $s0, 0x1C34
/* 117F10 800F9E20 0C040F38 */  jal        func_menu_80103CE0
/* 117F14 800F9E24 26041F24 */   addiu     $a0, $s0, 0x1F24
/* 117F18 800F9E28 0C03E7BE */  jal        func_menu_800F9EF8
/* 117F1C 800F9E2C 02002021 */   addu      $a0, $s0, $zero
/* 117F20 800F9E30 02001021 */  addu       $v0, $s0, $zero
/* 117F24 800F9E34 8FBF0014 */  lw         $ra, 0x14($sp)
/* 117F28 800F9E38 8FB00010 */  lw         $s0, 0x10($sp)
/* 117F2C 800F9E3C 03E00008 */  jr         $ra
/* 117F30 800F9E40 27BD0018 */   addiu     $sp, $sp, 0x18

glabel func_menu_800F9E44
/* 117F34 800F9E44 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* 117F38 800F9E48 AFB00010 */  sw         $s0, 0x10($sp)
/* 117F3C 800F9E4C 00808021 */  addu       $s0, $a0, $zero
/* 117F40 800F9E50 AFB10014 */  sw         $s1, 0x14($sp)
/* 117F44 800F9E54 00A08821 */  addu       $s1, $a1, $zero
/* 117F48 800F9E58 3C02800D */  lui        $v0, %hi(D_menu_800CCA50)
/* 117F4C 800F9E5C 2442CA50 */  addiu      $v0, $v0, %lo(D_menu_800CCA50)
/* 117F50 800F9E60 AFBF0018 */  sw         $ra, 0x18($sp)
/* 117F54 800F9E64 0C04358F */  jal        func_menu_8010D63C
/* 117F58 800F9E68 AE020000 */   sw        $v0, 0x0($s0)
/* 117F5C 800F9E6C 26041F24 */  addiu      $a0, $s0, 0x1F24
/* 117F60 800F9E70 0C040F4B */  jal        func_menu_80103D2C
/* 117F64 800F9E74 24050002 */   addiu     $a1, $zero, 0x2
/* 117F68 800F9E78 26041C34 */  addiu      $a0, $s0, 0x1C34
/* 117F6C 800F9E7C 0C040F4B */  jal        func_menu_80103D2C
/* 117F70 800F9E80 24050002 */   addiu     $a1, $zero, 0x2
/* 117F74 800F9E84 26041BBC */  addiu      $a0, $s0, 0x1BBC
/* 117F78 800F9E88 0C047CB9 */  jal        func_menu_8011F2E4
/* 117F7C 800F9E8C 24050002 */   addiu     $a1, $zero, 0x2
/* 117F80 800F9E90 26041B44 */  addiu      $a0, $s0, 0x1B44
/* 117F84 800F9E94 0C047CB9 */  jal        func_menu_8011F2E4
/* 117F88 800F9E98 24050002 */   addiu     $a1, $zero, 0x2
/* 117F8C 800F9E9C 26041ACC */  addiu      $a0, $s0, 0x1ACC
/* 117F90 800F9EA0 0C047CB9 */  jal        func_menu_8011F2E4
/* 117F94 800F9EA4 24050002 */   addiu     $a1, $zero, 0x2
/* 117F98 800F9EA8 26041A54 */  addiu      $a0, $s0, 0x1A54
/* 117F9C 800F9EAC 0C047CB9 */  jal        func_menu_8011F2E4
/* 117FA0 800F9EB0 24050002 */   addiu     $a1, $zero, 0x2
/* 117FA4 800F9EB4 260419DC */  addiu      $a0, $s0, 0x19DC
/* 117FA8 800F9EB8 0C047CB9 */  jal        func_menu_8011F2E4
/* 117FAC 800F9EBC 24050002 */   addiu     $a1, $zero, 0x2
/* 117FB0 800F9EC0 26041964 */  addiu      $a0, $s0, 0x1964
/* 117FB4 800F9EC4 0C047CB9 */  jal        func_menu_8011F2E4
/* 117FB8 800F9EC8 24050002 */   addiu     $a1, $zero, 0x2
/* 117FBC 800F9ECC 26041908 */  addiu      $a0, $s0, 0x1908
/* 117FC0 800F9ED0 0C047BB3 */  jal        func_menu_8011EECC
/* 117FC4 800F9ED4 24050002 */   addiu     $a1, $zero, 0x2
/* 117FC8 800F9ED8 02002021 */  addu       $a0, $s0, $zero
/* 117FCC 800F9EDC 0C04355E */  jal        func_menu_8010D578
/* 117FD0 800F9EE0 02202821 */   addu      $a1, $s1, $zero
/* 117FD4 800F9EE4 8FBF0018 */  lw         $ra, 0x18($sp)
/* 117FD8 800F9EE8 8FB10014 */  lw         $s1, 0x14($sp)
/* 117FDC 800F9EEC 8FB00010 */  lw         $s0, 0x10($sp)
/* 117FE0 800F9EF0 03E00008 */  jr         $ra
/* 117FE4 800F9EF4 27BD0020 */   addiu     $sp, $sp, 0x20

glabel func_menu_800F9EF8
/* 117FE8 800F9EF8 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 117FEC 800F9EFC AFBF0010 */  sw         $ra, 0x10($sp)
/* 117FF0 800F9F00 AC802214 */  sw         $zero, 0x2214($a0)
/* 117FF4 800F9F04 AC802218 */  sw         $zero, 0x2218($a0)
/* 117FF8 800F9F08 AC802220 */  sw         $zero, 0x2220($a0)
/* 117FFC 800F9F0C 0C040207 */  jal        func_menu_8010081C
/* 118000 800F9F10 AC802224 */   sw        $zero, 0x2224($a0)
/* 118004 800F9F14 8FBF0010 */  lw         $ra, 0x10($sp)
/* 118008 800F9F18 03E00008 */  jr         $ra
/* 11800C 800F9F1C 27BD0018 */   addiu     $sp, $sp, 0x18

glabel func_menu_800F9F20
/* 118010 800F9F20 27BDFFD8 */  addiu      $sp, $sp, -0x28
/* 118014 800F9F24 AFB00018 */  sw         $s0, 0x18($sp)
/* 118018 800F9F28 00808021 */  addu       $s0, $a0, $zero
/* 11801C 800F9F2C 26051908 */  addiu      $a1, $s0, 0x1908
/* 118020 800F9F30 24060052 */  addiu      $a2, $zero, 0x52
/* 118024 800F9F34 00C03821 */  addu       $a3, $a2, $zero
/* 118028 800F9F38 AFBF0020 */  sw         $ra, 0x20($sp)
/* 11802C 800F9F3C 0C04675B */  jal        func_menu_80119D6C
/* 118030 800F9F40 AFB1001C */   sw        $s1, 0x1C($sp)
/* 118034 800F9F44 0C0435B4 */  jal        func_menu_8010D6D0
/* 118038 800F9F48 02002021 */   addu      $a0, $s0, $zero
/* 11803C 800F9F4C 02002021 */  addu       $a0, $s0, $zero
/* 118040 800F9F50 26111964 */  addiu      $s1, $s0, 0x1964
/* 118044 800F9F54 02202821 */  addu       $a1, $s1, $zero
/* 118048 800F9F58 24060043 */  addiu      $a2, $zero, 0x43
/* 11804C 800F9F5C 00C03821 */  addu       $a3, $a2, $zero
/* 118050 800F9F60 2402000D */  addiu      $v0, $zero, 0xD
/* 118054 800F9F64 0C04679E */  jal        func_menu_80119E78
/* 118058 800F9F68 AFA20010 */   sw        $v0, 0x10($sp)
/* 11805C 800F9F6C 02202021 */  addu       $a0, $s1, $zero
/* 118060 800F9F70 0C047D63 */  jal        func_menu_8011F58C
/* 118064 800F9F74 2405001E */   addiu     $a1, $zero, 0x1E
/* 118068 800F9F78 02002021 */  addu       $a0, $s0, $zero
/* 11806C 800F9F7C 260519DC */  addiu      $a1, $s0, 0x19DC
/* 118070 800F9F80 24060063 */  addiu      $a2, $zero, 0x63
/* 118074 800F9F84 24070040 */  addiu      $a3, $zero, 0x40
/* 118078 800F9F88 2411004A */  addiu      $s1, $zero, 0x4A
/* 11807C 800F9F8C 0C04679E */  jal        func_menu_80119E78
/* 118080 800F9F90 AFB10010 */   sw        $s1, 0x10($sp)
/* 118084 800F9F94 02002021 */  addu       $a0, $s0, $zero
/* 118088 800F9F98 26051A54 */  addiu      $a1, $s0, 0x1A54
/* 11808C 800F9F9C 24060064 */  addiu      $a2, $zero, 0x64
/* 118090 800F9FA0 24070040 */  addiu      $a3, $zero, 0x40
/* 118094 800F9FA4 2402004C */  addiu      $v0, $zero, 0x4C
/* 118098 800F9FA8 0C04679E */  jal        func_menu_80119E78
/* 11809C 800F9FAC AFA20010 */   sw        $v0, 0x10($sp)
/* 1180A0 800F9FB0 02002021 */  addu       $a0, $s0, $zero
/* 1180A4 800F9FB4 26051ACC */  addiu      $a1, $s0, 0x1ACC
/* 1180A8 800F9FB8 24060065 */  addiu      $a2, $zero, 0x65
/* 1180AC 800F9FBC 24070040 */  addiu      $a3, $zero, 0x40
/* 1180B0 800F9FC0 0C04679E */  jal        func_menu_80119E78
/* 1180B4 800F9FC4 AFB10010 */   sw        $s1, 0x10($sp)
/* 1180B8 800F9FC8 02002021 */  addu       $a0, $s0, $zero
/* 1180BC 800F9FCC 26051B44 */  addiu      $a1, $s0, 0x1B44
/* 1180C0 800F9FD0 24060067 */  addiu      $a2, $zero, 0x67
/* 1180C4 800F9FD4 24070040 */  addiu      $a3, $zero, 0x40
/* 1180C8 800F9FD8 2402004B */  addiu      $v0, $zero, 0x4B
/* 1180CC 800F9FDC 0C04679E */  jal        func_menu_80119E78
/* 1180D0 800F9FE0 AFA20010 */   sw        $v0, 0x10($sp)
/* 1180D4 800F9FE4 02002021 */  addu       $a0, $s0, $zero
/* 1180D8 800F9FE8 26051BBC */  addiu      $a1, $s0, 0x1BBC
/* 1180DC 800F9FEC 24060068 */  addiu      $a2, $zero, 0x68
/* 1180E0 800F9FF0 24070040 */  addiu      $a3, $zero, 0x40
/* 1180E4 800F9FF4 24020060 */  addiu      $v0, $zero, 0x60
/* 1180E8 800F9FF8 0C04679E */  jal        func_menu_80119E78
/* 1180EC 800F9FFC AFA20010 */   sw        $v0, 0x10($sp)
/* 1180F0 800FA000 02002021 */  addu       $a0, $s0, $zero
/* 1180F4 800FA004 26051F24 */  addiu      $a1, $s0, 0x1F24
/* 1180F8 800FA008 24060049 */  addiu      $a2, $zero, 0x49
/* 1180FC 800FA00C 2407004F */  addiu      $a3, $zero, 0x4F
/* 118100 800FA010 24020072 */  addiu      $v0, $zero, 0x72
/* 118104 800FA014 0C040297 */  jal        func_menu_80100A5C
/* 118108 800FA018 AFA20010 */   sw        $v0, 0x10($sp)
/* 11810C 800FA01C 02002021 */  addu       $a0, $s0, $zero
/* 118110 800FA020 24851C34 */  addiu      $a1, $a0, 0x1C34
/* 118114 800FA024 24060048 */  addiu      $a2, $zero, 0x48
/* 118118 800FA028 2407004C */  addiu      $a3, $zero, 0x4C
/* 11811C 800FA02C 24020002 */  addiu      $v0, $zero, 0x2
/* 118120 800FA030 0C040297 */  jal        func_menu_80100A5C
/* 118124 800FA034 AFA20010 */   sw        $v0, 0x10($sp)
/* 118128 800FA038 8FBF0020 */  lw         $ra, 0x20($sp)
/* 11812C 800FA03C 8FB1001C */  lw         $s1, 0x1C($sp)
/* 118130 800FA040 8FB00018 */  lw         $s0, 0x18($sp)
/* 118134 800FA044 03E00008 */  jr         $ra
/* 118138 800FA048 27BD0028 */   addiu     $sp, $sp, 0x28

glabel func_menu_800FA04C
/* 11813C 800FA04C 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 118140 800FA050 AFB00010 */  sw         $s0, 0x10($sp)
/* 118144 800FA054 AFBF0014 */  sw         $ra, 0x14($sp)
/* 118148 800FA058 0C04362A */  jal        func_menu_8010D8A8
/* 11814C 800FA05C 00808021 */   addu      $s0, $a0, $zero
/* 118150 800FA060 1040000B */  beqz       $v0, .Lmenu_800FA090
/* 118154 800FA064 26050BE8 */   addiu     $a1, $s0, 0xBE8
/* 118158 800FA068 8E020000 */  lw         $v0, 0x0($s0)
/* 11815C 800FA06C 84440090 */  lh         $a0, 0x90($v0)
/* 118160 800FA070 8C420094 */  lw         $v0, 0x94($v0)
/* 118164 800FA074 0040F809 */  jalr       $v0
/* 118168 800FA078 02042021 */   addu      $a0, $s0, $a0
/* 11816C 800FA07C 26041F24 */  addiu      $a0, $s0, 0x1F24
/* 118170 800FA080 0C048D3F */  jal        func_menu_801234FC
/* 118174 800FA084 00002821 */   addu      $a1, $zero, $zero
/* 118178 800FA088 0803E825 */  j          .Lmenu_800FA094
/* 11817C 800FA08C 24020001 */   addiu     $v0, $zero, 0x1
.Lmenu_800FA090:
/* 118180 800FA090 00001021 */  addu       $v0, $zero, $zero
.Lmenu_800FA094:
/* 118184 800FA094 8FBF0014 */  lw         $ra, 0x14($sp)
/* 118188 800FA098 8FB00010 */  lw         $s0, 0x10($sp)
/* 11818C 800FA09C 03E00008 */  jr         $ra
/* 118190 800FA0A0 27BD0018 */   addiu     $sp, $sp, 0x18

glabel func_menu_800FA0A4
/* 118194 800FA0A4 24821F24 */  addiu      $v0, $a0, 0x1F24
/* 118198 800FA0A8 14A20003 */  bne        $a1, $v0, .Lmenu_800FA0B8
/* 11819C 800FA0AC 24821C34 */   addiu     $v0, $a0, 0x1C34
/* 1181A0 800FA0B0 0803E830 */  j          .Lmenu_800FA0C0
/* 1181A4 800FA0B4 2402001E */   addiu     $v0, $zero, 0x1E
.Lmenu_800FA0B8:
/* 1181A8 800FA0B8 14A20002 */  bne        $a1, $v0, .Lmenu_800FA0C4
/* 1181AC 800FA0BC 24020002 */   addiu     $v0, $zero, 0x2
.Lmenu_800FA0C0:
/* 1181B0 800FA0C0 A4820360 */  sh         $v0, 0x360($a0)
.Lmenu_800FA0C4:
/* 1181B4 800FA0C4 94830360 */  lhu        $v1, 0x360($a0)
/* 1181B8 800FA0C8 3402FFFF */  ori        $v0, $zero, 0xFFFF
/* 1181BC 800FA0CC 10620002 */  beq        $v1, $v0, .Lmenu_800FA0D8
/* 1181C0 800FA0D0 24020001 */   addiu     $v0, $zero, 0x1
/* 1181C4 800FA0D4 AC820364 */  sw         $v0, 0x364($a0)
.Lmenu_800FA0D8:
/* 1181C8 800FA0D8 03E00008 */  jr         $ra
/* 1181CC 800FA0DC AC85035C */   sw        $a1, 0x35C($a0)

glabel func_menu_800FA0E0
/* 1181D0 800FA0E0 27BDFFD8 */  addiu      $sp, $sp, -0x28
/* 1181D4 800FA0E4 AFB00010 */  sw         $s0, 0x10($sp)
/* 1181D8 800FA0E8 00808021 */  addu       $s0, $a0, $zero
/* 1181DC 800FA0EC AFBF0020 */  sw         $ra, 0x20($sp)
/* 1181E0 800FA0F0 AFB3001C */  sw         $s3, 0x1C($sp)
/* 1181E4 800FA0F4 AFB20018 */  sw         $s2, 0x18($sp)
/* 1181E8 800FA0F8 AFB10014 */  sw         $s1, 0x14($sp)
/* 1181EC 800FA0FC 8E020354 */  lw         $v0, 0x354($s0)
/* 1181F0 800FA100 8C420000 */  lw         $v0, 0x0($v0)
/* 1181F4 800FA104 AC400028 */  sw         $zero, 0x28($v0)
/* 1181F8 800FA108 8E020BC0 */  lw         $v0, 0xBC0($s0)
/* 1181FC 800FA10C 26041A54 */  addiu      $a0, $s0, 0x1A54
/* 118200 800FA110 AE02221C */  sw         $v0, 0x221C($s0)
/* 118204 800FA114 9605221E */  lhu        $a1, 0x221E($s0)
/* 118208 800FA118 00003021 */  addu       $a2, $zero, $zero
/* 11820C 800FA11C 24A5004C */  addiu      $a1, $a1, 0x4C
/* 118210 800FA120 0C047D09 */  jal        func_menu_8011F424
/* 118214 800FA124 30A5FFFF */   andi      $a1, $a1, 0xFFFF
/* 118218 800FA128 26041BBC */  addiu      $a0, $s0, 0x1BBC
/* 11821C 800FA12C 9605221E */  lhu        $a1, 0x221E($s0)
/* 118220 800FA130 00003021 */  addu       $a2, $zero, $zero
/* 118224 800FA134 24A50061 */  addiu      $a1, $a1, 0x61
/* 118228 800FA138 0C047D09 */  jal        func_menu_8011F424
/* 11822C 800FA13C 30A5FFFF */   andi      $a1, $a1, 0xFFFF
/* 118230 800FA140 8E020354 */  lw         $v0, 0x354($s0)
/* 118234 800FA144 8E03221C */  lw         $v1, 0x221C($s0)
/* 118238 800FA148 24443DAC */  addiu      $a0, $v0, 0x3DAC
/* 11823C 800FA14C 8C820010 */  lw         $v0, 0x10($a0)
/* 118240 800FA150 0062102B */  sltu       $v0, $v1, $v0
/* 118244 800FA154 10400062 */  beqz       $v0, .Lmenu_800FA2E0
/* 118248 800FA158 00009821 */   addu      $s3, $zero, $zero
/* 11824C 800FA15C 00031040 */  sll        $v0, $v1, 1
/* 118250 800FA160 00431021 */  addu       $v0, $v0, $v1
/* 118254 800FA164 000210C0 */  sll        $v0, $v0, 3
/* 118258 800FA168 00431021 */  addu       $v0, $v0, $v1
/* 11825C 800FA16C 00021080 */  sll        $v0, $v0, 2
/* 118260 800FA170 8C83000C */  lw         $v1, 0xC($a0)
/* 118264 800FA174 8E040354 */  lw         $a0, 0x354($s0)
/* 118268 800FA178 00621821 */  addu       $v1, $v1, $v0
/* 11826C 800FA17C AE031904 */  sw         $v1, 0x1904($s0)
/* 118270 800FA180 8C910000 */  lw         $s1, 0x0($a0)
/* 118274 800FA184 88690004 */  lwl        $t1, 0x4($v1)
/* 118278 800FA188 98690007 */  lwr        $t1, 0x7($v1)
/* 11827C 800FA18C 886A0008 */  lwl        $t2, 0x8($v1)
/* 118280 800FA190 986A000B */  lwr        $t2, 0xB($v1)
/* 118284 800FA194 AA290031 */  swl        $t1, 0x31($s1)
/* 118288 800FA198 BA290034 */  swr        $t1, 0x34($s1)
/* 11828C 800FA19C AA2A0035 */  swl        $t2, 0x35($s1)
/* 118290 800FA1A0 BA2A0038 */  swr        $t2, 0x38($s1)
/* 118294 800FA1A4 8E040354 */  lw         $a0, 0x354($s0)
/* 118298 800FA1A8 8E051904 */  lw         $a1, 0x1904($s0)
/* 11829C 800FA1AC 0C03B7CA */  jal        func_menu_800EDF28
/* 1182A0 800FA1B0 24843DAC */   addiu     $a0, $a0, 0x3DAC
/* 1182A4 800FA1B4 24030001 */  addiu      $v1, $zero, 0x1
/* 1182A8 800FA1B8 00439004 */  sllv       $s2, $v1, $v0
/* 1182AC 800FA1BC 02603821 */  addu       $a3, $s3, $zero
/* 1182B0 800FA1C0 00604021 */  addu       $t0, $v1, $zero
/* 1182B4 800FA1C4 02202821 */  addu       $a1, $s1, $zero
/* 1182B8 800FA1C8 02603021 */  addu       $a2, $s3, $zero
.Lmenu_800FA1CC:
/* 1182BC 800FA1CC 2CE20004 */  sltiu      $v0, $a3, 0x4
/* 1182C0 800FA1D0 10400023 */  beqz       $v0, .Lmenu_800FA260
/* 1182C4 800FA1D4 00071880 */   sll       $v1, $a3, 2
/* 1182C8 800FA1D8 8E021904 */  lw         $v0, 0x1904($s0)
/* 1182CC 800FA1DC 00431021 */  addu       $v0, $v0, $v1
/* 1182D0 800FA1E0 8C440048 */  lw         $a0, 0x48($v0)
/* 1182D4 800FA1E4 10800016 */  beqz       $a0, .Lmenu_800FA240
/* 1182D8 800FA1E8 00D11021 */   addu      $v0, $a2, $s1
/* 1182DC 800FA1EC 00401821 */  addu       $v1, $v0, $zero
/* 1182E0 800FA1F0 88890004 */  lwl        $t1, 0x4($a0)
/* 1182E4 800FA1F4 98890007 */  lwr        $t1, 0x7($a0)
/* 1182E8 800FA1F8 888A0008 */  lwl        $t2, 0x8($a0)
/* 1182EC 800FA1FC 988A000B */  lwr        $t2, 0xB($a0)
/* 1182F0 800FA200 A8490044 */  swl        $t1, 0x44($v0)
/* 1182F4 800FA204 B8490047 */  swr        $t1, 0x47($v0)
/* 1182F8 800FA208 A84A0048 */  swl        $t2, 0x48($v0)
/* 1182FC 800FA20C B84A004B */  swr        $t2, 0x4B($v0)
/* 118300 800FA210 8889000C */  lwl        $t1, 0xC($a0)
/* 118304 800FA214 9889000F */  lwr        $t1, 0xF($a0)
/* 118308 800FA218 888A0010 */  lwl        $t2, 0x10($a0)
/* 11830C 800FA21C 988A0013 */  lwr        $t2, 0x13($a0)
/* 118310 800FA220 A869004C */  swl        $t1, 0x4C($v1)
/* 118314 800FA224 B869004F */  swr        $t1, 0x4F($v1)
/* 118318 800FA228 A86A0050 */  swl        $t2, 0x50($v1)
/* 11831C 800FA22C B86A0053 */  swr        $t2, 0x53($v1)
/* 118320 800FA230 ACA8003C */  sw         $t0, 0x3C($a1)
/* 118324 800FA234 8C82002C */  lw         $v0, 0x2C($a0)
/* 118328 800FA238 0803E894 */  j          .Lmenu_800FA250
/* 11832C 800FA23C ACA20040 */   sw        $v0, 0x40($a1)
.Lmenu_800FA240:
/* 118330 800FA240 A0A00044 */  sb         $zero, 0x44($a1)
/* 118334 800FA244 A0A0004C */  sb         $zero, 0x4C($a1)
/* 118338 800FA248 ACA0003C */  sw         $zero, 0x3C($a1)
/* 11833C 800FA24C ACA00040 */  sw         $zero, 0x40($a1)
.Lmenu_800FA250:
/* 118340 800FA250 24A50018 */  addiu      $a1, $a1, 0x18
/* 118344 800FA254 24C60018 */  addiu      $a2, $a2, 0x18
/* 118348 800FA258 0803E873 */  j          .Lmenu_800FA1CC
/* 11834C 800FA25C 24E70001 */   addiu     $a3, $a3, 0x1
.Lmenu_800FA260:
/* 118350 800FA260 8E040354 */  lw         $a0, 0x354($s0)
/* 118354 800FA264 0C03CA1E */  jal        func_menu_800F2878
/* 118358 800FA268 24842624 */   addiu     $a0, $a0, 0x2624
/* 11835C 800FA26C 02421024 */  and        $v0, $s2, $v0
/* 118360 800FA270 304200FF */  andi       $v0, $v0, 0xFF
/* 118364 800FA274 54400001 */  bnel       $v0, $zero, .Lmenu_800FA27C
/* 118368 800FA278 24130001 */   addiu     $s3, $zero, 0x1
.Lmenu_800FA27C:
/* 11836C 800FA27C 1260000A */  beqz       $s3, .Lmenu_800FA2A8
/* 118370 800FA280 26041F24 */   addiu     $a0, $s0, 0x1F24
/* 118374 800FA284 0C048CEC */  jal        func_menu_801233B0
/* 118378 800FA288 24050005 */   addiu     $a1, $zero, 0x5
/* 11837C 800FA28C 3C04BFFF */  lui        $a0, (0xBFFFFFFF >> 16)
/* 118380 800FA290 26031860 */  addiu      $v1, $s0, 0x1860
/* 118384 800FA294 8C620018 */  lw         $v0, 0x18($v1)
/* 118388 800FA298 3484FFFF */  ori        $a0, $a0, (0xBFFFFFFF & 0xFFFF)
/* 11838C 800FA29C 00441024 */  and        $v0, $v0, $a0
/* 118390 800FA2A0 0803E8B4 */  j          .Lmenu_800FA2D0
/* 118394 800FA2A4 AC620018 */   sw        $v0, 0x18($v1)
.Lmenu_800FA2A8:
/* 118398 800FA2A8 0C048D07 */  jal        func_menu_8012341C
/* 11839C 800FA2AC 24050005 */   addiu     $a1, $zero, 0x5
/* 1183A0 800FA2B0 26041C34 */  addiu      $a0, $s0, 0x1C34
/* 1183A4 800FA2B4 0C048D3F */  jal        func_menu_801234FC
/* 1183A8 800FA2B8 00002821 */   addu      $a1, $zero, $zero
/* 1183AC 800FA2BC 26021860 */  addiu      $v0, $s0, 0x1860
/* 1183B0 800FA2C0 8C430018 */  lw         $v1, 0x18($v0)
/* 1183B4 800FA2C4 3C044000 */  lui        $a0, (0x40000000 >> 16)
/* 1183B8 800FA2C8 00641825 */  or         $v1, $v1, $a0
/* 1183BC 800FA2CC AC430018 */  sw         $v1, 0x18($v0)
.Lmenu_800FA2D0:
/* 1183C0 800FA2D0 02002021 */  addu       $a0, $s0, $zero
/* 1183C4 800FA2D4 AC802218 */  sw         $zero, 0x2218($a0)
/* 1183C8 800FA2D8 0C03E8DE */  jal        func_menu_800FA378
/* 1183CC 800FA2DC AC802220 */   sw        $zero, 0x2220($a0)
.Lmenu_800FA2E0:
/* 1183D0 800FA2E0 8FBF0020 */  lw         $ra, 0x20($sp)
/* 1183D4 800FA2E4 8FB3001C */  lw         $s3, 0x1C($sp)
/* 1183D8 800FA2E8 8FB20018 */  lw         $s2, 0x18($sp)
/* 1183DC 800FA2EC 8FB10014 */  lw         $s1, 0x14($sp)
/* 1183E0 800FA2F0 8FB00010 */  lw         $s0, 0x10($sp)
/* 1183E4 800FA2F4 03E00008 */  jr         $ra
/* 1183E8 800FA2F8 27BD0028 */   addiu     $sp, $sp, 0x28

glabel func_menu_800FA2FC
/* 1183EC 800FA2FC 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 1183F0 800FA300 AFB00010 */  sw         $s0, 0x10($sp)
/* 1183F4 800FA304 00808021 */  addu       $s0, $a0, $zero
/* 1183F8 800FA308 AFBF0014 */  sw         $ra, 0x14($sp)
/* 1183FC 800FA30C 8E052214 */  lw         $a1, 0x2214($s0)
/* 118400 800FA310 10A00009 */  beqz       $a1, .Lmenu_800FA338
/* 118404 800FA314 00000000 */   nop
/* 118408 800FA318 90A20014 */  lbu        $v0, 0x14($a1)
/* 11840C 800FA31C 30420001 */  andi       $v0, $v0, 0x1
/* 118410 800FA320 10400005 */  beqz       $v0, .Lmenu_800FA338
/* 118414 800FA324 00000000 */   nop
/* 118418 800FA328 8E040354 */  lw         $a0, 0x354($s0)
/* 11841C 800FA32C 0C01045B */  jal        func_8004116C
/* 118420 800FA330 24843DD4 */   addiu     $a0, $a0, 0x3DD4
/* 118424 800FA334 AE002214 */  sw         $zero, 0x2214($s0)
.Lmenu_800FA338:
/* 118428 800FA338 96030360 */  lhu        $v1, 0x360($s0)
/* 11842C 800FA33C 24020002 */  addiu      $v0, $zero, 0x2
/* 118430 800FA340 14620006 */  bne        $v1, $v0, .Lmenu_800FA35C
/* 118434 800FA344 24050013 */   addiu     $a1, $zero, 0x13
/* 118438 800FA348 8E040354 */  lw         $a0, 0x354($s0)
/* 11843C 800FA34C 0C0401B4 */  jal        func_menu_801006D0
/* 118440 800FA350 24840004 */   addiu     $a0, $a0, 0x4
/* 118444 800FA354 0803E8DA */  j          .Lmenu_800FA368
/* 118448 800FA358 00000000 */   nop
.Lmenu_800FA35C:
/* 11844C 800FA35C 8E040354 */  lw         $a0, 0x354($s0)
/* 118450 800FA360 0C0401A6 */  jal        func_menu_80100698
/* 118454 800FA364 24840004 */   addiu     $a0, $a0, 0x4
.Lmenu_800FA368:
/* 118458 800FA368 8FBF0014 */  lw         $ra, 0x14($sp)
/* 11845C 800FA36C 8FB00010 */  lw         $s0, 0x10($sp)
/* 118460 800FA370 03E00008 */  jr         $ra
/* 118464 800FA374 27BD0018 */   addiu     $sp, $sp, 0x18

glabel func_menu_800FA378
/* 118468 800FA378 27BDFFC0 */  addiu      $sp, $sp, -0x40
/* 11846C 800FA37C AFB10034 */  sw         $s1, 0x34($sp)
/* 118470 800FA380 00808821 */  addu       $s1, $a0, $zero
/* 118474 800FA384 27A40020 */  addiu      $a0, $sp, 0x20
/* 118478 800FA388 AFBF003C */  sw         $ra, 0x3C($sp)
/* 11847C 800FA38C AFB20038 */  sw         $s2, 0x38($sp)
/* 118480 800FA390 0C0016DC */  jal        func_80005B70
/* 118484 800FA394 AFB00030 */   sw        $s0, 0x30($sp)
/* 118488 800FA398 A3A00018 */  sb         $zero, 0x18($sp)
/* 11848C 800FA39C 8E22064C */  lw         $v0, 0x64C($s1)
/* 118490 800FA3A0 8C45012C */  lw         $a1, 0x12C($v0)
/* 118494 800FA3A4 84A401E8 */  lh         $a0, 0x1E8($a1)
/* 118498 800FA3A8 00442021 */  addu       $a0, $v0, $a0
/* 11849C 800FA3AC 8E222220 */  lw         $v0, 0x2220($s1)
/* 1184A0 800FA3B0 8E231904 */  lw         $v1, 0x1904($s1)
/* 1184A4 800FA3B4 00021080 */  sll        $v0, $v0, 2
/* 1184A8 800FA3B8 00621821 */  addu       $v1, $v1, $v0
/* 1184AC 800FA3BC 8CA201EC */  lw         $v0, 0x1EC($a1)
/* 1184B0 800FA3C0 8C720048 */  lw         $s2, 0x48($v1)
/* 1184B4 800FA3C4 0040F809 */  jalr       $v0
/* 1184B8 800FA3C8 00000000 */   nop
/* 1184BC 800FA3CC 12400036 */  beqz       $s2, .Lmenu_800FA4A8
/* 1184C0 800FA3D0 27A50010 */   addiu     $a1, $sp, 0x10
/* 1184C4 800FA3D4 8A470014 */  lwl        $a3, 0x14($s2)
/* 1184C8 800FA3D8 9A470017 */  lwr        $a3, 0x17($s2)
/* 1184CC 800FA3DC 8A480018 */  lwl        $t0, 0x18($s2)
/* 1184D0 800FA3E0 9A48001B */  lwr        $t0, 0x1B($s2)
/* 1184D4 800FA3E4 ABA70010 */  swl        $a3, 0x10($sp)
/* 1184D8 800FA3E8 BBA70013 */  swr        $a3, 0x13($sp)
/* 1184DC 800FA3EC ABA80014 */  swl        $t0, 0x14($sp)
/* 1184E0 800FA3F0 BBA80017 */  swr        $t0, 0x17($sp)
/* 1184E4 800FA3F4 8A47001C */  lwl        $a3, 0x1C($s2)
/* 1184E8 800FA3F8 9A47001F */  lwr        $a3, 0x1F($s2)
/* 1184EC 800FA3FC 8A480020 */  lwl        $t0, 0x20($s2)
/* 1184F0 800FA400 9A480023 */  lwr        $t0, 0x23($s2)
/* 1184F4 800FA404 ABA70018 */  swl        $a3, 0x18($sp)
/* 1184F8 800FA408 BBA7001B */  swr        $a3, 0x1B($sp)
/* 1184FC 800FA40C ABA8001C */  swl        $t0, 0x1C($sp)
/* 118500 800FA410 BBA8001F */  swr        $t0, 0x1F($sp)
/* 118504 800FA414 8E2203C0 */  lw         $v0, 0x3C0($s1)
/* 118508 800FA418 14400003 */  bnez       $v0, .Lmenu_800FA428
/* 11850C 800FA41C 262403C0 */   addiu     $a0, $s1, 0x3C0
/* 118510 800FA420 0803E90D */  j          .Lmenu_800FA434
/* 118514 800FA424 00002821 */   addu      $a1, $zero, $zero
.Lmenu_800FA428:
/* 118518 800FA428 0C016427 */  jal        func_8005909C
/* 11851C 800FA42C 00000000 */   nop
/* 118520 800FA430 00402821 */  addu       $a1, $v0, $zero
.Lmenu_800FA434:
/* 118524 800FA434 10A0001E */  beqz       $a1, .Lmenu_800FA4B0
/* 118528 800FA438 26300368 */   addiu     $s0, $s1, 0x368
/* 11852C 800FA43C 8E0202B0 */  lw         $v0, 0x2B0($s0)
/* 118530 800FA440 10A2001B */  beq        $a1, $v0, .Lmenu_800FA4B0
/* 118534 800FA444 00000000 */   nop
/* 118538 800FA448 0C044A02 */  jal        func_menu_80112808
/* 11853C 800FA44C 02002021 */   addu      $a0, $s0, $zero
/* 118540 800FA450 8E0302B0 */  lw         $v1, 0x2B0($s0)
/* 118544 800FA454 8C620044 */  lw         $v0, 0x44($v1)
/* 118548 800FA458 02202021 */  addu       $a0, $s1, $zero
/* 11854C 800FA45C 34420002 */  ori        $v0, $v0, 0x2
/* 118550 800FA460 AC620044 */  sw         $v0, 0x44($v1)
/* 118554 800FA464 8E25221C */  lw         $a1, 0x221C($s1)
/* 118558 800FA468 240207D0 */  addiu      $v0, $zero, 0x7D0
/* 11855C 800FA46C AE222218 */  sw         $v0, 0x2218($s1)
/* 118560 800FA470 8E222220 */  lw         $v0, 0x2220($s1)
/* 118564 800FA474 00052880 */  sll        $a1, $a1, 2
/* 118568 800FA478 0C0436C4 */  jal        func_menu_8010DB10
/* 11856C 800FA47C 00A22821 */   addu      $a1, $a1, $v0
/* 118570 800FA480 8E440030 */  lw         $a0, 0x30($s2)
/* 118574 800FA484 96460034 */  lhu        $a2, 0x34($s2)
/* 118578 800FA488 0C003053 */  jal        func_8000C14C
/* 11857C 800FA48C 27A50020 */   addiu     $a1, $sp, 0x20
/* 118580 800FA490 26241ACC */  addiu      $a0, $s1, 0x1ACC
/* 118584 800FA494 27A50020 */  addiu      $a1, $sp, 0x20
/* 118588 800FA498 0C047D27 */  jal        func_menu_8011F49C
/* 11858C 800FA49C 00003021 */   addu      $a2, $zero, $zero
/* 118590 800FA4A0 0803E92C */  j          .Lmenu_800FA4B0
/* 118594 800FA4A4 00000000 */   nop
.Lmenu_800FA4A8:
/* 118598 800FA4A8 240207D0 */  addiu      $v0, $zero, 0x7D0
/* 11859C 800FA4AC AE222218 */  sw         $v0, 0x2218($s1)
.Lmenu_800FA4B0:
/* 1185A0 800FA4B0 93A20018 */  lbu        $v0, 0x18($sp)
/* 1185A4 800FA4B4 10400003 */  beqz       $v0, .Lmenu_800FA4C4
/* 1185A8 800FA4B8 02202021 */   addu      $a0, $s1, $zero
/* 1185AC 800FA4BC 0C04364F */  jal        func_menu_8010D93C
/* 1185B0 800FA4C0 27A50018 */   addiu     $a1, $sp, 0x18
.Lmenu_800FA4C4:
/* 1185B4 800FA4C4 24020001 */  addiu      $v0, $zero, 0x1
/* 1185B8 800FA4C8 27A40020 */  addiu      $a0, $sp, 0x20
/* 1185BC 800FA4CC 24050002 */  addiu      $a1, $zero, 0x2
/* 1185C0 800FA4D0 0C0016E2 */  jal        func_80005B88
/* 1185C4 800FA4D4 AE222224 */   sw        $v0, 0x2224($s1)
/* 1185C8 800FA4D8 8FBF003C */  lw         $ra, 0x3C($sp)
/* 1185CC 800FA4DC 8FB20038 */  lw         $s2, 0x38($sp)
/* 1185D0 800FA4E0 8FB10034 */  lw         $s1, 0x34($sp)
/* 1185D4 800FA4E4 8FB00030 */  lw         $s0, 0x30($sp)
/* 1185D8 800FA4E8 03E00008 */  jr         $ra
/* 1185DC 800FA4EC 27BD0040 */   addiu     $sp, $sp, 0x40

glabel func_menu_800FA4F0
/* 1185E0 800FA4F0 27BDFFD8 */  addiu      $sp, $sp, -0x28
/* 1185E4 800FA4F4 AFB1001C */  sw         $s1, 0x1C($sp)
/* 1185E8 800FA4F8 00808821 */  addu       $s1, $a0, $zero
/* 1185EC 800FA4FC AFBF0024 */  sw         $ra, 0x24($sp)
/* 1185F0 800FA500 AFB20020 */  sw         $s2, 0x20($sp)
/* 1185F4 800FA504 AFB00018 */  sw         $s0, 0x18($sp)
/* 1185F8 800FA508 8E222214 */  lw         $v0, 0x2214($s1)
/* 1185FC 800FA50C 10400005 */  beqz       $v0, .Lmenu_800FA524
/* 118600 800FA510 00A08021 */   addu      $s0, $a1, $zero
/* 118604 800FA514 90420014 */  lbu        $v0, 0x14($v0)
/* 118608 800FA518 30420001 */  andi       $v0, $v0, 0x1
/* 11860C 800FA51C 50400001 */  beql       $v0, $zero, .Lmenu_800FA524
/* 118610 800FA520 AE202214 */   sw        $zero, 0x2214($s1)
.Lmenu_800FA524:
/* 118614 800FA524 8E222218 */  lw         $v0, 0x2218($s1)
/* 118618 800FA528 0050102B */  sltu       $v0, $v0, $s0
/* 11861C 800FA52C 1040000B */  beqz       $v0, .Lmenu_800FA55C
/* 118620 800FA530 24020006 */   addiu     $v0, $zero, 0x6
/* 118624 800FA534 8E23221C */  lw         $v1, 0x221C($s1)
/* 118628 800FA538 10620008 */  beq        $v1, $v0, .Lmenu_800FA55C
/* 11862C 800FA53C 02202021 */   addu      $a0, $s1, $zero
/* 118630 800FA540 8E222220 */  lw         $v0, 0x2220($s1)
/* 118634 800FA544 24420001 */  addiu      $v0, $v0, 0x1
/* 118638 800FA548 30420003 */  andi       $v0, $v0, 0x3
/* 11863C 800FA54C 0C03E8DE */  jal        func_menu_800FA378
/* 118640 800FA550 AE222220 */   sw        $v0, 0x2220($s1)
/* 118644 800FA554 0803E95A */  j          .Lmenu_800FA568
/* 118648 800FA558 00000000 */   nop
.Lmenu_800FA55C:
/* 11864C 800FA55C 8E222218 */  lw         $v0, 0x2218($s1)
/* 118650 800FA560 00501023 */  subu       $v0, $v0, $s0
/* 118654 800FA564 AE222218 */  sw         $v0, 0x2218($s1)
.Lmenu_800FA568:
/* 118658 800FA568 8E222218 */  lw         $v0, 0x2218($s1)
/* 11865C 800FA56C 2C4200FA */  sltiu      $v0, $v0, 0xFA
/* 118660 800FA570 50400021 */  beql       $v0, $zero, .Lmenu_800FA5F8
/* 118664 800FA574 02202021 */   addu      $a0, $s1, $zero
/* 118668 800FA578 8E240354 */  lw         $a0, 0x354($s1)
/* 11866C 800FA57C 0C010467 */  jal        func_8004119C
/* 118670 800FA580 24843DD4 */   addiu     $a0, $a0, 0x3DD4
/* 118674 800FA584 5440001C */  bnel       $v0, $zero, .Lmenu_800FA5F8
/* 118678 800FA588 02202021 */   addu      $a0, $s1, $zero
/* 11867C 800FA58C 8E23221C */  lw         $v1, 0x221C($s1)
/* 118680 800FA590 24020006 */  addiu      $v0, $zero, 0x6
/* 118684 800FA594 50620018 */  beql       $v1, $v0, .Lmenu_800FA5F8
/* 118688 800FA598 02202021 */   addu      $a0, $s1, $zero
/* 11868C 800FA59C 8E252214 */  lw         $a1, 0x2214($s1)
/* 118690 800FA5A0 10A00009 */  beqz       $a1, .Lmenu_800FA5C8
/* 118694 800FA5A4 00000000 */   nop
/* 118698 800FA5A8 90A20014 */  lbu        $v0, 0x14($a1)
/* 11869C 800FA5AC 30420001 */  andi       $v0, $v0, 0x1
/* 1186A0 800FA5B0 10400005 */  beqz       $v0, .Lmenu_800FA5C8
/* 1186A4 800FA5B4 00000000 */   nop
/* 1186A8 800FA5B8 8E240354 */  lw         $a0, 0x354($s1)
/* 1186AC 800FA5BC 0C01045B */  jal        func_8004116C
/* 1186B0 800FA5C0 24843DD4 */   addiu     $a0, $a0, 0x3DD4
/* 1186B4 800FA5C4 AE202214 */  sw         $zero, 0x2214($s1)
.Lmenu_800FA5C8:
/* 1186B8 800FA5C8 8E240618 */  lw         $a0, 0x618($s1)
/* 1186BC 800FA5CC 0C03A939 */  jal        func_menu_800EA4E4
/* 1186C0 800FA5D0 00000000 */   nop
/* 1186C4 800FA5D4 240500FA */  addiu      $a1, $zero, 0xFA
/* 1186C8 800FA5D8 00003021 */  addu       $a2, $zero, $zero
/* 1186CC 800FA5DC 8E240354 */  lw         $a0, 0x354($s1)
/* 1186D0 800FA5E0 00C03821 */  addu       $a3, $a2, $zero
/* 1186D4 800FA5E4 AFA20010 */  sw         $v0, 0x10($sp)
/* 1186D8 800FA5E8 0C010435 */  jal        func_800410D4
/* 1186DC 800FA5EC 24843DD4 */   addiu     $a0, $a0, 0x3DD4
/* 1186E0 800FA5F0 AE222214 */  sw         $v0, 0x2214($s1)
/* 1186E4 800FA5F4 02202021 */  addu       $a0, $s1, $zero
.Lmenu_800FA5F8:
/* 1186E8 800FA5F8 0C03E681 */  jal        func_menu_800F9A04
/* 1186EC 800FA5FC 02002821 */   addu      $a1, $s0, $zero
/* 1186F0 800FA600 8E232224 */  lw         $v1, 0x2224($s1)
/* 1186F4 800FA604 1060001C */  beqz       $v1, .Lmenu_800FA678
/* 1186F8 800FA608 00409021 */   addu      $s2, $v0, $zero
/* 1186FC 800FA60C 8E252214 */  lw         $a1, 0x2214($s1)
/* 118700 800FA610 10A0000A */  beqz       $a1, .Lmenu_800FA63C
/* 118704 800FA614 26300368 */   addiu     $s0, $s1, 0x368
/* 118708 800FA618 90A20014 */  lbu        $v0, 0x14($a1)
/* 11870C 800FA61C 30420001 */  andi       $v0, $v0, 0x1
/* 118710 800FA620 10400006 */  beqz       $v0, .Lmenu_800FA63C
/* 118714 800FA624 00000000 */   nop
/* 118718 800FA628 8E240354 */  lw         $a0, 0x354($s1)
/* 11871C 800FA62C 0C01045B */  jal        func_8004116C
/* 118720 800FA630 24843DD4 */   addiu     $a0, $a0, 0x3DD4
/* 118724 800FA634 AE202214 */  sw         $zero, 0x2214($s1)
/* 118728 800FA638 26300368 */  addiu      $s0, $s1, 0x368
.Lmenu_800FA63C:
/* 11872C 800FA63C 8E0402B0 */  lw         $a0, 0x2B0($s0)
/* 118730 800FA640 0C03A73A */  jal        func_menu_800E9CE8
/* 118734 800FA644 00002821 */   addu      $a1, $zero, $zero
/* 118738 800FA648 8E0402B0 */  lw         $a0, 0x2B0($s0)
/* 11873C 800FA64C 0C03A939 */  jal        func_menu_800EA4E4
/* 118740 800FA650 00000000 */   nop
/* 118744 800FA654 240500FA */  addiu      $a1, $zero, 0xFA
/* 118748 800FA658 24060001 */  addiu      $a2, $zero, 0x1
/* 11874C 800FA65C 8E240354 */  lw         $a0, 0x354($s1)
/* 118750 800FA660 00003821 */  addu       $a3, $zero, $zero
/* 118754 800FA664 AFA20010 */  sw         $v0, 0x10($sp)
/* 118758 800FA668 0C010435 */  jal        func_800410D4
/* 11875C 800FA66C 24843DD4 */   addiu     $a0, $a0, 0x3DD4
/* 118760 800FA670 AE222214 */  sw         $v0, 0x2214($s1)
/* 118764 800FA674 AE202224 */  sw         $zero, 0x2224($s1)
.Lmenu_800FA678:
/* 118768 800FA678 02401021 */  addu       $v0, $s2, $zero
/* 11876C 800FA67C 8FBF0024 */  lw         $ra, 0x24($sp)
/* 118770 800FA680 8FB20020 */  lw         $s2, 0x20($sp)
/* 118774 800FA684 8FB1001C */  lw         $s1, 0x1C($sp)
/* 118778 800FA688 8FB00018 */  lw         $s0, 0x18($sp)
/* 11877C 800FA68C 03E00008 */  jr         $ra
/* 118780 800FA690 27BD0028 */   addiu     $sp, $sp, 0x28
