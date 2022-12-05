.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text, "ax"

glabel MusIntSchedInit
/* 13190 80012590 3C028004 */  lui        $v0, %hi(D_80038F50)
/* 13194 80012594 03E00008 */  jr         $ra
/* 13198 80012598 AC448F50 */   sw        $a0, %lo(D_80038F50)($v0)

glabel __OsSchedInstall
/* 1319C 8001259C 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 131A0 800125A0 24040058 */  addiu      $a0, $zero, 0x58
/* 131A4 800125A4 AFBF0014 */  sw         $ra, 0x14($sp)
/* 131A8 800125A8 0C004AD7 */  jal        func_80012B5C
/* 131AC 800125AC AFB00010 */   sw        $s0, 0x10($sp)
/* 131B0 800125B0 24440008 */  addiu      $a0, $v0, 0x8
/* 131B4 800125B4 24450020 */  addiu      $a1, $v0, 0x20
/* 131B8 800125B8 24060004 */  addiu      $a2, $zero, 0x4
/* 131BC 800125BC 3C108004 */  lui        $s0, %hi(D_80038F54)
/* 131C0 800125C0 0C007468 */  jal        osCreateMesgQueue
/* 131C4 800125C4 AE028F54 */   sw        $v0, %lo(D_80038F54)($s0)
/* 131C8 800125C8 8E058F54 */  lw         $a1, %lo(D_80038F54)($s0)
/* 131CC 800125CC 24060004 */  addiu      $a2, $zero, 0x4
/* 131D0 800125D0 24A40030 */  addiu      $a0, $a1, 0x30
/* 131D4 800125D4 0C007468 */  jal        osCreateMesgQueue
/* 131D8 800125D8 24A50048 */   addiu     $a1, $a1, 0x48
/* 131DC 800125DC 3C028004 */  lui        $v0, %hi(D_80038F50)
/* 131E0 800125E0 8E058F54 */  lw         $a1, %lo(D_80038F54)($s0)
/* 131E4 800125E4 8C448F50 */  lw         $a0, %lo(D_80038F50)($v0)
/* 131E8 800125E8 0C0079EA */  jal        osScAddClient
/* 131EC 800125EC 24A60008 */   addiu     $a2, $a1, 0x8
/* 131F0 800125F0 8FBF0014 */  lw         $ra, 0x14($sp)
/* 131F4 800125F4 8FB00010 */  lw         $s0, 0x10($sp)
/* 131F8 800125F8 03E00008 */  jr         $ra
/* 131FC 800125FC 27BD0018 */   addiu     $sp, $sp, 0x18

glabel func_80012600
/* 13200 80012600 27BDFFD8 */  addiu      $sp, $sp, -0x28
/* 13204 80012604 AFB00018 */  sw         $s0, 0x18($sp)
/* 13208 80012608 3C108004 */  lui        $s0, %hi(D_80038F54)
/* 1320C 8001260C AFB1001C */  sw         $s1, 0x1C($sp)
/* 13210 80012610 24110001 */  addiu      $s1, $zero, 0x1
/* 13214 80012614 AFBF0020 */  sw         $ra, 0x20($sp)
/* 13218 80012618 27A50010 */  addiu      $a1, $sp, 0x10
.L8001261C:
/* 1321C 8001261C 8E048F54 */  lw         $a0, %lo(D_80038F54)($s0)
/* 13220 80012620 24060001 */  addiu      $a2, $zero, 0x1
/* 13224 80012624 0C007720 */  jal        osRecvMesg
/* 13228 80012628 24840008 */   addiu     $a0, $a0, 0x8
/* 1322C 8001262C 00002821 */  addu       $a1, $zero, $zero
/* 13230 80012630 8E048F54 */  lw         $a0, %lo(D_80038F54)($s0)
/* 13234 80012634 00A03021 */  addu       $a2, $a1, $zero
/* 13238 80012638 0C007720 */  jal        osRecvMesg
/* 1323C 8001263C 24840008 */   addiu     $a0, $a0, 0x8
/* 13240 80012640 8FA20010 */  lw         $v0, 0x10($sp)
/* 13244 80012644 84420000 */  lh         $v0, 0x0($v0)
/* 13248 80012648 1451FFF4 */  bne        $v0, $s1, .L8001261C
/* 1324C 8001264C 27A50010 */   addiu     $a1, $sp, 0x10
/* 13250 80012650 8FBF0020 */  lw         $ra, 0x20($sp)
/* 13254 80012654 8FB1001C */  lw         $s1, 0x1C($sp)
/* 13258 80012658 8FB00018 */  lw         $s0, 0x18($sp)
/* 1325C 8001265C 03E00008 */  jr         $ra
/* 13260 80012660 27BD0028 */   addiu     $sp, $sp, 0x28

glabel func_80012664
/* 13264 80012664 27BDFF60 */  addiu      $sp, $sp, -0xA0
/* 13268 80012668 00802821 */  addu       $a1, $a0, $zero
/* 1326C 8001266C 3C028004 */  lui        $v0, %hi(D_80038F50)
/* 13270 80012670 8C448F50 */  lw         $a0, %lo(D_80038F50)($v0)
/* 13274 80012674 27A20078 */  addiu      $v0, $sp, 0x78
/* 13278 80012678 AFB00098 */  sw         $s0, 0x98($sp)
/* 1327C 8001267C 3C108004 */  lui        $s0, %hi(D_80038F54)
/* 13280 80012680 AFA20064 */  sw         $v0, 0x64($sp)
/* 13284 80012684 8E028F54 */  lw         $v0, %lo(D_80038F54)($s0)
/* 13288 80012688 24030002 */  addiu      $v1, $zero, 0x2
/* 1328C 8001268C AFBF009C */  sw         $ra, 0x9C($sp)
/* 13290 80012690 AFA00010 */  sw         $zero, 0x10($sp)
/* 13294 80012694 AFA30018 */  sw         $v1, 0x18($sp)
/* 13298 80012698 24420030 */  addiu      $v0, $v0, 0x30
/* 1329C 8001269C AFA20060 */  sw         $v0, 0x60($sp)
/* 132A0 800126A0 8CA20000 */  lw         $v0, 0x0($a1)
/* 132A4 800126A4 AFA20050 */  sw         $v0, 0x50($sp)
/* 132A8 800126A8 8CA60004 */  lw         $a2, 0x4($a1)
/* 132AC 800126AC AFA30020 */  sw         $v1, 0x20($sp)
/* 132B0 800126B0 3C038001 */  lui        $v1, %hi(D_8000C410)
/* 132B4 800126B4 2463C410 */  addiu      $v1, $v1, %lo(D_8000C410)
/* 132B8 800126B8 3C028001 */  lui        $v0, %hi(D_8000C4E0)
/* 132BC 800126BC 2442C4E0 */  addiu      $v0, $v0, %lo(D_8000C4E0)
/* 132C0 800126C0 00431023 */  subu       $v0, $v0, $v1
/* 132C4 800126C4 AFA30028 */  sw         $v1, 0x28($sp)
/* 132C8 800126C8 AFA2002C */  sw         $v0, 0x2C($sp)
/* 132CC 800126CC AFA00024 */  sw         $zero, 0x24($sp)
/* 132D0 800126D0 AFA60054 */  sw         $a2, 0x54($sp)
/* 132D4 800126D4 8CA20008 */  lw         $v0, 0x8($a1)
/* 132D8 800126D8 AFA20030 */  sw         $v0, 0x30($sp)
/* 132DC 800126DC 8CA3000C */  lw         $v1, 0xC($a1)
/* 132E0 800126E0 24021000 */  addiu      $v0, $zero, 0x1000
/* 132E4 800126E4 AFA20034 */  sw         $v0, 0x34($sp)
/* 132E8 800126E8 24020800 */  addiu      $v0, $zero, 0x800
/* 132EC 800126EC AFA2003C */  sw         $v0, 0x3C($sp)
/* 132F0 800126F0 AFA00040 */  sw         $zero, 0x40($sp)
/* 132F4 800126F4 AFA00044 */  sw         $zero, 0x44($sp)
/* 132F8 800126F8 AFA00048 */  sw         $zero, 0x48($sp)
/* 132FC 800126FC AFA0004C */  sw         $zero, 0x4C($sp)
/* 13300 80012700 AFA00058 */  sw         $zero, 0x58($sp)
/* 13304 80012704 AFA0005C */  sw         $zero, 0x5C($sp)
/* 13308 80012708 0C007A24 */  jal        osScGetCmdQ
/* 1330C 8001270C AFA30038 */   sw        $v1, 0x38($sp)
/* 13310 80012710 00402021 */  addu       $a0, $v0, $zero
/* 13314 80012714 27A50010 */  addiu      $a1, $sp, 0x10
/* 13318 80012718 0C00776C */  jal        osSendMesg
/* 1331C 8001271C 24060001 */   addiu     $a2, $zero, 0x1
/* 13320 80012720 00002821 */  addu       $a1, $zero, $zero
/* 13324 80012724 8E048F54 */  lw         $a0, %lo(D_80038F54)($s0)
/* 13328 80012728 24060001 */  addiu      $a2, $zero, 0x1
/* 1332C 8001272C 0C007720 */  jal        osRecvMesg
/* 13330 80012730 24840030 */   addiu     $a0, $a0, 0x30
/* 13334 80012734 8FBF009C */  lw         $ra, 0x9C($sp)
/* 13338 80012738 8FB00098 */  lw         $s0, 0x98($sp)
/* 1333C 8001273C 03E00008 */  jr         $ra
/* 13340 80012740 27BD00A0 */   addiu     $sp, $sp, 0xA0
