.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text, "ax"

glabel func_menu_8010BEC0
/* 129FB0 8010BEC0 27BDFFD8 */  addiu      $sp, $sp, -0x28
/* 129FB4 8010BEC4 AFB20018 */  sw         $s2, 0x18($sp)
/* 129FB8 8010BEC8 00809021 */  addu       $s2, $a0, $zero
/* 129FBC 8010BECC AFBF0020 */  sw         $ra, 0x20($sp)
/* 129FC0 8010BED0 AFB3001C */  sw         $s3, 0x1C($sp)
/* 129FC4 8010BED4 AFB10014 */  sw         $s1, 0x14($sp)
/* 129FC8 8010BED8 0C043530 */  jal        func_menu_8010D4C0
/* 129FCC 8010BEDC AFB00010 */   sw        $s0, 0x10($sp)
/* 129FD0 8010BEE0 26441908 */  addiu      $a0, $s2, 0x1908
/* 129FD4 8010BEE4 3C02800D */  lui        $v0, %hi(D_menu_800CEB08)
/* 129FD8 8010BEE8 2442EB08 */  addiu      $v0, $v0, %lo(D_menu_800CEB08)
/* 129FDC 8010BEEC 0C047BA4 */  jal        func_menu_8011EE90
/* 129FE0 8010BEF0 AE420000 */   sw        $v0, 0x0($s2)
/* 129FE4 8010BEF4 0C047CA8 */  jal        func_menu_8011F2A0
/* 129FE8 8010BEF8 26441964 */   addiu     $a0, $s2, 0x1964
/* 129FEC 8010BEFC 0C040F38 */  jal        func_menu_80103CE0
/* 129FF0 8010BF00 264419DC */   addiu     $a0, $s2, 0x19DC
/* 129FF4 8010BF04 0C040F38 */  jal        func_menu_80103CE0
/* 129FF8 8010BF08 26441CCC */   addiu     $a0, $s2, 0x1CCC
/* 129FFC 8010BF0C 26501FC0 */  addiu      $s0, $s2, 0x1FC0
/* 12A000 8010BF10 0C04729C */  jal        func_menu_8011CA70
/* 12A004 8010BF14 02002021 */   addu      $a0, $s0, $zero
/* 12A008 8010BF18 26442054 */  addiu      $a0, $s2, 0x2054
/* 12A00C 8010BF1C 3C02800D */  lui        $v0, %hi(D_menu_800D0740)
/* 12A010 8010BF20 24420740 */  addiu      $v0, $v0, %lo(D_menu_800D0740)
/* 12A014 8010BF24 0C044D38 */  jal        func_menu_801134E0
/* 12A018 8010BF28 AE020054 */   sw        $v0, 0x54($s0)
/* 12A01C 8010BF2C 26512A48 */  addiu      $s1, $s2, 0x2A48
/* 12A020 8010BF30 24100003 */  addiu      $s0, $zero, 0x3
/* 12A024 8010BF34 2413FFFF */  addiu      $s3, $zero, -0x1
.Lmenu_8010BF38:
/* 12A028 8010BF38 0C047CA8 */  jal        func_menu_8011F2A0
/* 12A02C 8010BF3C 02202021 */   addu      $a0, $s1, $zero
/* 12A030 8010BF40 2610FFFF */  addiu      $s0, $s0, -0x1
/* 12A034 8010BF44 1613FFFC */  bne        $s0, $s3, .Lmenu_8010BF38
/* 12A038 8010BF48 26310078 */   addiu     $s1, $s1, 0x78
/* 12A03C 8010BF4C 0C047CA8 */  jal        func_menu_8011F2A0
/* 12A040 8010BF50 26442C28 */   addiu     $a0, $s2, 0x2C28
/* 12A044 8010BF54 0C047CA8 */  jal        func_menu_8011F2A0
/* 12A048 8010BF58 26442CA0 */   addiu     $a0, $s2, 0x2CA0
/* 12A04C 8010BF5C 0C047CA8 */  jal        func_menu_8011F2A0
/* 12A050 8010BF60 26442D18 */   addiu     $a0, $s2, 0x2D18
/* 12A054 8010BF64 0C047CA8 */  jal        func_menu_8011F2A0
/* 12A058 8010BF68 26442D90 */   addiu     $a0, $s2, 0x2D90
/* 12A05C 8010BF6C 0C0016DC */  jal        func_80005B70
/* 12A060 8010BF70 26442E48 */   addiu     $a0, $s2, 0x2E48
/* 12A064 8010BF74 0C0016DC */  jal        func_80005B70
/* 12A068 8010BF78 26442E54 */   addiu     $a0, $s2, 0x2E54
/* 12A06C 8010BF7C 0C043032 */  jal        func_menu_8010C0C8
/* 12A070 8010BF80 02402021 */   addu      $a0, $s2, $zero
/* 12A074 8010BF84 02401021 */  addu       $v0, $s2, $zero
/* 12A078 8010BF88 8FBF0020 */  lw         $ra, 0x20($sp)
/* 12A07C 8010BF8C 8FB3001C */  lw         $s3, 0x1C($sp)
/* 12A080 8010BF90 8FB20018 */  lw         $s2, 0x18($sp)
/* 12A084 8010BF94 8FB10014 */  lw         $s1, 0x14($sp)
/* 12A088 8010BF98 8FB00010 */  lw         $s0, 0x10($sp)
/* 12A08C 8010BF9C 03E00008 */  jr         $ra
/* 12A090 8010BFA0 27BD0028 */   addiu     $sp, $sp, 0x28

glabel func_menu_8010BFA4
/* 12A094 8010BFA4 27BDFFD8 */  addiu      $sp, $sp, -0x28
/* 12A098 8010BFA8 AFB10014 */  sw         $s1, 0x14($sp)
/* 12A09C 8010BFAC 00808821 */  addu       $s1, $a0, $zero
/* 12A0A0 8010BFB0 AFB3001C */  sw         $s3, 0x1C($sp)
/* 12A0A4 8010BFB4 00A09821 */  addu       $s3, $a1, $zero
/* 12A0A8 8010BFB8 3C02800D */  lui        $v0, %hi(D_menu_800CEB08)
/* 12A0AC 8010BFBC 2442EB08 */  addiu      $v0, $v0, %lo(D_menu_800CEB08)
/* 12A0B0 8010BFC0 AFBF0020 */  sw         $ra, 0x20($sp)
/* 12A0B4 8010BFC4 AFB20018 */  sw         $s2, 0x18($sp)
/* 12A0B8 8010BFC8 AFB00010 */  sw         $s0, 0x10($sp)
/* 12A0BC 8010BFCC 0C04358F */  jal        func_menu_8010D63C
/* 12A0C0 8010BFD0 AE220000 */   sw        $v0, 0x0($s1)
/* 12A0C4 8010BFD4 26242E54 */  addiu      $a0, $s1, 0x2E54
/* 12A0C8 8010BFD8 0C0016E2 */  jal        func_80005B88
/* 12A0CC 8010BFDC 24050002 */   addiu     $a1, $zero, 0x2
/* 12A0D0 8010BFE0 26242E48 */  addiu      $a0, $s1, 0x2E48
/* 12A0D4 8010BFE4 0C0016E2 */  jal        func_80005B88
/* 12A0D8 8010BFE8 24050002 */   addiu     $a1, $zero, 0x2
/* 12A0DC 8010BFEC 26242D90 */  addiu      $a0, $s1, 0x2D90
/* 12A0E0 8010BFF0 0C047CB9 */  jal        func_menu_8011F2E4
/* 12A0E4 8010BFF4 24050002 */   addiu     $a1, $zero, 0x2
/* 12A0E8 8010BFF8 26242D18 */  addiu      $a0, $s1, 0x2D18
/* 12A0EC 8010BFFC 0C047CB9 */  jal        func_menu_8011F2E4
/* 12A0F0 8010C000 24050002 */   addiu     $a1, $zero, 0x2
/* 12A0F4 8010C004 26242CA0 */  addiu      $a0, $s1, 0x2CA0
/* 12A0F8 8010C008 0C047CB9 */  jal        func_menu_8011F2E4
/* 12A0FC 8010C00C 24050002 */   addiu     $a1, $zero, 0x2
/* 12A100 8010C010 26302C28 */  addiu      $s0, $s1, 0x2C28
/* 12A104 8010C014 02002021 */  addu       $a0, $s0, $zero
/* 12A108 8010C018 0C047CB9 */  jal        func_menu_8011F2E4
/* 12A10C 8010C01C 24050002 */   addiu     $a1, $zero, 0x2
/* 12A110 8010C020 26222A48 */  addiu      $v0, $s1, 0x2A48
/* 12A114 8010C024 1040000D */  beqz       $v0, .Lmenu_8010C05C
/* 12A118 8010C028 26242054 */   addiu     $a0, $s1, 0x2054
/* 12A11C 8010C02C 1050000B */  beq        $v0, $s0, .Lmenu_8010C05C
/* 12A120 8010C030 00409021 */   addu      $s2, $v0, $zero
/* 12A124 8010C034 2610FF88 */  addiu      $s0, $s0, -0x78
.Lmenu_8010C038:
/* 12A128 8010C038 8E020054 */  lw         $v0, 0x54($s0)
/* 12A12C 8010C03C 24050002 */  addiu      $a1, $zero, 0x2
/* 12A130 8010C040 84440010 */  lh         $a0, 0x10($v0)
/* 12A134 8010C044 8C420014 */  lw         $v0, 0x14($v0)
/* 12A138 8010C048 0040F809 */  jalr       $v0
/* 12A13C 8010C04C 02042021 */   addu      $a0, $s0, $a0
/* 12A140 8010C050 1650FFF9 */  bne        $s2, $s0, .Lmenu_8010C038
/* 12A144 8010C054 2610FF88 */   addiu     $s0, $s0, -0x78
/* 12A148 8010C058 26242054 */  addiu      $a0, $s1, 0x2054
.Lmenu_8010C05C:
/* 12A14C 8010C05C 0C044D49 */  jal        func_menu_80113524
/* 12A150 8010C060 24050002 */   addiu     $a1, $zero, 0x2
/* 12A154 8010C064 26241FC0 */  addiu      $a0, $s1, 0x1FC0
/* 12A158 8010C068 0C0472AB */  jal        func_menu_8011CAAC
/* 12A15C 8010C06C 24050002 */   addiu     $a1, $zero, 0x2
/* 12A160 8010C070 26241CCC */  addiu      $a0, $s1, 0x1CCC
/* 12A164 8010C074 0C040F4B */  jal        func_menu_80103D2C
/* 12A168 8010C078 24050002 */   addiu     $a1, $zero, 0x2
/* 12A16C 8010C07C 262419DC */  addiu      $a0, $s1, 0x19DC
/* 12A170 8010C080 0C040F4B */  jal        func_menu_80103D2C
/* 12A174 8010C084 24050002 */   addiu     $a1, $zero, 0x2
/* 12A178 8010C088 26241964 */  addiu      $a0, $s1, 0x1964
/* 12A17C 8010C08C 0C047CB9 */  jal        func_menu_8011F2E4
/* 12A180 8010C090 24050002 */   addiu     $a1, $zero, 0x2
/* 12A184 8010C094 26241908 */  addiu      $a0, $s1, 0x1908
/* 12A188 8010C098 0C047BB3 */  jal        func_menu_8011EECC
/* 12A18C 8010C09C 24050002 */   addiu     $a1, $zero, 0x2
/* 12A190 8010C0A0 02202021 */  addu       $a0, $s1, $zero
/* 12A194 8010C0A4 0C04355E */  jal        func_menu_8010D578
/* 12A198 8010C0A8 02602821 */   addu      $a1, $s3, $zero
/* 12A19C 8010C0AC 8FBF0020 */  lw         $ra, 0x20($sp)
/* 12A1A0 8010C0B0 8FB3001C */  lw         $s3, 0x1C($sp)
/* 12A1A4 8010C0B4 8FB20018 */  lw         $s2, 0x18($sp)
/* 12A1A8 8010C0B8 8FB10014 */  lw         $s1, 0x14($sp)
/* 12A1AC 8010C0BC 8FB00010 */  lw         $s0, 0x10($sp)
/* 12A1B0 8010C0C0 03E00008 */  jr         $ra
/* 12A1B4 8010C0C4 27BD0028 */   addiu     $sp, $sp, 0x28

glabel func_menu_8010C0C8
/* 12A1B8 8010C0C8 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* 12A1BC 8010C0CC AFB00010 */  sw         $s0, 0x10($sp)
/* 12A1C0 8010C0D0 00808021 */  addu       $s0, $a0, $zero
/* 12A1C4 8010C0D4 AFB20018 */  sw         $s2, 0x18($sp)
/* 12A1C8 8010C0D8 26122E14 */  addiu      $s2, $s0, 0x2E14
/* 12A1CC 8010C0DC 02402021 */  addu       $a0, $s2, $zero
/* 12A1D0 8010C0E0 00002821 */  addu       $a1, $zero, $zero
/* 12A1D4 8010C0E4 2406001E */  addiu      $a2, $zero, 0x1E
/* 12A1D8 8010C0E8 AFBF001C */  sw         $ra, 0x1C($sp)
/* 12A1DC 8010C0EC AFB10014 */  sw         $s1, 0x14($sp)
/* 12A1E0 8010C0F0 AE002E08 */  sw         $zero, 0x2E08($s0)
/* 12A1E4 8010C0F4 AE002E0C */  sw         $zero, 0x2E0C($s0)
/* 12A1E8 8010C0F8 0C000697 */  jal        func_80001A5C
/* 12A1EC 8010C0FC AE002E10 */   sw        $zero, 0x2E10($s0)
/* 12A1F0 8010C100 26112E32 */  addiu      $s1, $s0, 0x2E32
/* 12A1F4 8010C104 02202021 */  addu       $a0, $s1, $zero
/* 12A1F8 8010C108 00002821 */  addu       $a1, $zero, $zero
/* 12A1FC 8010C10C 0C000697 */  jal        func_80001A5C
/* 12A200 8010C110 24060014 */   addiu     $a2, $zero, 0x14
/* 12A204 8010C114 26042E48 */  addiu      $a0, $s0, 0x2E48
/* 12A208 8010C118 02402821 */  addu       $a1, $s2, $zero
/* 12A20C 8010C11C 0C0016F6 */  jal        func_80005BD8
/* 12A210 8010C120 2406000E */   addiu     $a2, $zero, 0xE
/* 12A214 8010C124 26042E54 */  addiu      $a0, $s0, 0x2E54
/* 12A218 8010C128 02202821 */  addu       $a1, $s1, $zero
/* 12A21C 8010C12C 0C0016F6 */  jal        func_80005BD8
/* 12A220 8010C130 24060009 */   addiu     $a2, $zero, 0x9
/* 12A224 8010C134 0C040207 */  jal        func_menu_8010081C
/* 12A228 8010C138 02002021 */   addu      $a0, $s0, $zero
/* 12A22C 8010C13C 8FBF001C */  lw         $ra, 0x1C($sp)
/* 12A230 8010C140 8FB20018 */  lw         $s2, 0x18($sp)
/* 12A234 8010C144 8FB10014 */  lw         $s1, 0x14($sp)
/* 12A238 8010C148 8FB00010 */  lw         $s0, 0x10($sp)
/* 12A23C 8010C14C 03E00008 */  jr         $ra
/* 12A240 8010C150 27BD0020 */   addiu     $sp, $sp, 0x20

glabel func_menu_8010C154
/* 12A244 8010C154 27BDFFD0 */  addiu      $sp, $sp, -0x30
/* 12A248 8010C158 AFB20020 */  sw         $s2, 0x20($sp)
/* 12A24C 8010C15C 00809021 */  addu       $s2, $a0, $zero
/* 12A250 8010C160 26451908 */  addiu      $a1, $s2, 0x1908
/* 12A254 8010C164 24060052 */  addiu      $a2, $zero, 0x52
/* 12A258 8010C168 00C03821 */  addu       $a3, $a2, $zero
/* 12A25C 8010C16C AFBF0028 */  sw         $ra, 0x28($sp)
/* 12A260 8010C170 AFB30024 */  sw         $s3, 0x24($sp)
/* 12A264 8010C174 AFB1001C */  sw         $s1, 0x1C($sp)
/* 12A268 8010C178 0C04675B */  jal        func_menu_80119D6C
/* 12A26C 8010C17C AFB00018 */   sw        $s0, 0x18($sp)
/* 12A270 8010C180 0C0435B4 */  jal        func_menu_8010D6D0
/* 12A274 8010C184 02402021 */   addu      $a0, $s2, $zero
/* 12A278 8010C188 96430362 */  lhu        $v1, 0x362($s2)
/* 12A27C 8010C18C 24020006 */  addiu      $v0, $zero, 0x6
/* 12A280 8010C190 14620007 */  bne        $v1, $v0, .Lmenu_8010C1B0
/* 12A284 8010C194 2403000F */   addiu     $v1, $zero, 0xF
/* 12A288 8010C198 8E420354 */  lw         $v0, 0x354($s2)
/* 12A28C 8010C19C 8C424614 */  lw         $v0, 0x4614($v0)
/* 12A290 8010C1A0 30420002 */  andi       $v0, $v0, 0x2
/* 12A294 8010C1A4 10400002 */  beqz       $v0, .Lmenu_8010C1B0
/* 12A298 8010C1A8 2403000E */   addiu     $v1, $zero, 0xE
/* 12A29C 8010C1AC 24030019 */  addiu      $v1, $zero, 0x19
.Lmenu_8010C1B0:
/* 12A2A0 8010C1B0 02402021 */  addu       $a0, $s2, $zero
/* 12A2A4 8010C1B4 26501964 */  addiu      $s0, $s2, 0x1964
/* 12A2A8 8010C1B8 02002821 */  addu       $a1, $s0, $zero
/* 12A2AC 8010C1BC 24060043 */  addiu      $a2, $zero, 0x43
/* 12A2B0 8010C1C0 00C03821 */  addu       $a3, $a2, $zero
/* 12A2B4 8010C1C4 0C04679E */  jal        func_menu_80119E78
/* 12A2B8 8010C1C8 AFA30010 */   sw        $v1, 0x10($sp)
/* 12A2BC 8010C1CC 02002021 */  addu       $a0, $s0, $zero
/* 12A2C0 8010C1D0 0C047D63 */  jal        func_menu_8011F58C
/* 12A2C4 8010C1D4 2405001E */   addiu     $a1, $zero, 0x1E
/* 12A2C8 8010C1D8 02402021 */  addu       $a0, $s2, $zero
/* 12A2CC 8010C1DC 26501FC0 */  addiu      $s0, $s2, 0x1FC0
/* 12A2D0 8010C1E0 02002821 */  addu       $a1, $s0, $zero
/* 12A2D4 8010C1E4 24060046 */  addiu      $a2, $zero, 0x46
/* 12A2D8 8010C1E8 0C046966 */  jal        func_menu_8011A598
/* 12A2DC 8010C1EC 24070044 */   addiu     $a3, $zero, 0x44
/* 12A2E0 8010C1F0 02402021 */  addu       $a0, $s2, $zero
/* 12A2E4 8010C1F4 26452054 */  addiu      $a1, $s2, 0x2054
/* 12A2E8 8010C1F8 02003021 */  addu       $a2, $s0, $zero
/* 12A2EC 8010C1FC 24070071 */  addiu      $a3, $zero, 0x71
/* 12A2F0 8010C200 24020055 */  addiu      $v0, $zero, 0x55
/* 12A2F4 8010C204 0C04699A */  jal        func_menu_8011A668
/* 12A2F8 8010C208 AFA20010 */   sw        $v0, 0x10($sp)
/* 12A2FC 8010C20C 02402021 */  addu       $a0, $s2, $zero
/* 12A300 8010C210 264519DC */  addiu      $a1, $s2, 0x19DC
/* 12A304 8010C214 24060049 */  addiu      $a2, $zero, 0x49
/* 12A308 8010C218 2407004F */  addiu      $a3, $zero, 0x4F
/* 12A30C 8010C21C 24020072 */  addiu      $v0, $zero, 0x72
/* 12A310 8010C220 0C040297 */  jal        func_menu_80100A5C
/* 12A314 8010C224 AFA20010 */   sw        $v0, 0x10($sp)
/* 12A318 8010C228 02402021 */  addu       $a0, $s2, $zero
/* 12A31C 8010C22C 26451CCC */  addiu      $a1, $s2, 0x1CCC
/* 12A320 8010C230 24060048 */  addiu      $a2, $zero, 0x48
/* 12A324 8010C234 2407004C */  addiu      $a3, $zero, 0x4C
/* 12A328 8010C238 24020002 */  addiu      $v0, $zero, 0x2
/* 12A32C 8010C23C 0C040297 */  jal        func_menu_80100A5C
/* 12A330 8010C240 AFA20010 */   sw        $v0, 0x10($sp)
/* 12A334 8010C244 00008821 */  addu       $s1, $zero, $zero
/* 12A338 8010C248 24130070 */  addiu      $s3, $zero, 0x70
/* 12A33C 8010C24C 24102A48 */  addiu      $s0, $zero, 0x2A48
.Lmenu_8010C250:
/* 12A340 8010C250 AFB30010 */  sw         $s3, 0x10($sp)
/* 12A344 8010C254 02402021 */  addu       $a0, $s2, $zero
/* 12A348 8010C258 02502821 */  addu       $a1, $s2, $s0
/* 12A34C 8010C25C 2406009E */  addiu      $a2, $zero, 0x9E
/* 12A350 8010C260 0C04679E */  jal        func_menu_80119E78
/* 12A354 8010C264 24070040 */   addiu     $a3, $zero, 0x40
/* 12A358 8010C268 26310001 */  addiu      $s1, $s1, 0x1
/* 12A35C 8010C26C 2A220004 */  slti       $v0, $s1, 0x4
/* 12A360 8010C270 1440FFF7 */  bnez       $v0, .Lmenu_8010C250
/* 12A364 8010C274 26100078 */   addiu     $s0, $s0, 0x78
/* 12A368 8010C278 96430362 */  lhu        $v1, 0x362($s2)
/* 12A36C 8010C27C 2402001D */  addiu      $v0, $zero, 0x1D
/* 12A370 8010C280 14620024 */  bne        $v1, $v0, .Lmenu_8010C314
/* 12A374 8010C284 02402021 */   addu      $a0, $s2, $zero
/* 12A378 8010C288 26452C28 */  addiu      $a1, $s2, 0x2C28
/* 12A37C 8010C28C 24060072 */  addiu      $a2, $zero, 0x72
/* 12A380 8010C290 24070040 */  addiu      $a3, $zero, 0x40
/* 12A384 8010C294 24100070 */  addiu      $s0, $zero, 0x70
/* 12A388 8010C298 0C04679E */  jal        func_menu_80119E78
/* 12A38C 8010C29C AFB00010 */   sw        $s0, 0x10($sp)
/* 12A390 8010C2A0 02402021 */  addu       $a0, $s2, $zero
/* 12A394 8010C2A4 26452CA0 */  addiu      $a1, $s2, 0x2CA0
/* 12A398 8010C2A8 24060074 */  addiu      $a2, $zero, 0x74
/* 12A39C 8010C2AC 24070040 */  addiu      $a3, $zero, 0x40
/* 12A3A0 8010C2B0 0C04679E */  jal        func_menu_80119E78
/* 12A3A4 8010C2B4 AFB00010 */   sw        $s0, 0x10($sp)
/* 12A3A8 8010C2B8 02402021 */  addu       $a0, $s2, $zero
/* 12A3AC 8010C2BC 26452D18 */  addiu      $a1, $s2, 0x2D18
/* 12A3B0 8010C2C0 24060073 */  addiu      $a2, $zero, 0x73
/* 12A3B4 8010C2C4 24070040 */  addiu      $a3, $zero, 0x40
/* 12A3B8 8010C2C8 0C04679E */  jal        func_menu_80119E78
/* 12A3BC 8010C2CC AFB00010 */   sw        $s0, 0x10($sp)
/* 12A3C0 8010C2D0 02402021 */  addu       $a0, $s2, $zero
/* 12A3C4 8010C2D4 24020001 */  addiu      $v0, $zero, 0x1
/* 12A3C8 8010C2D8 0C043250 */  jal        func_menu_8010C940
/* 12A3CC 8010C2DC AE422E10 */   sw        $v0, 0x2E10($s2)
/* 12A3D0 8010C2E0 02402021 */  addu       $a0, $s2, $zero
/* 12A3D4 8010C2E4 24902D90 */  addiu      $s0, $a0, 0x2D90
/* 12A3D8 8010C2E8 02002821 */  addu       $a1, $s0, $zero
/* 12A3DC 8010C2EC 24060075 */  addiu      $a2, $zero, 0x75
/* 12A3E0 8010C2F0 24070040 */  addiu      $a3, $zero, 0x40
/* 12A3E4 8010C2F4 24020049 */  addiu      $v0, $zero, 0x49
/* 12A3E8 8010C2F8 0C04679E */  jal        func_menu_80119E78
/* 12A3EC 8010C2FC AFA20010 */   sw        $v0, 0x10($sp)
/* 12A3F0 8010C300 3C03BFFF */  lui        $v1, (0xBFFFFFFF >> 16)
/* 12A3F4 8010C304 8E020018 */  lw         $v0, 0x18($s0)
/* 12A3F8 8010C308 3463FFFF */  ori        $v1, $v1, (0xBFFFFFFF & 0xFFFF)
/* 12A3FC 8010C30C 00431024 */  and        $v0, $v0, $v1
/* 12A400 8010C310 AE020018 */  sw         $v0, 0x18($s0)
.Lmenu_8010C314:
/* 12A404 8010C314 8FBF0028 */  lw         $ra, 0x28($sp)
/* 12A408 8010C318 8FB30024 */  lw         $s3, 0x24($sp)
/* 12A40C 8010C31C 8FB20020 */  lw         $s2, 0x20($sp)
/* 12A410 8010C320 8FB1001C */  lw         $s1, 0x1C($sp)
/* 12A414 8010C324 8FB00018 */  lw         $s0, 0x18($sp)
/* 12A418 8010C328 03E00008 */  jr         $ra
/* 12A41C 8010C32C 27BD0030 */   addiu     $sp, $sp, 0x30

glabel func_menu_8010C330
/* 12A420 8010C330 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 12A424 8010C334 AFBF0014 */  sw         $ra, 0x14($sp)
/* 12A428 8010C338 AFB00010 */  sw         $s0, 0x10($sp)
/* 12A42C 8010C33C 94C20028 */  lhu        $v0, 0x28($a2)
/* 12A430 8010C340 00808021 */  addu       $s0, $a0, $zero
/* 12A434 8010C344 A6020362 */  sh         $v0, 0x362($s0)
/* 12A438 8010C348 24020006 */  addiu      $v0, $zero, 0x6
/* 12A43C 8010C34C A4C20028 */  sh         $v0, 0x28($a2)
/* 12A440 8010C350 8CA20000 */  lw         $v0, 0x0($a1)
/* 12A444 8010C354 8C420104 */  lw         $v0, 0x104($v0)
/* 12A448 8010C358 0C04362A */  jal        func_menu_8010D8A8
/* 12A44C 8010C35C AE021FBC */   sw        $v0, 0x1FBC($s0)
/* 12A450 8010C360 1040000D */  beqz       $v0, .Lmenu_8010C398
/* 12A454 8010C364 26050BE8 */   addiu     $a1, $s0, 0xBE8
/* 12A458 8010C368 8E020000 */  lw         $v0, 0x0($s0)
/* 12A45C 8010C36C 84440090 */  lh         $a0, 0x90($v0)
/* 12A460 8010C370 8C420094 */  lw         $v0, 0x94($v0)
/* 12A464 8010C374 0040F809 */  jalr       $v0
/* 12A468 8010C378 02042021 */   addu      $a0, $s0, $a0
/* 12A46C 8010C37C 260419DC */  addiu      $a0, $s0, 0x19DC
/* 12A470 8010C380 0C048D3F */  jal        func_menu_801234FC
/* 12A474 8010C384 00002821 */   addu      $a1, $zero, $zero
/* 12A478 8010C388 24020001 */  addiu      $v0, $zero, 0x1
/* 12A47C 8010C38C 240309C4 */  addiu      $v1, $zero, 0x9C4
/* 12A480 8010C390 080430E7 */  j          .Lmenu_8010C39C
/* 12A484 8010C394 AE032E08 */   sw        $v1, 0x2E08($s0)
.Lmenu_8010C398:
/* 12A488 8010C398 00001021 */  addu       $v0, $zero, $zero
.Lmenu_8010C39C:
/* 12A48C 8010C39C 8FBF0014 */  lw         $ra, 0x14($sp)
/* 12A490 8010C3A0 8FB00010 */  lw         $s0, 0x10($sp)
/* 12A494 8010C3A4 03E00008 */  jr         $ra
/* 12A498 8010C3A8 27BD0018 */   addiu     $sp, $sp, 0x18

glabel func_menu_8010C3AC
/* 12A49C 8010C3AC 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 12A4A0 8010C3B0 AFBF0010 */  sw         $ra, 0x10($sp)
/* 12A4A4 8010C3B4 0C0431CE */  jal        func_menu_8010C738
/* 12A4A8 8010C3B8 AC850358 */   sw        $a1, 0x358($a0)
/* 12A4AC 8010C3BC 8FBF0010 */  lw         $ra, 0x10($sp)
/* 12A4B0 8010C3C0 03E00008 */  jr         $ra
/* 12A4B4 8010C3C4 27BD0018 */   addiu     $sp, $sp, 0x18

glabel func_menu_8010C3C8
/* 12A4B8 8010C3C8 03E00008 */  jr         $ra
/* 12A4BC 8010C3CC AC800358 */   sw        $zero, 0x358($a0)

glabel func_menu_8010C3D0
/* 12A4C0 8010C3D0 00803021 */  addu       $a2, $a0, $zero
/* 12A4C4 8010C3D4 24C219DC */  addiu      $v0, $a2, 0x19DC
/* 12A4C8 8010C3D8 14A2002F */  bne        $a1, $v0, .Lmenu_8010C498
/* 12A4CC 8010C3DC 24C21CCC */   addiu     $v0, $a2, 0x1CCC
/* 12A4D0 8010C3E0 8CC31904 */  lw         $v1, 0x1904($a2)
/* 12A4D4 8010C3E4 10600034 */  beqz       $v1, .Lmenu_8010C4B8
/* 12A4D8 8010C3E8 00000000 */   nop
/* 12A4DC 8010C3EC 8CC20354 */  lw         $v0, 0x354($a2)
/* 12A4E0 8010C3F0 8C440000 */  lw         $a0, 0x0($v0)
/* 12A4E4 8010C3F4 88670004 */  lwl        $a3, 0x4($v1)
/* 12A4E8 8010C3F8 98670007 */  lwr        $a3, 0x7($v1)
/* 12A4EC 8010C3FC 88680008 */  lwl        $t0, 0x8($v1)
/* 12A4F0 8010C400 9868000B */  lwr        $t0, 0xB($v1)
/* 12A4F4 8010C404 A8870031 */  swl        $a3, 0x31($a0)
/* 12A4F8 8010C408 B8870034 */  swr        $a3, 0x34($a0)
/* 12A4FC 8010C40C A8880035 */  swl        $t0, 0x35($a0)
/* 12A500 8010C410 B8880038 */  swr        $t0, 0x38($a0)
/* 12A504 8010C414 8CC2202C */  lw         $v0, 0x202C($a2)
/* 12A508 8010C418 8CC31904 */  lw         $v1, 0x1904($a2)
/* 12A50C 8010C41C 00021080 */  sll        $v0, $v0, 2
/* 12A510 8010C420 00621821 */  addu       $v1, $v1, $v0
/* 12A514 8010C424 8C630048 */  lw         $v1, 0x48($v1)
/* 12A518 8010C428 10600014 */  beqz       $v1, .Lmenu_8010C47C
/* 12A51C 8010C42C 24020001 */   addiu     $v0, $zero, 0x1
/* 12A520 8010C430 88670004 */  lwl        $a3, 0x4($v1)
/* 12A524 8010C434 98670007 */  lwr        $a3, 0x7($v1)
/* 12A528 8010C438 88680008 */  lwl        $t0, 0x8($v1)
/* 12A52C 8010C43C 9868000B */  lwr        $t0, 0xB($v1)
/* 12A530 8010C440 A8870044 */  swl        $a3, 0x44($a0)
/* 12A534 8010C444 B8870047 */  swr        $a3, 0x47($a0)
/* 12A538 8010C448 A8880048 */  swl        $t0, 0x48($a0)
/* 12A53C 8010C44C B888004B */  swr        $t0, 0x4B($a0)
/* 12A540 8010C450 8867000C */  lwl        $a3, 0xC($v1)
/* 12A544 8010C454 9867000F */  lwr        $a3, 0xF($v1)
/* 12A548 8010C458 88680010 */  lwl        $t0, 0x10($v1)
/* 12A54C 8010C45C 98680013 */  lwr        $t0, 0x13($v1)
/* 12A550 8010C460 A887004C */  swl        $a3, 0x4C($a0)
/* 12A554 8010C464 B887004F */  swr        $a3, 0x4F($a0)
/* 12A558 8010C468 A8880050 */  swl        $t0, 0x50($a0)
/* 12A55C 8010C46C B8880053 */  swr        $t0, 0x53($a0)
/* 12A560 8010C470 AC82003C */  sw         $v0, 0x3C($a0)
/* 12A564 8010C474 8C62002C */  lw         $v0, 0x2C($v1)
/* 12A568 8010C478 AC820040 */  sw         $v0, 0x40($a0)
.Lmenu_8010C47C:
/* 12A56C 8010C47C 8CC20354 */  lw         $v0, 0x354($a2)
/* 12A570 8010C480 8C424614 */  lw         $v0, 0x4614($v0)
/* 12A574 8010C484 30420002 */  andi       $v0, $v0, 0x2
/* 12A578 8010C488 1440000A */  bnez       $v0, .Lmenu_8010C4B4
/* 12A57C 8010C48C 2402001E */   addiu     $v0, $zero, 0x1E
/* 12A580 8010C490 0804312D */  j          .Lmenu_8010C4B4
/* 12A584 8010C494 24020013 */   addiu     $v0, $zero, 0x13
.Lmenu_8010C498:
/* 12A588 8010C498 14A20007 */  bne        $a1, $v0, .Lmenu_8010C4B8
/* 12A58C 8010C49C 2403FFFD */   addiu     $v1, $zero, -0x3
/* 12A590 8010C4A0 8CC40354 */  lw         $a0, 0x354($a2)
/* 12A594 8010C4A4 8C824614 */  lw         $v0, 0x4614($a0)
/* 12A598 8010C4A8 00431024 */  and        $v0, $v0, $v1
/* 12A59C 8010C4AC AC824614 */  sw         $v0, 0x4614($a0)
/* 12A5A0 8010C4B0 24020002 */  addiu      $v0, $zero, 0x2
.Lmenu_8010C4B4:
/* 12A5A4 8010C4B4 A4C20360 */  sh         $v0, 0x360($a2)
.Lmenu_8010C4B8:
/* 12A5A8 8010C4B8 94C30360 */  lhu        $v1, 0x360($a2)
/* 12A5AC 8010C4BC 3402FFFF */  ori        $v0, $zero, 0xFFFF
/* 12A5B0 8010C4C0 10620002 */  beq        $v1, $v0, .Lmenu_8010C4CC
/* 12A5B4 8010C4C4 24020001 */   addiu     $v0, $zero, 0x1
/* 12A5B8 8010C4C8 ACC20364 */  sw         $v0, 0x364($a2)
.Lmenu_8010C4CC:
/* 12A5BC 8010C4CC 03E00008 */  jr         $ra
/* 12A5C0 8010C4D0 ACC5035C */   sw        $a1, 0x35C($a2)

glabel func_menu_8010C4D4
/* 12A5C4 8010C4D4 27BDFFC0 */  addiu      $sp, $sp, -0x40
/* 12A5C8 8010C4D8 AFB20028 */  sw         $s2, 0x28($sp)
/* 12A5CC 8010C4DC 00809021 */  addu       $s2, $a0, $zero
/* 12A5D0 8010C4E0 AFB00020 */  sw         $s0, 0x20($sp)
/* 12A5D4 8010C4E4 00A08021 */  addu       $s0, $a1, $zero
/* 12A5D8 8010C4E8 27A40010 */  addiu      $a0, $sp, 0x10
/* 12A5DC 8010C4EC AFBF003C */  sw         $ra, 0x3C($sp)
/* 12A5E0 8010C4F0 AFB60038 */  sw         $s6, 0x38($sp)
/* 12A5E4 8010C4F4 AFB50034 */  sw         $s5, 0x34($sp)
/* 12A5E8 8010C4F8 AFB40030 */  sw         $s4, 0x30($sp)
/* 12A5EC 8010C4FC AFB3002C */  sw         $s3, 0x2C($sp)
/* 12A5F0 8010C500 0C0016DC */  jal        func_80005B70
/* 12A5F4 8010C504 AFB10024 */   sw        $s1, 0x24($sp)
/* 12A5F8 8010C508 26420BE8 */  addiu      $v0, $s2, 0xBE8
/* 12A5FC 8010C50C 16020056 */  bne        $s0, $v0, .Lmenu_8010C668
/* 12A600 8010C510 0000B021 */   addu      $s6, $zero, $zero
/* 12A604 8010C514 8E420354 */  lw         $v0, 0x354($s2)
/* 12A608 8010C518 8E430BC0 */  lw         $v1, 0xBC0($s2)
/* 12A60C 8010C51C 24443DAC */  addiu      $a0, $v0, 0x3DAC
/* 12A610 8010C520 8C820010 */  lw         $v0, 0x10($a0)
/* 12A614 8010C524 0062102B */  sltu       $v0, $v1, $v0
/* 12A618 8010C528 14400003 */  bnez       $v0, .Lmenu_8010C538
/* 12A61C 8010C52C 00031040 */   sll       $v0, $v1, 1
/* 12A620 8010C530 08043155 */  j          .Lmenu_8010C554
/* 12A624 8010C534 AE401904 */   sw        $zero, 0x1904($s2)
.Lmenu_8010C538:
/* 12A628 8010C538 00431021 */  addu       $v0, $v0, $v1
/* 12A62C 8010C53C 000210C0 */  sll        $v0, $v0, 3
/* 12A630 8010C540 00431021 */  addu       $v0, $v0, $v1
/* 12A634 8010C544 8C83000C */  lw         $v1, 0xC($a0)
/* 12A638 8010C548 00021080 */  sll        $v0, $v0, 2
/* 12A63C 8010C54C 00621821 */  addu       $v1, $v1, $v0
/* 12A640 8010C550 AE431904 */  sw         $v1, 0x1904($s2)
.Lmenu_8010C554:
/* 12A644 8010C554 8E451904 */  lw         $a1, 0x1904($s2)
/* 12A648 8010C558 10A0000D */  beqz       $a1, .Lmenu_8010C590
/* 12A64C 8010C55C 00000000 */   nop
/* 12A650 8010C560 8E440354 */  lw         $a0, 0x354($s2)
/* 12A654 8010C564 0C03B7CA */  jal        func_menu_800EDF28
/* 12A658 8010C568 24843DAC */   addiu     $a0, $a0, 0x3DAC
/* 12A65C 8010C56C 24100001 */  addiu      $s0, $zero, 0x1
/* 12A660 8010C570 8E440354 */  lw         $a0, 0x354($s2)
/* 12A664 8010C574 00508004 */  sllv       $s0, $s0, $v0
/* 12A668 8010C578 0C03CA1E */  jal        func_menu_800F2878
/* 12A66C 8010C57C 24842624 */   addiu     $a0, $a0, 0x2624
/* 12A670 8010C580 00501024 */  and        $v0, $v0, $s0
/* 12A674 8010C584 304200FF */  andi       $v0, $v0, 0xFF
/* 12A678 8010C588 54400001 */  bnel       $v0, $zero, .Lmenu_8010C590
/* 12A67C 8010C58C 24160001 */   addiu     $s6, $zero, 0x1
.Lmenu_8010C590:
/* 12A680 8010C590 0C0473D9 */  jal        func_menu_8011CF64
/* 12A684 8010C594 26441FC0 */   addiu     $a0, $s2, 0x1FC0
/* 12A688 8010C598 00008821 */  addu       $s1, $zero, $zero
/* 12A68C 8010C59C 27B50010 */  addiu      $s5, $sp, 0x10
/* 12A690 8010C5A0 24142A48 */  addiu      $s4, $zero, 0x2A48
/* 12A694 8010C5A4 02409821 */  addu       $s3, $s2, $zero
.Lmenu_8010C5A8:
/* 12A698 8010C5A8 2E220004 */  sltiu      $v0, $s1, 0x4
/* 12A69C 8010C5AC 10400019 */  beqz       $v0, .Lmenu_8010C614
/* 12A6A0 8010C5B0 00111880 */   sll       $v1, $s1, 2
/* 12A6A4 8010C5B4 8E421904 */  lw         $v0, 0x1904($s2)
/* 12A6A8 8010C5B8 00431021 */  addu       $v0, $v0, $v1
/* 12A6AC 8010C5BC 8C420048 */  lw         $v0, 0x48($v0)
/* 12A6B0 8010C5C0 50400011 */  beql       $v0, $zero, .Lmenu_8010C608
/* 12A6B4 8010C5C4 26940078 */   addiu     $s4, $s4, 0x78
/* 12A6B8 8010C5C8 8C440030 */  lw         $a0, 0x30($v0)
/* 12A6BC 8010C5CC 94460034 */  lhu        $a2, 0x34($v0)
/* 12A6C0 8010C5D0 0C003053 */  jal        func_8000C14C
/* 12A6C4 8010C5D4 02A02821 */   addu      $a1, $s5, $zero
/* 12A6C8 8010C5D8 02A02821 */  addu       $a1, $s5, $zero
/* 12A6CC 8010C5DC 24060001 */  addiu      $a2, $zero, 0x1
/* 12A6D0 8010C5E0 8E622A9C */  lw         $v0, 0x2A9C($s3)
/* 12A6D4 8010C5E4 02548021 */  addu       $s0, $s2, $s4
/* 12A6D8 8010C5E8 84440090 */  lh         $a0, 0x90($v0)
/* 12A6DC 8010C5EC 8C420094 */  lw         $v0, 0x94($v0)
/* 12A6E0 8010C5F0 0040F809 */  jalr       $v0
/* 12A6E4 8010C5F4 02042021 */   addu      $a0, $s0, $a0
/* 12A6E8 8010C5F8 26441FC0 */  addiu      $a0, $s2, 0x1FC0
/* 12A6EC 8010C5FC 0C047346 */  jal        func_menu_8011CD18
/* 12A6F0 8010C600 02002821 */   addu      $a1, $s0, $zero
/* 12A6F4 8010C604 26940078 */  addiu      $s4, $s4, 0x78
.Lmenu_8010C608:
/* 12A6F8 8010C608 26730078 */  addiu      $s3, $s3, 0x78
/* 12A6FC 8010C60C 0804316A */  j          .Lmenu_8010C5A8
/* 12A700 8010C610 26310001 */   addiu     $s1, $s1, 0x1
.Lmenu_8010C614:
/* 12A704 8010C614 26441FC0 */  addiu      $a0, $s2, 0x1FC0
/* 12A708 8010C618 0C0472E9 */  jal        func_menu_8011CBA4
/* 12A70C 8010C61C 00002821 */   addu      $a1, $zero, $zero
/* 12A710 8010C620 12C0000A */  beqz       $s6, .Lmenu_8010C64C
/* 12A714 8010C624 264419DC */   addiu     $a0, $s2, 0x19DC
/* 12A718 8010C628 0C048CEC */  jal        func_menu_801233B0
/* 12A71C 8010C62C 24050005 */   addiu     $a1, $zero, 0x5
/* 12A720 8010C630 3C04BFFF */  lui        $a0, (0xBFFFFFFF >> 16)
/* 12A724 8010C634 26431860 */  addiu      $v1, $s2, 0x1860
/* 12A728 8010C638 8C620018 */  lw         $v0, 0x18($v1)
/* 12A72C 8010C63C 3484FFFF */  ori        $a0, $a0, (0xBFFFFFFF & 0xFFFF)
/* 12A730 8010C640 00441024 */  and        $v0, $v0, $a0
/* 12A734 8010C644 0804319A */  j          .Lmenu_8010C668
/* 12A738 8010C648 AC620018 */   sw        $v0, 0x18($v1)
.Lmenu_8010C64C:
/* 12A73C 8010C64C 0C048D07 */  jal        func_menu_8012341C
/* 12A740 8010C650 24050005 */   addiu     $a1, $zero, 0x5
/* 12A744 8010C654 26421860 */  addiu      $v0, $s2, 0x1860
/* 12A748 8010C658 8C430018 */  lw         $v1, 0x18($v0)
/* 12A74C 8010C65C 3C044000 */  lui        $a0, (0x40000000 >> 16)
/* 12A750 8010C660 00641825 */  or         $v1, $v1, $a0
/* 12A754 8010C664 AC430018 */  sw         $v1, 0x18($v0)
.Lmenu_8010C668:
/* 12A758 8010C668 0C0431CE */  jal        func_menu_8010C738
/* 12A75C 8010C66C 02402021 */   addu      $a0, $s2, $zero
/* 12A760 8010C670 27A40010 */  addiu      $a0, $sp, 0x10
/* 12A764 8010C674 0C0016E2 */  jal        func_80005B88
/* 12A768 8010C678 24050002 */   addiu     $a1, $zero, 0x2
/* 12A76C 8010C67C 8FBF003C */  lw         $ra, 0x3C($sp)
/* 12A770 8010C680 8FB60038 */  lw         $s6, 0x38($sp)
/* 12A774 8010C684 8FB50034 */  lw         $s5, 0x34($sp)
/* 12A778 8010C688 8FB40030 */  lw         $s4, 0x30($sp)
/* 12A77C 8010C68C 8FB3002C */  lw         $s3, 0x2C($sp)
/* 12A780 8010C690 8FB20028 */  lw         $s2, 0x28($sp)
/* 12A784 8010C694 8FB10024 */  lw         $s1, 0x24($sp)
/* 12A788 8010C698 8FB00020 */  lw         $s0, 0x20($sp)
/* 12A78C 8010C69C 03E00008 */  jr         $ra
/* 12A790 8010C6A0 27BD0040 */   addiu     $sp, $sp, 0x40

glabel func_menu_8010C6A4
/* 12A794 8010C6A4 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 12A798 8010C6A8 00802821 */  addu       $a1, $a0, $zero
/* 12A79C 8010C6AC AFBF0010 */  sw         $ra, 0x10($sp)
/* 12A7A0 8010C6B0 94A20360 */  lhu        $v0, 0x360($a1)
/* 12A7A4 8010C6B4 24040002 */  addiu      $a0, $zero, 0x2
/* 12A7A8 8010C6B8 1444000A */  bne        $v0, $a0, .Lmenu_8010C6E4
/* 12A7AC 8010C6BC 24020006 */   addiu     $v0, $zero, 0x6
/* 12A7B0 8010C6C0 8CA20354 */  lw         $v0, 0x354($a1)
/* 12A7B4 8010C6C4 8C430000 */  lw         $v1, 0x0($v0)
/* 12A7B8 8010C6C8 8CA21FBC */  lw         $v0, 0x1FBC($a1)
/* 12A7BC 8010C6CC AC620104 */  sw         $v0, 0x104($v1)
/* 12A7C0 8010C6D0 8CA40354 */  lw         $a0, 0x354($a1)
/* 12A7C4 8010C6D4 0C0401B4 */  jal        func_menu_801006D0
/* 12A7C8 8010C6D8 24840004 */   addiu     $a0, $a0, 0x4
/* 12A7CC 8010C6DC 080431CB */  j          .Lmenu_8010C72C
/* 12A7D0 8010C6E0 00000000 */   nop
.Lmenu_8010C6E4:
/* 12A7D4 8010C6E4 94A30362 */  lhu        $v1, 0x362($a1)
/* 12A7D8 8010C6E8 14620006 */  bne        $v1, $v0, .Lmenu_8010C704
/* 12A7DC 8010C6EC 00000000 */   nop
/* 12A7E0 8010C6F0 8CA20354 */  lw         $v0, 0x354($a1)
/* 12A7E4 8010C6F4 8C430000 */  lw         $v1, 0x0($v0)
/* 12A7E8 8010C6F8 24020001 */  addiu      $v0, $zero, 0x1
/* 12A7EC 8010C6FC 080431C7 */  j          .Lmenu_8010C71C
/* 12A7F0 8010C700 AC620028 */   sw        $v0, 0x28($v1)
.Lmenu_8010C704:
/* 12A7F4 8010C704 8CA20354 */  lw         $v0, 0x354($a1)
/* 12A7F8 8010C708 8C420000 */  lw         $v0, 0x0($v0)
/* 12A7FC 8010C70C AC440028 */  sw         $a0, 0x28($v0)
/* 12A800 8010C710 8CA20354 */  lw         $v0, 0x354($a1)
/* 12A804 8010C714 8C420000 */  lw         $v0, 0x0($v0)
/* 12A808 8010C718 AC400104 */  sw         $zero, 0x104($v0)
.Lmenu_8010C71C:
/* 12A80C 8010C71C 8CA40354 */  lw         $a0, 0x354($a1)
/* 12A810 8010C720 94A50360 */  lhu        $a1, 0x360($a1)
/* 12A814 8010C724 0C0401A6 */  jal        func_menu_80100698
/* 12A818 8010C728 24840004 */   addiu     $a0, $a0, 0x4
.Lmenu_8010C72C:
/* 12A81C 8010C72C 8FBF0010 */  lw         $ra, 0x10($sp)
/* 12A820 8010C730 03E00008 */  jr         $ra
/* 12A824 8010C734 27BD0018 */   addiu     $sp, $sp, 0x18

glabel func_menu_8010C738
/* 12A828 8010C738 27BDFFC0 */  addiu      $sp, $sp, -0x40
/* 12A82C 8010C73C AFB20030 */  sw         $s2, 0x30($sp)
/* 12A830 8010C740 00809021 */  addu       $s2, $a0, $zero
/* 12A834 8010C744 AFBF0038 */  sw         $ra, 0x38($sp)
/* 12A838 8010C748 AFB30034 */  sw         $s3, 0x34($sp)
/* 12A83C 8010C74C AFB1002C */  sw         $s1, 0x2C($sp)
/* 12A840 8010C750 AFB00028 */  sw         $s0, 0x28($sp)
/* 12A844 8010C754 A3A00018 */  sb         $zero, 0x18($sp)
/* 12A848 8010C758 8E43064C */  lw         $v1, 0x64C($s2)
/* 12A84C 8010C75C 8C62012C */  lw         $v0, 0x12C($v1)
/* 12A850 8010C760 844401E8 */  lh         $a0, 0x1E8($v0)
/* 12A854 8010C764 8C4201EC */  lw         $v0, 0x1EC($v0)
/* 12A858 8010C768 0040F809 */  jalr       $v0
/* 12A85C 8010C76C 00642021 */   addu      $a0, $v1, $a0
/* 12A860 8010C770 8E53202C */  lw         $s3, 0x202C($s2)
/* 12A864 8010C774 8E421904 */  lw         $v0, 0x1904($s2)
/* 12A868 8010C778 00131880 */  sll        $v1, $s3, 2
/* 12A86C 8010C77C 00431021 */  addu       $v0, $v0, $v1
/* 12A870 8010C780 8C500048 */  lw         $s0, 0x48($v0)
/* 12A874 8010C784 12000049 */  beqz       $s0, .Lmenu_8010C8AC
/* 12A878 8010C788 2402001D */   addiu     $v0, $zero, 0x1D
/* 12A87C 8010C78C 8A060014 */  lwl        $a2, 0x14($s0)
/* 12A880 8010C790 9A060017 */  lwr        $a2, 0x17($s0)
/* 12A884 8010C794 8A070018 */  lwl        $a3, 0x18($s0)
/* 12A888 8010C798 9A07001B */  lwr        $a3, 0x1B($s0)
/* 12A88C 8010C79C ABA60010 */  swl        $a2, 0x10($sp)
/* 12A890 8010C7A0 BBA60013 */  swr        $a2, 0x13($sp)
/* 12A894 8010C7A4 ABA70014 */  swl        $a3, 0x14($sp)
/* 12A898 8010C7A8 BBA70017 */  swr        $a3, 0x17($sp)
/* 12A89C 8010C7AC 96430362 */  lhu        $v1, 0x362($s2)
/* 12A8A0 8010C7B0 1062000B */  beq        $v1, $v0, .Lmenu_8010C7E0
/* 12A8A4 8010C7B4 264403C0 */   addiu     $a0, $s2, 0x3C0
/* 12A8A8 8010C7B8 8A06001C */  lwl        $a2, 0x1C($s0)
/* 12A8AC 8010C7BC 9A06001F */  lwr        $a2, 0x1F($s0)
/* 12A8B0 8010C7C0 8A070020 */  lwl        $a3, 0x20($s0)
/* 12A8B4 8010C7C4 9A070023 */  lwr        $a3, 0x23($s0)
/* 12A8B8 8010C7C8 ABA60018 */  swl        $a2, 0x18($sp)
/* 12A8BC 8010C7CC BBA6001B */  swr        $a2, 0x1B($sp)
/* 12A8C0 8010C7D0 ABA7001C */  swl        $a3, 0x1C($sp)
/* 12A8C4 8010C7D4 BBA7001F */  swr        $a3, 0x1F($sp)
/* 12A8C8 8010C7D8 080431FE */  j          .Lmenu_8010C7F8
/* 12A8CC 8010C7DC 00000000 */   nop
.Lmenu_8010C7E0:
/* 12A8D0 8010C7E0 3C02800D */  lui        $v0, %hi(D_menu_800CEB00)
/* 12A8D4 8010C7E4 2449EB00 */  addiu      $t1, $v0, %lo(D_menu_800CEB00)
/* 12A8D8 8010C7E8 85260000 */  lh         $a2, 0x0($t1)
/* 12A8DC 8010C7EC 81270002 */  lb         $a3, 0x2($t1)
/* 12A8E0 8010C7F0 A7A60018 */  sh         $a2, 0x18($sp)
/* 12A8E4 8010C7F4 A3A7001A */  sb         $a3, 0x1A($sp)
.Lmenu_8010C7F8:
/* 12A8E8 8010C7F8 8E4203C0 */  lw         $v0, 0x3C0($s2)
/* 12A8EC 8010C7FC 14400003 */  bnez       $v0, .Lmenu_8010C80C
/* 12A8F0 8010C800 27A50010 */   addiu     $a1, $sp, 0x10
/* 12A8F4 8010C804 08043206 */  j          .Lmenu_8010C818
/* 12A8F8 8010C808 00008821 */   addu      $s1, $zero, $zero
.Lmenu_8010C80C:
/* 12A8FC 8010C80C 0C016427 */  jal        func_8005909C
/* 12A900 8010C810 00000000 */   nop
/* 12A904 8010C814 00408821 */  addu       $s1, $v0, $zero
.Lmenu_8010C818:
/* 12A908 8010C818 8A060004 */  lwl        $a2, 0x4($s0)
/* 12A90C 8010C81C 9A060007 */  lwr        $a2, 0x7($s0)
/* 12A910 8010C820 8A070008 */  lwl        $a3, 0x8($s0)
/* 12A914 8010C824 9A07000B */  lwr        $a3, 0xB($s0)
/* 12A918 8010C828 ABA60020 */  swl        $a2, 0x20($sp)
/* 12A91C 8010C82C BBA60023 */  swr        $a2, 0x23($sp)
/* 12A920 8010C830 ABA70024 */  swl        $a3, 0x24($sp)
/* 12A924 8010C834 BBA70027 */  swr        $a3, 0x27($sp)
/* 12A928 8010C838 8E440354 */  lw         $a0, 0x354($s2)
/* 12A92C 8010C83C 27A50020 */  addiu      $a1, $sp, 0x20
/* 12A930 8010C840 0C03CDA2 */  jal        func_menu_800F3688
/* 12A934 8010C844 24843DC0 */   addiu     $a0, $a0, 0x3DC0
/* 12A938 8010C848 12200010 */  beqz       $s1, .Lmenu_8010C88C
/* 12A93C 8010C84C AE422E0C */   sw        $v0, 0x2E0C($s2)
/* 12A940 8010C850 26500368 */  addiu      $s0, $s2, 0x368
/* 12A944 8010C854 8E0202B0 */  lw         $v0, 0x2B0($s0)
/* 12A948 8010C858 1222000C */  beq        $s1, $v0, .Lmenu_8010C88C
/* 12A94C 8010C85C 00000000 */   nop
/* 12A950 8010C860 02002021 */  addu       $a0, $s0, $zero
/* 12A954 8010C864 0C044A02 */  jal        func_menu_80112808
/* 12A958 8010C868 02202821 */   addu      $a1, $s1, $zero
/* 12A95C 8010C86C 8E0202B0 */  lw         $v0, 0x2B0($s0)
/* 12A960 8010C870 8C430044 */  lw         $v1, 0x44($v0)
/* 12A964 8010C874 02402021 */  addu       $a0, $s2, $zero
/* 12A968 8010C878 34630002 */  ori        $v1, $v1, 0x2
/* 12A96C 8010C87C AC430044 */  sw         $v1, 0x44($v0)
/* 12A970 8010C880 24020001 */  addiu      $v0, $zero, 0x1
/* 12A974 8010C884 0C043250 */  jal        func_menu_8010C940
/* 12A978 8010C888 AE422E10 */   sw        $v0, 0x2E10($s2)
.Lmenu_8010C88C:
/* 12A97C 8010C88C 8E440354 */  lw         $a0, 0x354($s2)
/* 12A980 8010C890 8E451904 */  lw         $a1, 0x1904($s2)
/* 12A984 8010C894 0C03B7CA */  jal        func_menu_800EDF28
/* 12A988 8010C898 24843DAC */   addiu     $a0, $a0, 0x3DAC
/* 12A98C 8010C89C 02402021 */  addu       $a0, $s2, $zero
/* 12A990 8010C8A0 00021080 */  sll        $v0, $v0, 2
/* 12A994 8010C8A4 0C0436C4 */  jal        func_menu_8010DB10
/* 12A998 8010C8A8 00532821 */   addu      $a1, $v0, $s3
.Lmenu_8010C8AC:
/* 12A99C 8010C8AC 93A20018 */  lbu        $v0, 0x18($sp)
/* 12A9A0 8010C8B0 10400003 */  beqz       $v0, .Lmenu_8010C8C0
/* 12A9A4 8010C8B4 02402021 */   addu      $a0, $s2, $zero
/* 12A9A8 8010C8B8 0C04364F */  jal        func_menu_8010D93C
/* 12A9AC 8010C8BC 27A50018 */   addiu     $a1, $sp, 0x18
.Lmenu_8010C8C0:
/* 12A9B0 8010C8C0 8FBF0038 */  lw         $ra, 0x38($sp)
/* 12A9B4 8010C8C4 8FB30034 */  lw         $s3, 0x34($sp)
/* 12A9B8 8010C8C8 8FB20030 */  lw         $s2, 0x30($sp)
/* 12A9BC 8010C8CC 8FB1002C */  lw         $s1, 0x2C($sp)
/* 12A9C0 8010C8D0 8FB00028 */  lw         $s0, 0x28($sp)
/* 12A9C4 8010C8D4 03E00008 */  jr         $ra
/* 12A9C8 8010C8D8 27BD0040 */   addiu     $sp, $sp, 0x40

glabel func_menu_8010C8DC
/* 12A9CC 8010C8DC 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* 12A9D0 8010C8E0 AFB00010 */  sw         $s0, 0x10($sp)
/* 12A9D4 8010C8E4 00808021 */  addu       $s0, $a0, $zero
/* 12A9D8 8010C8E8 AFBF0018 */  sw         $ra, 0x18($sp)
/* 12A9DC 8010C8EC AFB10014 */  sw         $s1, 0x14($sp)
/* 12A9E0 8010C8F0 8E032E08 */  lw         $v1, 0x2E08($s0)
/* 12A9E4 8010C8F4 00A08821 */  addu       $s1, $a1, $zero
/* 12A9E8 8010C8F8 0071102B */  sltu       $v0, $v1, $s1
/* 12A9EC 8010C8FC 10400007 */  beqz       $v0, .Lmenu_8010C91C
/* 12A9F0 8010C900 00711023 */   subu      $v0, $v1, $s1
/* 12A9F4 8010C904 8E022E10 */  lw         $v0, 0x2E10($s0)
/* 12A9F8 8010C908 2C420001 */  sltiu      $v0, $v0, 0x1
/* 12A9FC 8010C90C 0C043250 */  jal        func_menu_8010C940
/* 12AA00 8010C910 AE022E10 */   sw        $v0, 0x2E10($s0)
/* 12AA04 8010C914 08043249 */  j          .Lmenu_8010C924
/* 12AA08 8010C918 02002021 */   addu      $a0, $s0, $zero
.Lmenu_8010C91C:
/* 12AA0C 8010C91C AE022E08 */  sw         $v0, 0x2E08($s0)
/* 12AA10 8010C920 02002021 */  addu       $a0, $s0, $zero
.Lmenu_8010C924:
/* 12AA14 8010C924 0C03E681 */  jal        func_menu_800F9A04
/* 12AA18 8010C928 02202821 */   addu      $a1, $s1, $zero
/* 12AA1C 8010C92C 8FBF0018 */  lw         $ra, 0x18($sp)
/* 12AA20 8010C930 8FB10014 */  lw         $s1, 0x14($sp)
/* 12AA24 8010C934 8FB00010 */  lw         $s0, 0x10($sp)
/* 12AA28 8010C938 03E00008 */  jr         $ra
/* 12AA2C 8010C93C 27BD0020 */   addiu     $sp, $sp, 0x20

glabel func_menu_8010C940
/* 12AA30 8010C940 27BDFF98 */  addiu      $sp, $sp, -0x68
/* 12AA34 8010C944 AFB10054 */  sw         $s1, 0x54($sp)
/* 12AA38 8010C948 00808821 */  addu       $s1, $a0, $zero
/* 12AA3C 8010C94C AFB20058 */  sw         $s2, 0x58($sp)
/* 12AA40 8010C950 27B20040 */  addiu      $s2, $sp, 0x40
/* 12AA44 8010C954 02402021 */  addu       $a0, $s2, $zero
/* 12AA48 8010C958 AFBF0064 */  sw         $ra, 0x64($sp)
/* 12AA4C 8010C95C AFB40060 */  sw         $s4, 0x60($sp)
/* 12AA50 8010C960 AFB3005C */  sw         $s3, 0x5C($sp)
/* 12AA54 8010C964 0C0016DC */  jal        func_80005B70
/* 12AA58 8010C968 AFB00050 */   sw        $s0, 0x50($sp)
/* 12AA5C 8010C96C 96230362 */  lhu        $v1, 0x362($s1)
/* 12AA60 8010C970 2402001D */  addiu      $v0, $zero, 0x1D
/* 12AA64 8010C974 10620003 */  beq        $v1, $v0, .Lmenu_8010C984
/* 12AA68 8010C978 2413FFFF */   addiu     $s3, $zero, -0x1
/* 12AA6C 8010C97C 080432BE */  j          .Lmenu_8010CAF8
/* 12AA70 8010C980 02402021 */   addu      $a0, $s2, $zero
.Lmenu_8010C984:
/* 12AA74 8010C984 26242E14 */  addiu      $a0, $s1, 0x2E14
/* 12AA78 8010C988 00002821 */  addu       $a1, $zero, $zero
/* 12AA7C 8010C98C 0C000697 */  jal        func_80001A5C
/* 12AA80 8010C990 2406001E */   addiu     $a2, $zero, 0x1E
/* 12AA84 8010C994 26242E32 */  addiu      $a0, $s1, 0x2E32
/* 12AA88 8010C998 00002821 */  addu       $a1, $zero, $zero
/* 12AA8C 8010C99C 0C000697 */  jal        func_80001A5C
/* 12AA90 8010C9A0 24060014 */   addiu     $a2, $zero, 0x14
/* 12AA94 8010C9A4 27A40010 */  addiu      $a0, $sp, 0x10
/* 12AA98 8010C9A8 00002821 */  addu       $a1, $zero, $zero
/* 12AA9C 8010C9AC 0C000697 */  jal        func_80001A5C
/* 12AAA0 8010C9B0 2406001E */   addiu     $a2, $zero, 0x1E
/* 12AAA4 8010C9B4 02402021 */  addu       $a0, $s2, $zero
/* 12AAA8 8010C9B8 27A50010 */  addiu      $a1, $sp, 0x10
/* 12AAAC 8010C9BC 0C0016F6 */  jal        func_80005BD8
/* 12AAB0 8010C9C0 2406000E */   addiu     $a2, $zero, 0xE
/* 12AAB4 8010C9C4 8E240354 */  lw         $a0, 0x354($s1)
/* 12AAB8 8010C9C8 8E302E10 */  lw         $s0, 0x2E10($s1)
/* 12AABC 8010C9CC 24842624 */  addiu      $a0, $a0, 0x2624
/* 12AAC0 8010C9D0 0C03CA36 */  jal        func_menu_800F28D8
/* 12AAC4 8010C9D4 2E100001 */   sltiu     $s0, $s0, 0x1
/* 12AAC8 8010C9D8 02003021 */  addu       $a2, $s0, $zero
/* 12AACC 8010C9DC 0040A021 */  addu       $s4, $v0, $zero
/* 12AAD0 8010C9E0 02403821 */  addu       $a3, $s2, $zero
/* 12AAD4 8010C9E4 8E240354 */  lw         $a0, 0x354($s1)
/* 12AAD8 8010C9E8 8E252E0C */  lw         $a1, 0x2E0C($s1)
/* 12AADC 8010C9EC 0C03CA47 */  jal        func_menu_800F291C
/* 12AAE0 8010C9F0 24842624 */   addiu     $a0, $a0, 0x2624
/* 12AAE4 8010C9F4 00401821 */  addu       $v1, $v0, $zero
/* 12AAE8 8010C9F8 10600006 */  beqz       $v1, .Lmenu_8010CA14
/* 12AAEC 8010C9FC 2C62FFFF */   sltiu     $v0, $v1, -0x1
/* 12AAF0 8010CA00 10400004 */  beqz       $v0, .Lmenu_8010CA14
/* 12AAF4 8010CA04 26242E48 */   addiu     $a0, $s1, 0x2E48
/* 12AAF8 8010CA08 00609821 */  addu       $s3, $v1, $zero
/* 12AAFC 8010CA0C 0C001816 */  jal        func_80006058
/* 12AB00 8010CA10 02402821 */   addu      $a1, $s2, $zero
.Lmenu_8010CA14:
/* 12AB04 8010CA14 8E222E10 */  lw         $v0, 0x2E10($s1)
/* 12AB08 8010CA18 10400003 */  beqz       $v0, .Lmenu_8010CA28
/* 12AB0C 8010CA1C 26242D18 */   addiu     $a0, $s1, 0x2D18
/* 12AB10 8010CA20 0804328B */  j          .Lmenu_8010CA2C
/* 12AB14 8010CA24 24050046 */   addiu     $a1, $zero, 0x46
.Lmenu_8010CA28:
/* 12AB18 8010CA28 24050047 */  addiu      $a1, $zero, 0x47
.Lmenu_8010CA2C:
/* 12AB1C 8010CA2C 0C047D09 */  jal        func_menu_8011F424
/* 12AB20 8010CA30 00003021 */   addu      $a2, $zero, $zero
/* 12AB24 8010CA34 2402FFFF */  addiu      $v0, $zero, -0x1
/* 12AB28 8010CA38 1262000E */  beq        $s3, $v0, .Lmenu_8010CA74
/* 12AB2C 8010CA3C 02202021 */   addu      $a0, $s1, $zero
/* 12AB30 8010CA40 27B00030 */  addiu      $s0, $sp, 0x30
/* 12AB34 8010CA44 02002821 */  addu       $a1, $s0, $zero
/* 12AB38 8010CA48 0C0432C8 */  jal        func_menu_8010CB20
/* 12AB3C 8010CA4C 02603021 */   addu      $a2, $s3, $zero
/* 12AB40 8010CA50 02002021 */  addu       $a0, $s0, $zero
/* 12AB44 8010CA54 0C0016C8 */  jal        func_80005B20
/* 12AB48 8010CA58 26252E32 */   addiu     $a1, $s1, 0x2E32
/* 12AB4C 8010CA5C 26242CA0 */  addiu      $a0, $s1, 0x2CA0
/* 12AB50 8010CA60 26252E48 */  addiu      $a1, $s1, 0x2E48
/* 12AB54 8010CA64 0C047D27 */  jal        func_menu_8011F49C
/* 12AB58 8010CA68 00003021 */   addu      $a2, $zero, $zero
/* 12AB5C 8010CA6C 080432A6 */  j          .Lmenu_8010CA98
/* 12AB60 8010CA70 26242C28 */   addiu     $a0, $s1, 0x2C28
.Lmenu_8010CA74:
/* 12AB64 8010CA74 8E222E10 */  lw         $v0, 0x2E10($s1)
/* 12AB68 8010CA78 10400003 */  beqz       $v0, .Lmenu_8010CA88
/* 12AB6C 8010CA7C 26242CA0 */   addiu     $a0, $s1, 0x2CA0
/* 12AB70 8010CA80 080432A3 */  j          .Lmenu_8010CA8C
/* 12AB74 8010CA84 240500BE */   addiu     $a1, $zero, 0xBE
.Lmenu_8010CA88:
/* 12AB78 8010CA88 240500BF */  addiu      $a1, $zero, 0xBF
.Lmenu_8010CA8C:
/* 12AB7C 8010CA8C 0C047D09 */  jal        func_menu_8011F424
/* 12AB80 8010CA90 00003021 */   addu      $a2, $zero, $zero
/* 12AB84 8010CA94 26242C28 */  addiu      $a0, $s1, 0x2C28
.Lmenu_8010CA98:
/* 12AB88 8010CA98 26252E54 */  addiu      $a1, $s1, 0x2E54
/* 12AB8C 8010CA9C 0C047D27 */  jal        func_menu_8011F49C
/* 12AB90 8010CAA0 00003021 */   addu      $a2, $zero, $zero
/* 12AB94 8010CAA4 8E232E0C */  lw         $v1, 0x2E0C($s1)
/* 12AB98 8010CAA8 240209C4 */  addiu      $v0, $zero, 0x9C4
/* 12AB9C 8010CAAC AE222E08 */  sw         $v0, 0x2E08($s1)
/* 12ABA0 8010CAB0 24020001 */  addiu      $v0, $zero, 0x1
/* 12ABA4 8010CAB4 00621004 */  sllv       $v0, $v0, $v1
/* 12ABA8 8010CAB8 00541024 */  and        $v0, $v0, $s4
/* 12ABAC 8010CABC 3042FFFF */  andi       $v0, $v0, 0xFFFF
/* 12ABB0 8010CAC0 10400006 */  beqz       $v0, .Lmenu_8010CADC
/* 12ABB4 8010CAC4 26222D90 */   addiu     $v0, $s1, 0x2D90
/* 12ABB8 8010CAC8 8C430018 */  lw         $v1, 0x18($v0)
/* 12ABBC 8010CACC 3C044000 */  lui        $a0, (0x40000000 >> 16)
/* 12ABC0 8010CAD0 00641825 */  or         $v1, $v1, $a0
/* 12ABC4 8010CAD4 080432BD */  j          .Lmenu_8010CAF4
/* 12ABC8 8010CAD8 AC430018 */   sw        $v1, 0x18($v0)
.Lmenu_8010CADC:
/* 12ABCC 8010CADC 3C04BFFF */  lui        $a0, (0xBFFFFFFF >> 16)
/* 12ABD0 8010CAE0 26232D90 */  addiu      $v1, $s1, 0x2D90
/* 12ABD4 8010CAE4 8C620018 */  lw         $v0, 0x18($v1)
/* 12ABD8 8010CAE8 3484FFFF */  ori        $a0, $a0, (0xBFFFFFFF & 0xFFFF)
/* 12ABDC 8010CAEC 00441024 */  and        $v0, $v0, $a0
/* 12ABE0 8010CAF0 AC620018 */  sw         $v0, 0x18($v1)
.Lmenu_8010CAF4:
/* 12ABE4 8010CAF4 27A40040 */  addiu      $a0, $sp, 0x40
.Lmenu_8010CAF8:
/* 12ABE8 8010CAF8 0C0016E2 */  jal        func_80005B88
/* 12ABEC 8010CAFC 24050002 */   addiu     $a1, $zero, 0x2
/* 12ABF0 8010CB00 8FBF0064 */  lw         $ra, 0x64($sp)
/* 12ABF4 8010CB04 8FB40060 */  lw         $s4, 0x60($sp)
/* 12ABF8 8010CB08 8FB3005C */  lw         $s3, 0x5C($sp)
/* 12ABFC 8010CB0C 8FB20058 */  lw         $s2, 0x58($sp)
/* 12AC00 8010CB10 8FB10054 */  lw         $s1, 0x54($sp)
/* 12AC04 8010CB14 8FB00050 */  lw         $s0, 0x50($sp)
/* 12AC08 8010CB18 03E00008 */  jr         $ra
/* 12AC0C 8010CB1C 27BD0068 */   addiu     $sp, $sp, 0x68

glabel func_menu_8010CB20
/* 12AC10 8010CB20 00C03821 */  addu       $a3, $a2, $zero
/* 12AC14 8010CB24 3C029521 */  lui        $v0, (0x95217CB1 >> 16)
/* 12AC18 8010CB28 34427CB1 */  ori        $v0, $v0, (0x95217CB1 & 0xFFFF)
/* 12AC1C 8010CB2C 00E20019 */  multu      $a3, $v0
/* 12AC20 8010CB30 00A04821 */  addu       $t1, $a1, $zero
/* 12AC24 8010CB34 3C040009 */  lui        $a0, (0x927BF >> 16)
/* 12AC28 8010CB38 348427BF */  ori        $a0, $a0, (0x927BF & 0xFFFF)
/* 12AC2C 8010CB3C 00006010 */  mfhi       $t4
/* 12AC30 8010CB40 000C1D42 */  srl        $v1, $t4, 21
/* 12AC34 8010CB44 00031140 */  sll        $v0, $v1, 5
/* 12AC38 8010CB48 00431023 */  subu       $v0, $v0, $v1
/* 12AC3C 8010CB4C 00021080 */  sll        $v0, $v0, 2
/* 12AC40 8010CB50 00431021 */  addu       $v0, $v0, $v1
/* 12AC44 8010CB54 00021900 */  sll        $v1, $v0, 4
/* 12AC48 8010CB58 00621823 */  subu       $v1, $v1, $v0
/* 12AC4C 8010CB5C 00031100 */  sll        $v0, $v1, 4
/* 12AC50 8010CB60 00431023 */  subu       $v0, $v0, $v1
/* 12AC54 8010CB64 000211C0 */  sll        $v0, $v0, 7
/* 12AC58 8010CB68 00E23823 */  subu       $a3, $a3, $v0
/* 12AC5C 8010CB6C 0087202B */  sltu       $a0, $a0, $a3
/* 12AC60 8010CB70 10800006 */  beqz       $a0, .Lmenu_8010CB8C
/* 12AC64 8010CB74 A1200008 */   sb        $zero, 0x8($t1)
/* 12AC68 8010CB78 240B0007 */  addiu      $t3, $zero, 0x7
/* 12AC6C 8010CB7C 2402003A */  addiu      $v0, $zero, 0x3A
/* 12AC70 8010CB80 A1220005 */  sb         $v0, 0x5($t1)
/* 12AC74 8010CB84 080432E8 */  j          .Lmenu_8010CBA0
/* 12AC78 8010CB88 A1220002 */   sb        $v0, 0x2($t1)
.Lmenu_8010CB8C:
/* 12AC7C 8010CB8C 240B0006 */  addiu      $t3, $zero, 0x6
/* 12AC80 8010CB90 2402003A */  addiu      $v0, $zero, 0x3A
/* 12AC84 8010CB94 A1220004 */  sb         $v0, 0x4($t1)
/* 12AC88 8010CB98 A1220001 */  sb         $v0, 0x1($t1)
/* 12AC8C 8010CB9C A1200007 */  sb         $zero, 0x7($t1)
.Lmenu_8010CBA0:
/* 12AC90 8010CBA0 3C0ACCCC */  lui        $t2, (0xCCCCCCCD >> 16)
/* 12AC94 8010CBA4 354ACCCD */  ori        $t2, $t2, (0xCCCCCCCD & 0xFFFF)
/* 12AC98 8010CBA8 00EA0019 */  multu      $a3, $t2
/* 12AC9C 8010CBAC 00006010 */  mfhi       $t4
/* 12ACA0 8010CBB0 000C38C2 */  srl        $a3, $t4, 3
/* 12ACA4 8010CBB4 00000000 */  nop
/* 12ACA8 8010CBB8 00EA0019 */  multu      $a3, $t2
/* 12ACAC 8010CBBC 00006010 */  mfhi       $t4
/* 12ACB0 8010CBC0 000C10C2 */  srl        $v0, $t4, 3
/* 12ACB4 8010CBC4 00022880 */  sll        $a1, $v0, 2
/* 12ACB8 8010CBC8 00A22821 */  addu       $a1, $a1, $v0
/* 12ACBC 8010CBCC 00052840 */  sll        $a1, $a1, 1
/* 12ACC0 8010CBD0 00E52823 */  subu       $a1, $a3, $a1
/* 12ACC4 8010CBD4 00403821 */  addu       $a3, $v0, $zero
/* 12ACC8 8010CBD8 00EA0019 */  multu      $a3, $t2
/* 12ACCC 8010CBDC 00006010 */  mfhi       $t4
/* 12ACD0 8010CBE0 000C10C2 */  srl        $v0, $t4, 3
/* 12ACD4 8010CBE4 00022080 */  sll        $a0, $v0, 2
/* 12ACD8 8010CBE8 00822021 */  addu       $a0, $a0, $v0
/* 12ACDC 8010CBEC 00042040 */  sll        $a0, $a0, 1
/* 12ACE0 8010CBF0 00E42023 */  subu       $a0, $a3, $a0
/* 12ACE4 8010CBF4 00403821 */  addu       $a3, $v0, $zero
/* 12ACE8 8010CBF8 3C028888 */  lui        $v0, (0x88888889 >> 16)
/* 12ACEC 8010CBFC 34428889 */  ori        $v0, $v0, (0x88888889 & 0xFFFF)
/* 12ACF0 8010CC00 00E20019 */  multu      $a3, $v0
/* 12ACF4 8010CC04 3C066666 */  lui        $a2, (0x66666667 >> 16)
/* 12ACF8 8010CC08 34C66667 */  ori        $a2, $a2, (0x66666667 & 0xFFFF)
/* 12ACFC 8010CC0C 012B4821 */  addu       $t1, $t1, $t3
/* 12AD00 8010CC10 00006010 */  mfhi       $t4
/* 12AD04 8010CC14 000C4142 */  srl        $t0, $t4, 5
/* 12AD08 8010CC18 01001821 */  addu       $v1, $t0, $zero
/* 12AD0C 8010CC1C 00031100 */  sll        $v0, $v1, 4
/* 12AD10 8010CC20 00431023 */  subu       $v0, $v0, $v1
/* 12AD14 8010CC24 00021080 */  sll        $v0, $v0, 2
/* 12AD18 8010CC28 00E24023 */  subu       $t0, $a3, $v0
/* 12AD1C 8010CC2C 00603821 */  addu       $a3, $v1, $zero
/* 12AD20 8010CC30 00EA0019 */  multu      $a3, $t2
/* 12AD24 8010CC34 24A50030 */  addiu      $a1, $a1, 0x30
/* 12AD28 8010CC38 A1250000 */  sb         $a1, 0x0($t1)
/* 12AD2C 8010CC3C 24840030 */  addiu      $a0, $a0, 0x30
/* 12AD30 8010CC40 A124FFFF */  sb         $a0, -0x1($t1)
/* 12AD34 8010CC44 00006010 */  mfhi       $t4
/* 12AD38 8010CC48 000C10C2 */  srl        $v0, $t4, 3
/* 12AD3C 8010CC4C 00021880 */  sll        $v1, $v0, 2
/* 12AD40 8010CC50 00621821 */  addu       $v1, $v1, $v0
/* 12AD44 8010CC54 00031840 */  sll        $v1, $v1, 1
/* 12AD48 8010CC58 00E31823 */  subu       $v1, $a3, $v1
/* 12AD4C 8010CC5C 01060018 */  mult       $t0, $a2
/* 12AD50 8010CC60 00403821 */  addu       $a3, $v0, $zero
/* 12AD54 8010CC64 000817C3 */  sra        $v0, $t0, 31
/* 12AD58 8010CC68 24630030 */  addiu      $v1, $v1, 0x30
/* 12AD5C 8010CC6C A123FFFA */  sb         $v1, -0x6($t1)
/* 12AD60 8010CC70 00006010 */  mfhi       $t4
/* 12AD64 8010CC74 000C2083 */  sra        $a0, $t4, 2
/* 12AD68 8010CC78 00822023 */  subu       $a0, $a0, $v0
/* 12AD6C 8010CC7C 00041080 */  sll        $v0, $a0, 2
/* 12AD70 8010CC80 00441021 */  addu       $v0, $v0, $a0
/* 12AD74 8010CC84 00021040 */  sll        $v0, $v0, 1
/* 12AD78 8010CC88 00860018 */  mult       $a0, $a2
/* 12AD7C 8010CC8C 01021023 */  subu       $v0, $t0, $v0
/* 12AD80 8010CC90 24420030 */  addiu      $v0, $v0, 0x30
/* 12AD84 8010CC94 A122FFFD */  sb         $v0, -0x3($t1)
/* 12AD88 8010CC98 000417C3 */  sra        $v0, $a0, 31
/* 12AD8C 8010CC9C 00006010 */  mfhi       $t4
/* 12AD90 8010CCA0 000C1883 */  sra        $v1, $t4, 2
/* 12AD94 8010CCA4 00621823 */  subu       $v1, $v1, $v0
/* 12AD98 8010CCA8 00031080 */  sll        $v0, $v1, 2
/* 12AD9C 8010CCAC 00431021 */  addu       $v0, $v0, $v1
/* 12ADA0 8010CCB0 00021040 */  sll        $v0, $v0, 1
/* 12ADA4 8010CCB4 00822023 */  subu       $a0, $a0, $v0
/* 12ADA8 8010CCB8 24840030 */  addiu      $a0, $a0, 0x30
/* 12ADAC 8010CCBC 10E0000A */  beqz       $a3, .Lmenu_8010CCE8
/* 12ADB0 8010CCC0 A124FFFC */   sb        $a0, -0x4($t1)
/* 12ADB4 8010CCC4 00EA0019 */  multu      $a3, $t2
/* 12ADB8 8010CCC8 00006010 */  mfhi       $t4
/* 12ADBC 8010CCCC 000C18C2 */  srl        $v1, $t4, 3
/* 12ADC0 8010CCD0 00031080 */  sll        $v0, $v1, 2
/* 12ADC4 8010CCD4 00431021 */  addu       $v0, $v0, $v1
/* 12ADC8 8010CCD8 00021040 */  sll        $v0, $v0, 1
/* 12ADCC 8010CCDC 00E21023 */  subu       $v0, $a3, $v0
/* 12ADD0 8010CCE0 24420030 */  addiu      $v0, $v0, 0x30
/* 12ADD4 8010CCE4 A122FFF9 */  sb         $v0, -0x7($t1)
.Lmenu_8010CCE8:
/* 12ADD8 8010CCE8 03E00008 */  jr         $ra
/* 12ADDC 8010CCEC 00000000 */   nop

glabel func_menu_8010CCF0
/* 12ADE0 8010CCF0 27BDFFD8 */  addiu      $sp, $sp, -0x28
/* 12ADE4 8010CCF4 AFB3001C */  sw         $s3, 0x1C($sp)
/* 12ADE8 8010CCF8 00809821 */  addu       $s3, $a0, $zero
/* 12ADEC 8010CCFC AFBF0024 */  sw         $ra, 0x24($sp)
/* 12ADF0 8010CD00 AFB40020 */  sw         $s4, 0x20($sp)
/* 12ADF4 8010CD04 AFB20018 */  sw         $s2, 0x18($sp)
/* 12ADF8 8010CD08 AFB10014 */  sw         $s1, 0x14($sp)
/* 12ADFC 8010CD0C 0C0401D8 */  jal        func_menu_80100760
/* 12AE00 8010CD10 AFB00010 */   sw        $s0, 0x10($sp)
/* 12AE04 8010CD14 26640368 */  addiu      $a0, $s3, 0x368
/* 12AE08 8010CD18 3C02800D */  lui        $v0, %hi(D_menu_800CEC40)
/* 12AE0C 8010CD1C 2442EC40 */  addiu      $v0, $v0, %lo(D_menu_800CEC40)
/* 12AE10 8010CD20 0C047BA4 */  jal        func_menu_8011EE90
/* 12AE14 8010CD24 AE620000 */   sw        $v0, 0x0($s3)
/* 12AE18 8010CD28 0C047BA4 */  jal        func_menu_8011EE90
/* 12AE1C 8010CD2C 266403C4 */   addiu     $a0, $s3, 0x3C4
/* 12AE20 8010CD30 0C047BA4 */  jal        func_menu_8011EE90
/* 12AE24 8010CD34 26640420 */   addiu     $a0, $s3, 0x420
/* 12AE28 8010CD38 0C044D38 */  jal        func_menu_801134E0
/* 12AE2C 8010CD3C 2664047C */   addiu     $a0, $s3, 0x47C
/* 12AE30 8010CD40 26700E70 */  addiu      $s0, $s3, 0xE70
/* 12AE34 8010CD44 0C04729C */  jal        func_menu_8011CA70
/* 12AE38 8010CD48 02002021 */   addu      $a0, $s0, $zero
/* 12AE3C 8010CD4C 26720F04 */  addiu      $s2, $s3, 0xF04
/* 12AE40 8010CD50 24110009 */  addiu      $s1, $zero, 0x9
/* 12AE44 8010CD54 2414FFFF */  addiu      $s4, $zero, -0x1
/* 12AE48 8010CD58 3C02800D */  lui        $v0, %hi(D_menu_800D0740)
/* 12AE4C 8010CD5C 24420740 */  addiu      $v0, $v0, %lo(D_menu_800D0740)
/* 12AE50 8010CD60 AE020054 */  sw         $v0, 0x54($s0)
.Lmenu_8010CD64:
/* 12AE54 8010CD64 0C047CA8 */  jal        func_menu_8011F2A0
/* 12AE58 8010CD68 02402021 */   addu      $a0, $s2, $zero
/* 12AE5C 8010CD6C 2631FFFF */  addiu      $s1, $s1, -0x1
/* 12AE60 8010CD70 1634FFFC */  bne        $s1, $s4, .Lmenu_8010CD64
/* 12AE64 8010CD74 26520078 */   addiu     $s2, $s2, 0x78
/* 12AE68 8010CD78 0C040F38 */  jal        func_menu_80103CE0
/* 12AE6C 8010CD7C 266413B4 */   addiu     $a0, $s3, 0x13B4
/* 12AE70 8010CD80 0C040207 */  jal        func_menu_8010081C
/* 12AE74 8010CD84 02602021 */   addu      $a0, $s3, $zero
/* 12AE78 8010CD88 02601021 */  addu       $v0, $s3, $zero
/* 12AE7C 8010CD8C 8FBF0024 */  lw         $ra, 0x24($sp)
/* 12AE80 8010CD90 8FB40020 */  lw         $s4, 0x20($sp)
/* 12AE84 8010CD94 8FB3001C */  lw         $s3, 0x1C($sp)
/* 12AE88 8010CD98 8FB20018 */  lw         $s2, 0x18($sp)
/* 12AE8C 8010CD9C 8FB10014 */  lw         $s1, 0x14($sp)
/* 12AE90 8010CDA0 8FB00010 */  lw         $s0, 0x10($sp)
/* 12AE94 8010CDA4 03E00008 */  jr         $ra
/* 12AE98 8010CDA8 27BD0028 */   addiu     $sp, $sp, 0x28

glabel func_menu_8010CDAC
/* 12AE9C 8010CDAC 27BDFFD8 */  addiu      $sp, $sp, -0x28
/* 12AEA0 8010CDB0 AFB10014 */  sw         $s1, 0x14($sp)
/* 12AEA4 8010CDB4 00808821 */  addu       $s1, $a0, $zero
/* 12AEA8 8010CDB8 AFB3001C */  sw         $s3, 0x1C($sp)
/* 12AEAC 8010CDBC 00A09821 */  addu       $s3, $a1, $zero
/* 12AEB0 8010CDC0 3C02800D */  lui        $v0, %hi(D_menu_800CEC40)
/* 12AEB4 8010CDC4 2442EC40 */  addiu      $v0, $v0, %lo(D_menu_800CEC40)
/* 12AEB8 8010CDC8 AFBF0020 */  sw         $ra, 0x20($sp)
/* 12AEBC 8010CDCC AFB20018 */  sw         $s2, 0x18($sp)
/* 12AEC0 8010CDD0 AFB00010 */  sw         $s0, 0x10($sp)
/* 12AEC4 8010CDD4 0C040232 */  jal        func_menu_801008C8
/* 12AEC8 8010CDD8 AE220000 */   sw        $v0, 0x0($s1)
/* 12AECC 8010CDDC 263013B4 */  addiu      $s0, $s1, 0x13B4
/* 12AED0 8010CDE0 02002021 */  addu       $a0, $s0, $zero
/* 12AED4 8010CDE4 0C040F4B */  jal        func_menu_80103D2C
/* 12AED8 8010CDE8 24050002 */   addiu     $a1, $zero, 0x2
/* 12AEDC 8010CDEC 26220F04 */  addiu      $v0, $s1, 0xF04
/* 12AEE0 8010CDF0 1040000D */  beqz       $v0, .Lmenu_8010CE28
/* 12AEE4 8010CDF4 26240E70 */   addiu     $a0, $s1, 0xE70
/* 12AEE8 8010CDF8 1050000B */  beq        $v0, $s0, .Lmenu_8010CE28
/* 12AEEC 8010CDFC 00409021 */   addu      $s2, $v0, $zero
/* 12AEF0 8010CE00 2610FF88 */  addiu      $s0, $s0, -0x78
.Lmenu_8010CE04:
/* 12AEF4 8010CE04 8E020054 */  lw         $v0, 0x54($s0)
/* 12AEF8 8010CE08 24050002 */  addiu      $a1, $zero, 0x2
/* 12AEFC 8010CE0C 84440010 */  lh         $a0, 0x10($v0)
/* 12AF00 8010CE10 8C420014 */  lw         $v0, 0x14($v0)
/* 12AF04 8010CE14 0040F809 */  jalr       $v0
/* 12AF08 8010CE18 02042021 */   addu      $a0, $s0, $a0
/* 12AF0C 8010CE1C 1650FFF9 */  bne        $s2, $s0, .Lmenu_8010CE04
/* 12AF10 8010CE20 2610FF88 */   addiu     $s0, $s0, -0x78
/* 12AF14 8010CE24 26240E70 */  addiu      $a0, $s1, 0xE70
.Lmenu_8010CE28:
/* 12AF18 8010CE28 0C0472AB */  jal        func_menu_8011CAAC
/* 12AF1C 8010CE2C 24050002 */   addiu     $a1, $zero, 0x2
/* 12AF20 8010CE30 2624047C */  addiu      $a0, $s1, 0x47C
/* 12AF24 8010CE34 0C044D49 */  jal        func_menu_80113524
/* 12AF28 8010CE38 24050002 */   addiu     $a1, $zero, 0x2
/* 12AF2C 8010CE3C 26240420 */  addiu      $a0, $s1, 0x420
/* 12AF30 8010CE40 0C047BB3 */  jal        func_menu_8011EECC
/* 12AF34 8010CE44 24050002 */   addiu     $a1, $zero, 0x2
/* 12AF38 8010CE48 262403C4 */  addiu      $a0, $s1, 0x3C4
/* 12AF3C 8010CE4C 0C047BB3 */  jal        func_menu_8011EECC
/* 12AF40 8010CE50 24050002 */   addiu     $a1, $zero, 0x2
/* 12AF44 8010CE54 26240368 */  addiu      $a0, $s1, 0x368
/* 12AF48 8010CE58 0C047BB3 */  jal        func_menu_8011EECC
/* 12AF4C 8010CE5C 24050002 */   addiu     $a1, $zero, 0x2
/* 12AF50 8010CE60 02202021 */  addu       $a0, $s1, $zero
/* 12AF54 8010CE64 0C0401EF */  jal        func_menu_801007BC
/* 12AF58 8010CE68 02602821 */   addu      $a1, $s3, $zero
/* 12AF5C 8010CE6C 8FBF0020 */  lw         $ra, 0x20($sp)
/* 12AF60 8010CE70 8FB3001C */  lw         $s3, 0x1C($sp)
/* 12AF64 8010CE74 8FB20018 */  lw         $s2, 0x18($sp)
/* 12AF68 8010CE78 8FB10014 */  lw         $s1, 0x14($sp)
/* 12AF6C 8010CE7C 8FB00010 */  lw         $s0, 0x10($sp)
/* 12AF70 8010CE80 03E00008 */  jr         $ra
/* 12AF74 8010CE84 27BD0028 */   addiu     $sp, $sp, 0x28

glabel func_menu_8010CE88
/* 12AF78 8010CE88 27BDFFD0 */  addiu      $sp, $sp, -0x30
/* 12AF7C 8010CE8C AFB30024 */  sw         $s3, 0x24($sp)
/* 12AF80 8010CE90 00809821 */  addu       $s3, $a0, $zero
/* 12AF84 8010CE94 26650368 */  addiu      $a1, $s3, 0x368
/* 12AF88 8010CE98 24060052 */  addiu      $a2, $zero, 0x52
/* 12AF8C 8010CE9C 00C03821 */  addu       $a3, $a2, $zero
/* 12AF90 8010CEA0 AFBF002C */  sw         $ra, 0x2C($sp)
/* 12AF94 8010CEA4 AFB40028 */  sw         $s4, 0x28($sp)
/* 12AF98 8010CEA8 AFB20020 */  sw         $s2, 0x20($sp)
/* 12AF9C 8010CEAC AFB1001C */  sw         $s1, 0x1C($sp)
/* 12AFA0 8010CEB0 0C04675B */  jal        func_menu_80119D6C
/* 12AFA4 8010CEB4 AFB00018 */   sw        $s0, 0x18($sp)
/* 12AFA8 8010CEB8 8E620354 */  lw         $v0, 0x354($s3)
/* 12AFAC 8010CEBC 24482624 */  addiu      $t0, $v0, 0x2624
/* 12AFB0 8010CEC0 8D030004 */  lw         $v1, 0x4($t0)
/* 12AFB4 8010CEC4 2402FFFF */  addiu      $v0, $zero, -0x1
/* 12AFB8 8010CEC8 1462003B */  bne        $v1, $v0, .Lmenu_8010CFB8
/* 12AFBC 8010CECC 24020001 */   addiu     $v0, $zero, 0x1
/* 12AFC0 8010CED0 02602021 */  addu       $a0, $s3, $zero
/* 12AFC4 8010CED4 266503C4 */  addiu      $a1, $s3, 0x3C4
/* 12AFC8 8010CED8 2406005B */  addiu      $a2, $zero, 0x5B
/* 12AFCC 8010CEDC 91140022 */  lbu        $s4, 0x22($t0)
/* 12AFD0 8010CEE0 0C04675B */  jal        func_menu_80119D6C
/* 12AFD4 8010CEE4 00C03821 */   addu      $a3, $a2, $zero
/* 12AFD8 8010CEE8 02602021 */  addu       $a0, $s3, $zero
/* 12AFDC 8010CEEC 26650420 */  addiu      $a1, $s3, 0x420
/* 12AFE0 8010CEF0 2406005C */  addiu      $a2, $zero, 0x5C
/* 12AFE4 8010CEF4 0C04675B */  jal        func_menu_80119D6C
/* 12AFE8 8010CEF8 00C03821 */   addu      $a3, $a2, $zero
/* 12AFEC 8010CEFC 02602021 */  addu       $a0, $s3, $zero
/* 12AFF0 8010CF00 26700E70 */  addiu      $s0, $s3, 0xE70
/* 12AFF4 8010CF04 02002821 */  addu       $a1, $s0, $zero
/* 12AFF8 8010CF08 24060046 */  addiu      $a2, $zero, 0x46
/* 12AFFC 8010CF0C 0C046966 */  jal        func_menu_8011A598
/* 12B000 8010CF10 24070044 */   addiu     $a3, $zero, 0x44
/* 12B004 8010CF14 02602021 */  addu       $a0, $s3, $zero
/* 12B008 8010CF18 2665047C */  addiu      $a1, $s3, 0x47C
/* 12B00C 8010CF1C 02003021 */  addu       $a2, $s0, $zero
/* 12B010 8010CF20 24070145 */  addiu      $a3, $zero, 0x145
/* 12B014 8010CF24 24020055 */  addiu      $v0, $zero, 0x55
/* 12B018 8010CF28 0C04699A */  jal        func_menu_8011A668
/* 12B01C 8010CF2C AFA20010 */   sw        $v0, 0x10($sp)
/* 12B020 8010CF30 00008821 */  addu       $s1, $zero, $zero
/* 12B024 8010CF34 24120F04 */  addiu      $s2, $zero, 0xF04
.Lmenu_8010CF38:
/* 12B028 8010CF38 2622009D */  addiu      $v0, $s1, 0x9D
/* 12B02C 8010CF3C 3042FFFF */  andi       $v0, $v0, 0xFFFF
/* 12B030 8010CF40 AFA20010 */  sw         $v0, 0x10($sp)
/* 12B034 8010CF44 02602021 */  addu       $a0, $s3, $zero
/* 12B038 8010CF48 02728021 */  addu       $s0, $s3, $s2
/* 12B03C 8010CF4C 02002821 */  addu       $a1, $s0, $zero
/* 12B040 8010CF50 2406009E */  addiu      $a2, $zero, 0x9E
/* 12B044 8010CF54 0C04679E */  jal        func_menu_80119E78
/* 12B048 8010CF58 24070040 */   addiu     $a3, $zero, 0x40
/* 12B04C 8010CF5C 26640E70 */  addiu      $a0, $s3, 0xE70
/* 12B050 8010CF60 0C047346 */  jal        func_menu_8011CD18
/* 12B054 8010CF64 02002821 */   addu      $a1, $s0, $zero
/* 12B058 8010CF68 26310001 */  addiu      $s1, $s1, 0x1
/* 12B05C 8010CF6C 2A22000A */  slti       $v0, $s1, 0xA
/* 12B060 8010CF70 1440FFF1 */  bnez       $v0, .Lmenu_8010CF38
/* 12B064 8010CF74 26520078 */   addiu     $s2, $s2, 0x78
/* 12B068 8010CF78 26640E70 */  addiu      $a0, $s3, 0xE70
/* 12B06C 8010CF7C 0C0472E9 */  jal        func_menu_8011CBA4
/* 12B070 8010CF80 02802821 */   addu      $a1, $s4, $zero
/* 12B074 8010CF84 24020072 */  addiu      $v0, $zero, 0x72
/* 12B078 8010CF88 AFA20010 */  sw         $v0, 0x10($sp)
/* 12B07C 8010CF8C 02602021 */  addu       $a0, $s3, $zero
/* 12B080 8010CF90 249013B4 */  addiu      $s0, $a0, 0x13B4
/* 12B084 8010CF94 02002821 */  addu       $a1, $s0, $zero
/* 12B088 8010CF98 24060049 */  addiu      $a2, $zero, 0x49
/* 12B08C 8010CF9C 0C040297 */  jal        func_menu_80100A5C
/* 12B090 8010CFA0 2407004F */   addiu     $a3, $zero, 0x4F
/* 12B094 8010CFA4 02002021 */  addu       $a0, $s0, $zero
/* 12B098 8010CFA8 0C048D3F */  jal        func_menu_801234FC
/* 12B09C 8010CFAC 24050005 */   addiu     $a1, $zero, 0x5
/* 12B0A0 8010CFB0 080433EF */  j          .Lmenu_8010CFBC
/* 12B0A4 8010CFB4 00000000 */   nop
.Lmenu_8010CFB8:
/* 12B0A8 8010CFB8 AE620364 */  sw         $v0, 0x364($s3)
.Lmenu_8010CFBC:
/* 12B0AC 8010CFBC 8FBF002C */  lw         $ra, 0x2C($sp)
/* 12B0B0 8010CFC0 8FB40028 */  lw         $s4, 0x28($sp)
/* 12B0B4 8010CFC4 8FB30024 */  lw         $s3, 0x24($sp)
/* 12B0B8 8010CFC8 8FB20020 */  lw         $s2, 0x20($sp)
/* 12B0BC 8010CFCC 8FB1001C */  lw         $s1, 0x1C($sp)
/* 12B0C0 8010CFD0 8FB00018 */  lw         $s0, 0x18($sp)
/* 12B0C4 8010CFD4 03E00008 */  jr         $ra
/* 12B0C8 8010CFD8 27BD0030 */   addiu     $sp, $sp, 0x30

glabel func_menu_8010CFDC
/* 12B0CC 8010CFDC 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 12B0D0 8010CFE0 AFBF0010 */  sw         $ra, 0x10($sp)
/* 12B0D4 8010CFE4 0C040214 */  jal        func_menu_80100850
/* 12B0D8 8010CFE8 00000000 */   nop
/* 12B0DC 8010CFEC 8FBF0010 */  lw         $ra, 0x10($sp)
/* 12B0E0 8010CFF0 0002102B */  sltu       $v0, $zero, $v0
/* 12B0E4 8010CFF4 03E00008 */  jr         $ra
/* 12B0E8 8010CFF8 27BD0018 */   addiu     $sp, $sp, 0x18

glabel func_menu_8010CFFC
/* 12B0EC 8010CFFC 248213B4 */  addiu      $v0, $a0, 0x13B4
/* 12B0F0 8010D000 14A20002 */  bne        $a1, $v0, .Lmenu_8010D00C
/* 12B0F4 8010D004 24020001 */   addiu     $v0, $zero, 0x1
/* 12B0F8 8010D008 AC820364 */  sw         $v0, 0x364($a0)
.Lmenu_8010D00C:
/* 12B0FC 8010D00C 03E00008 */  jr         $ra
/* 12B100 8010D010 AC85035C */   sw        $a1, 0x35C($a0)

glabel func_menu_8010D014
/* 12B104 8010D014 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 12B108 8010D018 AFB00010 */  sw         $s0, 0x10($sp)
/* 12B10C 8010D01C 00808021 */  addu       $s0, $a0, $zero
/* 12B110 8010D020 AFBF0014 */  sw         $ra, 0x14($sp)
/* 12B114 8010D024 8E0300B8 */  lw         $v1, 0xB8($s0)
/* 12B118 8010D028 8C62012C */  lw         $v0, 0x12C($v1)
/* 12B11C 8010D02C 844401E8 */  lh         $a0, 0x1E8($v0)
/* 12B120 8010D030 8C4201EC */  lw         $v0, 0x1EC($v0)
/* 12B124 8010D034 0040F809 */  jalr       $v0
/* 12B128 8010D038 00642021 */   addu      $a0, $v1, $a0
/* 12B12C 8010D03C 8E040354 */  lw         $a0, 0x354($s0)
/* 12B130 8010D040 0C0401B4 */  jal        func_menu_801006D0
/* 12B134 8010D044 24840004 */   addiu     $a0, $a0, 0x4
/* 12B138 8010D048 8E060354 */  lw         $a2, 0x354($s0)
/* 12B13C 8010D04C 24C52624 */  addiu      $a1, $a2, 0x2624
/* 12B140 8010D050 8CA30004 */  lw         $v1, 0x4($a1)
/* 12B144 8010D054 2402FFFF */  addiu      $v0, $zero, -0x1
/* 12B148 8010D058 14620007 */  bne        $v1, $v0, .Lmenu_8010D078
/* 12B14C 8010D05C 00000000 */   nop
/* 12B150 8010D060 8E040EDC */  lw         $a0, 0xEDC($s0)
/* 12B154 8010D064 90A20022 */  lbu        $v0, 0x22($a1)
/* 12B158 8010D068 10440003 */  beq        $v0, $a0, .Lmenu_8010D078
/* 12B15C 8010D06C 24020001 */   addiu     $v0, $zero, 0x1
/* 12B160 8010D070 A0A40022 */  sb         $a0, 0x22($a1)
/* 12B164 8010D074 ACC22624 */  sw         $v0, 0x2624($a2)
.Lmenu_8010D078:
/* 12B168 8010D078 8FBF0014 */  lw         $ra, 0x14($sp)
/* 12B16C 8010D07C 8FB00010 */  lw         $s0, 0x10($sp)
/* 12B170 8010D080 03E00008 */  jr         $ra
/* 12B174 8010D084 27BD0018 */   addiu     $sp, $sp, 0x18
