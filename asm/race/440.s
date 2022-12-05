.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text, "ax"

glabel func_race_800F0750
/* A6B10 800F0750 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* A6B14 800F0754 AFB00010 */  sw         $s0, 0x10($sp)
/* A6B18 800F0758 AFBF0014 */  sw         $ra, 0x14($sp)
/* A6B1C 800F075C 0C01637C */  jal        func_80058DF0
/* A6B20 800F0760 00808021 */   addu      $s0, $a0, $zero
/* A6B24 800F0764 3C02800D */  lui        $v0, %hi(D_race_800CCA18)
/* A6B28 800F0768 2442CA18 */  addiu      $v0, $v0, %lo(D_race_800CCA18)
/* A6B2C 800F076C 2604000C */  addiu      $a0, $s0, 0xC
/* A6B30 800F0770 0C016038 */  jal        func_800580E0
/* A6B34 800F0774 AE020008 */   sw        $v0, 0x8($s0)
/* A6B38 800F0778 0C03C1F7 */  jal        func_race_800F07DC
/* A6B3C 800F077C 02002021 */   addu      $a0, $s0, $zero
/* A6B40 800F0780 02001021 */  addu       $v0, $s0, $zero
/* A6B44 800F0784 8FBF0014 */  lw         $ra, 0x14($sp)
/* A6B48 800F0788 8FB00010 */  lw         $s0, 0x10($sp)
/* A6B4C 800F078C 03E00008 */  jr         $ra
/* A6B50 800F0790 27BD0018 */   addiu     $sp, $sp, 0x18

glabel func_race_800F0794
/* A6B54 800F0794 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* A6B58 800F0798 AFB00010 */  sw         $s0, 0x10($sp)
/* A6B5C 800F079C 00808021 */  addu       $s0, $a0, $zero
/* A6B60 800F07A0 AFB10014 */  sw         $s1, 0x14($sp)
/* A6B64 800F07A4 00A08821 */  addu       $s1, $a1, $zero
/* A6B68 800F07A8 3C02800D */  lui        $v0, %hi(D_race_800CCA18)
/* A6B6C 800F07AC 2442CA18 */  addiu      $v0, $v0, %lo(D_race_800CCA18)
/* A6B70 800F07B0 AFBF0018 */  sw         $ra, 0x18($sp)
/* A6B74 800F07B4 0C03C414 */  jal        func_race_800F1050
/* A6B78 800F07B8 AE020008 */   sw        $v0, 0x8($s0)
/* A6B7C 800F07BC 02002021 */  addu       $a0, $s0, $zero
/* A6B80 800F07C0 0C016383 */  jal        func_80058E0C
/* A6B84 800F07C4 02202821 */   addu      $a1, $s1, $zero
/* A6B88 800F07C8 8FBF0018 */  lw         $ra, 0x18($sp)
/* A6B8C 800F07CC 8FB10014 */  lw         $s1, 0x14($sp)
/* A6B90 800F07D0 8FB00010 */  lw         $s0, 0x10($sp)
/* A6B94 800F07D4 03E00008 */  jr         $ra
/* A6B98 800F07D8 27BD0020 */   addiu     $sp, $sp, 0x20

glabel func_race_800F07DC
/* A6B9C 800F07DC AC8000A8 */  sw         $zero, 0xA8($a0)
/* A6BA0 800F07E0 AC8000B0 */  sw         $zero, 0xB0($a0)
/* A6BA4 800F07E4 AC8000B8 */  sw         $zero, 0xB8($a0)
/* A6BA8 800F07E8 AC8000B4 */  sw         $zero, 0xB4($a0)
/* A6BAC 800F07EC AC8000BC */  sw         $zero, 0xBC($a0)
/* A6BB0 800F07F0 AC8000C0 */  sw         $zero, 0xC0($a0)
/* A6BB4 800F07F4 AC8000A0 */  sw         $zero, 0xA0($a0)
/* A6BB8 800F07F8 AC8000A4 */  sw         $zero, 0xA4($a0)
/* A6BBC 800F07FC A08000C4 */  sb         $zero, 0xC4($a0)
/* A6BC0 800F0800 AC80009C */  sw         $zero, 0x9C($a0)
/* A6BC4 800F0804 03E00008 */  jr         $ra
/* A6BC8 800F0808 AC8000AC */   sw        $zero, 0xAC($a0)

glabel func_race_800F080C
/* A6BCC 800F080C 27BDFF48 */  addiu      $sp, $sp, -0xB8
/* A6BD0 800F0810 AFB40098 */  sw         $s4, 0x98($sp)
/* A6BD4 800F0814 0080A021 */  addu       $s4, $a0, $zero
/* A6BD8 800F0818 AFB00088 */  sw         $s0, 0x88($sp)
/* A6BDC 800F081C 00C08021 */  addu       $s0, $a2, $zero
/* A6BE0 800F0820 AFBF00AC */  sw         $ra, 0xAC($sp)
/* A6BE4 800F0824 AFBE00A8 */  sw         $fp, 0xA8($sp)
/* A6BE8 800F0828 AFB700A4 */  sw         $s7, 0xA4($sp)
/* A6BEC 800F082C AFB600A0 */  sw         $s6, 0xA0($sp)
/* A6BF0 800F0830 AFB5009C */  sw         $s5, 0x9C($sp)
/* A6BF4 800F0834 AFB30094 */  sw         $s3, 0x94($sp)
/* A6BF8 800F0838 AFB20090 */  sw         $s2, 0x90($sp)
/* A6BFC 800F083C AFB1008C */  sw         $s1, 0x8C($sp)
/* A6C00 800F0840 F7B400B0 */  sdc1       $f20, 0xB0($sp)
/* A6C04 800F0844 AFA500BC */  sw         $a1, 0xBC($sp)
/* A6C08 800F0848 8E8200A4 */  lw         $v0, 0xA4($s4)
/* A6C0C 800F084C 10400006 */  beqz       $v0, .Lrace_800F0868
/* A6C10 800F0850 00E08821 */   addu      $s1, $a3, $zero
/* A6C14 800F0854 8E820008 */  lw         $v0, 0x8($s4)
/* A6C18 800F0858 84440018 */  lh         $a0, 0x18($v0)
/* A6C1C 800F085C 8C42001C */  lw         $v0, 0x1C($v0)
/* A6C20 800F0860 0040F809 */  jalr       $v0
/* A6C24 800F0864 02842021 */   addu      $a0, $s4, $a0
.Lrace_800F0868:
/* A6C28 800F0868 AE9000A4 */  sw         $s0, 0xA4($s4)
/* A6C2C 800F086C 8FA800CC */  lw         $t0, 0xCC($sp)
/* A6C30 800F0870 11000014 */  beqz       $t0, .Lrace_800F08C4
/* A6C34 800F0874 00000000 */   nop
/* A6C38 800F0878 0C01FB4C */  jal        func_8007ED30
/* A6C3C 800F087C 24040654 */   addiu     $a0, $zero, 0x654
/* A6C40 800F0880 0C00278C */  jal        func_80009E30
/* A6C44 800F0884 00402021 */   addu      $a0, $v0, $zero
/* A6C48 800F0888 00409021 */  addu       $s2, $v0, $zero
/* A6C4C 800F088C 56400008 */  bnel       $s2, $zero, .Lrace_800F08B0
/* A6C50 800F0890 02402021 */   addu      $a0, $s2, $zero
/* A6C54 800F0894 3C04800D */  lui        $a0, %hi(D_race_800CC940)
/* A6C58 800F0898 2484C940 */  addiu      $a0, $a0, %lo(D_race_800CC940)
/* A6C5C 800F089C 00002821 */  addu       $a1, $zero, $zero
/* A6C60 800F08A0 00A03021 */  addu       $a2, $a1, $zero
/* A6C64 800F08A4 0C011ACF */  jal        func_80046B3C
/* A6C68 800F08A8 00A03821 */   addu      $a3, $a1, $zero
/* A6C6C 800F08AC 02402021 */  addu       $a0, $s2, $zero
.Lrace_800F08B0:
/* A6C70 800F08B0 3C05800D */  lui        $a1, %hi(D_race_800CC944)
/* A6C74 800F08B4 0C0025BA */  jal        func_800096E8
/* A6C78 800F08B8 24A5C944 */   addiu     $a1, $a1, %lo(D_race_800CC944)
/* A6C7C 800F08BC 0803C241 */  j          .Lrace_800F0904
/* A6C80 800F08C0 00000000 */   nop
.Lrace_800F08C4:
/* A6C84 800F08C4 0C01FB4C */  jal        func_8007ED30
/* A6C88 800F08C8 24040658 */   addiu     $a0, $zero, 0x658
/* A6C8C 800F08CC 00408021 */  addu       $s0, $v0, $zero
/* A6C90 800F08D0 0C002504 */  jal        func_80009410
/* A6C94 800F08D4 02002021 */   addu      $a0, $s0, $zero
/* A6C98 800F08D8 3C02800D */  lui        $v0, %hi(D_race_800CC968)
/* A6C9C 800F08DC 2442C968 */  addiu      $v0, $v0, %lo(D_race_800CC968)
/* A6CA0 800F08E0 02009021 */  addu       $s2, $s0, $zero
/* A6CA4 800F08E4 16400007 */  bnez       $s2, .Lrace_800F0904
/* A6CA8 800F08E8 AE020028 */   sw        $v0, 0x28($s0)
/* A6CAC 800F08EC 3C04800D */  lui        $a0, %hi(D_race_800CC940)
/* A6CB0 800F08F0 2484C940 */  addiu      $a0, $a0, %lo(D_race_800CC940)
/* A6CB4 800F08F4 00002821 */  addu       $a1, $zero, $zero
/* A6CB8 800F08F8 00A03021 */  addu       $a2, $a1, $zero
/* A6CBC 800F08FC 0C011ACF */  jal        func_80046B3C
/* A6CC0 800F0900 00A03821 */   addu      $a3, $a1, $zero
.Lrace_800F0904:
/* A6CC4 800F0904 8E420028 */  lw         $v0, 0x28($s2)
/* A6CC8 800F0908 02202821 */  addu       $a1, $s1, $zero
/* A6CCC 800F090C 84440088 */  lh         $a0, 0x88($v0)
/* A6CD0 800F0910 8C42008C */  lw         $v0, 0x8C($v0)
/* A6CD4 800F0914 0040F809 */  jalr       $v0
/* A6CD8 800F0918 02442021 */   addu      $a0, $s2, $a0
/* A6CDC 800F091C 02402021 */  addu       $a0, $s2, $zero
/* A6CE0 800F0920 0C0026F4 */  jal        func_80009BD0
/* A6CE4 800F0924 2405002C */   addiu     $a1, $zero, 0x2C
/* A6CE8 800F0928 02402021 */  addu       $a0, $s2, $zero
/* A6CEC 800F092C 0C0026F4 */  jal        func_80009BD0
/* A6CF0 800F0930 24050007 */   addiu     $a1, $zero, 0x7
/* A6CF4 800F0934 0C002680 */  jal        func_80009A00
/* A6CF8 800F0938 02402021 */   addu      $a0, $s2, $zero
/* A6CFC 800F093C 02402021 */  addu       $a0, $s2, $zero
/* A6D00 800F0940 24050008 */  addiu      $a1, $zero, 0x8
/* A6D04 800F0944 0C0026F4 */  jal        func_80009BD0
/* A6D08 800F0948 AE8200B0 */   sw        $v0, 0xB0($s4)
/* A6D0C 800F094C 3C028013 */  lui        $v0, %hi(D_race_801321A0)
/* A6D10 800F0950 8C4421A0 */  lw         $a0, %lo(D_race_801321A0)($v0)
/* A6D14 800F0954 0C01FB65 */  jal        func_8007ED94
/* A6D18 800F0958 00000000 */   nop
/* A6D1C 800F095C 8E8400B0 */  lw         $a0, 0xB0($s4)
/* A6D20 800F0960 0C00943C */  jal        func_800250F0
/* A6D24 800F0964 00042100 */   sll       $a0, $a0, 4
/* A6D28 800F0968 0C01FB72 */  jal        func_8007EDC8
/* A6D2C 800F096C AE8200A8 */   sw        $v0, 0xA8($s4)
/* A6D30 800F0970 8E8200A8 */  lw         $v0, 0xA8($s4)
/* A6D34 800F0974 14400008 */  bnez       $v0, .Lrace_800F0998
/* A6D38 800F0978 02802021 */   addu      $a0, $s4, $zero
/* A6D3C 800F097C 3C04800D */  lui        $a0, %hi(D_race_800CC940)
/* A6D40 800F0980 2484C940 */  addiu      $a0, $a0, %lo(D_race_800CC940)
/* A6D44 800F0984 00002821 */  addu       $a1, $zero, $zero
/* A6D48 800F0988 00A03021 */  addu       $a2, $a1, $zero
/* A6D4C 800F098C 0C011ACF */  jal        func_80046B3C
/* A6D50 800F0990 00A03821 */   addu      $a3, $a1, $zero
/* A6D54 800F0994 02802021 */  addu       $a0, $s4, $zero
.Lrace_800F0998:
/* A6D58 800F0998 8E8500B0 */  lw         $a1, 0xB0($s4)
/* A6D5C 800F099C 0000F021 */  addu       $fp, $zero, $zero
/* A6D60 800F09A0 241600FF */  addiu      $s6, $zero, 0xFF
/* A6D64 800F09A4 0C016397 */  jal        func_80058E5C
/* A6D68 800F09A8 03C0A821 */   addu      $s5, $fp, $zero
/* A6D6C 800F09AC 02402021 */  addu       $a0, $s2, $zero
/* A6D70 800F09B0 0C0026F4 */  jal        func_80009BD0
/* A6D74 800F09B4 24050005 */   addiu     $a1, $zero, 0x5
.Lrace_800F09B8:
/* A6D78 800F09B8 8E8200B0 */  lw         $v0, 0xB0($s4)
/* A6D7C 800F09BC 03C2102B */  sltu       $v0, $fp, $v0
/* A6D80 800F09C0 10400104 */  beqz       $v0, .Lrace_800F0DD4
/* A6D84 800F09C4 24050027 */   addiu     $a1, $zero, 0x27
/* A6D88 800F09C8 8E8200A8 */  lw         $v0, 0xA8($s4)
/* A6D8C 800F09CC 02A21021 */  addu       $v0, $s5, $v0
/* A6D90 800F09D0 AC400000 */  sw         $zero, 0x0($v0)
/* A6D94 800F09D4 8E8200A8 */  lw         $v0, 0xA8($s4)
/* A6D98 800F09D8 02A21021 */  addu       $v0, $s5, $v0
/* A6D9C 800F09DC AC400004 */  sw         $zero, 0x4($v0)
/* A6DA0 800F09E0 8E8200A8 */  lw         $v0, 0xA8($s4)
/* A6DA4 800F09E4 02402021 */  addu       $a0, $s2, $zero
/* A6DA8 800F09E8 02A21021 */  addu       $v0, $s5, $v0
/* A6DAC 800F09EC AC400008 */  sw         $zero, 0x8($v0)
/* A6DB0 800F09F0 8E8200A8 */  lw         $v0, 0xA8($s4)
/* A6DB4 800F09F4 02A21021 */  addu       $v0, $s5, $v0
/* A6DB8 800F09F8 0C0026F4 */  jal        func_80009BD0
/* A6DBC 800F09FC AC40000C */   sw        $zero, 0xC($v0)
/* A6DC0 800F0A00 02402021 */  addu       $a0, $s2, $zero
/* A6DC4 800F0A04 0C0026F4 */  jal        func_80009BD0
/* A6DC8 800F0A08 24050007 */   addiu     $a1, $zero, 0x7
/* A6DCC 800F0A0C 0C002680 */  jal        func_80009A00
/* A6DD0 800F0A10 02402021 */   addu      $a0, $s2, $zero
/* A6DD4 800F0A14 02402021 */  addu       $a0, $s2, $zero
/* A6DD8 800F0A18 8E8300A8 */  lw         $v1, 0xA8($s4)
/* A6DDC 800F0A1C 24050008 */  addiu      $a1, $zero, 0x8
/* A6DE0 800F0A20 02A31821 */  addu       $v1, $s5, $v1
/* A6DE4 800F0A24 0C0026F4 */  jal        func_80009BD0
/* A6DE8 800F0A28 AC62000C */   sw        $v0, 0xC($v1)
/* A6DEC 800F0A2C 3C028013 */  lui        $v0, %hi(D_race_801321A0)
/* A6DF0 800F0A30 8C4421A0 */  lw         $a0, %lo(D_race_801321A0)($v0)
/* A6DF4 800F0A34 0C01FB65 */  jal        func_8007ED94
/* A6DF8 800F0A38 00000000 */   nop
/* A6DFC 800F0A3C 8E8200A8 */  lw         $v0, 0xA8($s4)
/* A6E00 800F0A40 02A21021 */  addu       $v0, $s5, $v0
/* A6E04 800F0A44 8C44000C */  lw         $a0, 0xC($v0)
/* A6E08 800F0A48 0C00943C */  jal        func_800250F0
/* A6E0C 800F0A4C 00042100 */   sll       $a0, $a0, 4
/* A6E10 800F0A50 8E8300A8 */  lw         $v1, 0xA8($s4)
/* A6E14 800F0A54 02A31821 */  addu       $v1, $s5, $v1
/* A6E18 800F0A58 0C01FB72 */  jal        func_8007EDC8
/* A6E1C 800F0A5C AC620008 */   sw        $v0, 0x8($v1)
/* A6E20 800F0A60 8E8200A8 */  lw         $v0, 0xA8($s4)
/* A6E24 800F0A64 02A21021 */  addu       $v0, $s5, $v0
/* A6E28 800F0A68 8C420008 */  lw         $v0, 0x8($v0)
/* A6E2C 800F0A6C 14400008 */  bnez       $v0, .Lrace_800F0A90
/* A6E30 800F0A70 0000B821 */   addu      $s7, $zero, $zero
/* A6E34 800F0A74 3C04800D */  lui        $a0, %hi(D_race_800CC940)
/* A6E38 800F0A78 2484C940 */  addiu      $a0, $a0, %lo(D_race_800CC940)
/* A6E3C 800F0A7C 00002821 */  addu       $a1, $zero, $zero
/* A6E40 800F0A80 00A03021 */  addu       $a2, $a1, $zero
/* A6E44 800F0A84 0C011ACF */  jal        func_80046B3C
/* A6E48 800F0A88 00A03821 */   addu      $a3, $a1, $zero
/* A6E4C 800F0A8C 0000B821 */  addu       $s7, $zero, $zero
.Lrace_800F0A90:
/* A6E50 800F0A90 02A08021 */  addu       $s0, $s5, $zero
/* A6E54 800F0A94 8E420028 */  lw         $v0, 0x28($s2)
/* A6E58 800F0A98 02E09821 */  addu       $s3, $s7, $zero
/* A6E5C 800F0A9C 844400A0 */  lh         $a0, 0xA0($v0)
/* A6E60 800F0AA0 8C4200A4 */  lw         $v0, 0xA4($v0)
/* A6E64 800F0AA4 0040F809 */  jalr       $v0
/* A6E68 800F0AA8 02442021 */   addu      $a0, $s2, $a0
/* A6E6C 800F0AAC 27A40018 */  addiu      $a0, $sp, 0x18
/* A6E70 800F0AB0 26450044 */  addiu      $a1, $s2, 0x44
/* A6E74 800F0AB4 0C000708 */  jal        func_80001C20
/* A6E78 800F0AB8 24060008 */   addiu     $a2, $zero, 0x8
/* A6E7C 800F0ABC 02802021 */  addu       $a0, $s4, $zero
/* A6E80 800F0AC0 8E8600A8 */  lw         $a2, 0xA8($s4)
/* A6E84 800F0AC4 27A50018 */  addiu      $a1, $sp, 0x18
/* A6E88 800F0AC8 0C0163C7 */  jal        func_80058F1C
/* A6E8C 800F0ACC 00D53021 */   addu      $a2, $a2, $s5
/* A6E90 800F0AD0 02402021 */  addu       $a0, $s2, $zero
/* A6E94 800F0AD4 0C0026F4 */  jal        func_80009BD0
/* A6E98 800F0AD8 24050005 */   addiu     $a1, $zero, 0x5
.Lrace_800F0ADC:
/* A6E9C 800F0ADC 8E8200A8 */  lw         $v0, 0xA8($s4)
/* A6EA0 800F0AE0 02021821 */  addu       $v1, $s0, $v0
/* A6EA4 800F0AE4 8C62000C */  lw         $v0, 0xC($v1)
/* A6EA8 800F0AE8 02E2102B */  sltu       $v0, $s7, $v0
/* A6EAC 800F0AEC 104000B4 */  beqz       $v0, .Lrace_800F0DC0
/* A6EB0 800F0AF0 02402021 */   addu      $a0, $s2, $zero
/* A6EB4 800F0AF4 8C620008 */  lw         $v0, 0x8($v1)
/* A6EB8 800F0AF8 240303E8 */  addiu      $v1, $zero, 0x3E8
/* A6EBC 800F0AFC 02621021 */  addu       $v0, $s3, $v0
/* A6EC0 800F0B00 AC430000 */  sw         $v1, 0x0($v0)
/* A6EC4 800F0B04 8E8200A8 */  lw         $v0, 0xA8($s4)
/* A6EC8 800F0B08 02021021 */  addu       $v0, $s0, $v0
/* A6ECC 800F0B0C 8C420008 */  lw         $v0, 0x8($v0)
/* A6ED0 800F0B10 02621021 */  addu       $v0, $s3, $v0
/* A6ED4 800F0B14 A0560004 */  sb         $s6, 0x4($v0)
/* A6ED8 800F0B18 8E8200A8 */  lw         $v0, 0xA8($s4)
/* A6EDC 800F0B1C 02021021 */  addu       $v0, $s0, $v0
/* A6EE0 800F0B20 8C420008 */  lw         $v0, 0x8($v0)
/* A6EE4 800F0B24 02621021 */  addu       $v0, $s3, $v0
/* A6EE8 800F0B28 A0560005 */  sb         $s6, 0x5($v0)
/* A6EEC 800F0B2C 8E8200A8 */  lw         $v0, 0xA8($s4)
/* A6EF0 800F0B30 02021021 */  addu       $v0, $s0, $v0
/* A6EF4 800F0B34 8C420008 */  lw         $v0, 0x8($v0)
/* A6EF8 800F0B38 02621021 */  addu       $v0, $s3, $v0
/* A6EFC 800F0B3C A0560006 */  sb         $s6, 0x6($v0)
/* A6F00 800F0B40 8E8200A8 */  lw         $v0, 0xA8($s4)
/* A6F04 800F0B44 02021021 */  addu       $v0, $s0, $v0
/* A6F08 800F0B48 8C420008 */  lw         $v0, 0x8($v0)
/* A6F0C 800F0B4C 02621021 */  addu       $v0, $s3, $v0
/* A6F10 800F0B50 A0560007 */  sb         $s6, 0x7($v0)
/* A6F14 800F0B54 8E8200A8 */  lw         $v0, 0xA8($s4)
/* A6F18 800F0B58 02021021 */  addu       $v0, $s0, $v0
/* A6F1C 800F0B5C 8C420008 */  lw         $v0, 0x8($v0)
/* A6F20 800F0B60 02621021 */  addu       $v0, $s3, $v0
/* A6F24 800F0B64 A0560008 */  sb         $s6, 0x8($v0)
/* A6F28 800F0B68 8E8200A8 */  lw         $v0, 0xA8($s4)
/* A6F2C 800F0B6C 02021021 */  addu       $v0, $s0, $v0
/* A6F30 800F0B70 8C420008 */  lw         $v0, 0x8($v0)
/* A6F34 800F0B74 02621021 */  addu       $v0, $s3, $v0
/* A6F38 800F0B78 A0560009 */  sb         $s6, 0x9($v0)
/* A6F3C 800F0B7C 8E8200A8 */  lw         $v0, 0xA8($s4)
/* A6F40 800F0B80 02021021 */  addu       $v0, $s0, $v0
/* A6F44 800F0B84 8C420008 */  lw         $v0, 0x8($v0)
/* A6F48 800F0B88 02621021 */  addu       $v0, $s3, $v0
/* A6F4C 800F0B8C A056000A */  sb         $s6, 0xA($v0)
/* A6F50 800F0B90 8E8200A8 */  lw         $v0, 0xA8($s4)
/* A6F54 800F0B94 02021021 */  addu       $v0, $s0, $v0
/* A6F58 800F0B98 8C420008 */  lw         $v0, 0x8($v0)
/* A6F5C 800F0B9C 02621021 */  addu       $v0, $s3, $v0
/* A6F60 800F0BA0 A056000B */  sb         $s6, 0xB($v0)
/* A6F64 800F0BA4 8E8200A8 */  lw         $v0, 0xA8($s4)
/* A6F68 800F0BA8 02021021 */  addu       $v0, $s0, $v0
/* A6F6C 800F0BAC 8C420008 */  lw         $v0, 0x8($v0)
/* A6F70 800F0BB0 02621021 */  addu       $v0, $s3, $v0
/* A6F74 800F0BB4 A056000C */  sb         $s6, 0xC($v0)
/* A6F78 800F0BB8 8E8200A8 */  lw         $v0, 0xA8($s4)
/* A6F7C 800F0BBC 02021021 */  addu       $v0, $s0, $v0
/* A6F80 800F0BC0 8C420008 */  lw         $v0, 0x8($v0)
/* A6F84 800F0BC4 02621021 */  addu       $v0, $s3, $v0
/* A6F88 800F0BC8 A056000D */  sb         $s6, 0xD($v0)
/* A6F8C 800F0BCC 8E8200A8 */  lw         $v0, 0xA8($s4)
/* A6F90 800F0BD0 02021021 */  addu       $v0, $s0, $v0
/* A6F94 800F0BD4 8C420008 */  lw         $v0, 0x8($v0)
/* A6F98 800F0BD8 02621021 */  addu       $v0, $s3, $v0
/* A6F9C 800F0BDC A056000E */  sb         $s6, 0xE($v0)
/* A6FA0 800F0BE0 8E8200A8 */  lw         $v0, 0xA8($s4)
/* A6FA4 800F0BE4 24050027 */  addiu      $a1, $zero, 0x27
/* A6FA8 800F0BE8 02021021 */  addu       $v0, $s0, $v0
/* A6FAC 800F0BEC 8C420008 */  lw         $v0, 0x8($v0)
/* A6FB0 800F0BF0 02608821 */  addu       $s1, $s3, $zero
/* A6FB4 800F0BF4 02621021 */  addu       $v0, $s3, $v0
/* A6FB8 800F0BF8 0C0026F4 */  jal        func_80009BD0
/* A6FBC 800F0BFC A056000F */   sb        $s6, 0xF($v0)
/* A6FC0 800F0C00 02402021 */  addu       $a0, $s2, $zero
/* A6FC4 800F0C04 0C0026F4 */  jal        func_80009BD0
/* A6FC8 800F0C08 24050005 */   addiu     $a1, $zero, 0x5
.Lrace_800F0C0C:
/* A6FCC 800F0C0C 8E420028 */  lw         $v0, 0x28($s2)
/* A6FD0 800F0C10 844400A0 */  lh         $a0, 0xA0($v0)
/* A6FD4 800F0C14 8C4200A4 */  lw         $v0, 0xA4($v0)
/* A6FD8 800F0C18 0040F809 */  jalr       $v0
/* A6FDC 800F0C1C 02442021 */   addu      $a0, $s2, $a0
/* A6FE0 800F0C20 00401821 */  addu       $v1, $v0, $zero
/* A6FE4 800F0C24 24020006 */  addiu      $v0, $zero, 0x6
/* A6FE8 800F0C28 10620062 */  beq        $v1, $v0, .Lrace_800F0DB4
/* A6FEC 800F0C2C 24020029 */   addiu     $v0, $zero, 0x29
/* A6FF0 800F0C30 10620016 */  beq        $v1, $v0, .Lrace_800F0C8C
/* A6FF4 800F0C34 2C62002A */   sltiu     $v0, $v1, 0x2A
/* A6FF8 800F0C38 10400005 */  beqz       $v0, .Lrace_800F0C50
/* A6FFC 800F0C3C 24020028 */   addiu     $v0, $zero, 0x28
/* A7000 800F0C40 1062000A */  beq        $v1, $v0, .Lrace_800F0C6C
/* A7004 800F0C44 00000000 */   nop
/* A7008 800F0C48 0803C365 */  j          .Lrace_800F0D94
/* A700C 800F0C4C 00000000 */   nop
.Lrace_800F0C50:
/* A7010 800F0C50 2402002A */  addiu      $v0, $zero, 0x2A
/* A7014 800F0C54 10620023 */  beq        $v1, $v0, .Lrace_800F0CE4
/* A7018 800F0C58 2402002B */   addiu     $v0, $zero, 0x2B
/* A701C 800F0C5C 10620037 */  beq        $v1, $v0, .Lrace_800F0D3C
/* A7020 800F0C60 00000000 */   nop
/* A7024 800F0C64 0803C365 */  j          .Lrace_800F0D94
/* A7028 800F0C68 00000000 */   nop
.Lrace_800F0C6C:
/* A702C 800F0C6C 0C002680 */  jal        func_80009A00
/* A7030 800F0C70 02402021 */   addu      $a0, $s2, $zero
/* A7034 800F0C74 8E8300A8 */  lw         $v1, 0xA8($s4)
/* A7038 800F0C78 02031821 */  addu       $v1, $s0, $v1
/* A703C 800F0C7C 8C630008 */  lw         $v1, 0x8($v1)
/* A7040 800F0C80 02231821 */  addu       $v1, $s1, $v1
/* A7044 800F0C84 0803C303 */  j          .Lrace_800F0C0C
/* A7048 800F0C88 AC620000 */   sw        $v0, 0x0($v1)
.Lrace_800F0C8C:
/* A704C 800F0C8C 0C002680 */  jal        func_80009A00
/* A7050 800F0C90 02402021 */   addu      $a0, $s2, $zero
/* A7054 800F0C94 8E8300A8 */  lw         $v1, 0xA8($s4)
/* A7058 800F0C98 02031821 */  addu       $v1, $s0, $v1
/* A705C 800F0C9C 8C630008 */  lw         $v1, 0x8($v1)
/* A7060 800F0CA0 02402021 */  addu       $a0, $s2, $zero
/* A7064 800F0CA4 02231821 */  addu       $v1, $s1, $v1
/* A7068 800F0CA8 0C002680 */  jal        func_80009A00
/* A706C 800F0CAC A0620004 */   sb        $v0, 0x4($v1)
/* A7070 800F0CB0 8E8300A8 */  lw         $v1, 0xA8($s4)
/* A7074 800F0CB4 02031821 */  addu       $v1, $s0, $v1
/* A7078 800F0CB8 8C630008 */  lw         $v1, 0x8($v1)
/* A707C 800F0CBC 02402021 */  addu       $a0, $s2, $zero
/* A7080 800F0CC0 02231821 */  addu       $v1, $s1, $v1
/* A7084 800F0CC4 0C002680 */  jal        func_80009A00
/* A7088 800F0CC8 A0620005 */   sb        $v0, 0x5($v1)
/* A708C 800F0CCC 8E8300A8 */  lw         $v1, 0xA8($s4)
/* A7090 800F0CD0 02031821 */  addu       $v1, $s0, $v1
/* A7094 800F0CD4 8C630008 */  lw         $v1, 0x8($v1)
/* A7098 800F0CD8 02231821 */  addu       $v1, $s1, $v1
/* A709C 800F0CDC 0803C303 */  j          .Lrace_800F0C0C
/* A70A0 800F0CE0 A0620006 */   sb        $v0, 0x6($v1)
.Lrace_800F0CE4:
/* A70A4 800F0CE4 0C002680 */  jal        func_80009A00
/* A70A8 800F0CE8 02402021 */   addu      $a0, $s2, $zero
/* A70AC 800F0CEC 8E8300A8 */  lw         $v1, 0xA8($s4)
/* A70B0 800F0CF0 02031821 */  addu       $v1, $s0, $v1
/* A70B4 800F0CF4 8C630008 */  lw         $v1, 0x8($v1)
/* A70B8 800F0CF8 02402021 */  addu       $a0, $s2, $zero
/* A70BC 800F0CFC 02231821 */  addu       $v1, $s1, $v1
/* A70C0 800F0D00 0C002680 */  jal        func_80009A00
/* A70C4 800F0D04 A0620008 */   sb        $v0, 0x8($v1)
/* A70C8 800F0D08 8E8300A8 */  lw         $v1, 0xA8($s4)
/* A70CC 800F0D0C 02031821 */  addu       $v1, $s0, $v1
/* A70D0 800F0D10 8C630008 */  lw         $v1, 0x8($v1)
/* A70D4 800F0D14 02402021 */  addu       $a0, $s2, $zero
/* A70D8 800F0D18 02231821 */  addu       $v1, $s1, $v1
/* A70DC 800F0D1C 0C002680 */  jal        func_80009A00
/* A70E0 800F0D20 A0620009 */   sb        $v0, 0x9($v1)
/* A70E4 800F0D24 8E8300A8 */  lw         $v1, 0xA8($s4)
/* A70E8 800F0D28 02031821 */  addu       $v1, $s0, $v1
/* A70EC 800F0D2C 8C630008 */  lw         $v1, 0x8($v1)
/* A70F0 800F0D30 02231821 */  addu       $v1, $s1, $v1
/* A70F4 800F0D34 0803C303 */  j          .Lrace_800F0C0C
/* A70F8 800F0D38 A062000A */   sb        $v0, 0xA($v1)
.Lrace_800F0D3C:
/* A70FC 800F0D3C 0C002680 */  jal        func_80009A00
/* A7100 800F0D40 02402021 */   addu      $a0, $s2, $zero
/* A7104 800F0D44 8E8300A8 */  lw         $v1, 0xA8($s4)
/* A7108 800F0D48 02031821 */  addu       $v1, $s0, $v1
/* A710C 800F0D4C 8C630008 */  lw         $v1, 0x8($v1)
/* A7110 800F0D50 02402021 */  addu       $a0, $s2, $zero
/* A7114 800F0D54 02231821 */  addu       $v1, $s1, $v1
/* A7118 800F0D58 0C002680 */  jal        func_80009A00
/* A711C 800F0D5C A062000C */   sb        $v0, 0xC($v1)
/* A7120 800F0D60 8E8300A8 */  lw         $v1, 0xA8($s4)
/* A7124 800F0D64 02031821 */  addu       $v1, $s0, $v1
/* A7128 800F0D68 8C630008 */  lw         $v1, 0x8($v1)
/* A712C 800F0D6C 02402021 */  addu       $a0, $s2, $zero
/* A7130 800F0D70 02231821 */  addu       $v1, $s1, $v1
/* A7134 800F0D74 0C002680 */  jal        func_80009A00
/* A7138 800F0D78 A062000D */   sb        $v0, 0xD($v1)
/* A713C 800F0D7C 8E8300A8 */  lw         $v1, 0xA8($s4)
/* A7140 800F0D80 02031821 */  addu       $v1, $s0, $v1
/* A7144 800F0D84 8C630008 */  lw         $v1, 0x8($v1)
/* A7148 800F0D88 02231821 */  addu       $v1, $s1, $v1
/* A714C 800F0D8C 0803C303 */  j          .Lrace_800F0C0C
/* A7150 800F0D90 A062000E */   sb        $v0, 0xE($v1)
.Lrace_800F0D94:
/* A7154 800F0D94 8E420028 */  lw         $v0, 0x28($s2)
/* A7158 800F0D98 00002821 */  addu       $a1, $zero, $zero
/* A715C 800F0D9C 84440098 */  lh         $a0, 0x98($v0)
/* A7160 800F0DA0 8C42009C */  lw         $v0, 0x9C($v0)
/* A7164 800F0DA4 0040F809 */  jalr       $v0
/* A7168 800F0DA8 02442021 */   addu      $a0, $s2, $a0
/* A716C 800F0DAC 0803C303 */  j          .Lrace_800F0C0C
/* A7170 800F0DB0 00000000 */   nop
.Lrace_800F0DB4:
/* A7174 800F0DB4 26730010 */  addiu      $s3, $s3, 0x10
/* A7178 800F0DB8 0803C2B7 */  j          .Lrace_800F0ADC
/* A717C 800F0DBC 26F70001 */   addiu     $s7, $s7, 0x1
.Lrace_800F0DC0:
/* A7180 800F0DC0 0C0026F4 */  jal        func_80009BD0
/* A7184 800F0DC4 24050006 */   addiu     $a1, $zero, 0x6
/* A7188 800F0DC8 26B50010 */  addiu      $s5, $s5, 0x10
/* A718C 800F0DCC 0803C26E */  j          .Lrace_800F09B8
/* A7190 800F0DD0 27DE0001 */   addiu     $fp, $fp, 0x1
.Lrace_800F0DD4:
/* A7194 800F0DD4 02402021 */  addu       $a0, $s2, $zero
/* A7198 800F0DD8 0C0026F4 */  jal        func_80009BD0
/* A719C 800F0DDC 24050006 */   addiu     $a1, $zero, 0x6
/* A71A0 800F0DE0 8E420028 */  lw         $v0, 0x28($s2)
/* A71A4 800F0DE4 00008021 */  addu       $s0, $zero, $zero
/* A71A8 800F0DE8 844400A0 */  lh         $a0, 0xA0($v0)
/* A71AC 800F0DEC 8C4200A4 */  lw         $v0, 0xA4($v0)
/* A71B0 800F0DF0 0040F809 */  jalr       $v0
/* A71B4 800F0DF4 02442021 */   addu      $a0, $s2, $a0
/* A71B8 800F0DF8 2403002D */  addiu      $v1, $zero, 0x2D
/* A71BC 800F0DFC 1443000E */  bne        $v0, $v1, .Lrace_800F0E38
/* A71C0 800F0E00 00000000 */   nop
/* A71C4 800F0E04 8E420028 */  lw         $v0, 0x28($s2)
/* A71C8 800F0E08 844400A0 */  lh         $a0, 0xA0($v0)
/* A71CC 800F0E0C 8C4200A4 */  lw         $v0, 0xA4($v0)
/* A71D0 800F0E10 0040F809 */  jalr       $v0
/* A71D4 800F0E14 02442021 */   addu      $a0, $s2, $a0
/* A71D8 800F0E18 27A40018 */  addiu      $a0, $sp, 0x18
/* A71DC 800F0E1C 26450044 */  addiu      $a1, $s2, 0x44
/* A71E0 800F0E20 0C000708 */  jal        func_80001C20
/* A71E4 800F0E24 24060008 */   addiu     $a2, $zero, 0x8
/* A71E8 800F0E28 02802021 */  addu       $a0, $s4, $zero
/* A71EC 800F0E2C 0C016427 */  jal        func_8005909C
/* A71F0 800F0E30 27A50018 */   addiu     $a1, $sp, 0x18
/* A71F4 800F0E34 00408021 */  addu       $s0, $v0, $zero
.Lrace_800F0E38:
/* A71F8 800F0E38 16000003 */  bnez       $s0, .Lrace_800F0E48
/* A71FC 800F0E3C 00000000 */   nop
/* A7200 800F0E40 0803C396 */  j          .Lrace_800F0E58
/* A7204 800F0E44 AE8000B8 */   sw        $zero, 0xB8($s4)
.Lrace_800F0E48:
/* A7208 800F0E48 8E8200A8 */  lw         $v0, 0xA8($s4)
/* A720C 800F0E4C 02021023 */  subu       $v0, $s0, $v0
/* A7210 800F0E50 00021103 */  sra        $v0, $v0, 4
/* A7214 800F0E54 AE8200B8 */  sw         $v0, 0xB8($s4)
.Lrace_800F0E58:
/* A7218 800F0E58 8E420028 */  lw         $v0, 0x28($s2)
/* A721C 800F0E5C 844400A0 */  lh         $a0, 0xA0($v0)
/* A7220 800F0E60 8C4200A4 */  lw         $v0, 0xA4($v0)
/* A7224 800F0E64 0040F809 */  jalr       $v0
/* A7228 800F0E68 02442021 */   addu      $a0, $s2, $a0
/* A722C 800F0E6C 2403002E */  addiu      $v1, $zero, 0x2E
/* A7230 800F0E70 14430004 */  bne        $v0, $v1, .Lrace_800F0E84
/* A7234 800F0E74 00000000 */   nop
/* A7238 800F0E78 0C0025F8 */  jal        func_800097E0
/* A723C 800F0E7C 02402021 */   addu      $a0, $s2, $zero
/* A7240 800F0E80 E68000AC */  swc1       $f0, 0xAC($s4)
.Lrace_800F0E84:
/* A7244 800F0E84 8E420028 */  lw         $v0, 0x28($s2)
/* A7248 800F0E88 84440048 */  lh         $a0, 0x48($v0)
/* A724C 800F0E8C 8C42004C */  lw         $v0, 0x4C($v0)
/* A7250 800F0E90 0040F809 */  jalr       $v0
/* A7254 800F0E94 02442021 */   addu      $a0, $s2, $a0
/* A7258 800F0E98 12400007 */  beqz       $s2, .Lrace_800F0EB8
/* A725C 800F0E9C 00000000 */   nop
/* A7260 800F0EA0 8E420028 */  lw         $v0, 0x28($s2)
/* A7264 800F0EA4 24050003 */  addiu      $a1, $zero, 0x3
/* A7268 800F0EA8 84440038 */  lh         $a0, 0x38($v0)
/* A726C 800F0EAC 8C42003C */  lw         $v0, 0x3C($v0)
/* A7270 800F0EB0 0040F809 */  jalr       $v0
/* A7274 800F0EB4 02442021 */   addu      $a0, $s2, $a0
.Lrace_800F0EB8:
/* A7278 800F0EB8 8E8300A4 */  lw         $v1, 0xA4($s4)
/* A727C 800F0EBC AE8000B4 */  sw         $zero, 0xB4($s4)
/* A7280 800F0EC0 AE8000BC */  sw         $zero, 0xBC($s4)
/* A7284 800F0EC4 AE8000C0 */  sw         $zero, 0xC0($s4)
/* A7288 800F0EC8 8C620000 */  lw         $v0, 0x0($v1)
/* A728C 800F0ECC 84440030 */  lh         $a0, 0x30($v0)
/* A7290 800F0ED0 8C420034 */  lw         $v0, 0x34($v0)
/* A7294 800F0ED4 0040F809 */  jalr       $v0
/* A7298 800F0ED8 00642021 */   addu      $a0, $v1, $a0
/* A729C 800F0EDC 268400C5 */  addiu      $a0, $s4, 0xC5
/* A72A0 800F0EE0 AE8200A0 */  sw         $v0, 0xA0($s4)
/* A72A4 800F0EE4 8FA800BC */  lw         $t0, 0xBC($sp)
/* A72A8 800F0EE8 3C01800D */  lui        $at, %hi(D_race_800CC954)
/* A72AC 800F0EEC C420C954 */  lwc1       $f0, %lo(D_race_800CC954)($at)
/* A72B0 800F0EF0 27A50020 */  addiu      $a1, $sp, 0x20
/* A72B4 800F0EF4 AFA80020 */  sw         $t0, 0x20($sp)
/* A72B8 800F0EF8 8E8300A0 */  lw         $v1, 0xA0($s4)
/* A72BC 800F0EFC 2402000B */  addiu      $v0, $zero, 0xB
/* A72C0 800F0F00 AFA20038 */  sw         $v0, 0x38($sp)
/* A72C4 800F0F04 24020001 */  addiu      $v0, $zero, 0x1
/* A72C8 800F0F08 AFA2003C */  sw         $v0, 0x3C($sp)
/* A72CC 800F0F0C AFA00040 */  sw         $zero, 0x40($sp)
/* A72D0 800F0F10 AFA00044 */  sw         $zero, 0x44($sp)
/* A72D4 800F0F14 AFA00028 */  sw         $zero, 0x28($sp)
/* A72D8 800F0F18 AFA0002C */  sw         $zero, 0x2C($sp)
/* A72DC 800F0F1C AFA00030 */  sw         $zero, 0x30($sp)
/* A72E0 800F0F20 AFA20048 */  sw         $v0, 0x48($sp)
/* A72E4 800F0F24 AFA0004C */  sw         $zero, 0x4C($sp)
/* A72E8 800F0F28 A7A20050 */  sh         $v0, 0x50($sp)
/* A72EC 800F0F2C AFA00054 */  sw         $zero, 0x54($sp)
/* A72F0 800F0F30 E7A00034 */  swc1       $f0, 0x34($sp)
/* A72F4 800F0F34 0C033D00 */  jal        func_race_800CF400
/* A72F8 800F0F38 AFA30024 */   sw        $v1, 0x24($sp)
/* A72FC 800F0F3C 2690000C */  addiu      $s0, $s4, 0xC
/* A7300 800F0F40 8E8500A0 */  lw         $a1, 0xA0($s4)
/* A7304 800F0F44 3C067CF0 */  lui        $a2, (0x7CF0BDC2 >> 16)
/* A7308 800F0F48 34C6BDC2 */  ori        $a2, $a2, (0x7CF0BDC2 & 0xFFFF)
/* A730C 800F0F4C 0C016059 */  jal        func_80058164
/* A7310 800F0F50 02002021 */   addu      $a0, $s0, $zero
/* A7314 800F0F54 02002021 */  addu       $a0, $s0, $zero
/* A7318 800F0F58 27A50078 */  addiu      $a1, $sp, 0x78
/* A731C 800F0F5C 8E02005C */  lw         $v0, 0x5C($s0)
/* A7320 800F0F60 3C01800D */  lui        $at, %hi(D_race_800CC958)
/* A7324 800F0F64 C434C958 */  lwc1       $f20, %lo(D_race_800CC958)($at)
/* A7328 800F0F68 34420002 */  ori        $v0, $v0, 0x2
/* A732C 800F0F6C AE02005C */  sw         $v0, 0x5C($s0)
/* A7330 800F0F70 AFA00078 */  sw         $zero, 0x78($sp)
/* A7334 800F0F74 AFA0007C */  sw         $zero, 0x7C($sp)
/* A7338 800F0F78 AFA00080 */  sw         $zero, 0x80($sp)
/* A733C 800F0F7C E7B40058 */  swc1       $f20, 0x58($sp)
/* A7340 800F0F80 AFA0005C */  sw         $zero, 0x5C($sp)
/* A7344 800F0F84 AFA00060 */  sw         $zero, 0x60($sp)
/* A7348 800F0F88 AFA00068 */  sw         $zero, 0x68($sp)
/* A734C 800F0F8C AFA0006C */  sw         $zero, 0x6C($sp)
/* A7350 800F0F90 0C015962 */  jal        func_80056588
/* A7354 800F0F94 E7B40070 */   swc1      $f20, 0x70($sp)
/* A7358 800F0F98 02002021 */  addu       $a0, $s0, $zero
/* A735C 800F0F9C 27A50058 */  addiu      $a1, $sp, 0x58
/* A7360 800F0FA0 0C015729 */  jal        func_80055CA4
/* A7364 800F0FA4 27A60068 */   addiu     $a2, $sp, 0x68
/* A7368 800F0FA8 27A40018 */  addiu      $a0, $sp, 0x18
/* A736C 800F0FAC 3C05800D */  lui        $a1, %hi(D_race_800CC94C)
/* A7370 800F0FB0 24A5C94C */  addiu      $a1, $a1, %lo(D_race_800CC94C)
/* A7374 800F0FB4 8E9000A0 */  lw         $s0, 0xA0($s4)
/* A7378 800F0FB8 0C000708 */  jal        func_80001C20
/* A737C 800F0FBC 24060008 */   addiu     $a2, $zero, 0x8
/* A7380 800F0FC0 8FA400BC */  lw         $a0, 0xBC($sp)
/* A7384 800F0FC4 0C016F2D */  jal        func_8005BCB4
/* A7388 800F0FC8 27A50018 */   addiu     $a1, $sp, 0x18
/* A738C 800F0FCC 00002821 */  addu       $a1, $zero, $zero
/* A7390 800F0FD0 00403021 */  addu       $a2, $v0, $zero
/* A7394 800F0FD4 0C01543D */  jal        func_800550F4
/* A7398 800F0FD8 02002021 */   addu      $a0, $s0, $zero
/* A739C 800F0FDC 8E8300A4 */  lw         $v1, 0xA4($s4)
/* A73A0 800F0FE0 8C620000 */  lw         $v0, 0x0($v1)
/* A73A4 800F0FE4 84440018 */  lh         $a0, 0x18($v0)
/* A73A8 800F0FE8 8C42001C */  lw         $v0, 0x1C($v0)
/* A73AC 800F0FEC 0040F809 */  jalr       $v0
/* A73B0 800F0FF0 00642021 */   addu      $a0, $v1, $a0
/* A73B4 800F0FF4 8FA500BC */  lw         $a1, 0xBC($sp)
/* A73B8 800F0FF8 AE82009C */  sw         $v0, 0x9C($s4)
/* A73BC 800F0FFC 8C4300EC */  lw         $v1, 0xEC($v0)
/* A73C0 800F1000 8FA600C8 */  lw         $a2, 0xC8($sp)
/* A73C4 800F1004 8FA700CC */  lw         $a3, 0xCC($sp)
/* A73C8 800F1008 84640030 */  lh         $a0, 0x30($v1)
/* A73CC 800F100C E7B40010 */  swc1       $f20, 0x10($sp)
/* A73D0 800F1010 8C630034 */  lw         $v1, 0x34($v1)
/* A73D4 800F1014 0060F809 */  jalr       $v1
/* A73D8 800F1018 00442021 */   addu      $a0, $v0, $a0
/* A73DC 800F101C 8FBF00AC */  lw         $ra, 0xAC($sp)
/* A73E0 800F1020 8FBE00A8 */  lw         $fp, 0xA8($sp)
/* A73E4 800F1024 8FB700A4 */  lw         $s7, 0xA4($sp)
/* A73E8 800F1028 8FB600A0 */  lw         $s6, 0xA0($sp)
/* A73EC 800F102C 8FB5009C */  lw         $s5, 0x9C($sp)
/* A73F0 800F1030 8FB40098 */  lw         $s4, 0x98($sp)
/* A73F4 800F1034 8FB30094 */  lw         $s3, 0x94($sp)
/* A73F8 800F1038 8FB20090 */  lw         $s2, 0x90($sp)
/* A73FC 800F103C 8FB1008C */  lw         $s1, 0x8C($sp)
/* A7400 800F1040 8FB00088 */  lw         $s0, 0x88($sp)
/* A7404 800F1044 D7B400B0 */  ldc1       $f20, 0xB0($sp)
/* A7408 800F1048 03E00008 */  jr         $ra
/* A740C 800F104C 27BD00B8 */   addiu     $sp, $sp, 0xB8

glabel func_race_800F1050
/* A7410 800F1050 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* A7414 800F1054 AFB20018 */  sw         $s2, 0x18($sp)
/* A7418 800F1058 00809021 */  addu       $s2, $a0, $zero
/* A741C 800F105C AFBF001C */  sw         $ra, 0x1C($sp)
/* A7420 800F1060 AFB10014 */  sw         $s1, 0x14($sp)
/* A7424 800F1064 AFB00010 */  sw         $s0, 0x10($sp)
/* A7428 800F1068 8E45009C */  lw         $a1, 0x9C($s2)
/* A742C 800F106C 10A00008 */  beqz       $a1, .Lrace_800F1090
/* A7430 800F1070 00000000 */   nop
/* A7434 800F1074 8E4300A4 */  lw         $v1, 0xA4($s2)
/* A7438 800F1078 8C620000 */  lw         $v0, 0x0($v1)
/* A743C 800F107C 84440080 */  lh         $a0, 0x80($v0)
/* A7440 800F1080 8C420084 */  lw         $v0, 0x84($v0)
/* A7444 800F1084 0040F809 */  jalr       $v0
/* A7448 800F1088 00642021 */   addu      $a0, $v1, $a0
/* A744C 800F108C AE40009C */  sw         $zero, 0x9C($s2)
.Lrace_800F1090:
/* A7450 800F1090 8E4500A0 */  lw         $a1, 0xA0($s2)
/* A7454 800F1094 50A00009 */  beql       $a1, $zero, .Lrace_800F10BC
/* A7458 800F1098 2644000C */   addiu     $a0, $s2, 0xC
/* A745C 800F109C 8E4300A4 */  lw         $v1, 0xA4($s2)
/* A7460 800F10A0 8C620000 */  lw         $v0, 0x0($v1)
/* A7464 800F10A4 84440098 */  lh         $a0, 0x98($v0)
/* A7468 800F10A8 8C42009C */  lw         $v0, 0x9C($v0)
/* A746C 800F10AC 0040F809 */  jalr       $v0
/* A7470 800F10B0 00642021 */   addu      $a0, $v1, $a0
/* A7474 800F10B4 AE4000A0 */  sw         $zero, 0xA0($s2)
/* A7478 800F10B8 2644000C */  addiu      $a0, $s2, 0xC
.Lrace_800F10BC:
/* A747C 800F10BC 0C01607E */  jal        func_800581F8
/* A7480 800F10C0 AE4000A4 */   sw        $zero, 0xA4($s2)
/* A7484 800F10C4 8E420000 */  lw         $v0, 0x0($s2)
/* A7488 800F10C8 10400003 */  beqz       $v0, .Lrace_800F10D8
/* A748C 800F10CC 00000000 */   nop
/* A7490 800F10D0 0C0163B9 */  jal        func_80058EE4
/* A7494 800F10D4 02402021 */   addu      $a0, $s2, $zero
.Lrace_800F10D8:
/* A7498 800F10D8 8E4200A8 */  lw         $v0, 0xA8($s2)
/* A749C 800F10DC 1040001A */  beqz       $v0, .Lrace_800F1148
/* A74A0 800F10E0 00000000 */   nop
/* A74A4 800F10E4 8E4200B0 */  lw         $v0, 0xB0($s2)
/* A74A8 800F10E8 10400011 */  beqz       $v0, .Lrace_800F1130
/* A74AC 800F10EC 00008021 */   addu      $s0, $zero, $zero
.Lrace_800F10F0:
/* A74B0 800F10F0 8E4200A8 */  lw         $v0, 0xA8($s2)
/* A74B4 800F10F4 00108900 */  sll        $s1, $s0, 4
/* A74B8 800F10F8 02221021 */  addu       $v0, $s1, $v0
/* A74BC 800F10FC 8C440008 */  lw         $a0, 0x8($v0)
/* A74C0 800F1100 10800006 */  beqz       $a0, .Lrace_800F111C
/* A74C4 800F1104 00000000 */   nop
/* A74C8 800F1108 0C009444 */  jal        func_80025110
/* A74CC 800F110C 00000000 */   nop
/* A74D0 800F1110 8E4200A8 */  lw         $v0, 0xA8($s2)
/* A74D4 800F1114 02221021 */  addu       $v0, $s1, $v0
/* A74D8 800F1118 AC400008 */  sw         $zero, 0x8($v0)
.Lrace_800F111C:
/* A74DC 800F111C 8E4200B0 */  lw         $v0, 0xB0($s2)
/* A74E0 800F1120 26100001 */  addiu      $s0, $s0, 0x1
/* A74E4 800F1124 0202102B */  sltu       $v0, $s0, $v0
/* A74E8 800F1128 1440FFF1 */  bnez       $v0, .Lrace_800F10F0
/* A74EC 800F112C 00000000 */   nop
.Lrace_800F1130:
/* A74F0 800F1130 8E4400A8 */  lw         $a0, 0xA8($s2)
/* A74F4 800F1134 50800004 */  beql       $a0, $zero, .Lrace_800F1148
/* A74F8 800F1138 AE4000A8 */   sw        $zero, 0xA8($s2)
/* A74FC 800F113C 0C009444 */  jal        func_80025110
/* A7500 800F1140 00000000 */   nop
/* A7504 800F1144 AE4000A8 */  sw         $zero, 0xA8($s2)
.Lrace_800F1148:
/* A7508 800F1148 0C03C1F7 */  jal        func_race_800F07DC
/* A750C 800F114C 02402021 */   addu      $a0, $s2, $zero
/* A7510 800F1150 8FBF001C */  lw         $ra, 0x1C($sp)
/* A7514 800F1154 8FB20018 */  lw         $s2, 0x18($sp)
/* A7518 800F1158 8FB10014 */  lw         $s1, 0x14($sp)
/* A751C 800F115C 8FB00010 */  lw         $s0, 0x10($sp)
/* A7520 800F1160 03E00008 */  jr         $ra
/* A7524 800F1164 27BD0020 */   addiu     $sp, $sp, 0x20

glabel func_race_800F1168
/* A7528 800F1168 27BDFF90 */  addiu      $sp, $sp, -0x70
/* A752C 800F116C AFB30054 */  sw         $s3, 0x54($sp)
/* A7530 800F1170 00809821 */  addu       $s3, $a0, $zero
/* A7534 800F1174 AFB00048 */  sw         $s0, 0x48($sp)
/* A7538 800F1178 AFBF0060 */  sw         $ra, 0x60($sp)
/* A753C 800F117C AFB5005C */  sw         $s5, 0x5C($sp)
/* A7540 800F1180 AFB40058 */  sw         $s4, 0x58($sp)
/* A7544 800F1184 AFB20050 */  sw         $s2, 0x50($sp)
/* A7548 800F1188 AFB1004C */  sw         $s1, 0x4C($sp)
/* A754C 800F118C F7B40068 */  sdc1       $f20, 0x68($sp)
/* A7550 800F1190 8E64009C */  lw         $a0, 0x9C($s3)
/* A7554 800F1194 0C0190C0 */  jal        func_80064300
/* A7558 800F1198 00A08021 */   addu      $s0, $a1, $zero
/* A755C 800F119C 8E6200B0 */  lw         $v0, 0xB0($s3)
/* A7560 800F11A0 10400021 */  beqz       $v0, .Lrace_800F1228
/* A7564 800F11A4 00003821 */   addu      $a3, $zero, $zero
.Lrace_800F11A8:
/* A7568 800F11A8 8E6300A8 */  lw         $v1, 0xA8($s3)
/* A756C 800F11AC 00073100 */  sll        $a2, $a3, 4
/* A7570 800F11B0 00C31821 */  addu       $v1, $a2, $v1
/* A7574 800F11B4 8C620000 */  lw         $v0, 0x0($v1)
/* A7578 800F11B8 00501021 */  addu       $v0, $v0, $s0
/* A757C 800F11BC AC620000 */  sw         $v0, 0x0($v1)
/* A7580 800F11C0 8E6200A8 */  lw         $v0, 0xA8($s3)
/* A7584 800F11C4 00C22021 */  addu       $a0, $a2, $v0
/* A7588 800F11C8 8C850004 */  lw         $a1, 0x4($a0)
/* A758C 800F11CC 8C830008 */  lw         $v1, 0x8($a0)
/* A7590 800F11D0 00051100 */  sll        $v0, $a1, 4
/* A7594 800F11D4 00431021 */  addu       $v0, $v0, $v1
/* A7598 800F11D8 8C830000 */  lw         $v1, 0x0($a0)
/* A759C 800F11DC 8C420000 */  lw         $v0, 0x0($v0)
/* A75A0 800F11E0 0043102B */  sltu       $v0, $v0, $v1
/* A75A4 800F11E4 1040000B */  beqz       $v0, .Lrace_800F1214
/* A75A8 800F11E8 24A20001 */   addiu     $v0, $a1, 0x1
/* A75AC 800F11EC AC820004 */  sw         $v0, 0x4($a0)
/* A75B0 800F11F0 8E6200A8 */  lw         $v0, 0xA8($s3)
/* A75B4 800F11F4 00C22021 */  addu       $a0, $a2, $v0
/* A75B8 800F11F8 8C830004 */  lw         $v1, 0x4($a0)
/* A75BC 800F11FC 8C82000C */  lw         $v0, 0xC($a0)
/* A75C0 800F1200 50620001 */  beql       $v1, $v0, .Lrace_800F1208
/* A75C4 800F1204 AC800004 */   sw        $zero, 0x4($a0)
.Lrace_800F1208:
/* A75C8 800F1208 8E6200A8 */  lw         $v0, 0xA8($s3)
/* A75CC 800F120C 00C21021 */  addu       $v0, $a2, $v0
/* A75D0 800F1210 AC400000 */  sw         $zero, 0x0($v0)
.Lrace_800F1214:
/* A75D4 800F1214 8E6200B0 */  lw         $v0, 0xB0($s3)
/* A75D8 800F1218 24E70001 */  addiu      $a3, $a3, 0x1
/* A75DC 800F121C 00E2102B */  sltu       $v0, $a3, $v0
/* A75E0 800F1220 1440FFE1 */  bnez       $v0, .Lrace_800F11A8
/* A75E4 800F1224 00000000 */   nop
.Lrace_800F1228:
/* A75E8 800F1228 8E6200BC */  lw         $v0, 0xBC($s3)
/* A75EC 800F122C 1040000A */  beqz       $v0, .Lrace_800F1258
/* A75F0 800F1230 02602021 */   addu      $a0, $s3, $zero
/* A75F4 800F1234 8E6200C0 */  lw         $v0, 0xC0($s3)
/* A75F8 800F1238 8E6300BC */  lw         $v1, 0xBC($s3)
/* A75FC 800F123C 00501021 */  addu       $v0, $v0, $s0
/* A7600 800F1240 0062182B */  sltu       $v1, $v1, $v0
/* A7604 800F1244 10600004 */  beqz       $v1, .Lrace_800F1258
/* A7608 800F1248 AE6200C0 */   sw        $v0, 0xC0($s3)
/* A760C 800F124C AE6000BC */  sw         $zero, 0xBC($s3)
/* A7610 800F1250 AE6000C0 */  sw         $zero, 0xC0($s3)
/* A7614 800F1254 02602021 */  addu       $a0, $s3, $zero
.Lrace_800F1258:
/* A7618 800F1258 27A60018 */  addiu      $a2, $sp, 0x18
/* A761C 800F125C 27B50020 */  addiu      $s5, $sp, 0x20
/* A7620 800F1260 02A03821 */  addu       $a3, $s5, $zero
/* A7624 800F1264 8E6500B8 */  lw         $a1, 0xB8($s3)
/* A7628 800F1268 8E6200A8 */  lw         $v0, 0xA8($s3)
/* A762C 800F126C 27B40028 */  addiu      $s4, $sp, 0x28
/* A7630 800F1270 AFB40010 */  sw         $s4, 0x10($sp)
/* A7634 800F1274 00052900 */  sll        $a1, $a1, 4
/* A7638 800F1278 0C03C4D4 */  jal        func_race_800F1350
/* A763C 800F127C 00452821 */   addu      $a1, $v0, $a1
/* A7640 800F1280 8E6200BC */  lw         $v0, 0xBC($s3)
/* A7644 800F1284 10400023 */  beqz       $v0, .Lrace_800F1314
/* A7648 800F1288 02602021 */   addu      $a0, $s3, $zero
/* A764C 800F128C 27B00030 */  addiu      $s0, $sp, 0x30
/* A7650 800F1290 02003021 */  addu       $a2, $s0, $zero
/* A7654 800F1294 27B10038 */  addiu      $s1, $sp, 0x38
/* A7658 800F1298 02203821 */  addu       $a3, $s1, $zero
/* A765C 800F129C 8E6500B4 */  lw         $a1, 0xB4($s3)
/* A7660 800F12A0 8E6200A8 */  lw         $v0, 0xA8($s3)
/* A7664 800F12A4 27B20040 */  addiu      $s2, $sp, 0x40
/* A7668 800F12A8 AFB20010 */  sw         $s2, 0x10($sp)
/* A766C 800F12AC 00052900 */  sll        $a1, $a1, 4
/* A7670 800F12B0 0C03C4D4 */  jal        func_race_800F1350
/* A7674 800F12B4 00452821 */   addu      $a1, $v0, $a1
/* A7678 800F12B8 02602021 */  addu       $a0, $s3, $zero
/* A767C 800F12BC 02002821 */  addu       $a1, $s0, $zero
/* A7680 800F12C0 27A60018 */  addiu      $a2, $sp, 0x18
/* A7684 800F12C4 00C03821 */  addu       $a3, $a2, $zero
/* A7688 800F12C8 C67400C0 */  lwc1       $f20, 0xC0($s3)
/* A768C 800F12CC 4680A520 */  cvt.s.w    $f20, $f20
/* A7690 800F12D0 C66000BC */  lwc1       $f0, 0xBC($s3)
/* A7694 800F12D4 46800020 */  cvt.s.w    $f0, $f0
/* A7698 800F12D8 4600A503 */  div.s      $f20, $f20, $f0
/* A769C 800F12DC 0C03C52A */  jal        func_race_800F14A8
/* A76A0 800F12E0 E7B40010 */   swc1      $f20, 0x10($sp)
/* A76A4 800F12E4 02602021 */  addu       $a0, $s3, $zero
/* A76A8 800F12E8 02202821 */  addu       $a1, $s1, $zero
/* A76AC 800F12EC 02A03021 */  addu       $a2, $s5, $zero
/* A76B0 800F12F0 02A03821 */  addu       $a3, $s5, $zero
/* A76B4 800F12F4 0C03C52A */  jal        func_race_800F14A8
/* A76B8 800F12F8 E7B40010 */   swc1      $f20, 0x10($sp)
/* A76BC 800F12FC 02602021 */  addu       $a0, $s3, $zero
/* A76C0 800F1300 02402821 */  addu       $a1, $s2, $zero
/* A76C4 800F1304 02803021 */  addu       $a2, $s4, $zero
/* A76C8 800F1308 02803821 */  addu       $a3, $s4, $zero
/* A76CC 800F130C 0C03C52A */  jal        func_race_800F14A8
/* A76D0 800F1310 E7B40010 */   swc1      $f20, 0x10($sp)
.Lrace_800F1314:
/* A76D4 800F1314 02602021 */  addu       $a0, $s3, $zero
/* A76D8 800F1318 27A50018 */  addiu      $a1, $sp, 0x18
/* A76DC 800F131C 02A03021 */  addu       $a2, $s5, $zero
/* A76E0 800F1320 0C03C553 */  jal        func_race_800F154C
/* A76E4 800F1324 02803821 */   addu      $a3, $s4, $zero
/* A76E8 800F1328 8FBF0060 */  lw         $ra, 0x60($sp)
/* A76EC 800F132C 8FB5005C */  lw         $s5, 0x5C($sp)
/* A76F0 800F1330 8FB40058 */  lw         $s4, 0x58($sp)
/* A76F4 800F1334 8FB30054 */  lw         $s3, 0x54($sp)
/* A76F8 800F1338 8FB20050 */  lw         $s2, 0x50($sp)
/* A76FC 800F133C 8FB1004C */  lw         $s1, 0x4C($sp)
/* A7700 800F1340 8FB00048 */  lw         $s0, 0x48($sp)
/* A7704 800F1344 D7B40068 */  ldc1       $f20, 0x68($sp)
/* A7708 800F1348 03E00008 */  jr         $ra
/* A770C 800F134C 27BD0070 */   addiu     $sp, $sp, 0x70

glabel func_race_800F1350
/* A7710 800F1350 27BDFFC8 */  addiu      $sp, $sp, -0x38
/* A7714 800F1354 AFB20020 */  sw         $s2, 0x20($sp)
/* A7718 800F1358 00809021 */  addu       $s2, $a0, $zero
/* A771C 800F135C AFB1001C */  sw         $s1, 0x1C($sp)
/* A7720 800F1360 00A08821 */  addu       $s1, $a1, $zero
/* A7724 800F1364 AFB30024 */  sw         $s3, 0x24($sp)
/* A7728 800F1368 24020001 */  addiu      $v0, $zero, 0x1
/* A772C 800F136C AFBF002C */  sw         $ra, 0x2C($sp)
/* A7730 800F1370 AFB40028 */  sw         $s4, 0x28($sp)
/* A7734 800F1374 AFB00018 */  sw         $s0, 0x18($sp)
/* A7738 800F1378 F7B40030 */  sdc1       $f20, 0x30($sp)
/* A773C 800F137C 8E24000C */  lw         $a0, 0xC($s1)
/* A7740 800F1380 8FB40048 */  lw         $s4, 0x48($sp)
/* A7744 800F1384 14820012 */  bne        $a0, $v0, .Lrace_800F13D0
/* A7748 800F1388 00E09821 */   addu      $s3, $a3, $zero
/* A774C 800F138C 8E220008 */  lw         $v0, 0x8($s1)
/* A7750 800F1390 88480004 */  lwl        $t0, 0x4($v0)
/* A7754 800F1394 98480007 */  lwr        $t0, 0x7($v0)
/* A7758 800F1398 A8C80000 */  swl        $t0, 0x0($a2)
/* A775C 800F139C B8C80003 */  swr        $t0, 0x3($a2)
/* A7760 800F13A0 8E220008 */  lw         $v0, 0x8($s1)
/* A7764 800F13A4 88480008 */  lwl        $t0, 0x8($v0)
/* A7768 800F13A8 9848000B */  lwr        $t0, 0xB($v0)
/* A776C 800F13AC AA680000 */  swl        $t0, 0x0($s3)
/* A7770 800F13B0 BA680003 */  swr        $t0, 0x3($s3)
/* A7774 800F13B4 8E220008 */  lw         $v0, 0x8($s1)
/* A7778 800F13B8 8848000C */  lwl        $t0, 0xC($v0)
/* A777C 800F13BC 9848000F */  lwr        $t0, 0xF($v0)
/* A7780 800F13C0 AA880000 */  swl        $t0, 0x0($s4)
/* A7784 800F13C4 BA880003 */  swr        $t0, 0x3($s4)
/* A7788 800F13C8 0803C521 */  j          .Lrace_800F1484
/* A778C 800F13CC 00000000 */   nop
.Lrace_800F13D0:
/* A7790 800F13D0 8E230004 */  lw         $v1, 0x4($s1)
/* A7794 800F13D4 24620001 */  addiu      $v0, $v1, 0x1
/* A7798 800F13D8 0044001B */  divu       $zero, $v0, $a0
/* A779C 800F13DC 14800002 */  bnez       $a0, .Lrace_800F13E8
/* A77A0 800F13E0 00000000 */   nop
/* A77A4 800F13E4 0007000D */  break      7
.Lrace_800F13E8:
/* A77A8 800F13E8 00008010 */  mfhi       $s0
/* A77AC 800F13EC 00C03821 */  addu       $a3, $a2, $zero
/* A77B0 800F13F0 C6340000 */  lwc1       $f20, 0x0($s1)
/* A77B4 800F13F4 4680A520 */  cvt.s.w    $f20, $f20
/* A77B8 800F13F8 8E260008 */  lw         $a2, 0x8($s1)
/* A77BC 800F13FC 02402021 */  addu       $a0, $s2, $zero
/* A77C0 800F1400 00031900 */  sll        $v1, $v1, 4
/* A77C4 800F1404 00661821 */  addu       $v1, $v1, $a2
/* A77C8 800F1408 24650004 */  addiu      $a1, $v1, 0x4
/* A77CC 800F140C C4600000 */  lwc1       $f0, 0x0($v1)
/* A77D0 800F1410 46800020 */  cvt.s.w    $f0, $f0
/* A77D4 800F1414 4600A503 */  div.s      $f20, $f20, $f0
/* A77D8 800F1418 E7B40010 */  swc1       $f20, 0x10($sp)
/* A77DC 800F141C 00108100 */  sll        $s0, $s0, 4
/* A77E0 800F1420 00D03021 */  addu       $a2, $a2, $s0
/* A77E4 800F1424 0C03C52A */  jal        func_race_800F14A8
/* A77E8 800F1428 24C60004 */   addiu     $a2, $a2, 0x4
/* A77EC 800F142C 02402021 */  addu       $a0, $s2, $zero
/* A77F0 800F1430 8E250004 */  lw         $a1, 0x4($s1)
/* A77F4 800F1434 8E260008 */  lw         $a2, 0x8($s1)
/* A77F8 800F1438 02603821 */  addu       $a3, $s3, $zero
/* A77FC 800F143C E7B40010 */  swc1       $f20, 0x10($sp)
/* A7800 800F1440 00052900 */  sll        $a1, $a1, 4
/* A7804 800F1444 00C52821 */  addu       $a1, $a2, $a1
/* A7808 800F1448 24A50008 */  addiu      $a1, $a1, 0x8
/* A780C 800F144C 00D03021 */  addu       $a2, $a2, $s0
/* A7810 800F1450 0C03C52A */  jal        func_race_800F14A8
/* A7814 800F1454 24C60008 */   addiu     $a2, $a2, 0x8
/* A7818 800F1458 02402021 */  addu       $a0, $s2, $zero
/* A781C 800F145C 8E250004 */  lw         $a1, 0x4($s1)
/* A7820 800F1460 8E260008 */  lw         $a2, 0x8($s1)
/* A7824 800F1464 02803821 */  addu       $a3, $s4, $zero
/* A7828 800F1468 E7B40010 */  swc1       $f20, 0x10($sp)
/* A782C 800F146C 00052900 */  sll        $a1, $a1, 4
/* A7830 800F1470 00C52821 */  addu       $a1, $a2, $a1
/* A7834 800F1474 24A5000C */  addiu      $a1, $a1, 0xC
/* A7838 800F1478 00D03021 */  addu       $a2, $a2, $s0
/* A783C 800F147C 0C03C52A */  jal        func_race_800F14A8
/* A7840 800F1480 24C6000C */   addiu     $a2, $a2, 0xC
.Lrace_800F1484:
/* A7844 800F1484 8FBF002C */  lw         $ra, 0x2C($sp)
/* A7848 800F1488 8FB40028 */  lw         $s4, 0x28($sp)
/* A784C 800F148C 8FB30024 */  lw         $s3, 0x24($sp)
/* A7850 800F1490 8FB20020 */  lw         $s2, 0x20($sp)
/* A7854 800F1494 8FB1001C */  lw         $s1, 0x1C($sp)
/* A7858 800F1498 8FB00018 */  lw         $s0, 0x18($sp)
/* A785C 800F149C D7B40030 */  ldc1       $f20, 0x30($sp)
/* A7860 800F14A0 03E00008 */  jr         $ra
/* A7864 800F14A4 27BD0038 */   addiu     $sp, $sp, 0x38

glabel func_race_800F14A8
/* A7868 800F14A8 90A20000 */  lbu        $v0, 0x0($a1)
/* A786C 800F14AC 44821000 */  mtc1       $v0, $f2
/* A7870 800F14B0 468010A0 */  cvt.s.w    $f2, $f2
/* A7874 800F14B4 90C20000 */  lbu        $v0, 0x0($a2)
/* A7878 800F14B8 C7A60010 */  lwc1       $f6, 0x10($sp)
/* A787C 800F14BC 44820000 */  mtc1       $v0, $f0
/* A7880 800F14C0 46800020 */  cvt.s.w    $f0, $f0
/* A7884 800F14C4 46003002 */  mul.s      $f0, $f6, $f0
/* A7888 800F14C8 3C01800D */  lui        $at, %hi(D_race_800CC95C)
/* A788C 800F14CC C424C95C */  lwc1       $f4, %lo(D_race_800CC95C)($at)
/* A7890 800F14D0 46062101 */  sub.s      $f4, $f4, $f6
/* A7894 800F14D4 46022082 */  mul.s      $f2, $f4, $f2
/* A7898 800F14D8 46001080 */  add.s      $f2, $f2, $f0
/* A789C 800F14DC 4600120D */  trunc.w.s  $f8, $f2
/* A78A0 800F14E0 44024000 */  mfc1       $v0, $f8
/* A78A4 800F14E4 A0E20000 */  sb         $v0, 0x0($a3)
/* A78A8 800F14E8 90A20001 */  lbu        $v0, 0x1($a1)
/* A78AC 800F14EC 44821000 */  mtc1       $v0, $f2
/* A78B0 800F14F0 468010A0 */  cvt.s.w    $f2, $f2
/* A78B4 800F14F4 46022082 */  mul.s      $f2, $f4, $f2
/* A78B8 800F14F8 90C20001 */  lbu        $v0, 0x1($a2)
/* A78BC 800F14FC 44820000 */  mtc1       $v0, $f0
/* A78C0 800F1500 46800020 */  cvt.s.w    $f0, $f0
/* A78C4 800F1504 46003002 */  mul.s      $f0, $f6, $f0
/* A78C8 800F1508 46001080 */  add.s      $f2, $f2, $f0
/* A78CC 800F150C 4600120D */  trunc.w.s  $f8, $f2
/* A78D0 800F1510 44024000 */  mfc1       $v0, $f8
/* A78D4 800F1514 A0E20001 */  sb         $v0, 0x1($a3)
/* A78D8 800F1518 90A20002 */  lbu        $v0, 0x2($a1)
/* A78DC 800F151C 44820000 */  mtc1       $v0, $f0
/* A78E0 800F1520 46800020 */  cvt.s.w    $f0, $f0
/* A78E4 800F1524 46002102 */  mul.s      $f4, $f4, $f0
/* A78E8 800F1528 90C20002 */  lbu        $v0, 0x2($a2)
/* A78EC 800F152C 44820000 */  mtc1       $v0, $f0
/* A78F0 800F1530 46800020 */  cvt.s.w    $f0, $f0
/* A78F4 800F1534 46003182 */  mul.s      $f6, $f6, $f0
/* A78F8 800F1538 46062100 */  add.s      $f4, $f4, $f6
/* A78FC 800F153C 4600220D */  trunc.w.s  $f8, $f4
/* A7900 800F1540 44024000 */  mfc1       $v0, $f8
/* A7904 800F1544 03E00008 */  jr         $ra
/* A7908 800F1548 A0E20002 */   sb        $v0, 0x2($a3)

glabel func_race_800F154C
/* A790C 800F154C 27BDFFC0 */  addiu      $sp, $sp, -0x40
/* A7910 800F1550 AFB70034 */  sw         $s7, 0x34($sp)
/* A7914 800F1554 00A0B821 */  addu       $s7, $a1, $zero
/* A7918 800F1558 AFBE0038 */  sw         $fp, 0x38($sp)
/* A791C 800F155C 00C0F021 */  addu       $fp, $a2, $zero
/* A7920 800F1560 AFB30024 */  sw         $s3, 0x24($sp)
/* A7924 800F1564 00009821 */  addu       $s3, $zero, $zero
/* A7928 800F1568 27A50010 */  addiu      $a1, $sp, 0x10
/* A792C 800F156C AFB1001C */  sw         $s1, 0x1C($sp)
/* A7930 800F1570 02608821 */  addu       $s1, $s3, $zero
/* A7934 800F1574 AFB60030 */  sw         $s6, 0x30($sp)
/* A7938 800F1578 24160001 */  addiu      $s6, $zero, 0x1
/* A793C 800F157C AFBF003C */  sw         $ra, 0x3C($sp)
/* A7940 800F1580 AFB5002C */  sw         $s5, 0x2C($sp)
/* A7944 800F1584 AFB40028 */  sw         $s4, 0x28($sp)
/* A7948 800F1588 AFB20020 */  sw         $s2, 0x20($sp)
/* A794C 800F158C AFB00018 */  sw         $s0, 0x18($sp)
/* A7950 800F1590 AFA40040 */  sw         $a0, 0x40($sp)
/* A7954 800F1594 AFA7004C */  sw         $a3, 0x4C($sp)
/* A7958 800F1598 8C8300A0 */  lw         $v1, 0xA0($a0)
/* A795C 800F159C 24150002 */  addiu      $s5, $zero, 0x2
/* A7960 800F15A0 8C62003C */  lw         $v0, 0x3C($v1)
/* A7964 800F15A4 0260A021 */  addu       $s4, $s3, $zero
/* A7968 800F15A8 84440058 */  lh         $a0, 0x58($v0)
/* A796C 800F15AC 8C42005C */  lw         $v0, 0x5C($v0)
/* A7970 800F15B0 0040F809 */  jalr       $v0
/* A7974 800F15B4 00642021 */   addu      $a0, $v1, $a0
.Lrace_800F15B8:
/* A7978 800F15B8 5236000B */  beql       $s1, $s6, .Lrace_800F15E8
/* A797C 800F15BC 03C09821 */   addu      $s3, $fp, $zero
/* A7980 800F15C0 12200005 */  beqz       $s1, .Lrace_800F15D8
/* A7984 800F15C4 00000000 */   nop
/* A7988 800F15C8 12350006 */  beq        $s1, $s5, .Lrace_800F15E4
/* A798C 800F15CC 00008021 */   addu      $s0, $zero, $zero
/* A7990 800F15D0 0803C57C */  j          .Lrace_800F15F0
/* A7994 800F15D4 02809021 */   addu      $s2, $s4, $zero
.Lrace_800F15D8:
/* A7998 800F15D8 8FB3004C */  lw         $s3, 0x4C($sp)
/* A799C 800F15DC 0803C57B */  j          .Lrace_800F15EC
/* A79A0 800F15E0 00008021 */   addu      $s0, $zero, $zero
.Lrace_800F15E4:
/* A79A4 800F15E4 02E09821 */  addu       $s3, $s7, $zero
.Lrace_800F15E8:
/* A79A8 800F15E8 00008021 */  addu       $s0, $zero, $zero
.Lrace_800F15EC:
/* A79AC 800F15EC 02809021 */  addu       $s2, $s4, $zero
.Lrace_800F15F0:
/* A79B0 800F15F0 02502821 */  addu       $a1, $s2, $s0
.Lrace_800F15F4:
/* A79B4 800F15F4 8FA30010 */  lw         $v1, 0x10($sp)
/* A79B8 800F15F8 02603021 */  addu       $a2, $s3, $zero
/* A79BC 800F15FC 8C620008 */  lw         $v0, 0x8($v1)
/* A79C0 800F1600 26100001 */  addiu      $s0, $s0, 0x1
/* A79C4 800F1604 84440068 */  lh         $a0, 0x68($v0)
/* A79C8 800F1608 8C42006C */  lw         $v0, 0x6C($v0)
/* A79CC 800F160C 0040F809 */  jalr       $v0
/* A79D0 800F1610 00642021 */   addu      $a0, $v1, $a0
/* A79D4 800F1614 2E02000B */  sltiu      $v0, $s0, 0xB
/* A79D8 800F1618 1440FFF6 */  bnez       $v0, .Lrace_800F15F4
/* A79DC 800F161C 02502821 */   addu      $a1, $s2, $s0
/* A79E0 800F1620 26310001 */  addiu      $s1, $s1, 0x1
/* A79E4 800F1624 2E220003 */  sltiu      $v0, $s1, 0x3
/* A79E8 800F1628 1440FFE3 */  bnez       $v0, .Lrace_800F15B8
/* A79EC 800F162C 2694000B */   addiu     $s4, $s4, 0xB
/* A79F0 800F1630 8FA80040 */  lw         $t0, 0x40($sp)
/* A79F4 800F1634 8D0300A0 */  lw         $v1, 0xA0($t0)
/* A79F8 800F1638 24050001 */  addiu      $a1, $zero, 0x1
/* A79FC 800F163C 8C62003C */  lw         $v0, 0x3C($v1)
/* A7A00 800F1640 00003021 */  addu       $a2, $zero, $zero
/* A7A04 800F1644 84440060 */  lh         $a0, 0x60($v0)
/* A7A08 800F1648 8C420064 */  lw         $v0, 0x64($v0)
/* A7A0C 800F164C 0040F809 */  jalr       $v0
/* A7A10 800F1650 00642021 */   addu      $a0, $v1, $a0
/* A7A14 800F1654 8FBF003C */  lw         $ra, 0x3C($sp)
/* A7A18 800F1658 8FBE0038 */  lw         $fp, 0x38($sp)
/* A7A1C 800F165C 8FB70034 */  lw         $s7, 0x34($sp)
/* A7A20 800F1660 8FB60030 */  lw         $s6, 0x30($sp)
/* A7A24 800F1664 8FB5002C */  lw         $s5, 0x2C($sp)
/* A7A28 800F1668 8FB40028 */  lw         $s4, 0x28($sp)
/* A7A2C 800F166C 8FB30024 */  lw         $s3, 0x24($sp)
/* A7A30 800F1670 8FB20020 */  lw         $s2, 0x20($sp)
/* A7A34 800F1674 8FB1001C */  lw         $s1, 0x1C($sp)
/* A7A38 800F1678 8FB00018 */  lw         $s0, 0x18($sp)
/* A7A3C 800F167C 03E00008 */  jr         $ra
/* A7A40 800F1680 27BD0040 */   addiu     $sp, $sp, 0x40

glabel func_race_800F1684
/* A7A44 800F1684 27BDFFD8 */  addiu      $sp, $sp, -0x28
/* A7A48 800F1688 AFB3001C */  sw         $s3, 0x1C($sp)
/* A7A4C 800F168C 00809821 */  addu       $s3, $a0, $zero
/* A7A50 800F1690 AFBF0020 */  sw         $ra, 0x20($sp)
/* A7A54 800F1694 AFB20018 */  sw         $s2, 0x18($sp)
/* A7A58 800F1698 AFB10014 */  sw         $s1, 0x14($sp)
/* A7A5C 800F169C AFB00010 */  sw         $s0, 0x10($sp)
/* A7A60 800F16A0 C66200AC */  lwc1       $f2, 0xAC($s3)
/* A7A64 800F16A4 3C01800D */  lui        $at, %hi(D_race_800CC960)
/* A7A68 800F16A8 C420C960 */  lwc1       $f0, %lo(D_race_800CC960)($at)
/* A7A6C 800F16AC 00A09021 */  addu       $s2, $a1, $zero
/* A7A70 800F16B0 46020001 */  sub.s      $f0, $f0, $f2
/* A7A74 800F16B4 C6420008 */  lwc1       $f2, 0x8($s2)
/* A7A78 800F16B8 46001081 */  sub.s      $f2, $f2, $f0
/* A7A7C 800F16BC 2664000C */  addiu      $a0, $s3, 0xC
/* A7A80 800F16C0 0C015962 */  jal        func_80056588
/* A7A84 800F16C4 E6420008 */   swc1      $f2, 0x8($s2)
/* A7A88 800F16C8 C66200AC */  lwc1       $f2, 0xAC($s3)
/* A7A8C 800F16CC 3C01800D */  lui        $at, %hi(D_race_800CC964)
/* A7A90 800F16D0 C420C964 */  lwc1       $f0, %lo(D_race_800CC964)($at)
/* A7A94 800F16D4 46020001 */  sub.s      $f0, $f0, $f2
/* A7A98 800F16D8 C6420008 */  lwc1       $f2, 0x8($s2)
/* A7A9C 800F16DC 46001080 */  add.s      $f2, $f2, $f0
/* A7AA0 800F16E0 00008021 */  addu       $s0, $zero, $zero
/* A7AA4 800F16E4 02008821 */  addu       $s1, $s0, $zero
/* A7AA8 800F16E8 E6420008 */  swc1       $f2, 0x8($s2)
.Lrace_800F16EC:
/* A7AAC 800F16EC 8E63009C */  lw         $v1, 0x9C($s3)
/* A7AB0 800F16F0 8C620048 */  lw         $v0, 0x48($v1)
/* A7AB4 800F16F4 0202102B */  sltu       $v0, $s0, $v0
/* A7AB8 800F16F8 1040000C */  beqz       $v0, .Lrace_800F172C
/* A7ABC 800F16FC 02402821 */   addu      $a1, $s2, $zero
/* A7AC0 800F1700 8C640098 */  lw         $a0, 0x98($v1)
/* A7AC4 800F1704 26100001 */  addiu      $s0, $s0, 0x1
/* A7AC8 800F1708 00912021 */  addu       $a0, $a0, $s1
/* A7ACC 800F170C 8C820024 */  lw         $v0, 0x24($a0)
/* A7AD0 800F1710 26310090 */  addiu      $s1, $s1, 0x90
/* A7AD4 800F1714 84430018 */  lh         $v1, 0x18($v0)
/* A7AD8 800F1718 8C42001C */  lw         $v0, 0x1C($v0)
/* A7ADC 800F171C 0040F809 */  jalr       $v0
/* A7AE0 800F1720 00832021 */   addu      $a0, $a0, $v1
/* A7AE4 800F1724 0803C5BB */  j          .Lrace_800F16EC
/* A7AE8 800F1728 00000000 */   nop
.Lrace_800F172C:
/* A7AEC 800F172C 00008021 */  addu       $s0, $zero, $zero
/* A7AF0 800F1730 02008821 */  addu       $s1, $s0, $zero
.Lrace_800F1734:
/* A7AF4 800F1734 8E63009C */  lw         $v1, 0x9C($s3)
/* A7AF8 800F1738 8C620050 */  lw         $v0, 0x50($v1)
/* A7AFC 800F173C 0202102B */  sltu       $v0, $s0, $v0
/* A7B00 800F1740 1040000C */  beqz       $v0, .Lrace_800F1774
/* A7B04 800F1744 02402821 */   addu      $a1, $s2, $zero
/* A7B08 800F1748 8C64009C */  lw         $a0, 0x9C($v1)
/* A7B0C 800F174C 26100001 */  addiu      $s0, $s0, 0x1
/* A7B10 800F1750 00912021 */  addu       $a0, $a0, $s1
/* A7B14 800F1754 8C820024 */  lw         $v0, 0x24($a0)
/* A7B18 800F1758 263100F4 */  addiu      $s1, $s1, 0xF4
/* A7B1C 800F175C 84430018 */  lh         $v1, 0x18($v0)
/* A7B20 800F1760 8C42001C */  lw         $v0, 0x1C($v0)
/* A7B24 800F1764 0040F809 */  jalr       $v0
/* A7B28 800F1768 00832021 */   addu      $a0, $a0, $v1
/* A7B2C 800F176C 0803C5CD */  j          .Lrace_800F1734
/* A7B30 800F1770 00000000 */   nop
.Lrace_800F1774:
/* A7B34 800F1774 8FBF0020 */  lw         $ra, 0x20($sp)
/* A7B38 800F1778 8FB3001C */  lw         $s3, 0x1C($sp)
/* A7B3C 800F177C 8FB20018 */  lw         $s2, 0x18($sp)
/* A7B40 800F1780 8FB10014 */  lw         $s1, 0x14($sp)
/* A7B44 800F1784 8FB00010 */  lw         $s0, 0x10($sp)
/* A7B48 800F1788 03E00008 */  jr         $ra
/* A7B4C 800F178C 27BD0028 */   addiu     $sp, $sp, 0x28

glabel func_race_800F1790
/* A7B50 800F1790 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* A7B54 800F1794 AFB10014 */  sw         $s1, 0x14($sp)
/* A7B58 800F1798 00808821 */  addu       $s1, $a0, $zero
/* A7B5C 800F179C AFBF0018 */  sw         $ra, 0x18($sp)
/* A7B60 800F17A0 AFB00010 */  sw         $s0, 0x10($sp)
/* A7B64 800F17A4 922200C4 */  lbu        $v0, 0xC4($s1)
/* A7B68 800F17A8 38420001 */  xori       $v0, $v0, 0x1
/* A7B6C 800F17AC 30420001 */  andi       $v0, $v0, 0x1
/* A7B70 800F17B0 1040001B */  beqz       $v0, .Lrace_800F1820
/* A7B74 800F17B4 00A08021 */   addu      $s0, $a1, $zero
/* A7B78 800F17B8 8E02012C */  lw         $v0, 0x12C($s0)
/* A7B7C 800F17BC 24050001 */  addiu      $a1, $zero, 0x1
/* A7B80 800F17C0 844401D0 */  lh         $a0, 0x1D0($v0)
/* A7B84 800F17C4 8C4201D4 */  lw         $v0, 0x1D4($v0)
/* A7B88 800F17C8 0040F809 */  jalr       $v0
/* A7B8C 800F17CC 02042021 */   addu      $a0, $s0, $a0
/* A7B90 800F17D0 8E02012C */  lw         $v0, 0x12C($s0)
/* A7B94 800F17D4 2625000C */  addiu      $a1, $s1, 0xC
/* A7B98 800F17D8 84440118 */  lh         $a0, 0x118($v0)
/* A7B9C 800F17DC 8C42011C */  lw         $v0, 0x11C($v0)
/* A7BA0 800F17E0 0040F809 */  jalr       $v0
/* A7BA4 800F17E4 02042021 */   addu      $a0, $s0, $a0
/* A7BA8 800F17E8 922200C4 */  lbu        $v0, 0xC4($s1)
/* A7BAC 800F17EC 00021042 */  srl        $v0, $v0, 1
/* A7BB0 800F17F0 38420001 */  xori       $v0, $v0, 0x1
/* A7BB4 800F17F4 30420001 */  andi       $v0, $v0, 0x1
/* A7BB8 800F17F8 10400004 */  beqz       $v0, .Lrace_800F180C
/* A7BBC 800F17FC 00000000 */   nop
/* A7BC0 800F1800 8E24009C */  lw         $a0, 0x9C($s1)
/* A7BC4 800F1804 0C019094 */  jal        func_80064250
/* A7BC8 800F1808 00000000 */   nop
.Lrace_800F180C:
/* A7BCC 800F180C 8E02012C */  lw         $v0, 0x12C($s0)
/* A7BD0 800F1810 844401C8 */  lh         $a0, 0x1C8($v0)
/* A7BD4 800F1814 8C4201CC */  lw         $v0, 0x1CC($v0)
/* A7BD8 800F1818 0040F809 */  jalr       $v0
/* A7BDC 800F181C 02042021 */   addu      $a0, $s0, $a0
.Lrace_800F1820:
/* A7BE0 800F1820 8FBF0018 */  lw         $ra, 0x18($sp)
/* A7BE4 800F1824 8FB10014 */  lw         $s1, 0x14($sp)
/* A7BE8 800F1828 8FB00010 */  lw         $s0, 0x10($sp)
/* A7BEC 800F182C 03E00008 */  jr         $ra
/* A7BF0 800F1830 27BD0020 */   addiu     $sp, $sp, 0x20

glabel func_race_800F1834
/* A7BF4 800F1834 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* A7BF8 800F1838 AFB00010 */  sw         $s0, 0x10($sp)
/* A7BFC 800F183C 00808021 */  addu       $s0, $a0, $zero
/* A7C00 800F1840 AFB10014 */  sw         $s1, 0x14($sp)
/* A7C04 800F1844 AFBF0018 */  sw         $ra, 0x18($sp)
/* A7C08 800F1848 0C016427 */  jal        func_8005909C
/* A7C0C 800F184C 00C08821 */   addu      $s1, $a2, $zero
/* A7C10 800F1850 00402021 */  addu       $a0, $v0, $zero
/* A7C14 800F1854 1080000A */  beqz       $a0, .Lrace_800F1880
/* A7C18 800F1858 00000000 */   nop
/* A7C1C 800F185C 8E0300A8 */  lw         $v1, 0xA8($s0)
/* A7C20 800F1860 8E0200B8 */  lw         $v0, 0xB8($s0)
/* A7C24 800F1864 00831823 */  subu       $v1, $a0, $v1
/* A7C28 800F1868 00031903 */  sra        $v1, $v1, 4
/* A7C2C 800F186C AE0200B4 */  sw         $v0, 0xB4($s0)
/* A7C30 800F1870 10620003 */  beq        $v1, $v0, .Lrace_800F1880
/* A7C34 800F1874 AE0300B8 */   sw        $v1, 0xB8($s0)
/* A7C38 800F1878 AE1100BC */  sw         $s1, 0xBC($s0)
/* A7C3C 800F187C AE0000C0 */  sw         $zero, 0xC0($s0)
.Lrace_800F1880:
/* A7C40 800F1880 8FBF0018 */  lw         $ra, 0x18($sp)
/* A7C44 800F1884 8FB10014 */  lw         $s1, 0x14($sp)
/* A7C48 800F1888 8FB00010 */  lw         $s0, 0x10($sp)
/* A7C4C 800F188C 03E00008 */  jr         $ra
/* A7C50 800F1890 27BD0020 */   addiu     $sp, $sp, 0x20

glabel func_race_800F1894
/* A7C54 800F1894 3C028013 */  lui        $v0, %hi(D_race_801321A0)
/* A7C58 800F1898 03E00008 */  jr         $ra
/* A7C5C 800F189C AC4421A0 */   sw        $a0, %lo(D_race_801321A0)($v0)

glabel func_race_800F18A0
/* A7C60 800F18A0 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* A7C64 800F18A4 AFBF0010 */  sw         $ra, 0x10($sp)
/* A7C68 800F18A8 0C002513 */  jal        func_8000944C
/* A7C6C 800F18AC 00000000 */   nop
/* A7C70 800F18B0 8FBF0010 */  lw         $ra, 0x10($sp)
/* A7C74 800F18B4 03E00008 */  jr         $ra
/* A7C78 800F18B8 27BD0018 */   addiu     $sp, $sp, 0x18

glabel func_race_800F18BC
/* A7C7C 800F18BC 8C8200A4 */  lw         $v0, 0xA4($a0)
/* A7C80 800F18C0 03E00008 */  jr         $ra
/* A7C84 800F18C4 0002102B */   sltu      $v0, $zero, $v0

glabel func_race_800F18C8
/* A7C88 800F18C8 908200C4 */  lbu        $v0, 0xC4($a0)
/* A7C8C 800F18CC 00021042 */  srl        $v0, $v0, 1
/* A7C90 800F18D0 38420001 */  xori       $v0, $v0, 0x1
/* A7C94 800F18D4 03E00008 */  jr         $ra
/* A7C98 800F18D8 30420001 */   andi      $v0, $v0, 0x1

glabel func_race_800F18DC
/* A7C9C 800F18DC 908200C4 */  lbu        $v0, 0xC4($a0)
/* A7CA0 800F18E0 304200FD */  andi       $v0, $v0, 0xFD
/* A7CA4 800F18E4 03E00008 */  jr         $ra
/* A7CA8 800F18E8 A08200C4 */   sb        $v0, 0xC4($a0)

glabel func_race_800F18EC
/* A7CAC 800F18EC 908200C4 */  lbu        $v0, 0xC4($a0)
/* A7CB0 800F18F0 34420002 */  ori        $v0, $v0, 0x2
/* A7CB4 800F18F4 03E00008 */  jr         $ra
/* A7CB8 800F18F8 A08200C4 */   sb        $v0, 0xC4($a0)

glabel func_race_800F18FC
/* A7CBC 800F18FC 908200C4 */  lbu        $v0, 0xC4($a0)
/* A7CC0 800F1900 38420001 */  xori       $v0, $v0, 0x1
/* A7CC4 800F1904 03E00008 */  jr         $ra
/* A7CC8 800F1908 30420001 */   andi      $v0, $v0, 0x1

glabel func_race_800F190C
/* A7CCC 800F190C 908200C4 */  lbu        $v0, 0xC4($a0)
/* A7CD0 800F1910 304200FE */  andi       $v0, $v0, 0xFE
/* A7CD4 800F1914 03E00008 */  jr         $ra
/* A7CD8 800F1918 A08200C4 */   sb        $v0, 0xC4($a0)

glabel func_race_800F191C
/* A7CDC 800F191C 908200C4 */  lbu        $v0, 0xC4($a0)
/* A7CE0 800F1920 34420001 */  ori        $v0, $v0, 0x1
/* A7CE4 800F1924 03E00008 */  jr         $ra
/* A7CE8 800F1928 A08200C4 */   sb        $v0, 0xC4($a0)
