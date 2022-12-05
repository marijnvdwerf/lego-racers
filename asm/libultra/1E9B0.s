.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text, "ax"

glabel osSendMesg
/* 1E9B0 8001DDB0 27BDFFD0 */  addiu      $sp, $sp, -0x30
/* 1E9B4 8001DDB4 AFB00010 */  sw         $s0, 0x10($sp)
/* 1E9B8 8001DDB8 00808021 */  addu       $s0, $a0, $zero
/* 1E9BC 8001DDBC AFB50024 */  sw         $s5, 0x24($sp)
/* 1E9C0 8001DDC0 00A0A821 */  addu       $s5, $a1, $zero
/* 1E9C4 8001DDC4 AFB20018 */  sw         $s2, 0x18($sp)
/* 1E9C8 8001DDC8 00C09021 */  addu       $s2, $a2, $zero
/* 1E9CC 8001DDCC AFBF0028 */  sw         $ra, 0x28($sp)
/* 1E9D0 8001DDD0 AFB40020 */  sw         $s4, 0x20($sp)
/* 1E9D4 8001DDD4 AFB3001C */  sw         $s3, 0x1C($sp)
/* 1E9D8 8001DDD8 0C005734 */  jal        func_80015CD0
/* 1E9DC 8001DDDC AFB10014 */   sw        $s1, 0x14($sp)
/* 1E9E0 8001DDE0 8E030008 */  lw         $v1, 0x8($s0)
/* 1E9E4 8001DDE4 8E040010 */  lw         $a0, 0x10($s0)
/* 1E9E8 8001DDE8 0064182A */  slt        $v1, $v1, $a0
/* 1E9EC 8001DDEC 14600012 */  bnez       $v1, .L8001DE38
/* 1E9F0 8001DDF0 00408821 */   addu      $s1, $v0, $zero
/* 1E9F4 8001DDF4 24140001 */  addiu      $s4, $zero, 0x1
/* 1E9F8 8001DDF8 24130008 */  addiu      $s3, $zero, 0x8
.L8001DDFC:
/* 1E9FC 8001DDFC 12540005 */  beq        $s2, $s4, .L8001DE14
/* 1EA00 8001DE00 26040004 */   addiu     $a0, $s0, 0x4
/* 1EA04 8001DE04 0C005750 */  jal        func_80015D40
/* 1EA08 8001DE08 02202021 */   addu      $a0, $s1, $zero
/* 1EA0C 8001DE0C 080077AF */  j          .L8001DEBC
/* 1EA10 8001DE10 2402FFFF */   addiu     $v0, $zero, -0x1
.L8001DE14:
/* 1EA14 8001DE14 3C028003 */  lui        $v0, %hi(D_800310B0)
/* 1EA18 8001DE18 8C4210B0 */  lw         $v0, %lo(D_800310B0)($v0)
/* 1EA1C 8001DE1C 0C007663 */  jal        func_8001D98C
/* 1EA20 8001DE20 A4530010 */   sh        $s3, 0x10($v0)
/* 1EA24 8001DE24 8E020008 */  lw         $v0, 0x8($s0)
/* 1EA28 8001DE28 8E030010 */  lw         $v1, 0x10($s0)
/* 1EA2C 8001DE2C 0043102A */  slt        $v0, $v0, $v1
/* 1EA30 8001DE30 1040FFF2 */  beqz       $v0, .L8001DDFC
/* 1EA34 8001DE34 00000000 */   nop
.L8001DE38:
/* 1EA38 8001DE38 8E03000C */  lw         $v1, 0xC($s0)
/* 1EA3C 8001DE3C 8E040008 */  lw         $a0, 0x8($s0)
/* 1EA40 8001DE40 8E020010 */  lw         $v0, 0x10($s0)
/* 1EA44 8001DE44 00641821 */  addu       $v1, $v1, $a0
/* 1EA48 8001DE48 0062001A */  div        $zero, $v1, $v0
/* 1EA4C 8001DE4C 14400002 */  bnez       $v0, .L8001DE58
/* 1EA50 8001DE50 00000000 */   nop
/* 1EA54 8001DE54 0007000D */  break      7
.L8001DE58:
/* 1EA58 8001DE58 2401FFFF */  addiu      $at, $zero, -0x1
/* 1EA5C 8001DE5C 14410004 */  bne        $v0, $at, .L8001DE70
/* 1EA60 8001DE60 3C018000 */   lui       $at, (0x80000000 >> 16)
/* 1EA64 8001DE64 14610002 */  bne        $v1, $at, .L8001DE70
/* 1EA68 8001DE68 00000000 */   nop
/* 1EA6C 8001DE6C 0006000D */  break      6
.L8001DE70:
/* 1EA70 8001DE70 00001010 */  mfhi       $v0
/* 1EA74 8001DE74 8E030014 */  lw         $v1, 0x14($s0)
/* 1EA78 8001DE78 00021080 */  sll        $v0, $v0, 2
/* 1EA7C 8001DE7C 00431021 */  addu       $v0, $v0, $v1
/* 1EA80 8001DE80 AC550000 */  sw         $s5, 0x0($v0)
/* 1EA84 8001DE84 8E020008 */  lw         $v0, 0x8($s0)
/* 1EA88 8001DE88 8E030000 */  lw         $v1, 0x0($s0)
/* 1EA8C 8001DE8C 24420001 */  addiu      $v0, $v0, 0x1
/* 1EA90 8001DE90 AE020008 */  sw         $v0, 0x8($s0)
/* 1EA94 8001DE94 8C620000 */  lw         $v0, 0x0($v1)
/* 1EA98 8001DE98 10400005 */  beqz       $v0, .L8001DEB0
/* 1EA9C 8001DE9C 00000000 */   nop
/* 1EAA0 8001DEA0 0C0076B7 */  jal        func_8001DADC
/* 1EAA4 8001DEA4 02002021 */   addu      $a0, $s0, $zero
/* 1EAA8 8001DEA8 0C007D5C */  jal        osStartThread
/* 1EAAC 8001DEAC 00402021 */   addu      $a0, $v0, $zero
.L8001DEB0:
/* 1EAB0 8001DEB0 0C005750 */  jal        func_80015D40
/* 1EAB4 8001DEB4 02202021 */   addu      $a0, $s1, $zero
/* 1EAB8 8001DEB8 00001021 */  addu       $v0, $zero, $zero
.L8001DEBC:
/* 1EABC 8001DEBC 8FBF0028 */  lw         $ra, 0x28($sp)
/* 1EAC0 8001DEC0 8FB50024 */  lw         $s5, 0x24($sp)
/* 1EAC4 8001DEC4 8FB40020 */  lw         $s4, 0x20($sp)
/* 1EAC8 8001DEC8 8FB3001C */  lw         $s3, 0x1C($sp)
/* 1EACC 8001DECC 8FB20018 */  lw         $s2, 0x18($sp)
/* 1EAD0 8001DED0 8FB10014 */  lw         $s1, 0x14($sp)
/* 1EAD4 8001DED4 8FB00010 */  lw         $s0, 0x10($sp)
/* 1EAD8 8001DED8 03E00008 */  jr         $ra
/* 1EADC 8001DEDC 27BD0030 */   addiu     $sp, $sp, 0x30

glabel osSetEventMesg
/* 1EAE0 8001DEE0 27BDFFD8 */  addiu      $sp, $sp, -0x28
/* 1EAE4 8001DEE4 AFB00010 */  sw         $s0, 0x10($sp)
/* 1EAE8 8001DEE8 00808021 */  addu       $s0, $a0, $zero
/* 1EAEC 8001DEEC AFB10014 */  sw         $s1, 0x14($sp)
/* 1EAF0 8001DEF0 00A08821 */  addu       $s1, $a1, $zero
/* 1EAF4 8001DEF4 AFB20018 */  sw         $s2, 0x18($sp)
/* 1EAF8 8001DEF8 00C09021 */  addu       $s2, $a2, $zero
/* 1EAFC 8001DEFC AFBF0020 */  sw         $ra, 0x20($sp)
/* 1EB00 8001DF00 0C005734 */  jal        func_80015CD0
/* 1EB04 8001DF04 AFB3001C */   sw        $s3, 0x1C($sp)
/* 1EB08 8001DF08 001018C0 */  sll        $v1, $s0, 3
/* 1EB0C 8001DF0C 3C048004 */  lui        $a0, %hi(D_8003A740)
/* 1EB10 8001DF10 2484A740 */  addiu      $a0, $a0, %lo(D_8003A740)
/* 1EB14 8001DF14 00641821 */  addu       $v1, $v1, $a0
/* 1EB18 8001DF18 00409821 */  addu       $s3, $v0, $zero
/* 1EB1C 8001DF1C 2402000E */  addiu      $v0, $zero, 0xE
/* 1EB20 8001DF20 AC710000 */  sw         $s1, 0x0($v1)
/* 1EB24 8001DF24 16020010 */  bne        $s0, $v0, .L8001DF68
/* 1EB28 8001DF28 AC720004 */   sw        $s2, 0x4($v1)
/* 1EB2C 8001DF2C 3C028003 */  lui        $v0, %hi(D_800323FC)
/* 1EB30 8001DF30 8C4223FC */  lw         $v0, %lo(D_800323FC)($v0)
/* 1EB34 8001DF34 1040000A */  beqz       $v0, .L8001DF60
/* 1EB38 8001DF38 24020001 */   addiu     $v0, $zero, 0x1
/* 1EB3C 8001DF3C 3C028003 */  lui        $v0, %hi(D_80031070)
/* 1EB40 8001DF40 8C421070 */  lw         $v0, %lo(D_80031070)($v0)
/* 1EB44 8001DF44 14400006 */  bnez       $v0, .L8001DF60
/* 1EB48 8001DF48 24020001 */   addiu     $v0, $zero, 0x1
/* 1EB4C 8001DF4C 02202021 */  addu       $a0, $s1, $zero
/* 1EB50 8001DF50 02402821 */  addu       $a1, $s2, $zero
/* 1EB54 8001DF54 0C00776C */  jal        osSendMesg
/* 1EB58 8001DF58 00003021 */   addu      $a2, $zero, $zero
/* 1EB5C 8001DF5C 24020001 */  addiu      $v0, $zero, 0x1
.L8001DF60:
/* 1EB60 8001DF60 3C018003 */  lui        $at, %hi(D_80031070)
/* 1EB64 8001DF64 AC221070 */  sw         $v0, %lo(D_80031070)($at)
.L8001DF68:
/* 1EB68 8001DF68 0C005750 */  jal        func_80015D40
/* 1EB6C 8001DF6C 02602021 */   addu      $a0, $s3, $zero
/* 1EB70 8001DF70 8FBF0020 */  lw         $ra, 0x20($sp)
/* 1EB74 8001DF74 8FB3001C */  lw         $s3, 0x1C($sp)
/* 1EB78 8001DF78 8FB20018 */  lw         $s2, 0x18($sp)
/* 1EB7C 8001DF7C 8FB10014 */  lw         $s1, 0x14($sp)
/* 1EB80 8001DF80 8FB00010 */  lw         $s0, 0x10($sp)
/* 1EB84 8001DF84 03E00008 */  jr         $ra
/* 1EB88 8001DF88 27BD0028 */   addiu     $sp, $sp, 0x28
/* 1EB8C 8001DF8C 00000000 */  nop
