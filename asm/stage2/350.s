.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text, "ax"

glabel func_80064AB0
/* 5BDE0 80064AB0 3C018004 */  lui        $at, %hi(D_8003E350)
/* 5BDE4 80064AB4 C420E350 */  lwc1       $f0, %lo(D_8003E350)($at)
/* 5BDE8 80064AB8 00801021 */  addu       $v0, $a0, $zero
/* 5BDEC 80064ABC A4400024 */  sh         $zero, 0x24($v0)
/* 5BDF0 80064AC0 A4400026 */  sh         $zero, 0x26($v0)
/* 5BDF4 80064AC4 AC400020 */  sw         $zero, 0x20($v0)
/* 5BDF8 80064AC8 AC400000 */  sw         $zero, 0x0($v0)
/* 5BDFC 80064ACC AC400004 */  sw         $zero, 0x4($v0)
/* 5BE00 80064AD0 AC400008 */  sw         $zero, 0x8($v0)
/* 5BE04 80064AD4 AC40000C */  sw         $zero, 0xC($v0)
/* 5BE08 80064AD8 AC400010 */  sw         $zero, 0x10($v0)
/* 5BE0C 80064ADC AC400014 */  sw         $zero, 0x14($v0)
/* 5BE10 80064AE0 AC400018 */  sw         $zero, 0x18($v0)
/* 5BE14 80064AE4 03E00008 */  jr         $ra
/* 5BE18 80064AE8 E440001C */   swc1      $f0, 0x1C($v0)

glabel func_80064AEC
/* 5BE1C 80064AEC 27BDFFD8 */  addiu      $sp, $sp, -0x28
/* 5BE20 80064AF0 AFB10014 */  sw         $s1, 0x14($sp)
/* 5BE24 80064AF4 00808821 */  addu       $s1, $a0, $zero
/* 5BE28 80064AF8 AFB00010 */  sw         $s0, 0x10($sp)
/* 5BE2C 80064AFC 00A08021 */  addu       $s0, $a1, $zero
/* 5BE30 80064B00 02002021 */  addu       $a0, $s0, $zero
/* 5BE34 80064B04 24050005 */  addiu      $a1, $zero, 0x5
/* 5BE38 80064B08 AFBF0020 */  sw         $ra, 0x20($sp)
/* 5BE3C 80064B0C AFB3001C */  sw         $s3, 0x1C($sp)
/* 5BE40 80064B10 0C0026F4 */  jal        func_80009BD0
/* 5BE44 80064B14 AFB20018 */   sw        $s2, 0x18($sp)
/* 5BE48 80064B18 3C028004 */  lui        $v0, %hi(jtbl_8003E358)
/* 5BE4C 80064B1C 2453E358 */  addiu      $s3, $v0, %lo(jtbl_8003E358)
/* 5BE50 80064B20 24120004 */  addiu      $s2, $zero, 0x4
.L80064B24:
/* 5BE54 80064B24 8E020028 */  lw         $v0, 0x28($s0)
/* 5BE58 80064B28 844400A0 */  lh         $a0, 0xA0($v0)
/* 5BE5C 80064B2C 8C4200A4 */  lw         $v0, 0xA4($v0)
/* 5BE60 80064B30 0040F809 */  jalr       $v0
/* 5BE64 80064B34 02042021 */   addu      $a0, $s0, $a0
/* 5BE68 80064B38 00401821 */  addu       $v1, $v0, $zero
/* 5BE6C 80064B3C 24020006 */  addiu      $v0, $zero, 0x6
/* 5BE70 80064B40 10620052 */  beq        $v1, $v0, .L80064C8C
/* 5BE74 80064B44 2463FFD5 */   addiu     $v1, $v1, -0x2B
/* 5BE78 80064B48 2C620007 */  sltiu      $v0, $v1, 0x7
/* 5BE7C 80064B4C 10400047 */  beqz       $v0, L80064C6C
/* 5BE80 80064B50 00031080 */   sll       $v0, $v1, 2
/* 5BE84 80064B54 00531021 */  addu       $v0, $v0, $s3
/* 5BE88 80064B58 8C420000 */  lw         $v0, 0x0($v0)
/* 5BE8C 80064B5C 00400008 */  jr         $v0
/* 5BE90 80064B60 00000000 */   nop
glabel L80064B64
/* 5BE94 80064B64 0C002680 */  jal        func_80009A00
/* 5BE98 80064B68 02002021 */   addu      $a0, $s0, $zero
/* 5BE9C 80064B6C 080192C9 */  j          .L80064B24
/* 5BEA0 80064B70 AE220020 */   sw        $v0, 0x20($s1)
glabel L80064B74
/* 5BEA4 80064B74 8E020028 */  lw         $v0, 0x28($s0)
/* 5BEA8 80064B78 844400A0 */  lh         $a0, 0xA0($v0)
/* 5BEAC 80064B7C 8C4200A4 */  lw         $v0, 0xA4($v0)
/* 5BEB0 80064B80 0040F809 */  jalr       $v0
/* 5BEB4 80064B84 02042021 */   addu      $a0, $s0, $a0
/* 5BEB8 80064B88 10520006 */  beq        $v0, $s2, .L80064BA4
/* 5BEBC 80064B8C 24050004 */   addiu     $a1, $zero, 0x4
/* 5BEC0 80064B90 8E020028 */  lw         $v0, 0x28($s0)
/* 5BEC4 80064B94 84440098 */  lh         $a0, 0x98($v0)
/* 5BEC8 80064B98 8C42009C */  lw         $v0, 0x9C($v0)
/* 5BECC 80064B9C 0040F809 */  jalr       $v0
/* 5BED0 80064BA0 02042021 */   addu      $a0, $s0, $a0
.L80064BA4:
/* 5BED4 80064BA4 8E020038 */  lw         $v0, 0x38($s0)
/* 5BED8 80064BA8 080192C9 */  j          .L80064B24
/* 5BEDC 80064BAC A6220024 */   sh        $v0, 0x24($s1)
glabel L80064BB0
/* 5BEE0 80064BB0 8E020028 */  lw         $v0, 0x28($s0)
/* 5BEE4 80064BB4 844400A0 */  lh         $a0, 0xA0($v0)
/* 5BEE8 80064BB8 8C4200A4 */  lw         $v0, 0xA4($v0)
/* 5BEEC 80064BBC 0040F809 */  jalr       $v0
/* 5BEF0 80064BC0 02042021 */   addu      $a0, $s0, $a0
/* 5BEF4 80064BC4 10520006 */  beq        $v0, $s2, .L80064BE0
/* 5BEF8 80064BC8 24050004 */   addiu     $a1, $zero, 0x4
/* 5BEFC 80064BCC 8E020028 */  lw         $v0, 0x28($s0)
/* 5BF00 80064BD0 84440098 */  lh         $a0, 0x98($v0)
/* 5BF04 80064BD4 8C42009C */  lw         $v0, 0x9C($v0)
/* 5BF08 80064BD8 0040F809 */  jalr       $v0
/* 5BF0C 80064BDC 02042021 */   addu      $a0, $s0, $a0
.L80064BE0:
/* 5BF10 80064BE0 8E020038 */  lw         $v0, 0x38($s0)
/* 5BF14 80064BE4 080192C9 */  j          .L80064B24
/* 5BF18 80064BE8 A6220026 */   sh        $v0, 0x26($s1)
glabel L80064BEC
/* 5BF1C 80064BEC 0C002680 */  jal        func_80009A00
/* 5BF20 80064BF0 02002021 */   addu      $a0, $s0, $zero
/* 5BF24 80064BF4 3C018004 */  lui        $at, %hi(D_8003E374)
/* 5BF28 80064BF8 C422E374 */  lwc1       $f2, %lo(D_8003E374)($at)
/* 5BF2C 80064BFC 44820000 */  mtc1       $v0, $f0
/* 5BF30 80064C00 46800020 */  cvt.s.w    $f0, $f0
/* 5BF34 80064C04 46020002 */  mul.s      $f0, $f0, $f2
/* 5BF38 80064C08 080192C9 */  j          .L80064B24
/* 5BF3C 80064C0C E6200000 */   swc1      $f0, 0x0($s1)
glabel L80064C10
/* 5BF40 80064C10 0C0025F8 */  jal        func_800097E0
/* 5BF44 80064C14 02002021 */   addu      $a0, $s0, $zero
/* 5BF48 80064C18 02002021 */  addu       $a0, $s0, $zero
/* 5BF4C 80064C1C 0C0025F8 */  jal        func_800097E0
/* 5BF50 80064C20 E6200004 */   swc1      $f0, 0x4($s1)
/* 5BF54 80064C24 02002021 */  addu       $a0, $s0, $zero
/* 5BF58 80064C28 0C0025F8 */  jal        func_800097E0
/* 5BF5C 80064C2C E6200008 */   swc1      $f0, 0x8($s1)
/* 5BF60 80064C30 080192C9 */  j          .L80064B24
/* 5BF64 80064C34 E620000C */   swc1      $f0, 0xC($s1)
glabel L80064C38
/* 5BF68 80064C38 0C0025F8 */  jal        func_800097E0
/* 5BF6C 80064C3C 02002021 */   addu      $a0, $s0, $zero
/* 5BF70 80064C40 02002021 */  addu       $a0, $s0, $zero
/* 5BF74 80064C44 0C0025F8 */  jal        func_800097E0
/* 5BF78 80064C48 E6200010 */   swc1      $f0, 0x10($s1)
/* 5BF7C 80064C4C 02002021 */  addu       $a0, $s0, $zero
/* 5BF80 80064C50 0C0025F8 */  jal        func_800097E0
/* 5BF84 80064C54 E6200014 */   swc1      $f0, 0x14($s1)
/* 5BF88 80064C58 02002021 */  addu       $a0, $s0, $zero
/* 5BF8C 80064C5C 0C0025F8 */  jal        func_800097E0
/* 5BF90 80064C60 E6200018 */   swc1      $f0, 0x18($s1)
/* 5BF94 80064C64 080192C9 */  j          .L80064B24
/* 5BF98 80064C68 E620001C */   swc1      $f0, 0x1C($s1)
glabel L80064C6C
/* 5BF9C 80064C6C 8E020028 */  lw         $v0, 0x28($s0)
/* 5BFA0 80064C70 00002821 */  addu       $a1, $zero, $zero
/* 5BFA4 80064C74 84440098 */  lh         $a0, 0x98($v0)
/* 5BFA8 80064C78 8C42009C */  lw         $v0, 0x9C($v0)
/* 5BFAC 80064C7C 0040F809 */  jalr       $v0
/* 5BFB0 80064C80 02042021 */   addu      $a0, $s0, $a0
/* 5BFB4 80064C84 080192C9 */  j          .L80064B24
/* 5BFB8 80064C88 00000000 */   nop
.L80064C8C:
/* 5BFBC 80064C8C 8FBF0020 */  lw         $ra, 0x20($sp)
/* 5BFC0 80064C90 8FB3001C */  lw         $s3, 0x1C($sp)
/* 5BFC4 80064C94 8FB20018 */  lw         $s2, 0x18($sp)
/* 5BFC8 80064C98 8FB10014 */  lw         $s1, 0x14($sp)
/* 5BFCC 80064C9C 8FB00010 */  lw         $s0, 0x10($sp)
/* 5BFD0 80064CA0 03E00008 */  jr         $ra
/* 5BFD4 80064CA4 27BD0028 */   addiu     $sp, $sp, 0x28

glabel func_80064CA8
/* 5BFD8 80064CA8 94820026 */  lhu        $v0, 0x26($a0)
/* 5BFDC 80064CAC 44851000 */  mtc1       $a1, $f2
/* 5BFE0 80064CB0 44822000 */  mtc1       $v0, $f4
/* 5BFE4 80064CB4 46802120 */  cvt.s.w    $f4, $f4
/* 5BFE8 80064CB8 4602203E */  c.le.s     $f4, $f2
/* 5BFEC 80064CBC 00000000 */  nop
/* 5BFF0 80064CC0 45000008 */  bc1f       .L80064CE4
/* 5BFF4 80064CC4 00000000 */   nop
/* 5BFF8 80064CC8 46041003 */  div.s      $f0, $f2, $f4
/* 5BFFC 80064CCC 4600018D */  trunc.w.s  $f6, $f0
/* 5C000 80064CD0 44023000 */  mfc1       $v0, $f6
/* 5C004 80064CD4 44820000 */  mtc1       $v0, $f0
/* 5C008 80064CD8 46800020 */  cvt.s.w    $f0, $f0
/* 5C00C 80064CDC 46002002 */  mul.s      $f0, $f4, $f0
/* 5C010 80064CE0 46001081 */  sub.s      $f2, $f2, $f0
.L80064CE4:
/* 5C014 80064CE4 03E00008 */  jr         $ra
/* 5C018 80064CE8 46001006 */   mov.s     $f0, $f2
