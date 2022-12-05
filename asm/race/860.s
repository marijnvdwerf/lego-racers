.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text, "ax"

glabel func_race_801278D0
/* DDC90 801278D0 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* DDC94 801278D4 AFB00010 */  sw         $s0, 0x10($sp)
/* DDC98 801278D8 AFBF0014 */  sw         $ra, 0x14($sp)
/* DDC9C 801278DC 0C0499F0 */  jal        func_race_801267C0
/* DDCA0 801278E0 00808021 */   addu      $s0, $a0, $zero
/* DDCA4 801278E4 26040030 */  addiu      $a0, $s0, 0x30
/* DDCA8 801278E8 3C02800D */  lui        $v0, %hi(D_race_800CEC30)
/* DDCAC 801278EC 2442EC30 */  addiu      $v0, $v0, %lo(D_race_800CEC30)
/* DDCB0 801278F0 0C0164A4 */  jal        func_80059290
/* DDCB4 801278F4 AE020000 */   sw        $v0, 0x0($s0)
/* DDCB8 801278F8 0C039AC0 */  jal        func_race_800E6B00
/* DDCBC 801278FC 26040064 */   addiu     $a0, $s0, 0x64
/* DDCC0 80127900 0C0152E4 */  jal        func_80054B90
/* DDCC4 80127904 26040198 */   addiu     $a0, $s0, 0x198
/* DDCC8 80127908 02001021 */  addu       $v0, $s0, $zero
/* DDCCC 8012790C AC40002C */  sw         $zero, 0x2C($v0)
/* DDCD0 80127910 AC400058 */  sw         $zero, 0x58($v0)
/* DDCD4 80127914 AC40005C */  sw         $zero, 0x5C($v0)
/* DDCD8 80127918 AC400060 */  sw         $zero, 0x60($v0)
/* DDCDC 8012791C AC4001A4 */  sw         $zero, 0x1A4($v0)
/* DDCE0 80127920 8FBF0014 */  lw         $ra, 0x14($sp)
/* DDCE4 80127924 8FB00010 */  lw         $s0, 0x10($sp)
/* DDCE8 80127928 03E00008 */  jr         $ra
/* DDCEC 8012792C 27BD0018 */   addiu     $sp, $sp, 0x18

glabel func_race_80127930
/* DDCF0 80127930 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* DDCF4 80127934 AFB00010 */  sw         $s0, 0x10($sp)
/* DDCF8 80127938 00808021 */  addu       $s0, $a0, $zero
/* DDCFC 8012793C AFB10014 */  sw         $s1, 0x14($sp)
/* DDD00 80127940 00A08821 */  addu       $s1, $a1, $zero
/* DDD04 80127944 3C02800D */  lui        $v0, %hi(D_race_800CEC30)
/* DDD08 80127948 2442EC30 */  addiu      $v0, $v0, %lo(D_race_800CEC30)
/* DDD0C 8012794C AFBF0018 */  sw         $ra, 0x18($sp)
/* DDD10 80127950 0C049E64 */  jal        func_race_80127990
/* DDD14 80127954 AE020000 */   sw        $v0, 0x0($s0)
/* DDD18 80127958 26040198 */  addiu      $a0, $s0, 0x198
/* DDD1C 8012795C 0C0152E9 */  jal        func_80054BA4
/* DDD20 80127960 24050002 */   addiu     $a1, $zero, 0x2
/* DDD24 80127964 26040064 */  addiu      $a0, $s0, 0x64
/* DDD28 80127968 0C039AFD */  jal        func_race_800E6BF4
/* DDD2C 8012796C 24050002 */   addiu     $a1, $zero, 0x2
/* DDD30 80127970 02002021 */  addu       $a0, $s0, $zero
/* DDD34 80127974 0C047E8A */  jal        func_race_8011FA28
/* DDD38 80127978 02202821 */   addu      $a1, $s1, $zero
/* DDD3C 8012797C 8FBF0018 */  lw         $ra, 0x18($sp)
/* DDD40 80127980 8FB10014 */  lw         $s1, 0x14($sp)
/* DDD44 80127984 8FB00010 */  lw         $s0, 0x10($sp)
/* DDD48 80127988 03E00008 */  jr         $ra
/* DDD4C 8012798C 27BD0020 */   addiu     $sp, $sp, 0x20

glabel func_race_80127990
/* DDD50 80127990 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* DDD54 80127994 AFB00010 */  sw         $s0, 0x10($sp)
/* DDD58 80127998 00808021 */  addu       $s0, $a0, $zero
/* DDD5C 8012799C AFBF0014 */  sw         $ra, 0x14($sp)
/* DDD60 801279A0 8E020000 */  lw         $v0, 0x0($s0)
/* DDD64 801279A4 84440040 */  lh         $a0, 0x40($v0)
/* DDD68 801279A8 8C420044 */  lw         $v0, 0x44($v0)
/* DDD6C 801279AC 0040F809 */  jalr       $v0
/* DDD70 801279B0 02042021 */   addu      $a0, $s0, $a0
/* DDD74 801279B4 0C039B58 */  jal        func_race_800E6D60
/* DDD78 801279B8 26040064 */   addiu     $a0, $s0, 0x64
/* DDD7C 801279BC 0C0153DC */  jal        func_80054F70
/* DDD80 801279C0 26040198 */   addiu     $a0, $s0, 0x198
/* DDD84 801279C4 AE00002C */  sw         $zero, 0x2C($s0)
/* DDD88 801279C8 AE000058 */  sw         $zero, 0x58($s0)
/* DDD8C 801279CC AE00005C */  sw         $zero, 0x5C($s0)
/* DDD90 801279D0 AE000060 */  sw         $zero, 0x60($s0)
/* DDD94 801279D4 AE0001A4 */  sw         $zero, 0x1A4($s0)
/* DDD98 801279D8 8FBF0014 */  lw         $ra, 0x14($sp)
/* DDD9C 801279DC 8FB00010 */  lw         $s0, 0x10($sp)
/* DDDA0 801279E0 03E00008 */  jr         $ra
/* DDDA4 801279E4 27BD0018 */   addiu     $sp, $sp, 0x18

glabel func_race_801279E8
/* DDDA8 801279E8 27BDFFD8 */  addiu      $sp, $sp, -0x28
/* DDDAC 801279EC AFB00010 */  sw         $s0, 0x10($sp)
/* DDDB0 801279F0 00808021 */  addu       $s0, $a0, $zero
/* DDDB4 801279F4 AFB3001C */  sw         $s3, 0x1C($sp)
/* DDDB8 801279F8 26130198 */  addiu      $s3, $s0, 0x198
/* DDDBC 801279FC 02602021 */  addu       $a0, $s3, $zero
/* DDDC0 80127A00 AFBF0020 */  sw         $ra, 0x20($sp)
/* DDDC4 80127A04 AFB20018 */  sw         $s2, 0x18($sp)
/* DDDC8 80127A08 AFB10014 */  sw         $s1, 0x14($sp)
/* DDDCC 80127A0C AE060018 */  sw         $a2, 0x18($s0)
/* DDDD0 80127A10 24060001 */  addiu      $a2, $zero, 0x1
/* DDDD4 80127A14 00C01021 */  addu       $v0, $a2, $zero
/* DDDD8 80127A18 AE05002C */  sw         $a1, 0x2C($s0)
/* DDDDC 80127A1C AE0701A4 */  sw         $a3, 0x1A4($s0)
/* DDDE0 80127A20 AE020004 */  sw         $v0, 0x4($s0)
/* DDDE4 80127A24 8FA30038 */  lw         $v1, 0x38($sp)
/* DDDE8 80127A28 8FB20040 */  lw         $s2, 0x40($sp)
/* DDDEC 80127A2C 8FA2003C */  lw         $v0, 0x3C($sp)
/* DDDF0 80127A30 AE030020 */  sw         $v1, 0x20($s0)
/* DDDF4 80127A34 AE02005C */  sw         $v0, 0x5C($s0)
/* DDDF8 80127A38 8FB10044 */  lw         $s1, 0x44($sp)
/* DDDFC 80127A3C 0C0152FA */  jal        func_80054BE8
/* DDE00 80127A40 02402821 */   addu      $a1, $s2, $zero
/* DDE04 80127A44 02602021 */  addu       $a0, $s3, $zero
/* DDE08 80127A48 00002821 */  addu       $a1, $zero, $zero
/* DDE0C 80127A4C 3C06800D */  lui        $a2, %hi(D_race_800CEBF0)
/* DDE10 80127A50 0C015415 */  jal        func_80055054
/* DDE14 80127A54 24C6EBF0 */   addiu     $a2, $a2, %lo(D_race_800CEBF0)
/* DDE18 80127A58 26040064 */  addiu      $a0, $s0, 0x64
/* DDE1C 80127A5C 02403021 */  addu       $a2, $s2, $zero
/* DDE20 80127A60 24070010 */  addiu      $a3, $zero, 0x10
/* DDE24 80127A64 0C039B0E */  jal        func_race_800E6C38
/* DDE28 80127A68 02202821 */   addu      $a1, $s1, $zero
/* DDE2C 80127A6C 26100074 */  addiu      $s0, $s0, 0x74
/* DDE30 80127A70 8E02005C */  lw         $v0, 0x5C($s0)
/* DDE34 80127A74 34420002 */  ori        $v0, $v0, 0x2
/* DDE38 80127A78 AE02005C */  sw         $v0, 0x5C($s0)
/* DDE3C 80127A7C 8FBF0020 */  lw         $ra, 0x20($sp)
/* DDE40 80127A80 8FB3001C */  lw         $s3, 0x1C($sp)
/* DDE44 80127A84 8FB20018 */  lw         $s2, 0x18($sp)
/* DDE48 80127A88 8FB10014 */  lw         $s1, 0x14($sp)
/* DDE4C 80127A8C 8FB00010 */  lw         $s0, 0x10($sp)
/* DDE50 80127A90 03E00008 */  jr         $ra
/* DDE54 80127A94 27BD0028 */   addiu     $sp, $sp, 0x28

glabel func_race_80127A98
/* DDE58 80127A98 24020002 */  addiu      $v0, $zero, 0x2
/* DDE5C 80127A9C AC850028 */  sw         $a1, 0x28($a0)
/* DDE60 80127AA0 AC820004 */  sw         $v0, 0x4($a0)
/* DDE64 80127AA4 03E00008 */  jr         $ra
/* DDE68 80127AA8 AC800008 */   sw        $zero, 0x8($a0)

glabel func_race_80127AAC
/* DDE6C 80127AAC 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* DDE70 80127AB0 AFB00010 */  sw         $s0, 0x10($sp)
/* DDE74 80127AB4 00808021 */  addu       $s0, $a0, $zero
/* DDE78 80127AB8 AFBF0014 */  sw         $ra, 0x14($sp)
/* DDE7C 80127ABC 8E050060 */  lw         $a1, 0x60($s0)
/* DDE80 80127AC0 10A00005 */  beqz       $a1, .Lrace_80127AD8
/* DDE84 80127AC4 00000000 */   nop
/* DDE88 80127AC8 8E04005C */  lw         $a0, 0x5C($s0)
/* DDE8C 80127ACC 0C01088C */  jal        func_80042230
/* DDE90 80127AD0 00000000 */   nop
/* DDE94 80127AD4 AE000060 */  sw         $zero, 0x60($s0)
.Lrace_80127AD8:
/* DDE98 80127AD8 8E050058 */  lw         $a1, 0x58($s0)
/* DDE9C 80127ADC 10A00005 */  beqz       $a1, .Lrace_80127AF4
/* DDEA0 80127AE0 00000000 */   nop
/* DDEA4 80127AE4 8E040010 */  lw         $a0, 0x10($s0)
/* DDEA8 80127AE8 0C046564 */  jal        func_race_80119590
/* DDEAC 80127AEC 00000000 */   nop
/* DDEB0 80127AF0 AE000058 */  sw         $zero, 0x58($s0)
.Lrace_80127AF4:
/* DDEB4 80127AF4 8E02001C */  lw         $v0, 0x1C($s0)
/* DDEB8 80127AF8 50400004 */  beql       $v0, $zero, .Lrace_80127B0C
/* DDEBC 80127AFC 24020001 */   addiu     $v0, $zero, 0x1
/* DDEC0 80127B00 AC400024 */  sw         $zero, 0x24($v0)
/* DDEC4 80127B04 AE00001C */  sw         $zero, 0x1C($s0)
/* DDEC8 80127B08 24020001 */  addiu      $v0, $zero, 0x1
.Lrace_80127B0C:
/* DDECC 80127B0C AE000028 */  sw         $zero, 0x28($s0)
/* DDED0 80127B10 AE020004 */  sw         $v0, 0x4($s0)
/* DDED4 80127B14 8FBF0014 */  lw         $ra, 0x14($sp)
/* DDED8 80127B18 8FB00010 */  lw         $s0, 0x10($sp)
/* DDEDC 80127B1C 03E00008 */  jr         $ra
/* DDEE0 80127B20 27BD0018 */   addiu     $sp, $sp, 0x18

glabel func_race_80127B24
/* DDEE4 80127B24 27BDFFC8 */  addiu      $sp, $sp, -0x38
/* DDEE8 80127B28 AFB00020 */  sw         $s0, 0x20($sp)
/* DDEEC 80127B2C 00808021 */  addu       $s0, $a0, $zero
/* DDEF0 80127B30 AFBF0024 */  sw         $ra, 0x24($sp)
/* DDEF4 80127B34 F7B60030 */  sdc1       $f22, 0x30($sp)
/* DDEF8 80127B38 F7B40028 */  sdc1       $f20, 0x28($sp)
/* DDEFC 80127B3C 8E030004 */  lw         $v1, 0x4($s0)
/* DDF00 80127B40 24020006 */  addiu      $v0, $zero, 0x6
/* DDF04 80127B44 1062004B */  beq        $v1, $v0, .Lrace_80127C74
/* DDF08 80127B48 00000000 */   nop
/* DDF0C 80127B4C 0C047E96 */  jal        func_race_8011FA58
/* DDF10 80127B50 00000000 */   nop
/* DDF14 80127B54 8E020060 */  lw         $v0, 0x60($s0)
/* DDF18 80127B58 10400046 */  beqz       $v0, .Lrace_80127C74
/* DDF1C 80127B5C 3C0A342D */   lui       $t2, (0x342DA7F3 >> 16)
/* DDF20 80127B60 354AA7F3 */  ori        $t2, $t2, (0x342DA7F3 & 0xFFFF)
/* DDF24 80127B64 3C072492 */  lui        $a3, (0x24924925 >> 16)
/* DDF28 80127B68 34E74925 */  ori        $a3, $a3, (0x24924925 & 0xFFFF)
/* DDF2C 80127B6C 3C068003 */  lui        $a2, %hi(D_8002FAB0)
/* DDF30 80127B70 26040030 */  addiu      $a0, $s0, 0x30
/* DDF34 80127B74 3C098003 */  lui        $t1, %hi(D_8002F2B0)
/* DDF38 80127B78 2529F2B0 */  addiu      $t1, $t1, %lo(D_8002F2B0)
/* DDF3C 80127B7C 27A50010 */  addiu      $a1, $sp, 0x10
/* DDF40 80127B80 8CC3FAB0 */  lw         $v1, %lo(D_8002FAB0)($a2)
/* DDF44 80127B84 3C01800D */  lui        $at, %hi(D_race_800CEBF8)
/* DDF48 80127B88 C420EBF8 */  lwc1       $f0, %lo(D_race_800CEBF8)($at)
/* DDF4C 80127B8C 24630001 */  addiu      $v1, $v1, 0x1
/* DDF50 80127B90 306303FF */  andi       $v1, $v1, 0x3FF
/* DDF54 80127B94 00031040 */  sll        $v0, $v1, 1
/* DDF58 80127B98 00491021 */  addu       $v0, $v0, $t1
/* DDF5C 80127B9C ACC3FAB0 */  sw         $v1, %lo(D_8002FAB0)($a2)
/* DDF60 80127BA0 24630001 */  addiu      $v1, $v1, 0x1
/* DDF64 80127BA4 94480000 */  lhu        $t0, 0x0($v0)
/* DDF68 80127BA8 306303FF */  andi       $v1, $v1, 0x3FF
/* DDF6C 80127BAC 010A0019 */  multu      $t0, $t2
/* DDF70 80127BB0 ACC3FAB0 */  sw         $v1, %lo(D_8002FAB0)($a2)
/* DDF74 80127BB4 00031840 */  sll        $v1, $v1, 1
/* DDF78 80127BB8 00691821 */  addu       $v1, $v1, $t1
/* DDF7C 80127BBC 94630000 */  lhu        $v1, 0x0($v1)
/* DDF80 80127BC0 00001010 */  mfhi       $v0
/* DDF84 80127BC4 000231C2 */  srl        $a2, $v0, 7
/* DDF88 80127BC8 00061080 */  sll        $v0, $a2, 2
/* DDF8C 80127BCC 00461021 */  addu       $v0, $v0, $a2
/* DDF90 80127BD0 000210C0 */  sll        $v0, $v0, 3
/* DDF94 80127BD4 00461023 */  subu       $v0, $v0, $a2
/* DDF98 80127BD8 00021080 */  sll        $v0, $v0, 2
/* DDF9C 80127BDC 00461021 */  addu       $v0, $v0, $a2
/* DDFA0 80127BE0 00021080 */  sll        $v0, $v0, 2
/* DDFA4 80127BE4 00670019 */  multu      $v1, $a3
/* DDFA8 80127BE8 01024023 */  subu       $t0, $t0, $v0
/* DDFAC 80127BEC 3108FFFF */  andi       $t0, $t0, 0xFFFF
/* DDFB0 80127BF0 4488A000 */  mtc1       $t0, $f20
/* DDFB4 80127BF4 4680A520 */  cvt.s.w    $f20, $f20
/* DDFB8 80127BF8 00003810 */  mfhi       $a3
/* DDFBC 80127BFC 00671023 */  subu       $v0, $v1, $a3
/* DDFC0 80127C00 00021042 */  srl        $v0, $v0, 1
/* DDFC4 80127C04 00E23821 */  addu       $a3, $a3, $v0
/* DDFC8 80127C08 00073882 */  srl        $a3, $a3, 2
/* DDFCC 80127C0C 000710C0 */  sll        $v0, $a3, 3
/* DDFD0 80127C10 00471023 */  subu       $v0, $v0, $a3
/* DDFD4 80127C14 00621823 */  subu       $v1, $v1, $v0
/* DDFD8 80127C18 3063FFFF */  andi       $v1, $v1, 0xFFFF
/* DDFDC 80127C1C 4483B000 */  mtc1       $v1, $f22
/* DDFE0 80127C20 4680B5A0 */  cvt.s.w    $f22, $f22
/* DDFE4 80127C24 0C016596 */  jal        func_80059658
/* DDFE8 80127C28 4600A503 */   div.s     $f20, $f20, $f0
/* DDFEC 80127C2C 0C006D60 */  jal        sinf
/* DDFF0 80127C30 4600A306 */   mov.s     $f12, $f20
/* DDFF4 80127C34 46160002 */  mul.s      $f0, $f0, $f22
/* DDFF8 80127C38 C7A20010 */  lwc1       $f2, 0x10($sp)
/* DDFFC 80127C3C 46001080 */  add.s      $f2, $f2, $f0
/* DE000 80127C40 4600A306 */  mov.s      $f12, $f20
/* DE004 80127C44 0C006BCC */  jal        cosf
/* DE008 80127C48 E7A20010 */   swc1      $f2, 0x10($sp)
/* DE00C 80127C4C 46160002 */  mul.s      $f0, $f0, $f22
/* DE010 80127C50 C7A20014 */  lwc1       $f2, 0x14($sp)
/* DE014 80127C54 46001080 */  add.s      $f2, $f2, $f0
/* DE018 80127C58 E7A20014 */  swc1       $f2, 0x14($sp)
/* DE01C 80127C5C 8E020060 */  lw         $v0, 0x60($s0)
/* DE020 80127C60 8C440000 */  lw         $a0, 0x0($v0)
/* DE024 80127C64 10800003 */  beqz       $a0, .Lrace_80127C74
/* DE028 80127C68 27A50010 */   addiu     $a1, $sp, 0x10
/* DE02C 80127C6C 0C01058D */  jal        func_80041634
/* DE030 80127C70 00000000 */   nop
.Lrace_80127C74:
/* DE034 80127C74 8FBF0024 */  lw         $ra, 0x24($sp)
/* DE038 80127C78 8FB00020 */  lw         $s0, 0x20($sp)
/* DE03C 80127C7C D7B60030 */  ldc1       $f22, 0x30($sp)
/* DE040 80127C80 D7B40028 */  ldc1       $f20, 0x28($sp)
/* DE044 80127C84 03E00008 */  jr         $ra
/* DE048 80127C88 27BD0038 */   addiu     $sp, $sp, 0x38

glabel func_race_80127C8C
/* DE04C 80127C8C 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* DE050 80127C90 AFBF0010 */  sw         $ra, 0x10($sp)
/* DE054 80127C94 8C830004 */  lw         $v1, 0x4($a0)
/* DE058 80127C98 24020003 */  addiu      $v0, $zero, 0x3
/* DE05C 80127C9C 14620003 */  bne        $v1, $v0, .Lrace_80127CAC
/* DE060 80127CA0 00000000 */   nop
/* DE064 80127CA4 0C03A0C6 */  jal        func_race_800E8318
/* DE068 80127CA8 24840064 */   addiu     $a0, $a0, 0x64
.Lrace_80127CAC:
/* DE06C 80127CAC 8FBF0010 */  lw         $ra, 0x10($sp)
/* DE070 80127CB0 03E00008 */  jr         $ra
/* DE074 80127CB4 27BD0018 */   addiu     $sp, $sp, 0x18

glabel func_race_80127CB8
/* DE078 80127CB8 27BDFF88 */  addiu      $sp, $sp, -0x78
/* DE07C 80127CBC AFB1006C */  sw         $s1, 0x6C($sp)
/* DE080 80127CC0 00808821 */  addu       $s1, $a0, $zero
/* DE084 80127CC4 AFBF0074 */  sw         $ra, 0x74($sp)
/* DE088 80127CC8 AFB20070 */  sw         $s2, 0x70($sp)
/* DE08C 80127CCC AFB00068 */  sw         $s0, 0x68($sp)
/* DE090 80127CD0 8E230004 */  lw         $v1, 0x4($s1)
/* DE094 80127CD4 24020002 */  addiu      $v0, $zero, 0x2
/* DE098 80127CD8 10620005 */  beq        $v1, $v0, .Lrace_80127CF0
/* DE09C 80127CDC 24020003 */   addiu     $v0, $zero, 0x3
/* DE0A0 80127CE0 10620084 */  beq        $v1, $v0, .Lrace_80127EF4
/* DE0A4 80127CE4 24020006 */   addiu     $v0, $zero, 0x6
/* DE0A8 80127CE8 08049FBF */  j          .Lrace_80127EFC
/* DE0AC 80127CEC 00000000 */   nop
.Lrace_80127CF0:
/* DE0B0 80127CF0 02202021 */  addu       $a0, $s1, $zero
/* DE0B4 80127CF4 27B20058 */  addiu      $s2, $sp, 0x58
/* DE0B8 80127CF8 02403021 */  addu       $a2, $s2, $zero
/* DE0BC 80127CFC 8E250028 */  lw         $a1, 0x28($s1)
/* DE0C0 80127D00 0C049A1F */  jal        func_race_8012687C
/* DE0C4 80127D04 00003821 */   addu      $a3, $zero, $zero
/* DE0C8 80127D08 26300030 */  addiu      $s0, $s1, 0x30
/* DE0CC 80127D0C 02002021 */  addu       $a0, $s0, $zero
/* DE0D0 80127D10 0C01659D */  jal        func_80059674
/* DE0D4 80127D14 02402821 */   addu      $a1, $s2, $zero
/* DE0D8 80127D18 3C054040 */  lui        $a1, (0x40400000 >> 16)
/* DE0DC 80127D1C 0C0165E8 */  jal        func_800597A0
/* DE0E0 80127D20 02002021 */   addu      $a0, $s0, $zero
/* DE0E4 80127D24 24060096 */  addiu      $a2, $zero, 0x96
/* DE0E8 80127D28 8E240028 */  lw         $a0, 0x28($s1)
/* DE0EC 80127D2C 3C053AC4 */  lui        $a1, (0x3AC49BA6 >> 16)
/* DE0F0 80127D30 34A59BA6 */  ori        $a1, $a1, (0x3AC49BA6 & 0xFFFF)
/* DE0F4 80127D34 0C03F9F1 */  jal        func_race_800FE7C4
/* DE0F8 80127D38 248403FC */   addiu     $a0, $a0, 0x3FC
/* DE0FC 80127D3C 3C0741F0 */  lui        $a3, (0x41F00000 >> 16)
/* DE100 80127D40 3C01800D */  lui        $at, %hi(D_race_800CEC04)
/* DE104 80127D44 C422EC04 */  lwc1       $f2, %lo(D_race_800CEC04)($at)
/* DE108 80127D48 3C01800D */  lui        $at, %hi(D_race_800CEC08)
/* DE10C 80127D4C C420EC08 */  lwc1       $f0, %lo(D_race_800CEC08)($at)
/* DE110 80127D50 2405002E */  addiu      $a1, $zero, 0x2E
/* DE114 80127D54 E7A20010 */  swc1       $f2, 0x10($sp)
/* DE118 80127D58 E7A00014 */  swc1       $f0, 0x14($sp)
/* DE11C 80127D5C E7A00018 */  swc1       $f0, 0x18($sp)
/* DE120 80127D60 8E240010 */  lw         $a0, 0x10($s1)
/* DE124 80127D64 0C046530 */  jal        func_race_801194C0
/* DE128 80127D68 02403021 */   addu      $a2, $s2, $zero
/* DE12C 80127D6C 8E240010 */  lw         $a0, 0x10($s1)
/* DE130 80127D70 0C04654F */  jal        func_race_8011953C
/* DE134 80127D74 24050030 */   addiu     $a1, $zero, 0x30
/* DE138 80127D78 00401821 */  addu       $v1, $v0, $zero
/* DE13C 80127D7C 10600015 */  beqz       $v1, .Lrace_80127DD4
/* DE140 80127D80 AE230058 */   sw        $v1, 0x58($s1)
/* DE144 80127D84 8C620034 */  lw         $v0, 0x34($v1)
/* DE148 80127D88 24050001 */  addiu      $a1, $zero, 0x1
/* DE14C 80127D8C 84440010 */  lh         $a0, 0x10($v0)
/* DE150 80127D90 8C420014 */  lw         $v0, 0x14($v0)
/* DE154 80127D94 0040F809 */  jalr       $v0
/* DE158 80127D98 00642021 */   addu      $a0, $v1, $a0
/* DE15C 80127D9C 8E220058 */  lw         $v0, 0x58($s1)
/* DE160 80127DA0 3C01800D */  lui        $at, %hi(D_race_800CEC0C)
/* DE164 80127DA4 C420EC0C */  lwc1       $f0, %lo(D_race_800CEC0C)($at)
/* DE168 80127DA8 3C01800D */  lui        $at, %hi(D_race_800CEC10)
/* DE16C 80127DAC C422EC10 */  lwc1       $f2, %lo(D_race_800CEC10)($at)
/* DE170 80127DB0 E440002C */  swc1       $f0, 0x2C($v0)
/* DE174 80127DB4 E4420030 */  swc1       $f2, 0x30($v0)
/* DE178 80127DB8 8E220058 */  lw         $v0, 0x58($s1)
/* DE17C 80127DBC 8FA80058 */  lw         $t0, 0x58($sp)
/* DE180 80127DC0 8FA9005C */  lw         $t1, 0x5C($sp)
/* DE184 80127DC4 8FAA0060 */  lw         $t2, 0x60($sp)
/* DE188 80127DC8 AC480014 */  sw         $t0, 0x14($v0)
/* DE18C 80127DCC AC490018 */  sw         $t1, 0x18($v0)
/* DE190 80127DD0 AC4A001C */  sw         $t2, 0x1C($v0)
.Lrace_80127DD4:
/* DE194 80127DD4 02202821 */  addu       $a1, $s1, $zero
/* DE198 80127DD8 24020003 */  addiu      $v0, $zero, 0x3
/* DE19C 80127DDC AE220004 */  sw         $v0, 0x4($s1)
/* DE1A0 80127DE0 24022710 */  addiu      $v0, $zero, 0x2710
/* DE1A4 80127DE4 AE220008 */  sw         $v0, 0x8($s1)
/* DE1A8 80127DE8 24020004 */  addiu      $v0, $zero, 0x4
/* DE1AC 80127DEC AFA20020 */  sw         $v0, 0x20($sp)
/* DE1B0 80127DF0 24020001 */  addiu      $v0, $zero, 0x1
/* DE1B4 80127DF4 AFA20024 */  sw         $v0, 0x24($sp)
/* DE1B8 80127DF8 AFA00028 */  sw         $zero, 0x28($sp)
/* DE1BC 80127DFC AFA0002C */  sw         $zero, 0x2C($sp)
/* DE1C0 80127E00 AFB00030 */  sw         $s0, 0x30($sp)
/* DE1C4 80127E04 8E240018 */  lw         $a0, 0x18($s1)
/* DE1C8 80127E08 27A60020 */  addiu      $a2, $sp, 0x20
/* DE1CC 80127E0C 0C04053E */  jal        func_race_801014F8
/* DE1D0 80127E10 248400F0 */   addiu     $a0, $a0, 0xF0
/* DE1D4 80127E14 3C05800D */  lui        $a1, %hi(D_race_800CEBFC)
/* DE1D8 80127E18 24A5EBFC */  addiu      $a1, $a1, %lo(D_race_800CEBFC)
/* DE1DC 80127E1C 00003021 */  addu       $a2, $zero, $zero
/* DE1E0 80127E20 AE22001C */  sw         $v0, 0x1C($s1)
/* DE1E4 80127E24 AFA00010 */  sw         $zero, 0x10($sp)
/* DE1E8 80127E28 8E24005C */  lw         $a0, 0x5C($s1)
/* DE1EC 80127E2C 0C0107DD */  jal        func_80041F74
/* DE1F0 80127E30 00C03821 */   addu      $a3, $a2, $zero
/* DE1F4 80127E34 10400006 */  beqz       $v0, .Lrace_80127E50
/* DE1F8 80127E38 AE220060 */   sw        $v0, 0x60($s1)
/* DE1FC 80127E3C 8C440000 */  lw         $a0, 0x0($v0)
/* DE200 80127E40 10800003 */  beqz       $a0, .Lrace_80127E50
/* DE204 80127E44 00000000 */   nop
/* DE208 80127E48 0C01058D */  jal        func_80041634
/* DE20C 80127E4C 02402821 */   addu      $a1, $s2, $zero
.Lrace_80127E50:
/* DE210 80127E50 3C01800D */  lui        $at, %hi(D_race_800CEC14)
/* DE214 80127E54 C420EC14 */  lwc1       $f0, %lo(D_race_800CEC14)($at)
/* DE218 80127E58 3C01800D */  lui        $at, %hi(D_race_800CEC18)
/* DE21C 80127E5C C424EC18 */  lwc1       $f4, %lo(D_race_800CEC18)($at)
/* DE220 80127E60 26300064 */  addiu      $s0, $s1, 0x64
/* DE224 80127E64 E600011C */  swc1       $f0, 0x11C($s0)
/* DE228 80127E68 E6000120 */  swc1       $f0, 0x120($s0)
/* DE22C 80127E6C E6000124 */  swc1       $f0, 0x124($s0)
/* DE230 80127E70 C7A00060 */  lwc1       $f0, 0x60($sp)
/* DE234 80127E74 46040000 */  add.s      $f0, $f0, $f4
/* DE238 80127E78 C7A20058 */  lwc1       $f2, 0x58($sp)
/* DE23C 80127E7C E7A00060 */  swc1       $f0, 0x60($sp)
/* DE240 80127E80 E60200F0 */  swc1       $f2, 0xF0($s0)
/* DE244 80127E84 C7A0005C */  lwc1       $f0, 0x5C($sp)
/* DE248 80127E88 E60000F4 */  swc1       $f0, 0xF4($s0)
/* DE24C 80127E8C C7A00060 */  lwc1       $f0, 0x60($sp)
/* DE250 80127E90 02002021 */  addu       $a0, $s0, $zero
/* DE254 80127E94 E60000F8 */  swc1       $f0, 0xF8($s0)
/* DE258 80127E98 C7A00060 */  lwc1       $f0, 0x60($sp)
/* DE25C 80127E9C 27A50038 */  addiu      $a1, $sp, 0x38
/* DE260 80127EA0 46040001 */  sub.s      $f0, $f0, $f4
/* DE264 80127EA4 3C01800D */  lui        $at, %hi(D_race_800CEC1C)
/* DE268 80127EA8 C422EC1C */  lwc1       $f2, %lo(D_race_800CEC1C)($at)
/* DE26C 80127EAC 27A60048 */  addiu      $a2, $sp, 0x48
/* DE270 80127EB0 E7A00060 */  swc1       $f0, 0x60($sp)
/* DE274 80127EB4 3C01800D */  lui        $at, %hi(D_race_800CEC20)
/* DE278 80127EB8 C420EC20 */  lwc1       $f0, %lo(D_race_800CEC20)($at)
/* DE27C 80127EBC 26220198 */  addiu      $v0, $s1, 0x198
/* DE280 80127EC0 AE2200E0 */  sw         $v0, 0xE0($s1)
/* DE284 80127EC4 AFA0004C */  sw         $zero, 0x4C($sp)
/* DE288 80127EC8 AFA00050 */  sw         $zero, 0x50($sp)
/* DE28C 80127ECC AFA00038 */  sw         $zero, 0x38($sp)
/* DE290 80127ED0 AFA0003C */  sw         $zero, 0x3C($sp)
/* DE294 80127ED4 E7A20040 */  swc1       $f2, 0x40($sp)
/* DE298 80127ED8 0C039CC3 */  jal        func_race_800E730C
/* DE29C 80127EDC E7A00048 */   swc1      $f0, 0x48($sp)
/* DE2A0 80127EE0 8E2501A4 */  lw         $a1, 0x1A4($s1)
/* DE2A4 80127EE4 0C039B98 */  jal        func_race_800E6E60
/* DE2A8 80127EE8 02002021 */   addu      $a0, $s0, $zero
/* DE2AC 80127EEC 08049FBF */  j          .Lrace_80127EFC
/* DE2B0 80127EF0 00000000 */   nop
.Lrace_80127EF4:
/* DE2B4 80127EF4 AE220004 */  sw         $v0, 0x4($s1)
/* DE2B8 80127EF8 AE200008 */  sw         $zero, 0x8($s1)
.Lrace_80127EFC:
/* DE2BC 80127EFC 8FBF0074 */  lw         $ra, 0x74($sp)
/* DE2C0 80127F00 8FB20070 */  lw         $s2, 0x70($sp)
/* DE2C4 80127F04 8FB1006C */  lw         $s1, 0x6C($sp)
/* DE2C8 80127F08 8FB00068 */  lw         $s0, 0x68($sp)
/* DE2CC 80127F0C 03E00008 */  jr         $ra
/* DE2D0 80127F10 27BD0078 */   addiu     $sp, $sp, 0x78

glabel func_race_80127F14
/* DE2D4 80127F14 27BDFFB8 */  addiu      $sp, $sp, -0x48
/* DE2D8 80127F18 AFB10034 */  sw         $s1, 0x34($sp)
/* DE2DC 80127F1C 00808821 */  addu       $s1, $a0, $zero
/* DE2E0 80127F20 AFB00030 */  sw         $s0, 0x30($sp)
/* DE2E4 80127F24 AFBF0038 */  sw         $ra, 0x38($sp)
/* DE2E8 80127F28 F7B40040 */  sdc1       $f20, 0x40($sp)
/* DE2EC 80127F2C 8E230004 */  lw         $v1, 0x4($s1)
/* DE2F0 80127F30 24020005 */  addiu      $v0, $zero, 0x5
/* DE2F4 80127F34 10620029 */  beq        $v1, $v0, .Lrace_80127FDC
/* DE2F8 80127F38 00A08021 */   addu      $s0, $a1, $zero
/* DE2FC 80127F3C 8E020D04 */  lw         $v0, 0xD04($s0)
/* DE300 80127F40 30420008 */  andi       $v0, $v0, 0x8
/* DE304 80127F44 14400025 */  bnez       $v0, .Lrace_80127FDC
/* DE308 80127F48 260303FC */   addiu     $v1, $s0, 0x3FC
/* DE30C 80127F4C 3C01800D */  lui        $at, %hi(D_race_800CEC24)
/* DE310 80127F50 C434EC24 */  lwc1       $f20, %lo(D_race_800CEC24)($at)
/* DE314 80127F54 3C063BE5 */  lui        $a2, (0x3BE56042 >> 16)
/* DE318 80127F58 34C66042 */  ori        $a2, $a2, (0x3BE56042 & 0xFFFF)
/* DE31C 80127F5C 8C6200CC */  lw         $v0, 0xCC($v1)
/* DE320 80127F60 4405A000 */  mfc1       $a1, $f20
/* DE324 80127F64 4407A000 */  mfc1       $a3, $f20
/* DE328 80127F68 84440050 */  lh         $a0, 0x50($v0)
/* DE32C 80127F6C 8C420054 */  lw         $v0, 0x54($v0)
/* DE330 80127F70 0040F809 */  jalr       $v0
/* DE334 80127F74 00642021 */   addu      $a0, $v1, $a0
/* DE338 80127F78 26030018 */  addiu      $v1, $s0, 0x18
/* DE33C 80127F7C 8C62039C */  lw         $v0, 0x39C($v1)
/* DE340 80127F80 34420002 */  ori        $v0, $v0, 0x2
/* DE344 80127F84 AC62039C */  sw         $v0, 0x39C($v1)
/* DE348 80127F88 24020006 */  addiu      $v0, $zero, 0x6
/* DE34C 80127F8C AE220004 */  sw         $v0, 0x4($s1)
/* DE350 80127F90 AE200008 */  sw         $zero, 0x8($s1)
/* DE354 80127F94 8C630044 */  lw         $v1, 0x44($v1)
/* DE358 80127F98 27B00020 */  addiu      $s0, $sp, 0x20
/* DE35C 80127F9C 8C620024 */  lw         $v0, 0x24($v1)
/* DE360 80127FA0 02002821 */  addu       $a1, $s0, $zero
/* DE364 80127FA4 84440010 */  lh         $a0, 0x10($v0)
/* DE368 80127FA8 8C420014 */  lw         $v0, 0x14($v0)
/* DE36C 80127FAC 0040F809 */  jalr       $v0
/* DE370 80127FB0 00642021 */   addu      $a0, $v1, $a0
/* DE374 80127FB4 3C074348 */  lui        $a3, (0x43480000 >> 16)
/* DE378 80127FB8 3C01800D */  lui        $at, %hi(D_race_800CEC28)
/* DE37C 80127FBC C420EC28 */  lwc1       $f0, %lo(D_race_800CEC28)($at)
/* DE380 80127FC0 2405002F */  addiu      $a1, $zero, 0x2F
/* DE384 80127FC4 E7B40014 */  swc1       $f20, 0x14($sp)
/* DE388 80127FC8 E7B40018 */  swc1       $f20, 0x18($sp)
/* DE38C 80127FCC E7A00010 */  swc1       $f0, 0x10($sp)
/* DE390 80127FD0 8E240010 */  lw         $a0, 0x10($s1)
/* DE394 80127FD4 0C046530 */  jal        func_race_801194C0
/* DE398 80127FD8 02003021 */   addu      $a2, $s0, $zero
.Lrace_80127FDC:
/* DE39C 80127FDC 8FBF0038 */  lw         $ra, 0x38($sp)
/* DE3A0 80127FE0 8FB10034 */  lw         $s1, 0x34($sp)
/* DE3A4 80127FE4 8FB00030 */  lw         $s0, 0x30($sp)
/* DE3A8 80127FE8 D7B40040 */  ldc1       $f20, 0x40($sp)
/* DE3AC 80127FEC 03E00008 */  jr         $ra
/* DE3B0 80127FF0 27BD0048 */   addiu     $sp, $sp, 0x48
