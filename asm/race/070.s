.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text, "ax"

glabel func_race_800D5FD0
/* 8C390 800D5FD0 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 8C394 800D5FD4 AFB00010 */  sw         $s0, 0x10($sp)
/* 8C398 800D5FD8 AFBF0014 */  sw         $ra, 0x14($sp)
/* 8C39C 800D5FDC 0C03592C */  jal        func_race_800D64B0
/* 8C3A0 800D5FE0 00808021 */   addu      $s0, $a0, $zero
/* 8C3A4 800D5FE4 02001021 */  addu       $v0, $s0, $zero
/* 8C3A8 800D5FE8 3C03800D */  lui        $v1, %hi(D_race_800CAA50)
/* 8C3AC 800D5FEC 2463AA50 */  addiu      $v1, $v1, %lo(D_race_800CAA50)
/* 8C3B0 800D5FF0 AC43001C */  sw         $v1, 0x1C($v0)
/* 8C3B4 800D5FF4 AC400020 */  sw         $zero, 0x20($v0)
/* 8C3B8 800D5FF8 AC400024 */  sw         $zero, 0x24($v0)
/* 8C3BC 800D5FFC AC400028 */  sw         $zero, 0x28($v0)
/* 8C3C0 800D6000 8FBF0014 */  lw         $ra, 0x14($sp)
/* 8C3C4 800D6004 8FB00010 */  lw         $s0, 0x10($sp)
/* 8C3C8 800D6008 03E00008 */  jr         $ra
/* 8C3CC 800D600C 27BD0018 */   addiu     $sp, $sp, 0x18

glabel func_race_800D6010
/* 8C3D0 800D6010 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* 8C3D4 800D6014 AFB00010 */  sw         $s0, 0x10($sp)
/* 8C3D8 800D6018 00808021 */  addu       $s0, $a0, $zero
/* 8C3DC 800D601C AFB10014 */  sw         $s1, 0x14($sp)
/* 8C3E0 800D6020 00A08821 */  addu       $s1, $a1, $zero
/* 8C3E4 800D6024 3C02800D */  lui        $v0, %hi(D_race_800CAA50)
/* 8C3E8 800D6028 2442AA50 */  addiu      $v0, $v0, %lo(D_race_800CAA50)
/* 8C3EC 800D602C AFBF0018 */  sw         $ra, 0x18($sp)
/* 8C3F0 800D6030 0C03583B */  jal        func_race_800D60EC
/* 8C3F4 800D6034 AE02001C */   sw        $v0, 0x1C($s0)
/* 8C3F8 800D6038 02002021 */  addu       $a0, $s0, $zero
/* 8C3FC 800D603C 0C03593D */  jal        func_race_800D64F4
/* 8C400 800D6040 02202821 */   addu      $a1, $s1, $zero
/* 8C404 800D6044 8FBF0018 */  lw         $ra, 0x18($sp)
/* 8C408 800D6048 8FB10014 */  lw         $s1, 0x14($sp)
/* 8C40C 800D604C 8FB00010 */  lw         $s0, 0x10($sp)
/* 8C410 800D6050 03E00008 */  jr         $ra
/* 8C414 800D6054 27BD0020 */   addiu     $sp, $sp, 0x20

glabel func_race_800D6058
/* 8C418 800D6058 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* 8C41C 800D605C AFB00010 */  sw         $s0, 0x10($sp)
/* 8C420 800D6060 00808021 */  addu       $s0, $a0, $zero
/* 8C424 800D6064 AFBF0018 */  sw         $ra, 0x18($sp)
/* 8C428 800D6068 AFB10014 */  sw         $s1, 0x14($sp)
/* 8C42C 800D606C 8E020014 */  lw         $v0, 0x14($s0)
/* 8C430 800D6070 10400003 */  beqz       $v0, .Lrace_800D6080
/* 8C434 800D6074 00A08821 */   addu      $s1, $a1, $zero
/* 8C438 800D6078 0C03583B */  jal        func_race_800D60EC
/* 8C43C 800D607C 00000000 */   nop
.Lrace_800D6080:
/* 8C440 800D6080 00002821 */  addu       $a1, $zero, $zero
/* 8C444 800D6084 02202021 */  addu       $a0, $s1, $zero
/* 8C448 800D6088 8E220000 */  lw         $v0, 0x0($s1)
/* 8C44C 800D608C 02001821 */  addu       $v1, $s0, $zero
/* 8C450 800D6090 AE020010 */  sw         $v0, 0x10($s0)
.Lrace_800D6094:
/* 8C454 800D6094 8C820004 */  lw         $v0, 0x4($a0)
/* 8C458 800D6098 24840004 */  addiu      $a0, $a0, 0x4
/* 8C45C 800D609C 24A50001 */  addiu      $a1, $a1, 0x1
/* 8C460 800D60A0 AC620004 */  sw         $v0, 0x4($v1)
/* 8C464 800D60A4 2CA20003 */  sltiu      $v0, $a1, 0x3
/* 8C468 800D60A8 1440FFFA */  bnez       $v0, .Lrace_800D6094
/* 8C46C 800D60AC 24630004 */   addiu     $v1, $v1, 0x4
/* 8C470 800D60B0 8E220010 */  lw         $v0, 0x10($s1)
/* 8C474 800D60B4 AE020000 */  sw         $v0, 0x0($s0)
/* 8C478 800D60B8 C6200014 */  lwc1       $f0, 0x14($s1)
/* 8C47C 800D60BC E6000020 */  swc1       $f0, 0x20($s0)
/* 8C480 800D60C0 C6200018 */  lwc1       $f0, 0x18($s1)
/* 8C484 800D60C4 E6000024 */  swc1       $f0, 0x24($s0)
/* 8C488 800D60C8 C620001C */  lwc1       $f0, 0x1C($s1)
/* 8C48C 800D60CC 24020004 */  addiu      $v0, $zero, 0x4
/* 8C490 800D60D0 AE020014 */  sw         $v0, 0x14($s0)
/* 8C494 800D60D4 E6000028 */  swc1       $f0, 0x28($s0)
/* 8C498 800D60D8 8FBF0018 */  lw         $ra, 0x18($sp)
/* 8C49C 800D60DC 8FB10014 */  lw         $s1, 0x14($sp)
/* 8C4A0 800D60E0 8FB00010 */  lw         $s0, 0x10($sp)
/* 8C4A4 800D60E4 03E00008 */  jr         $ra
/* 8C4A8 800D60E8 27BD0020 */   addiu     $sp, $sp, 0x20

glabel func_race_800D60EC
/* 8C4AC 800D60EC 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 8C4B0 800D60F0 AFBF0010 */  sw         $ra, 0x10($sp)
/* 8C4B4 800D60F4 AC800020 */  sw         $zero, 0x20($a0)
/* 8C4B8 800D60F8 AC800024 */  sw         $zero, 0x24($a0)
/* 8C4BC 800D60FC 0C035951 */  jal        func_race_800D6544
/* 8C4C0 800D6100 AC800028 */   sw        $zero, 0x28($a0)
/* 8C4C4 800D6104 8FBF0010 */  lw         $ra, 0x10($sp)
/* 8C4C8 800D6108 03E00008 */  jr         $ra
/* 8C4CC 800D610C 27BD0018 */   addiu     $sp, $sp, 0x18

glabel func_race_800D6110
/* 8C4D0 800D6110 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* 8C4D4 800D6114 AFB10014 */  sw         $s1, 0x14($sp)
/* 8C4D8 800D6118 00808821 */  addu       $s1, $a0, $zero
/* 8C4DC 800D611C AFB00010 */  sw         $s0, 0x10($sp)
/* 8C4E0 800D6120 00A08021 */  addu       $s0, $a1, $zero
/* 8C4E4 800D6124 24050001 */  addiu      $a1, $zero, 0x1
/* 8C4E8 800D6128 AFBF0018 */  sw         $ra, 0x18($sp)
/* 8C4EC 800D612C 0C03596C */  jal        func_race_800D65B0
/* 8C4F0 800D6130 00A03021 */   addu      $a2, $a1, $zero
/* 8C4F4 800D6134 12000003 */  beqz       $s0, .Lrace_800D6144
/* 8C4F8 800D6138 02002021 */   addu      $a0, $s0, $zero
/* 8C4FC 800D613C 0C04377C */  jal        func_race_8010DDF0
/* 8C500 800D6140 26250020 */   addiu     $a1, $s1, 0x20
.Lrace_800D6144:
/* 8C504 800D6144 8FBF0018 */  lw         $ra, 0x18($sp)
/* 8C508 800D6148 8FB10014 */  lw         $s1, 0x14($sp)
/* 8C50C 800D614C 8FB00010 */  lw         $s0, 0x10($sp)
/* 8C510 800D6150 03E00008 */  jr         $ra
/* 8C514 800D6154 27BD0020 */   addiu     $sp, $sp, 0x20

glabel func_race_800D6158
/* 8C518 800D6158 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* 8C51C 800D615C AFB00010 */  sw         $s0, 0x10($sp)
/* 8C520 800D6160 00808021 */  addu       $s0, $a0, $zero
/* 8C524 800D6164 AFB10014 */  sw         $s1, 0x14($sp)
/* 8C528 800D6168 00A08821 */  addu       $s1, $a1, $zero
/* 8C52C 800D616C AFBF0018 */  sw         $ra, 0x18($sp)
/* 8C530 800D6170 8E050014 */  lw         $a1, 0x14($s0)
/* 8C534 800D6174 0C03596C */  jal        func_race_800D65B0
/* 8C538 800D6178 24060003 */   addiu     $a2, $zero, 0x3
/* 8C53C 800D617C 12200004 */  beqz       $s1, .Lrace_800D6190
/* 8C540 800D6180 24020004 */   addiu     $v0, $zero, 0x4
/* 8C544 800D6184 0C043786 */  jal        func_race_8010DE18
/* 8C548 800D6188 02202021 */   addu      $a0, $s1, $zero
/* 8C54C 800D618C 24020004 */  addiu      $v0, $zero, 0x4
.Lrace_800D6190:
/* 8C550 800D6190 AE020014 */  sw         $v0, 0x14($s0)
/* 8C554 800D6194 8FBF0018 */  lw         $ra, 0x18($sp)
/* 8C558 800D6198 8FB10014 */  lw         $s1, 0x14($sp)
/* 8C55C 800D619C 8FB00010 */  lw         $s0, 0x10($sp)
/* 8C560 800D61A0 03E00008 */  jr         $ra
/* 8C564 800D61A4 27BD0020 */   addiu     $sp, $sp, 0x20

glabel func_race_800D61A8
/* 8C568 800D61A8 8C820020 */  lw         $v0, 0x20($a0)
/* 8C56C 800D61AC 8C830024 */  lw         $v1, 0x24($a0)
/* 8C570 800D61B0 8C860028 */  lw         $a2, 0x28($a0)
/* 8C574 800D61B4 ACA20000 */  sw         $v0, 0x0($a1)
/* 8C578 800D61B8 ACA30004 */  sw         $v1, 0x4($a1)
/* 8C57C 800D61BC ACA60008 */  sw         $a2, 0x8($a1)
/* 8C580 800D61C0 03E00008 */  jr         $ra
/* 8C584 800D61C4 00000000 */   nop

glabel func_race_800D61C8
/* 8C588 800D61C8 03E00008 */  jr         $ra
/* 8C58C 800D61CC 2402000B */   addiu     $v0, $zero, 0xB

glabel func_race_800D61D0
/* 8C590 800D61D0 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 8C594 800D61D4 AFB00010 */  sw         $s0, 0x10($sp)
/* 8C598 800D61D8 AFBF0014 */  sw         $ra, 0x14($sp)
/* 8C59C 800D61DC 0C03592C */  jal        func_race_800D64B0
/* 8C5A0 800D61E0 00808021 */   addu      $s0, $a0, $zero
/* 8C5A4 800D61E4 02002021 */  addu       $a0, $s0, $zero
/* 8C5A8 800D61E8 3C02800D */  lui        $v0, %hi(D_race_800CAA90)
/* 8C5AC 800D61EC 2442AA90 */  addiu      $v0, $v0, %lo(D_race_800CAA90)
/* 8C5B0 800D61F0 0C035896 */  jal        func_race_800D6258
/* 8C5B4 800D61F4 AE02001C */   sw        $v0, 0x1C($s0)
/* 8C5B8 800D61F8 02001021 */  addu       $v0, $s0, $zero
/* 8C5BC 800D61FC A0400018 */  sb         $zero, 0x18($v0)
/* 8C5C0 800D6200 8FBF0014 */  lw         $ra, 0x14($sp)
/* 8C5C4 800D6204 8FB00010 */  lw         $s0, 0x10($sp)
/* 8C5C8 800D6208 03E00008 */  jr         $ra
/* 8C5CC 800D620C 27BD0018 */   addiu     $sp, $sp, 0x18

glabel func_race_800D6210
/* 8C5D0 800D6210 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* 8C5D4 800D6214 AFB00010 */  sw         $s0, 0x10($sp)
/* 8C5D8 800D6218 00808021 */  addu       $s0, $a0, $zero
/* 8C5DC 800D621C AFB10014 */  sw         $s1, 0x14($sp)
/* 8C5E0 800D6220 00A08821 */  addu       $s1, $a1, $zero
/* 8C5E4 800D6224 3C02800D */  lui        $v0, %hi(D_race_800CAA90)
/* 8C5E8 800D6228 2442AA90 */  addiu      $v0, $v0, %lo(D_race_800CAA90)
/* 8C5EC 800D622C AFBF0018 */  sw         $ra, 0x18($sp)
/* 8C5F0 800D6230 0C0358C6 */  jal        func_race_800D6318
/* 8C5F4 800D6234 AE02001C */   sw        $v0, 0x1C($s0)
/* 8C5F8 800D6238 02002021 */  addu       $a0, $s0, $zero
/* 8C5FC 800D623C 0C03593D */  jal        func_race_800D64F4
/* 8C600 800D6240 02202821 */   addu      $a1, $s1, $zero
/* 8C604 800D6244 8FBF0018 */  lw         $ra, 0x18($sp)
/* 8C608 800D6248 8FB10014 */  lw         $s1, 0x14($sp)
/* 8C60C 800D624C 8FB00010 */  lw         $s0, 0x10($sp)
/* 8C610 800D6250 03E00008 */  jr         $ra
/* 8C614 800D6254 27BD0020 */   addiu     $sp, $sp, 0x20

glabel func_race_800D6258
/* 8C618 800D6258 2402FFFF */  addiu      $v0, $zero, -0x1
/* 8C61C 800D625C AC820020 */  sw         $v0, 0x20($a0)
/* 8C620 800D6260 AC800024 */  sw         $zero, 0x24($a0)
/* 8C624 800D6264 AC800028 */  sw         $zero, 0x28($a0)
/* 8C628 800D6268 03E00008 */  jr         $ra
/* 8C62C 800D626C A080002C */   sb        $zero, 0x2C($a0)

glabel func_race_800D6270
/* 8C630 800D6270 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* 8C634 800D6274 AFB00010 */  sw         $s0, 0x10($sp)
/* 8C638 800D6278 00808021 */  addu       $s0, $a0, $zero
/* 8C63C 800D627C AFBF0018 */  sw         $ra, 0x18($sp)
/* 8C640 800D6280 AFB10014 */  sw         $s1, 0x14($sp)
/* 8C644 800D6284 8E020014 */  lw         $v0, 0x14($s0)
/* 8C648 800D6288 10400003 */  beqz       $v0, .Lrace_800D6298
/* 8C64C 800D628C 00A08821 */   addu      $s1, $a1, $zero
/* 8C650 800D6290 0C0358C6 */  jal        func_race_800D6318
/* 8C654 800D6294 00000000 */   nop
.Lrace_800D6298:
/* 8C658 800D6298 00002821 */  addu       $a1, $zero, $zero
/* 8C65C 800D629C 02202021 */  addu       $a0, $s1, $zero
/* 8C660 800D62A0 8E220000 */  lw         $v0, 0x0($s1)
/* 8C664 800D62A4 02001821 */  addu       $v1, $s0, $zero
/* 8C668 800D62A8 AE020010 */  sw         $v0, 0x10($s0)
.Lrace_800D62AC:
/* 8C66C 800D62AC 8C820004 */  lw         $v0, 0x4($a0)
/* 8C670 800D62B0 24840004 */  addiu      $a0, $a0, 0x4
/* 8C674 800D62B4 24A50001 */  addiu      $a1, $a1, 0x1
/* 8C678 800D62B8 AC620004 */  sw         $v0, 0x4($v1)
/* 8C67C 800D62BC 2CA20003 */  sltiu      $v0, $a1, 0x3
/* 8C680 800D62C0 1440FFFA */  bnez       $v0, .Lrace_800D62AC
/* 8C684 800D62C4 24630004 */   addiu     $v1, $v1, 0x4
/* 8C688 800D62C8 8E220010 */  lw         $v0, 0x10($s1)
/* 8C68C 800D62CC AE020000 */  sw         $v0, 0x0($s0)
/* 8C690 800D62D0 8E220014 */  lw         $v0, 0x14($s1)
/* 8C694 800D62D4 AE020020 */  sw         $v0, 0x20($s0)
/* 8C698 800D62D8 8E220018 */  lw         $v0, 0x18($s1)
/* 8C69C 800D62DC AE000028 */  sw         $zero, 0x28($s0)
/* 8C6A0 800D62E0 AE020024 */  sw         $v0, 0x24($s0)
/* 8C6A4 800D62E4 8E22001C */  lw         $v0, 0x1C($s1)
/* 8C6A8 800D62E8 10400005 */  beqz       $v0, .Lrace_800D6300
/* 8C6AC 800D62EC 24020004 */   addiu     $v0, $zero, 0x4
/* 8C6B0 800D62F0 92020018 */  lbu        $v0, 0x18($s0)
/* 8C6B4 800D62F4 34420004 */  ori        $v0, $v0, 0x4
/* 8C6B8 800D62F8 A2020018 */  sb         $v0, 0x18($s0)
/* 8C6BC 800D62FC 24020004 */  addiu      $v0, $zero, 0x4
.Lrace_800D6300:
/* 8C6C0 800D6300 AE020014 */  sw         $v0, 0x14($s0)
/* 8C6C4 800D6304 8FBF0018 */  lw         $ra, 0x18($sp)
/* 8C6C8 800D6308 8FB10014 */  lw         $s1, 0x14($sp)
/* 8C6CC 800D630C 8FB00010 */  lw         $s0, 0x10($sp)
/* 8C6D0 800D6310 03E00008 */  jr         $ra
/* 8C6D4 800D6314 27BD0020 */   addiu     $sp, $sp, 0x20

glabel func_race_800D6318
/* 8C6D8 800D6318 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 8C6DC 800D631C AFB00010 */  sw         $s0, 0x10($sp)
/* 8C6E0 800D6320 00808021 */  addu       $s0, $a0, $zero
/* 8C6E4 800D6324 AFBF0014 */  sw         $ra, 0x14($sp)
/* 8C6E8 800D6328 8E02001C */  lw         $v0, 0x1C($s0)
/* 8C6EC 800D632C 84440010 */  lh         $a0, 0x10($v0)
/* 8C6F0 800D6330 8C420014 */  lw         $v0, 0x14($v0)
/* 8C6F4 800D6334 0040F809 */  jalr       $v0
/* 8C6F8 800D6338 02042021 */   addu      $a0, $s0, $a0
/* 8C6FC 800D633C 0C035896 */  jal        func_race_800D6258
/* 8C700 800D6340 02002021 */   addu      $a0, $s0, $zero
/* 8C704 800D6344 0C035951 */  jal        func_race_800D6544
/* 8C708 800D6348 02002021 */   addu      $a0, $s0, $zero
/* 8C70C 800D634C 8FBF0014 */  lw         $ra, 0x14($sp)
/* 8C710 800D6350 8FB00010 */  lw         $s0, 0x10($sp)
/* 8C714 800D6354 03E00008 */  jr         $ra
/* 8C718 800D6358 27BD0018 */   addiu     $sp, $sp, 0x18

glabel func_race_800D635C
/* 8C71C 800D635C 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 8C720 800D6360 AFB00010 */  sw         $s0, 0x10($sp)
/* 8C724 800D6364 00808021 */  addu       $s0, $a0, $zero
/* 8C728 800D6368 24050001 */  addiu      $a1, $zero, 0x1
/* 8C72C 800D636C AFBF0014 */  sw         $ra, 0x14($sp)
/* 8C730 800D6370 8E020024 */  lw         $v0, 0x24($s0)
/* 8C734 800D6374 00A03021 */  addu       $a2, $a1, $zero
/* 8C738 800D6378 0C03596C */  jal        func_race_800D65B0
/* 8C73C 800D637C AE020028 */   sw        $v0, 0x28($s0)
/* 8C740 800D6380 24020003 */  addiu      $v0, $zero, 0x3
/* 8C744 800D6384 AE020014 */  sw         $v0, 0x14($s0)
/* 8C748 800D6388 8FBF0014 */  lw         $ra, 0x14($sp)
/* 8C74C 800D638C 8FB00010 */  lw         $s0, 0x10($sp)
/* 8C750 800D6390 03E00008 */  jr         $ra
/* 8C754 800D6394 27BD0018 */   addiu     $sp, $sp, 0x18

glabel func_race_800D6398
/* 8C758 800D6398 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 8C75C 800D639C AFB00010 */  sw         $s0, 0x10($sp)
/* 8C760 800D63A0 00808021 */  addu       $s0, $a0, $zero
/* 8C764 800D63A4 AFBF0014 */  sw         $ra, 0x14($sp)
/* 8C768 800D63A8 8E020028 */  lw         $v0, 0x28($s0)
/* 8C76C 800D63AC 1440000A */  bnez       $v0, .Lrace_800D63D8
/* 8C770 800D63B0 00000000 */   nop
/* 8C774 800D63B4 9202002C */  lbu        $v0, 0x2C($s0)
/* 8C778 800D63B8 30420001 */  andi       $v0, $v0, 0x1
/* 8C77C 800D63BC 14400006 */  bnez       $v0, .Lrace_800D63D8
/* 8C780 800D63C0 00000000 */   nop
/* 8C784 800D63C4 8E050014 */  lw         $a1, 0x14($s0)
/* 8C788 800D63C8 0C03596C */  jal        func_race_800D65B0
/* 8C78C 800D63CC 24060003 */   addiu     $a2, $zero, 0x3
/* 8C790 800D63D0 24020004 */  addiu      $v0, $zero, 0x4
/* 8C794 800D63D4 AE020014 */  sw         $v0, 0x14($s0)
.Lrace_800D63D8:
/* 8C798 800D63D8 8FBF0014 */  lw         $ra, 0x14($sp)
/* 8C79C 800D63DC 8FB00010 */  lw         $s0, 0x10($sp)
/* 8C7A0 800D63E0 03E00008 */  jr         $ra
/* 8C7A4 800D63E4 27BD0018 */   addiu     $sp, $sp, 0x18

glabel func_race_800D63E8
/* 8C7A8 800D63E8 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* 8C7AC 800D63EC AFB00010 */  sw         $s0, 0x10($sp)
/* 8C7B0 800D63F0 00808021 */  addu       $s0, $a0, $zero
/* 8C7B4 800D63F4 AFB10014 */  sw         $s1, 0x14($sp)
/* 8C7B8 800D63F8 AFBF0018 */  sw         $ra, 0x18($sp)
/* 8C7BC 800D63FC 0C03595D */  jal        func_race_800D6574
/* 8C7C0 800D6400 00A08821 */   addu      $s1, $a1, $zero
/* 8C7C4 800D6404 8E030014 */  lw         $v1, 0x14($s0)
/* 8C7C8 800D6408 24020004 */  addiu      $v0, $zero, 0x4
/* 8C7CC 800D640C 10620010 */  beq        $v1, $v0, .Lrace_800D6450
/* 8C7D0 800D6410 00000000 */   nop
/* 8C7D4 800D6414 8E030028 */  lw         $v1, 0x28($s0)
/* 8C7D8 800D6418 0071102B */  sltu       $v0, $v1, $s1
/* 8C7DC 800D641C 10400003 */  beqz       $v0, .Lrace_800D642C
/* 8C7E0 800D6420 00711023 */   subu      $v0, $v1, $s1
/* 8C7E4 800D6424 0803590C */  j          .Lrace_800D6430
/* 8C7E8 800D6428 AE000028 */   sw        $zero, 0x28($s0)
.Lrace_800D642C:
/* 8C7EC 800D642C AE020028 */  sw         $v0, 0x28($s0)
.Lrace_800D6430:
/* 8C7F0 800D6430 8E020028 */  lw         $v0, 0x28($s0)
/* 8C7F4 800D6434 14400006 */  bnez       $v0, .Lrace_800D6450
/* 8C7F8 800D6438 00000000 */   nop
/* 8C7FC 800D643C 8E02001C */  lw         $v0, 0x1C($s0)
/* 8C800 800D6440 84440010 */  lh         $a0, 0x10($v0)
/* 8C804 800D6444 8C420014 */  lw         $v0, 0x14($v0)
/* 8C808 800D6448 0040F809 */  jalr       $v0
/* 8C80C 800D644C 02042021 */   addu      $a0, $s0, $a0
.Lrace_800D6450:
/* 8C810 800D6450 8FBF0018 */  lw         $ra, 0x18($sp)
/* 8C814 800D6454 8FB10014 */  lw         $s1, 0x14($sp)
/* 8C818 800D6458 8FB00010 */  lw         $s0, 0x10($sp)
/* 8C81C 800D645C 03E00008 */  jr         $ra
/* 8C820 800D6460 27BD0020 */   addiu     $sp, $sp, 0x20

glabel func_race_800D6464
/* 8C824 800D6464 8C820024 */  lw         $v0, 0x24($a0)
/* 8C828 800D6468 03E00008 */  jr         $ra
/* 8C82C 800D646C 00000000 */   nop

glabel func_race_800D6470
/* 8C830 800D6470 03E00008 */  jr         $ra
/* 8C834 800D6474 24020006 */   addiu     $v0, $zero, 0x6

glabel func_race_800D6478
/* 8C838 800D6478 8C820020 */  lw         $v0, 0x20($a0)
/* 8C83C 800D647C 03E00008 */  jr         $ra
/* 8C840 800D6480 00000000 */   nop

glabel func_race_800D6484
/* 8C844 800D6484 9082002C */  lbu        $v0, 0x2C($a0)
/* 8C848 800D6488 304200FE */  andi       $v0, $v0, 0xFE
/* 8C84C 800D648C 03E00008 */  jr         $ra
/* 8C850 800D6490 A082002C */   sb        $v0, 0x2C($a0)

glabel func_race_800D6494
/* 8C854 800D6494 9082002C */  lbu        $v0, 0x2C($a0)
/* 8C858 800D6498 34420001 */  ori        $v0, $v0, 0x1
/* 8C85C 800D649C 03E00008 */  jr         $ra
/* 8C860 800D64A0 A082002C */   sb        $v0, 0x2C($a0)
