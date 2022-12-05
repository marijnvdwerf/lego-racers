.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text, "ax"

glabel func_menu_800F66A0
/* 114790 800F66A0 27BDFFD8 */  addiu      $sp, $sp, -0x28
/* 114794 800F66A4 AFB20018 */  sw         $s2, 0x18($sp)
/* 114798 800F66A8 00809021 */  addu       $s2, $a0, $zero
/* 11479C 800F66AC AFBF0020 */  sw         $ra, 0x20($sp)
/* 1147A0 800F66B0 AFB3001C */  sw         $s3, 0x1C($sp)
/* 1147A4 800F66B4 AFB10014 */  sw         $s1, 0x14($sp)
/* 1147A8 800F66B8 0C0401D8 */  jal        func_menu_80100760
/* 1147AC 800F66BC AFB00010 */   sw        $s0, 0x10($sp)
/* 1147B0 800F66C0 26440368 */  addiu      $a0, $s2, 0x368
/* 1147B4 800F66C4 3C02800D */  lui        $v0, %hi(D_menu_800CC448)
/* 1147B8 800F66C8 2442C448 */  addiu      $v0, $v0, %lo(D_menu_800CC448)
/* 1147BC 800F66CC 0C047BA4 */  jal        func_menu_8011EE90
/* 1147C0 800F66D0 AE420000 */   sw        $v0, 0x0($s2)
/* 1147C4 800F66D4 265003C4 */  addiu      $s0, $s2, 0x3C4
/* 1147C8 800F66D8 0C04729C */  jal        func_menu_8011CA70
/* 1147CC 800F66DC 02002021 */   addu      $a0, $s0, $zero
/* 1147D0 800F66E0 26440458 */  addiu      $a0, $s2, 0x458
/* 1147D4 800F66E4 3C02800D */  lui        $v0, %hi(D_menu_800D0740)
/* 1147D8 800F66E8 24420740 */  addiu      $v0, $v0, %lo(D_menu_800D0740)
/* 1147DC 800F66EC 0C044D38 */  jal        func_menu_801134E0
/* 1147E0 800F66F0 AE020054 */   sw        $v0, 0x54($s0)
/* 1147E4 800F66F4 0C041E04 */  jal        func_menu_80107810
/* 1147E8 800F66F8 26440E4C */   addiu     $a0, $s2, 0xE4C
/* 1147EC 800F66FC 0C044D38 */  jal        func_menu_801134E0
/* 1147F0 800F6700 26440FA0 */   addiu     $a0, $s2, 0xFA0
/* 1147F4 800F6704 26511994 */  addiu      $s1, $s2, 0x1994
/* 1147F8 800F6708 2410000B */  addiu      $s0, $zero, 0xB
/* 1147FC 800F670C 2413FFFF */  addiu      $s3, $zero, -0x1
.Lmenu_800F6710:
/* 114800 800F6710 0C047BA4 */  jal        func_menu_8011EE90
/* 114804 800F6714 02202021 */   addu      $a0, $s1, $zero
/* 114808 800F6718 2610FFFF */  addiu      $s0, $s0, -0x1
/* 11480C 800F671C 1613FFFC */  bne        $s0, $s3, .Lmenu_800F6710
/* 114810 800F6720 2631005C */   addiu     $s1, $s1, 0x5C
/* 114814 800F6724 0C044424 */  jal        func_menu_80111090
/* 114818 800F6728 26441DE4 */   addiu     $a0, $s2, 0x1DE4
/* 11481C 800F672C 0C03DCF0 */  jal        func_menu_800F73C0
/* 114820 800F6730 264422BC */   addiu     $a0, $s2, 0x22BC
/* 114824 800F6734 0C040F38 */  jal        func_menu_80103CE0
/* 114828 800F6738 2644258C */   addiu     $a0, $s2, 0x258C
/* 11482C 800F673C 0C03DA16 */  jal        func_menu_800F6858
/* 114830 800F6740 02402021 */   addu      $a0, $s2, $zero
/* 114834 800F6744 02401021 */  addu       $v0, $s2, $zero
/* 114838 800F6748 8FBF0020 */  lw         $ra, 0x20($sp)
/* 11483C 800F674C 8FB3001C */  lw         $s3, 0x1C($sp)
/* 114840 800F6750 8FB20018 */  lw         $s2, 0x18($sp)
/* 114844 800F6754 8FB10014 */  lw         $s1, 0x14($sp)
/* 114848 800F6758 8FB00010 */  lw         $s0, 0x10($sp)
/* 11484C 800F675C 03E00008 */  jr         $ra
/* 114850 800F6760 27BD0028 */   addiu     $sp, $sp, 0x28

glabel func_menu_800F6764
/* 114854 800F6764 27BDFFD8 */  addiu      $sp, $sp, -0x28
/* 114858 800F6768 AFB10014 */  sw         $s1, 0x14($sp)
/* 11485C 800F676C 00808821 */  addu       $s1, $a0, $zero
/* 114860 800F6770 AFB3001C */  sw         $s3, 0x1C($sp)
/* 114864 800F6774 00A09821 */  addu       $s3, $a1, $zero
/* 114868 800F6778 3C02800D */  lui        $v0, %hi(D_menu_800CC448)
/* 11486C 800F677C 2442C448 */  addiu      $v0, $v0, %lo(D_menu_800CC448)
/* 114870 800F6780 AFBF0020 */  sw         $ra, 0x20($sp)
/* 114874 800F6784 AFB20018 */  sw         $s2, 0x18($sp)
/* 114878 800F6788 AFB00010 */  sw         $s0, 0x10($sp)
/* 11487C 800F678C 0C040232 */  jal        func_menu_801008C8
/* 114880 800F6790 AE220000 */   sw        $v0, 0x0($s1)
/* 114884 800F6794 2624258C */  addiu      $a0, $s1, 0x258C
/* 114888 800F6798 0C040F4B */  jal        func_menu_80103D2C
/* 11488C 800F679C 24050002 */   addiu     $a1, $zero, 0x2
/* 114890 800F67A0 262422BC */  addiu      $a0, $s1, 0x22BC
/* 114894 800F67A4 0C03DD1B */  jal        func_menu_800F746C
/* 114898 800F67A8 24050002 */   addiu     $a1, $zero, 0x2
/* 11489C 800F67AC 26301DE4 */  addiu      $s0, $s1, 0x1DE4
/* 1148A0 800F67B0 02002021 */  addu       $a0, $s0, $zero
/* 1148A4 800F67B4 0C044435 */  jal        func_menu_801110D4
/* 1148A8 800F67B8 24050002 */   addiu     $a1, $zero, 0x2
/* 1148AC 800F67BC 26221994 */  addiu      $v0, $s1, 0x1994
/* 1148B0 800F67C0 1040000D */  beqz       $v0, .Lmenu_800F67F8
/* 1148B4 800F67C4 26240FA0 */   addiu     $a0, $s1, 0xFA0
/* 1148B8 800F67C8 1050000B */  beq        $v0, $s0, .Lmenu_800F67F8
/* 1148BC 800F67CC 00409021 */   addu      $s2, $v0, $zero
/* 1148C0 800F67D0 2610FFA4 */  addiu      $s0, $s0, -0x5C
.Lmenu_800F67D4:
/* 1148C4 800F67D4 8E020054 */  lw         $v0, 0x54($s0)
/* 1148C8 800F67D8 24050002 */  addiu      $a1, $zero, 0x2
/* 1148CC 800F67DC 84440010 */  lh         $a0, 0x10($v0)
/* 1148D0 800F67E0 8C420014 */  lw         $v0, 0x14($v0)
/* 1148D4 800F67E4 0040F809 */  jalr       $v0
/* 1148D8 800F67E8 02042021 */   addu      $a0, $s0, $a0
/* 1148DC 800F67EC 1650FFF9 */  bne        $s2, $s0, .Lmenu_800F67D4
/* 1148E0 800F67F0 2610FFA4 */   addiu     $s0, $s0, -0x5C
/* 1148E4 800F67F4 26240FA0 */  addiu      $a0, $s1, 0xFA0
.Lmenu_800F67F8:
/* 1148E8 800F67F8 0C044D49 */  jal        func_menu_80113524
/* 1148EC 800F67FC 24050002 */   addiu     $a1, $zero, 0x2
/* 1148F0 800F6800 26240E4C */  addiu      $a0, $s1, 0xE4C
/* 1148F4 800F6804 0C041E13 */  jal        func_menu_8010784C
/* 1148F8 800F6808 24050002 */   addiu     $a1, $zero, 0x2
/* 1148FC 800F680C 26240458 */  addiu      $a0, $s1, 0x458
/* 114900 800F6810 0C044D49 */  jal        func_menu_80113524
/* 114904 800F6814 24050002 */   addiu     $a1, $zero, 0x2
/* 114908 800F6818 262403C4 */  addiu      $a0, $s1, 0x3C4
/* 11490C 800F681C 0C0472AB */  jal        func_menu_8011CAAC
/* 114910 800F6820 24050002 */   addiu     $a1, $zero, 0x2
/* 114914 800F6824 26240368 */  addiu      $a0, $s1, 0x368
/* 114918 800F6828 0C047BB3 */  jal        func_menu_8011EECC
/* 11491C 800F682C 24050002 */   addiu     $a1, $zero, 0x2
/* 114920 800F6830 02202021 */  addu       $a0, $s1, $zero
/* 114924 800F6834 0C0401EF */  jal        func_menu_801007BC
/* 114928 800F6838 02602821 */   addu      $a1, $s3, $zero
/* 11492C 800F683C 8FBF0020 */  lw         $ra, 0x20($sp)
/* 114930 800F6840 8FB3001C */  lw         $s3, 0x1C($sp)
/* 114934 800F6844 8FB20018 */  lw         $s2, 0x18($sp)
/* 114938 800F6848 8FB10014 */  lw         $s1, 0x14($sp)
/* 11493C 800F684C 8FB00010 */  lw         $s0, 0x10($sp)
/* 114940 800F6850 03E00008 */  jr         $ra
/* 114944 800F6854 27BD0028 */   addiu     $sp, $sp, 0x28

glabel func_menu_800F6858
/* 114948 800F6858 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 11494C 800F685C AFB00010 */  sw         $s0, 0x10($sp)
/* 114950 800F6860 00808021 */  addu       $s0, $a0, $zero
/* 114954 800F6864 26042AA0 */  addiu      $a0, $s0, 0x2AA0
/* 114958 800F6868 24020001 */  addiu      $v0, $zero, 0x1
/* 11495C 800F686C 00002821 */  addu       $a1, $zero, $zero
/* 114960 800F6870 24060030 */  addiu      $a2, $zero, 0x30
/* 114964 800F6874 AFBF0014 */  sw         $ra, 0x14($sp)
/* 114968 800F6878 AE022A94 */  sw         $v0, 0x2A94($s0)
/* 11496C 800F687C AE022A98 */  sw         $v0, 0x2A98($s0)
/* 114970 800F6880 AE002A90 */  sw         $zero, 0x2A90($s0)
/* 114974 800F6884 AE002A8C */  sw         $zero, 0x2A8C($s0)
/* 114978 800F6888 AE002884 */  sw         $zero, 0x2884($s0)
/* 11497C 800F688C AE002880 */  sw         $zero, 0x2880($s0)
/* 114980 800F6890 AE00287C */  sw         $zero, 0x287C($s0)
/* 114984 800F6894 AE002AD0 */  sw         $zero, 0x2AD0($s0)
/* 114988 800F6898 0C000697 */  jal        func_80001A5C
/* 11498C 800F689C A2002A9C */   sb        $zero, 0x2A9C($s0)
/* 114990 800F68A0 0C040207 */  jal        func_menu_8010081C
/* 114994 800F68A4 02002021 */   addu      $a0, $s0, $zero
/* 114998 800F68A8 8FBF0014 */  lw         $ra, 0x14($sp)
/* 11499C 800F68AC 8FB00010 */  lw         $s0, 0x10($sp)
/* 1149A0 800F68B0 03E00008 */  jr         $ra
/* 1149A4 800F68B4 27BD0018 */   addiu     $sp, $sp, 0x18

glabel func_menu_800F68B8
/* 1149A8 800F68B8 27BDFFB0 */  addiu      $sp, $sp, -0x50
/* 1149AC 800F68BC AFB20048 */  sw         $s2, 0x48($sp)
/* 1149B0 800F68C0 00809021 */  addu       $s2, $a0, $zero
/* 1149B4 800F68C4 3C02800D */  lui        $v0, %hi(D_menu_800CC400)
/* 1149B8 800F68C8 2445C400 */  addiu      $a1, $v0, %lo(D_menu_800CC400)
/* 1149BC 800F68CC AFBF004C */  sw         $ra, 0x4C($sp)
/* 1149C0 800F68D0 AFB10044 */  sw         $s1, 0x44($sp)
/* 1149C4 800F68D4 10A00008 */  beqz       $a1, .Lmenu_800F68F8
/* 1149C8 800F68D8 AFB00040 */   sw        $s0, 0x40($sp)
/* 1149CC 800F68DC 3C108003 */  lui        $s0, %hi(D_8002FB34)
/* 1149D0 800F68E0 2610FB34 */  addiu      $s0, $s0, %lo(D_8002FB34)
/* 1149D4 800F68E4 02002021 */  addu       $a0, $s0, $zero
/* 1149D8 800F68E8 0C000708 */  jal        func_80001C20
/* 1149DC 800F68EC 24060100 */   addiu     $a2, $zero, 0x100
/* 1149E0 800F68F0 0803DA40 */  j          .Lmenu_800F6900
/* 1149E4 800F68F4 A20000FF */   sb        $zero, 0xFF($s0)
.Lmenu_800F68F8:
/* 1149E8 800F68F8 3C028003 */  lui        $v0, %hi(D_8002FB34)
/* 1149EC 800F68FC A040FB34 */  sb         $zero, %lo(D_8002FB34)($v0)
.Lmenu_800F6900:
/* 1149F0 800F6900 02402021 */  addu       $a0, $s2, $zero
/* 1149F4 800F6904 26451DE4 */  addiu      $a1, $s2, 0x1DE4
/* 1149F8 800F6908 00003021 */  addu       $a2, $zero, $zero
/* 1149FC 800F690C 0C046AA0 */  jal        func_menu_8011AA80
/* 114A00 800F6910 24070003 */   addiu     $a3, $zero, 0x3
/* 114A04 800F6914 3C02800D */  lui        $v0, %hi(D_menu_800CC410)
/* 114A08 800F6918 2445C410 */  addiu      $a1, $v0, %lo(D_menu_800CC410)
/* 114A0C 800F691C 10A00007 */  beqz       $a1, .Lmenu_800F693C
/* 114A10 800F6920 3C108003 */   lui       $s0, %hi(D_8002FB34)
/* 114A14 800F6924 2610FB34 */  addiu      $s0, $s0, %lo(D_8002FB34)
/* 114A18 800F6928 02002021 */  addu       $a0, $s0, $zero
/* 114A1C 800F692C 0C000708 */  jal        func_80001C20
/* 114A20 800F6930 24060100 */   addiu     $a2, $zero, 0x100
/* 114A24 800F6934 0803DA51 */  j          .Lmenu_800F6944
/* 114A28 800F6938 A20000FF */   sb        $zero, 0xFF($s0)
.Lmenu_800F693C:
/* 114A2C 800F693C 3C028003 */  lui        $v0, %hi(D_8002FB34)
/* 114A30 800F6940 A040FB34 */  sb         $zero, %lo(D_8002FB34)($v0)
.Lmenu_800F6944:
/* 114A34 800F6944 27A40010 */  addiu      $a0, $sp, 0x10
/* 114A38 800F6948 00002821 */  addu       $a1, $zero, $zero
/* 114A3C 800F694C 0C000697 */  jal        func_80001A5C
/* 114A40 800F6950 24060030 */   addiu     $a2, $zero, 0x30
/* 114A44 800F6954 8E4200B4 */  lw         $v0, 0xB4($s2)
/* 114A48 800F6958 3C01800D */  lui        $at, %hi(D_menu_800CC41C)
/* 114A4C 800F695C C420C41C */  lwc1       $f0, %lo(D_menu_800CC41C)($at)
/* 114A50 800F6960 3C01800D */  lui        $at, %hi(D_menu_800CC420)
/* 114A54 800F6964 C422C420 */  lwc1       $f2, %lo(D_menu_800CC420)($at)
/* 114A58 800F6968 AFA20010 */  sw         $v0, 0x10($sp)
/* 114A5C 800F696C 8E4200B8 */  lw         $v0, 0xB8($s2)
/* 114A60 800F6970 AFA20014 */  sw         $v0, 0x14($sp)
/* 114A64 800F6974 8E420280 */  lw         $v0, 0x280($s2)
/* 114A68 800F6978 26511DE4 */  addiu      $s1, $s2, 0x1DE4
/* 114A6C 800F697C AFB10018 */  sw         $s1, 0x18($sp)
/* 114A70 800F6980 AFA20020 */  sw         $v0, 0x20($sp)
/* 114A74 800F6984 8E420354 */  lw         $v0, 0x354($s2)
/* 114A78 800F6988 AFB20028 */  sw         $s2, 0x28($sp)
/* 114A7C 800F698C E7A00038 */  swc1       $f0, 0x38($sp)
/* 114A80 800F6990 AFA0002C */  sw         $zero, 0x2C($sp)
/* 114A84 800F6994 AFA00030 */  sw         $zero, 0x30($sp)
/* 114A88 800F6998 E7A20034 */  swc1       $f2, 0x34($sp)
/* 114A8C 800F699C AFA20024 */  sw         $v0, 0x24($sp)
/* 114A90 800F69A0 8E420354 */  lw         $v0, 0x354($s2)
/* 114A94 800F69A4 265022BC */  addiu      $s0, $s2, 0x22BC
/* 114A98 800F69A8 8C420000 */  lw         $v0, 0x0($v0)
/* 114A9C 800F69AC 02002021 */  addu       $a0, $s0, $zero
/* 114AA0 800F69B0 8C42001C */  lw         $v0, 0x1C($v0)
/* 114AA4 800F69B4 27A50010 */  addiu      $a1, $sp, 0x10
/* 114AA8 800F69B8 0C03DD50 */  jal        func_menu_800F7540
/* 114AAC 800F69BC AFA2003C */   sw        $v0, 0x3C($sp)
/* 114AB0 800F69C0 02202021 */  addu       $a0, $s1, $zero
/* 114AB4 800F69C4 0C0441DB */  jal        func_menu_8011076C
/* 114AB8 800F69C8 02002821 */   addu      $a1, $s0, $zero
/* 114ABC 800F69CC 02002021 */  addu       $a0, $s0, $zero
/* 114AC0 800F69D0 0C03DF57 */  jal        func_menu_800F7D5C
/* 114AC4 800F69D4 00002821 */   addu      $a1, $zero, $zero
/* 114AC8 800F69D8 8FBF004C */  lw         $ra, 0x4C($sp)
/* 114ACC 800F69DC 8FB20048 */  lw         $s2, 0x48($sp)
/* 114AD0 800F69E0 8FB10044 */  lw         $s1, 0x44($sp)
/* 114AD4 800F69E4 8FB00040 */  lw         $s0, 0x40($sp)
/* 114AD8 800F69E8 03E00008 */  jr         $ra
/* 114ADC 800F69EC 27BD0050 */   addiu     $sp, $sp, 0x50

glabel func_menu_800F69F0
/* 114AE0 800F69F0 27BDFFD8 */  addiu      $sp, $sp, -0x28
/* 114AE4 800F69F4 AFB20020 */  sw         $s2, 0x20($sp)
/* 114AE8 800F69F8 00809021 */  addu       $s2, $a0, $zero
/* 114AEC 800F69FC AFB00018 */  sw         $s0, 0x18($sp)
/* 114AF0 800F6A00 265003C4 */  addiu      $s0, $s2, 0x3C4
/* 114AF4 800F6A04 02002821 */  addu       $a1, $s0, $zero
/* 114AF8 800F6A08 24060047 */  addiu      $a2, $zero, 0x47
/* 114AFC 800F6A0C 240700B7 */  addiu      $a3, $zero, 0xB7
/* 114B00 800F6A10 AFBF0024 */  sw         $ra, 0x24($sp)
/* 114B04 800F6A14 0C046966 */  jal        func_menu_8011A598
/* 114B08 800F6A18 AFB1001C */   sw        $s1, 0x1C($sp)
/* 114B0C 800F6A1C 24020056 */  addiu      $v0, $zero, 0x56
/* 114B10 800F6A20 02402021 */  addu       $a0, $s2, $zero
/* 114B14 800F6A24 26450458 */  addiu      $a1, $s2, 0x458
/* 114B18 800F6A28 02003021 */  addu       $a2, $s0, $zero
/* 114B1C 800F6A2C 240700B2 */  addiu      $a3, $zero, 0xB2
/* 114B20 800F6A30 0C04699A */  jal        func_menu_8011A668
/* 114B24 800F6A34 AFA20010 */   sw        $v0, 0x10($sp)
/* 114B28 800F6A38 00008021 */  addu       $s0, $zero, $zero
/* 114B2C 800F6A3C 24111994 */  addiu      $s1, $zero, 0x1994
.Lmenu_800F6A40:
/* 114B30 800F6A40 02402021 */  addu       $a0, $s2, $zero
/* 114B34 800F6A44 02512821 */  addu       $a1, $s2, $s1
/* 114B38 800F6A48 240600A5 */  addiu      $a2, $zero, 0xA5
/* 114B3C 800F6A4C 260700A6 */  addiu      $a3, $s0, 0xA6
/* 114B40 800F6A50 0C04675B */  jal        func_menu_80119D6C
/* 114B44 800F6A54 30E7FFFF */   andi      $a3, $a3, 0xFFFF
/* 114B48 800F6A58 26100001 */  addiu      $s0, $s0, 0x1
/* 114B4C 800F6A5C 2E02000C */  sltiu      $v0, $s0, 0xC
/* 114B50 800F6A60 1440FFF7 */  bnez       $v0, .Lmenu_800F6A40
/* 114B54 800F6A64 2631005C */   addiu     $s1, $s1, 0x5C
/* 114B58 800F6A68 8FBF0024 */  lw         $ra, 0x24($sp)
/* 114B5C 800F6A6C 8FB20020 */  lw         $s2, 0x20($sp)
/* 114B60 800F6A70 8FB1001C */  lw         $s1, 0x1C($sp)
/* 114B64 800F6A74 8FB00018 */  lw         $s0, 0x18($sp)
/* 114B68 800F6A78 03E00008 */  jr         $ra
/* 114B6C 800F6A7C 27BD0028 */   addiu     $sp, $sp, 0x28

glabel func_menu_800F6A80
/* 114B70 800F6A80 27BDFFD8 */  addiu      $sp, $sp, -0x28
/* 114B74 800F6A84 AFB00018 */  sw         $s0, 0x18($sp)
/* 114B78 800F6A88 00808021 */  addu       $s0, $a0, $zero
/* 114B7C 800F6A8C 26050368 */  addiu      $a1, $s0, 0x368
/* 114B80 800F6A90 24060052 */  addiu      $a2, $zero, 0x52
/* 114B84 800F6A94 00C03821 */  addu       $a3, $a2, $zero
/* 114B88 800F6A98 AFBF0020 */  sw         $ra, 0x20($sp)
/* 114B8C 800F6A9C 0C04675B */  jal        func_menu_80119D6C
/* 114B90 800F6AA0 AFB1001C */   sw        $s1, 0x1C($sp)
/* 114B94 800F6AA4 0C03DA2E */  jal        func_menu_800F68B8
/* 114B98 800F6AA8 02002021 */   addu      $a0, $s0, $zero
/* 114B9C 800F6AAC 0C03DA7C */  jal        func_menu_800F69F0
/* 114BA0 800F6AB0 02002021 */   addu      $a0, $s0, $zero
/* 114BA4 800F6AB4 02002021 */  addu       $a0, $s0, $zero
/* 114BA8 800F6AB8 26110E4C */  addiu      $s1, $s0, 0xE4C
/* 114BAC 800F6ABC 02202821 */  addu       $a1, $s1, $zero
/* 114BB0 800F6AC0 240600B6 */  addiu      $a2, $zero, 0xB6
/* 114BB4 800F6AC4 0C040251 */  jal        func_menu_80100944
/* 114BB8 800F6AC8 24070044 */   addiu     $a3, $zero, 0x44
/* 114BBC 800F6ACC 02002021 */  addu       $a0, $s0, $zero
/* 114BC0 800F6AD0 26050FA0 */  addiu      $a1, $s0, 0xFA0
/* 114BC4 800F6AD4 02203021 */  addu       $a2, $s1, $zero
/* 114BC8 800F6AD8 240700B4 */  addiu      $a3, $zero, 0xB4
/* 114BCC 800F6ADC 240200D8 */  addiu      $v0, $zero, 0xD8
/* 114BD0 800F6AE0 0C04699A */  jal        func_menu_8011A668
/* 114BD4 800F6AE4 AFA20010 */   sw        $v0, 0x10($sp)
/* 114BD8 800F6AE8 8E022AA0 */  lw         $v0, 0x2AA0($s0)
/* 114BDC 800F6AEC 8E040354 */  lw         $a0, 0x354($s0)
/* 114BE0 800F6AF0 00021840 */  sll        $v1, $v0, 1
/* 114BE4 800F6AF4 00621821 */  addu       $v1, $v1, $v0
/* 114BE8 800F6AF8 8C822CB8 */  lw         $v0, 0x2CB8($a0)
/* 114BEC 800F6AFC 000318C0 */  sll        $v1, $v1, 3
/* 114BF0 800F6B00 00431021 */  addu       $v0, $v0, $v1
/* 114BF4 800F6B04 8C450008 */  lw         $a1, 0x8($v0)
/* 114BF8 800F6B08 0C041EBF */  jal        func_menu_80107AFC
/* 114BFC 800F6B0C 02202021 */   addu      $a0, $s1, $zero
/* 114C00 800F6B10 8FBF0020 */  lw         $ra, 0x20($sp)
/* 114C04 800F6B14 8FB1001C */  lw         $s1, 0x1C($sp)
/* 114C08 800F6B18 8FB00018 */  lw         $s0, 0x18($sp)
/* 114C0C 800F6B1C 03E00008 */  jr         $ra
/* 114C10 800F6B20 27BD0028 */   addiu     $sp, $sp, 0x28

glabel func_menu_800F6B24
/* 114C14 800F6B24 27BDFFD8 */  addiu      $sp, $sp, -0x28
/* 114C18 800F6B28 24020078 */  addiu      $v0, $zero, 0x78
/* 114C1C 800F6B2C A3A20012 */  sb         $v0, 0x12($sp)
/* 114C20 800F6B30 A3A20011 */  sb         $v0, 0x11($sp)
/* 114C24 800F6B34 A3A20010 */  sb         $v0, 0x10($sp)
/* 114C28 800F6B38 A3A20013 */  sb         $v0, 0x13($sp)
/* 114C2C 800F6B3C 240200FF */  addiu      $v0, $zero, 0xFF
/* 114C30 800F6B40 27A50010 */  addiu      $a1, $sp, 0x10
/* 114C34 800F6B44 27A60018 */  addiu      $a2, $sp, 0x18
/* 114C38 800F6B48 AFBF0020 */  sw         $ra, 0x20($sp)
/* 114C3C 800F6B4C A3A2001A */  sb         $v0, 0x1A($sp)
/* 114C40 800F6B50 A3A20019 */  sb         $v0, 0x19($sp)
/* 114C44 800F6B54 A3A20018 */  sb         $v0, 0x18($sp)
/* 114C48 800F6B58 0C0402F1 */  jal        func_menu_80100BC4
/* 114C4C 800F6B5C A3A2001B */   sb        $v0, 0x1B($sp)
/* 114C50 800F6B60 8FBF0020 */  lw         $ra, 0x20($sp)
/* 114C54 800F6B64 03E00008 */  jr         $ra
/* 114C58 800F6B68 27BD0028 */   addiu     $sp, $sp, 0x28

glabel func_menu_800F6B6C
/* 114C5C 800F6B6C 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 114C60 800F6B70 AFB00010 */  sw         $s0, 0x10($sp)
/* 114C64 800F6B74 AFBF0014 */  sw         $ra, 0x14($sp)
/* 114C68 800F6B78 0C040214 */  jal        func_menu_80100850
/* 114C6C 800F6B7C 00808021 */   addu      $s0, $a0, $zero
/* 114C70 800F6B80 5040000A */  beql       $v0, $zero, .Lmenu_800F6BAC
/* 114C74 800F6B84 00001021 */   addu      $v0, $zero, $zero
/* 114C78 800F6B88 0C03DAEF */  jal        func_menu_800F6BBC
/* 114C7C 800F6B8C 02002021 */   addu      $a0, $s0, $zero
/* 114C80 800F6B90 8E020000 */  lw         $v0, 0x0($s0)
/* 114C84 800F6B94 26050FA0 */  addiu      $a1, $s0, 0xFA0
/* 114C88 800F6B98 84440090 */  lh         $a0, 0x90($v0)
/* 114C8C 800F6B9C 8C420094 */  lw         $v0, 0x94($v0)
/* 114C90 800F6BA0 0040F809 */  jalr       $v0
/* 114C94 800F6BA4 02042021 */   addu      $a0, $s0, $a0
/* 114C98 800F6BA8 24020001 */  addiu      $v0, $zero, 0x1
.Lmenu_800F6BAC:
/* 114C9C 800F6BAC 8FBF0014 */  lw         $ra, 0x14($sp)
/* 114CA0 800F6BB0 8FB00010 */  lw         $s0, 0x10($sp)
/* 114CA4 800F6BB4 03E00008 */  jr         $ra
/* 114CA8 800F6BB8 27BD0018 */   addiu     $sp, $sp, 0x18

glabel func_menu_800F6BBC
/* 114CAC 800F6BBC 27BDFFD8 */  addiu      $sp, $sp, -0x28
/* 114CB0 800F6BC0 AFB3001C */  sw         $s3, 0x1C($sp)
/* 114CB4 800F6BC4 00809821 */  addu       $s3, $a0, $zero
/* 114CB8 800F6BC8 AFB10014 */  sw         $s1, 0x14($sp)
/* 114CBC 800F6BCC 24110001 */  addiu      $s1, $zero, 0x1
/* 114CC0 800F6BD0 AFBF0020 */  sw         $ra, 0x20($sp)
/* 114CC4 800F6BD4 AFB20018 */  sw         $s2, 0x18($sp)
/* 114CC8 800F6BD8 AFB00010 */  sw         $s0, 0x10($sp)
/* 114CCC 800F6BDC 8E640354 */  lw         $a0, 0x354($s3)
/* 114CD0 800F6BE0 24100003 */  addiu      $s0, $zero, 0x3
/* 114CD4 800F6BE4 0C03CA0F */  jal        func_menu_800F283C
/* 114CD8 800F6BE8 24842624 */   addiu     $a0, $a0, 0x2624
/* 114CDC 800F6BEC 02202021 */  addu       $a0, $s1, $zero
/* 114CE0 800F6BF0 2663000C */  addiu      $v1, $s3, 0xC
/* 114CE4 800F6BF4 A2622A9C */  sb         $v0, 0x2A9C($s3)
.Lmenu_800F6BF8:
/* 114CE8 800F6BF8 AC642AA0 */  sw         $a0, 0x2AA0($v1)
/* 114CEC 800F6BFC 2610FFFF */  addiu      $s0, $s0, -0x1
/* 114CF0 800F6C00 0601FFFD */  bgez       $s0, .Lmenu_800F6BF8
/* 114CF4 800F6C04 2463FFFC */   addiu     $v1, $v1, -0x4
/* 114CF8 800F6C08 24100004 */  addiu      $s0, $zero, 0x4
/* 114CFC 800F6C0C 24040001 */  addiu      $a0, $zero, 0x1
/* 114D00 800F6C10 26630010 */  addiu      $v1, $s3, 0x10
.Lmenu_800F6C14:
/* 114D04 800F6C14 92622A9C */  lbu        $v0, 0x2A9C($s3)
/* 114D08 800F6C18 02221024 */  and        $v0, $s1, $v0
/* 114D0C 800F6C1C 54400001 */  bnel       $v0, $zero, .Lmenu_800F6C24
/* 114D10 800F6C20 AC642AA0 */   sw        $a0, 0x2AA0($v1)
.Lmenu_800F6C24:
/* 114D14 800F6C24 24630004 */  addiu      $v1, $v1, 0x4
/* 114D18 800F6C28 26100001 */  addiu      $s0, $s0, 0x1
/* 114D1C 800F6C2C 2E02000C */  sltiu      $v0, $s0, 0xC
/* 114D20 800F6C30 1440FFF8 */  bnez       $v0, .Lmenu_800F6C14
/* 114D24 800F6C34 00118840 */   sll       $s1, $s1, 1
/* 114D28 800F6C38 00008021 */  addu       $s0, $zero, $zero
/* 114D2C 800F6C3C 24110001 */  addiu      $s1, $zero, 0x1
.Lmenu_800F6C40:
/* 114D30 800F6C40 8E620354 */  lw         $v0, 0x354($s3)
/* 114D34 800F6C44 24442CF8 */  addiu      $a0, $v0, 0x2CF8
/* 114D38 800F6C48 8C8200D4 */  lw         $v0, 0xD4($a0)
/* 114D3C 800F6C4C 0202102A */  slt        $v0, $s0, $v0
/* 114D40 800F6C50 5040000C */  beql       $v0, $zero, .Lmenu_800F6C84
/* 114D44 800F6C54 00008021 */   addu      $s0, $zero, $zero
/* 114D48 800F6C58 0C036B6A */  jal        func_menu_800DADA8
/* 114D4C 800F6C5C 02002821 */   addu      $a1, $s0, $zero
/* 114D50 800F6C60 00402821 */  addu       $a1, $v0, $zero
/* 114D54 800F6C64 8E640354 */  lw         $a0, 0x354($s3)
/* 114D58 800F6C68 26100001 */  addiu      $s0, $s0, 0x1
/* 114D5C 800F6C6C 0C0372DB */  jal        func_menu_800DCB6C
/* 114D60 800F6C70 24842CAC */   addiu     $a0, $a0, 0x2CAC
/* 114D64 800F6C74 00021080 */  sll        $v0, $v0, 2
/* 114D68 800F6C78 02621021 */  addu       $v0, $s3, $v0
/* 114D6C 800F6C7C 0803DB10 */  j          .Lmenu_800F6C40
/* 114D70 800F6C80 AC512AA0 */   sw        $s1, 0x2AA0($v0)
.Lmenu_800F6C84:
/* 114D74 800F6C84 24121994 */  addiu      $s2, $zero, 0x1994
/* 114D78 800F6C88 02608821 */  addu       $s1, $s3, $zero
.Lmenu_800F6C8C:
/* 114D7C 800F6C8C 8E222AA0 */  lw         $v0, 0x2AA0($s1)
/* 114D80 800F6C90 10400003 */  beqz       $v0, .Lmenu_800F6CA0
/* 114D84 800F6C94 266403C4 */   addiu     $a0, $s3, 0x3C4
/* 114D88 800F6C98 0C047346 */  jal        func_menu_8011CD18
/* 114D8C 800F6C9C 02722821 */   addu      $a1, $s3, $s2
.Lmenu_800F6CA0:
/* 114D90 800F6CA0 2652005C */  addiu      $s2, $s2, 0x5C
/* 114D94 800F6CA4 26100001 */  addiu      $s0, $s0, 0x1
/* 114D98 800F6CA8 2E02000C */  sltiu      $v0, $s0, 0xC
/* 114D9C 800F6CAC 1440FFF7 */  bnez       $v0, .Lmenu_800F6C8C
/* 114DA0 800F6CB0 26310004 */   addiu     $s1, $s1, 0x4
/* 114DA4 800F6CB4 266403C4 */  addiu      $a0, $s3, 0x3C4
/* 114DA8 800F6CB8 0C0472E9 */  jal        func_menu_8011CBA4
/* 114DAC 800F6CBC 00002821 */   addu      $a1, $zero, $zero
/* 114DB0 800F6CC0 8FBF0020 */  lw         $ra, 0x20($sp)
/* 114DB4 800F6CC4 8FB3001C */  lw         $s3, 0x1C($sp)
/* 114DB8 800F6CC8 8FB20018 */  lw         $s2, 0x18($sp)
/* 114DBC 800F6CCC 8FB10014 */  lw         $s1, 0x14($sp)
/* 114DC0 800F6CD0 8FB00010 */  lw         $s0, 0x10($sp)
/* 114DC4 800F6CD4 03E00008 */  jr         $ra
/* 114DC8 800F6CD8 27BD0028 */   addiu     $sp, $sp, 0x28

glabel func_menu_800F6CDC
/* 114DCC 800F6CDC 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 114DD0 800F6CE0 AFB00010 */  sw         $s0, 0x10($sp)
/* 114DD4 800F6CE4 AFBF0014 */  sw         $ra, 0x14($sp)
/* 114DD8 800F6CE8 0C03DB43 */  jal        func_menu_800F6D0C
/* 114DDC 800F6CEC 00808021 */   addu      $s0, $a0, $zero
/* 114DE0 800F6CF0 8E040354 */  lw         $a0, 0x354($s0)
/* 114DE4 800F6CF4 0C0401B4 */  jal        func_menu_801006D0
/* 114DE8 800F6CF8 24840004 */   addiu     $a0, $a0, 0x4
/* 114DEC 800F6CFC 8FBF0014 */  lw         $ra, 0x14($sp)
/* 114DF0 800F6D00 8FB00010 */  lw         $s0, 0x10($sp)
/* 114DF4 800F6D04 03E00008 */  jr         $ra
/* 114DF8 800F6D08 27BD0018 */   addiu     $sp, $sp, 0x18

glabel func_menu_800F6D0C
/* 114DFC 800F6D0C 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* 114E00 800F6D10 AFB00010 */  sw         $s0, 0x10($sp)
/* 114E04 800F6D14 00808021 */  addu       $s0, $a0, $zero
/* 114E08 800F6D18 AFB10014 */  sw         $s1, 0x14($sp)
/* 114E0C 800F6D1C 26112888 */  addiu      $s1, $s0, 0x2888
/* 114E10 800F6D20 02202021 */  addu       $a0, $s1, $zero
/* 114E14 800F6D24 00002821 */  addu       $a1, $zero, $zero
/* 114E18 800F6D28 AFBF0018 */  sw         $ra, 0x18($sp)
/* 114E1C 800F6D2C 0C000697 */  jal        func_80001A5C
/* 114E20 800F6D30 24060202 */   addiu     $a2, $zero, 0x202
/* 114E24 800F6D34 8E040354 */  lw         $a0, 0x354($s0)
/* 114E28 800F6D38 02202821 */  addu       $a1, $s1, $zero
/* 114E2C 800F6D3C 0C036F4C */  jal        func_menu_800DBD30
/* 114E30 800F6D40 24842CF8 */   addiu     $a0, $a0, 0x2CF8
/* 114E34 800F6D44 8E040354 */  lw         $a0, 0x354($s0)
/* 114E38 800F6D48 02202821 */  addu       $a1, $s1, $zero
/* 114E3C 800F6D4C 0C03BC83 */  jal        func_menu_800EF20C
/* 114E40 800F6D50 24842A5C */   addiu     $a0, $a0, 0x2A5C
/* 114E44 800F6D54 8FBF0018 */  lw         $ra, 0x18($sp)
/* 114E48 800F6D58 8FB10014 */  lw         $s1, 0x14($sp)
/* 114E4C 800F6D5C 8FB00010 */  lw         $s0, 0x10($sp)
/* 114E50 800F6D60 03E00008 */  jr         $ra
/* 114E54 800F6D64 27BD0020 */   addiu     $sp, $sp, 0x20

glabel func_menu_800F6D68
/* 114E58 800F6D68 27BDFFD0 */  addiu      $sp, $sp, -0x30
/* 114E5C 800F6D6C AFB20018 */  sw         $s2, 0x18($sp)
/* 114E60 800F6D70 00809021 */  addu       $s2, $a0, $zero
/* 114E64 800F6D74 AFB10014 */  sw         $s1, 0x14($sp)
/* 114E68 800F6D78 00A08821 */  addu       $s1, $a1, $zero
/* 114E6C 800F6D7C AFB3001C */  sw         $s3, 0x1C($sp)
/* 114E70 800F6D80 AFB50024 */  sw         $s5, 0x24($sp)
/* 114E74 800F6D84 00E0A821 */  addu       $s5, $a3, $zero
/* 114E78 800F6D88 AFB40020 */  sw         $s4, 0x20($sp)
/* 114E7C 800F6D8C 32B4FFFF */  andi       $s4, $s5, 0xFFFF
/* 114E80 800F6D90 0014102B */  sltu       $v0, $zero, $s4
/* 114E84 800F6D94 AFB60028 */  sw         $s6, 0x28($sp)
/* 114E88 800F6D98 0002B0C0 */  sll        $s6, $v0, 3
/* 114E8C 800F6D9C 24030006 */  addiu      $v1, $zero, 0x6
/* 114E90 800F6DA0 AFBF002C */  sw         $ra, 0x2C($sp)
/* 114E94 800F6DA4 AFB00010 */  sw         $s0, 0x10($sp)
/* 114E98 800F6DA8 8E422A94 */  lw         $v0, 0x2A94($s2)
/* 114E9C 800F6DAC 8FA40040 */  lw         $a0, 0x40($sp)
/* 114EA0 800F6DB0 1043002D */  beq        $v0, $v1, .Lmenu_800F6E68
/* 114EA4 800F6DB4 00C09821 */   addu      $s3, $a2, $zero
/* 114EA8 800F6DB8 12200005 */  beqz       $s1, .Lmenu_800F6DD0
/* 114EAC 800F6DBC 265022BC */   addiu     $s0, $s2, 0x22BC
/* 114EB0 800F6DC0 52600004 */  beql       $s3, $zero, .Lmenu_800F6DD4
/* 114EB4 800F6DC4 02002021 */   addu      $a0, $s0, $zero
/* 114EB8 800F6DC8 10800014 */  beqz       $a0, .Lmenu_800F6E1C
/* 114EBC 800F6DCC 02002021 */   addu      $a0, $s0, $zero
.Lmenu_800F6DD0:
/* 114EC0 800F6DD0 02002021 */  addu       $a0, $s0, $zero
.Lmenu_800F6DD4:
/* 114EC4 800F6DD4 0C03E093 */  jal        func_menu_800F824C
/* 114EC8 800F6DD8 02202821 */   addu      $a1, $s1, $zero
/* 114ECC 800F6DDC 00408821 */  addu       $s1, $v0, $zero
/* 114ED0 800F6DE0 02002021 */  addu       $a0, $s0, $zero
/* 114ED4 800F6DE4 0C03E0CE */  jal        func_menu_800F8338
/* 114ED8 800F6DE8 02602821 */   addu      $a1, $s3, $zero
/* 114EDC 800F6DEC 02228825 */  or         $s1, $s1, $v0
/* 114EE0 800F6DF0 12200004 */  beqz       $s1, .Lmenu_800F6E04
/* 114EE4 800F6DF4 32A5FFFF */   andi      $a1, $s5, 0xFFFF
/* 114EE8 800F6DF8 8E440280 */  lw         $a0, 0x280($s2)
/* 114EEC 800F6DFC 0803DB83 */  j          .Lmenu_800F6E0C
/* 114EF0 800F6E00 00000000 */   nop
.Lmenu_800F6E04:
/* 114EF4 800F6E04 8E440280 */  lw         $a0, 0x280($s2)
/* 114EF8 800F6E08 02C02821 */  addu       $a1, $s6, $zero
.Lmenu_800F6E0C:
/* 114EFC 800F6E0C 0C047910 */  jal        func_menu_8011E440
/* 114F00 800F6E10 00000000 */   nop
/* 114F04 800F6E14 0803DB9B */  j          .Lmenu_800F6E6C
/* 114F08 800F6E18 02201021 */   addu      $v0, $s1, $zero
.Lmenu_800F6E1C:
/* 114F0C 800F6E1C 0C03E093 */  jal        func_menu_800F824C
/* 114F10 800F6E20 02202821 */   addu      $a1, $s1, $zero
/* 114F14 800F6E24 1040000A */  beqz       $v0, .Lmenu_800F6E50
/* 114F18 800F6E28 02002021 */   addu      $a0, $s0, $zero
/* 114F1C 800F6E2C 0C03E0CE */  jal        func_menu_800F8338
/* 114F20 800F6E30 02602821 */   addu      $a1, $s3, $zero
/* 114F24 800F6E34 10400007 */  beqz       $v0, .Lmenu_800F6E54
/* 114F28 800F6E38 264422BC */   addiu     $a0, $s2, 0x22BC
/* 114F2C 800F6E3C 8E440280 */  lw         $a0, 0x280($s2)
/* 114F30 800F6E40 0C047910 */  jal        func_menu_8011E440
/* 114F34 800F6E44 02802821 */   addu      $a1, $s4, $zero
/* 114F38 800F6E48 0803DB9B */  j          .Lmenu_800F6E6C
/* 114F3C 800F6E4C 24020001 */   addiu     $v0, $zero, 0x1
.Lmenu_800F6E50:
/* 114F40 800F6E50 264422BC */  addiu      $a0, $s2, 0x22BC
.Lmenu_800F6E54:
/* 114F44 800F6E54 0C03E093 */  jal        func_menu_800F824C
/* 114F48 800F6E58 00112823 */   negu      $a1, $s1
/* 114F4C 800F6E5C 8E440280 */  lw         $a0, 0x280($s2)
/* 114F50 800F6E60 0C047910 */  jal        func_menu_8011E440
/* 114F54 800F6E64 02C02821 */   addu      $a1, $s6, $zero
.Lmenu_800F6E68:
/* 114F58 800F6E68 00001021 */  addu       $v0, $zero, $zero
.Lmenu_800F6E6C:
/* 114F5C 800F6E6C 8FBF002C */  lw         $ra, 0x2C($sp)
/* 114F60 800F6E70 8FB60028 */  lw         $s6, 0x28($sp)
/* 114F64 800F6E74 8FB50024 */  lw         $s5, 0x24($sp)
/* 114F68 800F6E78 8FB40020 */  lw         $s4, 0x20($sp)
/* 114F6C 800F6E7C 8FB3001C */  lw         $s3, 0x1C($sp)
/* 114F70 800F6E80 8FB20018 */  lw         $s2, 0x18($sp)
/* 114F74 800F6E84 8FB10014 */  lw         $s1, 0x14($sp)
/* 114F78 800F6E88 8FB00010 */  lw         $s0, 0x10($sp)
/* 114F7C 800F6E8C 03E00008 */  jr         $ra
/* 114F80 800F6E90 27BD0030 */   addiu     $sp, $sp, 0x30

glabel func_menu_800F6E94
/* 114F84 800F6E94 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* 114F88 800F6E98 AFB00010 */  sw         $s0, 0x10($sp)
/* 114F8C 800F6E9C 00808021 */  addu       $s0, $a0, $zero
/* 114F90 800F6EA0 AFB10014 */  sw         $s1, 0x14($sp)
/* 114F94 800F6EA4 AFBF0018 */  sw         $ra, 0x18($sp)
/* 114F98 800F6EA8 8E032A94 */  lw         $v1, 0x2A94($s0)
/* 114F9C 800F6EAC 24020006 */  addiu      $v0, $zero, 0x6
/* 114FA0 800F6EB0 10620016 */  beq        $v1, $v0, .Lmenu_800F6F0C
/* 114FA4 800F6EB4 00C08821 */   addu      $s1, $a2, $zero
/* 114FA8 800F6EB8 10A0000A */  beqz       $a1, .Lmenu_800F6EE4
/* 114FAC 800F6EBC 00000000 */   nop
/* 114FB0 800F6EC0 3C01800D */  lui        $at, %hi(D_menu_800CC424)
/* 114FB4 800F6EC4 C422C424 */  lwc1       $f2, %lo(D_menu_800CC424)($at)
/* 114FB8 800F6EC8 44850000 */  mtc1       $a1, $f0
/* 114FBC 800F6ECC 46800020 */  cvt.s.w    $f0, $f0
/* 114FC0 800F6ED0 46020002 */  mul.s      $f0, $f0, $f2
/* 114FC4 800F6ED4 46000007 */  neg.s      $f0, $f0
/* 114FC8 800F6ED8 44050000 */  mfc1       $a1, $f0
/* 114FCC 800F6EDC 0C03DEE7 */  jal        func_menu_800F7B9C
/* 114FD0 800F6EE0 260422BC */   addiu     $a0, $s0, 0x22BC
.Lmenu_800F6EE4:
/* 114FD4 800F6EE4 12200009 */  beqz       $s1, .Lmenu_800F6F0C
/* 114FD8 800F6EE8 00000000 */   nop
/* 114FDC 800F6EEC 3C01800D */  lui        $at, %hi(D_menu_800CC428)
/* 114FE0 800F6EF0 C422C428 */  lwc1       $f2, %lo(D_menu_800CC428)($at)
/* 114FE4 800F6EF4 44910000 */  mtc1       $s1, $f0
/* 114FE8 800F6EF8 46800020 */  cvt.s.w    $f0, $f0
/* 114FEC 800F6EFC 46020002 */  mul.s      $f0, $f0, $f2
/* 114FF0 800F6F00 44050000 */  mfc1       $a1, $f0
/* 114FF4 800F6F04 0C03DF57 */  jal        func_menu_800F7D5C
/* 114FF8 800F6F08 260422BC */   addiu     $a0, $s0, 0x22BC
.Lmenu_800F6F0C:
/* 114FFC 800F6F0C 8FBF0018 */  lw         $ra, 0x18($sp)
/* 115000 800F6F10 8FB10014 */  lw         $s1, 0x14($sp)
/* 115004 800F6F14 8FB00010 */  lw         $s0, 0x10($sp)
/* 115008 800F6F18 03E00008 */  jr         $ra
/* 11500C 800F6F1C 27BD0020 */   addiu     $sp, $sp, 0x20

glabel func_menu_800F6F20
/* 115010 800F6F20 27BDFFD0 */  addiu      $sp, $sp, -0x30
/* 115014 800F6F24 AFB10024 */  sw         $s1, 0x24($sp)
/* 115018 800F6F28 00808821 */  addu       $s1, $a0, $zero
/* 11501C 800F6F2C AFBF002C */  sw         $ra, 0x2C($sp)
/* 115020 800F6F30 AFB20028 */  sw         $s2, 0x28($sp)
/* 115024 800F6F34 AFB00020 */  sw         $s0, 0x20($sp)
/* 115028 800F6F38 8E232A94 */  lw         $v1, 0x2A94($s1)
/* 11502C 800F6F3C 24020006 */  addiu      $v0, $zero, 0x6
/* 115030 800F6F40 10620009 */  beq        $v1, $v0, .Lmenu_800F6F68
/* 115034 800F6F44 263222BC */   addiu     $s2, $s1, 0x22BC
/* 115038 800F6F48 02402021 */  addu       $a0, $s2, $zero
/* 11503C 800F6F4C 27A50010 */  addiu      $a1, $sp, 0x10
/* 115040 800F6F50 27A60014 */  addiu      $a2, $sp, 0x14
/* 115044 800F6F54 0C03E141 */  jal        func_menu_800F8504
/* 115048 800F6F58 27A70018 */   addiu     $a3, $sp, 0x18
/* 11504C 800F6F5C 8FA50010 */  lw         $a1, 0x10($sp)
/* 115050 800F6F60 14A00003 */  bnez       $a1, .Lmenu_800F6F70
/* 115054 800F6F64 26300E4C */   addiu     $s0, $s1, 0xE4C
.Lmenu_800F6F68:
/* 115058 800F6F68 0803DBF7 */  j          .Lmenu_800F6FDC
/* 11505C 800F6F6C 00001021 */   addu      $v0, $zero, $zero
.Lmenu_800F6F70:
/* 115060 800F6F70 0C041EBF */  jal        func_menu_80107AFC
/* 115064 800F6F74 02002021 */   addu      $a0, $s0, $zero
/* 115068 800F6F78 8FA50014 */  lw         $a1, 0x14($sp)
/* 11506C 800F6F7C 8FA60018 */  lw         $a2, 0x18($sp)
/* 115070 800F6F80 0C041FB2 */  jal        func_menu_80107EC8
/* 115074 800F6F84 02002021 */   addu      $a0, $s0, $zero
/* 115078 800F6F88 8E220354 */  lw         $v0, 0x354($s1)
/* 11507C 800F6F8C 8C422CBC */  lw         $v0, 0x2CBC($v0)
/* 115080 800F6F90 8C42000C */  lw         $v0, 0xC($v0)
/* 115084 800F6F94 262403C4 */  addiu      $a0, $s1, 0x3C4
/* 115088 800F6F98 00022840 */  sll        $a1, $v0, 1
/* 11508C 800F6F9C 00A22821 */  addu       $a1, $a1, $v0
/* 115090 800F6FA0 000528C0 */  sll        $a1, $a1, 3
/* 115094 800F6FA4 00A22823 */  subu       $a1, $a1, $v0
/* 115098 800F6FA8 00052880 */  sll        $a1, $a1, 2
/* 11509C 800F6FAC 24A51994 */  addiu      $a1, $a1, 0x1994
/* 1150A0 800F6FB0 0C0472CE */  jal        func_menu_8011CB38
/* 1150A4 800F6FB4 02252821 */   addu      $a1, $s1, $a1
/* 1150A8 800F6FB8 8E02006C */  lw         $v0, 0x6C($s0)
/* 1150AC 800F6FBC 00021080 */  sll        $v0, $v0, 2
/* 1150B0 800F6FC0 02028021 */  addu       $s0, $s0, $v0
/* 1150B4 800F6FC4 8E0500D4 */  lw         $a1, 0xD4($s0)
/* 1150B8 800F6FC8 0C03DE7F */  jal        func_menu_800F79FC
/* 1150BC 800F6FCC 02402021 */   addu      $a0, $s2, $zero
/* 1150C0 800F6FD0 24020001 */  addiu      $v0, $zero, 0x1
/* 1150C4 800F6FD4 24030005 */  addiu      $v1, $zero, 0x5
/* 1150C8 800F6FD8 AE232A98 */  sw         $v1, 0x2A98($s1)
.Lmenu_800F6FDC:
/* 1150CC 800F6FDC 8FBF002C */  lw         $ra, 0x2C($sp)
/* 1150D0 800F6FE0 8FB20028 */  lw         $s2, 0x28($sp)
/* 1150D4 800F6FE4 8FB10024 */  lw         $s1, 0x24($sp)
/* 1150D8 800F6FE8 8FB00020 */  lw         $s0, 0x20($sp)
/* 1150DC 800F6FEC 03E00008 */  jr         $ra
/* 1150E0 800F6FF0 27BD0030 */   addiu     $sp, $sp, 0x30

glabel func_menu_800F6FF4
/* 1150E4 800F6FF4 27BDFFD8 */  addiu      $sp, $sp, -0x28
/* 1150E8 800F6FF8 AFB00018 */  sw         $s0, 0x18($sp)
/* 1150EC 800F6FFC 00808021 */  addu       $s0, $a0, $zero
/* 1150F0 800F7000 24020072 */  addiu      $v0, $zero, 0x72
/* 1150F4 800F7004 AFB1001C */  sw         $s1, 0x1C($sp)
/* 1150F8 800F7008 2611258C */  addiu      $s1, $s0, 0x258C
/* 1150FC 800F700C 02202821 */  addu       $a1, $s1, $zero
/* 115100 800F7010 240600A1 */  addiu      $a2, $zero, 0xA1
/* 115104 800F7014 2407004F */  addiu      $a3, $zero, 0x4F
/* 115108 800F7018 AFBF0020 */  sw         $ra, 0x20($sp)
/* 11510C 800F701C 0C040297 */  jal        func_menu_80100A5C
/* 115110 800F7020 AFA20010 */   sw        $v0, 0x10($sp)
/* 115114 800F7024 02002021 */  addu       $a0, $s0, $zero
/* 115118 800F7028 02202821 */  addu       $a1, $s1, $zero
/* 11511C 800F702C 0C046B5F */  jal        func_menu_8011AD7C
/* 115120 800F7030 240600BA */   addiu     $a2, $zero, 0xBA
/* 115124 800F7034 8FBF0020 */  lw         $ra, 0x20($sp)
/* 115128 800F7038 8FB1001C */  lw         $s1, 0x1C($sp)
/* 11512C 800F703C 8FB00018 */  lw         $s0, 0x18($sp)
/* 115130 800F7040 03E00008 */  jr         $ra
/* 115134 800F7044 27BD0028 */   addiu     $sp, $sp, 0x28

glabel func_menu_800F7048
/* 115138 800F7048 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 11513C 800F704C 2482258C */  addiu      $v0, $a0, 0x258C
/* 115140 800F7050 14A20004 */  bne        $a1, $v0, .Lmenu_800F7064
/* 115144 800F7054 AFBF0010 */   sw        $ra, 0x10($sp)
/* 115148 800F7058 8C840284 */  lw         $a0, 0x284($a0)
/* 11514C 800F705C 0C045449 */  jal        func_menu_80115124
/* 115150 800F7060 00000000 */   nop
.Lmenu_800F7064:
/* 115154 800F7064 8FBF0010 */  lw         $ra, 0x10($sp)
/* 115158 800F7068 03E00008 */  jr         $ra
/* 11515C 800F706C 27BD0018 */   addiu     $sp, $sp, 0x18

glabel func_menu_800F7070
/* 115160 800F7070 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* 115164 800F7074 AFB10014 */  sw         $s1, 0x14($sp)
/* 115168 800F7078 00808821 */  addu       $s1, $a0, $zero
/* 11516C 800F707C AFBF0018 */  sw         $ra, 0x18($sp)
/* 115170 800F7080 AFB00010 */  sw         $s0, 0x10($sp)
/* 115174 800F7084 8E232A94 */  lw         $v1, 0x2A94($s1)
/* 115178 800F7088 24020006 */  addiu      $v0, $zero, 0x6
/* 11517C 800F708C 10620025 */  beq        $v1, $v0, .Lmenu_800F7124
/* 115180 800F7090 26220FA0 */   addiu     $v0, $s1, 0xFA0
/* 115184 800F7094 14A20008 */  bne        $a1, $v0, .Lmenu_800F70B8
/* 115188 800F7098 26220458 */   addiu     $v0, $s1, 0x458
/* 11518C 800F709C 26230E4C */  addiu      $v1, $s1, 0xE4C
/* 115190 800F70A0 8C62006C */  lw         $v0, 0x6C($v1)
/* 115194 800F70A4 00021080 */  sll        $v0, $v0, 2
/* 115198 800F70A8 00621821 */  addu       $v1, $v1, $v0
/* 11519C 800F70AC 8C6500D4 */  lw         $a1, 0xD4($v1)
/* 1151A0 800F70B0 0803DC47 */  j          .Lmenu_800F711C
/* 1151A4 800F70B4 00000000 */   nop
.Lmenu_800F70B8:
/* 1151A8 800F70B8 14A2001A */  bne        $a1, $v0, .Lmenu_800F7124
/* 1151AC 800F70BC 24031994 */   addiu     $v1, $zero, 0x1994
/* 1151B0 800F70C0 8E26043C */  lw         $a2, 0x43C($s1)
/* 1151B4 800F70C4 00002021 */  addu       $a0, $zero, $zero
.Lmenu_800F70C8:
/* 1151B8 800F70C8 2C82000C */  sltiu      $v0, $a0, 0xC
/* 1151BC 800F70CC 10400015 */  beqz       $v0, .Lmenu_800F7124
/* 1151C0 800F70D0 02231021 */   addu      $v0, $s1, $v1
/* 1151C4 800F70D4 10C20004 */  beq        $a2, $v0, .Lmenu_800F70E8
/* 1151C8 800F70D8 00042840 */   sll       $a1, $a0, 1
/* 1151CC 800F70DC 2463005C */  addiu      $v1, $v1, 0x5C
/* 1151D0 800F70E0 0803DC32 */  j          .Lmenu_800F70C8
/* 1151D4 800F70E4 24840001 */   addiu     $a0, $a0, 0x1
.Lmenu_800F70E8:
/* 1151D8 800F70E8 00A41021 */  addu       $v0, $a1, $a0
/* 1151DC 800F70EC 8E230354 */  lw         $v1, 0x354($s1)
/* 1151E0 800F70F0 000210C0 */  sll        $v0, $v0, 3
/* 1151E4 800F70F4 8C632CB8 */  lw         $v1, 0x2CB8($v1)
/* 1151E8 800F70F8 26300E4C */  addiu      $s0, $s1, 0xE4C
/* 1151EC 800F70FC 00621821 */  addu       $v1, $v1, $v0
/* 1151F0 800F7100 8C650008 */  lw         $a1, 0x8($v1)
/* 1151F4 800F7104 0C041EBF */  jal        func_menu_80107AFC
/* 1151F8 800F7108 02002021 */   addu      $a0, $s0, $zero
/* 1151FC 800F710C 8E02006C */  lw         $v0, 0x6C($s0)
/* 115200 800F7110 00021080 */  sll        $v0, $v0, 2
/* 115204 800F7114 02028021 */  addu       $s0, $s0, $v0
/* 115208 800F7118 8E0500D4 */  lw         $a1, 0xD4($s0)
.Lmenu_800F711C:
/* 11520C 800F711C 0C03DE7F */  jal        func_menu_800F79FC
/* 115210 800F7120 262422BC */   addiu     $a0, $s1, 0x22BC
.Lmenu_800F7124:
/* 115214 800F7124 8FBF0018 */  lw         $ra, 0x18($sp)
/* 115218 800F7128 8FB10014 */  lw         $s1, 0x14($sp)
/* 11521C 800F712C 8FB00010 */  lw         $s0, 0x10($sp)
/* 115220 800F7130 03E00008 */  jr         $ra
/* 115224 800F7134 27BD0020 */   addiu     $sp, $sp, 0x20

glabel func_menu_800F7138
/* 115228 800F7138 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* 11522C 800F713C AFB10014 */  sw         $s1, 0x14($sp)
/* 115230 800F7140 00808821 */  addu       $s1, $a0, $zero
/* 115234 800F7144 26221DE4 */  addiu      $v0, $s1, 0x1DE4
/* 115238 800F7148 AFBF0018 */  sw         $ra, 0x18($sp)
/* 11523C 800F714C 14A2001A */  bne        $a1, $v0, .Lmenu_800F71B8
/* 115240 800F7150 AFB00010 */   sw        $s0, 0x10($sp)
/* 115244 800F7154 8E232A90 */  lw         $v1, 0x2A90($s1)
/* 115248 800F7158 24020004 */  addiu      $v0, $zero, 0x4
/* 11524C 800F715C 10620005 */  beq        $v1, $v0, .Lmenu_800F7174
/* 115250 800F7160 24020005 */   addiu     $v0, $zero, 0x5
/* 115254 800F7164 10620013 */  beq        $v1, $v0, .Lmenu_800F71B4
/* 115258 800F7168 24020001 */   addiu     $v0, $zero, 0x1
/* 11525C 800F716C 0803DC6E */  j          .Lmenu_800F71B8
/* 115260 800F7170 00000000 */   nop
.Lmenu_800F7174:
/* 115264 800F7174 26300E4C */  addiu      $s0, $s1, 0xE4C
/* 115268 800F7178 0C041EA3 */  jal        func_menu_80107A8C
/* 11526C 800F717C 02002021 */   addu      $a0, $s0, $zero
/* 115270 800F7180 8E05006C */  lw         $a1, 0x6C($s0)
/* 115274 800F7184 0C046D24 */  jal        func_menu_8011B490
/* 115278 800F7188 02002021 */   addu      $a0, $s0, $zero
/* 11527C 800F718C 02002021 */  addu       $a0, $s0, $zero
/* 115280 800F7190 0C041F3F */  jal        func_menu_80107CFC
/* 115284 800F7194 00402821 */   addu      $a1, $v0, $zero
/* 115288 800F7198 8E02006C */  lw         $v0, 0x6C($s0)
/* 11528C 800F719C 00021080 */  sll        $v0, $v0, 2
/* 115290 800F71A0 02028021 */  addu       $s0, $s0, $v0
/* 115294 800F71A4 8E0500D4 */  lw         $a1, 0xD4($s0)
/* 115298 800F71A8 0C03DE7F */  jal        func_menu_800F79FC
/* 11529C 800F71AC 262422BC */   addiu     $a0, $s1, 0x22BC
/* 1152A0 800F71B0 24020001 */  addiu      $v0, $zero, 0x1
.Lmenu_800F71B4:
/* 1152A4 800F71B4 AE222A98 */  sw         $v0, 0x2A98($s1)
.Lmenu_800F71B8:
/* 1152A8 800F71B8 8FBF0018 */  lw         $ra, 0x18($sp)
/* 1152AC 800F71BC 8FB10014 */  lw         $s1, 0x14($sp)
/* 1152B0 800F71C0 8FB00010 */  lw         $s0, 0x10($sp)
/* 1152B4 800F71C4 03E00008 */  jr         $ra
/* 1152B8 800F71C8 27BD0020 */   addiu     $sp, $sp, 0x20

glabel func_menu_800F71CC
/* 1152BC 800F71CC 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 1152C0 800F71D0 AFB00010 */  sw         $s0, 0x10($sp)
/* 1152C4 800F71D4 00808021 */  addu       $s0, $a0, $zero
/* 1152C8 800F71D8 AFBF0014 */  sw         $ra, 0x14($sp)
/* 1152CC 800F71DC 8E032A94 */  lw         $v1, 0x2A94($s0)
/* 1152D0 800F71E0 24020002 */  addiu      $v0, $zero, 0x2
/* 1152D4 800F71E4 10620013 */  beq        $v1, $v0, .Lmenu_800F7234
/* 1152D8 800F71E8 28620003 */   slti      $v0, $v1, 0x3
/* 1152DC 800F71EC 10400005 */  beqz       $v0, .Lmenu_800F7204
/* 1152E0 800F71F0 24020001 */   addiu     $v0, $zero, 0x1
/* 1152E4 800F71F4 1062000A */  beq        $v1, $v0, .Lmenu_800F7220
/* 1152E8 800F71F8 00000000 */   nop
/* 1152EC 800F71FC 0803DC9C */  j          .Lmenu_800F7270
/* 1152F0 800F7200 00000000 */   nop
.Lmenu_800F7204:
/* 1152F4 800F7204 24020003 */  addiu      $v0, $zero, 0x3
/* 1152F8 800F7208 1062000F */  beq        $v1, $v0, .Lmenu_800F7248
/* 1152FC 800F720C 24020006 */   addiu     $v0, $zero, 0x6
/* 115300 800F7210 10620012 */  beq        $v1, $v0, .Lmenu_800F725C
/* 115304 800F7214 00000000 */   nop
/* 115308 800F7218 0803DC9C */  j          .Lmenu_800F7270
/* 11530C 800F721C 00000000 */   nop
.Lmenu_800F7220:
/* 115310 800F7220 8E020000 */  lw         $v0, 0x0($s0)
/* 115314 800F7224 84440140 */  lh         $a0, 0x140($v0)
/* 115318 800F7228 8C420144 */  lw         $v0, 0x144($v0)
/* 11531C 800F722C 0803DC9A */  j          .Lmenu_800F7268
/* 115320 800F7230 00000000 */   nop
.Lmenu_800F7234:
/* 115324 800F7234 8E020000 */  lw         $v0, 0x0($s0)
/* 115328 800F7238 84440150 */  lh         $a0, 0x150($v0)
/* 11532C 800F723C 8C420154 */  lw         $v0, 0x154($v0)
/* 115330 800F7240 0803DC9A */  j          .Lmenu_800F7268
/* 115334 800F7244 00000000 */   nop
.Lmenu_800F7248:
/* 115338 800F7248 8E020000 */  lw         $v0, 0x0($s0)
/* 11533C 800F724C 84440160 */  lh         $a0, 0x160($v0)
/* 115340 800F7250 8C420164 */  lw         $v0, 0x164($v0)
/* 115344 800F7254 0803DC9A */  j          .Lmenu_800F7268
/* 115348 800F7258 00000000 */   nop
.Lmenu_800F725C:
/* 11534C 800F725C 8E020000 */  lw         $v0, 0x0($s0)
/* 115350 800F7260 84440170 */  lh         $a0, 0x170($v0)
/* 115354 800F7264 8C420174 */  lw         $v0, 0x174($v0)
.Lmenu_800F7268:
/* 115358 800F7268 0040F809 */  jalr       $v0
/* 11535C 800F726C 02042021 */   addu      $a0, $s0, $a0
.Lmenu_800F7270:
/* 115360 800F7270 8E022A98 */  lw         $v0, 0x2A98($s0)
/* 115364 800F7274 2443FFFF */  addiu      $v1, $v0, -0x1
/* 115368 800F7278 2C620006 */  sltiu      $v0, $v1, 0x6
/* 11536C 800F727C 1040002D */  beqz       $v0, Lmenu_800F7334
/* 115370 800F7280 3C02800D */   lui       $v0, %hi(jtbl_menu_800CC430)
/* 115374 800F7284 2442C430 */  addiu      $v0, $v0, %lo(jtbl_menu_800CC430)
/* 115378 800F7288 00031880 */  sll        $v1, $v1, 2
/* 11537C 800F728C 00621821 */  addu       $v1, $v1, $v0
/* 115380 800F7290 8C620000 */  lw         $v0, 0x0($v1)
/* 115384 800F7294 00400008 */  jr         $v0
/* 115388 800F7298 00000000 */   nop
glabel Lmenu_800F729C
/* 11538C 800F729C 8E020000 */  lw         $v0, 0x0($s0)
/* 115390 800F72A0 84440138 */  lh         $a0, 0x138($v0)
/* 115394 800F72A4 8C42013C */  lw         $v0, 0x13C($v0)
/* 115398 800F72A8 0040F809 */  jalr       $v0
/* 11539C 800F72AC 02042021 */   addu      $a0, $s0, $a0
/* 1153A0 800F72B0 260400D8 */  addiu      $a0, $s0, 0xD8
/* 1153A4 800F72B4 8C820018 */  lw         $v0, 0x18($a0)
/* 1153A8 800F72B8 00021702 */  srl        $v0, $v0, 28
/* 1153AC 800F72BC 30420001 */  andi       $v0, $v0, 0x1
/* 1153B0 800F72C0 1040001C */  beqz       $v0, Lmenu_800F7334
/* 1153B4 800F72C4 00000000 */   nop
/* 1153B8 800F72C8 0C04921C */  jal        func_menu_80124870
/* 1153BC 800F72CC 00000000 */   nop
/* 1153C0 800F72D0 0803DCCD */  j          Lmenu_800F7334
/* 1153C4 800F72D4 00000000 */   nop
glabel Lmenu_800F72D8
/* 1153C8 800F72D8 8E020000 */  lw         $v0, 0x0($s0)
/* 1153CC 800F72DC 84440148 */  lh         $a0, 0x148($v0)
/* 1153D0 800F72E0 8C42014C */  lw         $v0, 0x14C($v0)
/* 1153D4 800F72E4 0803DCCB */  j          .Lmenu_800F732C
/* 1153D8 800F72E8 00000000 */   nop
glabel Lmenu_800F72EC
/* 1153DC 800F72EC 8E020000 */  lw         $v0, 0x0($s0)
/* 1153E0 800F72F0 84440158 */  lh         $a0, 0x158($v0)
/* 1153E4 800F72F4 8C42015C */  lw         $v0, 0x15C($v0)
/* 1153E8 800F72F8 0803DCCB */  j          .Lmenu_800F732C
/* 1153EC 800F72FC 00000000 */   nop
glabel Lmenu_800F7300
/* 1153F0 800F7300 260422BC */  addiu      $a0, $s0, 0x22BC
/* 1153F4 800F7304 24020006 */  addiu      $v0, $zero, 0x6
/* 1153F8 800F7308 AE022A98 */  sw         $v0, 0x2A98($s0)
/* 1153FC 800F730C 24020005 */  addiu      $v0, $zero, 0x5
/* 115400 800F7310 0C03E4FD */  jal        func_menu_800F93F4
/* 115404 800F7314 AE022A90 */   sw        $v0, 0x2A90($s0)
/* 115408 800F7318 0803DCCD */  j          Lmenu_800F7334
/* 11540C 800F731C 00000000 */   nop
glabel Lmenu_800F7320
/* 115410 800F7320 8E020000 */  lw         $v0, 0x0($s0)
/* 115414 800F7324 84440168 */  lh         $a0, 0x168($v0)
/* 115418 800F7328 8C42016C */  lw         $v0, 0x16C($v0)
.Lmenu_800F732C:
/* 11541C 800F732C 0040F809 */  jalr       $v0
/* 115420 800F7330 02042021 */   addu      $a0, $s0, $a0
glabel Lmenu_800F7334
/* 115424 800F7334 8E022A98 */  lw         $v0, 0x2A98($s0)
/* 115428 800F7338 AE00035C */  sw         $zero, 0x35C($s0)
/* 11542C 800F733C AE022A94 */  sw         $v0, 0x2A94($s0)
/* 115430 800F7340 8FBF0014 */  lw         $ra, 0x14($sp)
/* 115434 800F7344 8FB00010 */  lw         $s0, 0x10($sp)
/* 115438 800F7348 03E00008 */  jr         $ra
/* 11543C 800F734C 27BD0018 */   addiu     $sp, $sp, 0x18

glabel func_menu_800F7350
/* 115440 800F7350 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* 115444 800F7354 AFB00010 */  sw         $s0, 0x10($sp)
/* 115448 800F7358 00808021 */  addu       $s0, $a0, $zero
/* 11544C 800F735C AFBF0018 */  sw         $ra, 0x18($sp)
/* 115450 800F7360 AFB10014 */  sw         $s1, 0x14($sp)
/* 115454 800F7364 8E032A94 */  lw         $v1, 0x2A94($s0)
/* 115458 800F7368 8E022A98 */  lw         $v0, 0x2A98($s0)
/* 11545C 800F736C 10620009 */  beq        $v1, $v0, .Lmenu_800F7394
/* 115460 800F7370 00A08821 */   addu      $s1, $a1, $zero
/* 115464 800F7374 8E02035C */  lw         $v0, 0x35C($s0)
/* 115468 800F7378 10400004 */  beqz       $v0, .Lmenu_800F738C
/* 11546C 800F737C 00000000 */   nop
/* 115470 800F7380 8C420050 */  lw         $v0, 0x50($v0)
/* 115474 800F7384 04400004 */  bltz       $v0, .Lmenu_800F7398
/* 115478 800F7388 02002021 */   addu      $a0, $s0, $zero
.Lmenu_800F738C:
/* 11547C 800F738C 0C03DC73 */  jal        func_menu_800F71CC
/* 115480 800F7390 02002021 */   addu      $a0, $s0, $zero
.Lmenu_800F7394:
/* 115484 800F7394 02002021 */  addu       $a0, $s0, $zero
.Lmenu_800F7398:
/* 115488 800F7398 0C04056C */  jal        func_menu_801015B0
/* 11548C 800F739C 02202821 */   addu      $a1, $s1, $zero
/* 115490 800F73A0 8FBF0018 */  lw         $ra, 0x18($sp)
/* 115494 800F73A4 8FB10014 */  lw         $s1, 0x14($sp)
/* 115498 800F73A8 8FB00010 */  lw         $s0, 0x10($sp)
/* 11549C 800F73AC 03E00008 */  jr         $ra
/* 1154A0 800F73B0 27BD0020 */   addiu     $sp, $sp, 0x20
