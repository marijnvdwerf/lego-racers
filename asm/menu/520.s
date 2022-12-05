.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text, "ax"

glabel func_menu_80103870
/* 121960 80103870 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 121964 80103874 AFB00010 */  sw         $s0, 0x10($sp)
/* 121968 80103878 AFBF0014 */  sw         $ra, 0x14($sp)
/* 12196C 8010387C 0C0401D8 */  jal        func_menu_80100760
/* 121970 80103880 00808021 */   addu      $s0, $a0, $zero
/* 121974 80103884 26040368 */  addiu      $a0, $s0, 0x368
/* 121978 80103888 3C02800D */  lui        $v0, %hi(D_menu_800CDBA0)
/* 12197C 8010388C 2442DBA0 */  addiu      $v0, $v0, %lo(D_menu_800CDBA0)
/* 121980 80103890 0C047BA4 */  jal        func_menu_8011EE90
/* 121984 80103894 AE020000 */   sw        $v0, 0x0($s0)
/* 121988 80103898 0C047BA4 */  jal        func_menu_8011EE90
/* 12198C 8010389C 260403C4 */   addiu     $a0, $s0, 0x3C4
/* 121990 801038A0 0C047BA4 */  jal        func_menu_8011EE90
/* 121994 801038A4 26040420 */   addiu     $a0, $s0, 0x420
/* 121998 801038A8 0C040F38 */  jal        func_menu_80103CE0
/* 12199C 801038AC 2604047C */   addiu     $a0, $s0, 0x47C
/* 1219A0 801038B0 02001021 */  addu       $v0, $s0, $zero
/* 1219A4 801038B4 AC40076C */  sw         $zero, 0x76C($v0)
/* 1219A8 801038B8 8FBF0014 */  lw         $ra, 0x14($sp)
/* 1219AC 801038BC 8FB00010 */  lw         $s0, 0x10($sp)
/* 1219B0 801038C0 03E00008 */  jr         $ra
/* 1219B4 801038C4 27BD0018 */   addiu     $sp, $sp, 0x18

glabel func_menu_801038C8
/* 1219B8 801038C8 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* 1219BC 801038CC AFB00010 */  sw         $s0, 0x10($sp)
/* 1219C0 801038D0 00808021 */  addu       $s0, $a0, $zero
/* 1219C4 801038D4 AFB10014 */  sw         $s1, 0x14($sp)
/* 1219C8 801038D8 00A08821 */  addu       $s1, $a1, $zero
/* 1219CC 801038DC 3C02800D */  lui        $v0, %hi(D_menu_800CDBA0)
/* 1219D0 801038E0 2442DBA0 */  addiu      $v0, $v0, %lo(D_menu_800CDBA0)
/* 1219D4 801038E4 AFBF0018 */  sw         $ra, 0x18($sp)
/* 1219D8 801038E8 0C040E6E */  jal        func_menu_801039B8
/* 1219DC 801038EC AE020000 */   sw        $v0, 0x0($s0)
/* 1219E0 801038F0 2604047C */  addiu      $a0, $s0, 0x47C
/* 1219E4 801038F4 0C040F4B */  jal        func_menu_80103D2C
/* 1219E8 801038F8 24050002 */   addiu     $a1, $zero, 0x2
/* 1219EC 801038FC 26040420 */  addiu      $a0, $s0, 0x420
/* 1219F0 80103900 0C047BB3 */  jal        func_menu_8011EECC
/* 1219F4 80103904 24050002 */   addiu     $a1, $zero, 0x2
/* 1219F8 80103908 260403C4 */  addiu      $a0, $s0, 0x3C4
/* 1219FC 8010390C 0C047BB3 */  jal        func_menu_8011EECC
/* 121A00 80103910 24050002 */   addiu     $a1, $zero, 0x2
/* 121A04 80103914 26040368 */  addiu      $a0, $s0, 0x368
/* 121A08 80103918 0C047BB3 */  jal        func_menu_8011EECC
/* 121A0C 8010391C 24050002 */   addiu     $a1, $zero, 0x2
/* 121A10 80103920 02002021 */  addu       $a0, $s0, $zero
/* 121A14 80103924 0C0401EF */  jal        func_menu_801007BC
/* 121A18 80103928 02202821 */   addu      $a1, $s1, $zero
/* 121A1C 8010392C 8FBF0018 */  lw         $ra, 0x18($sp)
/* 121A20 80103930 8FB10014 */  lw         $s1, 0x14($sp)
/* 121A24 80103934 8FB00010 */  lw         $s0, 0x10($sp)
/* 121A28 80103938 03E00008 */  jr         $ra
/* 121A2C 8010393C 27BD0020 */   addiu     $sp, $sp, 0x20

glabel func_menu_80103940
/* 121A30 80103940 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* 121A34 80103944 AFB00010 */  sw         $s0, 0x10($sp)
/* 121A38 80103948 00808021 */  addu       $s0, $a0, $zero
/* 121A3C 8010394C AFB10014 */  sw         $s1, 0x14($sp)
/* 121A40 80103950 00A08821 */  addu       $s1, $a1, $zero
/* 121A44 80103954 AFBF001C */  sw         $ra, 0x1C($sp)
/* 121A48 80103958 AFB20018 */  sw         $s2, 0x18($sp)
/* 121A4C 8010395C 8E020004 */  lw         $v0, 0x4($s0)
/* 121A50 80103960 10400006 */  beqz       $v0, .Lmenu_8010397C
/* 121A54 80103964 00C09021 */   addu      $s2, $a2, $zero
/* 121A58 80103968 8E020000 */  lw         $v0, 0x0($s0)
/* 121A5C 8010396C 844400F0 */  lh         $a0, 0xF0($v0)
/* 121A60 80103970 8C4200F4 */  lw         $v0, 0xF4($v0)
/* 121A64 80103974 0040F809 */  jalr       $v0
/* 121A68 80103978 02042021 */   addu      $a0, $s0, $a0
.Lmenu_8010397C:
/* 121A6C 8010397C 02002021 */  addu       $a0, $s0, $zero
/* 121A70 80103980 8E224620 */  lw         $v0, 0x4620($s1)
/* 121A74 80103984 02202821 */  addu       $a1, $s1, $zero
/* 121A78 80103988 AE02076C */  sw         $v0, 0x76C($s0)
/* 121A7C 8010398C 8E420024 */  lw         $v0, 0x24($s2)
/* 121A80 80103990 02403021 */  addu       $a2, $s2, $zero
/* 121A84 80103994 0C040214 */  jal        func_menu_80100850
/* 121A88 80103998 A0400041 */   sb        $zero, 0x41($v0)
/* 121A8C 8010399C 8FBF001C */  lw         $ra, 0x1C($sp)
/* 121A90 801039A0 8FB20018 */  lw         $s2, 0x18($sp)
/* 121A94 801039A4 8FB10014 */  lw         $s1, 0x14($sp)
/* 121A98 801039A8 8FB00010 */  lw         $s0, 0x10($sp)
/* 121A9C 801039AC 0002102B */  sltu       $v0, $zero, $v0
/* 121AA0 801039B0 03E00008 */  jr         $ra
/* 121AA4 801039B4 27BD0020 */   addiu     $sp, $sp, 0x20

glabel func_menu_801039B8
/* 121AA8 801039B8 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 121AAC 801039BC AFBF0010 */  sw         $ra, 0x10($sp)
/* 121AB0 801039C0 8C820004 */  lw         $v0, 0x4($a0)
/* 121AB4 801039C4 10400006 */  beqz       $v0, .Lmenu_801039E0
/* 121AB8 801039C8 24020001 */   addiu     $v0, $zero, 0x1
/* 121ABC 801039CC 8C8300C4 */  lw         $v1, 0xC4($a0)
/* 121AC0 801039D0 0C040232 */  jal        func_menu_801008C8
/* 121AC4 801039D4 A0620041 */   sb        $v0, 0x41($v1)
/* 121AC8 801039D8 08040E79 */  j          .Lmenu_801039E4
/* 121ACC 801039DC 00000000 */   nop
.Lmenu_801039E0:
/* 121AD0 801039E0 24020001 */  addiu      $v0, $zero, 0x1
.Lmenu_801039E4:
/* 121AD4 801039E4 8FBF0010 */  lw         $ra, 0x10($sp)
/* 121AD8 801039E8 03E00008 */  jr         $ra
/* 121ADC 801039EC 27BD0018 */   addiu     $sp, $sp, 0x18

glabel func_menu_801039F0
/* 121AE0 801039F0 27BDFFD0 */  addiu      $sp, $sp, -0x30
/* 121AE4 801039F4 AFB1001C */  sw         $s1, 0x1C($sp)
/* 121AE8 801039F8 00808821 */  addu       $s1, $a0, $zero
/* 121AEC 801039FC 26250368 */  addiu      $a1, $s1, 0x368
/* 121AF0 80103A00 24060052 */  addiu      $a2, $zero, 0x52
/* 121AF4 80103A04 00C03821 */  addu       $a3, $a2, $zero
/* 121AF8 80103A08 AFBF0028 */  sw         $ra, 0x28($sp)
/* 121AFC 80103A0C AFB30024 */  sw         $s3, 0x24($sp)
/* 121B00 80103A10 AFB20020 */  sw         $s2, 0x20($sp)
/* 121B04 80103A14 0C04675B */  jal        func_menu_80119D6C
/* 121B08 80103A18 AFB00018 */   sw        $s0, 0x18($sp)
/* 121B0C 80103A1C 8E23076C */  lw         $v1, 0x76C($s1)
/* 121B10 80103A20 28620004 */  slti       $v0, $v1, 0x4
/* 121B14 80103A24 1440001C */  bnez       $v0, .Lmenu_80103A98
/* 121B18 80103A28 00031080 */   sll       $v0, $v1, 2
/* 121B1C 80103A2C 8E220354 */  lw         $v0, 0x354($s1)
/* 121B20 80103A30 245002A4 */  addiu      $s0, $v0, 0x2A4
/* 121B24 80103A34 8E03001C */  lw         $v1, 0x1C($s0)
/* 121B28 80103A38 8C4202A4 */  lw         $v0, 0x2A4($v0)
/* 121B2C 80103A3C 1462004D */  bne        $v1, $v0, .Lmenu_80103B74
/* 121B30 80103A40 02202021 */   addu      $a0, $s1, $zero
/* 121B34 80103A44 262503C4 */  addiu      $a1, $s1, 0x3C4
/* 121B38 80103A48 2406005B */  addiu      $a2, $zero, 0x5B
/* 121B3C 80103A4C 0C04675B */  jal        func_menu_80119D6C
/* 121B40 80103A50 00C03821 */   addu      $a3, $a2, $zero
/* 121B44 80103A54 02202021 */  addu       $a0, $s1, $zero
/* 121B48 80103A58 26250420 */  addiu      $a1, $s1, 0x420
/* 121B4C 80103A5C 2406005C */  addiu      $a2, $zero, 0x5C
/* 121B50 80103A60 0C04675B */  jal        func_menu_80119D6C
/* 121B54 80103A64 00C03821 */   addu      $a3, $a2, $zero
/* 121B58 80103A68 02202021 */  addu       $a0, $s1, $zero
/* 121B5C 80103A6C 2630047C */  addiu      $s0, $s1, 0x47C
/* 121B60 80103A70 02002821 */  addu       $a1, $s0, $zero
/* 121B64 80103A74 240600A1 */  addiu      $a2, $zero, 0xA1
/* 121B68 80103A78 2407004F */  addiu      $a3, $zero, 0x4F
/* 121B6C 80103A7C 24020072 */  addiu      $v0, $zero, 0x72
/* 121B70 80103A80 0C040297 */  jal        func_menu_80100A5C
/* 121B74 80103A84 AFA20010 */   sw        $v0, 0x10($sp)
/* 121B78 80103A88 02202021 */  addu       $a0, $s1, $zero
/* 121B7C 80103A8C 02002821 */  addu       $a1, $s0, $zero
/* 121B80 80103A90 08040ED7 */  j          .Lmenu_80103B5C
/* 121B84 80103A94 240600BB */   addiu     $a2, $zero, 0xBB
.Lmenu_80103A98:
/* 121B88 80103A98 00431021 */  addu       $v0, $v0, $v1
/* 121B8C 80103A9C 000210C0 */  sll        $v0, $v0, 3
/* 121B90 80103AA0 00431023 */  subu       $v0, $v0, $v1
/* 121B94 80103AA4 000210C0 */  sll        $v0, $v0, 3
/* 121B98 80103AA8 00431021 */  addu       $v0, $v0, $v1
/* 121B9C 80103AAC 8E230354 */  lw         $v1, 0x354($s1)
/* 121BA0 80103AB0 00021080 */  sll        $v0, $v0, 2
/* 121BA4 80103AB4 00621821 */  addu       $v1, $v1, $v0
/* 121BA8 80103AB8 24700DE8 */  addiu      $s0, $v1, 0xDE8
/* 121BAC 80103ABC 8E0304A8 */  lw         $v1, 0x4A8($s0)
/* 121BB0 80103AC0 00009821 */  addu       $s3, $zero, $zero
/* 121BB4 80103AC4 8C620004 */  lw         $v0, 0x4($v1)
/* 121BB8 80103AC8 02609021 */  addu       $s2, $s3, $zero
/* 121BBC 80103ACC 84440050 */  lh         $a0, 0x50($v0)
/* 121BC0 80103AD0 8C420054 */  lw         $v0, 0x54($v0)
/* 121BC4 80103AD4 0040F809 */  jalr       $v0
/* 121BC8 80103AD8 00642021 */   addu      $a0, $v1, $a0
/* 121BCC 80103ADC 10400003 */  beqz       $v0, .Lmenu_80103AEC
/* 121BD0 80103AE0 00000000 */   nop
/* 121BD4 80103AE4 8E0204B0 */  lw         $v0, 0x4B0($s0)
/* 121BD8 80103AE8 30520001 */  andi       $s2, $v0, 0x1
.Lmenu_80103AEC:
/* 121BDC 80103AEC 52400005 */  beql       $s2, $zero, .Lmenu_80103B04
/* 121BE0 80103AF0 24130001 */   addiu     $s3, $zero, 0x1
/* 121BE4 80103AF4 8E03001C */  lw         $v1, 0x1C($s0)
/* 121BE8 80103AF8 8E020000 */  lw         $v0, 0x0($s0)
/* 121BEC 80103AFC 50620001 */  beql       $v1, $v0, .Lmenu_80103B04
/* 121BF0 80103B00 24130001 */   addiu     $s3, $zero, 0x1
.Lmenu_80103B04:
/* 121BF4 80103B04 1260001B */  beqz       $s3, .Lmenu_80103B74
/* 121BF8 80103B08 02202021 */   addu      $a0, $s1, $zero
/* 121BFC 80103B0C 262503C4 */  addiu      $a1, $s1, 0x3C4
/* 121C00 80103B10 2406005B */  addiu      $a2, $zero, 0x5B
/* 121C04 80103B14 0C04675B */  jal        func_menu_80119D6C
/* 121C08 80103B18 00C03821 */   addu      $a3, $a2, $zero
/* 121C0C 80103B1C 02202021 */  addu       $a0, $s1, $zero
/* 121C10 80103B20 26250420 */  addiu      $a1, $s1, 0x420
/* 121C14 80103B24 2406005C */  addiu      $a2, $zero, 0x5C
/* 121C18 80103B28 0C04675B */  jal        func_menu_80119D6C
/* 121C1C 80103B2C 00C03821 */   addu      $a3, $a2, $zero
/* 121C20 80103B30 02202021 */  addu       $a0, $s1, $zero
/* 121C24 80103B34 2630047C */  addiu      $s0, $s1, 0x47C
/* 121C28 80103B38 02002821 */  addu       $a1, $s0, $zero
/* 121C2C 80103B3C 240600A1 */  addiu      $a2, $zero, 0xA1
/* 121C30 80103B40 2407004F */  addiu      $a3, $zero, 0x4F
/* 121C34 80103B44 24020072 */  addiu      $v0, $zero, 0x72
/* 121C38 80103B48 0C040297 */  jal        func_menu_80100A5C
/* 121C3C 80103B4C AFA20010 */   sw        $v0, 0x10($sp)
/* 121C40 80103B50 02202021 */  addu       $a0, $s1, $zero
/* 121C44 80103B54 02002821 */  addu       $a1, $s0, $zero
/* 121C48 80103B58 240600BC */  addiu      $a2, $zero, 0xBC
.Lmenu_80103B5C:
/* 121C4C 80103B5C 0C046B5F */  jal        func_menu_8011AD7C
/* 121C50 80103B60 00000000 */   nop
/* 121C54 80103B64 8E2300C4 */  lw         $v1, 0xC4($s1)
/* 121C58 80103B68 24020001 */  addiu      $v0, $zero, 0x1
/* 121C5C 80103B6C 08040F00 */  j          .Lmenu_80103C00
/* 121C60 80103B70 A0620041 */   sb        $v0, 0x41($v1)
.Lmenu_80103B74:
/* 121C64 80103B74 8E230354 */  lw         $v1, 0x354($s1)
/* 121C68 80103B78 8C624614 */  lw         $v0, 0x4614($v1)
/* 121C6C 80103B7C 30420008 */  andi       $v0, $v0, 0x8
/* 121C70 80103B80 10400017 */  beqz       $v0, .Lmenu_80103BE0
/* 121C74 80103B84 00000000 */   nop
/* 121C78 80103B88 8C652CA4 */  lw         $a1, 0x2CA4($v1)
/* 121C7C 80103B8C 0C03BB23 */  jal        func_menu_800EEC8C
/* 121C80 80103B90 02002021 */   addu      $a0, $s0, $zero
/* 121C84 80103B94 8E240354 */  lw         $a0, 0x354($s1)
/* 121C88 80103B98 24030003 */  addiu      $v1, $zero, 0x3
/* 121C8C 80103B9C A6230360 */  sh         $v1, 0x360($s1)
/* 121C90 80103BA0 8C852CA4 */  lw         $a1, 0x2CA4($a0)
/* 121C94 80103BA4 00408021 */  addu       $s0, $v0, $zero
/* 121C98 80103BA8 8CA30008 */  lw         $v1, 0x8($a1)
/* 121C9C 80103BAC 24020001 */  addiu      $v0, $zero, 0x1
/* 121CA0 80103BB0 14620004 */  bne        $v1, $v0, .Lmenu_80103BC4
/* 121CA4 80103BB4 00003021 */   addu      $a2, $zero, $zero
/* 121CA8 80103BB8 8E020008 */  lw         $v0, 0x8($s0)
/* 121CAC 80103BBC 38420001 */  xori       $v0, $v0, 0x1
/* 121CB0 80103BC0 00C2302B */  sltu       $a2, $a2, $v0
.Lmenu_80103BC4:
/* 121CB4 80103BC4 10C00003 */  beqz       $a2, .Lmenu_80103BD4
/* 121CB8 80103BC8 00000000 */   nop
/* 121CBC 80103BCC 0C03BB36 */  jal        func_menu_800EECD8
/* 121CC0 80103BD0 248402A4 */   addiu     $a0, $a0, 0x2A4
.Lmenu_80103BD4:
/* 121CC4 80103BD4 8E220354 */  lw         $v0, 0x354($s1)
/* 121CC8 80103BD8 08040EFE */  j          .Lmenu_80103BF8
/* 121CCC 80103BDC AC502CA4 */   sw        $s0, 0x2CA4($v0)
.Lmenu_80103BE0:
/* 121CD0 80103BE0 0C03BAFD */  jal        func_menu_800EEBF4
/* 121CD4 80103BE4 02002021 */   addu      $a0, $s0, $zero
/* 121CD8 80103BE8 8E230354 */  lw         $v1, 0x354($s1)
/* 121CDC 80103BEC AC622CA4 */  sw         $v0, 0x2CA4($v1)
/* 121CE0 80103BF0 2402000F */  addiu      $v0, $zero, 0xF
/* 121CE4 80103BF4 A6220360 */  sh         $v0, 0x360($s1)
.Lmenu_80103BF8:
/* 121CE8 80103BF8 24020001 */  addiu      $v0, $zero, 0x1
/* 121CEC 80103BFC AE220364 */  sw         $v0, 0x364($s1)
.Lmenu_80103C00:
/* 121CF0 80103C00 8FBF0028 */  lw         $ra, 0x28($sp)
/* 121CF4 80103C04 8FB30024 */  lw         $s3, 0x24($sp)
/* 121CF8 80103C08 8FB20020 */  lw         $s2, 0x20($sp)
/* 121CFC 80103C0C 8FB1001C */  lw         $s1, 0x1C($sp)
/* 121D00 80103C10 8FB00018 */  lw         $s0, 0x18($sp)
/* 121D04 80103C14 03E00008 */  jr         $ra
/* 121D08 80103C18 27BD0030 */   addiu     $sp, $sp, 0x30

glabel func_menu_80103C1C
/* 121D0C 80103C1C 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* 121D10 80103C20 AFB00010 */  sw         $s0, 0x10($sp)
/* 121D14 80103C24 00808021 */  addu       $s0, $a0, $zero
/* 121D18 80103C28 AFBF0018 */  sw         $ra, 0x18($sp)
/* 121D1C 80103C2C AFB10014 */  sw         $s1, 0x14($sp)
/* 121D20 80103C30 8E040354 */  lw         $a0, 0x354($s0)
/* 121D24 80103C34 0C0401B4 */  jal        func_menu_801006D0
/* 121D28 80103C38 24840004 */   addiu     $a0, $a0, 0x4
/* 121D2C 80103C3C 96110360 */  lhu        $s1, 0x360($s0)
/* 121D30 80103C40 24020003 */  addiu      $v0, $zero, 0x3
/* 121D34 80103C44 1622000D */  bne        $s1, $v0, .Lmenu_80103C7C
/* 121D38 80103C48 00000000 */   nop
/* 121D3C 80103C4C 8E040354 */  lw         $a0, 0x354($s0)
/* 121D40 80103C50 0C0401B4 */  jal        func_menu_801006D0
/* 121D44 80103C54 24840004 */   addiu     $a0, $a0, 0x4
/* 121D48 80103C58 8E040354 */  lw         $a0, 0x354($s0)
/* 121D4C 80103C5C 0C0401BF */  jal        func_menu_801006FC
/* 121D50 80103C60 24840004 */   addiu     $a0, $a0, 0x4
/* 121D54 80103C64 3042FFFF */  andi       $v0, $v0, 0xFFFF
/* 121D58 80103C68 10510004 */  beq        $v0, $s1, .Lmenu_80103C7C
/* 121D5C 80103C6C 24050003 */   addiu     $a1, $zero, 0x3
/* 121D60 80103C70 8E040354 */  lw         $a0, 0x354($s0)
/* 121D64 80103C74 0C0401A6 */  jal        func_menu_80100698
/* 121D68 80103C78 24840004 */   addiu     $a0, $a0, 0x4
.Lmenu_80103C7C:
/* 121D6C 80103C7C 8FBF0018 */  lw         $ra, 0x18($sp)
/* 121D70 80103C80 8FB10014 */  lw         $s1, 0x14($sp)
/* 121D74 80103C84 8FB00010 */  lw         $s0, 0x10($sp)
/* 121D78 80103C88 03E00008 */  jr         $ra
/* 121D7C 80103C8C 27BD0020 */   addiu     $sp, $sp, 0x20

glabel func_menu_80103C90
/* 121D80 80103C90 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 121D84 80103C94 AFB00010 */  sw         $s0, 0x10($sp)
/* 121D88 80103C98 00808021 */  addu       $s0, $a0, $zero
/* 121D8C 80103C9C 2602047C */  addiu      $v0, $s0, 0x47C
/* 121D90 80103CA0 14A20008 */  bne        $a1, $v0, .Lmenu_80103CC4
/* 121D94 80103CA4 AFBF0014 */   sw        $ra, 0x14($sp)
/* 121D98 80103CA8 8E040284 */  lw         $a0, 0x284($s0)
/* 121D9C 80103CAC 0C045449 */  jal        func_menu_80115124
/* 121DA0 80103CB0 00000000 */   nop
/* 121DA4 80103CB4 24020001 */  addiu      $v0, $zero, 0x1
/* 121DA8 80103CB8 AE020364 */  sw         $v0, 0x364($s0)
/* 121DAC 80103CBC 24020003 */  addiu      $v0, $zero, 0x3
/* 121DB0 80103CC0 A6020360 */  sh         $v0, 0x360($s0)
.Lmenu_80103CC4:
/* 121DB4 80103CC4 8FBF0014 */  lw         $ra, 0x14($sp)
/* 121DB8 80103CC8 8FB00010 */  lw         $s0, 0x10($sp)
/* 121DBC 80103CCC 03E00008 */  jr         $ra
/* 121DC0 80103CD0 27BD0018 */   addiu     $sp, $sp, 0x18
