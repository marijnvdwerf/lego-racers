.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text, "ax"

glabel osCreateViManager
/* 20AD0 8001FED0 27BDFFD0 */  addiu      $sp, $sp, -0x30
/* 20AD4 8001FED4 AFB40028 */  sw         $s4, 0x28($sp)
/* 20AD8 8001FED8 3C148003 */  lui        $s4, %hi(D_80031140)
/* 20ADC 8001FEDC 26941140 */  addiu      $s4, $s4, %lo(D_80031140)
/* 20AE0 8001FEE0 AFBF002C */  sw         $ra, 0x2C($sp)
/* 20AE4 8001FEE4 AFB30024 */  sw         $s3, 0x24($sp)
/* 20AE8 8001FEE8 AFB20020 */  sw         $s2, 0x20($sp)
/* 20AEC 8001FEEC AFB1001C */  sw         $s1, 0x1C($sp)
/* 20AF0 8001FEF0 AFB00018 */  sw         $s0, 0x18($sp)
/* 20AF4 8001FEF4 8E820000 */  lw         $v0, 0x0($s4)
/* 20AF8 8001FEF8 14400055 */  bnez       $v0, .L80020050
/* 20AFC 8001FEFC 00808821 */   addu      $s1, $a0, $zero
/* 20B00 8001FF00 0C007E48 */  jal        func_8001F920
/* 20B04 8001FF04 2412FFFF */   addiu     $s2, $zero, -0x1
/* 20B08 8001FF08 3C138004 */  lui        $s3, %hi(D_8003BA30)
/* 20B0C 8001FF0C 2673BA30 */  addiu      $s3, $s3, %lo(D_8003BA30)
/* 20B10 8001FF10 02602021 */  addu       $a0, $s3, $zero
/* 20B14 8001FF14 3C058004 */  lui        $a1, %hi(D_8003BA48)
/* 20B18 8001FF18 24A5BA48 */  addiu      $a1, $a1, %lo(D_8003BA48)
/* 20B1C 8001FF1C 3C018003 */  lui        $at, %hi(D_8003115C)
/* 20B20 8001FF20 AC20115C */  sw         $zero, %lo(D_8003115C)($at)
/* 20B24 8001FF24 0C007468 */  jal        osCreateMesgQueue
/* 20B28 8001FF28 24060005 */   addiu     $a2, $zero, 0x5
/* 20B2C 8001FF2C 24040007 */  addiu      $a0, $zero, 0x7
/* 20B30 8001FF30 3C068004 */  lui        $a2, %hi(D_8003BA60)
/* 20B34 8001FF34 24C6BA60 */  addiu      $a2, $a2, %lo(D_8003BA60)
/* 20B38 8001FF38 2402000D */  addiu      $v0, $zero, 0xD
/* 20B3C 8001FF3C 3C108004 */  lui        $s0, %hi(D_8003BA78)
/* 20B40 8001FF40 2610BA78 */  addiu      $s0, $s0, %lo(D_8003BA78)
/* 20B44 8001FF44 A4C20000 */  sh         $v0, 0x0($a2)
/* 20B48 8001FF48 2402000E */  addiu      $v0, $zero, 0xE
/* 20B4C 8001FF4C 3C018004 */  lui        $at, %hi(D_8003BA62)
/* 20B50 8001FF50 A020BA62 */  sb         $zero, %lo(D_8003BA62)($at)
/* 20B54 8001FF54 3C018004 */  lui        $at, %hi(D_8003BA64)
/* 20B58 8001FF58 AC20BA64 */  sw         $zero, %lo(D_8003BA64)($at)
/* 20B5C 8001FF5C A6020000 */  sh         $v0, 0x0($s0)
/* 20B60 8001FF60 3C018004 */  lui        $at, %hi(D_8003BA7A)
/* 20B64 8001FF64 A020BA7A */  sb         $zero, %lo(D_8003BA7A)($at)
/* 20B68 8001FF68 3C018004 */  lui        $at, %hi(D_8003BA7C)
/* 20B6C 8001FF6C AC20BA7C */  sw         $zero, %lo(D_8003BA7C)($at)
/* 20B70 8001FF70 0C0077B8 */  jal        osSetEventMesg
/* 20B74 8001FF74 02602821 */   addu      $a1, $s3, $zero
/* 20B78 8001FF78 24040003 */  addiu      $a0, $zero, 0x3
/* 20B7C 8001FF7C 02602821 */  addu       $a1, $s3, $zero
/* 20B80 8001FF80 0C0077B8 */  jal        osSetEventMesg
/* 20B84 8001FF84 02003021 */   addu      $a2, $s0, $zero
/* 20B88 8001FF88 0C007D20 */  jal        func_8001F480
/* 20B8C 8001FF8C 00002021 */   addu      $a0, $zero, $zero
/* 20B90 8001FF90 00401821 */  addu       $v1, $v0, $zero
/* 20B94 8001FF94 0071102A */  slt        $v0, $v1, $s1
/* 20B98 8001FF98 10400005 */  beqz       $v0, .L8001FFB0
/* 20B9C 8001FF9C 00000000 */   nop
/* 20BA0 8001FFA0 00609021 */  addu       $s2, $v1, $zero
/* 20BA4 8001FFA4 00002021 */  addu       $a0, $zero, $zero
/* 20BA8 8001FFA8 0C007D28 */  jal        osSetThreadPri
/* 20BAC 8001FFAC 02202821 */   addu      $a1, $s1, $zero
.L8001FFB0:
/* 20BB0 8001FFB0 0C005734 */  jal        func_80015CD0
/* 20BB4 8001FFB4 00000000 */   nop
/* 20BB8 8001FFB8 3C108004 */  lui        $s0, %hi(D_8003A878)
/* 20BBC 8001FFBC 2610A878 */  addiu      $s0, $s0, %lo(D_8003A878)
/* 20BC0 8001FFC0 02002021 */  addu       $a0, $s0, $zero
/* 20BC4 8001FFC4 00002821 */  addu       $a1, $zero, $zero
/* 20BC8 8001FFC8 3C068002 */  lui        $a2, %hi(func_80020070)
/* 20BCC 8001FFCC 24C60070 */  addiu      $a2, $a2, %lo(func_80020070)
/* 20BD0 8001FFD0 24030001 */  addiu      $v1, $zero, 0x1
/* 20BD4 8001FFD4 AE830000 */  sw         $v1, 0x0($s4)
/* 20BD8 8001FFD8 3C038004 */  lui        $v1, %hi(D_8003BA30)
/* 20BDC 8001FFDC 2463BA30 */  addiu      $v1, $v1, %lo(D_8003BA30)
/* 20BE0 8001FFE0 AFB10014 */  sw         $s1, 0x14($sp)
/* 20BE4 8001FFE4 00408821 */  addu       $s1, $v0, $zero
/* 20BE8 8001FFE8 02803821 */  addu       $a3, $s4, $zero
/* 20BEC 8001FFEC 3C018003 */  lui        $at, %hi(D_80031144)
/* 20BF0 8001FFF0 AC301144 */  sw         $s0, %lo(D_80031144)($at)
/* 20BF4 8001FFF4 3C018003 */  lui        $at, %hi(D_80031148)
/* 20BF8 8001FFF8 AC331148 */  sw         $s3, %lo(D_80031148)($at)
/* 20BFC 8001FFFC 3C018003 */  lui        $at, %hi(D_8003114C)
/* 20C00 80020000 AC33114C */  sw         $s3, %lo(D_8003114C)($at)
/* 20C04 80020004 3C018003 */  lui        $at, %hi(D_80031150)
/* 20C08 80020008 AC201150 */  sw         $zero, %lo(D_80031150)($at)
/* 20C0C 8002000C 3C018003 */  lui        $at, %hi(D_80031154)
/* 20C10 80020010 AC201154 */  sw         $zero, %lo(D_80031154)($at)
/* 20C14 80020014 3C018003 */  lui        $at, %hi(D_80031158)
/* 20C18 80020018 AC201158 */  sw         $zero, %lo(D_80031158)($at)
/* 20C1C 8002001C 0C007CB4 */  jal        osCreateThread
/* 20C20 80020020 AFA30010 */   sw        $v1, 0x10($sp)
/* 20C24 80020024 0C007F60 */  jal        func_8001FD80
/* 20C28 80020028 00000000 */   nop
/* 20C2C 8002002C 0C007D5C */  jal        osStartThread
/* 20C30 80020030 02002021 */   addu      $a0, $s0, $zero
/* 20C34 80020034 0C005750 */  jal        func_80015D40
/* 20C38 80020038 02202021 */   addu      $a0, $s1, $zero
/* 20C3C 8002003C 2402FFFF */  addiu      $v0, $zero, -0x1
/* 20C40 80020040 12420003 */  beq        $s2, $v0, .L80020050
/* 20C44 80020044 00002021 */   addu      $a0, $zero, $zero
/* 20C48 80020048 0C007D28 */  jal        osSetThreadPri
/* 20C4C 8002004C 02402821 */   addu      $a1, $s2, $zero
.L80020050:
/* 20C50 80020050 8FBF002C */  lw         $ra, 0x2C($sp)
/* 20C54 80020054 8FB40028 */  lw         $s4, 0x28($sp)
/* 20C58 80020058 8FB30024 */  lw         $s3, 0x24($sp)
/* 20C5C 8002005C 8FB20020 */  lw         $s2, 0x20($sp)
/* 20C60 80020060 8FB1001C */  lw         $s1, 0x1C($sp)
/* 20C64 80020064 8FB00018 */  lw         $s0, 0x18($sp)
/* 20C68 80020068 03E00008 */  jr         $ra
/* 20C6C 8002006C 27BD0030 */   addiu     $sp, $sp, 0x30

glabel func_80020070
/* 20C70 80020070 27BDFFD0 */  addiu      $sp, $sp, -0x30
/* 20C74 80020074 AFB00018 */  sw         $s0, 0x18($sp)
/* 20C78 80020078 00808021 */  addu       $s0, $a0, $zero
/* 20C7C 8002007C AFBF002C */  sw         $ra, 0x2C($sp)
/* 20C80 80020080 AFB40028 */  sw         $s4, 0x28($sp)
/* 20C84 80020084 AFB30024 */  sw         $s3, 0x24($sp)
/* 20C88 80020088 AFB20020 */  sw         $s2, 0x20($sp)
/* 20C8C 8002008C AFB1001C */  sw         $s1, 0x1C($sp)
/* 20C90 80020090 0C008084 */  jal        func_80020210
/* 20C94 80020094 AFA00010 */   sw        $zero, 0x10($sp)
/* 20C98 80020098 94420002 */  lhu        $v0, 0x2($v0)
/* 20C9C 8002009C 3C018004 */  lui        $at, %hi(D_8003A870)
/* 20CA0 800200A0 A422A870 */  sh         $v0, %lo(D_8003A870)($at)
/* 20CA4 800200A4 14400004 */  bnez       $v0, .L800200B8
/* 20CA8 800200A8 00008821 */   addu      $s1, $zero, $zero
/* 20CAC 800200AC 24020001 */  addiu      $v0, $zero, 0x1
/* 20CB0 800200B0 3C018004 */  lui        $at, %hi(D_8003A870)
/* 20CB4 800200B4 A422A870 */  sh         $v0, %lo(D_8003A870)($at)
.L800200B8:
/* 20CB8 800200B8 02009021 */  addu       $s2, $s0, $zero
/* 20CBC 800200BC 2414000D */  addiu      $s4, $zero, 0xD
/* 20CC0 800200C0 2413000E */  addiu      $s3, $zero, 0xE
.L800200C4:
/* 20CC4 800200C4 8E44000C */  lw         $a0, 0xC($s2)
/* 20CC8 800200C8 27A50010 */  addiu      $a1, $sp, 0x10
/* 20CCC 800200CC 0C007720 */  jal        osRecvMesg
/* 20CD0 800200D0 24060001 */   addiu     $a2, $zero, 0x1
/* 20CD4 800200D4 8FA20010 */  lw         $v0, 0x10($sp)
/* 20CD8 800200D8 94420000 */  lhu        $v0, 0x0($v0)
/* 20CDC 800200DC 10540005 */  beq        $v0, $s4, .L800200F4
/* 20CE0 800200E0 00000000 */   nop
/* 20CE4 800200E4 1053003C */  beq        $v0, $s3, .L800201D8
/* 20CE8 800200E8 00000000 */   nop
/* 20CEC 800200EC 08008031 */  j          .L800200C4
/* 20CF0 800200F0 00000000 */   nop
.L800200F4:
/* 20CF4 800200F4 0C008124 */  jal        func_80020490
/* 20CF8 800200F8 00000000 */   nop
/* 20CFC 800200FC 3C028004 */  lui        $v0, %hi(D_8003A870)
/* 20D00 80020100 9442A870 */  lhu        $v0, %lo(D_8003A870)($v0)
/* 20D04 80020104 2442FFFF */  addiu      $v0, $v0, -0x1
/* 20D08 80020108 3C018004 */  lui        $at, %hi(D_8003A870)
/* 20D0C 8002010C A422A870 */  sh         $v0, %lo(D_8003A870)($at)
/* 20D10 80020110 3042FFFF */  andi       $v0, $v0, 0xFFFF
/* 20D14 80020114 1440000C */  bnez       $v0, .L80020148
/* 20D18 80020118 00000000 */   nop
/* 20D1C 8002011C 0C008084 */  jal        func_80020210
/* 20D20 80020120 00000000 */   nop
/* 20D24 80020124 8C440010 */  lw         $a0, 0x10($v0)
/* 20D28 80020128 10800004 */  beqz       $a0, .L8002013C
/* 20D2C 8002012C 00408021 */   addu      $s0, $v0, $zero
/* 20D30 80020130 8E050014 */  lw         $a1, 0x14($s0)
/* 20D34 80020134 0C00776C */  jal        osSendMesg
/* 20D38 80020138 00003021 */   addu      $a2, $zero, $zero
.L8002013C:
/* 20D3C 8002013C 96020002 */  lhu        $v0, 0x2($s0)
/* 20D40 80020140 3C018004 */  lui        $at, %hi(D_8003A870)
/* 20D44 80020144 A422A870 */  sh         $v0, %lo(D_8003A870)($at)
.L80020148:
/* 20D48 80020148 3C028004 */  lui        $v0, %hi(D_8003A834)
/* 20D4C 8002014C 8C42A834 */  lw         $v0, %lo(D_8003A834)($v0)
/* 20D50 80020150 24420001 */  addiu      $v0, $v0, 0x1
/* 20D54 80020154 3C018004 */  lui        $at, %hi(D_8003A834)
/* 20D58 80020158 1220000A */  beqz       $s1, .L80020184
/* 20D5C 8002015C AC22A834 */   sw        $v0, %lo(D_8003A834)($at)
/* 20D60 80020160 0C007E1C */  jal        func_8001F870
/* 20D64 80020164 00008821 */   addu      $s1, $zero, $zero
/* 20D68 80020168 00408021 */  addu       $s0, $v0, $zero
/* 20D6C 8002016C 02001821 */  addu       $v1, $s0, $zero
/* 20D70 80020170 00001021 */  addu       $v0, $zero, $zero
/* 20D74 80020174 3C018004 */  lui        $at, %hi(D_8003A838)
/* 20D78 80020178 AC22A838 */  sw         $v0, %lo(D_8003A838)($at)
/* 20D7C 8002017C 3C018004 */  lui        $at, %hi(D_8003A83C)
/* 20D80 80020180 AC23A83C */  sw         $v1, %lo(D_8003A83C)($at)
.L80020184:
/* 20D84 80020184 3C108004 */  lui        $s0, %hi(D_8003A830)
/* 20D88 80020188 0C007E1C */  jal        func_8001F870
/* 20D8C 8002018C 8E10A830 */   lw        $s0, %lo(D_8003A830)($s0)
/* 20D90 80020190 3C018004 */  lui        $at, %hi(D_8003A830)
/* 20D94 80020194 AC22A830 */  sw         $v0, %lo(D_8003A830)($at)
/* 20D98 80020198 00508023 */  subu       $s0, $v0, $s0
/* 20D9C 8002019C 3C028004 */  lui        $v0, %hi(D_8003A838)
/* 20DA0 800201A0 8C42A838 */  lw         $v0, %lo(D_8003A838)($v0)
/* 20DA4 800201A4 3C038004 */  lui        $v1, %hi(D_8003A83C)
/* 20DA8 800201A8 8C63A83C */  lw         $v1, %lo(D_8003A83C)($v1)
/* 20DAC 800201AC 02002821 */  addu       $a1, $s0, $zero
/* 20DB0 800201B0 00002021 */  addu       $a0, $zero, $zero
/* 20DB4 800201B4 00651821 */  addu       $v1, $v1, $a1
/* 20DB8 800201B8 0065302B */  sltu       $a2, $v1, $a1
/* 20DBC 800201BC 00441021 */  addu       $v0, $v0, $a0
/* 20DC0 800201C0 00461021 */  addu       $v0, $v0, $a2
/* 20DC4 800201C4 3C018004 */  lui        $at, %hi(D_8003A838)
/* 20DC8 800201C8 AC22A838 */  sw         $v0, %lo(D_8003A838)($at)
/* 20DCC 800201CC 3C018004 */  lui        $at, %hi(D_8003A83C)
/* 20DD0 800201D0 08008031 */  j          .L800200C4
/* 20DD4 800201D4 AC23A83C */   sw        $v1, %lo(D_8003A83C)($at)
.L800201D8:
/* 20DD8 800201D8 0C007E5D */  jal        func_8001F974
/* 20DDC 800201DC 00000000 */   nop
/* 20DE0 800201E0 08008031 */  j          .L800200C4
/* 20DE4 800201E4 00000000 */   nop

glabel func_800201E8
/* 20DE8 800201E8 8FBF002C */  lw         $ra, 0x2C($sp)
/* 20DEC 800201EC 8FB40028 */  lw         $s4, 0x28($sp)
/* 20DF0 800201F0 8FB30024 */  lw         $s3, 0x24($sp)
/* 20DF4 800201F4 8FB20020 */  lw         $s2, 0x20($sp)
/* 20DF8 800201F8 8FB1001C */  lw         $s1, 0x1C($sp)
/* 20DFC 800201FC 8FB00018 */  lw         $s0, 0x18($sp)
/* 20E00 80020200 03E00008 */  jr         $ra
/* 20E04 80020204 27BD0030 */   addiu     $sp, $sp, 0x30
/* 20E08 80020208 00000000 */  nop
/* 20E0C 8002020C 00000000 */  nop
