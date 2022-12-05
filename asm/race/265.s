.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text, "ax"

glabel func_race_800E67D0
/* 9CB90 800E67D0 00801021 */  addu       $v0, $a0, $zero
/* 9CB94 800E67D4 3C03800D */  lui        $v1, %hi(D_race_800CB960)
/* 9CB98 800E67D8 2463B960 */  addiu      $v1, $v1, %lo(D_race_800CB960)
/* 9CB9C 800E67DC AC430000 */  sw         $v1, 0x0($v0)
/* 9CBA0 800E67E0 24430018 */  addiu      $v1, $v0, 0x18
/* 9CBA4 800E67E4 AC400018 */  sw         $zero, 0x18($v0)
/* 9CBA8 800E67E8 AC600004 */  sw         $zero, 0x4($v1)
/* 9CBAC 800E67EC AC600008 */  sw         $zero, 0x8($v1)
/* 9CBB0 800E67F0 AC60000C */  sw         $zero, 0xC($v1)
/* 9CBB4 800E67F4 AC600010 */  sw         $zero, 0x10($v1)
/* 9CBB8 800E67F8 A4600014 */  sh         $zero, 0x14($v1)
/* 9CBBC 800E67FC A4600016 */  sh         $zero, 0x16($v1)
/* 9CBC0 800E6800 AC400004 */  sw         $zero, 0x4($v0)
/* 9CBC4 800E6804 AC400008 */  sw         $zero, 0x8($v0)
/* 9CBC8 800E6808 AC40000C */  sw         $zero, 0xC($v0)
/* 9CBCC 800E680C AC400010 */  sw         $zero, 0x10($v0)
/* 9CBD0 800E6810 AC400014 */  sw         $zero, 0x14($v0)
/* 9CBD4 800E6814 AC400030 */  sw         $zero, 0x30($v0)
/* 9CBD8 800E6818 03E00008 */  jr         $ra
/* 9CBDC 800E681C AC400038 */   sw        $zero, 0x38($v0)

glabel func_race_800E6820
/* 9CBE0 800E6820 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* 9CBE4 800E6824 AFB10014 */  sw         $s1, 0x14($sp)
/* 9CBE8 800E6828 00808821 */  addu       $s1, $a0, $zero
/* 9CBEC 800E682C AFB00010 */  sw         $s0, 0x10($sp)
/* 9CBF0 800E6830 00A08021 */  addu       $s0, $a1, $zero
/* 9CBF4 800E6834 3C02800D */  lui        $v0, %hi(D_race_800CB960)
/* 9CBF8 800E6838 2442B960 */  addiu      $v0, $v0, %lo(D_race_800CB960)
/* 9CBFC 800E683C AFBF0018 */  sw         $ra, 0x18($sp)
/* 9CC00 800E6840 0C039A65 */  jal        func_race_800E6994
/* 9CC04 800E6844 AE220000 */   sw        $v0, 0x0($s1)
/* 9CC08 800E6848 32100001 */  andi       $s0, $s0, 0x1
/* 9CC0C 800E684C 12000003 */  beqz       $s0, .Lrace_800E685C
/* 9CC10 800E6850 00000000 */   nop
/* 9CC14 800E6854 0C01FB5C */  jal        func_8007ED70
/* 9CC18 800E6858 02202021 */   addu      $a0, $s1, $zero
.Lrace_800E685C:
/* 9CC1C 800E685C 8FBF0018 */  lw         $ra, 0x18($sp)
/* 9CC20 800E6860 8FB10014 */  lw         $s1, 0x14($sp)
/* 9CC24 800E6864 8FB00010 */  lw         $s0, 0x10($sp)
/* 9CC28 800E6868 03E00008 */  jr         $ra
/* 9CC2C 800E686C 27BD0020 */   addiu     $sp, $sp, 0x20

glabel func_race_800E6870
/* 9CC30 800E6870 27BDFFD8 */  addiu      $sp, $sp, -0x28
/* 9CC34 800E6874 AFB10014 */  sw         $s1, 0x14($sp)
/* 9CC38 800E6878 00808821 */  addu       $s1, $a0, $zero
/* 9CC3C 800E687C AFB00010 */  sw         $s0, 0x10($sp)
/* 9CC40 800E6880 00A08021 */  addu       $s0, $a1, $zero
/* 9CC44 800E6884 AFB20018 */  sw         $s2, 0x18($sp)
/* 9CC48 800E6888 00C09021 */  addu       $s2, $a2, $zero
/* 9CC4C 800E688C AFB40020 */  sw         $s4, 0x20($sp)
/* 9CC50 800E6890 AFBF0024 */  sw         $ra, 0x24($sp)
/* 9CC54 800E6894 AFB3001C */  sw         $s3, 0x1C($sp)
/* 9CC58 800E6898 8E220004 */  lw         $v0, 0x4($s1)
/* 9CC5C 800E689C 8FB30054 */  lw         $s3, 0x54($sp)
/* 9CC60 800E68A0 10400003 */  beqz       $v0, .Lrace_800E68B0
/* 9CC64 800E68A4 00E0A021 */   addu      $s4, $a3, $zero
/* 9CC68 800E68A8 0C039A65 */  jal        func_race_800E6994
/* 9CC6C 800E68AC 00000000 */   nop
.Lrace_800E68B0:
/* 9CC70 800E68B0 AE200038 */  sw         $zero, 0x38($s1)
/* 9CC74 800E68B4 AE32000C */  sw         $s2, 0xC($s1)
/* 9CC78 800E68B8 AE340010 */  sw         $s4, 0x10($s1)
/* 9CC7C 800E68BC 8FA20038 */  lw         $v0, 0x38($sp)
/* 9CC80 800E68C0 AE220014 */  sw         $v0, 0x14($s1)
/* 9CC84 800E68C4 8FA8003C */  lw         $t0, 0x3C($sp)
/* 9CC88 800E68C8 8FA90040 */  lw         $t1, 0x40($sp)
/* 9CC8C 800E68CC 8FAA0044 */  lw         $t2, 0x44($sp)
/* 9CC90 800E68D0 8FAB0048 */  lw         $t3, 0x48($sp)
/* 9CC94 800E68D4 AE280018 */  sw         $t0, 0x18($s1)
/* 9CC98 800E68D8 AE29001C */  sw         $t1, 0x1C($s1)
/* 9CC9C 800E68DC AE2A0020 */  sw         $t2, 0x20($s1)
/* 9CCA0 800E68E0 AE2B0024 */  sw         $t3, 0x24($s1)
/* 9CCA4 800E68E4 8FA8004C */  lw         $t0, 0x4C($sp)
/* 9CCA8 800E68E8 8FA90050 */  lw         $t1, 0x50($sp)
/* 9CCAC 800E68EC AE280028 */  sw         $t0, 0x28($s1)
/* 9CCB0 800E68F0 AE29002C */  sw         $t1, 0x2C($s1)
/* 9CCB4 800E68F4 16600003 */  bnez       $s3, .Lrace_800E6904
/* 9CCB8 800E68F8 24020001 */   addiu     $v0, $zero, 0x1
/* 9CCBC 800E68FC 08039A46 */  j          .Lrace_800E6918
/* 9CCC0 800E6900 AE200030 */   sw        $zero, 0x30($s1)
.Lrace_800E6904:
/* 9CCC4 800E6904 AE220030 */  sw         $v0, 0x30($s1)
/* 9CCC8 800E6908 8A680000 */  lwl        $t0, 0x0($s3)
/* 9CCCC 800E690C 9A680003 */  lwr        $t0, 0x3($s3)
/* 9CCD0 800E6910 AA280034 */  swl        $t0, 0x34($s1)
/* 9CCD4 800E6914 BA280037 */  swr        $t0, 0x37($s1)
.Lrace_800E6918:
/* 9CCD8 800E6918 AE300008 */  sw         $s0, 0x8($s1)
/* 9CCDC 800E691C 8E020000 */  lw         $v0, 0x0($s0)
/* 9CCE0 800E6920 84440010 */  lh         $a0, 0x10($v0)
/* 9CCE4 800E6924 8C420014 */  lw         $v0, 0x14($v0)
/* 9CCE8 800E6928 0040F809 */  jalr       $v0
/* 9CCEC 800E692C 02042021 */   addu      $a0, $s0, $a0
/* 9CCF0 800E6930 8E230008 */  lw         $v1, 0x8($s1)
/* 9CCF4 800E6934 8C650000 */  lw         $a1, 0x0($v1)
/* 9CCF8 800E6938 84A40020 */  lh         $a0, 0x20($a1)
/* 9CCFC 800E693C 00642021 */  addu       $a0, $v1, $a0
/* 9CD00 800E6940 8CA30024 */  lw         $v1, 0x24($a1)
/* 9CD04 800E6944 8C50001C */  lw         $s0, 0x1C($v0)
/* 9CD08 800E6948 0060F809 */  jalr       $v1
/* 9CD0C 800E694C 00000000 */   nop
/* 9CD10 800E6950 AE220004 */  sw         $v0, 0x4($s1)
/* 9CD14 800E6954 8C430008 */  lw         $v1, 0x8($v0)
/* 9CD18 800E6958 02002821 */  addu       $a1, $s0, $zero
/* 9CD1C 800E695C 84640048 */  lh         $a0, 0x48($v1)
/* 9CD20 800E6960 8E27000C */  lw         $a3, 0xC($s1)
/* 9CD24 800E6964 00442021 */  addu       $a0, $v0, $a0
/* 9CD28 800E6968 8C62004C */  lw         $v0, 0x4C($v1)
/* 9CD2C 800E696C 0040F809 */  jalr       $v0
/* 9CD30 800E6970 02203021 */   addu      $a2, $s1, $zero
/* 9CD34 800E6974 8FBF0024 */  lw         $ra, 0x24($sp)
/* 9CD38 800E6978 8FB40020 */  lw         $s4, 0x20($sp)
/* 9CD3C 800E697C 8FB3001C */  lw         $s3, 0x1C($sp)
/* 9CD40 800E6980 8FB20018 */  lw         $s2, 0x18($sp)
/* 9CD44 800E6984 8FB10014 */  lw         $s1, 0x14($sp)
/* 9CD48 800E6988 8FB00010 */  lw         $s0, 0x10($sp)
/* 9CD4C 800E698C 03E00008 */  jr         $ra
/* 9CD50 800E6990 27BD0028 */   addiu     $sp, $sp, 0x28

glabel func_race_800E6994
/* 9CD54 800E6994 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 9CD58 800E6998 AFB00010 */  sw         $s0, 0x10($sp)
/* 9CD5C 800E699C 00808021 */  addu       $s0, $a0, $zero
/* 9CD60 800E69A0 AFBF0014 */  sw         $ra, 0x14($sp)
/* 9CD64 800E69A4 8E030008 */  lw         $v1, 0x8($s0)
/* 9CD68 800E69A8 5060000A */  beql       $v1, $zero, .Lrace_800E69D4
/* 9CD6C 800E69AC AE000008 */   sw        $zero, 0x8($s0)
/* 9CD70 800E69B0 8E050004 */  lw         $a1, 0x4($s0)
/* 9CD74 800E69B4 50A00007 */  beql       $a1, $zero, .Lrace_800E69D4
/* 9CD78 800E69B8 AE000008 */   sw        $zero, 0x8($s0)
/* 9CD7C 800E69BC 8C620000 */  lw         $v0, 0x0($v1)
/* 9CD80 800E69C0 84440088 */  lh         $a0, 0x88($v0)
/* 9CD84 800E69C4 8C42008C */  lw         $v0, 0x8C($v0)
/* 9CD88 800E69C8 0040F809 */  jalr       $v0
/* 9CD8C 800E69CC 00642021 */   addu      $a0, $v1, $a0
/* 9CD90 800E69D0 AE000008 */  sw         $zero, 0x8($s0)
.Lrace_800E69D4:
/* 9CD94 800E69D4 AE000004 */  sw         $zero, 0x4($s0)
/* 9CD98 800E69D8 AE00000C */  sw         $zero, 0xC($s0)
/* 9CD9C 800E69DC AE000010 */  sw         $zero, 0x10($s0)
/* 9CDA0 800E69E0 AE000014 */  sw         $zero, 0x14($s0)
/* 9CDA4 800E69E4 AE000030 */  sw         $zero, 0x30($s0)
/* 9CDA8 800E69E8 AE000038 */  sw         $zero, 0x38($s0)
/* 9CDAC 800E69EC 8FBF0014 */  lw         $ra, 0x14($sp)
/* 9CDB0 800E69F0 8FB00010 */  lw         $s0, 0x10($sp)
/* 9CDB4 800E69F4 03E00008 */  jr         $ra
/* 9CDB8 800E69F8 27BD0018 */   addiu     $sp, $sp, 0x18

glabel func_race_800E69FC
/* 9CDBC 800E69FC 8C820010 */  lw         $v0, 0x10($a0)
/* 9CDC0 800E6A00 ACC20000 */  sw         $v0, 0x0($a2)
/* 9CDC4 800E6A04 8C820014 */  lw         $v0, 0x14($a0)
/* 9CDC8 800E6A08 ACC20004 */  sw         $v0, 0x4($a2)
/* 9CDCC 800E6A0C 8C830018 */  lw         $v1, 0x18($a0)
/* 9CDD0 800E6A10 8C85001C */  lw         $a1, 0x1C($a0)
/* 9CDD4 800E6A14 8C870020 */  lw         $a3, 0x20($a0)
/* 9CDD8 800E6A18 8C880024 */  lw         $t0, 0x24($a0)
/* 9CDDC 800E6A1C ACC30008 */  sw         $v1, 0x8($a2)
/* 9CDE0 800E6A20 ACC5000C */  sw         $a1, 0xC($a2)
/* 9CDE4 800E6A24 ACC70010 */  sw         $a3, 0x10($a2)
/* 9CDE8 800E6A28 ACC80014 */  sw         $t0, 0x14($a2)
/* 9CDEC 800E6A2C 8C830028 */  lw         $v1, 0x28($a0)
/* 9CDF0 800E6A30 8C85002C */  lw         $a1, 0x2C($a0)
/* 9CDF4 800E6A34 ACC30018 */  sw         $v1, 0x18($a2)
/* 9CDF8 800E6A38 ACC5001C */  sw         $a1, 0x1C($a2)
/* 9CDFC 800E6A3C ACC00020 */  sw         $zero, 0x20($a2)
/* 9CE00 800E6A40 8C820030 */  lw         $v0, 0x30($a0)
/* 9CE04 800E6A44 10400009 */  beqz       $v0, .Lrace_800E6A6C
/* 9CE08 800E6A48 24020002 */   addiu     $v0, $zero, 0x2
/* 9CE0C 800E6A4C 24020022 */  addiu      $v0, $zero, 0x22
/* 9CE10 800E6A50 A4C20024 */  sh         $v0, 0x24($a2)
/* 9CE14 800E6A54 88830034 */  lwl        $v1, 0x34($a0)
/* 9CE18 800E6A58 98830037 */  lwr        $v1, 0x37($a0)
/* 9CE1C 800E6A5C A8C30026 */  swl        $v1, 0x26($a2)
/* 9CE20 800E6A60 B8C30029 */  swr        $v1, 0x29($a2)
/* 9CE24 800E6A64 03E00008 */  jr         $ra
/* 9CE28 800E6A68 00000000 */   nop
.Lrace_800E6A6C:
/* 9CE2C 800E6A6C 03E00008 */  jr         $ra
/* 9CE30 800E6A70 A4C20024 */   sh        $v0, 0x24($a2)

glabel func_race_800E6A74
/* 9CE34 800E6A74 24020001 */  addiu      $v0, $zero, 0x1
/* 9CE38 800E6A78 03E00008 */  jr         $ra
/* 9CE3C 800E6A7C AC820038 */   sw        $v0, 0x38($a0)

glabel func_race_800E6A80
/* 9CE40 800E6A80 8C820014 */  lw         $v0, 0x14($a0)
/* 9CE44 800E6A84 03E00008 */  jr         $ra
/* 9CE48 800E6A88 00000000 */   nop

glabel func_race_800E6A8C
/* 9CE4C 800E6A8C 8C820010 */  lw         $v0, 0x10($a0)
/* 9CE50 800E6A90 03E00008 */  jr         $ra
/* 9CE54 800E6A94 00000000 */   nop

glabel func_race_800E6A98
/* 9CE58 800E6A98 03E00008 */  jr         $ra
/* 9CE5C 800E6A9C AC800038 */   sw        $zero, 0x38($a0)

glabel func_race_800E6AA0
/* 9CE60 800E6AA0 24020001 */  addiu      $v0, $zero, 0x1
/* 9CE64 800E6AA4 03E00008 */  jr         $ra
/* 9CE68 800E6AA8 AC820038 */   sw        $v0, 0x38($a0)

glabel func_race_800E6AAC
/* 9CE6C 800E6AAC 8C820038 */  lw         $v0, 0x38($a0)
/* 9CE70 800E6AB0 03E00008 */  jr         $ra
/* 9CE74 800E6AB4 00000000 */   nop

glabel func_race_800E6AB8
/* 9CE78 800E6AB8 8C82000C */  lw         $v0, 0xC($a0)
/* 9CE7C 800E6ABC 03E00008 */  jr         $ra
/* 9CE80 800E6AC0 00000000 */   nop

glabel func_race_800E6AC4
/* 9CE84 800E6AC4 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 9CE88 800E6AC8 AFBF0010 */  sw         $ra, 0x10($sp)
/* 9CE8C 800E6ACC 8C820004 */  lw         $v0, 0x4($a0)
/* 9CE90 800E6AD0 8C430008 */  lw         $v1, 0x8($v0)
/* 9CE94 800E6AD4 84640058 */  lh         $a0, 0x58($v1)
/* 9CE98 800E6AD8 00442021 */  addu       $a0, $v0, $a0
/* 9CE9C 800E6ADC 8C62005C */  lw         $v0, 0x5C($v1)
/* 9CEA0 800E6AE0 0040F809 */  jalr       $v0
/* 9CEA4 800E6AE4 00000000 */   nop
/* 9CEA8 800E6AE8 8FBF0010 */  lw         $ra, 0x10($sp)
/* 9CEAC 800E6AEC 03E00008 */  jr         $ra
/* 9CEB0 800E6AF0 27BD0018 */   addiu     $sp, $sp, 0x18

glabel func_race_800E6AF4
/* 9CEB4 800E6AF4 8C820004 */  lw         $v0, 0x4($a0)
/* 9CEB8 800E6AF8 03E00008 */  jr         $ra
/* 9CEBC 800E6AFC 0002102B */   sltu      $v0, $zero, $v0

glabel func_race_800E6B00
/* 9CEC0 800E6B00 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 9CEC4 800E6B04 AFB00010 */  sw         $s0, 0x10($sp)
/* 9CEC8 800E6B08 00808021 */  addu       $s0, $a0, $zero
/* 9CECC 800E6B0C AFBF0014 */  sw         $ra, 0x14($sp)
/* 9CED0 800E6B10 0C016038 */  jal        func_800580E0
/* 9CED4 800E6B14 26040010 */   addiu     $a0, $s0, 0x10
/* 9CED8 800E6B18 02001021 */  addu       $v0, $s0, $zero
/* 9CEDC 800E6B1C 3C01800D */  lui        $at, %hi(D_race_800CB980)
/* 9CEE0 800E6B20 C422B980 */  lwc1       $f2, %lo(D_race_800CB980)($at)
/* 9CEE4 800E6B24 3C01800D */  lui        $at, %hi(D_race_800CB984)
/* 9CEE8 800E6B28 C420B984 */  lwc1       $f0, %lo(D_race_800CB984)($at)
/* 9CEEC 800E6B2C 240300FF */  addiu      $v1, $zero, 0xFF
/* 9CEF0 800E6B30 AC400000 */  sw         $zero, 0x0($v0)
/* 9CEF4 800E6B34 AC400004 */  sw         $zero, 0x4($v0)
/* 9CEF8 800E6B38 AC400008 */  sw         $zero, 0x8($v0)
/* 9CEFC 800E6B3C AC40000C */  sw         $zero, 0xC($v0)
/* 9CF00 800E6B40 AC4000A0 */  sw         $zero, 0xA0($v0)
/* 9CF04 800E6B44 AC4000A4 */  sw         $zero, 0xA4($v0)
/* 9CF08 800E6B48 AC4000B0 */  sw         $zero, 0xB0($v0)
/* 9CF0C 800E6B4C AC4000B4 */  sw         $zero, 0xB4($v0)
/* 9CF10 800E6B50 AC4000BC */  sw         $zero, 0xBC($v0)
/* 9CF14 800E6B54 AC4000C0 */  sw         $zero, 0xC0($v0)
/* 9CF18 800E6B58 AC4000B8 */  sw         $zero, 0xB8($v0)
/* 9CF1C 800E6B5C AC4000A8 */  sw         $zero, 0xA8($v0)
/* 9CF20 800E6B60 AC4000AC */  sw         $zero, 0xAC($v0)
/* 9CF24 800E6B64 AC4000C4 */  sw         $zero, 0xC4($v0)
/* 9CF28 800E6B68 AC4000C8 */  sw         $zero, 0xC8($v0)
/* 9CF2C 800E6B6C AC4000D0 */  sw         $zero, 0xD0($v0)
/* 9CF30 800E6B70 AC4000D4 */  sw         $zero, 0xD4($v0)
/* 9CF34 800E6B74 AC4000D8 */  sw         $zero, 0xD8($v0)
/* 9CF38 800E6B78 AC4000E0 */  sw         $zero, 0xE0($v0)
/* 9CF3C 800E6B7C AC4000E4 */  sw         $zero, 0xE4($v0)
/* 9CF40 800E6B80 AC4000E8 */  sw         $zero, 0xE8($v0)
/* 9CF44 800E6B84 AC4000F0 */  sw         $zero, 0xF0($v0)
/* 9CF48 800E6B88 AC4000F4 */  sw         $zero, 0xF4($v0)
/* 9CF4C 800E6B8C AC4000F8 */  sw         $zero, 0xF8($v0)
/* 9CF50 800E6B90 AC4000FC */  sw         $zero, 0xFC($v0)
/* 9CF54 800E6B94 AC400100 */  sw         $zero, 0x100($v0)
/* 9CF58 800E6B98 AC400104 */  sw         $zero, 0x104($v0)
/* 9CF5C 800E6B9C E4420124 */  swc1       $f2, 0x124($v0)
/* 9CF60 800E6BA0 E44000CC */  swc1       $f0, 0xCC($v0)
/* 9CF64 800E6BA4 E44000DC */  swc1       $f0, 0xDC($v0)
/* 9CF68 800E6BA8 E44000EC */  swc1       $f0, 0xEC($v0)
/* 9CF6C 800E6BAC E4400108 */  swc1       $f0, 0x108($v0)
/* 9CF70 800E6BB0 E440011C */  swc1       $f0, 0x11C($v0)
/* 9CF74 800E6BB4 E4400120 */  swc1       $f0, 0x120($v0)
/* 9CF78 800E6BB8 A0430128 */  sb         $v1, 0x128($v0)
/* 9CF7C 800E6BBC A0430129 */  sb         $v1, 0x129($v0)
/* 9CF80 800E6BC0 A043012A */  sb         $v1, 0x12A($v0)
/* 9CF84 800E6BC4 A043012B */  sb         $v1, 0x12B($v0)
/* 9CF88 800E6BC8 3C038013 */  lui        $v1, %hi(D_race_80132AB0)
/* 9CF8C 800E6BCC 24632AB0 */  addiu      $v1, $v1, %lo(D_race_80132AB0)
/* 9CF90 800E6BD0 AC60000C */  sw         $zero, 0xC($v1)
/* 9CF94 800E6BD4 AC60001C */  sw         $zero, 0x1C($v1)
/* 9CF98 800E6BD8 AC60002C */  sw         $zero, 0x2C($v1)
/* 9CF9C 800E6BDC E460003C */  swc1       $f0, 0x3C($v1)
/* 9CFA0 800E6BE0 AC400118 */  sw         $zero, 0x118($v0)
/* 9CFA4 800E6BE4 8FBF0014 */  lw         $ra, 0x14($sp)
/* 9CFA8 800E6BE8 8FB00010 */  lw         $s0, 0x10($sp)
/* 9CFAC 800E6BEC 03E00008 */  jr         $ra
/* 9CFB0 800E6BF0 27BD0018 */   addiu     $sp, $sp, 0x18

glabel func_race_800E6BF4
/* 9CFB4 800E6BF4 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* 9CFB8 800E6BF8 AFB10014 */  sw         $s1, 0x14($sp)
/* 9CFBC 800E6BFC 00808821 */  addu       $s1, $a0, $zero
/* 9CFC0 800E6C00 AFB00010 */  sw         $s0, 0x10($sp)
/* 9CFC4 800E6C04 AFBF0018 */  sw         $ra, 0x18($sp)
/* 9CFC8 800E6C08 0C039B58 */  jal        func_race_800E6D60
/* 9CFCC 800E6C0C 00A08021 */   addu      $s0, $a1, $zero
/* 9CFD0 800E6C10 32100001 */  andi       $s0, $s0, 0x1
/* 9CFD4 800E6C14 12000003 */  beqz       $s0, .Lrace_800E6C24
/* 9CFD8 800E6C18 00000000 */   nop
/* 9CFDC 800E6C1C 0C01FB5C */  jal        func_8007ED70
/* 9CFE0 800E6C20 02202021 */   addu      $a0, $s1, $zero
.Lrace_800E6C24:
/* 9CFE4 800E6C24 8FBF0018 */  lw         $ra, 0x18($sp)
/* 9CFE8 800E6C28 8FB10014 */  lw         $s1, 0x14($sp)
/* 9CFEC 800E6C2C 8FB00010 */  lw         $s0, 0x10($sp)
/* 9CFF0 800E6C30 03E00008 */  jr         $ra
/* 9CFF4 800E6C34 27BD0020 */   addiu     $sp, $sp, 0x20

glabel func_race_800E6C38
/* 9CFF8 800E6C38 27BDFFC8 */  addiu      $sp, $sp, -0x38
/* 9CFFC 800E6C3C AFB20028 */  sw         $s2, 0x28($sp)
/* 9D000 800E6C40 00809021 */  addu       $s2, $a0, $zero
/* 9D004 800E6C44 AFB00020 */  sw         $s0, 0x20($sp)
/* 9D008 800E6C48 00A08021 */  addu       $s0, $a1, $zero
/* 9D00C 800E6C4C AFB3002C */  sw         $s3, 0x2C($sp)
/* 9D010 800E6C50 00C09821 */  addu       $s3, $a2, $zero
/* 9D014 800E6C54 AFBF0030 */  sw         $ra, 0x30($sp)
/* 9D018 800E6C58 AFB10024 */  sw         $s1, 0x24($sp)
/* 9D01C 800E6C5C 8E420118 */  lw         $v0, 0x118($s2)
/* 9D020 800E6C60 30420001 */  andi       $v0, $v0, 0x1
/* 9D024 800E6C64 10400003 */  beqz       $v0, .Lrace_800E6C74
/* 9D028 800E6C68 00E08821 */   addu      $s1, $a3, $zero
/* 9D02C 800E6C6C 0C039B58 */  jal        func_race_800E6D60
/* 9D030 800E6C70 00000000 */   nop
.Lrace_800E6C74:
/* 9D034 800E6C74 AE500000 */  sw         $s0, 0x0($s2)
/* 9D038 800E6C78 8E020000 */  lw         $v0, 0x0($s0)
/* 9D03C 800E6C7C 84440030 */  lh         $a0, 0x30($v0)
/* 9D040 800E6C80 8C420034 */  lw         $v0, 0x34($v0)
/* 9D044 800E6C84 0040F809 */  jalr       $v0
/* 9D048 800E6C88 02042021 */   addu      $a0, $s0, $a0
/* 9D04C 800E6C8C 00113840 */  sll        $a3, $s1, 1
/* 9D050 800E6C90 AE420004 */  sw         $v0, 0x4($s2)
/* 9D054 800E6C94 00401821 */  addu       $v1, $v0, $zero
/* 9D058 800E6C98 00F13821 */  addu       $a3, $a3, $s1
/* 9D05C 800E6C9C 02602821 */  addu       $a1, $s3, $zero
/* 9D060 800E6CA0 AE5100A4 */  sw         $s1, 0xA4($s2)
/* 9D064 800E6CA4 AE4700A0 */  sw         $a3, 0xA0($s2)
/* 9D068 800E6CA8 8C68003C */  lw         $t0, 0x3C($v1)
/* 9D06C 800E6CAC 24060001 */  addiu      $a2, $zero, 0x1
/* 9D070 800E6CB0 85040048 */  lh         $a0, 0x48($t0)
/* 9D074 800E6CB4 00C73804 */  sllv       $a3, $a3, $a2
/* 9D078 800E6CB8 AFB10010 */  sw         $s1, 0x10($sp)
/* 9D07C 800E6CBC 8E4200A4 */  lw         $v0, 0xA4($s2)
/* 9D080 800E6CC0 00C08821 */  addu       $s1, $a2, $zero
/* 9D084 800E6CC4 AFB10018 */  sw         $s1, 0x18($sp)
/* 9D088 800E6CC8 00C21004 */  sllv       $v0, $v0, $a2
/* 9D08C 800E6CCC 24420002 */  addiu      $v0, $v0, 0x2
/* 9D090 800E6CD0 AFA20014 */  sw         $v0, 0x14($sp)
/* 9D094 800E6CD4 8D02004C */  lw         $v0, 0x4C($t0)
/* 9D098 800E6CD8 0040F809 */  jalr       $v0
/* 9D09C 800E6CDC 00642021 */   addu      $a0, $v1, $a0
/* 9D0A0 800E6CE0 26500010 */  addiu      $s0, $s2, 0x10
/* 9D0A4 800E6CE4 8E450004 */  lw         $a1, 0x4($s2)
/* 9D0A8 800E6CE8 3C067CF0 */  lui        $a2, (0x7CF0BDC2 >> 16)
/* 9D0AC 800E6CEC 34C6BDC2 */  ori        $a2, $a2, (0x7CF0BDC2 & 0xFFFF)
/* 9D0B0 800E6CF0 0C016059 */  jal        func_80058164
/* 9D0B4 800E6CF4 02002021 */   addu      $a0, $s0, $zero
/* 9D0B8 800E6CF8 02002021 */  addu       $a0, $s0, $zero
/* 9D0BC 800E6CFC 3C01800D */  lui        $at, %hi(D_race_800CB988)
/* 9D0C0 800E6D00 C420B988 */  lwc1       $f0, %lo(D_race_800CB988)($at)
/* 9D0C4 800E6D04 2645010C */  addiu      $a1, $s2, 0x10C
/* 9D0C8 800E6D08 AE40010C */  sw         $zero, 0x10C($s2)
/* 9D0CC 800E6D0C AE400110 */  sw         $zero, 0x110($s2)
/* 9D0D0 800E6D10 0C015962 */  jal        func_80056588
/* 9D0D4 800E6D14 E6400114 */   swc1      $f0, 0x114($s2)
/* 9D0D8 800E6D18 8E420004 */  lw         $v0, 0x4($s2)
/* 9D0DC 800E6D1C 3C01800D */  lui        $at, %hi(D_race_800CB98C)
/* 9D0E0 800E6D20 C422B98C */  lwc1       $f2, %lo(D_race_800CB98C)($at)
/* 9D0E4 800E6D24 3C01800D */  lui        $at, %hi(D_race_800CB990)
/* 9D0E8 800E6D28 C424B990 */  lwc1       $f4, %lo(D_race_800CB990)($at)
/* 9D0EC 800E6D2C 3C01800D */  lui        $at, %hi(D_race_800CB994)
/* 9D0F0 800E6D30 C420B994 */  lwc1       $f0, %lo(D_race_800CB994)($at)
/* 9D0F4 800E6D34 E4420034 */  swc1       $f2, 0x34($v0)
/* 9D0F8 800E6D38 E600000C */  swc1       $f0, 0xC($s0)
/* 9D0FC 800E6D3C E6040058 */  swc1       $f4, 0x58($s0)
/* 9D100 800E6D40 AE510118 */  sw         $s1, 0x118($s2)
/* 9D104 800E6D44 8FBF0030 */  lw         $ra, 0x30($sp)
/* 9D108 800E6D48 8FB3002C */  lw         $s3, 0x2C($sp)
/* 9D10C 800E6D4C 8FB20028 */  lw         $s2, 0x28($sp)
/* 9D110 800E6D50 8FB10024 */  lw         $s1, 0x24($sp)
/* 9D114 800E6D54 8FB00020 */  lw         $s0, 0x20($sp)
/* 9D118 800E6D58 03E00008 */  jr         $ra
/* 9D11C 800E6D5C 27BD0038 */   addiu     $sp, $sp, 0x38

glabel func_race_800E6D60
/* 9D120 800E6D60 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 9D124 800E6D64 AFB00010 */  sw         $s0, 0x10($sp)
/* 9D128 800E6D68 00808021 */  addu       $s0, $a0, $zero
/* 9D12C 800E6D6C AFBF0014 */  sw         $ra, 0x14($sp)
/* 9D130 800E6D70 0C01607E */  jal        func_800581F8
/* 9D134 800E6D74 26040010 */   addiu     $a0, $s0, 0x10
/* 9D138 800E6D78 8E030000 */  lw         $v1, 0x0($s0)
/* 9D13C 800E6D7C 5060000B */  beql       $v1, $zero, .Lrace_800E6DAC
/* 9D140 800E6D80 AE000004 */   sw        $zero, 0x4($s0)
/* 9D144 800E6D84 8E050004 */  lw         $a1, 0x4($s0)
/* 9D148 800E6D88 50A00007 */  beql       $a1, $zero, .Lrace_800E6DA8
/* 9D14C 800E6D8C AE000000 */   sw        $zero, 0x0($s0)
/* 9D150 800E6D90 8C620000 */  lw         $v0, 0x0($v1)
/* 9D154 800E6D94 84440098 */  lh         $a0, 0x98($v0)
/* 9D158 800E6D98 8C42009C */  lw         $v0, 0x9C($v0)
/* 9D15C 800E6D9C 0040F809 */  jalr       $v0
/* 9D160 800E6DA0 00642021 */   addu      $a0, $v1, $a0
/* 9D164 800E6DA4 AE000000 */  sw         $zero, 0x0($s0)
.Lrace_800E6DA8:
/* 9D168 800E6DA8 AE000004 */  sw         $zero, 0x4($s0)
.Lrace_800E6DAC:
/* 9D16C 800E6DAC AE000008 */  sw         $zero, 0x8($s0)
/* 9D170 800E6DB0 AE00000C */  sw         $zero, 0xC($s0)
/* 9D174 800E6DB4 AE000118 */  sw         $zero, 0x118($s0)
/* 9D178 800E6DB8 8FBF0014 */  lw         $ra, 0x14($sp)
/* 9D17C 800E6DBC 8FB00010 */  lw         $s0, 0x10($sp)
/* 9D180 800E6DC0 03E00008 */  jr         $ra
/* 9D184 800E6DC4 27BD0018 */   addiu     $sp, $sp, 0x18

glabel func_race_800E6DC8
/* 9D188 800E6DC8 27BDFFD8 */  addiu      $sp, $sp, -0x28
/* 9D18C 800E6DCC AFB00010 */  sw         $s0, 0x10($sp)
/* 9D190 800E6DD0 00808021 */  addu       $s0, $a0, $zero
/* 9D194 800E6DD4 AFB10014 */  sw         $s1, 0x14($sp)
/* 9D198 800E6DD8 00A08821 */  addu       $s1, $a1, $zero
/* 9D19C 800E6DDC AFB20018 */  sw         $s2, 0x18($sp)
/* 9D1A0 800E6DE0 00C09021 */  addu       $s2, $a2, $zero
/* 9D1A4 800E6DE4 AFBF0020 */  sw         $ra, 0x20($sp)
/* 9D1A8 800E6DE8 AFB3001C */  sw         $s3, 0x1C($sp)
/* 9D1AC 800E6DEC C600011C */  lwc1       $f0, 0x11C($s0)
/* 9D1B0 800E6DF0 3C01800D */  lui        $at, %hi(D_race_800CB998)
/* 9D1B4 800E6DF4 C422B998 */  lwc1       $f2, %lo(D_race_800CB998)($at)
/* 9D1B8 800E6DF8 4602003C */  c.lt.s     $f0, $f2
/* 9D1BC 800E6DFC 00000000 */  nop
/* 9D1C0 800E6E00 45010010 */  bc1t       .Lrace_800E6E44
/* 9D1C4 800E6E04 00E09821 */   addu      $s3, $a3, $zero
/* 9D1C8 800E6E08 C6000120 */  lwc1       $f0, 0x120($s0)
/* 9D1CC 800E6E0C 4602003C */  c.lt.s     $f0, $f2
/* 9D1D0 800E6E10 00000000 */  nop
/* 9D1D4 800E6E14 4501000B */  bc1t       .Lrace_800E6E44
/* 9D1D8 800E6E18 00000000 */   nop
/* 9D1DC 800E6E1C 0C039BBE */  jal        func_race_800E6EF8
/* 9D1E0 800E6E20 00000000 */   nop
/* 9D1E4 800E6E24 02002021 */  addu       $a0, $s0, $zero
/* 9D1E8 800E6E28 02202821 */  addu       $a1, $s1, $zero
/* 9D1EC 800E6E2C 02403021 */  addu       $a2, $s2, $zero
/* 9D1F0 800E6E30 0C039C2C */  jal        func_race_800E70B0
/* 9D1F4 800E6E34 02603821 */   addu      $a3, $s3, $zero
/* 9D1F8 800E6E38 02002021 */  addu       $a0, $s0, $zero
/* 9D1FC 800E6E3C 0C039C86 */  jal        func_race_800E7218
/* 9D200 800E6E40 02202821 */   addu      $a1, $s1, $zero
.Lrace_800E6E44:
/* 9D204 800E6E44 8FBF0020 */  lw         $ra, 0x20($sp)
/* 9D208 800E6E48 8FB3001C */  lw         $s3, 0x1C($sp)
/* 9D20C 800E6E4C 8FB20018 */  lw         $s2, 0x18($sp)
/* 9D210 800E6E50 8FB10014 */  lw         $s1, 0x14($sp)
/* 9D214 800E6E54 8FB00010 */  lw         $s0, 0x10($sp)
/* 9D218 800E6E58 03E00008 */  jr         $ra
/* 9D21C 800E6E5C 27BD0028 */   addiu     $sp, $sp, 0x28

glabel func_race_800E6E60
/* 9D220 800E6E60 27BDFFD8 */  addiu      $sp, $sp, -0x28
/* 9D224 800E6E64 AFB3001C */  sw         $s3, 0x1C($sp)
/* 9D228 800E6E68 00809821 */  addu       $s3, $a0, $zero
/* 9D22C 800E6E6C AFB00010 */  sw         $s0, 0x10($sp)
/* 9D230 800E6E70 00A08021 */  addu       $s0, $a1, $zero
/* 9D234 800E6E74 AFBF0020 */  sw         $ra, 0x20($sp)
/* 9D238 800E6E78 AFB20018 */  sw         $s2, 0x18($sp)
/* 9D23C 800E6E7C 0C03A0D6 */  jal        func_race_800E8358
/* 9D240 800E6E80 AFB10014 */   sw        $s1, 0x14($sp)
/* 9D244 800E6E84 3C058013 */  lui        $a1, %hi(D_race_80132AF0)
/* 9D248 800E6E88 24A52AF0 */  addiu      $a1, $a1, %lo(D_race_80132AF0)
/* 9D24C 800E6E8C 24060005 */  addiu      $a2, $zero, 0x5
/* 9D250 800E6E90 8E110090 */  lw         $s1, 0x90($s0)
/* 9D254 800E6E94 8E120078 */  lw         $s2, 0x78($s0)
/* 9D258 800E6E98 0C038557 */  jal        func_race_800E155C
/* 9D25C 800E6E9C 02202021 */   addu      $a0, $s1, $zero
/* 9D260 800E6EA0 02602021 */  addu       $a0, $s3, $zero
/* 9D264 800E6EA4 0C039BBE */  jal        func_race_800E6EF8
/* 9D268 800E6EA8 02402821 */   addu      $a1, $s2, $zero
/* 9D26C 800E6EAC 8E300020 */  lw         $s0, 0x20($s1)
/* 9D270 800E6EB0 12000008 */  beqz       $s0, .Lrace_800E6ED4
/* 9D274 800E6EB4 02602021 */   addu      $a0, $s3, $zero
.Lrace_800E6EB8:
/* 9D278 800E6EB8 8E060000 */  lw         $a2, 0x0($s0)
/* 9D27C 800E6EBC 8E070004 */  lw         $a3, 0x4($s0)
/* 9D280 800E6EC0 0C039C2C */  jal        func_race_800E70B0
/* 9D284 800E6EC4 02402821 */   addu      $a1, $s2, $zero
/* 9D288 800E6EC8 8E10000C */  lw         $s0, 0xC($s0)
/* 9D28C 800E6ECC 1600FFFA */  bnez       $s0, .Lrace_800E6EB8
/* 9D290 800E6ED0 02602021 */   addu      $a0, $s3, $zero
.Lrace_800E6ED4:
/* 9D294 800E6ED4 0C039C86 */  jal        func_race_800E7218
/* 9D298 800E6ED8 02402821 */   addu      $a1, $s2, $zero
/* 9D29C 800E6EDC 8FBF0020 */  lw         $ra, 0x20($sp)
/* 9D2A0 800E6EE0 8FB3001C */  lw         $s3, 0x1C($sp)
/* 9D2A4 800E6EE4 8FB20018 */  lw         $s2, 0x18($sp)
/* 9D2A8 800E6EE8 8FB10014 */  lw         $s1, 0x14($sp)
/* 9D2AC 800E6EEC 8FB00010 */  lw         $s0, 0x10($sp)
/* 9D2B0 800E6EF0 03E00008 */  jr         $ra
/* 9D2B4 800E6EF4 27BD0028 */   addiu     $sp, $sp, 0x28

glabel func_race_800E6EF8
/* 9D2B8 800E6EF8 27BDFFC8 */  addiu      $sp, $sp, -0x38
/* 9D2BC 800E6EFC AFB1002C */  sw         $s1, 0x2C($sp)
/* 9D2C0 800E6F00 00808821 */  addu       $s1, $a0, $zero
/* 9D2C4 800E6F04 AFB20030 */  sw         $s2, 0x30($sp)
/* 9D2C8 800E6F08 00A09021 */  addu       $s2, $a1, $zero
/* 9D2CC 800E6F0C AFBF0034 */  sw         $ra, 0x34($sp)
/* 9D2D0 800E6F10 AFB00028 */  sw         $s0, 0x28($sp)
/* 9D2D4 800E6F14 8E42003C */  lw         $v0, 0x3C($s2)
/* 9D2D8 800E6F18 2625012C */  addiu      $a1, $s1, 0x12C
/* 9D2DC 800E6F1C 84440058 */  lh         $a0, 0x58($v0)
/* 9D2E0 800E6F20 8C42005C */  lw         $v0, 0x5C($v0)
/* 9D2E4 800E6F24 0040F809 */  jalr       $v0
/* 9D2E8 800E6F28 02442021 */   addu      $a0, $s2, $a0
/* 9D2EC 800E6F2C 27B00020 */  addiu      $s0, $sp, 0x20
/* 9D2F0 800E6F30 8E42003C */  lw         $v0, 0x3C($s2)
/* 9D2F4 800E6F34 02002821 */  addu       $a1, $s0, $zero
/* 9D2F8 800E6F38 84440068 */  lh         $a0, 0x68($v0)
/* 9D2FC 800E6F3C 8C42006C */  lw         $v0, 0x6C($v0)
/* 9D300 800E6F40 0040F809 */  jalr       $v0
/* 9D304 800E6F44 02442021 */   addu      $a0, $s2, $a0
/* 9D308 800E6F48 8FA20020 */  lw         $v0, 0x20($sp)
/* 9D30C 800E6F4C 8E230004 */  lw         $v1, 0x4($s1)
/* 9D310 800E6F50 8C420008 */  lw         $v0, 0x8($v0)
/* 9D314 800E6F54 AE220130 */  sw         $v0, 0x130($s1)
/* 9D318 800E6F58 8C62003C */  lw         $v0, 0x3C($v1)
/* 9D31C 800E6F5C 26250008 */  addiu      $a1, $s1, 0x8
/* 9D320 800E6F60 84440058 */  lh         $a0, 0x58($v0)
/* 9D324 800E6F64 8C42005C */  lw         $v0, 0x5C($v0)
/* 9D328 800E6F68 0040F809 */  jalr       $v0
/* 9D32C 800E6F6C 00642021 */   addu      $a0, $v1, $a0
/* 9D330 800E6F70 8E230004 */  lw         $v1, 0x4($s1)
/* 9D334 800E6F74 8C62003C */  lw         $v0, 0x3C($v1)
/* 9D338 800E6F78 02002821 */  addu       $a1, $s0, $zero
/* 9D33C 800E6F7C 84440068 */  lh         $a0, 0x68($v0)
/* 9D340 800E6F80 8C42006C */  lw         $v0, 0x6C($v0)
/* 9D344 800E6F84 0040F809 */  jalr       $v0
/* 9D348 800E6F88 00642021 */   addu      $a0, $v1, $a0
/* 9D34C 800E6F8C 8FA20020 */  lw         $v0, 0x20($sp)
/* 9D350 800E6F90 8E2400C8 */  lw         $a0, 0xC8($s1)
/* 9D354 800E6F94 8C460008 */  lw         $a2, 0x8($v0)
/* 9D358 800E6F98 00801021 */  addu       $v0, $a0, $zero
/* 9D35C 800E6F9C 00401821 */  addu       $v1, $v0, $zero
/* 9D360 800E6FA0 00402821 */  addu       $a1, $v0, $zero
/* 9D364 800E6FA4 AE2400C4 */  sw         $a0, 0xC4($s1)
/* 9D368 800E6FA8 AE2200B0 */  sw         $v0, 0xB0($s1)
/* 9D36C 800E6FAC AE2300A8 */  sw         $v1, 0xA8($s1)
/* 9D370 800E6FB0 14A00004 */  bnez       $a1, .Lrace_800E6FC4
/* 9D374 800E6FB4 AE26000C */   sw        $a2, 0xC($s1)
/* 9D378 800E6FB8 8E2200A0 */  lw         $v0, 0xA0($s1)
/* 9D37C 800E6FBC 08039BF2 */  j          .Lrace_800E6FC8
/* 9D380 800E6FC0 AE2200C8 */   sw        $v0, 0xC8($s1)
.Lrace_800E6FC4:
/* 9D384 800E6FC4 AE2000C8 */  sw         $zero, 0xC8($s1)
.Lrace_800E6FC8:
/* 9D388 800E6FC8 8E240004 */  lw         $a0, 0x4($s1)
/* 9D38C 800E6FCC AE2000B4 */  sw         $zero, 0xB4($s1)
/* 9D390 800E6FD0 AE2000AC */  sw         $zero, 0xAC($s1)
/* 9D394 800E6FD4 AE2000BC */  sw         $zero, 0xBC($s1)
/* 9D398 800E6FD8 AE2000C0 */  sw         $zero, 0xC0($s1)
/* 9D39C 800E6FDC 8C830020 */  lw         $v1, 0x20($a0)
/* 9D3A0 800E6FE0 3C024000 */  lui        $v0, (0x40000000 >> 16)
/* 9D3A4 800E6FE4 AC620000 */  sw         $v0, 0x0($v1)
/* 9D3A8 800E6FE8 8C830020 */  lw         $v1, 0x20($a0)
/* 9D3AC 800E6FEC 8C620000 */  lw         $v0, 0x0($v1)
/* 9D3B0 800E6FF0 24020001 */  addiu      $v0, $zero, 0x1
/* 9D3B4 800E6FF4 AC820038 */  sw         $v0, 0x38($a0)
/* 9D3B8 800E6FF8 C62000F0 */  lwc1       $f0, 0xF0($s1)
/* 9D3BC 800E6FFC C622010C */  lwc1       $f2, 0x10C($s1)
/* 9D3C0 800E7000 46020000 */  add.s      $f0, $f0, $f2
/* 9D3C4 800E7004 AE2200B8 */  sw         $v0, 0xB8($s1)
/* 9D3C8 800E7008 E7A00010 */  swc1       $f0, 0x10($sp)
/* 9D3CC 800E700C C62000F4 */  lwc1       $f0, 0xF4($s1)
/* 9D3D0 800E7010 C6220110 */  lwc1       $f2, 0x110($s1)
/* 9D3D4 800E7014 46020000 */  add.s      $f0, $f0, $f2
/* 9D3D8 800E7018 E7A00014 */  swc1       $f0, 0x14($sp)
/* 9D3DC 800E701C C62200F8 */  lwc1       $f2, 0xF8($s1)
/* 9D3E0 800E7020 C6200114 */  lwc1       $f0, 0x114($s1)
/* 9D3E4 800E7024 46001080 */  add.s      $f2, $f2, $f0
/* 9D3E8 800E7028 27A50010 */  addiu      $a1, $sp, 0x10
/* 9D3EC 800E702C 26240010 */  addiu      $a0, $s1, 0x10
/* 9D3F0 800E7030 0C015962 */  jal        func_80056588
/* 9D3F4 800E7034 E7A20018 */   swc1      $f2, 0x18($sp)
/* 9D3F8 800E7038 C6440034 */  lwc1       $f4, 0x34($s2)
/* 9D3FC 800E703C 3C01800D */  lui        $at, %hi(D_race_800CB99C)
/* 9D400 800E7040 C422B99C */  lwc1       $f2, %lo(D_race_800CB99C)($at)
/* 9D404 800E7044 C62000F0 */  lwc1       $f0, 0xF0($s1)
/* 9D408 800E7048 46041083 */  div.s      $f2, $f2, $f4
/* 9D40C 800E704C 46020002 */  mul.s      $f0, $f0, $f2
/* 9D410 800E7050 262300F0 */  addiu      $v1, $s1, 0xF0
/* 9D414 800E7054 E6220108 */  swc1       $f2, 0x108($s1)
/* 9D418 800E7058 E62000FC */  swc1       $f0, 0xFC($s1)
/* 9D41C 800E705C C4600004 */  lwc1       $f0, 0x4($v1)
/* 9D420 800E7060 46020002 */  mul.s      $f0, $f0, $f2
/* 9D424 800E7064 262200FC */  addiu      $v0, $s1, 0xFC
/* 9D428 800E7068 E4400004 */  swc1       $f0, 0x4($v0)
/* 9D42C 800E706C C4600008 */  lwc1       $f0, 0x8($v1)
/* 9D430 800E7070 46020002 */  mul.s      $f0, $f0, $f2
/* 9D434 800E7074 E4400008 */  swc1       $f0, 0x8($v0)
/* 9D438 800E7078 C6420034 */  lwc1       $f2, 0x34($s2)
/* 9D43C 800E707C 3C01800D */  lui        $at, %hi(D_race_800CB9A0)
/* 9D440 800E7080 C420B9A0 */  lwc1       $f0, %lo(D_race_800CB9A0)($at)
/* 9D444 800E7084 46001082 */  mul.s      $f2, $f2, $f0
/* 9D448 800E7088 8E220004 */  lw         $v0, 0x4($s1)
/* 9D44C 800E708C 02202021 */  addu       $a0, $s1, $zero
/* 9D450 800E7090 0C039D11 */  jal        func_race_800E7444
/* 9D454 800E7094 E4420034 */   swc1      $f2, 0x34($v0)
/* 9D458 800E7098 8FBF0034 */  lw         $ra, 0x34($sp)
/* 9D45C 800E709C 8FB20030 */  lw         $s2, 0x30($sp)
/* 9D460 800E70A0 8FB1002C */  lw         $s1, 0x2C($sp)
/* 9D464 800E70A4 8FB00028 */  lw         $s0, 0x28($sp)
/* 9D468 800E70A8 03E00008 */  jr         $ra
/* 9D46C 800E70AC 27BD0038 */   addiu     $sp, $sp, 0x38

glabel func_race_800E70B0
/* 9D470 800E70B0 27BDFFC8 */  addiu      $sp, $sp, -0x38
/* 9D474 800E70B4 AFB40020 */  sw         $s4, 0x20($sp)
/* 9D478 800E70B8 0080A021 */  addu       $s4, $a0, $zero
/* 9D47C 800E70BC AFB50024 */  sw         $s5, 0x24($sp)
/* 9D480 800E70C0 00A0A821 */  addu       $s5, $a1, $zero
/* 9D484 800E70C4 AFB00010 */  sw         $s0, 0x10($sp)
/* 9D488 800E70C8 00C08021 */  addu       $s0, $a2, $zero
/* 9D48C 800E70CC AFBF0034 */  sw         $ra, 0x34($sp)
/* 9D490 800E70D0 AFBE0030 */  sw         $fp, 0x30($sp)
/* 9D494 800E70D4 AFB7002C */  sw         $s7, 0x2C($sp)
/* 9D498 800E70D8 AFB60028 */  sw         $s6, 0x28($sp)
/* 9D49C 800E70DC AFB3001C */  sw         $s3, 0x1C($sp)
/* 9D4A0 800E70E0 AFB20018 */  sw         $s2, 0x18($sp)
/* 9D4A4 800E70E4 14E00004 */  bnez       $a3, .Lrace_800E70F8
/* 9D4A8 800E70E8 AFB10014 */   sw        $s1, 0x14($sp)
/* 9D4AC 800E70EC 8EA2001C */  lw         $v0, 0x1C($s5)
/* 9D4B0 800E70F0 08039C3F */  j          .Lrace_800E70FC
/* 9D4B4 800E70F4 02029021 */   addu      $s2, $s0, $v0
.Lrace_800E70F8:
/* 9D4B8 800E70F8 02079021 */  addu       $s2, $s0, $a3
.Lrace_800E70FC:
/* 9D4BC 800E70FC 02A0B021 */  addu       $s6, $s5, $zero
/* 9D4C0 800E7100 24110001 */  addiu      $s1, $zero, 0x1
/* 9D4C4 800E7104 3C1E7000 */  lui        $fp, (0x70000000 >> 16)
/* 9D4C8 800E7108 3C131000 */  lui        $s3, (0x10000000 >> 16)
/* 9D4CC 800E710C 3C174000 */  lui        $s7, (0x40000000 >> 16)
.Lrace_800E7110:
/* 9D4D0 800E7110 0212102B */  sltu       $v0, $s0, $s2
.Lrace_800E7114:
/* 9D4D4 800E7114 10400034 */  beqz       $v0, .Lrace_800E71E8
/* 9D4D8 800E7118 02001021 */   addu      $v0, $s0, $zero
/* 9D4DC 800E711C 8EA30020 */  lw         $v1, 0x20($s5)
/* 9D4E0 800E7120 00021080 */  sll        $v0, $v0, 2
/* 9D4E4 800E7124 00431021 */  addu       $v0, $v0, $v1
/* 9D4E8 800E7128 8C470000 */  lw         $a3, 0x0($v0)
/* 9D4EC 800E712C 00FE1824 */  and        $v1, $a3, $fp
/* 9D4F0 800E7130 10730019 */  beq        $v1, $s3, .Lrace_800E7198
/* 9D4F4 800E7134 26100001 */   addiu     $s0, $s0, 0x1
/* 9D4F8 800E7138 0263102B */  sltu       $v0, $s3, $v1
/* 9D4FC 800E713C 14400005 */  bnez       $v0, .Lrace_800E7154
/* 9D500 800E7140 00000000 */   nop
/* 9D504 800E7144 10600009 */  beqz       $v1, .Lrace_800E716C
/* 9D508 800E7148 0212102B */   sltu      $v0, $s0, $s2
/* 9D50C 800E714C 08039C45 */  j          .Lrace_800E7114
/* 9D510 800E7150 00000000 */   nop
.Lrace_800E7154:
/* 9D514 800E7154 10770019 */  beq        $v1, $s7, .Lrace_800E71BC
/* 9D518 800E7158 3C026000 */   lui       $v0, (0x60000000 >> 16)
/* 9D51C 800E715C 10620020 */  beq        $v1, $v0, .Lrace_800E71E0
/* 9D520 800E7160 0212102B */   sltu      $v0, $s0, $s2
/* 9D524 800E7164 08039C45 */  j          .Lrace_800E7114
/* 9D528 800E7168 00000000 */   nop
.Lrace_800E716C:
/* 9D52C 800E716C 1220FFE9 */  beqz       $s1, .Lrace_800E7114
/* 9D530 800E7170 02802021 */   addu      $a0, $s4, $zero
/* 9D534 800E7174 00072D82 */  srl        $a1, $a3, 22
/* 9D538 800E7178 30A5003F */  andi       $a1, $a1, 0x3F
/* 9D53C 800E717C 30E6FFFF */  andi       $a2, $a3, 0xFFFF
/* 9D540 800E7180 00073C02 */  srl        $a3, $a3, 16
/* 9D544 800E7184 30E7003F */  andi       $a3, $a3, 0x3F
/* 9D548 800E7188 0C039D52 */  jal        func_race_800E7548
/* 9D54C 800E718C 24E70001 */   addiu     $a3, $a3, 0x1
/* 9D550 800E7190 08039C45 */  j          .Lrace_800E7114
/* 9D554 800E7194 0212102B */   sltu      $v0, $s0, $s2
.Lrace_800E7198:
/* 9D558 800E7198 1220FFDE */  beqz       $s1, .Lrace_800E7114
/* 9D55C 800E719C 0212102B */   sltu      $v0, $s0, $s2
/* 9D560 800E71A0 02802021 */  addu       $a0, $s4, $zero
/* 9D564 800E71A4 30E5FFFF */  andi       $a1, $a3, 0xFFFF
/* 9D568 800E71A8 00073402 */  srl        $a2, $a3, 16
/* 9D56C 800E71AC 0C039DBE */  jal        func_race_800E76F8
/* 9D570 800E71B0 30C60FFF */   andi      $a2, $a2, 0xFFF
/* 9D574 800E71B4 08039C45 */  j          .Lrace_800E7114
/* 9D578 800E71B8 0212102B */   sltu      $v0, $s0, $s2
.Lrace_800E71BC:
/* 9D57C 800E71BC 30E2FFFF */  andi       $v0, $a3, 0xFFFF
/* 9D580 800E71C0 8EC30008 */  lw         $v1, 0x8($s6)
/* 9D584 800E71C4 00021080 */  sll        $v0, $v0, 2
/* 9D588 800E71C8 00431021 */  addu       $v0, $v0, $v1
/* 9D58C 800E71CC 8C420000 */  lw         $v0, 0x0($v0)
/* 9D590 800E71D0 8C430004 */  lw         $v1, 0x4($v0)
/* 9D594 800E71D4 3C020002 */  lui        $v0, (0x20000 >> 16)
/* 9D598 800E71D8 08039C44 */  j          .Lrace_800E7110
/* 9D59C 800E71DC 00628824 */   and       $s1, $v1, $v0
.Lrace_800E71E0:
/* 9D5A0 800E71E0 08039C44 */  j          .Lrace_800E7110
/* 9D5A4 800E71E4 02408021 */   addu      $s0, $s2, $zero
.Lrace_800E71E8:
/* 9D5A8 800E71E8 8FBF0034 */  lw         $ra, 0x34($sp)
/* 9D5AC 800E71EC 8FBE0030 */  lw         $fp, 0x30($sp)
/* 9D5B0 800E71F0 8FB7002C */  lw         $s7, 0x2C($sp)
/* 9D5B4 800E71F4 8FB60028 */  lw         $s6, 0x28($sp)
/* 9D5B8 800E71F8 8FB50024 */  lw         $s5, 0x24($sp)
/* 9D5BC 800E71FC 8FB40020 */  lw         $s4, 0x20($sp)
/* 9D5C0 800E7200 8FB3001C */  lw         $s3, 0x1C($sp)
/* 9D5C4 800E7204 8FB20018 */  lw         $s2, 0x18($sp)
/* 9D5C8 800E7208 8FB10014 */  lw         $s1, 0x14($sp)
/* 9D5CC 800E720C 8FB00010 */  lw         $s0, 0x10($sp)
/* 9D5D0 800E7210 03E00008 */  jr         $ra
/* 9D5D4 800E7214 27BD0038 */   addiu     $sp, $sp, 0x38

glabel func_race_800E7218
/* 9D5D8 800E7218 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* 9D5DC 800E721C AFB00010 */  sw         $s0, 0x10($sp)
/* 9D5E0 800E7220 00808021 */  addu       $s0, $a0, $zero
/* 9D5E4 800E7224 AFBF0018 */  sw         $ra, 0x18($sp)
/* 9D5E8 800E7228 AFB10014 */  sw         $s1, 0x14($sp)
/* 9D5EC 800E722C 8E0200C0 */  lw         $v0, 0xC0($s0)
/* 9D5F0 800E7230 10400003 */  beqz       $v0, .Lrace_800E7240
/* 9D5F4 800E7234 00A08821 */   addu      $s1, $a1, $zero
/* 9D5F8 800E7238 0C03A08D */  jal        func_race_800E8234
/* 9D5FC 800E723C 00000000 */   nop
.Lrace_800E7240:
/* 9D600 800E7240 8E040004 */  lw         $a0, 0x4($s0)
/* 9D604 800E7244 8E0200B8 */  lw         $v0, 0xB8($s0)
/* 9D608 800E7248 8C830020 */  lw         $v1, 0x20($a0)
/* 9D60C 800E724C 00021080 */  sll        $v0, $v0, 2
/* 9D610 800E7250 00431021 */  addu       $v0, $v0, $v1
/* 9D614 800E7254 3C036000 */  lui        $v1, (0x60000000 >> 16)
/* 9D618 800E7258 AC430000 */  sw         $v1, 0x0($v0)
/* 9D61C 800E725C 24020001 */  addiu      $v0, $zero, 0x1
/* 9D620 800E7260 AC820038 */  sw         $v0, 0x38($a0)
/* 9D624 800E7264 8E030004 */  lw         $v1, 0x4($s0)
/* 9D628 800E7268 8C62003C */  lw         $v0, 0x3C($v1)
/* 9D62C 800E726C 24050001 */  addiu      $a1, $zero, 0x1
/* 9D630 800E7270 84440070 */  lh         $a0, 0x70($v0)
/* 9D634 800E7274 8C420074 */  lw         $v0, 0x74($v0)
/* 9D638 800E7278 0040F809 */  jalr       $v0
/* 9D63C 800E727C 00642021 */   addu      $a0, $v1, $a0
/* 9D640 800E7280 8E030004 */  lw         $v1, 0x4($s0)
/* 9D644 800E7284 24050001 */  addiu      $a1, $zero, 0x1
/* 9D648 800E7288 8C62003C */  lw         $v0, 0x3C($v1)
/* 9D64C 800E728C 00003021 */  addu       $a2, $zero, $zero
/* 9D650 800E7290 84440060 */  lh         $a0, 0x60($v0)
/* 9D654 800E7294 8C420064 */  lw         $v0, 0x64($v0)
/* 9D658 800E7298 0040F809 */  jalr       $v0
/* 9D65C 800E729C 00642021 */   addu      $a0, $v1, $a0
/* 9D660 800E72A0 8E22003C */  lw         $v0, 0x3C($s1)
/* 9D664 800E72A4 00002821 */  addu       $a1, $zero, $zero
/* 9D668 800E72A8 84440070 */  lh         $a0, 0x70($v0)
/* 9D66C 800E72AC 8C420074 */  lw         $v0, 0x74($v0)
/* 9D670 800E72B0 0040F809 */  jalr       $v0
/* 9D674 800E72B4 02242021 */   addu      $a0, $s1, $a0
/* 9D678 800E72B8 00002821 */  addu       $a1, $zero, $zero
/* 9D67C 800E72BC 8E22003C */  lw         $v0, 0x3C($s1)
/* 9D680 800E72C0 00A03021 */  addu       $a2, $a1, $zero
/* 9D684 800E72C4 84440060 */  lh         $a0, 0x60($v0)
/* 9D688 800E72C8 8C420064 */  lw         $v0, 0x64($v0)
/* 9D68C 800E72CC 0040F809 */  jalr       $v0
/* 9D690 800E72D0 02242021 */   addu      $a0, $s1, $a0
/* 9D694 800E72D4 8E0200B4 */  lw         $v0, 0xB4($s0)
/* 9D698 800E72D8 10400004 */  beqz       $v0, .Lrace_800E72EC
/* 9D69C 800E72DC 2403FFFB */   addiu     $v1, $zero, -0x5
/* 9D6A0 800E72E0 8E020118 */  lw         $v0, 0x118($s0)
/* 9D6A4 800E72E4 08039CBD */  j          .Lrace_800E72F4
/* 9D6A8 800E72E8 34420004 */   ori       $v0, $v0, 0x4
.Lrace_800E72EC:
/* 9D6AC 800E72EC 8E020118 */  lw         $v0, 0x118($s0)
/* 9D6B0 800E72F0 00431024 */  and        $v0, $v0, $v1
.Lrace_800E72F4:
/* 9D6B4 800E72F4 AE020118 */  sw         $v0, 0x118($s0)
/* 9D6B8 800E72F8 8FBF0018 */  lw         $ra, 0x18($sp)
/* 9D6BC 800E72FC 8FB10014 */  lw         $s1, 0x14($sp)
/* 9D6C0 800E7300 8FB00010 */  lw         $s0, 0x10($sp)
/* 9D6C4 800E7304 03E00008 */  jr         $ra
/* 9D6C8 800E7308 27BD0020 */   addiu     $sp, $sp, 0x20

glabel func_race_800E730C
/* 9D6CC 800E730C 27BDFFC8 */  addiu      $sp, $sp, -0x38
/* 9D6D0 800E7310 AFB10024 */  sw         $s1, 0x24($sp)
/* 9D6D4 800E7314 00808821 */  addu       $s1, $a0, $zero
/* 9D6D8 800E7318 00A02021 */  addu       $a0, $a1, $zero
/* 9D6DC 800E731C AFB20028 */  sw         $s2, 0x28($sp)
/* 9D6E0 800E7320 263200E4 */  addiu      $s2, $s1, 0xE4
/* 9D6E4 800E7324 02402821 */  addu       $a1, $s2, $zero
/* 9D6E8 800E7328 AFB3002C */  sw         $s3, 0x2C($sp)
/* 9D6EC 800E732C 00C09821 */  addu       $s3, $a2, $zero
/* 9D6F0 800E7330 AFBF0030 */  sw         $ra, 0x30($sp)
/* 9D6F4 800E7334 0C000F26 */  jal        func_80003C98
/* 9D6F8 800E7338 AFB00020 */   sw        $s0, 0x20($sp)
/* 9D6FC 800E733C C6640000 */  lwc1       $f4, 0x0($s3)
/* 9D700 800E7340 C62800E4 */  lwc1       $f8, 0xE4($s1)
/* 9D704 800E7344 46082102 */  mul.s      $f4, $f4, $f8
/* 9D708 800E7348 C6660004 */  lwc1       $f6, 0x4($s3)
/* 9D70C 800E734C C6400004 */  lwc1       $f0, 0x4($s2)
/* 9D710 800E7350 46003182 */  mul.s      $f6, $f6, $f0
/* 9D714 800E7354 C6420008 */  lwc1       $f2, 0x8($s2)
/* 9D718 800E7358 C6600008 */  lwc1       $f0, 0x8($s3)
/* 9D71C 800E735C 46020002 */  mul.s      $f0, $f0, $f2
/* 9D720 800E7360 46062100 */  add.s      $f4, $f4, $f6
/* 9D724 800E7364 46002100 */  add.s      $f4, $f4, $f0
/* 9D728 800E7368 46044202 */  mul.s      $f8, $f8, $f4
/* 9D72C 800E736C E7A80010 */  swc1       $f8, 0x10($sp)
/* 9D730 800E7370 C6400004 */  lwc1       $f0, 0x4($s2)
/* 9D734 800E7374 46040002 */  mul.s      $f0, $f0, $f4
/* 9D738 800E7378 E7A00014 */  swc1       $f0, 0x14($sp)
/* 9D73C 800E737C C6400008 */  lwc1       $f0, 0x8($s2)
/* 9D740 800E7380 46040002 */  mul.s      $f0, $f0, $f4
/* 9D744 800E7384 E7A00018 */  swc1       $f0, 0x18($sp)
/* 9D748 800E7388 C6600000 */  lwc1       $f0, 0x0($s3)
/* 9D74C 800E738C 46080001 */  sub.s      $f0, $f0, $f8
/* 9D750 800E7390 E62000D8 */  swc1       $f0, 0xD8($s1)
/* 9D754 800E7394 C6600004 */  lwc1       $f0, 0x4($s3)
/* 9D758 800E7398 C7A20014 */  lwc1       $f2, 0x14($sp)
/* 9D75C 800E739C 46020001 */  sub.s      $f0, $f0, $f2
/* 9D760 800E73A0 263000D8 */  addiu      $s0, $s1, 0xD8
/* 9D764 800E73A4 E6000004 */  swc1       $f0, 0x4($s0)
/* 9D768 800E73A8 C6620008 */  lwc1       $f2, 0x8($s3)
/* 9D76C 800E73AC C7A00018 */  lwc1       $f0, 0x18($sp)
/* 9D770 800E73B0 46001081 */  sub.s      $f2, $f2, $f0
/* 9D774 800E73B4 02002021 */  addu       $a0, $s0, $zero
/* 9D778 800E73B8 02002821 */  addu       $a1, $s0, $zero
/* 9D77C 800E73BC 0C000F26 */  jal        func_80003C98
/* 9D780 800E73C0 E6020008 */   swc1      $f2, 0x8($s0)
/* 9D784 800E73C4 C6040004 */  lwc1       $f4, 0x4($s0)
/* 9D788 800E73C8 C6400008 */  lwc1       $f0, 0x8($s2)
/* 9D78C 800E73CC 46002102 */  mul.s      $f4, $f4, $f0
/* 9D790 800E73D0 C6420004 */  lwc1       $f2, 0x4($s2)
/* 9D794 800E73D4 C6000008 */  lwc1       $f0, 0x8($s0)
/* 9D798 800E73D8 46020002 */  mul.s      $f0, $f0, $f2
/* 9D79C 800E73DC 46002101 */  sub.s      $f4, $f4, $f0
/* 9D7A0 800E73E0 C62000E4 */  lwc1       $f0, 0xE4($s1)
/* 9D7A4 800E73E4 E62400CC */  swc1       $f4, 0xCC($s1)
/* 9D7A8 800E73E8 C6040008 */  lwc1       $f4, 0x8($s0)
/* 9D7AC 800E73EC 46002102 */  mul.s      $f4, $f4, $f0
/* 9D7B0 800E73F0 C6420008 */  lwc1       $f2, 0x8($s2)
/* 9D7B4 800E73F4 C62000D8 */  lwc1       $f0, 0xD8($s1)
/* 9D7B8 800E73F8 46020002 */  mul.s      $f0, $f0, $f2
/* 9D7BC 800E73FC 46002101 */  sub.s      $f4, $f4, $f0
/* 9D7C0 800E7400 262200CC */  addiu      $v0, $s1, 0xCC
/* 9D7C4 800E7404 E4440004 */  swc1       $f4, 0x4($v0)
/* 9D7C8 800E7408 C62400D8 */  lwc1       $f4, 0xD8($s1)
/* 9D7CC 800E740C C6400004 */  lwc1       $f0, 0x4($s2)
/* 9D7D0 800E7410 46002102 */  mul.s      $f4, $f4, $f0
/* 9D7D4 800E7414 C62200E4 */  lwc1       $f2, 0xE4($s1)
/* 9D7D8 800E7418 C6000004 */  lwc1       $f0, 0x4($s0)
/* 9D7DC 800E741C 46020002 */  mul.s      $f0, $f0, $f2
/* 9D7E0 800E7420 46002101 */  sub.s      $f4, $f4, $f0
/* 9D7E4 800E7424 E4440008 */  swc1       $f4, 0x8($v0)
/* 9D7E8 800E7428 8FBF0030 */  lw         $ra, 0x30($sp)
/* 9D7EC 800E742C 8FB3002C */  lw         $s3, 0x2C($sp)
/* 9D7F0 800E7430 8FB20028 */  lw         $s2, 0x28($sp)
/* 9D7F4 800E7434 8FB10024 */  lw         $s1, 0x24($sp)
/* 9D7F8 800E7438 8FB00020 */  lw         $s0, 0x20($sp)
/* 9D7FC 800E743C 03E00008 */  jr         $ra
/* 9D800 800E7440 27BD0038 */   addiu     $sp, $sp, 0x38

glabel func_race_800E7444
/* 9D804 800E7444 C488011C */  lwc1       $f8, 0x11C($a0)
/* 9D808 800E7448 C4840108 */  lwc1       $f4, 0x108($a0)
/* 9D80C 800E744C 46044202 */  mul.s      $f8, $f8, $f4
/* 9D810 800E7450 3C01800D */  lui        $at, %hi(D_race_800CB9A4)
/* 9D814 800E7454 C42AB9A4 */  lwc1       $f10, %lo(D_race_800CB9A4)($at)
/* 9D818 800E7458 C48000CC */  lwc1       $f0, 0xCC($a0)
/* 9D81C 800E745C 46085203 */  div.s      $f8, $f10, $f8
/* 9D820 800E7460 46080002 */  mul.s      $f0, $f0, $f8
/* 9D824 800E7464 C4820120 */  lwc1       $f2, 0x120($a0)
/* 9D828 800E7468 46041082 */  mul.s      $f2, $f2, $f4
/* 9D82C 800E746C 3C028013 */  lui        $v0, %hi(D_race_80132AB0)
/* 9D830 800E7470 E4402AB0 */  swc1       $f0, %lo(D_race_80132AB0)($v0)
/* 9D834 800E7474 C48000D8 */  lwc1       $f0, 0xD8($a0)
/* 9D838 800E7478 46025283 */  div.s      $f10, $f10, $f2
/* 9D83C 800E747C 460A0002 */  mul.s      $f0, $f0, $f10
/* 9D840 800E7480 24422AB0 */  addiu      $v0, $v0, %lo(D_race_80132AB0)
/* 9D844 800E7484 E4400004 */  swc1       $f0, 0x4($v0)
/* 9D848 800E7488 C48000D0 */  lwc1       $f0, 0xD0($a0)
/* 9D84C 800E748C 46080002 */  mul.s      $f0, $f0, $f8
/* 9D850 800E7490 E4400010 */  swc1       $f0, 0x10($v0)
/* 9D854 800E7494 C48000DC */  lwc1       $f0, 0xDC($a0)
/* 9D858 800E7498 460A0002 */  mul.s      $f0, $f0, $f10
/* 9D85C 800E749C E4400014 */  swc1       $f0, 0x14($v0)
/* 9D860 800E74A0 C48000D4 */  lwc1       $f0, 0xD4($a0)
/* 9D864 800E74A4 46080002 */  mul.s      $f0, $f0, $f8
/* 9D868 800E74A8 E4400020 */  swc1       $f0, 0x20($v0)
/* 9D86C 800E74AC C48000E0 */  lwc1       $f0, 0xE0($a0)
/* 9D870 800E74B0 460A0002 */  mul.s      $f0, $f0, $f10
/* 9D874 800E74B4 E4400024 */  swc1       $f0, 0x24($v0)
/* 9D878 800E74B8 C48000CC */  lwc1       $f0, 0xCC($a0)
/* 9D87C 800E74BC C48200FC */  lwc1       $f2, 0xFC($a0)
/* 9D880 800E74C0 248300CC */  addiu      $v1, $a0, 0xCC
/* 9D884 800E74C4 46020002 */  mul.s      $f0, $f0, $f2
/* 9D888 800E74C8 248500FC */  addiu      $a1, $a0, 0xFC
/* 9D88C 800E74CC C4660004 */  lwc1       $f6, 0x4($v1)
/* 9D890 800E74D0 C4A20004 */  lwc1       $f2, 0x4($a1)
/* 9D894 800E74D4 46023182 */  mul.s      $f6, $f6, $f2
/* 9D898 800E74D8 C4A40008 */  lwc1       $f4, 0x8($a1)
/* 9D89C 800E74DC C4620008 */  lwc1       $f2, 0x8($v1)
/* 9D8A0 800E74E0 46041082 */  mul.s      $f2, $f2, $f4
/* 9D8A4 800E74E4 46060000 */  add.s      $f0, $f0, $f6
/* 9D8A8 800E74E8 46020000 */  add.s      $f0, $f0, $f2
/* 9D8AC 800E74EC 46000007 */  neg.s      $f0, $f0
/* 9D8B0 800E74F0 46080002 */  mul.s      $f0, $f0, $f8
/* 9D8B4 800E74F4 3C01800D */  lui        $at, %hi(D_race_800CB9A8)
/* 9D8B8 800E74F8 C428B9A8 */  lwc1       $f8, %lo(D_race_800CB9A8)($at)
/* 9D8BC 800E74FC 46080000 */  add.s      $f0, $f0, $f8
/* 9D8C0 800E7500 E4400030 */  swc1       $f0, 0x30($v0)
/* 9D8C4 800E7504 C48000D8 */  lwc1       $f0, 0xD8($a0)
/* 9D8C8 800E7508 C48200FC */  lwc1       $f2, 0xFC($a0)
/* 9D8CC 800E750C 46020002 */  mul.s      $f0, $f0, $f2
/* 9D8D0 800E7510 248400D8 */  addiu      $a0, $a0, 0xD8
/* 9D8D4 800E7514 C4860004 */  lwc1       $f6, 0x4($a0)
/* 9D8D8 800E7518 C4A20004 */  lwc1       $f2, 0x4($a1)
/* 9D8DC 800E751C 46023182 */  mul.s      $f6, $f6, $f2
/* 9D8E0 800E7520 C4A40008 */  lwc1       $f4, 0x8($a1)
/* 9D8E4 800E7524 C4820008 */  lwc1       $f2, 0x8($a0)
/* 9D8E8 800E7528 46041082 */  mul.s      $f2, $f2, $f4
/* 9D8EC 800E752C 46060000 */  add.s      $f0, $f0, $f6
/* 9D8F0 800E7530 46020000 */  add.s      $f0, $f0, $f2
/* 9D8F4 800E7534 46000007 */  neg.s      $f0, $f0
/* 9D8F8 800E7538 460A0002 */  mul.s      $f0, $f0, $f10
/* 9D8FC 800E753C 46080000 */  add.s      $f0, $f0, $f8
/* 9D900 800E7540 03E00008 */  jr         $ra
/* 9D904 800E7544 E4400034 */   swc1      $f0, 0x34($v0)

glabel func_race_800E7548
/* 9D908 800E7548 27BDFFC8 */  addiu      $sp, $sp, -0x38
/* 9D90C 800E754C AFBE0030 */  sw         $fp, 0x30($sp)
/* 9D910 800E7550 0080F021 */  addu       $fp, $a0, $zero
/* 9D914 800E7554 AFB20018 */  sw         $s2, 0x18($sp)
/* 9D918 800E7558 00C09021 */  addu       $s2, $a2, $zero
/* 9D91C 800E755C 00052940 */  sll        $a1, $a1, 5
/* 9D920 800E7560 3C028013 */  lui        $v0, %hi(D_race_80132530)
/* 9D924 800E7564 24422530 */  addiu      $v0, $v0, %lo(D_race_80132530)
/* 9D928 800E7568 AFB10014 */  sw         $s1, 0x14($sp)
/* 9D92C 800E756C 00A28821 */  addu       $s1, $a1, $v0
/* 9D930 800E7570 AFB40020 */  sw         $s4, 0x20($sp)
/* 9D934 800E7574 0247A021 */  addu       $s4, $s2, $a3
/* 9D938 800E7578 0254102B */  sltu       $v0, $s2, $s4
/* 9D93C 800E757C AFBF0034 */  sw         $ra, 0x34($sp)
/* 9D940 800E7580 AFB7002C */  sw         $s7, 0x2C($sp)
/* 9D944 800E7584 AFB60028 */  sw         $s6, 0x28($sp)
/* 9D948 800E7588 AFB50024 */  sw         $s5, 0x24($sp)
/* 9D94C 800E758C AFB3001C */  sw         $s3, 0x1C($sp)
/* 9D950 800E7590 1040004D */  beqz       $v0, .Lrace_800E76C8
/* 9D954 800E7594 AFB00010 */   sw        $s0, 0x10($sp)
/* 9D958 800E7598 3C178013 */  lui        $s7, %hi(D_race_80132AB0)
/* 9D95C 800E759C 26F32AB0 */  addiu      $s3, $s7, %lo(D_race_80132AB0)
/* 9D960 800E75A0 3C158000 */  lui        $s5, (0x80000000 >> 16)
/* 9D964 800E75A4 3C163F80 */  lui        $s6, (0x3F800000 >> 16)
/* 9D968 800E75A8 26300014 */  addiu      $s0, $s1, 0x14
.Lrace_800E75AC:
/* 9D96C 800E75AC 8FC2012C */  lw         $v0, 0x12C($fp)
/* 9D970 800E75B0 8C430008 */  lw         $v1, 0x8($v0)
/* 9D974 800E75B4 84640030 */  lh         $a0, 0x30($v1)
/* 9D978 800E75B8 02402821 */  addu       $a1, $s2, $zero
/* 9D97C 800E75BC 00442021 */  addu       $a0, $v0, $a0
/* 9D980 800E75C0 8C620034 */  lw         $v0, 0x34($v1)
/* 9D984 800E75C4 0040F809 */  jalr       $v0
/* 9D988 800E75C8 02203021 */   addu      $a2, $s1, $zero
/* 9D98C 800E75CC C6200000 */  lwc1       $f0, 0x0($s1)
/* 9D990 800E75D0 C6E22AB0 */  lwc1       $f2, %lo(D_race_80132AB0)($s7)
/* 9D994 800E75D4 46020002 */  mul.s      $f0, $f0, $f2
/* 9D998 800E75D8 E600FFF8 */  swc1       $f0, -0x8($s0)
/* 9D99C 800E75DC C6200000 */  lwc1       $f0, 0x0($s1)
/* 9D9A0 800E75E0 C6620004 */  lwc1       $f2, 0x4($s3)
/* 9D9A4 800E75E4 46020002 */  mul.s      $f0, $f0, $f2
/* 9D9A8 800E75E8 C602FFF0 */  lwc1       $f2, -0x10($s0)
/* 9D9AC 800E75EC E600FFFC */  swc1       $f0, -0x4($s0)
/* 9D9B0 800E75F0 C6600010 */  lwc1       $f0, 0x10($s3)
/* 9D9B4 800E75F4 46001082 */  mul.s      $f2, $f2, $f0
/* 9D9B8 800E75F8 C600FFF8 */  lwc1       $f0, -0x8($s0)
/* 9D9BC 800E75FC 46020000 */  add.s      $f0, $f0, $f2
/* 9D9C0 800E7600 C602FFF0 */  lwc1       $f2, -0x10($s0)
/* 9D9C4 800E7604 E600FFF8 */  swc1       $f0, -0x8($s0)
/* 9D9C8 800E7608 C6600014 */  lwc1       $f0, 0x14($s3)
/* 9D9CC 800E760C 46001082 */  mul.s      $f2, $f2, $f0
/* 9D9D0 800E7610 C600FFFC */  lwc1       $f0, -0x4($s0)
/* 9D9D4 800E7614 46020000 */  add.s      $f0, $f0, $f2
/* 9D9D8 800E7618 C602FFF4 */  lwc1       $f2, -0xC($s0)
/* 9D9DC 800E761C E600FFFC */  swc1       $f0, -0x4($s0)
/* 9D9E0 800E7620 C6600020 */  lwc1       $f0, 0x20($s3)
/* 9D9E4 800E7624 46001082 */  mul.s      $f2, $f2, $f0
/* 9D9E8 800E7628 C600FFF8 */  lwc1       $f0, -0x8($s0)
/* 9D9EC 800E762C 46020000 */  add.s      $f0, $f0, $f2
/* 9D9F0 800E7630 C602FFF4 */  lwc1       $f2, -0xC($s0)
/* 9D9F4 800E7634 E600FFF8 */  swc1       $f0, -0x8($s0)
/* 9D9F8 800E7638 C6600024 */  lwc1       $f0, 0x24($s3)
/* 9D9FC 800E763C 46001082 */  mul.s      $f2, $f2, $f0
/* 9DA00 800E7640 C600FFFC */  lwc1       $f0, -0x4($s0)
/* 9DA04 800E7644 46020000 */  add.s      $f0, $f0, $f2
/* 9DA08 800E7648 E600FFFC */  swc1       $f0, -0x4($s0)
/* 9DA0C 800E764C C600FFF8 */  lwc1       $f0, -0x8($s0)
/* 9DA10 800E7650 C6620030 */  lwc1       $f2, 0x30($s3)
/* 9DA14 800E7654 26520001 */  addiu      $s2, $s2, 0x1
/* 9DA18 800E7658 46020000 */  add.s      $f0, $f0, $f2
/* 9DA1C 800E765C C602FFFC */  lwc1       $f2, -0x4($s0)
/* 9DA20 800E7660 26310020 */  addiu      $s1, $s1, 0x20
/* 9DA24 800E7664 E600FFF8 */  swc1       $f0, -0x8($s0)
/* 9DA28 800E7668 8E04FFF8 */  lw         $a0, -0x8($s0)
/* 9DA2C 800E766C C6600034 */  lwc1       $f0, 0x34($s3)
/* 9DA30 800E7670 00042FC2 */  srl        $a1, $a0, 31
/* 9DA34 800E7674 46001080 */  add.s      $f2, $f2, $f0
/* 9DA38 800E7678 02C42023 */  subu       $a0, $s6, $a0
/* 9DA3C 800E767C 00952024 */  and        $a0, $a0, $s5
/* 9DA40 800E7680 E602FFFC */  swc1       $f2, -0x4($s0)
/* 9DA44 800E7684 8E03FFFC */  lw         $v1, -0x4($s0)
/* 9DA48 800E7688 00042782 */  srl        $a0, $a0, 30
/* 9DA4C 800E768C 00751024 */  and        $v0, $v1, $s5
/* 9DA50 800E7690 00021742 */  srl        $v0, $v0, 29
/* 9DA54 800E7694 00A22825 */  or         $a1, $a1, $v0
/* 9DA58 800E7698 02C31823 */  subu       $v1, $s6, $v1
/* 9DA5C 800E769C 00751824 */  and        $v1, $v1, $s5
/* 9DA60 800E76A0 00031F02 */  srl        $v1, $v1, 28
/* 9DA64 800E76A4 00832025 */  or         $a0, $a0, $v1
/* 9DA68 800E76A8 00051040 */  sll        $v0, $a1, 1
/* 9DA6C 800E76AC 00021027 */  nor        $v0, $zero, $v0
/* 9DA70 800E76B0 00822024 */  and        $a0, $a0, $v0
/* 9DA74 800E76B4 00852025 */  or         $a0, $a0, $a1
/* 9DA78 800E76B8 AE040000 */  sw         $a0, 0x0($s0)
/* 9DA7C 800E76BC 0254102B */  sltu       $v0, $s2, $s4
/* 9DA80 800E76C0 1440FFBA */  bnez       $v0, .Lrace_800E75AC
/* 9DA84 800E76C4 26100020 */   addiu     $s0, $s0, 0x20
.Lrace_800E76C8:
/* 9DA88 800E76C8 8FBF0034 */  lw         $ra, 0x34($sp)
/* 9DA8C 800E76CC 8FBE0030 */  lw         $fp, 0x30($sp)
/* 9DA90 800E76D0 8FB7002C */  lw         $s7, 0x2C($sp)
/* 9DA94 800E76D4 8FB60028 */  lw         $s6, 0x28($sp)
/* 9DA98 800E76D8 8FB50024 */  lw         $s5, 0x24($sp)
/* 9DA9C 800E76DC 8FB40020 */  lw         $s4, 0x20($sp)
/* 9DAA0 800E76E0 8FB3001C */  lw         $s3, 0x1C($sp)
/* 9DAA4 800E76E4 8FB20018 */  lw         $s2, 0x18($sp)
/* 9DAA8 800E76E8 8FB10014 */  lw         $s1, 0x14($sp)
/* 9DAAC 800E76EC 8FB00010 */  lw         $s0, 0x10($sp)
/* 9DAB0 800E76F0 03E00008 */  jr         $ra
/* 9DAB4 800E76F4 27BD0038 */   addiu     $sp, $sp, 0x38

glabel func_race_800E76F8
/* 9DAB8 800E76F8 27BDFE78 */  addiu      $sp, $sp, -0x188
/* 9DABC 800E76FC AFBE0170 */  sw         $fp, 0x170($sp)
/* 9DAC0 800E7700 0080F021 */  addu       $fp, $a0, $zero
/* 9DAC4 800E7704 3C028013 */  lui        $v0, %hi(D_race_80132530)
/* 9DAC8 800E7708 AFB40160 */  sw         $s4, 0x160($sp)
/* 9DACC 800E770C 24542530 */  addiu      $s4, $v0, %lo(D_race_80132530)
/* 9DAD0 800E7710 AFB7016C */  sw         $s7, 0x16C($sp)
/* 9DAD4 800E7714 3C178000 */  lui        $s7, (0x80000000 >> 16)
/* 9DAD8 800E7718 00051080 */  sll        $v0, $a1, 2
/* 9DADC 800E771C 00A62821 */  addu       $a1, $a1, $a2
/* 9DAE0 800E7720 F7B40178 */  sdc1       $f20, 0x178($sp)
/* 9DAE4 800E7724 3C01800D */  lui        $at, %hi(D_race_800CB9AC)
/* 9DAE8 800E7728 C434B9AC */  lwc1       $f20, %lo(D_race_800CB9AC)($at)
/* 9DAEC 800E772C 00052880 */  sll        $a1, $a1, 2
/* 9DAF0 800E7730 AFBF0174 */  sw         $ra, 0x174($sp)
/* 9DAF4 800E7734 AFB60168 */  sw         $s6, 0x168($sp)
/* 9DAF8 800E7738 AFB50164 */  sw         $s5, 0x164($sp)
/* 9DAFC 800E773C AFB3015C */  sw         $s3, 0x15C($sp)
/* 9DB00 800E7740 AFB20158 */  sw         $s2, 0x158($sp)
/* 9DB04 800E7744 AFB10154 */  sw         $s1, 0x154($sp)
/* 9DB08 800E7748 AFB00150 */  sw         $s0, 0x150($sp)
/* 9DB0C 800E774C F7B60180 */  sdc1       $f22, 0x180($sp)
/* 9DB10 800E7750 8FC30130 */  lw         $v1, 0x130($fp)
/* 9DB14 800E7754 3C01800D */  lui        $at, %hi(D_race_800CB9B0)
/* 9DB18 800E7758 C436B9B0 */  lwc1       $f22, %lo(D_race_800CB9B0)($at)
/* 9DB1C 800E775C 0062B021 */  addu       $s6, $v1, $v0
/* 9DB20 800E7760 00651821 */  addu       $v1, $v1, $a1
/* 9DB24 800E7764 26D50003 */  addiu      $s5, $s6, 0x3
/* 9DB28 800E7768 AFA30140 */  sw         $v1, 0x140($sp)
.Lrace_800E776C:
/* 9DB2C 800E776C 8FB90140 */  lw         $t9, 0x140($sp)
/* 9DB30 800E7770 02D9102B */  sltu       $v0, $s6, $t9
/* 9DB34 800E7774 104001E8 */  beqz       $v0, .Lrace_800E7F18
/* 9DB38 800E7778 00000000 */   nop
/* 9DB3C 800E777C 92A8FFFE */  lbu        $t0, -0x2($s5)
/* 9DB40 800E7780 92A3FFFF */  lbu        $v1, -0x1($s5)
/* 9DB44 800E7784 00081140 */  sll        $v0, $t0, 5
/* 9DB48 800E7788 00548021 */  addu       $s0, $v0, $s4
/* 9DB4C 800E778C 00031940 */  sll        $v1, $v1, 5
/* 9DB50 800E7790 00743021 */  addu       $a2, $v1, $s4
/* 9DB54 800E7794 92A20000 */  lbu        $v0, 0x0($s5)
/* 9DB58 800E7798 8E050014 */  lw         $a1, 0x14($s0)
/* 9DB5C 800E779C 8CC30014 */  lw         $v1, 0x14($a2)
/* 9DB60 800E77A0 00021140 */  sll        $v0, $v0, 5
/* 9DB64 800E77A4 00543821 */  addu       $a3, $v0, $s4
/* 9DB68 800E77A8 8CE40014 */  lw         $a0, 0x14($a3)
/* 9DB6C 800E77AC 00A31024 */  and        $v0, $a1, $v1
/* 9DB70 800E77B0 00441024 */  and        $v0, $v0, $a0
/* 9DB74 800E77B4 544001D6 */  bnel       $v0, $zero, .Lrace_800E7F10
/* 9DB78 800E77B8 26B50004 */   addiu     $s5, $s5, 0x4
/* 9DB7C 800E77BC C4C4000C */  lwc1       $f4, 0xC($a2)
/* 9DB80 800E77C0 C4E8000C */  lwc1       $f8, 0xC($a3)
/* 9DB84 800E77C4 C6000010 */  lwc1       $f0, 0x10($s0)
/* 9DB88 800E77C8 46082101 */  sub.s      $f4, $f4, $f8
/* 9DB8C 800E77CC C4E60010 */  lwc1       $f6, 0x10($a3)
/* 9DB90 800E77D0 46060001 */  sub.s      $f0, $f0, $f6
/* 9DB94 800E77D4 46002102 */  mul.s      $f4, $f4, $f0
/* 9DB98 800E77D8 C602000C */  lwc1       $f2, 0xC($s0)
/* 9DB9C 800E77DC 46081081 */  sub.s      $f2, $f2, $f8
/* 9DBA0 800E77E0 C4C00010 */  lwc1       $f0, 0x10($a2)
/* 9DBA4 800E77E4 46060001 */  sub.s      $f0, $f0, $f6
/* 9DBA8 800E77E8 46001082 */  mul.s      $f2, $f2, $f0
/* 9DBAC 800E77EC 46022101 */  sub.s      $f4, $f4, $f2
/* 9DBB0 800E77F0 44800000 */  mtc1       $zero, $f0
/* 9DBB4 800E77F4 4600203E */  c.le.s     $f4, $f0
/* 9DBB8 800E77F8 00000000 */  nop
/* 9DBBC 800E77FC 450301C4 */  bc1tl      .Lrace_800E7F10
/* 9DBC0 800E7800 26B50004 */   addiu     $s5, $s5, 0x4
/* 9DBC4 800E7804 00A31025 */  or         $v0, $a1, $v1
/* 9DBC8 800E7808 00441025 */  or         $v0, $v0, $a0
/* 9DBCC 800E780C 14400006 */  bnez       $v0, .Lrace_800E7828
/* 9DBD0 800E7810 AFA20148 */   sw        $v0, 0x148($sp)
/* 9DBD4 800E7814 03C02021 */  addu       $a0, $fp, $zero
/* 9DBD8 800E7818 0C039FD4 */  jal        func_race_800E7F50
/* 9DBDC 800E781C 02002821 */   addu      $a1, $s0, $zero
/* 9DBE0 800E7820 08039FC4 */  j          .Lrace_800E7F10
/* 9DBE4 800E7824 26B50004 */   addiu     $s5, $s5, 0x4
.Lrace_800E7828:
/* 9DBE8 800E7828 240C0020 */  addiu      $t4, $zero, 0x20
/* 9DBEC 800E782C 27AE0010 */  addiu      $t6, $sp, 0x10
/* 9DBF0 800E7830 27B80050 */  addiu      $t8, $sp, 0x50
/* 9DBF4 800E7834 AFA80010 */  sw         $t0, 0x10($sp)
/* 9DBF8 800E7838 92A2FFFF */  lbu        $v0, -0x1($s5)
/* 9DBFC 800E783C 8FB90148 */  lw         $t9, 0x148($sp)
/* 9DC00 800E7840 27AF0090 */  addiu      $t7, $sp, 0x90
/* 9DC04 800E7844 AFA20014 */  sw         $v0, 0x14($sp)
/* 9DC08 800E7848 92A20000 */  lbu        $v0, 0x0($s5)
/* 9DC0C 800E784C 27B300D0 */  addiu      $s3, $sp, 0xD0
/* 9DC10 800E7850 AFA20018 */  sw         $v0, 0x18($sp)
/* 9DC14 800E7854 8E020014 */  lw         $v0, 0x14($s0)
/* 9DC18 800E7858 24110003 */  addiu      $s1, $zero, 0x3
/* 9DC1C 800E785C AFA20090 */  sw         $v0, 0x90($sp)
/* 9DC20 800E7860 8CC20014 */  lw         $v0, 0x14($a2)
/* 9DC24 800E7864 00002821 */  addu       $a1, $zero, $zero
/* 9DC28 800E7868 AFA20094 */  sw         $v0, 0x94($sp)
/* 9DC2C 800E786C 8CE30014 */  lw         $v1, 0x14($a3)
/* 9DC30 800E7870 33220001 */  andi       $v0, $t9, 0x1
/* 9DC34 800E7874 10400065 */  beqz       $v0, .Lrace_800E7A0C
/* 9DC38 800E7878 AFA30098 */   sw        $v1, 0x98($sp)
/* 9DC3C 800E787C 24040002 */  addiu      $a0, $zero, 0x2
/* 9DC40 800E7880 30630001 */  andi       $v1, $v1, 0x1
/* 9DC44 800E7884 00A09021 */  addu       $s2, $a1, $zero
/* 9DC48 800E7888 01E06821 */  addu       $t5, $t7, $zero
/* 9DC4C 800E788C 01C05821 */  addu       $t3, $t6, $zero
/* 9DC50 800E7890 02604821 */  addu       $t1, $s3, $zero
/* 9DC54 800E7894 03004021 */  addu       $t0, $t8, $zero
.Lrace_800E7898:
/* 9DC58 800E7898 0251102A */  slt        $v0, $s2, $s1
/* 9DC5C 800E789C 10400054 */  beqz       $v0, .Lrace_800E79F0
/* 9DC60 800E78A0 01C01021 */   addu      $v0, $t6, $zero
/* 9DC64 800E78A4 8DA20000 */  lw         $v0, 0x0($t5)
/* 9DC68 800E78A8 304A0001 */  andi       $t2, $v0, 0x1
/* 9DC6C 800E78AC 106A0042 */  beq        $v1, $t2, .Lrace_800E79B8
/* 9DC70 800E78B0 00041080 */   sll       $v0, $a0, 2
/* 9DC74 800E78B4 004E1021 */  addu       $v0, $v0, $t6
/* 9DC78 800E78B8 8C420000 */  lw         $v0, 0x0($v0)
/* 9DC7C 800E78BC 8D630000 */  lw         $v1, 0x0($t3)
/* 9DC80 800E78C0 00021140 */  sll        $v0, $v0, 5
/* 9DC84 800E78C4 00548021 */  addu       $s0, $v0, $s4
/* 9DC88 800E78C8 00031940 */  sll        $v1, $v1, 5
/* 9DC8C 800E78CC 00743021 */  addu       $a2, $v1, $s4
/* 9DC90 800E78D0 000C1140 */  sll        $v0, $t4, 5
/* 9DC94 800E78D4 C604000C */  lwc1       $f4, 0xC($s0)
/* 9DC98 800E78D8 C4C0000C */  lwc1       $f0, 0xC($a2)
/* 9DC9C 800E78DC 00543821 */  addu       $a3, $v0, $s4
/* 9DCA0 800E78E0 AD0C0000 */  sw         $t4, 0x0($t0)
/* 9DCA4 800E78E4 ACE0000C */  sw         $zero, 0xC($a3)
/* 9DCA8 800E78E8 C4C20000 */  lwc1       $f2, 0x0($a2)
/* 9DCAC 800E78EC 46002181 */  sub.s      $f6, $f4, $f0
/* 9DCB0 800E78F0 C6000000 */  lwc1       $f0, 0x0($s0)
/* 9DCB4 800E78F4 46001081 */  sub.s      $f2, $f2, $f0
/* 9DCB8 800E78F8 46062203 */  div.s      $f8, $f4, $f6
/* 9DCBC 800E78FC 46081102 */  mul.s      $f4, $f2, $f8
/* 9DCC0 800E7900 E7A20110 */  swc1       $f2, 0x110($sp)
/* 9DCC4 800E7904 C4C20004 */  lwc1       $f2, 0x4($a2)
/* 9DCC8 800E7908 C6000004 */  lwc1       $f0, 0x4($s0)
/* 9DCCC 800E790C 46001081 */  sub.s      $f2, $f2, $f0
/* 9DCD0 800E7910 46081182 */  mul.s      $f6, $f2, $f8
/* 9DCD4 800E7914 E7A20114 */  swc1       $f2, 0x114($sp)
/* 9DCD8 800E7918 C4C20008 */  lwc1       $f2, 0x8($a2)
/* 9DCDC 800E791C C6000008 */  lwc1       $f0, 0x8($s0)
/* 9DCE0 800E7920 46001081 */  sub.s      $f2, $f2, $f0
/* 9DCE4 800E7924 46081002 */  mul.s      $f0, $f2, $f8
/* 9DCE8 800E7928 E7A40120 */  swc1       $f4, 0x120($sp)
/* 9DCEC 800E792C E7A20118 */  swc1       $f2, 0x118($sp)
/* 9DCF0 800E7930 E7A60124 */  swc1       $f6, 0x124($sp)
/* 9DCF4 800E7934 E7A00128 */  swc1       $f0, 0x128($sp)
/* 9DCF8 800E7938 C6000000 */  lwc1       $f0, 0x0($s0)
/* 9DCFC 800E793C 46040000 */  add.s      $f0, $f0, $f4
/* 9DD00 800E7940 E4E00000 */  swc1       $f0, 0x0($a3)
/* 9DD04 800E7944 C6000004 */  lwc1       $f0, 0x4($s0)
/* 9DD08 800E7948 C7A20124 */  lwc1       $f2, 0x124($sp)
/* 9DD0C 800E794C 46020000 */  add.s      $f0, $f0, $f2
/* 9DD10 800E7950 E4E00004 */  swc1       $f0, 0x4($a3)
/* 9DD14 800E7954 C6000008 */  lwc1       $f0, 0x8($s0)
/* 9DD18 800E7958 C7A20128 */  lwc1       $f2, 0x128($sp)
/* 9DD1C 800E795C 46020000 */  add.s      $f0, $f0, $f2
/* 9DD20 800E7960 E4E00008 */  swc1       $f0, 0x8($a3)
/* 9DD24 800E7964 C4C00010 */  lwc1       $f0, 0x10($a2)
/* 9DD28 800E7968 C6020010 */  lwc1       $f2, 0x10($s0)
/* 9DD2C 800E796C 46020001 */  sub.s      $f0, $f0, $f2
/* 9DD30 800E7970 46004002 */  mul.s      $f0, $f8, $f0
/* 9DD34 800E7974 24A50001 */  addiu      $a1, $a1, 0x1
/* 9DD38 800E7978 46001080 */  add.s      $f2, $f2, $f0
/* 9DD3C 800E797C 3C193F80 */  lui        $t9, (0x3F800000 >> 16)
/* 9DD40 800E7980 258C0001 */  addiu      $t4, $t4, 0x1
/* 9DD44 800E7984 E4E20010 */  swc1       $f2, 0x10($a3)
/* 9DD48 800E7988 8CE30010 */  lw         $v1, 0x10($a3)
/* 9DD4C 800E798C 25080004 */  addiu      $t0, $t0, 0x4
/* 9DD50 800E7990 00772024 */  and        $a0, $v1, $s7
/* 9DD54 800E7994 00042742 */  srl        $a0, $a0, 29
/* 9DD58 800E7998 03231023 */  subu       $v0, $t9, $v1
/* 9DD5C 800E799C 00571024 */  and        $v0, $v0, $s7
/* 9DD60 800E79A0 00031827 */  nor        $v1, $zero, $v1
/* 9DD64 800E79A4 00431024 */  and        $v0, $v0, $v1
/* 9DD68 800E79A8 00021702 */  srl        $v0, $v0, 28
/* 9DD6C 800E79AC 00822025 */  or         $a0, $a0, $v0
/* 9DD70 800E79B0 AD240000 */  sw         $a0, 0x0($t1)
/* 9DD74 800E79B4 25290004 */  addiu      $t1, $t1, 0x4
.Lrace_800E79B8:
/* 9DD78 800E79B8 15400008 */  bnez       $t2, .Lrace_800E79DC
/* 9DD7C 800E79BC 02402021 */   addu      $a0, $s2, $zero
/* 9DD80 800E79C0 8D620000 */  lw         $v0, 0x0($t3)
/* 9DD84 800E79C4 24A50001 */  addiu      $a1, $a1, 0x1
/* 9DD88 800E79C8 AD020000 */  sw         $v0, 0x0($t0)
/* 9DD8C 800E79CC 8DA20000 */  lw         $v0, 0x0($t5)
/* 9DD90 800E79D0 25080004 */  addiu      $t0, $t0, 0x4
/* 9DD94 800E79D4 AD220000 */  sw         $v0, 0x0($t1)
/* 9DD98 800E79D8 25290004 */  addiu      $t1, $t1, 0x4
.Lrace_800E79DC:
/* 9DD9C 800E79DC 01401821 */  addu       $v1, $t2, $zero
/* 9DDA0 800E79E0 25AD0004 */  addiu      $t5, $t5, 0x4
/* 9DDA4 800E79E4 256B0004 */  addiu      $t3, $t3, 0x4
/* 9DDA8 800E79E8 08039E26 */  j          .Lrace_800E7898
/* 9DDAC 800E79EC 26520001 */   addiu     $s2, $s2, 0x1
.Lrace_800E79F0:
/* 9DDB0 800E79F0 03007021 */  addu       $t6, $t8, $zero
/* 9DDB4 800E79F4 0040C021 */  addu       $t8, $v0, $zero
/* 9DDB8 800E79F8 01E01021 */  addu       $v0, $t7, $zero
/* 9DDBC 800E79FC 02607821 */  addu       $t7, $s3, $zero
/* 9DDC0 800E7A00 00409821 */  addu       $s3, $v0, $zero
/* 9DDC4 800E7A04 00A08821 */  addu       $s1, $a1, $zero
/* 9DDC8 800E7A08 00002821 */  addu       $a1, $zero, $zero
.Lrace_800E7A0C:
/* 9DDCC 800E7A0C 8FB90148 */  lw         $t9, 0x148($sp)
/* 9DDD0 800E7A10 33220002 */  andi       $v0, $t9, 0x2
/* 9DDD4 800E7A14 1040006A */  beqz       $v0, .Lrace_800E7BC0
/* 9DDD8 800E7A18 2624FFFF */   addiu     $a0, $s1, -0x1
/* 9DDDC 800E7A1C 00009021 */  addu       $s2, $zero, $zero
/* 9DDE0 800E7A20 01E06821 */  addu       $t5, $t7, $zero
/* 9DDE4 800E7A24 01C05821 */  addu       $t3, $t6, $zero
/* 9DDE8 800E7A28 00051080 */  sll        $v0, $a1, 2
/* 9DDEC 800E7A2C 00534821 */  addu       $t1, $v0, $s3
/* 9DDF0 800E7A30 00041880 */  sll        $v1, $a0, 2
/* 9DDF4 800E7A34 006F1821 */  addu       $v1, $v1, $t7
/* 9DDF8 800E7A38 8C630000 */  lw         $v1, 0x0($v1)
/* 9DDFC 800E7A3C 00584021 */  addu       $t0, $v0, $t8
/* 9DE00 800E7A40 30630002 */  andi       $v1, $v1, 0x2
.Lrace_800E7A44:
/* 9DE04 800E7A44 0251102A */  slt        $v0, $s2, $s1
/* 9DE08 800E7A48 10400055 */  beqz       $v0, .Lrace_800E7BA0
/* 9DE0C 800E7A4C 01C01021 */   addu      $v0, $t6, $zero
/* 9DE10 800E7A50 8DA20000 */  lw         $v0, 0x0($t5)
/* 9DE14 800E7A54 304A0002 */  andi       $t2, $v0, 0x2
/* 9DE18 800E7A58 106A0043 */  beq        $v1, $t2, .Lrace_800E7B68
/* 9DE1C 800E7A5C 00041080 */   sll       $v0, $a0, 2
/* 9DE20 800E7A60 004E1021 */  addu       $v0, $v0, $t6
/* 9DE24 800E7A64 8C420000 */  lw         $v0, 0x0($v0)
/* 9DE28 800E7A68 8D630000 */  lw         $v1, 0x0($t3)
/* 9DE2C 800E7A6C 00021140 */  sll        $v0, $v0, 5
/* 9DE30 800E7A70 00548021 */  addu       $s0, $v0, $s4
/* 9DE34 800E7A74 00031940 */  sll        $v1, $v1, 5
/* 9DE38 800E7A78 00743021 */  addu       $a2, $v1, $s4
/* 9DE3C 800E7A7C 000C1140 */  sll        $v0, $t4, 5
/* 9DE40 800E7A80 C4C0000C */  lwc1       $f0, 0xC($a2)
/* 9DE44 800E7A84 C604000C */  lwc1       $f4, 0xC($s0)
/* 9DE48 800E7A88 00543821 */  addu       $a3, $v0, $s4
/* 9DE4C 800E7A8C AD0C0000 */  sw         $t4, 0x0($t0)
/* 9DE50 800E7A90 46040181 */  sub.s      $f6, $f0, $f4
/* 9DE54 800E7A94 E4F6000C */  swc1       $f22, 0xC($a3)
/* 9DE58 800E7A98 C4C20000 */  lwc1       $f2, 0x0($a2)
/* 9DE5C 800E7A9C 4604A101 */  sub.s      $f4, $f20, $f4
/* 9DE60 800E7AA0 C6000000 */  lwc1       $f0, 0x0($s0)
/* 9DE64 800E7AA4 46001081 */  sub.s      $f2, $f2, $f0
/* 9DE68 800E7AA8 46062203 */  div.s      $f8, $f4, $f6
/* 9DE6C 800E7AAC 46081102 */  mul.s      $f4, $f2, $f8
/* 9DE70 800E7AB0 E7A20110 */  swc1       $f2, 0x110($sp)
/* 9DE74 800E7AB4 C4C20004 */  lwc1       $f2, 0x4($a2)
/* 9DE78 800E7AB8 C6000004 */  lwc1       $f0, 0x4($s0)
/* 9DE7C 800E7ABC 46001081 */  sub.s      $f2, $f2, $f0
/* 9DE80 800E7AC0 46081182 */  mul.s      $f6, $f2, $f8
/* 9DE84 800E7AC4 E7A20114 */  swc1       $f2, 0x114($sp)
/* 9DE88 800E7AC8 C4C20008 */  lwc1       $f2, 0x8($a2)
/* 9DE8C 800E7ACC C6000008 */  lwc1       $f0, 0x8($s0)
/* 9DE90 800E7AD0 46001081 */  sub.s      $f2, $f2, $f0
/* 9DE94 800E7AD4 46081002 */  mul.s      $f0, $f2, $f8
/* 9DE98 800E7AD8 E7A40130 */  swc1       $f4, 0x130($sp)
/* 9DE9C 800E7ADC E7A20118 */  swc1       $f2, 0x118($sp)
/* 9DEA0 800E7AE0 E7A60134 */  swc1       $f6, 0x134($sp)
/* 9DEA4 800E7AE4 E7A00138 */  swc1       $f0, 0x138($sp)
/* 9DEA8 800E7AE8 C6000000 */  lwc1       $f0, 0x0($s0)
/* 9DEAC 800E7AEC 46040000 */  add.s      $f0, $f0, $f4
/* 9DEB0 800E7AF0 E4E00000 */  swc1       $f0, 0x0($a3)
/* 9DEB4 800E7AF4 C6000004 */  lwc1       $f0, 0x4($s0)
/* 9DEB8 800E7AF8 C7A20134 */  lwc1       $f2, 0x134($sp)
/* 9DEBC 800E7AFC 46020000 */  add.s      $f0, $f0, $f2
/* 9DEC0 800E7B00 E4E00004 */  swc1       $f0, 0x4($a3)
/* 9DEC4 800E7B04 C6000008 */  lwc1       $f0, 0x8($s0)
/* 9DEC8 800E7B08 C7A20138 */  lwc1       $f2, 0x138($sp)
/* 9DECC 800E7B0C 46020000 */  add.s      $f0, $f0, $f2
/* 9DED0 800E7B10 E4E00008 */  swc1       $f0, 0x8($a3)
/* 9DED4 800E7B14 C4C00010 */  lwc1       $f0, 0x10($a2)
/* 9DED8 800E7B18 C6020010 */  lwc1       $f2, 0x10($s0)
/* 9DEDC 800E7B1C 46020001 */  sub.s      $f0, $f0, $f2
/* 9DEE0 800E7B20 46004002 */  mul.s      $f0, $f8, $f0
/* 9DEE4 800E7B24 24A50001 */  addiu      $a1, $a1, 0x1
/* 9DEE8 800E7B28 46001080 */  add.s      $f2, $f2, $f0
/* 9DEEC 800E7B2C 3C193F80 */  lui        $t9, (0x3F800000 >> 16)
/* 9DEF0 800E7B30 258C0001 */  addiu      $t4, $t4, 0x1
/* 9DEF4 800E7B34 E4E20010 */  swc1       $f2, 0x10($a3)
/* 9DEF8 800E7B38 8CE30010 */  lw         $v1, 0x10($a3)
/* 9DEFC 800E7B3C 25080004 */  addiu      $t0, $t0, 0x4
/* 9DF00 800E7B40 00772024 */  and        $a0, $v1, $s7
/* 9DF04 800E7B44 00042742 */  srl        $a0, $a0, 29
/* 9DF08 800E7B48 03231023 */  subu       $v0, $t9, $v1
/* 9DF0C 800E7B4C 00571024 */  and        $v0, $v0, $s7
/* 9DF10 800E7B50 00031827 */  nor        $v1, $zero, $v1
/* 9DF14 800E7B54 00431024 */  and        $v0, $v0, $v1
/* 9DF18 800E7B58 00021702 */  srl        $v0, $v0, 28
/* 9DF1C 800E7B5C 00822025 */  or         $a0, $a0, $v0
/* 9DF20 800E7B60 AD240000 */  sw         $a0, 0x0($t1)
/* 9DF24 800E7B64 25290004 */  addiu      $t1, $t1, 0x4
.Lrace_800E7B68:
/* 9DF28 800E7B68 15400008 */  bnez       $t2, .Lrace_800E7B8C
/* 9DF2C 800E7B6C 02402021 */   addu      $a0, $s2, $zero
/* 9DF30 800E7B70 8D620000 */  lw         $v0, 0x0($t3)
/* 9DF34 800E7B74 24A50001 */  addiu      $a1, $a1, 0x1
/* 9DF38 800E7B78 AD020000 */  sw         $v0, 0x0($t0)
/* 9DF3C 800E7B7C 8DA20000 */  lw         $v0, 0x0($t5)
/* 9DF40 800E7B80 25080004 */  addiu      $t0, $t0, 0x4
/* 9DF44 800E7B84 AD220000 */  sw         $v0, 0x0($t1)
/* 9DF48 800E7B88 25290004 */  addiu      $t1, $t1, 0x4
.Lrace_800E7B8C:
/* 9DF4C 800E7B8C 01401821 */  addu       $v1, $t2, $zero
/* 9DF50 800E7B90 25AD0004 */  addiu      $t5, $t5, 0x4
/* 9DF54 800E7B94 256B0004 */  addiu      $t3, $t3, 0x4
/* 9DF58 800E7B98 08039E91 */  j          .Lrace_800E7A44
/* 9DF5C 800E7B9C 26520001 */   addiu     $s2, $s2, 0x1
.Lrace_800E7BA0:
/* 9DF60 800E7BA0 03007021 */  addu       $t6, $t8, $zero
/* 9DF64 800E7BA4 0040C021 */  addu       $t8, $v0, $zero
/* 9DF68 800E7BA8 01E01021 */  addu       $v0, $t7, $zero
/* 9DF6C 800E7BAC 02607821 */  addu       $t7, $s3, $zero
/* 9DF70 800E7BB0 00409821 */  addu       $s3, $v0, $zero
/* 9DF74 800E7BB4 00A08821 */  addu       $s1, $a1, $zero
/* 9DF78 800E7BB8 00002821 */  addu       $a1, $zero, $zero
/* 9DF7C 800E7BBC 8FB90148 */  lw         $t9, 0x148($sp)
.Lrace_800E7BC0:
/* 9DF80 800E7BC0 33220004 */  andi       $v0, $t9, 0x4
/* 9DF84 800E7BC4 1040005E */  beqz       $v0, .Lrace_800E7D40
/* 9DF88 800E7BC8 2624FFFF */   addiu     $a0, $s1, -0x1
/* 9DF8C 800E7BCC 00009021 */  addu       $s2, $zero, $zero
/* 9DF90 800E7BD0 01E06821 */  addu       $t5, $t7, $zero
/* 9DF94 800E7BD4 01C05821 */  addu       $t3, $t6, $zero
/* 9DF98 800E7BD8 00051080 */  sll        $v0, $a1, 2
/* 9DF9C 800E7BDC 00534821 */  addu       $t1, $v0, $s3
/* 9DFA0 800E7BE0 00041880 */  sll        $v1, $a0, 2
/* 9DFA4 800E7BE4 006F1821 */  addu       $v1, $v1, $t7
/* 9DFA8 800E7BE8 8C630000 */  lw         $v1, 0x0($v1)
/* 9DFAC 800E7BEC 00584021 */  addu       $t0, $v0, $t8
/* 9DFB0 800E7BF0 30630004 */  andi       $v1, $v1, 0x4
.Lrace_800E7BF4:
/* 9DFB4 800E7BF4 0251102A */  slt        $v0, $s2, $s1
/* 9DFB8 800E7BF8 1040004A */  beqz       $v0, .Lrace_800E7D24
/* 9DFBC 800E7BFC 01C01021 */   addu      $v0, $t6, $zero
/* 9DFC0 800E7C00 8DA20000 */  lw         $v0, 0x0($t5)
/* 9DFC4 800E7C04 304A0004 */  andi       $t2, $v0, 0x4
/* 9DFC8 800E7C08 106A0038 */  beq        $v1, $t2, .Lrace_800E7CEC
/* 9DFCC 800E7C0C 00041080 */   sll       $v0, $a0, 2
/* 9DFD0 800E7C10 004E1021 */  addu       $v0, $v0, $t6
/* 9DFD4 800E7C14 8C420000 */  lw         $v0, 0x0($v0)
/* 9DFD8 800E7C18 8D630000 */  lw         $v1, 0x0($t3)
/* 9DFDC 800E7C1C 00021140 */  sll        $v0, $v0, 5
/* 9DFE0 800E7C20 00548021 */  addu       $s0, $v0, $s4
/* 9DFE4 800E7C24 00031940 */  sll        $v1, $v1, 5
/* 9DFE8 800E7C28 00743021 */  addu       $a2, $v1, $s4
/* 9DFEC 800E7C2C 000C1140 */  sll        $v0, $t4, 5
/* 9DFF0 800E7C30 C6040010 */  lwc1       $f4, 0x10($s0)
/* 9DFF4 800E7C34 C4C00010 */  lwc1       $f0, 0x10($a2)
/* 9DFF8 800E7C38 00543821 */  addu       $a3, $v0, $s4
/* 9DFFC 800E7C3C AD0C0000 */  sw         $t4, 0x0($t0)
/* 9E000 800E7C40 ACE00010 */  sw         $zero, 0x10($a3)
/* 9E004 800E7C44 C4C20000 */  lwc1       $f2, 0x0($a2)
/* 9E008 800E7C48 46002181 */  sub.s      $f6, $f4, $f0
/* 9E00C 800E7C4C C6000000 */  lwc1       $f0, 0x0($s0)
/* 9E010 800E7C50 46001081 */  sub.s      $f2, $f2, $f0
/* 9E014 800E7C54 46062203 */  div.s      $f8, $f4, $f6
/* 9E018 800E7C58 46081102 */  mul.s      $f4, $f2, $f8
/* 9E01C 800E7C5C E7A20110 */  swc1       $f2, 0x110($sp)
/* 9E020 800E7C60 C4C20004 */  lwc1       $f2, 0x4($a2)
/* 9E024 800E7C64 C6000004 */  lwc1       $f0, 0x4($s0)
/* 9E028 800E7C68 46001081 */  sub.s      $f2, $f2, $f0
/* 9E02C 800E7C6C 46081182 */  mul.s      $f6, $f2, $f8
/* 9E030 800E7C70 E7A20114 */  swc1       $f2, 0x114($sp)
/* 9E034 800E7C74 C4C20008 */  lwc1       $f2, 0x8($a2)
/* 9E038 800E7C78 C6000008 */  lwc1       $f0, 0x8($s0)
/* 9E03C 800E7C7C 46001081 */  sub.s      $f2, $f2, $f0
/* 9E040 800E7C80 46081002 */  mul.s      $f0, $f2, $f8
/* 9E044 800E7C84 E7A40120 */  swc1       $f4, 0x120($sp)
/* 9E048 800E7C88 E7A20118 */  swc1       $f2, 0x118($sp)
/* 9E04C 800E7C8C E7A60124 */  swc1       $f6, 0x124($sp)
/* 9E050 800E7C90 E7A00128 */  swc1       $f0, 0x128($sp)
/* 9E054 800E7C94 C6000000 */  lwc1       $f0, 0x0($s0)
/* 9E058 800E7C98 46040000 */  add.s      $f0, $f0, $f4
/* 9E05C 800E7C9C E4E00000 */  swc1       $f0, 0x0($a3)
/* 9E060 800E7CA0 C6000004 */  lwc1       $f0, 0x4($s0)
/* 9E064 800E7CA4 C7A20124 */  lwc1       $f2, 0x124($sp)
/* 9E068 800E7CA8 46020000 */  add.s      $f0, $f0, $f2
/* 9E06C 800E7CAC E4E00004 */  swc1       $f0, 0x4($a3)
/* 9E070 800E7CB0 C6000008 */  lwc1       $f0, 0x8($s0)
/* 9E074 800E7CB4 C7A20128 */  lwc1       $f2, 0x128($sp)
/* 9E078 800E7CB8 46020000 */  add.s      $f0, $f0, $f2
/* 9E07C 800E7CBC E4E00008 */  swc1       $f0, 0x8($a3)
/* 9E080 800E7CC0 C4C0000C */  lwc1       $f0, 0xC($a2)
/* 9E084 800E7CC4 C602000C */  lwc1       $f2, 0xC($s0)
/* 9E088 800E7CC8 46020001 */  sub.s      $f0, $f0, $f2
/* 9E08C 800E7CCC 46004002 */  mul.s      $f0, $f8, $f0
/* 9E090 800E7CD0 24A50001 */  addiu      $a1, $a1, 0x1
/* 9E094 800E7CD4 46001080 */  add.s      $f2, $f2, $f0
/* 9E098 800E7CD8 258C0001 */  addiu      $t4, $t4, 0x1
/* 9E09C 800E7CDC 25080004 */  addiu      $t0, $t0, 0x4
/* 9E0A0 800E7CE0 E4E2000C */  swc1       $f2, 0xC($a3)
/* 9E0A4 800E7CE4 AD200000 */  sw         $zero, 0x0($t1)
/* 9E0A8 800E7CE8 25290004 */  addiu      $t1, $t1, 0x4
.Lrace_800E7CEC:
/* 9E0AC 800E7CEC 15400008 */  bnez       $t2, .Lrace_800E7D10
/* 9E0B0 800E7CF0 02402021 */   addu      $a0, $s2, $zero
/* 9E0B4 800E7CF4 8D620000 */  lw         $v0, 0x0($t3)
/* 9E0B8 800E7CF8 24A50001 */  addiu      $a1, $a1, 0x1
/* 9E0BC 800E7CFC AD020000 */  sw         $v0, 0x0($t0)
/* 9E0C0 800E7D00 8DA20000 */  lw         $v0, 0x0($t5)
/* 9E0C4 800E7D04 25080004 */  addiu      $t0, $t0, 0x4
/* 9E0C8 800E7D08 AD220000 */  sw         $v0, 0x0($t1)
/* 9E0CC 800E7D0C 25290004 */  addiu      $t1, $t1, 0x4
.Lrace_800E7D10:
/* 9E0D0 800E7D10 01401821 */  addu       $v1, $t2, $zero
/* 9E0D4 800E7D14 25AD0004 */  addiu      $t5, $t5, 0x4
/* 9E0D8 800E7D18 256B0004 */  addiu      $t3, $t3, 0x4
/* 9E0DC 800E7D1C 08039EFD */  j          .Lrace_800E7BF4
/* 9E0E0 800E7D20 26520001 */   addiu     $s2, $s2, 0x1
.Lrace_800E7D24:
/* 9E0E4 800E7D24 03007021 */  addu       $t6, $t8, $zero
/* 9E0E8 800E7D28 0040C021 */  addu       $t8, $v0, $zero
/* 9E0EC 800E7D2C 01E01021 */  addu       $v0, $t7, $zero
/* 9E0F0 800E7D30 02607821 */  addu       $t7, $s3, $zero
/* 9E0F4 800E7D34 00409821 */  addu       $s3, $v0, $zero
/* 9E0F8 800E7D38 00A08821 */  addu       $s1, $a1, $zero
/* 9E0FC 800E7D3C 00002821 */  addu       $a1, $zero, $zero
.Lrace_800E7D40:
/* 9E100 800E7D40 8FB90148 */  lw         $t9, 0x148($sp)
/* 9E104 800E7D44 33220008 */  andi       $v0, $t9, 0x8
/* 9E108 800E7D48 10400059 */  beqz       $v0, .Lrace_800E7EB0
/* 9E10C 800E7D4C 2624FFFF */   addiu     $a0, $s1, -0x1
/* 9E110 800E7D50 00009021 */  addu       $s2, $zero, $zero
/* 9E114 800E7D54 01E05821 */  addu       $t3, $t7, $zero
/* 9E118 800E7D58 01C06821 */  addu       $t5, $t6, $zero
/* 9E11C 800E7D5C 00051080 */  sll        $v0, $a1, 2
/* 9E120 800E7D60 00534821 */  addu       $t1, $v0, $s3
/* 9E124 800E7D64 00041880 */  sll        $v1, $a0, 2
/* 9E128 800E7D68 006B1821 */  addu       $v1, $v1, $t3
/* 9E12C 800E7D6C 8C630000 */  lw         $v1, 0x0($v1)
/* 9E130 800E7D70 00584021 */  addu       $t0, $v0, $t8
/* 9E134 800E7D74 30630008 */  andi       $v1, $v1, 0x8
.Lrace_800E7D78:
/* 9E138 800E7D78 0251102A */  slt        $v0, $s2, $s1
/* 9E13C 800E7D7C 5040004B */  beql       $v0, $zero, .Lrace_800E7EAC
/* 9E140 800E7D80 03007021 */   addu      $t6, $t8, $zero
/* 9E144 800E7D84 8D620000 */  lw         $v0, 0x0($t3)
/* 9E148 800E7D88 304A0008 */  andi       $t2, $v0, 0x8
/* 9E14C 800E7D8C 106A0039 */  beq        $v1, $t2, .Lrace_800E7E74
/* 9E150 800E7D90 00041080 */   sll       $v0, $a0, 2
/* 9E154 800E7D94 004E1021 */  addu       $v0, $v0, $t6
/* 9E158 800E7D98 8C420000 */  lw         $v0, 0x0($v0)
/* 9E15C 800E7D9C 8DA30000 */  lw         $v1, 0x0($t5)
/* 9E160 800E7DA0 00021140 */  sll        $v0, $v0, 5
/* 9E164 800E7DA4 00548021 */  addu       $s0, $v0, $s4
/* 9E168 800E7DA8 00031940 */  sll        $v1, $v1, 5
/* 9E16C 800E7DAC 00743021 */  addu       $a2, $v1, $s4
/* 9E170 800E7DB0 000C1140 */  sll        $v0, $t4, 5
/* 9E174 800E7DB4 C4C00010 */  lwc1       $f0, 0x10($a2)
/* 9E178 800E7DB8 C6040010 */  lwc1       $f4, 0x10($s0)
/* 9E17C 800E7DBC 00543821 */  addu       $a3, $v0, $s4
/* 9E180 800E7DC0 AD0C0000 */  sw         $t4, 0x0($t0)
/* 9E184 800E7DC4 46040181 */  sub.s      $f6, $f0, $f4
/* 9E188 800E7DC8 E4F60010 */  swc1       $f22, 0x10($a3)
/* 9E18C 800E7DCC C4C20000 */  lwc1       $f2, 0x0($a2)
/* 9E190 800E7DD0 4604A101 */  sub.s      $f4, $f20, $f4
/* 9E194 800E7DD4 C6000000 */  lwc1       $f0, 0x0($s0)
/* 9E198 800E7DD8 46001081 */  sub.s      $f2, $f2, $f0
/* 9E19C 800E7DDC 46062203 */  div.s      $f8, $f4, $f6
/* 9E1A0 800E7DE0 46081102 */  mul.s      $f4, $f2, $f8
/* 9E1A4 800E7DE4 E7A20110 */  swc1       $f2, 0x110($sp)
/* 9E1A8 800E7DE8 C4C20004 */  lwc1       $f2, 0x4($a2)
/* 9E1AC 800E7DEC C6000004 */  lwc1       $f0, 0x4($s0)
/* 9E1B0 800E7DF0 46001081 */  sub.s      $f2, $f2, $f0
/* 9E1B4 800E7DF4 46081182 */  mul.s      $f6, $f2, $f8
/* 9E1B8 800E7DF8 E7A20114 */  swc1       $f2, 0x114($sp)
/* 9E1BC 800E7DFC C4C20008 */  lwc1       $f2, 0x8($a2)
/* 9E1C0 800E7E00 C6000008 */  lwc1       $f0, 0x8($s0)
/* 9E1C4 800E7E04 46001081 */  sub.s      $f2, $f2, $f0
/* 9E1C8 800E7E08 46081002 */  mul.s      $f0, $f2, $f8
/* 9E1CC 800E7E0C E7A40120 */  swc1       $f4, 0x120($sp)
/* 9E1D0 800E7E10 E7A20118 */  swc1       $f2, 0x118($sp)
/* 9E1D4 800E7E14 E7A60124 */  swc1       $f6, 0x124($sp)
/* 9E1D8 800E7E18 E7A00128 */  swc1       $f0, 0x128($sp)
/* 9E1DC 800E7E1C C6000000 */  lwc1       $f0, 0x0($s0)
/* 9E1E0 800E7E20 46040000 */  add.s      $f0, $f0, $f4
/* 9E1E4 800E7E24 E4E00000 */  swc1       $f0, 0x0($a3)
/* 9E1E8 800E7E28 C6000004 */  lwc1       $f0, 0x4($s0)
/* 9E1EC 800E7E2C C7A20124 */  lwc1       $f2, 0x124($sp)
/* 9E1F0 800E7E30 46020000 */  add.s      $f0, $f0, $f2
/* 9E1F4 800E7E34 E4E00004 */  swc1       $f0, 0x4($a3)
/* 9E1F8 800E7E38 C6000008 */  lwc1       $f0, 0x8($s0)
/* 9E1FC 800E7E3C C7A20128 */  lwc1       $f2, 0x128($sp)
/* 9E200 800E7E40 46020000 */  add.s      $f0, $f0, $f2
/* 9E204 800E7E44 E4E00008 */  swc1       $f0, 0x8($a3)
/* 9E208 800E7E48 C4C0000C */  lwc1       $f0, 0xC($a2)
/* 9E20C 800E7E4C C602000C */  lwc1       $f2, 0xC($s0)
/* 9E210 800E7E50 46020001 */  sub.s      $f0, $f0, $f2
/* 9E214 800E7E54 46004002 */  mul.s      $f0, $f8, $f0
/* 9E218 800E7E58 24A50001 */  addiu      $a1, $a1, 0x1
/* 9E21C 800E7E5C 46001080 */  add.s      $f2, $f2, $f0
/* 9E220 800E7E60 258C0001 */  addiu      $t4, $t4, 0x1
/* 9E224 800E7E64 25080004 */  addiu      $t0, $t0, 0x4
/* 9E228 800E7E68 E4E2000C */  swc1       $f2, 0xC($a3)
/* 9E22C 800E7E6C AD200000 */  sw         $zero, 0x0($t1)
/* 9E230 800E7E70 25290004 */  addiu      $t1, $t1, 0x4
.Lrace_800E7E74:
/* 9E234 800E7E74 15400008 */  bnez       $t2, .Lrace_800E7E98
/* 9E238 800E7E78 02402021 */   addu      $a0, $s2, $zero
/* 9E23C 800E7E7C 8DA20000 */  lw         $v0, 0x0($t5)
/* 9E240 800E7E80 24A50001 */  addiu      $a1, $a1, 0x1
/* 9E244 800E7E84 AD020000 */  sw         $v0, 0x0($t0)
/* 9E248 800E7E88 8D620000 */  lw         $v0, 0x0($t3)
/* 9E24C 800E7E8C 25080004 */  addiu      $t0, $t0, 0x4
/* 9E250 800E7E90 AD220000 */  sw         $v0, 0x0($t1)
/* 9E254 800E7E94 25290004 */  addiu      $t1, $t1, 0x4
.Lrace_800E7E98:
/* 9E258 800E7E98 01401821 */  addu       $v1, $t2, $zero
/* 9E25C 800E7E9C 256B0004 */  addiu      $t3, $t3, 0x4
/* 9E260 800E7EA0 25AD0004 */  addiu      $t5, $t5, 0x4
/* 9E264 800E7EA4 08039F5E */  j          .Lrace_800E7D78
/* 9E268 800E7EA8 26520001 */   addiu     $s2, $s2, 0x1
.Lrace_800E7EAC:
/* 9E26C 800E7EAC 00A08821 */  addu       $s1, $a1, $zero
.Lrace_800E7EB0:
/* 9E270 800E7EB0 8DC20000 */  lw         $v0, 0x0($t6)
/* 9E274 800E7EB4 24120001 */  addiu      $s2, $zero, 0x1
/* 9E278 800E7EB8 2623FFFF */  addiu      $v1, $s1, -0x1
/* 9E27C 800E7EBC 00021140 */  sll        $v0, $v0, 5
/* 9E280 800E7EC0 00548021 */  addu       $s0, $v0, $s4
/* 9E284 800E7EC4 0243102A */  slt        $v0, $s2, $v1
/* 9E288 800E7EC8 10400010 */  beqz       $v0, .Lrace_800E7F0C
/* 9E28C 800E7ECC 00609821 */   addu      $s3, $v1, $zero
/* 9E290 800E7ED0 25D10004 */  addiu      $s1, $t6, 0x4
/* 9E294 800E7ED4 03C02021 */  addu       $a0, $fp, $zero
.Lrace_800E7ED8:
/* 9E298 800E7ED8 02002821 */  addu       $a1, $s0, $zero
/* 9E29C 800E7EDC 8E260000 */  lw         $a2, 0x0($s1)
/* 9E2A0 800E7EE0 8E270004 */  lw         $a3, 0x4($s1)
/* 9E2A4 800E7EE4 26310004 */  addiu      $s1, $s1, 0x4
/* 9E2A8 800E7EE8 26520001 */  addiu      $s2, $s2, 0x1
/* 9E2AC 800E7EEC 00063140 */  sll        $a2, $a2, 5
/* 9E2B0 800E7EF0 00D43021 */  addu       $a2, $a2, $s4
/* 9E2B4 800E7EF4 00073940 */  sll        $a3, $a3, 5
/* 9E2B8 800E7EF8 0C039FD4 */  jal        func_race_800E7F50
/* 9E2BC 800E7EFC 00F43821 */   addu      $a3, $a3, $s4
/* 9E2C0 800E7F00 0253102A */  slt        $v0, $s2, $s3
/* 9E2C4 800E7F04 1440FFF4 */  bnez       $v0, .Lrace_800E7ED8
/* 9E2C8 800E7F08 03C02021 */   addu      $a0, $fp, $zero
.Lrace_800E7F0C:
/* 9E2CC 800E7F0C 26B50004 */  addiu      $s5, $s5, 0x4
.Lrace_800E7F10:
/* 9E2D0 800E7F10 08039DDB */  j          .Lrace_800E776C
/* 9E2D4 800E7F14 26D60004 */   addiu     $s6, $s6, 0x4
.Lrace_800E7F18:
/* 9E2D8 800E7F18 8FBF0174 */  lw         $ra, 0x174($sp)
/* 9E2DC 800E7F1C 8FBE0170 */  lw         $fp, 0x170($sp)
/* 9E2E0 800E7F20 8FB7016C */  lw         $s7, 0x16C($sp)
/* 9E2E4 800E7F24 8FB60168 */  lw         $s6, 0x168($sp)
/* 9E2E8 800E7F28 8FB50164 */  lw         $s5, 0x164($sp)
/* 9E2EC 800E7F2C 8FB40160 */  lw         $s4, 0x160($sp)
/* 9E2F0 800E7F30 8FB3015C */  lw         $s3, 0x15C($sp)
/* 9E2F4 800E7F34 8FB20158 */  lw         $s2, 0x158($sp)
/* 9E2F8 800E7F38 8FB10154 */  lw         $s1, 0x154($sp)
/* 9E2FC 800E7F3C 8FB00150 */  lw         $s0, 0x150($sp)
/* 9E300 800E7F40 D7B60180 */  ldc1       $f22, 0x180($sp)
/* 9E304 800E7F44 D7B40178 */  ldc1       $f20, 0x178($sp)
/* 9E308 800E7F48 03E00008 */  jr         $ra
/* 9E30C 800E7F4C 27BD0188 */   addiu     $sp, $sp, 0x188

glabel func_race_800E7F50
/* 9E310 800E7F50 27BDFFC0 */  addiu      $sp, $sp, -0x40
/* 9E314 800E7F54 AFB10024 */  sw         $s1, 0x24($sp)
/* 9E318 800E7F58 00808821 */  addu       $s1, $a0, $zero
/* 9E31C 800E7F5C AFB20028 */  sw         $s2, 0x28($sp)
/* 9E320 800E7F60 00A09021 */  addu       $s2, $a1, $zero
/* 9E324 800E7F64 AFB3002C */  sw         $s3, 0x2C($sp)
/* 9E328 800E7F68 00C09821 */  addu       $s3, $a2, $zero
/* 9E32C 800E7F6C AFBF0034 */  sw         $ra, 0x34($sp)
/* 9E330 800E7F70 AFB40030 */  sw         $s4, 0x30($sp)
/* 9E334 800E7F74 AFB00020 */  sw         $s0, 0x20($sp)
/* 9E338 800E7F78 F7B40038 */  sdc1       $f20, 0x38($sp)
/* 9E33C 800E7F7C 8E2200B4 */  lw         $v0, 0xB4($s1)
/* 9E340 800E7F80 8E2300A4 */  lw         $v1, 0xA4($s1)
/* 9E344 800E7F84 0043102B */  sltu       $v0, $v0, $v1
/* 9E348 800E7F88 104000A1 */  beqz       $v0, .Lrace_800E8210
/* 9E34C 800E7F8C 00E0A021 */   addu      $s4, $a3, $zero
/* 9E350 800E7F90 8E2200C0 */  lw         $v0, 0xC0($s1)
/* 9E354 800E7F94 2C42000A */  sltiu      $v0, $v0, 0xA
/* 9E358 800E7F98 14400009 */  bnez       $v0, .Lrace_800E7FC0
/* 9E35C 800E7F9C 00000000 */   nop
/* 9E360 800E7FA0 0C03A08D */  jal        func_race_800E8234
/* 9E364 800E7FA4 00000000 */   nop
/* 9E368 800E7FA8 8E2200B0 */  lw         $v0, 0xB0($s1)
/* 9E36C 800E7FAC 8E2300B4 */  lw         $v1, 0xB4($s1)
/* 9E370 800E7FB0 AE2000BC */  sw         $zero, 0xBC($s1)
/* 9E374 800E7FB4 AE2000C0 */  sw         $zero, 0xC0($s1)
/* 9E378 800E7FB8 AE2200A8 */  sw         $v0, 0xA8($s1)
/* 9E37C 800E7FBC AE2300AC */  sw         $v1, 0xAC($s1)
.Lrace_800E7FC0:
/* 9E380 800E7FC0 C6400000 */  lwc1       $f0, 0x0($s2)
/* 9E384 800E7FC4 C62200FC */  lwc1       $f2, 0xFC($s1)
/* 9E388 800E7FC8 46020001 */  sub.s      $f0, $f0, $f2
/* 9E38C 800E7FCC 3C01800D */  lui        $at, %hi(D_race_800CB9B4)
/* 9E390 800E7FD0 C434B9B4 */  lwc1       $f20, %lo(D_race_800CB9B4)($at)
/* 9E394 800E7FD4 46140002 */  mul.s      $f0, $f0, $f20
/* 9E398 800E7FD8 E7A00010 */  swc1       $f0, 0x10($sp)
/* 9E39C 800E7FDC C6400004 */  lwc1       $f0, 0x4($s2)
/* 9E3A0 800E7FE0 C6220100 */  lwc1       $f2, 0x100($s1)
/* 9E3A4 800E7FE4 46020001 */  sub.s      $f0, $f0, $f2
/* 9E3A8 800E7FE8 46140002 */  mul.s      $f0, $f0, $f20
/* 9E3AC 800E7FEC E7A00014 */  swc1       $f0, 0x14($sp)
/* 9E3B0 800E7FF0 C6400008 */  lwc1       $f0, 0x8($s2)
/* 9E3B4 800E7FF4 C6220104 */  lwc1       $f2, 0x104($s1)
/* 9E3B8 800E7FF8 46020001 */  sub.s      $f0, $f0, $f2
/* 9E3BC 800E7FFC 46140002 */  mul.s      $f0, $f0, $f20
/* 9E3C0 800E8000 E7A00018 */  swc1       $f0, 0x18($sp)
/* 9E3C4 800E8004 8E230008 */  lw         $v1, 0x8($s1)
/* 9E3C8 800E8008 27A60010 */  addiu      $a2, $sp, 0x10
/* 9E3CC 800E800C 8C620008 */  lw         $v0, 0x8($v1)
/* 9E3D0 800E8010 8E2500B0 */  lw         $a1, 0xB0($s1)
/* 9E3D4 800E8014 84440050 */  lh         $a0, 0x50($v0)
/* 9E3D8 800E8018 8C420054 */  lw         $v0, 0x54($v0)
/* 9E3DC 800E801C 0040F809 */  jalr       $v0
/* 9E3E0 800E8020 00642021 */   addu      $a0, $v1, $a0
/* 9E3E4 800E8024 26300128 */  addiu      $s0, $s1, 0x128
/* 9E3E8 800E8028 8E230008 */  lw         $v1, 0x8($s1)
/* 9E3EC 800E802C 02003021 */  addu       $a2, $s0, $zero
/* 9E3F0 800E8030 8C620008 */  lw         $v0, 0x8($v1)
/* 9E3F4 800E8034 8E2500B0 */  lw         $a1, 0xB0($s1)
/* 9E3F8 800E8038 84440068 */  lh         $a0, 0x68($v0)
/* 9E3FC 800E803C 8C42006C */  lw         $v0, 0x6C($v0)
/* 9E400 800E8040 0040F809 */  jalr       $v0
/* 9E404 800E8044 00642021 */   addu      $a0, $v1, $a0
/* 9E408 800E8048 2646000C */  addiu      $a2, $s2, 0xC
/* 9E40C 800E804C 8E270008 */  lw         $a3, 0x8($s1)
/* 9E410 800E8050 8E2200B0 */  lw         $v0, 0xB0($s1)
/* 9E414 800E8054 8CE30008 */  lw         $v1, 0x8($a3)
/* 9E418 800E8058 00402821 */  addu       $a1, $v0, $zero
/* 9E41C 800E805C 84640058 */  lh         $a0, 0x58($v1)
/* 9E420 800E8060 24420001 */  addiu      $v0, $v0, 0x1
/* 9E424 800E8064 AE2200B0 */  sw         $v0, 0xB0($s1)
/* 9E428 800E8068 8C62005C */  lw         $v0, 0x5C($v1)
/* 9E42C 800E806C 0040F809 */  jalr       $v0
/* 9E430 800E8070 00E42021 */   addu      $a0, $a3, $a0
/* 9E434 800E8074 C6600000 */  lwc1       $f0, 0x0($s3)
/* 9E438 800E8078 C62200FC */  lwc1       $f2, 0xFC($s1)
/* 9E43C 800E807C 46020001 */  sub.s      $f0, $f0, $f2
/* 9E440 800E8080 46140002 */  mul.s      $f0, $f0, $f20
/* 9E444 800E8084 E7A00010 */  swc1       $f0, 0x10($sp)
/* 9E448 800E8088 C6600004 */  lwc1       $f0, 0x4($s3)
/* 9E44C 800E808C C6220100 */  lwc1       $f2, 0x100($s1)
/* 9E450 800E8090 46020001 */  sub.s      $f0, $f0, $f2
/* 9E454 800E8094 46140002 */  mul.s      $f0, $f0, $f20
/* 9E458 800E8098 E7A00014 */  swc1       $f0, 0x14($sp)
/* 9E45C 800E809C C6600008 */  lwc1       $f0, 0x8($s3)
/* 9E460 800E80A0 C6220104 */  lwc1       $f2, 0x104($s1)
/* 9E464 800E80A4 46020001 */  sub.s      $f0, $f0, $f2
/* 9E468 800E80A8 46140002 */  mul.s      $f0, $f0, $f20
/* 9E46C 800E80AC E7A00018 */  swc1       $f0, 0x18($sp)
/* 9E470 800E80B0 8E230008 */  lw         $v1, 0x8($s1)
/* 9E474 800E80B4 27A60010 */  addiu      $a2, $sp, 0x10
/* 9E478 800E80B8 8C620008 */  lw         $v0, 0x8($v1)
/* 9E47C 800E80BC 8E2500B0 */  lw         $a1, 0xB0($s1)
/* 9E480 800E80C0 84440050 */  lh         $a0, 0x50($v0)
/* 9E484 800E80C4 8C420054 */  lw         $v0, 0x54($v0)
/* 9E488 800E80C8 0040F809 */  jalr       $v0
/* 9E48C 800E80CC 00642021 */   addu      $a0, $v1, $a0
/* 9E490 800E80D0 8E230008 */  lw         $v1, 0x8($s1)
/* 9E494 800E80D4 02003021 */  addu       $a2, $s0, $zero
/* 9E498 800E80D8 8C620008 */  lw         $v0, 0x8($v1)
/* 9E49C 800E80DC 8E2500B0 */  lw         $a1, 0xB0($s1)
/* 9E4A0 800E80E0 84440068 */  lh         $a0, 0x68($v0)
/* 9E4A4 800E80E4 8C42006C */  lw         $v0, 0x6C($v0)
/* 9E4A8 800E80E8 0040F809 */  jalr       $v0
/* 9E4AC 800E80EC 00642021 */   addu      $a0, $v1, $a0
/* 9E4B0 800E80F0 2666000C */  addiu      $a2, $s3, 0xC
/* 9E4B4 800E80F4 8E270008 */  lw         $a3, 0x8($s1)
/* 9E4B8 800E80F8 8E2200B0 */  lw         $v0, 0xB0($s1)
/* 9E4BC 800E80FC 8CE30008 */  lw         $v1, 0x8($a3)
/* 9E4C0 800E8100 00402821 */  addu       $a1, $v0, $zero
/* 9E4C4 800E8104 84640058 */  lh         $a0, 0x58($v1)
/* 9E4C8 800E8108 24420001 */  addiu      $v0, $v0, 0x1
/* 9E4CC 800E810C AE2200B0 */  sw         $v0, 0xB0($s1)
/* 9E4D0 800E8110 8C62005C */  lw         $v0, 0x5C($v1)
/* 9E4D4 800E8114 0040F809 */  jalr       $v0
/* 9E4D8 800E8118 00E42021 */   addu      $a0, $a3, $a0
/* 9E4DC 800E811C C6800000 */  lwc1       $f0, 0x0($s4)
/* 9E4E0 800E8120 C62200FC */  lwc1       $f2, 0xFC($s1)
/* 9E4E4 800E8124 46020001 */  sub.s      $f0, $f0, $f2
/* 9E4E8 800E8128 46140002 */  mul.s      $f0, $f0, $f20
/* 9E4EC 800E812C E7A00010 */  swc1       $f0, 0x10($sp)
/* 9E4F0 800E8130 C6800004 */  lwc1       $f0, 0x4($s4)
/* 9E4F4 800E8134 C6220100 */  lwc1       $f2, 0x100($s1)
/* 9E4F8 800E8138 46020001 */  sub.s      $f0, $f0, $f2
/* 9E4FC 800E813C 46140002 */  mul.s      $f0, $f0, $f20
/* 9E500 800E8140 E7A00014 */  swc1       $f0, 0x14($sp)
/* 9E504 800E8144 C6800008 */  lwc1       $f0, 0x8($s4)
/* 9E508 800E8148 C6220104 */  lwc1       $f2, 0x104($s1)
/* 9E50C 800E814C 46020001 */  sub.s      $f0, $f0, $f2
/* 9E510 800E8150 46140002 */  mul.s      $f0, $f0, $f20
/* 9E514 800E8154 E7A00018 */  swc1       $f0, 0x18($sp)
/* 9E518 800E8158 8E230008 */  lw         $v1, 0x8($s1)
/* 9E51C 800E815C 27A60010 */  addiu      $a2, $sp, 0x10
/* 9E520 800E8160 8C620008 */  lw         $v0, 0x8($v1)
/* 9E524 800E8164 8E2500B0 */  lw         $a1, 0xB0($s1)
/* 9E528 800E8168 84440050 */  lh         $a0, 0x50($v0)
/* 9E52C 800E816C 8C420054 */  lw         $v0, 0x54($v0)
/* 9E530 800E8170 0040F809 */  jalr       $v0
/* 9E534 800E8174 00642021 */   addu      $a0, $v1, $a0
/* 9E538 800E8178 8E230008 */  lw         $v1, 0x8($s1)
/* 9E53C 800E817C 02003021 */  addu       $a2, $s0, $zero
/* 9E540 800E8180 8C620008 */  lw         $v0, 0x8($v1)
/* 9E544 800E8184 8E2500B0 */  lw         $a1, 0xB0($s1)
/* 9E548 800E8188 84440068 */  lh         $a0, 0x68($v0)
/* 9E54C 800E818C 8C42006C */  lw         $v0, 0x6C($v0)
/* 9E550 800E8190 0040F809 */  jalr       $v0
/* 9E554 800E8194 00642021 */   addu      $a0, $v1, $a0
/* 9E558 800E8198 2686000C */  addiu      $a2, $s4, 0xC
/* 9E55C 800E819C 8E270008 */  lw         $a3, 0x8($s1)
/* 9E560 800E81A0 8E2200B0 */  lw         $v0, 0xB0($s1)
/* 9E564 800E81A4 8CE30008 */  lw         $v1, 0x8($a3)
/* 9E568 800E81A8 00402821 */  addu       $a1, $v0, $zero
/* 9E56C 800E81AC 84640058 */  lh         $a0, 0x58($v1)
/* 9E570 800E81B0 24420001 */  addiu      $v0, $v0, 0x1
/* 9E574 800E81B4 AE2200B0 */  sw         $v0, 0xB0($s1)
/* 9E578 800E81B8 8C62005C */  lw         $v0, 0x5C($v1)
/* 9E57C 800E81BC 0040F809 */  jalr       $v0
/* 9E580 800E81C0 00E42021 */   addu      $a0, $a3, $a0
/* 9E584 800E81C4 8E2200B4 */  lw         $v0, 0xB4($s1)
/* 9E588 800E81C8 8E2300BC */  lw         $v1, 0xBC($s1)
/* 9E58C 800E81CC 8E24000C */  lw         $a0, 0xC($s1)
/* 9E590 800E81D0 00022880 */  sll        $a1, $v0, 2
/* 9E594 800E81D4 24420001 */  addiu      $v0, $v0, 0x1
/* 9E598 800E81D8 AE2200B4 */  sw         $v0, 0xB4($s1)
/* 9E59C 800E81DC 8E2200C0 */  lw         $v0, 0xC0($s1)
/* 9E5A0 800E81E0 00852021 */  addu       $a0, $a0, $a1
/* 9E5A4 800E81E4 24420001 */  addiu      $v0, $v0, 0x1
/* 9E5A8 800E81E8 AE2200C0 */  sw         $v0, 0xC0($s1)
/* 9E5AC 800E81EC A0830001 */  sb         $v1, 0x1($a0)
/* 9E5B0 800E81F0 24630001 */  addiu      $v1, $v1, 0x1
/* 9E5B4 800E81F4 24620001 */  addiu      $v0, $v1, 0x1
/* 9E5B8 800E81F8 AE2300BC */  sw         $v1, 0xBC($s1)
/* 9E5BC 800E81FC A0830002 */  sb         $v1, 0x2($a0)
/* 9E5C0 800E8200 24630002 */  addiu      $v1, $v1, 0x2
/* 9E5C4 800E8204 AE2200BC */  sw         $v0, 0xBC($s1)
/* 9E5C8 800E8208 A0820003 */  sb         $v0, 0x3($a0)
/* 9E5CC 800E820C AE2300BC */  sw         $v1, 0xBC($s1)
.Lrace_800E8210:
/* 9E5D0 800E8210 8FBF0034 */  lw         $ra, 0x34($sp)
/* 9E5D4 800E8214 8FB40030 */  lw         $s4, 0x30($sp)
/* 9E5D8 800E8218 8FB3002C */  lw         $s3, 0x2C($sp)
/* 9E5DC 800E821C 8FB20028 */  lw         $s2, 0x28($sp)
/* 9E5E0 800E8220 8FB10024 */  lw         $s1, 0x24($sp)
/* 9E5E4 800E8224 8FB00020 */  lw         $s0, 0x20($sp)
/* 9E5E8 800E8228 D7B40038 */  ldc1       $f20, 0x38($sp)
/* 9E5EC 800E822C 03E00008 */  jr         $ra
/* 9E5F0 800E8230 27BD0040 */   addiu     $sp, $sp, 0x40

glabel func_race_800E8234
/* 9E5F4 800E8234 8C8200B8 */  lw         $v0, 0xB8($a0)
/* 9E5F8 800E8238 8C870004 */  lw         $a3, 0x4($a0)
/* 9E5FC 800E823C 8C8800A8 */  lw         $t0, 0xA8($a0)
/* 9E600 800E8240 8C8500BC */  lw         $a1, 0xBC($a0)
/* 9E604 800E8244 00403021 */  addu       $a2, $v0, $zero
/* 9E608 800E8248 24420001 */  addiu      $v0, $v0, 0x1
/* 9E60C 800E824C AC8200B8 */  sw         $v0, 0xB8($a0)
/* 9E610 800E8250 8CE20020 */  lw         $v0, 0x20($a3)
/* 9E614 800E8254 00063080 */  sll        $a2, $a2, 2
/* 9E618 800E8258 00C21021 */  addu       $v0, $a2, $v0
/* 9E61C 800E825C AC400000 */  sw         $zero, 0x0($v0)
/* 9E620 800E8260 8CE20020 */  lw         $v0, 0x20($a3)
/* 9E624 800E8264 24A5FFFF */  addiu      $a1, $a1, -0x1
/* 9E628 800E8268 00C21021 */  addu       $v0, $a2, $v0
/* 9E62C 800E826C 8C430000 */  lw         $v1, 0x0($v0)
/* 9E630 800E8270 8CE30020 */  lw         $v1, 0x20($a3)
/* 9E634 800E8274 30A5003F */  andi       $a1, $a1, 0x3F
/* 9E638 800E8278 00C31821 */  addu       $v1, $a2, $v1
/* 9E63C 800E827C 8C620000 */  lw         $v0, 0x0($v1)
/* 9E640 800E8280 00052C00 */  sll        $a1, $a1, 16
/* 9E644 800E8284 00451025 */  or         $v0, $v0, $a1
/* 9E648 800E8288 AC620000 */  sw         $v0, 0x0($v1)
/* 9E64C 800E828C 8CE20020 */  lw         $v0, 0x20($a3)
/* 9E650 800E8290 00C23021 */  addu       $a2, $a2, $v0
/* 9E654 800E8294 8CC20000 */  lw         $v0, 0x0($a2)
/* 9E658 800E8298 3108FFFF */  andi       $t0, $t0, 0xFFFF
/* 9E65C 800E829C 00481025 */  or         $v0, $v0, $t0
/* 9E660 800E82A0 24080001 */  addiu      $t0, $zero, 0x1
/* 9E664 800E82A4 ACC20000 */  sw         $v0, 0x0($a2)
/* 9E668 800E82A8 ACE80038 */  sw         $t0, 0x38($a3)
/* 9E66C 800E82AC 8C8200B8 */  lw         $v0, 0xB8($a0)
/* 9E670 800E82B0 8C870004 */  lw         $a3, 0x4($a0)
/* 9E674 800E82B4 8C8600AC */  lw         $a2, 0xAC($a0)
/* 9E678 800E82B8 00402821 */  addu       $a1, $v0, $zero
/* 9E67C 800E82BC 00481021 */  addu       $v0, $v0, $t0
/* 9E680 800E82C0 00052880 */  sll        $a1, $a1, 2
/* 9E684 800E82C4 AC8200B8 */  sw         $v0, 0xB8($a0)
/* 9E688 800E82C8 3C021000 */  lui        $v0, (0x10000000 >> 16)
/* 9E68C 800E82CC 8CE30020 */  lw         $v1, 0x20($a3)
/* 9E690 800E82D0 8C8400C0 */  lw         $a0, 0xC0($a0)
/* 9E694 800E82D4 00A31821 */  addu       $v1, $a1, $v1
/* 9E698 800E82D8 AC620000 */  sw         $v0, 0x0($v1)
/* 9E69C 800E82DC 8CE30020 */  lw         $v1, 0x20($a3)
/* 9E6A0 800E82E0 30840FFF */  andi       $a0, $a0, 0xFFF
/* 9E6A4 800E82E4 00A31821 */  addu       $v1, $a1, $v1
/* 9E6A8 800E82E8 8C620000 */  lw         $v0, 0x0($v1)
/* 9E6AC 800E82EC 00042400 */  sll        $a0, $a0, 16
/* 9E6B0 800E82F0 00441025 */  or         $v0, $v0, $a0
/* 9E6B4 800E82F4 AC620000 */  sw         $v0, 0x0($v1)
/* 9E6B8 800E82F8 8CE20020 */  lw         $v0, 0x20($a3)
/* 9E6BC 800E82FC 00A22821 */  addu       $a1, $a1, $v0
/* 9E6C0 800E8300 8CA20000 */  lw         $v0, 0x0($a1)
/* 9E6C4 800E8304 30C6FFFF */  andi       $a2, $a2, 0xFFFF
/* 9E6C8 800E8308 00461025 */  or         $v0, $v0, $a2
/* 9E6CC 800E830C ACA20000 */  sw         $v0, 0x0($a1)
/* 9E6D0 800E8310 03E00008 */  jr         $ra
/* 9E6D4 800E8314 ACE80038 */   sw        $t0, 0x38($a3)

glabel func_race_800E8318
/* 9E6D8 800E8318 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 9E6DC 800E831C 00801821 */  addu       $v1, $a0, $zero
/* 9E6E0 800E8320 AFBF0010 */  sw         $ra, 0x10($sp)
/* 9E6E4 800E8324 8C620118 */  lw         $v0, 0x118($v1)
/* 9E6E8 800E8328 30420004 */  andi       $v0, $v0, 0x4
/* 9E6EC 800E832C 10400007 */  beqz       $v0, .Lrace_800E834C
/* 9E6F0 800E8330 00000000 */   nop
/* 9E6F4 800E8334 8CA2012C */  lw         $v0, 0x12C($a1)
/* 9E6F8 800E8338 84440118 */  lh         $a0, 0x118($v0)
/* 9E6FC 800E833C 8C42011C */  lw         $v0, 0x11C($v0)
/* 9E700 800E8340 00A42021 */  addu       $a0, $a1, $a0
/* 9E704 800E8344 0040F809 */  jalr       $v0
/* 9E708 800E8348 24650010 */   addiu     $a1, $v1, 0x10
.Lrace_800E834C:
/* 9E70C 800E834C 8FBF0010 */  lw         $ra, 0x10($sp)
/* 9E710 800E8350 03E00008 */  jr         $ra
/* 9E714 800E8354 27BD0018 */   addiu     $sp, $sp, 0x18

glabel func_race_800E8358
/* 9E718 800E8358 27BDFFB8 */  addiu      $sp, $sp, -0x48
/* 9E71C 800E835C F7B40040 */  sdc1       $f20, 0x40($sp)
/* 9E720 800E8360 C482011C */  lwc1       $f2, 0x11C($a0)
/* 9E724 800E8364 3C01800D */  lui        $at, %hi(D_race_800CB9B8)
/* 9E728 800E8368 C426B9B8 */  lwc1       $f6, %lo(D_race_800CB9B8)($at)
/* 9E72C 800E836C 46061082 */  mul.s      $f2, $f2, $f6
/* 9E730 800E8370 C48000CC */  lwc1       $f0, 0xCC($a0)
/* 9E734 800E8374 46020002 */  mul.s      $f0, $f0, $f2
/* 9E738 800E8378 C4840120 */  lwc1       $f4, 0x120($a0)
/* 9E73C 800E837C 248200CC */  addiu      $v0, $a0, 0xCC
/* 9E740 800E8380 E7A00000 */  swc1       $f0, 0x0($sp)
/* 9E744 800E8384 C4400004 */  lwc1       $f0, 0x4($v0)
/* 9E748 800E8388 46020002 */  mul.s      $f0, $f0, $f2
/* 9E74C 800E838C E7A00004 */  swc1       $f0, 0x4($sp)
/* 9E750 800E8390 C4400008 */  lwc1       $f0, 0x8($v0)
/* 9E754 800E8394 46020002 */  mul.s      $f0, $f0, $f2
/* 9E758 800E8398 00000000 */  nop
/* 9E75C 800E839C 46062102 */  mul.s      $f4, $f4, $f6
/* 9E760 800E83A0 E7A00008 */  swc1       $f0, 0x8($sp)
/* 9E764 800E83A4 C48000D8 */  lwc1       $f0, 0xD8($a0)
/* 9E768 800E83A8 46040002 */  mul.s      $f0, $f0, $f4
/* 9E76C 800E83AC 248200D8 */  addiu      $v0, $a0, 0xD8
/* 9E770 800E83B0 E7A00010 */  swc1       $f0, 0x10($sp)
/* 9E774 800E83B4 C4400004 */  lwc1       $f0, 0x4($v0)
/* 9E778 800E83B8 46040002 */  mul.s      $f0, $f0, $f4
/* 9E77C 800E83BC E7A00014 */  swc1       $f0, 0x14($sp)
/* 9E780 800E83C0 C4400008 */  lwc1       $f0, 0x8($v0)
/* 9E784 800E83C4 46040002 */  mul.s      $f0, $f0, $f4
/* 9E788 800E83C8 E7A00018 */  swc1       $f0, 0x18($sp)
/* 9E78C 800E83CC C4820124 */  lwc1       $f2, 0x124($a0)
/* 9E790 800E83D0 C48000E4 */  lwc1       $f0, 0xE4($a0)
/* 9E794 800E83D4 46020002 */  mul.s      $f0, $f0, $f2
/* 9E798 800E83D8 248200E4 */  addiu      $v0, $a0, 0xE4
/* 9E79C 800E83DC E7A00020 */  swc1       $f0, 0x20($sp)
/* 9E7A0 800E83E0 C4400004 */  lwc1       $f0, 0x4($v0)
/* 9E7A4 800E83E4 46020002 */  mul.s      $f0, $f0, $f2
/* 9E7A8 800E83E8 E7A00024 */  swc1       $f0, 0x24($sp)
/* 9E7AC 800E83EC C4400008 */  lwc1       $f0, 0x8($v0)
/* 9E7B0 800E83F0 46020002 */  mul.s      $f0, $f0, $f2
/* 9E7B4 800E83F4 C7B40010 */  lwc1       $f20, 0x10($sp)
/* 9E7B8 800E83F8 3C038013 */  lui        $v1, %hi(D_race_80132AF0)
/* 9E7BC 800E83FC E7A00028 */  swc1       $f0, 0x28($sp)
/* 9E7C0 800E8400 24692AF0 */  addiu      $t1, $v1, %lo(D_race_80132AF0)
/* 9E7C4 800E8404 8C8600F0 */  lw         $a2, 0xF0($a0)
/* 9E7C8 800E8408 8C8700F4 */  lw         $a3, 0xF4($a0)
/* 9E7CC 800E840C 8C8800F8 */  lw         $t0, 0xF8($a0)
/* 9E7D0 800E8410 AD260000 */  sw         $a2, 0x0($t1)
/* 9E7D4 800E8414 AD270004 */  sw         $a3, 0x4($t1)
/* 9E7D8 800E8418 AD280008 */  sw         $t0, 0x8($t1)
/* 9E7DC 800E841C C48400F0 */  lwc1       $f4, 0xF0($a0)
/* 9E7E0 800E8420 46142101 */  sub.s      $f4, $f4, $f20
/* 9E7E4 800E8424 C7B20014 */  lwc1       $f18, 0x14($sp)
/* 9E7E8 800E8428 248500F0 */  addiu      $a1, $a0, 0xF0
/* 9E7EC 800E842C E7A40030 */  swc1       $f4, 0x30($sp)
/* 9E7F0 800E8430 C4A60004 */  lwc1       $f6, 0x4($a1)
/* 9E7F4 800E8434 46123181 */  sub.s      $f6, $f6, $f18
/* 9E7F8 800E8438 C7B00018 */  lwc1       $f16, 0x18($sp)
/* 9E7FC 800E843C E7A60034 */  swc1       $f6, 0x34($sp)
/* 9E800 800E8440 C4A20008 */  lwc1       $f2, 0x8($a1)
/* 9E804 800E8444 46101081 */  sub.s      $f2, $f2, $f16
/* 9E808 800E8448 C7A00020 */  lwc1       $f0, 0x20($sp)
/* 9E80C 800E844C 46002100 */  add.s      $f4, $f4, $f0
/* 9E810 800E8450 E7A20038 */  swc1       $f2, 0x38($sp)
/* 9E814 800E8454 E7A40030 */  swc1       $f4, 0x30($sp)
/* 9E818 800E8458 C7A00024 */  lwc1       $f0, 0x24($sp)
/* 9E81C 800E845C 46003180 */  add.s      $f6, $f6, $f0
/* 9E820 800E8460 C7A00028 */  lwc1       $f0, 0x28($sp)
/* 9E824 800E8464 46001080 */  add.s      $f2, $f2, $f0
/* 9E828 800E8468 C7A80000 */  lwc1       $f8, 0x0($sp)
/* 9E82C 800E846C 46082001 */  sub.s      $f0, $f4, $f8
/* 9E830 800E8470 46082100 */  add.s      $f4, $f4, $f8
/* 9E834 800E8474 C7AC0004 */  lwc1       $f12, 0x4($sp)
/* 9E838 800E8478 C7AA0008 */  lwc1       $f10, 0x8($sp)
/* 9E83C 800E847C 460C3381 */  sub.s      $f14, $f6, $f12
/* 9E840 800E8480 24632AF0 */  addiu      $v1, $v1, %lo(D_race_80132AF0)
/* 9E844 800E8484 E7A60034 */  swc1       $f6, 0x34($sp)
/* 9E848 800E8488 460C3180 */  add.s      $f6, $f6, $f12
/* 9E84C 800E848C E7A20038 */  swc1       $f2, 0x38($sp)
/* 9E850 800E8490 E460000C */  swc1       $f0, 0xC($v1)
/* 9E854 800E8494 460A1001 */  sub.s      $f0, $f2, $f10
/* 9E858 800E8498 2462000C */  addiu      $v0, $v1, 0xC
/* 9E85C 800E849C E4640018 */  swc1       $f4, 0x18($v1)
/* 9E860 800E84A0 460A1080 */  add.s      $f2, $f2, $f10
/* 9E864 800E84A4 E44E0004 */  swc1       $f14, 0x4($v0)
/* 9E868 800E84A8 E4400008 */  swc1       $f0, 0x8($v0)
/* 9E86C 800E84AC 24620018 */  addiu      $v0, $v1, 0x18
/* 9E870 800E84B0 E4460004 */  swc1       $f6, 0x4($v0)
/* 9E874 800E84B4 E4420008 */  swc1       $f2, 0x8($v0)
/* 9E878 800E84B8 C48000F0 */  lwc1       $f0, 0xF0($a0)
/* 9E87C 800E84BC 46140000 */  add.s      $f0, $f0, $f20
/* 9E880 800E84C0 46080181 */  sub.s      $f6, $f0, $f8
/* 9E884 800E84C4 E7A00030 */  swc1       $f0, 0x30($sp)
/* 9E888 800E84C8 46080000 */  add.s      $f0, $f0, $f8
/* 9E88C 800E84CC C4A20004 */  lwc1       $f2, 0x4($a1)
/* 9E890 800E84D0 46121080 */  add.s      $f2, $f2, $f18
/* 9E894 800E84D4 460C1201 */  sub.s      $f8, $f2, $f12
/* 9E898 800E84D8 E7A20034 */  swc1       $f2, 0x34($sp)
/* 9E89C 800E84DC C4A40008 */  lwc1       $f4, 0x8($a1)
/* 9E8A0 800E84E0 460C1080 */  add.s      $f2, $f2, $f12
/* 9E8A4 800E84E4 24620024 */  addiu      $v0, $v1, 0x24
/* 9E8A8 800E84E8 E4660024 */  swc1       $f6, 0x24($v1)
/* 9E8AC 800E84EC 46102100 */  add.s      $f4, $f4, $f16
/* 9E8B0 800E84F0 E4600030 */  swc1       $f0, 0x30($v1)
/* 9E8B4 800E84F4 24630030 */  addiu      $v1, $v1, 0x30
/* 9E8B8 800E84F8 460A2001 */  sub.s      $f0, $f4, $f10
/* 9E8BC 800E84FC E4480004 */  swc1       $f8, 0x4($v0)
/* 9E8C0 800E8500 E4620004 */  swc1       $f2, 0x4($v1)
/* 9E8C4 800E8504 460A2280 */  add.s      $f10, $f4, $f10
/* 9E8C8 800E8508 E7A40038 */  swc1       $f4, 0x38($sp)
/* 9E8CC 800E850C E4400008 */  swc1       $f0, 0x8($v0)
/* 9E8D0 800E8510 E46A0008 */  swc1       $f10, 0x8($v1)
/* 9E8D4 800E8514 D7B40040 */  ldc1       $f20, 0x40($sp)
/* 9E8D8 800E8518 03E00008 */  jr         $ra
/* 9E8DC 800E851C 27BD0048 */   addiu     $sp, $sp, 0x48

glabel func_race_800E8520
/* 9E8E0 800E8520 90A20000 */  lbu        $v0, 0x0($a1)
/* 9E8E4 800E8524 A0820128 */  sb         $v0, 0x128($a0)
/* 9E8E8 800E8528 90A20001 */  lbu        $v0, 0x1($a1)
/* 9E8EC 800E852C A0820129 */  sb         $v0, 0x129($a0)
/* 9E8F0 800E8530 90A20002 */  lbu        $v0, 0x2($a1)
/* 9E8F4 800E8534 A082012A */  sb         $v0, 0x12A($a0)
/* 9E8F8 800E8538 90A20003 */  lbu        $v0, 0x3($a1)
/* 9E8FC 800E853C 03E00008 */  jr         $ra
/* 9E900 800E8540 A082012B */   sb        $v0, 0x12B($a0)

glabel func_race_800E8544
/* 9E904 800E8544 90820128 */  lbu        $v0, 0x128($a0)
/* 9E908 800E8548 A0A20000 */  sb         $v0, 0x0($a1)
/* 9E90C 800E854C 90820129 */  lbu        $v0, 0x129($a0)
/* 9E910 800E8550 A0A20001 */  sb         $v0, 0x1($a1)
/* 9E914 800E8554 9082012A */  lbu        $v0, 0x12A($a0)
/* 9E918 800E8558 A0A20002 */  sb         $v0, 0x2($a1)
/* 9E91C 800E855C 9082012B */  lbu        $v0, 0x12B($a0)
/* 9E920 800E8560 03E00008 */  jr         $ra
/* 9E924 800E8564 A0A20003 */   sb        $v0, 0x3($a1)
