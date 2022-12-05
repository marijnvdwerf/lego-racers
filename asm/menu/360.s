.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text, "ax"

glabel func_menu_800F4740
/* 112830 800F4740 27BDFFD8 */  addiu      $sp, $sp, -0x28
/* 112834 800F4744 AFB20018 */  sw         $s2, 0x18($sp)
/* 112838 800F4748 00809021 */  addu       $s2, $a0, $zero
/* 11283C 800F474C AFBF0020 */  sw         $ra, 0x20($sp)
/* 112840 800F4750 AFB3001C */  sw         $s3, 0x1C($sp)
/* 112844 800F4754 AFB10014 */  sw         $s1, 0x14($sp)
/* 112848 800F4758 0C03CDD8 */  jal        func_menu_800F3760
/* 11284C 800F475C AFB00010 */   sw        $s0, 0x10($sp)
/* 112850 800F4760 0C03CDD8 */  jal        func_menu_800F3760
/* 112854 800F4764 264404A8 */   addiu     $a0, $s2, 0x4A8
/* 112858 800F4768 0C049710 */  jal        func_menu_80125C40
/* 11285C 800F476C 26440950 */   addiu     $a0, $s2, 0x950
/* 112860 800F4770 3C02800D */  lui        $v0, %hi(D_menu_800CC0A0)
/* 112864 800F4774 2442C0A0 */  addiu      $v0, $v0, %lo(D_menu_800CC0A0)
/* 112868 800F4778 26510B44 */  addiu      $s1, $s2, 0xB44
/* 11286C 800F477C 24100003 */  addiu      $s0, $zero, 0x3
/* 112870 800F4780 2413FFFF */  addiu      $s3, $zero, -0x1
/* 112874 800F4784 AE420950 */  sw         $v0, 0x950($s2)
.Lmenu_800F4788:
/* 112878 800F4788 0C03D440 */  jal        func_menu_800F5100
/* 11287C 800F478C 02202021 */   addu      $a0, $s1, $zero
/* 112880 800F4790 2610FFFF */  addiu      $s0, $s0, -0x1
/* 112884 800F4794 1613FFFC */  bne        $s0, $s3, .Lmenu_800F4788
/* 112888 800F4798 263104E4 */   addiu     $s1, $s1, 0x4E4
/* 11288C 800F479C 0C03CDD8 */  jal        func_menu_800F3760
/* 112890 800F47A0 26441ED4 */   addiu     $a0, $s2, 0x1ED4
/* 112894 800F47A4 0C03C83C */  jal        func_menu_800F20F0
/* 112898 800F47A8 26442380 */   addiu     $a0, $s2, 0x2380
/* 11289C 800F47AC 0C03BB84 */  jal        func_menu_800EEE10
/* 1128A0 800F47B0 264427B8 */   addiu     $a0, $s2, 0x27B8
/* 1128A4 800F47B4 0C03D22A */  jal        func_menu_800F48A8
/* 1128A8 800F47B8 02402021 */   addu      $a0, $s2, $zero
/* 1128AC 800F47BC 02401021 */  addu       $v0, $s2, $zero
/* 1128B0 800F47C0 8FBF0020 */  lw         $ra, 0x20($sp)
/* 1128B4 800F47C4 8FB3001C */  lw         $s3, 0x1C($sp)
/* 1128B8 800F47C8 8FB20018 */  lw         $s2, 0x18($sp)
/* 1128BC 800F47CC 8FB10014 */  lw         $s1, 0x14($sp)
/* 1128C0 800F47D0 8FB00010 */  lw         $s0, 0x10($sp)
/* 1128C4 800F47D4 03E00008 */  jr         $ra
/* 1128C8 800F47D8 27BD0028 */   addiu     $sp, $sp, 0x28

glabel func_menu_800F47DC
/* 1128CC 800F47DC 27BDFFD8 */  addiu      $sp, $sp, -0x28
/* 1128D0 800F47E0 AFB20018 */  sw         $s2, 0x18($sp)
/* 1128D4 800F47E4 00809021 */  addu       $s2, $a0, $zero
/* 1128D8 800F47E8 AFB3001C */  sw         $s3, 0x1C($sp)
/* 1128DC 800F47EC 00A09821 */  addu       $s3, $a1, $zero
/* 1128E0 800F47F0 AFBF0020 */  sw         $ra, 0x20($sp)
/* 1128E4 800F47F4 AFB10014 */  sw         $s1, 0x14($sp)
/* 1128E8 800F47F8 0C03D3C0 */  jal        func_menu_800F4F00
/* 1128EC 800F47FC AFB00010 */   sw        $s0, 0x10($sp)
/* 1128F0 800F4800 264427B8 */  addiu      $a0, $s2, 0x27B8
/* 1128F4 800F4804 0C03BB8F */  jal        func_menu_800EEE3C
/* 1128F8 800F4808 24050002 */   addiu     $a1, $zero, 0x2
/* 1128FC 800F480C 26442380 */  addiu      $a0, $s2, 0x2380
/* 112900 800F4810 0C03C846 */  jal        func_menu_800F2118
/* 112904 800F4814 24050002 */   addiu     $a1, $zero, 0x2
/* 112908 800F4818 26501ED4 */  addiu      $s0, $s2, 0x1ED4
/* 11290C 800F481C 02002021 */  addu       $a0, $s0, $zero
/* 112910 800F4820 0C03CDE7 */  jal        func_menu_800F379C
/* 112914 800F4824 24050002 */   addiu     $a1, $zero, 0x2
/* 112918 800F4828 26420B44 */  addiu      $v0, $s2, 0xB44
/* 11291C 800F482C 1040000A */  beqz       $v0, .Lmenu_800F4858
/* 112920 800F4830 26440950 */   addiu     $a0, $s2, 0x950
/* 112924 800F4834 10500008 */  beq        $v0, $s0, .Lmenu_800F4858
/* 112928 800F4838 00408821 */   addu      $s1, $v0, $zero
/* 11292C 800F483C 2610FB1C */  addiu      $s0, $s0, -0x4E4
.Lmenu_800F4840:
/* 112930 800F4840 02002021 */  addu       $a0, $s0, $zero
/* 112934 800F4844 0C03D453 */  jal        func_menu_800F514C
/* 112938 800F4848 24050002 */   addiu     $a1, $zero, 0x2
/* 11293C 800F484C 1630FFFC */  bne        $s1, $s0, .Lmenu_800F4840
/* 112940 800F4850 2610FB1C */   addiu     $s0, $s0, -0x4E4
/* 112944 800F4854 26440950 */  addiu      $a0, $s2, 0x950
.Lmenu_800F4858:
/* 112948 800F4858 0C049733 */  jal        func_menu_80125CCC
/* 11294C 800F485C 24050002 */   addiu     $a1, $zero, 0x2
/* 112950 800F4860 264404A8 */  addiu      $a0, $s2, 0x4A8
/* 112954 800F4864 0C03CDE7 */  jal        func_menu_800F379C
/* 112958 800F4868 24050002 */   addiu     $a1, $zero, 0x2
/* 11295C 800F486C 02402021 */  addu       $a0, $s2, $zero
/* 112960 800F4870 0C03CDE7 */  jal        func_menu_800F379C
/* 112964 800F4874 24050002 */   addiu     $a1, $zero, 0x2
/* 112968 800F4878 32620001 */  andi       $v0, $s3, 0x1
/* 11296C 800F487C 10400003 */  beqz       $v0, .Lmenu_800F488C
/* 112970 800F4880 00000000 */   nop
/* 112974 800F4884 0C01FB5C */  jal        func_8007ED70
/* 112978 800F4888 02402021 */   addu      $a0, $s2, $zero
.Lmenu_800F488C:
/* 11297C 800F488C 8FBF0020 */  lw         $ra, 0x20($sp)
/* 112980 800F4890 8FB3001C */  lw         $s3, 0x1C($sp)
/* 112984 800F4894 8FB20018 */  lw         $s2, 0x18($sp)
/* 112988 800F4898 8FB10014 */  lw         $s1, 0x14($sp)
/* 11298C 800F489C 8FB00010 */  lw         $s0, 0x10($sp)
/* 112990 800F48A0 03E00008 */  jr         $ra
/* 112994 800F48A4 27BD0028 */   addiu     $sp, $sp, 0x28

glabel func_menu_800F48A8
/* 112998 800F48A8 03E00008 */  jr         $ra
/* 11299C 800F48AC AC80237C */   sw        $zero, 0x237C($a0)

glabel func_menu_800F48B0
/* 1129A0 800F48B0 27BDFFD0 */  addiu      $sp, $sp, -0x30
/* 1129A4 800F48B4 AFB00018 */  sw         $s0, 0x18($sp)
/* 1129A8 800F48B8 00808021 */  addu       $s0, $a0, $zero
/* 1129AC 800F48BC AFB1001C */  sw         $s1, 0x1C($sp)
/* 1129B0 800F48C0 00A08821 */  addu       $s1, $a1, $zero
/* 1129B4 800F48C4 AFB30024 */  sw         $s3, 0x24($sp)
/* 1129B8 800F48C8 00C09821 */  addu       $s3, $a2, $zero
/* 1129BC 800F48CC AFB20020 */  sw         $s2, 0x20($sp)
/* 1129C0 800F48D0 26122380 */  addiu      $s2, $s0, 0x2380
/* 1129C4 800F48D4 AFBF0028 */  sw         $ra, 0x28($sp)
/* 1129C8 800F48D8 0C03C87C */  jal        func_menu_800F21F0
/* 1129CC 800F48DC 02402021 */   addu      $a0, $s2, $zero
/* 1129D0 800F48E0 26040950 */  addiu      $a0, $s0, 0x950
/* 1129D4 800F48E4 02202821 */  addu       $a1, $s1, $zero
/* 1129D8 800F48E8 24063551 */  addiu      $a2, $zero, 0x3551
/* 1129DC 800F48EC 3C074E4C */  lui        $a3, (0x4E4C4750 >> 16)
/* 1129E0 800F48F0 0C049759 */  jal        func_menu_80125D64
/* 1129E4 800F48F4 34E74750 */   ori       $a3, $a3, (0x4E4C4750 & 0xFFFF)
/* 1129E8 800F48F8 02002021 */  addu       $a0, $s0, $zero
/* 1129EC 800F48FC 24050005 */  addiu      $a1, $zero, 0x5
/* 1129F0 800F4900 24060001 */  addiu      $a2, $zero, 0x1
/* 1129F4 800F4904 0C03CDF6 */  jal        func_menu_800F37D8
/* 1129F8 800F4908 00003821 */   addu      $a3, $zero, $zero
/* 1129FC 800F490C 02402021 */  addu       $a0, $s2, $zero
/* 112A00 800F4910 0C03C9E5 */  jal        func_menu_800F2794
/* 112A04 800F4914 02002821 */   addu      $a1, $s0, $zero
/* 112A08 800F4918 02002021 */  addu       $a0, $s0, $zero
/* 112A0C 800F491C 0C03D2E5 */  jal        func_menu_800F4B94
/* 112A10 800F4920 02602821 */   addu      $a1, $s3, $zero
/* 112A14 800F4924 261104A8 */  addiu      $s1, $s0, 0x4A8
/* 112A18 800F4928 02202021 */  addu       $a0, $s1, $zero
/* 112A1C 800F492C 24050004 */  addiu      $a1, $zero, 0x4
/* 112A20 800F4930 24060003 */  addiu      $a2, $zero, 0x3
/* 112A24 800F4934 00003821 */  addu       $a3, $zero, $zero
/* 112A28 800F4938 0C03CDF6 */  jal        func_menu_800F37D8
/* 112A2C 800F493C 00409021 */   addu      $s2, $v0, $zero
/* 112A30 800F4940 02002021 */  addu       $a0, $s0, $zero
/* 112A34 800F4944 3C028012 */  lui        $v0, %hi(D_menu_80126C70)
/* 112A38 800F4948 8C456C70 */  lw         $a1, %lo(D_menu_80126C70)($v0)
/* 112A3C 800F494C 0C03D384 */  jal        func_menu_800F4E10
/* 112A40 800F4950 02203021 */   addu      $a2, $s1, $zero
/* 112A44 800F4954 26111ED4 */  addiu      $s1, $s0, 0x1ED4
/* 112A48 800F4958 02202021 */  addu       $a0, $s1, $zero
/* 112A4C 800F495C 24050024 */  addiu      $a1, $zero, 0x24
/* 112A50 800F4960 24060003 */  addiu      $a2, $zero, 0x3
/* 112A54 800F4964 0C03CDF6 */  jal        func_menu_800F37D8
/* 112A58 800F4968 00003821 */   addu      $a3, $zero, $zero
/* 112A5C 800F496C 02002021 */  addu       $a0, $s0, $zero
/* 112A60 800F4970 3C028012 */  lui        $v0, %hi(D_menu_80126C74)
/* 112A64 800F4974 8C456C74 */  lw         $a1, %lo(D_menu_80126C74)($v0)
/* 112A68 800F4978 0C03D384 */  jal        func_menu_800F4E10
/* 112A6C 800F497C 02203021 */   addu      $a2, $s1, $zero
/* 112A70 800F4980 260427B8 */  addiu      $a0, $s0, 0x27B8
/* 112A74 800F4984 24050004 */  addiu      $a1, $zero, 0x4
/* 112A78 800F4988 00003021 */  addu       $a2, $zero, $zero
/* 112A7C 800F498C 00C03821 */  addu       $a3, $a2, $zero
/* 112A80 800F4990 0C03BBB0 */  jal        func_menu_800EEEC0
/* 112A84 800F4994 AFA00010 */   sw        $zero, 0x10($sp)
/* 112A88 800F4998 02401021 */  addu       $v0, $s2, $zero
/* 112A8C 800F499C 8FBF0028 */  lw         $ra, 0x28($sp)
/* 112A90 800F49A0 8FB30024 */  lw         $s3, 0x24($sp)
/* 112A94 800F49A4 8FB20020 */  lw         $s2, 0x20($sp)
/* 112A98 800F49A8 8FB1001C */  lw         $s1, 0x1C($sp)
/* 112A9C 800F49AC 8FB00018 */  lw         $s0, 0x18($sp)
/* 112AA0 800F49B0 03E00008 */  jr         $ra
/* 112AA4 800F49B4 27BD0030 */   addiu     $sp, $sp, 0x30

glabel func_menu_800F49B8
/* 112AA8 800F49B8 27BDFFD0 */  addiu      $sp, $sp, -0x30
/* 112AAC 800F49BC AFB3001C */  sw         $s3, 0x1C($sp)
/* 112AB0 800F49C0 00809821 */  addu       $s3, $a0, $zero
/* 112AB4 800F49C4 AFB20018 */  sw         $s2, 0x18($sp)
/* 112AB8 800F49C8 00A09021 */  addu       $s2, $a1, $zero
/* 112ABC 800F49CC AFB40020 */  sw         $s4, 0x20($sp)
/* 112AC0 800F49D0 00C0A021 */  addu       $s4, $a2, $zero
/* 112AC4 800F49D4 AFB50024 */  sw         $s5, 0x24($sp)
/* 112AC8 800F49D8 00E0A821 */  addu       $s5, $a3, $zero
/* 112ACC 800F49DC 00121080 */  sll        $v0, $s2, 2
/* 112AD0 800F49E0 00521021 */  addu       $v0, $v0, $s2
/* 112AD4 800F49E4 000210C0 */  sll        $v0, $v0, 3
/* 112AD8 800F49E8 00521023 */  subu       $v0, $v0, $s2
/* 112ADC 800F49EC 000210C0 */  sll        $v0, $v0, 3
/* 112AE0 800F49F0 00521021 */  addu       $v0, $v0, $s2
/* 112AE4 800F49F4 00021080 */  sll        $v0, $v0, 2
/* 112AE8 800F49F8 24420B44 */  addiu      $v0, $v0, 0xB44
/* 112AEC 800F49FC AFB10014 */  sw         $s1, 0x14($sp)
/* 112AF0 800F4A00 02628821 */  addu       $s1, $s3, $v0
/* 112AF4 800F4A04 02202021 */  addu       $a0, $s1, $zero
/* 112AF8 800F4A08 AFBF0028 */  sw         $ra, 0x28($sp)
/* 112AFC 800F4A0C 0C03D491 */  jal        func_menu_800F5244
/* 112B00 800F4A10 AFB00010 */   sw        $s0, 0x10($sp)
/* 112B04 800F4A14 00408021 */  addu       $s0, $v0, $zero
/* 112B08 800F4A18 16000011 */  bnez       $s0, .Lmenu_800F4A60
/* 112B0C 800F4A1C 24020008 */   addiu     $v0, $zero, 0x8
/* 112B10 800F4A20 0C03D4B5 */  jal        func_menu_800F52D4
/* 112B14 800F4A24 02202021 */   addu      $a0, $s1, $zero
/* 112B18 800F4A28 00408021 */  addu       $s0, $v0, $zero
/* 112B1C 800F4A2C 1600001F */  bnez       $s0, .Lmenu_800F4AAC
/* 112B20 800F4A30 02001021 */   addu      $v0, $s0, $zero
/* 112B24 800F4A34 26642380 */  addiu      $a0, $s3, 0x2380
/* 112B28 800F4A38 8C830004 */  lw         $v1, 0x4($a0)
/* 112B2C 800F4A3C 2402FFFF */  addiu      $v0, $zero, -0x1
/* 112B30 800F4A40 1462001A */  bne        $v1, $v0, .Lmenu_800F4AAC
/* 112B34 800F4A44 02001021 */   addu      $v0, $s0, $zero
/* 112B38 800F4A48 16A00015 */  bnez       $s5, .Lmenu_800F4AA0
/* 112B3C 800F4A4C 02202821 */   addu      $a1, $s1, $zero
/* 112B40 800F4A50 0C03CAF1 */  jal        func_menu_800F2BC4
/* 112B44 800F4A54 02403021 */   addu      $a2, $s2, $zero
/* 112B48 800F4A58 0803D2AB */  j          .Lmenu_800F4AAC
/* 112B4C 800F4A5C 02001021 */   addu      $v0, $s0, $zero
.Lmenu_800F4A60:
/* 112B50 800F4A60 16020012 */  bne        $s0, $v0, .Lmenu_800F4AAC
/* 112B54 800F4A64 02001021 */   addu      $v0, $s0, $zero
/* 112B58 800F4A68 12800010 */  beqz       $s4, .Lmenu_800F4AAC
/* 112B5C 800F4A6C 00000000 */   nop
/* 112B60 800F4A70 0C03D4A0 */  jal        func_menu_800F5280
/* 112B64 800F4A74 02202021 */   addu      $a0, $s1, $zero
/* 112B68 800F4A78 00408021 */  addu       $s0, $v0, $zero
/* 112B6C 800F4A7C 1600000B */  bnez       $s0, .Lmenu_800F4AAC
/* 112B70 800F4A80 02001021 */   addu      $v0, $s0, $zero
/* 112B74 800F4A84 12A00009 */  beqz       $s5, .Lmenu_800F4AAC
/* 112B78 800F4A88 26642380 */   addiu     $a0, $s3, 0x2380
/* 112B7C 800F4A8C 8C830004 */  lw         $v1, 0x4($a0)
/* 112B80 800F4A90 2402FFFF */  addiu      $v0, $zero, -0x1
/* 112B84 800F4A94 14620005 */  bne        $v1, $v0, .Lmenu_800F4AAC
/* 112B88 800F4A98 02001021 */   addu      $v0, $s0, $zero
/* 112B8C 800F4A9C 02202821 */  addu       $a1, $s1, $zero
.Lmenu_800F4AA0:
/* 112B90 800F4AA0 0C03CB5C */  jal        func_menu_800F2D70
/* 112B94 800F4AA4 02403021 */   addu      $a2, $s2, $zero
/* 112B98 800F4AA8 02001021 */  addu       $v0, $s0, $zero
.Lmenu_800F4AAC:
/* 112B9C 800F4AAC 8FBF0028 */  lw         $ra, 0x28($sp)
/* 112BA0 800F4AB0 8FB50024 */  lw         $s5, 0x24($sp)
/* 112BA4 800F4AB4 8FB40020 */  lw         $s4, 0x20($sp)
/* 112BA8 800F4AB8 8FB3001C */  lw         $s3, 0x1C($sp)
/* 112BAC 800F4ABC 8FB20018 */  lw         $s2, 0x18($sp)
/* 112BB0 800F4AC0 8FB10014 */  lw         $s1, 0x14($sp)
/* 112BB4 800F4AC4 8FB00010 */  lw         $s0, 0x10($sp)
/* 112BB8 800F4AC8 03E00008 */  jr         $ra
/* 112BBC 800F4ACC 27BD0030 */   addiu     $sp, $sp, 0x30

glabel func_menu_800F4AD0
/* 112BC0 800F4AD0 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* 112BC4 800F4AD4 AFB10014 */  sw         $s1, 0x14($sp)
/* 112BC8 800F4AD8 00808821 */  addu       $s1, $a0, $zero
/* 112BCC 800F4ADC 00003021 */  addu       $a2, $zero, $zero
/* 112BD0 800F4AE0 00C01821 */  addu       $v1, $a2, $zero
/* 112BD4 800F4AE4 AFBF0018 */  sw         $ra, 0x18($sp)
/* 112BD8 800F4AE8 AFB00010 */  sw         $s0, 0x10($sp)
/* 112BDC 800F4AEC 8E222380 */  lw         $v0, 0x2380($s1)
/* 112BE0 800F4AF0 10400004 */  beqz       $v0, .Lmenu_800F4B04
/* 112BE4 800F4AF4 26242380 */   addiu     $a0, $s1, 0x2380
/* 112BE8 800F4AF8 8C820004 */  lw         $v0, 0x4($a0)
/* 112BEC 800F4AFC 00451026 */  xor        $v0, $v0, $a1
/* 112BF0 800F4B00 2C430001 */  sltiu      $v1, $v0, 0x1
.Lmenu_800F4B04:
/* 112BF4 800F4B04 1060000E */  beqz       $v1, .Lmenu_800F4B40
/* 112BF8 800F4B08 00058080 */   sll       $s0, $a1, 2
/* 112BFC 800F4B0C 02058021 */  addu       $s0, $s0, $a1
/* 112C00 800F4B10 001080C0 */  sll        $s0, $s0, 3
/* 112C04 800F4B14 02058023 */  subu       $s0, $s0, $a1
/* 112C08 800F4B18 001080C0 */  sll        $s0, $s0, 3
/* 112C0C 800F4B1C 02058021 */  addu       $s0, $s0, $a1
/* 112C10 800F4B20 00108080 */  sll        $s0, $s0, 2
/* 112C14 800F4B24 26100B44 */  addiu      $s0, $s0, 0xB44
/* 112C18 800F4B28 02308021 */  addu       $s0, $s1, $s0
/* 112C1C 800F4B2C 0C03C9E5 */  jal        func_menu_800F2794
/* 112C20 800F4B30 02002821 */   addu      $a1, $s0, $zero
/* 112C24 800F4B34 AE202380 */  sw         $zero, 0x2380($s1)
/* 112C28 800F4B38 0803D2DC */  j          .Lmenu_800F4B70
/* 112C2C 800F4B3C 02002021 */   addu      $a0, $s0, $zero
.Lmenu_800F4B40:
/* 112C30 800F4B40 00051080 */  sll        $v0, $a1, 2
/* 112C34 800F4B44 00451021 */  addu       $v0, $v0, $a1
/* 112C38 800F4B48 000210C0 */  sll        $v0, $v0, 3
/* 112C3C 800F4B4C 00451023 */  subu       $v0, $v0, $a1
/* 112C40 800F4B50 000210C0 */  sll        $v0, $v0, 3
/* 112C44 800F4B54 00451021 */  addu       $v0, $v0, $a1
/* 112C48 800F4B58 00022080 */  sll        $a0, $v0, 2
/* 112C4C 800F4B5C 00911021 */  addu       $v0, $a0, $s1
/* 112C50 800F4B60 8C420B64 */  lw         $v0, 0xB64($v0)
/* 112C54 800F4B64 10400005 */  beqz       $v0, .Lmenu_800F4B7C
/* 112C58 800F4B68 24840B44 */   addiu     $a0, $a0, 0xB44
/* 112C5C 800F4B6C 02242021 */  addu       $a0, $s1, $a0
.Lmenu_800F4B70:
/* 112C60 800F4B70 0C03D4D2 */  jal        func_menu_800F5348
/* 112C64 800F4B74 00000000 */   nop
/* 112C68 800F4B78 00403021 */  addu       $a2, $v0, $zero
.Lmenu_800F4B7C:
/* 112C6C 800F4B7C 8FBF0018 */  lw         $ra, 0x18($sp)
/* 112C70 800F4B80 8FB10014 */  lw         $s1, 0x14($sp)
/* 112C74 800F4B84 8FB00010 */  lw         $s0, 0x10($sp)
/* 112C78 800F4B88 00C01021 */  addu       $v0, $a2, $zero
/* 112C7C 800F4B8C 03E00008 */  jr         $ra
/* 112C80 800F4B90 27BD0020 */   addiu     $sp, $sp, 0x20

glabel func_menu_800F4B94
/* 112C84 800F4B94 27BDFFC0 */  addiu      $sp, $sp, -0x40
/* 112C88 800F4B98 AFB30024 */  sw         $s3, 0x24($sp)
/* 112C8C 800F4B9C 00809821 */  addu       $s3, $a0, $zero
/* 112C90 800F4BA0 AFB70034 */  sw         $s7, 0x34($sp)
/* 112C94 800F4BA4 00A0B821 */  addu       $s7, $a1, $zero
/* 112C98 800F4BA8 AFB5002C */  sw         $s5, 0x2C($sp)
/* 112C9C 800F4BAC 0000A821 */  addu       $s5, $zero, $zero
/* 112CA0 800F4BB0 26640950 */  addiu      $a0, $s3, 0x950
/* 112CA4 800F4BB4 AFBF0038 */  sw         $ra, 0x38($sp)
/* 112CA8 800F4BB8 AFB60030 */  sw         $s6, 0x30($sp)
/* 112CAC 800F4BBC AFB40028 */  sw         $s4, 0x28($sp)
/* 112CB0 800F4BC0 AFB20020 */  sw         $s2, 0x20($sp)
/* 112CB4 800F4BC4 AFB1001C */  sw         $s1, 0x1C($sp)
/* 112CB8 800F4BC8 0C0497A0 */  jal        func_menu_80125E80
/* 112CBC 800F4BCC AFB00018 */   sw        $s0, 0x18($sp)
/* 112CC0 800F4BD0 AE62237C */  sw         $v0, 0x237C($s3)
/* 112CC4 800F4BD4 2C420005 */  sltiu      $v0, $v0, 0x5
/* 112CC8 800F4BD8 14400003 */  bnez       $v0, .Lmenu_800F4BE8
/* 112CCC 800F4BDC 00009021 */   addu      $s2, $zero, $zero
/* 112CD0 800F4BE0 24020004 */  addiu      $v0, $zero, 0x4
/* 112CD4 800F4BE4 AE62237C */  sw         $v0, 0x237C($s3)
.Lmenu_800F4BE8:
/* 112CD8 800F4BE8 26762380 */  addiu      $s6, $s3, 0x2380
/* 112CDC 800F4BEC 24140B44 */  addiu      $s4, $zero, 0xB44
.Lmenu_800F4BF0:
/* 112CE0 800F4BF0 8E62237C */  lw         $v0, 0x237C($s3)
/* 112CE4 800F4BF4 0242102B */  sltu       $v0, $s2, $v0
/* 112CE8 800F4BF8 10400037 */  beqz       $v0, .Lmenu_800F4CD8
/* 112CEC 800F4BFC 26640950 */   addiu     $a0, $s3, 0x950
/* 112CF0 800F4C00 0C0497A2 */  jal        func_menu_80125E88
/* 112CF4 800F4C04 02402821 */   addu      $a1, $s2, $zero
/* 112CF8 800F4C08 AFB20010 */  sw         $s2, 0x10($sp)
/* 112CFC 800F4C0C 02748821 */  addu       $s1, $s3, $s4
/* 112D00 800F4C10 02202021 */  addu       $a0, $s1, $zero
/* 112D04 800F4C14 00402821 */  addu       $a1, $v0, $zero
/* 112D08 800F4C18 24060017 */  addiu      $a2, $zero, 0x17
/* 112D0C 800F4C1C 0C03D465 */  jal        func_menu_800F5194
/* 112D10 800F4C20 24070002 */   addiu     $a3, $zero, 0x2
/* 112D14 800F4C24 26642380 */  addiu      $a0, $s3, 0x2380
/* 112D18 800F4C28 0C03C9E5 */  jal        func_menu_800F2794
/* 112D1C 800F4C2C 02202821 */   addu      $a1, $s1, $zero
/* 112D20 800F4C30 0C03D491 */  jal        func_menu_800F5244
/* 112D24 800F4C34 02202021 */   addu      $a0, $s1, $zero
/* 112D28 800F4C38 00408021 */  addu       $s0, $v0, $zero
/* 112D2C 800F4C3C 16000005 */  bnez       $s0, .Lmenu_800F4C54
/* 112D30 800F4C40 24020008 */   addiu     $v0, $zero, 0x8
/* 112D34 800F4C44 0C03D4B5 */  jal        func_menu_800F52D4
/* 112D38 800F4C48 02202021 */   addu      $a0, $s1, $zero
/* 112D3C 800F4C4C 0803D31C */  j          .Lmenu_800F4C70
/* 112D40 800F4C50 00408021 */   addu      $s0, $v0, $zero
.Lmenu_800F4C54:
/* 112D44 800F4C54 16020007 */  bne        $s0, $v0, .Lmenu_800F4C74
/* 112D48 800F4C58 24020015 */   addiu     $v0, $zero, 0x15
/* 112D4C 800F4C5C 12E00005 */  beqz       $s7, .Lmenu_800F4C74
/* 112D50 800F4C60 00000000 */   nop
/* 112D54 800F4C64 0C03D4A0 */  jal        func_menu_800F5280
/* 112D58 800F4C68 02202021 */   addu      $a0, $s1, $zero
/* 112D5C 800F4C6C 00408021 */  addu       $s0, $v0, $zero
.Lmenu_800F4C70:
/* 112D60 800F4C70 24020015 */  addiu      $v0, $zero, 0x15
.Lmenu_800F4C74:
/* 112D64 800F4C74 12020003 */  beq        $s0, $v0, .Lmenu_800F4C84
/* 112D68 800F4C78 24020001 */   addiu     $v0, $zero, 0x1
/* 112D6C 800F4C7C 56020014 */  bnel       $s0, $v0, .Lmenu_800F4CD0
/* 112D70 800F4C80 269404E4 */   addiu     $s4, $s4, 0x4E4
.Lmenu_800F4C84:
/* 112D74 800F4C84 8EC30008 */  lw         $v1, 0x8($s6)
/* 112D78 800F4C88 8C620050 */  lw         $v0, 0x50($v1)
/* 112D7C 800F4C8C 02402821 */  addu       $a1, $s2, $zero
/* 112D80 800F4C90 84440018 */  lh         $a0, 0x18($v0)
/* 112D84 800F4C94 8C42001C */  lw         $v0, 0x1C($v0)
/* 112D88 800F4C98 0040F809 */  jalr       $v0
/* 112D8C 800F4C9C 00642021 */   addu      $a0, $v1, $a0
/* 112D90 800F4CA0 00401821 */  addu       $v1, $v0, $zero
/* 112D94 800F4CA4 50600009 */  beql       $v1, $zero, .Lmenu_800F4CCC
/* 112D98 800F4CA8 0200A821 */   addu      $s5, $s0, $zero
/* 112D9C 800F4CAC 8C620098 */  lw         $v0, 0x98($v1)
/* 112DA0 800F4CB0 844400B8 */  lh         $a0, 0xB8($v0)
/* 112DA4 800F4CB4 8C4200BC */  lw         $v0, 0xBC($v0)
/* 112DA8 800F4CB8 0040F809 */  jalr       $v0
/* 112DAC 800F4CBC 00642021 */   addu      $a0, $v1, $a0
/* 112DB0 800F4CC0 50400003 */  beql       $v0, $zero, .Lmenu_800F4CD0
/* 112DB4 800F4CC4 269404E4 */   addiu     $s4, $s4, 0x4E4
/* 112DB8 800F4CC8 0200A821 */  addu       $s5, $s0, $zero
.Lmenu_800F4CCC:
/* 112DBC 800F4CCC 269404E4 */  addiu      $s4, $s4, 0x4E4
.Lmenu_800F4CD0:
/* 112DC0 800F4CD0 0803D2FC */  j          .Lmenu_800F4BF0
/* 112DC4 800F4CD4 26520001 */   addiu     $s2, $s2, 0x1
.Lmenu_800F4CD8:
/* 112DC8 800F4CD8 0C03D344 */  jal        func_menu_800F4D10
/* 112DCC 800F4CDC 02602021 */   addu      $a0, $s3, $zero
/* 112DD0 800F4CE0 02A01021 */  addu       $v0, $s5, $zero
/* 112DD4 800F4CE4 8FBF0038 */  lw         $ra, 0x38($sp)
/* 112DD8 800F4CE8 8FB70034 */  lw         $s7, 0x34($sp)
/* 112DDC 800F4CEC 8FB60030 */  lw         $s6, 0x30($sp)
/* 112DE0 800F4CF0 8FB5002C */  lw         $s5, 0x2C($sp)
/* 112DE4 800F4CF4 8FB40028 */  lw         $s4, 0x28($sp)
/* 112DE8 800F4CF8 8FB30024 */  lw         $s3, 0x24($sp)
/* 112DEC 800F4CFC 8FB20020 */  lw         $s2, 0x20($sp)
/* 112DF0 800F4D00 8FB1001C */  lw         $s1, 0x1C($sp)
/* 112DF4 800F4D04 8FB00018 */  lw         $s0, 0x18($sp)
/* 112DF8 800F4D08 03E00008 */  jr         $ra
/* 112DFC 800F4D0C 27BD0040 */   addiu     $sp, $sp, 0x40

glabel func_menu_800F4D10
/* 112E00 800F4D10 27BDFFC8 */  addiu      $sp, $sp, -0x38
/* 112E04 800F4D14 AFB50024 */  sw         $s5, 0x24($sp)
/* 112E08 800F4D18 0080A821 */  addu       $s5, $a0, $zero
/* 112E0C 800F4D1C AFB20018 */  sw         $s2, 0x18($sp)
/* 112E10 800F4D20 00009021 */  addu       $s2, $zero, $zero
/* 112E14 800F4D24 AFB60028 */  sw         $s6, 0x28($sp)
/* 112E18 800F4D28 26B62380 */  addiu      $s6, $s5, 0x2380
/* 112E1C 800F4D2C AFB7002C */  sw         $s7, 0x2C($sp)
/* 112E20 800F4D30 2417FFFF */  addiu      $s7, $zero, -0x1
/* 112E24 800F4D34 AFB40020 */  sw         $s4, 0x20($sp)
/* 112E28 800F4D38 0240A021 */  addu       $s4, $s2, $zero
/* 112E2C 800F4D3C AFBF0030 */  sw         $ra, 0x30($sp)
/* 112E30 800F4D40 AFB3001C */  sw         $s3, 0x1C($sp)
/* 112E34 800F4D44 AFB10014 */  sw         $s1, 0x14($sp)
/* 112E38 800F4D48 AFB00010 */  sw         $s0, 0x10($sp)
.Lmenu_800F4D4C:
/* 112E3C 800F4D4C 8EA2237C */  lw         $v0, 0x237C($s5)
/* 112E40 800F4D50 0242102B */  sltu       $v0, $s2, $v0
/* 112E44 800F4D54 10400023 */  beqz       $v0, .Lmenu_800F4DE4
/* 112E48 800F4D58 02958021 */   addu      $s0, $s4, $s5
/* 112E4C 800F4D5C 26100B44 */  addiu      $s0, $s0, 0xB44
/* 112E50 800F4D60 8E0304A8 */  lw         $v1, 0x4A8($s0)
/* 112E54 800F4D64 00009821 */  addu       $s3, $zero, $zero
/* 112E58 800F4D68 8C620004 */  lw         $v0, 0x4($v1)
/* 112E5C 800F4D6C 02608821 */  addu       $s1, $s3, $zero
/* 112E60 800F4D70 84440050 */  lh         $a0, 0x50($v0)
/* 112E64 800F4D74 8C420054 */  lw         $v0, 0x54($v0)
/* 112E68 800F4D78 0040F809 */  jalr       $v0
/* 112E6C 800F4D7C 00642021 */   addu      $a0, $v1, $a0
/* 112E70 800F4D80 10400003 */  beqz       $v0, .Lmenu_800F4D90
/* 112E74 800F4D84 00000000 */   nop
/* 112E78 800F4D88 8E0204B0 */  lw         $v0, 0x4B0($s0)
/* 112E7C 800F4D8C 30510001 */  andi       $s1, $v0, 0x1
.Lmenu_800F4D90:
/* 112E80 800F4D90 12200004 */  beqz       $s1, .Lmenu_800F4DA4
/* 112E84 800F4D94 00000000 */   nop
/* 112E88 800F4D98 8EC20004 */  lw         $v0, 0x4($s6)
/* 112E8C 800F4D9C 50570001 */  beql       $v0, $s7, .Lmenu_800F4DA4
/* 112E90 800F4DA0 24130001 */   addiu     $s3, $zero, 0x1
.Lmenu_800F4DA4:
/* 112E94 800F4DA4 16600004 */  bnez       $s3, .Lmenu_800F4DB8
/* 112E98 800F4DA8 26A42380 */   addiu     $a0, $s5, 0x2380
/* 112E9C 800F4DAC 269404E4 */  addiu      $s4, $s4, 0x4E4
/* 112EA0 800F4DB0 0803D353 */  j          .Lmenu_800F4D4C
/* 112EA4 800F4DB4 26520001 */   addiu     $s2, $s2, 0x1
.Lmenu_800F4DB8:
/* 112EA8 800F4DB8 00122880 */  sll        $a1, $s2, 2
/* 112EAC 800F4DBC 00B22821 */  addu       $a1, $a1, $s2
/* 112EB0 800F4DC0 000528C0 */  sll        $a1, $a1, 3
/* 112EB4 800F4DC4 00B22823 */  subu       $a1, $a1, $s2
/* 112EB8 800F4DC8 000528C0 */  sll        $a1, $a1, 3
/* 112EBC 800F4DCC 00B22821 */  addu       $a1, $a1, $s2
/* 112EC0 800F4DD0 00052880 */  sll        $a1, $a1, 2
/* 112EC4 800F4DD4 24A50B44 */  addiu      $a1, $a1, 0xB44
/* 112EC8 800F4DD8 02A52821 */  addu       $a1, $s5, $a1
/* 112ECC 800F4DDC 0C03CB5C */  jal        func_menu_800F2D70
/* 112ED0 800F4DE0 02403021 */   addu      $a2, $s2, $zero
.Lmenu_800F4DE4:
/* 112ED4 800F4DE4 8FBF0030 */  lw         $ra, 0x30($sp)
/* 112ED8 800F4DE8 8FB7002C */  lw         $s7, 0x2C($sp)
/* 112EDC 800F4DEC 8FB60028 */  lw         $s6, 0x28($sp)
/* 112EE0 800F4DF0 8FB50024 */  lw         $s5, 0x24($sp)
/* 112EE4 800F4DF4 8FB40020 */  lw         $s4, 0x20($sp)
/* 112EE8 800F4DF8 8FB3001C */  lw         $s3, 0x1C($sp)
/* 112EEC 800F4DFC 8FB20018 */  lw         $s2, 0x18($sp)
/* 112EF0 800F4E00 8FB10014 */  lw         $s1, 0x14($sp)
/* 112EF4 800F4E04 8FB00010 */  lw         $s0, 0x10($sp)
/* 112EF8 800F4E08 03E00008 */  jr         $ra
/* 112EFC 800F4E0C 27BD0038 */   addiu     $sp, $sp, 0x38

glabel func_menu_800F4E10
/* 112F00 800F4E10 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* 112F04 800F4E14 AFB10014 */  sw         $s1, 0x14($sp)
/* 112F08 800F4E18 00A08821 */  addu       $s1, $a1, $zero
/* 112F0C 800F4E1C AFB20018 */  sw         $s2, 0x18($sp)
/* 112F10 800F4E20 00C09021 */  addu       $s2, $a2, $zero
/* 112F14 800F4E24 24040030 */  addiu      $a0, $zero, 0x30
/* 112F18 800F4E28 AFBF001C */  sw         $ra, 0x1C($sp)
/* 112F1C 800F4E2C 0C01FB4C */  jal        func_8007ED30
/* 112F20 800F4E30 AFB00010 */   sw        $s0, 0x10($sp)
/* 112F24 800F4E34 00408021 */  addu       $s0, $v0, $zero
/* 112F28 800F4E38 0C01F720 */  jal        func_8007DC80
/* 112F2C 800F4E3C 02002021 */   addu      $a0, $s0, $zero
/* 112F30 800F4E40 3C02800D */  lui        $v0, %hi(D_menu_800CC0C8)
/* 112F34 800F4E44 2442C0C8 */  addiu      $v0, $v0, %lo(D_menu_800CC0C8)
/* 112F38 800F4E48 16000007 */  bnez       $s0, .Lmenu_800F4E68
/* 112F3C 800F4E4C AE020028 */   sw        $v0, 0x28($s0)
/* 112F40 800F4E50 3C04800D */  lui        $a0, %hi(D_menu_800CC098)
/* 112F44 800F4E54 2484C098 */  addiu      $a0, $a0, %lo(D_menu_800CC098)
/* 112F48 800F4E58 00002821 */  addu       $a1, $zero, $zero
/* 112F4C 800F4E5C 00A03021 */  addu       $a2, $a1, $zero
/* 112F50 800F4E60 0C011ACF */  jal        func_80046B3C
/* 112F54 800F4E64 00A03821 */   addu      $a3, $a1, $zero
.Lmenu_800F4E68:
/* 112F58 800F4E68 02202821 */  addu       $a1, $s1, $zero
/* 112F5C 800F4E6C 24060002 */  addiu      $a2, $zero, 0x2
/* 112F60 800F4E70 8E020028 */  lw         $v0, 0x28($s0)
/* 112F64 800F4E74 24070400 */  addiu      $a3, $zero, 0x400
/* 112F68 800F4E78 84440040 */  lh         $a0, 0x40($v0)
/* 112F6C 800F4E7C 8C420044 */  lw         $v0, 0x44($v0)
/* 112F70 800F4E80 0040F809 */  jalr       $v0
/* 112F74 800F4E84 02042021 */   addu      $a0, $s0, $a0
/* 112F78 800F4E88 14400010 */  bnez       $v0, .Lmenu_800F4ECC
/* 112F7C 800F4E8C 00000000 */   nop
/* 112F80 800F4E90 02402021 */  addu       $a0, $s2, $zero
/* 112F84 800F4E94 0C03CE46 */  jal        func_menu_800F3918
/* 112F88 800F4E98 02002821 */   addu      $a1, $s0, $zero
/* 112F8C 800F4E9C 10400006 */  beqz       $v0, .Lmenu_800F4EB8
/* 112F90 800F4EA0 00002821 */   addu      $a1, $zero, $zero
/* 112F94 800F4EA4 3C04800D */  lui        $a0, %hi(D_menu_800CC098)
/* 112F98 800F4EA8 2484C098 */  addiu      $a0, $a0, %lo(D_menu_800CC098)
/* 112F9C 800F4EAC 00A03021 */  addu       $a2, $a1, $zero
/* 112FA0 800F4EB0 0C011ACF */  jal        func_80046B3C
/* 112FA4 800F4EB4 00A03821 */   addu      $a3, $a1, $zero
.Lmenu_800F4EB8:
/* 112FA8 800F4EB8 8E020028 */  lw         $v0, 0x28($s0)
/* 112FAC 800F4EBC 84440048 */  lh         $a0, 0x48($v0)
/* 112FB0 800F4EC0 8C42004C */  lw         $v0, 0x4C($v0)
/* 112FB4 800F4EC4 0040F809 */  jalr       $v0
/* 112FB8 800F4EC8 02042021 */   addu      $a0, $s0, $a0
.Lmenu_800F4ECC:
/* 112FBC 800F4ECC 12000006 */  beqz       $s0, .Lmenu_800F4EE8
/* 112FC0 800F4ED0 24050003 */   addiu     $a1, $zero, 0x3
/* 112FC4 800F4ED4 8E020028 */  lw         $v0, 0x28($s0)
/* 112FC8 800F4ED8 84440038 */  lh         $a0, 0x38($v0)
/* 112FCC 800F4EDC 8C42003C */  lw         $v0, 0x3C($v0)
/* 112FD0 800F4EE0 0040F809 */  jalr       $v0
/* 112FD4 800F4EE4 02042021 */   addu      $a0, $s0, $a0
.Lmenu_800F4EE8:
/* 112FD8 800F4EE8 8FBF001C */  lw         $ra, 0x1C($sp)
/* 112FDC 800F4EEC 8FB20018 */  lw         $s2, 0x18($sp)
/* 112FE0 800F4EF0 8FB10014 */  lw         $s1, 0x14($sp)
/* 112FE4 800F4EF4 8FB00010 */  lw         $s0, 0x10($sp)
/* 112FE8 800F4EF8 03E00008 */  jr         $ra
/* 112FEC 800F4EFC 27BD0020 */   addiu     $sp, $sp, 0x20

glabel func_menu_800F4F00
/* 112FF0 800F4F00 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* 112FF4 800F4F04 AFB20018 */  sw         $s2, 0x18($sp)
/* 112FF8 800F4F08 00809021 */  addu       $s2, $a0, $zero
/* 112FFC 800F4F0C 264427B8 */  addiu      $a0, $s2, 0x27B8
/* 113000 800F4F10 AFBF001C */  sw         $ra, 0x1C($sp)
/* 113004 800F4F14 AFB10014 */  sw         $s1, 0x14($sp)
/* 113008 800F4F18 0C03BBCA */  jal        func_menu_800EEF28
/* 11300C 800F4F1C AFB00010 */   sw        $s0, 0x10($sp)
/* 113010 800F4F20 0C03CE10 */  jal        func_menu_800F3840
/* 113014 800F4F24 02402021 */   addu      $a0, $s2, $zero
/* 113018 800F4F28 0C03CE10 */  jal        func_menu_800F3840
/* 11301C 800F4F2C 264404A8 */   addiu     $a0, $s2, 0x4A8
/* 113020 800F4F30 0C03CE10 */  jal        func_menu_800F3840
/* 113024 800F4F34 26441ED4 */   addiu     $a0, $s2, 0x1ED4
/* 113028 800F4F38 8E42237C */  lw         $v0, 0x237C($s2)
/* 11302C 800F4F3C 10400009 */  beqz       $v0, .Lmenu_800F4F64
/* 113030 800F4F40 00008021 */   addu      $s0, $zero, $zero
/* 113034 800F4F44 24110B44 */  addiu      $s1, $zero, 0xB44
.Lmenu_800F4F48:
/* 113038 800F4F48 0C03D480 */  jal        func_menu_800F5200
/* 11303C 800F4F4C 02512021 */   addu      $a0, $s2, $s1
/* 113040 800F4F50 8E42237C */  lw         $v0, 0x237C($s2)
/* 113044 800F4F54 26100001 */  addiu      $s0, $s0, 0x1
/* 113048 800F4F58 0202102B */  sltu       $v0, $s0, $v0
/* 11304C 800F4F5C 1440FFFA */  bnez       $v0, .Lmenu_800F4F48
/* 113050 800F4F60 263104E4 */   addiu     $s1, $s1, 0x4E4
.Lmenu_800F4F64:
/* 113054 800F4F64 0C049788 */  jal        func_menu_80125E20
/* 113058 800F4F68 26440950 */   addiu     $a0, $s2, 0x950
/* 11305C 800F4F6C 0C03C88C */  jal        func_menu_800F2230
/* 113060 800F4F70 26442380 */   addiu     $a0, $s2, 0x2380
/* 113064 800F4F74 0C03D22A */  jal        func_menu_800F48A8
/* 113068 800F4F78 02402021 */   addu      $a0, $s2, $zero
/* 11306C 800F4F7C 8FBF001C */  lw         $ra, 0x1C($sp)
/* 113070 800F4F80 8FB20018 */  lw         $s2, 0x18($sp)
/* 113074 800F4F84 8FB10014 */  lw         $s1, 0x14($sp)
/* 113078 800F4F88 8FB00010 */  lw         $s0, 0x10($sp)
/* 11307C 800F4F8C 03E00008 */  jr         $ra
/* 113080 800F4F90 27BD0020 */   addiu     $sp, $sp, 0x20

glabel func_menu_800F4F94
/* 113084 800F4F94 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 113088 800F4F98 AFBF0010 */  sw         $ra, 0x10($sp)
/* 11308C 800F4F9C 0C03CA1E */  jal        func_menu_800F2878
/* 113090 800F4FA0 24842380 */   addiu     $a0, $a0, 0x2380
/* 113094 800F4FA4 24040002 */  addiu      $a0, $zero, 0x2
/* 113098 800F4FA8 24030001 */  addiu      $v1, $zero, 0x1
/* 11309C 800F4FAC 304500FF */  andi       $a1, $v0, 0xFF
.Lmenu_800F4FB0:
/* 1130A0 800F4FB0 00A41024 */  and        $v0, $a1, $a0
/* 1130A4 800F4FB4 54400003 */  bnel       $v0, $zero, .Lmenu_800F4FC4
/* 1130A8 800F4FB8 24630001 */   addiu     $v1, $v1, 0x1
/* 1130AC 800F4FBC 0803D3F5 */  j          .Lmenu_800F4FD4
/* 1130B0 800F4FC0 2462FFFF */   addiu     $v0, $v1, -0x1
.Lmenu_800F4FC4:
/* 1130B4 800F4FC4 2C620007 */  sltiu      $v0, $v1, 0x7
/* 1130B8 800F4FC8 1440FFF9 */  bnez       $v0, .Lmenu_800F4FB0
/* 1130BC 800F4FCC 00042040 */   sll       $a0, $a0, 1
/* 1130C0 800F4FD0 24020006 */  addiu      $v0, $zero, 0x6
.Lmenu_800F4FD4:
/* 1130C4 800F4FD4 8FBF0010 */  lw         $ra, 0x10($sp)
/* 1130C8 800F4FD8 03E00008 */  jr         $ra
/* 1130CC 800F4FDC 27BD0018 */   addiu     $sp, $sp, 0x18

glabel func_menu_800F4FE0
/* 1130D0 800F4FE0 8CA30008 */  lw         $v1, 0x8($a1)
/* 1130D4 800F4FE4 24020002 */  addiu      $v0, $zero, 0x2
/* 1130D8 800F4FE8 1062000F */  beq        $v1, $v0, .Lmenu_800F5028
/* 1130DC 800F4FEC 00603021 */   addu      $a2, $v1, $zero
/* 1130E0 800F4FF0 28620003 */  slti       $v0, $v1, 0x3
/* 1130E4 800F4FF4 10400005 */  beqz       $v0, .Lmenu_800F500C
/* 1130E8 800F4FF8 24020001 */   addiu     $v0, $zero, 0x1
/* 1130EC 800F4FFC 10620008 */  beq        $v1, $v0, .Lmenu_800F5020
/* 1130F0 800F5000 00001021 */   addu      $v0, $zero, $zero
/* 1130F4 800F5004 0803D417 */  j          .Lmenu_800F505C
/* 1130F8 800F5008 00000000 */   nop
.Lmenu_800F500C:
/* 1130FC 800F500C 24020003 */  addiu      $v0, $zero, 0x3
/* 113100 800F5010 10C20010 */  beq        $a2, $v0, .Lmenu_800F5054
/* 113104 800F5014 00001021 */   addu      $v0, $zero, $zero
/* 113108 800F5018 0803D417 */  j          .Lmenu_800F505C
/* 11310C 800F501C 00000000 */   nop
.Lmenu_800F5020:
/* 113110 800F5020 03E00008 */  jr         $ra
/* 113114 800F5024 00801021 */   addu      $v0, $a0, $zero
.Lmenu_800F5028:
/* 113118 800F5028 8CA3000C */  lw         $v1, 0xC($a1)
/* 11311C 800F502C 00031080 */  sll        $v0, $v1, 2
/* 113120 800F5030 00431021 */  addu       $v0, $v0, $v1
/* 113124 800F5034 000210C0 */  sll        $v0, $v0, 3
/* 113128 800F5038 00431023 */  subu       $v0, $v0, $v1
/* 11312C 800F503C 000210C0 */  sll        $v0, $v0, 3
/* 113130 800F5040 00431021 */  addu       $v0, $v0, $v1
/* 113134 800F5044 00021080 */  sll        $v0, $v0, 2
/* 113138 800F5048 24420B44 */  addiu      $v0, $v0, 0xB44
/* 11313C 800F504C 03E00008 */  jr         $ra
/* 113140 800F5050 00821021 */   addu      $v0, $a0, $v0
.Lmenu_800F5054:
/* 113144 800F5054 03E00008 */  jr         $ra
/* 113148 800F5058 248204A8 */   addiu     $v0, $a0, 0x4A8
.Lmenu_800F505C:
/* 11314C 800F505C 03E00008 */  jr         $ra
/* 113150 800F5060 00000000 */   nop

glabel func_menu_800F5064
/* 113154 800F5064 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* 113158 800F5068 AFB00010 */  sw         $s0, 0x10($sp)
/* 11315C 800F506C 00808021 */  addu       $s0, $a0, $zero
/* 113160 800F5070 AFB20018 */  sw         $s2, 0x18($sp)
/* 113164 800F5074 00A09021 */  addu       $s2, $a1, $zero
/* 113168 800F5078 AFB10014 */  sw         $s1, 0x14($sp)
/* 11316C 800F507C 26112380 */  addiu      $s1, $s0, 0x2380
/* 113170 800F5080 02202021 */  addu       $a0, $s1, $zero
/* 113174 800F5084 AFBF001C */  sw         $ra, 0x1C($sp)
/* 113178 800F5088 0C03C9E5 */  jal        func_menu_800F2794
/* 11317C 800F508C 02002821 */   addu      $a1, $s0, $zero
/* 113180 800F5090 02202021 */  addu       $a0, $s1, $zero
/* 113184 800F5094 0C03C893 */  jal        func_menu_800F224C
/* 113188 800F5098 02402821 */   addu      $a1, $s2, $zero
/* 11318C 800F509C 02202021 */  addu       $a0, $s1, $zero
/* 113190 800F50A0 8C860004 */  lw         $a2, 0x4($a0)
/* 113194 800F50A4 0C03CB5C */  jal        func_menu_800F2D70
/* 113198 800F50A8 02002821 */   addu      $a1, $s0, $zero
/* 11319C 800F50AC 8FBF001C */  lw         $ra, 0x1C($sp)
/* 1131A0 800F50B0 8FB20018 */  lw         $s2, 0x18($sp)
/* 1131A4 800F50B4 8FB10014 */  lw         $s1, 0x14($sp)
/* 1131A8 800F50B8 8FB00010 */  lw         $s0, 0x10($sp)
/* 1131AC 800F50BC 03E00008 */  jr         $ra
/* 1131B0 800F50C0 27BD0020 */   addiu     $sp, $sp, 0x20

glabel func_menu_800F50C4
/* 1131B4 800F50C4 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 1131B8 800F50C8 AFBF0010 */  sw         $ra, 0x10($sp)
/* 1131BC 800F50CC 0C049733 */  jal        func_menu_80125CCC
/* 1131C0 800F50D0 00000000 */   nop
/* 1131C4 800F50D4 8FBF0010 */  lw         $ra, 0x10($sp)
/* 1131C8 800F50D8 03E00008 */  jr         $ra
/* 1131CC 800F50DC 27BD0018 */   addiu     $sp, $sp, 0x18

glabel func_menu_800F50E0
/* 1131D0 800F50E0 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 1131D4 800F50E4 AFBF0010 */  sw         $ra, 0x10($sp)
/* 1131D8 800F50E8 0C01F72E */  jal        func_8007DCB8
/* 1131DC 800F50EC 00000000 */   nop
/* 1131E0 800F50F0 8FBF0010 */  lw         $ra, 0x10($sp)
/* 1131E4 800F50F4 03E00008 */  jr         $ra
/* 1131E8 800F50F8 27BD0018 */   addiu     $sp, $sp, 0x18
