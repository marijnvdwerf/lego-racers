.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text, "ax"

glabel func_8001B8E0
/* 1C4E0 8001B8E0 27BDFF78 */  addiu      $sp, $sp, -0x88
/* 1C4E4 8001B8E4 AFB40078 */  sw         $s4, 0x78($sp)
/* 1C4E8 8001B8E8 0080A021 */  addu       $s4, $a0, $zero
/* 1C4EC 8001B8EC AFB30074 */  sw         $s3, 0x74($sp)
/* 1C4F0 8001B8F0 00A09821 */  addu       $s3, $a1, $zero
/* 1C4F4 8001B8F4 00C02821 */  addu       $a1, $a2, $zero
/* 1C4F8 8001B8F8 AFB5007C */  sw         $s5, 0x7C($sp)
/* 1C4FC 8001B8FC 3C158000 */  lui        $s5, %hi(D_800017A0)
/* 1C500 8001B900 26B517A0 */  addiu      $s5, $s5, %lo(D_800017A0)
/* 1C504 8001B904 AFBF0080 */  sw         $ra, 0x80($sp)
/* 1C508 8001B908 AFB20070 */  sw         $s2, 0x70($sp)
/* 1C50C 8001B90C AFB1006C */  sw         $s1, 0x6C($sp)
/* 1C510 8001B910 AFB00068 */  sw         $s0, 0x68($sp)
/* 1C514 8001B914 AFA70094 */  sw         $a3, 0x94($sp)
/* 1C518 8001B918 AFA0003C */  sw         $zero, 0x3C($sp)
.L8001B91C:
/* 1C51C 8001B91C 90B10000 */  lbu        $s1, 0x0($a1)
/* 1C520 8001B920 08006E4B */  j          .L8001B92C
/* 1C524 8001B924 00A09021 */   addu      $s2, $a1, $zero
.L8001B928:
/* 1C528 8001B928 92510000 */  lbu        $s1, 0x0($s2)
.L8001B92C:
/* 1C52C 8001B92C 322200FF */  andi       $v0, $s1, 0xFF
/* 1C530 8001B930 0002182B */  sltu       $v1, $zero, $v0
/* 1C534 8001B934 38420025 */  xori       $v0, $v0, 0x25
/* 1C538 8001B938 0002102B */  sltu       $v0, $zero, $v0
/* 1C53C 8001B93C 00621824 */  and        $v1, $v1, $v0
/* 1C540 8001B940 5460FFF9 */  bnel       $v1, $zero, .L8001B928
/* 1C544 8001B944 26520001 */   addiu     $s2, $s2, 0x1
/* 1C548 8001B948 02458023 */  subu       $s0, $s2, $a1
/* 1C54C 8001B94C 1A000009 */  blez       $s0, .L8001B974
/* 1C550 8001B950 02602021 */   addu      $a0, $s3, $zero
/* 1C554 8001B954 0280F809 */  jalr       $s4
/* 1C558 8001B958 02003021 */   addu      $a2, $s0, $zero
/* 1C55C 8001B95C 00409821 */  addu       $s3, $v0, $zero
/* 1C560 8001B960 12600131 */  beqz       $s3, .L8001BE28
/* 1C564 8001B964 00000000 */   nop
/* 1C568 8001B968 8FA2003C */  lw         $v0, 0x3C($sp)
/* 1C56C 8001B96C 00501021 */  addu       $v0, $v0, $s0
/* 1C570 8001B970 AFA2003C */  sw         $v0, 0x3C($sp)
.L8001B974:
/* 1C574 8001B974 1220012C */  beqz       $s1, .L8001BE28
/* 1C578 8001B978 26520001 */   addiu     $s2, $s2, 0x1
/* 1C57C 8001B97C AFA00040 */  sw         $zero, 0x40($sp)
/* 1C580 8001B980 3C108000 */  lui        $s0, %hi(D_800017A8)
/* 1C584 8001B984 261017A8 */  addiu      $s0, $s0, %lo(D_800017A8)
.L8001B988:
/* 1C588 8001B988 92450000 */  lbu        $a1, 0x0($s2)
/* 1C58C 8001B98C 0C006DF0 */  jal        func_8001B7C0
/* 1C590 8001B990 02A02021 */   addu      $a0, $s5, $zero
/* 1C594 8001B994 10400009 */  beqz       $v0, .L8001B9BC
/* 1C598 8001B998 00551023 */   subu      $v0, $v0, $s5
/* 1C59C 8001B99C 00021080 */  sll        $v0, $v0, 2
/* 1C5A0 8001B9A0 00501021 */  addu       $v0, $v0, $s0
/* 1C5A4 8001B9A4 8FA30040 */  lw         $v1, 0x40($sp)
/* 1C5A8 8001B9A8 8C420000 */  lw         $v0, 0x0($v0)
/* 1C5AC 8001B9AC 26520001 */  addiu      $s2, $s2, 0x1
/* 1C5B0 8001B9B0 00621825 */  or         $v1, $v1, $v0
/* 1C5B4 8001B9B4 08006E62 */  j          .L8001B988
/* 1C5B8 8001B9B8 AFA30040 */   sw        $v1, 0x40($sp)
.L8001B9BC:
/* 1C5BC 8001B9BC 92440000 */  lbu        $a0, 0x0($s2)
/* 1C5C0 8001B9C0 2402002A */  addiu      $v0, $zero, 0x2A
/* 1C5C4 8001B9C4 308300FF */  andi       $v1, $a0, 0xFF
/* 1C5C8 8001B9C8 14620011 */  bne        $v1, $v0, .L8001BA10
/* 1C5CC 8001B9CC 2482FFD0 */   addiu     $v0, $a0, -0x30
/* 1C5D0 8001B9D0 8FA20094 */  lw         $v0, 0x94($sp)
/* 1C5D4 8001B9D4 2403FFFC */  addiu      $v1, $zero, -0x4
/* 1C5D8 8001B9D8 24420003 */  addiu      $v0, $v0, 0x3
/* 1C5DC 8001B9DC 00431024 */  and        $v0, $v0, $v1
/* 1C5E0 8001B9E0 24430004 */  addiu      $v1, $v0, 0x4
/* 1C5E4 8001B9E4 AFA30094 */  sw         $v1, 0x94($sp)
/* 1C5E8 8001B9E8 8C420000 */  lw         $v0, 0x0($v0)
/* 1C5EC 8001B9EC 04410006 */  bgez       $v0, .L8001BA08
/* 1C5F0 8001B9F0 AFA20038 */   sw        $v0, 0x38($sp)
/* 1C5F4 8001B9F4 8FA30040 */  lw         $v1, 0x40($sp)
/* 1C5F8 8001B9F8 00021023 */  negu       $v0, $v0
/* 1C5FC 8001B9FC AFA20038 */  sw         $v0, 0x38($sp)
/* 1C600 8001BA00 34630004 */  ori        $v1, $v1, 0x4
/* 1C604 8001BA04 AFA30040 */  sw         $v1, 0x40($sp)
.L8001BA08:
/* 1C608 8001BA08 08006E98 */  j          .L8001BA60
/* 1C60C 8001BA0C 26520001 */   addiu     $s2, $s2, 0x1
.L8001BA10:
/* 1C610 8001BA10 2C42000A */  sltiu      $v0, $v0, 0xA
/* 1C614 8001BA14 10400012 */  beqz       $v0, .L8001BA60
/* 1C618 8001BA18 AFA00038 */   sw        $zero, 0x38($sp)
.L8001BA1C:
/* 1C61C 8001BA1C 8FA40038 */  lw         $a0, 0x38($sp)
/* 1C620 8001BA20 288203E7 */  slti       $v0, $a0, 0x3E7
/* 1C624 8001BA24 50400009 */  beql       $v0, $zero, .L8001BA4C
/* 1C628 8001BA28 26520001 */   addiu     $s2, $s2, 0x1
/* 1C62C 8001BA2C 00041080 */  sll        $v0, $a0, 2
/* 1C630 8001BA30 92430000 */  lbu        $v1, 0x0($s2)
/* 1C634 8001BA34 00441021 */  addu       $v0, $v0, $a0
/* 1C638 8001BA38 00021040 */  sll        $v0, $v0, 1
/* 1C63C 8001BA3C 00431021 */  addu       $v0, $v0, $v1
/* 1C640 8001BA40 2442FFD0 */  addiu      $v0, $v0, -0x30
/* 1C644 8001BA44 AFA20038 */  sw         $v0, 0x38($sp)
/* 1C648 8001BA48 26520001 */  addiu      $s2, $s2, 0x1
.L8001BA4C:
/* 1C64C 8001BA4C 92420000 */  lbu        $v0, 0x0($s2)
/* 1C650 8001BA50 2442FFD0 */  addiu      $v0, $v0, -0x30
/* 1C654 8001BA54 2C42000A */  sltiu      $v0, $v0, 0xA
/* 1C658 8001BA58 1440FFF0 */  bnez       $v0, .L8001BA1C
/* 1C65C 8001BA5C 00000000 */   nop
.L8001BA60:
/* 1C660 8001BA60 92430000 */  lbu        $v1, 0x0($s2)
/* 1C664 8001BA64 2402002E */  addiu      $v0, $zero, 0x2E
/* 1C668 8001BA68 10620003 */  beq        $v1, $v0, .L8001BA78
/* 1C66C 8001BA6C 2402FFFF */   addiu     $v0, $zero, -0x1
/* 1C670 8001BA70 08006EC2 */  j          .L8001BB08
/* 1C674 8001BA74 AFA20034 */   sw        $v0, 0x34($sp)
.L8001BA78:
/* 1C678 8001BA78 26520001 */  addiu      $s2, $s2, 0x1
/* 1C67C 8001BA7C 92440000 */  lbu        $a0, 0x0($s2)
/* 1C680 8001BA80 2402002A */  addiu      $v0, $zero, 0x2A
/* 1C684 8001BA84 308300FF */  andi       $v1, $a0, 0xFF
/* 1C688 8001BA88 1462000B */  bne        $v1, $v0, .L8001BAB8
/* 1C68C 8001BA8C 2482FFD0 */   addiu     $v0, $a0, -0x30
/* 1C690 8001BA90 8FA30094 */  lw         $v1, 0x94($sp)
/* 1C694 8001BA94 2402FFFC */  addiu      $v0, $zero, -0x4
/* 1C698 8001BA98 24630003 */  addiu      $v1, $v1, 0x3
/* 1C69C 8001BA9C 00621824 */  and        $v1, $v1, $v0
/* 1C6A0 8001BAA0 24620004 */  addiu      $v0, $v1, 0x4
/* 1C6A4 8001BAA4 AFA20094 */  sw         $v0, 0x94($sp)
/* 1C6A8 8001BAA8 8C620000 */  lw         $v0, 0x0($v1)
/* 1C6AC 8001BAAC 26520001 */  addiu      $s2, $s2, 0x1
/* 1C6B0 8001BAB0 08006EC2 */  j          .L8001BB08
/* 1C6B4 8001BAB4 AFA20034 */   sw        $v0, 0x34($sp)
.L8001BAB8:
/* 1C6B8 8001BAB8 2C42000A */  sltiu      $v0, $v0, 0xA
/* 1C6BC 8001BABC 10400012 */  beqz       $v0, .L8001BB08
/* 1C6C0 8001BAC0 AFA00034 */   sw        $zero, 0x34($sp)
.L8001BAC4:
/* 1C6C4 8001BAC4 8FA40034 */  lw         $a0, 0x34($sp)
/* 1C6C8 8001BAC8 288203E7 */  slti       $v0, $a0, 0x3E7
/* 1C6CC 8001BACC 50400009 */  beql       $v0, $zero, .L8001BAF4
/* 1C6D0 8001BAD0 26520001 */   addiu     $s2, $s2, 0x1
/* 1C6D4 8001BAD4 00041080 */  sll        $v0, $a0, 2
/* 1C6D8 8001BAD8 92430000 */  lbu        $v1, 0x0($s2)
/* 1C6DC 8001BADC 00441021 */  addu       $v0, $v0, $a0
/* 1C6E0 8001BAE0 00021040 */  sll        $v0, $v0, 1
/* 1C6E4 8001BAE4 00431021 */  addu       $v0, $v0, $v1
/* 1C6E8 8001BAE8 2442FFD0 */  addiu      $v0, $v0, -0x30
/* 1C6EC 8001BAEC AFA20034 */  sw         $v0, 0x34($sp)
/* 1C6F0 8001BAF0 26520001 */  addiu      $s2, $s2, 0x1
.L8001BAF4:
/* 1C6F4 8001BAF4 92420000 */  lbu        $v0, 0x0($s2)
/* 1C6F8 8001BAF8 2442FFD0 */  addiu      $v0, $v0, -0x30
/* 1C6FC 8001BAFC 2C42000A */  sltiu      $v0, $v0, 0xA
/* 1C700 8001BB00 1440FFF0 */  bnez       $v0, .L8001BAC4
/* 1C704 8001BB04 00000000 */   nop
.L8001BB08:
/* 1C708 8001BB08 92500000 */  lbu        $s0, 0x0($s2)
/* 1C70C 8001BB0C 3C048000 */  lui        $a0, %hi(D_800017C0)
/* 1C710 8001BB10 248417C0 */  addiu      $a0, $a0, %lo(D_800017C0)
/* 1C714 8001BB14 0C006DF0 */  jal        func_8001B7C0
/* 1C718 8001BB18 02002821 */   addu      $a1, $s0, $zero
/* 1C71C 8001BB1C 10400003 */  beqz       $v0, .L8001BB2C
/* 1C720 8001BB20 02002821 */   addu      $a1, $s0, $zero
/* 1C724 8001BB24 08006ECC */  j          .L8001BB30
/* 1C728 8001BB28 26520001 */   addiu     $s2, $s2, 0x1
.L8001BB2C:
/* 1C72C 8001BB2C 00002821 */  addu       $a1, $zero, $zero
.L8001BB30:
/* 1C730 8001BB30 A3A50044 */  sb         $a1, 0x44($sp)
/* 1C734 8001BB34 30A500FF */  andi       $a1, $a1, 0xFF
/* 1C738 8001BB38 2402006C */  addiu      $v0, $zero, 0x6C
/* 1C73C 8001BB3C 14A20007 */  bne        $a1, $v0, .L8001BB5C
/* 1C740 8001BB40 27A40010 */   addiu     $a0, $sp, 0x10
/* 1C744 8001BB44 92420000 */  lbu        $v0, 0x0($s2)
/* 1C748 8001BB48 14450004 */  bne        $v0, $a1, .L8001BB5C
/* 1C74C 8001BB4C 2402004C */   addiu     $v0, $zero, 0x4C
/* 1C750 8001BB50 A3A20044 */  sb         $v0, 0x44($sp)
/* 1C754 8001BB54 26520001 */  addiu      $s2, $s2, 0x1
/* 1C758 8001BB58 27A40010 */  addiu      $a0, $sp, 0x10
.L8001BB5C:
/* 1C75C 8001BB5C 92460000 */  lbu        $a2, 0x0($s2)
/* 1C760 8001BB60 27A50094 */  addiu      $a1, $sp, 0x94
/* 1C764 8001BB64 0C006F94 */  jal        func_8001BE50
/* 1C768 8001BB68 27A70048 */   addiu     $a3, $sp, 0x48
/* 1C76C 8001BB6C 8FA3001C */  lw         $v1, 0x1C($sp)
/* 1C770 8001BB70 8FA20020 */  lw         $v0, 0x20($sp)
/* 1C774 8001BB74 00621821 */  addu       $v1, $v1, $v0
/* 1C778 8001BB78 8FA20024 */  lw         $v0, 0x24($sp)
/* 1C77C 8001BB7C 8FA40028 */  lw         $a0, 0x28($sp)
/* 1C780 8001BB80 8FA5002C */  lw         $a1, 0x2C($sp)
/* 1C784 8001BB84 00621821 */  addu       $v1, $v1, $v0
/* 1C788 8001BB88 00641821 */  addu       $v1, $v1, $a0
/* 1C78C 8001BB8C 00651821 */  addu       $v1, $v1, $a1
/* 1C790 8001BB90 8FA40030 */  lw         $a0, 0x30($sp)
/* 1C794 8001BB94 8FA50038 */  lw         $a1, 0x38($sp)
/* 1C798 8001BB98 8FA20040 */  lw         $v0, 0x40($sp)
/* 1C79C 8001BB9C 00641821 */  addu       $v1, $v1, $a0
/* 1C7A0 8001BBA0 00A32823 */  subu       $a1, $a1, $v1
/* 1C7A4 8001BBA4 30420004 */  andi       $v0, $v0, 0x4
/* 1C7A8 8001BBA8 14400017 */  bnez       $v0, .L8001BC08
/* 1C7AC 8001BBAC AFA50038 */   sw        $a1, 0x38($sp)
/* 1C7B0 8001BBB0 18A00015 */  blez       $a1, .L8001BC08
/* 1C7B4 8001BBB4 00000000 */   nop
/* 1C7B8 8001BBB8 00A08821 */  addu       $s1, $a1, $zero
/* 1C7BC 8001BBBC 2E220021 */  sltiu      $v0, $s1, 0x21
.L8001BBC0:
/* 1C7C0 8001BBC0 10400002 */  beqz       $v0, .L8001BBCC
/* 1C7C4 8001BBC4 24100020 */   addiu     $s0, $zero, 0x20
/* 1C7C8 8001BBC8 02208021 */  addu       $s0, $s1, $zero
.L8001BBCC:
/* 1C7CC 8001BBCC 5A00000C */  blezl      $s0, .L8001BC00
/* 1C7D0 8001BBD0 02308823 */   subu      $s1, $s1, $s0
/* 1C7D4 8001BBD4 02602021 */  addu       $a0, $s3, $zero
/* 1C7D8 8001BBD8 3C058003 */  lui        $a1, %hi(D_80030FC0)
/* 1C7DC 8001BBDC 24A50FC0 */  addiu      $a1, $a1, %lo(D_80030FC0)
/* 1C7E0 8001BBE0 0280F809 */  jalr       $s4
/* 1C7E4 8001BBE4 02003021 */   addu      $a2, $s0, $zero
/* 1C7E8 8001BBE8 00409821 */  addu       $s3, $v0, $zero
/* 1C7EC 8001BBEC 1260008E */  beqz       $s3, .L8001BE28
/* 1C7F0 8001BBF0 02308823 */   subu      $s1, $s1, $s0
/* 1C7F4 8001BBF4 8FA2003C */  lw         $v0, 0x3C($sp)
/* 1C7F8 8001BBF8 00501021 */  addu       $v0, $v0, $s0
/* 1C7FC 8001BBFC AFA2003C */  sw         $v0, 0x3C($sp)
.L8001BC00:
/* 1C800 8001BC00 1E20FFEF */  bgtz       $s1, .L8001BBC0
/* 1C804 8001BC04 2E220021 */   sltiu     $v0, $s1, 0x21
.L8001BC08:
/* 1C808 8001BC08 8FA6001C */  lw         $a2, 0x1C($sp)
/* 1C80C 8001BC0C 18C0000A */  blez       $a2, .L8001BC38
/* 1C810 8001BC10 02602021 */   addu      $a0, $s3, $zero
/* 1C814 8001BC14 0280F809 */  jalr       $s4
/* 1C818 8001BC18 27A50048 */   addiu     $a1, $sp, 0x48
/* 1C81C 8001BC1C 00409821 */  addu       $s3, $v0, $zero
/* 1C820 8001BC20 12600081 */  beqz       $s3, .L8001BE28
/* 1C824 8001BC24 00000000 */   nop
/* 1C828 8001BC28 8FA2003C */  lw         $v0, 0x3C($sp)
/* 1C82C 8001BC2C 8FA3001C */  lw         $v1, 0x1C($sp)
/* 1C830 8001BC30 00431021 */  addu       $v0, $v0, $v1
/* 1C834 8001BC34 AFA2003C */  sw         $v0, 0x3C($sp)
.L8001BC38:
/* 1C838 8001BC38 8FA20020 */  lw         $v0, 0x20($sp)
/* 1C83C 8001BC3C 18400015 */  blez       $v0, .L8001BC94
/* 1C840 8001BC40 00000000 */   nop
/* 1C844 8001BC44 00408821 */  addu       $s1, $v0, $zero
/* 1C848 8001BC48 2E220021 */  sltiu      $v0, $s1, 0x21
.L8001BC4C:
/* 1C84C 8001BC4C 10400002 */  beqz       $v0, .L8001BC58
/* 1C850 8001BC50 24100020 */   addiu     $s0, $zero, 0x20
/* 1C854 8001BC54 02208021 */  addu       $s0, $s1, $zero
.L8001BC58:
/* 1C858 8001BC58 5A00000C */  blezl      $s0, .L8001BC8C
/* 1C85C 8001BC5C 02308823 */   subu      $s1, $s1, $s0
/* 1C860 8001BC60 02602021 */  addu       $a0, $s3, $zero
/* 1C864 8001BC64 3C058003 */  lui        $a1, %hi(D_80030FE4)
/* 1C868 8001BC68 24A50FE4 */  addiu      $a1, $a1, %lo(D_80030FE4)
/* 1C86C 8001BC6C 0280F809 */  jalr       $s4
/* 1C870 8001BC70 02003021 */   addu      $a2, $s0, $zero
/* 1C874 8001BC74 00409821 */  addu       $s3, $v0, $zero
/* 1C878 8001BC78 1260006B */  beqz       $s3, .L8001BE28
/* 1C87C 8001BC7C 02308823 */   subu      $s1, $s1, $s0
/* 1C880 8001BC80 8FA2003C */  lw         $v0, 0x3C($sp)
/* 1C884 8001BC84 00501021 */  addu       $v0, $v0, $s0
/* 1C888 8001BC88 AFA2003C */  sw         $v0, 0x3C($sp)
.L8001BC8C:
/* 1C88C 8001BC8C 1E20FFEF */  bgtz       $s1, .L8001BC4C
/* 1C890 8001BC90 2E220021 */   sltiu     $v0, $s1, 0x21
.L8001BC94:
/* 1C894 8001BC94 8FA60024 */  lw         $a2, 0x24($sp)
/* 1C898 8001BC98 18C0000B */  blez       $a2, .L8001BCC8
/* 1C89C 8001BC9C 00000000 */   nop
/* 1C8A0 8001BCA0 8FA50018 */  lw         $a1, 0x18($sp)
/* 1C8A4 8001BCA4 0280F809 */  jalr       $s4
/* 1C8A8 8001BCA8 02602021 */   addu      $a0, $s3, $zero
/* 1C8AC 8001BCAC 00409821 */  addu       $s3, $v0, $zero
/* 1C8B0 8001BCB0 1260005D */  beqz       $s3, .L8001BE28
/* 1C8B4 8001BCB4 00000000 */   nop
/* 1C8B8 8001BCB8 8FA2003C */  lw         $v0, 0x3C($sp)
/* 1C8BC 8001BCBC 8FA30024 */  lw         $v1, 0x24($sp)
/* 1C8C0 8001BCC0 00431021 */  addu       $v0, $v0, $v1
/* 1C8C4 8001BCC4 AFA2003C */  sw         $v0, 0x3C($sp)
.L8001BCC8:
/* 1C8C8 8001BCC8 8FA20028 */  lw         $v0, 0x28($sp)
/* 1C8CC 8001BCCC 18400015 */  blez       $v0, .L8001BD24
/* 1C8D0 8001BCD0 00000000 */   nop
/* 1C8D4 8001BCD4 00408821 */  addu       $s1, $v0, $zero
/* 1C8D8 8001BCD8 2E220021 */  sltiu      $v0, $s1, 0x21
.L8001BCDC:
/* 1C8DC 8001BCDC 10400002 */  beqz       $v0, .L8001BCE8
/* 1C8E0 8001BCE0 24100020 */   addiu     $s0, $zero, 0x20
/* 1C8E4 8001BCE4 02208021 */  addu       $s0, $s1, $zero
.L8001BCE8:
/* 1C8E8 8001BCE8 5A00000C */  blezl      $s0, .L8001BD1C
/* 1C8EC 8001BCEC 02308823 */   subu      $s1, $s1, $s0
/* 1C8F0 8001BCF0 02602021 */  addu       $a0, $s3, $zero
/* 1C8F4 8001BCF4 3C058003 */  lui        $a1, %hi(D_80030FE4)
/* 1C8F8 8001BCF8 24A50FE4 */  addiu      $a1, $a1, %lo(D_80030FE4)
/* 1C8FC 8001BCFC 0280F809 */  jalr       $s4
/* 1C900 8001BD00 02003021 */   addu      $a2, $s0, $zero
/* 1C904 8001BD04 00409821 */  addu       $s3, $v0, $zero
/* 1C908 8001BD08 12600047 */  beqz       $s3, .L8001BE28
/* 1C90C 8001BD0C 02308823 */   subu      $s1, $s1, $s0
/* 1C910 8001BD10 8FA2003C */  lw         $v0, 0x3C($sp)
/* 1C914 8001BD14 00501021 */  addu       $v0, $v0, $s0
/* 1C918 8001BD18 AFA2003C */  sw         $v0, 0x3C($sp)
.L8001BD1C:
/* 1C91C 8001BD1C 1E20FFEF */  bgtz       $s1, .L8001BCDC
/* 1C920 8001BD20 2E220021 */   sltiu     $v0, $s1, 0x21
.L8001BD24:
/* 1C924 8001BD24 8FA6002C */  lw         $a2, 0x2C($sp)
/* 1C928 8001BD28 18C0000C */  blez       $a2, .L8001BD5C
/* 1C92C 8001BD2C 02602021 */   addu      $a0, $s3, $zero
/* 1C930 8001BD30 8FA20018 */  lw         $v0, 0x18($sp)
/* 1C934 8001BD34 8FA50024 */  lw         $a1, 0x24($sp)
/* 1C938 8001BD38 0280F809 */  jalr       $s4
/* 1C93C 8001BD3C 00452821 */   addu      $a1, $v0, $a1
/* 1C940 8001BD40 00409821 */  addu       $s3, $v0, $zero
/* 1C944 8001BD44 12600038 */  beqz       $s3, .L8001BE28
/* 1C948 8001BD48 00000000 */   nop
/* 1C94C 8001BD4C 8FA2003C */  lw         $v0, 0x3C($sp)
/* 1C950 8001BD50 8FA3002C */  lw         $v1, 0x2C($sp)
/* 1C954 8001BD54 00431021 */  addu       $v0, $v0, $v1
/* 1C958 8001BD58 AFA2003C */  sw         $v0, 0x3C($sp)
.L8001BD5C:
/* 1C95C 8001BD5C 8FA20030 */  lw         $v0, 0x30($sp)
/* 1C960 8001BD60 18400015 */  blez       $v0, .L8001BDB8
/* 1C964 8001BD64 00000000 */   nop
/* 1C968 8001BD68 00408821 */  addu       $s1, $v0, $zero
/* 1C96C 8001BD6C 2E220021 */  sltiu      $v0, $s1, 0x21
.L8001BD70:
/* 1C970 8001BD70 10400002 */  beqz       $v0, .L8001BD7C
/* 1C974 8001BD74 24100020 */   addiu     $s0, $zero, 0x20
/* 1C978 8001BD78 02208021 */  addu       $s0, $s1, $zero
.L8001BD7C:
/* 1C97C 8001BD7C 5A00000C */  blezl      $s0, .L8001BDB0
/* 1C980 8001BD80 02308823 */   subu      $s1, $s1, $s0
/* 1C984 8001BD84 02602021 */  addu       $a0, $s3, $zero
/* 1C988 8001BD88 3C058003 */  lui        $a1, %hi(D_80030FE4)
/* 1C98C 8001BD8C 24A50FE4 */  addiu      $a1, $a1, %lo(D_80030FE4)
/* 1C990 8001BD90 0280F809 */  jalr       $s4
/* 1C994 8001BD94 02003021 */   addu      $a2, $s0, $zero
/* 1C998 8001BD98 00409821 */  addu       $s3, $v0, $zero
/* 1C99C 8001BD9C 12600022 */  beqz       $s3, .L8001BE28
/* 1C9A0 8001BDA0 02308823 */   subu      $s1, $s1, $s0
/* 1C9A4 8001BDA4 8FA2003C */  lw         $v0, 0x3C($sp)
/* 1C9A8 8001BDA8 00501021 */  addu       $v0, $v0, $s0
/* 1C9AC 8001BDAC AFA2003C */  sw         $v0, 0x3C($sp)
.L8001BDB0:
/* 1C9B0 8001BDB0 1E20FFEF */  bgtz       $s1, .L8001BD70
/* 1C9B4 8001BDB4 2E220021 */   sltiu     $v0, $s1, 0x21
.L8001BDB8:
/* 1C9B8 8001BDB8 8FA20040 */  lw         $v0, 0x40($sp)
/* 1C9BC 8001BDBC 30420004 */  andi       $v0, $v0, 0x4
/* 1C9C0 8001BDC0 1040FED6 */  beqz       $v0, .L8001B91C
/* 1C9C4 8001BDC4 26450001 */   addiu     $a1, $s2, 0x1
/* 1C9C8 8001BDC8 8FA20038 */  lw         $v0, 0x38($sp)
/* 1C9CC 8001BDCC 1840FED3 */  blez       $v0, .L8001B91C
/* 1C9D0 8001BDD0 00408821 */   addu      $s1, $v0, $zero
/* 1C9D4 8001BDD4 2E220021 */  sltiu      $v0, $s1, 0x21
.L8001BDD8:
/* 1C9D8 8001BDD8 10400002 */  beqz       $v0, .L8001BDE4
/* 1C9DC 8001BDDC 24100020 */   addiu     $s0, $zero, 0x20
/* 1C9E0 8001BDE0 02208021 */  addu       $s0, $s1, $zero
.L8001BDE4:
/* 1C9E4 8001BDE4 5A00000C */  blezl      $s0, .L8001BE18
/* 1C9E8 8001BDE8 02308823 */   subu      $s1, $s1, $s0
/* 1C9EC 8001BDEC 02602021 */  addu       $a0, $s3, $zero
/* 1C9F0 8001BDF0 3C058003 */  lui        $a1, %hi(D_80030FC0)
/* 1C9F4 8001BDF4 24A50FC0 */  addiu      $a1, $a1, %lo(D_80030FC0)
/* 1C9F8 8001BDF8 0280F809 */  jalr       $s4
/* 1C9FC 8001BDFC 02003021 */   addu      $a2, $s0, $zero
/* 1CA00 8001BE00 00409821 */  addu       $s3, $v0, $zero
/* 1CA04 8001BE04 12600008 */  beqz       $s3, .L8001BE28
/* 1CA08 8001BE08 02308823 */   subu      $s1, $s1, $s0
/* 1CA0C 8001BE0C 8FA2003C */  lw         $v0, 0x3C($sp)
/* 1CA10 8001BE10 00501021 */  addu       $v0, $v0, $s0
/* 1CA14 8001BE14 AFA2003C */  sw         $v0, 0x3C($sp)
.L8001BE18:
/* 1CA18 8001BE18 1E20FFEF */  bgtz       $s1, .L8001BDD8
/* 1CA1C 8001BE1C 2E220021 */   sltiu     $v0, $s1, 0x21
/* 1CA20 8001BE20 08006E47 */  j          .L8001B91C
/* 1CA24 8001BE24 26450001 */   addiu     $a1, $s2, 0x1
.L8001BE28:
/* 1CA28 8001BE28 8FA2003C */  lw         $v0, 0x3C($sp)
/* 1CA2C 8001BE2C 8FBF0080 */  lw         $ra, 0x80($sp)
/* 1CA30 8001BE30 8FB5007C */  lw         $s5, 0x7C($sp)
/* 1CA34 8001BE34 8FB40078 */  lw         $s4, 0x78($sp)
/* 1CA38 8001BE38 8FB30074 */  lw         $s3, 0x74($sp)
/* 1CA3C 8001BE3C 8FB20070 */  lw         $s2, 0x70($sp)
/* 1CA40 8001BE40 8FB1006C */  lw         $s1, 0x6C($sp)
/* 1CA44 8001BE44 8FB00068 */  lw         $s0, 0x68($sp)
/* 1CA48 8001BE48 03E00008 */  jr         $ra
/* 1CA4C 8001BE4C 27BD0088 */   addiu     $sp, $sp, 0x88

glabel func_8001BE50
/* 1CA50 8001BE50 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 1CA54 8001BE54 AFB00010 */  sw         $s0, 0x10($sp)
/* 1CA58 8001BE58 00808021 */  addu       $s0, $a0, $zero
/* 1CA5C 8001BE5C 00A04021 */  addu       $t0, $a1, $zero
/* 1CA60 8001BE60 00E04821 */  addu       $t1, $a3, $zero
/* 1CA64 8001BE64 30C200FF */  andi       $v0, $a2, 0xFF
/* 1CA68 8001BE68 2443FFDB */  addiu      $v1, $v0, -0x25
/* 1CA6C 8001BE6C 2C620054 */  sltiu      $v0, $v1, 0x54
/* 1CA70 8001BE70 AFBF0014 */  sw         $ra, 0x14($sp)
/* 1CA74 8001BE74 AE000020 */  sw         $zero, 0x20($s0)
/* 1CA78 8001BE78 AE00001C */  sw         $zero, 0x1C($s0)
/* 1CA7C 8001BE7C AE000018 */  sw         $zero, 0x18($s0)
/* 1CA80 8001BE80 AE000014 */  sw         $zero, 0x14($s0)
/* 1CA84 8001BE84 AE000010 */  sw         $zero, 0x10($s0)
/* 1CA88 8001BE88 10400117 */  beqz       $v0, L8001C2E8
/* 1CA8C 8001BE8C AE00000C */   sw        $zero, 0xC($s0)
/* 1CA90 8001BE90 00031080 */  sll        $v0, $v1, 2
/* 1CA94 8001BE94 3C018000 */  lui        $at, %hi(jtbl_800017C8)
/* 1CA98 8001BE98 00220821 */  addu       $at, $at, $v0
/* 1CA9C 8001BE9C 8C2217C8 */  lw         $v0, %lo(jtbl_800017C8)($at)
/* 1CAA0 8001BEA0 00400008 */  jr         $v0
/* 1CAA4 8001BEA4 00000000 */   nop
glabel L8001BEA8
/* 1CAA8 8001BEA8 8E04000C */  lw         $a0, 0xC($s0)
/* 1CAAC 8001BEAC 24820001 */  addiu      $v0, $a0, 0x1
/* 1CAB0 8001BEB0 AE02000C */  sw         $v0, 0xC($s0)
/* 1CAB4 8001BEB4 8D020000 */  lw         $v0, 0x0($t0)
/* 1CAB8 8001BEB8 2403FFFC */  addiu      $v1, $zero, -0x4
/* 1CABC 8001BEBC 24420003 */  addiu      $v0, $v0, 0x3
/* 1CAC0 8001BEC0 00431024 */  and        $v0, $v0, $v1
/* 1CAC4 8001BEC4 24430004 */  addiu      $v1, $v0, 0x4
/* 1CAC8 8001BEC8 AD030000 */  sw         $v1, 0x0($t0)
/* 1CACC 8001BECC 8C420000 */  lw         $v0, 0x0($v0)
/* 1CAD0 8001BED0 01242021 */  addu       $a0, $t1, $a0
/* 1CAD4 8001BED4 080070BF */  j          .L8001C2FC
/* 1CAD8 8001BED8 A0820000 */   sb        $v0, 0x0($a0)
glabel L8001BEDC
/* 1CADC 8001BEDC 92030034 */  lbu        $v1, 0x34($s0)
/* 1CAE0 8001BEE0 2402006C */  addiu      $v0, $zero, 0x6C
/* 1CAE4 8001BEE4 1062000B */  beq        $v1, $v0, .L8001BF14
/* 1CAE8 8001BEE8 2402004C */   addiu     $v0, $zero, 0x4C
/* 1CAEC 8001BEEC 14620009 */  bne        $v1, $v0, .L8001BF14
/* 1CAF0 8001BEF0 2403FFF8 */   addiu     $v1, $zero, -0x8
/* 1CAF4 8001BEF4 8D020000 */  lw         $v0, 0x0($t0)
/* 1CAF8 8001BEF8 24420007 */  addiu      $v0, $v0, 0x7
/* 1CAFC 8001BEFC 00431024 */  and        $v0, $v0, $v1
/* 1CB00 8001BF00 24430008 */  addiu      $v1, $v0, 0x8
/* 1CB04 8001BF04 AD030000 */  sw         $v1, 0x0($t0)
/* 1CB08 8001BF08 8C430004 */  lw         $v1, 0x4($v0)
/* 1CB0C 8001BF0C 08006FCE */  j          .L8001BF38
/* 1CB10 8001BF10 8C420000 */   lw        $v0, 0x0($v0)
.L8001BF14:
/* 1CB14 8001BF14 8D020000 */  lw         $v0, 0x0($t0)
/* 1CB18 8001BF18 2403FFFC */  addiu      $v1, $zero, -0x4
/* 1CB1C 8001BF1C 24420003 */  addiu      $v0, $v0, 0x3
/* 1CB20 8001BF20 00431024 */  and        $v0, $v0, $v1
/* 1CB24 8001BF24 24430004 */  addiu      $v1, $v0, 0x4
/* 1CB28 8001BF28 AD030000 */  sw         $v1, 0x0($t0)
/* 1CB2C 8001BF2C 8C420000 */  lw         $v0, 0x0($v0)
/* 1CB30 8001BF30 00401821 */  addu       $v1, $v0, $zero
/* 1CB34 8001BF34 000217C3 */  sra        $v0, $v0, 31
.L8001BF38:
/* 1CB38 8001BF38 AE020000 */  sw         $v0, 0x0($s0)
/* 1CB3C 8001BF3C AE030004 */  sw         $v1, 0x4($s0)
/* 1CB40 8001BF40 92030034 */  lbu        $v1, 0x34($s0)
/* 1CB44 8001BF44 24020068 */  addiu      $v0, $zero, 0x68
/* 1CB48 8001BF48 14620008 */  bne        $v1, $v0, .L8001BF6C
/* 1CB4C 8001BF4C 00000000 */   nop
/* 1CB50 8001BF50 8E020000 */  lw         $v0, 0x0($s0)
/* 1CB54 8001BF54 8E030004 */  lw         $v1, 0x4($s0)
/* 1CB58 8001BF58 00031400 */  sll        $v0, $v1, 16
/* 1CB5C 8001BF5C 00022C03 */  sra        $a1, $v0, 16
/* 1CB60 8001BF60 000227C3 */  sra        $a0, $v0, 31
/* 1CB64 8001BF64 AE040000 */  sw         $a0, 0x0($s0)
/* 1CB68 8001BF68 AE050004 */  sw         $a1, 0x4($s0)
.L8001BF6C:
/* 1CB6C 8001BF6C 8E020000 */  lw         $v0, 0x0($s0)
/* 1CB70 8001BF70 04410007 */  bgez       $v0, .L8001BF90
/* 1CB74 8001BF74 00000000 */   nop
/* 1CB78 8001BF78 8E02000C */  lw         $v0, 0xC($s0)
/* 1CB7C 8001BF7C 24430001 */  addiu      $v1, $v0, 0x1
/* 1CB80 8001BF80 01221021 */  addu       $v0, $t1, $v0
/* 1CB84 8001BF84 AE03000C */  sw         $v1, 0xC($s0)
/* 1CB88 8001BF88 08006FF5 */  j          .L8001BFD4
/* 1CB8C 8001BF8C 2403002D */   addiu     $v1, $zero, 0x2D
.L8001BF90:
/* 1CB90 8001BF90 8E030030 */  lw         $v1, 0x30($s0)
/* 1CB94 8001BF94 30620002 */  andi       $v0, $v1, 0x2
/* 1CB98 8001BF98 10400007 */  beqz       $v0, .L8001BFB8
/* 1CB9C 8001BF9C 30620001 */   andi      $v0, $v1, 0x1
/* 1CBA0 8001BFA0 8E02000C */  lw         $v0, 0xC($s0)
/* 1CBA4 8001BFA4 24430001 */  addiu      $v1, $v0, 0x1
/* 1CBA8 8001BFA8 01221021 */  addu       $v0, $t1, $v0
/* 1CBAC 8001BFAC AE03000C */  sw         $v1, 0xC($s0)
/* 1CBB0 8001BFB0 08006FF5 */  j          .L8001BFD4
/* 1CBB4 8001BFB4 2403002B */   addiu     $v1, $zero, 0x2B
.L8001BFB8:
/* 1CBB8 8001BFB8 10400044 */  beqz       $v0, .L8001C0CC
/* 1CBBC 8001BFBC 00000000 */   nop
/* 1CBC0 8001BFC0 8E02000C */  lw         $v0, 0xC($s0)
/* 1CBC4 8001BFC4 24430001 */  addiu      $v1, $v0, 0x1
/* 1CBC8 8001BFC8 01221021 */  addu       $v0, $t1, $v0
/* 1CBCC 8001BFCC AE03000C */  sw         $v1, 0xC($s0)
/* 1CBD0 8001BFD0 24030020 */  addiu      $v1, $zero, 0x20
.L8001BFD4:
/* 1CBD4 8001BFD4 08007033 */  j          .L8001C0CC
/* 1CBD8 8001BFD8 A0430000 */   sb        $v1, 0x0($v0)
glabel L8001BFDC
/* 1CBDC 8001BFDC 92030034 */  lbu        $v1, 0x34($s0)
/* 1CBE0 8001BFE0 2402006C */  addiu      $v0, $zero, 0x6C
/* 1CBE4 8001BFE4 1062000B */  beq        $v1, $v0, .L8001C014
/* 1CBE8 8001BFE8 2402004C */   addiu     $v0, $zero, 0x4C
/* 1CBEC 8001BFEC 14620009 */  bne        $v1, $v0, .L8001C014
/* 1CBF0 8001BFF0 2403FFF8 */   addiu     $v1, $zero, -0x8
/* 1CBF4 8001BFF4 8D020000 */  lw         $v0, 0x0($t0)
/* 1CBF8 8001BFF8 24420007 */  addiu      $v0, $v0, 0x7
/* 1CBFC 8001BFFC 00431024 */  and        $v0, $v0, $v1
/* 1CC00 8001C000 24430008 */  addiu      $v1, $v0, 0x8
/* 1CC04 8001C004 AD030000 */  sw         $v1, 0x0($t0)
/* 1CC08 8001C008 8C430004 */  lw         $v1, 0x4($v0)
/* 1CC0C 8001C00C 0800700E */  j          .L8001C038
/* 1CC10 8001C010 8C420000 */   lw        $v0, 0x0($v0)
.L8001C014:
/* 1CC14 8001C014 8D020000 */  lw         $v0, 0x0($t0)
/* 1CC18 8001C018 2403FFFC */  addiu      $v1, $zero, -0x4
/* 1CC1C 8001C01C 24420003 */  addiu      $v0, $v0, 0x3
/* 1CC20 8001C020 00431024 */  and        $v0, $v0, $v1
/* 1CC24 8001C024 24430004 */  addiu      $v1, $v0, 0x4
/* 1CC28 8001C028 AD030000 */  sw         $v1, 0x0($t0)
/* 1CC2C 8001C02C 8C420000 */  lw         $v0, 0x0($v0)
/* 1CC30 8001C030 00401821 */  addu       $v1, $v0, $zero
/* 1CC34 8001C034 000217C3 */  sra        $v0, $v0, 31
.L8001C038:
/* 1CC38 8001C038 AE020000 */  sw         $v0, 0x0($s0)
/* 1CC3C 8001C03C AE030004 */  sw         $v1, 0x4($s0)
/* 1CC40 8001C040 92030034 */  lbu        $v1, 0x34($s0)
/* 1CC44 8001C044 24020068 */  addiu      $v0, $zero, 0x68
/* 1CC48 8001C048 14620004 */  bne        $v1, $v0, .L8001C05C
/* 1CC4C 8001C04C 00001021 */   addu      $v0, $zero, $zero
/* 1CC50 8001C050 96030006 */  lhu        $v1, 0x6($s0)
/* 1CC54 8001C054 0800701A */  j          .L8001C068
/* 1CC58 8001C058 00000000 */   nop
.L8001C05C:
/* 1CC5C 8001C05C 14600004 */  bnez       $v1, .L8001C070
/* 1CC60 8001C060 00000000 */   nop
/* 1CC64 8001C064 8E030004 */  lw         $v1, 0x4($s0)
.L8001C068:
/* 1CC68 8001C068 AE020000 */  sw         $v0, 0x0($s0)
/* 1CC6C 8001C06C AE030004 */  sw         $v1, 0x4($s0)
.L8001C070:
/* 1CC70 8001C070 8E020030 */  lw         $v0, 0x30($s0)
/* 1CC74 8001C074 30420008 */  andi       $v0, $v0, 0x8
/* 1CC78 8001C078 10400014 */  beqz       $v0, .L8001C0CC
/* 1CC7C 8001C07C 00000000 */   nop
/* 1CC80 8001C080 8E02000C */  lw         $v0, 0xC($s0)
/* 1CC84 8001C084 24430001 */  addiu      $v1, $v0, 0x1
/* 1CC88 8001C088 01221021 */  addu       $v0, $t1, $v0
/* 1CC8C 8001C08C AE03000C */  sw         $v1, 0xC($s0)
/* 1CC90 8001C090 24030030 */  addiu      $v1, $zero, 0x30
/* 1CC94 8001C094 A0430000 */  sb         $v1, 0x0($v0)
/* 1CC98 8001C098 30C200FF */  andi       $v0, $a2, 0xFF
/* 1CC9C 8001C09C 38430078 */  xori       $v1, $v0, 0x78
/* 1CCA0 8001C0A0 2C630001 */  sltiu      $v1, $v1, 0x1
/* 1CCA4 8001C0A4 38420058 */  xori       $v0, $v0, 0x58
/* 1CCA8 8001C0A8 2C420001 */  sltiu      $v0, $v0, 0x1
/* 1CCAC 8001C0AC 00621825 */  or         $v1, $v1, $v0
/* 1CCB0 8001C0B0 10600006 */  beqz       $v1, .L8001C0CC
/* 1CCB4 8001C0B4 00000000 */   nop
/* 1CCB8 8001C0B8 8E02000C */  lw         $v0, 0xC($s0)
/* 1CCBC 8001C0BC 24430001 */  addiu      $v1, $v0, 0x1
/* 1CCC0 8001C0C0 01221021 */  addu       $v0, $t1, $v0
/* 1CCC4 8001C0C4 AE03000C */  sw         $v1, 0xC($s0)
/* 1CCC8 8001C0C8 A0460000 */  sb         $a2, 0x0($v0)
.L8001C0CC:
/* 1CCCC 8001C0CC 8E02000C */  lw         $v0, 0xC($s0)
/* 1CCD0 8001C0D0 02002021 */  addu       $a0, $s0, $zero
/* 1CCD4 8001C0D4 30C500FF */  andi       $a1, $a2, 0xFF
/* 1CCD8 8001C0D8 01221021 */  addu       $v0, $t1, $v0
/* 1CCDC 8001C0DC 0C0070C4 */  jal        func_8001C310
/* 1CCE0 8001C0E0 AC820008 */   sw        $v0, 0x8($a0)
/* 1CCE4 8001C0E4 080070BF */  j          .L8001C2FC
/* 1CCE8 8001C0E8 00000000 */   nop
glabel L8001C0EC
/* 1CCEC 8001C0EC 8D020000 */  lw         $v0, 0x0($t0)
/* 1CCF0 8001C0F0 2403FFF8 */  addiu      $v1, $zero, -0x8
/* 1CCF4 8001C0F4 24420007 */  addiu      $v0, $v0, 0x7
/* 1CCF8 8001C0F8 00431024 */  and        $v0, $v0, $v1
/* 1CCFC 8001C0FC 24430008 */  addiu      $v1, $v0, 0x8
/* 1CD00 8001C100 AD030000 */  sw         $v1, 0x0($t0)
/* 1CD04 8001C104 D4400000 */  ldc1       $f0, 0x0($v0)
/* 1CD08 8001C108 F6000000 */  sdc1       $f0, 0x0($s0)
/* 1CD0C 8001C10C 96020000 */  lhu        $v0, 0x0($s0)
/* 1CD10 8001C110 30428000 */  andi       $v0, $v0, 0x8000
/* 1CD14 8001C114 10400007 */  beqz       $v0, .L8001C134
/* 1CD18 8001C118 00000000 */   nop
/* 1CD1C 8001C11C 8E02000C */  lw         $v0, 0xC($s0)
/* 1CD20 8001C120 24430001 */  addiu      $v1, $v0, 0x1
/* 1CD24 8001C124 01221021 */  addu       $v0, $t1, $v0
/* 1CD28 8001C128 AE03000C */  sw         $v1, 0xC($s0)
/* 1CD2C 8001C12C 0800705E */  j          .L8001C178
/* 1CD30 8001C130 2403002D */   addiu     $v1, $zero, 0x2D
.L8001C134:
/* 1CD34 8001C134 8E030030 */  lw         $v1, 0x30($s0)
/* 1CD38 8001C138 30620002 */  andi       $v0, $v1, 0x2
/* 1CD3C 8001C13C 10400007 */  beqz       $v0, .L8001C15C
/* 1CD40 8001C140 30620001 */   andi      $v0, $v1, 0x1
/* 1CD44 8001C144 8E02000C */  lw         $v0, 0xC($s0)
/* 1CD48 8001C148 24430001 */  addiu      $v1, $v0, 0x1
/* 1CD4C 8001C14C 01221021 */  addu       $v0, $t1, $v0
/* 1CD50 8001C150 AE03000C */  sw         $v1, 0xC($s0)
/* 1CD54 8001C154 0800705E */  j          .L8001C178
/* 1CD58 8001C158 2403002B */   addiu     $v1, $zero, 0x2B
.L8001C15C:
/* 1CD5C 8001C15C 10400007 */  beqz       $v0, .L8001C17C
/* 1CD60 8001C160 00000000 */   nop
/* 1CD64 8001C164 8E02000C */  lw         $v0, 0xC($s0)
/* 1CD68 8001C168 24430001 */  addiu      $v1, $v0, 0x1
/* 1CD6C 8001C16C 01221021 */  addu       $v0, $t1, $v0
/* 1CD70 8001C170 AE03000C */  sw         $v1, 0xC($s0)
/* 1CD74 8001C174 24030020 */  addiu      $v1, $zero, 0x20
.L8001C178:
/* 1CD78 8001C178 A0430000 */  sb         $v1, 0x0($v0)
.L8001C17C:
/* 1CD7C 8001C17C 8E02000C */  lw         $v0, 0xC($s0)
/* 1CD80 8001C180 02002021 */  addu       $a0, $s0, $zero
/* 1CD84 8001C184 30C500FF */  andi       $a1, $a2, 0xFF
/* 1CD88 8001C188 01221021 */  addu       $v0, $t1, $v0
/* 1CD8C 8001C18C 0C0071C8 */  jal        func_8001C720
/* 1CD90 8001C190 AC820008 */   sw        $v0, 0x8($a0)
/* 1CD94 8001C194 080070BF */  j          .L8001C2FC
/* 1CD98 8001C198 00000000 */   nop
glabel L8001C19C
/* 1CD9C 8001C19C 92030034 */  lbu        $v1, 0x34($s0)
/* 1CDA0 8001C1A0 24020068 */  addiu      $v0, $zero, 0x68
/* 1CDA4 8001C1A4 1462000B */  bne        $v1, $v0, .L8001C1D4
/* 1CDA8 8001C1A8 2402006C */   addiu     $v0, $zero, 0x6C
/* 1CDAC 8001C1AC 8D020000 */  lw         $v0, 0x0($t0)
/* 1CDB0 8001C1B0 2403FFFC */  addiu      $v1, $zero, -0x4
/* 1CDB4 8001C1B4 24420003 */  addiu      $v0, $v0, 0x3
/* 1CDB8 8001C1B8 00431024 */  and        $v0, $v0, $v1
/* 1CDBC 8001C1BC 24430004 */  addiu      $v1, $v0, 0x4
/* 1CDC0 8001C1C0 AD030000 */  sw         $v1, 0x0($t0)
/* 1CDC4 8001C1C4 8C430000 */  lw         $v1, 0x0($v0)
/* 1CDC8 8001C1C8 8E02002C */  lw         $v0, 0x2C($s0)
/* 1CDCC 8001C1CC 080070BF */  j          .L8001C2FC
/* 1CDD0 8001C1D0 A4620000 */   sh        $v0, 0x0($v1)
.L8001C1D4:
/* 1CDD4 8001C1D4 1062000F */  beq        $v1, $v0, .L8001C214
/* 1CDD8 8001C1D8 2402004C */   addiu     $v0, $zero, 0x4C
/* 1CDDC 8001C1DC 1462000D */  bne        $v1, $v0, .L8001C214
/* 1CDE0 8001C1E0 2402FFFC */   addiu     $v0, $zero, -0x4
/* 1CDE4 8001C1E4 8D040000 */  lw         $a0, 0x0($t0)
/* 1CDE8 8001C1E8 24840003 */  addiu      $a0, $a0, 0x3
/* 1CDEC 8001C1EC 00822024 */  and        $a0, $a0, $v0
/* 1CDF0 8001C1F0 24820004 */  addiu      $v0, $a0, 0x4
/* 1CDF4 8001C1F4 AD020000 */  sw         $v0, 0x0($t0)
/* 1CDF8 8001C1F8 8E02002C */  lw         $v0, 0x2C($s0)
/* 1CDFC 8001C1FC 8C840000 */  lw         $a0, 0x0($a0)
/* 1CE00 8001C200 00401821 */  addu       $v1, $v0, $zero
/* 1CE04 8001C204 00001021 */  addu       $v0, $zero, $zero
/* 1CE08 8001C208 AC820000 */  sw         $v0, 0x0($a0)
/* 1CE0C 8001C20C 080070BF */  j          .L8001C2FC
/* 1CE10 8001C210 AC830004 */   sw        $v1, 0x4($a0)
.L8001C214:
/* 1CE14 8001C214 8D020000 */  lw         $v0, 0x0($t0)
/* 1CE18 8001C218 2403FFFC */  addiu      $v1, $zero, -0x4
/* 1CE1C 8001C21C 24420003 */  addiu      $v0, $v0, 0x3
/* 1CE20 8001C220 00431024 */  and        $v0, $v0, $v1
/* 1CE24 8001C224 24430004 */  addiu      $v1, $v0, 0x4
/* 1CE28 8001C228 AD030000 */  sw         $v1, 0x0($t0)
/* 1CE2C 8001C22C 8C430000 */  lw         $v1, 0x0($v0)
/* 1CE30 8001C230 8E02002C */  lw         $v0, 0x2C($s0)
/* 1CE34 8001C234 080070BF */  j          .L8001C2FC
/* 1CE38 8001C238 AC620000 */   sw        $v0, 0x0($v1)
glabel L8001C23C
/* 1CE3C 8001C23C 8D040000 */  lw         $a0, 0x0($t0)
/* 1CE40 8001C240 2405FFFC */  addiu      $a1, $zero, -0x4
/* 1CE44 8001C244 24840003 */  addiu      $a0, $a0, 0x3
/* 1CE48 8001C248 00852024 */  and        $a0, $a0, $a1
/* 1CE4C 8001C24C 24850004 */  addiu      $a1, $a0, 0x4
/* 1CE50 8001C250 AD050000 */  sw         $a1, 0x0($t0)
/* 1CE54 8001C254 8C870000 */  lw         $a3, 0x0($a0)
/* 1CE58 8001C258 02002021 */  addu       $a0, $s0, $zero
/* 1CE5C 8001C25C 24050078 */  addiu      $a1, $zero, 0x78
/* 1CE60 8001C260 8C86000C */  lw         $a2, 0xC($a0)
/* 1CE64 8001C264 00E01821 */  addu       $v1, $a3, $zero
/* 1CE68 8001C268 000717C3 */  sra        $v0, $a3, 31
/* 1CE6C 8001C26C 01263021 */  addu       $a2, $t1, $a2
/* 1CE70 8001C270 AC820000 */  sw         $v0, 0x0($a0)
/* 1CE74 8001C274 AC830004 */  sw         $v1, 0x4($a0)
/* 1CE78 8001C278 0C0070C4 */  jal        func_8001C310
/* 1CE7C 8001C27C AC860008 */   sw        $a2, 0x8($a0)
/* 1CE80 8001C280 080070BF */  j          .L8001C2FC
/* 1CE84 8001C284 00000000 */   nop
glabel L8001C288
/* 1CE88 8001C288 8D020000 */  lw         $v0, 0x0($t0)
/* 1CE8C 8001C28C 2403FFFC */  addiu      $v1, $zero, -0x4
/* 1CE90 8001C290 24420003 */  addiu      $v0, $v0, 0x3
/* 1CE94 8001C294 00431024 */  and        $v0, $v0, $v1
/* 1CE98 8001C298 24430004 */  addiu      $v1, $v0, 0x4
/* 1CE9C 8001C29C AD030000 */  sw         $v1, 0x0($t0)
/* 1CEA0 8001C2A0 8C440000 */  lw         $a0, 0x0($v0)
/* 1CEA4 8001C2A4 0C006DFE */  jal        strlen
/* 1CEA8 8001C2A8 AE040008 */   sw        $a0, 0x8($s0)
/* 1CEAC 8001C2AC 8E030024 */  lw         $v1, 0x24($s0)
/* 1CEB0 8001C2B0 04600012 */  bltz       $v1, .L8001C2FC
/* 1CEB4 8001C2B4 AE020014 */   sw        $v0, 0x14($s0)
/* 1CEB8 8001C2B8 0062102A */  slt        $v0, $v1, $v0
/* 1CEBC 8001C2BC 5440000F */  bnel       $v0, $zero, .L8001C2FC
/* 1CEC0 8001C2C0 AE030014 */   sw        $v1, 0x14($s0)
/* 1CEC4 8001C2C4 080070BF */  j          .L8001C2FC
/* 1CEC8 8001C2C8 00000000 */   nop
glabel L8001C2CC
/* 1CECC 8001C2CC 8E02000C */  lw         $v0, 0xC($s0)
/* 1CED0 8001C2D0 24430001 */  addiu      $v1, $v0, 0x1
/* 1CED4 8001C2D4 01221021 */  addu       $v0, $t1, $v0
/* 1CED8 8001C2D8 AE03000C */  sw         $v1, 0xC($s0)
/* 1CEDC 8001C2DC 24030025 */  addiu      $v1, $zero, 0x25
/* 1CEE0 8001C2E0 080070BF */  j          .L8001C2FC
/* 1CEE4 8001C2E4 A0430000 */   sb        $v1, 0x0($v0)
glabel L8001C2E8
/* 1CEE8 8001C2E8 8E02000C */  lw         $v0, 0xC($s0)
/* 1CEEC 8001C2EC 24430001 */  addiu      $v1, $v0, 0x1
/* 1CEF0 8001C2F0 01221021 */  addu       $v0, $t1, $v0
/* 1CEF4 8001C2F4 AE03000C */  sw         $v1, 0xC($s0)
/* 1CEF8 8001C2F8 A0460000 */  sb         $a2, 0x0($v0)
.L8001C2FC:
/* 1CEFC 8001C2FC 8FBF0014 */  lw         $ra, 0x14($sp)
/* 1CF00 8001C300 8FB00010 */  lw         $s0, 0x10($sp)
/* 1CF04 8001C304 03E00008 */  jr         $ra
/* 1CF08 8001C308 27BD0018 */   addiu     $sp, $sp, 0x18
/* 1CF0C 8001C30C 00000000 */  nop
