.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text, "ax"

glabel func_menu_8011DD50
/* 13BE40 8011DD50 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 13BE44 8011DD54 AFB00010 */  sw         $s0, 0x10($sp)
/* 13BE48 8011DD58 AFBF0014 */  sw         $ra, 0x14($sp)
/* 13BE4C 8011DD5C 0C04758C */  jal        func_menu_8011D630
/* 13BE50 8011DD60 00808021 */   addu      $s0, $a0, $zero
/* 13BE54 8011DD64 3C02800D */  lui        $v0, %hi(D_menu_800D0948)
/* 13BE58 8011DD68 24420948 */  addiu      $v0, $v0, %lo(D_menu_800D0948)
/* 13BE5C 8011DD6C 02002021 */  addu       $a0, $s0, $zero
/* 13BE60 8011DD70 0C0475B7 */  jal        func_menu_8011D6DC
/* 13BE64 8011DD74 AE020054 */   sw        $v0, 0x54($s0)
/* 13BE68 8011DD78 02001021 */  addu       $v0, $s0, $zero
/* 13BE6C 8011DD7C 8FBF0014 */  lw         $ra, 0x14($sp)
/* 13BE70 8011DD80 8FB00010 */  lw         $s0, 0x10($sp)
/* 13BE74 8011DD84 03E00008 */  jr         $ra
/* 13BE78 8011DD88 27BD0018 */   addiu     $sp, $sp, 0x18

glabel func_menu_8011DD8C
/* 13BE7C 8011DD8C 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* 13BE80 8011DD90 AFB00010 */  sw         $s0, 0x10($sp)
/* 13BE84 8011DD94 00808021 */  addu       $s0, $a0, $zero
/* 13BE88 8011DD98 AFB10014 */  sw         $s1, 0x14($sp)
/* 13BE8C 8011DD9C 00A08821 */  addu       $s1, $a1, $zero
/* 13BE90 8011DDA0 3C02800D */  lui        $v0, %hi(D_menu_800D0948)
/* 13BE94 8011DDA4 24420948 */  addiu      $v0, $v0, %lo(D_menu_800D0948)
/* 13BE98 8011DDA8 AFBF0018 */  sw         $ra, 0x18($sp)
/* 13BE9C 8011DDAC 0C048BC6 */  jal        func_menu_80122F18
/* 13BEA0 8011DDB0 AE020054 */   sw        $v0, 0x54($s0)
/* 13BEA4 8011DDB4 02002021 */  addu       $a0, $s0, $zero
/* 13BEA8 8011DDB8 0C04759F */  jal        func_menu_8011D67C
/* 13BEAC 8011DDBC 02202821 */   addu      $a1, $s1, $zero
/* 13BEB0 8011DDC0 8FBF0018 */  lw         $ra, 0x18($sp)
/* 13BEB4 8011DDC4 8FB10014 */  lw         $s1, 0x14($sp)
/* 13BEB8 8011DDC8 8FB00010 */  lw         $s0, 0x10($sp)
/* 13BEBC 8011DDCC 03E00008 */  jr         $ra
/* 13BEC0 8011DDD0 27BD0020 */   addiu     $sp, $sp, 0x20

glabel func_menu_8011DDD4
/* 13BEC4 8011DDD4 00802821 */  addu       $a1, $a0, $zero
/* 13BEC8 8011DDD8 24A4061C */  addiu      $a0, $a1, 0x61C
/* 13BECC 8011DDDC 8C830008 */  lw         $v1, 0x8($a0)
/* 13BED0 8011DDE0 8CA2061C */  lw         $v0, 0x61C($a1)
/* 13BED4 8011DDE4 00621823 */  subu       $v1, $v1, $v0
/* 13BED8 8011DDE8 8CA201E4 */  lw         $v0, 0x1E4($a1)
/* 13BEDC 8011DDEC 00031843 */  sra        $v1, $v1, 1
/* 13BEE0 8011DDF0 00431021 */  addu       $v0, $v0, $v1
/* 13BEE4 8011DDF4 ACA206C4 */  sw         $v0, 0x6C4($a1)
/* 13BEE8 8011DDF8 8C830008 */  lw         $v1, 0x8($a0)
/* 13BEEC 8011DDFC 8CA2061C */  lw         $v0, 0x61C($a1)
/* 13BEF0 8011DE00 8CA406C4 */  lw         $a0, 0x6C4($a1)
/* 13BEF4 8011DE04 00621823 */  subu       $v1, $v1, $v0
/* 13BEF8 8011DE08 8CA203F8 */  lw         $v0, 0x3F8($a1)
/* 13BEFC 8011DE0C 00031843 */  sra        $v1, $v1, 1
/* 13BF00 8011DE10 00431023 */  subu       $v0, $v0, $v1
/* 13BF04 8011DE14 ACA206C8 */  sw         $v0, 0x6C8($a1)
/* 13BF08 8011DE18 00441023 */  subu       $v0, $v0, $a0
/* 13BF0C 8011DE1C 8CA306BC */  lw         $v1, 0x6BC($a1)
/* 13BF10 8011DE20 44821000 */  mtc1       $v0, $f2
/* 13BF14 8011DE24 468010A0 */  cvt.s.w    $f2, $f2
/* 13BF18 8011DE28 28620003 */  slti       $v0, $v1, 0x3
/* 13BF1C 8011DE2C 14400006 */  bnez       $v0, .Lmenu_8011DE48
/* 13BF20 8011DE30 E4A206CC */   swc1      $f2, 0x6CC($a1)
/* 13BF24 8011DE34 2462FFFF */  addiu      $v0, $v1, -0x1
/* 13BF28 8011DE38 44820000 */  mtc1       $v0, $f0
/* 13BF2C 8011DE3C 46800020 */  cvt.s.w    $f0, $f0
/* 13BF30 8011DE40 46001003 */  div.s      $f0, $f2, $f0
/* 13BF34 8011DE44 E4A006CC */  swc1       $f0, 0x6CC($a1)
.Lmenu_8011DE48:
/* 13BF38 8011DE48 03E00008 */  jr         $ra
/* 13BF3C 8011DE4C 00000000 */   nop

glabel func_menu_8011DE50
/* 13BF40 8011DE50 27BDFFD8 */  addiu      $sp, $sp, -0x28
/* 13BF44 8011DE54 AFB00020 */  sw         $s0, 0x20($sp)
/* 13BF48 8011DE58 00808021 */  addu       $s0, $a0, $zero
/* 13BF4C 8011DE5C AFBF0024 */  sw         $ra, 0x24($sp)
/* 13BF50 8011DE60 AFA00014 */  sw         $zero, 0x14($sp)
/* 13BF54 8011DE64 AFA00010 */  sw         $zero, 0x10($sp)
/* 13BF58 8011DE68 8E02003C */  lw         $v0, 0x3C($s0)
/* 13BF5C 8011DE6C 8E030034 */  lw         $v1, 0x34($s0)
/* 13BF60 8011DE70 260401AC */  addiu      $a0, $s0, 0x1AC
/* 13BF64 8011DE74 00431023 */  subu       $v0, $v0, $v1
/* 13BF68 8011DE78 AFA2001C */  sw         $v0, 0x1C($sp)
/* 13BF6C 8011DE7C 8E0201E4 */  lw         $v0, 0x1E4($s0)
/* 13BF70 8011DE80 8E0301DC */  lw         $v1, 0x1DC($s0)
/* 13BF74 8011DE84 27A50010 */  addiu      $a1, $sp, 0x10
/* 13BF78 8011DE88 00431023 */  subu       $v0, $v0, $v1
/* 13BF7C 8011DE8C 0C04905A */  jal        func_menu_80124168
/* 13BF80 8011DE90 AFA20018 */   sw        $v0, 0x18($sp)
/* 13BF84 8011DE94 8E030038 */  lw         $v1, 0x38($s0)
/* 13BF88 8011DE98 8E020030 */  lw         $v0, 0x30($s0)
/* 13BF8C 8011DE9C 260403C8 */  addiu      $a0, $s0, 0x3C8
/* 13BF90 8011DEA0 00621823 */  subu       $v1, $v1, $v0
/* 13BF94 8011DEA4 AFA30018 */  sw         $v1, 0x18($sp)
/* 13BF98 8011DEA8 8E020400 */  lw         $v0, 0x400($s0)
/* 13BF9C 8011DEAC 8E0603F8 */  lw         $a2, 0x3F8($s0)
/* 13BFA0 8011DEB0 27A50010 */  addiu      $a1, $sp, 0x10
/* 13BFA4 8011DEB4 00461023 */  subu       $v0, $v0, $a2
/* 13BFA8 8011DEB8 00621823 */  subu       $v1, $v1, $v0
/* 13BFAC 8011DEBC 0C04905A */  jal        func_menu_80124168
/* 13BFB0 8011DEC0 AFA30010 */   sw        $v1, 0x10($sp)
/* 13BFB4 8011DEC4 8FBF0024 */  lw         $ra, 0x24($sp)
/* 13BFB8 8011DEC8 8FB00020 */  lw         $s0, 0x20($sp)
/* 13BFBC 8011DECC 03E00008 */  jr         $ra
/* 13BFC0 8011DED0 27BD0028 */   addiu     $sp, $sp, 0x28

glabel func_menu_8011DED4
/* 13BFC4 8011DED4 27BDFFD0 */  addiu      $sp, $sp, -0x30
/* 13BFC8 8011DED8 AFB00020 */  sw         $s0, 0x20($sp)
/* 13BFCC 8011DEDC 00808021 */  addu       $s0, $a0, $zero
/* 13BFD0 8011DEE0 AFBF0028 */  sw         $ra, 0x28($sp)
/* 13BFD4 8011DEE4 AFB10024 */  sw         $s1, 0x24($sp)
/* 13BFD8 8011DEE8 8E0201E4 */  lw         $v0, 0x1E4($s0)
/* 13BFDC 8011DEEC 26110648 */  addiu      $s1, $s0, 0x648
/* 13BFE0 8011DEF0 24420001 */  addiu      $v0, $v0, 0x1
/* 13BFE4 8011DEF4 AFA20010 */  sw         $v0, 0x10($sp)
/* 13BFE8 8011DEF8 8E0203F8 */  lw         $v0, 0x3F8($s0)
/* 13BFEC 8011DEFC 02202021 */  addu       $a0, $s1, $zero
/* 13BFF0 8011DF00 2442FFFF */  addiu      $v0, $v0, -0x1
/* 13BFF4 8011DF04 AFA20018 */  sw         $v0, 0x18($sp)
/* 13BFF8 8011DF08 26020678 */  addiu      $v0, $s0, 0x678
/* 13BFFC 8011DF0C 8C45000C */  lw         $a1, 0xC($v0)
/* 13C000 8011DF10 8C460004 */  lw         $a2, 0x4($v0)
/* 13C004 8011DF14 8E02003C */  lw         $v0, 0x3C($s0)
/* 13C008 8011DF18 8E030034 */  lw         $v1, 0x34($s0)
/* 13C00C 8011DF1C 00A62823 */  subu       $a1, $a1, $a2
/* 13C010 8011DF20 00431023 */  subu       $v0, $v0, $v1
/* 13C014 8011DF24 00021043 */  sra        $v0, $v0, 1
/* 13C018 8011DF28 00051843 */  sra        $v1, $a1, 1
/* 13C01C 8011DF2C 00431023 */  subu       $v0, $v0, $v1
/* 13C020 8011DF30 AFA20014 */  sw         $v0, 0x14($sp)
/* 13C024 8011DF34 00451021 */  addu       $v0, $v0, $a1
/* 13C028 8011DF38 27A50010 */  addiu      $a1, $sp, 0x10
/* 13C02C 8011DF3C 0C04936A */  jal        func_menu_80124DA8
/* 13C030 8011DF40 AFA2001C */   sw        $v0, 0x1C($sp)
/* 13C034 8011DF44 0C049323 */  jal        func_menu_80124C8C
/* 13C038 8011DF48 02202021 */   addu      $a0, $s1, $zero
/* 13C03C 8011DF4C 8C470000 */  lw         $a3, 0x0($v0)
/* 13C040 8011DF50 8C480004 */  lw         $t0, 0x4($v0)
/* 13C044 8011DF54 8C490008 */  lw         $t1, 0x8($v0)
/* 13C048 8011DF58 8C4A000C */  lw         $t2, 0xC($v0)
/* 13C04C 8011DF5C AE0706D0 */  sw         $a3, 0x6D0($s0)
/* 13C050 8011DF60 AE0806D4 */  sw         $t0, 0x6D4($s0)
/* 13C054 8011DF64 AE0906D8 */  sw         $t1, 0x6D8($s0)
/* 13C058 8011DF68 AE0A06DC */  sw         $t2, 0x6DC($s0)
/* 13C05C 8011DF6C 8FBF0028 */  lw         $ra, 0x28($sp)
/* 13C060 8011DF70 8FB10024 */  lw         $s1, 0x24($sp)
/* 13C064 8011DF74 8FB00020 */  lw         $s0, 0x20($sp)
/* 13C068 8011DF78 03E00008 */  jr         $ra
/* 13C06C 8011DF7C 27BD0030 */   addiu     $sp, $sp, 0x30

glabel func_menu_8011DF80
/* 13C070 8011DF80 27BDFFD8 */  addiu      $sp, $sp, -0x28
/* 13C074 8011DF84 AFB00020 */  sw         $s0, 0x20($sp)
/* 13C078 8011DF88 00808021 */  addu       $s0, $a0, $zero
/* 13C07C 8011DF8C 260405EC */  addiu      $a0, $s0, 0x5EC
/* 13C080 8011DF90 AFBF0024 */  sw         $ra, 0x24($sp)
/* 13C084 8011DF94 8E0201E4 */  lw         $v0, 0x1E4($s0)
/* 13C088 8011DF98 2603061C */  addiu      $v1, $s0, 0x61C
/* 13C08C 8011DF9C AFA20010 */  sw         $v0, 0x10($sp)
/* 13C090 8011DFA0 8C660008 */  lw         $a2, 0x8($v1)
/* 13C094 8011DFA4 27A50010 */  addiu      $a1, $sp, 0x10
/* 13C098 8011DFA8 00461021 */  addu       $v0, $v0, $a2
/* 13C09C 8011DFAC AFA20018 */  sw         $v0, 0x18($sp)
/* 13C0A0 8011DFB0 8C66000C */  lw         $a2, 0xC($v1)
/* 13C0A4 8011DFB4 8C670004 */  lw         $a3, 0x4($v1)
/* 13C0A8 8011DFB8 8E02003C */  lw         $v0, 0x3C($s0)
/* 13C0AC 8011DFBC 8E030034 */  lw         $v1, 0x34($s0)
/* 13C0B0 8011DFC0 00C73023 */  subu       $a2, $a2, $a3
/* 13C0B4 8011DFC4 00431023 */  subu       $v0, $v0, $v1
/* 13C0B8 8011DFC8 00021043 */  sra        $v0, $v0, 1
/* 13C0BC 8011DFCC 00061843 */  sra        $v1, $a2, 1
/* 13C0C0 8011DFD0 00431023 */  subu       $v0, $v0, $v1
/* 13C0C4 8011DFD4 AFA20014 */  sw         $v0, 0x14($sp)
/* 13C0C8 8011DFD8 00461021 */  addu       $v0, $v0, $a2
/* 13C0CC 8011DFDC 0C04936A */  jal        func_menu_80124DA8
/* 13C0D0 8011DFE0 AFA2001C */   sw        $v0, 0x1C($sp)
/* 13C0D4 8011DFE4 0C047775 */  jal        func_menu_8011DDD4
/* 13C0D8 8011DFE8 02002021 */   addu      $a0, $s0, $zero
/* 13C0DC 8011DFEC 8E020054 */  lw         $v0, 0x54($s0)
/* 13C0E0 8011DFF0 8E0506C0 */  lw         $a1, 0x6C0($s0)
/* 13C0E4 8011DFF4 84440128 */  lh         $a0, 0x128($v0)
/* 13C0E8 8011DFF8 8C42012C */  lw         $v0, 0x12C($v0)
/* 13C0EC 8011DFFC 0040F809 */  jalr       $v0
/* 13C0F0 8011E000 02042021 */   addu      $a0, $s0, $a0
/* 13C0F4 8011E004 8FBF0024 */  lw         $ra, 0x24($sp)
/* 13C0F8 8011E008 8FB00020 */  lw         $s0, 0x20($sp)
/* 13C0FC 8011E00C 03E00008 */  jr         $ra
/* 13C100 8011E010 27BD0028 */   addiu     $sp, $sp, 0x28

glabel func_menu_8011E014
/* 13C104 8011E014 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 13C108 8011E018 AFBF0010 */  sw         $ra, 0x10($sp)
/* 13C10C 8011E01C 8C82061C */  lw         $v0, 0x61C($a0)
/* 13C110 8011E020 8C8301E4 */  lw         $v1, 0x1E4($a0)
/* 13C114 8011E024 C48206CC */  lwc1       $f2, 0x6CC($a0)
/* 13C118 8011E028 00431023 */  subu       $v0, $v0, $v1
/* 13C11C 8011E02C 44820000 */  mtc1       $v0, $f0
/* 13C120 8011E030 46800020 */  cvt.s.w    $f0, $f0
/* 13C124 8011E034 46020003 */  div.s      $f0, $f0, $f2
/* 13C128 8011E038 8C830054 */  lw         $v1, 0x54($a0)
/* 13C12C 8011E03C 3C01800D */  lui        $at, %hi(D_menu_800D0940)
/* 13C130 8011E040 C4220940 */  lwc1       $f2, %lo(D_menu_800D0940)($at)
/* 13C134 8011E044 84620128 */  lh         $v0, 0x128($v1)
/* 13C138 8011E048 46020000 */  add.s      $f0, $f0, $f2
/* 13C13C 8011E04C 00822021 */  addu       $a0, $a0, $v0
/* 13C140 8011E050 8C62012C */  lw         $v0, 0x12C($v1)
/* 13C144 8011E054 4600010D */  trunc.w.s  $f4, $f0
/* 13C148 8011E058 44052000 */  mfc1       $a1, $f4
/* 13C14C 8011E05C 0040F809 */  jalr       $v0
/* 13C150 8011E060 00000000 */   nop
/* 13C154 8011E064 8FBF0010 */  lw         $ra, 0x10($sp)
/* 13C158 8011E068 03E00008 */  jr         $ra
/* 13C15C 8011E06C 27BD0018 */   addiu     $sp, $sp, 0x18

glabel func_menu_8011E070
/* 13C160 8011E070 27BDFFD0 */  addiu      $sp, $sp, -0x30
/* 13C164 8011E074 AFB00020 */  sw         $s0, 0x20($sp)
/* 13C168 8011E078 00808021 */  addu       $s0, $a0, $zero
/* 13C16C 8011E07C AFB10024 */  sw         $s1, 0x24($sp)
/* 13C170 8011E080 00A08821 */  addu       $s1, $a1, $zero
/* 13C174 8011E084 AFBF0028 */  sw         $ra, 0x28($sp)
/* 13C178 8011E088 C60206CC */  lwc1       $f2, 0x6CC($s0)
/* 13C17C 8011E08C 44910000 */  mtc1       $s1, $f0
/* 13C180 8011E090 46800020 */  cvt.s.w    $f0, $f0
/* 13C184 8011E094 46020002 */  mul.s      $f0, $f0, $f2
/* 13C188 8011E098 8E0206C0 */  lw         $v0, 0x6C0($s0)
/* 13C18C 8011E09C 4600010D */  trunc.w.s  $f4, $f0
/* 13C190 8011E0A0 44072000 */  mfc1       $a3, $f4
/* 13C194 8011E0A4 1222001E */  beq        $s1, $v0, .Lmenu_8011E120
/* 13C198 8011E0A8 27A50010 */   addiu     $a1, $sp, 0x10
/* 13C19C 8011E0AC 260405EC */  addiu      $a0, $s0, 0x5EC
/* 13C1A0 8011E0B0 8E09061C */  lw         $t1, 0x61C($s0)
/* 13C1A4 8011E0B4 8E0A0620 */  lw         $t2, 0x620($s0)
/* 13C1A8 8011E0B8 8E0B0624 */  lw         $t3, 0x624($s0)
/* 13C1AC 8011E0BC 8E080628 */  lw         $t0, 0x628($s0)
/* 13C1B0 8011E0C0 AFA90010 */  sw         $t1, 0x10($sp)
/* 13C1B4 8011E0C4 AFAA0014 */  sw         $t2, 0x14($sp)
/* 13C1B8 8011E0C8 AFAB0018 */  sw         $t3, 0x18($sp)
/* 13C1BC 8011E0CC AFA8001C */  sw         $t0, 0x1C($sp)
/* 13C1C0 8011E0D0 8FA60018 */  lw         $a2, 0x18($sp)
/* 13C1C4 8011E0D4 8FA30010 */  lw         $v1, 0x10($sp)
/* 13C1C8 8011E0D8 8E0206C4 */  lw         $v0, 0x6C4($s0)
/* 13C1CC 8011E0DC 00C33023 */  subu       $a2, $a2, $v1
/* 13C1D0 8011E0E0 00471021 */  addu       $v0, $v0, $a3
/* 13C1D4 8011E0E4 00061843 */  sra        $v1, $a2, 1
/* 13C1D8 8011E0E8 00431023 */  subu       $v0, $v0, $v1
/* 13C1DC 8011E0EC AFA20010 */  sw         $v0, 0x10($sp)
/* 13C1E0 8011E0F0 00461021 */  addu       $v0, $v0, $a2
/* 13C1E4 8011E0F4 0C04936A */  jal        func_menu_80124DA8
/* 13C1E8 8011E0F8 AFA20018 */   sw        $v0, 0x18($sp)
/* 13C1EC 8011E0FC 8E030170 */  lw         $v1, 0x170($s0)
/* 13C1F0 8011E100 10600007 */  beqz       $v1, .Lmenu_8011E120
/* 13C1F4 8011E104 AE1106C0 */   sw        $s1, 0x6C0($s0)
/* 13C1F8 8011E108 8C620000 */  lw         $v0, 0x0($v1)
/* 13C1FC 8011E10C 02002821 */  addu       $a1, $s0, $zero
/* 13C200 8011E110 84440090 */  lh         $a0, 0x90($v0)
/* 13C204 8011E114 8C420094 */  lw         $v0, 0x94($v0)
/* 13C208 8011E118 0040F809 */  jalr       $v0
/* 13C20C 8011E11C 00642021 */   addu      $a0, $v1, $a0
.Lmenu_8011E120:
/* 13C210 8011E120 8FBF0028 */  lw         $ra, 0x28($sp)
/* 13C214 8011E124 8FB10024 */  lw         $s1, 0x24($sp)
/* 13C218 8011E128 8FB00020 */  lw         $s0, 0x20($sp)
/* 13C21C 8011E12C 03E00008 */  jr         $ra
/* 13C220 8011E130 27BD0030 */   addiu     $sp, $sp, 0x30

glabel func_menu_8011E134
/* 13C224 8011E134 27BDFFD0 */  addiu      $sp, $sp, -0x30
/* 13C228 8011E138 AFB20020 */  sw         $s2, 0x20($sp)
/* 13C22C 8011E13C 00809021 */  addu       $s2, $a0, $zero
/* 13C230 8011E140 AFB1001C */  sw         $s1, 0x1C($sp)
/* 13C234 8011E144 00A08821 */  addu       $s1, $a1, $zero
/* 13C238 8011E148 AFB30024 */  sw         $s3, 0x24($sp)
/* 13C23C 8011E14C 00C09821 */  addu       $s3, $a2, $zero
/* 13C240 8011E150 AFB40028 */  sw         $s4, 0x28($sp)
/* 13C244 8011E154 00E0A021 */  addu       $s4, $a3, $zero
/* 13C248 8011E158 3C02F000 */  lui        $v0, (0xF0000000 >> 16)
/* 13C24C 8011E15C 02221024 */  and        $v0, $s1, $v0
/* 13C250 8011E160 3C032000 */  lui        $v1, (0x20000000 >> 16)
/* 13C254 8011E164 AFBF002C */  sw         $ra, 0x2C($sp)
/* 13C258 8011E168 1443001A */  bne        $v0, $v1, .Lmenu_8011E1D4
/* 13C25C 8011E16C AFB00018 */   sw        $s0, 0x18($sp)
/* 13C260 8011E170 265005EC */  addiu      $s0, $s2, 0x5EC
/* 13C264 8011E174 02002021 */  addu       $a0, $s0, $zero
/* 13C268 8011E178 27A50010 */  addiu      $a1, $sp, 0x10
/* 13C26C 8011E17C 27A60014 */  addiu      $a2, $sp, 0x14
/* 13C270 8011E180 AFB30010 */  sw         $s3, 0x10($sp)
/* 13C274 8011E184 0C049445 */  jal        func_menu_80125114
/* 13C278 8011E188 AFB40014 */   sw        $s4, 0x14($sp)
/* 13C27C 8011E18C 9242012C */  lbu        $v0, 0x12C($s2)
/* 13C280 8011E190 30420004 */  andi       $v0, $v0, 0x4
/* 13C284 8011E194 14400006 */  bnez       $v0, .Lmenu_8011E1B0
/* 13C288 8011E198 00001821 */   addu      $v1, $zero, $zero
/* 13C28C 8011E19C 8FA50010 */  lw         $a1, 0x10($sp)
/* 13C290 8011E1A0 8FA60014 */  lw         $a2, 0x14($sp)
/* 13C294 8011E1A4 0C04923A */  jal        func_menu_801248E8
/* 13C298 8011E1A8 02002021 */   addu      $a0, $s0, $zero
/* 13C29C 8011E1AC 0002182B */  sltu       $v1, $zero, $v0
.Lmenu_8011E1B0:
/* 13C2A0 8011E1B0 14600009 */  bnez       $v1, .Lmenu_8011E1D8
/* 13C2A4 8011E1B4 02201021 */   addu      $v0, $s1, $zero
/* 13C2A8 8011E1B8 02402021 */  addu       $a0, $s2, $zero
/* 13C2AC 8011E1BC 02202821 */  addu       $a1, $s1, $zero
/* 13C2B0 8011E1C0 02603021 */  addu       $a2, $s3, $zero
/* 13C2B4 8011E1C4 0C044C22 */  jal        func_menu_80113088
/* 13C2B8 8011E1C8 02803821 */   addu      $a3, $s4, $zero
/* 13C2BC 8011E1CC 08047876 */  j          .Lmenu_8011E1D8
/* 13C2C0 8011E1D0 00000000 */   nop
.Lmenu_8011E1D4:
/* 13C2C4 8011E1D4 02201021 */  addu       $v0, $s1, $zero
.Lmenu_8011E1D8:
/* 13C2C8 8011E1D8 8FBF002C */  lw         $ra, 0x2C($sp)
/* 13C2CC 8011E1DC 8FB40028 */  lw         $s4, 0x28($sp)
/* 13C2D0 8011E1E0 8FB30024 */  lw         $s3, 0x24($sp)
/* 13C2D4 8011E1E4 8FB20020 */  lw         $s2, 0x20($sp)
/* 13C2D8 8011E1E8 8FB1001C */  lw         $s1, 0x1C($sp)
/* 13C2DC 8011E1EC 8FB00018 */  lw         $s0, 0x18($sp)
/* 13C2E0 8011E1F0 03E00008 */  jr         $ra
/* 13C2E4 8011E1F4 27BD0030 */   addiu     $sp, $sp, 0x30

glabel func_menu_8011E1F8
/* 13C2E8 8011E1F8 27BDFFD0 */  addiu      $sp, $sp, -0x30
/* 13C2EC 8011E1FC AFB00020 */  sw         $s0, 0x20($sp)
/* 13C2F0 8011E200 00808021 */  addu       $s0, $a0, $zero
/* 13C2F4 8011E204 AFB20028 */  sw         $s2, 0x28($sp)
/* 13C2F8 8011E208 00A09021 */  addu       $s2, $a1, $zero
/* 13C2FC 8011E20C AFB10024 */  sw         $s1, 0x24($sp)
/* 13C300 8011E210 AFBF002C */  sw         $ra, 0x2C($sp)
/* 13C304 8011E214 0C048F90 */  jal        func_menu_80123E40
/* 13C308 8011E218 00C08821 */   addu      $s1, $a2, $zero
/* 13C30C 8011E21C 8E020018 */  lw         $v0, 0x18($s0)
/* 13C310 8011E220 00021702 */  srl        $v0, $v0, 28
/* 13C314 8011E224 30420001 */  andi       $v0, $v0, 0x1
/* 13C318 8011E228 10400038 */  beqz       $v0, .Lmenu_8011E30C
/* 13C31C 8011E22C 00001021 */   addu      $v0, $zero, $zero
/* 13C320 8011E230 920202D8 */  lbu        $v0, 0x2D8($s0)
/* 13C324 8011E234 30420004 */  andi       $v0, $v0, 0x4
/* 13C328 8011E238 14400005 */  bnez       $v0, .Lmenu_8011E250
/* 13C32C 8011E23C 00001821 */   addu      $v1, $zero, $zero
/* 13C330 8011E240 920204F4 */  lbu        $v0, 0x4F4($s0)
/* 13C334 8011E244 30420004 */  andi       $v0, $v0, 0x4
/* 13C338 8011E248 10400002 */  beqz       $v0, .Lmenu_8011E254
/* 13C33C 8011E24C 00000000 */   nop
.Lmenu_8011E250:
/* 13C340 8011E250 24030001 */  addiu      $v1, $zero, 0x1
.Lmenu_8011E254:
/* 13C344 8011E254 1460002D */  bnez       $v1, .Lmenu_8011E30C
/* 13C348 8011E258 02001021 */   addu      $v0, $s0, $zero
/* 13C34C 8011E25C 260701DC */  addiu      $a3, $s0, 0x1DC
/* 13C350 8011E260 8E0806D0 */  lw         $t0, 0x6D0($s0)
/* 13C354 8011E264 8E0906D4 */  lw         $t1, 0x6D4($s0)
/* 13C358 8011E268 8E0A06D8 */  lw         $t2, 0x6D8($s0)
/* 13C35C 8011E26C 8E0B06DC */  lw         $t3, 0x6DC($s0)
/* 13C360 8011E270 AE480010 */  sw         $t0, 0x10($s2)
/* 13C364 8011E274 AE490014 */  sw         $t1, 0x14($s2)
/* 13C368 8011E278 AE4A0018 */  sw         $t2, 0x18($s2)
/* 13C36C 8011E27C AE4B001C */  sw         $t3, 0x1C($s2)
/* 13C370 8011E280 8E08061C */  lw         $t0, 0x61C($s0)
/* 13C374 8011E284 8E090620 */  lw         $t1, 0x620($s0)
/* 13C378 8011E288 8E0A0624 */  lw         $t2, 0x624($s0)
/* 13C37C 8011E28C 8E0B0628 */  lw         $t3, 0x628($s0)
/* 13C380 8011E290 AFA80010 */  sw         $t0, 0x10($sp)
/* 13C384 8011E294 AFA90014 */  sw         $t1, 0x14($sp)
/* 13C388 8011E298 AFAA0018 */  sw         $t2, 0x18($sp)
/* 13C38C 8011E29C AFAB001C */  sw         $t3, 0x1C($sp)
/* 13C390 8011E2A0 8FA40010 */  lw         $a0, 0x10($sp)
/* 13C394 8011E2A4 8FA30018 */  lw         $v1, 0x18($sp)
/* 13C398 8011E2A8 00911021 */  addu       $v0, $a0, $s1
/* 13C39C 8011E2AC 00713021 */  addu       $a2, $v1, $s1
/* 13C3A0 8011E2B0 AFA20010 */  sw         $v0, 0x10($sp)
/* 13C3A4 8011E2B4 AFA60018 */  sw         $a2, 0x18($sp)
/* 13C3A8 8011E2B8 8CE50008 */  lw         $a1, 0x8($a3)
/* 13C3AC 8011E2BC 0045102A */  slt        $v0, $v0, $a1
/* 13C3B0 8011E2C0 10400006 */  beqz       $v0, .Lmenu_8011E2DC
/* 13C3B4 8011E2C4 00641823 */   subu      $v1, $v1, $a0
/* 13C3B8 8011E2C8 AFA50010 */  sw         $a1, 0x10($sp)
/* 13C3BC 8011E2CC 8CE20008 */  lw         $v0, 0x8($a3)
/* 13C3C0 8011E2D0 00431021 */  addu       $v0, $v0, $v1
/* 13C3C4 8011E2D4 080478BF */  j          .Lmenu_8011E2FC
/* 13C3C8 8011E2D8 AFA20018 */   sw        $v0, 0x18($sp)
.Lmenu_8011E2DC:
/* 13C3CC 8011E2DC 8E0403F8 */  lw         $a0, 0x3F8($s0)
/* 13C3D0 8011E2E0 0086102A */  slt        $v0, $a0, $a2
/* 13C3D4 8011E2E4 50400006 */  beql       $v0, $zero, .Lmenu_8011E300
/* 13C3D8 8011E2E8 260405EC */   addiu     $a0, $s0, 0x5EC
/* 13C3DC 8011E2EC AFA40018 */  sw         $a0, 0x18($sp)
/* 13C3E0 8011E2F0 8E0203F8 */  lw         $v0, 0x3F8($s0)
/* 13C3E4 8011E2F4 00431023 */  subu       $v0, $v0, $v1
/* 13C3E8 8011E2F8 AFA20010 */  sw         $v0, 0x10($sp)
.Lmenu_8011E2FC:
/* 13C3EC 8011E2FC 260405EC */  addiu      $a0, $s0, 0x5EC
.Lmenu_8011E300:
/* 13C3F0 8011E300 0C04936A */  jal        func_menu_80124DA8
/* 13C3F4 8011E304 27A50010 */   addiu     $a1, $sp, 0x10
/* 13C3F8 8011E308 02001021 */  addu       $v0, $s0, $zero
.Lmenu_8011E30C:
/* 13C3FC 8011E30C 8FBF002C */  lw         $ra, 0x2C($sp)
/* 13C400 8011E310 8FB20028 */  lw         $s2, 0x28($sp)
/* 13C404 8011E314 8FB10024 */  lw         $s1, 0x24($sp)
/* 13C408 8011E318 8FB00020 */  lw         $s0, 0x20($sp)
/* 13C40C 8011E31C 03E00008 */  jr         $ra
/* 13C410 8011E320 27BD0030 */   addiu     $sp, $sp, 0x30
