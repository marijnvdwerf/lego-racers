.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text, "ax"

glabel func_race_800F67D0
/* ACB90 800F67D0 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* ACB94 800F67D4 AFB00010 */  sw         $s0, 0x10($sp)
/* ACB98 800F67D8 AFBF0014 */  sw         $ra, 0x14($sp)
/* ACB9C 800F67DC 0C040B20 */  jal        func_race_80102C80
/* ACBA0 800F67E0 00808021 */   addu      $s0, $a0, $zero
/* ACBA4 800F67E4 02001021 */  addu       $v0, $s0, $zero
/* ACBA8 800F67E8 3C03800D */  lui        $v1, %hi(D_race_800CCE78)
/* ACBAC 800F67EC 3C01800D */  lui        $at, %hi(D_race_800CCE30)
/* ACBB0 800F67F0 C420CE30 */  lwc1       $f0, %lo(D_race_800CCE30)($at)
/* ACBB4 800F67F4 2463CE78 */  addiu      $v1, $v1, %lo(D_race_800CCE78)
/* ACBB8 800F67F8 AC430000 */  sw         $v1, 0x0($v0)
/* ACBBC 800F67FC AC4000C4 */  sw         $zero, 0xC4($v0)
/* ACBC0 800F6800 AC4000C8 */  sw         $zero, 0xC8($v0)
/* ACBC4 800F6804 AC4000CC */  sw         $zero, 0xCC($v0)
/* ACBC8 800F6808 AC4000D4 */  sw         $zero, 0xD4($v0)
/* ACBCC 800F680C AC4000D8 */  sw         $zero, 0xD8($v0)
/* ACBD0 800F6810 AC4000A8 */  sw         $zero, 0xA8($v0)
/* ACBD4 800F6814 AC4000AC */  sw         $zero, 0xAC($v0)
/* ACBD8 800F6818 AC4000B0 */  sw         $zero, 0xB0($v0)
/* ACBDC 800F681C AC4000B4 */  sw         $zero, 0xB4($v0)
/* ACBE0 800F6820 AC4000B8 */  sw         $zero, 0xB8($v0)
/* ACBE4 800F6824 AC4000BC */  sw         $zero, 0xBC($v0)
/* ACBE8 800F6828 AC4000C0 */  sw         $zero, 0xC0($v0)
/* ACBEC 800F682C AC4000E8 */  sw         $zero, 0xE8($v0)
/* ACBF0 800F6830 AC4000EC */  sw         $zero, 0xEC($v0)
/* ACBF4 800F6834 AC4000F0 */  sw         $zero, 0xF0($v0)
/* ACBF8 800F6838 E44000D0 */  swc1       $f0, 0xD0($v0)
/* ACBFC 800F683C 8FBF0014 */  lw         $ra, 0x14($sp)
/* ACC00 800F6840 8FB00010 */  lw         $s0, 0x10($sp)
/* ACC04 800F6844 03E00008 */  jr         $ra
/* ACC08 800F6848 27BD0018 */   addiu     $sp, $sp, 0x18

glabel func_race_800F684C
/* ACC0C 800F684C 27BDFF28 */  addiu      $sp, $sp, -0xD8
/* ACC10 800F6850 AFB000A8 */  sw         $s0, 0xA8($sp)
/* ACC14 800F6854 00808021 */  addu       $s0, $a0, $zero
/* ACC18 800F6858 00002021 */  addu       $a0, $zero, $zero
/* ACC1C 800F685C AFB100AC */  sw         $s1, 0xAC($sp)
/* ACC20 800F6860 AFBF00B8 */  sw         $ra, 0xB8($sp)
/* ACC24 800F6864 AFB300B4 */  sw         $s3, 0xB4($sp)
/* ACC28 800F6868 AFB200B0 */  sw         $s2, 0xB0($sp)
/* ACC2C 800F686C F7B800D0 */  sdc1       $f24, 0xD0($sp)
/* ACC30 800F6870 F7B600C8 */  sdc1       $f22, 0xC8($sp)
/* ACC34 800F6874 F7B400C0 */  sdc1       $f20, 0xC0($sp)
/* ACC38 800F6878 8E0200F0 */  lw         $v0, 0xF0($s0)
/* ACC3C 800F687C 4487C000 */  mtc1       $a3, $f24
/* ACC40 800F6880 8E0300A0 */  lw         $v1, 0xA0($s0)
/* ACC44 800F6884 00451021 */  addu       $v0, $v0, $a1
/* ACC48 800F6888 AE0200F0 */  sw         $v0, 0xF0($s0)
/* ACC4C 800F688C C7B600E8 */  lwc1       $f22, 0xE8($sp)
/* ACC50 800F6890 C7B400EC */  lwc1       $f20, 0xEC($sp)
/* ACC54 800F6894 1060000F */  beqz       $v1, .Lrace_800F68D4
/* ACC58 800F6898 00C08821 */   addu      $s1, $a2, $zero
/* ACC5C 800F689C 2C4203E9 */  sltiu      $v0, $v0, 0x3E9
/* ACC60 800F68A0 5040000D */  beql       $v0, $zero, .Lrace_800F68D8
/* ACC64 800F68A4 24040001 */   addiu     $a0, $zero, 0x1
/* ACC68 800F68A8 8C620AA8 */  lw         $v0, 0xAA8($v1)
/* ACC6C 800F68AC 30420080 */  andi       $v0, $v0, 0x80
/* ACC70 800F68B0 54400009 */  bnel       $v0, $zero, .Lrace_800F68D8
/* ACC74 800F68B4 24040001 */   addiu     $a0, $zero, 0x1
/* ACC78 800F68B8 8C630D04 */  lw         $v1, 0xD04($v1)
/* ACC7C 800F68BC 30620010 */  andi       $v0, $v1, 0x10
/* ACC80 800F68C0 54400005 */  bnel       $v0, $zero, .Lrace_800F68D8
/* ACC84 800F68C4 24040001 */   addiu     $a0, $zero, 0x1
/* ACC88 800F68C8 30620001 */  andi       $v0, $v1, 0x1
/* ACC8C 800F68CC 10400002 */  beqz       $v0, .Lrace_800F68D8
/* ACC90 800F68D0 00000000 */   nop
.Lrace_800F68D4:
/* ACC94 800F68D4 24040001 */  addiu      $a0, $zero, 0x1
.Lrace_800F68D8:
/* ACC98 800F68D8 10800026 */  beqz       $a0, .Lrace_800F6974
/* ACC9C 800F68DC 02202021 */   addu      $a0, $s1, $zero
/* ACCA0 800F68E0 260500A8 */  addiu      $a1, $s0, 0xA8
/* ACCA4 800F68E4 4407C000 */  mfc1       $a3, $f24
/* ACCA8 800F68E8 260600D0 */  addiu      $a2, $s0, 0xD0
/* ACCAC 800F68EC AE0000F0 */  sw         $zero, 0xF0($s0)
/* ACCB0 800F68F0 E7B60010 */  swc1       $f22, 0x10($sp)
/* ACCB4 800F68F4 0C044421 */  jal        func_race_80111084
/* ACCB8 800F68F8 E7B40014 */   swc1      $f20, 0x14($sp)
/* ACCBC 800F68FC AE0200A0 */  sw         $v0, 0xA0($s0)
.Lrace_800F6900:
/* ACCC0 800F6900 8E0300A0 */  lw         $v1, 0xA0($s0)
/* ACCC4 800F6904 1060001B */  beqz       $v1, .Lrace_800F6974
/* ACCC8 800F6908 00000000 */   nop
/* ACCCC 800F690C 8E02009C */  lw         $v0, 0x9C($s0)
/* ACCD0 800F6910 1062000C */  beq        $v1, $v0, .Lrace_800F6944
/* ACCD4 800F6914 00002021 */   addu      $a0, $zero, $zero
/* ACCD8 800F6918 8C620AA8 */  lw         $v0, 0xAA8($v1)
/* ACCDC 800F691C 30420080 */  andi       $v0, $v0, 0x80
/* ACCE0 800F6920 54400009 */  bnel       $v0, $zero, .Lrace_800F6948
/* ACCE4 800F6924 24040001 */   addiu     $a0, $zero, 0x1
/* ACCE8 800F6928 8C630D04 */  lw         $v1, 0xD04($v1)
/* ACCEC 800F692C 30620010 */  andi       $v0, $v1, 0x10
/* ACCF0 800F6930 54400005 */  bnel       $v0, $zero, .Lrace_800F6948
/* ACCF4 800F6934 24040001 */   addiu     $a0, $zero, 0x1
/* ACCF8 800F6938 30620001 */  andi       $v0, $v1, 0x1
/* ACCFC 800F693C 10400002 */  beqz       $v0, .Lrace_800F6948
/* ACD00 800F6940 00000000 */   nop
.Lrace_800F6944:
/* ACD04 800F6944 24040001 */  addiu      $a0, $zero, 0x1
.Lrace_800F6948:
/* ACD08 800F6948 1080000A */  beqz       $a0, .Lrace_800F6974
/* ACD0C 800F694C 02202021 */   addu      $a0, $s1, $zero
/* ACD10 800F6950 260600A8 */  addiu      $a2, $s0, 0xA8
/* ACD14 800F6954 E7B80010 */  swc1       $f24, 0x10($sp)
/* ACD18 800F6958 E7B60014 */  swc1       $f22, 0x14($sp)
/* ACD1C 800F695C E7B40018 */  swc1       $f20, 0x18($sp)
/* ACD20 800F6960 8E0500A0 */  lw         $a1, 0xA0($s0)
/* ACD24 800F6964 0C044487 */  jal        func_race_8011121C
/* ACD28 800F6968 260700D0 */   addiu     $a3, $s0, 0xD0
/* ACD2C 800F696C 0803DA40 */  j          .Lrace_800F6900
/* ACD30 800F6970 AE0200A0 */   sw        $v0, 0xA0($s0)
.Lrace_800F6974:
/* ACD34 800F6974 8E0200E8 */  lw         $v0, 0xE8($s0)
/* ACD38 800F6978 144000AC */  bnez       $v0, .Lrace_800F6C2C
/* ACD3C 800F697C 00000000 */   nop
/* ACD40 800F6980 8E0200EC */  lw         $v0, 0xEC($s0)
/* ACD44 800F6984 104000A9 */  beqz       $v0, .Lrace_800F6C2C
/* ACD48 800F6988 27A30020 */   addiu     $v1, $sp, 0x20
/* ACD4C 800F698C 8C480010 */  lw         $t0, 0x10($v0)
/* ACD50 800F6990 8C490014 */  lw         $t1, 0x14($v0)
/* ACD54 800F6994 8C4A0018 */  lw         $t2, 0x18($v0)
/* ACD58 800F6998 AFA80020 */  sw         $t0, 0x20($sp)
/* ACD5C 800F699C AFA90024 */  sw         $t1, 0x24($sp)
/* ACD60 800F69A0 AFAA0028 */  sw         $t2, 0x28($sp)
/* ACD64 800F69A4 C7A00020 */  lwc1       $f0, 0x20($sp)
/* ACD68 800F69A8 C60200A8 */  lwc1       $f2, 0xA8($s0)
/* ACD6C 800F69AC 46020001 */  sub.s      $f0, $f0, $f2
/* ACD70 800F69B0 260200A8 */  addiu      $v0, $s0, 0xA8
/* ACD74 800F69B4 E7A00050 */  swc1       $f0, 0x50($sp)
/* ACD78 800F69B8 C4600004 */  lwc1       $f0, 0x4($v1)
/* ACD7C 800F69BC C4420004 */  lwc1       $f2, 0x4($v0)
/* ACD80 800F69C0 46020001 */  sub.s      $f0, $f0, $f2
/* ACD84 800F69C4 261100D0 */  addiu      $s1, $s0, 0xD0
/* ACD88 800F69C8 E7A00054 */  swc1       $f0, 0x54($sp)
/* ACD8C 800F69CC C4600008 */  lwc1       $f0, 0x8($v1)
/* ACD90 800F69D0 C4420008 */  lwc1       $f2, 0x8($v0)
/* ACD94 800F69D4 00409821 */  addu       $s3, $v0, $zero
/* ACD98 800F69D8 46020001 */  sub.s      $f0, $f0, $f2
/* ACD9C 800F69DC 4480A000 */  mtc1       $zero, $f20
/* ACDA0 800F69E0 00609021 */  addu       $s2, $v1, $zero
/* ACDA4 800F69E4 E7A00058 */  swc1       $f0, 0x58($sp)
.Lrace_800F69E8:
/* ACDA8 800F69E8 C7A40050 */  lwc1       $f4, 0x50($sp)
/* ACDAC 800F69EC C60000D0 */  lwc1       $f0, 0xD0($s0)
/* ACDB0 800F69F0 46002102 */  mul.s      $f4, $f4, $f0
/* ACDB4 800F69F4 C7A60054 */  lwc1       $f6, 0x54($sp)
/* ACDB8 800F69F8 C6200004 */  lwc1       $f0, 0x4($s1)
/* ACDBC 800F69FC 46003182 */  mul.s      $f6, $f6, $f0
/* ACDC0 800F6A00 C7A20058 */  lwc1       $f2, 0x58($sp)
/* ACDC4 800F6A04 C6200008 */  lwc1       $f0, 0x8($s1)
/* ACDC8 800F6A08 46001082 */  mul.s      $f2, $f2, $f0
/* ACDCC 800F6A0C 46062100 */  add.s      $f4, $f4, $f6
/* ACDD0 800F6A10 46022100 */  add.s      $f4, $f4, $f2
/* ACDD4 800F6A14 4614203E */  c.le.s     $f4, $f20
/* ACDD8 800F6A18 00000000 */  nop
/* ACDDC 800F6A1C 45010015 */  bc1t       .Lrace_800F6A74
/* ACDE0 800F6A20 00001821 */   addu      $v1, $zero, $zero
/* ACDE4 800F6A24 8E0200EC */  lw         $v0, 0xEC($s0)
/* ACDE8 800F6A28 C60000A8 */  lwc1       $f0, 0xA8($s0)
/* ACDEC 800F6A2C C4440000 */  lwc1       $f4, 0x0($v0)
/* ACDF0 800F6A30 46002102 */  mul.s      $f4, $f4, $f0
/* ACDF4 800F6A34 C4460004 */  lwc1       $f6, 0x4($v0)
/* ACDF8 800F6A38 C6600004 */  lwc1       $f0, 0x4($s3)
/* ACDFC 800F6A3C 46003182 */  mul.s      $f6, $f6, $f0
/* ACE00 800F6A40 C4420008 */  lwc1       $f2, 0x8($v0)
/* ACE04 800F6A44 C6600008 */  lwc1       $f0, 0x8($s3)
/* ACE08 800F6A48 46001082 */  mul.s      $f2, $f2, $f0
/* ACE0C 800F6A4C 46062100 */  add.s      $f4, $f4, $f6
/* ACE10 800F6A50 46022100 */  add.s      $f4, $f4, $f2
/* ACE14 800F6A54 C440000C */  lwc1       $f0, 0xC($v0)
/* ACE18 800F6A58 46002100 */  add.s      $f4, $f4, $f0
/* ACE1C 800F6A5C 3C01800D */  lui        $at, %hi(D_race_800CCE34)
/* ACE20 800F6A60 C420CE34 */  lwc1       $f0, %lo(D_race_800CCE34)($at)
/* ACE24 800F6A64 4600203C */  c.lt.s     $f4, $f0
/* ACE28 800F6A68 00000000 */  nop
/* ACE2C 800F6A6C 45000002 */  bc1f       .Lrace_800F6A78
/* ACE30 800F6A70 00000000 */   nop
.Lrace_800F6A74:
/* ACE34 800F6A74 24030001 */  addiu      $v1, $zero, 0x1
.Lrace_800F6A78:
/* ACE38 800F6A78 1060003F */  beqz       $v1, .Lrace_800F6B78
/* ACE3C 800F6A7C 00000000 */   nop
/* ACE40 800F6A80 8E02009C */  lw         $v0, 0x9C($s0)
/* ACE44 800F6A84 8E0300EC */  lw         $v1, 0xEC($s0)
/* ACE48 800F6A88 8C440010 */  lw         $a0, 0x10($v0)
/* ACE4C 800F6A8C 90650020 */  lbu        $a1, 0x20($v1)
/* ACE50 800F6A90 0C03C8CA */  jal        func_race_800F2328
/* ACE54 800F6A94 00000000 */   nop
/* ACE58 800F6A98 10400064 */  beqz       $v0, .Lrace_800F6C2C
/* ACE5C 800F6A9C AE0200EC */   sw        $v0, 0xEC($s0)
/* ACE60 800F6AA0 8C480010 */  lw         $t0, 0x10($v0)
/* ACE64 800F6AA4 8C490014 */  lw         $t1, 0x14($v0)
/* ACE68 800F6AA8 8C4A0018 */  lw         $t2, 0x18($v0)
/* ACE6C 800F6AAC AFA80020 */  sw         $t0, 0x20($sp)
/* ACE70 800F6AB0 AFA90024 */  sw         $t1, 0x24($sp)
/* ACE74 800F6AB4 AFAA0028 */  sw         $t2, 0x28($sp)
/* ACE78 800F6AB8 C7A20020 */  lwc1       $f2, 0x20($sp)
/* ACE7C 800F6ABC C60000A8 */  lwc1       $f0, 0xA8($s0)
/* ACE80 800F6AC0 46001181 */  sub.s      $f6, $f2, $f0
/* ACE84 800F6AC4 46063102 */  mul.s      $f4, $f6, $f6
/* ACE88 800F6AC8 260200A8 */  addiu      $v0, $s0, 0xA8
/* ACE8C 800F6ACC C64A0004 */  lwc1       $f10, 0x4($s2)
/* ACE90 800F6AD0 C4420004 */  lwc1       $f2, 0x4($v0)
/* ACE94 800F6AD4 46025081 */  sub.s      $f2, $f10, $f2
/* ACE98 800F6AD8 46021082 */  mul.s      $f2, $f2, $f2
/* ACE9C 800F6ADC C6480008 */  lwc1       $f8, 0x8($s2)
/* ACEA0 800F6AE0 C4400008 */  lwc1       $f0, 0x8($v0)
/* ACEA4 800F6AE4 46004001 */  sub.s      $f0, $f8, $f0
/* ACEA8 800F6AE8 46000002 */  mul.s      $f0, $f0, $f0
/* ACEAC 800F6AEC 46022100 */  add.s      $f4, $f4, $f2
/* ACEB0 800F6AF0 46002100 */  add.s      $f4, $f4, $f0
/* ACEB4 800F6AF4 3C01800D */  lui        $at, %hi(D_race_800CCE38)
/* ACEB8 800F6AF8 C420CE38 */  lwc1       $f0, %lo(D_race_800CCE38)($at)
/* ACEBC 800F6AFC 4604003C */  c.lt.s     $f0, $f4
/* ACEC0 800F6B00 00000000 */  nop
/* ACEC4 800F6B04 4503001C */  bc1tl      .Lrace_800F6B78
/* ACEC8 800F6B08 AE0000EC */   sw        $zero, 0xEC($s0)
/* ACECC 800F6B0C E7A60050 */  swc1       $f6, 0x50($sp)
/* ACED0 800F6B10 C4400004 */  lwc1       $f0, 0x4($v0)
/* ACED4 800F6B14 46005001 */  sub.s      $f0, $f10, $f0
/* ACED8 800F6B18 E7A00054 */  swc1       $f0, 0x54($sp)
/* ACEDC 800F6B1C C4400008 */  lwc1       $f0, 0x8($v0)
/* ACEE0 800F6B20 46004001 */  sub.s      $f0, $f8, $f0
/* ACEE4 800F6B24 E7A00058 */  swc1       $f0, 0x58($sp)
/* ACEE8 800F6B28 8E0200EC */  lw         $v0, 0xEC($s0)
/* ACEEC 800F6B2C C4420000 */  lwc1       $f2, 0x0($v0)
/* ACEF0 800F6B30 E7A20060 */  swc1       $f2, 0x60($sp)
/* ACEF4 800F6B34 C4460004 */  lwc1       $f6, 0x4($v0)
/* ACEF8 800F6B38 E7A60064 */  swc1       $f6, 0x64($sp)
/* ACEFC 800F6B3C C4440008 */  lwc1       $f4, 0x8($v0)
/* ACF00 800F6B40 E7A40068 */  swc1       $f4, 0x68($sp)
/* ACF04 800F6B44 C60000D0 */  lwc1       $f0, 0xD0($s0)
/* ACF08 800F6B48 46001082 */  mul.s      $f2, $f2, $f0
/* ACF0C 800F6B4C C6200004 */  lwc1       $f0, 0x4($s1)
/* ACF10 800F6B50 46003182 */  mul.s      $f6, $f6, $f0
/* ACF14 800F6B54 C6200008 */  lwc1       $f0, 0x8($s1)
/* ACF18 800F6B58 46002102 */  mul.s      $f4, $f4, $f0
/* ACF1C 800F6B5C 46061080 */  add.s      $f2, $f2, $f6
/* ACF20 800F6B60 46041080 */  add.s      $f2, $f2, $f4
/* ACF24 800F6B64 4602A03C */  c.lt.s     $f20, $f2
/* ACF28 800F6B68 00000000 */  nop
/* ACF2C 800F6B6C 4500FF9E */  bc1f       .Lrace_800F69E8
/* ACF30 800F6B70 00000000 */   nop
/* ACF34 800F6B74 AE0000EC */  sw         $zero, 0xEC($s0)
.Lrace_800F6B78:
/* ACF38 800F6B78 8E0200EC */  lw         $v0, 0xEC($s0)
/* ACF3C 800F6B7C 1040002B */  beqz       $v0, .Lrace_800F6C2C
/* ACF40 800F6B80 27A50030 */   addiu     $a1, $sp, 0x30
/* ACF44 800F6B84 8FA80020 */  lw         $t0, 0x20($sp)
/* ACF48 800F6B88 8FA90024 */  lw         $t1, 0x24($sp)
/* ACF4C 800F6B8C 8FAA0028 */  lw         $t2, 0x28($sp)
/* ACF50 800F6B90 AFA80030 */  sw         $t0, 0x30($sp)
/* ACF54 800F6B94 AFA90034 */  sw         $t1, 0x34($sp)
/* ACF58 800F6B98 AFAA0038 */  sw         $t2, 0x38($sp)
/* ACF5C 800F6B9C 8FA80020 */  lw         $t0, 0x20($sp)
/* ACF60 800F6BA0 8FA90024 */  lw         $t1, 0x24($sp)
/* ACF64 800F6BA4 8FAA0028 */  lw         $t2, 0x28($sp)
/* ACF68 800F6BA8 AFA80040 */  sw         $t0, 0x40($sp)
/* ACF6C 800F6BAC AFA90044 */  sw         $t1, 0x44($sp)
/* ACF70 800F6BB0 AFAA0048 */  sw         $t2, 0x48($sp)
/* ACF74 800F6BB4 C7A20038 */  lwc1       $f2, 0x38($sp)
/* ACF78 800F6BB8 3C01800D */  lui        $at, %hi(D_race_800CCE3C)
/* ACF7C 800F6BBC C420CE3C */  lwc1       $f0, %lo(D_race_800CCE3C)($at)
/* ACF80 800F6BC0 3C01800D */  lui        $at, %hi(D_race_800CCE40)
/* ACF84 800F6BC4 C424CE40 */  lwc1       $f4, %lo(D_race_800CCE40)($at)
/* ACF88 800F6BC8 46001080 */  add.s      $f2, $f2, $f0
/* ACF8C 800F6BCC C7A00048 */  lwc1       $f0, 0x48($sp)
/* ACF90 800F6BD0 27A60040 */  addiu      $a2, $sp, 0x40
/* ACF94 800F6BD4 46040001 */  sub.s      $f0, $f0, $f4
/* ACF98 800F6BD8 27A20020 */  addiu      $v0, $sp, 0x20
/* ACF9C 800F6BDC E7A20038 */  swc1       $f2, 0x38($sp)
/* ACFA0 800F6BE0 E7A00048 */  swc1       $f0, 0x48($sp)
/* ACFA4 800F6BE4 AFA20010 */  sw         $v0, 0x10($sp)
/* ACFA8 800F6BE8 8E04000C */  lw         $a0, 0xC($s0)
/* ACFAC 800F6BEC 0C03CAED */  jal        func_race_800F2BB4
/* ACFB0 800F6BF0 27A70070 */   addiu     $a3, $sp, 0x70
/* ACFB4 800F6BF4 1040000D */  beqz       $v0, .Lrace_800F6C2C
/* ACFB8 800F6BF8 24020001 */   addiu     $v0, $zero, 0x1
/* ACFBC 800F6BFC C7A00028 */  lwc1       $f0, 0x28($sp)
/* ACFC0 800F6C00 3C01800D */  lui        $at, %hi(D_race_800CCE44)
/* ACFC4 800F6C04 C422CE44 */  lwc1       $f2, %lo(D_race_800CCE44)($at)
/* ACFC8 800F6C08 46020000 */  add.s      $f0, $f0, $f2
/* ACFCC 800F6C0C E7A00028 */  swc1       $f0, 0x28($sp)
/* ACFD0 800F6C10 8FA80020 */  lw         $t0, 0x20($sp)
/* ACFD4 800F6C14 8FA90024 */  lw         $t1, 0x24($sp)
/* ACFD8 800F6C18 8FAA0028 */  lw         $t2, 0x28($sp)
/* ACFDC 800F6C1C AE0800DC */  sw         $t0, 0xDC($s0)
/* ACFE0 800F6C20 AE0900E0 */  sw         $t1, 0xE0($s0)
/* ACFE4 800F6C24 AE0A00E4 */  sw         $t2, 0xE4($s0)
/* ACFE8 800F6C28 AE0200E8 */  sw         $v0, 0xE8($s0)
.Lrace_800F6C2C:
/* ACFEC 800F6C2C 8FBF00B8 */  lw         $ra, 0xB8($sp)
/* ACFF0 800F6C30 8FB300B4 */  lw         $s3, 0xB4($sp)
/* ACFF4 800F6C34 8FB200B0 */  lw         $s2, 0xB0($sp)
/* ACFF8 800F6C38 8FB100AC */  lw         $s1, 0xAC($sp)
/* ACFFC 800F6C3C 8FB000A8 */  lw         $s0, 0xA8($sp)
/* AD000 800F6C40 D7B800D0 */  ldc1       $f24, 0xD0($sp)
/* AD004 800F6C44 D7B600C8 */  ldc1       $f22, 0xC8($sp)
/* AD008 800F6C48 D7B400C0 */  ldc1       $f20, 0xC0($sp)
/* AD00C 800F6C4C 03E00008 */  jr         $ra
/* AD010 800F6C50 27BD00D8 */   addiu     $sp, $sp, 0xD8

glabel func_race_800F6C54
/* AD014 800F6C54 27BDFFD0 */  addiu      $sp, $sp, -0x30
/* AD018 800F6C58 AFB00020 */  sw         $s0, 0x20($sp)
/* AD01C 800F6C5C 00808021 */  addu       $s0, $a0, $zero
/* AD020 800F6C60 AFBF0028 */  sw         $ra, 0x28($sp)
/* AD024 800F6C64 AFB10024 */  sw         $s1, 0x24($sp)
/* AD028 800F6C68 8E030008 */  lw         $v1, 0x8($s0)
/* AD02C 800F6C6C 8C620024 */  lw         $v0, 0x24($v1)
/* AD030 800F6C70 260500A8 */  addiu      $a1, $s0, 0xA8
/* AD034 800F6C74 84440010 */  lh         $a0, 0x10($v0)
/* AD038 800F6C78 8C420014 */  lw         $v0, 0x14($v0)
/* AD03C 800F6C7C 0040F809 */  jalr       $v0
/* AD040 800F6C80 00642021 */   addu      $a0, $v1, $a0
/* AD044 800F6C84 261100D0 */  addiu      $s1, $s0, 0xD0
/* AD048 800F6C88 8E030008 */  lw         $v1, 0x8($s0)
/* AD04C 800F6C8C 02202821 */  addu       $a1, $s1, $zero
/* AD050 800F6C90 AE0000B4 */  sw         $zero, 0xB4($s0)
/* AD054 800F6C94 AE0000E8 */  sw         $zero, 0xE8($s0)
/* AD058 800F6C98 AE0000F0 */  sw         $zero, 0xF0($s0)
/* AD05C 800F6C9C 8C620024 */  lw         $v0, 0x24($v1)
/* AD060 800F6CA0 27A60010 */  addiu      $a2, $sp, 0x10
/* AD064 800F6CA4 84440088 */  lh         $a0, 0x88($v0)
/* AD068 800F6CA8 8C42008C */  lw         $v0, 0x8C($v0)
/* AD06C 800F6CAC 0040F809 */  jalr       $v0
/* AD070 800F6CB0 00642021 */   addu      $a0, $v1, $a0
/* AD074 800F6CB4 8E02009C */  lw         $v0, 0x9C($s0)
/* AD078 800F6CB8 10400018 */  beqz       $v0, .Lrace_800F6D1C
/* AD07C 800F6CBC AE0000F0 */   sw        $zero, 0xF0($s0)
/* AD080 800F6CC0 8C430CC4 */  lw         $v1, 0xCC4($v0)
/* AD084 800F6CC4 10600016 */  beqz       $v1, .Lrace_800F6D20
/* AD088 800F6CC8 AE0300EC */   sw        $v1, 0xEC($s0)
/* AD08C 800F6CCC C4620000 */  lwc1       $f2, 0x0($v1)
/* AD090 800F6CD0 E7A20010 */  swc1       $f2, 0x10($sp)
/* AD094 800F6CD4 C4660004 */  lwc1       $f6, 0x4($v1)
/* AD098 800F6CD8 27A20010 */  addiu      $v0, $sp, 0x10
/* AD09C 800F6CDC E4460004 */  swc1       $f6, 0x4($v0)
/* AD0A0 800F6CE0 C4640008 */  lwc1       $f4, 0x8($v1)
/* AD0A4 800F6CE4 E4440008 */  swc1       $f4, 0x8($v0)
/* AD0A8 800F6CE8 C60000D0 */  lwc1       $f0, 0xD0($s0)
/* AD0AC 800F6CEC 46001082 */  mul.s      $f2, $f2, $f0
/* AD0B0 800F6CF0 C6200004 */  lwc1       $f0, 0x4($s1)
/* AD0B4 800F6CF4 46003182 */  mul.s      $f6, $f6, $f0
/* AD0B8 800F6CF8 C6200008 */  lwc1       $f0, 0x8($s1)
/* AD0BC 800F6CFC 46002102 */  mul.s      $f4, $f4, $f0
/* AD0C0 800F6D00 46061080 */  add.s      $f2, $f2, $f6
/* AD0C4 800F6D04 46041080 */  add.s      $f2, $f2, $f4
/* AD0C8 800F6D08 44800000 */  mtc1       $zero, $f0
/* AD0CC 800F6D0C 4602003C */  c.lt.s     $f0, $f2
/* AD0D0 800F6D10 00000000 */  nop
/* AD0D4 800F6D14 45000002 */  bc1f       .Lrace_800F6D20
/* AD0D8 800F6D18 00000000 */   nop
.Lrace_800F6D1C:
/* AD0DC 800F6D1C AE0000EC */  sw         $zero, 0xEC($s0)
.Lrace_800F6D20:
/* AD0E0 800F6D20 8FBF0028 */  lw         $ra, 0x28($sp)
/* AD0E4 800F6D24 8FB10024 */  lw         $s1, 0x24($sp)
/* AD0E8 800F6D28 8FB00020 */  lw         $s0, 0x20($sp)
/* AD0EC 800F6D2C 03E00008 */  jr         $ra
/* AD0F0 800F6D30 27BD0030 */   addiu     $sp, $sp, 0x30

glabel func_race_800F6D34
/* AD0F4 800F6D34 27BDFF40 */  addiu      $sp, $sp, -0xC0
/* AD0F8 800F6D38 AFB100A4 */  sw         $s1, 0xA4($sp)
/* AD0FC 800F6D3C 00808821 */  addu       $s1, $a0, $zero
/* AD100 800F6D40 AFBF00AC */  sw         $ra, 0xAC($sp)
/* AD104 800F6D44 AFB200A8 */  sw         $s2, 0xA8($sp)
/* AD108 800F6D48 AFB000A0 */  sw         $s0, 0xA0($sp)
/* AD10C 800F6D4C F7B600B8 */  sdc1       $f22, 0xB8($sp)
/* AD110 800F6D50 F7B400B0 */  sdc1       $f20, 0xB0($sp)
/* AD114 800F6D54 8E230004 */  lw         $v1, 0x4($s1)
/* AD118 800F6D58 24020001 */  addiu      $v0, $zero, 0x1
/* AD11C 800F6D5C 14620157 */  bne        $v1, $v0, .Lrace_800F72BC
/* AD120 800F6D60 00601021 */   addu      $v0, $v1, $zero
/* AD124 800F6D64 8E220050 */  lw         $v0, 0x50($s1)
/* AD128 800F6D68 8E230058 */  lw         $v1, 0x58($s1)
/* AD12C 800F6D6C 00451021 */  addu       $v0, $v0, $a1
/* AD130 800F6D70 AE220050 */  sw         $v0, 0x50($s1)
/* AD134 800F6D74 0043102B */  sltu       $v0, $v0, $v1
/* AD138 800F6D78 1440000B */  bnez       $v0, .Lrace_800F6DA8
/* AD13C 800F6D7C 24020004 */   addiu     $v0, $zero, 0x4
/* AD140 800F6D80 8E230008 */  lw         $v1, 0x8($s1)
/* AD144 800F6D84 AE220004 */  sw         $v0, 0x4($s1)
/* AD148 800F6D88 8C620024 */  lw         $v0, 0x24($v1)
/* AD14C 800F6D8C 26250028 */  addiu      $a1, $s1, 0x28
/* AD150 800F6D90 84440010 */  lh         $a0, 0x10($v0)
/* AD154 800F6D94 8C420014 */  lw         $v0, 0x14($v0)
/* AD158 800F6D98 0040F809 */  jalr       $v0
/* AD15C 800F6D9C 00642021 */   addu      $a0, $v1, $a0
/* AD160 800F6DA0 0803DCAF */  j          .Lrace_800F72BC
/* AD164 800F6DA4 24020004 */   addiu     $v0, $zero, 0x4
.Lrace_800F6DA8:
/* AD168 800F6DA8 44851000 */  mtc1       $a1, $f2
/* AD16C 800F6DAC 468010A0 */  cvt.s.w    $f2, $f2
/* AD170 800F6DB0 3C01800D */  lui        $at, %hi(D_race_800CCE48)
/* AD174 800F6DB4 C420CE48 */  lwc1       $f0, %lo(D_race_800CCE48)($at)
/* AD178 800F6DB8 8E2200A0 */  lw         $v0, 0xA0($s1)
/* AD17C 800F6DBC 46001582 */  mul.s      $f22, $f2, $f0
/* AD180 800F6DC0 10400023 */  beqz       $v0, .Lrace_800F6E50
/* AD184 800F6DC4 2630001C */   addiu     $s0, $s1, 0x1C
/* AD188 800F6DC8 8C43005C */  lw         $v1, 0x5C($v0)
/* AD18C 800F6DCC 8C620024 */  lw         $v0, 0x24($v1)
/* AD190 800F6DD0 02002821 */  addu       $a1, $s0, $zero
/* AD194 800F6DD4 84440010 */  lh         $a0, 0x10($v0)
/* AD198 800F6DD8 8C420014 */  lw         $v0, 0x14($v0)
/* AD19C 800F6DDC 0040F809 */  jalr       $v0
/* AD1A0 800F6DE0 00642021 */   addu      $a0, $v1, $a0
/* AD1A4 800F6DE4 C6240024 */  lwc1       $f4, 0x24($s1)
/* AD1A8 800F6DE8 3C01800D */  lui        $at, %hi(D_race_800CCE4C)
/* AD1AC 800F6DEC C420CE4C */  lwc1       $f0, %lo(D_race_800CCE4C)($at)
/* AD1B0 800F6DF0 C62200A8 */  lwc1       $f2, 0xA8($s1)
/* AD1B4 800F6DF4 46002100 */  add.s      $f4, $f4, $f0
/* AD1B8 800F6DF8 C620001C */  lwc1       $f0, 0x1C($s1)
/* AD1BC 800F6DFC 46020001 */  sub.s      $f0, $f0, $f2
/* AD1C0 800F6E00 262300A8 */  addiu      $v1, $s1, 0xA8
/* AD1C4 800F6E04 E6240024 */  swc1       $f4, 0x24($s1)
/* AD1C8 800F6E08 E62000D0 */  swc1       $f0, 0xD0($s1)
/* AD1CC 800F6E0C C6000004 */  lwc1       $f0, 0x4($s0)
/* AD1D0 800F6E10 C4620004 */  lwc1       $f2, 0x4($v1)
/* AD1D4 800F6E14 46020001 */  sub.s      $f0, $f0, $f2
/* AD1D8 800F6E18 262200D0 */  addiu      $v0, $s1, 0xD0
/* AD1DC 800F6E1C E4400004 */  swc1       $f0, 0x4($v0)
/* AD1E0 800F6E20 C6020008 */  lwc1       $f2, 0x8($s0)
/* AD1E4 800F6E24 C4600008 */  lwc1       $f0, 0x8($v1)
/* AD1E8 800F6E28 46001081 */  sub.s      $f2, $f2, $f0
/* AD1EC 800F6E2C C4400004 */  lwc1       $f0, 0x4($v0)
/* AD1F0 800F6E30 46000002 */  mul.s      $f0, $f0, $f0
/* AD1F4 800F6E34 E4420008 */  swc1       $f2, 0x8($v0)
/* AD1F8 800F6E38 46021082 */  mul.s      $f2, $f2, $f2
/* AD1FC 800F6E3C C62400D0 */  lwc1       $f4, 0xD0($s1)
/* AD200 800F6E40 46042102 */  mul.s      $f4, $f4, $f4
/* AD204 800F6E44 46002100 */  add.s      $f4, $f4, $f0
/* AD208 800F6E48 0803DB96 */  j          .Lrace_800F6E58
/* AD20C 800F6E4C 46022500 */   add.s     $f20, $f4, $f2
.Lrace_800F6E50:
/* AD210 800F6E50 3C01800D */  lui        $at, %hi(D_race_800CCE50)
/* AD214 800F6E54 C434CE50 */  lwc1       $f20, %lo(D_race_800CCE50)($at)
.Lrace_800F6E58:
/* AD218 800F6E58 3C01800D */  lui        $at, %hi(D_race_800CCE54)
/* AD21C 800F6E5C C420CE54 */  lwc1       $f0, %lo(D_race_800CCE54)($at)
/* AD220 800F6E60 4600A03C */  c.lt.s     $f20, $f0
/* AD224 800F6E64 00000000 */  nop
/* AD228 800F6E68 45000070 */  bc1f       .Lrace_800F702C
/* AD22C 800F6E6C 263000D0 */   addiu     $s0, $s1, 0xD0
/* AD230 800F6E70 02002021 */  addu       $a0, $s0, $zero
/* AD234 800F6E74 0C000F26 */  jal        func_80003C98
/* AD238 800F6E78 02002821 */   addu      $a1, $s0, $zero
/* AD23C 800F6E7C C6240034 */  lwc1       $f4, 0x34($s1)
/* AD240 800F6E80 46042102 */  mul.s      $f4, $f4, $f4
/* AD244 800F6E84 26220034 */  addiu      $v0, $s1, 0x34
/* AD248 800F6E88 C4420004 */  lwc1       $f2, 0x4($v0)
/* AD24C 800F6E8C 46021082 */  mul.s      $f2, $f2, $f2
/* AD250 800F6E90 C4400008 */  lwc1       $f0, 0x8($v0)
/* AD254 800F6E94 46000002 */  mul.s      $f0, $f0, $f0
/* AD258 800F6E98 46022100 */  add.s      $f4, $f4, $f2
/* AD25C 800F6E9C 46002300 */  add.s      $f12, $f4, $f0
/* AD260 800F6EA0 46006084 */  sqrt.s     $f2, $f12
/* AD264 800F6EA4 46021032 */  c.eq.s     $f2, $f2
/* AD268 800F6EA8 00000000 */  nop
/* AD26C 800F6EAC 45010004 */  bc1t       .Lrace_800F6EC0
/* AD270 800F6EB0 00000000 */   nop
/* AD274 800F6EB4 0C006BC8 */  jal        sqrt
/* AD278 800F6EB8 00000000 */   nop
/* AD27C 800F6EBC 46000086 */  mov.s      $f2, $f0
.Lrace_800F6EC0:
/* AD280 800F6EC0 C62000D0 */  lwc1       $f0, 0xD0($s1)
/* AD284 800F6EC4 46020002 */  mul.s      $f0, $f0, $f2
/* AD288 800F6EC8 E62000C4 */  swc1       $f0, 0xC4($s1)
/* AD28C 800F6ECC C6000004 */  lwc1       $f0, 0x4($s0)
/* AD290 800F6ED0 46020002 */  mul.s      $f0, $f0, $f2
/* AD294 800F6ED4 262200C4 */  addiu      $v0, $s1, 0xC4
/* AD298 800F6ED8 E4400004 */  swc1       $f0, 0x4($v0)
/* AD29C 800F6EDC C6000008 */  lwc1       $f0, 0x8($s0)
/* AD2A0 800F6EE0 46020002 */  mul.s      $f0, $f0, $f2
/* AD2A4 800F6EE4 3C01800D */  lui        $at, %hi(D_race_800CCE58)
/* AD2A8 800F6EE8 C422CE58 */  lwc1       $f2, %lo(D_race_800CCE58)($at)
/* AD2AC 800F6EEC 4602A03C */  c.lt.s     $f20, $f2
/* AD2B0 800F6EF0 00000000 */  nop
/* AD2B4 800F6EF4 4500000B */  bc1f       .Lrace_800F6F24
/* AD2B8 800F6EF8 E4400008 */   swc1      $f0, 0x8($v0)
/* AD2BC 800F6EFC 3C01800D */  lui        $at, %hi(D_race_800CCE5C)
/* AD2C0 800F6F00 C434CE5C */  lwc1       $f20, %lo(D_race_800CCE5C)($at)
/* AD2C4 800F6F04 8E2800A8 */  lw         $t0, 0xA8($s1)
/* AD2C8 800F6F08 8E2900AC */  lw         $t1, 0xAC($s1)
/* AD2CC 800F6F0C 8E2A00B0 */  lw         $t2, 0xB0($s1)
/* AD2D0 800F6F10 AFA80018 */  sw         $t0, 0x18($sp)
/* AD2D4 800F6F14 AFA9001C */  sw         $t1, 0x1C($sp)
/* AD2D8 800F6F18 AFAA0020 */  sw         $t2, 0x20($sp)
/* AD2DC 800F6F1C 0803DBF7 */  j          .Lrace_800F6FDC
/* AD2E0 800F6F20 00000000 */   nop
.Lrace_800F6F24:
/* AD2E4 800F6F24 C62000C4 */  lwc1       $f0, 0xC4($s1)
/* AD2E8 800F6F28 46160002 */  mul.s      $f0, $f0, $f22
/* AD2EC 800F6F2C E7A00090 */  swc1       $f0, 0x90($sp)
/* AD2F0 800F6F30 C4420004 */  lwc1       $f2, 0x4($v0)
/* AD2F4 800F6F34 46161082 */  mul.s      $f2, $f2, $f22
/* AD2F8 800F6F38 E7A20094 */  swc1       $f2, 0x94($sp)
/* AD2FC 800F6F3C C4440008 */  lwc1       $f4, 0x8($v0)
/* AD300 800F6F40 46162102 */  mul.s      $f4, $f4, $f22
/* AD304 800F6F44 E7A40098 */  swc1       $f4, 0x98($sp)
/* AD308 800F6F48 C62600A8 */  lwc1       $f6, 0xA8($s1)
/* AD30C 800F6F4C 46003180 */  add.s      $f6, $f6, $f0
/* AD310 800F6F50 262300A8 */  addiu      $v1, $s1, 0xA8
/* AD314 800F6F54 E7A60018 */  swc1       $f6, 0x18($sp)
/* AD318 800F6F58 C4680004 */  lwc1       $f8, 0x4($v1)
/* AD31C 800F6F5C 46024200 */  add.s      $f8, $f8, $f2
/* AD320 800F6F60 27A20018 */  addiu      $v0, $sp, 0x18
/* AD324 800F6F64 E4480004 */  swc1       $f8, 0x4($v0)
/* AD328 800F6F68 C4600008 */  lwc1       $f0, 0x8($v1)
/* AD32C 800F6F6C 46040000 */  add.s      $f0, $f0, $f4
/* AD330 800F6F70 E4400008 */  swc1       $f0, 0x8($v0)
/* AD334 800F6F74 C622001C */  lwc1       $f2, 0x1C($s1)
/* AD338 800F6F78 46061081 */  sub.s      $f2, $f2, $f6
/* AD33C 800F6F7C 2622001C */  addiu      $v0, $s1, 0x1C
/* AD340 800F6F80 E7A20048 */  swc1       $f2, 0x48($sp)
/* AD344 800F6F84 C4460004 */  lwc1       $f6, 0x4($v0)
/* AD348 800F6F88 46083181 */  sub.s      $f6, $f6, $f8
/* AD34C 800F6F8C E7A6004C */  swc1       $f6, 0x4C($sp)
/* AD350 800F6F90 C4440008 */  lwc1       $f4, 0x8($v0)
/* AD354 800F6F94 46002101 */  sub.s      $f4, $f4, $f0
/* AD358 800F6F98 E7A40050 */  swc1       $f4, 0x50($sp)
/* AD35C 800F6F9C C62000D0 */  lwc1       $f0, 0xD0($s1)
/* AD360 800F6FA0 46001082 */  mul.s      $f2, $f2, $f0
/* AD364 800F6FA4 C6000004 */  lwc1       $f0, 0x4($s0)
/* AD368 800F6FA8 46003182 */  mul.s      $f6, $f6, $f0
/* AD36C 800F6FAC C6000008 */  lwc1       $f0, 0x8($s0)
/* AD370 800F6FB0 46002102 */  mul.s      $f4, $f4, $f0
/* AD374 800F6FB4 46061080 */  add.s      $f2, $f2, $f6
/* AD378 800F6FB8 44800000 */  mtc1       $zero, $f0
/* AD37C 800F6FBC 46041080 */  add.s      $f2, $f2, $f4
/* AD380 800F6FC0 46000506 */  mov.s      $f20, $f0
/* AD384 800F6FC4 4614103E */  c.le.s     $f2, $f20
/* AD388 800F6FC8 00000000 */  nop
/* AD38C 800F6FCC 45000004 */  bc1f       .Lrace_800F6FE0
/* AD390 800F6FD0 00000000 */   nop
/* AD394 800F6FD4 3C01800D */  lui        $at, %hi(D_race_800CCE60)
/* AD398 800F6FD8 C434CE60 */  lwc1       $f20, %lo(D_race_800CCE60)($at)
.Lrace_800F6FDC:
/* AD39C 800F6FDC 44800000 */  mtc1       $zero, $f0
.Lrace_800F6FE0:
/* AD3A0 800F6FE0 4600A032 */  c.eq.s     $f20, $f0
/* AD3A4 800F6FE4 00000000 */  nop
/* AD3A8 800F6FE8 45030080 */  bc1tl      .Lrace_800F71EC
/* AD3AC 800F6FEC 02202021 */   addu      $a0, $s1, $zero
/* AD3B0 800F6FF0 8E28001C */  lw         $t0, 0x1C($s1)
/* AD3B4 800F6FF4 8E290020 */  lw         $t1, 0x20($s1)
/* AD3B8 800F6FF8 8E2A0024 */  lw         $t2, 0x24($s1)
/* AD3BC 800F6FFC AE280028 */  sw         $t0, 0x28($s1)
/* AD3C0 800F7000 AE29002C */  sw         $t1, 0x2C($s1)
/* AD3C4 800F7004 AE2A0030 */  sw         $t2, 0x30($s1)
/* AD3C8 800F7008 8E230008 */  lw         $v1, 0x8($s1)
/* AD3CC 800F700C 8C620024 */  lw         $v0, 0x24($v1)
/* AD3D0 800F7010 26250028 */  addiu      $a1, $s1, 0x28
/* AD3D4 800F7014 84440018 */  lh         $a0, 0x18($v0)
/* AD3D8 800F7018 8C42001C */  lw         $v0, 0x1C($v0)
/* AD3DC 800F701C 0040F809 */  jalr       $v0
/* AD3E0 800F7020 00642021 */   addu      $a0, $v1, $a0
/* AD3E4 800F7024 0803DCAD */  j          .Lrace_800F72B4
/* AD3E8 800F7028 24020004 */   addiu     $v0, $zero, 0x4
.Lrace_800F702C:
/* AD3EC 800F702C 8E2200E8 */  lw         $v0, 0xE8($s1)
/* AD3F0 800F7030 10400025 */  beqz       $v0, .Lrace_800F70C8
/* AD3F4 800F7034 262200DC */   addiu     $v0, $s1, 0xDC
/* AD3F8 800F7038 C62200DC */  lwc1       $f2, 0xDC($s1)
/* AD3FC 800F703C C62000A8 */  lwc1       $f0, 0xA8($s1)
/* AD400 800F7040 46001081 */  sub.s      $f2, $f2, $f0
/* AD404 800F7044 262300A8 */  addiu      $v1, $s1, 0xA8
/* AD408 800F7048 E7A20048 */  swc1       $f2, 0x48($sp)
/* AD40C 800F704C C4460004 */  lwc1       $f6, 0x4($v0)
/* AD410 800F7050 C4600004 */  lwc1       $f0, 0x4($v1)
/* AD414 800F7054 46003181 */  sub.s      $f6, $f6, $f0
/* AD418 800F7058 E7A6004C */  swc1       $f6, 0x4C($sp)
/* AD41C 800F705C C4440008 */  lwc1       $f4, 0x8($v0)
/* AD420 800F7060 C4600008 */  lwc1       $f0, 0x8($v1)
/* AD424 800F7064 46002101 */  sub.s      $f4, $f4, $f0
/* AD428 800F7068 E7A40050 */  swc1       $f4, 0x50($sp)
/* AD42C 800F706C C62000D0 */  lwc1       $f0, 0xD0($s1)
/* AD430 800F7070 46001082 */  mul.s      $f2, $f2, $f0
/* AD434 800F7074 262200D0 */  addiu      $v0, $s1, 0xD0
/* AD438 800F7078 C4400004 */  lwc1       $f0, 0x4($v0)
/* AD43C 800F707C 46003182 */  mul.s      $f6, $f6, $f0
/* AD440 800F7080 C4400008 */  lwc1       $f0, 0x8($v0)
/* AD444 800F7084 46002102 */  mul.s      $f4, $f4, $f0
/* AD448 800F7088 46061080 */  add.s      $f2, $f2, $f6
/* AD44C 800F708C 46041080 */  add.s      $f2, $f2, $f4
/* AD450 800F7090 44800000 */  mtc1       $zero, $f0
/* AD454 800F7094 4602003C */  c.lt.s     $f0, $f2
/* AD458 800F7098 00000000 */  nop
/* AD45C 800F709C 45000009 */  bc1f       .Lrace_800F70C4
/* AD460 800F70A0 263000D0 */   addiu     $s0, $s1, 0xD0
/* AD464 800F70A4 8FA80048 */  lw         $t0, 0x48($sp)
/* AD468 800F70A8 8FA9004C */  lw         $t1, 0x4C($sp)
/* AD46C 800F70AC 8FAA0050 */  lw         $t2, 0x50($sp)
/* AD470 800F70B0 AE2800D0 */  sw         $t0, 0xD0($s1)
/* AD474 800F70B4 AE2900D4 */  sw         $t1, 0xD4($s1)
/* AD478 800F70B8 AE2A00D8 */  sw         $t2, 0xD8($s1)
/* AD47C 800F70BC 0803DC34 */  j          .Lrace_800F70D0
/* AD480 800F70C0 02002021 */   addu      $a0, $s0, $zero
.Lrace_800F70C4:
/* AD484 800F70C4 AE2000E8 */  sw         $zero, 0xE8($s1)
.Lrace_800F70C8:
/* AD488 800F70C8 263000D0 */  addiu      $s0, $s1, 0xD0
/* AD48C 800F70CC 02002021 */  addu       $a0, $s0, $zero
.Lrace_800F70D0:
/* AD490 800F70D0 0C000F26 */  jal        func_80003C98
/* AD494 800F70D4 02002821 */   addu      $a1, $s0, $zero
/* AD498 800F70D8 C622004C */  lwc1       $f2, 0x4C($s1)
/* AD49C 800F70DC C62000D0 */  lwc1       $f0, 0xD0($s1)
/* AD4A0 800F70E0 46020002 */  mul.s      $f0, $f0, $f2
/* AD4A4 800F70E4 E62000C4 */  swc1       $f0, 0xC4($s1)
/* AD4A8 800F70E8 C6000004 */  lwc1       $f0, 0x4($s0)
/* AD4AC 800F70EC 46020002 */  mul.s      $f0, $f0, $f2
/* AD4B0 800F70F0 262200C4 */  addiu      $v0, $s1, 0xC4
/* AD4B4 800F70F4 E4400004 */  swc1       $f0, 0x4($v0)
/* AD4B8 800F70F8 C6000008 */  lwc1       $f0, 0x8($s0)
/* AD4BC 800F70FC 46020002 */  mul.s      $f0, $f0, $f2
/* AD4C0 800F7100 E4400008 */  swc1       $f0, 0x8($v0)
/* AD4C4 800F7104 C62000C4 */  lwc1       $f0, 0xC4($s1)
/* AD4C8 800F7108 46160002 */  mul.s      $f0, $f0, $f22
/* AD4CC 800F710C E7A00090 */  swc1       $f0, 0x90($sp)
/* AD4D0 800F7110 C4420004 */  lwc1       $f2, 0x4($v0)
/* AD4D4 800F7114 46161082 */  mul.s      $f2, $f2, $f22
/* AD4D8 800F7118 E7A20094 */  swc1       $f2, 0x94($sp)
/* AD4DC 800F711C C4440008 */  lwc1       $f4, 0x8($v0)
/* AD4E0 800F7120 46162102 */  mul.s      $f4, $f4, $f22
/* AD4E4 800F7124 E7A40098 */  swc1       $f4, 0x98($sp)
/* AD4E8 800F7128 C62600A8 */  lwc1       $f6, 0xA8($s1)
/* AD4EC 800F712C 46003180 */  add.s      $f6, $f6, $f0
/* AD4F0 800F7130 262200A8 */  addiu      $v0, $s1, 0xA8
/* AD4F4 800F7134 E7A60018 */  swc1       $f6, 0x18($sp)
/* AD4F8 800F7138 C4400004 */  lwc1       $f0, 0x4($v0)
/* AD4FC 800F713C 46020000 */  add.s      $f0, $f0, $f2
/* AD500 800F7140 27A30018 */  addiu      $v1, $sp, 0x18
/* AD504 800F7144 27A50028 */  addiu      $a1, $sp, 0x28
/* AD508 800F7148 E4600004 */  swc1       $f0, 0x4($v1)
/* AD50C 800F714C C4400008 */  lwc1       $f0, 0x8($v0)
/* AD510 800F7150 27A60038 */  addiu      $a2, $sp, 0x38
/* AD514 800F7154 46040000 */  add.s      $f0, $f0, $f4
/* AD518 800F7158 3C01800D */  lui        $at, %hi(D_race_800CCE64)
/* AD51C 800F715C C434CE64 */  lwc1       $f20, %lo(D_race_800CCE64)($at)
/* AD520 800F7160 26220028 */  addiu      $v0, $s1, 0x28
/* AD524 800F7164 E4600008 */  swc1       $f0, 0x8($v1)
/* AD528 800F7168 C7A20020 */  lwc1       $f2, 0x20($sp)
/* AD52C 800F716C 3C01800D */  lui        $at, %hi(D_race_800CCE68)
/* AD530 800F7170 C420CE68 */  lwc1       $f0, %lo(D_race_800CCE68)($at)
/* AD534 800F7174 C7A4001C */  lwc1       $f4, 0x1C($sp)
/* AD538 800F7178 46001000 */  add.s      $f0, $f2, $f0
/* AD53C 800F717C E7A60028 */  swc1       $f6, 0x28($sp)
/* AD540 800F7180 E7A60038 */  swc1       $f6, 0x38($sp)
/* AD544 800F7184 46141081 */  sub.s      $f2, $f2, $f20
/* AD548 800F7188 E7A4002C */  swc1       $f4, 0x2C($sp)
/* AD54C 800F718C E7A4003C */  swc1       $f4, 0x3C($sp)
/* AD550 800F7190 E7A00030 */  swc1       $f0, 0x30($sp)
/* AD554 800F7194 E7A20040 */  swc1       $f2, 0x40($sp)
/* AD558 800F7198 AFA20010 */  sw         $v0, 0x10($sp)
/* AD55C 800F719C 8E24000C */  lw         $a0, 0xC($s1)
/* AD560 800F71A0 0C03CAED */  jal        func_race_800F2BB4
/* AD564 800F71A4 27A70058 */   addiu     $a3, $sp, 0x58
/* AD568 800F71A8 10400010 */  beqz       $v0, .Lrace_800F71EC
/* AD56C 800F71AC 02202021 */   addu      $a0, $s1, $zero
/* AD570 800F71B0 C6200030 */  lwc1       $f0, 0x30($s1)
/* AD574 800F71B4 46140080 */  add.s      $f2, $f0, $f20
/* AD578 800F71B8 E7A20020 */  swc1       $f2, 0x20($sp)
/* AD57C 800F71BC C62400B0 */  lwc1       $f4, 0xB0($s1)
/* AD580 800F71C0 4604103C */  c.lt.s     $f2, $f4
/* AD584 800F71C4 00000000 */  nop
/* AD588 800F71C8 45000009 */  bc1f       .Lrace_800F71F0
/* AD58C 800F71CC 262600D0 */   addiu     $a2, $s1, 0xD0
/* AD590 800F71D0 4614B002 */  mul.s      $f0, $f22, $f20
/* AD594 800F71D4 46002501 */  sub.s      $f20, $f4, $f0
/* AD598 800F71D8 4614103C */  c.lt.s     $f2, $f20
/* AD59C 800F71DC 00000000 */  nop
/* AD5A0 800F71E0 45030003 */  bc1tl      .Lrace_800F71F0
/* AD5A4 800F71E4 E7B40020 */   swc1      $f20, 0x20($sp)
/* AD5A8 800F71E8 02202021 */  addu       $a0, $s1, $zero
.Lrace_800F71EC:
/* AD5AC 800F71EC 262600D0 */  addiu      $a2, $s1, 0xD0
.Lrace_800F71F0:
/* AD5B0 800F71F0 27B20018 */  addiu      $s2, $sp, 0x18
/* AD5B4 800F71F4 4405B000 */  mfc1       $a1, $f22
/* AD5B8 800F71F8 8FA80018 */  lw         $t0, 0x18($sp)
/* AD5BC 800F71FC 8FA9001C */  lw         $t1, 0x1C($sp)
/* AD5C0 800F7200 8FAA0020 */  lw         $t2, 0x20($sp)
/* AD5C4 800F7204 AE2800A8 */  sw         $t0, 0xA8($s1)
/* AD5C8 800F7208 AE2900AC */  sw         $t1, 0xAC($s1)
/* AD5CC 800F720C AE2A00B0 */  sw         $t2, 0xB0($s1)
/* AD5D0 800F7210 0C03DCBE */  jal        func_race_800F72F8
/* AD5D4 800F7214 02403821 */   addu      $a3, $s2, $zero
/* AD5D8 800F7218 8E230008 */  lw         $v1, 0x8($s1)
/* AD5DC 800F721C 27B00028 */  addiu      $s0, $sp, 0x28
/* AD5E0 800F7220 8C620024 */  lw         $v0, 0x24($v1)
/* AD5E4 800F7224 02002821 */  addu       $a1, $s0, $zero
/* AD5E8 800F7228 84440010 */  lh         $a0, 0x10($v0)
/* AD5EC 800F722C 8C420014 */  lw         $v0, 0x14($v0)
/* AD5F0 800F7230 0040F809 */  jalr       $v0
/* AD5F4 800F7234 00642021 */   addu      $a0, $v1, $a0
/* AD5F8 800F7238 02002821 */  addu       $a1, $s0, $zero
/* AD5FC 800F723C 02403021 */  addu       $a2, $s2, $zero
/* AD600 800F7240 26300028 */  addiu      $s0, $s1, 0x28
/* AD604 800F7244 AFB00010 */  sw         $s0, 0x10($sp)
/* AD608 800F7248 8E24000C */  lw         $a0, 0xC($s1)
/* AD60C 800F724C 0C03CAED */  jal        func_race_800F2BB4
/* AD610 800F7250 27A70058 */   addiu     $a3, $sp, 0x58
/* AD614 800F7254 1440000A */  bnez       $v0, .Lrace_800F7280
/* AD618 800F7258 02002821 */   addu      $a1, $s0, $zero
/* AD61C 800F725C 8E230008 */  lw         $v1, 0x8($s1)
/* AD620 800F7260 8C620024 */  lw         $v0, 0x24($v1)
/* AD624 800F7264 02402821 */  addu       $a1, $s2, $zero
/* AD628 800F7268 84440018 */  lh         $a0, 0x18($v0)
/* AD62C 800F726C 8C42001C */  lw         $v0, 0x1C($v0)
/* AD630 800F7270 0040F809 */  jalr       $v0
/* AD634 800F7274 00642021 */   addu      $a0, $v1, $a0
/* AD638 800F7278 0803DCAF */  j          .Lrace_800F72BC
/* AD63C 800F727C 24020001 */   addiu     $v0, $zero, 0x1
.Lrace_800F7280:
/* AD640 800F7280 C7A0007C */  lwc1       $f0, 0x7C($sp)
/* AD644 800F7284 8E230008 */  lw         $v1, 0x8($s1)
/* AD648 800F7288 E620005C */  swc1       $f0, 0x5C($s1)
/* AD64C 800F728C C7A00080 */  lwc1       $f0, 0x80($sp)
/* AD650 800F7290 E6200060 */  swc1       $f0, 0x60($s1)
/* AD654 800F7294 C7A00084 */  lwc1       $f0, 0x84($sp)
/* AD658 800F7298 E6200064 */  swc1       $f0, 0x64($s1)
/* AD65C 800F729C 8C620024 */  lw         $v0, 0x24($v1)
/* AD660 800F72A0 84440018 */  lh         $a0, 0x18($v0)
/* AD664 800F72A4 8C42001C */  lw         $v0, 0x1C($v0)
/* AD668 800F72A8 0040F809 */  jalr       $v0
/* AD66C 800F72AC 00642021 */   addu      $a0, $v1, $a0
/* AD670 800F72B0 24020003 */  addiu      $v0, $zero, 0x3
.Lrace_800F72B4:
/* AD674 800F72B4 00401821 */  addu       $v1, $v0, $zero
/* AD678 800F72B8 AE230004 */  sw         $v1, 0x4($s1)
.Lrace_800F72BC:
/* AD67C 800F72BC 8FBF00AC */  lw         $ra, 0xAC($sp)
/* AD680 800F72C0 8FB200A8 */  lw         $s2, 0xA8($sp)
/* AD684 800F72C4 8FB100A4 */  lw         $s1, 0xA4($sp)
/* AD688 800F72C8 8FB000A0 */  lw         $s0, 0xA0($sp)
/* AD68C 800F72CC D7B600B8 */  ldc1       $f22, 0xB8($sp)
/* AD690 800F72D0 D7B400B0 */  ldc1       $f20, 0xB0($sp)
/* AD694 800F72D4 03E00008 */  jr         $ra
/* AD698 800F72D8 27BD00C0 */   addiu     $sp, $sp, 0xC0

glabel func_race_800F72DC
/* AD69C 800F72DC C48000C4 */  lwc1       $f0, 0xC4($a0)
/* AD6A0 800F72E0 E4A00000 */  swc1       $f0, 0x0($a1)
/* AD6A4 800F72E4 C48000C8 */  lwc1       $f0, 0xC8($a0)
/* AD6A8 800F72E8 E4A00004 */  swc1       $f0, 0x4($a1)
/* AD6AC 800F72EC C48000CC */  lwc1       $f0, 0xCC($a0)
/* AD6B0 800F72F0 03E00008 */  jr         $ra
/* AD6B4 800F72F4 E4A00008 */   swc1      $f0, 0x8($a1)

glabel func_race_800F72F8
/* AD6B8 800F72F8 44852000 */  mtc1       $a1, $f4
/* AD6BC 800F72FC 3C01800D */  lui        $at, %hi(D_race_800CCE6C)
/* AD6C0 800F7300 C420CE6C */  lwc1       $f0, %lo(D_race_800CCE6C)($at)
/* AD6C4 800F7304 27BDFFD0 */  addiu      $sp, $sp, -0x30
/* AD6C8 800F7308 AFB00018 */  sw         $s0, 0x18($sp)
/* AD6CC 800F730C 00808021 */  addu       $s0, $a0, $zero
/* AD6D0 800F7310 AFBF0024 */  sw         $ra, 0x24($sp)
/* AD6D4 800F7314 AFB20020 */  sw         $s2, 0x20($sp)
/* AD6D8 800F7318 46002002 */  mul.s      $f0, $f4, $f0
/* AD6DC 800F731C AFB1001C */  sw         $s1, 0x1C($sp)
/* AD6E0 800F7320 F7B40028 */  sdc1       $f20, 0x28($sp)
/* AD6E4 800F7324 C60200B4 */  lwc1       $f2, 0xB4($s0)
/* AD6E8 800F7328 00C08821 */  addu       $s1, $a2, $zero
/* AD6EC 800F732C 46001080 */  add.s      $f2, $f2, $f0
/* AD6F0 800F7330 C60000B8 */  lwc1       $f0, 0xB8($s0)
/* AD6F4 800F7334 00E09021 */  addu       $s2, $a3, $zero
/* AD6F8 800F7338 4602003C */  c.lt.s     $f0, $f2
/* AD6FC 800F733C 00000000 */  nop
/* AD700 800F7340 45000002 */  bc1f       .Lrace_800F734C
/* AD704 800F7344 E60200B4 */   swc1      $f2, 0xB4($s0)
/* AD708 800F7348 E60000B4 */  swc1       $f0, 0xB4($s0)
.Lrace_800F734C:
/* AD70C 800F734C C60000C0 */  lwc1       $f0, 0xC0($s0)
/* AD710 800F7350 46040002 */  mul.s      $f0, $f0, $f4
/* AD714 800F7354 C61400BC */  lwc1       $f20, 0xBC($s0)
/* AD718 800F7358 4600A500 */  add.s      $f20, $f20, $f0
/* AD71C 800F735C 4600A306 */  mov.s      $f12, $f20
/* AD720 800F7360 0C006D60 */  jal        sinf
/* AD724 800F7364 E61400BC */   swc1      $f20, 0xBC($s0)
/* AD728 800F7368 4600A306 */  mov.s      $f12, $f20
/* AD72C 800F736C 0C006BCC */  jal        cosf
/* AD730 800F7370 E7A00010 */   swc1      $f0, 0x10($sp)
/* AD734 800F7374 C7A80010 */  lwc1       $f8, 0x10($sp)
/* AD738 800F7378 C62C0000 */  lwc1       $f12, 0x0($s1)
/* AD73C 800F737C 460C4302 */  mul.s      $f12, $f8, $f12
/* AD740 800F7380 C6220004 */  lwc1       $f2, 0x4($s1)
/* AD744 800F7384 46024202 */  mul.s      $f8, $f8, $f2
/* AD748 800F7388 C6240008 */  lwc1       $f4, 0x8($s1)
/* AD74C 800F738C C6260004 */  lwc1       $f6, 0x4($s1)
/* AD750 800F7390 46043182 */  mul.s      $f6, $f6, $f4
/* AD754 800F7394 C6220000 */  lwc1       $f2, 0x0($s1)
/* AD758 800F7398 46041082 */  mul.s      $f2, $f2, $f4
/* AD75C 800F739C 3C01800D */  lui        $at, %hi(D_race_800CCE70)
/* AD760 800F73A0 C42ACE70 */  lwc1       $f10, %lo(D_race_800CCE70)($at)
/* AD764 800F73A4 46005281 */  sub.s      $f10, $f10, $f0
/* AD768 800F73A8 460A3182 */  mul.s      $f6, $f6, $f10
/* AD76C 800F73AC 00000000 */  nop
/* AD770 800F73B0 460A1082 */  mul.s      $f2, $f2, $f10
/* AD774 800F73B4 46081081 */  sub.s      $f2, $f2, $f8
/* AD778 800F73B8 C60400B4 */  lwc1       $f4, 0xB4($s0)
/* AD77C 800F73BC 46022102 */  mul.s      $f4, $f4, $f2
/* AD780 800F73C0 C6420000 */  lwc1       $f2, 0x0($s2)
/* AD784 800F73C4 46041080 */  add.s      $f2, $f2, $f4
/* AD788 800F73C8 460C3180 */  add.s      $f6, $f6, $f12
/* AD78C 800F73CC E6420000 */  swc1       $f2, 0x0($s2)
/* AD790 800F73D0 C60400B4 */  lwc1       $f4, 0xB4($s0)
/* AD794 800F73D4 46062102 */  mul.s      $f4, $f4, $f6
/* AD798 800F73D8 C6420004 */  lwc1       $f2, 0x4($s2)
/* AD79C 800F73DC 46041080 */  add.s      $f2, $f2, $f4
/* AD7A0 800F73E0 E6420004 */  swc1       $f2, 0x4($s2)
/* AD7A4 800F73E4 C6220008 */  lwc1       $f2, 0x8($s1)
/* AD7A8 800F73E8 46021082 */  mul.s      $f2, $f2, $f2
/* AD7AC 800F73EC 00000000 */  nop
/* AD7B0 800F73F0 460A1082 */  mul.s      $f2, $f2, $f10
/* AD7B4 800F73F4 46020080 */  add.s      $f2, $f0, $f2
/* AD7B8 800F73F8 C60400B4 */  lwc1       $f4, 0xB4($s0)
/* AD7BC 800F73FC 46022102 */  mul.s      $f4, $f4, $f2
/* AD7C0 800F7400 C6420008 */  lwc1       $f2, 0x8($s2)
/* AD7C4 800F7404 46041080 */  add.s      $f2, $f2, $f4
/* AD7C8 800F7408 E7A00014 */  swc1       $f0, 0x14($sp)
/* AD7CC 800F740C E7AA0010 */  swc1       $f10, 0x10($sp)
/* AD7D0 800F7410 E6420008 */  swc1       $f2, 0x8($s2)
/* AD7D4 800F7414 8FBF0024 */  lw         $ra, 0x24($sp)
/* AD7D8 800F7418 8FB20020 */  lw         $s2, 0x20($sp)
/* AD7DC 800F741C 8FB1001C */  lw         $s1, 0x1C($sp)
/* AD7E0 800F7420 8FB00018 */  lw         $s0, 0x18($sp)
/* AD7E4 800F7424 D7B40028 */  ldc1       $f20, 0x28($sp)
/* AD7E8 800F7428 03E00008 */  jr         $ra
/* AD7EC 800F742C 27BD0030 */   addiu     $sp, $sp, 0x30

glabel func_race_800F7430
/* AD7F0 800F7430 8C8200E8 */  lw         $v0, 0xE8($a0)
/* AD7F4 800F7434 03E00008 */  jr         $ra
/* AD7F8 800F7438 00000000 */   nop

glabel func_race_800F743C
/* AD7FC 800F743C 24020001 */  addiu      $v0, $zero, 0x1
/* AD800 800F7440 8CA30000 */  lw         $v1, 0x0($a1)
/* AD804 800F7444 8CA60004 */  lw         $a2, 0x4($a1)
/* AD808 800F7448 8CA70008 */  lw         $a3, 0x8($a1)
/* AD80C 800F744C AC8300DC */  sw         $v1, 0xDC($a0)
/* AD810 800F7450 AC8600E0 */  sw         $a2, 0xE0($a0)
/* AD814 800F7454 AC8700E4 */  sw         $a3, 0xE4($a0)
/* AD818 800F7458 03E00008 */  jr         $ra
/* AD81C 800F745C AC8200E8 */   sw        $v0, 0xE8($a0)

glabel func_race_800F7460
/* AD820 800F7460 C48000D0 */  lwc1       $f0, 0xD0($a0)
/* AD824 800F7464 E4A00000 */  swc1       $f0, 0x0($a1)
/* AD828 800F7468 C48000D4 */  lwc1       $f0, 0xD4($a0)
/* AD82C 800F746C E4A00004 */  swc1       $f0, 0x4($a1)
/* AD830 800F7470 C48000D8 */  lwc1       $f0, 0xD8($a0)
/* AD834 800F7474 03E00008 */  jr         $ra
/* AD838 800F7478 E4A00008 */   swc1      $f0, 0x8($a1)

glabel func_race_800F747C
/* AD83C 800F747C 03E00008 */  jr         $ra
/* AD840 800F7480 AC8500C0 */   sw        $a1, 0xC0($a0)

glabel func_race_800F7484
/* AD844 800F7484 03E00008 */  jr         $ra
/* AD848 800F7488 AC8500B8 */   sw        $a1, 0xB8($a0)

glabel func_race_800F748C
/* AD84C 800F748C 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* AD850 800F7490 AFBF0010 */  sw         $ra, 0x10($sp)
/* AD854 800F7494 0C040B2D */  jal        func_race_80102CB4
/* AD858 800F7498 00000000 */   nop
/* AD85C 800F749C 8FBF0010 */  lw         $ra, 0x10($sp)
/* AD860 800F74A0 03E00008 */  jr         $ra
/* AD864 800F74A4 27BD0018 */   addiu     $sp, $sp, 0x18
