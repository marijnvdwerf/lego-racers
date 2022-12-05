.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text, "ax"

glabel func_race_800F1DC0
/* A8180 800F1DC0 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* A8184 800F1DC4 AFB00010 */  sw         $s0, 0x10($sp)
/* A8188 800F1DC8 AFBF0014 */  sw         $ra, 0x14($sp)
/* A818C 800F1DCC 0C03C78B */  jal        func_race_800F1E2C
/* A8190 800F1DD0 00808021 */   addu      $s0, $a0, $zero
/* A8194 800F1DD4 02001021 */  addu       $v0, $s0, $zero
/* A8198 800F1DD8 8FBF0014 */  lw         $ra, 0x14($sp)
/* A819C 800F1DDC 8FB00010 */  lw         $s0, 0x10($sp)
/* A81A0 800F1DE0 03E00008 */  jr         $ra
/* A81A4 800F1DE4 27BD0018 */   addiu     $sp, $sp, 0x18

glabel func_race_800F1DE8
/* A81A8 800F1DE8 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* A81AC 800F1DEC AFB10014 */  sw         $s1, 0x14($sp)
/* A81B0 800F1DF0 00808821 */  addu       $s1, $a0, $zero
/* A81B4 800F1DF4 AFB00010 */  sw         $s0, 0x10($sp)
/* A81B8 800F1DF8 AFBF0018 */  sw         $ra, 0x18($sp)
/* A81BC 800F1DFC 0C03C7A1 */  jal        func_race_800F1E84
/* A81C0 800F1E00 00A08021 */   addu      $s0, $a1, $zero
/* A81C4 800F1E04 32100001 */  andi       $s0, $s0, 0x1
/* A81C8 800F1E08 12000003 */  beqz       $s0, .Lrace_800F1E18
/* A81CC 800F1E0C 00000000 */   nop
/* A81D0 800F1E10 0C01FB5C */  jal        func_8007ED70
/* A81D4 800F1E14 02202021 */   addu      $a0, $s1, $zero
.Lrace_800F1E18:
/* A81D8 800F1E18 8FBF0018 */  lw         $ra, 0x18($sp)
/* A81DC 800F1E1C 8FB10014 */  lw         $s1, 0x14($sp)
/* A81E0 800F1E20 8FB00010 */  lw         $s0, 0x10($sp)
/* A81E4 800F1E24 03E00008 */  jr         $ra
/* A81E8 800F1E28 27BD0020 */   addiu     $sp, $sp, 0x20

glabel func_race_800F1E2C
/* A81EC 800F1E2C 00001821 */  addu       $v1, $zero, $zero
/* A81F0 800F1E30 240500FF */  addiu      $a1, $zero, 0xFF
/* A81F4 800F1E34 00031600 */  sll        $v0, $v1, 24
.Lrace_800F1E38:
/* A81F8 800F1E38 00021603 */  sra        $v0, $v0, 24
/* A81FC 800F1E3C 00821021 */  addu       $v0, $a0, $v0
/* A8200 800F1E40 A0450020 */  sb         $a1, 0x20($v0)
/* A8204 800F1E44 24630001 */  addiu      $v1, $v1, 0x1
/* A8208 800F1E48 306200FF */  andi       $v0, $v1, 0xFF
/* A820C 800F1E4C 2C420004 */  sltiu      $v0, $v0, 0x4
/* A8210 800F1E50 1440FFF9 */  bnez       $v0, .Lrace_800F1E38
/* A8214 800F1E54 00031600 */   sll       $v0, $v1, 24
/* A8218 800F1E58 3C01800D */  lui        $at, %hi(D_race_800CCAD0)
/* A821C 800F1E5C C420CAD0 */  lwc1       $f0, %lo(D_race_800CCAD0)($at)
/* A8220 800F1E60 AC800000 */  sw         $zero, 0x0($a0)
/* A8224 800F1E64 AC800004 */  sw         $zero, 0x4($a0)
/* A8228 800F1E68 AC800008 */  sw         $zero, 0x8($a0)
/* A822C 800F1E6C AC80000C */  sw         $zero, 0xC($a0)
/* A8230 800F1E70 AC800010 */  sw         $zero, 0x10($a0)
/* A8234 800F1E74 AC800014 */  sw         $zero, 0x14($a0)
/* A8238 800F1E78 AC800018 */  sw         $zero, 0x18($a0)
/* A823C 800F1E7C 03E00008 */  jr         $ra
/* A8240 800F1E80 E480001C */   swc1      $f0, 0x1C($a0)

glabel func_race_800F1E84
/* A8244 800F1E84 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* A8248 800F1E88 AFBF0010 */  sw         $ra, 0x10($sp)
/* A824C 800F1E8C 0C03C78B */  jal        func_race_800F1E2C
/* A8250 800F1E90 00000000 */   nop
/* A8254 800F1E94 8FBF0010 */  lw         $ra, 0x10($sp)
/* A8258 800F1E98 03E00008 */  jr         $ra
/* A825C 800F1E9C 27BD0018 */   addiu     $sp, $sp, 0x18

glabel func_race_800F1EA0
/* A8260 800F1EA0 27BDFFD8 */  addiu      $sp, $sp, -0x28
/* A8264 800F1EA4 AFB20018 */  sw         $s2, 0x18($sp)
/* A8268 800F1EA8 00809021 */  addu       $s2, $a0, $zero
/* A826C 800F1EAC AFB10014 */  sw         $s1, 0x14($sp)
/* A8270 800F1EB0 00A08821 */  addu       $s1, $a1, $zero
/* A8274 800F1EB4 AFB3001C */  sw         $s3, 0x1C($sp)
/* A8278 800F1EB8 00C09821 */  addu       $s3, $a2, $zero
/* A827C 800F1EBC 02202021 */  addu       $a0, $s1, $zero
/* A8280 800F1EC0 24050005 */  addiu      $a1, $zero, 0x5
/* A8284 800F1EC4 AFBF0020 */  sw         $ra, 0x20($sp)
/* A8288 800F1EC8 0C0026F4 */  jal        func_80009BD0
/* A828C 800F1ECC AFB00010 */   sw        $s0, 0x10($sp)
.Lrace_800F1ED0:
/* A8290 800F1ED0 8E220028 */  lw         $v0, 0x28($s1)
/* A8294 800F1ED4 844400A0 */  lh         $a0, 0xA0($v0)
/* A8298 800F1ED8 8C4200A4 */  lw         $v0, 0xA4($v0)
/* A829C 800F1EDC 0040F809 */  jalr       $v0
/* A82A0 800F1EE0 02242021 */   addu      $a0, $s1, $a0
/* A82A4 800F1EE4 00401821 */  addu       $v1, $v0, $zero
/* A82A8 800F1EE8 24020006 */  addiu      $v0, $zero, 0x6
/* A82AC 800F1EEC 10620042 */  beq        $v1, $v0, .Lrace_800F1FF8
/* A82B0 800F1EF0 24020029 */   addiu     $v0, $zero, 0x29
/* A82B4 800F1EF4 1062001E */  beq        $v1, $v0, .Lrace_800F1F70
/* A82B8 800F1EF8 2C62002A */   sltiu     $v0, $v1, 0x2A
/* A82BC 800F1EFC 10400005 */  beqz       $v0, .Lrace_800F1F14
/* A82C0 800F1F00 24020028 */   addiu     $v0, $zero, 0x28
/* A82C4 800F1F04 10620008 */  beq        $v1, $v0, .Lrace_800F1F28
/* A82C8 800F1F08 00000000 */   nop
/* A82CC 800F1F0C 0803C7F6 */  j          .Lrace_800F1FD8
/* A82D0 800F1F10 00000000 */   nop
.Lrace_800F1F14:
/* A82D4 800F1F14 2402002A */  addiu      $v0, $zero, 0x2A
/* A82D8 800F1F18 10620020 */  beq        $v1, $v0, .Lrace_800F1F9C
/* A82DC 800F1F1C 00000000 */   nop
/* A82E0 800F1F20 0803C7F6 */  j          .Lrace_800F1FD8
/* A82E4 800F1F24 00000000 */   nop
.Lrace_800F1F28:
/* A82E8 800F1F28 0C0025F8 */  jal        func_800097E0
/* A82EC 800F1F2C 02202021 */   addu      $a0, $s1, $zero
/* A82F0 800F1F30 12600005 */  beqz       $s3, .Lrace_800F1F48
/* A82F4 800F1F34 E6400000 */   swc1      $f0, 0x0($s2)
/* A82F8 800F1F38 0C0025F8 */  jal        func_800097E0
/* A82FC 800F1F3C 02202021 */   addu      $a0, $s1, $zero
/* A8300 800F1F40 0803C7D4 */  j          .Lrace_800F1F50
/* A8304 800F1F44 46000007 */   neg.s     $f0, $f0
.Lrace_800F1F48:
/* A8308 800F1F48 0C0025F8 */  jal        func_800097E0
/* A830C 800F1F4C 02202021 */   addu      $a0, $s1, $zero
.Lrace_800F1F50:
/* A8310 800F1F50 E6400004 */  swc1       $f0, 0x4($s2)
/* A8314 800F1F54 0C0025F8 */  jal        func_800097E0
/* A8318 800F1F58 02202021 */   addu      $a0, $s1, $zero
/* A831C 800F1F5C 02202021 */  addu       $a0, $s1, $zero
/* A8320 800F1F60 0C0025F8 */  jal        func_800097E0
/* A8324 800F1F64 E6400008 */   swc1      $f0, 0x8($s2)
/* A8328 800F1F68 0803C7B4 */  j          .Lrace_800F1ED0
/* A832C 800F1F6C E640000C */   swc1      $f0, 0xC($s2)
.Lrace_800F1F70:
/* A8330 800F1F70 00008021 */  addu       $s0, $zero, $zero
.Lrace_800F1F74:
/* A8334 800F1F74 0C002680 */  jal        func_80009A00
/* A8338 800F1F78 02202021 */   addu      $a0, $s1, $zero
/* A833C 800F1F7C 02501821 */  addu       $v1, $s2, $s0
/* A8340 800F1F80 A0620020 */  sb         $v0, 0x20($v1)
/* A8344 800F1F84 26100001 */  addiu      $s0, $s0, 0x1
/* A8348 800F1F88 2E020004 */  sltiu      $v0, $s0, 0x4
/* A834C 800F1F8C 1440FFF9 */  bnez       $v0, .Lrace_800F1F74
/* A8350 800F1F90 00000000 */   nop
/* A8354 800F1F94 0803C7B4 */  j          .Lrace_800F1ED0
/* A8358 800F1F98 00000000 */   nop
.Lrace_800F1F9C:
/* A835C 800F1F9C 0C0025F8 */  jal        func_800097E0
/* A8360 800F1FA0 02202021 */   addu      $a0, $s1, $zero
/* A8364 800F1FA4 12600005 */  beqz       $s3, .Lrace_800F1FBC
/* A8368 800F1FA8 E6400010 */   swc1      $f0, 0x10($s2)
/* A836C 800F1FAC 0C0025F8 */  jal        func_800097E0
/* A8370 800F1FB0 02202021 */   addu      $a0, $s1, $zero
/* A8374 800F1FB4 0803C7F1 */  j          .Lrace_800F1FC4
/* A8378 800F1FB8 46000007 */   neg.s     $f0, $f0
.Lrace_800F1FBC:
/* A837C 800F1FBC 0C0025F8 */  jal        func_800097E0
/* A8380 800F1FC0 02202021 */   addu      $a0, $s1, $zero
.Lrace_800F1FC4:
/* A8384 800F1FC4 E6400014 */  swc1       $f0, 0x14($s2)
/* A8388 800F1FC8 0C0025F8 */  jal        func_800097E0
/* A838C 800F1FCC 02202021 */   addu      $a0, $s1, $zero
/* A8390 800F1FD0 0803C7B4 */  j          .Lrace_800F1ED0
/* A8394 800F1FD4 E6400018 */   swc1      $f0, 0x18($s2)
.Lrace_800F1FD8:
/* A8398 800F1FD8 8E220028 */  lw         $v0, 0x28($s1)
/* A839C 800F1FDC 00002821 */  addu       $a1, $zero, $zero
/* A83A0 800F1FE0 84440098 */  lh         $a0, 0x98($v0)
/* A83A4 800F1FE4 8C42009C */  lw         $v0, 0x9C($v0)
/* A83A8 800F1FE8 0040F809 */  jalr       $v0
/* A83AC 800F1FEC 02242021 */   addu      $a0, $s1, $a0
/* A83B0 800F1FF0 0803C7B4 */  j          .Lrace_800F1ED0
/* A83B4 800F1FF4 00000000 */   nop
.Lrace_800F1FF8:
/* A83B8 800F1FF8 8FBF0020 */  lw         $ra, 0x20($sp)
/* A83BC 800F1FFC 8FB3001C */  lw         $s3, 0x1C($sp)
/* A83C0 800F2000 8FB20018 */  lw         $s2, 0x18($sp)
/* A83C4 800F2004 8FB10014 */  lw         $s1, 0x14($sp)
/* A83C8 800F2008 8FB00010 */  lw         $s0, 0x10($sp)
/* A83CC 800F200C 03E00008 */  jr         $ra
/* A83D0 800F2010 27BD0028 */   addiu     $sp, $sp, 0x28
