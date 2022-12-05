.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text, "ax"

glabel func_8000BD40
/* C940 8000BD40 00801021 */  addu       $v0, $a0, $zero
/* C944 8000BD44 3C038000 */  lui        $v1, %hi(D_80000D88)
/* C948 8000BD48 24630D88 */  addiu      $v1, $v1, %lo(D_80000D88)
/* C94C 8000BD4C AC430010 */  sw         $v1, 0x10($v0)
/* C950 8000BD50 A0400000 */  sb         $zero, 0x0($v0)
/* C954 8000BD54 AC400008 */  sw         $zero, 0x8($v0)
/* C958 8000BD58 AC400004 */  sw         $zero, 0x4($v0)
/* C95C 8000BD5C 03E00008 */  jr         $ra
/* C960 8000BD60 A440000C */   sh        $zero, 0xC($v0)

glabel func_8000BD64
/* C964 8000BD64 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* C968 8000BD68 AFB00010 */  sw         $s0, 0x10($sp)
/* C96C 8000BD6C 00808021 */  addu       $s0, $a0, $zero
/* C970 8000BD70 AFB10014 */  sw         $s1, 0x14($sp)
/* C974 8000BD74 00A08821 */  addu       $s1, $a1, $zero
/* C978 8000BD78 3C028000 */  lui        $v0, %hi(D_80000D88)
/* C97C 8000BD7C AFBF0018 */  sw         $ra, 0x18($sp)
/* C980 8000BD80 92030000 */  lbu        $v1, 0x0($s0)
/* C984 8000BD84 24420D88 */  addiu      $v0, $v0, %lo(D_80000D88)
/* C988 8000BD88 10600003 */  beqz       $v1, .L8000BD98
/* C98C 8000BD8C AE020010 */   sw        $v0, 0x10($s0)
/* C990 8000BD90 0C002F89 */  jal        func_8000BE24
/* C994 8000BD94 00000000 */   nop
.L8000BD98:
/* C998 8000BD98 32220001 */  andi       $v0, $s1, 0x1
/* C99C 8000BD9C 10400003 */  beqz       $v0, .L8000BDAC
/* C9A0 8000BDA0 00000000 */   nop
/* C9A4 8000BDA4 0C01FB5C */  jal        func_8007ED70
/* C9A8 8000BDA8 02002021 */   addu      $a0, $s0, $zero
.L8000BDAC:
/* C9AC 8000BDAC 8FBF0018 */  lw         $ra, 0x18($sp)
/* C9B0 8000BDB0 8FB10014 */  lw         $s1, 0x14($sp)
/* C9B4 8000BDB4 8FB00010 */  lw         $s0, 0x10($sp)
/* C9B8 8000BDB8 03E00008 */  jr         $ra
/* C9BC 8000BDBC 27BD0020 */   addiu     $sp, $sp, 0x20

glabel func_8000BDC0
/* C9C0 8000BDC0 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* C9C4 8000BDC4 AFB00010 */  sw         $s0, 0x10($sp)
/* C9C8 8000BDC8 00808021 */  addu       $s0, $a0, $zero
/* C9CC 8000BDCC AFBF0014 */  sw         $ra, 0x14($sp)
/* C9D0 8000BDD0 92020000 */  lbu        $v0, 0x0($s0)
/* C9D4 8000BDD4 10400007 */  beqz       $v0, .L8000BDF4
/* C9D8 8000BDD8 3C028003 */   lui       $v0, %hi(D_8002FFF0)
/* C9DC 8000BDDC 8E020010 */  lw         $v0, 0x10($s0)
/* C9E0 8000BDE0 84440010 */  lh         $a0, 0x10($v0)
/* C9E4 8000BDE4 8C420014 */  lw         $v0, 0x14($v0)
/* C9E8 8000BDE8 0040F809 */  jalr       $v0
/* C9EC 8000BDEC 02042021 */   addu      $a0, $s0, $a0
/* C9F0 8000BDF0 3C028003 */  lui        $v0, %hi(D_8002FFF0)
.L8000BDF4:
/* C9F4 8000BDF4 8C43FFF0 */  lw         $v1, %lo(D_8002FFF0)($v0)
/* C9F8 8000BDF8 2402FFFF */  addiu      $v0, $zero, -0x1
/* C9FC 8000BDFC 10620004 */  beq        $v1, $v0, .L8000BE10
/* CA00 8000BE00 24020001 */   addiu     $v0, $zero, 0x1
/* CA04 8000BE04 A2020000 */  sb         $v0, 0x0($s0)
/* CA08 8000BE08 08002F85 */  j          .L8000BE14
/* CA0C 8000BE0C 24020001 */   addiu     $v0, $zero, 0x1
.L8000BE10:
/* CA10 8000BE10 00001021 */  addu       $v0, $zero, $zero
.L8000BE14:
/* CA14 8000BE14 8FBF0014 */  lw         $ra, 0x14($sp)
/* CA18 8000BE18 8FB00010 */  lw         $s0, 0x10($sp)
/* CA1C 8000BE1C 03E00008 */  jr         $ra
/* CA20 8000BE20 27BD0018 */   addiu     $sp, $sp, 0x18

glabel func_8000BE24
/* CA24 8000BE24 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* CA28 8000BE28 AFB00010 */  sw         $s0, 0x10($sp)
/* CA2C 8000BE2C 00808021 */  addu       $s0, $a0, $zero
/* CA30 8000BE30 AFBF0014 */  sw         $ra, 0x14($sp)
/* CA34 8000BE34 92020000 */  lbu        $v0, 0x0($s0)
/* CA38 8000BE38 1040000D */  beqz       $v0, .L8000BE70
/* CA3C 8000BE3C 00000000 */   nop
/* CA40 8000BE40 8E040004 */  lw         $a0, 0x4($s0)
/* CA44 8000BE44 10800003 */  beqz       $a0, .L8000BE54
/* CA48 8000BE48 00000000 */   nop
/* CA4C 8000BE4C 0C01FB5C */  jal        func_8007ED70
/* CA50 8000BE50 00000000 */   nop
.L8000BE54:
/* CA54 8000BE54 8E040008 */  lw         $a0, 0x8($s0)
/* CA58 8000BE58 50800004 */  beql       $a0, $zero, .L8000BE6C
/* CA5C 8000BE5C AE000004 */   sw        $zero, 0x4($s0)
/* CA60 8000BE60 0C01FB5C */  jal        func_8007ED70
/* CA64 8000BE64 00000000 */   nop
/* CA68 8000BE68 AE000004 */  sw         $zero, 0x4($s0)
.L8000BE6C:
/* CA6C 8000BE6C AE000008 */  sw         $zero, 0x8($s0)
.L8000BE70:
/* CA70 8000BE70 8FBF0014 */  lw         $ra, 0x14($sp)
/* CA74 8000BE74 8FB00010 */  lw         $s0, 0x10($sp)
/* CA78 8000BE78 24020001 */  addiu      $v0, $zero, 0x1
/* CA7C 8000BE7C 03E00008 */  jr         $ra
/* CA80 8000BE80 27BD0018 */   addiu     $sp, $sp, 0x18

glabel func_8000BE84
/* CA84 8000BE84 27BDFF90 */  addiu      $sp, $sp, -0x70
/* CA88 8000BE88 AFB20060 */  sw         $s2, 0x60($sp)
/* CA8C 8000BE8C 00809021 */  addu       $s2, $a0, $zero
/* CA90 8000BE90 AFB1005C */  sw         $s1, 0x5C($sp)
/* CA94 8000BE94 00A08821 */  addu       $s1, $a1, $zero
/* CA98 8000BE98 27A40020 */  addiu      $a0, $sp, 0x20
/* CA9C 8000BE9C AFBF006C */  sw         $ra, 0x6C($sp)
/* CAA0 8000BEA0 AFB40068 */  sw         $s4, 0x68($sp)
/* CAA4 8000BEA4 AFB30064 */  sw         $s3, 0x64($sp)
/* CAA8 8000BEA8 0C01F720 */  jal        func_8007DC80
/* CAAC 8000BEAC AFB00058 */   sw        $s0, 0x58($sp)
/* CAB0 8000BEB0 3C028000 */  lui        $v0, %hi(D_80000DB0)
/* CAB4 8000BEB4 24420DB0 */  addiu      $v0, $v0, %lo(D_80000DB0)
/* CAB8 8000BEB8 AFA20048 */  sw         $v0, 0x48($sp)
/* CABC 8000BEBC 8E420008 */  lw         $v0, 0x8($s2)
/* CAC0 8000BEC0 10400007 */  beqz       $v0, .L8000BEE0
/* CAC4 8000BEC4 27B00020 */   addiu     $s0, $sp, 0x20
/* CAC8 8000BEC8 8E420010 */  lw         $v0, 0x10($s2)
/* CACC 8000BECC 84440020 */  lh         $a0, 0x20($v0)
/* CAD0 8000BED0 8C420024 */  lw         $v0, 0x24($v0)
/* CAD4 8000BED4 0040F809 */  jalr       $v0
/* CAD8 8000BED8 02442021 */   addu      $a0, $s2, $a0
/* CADC 8000BEDC 27B00020 */  addiu      $s0, $sp, 0x20
.L8000BEE0:
/* CAE0 8000BEE0 02002021 */  addu       $a0, $s0, $zero
/* CAE4 8000BEE4 02202821 */  addu       $a1, $s1, $zero
/* CAE8 8000BEE8 24060002 */  addiu      $a2, $zero, 0x2
/* CAEC 8000BEEC 0C001989 */  jal        func_80006624
/* CAF0 8000BEF0 00003821 */   addu      $a3, $zero, $zero
/* CAF4 8000BEF4 1440005F */  bnez       $v0, .L8000C074
/* CAF8 8000BEF8 02002021 */   addu      $a0, $s0, $zero
/* CAFC 8000BEFC 27B10050 */  addiu      $s1, $sp, 0x50
/* CB00 8000BF00 AFB10010 */  sw         $s1, 0x10($sp)
/* CB04 8000BF04 00002821 */  addu       $a1, $zero, $zero
/* CB08 8000BF08 27A60018 */  addiu      $a2, $sp, 0x18
/* CB0C 8000BF0C 0C001A4A */  jal        func_80006928
/* CB10 8000BF10 24070002 */   addiu     $a3, $zero, 0x2
/* CB14 8000BF14 14400057 */  bnez       $v0, .L8000C074
/* CB18 8000BF18 02002021 */   addu      $a0, $s0, $zero
/* CB1C 8000BF1C 8FA30050 */  lw         $v1, 0x50($sp)
/* CB20 8000BF20 24020002 */  addiu      $v0, $zero, 0x2
/* CB24 8000BF24 14620053 */  bne        $v1, $v0, .L8000C074
/* CB28 8000BF28 24130002 */   addiu     $s3, $zero, 0x2
/* CB2C 8000BF2C 02602821 */  addu       $a1, $s3, $zero
/* CB30 8000BF30 27A60018 */  addiu      $a2, $sp, 0x18
/* CB34 8000BF34 02603821 */  addu       $a3, $s3, $zero
/* CB38 8000BF38 93A20019 */  lbu        $v0, 0x19($sp)
/* CB3C 8000BF3C 93A30018 */  lbu        $v1, 0x18($sp)
/* CB40 8000BF40 00021200 */  sll        $v0, $v0, 8
/* CB44 8000BF44 00621821 */  addu       $v1, $v1, $v0
/* CB48 8000BF48 A643000C */  sh         $v1, 0xC($s2)
/* CB4C 8000BF4C 0C001A4A */  jal        func_80006928
/* CB50 8000BF50 AFB10010 */   sw        $s1, 0x10($sp)
/* CB54 8000BF54 14400047 */  bnez       $v0, .L8000C074
/* CB58 8000BF58 02002021 */   addu      $a0, $s0, $zero
/* CB5C 8000BF5C 8FA20050 */  lw         $v0, 0x50($sp)
/* CB60 8000BF60 14530044 */  bne        $v0, $s3, .L8000C074
/* CB64 8000BF64 3C028003 */   lui       $v0, %hi(D_8002FFF0)
/* CB68 8000BF68 8C44FFF0 */  lw         $a0, %lo(D_8002FFF0)($v0)
/* CB6C 8000BF6C 93A20019 */  lbu        $v0, 0x19($sp)
/* CB70 8000BF70 93A30018 */  lbu        $v1, 0x18($sp)
/* CB74 8000BF74 00021200 */  sll        $v0, $v0, 8
/* CB78 8000BF78 0C01FB65 */  jal        func_8007ED94
/* CB7C 8000BF7C 0062A025 */   or        $s4, $v1, $v0
/* CB80 8000BF80 9644000C */  lhu        $a0, 0xC($s2)
/* CB84 8000BF84 0C00943C */  jal        func_800250F0
/* CB88 8000BF88 00042040 */   sll       $a0, $a0, 1
/* CB8C 8000BF8C 00142040 */  sll        $a0, $s4, 1
/* CB90 8000BF90 0C00943C */  jal        func_800250F0
/* CB94 8000BF94 AE420008 */   sw        $v0, 0x8($s2)
/* CB98 8000BF98 0C01FB72 */  jal        func_8007EDC8
/* CB9C 8000BF9C AE420004 */   sw        $v0, 0x4($s2)
/* CBA0 8000BFA0 8E420008 */  lw         $v0, 0x8($s2)
/* CBA4 8000BFA4 10400004 */  beqz       $v0, .L8000BFB8
/* CBA8 8000BFA8 24130004 */   addiu     $s3, $zero, 0x4
/* CBAC 8000BFAC 8E420004 */  lw         $v0, 0x4($s2)
/* CBB0 8000BFB0 14400008 */  bnez       $v0, .L8000BFD4
/* CBB4 8000BFB4 27B00020 */   addiu     $s0, $sp, 0x20
.L8000BFB8:
/* CBB8 8000BFB8 3C048000 */  lui        $a0, %hi(D_80000D80)
/* CBBC 8000BFBC 24840D80 */  addiu      $a0, $a0, %lo(D_80000D80)
/* CBC0 8000BFC0 00002821 */  addu       $a1, $zero, $zero
/* CBC4 8000BFC4 00A03021 */  addu       $a2, $a1, $zero
/* CBC8 8000BFC8 0C011ACF */  jal        func_80046B3C
/* CBCC 8000BFCC 00A03821 */   addu      $a3, $a1, $zero
/* CBD0 8000BFD0 27B00020 */  addiu      $s0, $sp, 0x20
.L8000BFD4:
/* CBD4 8000BFD4 02002021 */  addu       $a0, $s0, $zero
/* CBD8 8000BFD8 02602821 */  addu       $a1, $s3, $zero
/* CBDC 8000BFDC 9647000C */  lhu        $a3, 0xC($s2)
/* CBE0 8000BFE0 27A20050 */  addiu      $v0, $sp, 0x50
/* CBE4 8000BFE4 AFA20010 */  sw         $v0, 0x10($sp)
/* CBE8 8000BFE8 8E460008 */  lw         $a2, 0x8($s2)
/* CBEC 8000BFEC 0C001A4A */  jal        func_80006928
/* CBF0 8000BFF0 00073840 */   sll       $a3, $a3, 1
/* CBF4 8000BFF4 1440001F */  bnez       $v0, .L8000C074
/* CBF8 8000BFF8 02002021 */   addu      $a0, $s0, $zero
/* CBFC 8000BFFC 00003021 */  addu       $a2, $zero, $zero
/* CC00 8000C000 8E480008 */  lw         $t0, 0x8($s2)
/* CC04 8000C004 8FA20050 */  lw         $v0, 0x50($sp)
/* CC08 8000C008 9643000C */  lhu        $v1, 0xC($s2)
/* CC0C 8000C00C 1060000E */  beqz       $v1, .L8000C048
/* CC10 8000C010 02629821 */   addu      $s3, $s3, $v0
.L8000C014:
/* CC14 8000C014 91040000 */  lbu        $a0, 0x0($t0)
/* CC18 8000C018 91020001 */  lbu        $v0, 0x1($t0)
/* CC1C 8000C01C 8E430008 */  lw         $v1, 0x8($s2)
/* CC20 8000C020 00021200 */  sll        $v0, $v0, 8
/* CC24 8000C024 00822021 */  addu       $a0, $a0, $v0
/* CC28 8000C028 00061040 */  sll        $v0, $a2, 1
/* CC2C 8000C02C 00431021 */  addu       $v0, $v0, $v1
/* CC30 8000C030 A4440000 */  sh         $a0, 0x0($v0)
/* CC34 8000C034 9642000C */  lhu        $v0, 0xC($s2)
/* CC38 8000C038 24C60001 */  addiu      $a2, $a2, 0x1
/* CC3C 8000C03C 00C2102A */  slt        $v0, $a2, $v0
/* CC40 8000C040 1440FFF4 */  bnez       $v0, .L8000C014
/* CC44 8000C044 25080002 */   addiu     $t0, $t0, 0x2
.L8000C048:
/* CC48 8000C048 27B10020 */  addiu      $s1, $sp, 0x20
/* CC4C 8000C04C 02202021 */  addu       $a0, $s1, $zero
/* CC50 8000C050 02602821 */  addu       $a1, $s3, $zero
/* CC54 8000C054 27A20050 */  addiu      $v0, $sp, 0x50
/* CC58 8000C058 3290FFFF */  andi       $s0, $s4, 0xFFFF
/* CC5C 8000C05C AFA20010 */  sw         $v0, 0x10($sp)
/* CC60 8000C060 8E460004 */  lw         $a2, 0x4($s2)
/* CC64 8000C064 0C001A4A */  jal        func_80006928
/* CC68 8000C068 00103840 */   sll       $a3, $s0, 1
/* CC6C 8000C06C 10400005 */  beqz       $v0, .L8000C084
/* CC70 8000C070 02202021 */   addu      $a0, $s1, $zero
.L8000C074:
/* CC74 8000C074 0C01F72E */  jal        func_8007DCB8
/* CC78 8000C078 24050002 */   addiu     $a1, $zero, 0x2
/* CC7C 8000C07C 08003037 */  j          .L8000C0DC
/* CC80 8000C080 00001021 */   addu      $v0, $zero, $zero
.L8000C084:
/* CC84 8000C084 0C001A16 */  jal        func_80006858
/* CC88 8000C088 02202021 */   addu      $a0, $s1, $zero
/* CC8C 8000C08C 8E480004 */  lw         $t0, 0x4($s2)
/* CC90 8000C090 1200000E */  beqz       $s0, .L8000C0CC
/* CC94 8000C094 00003021 */   addu      $a2, $zero, $zero
/* CC98 8000C098 02003821 */  addu       $a3, $s0, $zero
.L8000C09C:
/* CC9C 8000C09C 91050000 */  lbu        $a1, 0x0($t0)
/* CCA0 8000C0A0 91020001 */  lbu        $v0, 0x1($t0)
/* CCA4 8000C0A4 25080002 */  addiu      $t0, $t0, 0x2
/* CCA8 8000C0A8 00061840 */  sll        $v1, $a2, 1
/* CCAC 8000C0AC 24C60001 */  addiu      $a2, $a2, 0x1
/* CCB0 8000C0B0 8E440004 */  lw         $a0, 0x4($s2)
/* CCB4 8000C0B4 00021200 */  sll        $v0, $v0, 8
/* CCB8 8000C0B8 00A22821 */  addu       $a1, $a1, $v0
/* CCBC 8000C0BC 00641821 */  addu       $v1, $v1, $a0
/* CCC0 8000C0C0 00C7102A */  slt        $v0, $a2, $a3
/* CCC4 8000C0C4 1440FFF5 */  bnez       $v0, .L8000C09C
/* CCC8 8000C0C8 A4650000 */   sh        $a1, 0x0($v1)
.L8000C0CC:
/* CCCC 8000C0CC 27A40020 */  addiu      $a0, $sp, 0x20
/* CCD0 8000C0D0 0C01F72E */  jal        func_8007DCB8
/* CCD4 8000C0D4 24050002 */   addiu     $a1, $zero, 0x2
/* CCD8 8000C0D8 24020001 */  addiu      $v0, $zero, 0x1
.L8000C0DC:
/* CCDC 8000C0DC 8FBF006C */  lw         $ra, 0x6C($sp)
/* CCE0 8000C0E0 8FB40068 */  lw         $s4, 0x68($sp)
/* CCE4 8000C0E4 8FB30064 */  lw         $s3, 0x64($sp)
/* CCE8 8000C0E8 8FB20060 */  lw         $s2, 0x60($sp)
/* CCEC 8000C0EC 8FB1005C */  lw         $s1, 0x5C($sp)
/* CCF0 8000C0F0 8FB00058 */  lw         $s0, 0x58($sp)
/* CCF4 8000C0F4 03E00008 */  jr         $ra
/* CCF8 8000C0F8 27BD0070 */   addiu     $sp, $sp, 0x70

glabel func_8000C0FC
/* CCFC 8000C0FC 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* CD00 8000C100 AFB00010 */  sw         $s0, 0x10($sp)
/* CD04 8000C104 00808021 */  addu       $s0, $a0, $zero
/* CD08 8000C108 AFBF0014 */  sw         $ra, 0x14($sp)
/* CD0C 8000C10C 8E040008 */  lw         $a0, 0x8($s0)
/* CD10 8000C110 10800003 */  beqz       $a0, .L8000C120
/* CD14 8000C114 00000000 */   nop
/* CD18 8000C118 0C009444 */  jal        func_80025110
/* CD1C 8000C11C 00000000 */   nop
.L8000C120:
/* CD20 8000C120 8E040004 */  lw         $a0, 0x4($s0)
/* CD24 8000C124 50800004 */  beql       $a0, $zero, .L8000C138
/* CD28 8000C128 AE000008 */   sw        $zero, 0x8($s0)
/* CD2C 8000C12C 0C009444 */  jal        func_80025110
/* CD30 8000C130 00000000 */   nop
/* CD34 8000C134 AE000008 */  sw         $zero, 0x8($s0)
.L8000C138:
/* CD38 8000C138 AE000004 */  sw         $zero, 0x4($s0)
/* CD3C 8000C13C 8FBF0014 */  lw         $ra, 0x14($sp)
/* CD40 8000C140 8FB00010 */  lw         $s0, 0x10($sp)
/* CD44 8000C144 03E00008 */  jr         $ra
/* CD48 8000C148 27BD0018 */   addiu     $sp, $sp, 0x18

glabel func_8000C14C
/* CD4C 8000C14C 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* CD50 8000C150 AFBF0010 */  sw         $ra, 0x10($sp)
/* CD54 8000C154 8C870004 */  lw         $a3, 0x4($a0)
/* CD58 8000C158 00A04021 */  addu       $t0, $a1, $zero
/* CD5C 8000C15C 10E0000F */  beqz       $a3, .L8000C19C
/* CD60 8000C160 00001021 */   addu      $v0, $zero, $zero
/* CD64 8000C164 9482000C */  lhu        $v0, 0xC($a0)
/* CD68 8000C168 30C3FFFF */  andi       $v1, $a2, 0xFFFF
/* CD6C 8000C16C 0043102B */  sltu       $v0, $v0, $v1
/* CD70 8000C170 1440000A */  bnez       $v0, .L8000C19C
/* CD74 8000C174 00001021 */   addu      $v0, $zero, $zero
/* CD78 8000C178 00031840 */  sll        $v1, $v1, 1
/* CD7C 8000C17C 8C820008 */  lw         $v0, 0x8($a0)
/* CD80 8000C180 01002021 */  addu       $a0, $t0, $zero
/* CD84 8000C184 00621821 */  addu       $v1, $v1, $v0
/* CD88 8000C188 94650000 */  lhu        $a1, 0x0($v1)
/* CD8C 8000C18C 00003021 */  addu       $a2, $zero, $zero
/* CD90 8000C190 00052840 */  sll        $a1, $a1, 1
/* CD94 8000C194 0C0016F6 */  jal        func_80005BD8
/* CD98 8000C198 00E52821 */   addu      $a1, $a3, $a1
.L8000C19C:
/* CD9C 8000C19C 8FBF0010 */  lw         $ra, 0x10($sp)
/* CDA0 8000C1A0 03E00008 */  jr         $ra
/* CDA4 8000C1A4 27BD0018 */   addiu     $sp, $sp, 0x18

glabel func_8000C1A8
/* CDA8 8000C1A8 8C860004 */  lw         $a2, 0x4($a0)
/* CDAC 8000C1AC 14C00003 */  bnez       $a2, .L8000C1BC
/* CDB0 8000C1B0 30A3FFFF */   andi      $v1, $a1, 0xFFFF
/* CDB4 8000C1B4 03E00008 */  jr         $ra
/* CDB8 8000C1B8 00001021 */   addu      $v0, $zero, $zero
.L8000C1BC:
/* CDBC 8000C1BC 9482000C */  lhu        $v0, 0xC($a0)
/* CDC0 8000C1C0 0043102B */  sltu       $v0, $v0, $v1
/* CDC4 8000C1C4 14400007 */  bnez       $v0, .L8000C1E4
/* CDC8 8000C1C8 00031840 */   sll       $v1, $v1, 1
/* CDCC 8000C1CC 8C820008 */  lw         $v0, 0x8($a0)
/* CDD0 8000C1D0 00621821 */  addu       $v1, $v1, $v0
/* CDD4 8000C1D4 94620000 */  lhu        $v0, 0x0($v1)
/* CDD8 8000C1D8 00021040 */  sll        $v0, $v0, 1
/* CDDC 8000C1DC 03E00008 */  jr         $ra
/* CDE0 8000C1E0 00C21021 */   addu      $v0, $a2, $v0
.L8000C1E4:
/* CDE4 8000C1E4 03E00008 */  jr         $ra
/* CDE8 8000C1E8 00001021 */   addu      $v0, $zero, $zero

glabel func_8000C1EC
/* CDEC 8000C1EC 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* CDF0 8000C1F0 AFB10014 */  sw         $s1, 0x14($sp)
/* CDF4 8000C1F4 00808821 */  addu       $s1, $a0, $zero
/* CDF8 8000C1F8 AFB20018 */  sw         $s2, 0x18($sp)
/* CDFC 8000C1FC 00A09021 */  addu       $s2, $a1, $zero
/* CE00 8000C200 AFBF001C */  sw         $ra, 0x1C($sp)
/* CE04 8000C204 AFB00010 */  sw         $s0, 0x10($sp)
/* CE08 8000C208 9622000C */  lhu        $v0, 0xC($s1)
/* CE0C 8000C20C 10400011 */  beqz       $v0, .L8000C254
/* CE10 8000C210 00008021 */   addu      $s0, $zero, $zero
/* CE14 8000C214 00101040 */  sll        $v0, $s0, 1
.L8000C218:
/* CE18 8000C218 8E230008 */  lw         $v1, 0x8($s1)
/* CE1C 8000C21C 02402021 */  addu       $a0, $s2, $zero
/* CE20 8000C220 00431021 */  addu       $v0, $v0, $v1
/* CE24 8000C224 94450000 */  lhu        $a1, 0x0($v0)
/* CE28 8000C228 8E220004 */  lw         $v0, 0x4($s1)
/* CE2C 8000C22C 00052840 */  sll        $a1, $a1, 1
/* CE30 8000C230 0C00167C */  jal        func_800059F0
/* CE34 8000C234 00452821 */   addu      $a1, $v0, $a1
/* CE38 8000C238 14400007 */  bnez       $v0, .L8000C258
/* CE3C 8000C23C 02001021 */   addu      $v0, $s0, $zero
/* CE40 8000C240 9622000C */  lhu        $v0, 0xC($s1)
/* CE44 8000C244 26100001 */  addiu      $s0, $s0, 0x1
/* CE48 8000C248 0202102A */  slt        $v0, $s0, $v0
/* CE4C 8000C24C 1440FFF2 */  bnez       $v0, .L8000C218
/* CE50 8000C250 00101040 */   sll       $v0, $s0, 1
.L8000C254:
/* CE54 8000C254 3402FFFF */  ori        $v0, $zero, 0xFFFF
.L8000C258:
/* CE58 8000C258 8FBF001C */  lw         $ra, 0x1C($sp)
/* CE5C 8000C25C 8FB20018 */  lw         $s2, 0x18($sp)
/* CE60 8000C260 8FB10014 */  lw         $s1, 0x14($sp)
/* CE64 8000C264 8FB00010 */  lw         $s0, 0x10($sp)
/* CE68 8000C268 03E00008 */  jr         $ra
/* CE6C 8000C26C 27BD0020 */   addiu     $sp, $sp, 0x20

glabel func_8000C270
/* CE70 8000C270 3C028003 */  lui        $v0, %hi(D_8002FFF0)
/* CE74 8000C274 03E00008 */  jr         $ra
/* CE78 8000C278 AC44FFF0 */   sw        $a0, %lo(D_8002FFF0)($v0)

glabel func_8000C27C
/* CE7C 8000C27C 9482000C */  lhu        $v0, 0xC($a0)
/* CE80 8000C280 03E00008 */  jr         $ra
/* CE84 8000C284 00000000 */   nop

glabel func_8000C288
/* CE88 8000C288 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* CE8C 8000C28C AFBF0010 */  sw         $ra, 0x10($sp)
/* CE90 8000C290 8CA50000 */  lw         $a1, 0x0($a1)
/* CE94 8000C294 0C00307B */  jal        func_8000C1EC
/* CE98 8000C298 00000000 */   nop
/* CE9C 8000C29C 8FBF0010 */  lw         $ra, 0x10($sp)
/* CEA0 8000C2A0 3042FFFF */  andi       $v0, $v0, 0xFFFF
/* CEA4 8000C2A4 03E00008 */  jr         $ra
/* CEA8 8000C2A8 27BD0018 */   addiu     $sp, $sp, 0x18

glabel func_8000C2AC
/* CEAC 8000C2AC 90820000 */  lbu        $v0, 0x0($a0)
/* CEB0 8000C2B0 03E00008 */  jr         $ra
/* CEB4 8000C2B4 00000000 */   nop

glabel func_8000C2B8
/* CEB8 8000C2B8 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* CEBC 8000C2BC AFBF0010 */  sw         $ra, 0x10($sp)
/* CEC0 8000C2C0 0C01F72E */  jal        func_8007DCB8
/* CEC4 8000C2C4 00000000 */   nop
/* CEC8 8000C2C8 8FBF0010 */  lw         $ra, 0x10($sp)
/* CECC 8000C2CC 03E00008 */  jr         $ra
/* CED0 8000C2D0 27BD0018 */   addiu     $sp, $sp, 0x18
