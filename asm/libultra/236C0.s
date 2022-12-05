.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text, "ax"

glabel func_80022AC0
/* 236C0 80022AC0 27BDFFC8 */  addiu      $sp, $sp, -0x38
/* 236C4 80022AC4 AFB20028 */  sw         $s2, 0x28($sp)
/* 236C8 80022AC8 00809021 */  addu       $s2, $a0, $zero
/* 236CC 80022ACC AFB3002C */  sw         $s3, 0x2C($sp)
/* 236D0 80022AD0 00A09821 */  addu       $s3, $a1, $zero
/* 236D4 80022AD4 02602021 */  addu       $a0, $s3, $zero
/* 236D8 80022AD8 240200FA */  addiu      $v0, $zero, 0xFA
/* 236DC 80022ADC AFBF0030 */  sw         $ra, 0x30($sp)
/* 236E0 80022AE0 AFB10024 */  sw         $s1, 0x24($sp)
/* 236E4 80022AE4 AFB00020 */  sw         $s0, 0x20($sp)
/* 236E8 80022AE8 3C018003 */  lui        $at, %hi(D_800323D4)
/* 236EC 80022AEC A02223D4 */  sb         $v0, %lo(D_800323D4)($at)
/* 236F0 80022AF0 0C008AEC */  jal        func_80022BB0
/* 236F4 80022AF4 00002821 */   addu      $a1, $zero, $zero
/* 236F8 80022AF8 24040001 */  addiu      $a0, $zero, 0x1
/* 236FC 80022AFC 3C118004 */  lui        $s1, %hi(D_8003BB90)
/* 23700 80022B00 2631BB90 */  addiu      $s1, $s1, %lo(D_8003BB90)
/* 23704 80022B04 0C007C4C */  jal        func_8001F130
/* 23708 80022B08 02202821 */   addu      $a1, $s1, $zero
/* 2370C 80022B0C 02402021 */  addu       $a0, $s2, $zero
/* 23710 80022B10 27B00018 */  addiu      $s0, $sp, 0x18
/* 23714 80022B14 02002821 */  addu       $a1, $s0, $zero
/* 23718 80022B18 0C007720 */  jal        osRecvMesg
/* 2371C 80022B1C 24060001 */   addiu     $a2, $zero, 0x1
/* 23720 80022B20 00002021 */  addu       $a0, $zero, $zero
/* 23724 80022B24 0C007C4C */  jal        func_8001F130
/* 23728 80022B28 02202821 */   addu      $a1, $s1, $zero
/* 2372C 80022B2C 02402021 */  addu       $a0, $s2, $zero
/* 23730 80022B30 02002821 */  addu       $a1, $s0, $zero
/* 23734 80022B34 24060001 */  addiu      $a2, $zero, 0x1
/* 23738 80022B38 0C007720 */  jal        osRecvMesg
/* 2373C 80022B3C 00408021 */   addu      $s0, $v0, $zero
/* 23740 80022B40 02602021 */  addu       $a0, $s3, $zero
/* 23744 80022B44 0C008B11 */  jal        func_80022C44
/* 23748 80022B48 27A50010 */   addiu     $a1, $sp, 0x10
/* 2374C 80022B4C 93A30012 */  lbu        $v1, 0x12($sp)
/* 23750 80022B50 30620001 */  andi       $v0, $v1, 0x1
/* 23754 80022B54 10400003 */  beqz       $v0, .L80022B64
/* 23758 80022B58 30620002 */   andi      $v0, $v1, 0x2
/* 2375C 80022B5C 1440000D */  bnez       $v0, .L80022B94
/* 23760 80022B60 24020002 */   addiu     $v0, $zero, 0x2
.L80022B64:
/* 23764 80022B64 97A20012 */  lhu        $v0, 0x12($sp)
/* 23768 80022B68 24030100 */  addiu      $v1, $zero, 0x100
/* 2376C 80022B6C 304201FF */  andi       $v0, $v0, 0x1FF
/* 23770 80022B70 10430003 */  beq        $v0, $v1, .L80022B80
/* 23774 80022B74 00000000 */   nop
/* 23778 80022B78 08008AE5 */  j          .L80022B94
/* 2377C 80022B7C 24020001 */   addiu     $v0, $zero, 0x1
.L80022B80:
/* 23780 80022B80 93A30012 */  lbu        $v1, 0x12($sp)
/* 23784 80022B84 30630004 */  andi       $v1, $v1, 0x4
/* 23788 80022B88 14600002 */  bnez       $v1, .L80022B94
/* 2378C 80022B8C 24020004 */   addiu     $v0, $zero, 0x4
/* 23790 80022B90 02001021 */  addu       $v0, $s0, $zero
.L80022B94:
/* 23794 80022B94 8FBF0030 */  lw         $ra, 0x30($sp)
/* 23798 80022B98 8FB3002C */  lw         $s3, 0x2C($sp)
/* 2379C 80022B9C 8FB20028 */  lw         $s2, 0x28($sp)
/* 237A0 80022BA0 8FB10024 */  lw         $s1, 0x24($sp)
/* 237A4 80022BA4 8FB00020 */  lw         $s0, 0x20($sp)
/* 237A8 80022BA8 03E00008 */  jr         $ra
/* 237AC 80022BAC 27BD0038 */   addiu     $sp, $sp, 0x38

glabel func_80022BB0
/* 237B0 80022BB0 27BDFFF0 */  addiu      $sp, $sp, -0x10
/* 237B4 80022BB4 3C038004 */  lui        $v1, %hi(D_8003BBCC)
/* 237B8 80022BB8 2463BBCC */  addiu      $v1, $v1, %lo(D_8003BBCC)
/* 237BC 80022BBC 2466FFC4 */  addiu      $a2, $v1, -0x3C
/* 237C0 80022BC0 00003821 */  addu       $a3, $zero, $zero
/* 237C4 80022BC4 240200FE */  addiu      $v0, $zero, 0xFE
/* 237C8 80022BC8 3C018004 */  lui        $at, %hi(D_8003A580)
/* 237CC 80022BCC A022A580 */  sb         $v0, %lo(D_8003A580)($at)
/* 237D0 80022BD0 24020001 */  addiu      $v0, $zero, 0x1
/* 237D4 80022BD4 AC620000 */  sw         $v0, 0x0($v1)
/* 237D8 80022BD8 24020001 */  addiu      $v0, $zero, 0x1
/* 237DC 80022BDC A3A20000 */  sb         $v0, 0x0($sp)
/* 237E0 80022BE0 24020003 */  addiu      $v0, $zero, 0x3
/* 237E4 80022BE4 A3A20001 */  sb         $v0, 0x1($sp)
/* 237E8 80022BE8 240200FF */  addiu      $v0, $zero, 0xFF
/* 237EC 80022BEC A3A50002 */  sb         $a1, 0x2($sp)
/* 237F0 80022BF0 A3A20003 */  sb         $v0, 0x3($sp)
/* 237F4 80022BF4 A3A20004 */  sb         $v0, 0x4($sp)
/* 237F8 80022BF8 18800006 */  blez       $a0, .L80022C14
/* 237FC 80022BFC A3A20005 */   sb        $v0, 0x5($sp)
.L80022C00:
/* 23800 80022C00 A0C00000 */  sb         $zero, 0x0($a2)
/* 23804 80022C04 24E70001 */  addiu      $a3, $a3, 0x1
/* 23808 80022C08 00E4102A */  slt        $v0, $a3, $a0
/* 2380C 80022C0C 1440FFFC */  bnez       $v0, .L80022C00
/* 23810 80022C10 24C60001 */   addiu     $a2, $a2, 0x1
.L80022C14:
/* 23814 80022C14 8BA20000 */  lwl        $v0, 0x0($sp)
/* 23818 80022C18 9BA20003 */  lwr        $v0, 0x3($sp)
/* 2381C 80022C1C 83A30004 */  lb         $v1, 0x4($sp)
/* 23820 80022C20 83A40005 */  lb         $a0, 0x5($sp)
/* 23824 80022C24 A8C20000 */  swl        $v0, 0x0($a2)
/* 23828 80022C28 B8C20003 */  swr        $v0, 0x3($a2)
/* 2382C 80022C2C A0C30004 */  sb         $v1, 0x4($a2)
/* 23830 80022C30 A0C40005 */  sb         $a0, 0x5($a2)
/* 23834 80022C34 240200FE */  addiu      $v0, $zero, 0xFE
/* 23838 80022C38 A0C20006 */  sb         $v0, 0x6($a2)
/* 2383C 80022C3C 03E00008 */  jr         $ra
/* 23840 80022C40 27BD0010 */   addiu     $sp, $sp, 0x10

glabel func_80022C44
/* 23844 80022C44 27BDFFF0 */  addiu      $sp, $sp, -0x10
/* 23848 80022C48 00A03821 */  addu       $a3, $a1, $zero
/* 2384C 80022C4C 3C068004 */  lui        $a2, %hi(D_8003BB90)
/* 23850 80022C50 24C6BB90 */  addiu      $a2, $a2, %lo(D_8003BB90)
/* 23854 80022C54 18800005 */  blez       $a0, .L80022C6C
/* 23858 80022C58 00001821 */   addu      $v1, $zero, $zero
.L80022C5C:
/* 2385C 80022C5C 24630001 */  addiu      $v1, $v1, 0x1
/* 23860 80022C60 0064102A */  slt        $v0, $v1, $a0
/* 23864 80022C64 1440FFFD */  bnez       $v0, .L80022C5C
/* 23868 80022C68 24C60001 */   addiu     $a2, $a2, 0x1
.L80022C6C:
/* 2386C 80022C6C 88C20000 */  lwl        $v0, 0x0($a2)
/* 23870 80022C70 98C20003 */  lwr        $v0, 0x3($a2)
/* 23874 80022C74 80C30004 */  lb         $v1, 0x4($a2)
/* 23878 80022C78 80C40005 */  lb         $a0, 0x5($a2)
/* 2387C 80022C7C ABA20000 */  swl        $v0, 0x0($sp)
/* 23880 80022C80 BBA20003 */  swr        $v0, 0x3($sp)
/* 23884 80022C84 A3A30004 */  sb         $v1, 0x4($sp)
/* 23888 80022C88 A3A40005 */  sb         $a0, 0x5($sp)
/* 2388C 80022C8C 93A20001 */  lbu        $v0, 0x1($sp)
/* 23890 80022C90 304200C0 */  andi       $v0, $v0, 0xC0
/* 23894 80022C94 00021102 */  srl        $v0, $v0, 4
/* 23898 80022C98 14400008 */  bnez       $v0, .L80022CBC
/* 2389C 80022C9C A0E20003 */   sb        $v0, 0x3($a3)
/* 238A0 80022CA0 93A20004 */  lbu        $v0, 0x4($sp)
/* 238A4 80022CA4 93A30003 */  lbu        $v1, 0x3($sp)
/* 238A8 80022CA8 00021200 */  sll        $v0, $v0, 8
/* 238AC 80022CAC 00621825 */  or         $v1, $v1, $v0
/* 238B0 80022CB0 A4E30000 */  sh         $v1, 0x0($a3)
/* 238B4 80022CB4 93A20005 */  lbu        $v0, 0x5($sp)
/* 238B8 80022CB8 A0E20002 */  sb         $v0, 0x2($a3)
.L80022CBC:
/* 238BC 80022CBC 03E00008 */  jr         $ra
/* 238C0 80022CC0 27BD0010 */   addiu     $sp, $sp, 0x10
/* 238C4 80022CC4 00000000 */  nop
/* 238C8 80022CC8 00000000 */  nop
/* 238CC 80022CCC 00000000 */  nop
