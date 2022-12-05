.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text, "ax"

glabel func_menu_800DCBF0
/* FACE0 800DCBF0 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* FACE4 800DCBF4 AFB00010 */  sw         $s0, 0x10($sp)
/* FACE8 800DCBF8 AFBF0014 */  sw         $ra, 0x14($sp)
/* FACEC 800DCBFC 0C037317 */  jal        func_menu_800DCC5C
/* FACF0 800DCC00 00808021 */   addu      $s0, $a0, $zero
/* FACF4 800DCC04 02001021 */  addu       $v0, $s0, $zero
/* FACF8 800DCC08 8FBF0014 */  lw         $ra, 0x14($sp)
/* FACFC 800DCC0C 8FB00010 */  lw         $s0, 0x10($sp)
/* FAD00 800DCC10 03E00008 */  jr         $ra
/* FAD04 800DCC14 27BD0018 */   addiu     $sp, $sp, 0x18

glabel func_menu_800DCC18
/* FAD08 800DCC18 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* FAD0C 800DCC1C AFB10014 */  sw         $s1, 0x14($sp)
/* FAD10 800DCC20 00808821 */  addu       $s1, $a0, $zero
/* FAD14 800DCC24 AFB00010 */  sw         $s0, 0x10($sp)
/* FAD18 800DCC28 AFBF0018 */  sw         $ra, 0x18($sp)
/* FAD1C 800DCC2C 0C03736C */  jal        func_menu_800DCDB0
/* FAD20 800DCC30 00A08021 */   addu      $s0, $a1, $zero
/* FAD24 800DCC34 32100001 */  andi       $s0, $s0, 0x1
/* FAD28 800DCC38 12000003 */  beqz       $s0, .Lmenu_800DCC48
/* FAD2C 800DCC3C 00000000 */   nop
/* FAD30 800DCC40 0C01FB5C */  jal        func_8007ED70
/* FAD34 800DCC44 02202021 */   addu      $a0, $s1, $zero
.Lmenu_800DCC48:
/* FAD38 800DCC48 8FBF0018 */  lw         $ra, 0x18($sp)
/* FAD3C 800DCC4C 8FB10014 */  lw         $s1, 0x14($sp)
/* FAD40 800DCC50 8FB00010 */  lw         $s0, 0x10($sp)
/* FAD44 800DCC54 03E00008 */  jr         $ra
/* FAD48 800DCC58 27BD0020 */   addiu     $sp, $sp, 0x20

glabel func_menu_800DCC5C
/* FAD4C 800DCC5C 24020001 */  addiu      $v0, $zero, 0x1
/* FAD50 800DCC60 AC800000 */  sw         $zero, 0x0($a0)
/* FAD54 800DCC64 AC800014 */  sw         $zero, 0x14($a0)
/* FAD58 800DCC68 AC800018 */  sw         $zero, 0x18($a0)
/* FAD5C 800DCC6C AC80001C */  sw         $zero, 0x1C($a0)
/* FAD60 800DCC70 AC800020 */  sw         $zero, 0x20($a0)
/* FAD64 800DCC74 AC800004 */  sw         $zero, 0x4($a0)
/* FAD68 800DCC78 AC800008 */  sw         $zero, 0x8($a0)
/* FAD6C 800DCC7C AC800038 */  sw         $zero, 0x38($a0)
/* FAD70 800DCC80 AC80000C */  sw         $zero, 0xC($a0)
/* FAD74 800DCC84 03E00008 */  jr         $ra
/* FAD78 800DCC88 AC820010 */   sw        $v0, 0x10($a0)

glabel func_menu_800DCC8C
/* FAD7C 800DCC8C 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* FAD80 800DCC90 AFB00010 */  sw         $s0, 0x10($sp)
/* FAD84 800DCC94 00808021 */  addu       $s0, $a0, $zero
/* FAD88 800DCC98 AFBF0014 */  sw         $ra, 0x14($sp)
/* FAD8C 800DCC9C 8E030014 */  lw         $v1, 0x14($s0)
/* FAD90 800DCCA0 8C620000 */  lw         $v0, 0x0($v1)
/* FAD94 800DCCA4 84440020 */  lh         $a0, 0x20($v0)
/* FAD98 800DCCA8 8C420024 */  lw         $v0, 0x24($v0)
/* FAD9C 800DCCAC 0040F809 */  jalr       $v0
/* FADA0 800DCCB0 00642021 */   addu      $a0, $v1, $a0
/* FADA4 800DCCB4 8E030014 */  lw         $v1, 0x14($s0)
/* FADA8 800DCCB8 AE02001C */  sw         $v0, 0x1C($s0)
/* FADAC 800DCCBC 8C620000 */  lw         $v0, 0x0($v1)
/* FADB0 800DCCC0 84440028 */  lh         $a0, 0x28($v0)
/* FADB4 800DCCC4 8C42002C */  lw         $v0, 0x2C($v0)
/* FADB8 800DCCC8 0040F809 */  jalr       $v0
/* FADBC 800DCCCC 00642021 */   addu      $a0, $v1, $a0
/* FADC0 800DCCD0 8E03001C */  lw         $v1, 0x1C($s0)
/* FADC4 800DCCD4 10600003 */  beqz       $v1, .Lmenu_800DCCE4
/* FADC8 800DCCD8 AE020020 */   sw        $v0, 0x20($s0)
/* FADCC 800DCCDC 14400007 */  bnez       $v0, .Lmenu_800DCCFC
/* FADD0 800DCCE0 00000000 */   nop
.Lmenu_800DCCE4:
/* FADD4 800DCCE4 3C04800D */  lui        $a0, %hi(D_menu_800CAB50)
/* FADD8 800DCCE8 2484AB50 */  addiu      $a0, $a0, %lo(D_menu_800CAB50)
/* FADDC 800DCCEC 00002821 */  addu       $a1, $zero, $zero
/* FADE0 800DCCF0 00A03021 */  addu       $a2, $a1, $zero
/* FADE4 800DCCF4 0C011ACF */  jal        func_80046B3C
/* FADE8 800DCCF8 00A03821 */   addu      $a3, $a1, $zero
.Lmenu_800DCCFC:
/* FADEC 800DCCFC 8E03001C */  lw         $v1, 0x1C($s0)
/* FADF0 800DCD00 8E050018 */  lw         $a1, 0x18($s0)
/* FADF4 800DCD04 8C620008 */  lw         $v0, 0x8($v1)
/* FADF8 800DCD08 8E060000 */  lw         $a2, 0x0($s0)
/* FADFC 800DCD0C 84440050 */  lh         $a0, 0x50($v0)
/* FAE00 800DCD10 8C420054 */  lw         $v0, 0x54($v0)
/* FAE04 800DCD14 0040F809 */  jalr       $v0
/* FAE08 800DCD18 00642021 */   addu      $a0, $v1, $a0
/* FAE0C 800DCD1C 8E030020 */  lw         $v1, 0x20($s0)
/* FAE10 800DCD20 8E050018 */  lw         $a1, 0x18($s0)
/* FAE14 800DCD24 8C620008 */  lw         $v0, 0x8($v1)
/* FAE18 800DCD28 8E060000 */  lw         $a2, 0x0($s0)
/* FAE1C 800DCD2C 84440050 */  lh         $a0, 0x50($v0)
/* FAE20 800DCD30 8C420054 */  lw         $v0, 0x54($v0)
/* FAE24 800DCD34 0040F809 */  jalr       $v0
/* FAE28 800DCD38 00642021 */   addu      $a0, $v1, $a0
/* FAE2C 800DCD3C 8FBF0014 */  lw         $ra, 0x14($sp)
/* FAE30 800DCD40 8FB00010 */  lw         $s0, 0x10($sp)
/* FAE34 800DCD44 03E00008 */  jr         $ra
/* FAE38 800DCD48 27BD0018 */   addiu     $sp, $sp, 0x18

glabel func_menu_800DCD4C
/* FAE3C 800DCD4C 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* FAE40 800DCD50 AFB00010 */  sw         $s0, 0x10($sp)
/* FAE44 800DCD54 00808021 */  addu       $s0, $a0, $zero
/* FAE48 800DCD58 AFB10014 */  sw         $s1, 0x14($sp)
/* FAE4C 800DCD5C AFBF0018 */  sw         $ra, 0x18($sp)
/* FAE50 800DCD60 0C03736C */  jal        func_menu_800DCDB0
/* FAE54 800DCD64 00A08821 */   addu      $s1, $a1, $zero
/* FAE58 800DCD68 8E220000 */  lw         $v0, 0x0($s1)
/* FAE5C 800DCD6C AE020014 */  sw         $v0, 0x14($s0)
/* FAE60 800DCD70 8E220004 */  lw         $v0, 0x4($s1)
/* FAE64 800DCD74 AE020018 */  sw         $v0, 0x18($s0)
/* FAE68 800DCD78 8E220008 */  lw         $v0, 0x8($s1)
/* FAE6C 800DCD7C AE020000 */  sw         $v0, 0x0($s0)
/* FAE70 800DCD80 8E22000C */  lw         $v0, 0xC($s1)
/* FAE74 800DCD84 02002021 */  addu       $a0, $s0, $zero
/* FAE78 800DCD88 0C037323 */  jal        func_menu_800DCC8C
/* FAE7C 800DCD8C AE020038 */   sw        $v0, 0x38($s0)
/* FAE80 800DCD90 0C0373B3 */  jal        func_menu_800DCECC
/* FAE84 800DCD94 02002021 */   addu      $a0, $s0, $zero
/* FAE88 800DCD98 8E020000 */  lw         $v0, 0x0($s0)
/* FAE8C 800DCD9C 8FBF0018 */  lw         $ra, 0x18($sp)
/* FAE90 800DCDA0 8FB10014 */  lw         $s1, 0x14($sp)
/* FAE94 800DCDA4 8FB00010 */  lw         $s0, 0x10($sp)
/* FAE98 800DCDA8 03E00008 */  jr         $ra
/* FAE9C 800DCDAC 27BD0020 */   addiu     $sp, $sp, 0x20

glabel func_menu_800DCDB0
/* FAEA0 800DCDB0 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* FAEA4 800DCDB4 AFB00010 */  sw         $s0, 0x10($sp)
/* FAEA8 800DCDB8 00808021 */  addu       $s0, $a0, $zero
/* FAEAC 800DCDBC AFBF0014 */  sw         $ra, 0x14($sp)
/* FAEB0 800DCDC0 8E020000 */  lw         $v0, 0x0($s0)
/* FAEB4 800DCDC4 10400017 */  beqz       $v0, .Lmenu_800DCE24
/* FAEB8 800DCDC8 24020001 */   addiu     $v0, $zero, 0x1
/* FAEBC 800DCDCC 8E05001C */  lw         $a1, 0x1C($s0)
/* FAEC0 800DCDD0 10A00007 */  beqz       $a1, .Lmenu_800DCDF0
/* FAEC4 800DCDD4 00000000 */   nop
/* FAEC8 800DCDD8 8E030014 */  lw         $v1, 0x14($s0)
/* FAECC 800DCDDC 8C620000 */  lw         $v0, 0x0($v1)
/* FAED0 800DCDE0 84440088 */  lh         $a0, 0x88($v0)
/* FAED4 800DCDE4 8C42008C */  lw         $v0, 0x8C($v0)
/* FAED8 800DCDE8 0040F809 */  jalr       $v0
/* FAEDC 800DCDEC 00642021 */   addu      $a0, $v1, $a0
.Lmenu_800DCDF0:
/* FAEE0 800DCDF0 8E050020 */  lw         $a1, 0x20($s0)
/* FAEE4 800DCDF4 10A00007 */  beqz       $a1, .Lmenu_800DCE14
/* FAEE8 800DCDF8 00000000 */   nop
/* FAEEC 800DCDFC 8E030014 */  lw         $v1, 0x14($s0)
/* FAEF0 800DCE00 8C620000 */  lw         $v0, 0x0($v1)
/* FAEF4 800DCE04 84440090 */  lh         $a0, 0x90($v0)
/* FAEF8 800DCE08 8C420094 */  lw         $v0, 0x94($v0)
/* FAEFC 800DCE0C 0040F809 */  jalr       $v0
/* FAF00 800DCE10 00642021 */   addu      $a0, $v1, $a0
.Lmenu_800DCE14:
/* FAF04 800DCE14 0C037317 */  jal        func_menu_800DCC5C
/* FAF08 800DCE18 02002021 */   addu      $a0, $s0, $zero
/* FAF0C 800DCE1C 8E020000 */  lw         $v0, 0x0($s0)
/* FAF10 800DCE20 2C420001 */  sltiu      $v0, $v0, 0x1
.Lmenu_800DCE24:
/* FAF14 800DCE24 8FBF0014 */  lw         $ra, 0x14($sp)
/* FAF18 800DCE28 8FB00010 */  lw         $s0, 0x10($sp)
/* FAF1C 800DCE2C 03E00008 */  jr         $ra
/* FAF20 800DCE30 27BD0018 */   addiu     $sp, $sp, 0x18

glabel func_menu_800DCE34
/* FAF24 800DCE34 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* FAF28 800DCE38 AFB00010 */  sw         $s0, 0x10($sp)
/* FAF2C 800DCE3C 00808021 */  addu       $s0, $a0, $zero
/* FAF30 800DCE40 AFBF0014 */  sw         $ra, 0x14($sp)
/* FAF34 800DCE44 8E03001C */  lw         $v1, 0x1C($s0)
/* FAF38 800DCE48 AE000004 */  sw         $zero, 0x4($s0)
/* FAF3C 800DCE4C AE000008 */  sw         $zero, 0x8($s0)
/* FAF40 800DCE50 8C620008 */  lw         $v0, 0x8($v1)
/* FAF44 800DCE54 84440018 */  lh         $a0, 0x18($v0)
/* FAF48 800DCE58 8C42001C */  lw         $v0, 0x1C($v0)
/* FAF4C 800DCE5C 0040F809 */  jalr       $v0
/* FAF50 800DCE60 00642021 */   addu      $a0, $v1, $a0
/* FAF54 800DCE64 8E030020 */  lw         $v1, 0x20($s0)
/* FAF58 800DCE68 8C620008 */  lw         $v0, 0x8($v1)
/* FAF5C 800DCE6C 84440018 */  lh         $a0, 0x18($v0)
/* FAF60 800DCE70 8C42001C */  lw         $v0, 0x1C($v0)
/* FAF64 800DCE74 0040F809 */  jalr       $v0
/* FAF68 800DCE78 00642021 */   addu      $a0, $v1, $a0
/* FAF6C 800DCE7C 8E03001C */  lw         $v1, 0x1C($s0)
/* FAF70 800DCE80 8E050018 */  lw         $a1, 0x18($s0)
/* FAF74 800DCE84 8C620008 */  lw         $v0, 0x8($v1)
/* FAF78 800DCE88 8E060000 */  lw         $a2, 0x0($s0)
/* FAF7C 800DCE8C 84440050 */  lh         $a0, 0x50($v0)
/* FAF80 800DCE90 8C420054 */  lw         $v0, 0x54($v0)
/* FAF84 800DCE94 0040F809 */  jalr       $v0
/* FAF88 800DCE98 00642021 */   addu      $a0, $v1, $a0
/* FAF8C 800DCE9C 8E030020 */  lw         $v1, 0x20($s0)
/* FAF90 800DCEA0 8E050018 */  lw         $a1, 0x18($s0)
/* FAF94 800DCEA4 8C620008 */  lw         $v0, 0x8($v1)
/* FAF98 800DCEA8 8E060000 */  lw         $a2, 0x0($s0)
/* FAF9C 800DCEAC 84440050 */  lh         $a0, 0x50($v0)
/* FAFA0 800DCEB0 8C420054 */  lw         $v0, 0x54($v0)
/* FAFA4 800DCEB4 0040F809 */  jalr       $v0
/* FAFA8 800DCEB8 00642021 */   addu      $a0, $v1, $a0
/* FAFAC 800DCEBC 8FBF0014 */  lw         $ra, 0x14($sp)
/* FAFB0 800DCEC0 8FB00010 */  lw         $s0, 0x10($sp)
/* FAFB4 800DCEC4 03E00008 */  jr         $ra
/* FAFB8 800DCEC8 27BD0018 */   addiu     $sp, $sp, 0x18

glabel func_menu_800DCECC
/* FAFBC 800DCECC 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* FAFC0 800DCED0 AFB00010 */  sw         $s0, 0x10($sp)
/* FAFC4 800DCED4 00808021 */  addu       $s0, $a0, $zero
/* FAFC8 800DCED8 AFBF0014 */  sw         $ra, 0x14($sp)
/* FAFCC 800DCEDC 8E040038 */  lw         $a0, 0x38($s0)
/* FAFD0 800DCEE0 0C035876 */  jal        func_menu_800D61D8
/* FAFD4 800DCEE4 00002821 */   addu      $a1, $zero, $zero
/* FAFD8 800DCEE8 00402021 */  addu       $a0, $v0, $zero
/* FAFDC 800DCEEC 0C01523D */  jal        func_800548F4
/* FAFE0 800DCEF0 26050024 */   addiu     $a1, $s0, 0x24
/* FAFE4 800DCEF4 240300FF */  addiu      $v1, $zero, 0xFF
/* FAFE8 800DCEF8 240200C8 */  addiu      $v0, $zero, 0xC8
/* FAFEC 800DCEFC A203002F */  sb         $v1, 0x2F($s0)
/* FAFF0 800DCF00 A202002C */  sb         $v0, 0x2C($s0)
/* FAFF4 800DCF04 A202002E */  sb         $v0, 0x2E($s0)
/* FAFF8 800DCF08 A202002D */  sb         $v0, 0x2D($s0)
/* FAFFC 800DCF0C A2030033 */  sb         $v1, 0x33($s0)
/* FB000 800DCF10 A2020030 */  sb         $v0, 0x30($s0)
/* FB004 800DCF14 A2020032 */  sb         $v0, 0x32($s0)
/* FB008 800DCF18 A2020031 */  sb         $v0, 0x31($s0)
/* FB00C 800DCF1C 8FBF0014 */  lw         $ra, 0x14($sp)
/* FB010 800DCF20 8FB00010 */  lw         $s0, 0x10($sp)
/* FB014 800DCF24 03E00008 */  jr         $ra
/* FB018 800DCF28 27BD0018 */   addiu     $sp, $sp, 0x18

glabel func_menu_800DCF2C
/* FB01C 800DCF2C 27BDFFC8 */  addiu      $sp, $sp, -0x38
/* FB020 800DCF30 AFB10024 */  sw         $s1, 0x24($sp)
/* FB024 800DCF34 00808821 */  addu       $s1, $a0, $zero
/* FB028 800DCF38 AFB3002C */  sw         $s3, 0x2C($sp)
/* FB02C 800DCF3C 00A09821 */  addu       $s3, $a1, $zero
/* FB030 800DCF40 AFB20028 */  sw         $s2, 0x28($sp)
/* FB034 800DCF44 00C09021 */  addu       $s2, $a2, $zero
/* FB038 800DCF48 AFBF0030 */  sw         $ra, 0x30($sp)
/* FB03C 800DCF4C AFB00020 */  sw         $s0, 0x20($sp)
/* FB040 800DCF50 8E26001C */  lw         $a2, 0x1C($s1)
/* FB044 800DCF54 8E220004 */  lw         $v0, 0x4($s1)
/* FB048 800DCF58 8CC30008 */  lw         $v1, 0x8($a2)
/* FB04C 800DCF5C 00402821 */  addu       $a1, $v0, $zero
/* FB050 800DCF60 84640058 */  lh         $a0, 0x58($v1)
/* FB054 800DCF64 24420001 */  addiu      $v0, $v0, 0x1
/* FB058 800DCF68 AE220004 */  sw         $v0, 0x4($s1)
/* FB05C 800DCF6C 8C62005C */  lw         $v0, 0x5C($v1)
/* FB060 800DCF70 0040F809 */  jalr       $v0
/* FB064 800DCF74 00C42021 */   addu      $a0, $a2, $a0
/* FB068 800DCF78 27A40010 */  addiu      $a0, $sp, 0x10
/* FB06C 800DCF7C 00002821 */  addu       $a1, $zero, $zero
/* FB070 800DCF80 2406000D */  addiu      $a2, $zero, 0xD
/* FB074 800DCF84 0C000697 */  jal        func_80001A5C
/* FB078 800DCF88 00408021 */   addu      $s0, $v0, $zero
/* FB07C 800DCF8C 27A40010 */  addiu      $a0, $sp, 0x10
/* FB080 800DCF90 02602821 */  addu       $a1, $s3, $zero
/* FB084 800DCF94 0C000708 */  jal        func_80001C20
/* FB088 800DCF98 24060008 */   addiu     $a2, $zero, 0x8
/* FB08C 800DCF9C 27A40010 */  addiu      $a0, $sp, 0x10
/* FB090 800DCFA0 3C05800D */  lui        $a1, %hi(D_menu_800CAB54)
/* FB094 800DCFA4 0C0006C8 */  jal        func_80001B20
/* FB098 800DCFA8 24A5AB54 */   addiu     $a1, $a1, %lo(D_menu_800CAB54)
/* FB09C 800DCFAC 8E4205AC */  lw         $v0, 0x5AC($s2)
/* FB0A0 800DCFB0 27A50010 */  addiu      $a1, $sp, 0x10
/* FB0A4 800DCFB4 84440018 */  lh         $a0, 0x18($v0)
/* FB0A8 800DCFB8 8C42001C */  lw         $v0, 0x1C($v0)
/* FB0AC 800DCFBC 0040F809 */  jalr       $v0
/* FB0B0 800DCFC0 02442021 */   addu      $a0, $s2, $a0
/* FB0B4 800DCFC4 02403021 */  addu       $a2, $s2, $zero
/* FB0B8 800DCFC8 24020004 */  addiu      $v0, $zero, 0x4
/* FB0BC 800DCFCC 8A670000 */  lwl        $a3, 0x0($s3)
/* FB0C0 800DCFD0 9A670003 */  lwr        $a3, 0x3($s3)
/* FB0C4 800DCFD4 8A680004 */  lwl        $t0, 0x4($s3)
/* FB0C8 800DCFD8 9A680007 */  lwr        $t0, 0x7($s3)
/* FB0CC 800DCFDC AA070038 */  swl        $a3, 0x38($s0)
/* FB0D0 800DCFE0 BA07003B */  swr        $a3, 0x3B($s0)
/* FB0D4 800DCFE4 AA08003C */  swl        $t0, 0x3C($s0)
/* FB0D8 800DCFE8 BA08003F */  swr        $t0, 0x3F($s0)
/* FB0DC 800DCFEC A6020036 */  sh         $v0, 0x36($s0)
/* FB0E0 800DCFF0 8E02002C */  lw         $v0, 0x2C($s0)
/* FB0E4 800DCFF4 8E250018 */  lw         $a1, 0x18($s1)
/* FB0E8 800DCFF8 84440080 */  lh         $a0, 0x80($v0)
/* FB0EC 800DCFFC 8C420084 */  lw         $v0, 0x84($v0)
/* FB0F0 800DD000 0040F809 */  jalr       $v0
/* FB0F4 800DD004 02042021 */   addu      $a0, $s0, $a0
/* FB0F8 800DD008 02602821 */  addu       $a1, $s3, $zero
/* FB0FC 800DD00C 8E24001C */  lw         $a0, 0x1C($s1)
/* FB100 800DD010 0C0163C7 */  jal        func_80058F1C
/* FB104 800DD014 02003021 */   addu      $a2, $s0, $zero
/* FB108 800DD018 8E4205AC */  lw         $v0, 0x5AC($s2)
/* FB10C 800DD01C 84440020 */  lh         $a0, 0x20($v0)
/* FB110 800DD020 8C420024 */  lw         $v0, 0x24($v0)
/* FB114 800DD024 0040F809 */  jalr       $v0
/* FB118 800DD028 02442021 */   addu      $a0, $s2, $a0
/* FB11C 800DD02C 8FBF0030 */  lw         $ra, 0x30($sp)
/* FB120 800DD030 8FB3002C */  lw         $s3, 0x2C($sp)
/* FB124 800DD034 8FB20028 */  lw         $s2, 0x28($sp)
/* FB128 800DD038 8FB10024 */  lw         $s1, 0x24($sp)
/* FB12C 800DD03C 8FB00020 */  lw         $s0, 0x20($sp)
/* FB130 800DD040 03E00008 */  jr         $ra
/* FB134 800DD044 27BD0038 */   addiu     $sp, $sp, 0x38

glabel func_menu_800DD048
/* FB138 800DD048 27BDFFC8 */  addiu      $sp, $sp, -0x38
/* FB13C 800DD04C AFB1002C */  sw         $s1, 0x2C($sp)
/* FB140 800DD050 00808821 */  addu       $s1, $a0, $zero
/* FB144 800DD054 AFB20030 */  sw         $s2, 0x30($sp)
/* FB148 800DD058 00A09021 */  addu       $s2, $a1, $zero
/* FB14C 800DD05C AFBF0034 */  sw         $ra, 0x34($sp)
/* FB150 800DD060 AFB00028 */  sw         $s0, 0x28($sp)
/* FB154 800DD064 8E240038 */  lw         $a0, 0x38($s1)
/* FB158 800DD068 0C035876 */  jal        func_menu_800D61D8
/* FB15C 800DD06C 00002821 */   addu      $a1, $zero, $zero
/* FB160 800DD070 00402021 */  addu       $a0, $v0, $zero
/* FB164 800DD074 0C01523D */  jal        func_800548F4
/* FB168 800DD078 27A50010 */   addiu     $a1, $sp, 0x10
/* FB16C 800DD07C 8E260020 */  lw         $a2, 0x20($s1)
/* FB170 800DD080 8E220008 */  lw         $v0, 0x8($s1)
/* FB174 800DD084 8CC30008 */  lw         $v1, 0x8($a2)
/* FB178 800DD088 00402821 */  addu       $a1, $v0, $zero
/* FB17C 800DD08C 84640058 */  lh         $a0, 0x58($v1)
/* FB180 800DD090 24420001 */  addiu      $v0, $v0, 0x1
/* FB184 800DD094 AE220008 */  sw         $v0, 0x8($s1)
/* FB188 800DD098 8C62005C */  lw         $v0, 0x5C($v1)
/* FB18C 800DD09C 0040F809 */  jalr       $v0
/* FB190 800DD0A0 00C42021 */   addu      $a0, $a2, $a0
/* FB194 800DD0A4 02402821 */  addu       $a1, $s2, $zero
/* FB198 800DD0A8 8E240018 */  lw         $a0, 0x18($s1)
/* FB19C 800DD0AC 0C016EF9 */  jal        func_8005BBE4
/* FB1A0 800DD0B0 00408021 */   addu      $s0, $v0, $zero
/* FB1A4 800DD0B4 02002021 */  addu       $a0, $s0, $zero
/* FB1A8 800DD0B8 AFA20014 */  sw         $v0, 0x14($sp)
/* FB1AC 800DD0BC 8A470000 */  lwl        $a3, 0x0($s2)
/* FB1B0 800DD0C0 9A470003 */  lwr        $a3, 0x3($s2)
/* FB1B4 800DD0C4 8A480004 */  lwl        $t0, 0x4($s2)
/* FB1B8 800DD0C8 9A480007 */  lwr        $t0, 0x7($s2)
/* FB1BC 800DD0CC AA070014 */  swl        $a3, 0x14($s0)
/* FB1C0 800DD0D0 BA070017 */  swr        $a3, 0x17($s0)
/* FB1C4 800DD0D4 AA080018 */  swl        $t0, 0x18($s0)
/* FB1C8 800DD0D8 BA08001B */  swr        $t0, 0x1B($s0)
/* FB1CC 800DD0DC 8E250018 */  lw         $a1, 0x18($s1)
/* FB1D0 800DD0E0 0C0151F9 */  jal        func_800547E4
/* FB1D4 800DD0E4 27A60010 */   addiu     $a2, $sp, 0x10
/* FB1D8 800DD0E8 02402821 */  addu       $a1, $s2, $zero
/* FB1DC 800DD0EC 8E240020 */  lw         $a0, 0x20($s1)
/* FB1E0 800DD0F0 0C0163C7 */  jal        func_80058F1C
/* FB1E4 800DD0F4 02003021 */   addu      $a2, $s0, $zero
/* FB1E8 800DD0F8 8FBF0034 */  lw         $ra, 0x34($sp)
/* FB1EC 800DD0FC 8FB20030 */  lw         $s2, 0x30($sp)
/* FB1F0 800DD100 8FB1002C */  lw         $s1, 0x2C($sp)
/* FB1F4 800DD104 8FB00028 */  lw         $s0, 0x28($sp)
/* FB1F8 800DD108 03E00008 */  jr         $ra
/* FB1FC 800DD10C 27BD0038 */   addiu     $sp, $sp, 0x38

glabel func_menu_800DD110
/* FB200 800DD110 27BDFFA0 */  addiu      $sp, $sp, -0x60
/* FB204 800DD114 AFB1004C */  sw         $s1, 0x4C($sp)
/* FB208 800DD118 00808821 */  addu       $s1, $a0, $zero
/* FB20C 800DD11C AFB40058 */  sw         $s4, 0x58($sp)
/* FB210 800DD120 00A0A021 */  addu       $s4, $a1, $zero
/* FB214 800DD124 24040ED8 */  addiu      $a0, $zero, 0xED8
/* FB218 800DD128 AFBF005C */  sw         $ra, 0x5C($sp)
/* FB21C 800DD12C AFB30054 */  sw         $s3, 0x54($sp)
/* FB220 800DD130 AFB20050 */  sw         $s2, 0x50($sp)
/* FB224 800DD134 0C01FB4C */  jal        func_8007ED30
/* FB228 800DD138 AFB00048 */   sw        $s0, 0x48($sp)
/* FB22C 800DD13C 0C011C80 */  jal        func_80047200
/* FB230 800DD140 00402021 */   addu      $a0, $v0, $zero
/* FB234 800DD144 00409021 */  addu       $s2, $v0, $zero
/* FB238 800DD148 16400008 */  bnez       $s2, .Lmenu_800DD16C
/* FB23C 800DD14C 27A40018 */   addiu     $a0, $sp, 0x18
/* FB240 800DD150 3C04800D */  lui        $a0, %hi(D_menu_800CAB50)
/* FB244 800DD154 2484AB50 */  addiu      $a0, $a0, %lo(D_menu_800CAB50)
/* FB248 800DD158 00002821 */  addu       $a1, $zero, $zero
/* FB24C 800DD15C 00A03021 */  addu       $a2, $a1, $zero
/* FB250 800DD160 0C011ACF */  jal        func_80046B3C
/* FB254 800DD164 00A03821 */   addu      $a3, $a1, $zero
/* FB258 800DD168 27A40018 */  addiu      $a0, $sp, 0x18
.Lmenu_800DD16C:
/* FB25C 800DD16C 3C138003 */  lui        $s3, %hi(D_8002FB34)
/* FB260 800DD170 2670FB34 */  addiu      $s0, $s3, %lo(D_8002FB34)
/* FB264 800DD174 0C0006FA */  jal        func_80001BE8
/* FB268 800DD178 02002821 */   addu      $a1, $s0, $zero
/* FB26C 800DD17C 3C02800D */  lui        $v0, %hi(D_menu_800CAB5C)
/* FB270 800DD180 2445AB5C */  addiu      $a1, $v0, %lo(D_menu_800CAB5C)
/* FB274 800DD184 10A00005 */  beqz       $a1, .Lmenu_800DD19C
/* FB278 800DD188 02002021 */   addu      $a0, $s0, $zero
/* FB27C 800DD18C 0C000708 */  jal        func_80001C20
/* FB280 800DD190 24060100 */   addiu     $a2, $zero, 0x100
/* FB284 800DD194 08037468 */  j          .Lmenu_800DD1A0
/* FB288 800DD198 A20000FF */   sb        $zero, 0xFF($s0)
.Lmenu_800DD19C:
/* FB28C 800DD19C A260FB34 */  sb         $zero, %lo(D_8002FB34)($s3)
.Lmenu_800DD1A0:
/* FB290 800DD1A0 00008021 */  addu       $s0, $zero, $zero
/* FB294 800DD1A4 24130001 */  addiu      $s3, $zero, 0x1
.Lmenu_800DD1A8:
/* FB298 800DD1A8 2A020006 */  slti       $v0, $s0, 0x6
/* FB29C 800DD1AC 10400018 */  beqz       $v0, .Lmenu_800DD210
/* FB2A0 800DD1B0 02131004 */   sllv      $v0, $s3, $s0
/* FB2A4 800DD1B4 8E230010 */  lw         $v1, 0x10($s1)
/* FB2A8 800DD1B8 00431024 */  and        $v0, $v0, $v1
/* FB2AC 800DD1BC 10400012 */  beqz       $v0, .Lmenu_800DD208
/* FB2B0 800DD1C0 02802821 */   addu      $a1, $s4, $zero
/* FB2B4 800DD1C4 8E220038 */  lw         $v0, 0x38($s1)
/* FB2B8 800DD1C8 02003021 */  addu       $a2, $s0, $zero
/* FB2BC 800DD1CC 8C440034 */  lw         $a0, 0x34($v0)
/* FB2C0 800DD1D0 0C035C51 */  jal        func_menu_800D7144
/* FB2C4 800DD1D4 27A70010 */   addiu     $a3, $sp, 0x10
/* FB2C8 800DD1D8 8E240018 */  lw         $a0, 0x18($s1)
/* FB2CC 800DD1DC 0C016F2D */  jal        func_8005BCB4
/* FB2D0 800DD1E0 27A50010 */   addiu     $a1, $sp, 0x10
/* FB2D4 800DD1E4 5440FFF0 */  bnel       $v0, $zero, .Lmenu_800DD1A8
/* FB2D8 800DD1E8 26100001 */   addiu     $s0, $s0, 0x1
/* FB2DC 800DD1EC 02202021 */  addu       $a0, $s1, $zero
/* FB2E0 800DD1F0 27A50010 */  addiu      $a1, $sp, 0x10
/* FB2E4 800DD1F4 0C0373CB */  jal        func_menu_800DCF2C
/* FB2E8 800DD1F8 02403021 */   addu      $a2, $s2, $zero
/* FB2EC 800DD1FC 02202021 */  addu       $a0, $s1, $zero
/* FB2F0 800DD200 0C037412 */  jal        func_menu_800DD048
/* FB2F4 800DD204 27A50010 */   addiu     $a1, $sp, 0x10
.Lmenu_800DD208:
/* FB2F8 800DD208 0803746A */  j          .Lmenu_800DD1A8
/* FB2FC 800DD20C 26100001 */   addiu     $s0, $s0, 0x1
.Lmenu_800DD210:
/* FB300 800DD210 3C108003 */  lui        $s0, %hi(D_8002FB34)
/* FB304 800DD214 2610FB34 */  addiu      $s0, $s0, %lo(D_8002FB34)
/* FB308 800DD218 02002021 */  addu       $a0, $s0, $zero
/* FB30C 800DD21C 27A50018 */  addiu      $a1, $sp, 0x18
/* FB310 800DD220 0C000708 */  jal        func_80001C20
/* FB314 800DD224 24060100 */   addiu     $a2, $zero, 0x100
/* FB318 800DD228 12400007 */  beqz       $s2, .Lmenu_800DD248
/* FB31C 800DD22C A20000FF */   sb        $zero, 0xFF($s0)
/* FB320 800DD230 8E4205AC */  lw         $v0, 0x5AC($s2)
/* FB324 800DD234 24050003 */  addiu      $a1, $zero, 0x3
/* FB328 800DD238 84440010 */  lh         $a0, 0x10($v0)
/* FB32C 800DD23C 8C420014 */  lw         $v0, 0x14($v0)
/* FB330 800DD240 0040F809 */  jalr       $v0
/* FB334 800DD244 02442021 */   addu      $a0, $s2, $a0
.Lmenu_800DD248:
/* FB338 800DD248 8FBF005C */  lw         $ra, 0x5C($sp)
/* FB33C 800DD24C 8FB40058 */  lw         $s4, 0x58($sp)
/* FB340 800DD250 8FB30054 */  lw         $s3, 0x54($sp)
/* FB344 800DD254 8FB20050 */  lw         $s2, 0x50($sp)
/* FB348 800DD258 8FB1004C */  lw         $s1, 0x4C($sp)
/* FB34C 800DD25C 8FB00048 */  lw         $s0, 0x48($sp)
/* FB350 800DD260 03E00008 */  jr         $ra
/* FB354 800DD264 27BD0060 */   addiu     $sp, $sp, 0x60

glabel func_menu_800DD268
/* FB358 800DD268 27BDFFD8 */  addiu      $sp, $sp, -0x28
/* FB35C 800DD26C AFB00018 */  sw         $s0, 0x18($sp)
/* FB360 800DD270 00A08021 */  addu       $s0, $a1, $zero
/* FB364 800DD274 AFB1001C */  sw         $s1, 0x1C($sp)
/* FB368 800DD278 00C08821 */  addu       $s1, $a2, $zero
/* FB36C 800DD27C AFBF0020 */  sw         $ra, 0x20($sp)
/* FB370 800DD280 AE300010 */  sw         $s0, 0x10($s1)
/* FB374 800DD284 8E02003C */  lw         $v0, 0x3C($s0)
/* FB378 800DD288 27A50010 */  addiu      $a1, $sp, 0x10
/* FB37C 800DD28C 84440058 */  lh         $a0, 0x58($v0)
/* FB380 800DD290 8C42005C */  lw         $v0, 0x5C($v0)
/* FB384 800DD294 0040F809 */  jalr       $v0
/* FB388 800DD298 02042021 */   addu      $a0, $s0, $a0
/* FB38C 800DD29C 8FA20010 */  lw         $v0, 0x10($sp)
/* FB390 800DD2A0 94420000 */  lhu        $v0, 0x0($v0)
/* FB394 800DD2A4 00002821 */  addu       $a1, $zero, $zero
/* FB398 800DD2A8 AE220000 */  sw         $v0, 0x0($s1)
/* FB39C 800DD2AC 8E02003C */  lw         $v0, 0x3C($s0)
/* FB3A0 800DD2B0 00A03021 */  addu       $a2, $a1, $zero
/* FB3A4 800DD2B4 84440060 */  lh         $a0, 0x60($v0)
/* FB3A8 800DD2B8 8C420064 */  lw         $v0, 0x64($v0)
/* FB3AC 800DD2BC 0040F809 */  jalr       $v0
/* FB3B0 800DD2C0 02042021 */   addu      $a0, $s0, $a0
/* FB3B4 800DD2C4 8E020014 */  lw         $v0, 0x14($s0)
/* FB3B8 800DD2C8 8C420000 */  lw         $v0, 0x0($v0)
/* FB3BC 800DD2CC AE220004 */  sw         $v0, 0x4($s1)
/* FB3C0 800DD2D0 8E02001C */  lw         $v0, 0x1C($s0)
/* FB3C4 800DD2D4 AE220008 */  sw         $v0, 0x8($s1)
/* FB3C8 800DD2D8 8E020004 */  lw         $v0, 0x4($s0)
/* FB3CC 800DD2DC AE22000C */  sw         $v0, 0xC($s1)
/* FB3D0 800DD2E0 8FBF0020 */  lw         $ra, 0x20($sp)
/* FB3D4 800DD2E4 8FB1001C */  lw         $s1, 0x1C($sp)
/* FB3D8 800DD2E8 8FB00018 */  lw         $s0, 0x18($sp)
/* FB3DC 800DD2EC 03E00008 */  jr         $ra
/* FB3E0 800DD2F0 27BD0028 */   addiu     $sp, $sp, 0x28

glabel func_menu_800DD2F4
/* FB3E4 800DD2F4 00802821 */  addu       $a1, $a0, $zero
/* FB3E8 800DD2F8 8CA2003C */  lw         $v0, 0x3C($a1)
/* FB3EC 800DD2FC 8CA40050 */  lw         $a0, 0x50($a1)
/* FB3F0 800DD300 8CA30064 */  lw         $v1, 0x64($a1)
/* FB3F4 800DD304 00441021 */  addu       $v0, $v0, $a0
/* FB3F8 800DD308 0062182A */  slt        $v1, $v1, $v0
/* FB3FC 800DD30C 14600011 */  bnez       $v1, .Lmenu_800DD354
/* FB400 800DD310 00001021 */   addu      $v0, $zero, $zero
/* FB404 800DD314 8CA20040 */  lw         $v0, 0x40($a1)
/* FB408 800DD318 8CA40054 */  lw         $a0, 0x54($a1)
/* FB40C 800DD31C 8CA30068 */  lw         $v1, 0x68($a1)
/* FB410 800DD320 00441021 */  addu       $v0, $v0, $a0
/* FB414 800DD324 0062182A */  slt        $v1, $v1, $v0
/* FB418 800DD328 14600008 */  bnez       $v1, .Lmenu_800DD34C
/* FB41C 800DD32C 00000000 */   nop
/* FB420 800DD330 8CA30048 */  lw         $v1, 0x48($a1)
/* FB424 800DD334 8CA4005C */  lw         $a0, 0x5C($a1)
/* FB428 800DD338 8CA20070 */  lw         $v0, 0x70($a1)
/* FB42C 800DD33C 00641821 */  addu       $v1, $v1, $a0
/* FB430 800DD340 0043102A */  slt        $v0, $v0, $v1
/* FB434 800DD344 03E00008 */  jr         $ra
/* FB438 800DD348 38420001 */   xori      $v0, $v0, 0x1
.Lmenu_800DD34C:
/* FB43C 800DD34C 03E00008 */  jr         $ra
/* FB440 800DD350 00001021 */   addu      $v0, $zero, $zero
.Lmenu_800DD354:
/* FB444 800DD354 03E00008 */  jr         $ra
/* FB448 800DD358 00000000 */   nop

glabel func_menu_800DD35C
/* FB44C 800DD35C 27BDFFD0 */  addiu      $sp, $sp, -0x30
/* FB450 800DD360 AFB30024 */  sw         $s3, 0x24($sp)
/* FB454 800DD364 00809821 */  addu       $s3, $a0, $zero
/* FB458 800DD368 AFB00018 */  sw         $s0, 0x18($sp)
/* FB45C 800DD36C 00008021 */  addu       $s0, $zero, $zero
/* FB460 800DD370 AFB40028 */  sw         $s4, 0x28($sp)
/* FB464 800DD374 2414FFFF */  addiu      $s4, $zero, -0x1
/* FB468 800DD378 AFBF002C */  sw         $ra, 0x2C($sp)
/* FB46C 800DD37C AFB20020 */  sw         $s2, 0x20($sp)
/* FB470 800DD380 AFB1001C */  sw         $s1, 0x1C($sp)
/* FB474 800DD384 8E710048 */  lw         $s1, 0x48($s3)
.Lmenu_800DD388:
/* FB478 800DD388 8E62005C */  lw         $v0, 0x5C($s3)
/* FB47C 800DD38C 0202102A */  slt        $v0, $s0, $v0
/* FB480 800DD390 1040001E */  beqz       $v0, .Lmenu_800DD40C
/* FB484 800DD394 00000000 */   nop
/* FB488 800DD398 8E620060 */  lw         $v0, 0x60($s3)
/* FB48C 800DD39C 8C430008 */  lw         $v1, 0x8($v0)
/* FB490 800DD3A0 00101080 */  sll        $v0, $s0, 2
/* FB494 800DD3A4 00431021 */  addu       $v0, $v0, $v1
/* FB498 800DD3A8 8C420000 */  lw         $v0, 0x0($v0)
/* FB49C 800DD3AC 10400015 */  beqz       $v0, .Lmenu_800DD404
/* FB4A0 800DD3B0 00409021 */   addu      $s2, $v0, $zero
/* FB4A4 800DD3B4 88470014 */  lwl        $a3, 0x14($v0)
/* FB4A8 800DD3B8 98470017 */  lwr        $a3, 0x17($v0)
/* FB4AC 800DD3BC 88480018 */  lwl        $t0, 0x18($v0)
/* FB4B0 800DD3C0 9848001B */  lwr        $t0, 0x1B($v0)
/* FB4B4 800DD3C4 ABA70010 */  swl        $a3, 0x10($sp)
/* FB4B8 800DD3C8 BBA70013 */  swr        $a3, 0x13($sp)
/* FB4BC 800DD3CC ABA80014 */  swl        $t0, 0x14($sp)
/* FB4C0 800DD3D0 BBA80017 */  swr        $t0, 0x17($sp)
/* FB4C4 800DD3D4 8E640074 */  lw         $a0, 0x74($s3)
/* FB4C8 800DD3D8 0C0153EC */  jal        func_80054FB0
/* FB4CC 800DD3DC 27A50010 */   addiu     $a1, $sp, 0x10
/* FB4D0 800DD3E0 10540003 */  beq        $v0, $s4, .Lmenu_800DD3F0
/* FB4D4 800DD3E4 0051102A */   slt       $v0, $v0, $s1
/* FB4D8 800DD3E8 5440FFE7 */  bnel       $v0, $zero, .Lmenu_800DD388
/* FB4DC 800DD3EC 26100001 */   addiu     $s0, $s0, 0x1
.Lmenu_800DD3F0:
/* FB4E0 800DD3F0 02202821 */  addu       $a1, $s1, $zero
/* FB4E4 800DD3F4 26310001 */  addiu      $s1, $s1, 0x1
/* FB4E8 800DD3F8 8E640074 */  lw         $a0, 0x74($s3)
/* FB4EC 800DD3FC 0C01543D */  jal        func_800550F4
/* FB4F0 800DD400 02403021 */   addu      $a2, $s2, $zero
.Lmenu_800DD404:
/* FB4F4 800DD404 080374E2 */  j          .Lmenu_800DD388
/* FB4F8 800DD408 26100001 */   addiu     $s0, $s0, 0x1
.Lmenu_800DD40C:
/* FB4FC 800DD40C 8FBF002C */  lw         $ra, 0x2C($sp)
/* FB500 800DD410 8FB40028 */  lw         $s4, 0x28($sp)
/* FB504 800DD414 8FB30024 */  lw         $s3, 0x24($sp)
/* FB508 800DD418 8FB20020 */  lw         $s2, 0x20($sp)
/* FB50C 800DD41C 8FB1001C */  lw         $s1, 0x1C($sp)
/* FB510 800DD420 8FB00018 */  lw         $s0, 0x18($sp)
/* FB514 800DD424 03E00008 */  jr         $ra
/* FB518 800DD428 27BD0030 */   addiu     $sp, $sp, 0x30

glabel func_menu_800DD42C
/* FB51C 800DD42C 27BDFFD8 */  addiu      $sp, $sp, -0x28
/* FB520 800DD430 AFB1001C */  sw         $s1, 0x1C($sp)
/* FB524 800DD434 00A08821 */  addu       $s1, $a1, $zero
/* FB528 800DD438 AFB20020 */  sw         $s2, 0x20($sp)
/* FB52C 800DD43C AFBF0024 */  sw         $ra, 0x24($sp)
/* FB530 800DD440 AFB00018 */  sw         $s0, 0x18($sp)
/* FB534 800DD444 8C90004C */  lw         $s0, 0x4C($a0)
/* FB538 800DD448 12200023 */  beqz       $s1, .Lmenu_800DD4D8
/* FB53C 800DD44C 24120001 */   addiu     $s2, $zero, 0x1
/* FB540 800DD450 8E220020 */  lw         $v0, 0x20($s1)
/* FB544 800DD454 10400020 */  beqz       $v0, .Lmenu_800DD4D8
/* FB548 800DD458 27A50010 */   addiu     $a1, $sp, 0x10
/* FB54C 800DD45C 8E02003C */  lw         $v0, 0x3C($s0)
/* FB550 800DD460 84440058 */  lh         $a0, 0x58($v0)
/* FB554 800DD464 8C42005C */  lw         $v0, 0x5C($v0)
/* FB558 800DD468 0040F809 */  jalr       $v0
/* FB55C 800DD46C 02042021 */   addu      $a0, $s0, $a0
/* FB560 800DD470 8E22003C */  lw         $v0, 0x3C($s1)
/* FB564 800DD474 27A50014 */  addiu      $a1, $sp, 0x14
/* FB568 800DD478 84440058 */  lh         $a0, 0x58($v0)
/* FB56C 800DD47C 8C42005C */  lw         $v0, 0x5C($v0)
/* FB570 800DD480 0040F809 */  jalr       $v0
/* FB574 800DD484 02242021 */   addu      $a0, $s1, $a0
/* FB578 800DD488 00002821 */  addu       $a1, $zero, $zero
/* FB57C 800DD48C 8FA20010 */  lw         $v0, 0x10($sp)
/* FB580 800DD490 8FA30014 */  lw         $v1, 0x14($sp)
/* FB584 800DD494 94420002 */  lhu        $v0, 0x2($v0)
/* FB588 800DD498 94630002 */  lhu        $v1, 0x2($v1)
/* FB58C 800DD49C 00A03021 */  addu       $a2, $a1, $zero
/* FB590 800DD4A0 00431026 */  xor        $v0, $v0, $v1
/* FB594 800DD4A4 8E03003C */  lw         $v1, 0x3C($s0)
/* FB598 800DD4A8 00A2902B */  sltu       $s2, $a1, $v0
/* FB59C 800DD4AC 84640060 */  lh         $a0, 0x60($v1)
/* FB5A0 800DD4B0 8C620064 */  lw         $v0, 0x64($v1)
/* FB5A4 800DD4B4 0040F809 */  jalr       $v0
/* FB5A8 800DD4B8 02042021 */   addu      $a0, $s0, $a0
/* FB5AC 800DD4BC 00002821 */  addu       $a1, $zero, $zero
/* FB5B0 800DD4C0 8E22003C */  lw         $v0, 0x3C($s1)
/* FB5B4 800DD4C4 00A03021 */  addu       $a2, $a1, $zero
/* FB5B8 800DD4C8 84440060 */  lh         $a0, 0x60($v0)
/* FB5BC 800DD4CC 8C420064 */  lw         $v0, 0x64($v0)
/* FB5C0 800DD4D0 0040F809 */  jalr       $v0
/* FB5C4 800DD4D4 02242021 */   addu      $a0, $s1, $a0
.Lmenu_800DD4D8:
/* FB5C8 800DD4D8 02401021 */  addu       $v0, $s2, $zero
/* FB5CC 800DD4DC 8FBF0024 */  lw         $ra, 0x24($sp)
/* FB5D0 800DD4E0 8FB20020 */  lw         $s2, 0x20($sp)
/* FB5D4 800DD4E4 8FB1001C */  lw         $s1, 0x1C($sp)
/* FB5D8 800DD4E8 8FB00018 */  lw         $s0, 0x18($sp)
/* FB5DC 800DD4EC 03E00008 */  jr         $ra
/* FB5E0 800DD4F0 27BD0028 */   addiu     $sp, $sp, 0x28

glabel func_menu_800DD4F4
/* FB5E4 800DD4F4 27BDFFB0 */  addiu      $sp, $sp, -0x50
/* FB5E8 800DD4F8 AFB00028 */  sw         $s0, 0x28($sp)
/* FB5EC 800DD4FC 00808021 */  addu       $s0, $a0, $zero
/* FB5F0 800DD500 AFB70044 */  sw         $s7, 0x44($sp)
/* FB5F4 800DD504 00A0B821 */  addu       $s7, $a1, $zero
/* FB5F8 800DD508 AFB20030 */  sw         $s2, 0x30($sp)
/* FB5FC 800DD50C 02E09021 */  addu       $s2, $s7, $zero
/* FB600 800DD510 3C038012 */  lui        $v1, %hi(D_801269B0)
/* FB604 800DD514 8C6369B0 */  lw         $v1, %lo(D_801269B0)($v1)
/* FB608 800DD518 3C028008 */  lui        $v0, %hi(D_80083D40)
/* FB60C 800DD51C AFBE0048 */  sw         $fp, 0x48($sp)
/* FB610 800DD520 8C5E3D40 */  lw         $fp, %lo(D_80083D40)($v0)
/* FB614 800DD524 2404FFFF */  addiu      $a0, $zero, -0x1
/* FB618 800DD528 AFBF004C */  sw         $ra, 0x4C($sp)
/* FB61C 800DD52C AFB60040 */  sw         $s6, 0x40($sp)
/* FB620 800DD530 AFB5003C */  sw         $s5, 0x3C($sp)
/* FB624 800DD534 AFB40038 */  sw         $s4, 0x38($sp)
/* FB628 800DD538 AFB30034 */  sw         $s3, 0x34($sp)
/* FB62C 800DD53C 10640003 */  beq        $v1, $a0, .Lmenu_800DD54C
/* FB630 800DD540 AFB1002C */   sw        $s1, 0x2C($sp)
/* FB634 800DD544 0C015F88 */  jal        func_80057E20
/* FB638 800DD548 00602021 */   addu      $a0, $v1, $zero
.Lmenu_800DD54C:
/* FB63C 800DD54C 8E030014 */  lw         $v1, 0x14($s0)
/* FB640 800DD550 8C620000 */  lw         $v0, 0x0($v1)
/* FB644 800DD554 84440030 */  lh         $a0, 0x30($v0)
/* FB648 800DD558 8C420034 */  lw         $v0, 0x34($v0)
/* FB64C 800DD55C 0040F809 */  jalr       $v0
/* FB650 800DD560 00642021 */   addu      $a0, $v1, $a0
/* FB654 800DD564 00408821 */  addu       $s1, $v0, $zero
/* FB658 800DD568 56200008 */  bnel       $s1, $zero, .Lmenu_800DD58C
/* FB65C 800DD56C 27A50020 */   addiu     $a1, $sp, 0x20
/* FB660 800DD570 3C04800D */  lui        $a0, %hi(D_menu_800CAB50)
/* FB664 800DD574 2484AB50 */  addiu      $a0, $a0, %lo(D_menu_800CAB50)
/* FB668 800DD578 00002821 */  addu       $a1, $zero, $zero
/* FB66C 800DD57C 00A03021 */  addu       $a2, $a1, $zero
/* FB670 800DD580 0C011ACF */  jal        func_80046B3C
/* FB674 800DD584 00A03821 */   addu      $a3, $a1, $zero
/* FB678 800DD588 27A50020 */  addiu      $a1, $sp, 0x20
.Lmenu_800DD58C:
/* FB67C 800DD58C 8E030040 */  lw         $v1, 0x40($s0)
/* FB680 800DD590 8E020054 */  lw         $v0, 0x54($s0)
/* FB684 800DD594 8E06004C */  lw         $a2, 0x4C($s0)
/* FB688 800DD598 00621821 */  addu       $v1, $v1, $v0
/* FB68C 800DD59C 8CC7003C */  lw         $a3, 0x3C($a2)
/* FB690 800DD5A0 24760009 */  addiu      $s6, $v1, 0x9
/* FB694 800DD5A4 84E40058 */  lh         $a0, 0x58($a3)
/* FB698 800DD5A8 8E02003C */  lw         $v0, 0x3C($s0)
/* FB69C 800DD5AC 00C42021 */  addu       $a0, $a2, $a0
/* FB6A0 800DD5B0 8E060050 */  lw         $a2, 0x50($s0)
/* FB6A4 800DD5B4 8E030044 */  lw         $v1, 0x44($s0)
/* FB6A8 800DD5B8 00461021 */  addu       $v0, $v0, $a2
/* FB6AC 800DD5BC 24550009 */  addiu      $s5, $v0, 0x9
/* FB6B0 800DD5C0 8E060058 */  lw         $a2, 0x58($s0)
/* FB6B4 800DD5C4 8E020048 */  lw         $v0, 0x48($s0)
/* FB6B8 800DD5C8 00661821 */  addu       $v1, $v1, $a2
/* FB6BC 800DD5CC 24740009 */  addiu      $s4, $v1, 0x9
/* FB6C0 800DD5D0 8E06005C */  lw         $a2, 0x5C($s0)
/* FB6C4 800DD5D4 8CE3005C */  lw         $v1, 0x5C($a3)
/* FB6C8 800DD5D8 00461021 */  addu       $v0, $v0, $a2
/* FB6CC 800DD5DC 0060F809 */  jalr       $v1
/* FB6D0 800DD5E0 24530002 */   addiu     $s3, $v0, 0x2
/* FB6D4 800DD5E4 3242FFFF */  andi       $v0, $s2, 0xFFFF
/* FB6D8 800DD5E8 14400003 */  bnez       $v0, .Lmenu_800DD5F8
/* FB6DC 800DD5EC 02E02821 */   addu      $a1, $s7, $zero
/* FB6E0 800DD5F0 8FA20020 */  lw         $v0, 0x20($sp)
/* FB6E4 800DD5F4 94450002 */  lhu        $a1, 0x2($v0)
.Lmenu_800DD5F8:
/* FB6E8 800DD5F8 8E22003C */  lw         $v0, 0x3C($s1)
/* FB6EC 800DD5FC 30A6FFFF */  andi       $a2, $a1, 0xFFFF
/* FB6F0 800DD600 84440048 */  lh         $a0, 0x48($v0)
/* FB6F4 800DD604 02A03821 */  addu       $a3, $s5, $zero
/* FB6F8 800DD608 AFB60010 */  sw         $s6, 0x10($sp)
/* FB6FC 800DD60C AFB40014 */  sw         $s4, 0x14($sp)
/* FB700 800DD610 AFB30018 */  sw         $s3, 0x18($sp)
/* FB704 800DD614 8E050018 */  lw         $a1, 0x18($s0)
/* FB708 800DD618 8C42004C */  lw         $v0, 0x4C($v0)
/* FB70C 800DD61C 0040F809 */  jalr       $v0
/* FB710 800DD620 02242021 */   addu      $a0, $s1, $a0
/* FB714 800DD624 8E03004C */  lw         $v1, 0x4C($s0)
/* FB718 800DD628 00002821 */  addu       $a1, $zero, $zero
/* FB71C 800DD62C 8C62003C */  lw         $v0, 0x3C($v1)
/* FB720 800DD630 00A03021 */  addu       $a2, $a1, $zero
/* FB724 800DD634 84440060 */  lh         $a0, 0x60($v0)
/* FB728 800DD638 8C420064 */  lw         $v0, 0x64($v0)
/* FB72C 800DD63C 0040F809 */  jalr       $v0
/* FB730 800DD640 00642021 */   addu      $a0, $v1, $a0
/* FB734 800DD644 0C015F88 */  jal        func_80057E20
/* FB738 800DD648 03C02021 */   addu      $a0, $fp, $zero
/* FB73C 800DD64C 02201021 */  addu       $v0, $s1, $zero
/* FB740 800DD650 8FBF004C */  lw         $ra, 0x4C($sp)
/* FB744 800DD654 8FBE0048 */  lw         $fp, 0x48($sp)
/* FB748 800DD658 8FB70044 */  lw         $s7, 0x44($sp)
/* FB74C 800DD65C 8FB60040 */  lw         $s6, 0x40($sp)
/* FB750 800DD660 8FB5003C */  lw         $s5, 0x3C($sp)
/* FB754 800DD664 8FB40038 */  lw         $s4, 0x38($sp)
/* FB758 800DD668 8FB30034 */  lw         $s3, 0x34($sp)
/* FB75C 800DD66C 8FB20030 */  lw         $s2, 0x30($sp)
/* FB760 800DD670 8FB1002C */  lw         $s1, 0x2C($sp)
/* FB764 800DD674 8FB00028 */  lw         $s0, 0x28($sp)
/* FB768 800DD678 03E00008 */  jr         $ra
/* FB76C 800DD67C 27BD0050 */   addiu     $sp, $sp, 0x50

glabel func_menu_800DD680
/* FB770 800DD680 27BDFF90 */  addiu      $sp, $sp, -0x70
/* FB774 800DD684 AFB60060 */  sw         $s6, 0x60($sp)
/* FB778 800DD688 00A0B021 */  addu       $s6, $a1, $zero
/* FB77C 800DD68C AFB70064 */  sw         $s7, 0x64($sp)
/* FB780 800DD690 00C0B821 */  addu       $s7, $a2, $zero
/* FB784 800DD694 AFBE0068 */  sw         $fp, 0x68($sp)
/* FB788 800DD698 00E0F021 */  addu       $fp, $a3, $zero
/* FB78C 800DD69C AFBF006C */  sw         $ra, 0x6C($sp)
/* FB790 800DD6A0 AFB5005C */  sw         $s5, 0x5C($sp)
/* FB794 800DD6A4 AFB40058 */  sw         $s4, 0x58($sp)
/* FB798 800DD6A8 AFB30054 */  sw         $s3, 0x54($sp)
/* FB79C 800DD6AC AFB20050 */  sw         $s2, 0x50($sp)
/* FB7A0 800DD6B0 AFB1004C */  sw         $s1, 0x4C($sp)
/* FB7A4 800DD6B4 AFB00048 */  sw         $s0, 0x48($sp)
/* FB7A8 800DD6B8 8EC2003C */  lw         $v0, 0x3C($s6)
/* FB7AC 800DD6BC 27A50040 */  addiu      $a1, $sp, 0x40
/* FB7B0 800DD6C0 84440058 */  lh         $a0, 0x58($v0)
/* FB7B4 800DD6C4 8C42005C */  lw         $v0, 0x5C($v0)
/* FB7B8 800DD6C8 0040F809 */  jalr       $v0
/* FB7BC 800DD6CC 02C42021 */   addu      $a0, $s6, $a0
/* FB7C0 800DD6D0 8EE2003C */  lw         $v0, 0x3C($s7)
/* FB7C4 800DD6D4 27A50044 */  addiu      $a1, $sp, 0x44
/* FB7C8 800DD6D8 84440058 */  lh         $a0, 0x58($v0)
/* FB7CC 800DD6DC 8C42005C */  lw         $v0, 0x5C($v0)
/* FB7D0 800DD6E0 0040F809 */  jalr       $v0
/* FB7D4 800DD6E4 02E42021 */   addu      $a0, $s7, $a0
/* FB7D8 800DD6E8 8FA20040 */  lw         $v0, 0x40($sp)
/* FB7DC 800DD6EC 94550000 */  lhu        $s5, 0x0($v0)
/* FB7E0 800DD6F0 12A00049 */  beqz       $s5, .Lmenu_800DD818
/* FB7E4 800DD6F4 00008821 */   addu      $s1, $zero, $zero
/* FB7E8 800DD6F8 27B40030 */  addiu      $s4, $sp, 0x30
/* FB7EC 800DD6FC 27B30028 */  addiu      $s3, $sp, 0x28
/* FB7F0 800DD700 27B20018 */  addiu      $s2, $sp, 0x18
.Lmenu_800DD704:
/* FB7F4 800DD704 8FA30040 */  lw         $v1, 0x40($sp)
/* FB7F8 800DD708 02202821 */  addu       $a1, $s1, $zero
/* FB7FC 800DD70C 8C620008 */  lw         $v0, 0x8($v1)
/* FB800 800DD710 02803021 */  addu       $a2, $s4, $zero
/* FB804 800DD714 84440030 */  lh         $a0, 0x30($v0)
/* FB808 800DD718 8C420034 */  lw         $v0, 0x34($v0)
/* FB80C 800DD71C 0040F809 */  jalr       $v0
/* FB810 800DD720 00642021 */   addu      $a0, $v1, $a0
/* FB814 800DD724 023E8021 */  addu       $s0, $s1, $fp
/* FB818 800DD728 8FA30044 */  lw         $v1, 0x44($sp)
/* FB81C 800DD72C 02002821 */  addu       $a1, $s0, $zero
/* FB820 800DD730 8C620008 */  lw         $v0, 0x8($v1)
/* FB824 800DD734 02803021 */  addu       $a2, $s4, $zero
/* FB828 800DD738 84440050 */  lh         $a0, 0x50($v0)
/* FB82C 800DD73C 8C420054 */  lw         $v0, 0x54($v0)
/* FB830 800DD740 0040F809 */  jalr       $v0
/* FB834 800DD744 00642021 */   addu      $a0, $v1, $a0
/* FB838 800DD748 8FA30040 */  lw         $v1, 0x40($sp)
/* FB83C 800DD74C 02202821 */  addu       $a1, $s1, $zero
/* FB840 800DD750 8C620008 */  lw         $v0, 0x8($v1)
/* FB844 800DD754 02603021 */  addu       $a2, $s3, $zero
/* FB848 800DD758 84440038 */  lh         $a0, 0x38($v0)
/* FB84C 800DD75C 8C42003C */  lw         $v0, 0x3C($v0)
/* FB850 800DD760 0040F809 */  jalr       $v0
/* FB854 800DD764 00642021 */   addu      $a0, $v1, $a0
/* FB858 800DD768 8FA30044 */  lw         $v1, 0x44($sp)
/* FB85C 800DD76C 02002821 */  addu       $a1, $s0, $zero
/* FB860 800DD770 8C620008 */  lw         $v0, 0x8($v1)
/* FB864 800DD774 02603021 */  addu       $a2, $s3, $zero
/* FB868 800DD778 84440058 */  lh         $a0, 0x58($v0)
/* FB86C 800DD77C 8C42005C */  lw         $v0, 0x5C($v0)
/* FB870 800DD780 0040F809 */  jalr       $v0
/* FB874 800DD784 00642021 */   addu      $a0, $v1, $a0
/* FB878 800DD788 8FA30040 */  lw         $v1, 0x40($sp)
/* FB87C 800DD78C 02202821 */  addu       $a1, $s1, $zero
/* FB880 800DD790 8C620008 */  lw         $v0, 0x8($v1)
/* FB884 800DD794 02403021 */  addu       $a2, $s2, $zero
/* FB888 800DD798 84440040 */  lh         $a0, 0x40($v0)
/* FB88C 800DD79C 8C420044 */  lw         $v0, 0x44($v0)
/* FB890 800DD7A0 0040F809 */  jalr       $v0
/* FB894 800DD7A4 00642021 */   addu      $a0, $v1, $a0
/* FB898 800DD7A8 8FA30044 */  lw         $v1, 0x44($sp)
/* FB89C 800DD7AC 02002821 */  addu       $a1, $s0, $zero
/* FB8A0 800DD7B0 8C620008 */  lw         $v0, 0x8($v1)
/* FB8A4 800DD7B4 02403021 */  addu       $a2, $s2, $zero
/* FB8A8 800DD7B8 84440060 */  lh         $a0, 0x60($v0)
/* FB8AC 800DD7BC 8C420064 */  lw         $v0, 0x64($v0)
/* FB8B0 800DD7C0 0040F809 */  jalr       $v0
/* FB8B4 800DD7C4 00642021 */   addu      $a0, $v1, $a0
/* FB8B8 800DD7C8 02202821 */  addu       $a1, $s1, $zero
/* FB8BC 800DD7CC 8FA30040 */  lw         $v1, 0x40($sp)
/* FB8C0 800DD7D0 27A60010 */  addiu      $a2, $sp, 0x10
/* FB8C4 800DD7D4 8C620008 */  lw         $v0, 0x8($v1)
/* FB8C8 800DD7D8 26310001 */  addiu      $s1, $s1, 0x1
/* FB8CC 800DD7DC 84440048 */  lh         $a0, 0x48($v0)
/* FB8D0 800DD7E0 8C42004C */  lw         $v0, 0x4C($v0)
/* FB8D4 800DD7E4 0040F809 */  jalr       $v0
/* FB8D8 800DD7E8 00642021 */   addu      $a0, $v1, $a0
/* FB8DC 800DD7EC 8FA30044 */  lw         $v1, 0x44($sp)
/* FB8E0 800DD7F0 02002821 */  addu       $a1, $s0, $zero
/* FB8E4 800DD7F4 8C620008 */  lw         $v0, 0x8($v1)
/* FB8E8 800DD7F8 27A60010 */  addiu      $a2, $sp, 0x10
/* FB8EC 800DD7FC 84440068 */  lh         $a0, 0x68($v0)
/* FB8F0 800DD800 8C42006C */  lw         $v0, 0x6C($v0)
/* FB8F4 800DD804 0040F809 */  jalr       $v0
/* FB8F8 800DD808 00642021 */   addu      $a0, $v1, $a0
/* FB8FC 800DD80C 0235102A */  slt        $v0, $s1, $s5
/* FB900 800DD810 1440FFBC */  bnez       $v0, .Lmenu_800DD704
/* FB904 800DD814 00000000 */   nop
.Lmenu_800DD818:
/* FB908 800DD818 00002821 */  addu       $a1, $zero, $zero
/* FB90C 800DD81C 8EC2003C */  lw         $v0, 0x3C($s6)
/* FB910 800DD820 00A03021 */  addu       $a2, $a1, $zero
/* FB914 800DD824 84440060 */  lh         $a0, 0x60($v0)
/* FB918 800DD828 8C420064 */  lw         $v0, 0x64($v0)
/* FB91C 800DD82C 0040F809 */  jalr       $v0
/* FB920 800DD830 02C42021 */   addu      $a0, $s6, $a0
/* FB924 800DD834 00002821 */  addu       $a1, $zero, $zero
/* FB928 800DD838 8EE2003C */  lw         $v0, 0x3C($s7)
/* FB92C 800DD83C 00A03021 */  addu       $a2, $a1, $zero
/* FB930 800DD840 84440060 */  lh         $a0, 0x60($v0)
/* FB934 800DD844 8C420064 */  lw         $v0, 0x64($v0)
/* FB938 800DD848 0040F809 */  jalr       $v0
/* FB93C 800DD84C 02E42021 */   addu      $a0, $s7, $a0
/* FB940 800DD850 8FBF006C */  lw         $ra, 0x6C($sp)
/* FB944 800DD854 8FBE0068 */  lw         $fp, 0x68($sp)
/* FB948 800DD858 8FB70064 */  lw         $s7, 0x64($sp)
/* FB94C 800DD85C 8FB60060 */  lw         $s6, 0x60($sp)
/* FB950 800DD860 8FB5005C */  lw         $s5, 0x5C($sp)
/* FB954 800DD864 8FB40058 */  lw         $s4, 0x58($sp)
/* FB958 800DD868 8FB30054 */  lw         $s3, 0x54($sp)
/* FB95C 800DD86C 8FB20050 */  lw         $s2, 0x50($sp)
/* FB960 800DD870 8FB1004C */  lw         $s1, 0x4C($sp)
/* FB964 800DD874 8FB00048 */  lw         $s0, 0x48($sp)
/* FB968 800DD878 03E00008 */  jr         $ra
/* FB96C 800DD87C 27BD0070 */   addiu     $sp, $sp, 0x70

glabel func_menu_800DD880
/* FB970 800DD880 27BDFFD8 */  addiu      $sp, $sp, -0x28
/* FB974 800DD884 AFB00018 */  sw         $s0, 0x18($sp)
/* FB978 800DD888 00A08021 */  addu       $s0, $a1, $zero
/* FB97C 800DD88C AFB1001C */  sw         $s1, 0x1C($sp)
/* FB980 800DD890 00C08821 */  addu       $s1, $a2, $zero
/* FB984 800DD894 AFB20020 */  sw         $s2, 0x20($sp)
/* FB988 800DD898 00E09021 */  addu       $s2, $a3, $zero
/* FB98C 800DD89C AFBF0024 */  sw         $ra, 0x24($sp)
/* FB990 800DD8A0 8E02003C */  lw         $v0, 0x3C($s0)
/* FB994 800DD8A4 27A50010 */  addiu      $a1, $sp, 0x10
/* FB998 800DD8A8 84440068 */  lh         $a0, 0x68($v0)
/* FB99C 800DD8AC 8C42006C */  lw         $v0, 0x6C($v0)
/* FB9A0 800DD8B0 0040F809 */  jalr       $v0
/* FB9A4 800DD8B4 02042021 */   addu      $a0, $s0, $a0
/* FB9A8 800DD8B8 8E22003C */  lw         $v0, 0x3C($s1)
/* FB9AC 800DD8BC 27A50014 */  addiu      $a1, $sp, 0x14
/* FB9B0 800DD8C0 84440068 */  lh         $a0, 0x68($v0)
/* FB9B4 800DD8C4 8C42006C */  lw         $v0, 0x6C($v0)
/* FB9B8 800DD8C8 0040F809 */  jalr       $v0
/* FB9BC 800DD8CC 02242021 */   addu      $a0, $s1, $a0
/* FB9C0 800DD8D0 8FA20010 */  lw         $v0, 0x10($sp)
/* FB9C4 800DD8D4 00003821 */  addu       $a3, $zero, $zero
/* FB9C8 800DD8D8 8C480000 */  lw         $t0, 0x0($v0)
.Lmenu_800DD8DC:
/* FB9CC 800DD8DC 00E8102A */  slt        $v0, $a3, $t0
/* FB9D0 800DD8E0 10400017 */  beqz       $v0, .Lmenu_800DD940
/* FB9D4 800DD8E4 00002821 */   addu      $a1, $zero, $zero
/* FB9D8 800DD8E8 8FA20010 */  lw         $v0, 0x10($sp)
/* FB9DC 800DD8EC 8C430008 */  lw         $v1, 0x8($v0)
/* FB9E0 800DD8F0 00071080 */  sll        $v0, $a3, 2
/* FB9E4 800DD8F4 00623021 */  addu       $a2, $v1, $v0
/* FB9E8 800DD8F8 10C0000F */  beqz       $a2, .Lmenu_800DD938
/* FB9EC 800DD8FC 00F21821 */   addu      $v1, $a3, $s2
/* FB9F0 800DD900 8FA50014 */  lw         $a1, 0x14($sp)
/* FB9F4 800DD904 00031880 */  sll        $v1, $v1, 2
/* FB9F8 800DD908 8CA20008 */  lw         $v0, 0x8($a1)
/* FB9FC 800DD90C 90C40001 */  lbu        $a0, 0x1($a2)
/* FBA00 800DD910 00621021 */  addu       $v0, $v1, $v0
/* FBA04 800DD914 A0440001 */  sb         $a0, 0x1($v0)
/* FBA08 800DD918 8CA20008 */  lw         $v0, 0x8($a1)
/* FBA0C 800DD91C 90C40002 */  lbu        $a0, 0x2($a2)
/* FBA10 800DD920 00621021 */  addu       $v0, $v1, $v0
/* FBA14 800DD924 A0440002 */  sb         $a0, 0x2($v0)
/* FBA18 800DD928 8CA20008 */  lw         $v0, 0x8($a1)
/* FBA1C 800DD92C 90C40003 */  lbu        $a0, 0x3($a2)
/* FBA20 800DD930 00621821 */  addu       $v1, $v1, $v0
/* FBA24 800DD934 A0640003 */  sb         $a0, 0x3($v1)
.Lmenu_800DD938:
/* FBA28 800DD938 08037637 */  j          .Lmenu_800DD8DC
/* FBA2C 800DD93C 24E70001 */   addiu     $a3, $a3, 0x1
.Lmenu_800DD940:
/* FBA30 800DD940 8E02003C */  lw         $v0, 0x3C($s0)
/* FBA34 800DD944 84440070 */  lh         $a0, 0x70($v0)
/* FBA38 800DD948 8C420074 */  lw         $v0, 0x74($v0)
/* FBA3C 800DD94C 0040F809 */  jalr       $v0
/* FBA40 800DD950 02042021 */   addu      $a0, $s0, $a0
/* FBA44 800DD954 8E22003C */  lw         $v0, 0x3C($s1)
/* FBA48 800DD958 00002821 */  addu       $a1, $zero, $zero
/* FBA4C 800DD95C 84440070 */  lh         $a0, 0x70($v0)
/* FBA50 800DD960 8C420074 */  lw         $v0, 0x74($v0)
/* FBA54 800DD964 0040F809 */  jalr       $v0
/* FBA58 800DD968 02242021 */   addu      $a0, $s1, $a0
/* FBA5C 800DD96C 8FBF0024 */  lw         $ra, 0x24($sp)
/* FBA60 800DD970 8FB20020 */  lw         $s2, 0x20($sp)
/* FBA64 800DD974 8FB1001C */  lw         $s1, 0x1C($sp)
/* FBA68 800DD978 8FB00018 */  lw         $s0, 0x18($sp)
/* FBA6C 800DD97C 03E00008 */  jr         $ra
/* FBA70 800DD980 27BD0028 */   addiu     $sp, $sp, 0x28

glabel func_menu_800DD984
/* FBA74 800DD984 27BDFFD8 */  addiu      $sp, $sp, -0x28
/* FBA78 800DD988 AFB00010 */  sw         $s0, 0x10($sp)
/* FBA7C 800DD98C 00808021 */  addu       $s0, $a0, $zero
/* FBA80 800DD990 00003821 */  addu       $a3, $zero, $zero
/* FBA84 800DD994 AFB10014 */  sw         $s1, 0x14($sp)
/* FBA88 800DD998 00E08821 */  addu       $s1, $a3, $zero
/* FBA8C 800DD99C AFBF0024 */  sw         $ra, 0x24($sp)
/* FBA90 800DD9A0 AFB40020 */  sw         $s4, 0x20($sp)
/* FBA94 800DD9A4 AFB3001C */  sw         $s3, 0x1C($sp)
/* FBA98 800DD9A8 AFB20018 */  sw         $s2, 0x18($sp)
/* FBA9C 800DD9AC 8E12004C */  lw         $s2, 0x4C($s0)
/* FBAA0 800DD9B0 8E130074 */  lw         $s3, 0x74($s0)
/* FBAA4 800DD9B4 02402821 */  addu       $a1, $s2, $zero
/* FBAA8 800DD9B8 8E540004 */  lw         $s4, 0x4($s2)
/* FBAAC 800DD9BC 0C0375A0 */  jal        func_menu_800DD680
/* FBAB0 800DD9C0 02603021 */   addu      $a2, $s3, $zero
/* FBAB4 800DD9C4 02002021 */  addu       $a0, $s0, $zero
/* FBAB8 800DD9C8 02402821 */  addu       $a1, $s2, $zero
/* FBABC 800DD9CC 02603021 */  addu       $a2, $s3, $zero
/* FBAC0 800DD9D0 0C037620 */  jal        func_menu_800DD880
/* FBAC4 800DD9D4 00003821 */   addu      $a3, $zero, $zero
/* FBAC8 800DD9D8 0234102A */  slt        $v0, $s1, $s4
.Lmenu_800DD9DC:
/* FBACC 800DD9DC 1040000A */  beqz       $v0, .Lmenu_800DDA08
/* FBAD0 800DD9E0 02602021 */   addu      $a0, $s3, $zero
/* FBAD4 800DD9E4 02202821 */  addu       $a1, $s1, $zero
/* FBAD8 800DD9E8 8E430008 */  lw         $v1, 0x8($s2)
/* FBADC 800DD9EC 00111080 */  sll        $v0, $s1, 2
/* FBAE0 800DD9F0 00431021 */  addu       $v0, $v0, $v1
/* FBAE4 800DD9F4 8C460000 */  lw         $a2, 0x0($v0)
/* FBAE8 800DD9F8 0C01543D */  jal        func_800550F4
/* FBAEC 800DD9FC 26310001 */   addiu     $s1, $s1, 0x1
/* FBAF0 800DDA00 08037677 */  j          .Lmenu_800DD9DC
/* FBAF4 800DDA04 0234102A */   slt       $v0, $s1, $s4
.Lmenu_800DDA08:
/* FBAF8 800DDA08 8FBF0024 */  lw         $ra, 0x24($sp)
/* FBAFC 800DDA0C 8FB40020 */  lw         $s4, 0x20($sp)
/* FBB00 800DDA10 8FB3001C */  lw         $s3, 0x1C($sp)
/* FBB04 800DDA14 8FB20018 */  lw         $s2, 0x18($sp)
/* FBB08 800DDA18 8FB10014 */  lw         $s1, 0x14($sp)
/* FBB0C 800DDA1C 8FB00010 */  lw         $s0, 0x10($sp)
/* FBB10 800DDA20 03E00008 */  jr         $ra
/* FBB14 800DDA24 27BD0028 */   addiu     $sp, $sp, 0x28

glabel func_menu_800DDA28
/* FBB18 800DDA28 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* FBB1C 800DDA2C AFB00010 */  sw         $s0, 0x10($sp)
/* FBB20 800DDA30 00808021 */  addu       $s0, $a0, $zero
/* FBB24 800DDA34 AFBF0014 */  sw         $ra, 0x14($sp)
/* FBB28 800DDA38 8E050060 */  lw         $a1, 0x60($s0)
/* FBB2C 800DDA3C 8E060074 */  lw         $a2, 0x74($s0)
/* FBB30 800DDA40 8E07003C */  lw         $a3, 0x3C($s0)
/* FBB34 800DDA44 0C0375A0 */  jal        func_menu_800DD680
/* FBB38 800DDA48 00000000 */   nop
/* FBB3C 800DDA4C 8E050060 */  lw         $a1, 0x60($s0)
/* FBB40 800DDA50 8E060074 */  lw         $a2, 0x74($s0)
/* FBB44 800DDA54 8E070040 */  lw         $a3, 0x40($s0)
/* FBB48 800DDA58 0C037620 */  jal        func_menu_800DD880
/* FBB4C 800DDA5C 02002021 */   addu      $a0, $s0, $zero
/* FBB50 800DDA60 0C0374D7 */  jal        func_menu_800DD35C
/* FBB54 800DDA64 02002021 */   addu      $a0, $s0, $zero
/* FBB58 800DDA68 8FBF0014 */  lw         $ra, 0x14($sp)
/* FBB5C 800DDA6C 8FB00010 */  lw         $s0, 0x10($sp)
/* FBB60 800DDA70 03E00008 */  jr         $ra
/* FBB64 800DDA74 27BD0018 */   addiu     $sp, $sp, 0x18

glabel func_menu_800DDA78
/* FBB68 800DDA78 27BDFFC8 */  addiu      $sp, $sp, -0x38
/* FBB6C 800DDA7C AFB1001C */  sw         $s1, 0x1C($sp)
/* FBB70 800DDA80 00808821 */  addu       $s1, $a0, $zero
/* FBB74 800DDA84 AFB40028 */  sw         $s4, 0x28($sp)
/* FBB78 800DDA88 00A0A021 */  addu       $s4, $a1, $zero
/* FBB7C 800DDA8C AFB60030 */  sw         $s6, 0x30($sp)
/* FBB80 800DDA90 00C0B021 */  addu       $s6, $a2, $zero
/* FBB84 800DDA94 AFBF0034 */  sw         $ra, 0x34($sp)
/* FBB88 800DDA98 AFB5002C */  sw         $s5, 0x2C($sp)
/* FBB8C 800DDA9C AFB30024 */  sw         $s3, 0x24($sp)
/* FBB90 800DDAA0 AFB20020 */  sw         $s2, 0x20($sp)
/* FBB94 800DDAA4 AFB00018 */  sw         $s0, 0x18($sp)
/* FBB98 800DDAA8 8E330074 */  lw         $s3, 0x74($s1)
/* FBB9C 800DDAAC 0C01FB4C */  jal        func_8007ED30
/* FBBA0 800DDAB0 24040014 */   addiu     $a0, $zero, 0x14
/* FBBA4 800DDAB4 00408021 */  addu       $s0, $v0, $zero
/* FBBA8 800DDAB8 8E750004 */  lw         $s5, 0x4($s3)
/* FBBAC 800DDABC 16000008 */  bnez       $s0, .Lmenu_800DDAE0
/* FBBB0 800DDAC0 00009021 */   addu      $s2, $zero, $zero
/* FBBB4 800DDAC4 3C04800D */  lui        $a0, %hi(D_menu_800CAB50)
/* FBBB8 800DDAC8 2484AB50 */  addiu      $a0, $a0, %lo(D_menu_800CAB50)
/* FBBBC 800DDACC 00002821 */  addu       $a1, $zero, $zero
/* FBBC0 800DDAD0 00A03021 */  addu       $a2, $a1, $zero
/* FBBC4 800DDAD4 0C011ACF */  jal        func_80046B3C
/* FBBC8 800DDAD8 00A03821 */   addu      $a3, $a1, $zero
/* FBBCC 800DDADC 00009021 */  addu       $s2, $zero, $zero
.Lmenu_800DDAE0:
/* FBBD0 800DDAE0 0255102A */  slt        $v0, $s2, $s5
/* FBBD4 800DDAE4 10400032 */  beqz       $v0, .Lmenu_800DDBB0
/* FBBD8 800DDAE8 00121080 */   sll       $v0, $s2, 2
/* FBBDC 800DDAEC 8E630008 */  lw         $v1, 0x8($s3)
/* FBBE0 800DDAF0 00431021 */  addu       $v0, $v0, $v1
/* FBBE4 800DDAF4 8C420000 */  lw         $v0, 0x0($v0)
/* FBBE8 800DDAF8 1040002B */  beqz       $v0, .Lmenu_800DDBA8
/* FBBEC 800DDAFC 02C02021 */   addu      $a0, $s6, $zero
/* FBBF0 800DDB00 88480014 */  lwl        $t0, 0x14($v0)
/* FBBF4 800DDB04 98480017 */  lwr        $t0, 0x17($v0)
/* FBBF8 800DDB08 88490018 */  lwl        $t1, 0x18($v0)
/* FBBFC 800DDB0C 9849001B */  lwr        $t1, 0x1B($v0)
/* FBC00 800DDB10 ABA80010 */  swl        $t0, 0x10($sp)
/* FBC04 800DDB14 BBA80013 */  swr        $t0, 0x13($sp)
/* FBC08 800DDB18 ABA90014 */  swl        $t1, 0x14($sp)
/* FBC0C 800DDB1C BBA90017 */  swr        $t1, 0x17($sp)
/* FBC10 800DDB20 27A50010 */  addiu      $a1, $sp, 0x10
/* FBC14 800DDB24 0C0006B2 */  jal        func_80001AC8
/* FBC18 800DDB28 24060008 */   addiu     $a2, $zero, 0x8
/* FBC1C 800DDB2C 5440FFEC */  bnel       $v0, $zero, .Lmenu_800DDAE0
/* FBC20 800DDB30 26520001 */   addiu     $s2, $s2, 0x1
/* FBC24 800DDB34 02802021 */  addu       $a0, $s4, $zero
/* FBC28 800DDB38 0C01523D */  jal        func_800548F4
/* FBC2C 800DDB3C 02002821 */   addu      $a1, $s0, $zero
/* FBC30 800DDB40 9222002F */  lbu        $v0, 0x2F($s1)
/* FBC34 800DDB44 A202000B */  sb         $v0, 0xB($s0)
/* FBC38 800DDB48 9222002C */  lbu        $v0, 0x2C($s1)
/* FBC3C 800DDB4C A2020008 */  sb         $v0, 0x8($s0)
/* FBC40 800DDB50 9222002D */  lbu        $v0, 0x2D($s1)
/* FBC44 800DDB54 A2020009 */  sb         $v0, 0x9($s0)
/* FBC48 800DDB58 9222002E */  lbu        $v0, 0x2E($s1)
/* FBC4C 800DDB5C A202000A */  sb         $v0, 0xA($s0)
/* FBC50 800DDB60 92220033 */  lbu        $v0, 0x33($s1)
/* FBC54 800DDB64 A202000F */  sb         $v0, 0xF($s0)
/* FBC58 800DDB68 92220030 */  lbu        $v0, 0x30($s1)
/* FBC5C 800DDB6C A202000C */  sb         $v0, 0xC($s0)
/* FBC60 800DDB70 92220031 */  lbu        $v0, 0x31($s1)
/* FBC64 800DDB74 A202000D */  sb         $v0, 0xD($s0)
/* FBC68 800DDB78 92220032 */  lbu        $v0, 0x32($s1)
/* FBC6C 800DDB7C 02802021 */  addu       $a0, $s4, $zero
/* FBC70 800DDB80 A202000E */  sb         $v0, 0xE($s0)
/* FBC74 800DDB84 8E250018 */  lw         $a1, 0x18($s1)
/* FBC78 800DDB88 0C0151F9 */  jal        func_800547E4
/* FBC7C 800DDB8C 02003021 */   addu      $a2, $s0, $zero
/* FBC80 800DDB90 02602021 */  addu       $a0, $s3, $zero
/* FBC84 800DDB94 02402821 */  addu       $a1, $s2, $zero
/* FBC88 800DDB98 0C01543D */  jal        func_800550F4
/* FBC8C 800DDB9C 02803021 */   addu      $a2, $s4, $zero
/* FBC90 800DDBA0 080376EC */  j          .Lmenu_800DDBB0
/* FBC94 800DDBA4 00000000 */   nop
.Lmenu_800DDBA8:
/* FBC98 800DDBA8 080376B8 */  j          .Lmenu_800DDAE0
/* FBC9C 800DDBAC 26520001 */   addiu     $s2, $s2, 0x1
.Lmenu_800DDBB0:
/* FBCA0 800DDBB0 0C01FB5C */  jal        func_8007ED70
/* FBCA4 800DDBB4 02002021 */   addu      $a0, $s0, $zero
/* FBCA8 800DDBB8 8FBF0034 */  lw         $ra, 0x34($sp)
/* FBCAC 800DDBBC 8FB60030 */  lw         $s6, 0x30($sp)
/* FBCB0 800DDBC0 8FB5002C */  lw         $s5, 0x2C($sp)
/* FBCB4 800DDBC4 8FB40028 */  lw         $s4, 0x28($sp)
/* FBCB8 800DDBC8 8FB30024 */  lw         $s3, 0x24($sp)
/* FBCBC 800DDBCC 8FB20020 */  lw         $s2, 0x20($sp)
/* FBCC0 800DDBD0 8FB1001C */  lw         $s1, 0x1C($sp)
/* FBCC4 800DDBD4 8FB00018 */  lw         $s0, 0x18($sp)
/* FBCC8 800DDBD8 03E00008 */  jr         $ra
/* FBCCC 800DDBDC 27BD0038 */   addiu     $sp, $sp, 0x38

glabel func_menu_800DDBE0
/* FBCD0 800DDBE0 27BDFFD8 */  addiu      $sp, $sp, -0x28
/* FBCD4 800DDBE4 AFB00010 */  sw         $s0, 0x10($sp)
/* FBCD8 800DDBE8 00808021 */  addu       $s0, $a0, $zero
/* FBCDC 800DDBEC AFB3001C */  sw         $s3, 0x1C($sp)
/* FBCE0 800DDBF0 00A09821 */  addu       $s3, $a1, $zero
/* FBCE4 800DDBF4 AFB10014 */  sw         $s1, 0x14($sp)
/* FBCE8 800DDBF8 00C08821 */  addu       $s1, $a2, $zero
/* FBCEC 800DDBFC 02202821 */  addu       $a1, $s1, $zero
/* FBCF0 800DDC00 AFB20018 */  sw         $s2, 0x18($sp)
/* FBCF4 800DDC04 AFBF0020 */  sw         $ra, 0x20($sp)
/* FBCF8 800DDC08 0C03750B */  jal        func_menu_800DD42C
/* FBCFC 800DDC0C 00E09021 */   addu      $s2, $a3, $zero
/* FBD00 800DDC10 1040000B */  beqz       $v0, .Lmenu_800DDC40
/* FBD04 800DDC14 02002021 */   addu      $a0, $s0, $zero
/* FBD08 800DDC18 12200005 */  beqz       $s1, .Lmenu_800DDC30
/* FBD0C 800DDC1C 00000000 */   nop
/* FBD10 800DDC20 8E220020 */  lw         $v0, 0x20($s1)
/* FBD14 800DDC24 14400035 */  bnez       $v0, .Lmenu_800DDCFC
/* FBD18 800DDC28 00001021 */   addu      $v0, $zero, $zero
/* FBD1C 800DDC2C 02002021 */  addu       $a0, $s0, $zero
.Lmenu_800DDC30:
/* FBD20 800DDC30 0C03753D */  jal        func_menu_800DD4F4
/* FBD24 800DDC34 3245FFFF */   andi      $a1, $s2, 0xFFFF
/* FBD28 800DDC38 00408821 */  addu       $s1, $v0, $zero
/* FBD2C 800DDC3C 02002021 */  addu       $a0, $s0, $zero
.Lmenu_800DDC40:
/* FBD30 800DDC40 02202821 */  addu       $a1, $s1, $zero
/* FBD34 800DDC44 0C03749A */  jal        func_menu_800DD268
/* FBD38 800DDC48 26060064 */   addiu     $a2, $s0, 0x64
/* FBD3C 800DDC4C 0C0374BD */  jal        func_menu_800DD2F4
/* FBD40 800DDC50 02002021 */   addu      $a0, $s0, $zero
/* FBD44 800DDC54 50400029 */  beql       $v0, $zero, .Lmenu_800DDCFC
/* FBD48 800DDC58 00001021 */   addu      $v0, $zero, $zero
/* FBD4C 800DDC5C 0C037661 */  jal        func_menu_800DD984
/* FBD50 800DDC60 02002021 */   addu      $a0, $s0, $zero
/* FBD54 800DDC64 0C03768A */  jal        func_menu_800DDA28
/* FBD58 800DDC68 02002021 */   addu      $a0, $s0, $zero
/* FBD5C 800DDC6C 0C0377E1 */  jal        func_menu_800DDF84
/* FBD60 800DDC70 02002021 */   addu      $a0, $s0, $zero
/* FBD64 800DDC74 92650001 */  lbu        $a1, 0x1($s3)
/* FBD68 800DDC78 0C037444 */  jal        func_menu_800DD110
/* FBD6C 800DDC7C 02002021 */   addu      $a0, $s0, $zero
/* FBD70 800DDC80 8E02004C */  lw         $v0, 0x4C($s0)
/* FBD74 800DDC84 C4400034 */  lwc1       $f0, 0x34($v0)
/* FBD78 800DDC88 E6200034 */  swc1       $f0, 0x34($s1)
/* FBD7C 800DDC8C 8E040038 */  lw         $a0, 0x38($s0)
/* FBD80 800DDC90 92650001 */  lbu        $a1, 0x1($s3)
/* FBD84 800DDC94 0C035876 */  jal        func_menu_800D61D8
/* FBD88 800DDC98 00000000 */   nop
/* FBD8C 800DDC9C 02002021 */  addu       $a0, $s0, $zero
/* FBD90 800DDCA0 00402821 */  addu       $a1, $v0, $zero
/* FBD94 800DDCA4 3C06800D */  lui        $a2, %hi(D_menu_800CAB6C)
/* FBD98 800DDCA8 0C03769E */  jal        func_menu_800DDA78
/* FBD9C 800DDCAC 24C6AB6C */   addiu     $a2, $a2, %lo(D_menu_800CAB6C)
/* FBDA0 800DDCB0 8E040038 */  lw         $a0, 0x38($s0)
/* FBDA4 800DDCB4 92650002 */  lbu        $a1, 0x2($s3)
/* FBDA8 800DDCB8 0C035888 */  jal        func_menu_800D6220
/* FBDAC 800DDCBC 00000000 */   nop
/* FBDB0 800DDCC0 02002021 */  addu       $a0, $s0, $zero
/* FBDB4 800DDCC4 00402821 */  addu       $a1, $v0, $zero
/* FBDB8 800DDCC8 3C06800D */  lui        $a2, %hi(D_menu_800CAB74)
/* FBDBC 800DDCCC 0C03769E */  jal        func_menu_800DDA78
/* FBDC0 800DDCD0 24C6AB74 */   addiu     $a2, $a2, %lo(D_menu_800CAB74)
/* FBDC4 800DDCD4 8E040038 */  lw         $a0, 0x38($s0)
/* FBDC8 800DDCD8 92650003 */  lbu        $a1, 0x3($s3)
/* FBDCC 800DDCDC 0C03589A */  jal        func_menu_800D6268
/* FBDD0 800DDCE0 00000000 */   nop
/* FBDD4 800DDCE4 02002021 */  addu       $a0, $s0, $zero
/* FBDD8 800DDCE8 00402821 */  addu       $a1, $v0, $zero
/* FBDDC 800DDCEC 3C06800D */  lui        $a2, %hi(D_menu_800CAB7C)
/* FBDE0 800DDCF0 0C03769E */  jal        func_menu_800DDA78
/* FBDE4 800DDCF4 24C6AB7C */   addiu     $a2, $a2, %lo(D_menu_800CAB7C)
/* FBDE8 800DDCF8 02201021 */  addu       $v0, $s1, $zero
.Lmenu_800DDCFC:
/* FBDEC 800DDCFC 8FBF0020 */  lw         $ra, 0x20($sp)
/* FBDF0 800DDD00 8FB3001C */  lw         $s3, 0x1C($sp)
/* FBDF4 800DDD04 8FB20018 */  lw         $s2, 0x18($sp)
/* FBDF8 800DDD08 8FB10014 */  lw         $s1, 0x14($sp)
/* FBDFC 800DDD0C 8FB00010 */  lw         $s0, 0x10($sp)
/* FBE00 800DDD10 03E00008 */  jr         $ra
/* FBE04 800DDD14 27BD0028 */   addiu     $sp, $sp, 0x28

glabel func_menu_800DDD18
/* FBE08 800DDD18 27BDFFD8 */  addiu      $sp, $sp, -0x28
/* FBE0C 800DDD1C AFB00010 */  sw         $s0, 0x10($sp)
/* FBE10 800DDD20 00808021 */  addu       $s0, $a0, $zero
/* FBE14 800DDD24 AFB20018 */  sw         $s2, 0x18($sp)
/* FBE18 800DDD28 00A09021 */  addu       $s2, $a1, $zero
/* FBE1C 800DDD2C AFB40020 */  sw         $s4, 0x20($sp)
/* FBE20 800DDD30 00C0A021 */  addu       $s4, $a2, $zero
/* FBE24 800DDD34 AFB3001C */  sw         $s3, 0x1C($sp)
/* FBE28 800DDD38 00E09821 */  addu       $s3, $a3, $zero
/* FBE2C 800DDD3C AFBF0024 */  sw         $ra, 0x24($sp)
/* FBE30 800DDD40 AFB10014 */  sw         $s1, 0x14($sp)
/* FBE34 800DDD44 8E040038 */  lw         $a0, 0x38($s0)
/* FBE38 800DDD48 92450003 */  lbu        $a1, 0x3($s2)
/* FBE3C 800DDD4C 92420002 */  lbu        $v0, 0x2($s2)
/* FBE40 800DDD50 00052880 */  sll        $a1, $a1, 2
/* FBE44 800DDD54 8C830034 */  lw         $v1, 0x34($a0)
/* FBE48 800DDD58 00021080 */  sll        $v0, $v0, 2
/* FBE4C 800DDD5C 00652821 */  addu       $a1, $v1, $a1
/* FBE50 800DDD60 00621821 */  addu       $v1, $v1, $v0
/* FBE54 800DDD64 8CA504DC */  lw         $a1, 0x4DC($a1)
/* FBE58 800DDD68 8C620344 */  lw         $v0, 0x344($v1)
/* FBE5C 800DDD6C 00052840 */  sll        $a1, $a1, 1
/* FBE60 800DDD70 0C03581C */  jal        func_menu_800D6070
/* FBE64 800DDD74 00A22821 */   addu      $a1, $a1, $v0
/* FBE68 800DDD78 8E040038 */  lw         $a0, 0x38($s0)
/* FBE6C 800DDD7C 92450000 */  lbu        $a1, 0x0($s2)
/* FBE70 800DDD80 0C03580B */  jal        func_menu_800D602C
/* FBE74 800DDD84 00408821 */   addu      $s1, $v0, $zero
/* FBE78 800DDD88 02002021 */  addu       $a0, $s0, $zero
/* FBE7C 800DDD8C 02202821 */  addu       $a1, $s1, $zero
/* FBE80 800DDD90 2606003C */  addiu      $a2, $s0, 0x3C
/* FBE84 800DDD94 0C03749A */  jal        func_menu_800DD268
/* FBE88 800DDD98 00408821 */   addu      $s1, $v0, $zero
/* FBE8C 800DDD9C 02002021 */  addu       $a0, $s0, $zero
/* FBE90 800DDDA0 02202821 */  addu       $a1, $s1, $zero
/* FBE94 800DDDA4 0C03749A */  jal        func_menu_800DD268
/* FBE98 800DDDA8 26060050 */   addiu     $a2, $s0, 0x50
/* FBE9C 800DDDAC 02002021 */  addu       $a0, $s0, $zero
/* FBEA0 800DDDB0 02402821 */  addu       $a1, $s2, $zero
/* FBEA4 800DDDB4 02803021 */  addu       $a2, $s4, $zero
/* FBEA8 800DDDB8 0C0376F8 */  jal        func_menu_800DDBE0
/* FBEAC 800DDDBC 3267FFFF */   andi      $a3, $s3, 0xFFFF
/* FBEB0 800DDDC0 8FBF0024 */  lw         $ra, 0x24($sp)
/* FBEB4 800DDDC4 8FB40020 */  lw         $s4, 0x20($sp)
/* FBEB8 800DDDC8 8FB3001C */  lw         $s3, 0x1C($sp)
/* FBEBC 800DDDCC 8FB20018 */  lw         $s2, 0x18($sp)
/* FBEC0 800DDDD0 8FB10014 */  lw         $s1, 0x14($sp)
/* FBEC4 800DDDD4 8FB00010 */  lw         $s0, 0x10($sp)
/* FBEC8 800DDDD8 03E00008 */  jr         $ra
/* FBECC 800DDDDC 27BD0028 */   addiu     $sp, $sp, 0x28

glabel func_menu_800DDDE0
/* FBED0 800DDDE0 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* FBED4 800DDDE4 AFBF0010 */  sw         $ra, 0x10($sp)
/* FBED8 800DDDE8 90A30003 */  lbu        $v1, 0x3($a1)
/* FBEDC 800DDDEC 8C840038 */  lw         $a0, 0x38($a0)
/* FBEE0 800DDDF0 90A20002 */  lbu        $v0, 0x2($a1)
/* FBEE4 800DDDF4 00031880 */  sll        $v1, $v1, 2
/* FBEE8 800DDDF8 8C860034 */  lw         $a2, 0x34($a0)
/* FBEEC 800DDDFC 00021080 */  sll        $v0, $v0, 2
/* FBEF0 800DDE00 00C31821 */  addu       $v1, $a2, $v1
/* FBEF4 800DDE04 00C23021 */  addu       $a2, $a2, $v0
/* FBEF8 800DDE08 8C6504DC */  lw         $a1, 0x4DC($v1)
/* FBEFC 800DDE0C 8CC20344 */  lw         $v0, 0x344($a2)
/* FBF00 800DDE10 00052840 */  sll        $a1, $a1, 1
/* FBF04 800DDE14 0C035838 */  jal        func_menu_800D60E0
/* FBF08 800DDE18 00A22821 */   addu      $a1, $a1, $v0
/* FBF0C 800DDE1C 8FBF0010 */  lw         $ra, 0x10($sp)
/* FBF10 800DDE20 03E00008 */  jr         $ra
/* FBF14 800DDE24 27BD0018 */   addiu     $sp, $sp, 0x18

glabel func_menu_800DDE28
/* FBF18 800DDE28 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* FBF1C 800DDE2C AFBF0010 */  sw         $ra, 0x10($sp)
/* FBF20 800DDE30 90A30003 */  lbu        $v1, 0x3($a1)
/* FBF24 800DDE34 8C840038 */  lw         $a0, 0x38($a0)
/* FBF28 800DDE38 90A20002 */  lbu        $v0, 0x2($a1)
/* FBF2C 800DDE3C 00031880 */  sll        $v1, $v1, 2
/* FBF30 800DDE40 8C860034 */  lw         $a2, 0x34($a0)
/* FBF34 800DDE44 00021080 */  sll        $v0, $v0, 2
/* FBF38 800DDE48 00C31821 */  addu       $v1, $a2, $v1
/* FBF3C 800DDE4C 00C23021 */  addu       $a2, $a2, $v0
/* FBF40 800DDE50 8C6504DC */  lw         $a1, 0x4DC($v1)
/* FBF44 800DDE54 8CC20344 */  lw         $v0, 0x344($a2)
/* FBF48 800DDE58 00052840 */  sll        $a1, $a1, 1
/* FBF4C 800DDE5C 0C03585A */  jal        func_menu_800D6168
/* FBF50 800DDE60 00A22821 */   addu      $a1, $a1, $v0
/* FBF54 800DDE64 8FBF0010 */  lw         $ra, 0x10($sp)
/* FBF58 800DDE68 03E00008 */  jr         $ra
/* FBF5C 800DDE6C 27BD0018 */   addiu     $sp, $sp, 0x18

glabel func_menu_800DDE70
/* FBF60 800DDE70 8C820038 */  lw         $v0, 0x38($a0)
/* FBF64 800DDE74 8C4A0040 */  lw         $t2, 0x40($v0)
/* FBF68 800DDE78 8C4B0044 */  lw         $t3, 0x44($v0)
/* FBF6C 800DDE7C 014B1021 */  addu       $v0, $t2, $t3
/* FBF70 800DDE80 24420009 */  addiu      $v0, $v0, 0x9
/* FBF74 800DDE84 ACA20000 */  sw         $v0, 0x0($a1)
/* FBF78 800DDE88 8C820038 */  lw         $v0, 0x38($a0)
/* FBF7C 800DDE8C 8C480038 */  lw         $t0, 0x38($v0)
/* FBF80 800DDE90 8C49003C */  lw         $t1, 0x3C($v0)
/* FBF84 800DDE94 01091021 */  addu       $v0, $t0, $t1
/* FBF88 800DDE98 24420009 */  addiu      $v0, $v0, 0x9
/* FBF8C 800DDE9C ACA20004 */  sw         $v0, 0x4($a1)
/* FBF90 800DDEA0 8C820038 */  lw         $v0, 0x38($a0)
/* FBF94 800DDEA4 8C460048 */  lw         $a2, 0x48($v0)
/* FBF98 800DDEA8 8C47004C */  lw         $a3, 0x4C($v0)
/* FBF9C 800DDEAC 00C71021 */  addu       $v0, $a2, $a3
/* FBFA0 800DDEB0 2442000A */  addiu      $v0, $v0, 0xA
/* FBFA4 800DDEB4 ACA20008 */  sw         $v0, 0x8($a1)
/* FBFA8 800DDEB8 8C820038 */  lw         $v0, 0x38($a0)
/* FBFAC 800DDEBC 8C430050 */  lw         $v1, 0x50($v0)
/* FBFB0 800DDEC0 8C420054 */  lw         $v0, 0x54($v0)
/* FBFB4 800DDEC4 27BDFFF8 */  addiu      $sp, $sp, -0x8
/* FBFB8 800DDEC8 AFAA0000 */  sw         $t2, 0x0($sp)
/* FBFBC 800DDECC AFAB0004 */  sw         $t3, 0x4($sp)
/* FBFC0 800DDED0 AFA80000 */  sw         $t0, 0x0($sp)
/* FBFC4 800DDED4 AFA90004 */  sw         $t1, 0x4($sp)
/* FBFC8 800DDED8 AFA60000 */  sw         $a2, 0x0($sp)
/* FBFCC 800DDEDC AFA70004 */  sw         $a3, 0x4($sp)
/* FBFD0 800DDEE0 AFA30000 */  sw         $v1, 0x0($sp)
/* FBFD4 800DDEE4 00621821 */  addu       $v1, $v1, $v0
/* FBFD8 800DDEE8 24630002 */  addiu      $v1, $v1, 0x2
/* FBFDC 800DDEEC AFA20004 */  sw         $v0, 0x4($sp)
/* FBFE0 800DDEF0 ACA3000C */  sw         $v1, 0xC($a1)
/* FBFE4 800DDEF4 03E00008 */  jr         $ra
/* FBFE8 800DDEF8 27BD0008 */   addiu     $sp, $sp, 0x8

glabel func_menu_800DDEFC
/* FBFEC 800DDEFC 27BDFFD8 */  addiu      $sp, $sp, -0x28
/* FBFF0 800DDF00 AFB1001C */  sw         $s1, 0x1C($sp)
/* FBFF4 800DDF04 00808821 */  addu       $s1, $a0, $zero
/* FBFF8 800DDF08 AFB20020 */  sw         $s2, 0x20($sp)
/* FBFFC 800DDF0C 00A09021 */  addu       $s2, $a1, $zero
/* FC000 800DDF10 AFB00018 */  sw         $s0, 0x18($sp)
/* FC004 800DDF14 00C08021 */  addu       $s0, $a2, $zero
/* FC008 800DDF18 27A60010 */  addiu      $a2, $sp, 0x10
/* FC00C 800DDF1C AFBF0024 */  sw         $ra, 0x24($sp)
/* FC010 800DDF20 8E220038 */  lw         $v0, 0x38($s1)
/* FC014 800DDF24 92050001 */  lbu        $a1, 0x1($s0)
/* FC018 800DDF28 8C440034 */  lw         $a0, 0x34($v0)
/* FC01C 800DDF2C 0C035BDB */  jal        func_menu_800D6F6C
/* FC020 800DDF30 00C03821 */   addu      $a3, $a2, $zero
/* FC024 800DDF34 02402021 */  addu       $a0, $s2, $zero
/* FC028 800DDF38 0C0153EC */  jal        func_80054FB0
/* FC02C 800DDF3C 27A50010 */   addiu     $a1, $sp, 0x10
/* FC030 800DDF40 27A70010 */  addiu      $a3, $sp, 0x10
/* FC034 800DDF44 92050001 */  lbu        $a1, 0x1($s0)
/* FC038 800DDF48 8E230038 */  lw         $v1, 0x38($s1)
/* FC03C 800DDF4C 92060004 */  lbu        $a2, 0x4($s0)
/* FC040 800DDF50 8C640034 */  lw         $a0, 0x34($v1)
/* FC044 800DDF54 0C035C51 */  jal        func_menu_800D7144
/* FC048 800DDF58 00408021 */   addu      $s0, $v0, $zero
/* FC04C 800DDF5C 02402021 */  addu       $a0, $s2, $zero
/* FC050 800DDF60 02002821 */  addu       $a1, $s0, $zero
/* FC054 800DDF64 0C015415 */  jal        func_80055054
/* FC058 800DDF68 27A60010 */   addiu     $a2, $sp, 0x10
/* FC05C 800DDF6C 8FBF0024 */  lw         $ra, 0x24($sp)
/* FC060 800DDF70 8FB20020 */  lw         $s2, 0x20($sp)
/* FC064 800DDF74 8FB1001C */  lw         $s1, 0x1C($sp)
/* FC068 800DDF78 8FB00018 */  lw         $s0, 0x18($sp)
/* FC06C 800DDF7C 03E00008 */  jr         $ra
/* FC070 800DDF80 27BD0028 */   addiu     $sp, $sp, 0x28

glabel func_menu_800DDF84
/* FC074 800DDF84 27BDFFD0 */  addiu      $sp, $sp, -0x30
/* FC078 800DDF88 AFB20020 */  sw         $s2, 0x20($sp)
/* FC07C 800DDF8C 00809021 */  addu       $s2, $a0, $zero
/* FC080 800DDF90 27A40010 */  addiu      $a0, $sp, 0x10
/* FC084 800DDF94 3C05800D */  lui        $a1, %hi(D_menu_800CAB6C)
/* FC088 800DDF98 24A5AB6C */  addiu      $a1, $a1, %lo(D_menu_800CAB6C)
/* FC08C 800DDF9C 24060008 */  addiu      $a2, $zero, 0x8
/* FC090 800DDFA0 AFBF002C */  sw         $ra, 0x2C($sp)
/* FC094 800DDFA4 AFB40028 */  sw         $s4, 0x28($sp)
/* FC098 800DDFA8 AFB30024 */  sw         $s3, 0x24($sp)
/* FC09C 800DDFAC AFB1001C */  sw         $s1, 0x1C($sp)
/* FC0A0 800DDFB0 0C000708 */  jal        func_80001C20
/* FC0A4 800DDFB4 AFB00018 */   sw        $s0, 0x18($sp)
/* FC0A8 800DDFB8 27A50010 */  addiu      $a1, $sp, 0x10
/* FC0AC 800DDFBC 8E44004C */  lw         $a0, 0x4C($s2)
/* FC0B0 800DDFC0 0C0153EC */  jal        func_80054FB0
/* FC0B4 800DDFC4 00008021 */   addu      $s0, $zero, $zero
/* FC0B8 800DDFC8 3C064000 */  lui        $a2, (0x40000000 >> 16)
/* FC0BC 800DDFCC 3C0300FF */  lui        $v1, (0xFFFFFF >> 16)
/* FC0C0 800DDFD0 3463FFFF */  ori        $v1, $v1, (0xFFFFFF & 0xFFFF)
/* FC0C4 800DDFD4 00431024 */  and        $v0, $v0, $v1
/* FC0C8 800DDFD8 00463025 */  or         $a2, $v0, $a2
.Lmenu_800DDFDC:
/* FC0CC 800DDFDC 00102080 */  sll        $a0, $s0, 2
/* FC0D0 800DDFE0 26100001 */  addiu      $s0, $s0, 0x1
/* FC0D4 800DDFE4 8E42004C */  lw         $v0, 0x4C($s2)
/* FC0D8 800DDFE8 8E430074 */  lw         $v1, 0x74($s2)
/* FC0DC 800DDFEC 8C420020 */  lw         $v0, 0x20($v0)
/* FC0E0 800DDFF0 8C630020 */  lw         $v1, 0x20($v1)
/* FC0E4 800DDFF4 00821021 */  addu       $v0, $a0, $v0
/* FC0E8 800DDFF8 8C450000 */  lw         $a1, 0x0($v0)
/* FC0EC 800DDFFC 00832021 */  addu       $a0, $a0, $v1
/* FC0F0 800DE000 14A6FFF6 */  bne        $a1, $a2, .Lmenu_800DDFDC
/* FC0F4 800DE004 AC850000 */   sw        $a1, 0x0($a0)
/* FC0F8 800DE008 2611FFFF */  addiu      $s1, $s0, -0x1
/* FC0FC 800DE00C 3C0A7000 */  lui        $t2, (0x70000000 >> 16)
/* FC100 800DE010 3C095000 */  lui        $t1, (0x50000000 >> 16)
/* FC104 800DE014 3C084000 */  lui        $t0, (0x40000000 >> 16)
/* FC108 800DE018 3C076000 */  lui        $a3, (0x60000000 >> 16)
/* FC10C 800DE01C 00111080 */  sll        $v0, $s1, 2
/* FC110 800DE020 2446FFFC */  addiu      $a2, $v0, -0x4
/* FC114 800DE024 00101080 */  sll        $v0, $s0, 2
/* FC118 800DE028 2444FFFC */  addiu      $a0, $v0, -0x4
.Lmenu_800DE02C:
/* FC11C 800DE02C 8E42004C */  lw         $v0, 0x4C($s2)
/* FC120 800DE030 8C420020 */  lw         $v0, 0x20($v0)
/* FC124 800DE034 24840004 */  addiu      $a0, $a0, 0x4
/* FC128 800DE038 00821021 */  addu       $v0, $a0, $v0
/* FC12C 800DE03C 8C450000 */  lw         $a1, 0x0($v0)
/* FC130 800DE040 00AA1824 */  and        $v1, $a1, $t2
/* FC134 800DE044 14690007 */  bne        $v1, $t1, .Lmenu_800DE064
/* FC138 800DE048 26100001 */   addiu     $s0, $s0, 0x1
/* FC13C 800DE04C 8E420074 */  lw         $v0, 0x74($s2)
/* FC140 800DE050 24C60004 */  addiu      $a2, $a2, 0x4
/* FC144 800DE054 8C420020 */  lw         $v0, 0x20($v0)
/* FC148 800DE058 26310001 */  addiu      $s1, $s1, 0x1
/* FC14C 800DE05C 00C21021 */  addu       $v0, $a2, $v0
/* FC150 800DE060 AC450000 */  sw         $a1, 0x0($v0)
.Lmenu_800DE064:
/* FC154 800DE064 10680003 */  beq        $v1, $t0, .Lmenu_800DE074
/* FC158 800DE068 2614FFFF */   addiu     $s4, $s0, -0x1
/* FC15C 800DE06C 1467FFEF */  bne        $v1, $a3, .Lmenu_800DE02C
/* FC160 800DE070 00000000 */   nop
.Lmenu_800DE074:
/* FC164 800DE074 00008021 */  addu       $s0, $zero, $zero
/* FC168 800DE078 3C131000 */  lui        $s3, (0x10000000 >> 16)
.Lmenu_800DE07C:
/* FC16C 800DE07C 8E440058 */  lw         $a0, 0x58($s2)
/* FC170 800DE080 0204102A */  slt        $v0, $s0, $a0
/* FC174 800DE084 1040004A */  beqz       $v0, .Lmenu_800DE1B0
/* FC178 800DE088 00101880 */   sll       $v1, $s0, 2
/* FC17C 800DE08C 8E460060 */  lw         $a2, 0x60($s2)
/* FC180 800DE090 8CC20020 */  lw         $v0, 0x20($a2)
/* FC184 800DE094 00621821 */  addu       $v1, $v1, $v0
/* FC188 800DE098 8C650000 */  lw         $a1, 0x0($v1)
/* FC18C 800DE09C 3C027000 */  lui        $v0, (0x70000000 >> 16)
/* FC190 800DE0A0 00A21824 */  and        $v1, $a1, $v0
/* FC194 800DE0A4 10730016 */  beq        $v1, $s3, .Lmenu_800DE100
/* FC198 800DE0A8 0263102B */   sltu      $v0, $s3, $v1
/* FC19C 800DE0AC 54400005 */  bnel       $v0, $zero, .Lmenu_800DE0C4
/* FC1A0 800DE0B0 3C024000 */   lui       $v0, (0x40000000 >> 16)
/* FC1A4 800DE0B4 10600009 */  beqz       $v1, .Lmenu_800DE0DC
/* FC1A8 800DE0B8 3C060FC0 */   lui       $a2, (0xFC00008 >> 16)
/* FC1AC 800DE0BC 08037864 */  j          .Lmenu_800DE190
/* FC1B0 800DE0C0 02201021 */   addu      $v0, $s1, $zero
.Lmenu_800DE0C4:
/* FC1B4 800DE0C4 10620019 */  beq        $v1, $v0, .Lmenu_800DE12C
/* FC1B8 800DE0C8 3C026000 */   lui       $v0, (0x60000000 >> 16)
/* FC1BC 800DE0CC 1062002D */  beq        $v1, $v0, .Lmenu_800DE184
/* FC1C0 800DE0D0 02201021 */   addu      $v0, $s1, $zero
/* FC1C4 800DE0D4 08037864 */  j          .Lmenu_800DE190
/* FC1C8 800DE0D8 00000000 */   nop
.Lmenu_800DE0DC:
/* FC1CC 800DE0DC 30A4FFFF */  andi       $a0, $a1, 0xFFFF
/* FC1D0 800DE0E0 00051C02 */  srl        $v1, $a1, 16
/* FC1D4 800DE0E4 00A62824 */  and        $a1, $a1, $a2
/* FC1D8 800DE0E8 3063003F */  andi       $v1, $v1, 0x3F
/* FC1DC 800DE0EC 00031C00 */  sll        $v1, $v1, 16
/* FC1E0 800DE0F0 8E42003C */  lw         $v0, 0x3C($s2)
/* FC1E4 800DE0F4 00A32825 */  or         $a1, $a1, $v1
/* FC1E8 800DE0F8 08037848 */  j          .Lmenu_800DE120
/* FC1EC 800DE0FC 00441021 */   addu      $v0, $v0, $a0
.Lmenu_800DE100:
/* FC1F0 800DE100 30A6FFFF */  andi       $a2, $a1, 0xFFFF
/* FC1F4 800DE104 00051C02 */  srl        $v1, $a1, 16
/* FC1F8 800DE108 3C051000 */  lui        $a1, (0x10000000 >> 16)
/* FC1FC 800DE10C 30630FFF */  andi       $v1, $v1, 0xFFF
/* FC200 800DE110 00031C00 */  sll        $v1, $v1, 16
/* FC204 800DE114 8E420040 */  lw         $v0, 0x40($s2)
/* FC208 800DE118 00652825 */  or         $a1, $v1, $a1
/* FC20C 800DE11C 00461021 */  addu       $v0, $v0, $a2
.Lmenu_800DE120:
/* FC210 800DE120 3042FFFF */  andi       $v0, $v0, 0xFFFF
/* FC214 800DE124 08037863 */  j          .Lmenu_800DE18C
/* FC218 800DE128 00A22825 */   or        $a1, $a1, $v0
.Lmenu_800DE12C:
/* FC21C 800DE12C 30A4FFFF */  andi       $a0, $a1, 0xFFFF
/* FC220 800DE130 8CC30008 */  lw         $v1, (0xFC00008 & 0xFFFF)($a2)
/* FC224 800DE134 00041080 */  sll        $v0, $a0, 2
/* FC228 800DE138 00431021 */  addu       $v0, $v0, $v1
/* FC22C 800DE13C 8C420000 */  lw         $v0, 0x0($v0)
/* FC230 800DE140 884B0014 */  lwl        $t3, 0x14($v0)
/* FC234 800DE144 984B0017 */  lwr        $t3, 0x17($v0)
/* FC238 800DE148 884C0018 */  lwl        $t4, 0x18($v0)
/* FC23C 800DE14C 984C001B */  lwr        $t4, 0x1B($v0)
/* FC240 800DE150 ABAB0010 */  swl        $t3, 0x10($sp)
/* FC244 800DE154 BBAB0013 */  swr        $t3, 0x13($sp)
/* FC248 800DE158 ABAC0014 */  swl        $t4, 0x14($sp)
/* FC24C 800DE15C BBAC0017 */  swr        $t4, 0x17($sp)
/* FC250 800DE160 8E440074 */  lw         $a0, 0x74($s2)
/* FC254 800DE164 0C0153EC */  jal        func_80054FB0
/* FC258 800DE168 27A50010 */   addiu     $a1, $sp, 0x10
/* FC25C 800DE16C 3C054000 */  lui        $a1, (0x40000000 >> 16)
/* FC260 800DE170 3C0300FF */  lui        $v1, (0xFFFFFF >> 16)
/* FC264 800DE174 3463FFFF */  ori        $v1, $v1, (0xFFFFFF & 0xFFFF)
/* FC268 800DE178 00431024 */  and        $v0, $v0, $v1
/* FC26C 800DE17C 08037863 */  j          .Lmenu_800DE18C
/* FC270 800DE180 00452825 */   or        $a1, $v0, $a1
.Lmenu_800DE184:
/* FC274 800DE184 0803786A */  j          .Lmenu_800DE1A8
/* FC278 800DE188 00808021 */   addu      $s0, $a0, $zero
.Lmenu_800DE18C:
/* FC27C 800DE18C 02201021 */  addu       $v0, $s1, $zero
.Lmenu_800DE190:
/* FC280 800DE190 8E430074 */  lw         $v1, 0x74($s2)
/* FC284 800DE194 26310001 */  addiu      $s1, $s1, 0x1
/* FC288 800DE198 8C630020 */  lw         $v1, 0x20($v1)
/* FC28C 800DE19C 00021080 */  sll        $v0, $v0, 2
/* FC290 800DE1A0 00431021 */  addu       $v0, $v0, $v1
/* FC294 800DE1A4 AC450000 */  sw         $a1, 0x0($v0)
.Lmenu_800DE1A8:
/* FC298 800DE1A8 0803781F */  j          .Lmenu_800DE07C
/* FC29C 800DE1AC 26100001 */   addiu     $s0, $s0, 0x1
.Lmenu_800DE1B0:
/* FC2A0 800DE1B0 02808021 */  addu       $s0, $s4, $zero
/* FC2A4 800DE1B4 00111080 */  sll        $v0, $s1, 2
/* FC2A8 800DE1B8 2445FFFC */  addiu      $a1, $v0, -0x4
.Lmenu_800DE1BC:
/* FC2AC 800DE1BC 8E420044 */  lw         $v0, 0x44($s2)
/* FC2B0 800DE1C0 0202102A */  slt        $v0, $s0, $v0
/* FC2B4 800DE1C4 1040000D */  beqz       $v0, .Lmenu_800DE1FC
/* FC2B8 800DE1C8 24A50004 */   addiu     $a1, $a1, 0x4
/* FC2BC 800DE1CC 26310001 */  addiu      $s1, $s1, 0x1
/* FC2C0 800DE1D0 00102080 */  sll        $a0, $s0, 2
/* FC2C4 800DE1D4 8E42004C */  lw         $v0, 0x4C($s2)
/* FC2C8 800DE1D8 26100001 */  addiu      $s0, $s0, 0x1
/* FC2CC 800DE1DC 8C420020 */  lw         $v0, 0x20($v0)
/* FC2D0 800DE1E0 8E430074 */  lw         $v1, 0x74($s2)
/* FC2D4 800DE1E4 00822021 */  addu       $a0, $a0, $v0
/* FC2D8 800DE1E8 8C620020 */  lw         $v0, 0x20($v1)
/* FC2DC 800DE1EC 8C830000 */  lw         $v1, 0x0($a0)
/* FC2E0 800DE1F0 00A21021 */  addu       $v0, $a1, $v0
/* FC2E4 800DE1F4 0803786F */  j          .Lmenu_800DE1BC
/* FC2E8 800DE1F8 AC430000 */   sw        $v1, 0x0($v0)
.Lmenu_800DE1FC:
/* FC2EC 800DE1FC 8E440074 */  lw         $a0, 0x74($s2)
/* FC2F0 800DE200 8C830020 */  lw         $v1, 0x20($a0)
/* FC2F4 800DE204 00111080 */  sll        $v0, $s1, 2
/* FC2F8 800DE208 00431021 */  addu       $v0, $v0, $v1
/* FC2FC 800DE20C 3C036000 */  lui        $v1, (0x60000000 >> 16)
/* FC300 800DE210 AC430000 */  sw         $v1, 0x0($v0)
/* FC304 800DE214 24020001 */  addiu      $v0, $zero, 0x1
/* FC308 800DE218 AC820038 */  sw         $v0, 0x38($a0)
/* FC30C 800DE21C 8FBF002C */  lw         $ra, 0x2C($sp)
/* FC310 800DE220 8FB40028 */  lw         $s4, 0x28($sp)
/* FC314 800DE224 8FB30024 */  lw         $s3, 0x24($sp)
/* FC318 800DE228 8FB20020 */  lw         $s2, 0x20($sp)
/* FC31C 800DE22C 8FB1001C */  lw         $s1, 0x1C($sp)
/* FC320 800DE230 8FB00018 */  lw         $s0, 0x18($sp)
/* FC324 800DE234 03E00008 */  jr         $ra
/* FC328 800DE238 27BD0030 */   addiu     $sp, $sp, 0x30
